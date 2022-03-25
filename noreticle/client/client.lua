Citizen.CreateThread(function()
    local isSniper = false
    while true do
        Citizen.Wait(0)
        local ped = GetPlayerPed(-1)

        local currentWeaponHash = GetSelectedPedWeapon(ped)


        if currentWeaponHash == 100416529 then
			isSniper = true
		elseif currentWeaponHash == 205991906 then
			isSniper = true
		elseif currentWeaponHash == -952879014 then
			isSniper = true
		else
			isSniper = false
		end

        if not isSniper then
            HideHudComponentThisFrame(14)
        end
	end
end)
-- Above is the actual script that removes the reticle, do not
RegisterCommand('r', function() -- The /command in chat
    addClientChat("Reticles are for people who cant aim")
    addClientChat("Longo Development")
    addClientChat("You can add more in client.lua or you can change the existing lines here for the chat")
    addClientChat("✔💜💜✅🔥💸😊😊🤙✅💸🔥s")
    addClientChat("Only you can see this")
end, false)

function addClientChat(message)
    TriggerEvent('chat:addMessage', {
        color = {0,255,255}, -- Color
        multiline = true,
        args = {"Reticle", message} -- What the robots name is that is typing the message
    })
end

RegisterCommand('clear', function(source, args)
    TriggerEvent('chat:clear')
end, false) -- /clear to clear you messages 