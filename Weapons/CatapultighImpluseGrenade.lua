local weaponName = "CatapultHighImpluseGrenade"
local weaponDef = {
	      name                    = "Triple High Impluse grenade (ground only)",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 41,
				},	      
	      areaOfEffect            = 140,
		  --physics
		  weaponVelocity          = 550,
		  reloadtime              = 3.2,
		  edgeEffectiveness       = 1,
		  range                   = 900,
		  sprayAngle              = 2000,
		  accuracy 				  = 0,
		  movingAccuracy          = 2000,
		  myGravity 		  	  = 0.15,
		  groundBounce 			  = true,
		  numBounce 			  = 3,
		  lineOfSight             = false,
		  bounceSlip 			  = 0.23,
		  bounceRebound 		  = 0.4,
		  burst = 3,
		  burstrate = 0,
 		  avoidfriendly 	= true,
		  avoidGround 		= true,      
	      turret                  = true,
		  craterMult              = 0,
		  soundStart = [[Weapons/Arty]],
		  soundHit = [[Explosions/grenade_explosion]],
		  soundStartVolume = 4,
		  soundHitVolume = 4,		
		avoidFeature			= false,		  
		  --apperance
		  rgbColor                = [[1 0.8 0.4]],		  	      
          size                    = 4,
	      stages                  = 24,
		  separation              = 1,
		  explosionGenerator = [[custom:Catapultflash]],
		  }
		
return lowerkeys({[weaponName] = weaponDef})
