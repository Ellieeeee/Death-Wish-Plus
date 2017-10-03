if DW.settings.dw_enemy_toggle_value and DW.settings.dw_baby_toggle_value then
log("[Death Wish+] host only changes and main changes are both on!!! disabling mod.")
return
end
local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
local difficulty_index = tweak_data:difficulty_to_index(difficulty)
--killing myself from how long this if statement is because there's too much to check
if not (difficulty_index == 7 or difficulty_index == 8) or not DW.settings.dw_enemy_toggle_value or (Holo and Holo.Options:GetValue("Base/Hud")) or (pdth_hud and (pdth_hud.Options:GetValue("HUD/MainHud") or pdth_hud.Options:GetValue("HUD/Assault"))) or MUIMenu or (restoration and (restoration.Options:GetValue("HUD/MainHud") or restoration.Options:GetValue("HUD/AssaultPanel"))) then
	return
end

local init_actual = HUDAssaultCorner.init
function HUDAssaultCorner:init(hud, full_hud, tweak_hud, ...)
	init_actual(self, hud, full_hud, tweak_hud, ...)

	-- Validate as much state as possible before making any changes. This allows failures to be aborted cleanly, without leaving
	-- the panels in an inconsistent state
	if not alive(self._hud_panel) then
		return
	end

	local assault_panel = self._hud_panel:child("assault_panel")
	if not alive(assault_panel) then
		return
	end

	local icon_assaultbox = assault_panel:child("icon_assaultbox")
	if not alive(icon_assaultbox) then
		return
	end

	if not alive(self._bg_box) then
		return
	end

	local assaultboxbgcorners = self._bg_box:children()
	if assaultboxbgcorners == nil or #assaultboxbgcorners < 1 then
		return
	end
	for __, panel in ipairs(assaultboxbgcorners) do
		if not alive(panel) then
			return
		end
	end
	
	if managers.mutators:are_mutators_active() then
		self._assault_color = Color(255, 211, 133, 255) / 255
		self._vip_assault_color = Color(255, 255, 133, 225) / 255
	else
		self._assault_color = Color.red
		self._current_assault_color = self._assault_color
	end

	icon_assaultbox:set_color(self._assault_color)
	icon_assaultbox:set_image("guis/textures/pd2/hud_icon_skullbox")

	local hudcornertexturekey = Idstring("guis/textures/pd2/hud_corner"):key()

	for __, panel in ipairs(assaultboxbgcorners) do
		-- Only recolor the four corners, and not the background
		if panel.type_name == "Bitmap" and panel:texture_name():key() == hudcornertexturekey then
			panel:set_color(self._assault_color)
		end
	end
end

local sync_set_assault_mode_actual = HUDAssaultCorner.sync_set_assault_mode
function HUDAssaultCorner:sync_set_assault_mode(mode, ...)
	if self._assault_mode == mode or mode == "phalanx" then
		return sync_set_assault_mode_actual(self, mode, ...)
	end

	sync_set_assault_mode_actual(self, mode, ...)

	if not alive(self._hud_panel) then
		return
	end

	local assault_panel = self._hud_panel:child("assault_panel")
	if not alive(assault_panel) then
		return
	end

	local icon_assaultbox = assault_panel:child("icon_assaultbox")
	if not alive(icon_assaultbox) then
		return
	end

	icon_assaultbox:set_image("guis/textures/pd2/hud_icon_skullbox")
end
