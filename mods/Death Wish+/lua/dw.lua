if DW.settings.dw_enemy_toggle_value then
	local text_original = LocalizationManager.text
	local testAllStrings = false

	function LocalizationManager:text(string_id, ...)
	return string_id == "menu_difficulty_apocalypse" and "Death Wish +"
	or string_id == "menu_risk_elite" and "FOR YOU, ACTION IS THE JUICE."
	or string_id == "heist_red2_briefing" and "Everyone likes to make a spectacular entrance and this is going to be one for the books. Two cans of thermite should be enough to make our own personal VIP entrance in to the First World Bank Vault. After that it's just getting out with the cash..."
	or string_id == "heist_dinner_briefing" and "We've got inside information on an upcoming gold transport. Only trouble is, the gold travels with a motorcade full of Murkywater mercenaries. An exploding car on the highway will force them to use the secondary route, giving us an ambush opportunity. We've got a shipping container waiting and some heavy smoke will keep the eye in the sky from figuring out where the gold goes."
		

	or testAllStrings == true and string_id
	or text_original(self, string_id, ...)
	end
end