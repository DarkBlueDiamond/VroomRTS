local unitName  =  "aerialconstructor"

local unitDef  =  {
--Internal settings
BuildPic = "Aerial Constructor.png",
    Category = "AIR SMALL NOTSUB",
    ObjectName = "Aerial Constructor.s3o",
    name = "Aerial Constructor",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Aerial Constructor",
    script = "aerialconstructorscript.lua",
	icontype = "airconstructor",
--Unit limitations and properties
    Description = "Flying Builder.",
    MaxDamage = 375,
    idleTime = 300,
    idleAutoHeal = 5,
    RadarDistance = 0,
    SightDistance = 500,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[MediumAirExplosion]],
	selfDestructAs = [[MediumAirExplosion]],
   corpse = [[aerialconstructor_dead]],
   sfxtypes             = {
	explosionGenerators = {
	[[custom:buildermuzzleflash]],
	},
   },
--Energy and metal related
    BuildCostEnergy = 85,
    BuildCostMetal = 85,
    BuildTime = 85,
--Pathfinding and related
    maxAcc = 0.4,
    BrakeRate = 0.1,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 116,
    MaxWaterDepth = 5,
    MovementClass = "Large Vechicle",
    TurnRate = 1900,

 
	
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
    
--building
Builder = true,
ShowNanoSpray = true,
CanBeAssisted = true,	
workerTime = 4,
repairSpeed = 2.6,
reclaimSpeed = 4,
buildDistance = 100,
terraformSpeed = 9001,
buildoptions = 
	{
	[[extractor]],
	[[windturbine]],
	[[solarpanel]],
	[[tidalgenerator]],
	[[geothermalgenerator]],
	[[fusionreactor]],
	[[storage]],
	[[groundfactory]],
	[[hoverfactory]],
	[[airfactory]],
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
	
--Aerial things
canFly = 1,
hoverAttack = 1,
cruiseAlt = 250, --375
--Hitbox
collisionVolumeOffsets    =  "0 1 0",
collisionVolumeScales     =  "20 14.5 42",
collisionVolumeType       =  "box",

   
--Weapons and related
    NoChaseCategory = "air",
}
return lowerkeys({ [unitName]  =  unitDef })
