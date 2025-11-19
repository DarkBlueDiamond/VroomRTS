local weaponName="StrikeMissles"
local weaponDef={
name="Dual Strike Missles (Ground only)",
weaponType=[[MissileLauncher]],

Accuracy=0,

--Physic/flight path
range=530,
reloadtime=12,
weaponVelocity=475,
startVelocity=320,
weaponAcceleration=200,
flightTime=2.5,
BurnBlow=0,
FixedLauncher=true,
dance=0,
wobble=0,
tolerance=12000,
tracks=true,
waterWeapon = true,
burst = 2,
burstrate = 0.01,
Turnrate=12000,
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
default=250,
},
areaOfEffect=15,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})