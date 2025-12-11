local unitName  =  "shatterer"

local unitDef  =  {
--Internal settings
BuildPic = "Shatterer.png",
    Category = "TANK SMALL NOTAIR NOTSUB HOVER",
    ObjectName = "Shatterer.s3o",
    name = "Shatterer",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Shatterer",
    script = "shattererscript.lua",  --shattererscript
	icontype = "hoverriot",
--Unit limitations and properties
    Description = "Riot Stunner",
    MaxDamage = 1575,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 450,
	sonarDistance = 450,
    SoundCategory = "TANK",
    Upright = 0,
	corpse = [[shatterer_dead]],
--Energy and metal related
    BuildCostEnergy = 275,
    BuildCostMetal = 275,
	BuildTime = 275,
--Pathfinding and related
    maxAcc = 0.3,
    BrakeRate = 0.1,
    FootprintX = 3,
    FootprintZ = 3,
    MaxSlope = 45,
    speed = 49,
    MaxWaterDepth = 5,
    MovementClass = "Large Hover",
    TurnRate = 875,

    
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
  collisionVolumeOffsets    =  "0 -1 0",
     collisionVolumeScales    =  "27 24 36",
    collisionVolumeType     =  "box",

   
--Weapons and related
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
    NoChaseCategory = "AIR",



weapons = {
[1]={name  = "ShattererLightningGun", --ShattererLightningGun
	   onlyTargetCategory = [[Tank]],
	  mainDir = "0 0 1",
	maxAngleDif = 90,
	},
[2]={name  = "ShattererLightningStun", --ShattererLightningStun
	   onlyTargetCategory = [[Tank]],
	  mainDir = "0 0 1",
	maxAngleDif = 90,
	},
},



}

return lowerkeys({ [unitName]  =  unitDef })
