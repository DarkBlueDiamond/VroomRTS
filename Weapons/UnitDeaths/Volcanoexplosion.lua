local weaponName = "volcanoExplosion"
local weaponDef = {
explosionGenerator = [[custom:volcanodeath]],
	soundhit = [[Explosions/bigboom.wav]],
	soundhitVolume = 15,
damage                  = {
		default = 3000,        
		},
areaOfEffect = 900,
}
return lowerkeys({[weaponName] = weaponDef})
