local unitName  =  "stingray"

local unitDef  =  {
--Internal settings
BuildPic = "Sting Ray.png",
    Category = "TANK SHIP SMALL NOTAIR SUB",
    ObjectName = "Sting Ray.s3o",
    name = "Sting Ray",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Sting Ray",
    script = "stingrayscript.lua",
	icontype = "shipstingray",
--Unit limitations and properties
    Description = "Stunner Raider Sub.",
    MaxDamage = 535,
    idleTime = 300,
    idleAutoHeal = 5,
    RadarDistance = 0,
    SightDistance = 600,
	sonarDistance = 600,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[SmallExplosion]],
	selfDestructAs = [[SmallExplosion]],
   corpse = [[stingray_dead]],
--Energy and metal related
    BuildCostEnergy = 185,
    BuildCostMetal = 185,
    BuildTime = 185,
--Pathfinding and related
   maxAcc = 0.08,
    BrakeRate = 0.096,
    turninplace = 0,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 79,
    MovementClass = "Small Sub",
    TurnRate = 800,

    
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
collisionVolumeOffsets    =  "0 0 0",
collisionVolumeScales     =  "15.5 15.5 46",
collisionVolumeType       =  "box",

   
--Weapons and related
   
    NoChaseCategory = "AIR",
	
weapons = {
[1]={name  = "StingRayFastLightingGun",
	   onlyTargetCategory = [[TANK]],
	},
[2]={name  = "StingRayFastLightingStun",
	   onlyTargetCategory = [[TANK]],
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })
