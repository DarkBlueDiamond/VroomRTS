-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Flare = piece "Flare"
local BombStorageDoor1 = piece "BombStorageDoor1"
local BombStorageDoor2 = piece "BombStorageDoor2"
aimSpeed = 4.0
local Laser = 1
local LaserNumber = 2
--effects

function script.Create()
	
end



----aimining & fire weapon
function script.AimFromWeapon1() 
return Flare
end

function script.QueryWeapon1() 
return Flare
end

function script.AimWeapon1( heading, pitch )
end

function script.FireWeapon1()
local rz = select(3, Spring.UnitScript.GetPieceRotation(BombStorageDoor1, BombStorageDoor2))
Turn(BombStorageDoor1, z_axis, 180, math.rad(360))
Turn(BombStorageDoor2, z_axis, -180, math.rad(360))
Sleep(1500)
Turn(BombStorageDoor1, z_axis, 0, math.rad(180))
Turn(BombStorageDoor2, z_axis, 0, math.rad(180))
end

---death animation
function script.Killed(recentDamage, maxHealth, corpsetype)
	Explode (Body, SFX.SHATTER)
	local severity = recentDamage / maxHealth
	if severity <= 0.33 then
	return 1
	else
	return 2 
	end
end