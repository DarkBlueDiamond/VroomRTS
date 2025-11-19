local weaponName = "BBExplosion"
local weaponDef = {
explosionGenerator = [[custom:BBdeath]],
	soundhit = [[Explosions/bigboom.wav]],
	soundhitVolume = 15,
damage                  = {
		default = 2000,        
		},
areaOfEffect = 800,
}
return lowerkeys({[weaponName] = weaponDef})
