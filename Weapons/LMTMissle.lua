local weaponName="LMTMissle"
local weaponDef={
name="Missle",
weaponType=[[MissileLauncher]],

Accuracy=2000,

--Physic/flight path
range=640,
reloadtime=1.4,
weaponVelocity=680,
startVelocity=280,
weaponAcceleration=200,
flightTime=2.5,
BurnBlow=0,
FixedLauncher=true,
dance=0,
wobble=0,
tolerance=16000,
tracks=true,
Turnrate=16000,
collideFriendly=true,
soundStart = [[Weapons/LightMissle_missile_fire]],
soundHit = [[Explosions/LightMissle_expl]],
soundStartVolume = 4,
cegTag = [[Rocket_trail]],
explosionGenerator = [[custom:genericmissleflash]],
----APPEARANCE
smokeTrail=false,
model="Rocket.s3o",


----TARGETING
turret=true,
CylinderTargetting=true,
avoidFeature=false,
avoidFriendly=true,


--commandfire=true,

----DAMAGE
damage={
default=75,
heavyarmor=1,
},
areaOfEffect=12,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})