local weaponName = "FusionExplosion"
local weaponDef = {
explosionGenerator = [[custom:Geothermaldeath]],
soundhit = [[Explosions/bigboom]],
	soundhitVolume = 4,
damage                  = {
		default = 1250,        
		},
areaOfEffect = 325,
}
return lowerkeys({[weaponName] = weaponDef})