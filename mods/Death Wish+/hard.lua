--i can't believe someone actually asked for this to be a feature
if DW.settings.dw_frames_toggle_value == true then
	tweak_data.player.damage.MIN_DAMAGE_INTERVAL = 0
end

--try this on one down+, i fucking dare you
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
if DW.settings.dw_enemy_toggle_value then
	if Global.load_level == true then
		local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
		local map = Global.level_data.level_id
		if (DW.settings.dw_enemy_toggle_value and difficulty == "overkill_290" and map == "red2") or (DW.settings.dw_enemy_toggle_value and difficulty == "sm_wish" and map == "red2") then
			 tweak_data.money_manager.bag_values.gold = 10000 -- https://www.youtube.com/watch?v=ON-7v4qnHP8
		end
	end
end
Hard = true