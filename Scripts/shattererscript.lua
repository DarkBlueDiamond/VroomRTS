-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Turret = piece "Turret"
local Muzzle = piece "Muzzle"
local Flare = piece "Flare"
aimSpeed = 3.3

local SIG_AIM = 1

function script.Create()
	
end

SIG_DELAYEDSTOP = 1

local function RestoreAfterDelay()
Sleep(2000)
	Turn(Turret, y_axis, 0, aimSpeed)
    Turn(Muzzle, x_axis, 0, aimSpeed)
    WaitForTurn(Turret, y_axis)
	WaitForTurn(Muzzle, x_axis)
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
    Turn(Muzzle, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
	StartThread(RestoreAfterDelay)
    return true
end

function script.FireWeapon1()	
end
	----aimining & fire weapon 2
function script.AimFromWeapon2() 
	return Turret
	
end

function script.QueryWeapon2() 
	return Flare 
end

function script.AimWeapon2( heading, pitch )

    --aiming animation: instantly turn the gun towards the enemy
    Turn(Turret, y_axis, heading, aimSpeed)
    Turn(Muzzle, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
    return true
end

function script.FireWeapon2()	
	
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