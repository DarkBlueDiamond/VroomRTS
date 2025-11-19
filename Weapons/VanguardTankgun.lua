local weaponName = "VanguardDualPlasmaCannon"
local weaponDef = {
	      name                    = " Dual Plasma Gun",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 148,
				},	      
	      areaOfEffect            = 28,
		  --physics
		  weaponVelocity          = 265,
		  reloadtime              = 1.8,
		  range                   = 475,
		  sprayAngle              = 0,
		  myGravity 		  	  = 0.12,
		  lineOfSight             = false,
 		  avoidfriendly 	= true,
		  avoidGround 		= true,      
	      turret                  = true,
		  avoidFeature			= false,
		  craterMult              = 0,
		  soundStart = [[Weapons/plasma]],
		  soundHit = [[Weapons/Cannonhit]],
		  soundStartVolume = 4,
		  soundHitVolume = 4,	      
		  --apperance
		  rgbColor                = [[0.9 0.5 0.4]],		  	      
          size                    = 6,
	      stages                  = 20,
		  separation              = 1,
		  explosionGenerator = [[custom:ravagerflash]],
		  }
		
return lowerkeys({[weaponName] = weaponDef})