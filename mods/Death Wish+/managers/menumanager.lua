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
	["lib/tweak_data/playertweakdata"] = "tweak_data/playertweakdata.lua",
	["lib/tweak_data/tweakdata"] = "tweak_data/tweakdata.lua",
	["lib/managers/menu/menunodegui"] = "managers/menu/menunodegui.lua",
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
	
    MenuCallbackHandler.DWToggle = function(self, item)
        DW.settings[item._parameters.name] = (item:value() == "on" and true or false)
        DW:Save()
    end

	DW:Load()
	MenuHelper:LoadFromJsonFile( DW._path .. "menu/options.txt", DW, DW.settings )
end )


function DW:ResetToDefaultValues()
		self.settings.dw_enemy_toggle_value = true
        self.settings.dw_infinite_toggle_value = false
		self.settings.dw_piercing_toggle_value = false
end

if DW.settings.dw_enemy_toggle_value == nil
or DW.settings.dw_infinite_toggle_value == nil
or DW.settings.dw_piercing_toggle_value == nil
then
	DW:ResetToDefaultValues()
end

if RequiredScript then
	local requiredScript = RequiredScript:lower()
	if DW.Hooks[requiredScript] then
 		dofile( DW._path .. DW.Hooks[requiredScript] )
	end	
end