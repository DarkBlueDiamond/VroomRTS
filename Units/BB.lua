local unitName  =  "bb"

local unitDef  =  {
--Internal settings
BuildPic = "BB.bmp",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "BB.s3o",
    name = "Big Bertha",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Big Bertha",
    script = "bbscript.lua",
	corpse = [[bb_dead]],
--Unit limitations and properties
    Description = "Large Tactical Cannon (drains 50 e per second.)",
    MaxDamage = 5600,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 750,
    SoundCategory = "Building",
--Energy and metal related
    BuildCostEnergy = 5000,
    BuildCostMetal = 5000,
    buildTime = 5000,
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
       turret = true
	},
},
    


}

return lowerkeys({ [unitName]  =  unitDef })
