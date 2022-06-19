
Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(5)

        local player = GetPlayerPed(-1)
        local discordRoles = exports.mvtwDiscordIdentity.discordRoles()

       for index,value in ipairs(config.restrictedWeapons) do

            if HasPedGotWeapon(player, value, false) then
              
                local canHaveWeap = 0

                for name,role in pairs(config.rolePerms) do
               
                    if has_value(role.weapons, value) then

                        if has_value(discordRoles, role.roleId) then
                            canHaveWeap += 1
                           break
			end
                    end

                end

                if canHaveWeap == 0 then
                    RemoveWeaponFromPed(player, value)
                    ShowNotification(config.weaponRestrictedMessage)
                end

            end
       end

       for index,value in ipairs(config.restrictedVehs) do
            if value == GetEntityModel(GetVehiclePedIsIn(player)) then
                
                local canHaveVeh = 0

                for name,role in pairs(config.rolePerms) do
                   
                    if has_value(role.vehs, value) then

                        if has_value(discordRoles, role.roleId) then
                            canHaveVeh += 1
                            break
                        end
                    end

                end

                if canHaveVeh == 0 then
                    SetEntityAsMissionEntity(GetVehiclePedIsIn(player), true, true)
                    DeleteVehicle(GetVehiclePedIsIn(player))
                    ShowNotification(config.vehicleRestrictedMessage)
                end

            end
       end

    end
end)


function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

function ShowNotification( text )
	SetNotificationTextEntry( "STRING" )
	AddTextComponentString( text )
	DrawNotification( false, false )
end
