local weaponName="DualMissles"
local weaponDef={
name="Missle",
weaponType=[[MissileLauncher]],

Accuracy=2000,

--Physic/flight path

range=260,
reloadtime=3.25,
weaponVelocity=680,
startVelocity=280,
weaponAcceleration=200,
flightTime=0.9,
BurnBlow=0,
FixedLauncher=true,
dance=0,
wobble=0,
tolerance=32000,
tracks=true,
Turnrate=32000,
collideFriendly=true,
burst = 2,
burstRate = 0.25,
soundStart = [[Weapons/LightMissle_missile_fire]],
soundHit = [[Explosions/LightMissle_expl]],
soundStartVolume = 4,	  
		
----APPEARANCE
smokeTrail=false,
model="Rocket.s3o",
cegTag = [[StunburstRocket_trail]],
explosionGenerator = [[custom:flowmissleflash]],

----TARGETING
turret=true,
CylinderTargetting=true,
avoidFeature=false,
avoidFriendly=true,


--commandfire=true,

----DAMAGE
damage={
default=25,
heavyarmor=1,
},
areaOfEffect=3,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})