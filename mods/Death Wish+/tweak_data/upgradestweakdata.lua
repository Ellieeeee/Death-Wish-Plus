local original = UpgradesTweakData._init_pd2_values
function UpgradesTweakData:_init_pd2_values()
	original(self, tweak_data)
	self.values.player.max_health_reduction = {0.3}
	self.values.player.healing_reduction = {0.25, 0.5}
	self.values.player.health_damage_reduction = {1, 1}
	self.values.player.fixed_health_damage_reduction = {0.7, 0.4}
end

local def = UpgradesTweakData._player_definitions
function UpgradesTweakData:_player_definitions()
	def (self, tweak_data)
	self.definitions.player_fixed_health_damage_reduction_1 = {
		category = "feature",
		name_id = "menu_player_fixed_health_damage_reduction",
		upgrade = {
			category = "player",
			upgrade = "fixed_health_damage_reduction",
			value = 1
		}
	}
	self.definitions.player_fixed_health_damage_reduction_2 = {
		category = "feature",
		name_id = "menu_player_fixed_health_damage_reduction",
		upgrade = {
			category = "player",
			upgrade = "fixed_health_damage_reduction",
			value = 2
		}
	}
end