local weaponName = "TwinLaserBurstBlatser"
weaponDef = {
	weaponType              = "LaserCannon",
	name                    = "Twin Laser Blaster",
	beamlaser               = 0,
	--physics / aiming--
	duration                = 0.05,
	 weaponVelocity         = 1050,
	lineOfSight             = true,
	minIntensity            = 1,      
	range                   = 475,
	reloadtime              = 3.33, --2.35
	sweepfire               = false,
	targetMoveError         = 0.1,
	turret                  = true,
	tolerance               = 5000,
	hardStop				= true,
	burst = 3,
	burstRate = 0.15,
	sprayAngle = 800,
	--damage--
	damage                  = {
		default = 40,        
		},
	areaOfEffect            = 10,
	craterBoost             = 0,
	craterMult              = 0,
	--apperance--	
	thickness               = 0.75,
	coreThickness           = 0.3,
	largeBeamLaser          = true,
	avoidFeature			= false,
	laserFlareSize          = 2,
	renderType              = 0,
	rgbColor                = [[0.8 0.8 0.4]],
	soundStart = [[Weapons/LightLaser2]],
	soundStartVolume = 4,
	soundHit = [[Weapons/Laserhit]],
	soundHitVolume = 4,
	explosionGenerator = [[custom:harpyhit]],
	--soundStart              = "some sound file",
	--soundTrigger            = true,	
	--texture1                = [[largelaser]],
	--texture2                = [[flare]],
	--texture3                = [[flare]],
	--texture4                = [[smallflare]],		
	}
return lowerkeys({[weaponName] = weaponDef})