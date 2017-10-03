if DW.settings.dw_enemy_toggle_value and DW.settings.dw_baby_toggle_value then
log("[Death Wish+] host only changes and main changes are both on!!! disabling mod.")
return
end

local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
if difficulty == "overkill_290" or difficulty == "sm_wish" then	
	if DW.settings.dw_enemy_toggle_value or DW.settings.dw_baby_toggle_value then
		function SpoocLogicAttack._is_last_standing_criminal(focus_enemy)
			local all_criminals = managers.groupai:state():all_char_criminals()
			for u_key, u_data in pairs(all_criminals) do
				if not u_data.status and focus_enemy.u_key ~= u_key then
					return
				end
			end
			return false
		end
	end
end