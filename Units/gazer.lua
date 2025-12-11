local unitName  =  "gazer"

local unitDef  =  {
--Internal settings
BuildPic = "Gazer.png",
    Category = "TANK SMALL NOTAIR NOTSUB HOVER",
    ObjectName = "Gazer.s3o",
    name = "Gazer",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Gazer",
    script = "gazerscript.lua",
	icontype = "hoverartillery",
--Unit limitations and properties
    Description = "Anti Heavy Unit.",
    MaxDamage = 750,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 450,
	sonarDistance = 450,
    SoundCategory = "TANK",
    Upright = 0,
	corpse = [[gazer_dead]],
--Energy and metal related
    BuildCostEnergy = 1000,
    BuildCostMetal = 1000,
	BuildTime = 1000,
--Pathfinding and related
    maxAcc = 0.4,
    BrakeRate = 0.2,
    FootprintX = 3,
    FootprintZ = 3,
    MaxSlope = 45,
    speed = 41,
    MaxWaterDepth = 5,
    MovementClass = "Large Hover",
    TurnRate = 1000,

    
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
collisionVolumeOffsets    =  "0 0 -2.5",
collisionVolumeScales     =  "30 22.5 50",
collisionVolumeType       =  "box",

   
--Weapons and related
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
    NoChaseCategory = "AIR",



weapons = {
[1]={name  = "GazerHighIntensityLaser",
	   onlyTargetCategory = [[TANK]],
	},
},



}

return lowerkeys({ [unitName]  =  unitDef })
