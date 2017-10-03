if DW.settings.dw_enemy_toggle_value and DW.settings.dw_baby_toggle_value then
log("[Death Wish+] host only changes and main changes are both on!!! disabling mod.")
return
end
if Global.load_level == true then 	
	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	if (DW.settings.dw_enemy_toggle_value and difficulty == "overkill_290") or (DW.settings.dw_enemy_toggle_value and difficulty == "sm_wish") then
		if Global.load_level == true and not PackageManager:loaded("packages/lvl_help") then
			PackageManager:load("packages/lvl_help")
		end
		function GroupAITweakData:_init_task_data(difficulty_index, difficulty)
			local is_console = SystemInfo:platform() ~= Idstring("WIN32")
			self.max_nr_simultaneous_boss_types = 0
			self.difficulty_curve_points = {0.5}
			if difficulty_index == 7 then
				self.smoke_and_flash_grenade_timeout = {10, 20}
			elseif difficulty_index == 8 then
				self.smoke_and_flash_grenade_timeout = {5, 10}
			else
				self.smoke_and_flash_grenade_timeout = {10, 20}
			end
			if difficulty_index == 7 then
				self.smoke_grenade_lifetime = 30
			elseif difficulty_index == 8 then
				self.smoke_grenade_lifetime = 45
			else
				self.smoke_grenade_lifetime = 7.5
			end
			self.flash_grenade_lifetime = 7.5
			self.flash_grenade = {
			timer = 3,
			range = 1000,
			light_color = Vector3(255, 0, 0),
			light_range = 300,
			light_specular = 1,
			beep_speed = {0.1, 0.025},
			beep_fade_speed = 4,
			beep_multi = 0.3
			}
			if difficulty_index < 6 then
				self.flash_grenade.timer = 3
			else
				self.flash_grenade.timer = 2
			end
			self.optimal_trade_distance = {0, 0}
			self.bain_assault_praise_limits = {1, 3}
			if difficulty_index <= 2 then
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {180, 300},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			elseif difficulty_index == 3 then
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {60, 120},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			elseif difficulty_index == 4 then
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {45, 60},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			elseif difficulty_index == 5 then
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {20, 40},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			else
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {20, 40},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			end
			self.besiege.regroup.duration = {
				15,
				15,
				15
			}
			self.besiege.assault = {}
			self.besiege.assault.anticipation_duration = {
				{30, 1},
				{30, 1},
				{45, 0.5}
			}
			self.besiege.assault.build_duration = 35
			if difficulty_index == 7 then
				self.besiege.assault.sustain_duration_min = {
					120,
					180,
					240
				}
				self.besiege.assault.sustain_duration_max = {
					120,
					180,
					240
				}
				self.besiege.assault.sustain_duration_balance_mul = {
					1,
					1,
					1,
					1.3
				}
			elseif difficulty_index == 8 then
				self.besiege.assault.sustain_duration_min = {
					160,
					240,
					300
				}
				self.besiege.assault.sustain_duration_max = {
					180,
					240,
					300
				}
				self.besiege.assault.sustain_duration_balance_mul = {
					1.2,
					1.2,
					1.2,
					1.5
				}
			else
				self.besiege.assault.sustain_duration_min = {
					0,
					80,
					120
				}
				self.besiege.assault.sustain_duration_max = {
					0,
					80,
					120
				}
				self.besiege.assault.sustain_duration_balance_mul = {
					1,
					1.1,
					1.2,
					1.3
				}
			end
			self.besiege.assault.fade_duration = 5
			if difficulty_index <= 2 then
				self.besiege.assault.delay = {
					80,
					70,
					30
				}
			elseif difficulty_index == 3 then
				self.besiege.assault.delay = {
					45,
					35,
					20
				}
			elseif difficulty_index == 4 then
				self.besiege.assault.delay = {
					40,
					30,
					20
				}
			elseif difficulty_index == 5 then
				self.besiege.assault.delay = {
					30,
					20,
					15
				}
			elseif difficulty_index == 8 then
				self.besiege.assault.delay = {
					35,
					35,
					35
				}
			else
				self.besiege.assault.delay = {
					25,
					25,
					25
				}
			end
			if difficulty_index <= 5 then
				self.besiege.assault.hostage_hesitation_delay = {
					30,
					30,
					30
				}
			else
				self.besiege.assault.hostage_hesitation_delay = {
					10,
					10,
					10
				}
			end
			if is_console then
				self.besiege.assault.force = {
					0,
					4,
					7
				}
				self.besiege.assault.force_pool = {
					0,
					60,
					100
				}
			else
				self.besiege.assault.force = {
					7,
					9,
					14
				}
				self.besiege.assault.force_pool = {
					80,
					160,
					240
				}
			end
			if is_console then
				if difficulty_index <= 2 then
					self.besiege.assault.force_balance_mul = {
						1,
						1.1,
						1.2,
						1.3
					}
					self.besiege.assault.force_pool_balance_mul = {
						1,
						1.1,
						1.2,
						1.3
					}
				elseif difficulty_index == 3 then
					self.besiege.assault.force_balance_mul = {
						1.2,
						1.4,
						1.6,
						1.8
					}
					self.besiege.assault.force_pool_balance_mul = {
						1.2,
						1.4,
						1.6,
						1.8
					}
				elseif difficulty_index == 4 then
					self.besiege.assault.force_balance_mul = {
						1.6,
						1.8,
						2,
						2.2
					}
					self.besiege.assault.force_pool_balance_mul = {
						1.7,
						2,
						2.2,
						2.4
					}
				elseif difficulty_index == 5 then
					self.besiege.assault.force_balance_mul = {
						1.8,
						2.1,
						2.4,
						2.8
					}
					self.besiege.assault.force_pool_balance_mul = {
						2.2,
						2.4,
						2.6,
						2.8
					}
				else
					self.besiege.assault.force_balance_mul = {
						1,
						1.5,
						2,
						2.5,
						3,
						3.5,
						4,
						4.5,
						5,
						5.5,
						6,
						6.5,
						7,
						7.5,
						8,
						8.5,
						9,
						9.5,
						10,
						10.5
					}
				self.besiege.assault.force_pool_balance_mul = {
						1.5,
						2.5,
						4,
						6,
						8,
						10,
						12,
						14,
						16,
						18,
						20,
						22,
						24,
						26,
						28,
						30,
						32,
						34,
						36
					}
				end
			elseif difficulty_index <= 2 then
				self.besiege.assault.force_balance_mul = {
					0.9,
					1.5,
					2,
					2.25
				}
				self.besiege.assault.force_pool_balance_mul = {
					1,
					1.5,
					2,
					3
				}
			elseif difficulty_index == 3 then
				self.besiege.assault.force_balance_mul = {
					1,
					1.4,
					1.6,
					1.9
				}
				self.besiege.assault.force_pool_balance_mul = {
					1.2,
					1.4,
					1.6,
					1.9
				}
			elseif difficulty_index == 4 then
				self.besiege.assault.force_balance_mul = {
					1.4,
					1.8,
					2,
					2.4
				}
				self.besiege.assault.force_pool_balance_mul = {
					1.7,
					2,
					2.2,
					2.5
				}
			elseif difficulty_index == 5 then
				self.besiege.assault.force_balance_mul = {
					2,
					2.5,
					2.9,
					3.2
				}
				self.besiege.assault.force_pool_balance_mul = {
					2.2,
					2.4,
					2.6,
					3
				}
			else
				self.besiege.assault.force_balance_mul = {
						1,
						1.5,
						2,
						2.5,
						3,
						3.5,
						4,
						4.5,
						5,
						5.5,
						6,
						6.5,
						7,
						7.5,
						8,
						8.5,
						9,
						9.5,
						10,
						10.5
					}
				self.besiege.assault.force_pool_balance_mul = {
						1.5,
						2.5,
						4,
						6,
						8,
						10,
						12,
						14,
						16,
						18,
						20,
						22,
						24,
						26,
						28,
						30,
						32,
						34,
						36
					}


			end
			if difficulty_index <= 2 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.2,
						0.2,
						0.2
					},
					tac_swat_shotgun_flank = {
						0.2,
						0.2,
						0.2
					},
					tac_swat_rifle = {
						0.2,
						0.2,
						0.2
					},
					tac_swat_rifle_flank = {
						0.2,
						0.2,
						0.2
					},
					tac_shield_wall_ranged = {
						0.2,
						0.2,
						0.2
					},
					tac_shield_wall_charge = {
						0,
						0,
						0
					},
					tac_shield_wall = {
						0,
						0,
						0
					},
					tac_tazer_flanking = {
						0,
						0,
						0
					},
					tac_tazer_charge = {
						0,
						0,
						0
					},
					single_spoocs = {
						0,
						0,
						0
					},
					tac_bull_rush = {
						0,
						0,
						0
					}
				}
			elseif difficulty_index == 3 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.2,
						0.2,
						0.2
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_shield_wall_ranged = {
						0.1,
						0.1,
						0.1
					},
					tac_shield_wall_charge = {
						0.1,
						0.1,
						0.1
					},
					tac_shield_wall = {
						0.1,
						0.1,
						0.1
					},
					tac_tazer_flanking = {
						0.1,
						0.1,
						0.1
					},
					tac_tazer_charge = {
						0.1,
						0.1,
						0.1
					},
					single_spoocs = {
						0,
						0,
						0
					},
					tac_bull_rush = {
						0,
						0,
						0
					}
				}
			elseif difficulty_index == 4 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.19,
						0.19,
						0.19
					},
					tac_swat_shotgun_flank = {
						0.19,
						0.19,
						0.19
					},
					tac_swat_rifle = {
						0.19,
						0.19,
						0.19
					},
					tac_swat_rifle_flank = {
						0.19,
						0.19,
						0.19
					},
					tac_shield_wall_ranged = {
						0.03,
						0.03,
						0.03
					},
					tac_shield_wall_charge = {
						0.025,
						0.025,
						0.025
					},
					tac_shield_wall = {
						0.025,
						0.025,
						0.025
					},
					tac_tazer_flanking = {
						0.045,
						0.045,
						0.045
					},
					tac_tazer_charge = {
						0.045,
						0.045,
						0.045
					},
					FBI_spoocs = {
						0.005,
						0.005,
						0.005
					},
					tac_bull_rush = {
						0.01,
						0.01,
						0.01
					}
				}
			elseif difficulty_index == 5 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.19,
						0.19,
						0.19
					},
					tac_swat_shotgun_flank = {
						0.19,
						0.19,
						0.19
					},
					tac_swat_rifle = {
						0.19,
						0.19,
						0.19
					},
					tac_swat_rifle_flank = {
						0.19,
						0.19,
						0.19
					},
					tac_shield_wall_ranged = {
						0.03,
						0.03,
						0.03
					},
					tac_shield_wall_charge = {
						0.025,
						0.025,
						0.025
					},
					tac_shield_wall = {
						0.025,
						0.025,
						0.025
					},
					tac_tazer_flanking = {
						0.045,
						0.045,
						0.045
					},
					tac_tazer_charge = {
						0.045,
						0.045,
						0.045
					},
					FBI_spoocs = {
						0.005,
						0.005,
						0.005
					},
					tac_bull_rush = {
						0.01,
						0.01,
						0.01
					}
				}
			elseif difficulty_index == 6 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.18,
						0.18,
						0.18
					},
					tac_swat_shotgun_flank = {
						0.18,
						0.18,
						0.18
					},
					tac_swat_rifle = {
						0.18,
						0.18,
						0.18
					},
					tac_swat_rifle_flank = {
						0.18,
						0.18,
						0.18
					},
					tac_shield_wall_ranged = {
						0.03,
						0.03,
						0.03
					},
					tac_shield_wall_charge = {
						0.04,
						0.04,
						0.04
					},
					tac_shield_wall = {
						0.03,
						0.03,
						0.03
					},
					tac_tazer_flanking = {
						0.05,
						0.05,
						0.05
					},
					tac_tazer_charge = {
						0.05,
						0.05,
						0.05
					},
					FBI_spoocs = {
						0.005,
						0.005,
						0.005
					},
					tac_bull_rush = {
						0.015,
						0.015,
						0.015
					}
				}
			elseif difficulty_index == 7 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.18,
						0.18,
						0.18
					},
					tac_swat_shotgun_flank = {
						0.18,
						0.18,
						0.18
					},
					tac_swat_rifle = {
						0.18,
						0.18,
						0.18
					},
					tac_swat_rifle_flank = {
						0.18,
						0.18,
						0.18
					},
					tac_shield_wall_ranged = {
						0.03,
						0.03,
						0.03
					},
					tac_shield_wall_charge = {
						0.04,
						0.04,
						0.04
					},
					tac_shield_wall = {
						0.03,
						0.03,
						0.03
					},
					tac_tazer_flanking = {
						0.05,
						0.05,
						0.05
					},
					tac_tazer_charge = {
						0.05,
						0.05,
						0.05
					},
					FBI_spoocs = {
						0.005,
						0.005,
						0.005
					},
					tac_bull_rush = {
						0.015,
						0.015,
						0.015
					},
					hostage_rescue_team = {
						0.01,
						0.01,
						0.01
					}
				}
			elseif difficulty_index == 8 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.13,
						0.13,
						0.13
					},
					tac_swat_shotgun_flank = {
						0.13,
						0.13,
						0.13
					},
					tac_swat_rifle = {
						0.13,
						0.13,
						0.13
					},
					tac_swat_rifle_flank = {
						0.13,
						0.13,
						0.13
					},
					tac_shield_wall_ranged = {
						0.06,
						0.06,
						0.06
					},
					tac_shield_wall_charge = {
						0.05,
						0.05,
						0.05
					},
					tac_shield_wall = {
						0.05,
						0.05,
						0.05
					},
					tac_tazer_flanking = {
						0.12,
						0.12,
						0.12
					},
					tac_tazer_charge = {
						0.12,
						0.12,
						0.12
					},
					FBI_spoocs = {
						0.05,
						0.05,
						0.05
					},
					tac_bull_rush = {
						0.09,
						0.12,
						0.15
					},
					hostage_rescue_team = {
						0.02,
						0.02,
						0.02
					}
				}
			else
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.13,
						0.13,
						0.13
					},
					tac_swat_shotgun_flank = {
						0.13,
						0.13,
						0.13
					},
					tac_swat_rifle = {
						0.13,
						0.13,
						0.13
					},
					tac_swat_rifle_flank = {
						0.13,
						0.13,
						0.13
					},
					tac_shield_wall_ranged = {
						0.06,
						0.06,
						0.06
					},
					tac_shield_wall_charge = {
						0.05,
						0.05,
						0.05
					},
					tac_shield_wall = {
						0.05,
						0.05,
						0.05
					},
					tac_tazer_flanking = {
						0.09,
						0.09,
						0.09
					},
					tac_tazer_charge = {
						0.09,
						0.09,
						0.09
					},
					FBI_spoocs = {
						0.01,
						0.01,
						0.01
					},
					tac_bull_rush = {
						0.09,
						0.09,
						0.09
					}
				}
			end
			self.besiege.assault.groups.single_spooc = {
				0,
				0,
				0
			}
			self.besiege.assault.groups.Phalanx = {
				0,
				0,
				0
			}
			self.besiege.reenforce.interval = {
				10,
				20,
				30
			}
			if difficulty_index <= 2 then
				self.besiege.reenforce.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			elseif difficulty_index == 3 then
				self.besiege.reenforce.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			elseif difficulty_index == 4 then
				self.besiege.reenforce.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			elseif difficulty_index == 5 then
				self.besiege.reenforce.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			else
				self.besiege.reenforce.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			end
			self.besiege.recon.interval = {
				5,
				5,
				5
			}
			self.besiege.recon.interval_variation = 40
			if difficulty_index < 6 then
				self.besiege.recon.force = {
					2,
					4,
					6
				}
			else
				self.besiege.recon.force = {
					3,
					4,
					6
				}
			end
			if difficulty_index <= 2 then
				self.besiege.recon.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			elseif difficulty_index == 3 then
				self.besiege.recon.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			elseif difficulty_index == 4 then
				self.besiege.recon.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			elseif difficulty_index == 5 then
				self.besiege.recon.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			else
				self.besiege.recon.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					},
					hostage_rescue_team = {
						1,
						1,
						1
					}
				}
			end
			self.besiege.recon.groups.single_spooc = {
				0,
				0,
				0
			}
			self.besiege.recon.groups.Phalanx = {
				0,
				0,
				0
			}
			self.besiege.cloaker.groups = {
				single_spooc = {
					1,
					1,
					1
				}
			}
			self.street = deep_clone(self.besiege)
			self.phalanx.minions.min_count = 4
			self.phalanx.minions.amount = 10
			self.phalanx.minions.distance = 100
			self.phalanx.vip.health_ratio_flee = 0.202
			self.phalanx.vip.damage_reduction = {
				start = 0.1,
				increase = 0.05,
				max = 0.5,
				increase_intervall = 5
			}
			if difficulty_index == 7 then
				self.phalanx.check_spawn_intervall = 900
				self.phalanx.chance_increase_intervall = 900
			elseif difficulty_index == 8 then
				self.phalanx.check_spawn_intervall = 600
				self.phalanx.chance_increase_intervall = 600
			else
				self.phalanx.check_spawn_intervall = 120
				self.phalanx.chance_increase_intervall = 120
			end
			if difficulty_index == 4 then
				self.phalanx.spawn_chance = {
					start = 0,
					increase = 0.05,
					decrease = 0.7,
					max = 1,
					respawn_delay = 300000
				}
			elseif difficulty_index == 5 then
				self.phalanx.spawn_chance = {
					start = 0.01,
					increase = 0.09,
					decrease = 0.7,
					max = 1,
					respawn_delay = 300000
				}
			elseif difficulty_index == 7 then
					self.phalanx.spawn_chance = {
					start = 0, --default .05
					increase = .5,
					decrease = 1,
					max = 1,
					respawn_delay = 600000000000000000
				}
			elseif difficulty_index == 8 then
					self.phalanx.spawn_chance = {
					start = 0, --default .05
					increase = .5,
					decrease = 1,
					max = 1,
					respawn_delay = 600000000000000000
				}
			else
				self.phalanx.spawn_chance = {
					start = 0,
					increase = 0,
					decrease = 0,
					max = 0,
					respawn_delay = 120
				}
			end
			self.safehouse = deep_clone(self.besiege)
		end

		function GroupAITweakData:_init_unit_categories(difficulty_index)
			local access_type_walk_only = {walk = true}
			local access_type_all = {walk = true, acrobatic = true}
			local Net = _G.LuaNetworking
			local job_id = managers.job and managers.job:current_job_id()
			local tweak = job_id and tweak_data.narrative.jobs[job_id]
			local job = Global.level_data and Global.level_data.level_id
			Month = os.date("%m")	--thanks sc for this
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
			elseif difficulty_index == 7 then
				self.special_unit_spawn_limits = {
					tank = 2,
					tank_hw = 1,
					taser = 3,
					spooc = 3,
					shield = 4,
					medic = 4,
					phalanx_assault = 2
				}
			elseif difficulty_index == 8 then
				self.special_unit_spawn_limits = {
					tank = 4,
					tank_hw = 2,
					taser = 4,
					spooc = 4,
					shield = 4,
					medic = 4,
					phalanx_assault = 4
				}
			else
				self.special_unit_spawn_limits = {
					tank = 3,
					taser = 4,
					spooc = 4,
					shield = 5
				}
			end
			self.unit_categories = {}
			if difficulty_index == 8 then
				self.unit_categories.spooc = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_spooc_asval_smg/ene_akan_fbi_spooc_asval_smg")
						}
					},
					access = access_type_all,
					special_type = "spooc"
				}
			else
				self.unit_categories.spooc = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_spook_1/ene_spook_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_spooc_asval_smg/ene_akan_fbi_spooc_asval_smg")
						}
					},
					access = access_type_all,
					special_type = "spooc"
				}
			end
			self.unit_categories.CS_cop_C45_R870 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_cop_1/ene_cop_1"),
						Idstring("units/payday2/characters/ene_cop_3/ene_cop_3"),
						Idstring("units/payday2/characters/ene_cop_4/ene_cop_4")
					},
					russia = {
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_r870/ene_akan_cs_cop_r870")
					}
				},
				access = access_type_walk_only
			}
			self.unit_categories.CS_cop_stealth_MP5 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_cop_2/ene_cop_2")
					},
					russia = {
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_akmsu_smg/ene_akan_cs_cop_akmsu_smg")
					}
				},
				access = access_type_walk_only
			}
			if difficulty_index == 8 then
				self.unit_categories.CS_swat_MP5 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_ak47_ass/ene_akan_cs_swat_ak47_ass")
						}
					},
					access = access_type_all
				}
				self.unit_categories.CS_swat_R870 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_benelli/ene_zeal_swat_heavy_benelli")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_r870/ene_akan_cs_swat_r870")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.CS_swat_MP5 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_swat_1/ene_swat_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_ak47_ass/ene_akan_cs_swat_ak47_ass")
						}
					},
					access = access_type_all
				}
				self.unit_categories.CS_swat_R870 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_swat_2/ene_swat_2")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_r870/ene_akan_cs_swat_r870")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index == 8 then
				self.unit_categories.CS_heavy_M4 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy"),
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_heavy_ak47_ass/ene_akan_cs_heavy_ak47_ass")
						}
					},
					access = access_type_all
				}
				self.unit_categories.CS_heavy_R870 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_benelli/ene_zeal_swat_heavy_benelli")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_heavy_r870/ene_akan_cs_heavy_r870")
						}
					},
					access = access_type_all
				}
				self.unit_categories.CS_heavy_M4_w = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_heavy_ak47_ass/ene_akan_cs_heavy_ak47_ass")
						}
					},
					access = access_type_walk_only
				}
			else
				self.unit_categories.CS_heavy_M4 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_swat_heavy_1/ene_swat_heavy_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_heavy_ak47_ass/ene_akan_cs_heavy_ak47_ass")
						}
					},
					access = access_type_all
				}
				self.unit_categories.CS_heavy_R870 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_swat_heavy_r870/ene_swat_heavy_r870")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_heavy_r870/ene_akan_cs_heavy_r870")
						}
					},
					access = access_type_all
				}
				self.unit_categories.CS_heavy_M4_w = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_swat_heavy_1/ene_swat_heavy_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_heavy_ak47_ass/ene_akan_cs_heavy_ak47_ass")
						}
					},
					access = access_type_walk_only
				}
			end
			self.unit_categories.CS_tazer = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1"),
						Idstring("units/payday2/characters/ene_tazer_2/ene_tazer_2")
					},
					russia = {
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass")
					}
				},
				access = access_type_all,
				special_type = "taser"
			}
			if difficulty_index == 8 then
				self.unit_categories.CS_shield = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_shield_c45/ene_akan_cs_shield_c45")
						}
					},
					access = access_type_walk_only,
					special_type = "shield"
				}
			else
				self.unit_categories.CS_shield = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_shield_2/ene_shield_2")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_shield_c45/ene_akan_cs_shield_c45")
						}
					},
					access = access_type_walk_only,
					special_type = "shield"
				}
			end
			self.unit_categories.FBI_suit_C45_M4 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_fbi_1/ene_fbi_1"),
						Idstring("units/payday2/characters/ene_fbi_2/ene_fbi_2")
					},
					russia = {
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_ak47_ass/ene_akan_cs_cop_ak47_ass"),
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_ak47_ass/ene_akan_cs_cop_ak47_ass")
					}
				},
				access = access_type_all
			}
			self.unit_categories.FBI_suit_M4_MP5 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_fbi_2/ene_fbi_2"),
						Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3"),
						Idstring("units/payday2/characters/ene_fbi_4/ene_fbi_4")
					},
					russia = {
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg"),
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg")
					}
				},
				access = access_type_all
			}
			self.unit_categories.FBI_suit_stealth_MP5 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
					},
					russia = {
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg")
					}
				},
				access = access_type_all
			}
			if difficulty_index < 6 then
				self.unit_categories.FBI_swat_M4 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_ak47_ass/ene_akan_fbi_swat_ak47_ass")
						}
					},
					access = access_type_all
				}
			elseif difficulty_index < 8 then
				self.unit_categories.FBI_swat_M4 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_swat_1/ene_city_swat_1"),
							Idstring("units/payday2/characters/ene_city_swat_4/ene_city_swat_4")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.FBI_swat_M4 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index < 6 then
				self.unit_categories.FBI_swat_R870 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_r870/ene_akan_fbi_swat_r870")
						}
					},
					access = access_type_all
				}
			elseif difficulty_index < 8 then
				self.unit_categories.FBI_swat_R870 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_swat_2/ene_city_swat_2")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_r870/ene_akan_fbi_swat_dw_r870")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.FBI_swat_R870 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_benelli/ene_zeal_swat_heavy_benelli")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_r870/ene_akan_fbi_swat_dw_r870")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index < 6 then
				self.unit_categories.FBI_heavy_G36 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_all
				}
			elseif difficulty_index < 8 then
				self.unit_categories.FBI_heavy_G36 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_heavy_g36/ene_city_heavy_g36")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.FBI_heavy_G36 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_g36/ene_zeal_swat_heavy_g36")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index < 6 then
				self.unit_categories.FBI_heavy_UMP = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1") --my mod has no effect below index 7 anyway so i can put whatever i want here
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_all
				}
			elseif difficulty_index < 8 then
			--UMP flank leaders
				self.unit_categories.FBI_heavy_UMP = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_swat_3/ene_city_swat_3")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.FBI_heavy_UMP = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_ump/ene_zeal_swat_heavy_ump")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index < 6 then
				self.unit_categories.FBI_heavy_SCAR = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_all
				}
			elseif difficulty_index < 8 then
			--SCAR cover fire leaders
				self.unit_categories.FBI_heavy_SCAR = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_swat_4/ene_city_swat_4")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.FBI_heavy_SCAR = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_scar/ene_zeal_swat_heavy_scar")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index < 6 then
				self.unit_categories.FBI_heavy_R870 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_r870/ene_akan_fbi_heavy_r870")
						}
					},
					access = access_type_all
				}
			elseif difficulty_index < 8 then
				self.unit_categories.FBI_heavy_R870 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_swat_2/ene_city_swat_2")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_r870/ene_akan_fbi_heavy_r870")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.FBI_heavy_R870 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_benelli/ene_zeal_swat_heavy_benelli")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_r870/ene_akan_fbi_heavy_r870")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index < 8 then
				self.unit_categories.FBI_heavy_G36_w = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_walk_only
				}
			else
				self.unit_categories.FBI_heavy_G36_w = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_g36/ene_zeal_swat_heavy_g36")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_walk_only
				}
			end
			if difficulty_index < 6 then
				self.unit_categories.FBI_shield = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_shield_1/ene_shield_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_sr2_smg/ene_akan_fbi_shield_sr2_smg")
						}
					},
					access = access_type_walk_only,
					special_type = "shield"
				}
			elseif difficulty_index < 8 then
				self.unit_categories.FBI_shield = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_shield/ene_city_shield")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_dw_sr2_smg/ene_akan_fbi_shield_dw_sr2_smg")
						}
					},
					access = access_type_walk_only,
					special_type = "shield"
				}
			else
				self.unit_categories.FBI_shield = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_dw_sr2_smg/ene_akan_fbi_shield_dw_sr2_smg")
						}
					},
					access = access_type_walk_only,
					special_type = "shield"
				}
			end
			if difficulty_index < 5 then
				self.unit_categories.FBI_tank = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_r870/ene_akan_fbi_tank_r870")
						}
					},
					access = access_type_all,
					special_type = "tank"
				}
			elseif difficulty_index <= 6 then
				self.unit_categories.FBI_tank = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1"),
							Idstring("units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_saiga/ene_akan_fbi_tank_saiga"),
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_r870/ene_akan_fbi_tank_r870")
						}
					},
					access = access_type_all,
					special_type = "tank"
				}
			elseif difficulty_index <= 7 then
				self.unit_categories.FBI_tank = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_bulldozer_5/ene_bulldozer_5"),
							Idstring("units/payday2/characters/ene_bulldozer_6/ene_bulldozer_6"),
							Idstring("units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3"),
							Idstring("units/payday2/characters/ene_bulldozer_5/ene_bulldozer_5"),
							Idstring("units/payday2/characters/ene_bulldozer_6/ene_bulldozer_6"),
							Idstring("units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3"),
							Idstring("units/pd2_dlc_drm/characters/ene_bulldozer_medic/ene_bulldozer_medic"),
							Idstring("units/pd2_dlc_drm/characters/ene_bulldozer_minigun/ene_bulldozer_minigun")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_r870/ene_akan_fbi_tank_r870"),
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_saiga/ene_akan_fbi_tank_saiga"),
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_rpk_lmg/ene_akan_fbi_tank_rpk_lmg")
						}
					},
					access = access_type_all,
					special_type = "tank"
				}
			else
				self.unit_categories.FBI_tank = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zealdozer_benelli/ene_zealdozer_benelli"),
							Idstring("units/pd2_dlc_gitgud/characters/ene_zealdozer_saiga/ene_zealdozer_saiga"),
							Idstring("units/pd2_dlc_gitgud/characters/ene_zealdozer_m249/ene_zealdozer_m249"),
							Idstring("units/pd2_dlc_drm/characters/ene_bulldozer_medic/ene_bulldozer_medic"),
							Idstring("units/pd2_dlc_drm/characters/ene_bulldozer_minigun/ene_bulldozer_minigun")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_r870/ene_akan_fbi_tank_r870"),
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_saiga/ene_akan_fbi_tank_saiga"),
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_rpk_lmg/ene_akan_fbi_tank_rpk_lmg")
						}
					},
					access = access_type_all,
					special_type = "tank"
				}
			end
			self.unit_categories.medic_M4 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4")
					},
					russia = {
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4")
					}
				},
				access = access_type_all,
				special_type = "medic"
			}
			self.unit_categories.medic_R870 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870")
					},
					russia = {
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870")
					}
				},
				access = access_type_all,
				special_type = "medic"
			}
			self.unit_categories.Phalanx_minion = {
				unit_types = {
					america = {
						Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
					},
					russia = {
						Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
					}
				},
				access = access_type_walk_only,
				special_type = "shield"
			}
			self.unit_categories.Phalanx_vip = {
				unit_types = {
					america = {
						Idstring("units/pd2_dlc_vip/characters/ene_vip_1/ene_vip_1")
					},
					russia = {
						Idstring("units/pd2_dlc_vip/characters/ene_vip_1/ene_vip_1")
					}
				},
				access = access_type_walk_only,
				special_type = "shield"
			}
			if difficulty_index < 8 then
				self.unit_categories.Phalanx_minion_assault = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_phalanx_2/ene_phalanx_2")
						},
						russia = {
							Idstring("units/payday2/characters/ene_phalanx_2/ene_phalanx_2")
						}
					},
					access = access_type_walk_only,
					special_type = "phalanx_assault"
				}
			else
				self.unit_categories.Phalanx_minion_assault = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_phalanx/ene_zeal_swat_phalanx")
						},
						russia = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_phalanx/ene_zeal_swat_phalanx")
						}
					},
					access = access_type_walk_only,
					special_type = "phalanx_assault"
				}
			end
			if job == "haunted" or job == "nail" or job == "help" or Month == "10" then
				if difficulty_index < 6 then
					self.unit_categories.titan = {
						unit_types = {
							america = {
								Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1")
							},
							russia = {
								Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass")
							}
						},
						access = access_type_all,
						special_type = "taser"
					}
				elseif difficulty_index < 8 then
					self.unit_categories.titan = {
						unit_types = {
							america = {
								Idstring("units/payday2/characters/ene_bulldozer_4/ene_bulldozer_4")
							},
							russia = {
								Idstring("units/payday2/characters/ene_bulldozer_4/ene_bulldozer_4")
							}
						},
						access = access_type_walk_only,
						special_type = "tank_hw"
					}
				else
					self.unit_categories.titan = {
						unit_types = {
							america = {
								Idstring("units/pd2_dlc_help/characters/ene_zeal_bulldozer_halloween/ene_zeal_bulldozer_halloween")
							},
							russia = {
								Idstring("units/pd2_dlc_help/characters/ene_zeal_bulldozer_halloween/ene_zeal_bulldozer_halloween")
							}
						},
						access = access_type_walk_only,
						special_type = "tank_hw"
					}
				end
			else
				if difficulty_index < 6 then
					self.unit_categories.titan = {
						unit_types = {
							america = {
								Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1")
							},
							russia = {
								Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass")
							}
						},
						access = access_type_all,
						special_type = "taser"
					}
				elseif difficulty_index < 8 then
					self.unit_categories.titan = {
						unit_types = {
							america = {
								Idstring("units/payday2/characters/ene_bulldozer_7/ene_bulldozer_7")
							},
							russia = {
								Idstring("units/payday2/characters/ene_bulldozer_7/ene_bulldozer_7")
							}
						},
						access = access_type_walk_only,
						special_type = "tank_hw"
					}
				else
					self.unit_categories.titan = {
						unit_types = {
							america = {
								Idstring("units/pd2_dlc_gitgud/characters/ene_zealdozer_titan/ene_zealdozer_titan")
							},
							russia = {
								Idstring("units/pd2_dlc_gitgud/characters/ene_zealdozer_titan/ene_zealdozer_titan")
							}
						},
						access = access_type_walk_only,
						special_type = "tank_hw"
					}
				end
			end
		end
		function GroupAITweakData:_init_enemy_spawn_groups(difficulty_index)
			self._tactics = {
				Phalanx_minion = {
					"smoke_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"shield",
					"deathguard"
				},
				Phalanx_vip = {
					"smoke_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"shield",
					"deathguard",
					"murder"
				},
				swat_shotgun_rush = {
					"charge",
					"deathguard",
					"flash_grenade"
				},
				swat_shotgun_flank = {
					"charge",
					"flank",
					"deathguard",
					"flash_grenade"
				},
				swat_rifle = {
					"ranged_fire",
					"provide_coverfire",
					"provide_support"
				},
				swat_rifle_flank = {
					"charge",
					"flank",
					"deathguard",
					"flash_grenade"
				},
				shield_wall_ranged = {
					"shield",
					"ranged_fire",
					"provide_support "
				},
				shield_support_ranged = {
					"shield_cover",
					"ranged_fire",
					"provide_coverfire"
				},
				shield_wall_charge = {
					"shield",
					"charge",
					"murder"
				},
				shield_support_charge = {
					"shield_cover",
					"charge",
					"flash_grenade"
				},
				shield_wall = {
					"shield",
					"ranged_fire",
					"provide_support",
					"murder",
					"deathguard"
				},
				tazer_flanking = {
					"flanking",
					"charge",
					"smoke_grenade",
					"murder",
					"flash_grenade"
				},
				tazer_charge = {
					"charge",
					"murder",
					"flash_grenade"
				},
				tank_rush = {
					"charge",
					"murder",
					"deathguard",
					"flash_grenade"
				},
				hostage_rescue_team = {
					"flank",
					"ranged_fire",
					"flash_grenade"
				},
				spooc = {
					"charge",
					"shield_cover",
					"smoke_grenade"
				}
			}
			self.enemy_spawn_groups = {}
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {3, 3},
					spawn = {
						{
							unit = "CS_swat_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "CS_heavy_R870",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_swat_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "CS_heavy_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 1,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.2,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 3,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 1
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 1,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 3,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 1
						}
					}
				}
			end
			self.enemy_spawn_groups = {}
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {3, 3},
					spawn = {
						{
							unit = "CS_swat_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "CS_heavy_R870",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_swat_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "CS_heavy_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 1,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.2,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 3,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 1
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 1,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 3,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.5,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 1
						}
					}
				}
			end
			self.enemy_spawn_groups = {}
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {3, 3},
					spawn = {
						{
							unit = "CS_swat_MP5",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "CS_heavy_M4",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_swat_MP5",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "CS_heavy_M4",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 1,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.2,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 3,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_rifle,
							rank = 3
						},
						{
							unit = "FBI_heavy_SCAR",
							freq = 3,
							amount_min = 2,
							amount_max = 3,
							tactics = self._tactics.swat_rifle,
							rank = 1
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 2
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 1,
							amount_max = 5,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 3,
							amount_max = 5,
							tactics = self._tactics.swat_rifle,
							rank = 3
						},
						{
							unit = "FBI_heavy_SCAR",
							freq = 3,
							amount_min = 2,
							amount_max = 3,
							tactics = self._tactics.swat_rifle,
							rank = 1
						},
						{
							unit = "medic_M4",
							freq = 0.5,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 2
						}
					}
				}
			end
			self.enemy_spawn_groups = {}
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {3, 3},
					spawn = {
						{
							unit = "CS_swat_MP5",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "CS_heavy_M4",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_swat_MP5",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "CS_heavy_M4",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 1,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.2,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 3,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						},
						{
							unit = "FBI_heavy_UMP",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_rifle_flank,
							rank = 1
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 1,
							amount_max = 5,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 3,
							amount_max = 5,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						},
						{
							unit = "FBI_heavy_UMP",
							freq = 3,
							amount_max = 5,
							tactics = self._tactics.swat_rifle_flank,
							rank = 1
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						}
					}
				}
			end
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_swat_MP5",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "CS_shield",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_heavy_M4",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "CS_shield",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.2,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_max = 4,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.5,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			end
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_swat_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						},
						{
							unit = "CS_shield",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_heavy_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						},
						{
							unit = "CS_shield",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.2,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.shield_support_charge,
							rank = 1
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_max = 3,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.shield_support_charge,
							rank = 1
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_max = 4,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.5,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			end
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 4,
							amount_min = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.2,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_wall,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 4,
							amount_min = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_wall,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						},
						{
							unit = "Phalanx_minion_assault",
							freq = 2,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 1
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_wall,
							rank = 2
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						},
						{
							unit = "Phalanx_minion_assault",
							freq = 2,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 1
						},
						{
							unit = "medic_M4",
							freq = 0.5,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_wall,
							rank = 2
						}
					}
				}
			end
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_tazer_flanking = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_flanking,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_tazer_flanking = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_flanking,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_tazer_flanking = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_flanking,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_tazer_flanking = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_flanking,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_tazer_flanking = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_flanking,
							rank = 3
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_tazer_flanking = {
					amount = {2, 2},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 2,
							tactics = self._tactics.tazer_flanking,
							rank = 1
						},
						{
							unit = "FBI_heavy_UMP",
							freq = 3,
							amount_max = 2,
							tactics = self._tactics.tazer_flanking,
							rank = 2
						}
					}
				}
			end
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_tazer_charge = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_tazer_charge = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_tazer_charge = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_tazer_charge = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_tazer_charge = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_charge,
							rank = 3
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_tazer_charge = {
					amount = {2, 2},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 2,
							amount_max = 3,
							tactics = self._tactics.tazer_charge,
							rank = 1
						},
						{
							unit = "FBI_heavy_R870",
							freq = 3,
							amount_max = 2,
							tactics = self._tactics.tazer_charge,
							rank = 2
						}
					}
				}
			end
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_bull_rush = {
					amount = {1, 1},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tank_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_bull_rush = {
					amount = {1, 1},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tank_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_bull_rush = {
					amount = {1, 1},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tank_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_bull_rush = {
					amount = {1, 1},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tank_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_bull_rush = {
					amount = {1, 1},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tank_rush,
							rank = 3
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_bull_rush = {
					amount = {2, 3},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_min = 1,
							amount_max = 2,
							tactics = self._tactics.tank_rush,
							rank = 1
						},
						{
							unit = "titan",
							freq = 0.10,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.tank_rush,
							rank = 1
						}
					}
				}
			end
				self.enemy_spawn_groups.hostage_rescue_team = {
					amount = {2, 2},
					spawn = {
						{
							unit = "FBI_suit_M4_MP5",
							freq = 1,
							amount_min = 1,
							amount_max = 3,
							tactics = self._tactics.hostage_rescue_team,
							rank = 1
						},
						{
							unit = "FBI_suit_C45_M4",
							freq = 1,
							amount_min = 2,
							amount_max = 6,
							tactics = self._tactics.hostage_rescue_team,
							rank = 2
						}
					}
				}
			self.enemy_spawn_groups.Phalanx = {
				amount = {
					self.phalanx.minions.amount + 1,
					self.phalanx.minions.amount + 1
				},
				spawn = {
					{
						unit = "Phalanx_vip",
						freq = 1,
						amount_min = 1,
						amount_max = 1,
						tactics = self._tactics.Phalanx_vip,
						rank = 2
					},
					{
						unit = "Phalanx_minion",
						freq = 1,
						amount_min = 1,
						tactics = self._tactics.Phalanx_minion,
						rank = 1
					}
				}
			}
			self.enemy_spawn_groups.single_spooc = {
				amount = {1, 1},
				spawn = {
					{
						unit = "spooc",
						freq = 1,
						amount_min = 1,
						tactics = self._tactics.spooc,
						rank = 1
					}
				}
			}
			self.enemy_spawn_groups.FBI_spoocs = self.enemy_spawn_groups.single_spooc
		end

	end
end

if Global.load_level == true then 	
	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	if (DW.settings.dw_baby_toggle_value and difficulty == "overkill_290") or (DW.settings.dw_baby_toggle_value and difficulty == "sm_wish") then
		function GroupAITweakData:_init_task_data(difficulty_index, difficulty)
			local is_console = SystemInfo:platform() ~= Idstring("WIN32")
			self.max_nr_simultaneous_boss_types = 0
			self.difficulty_curve_points = {0.5}
			if difficulty_index == 7 then
				self.smoke_and_flash_grenade_timeout = {10, 20}
			elseif difficulty_index == 8 then
				self.smoke_and_flash_grenade_timeout = {1, 2}
			else
				self.smoke_and_flash_grenade_timeout = {10, 20}
			end
			if difficulty_index == 7 then
				self.smoke_grenade_lifetime = 30
			elseif difficulty_index == 8 then
				self.smoke_grenade_lifetime = 45
			else
				self.smoke_grenade_lifetime = 7.5
			end
			self.flash_grenade_lifetime = 7.5
			self.flash_grenade = {
			timer = 3,
			range = 1000,
			light_color = Vector3(255, 0, 0),
			light_range = 300,
			light_specular = 1,
			beep_speed = {0.1, 0.025},
			beep_fade_speed = 4,
			beep_multi = 0.3
			}
			if difficulty_index < 6 then
				self.flash_grenade.timer = 3
			elseif difficulty_index < 8 then
				self.flash_grenade.timer = 2
			else
				self.flash_grenade.timer = 2
			end
			self.optimal_trade_distance = {0, 0}
			self.bain_assault_praise_limits = {1, 3}
			if difficulty_index <= 2 then
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {180, 300},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			elseif difficulty_index == 3 then
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {60, 120},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			elseif difficulty_index == 4 then
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {45, 60},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			elseif difficulty_index == 5 then
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {20, 40},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			else
				self.besiege.recurring_group_SO = {
					recurring_cloaker_spawn = {
						interval = {20, 40},
						retire_delay = 30
					},
					recurring_spawn_1 = {
						interval = {30, 60}
					}
				}
			end
			self.besiege.regroup.duration = {
				15,
				15,
				15
			}
			self.besiege.assault = {}
			self.besiege.assault.anticipation_duration = {
				{30, 1},
				{30, 1},
				{45, 0.5}
			}
			self.besiege.assault.build_duration = 35
			if difficulty_index == 7 then
				self.besiege.assault.sustain_duration_min = {
					120,
					180,
					240
				}
				self.besiege.assault.sustain_duration_max = {
					120,
					180,
					240
				}
				self.besiege.assault.sustain_duration_balance_mul = {
					1,
					1,
					1,
					1.3
				}
			elseif difficulty_index == 8 then
				self.besiege.assault.sustain_duration_min = {
					160,
					240,
					300
				}
				self.besiege.assault.sustain_duration_max = {
					180,
					240,
					300
				}
				self.besiege.assault.sustain_duration_balance_mul = {
					1.2,
					1.2,
					1.2,
					1.5
				}
			else
				self.besiege.assault.sustain_duration_min = {
					0,
					80,
					120
				}
				self.besiege.assault.sustain_duration_max = {
					0,
					80,
					120
				}
				self.besiege.assault.sustain_duration_balance_mul = {
					1,
					1.1,
					1.2,
					1.3
				}
			end
			self.besiege.assault.fade_duration = 5
			if difficulty_index <= 2 then
				self.besiege.assault.delay = {
					80,
					70,
					30
				}
			elseif difficulty_index == 3 then
				self.besiege.assault.delay = {
					45,
					35,
					20
				}
			elseif difficulty_index == 4 then
				self.besiege.assault.delay = {
					40,
					30,
					20
				}
			elseif difficulty_index == 5 then
				self.besiege.assault.delay = {
					30,
					20,
					15
				}
			elseif difficulty_index == 8 then
				self.besiege.assault.delay = {
					35,
					35,
					35
				}
			else
				self.besiege.assault.delay = {
					25,
					25,
					25
				}
			end
			if difficulty_index <= 5 then
				self.besiege.assault.hostage_hesitation_delay = {
					30,
					30,
					30
				}
			else
				self.besiege.assault.hostage_hesitation_delay = {
					10,
					10,
					10
				}
			end
			if is_console then
				self.besiege.assault.force = {
					0,
					4,
					7
				}
				self.besiege.assault.force_pool = {
					0,
					60,
					100
				}
			else
					self.besiege.assault.force = {
					35,
					35,
					35
				}
					self.besiege.assault.force_pool = {
					200,
					200,
					200
				}
			end
			if is_console then
				if difficulty_index <= 2 then
					self.besiege.assault.force_balance_mul = {
						1,
						1.1,
						1.2,
						1.3
					}
					self.besiege.assault.force_pool_balance_mul = {
						1,
						1.1,
						1.2,
						1.3
					}
				elseif difficulty_index == 3 then
					self.besiege.assault.force_balance_mul = {
						1.2,
						1.4,
						1.6,
						1.8
					}
					self.besiege.assault.force_pool_balance_mul = {
						1.2,
						1.4,
						1.6,
						1.8
					}
				elseif difficulty_index == 4 then
					self.besiege.assault.force_balance_mul = {
						1.6,
						1.8,
						2,
						2.2
					}
					self.besiege.assault.force_pool_balance_mul = {
						1.7,
						2,
						2.2,
						2.4
					}
				elseif difficulty_index == 5 then
					self.besiege.assault.force_balance_mul = {
						1.8,
						2.1,
						2.4,
						2.8
					}
					self.besiege.assault.force_pool_balance_mul = {
						2.2,
						2.4,
						2.6,
						2.8
					}
				else
					self.besiege.assault.force_balance_mul = {
						1,
						1.2,
						1.5,
						3,
						3.5,
						4,
						4.5,
						5,
						5.5,
						6,
						6.5,
						7,
						7.5,
						8,
						8.5,
						9,
						9.5,
						10,
						10.5,
						11
					}
				self.besiege.assault.force_pool_balance_mul = {
						1.5,
						2.5,
						4,
						6,
						8,
						10,
						12,
						14,
						16,
						18,
						20,
						22,
						24,
						26,
						28,
						30,
						32,
						34,
						36
					}
				end
			elseif difficulty_index <= 2 then
				self.besiege.assault.force_balance_mul = {
					0.9,
					1.5,
					2,
					2.25
				}
				self.besiege.assault.force_pool_balance_mul = {
					1,
					1.5,
					2,
					3
				}
			elseif difficulty_index == 3 then
				self.besiege.assault.force_balance_mul = {
					1,
					1.4,
					1.6,
					1.9
				}
				self.besiege.assault.force_pool_balance_mul = {
					1.2,
					1.4,
					1.6,
					1.9
				}
			elseif difficulty_index == 4 then
				self.besiege.assault.force_balance_mul = {
					1.4,
					1.8,
					2,
					2.4
				}
				self.besiege.assault.force_pool_balance_mul = {
					1.7,
					2,
					2.2,
					2.5
				}
			elseif difficulty_index == 5 then
				self.besiege.assault.force_balance_mul = {
					2,
					2.5,
					2.9,
					3.2
				}
				self.besiege.assault.force_pool_balance_mul = {
					2.2,
					2.4,
					2.6,
					3
				}
			else
			self.besiege.assault.force_balance_mul = {
					1,
					1.2,
					1.5,
					3,
					3.5,
					4,
					4.5,
					5,
					5.5,
					6,
					6.5,
					7,
					7.5,
					8,
					8.5,
					9,
					9.5,
					10,
					10.5,
					11
				}
			self.besiege.assault.force_pool_balance_mul = {
					1.5,
					2.5,
					4,
					6,
					8,
					10,
					12,
					14,
					16,
					18,
					20,
					22,
					24,
					26,
					28,
					30,
					32,
					34,
					36
				}


			end
			if difficulty_index <= 2 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.2,
						0.2,
						0.2
					},
					tac_swat_shotgun_flank = {
						0.2,
						0.2,
						0.2
					},
					tac_swat_rifle = {
						0.2,
						0.2,
						0.2
					},
					tac_swat_rifle_flank = {
						0.2,
						0.2,
						0.2
					},
					tac_shield_wall_ranged = {
						0.2,
						0.2,
						0.2
					},
					tac_shield_wall_charge = {
						0,
						0,
						0
					},
					tac_shield_wall = {
						0,
						0,
						0
					},
					tac_tazer_flanking = {
						0,
						0,
						0
					},
					tac_tazer_charge = {
						0,
						0,
						0
					},
					single_spoocs = {
						0,
						0,
						0
					},
					tac_bull_rush = {
						0,
						0,
						0
					}
				}
			elseif difficulty_index == 3 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.2,
						0.2,
						0.2
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_shield_wall_ranged = {
						0.1,
						0.1,
						0.1
					},
					tac_shield_wall_charge = {
						0.1,
						0.1,
						0.1
					},
					tac_shield_wall = {
						0.1,
						0.1,
						0.1
					},
					tac_tazer_flanking = {
						0.1,
						0.1,
						0.1
					},
					tac_tazer_charge = {
						0.1,
						0.1,
						0.1
					},
					single_spoocs = {
						0,
						0,
						0
					},
					tac_bull_rush = {
						0,
						0,
						0
					}
				}
			elseif difficulty_index == 4 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.19,
						0.19,
						0.19
					},
					tac_swat_shotgun_flank = {
						0.19,
						0.19,
						0.19
					},
					tac_swat_rifle = {
						0.19,
						0.19,
						0.19
					},
					tac_swat_rifle_flank = {
						0.19,
						0.19,
						0.19
					},
					tac_shield_wall_ranged = {
						0.03,
						0.03,
						0.03
					},
					tac_shield_wall_charge = {
						0.025,
						0.025,
						0.025
					},
					tac_shield_wall = {
						0.025,
						0.025,
						0.025
					},
					tac_tazer_flanking = {
						0.045,
						0.045,
						0.045
					},
					tac_tazer_charge = {
						0.045,
						0.045,
						0.045
					},
					FBI_spoocs = {
						0.005,
						0.005,
						0.005
					},
					tac_bull_rush = {
						0.01,
						0.01,
						0.01
					}
				}
			elseif difficulty_index == 5 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.19,
						0.19,
						0.19
					},
					tac_swat_shotgun_flank = {
						0.19,
						0.19,
						0.19
					},
					tac_swat_rifle = {
						0.19,
						0.19,
						0.19
					},
					tac_swat_rifle_flank = {
						0.19,
						0.19,
						0.19
					},
					tac_shield_wall_ranged = {
						0.03,
						0.03,
						0.03
					},
					tac_shield_wall_charge = {
						0.025,
						0.025,
						0.025
					},
					tac_shield_wall = {
						0.025,
						0.025,
						0.025
					},
					tac_tazer_flanking = {
						0.045,
						0.045,
						0.045
					},
					tac_tazer_charge = {
						0.045,
						0.045,
						0.045
					},
					FBI_spoocs = {
						0.005,
						0.005,
						0.005
					},
					tac_bull_rush = {
						0.01,
						0.01,
						0.01
					}
				}
			elseif difficulty_index == 6 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.18,
						0.18,
						0.18
					},
					tac_swat_shotgun_flank = {
						0.18,
						0.18,
						0.18
					},
					tac_swat_rifle = {
						0.18,
						0.18,
						0.18
					},
					tac_swat_rifle_flank = {
						0.18,
						0.18,
						0.18
					},
					tac_shield_wall_ranged = {
						0.03,
						0.03,
						0.03
					},
					tac_shield_wall_charge = {
						0.04,
						0.04,
						0.04
					},
					tac_shield_wall = {
						0.03,
						0.03,
						0.03
					},
					tac_tazer_flanking = {
						0.05,
						0.05,
						0.05
					},
					tac_tazer_charge = {
						0.05,
						0.05,
						0.05
					},
					FBI_spoocs = {
						0.005,
						0.005,
						0.005
					},
					tac_bull_rush = {
						0.015,
						0.015,
						0.015
					}
				}
			elseif difficulty_index == 7 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.18,
						0.18,
						0.18
					},
					tac_swat_shotgun_flank = {
						0.18,
						0.18,
						0.18
					},
					tac_swat_rifle = {
						0.18,
						0.18,
						0.18
					},
					tac_swat_rifle_flank = {
						0.18,
						0.18,
						0.18
					},
					tac_shield_wall_ranged = {
						0.03,
						0.03,
						0.03
					},
					tac_shield_wall_charge = {
						0.04,
						0.04,
						0.04
					},
					tac_shield_wall = {
						0.03,
						0.03,
						0.03
					},
					tac_tazer_flanking = {
						0.05,
						0.05,
						0.05
					},
					tac_tazer_charge = {
						0.05,
						0.05,
						0.05
					},
					FBI_spoocs = {
						0.005,
						0.005,
						0.005
					},
					tac_bull_rush = {
						0.015,
						0.015,
						0.015
					},
					hostage_rescue_team = {
						0.01,
						0.01,
						0.01
					}
				}
			elseif difficulty_index == 8 then
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.13,
						0.13,
						0.13
					},
					tac_swat_shotgun_flank = {
						0.13,
						0.13,
						0.13
					},
					tac_swat_rifle = {
						0.13,
						0.13,
						0.13
					},
					tac_swat_rifle_flank = {
						0.13,
						0.13,
						0.13
					},
					tac_shield_wall_ranged = {
						0.06,
						0.06,
						0.06
					},
					tac_shield_wall_charge = {
						0.05,
						0.05,
						0.05
					},
					tac_shield_wall = {
						0.05,
						0.05,
						0.05
					},
					tac_tazer_flanking = {
						0.09,
						0.09,
						0.09
					},
					tac_tazer_charge = {
						0.09,
						0.09,
						0.09
					},
					FBI_spoocs = {
						0.01,
						0.01,
						0.01
					},
					tac_bull_rush = {
						0.09,
						0.09,
						0.09
					},
					hostage_rescue_team = {
						0.02,
						0.02,
						0.02
					}
				}
			else
				self.besiege.assault.groups = {
					tac_swat_shotgun_rush = {
						0.13,
						0.13,
						0.13
					},
					tac_swat_shotgun_flank = {
						0.13,
						0.13,
						0.13
					},
					tac_swat_rifle = {
						0.13,
						0.13,
						0.13
					},
					tac_swat_rifle_flank = {
						0.13,
						0.13,
						0.13
					},
					tac_shield_wall_ranged = {
						0.06,
						0.06,
						0.06
					},
					tac_shield_wall_charge = {
						0.05,
						0.05,
						0.05
					},
					tac_shield_wall = {
						0.05,
						0.05,
						0.05
					},
					tac_tazer_flanking = {
						0.09,
						0.09,
						0.09
					},
					tac_tazer_charge = {
						0.09,
						0.09,
						0.09
					},
					FBI_spoocs = {
						0.01,
						0.01,
						0.01
					},
					tac_bull_rush = {
						0.09,
						0.09,
						0.09
					}
				}
			end
			self.besiege.assault.groups.single_spooc = {
				0,
				0,
				0
			}
			self.besiege.assault.groups.Phalanx = {
				0,
				0,
				0
			}
			self.besiege.reenforce.interval = {
				10,
				20,
				30
			}
			if difficulty_index <= 2 then
				self.besiege.reenforce.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			elseif difficulty_index == 3 then
				self.besiege.reenforce.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			elseif difficulty_index == 4 then
				self.besiege.reenforce.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			elseif difficulty_index == 5 then
				self.besiege.reenforce.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			else
				self.besiege.reenforce.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			end
			self.besiege.recon.interval = {
				5,
				5,
				5
			}
			self.besiege.recon.interval_variation = 40
			if difficulty_index < 6 then
				self.besiege.recon.force = {
					2,
					4,
					6
				}
			else
				self.besiege.recon.force = {
					3,
					4,
					6
				}
			end
			if difficulty_index <= 2 then
				self.besiege.recon.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			elseif difficulty_index == 3 then
				self.besiege.recon.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			elseif difficulty_index == 4 then
				self.besiege.recon.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			elseif difficulty_index == 5 then
				self.besiege.recon.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_shotgun_flank = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					}
				}
			else
				self.besiege.recon.groups = {
					tac_swat_shotgun_rush = {
						0.1,
						0.1,
						0.1
					},
					tac_swat_rifle_flank = {
						0.1,
						0.1,
						0.1
					},
					hostage_rescue_team = {
						1,
						1,
						1
					}
				}
			end
			self.besiege.recon.groups.single_spooc = {
				0,
				0,
				0
			}
			self.besiege.recon.groups.Phalanx = {
				0,
				0,
				0
			}
			self.besiege.cloaker.groups = {
				single_spooc = {
					1,
					1,
					1
				}
			}
			self.street = deep_clone(self.besiege)
			self.phalanx.minions.min_count = 4
			self.phalanx.minions.amount = 10
			self.phalanx.minions.distance = 100
			self.phalanx.vip.health_ratio_flee = 0.2
			self.phalanx.vip.damage_reduction = {
				start = 0.1,
				increase = 0.05,
				max = 0.5,
				increase_intervall = 5
			}
			self.phalanx.check_spawn_intervall = 120
			self.phalanx.chance_increase_intervall = 120
			if difficulty_index == 4 then
				self.phalanx.spawn_chance = {
					start = 0,
					increase = 0.05,
					decrease = 0.7,
					max = 1,
					respawn_delay = 300000
				}
			elseif difficulty_index == 5 then
				self.phalanx.spawn_chance = {
					start = 0.01,
					increase = 0.09,
					decrease = 0.7,
					max = 1,
					respawn_delay = 300000
				}
			elseif difficulty_index == 6 then
				self.phalanx.spawn_chance = {
					start = 0.05,
					increase = 0.09,
					decrease = 1,
					max = 1,
					respawn_delay = 300000
				}
			elseif difficulty_index == 7 then
				self.phalanx.spawn_chance = {
					start = 0.05,
					increase = 0.09,
					decrease = 1,
					max = 1,
					respawn_delay = 300000
				}
			elseif difficulty_index == 8 then
				self.phalanx.spawn_chance = {
					start = 0.05,
					increase = 0.09,
					decrease = 1,
					max = 1,
					respawn_delay = 300000
				}
			else
				self.phalanx.spawn_chance = {
					start = 0,
					increase = 0,
					decrease = 0,
					max = 0,
					respawn_delay = 120
				}
			end
			self.safehouse = deep_clone(self.besiege)
		end

		function GroupAITweakData:_init_unit_categories(difficulty_index)
			local access_type_walk_only = {walk = true}
			local access_type_all = {walk = true, acrobatic = true}
			if difficulty_index <= 2 then
				self.special_unit_spawn_limits = {
					tank = 1,
					taser = 1,
					spooc = 0,
					shield = 2,
					medic = 3
				}
			elseif difficulty_index == 3 then
				self.special_unit_spawn_limits = {
					tank = 2,
					taser = 2,
					spooc = 0,
					shield = 4,
					medic = 3
				}
			elseif difficulty_index == 4 then
				self.special_unit_spawn_limits = {
					tank = 2,
					taser = 2,
					spooc = 2,
					shield = 4,
					medic = 3
				}
			elseif difficulty_index == 5 then
				self.special_unit_spawn_limits = {
					tank = 2,
					taser = 2,
					spooc = 2,
					shield = 4,
					medic = 3
				}
			else
				self.special_unit_spawn_limits = {
					tank = 3,
					taser = 4,
					spooc = 3,
					shield = 8,
					medic = 4,
					phalanx_minion = 2
				}
			end
			self.unit_categories = {}
			if difficulty_index == 8 then
				self.unit_categories.spooc = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_cloaker/ene_zeal_cloaker")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_spooc_asval_smg/ene_akan_fbi_spooc_asval_smg")
						}
					},
					access = access_type_all,
					special_type = "spooc"
				}
			else
				self.unit_categories.spooc = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_spook_1/ene_spook_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_spooc_asval_smg/ene_akan_fbi_spooc_asval_smg")
						}
					},
					access = access_type_all,
					special_type = "spooc"
				}
			end
			self.unit_categories.CS_cop_C45_R870 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_cop_1/ene_cop_1"),
						Idstring("units/payday2/characters/ene_cop_3/ene_cop_3"),
						Idstring("units/payday2/characters/ene_cop_4/ene_cop_4")
					},
					russia = {
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_r870/ene_akan_cs_cop_r870")
					}
				},
				access = access_type_walk_only
			}
			self.unit_categories.CS_cop_stealth_MP5 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_cop_2/ene_cop_2")
					},
					russia = {
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_akmsu_smg/ene_akan_cs_cop_akmsu_smg")
					}
				},
				access = access_type_walk_only
			}
			if difficulty_index == 8 then
				self.unit_categories.CS_swat_MP5 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_ak47_ass/ene_akan_cs_swat_ak47_ass")
						}
					},
					access = access_type_all
				}
				self.unit_categories.CS_swat_R870 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_r870/ene_akan_cs_swat_r870")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.CS_swat_MP5 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_swat_1/ene_swat_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_ak47_ass/ene_akan_cs_swat_ak47_ass")
						}
					},
					access = access_type_all
				}
				self.unit_categories.CS_swat_R870 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_swat_2/ene_swat_2")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_swat_r870/ene_akan_cs_swat_r870")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index == 8 then
				self.unit_categories.CS_heavy_M4 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy"),
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_heavy_ak47_ass/ene_akan_cs_heavy_ak47_ass")
						}
					},
					access = access_type_all
				}
				self.unit_categories.CS_heavy_R870 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_heavy_r870/ene_akan_cs_heavy_r870")
						}
					},
					access = access_type_all
				}
				self.unit_categories.CS_heavy_M4_w = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_heavy_ak47_ass/ene_akan_cs_heavy_ak47_ass")
						}
					},
					access = access_type_walk_only
				}
			else
				self.unit_categories.CS_heavy_M4 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_swat_heavy_1/ene_swat_heavy_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_heavy_ak47_ass/ene_akan_cs_heavy_ak47_ass")
						}
					},
					access = access_type_all
				}
				self.unit_categories.CS_heavy_R870 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_swat_heavy_r870/ene_swat_heavy_r870")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_heavy_r870/ene_akan_cs_heavy_r870")
						}
					},
					access = access_type_all
				}
				self.unit_categories.CS_heavy_M4_w = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_swat_heavy_1/ene_swat_heavy_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_heavy_ak47_ass/ene_akan_cs_heavy_ak47_ass")
						}
					},
					access = access_type_walk_only
				}
			end
			self.unit_categories.CS_tazer = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_tazer_1/ene_tazer_1")
					},
					russia = {
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_tazer_ak47_ass/ene_akan_cs_tazer_ak47_ass")
					}
				},
				access = access_type_all,
				special_type = "taser"
			}
			if difficulty_index == 8 then
				self.unit_categories.CS_shield = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_shield_c45/ene_akan_cs_shield_c45")
						}
					},
					access = access_type_walk_only,
					special_type = "shield"
				}
			else
				self.unit_categories.CS_shield = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_shield_2/ene_shield_2")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_shield_c45/ene_akan_cs_shield_c45")
						}
					},
					access = access_type_walk_only,
					special_type = "shield"
				}
			end
			self.unit_categories.FBI_suit_C45_M4 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_fbi_1/ene_fbi_1"),
						Idstring("units/payday2/characters/ene_fbi_2/ene_fbi_2")
					},
					russia = {
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_ak47_ass/ene_akan_cs_cop_ak47_ass"),
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_ak47_ass/ene_akan_cs_cop_ak47_ass")
					}
				},
				access = access_type_all
			}
			self.unit_categories.FBI_suit_M4_MP5 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_fbi_2/ene_fbi_2"),
						Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
					},
					russia = {
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg"),
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg")
					}
				},
				access = access_type_all
			}
			self.unit_categories.FBI_suit_stealth_MP5 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_fbi_3/ene_fbi_3")
					},
					russia = {
						Idstring("units/pd2_dlc_mad/characters/ene_akan_cs_cop_asval_smg/ene_akan_cs_cop_asval_smg")
					}
				},
				access = access_type_all
			}
			if difficulty_index < 6 then
				self.unit_categories.FBI_swat_M4 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_ak47_ass/ene_akan_fbi_swat_ak47_ass")
						}
					},
					access = access_type_all
				}
			elseif difficulty_index < 8 then
				self.unit_categories.FBI_swat_M4 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_swat_1/ene_city_swat_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.FBI_swat_M4 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index < 6 then
				self.unit_categories.FBI_swat_R870 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_r870/ene_akan_fbi_swat_r870")
						}
					},
					access = access_type_all
				}
			elseif difficulty_index < 8 then
				self.unit_categories.FBI_swat_R870 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_swat_2/ene_city_swat_2")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_r870/ene_akan_fbi_swat_dw_r870")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.FBI_swat_R870 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_r870/ene_akan_fbi_swat_dw_r870")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index < 6 then
				self.unit_categories.FBI_heavy_G36 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_all
				}
			elseif difficulty_index < 8 then
				self.unit_categories.FBI_heavy_G36 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_heavy_g36/ene_city_heavy_g36")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.FBI_heavy_G36 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index < 6 then
				self.unit_categories.FBI_heavy_UMP = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1") --my mod has no effect below index 7 anyway so i can put whatever i want here
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_all
				}
			elseif difficulty_index < 8 then
			--UMP flank leaders
				self.unit_categories.FBI_heavy_UMP = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_swat_3/ene_city_swat_3")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.FBI_heavy_UMP = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index < 6 then
				self.unit_categories.FBI_heavy_SCAR = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_all
				}
			elseif difficulty_index < 8 then
				self.unit_categories.FBI_heavy_SCAR = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_swat_1/ene_city_swat_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.FBI_heavy_SCAR = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_swat_dw_ak47_ass/ene_akan_fbi_swat_dw_ak47_ass")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index < 6 then
				self.unit_categories.FBI_heavy_R870 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_r870/ene_akan_fbi_heavy_r870")
						}
					},
					access = access_type_all
				}
			elseif difficulty_index < 8 then
				self.unit_categories.FBI_heavy_R870 = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_swat_2/ene_city_swat_2")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_r870/ene_akan_fbi_heavy_r870")
						}
					},
					access = access_type_all
				}
			else
				self.unit_categories.FBI_heavy_R870 = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_r870/ene_akan_fbi_heavy_r870")
						}
					},
					access = access_type_all
				}
			end
			if difficulty_index < 8 then
				self.unit_categories.FBI_heavy_G36_w = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_walk_only
				}
			else
				self.unit_categories.FBI_heavy_G36_w = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_heavy_g36/ene_akan_fbi_heavy_g36")
						}
					},
					access = access_type_walk_only
				}
			end
			if difficulty_index < 6 then
				self.unit_categories.FBI_shield = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_shield_1/ene_shield_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_sr2_smg/ene_akan_fbi_shield_sr2_smg")
						}
					},
					access = access_type_walk_only,
					special_type = "shield"
				}
			elseif difficulty_index < 8 then
				self.unit_categories.FBI_shield = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_city_shield/ene_city_shield")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_dw_sr2_smg/ene_akan_fbi_shield_dw_sr2_smg")
						}
					},
					access = access_type_walk_only,
					special_type = "shield"
				}
			else
				self.unit_categories.FBI_shield = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_shield_dw_sr2_smg/ene_akan_fbi_shield_dw_sr2_smg")
						}
					},
					access = access_type_walk_only,
					special_type = "shield"
				}
			end
			if difficulty_index < 5 then
				self.unit_categories.FBI_tank = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_r870/ene_akan_fbi_tank_r870")
						}
					},
					access = access_type_all,
					special_type = "tank"
				}
			elseif difficulty_index <= 6 then
				self.unit_categories.FBI_tank = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1"),
							Idstring("units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_saiga/ene_akan_fbi_tank_saiga"),
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_r870/ene_akan_fbi_tank_r870")
						}
					},
					access = access_type_all,
					special_type = "tank"
				}
			elseif difficulty_index <= 7 then
				self.unit_categories.FBI_tank = {
					unit_types = {
						america = {
							Idstring("units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2"),
							Idstring("units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_r870/ene_akan_fbi_tank_r870"),
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_saiga/ene_akan_fbi_tank_saiga"),
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_rpk_lmg/ene_akan_fbi_tank_rpk_lmg")
						}
					},
					access = access_type_all,
					special_type = "tank"
				}
			else
				self.unit_categories.FBI_tank = {
					unit_types = {
						america = {
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer/ene_zeal_bulldozer"),
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_2/ene_zeal_bulldozer_2"),
							Idstring("units/pd2_dlc_gitgud/characters/ene_zeal_bulldozer_3/ene_zeal_bulldozer_3")
						},
						russia = {
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_r870/ene_akan_fbi_tank_r870"),
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_saiga/ene_akan_fbi_tank_saiga"),
							Idstring("units/pd2_dlc_mad/characters/ene_akan_fbi_tank_rpk_lmg/ene_akan_fbi_tank_rpk_lmg")
						}
					},
					access = access_type_all,
					special_type = "tank"
				}
			end
			self.unit_categories.medic_M4 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4")
					},
					russia = {
						Idstring("units/payday2/characters/ene_medic_m4/ene_medic_m4")
					}
				},
				access = access_type_all,
				special_type = "medic"
			}
			self.unit_categories.medic_R870 = {
				unit_types = {
					america = {
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870")
					},
					russia = {
						Idstring("units/payday2/characters/ene_medic_r870/ene_medic_r870")
					}
				},
				access = access_type_all,
				special_type = "medic"
			}
			self.unit_categories.Phalanx_minion = {
				unit_types = {
					america = {
						Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
					},
					russia = {
						Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
					}
				},
				access = access_type_walk_only,
				special_type = "shield"
			}
			self.unit_categories.Phalanx_vip = {
				unit_types = {
					america = {
						Idstring("units/pd2_dlc_vip/characters/ene_vip_1/ene_vip_1")
					},
					russia = {
						Idstring("units/pd2_dlc_vip/characters/ene_vip_1/ene_vip_1")
					}
				},
				access = access_type_walk_only,
				special_type = "shield"
			}
			self.unit_categories.Phalanx_minion_assault = {
				unit_types = {
					america = {
						Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
					},
					russia = {
						Idstring("units/pd2_dlc_vip/characters/ene_phalanx_1/ene_phalanx_1")
					}
				},
				access = access_type_walk_only,
				special_type = "phalanx_minion"
			}
		end
		function GroupAITweakData:_init_enemy_spawn_groups(difficulty_index)
			self._tactics = {
				Phalanx_minion = {
					"smoke_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"shield",
					"deathguard"
				},
				Phalanx_vip = {
					"smoke_grenade",
					"charge",
					"provide_coverfire",
					"provide_support",
					"shield",
					"deathguard",
					"murder"
				},
				swat_shotgun_rush = {
					"charge",
					"deathguard",
					"flash_grenade"
				},
				swat_shotgun_flank = {
					"charge",
					"flank",
					"deathguard",
					"flash_grenade"
				},
				swat_rifle = {
					"ranged_fire",
					"provide_coverfire",
					"provide_support"
				},
				swat_rifle_flank = {
					"charge",
					"flank",
					"deathguard",
					"flash_grenade"
				},
				shield_wall_ranged = {
					"shield",
					"ranged_fire",
					"provide_support "
				},
				shield_support_ranged = {
					"shield_cover",
					"ranged_fire",
					"provide_coverfire"
				},
				shield_wall_charge = {
					"shield",
					"charge",
					"murder"
				},
				shield_support_charge = {
					"shield_cover",
					"charge",
					"flash_grenade"
				},
				shield_wall = {
					"shield",
					"ranged_fire",
					"provide_support",
					"murder",
					"deathguard"
				},
				tazer_flanking = {
					"flanking",
					"charge",
					"smoke_grenade",
					"murder",
					"flash_grenade"
				},
				tazer_charge = {
					"charge",
					"murder",
					"flash_grenade"
				},
				tank_rush = {
					"charge",
					"murder",
					"deathguard",
					"flash_grenade"
				},
				hostage_rescue_team = {
					"flank",
					"ranged_fire",
					"flash_grenade"
				},
				spooc = {
					"charge",
					"shield_cover",
					"smoke_grenade"
				}
			}
			self.enemy_spawn_groups = {}
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {3, 3},
					spawn = {
						{
							unit = "CS_swat_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "CS_heavy_R870",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_swat_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "CS_heavy_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 1,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.2,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 3,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 1
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_swat_shotgun_rush = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 1,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 3,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_rush,
							rank = 1
						}
					}
				}
			end
			self.enemy_spawn_groups = {}
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {3, 3},
					spawn = {
						{
							unit = "CS_swat_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "CS_heavy_R870",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_swat_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "CS_heavy_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 1,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.2,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 3,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 1
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_swat_shotgun_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 1,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_R870",
							freq = 3,
							amount_max = 5,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.5,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_shotgun_flank,
							rank = 1
						}
					}
				}
			end
			self.enemy_spawn_groups = {}
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {3, 3},
					spawn = {
						{
							unit = "CS_swat_MP5",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "CS_heavy_M4",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_swat_MP5",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "CS_heavy_M4",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 1,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.2,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 3,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_rifle,
							rank = 3
						},
						{
							unit = "FBI_heavy_SCAR",
							freq = 3,
							amount_min = 2,
							amount_max = 3,
							tactics = self._tactics.swat_rifle,
							rank = 1
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 2
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_swat_rifle = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 1,
							amount_max = 5,
							tactics = self._tactics.swat_rifle,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 3,
							amount_max = 5,
							tactics = self._tactics.swat_rifle,
							rank = 3
						},
						{
							unit = "FBI_heavy_SCAR",
							freq = 3,
							amount_min = 2,
							amount_max = 3,
							tactics = self._tactics.swat_rifle,
							rank = 1
						},
						{
							unit = "medic_M4",
							freq = 0.5,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle,
							rank = 2
						}
					}
				}
			end
			self.enemy_spawn_groups = {}
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {3, 3},
					spawn = {
						{
							unit = "CS_swat_MP5",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "CS_heavy_M4",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_swat_MP5",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "CS_heavy_M4",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 1,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.2,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 3,
							amount_min = 3,
							amount_max = 3,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						},
						{
							unit = "FBI_heavy_UMP",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.swat_rifle_flank,
							rank = 1
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_swat_rifle_flank = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 1,
							amount_max = 5,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						},
						{
							unit = "FBI_heavy_G36",
							freq = 3,
							amount_max = 5,
							tactics = self._tactics.swat_rifle_flank,
							rank = 3
						},
						{
							unit = "FBI_heavy_UMP",
							freq = 3,
							amount_max = 5,
							tactics = self._tactics.swat_rifle_flank,
							rank = 1
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.swat_rifle_flank,
							rank = 2
						}
					}
				}
			end
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_swat_MP5",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "CS_shield",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_heavy_M4",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "CS_shield",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.2,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_M4",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_max = 4,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_shield_wall_ranged = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_heavy_G36",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.shield_support_ranged,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.shield_wall_ranged,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.5,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			end
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_swat_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						},
						{
							unit = "CS_shield",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 4},
					spawn = {
						{
							unit = "CS_heavy_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						},
						{
							unit = "CS_shield",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.2,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_swat_R870",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_min = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.shield_support_charge,
							rank = 1
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_max = 3,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_shield_wall_charge = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_heavy_R870",
							freq = 2,
							amount_max = 5,
							tactics = self._tactics.shield_support_charge,
							rank = 1
						},
						{
							unit = "FBI_shield",
							freq = 2,
							amount_max = 4,
							tactics = self._tactics.shield_wall_charge,
							rank = 3
						},
						{
							unit = "medic_R870",
							freq = 0.5,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_support_charge,
							rank = 2
						}
					}
				}
			end
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 4},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 1,
							amount_min = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 4,
							amount_min = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.2,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_wall,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 4,
							amount_min = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_wall,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 7 then
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						},
						{
							unit = "Phalanx_minion_assault",
							freq = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall,
							rank = 1
						},
						{
							unit = "medic_M4",
							freq = 0.35,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_wall,
							rank = 2
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_shield_wall = {
					amount = {4, 5},
					spawn = {
						{
							unit = "FBI_shield",
							freq = 4,
							amount_max = 4,
							tactics = self._tactics.shield_wall,
							rank = 3
						},
						{
							unit = "Phalanx_minion_assault",
							freq = 2,
							amount_max = 2,
							tactics = self._tactics.shield_wall,
							rank = 1
						},
						{
							unit = "medic_M4",
							freq = 0.5,
							amount_min = 0,
							amount_max = 1,
							tactics = self._tactics.shield_wall,
							rank = 2
						}
					}
				}
			end
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_tazer_flanking = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_flanking,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_tazer_flanking = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_flanking,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_tazer_flanking = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_flanking,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_tazer_flanking = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_flanking,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_tazer_flanking = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_flanking,
							rank = 3
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_tazer_flanking = {
					amount = {2, 2},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 2,
							amount_max = 3,
							tactics = self._tactics.tazer_flanking,
							rank = 1
						}
					}
				}
			end
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_tazer_charge = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_tazer_charge = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_tazer_charge = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_tazer_charge = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_charge,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_tazer_charge = {
					amount = {1, 1},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tazer_charge,
							rank = 3
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_tazer_charge = {
					amount = {2, 2},
					spawn = {
						{
							unit = "CS_tazer",
							freq = 1,
							amount_min = 2,
							amount_max = 3,
							tactics = self._tactics.tazer_charge,
							rank = 1
						}
					}
				}
			end
			if difficulty_index <= 2 then
				self.enemy_spawn_groups.tac_bull_rush = {
					amount = {1, 1},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tank_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 3 then
				self.enemy_spawn_groups.tac_bull_rush = {
					amount = {1, 1},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tank_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 4 then
				self.enemy_spawn_groups.tac_bull_rush = {
					amount = {1, 1},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tank_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 5 then
				self.enemy_spawn_groups.tac_bull_rush = {
					amount = {1, 1},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tank_rush,
							rank = 3
						}
					}
				}
			elseif difficulty_index == 6 then
				self.enemy_spawn_groups.tac_bull_rush = {
					amount = {1, 1},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_min = 1,
							amount_max = 1,
							tactics = self._tactics.tank_rush,
							rank = 3
						}
					}
				}
			else
				self.enemy_spawn_groups.tac_bull_rush = {
					amount = {2, 2},
					spawn = {
						{
							unit = "FBI_tank",
							freq = 1,
							amount_min = 2,
							amount_max = 4,
							tactics = self._tactics.tank_rush,
							rank = 1
						}
					}
				}
			end
				self.enemy_spawn_groups.hostage_rescue_team = {
					amount = {2, 2},
					spawn = {
						{
							unit = "FBI_suit_M4_MP5",
							freq = 1,
							amount_min = 1,
							amount_max = 3,
							tactics = self._tactics.hostage_rescue_team,
							rank = 1
						},
						{
							unit = "FBI_suit_C45_M4",
							freq = 1,
							amount_min = 2,
							amount_max = 6,
							tactics = self._tactics.hostage_rescue_team,
							rank = 2
						}
					}
				}
			self.enemy_spawn_groups.Phalanx = {
				amount = {
					self.phalanx.minions.amount + 1,
					self.phalanx.minions.amount + 1
				},
				spawn = {
					{
						unit = "Phalanx_vip",
						freq = 1,
						amount_min = 1,
						amount_max = 1,
						tactics = self._tactics.Phalanx_vip,
						rank = 2
					},
					{
						unit = "Phalanx_minion",
						freq = 1,
						amount_min = 1,
						tactics = self._tactics.Phalanx_minion,
						rank = 1
					}
				}
			}
			self.enemy_spawn_groups.single_spooc = {
				amount = {1, 1},
				spawn = {
					{
						unit = "spooc",
						freq = 1,
						amount_min = 1,
						tactics = self._tactics.spooc,
						rank = 1
					}
				}
			}
			self.enemy_spawn_groups.FBI_spoocs = self.enemy_spawn_groups.single_spooc
		end

	end
end