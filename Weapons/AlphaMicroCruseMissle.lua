local weaponName="AlphaMicoCruiseMissle"
local weaponDef={
name="Long range Cruise Rocket (Turn on to activate.)",
weaponType=[[MissileLauncher]],

Accuracy = 0,

--Physic/flight path
range=1270,
reloadtime = 6,
weaponVelocity = 1200,
startVelocity = 40,
weaponAcceleration=75,
energyPerShot = 150,
flightTime=24,
BurnBlow=0,
FixedLauncher=false,
dance=0.1,
wobble=0.1,
tracks=false,
Turnrate=40,
collideFriendly = true,
avoidfriendly = true,
trajectoryHeight = 0.8,
Accuracy  = 0,
soundStart = [[Weapons/Missle]],
soundHit = [[Weapons/Missle_hit]],
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
default=845,
heavyarmor=1,
},
areaOfEffect=35,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})
