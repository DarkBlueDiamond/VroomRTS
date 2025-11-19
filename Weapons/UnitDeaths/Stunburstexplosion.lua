local weaponName = "StunBurstExplosion"
local weaponDef = {
explosionGenerator = [[custom:Stunburstdeath]],
soundhit  = [[Explosions/small_explosion]],
	soundhitVolume = 3,
}
return lowerkeys({[weaponName] = weaponDef})