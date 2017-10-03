if DW.settings.dw_enemy_toggle_value or DW.settings.dw_baby_toggle_value then
	Hooks:Add("LocalizationManagerPostInit", "dwplus_localization_shit", function(loc)
		LocalizationManager:add_localized_strings({
		["heist_red2_briefing"] = "Everyone likes to make a spectacular entrance and this is going to be one for the books. Two cans of thermite should be enough to make our own personal VIP entrance in to the First World Bank Vault. After that it's just getting out with the cash...",
		["heist_dinner_briefing"] = "We've got inside information on an upcoming gold transport. Only trouble is, the gold travels with a motorcade full of Murkywater mercenaries. An exploding car on the highway will force them to use the secondary route, giving us an ambush opportunity. We've got a shipping container waiting and some heavy smoke will keep the eye in the sky from figuring out where the gold goes.",
		["menu_frenzy_desc"] = "BASIC: ##$basic##\nYou only get ##30%## of your maximum health and cannot heal above it but you take ##30%## less health damage and healing received is reduced by ##75%.##\n\nACE: ##$pro##\nHealth damage taken is now reduced by ##60%## and healing received is reduced by ##50%.##",
		["menu_overkill_beta_desc"] = "BASIC: ##$basic##\nWhen you kill an enemy using a shotgun or the OVE9000 portable saw, you receive a ##75%## damage boost for ##5## seconds.\n\nNote: Does not apply to grenade launchers.\n\nACE: ##$pro##\nThe damage bonus now applies to all weapons. Skill must still be activated using a shotgun or the OVE9000 portable saw.\n\nDecreases the time it takes to pull and put away shotguns and the saw by ##80%##.",
		["menu_hitman_beta_desc"] = "BASIC: ##$basic##\nYou deal ##7.5%## more damage with all suppressed weapons.\n\nACE: ##$pro##\nYou deal an additional ##7.5%## more damage with all suppressed weapons.",
		["menu_perseverance_beta_desc"] = "BASIC: ##$basic##\nInstead of getting downed instantly, you gain the ability to keep on fighting for ##3## seconds with a ##60%## movement penalty before going down.\n\nNote: Does not trigger on fall or fire damage.\n\nACE: ##$pro##\nIncreases the duration of Swan Song by ##6## seconds.",
		["menu_bloodthirst_desc"] = "BASIC: ##$basic##\nEvery kill you get will increase your next melee attack damage by ##100%##, up to a maximum of ##300%.## This effect gets reset when you kill an enemy with a melee attack.\n\nACE: ##$pro##\nWhenever you kill an enemy with a melee attack, you will gain a ##50%## increase in reload speed for ##10## seconds.",
		["menu_body_expertise_beta_desc"] = "BASIC: ##$basic##\n##20%## from the bonus headshot damage is permanently applied to hitting enemies on the body. This skill is only activated by SMGs, LMGs, Assault Rifles or Special Weapons fired in automatic fire mode.\n\nACE: ##$pro##\n##40%## from the bonus headshot damage is permanently applied to hitting enemies on the body. This skill is only activated by SMGs, LMGs, Assault Rifles or Special Weapons fired in automatic fire mode.",
		["menu_inspire_beta_desc"] = "BASIC: ##$basic##\nYou revive crew members ##100%## faster. Shouting at your teammates will increase their movement speed by ##20%## for ##10## seconds.\n\nACE: ##$pro##\nThere is a ##100%## chance that you can revive crew members at a distance of up to ##9## meters by shouting at them. This cannot occur more than once every ##40## seconds.",
		["menu_control_freak_beta_desc"] = "BASIC: ##$basic##\nHaving a converted enemy increases your movement speed by ##10%##.\n\nACE: ##$pro##\nHaving a converted enemy increases your health by ##30%##.\n\nYour converted enemy takes ##45%## less damage. Does not stack with Joker damage reduction, but multiplies.",
		["heist_flat_hl_briefing"] = "Deep inside the projects, a fortified building. Inside the fortified building, a meth lab. In the meth lab, a panic room bolted to the floor. Inside the panic room, a fortune in cash. Getting into the building is easy, but how are you going to get inside the panic room? If you can't get in, how are you going to leave with the money? Simple, steal the whole room.",
		
		})
	end)
end

if CustomAchievement then
	Hooks:Add("LocalizationManagerPostInit", "dwplus_achieveo_shit", function(loc)
		LocalizationManager:add_localized_strings({
		["custom_ach_dwplus_hoxout_sm_name"] = "Hoxton Breakout: One Down+",
		["custom_ach_dwplus_hoxout_sm_desc"] = "What the fuck?!",
		["custom_ach_dwplus_hoxout_sm_objective"] = "Beat Hoxton Breakout on the One Down+ difficulty.",
		["custom_ach_dwplus_hoxout_deathwish_name"] = "Hoxton Breakout: Death Wish+",
		["custom_ach_dwplus_hoxout_deathwish_desc"] = "Did you miss me you wankers?",
		["custom_ach_dwplus_hoxout_deathwish_objective"] = "Beat Hoxton Breakout on the Death Wish+ difficulty.",
		["custom_ach_dwplus_scarface_sm_name"] = "Scarface Mansion: One Down+",
		["custom_ach_dwplus_scarface_sm_desc"] = "What's a better time than now to cross the line?",
		["custom_ach_dwplus_scarface_sm_objective"] = "Beat Scarface Mansion on the One Down+ difficulty.",
		["custom_ach_dwplus_scarface_deathwish_name"] = "Scarface Mansion: Death Wish+",
		["custom_ach_dwplus_scarface_deathwish_desc"] = "We've been going the distance.",
		["custom_ach_dwplus_scarface_deathwish_objective"] = "Beat Scarface Mansion on the Death Wish+ difficulty.",
		["custom_ach_dwplus_fwb_sm_name"] = "First World Bank: One Down+",
		["custom_ach_dwplus_fwb_sm_desc"] = "Bank on me.",
		["custom_ach_dwplus_fwb_sm_objective"] = "Beat First World Bank on the One Down+ difficulty.",
		["custom_ach_dwplus_fwb_deathwish_name"] = "First World Bank: Death Wish+",
		["custom_ach_dwplus_fwb_deathwish_desc"] = "Overdrill????",
		["custom_ach_dwplus_fwb_deathwish_objective"] = "Beat First World Bank on the Death Wish+ difficulty.",
		["custom_ach_dwplus_panic_sm_name"] = "Panic Room: One Down+",
		["custom_ach_dwplus_panic_sm_desc"] = "Brush with death.",
		["custom_ach_dwplus_panic_sm_objective"] = "Beat Panic Room on the One Down+ difficulty.",
		["custom_ach_dwplus_panic_deathwish_name"] = "Panic Room: Death Wish+",
		["custom_ach_dwplus_panic_deathwish_desc"] = "Stay back bro!",
		["custom_ach_dwplus_panic_deathwish_objective"] = "Beat Panic Room on the Death Wish+ difficulty.",
		["custom_ach_dwplus_slaughter_sm_name"] = "Slaughterhouse: One Down+",
		["custom_ach_dwplus_slaughter_sm_desc"] = "Lots of pigs, but no pigs.",
		["custom_ach_dwplus_slaughter_sm_objective"] = "Beat Slaughterhouse on the One Down+ difficulty.",
		["custom_ach_dwplus_slaughter_deathwish_name"] = "Slaughterhouse: Death Wish+",
		["custom_ach_dwplus_slaughter_deathwish_desc"] = "WHY ARE THERE SO MANY SNIPERS?!",
		["custom_ach_dwplus_slaughter_deathwish_objective"] = "Beat Slaughterhouse on the Death Wish+ difficulty.",
		["custom_ach_dwplus_man_sm_name"] = "Undercover: One Down+",
		["custom_ach_dwplus_man_sm_desc"] = "In for a dime, in for a dollar.",
		["custom_ach_dwplus_man_sm_objective"] = "Beat Undercover on the One Down+ difficulty.",
		["custom_ach_dwplus_man_deathwish_name"] = "Undercover: Death Wish+",
		["custom_ach_dwplus_man_deathwish_desc"] = "GET IN THE CHAIR!",
		["custom_ach_dwplus_man_deathwish_objective"] = "Beat Undercover on the Death Wish+ difficulty.",
		["custom_ach_dwplus_pal_sm_name"] = "Counterfeit: One Down+",
		["custom_ach_dwplus_pal_sm_desc"] = "Under Pressure.",
		["custom_ach_dwplus_pal_sm_objective"] = "Beat Counterfeit on the One Down+ difficulty.",
		["custom_ach_dwplus_pal_deathwish_name"] = "Counterfeit: Death Wish+",
		["custom_ach_dwplus_pal_deathwish_desc"] = "WHY ARE THERE SO MANY BULLDOZERS?!",
		["custom_ach_dwplus_pal_deathwish_objective"] = "Beat Counterfeit on the Death Wish+ difficulty.",
		
		})
	end)
end

if DW.settings.dw_enemy_toggle_value then
	Hooks:Add("LocalizationManagerPostInit", "dwplus_localization_difficulty_name", function(loc)
		LocalizationManager:add_localized_strings({
			["menu_difficulty_apocalypse"] = "Death Wish+",
			["menu_risk_elite"] = "DEATH WISH+. FOR YOU, ACTION IS THE JUICE.",
			["menu_difficulty_sm_wish"] = "ONE DOWN+",
			-- Changed this so that the text doesn't get cut off when buying a contract from the broker
			["menu_risk_sm_wish"] = "FOR THOSE WHO THINK DEATH WISH+ ISN'T HARD ENOUGH.",
		})
	end)
end