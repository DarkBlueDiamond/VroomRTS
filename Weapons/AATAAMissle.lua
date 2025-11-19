local weaponName="AATMissle"
local weaponDef={
name="AA Missle",
weaponType=[[MissileLauncher]],

Accuracy=2000,

--Physic/flight path
range=950,
reloadtime=3.6,
weaponVelocity=700,
startVelocity=500,
weaponAcceleration=200,
flightTime=2.5,
BurnBlow=0,
FixedLauncher=false,
dance=0,
wobble=0,
tolerance=24000,
tracks=true,
Turnrate=24000,
collideFriendly=true,
burst = 2,
burstrate = 0.25,
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
avoidFeature = false,
avoidFriendly=true,


--commandfire=true,

----DAMAGE
damage={
default=180,
},
areaOfEffect=36,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})