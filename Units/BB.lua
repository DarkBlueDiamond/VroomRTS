local unitName  =  "bb"

local unitDef  =  {
--Internal settings
BuildPic = "BB.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "BB.s3o",
    name = "Big Bertha",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Big Bertha",
    script = "bbscript.lua",
	corpse = [[bb_dead]],
	icontype = "buildingbb",
--Unit limitations and properties
    Description = "Large Tactical Cannon (drains 50 e per second.)",
    MaxDamage = 5600,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 750,
    SoundCategory = "Building",
    maxWaterDepth = 125,
--Energy and metal related
    BuildCostEnergy = 6000,
    BuildCostMetal = 6000,
    buildTime = 6000,
	energyUpkeep = 50,
sfxtypes             = {
explosionGenerators = {
	[[custom:bbmuzzleflash]],
	},
	},
--Size and Abilites
  MaxSlope = 33,
   FootprintX = 9,
   FootprintZ = 9,
   canSelfDestruct = 1,
   repairable = 1,
   CanAttack = 1,
   CanGuard = 1,
   CanStop = 1,
   CanMove = 0,
   CanPatrol = 0,
   activateWhenBuilt = 1,

--Hitbox
collisionVolumeOffsets    =  "0 75 0",
collisionVolumeScales     =  "77 300 77",
collisionVolumeType       =  "box",
YardMap = "ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo ooooooooo",
--Weapons and related
    	explodeAs = [[BBExplosion]],
	selfDestructAs = [[BBExplosion]],

weapons = {
[1]={name  = "BBBigCannon",
onlyTargetCategory = [[Tank]],
	},
},
    


}

return lowerkeys({ [unitName]  =  unitDef })
