local unitName  =  "hlt"

local unitDef  =  {
--Internal settings
BuildPic = "HLT.bmp",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "HLT.s3o",
    name = "Heavy Laser Tower",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Heavy Laser Tower",
    script = "hltscript.lua",

--Unit limitations and properties
    Description = "Heavy Defensive Tower.",
    MaxDamage = 1800,
    idleTime = 600,
    idleAutoHeal = 2,
    RadarDistance = 0,
    SightDistance = 600,
    SoundCategory = "Building",
    Upright = 0,
    floater = true,
--Energy and metal related
    BuildCostEnergy = 450,
    BuildCostMetal = 450,
    buildTime = 450,

--Size and Abilites
  MaxSlope = 33,
   FootprintX = 4,
   FootprintZ = 4,
   canSelfDestruct = 1,
   repairable = 1,
   CanAttack = 1,
   CanGuard = 1,
   CanStop = 1,
   CanMove = 0,
   CanPatrol = 0,


--Hitbox
--    collisionVolumeOffsets    =  "0 30 0",
--    collisionVolumeScales     =  "25 50 25",
--    collisionVolumeTest       =  1,
--    collisionVolumeType       =  "box",
YardMap = "oooo oooo oooo oooo",
--Weapons and related
	explodeAs = [[MediumBuildingExplosion]],
	selfDestructAs = [[MediumBuildingExplosion]],

weapons = {
[1]={name  = "HeavyLaser",
	   onlyTargetCategory = [[Tank]],
       turret = true
	},
},
    

}

return lowerkeys({ [unitName]  =  unitDef })
