-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local TurretHolder1 = piece "TurretHolder1"
local TurretHolder2 = piece "TurretHolder2"
local Turret1 = piece "Turret1"
local Turret2 = piece "Turret2"
local Flare1 = piece "Flare1"
local Flare2 = piece "Flare2"
local WingEffect1 = piece "WingEffect1"
local WingEffect2 = piece "WingEffect2"
aimSpeed = 8.25
local Laser = 1
local LaserNumber = 2
local SIG_AIM = 1


local function RestoreAfterDelay()
Sleep(2000)
 Turn(Turret1, y_axis, 0, aimSpeed)
	Turn(Turret2, y_axis, 0, aimSpeed)
    Turn(Turret1, x_axis, 0, aimSpeed)
	Turn(Turret2, x_axis, 0, aimSpeed)
    WaitForTurn(Turret1, y_axis)
	WaitForTurn(Turret2, y_axis)
	WaitForTurn(Turret1, x_axis)
	WaitForTurn(Turret2, x_axis)
		StartThread(RestoreAfterDelay)
end

function script.Create()
	
end



----aimining & fire weapon
function script.AimFromWeapon1() 
 return Turret1
	
end

function script.QueryWeapon1() 
if (Laser == 1) then return Flare1 end
	if (Laser == 2) then return Flare2 end
end

function script.AimWeapon1( heading, pitch )
	Signal(SIG_AIM)
    SetSignalMask(SIG_AIM)
    --aiming animation: instantly turn the gun towards the enemy
    Turn(Turret1, y_axis, heading, aimSpeed)
	Turn(Turret2, y_axis, heading, aimSpeed)
    Turn(Turret1, x_axis, -pitch, aimSpeed)
	Turn(Turret2, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret1, y_axis)
	WaitForTurn(Turret2, y_axis)
	WaitForTurn(Turret1, x_axis)
	WaitForTurn(Turret2, x_axis)
	StartThread(RestoreAfterDelay)
    return true
end

function script.Shot1()
	Laser = Laser + 1
	if (Laser > LaserNumber) then Laser = 1 end
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