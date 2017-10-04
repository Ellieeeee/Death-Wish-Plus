if DW.settings.dw_enemy_toggle_value and DW.settings.dw_baby_toggle_value then
log("[Death Wish+] host only changes and main changes are both on!!! disabling mod.")
return
end
if DW.settings.dw_enemy_toggle_value or DW.settings.dw_baby_toggle_value then
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