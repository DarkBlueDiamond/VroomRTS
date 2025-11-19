local weaponName = "TwinBurstBlatser"
local weaponDef = {
	      name                    = "Twin Laser Blaster",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 40,
				},	      
		  --physics
		  areaOfEffect			  = 10,
		  weaponVelocity          = 600,
		  reloadtime              = 3.33,
		  range                   = 475,
			burst = 3,
			burstRate = 0.15,
			sprayAngle = 800,
	      tolerance               = 8000,
		  lineOfSight             = true,
 		  avoidfriendly 	= true,
		  avoidGround 		= true,      
	      turret                  = true,
		  avoidFeature			= false,
		  craterMult              = 0,      
		  --apperance
		  rgbColor                = [[0.8 0.8 0.4]],		  	      
          size                    = 1.5,
	      stages                  = 100,
		  separation              = 1,
		  --other
		soundStart = [[Weapons/LightLaser2]],
	soundStartVolume = 4,
	soundHit = [[Weapons/Laserhit]],
	soundHitVolume = 4,
	explosionGenerator = [[custom:harpyhit]],
		  }
return lowerkeys({[weaponName] = weaponDef})