local weaponName="DualStunMissles"
local weaponDef={
name="Stun Missle",
weaponType=[[MissileLauncher]],

Accuracy=2000,

--Physic/flight path

range=280,
reloadtime=3.25,
weaponVelocity=680,
startVelocity=280,
weaponAcceleration=200,
flightTime=2.5,
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
paralyzeTime = 2,
paralyzer = true,
soundStart = [[Weapons/LightMissle_missile_fire]],
soundHit = [[Explosions/LightMissle_expl]],
soundStartVolume = 4,	  
		
----APPEARANCE
smokeTrail=false,
model="Rocket.s3o",
cegTag = [[StunburstRocket_trail]],
explosionGenerator = [[custom:stunburststunmissleflash]],

----TARGETING
turret=true,
CylinderTargetting=true,
avoidFeature=false,
avoidFriendly=true,


--commandfire=true,

----DAMAGE
damage={
default=60,
heavyarmor=1,
},
areaOfEffect=3,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})