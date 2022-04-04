local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('storage:client:OpenInventory', function(type, name, other)
    TriggerServerEvent("inventory:server:OpenInventory", type, name, other)
end)

exports['qb-target']:AddBoxZone("DIPH_armory", vector3(-1078.32, -824.29, 14.88), 0.45, 0.35, {
	name = "DIPH_armory",
	heading = 216.51,
	debugPoly = true,
	minZ = 30.77834,
	maxZ = 30.87834,
}, {
	options = {
		{
			icon = "fas fa-sign-in-alt",
			label = "Sign In",
			job = "police",
            action = function()
                TriggerServerEvent("storage:server:openStorage", "DIPH_armory")
            end,
		},
	},
	distance = 2.5
})