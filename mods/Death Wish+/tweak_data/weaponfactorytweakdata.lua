if DW.settings.dw_enemy_toggle_value and not DMCWO then
    local old_init = WeaponFactoryTweakData.init
	function WeaponFactoryTweakData:init(tweak_data)
		old_init(self, tweak_data)
        self.parts.wpn_fps_upg_a_dragons_breath = {
            dlc = "bbq",
            pcs = {},
            type = "ammo",
            name_id = "bm_wp_upg_a_dragons_breath",
            a_obj = "a_body",
            unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
            third_unit = "units/payday2/weapons/wpn_upg_dummy/wpn_upg_dummy",
            texture_bundle_folder = "bbq",
            is_a_unlockable = true,
            stats = {
                value = 5,
                total_ammo_mod = -2,
                damage = -6,
                spread = -1,
                moving_spread = 3
            },
            custom_stats = {
                ignore_statistic = true,
                rays = 12,
                damage_near_mul = 2,
                damage_far_mul = 1.15,
                armor_piercing_add = 1,
                can_shoot_through_shield = true,
                bullet_class = "FlameBulletBase",
                muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
                fire_dot_data = {
                    dot_damage = "2",
                    dot_trigger_max_distance = "3000",
                    dot_trigger_chance = "100",
                    dot_length = "3.1",
                    dot_tick_period = "0.5"
                }
            },
            muzzleflash = "effects/payday2/particles/weapons/shotgun/sho_muzzleflash_dragons_breath",
            hit_effect = "dragonsbreath",
            internal_part = true,
            sub_type = "ammo_dragons_breath",
            forbids = {
                "wpn_fps_upg_ns_shot_thick",
                "wpn_fps_upg_ns_sho_salvo_large",
                "wpn_fps_sho_aa12_barrel_silenced",
                "wpn_fps_sho_striker_b_suppressed"
            }
        }
    end
end