local unitName  =  "aat"

local unitDef  =  {
--Internal settings
BuildPic = "AAT.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "AAT.s3o",
    name = "Anti Air Tower",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Anti Air Tower",
    script = "aatscript.lua",
	icontype = "buildingaat",
--Unit limitations and properties
    Description = "Heavy Anti Air tower.",
    MaxDamage = 1000,
    idleTime = 600,
    idleAutoHeal = 2,
    RadarDistance = 0,
    SightDistance = 600,
    SoundCategory = "Building",
    Upright = 0,
    floater = true,
	corpse = [[aat_dead]],
--Energy and metal related
    BuildCostEnergy = 180,
    BuildCostMetal = 180,
    buildTime = 180,


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
 collisionVolumeScales     =  "25 75 25",
 collisionVolumeType       =  "box",
YardMap = "ooooooooo",
--Weapons and related
	explodeAs = [[MediumBuildingExplosion]],
	selfDestructAs = [[MediumBuildingExplosion]],

weapons = {
[1]={name  = "AATMissle",
onlyTargetCategory = [[AIR]],
       turret = true
	},
},
    

}

return lowerkeys({ [unitName]  =  unitDef })
