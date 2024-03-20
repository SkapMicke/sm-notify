local QBCore = exports['qb-core']:GetCoreObject()

function sm_alert(title, message, time, type)
	SendNUIMessage({
		action = 'open',
		title = title,
		type = type,
		message = message,
		time = time,
	})
end
function sm_advanced(title, subject, message, icon, iconType, time, type)
	SendNUIMessage({
		action = 'open',
		title = title,
		subject = subject,
		message = message,
		icon = icon,
		iconType = iconType,
		time = time,
		type = type,
		
	})
end

function sm_SendNotify(sm_notifydata)

	SendNUIMessage({
		action = 'open',
		title = sm_notifydata["label"],
		type = sm_notifydata["type"],
		message = sm_notifydata["text"],
		time = sm_notifydata["time"],
	})
end
function Sendsm_advanced(sm_notifydata)

	SendNUIMessage({
		action = 'open_advanced',
		title = sm_notifydata["title"],
		type = sm_notifydata["type"],
		subject = sm_notifydata["subject"],
		msg = sm_notifydata["msg"],
		icon = sm_notifydata["icon"],
		iconType = sm_notifydata["iconType"],
		time = sm_notifydata["time"],

	})
end

RegisterNetEvent('sm-notify:sm_alert')
AddEventHandler('sm-notify:sm_alert', function(title, message, time, type)
	sm_alert(title, message, time, type)
end)

RegisterNetEvent('sm-notify:sm_advanced')
AddEventHandler('sm-notify:sm_advanced', function(title, subject, message, icon, iconType, time, type)
    sm_advanced(title, subject, message, icon, iconType, time, type)
end)