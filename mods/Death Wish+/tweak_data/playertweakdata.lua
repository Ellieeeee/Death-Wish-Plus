if DW.settings.dw_enemy_toggle_value and DW.settings.dw_baby_toggle_value then
log("[Death Wish+] host only changes and main changes are both on!!! disabling mod.")
return
end
if DW.settings.dw_enemy_toggle_value then
	function PlayerTweakData:_set_overkill_290()
		self.damage.DOWNED_TIME_DEC = 20
		self.damage.DOWNED_TIME_MIN = 1
		self.suspicion.max_value = 12
		self.suspicion.range_mul = 1.4
		self.suspicion.buildup_mul = 1.4
		self.damage.BLEED_OT_TIME = 10
		self.damage.LIVES_INIT = 4
		if DW.settings.dw_frames_toggle_value == true then
		self.damage.MIN_DAMAGE_INTERVAL = 0
		else
		self.damage.MIN_DAMAGE_INTERVAL = 0.2
		end
		self.damage.REVIVE_HEALTH_STEPS = {0.1}
	end
	--I SEE EM NOW	
	function PlayerTweakData:_set_sm_wish()
		self.damage.DOWNED_TIME_DEC = 20
		self.damage.DOWNED_TIME_MIN = 1
		self.suspicion.max_value = 12
		self.suspicion.range_mul = 1.5
		self.suspicion.buildup_mul = 1.5
		self.damage.BLEED_OT_TIME = 10
		self.damage.LIVES_INIT = 2
		if DW.settings.dw_frames_toggle_value == true then
		self.damage.MIN_DAMAGE_INTERVAL = 0
		else
		self.damage.MIN_DAMAGE_INTERVAL = 0.15
		end
		self.damage.REVIVE_HEALTH_STEPS = {0.1}
	end
end