local unitName  =  "owl"

local unitDef  =  {
--Internal settings
BuildPic = "Owl.png",
    Category = "AIR SMALL NOTSUB",
    ObjectName = "Owl.s3o",
    name = "Owl",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Owl",
    script = "owlscript.lua",
	icontype = "airradar",
--Unit limitations and properties
    Description = "Radar Plane.",
    MaxDamage = 720,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 2000,
	sonarDistance = 2000,
    SightDistance = 850,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[SmallAirExplosion]],
	selfDestructAs = [[SmallAirExplosion]],
   corpse = [[owl_dead]],
--Energy and metal related
    BuildCostEnergy = 350,
    BuildCostMetal = 350,
    BuildTime = 350,
	energyUse = 10,
--Pathfinding and related
    maxAcc = 0.33,
    BrakeRate = 0.1,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 124,
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
	onOffable = 1,
    activateWhenBuilt = 1,
	
--Aerial things
canFly = 1,
hoverAttack = 0,
cruiseAlt = 350, --375
canLoopbackAttack = true,
maxRudder = 0.006,
maxElevator = 0.012,
turnradius = 20,

--flare things
 --canDropFlare = true,
 --flareReloadTime = 35,
 --flareDelay = 0.4,
 --flareEfficiency = 0.8,
 --flareDropVector = "0 -1 0",
 --flareTime = 5,
 --flareSalvoSize = 8,
 --flareSalvoDelay = 3,
 
--Hitbox
collisionVolumeOffsets    =  "0 5 0",
collisionVolumeScales     =  "19 15 36",
collisionVolumeType       =  "box",

   
--Weapons and related
    BadTargetCategory = "TANK",
    NoChaseCategory = "TANK",
	


}

return lowerkeys({ [unitName]  =  unitDef })