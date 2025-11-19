local weaponName = "SmallBuildingExplosion"
local weaponDef = {
explosionGenerator = [[custom:Smalldeath]],
soundhit = [[Explosions/small_explosion]],
	soundhitVolume = 4,
damage = {
		default = 80,        
		},
areaOfEffect = 33,
}
return lowerkeys({[weaponName] = weaponDef})