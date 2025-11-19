local weaponName="RiptideAmphMissle"
local weaponDef={
name="Amph Missle (ground/sub only)",
weaponType=[[MissileLauncher]],

Accuracy = 0,

--Physic/flight path
range=245,
reloadtime = 1.5,
weaponVelocity=200,
startVelocity=200,
weaponAcceleration=200,
flightTime=4,
BurnBlow=0,
FixedLauncher=false,
dance=0,
wobble=0,
tracks = true,
Turnrate= 16000,
tolerance = 16000,
collideFriendly = true,
avoidfriendly 	= true,
waterWeapon = true,
soundStart = [[Weapons/Missle]],
soundHit = [[Weapons/Missle_hit]],
soundStartVolume = 4,
soundHitVolume = 4,
cegTag = [[Rocket_trail]],
explosionGenerator = [[custom:genericmissleflash]],
----APPEARANCE
smokeTrail= false,--uses default trail
model="Rocket.s3o",

----TARGETING
turret=true,
CylinderTargetting=true,
avoidFeature=false,
avoidFriendly=true,


--commandfire=true,

----DAMAGE
damage={
default=105,
},
areaOfEffect=16,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})