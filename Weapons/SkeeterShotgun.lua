local weaponName = "Shotgun"
local weaponDef = {
	      name                    = "Shotgun",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 8,
				HeavyArmor = 1,
				areaOfEffect=1,
				},	      
		  --physics
		  weaponVelocity          = 500,
		  reloadtime              = 0.75,
		  range                   = 210,
		  sprayAngle              = 1500, --1000 and 1500
	      tolerance               = 8000,
		  lineOfSight             = true,
 		  avoidfriendly 	= true,
		  avoidGround 		= true,      
	      turret                  = true,
		  craterMult              = 0,
		  burstRate               = 0,
		  projectiles 			  = 13,
		  soundStart = [[Weapons/shotgun]],
		  avoidFeature			= false,
		  soundStartVolume = 3,
		  --apperance
		  rgbColor                = [[1 0.95 0.4]],		  	      
          size                    = 2,
	      stages                  = 24,
		  separation              = 1,
		  explosionGenerator = [[custom:skeeterflash]],
		  }
		
return lowerkeys({[weaponName] = weaponDef})