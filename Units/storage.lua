local unitName  =  "storage"

local unitDef  =  {
--Internal settings
BuildPic = "Storage.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Storage.s3o",
    name = "Storage",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Storage",
    script = "Storagescript.lua",
	icontype = "buildingstorage",
--Unit limitations and properties
    Description = "Stores 500 of each reasource.",
    MaxDamage = 500,
    idleTime = 600,
    idleAutoHeal = 2,
    RadarDistance = 0,
    SightDistance = 600,
    SoundCategory = "Building",
    Upright = 0,
    floater = true,
	corpse = [[storage_dead]],
--Energy and metal related
    BuildCostEnergy = 100,
    BuildCostMetal = 100,
    buildTime = 100,
	metalStorage = 500,
	energyStorage = 500, 
--Size and Abilites
  MaxSlope = 33,
   FootprintX = 3,
   FootprintZ = 3,
   canSelfDestruct = 1,
   repairable = 1,
   CanAttack = 1,
   CanGuard = 1,
   CanStop = 1,
   CanMove = 0,
   CanPatrol = 0,


--Hitbox
 collisionVolumeOffsets    =  "0 15 0",
 collisionVolumeScales     =  "25 42 25",
 collisionVolumeType       =  "box",
--    collisionVolumeType       =  "box",
YardMap = "ooooooooo",
--Weapons and related
explodeAs = [[SmallBuildingExplosion]],
	selfDestructAs = [[SmallBuildingExplosion]],


    


}

return lowerkeys({ [unitName]  =  unitDef })
