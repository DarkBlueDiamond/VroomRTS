local weaponName="BarragerLongRangeRocketBurst"
local weaponDef={
name="Arc Rocket Burst (DGUN)",
weaponType=[[MissileLauncher]],

Accuracy = 0,

--Physic/flight path
range=1400,
reloadtime = 25,
weaponVelocity = 550,
startVelocity = 200,
weaponAcceleration=40,
flightTime=8,
BurnBlow=0,
FixedLauncher=false,
dance=0.3,
wobble=0.3,
tracks=false,
Turnrate=0,
collideFriendly = true,
avoidfriendly = true,
Burst = 6,
burstrate = 0.1,
trajectoryHeight = 0.8,
sprayAngle  = 1300,
soundStart = [[Weapons/hightpitch_rocket]],
soundHit = [[Explosions/LightMissle_expl]],
soundStartVolume = 4,
cegTag = [[Rocket_trail]],
explosionGenerator = [[custom:barragermissleflash]],	  
----APPEARANCE
smokeTrail=false,
model="Rocket.s3o",
commandFire = true,


----TARGETING
turret=true,
CylinderTargetting=true,
avoidFeature=false,
avoidFriendly=true,

----DAMAGE
damage={
default=236,
heavyarmor=1,
},
areaOfEffect=68,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})