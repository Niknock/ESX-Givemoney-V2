	ESX = nil

	TriggerEvent("esx:getSharedObject", function(obj) ESX = obj end)

--Give Money / Geld Geben--

RegisterCommand("givemoney", function(source, args, rawCommand)
	xAdmin = ESX.GetPlayerFromId(args[1])
	xPlayer = ESX.GetPlayerFromId(args[1])
	xPlayerMoney = ESX.GetPlayerFromId(args[1])
	
	if xAdmin == nil then

	else

		xGroup = xAdmin.getGroup()
		xGroupAdmin = Config.AdminGroups

	end

	if xGroup == xGroupAdmin then
	if xPlayer == nil then

		TriggerClientEvent("esx:showNotification", source, "~r~ID: "..args[1].. _U('id_not_found'))

	else if xGroup == xGroupAdmin then

		xPlayer.addMoney(args[2])
		TriggerClientEvent("esx:showNotification", source, _U('givemoney_id') ..args[1].." " ..args[2].. _U('givemoney_give'))
	end
	end
end

	if xGroup ~= xGroupAdmin then

		TriggerClientEvent("esx:showNotification", source, _U('no_rights'))

	end

end)


--Geld Entfernen--


RegisterCommand("removemoney", function(source, args, rawCommand)
	xAdmin = ESX.GetPlayerFromId(args[1])
	xPlayer = ESX.GetPlayerFromId(args[1])
	xPlayerMoney = ESX.GetPlayerFromId(args[1])

	if xAdmin == nil then

	else

		xGroup = xAdmin.getGroup()
		xGroupAdmin = Config.AdminGroups

	end

	if xGroup == xGroupAdmin then
		if xPlayer == nil then
	
			TriggerClientEvent("esx:showNotification", source, "~r~ID: "..args[1].. _U('id_not_found'))
	
		else if xGroup == xGroupAdmin then
	
			xPlayer.removeMoney(args[2])
			TriggerClientEvent("esx:showNotification", source, _U('removemoney_id') ..args[1].." " ..args[2].. _U('removemoney_remove'))
		end
		end
	end
	
		if xGroup ~= xGroupAdmin then
	
			TriggerClientEvent("esx:showNotification", source, _U('no_rights'))
	
		end

end)
