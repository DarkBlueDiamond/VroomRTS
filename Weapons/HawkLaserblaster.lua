local weaponName = "AALaserblatser"
weaponDef = {
	weaponType              = "LaserCannon",
	name                    = "AA Laser Blaster",
	beamlaser               = 0,
	--physics / aiming--
	duration                = 0.05,
	 weaponVelocity         = 1050,
	lineOfSight             = true,
	minIntensity            = 1,      
	range                   = 375,
	reloadtime              = 0.26,
	sweepfire               = false,
	targetMoveError         = 0.1,
	turret                  = true,
	tolerance               = 5000,
	hardStop				= true,
	--damage--
	damage                  = {
		default = 30,        
		},
	areaOfEffect            = 0,
	craterBoost             = 0,
	craterMult              = 0,
	--apperance--	
	thickness               = 0.75,
	coreThickness           = 0.3,
	largeBeamLaser          = true,
	laserFlareSize          = 2,
	renderType              = 0,
	rgbColor                = [[0.8 0.8 0.4]],
	soundStart = [[Weapons/LightLaser3]],
	soundStartVolume = 4,
	soundHit = [[Weapons/Laserhit]],
	soundHitVolume = 4,
	explosionGenerator = [[custom:hawkhit]],
	--soundStart              = "some sound file",
	--soundTrigger            = true,	
	--texture1                = [[largelaser]],
	--texture2                = [[flare]],
	--texture3                = [[flare]],
	--texture4                = [[smallflare]],		
	}
return lowerkeys({[weaponName] = weaponDef})