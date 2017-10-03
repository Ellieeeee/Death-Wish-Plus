Hooks:Add("LocalizationManagerPostInit", "dwplus_localization_shit", function(loc)
	LocalizationManager:add_localized_strings({
	["heist_red2_briefing"] = "Everyone likes to make a spectacular entrance and this is going to be one for the books. Two cans of thermite should be enough to make our own personal VIP entrance in to the First World Bank Vault. After that it's just getting out with the cash...",
	["heist_dinner_briefing"] = "We've got inside information on an upcoming gold transport. Only trouble is, the gold travels with a motorcade full of Murkywater mercenaries. An exploding car on the highway will force them to use the secondary route, giving us an ambush opportunity. We've got a shipping container waiting and some heavy smoke will keep the eye in the sky from figuring out where the gold goes.",
	["menu_frenzy_desc"] = "BASIC: ##$basic##\nYou only get ##30%## of your maximum health and cannot heal above it but you take ##30%## less health damage and healing received is reduced by ##75%.##\n\nACE: ##$pro##\nHealth damage taken is now reduced by ##60%## and healing received is reduced by ##50%.##",
	
	})
end)


if DW.settings.dw_enemy_toggle_value then
	Hooks:Add("LocalizationManagerPostInit", "dwplus_localization_difficulty_name", function(loc)
	LocalizationManager:add_localized_strings({
		["menu_difficulty_apocalypse"] = "Death Wish+",
		["menu_risk_elite"] = "FOR YOU, ACTION IS THE JUICE.",
			
	})
	end)	
end