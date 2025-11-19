local unitName  =  "harpy"

local unitDef  =  {
--Internal settings
BuildPic = "Harpy.png",
    Category = "AIR SMALL NOTSUB",
    ObjectName = "Harpy.s3o",
    name = "Harpy",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Harpy",
    script = "harpyscript.lua",
	icontype = "airraider",
--Unit limitations and properties
    Description = "Raider/support gunship.",
    MaxDamage = 575,
    idleTime = 300,
    idleAutoHeal = 5,
    RadarDistance = 0,
    SightDistance = 560,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[SmallAirExplosion]],
	selfDestructAs = [[SmallAirExplosion]],
   corpse = [[harpy_dead]],
--Energy and metal related
    BuildCostEnergy = 185,
    BuildCostMetal = 185,
    BuildTime = 185,
--Pathfinding and related
    maxAcc = 0.4,
    BrakeRate = 0.1,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 128,
    MaxWaterDepth = 5,
    MovementClass = "Small Vechicle",
    TurnRate = 1450, --750 and 900

    
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
	
--Aerial things
canFly = 1,
hoverAttack = 1,
cruiseAlt = 200, --375 and 250


--Hitbox
collisionVolumeOffsets    =  "0 0.5 0",
collisionVolumeScales     =  "18 12 36",
collisionVolumeType       =  "box",

   
--Weapons and related
    NoChaseCategory = "air",
	
weapons = {
[1]={name  = "TwinBurstBlatser",
	   --onlyTargetCategory = [[tank]],
        mainDir = "0 0 1",
		maxAngleDif = 70,
	},
[2]={name  = "TwinBurstBlatser",
	   --onlyTargetCategory = [[tank]],
        mainDir = "0 0 1",
		maxAngleDif = 70,
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })