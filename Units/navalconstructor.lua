local unitName  =  "navalconstructor"

local unitDef  =  {
--Internal settings
BuildPic = "Naval Constructor.png",
    Category = "TANK SHIP SMALL NOTAIR NOTSUB",
    ObjectName = "Naval Constructor.s3o",
    name = "Naval Constructor",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Hover Constructor",
    script = "navalconstructorscript.lua",
	icontype = "shipconstructor",
--Unit limitations and properties
    Description = "Naval Builder.",
    MaxDamage = 575,
    idleTime = 300,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 500,
	sonarDistance = 250,
    SoundCategory = "TANK",
    Upright = 0,
	corpse = [[navalconstructor_dead]],
	sfxtypes             = {
	explosionGenerators = {
	[[custom:buildermuzzleflash]],
	},
   },
--Energy and metal related
    BuildCostEnergy = 125,
    BuildCostMetal = 125,
	Buildtime = 125,
--Pathfinding and related
    maxAcc = 0.35,
    BrakeRate = 0.1,
    FootprintX = 3,
    FootprintZ = 3,
    speed = 35,
    MovementClass = "Medium Ship",
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
workerTime = 7.5,
repairSpeed = 5,
reclaimSpeed = 7.5,
buildDistance = 180,
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
 collisionVolumeOffsets    =  "0 0 -2.5",
collisionVolumeScales     =  "24 28 53",
collisionVolumeType       =  "box",

   
--Weapons and related
    BadTargetCategory = "NOTAIR",
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
    NoChaseCategory = "AIR",




}

return lowerkeys({ [unitName]  =  unitDef })
