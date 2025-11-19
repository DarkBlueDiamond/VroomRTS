local unitName  =  "radartower"

local unitDef  =  {
--Internal settings
BuildPic = "Radar Tower.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Radar Tower.s3o",
    name = "Radar Tower",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Radar Tower",
    script = "radartowerscript.lua",
	icontype = "buildingradar",
--Unit limitations and properties
    Description = "long range early warning system.",
    MaxDamage = 400,
    idleTime = 600,
    idleAutoHeal = 0,
    RadarDistance = 2000,
	radarHeight	  = 60,
    SightDistance = 600,
    SoundCategory = "Building",
    Upright = 0,
    floater = true,
--Energy and metal related
    BuildCostEnergy = 90,
    BuildCostMetal = 90,
    buildTime = 90,
	energyUse = 5,

--Size and Abilites
  MaxSlope = 33,
   FootprintX = 3,
   FootprintZ = 3,
   canSelfDestruct = 1,
   repairable = 1,
   CanAttack = 0,
   CanGuard = 0,
   CanStop = 1,
   CanMove = 0,
   CanPatrol = 0,
   onOffable = 1,
   activateWhenBuilt = 1, 

--Hitbox
 collisionVolumeOffsets    =  "0 25 0",
 collisionVolumeScales     =  "25 85 25",
 collisionVolumeType       =  "box",

--Weapons and related
	explodeAs = [[MediumBuildingExplosion]],
	selfDestructAs = [[MediumBuildingExplosion]],
    

}

return lowerkeys({ [unitName]  =  unitDef })
