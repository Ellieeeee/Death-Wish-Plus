if DW.settings.dw_enemy_toggle_value then	
function CopDamage:_comment_death(attacker, killed_unit, special_comment)
	local victim_base = killed_unit:base()
	if special_comment then
		PlayerStandard.say_line(attacker:sound(), special_comment)
	elseif victim_base:has_tag("tank") then
		PlayerStandard.say_line(attacker:sound(), "g30x_any")
	elseif victim_base:has_tag("tank_hw") then
		PlayerStandard.say_line(attacker:sound(), "g30x_any")
	elseif victim_base:has_tag("spooc") then
		PlayerStandard.say_line(attacker:sound(), "g33x_any")
	elseif victim_base:has_tag("taser") then
		PlayerStandard.say_line(attacker:sound(), "g32x_any")
	elseif victim_base:has_tag("shield") then
		PlayerStandard.say_line(attacker:sound(), "g31x_any")
	elseif victim_base:has_tag("phalanx_assault") then
		PlayerStandard.say_line(attacker:sound(), "g31x_any")
	elseif victim_base:has_tag("sniper") then
		PlayerStandard.say_line(attacker:sound(), "g35x_any")
	elseif victim_base:has_tag("medic") then
		PlayerStandard.say_line(attacker:sound(), "g36x_any")
	end
end
function CopDamage:_AI_comment_death(unit, killed_unit)
	local victim_base = killed_unit:base()
	if victim_base:has_tag("tank") then
		unit:sound():say("g30x_any", true)
	elseif victim_base:has_tag("tank_hw") then
		unit:sound():say("g30x_any", true)
	elseif victim_base:has_tag("spooc") then
		unit:sound():say("g33x_any", true)
	elseif victim_base:has_tag("taser") then
		unit:sound():say("g32x_any", true)
	elseif victim_base:has_tag("shield") then
		unit:sound():say("g31x_any", true)
	elseif victim_base:has_tag("phalanx_assault") then
		unit:sound():say("g31x_any", true)
	elseif victim_base:has_tag("sniper") then
		unit:sound():say("g35x_any", true)
	elseif victim_base:has_tag("medic") then
		unit:sound():say("g36x_any", true)
	end
end

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