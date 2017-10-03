if Global.load_level == true then 
	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	local map = Global.level_data.level_id
	if (DW.settings.dw_enemy_toggle_value and difficulty == "overkill_290" and map == "arm_for") or (DW.settings.dw_enemy_toggle_value and difficulty == "sm_wish" and map == "arm_for") then
		local old_init = CarryTweakData.init
		function CarryTweakData:init(tweak_data)
			old_init(self, tweak_data)

			self.ammo.type = "explosives"
		end
	end
end