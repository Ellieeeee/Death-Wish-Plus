--thanks to TdlQ because I can't into lua
CopMovement._action_variants.phalanx_assault = clone(CopMovement._action_variants.shield)

if DW.settings.dw_enemy_toggle_value then	
	if not SystemFS:exists("mods/Death Wish+/tweak_data/charactertweakdata.lua")
	or not SystemFS:exists("mods/Death Wish+/tweak_data/groupaitweakdata.lua")
	or not SystemFS:exists("mods/Death Wish+/tweak_data/playertweakdata.lua")
	or not SystemFS:exists("mods/Death Wish+/tweak_data/skilltreetweakdata.lua")
	or not SystemFS:exists("mods/Death Wish+/tweak_data/upgradestweakdata.lua")
	or not SystemFS:exists("mods/Death Wish+/tweak_data/weapontweakdata.lua")
	or not SystemFS:exists("mods/Death Wish+/network/matchmaking/networkmatchmakingsteam.lua")
	then
	log("tampering with dw+ detected, shutting down")
	os.exit()
	end
end