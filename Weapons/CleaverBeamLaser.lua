local weaponName = "BeamLaser"
weaponDef = {
	weaponType              = "BeamLaser",
	name                    = "Beam Laser",
	beamlaser               = 1,
	--physics / aiming--
	beamTime                = 0.1,
	lineOfSight             = true,
	minIntensity            = 1,      
	range                   = 350,
	reloadtime              = 0.1,
	sweepfire               = false,
	targetMoveError         = 0.1,
	turret                  = true,
	tolerance               = 5000,
	--damage--
	damage                  = {
		default = 15.5,        
		},
	areaOfEffect            = 0,
	craterBoost             = 0,
	craterMult              = 0,
	--apperance--	
	thickness               = 8,
	coreThickness           = 0.3,
	explosionGenerator      = [[NONE ATM]],
	soundStart = [[Weapons/IntenseLaser]],
	soundStartVolume = 4,
	largeBeamLaser          = true,
	laserFlareSize          = 2.5,
	avoidFeature			= false,
	renderType              = 0,
	rgbColor                = [[0.6 0.6 0.3]],
	explosionGenerator = [[custom:cleaverhit]],
	--soundStart              = "some sound file",
	--soundTrigger            = true,	
	--texture1                = [[largelaser]],
	--texture2                = [[flare]],
	--texture3                = [[flare]],
	--texture4                = [[smallflare]],		
	}
return lowerkeys({[weaponName] = weaponDef})