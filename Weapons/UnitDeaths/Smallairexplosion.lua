local weaponName = "SmallAirExplosion"
local weaponDef = {
explosionGenerator = [[custom:Smallairdeath]],
soundhit = [[Explosions/small_explosion]],
	soundhitVolume = 4,
}
return lowerkeys({[weaponName] = weaponDef})