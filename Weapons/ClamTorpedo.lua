local weaponName="ClamTorpedo"
local weaponDef={
name="Torpedo (Ship/sub oly)",
weaponType=[[TorpedoLauncher]],

Accuracy = 0,

--Physic/flight path
range=375,
reloadtime = 6,
weaponVelocity=300,
startVelocity=300,
weaponAcceleration=300,
flightTime=4,
BurnBlow=0,
FixedLauncher=false,
dance=0,
wobble=0,
tracks = true,
Turnrate= 4000,
tolerance = 16000,
collideFriendly = true,
avoidfriendly 	= true,
waterWeapon = true,
soundStart = [[Weapons/torpedo]],
soundHit = [[Explosions/underwater_explosion]],
soundStartVolume = 4,
soundHitVolume = 4,
cegTag = [[torpedo_trail]],
explosionGenerator = [[custom:Torpedomissleflash]],
----APPEARANCE
smokeTrail= false,--uses default trail
model="Rocket.s3o",

----TARGETING
turret=true,
CylinderTargetting=true,
avoidFeature=false,
avoidFriendly=true,


--commandfire=true,

----DAMAGE
damage={
default=328,
},
areaOfEffect=32,
craterMult=0,

--?FIXME***
lineOfSight=true,


}

return lowerkeys ({[weaponName]=weaponDef})