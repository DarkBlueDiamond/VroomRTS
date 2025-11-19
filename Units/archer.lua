local unitName  =  "archer"

local unitDef  =  {
--Internal settings
BuildPic = "Archer.png",
    Category = "TANK SHIP SMALL NOTAIR NOTSUB",
    ObjectName = "Archer.s3o",
    name = "Archer",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Archer",
    script = "archerscript.lua",
	icontype = "shipantiair",
--Unit limitations and properties
    Description = "Anti air unit.",
    MaxDamage = 865,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 550,
	sonarDistance = 550,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[MediumExplosion]],
	selfDestructAs = [[MediumExplosion]],
   corpse = [[archer_dead]],
--Energy and metal related
    BuildCostEnergy = 200,
    BuildCostMetal = 200,
    BuildTime = 200,
--Pathfinding and related
    maxAcc = 0.35,
    BrakeRate = 0.1,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 62,
    MovementClass = "Medium Ship",
    TurnRate = 1750,

    
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
collisionVolumeOffsets    =  "0 0 0",
collisionVolumeScales     =  "44 32 74",
collisionVolumeType       =  "box",

   
--Weapons and related
   
    NoChaseCategory = "AIR",
	
weapons = {
[1]={name  = "ArcherAALaser",
	 onlyTargetCategory = [[AIR]],
	},
[2]={name  = "ArcherAALaser",
	 onlyTargetCategory = [[AIR]],
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })