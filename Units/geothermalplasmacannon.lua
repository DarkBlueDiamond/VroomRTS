local unitName  =  "geothermalplasmacannon"

local unitDef  =  {
--Internal settings
BuildPic = "Geothermal Plasma Cannon.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Geothermal Plasma Cannon.s3o",
    name = "Geothermal Plasma Cannon",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Geothermal Plasma Cannon",
    script = "geothermalplasmacannonscript.lua",
	corpse = [[geothermalplasmacannon_dead]],
	sfxtypes             = {
explosionGenerators = {
	[[custom:bbsmuzzleflash]],
	},
	},
	icontype = "buildinggeoarty",
--Unit limitations and properties
    Description = "Large Artillery Turret. Must be placed on a geo spot.",
    MaxDamage = 3500,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 575,
    SoundCategory = "Building",
    Upright = 0,
--Energy and metal related
    BuildCostEnergy = 2000,
    BuildCostMetal = 2000,
    Buildtime = 2000,
--Size and Abilites
   MaxSlope = 33,
   FootprintX = 6,
   FootprintZ = 6,
   MaxWaterDepth = 7.5,
   canSelfDestruct = 1,
   repairable = 1,
   CanMove = 0,
   CanPatrol = 0,
   onOffable = 1,
   activateWhenBuilt = 1, 


--Hitbox
collisionVolumeOffsets    =  "0 10 0",
collisionVolumeScales     =  "60 58 60",
collisionVolumeType       =  "box",
	YardMap = "oooooo oggggo oggggo oggggo oggggo oooooo",
--Weapons and related
	explodeAs = [[GeothermalExplosion]],
	selfDestructAs = [[GeothermalExplosion]],
	
    weapons = {
[1]={name  = "GeothermalArtilleryPlasmaGun",
	   onlyTargetCategory = [[Tank]],
	},
},


}

return lowerkeys({ [unitName]  =  unitDef })
