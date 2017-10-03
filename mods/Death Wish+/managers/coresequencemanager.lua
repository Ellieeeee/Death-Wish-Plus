if DW.settings.dw_enemy_toggle_value and DW.settings.dw_baby_toggle_value then
log("[Death Wish+] host only changes and main changes are both on!!! disabling mod.")
return
end

if Global.load_level == true then 	
	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	if (DW.settings.dw_enemy_toggle_value and difficulty == "overkill_290") or (DW.settings.dw_enemy_toggle_value and difficulty == "sm_wish") then
	Hooks:Add("BeardLibCreateScriptDataMods", "DWBeardLibSequenceFuncs", function()
		local map = Global.level_data.level_id
			if map == "red2" then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/red2/drill.custom_xml", "custom_xml", "units/equipment/vault_drill/vault_drill", "sequence_manager", nil)
			end	
			if map == "nail" then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/nail/nail.generic_xml", "generic_xml", "levels/narratives/bain/nail/world/world", "mission", nil)
			end	
			if map == "alex_1" then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/h_alex_must_die/stage_1/alex_1.generic_xml", "generic_xml", "levels/narratives/h_alex_must_die/stage_1/world/world", "mission", nil)
			end
			if map == "firestarter_1" then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/h_firestarter/firestarter_1.generic_xml", "generic_xml", "levels/narratives/h_firestarter/stage_1/world/world", "mission", nil)
			end
			if map == "firestarter_2" then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/h_firestarter/firestarter_2.generic_xml", "generic_xml", "levels/narratives/h_firestarter/stage_2/world/world", "mission", nil)
			end	
			if map == "firestarter_3" or map == "branchbank" then
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/h_firestarter/firestarter_3.generic_xml", "generic_xml", "levels/narratives/h_firestarter/stage_3/world/world", "mission", nil)
			end
			if map == "rat" then
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/rat/rat.generic_xml", "generic_xml", "levels/narratives/bain/rat/world/world", "mission", nil)
			end
			if map == "watchdogs_1" or map == "watchdogs_1_night" then
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/h_watchdogs/stage_1/watchdogs_1.generic_xml", "generic_xml", "levels/narratives/h_watchdogs/stage_1/world/world", "mission", nil)
			end
			if map == "watchdogs_2_day" or map == "watchdogs_2" then
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/h_watchdogs/stage_2/watchdogs_2.generic_xml", "generic_xml", "levels/narratives/h_watchdogs/stage_2/world/world", "mission", nil)
			end 
			if map == "man" then
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/man/man.generic_xml", "generic_xml", "levels/narratives/classics/man/world/world", "mission", nil)
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/man/computer.custom_xml", "custom_xml", "units/world/architecture/secret_stash/props/secret_stash_hack_computer_interaction", "sequence_manager", nil)
			end
			if map == "arm_for" then
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/arm_for/arm_for_mission.generic_xml", "generic_xml", "levels/narratives/armadillo/arm_for/world/world", "mission", nil)
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/arm_for/arm_for_continent.custom_xml", "custom_xml", "levels/narratives/armadillo/arm_for/world/world", "continent", nil)
			end
		end)
	end
end