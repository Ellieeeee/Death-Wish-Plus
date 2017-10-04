if DW.settings.dw_enemy_toggle_value and DW.settings.dw_baby_toggle_value then
log("[Death Wish+] host only changes and main changes are both on!!! disabling mod.")
return
end

if Global.load_level == true then 	
	local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
	if difficulty == "overkill_290" or difficulty == "sm_wish" then	
		if DW.settings.dw_enemy_toggle_value then
		function CharacterTweakData:character_map()
			local char_map = {
				basic = {
					path = "units/payday2/characters/",
					list = {
						"civ_female_bank_1",
						"civ_female_bank_manager_1",
						"civ_female_bikini_1",
						"civ_female_bikini_2",
						"civ_female_casual_1",
						"civ_female_casual_2",
						"civ_female_casual_3",
						"civ_female_casual_4",
						"civ_female_casual_5",
						"civ_female_casual_6",
						"civ_female_casual_7",
						"civ_female_casual_8",
						"civ_female_casual_9",
						"civ_female_casual_10",
						"civ_female_crackwhore_1",
						"civ_female_curator_1",
						"civ_female_curator_2",
						"civ_female_hostess_apron_1",
						"civ_female_hostess_jacket_1",
						"civ_female_hostess_shirt_1",
						"civ_female_party_1",
						"civ_female_party_2",
						"civ_female_party_3",
						"civ_female_party_4",
						"civ_female_waitress_1",
						"civ_female_waitress_2",
						"civ_female_waitress_3",
						"civ_female_waitress_4",
						"civ_female_wife_trophy_1",
						"civ_female_wife_trophy_2",
						"civ_male_bank_1",
						"civ_male_bank_2",
						"civ_male_bank_manager_1",
						"civ_male_bank_manager_3",
						"civ_male_bank_manager_4",
						"civ_male_bank_manager_5",
						"civ_male_bartender_1",
						"civ_male_bartender_2",
						"civ_male_business_1",
						"civ_male_business_2",
						"civ_male_casual_1",
						"civ_male_casual_2",
						"civ_male_casual_3",
						"civ_male_casual_4",
						"civ_male_casual_5",
						"civ_male_casual_6",
						"civ_male_casual_7",
						"civ_male_casual_8",
						"civ_male_casual_9",
						"civ_male_casual_12",
						"civ_male_casual_13",
						"civ_male_casual_14",
						"civ_male_curator_1",
						"civ_male_curator_2",
						"civ_male_curator_3",
						"civ_male_dj_1",
						"civ_male_italian_robe_1",
						"civ_male_janitor_1",
						"civ_male_janitor_2",
						"civ_male_janitor_3",
						"civ_male_meth_cook_1",
						"civ_male_party_1",
						"civ_male_party_2",
						"civ_male_party_3",
						"civ_male_pilot_1",
						"civ_male_scientist_1",
						"civ_male_miami_store_clerk_1",
						"civ_male_taxman",
						"civ_male_trucker_1",
						"civ_male_worker_1",
						"civ_male_worker_2",
						"civ_male_worker_3",
						"civ_male_worker_docks_1",
						"civ_male_worker_docks_2",
						"civ_male_worker_docks_3",
						"civ_male_dog_abuser_1",
						"civ_male_dog_abuser_2",
						"ene_biker_1",
						"ene_biker_2",
						"ene_biker_3",
						"ene_biker_4",
						"ene_bulldozer_1",
						"ene_bulldozer_2",
						"ene_bulldozer_3",
						"ene_bulldozer_4",
						"ene_city_swat_1",
						"ene_city_swat_2",
						"ene_city_swat_3",
						"ene_murkywater_1",
						"ene_murkywater_2",
						"ene_cop_1",
						"ene_cop_2",
						"ene_cop_3",
						"ene_cop_4",
						"ene_fbi_1",
						"ene_fbi_2",
						"ene_fbi_3",
						"ene_fbi_boss_1",
						"ene_fbi_female_1",
						"ene_fbi_female_2",
						"ene_fbi_female_3",
						"ene_fbi_female_4",
						"ene_fbi_heavy_1",
						"ene_fbi_office_1",
						"ene_fbi_office_2",
						"ene_fbi_office_3",
						"ene_fbi_office_4",
						"ene_fbi_swat_1",
						"ene_fbi_swat_2",
						"ene_gang_black_1",
						"ene_gang_black_2",
						"ene_gang_black_3",
						"ene_gang_black_4",
						"ene_gang_mexican_1",
						"ene_gang_mexican_2",
						"ene_gang_mexican_3",
						"ene_gang_mexican_4",
						"ene_gang_russian_1",
						"ene_gang_russian_2",
						"ene_gang_russian_3",
						"ene_gang_russian_4",
						"ene_gang_russian_5",
						"ene_gang_mobster_1",
						"ene_gang_mobster_2",
						"ene_gang_mobster_3",
						"ene_gang_mobster_4",
						"ene_gang_mobster_boss",
						"ene_guard_national_1",
						"ene_hoxton_breakout_guard_1",
						"ene_hoxton_breakout_guard_2",
						"ene_male_tgt_1",
						"ene_murkywater_1",
						"ene_murkywater_2",
						"ene_prisonguard_female_1",
						"ene_prisonguard_male_1",
						"ene_secret_service_1",
						"ene_secret_service_2",
						"ene_security_1",
						"ene_security_2",
						"ene_security_3",
						"ene_security_4",
						"ene_security_5",
						"ene_security_6",
						"ene_security_7",
						"ene_security_8",
						"ene_shield_1",
						"ene_shield_2",
						"ene_phalanx_1",
						"ene_vip_1",
						"ene_sniper_1",
						"ene_sniper_2",
						"ene_spook_1",
						"ene_swat_1",
						"ene_swat_2",
						"ene_swat_heavy_1",
						"ene_tazer_1",
						"ene_veteran_cop_1",
						"npc_old_hoxton_prisonsuit_1",
						"npc_old_hoxton_prisonsuit_2",
						"ene_medic_r870",
						"ene_medic_m4",
						"ene_city_heavy_r870",
						"ene_city_heavy_g36",
						"ene_bulldozer_5", --new stuff starts here
						"ene_bulldozer_6",
						"ene_tazer_2",
						"ene_city_swat_4",
						"ene_shield_3",
						"ene_phalanx_2",
						"ene_fbi_4",
						"ene_bulldozer_7"
					}
				},
				dlc1 = {
					path = "units/pd2_dlc1/characters/",
					list = {
						"civ_male_bank_manager_2",
						"civ_male_casual_10",
						"civ_male_casual_11",
						"civ_male_firefighter_1",
						"civ_male_paramedic_1",
						"civ_male_paramedic_2",
						"ene_security_gensec_1",
						"ene_security_gensec_2"
					}
				},
				dlc2 = {
					path = "units/pd2_dlc2/characters/",
					list = {
						"civ_female_bank_assistant_1",
						"civ_female_bank_assistant_2"
					}
				},
				mansion = {
					path = "units/pd2_mcmansion/characters/",
					list = {
						"ene_male_hector_1",
						"ene_male_hector_2",
						"ene_hoxton_breakout_guard_1",
						"ene_hoxton_breakout_guard_2"
					}
				},
				cage = {
					path = "units/pd2_dlc_cage/characters/",
					list = {
						"civ_female_bank_2"
					}
				},
				arena = {
					path = "units/pd2_dlc_arena/characters/",
					list = {
						"civ_female_fastfood_1",
						"civ_female_party_alesso_1",
						"civ_female_party_alesso_2",
						"civ_female_party_alesso_3",
						"civ_female_party_alesso_4",
						"civ_female_party_alesso_5",
						"civ_female_party_alesso_6",
						"civ_male_party_alesso_1",
						"civ_male_party_alesso_2",
						"civ_male_alesso_booth",
						"civ_male_fastfood_1",
						"ene_guard_security_heavy_2",
						"ene_guard_security_heavy_1"
					}
				},
				kenaz = {
					path = "units/pd2_dlc_casino/characters/",
					list = {
						"civ_male_casino_1",
						"civ_male_casino_2",
						"civ_male_casino_3",
						"civ_male_casino_4",
						"ene_secret_service_1_casino",
						"civ_male_business_casino_1",
						"civ_male_business_casino_2",
						"civ_male_impersonator",
						"civ_female_casino_1",
						"civ_female_casino_2",
						"civ_female_casino_3",
						"civ_male_casino_pitboss"
					}
				},
				vip = {
					path = "units/pd2_dlc_vip/characters/",
					list = {
						"ene_vip_1",
						"ene_phalanx_1"
					}
				},
				holly = {
					path = "units/pd2_dlc_holly/characters/",
					list = {
						"civ_male_hobo_1",
						"civ_male_hobo_2",
						"civ_male_hobo_3",
						"civ_male_hobo_4",
						"ene_gang_hispanic_1",
						"ene_gang_hispanic_3",
						"ene_gang_hispanic_2"
					}
				},
				red = {
					path = "units/pd2_dlc_red/characters/",
					list = {
						"civ_female_inside_man_1"
					}
				},
				dinner = {
					path = "units/pd2_dlc_dinner/characters/",
					list = {
						"civ_male_butcher_2",
						"civ_male_butcher_1"
					}
				},
				pal = {
					path = "units/pd2_dlc_pal/characters/",
					list = {
						"civ_male_mitch"
					}
				},
				cane = {
					path = "units/pd2_dlc_cane/characters/",
					list = {
						"civ_male_helper_1",
						"civ_male_helper_2",
						"civ_male_helper_3",
						"civ_male_helper_4"
					}
				},
				berry = {
					path = "units/pd2_dlc_berry/characters/",
					list = {
						"ene_murkywater_no_light",
						"npc_locke"
					}
				},
				peta = {
					path = "units/pd2_dlc_peta/characters/",
					list = {
						"civ_male_boris"
					}
				},
				mad = {
					path = "units/pd2_dlc_mad/characters/",
					list = {
						"civ_male_scientist_01",
						"civ_male_scientist_02",
						"ene_akan_fbi_heavy_g36",
						"ene_akan_fbi_shield_sr2_smg",
						"ene_akan_fbi_spooc_asval_smg",
						"ene_akan_fbi_swat_ak47_ass",
						"ene_akan_fbi_swat_dw_ak47_ass",
						"ene_akan_fbi_swat_dw_r870",
						"ene_akan_fbi_swat_r870",
						"ene_akan_fbi_tank_r870",
						"ene_akan_fbi_tank_rpk_lmg",
						"ene_akan_fbi_tank_saiga",
						"ene_akan_cs_cop_ak47_ass",
						"ene_akan_cs_cop_akmsu_smg",
						"ene_akan_cs_cop_asval_smg",
						"ene_akan_cs_cop_r870",
						"ene_akan_cs_heavy_ak47_ass",
						"ene_akan_cs_shield_c45",
						"ene_akan_cs_swat_ak47_ass",
						"ene_akan_cs_swat_r870",
						"ene_akan_cs_swat_sniper_svd_snp",
						"ene_akan_cs_tazer_ak47_ass"
					}
				},
				born = {
					path = "units/pd2_dlc_born/characters/",
					list = {
						"ene_gang_biker_boss",
						"ene_biker_female_1",
						"ene_biker_female_2",
						"ene_biker_female_3",
						"npc_male_mechanic"
					}
				},
				flat = {
					path = "units/pd2_dlc_flat/characters/",
					list = {
						"npc_chavez",
						"npc_jamaican"
					}
				},
				glace = {
					path = "units/pd2_dlc_glace/characters/",
					list = {
						"npc_chinese_prisoner",
						"npc_prisoner_1",
						"npc_prisoner_2",
						"npc_prisoner_3",
						"npc_prisoner_4",
						"npc_prisoner_5",
						"npc_prisoner_6",
						"npc_yakuza_prisoner"
					}
				},
				moon = {
					path = "units/pd2_dlc_moon/characters/",
					list = {
						"civ_male_pilot_2"
					}
				},
				friend = {
					path = "units/pd2_dlc_friend/characters/",
					list = {
						"ene_bolivian_thug_outdoor_01",
						"ene_bolivian_thug_outdoor_02",
						"ene_drug_lord_boss",
						"ene_security_manager",
						"ene_thug_indoor_01",
						"ene_thug_indoor_02"
					}
				},
				gitgud = {
					path = "units/pd2_dlc_gitgud/characters/",
					list = {
						"ene_zeal_bulldozer",
						"ene_zeal_bulldozer_2",
						"ene_zeal_bulldozer_3",
						"ene_zeal_cloaker",
						"ene_zeal_swat",
						"ene_zeal_swat_heavy",
						"ene_zeal_swat_shield",
						"ene_zealdozer_benelli",
						"ene_zealdozer_saiga",
						"ene_zealdozer_m249",
						"ene_zealdozer_titan",
						"ene_zeal_swat_heavy_benelli",
						"ene_zeal_swat_heavy_ump",
						"ene_zeal_swat_heavy_scar",
						"ene_zeal_swat_heavy_g36",
						"ene_zeal_swat_phalanx"
					}
				},
				help = {
					path = "units/pd2_dlc_help/characters/",
					list = {
						"ene_zeal_bulldozer_halloween"
					}
				},
				spa = {
					path = "units/pd2_dlc_spa/characters/",
					list = {
						"ene_sniper_3",
						"npc_spa",
						"npc_spa_2",
						"npc_spa_3",
						"npc_gage"
					}
				},
				fish = {
					path = "units/pd2_dlc_lxy/characters/",
					list = {
						"civ_female_guest_gala_1",
						"civ_female_guest_gala_2",
						"civ_male_guest_gala_1",
						"civ_male_guest_gala_2",
						"civ_male_camera_crew_1"
					}
				},
				slu = {
					path = "units/pd2_dlc_slu/characters/",
					list = {"npc_vlad", "npc_sophia"}
				},
				run = {
					path = "units/pd2_dlc_run/characters/",
					list = {"npc_matt"}
				},
				drm = {
					path = "units/pd2_dlc_drm/characters/",
					list = {
						"ene_bulldozer_medic",
						"ene_bulldozer_minigun",
						"ene_zeal_swat_heavy_sniper"
					}
				}
			}
			return char_map
		end
			
			function CharacterTweakData:_init_taser(presets)
			self.taser = deep_clone(self.presets.base)
			self.taser.experience = {}
			self.taser.weapon = {}
			self.taser.weapon.is_rifle = {
				aim_delay = {0.1, 0.1},
					focus_delay = 4,
					focus_dis = 200,
					spread = 20,
					miss_dis = 40,
					RELOAD_SPEED = 0.66,
					melee_speed = 0.5,
					melee_dmg = 10,
					melee_retry_delay = {1, 2},
					tase_distance = 1500,
					aim_delay_tase = {0, 0},
					range = {
						close = 1000,
						optimal = 2000,
						far = 5000
					},
					autofire_rounds = self.presets.weapon.normal.is_rifle.autofire_rounds,
					FALLOFF = {
					{
						r = 100,
						acc = {0.85, 0.9},
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
						acc = {0.75, 0.95},
						dmg_mul = 2.5,
						recoil = {0.35, 0.7},
							mode = {
							0,
							3,
							3,
							1
						}
					},
					{
						r = 1000,
						acc = {0.65, 0.95},
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
						acc = {0.65, 0.8},
						dmg_mul = 1.25,
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
						acc = {0.45, 0.6},
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
			}
			
			self.taser.weapon.is_shotgun_pump = {
				aim_delay = {0.1, 0.1},
					focus_delay = 4,
					focus_dis = 800,
					spread = 20,
					miss_dis = 40,
					RELOAD_SPEED = 0.66,
					melee_speed = 0.5,
					melee_dmg = 10,
					melee_retry_delay = {1, 2},
					tase_distance = 1500,
					aim_delay_tase = {0, 0},
					range = {
						close = 1000,
						optimal = 2000,
						far = 5000
					},
					FALLOFF = {
						{
							r = 100,
							acc = {0.95, 0.95},
							dmg_mul = 3,
							recoil = {0.4, 0.7},
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
							dmg_mul = 2,
							recoil = {0.4, 0.7},
							mode = {
								1,
								0,
								0,
								0
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
								0,
								0,
								0
							}
						},
						{
							r = 2000,
							acc = {0.45, 0.65},
							dmg_mul = 1,
							recoil = {0.45, 0.8},
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
							dmg_mul = 0.4,
							recoil = {1, 1.2},
							mode = {
								1,
								0,
								0,
								0
							}
						}
					}
				}
			self.taser.detection = self.presets.detection.normal
			self.taser.HEALTH_INIT = 36
			self.taser.calls_in = nil
			self.taser.headshot_dmg_mul = self.taser.HEALTH_INIT / 20
			self.taser.move_speed = self.presets.move_speed.fast
			self.taser.no_retreat = true
			self.taser.no_arrest = true
			self.taser.surrender = self.presets.surrender.special
			self.taser.ecm_vulnerability = 0.9
			self.taser.ecm_hurts = {
				ears = {min_duration = 6, max_duration = 8}
			}
			self.taser.surrender_break_time = {4, 6}
			self.taser.suppression = nil
			self.taser.weapon_voice = "3"
			self.taser.experience.cable_tie = "tie_swat"
			self.taser.speech_prefix_p1 = self._prefix_data_p1.taser()
			self.taser.speech_prefix_p2 = nil
			self.taser.speech_prefix_count = nil
			self.taser.access = "taser"
			self.taser.dodge = self.presets.dodge.athletic
			self.taser.priority_shout = "f32"
			self.taser.rescue_hostages = true
			self.taser.deathguard = true
			self.taser.chatter = {
				aggressive = true,
				retreat = true,
				go_go = true,
				contact = true,
				entrance = true
			}
			self.taser.announce_incomming = "incomming_taser"
			self.taser.steal_loot = true
			self.taser.special_deaths = {}
			self.taser.special_deaths.bullet = {
				[("head"):id():key()] = {
					character_name = "bodhi",
					weapon_id = "model70",
					sequence = "kill_tazer_headshot",
					special_comment = "x01"
				}
			}
		end

		--you didn't listen
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

			
			--it begins
			function CharacterTweakData:_set_overkill_290(presets)
				if SystemInfo:platform() == Idstring("PS3") then
					self:_multiply_all_hp(1.7, 0.75)
				else
					self:_multiply_all_hp(1.7, 0.75)
				end
				self.bolivian.weapon = deep_clone(self.presets.weapon.deathwish)
				self.bolivian_indoors.weapon = deep_clone(self.presets.weapon.deathwish)
				self.medic.HEALTH_INIT = 50
				self.medic.headshot_dmg_mul = 1.35
				self.flashbang_multiplier = 2
				self:_multiply_all_speeds(1.05, 1.1)
				self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
				self:_multiply_weapon_delay(self.presets.weapon.good, 0)
				self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
				self:_multiply_weapon_delay(self.presets.weapon.sniper, .2)
				
				
				--character changes. some of these are untouched
				self.hector_boss.HEALTH_INIT = 900
				self.mobster_boss.HEALTH_INIT = 900
				self.biker_boss.HEALTH_INIT = 900 --bad overkill. 30k hp and 10 damage per shot? are you nuts?
				self.drug_lord_boss.HEALTH_INIT = 900
				self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)
				self.presets.gang_member_damage.REGENERATE_TIME = 1.8 --aw thanks my friend
				self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6 --aw thanks my friend
				self.presets.gang_member_damage.HEALTH_INIT = 300 --aw thanks my friend
				self:_set_characters_weapon_preset("deathwish") -- https://www.youtube.com/watch?v=YzckD8AoOqY
				self.shield.weapon.is_smg.focus_dis = 2000000000000000000000000000
				
				--you're up against the wall and i am the fucking wall
				if not Global.game_settings.single_player then
					self.tank.HEALTH_INIT = 1100
					self.tank_mini.HEALTH_INIT = 1100
					self.tank_medic.HEALTH_INIT = 1100
				else
					self.tank.HEALTH_INIT = 935
					self.tank_mini.HEALTH_INIT = 935
					self.tank_medic.HEALTH_INIT = 935
				end
				self.tank.weapon.is_shotgun_mag.focus_dis = 2000000000000000000000000000
				self.tank.weapon.is_shotgun_pump.focus_dis = 2000000000000000000000000000000
				self.tank.headshot_dmg_mul = 8
				self.tank_mini.headshot_dmg_mul = 8
				self.tank_medic.headshot_dmg_mul = 8
				self.tank.rescue_hostages = true
				self.tank.melee_weapon = "knife_1"
				self.tank.critical_hits = {
					damage_mul = 2
				}
				self.tank.steal_loot = true
				self.tank.no_retreat = true
				self.tank.flammable = true
				self.tank.crouch_move = false --change this to true if you want the bulldozers to be sneaky and spoopy
				self.tank.move_speed = self.presets.move_speed.slow
				self.tank_mini.move_speed = self.presets.move_speed.very_slow
				self.tank.damage.hurt_severity = self.presets.hurt_severities.no_hurts
				self.tank_hw.damage.hurt_severity = self.presets.hurt_severities.no_hurts
				self.tank_hw.HEALTH_INIT = 1500
				self.tank_hw.critical_hits = {
					damage_mul = 2.5
				}
				self.tank_hw.damage.explosion_damage_mul = 0.75
				self.tank_hw.headshot_dmg_mul = 1.5
				--why
				self.tank_hw.ignore_headshot = false
				
				--*knocking intensifies*
				self.phalanx_minion.HEALTH_INIT = 400
				self.phalanx_minion.DAMAGE_CLAMP_BULLET = 400
				self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = 200
				self.phalanx_minion.damage.explosion_damage_mul = 2
				self.phalanx_minion.damage.hurt_severity = self.presets.hurt_severities.no_hurts
				self.phalanx_minion.damage.shield_knocked = true
				self.phalanx_minion.ecm_vulnerability = nil
				self.phalanx_minion.ecm_hurts = {}
				self.phalanx_minion.priority_shout = "f31"
				self.phalanx_minion.weapon.is_smg = {}
				self.phalanx_minion.weapon.is_smg.aim_delay = {0, 0}
				self.phalanx_minion.weapon.is_smg.focus_delay = 0
				self.phalanx_minion.weapon.is_smg.focus_dis = 25000000000000
				self.phalanx_minion.weapon.is_smg.spread = 0
				self.phalanx_minion.weapon.is_smg.miss_dis = 100000000000000
				self.phalanx_minion.weapon.is_smg.RELOAD_SPEED = 1
				self.phalanx_minion.weapon.is_smg.melee_speed = nil
				self.phalanx_minion.weapon.is_smg.melee_dmg = nil
				self.phalanx_minion.weapon.is_smg.melee_retry_delay = nil
				self.phalanx_minion.weapon.is_smg.range = {
					close = 500,
					optimal = 1200,
					far = 3000
				}
				self.phalanx_minion.weapon.is_smg.autofire_rounds = self.presets.weapon.deathwish.is_smg.autofire_rounds
				self.phalanx_vip.HEALTH_INIT = 800
				self.phalanx_vip.DAMAGE_CLAMP_BULLET = 800
				self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = 200
				self.phalanx_vip.damage.explosion_damage_mul = 2
				
				--*CHK CHK CHK*
				self.phalanx_assault = deep_clone(self.phalanx_minion)
				self.phalanx_assault.HEALTH_INIT = 75
				self.phalanx_assault.headshot_dmg_mul = 3.5
				self.phalanx_assault.DAMAGE_CLAMP_BULLET = 400
				self.phalanx_assault.DAMAGE_CLAMP_EXPLOSION = 200
				self.phalanx_assault.damage.explosion_damage_mul = 0.6666
				
				--wololololololol
				self.spooc.HEALTH_INIT = 102
				self.spooc.headshot_dmg_mul = 3.214285714285714
				self.spooc.spooc_attack_timeout = {2, 4}
				if not Global.game_settings.single_player then
					self.spooc.can_be_tased = false --git gud lamp
				end
				self.spooc.rescue_hostages = true
				self.spooc.steal_loot = true
				
				--this is 2-3 reporting in
				self.security.crouch_move = true
				self.security.headshot_dmg_mul = 2.25
				self.cop.headshot_dmg_mul = 2.25
				self.fbi.headshot_dmg_mul = 3.75
				self.fbi.HEALTH_INIT = 8.5
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
				self.city_swat.HEALTH_INIT = 22.5 --changing this will get you a slap. git gud
				self.city_swat.headshot_dmg_mul = 1.5 --this too
				self.city_swat.damage.explosion_damage_mul = 0.8
				self.city_swat.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
				self.fbi_heavy_swat.suppression = nil
				self.fbi_heavy_swat.surrender = self.presets.surrender.hard
				self.fbi_heavy_swat.HEALTH_INIT = 34 
				self.fbi_heavy_swat.headshot_dmg_mul = 1.5
				self.fbi_heavy_swat.damage.explosion_damage_mul = 0.5
				self.fbi_heavy_swat.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
				
				
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

				--rip knockback
				self.cop.damage.immune_to_knockback = true
				self.security.damage.immune_to_knockback = true
				self.gensec.damage.immune_to_knockback = true
				self.fbi.damage.immune_to_knockback = true
				self.sniper.damage.immune_to_knockback = true
				self.swat.damage.immune_to_knockback = true
				self.heavy_swat.damage.immune_to_knockback = true
				self.fbi_swat.damage.immune_to_knockback = true
				self.fbi_heavy_swat.damage.immune_to_knockback = true
				self.city_swat.damage.immune_to_knockback = true
				self.tank.damage.immune_to_knockback = true
				self.spooc.damage.immune_to_knockback = true
				self.taser.damage.immune_to_knockback = true
				self.phalanx_minion.damage.immune_to_knockback = true
				self.phalanx_vip.damage.immune_to_knockback = true
				self.phalanx_assault.damage.immune_to_knockback = false
				self.shield.damage.immune_to_knockback = false
				

				--weapon damage/range changes. some of these are unchanged from vanilla such as hector
				--get fucked kiddo
							
				self.tank_mini.weapon.mini.aim_delay = {0, 0}
				self.tank_mini.weapon.mini.focus_delay = 0
				self.tank_mini.weapon.mini.FALLOFF = {
					{
						r = 100,
						acc = {0.7, 0.9},
						dmg_mul = 5,
						recoil = {0.4, 0.7},
						mode = {
							0,
							0,
							0,
							1
						},
						autofire_rounds = {
							500,
							700
						}
					},
					{
						r = 500,
						acc = {0.65, 0.8},
						dmg_mul = 5,
						recoil = {0.5, 0.8},
						mode = {
							0,
							0,
							0,
							1
						},
						autofire_rounds = {
							500,
							600
						}
					},
					{
						r = 1000,
						acc = {0.45, 0.7},
						dmg_mul = 5,
						recoil = {1, 1},
						mode = {
							0,
							0,
							0,
							1
						},
						autofire_rounds = {
							500,
							500
						}
					},
					{
						r = 2000,
						acc = {0.2, 0.55},
						dmg_mul = 5,
						recoil = {1, 1},
						mode = {
							0,
							0,
							0,
							1
						},
						autofire_rounds = {
							300,
							500
						}
					},
					{
						r = 3000,
						acc = {0.15, 0.35},
						dmg_mul = 5,
						recoil = {1, 2},
						mode = {
							0,
							0,
							0,
							1
						},
						autofire_rounds = {
							100,
							200
						}
					}
				}
				self.tank.weapon.is_rifle.FALLOFF = {
					{
						r = 100,
						acc = {0.7, 0.9},
						dmg_mul = 3.5,
						recoil = {0.4, 0.7},
						mode = {
							0,
							0,
							0,
							1
						}
					},
					{
						r = 500,
						acc = {0.5, 0.75},
						dmg_mul = 3.5,
						recoil = {0.5, 0.8},
						mode = {
							0,
							0,
							0,
							6
						}
					},
					{
						r = 1000,
						acc = {0.3, 0.6},
						dmg_mul = 3.5,
						recoil = {1, 1},
						mode = {
							0,
							0,
							2,
							6
						}
					},
					{
						r = 2000,
						acc = {0.25, 0.55},
						dmg_mul = 3.5,
						recoil = {1, 1},
						mode = {
							0,
							0,
							2,
							6
						}
					},
					{
						r = 3000,
						acc = {0.15, 0.5},
						dmg_mul = 3.5,
						recoil = {1, 2},
						mode = {
							0,
							0,
							2,
							6
						}
					}
				}
				self.tank_hw.weapon.is_rifle.aim_delay = {1, 2}
				self.tank.weapon.is_rifle.focus_delay = 1
				self.swat.weapon.is_shotgun_pump.FALLOFF = {
					{
						r = 100,
						acc = {1, 1},
						dmg_mul = 5,
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
						dmg_mul = 4.5,
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
						dmg_mul = 4,
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
						dmg_mul = 1.5,
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
						dmg_mul = 1,
						recoil = {1.5, 1.75},
						mode = {
							1,
							0,
							0,
							0
						}
					}
				}
				self.taser.weapon.is_rifle.FALLOFF = {
				{
					r = 100,
					acc = {0.9, 0.95},
					dmg_mul = 7,
					recoil = {0.4, 0.4},
					mode = {
						0,
						3,
						3,
						1
					}
				},
				{
					r = 500,
					acc = {0.75, 0.95},
					dmg_mul = 7,
					recoil = {0.4, 0.5},
					mode = {
						0,
						3,
						3,
						1
					}
				},
				{
					r = 1000,
					acc = {0.7, 0.9},
					dmg_mul = 7,
					recoil = {0.4, 0.6},
					mode = {
						0,
						3,
						3,
						1
					}
				},
				{
					r = 2000,
					acc = {0.65, 0.8},
					dmg_mul = 7,
					recoil = {0.5, 1},
					mode = {
						0,
						3,
						3,
						1
					}
				},
				{
					r = 3000,
					acc = {0.55, 0.75},
					dmg_mul = 7,
					recoil = {1, 2},
					mode = {
						0,
						3,
						3,
						1
					}
				}
			}
				self.city_swat.weapon.is_shotgun_pump.FALLOFF= {
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
				self.city_swat.weapon.is_smg.FALLOFF = {
					{
						r = 0,
						acc = {1, 1},
						dmg_mul = 10,
						recoil = {0.35, 0.35},
						mode = {
							0.2,
							2,
							4,
							10
						}
					},
					{
						r = 500,
						acc = {0.8, 1},
						dmg_mul = 9,
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
						acc = {0.65, 0.9},
						dmg_mul = 7.5,
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
						acc = {0.5, 0.8},
						dmg_mul = 3,
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
						acc = {0.3, 0.65},
						dmg_mul = 2,
						recoil = {0.5, 1.2},
						mode = {
							6,
							4,
							2,
							0
						}
					}
				}
				self.phalanx_minion.weapon.is_smg.FALLOFF = {
					{
						r = 0,
						acc = {1, 1},
						dmg_mul = 5,
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
						dmg_mul = 5,
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
						dmg_mul = 5,
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
						dmg_mul = 5,
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
						dmg_mul = 5,
						recoil = {0.5, 1.2},
						mode = {
							6,
							4,
							2,
							0
						}
					}
				}
				self.phalanx_assault.weapon.is_smg.FALLOFF = {
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
				self.sniper.weapon.is_rifle.FALLOFF = {
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
				self.heavy_swat_sniper.weapon.is_rifle.FALLOFF = {
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
				self.tank.weapon.is_shotgun_pump.FALLOFF= {
					{
						r = 100,
						acc = {0.95, 0.95},
						dmg_mul = 6,
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
						dmg_mul = 5.5,
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
						dmg_mul = 2.75,
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
						dmg_mul = 1.375,
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
						dmg_mul = 0.6,
						recoil = {1, 1.2},
						mode = {
							3,
							1,
							1,
							0
						}
					}
				}
				--biker boss doing 10 damage on vanilla dw, seems balanced
				self.biker_boss.weapon.is_rifle.FALLOFF = {
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
				self.biker_boss.weapon.is_rifle.aim_delay = {0, 0}
				self.biker_boss.weapon.is_rifle.focus_delay = 0
				self.tank.weapon.is_shotgun_mag.aim_delay = {0, 0}
				self.tank.weapon.is_shotgun_mag.focus_delay = 0
				self.tank.weapon.is_shotgun_mag.FALLOFF = {
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
				self.tank.weapon.is_rifle.FALLOFF = {
				{
					r = 100,
					acc = {1, 1},
					dmg_mul = 5,
					recoil = {0.4, 0.7},
					mode = {
						0,
						0,
						0,
						1
					}
				},
				{
					r = 500,
					acc = {0.7, 0.8},
					dmg_mul = 5,
					recoil = {0.4, 0.7},
					mode = {
						0,
						1,
						2,
						8
					}
				},
				{
					r = 1000,
					acc = {0.6, 0.8},
					dmg_mul = 5,
					recoil = {0.45, 0.8},
					mode = {
						1,
						3,
						6,
						6
					}
				},
				{
					r = 2000,
					acc = {0.4, 0.6},
					dmg_mul = 5,
					recoil = {0.45, 0.8},
					mode = {
						1,
						2,
						2,
						1
					}
				},
				{
					r = 3000,
					acc = {0.2, 0.35},
					dmg_mul = 5,
					recoil = {1, 1.2},
					mode = {
						4,
						2,
						1,
						0
					}
				}
			}
				self.tank.weapon.is_rifle.aim_delay = {0, 0}
				self.tank.weapon.is_rifle.focus_delay = 0
				self.tank_medic.weapon.is_smg.aim_delay = {0, 0}
				self.tank_medic.weapon.is_smg.focus_delay = 0
				self.tank_medic.weapon.is_smg.FALLOFF = {
					{
						r = 0,
						acc = {1, 1},
						dmg_mul = 5,
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
						dmg_mul = 5,
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
						dmg_mul = 5,
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
						dmg_mul = 5,
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
						dmg_mul = 5,
						recoil = {0.5, 1.2},
						mode = {
							6,
							4,
							2,
							0
						}
					}
				}
				self.shield.weapon.is_smg.aim_delay = {0, 0}
				self.shield.weapon.is_smg.focus_delay = 0
				self.shield.weapon.is_smg.FALLOFF = {
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
				self.shield.weapon.is_smg.aim_delay = {0, 0}
				self.shield.weapon.is_smg.focus_delay = 0
				self.shield.weapon.is_smg.FALLOFF = {
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
				self.hector_boss.weapon.is_shotgun_mag.FALLOFF = {
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
			function CharacterTweakData:_set_sm_wish(presets)
				if SystemInfo:platform() == Idstring("PS3") then
					self:_multiply_all_hp(2, 0.75)
				else
					self:_multiply_all_hp(2, 0.75)
				end
				self.bolivian.weapon = deep_clone(self.presets.weapon.deathwish)
				self.bolivian_indoors.weapon = deep_clone(self.presets.weapon.deathwish)
				self.medic.HEALTH_INIT = 62
				self.medic.headshot_dmg_mul = 1.35
				self.flashbang_multiplier = 2
				self:_multiply_all_speeds(2.05, 2.1)
				self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
				self:_multiply_weapon_delay(self.presets.weapon.good, 0)
				self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
				self:_multiply_weapon_delay(self.presets.weapon.sniper, .2)
				
				
				--character changes. some of these are untouched
				self.hector_boss.HEALTH_INIT = 900
				self.mobster_boss.HEALTH_INIT = 900
				self.biker_boss.HEALTH_INIT = 900 --bad overkill. 30k hp and 10 damage per shot? are you nuts?
				self.drug_lord_boss.HEALTH_INIT = 900
				self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)
				self.presets.gang_member_damage.REGENERATE_TIME = 1.8 --aw thanks my friend
				self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6 --aw thanks my friend
				self.presets.gang_member_damage.HEALTH_INIT = 300 --aw thanks my friend
				self:_set_characters_weapon_preset("deathwish") -- https://www.youtube.com/watch?v=YzckD8AoOqY
				self.shield.weapon.is_smg.focus_dis = 2000000000000000000000000000
				
				--you're up against the wall and i am the fucking wall
				if not Global.game_settings.single_player then
					self.tank.HEALTH_INIT = 2000
					self.tank_mini.HEALTH_INIT = 2000
					self.tank_medic.HEALTH_INIT = 2000
				else
					self.tank.HEALTH_INIT = 1200
					self.tank_mini.HEALTH_INIT = 1200
					self.tank_medic.HEALTH_INIT = 1200
				end
				self.tank.weapon.is_shotgun_mag.focus_dis = 2000000000000000000000000000
				self.tank.weapon.is_shotgun_pump.focus_dis = 2000000000000000000000000000000
				self.tank.headshot_dmg_mul = 12
				self.tank_mini.headshot_dmg_mul = 12
				self.tank_medic.headshot_dmg_mul = 12
				self.tank.rescue_hostages = true
				self.tank.melee_weapon = "knife_1"
				self.tank.critical_hits = {
					damage_mul = 2
				}
				self.tank.steal_loot = true
				self.tank.no_retreat = true
				self.tank.flammable = true
				self.tank.crouch_move = false --change this to true if you want the bulldozers to be sneaky and spoopy
				self.tank.move_speed = self.presets.move_speed.slow
				self.tank_mini.move_speed = self.presets.move_speed.slow
				self.tank.damage.hurt_severity = self.presets.hurt_severities.no_hurts
				self.tank_hw.damage.hurt_severity = self.presets.hurt_severities.no_hurts
				self.tank_hw.HEALTH_INIT = 2500
				self.tank_hw.critical_hits = {
					damage_mul = 2.5
				}
				self.tank_hw.damage.explosion_damage_mul = 0.75
				self.tank_hw.headshot_dmg_mul = 2.5
				--why
				self.tank_hw.ignore_headshot = false
				
				--*knocking intensifies*
				self.phalanx_minion.HEALTH_INIT = 500
				self.phalanx_minion.DAMAGE_CLAMP_BULLET = 500
				self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = 250
				self.phalanx_minion.damage.explosion_damage_mul = 2
				self.phalanx_minion.damage.hurt_severity = self.presets.hurt_severities.no_hurts
				self.phalanx_minion.damage.shield_knocked = true
				self.phalanx_minion.ecm_vulnerability = nil
				self.phalanx_minion.ecm_hurts = {}
				self.phalanx_minion.priority_shout = "f31"
				self.phalanx_minion.weapon.is_smg = {}
				self.phalanx_minion.weapon.is_smg.aim_delay = {0, 0}
				self.phalanx_minion.weapon.is_smg.focus_delay = 0
				self.phalanx_minion.weapon.is_smg.focus_dis = 25000000000000
				self.phalanx_minion.weapon.is_smg.spread = 0
				self.phalanx_minion.weapon.is_smg.miss_dis = 100000000000000
				self.phalanx_minion.weapon.is_smg.RELOAD_SPEED = 1
				self.phalanx_minion.weapon.is_smg.melee_speed = nil
				self.phalanx_minion.weapon.is_smg.melee_dmg = nil
				self.phalanx_minion.weapon.is_smg.melee_retry_delay = nil
				self.phalanx_minion.weapon.is_smg.range = {
					close = 500,
					optimal = 1200,
					far = 3000
				}
				self.phalanx_minion.weapon.is_smg.autofire_rounds = self.presets.weapon.deathwish.is_smg.autofire_rounds
				self.phalanx_vip.HEALTH_INIT = 1000
				self.phalanx_vip.DAMAGE_CLAMP_BULLET = 1000
				self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = 250
				self.phalanx_vip.damage.explosion_damage_mul = 2
				
				--*CHK CHK CHK*
				self.phalanx_assault = deep_clone(self.phalanx_minion)
				self.phalanx_assault.HEALTH_INIT = 94
				self.phalanx_assault.headshot_dmg_mul = 3.5
				self.phalanx_assault.DAMAGE_CLAMP_BULLET = 470
				self.phalanx_assault.DAMAGE_CLAMP_EXPLOSION = 200
				self.phalanx_assault.damage.explosion_damage_mul = 0.4
				
				--wololololololol
				self.spooc.HEALTH_INIT = 102
				self.spooc.headshot_dmg_mul = 3.214285714285714
				self.spooc.spooc_attack_timeout = {1, 3}
				if not Global.game_settings.single_player then
					self.spooc.can_be_tased = false --git gud lamp
				end
				self.spooc.rescue_hostages = true
				self.spooc.steal_loot = true
				
				--you're fucking dead, kiddo
				self.shield.HEALTH_INIT = 25
				self.fbi.HEALTH_INIT = 10
				self.swat.HEALTH_INIT = 28.1
				self.heavy_swat.HEALTH_INIT = 34
				self.swat.headshot_dmg_mul = 1.5
				self.heavy_swat.headshot_dmg_mul = 1.5
				self.swat.surrender = self.presets.surrender.hard
				self.heavy_swat.surrender = self.presets.surrender.hard
				self.swat.suppression = nil
				self.heavy_swat.suppression = nil
				self.swat.rescue_hostages = true
				self.heavy_swat.rescue_hostages = true
				self.swat.steal_loot = true
				self.heavy_swat.steal_loot = true
				
				--this is 2-3 reporting in
				self.security.crouch_move = true
				self.security.headshot_dmg_mul = 2.25
				self.cop.headshot_dmg_mul = 2.25
				self.fbi.headshot_dmg_mul = 3.75
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
				self.city_swat.HEALTH_INIT = 43 --changing this will get you a slap. git gud
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

				--rip knockback
				self.cop.damage.immune_to_knockback = true
				self.security.damage.immune_to_knockback = true
				self.gensec.damage.immune_to_knockback = true
				self.fbi.damage.immune_to_knockback = true
				self.sniper.damage.immune_to_knockback = true
				self.swat.damage.immune_to_knockback = true
				self.heavy_swat.damage.immune_to_knockback = true
				self.fbi_swat.damage.immune_to_knockback = true
				self.fbi_heavy_swat.damage.immune_to_knockback = true
				self.city_swat.damage.immune_to_knockback = true
				self.tank.damage.immune_to_knockback = true
				self.spooc.damage.immune_to_knockback = true
				self.taser.damage.immune_to_knockback = true
				self.phalanx_minion.damage.immune_to_knockback = true
				self.phalanx_vip.damage.immune_to_knockback = true
				self.phalanx_assault.damage.immune_to_knockback = false
				self.shield.damage.immune_to_knockback = false
				

				--weapon damage/range changes. some of these are unchanged from vanilla such as hector

				--get fucked kiddo
				self.tank_mini.weapon.mini.aim_delay = {0, 0}
				self.tank_mini.weapon.mini.focus_delay = 0
				self.tank_mini.weapon.mini.FALLOFF = {
					{
						r = 100,
						acc = {0.7, 0.9},
						dmg_mul = 7,
						recoil = {0.4, 0.7},
						mode = {
							0,
							0,
							0,
							1
						},
						autofire_rounds = {
							500,
							700
						}
					},
					{
						r = 500,
						acc = {0.65, 0.8},
						dmg_mul = 7,
						recoil = {0.5, 0.8},
						mode = {
							0,
							0,
							0,
							1
						},
						autofire_rounds = {
							500,
							600
						}
					},
					{
						r = 1000,
						acc = {0.45, 0.7},
						dmg_mul = 7,
						recoil = {1, 1},
						mode = {
							0,
							0,
							0,
							1
						},
						autofire_rounds = {
							500,
							500
						}
					},
					{
						r = 2000,
						acc = {0.2, 0.55},
						dmg_mul = 7,
						recoil = {1, 1},
						mode = {
							0,
							0,
							0,
							1
						},
						autofire_rounds = {
							300,
							500
						}
					},
					{
						r = 3000,
						acc = {0.15, 0.35},
						dmg_mul = 7,
						recoil = {1, 2},
						mode = {
							0,
							0,
							0,
							1
						},
						autofire_rounds = {
							100,
							200
						}
					}
				}
				self.tank.weapon.is_rifle.FALLOFF = {
					{
						r = 100,
						acc = {0.7, 0.9},
						dmg_mul = 5,
						recoil = {0.4, 0.7},
						mode = {
							0,
							0,
							0,
							1
						}
					},
					{
						r = 500,
						acc = {0.5, 0.75},
						dmg_mul = 5,
						recoil = {0.5, 0.8},
						mode = {
							0,
							0,
							0,
							6
						}
					},
					{
						r = 1000,
						acc = {0.3, 0.6},
						dmg_mul = 5,
						recoil = {1, 1},
						mode = {
							0,
							0,
							2,
							6
						}
					},
					{
						r = 2000,
						acc = {0.25, 0.55},
						dmg_mul = 5,
						recoil = {1, 1},
						mode = {
							0,
							0,
							2,
							6
						}
					},
					{
						r = 3000,
						acc = {0.15, 0.5},
						dmg_mul = 5,
						recoil = {1, 2},
						mode = {
							0,
							0,
							2,
							6
						}
					}
				}
				self.tank_hw.weapon.is_rifle.aim_delay = {1, 2}
				self.tank.weapon.is_rifle.focus_delay = 1
				self.swat.weapon.is_shotgun_pump.FALLOFF = {
					{
						r = 100,
						acc = {1, 1},
						dmg_mul = 5,
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
						dmg_mul = 4.5,
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
						dmg_mul = 4,
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
						dmg_mul = 1.5,
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
						dmg_mul = 1,
						recoil = {1.5, 1.75},
						mode = {
							1,
							0,
							0,
							0
						}
					}
				}
				self.taser.weapon.is_rifle.FALLOFF = {
				{
					r = 100,
					acc = {0.9, 0.95},
					dmg_mul = 3,
					recoil = {0.4, 0.4},
					mode = {
						0,
						3,
						3,
						1
					}
				},
				{
					r = 500,
					acc = {0.75, 0.95},
					dmg_mul = 2.5,
					recoil = {0.4, 0.5},
					mode = {
						0,
						3,
						3,
						1
					}
				},
				{
					r = 1000,
					acc = {0.7, 0.9},
					dmg_mul = 2,
					recoil = {0.4, 0.6},
					mode = {
						0,
						3,
						3,
						1
					}
				},
				{
					r = 2000,
					acc = {0.65, 0.8},
					dmg_mul = 1.5,
					recoil = {0.5, 1},
					mode = {
						0,
						3,
						3,
						1
					}
				},
				{
					r = 3000,
					acc = {0.55, 0.75},
					dmg_mul = 1.25,
					recoil = {1, 2},
					mode = {
						0,
						3,
						3,
						1
					}
				}
			}
				self.city_swat.weapon.is_shotgun_pump.FALLOFF= {
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
				self.heavy_swat.weapon.is_shotgun_pump.FALLOFF= {
					{
						r = 100,
						acc = {0.95, 0.95},
						dmg_mul = 3.4,
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
						r = 1000,
						acc = {
							0,
							5,
							0.8
						},
						dmg_mul = 2.3,
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
				self.city_swat.weapon.is_smg.FALLOFF = {
					{
						r = 0,
						acc = {1, 1},
						dmg_mul = 8,
						recoil = {0.35, 0.35},
						mode = {
							0.2,
							2,
							4,
							10
						}
					},
					{
						r = 500,
						acc = {0.8, 1},
						dmg_mul = 7,
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
						acc = {0.65, 0.9},
						dmg_mul = 5,
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
						acc = {0.5, 0.8},
						dmg_mul = 3,
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
						acc = {0.3, 0.65},
						dmg_mul = 2,
						recoil = {0.5, 1.2},
						mode = {
							6,
							4,
							2,
							0
						}
					}
				}
				self.heavy_swat.weapon.is_smg.FALLOFF = {
					{
						r = 0,
						acc = {1, 1},
						dmg_mul = 12,
						recoil = {0.35, 0.35},
						mode = {
							0.2,
							2,
							4,
							10
						}
					},
					{
						r = 500,
						acc = {0.9, 1},
						dmg_mul = 11,
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
						acc = {0.65, 0.9},
						dmg_mul = 10,
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
						acc = {0.5, 0.8},
						dmg_mul = 6,
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
						acc = {0.3, 0.65},
						dmg_mul = 2,
						recoil = {0.5, 1.2},
						mode = {
							6,
							4,
							2,
							0
						}
					}
				}
				
				self.heavy_swat.weapon.is_rifle.FALLOFF = {
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
						acc = {0.8, 0.65},
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
						acc = {0.6, 0.4},
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
						acc = {0.3, 0.2},
						dmg_mul = 1.25,
						recoil = {1.5, 3},
						mode = {
							3,
							1,
							1,
							0
						}
					}
				}
				self.phalanx_minion.weapon.is_smg.FALLOFF = {
					{
						r = 0,
						acc = {1, 1},
						dmg_mul = 5,
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
						dmg_mul = 5,
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
						dmg_mul = 5,
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
						dmg_mul = 5,
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
						dmg_mul = 5,
						recoil = {0.5, 1.2},
						mode = {
							6,
							4,
							2,
							0
						}
					}
				}
				self.phalanx_assault.weapon.is_smg.FALLOFF = {
					{
						r = 0,
						acc = {1, 1},
						dmg_mul = 9,
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
						dmg_mul = 9,
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
						dmg_mul = 9,
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
						dmg_mul = 9,
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
						dmg_mul = 9,
						recoil = {0.5, 1.2},
						mode = {
							6,
							4,
							2,
							0
						}
					}
				}
				self.sniper.weapon.is_rifle.FALLOFF = {
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
				self.heavy_swat_sniper.weapon.is_rifle.FALLOFF = {
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
				self.tank.weapon.is_shotgun_pump.FALLOFF= {
					{
						r = 100,
						acc = {0.95, 0.95},
						dmg_mul = 4,
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
						dmg_mul = 3.2,
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
						dmg_mul = 2.75,
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
						dmg_mul = 1.375,
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
						dmg_mul = 0.6,
						recoil = {1, 1.2},
						mode = {
							3,
							1,
							1,
							0
						}
					}
				}
				--biker boss doing 10 damage on vanilla dw, seems balanced
				self.biker_boss.weapon.is_rifle.FALLOFF = {
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
				self.biker_boss.weapon.is_rifle.aim_delay = {0, 0}
				self.biker_boss.weapon.is_rifle.focus_delay = 0
				self.tank.weapon.is_shotgun_mag.aim_delay = {0, 0}
				self.tank.weapon.is_shotgun_mag.focus_delay = 0
				self.tank.weapon.is_shotgun_mag.FALLOFF = {
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
				self.tank.weapon.is_rifle.FALLOFF = {
				{
					r = 100,
					acc = {1, 1},
					dmg_mul = 5,
					recoil = {0.4, 0.7},
					mode = {
						0,
						0,
						0,
						1
					}
				},
				{
					r = 500,
					acc = {0.7, 0.8},
					dmg_mul = 5,
					recoil = {0.4, 0.7},
					mode = {
						0,
						1,
						2,
						8
					}
				},
				{
					r = 1000,
					acc = {0.6, 0.8},
					dmg_mul = 5,
					recoil = {0.45, 0.8},
					mode = {
						1,
						3,
						6,
						6
					}
				},
				{
					r = 2000,
					acc = {0.4, 0.6},
					dmg_mul = 5,
					recoil = {0.45, 0.8},
					mode = {
						1,
						2,
						2,
						1
					}
				},
				{
					r = 3000,
					acc = {0.2, 0.35},
					dmg_mul = 5,
					recoil = {1, 1.2},
					mode = {
						4,
						2,
						1,
						0
					}
				}
			}
				self.tank.weapon.is_rifle.aim_delay = {0, 0}
				self.tank.weapon.is_rifle.focus_delay = 0
				self.tank_medic.weapon.is_smg.aim_delay = {0, 0}
				self.tank_medic.weapon.is_smg.focus_delay = 0
				self.tank_medic.weapon.is_smg.FALLOFF = {
					{
						r = 0,
						acc = {1, 1},
						dmg_mul = 7,
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
						dmg_mul = 7,
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
						dmg_mul = 7,
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
						dmg_mul = 7,
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
						dmg_mul = 7,
						recoil = {0.5, 1.2},
						mode = {
							6,
							4,
							2,
							0
						}
					}
				}
				self.shield.weapon.is_smg.aim_delay = {0, 0}
				self.shield.weapon.is_smg.focus_delay = 0
				self.shield.weapon.is_smg.FALLOFF = {
					{
						r = 0,
						acc = {1, 1},
						dmg_mul = 7,
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
						dmg_mul = 7,
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
						dmg_mul = 7,
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
						dmg_mul = 7,
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
						dmg_mul = 7,
						recoil = {0.5, 1.2},
						mode = {
							6,
							4,
							2,
							0
						}
					}
				}
				self.shield.weapon.is_smg.aim_delay = {0, 0}
				self.shield.weapon.is_smg.focus_delay = 0
				self.shield.weapon.is_smg.FALLOFF = {
					{
						r = 0,
						acc = {1, 1},
						dmg_mul = 7,
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
						dmg_mul = 7,
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
						dmg_mul = 7,
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
						dmg_mul = 7,
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
						dmg_mul = 7,
						recoil = {0.35, 1.5},
						mode = {
							1,
							0,
							0,
							0
						}
					}
				}
				self.hector_boss.weapon.is_shotgun_mag.FALLOFF = {
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
	if DW.settings.dw_baby_toggle_value then
		function CharacterTweakData:_set_overkill_290()
			if SystemInfo:platform() == Idstring("PS3") then
				self:_multiply_all_hp(6, 2.449489742783178)
			else
				self:_multiply_all_hp(6, 2.449489742783178)
			end
			self.hector_boss.weapon.is_shotgun_mag.FALLOFF = {
				{
					r = 200,
					acc = {0.6, 0.9},
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
					acc = {0.6, 0.9},
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
					acc = {0.4, 0.8},
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
					acc = {0.4, 0.55},
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
					acc = {0.1, 0.35},
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
			self.hector_boss.HEALTH_INIT = 900
			self.mobster_boss.HEALTH_INIT = 900
			self.biker_boss.HEALTH_INIT = 3000
			self:_multiply_all_speeds(2.05, 2.1)
			self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
			self:_multiply_weapon_delay(self.presets.weapon.good, 0)
			self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
			self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
			self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)
			self.presets.gang_member_damage.REGENERATE_TIME = 1.8
			self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
			self.presets.gang_member_damage.HEALTH_INIT = 600
			self:_set_characters_weapon_preset("deathwish")
			self.spooc.spooc_attack_timeout = {3, 4}
			self.sniper.weapon.is_rifle.FALLOFF = {
				{
					r = 700,
					acc = {0.7, 1},
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
					acc = {0.6, 0.95},
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
					acc = {0.2, 0.8},
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
			self.tank.weapon.is_shotgun_mag.aim_delay = {0, 0}
			self.tank.weapon.is_shotgun_mag.focus_delay = 0
			self.tank.weapon.is_shotgun_mag.FALLOFF = {
				{
					r = 100,
					acc = {0.75, 0.9},
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
					acc = {0.75, 0.9},
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
					acc = {0.7, 0.85},
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
					acc = {0.5, 0.65},
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
					acc = {0.3, 0.5},
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
			self.tank.weapon.is_shotgun_pump.FALLOFF[1].dmg_mul = 9
			self.tank.weapon.is_shotgun_pump.FALLOFF[2].dmg_mul = 8
			self.tank.weapon.is_shotgun_pump.FALLOFF[3].dmg_mul = 7
			self.tank.weapon.is_rifle.FALLOFF = {
				{
					r = 100,
					acc = {0.7, 0.9},
					dmg_mul = 5,
					recoil = {0.4, 0.7},
					mode = {
						0,
						0,
						0,
						1
					}
				},
				{
					r = 500,
					acc = {0.5, 0.75},
					dmg_mul = 5,
					recoil = {0.5, 0.8},
					mode = {
						0,
						0,
						0,
						6
					}
				},
				{
					r = 1000,
					acc = {0.3, 0.6},
					dmg_mul = 5,
					recoil = {1, 1},
					mode = {
						0,
						0,
						2,
						6
					}
				},
				{
					r = 2000,
					acc = {0.25, 0.55},
					dmg_mul = 5,
					recoil = {1, 1},
					mode = {
						0,
						0,
						2,
						6
					}
				},
				{
					r = 3000,
					acc = {0.15, 0.5},
					dmg_mul = 5,
					recoil = {1, 2},
					mode = {
						0,
						0,
						2,
						6
					}
				}
			}
			self.tank.weapon.is_rifle.aim_delay = {0, 0}
			self.tank.weapon.is_rifle.focus_delay = 0
			self.shield.weapon.is_smg.aim_delay = {0, 0}
			self.shield.weapon.is_smg.focus_delay = 0
			self.shield.weapon.is_smg.FALLOFF = {
				{
					r = 0,
					acc = {0.9, 0.95},
					dmg_mul = 7,
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
					acc = {0.8, 0.8},
					dmg_mul = 7,
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
					acc = {0.6, 0.65},
					dmg_mul = 7,
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
					acc = {0.5, 0.7},
					dmg_mul = 7,
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
					acc = {0.5, 0.5},
					dmg_mul = 7,
					recoil = {0.5, 1.2},
					mode = {
						6,
						4,
						2,
						0
					}
				}
			}
			self.shield.weapon.is_smg.aim_delay = {0, 0}
			self.shield.weapon.is_smg.focus_delay = 0
			self.shield.weapon.is_smg.FALLOFF = {
				{
					r = 0,
					acc = {0.6, 0.9},
					dmg_mul = 7.5,
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
					acc = {0.6, 0.8},
					dmg_mul = 7.5,
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
					acc = {0.6, 0.75},
					dmg_mul = 7.5,
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
					acc = {0.6, 0.75},
					dmg_mul = 7.5,
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
					acc = {0.5, 0.6},
					dmg_mul = 7.5,
					recoil = {0.35, 1.5},
					mode = {
						1,
						0,
						0,
						0
					}
				}
			}
			self.taser.weapon.is_rifle.FALLOFF = {
				{
					r = 100,
					acc = {0.9, 0.95},
					dmg_mul = 7,
					recoil = {0.4, 0.4},
					mode = {
						0,
						3,
						3,
						1
					}
				},
				{
					r = 500,
					acc = {0.75, 0.95},
					dmg_mul = 7,
					recoil = {0.4, 0.5},
					mode = {
						0,
						3,
						3,
						1
					}
				},
				{
					r = 1000,
					acc = {0.7, 0.9},
					dmg_mul = 7,
					recoil = {0.4, 0.6},
					mode = {
						1,
						2,
						3,
						0
					}
				},
				{
					r = 2000,
					acc = {0.65, 0.8},
					dmg_mul = 7,
					recoil = {0.5, 1},
					mode = {
						3,
						2,
						2,
						0
					}
				},
				{
					r = 3000,
					acc = {0.55, 0.75},
					dmg_mul = 7,
					recoil = {1, 2},
					mode = {
						3,
						1,
						1,
						0
					}
				}
			}
			self.city_swat.damage.explosion_damage_mul = 1
			self.city_swat.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
			self.shield.weapon.is_smg.focus_dis = 200
			self.tank.weapon.is_shotgun_mag.focus_dis = 200
			self.tank.weapon.is_shotgun_pump.focus_dis = 200
			self.phalanx_minion.HEALTH_INIT = 400
			self.phalanx_minion.DAMAGE_CLAMP_BULLET = 40
			self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = self.phalanx_minion.DAMAGE_CLAMP_BULLET
			self.phalanx_vip.HEALTH_INIT = 800
			self.phalanx_vip.DAMAGE_CLAMP_BULLET = 80
			self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = self.phalanx_vip.DAMAGE_CLAMP_BULLET
			self.flashbang_multiplier = 2
		end
		function CharacterTweakData:_set_sm_wish()
			if SystemInfo:platform() == Idstring("PS3") then
				self:_multiply_all_hp(9, 3)
			else
				self:_multiply_all_hp(9, 3)
			end
		--[[	self.heavy_swat.headshot_dmg_mul = 7.68
			self.swat.headshot_dmg_mul = 4
			self.tank.headshot_dmg_mul = 7]]
			self.hector_boss.weapon.is_shotgun_mag.FALLOFF = {
				{
					r = 200,
					acc = {0.6, 0.9},
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
					acc = {0.6, 0.9},
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
					acc = {0.4, 0.8},
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
					acc = {0.4, 0.55},
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
					acc = {0.1, 0.35},
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
			self.hector_boss.HEALTH_INIT = 900
			self.mobster_boss.HEALTH_INIT = 900
			self.biker_boss.HEALTH_INIT = 3000
			self:_multiply_all_speeds(2.05, 2.1)
			self:_multiply_weapon_delay(self.presets.weapon.normal, 0)
			self:_multiply_weapon_delay(self.presets.weapon.good, 0)
			self:_multiply_weapon_delay(self.presets.weapon.expert, 0)
			self:_multiply_weapon_delay(self.presets.weapon.sniper, 3)
			self:_multiply_weapon_delay(self.presets.weapon.gang_member, 0)
			self.presets.gang_member_damage.REGENERATE_TIME = 1.8
			self.presets.gang_member_damage.REGENERATE_TIME_AWAY = 0.6
			self.presets.gang_member_damage.HEALTH_INIT = 300
			self:_set_characters_weapon_preset("deathwish")
			self.spooc.spooc_attack_timeout = {3, 4}
			self.sniper.weapon.is_rifle.FALLOFF = {
				{
					r = 700,
					acc = {0.7, 1},
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
					acc = {0.6, 0.95},
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
					acc = {0.2, 0.8},
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
			self.tank.weapon.is_shotgun_mag.aim_delay = {0, 0}
			self.tank.weapon.is_shotgun_mag.focus_delay = 0
			self.tank.weapon.is_shotgun_mag.FALLOFF = {
				{
					r = 100,
					acc = {0.75, 0.9},
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
					acc = {0.75, 0.9},
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
					r = 1000,
					acc = {0.7, 0.85},
					dmg_mul = 2,
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
					acc = {0.5, 0.65},
					dmg_mul = 2,
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
					dmg_mul = 1,
					recoil = {1, 1.2},
					mode = {
						3,
						1,
						1,
						0
					}
				}
			}
			self.tank.weapon.is_shotgun_pump.FALLOFF[1].dmg_mul = 9
			self.tank.weapon.is_shotgun_pump.FALLOFF[2].dmg_mul = 8
			self.tank.weapon.is_shotgun_pump.FALLOFF[3].dmg_mul = 7
			self.tank.weapon.is_rifle.FALLOFF = {
				{
					r = 100,
					acc = {0.8, 0.95},
					dmg_mul = 5,
					recoil = {0.4, 0.7},
					mode = {
						0,
						0,
						0,
						1
					}
				},
				{
					r = 500,
					acc = {0.6, 0.75},
					dmg_mul = 4,
					recoil = {0.5, 0.8},
					mode = {
						0,
						0,
						0,
						6
					}
				},
				{
					r = 1000,
					acc = {0.4, 0.7},
					dmg_mul = 3,
					recoil = {1, 1},
					mode = {
						0,
						0,
						2,
						6
					}
				},
				{
					r = 2000,
					acc = {0.4, 0.55},
					dmg_mul = 3,
					recoil = {1, 1},
					mode = {
						0,
						0,
						2,
						6
					}
				},
				{
					r = 3000,
					acc = {0.15, 0.5},
					dmg_mul = 3,
					recoil = {1, 2},
					mode = {
						0,
						0,
						2,
						6
					}
				}
			}
			self.tank.weapon.is_rifle.aim_delay = {0, 0}
			self.tank.weapon.is_rifle.focus_delay = 0
			self.shield.weapon.is_smg.aim_delay = {0, 0}
			self.shield.weapon.is_smg.focus_delay = 0
			self.shield.weapon.is_smg.FALLOFF = {
				{
					r = 0,
					acc = {0.9, 0.95},
					dmg_mul = 7,
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
					acc = {0.8, 0.8},
					dmg_mul = 7,
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
					acc = {0.6, 0.65},
					dmg_mul = 7,
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
					acc = {0.5, 0.7},
					dmg_mul = 7,
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
					acc = {0.5, 0.5},
					dmg_mul = 7,
					recoil = {0.5, 1.2},
					mode = {
						6,
						4,
						2,
						0
					}
				}
			}
			self.shield.weapon.is_smg.aim_delay = {0, 0}
			self.shield.weapon.is_smg.focus_delay = 0
			self.shield.weapon.is_smg.FALLOFF = {
				{
					r = 100,
					acc = {0.95, 0.95},
					dmg_mul = 6,
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
					acc = {0.6, 0.75},
					dmg_mul = 5,
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
					acc = {0.5, 0.65},
					dmg_mul = 5,
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
					acc = {0.5, 0.6},
					dmg_mul = 4,
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
					acc = {0.5, 0.6},
					dmg_mul = 4,
					recoil = {0.5, 1.5},
					mode = {
						1,
						6,
						2,
						0
					}
				}
			}
			self.taser.weapon.is_rifle.FALLOFF = {
				{
					r = 100,
					acc = {0.9, 0.975},
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
					acc = {0.875, 0.95},
					dmg_mul = 6.5,
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
					acc = {0.7, 0.9},
					dmg_mul = 6.5,
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
					acc = {0.7, 0.85},
					dmg_mul = 5.5,
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
					acc = {0.65, 0.75},
					dmg_mul = 5.5,
					recoil = {0.7, 1.1},
					mode = {
						3,
						1,
						5,
						0.5
					}
				}
			}
			self.city_swat.damage.explosion_damage_mul = 1
			self.city_swat.damage.hurt_severity = self.presets.hurt_severities.light_hurt_fire_poison
			self.shield.weapon.is_smg.focus_dis = 200
			self.tank.weapon.is_shotgun_mag.focus_dis = 200
			self.tank.weapon.is_shotgun_pump.focus_dis = 200
			self.phalanx_minion.HEALTH_INIT = 400
			self.phalanx_minion.DAMAGE_CLAMP_BULLET = 40
			self.phalanx_minion.DAMAGE_CLAMP_EXPLOSION = self.phalanx_minion.DAMAGE_CLAMP_BULLET
			self.phalanx_vip.HEALTH_INIT = 800
			self.phalanx_vip.DAMAGE_CLAMP_BULLET = 80
			self.phalanx_vip.DAMAGE_CLAMP_EXPLOSION = self.phalanx_vip.DAMAGE_CLAMP_BULLET
			self.flashbang_multiplier = 2
		end
		end
	end
end