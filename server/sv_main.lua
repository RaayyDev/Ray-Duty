RegisterServerEvent('Ray-Duty:change')

AddEventHandler('Ray-Duty:change', function(job)
    local xPlayer = ESX.GetPlayerFromId(source)
    local isOffDuty = string.find(tostring(xPlayer.job.name), "off")
    local newJob = isOffDuty and job or "off"..xPlayer.job.name
    local notification = isOffDuty and 'Has entrado de servicio' or 'Has salido de servicio'
    local action = isOffDuty and xPlayer.addWeapon or xPlayer.removeWeapon

    TriggerClientEvent('esx:showNotification', source, 'Info', notification, 5000, 'info')
    xPlayer.setJob(newJob, xPlayer.job.grade)

    for k,v in pairs(Config.puntos) do
        if v.job == job then
            for weapon, give in pairs(v.weapons) do
                if give then
                    action(weapon, 1)
                end
            end
        end
    end
end)