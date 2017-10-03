if not tweak_data then return end
if Global.load_level == true then
local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
local difficulty_index = tweak_data:difficulty_to_index(difficulty)
	if DW.settings.dw_enemy_toggle_value and difficulty_index == 6 then
		tweak_data.screen_colors.risk = Color(255, 255, 0, 0) / 255
	end
end