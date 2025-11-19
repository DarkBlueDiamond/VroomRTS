local weaponName="AlphaAAMissle"
local weaponDef={
name="AAMissle (Keep unitoff to activate.)",
weaponType=[[MissileLauncher]],

Accuracy=2000,

--Physic/flight path
range=725,
reloadtime=0.5,
weaponVelocity=875,
startVelocity=320,
energyPerShot= 33,
weaponAcceleration=200,
flightTime=4,
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
default=148,
},
areaOfEffect=40,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})
