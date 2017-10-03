if DW.settings.dw_enemy_toggle_value and not (SC and SC._data and SC._data.sc_ai_toggle) then
	local old_init = WeaponTweakData.init
	function WeaponTweakData:init(tweak_data)
		old_init(self, tweak_data)
		self.scar_npc.DAMAGE = 3.5
	end
end