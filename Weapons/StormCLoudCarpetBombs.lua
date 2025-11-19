local weaponName = "CarpetBombs"
local weaponDef = {
	      name                    = "Carpet Bombs",
	      weaponType              = [[AircraftBomb]],
	      --damage
		  damage = {
				default = 105,
				},	      
		  --physics
		  areaOfEffect			  = 140,
		  edgeEffectiveness       = 1,
		  weaponVelocity          = 1200,
		  reloadtime              = 25,
		  range                   = 500,
		  sprayAngle              = 8000,
	      tolerance               = 8000,
		  lineOfSight             = true,
 		  avoidfriendly 	= true,
		  avoidGround 		= true,
			
	      turret                  = true,
		  craterMult              = 0,
		  burst					  = 30,
		  burstrate 			  = 0.15,
		  avoidFeature			= false,
		  soundStart            = [[Weapons/bomb_drop]],
		  soundStartVolume        = 4,	
		  soundHit				= [[Weapons/bomb_hit]],
		  soundHitVolume		  = 4,
		  --apperance
		  rgbColor                = [[1 0.75 0.4]],		  	      
          size                    = 6,
		  explosionGenerator = [[custom:stormcloudflash]],
		  }
return lowerkeys({[weaponName] = weaponDef})
