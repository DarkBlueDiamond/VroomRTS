local unitName  =  "catapult"

local unitDef  =  {
--Internal settings
BuildPic = "Catapult.png",
    Category = "TANK SHIP SMALL NOTAIR NOTSUB",
    ObjectName = "Catapult.s3o",
    name = "Catapult",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Catapult",
    script = "catapultscript.lua",
	icontype = "shipfiresupport",
--Unit limitations and properties
    Description = "Fire Support unit.",
    MaxDamage = 1080,
    idleTime = 300,
    idleAutoHeal = 2,
    RadarDistance = 0,
    SightDistance = 480,
	sonarDistance = 240,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
   corpse = [[catapult_dead]],
    sfxtypes             = {
	explosionGenerators = {
	[[custom:catapultmuzzleflash]],
	},
   },
--Energy and metal related
    BuildCostEnergy = 325,
    BuildCostMetal = 325,
    BuildTime = 325,
--Pathfinding and related
   maxAcc = 0.0725,
    BrakeRate = 0.087,
    turninplace = 0,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 50,
    MovementClass = "Medium Ship",
    TurnRate = 725,

    
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
	activateWhenBuilt = 1,
--Hitbox
collisionVolumeOffsets    =  "0 1 0",
collisionVolumeScales     =  "57 46 104",
collisionVolumeType       =  "ellipsoid",

   
--Weapons and related
   
    NoChaseCategory = "AIR",
	
weapons = {
[1]={name  = "CatapultHighImpluseGrenade",
	   onlyTargetCategory = [[TANK]],
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })
