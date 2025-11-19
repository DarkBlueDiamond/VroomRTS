local weaponName = "StingRayFastLightingStun"
weaponDef = {
	weaponType              = "LightningCannon",
	name                    = "Lightning Beam (sub/ship only, can hit some but not all hovers)",
	beamlaser               = 1,
	--physics / aiming--
	beamTTL 				= 16,
	range                   = 225,
	reloadtime              = 0.1,
	targetMoveError         = 0.1,
	turret                  = true,
	paralyzeTime = 1.5,
	paralyzer = true,
	waterWeapon = true,
	cylinderTargeting = 128,
	--damage--
	damage                  = {
		default = 11,        
		},
	areaOfEffect            = 0,
	craterBoost             = 0,
	craterMult              = 0,
	--apperance--	
	thickness               = 2,
	soundStart = [[Weapons/lightning1]],
	soundStartVolume = 4,
	avoidFeature			= false,
	rgbColor                = [[0.35 0.6 1]],
	explosionGenerator = [[custom:stingrayhit]]
--texture1                = [[largelaser]],
	--texture2                = [[flare]],
	--texture3                = [[flare]],
	--texture4                = [[smallflare]],	
	}
return lowerkeys({[weaponName] = weaponDef})