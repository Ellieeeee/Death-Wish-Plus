if not ModCore then
	log("[ERROR] Unable to find ModCore from BeardLib! Is BeardLib installed correctly?")
	return
end

DeathWishPlusCore = DeathWishPlusCore or class(ModCore)

function DeathWishPlusCore:init()
	--Calling the base function for init from ModCore
	--self_tbl, config path, auto load modules, auto post init modules
	self.super.init(self, ModPath .. "config.xml", true, true)
end

if not _G.DeathWishPlus then
	local success, err = pcall(function() DeathWishPlusCore:new() end)
	if not success then
		log("[ERROR] An error occured on the initialization of Death Wish+. " .. tostring(err))
	end
end