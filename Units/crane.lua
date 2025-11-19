local unitName  =  "crane"

local unitDef  =  {
--Internal settings
BuildPic = "Crane.png",
    Category = "AIR SMALL NOTSUB",
    ObjectName = "Crane.s3o",
    name = "Crane",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Crane",
    script = "cranescript.lua",
	icontype = "airtransport",
--Unit limitations and properties
    Description = "Transport Aircraft.",
    MaxDamage = 550,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 500,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[SmallAirExplosion]],
	selfDestructAs = [[SmallAirExplosion]],
   corpse = [[crane_dead]],
--Energy and metal related
    BuildCostEnergy = 125,
    BuildCostMetal = 125,
    BuildTime = 125,
--Pathfinding and related
    maxAcc = 0.4,
    BrakeRate = 0.1,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 130,
    MaxWaterDepth = 5,
    MovementClass = "Larger Vechicle",
    TurnRate = 1500,

    
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
	
--Aerial and transport things
canFly = 1,
hoverAttack = 1,
bankingAllowed = false,
cruiseAlt = 250,
transportSize = 5,
transportCapacity = 1,
transportMass = 1250,
loadingRadius = 250,
transportUnloadMethod = 0,
releaseHeld = 1,
--Hitbox
collisionVolumeOffsets    =  "0 0.5 0",
collisionVolumeScales     =  "44 19 54",
collisionVolumeType       =  "box",

   
--Weapons and related
    NoChaseCategory = "air",
	


}

return lowerkeys({ [unitName]  =  unitDef })