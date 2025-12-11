local unitName  =  "hunter"

local unitDef  =  {
--Internal settings
BuildPic = "Hunter.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "HunterT.s3o",
    name = "Hunter",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Hunter",
    script = "hunterscript.lua",
	icontype = "raider",
--Unit limitations and properties
    BuildTime = 1280,
    Description = "Fast raider unit.",
    MaxDamage = 320,
    idleTime = 300,
    idleAutoHeal = 5,
    RadarDistance = 0,
    SightDistance = 560,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[SmallExplosion]],
	selfDestructAs = [[SmallExplosion]],
	sfxtypes             = {
	explosionGenerators = {
	[[custom:huntermuzzleflash]],
	},
   },
   corpse = [[hunter_dead]],
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
    MaxVelocity = 3.2,
    MaxWaterDepth = 5,
    MovementClass = "Small Vechicle",
    TurnRate = 2250,

    
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
collisionVolumeOffsets    =  "0 0 -2",
collisionVolumeScales     =  "12 12 26",
collisionVolumeType       =  "box",

   
--Weapons and related
   
    NoChaseCategory = "AIR",
	
weapons = {
[1]={name  = "MachineGun",
       turret = true
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })
