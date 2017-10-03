--again, big thanks to sc for letting me use this because im incompetent
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
				"fixed_health_damage_reduction_1",
				"player_max_health_reduction_1"
			},
			cost = self.costs.hightier
		},
		[2] = {
			upgrades = {
				"player_healing_reduction_2",
				"fixed_health_damage_reduction_2"
			},
			cost = self.costs.hightierpro
		}
	}
end