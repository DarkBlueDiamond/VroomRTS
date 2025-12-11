local unitName  =  "stunburst"

local unitDef  =  {
--Internal settings
BuildPic = "Stunburst.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Stunburst.s3o",
    name = "Stunburst",
    Side = "Vroomers",
    TEDClass = "Vech",
    UnitName = "Stunburst",
    script = "stunburstscript.lua",
	icontype = "stunburst",
--Unit limitations and properties
    Description = "Light Scout/Raider Support.",
    MaxDamage = 155,
    idleTime = 150,
    idleAutoHeal = 10,
    RadarDistance = 0,
    SightDistance = 550,
    SoundCategory = "TANK",
    Upright = 0,
	explodeAs = [[StunBurstExplosion]],
	selfDestructAs = [[StunBurstExplosion]],
	corpse = [[stunburst_dead]],
--Energy and metal related
    BuildCostEnergy = 40,
    BuildCostMetal = 40,
    BuildTime = 40,
--Pathfinding and related
    maxAcc = 0.4,
    BrakeRate = 0.2,
    FootprintX = 2,
    FootprintZ = 2,
    MaxSlope = 45,
    speed = 118,
    MaxWaterDepth = 5,
    MovementClass = "Small Vechicle",
    TurnRate = 2600,

    
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
collisionVolumeOffsets    =  "0 0 -1.5",
collisionVolumeScales     =  "13.75 11.5 19.75",
collisionVolumeType       =  "box",

   
--Weapons and related




weapons = {
[1]={name  = "DualStunMissles",
       turret = true
	},

	
},

}

return lowerkeys({ [unitName]  =  unitDef })
