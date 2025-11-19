local weaponName = "PhaseBurst"
local weaponDef = {
	      name                    = "Phase Burst (Turn on repeat before fire for maxium damage!)",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 672,
				HeavyArmor = 1,
				},	      
	      areaOfEffect            = 100,
		  --physics
		  weaponVelocity          = 750,
		  accuracy                = 1600,
		  edgeEffectiveness      = 1,
		  waterWeapon 			  = 1,
		  reloadtime              = 0.2,
		  stockpile				  = true,
		  stockpileTime			  = 4,
		  energyPerShot		      = 600,
		  metalPerShot			  = 60,
		  range                   = 465,
		  commandFire 			= true,
		  sprayAngle              = 0,
		  myGravity 		  	  = 0.2,
		  lineOfSight             = false,
 		  avoidfriendly 	= true,
		  avoidGround 		= true,      
	      turret                  = true,
		  avoidFeature			= false,
		  craterMult              = 0,
		  soundStart = "PhaseGunShot",
		  soundHit = "PhaseGunBlast",
		  soundStartVolume = 4,
		  soundHitVolume = 4,	      
		  --apperance
		  rgbColor                = [[0 0.5 0.75]],      
          size                    = 8,
	      stages                  = 26,
		  separation              = 1,
		  explosionGenerator = [[custom:alphaburstflash]],
		  }
		
return lowerkeys({[weaponName] = weaponDef})
