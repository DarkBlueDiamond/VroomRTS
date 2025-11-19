local unitName  =  "solarpanel"

local unitDef  =  {
--Internal settings
BuildPic = "Solar Pannel.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Solar Pannel2.s3o",
    name = "Solar Panel",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Solar Panel",
    script = "solarpanelscript.lua",
	icontype = "buildingenergy",
--Unit limitations and properties
    Description = "Basic Energy generator (2E).",
    MaxDamage = 500,
    damageModifier = 0.25,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 400,
    SoundCategory = "Building",
    Upright = 0,
	maxWaterDepth = 4,
	corpse = [[solarpanel_dead]],
--Energy and metal related
    BuildCostEnergy = 75,
    BuildCostMetal = 75,
    Buildtime = 75,
	--2 energy, uses energyupkeep so if it turns on, it'll "use" negative energy
    energyUpkeep = -2, --this is how it shouldve worked

--Size and Abilites
   MaxSlope = 33,
   FootprintX = 4,
   FootprintZ = 4,
   canSelfDestruct = 1,
   repairable = 1,
   CanMove = 0,
   CanPatrol = 0,
   onOffable = 1,
   activateWhenBuilt = 1, 
	

--Hitbox
collisionVolumeOffsets    =  "0 0 0",
collisionVolumeScales     =  "33 45 33",
collisionVolumeType       =  "box",
YardMap = "oooo oooo oooo oooo",
--Weapons and related
  explodeAs = [[MediumBuildingExplosion]],
	selfDestructAs = [[MediumBuildingExplosion]],
    


}

return lowerkeys({ [unitName]  =  unitDef })
