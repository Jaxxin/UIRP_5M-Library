---- Rent a property fix -----

ESX = nil
UIRP = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_property:rentProperty')
AddEventHandler('esx_property:rentProperty', function(propertyName)
local xPlayer = ESX.GetPlayerFromId(source)
local property = GetProperty(propertyName)
local rent = ESX.Math.Round(property.price / 200)

 if property.rent <= xPlayer.getMoney() then
  xPlayer.removeMoney(property.rent)
  SetPropertyOwned(propertyName, rent, true, xPlayer.identifier)
  else
  xPlayer.showNotification(_U('not_enough'))
  end

end)


-----------------------------------------------------------------
-- Server side script
