local weaponName = "MediumAirExplosion"
local weaponDef = {
explosionGenerator = [[custom:Mediumairdeath]],
soundhit = [[Explosions/med_explosion]],
	soundhitVolume = 4,
}
return lowerkeys({[weaponName] = weaponDef})