local weaponName="ArcQuadRocket"
local weaponDef={
name="Arc Quad Rocket",
weaponType=[[MissileLauncher]],

Accuracy = 0,

--Physic/flight path
range=480,
reloadtime = 4,
weaponVelocity=300,
startVelocity=200,
weaponAcceleration=200,
flightTime=3.5,
BurnBlow=0,
FixedLauncher=false,
dance=0,
wobble=0,
tracks=false,
Turnrate=2200,
collideFriendly = true,
avoidfriendly = true,
burst = 4,
burstRate = 0.25,
trajectoryHeight = 0.75,
sprayAngle = 4000,
soundStart = [[Weapons/LightMissle_missile_fire]],
soundHit = [[Explosions/LightMissle_expl]],
soundStartVolume = 4,
cegTag = [[Rocket_trail]],
explosionGenerator = [[custom:flowmissleflash]],	  
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
default=45,
heavyarmor=1,
},
areaOfEffect=6,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})