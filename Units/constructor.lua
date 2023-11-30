local unitName  =  "constructor"

local unitDef  =  {
--Internal settings
BuildPic = "Constructor.bmp",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Constructor.s3o",
    name = "Constructor",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Constructor",
    script = "constructorscript.lua",

--Unit limitations and properties
    Description = "Builder. (5 buildpower)",
    MaxDamage = 500,
    idleTime = 300,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 500,
    SoundCategory = "TANK",
    Upright = 0,

--Energy and metal related
    BuildCostEnergy = 80,
    BuildCostMetal = 80,
	Buildtime = 80,
--Pathfinding and related
    maxAcc = 0.35,
    BrakeRate = 0.1,
    FootprintX = 3,
    FootprintZ = 3,
    MaxSlope = 45,
    MaxVelocity = 1.6,
    MaxWaterDepth = 5,
    MovementClass = "Small Vechicle",
    TurnRate = 1000,

    
--Abilities
    CanAttack = 1,
    CanGuard = 1,
    CanMove = 1,
    CanPatrol = 1,
    CanStop = 1,
    LeaveTracks = 0,
    Reclaimable = 0,
    canSelfDestruct = 1,
    repairable = 1,
    
--building
Builder = true,
ShowNanoSpray = true,
CanBeAssisted = true,	
workerTime = 5,
reclaimSpeed = 5,
buildDistance = 120,
terraformSpeed = 9001,
buildoptions = 
	{
	[[extractor]],
	[[solarpanel]],
	[[geothermalgenerator]],
	[[fusionreactor]],
	[[storage]],
	[[groundfactory]],
	[[hoverfactory]],
	[[llt]],
	[[lmt]],
	[[hlt]],
	[[radartower]],
	[[caretaker]],
	[[bb]],
	},

--Hitbox
--    collisionVolumeOffsets    =  "0 0 0",
--    collisionVolumeScales     =  "30 30 30",
--    collisionVolumeTest       =  1,
--    collisionVolumeType       =  "box",

   
--Weapons and related
    BadTargetCategory = "NOTAIR",
      	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
    NoChaseCategory = "AIR",




}

return lowerkeys({ [unitName]  =  unitDef })