local unitName  =  "dove"

local unitDef  =  {
--Internal settings
BuildPic = "Dove.png",
    Category = "AIR SMALL NOTSUB",
    ObjectName = "Dove.s3o",
    name = "Dove",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Dove",
    script = "dovescript.lua",
	icontype = "airfiresupport",
--Unit limitations and properties
    Description = "Fast high damage but fragile strike aircraft.",
    MaxDamage = 240,
    idleTime = 300,
    idleAutoHeal = 0,
    SonarDistance = 560,
    SightDistance = 560,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[SmallAirExplosion]],
	selfDestructAs = [[SmallAirExplosion]],
   corpse = [[dove_dead]],
--Energy and metal related
    BuildCostEnergy = 140,
    BuildCostMetal = 140,
    BuildTime = 140,
--Pathfinding and related
    maxAcc = 0.4,
    BrakeRate = 0.1,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 172,
    MaxWaterDepth = 5,
    MovementClass = "Small Vechicle",
    TurnRate = 2500,

    
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
--Aerial things
canFly = 1,
hoverAttack = 0,
cruiseAlt = 325,
canLoopbackAttack = true,
maxRudder = 0.009,
maxElevator = 0.0265,
turnradius = 20,

--Hitbox
collisionVolumeOffsets    =  "0 0 0",
collisionVolumeScales     =  "7.5 7.5 25",
collisionVolumeType       =  "box",

   
--Weapons and related
    NoChaseCategory = "AIR",
	
weapons = {
[1]={name  = "StrikeMissles",
	   onlyTargetCategory = [[TANK]],
        mainDir = "0 0 1",
		maxAngleDif = 30,
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })
