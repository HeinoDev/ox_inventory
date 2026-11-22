local Inventory = require 'modules.inventory.server'
local Items = require 'modules.items.server'
local db = require 'modules.mysql.server'

db.setup({
	user = { table = 'users', col = 'identifier' },
	vehicle = { table = 'owned_vehicles', col = 'plate' },
})

local itemStatuses = {}

for name, item in pairs(lib.load('data.items') or {}) do
	itemStatuses[name] = item.client?.status
end

local isESXversion = lib.checkDependency('es_extended', '1.16.0')

AddEventHandler('esx:playerDropped', server.playerDropped)

AddEventHandler('esx:setJob', function(source, job, lastJob)
	local inventory = Inventory(source)
	if not inventory then return end
	inventory.player.groups[lastJob.name] = nil
	inventory.player.groups[job.name] = job.grade
end)

local ESX

SetTimeout(500, function()
    lib.checkDependency('es_extended', '1.6.0', true)

	ESX = exports.es_extended:getSharedObject()
    local customInventory = ESX.GetConfig().CustomInventory

	if customInventory ~= nil and customInventory ~= "ox" then
        error('es_extended has not been configured to enable support for ox_inventory!\nEnsure Config.CustomInventory has been set to "ox" in your es_extended resource config.')
    end

	server.UseItem = ESX.UseItem
	server.GetPlayerFromId = ESX.GetPlayerFromId

	for _, player in pairs(ESX.Players) do
		server.setPlayerInventory(player, player?.inventory)
	end
end)

server.accounts.black_money = 0

if isESXversion then
	AddEventHandler('ox_inventory:usedItem', function(playerId, itemName)
		local status = itemStatuses[itemName]

		if not status then return end

		for name, value in pairs(status) do
			if type(value) == 'number' then
				TriggerEvent('esx_status:add', playerId, name, value)
			end
		end
	end)
end

---@diagnostic disable-next-line: duplicate-set-field
function server.setPlayerData(player)
	local groups = {
		[player.job.name] = player.job.grade
	}

	return {
		source = player.source,
		name = player.name,
		groups = groups,
		sex = player.sex or player.variables.sex,
		dateofbirth = player.dateofbirth or player.variables.dateofbirth,
	}
end

---@diagnostic disable-next-line: duplicate-set-field
function server.syncInventory(inv)
	local accounts = Inventory.GetAccountItemCounts(inv)

    if accounts then
        local player = server.GetPlayerFromId(inv.id)
        
        -- Preserve bank account value (bank is not an item in ox_inventory)
        local bankAccount = player.getAccount('bank')
        if bankAccount then
            accounts.bank = bankAccount.money
        end
        
        player.syncInventory(inv.weight, inv.maxWeight, inv.items, accounts)
    end
end

---@diagnostic disable-next-line: duplicate-set-field
function server.hasLicense(inv, name)
	return MySQL.scalar.await('SELECT 1 FROM `user_licenses` WHERE `type` = ? AND `owner` = ?', { name, inv.owner })
end

---@diagnostic disable-next-line: duplicate-set-field
function server.isPlayerBoss(playerId)
	local xPlayer = ESX.GetPlayerFromId(playerId)

	return xPlayer.job.grade_name == 'boss'
end

