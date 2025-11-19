local unitName  =  "hoverfactory"

local unitDef  =  {
--Internal settings
BuildPic = "Hover Factory.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Hover Factory.s3o",
    name = "Hover Factory",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Hover Factory",
    script = "hoverfactoryscript.lua",
	corpse = [[hoverfactory_dead]],
	icontype = "buildinghoverfactory",
--Unit limitations and properties
    Description = "Makes Hover units.",
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
	[[hoverconstructor]],
	[[skeeter]],
	[[flow]],
	[[swatter]],
	[[cutlass]],
	[[shatterer]],
	[[lurker]],
	[[clam]],
	[[gazer]],
	},
	--Hitbox
collisionVolumeOffsets    =  "0 0 -7.5",
collisionVolumeScales     =  "120 80 175",
collisionVolumeType       =  "box",
	YardMap ="oooooooo oooooooo oyyyyyyo oyyyyyyo oyyyyyyo oyyyyyyo oyyyyyyo oyyyyyyo oyyyyyyo oyyyyyyo yyyyyyyy",
--Weapons and related
   	explodeAs = [[FactoryExplosion]],
	selfDestructAs = [[FactoryExplosion]],
    


}

return lowerkeys({ [unitName]  =  unitDef })