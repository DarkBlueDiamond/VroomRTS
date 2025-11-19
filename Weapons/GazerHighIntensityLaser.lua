local weaponName = "GazerHighIntensityLaser"
weaponDef = {
	weaponType              = "BeamLaser",
	name                    = "High Intensity Laser (Ground only)",
	beamlaser               = 1,
	--physics / aiming--
	beamTime                = 1,
	lineOfSight             = true,
	minIntensity            = 1,      
	range                   = 1000,
	reloadtime              = 8.5,
	sweepfire               = false,
	targetMoveError         = 0.1,
	turret                  = true,
	tolerance               = 5000,
	--damage--
	damage                  = {
		default = 850,        
		},
	areaOfEffect            = 0,
	craterBoost             = 0,
	craterMult              = 0,
	--apperance--	
	thickness               = 9,
	coreThickness           = 0.4,
	soundStart = [[Weapons/Heavylaser2]],
	soundStartVolume = 4,
	largeBeamLaser          = true,
	avoidFeature			= false,
	laserFlareSize          = 2.5,
	renderType              = 0,
	rgbColor                = [[0.7 0 1]],
	explosionGenerator = [[custom:gazerhit]],
	--soundStart              = "some sound file",
	--soundTrigger            = true,	
	--texture1                = [[largelaser]],
	--texture2                = [[flare]],
	--texture3                = [[flare]],
	--texture4                = [[smallflare]],		
	}
return lowerkeys({[weaponName] = weaponDef})
