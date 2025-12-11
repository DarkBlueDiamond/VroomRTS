local unitName  =  "hoverconstructor"

local unitDef  =  {
--Internal settings
BuildPic = "Hover Constructor.png",
    Category = "TANK SMALL NOTAIR NOTSUB HOVER",
    ObjectName = "Hover Constructor.s3o",
    name = "Hover Constructor",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Hover Constructor",
    script = "hoverconstructorscript.lua",
	icontype = "hoverconstructor",
--Unit limitations and properties
    Description = "Hover Builder.",
    MaxDamage = 400,
    idleTime = 300,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 500,
	sonarDistance = 500,
    SoundCategory = "TANK",
    Upright = 0,
	corpse = [[hoverconstructor_dead]],
	sfxtypes             = {
	explosionGenerators = {
	[[custom:buildermuzzleflash]],
	},
   },
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
    speed = 52,
    MaxWaterDepth = 5,
    MovementClass = "Small Hover",
    TurnRate = 1000,

    
--Abilities
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
--building
Builder = true,
ShowNanoSpray = true,
CanBeAssisted = true,	
workerTime = 5,
repairSpeed = 3.3,
reclaimSpeed = 5,
buildDistance = 120,
terraformSpeed = 9001,
buildoptions = 
	{
	[[extractor]],
	[[windturbine]],
	[[solarpanel]],
	[[tidalgenerator]],
	[[geothermalgenerator]],
	[[storage]],
	[[fusionreactor]],
	[[groundfactory]],
	[[airfactory]],
	[[hoverfactory]],
	[[navalfactory]],
	[[llt]],
	[[lmt]],
	[[aat]],
	[[hlt]],
	[[tp]],
	[[geothermalplasmacannon]],
	[[radartower]],
	[[caretaker]],
	[[bb]],
	[[volcano]],
	[[alpha]],
	},

--Hitbox
 collisionVolumeOffsets    =  "0 0 -3",
collisionVolumeScales     =  "25.75 20 34.5",
collisionVolumeType       =  "box",

   
--Weapons and related
    BadTargetCategory = "NOTAIR",
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
    NoChaseCategory = "AIR",




}

return lowerkeys({ [unitName]  =  unitDef })
