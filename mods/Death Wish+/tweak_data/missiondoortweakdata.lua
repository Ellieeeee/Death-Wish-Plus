if Global.load_level == true then 
	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	local map = Global.level_data.level_id
	if (DW.settings.dw_enemy_toggle_value and difficulty == "overkill_290" and map == "arm_for") or (DW.settings.dw_enemy_toggle_value and difficulty == "sm_wish" and map == "arm_for") then
		local old_init = MissionDoorTweakData.init
		function MissionDoorTweakData:init(tweak_data)
			old_init(self, tweak_data)

			self.train_cargo_door.devices.drill = {
 		{
 			align = "a_drill",
 			unit = Idstring("units/payday2/equipment/item_door_drill_small/item_door_drill_small"),
			can_jam = true,
			timer = 180
 		}
 	}
		end
	end
end