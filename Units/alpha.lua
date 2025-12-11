local unitName  =  "alpha"

local unitDef  =  {
--Internal settings
BuildPic = "alpha.png",
    Category = "TANK BIG SHIP NOTAIR NOTSUB",
    ObjectName = "Alpha.s3o",
    name = "Alpha",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Alpha",
    script = "alphascript.lua",
	icontype = "alpha",
--Unit limitations and properties
    Description = "Ultimate Jack of all trades tank!",
    MaxDamage = 14650,
    idleTime = 0,
    idleAutoHeal = 35,
    SightDistance = 680,
    SoundCategory = "TANK",
    Upright = 0,
sfxtypes             = {
explosionGenerators = {
	[[custom:ravagermuzzleflash]],
	},
	},
	corpse = [[alpha_dead]],
--Energy and metal related
    BuildCostEnergy = 12220,
    BuildCostMetal = 12220,
	BuildTime = 12220,
--Pathfinding and related
    maxAcc = 0.45,
    BrakeRate = 0.3,
    FootprintX = 5,
    FootprintZ = 5,
    MaxSlope = 45,
    speed = 90,
    MaxWaterDepth = 200000000000,
    MovementClass = "Ultimate Vechicle",
    TurnRate = 1750,

    
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
    onOffable = 1,
   	activateWhenBuilt = 0,
   	canManualFire = 1, 

--Hitbox, experimental
collisionVolumeOffsets    =  "0.25 0 4",
collisionVolumeScales     =  "51 24 73.5",
collisionVolumeType       =  "box",

   
--Weapons and related
	explodeAs = [[AlphaExplosion]],
	selfDestructAs = [[AlphaExplosion]],
    NoChaseCategory = "AIR",



weapons = {
[1]={name  = "PhaseGun",
       turret = true
	},
[2]={name  = "AlphaAAMissle",
	   onlyTargetCategory = [[AIR]],
	},
[3]={name  = "AlphaMicoCruiseMissle",
	   onlyTargetCategory = [[TANK]],
	},
[4]={name  = "PhaseBurst",
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })
