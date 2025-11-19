local weaponName="Rocket"
local weaponDef={
name="Rocket",
weaponType=[[MissileLauncher]],

Accuracy = 0,

--Physic/flight path
range=560,
reloadtime=3.2,
weaponVelocity=234.5,
startVelocity=167.5,
weaponAcceleration=200,
flightTime=3.5,
BurnBlow=0,
FixedLauncher=false,
dance=0,
wobble=0,
tracks=false,
Turnrate=2200,
collideFriendly=true,
avoidfriendly 	= true,
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
default=185,
heavyarmor=1,
},
areaOfEffect=12,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})