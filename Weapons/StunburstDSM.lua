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
flightTime=0.9,
BurnBlow=0,
FixedLauncher=true,
dance=0,
wobble=0,
tolerance=64000,
tracks=true,
Turnrate=64000,
collideFriendly=true,
burst = 2,
burstRate = 0.25,
paralyzeTime = 2.5,
paralyzer = true,
soundStart = [[Weapons/LightMissle_missile_fire]],
soundHit = [[Weapons/StunMissle_Hit]],
soundStartVolume = 4,	  
		
----APPEARANCE
smokeTrail=false,
model="Rocket.s3o",
cegTag = [[SmallStunRocket_trail]],
explosionGenerator = [[custom:stunburststunmissleflash]],

----TARGETING
turret=true,
CylinderTargetting=true,
avoidFeature=false,
avoidFriendly=true,


--commandfire=true,

----DAMAGE
damage={
default=80,
heavyarmor=1,
},
areaOfEffect=3,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})
