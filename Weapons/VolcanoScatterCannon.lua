local weaponName = "VolcanoScatterCannon"
local weaponDef = {
	      name                    = "Volcano bits",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 650,
				HeavyArmor = 1,
				},	      
		  --physics
		  weaponVelocity          = 2050, --1600
		  reloadtime              = 10,
		  range                   = 25000,
		  accuracy                = 0,
		  sprayAngle              = 750,
	      tolerance               = 8000,
		  lineOfSight             = true,
 		  avoidfriendly 	= true,
		  avoidGround 		= true, 
		  areaOfEffect			  = 100,	
		  edgeEffectiveness       = 0.5,		  
	      turret                  = true,
		  avoidFeature			= false,
		  energyPerShot			  = 500,
		  projectiles 			  = 40,
		  craterMult              = 2.5,
		  myGravity 		  	  = 0.45,
		  soundStart            = [[Weapons/bb_fire]],
		  soundStartVolume        = 4,
		  soundHit = [[Weapons/bb_hit]],
		  soundHitVolume        = 4,	      
		  --apperance
		  rgbColor                = [[0.8 0.65 0.4]],		  	      
          size                    = 10,
	      stages                  = 20,
		  separation              = 1,
		  explosionGenerator = [[custom:volcanoflash2]],
		  }
return lowerkeys({[weaponName] = weaponDef})
