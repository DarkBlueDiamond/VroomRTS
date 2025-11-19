local weaponName = "VolcanoPreciseCannon"
local weaponDef = {
	      name                    = "Volcano Cannon",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 3000,
				HeavyArmor = 1,
				},	      
		  --physics
		  weaponVelocity          = 2050, --1600
		  reloadtime              = 10,
		  range                   = 25000,
		  accuracy                = 0,
	      tolerance               = 8000,
		  lineOfSight             = true,
 		  avoidfriendly 	= true,
		  avoidGround 		= true, 
		  areaOfEffect			  = 200,	
		  edgeEffectiveness       = 1,		  
	      turret                  = true,
		  avoidFeature			= false,
		  energyPerShot			  = 500,
		  craterMult              = 20,
		  myGravity 		  	  = 0.45,
		  soundStart            = [[Weapons/bb_fire]],
		  soundStartVolume        = 4,
		  soundHit = [[Weapons/bb_hit]],
		  soundHitVolume        = 4,	      
		  --apperance
		  rgbColor                = [[0.8 0.65 0.4]],		  	      
          size                    = 35,
	      stages                  = 180,
		  separation              = 1,
		  explosionGenerator = [[custom:volcanoflash1]],
		  }
return lowerkeys({[weaponName] = weaponDef})
