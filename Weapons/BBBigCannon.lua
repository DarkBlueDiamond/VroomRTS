local weaponName = "BBBigCannon"
local weaponDef = {
	      name                    = "Big Cannon",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 1750,
				HeavyArmor = 1,
				},	      
		  --physics
		  weaponVelocity          = 1450,
		  reloadtime              = 10,
		  range                   = 6000,
		  accuracy                = 650,
	      tolerance               = 8000,
		  lineOfSight             = true,
 		  avoidfriendly 	= true,
		  avoidGround 		= true, 
		  areaOfEffect			  = 175,	
		  edgeEffectiveness       = 0.5,		  
	      turret                  = true,
		  avoidFeature			= false,
		  energyPerShot			  = 300,
		  myGravity 		  	  = 0.20,
		  soundStart            = [[Weapons/bb_fire]],
		  soundStartVolume        = 4,
		  soundHit = [[Weapons/bb_hit]],
		  soundHitVolume        = 4,	      
		  --apperance
		  rgbColor                = [[1 0.95 0.4]],		  	      
          size                    = 20,
	      stages                  = 150,
		  separation              = 1,
		  explosionGenerator = [[custom:bbflash]],
		  }
return lowerkeys({[weaponName] = weaponDef})
