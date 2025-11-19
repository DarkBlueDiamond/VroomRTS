local unitName  =  "extractor"

local unitDef  =  {
--Internal settings
BuildPic = "Extractor.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Extractor.s3o",
    name = "Extractor",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Extractor",
    script = "extractorscript.lua",
	icontype = "buildingextractor",
--Unit limitations and properties
    Description = "Extracts Metal",
    MaxDamage = 400,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 400,
    SoundCategory = "Building",
    Upright = 0,
    floater = true,
	corpse = [[extractor_dead]],
--Energy and metal related
    BuildCostEnergy = 60,
    BuildCostMetal = 60,
    Buildtime = 60,
	extractsMetal = 0.001,
	EnergyUse = 0.6,
--Size and Abilites
   MaxSlope = 33,
   FootprintX = 3,
   FootprintZ = 3,
   canSelfDestruct = 1,
   repairable = 1,
   CanMove = 0,
   CanPatrol = 0,
   onOffable = 1,
   activateWhenBuilt = 1, 


--Hitbox
 collisionVolumeOffsets    =  "0 -35 0",
 collisionVolumeScales     =  "30.5 100 30.5",
 collisionVolumeType       =  "box",
	YardMap = "ooooooooo",
--Weapons and related
explodeAs = [[SmallBuildingExplosion]],
	selfDestructAs = [[SmallBuildingExplosion]],
    


}

return lowerkeys({ [unitName]  =  unitDef })
