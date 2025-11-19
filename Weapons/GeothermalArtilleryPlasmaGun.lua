local weaponName = "GeothermalArtilleryPlasmaGun"
local weaponDef = {
	      name                    = "Dual Plasma Cannon",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 600,
				HeavyArmor = 1,
				},	      
		  --physics
		  weaponVelocity          = 600,
		  reloadtime              = 6.5,
		  range                   = 1750,
		  accuracy                = 500,
	      tolerance               = 8000,
		  lineOfSight             = true,
 		  avoidfriendly 	= true,
		  avoidGround 		= true, 
		  areaOfEffect			  = 133,
		  edgeEffectiveness       = 0.5,		  
	      turret                  = true,
		  avoidFeature			= false,
		  burst					  = 2,
		  burstrate				  = 0.25,
		  myGravity 		  	  = 0.20,
		  soundStart            = [[Weapons/bb_fire]],
		  soundStartVolume        = 4,
		  soundHit = [[Weapons/bb_hit]],
		  soundHitVolume        = 4,	      
		  --apperance
		  rgbColor                = [[1 0.95 0.4]],		  	      
          size                    = 10,
	      stages                  = 60,
		  separation              = 1,
		  explosionGenerator = [[custom:geothermalflash]],
		  }
return lowerkeys({[weaponName] = weaponDef})
