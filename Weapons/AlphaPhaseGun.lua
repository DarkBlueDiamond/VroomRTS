local weaponName = "PhaseGun"
local weaponDef = {
	      name                    = "Phase Gun",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 468,
				HeavyArmor = 1,
				},	      
	      areaOfEffect            = 125,
		  --physics
		  weaponVelocity          = 675,
		  edgeEffectiveness      = 0.75,
		  waterWeapon 			  = 1,
		  reloadtime              = 1.4,
		  energyPerShot 	      = 164,
		  range                   = 385,
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
		  rgbColor                = [[0 0.6 0.6]],		  	      
          size                    = 6,
	      stages                  = 24,
		  separation              = 1,
		  explosionGenerator = [[custom:alphaflash]],
		  }
		
return lowerkeys({[weaponName] = weaponDef})
