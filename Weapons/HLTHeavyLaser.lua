local weaponName = "HeavyLaser"
weaponDef = {
	weaponType              = "BeamLaser",
	name                    = "Heavy Laser",
	beamlaser               = 1,
	--physics / aiming--
	beamTime                = 0.1,
	lineOfSight             = true,
	minIntensity            = 1,      
	range                   = 700,
	reloadtime              = 1.6,
	sweepfire               = false,
	targetMoveError         = 0.1,
	turret                  = true,
	tolerance               = 5000,
	--damage--
	damage                  = {
		default = 320,        
		},
	areaOfEffect            = 0,
	craterBoost             = 0,
	craterMult              = 0,
	--apperance--	
	thickness               = 6,
	coreThickness           = 0.30,
	explosionGenerator      = [[custom:stars1]],
	largeBeamLaser          = true,
	laserFlareSize          = 2,
	renderType              = 0,
	rgbColor                = [[0.3 0.9 0.6]],
	soundStart = [[Weapons/Heavylaser]],
	soundStartVolume = 4,
	soundHit = [[Weapons/Laserhit]],
	soundHitVolume = 4,
	explosionGenerator = [[custom:hlthit]]
	--soundStart              = "some sound file",
	--soundTrigger            = true,	
	--texture1                = [[largelaser]],
	--texture2                = [[flare]],
	--texture3                = [[flare]],
	--texture4                = [[smallflare]],		
	}
return lowerkeys({[weaponName] = weaponDef})