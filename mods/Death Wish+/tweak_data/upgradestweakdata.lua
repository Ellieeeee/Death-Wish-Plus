if DW.settings.dw_enemy_toggle_value or DW.settings.dw_baby_toggle_value then
	if not DMCWO and not (SC and SC._data and SC._data.sc_ai_toggle) then
		local original = UpgradesTweakData._init_pd2_values
		function UpgradesTweakData:_init_pd2_values()
			original(self, tweak_data)
			self.values.player.max_health_reduction = {0.3}
			self.values.player.healing_reduction = {0.25, 0.5}
			self.values.player.health_damage_reduction = {1, 1}
			self.values.player.fixed_health_damage_reduction = {0.7, 0.4}
			self.values.temporary.overkill_damage_multiplier = {
				{1.75, 5}
			}
			self.values.weapon.silencer_damage_multiplier = {1.075, 1.15}
			self.values.player.melee_damage_stacking = {{melee_multiplier = 1, max_multiplier = 3}}
			self.values.cooldown.long_dis_revive = {{1, 40}}
			self.values.weapon.automatic_head_shot_add = {0.2, 0.4}
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
	end
end