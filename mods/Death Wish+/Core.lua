if DW.settings.dw_map_toggle_value then
	--FIX THE FILE NAMES BEFORE YOU MAKE THE FINAL VERSION ELLIE
	local map = Global.level_data.level_id
	Hooks:Add("BeardLibCreateScriptDataMods", "DW+BeardLibSequenceFuncs", function()
		if Global.load_level == true then 
			if map == "red2" then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/red2/red2.generic_xml", "generic_xml", "levels/narratives/classics/red2/world/world", "mission", true)
			end	
			if map == "red2" and DW.settings.dw_drill_toggle_value and DW.settings.dw_enemy_toggle_value then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/red2/drill.custom_xml", "custom_xml", "units/equipment/vault_drill/vault_drill", "sequence_manager", true)
			end
			if map == "alex_1" then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/h_alex_must_die/stage_1/alex_1.generic_xml", "generic_xml", "levels/narratives/h_alex_must_die/stage_1/world/world", "mission", true)
			end
			if map == "firestarter_1" then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/h_firestarter/firestarter_1.generic_xml", "generic_xml", "levels/narratives/h_firestarter/stage_1/world/world", "mission", true)
			end
			if map == "firestarter_2" then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/h_firestarter/firestarter_2.generic_xml", "generic_xml", "levels/narratives/h_firestarter/stage_2/world/world", "mission", true)
			end
			if map == "rat" then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/rat/rat.generic_xml", "generic_xml", "levels/narratives/bain/rat/world/world", "mission", true)
			end
			if map == "watchdogs_1" or map == "watchdogs_1_night" then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/h_watchdogs/stage_1/watchdogs_1.generic_xml", "generic_xml", "levels/narratives/h_watchdogs/stage_1/world/world", "mission", true)
			end
			if map == "watchdogs_2_day" or map == "watchdogs_2" then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/h_watchdogs/stage_2/watchdogs_2.generic_xml", "generic_xml", "levels/narratives/h_watchdogs/stage_2/world/world", "mission", true)
			end
			if map == "man" then 
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/man/man.generic_xml", "generic_xml", "levels/narratives/classics/man/world/world", "mission", true)
				BeardLib:ReplaceScriptData("mods/Death Wish+/scriptdata/man/computer.custom_xml", "custom_xml", "units/world/architecture/secret_stash/props/secret_stash_hack_computer_interaction", "sequence_manager", true)
			end
				
		end
	end)
end