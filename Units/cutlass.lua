local unitName  =  "cutlass"

local unitDef  =  {
--Internal settings
BuildPic = "Cutlass.png",
    Category = "TANK SMALL NOTAIR NOTSUB HOVER",
    ObjectName = "Cutlass.s3o",
    name = "Cutlass",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Cutlass",
    script = "cutlassscript.lua",
    icontype = "hoverheavyraider",
--Unit limitations and properties
    Description =  "Heavy Raider with long but fast regen.",
    MaxDamage = 670,
    idleTime = 750,
    idleAutoHeal = 40,
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
	corpse = [[cutlass_dead]],
--Energy and metal related
    BuildCostEnergy = 215,
    BuildCostMetal =215,
    BuildTime = 215,
--Pathfinding and related
    maxAcc = 0.35,
    BrakeRate = 0.1,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 86,
    MaxWaterDepth = 5,
    MovementClass = "Large Hover",
    TurnRate = 2000,

    
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
collisionVolumeOffsets    =  "0 0 2",
collisionVolumeScales     =  "24 23 45",
collisionVolumeType       =  "box",

   
--Weapons and related
   	explodeAs = [[SmallExplosion]],
	selfDestructAs = [[SmallExplosion]],
    NoChaseCategory = "AIR",



weapons = {
[1]={name  = "CutlassDualLaser",
       turret = true
	},
[2]={name  = "CutlassDualLaser",
       turret = true
	},
},



}

return lowerkeys({ [unitName]  =  unitDef })
