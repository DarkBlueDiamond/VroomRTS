local unitName  =  "lurker"

local unitDef  =  {
--Internal settings
BuildPic = "Lurker.png",
    Category = "TANK SMALL NOTAIR NOTSUB HOVER",
    ObjectName = "Lurker.s3o",
    name = "Lurker",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Lurker",
    script = "lurkerscript.lua",
	icontype = "hoverassault",
--Unit limitations and properties
    Description = "Offensive Assault Unit",
    MaxDamage = 2670,
    idleTime = 300,
    idleAutoHeal = 5,
    RadarDistance = 0,
    SightDistance = 450,
    sonarDistance = 450,
    SoundCategory = "TANK",
    Upright = 0,
	corpse = [[lurker_dead]],
--Energy and metal related
    BuildCostEnergy = 320,
    BuildCostMetal = 320,
	BuildTime = 320,
--Pathfinding and related
    maxAcc = 0.4,
    BrakeRate = 0.2,
    FootprintX = 3,
    FootprintZ = 3,
    MaxSlope = 45,
    speed = 51,
    MaxWaterDepth = 5,
    MovementClass = "Large Hover",
    TurnRate = 1150,

    
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
collisionVolumeScales     =  "30 20 50",
collisionVolumeType       =  "box",

   
--Weapons and related
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
    NoChaseCategory = "AIR",



weapons = {
[1]={name  = "LaserBlaster",
       turret = true
	},
},



}

return lowerkeys({ [unitName]  =  unitDef })
