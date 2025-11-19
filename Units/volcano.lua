local unitName  =  "volcano"

local unitDef  =  {
--Internal settings
BuildPic = "Volcano.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Volcano.s3o",
    name = "Volcano",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Volcano",
    script = "volcanoscript.lua",
	corpse = [[volcano_dead]],
	icontype = "buildingvolcano",
--Unit limitations and properties
    Description = "Massive motar tatical cannon of death! (drains 300 e per second.)",
    MaxDamage = 7000,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 750,
    SoundCategory = "Building",
    maxWaterDepth = 150,
--Energy and metal related
    BuildCostEnergy = 20000,
    BuildCostMetal = 20000,
    buildTime = 20000,
	energyUpkeep = 300,
sfxtypes             = {
explosionGenerators = {
	[[custom:volcanomuzzleflash]],
	[[custom:volcanoshock]],
	},
	},
--Size and Abilites
  MaxSlope = 33,
   FootprintX = 12,
   FootprintZ = 12,
   canSelfDestruct = 1,
   repairable = 1,
   CanAttack = 1,
   CanGuard = 1,
   CanStop = 1,
   CanMove = 0,
   CanPatrol = 0,
   activateWhenBuilt = 1,
   highTrajectory = 1,

--Hitbox
collisionVolumeOffsets    =  "0 75 0",
collisionVolumeScales     =  "140 290 140",
collisionVolumeType       =  "box",
YardMap = "oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo oooooooooooo",
--Weapons and related
    	explodeAs = [[volcanoExplosion]],
	selfDestructAs = [[volcanoExplosion]],

weapons = {
[1]={name  = "VolcanoPreciseCannon",
onlyTargetCategory = [[Tank]],
	},
[2]={name  = "VolcanoScatterCannon",
onlyTargetCategory = [[Tank]],
	},
},
    


}

return lowerkeys({ [unitName]  =  unitDef })
