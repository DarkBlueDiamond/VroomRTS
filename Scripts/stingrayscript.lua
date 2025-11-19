-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Turret = piece "Turret"
local TurretMuzzle = piece "TurretMuzzle"
local Flare = piece "Flare"
local Turbine = piece "Turbine"
local Turbine_speed = math.rad(240)
aimSpeed = 4.0
--effects

function script.Create()
	
end
local SIG_AIM = 2
local SIG_AIM_2 = 4
 local SIG_DELAYEDSTOP = 1

local function RestoreAfterDelay()
Sleep(2000)
Turn(Turret, y_axis, 0, aimSpeed)
Turn(TurretMuzzle, x_axis, 0, aimSpeed)
WaitForTurn(Turret, y_axis)
WaitForTurn(TurretMuzzle, x_axis)
end


function script.StartMoving()
    Signal(SIG_DELAYEDSTOP)
    Spin(Turbine, z_axis, Turbine_speed)
end

function script.StopMoving()
    StartThread(delayedStopAnimation)
end


function delayedStopAnimation()
    Signal(SIG_DELAYEDSTOP)
    SetSignalMask(SIG_DELAYEDSTOP)
    Sleep(250)
    StopSpin (Turbine,z_axis)
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
    Turn(TurretMuzzle, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
	StartThread(RestoreAfterDelay)
    return true
end

function script.FireWeapon1()

end

function script.AimFromWeapon2() 
	return Turret
	
end

function script.QueryWeapon2() 
	return Flare 
end

function script.AimWeapon2( heading, pitch )
	Signal(SIG_AIM_2)
    SetSignalMask(SIG_AIM_2)
    --aiming animation: instantly turn the gun towards the enemy
    Turn(Turret, y_axis, heading, aimSpeed)
    Turn(TurretMuzzle, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
	StartThread(RestoreAfterDelay)
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