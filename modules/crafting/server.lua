if not lib then return end

local CraftingBenches = {}
local Items = require 'modules.items.server'
local Inventory = require 'modules.inventory.server'

---@param id number | string
---@param data table
local function createCraftingBench(id, data)
	CraftingBenches[id] = {}
	local recipes = data.items

	if recipes then
		for i = 1, #recipes do
			local recipe = recipes[i]
			local item = Items(recipe.name)

			if item then
				recipe.weight = item.weight
				recipe.slot = i
			else
				warn(('failed to setup crafting recipe (bench: %s, slot: %s) - item "%s" does not exist'):format(id, i, recipe.name))
			end

			for ingredient, needs in pairs(recipe.ingredients) do
				if needs < 1 then
					item = Items(ingredient)

					if item and not item.durability then
						item.durability = true
					end
				end
			end
		end

		if shared.target then
			data.points = nil
		else
			data.zones = nil
		end

		CraftingBenches[id] = data
	end
end

for id, data in pairs(lib.load('data.crafting') or {}) do createCraftingBench(data.name or id, data) end

---@param bench table
---@param index number
---@return table?
local function getCraftingGroups(bench, index)
	return (shared.target and bench.zones) and bench.zones[index].groups or bench.groups
end

---falls back to player coords if zones and points are both nil
---@param source number
---@param bench table
---@param index number
---@return vector3
local function getCraftingCoords(source, bench, index)
	if not bench.zones and not bench.points then
		return GetEntityCoords(GetPlayerPed(source))
	else
		return shared.target and bench.zones[index].coords or bench.points[index]
	end
end

lib.callback.register('ox_inventory:openCraftingBench', function(source, id, index)
	local left, bench = Inventory(source), CraftingBenches[id]

	if not left then return end

	if bench then
		local groups = getCraftingGroups(bench, index)
		local coords = getCraftingCoords(source, bench, index)

		if not coords then return end

		if groups and not server.hasGroup(left, groups) then return end
		if #(GetEntityCoords(GetPlayerPed(source)) - coords) > 10 then return end

		if left.open and left.open ~= source then
			local inv = Inventory(left.open) --[[@as OxInventory]]

			-- Why would the player inventory open with an invalid target? Can't repro but whatever.
			if inv?.player then
				inv:closeInventory()
			end
		end

		left:openInventory()
	end

	return { label = left.label, type = left.type, slots = left.slots, weight = left.weight, maxWeight = left.maxWeight }
end)

local TriggerEventHooks = require 'modules.hooks.server'
local GetLocks = require 'modules.locks'

local function canUseIngredient(slot, item, cost, now)
	local durability = slot.metadata?.durability
	if not durability then return cost == 0 end
	if durability <= 100 then return durability > 0 and durability >= cost * 100 end

	local remaining = durability - now
	if cost == 0 then return remaining > 0 end

	local degrade = slot.metadata.degrade or item.degrade
	return degrade and degrade > 0 and remaining >= degrade * 60 * cost
end

local function planIngredients(ingredients)
	local plan = {}
	local now = os.time()

	for _, ingredient in pairs(ingredients) do
		local item, needs, slots = ingredient.item, ingredient.needs, ingredient.slots

		if needs < 1 then
			local usable

			for i = 1, #slots do
				local slot = slots[i]
				if canUseIngredient(slot, item, needs, now) then
					usable = slot
					break
				end
			end

			if not usable then return end
			plan[usable.slot] = { item = item, count = needs }
		else
			for i = 1, #slots do
				local slot = slots[i]
				local count = math.min(needs, slot.count)
				plan[slot.slot] = { item = item, count = count }
				needs -= count
				if needs == 0 then break end
			end

			if needs > 0 then return end
		end
	end

	return plan
end

lib.callback.register('ox_inventory:craftItem', function(source, id, index, recipeId, toSlot)
	local left, bench = Inventory(source), CraftingBenches[id]

	if not left then return end

	if bench then
		local groups = getCraftingGroups(bench, index)
		local coords = getCraftingCoords(source, bench, index)

		if groups and not server.hasGroup(left, groups) then return end
		if #(GetEntityCoords(GetPlayerPed(source)) - coords) > 10 then return end

		local recipe = bench.items[recipeId]

		if recipe then
			local craftedItem = Items(recipe.name)
			if not craftedItem then return end

			local craftCount = (type(recipe.count) == 'number' and recipe.count) or (table.type(recipe.count) == 'array' and math.random(recipe.count[1], recipe.count[2])) or 1
			local newWeight = left.weight
			local ingredients = {}

			for name, needs in pairs(recipe.ingredients) do
				local item = Items(name)
				if not item or ingredients[item.name] then return end
				if needs < 0 or (needs >= 1 and not math.tointeger(needs)) then return end

				ingredients[item.name] = { item = item, needs = needs, slots = {} }
				newWeight -= item.weight * needs
			end

			newWeight += (craftedItem.weight + (recipe.metadata?.weight or 0)) * craftCount
			if newWeight > left.maxWeight then return false, 'cannot_carry' end

			for _, slot in pairs(left.items) do
				local ingredient = ingredients[slot.name]
				if ingredient then
					local slots = ingredient.slots
					slots[#slots + 1] = slot
				end
			end

			local plan = planIngredients(ingredients)
			if not plan then return end

            local lockIds = {}

            for slot in pairs(plan) do
                lockIds[#lockIds + 1] = ('inventory-%s:slot-%s'):format(left.id, slot)
            end

            local activeSlots <close> = GetLocks(lockIds)

            if not activeSlots then return end

			local hooks <close> = TriggerEventHooks('craftItem', {
				source = source,
				benchId = id,
				benchIndex = index,
				recipe = recipe,
				toInventory = left.id,
				toSlot = toSlot,
			})

			if not hooks.success then return false end

			local success = lib.callback.await('ox_inventory:startCrafting', source, id, recipeId)

			if success then
				local now = os.time()
				for slot, ingredient in pairs(plan) do
					local invSlot = left.items[slot]
					local item, count = ingredient.item, ingredient.count

					if not invSlot or invSlot.name ~= item.name
						or (count >= 1 and invSlot.count < count)
						or (count < 1 and not canUseIngredient(invSlot, item, count, now)) then
						hooks.success = false
						return
					end
				end

				for slot, ingredient in pairs(plan) do
					local item, count = ingredient.item, ingredient.count
					if count == 0 then goto continue end

					if count < 1 then
						local invSlot = left.items[slot]
						local durability = invSlot.metadata.durability or 100

						if durability > 100 then
							local degrade = (invSlot.metadata.degrade or item.degrade) * 60
							durability -= degrade * count
						else
							durability -= count * 100
						end

						if invSlot.count > 1 then
							local emptySlot = Inventory.GetEmptySlot(left)

							if emptySlot then
								local ok, newItem = Inventory.SetSlot(left, item, 1, table.deepclone(invSlot.metadata), emptySlot)

								if ok and newItem then
                                    Items.UpdateDurability(left, newItem --[[@as SlotWithItem]], item, durability < 0 and 0 or durability)
								end
							end

							invSlot.count -= 1
                            invSlot.weight = Inventory.SlotWeight(item, invSlot)

							left:syncSlotsWithClients({
								{
									item = invSlot,
									inventory = left.id
								}
							}, true)
						else
                            Items.UpdateDurability(left, invSlot, item, durability < 0 and 0 or durability)
						end
					else
						local removed = Inventory.RemoveItem(left, item, count, nil, slot)
						-- Failed to remove item (inventory state unexpectedly changed?)
						if not removed then hooks.success = false return end
					end

					::continue::
				end

				Inventory.AddItem(left, craftedItem, craftCount, recipe.metadata or {}, craftedItem.stack and toSlot or nil)
			end

			return success
		end
	end
end)
