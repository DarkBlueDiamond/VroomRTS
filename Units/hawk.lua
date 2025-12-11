local unitName  =  "hawk"

local unitDef  =  {
--Internal settings
BuildPic = "Hawk.png",
    Category = "AIR SMALL NOTSUB",
    ObjectName = "Hawk.s3o",
    name = "Hawk",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Hawk",
    script = "hawkscript.lua",
	icontype = "airantiair",
--Unit limitations and properties
    Description = "Fast Anti-Air fighter.",
    MaxDamage = 300,
    idleTime = 300,
    idleAutoHeal = 5,
    RadarDistance = 0,
    SightDistance = 560,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[SmallAirExplosion]],
	selfDestructAs = [[SmallAirExplosion]],
   corpse = [[hawk_dead]],
--Energy and metal related
    BuildCostEnergy = 100,
    BuildCostMetal = 100,
    BuildTime = 100,
--Pathfinding and related
    maxAcc = 0.4,
    BrakeRate = 0.1,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 164, --124
    MaxWaterDepth = 5,
    MovementClass = "Small Vechicle",
    TurnRate = 2250, --750 and 900 and 1450

    
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
hoverAttack = 0,
cruiseAlt = 325,
canLoopbackAttack = true,
maxRudder = 0.008,
maxElevator = 0.02,
turnradius = 20,

--Hitbox
collisionVolumeOffsets    =  "0 0 0",
collisionVolumeScales     =  "10 9.5 25",
collisionVolumeType       =  "box",

   
--Weapons and related
    BadTargetCategory = "TANK",
    NoChaseCategory = "TANK",
	
weapons = {
[1]={name  = "AALaserblatser",
	   onlyTargetCategory = [[AIR]],
        mainDir = "0 0 1",
		maxAngleDif = 55,
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })
