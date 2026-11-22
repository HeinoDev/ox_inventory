if not lib or shared.framework ~= 'esx' then return end

local Inventory = require 'modules.inventory.server'

local PAGE_SIZE = 500
local EMBED_LIMIT = 4000
local MAX_EMBEDS = 10
local running = false
local SERIAL_WEBHOOK = GetConvar('inventory:serialwebhook', '')

local function addSerials(found, inventory, location)
    if type(inventory) == 'string' then
        inventory = json.decode(inventory)
    end

    if type(inventory) ~= 'table' then return end

    for _, item in pairs(inventory) do
        local serial = type(item) == 'table' and item.metadata and item.metadata.serial

        if serial then
            local entry = found[serial]

            if not entry then
                entry = {}
                found[serial] = entry
            end

            entry[#entry + 1] = ('%s | %s | slot %s'):format(location, item.name, item.slot or '?')
        end
    end
end

local function stashLocation(name, owner)
    local suffix = type(owner) == 'string' and owner ~= '' and (' (' .. owner .. ')') or ''
    return 'inventory ' .. tostring(name) .. suffix
end

local function scanLoaded(found)
    local loaded = {}

    for _, inv in pairs(Inventory.GetLoaded()) do
        if inv.items and not inv.datastore then
            local location

            if inv.player then
                location = 'player ' .. tostring(inv.owner)
            elseif inv.type == 'trunk' or inv.type == 'glovebox' then
                location = inv.type .. ' ' .. tostring(inv.dbId)
            else
                location = stashLocation(inv.dbId, inv.owner)
            end

            loaded[location] = true
            addSerials(found, inv.items, location)
        end
    end

    return loaded
end

local function scanPlayers(found, loaded)
    local lastIdentifier = ''

    while true do
        local rows = MySQL.query.await(
            'SELECT identifier, inventory FROM users WHERE identifier > ? AND CAST(inventory AS CHAR) LIKE ? ORDER BY identifier LIMIT ?',
            { lastIdentifier, '%"serial"%', PAGE_SIZE })

        if not rows or #rows == 0 then return end

        for i = 1, #rows do
            local location = 'player ' .. tostring(rows[i].identifier)

            if not loaded[location] then
                addSerials(found, rows[i].inventory, location)
            end
        end

        lastIdentifier = rows[#rows].identifier

        if #rows < PAGE_SIZE then return end

        Wait(0)
    end
end

local function scanStashes(found, loaded)
    local offset = 0

    while true do
        local rows = MySQL.query.await(
            'SELECT owner, name, data FROM ox_inventory WHERE data LIKE ? ORDER BY name, owner LIMIT ? OFFSET ?',
            { '%"serial"%', PAGE_SIZE, offset })

        if not rows or #rows == 0 then return end

        for i = 1, #rows do
            local location = stashLocation(rows[i].name, rows[i].owner)

            if not loaded[location] then
                addSerials(found, rows[i].data, location)
            end
        end

        if #rows < PAGE_SIZE then return end

        offset += PAGE_SIZE
        Wait(0)
    end
end

local function scanVehicles(found, loaded)
    for _, column in ipairs({ 'trunk', 'glovebox' }) do
        local lastPlate = ''

        while true do
            local rows = MySQL.query.await(
                ('SELECT plate, %s AS inventory FROM owned_vehicles WHERE plate > ? AND %s LIKE ? ORDER BY plate LIMIT ?'):format(column, column),
                { lastPlate, '%"serial"%', PAGE_SIZE })

            if not rows or #rows == 0 then break end

            for i = 1, #rows do
                local location = column .. ' ' .. tostring(rows[i].plate)

                if not loaded[location] then
                    addSerials(found, rows[i].inventory, location)
                end
            end

            lastPlate = rows[#rows].plate

            if #rows < PAGE_SIZE then break end

            Wait(0)
        end
    end
end

local function collectDuplicates()
    local found = {}
    local loaded = scanLoaded(found)

    scanPlayers(found, loaded)
    scanStashes(found, loaded)
    scanVehicles(found, loaded)

    local duplicates = {}

    for serial, locations in pairs(found) do
        if #locations > 1 then
            duplicates[#duplicates + 1] = { serial = serial, locations = locations }
        end
    end

    table.sort(duplicates, function(a, b) return a.serial < b.serial end)

    return duplicates
end

local function formatDuplicate(duplicate)
    local lines = { ('Serial: %s (found %d times)'):format(duplicate.serial, #duplicate.locations) }

    for i = 1, #duplicate.locations do
        lines[#lines + 1] = '- ' .. duplicate.locations[i]
    end

    return table.concat(lines, '\n')
end

local function formatDuplicates(duplicates)
    local blocks = {}

    for i = 1, #duplicates do
        blocks[i] = formatDuplicate(duplicates[i])
    end

    return table.concat(blocks, '\n')
end

local function buildEmbedDescriptions(duplicates)
    local descriptions, current = {}, ''

    for i = 1, #duplicates do
        local block = formatDuplicate(duplicates[i]):sub(1, EMBED_LIMIT)

        if current ~= '' and #current + #block + 1 > EMBED_LIMIT then
            descriptions[#descriptions + 1] = current
            current = block
        else
            current = current == '' and block or (current .. '\n' .. block)
        end
    end

    if current ~= '' then
        descriptions[#descriptions + 1] = current
    end

    return descriptions
end

local function postEmbed(title, description)
    if SERIAL_WEBHOOK == '' then return end

    local response = promise.new()

    PerformHttpRequest(SERIAL_WEBHOOK, function(status, _, _, err)
        if status < 200 or status >= 300 then
            print(('^1[ox_inventory] Serial webhook request failed (status %s): %s^7'):format(status, err or 'no response'))
        end

        response:resolve(status)
    end, 'POST', json.encode({
        content = '@everyone',
        embeds = {
            {
                title = title,
                description = description,
                color = 15158332,
            },
        },
    }), { ['Content-Type'] = 'application/json' })

    return Citizen.Await(response)
end

local function sendWebhook(duplicates)
    if #duplicates == 0 or SERIAL_WEBHOOK == '' then return end

    local descriptions = buildEmbedDescriptions(duplicates)
    local total = #descriptions

    for i = 1, math.min(total, MAX_EMBEDS) do
        local title = 'Duplicate Weapon Serial Numbers Detected'

        if total > 1 then
            title = ('%s (%d/%d)'):format(title, i, total)
        end

        postEmbed(title, descriptions[i])

        if i < total and i < MAX_EMBEDS then
            Wait(1000)
        end
    end

    if total > MAX_EMBEDS then
        print(('^3[ox_inventory] Serial webhook report truncated: sent %d of %d embeds.^7'):format(MAX_EMBEDS, total))
    end
end

local function report(duplicates)
    lib.logger(0, 'duplicateSerials', formatDuplicates(duplicates))
    sendWebhook(duplicates)
end

local function runCheck()
    local duplicates = collectDuplicates()

    if #duplicates == 0 then
        print('^2[ox_inventory] No duplicate weapon serial numbers found.^7')
        return
    end

    print(('^1[ox_inventory] Found %d duplicate weapon serial numbers:^7\n%s'):format(#duplicates, formatDuplicates(duplicates)))
    report(duplicates)
end

local function checkDuplicates()
    if running then return end

    running = true

    local ok, err = pcall(runCheck)

    running = false

    if not ok then
        print(('^1[ox_inventory] Duplicate serial check failed: %s^7'):format(err))
    end
end

RegisterCommand('checkduplicates', function(source)
    if source ~= 0 then
        return lib.notify(source, { type = 'error', description = 'This command can only be used from the server console' })
    end

    CreateThread(checkDuplicates)
end, false)

exports('checkDuplicateSerials', checkDuplicates)

CreateThread(function()
    if GetConvar('inventory:serialcheckonstart', 'false') == 'true' then
        Wait(30000)
        checkDuplicates()
    end

    local interval = GetConvarInt('inventory:serialcheckinterval', 0)

    if interval <= 0 then return end

    while true do
        Wait(interval * 60000)
        checkDuplicates()
    end
end)
