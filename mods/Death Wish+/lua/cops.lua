if DW.settings.dw_enemy_toggle_value then
	function CharacterTweakData:_presets(tweak_data)
		local presets = {}
		presets.hurt_severities = {}
		presets.hurt_severities.no_hurts = {
			bullet = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			explosion = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			melee = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			fire = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			poison = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			tase = true
		}
		presets.hurt_severities.no_hurts_no_tase = deep_clone(presets.hurt_severities.no_hurts)
		presets.hurt_severities.no_hurts_no_tase.tase = false
		presets.hurt_severities.only_light_hurt = {
			bullet = {
				health_reference = 1,
				zones = {
					{light = 1}
				}
			},
			explosion = {
				health_reference = 1,
				zones = {
					{explode = 1}
				}
			},
			melee = {
				health_reference = 1,
				zones = {
					{light = 1}
				}
			},
			fire = {
				health_reference = 1,
				zones = {
					{light = 1}
				}
			},
			poison = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			tase = true
		}
		presets.hurt_severities.only_light_hurt_and_fire = {
			bullet = {
				health_reference = 1,
				zones = {
					{light = 1}
				}
			},
			explosion = {
				health_reference = 1,
				zones = {
					{explode = 1}
				}
			},
			melee = {
				health_reference = 1,
				zones = {
					{light = 1}
				}
			},
			fire = {
				health_reference = 1,
				zones = {
					{fire = 1}
				}
			},
			poison = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			tase = true
		}
		presets.hurt_severities.light_hurt_fire_poison = deep_clone(presets.hurt_severities.only_light_hurt_and_fire)
		presets.hurt_severities.light_hurt_fire_poison.poison = {
			health_reference = 1,
			zones = {
				{poison = 1}
			}
		}
		presets.hurt_severities.only_explosion_hurts = {
			bullet = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			explosion = {
				health_reference = 1,
				zones = {
					{explode = 1}
				}
			},
			melee = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			fire = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			poison = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			tase = true
		}
		presets.hurt_severities.only_fire_and_poison_hurts = {
			bullet = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			explosion = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			melee = {
				health_reference = 1,
				zones = {
					{none = 1}
				}
			},
			fire = {
				health_reference = 1,
				zones = {
					{fire = 1}
				}
			},
			poison = {
				health_reference = 1,
				zones = {
					{poison = 1}
				}
			},
			tase = true
		}
		presets.hurt_severities.base = {
			bullet = {
				health_reference = "current",
				zones = {
					{
						health_limit = 0.3,
						none = 0.2,
						light = 0.7,
						moderate = 0.05,
						heavy = 0.05
					},
					{
						health_limit = 0.6,
						light = 0.4,
						moderate = 0.4,
						heavy = 0.2
					},
					{
						health_limit = 0.9,
						light = 0.2,
						moderate = 0.2,
						heavy = 0.6
					},
					{
						light = 0,
						moderate = 0,
						heavy = 1
					}
				}
			},
			explosion = {
				health_reference = "current",
				zones = {
					{
						health_limit = 0.2,
						none = 0.6,
						heavy = 0.4
					},
					{
						health_limit = 0.5,
						heavy = 0.6,
						explode = 0.4
					},
					{heavy = 0.2, explode = 0.8}
				}
			},
			melee = {
				health_reference = "current",
				zones = {
					{
						health_limit = 0.3,
						none = 0.3,
						light = 0.7,
						moderate = 0,
						heavy = 0
					},
					{
						health_limit = 0.8,
						light = 1,
						moderate = 0,
						heavy = 0
					},
					{
						health_limit = 0.9,
						light = 0.6,
						moderate = 0.2,
						heavy = 0.2
					},
					{
						light = 0,
						moderate = 0,
						heavy = 9
					}
				}
			},
			fire = {
				health_reference = "current",
				zones = {
					{fire = 1}
				}
			},
			poison = {
				health_reference = "current",
				zones = {
					{none = 0, poison = 1}
				}
			}
		}
		presets.hurt_severities.base_no_poison = deep_clone(presets.hurt_severities.base)
		presets.hurt_severities.base_no_poison.poison = {
			health_reference = 1,
			zones = {
				{none = 1}
			}
		}
		presets.base = {}
		presets.base.HEALTH_INIT = 2.5
		presets.base.headshot_dmg_mul = 2
		presets.base.SPEED_WALK = {
			ntl = 120,
			hos = 180,
			cbt = 160,
			pnc = 160
		}
		presets.base.SPEED_RUN = 370
		presets.base.crouch_move = true
		presets.base.shooting_death = true
		presets.base.suspicious = true
		presets.base.surrender_break_time = {20, 30}
		presets.base.submission_max = {45, 60}
		presets.base.submission_intimidate = 15
		presets.base.speech_prefix = "po"
		presets.base.speech_prefix_count = 1
		presets.base.rescue_hostages = true
		presets.base.use_radio = "dispatch_generic_message"
		presets.base.dodge = nil
		presets.base.challenges = {type = "law"}
		presets.base.calls_in = true
		presets.base.experience = {}
		presets.base.experience.cable_tie = "tie_swat"
		presets.base.damage = {}
		presets.base.damage.hurt_severity = presets.hurt_severities.base
		presets.base.damage.death_severity = 0.5
		presets.base.damage.explosion_damage_mul = 1
		presets.base.damage.tased_response = {
			light = {tased_time = 5, down_time = 5},
			heavy = {tased_time = 5, down_time = 10}
		}
		presets.gang_member_damage = {}
		presets.gang_member_damage.HEALTH_INIT = 75
		presets.gang_member_damage.REGENERATE_TIME = 2
		presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.2
		presets.gang_member_damage.DOWNED_TIME = tweak_data.player.damage.DOWNED_TIME
		presets.gang_member_damage.TASED_TIME = tweak_data.player.damage.TASED_TIME
		presets.gang_member_damage.BLEED_OUT_HEALTH_INIT = tweak_data.player.damage.BLEED_OUT_HEALTH_INIT
		presets.gang_member_damage.ARRESTED_TIME = tweak_data.player.damage.ARRESTED_TIME
		presets.gang_member_damage.INCAPACITATED_TIME = tweak_data.player.damage.INCAPACITATED_TIME
		presets.gang_member_damage.hurt_severity = deep_clone(presets.hurt_severities.base)
		presets.gang_member_damage.hurt_severity.bullet = {
			health_reference = "current",
			zones = {
				{
					health_limit = 0.4,
					none = 0.3,
					light = 0.6,
					moderate = 0.1
				},
				{
					health_limit = 0.7,
					none = 0.1,
					light = 0.7,
					moderate = 0.2
				},
				{
					none = 0.1,
					light = 0.5,
					moderate = 0.3,
					heavy = 0.1
				}
			}
		}
		presets.gang_member_damage.MIN_DAMAGE_INTERVAL = 0
		presets.gang_member_damage.respawn_time_penalty = 0
		presets.gang_member_damage.base_respawn_time_penalty = 5
		presets.weapon = {}
		presets.weapon.normal = {
			beretta92 = {},
			c45 = {},
			raging_bull = {},
			m4 = {},
			ak47 = {},
			r870 = {},
			mossberg = {},
			mp5 = {},
			mac11 = {},
			raging_bull = {}
		}
		presets.weapon.normal.beretta92.aim_delay = {0.1, 0.1}
		presets.weapon.normal.beretta92.focus_delay = 10
		presets.weapon.normal.beretta92.focus_dis = 200
		presets.weapon.normal.beretta92.spread = 25
		presets.weapon.normal.beretta92.miss_dis = 30
		presets.weapon.normal.beretta92.RELOAD_SPEED = 0.9
		presets.weapon.normal.beretta92.melee_speed = 1
		presets.weapon.normal.beretta92.melee_dmg = 8
		presets.weapon.normal.beretta92.melee_retry_delay = {1, 2}
		presets.weapon.normal.beretta92.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.normal.beretta92.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 3,
				recoil = {0.1, 0.25},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 500,
				acc = {0.4, 0.85},
				dmg_mul = 1.5,
				recoil = {0.1, 0.25},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {0.375, 0.55},
				dmg_mul = 1,
				recoil = {0.15, 0.3},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {0.25, 0.45},
				dmg_mul = 1,
				recoil = {0.3, 0.7},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {0.01, 0.35},
				dmg_mul = 1,
				recoil = {0.4, 1},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.normal.c45.aim_delay = {0.1, 0.1}
		presets.weapon.normal.c45.focus_delay = 10
		presets.weapon.normal.c45.focus_dis = 200
		presets.weapon.normal.c45.spread = 20
		presets.weapon.normal.c45.miss_dis = 50
		presets.weapon.normal.c45.RELOAD_SPEED = 0.9
		presets.weapon.normal.c45.melee_speed = 1
		presets.weapon.normal.c45.melee_dmg = 8
		presets.weapon.normal.c45.melee_retry_delay = {1, 2}
		presets.weapon.normal.c45.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.normal.c45.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 3,
				recoil = {0.15, 0.25},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 500,
				acc = {0.4, 0.85},
				dmg_mul = 1.5,
				recoil = {0.15, 0.25},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {0.375, 0.55},
				dmg_mul = 1,
				recoil = {0.15, 0.3},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {0.25, 0.45},
				dmg_mul = 1,
				recoil = {0.3, 0.7},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {0.01, 0.35},
				dmg_mul = 1,
				recoil = {0.4, 1},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.normal.m4.aim_delay = {0.1, 0.1}
		presets.weapon.normal.m4.focus_delay = 10
		presets.weapon.normal.m4.focus_dis = 200
		presets.weapon.normal.m4.spread = 20
		presets.weapon.normal.m4.miss_dis = 40
		presets.weapon.normal.m4.RELOAD_SPEED = 0.9
		presets.weapon.normal.m4.melee_speed = 1
		presets.weapon.normal.m4.melee_dmg = 8
		presets.weapon.normal.m4.melee_retry_delay = {1, 2}
		presets.weapon.normal.m4.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.normal.m4.autofire_rounds = {6, 11}
		presets.weapon.normal.m4.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 3,
				recoil = {0.45, 0.8},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {0.4, 0.9},
				dmg_mul = 2,
				recoil = {0.45, 0.8},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 1000,
				acc = {0.2, 0.8},
				dmg_mul = 1,
				recoil = {0.35, 0.75},
				mode = {
					1,
					2,
					2,
					0
				}
			},
			{
				r = 2000,
				acc = {0.2, 0.5},
				dmg_mul = 1,
				recoil = {0.4, 1.2},
				mode = {
					3,
					2,
					2,
					0
				}
			},
			{
				r = 3000,
				acc = {0.01, 0.35},
				dmg_mul = 1,
				recoil = {1.5, 3},
				mode = {
					3,
					1,
					1,
					0
				}
			}
		}
		presets.weapon.normal.r870.aim_delay = {0.1, 0.1}
		presets.weapon.normal.r870.focus_delay = 10
		presets.weapon.normal.r870.focus_dis = 200
		presets.weapon.normal.r870.spread = 15
		presets.weapon.normal.r870.miss_dis = 20
		presets.weapon.normal.r870.RELOAD_SPEED = 0.9
		presets.weapon.normal.r870.melee_speed = 1
		presets.weapon.normal.r870.melee_dmg = 8
		presets.weapon.normal.r870.melee_retry_delay = {1, 2}
		presets.weapon.normal.r870.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.normal.r870.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 3,
				recoil = {1.5, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 500,
				acc = {0.4, 0.9},
				dmg_mul = 2,
				recoil = {1.5, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {0.2, 0.75},
				dmg_mul = 0.5,
				recoil = {1.5, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {0.01, 0.25},
				dmg_mul = 0.5,
				recoil = {1.5, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {0.05, 0.35},
				dmg_mul = 0.2,
				recoil = {1.5, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.normal.mp5.aim_delay = {0.1, 0.1}
		presets.weapon.normal.mp5.focus_delay = 10
		presets.weapon.normal.mp5.focus_dis = 200
		presets.weapon.normal.mp5.spread = 15
		presets.weapon.normal.mp5.miss_dis = 20
		presets.weapon.normal.mp5.RELOAD_SPEED = 0.9
		presets.weapon.normal.mp5.melee_speed = 1
		presets.weapon.normal.mp5.melee_dmg = 8
		presets.weapon.normal.mp5.melee_retry_delay = {1, 2}
		presets.weapon.normal.mp5.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.normal.mp5.autofire_rounds = {6, 11}
		presets.weapon.normal.mp5.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 3,
				recoil = {0.1, 0.3},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {0.4, 0.9},
				dmg_mul = 2,
				recoil = {0.1, 0.3},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 1000,
				acc = {0.2, 0.8},
				dmg_mul = 1,
				recoil = {0.3, 0.4},
				mode = {
					0,
					3,
					3,
					0
				}
			},
			{
				r = 2000,
				acc = {0.1, 0.45},
				dmg_mul = 1,
				recoil = {0.3, 0.4},
				mode = {
					0,
					3,
					3,
					0
				}
			},
			{
				r = 3000,
				acc = {0.1, 0.35},
				dmg_mul = 1,
				recoil = {0.5, 0.6},
				mode = {
					1,
					3,
					2,
					0
				}
			}
		}
		presets.weapon.normal.mac11.aim_delay = {0.1, 0.1}
		presets.weapon.normal.mac11.focus_delay = 10
		presets.weapon.normal.mac11.focus_dis = 200
		presets.weapon.normal.mac11.spread = 20
		presets.weapon.normal.mac11.miss_dis = 25
		presets.weapon.normal.mac11.RELOAD_SPEED = 0.9
		presets.weapon.normal.mac11.melee_speed = 1
		presets.weapon.normal.mac11.melee_dmg = 8
		presets.weapon.normal.mac11.melee_retry_delay = {1, 2}
		presets.weapon.normal.mac11.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.normal.mac11.autofire_rounds = {6, 11}
		presets.weapon.normal.mac11.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 3,
				recoil = {0.5, 0.65},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {0.1, 0.85},
				dmg_mul = 2,
				recoil = {0.5, 0.65},
				mode = {
					0,
					1,
					3,
					1
				}
			},
			{
				r = 1000,
				acc = {0.2, 0.5},
				dmg_mul = 1,
				recoil = {0.55, 0.85},
				mode = {
					2,
					1,
					3,
					0
				}
			},
			{
				r = 2000,
				acc = {0.05, 0.4},
				dmg_mul = 1,
				recoil = {0.65, 1},
				mode = {
					2,
					1,
					3,
					0
				}
			},
			{
				r = 3000,
				acc = {0, 0.3},
				dmg_mul = 1,
				recoil = {0.65, 1},
				mode = {
					2,
					1,
					3,
					0
				}
			}
		}
		presets.weapon.normal.raging_bull.aim_delay = {0.1, 0.1}
		presets.weapon.normal.raging_bull.focus_delay = 10
		presets.weapon.normal.raging_bull.focus_dis = 200
		presets.weapon.normal.raging_bull.spread = 20
		presets.weapon.normal.raging_bull.miss_dis = 50
		presets.weapon.normal.raging_bull.RELOAD_SPEED = 0.9
		presets.weapon.normal.raging_bull.melee_speed = 1
		presets.weapon.normal.raging_bull.melee_dmg = 8
		presets.weapon.normal.raging_bull.melee_retry_delay = {1, 2}
		presets.weapon.normal.raging_bull.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.normal.raging_bull.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 3,
				recoil = {0.8, 1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 500,
				acc = {0.5, 0.85},
				dmg_mul = 1.5,
				recoil = {0.8, 1.1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {0.375, 0.55},
				dmg_mul = 1,
				recoil = {0.8, 1.1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {0.25, 0.45},
				dmg_mul = 0.75,
				recoil = {1, 1.3},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {0.01, 0.35},
				dmg_mul = 0.5,
				recoil = {1, 1.5},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.normal.ak47 = presets.weapon.normal.m4
		presets.weapon.normal.mossberg = presets.weapon.normal.r870
		presets.weapon.good = {
			beretta92 = {},
			c45 = {},
			raging_bull = {},
			m4 = {},
			ak47 = {},
			r870 = {},
			mossberg = {},
			mp5 = {},
			mac11 = {}
		}
		presets.weapon.good.beretta92.aim_delay = {0.1, 0.1}
		presets.weapon.good.beretta92.focus_delay = 2
		presets.weapon.good.beretta92.focus_dis = 200
		presets.weapon.good.beretta92.spread = 25
		presets.weapon.good.beretta92.miss_dis = 30
		presets.weapon.good.beretta92.RELOAD_SPEED = 1
		presets.weapon.good.beretta92.melee_speed = presets.weapon.normal.beretta92.melee_speed
		presets.weapon.good.beretta92.melee_dmg = presets.weapon.normal.beretta92.melee_dmg
		presets.weapon.good.beretta92.melee_retry_delay = presets.weapon.normal.beretta92.melee_retry_delay
		presets.weapon.good.beretta92.range = presets.weapon.normal.beretta92.range
		presets.weapon.good.beretta92.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 3,
				recoil = {0.1, 0.25},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {0.5, 0.9},
				dmg_mul = 2,
				recoil = {0.1, 0.25},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {0.375, 0.55},
				dmg_mul = 1,
				recoil = {0.15, 0.3},
				mode = {
					1,
					0,
					1,
					0
				}
			},
			{
				r = 2000,
				acc = {0.15, 0.45},
				dmg_mul = 1,
				recoil = {0.3, 0.7},
				mode = {
					1,
					0,
					1,
					0
				}
			},
			{
				r = 3000,
				acc = {0.1, 0.35},
				dmg_mul = 1,
				recoil = {0.4, 1},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.good.c45.aim_delay = {0.1, 0.1}
		presets.weapon.good.c45.focus_delay = 2
		presets.weapon.good.c45.focus_dis = 200
		presets.weapon.good.c45.spread = 20
		presets.weapon.good.c45.miss_dis = 50
		presets.weapon.good.c45.RELOAD_SPEED = 1
		presets.weapon.good.c45.melee_speed = presets.weapon.normal.c45.melee_speed
		presets.weapon.good.c45.melee_dmg = presets.weapon.normal.c45.melee_dmg
		presets.weapon.good.c45.melee_retry_delay = presets.weapon.normal.c45.melee_retry_delay
		presets.weapon.good.c45.range = presets.weapon.normal.c45.range
		presets.weapon.good.c45.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 4,
				recoil = {0.15, 0.25},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 500,
				acc = {0.5, 0.85},
				dmg_mul = 2,
				recoil = {0.15, 0.25},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {0.375, 0.55},
				dmg_mul = 1.5,
				recoil = {0.15, 0.4},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {0.25, 0.45},
				dmg_mul = 1.25,
				recoil = {0.4, 0.9},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {0.01, 0.35},
				dmg_mul = 1,
				recoil = {0.4, 1},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.good.m4.aim_delay = {0.1, 0.1}
		presets.weapon.good.m4.focus_delay = 3
		presets.weapon.good.m4.focus_dis = 200
		presets.weapon.good.m4.spread = 20
		presets.weapon.good.m4.miss_dis = 40
		presets.weapon.good.m4.RELOAD_SPEED = 1
		presets.weapon.good.m4.melee_speed = 1
		presets.weapon.good.m4.melee_dmg = 15
		presets.weapon.good.m4.melee_retry_delay = presets.weapon.normal.m4.melee_retry_delay
		presets.weapon.good.m4.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.good.m4.autofire_rounds = presets.weapon.normal.m4.autofire_rounds
		presets.weapon.good.m4.FALLOFF = {
			{
				r = 100,
				acc = {1, 1},
				dmg_mul = 3,
				recoil = {0.4, 0.8},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {1, 1},
				dmg_mul = 2.5,
				recoil = {0.45, 0.8},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 2,
				recoil = {0.35, 0.75},
				mode = {
					1,
					2,
					2,
					0
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 1.75,
				recoil = {0.4, 1.2},
				mode = {
					3,
					2,
					2,
					0
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 1,
				recoil = {1.5, 3},
				mode = {
					3,
					1,
					1,
					0
				}
			}
		}
		presets.weapon.good.r870.aim_delay = {0.1, 0.1}
		presets.weapon.good.r870.focus_delay = 5
		presets.weapon.good.r870.focus_dis = 200
		presets.weapon.good.r870.spread = 15
		presets.weapon.good.r870.miss_dis = 20
		presets.weapon.good.r870.RELOAD_SPEED = 1
		presets.weapon.good.r870.melee_speed = 1
		presets.weapon.good.r870.melee_dmg = 15
		presets.weapon.good.r870.melee_retry_delay = presets.weapon.normal.r870.melee_retry_delay
		presets.weapon.good.r870.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.good.r870.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 3,
				recoil = {1, 1.5},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 500,
				acc = {0.4, 0.95},
				dmg_mul = 2,
				recoil = {1.5, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {0.2, 0.75},
				dmg_mul = 1.5,
				recoil = {1.5, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {0.01, 0.25},
				dmg_mul = 1,
				recoil = {1.5, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {0.05, 0.35},
				dmg_mul = 0.4,
				recoil = {1.5, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.good.mp5.aim_delay = {0, 0.2}
		presets.weapon.good.mp5.focus_delay = 3
		presets.weapon.good.mp5.focus_dis = 200
		presets.weapon.good.mp5.spread = 15
		presets.weapon.good.mp5.miss_dis = 10
		presets.weapon.good.mp5.RELOAD_SPEED = 1
		presets.weapon.good.mp5.melee_speed = presets.weapon.normal.mp5.melee_speed
		presets.weapon.good.mp5.melee_dmg = 15
		presets.weapon.good.mp5.melee_retry_delay = presets.weapon.normal.mp5.melee_retry_delay
		presets.weapon.good.mp5.range = presets.weapon.normal.mp5.range
		presets.weapon.good.mp5.autofire_rounds = presets.weapon.normal.mp5.autofire_rounds
		presets.weapon.good.mp5.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 3,
				recoil = {0.1, 0.25},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {0.4, 0.95},
				dmg_mul = 2,
				recoil = {0.1, 0.3},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 1000,
				acc = {0.2, 0.75},
				dmg_mul = 1.75,
				recoil = {0.35, 0.5},
				mode = {
					0,
					3,
					3,
					0
				}
			},
			{
				r = 2000,
				acc = {0.1, 0.45},
				dmg_mul = 1.25,
				recoil = {0.35, 0.6},
				mode = {
					0,
					3,
					3,
					0
				}
			},
			{
				r = 3000,
				acc = {0.1, 0.35},
				dmg_mul = 1,
				recoil = {0.5, 0.6},
				mode = {
					1,
					3,
					2,
					0
				}
			}
		}
		presets.weapon.good.mac11.aim_delay = {0.1, 0.1}
		presets.weapon.good.mac11.focus_delay = 3
		presets.weapon.good.mac11.focus_dis = 200
		presets.weapon.good.mac11.spread = 15
		presets.weapon.good.mac11.miss_dis = 10
		presets.weapon.good.mac11.RELOAD_SPEED = 1
		presets.weapon.good.mac11.melee_speed = presets.weapon.normal.mac11.melee_speed
		presets.weapon.good.mac11.melee_dmg = 15
		presets.weapon.good.mac11.melee_retry_delay = presets.weapon.normal.mac11.melee_retry_delay
		presets.weapon.good.mac11.range = presets.weapon.normal.mac11.range
		presets.weapon.good.mac11.autofire_rounds = presets.weapon.normal.mac11.autofire_rounds
		presets.weapon.good.mac11.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 3,
				recoil = {0.3, 0.35},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {0.1, 0.7},
				dmg_mul = 2,
				recoil = {0.5, 0.65},
				mode = {
					0,
					1,
					3,
					1
				}
			},
			{
				r = 1000,
				acc = {0.2, 0.55},
				dmg_mul = 1.25,
				recoil = {0.55, 0.85},
				mode = {
					2,
					1,
					3,
					0
				}
			},
			{
				r = 2000,
				acc = {0.05, 0.4},
				dmg_mul = 1,
				recoil = {0.65, 1},
				mode = {
					2,
					1,
					3,
					0
				}
			},
			{
				r = 3000,
				acc = {0, 0.2},
				dmg_mul = 1,
				recoil = {0.65, 1.2},
				mode = {
					4,
					1,
					0,
					0
				}
			}
		}
		presets.weapon.good.raging_bull.aim_delay = {0.1, 0.1}
		presets.weapon.good.raging_bull.focus_delay = 10
		presets.weapon.good.raging_bull.focus_dis = 200
		presets.weapon.good.raging_bull.spread = 20
		presets.weapon.good.raging_bull.miss_dis = 50
		presets.weapon.good.raging_bull.RELOAD_SPEED = 0.9
		presets.weapon.good.raging_bull.melee_speed = 1
		presets.weapon.good.raging_bull.melee_dmg = 8
		presets.weapon.good.raging_bull.melee_retry_delay = {1, 2}
		presets.weapon.good.raging_bull.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.good.raging_bull.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 4,
				recoil = {0.8, 1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 500,
				acc = {0.5, 0.85},
				dmg_mul = 2,
				recoil = {0.8, 1.1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {0.375, 0.55},
				dmg_mul = 1.5,
				recoil = {0.8, 1.1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {0.25, 0.45},
				dmg_mul = 1,
				recoil = {1, 1.3},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {0.01, 0.35},
				dmg_mul = 0.5,
				recoil = {1, 1.5},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.good.ak47 = presets.weapon.good.m4
		presets.weapon.good.mossberg = presets.weapon.good.r870
		presets.weapon.expert = {
			beretta92 = {},
			c45 = {},
			raging_bull = {},
			m4 = {},
			ak47 = {},
			r870 = {},
			mossberg = {},
			mp5 = {},
			mac11 = {}
		}
		presets.weapon.expert.beretta92.aim_delay = {0.1, 0.1}
		presets.weapon.expert.beretta92.focus_delay = 1
		presets.weapon.expert.beretta92.focus_dis = 300
		presets.weapon.expert.beretta92.spread = 25
		presets.weapon.expert.beretta92.miss_dis = 30
		presets.weapon.expert.beretta92.RELOAD_SPEED = 1.1
		presets.weapon.expert.beretta92.melee_speed = presets.weapon.normal.beretta92.melee_speed
		presets.weapon.expert.beretta92.melee_dmg = presets.weapon.normal.beretta92.melee_dmg
		presets.weapon.expert.beretta92.melee_retry_delay = presets.weapon.normal.beretta92.melee_retry_delay
		presets.weapon.expert.beretta92.range = presets.weapon.normal.beretta92.range
		presets.weapon.expert.beretta92.FALLOFF = {
			{
				r = 0,
				acc = {0.5, 0.95},
				dmg_mul = 4,
				recoil = {0.1, 0.25},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {0.375, 0.55},
				dmg_mul = 2,
				recoil = {0.15, 0.3},
				mode = {
					1,
					0,
					1,
					0
				}
			},
			{
				r = 2000,
				acc = {0.05, 0.5},
				dmg_mul = 2,
				recoil = {0.3, 0.7},
				mode = {
					1,
					0,
					1,
					0
				}
			},
			{
				r = 3000,
				acc = {0, 0.3},
				dmg_mul = 2,
				recoil = {0.4, 1},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.expert.c45.aim_delay = {0.1, 0.1}
		presets.weapon.expert.c45.focus_delay = 1
		presets.weapon.expert.c45.focus_dis = 300
		presets.weapon.expert.c45.spread = 20
		presets.weapon.expert.c45.miss_dis = 50
		presets.weapon.expert.c45.RELOAD_SPEED = 1.2
		presets.weapon.expert.c45.melee_speed = presets.weapon.normal.c45.melee_speed
		presets.weapon.expert.c45.melee_dmg = 20
		presets.weapon.expert.c45.melee_retry_delay = presets.weapon.normal.c45.melee_retry_delay
		presets.weapon.expert.c45.range = presets.weapon.normal.c45.range
		presets.weapon.expert.c45.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 5,
				recoil = {0.15, 0.25},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {0.5, 0.9},
				dmg_mul = 4,
				recoil = {0.15, 0.3},
				mode = {
					1,
					0,
					1,
					0
				}
			},
			{
				r = 1000,
				acc = {0.4, 0.65},
				dmg_mul = 3.5,
				recoil = {0.15, 0.3},
				mode = {
					1,
					0,
					1,
					0
				}
			},
			{
				r = 2000,
				acc = {0.3, 0.5},
				dmg_mul = 3,
				recoil = {0.4, 0.9},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {0.1, 0.25},
				dmg_mul = 2.5,
				recoil = {0.4, 1.4},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.expert.m4.aim_delay = {0.1, 0.1}
		presets.weapon.expert.m4.focus_delay = 2
		presets.weapon.expert.m4.focus_dis = 300
		presets.weapon.expert.m4.spread = 20
		presets.weapon.expert.m4.miss_dis = 40
		presets.weapon.expert.m4.RELOAD_SPEED = 1.2
		presets.weapon.expert.m4.melee_speed = 1
		presets.weapon.expert.m4.melee_dmg = 20
		presets.weapon.expert.m4.melee_retry_delay = presets.weapon.normal.m4.melee_retry_delay
		presets.weapon.expert.m4.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.expert.m4.autofire_rounds = presets.weapon.normal.m4.autofire_rounds
		presets.weapon.expert.m4.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 6,
				recoil = {0.4, 0.8},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {0.55, 0.95},
				dmg_mul = 5.75,
				recoil = {0.45, 0.8},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 1000,
				acc = {0.525, 0.8},
				dmg_mul = 5.75,
				recoil = {0.35, 0.75},
				mode = {
					1,
					2,
					2,
					0
				}
			},
			{
				r = 2000,
				acc = {0.5, 0.7},
				dmg_mul = 5.5,
				recoil = {0.4, 1.2},
				mode = {
					3,
					2,
					2,
					0
				}
			},
			{
				r = 3000,
				acc = {0.2, 0.4},
				dmg_mul = 5.25,
				recoil = {1.5, 3},
				mode = {
					3,
					1,
					1,
					0
				}
			}
		}
		presets.weapon.expert.r870.aim_delay = {0.1, 0.1}
		presets.weapon.expert.r870.focus_delay = 2
		presets.weapon.expert.r870.focus_dis = 200
		presets.weapon.expert.r870.spread = 15
		presets.weapon.expert.r870.miss_dis = 20
		presets.weapon.expert.r870.RELOAD_SPEED = 1.2
		presets.weapon.expert.r870.melee_speed = 1
		presets.weapon.expert.r870.melee_dmg = 20
		presets.weapon.expert.r870.melee_retry_delay = presets.weapon.normal.r870.melee_retry_delay
		presets.weapon.expert.r870.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.expert.r870.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.95},
				dmg_mul = 6.5,
				recoil = {1, 1.5},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 500,
				acc = {0.5, 0.9},
				dmg_mul = 5.5,
				recoil = {1.5, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {0.4, 0.75},
				dmg_mul = 4,
				recoil = {1.5, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {0.1, 0.55},
				dmg_mul = 3.5,
				recoil = {1.5, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {0.1, 0.35},
				dmg_mul = 2.5,
				recoil = {1.5, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.expert.mp5.aim_delay = {0, 0.1}
		presets.weapon.expert.mp5.focus_delay = 1
		presets.weapon.expert.mp5.focus_dis = 200
		presets.weapon.expert.mp5.spread = 15
		presets.weapon.expert.mp5.miss_dis = 10
		presets.weapon.expert.mp5.RELOAD_SPEED = 1.2
		presets.weapon.expert.mp5.melee_speed = presets.weapon.normal.mp5.melee_speed
		presets.weapon.expert.mp5.melee_dmg = presets.weapon.normal.mp5.melee_dmg
		presets.weapon.expert.mp5.melee_retry_delay = presets.weapon.normal.mp5.melee_retry_delay
		presets.weapon.expert.mp5.range = presets.weapon.normal.mp5.range
		presets.weapon.expert.mp5.autofire_rounds = presets.weapon.normal.mp5.autofire_rounds
		presets.weapon.expert.mp5.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.95},
				dmg_mul = 5,
				recoil = {0.1, 0.25},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {0.6, 0.9},
				dmg_mul = 4.5,
				recoil = {0.1, 0.3},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 1000,
				acc = {0.4, 0.65},
				dmg_mul = 4,
				recoil = {0.35, 0.5},
				mode = {
					0,
					3,
					3,
					0
				}
			},
			{
				r = 2000,
				acc = {0.4, 0.6},
				dmg_mul = 3,
				recoil = {0.35, 0.7},
				mode = {
					0,
					3,
					3,
					0
				}
			},
			{
				r = 3000,
				acc = {0.2, 0.35},
				dmg_mul = 2,
				recoil = {0.5, 1.5},
				mode = {
					1,
					3,
					2,
					0
				}
			}
		}
		presets.weapon.expert.mac11.aim_delay = {0.1, 0.1}
		presets.weapon.expert.mac11.focus_delay = 1
		presets.weapon.expert.mac11.focus_dis = 200
		presets.weapon.expert.mac11.spread = 15
		presets.weapon.expert.mac11.miss_dis = 10
		presets.weapon.expert.mac11.RELOAD_SPEED = 1.2
		presets.weapon.expert.mac11.melee_speed = presets.weapon.normal.mac11.melee_speed
		presets.weapon.expert.mac11.melee_dmg = presets.weapon.normal.mac11.melee_dmg
		presets.weapon.expert.mac11.melee_retry_delay = presets.weapon.normal.mac11.melee_retry_delay
		presets.weapon.expert.mac11.range = presets.weapon.normal.mac11.range
		presets.weapon.expert.mac11.autofire_rounds = presets.weapon.normal.mac11.autofire_rounds
		presets.weapon.expert.mac11.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 5,
				recoil = {0.5, 0.6},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {0.5, 0.85},
				dmg_mul = 4,
				recoil = {0.5, 0.65},
				mode = {
					0,
					1,
					3,
					1
				}
			},
			{
				r = 1000,
				acc = {0.3, 0.65},
				dmg_mul = 3.5,
				recoil = {0.55, 0.85},
				mode = {
					2,
					1,
					3,
					0
				}
			},
			{
				r = 2000,
				acc = {0.35, 0.55},
				dmg_mul = 3,
				recoil = {0.65, 1},
				mode = {
					2,
					1,
					3,
					0
				}
			},
			{
				r = 3000,
				acc = {0.2, 0.35},
				dmg_mul = 2.5,
				recoil = {0.65, 1.2},
				mode = {
					4,
					1,
					0,
					0
				}
			}
		}
		presets.weapon.expert.raging_bull.aim_delay = {0.1, 0.1}
		presets.weapon.expert.raging_bull.focus_delay = 10
		presets.weapon.expert.raging_bull.focus_dis = 200
		presets.weapon.expert.raging_bull.spread = 20
		presets.weapon.expert.raging_bull.miss_dis = 50
		presets.weapon.expert.raging_bull.RELOAD_SPEED = 0.9
		presets.weapon.expert.raging_bull.melee_speed = 1
		presets.weapon.expert.raging_bull.melee_dmg = 8
		presets.weapon.expert.raging_bull.melee_retry_delay = {1, 2}
		presets.weapon.expert.raging_bull.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.expert.raging_bull.FALLOFF = {
			{
				r = 100,
				acc = {0.6, 0.9},
				dmg_mul = 5,
				recoil = {0.8, 1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 500,
				acc = {0.5, 0.85},
				dmg_mul = 4,
				recoil = {0.8, 1.1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {0.375, 0.55},
				dmg_mul = 2.5,
				recoil = {0.8, 1.1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {0.25, 0.45},
				dmg_mul = 2,
				recoil = {1, 1.3},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {0.01, 0.35},
				dmg_mul = 1.5,
				recoil = {1, 1.5},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.expert.ak47 = presets.weapon.expert.m4
		presets.weapon.expert.mossberg = presets.weapon.expert.r870
		presets.weapon.sniper = {
			m4 = {}
		}
		presets.weapon.sniper.m4.aim_delay = {0, 0.1}
		presets.weapon.sniper.m4.focus_delay = 7
		presets.weapon.sniper.m4.focus_dis = 200
		presets.weapon.sniper.m4.spread = 30
		presets.weapon.sniper.m4.miss_dis = 250
		presets.weapon.sniper.m4.RELOAD_SPEED = 1.25
		presets.weapon.sniper.m4.melee_speed = presets.weapon.normal.m4.melee_speed
		presets.weapon.sniper.m4.melee_dmg = presets.weapon.normal.m4.melee_dmg
		presets.weapon.expert.m4.melee_retry_delay = presets.weapon.normal.m4.melee_retry_delay
		presets.weapon.sniper.m4.range = {
			close = 15000,
			optimal = 15000,
			far = 15000
		}
		presets.weapon.sniper.m4.autofire_rounds = presets.weapon.normal.m4.autofire_rounds
		presets.weapon.sniper.m4.use_laser = true
		presets.weapon.sniper.m4.FALLOFF = {
			{
				r = 700,
				acc = {0.4, 0.95},
				dmg_mul = 5,
				recoil = {2, 4},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3500,
				acc = {0.1, 0.75},
				dmg_mul = 5,
				recoil = {3, 4},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 10000,
				acc = {0, 0.25},
				dmg_mul = 2.5,
				recoil = {3, 5},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.deathwish = {
			beretta92 = {},
			c45 = {},
			raging_bull = {},
			m4 = {},
			ak47 = {},
			r870 = {},
			mossberg = {},
			mp5 = {},
			mac11 = {}
		}
		presets.weapon.deathwish.raging_bull.aim_delay = {0, 0}
		presets.weapon.deathwish.raging_bull.focus_delay = 10
		presets.weapon.deathwish.raging_bull.focus_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.raging_bull.spread = 0
		presets.weapon.deathwish.raging_bull.miss_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.raging_bull.RELOAD_SPEED = 0.9
		presets.weapon.deathwish.raging_bull.melee_speed = 1
		presets.weapon.deathwish.raging_bull.melee_dmg = 8
		presets.weapon.deathwish.raging_bull.melee_retry_delay = {1, 2}
		presets.weapon.deathwish.raging_bull.range = {
			close = 1000,
			optimal = 2000,
			far = 5000
		}
		presets.weapon.deathwish.raging_bull.FALLOFF = {
			{
				r = 100,
				acc = {1, 1},
				dmg_mul = 5,
				recoil = {0.8, 1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 500,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.8, 1.1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 3.5,
				recoil = {0.8, 1.1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 3,
				recoil = {1, 1.3},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 2.5,
				recoil = {1, 1.5},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.deathwish.beretta92.aim_delay = {0, 0}
		presets.weapon.deathwish.beretta92.focus_delay = 0
		presets.weapon.deathwish.beretta92.focus_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.beretta92.spread = 0
		presets.weapon.deathwish.beretta92.miss_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.beretta92.RELOAD_SPEED = 1.1
		presets.weapon.deathwish.beretta92.melee_speed = presets.weapon.expert.beretta92.melee_speed
		presets.weapon.deathwish.beretta92.melee_dmg = presets.weapon.expert.beretta92.melee_dmg
		presets.weapon.deathwish.beretta92.melee_retry_delay = presets.weapon.expert.beretta92.melee_retry_delay
		presets.weapon.deathwish.beretta92.range = presets.weapon.normal.beretta92.range
		presets.weapon.deathwish.beretta92.FALLOFF = {
			{
				r = 0,
				acc = {1, 1},
				dmg_mul = 5,
				recoil = {0.1, 0.25},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 3,
				recoil = {0.15, 0.3},
				mode = {
					1,
					0,
					1,
					0
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 3,
				recoil = {0.3, 0.7},
				mode = {
					1,
					0,
					1,
					0
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 2,
				recoil = {0.4, 1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 5000,
				acc = {1, 1},
				dmg_mul = 2,
				recoil = {0.4, 1},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.deathwish.c45.aim_delay = {0, 0}
		presets.weapon.deathwish.c45.focus_delay = 0
		presets.weapon.deathwish.c45.focus_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.c45.spread = 0
		presets.weapon.deathwish.c45.miss_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.c45.RELOAD_SPEED = 1.4
		presets.weapon.deathwish.c45.melee_speed = presets.weapon.expert.c45.melee_speed
		presets.weapon.deathwish.c45.melee_dmg = 20
		presets.weapon.deathwish.c45.melee_retry_delay = presets.weapon.expert.c45.melee_retry_delay
		presets.weapon.deathwish.c45.range = {
			close = 2000,
			optimal = 3200,
			far = 5000
		}
		presets.weapon.deathwish.c45.FALLOFF = {
			{
				r = 100,
				acc = {1, 1},
				dmg_mul = 6.5,
				recoil = {0.15, 0.25},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {1, 1},
				dmg_mul = 6.5,
				recoil = {0.15, 0.3},
				mode = {
					0,
					0,
					1,
					0
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 6.5,
				recoil = {0.25, 0.3},
				mode = {
					1,
					0,
					1,
					0
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 6.5,
				recoil = {0.4, 0.5},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 6,
				recoil = {0.6, 0.8},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 4000,
				acc = {1, 1},
				dmg_mul = 6,
				recoil = {1, 1.5},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.deathwish.m4.aim_delay = {0, 0}
		presets.weapon.deathwish.m4.focus_delay = 0
		presets.weapon.deathwish.m4.focus_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.m4.spread = 0
		presets.weapon.deathwish.m4.miss_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.m4.RELOAD_SPEED = 1.4
		presets.weapon.deathwish.m4.melee_speed = 1
		presets.weapon.deathwish.m4.melee_dmg = 20
		presets.weapon.deathwish.m4.melee_retry_delay = presets.weapon.expert.m4.melee_retry_delay
		presets.weapon.deathwish.m4.range = {
			close = 2000,
			optimal = 3500,
			far = 6000
		}
		presets.weapon.deathwish.m4.autofire_rounds = {4, 9}
		presets.weapon.deathwish.m4.FALLOFF = {
			{
				r = 100,
				acc = {1, 1},
				dmg_mul = 7.5,
				recoil = {0.25, 0.3},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {1, 1},
				dmg_mul = 7.5,
				recoil = {0.25, 0.3},
				mode = {
					0,
					3,
					8,
					1
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 7.5,
				recoil = {0.35, 0.55},
				mode = {
					0,
					2,
					5,
					1
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 7.5,
				recoil = {0.4, 0.7},
				mode = {
					3,
					2,
					5,
					1
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 7.5,
				recoil = {0.7, 1.1},
				mode = {
					3,
					1,
					5,
					0.5
				}
			},
			{
				r = 6000,
				acc = {1, 1},
				dmg_mul = 7.5,
				recoil = {1, 2},
				mode = {
					3,
					1,
					1,
					0
				}
			}
		}
		presets.weapon.deathwish.r870.aim_delay = {0, 0}
		presets.weapon.deathwish.r870.focus_delay = 0
		presets.weapon.deathwish.r870.focus_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.r870.spread = 0
		presets.weapon.deathwish.r870.miss_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.r870.RELOAD_SPEED = 1.4
		presets.weapon.deathwish.r870.melee_speed = 1
		presets.weapon.deathwish.r870.melee_dmg = 20
		presets.weapon.deathwish.r870.melee_retry_delay = presets.weapon.expert.r870.melee_retry_delay
		presets.weapon.deathwish.r870.range = {
			close = 2000,
			optimal = 3000,
			far = 5000
		}
		presets.weapon.deathwish.r870.FALLOFF = {
			{
				r = 100,
				acc = {1, 1},
				dmg_mul = 8,
				recoil = {1, 1.1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 500,
				acc = {1, 1},
				dmg_mul = 7.5,
				recoil = {1, 1.25},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 7,
				recoil = {1, 1.5},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 5,
				recoil = {1.25, 1.5},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 3,
				recoil = {1.5, 1.75},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.deathwish.mp5.aim_delay = {0, 0}
		presets.weapon.deathwish.mp5.focus_delay = 0
		presets.weapon.deathwish.mp5.focus_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.mp5.spread = 0
		presets.weapon.deathwish.mp5.miss_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.mp5.RELOAD_SPEED = 1.4
		presets.weapon.deathwish.mp5.melee_speed = presets.weapon.expert.mp5.melee_speed
		presets.weapon.deathwish.mp5.melee_dmg = presets.weapon.expert.mp5.melee_dmg
		presets.weapon.deathwish.mp5.melee_retry_delay = presets.weapon.expert.mp5.melee_retry_delay
		presets.weapon.deathwish.mp5.range = {
			close = 2000,
			optimal = 3200,
			far = 6000
		}
		presets.weapon.deathwish.mp5.autofire_rounds = {8, 16}
		presets.weapon.deathwish.mp5.FALLOFF = {
			{
				r = 100,
				acc = {1, 1},
				dmg_mul = 6.75,
				recoil = {0.1, 0.25},
				mode = {
					0,
					3,
					3,
					4
				}
			},
			{
				r = 500,
				acc = {1, 1},
				dmg_mul = 6.75,
				recoil = {0.1, 0.3},
				mode = {
					0,
					3,
					3,
					4
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 6.75,
				recoil = {0.35, 0.5},
				mode = {
					0,
					6,
					3,
					3
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 6.75,
				recoil = {0.35, 0.5},
				mode = {
					0,
					6,
					3,
					0
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 6.75,
				recoil = {0.5, 1.5},
				mode = {
					1,
					6,
					2,
					0
				}
			},
			{
				r = 4500,
				acc = {1, 1},
				dmg_mul = 6.75,
				recoil = {1, 1.5},
				mode = {
					1,
					3,
					2,
					0
				}
			}
		}
		presets.weapon.deathwish.mac11.aim_delay = {0, 0}
		presets.weapon.deathwish.mac11.focus_delay = 0
		presets.weapon.deathwish.mac11.focus_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.mac11.spread = 0
		presets.weapon.deathwish.mac11.miss_dis = 2000000000000000000000000000000000000
		presets.weapon.deathwish.mac11.RELOAD_SPEED = 1.4
		presets.weapon.deathwish.mac11.melee_speed = presets.weapon.expert.mac11.melee_speed
		presets.weapon.deathwish.mac11.melee_dmg = presets.weapon.expert.mac11.melee_dmg
		presets.weapon.deathwish.mac11.melee_retry_delay = presets.weapon.expert.mac11.melee_retry_delay
		presets.weapon.deathwish.mac11.range = {
			close = 2000,
			optimal = 2700,
			far = 6000
		}
		presets.weapon.deathwish.mac11.autofire_rounds = {20, 30}
		presets.weapon.deathwish.mac11.FALLOFF = {
			{
				r = 100,
				acc = {1, 1},
				dmg_mul = 7,
				recoil = {0.3, 0.4},
				mode = {
					0,
					3,
					3,
					3
				}
			},
			{
				r = 500,
				acc = {1, 1},
				dmg_mul = 7,
				recoil = {0.3, 0.4},
				mode = {
					0,
					1,
					3,
					3
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 7,
				recoil = {0.3, 0.4},
				mode = {
					2,
					1,
					3,
					1
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 7,
				recoil = {0.65, 8},
				mode = {
					2,
					1,
					3,
					0
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 7,
				recoil = {0.65, 1.2},
				mode = {
					4,
					1,
					0,
					0
				}
			}
		}
		presets.weapon.deathwish.ak47 = presets.weapon.deathwish.m4
		presets.weapon.deathwish.mossberg = presets.weapon.deathwish.r870
		presets.weapon.gang_member = {
			beretta92 = {},
			c45 = {},
			raging_bull = {},
			m4 = {},
			ak47 = {},
			r870 = {},
			mossberg = {},
			mp5 = {},
			mac11 = {}
		}
		presets.weapon.gang_member.beretta92.aim_delay = {0, 1}
		presets.weapon.gang_member.beretta92.focus_delay = 1
		presets.weapon.gang_member.beretta92.focus_dis = 2000000000000000000000
		presets.weapon.gang_member.beretta92.spread = 0
		presets.weapon.gang_member.beretta92.miss_dis = 20000000000000000000000
		presets.weapon.gang_member.beretta92.RELOAD_SPEED = 1.5
		presets.weapon.gang_member.beretta92.melee_speed = 3
		presets.weapon.gang_member.beretta92.melee_dmg = 3
		presets.weapon.gang_member.beretta92.melee_retry_delay = presets.weapon.normal.beretta92.melee_retry_delay
		presets.weapon.gang_member.beretta92.range = presets.weapon.normal.beretta92.range
		presets.weapon.gang_member.beretta92.FALLOFF = {
			{
				r = 300,
				acc = {1, 1},
				dmg_mul = 3.5,
				recoil = {0.25, 0.45},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 1,
				recoil = {0.25, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 10000,
				acc = {1, 1},
				dmg_mul = 1,
				recoil = {2, 3},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.gang_member.m4.aim_delay = {0, 1}
		presets.weapon.gang_member.m4.focus_delay = 1
		presets.weapon.gang_member.m4.focus_dis = 3000
		presets.weapon.gang_member.m4.spread = 25
		presets.weapon.gang_member.m4.miss_dis = 10
		presets.weapon.gang_member.m4.RELOAD_SPEED = 1
		presets.weapon.gang_member.m4.melee_speed = 2
		presets.weapon.gang_member.m4.melee_dmg = 3
		presets.weapon.gang_member.m4.melee_retry_delay = presets.weapon.normal.m4.melee_retry_delay
		presets.weapon.gang_member.m4.range = {
			close = 1500,
			optimal = 2500,
			far = 6000
		}
		presets.weapon.gang_member.m4.autofire_rounds = presets.weapon.normal.m4.autofire_rounds
		presets.weapon.gang_member.m4.FALLOFF = {
			{
				r = 300,
				acc = {0.7, 1},
				dmg_mul = 3.5,
				recoil = {0.25, 0.45},
				mode = {
					0.1,
					0.3,
					4,
					7
				}
			},
			{
				r = 2000,
				acc = {0.1, 0.6},
				dmg_mul = 0.5,
				recoil = {0.25, 2},
				mode = {
					2,
					2,
					5,
					8
				}
			},
			{
				r = 10000,
				acc = {0, 0.15},
				dmg_mul = 0.5,
				recoil = {2, 3},
				mode = {
					2,
					1,
					1,
					0.01
				}
			}
		}
		presets.weapon.gang_member.r870.aim_delay = {0, 0.02}
		presets.weapon.gang_member.r870.focus_delay = 1
		presets.weapon.gang_member.r870.focus_dis = 2000
		presets.weapon.gang_member.r870.spread = 15
		presets.weapon.gang_member.r870.miss_dis = 10
		presets.weapon.gang_member.r870.RELOAD_SPEED = 2
		presets.weapon.gang_member.r870.melee_speed = 2
		presets.weapon.gang_member.r870.melee_dmg = 3
		presets.weapon.gang_member.r870.melee_retry_delay = presets.weapon.normal.r870.melee_retry_delay
		presets.weapon.gang_member.r870.range = presets.weapon.normal.r870.range
		presets.weapon.gang_member.r870.FALLOFF = {
			{
				r = 300,
				acc = {0.7, 1},
				dmg_mul = 3.5,
				recoil = {2, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {0.1, 0.6},
				dmg_mul = 1,
				recoil = {2, 2},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 4000,
				acc = {0, 0.15},
				dmg_mul = 0.1,
				recoil = {2, 4},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		presets.weapon.gang_member.mp5 = presets.weapon.gang_member.m4
		presets.weapon.gang_member.c45 = presets.weapon.gang_member.beretta92
		presets.weapon.gang_member.raging_bull = presets.weapon.gang_member.beretta92
		presets.weapon.gang_member.ak47 = presets.weapon.gang_member.m4
		presets.weapon.gang_member.mossberg = presets.weapon.gang_member.r870
		presets.weapon.gang_member.mac11 = presets.weapon.gang_member.mp5
		presets.detection = {}
		presets.detection.normal = {
			idle = {},
			combat = {},
			recon = {},
			guard = {},
			ntl = {}
		}
		presets.detection.normal.idle.dis_max = 10000
		presets.detection.normal.idle.angle_max = 120
		presets.detection.normal.idle.delay = {0, 0}
		presets.detection.normal.idle.use_uncover_range = true
		presets.detection.normal.combat.dis_max = 10000
		presets.detection.normal.combat.angle_max = 120
		presets.detection.normal.combat.delay = {0, 0}
		presets.detection.normal.combat.use_uncover_range = true
		presets.detection.normal.recon.dis_max = 10000
		presets.detection.normal.recon.angle_max = 120
		presets.detection.normal.recon.delay = {0, 0}
		presets.detection.normal.recon.use_uncover_range = true
		presets.detection.normal.guard.dis_max = 10000
		presets.detection.normal.guard.angle_max = 120
		presets.detection.normal.guard.delay = {0, 0}
		presets.detection.normal.ntl.dis_max = 4000
		presets.detection.normal.ntl.angle_max = 60
		presets.detection.normal.ntl.delay = {0.2, 2}
		presets.detection.guard = {
			idle = {},
			combat = {},
			recon = {},
			guard = {},
			ntl = {}
		}
		presets.detection.guard.idle.dis_max = 10000
		presets.detection.guard.idle.angle_max = 120
		presets.detection.guard.idle.delay = {0, 0}
		presets.detection.guard.idle.use_uncover_range = true
		presets.detection.guard.combat.dis_max = 10000
		presets.detection.guard.combat.angle_max = 120
		presets.detection.guard.combat.delay = {0, 0}
		presets.detection.guard.combat.use_uncover_range = true
		presets.detection.guard.recon.dis_max = 10000
		presets.detection.guard.recon.angle_max = 120
		presets.detection.guard.recon.delay = {0, 0}
		presets.detection.guard.recon.use_uncover_range = true
		presets.detection.guard.guard.dis_max = 10000
		presets.detection.guard.guard.angle_max = 120
		presets.detection.guard.guard.delay = {0, 0}
		presets.detection.guard.ntl = presets.detection.normal.ntl
		presets.detection.sniper = {
			idle = {},
			combat = {},
			recon = {},
			guard = {},
			ntl = {}
		}
		presets.detection.sniper.idle.dis_max = 10000
		presets.detection.sniper.idle.angle_max = 180
		presets.detection.sniper.idle.delay = {0.5, 1}
		presets.detection.sniper.idle.use_uncover_range = true
		presets.detection.sniper.combat.dis_max = 10000
		presets.detection.sniper.combat.angle_max = 120
		presets.detection.sniper.combat.delay = {0.5, 1}
		presets.detection.sniper.combat.use_uncover_range = true
		presets.detection.sniper.recon.dis_max = 10000
		presets.detection.sniper.recon.angle_max = 120
		presets.detection.sniper.recon.delay = {0.5, 1}
		presets.detection.sniper.recon.use_uncover_range = true
		presets.detection.sniper.guard.dis_max = 10000
		presets.detection.sniper.guard.angle_max = 150
		presets.detection.sniper.guard.delay = {0.3, 1}
		presets.detection.sniper.ntl = presets.detection.normal.ntl
		presets.detection.gang_member = {
			idle = {},
			combat = {},
			recon = {},
			guard = {},
			ntl = {}
		}
		presets.detection.gang_member.idle.dis_max = 10000
		presets.detection.gang_member.idle.angle_max = 120
		presets.detection.gang_member.idle.delay = {0, 0}
		presets.detection.gang_member.idle.use_uncover_range = true
		presets.detection.gang_member.combat.dis_max = 10000
		presets.detection.gang_member.combat.angle_max = 120
		presets.detection.gang_member.combat.delay = {0, 0}
		presets.detection.gang_member.combat.use_uncover_range = true
		presets.detection.gang_member.recon.dis_max = 10000
		presets.detection.gang_member.recon.angle_max = 120
		presets.detection.gang_member.recon.delay = {0, 0}
		presets.detection.gang_member.recon.use_uncover_range = true
		presets.detection.gang_member.guard.dis_max = 10000
		presets.detection.gang_member.guard.angle_max = 120
		presets.detection.gang_member.guard.delay = {0, 0}
		presets.detection.gang_member.ntl = presets.detection.normal.ntl
		self:_process_weapon_usage_table(presets.weapon.normal)
		self:_process_weapon_usage_table(presets.weapon.good)
		self:_process_weapon_usage_table(presets.weapon.expert)
		self:_process_weapon_usage_table(presets.weapon.gang_member)
		presets.detection.civilian = {
			cbt = {},
			ntl = {}
		}
		presets.detection.civilian.cbt.dis_max = 700
		presets.detection.civilian.cbt.angle_max = 120
		presets.detection.civilian.cbt.delay = {0, 0}
		presets.detection.civilian.cbt.use_uncover_range = true
		presets.detection.civilian.ntl.dis_max = 2000
		presets.detection.civilian.ntl.angle_max = 60
		presets.detection.civilian.ntl.delay = {0.2, 3}
		presets.detection.blind = {
			idle = {},
			combat = {},
			recon = {},
			guard = {},
			ntl = {}
		}
		presets.detection.blind.idle.dis_max = 1
		presets.detection.blind.idle.angle_max = 0
		presets.detection.blind.idle.delay = {0, 0}
		presets.detection.blind.idle.use_uncover_range = false
		presets.detection.blind.combat.dis_max = 1
		presets.detection.blind.combat.angle_max = 0
		presets.detection.blind.combat.delay = {0, 0}
		presets.detection.blind.combat.use_uncover_range = false
		presets.detection.blind.recon.dis_max = 1
		presets.detection.blind.recon.angle_max = 0
		presets.detection.blind.recon.delay = {0, 0}
		presets.detection.blind.recon.use_uncover_range = false
		presets.detection.blind.guard.dis_max = 1
		presets.detection.blind.guard.angle_max = 0
		presets.detection.blind.guard.delay = {0, 0}
		presets.detection.blind.guard.use_uncover_range = false
		presets.detection.blind.ntl.dis_max = 1
		presets.detection.blind.ntl.angle_max = 0
		presets.detection.blind.ntl.delay = {0, 0}
		presets.detection.blind.ntl.use_uncover_range = false
		presets.dodge = {
			poor = {
				speed = 0.9,
				occasions = {
					hit = {
						chance = 0.9,
						check_timeout = {0, 0},
						variations = {
							side_step = {
								chance = 1,
								timeout = {2, 3}
							}
						}
					},
					scared = {
						chance = 0.5,
						check_timeout = {1, 2},
						variations = {
							side_step = {
								chance = 1,
								timeout = {2, 3}
							}
						}
					}
				}
			},
			average = {
				speed = 1,
				occasions = {
					hit = {
						chance = 0.35,
						check_timeout = {0, 0},
						variations = {
							side_step = {
								chance = 1,
								timeout = {2, 3}
							}
						}
					},
					scared = {
						chance = 0.4,
						check_timeout = {4, 7},
						variations = {
							dive = {
								chance = 1,
								timeout = {5, 8}
							}
						}
					}
				}
			},
			heavy = {
				speed = 1,
				occasions = {
					hit = {
						chance = 0.75,
						check_timeout = {0, 0},
						variations = {
							side_step = {
								chance = 9,
								timeout = {0, 7},
								shoot_chance = 0.8,
								shoot_accuracy = 0.5
							},
							roll = {
								chance = 1,
								timeout = {8, 10}
							}
						}
					},
					preemptive = {
						chance = 0.1,
						check_timeout = {1, 7},
						variations = {
							side_step = {
								chance = 1,
								timeout = {1, 7},
								shoot_chance = 1,
								shoot_accuracy = 0.7
							}
						}
					},
					scared = {
						chance = 0.8,
						check_timeout = {1, 2},
						variations = {
							side_step = {
								chance = 5,
								timeout = {1, 2},
								shoot_chance = 0.5,
								shoot_accuracy = 0.4
							},
							roll = {
								chance = 1,
								timeout = {8, 10}
							},
							dive = {
								chance = 2,
								timeout = {8, 10}
							}
						}
					}
				}
			},
			athletic = {
				speed = 1.3,
				occasions = {
					hit = {
						chance = 0.9,
						check_timeout = {0, 0},
						variations = {
							side_step = {
								chance = 5,
								timeout = {1, 3},
								shoot_chance = 0.8,
								shoot_accuracy = 0.5
							},
							roll = {
								chance = 1,
								timeout = {3, 4}
							}
						}
					},
					preemptive = {
						chance = 0.35,
						check_timeout = {2, 3},
						variations = {
							side_step = {
								chance = 3,
								timeout = {1, 2},
								shoot_chance = 1,
								shoot_accuracy = 0.7
							},
							roll = {
								chance = 1,
								timeout = {3, 4}
							}
						}
					},
					scared = {
						chance = 0.4,
						check_timeout = {1, 2},
						variations = {
							side_step = {
								chance = 5,
								timeout = {1, 2},
								shoot_chance = 0.5,
								shoot_accuracy = 0.4
							},
							roll = {
								chance = 3,
								timeout = {3, 5}
							},
							dive = {
								chance = 1,
								timeout = {3, 5}
							}
						}
					}
				}
			},
			ninja = {
				speed = 1.6,
				occasions = {
					hit = {
						chance = 100,
						check_timeout = {2, 3},
						variations = {
							side_step = {
								chance = 3,
								timeout = {2, 3},
								shoot_chance = 1,
								shoot_accuracy = 0.7
							},
							roll = {
								chance = 1,
								timeout = {2, 3}
							},
							wheel = {
								chance = 2,
								timeout = {2, 3}
							}
						}
					},
					preemptive = {
						chance = 100,
						check_timeout = {2, 3},
						variations = {
							side_step = {
								chance = 3,
								timeout = {2, 3},
								shoot_chance = 1,
								shoot_accuracy = 0.7
							},
							roll = {
								chance = 1,
								timeout = {0, 0}
							},
							wheel = {
								chance = 2,
								timeout = {0, 0}
							}
						}
					},
					scared = {
						chance = 100,
						check_timeout = {2, 3},
						variations = {
							side_step = {
								chance = 5,
								timeout = {0, 0},
								shoot_chance = 0.8,
								shoot_accuracy = 0.6
							},
							roll = {
								chance = 3,
								timeout = {2, 3}
							},
							wheel = {
								chance = 3,
								timeout = {2, 3}
							},
							dive = {
								chance = 1,
								timeout = {2, 3}
							}
						}
					}
				}
			}
		}
		for preset_name, preset_data in pairs(presets.dodge) do
			for reason_name, reason_data in pairs(preset_data.occasions) do
				local total_w = 0
				for variation_name, variation_data in pairs(reason_data.variations) do
					total_w = total_w + variation_data.chance
				end
				if total_w > 0 then
					for variation_name, variation_data in pairs(reason_data.variations) do
						variation_data.chance = variation_data.chance / total_w
					end
				end
			end
		end
		presets.move_speed = {
			civ_fast = {
				stand = {
					walk = {
						ntl = {
							fwd = 150,
							strafe = 120,
							bwd = 100
						},
						hos = {
							fwd = 210,
							strafe = 190,
							bwd = 160
						},
						cbt = {
							fwd = 210,
							strafe = 175,
							bwd = 160
						}
					},
					run = {
						hos = {
							fwd = 500,
							strafe = 192,
							bwd = 230
						},
						cbt = {
							fwd = 500,
							strafe = 250,
							bwd = 230
						}
					}
				},
				crouch = {
					walk = {
						hos = {
							fwd = 174,
							strafe = 160,
							bwd = 163
						},
						cbt = {
							fwd = 174,
							strafe = 160,
							bwd = 163
						}
					},
					run = {
						hos = {
							fwd = 312,
							strafe = 245,
							bwd = 260
						},
						cbt = {
							fwd = 312,
							strafe = 245,
							bwd = 260
						}
					}
				}
			},
			lightning = {
				stand = {
					walk = {
						ntl = {
							fwd = 150,
							strafe = 120,
							bwd = 110
						},
						hos = {
							fwd = 285,
							strafe = 225,
							bwd = 215
						},
						cbt = {
							fwd = 285,
							strafe = 225,
							bwd = 215
						}
					},
					run = {
						hos = {
							fwd = 800,
							strafe = 400,
							bwd = 350
						},
						cbt = {
							fwd = 750,
							strafe = 380,
							bwd = 320
						}
					}
				},
				crouch = {
					walk = {
						hos = {
							fwd = 245,
							strafe = 210,
							bwd = 190
						},
						cbt = {
							fwd = 255,
							strafe = 190,
							bwd = 190
						}
					},
					run = {
						hos = {
							fwd = 420,
							strafe = 300,
							bwd = 250
						},
						cbt = {
							fwd = 412,
							strafe = 300,
							bwd = 280
						}
					}
				}
			},
				very_slow = {
					stand = {
						walk = {
							ntl = {
								fwd = 144,
								strafe = 120,
								bwd = 113
							},
							hos = {
								fwd = 144,
								strafe = 120,
								bwd = 113
							},
							cbt = {
								fwd = 144,
								strafe = 120,
								bwd = 113
							}
						},
						run = {
							hos = {
								fwd = 144,
								strafe = 140,
								bwd = 113
							},
							cbt = {
								fwd = 144,
								strafe = 100,
								bwd = 125
							}
						}
					},
					crouch = {
						walk = {
							hos = {
								fwd = 144,
								strafe = 120,
								bwd = 113
							},
							cbt = {
								fwd = 144,
								strafe = 120,
								bwd = 113
							}
						},
						run = {
							hos = {
								fwd = 144,
								strafe = 130,
								bwd = 113
							},
							cbt = {
								fwd = 144,
								strafe = 100,
								bwd = 125
							}
						}
					}
				},
			slow = {
				stand = {
					walk = {
						ntl = {
							fwd = 144,
							strafe = 120,
							bwd = 113
						},
						hos = {
							fwd = 144,
							strafe = 120,
							bwd = 113
						},
						cbt = {
							fwd = 144,
							strafe = 120,
							bwd = 113
						}
					},
					run = {
						hos = {
							fwd = 360,
							strafe = 150,
							bwd = 135
						},
						cbt = {
							fwd = 360,
							strafe = 150,
							bwd = 155
						}
					}
				},
				crouch = {
					walk = {
						hos = {
							fwd = 144,
							strafe = 120,
							bwd = 113
						},
						cbt = {
							fwd = 144,
							strafe = 120,
							bwd = 113
						}
					},
					run = {
						hos = {
							fwd = 360,
							strafe = 140,
							bwd = 150
						},
						cbt = {
							fwd = 360,
							strafe = 140,
							bwd = 155
						}
					}
				}
			},
			normal = {
				stand = {
					walk = {
						ntl = {
							fwd = 150,
							strafe = 120,
							bwd = 100
						},
						hos = {
							fwd = 220,
							strafe = 190,
							bwd = 170
						},
						cbt = {
							fwd = 220,
							strafe = 190,
							bwd = 170
						}
					},
					run = {
						hos = {
							fwd = 450,
							strafe = 290,
							bwd = 255
						},
						cbt = {
							fwd = 400,
							strafe = 250,
							bwd = 255
						}
					}
				},
				crouch = {
					walk = {
						hos = {
							fwd = 210,
							strafe = 170,
							bwd = 160
						},
						cbt = {
							fwd = 210,
							strafe = 170,
							bwd = 160
						}
					},
					run = {
						hos = {
							fwd = 310,
							strafe = 260,
							bwd = 235
						},
						cbt = {
							fwd = 350,
							strafe = 260,
							bwd = 235
						}
					}
				}
			},
			fast = {
				stand = {
					walk = {
						ntl = {
							fwd = 150,
							strafe = 120,
							bwd = 110
						},
						hos = {
							fwd = 270,
							strafe = 215,
							bwd = 185
						},
						cbt = {
							fwd = 270,
							strafe = 215,
							bwd = 185
						}
					},
					run = {
						hos = {
							fwd = 625,
							strafe = 315,
							bwd = 280
						},
						cbt = {
							fwd = 450,
							strafe = 285,
							bwd = 280
						}
					}
				},
				crouch = {
					walk = {
						hos = {
							fwd = 235,
							strafe = 180,
							bwd = 170
						},
						cbt = {
							fwd = 235,
							strafe = 180,
							bwd = 170
						}
					},
					run = {
						hos = {
							fwd = 330,
							strafe = 280,
							bwd = 255
						},
						cbt = {
							fwd = 312,
							strafe = 270,
							bwd = 255
						}
					}
				}
			},
			very_fast = {
				stand = {
					walk = {
						ntl = {
							fwd = 150,
							strafe = 120,
							bwd = 110
						},
						hos = {
							fwd = 285,
							strafe = 225,
							bwd = 215
						},
						cbt = {
							fwd = 285,
							strafe = 225,
							bwd = 215
						}
					},
					run = {
						hos = {
							fwd = 670,
							strafe = 340,
							bwd = 325
						},
						cbt = {
							fwd = 475,
							strafe = 325,
							bwd = 300
						}
					}
				},
				crouch = {
					walk = {
						hos = {
							fwd = 245,
							strafe = 210,
							bwd = 190
						},
						cbt = {
							fwd = 255,
							strafe = 190,
							bwd = 190
						}
					},
					run = {
						hos = {
							fwd = 350,
							strafe = 282,
							bwd = 268
						},
						cbt = {
							fwd = 312,
							strafe = 282,
							bwd = 268
						}
					}
				}
			}
		}
		for speed_preset_name, poses in pairs(presets.move_speed) do
			for pose, hastes in pairs(poses) do
				hastes.run.ntl = hastes.run.hos
			end
			poses.crouch.walk.ntl = poses.crouch.walk.hos
			poses.crouch.run.ntl = poses.crouch.run.hos
			poses.stand.run.ntl = poses.stand.run.hos
			poses.panic = poses.stand
		end
		presets.surrender = {}
		presets.surrender.easy = {
			base_chance = 0.75,
			significant_chance = 0.1,
			violence_timeout = 2,
			reasons = {
				health = {
					[1] = 0.2,
					[0.3] = 1
				},
				weapon_down = 0.8,
				pants_down = 1,
				isolated = 0.1
			},
			factors = {
				flanked = 0.07,
				unaware_of_aggressor = 0.08,
				enemy_weap_cold = 0.15,
				aggressor_dis = {
					[1000] = 0.02,
					[300] = 0.15
				}
			}
		}
		presets.surrender.normal = {
			base_chance = 0.5,
			significant_chance = 0.2,
			violence_timeout = 2,
			reasons = {
				health = {
					[1] = 0,
					[0.5] = 0.5
				},
				weapon_down = 0.5,
				pants_down = 1,
				isolated = 0.08
			},
			factors = {
				flanked = 0.05,
				unaware_of_aggressor = 0.1,
				enemy_weap_cold = 0.11,
				aggressor_dis = {
					[1000] = 0,
					[300] = 0.1
				}
			}
		}
		presets.surrender.hard = {
			base_chance = 0.25,
			significant_chance = 0.25,
			violence_timeout = 2,
			reasons = {
				health = {
					[1] = 0,
					[0.35] = 0.5
				},
				weapon_down = 0.2,
				pants_down = 0.5
			},
			factors = {
				isolated = 0.1,
				flanked = 0.04,
				unaware_of_aggressor = 0.1,
				enemy_weap_cold = 0.05,
				aggressor_dis = {
					[1000] = 0,
					[300] = 0.1
				}
			}
		}
		presets.surrender.special = {
			base_chance = 0.25,
			significant_chance = 0.25,
			violence_timeout = 2,
			reasons = {
				health = {
					[0.5] = 0,
					[0.2] = 0.25
				},
				weapon_down = 0.02,
				pants_down = 0.6
			},
			factors = {
				isolated = 0.05,
				flanked = 0.015,
				unaware_of_aggressor = 0.02,
				enemy_weap_cold = 0.05
			}
		}
		presets.suppression = {
			easy = {
				duration = {10, 15},
				react_point = {0, 2},
				brown_point = {3, 5},
				panic_chance_mul = 1
			},
			hard_def = {
				duration = {5, 10},
				react_point = {0, 2},
				brown_point = {5, 6},
				panic_chance_mul = 0.7
			},
			hard_agg = {
				duration = {5, 8},
				react_point = {2, 5},
				brown_point = {5, 6},
				panic_chance_mul = 0.7
			},
			no_supress = {
				duration = {0.1, 0.15},
				react_point = {100, 200},
				brown_point = {400, 500},
				panic_chance_mul = 0
			}
		}
		presets.enemy_chatter = {
			no_chatter = {},
			cop = {
				aggressive = true,
				retreat = true,
				go_go = true,
				contact = true,
				suppress = true
			},
			swat = {
				aggressive = true,
				retreat = true,
				follow_me = true,
				clear = true,
				go_go = true,
				ready = true,
				smoke = true,
				contact = true,
				suppress = true
			},
			shield = {follow_me = true}
		}
		return presets
	end
	--it begins
	function CharacterTweakData:_set_overkill_290(presets)
		if SystemInfo:platform() == Idstring("PS3") then
			self:_multiply_all_hp(1.7, 0.75)
		else
			self:_multiply_all_hp(1.7, 0.75)
		end
		self.flashbang_multiplier = 2
		self:_multiply_all_speeds(1.05, 1.1)
		self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
		self:_multiply_weapon_delay(self.presets.weapon.good, 0)
		self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
		self:_multiply_weapon_delay(self.presets.weapon.sniper, .2)
		
		
		--character changes. some of these are untouched
		self.hector_boss.HEALTH_INIT = 900
		self.mobster_boss.HEALTH_INIT = 900
		self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)
		self.presets.gang_member_damage.REGENERATE_TIME = 1.8 --aw thanks my friend
		self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6 --aw thanks my friend
		self.presets.gang_member_damage.HEALTH_INIT = 300 --aw thanks my friend
		self:_set_characters_weapon_preset("deathwish") -- https://www.youtube.com/watch?v=YzckD8AoOqY
		self.shield.weapon.mp9.focus_dis = 2000000000000000000000000000
		
		--you're up against the wall and i am the fucking wall
		self.tank.HEALTH_INIT = 1100
		self.tank.weapon.saiga.focus_dis = 2000000000000000000000000000
		self.tank.weapon.r870.focus_dis = 2000000000000000000000000000000
		self.tank.headshot_dmg_mul = 10
		self.tank.rescue_hostages = true
		self.tank.melee_weapon = "knife_1"
		self.tank.critical_hits = {
			damage_mul = 3
		}
		self.tank.steal_loot = true
		self.tank.no_retreat = true
		self.tank.flammable = true
		self.tank.crouch_move = true --sneaky :^
		
		--*knocking intensifies*
		self.phalanx_minion.headshot_dmg_mul = 7.5
		self.phalanx_minion.HEALTH_INIT = 400
		self.phalanx_minion.DAMAGE_CLAMP_BULLET = 400
		self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = 200
		self.phalanx_minion.damage.explosion_damage_mul = 2
		self.phalanx_minion.damage.hurt_severity = self.presets.hurt_severities.only_explosion_hurts
		self.phalanx_minion.damage.shield_knocked = true
		self.phalanx_minion.ecm_vulnerability = nil
		self.phalanx_minion.ecm_hurts = {}
		self.phalanx_minion.priority_shout = "f31"
		self.phalanx_minion.weapon.mp9 = {}
		self.phalanx_minion.weapon.mp9.aim_delay = {0, 0}
		self.phalanx_minion.weapon.mp9.focus_delay = 0
		self.phalanx_minion.weapon.mp9.focus_dis = 25000000000000
		self.phalanx_minion.weapon.mp9.spread = 0
		self.phalanx_minion.weapon.mp9.miss_dis = 100000000000000
		self.phalanx_minion.weapon.mp9.RELOAD_SPEED = 1
		self.phalanx_minion.weapon.mp9.melee_speed = nil
		self.phalanx_minion.weapon.mp9.melee_dmg = nil
		self.phalanx_minion.weapon.mp9.melee_retry_delay = nil
		self.phalanx_minion.weapon.mp9.range = {
			close = 500,
			optimal = 1200,
			far = 3000
		}
		self.phalanx_minion.weapon.mp9.autofire_rounds = self.presets.weapon.deathwish.mp5.autofire_rounds
		self.phalanx_vip.HEALTH_INIT = 800
		self.phalanx_vip.headshot_dmg_mul = 7.5
		self.phalanx_vip.DAMAGE_CLAMP_BULLET = 800
		self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = 200
		self.phalanx_vip.damage.explosion_damage_mul = 2
		
		--wololololololol
		self.spooc.spooc_attack_timeout = {0, 0}
		self.spooc.can_be_tased = false --git gud lamp
		self.spooc.rescue_hostages = true
		self.spooc.steal_loot = true
		
		--this is 2-3 reporting in
		self.security.crouch_move = true
		self.security.suppression = self.presets.suppression.hard
		self.security.surrender = self.presets.surrender.hard
		self.security.rescue_hostages = true
		self.security.deathguard = true
		self.security.steal_loot = true
		
		--aka those annoying guys on go bank
		self.gensec.crouch_move = true
		self.gensec.suppression = self.presets.suppression.hard
		self.gensec.surrender = self.presets.surrender.hard
		self.gensec.rescue_hostages = true
		self.gensec.deathguard = true
		self.gensec.steal_loot = true
		
		--muh bronco
		self.cop.suppression = self.presets.suppression.hard
		self.cop.surrender = self.presets.surrender.hard
		self.fbi.surrender = self.presets.surrender.hard
		
		--	https://youtu.be/a2LNl0iklkA?t=4m2s
		self.city_swat.suppression = nil
		self.city_swat.surrender = self.presets.surrender.hard
		self.city_swat.HEALTH_INIT = 34 --changing this will get you a slap. git gud
		self.city_swat.headshot_dmg_mul = 1.5 --this too
		self.city_swat.damage.explosion_damage_mul = 0.8
		self.city_swat.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
		
		
		--dodge stuff
		self.security.dodge = self.presets.dodge.ninja -- https://youtu.be/ggFKLxAQBbc?t=38s
		self.gensec.dodge = self.presets.dodge.ninja
		self.cop.dodge = self.presets.dodge.ninja
		self.fbi.dodge = self.presets.dodge.ninja
		self.swat.dodge = self.presets.dodge.ninja
		self.heavy_swat.dodge = self.presets.dodge.ninja
		self.fbi_swat.dodge = self.presets.dodge.ninja
		self.fbi_heavy_swat.dodge = self.presets.dodge.ninja
		self.city_swat.dodge = self.presets.dodge.ninja
		
		
		--"switch weapons!"
		self.weap_unit_names[17] = Idstring("units/payday2/weapons/wpn_npc_scar_murkywater/wpn_npc_scar_murkywater")

		--[[rip knockback
		self.tank.damage.immune_to_knockback = true
		self.cloaker.damage.immune_to_knockback = true
		self.tank.damage.immune_to_knockback = true
		self.taser.damage.immune_to_knockback = true
		self.city_swat.damage.immune_to_knockback = true
		self.phalanx_minion.damage.immune_to_knockback = false
		self.phalanx_vip.damage.immune_to_knockback = false
		self.shield.damage.immune_to_knockback = false
		
		]]
		
		
		
		
		
		
		
		--weapon damage/range changes. some of these are unchanged from vanilla such as hector
		self.city_swat.weapon.r870.FALLOFF= {
			{
				r = 100,
				acc = {0.95, 0.95},
				dmg_mul = 3,
				recoil = {0.4, 0.7},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {0.7, 0.95},
				dmg_mul = 2,
				recoil = {0.4, 0.7},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 1000,
				acc = {
					0,
					5,
					0.8
				},
				dmg_mul = 1.5,
				recoil = {0.45, 0.8},
				mode = {
					1,
					2,
					2,
					0
				}
			},
			{
				r = 2000,
				acc = {0.45, 0.65},
				dmg_mul = 1,
				recoil = {0.45, 0.8},
				mode = {
					3,
					2,
					2,
					0
				}
			},
			{
				r = 3000,
				acc = {0.3, 0.5},
				dmg_mul = 0.4,
				recoil = {1, 1.2},
				mode = {
					3,
					1,
					1,
					0
				}
			}
		}
		self.phalanx_minion.weapon.mp9.FALLOFF = {
			{
				r = 0,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.35, 0.35},
				mode = {
					0.2,
					2,
					4,
					10
				}
			},
			{
				r = 700,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.35, 0.55},
				mode = {
					0.2,
					2,
					4,
					10
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.35, 0.55},
				mode = {
					0.2,
					2,
					4,
					10
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.35, 1},
				mode = {
					2,
					5,
					6,
					4
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.5, 1.2},
				mode = {
					6,
					4,
					2,
					0
				}
			}
		}
		self.sniper.weapon.m4.FALLOFF = {
			{
				r = 700,
				acc = {1, 1},
				dmg_mul = 12,
				recoil = {3, 5},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 4000,
				acc = {1, 1},
				dmg_mul = 12,
				recoil = {3, 5},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 10000,
				acc = {1, 1},
				dmg_mul = 12,
				recoil = {3, 5},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		self.tank.weapon.r870.FALLOFF= {
			{
				r = 100,
				acc = {0.95, 0.95},
				dmg_mul = 8,
				recoil = {1, 1.1},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 500,
				acc = {0.7, 0.95},
				dmg_mul = 7.5,
				recoil = {1, 1.25},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {0.5, 0.8},
				dmg_mul = 7,
				recoil = {1, 1.5},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {0.45, 0.65},
				dmg_mul = 5,
				recoil = {1.25, 1.5},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {0.3, 0.5},
				dmg_mul = 3,
				recoil = {1.5, 1.75},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		--old damage, everyone's favorite :^
		self.tank.weapon.saiga.aim_delay = {0, 0}
		self.tank.weapon.saiga.focus_delay = 0
		self.tank.weapon.saiga.FALLOFF = {
			{
				r = 100,
				acc = {1, 1},
				dmg_mul = 8,
				recoil = {0.4, 0.7},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 500,
				acc = {1, 1},
				dmg_mul = 7.5,
				recoil = {0.4, 0.7},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 7,
				recoil = {0.45, 0.8},
				mode = {
					1,
					2,
					2,
					0
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 5,
				recoil = {0.45, 0.8},
				mode = {
					3,
					2,
					2,
					0
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 3.5,
				recoil = {1, 1.2},
				mode = {
					3,
					1,
					1,
					0
				}
			}
		}
		self.tank.weapon.ak47.FALLOFF = {
			{
				r = 100,
				acc = {1, 1},
				dmg_mul = 5,
				recoil = {0, 0},
				mode = {
					0,
					0,
					0,
					1
				}
			},
			{
				r = 500,
				acc = {1, 1},
				dmg_mul = 5,
				recoil = {0, 0},
				mode = {
					0,
					0,
					0,
					6
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 5,
				recoil = {0, 0},
				mode = {
					0,
					0,
					2,
					6
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 5,
				recoil = {0, 0},
				mode = {
					0,
					0,
					2,
					6
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 5,
				recoil = {0, 0},
				mode = {
					0,
					0,
					2,
					6
				}
			}
		}
		self.tank.weapon.ak47.aim_delay = {0, 0}
		self.tank.weapon.ak47.focus_delay = 0
		self.shield.weapon.mp9.aim_delay = {0, 0}
		self.shield.weapon.mp9.focus_delay = 0
		self.shield.weapon.mp9.FALLOFF = {
			{
				r = 0,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.35, 0.35},
				mode = {
					0.2,
					2,
					4,
					10
				}
			},
			{
				r = 700,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.35, 0.55},
				mode = {
					0.2,
					2,
					4,
					10
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.35, 0.55},
				mode = {
					0.2,
					2,
					4,
					10
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.35, 1},
				mode = {
					2,
					5,
					6,
					4
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.5, 1.2},
				mode = {
					6,
					4,
					2,
					0
				}
			}
		}
		self.shield.weapon.c45.aim_delay = {0, 0}
		self.shield.weapon.c45.focus_delay = 0
		self.shield.weapon.c45.FALLOFF = {
			{
				r = 0,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.35, 0.45},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 700,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.35, 0.45},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.35, 0.45},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.35, 0.65},
				mode = {
					1,
					0,
					0,
					0
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 4,
				recoil = {0.35, 1.5},
				mode = {
					1,
					0,
					0,
					0
				}
			}
		}
		self.hector_boss.weapon.saiga.FALLOFF = {
			{
				r = 200,
				acc = {1, 1},
				dmg_mul = 3.14,
				recoil = {0.4, 0.7},
				mode = {
					0,
					1,
					2,
					1
				}
			},
			{
				r = 500,
				acc = {1, 1},
				dmg_mul = 2.5,
				recoil = {0.4, 0.7},
				mode = {
					0,
					3,
					3,
					1
				}
			},
			{
				r = 1000,
				acc = {1, 1},
				dmg_mul = 2.1,
				recoil = {0.45, 0.8},
				mode = {
					1,
					2,
					2,
					0
				}
			},
			{
				r = 2000,
				acc = {1, 1},
				dmg_mul = 1.8,
				recoil = {0.45, 0.8},
				mode = {
					3,
					2,
					2,
					0
				}
			},
			{
				r = 3000,
				acc = {1, 1},
				dmg_mul = 1.4,
				recoil = {1, 1.2},
				mode = {
					3,
					1,
					1,
					0
				}
			}
		}
		
	end
end