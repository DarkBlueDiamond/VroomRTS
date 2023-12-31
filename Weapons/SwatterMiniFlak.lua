local weaponName = "SwatterQuadMiniFlak"
local weaponDef = {
	      name                    = "Mini Quad Flak Cannon",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 14.6, --18.8
				},	      
		  --physics
		  areaOfEffect 			  = 6,
		  weaponVelocity          = 1000,
		  reloadtime              = 0.08,
		  range                   = 675,
		  accuracy                = 525, --735
	      tolerance               = 8000,
		  lineOfSight             = true,
 		  avoidfriendly 	= true,
		  avoidGround 		= true,      
	      turret                  = true,
		  canAttackGround		  = false,
		  craterMult              = 0,
		  soundStart            = [[Weapons/Swatter_emg]],
		  soundStartVolume        = 4,	      
		  --apperance
		  rgbColor                = [[0.85 0.75 0.4]],		  	      
          size                    = 2,
	      stages                  = 10,
		  separation              = 0.8,
		  explosionGenerator = [[custom:swatterflash]],
		  }
return lowerkeys({[weaponName] = weaponDef})