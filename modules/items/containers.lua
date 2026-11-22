---@class ItemContainerProperties
---@field slots integer
---@field maxWeight number
---@field blacklist? string[] | table<string, boolean>
---@field whitelist? string[] | table<string, boolean>

---@class ItemContainerDefinition
---@field slots integer
---@field maxWeight number
---@field blacklist? table<string, boolean>
---@field whitelist? table<string, boolean>

---@type table<string, ItemContainerDefinition>
local containers = {}

local function normalizeFilter(filter, field)
	if filter == nil then return end
	if type(filter) ~= 'table' then TypeError(field, 'table', type(filter)) end

	local items = {}

	if table.type(filter) == 'array' then
		for i = 1, #filter do
			local itemName = filter[i]
			assert(type(itemName) == 'string' and itemName ~= '', field .. ' must contain item names')
			items[itemName] = true
		end
	else
		for itemName, enabled in pairs(filter) do
			assert(type(itemName) == 'string' and itemName ~= '' and type(enabled) == 'boolean',
				field .. ' must map item names to booleans')
			if enabled then items[itemName] = true end
		end
	end

	return items
end

---Registers or replaces the container definition for an item.
---@param itemName string
---@param properties ItemContainerProperties
local function setContainerProperties(itemName, properties)
	assert(type(itemName) == 'string' and itemName ~= '', 'itemName must be a non-empty string')
	if type(properties) ~= 'table' then TypeError('properties', 'table', type(properties)) end

	local slots, maxWeight = properties.slots, properties.maxWeight
	assert(type(slots) == 'number' and math.tointeger(slots) and slots > 0, 'slots must be a positive integer')
	assert(type(maxWeight) == 'number' and maxWeight >= 0 and maxWeight < math.huge, 'maxWeight must be a finite non-negative number')

	containers[itemName] = {
		slots = slots,
		maxWeight = maxWeight,
		blacklist = normalizeFilter(properties.blacklist, 'blacklist'),
		whitelist = normalizeFilter(properties.whitelist, 'whitelist'),
	}
end

for itemName, properties in pairs(lib.load('data.containers') or {}) do
	setContainerProperties(itemName, properties)
end

exports('setContainerProperties', setContainerProperties)

return containers
