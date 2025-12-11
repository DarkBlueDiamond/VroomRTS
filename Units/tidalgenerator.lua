local unitName  =  "tidalgenerator"

local unitDef  =  {
--Internal settings
BuildPic = "Tidal Generator.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Tidal Generator.s3o",
    name = "Tidal Generator",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Tidal Generator",
    script = "tidalgeneratorscript.lua",
	icontype = "buildingenergy",
--Unit limitations and properties
    Description = "Water only Energy generator.",
    MaxDamage = 300,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 400,
    SoundCategory = "Building",
    Upright = 0,
	minWaterDepth = 5,
	corpse = [[tidalgenerator_dead]],
	floater = true,
--Energy and metal related
    BuildCostEnergy = 60,
    BuildCostMetal = 60,
    Buildtime = 60,
    tidalGenerator = 0.1,
--Size and Abilites
   MaxSlope = 33,
   FootprintX = 3,
   FootprintZ = 3,
   canSelfDestruct = 1,
   repairable = 1,
   CanMove = 0,
   CanPatrol = 0,
 
	

--Hitbox
collisionVolumeOffsets    =  "0 0 0",
collisionVolumeScales     =  "50 30 43",
collisionVolumeType       =  "box",
YardMap = "ooooooooo",
--Weapons and related
  explodeAs = [[MediumBuildingExplosion]],
	selfDestructAs = [[MediumBuildingExplosion]],
    


}

return lowerkeys({ [unitName]  =  unitDef })
