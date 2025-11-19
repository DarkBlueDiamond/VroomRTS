local weaponName = "MachineGun"
local weaponDef = {
	      name                    = "Machine Gun",
	      weaponType              = [[Cannon]],
	      --damage
		  damage = {
				default = 12,
				HeavyArmor = 1,
				areaOfEffect=0,
				},	      
		  --physics
		  weaponVelocity          = 500,
		  reloadtime              = 0.12,
		  range                   = 225,
		  sprayAngle              = 300,
	      tolerance               = 8000,
		  lineOfSight             = true,
 		  avoidfriendly 	= true,
		  avoidGround 		= true,      
	      turret                  = true,
		  avoidFeature			= false,
		  craterMult              = 0,
		  soundStart            = [[Weapons/MGun_emg]],
		  soundStartVolume        = 4,	      
		  --apperance
		  rgbColor                = [[1 0.95 0.4]],		  	      
          size                    = 4,
	      stages                  = 20,
		  separation              = 1,
		  explosionGenerator = [[custom:hunterflash]],
		  }
return lowerkeys({[weaponName] = weaponDef})