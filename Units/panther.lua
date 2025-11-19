local unitName  =  "panther"

local unitDef  =  {
--Internal settings
BuildPic = "Panther.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Panther.s3o",
    name = "Panther",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Panther",
    script = "pantherscript.lua",
	icontype = "panther",
--Unit limitations and properties
    Description = "Stealthed(NOT CLOAKED)Stun unit(drains 1.6 e).",
    MaxDamage = 1400,
    idleTime = 300,
    idleAutoHeal = 5,
    RadarDistance = 0,
    SightDistance = 450,
    SoundCategory = "TANK",
    Upright = 0,
	--stealth = true, now a part of stealth_defs
	corpse = [[panther_dead]],
--Energy and metal related
    BuildCostEnergy = 300,
    BuildCostMetal = 300,
	BuildTime = 300,
	--energyUpkeep = 1.6, now a part of stealth_defs
--Pathfinding and related
    maxAcc = 0.35,
    BrakeRate = 0.1,
    FootprintX = 3,
    FootprintZ = 3,
    MaxSlope = 45,
    speed = 66,
    MaxWaterDepth = 5,
    MovementClass = "Large Vechicle",
    TurnRate = 1350,

    
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
    collisionVolumeOffsets    =  "0 -6 0",
    collisionVolumeScales     =  "30.5 34 44",
    collisionVolumeType       =  "box",

   
--Weapons and related
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
    NoChaseCategory = "AIR",



weapons = {
[1]={name  = "PantherLightningGun", --PantherLightningGun
       turret = true
	},
	
[2]={name  = "PantherLightningGunStun",  --PantherLightningGunStun
       turret = true
	},
},
}

return lowerkeys({ [unitName]  =  unitDef })