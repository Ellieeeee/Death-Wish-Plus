_G.DW = _G.DW or {}
DW._path = ModPath
DW._data_path = SavePath .. "DW+_options.txt"
DW.settings = {}
DW.Hooks = {
    ["lib/tweak_data/charactertweakdata"] = "lua/cops.lua",
    ["lib/tweak_data/groupaitweakdata"] = "lua/capn.lua",
	["lib/units/enemies/spooc/logics/spooclogicattack"] = "lua/spooc.lua",
	["core/lib/managers/coresequencemanager"] = "Core.lua",
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
	loc:load_localization_file( DW._path .. "loc/english.txt")
end)

Hooks:Add( "MenuManagerInitialize", "MenuManagerInitialize_DW", function( menu_manager )
	
    MenuCallbackHandler.DWValue = function(self, item)
        DW.settings[item._parameters.name] = item:value()
        DW:Save()
        end
		
    MenuCallbackHandler.DWToggle = function(self, item)
        DW.settings[item._parameters.name] = (item:value() == "on" and true or false)
        DW:Save()
    end

	DW:Load()
	MenuHelper:LoadFromJsonFile( DW._path .. "menu/options.txt", DW, DW.settings )
end )


function DW:ResetToDefaultValues()
		self.settings.dw_enemy_toggle_value = true
		self.settings.dw_map_toggle_value = true
        self.settings.dw_infinite_toggle_value = false
        self.settings.dw_bulldozer_toggle_value = false
		self.settings.dw_piercing_toggle_value = false
		self.settings.dw_drill_toggle_value = false
        self.settings.dw_inv_frames_value = 0.15
end

 if DW.settings.dw_enemy_toggle_value == nil or DW.settings.dw_infinite_toggle_value == nil or DW.settings.dw_bulldozer_toggle_value == nil or DW.settings.dw_piercing_toggle_value == nil or DW.settings.dw_drill_toggle_value == nil or DW.settings.dw_inv_frames_value == nil then
	log("FLASHBANG! MY EYES! MY EYES!!")
	DW:ResetToDefaultValues()
end

if RequiredScript then
	local requiredScript = RequiredScript:lower()
	if DW.Hooks[requiredScript] then
 		dofile( DW._path .. DW.Hooks[requiredScript] )
	end	
end