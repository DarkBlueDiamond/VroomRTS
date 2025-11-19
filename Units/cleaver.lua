local unitName  =  "cleaver"

local unitDef  =  {
--Internal settings
BuildPic = "Cleaver.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Cleaver.s3o",
    name = "Cleaver",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Cleaver",
    script = "cleaverscript.lua",
	icontype = "riot",
--Unit limitations and properties
    Description = "Slow riot unit.",
    MaxDamage = 1075,
    idleTime = 300,
    idleAutoHeal = 5,
    RadarDistance = 0,
    SightDistance = 450,
    SoundCategory = "TANK",
    Upright = 0,
	corpse = [[cleaver_dead]],
--Energy and metal related
    BuildCostEnergy = 235,
    BuildCostMetal = 235,
	BuildTime = 235,
--Pathfinding and related
    maxAcc = 0.35,
    BrakeRate = 0.1,
    FootprintX = 3,
    FootprintZ = 3,
    MaxSlope = 45,
    speed = 46,
    MaxWaterDepth = 5,
    MovementClass = "Large Vechicle",
    TurnRate = 1200,

    
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
    

--Hitbox
    collisionVolumeOffsets    =  "0 -6 0",
    collisionVolumeScales     =  "30 33 44",
    collisionVolumeType       =  "box",

   
--Weapons and related
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
    NoChaseCategory = "AIR",



weapons = {
[1]={name  = "BeamLaser",
       turret = true
	},
},



}

return lowerkeys({ [unitName]  =  unitDef })
