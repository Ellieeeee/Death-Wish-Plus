if DW.settings.dw_enemy_toggle_value or DW.settings.dw_baby_toggle_value then
	--thanks sc
	if Global.load_level == true then 	
		local map = Global.level_data.level_id
		local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
		if difficulty == "overkill_290" or difficulty == "sm_wish" then
			function ElementSpawnEnemyGroup:spawn_groups()
				local opt = {}
				for cat_name, team in pairs(tweak_data.group_ai.enemy_spawn_groups) do
					if cat_name ~= "single_spooc" or cat_name ~= "Phalanx" then
						table.insert(opt, cat_name)
				end
				end
				return opt
			end
		end
	end
end