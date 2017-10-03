if DW.settings.dw_enemy_toggle_value then
	if (SC and SC._data and SC._data.sc_ai_toggle) then
		local _setup_item_rows_original = MenuNodeGui._setup_item_rows
		function MenuNodeGui:_setup_item_rows(node, ...)
			_setup_item_rows_original(self, node, ...)
			if not Global._friendsonly_warning_shown then
				Global._friendsonly_warning_shown = true
				QuickMenu:new(
					"Death Wish+",
					"Warning! You are using SC's mod (and possibly some other mods) which is known to have some incompatibilities with Death Wish+! If you are experiencing issues, please disable SC's mod or DW+ before reporting anything to SC or myself. Some DW+ enemy weapon changes have been disabled to prevent crashing on startup.",
					{
						{
							text = "ok",
							is_cancel_button = true
						}
					},
					true
				)
			end
		end
	end
	if SystemFS:exists("mods/Seamlink Gameplay Overhaul/mod.txt") then
		local _setup_item_rows_original = MenuNodeGui._setup_item_rows
		function MenuNodeGui:_setup_item_rows(node, ...)
			_setup_item_rows_original(self, node, ...)
			if not Global._friendsonly_warning_shown then
				Global._friendsonly_warning_shown = true
				QuickMenu:new(
					"Death Wish+",
					"Warning! You are using Seamlink's overhaul (and possibly some other mods) which is known to have some incompatibilities with Death Wish+! If you are experiencing issues, please disable Seamlink's overhaul or DW+ before reporting anything to Seamlink or myself.",
					{
						{
							text = "ok",
							is_cancel_button = true
						}
					},
					true
				)
			end
		end
	end
	if SystemFS:exists("mods/Harder Difficulty/mod.txt") or SystemFS:exists("mods/Spawn Faster (Normal)/mod.txt") or SystemFS:exists("mods/Spawn Faster (Advanced)/mod.txt") then
		local _setup_item_rows_original = MenuNodeGui._setup_item_rows
		function MenuNodeGui:_setup_item_rows(node, ...)
			_setup_item_rows_original(self, node, ...)
			if not Global._friendsonly_warning_shown then
				Global._friendsonly_warning_shown = true
				QuickMenu:new(
					"Death Wish+",
					"Warning! You are using Spawn Faster or Harder Difficulty (and possibly some other mods) which is known to have some incompatibilities with Death Wish+! If you are experiencing issues, please disable Spawn Faster/Harder Difficulty or DW+ before reporting anything to BRAND0 or myself.",
					{
						{
							text = "ok",
							is_cancel_button = true
						}
					},
					true
				)
			end
		end
	end
end
--[[

To all the people that tamper, edit, or otherwise fuck with the mod's internal code:
Congratulations on finding this, it either means you are bored, trying to help with a crash (in that case, ignore this message. Thank you for trying to help), or part of the problem.
I am sick and tired of your shit, if I see one more person messing around with the code in this mod, I will put the below script, in every single lua file in the mod, perhaps even multiple times. I will also go to luac if this happens.
I will also put in checks to do the same actions if certain values are edited, such as the cloaker being immune to the buzzer or bulldozers immune to stuns.
The mod will live on fine without people thinking they're cute by changing shit, and you will finally be forced to uninstall the mod, or play it as I have intended. Don't be a cunt, or I'll be one right back.
If you want a mod to spam enemies so their AI breaks and requiring the entire team to kill whore to win, look elsewhere.
Do not test me, my patience has run out.

if DW.settings.dw_enemy_toggle_value then
	if not SystemFS:exists("mods/Death Wish+/hard.lua")
	or not SystemFS:exists("mods/Death Wish+/tweak_data/charactertweakdata.lua")
	or not SystemFS:exists("mods/Death Wish+/tweak_data/groupaitweakdata.lua")
	or not SystemFS:exists("mods/Death Wish+/tweak_data/playertweakdata.lua")
	or not SystemFS:exists("mods/Death Wish+/tweak_data/skilltreetweakdata.lua")
	or not SystemFS:exists("mods/Death Wish+/tweak_data/upgradestweakdata.lua")
	or not SystemFS:exists("mods/Death Wish+/tweak_data/weapontweakdata.lua")
	or not SystemFS:exists("mods/Death Wish+/managers/menu/menunodegui.lua")
	or not SystemFS:exists("mods/Death Wish+/managers/menumanager.lua")
	or not SystemFS:exists("mods/Death Wish+/group_ai_states/groupaistatebesiege.lua")
	or not SystemFS:exists("mods/Death Wish+/network/matchmaking/networkmatchmakingsteam.lua")
	then
	log("tampering with dw+ detected, shutting down")
		os.exit()
	end
end
]]