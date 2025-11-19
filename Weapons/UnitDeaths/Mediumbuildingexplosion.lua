local weaponName = "MediumBuildingExplosion"
local weaponDef = {
explosionGenerator = [[custom:Mediumdeath]],
soundhit = [[Explosions/med_explosion]],
	soundhitVolume = 4,
damage = {
		default = 120,        
		},
areaOfEffect = 45,
}
return lowerkeys({[weaponName] = weaponDef})