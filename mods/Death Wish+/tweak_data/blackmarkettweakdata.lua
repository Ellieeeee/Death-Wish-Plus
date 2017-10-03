if DW.settings.dw_enemy_toggle_value or DW.settings.dw_baby_toggle_value and not DMCWO then
	--CAN YOU STOP THIS SHIT OVERKILL?
	local original = BlackMarketTweakData._init_melee_weapons
	function BlackMarketTweakData:_init_melee_weapons(...)
   	original(self, ...)

		self.melee_weapons.fireaxe.stats.min_damage = 7
		self.melee_weapons.fireaxe.stats.max_damage = 45
		self.melee_weapons.freedom.stats.min_damage = 7
		self.melee_weapons.freedom.stats.max_damage = 45
		self.melee_weapons.mining_pick.stats.min_damage = 7
		self.melee_weapons.mining_pick.stats.max_damage = 45
		self.melee_weapons.sandsteel.stats.min_damage = 7
		self.melee_weapons.sandsteel.stats.max_damage = 45
		self.melee_weapons.great.stats.min_damage = 7
		self.melee_weapons.great.stats.max_damage = 45
		self.melee_weapons.beardy.stats.min_damage = 7
		self.melee_weapons.beardy.stats.max_damage = 45
		self.melee_weapons.iceaxe.stats.min_damage = 7
		self.melee_weapons.iceaxe.stats.max_damage = 45
		self.melee_weapons.pitchfork.stats.min_damage = 7
		self.melee_weapons.pitchfork.stats.max_damage = 45
		self.melee_weapons.nin.stats.min_damage = 7
		self.melee_weapons.nin.stats.max_damage = 45
		self.melee_weapons.road.stats.min_damage = 7
		self.melee_weapons.road.stats.max_damage = 45
		
		
		
		
		
	end
end