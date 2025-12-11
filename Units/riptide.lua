local unitName  =  "riptide"

local unitDef  =  {
--Internal settings
BuildPic = "Riptide.png",
    Category = "TANK SHIP SMALL NOTAIR NOTSUB",
    ObjectName = "Riptide.s3o",
    name = "Riptide",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Riptide",
    script = "riptidescript.lua",
	icontype = "shipraider",
--Unit limitations and properties
    Description = "Anti sub/ship raider unit.",
    MaxDamage = 400,
    idleTime = 300,
    idleAutoHeal = 5,
    RadarDistance = 0,
    SightDistance = 560,
	sonarDistance = 560,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[SmallExplosion]],
	selfDestructAs = [[SmallExplosion]],
   corpse = [[riptide_dead]],
--Energy and metal related
    BuildCostEnergy = 90,
    BuildCostMetal = 90,
    BuildTime = 90,
--Pathfinding and related
   maxAcc = 0.09,
    BrakeRate = 0.108,
    turninplace = 0,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 88,
    MovementClass = "Small Ship",
    TurnRate = 900,

    
--Abilities
    Builder = 0,
    CanAttack = 1,
    CanGuard = 1,
    CanMove = 1,
    CanPatrol = 1,
    CanStop = 1,
    LeaveTracks = 0,
    Reclaimable = 1,
    canSelfDestruct = 1,
    repairable = 1,
    activateWhenBuilt = 1,

--Hitbox
collisionVolumeOffsets    =  "0 1 0",
collisionVolumeScales     =  "32 28 58",
collisionVolumeType       =  "ellipsoid",

   
--Weapons and related
   
    NoChaseCategory = "AIR",
	
weapons = {
[1]={name  = "RiptideAmphMissle",
	   onlyTargetCategory = [[TANK]],
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })
