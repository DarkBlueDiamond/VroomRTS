local unitName  =  "llt"

local unitDef  =  {
--Internal settings
BuildPic = "LLT.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "LLT.s3o",
    name = "Light Laser Tower",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Light Laser Tower",
    script = "lltscript.lua",
	icontype = "buildingllt",
--Unit limitations and properties
    Description = "Basic Defensive Tower.",
    MaxDamage = 750,
    idleTime = 600,
    idleAutoHeal = 2,
    RadarDistance = 0,
    SightDistance = 600,
    SoundCategory = "Building",
    Upright = 0,
    floater = true,
	corpse = [[llt_dead]],
--Energy and metal related
    BuildCostEnergy = 100,
    BuildCostMetal = 100,
    buildTime = 100,

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
[1]={name  = "LightLaser",
       turret = true
	},
},
    
script = "lltscript.lua"

}

return lowerkeys({ [unitName]  =  unitDef })
