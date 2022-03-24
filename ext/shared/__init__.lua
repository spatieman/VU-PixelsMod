-- global funcs and utils
require('__shared/MMUtils')

local bEnable_players = true
local bEnable_weapons = true

local bEnable_modules = true
            if (bEnable_modules) == (true) then dprint('modules config Enabled...')
 bEnable_combobags = true
 bEnable_C4 = true
 bEnable_M15 = true
 bEnable_EOD = true
 bEnable_grenade = true
 bEnable_claymore = true
 bEnable_repairtool = true
 bEnable_mortar = true
 bEnable_tugs_sweep = true
 bEnable_M93r = true
 bEnable_crossbow = true
 bEnable_rpg7 = true
 bEnable_smaw = true
 bEnable_stinger = true
 bEnable_javelin = true
 bEnable_igla = true
 bEnable_Mobile_AA = true
 bEnable_tank = true
 bEnable_atack_chopper = false
 bEnable_recon_chopper = false
 bEnable_Z11_chopper = false
 bEnable_sprut = false
	else
	    if (bEnable_modules) == (false) then dprint('Modules config Disabled...')
 bEnable_combobags = false
 bEnable_C4 = false
 bEnable_M15 = false
 bEnable_EOD = false
 bEnable_grenade = false
 bEnable_claymore = false
 bEnable_repairtool = false
 bEnable_mortar = false
 bEnable_tugs_sweep = false
 bEnable_M93r = false
 bEnable_crossbow = false
 bEnable_rpg7 = false
 bEnable_smaw = false
 bEnable_stinger = false
 bEnable_javelin = false
 bEnable_igla = false
 bEnable_Mobile_AA = false
 bEnable_tank = false
 bEnable_atack_chopper = false
 bEnable_recon_chopper = false
 bEnable_Z11_chopper = false
 bEnable_sprut = false
end
end


-- load resource list
mmResources = require('__shared/MMResources')
mmCustomResources = require('__shared/MMCustomResources')
mmCustomResources:RegisterResources(mmResources)

-- modules
            if (bEnable_players) == (true) then dprint('Player stuff Enabled...')
mmPlayers = require('__shared/MMPlayers')
	else
	    if (bEnable_players) == (false) then dprint('Player stuff Disabled...')
end
end

            if (bEnable_weapons) == (true) then dprint('Weapon stuff Enabled...')
mmWeapons = require('__shared/MMWeapons')
	else
	    if (bEnable_weapons) == (false) then dprint('Weapon stuff Disabled...')
end
end

-- EOD_bot modules --
            if (bEnable_EOD) == (true) then dprint('EOD Bot Enabled...')
   MMWeapons_EOD_bot = require('__shared/MMWeapons_EOD_bot')
mmResources:AddLoadHandler(MMWeapons_EOD_bot, MMWeapons_EOD_bot.Write)
	else
	    if (bEnable_EOD) == (false) then dprint('EOD Bot Disabled...')
end
end

-- Gadgets modules --
            if (bEnable_combobags) == (true) then dprint('combobags Enabled...')
   MMWeapons_combobags = require('__shared/MMWeapons_combobags')
mmResources:AddLoadHandler(MMWeapons_combobags, MMWeapons_combobags.Write)
	else
	    if (bEnable_combobags) == (false) then dprint('combobags Disabled...')
end
end
--

	    if (bEnable_C4) == (true) then dprint('C4 Enabled...')
mmWeapons_C4 = require('__shared/MMWeapons_C4')
mmResources:AddLoadHandler(mmWeapons_C4, mmWeapons_C4.Write)
	else
	    if (bEnable_C4) == (false) then dprint('C4 Disabled...')
end
end
--

	    if (bEnable_grenade) == (true) then dprint('grenade Enabled...')
MMWeapons_grenade = require('__shared/MMWeapons_grenade')
mmResources:AddLoadHandler(MMWeapons_grenade, MMWeapons_grenade.Write)
	else
	    if (bEnable_grenade) == (false) then dprint('grenade Disabled...')
end
end
--

            if (bEnable_M15) == (true) then dprint('M15 Enabled...')
MMWeapons_m15_tankmine = require('__shared/MMWeapons_m15_tankmine')
mmResources:AddLoadHandler(MMWeapons_m15_tankmine, MMWeapons_m15_tankmine.Write)
	else
	    if (bEnable_M15) == (false) then dprint('M15 Disabled...')
end
end
--

            if (bEnable_Claymore) == (true) then dprint('Claymore Enabled...')
MMWeapons_claymore = require('__shared/MMWeapons_claymore')
mmResources:AddLoadHandler(MMWeapons_claymore, MMWeapons_claymore.Write)
	else
	    if (bEnable_Claymore) == (false) then dprint('Claymore Disabled...')
end
end
--

            if (bEnable_Repairtool) == (true) then dprint('Repairtool Enabled...')
MMWeapons_repairtool = require('__shared/MMWeapons_repairtool')
mmResources:AddLoadHandler(MMWeapons_repairtool, MMWeapons_repairtool.Write)
	else
	    if (bEnable_Repairtool) == (false) then dprint('Repairtool Disabled...')
end
end
--

            if (bEnable_mortar) == (true) then dprint('mortar Enabled...')
MMWeapons_mortar = require('__shared/MMWeapons_mortar')
mmResources:AddLoadHandler(MMWeapons_mortar, MMWeapons_mortar.Write)
	else
	    if (bEnable_mortar) == (false) then dprint('mortar Disabled...')
end
end
--

            if (bEnable_tugs_sweep) == (true) then dprint('tugs_sweep Enabled...')
MMWeapons_tugs_sweep = require('__shared/MMWeapons_tugs_sweep')
mmResources:AddLoadHandler(MMWeapons_tugs_sweep, MMWeapons_tugs_sweep.Write)
	else
	    if (bEnable_tugs_sweep) == (false) then dprint('tugs_sweep Disabled...')
end
end
--


-- Weapons modules --
            if (bEnable_M93r) == (true) then dprint('M93r Enabled...')
        MMWeapons_M93r = require('__shared/MMWeapons_M93r')
mmResources:AddLoadHandler(MMWeapons_M93r, MMWeapons_M93r.Write)
	else
	    if (bEnable_M93r) == (false) then dprint('M93r Disabled...')
end
end
--

            if (bEnable_crossbow) == (true) then dprint('crossbow Enabled...')
    MMWeapons_crossbow = require('__shared/MMWeapons_crossbow')
mmResources:AddLoadHandler(MMWeapons_crossbow, MMWeapons_crossbow.Write)
	else
	    if (bEnable_crossbow) == (false) then dprint('crossbow Disabled...')
end
end
--


-- Rockets modules --
	    if (bEnable_rpg7) == (true) then dprint('rpg7 Enabled...')
         MMWeapons_rockets_rpg = require('__shared/MMWeapons_rockets_rpg')
mmResources:AddLoadHandler(MMWeapons_rockets_rpg, MMWeapons_rockets_rpg.Write)
	else
	    if (bEnable_rpg7) == (false) then dprint('rpg7 Disabled...')
end
end
--

            if (bEnable_smaw) == (true) then dprint('smaw Enabled...')
MMWeapons_rockets_smaw = require('__shared/MMWeapons_rockets_smaw')
mmResources:AddLoadHandler(MMWeapons_rockets_smaw, MMWeapons_rockets_smaw.Write)
	else
	    if (bEnable_smaw) == (false) then dprint('smaw Disabled...')
end
end
--

            if (bEnable_stinger) == (true) then dprint('stinger Enabled...')
MMWeapons_rockets_stinger = require('__shared/MMWeapons_rockets_stinger')
mmResources:AddLoadHandler(MMWeapons_rockets_stinger, MMWeapons_rockets_stinger.Write)
	else
	    if (bEnable_stinger) == (false) then dprint('stinger Disabled...')
end
end
--

            if (bEnable_javelin) == (true) then dprint('javelin Enabled...')
MMWeapons_rockets_javelin = require('__shared/MMWeapons_rockets_javelin')
mmResources:AddLoadHandler(MMWeapons_rockets_javelin, MMWeapons_rockets_javelin.Write)
	else
	    if (bEnable_javelin) == (false) then dprint('javelin Disabled...')
end
end
--
            if (bEnable_igla) == (true) then dprint('igla Enabled...')
MMWeapons_rockets_igla = require('__shared/MMWeapons_rockets_igla')
mmResources:AddLoadHandler(MMWeapons_rockets_igla, MMWeapons_rockets_igla.Write)
	else
	    if (bEnable_igla) == (false) then dprint('igla Disabled...')
end
end
--


-- Vehicles modules --  

            if (bEnable_tank) == (true) then dprint('tank Enabled...')
MMVehicles_tank = require('__shared/MMVehicles_tank')
 mmResources:AddLoadHandler(MMVehicles_tank, MMVehicles_tank.Write)
	else
	    if (bEnable_tank) == (false) then dprint('tank Disabled...')
end
end
--

              if (bEnable_Mobile_AA) == (true) then dprint('Mobile_AA Enabled...')
MMVehicles_Mobile_AA = require('__shared/MMVehicles_Mobile_AA')
 mmResources:AddLoadHandler(MMVehicles_Mobile_AA, MMVehicles_Mobile_AA.Write)
	else
	    if (bEnable_Mobile_AA) == (false) then dprint('Mobile_AA Disabled...')
end
end
--

            if (bEnable_atack_chopper) == (true) then dprint('atack_chopper Enabled...')
  MMVehicles_atack_chopper = require('__shared/MMVehicles_atack_chopper')
 mmResources:AddLoadHandler(MMVehicles_atack_chopper, MMVehicles_atack_chopper.Write)
	else
	    if (bEnable_atack_chopper) == (false) then dprint('atack_chopper Disabled...')
end
end
--

            if (bEnable_recon_chopper) == (true) then dprint('recon_chopper Enabled...')
  MMVehicles_recon_chopper = require('__shared/MMVehicles_recon_chopper')
 mmResources:AddLoadHandler(MMVehicles_recon_chopper, MMVehicles_recon_chopper.Write)
	else
	    if (bEnable_recon_chopper) == (false) then dprint('recon_chopper Disabled...')
end
end
--

            if (bEnable_Z11_chopper) == (true) then dprint('Z11_chopper Enabled...')
  MMVehicles_Z11_chopper = require('__shared/MMVehicles_Z11_chopper')
 mmResources:AddLoadHandler(MMVehicles_Z11_chopper, MMVehicles_Z11_chopper.Write)
	else
	    if (bEnable_Z11_chopper) == (false) then dprint('Z11_chopper Disabled...')
end
end
--

            if (bEnable_sprut) == (true) then dprint('sprut Enabled...')
  MMVehicles_sprut = require('__shared/MMVehicles_sprut')
 mmResources:AddLoadHandler(MMVehicles_sprut, MMVehicles_sprut.Write)
	else
	    if (bEnable_sprut) == (false) then dprint('sprut Disabled...')
end
end
--


-- Common Modules --
mmResources:AddLoadHandler(mmCustomResources, mmCustomResources.Write)

            if (bEnable_players) == (true) then dprint('player resources Enabled...')
mmResources:AddLoadHandler(mmPlayers, mmPlayers.Write)
	else
	    if (bEnable_players) == (false) then dprint('player resources Disabled...')
end
end

            if (bEnable_weapons) == (true) then dprint('Weapon resources Enabled...')
mmResources:AddLoadHandler(mmWeapons, mmWeapons.Write)
	else
	    if (bEnable_weapons) == (false) then dprint('Weapon resources Disabled...')
end
end

mmResources:RegisterInstanceLoadHandlers()

--[[
local TheBigWeaponList = {}
local TheBigWeaponUnlocksList = {}

Events:Subscribe('Level:Loaded', self, function()
	for _, instance in pairs(TheBigWeaponList) do
		local weaponData = ebxEditUtils:GetWritableInstance(instance, 'object')
		local customizeTables = ebxEditUtils:GetWritableContainer(instance, 'object.Customization.Customization')
		local unlockTables = {}

		if (customizeTables ~= nil and customizeTables.unlockParts ~= nil) then
			if (TheBigWeaponUnlocksList[weaponData.name] == nil) then
				TheBigWeaponUnlocksList[weaponData.name] = {
					Optics = {},
					Primary = {},
					Secondary = {},
					Camo = {},
					Unkown = {},
				}
			end

			for i=1, #customizeTables.unlockParts do
				if (i == 1) then
					unlockTables["Optics"] = customizeTables.unlockParts[i]
				elseif (i == 2) then
					unlockTables["Primary"] = customizeTables.unlockParts[i]
				elseif (i == 3) then
					unlockTables["Secondary"] = customizeTables.unlockParts[i]
				elseif (i == 4) then
					unlockTables["Camo"] = customizeTables.unlockParts[i]
				else
					unlockTables["Unkown"] = customizeTables.unlockParts[i]
				end
			end

			for key,value in pairs(unlockTables) do
				for i=1, #value.selectableUnlocks do
					local unlockData = ebxEditUtils:GetWritableInstance(value.selectableUnlocks[i])
					table.insert(TheBigWeaponUnlocksList[weaponData.name][key], {unlockData.name, tostring(unlockData.instanceGuid)}) 
				end
			end
		end
	end

	print('Weapon Name	Unlock Category	Unlock Name	Unlock Guid')
	for weaponName, weaponUnlocks in pairs(TheBigWeaponUnlocksList) do
		for category, unlocks in pairs(weaponUnlocks) do
			for _,unlock in pairs(unlocks) do
				print(weaponName.."	"..category.."	"..unlock[1].."	"..unlock[2])
			end
		end
	end
end)
]]

Events:Subscribe('Partition:Loaded', function(partition)

	for _, instance in pairs(partition.instances) do

		--if (instance:Is('SoldierWeaponBlueprint')) then
		--	table.insert(TheBigWeaponList, instance)
		--end

		-- global vehicle "Sturdification"
	end
end)



materialGrid = nil
materialContainer = nil

function getMaterialName(materialId)
	if (materialId == nil) then
		return '[nil]: nil'
	end
	local mapIndex = MaterialContainerPair(materialId).physicsPropertyIndex
	if mapIndex < 0 then
		mapIndex = 256 + mapIndex
	end

	return '['..tostring(mapIndex+1) ..']: '..tostring(materialContainer.materialNames[mapIndex+1])
end

Events:Subscribe('Level:Loaded', function(levelName, gameMode, round, roundsPerMap)
	materialGrid = MaterialGridData(ResourceManager:SearchForDataContainer(SharedUtils:GetLevelName() .. "/MaterialGrid_Win32/Grid"))
	materialContainer = MaterialContainerAsset(ResourceManager:SearchForDataContainer("Materials/MaterialContainer"))
end)

Events:Subscribe('Level:Destroy', function()
	materialContainer = nil
	materialGrid = nil
end)

--[[
Events:Subscribe('Level:LoadResources', function()
	ResourceManager:MountSuperBundle('levels/mp_007/mp_007')
end)

Hooks:Install('ResourceManager:LoadBundles', 100, function(hook, bundles, compartment)
	if #bundles == 1 and bundles[1] == SharedUtils:GetLevelName() then
		print('Injecting bundles.')

		bundles = {
			'levels/mp_007/mp_007',
			bundles[1],
		}

		hook:Pass(bundles, compartment)
	end
end)

Events:Subscribe('Level:RegisterEntityResources', function(levelData)
	local registry = RegistryContainer(ResourceManager:SearchForInstanceByGuid(Guid('958A27B8-F6B4-AE8C-4AE8-1FC8E2AB60BF')))
	ResourceManager:AddRegistry(registry, ResourceCompartment.ResourceCompartment_Game)
end)
]]