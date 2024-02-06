local unitName  =  "catapult"

local unitDef  =  {
--Internal settings
BuildPic = "Catapult.bmp",
    Category = "TANK SHIP SMALL NOTAIR NOTSUB",
    ObjectName = "Catapult2.s3o",
    name = "Catapult",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Catapult",
    script = "catapultscript.lua",

--Unit limitations and properties
    Description = "Fire Support unit.",
    MaxDamage = 920,
    idleTime = 300,
    idleAutoHeal = 2,
    RadarDistance = 0,
    SightDistance = 480,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
   corpse = [[catapult_dead]],
--Energy and metal related
    BuildCostEnergy = 245,
    BuildCostMetal = 245,
    BuildTime = 245,
--Pathfinding and related
    maxAcc = 0.35,
    BrakeRate = 0.1,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 50,
    MovementClass = "Large Ship",
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
    highTrajectory = 2,

--Hitbox
collisionVolumeOffsets    =  "0 0 0",
collisionVolumeScales     =  "40 32 68",
collisionVolumeType       =  "box",

   
--Weapons and related
   
    NoChaseCategory = "AIR",
	
weapons = {
[1]={name  = "CatapultHighImpluseGrenade",
	   onlyTargetCategory = [[TANK]],
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })