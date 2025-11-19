local unitName  =  "caretaker"

local unitDef  =  {
--Internal settings
BuildPic = "Caretaker.png",
    Category = "TANK SMALL NOTAIR NOTSUB",
    ObjectName = "Caretaker.s3o",
    name = "Caretaker",
    Side = "Vroomers",
    TEDClass = "Building",
    UnitName = "Caretaker",
    script = "caretakerscript.lua",
	icontype = "buildingconstructor",
--Unit limitations and properties
    Description = "Supports and repairs units. (10 buildpower)",
    MaxDamage = 550,
    idleTime = 300,
    idleAutoHeal = 0,
    RadarDistance = 0,
    SightDistance = 450,
    SoundCategory = "TANK",
    Upright = 0,
    floater = true,
	corpse = [[caretaker_dead]],
	sfxtypes             = {
	explosionGenerators = {
	[[custom:buildermuzzleflash]],
	},
   },
--Energy and metal related
    BuildCostEnergy = 160,
    BuildCostMetal = 160,
	Buildtime = 160,
	
--Size and Abilites
  MaxSlope = 33,
   FootprintX = 3,
   FootprintZ = 3,
   canSelfDestruct = false,

--Abilities
    CanAttack = 1,
    CanGuard = 1,
    CanMove = 0,
    CanPatrol = 1,
    CanStop = 1,
    LeaveTracks = 0,
    Reclaimable = 1,
    canSelfDestruct = 1,
    repairable = 1,
    
--building
Builder = true,
ShowNanoSpray = true,
CanBeAssisted = true,
workerTime = 10,
repairSpeed = 6.7,
buildDistance = 450,
terraformSpeed = 9001,

--Hitbox
collisionVolumeOffsets    =  "0 0 0",
collisionVolumeScales     =  "31 48 31",
collisionVolumeType       =  "box",

   
--Weapons and related
    BadTargetCategory = "NOTAIR",
	explodeAs = [[MediumBuildingExplosion]],
	selfDestructAs = [[MediumBuildingExplosion]],
    NoChaseCategory = "AIR",




}

return lowerkeys({ [unitName]  =  unitDef })