if DW.settings.dw_enemy_toggle_value and DW.settings.dw_baby_toggle_value then
log("[Death Wish+] host only changes and main changes are both on!!! disabling mod.")
return
end
if not DW.settings.dw_enemy_toggle_value then
	return
end

-- Only abort processing this file if a game session is active and the difficulty is not DW+
local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
if Global.load_level == true then
	-- Can't use tweak_data:difficulty_to_index() here since tweak_data hasn't been defined at this point in the loading process
	if difficulty ~= "overkill_290" and difficulty ~= "sm_wish" then
		return
	end
end

local _init_pd2_actual = TweakData._init_pd2
function TweakData:_init_pd2(...)
	_init_pd2_actual(self, ...)

	if self.hud_icons == nil then
		return
	end

	-- Define DW+'s standalone elite skull icon
	local elite = DW.resources.hud_icons_risk_decimation_battalion
	if not elite then
		return
	end

	local dw_dwplus_combined = DW.resources.hud_icons_risk_dw_dwplus_combined
	if not dw_dwplus_combined then
		return
	end

	self.hud_icons.risk_decimation_battalion = elite

	if Global.load_level then
		if difficulty == "overkill_290" then
			-- Use the game's default Death Wish icon for the first four skulls (seen on the mission briefing GUI and pause menu)
			local lefticon = self.hud_icons.risk_murder_squad
			self.hud_icons.risk_murder_squad_default = lefticon
			-- Make all difficulties below Death Wish use the regular Death Wish skull icon
			self.hud_icons.risk_swat = lefticon
			self.hud_icons.risk_fbi = lefticon
			self.hud_icons.risk_death_squad = lefticon
			self.hud_icons.risk_easy_wish = lefticon
			-- Replace the Death Wish skull icon with the elite one
			self.hud_icons.risk_murder_squad = elite
		elseif difficulty == "sm_wish" then
			-- Use the game's default One Down icon for the first five skulls (seen on the mission briefing GUI and pause menu)
			local lefticon = self.hud_icons.risk_sm_wish
			self.hud_icons.risk_sm_wish_default = lefticon
			-- Make all difficulties below One Down use the regular One Down skull icon
			self.hud_icons.risk_swat = lefticon
			self.hud_icons.risk_fbi = lefticon
			self.hud_icons.risk_death_squad = lefticon
			self.hud_icons.risk_easy_wish = lefticon
			self.hud_icons.risk_murder_squad = lefticon
			-- Replace the One Down skull icon with the elite one
			self.hud_icons.risk_sm_wish = elite
		end
	else
		-- Substitute the default Death Wish and One Down icons with the elite one for 'outgame' UI elements (e.g. Crime.net
		-- Contract GUI)
		self.hud_icons.risk_murder_squad_default = self.hud_icons.risk_murder_squad
		self.hud_icons.risk_sm_wish_default = self.hud_icons.risk_sm_wish
		self.hud_icons.risk_murder_squad = elite
		self.hud_icons.risk_sm_wish = elite
	end
end
