-----------------------------------------------------------------

---- DMVSchool ----------

ESX = nil
UIRP = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx_dmvschool:pay')
AddEventHandler('esx_dmvschool:pay', function(price)
   local _source = source
   local xPlayer = ESX.GetPlayerFromId(_source)

   if price <= xPlayer.getMoney() then
   xPlayer.removeMoney(price)
   TriggerClientEvent('esx:showNotification', _source, _U('you_paid', ESX.Math.GroupDigits(price)))
   end)

   -----------------------------------------------------------------
