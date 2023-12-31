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
		  range                   = 225,
		  sprayAngle              = 3000,
	      tolerance               = 8000,
		  lineOfSight             = true,
 		  avoidfriendly 	= true,
		  avoidGround 		= true,      
	      turret                  = true,
		  craterMult              = 0,
		  burstRate               = 0,
		  projectiles 			  = 12,
		  soundStart = [[Weapons/shotgun]],
		  soundStartVolume = 3,
		  --apperance
		  rgbColor                = [[1 0.95 0.4]],		  	      
          size                    = 2,
	      stages                  = 24,
		  separation              = 1,
		  explosionGenerator = [[custom:skeeterflash]],
		  }
		
return lowerkeys({[weaponName] = weaponDef})