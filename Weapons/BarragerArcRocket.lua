local weaponName="BarragerLongRangeArcRocket"
local weaponDef={
name="Long range Arc Rocket (ground only)",
weaponType=[[MissileLauncher]],

Accuracy = 0,

--Physic/flight path
range=1400,
reloadtime = 1.5,
weaponVelocity = 550,
startVelocity = 200,
weaponAcceleration=40,
flightTime=8,
BurnBlow=0,
FixedLauncher=false,
dance=0.1,
wobble=0.1,
tracks=false,
Turnrate=250,
collideFriendly = true,
avoidfriendly = true,
trajectoryHeight = 0.8,
Accuracy  = 700,
soundStart = [[Weapons/hightpitch_rocket]],
soundHit = [[Explosions/LightMissle_expl]],
soundStartVolume = 4,
cegTag = [[Rocket_trail]],
explosionGenerator = [[custom:barragermissleflash]],	  
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
default=185,
heavyarmor=1,
},
areaOfEffect=44,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})