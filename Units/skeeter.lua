local unitName  =  "skeeter"

local unitDef  =  {
--Internal settings
BuildPic = "Skeeter.png",
    Category = "TANK SMALL NOTAIR NOTSUB HOVER",
    ObjectName = "Skeeter.s3o",
    name = "Skeeter",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Skeeter",
    script = "skeeterscript.lua",
    icontype = "hoverraider",
--Unit limitations and properties
    Description = "Fast Shotgun raider unit.",
    MaxDamage = 270,
    idleTime = 300,
    idleAutoHeal = 5,
    RadarDistance = 0,
    SightDistance = 560,
	sonarDistance = 560,
    SoundCategory = "TANK",
    Upright = 0,
	sfxtypes             = {
explosionGenerators = {
	[[custom:skeetermuzzleflash]],
	},
	},
	corpse = [[skeeter_dead]],
--Energy and metal related
    BuildCostEnergy = 75,
    BuildCostMetal = 75,
    BuildTime = 75,
--Pathfinding and related
    maxAcc = 0.35,
    BrakeRate = 0.1,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 104,
    MaxWaterDepth = 5,
    MovementClass = "Small Hover",
    TurnRate = 2750,

    
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
    activateWhenBuilt = 1,

--Hitbox
collisionVolumeOffsets    =  "0 5 0",
collisionVolumeScales     =  "20.5 19 37",
collisionVolumeType       =  "box",

   
--Weapons and related
   	explodeAs = [[SmallExplosion]],
	selfDestructAs = [[SmallExplosion]],
    NoChaseCategory = "AIR",



weapons = {
[1]={name  = "Shotgun",
       turret = true
	},
},



}

return lowerkeys({ [unitName]  =  unitDef })