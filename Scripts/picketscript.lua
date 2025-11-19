-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Turret = piece "Turret"
local TurretRocket = piece "TurretRocket"
local Flare = piece "Flare"
-- Wheels
local Wheel1 = piece "Wheel1"
local Wheel2 = piece "Wheel2"
local Wheel3 = piece "Wheel3"
local Wheel4 = piece "Wheel4"
local wheel_speed = math.rad(180)
aimSpeed = 3.0

local SIG_AIM = 1

function script.Create()
	
end

SIG_DELAYEDSTOP = 1

function script.StartMoving()
    Signal(SIG_DELAYEDSTOP)
    Spin(Wheel1, x_axis, wheel_speed)
    Spin(Wheel2, x_axis, wheel_speed)
    Spin(Wheel3, x_axis, wheel_speed)
    Spin(Wheel4, x_axis, wheel_speed)
end

function script.StopMoving()
    StartThread(delayedStopAnimation)
end

local function RestoreAfterDelay()
Sleep(2000)
	Turn(Turret, y_axis, 0, aimSpeed)
    Turn(TurretRocket, x_axis, 0, aimSpeed)
    WaitForTurn(Turret, y_axis)
	WaitForTurn(TurretRocket, x_axis)
end

function delayedStopAnimation()
    Signal(SIG_DELAYEDSTOP)
    SetSignalMask(SIG_DELAYEDSTOP)
    Sleep(250)
    StopSpin (Wheel1,x_axis)
    StopSpin (Wheel2,x_axis)
    StopSpin (Wheel3,x_axis)
    StopSpin (Wheel4,x_axis)
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
    Turn(Turret, y_axis, heading, aimSpeed)
    Turn(TurretRocket, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
	StartThread(RestoreAfterDelay)
    return true
end

function script.FireWeapon1()	
	
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