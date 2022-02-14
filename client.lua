Nog4 = {}

function Nog4.DrawText3D(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.28, 0.28)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.005+ factor, 0.03, 41, 11, 41, 68)
end

function Nog4.blipOnMap(x,y,z, idtype, idcolor, text, scale, route)
    local blip = AddBlipForCoord(x,y,z)
    SetBlipSprite(blip, idtype)
    SetBlipAsShortRange(blip, true)
    SetBlipColour(blip, idcolor)
    SetBlipScale(blip, scale)

    if route then
        SetBlipRoute(blip, true)
    end

    if text then
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(text)
        EndTextCommandSetBlipName(blip)
    end
end


exports('DrawText3D', Nog4.DrawText3D)
exports('blipOnMap', Nog4.blipOnMap)