local weaponName = "AlphaExplosion"
local weaponDef = {
explosionGenerator = [[custom:Geothermaldeath]],
soundhit = [[Explosions/bigboom]],
	soundhitVolume = 4,
damage                  = {
		default = 2500,        
		},
areaOfEffect = 350,
}
return lowerkeys({[weaponName] = weaponDef})
