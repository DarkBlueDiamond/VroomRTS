local weaponName = "MediumExplosion"
local weaponDef = {
explosionGenerator = [[custom:Mediumdeath]],
soundhit = [[Explosions/med_explosion]],
	soundhitVolume = 4,
}
return lowerkeys({[weaponName] = weaponDef})