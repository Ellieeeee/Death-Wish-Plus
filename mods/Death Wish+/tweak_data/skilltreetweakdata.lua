--again, big thanks to sc for letting me use this because im incompetent
if DW.settings.dw_enemy_toggle_value or DW.settings.dw_baby_toggle_value then
	local original = SkillTreeTweakData.init
	function SkillTreeTweakData:init(tweak_data)
		original(self, tweak_data)

		
		self.skills.frenzy = {
			["name_id"] = "menu_frenzy",
			["desc_id"] = "menu_frenzy_desc",
			["icon_xy"] = {11, 8},
			[1] = {
				upgrades = {
					"player_healing_reduction_1",
					"player_fixed_health_damage_reduction_1",
					"player_max_health_reduction_1"
				},
				cost = self.costs.hightier
			},
			[2] = {
				upgrades = {
					"player_healing_reduction_2",
					"player_fixed_health_damage_reduction_2"
				},
				cost = self.costs.hightierpro
			}
		}
		self.skills.perseverance = {
			["name_id"] = "menu_perseverance_beta",
			["desc_id"] = "menu_perseverance_beta_desc",
			["icon_xy"] = {5, 12},
			[1] = {
				upgrades = {
					"temporary_berserker_damage_multiplier_1"
				},
				cost = self.costs.hightier
			},
				[2] = {
				upgrades = {
					"temporary_berserker_damage_multiplier_2"
				},
				cost = self.costs.hightierpro
			}
		}
		self.skills.control_freak = {
		["name_id"] = "menu_control_freak_beta",
		["desc_id"] = "menu_control_freak_beta_desc",
		["icon_xy"] = {1, 10},
		[1] = {
			upgrades = {
				"player_minion_master_speed_multiplier"
			},
			cost = self.costs.hightier
		},
		[2] = {
			upgrades = {
				"player_minion_master_health_multiplier",
				"player_passive_convert_enemies_health_multiplier_1"
			},
			cost = self.costs.hightierpro
		}
	}
	end
end