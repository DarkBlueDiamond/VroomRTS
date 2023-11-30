local unitName  =  "stunburst"

local unitDef  =  {
--Internal settings
BuildPic = "Stunburst.bmp",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Stunburst.s3o",
    name = "Stunburst",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Stunburst",
    script = "stunburstscript.lua",

--Unit limitations and properties
    Description = "Light Scout/Raider Support.",
    MaxDamage = 200,
    idleTime = 150,
    idleAutoHeal = 10,
    RadarDistance = 0,
    SightDistance = 550,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[StunBurstExplosion]],
	selfDestructAs = [[StunBurstExplosion]],
--Energy and metal related
    BuildCostEnergy = 45,
    BuildCostMetal = 45,
    BuildTime = 45,
--Pathfinding and related
    maxAcc = 0.4,
    BrakeRate = 0.2,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 118,
    MaxWaterDepth = 5,
    MovementClass = "Small Vechicle",
    TurnRate = 2600,

    
--Abilities
    Builder = 0,
    CanAttack = 1,
    CanGuard = 1,
    CanMove = 1,
    CanPatrol = 1,
    CanStop = 1,
    LeaveTracks = 0,
    Reclaimable = 0,
    canSelfDestruct = 1,
    repairable = 1,
    

--Hitbox
--    collisionVolumeOffsets    =  "0 0 0",
--    collisionVolumeScales     =  "15 18 17",
--    collisionVolumeTest       =  1,
--    collisionVolumeType       =  "box",

   
--Weapons and related
    BadTargetCategory = "NOTAIR",
    NoChaseCategory = "AIR",



weapons = {
[1]={name  = "DualStunMissles",
	   onlyTargetCategory = [[Tank]],
       turret = true
	},
	
[2]={name  = "DualMissles",
	   onlyTargetCategory = [[Tank]],
       turret = true
	},
	
},

}

return lowerkeys({ [unitName]  =  unitDef })