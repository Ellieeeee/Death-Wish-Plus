function CopDamage:_comment_death(unit, type, special_comment)
	if special_comment then
		PlayerStandard.say_line(unit:sound(), special_comment)
	elseif type == "tank" then
		PlayerStandard.say_line(unit:sound(), "g30x_any")
	elseif type == "tank_hw" then
		PlayerStandard.say_line(unit:sound(), "g30x_any")
	elseif type == "spooc" then
		PlayerStandard.say_line(unit:sound(), "g33x_any")
	elseif type == "taser" then
		PlayerStandard.say_line(unit:sound(), "g32x_any")
	elseif type == "shield" then
		PlayerStandard.say_line(unit:sound(), "g31x_any")
	elseif type == "sniper" then
		PlayerStandard.say_line(unit:sound(), "g35x_any")
	elseif type == "phalanx_assault" then
		PlayerStandard.say_line(unit:sound(), "g31x_any")
	end
end
function CopDamage:_AI_comment_death(unit, type)
	if type == "tank" then
		unit:sound():say("g30x_any", true)
	elseif type == "tank_hw" then
		unit:sound():say("g30x_any", true)
	elseif type == "spooc" then
		unit:sound():say("g33x_any", true)
	elseif type == "taser" then
		unit:sound():say("g32x_any", true)
	elseif type == "shield" then
		unit:sound():say("g31x_any", true)
	elseif type == "sniper" then
		unit:sound():say("g35x_any", true)
	elseif type == "phalanx_assault" then
		unit:sound():say("g31x_any", true)
	end
end