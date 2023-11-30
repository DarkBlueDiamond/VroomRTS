local unitName  =  "ravager"

local unitDef  =  {
--Internal settings
BuildPic = "ravager.bmp",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Ravager.s3o",
    name = "Ravager",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Ravager",
    script = "ravagerscript.lua",

--Unit limitations and properties
    Description = "Fast Assault unit.",
    MaxDamage = 2130,
    idleTime = 300,
    idleAutoHeal = 5,
    RadarDistance = 0,
    SightDistance = 450,
    SoundCategory = "TANK",
    Upright = 0,
sfxtypes             = {
explosionGenerators = {
	[[custom:ravagermuzzleflash]],
	},
	},
--Energy and metal related
    BuildCostEnergy = 245,
    BuildCostMetal = 245,
	BuildTime = 245,
--Pathfinding and related
    maxAcc = 0.4,
    BrakeRate = 0.2,
    FootprintX = 3,
    FootprintZ = 3,
    MaxSlope = 45,
    speed = 63,
    MaxWaterDepth = 5,
    MovementClass = "Large Vechicle",
    TurnRate = 1300,

    
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
collisionVolumeOffsets    =  "0 -4 0",
collisionVolumeScales     =  "30 26 40",
collisionVolumeType       =  "box",

   
--Weapons and related
    BadTargetCategory = "NOTAIR",
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
    NoChaseCategory = "AIR",



weapons = {
[1]={name  = "PlasmaGun",
	   onlyTargetCategory = [[Tank]],
       turret = true
	},
},



}

return lowerkeys({ [unitName]  =  unitDef })