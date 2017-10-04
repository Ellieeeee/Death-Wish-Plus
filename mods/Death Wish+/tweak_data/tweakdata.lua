if not tweak_data then return end
if DW.settings.dw_enemy_toggle_value and DW.settings.dw_baby_toggle_value then
log("[Death Wish+] host only changes and main changes are both on!!! disabling mod.")
return
end
if Global.load_level == true then
local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
local difficulty_index = tweak_data:difficulty_to_index(difficulty)
	--if DW.settings.dw_enemy_toggle_value and difficulty_index > 6 and Global.mutators and Global.mutators.active_on_load then
	--tweak_data.screen_colors.risk = Color(255, 211, 133, 255) / 255
	if DW.settings.dw_enemy_toggle_value and difficulty_index > 6 then
		tweak_data.screen_colors.risk = Color(255, 255, 0, 0) / 255
		
	tweak_data.medic = {
		radius = 400,
		cooldown = 3,
		debug_drawing = false,
		disabled_units = {
		"phalanx_minion",
		"tank_hw",
		"spooc"
		}
	}
	end
	if DW.settings.dw_enemy_toggle_value or DW.settings.dw_baby_toggle_value then
		if not DMCWO then
			--what the fuck is wrong with you overkill
			tweak_data.projectiles.launcher_m203.damage = 34
			tweak_data.projectiles.launcher_m203.player_damage = 20
			tweak_data.projectiles.launcher_frag_arbiter.damage = 216
			tweak_data.projectiles.launcher_frag_arbiter.player_damage = 20
			tweak_data.projectiles.launcher_incendiary_arbiter.damage = 3
			tweak_data.projectiles.launcher_incendiary_arbiter.player_damage = 3
			tweak_data.projectiles.launcher_frag.damage = 34
			tweak_data.projectiles.launcher_frag.player_damage = 20
			tweak_data.projectiles.launcher_incendiary.damage = 3
			tweak_data.projectiles.launcher_incendiary.player_damage = 3
			tweak_data.projectiles.west_arrow.damage = 19.4
			tweak_data.projectiles.west_arrow_exp.damage = 26.4
			tweak_data.projectiles.dynamite.damage = 60
			tweak_data.projectiles.crossbow_arrow.damage = 10
			tweak_data.projectiles.crossbow_poison_arrow.damage = 3.2
			tweak_data.projectiles.wpn_prj_jav.damage = 110
			tweak_data.projectiles.arblast_arrow.damage = 53
			tweak_data.projectiles.arblast_poison_arrow.damage = 20
			tweak_data.projectiles.arblast_arrow_exp.damage = 71
			tweak_data.projectiles.frankish_arrow.damage = 24
			tweak_data.projectiles.frankish_poison_arrow.damage = 9
			tweak_data.projectiles.frankish_arrow_exp.damage = 32
			tweak_data.projectiles.long_arrow.damage = 65
			tweak_data.projectiles.long_arrow_exp.damage = 85
			tweak_data.dot_types.poison = {
				damage_class = "PoisonBulletBase",
				dot_length = 10,
				dot_damage = 2,
				hurt_animation_chance = 0.5
			}
		end
	end
end
