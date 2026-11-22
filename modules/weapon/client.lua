if not lib then return end

local Weapon = {}
local Items = require 'modules.items.client'
local Utils = require 'modules.utils.client'

-- generic group animation data
local anims = {}
anims[`GROUP_MELEE`] = { 'melee@holster', 'unholster', 200, 'melee@holster', 'holster', 600 }
anims[`GROUP_PISTOL`] = { 'reaction@intimidation@cop@unarmed', 'intro', 300, 'reaction@intimidation@cop@unarmed', 'intro', 475 }
anims[`GROUP_RIFLE`] = { 'anim@heists@ornate_bank@grab_cash', 'intro', 600, 'anim@heists@ornate_bank@grab_cash', 'intro', 1400 }
local baganims = { 'anim@heists@ornate_bank@grab_cash', 'intro', 600, 'anim@heists@ornate_bank@grab_cash', 'intro', 1400 }
anims[`GROUP_STUNGUN`] = anims[`GROUP_PISTOL`]
local trunkanim = { 'anim@heists@fleeca_bank@scope_out@return_case', 'trevor_action', 450, 'anim@heists@fleeca_bank@scope_out@return_case', 'trevor_action', 600 }

local malebags = {
	[40] = true,
	[41] = true,
	[44] = true,
	[45] = true,
	[81] = true,
	[111] = true,
	[115] = true,
	[129] = true,
	[123] = true,
	[122] = true,
	[120] = true,
	[119] = true,
	[118] = true,
	[117] = true,
	[116] = true
}

local femalebags = {
	[11] = true,
	[100] = true,
	[101] = true,
	[102] = true,
	[103] = true,
	[104] = true,
	[105] = true,
}

local MaleHolsters = {
	[252] = true,
	[251] = true,
	[250] = true,
	[248] = true,
	[247] = true,
	[246] = true,
	[245] = true,
	[244] = true,
	[243] = true,
	[242] = true,
	[241] = true,
	[235] = true,
	[220] = true,
	[221] = true,
	[222] = true,
	[225] = true,
	[242] = true,
	[243] = true,
	[249] = true,
	[278] = true,
	[277] = true,
	[276] = true,
	[275] = true,
	[274] = true,
	[273] = true,
	[272] = true,
	[271] = true,
	[270] = true,
	[269] = true,
	[268] = true,
	[238] = true,
	[239] = true,
	[236] = true,
	[237] = true,
	[233] = true,
	[234] = true,
	[231] = true,
	[232] = true,
	[229] = true,
	[230] = true,
	[227] = true,
	[228] = true,
	[223] = true,
	[224] = true,
	[219] = true,
}

local FemaleHolsters = {
	[152] = true,
	[160] = true,
}

local MaleDecalHolsters = {
	[189] = true,
	[190] = true,
	[191] = true,
	[192] = true,
	[193] = true,
	[194] = true,
	[195] = true,
	[217] = true,
	[218] = true,
	[219] = true,
	[220] = true,
	[221] = true,
	[222] = true,
	[223] = true,
	[224] = true,
	[225] = true,
	[226] = true,
	
}

local FemaleDecalHolsters = {

}

ESX = exports["es_extended"]:getSharedObject()

function Utils.AddWeaponToHolster(Holster)
local playerPed = PlayerPedId()
local Holster = tonumber(Holster)

if Holster == 73 then
	SetPedComponentVariation(playerPed, 8, 130, 0, 0)
elseif Holster == 141 then
	SetPedComponentVariation(playerPed, 8, 138, 0, 0)
elseif Holster == 76 then
	SetPedComponentVariation(playerPed, 8, 233, 0, 0)
elseif Holster == 64 then
	SetPedComponentVariation(playerPed, 8, 143, 0, 0)
elseif Holster == 49 then
	SetPedComponentVariation(playerPed, 8, 50, 0, 0)
elseif Holster == 114 then
	SetPedComponentVariation(playerPed, 8, 113, 0, 0)
elseif Holster == 112 then
	SetPedComponentVariation(playerPed, 8, 111, 0, 0)
elseif Holster == 142 then
	SetPedComponentVariation(playerPed, 8, 139, 0, 0)
elseif Holster == 200 then
	SetPedComponentVariation(playerPed, 8, 233, 0, 0)
elseif Holster == 239 then
	SetPedComponentVariation(playerPed, 8, 238, 0, 0)
elseif Holster == 237 then
	SetPedComponentVariation(playerPed, 8, 236, 0, 0)
elseif Holster == 234 then
	SetPedComponentVariation(playerPed, 8, 233, 0, 0)
elseif Holster == 232 then
	SetPedComponentVariation(playerPed, 8, 231, 0, 0)
elseif Holster == 230 then
	SetPedComponentVariation(playerPed, 8, 229, 0, 0)
elseif Holster == 228 then
	SetPedComponentVariation(playerPed, 8, 227, 0, 0)
elseif Holster == 224 then
	SetPedComponentVariation(playerPed, 8, 223, 0, 0)
elseif Holster == 222 then
	SetPedComponentVariation(playerPed, 8, 221, 0, 0)
elseif Holster == 220 then
	SetPedComponentVariation(playerPed, 8, 219, 0, 0)
end
end

function Utils.RemoveWeaponFromHolster(Holster)
local playerPed = PlayerPedId()
local Holster = tonumber(Holster)

if Holster == 130 then
	SetPedComponentVariation(playerPed, 8, 73, 0, 0)
elseif Holster == 138 then
	SetPedComponentVariation(playerPed, 8, 141, 0, 0)
elseif Holster == 122 then
	SetPedComponentVariation(playerPed, 8, 76, 0, 0)
elseif Holster == 143 then
	SetPedComponentVariation(playerPed, 8, 64, 0, 0)
elseif Holster == 50 then
	SetPedComponentVariation(playerPed, 8, 49, 0, 0)
elseif Holster == 113 then
	SetPedComponentVariation(playerPed, 8, 114, 0, 0)
elseif Holster == 111 then
	SetPedComponentVariation(playerPed, 8, 112, 0, 0)
elseif Holster == 139 then
	SetPedComponentVariation(playerPed, 8, 142, 0, 0)
elseif Holster == 201 then
	SetPedComponentVariation(playerPed, 8, 200, 0, 0)
elseif Holster == 238 then
	SetPedComponentVariation(playerPed, 8, 239, 0, 0)
elseif Holster == 236 then
	SetPedComponentVariation(playerPed, 8, 237, 0, 0)
elseif Holster == 233 then
	SetPedComponentVariation(playerPed, 8, 234, 0, 0)
elseif Holster == 231 then
	SetPedComponentVariation(playerPed, 8, 232, 0, 0)
elseif Holster == 229 then
	SetPedComponentVariation(playerPed, 8, 230, 0, 0)
elseif Holster == 227 then
	SetPedComponentVariation(playerPed, 8, 228, 0, 0)
elseif Holster == 223 then
	SetPedComponentVariation(playerPed, 8, 224, 0, 0)
elseif Holster == 221 then
	SetPedComponentVariation(playerPed, 8, 222, 0, 0)
elseif Holster == 219 then
	SetPedComponentVariation(playerPed, 8, 220, 0, 0)
end
end

exports('HasPedHolster', function()
	local playerPed = PlayerPedId()
	local shirtholsters, decalholsters

	if GetEntityModel(playerPed) == `mp_m_freemode_01` then
		shirtholsters = MaleHolsters
		decalholsters = MaleDecalHolsters
	else
		shirtholsters = FemaleHolsters
		decalholsters = FemaleDecalHolsters
	end

	return (shirtholsters[GetPedDrawableVariation(playerPed, 8)] == true)
		or (decalholsters[GetPedDrawableVariation(playerPed, 10)] == true)
		or false
end)

local function vehicleIsCycle(vehicle)
	local class = GetVehicleClass(vehicle)
	return class == 8 or class == 13
end

function Weapon.Equip(item, data)
	local playerPed = cache.ped
	local coords = GetEntityCoords(playerPed, true)

	if client.weaponanims then
		if cache.vehicle and vehicleIsCycle(cache.vehicle) then
			goto skipAnim
		end

		if GetResourceState('weapondisplay') == 'started' and exports.weapondisplay:IsWeaponDisplayed(data.hash) then
			goto skipAnim
		end

		local anim = data.anim or anims[GetWeapontypeGroup(data.hash)]

		local anim = nil

		local shirtholsters
		local decalholsters
		local bags
		local hasBag = false
		local veh = nil

		if GetEntityModel(playerPed) == `mp_m_freemode_01` then
			bags = malebags
			shirtholsters = MaleHolsters
			decalholsters = MaleDecalHolsters
		else
			bags = femalebags
			shirtholsters = FemaleHolsters
			decalholsters = FemaleDecalHolsters
		end

		if data.hash == `WEAPON_SWITCHBLADE` then
			if GetResourceState('weapondisplay') == 'started' then
				TriggerEvent('weapondisplay:suppressAnimation', data.hash)
			end
			local animDict = 'anim@melee@switchblade@holster'
			Utils.PlayAnim(400, animDict, 'unholster', 8.0, 3.0, -1, 48, 0.0, 0, 0, 0)
			goto skipAnim
		end

		if GetWeapontypeGroup(data.hash) == 416676503 then
			if shirtholsters[GetPedDrawableVariation(playerPed, 8)] then
				anim = data.anim or anims[GetWeapontypeGroup(data.hash)]
				Utils.RemoveWeaponFromHolster(GetPedDrawableVariation(playerPed, 8))
			elseif decalholsters[GetPedDrawableVariation(playerPed, 10)] then
				anim = data.anim or anims[GetWeapontypeGroup(data.hash)]
				Utils.RemoveWeaponFromHolster(GetPedDrawableVariation(playerPed, 10))
			end
		end

		-- Add våben som ikke skal gennemgå bag checks af en eller anden grund. Bare skriv or så data.hash og `WEAPON_VÅBEN`
		-- Man kunne åbenbart ikke trække SMG ud

		if data.hash ~= `WEAPON_SMG` then
			if data.hash == `WEAPON_PISTOL50` or data.hash == `WEAPON_PISTOL` or data.hash == `WEAPON_CERAMICPISTOL` or data.hash == `WEAPON_COMBATPISTOL` or data.hash == `WEAPON_COMBATPISTOL` or data.hash == `WEAPON_HEAVYPISTOL` or data.hash == `WEAPON_VINTAGEPISTOL` or data.hash == `WEAPON_REVOLVER` or data.hash == `WEAPON_NIGHTSTICK` or data.hash == `WEAPON_FLASHLIGHT` or data.hash == `WEAPON_KNIFE` or data.hash == `WEAPON_SNSPISTOL` or `WEAPON_NAVYREVOLVER` then
				if anim == nil then
					anim = data.anim
				end
				goto skipBagCheck
			end
		end

		if GetWeapontypeGroup(data.hash) == 970310034 or -95776620 then
			if bags[GetPedDrawableVariation(playerPed, 5)] then
				anim = baganims
				hasBag = true
                TriggerServerEvent("taske:on")
			else
				hasBag = false
                TriggerServerEvent("taske:off")
			end
		end

		if anim == nil and GetWeapontypeGroup(data.hash) == 970310034 or -95776620 and not hasBag then
			veh = ESX.Game.GetClosestVehicle()
			print(veh)
			print(#(GetEntityCoords(PlayerPedId()) - GetEntityCoords(veh)))
			if veh and #(GetEntityCoords(PlayerPedId())-GetEntityCoords(veh)) < 3 then
				SetCarBootOpen(veh)
				anim = trunkanim
			else
				lib.notify({
					description = 'Der er ingen køretøjer i nærheden og du har ingen taske!',
					type = 'error'
				})
				return
			end
		end

		if data.hash == `WEAPON_FLASHLIGHT` or data.hash == `WEAPON_NIGHTSTICK` or `WEAPON_SNSPISTOL` then
			anim = nil
		end

		::skipBagCheck::

		local sleep = anim and anim[3] or 1200

		if GetResourceState('weapondisplay') == 'started' then
			TriggerEvent('weapondisplay:suppressAnimation', data.hash)
		end

		Utils.PlayAnimAdvanced(sleep, anim and anim[1] or 'reaction@intimidation@1h', anim and anim[2] or 'intro', coords.x, coords.y, coords.z, 0, 0, GetEntityHeading(playerPed), 8.0, 3.0, sleep*2, 50, 0.1)
	end

	::skipAnim::

	item.hash = data.hash
	item.ammo = data.ammoname
	item.melee = GetWeaponDamageType(data.hash) == 2 and 0
	item.timer = 0
	item.throwable = data.throwable
	item.group = GetWeapontypeGroup(item.hash)

	GiveWeaponToPed(playerPed, data.hash, 0, false, true)

	if item.metadata.tint then SetPedWeaponTintIndex(playerPed, data.hash, item.metadata.tint) end

	if item.metadata.components then
		for i = 1, #item.metadata.components do
			local components = Items[item.metadata.components[i]].client.component
			for v=1, #components do
				local component = components[v]
				if DoesWeaponTakeWeaponComponent(data.hash, component) then
					if not HasPedGotWeaponComponent(playerPed, data.hash, component) then
						GiveWeaponComponentToPed(playerPed, data.hash, component)
					end
				end
			end
		end
	end

	if item.metadata.specialAmmo then
		local clipComponentKey = ('%s_CLIP'):format(data.model:gsub('WEAPON_', 'COMPONENT_'))
		local specialClip = ('%s_%s'):format(clipComponentKey, item.metadata.specialAmmo:upper())

		if DoesWeaponTakeWeaponComponent(data.hash, specialClip) then
			GiveWeaponComponentToPed(playerPed, data.hash, specialClip)
		end
	end

	local ammo = item.metadata.ammo or item.throwable and 1 or 0

	SetPedAmmo(playerPed, data.hash, ammo)
	SetCurrentPedWeapon(playerPed, data.hash, true)
	SetPedCurrentWeaponVisible(playerPed, true, false, false, false)
	SetWeaponsNoAutoswap(true)
	SetTimeout(0, function() RefillAmmoInstantly(playerPed) end)

	if item.group == `GROUP_PETROLCAN` or item.group == `GROUP_FIREEXTINGUISHER` then
		item.metadata.ammo = item.metadata.durability
		SetPedInfiniteAmmo(playerPed, true, data.hash)
	end

	TriggerEvent('ox_inventory:currentWeapon', item)
	Utils.ItemNotify({ item, 'ui_equipped' })

	return item
end

function Weapon.Disarm(currentWeapon, noAnim)
	if currentWeapon?.timer then
		currentWeapon.timer = nil

		if source == '' then
			TriggerServerEvent('ox_inventory:updateWeapon')
		end

		SetPedAmmo(cache.ped, currentWeapon.hash, 0)

		if client.weaponanims and not noAnim then
			if cache.vehicle and vehicleIsCycle(cache.vehicle) then
				goto skipAnim
			end

			if GetResourceState('weapondisplay') == 'started' and exports.weapondisplay:IsWeaponDisplayed(currentWeapon.hash) then
				goto skipAnim
			end

			ClearPedSecondaryTask(cache.ped)

			local item = Items[currentWeapon.name]
			local coords = GetEntityCoords(cache.ped, true)
			local anim = nil

			local shirtholsters
			local decalholsters
			local bags
			local hasBag = false
			local veh = nil
	
			if GetEntityModel(cache.ped) == GetHashKey('mp_m_freemode_01') then
				bags = malebags
				shirtholsters = MaleHolsters
				decalholsters = MaleDecalHolsters
			else
				bags = femalebags
				shirtholsters = FemaleHolsters
				decalholsters = FemaleDecalHolsters
			end

			if item.hash == `WEAPON_SWITCHBLADE` then
				if GetResourceState('weapondisplay') == 'started' then
					TriggerEvent('weapondisplay:suppressAnimation', item.hash)
				end
				local animDict = 'anim@melee@switchblade@holster'
				Utils.PlayAnim(300, animDict, 'holster', 8.0, 3.0, -1, 48, 0.0, 0, 0, 0)
				goto skipAnim
			end

			if GetWeapontypeGroup(item.hash) == 416676503 then
				if shirtholsters[GetPedDrawableVariation(cache.ped, 8)] then
					anim = item.anim or anims[GetWeapontypeGroup(item.hash)]
					Utils.AddWeaponToHolster(GetPedDrawableVariation(cache.ped, 8))
				elseif decalholsters[GetPedDrawableVariation(cache.ped, 10)] then
					anim = item.anim or anims[GetWeapontypeGroup(item.hash)]
					Utils.AddWeaponToHolster(GetPedDrawableVariation(cache.ped, 10))
				end
			end

			-- Add våben som ikke skal gennemgå bag checks af en eller anden grund. Bare skriv or så item.hash og `WEAPON_VÅBEN`
			if item.hash ~= `WEAPON_SMG` then
				if item.hash == `WEAPON_PISTOL50` or item.hash == `WEAPON_PISTOL` or item.hash == `WEAPON_CERAMICPISTOL` or item.hash == `WEAPON_COMBATPISTOL` or item.hash == `WEAPON_COMBATPISTOL` or item.hash == `WEAPON_HEAVYPISTOL` or item.hash == `WEAPON_VINTAGEPISTOL` or item.hash == `WEAPON_REVOLVER` or item.hash == `WEAPON_NIGHTSTICK` or item.hash == `WEAPON_FLASHLIGHT` or item.hash == `WEAPON_KNIFE` or `WEAPON_SNSPISTOL` or `WEAPON_NAVYREVOLVER` then
					if anim == nil then
						anim = item.anim
					end
					goto skipBagCheck
				end
			end
	
			if GetWeapontypeGroup(item.hash) == 970310034 or -95776620 then
				if bags[GetPedDrawableVariation(cache.ped, 5)] then
					anim = baganims
					hasBag = true
				else
					hasBag = false
				end
			end

			if anim == nil and GetWeapontypeGroup(item.hash) == 970310034 or -95776620 and not hasBag then
				veh = ESX.Game.GetClosestVehicle()
				if veh and #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(veh)) < 3 then
					SetCarBootOpen(veh)
					anim = trunkanim
				else
					lib.notify({
						description = 'Der er ingen køretøjer i nærheden og du har ingen taske!',
						type = 'error'
					})
					return
				end
			end

			if item.hash == `WEAPON_FLASHLIGHT` or item.hash == `WEAPON_NIGHTSTICK` then
				anim = nil
			end

			::skipBagCheck::

			local sleep = anim and anim[6] or 1400

			if veh then
				SetVehicleDoorShut(veh, 5, false)
			end

			if GetResourceState('weapondisplay') == 'started' then
				TriggerEvent('weapondisplay:suppressAnimation', item.hash)
			end

			Utils.PlayAnimAdvanced(sleep, anim and anim[4] or 'reaction@intimidation@1h', anim and anim[5] or 'outro', coords.x, coords.y, coords.z, 0, 0, GetEntityHeading(cache.ped), 8.0, 3.0, sleep, 50, 0)
		end

		::skipAnim::

		Utils.ItemNotify({ currentWeapon, 'ui_holstered' })
		TriggerEvent('ox_inventory:currentWeapon')
	end

	Utils.WeaponWheel()
	RemoveAllPedWeapons(cache.ped, true)
end

function Weapon.ClearAll(currentWeapon)
	Weapon.Disarm(currentWeapon)

	if client.parachute then
		local chute = `GADGET_PARACHUTE`
		GiveWeaponToPed(cache.ped, chute, 0, true, false)
		SetPedGadget(cache.ped, chute, true)
	end
end

Utils.Disarm = Weapon.Disarm
Utils.ClearWeapons = Weapon.ClearAll

return Weapon