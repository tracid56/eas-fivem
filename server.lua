AddEventHandler('chatMessage', function(source, name, msg)
	local cm = stringsplit(msg, " ")
    if cm[1] == "/alert" then
        CancelEvent()
        local msg = tostring(cm[2])			
        TriggerClientEvent('alert:Send', source, msg)
    end
end)

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end