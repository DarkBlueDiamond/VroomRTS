local unitName  =  "commander"

local unitDef  =  {
--Internal settings
BuildPic = "filename.png",
    Category = "TANK SMALL NOTAIR NOTSUB HOVER",
    ObjectName = "Commander.s3o",
    name = "Commander",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Commander",
    script = "commanderscript.lua",
	icontype = "commander",
--Unit limitations and properties
    Description = "Commander, Make sure not to lose it!",
    MaxDamage = 3750,
    idleTime = 0,
    idleAutoHeal = 10,
    RadarDistance = 2250,
    SightDistance = 600,
	sonarDistance = 600,
    SoundCategory = "TANK",
    Upright = 0,
	corpse = [[commander_dead]],
	sfxtypes             = {
	explosionGenerators = {
	[[custom:buildermuzzleflash]],
	},
   },
--Energy and metal related
    BuildCostEnergy = 1000,
    BuildCostMetal = 1000,
    energyMake = 6,
	metalMake = 2,
	commander = true,
--Pathfinding and related
    maxAcc = 0.25,
    BrakeRate = 0.1,
    FootprintX = 4,
    FootprintZ = 4,
    MaxSlope = 45,
    MaxVelocity = 1.5,
    TurnRate = 1000,
	MovementClass = "Hover commander",
	floater = true,
	waterline = 5,

    
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
    onOffable =0,
   activateWhenBuilt = 1,
   canManualFire = 1,
   
--building
Builder = true,
ShowNanoSpray = true,
CanBeAssisted = true,	
workerTime = 15,
repairSpeed = 10,
reclaimSpeed = 15,
buildDistance = 200,
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

--Hitbox
   collisionVolumeOffsets    =  "0 0 0",
   collisionVolumeScales     =  "46 33.5 60.5",
    collisionVolumeType       =  "box",

   
--Weapons and related
   explodeAs = [[CommanderExplosion]],
	selfDestructAs = [[CommanderExplosion]],
    NoChaseCategory = "AIR",
weapons = {
[1]={name  = "RapidCommanderLaser",
       turret = true
	},
[2]={name  = "CommanderTempDLaser",
       turret = true
	},
},



}

return lowerkeys({ [unitName]  =  unitDef })
