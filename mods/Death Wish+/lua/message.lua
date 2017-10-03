if DW.settings.dw_enemy_toggle_value then
	Hooks:Add("NetworkManagerOnPeerAdded", "NetworkManagerOnPeerAdded_DW", function(peer, peer_id)
		if Network:is_server() then
			DelayedCalls:Add("DelayedWarnModBB" .. tostring(peer_id), 2, function()
				local message = "Host is running 'Death Wish+.' This is a custom difficulty intended to replicated Overkill 145+. It is not recommended for inexperienced players."
				local peer2 = managers.network:session() and managers.network:session():peer(peer_id)
				if peer2 then
					peer2:send("send_chat_message", ChatManager.GAME, message)
				end
			end)
		end
	end)
end
if DW.settings.dw_map_toggle_value and not DW.settings.dw_enemy_toggle_value then
	Hooks:Add("NetworkManagerOnPeerAdded", "NetworkManagerOnPeerAdded_DW", function(peer, peer_id)
		if Network:is_server() then
			DelayedCalls:Add("DelayedWarnModBB" .. tostring(peer_id), 2, function()
				local message = "Host is running the map changes from 'Death Wish+', you may experience some differences from the regular game such as different enemies."
				local peer2 = managers.network:session() and managers.network:session():peer(peer_id)
				if peer2 then
					peer2:send("send_chat_message", ChatManager.GAME, message)
				end
			end)
		end
	end)
end