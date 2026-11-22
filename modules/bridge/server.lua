require 'modules.bridge.common'

local success, result = pcall(lib.load, ('modules.bridge.%s.server'):format(shared.framework))

if not success then
    lib = nil
    error(result, 0)
end

if server.convertInventory then exports('ConvertItems', server.convertInventory) end