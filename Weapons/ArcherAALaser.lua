local weaponName = "ArcherAALaser"
weaponDef = {
	weaponType              = "BeamLaser",
	name                    = "Rapid AA Laser",
	beamlaser               = 1,
	beamburst  				= true,
	--physics / aiming--
	beamTime                = 0.1,
	lineOfSight             = true,
	minIntensity            = 1,      
	range                   = 750,
	reloadtime              = 0.5,
	sweepfire               = false,
	targetMoveError         = 0.1,
	turret                  = true,
	tolerance               = 5000,
	--damage--
	damage                  = {
		default = 30,        
		},
	areaOfEffect            = 0,
	craterBoost             = 0,
	craterMult              = 0,
	--apperance--	
	thickness               = 5,
	coreThickness           = 0.1,
	explosionGenerator      = [[custom:stars1]],
	soundStart = [[Weapons/rapid_laser]],
	soundStartVolume = 4,
	largeBeamLaser          = true,
	avoidFeature			= false,
	laserFlareSize          = 2,
	renderType              = 0,
	rgbColor                = [[0.8 0.6 0.4]],
	--soundStart              = "some sound file",
	--soundTrigger            = true,	
	--texture1                = [[largelaser]],
	--texture2                = [[flare]],
	--texture3                = [[flare]],
	--texture4                = [[smallflare]],	
	explosionGenerator = [[custom:archerhit]]	
	}
return lowerkeys({[weaponName] = weaponDef})