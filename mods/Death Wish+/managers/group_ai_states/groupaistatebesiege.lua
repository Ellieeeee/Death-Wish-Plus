if DW.settings.dw_enemy_toggle_value then	
	function GroupAIStateBesiege:set_wave_mode(flag)
		local old_wave_mode = self._wave_mode
		self._wave_mode = flag
		self._hunt_mode = DW.settings.dw_infinite_toggle_value 
		if flag == "hunt" then
			self._hunt_mode = true
			self._wave_mode = "besiege"
			managers.hud:start_assault()
			self:_set_rescue_state(false)
			self:set_assault_mode(true)
			managers.trade:set_trade_countdown(false)
			self:_end_regroup_task()
			if self._task_data.assault.active then
				self._task_data.assault.phase = "sustain"
				self._task_data.use_smoke = true
				self._task_data.use_smoke_timer = 0
			else
				self._task_data.assault.next_dispatch_t = self._t
			end
		elseif flag == "besiege" then
			if self._task_data.regroup.active then
				self._task_data.assault.next_dispatch_t = self._task_data.regroup.end_t
			elseif not self._task_data.assault.active then
				self._task_data.assault.next_dispatch_t = self._t
			end
		elseif flag == "quiet" then
			self._hunt_mode = nil
		else
			self._wave_mode = old_wave_mode
			debug_pause("[GroupAIStateBesiege:set_wave_mode] flag", flag, " does not apply to the current Group AI state.")
		end
	end
end
function GroupAIStateBesiege:force_end_assault_phase()
	local task_data = self._task_data.assault
	if task_data.active and DW.settings.dw_infinite_toggle_value == false then
		print("GroupAIStateBesiege:force_end_assault_phase()")
		task_data.phase = "fade"
		task_data.force_end = true
	end
	self:set_assault_endless(false)
end