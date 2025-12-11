local unitName  =  "pointer"

local unitDef  =  {
--Internal settings
BuildPic = "Pointer.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Pointer.s3o",
    name = "Pointer",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Pointer",
    script = "pointerscript.lua",
	icontype = "antiair",
--Unit limitations and properties
    Description = "Anti Air unit.",
    MaxDamage = 400,
    idleTime = 300,
    idleAutoHeal = 2,
    RadarDistance = 0,
    SightDistance = 560,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[SmallExplosion]],
	selfDestructAs = [[SmallExplosion]],
   corpse = [[pointer_dead]],
--Energy and metal related
    BuildCostEnergy = 95,
    BuildCostMetal = 95,
    BuildTime = 95,
--Pathfinding and related
    maxAcc = 0.35,
    BrakeRate = 0.1,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 70,
    MaxWaterDepth = 5,
    MovementClass = "Small Vechicle",
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
    

--Hitbox
collisionVolumeOffsets    =  "0 0 -0.75",
collisionVolumeScales     =  "17 18 34",
collisionVolumeType       =  "box",

   
--Weapons and related
   
    NoChaseCategory = "TANK",
	
weapons = {
[1]={name  = "PointerAAMissle",
	   onlyTargetCategory = [[AIR]],
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })
