Citizen.CreateThread(function ()
  while true do
    local tiempo = 3000
    local coordped = GetEntityCoords(PlayerPedId())

    for k,v in pairs(Config.puntos) do
      local distancia = Vdist(coordped, v.pos)
      if distancia <= 2 and (v.job == ESX.PlayerData.job.name or "off"..v.job == ESX.PlayerData.job.name) then
        tiempo = 0
        DrawMarker(Config.DrawMarker.type, v.pos, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, Config.DrawMarker.radius.x, Config.DrawMarker.radius.y, Config.DrawMarker.radius.z, v.color.r, v.color.g, v.color.b, 200, Config.DrawMarker.bounce, Config.DrawMarker.rotatewithcamera, 2, Config.DrawMarker.rotate, nil, false)
        if IsControlJustReleased(1, 38) then
          TriggerServerEvent('Ray-Duty:change', v.job)
        end
      end 
    end

    Citizen.Wait(tiempo)
  end
end)