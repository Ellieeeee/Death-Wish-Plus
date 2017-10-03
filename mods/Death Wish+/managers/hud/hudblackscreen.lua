if DW.settings.dw_enemy_toggle_value and DW.settings.dw_baby_toggle_value then
log("[Death Wish+] host only changes and main changes are both on!!! disabling mod.")
return
end
if DW_HUDBlackScreen_Hooked then
	return
else
	DW_HUDBlackScreen_Hooked = true
end

if not DW or not DW.settings or not DW.settings.dw_enemy_toggle_value then
	return
end

local deathwish_riskicons = 5
local onedown_riskicons = 6

local abort_fadein = false

-- Based on U108.1 code
local _animate_fade_in_actual = HUDBlackScreen._animate_fade_in
-- This callback is enclosed within a Lua coroutine, which already implies a pcall(). In other words, an error occurring here
-- within Lua code will not cause a game crash. Native functions (e.g. panel member functions) will still remain vulnerable to
-- crashes, though
function HUDBlackScreen:_animate_fade_in(mid_text, ...)
	-- BEGIN MOD --
	local maxicons = managers.job:current_difficulty_stars()
	if maxicons ~= deathwish_riskicons and maxicons ~= onedown_riskicons then
		return _animate_fade_in_actual(self, mid_text, ...)
	end
	-- END MOD --

	local job_panel = self._blackscreen_panel:child("job_panel")

	-- BEGIN MOD --
	-- The mid_text checks are to ensure that OVK inserting another non-panel parameter before it doesn't trip up this validity
	-- check
	if not alive(job_panel) or not mid_text or not mid_text.alive or not mid_text:alive() then
		return _animate_fade_in_actual(self, mid_text, ...)
	end

	-- FFS OVK, name your damned panels. I don't care if it's a single character name like a or 1, just bloody do it. I'm sick of
	-- writing panel identification logic all the damned time already
	local risk_panel = nil
	local risk_icons = nil
	local risk_text = nil

	local jobpanelchildren = job_panel:children()
	if jobpanelchildren ~= nil and #jobpanelchildren > 0 then
		for index, panel in ipairs(jobpanelchildren) do
			if panel.type_name == "Panel" and alive(panel) then
				risk_panel = panel
				local riskpanelchildren = panel:children()
				if riskpanelchildren ~= nil and #riskpanelchildren == maxicons then
					local valid = true
					for __, riskicon in ipairs(riskpanelchildren) do
						if not alive(riskicon) then
							valid = false
							break
						end
					end
					if valid then
						risk_icons = riskpanelchildren
					end
				end
			elseif panel.type_name == "Text" and alive(panel) and panel:text() == managers.localization:to_upper_text(tweak_data.difficulty_name_id) then
				risk_text = panel
			end
		end
	end

	if not risk_panel or not risk_icons or not risk_text then
		-- Code red, code red - OVK probably changed something and we don't know how to deal with that, abort here and defer to
		-- the game's default function
		return _animate_fade_in_actual(self, mid_text, ...)
	end

	local yellowrisk = Color(1, 1, 0.8, 0)
	local subtract = Color(1, 0, 1, 0)
	local finalcolor = Color(1, 1, 0, 0)

	-- Apply default color and layer order overrides
	risk_panel:set_layer(-2)
	risk_text:set_color(yellowrisk)
	risk_text:set_layer(-2)
	local lastriskicon = nil
	for __, riskicon in ipairs(risk_icons) do
		riskicon:set_color(yellowrisk)
		riskicon:set_alpha(0)
		lastriskicon = riskicon
	end
	if not lastriskicon then
		-- ?! But how..? Oh well, defer to the game's default function
		return _animate_fade_in_actual(self, mid_text, ...)
	end

	-- So, how does this transition from yellow to red really occur? It makes use of color subtraction: yellow - green = red. But
	-- how exactly does that work? Yellow is a secondary color that is composed of two primary colors, namely red and green
	-- (since Color(alpha, 1, 1, 0) is bright yellow). Hence, reducing the green component to zero results in only the red
	-- component remaining, which we perceive as a color change from yellow to red

	-- Okay, so that much was easy. But how can this actually be implemented in such a way that it appears as though the color
	-- change is occurring on a relatively high resolution, per-pixel basis, rather than per entire character? The answer is a
	-- combination of both a bitmap texture overlay and a blending mode

	-- The bitmap portion is pretty straightforward - simply create a Bitmap panel element, assign it a suitable texture, and
	-- animate its upscaling. Hey presto, it's done. However, the latter is where the magic really happens. But to understand it,
	-- it is first necessary to visualize what happens at a pixel level. Assume that a pixel shows black by default. Now, stack
	-- another pixel, an opaque pure yellow one, in front of it. The final result is a yellow pixel, since it is opaque and
	-- effectively replaces everything underneath itself, even pure white. This is known as the normal blending mode, where the
	-- topmost opaque pixel always obscures (replaces) everything else underneath it

	-- So that's all fine and well, but how does this tie in with the aforementioned color subtraction anyway? Well, continuing
	-- from the scenario above, stack a pure green pixel in front of the yellow pixel. Nothing magical, you'll just end up with a
	-- green pixel staring right back at you. Now, imagine the green pixel being a color filter instead, similar to those
	-- red-cyan color glasses used with anaglyph 3D books, the difference being that this pixel-turned-odd-color-filter
	-- /removes all traces of green/ from everything under it instead of only permitting its color to be passed through. Now when
	-- you look at the stack, you'll find a red pixel instead. This is subtractive blending, where a pixel on a texture with that
	-- blending mode applied turns into a color-subtractor for its own color component, for anything beneath it. So a pure red
	-- pixel with "sub" blending removes the red component from the pixel beneath it, a pure blue pixel with "sub" blending
	-- removes the blue component, a pure purple "sub" blended pixel removes both the red and blue components, and so on

	-- But hold on, how is it that the overlay texture - a filled circle - seamlessly vanishes into the background without any
	-- visual oddities? Well, if a color component is already zero, there's effectively nothing left to subtract anyway. And
	-- since the color black is simply a composition of zeroed out red, green and blue components, the green subtractive pixel on
	-- top of it doesn't have anything left to remove anyway - it's already zero. Which is why nothing happens. But if the
	-- background were pure white instead, then the result would be vastly different - you would see a large purple circular
	-- patch expanding (quite an ugly effect, too)

	-- (Phew. I was definitely not expecting it to turn out this lengthy. But it's already done so w/e I guess...)

	local overlayexpander_initialsize = 96
	local overlayexpander_finalsize = 1128
	local overlayexpander = job_panel:child("overlayexpander")
	if not alive(overlayexpander) then
		overlayexpander = job_panel:bitmap({
			name = "overlayexpander",
			texture = "guis/textures/pd2/hud_tabs",
			texture_rect = {84, 34, 19, 19},
			color = subtract,
			blend_mode = "sub",
			layer = -1,
			w = overlayexpander_initialsize,
			h = overlayexpander_initialsize,
			alpha = 0
		})
	end
	-- Always reset it each time
	overlayexpander:set_size(overlayexpander_initialsize, overlayexpander_initialsize)
	overlayexpander:set_alpha(0)
	overlayexpander:hide()
	overlayexpander:set_world_center(lastriskicon:world_center_x(), lastriskicon:world_center_y() - 6)
	-- END MOD --

--[[
	local t = 0.35
	local d = t
	-- Initial fade in
	while t > 0 do
		local dt = coroutine.yield()
		t = t - dt
		local a = (d - t) / d
		mid_text:set_alpha(a)
		if job_panel then
			job_panel:set_alpha(a)
		end
		self._blackscreen_panel:set_alpha(a)
	end
]]

	-- BEGIN MOD --
	-- The following block replaces the above game default sequence. This has been done to allow the waiting duration to be
	-- independent of the actual fade duration
	local initialfade_duration = 0.75
	local interpolator = nil
	do
		local lerp = math.lerp
		interpolator = function(panel)
			over(initialfade_duration, function(progress)
				panel:set_alpha(lerp(0, 1, progress))
			end)
		end
	end
	mid_text:animate(interpolator)
	job_panel:animate(interpolator)
	self._blackscreen_panel:animate(interpolator)
	-- Allow the above sequence to progress a little before proceeding
	wait(0.25)

	-- Sequenced risk icon fades
	local delay_step = 0.1
	local fade_duration = 0.3
	for index, riskicon in ipairs(risk_icons) do
		local lerp = math.lerp
		-- Stagger each risk icon's fade in by a small amount
		riskicon:animate(function(panel)
			local delay = (index - 1) * delay_step
			if delay > 0 then
				wait(delay)
			end
			over(fade_duration, function(progress)
				panel:set_alpha(lerp(0, 1, progress))
			end)
		end)
	end
	-- Wait for the above sequence to complete
	wait((maxicons - 1) * delay_step + 0.2)

	-- Overlay fade + expand
	local bezier_setting = {
		0,	-- Initial value
		0,	-- In acceleration (first half)
		1,	-- Out acceleration (second half)
		1	-- Final value
	}
	local x = overlayexpander:center_x()
	local y = overlayexpander:center_y()
	overlayexpander:animate(function(panel)
		local lerp = math.lerp
		local bezier = math.bezier
		panel:show()
		over(0.3, function(progress)
			panel:set_alpha(lerp(0, 1, progress))
		end)
		panel:set_alpha(1)
		local size = nil
		over(0.5, function(progress)
			size = lerp(overlayexpander_initialsize, overlayexpander_finalsize, bezier(bezier_setting, progress))
			panel:set_size(size, size)
			panel:set_center(x, y)
		end)
		panel:hide()
	end)
	-- Wait for the above sequence to complete. This is intentionally shorter by 0.1 seconds to allow the fallback red fades for
	-- the risk text and icons to occur while the overlay is still visible (flicker prevention)
	wait(0.6)

	-- Fade the icons to red just before the subtractive overlay gets hidden (as a failsafe in case something above breaks)
	interpolator = nil
	do
		local lerp = math.lerp
		interpolator = function(panel)
			over(0.2, function(progress)
				panel:set_color(lerp(yellowrisk, finalcolor, progress))
			end)
		end
	end
	risk_text:animate(interpolator)
	for __, riskicon in ipairs(risk_icons) do
		riskicon:animate(interpolator)
	end

	-- If HUDBlackScreen:_animate_fade_out() has been called, do not proceed to set the panels to full opacity as doing so causes
	-- ugly 'pops'
	if abort_fadein then
		return
	end
	-- END MOD --

	mid_text:set_alpha(1)
	if job_panel then
		job_panel:set_alpha(1)
	end
	self._blackscreen_panel:set_alpha(1)

	-- BEGIN MOD --
	-- This is disabled since it causes unsightly instantaneous 'pops' to full opacity during blackscreen fade out if the pulse
	-- happens to be on the translucent phase at the time
--[[
	local t = 0
	local cos = math.cos
	local lerp = math.lerp
	while true and not abort_fadein do
		t = t + coroutine.yield()
		job_panel:set_alpha(cos(t * 360 * 0.25) * 0.15 + 0.85)
	end
]]
	-- END MOD --
end

local _animate_fade_out_actual = HUDBlackScreen._animate_fade_out
function HUDBlackScreen:_animate_fade_out(mid_text, ...)
	abort_fadein = true
	return _animate_fade_out_actual(self, mid_text, ...)
end

local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
local difficulty_index = tweak_data:difficulty_to_index(difficulty)
if difficulty_index < 7 or Restoration then
	return
end

local set_job_data_actual = HUDBlackScreen.set_job_data
function HUDBlackScreen:set_job_data(...)
	if not managers.job:has_active_job() then
		return set_job_data_actual(self, ...)
	end

	set_job_data_actual(self, ...)

	-- Optimization: Only perform the global lookup once
	local alive = _G.alive

	-- Validate as much state as possible before making any changes. This allows failures to be aborted cleanly, without leaving
	-- the panels in an inconsistent state
	if not alive(self._blackscreen_panel) then
		return
	end

	local job_panel = self._blackscreen_panel:child("job_panel")
	if not alive(job_panel) then
		return
	end

	local jobpanelchildren = job_panel:children()
	if not jobpanelchildren or #jobpanelchildren < 1 then
		return
	end

	-- Oh OVK, just when I thought you couldn't slide any lower than you already have, you go ahead and create an anonymous panel
	-- with basically nothing I can rely upon to determine its identity. GGWP OVK, FFS

	local risk_panel = nil
	for __, panel in ipairs(jobpanelchildren) do
		if panel.type_name == "Panel" and alive(panel) then
			risk_panel = panel
			break
		end
	end
	if not risk_panel then
		return
	end

	local riskpanelchildren = risk_panel:children()
	local numriskicons = #riskpanelchildren
	if riskpanelchildren == nil or numriskicons < deathwish_riskicons then
		return
	end

	for __, panel in ipairs(riskpanelchildren) do
		if not alive(panel) then
			return
		end
	end

	local risk_text = nil
	for __, panel in ipairs(jobpanelchildren) do
		if panel.type_name == "Text" and alive(panel) and panel:text() == managers.localization:to_upper_text(tweak_data.difficulty_name_id) then
			risk_text = panel
		end
	end
	if not risk_text then
		return
	end

	local blackscreen_risk_textures = tweak_data.gui.blackscreen_risk_textures
	if not blackscreen_risk_textures then
		return
	end

	local lefticon = nil
	if numriskicons == deathwish_riskicons then
		lefticon = blackscreen_risk_textures.overkill_290
	elseif numriskicons == onedown_riskicons then
		lefticon = blackscreen_risk_textures.sm_wish
	end
	local dweliteicon = blackscreen_risk_textures.deathwishplus
	if not lefticon or not dweliteicon then
		return
	end

	for index, panel in ipairs(riskpanelchildren) do
		if index ~= numriskicons then
			panel:set_image(lefticon)
		else
			panel:set_image(dweliteicon)
		end
	end
end
