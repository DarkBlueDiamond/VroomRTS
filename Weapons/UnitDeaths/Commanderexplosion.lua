local weaponName = "CommanderExplosion"
local weaponDef = {
explosionGenerator = [[custom:Commanderdeath]],
	soundhit = [[Explosions/bigboom]],
	soundStartVolume = 4,
damage                  = {
		default = 750,        
		},
areaOfEffect = 300,
}
return lowerkeys({[weaponName] = weaponDef})