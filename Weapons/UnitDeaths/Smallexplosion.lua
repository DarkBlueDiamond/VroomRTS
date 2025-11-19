local weaponName = "SmallExplosion"
local weaponDef = {
explosionGenerator = [[custom:Smalldeath]],
soundhit = [[Explosions/small_explosion]],
	soundhitVolume = 4,
}
return lowerkeys({[weaponName] = weaponDef})