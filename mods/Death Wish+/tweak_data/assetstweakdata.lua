if Global.load_level == true then 
	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	local map = Global.level_data.level_id
	if (DW.settings.dw_enemy_toggle_value and difficulty == "overkill_290" and map == "arm_for") or (DW.settings.dw_enemy_toggle_value and difficulty == "sm_wish" and map == "arm_for") then
		local old_init = AssetsTweakData.init
		function AssetsTweakData:init(tweak_data)
			old_init(self, tweak_data)
			self.arm_for_lance = {}
			self.arm_for_lance.name_id = "menu_asset_arm_for_lance"
			self.arm_for_lance.texture = "guis/dlcs/dlc1/textures/pd2/mission_briefing/assets/train_03"
			self.arm_for_lance.stages = {"arm_for"}
			self.arm_for_lance.visible_if_locked = true
			self.arm_for_lance.unlock_desc_id = "menu_asset_arm_for_lance_desc"
			self.arm_for_lance.no_mystery = true
			self.arm_for_lance.money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_small", 3)
		end
	end
end