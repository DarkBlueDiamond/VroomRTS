local unitName  =  "barrager"

local unitDef  =  {
--Internal settings
BuildPic = "Barrager.png",
    Category = "TANK SHIP SMALL NOTAIR NOTSUB",
    ObjectName = "Barrager.s3o",
    name = "Barrager",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Barrager",
    script = "barragerscript.lua",
	icontype = "shipbarrager",
--Unit limitations and properties
    Description = "Longe range artillery/Heavy skirmisher.",
    MaxDamage = 2050,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 520,
	sonarDistance = 260,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
   corpse = [[barrager_dead]],
--Energy and metal related
    BuildCostEnergy = 1150,
    BuildCostMetal = 1150,
    BuildTime = 1150,
--Pathfinding and related
    maxAcc = 0.05,
    BrakeRate = 0.06,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 34,
    MovementClass = "Large Ship",
    TurnRate = 500,

    
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
	canManualFire = 1,
	activateWhenBuilt = 1,
--Hitbox
collisionVolumeOffsets    =  "0 1 0",
collisionVolumeScales     =  "53 50 139",
collisionVolumeType       =  "ellipsoid",

   
--Weapons and related
   
    NoChaseCategory = "AIR",
	
weapons = {
[1]={name  = "BarragerDualRocket",
	 mainDir = "0 0 1",
	maxAngleDif = 200,
	},
[2]={name  = "BarragerLongRangeArcRocket",
	 onlyTargetCategory = [[TANK]],
	},
	
[3]={name  = "BarragerLongRangeRocketBurst",
	 onlyTargetCategory = [[TANK]],
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })
