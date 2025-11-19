local unitName  =  "lmt"

local unitDef  =  {
--Internal settings
BuildPic = "LMT.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "LMT.s3o",
    name = "Missle Tower",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Missle Tower",
    script = "lmtscript.lua",
	icontype = "buildingfiresupport",
--Unit limitations and properties
    Description = "Long range multipurpose but fragile Tower.",
    MaxDamage = 575,
    idleTime = 600,
    idleAutoHeal = 2,
    RadarDistance = 0,
    SightDistance = 600,
    SoundCategory = "Building",
    Upright = 0,
    floater = true,
	corpse = [[lmt_dead]],
--Energy and metal related
    BuildCostEnergy = 150,
    BuildCostMetal = 150,
    buildTime = 150,


--Size and Abilites
  MaxSlope = 33,
   FootprintX = 3,
   FootprintZ = 3,
   canSelfDestruct = 1,
   repairable = 1,
   CanAttack = 1,
   CanGuard = 1,
   CanStop = 1,
   CanMove = 0,
   CanPatrol = 0,


--Hitbox
 collisionVolumeOffsets    =  "0 25 0",
 collisionVolumeScales     =  "25 85 25",
 collisionVolumeType       =  "box",
YardMap = "ooooooooo",
--Weapons and related
	explodeAs = [[MediumBuildingExplosion]],
	selfDestructAs = [[MediumBuildingExplosion]],

weapons = {
[1]={name  = "LMTMissle",
       turret = true
	},
},
    
script = "lmtscript.lua"

}

return lowerkeys({ [unitName]  =  unitDef })
