local unitName  =  "riptide"

local unitDef  =  {
--Internal settings
BuildPic = "Riptide.bmp",
    Category = "TANK SHIP SMALL NOTAIR NOTSUB",
    ObjectName = "Riptide.s3o",
    name = "Hunter",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Hunter",
    script = "riptidescript.lua",

--Unit limitations and properties
    Description = "Anti sub/ship raider unit.",
    MaxDamage = 400,
    idleTime = 300,
    idleAutoHeal = 5,
    RadarDistance = 0,
    SightDistance = 560,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[SmallExplosion]],
	selfDestructAs = [[SmallExplosion]],
   corpse = [[riptide_dead]],
--Energy and metal related
    BuildCostEnergy = 80,
    BuildCostMetal = 80,
    BuildTime = 80,
--Pathfinding and related
    maxAcc = 0.35,
    BrakeRate = 0.1,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 88,
    MovementClass = "Small Ship",
    TurnRate = 2250,

    
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
    

--Hitbox
collisionVolumeOffsets    =  "0 -3 0",
collisionVolumeScales     =  "19 23 42",
collisionVolumeType       =  "box",

   
--Weapons and related
   
    NoChaseCategory = "AIR",
	
weapons = {
[1]={name  = "RiptideAmphMissle",
	   onlyTargetCategory = [[TANK]],
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })