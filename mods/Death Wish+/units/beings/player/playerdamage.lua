--big thanks to sc for this code, shame on overkill for being so incompetent they just made this bug intentional.

function PlayerDamage:_calc_health_damage(attack_data)
	local health_subtracted = 0
	health_subtracted = self:get_real_health()
	attack_data.damage = attack_data.damage * managers.player:upgrade_value("player", "fixed_health_damage_reduction", 1)
	self:change_health(-attack_data.damage)
	health_subtracted = health_subtracted - self:get_real_health()
	local bullet_or_explosion_or_melee = attack_data.variant and (attack_data.variant == "bullet" or attack_data.variant == "explosion") or attack_data.variant == "melee"
	if self:get_real_health() == 0 and bullet_or_explosion_or_melee then
		self:_chk_cheat_death()
	end
	self:_damage_screen()
	self:_check_bleed_out(bullet_or_explosion_or_melee)
	managers.hud:set_player_health({
		current = self:get_real_health(),
		total = self:_max_health(),
		revives = Application:digest_value(self._revives, false)
	})
	self:_send_set_health()
	self:_set_health_effect()
	managers.statistics:health_subtracted(health_subtracted)
	return health_subtracted
end