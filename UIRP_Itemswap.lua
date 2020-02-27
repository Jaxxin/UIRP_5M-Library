ESX = nil
UIRP = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

TriggerEvent('uirp:getSystemctl', function(ctl) UIRP = ctl end)

xPlayer = xPlayer
local xPlayer = xPlayer
ctlPED = ctlPED
local ctlPED = ('xPlayer.ctlPED')
-----
   -- SWAPPER
       if xItem.uirp51.count > 3 then
          ctlPED.removeInventoryItem('xItem.uirp51', 3) then
          ctlPED.addInventoryItem('xItem.uirp52', 1)
          ctlPED.showNotification(_U('uirp_item_proccess_51'))
       else
          ctlPED.TriggerUIRPNotify(_U('uirp_item_proccess_failed'))
          end
        else
          ctlPED.TriggerUIRPNotify(_U('uirp_item_proccess_trigger'))
          end
       
       ctlPed.Proccesing[_source] = nil
