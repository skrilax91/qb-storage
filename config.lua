Config = {}

Config.Storages = {
    ["DIPH_armory"] = {
        label = "Armurie du DIPH",
        slots = 30,
        permissions = {
            jobs = { ["police"] = 1 },
            accreds = { ["diph"] = 0 }
        },
    },
}