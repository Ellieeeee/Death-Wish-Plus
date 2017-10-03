local old_init = GroupAITweakData.init
 
function GroupAITweakData:init(tweak_data)
    old_init(self, tweak_data)

	self.phalanx.vip.health_ratio_flee = 0.202
	self.phalanx.vip.damage_reduction = {
		start = 0.1,
		increase = 0.05,
		max = 0.75,
		increase_intervall = 5
	}
	self.phalanx.spawn_chance = {
			start = .3, --default .05
			increase = .1,
			decrease = 0,
			max = 1,
			respawn_delay = 600
		}

	self.phalanx.check_spawn_intervall = 90 --default 120
	self.phalanx.chance_increase_intervall = 90
	self.smoke_grenade_lifetime = 30
	self.besiege.assault.force_balance_mul = {
			5,
			5,
			5,
			5
		}
		self.besiege.assault.force_pool_balance_mul = {
			9,
			9,
			9,
			9
		}
	self.besiege.assault.delay = {
			10,
			10,
			10
		}
	self.besiege.assault.sustain_duration_min = {
		100,
		100,
		100
	}
	self.besiege.assault.sustain_duration_max = {
		120,
		120,
		120
	}
	self.besiege.assault.sustain_duration_balance_mul = {
		1.3,
		1.3,
		1.3,
		1.3
	}
end
function GroupAITweakData:_init_unit_categories(difficulty_index)
	local access_type_walk_only = {walk = true}
	local access_type_all = {walk = true, acrobatic = true}
	if difficulty_index <= 2 then
		self.special_unit_spawn_limits = {
			tank = 1,
			taser = 1,
			spooc = 0,
			shield = 2
		}
	elseif difficulty_index == 3 then
		self.special_unit_spawn_limits = {
			tank = 1,
			taser = 2,
			spooc = 1,
			shield = 4
		}
	elseif difficulty_index == 4 then
		self.special_unit_spawn_limits = {
			tank = 3,
			taser = 4,
			spooc = 2,
			shield = 5
		}
	elseif difficulty_index == 5 then
		self.special_unit_spawn_limits = {
			tank = 3,
			taser = 4,
			spooc = 3,
			shield = 5
		}
	else
		self.special_unit_spawn_limits = {
			tank = 3,
			taser = 4,
			spooc = 4,
			shield = 2
		}
	end
	self.unit_categories = {}
	self.unit_categories.spooc = {
		units = {
			Idstring("units/payday2/characters/ene_spook_1/ene_spook_1")
		},
		access = access_type_all,
		special_type = "spooc"
	}
	self.unit_categories.CS_cop_C45_R870 = {
		units = {
			Idstring("units/payday2/characters/ene_cop_1/ene_cop_1"),
			Idstring("units/payday2/characters/ene_cop_3/ene_cop_3"),
			Idstring("units/payday2/characters/ene_cop_4/ene_cop_4")
		},
		access = access_type_walk_only
	}
	self.unit_categories.CS_cop_stealth_MP5 = {
		units = {
			Idstring("units/payday2/characters/ene_cop_2/ene_cop_2")
		},
		access = access_type_walk_only
	}
	self.unit_categories.CS_swat_MP5 = {
		units = {
			Idstring("units/payday2/characters/ene_swat_1/ene_swat_1")
		},
		access = access_type_all
	}
	self.unit_categories.CS_swat_R870 = {
		units = {
			Idstring("units/payday2/characters/ene_swat_2/ene_swat_2")
		},
		access = access_type_all
	}
	self.unit_categories.CS_heavy_M4 = {
		units = {
			Idstring("units/payday2/characters/ene_swat_heavy_1/ene_swat_heavy_1")
		},
		access = access_type_all
	}
	self.unit_categories.CS_heavy_M4_w = {
		units = {
			Idstring("units/payday2/characters/ene_swat_heavy_1/ene_swat_heavy_1")
		},
		access = access_type_walk_only
	}
	self.unit_categories.CS_tazer = {
		units = {
			Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1")
		},
		access = access_type_all,
		special_type = "taser"
	}
	self.unit_categories.CS_shield = {
		units = {
			Idstring("units/payday2/characters/ene_shield_2/ene_shield_2")
		},
		access = access_type_walk_only,
		special_type = "shield"
	}
	self.unit_categories.FBI_suit_C45_M4 = {
		units = {
			Idstring("units/payday2/characters/ene_fbi_1/ene_fbi_1"),
			Idstring("units/payday2/characters/ene_fbi_2/ene_fbi_2")
		},
		access = access_type_all
	}
	self.unit_categories.FBI_suit_M4_MP5 = {
		units = {
			Idstring("units/payday2/characters/ene_fbi_2/ene_fbi_2"),
			Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
		},
		access = access_type_all
	}
	self.unit_categories.FBI_suit_stealth_MP5 = {
		units = {
			Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
		},
		access = access_type_all
	}
	if difficulty_index < 6 then
		self.unit_categories.FBI_swat_M4 = {
			units = {
				Idstring("units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1")
			},
			access = access_type_all
		}
	else
		self.unit_categories.FBI_swat_M4 = {
			units = {
				Idstring("units/payday2/characters/ene_city_swat_1/ene_city_swat_1")
			},
			access = access_type_all
		}
	end
	if difficulty_index < 6 then
		self.unit_categories.FBI_swat_R870 = {
			units = {
				Idstring("units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2")
			},
			access = access_type_all
		}
	else
		self.unit_categories.FBI_swat_R870 = {
			units = {
				Idstring("units/payday2/characters/ene_city_swat_3/ene_city_swat_3")
			},
			access = access_type_all
		}
	end
	if difficulty_index < 6 then
		self.unit_categories.FBI_heavy_G36 = {
			units = {
				Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
			},
			access = access_type_all
		}
	else
		self.unit_categories.FBI_heavy_G36 = {
			units = {
				Idstring("units/payday2/characters/ene_city_swat_1/ene_city_swat_1")
			},
			access = access_type_all
		}
	end
	if difficulty_index < 6 then
		self.unit_categories.FBI_heavy_G36_w = {
			units = {
				Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
			},
			access = access_type_walk_only
		}
	else
		self.unit_categories.FBI_heavy_G36_w = {
			units = {
				Idstring("units/payday2/characters/ene_city_swat_1/ene_city_swat_1")
			},
			access = access_type_walk_only
		}
	end
	if difficulty_index < 6 then
		self.unit_categories.FBI_shield = {
			units = {
				Idstring("units/payday2/characters/ene_shield_1/ene_shield_1")
			},
			access = access_type_walk_only,
			special_type = "shield"
		}
	else
		self.unit_categories.FBI_shield = {
			units = {
				Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
			},
			access = access_type_walk_only,
			special_type = "shield"
		}
	end
	if difficulty_index < 6 then
		self.unit_categories.FBI_tank = {
			units = {
				Idstring("units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1"),
				Idstring("units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2")
			},
			access = access_type_walk_only,
			special_type = "tank"
		}
	else
		self.unit_categories.FBI_tank = {
			units = {
				Idstring("units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2"),
				Idstring("units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3")
			},
			access = access_type_walk_only,
			special_type = "tank"
		}
	end
	self.unit_categories.Phalanx_minion = {
		units = {
			Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
		},
		access = access_type_walk_only,
		special_type = "shield"
	}
	self.unit_categories.Phalanx_vip = {
		units = {
			Idstring("units/pd2_dlc_vip/characters/ene_vip_1/ene_vip_1")
		},
		access = access_type_walk_only,
		special_type = "shield"
	}
end