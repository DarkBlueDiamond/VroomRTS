local weaponName = "LightLaser"
weaponDef = {
	weaponType              = "BeamLaser",
	name                    = "Light Laser",
	beamlaser               = 1,
	--physics / aiming--
	beamTime                = 0.1,
	lineOfSight             = true,
	minIntensity            = 1,      
	range                   = 500,
	reloadtime              = 0.1,
	sweepfire               = false,
	targetMoveError         = 0.1,
	turret                  = true,
	tolerance               = 5000,
	--damage--
	damage                  = {
		default = 9,        
		},
	areaOfEffect            = 0,
	craterBoost             = 0,
	craterMult              = 0,
	--apperance--	
	thickness               = 5,
	coreThickness           = 0.25,
	explosionGenerator      = [[NONE ATM]],
	soundStart = [[Weapons/LightLaser]],
	soundStartVolume = 4,	  
	largeBeamLaser          = true,
	avoidFeature			= false,
	laserFlareSize          = 2,
	renderType              = 0,
	rgbColor                = [[0.8 0.8 0.4]],
	explosionGenerator = [[custom:llthit]],
	--soundStart              = "some sound file",
	--soundTrigger            = true,	
	--texture1                = [[largelaser]],
	--texture2                = [[flare]],
	--texture3                = [[flare]],
	--texture4                = [[smallflare]],		
	}
return lowerkeys({[weaponName] = weaponDef})
