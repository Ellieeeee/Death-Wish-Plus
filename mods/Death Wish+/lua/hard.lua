local map = Global.level_data.level_id
tweak_data.player.damage.MIN_DAMAGE_INTERVAL = DW.settings.dw_inv_frames_value
if DW.settings.dw_enemy_toggle_value then
	tweak_data.weapon.scar_npc.DAMAGE = 3.5
	tweak_data.weapon.m249_npc.DAMAGE = 2.5
	tweak_data.weapon.saiga_npc.DAMAGE = 5 -- :^
	
end
if DW.settings.dw_bulldozer_toggle_value == true then
	tweak_data.character.tank.move_speed = tweak_data.character:_presets(tweak_data).move_speed.normal
	tweak_data.character.tank.damage.hurt_severity = tweak_data.character:_presets(tweak_data).hurt_severities.no_hurts
end
if DW.settings.dw_piercing_toggle_value == true then
	tweak_data.weapon.r870_npc.armor_piercing = true
	tweak_data.weapon.m249_npc.armor_piercing = true
	tweak_data.weapon.scar_npc.armor_piercing = true
	tweak_data.weapon.g36_npc.armor_piercing = true
	tweak_data.weapon.beretta92_npc.armor_piercing = true
	tweak_data.weapon.raging_bull_npc.armor_piercing = true
	tweak_data.weapon.benelli_npc.armor_piercing = true
	tweak_data.weapon.c45_npc.armor_piercing = true
	tweak_data.weapon.m4_npc.armor_piercing = true
	tweak_data.weapon.ak47_npc.armor_piercing = true
	tweak_data.weapon.mossberg_npc.armor_piercing = true
	tweak_data.weapon.mp5_npc.armor_piercing = true
	tweak_data.weapon.mp5_tactical_npc.armor_piercing = true
	tweak_data.weapon.mp9_npc.armor_piercing = true
	tweak_data.weapon.mac11_npc.armor_piercing = true
	tweak_data.weapon.saiga_npc.armor_piercing = true
	tweak_data.weapon.rpk_lmg_npc.armor_piercing = true
	tweak_data.weapon.svd_snp_npc.armor_piercing = true
	tweak_data.weapon.akmsu_smg_npc.armor_piercing = true
	tweak_data.weapon.asval_smg_npc.armor_piercing = true
	tweak_data.weapon.sr2_smg_npc.armor_piercing = true
	tweak_data.weapon.ak47_ass_npc.armor_piercing = true
	
	

	
end

--if you mess with this i will personally slap you
if DW.settings.dw_drill_toggle_value and DW.settings.dw_enemy_toggle_value and DW.settings.dw_map_toggle_value then
	if map == "red2" then
		 tweak_data.money_manager.bag_values.gold = 10000 -- https://www.youtube.com/watch?v=ON-7v4qnHP8
	end
end

Hard = true