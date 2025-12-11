local unitName  =  "mangonel"

local unitDef  =  {
--Internal settings
BuildPic = "Mangonel.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Mangonel.s3o",
    name = "Mangonel",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Mangonel",
    script = "mangonelscript.lua",
	icontype = "artillery",
--Unit limitations and properties
    Description = "Heavy Artillery unit (inaccurate while moving)",
    MaxDamage = 675,
    idleTime = 600,
    idleAutoHeal = 2,
    RadarDistance = 0,
    SightDistance = 480,
    SoundCategory = "TANK",
    Upright = 0,
sfxtypes             = {
explosionGenerators = {
	[[custom:mangonelmuzzleflash]],
	},
	},
	corpse = [[mangonel_dead]],
--Energy and metal related
    BuildCostEnergy = 425,
    BuildCostMetal = 425,
	BuildTime = 425,
--Pathfinding and related
    maxAcc = 0.35,
    BrakeRate = 0.1,
    FootprintX = 3,
    FootprintZ = 3,
    MaxSlope = 45,
    speed = 48,
    MaxWaterDepth = 5,
    MovementClass = "Large Vechicle",
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
	highTrajectory = 2,
    

--Hitbox
collisionVolumeOffsets    =  "0 -1 -2.5",
collisionVolumeScales     =  "30 22.5 50",
collisionVolumeType       =  "box",

   
--Weapons and related
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
    NoChaseCategory = "AIR",



weapons = {
[1]={name  = "ArtilleryPlasmaGun",
	   onlyTargetCategory = [[Tank]],
       turret = true
	},
},



}

return lowerkeys({ [unitName]  =  unitDef })
