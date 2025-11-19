-- Body and gun
local TrueBase = piece "TrueBase"
local Base = piece "Base"
local Turret = piece "Turret"
local TurretLaser = piece "TurretLaser"
local Flare = piece "Flare"
aimSpeed = 4.0

local SIG_AIM = 1



local function RestoreAfterDelay()
Sleep(2000)
Turn(Turret, y_axis, 0, aimSpeed)
Turn(TurretLaser, x_axis, 0, aimSpeed)
    WaitForTurn(Turret, y_axis)
	WaitForTurn(TurretLaser, x_axis)
end





function script.Create()
	
end




----aimining & fire weapon
function script.AimFromWeapon1() 
	return Turret
	
end

function script.QueryWeapon1() 
	return Flare 
end

function script.AimWeapon1( heading, pitch )
	Signal(SIG_AIM)
    SetSignalMask(SIG_AIM)
    --aiming animation: instantly turn the gun towards the enemy
    Turn(Turret, y_axis, heading, aimSpeed)
    Turn(TurretLaser, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
    StartThread(RestoreAfterDelay)
    return true
end

function script.FireWeapon1()	
	
end

---death animation
function script.Killed(recentDamage, maxHealth, corpsetype)
	Explode (Base, SFX.SHATTER)
	local severity = recentDamage / maxHealth
	if severity <= 0.33 then
	return 1
	else
	return 2 
	end
end