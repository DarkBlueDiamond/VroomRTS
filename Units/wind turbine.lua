

local unitName  =  "windturbine"

local unitDef  =  {
--Internal settings
BuildPic = "Windturbine.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Wind Turbine.s3o",
    name = "Wind Turbine",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Wind Turbine",
    script = "windturbinescript.lua",
	icontype = "buildingenergy",
--Unit limitations and properties
    Description = "Wind based energy generator",
    MaxDamage = 225,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 400,
    SoundCategory = "Building",
    Upright = 0,
	corpse = [[windturbine_dead]],
--Energy and metal related
    BuildCostEnergy = 55,
    BuildCostMetal = 55,
    buildTime = 55,
	windGenerator = 5,
	customParams = {
    energymultiplier = 0.1,
},
--Size and Abilites
  MaxSlope = 50,
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
}

return lowerkeys({ [unitName]  =  unitDef })
