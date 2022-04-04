local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('storage:server:openStorage', function(id)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local result = Config.storages[id]

    if result then
        -- check if have required permissions
        if result.permissions then 
            local perm = result.permissions
            if perm.jobs then
                if (not Player.PlayerData.job or not perm.jobs[Player.PlayerData.job.name]) then return end
            end
            
            if perm.accreds then
                if (not Player.PlayerData.job.accreds) then return end

                local good = false
                for k,v in pairs(perm.accreds) do
                    if (Player.PlayerData.job.accreds[k] and Player.PlayerData.job.accreds[k] > v) then good = true end
                end
                if not good return end
            end
        end

    local storage = {
        label = result.label,
        slots = result.slots
    }

    TriggerClientEvent("storage:client:OpenInventory", src, "stash", "qb-storage_" .. id, storage)

    end
end)