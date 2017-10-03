if DW.settings.dw_enemy_toggle_value and DW.settings.dw_baby_toggle_value then
log("[Death Wish+] host only changes and main changes are both on!!! disabling mod.")
return
end

if not DW.settings.dw_enemy_toggle_value then return end

--lazy fixes
local ai_type = tweak_data.levels:get_ai_group_type()
local job = Global.level_data and Global.level_data.level_id
if ai_type ~= "america" or job == "firestarter_2" then return end

--one down+
--does anyone honestly play this shit anymore? idk why i bother

local sm_wish = {
		["units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1"] = "units/pd2_dlc_gitgud/characters/ene_zealdozer_saiga/ene_zealdozer_saiga",
		["units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2"] = "units/pd2_dlc_gitgud/characters/ene_zealdozer_saiga/ene_zealdozer_saiga",
		["units/payday2/characters/ene_bulldozer_3/ene_bulldozer_3"] = "units/pd2_dlc_gitgud/characters/ene_zealdozer_m249/ene_zealdozer_m249",
		["units/payday2/characters/ene_bulldozer_7/ene_bulldozer_7"] = "units/pd2_dlc_gitgud/characters/ene_zealdozer_titan/ene_zealdozer_titan",
		["units/payday2/characters/ene_city_swat_1/ene_city_swat_1"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_g36/ene_zeal_swat_heavy_g36",
		["units/payday2/characters/ene_city_swat_2/ene_city_swat_2"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_benelli/ene_zeal_swat_heavy_benelli",
		["units/payday2/characters/ene_city_swat_3/ene_city_swat_3"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_scar/ene_zeal_swat_heavy_scar",
		["units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_ump/ene_zeal_swat_heavy_ump",
		["units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_ump/ene_zeal_swat_heavy_ump",
		["units/payday2/characters/ene_swat_1/ene_swat_1"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_ump/ene_zeal_swat_heavy_ump",
		["units/payday2/characters/ene_swat_2/ene_swat_2"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_ump/ene_zeal_swat_heavy_ump",
		["units/payday2/characters/ene_swat_heavy_1/ene_swat_heavy_1"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy/ene_zeal_swat_heavy",
		["units/payday2/characters/ene_swat_heavy_r870/ene_swat_heavy_r870"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_benelli/ene_zeal_swat_heavy_benelli",
		["units/payday2/characters/ene_shield_1/ene_shield_1"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield",
		["units/payday2/characters/ene_shield_2/ene_shield_2"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield",
		["units/payday2/characters/ene_city_shield/ene_city_shield"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_shield/ene_zeal_swat_shield",
		["units/payday2/characters/ene_fbi_1/ene_fbi_1"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat",
		["units/payday2/characters/ene_fbi_2/ene_fbi_2"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat",
		["units/payday2/characters/ene_fbi_3/ene_fbi_3"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat/ene_zeal_swat",
		["units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_scar/ene_zeal_swat_heavy_scar",
		["units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870"] = "units/pd2_dlc_gitgud/characters/ene_zeal_swat_heavy_benelli/ene_zeal_swat_heavy_benelli",
	}
--at least this time i can add the correct fucking bulldozers instead of identical ones with slightly different colors

--death wish+
local deathwish = {
		["units/payday2/characters/ene_bulldozer_1/ene_bulldozer_1"] = "units/payday2/characters/ene_bulldozer_6/ene_bulldozer_6",
		["units/payday2/characters/ene_bulldozer_2/ene_bulldozer_2"] = "units/payday2/characters/ene_bulldozer_6/ene_bulldozer_6",
		["units/payday2/characters/ene_fbi_swat_1/ene_fbi_swat_1"] = "units/payday2/characters/ene_city_swat_1/ene_city_swat_1",
		["units/payday2/characters/ene_fbi_swat_2/ene_fbi_swat_2"] = "units/payday2/characters/ene_city_swat_2/ene_city_swat_2",
		["units/payday2/characters/ene_swat_1/ene_swat_1"] = "units/payday2/characters/ene_city_swat_3/ene_city_swat_3",
		["units/payday2/characters/ene_swat_2/ene_swat_2"] = "units/payday2/characters/ene_city_swat_3/ene_city_swat_3",
		["units/payday2/characters/ene_swat_heavy_1/ene_swat_heavy_1"] = "units/payday2/characters/ene_city_swat_4/ene_city_swat_4",
		["units/payday2/characters/ene_swat_heavy_r870/ene_swat_heavy_r870"] = "units/payday2/characters/ene_city_swat_2/ene_city_swat_2",
		["units/payday2/characters/ene_shield_1/ene_shield_1"] = "units/payday2/characters/ene_city_shield/ene_city_shield",
		["units/payday2/characters/ene_shield_2/ene_shield_2"] = "units/payday2/characters/ene_city_shield/ene_city_shield",
		["units/payday2/characters/ene_fbi_heavy_1/ene_fbi_heavy_1"] = "units/payday2/characters/ene_city_swat_4/ene_city_swat_4",
		["units/payday2/characters/ene_fbi_heavy_r870/ene_fbi_heavy_r870"] = "units/payday2/characters/ene_city_swat_2/ene_city_swat_2"
	}

function ElementSpawnEnemyDummy:init(...)
	ElementSpawnEnemyDummy.super.init(self, ...)
	local ai_type = tweak_data.levels:get_ai_group_type()
    local difficulty = Global.game_settings and Global.game_settings.difficulty or "normal"
    local difficulty_index = tweak_data:difficulty_to_index(difficulty)
    local job = Global.level_data and Global.level_data.level_id

    if ai_type == "america" and job ~= "firestarter_2" then --only replace enemies if we're in america and not on firestarter 2, otherwise DHS appear in FBI office and it looks fucking stupid
        if difficulty_index == 8 then --DHS over GenSec/FBI
            if sm_wish[self._values.enemy] then
                self._values.enemy = sm_wish[self._values.enemy]
            end
            self._values.enemy = sm_wish[self._values.enemy] or self._values.enemy
        elseif difficulty_index == 7 or difficulty_index == 6 then --GenSec over FBI
            if deathwish[self._values.enemy] then
                self._values.enemy = deathwish[self._values.enemy]
            end
            self._values.enemy = deathwish[self._values.enemy] or self._values.enemy
        end
    
	self._enemy_name = self._values.enemy and Idstring(self._values.enemy) or Idstring("units/payday2/characters/ene_swat_1/ene_swat_1")
	self._values.enemy = nil
	self._units = {}
	self._events = {}
	self:_finalize_values()
end

end