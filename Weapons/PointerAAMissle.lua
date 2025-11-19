local weaponName="PointerAAMissle"
local weaponDef={
name="AAMissle",
weaponType=[[MissileLauncher]],

Accuracy=2000,

--Physic/flight path
range=840,
reloadtime=2.4,
weaponVelocity=875,
startVelocity=320,
weaponAcceleration=200,
flightTime=2.5,
BurnBlow=0,
FixedLauncher=false,
dance=0,
wobble=0,
tolerance=16000,
tracks=true,
Turnrate=16000,
collideFriendly=true,
soundStart = [[Weapons/LightMissle_missile_fire]],
soundHit = [[Explosions/LightMissle_expl]],
soundStartVolume = 4,
cegTag = [[AAMissleTrail]],
explosionGenerator = [[custom:pointermissleflash]],
----APPEARANCE
smokeTrail=false,
model="Rocket.s3o",


----TARGETING
turret=true,
CylinderTargetting=true,
avoidFeature=false,
avoidFriendly=true,



----DAMAGE
damage={
default=96,
},
areaOfEffect=4,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})