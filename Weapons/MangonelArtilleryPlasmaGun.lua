local weaponName = "ArtilleryPlasmaGun"
local weaponDef = {
	      name                    = "Artillery Plasma Gun",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 360,
				HeavyArmor = 1,
				},	      
	      areaOfEffect            = 35,
		  --physics
		  weaponVelocity          = 200,
		  reloadtime              = 3.6,
		  range                   = 840,
		  sprayAngle              = 0,
		  accuracy 				  = 10,
		  movingAccuracy          = 3000,
		  myGravity 		  	  = 0.05,
		  lineOfSight             = false,
 		  avoidfriendly 	= true,
		  avoidGround 		= true,      
	      turret                  = true,
		  craterMult              = 0,
		  soundStart = [[Weapons/Arty]],
		  soundHit = [[Weapons/Artyhit]],
		  soundStartVolume = 4,
		  soundHitVolume = 4,		
		avoidFeature			= false,		  
		  --apperance
		  rgbColor                = [[1 0.8 0.4]],		  	      
          size                    = 5.5,
	      stages                  = 24,
		  separation              = 1,
		  explosionGenerator = [[custom:mangonelflash]],
		  }
		
return lowerkeys({[weaponName] = weaponDef})