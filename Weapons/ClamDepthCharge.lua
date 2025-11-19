local weaponName="ClamDepthcharges"
local weaponDef={
name="Depth Charges (water only)",
weaponType=[[TorpedoLauncher]],

Accuracy = 0,

--Physic/flight path
range=300,
reloadtime = 2.5,
weaponVelocity=300,
startVelocity=300,
weaponAcceleration=300,
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
subMissile = true,
burst = 4,
burstRate = 0.25,
soundStart = [[Weapons/depthcharge]],
soundHit = [[Explosions/underwater_explosion]],
soundStartVolume = 4,
soundHitVolume = 4,
explosionGenerator = [[custom:genericmissleflash]],
----APPEARANCE
smokeTrail= false,--uses default trail
model="Depthcharge.s3o",

----TARGETING
turret=true,
CylinderTargetting=true,
avoidFeature=false,
avoidFriendly=true,


--commandfire=true,

----DAMAGE
damage={
default=18,
},
areaOfEffect=6,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})