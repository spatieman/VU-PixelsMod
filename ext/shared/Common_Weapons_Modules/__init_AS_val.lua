   local partition_asval = Guid ("330F6EB9-1740-11E0-B7E4-E4E608316920")
   local instance_asval = Guid ("808AB537-87CF-4997-B6AD-B11111EE19C4")

ResourceManager:RegisterInstanceLoadHandler(partition_asval, instance_asval, function(loadedInstance)
     loadedInstance = FiringFunctionData(loadedInstance)
    loadedInstance:MakeWritable()

    loadedInstance.ammo.magazineCapacity = 120
    loadedInstance.ammo.numberOfMagazines = 10
	print('Changed Common weapon: AS-Val - (mod 2) Pimped AMMO size...')
	end)
