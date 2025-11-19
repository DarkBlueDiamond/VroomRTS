local unitName  =  "tp"

local unitDef  =  {
--Internal settings
BuildPic = "Torpedo Platform.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "TP.s3o",
    name = "Torpedo Platform",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Torpedo Platform",
    script = "tpscript.lua",
	icontype = "buildingantisub",
--Unit limitations and properties
    Description = "Anti sub/sonar tower",
    MaxDamage = 1000,
    idleTime = 600,
    idleAutoHeal = 2,
    RadarDistance = 0,
    SightDistance = 600,
	SonarDistance = 1000,
    SoundCategory = "Building",
    Upright = 0,
    floater = true,
	minWaterDepth = 15,
--Energy and metal related
    BuildCostEnergy = 185,
    BuildCostMetal = 185,
    buildTime = 185,

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
activateWhenBuilt = 1,

--Hitbox
 collisionVolumeOffsets    =  "0 0 0",
 collisionVolumeScales     =  "36 18 36",
 collisionVolumeType       =  "box",
YardMap = "ooooooooo",
--Weapons and related
  	explodeAs = [[MediumBuildingExplosion]],
	selfDestructAs = [[MediumBuildingExplosion]],

weapons = {
[1]={name  = "TPTorpedo",
       onlyTargetCategory = [[Tank]],
	},
},
    

}

return lowerkeys({ [unitName]  =  unitDef })
