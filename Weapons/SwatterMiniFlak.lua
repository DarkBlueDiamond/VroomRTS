local weaponName = "SwatterQuadMiniFlak"
local weaponDef = {
	      name                    = "Mini Quad Flak Cannon",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 11.3,
				},	      
		  --physics
		  areaOfEffect 			  = 164,
		  weaponVelocity          = 1350,
		  reloadtime              = 0.22,
		  range                   = 675,
		  accuracy                = 0, --735 --350
	      tolerance               = 8000,
		  edgeEffectiveness       = 0.25,
		  lineOfSight             = true,
 		  avoidfriendly 	= true,
		  avoidGround 		= true,      
	      turret                  = true,
		  canAttackGround		  = false,
		  craterMult              = 0,
		  soundStart            = [[Weapons/Swatter_emg]],
		  avoidFeature			= false,
		  selfExplode			= true,
		  soundStartVolume        = 4,	      
		  --apperance
		  rgbColor                = [[0.85 0.75 0.4]],		  	      
          size                    = 3.25,
	      stages                  = 14,
		  separation              = 2,
		  explosionGenerator = [[custom:swatterflash]],
		  }
return lowerkeys({[weaponName] = weaponDef})