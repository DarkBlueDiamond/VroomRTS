local weaponName = "FactoryExplosion"
local weaponDef = {
explosionGenerator = [[custom:Factorydeath]],
soundhit = [[Explosions/med_explosion]],
	soundhitVolume = 4,
damage                  = {
		default = 750,        
		},
areaOfEffect = 350,
}
return lowerkeys({[weaponName] = weaponDef})