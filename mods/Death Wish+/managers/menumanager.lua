_G.DW = _G.DW or {}
DW._path = ModPath
DW._data_path = SavePath .. "DW+_options.txt"
DW.settings = {}
DW.Hooks = {
    ["lib/tweak_data/charactertweakdata"] = "tweak_data/charactertweakdata.lua",
    ["lib/tweak_data/groupaitweakdata"] = "tweak_data/groupaitweakdata.lua",
	["lib/tweak_data/skilltreetweakdata"] = "tweak_data/skilltreetweakdata.lua",
	["lib/tweak_data/upgradestweakdata"] = "tweak_data/upgradestweakdata.lua",
	["lib/tweak_data/weapontweakdata"] = "tweak_data/weapontweakdata.lua",
	["lib/tweak_data/weaponfactorytweakdata"] = "tweak_data/weaponfactorytweakdata.lua",
	["lib/tweak_data/playertweakdata"] = "tweak_data/playertweakdata.lua",
	["lib/tweak_data/carrytweakdata"] = "tweak_data/carrytweakdata.lua",
	["lib/tweak_data/levelstweakdata"] = "tweak_data/levelstweakdata.lua",
	["lib/tweak_data/assetstweakdata"] = "tweak_data/assetstweakdata.lua",
	["lib/tweak_data/missiondoortweakdata"] = "tweak_data/missiondoortweakdata.lua",
	["lib/tweak_data/tweakdata"] = "tweak_data/tweakdata.lua",
	["lib/managers/menu/menunodegui"] = "managers/menu/menunodegui.lua",
	["core/lib/managers/coresequencemanager"] = "managers/coresequencemanager.lua",
	["lib/managers/mission/elementspawnenemygroup"] = "managers/mission/elementspawnenemygroup.lua",
}

function DW:Save()
    local file = io.open( self._data_path, "w" )
    if file then
        file:write( json.encode( self.settings ) )
        file:close()
    end
end

function DW:Load()
    local file = io.open( self._data_path, "r" )
    if file then
        self.settings = json.decode( file:read("*all") )
        file:close()
    end
end

DW:Load()

Hooks:Add("LocalizationManagerPostInit", "LocalizationManagerPostInit_DW", function( loc )
	for _, filename in pairs(file.GetFiles(DW._path .. "loc/")) do
		local str = filename:match('^(.*).txt$')
		if str and Idstring(str) and Idstring(str):key() == SystemInfo:language():key() then
			loc:load_localization_file(DW._path .. "loc/" .. filename)
			break
		end
	end

	loc:load_localization_file(DW._path .. "loc/english.txt", false)
end)

Hooks:Add( "MenuManagerInitialize", "MenuManagerInitialize_DW", function( menu_manager )
	
    MenuCallbackHandler.DWToggle = function(self, item)
        DW.settings[item._parameters.name] = (item:value() == "on" and true or false)
        DW:Save()
    end

	DW:Load()
	MenuHelper:LoadFromJsonFile( DW._path .. "menu/options.txt", DW, DW.settings )
end )


function DW:ResetToDefaultValues()
		self.settings.dw_baby_toggle_value = false
		self.settings.dw_enemy_toggle_value = true
        self.settings.dw_infinite_toggle_value = false
		self.settings.dw_piercing_toggle_value = false
		self.settings.dw_frames_toggle_value = false
end

if DW.settings.dw_enemy_toggle_value == nil
or DW.settings.dw_baby_toggle_value == nil
or DW.settings.dw_infinite_toggle_value == nil
or DW.settings.dw_piercing_toggle_value == nil
or DW.settings.dw_frames_toggle_value == nil
then
	DW:ResetToDefaultValues()
end

if Announcer and DW.settings.dw_baby_toggle_value == true then
	Announcer:AddHostMod("Death Wish+: Host only mode. Improves AI, Squads, and Tactics.")
end
-- Snh20: The Loading Screen Info mod may require access to these
DW.resources = {
	deathwishplus = "guis/textures/pd2/risklevel_deathwishplus_blackscreen",
	hud_icons_risk_decimation_battalion = {
		texture = "guis/textures/pd2/hud_difficultymarkersplus",
		texture_rect = {
			30,
			0,
			30,
			30
		}
	},
	hud_icons_risk_dw_dwplus_combined = {
		texture = "guis/textures/pd2/hud_difficultymarkersplus",
		texture_rect = {
			0,
			0,
			60,
			30
		}
	}
}

if RequiredScript then
	local requiredScript = RequiredScript:lower()
	if DW.Hooks[requiredScript] then
 		dofile( DW._path .. DW.Hooks[requiredScript] )
	end	
end