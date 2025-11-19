local weaponName = "CutlassDualLaser"
weaponDef = {
	weaponType              = "BeamLaser",
	name                    = "Dual High Intesnity Laser",
	beamlaser               = 1,
	--physics / aiming--
	beamTime                = 0.75,
	lineOfSight             = true,
	minIntensity            = 1,      
	range                   = 260,
	reloadtime              = 3.5,
	sweepfire               = false,
	targetMoveError         = 0.1,
	turret                  = true,
	tolerance               = 5000,
	--damage--
	damage                  = {
		default = 245,        
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
	rgbColor                = [[1 0.2 0.2]],
	explosionGenerator = [[custom:cutlasshit]],
	--soundStart              = "some sound file",
	--soundTrigger            = true,	
	--texture1                = [[largelaser]],
	--texture2                = [[flare]],
	--texture3                = [[flare]],
	--texture4                = [[smallflare]],		
	}
return lowerkeys({[weaponName] = weaponDef})