local QBCore = exports['qb-core']:GetCoreObject()
local podium = false

RegisterNetEvent('guardian:policepodium', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        if not PlayerData.metadata["isdead"] and not PlayerData.metadata["inlaststand"] and not PlayerData.metadata["ishandcuffed"] and not IsPauseMenuActive() then
            if not podium then
                exports['pma-voice']:overrideProximityRange(30.0, false)
                QBCore.Functions.Notify(Lang:t("success.podium_on"), 7500)
                podium = true
            else
                exports['pma-voice']:overrideProximityRange(1.5, false)
                QBCore.Functions.Notify(Lang:t("success.podium_off"), 7500)
                podium = false
            end
        end
    end)
end)

CreateThread(function()
    exports['qb-target']:AddTargetModel(Config.PodiumObject, {
        options = {
            {
                type = "client",
                event = "guardian:policepodium",
                icon = Lang:t("label.label_icon"),
                label = Lang:t("label.target_label"),
            },
        },
        distance = 2.5
    })
end)