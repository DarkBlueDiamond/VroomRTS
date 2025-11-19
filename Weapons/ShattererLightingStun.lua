local weaponName = "ShattererLightningStun"
weaponDef = {
	weaponType              = "LightningCannon",
	name                    = "Shatter Gun (Ground only))",
	beamlaser               = 1,
	--physics / aiming--
	beamTTL 				= 16,
	range                   = 320,
	reloadtime              = 0.6,
	targetMoveError         = 0.1,
	turret                  = true,
	paralyzeTime = 2.5,
	paralyzer = true,
	--damage--
	damage                  = {
		default = 96,        
		},
	areaOfEffect            = 72,
	craterBoost             = 0,
	craterMult              = 0,
	edgeEffectiveness       = 1,
	--apperance--	
	thickness               = 8,
	soundStart = [[Weapons/lightning1]],
	avoidFeature			= false,
	soundStartVolume = 4,
	rgbColor                = [[0.35 0.6 1]],
	explosionGenerator = [[custom:shattererhit]]
--texture1                = [[largelaser]],
	--texture2                = [[flare]],
	--texture3                = [[flare]],
	--texture4                = [[smallflare]],	
	}
return lowerkeys({[weaponName] = weaponDef})