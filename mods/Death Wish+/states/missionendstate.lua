if not CustomAchievement or not DW.settings.dw_enemy_toggle_value or not SystemFS:exists("mods/Custom Achievements Addons/custom_ach_dwplus_hoxout_sm.json") then return end

Hooks:PostHook( MissionEndState, "at_enter", "dw_plus_achieveos", function(self)
    if managers.groupai:state():whisper_mode() == false then
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_hoxout_sm", "hox_2", "sm_wish")
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_hoxout_deathwish", "hox_2", "overkill_290")
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_scarface_sm", "friend", "sm_wish")
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_scarface_deathwish", "friend", "overkill_290")
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_fwb_sm", "red2", "sm_wish")
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_fwb_deathwish", "red2", "overkill_290")
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_panic_sm", "flat", "sm_wish")
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_panic_deathwish", "flat", "overkill_290")
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_slaughter_sm", "dinner", "sm_wish")
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_slaughter_deathwish", "dinner", "overkill_290")
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_man_sm", "man", "sm_wish")
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_man_deathwish", "man", "overkill_290")
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_pal_sm", "pal", "sm_wish")
        CustomAchievement:isHeistCompleted("custom_ach_dwplus_pal_deathwish", "pal", "overkill_290")
        --hoxout
        CustomAchievement:Load("custom_ach_dwplus_hoxout_sm")
        if CustomAchievement.id_data.data["unlocked"] then 
            CustomAchievement:Unlock("custom_ach_dwplus_hoxout_deathwish")
        end
        --scarface
        CustomAchievement:Load("custom_ach_dwplus_scarface_sm")
        if CustomAchievement.id_data.data["unlocked"] then 
            CustomAchievement:Unlock("custom_ach_dwplus_scarface_deathwish")
        end
        --fwb
        CustomAchievement:Load("custom_ach_dwplus_fwb_sm")
        if CustomAchievement.id_data.data["unlocked"] then 
            CustomAchievement:Unlock("custom_ach_dwplus_fwb_deathwish")
        end
        --panic room
        CustomAchievement:Load("custom_ach_dwplus_panic_sm")
        if CustomAchievement.id_data.data["unlocked"] then 
            CustomAchievement:Unlock("custom_ach_dwplus_panic_deathwish")
        end
        --slaughterhouse
        CustomAchievement:Load("custom_ach_dwplus_slaughter_sm")
        if CustomAchievement.id_data.data["unlocked"] then 
            CustomAchievement:Unlock("custom_ach_dwplus_slaughter_deathwish")
        end
        --undercover
        CustomAchievement:Load("custom_ach_dwplus_man_sm")
        if CustomAchievement.id_data.data["unlocked"] then 
            CustomAchievement:Unlock("custom_ach_dwplus_man_deathwish")
        end
        --counterfeit
        CustomAchievement:Load("custom_ach_dwplus_pal_sm")
        if CustomAchievement.id_data.data["unlocked"] then 
            CustomAchievement:Unlock("custom_ach_dwplus_pal_deathwish")
        end
    end
end)
