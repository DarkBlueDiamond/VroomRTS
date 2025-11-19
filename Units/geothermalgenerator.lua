local unitName  =  "geothermalgenerator"

local unitDef  =  {
--Internal settings
BuildPic = "Geothermal Generator.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Geothermal Generator.s3o",
    name = "Geothermal Generator",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Geothermal Generator",
    script = "geothermalgeneratorscript.lua",
	corpse = [[geothermalgenerator_dead]],
	icontype = "buildinggeo",
--Unit limitations and properties
    Description = "Makes 25 energy and 5 metal. Must be placed on a geo spot.",
    MaxDamage = 2500,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 475,
    SoundCategory = "Building",
    Upright = 0,
--Energy and metal related
    BuildCostEnergy = 850,
    BuildCostMetal = 850,
    Buildtime = 850,
	EnergyMake = 25,
	MetalMake = 5,
--Size and Abilites
   MaxSlope = 33,
   FootprintX = 6,
   FootprintZ = 6,
   canSelfDestruct = 1,
   repairable = 1,
   CanMove = 0,
   CanPatrol = 0,
   onOffable = 1,
   activateWhenBuilt = 1, 


--Hitbox
collisionVolumeOffsets    =  "0 10 0",
collisionVolumeScales     =  "60 70 60",
collisionVolumeType       =  "box",
	YardMap = "oooooo oggggo oggggo oggggo oggggo oooooo",
--Weapons and related
	explodeAs = [[GeothermalExplosion]],
	selfDestructAs = [[GeothermalExplosion]],
    


}

return lowerkeys({ [unitName]  =  unitDef })
