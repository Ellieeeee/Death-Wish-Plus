if DW.settings.dw_enemy_toggle_value or DW.settings.dw_baby_toggle_value then
	local old_init = WeaponTweakData.init
	function WeaponTweakData:init(tweak_data)
		old_init(self, tweak_data)
		if DW.settings.dw_enemy_toggle_value or DW.settings.dw_baby_toggle_value then
			if not DMCWO then
				--what the fuck is wrong with you overkill
				self.arbiter.stats_modifiers = {damage = 3.6}
				self.arbiter.AMMO_MAX = 10
				self.contraband_m203.AMMO_PICKUP = {0, 0.4}
				self.contraband_m203.AMMO_MAX = 2
				self.m32.AMMO_MAX = 6
				self.m32.AMMO_PICKUP = {0, 0.4}
				self.gre_m79.AMMO_MAX = 6
				self.gre_m79.AMMO_PICKUP = {0, 0.4}
				self.china.AMMO_MAX = 4
				self.china.AMMO_PICKUP = {0, 0.4}
				self.ray.AMMO_PICKUP = {0, 0}
				self.ray.AMMO_MAX = 4
				self.new_m14.AMMO_PICKUP = {0.54, 2}
				self.new_m14.AMMO_MAX = 40 --i bet i can fill up the fountain in scarface mansion with the tears this will cause
				--just keep in mind a nerf for this weapon should have been done since october 2015, so this is -very- overdue
				self.gre_m79.stats_modifiers = {damage = 2.615384615384615}
				self.m32.stats_modifiers = {damage = 2.615384615384615}
				self.china.stats_modifiers = {damage = 2.615384615384615} --CHY NA
				self.plainsrider.stats_modifiers = {damage = 2}
				self.hunter.stats_modifiers = {damage = 1}
				self.arblast.stats_modifiers = {damage = 10}
				self.frankish.stats_modifiers = {damage = 2}
				self.long.stats_modifiers = {damage = 10}
			end
		end
	end
end
	
if DW.settings.dw_enemy_toggle_value then
	function WeaponTweakData:_set_overkill_290()
		self.ak47_ass_npc.DAMAGE = 3
		self.scar_npc.DAMAGE = 3.5
		self.swat_van_turret_module.HEALTH_INIT = 40000
		self.swat_van_turret_module.SHIELD_HEALTH_INIT = 700
		self.swat_van_turret_module.DAMAGE = 3.5
		self.swat_van_turret_module.CLIP_SIZE = 800
		self.ceiling_turret_module.HEALTH_INIT = 20000
		self.ceiling_turret_module.SHIELD_HEALTH_INIT = 350
		self.ceiling_turret_module.DAMAGE = 3.5
		self.ceiling_turret_module.CLIP_SIZE = 800
	end

	--zeal team hits just a bit too hard, lets make it more reasonable because 0.15 inv frames yeah?
	--numbers are actually higher than vanilla for the most part since we dont use deathwish presets for weapons
	function WeaponTweakData:_set_sm_wish()
		self.m4_npc.DAMAGE = 4
		self.ak47_ass_npc.DAMAGE = 5.5
		self.scar_npc.DAMAGE = 5.5
		self.g36_npc.DAMAGE = 4.5
		self.r870_npc.DAMAGE = 5
		self.swat_van_turret_module.HEALTH_INIT = 40000
		self.swat_van_turret_module.SHIELD_HEALTH_INIT = 700
		self.swat_van_turret_module.DAMAGE = 3.5
		self.swat_van_turret_module.CLIP_SIZE = 800
		self.ceiling_turret_module.HEALTH_INIT = 20000
		self.ceiling_turret_module.SHIELD_HEALTH_INIT = 350
		self.ceiling_turret_module.DAMAGE = 3.5
		self.ceiling_turret_module.CLIP_SIZE = 800
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
