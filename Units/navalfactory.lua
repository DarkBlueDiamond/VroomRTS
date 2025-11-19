local unitName  =  "navalfactory"

local unitDef  =  {
--Internal settings
BuildPic = "Naval Factory.png",
    Category = "TANK SMALL SHIP NOTAIR NOTSUB",
    ObjectName = "Naval Factory.s3o",
    name = "Naval Factory",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Naval Factory",
    script = "navalfactoryscript.lua",
	corpse = [[navalfactory_dead]],
	icontype = "buildingnavalfactory",
--Unit limitations and properties
    Description = "Makes Naval units.",
    MaxDamage = 3500,
    idleTime = 0,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 600,
    SoundCategory = "Building",
    Upright = 1,
	floater = true,
	sfxtypes             = {
	explosionGenerators = {
	[[custom:buildermuzzleflash]],
	},
   },
--Energy and metal related
    BuildCostEnergy = 750,
    BuildCostMetal = 750,
    Buildtime = 750, 
--Size and Abilites
   MaxSlope = 33,
   FootprintX = 8,
   FootprintZ = 11,
   canSelfDestruct = 1,
   repairable = 1,
   CanMove = 1,
   CanPatrol = 0,
   minWaterDepth = 15,
 --Building
 Builder = true,
canBeAssisted = true,
canAssist = false,
ShowNanoSpray = true,
CanBeAssisted = true,
canCapture = false,
canResurrect = false,
canReclaim = false,
canRepair = true,
canRestore = false,	
workerTime = 10,
buildoptions = 
	{
	[[navalconstructor]],
	[[riptide]],
	[[stingray]],
	[[archer]],
	[[catapult]],
	[[vanguard]],
	[[barrager]],
	},
	--Hitbox
collisionVolumeOffsets    =  "0 0 ",
collisionVolumeScales     =  "120 90 170",
collisionVolumeType       =  "box",
	YardMap ="oyyyyyyo oyyyyyyo oyyyyyyo oyyyyyyo oyyyyyyo oyyyyyyo oyyyyyyo oyyyyyyo oyyyyyyo oyyyyyyo yyyyyyyy",
--Weapons and related
   	explodeAs = [[FactoryExplosion]],
	selfDestructAs = [[FactoryExplosion]],
    


}

return lowerkeys({ [unitName]  =  unitDef })