local weaponName = "LaserBlaster"
weaponDef = {
	weaponType              = "LaserCannon",
	name                    = "Laser Blaster",
	beamlaser               = 0,
	--physics / aiming--
	duration                = 0.25,
	 weaponVelocity         = 350,
	lineOfSight             = true,
	minIntensity            = 1,      
	range                   = 305,
	reloadtime              = 2.6,
	sweepfire               = false,
	targetMoveError         = 0.1,
	turret                  = true,
	tolerance               = 5000,
	hardStop				= true,
	--damage--
	damage                  = {
		default = 187,        
		},
	areaOfEffect            = 0,
	craterBoost             = 0,
	craterMult              = 0,
	--apperance--	
	thickness               = 3,
	coreThickness           = 0.6,
	explosionGenerator      = [[custom:stars1]],
	largeBeamLaser          = true,
	laserFlareSize          = 2,
	renderType              = 0,
	rgbColor                = [[1 0.2 0.2]],
	soundStart = [[Weapons/Lightlaser2]],
	soundStartVolume = 4,
	soundHit = [[Weapons/Laserhit]],
	soundHitVolume = 4,
	explosionGenerator = [[custom:lurkerhit]],
	--soundStart              = "some sound file",
	--soundTrigger            = true,	
	--texture1                = [[largelaser]],
	--texture2                = [[flare]],
	--texture3                = [[flare]],
	--texture4                = [[smallflare]],		
	}
return lowerkeys({[weaponName] = weaponDef})