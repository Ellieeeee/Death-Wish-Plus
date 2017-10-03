if not Global.load_level then
	return
end

local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
-- Can't use tweak_data:difficulty_to_index() here since tweak_data hasn't been defined at this point in the loading process
if not DW.settings.dw_enemy_toggle_value or (difficulty ~= "overkill_290" and difficulty ~= "sm_wish") then
	return
end

local init_actual = GuiTweakData.init
function GuiTweakData:init(...)
	init_actual(self, ...)

	-- Ensure that the table always exists
	if self.blackscreen_risk_textures == nil then
		self.blackscreen_risk_textures = {
			easy_wish = "guis/textures/pd2/risklevel_deathwish_easywish_blackscreen",
			overkill_290 = "guis/textures/pd2/risklevel_deathwish_blackscreen",
			sm_wish = "guis/textures/pd2/risklevel_deathwish_sm_blackscreen"
		}
	end

	self.blackscreen_risk_textures.deathwishplus = tostring(DW.resources.deathwishplus)
end
