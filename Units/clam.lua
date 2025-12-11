local unitName  =  "clam"

local unitDef  =  {
--Internal settings
BuildPic = "Clam.png",
    Category = "TANK SMALL NOTAIR NOTSUB HOVER",
    ObjectName = "Clam.s3o",
    name = "Clam",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Clam",
    script = "clamscript.lua",  --shattererscript
	icontype = "clam",
--Unit limitations and properties
    Description = "Anti-Ship/Sub",
    MaxDamage = 1800,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 450,
	sonarDistance = 600,
    SoundCategory = "TANK",
    Upright = 0,
	corpse = [[clam_dead]],
--Energy and metal related
    BuildCostEnergy = 300,
    BuildCostMetal = 300,
	BuildTime = 300,
--Pathfinding and related
    maxAcc = 0.3,
    BrakeRate = 0.1,
    FootprintX = 3,
    FootprintZ = 3,
    MaxSlope = 45,
    speed = 44,
    MaxWaterDepth = 5,
    MovementClass = "Large Hover",
    TurnRate = 1000,

    
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
  collisionVolumeOffsets    =  "0 -1 0",
    collisionVolumeScales    =  "27 23.5 36",
    collisionVolumeType       =  "box",

   
--Weapons and related
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
    NoChaseCategory = "AIR",



weapons = {
[1]={name  = "ClamTorpedo",
	   onlyTargetCategory = [[Ship]],
	},
[2]={name  = "ClamDepthcharges",
	   onlyTargetCategory = [[Tank]],
	},
},



}

return lowerkeys({ [unitName]  =  unitDef })
