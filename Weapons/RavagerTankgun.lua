local weaponName = "PlasmaGun"
local weaponDef = {
	      name                    = "Plasma Gun",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 126,
				HeavyArmor = 1,
				},	      
	      areaOfEffect            = 9,
		  --physics
		  weaponVelocity          = 250,
		  reloadtime              = 2.4,
		  range                   = 295,
		  sprayAngle              = 0,
		  myGravity 		  	  = 0.13,
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
		  rgbColor                = [[1 0.5 0.5]],		  	      
          size                    = 4,
	      stages                  = 20,
		  separation              = 1,
		  explosionGenerator = [[custom:ravagerflash]],
		  }
		
return lowerkeys({[weaponName] = weaponDef})