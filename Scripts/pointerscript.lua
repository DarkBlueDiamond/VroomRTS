-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Turret = piece "Turret"
local TurretMissle1 = piece "TurretMissle1"
local TurretMissle2 = piece "TurretMissle2"
local Flare1 = piece "Flare1"
local Flare2 = piece "Flare2"
local Wheel1 = piece "Wheel1"
local Wheel2 = piece "Wheel2"
local Wheel3 = piece "Wheel3"
local Wheel4 = piece "Wheel4"
local Laser = 1
local LaserNumber = 2
aimSpeed = 3.5
local wheel_speed = math.rad(180)
local SIG_AIM = 1


local Laser = 1
local LaserNumber = 2
function script.Create()
end

local function RestoreAfterDelay()
Sleep(2000)
	Turn(Turret, y_axis, 0, aimSpeed)
      Turn(TurretMissle1, x_axis, 0, aimSpeed)
	Turn(TurretMissle2, x_axis, 0, aimSpeed)
    WaitForTurn(Turret, y_axis)
	WaitForTurn(TurretMissle1, x_axis)
	WaitForTurn(TurretMissle2, x_axis)
end


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
if (Laser == 1) then return Flare1 end
if (Laser == 2) then return Flare2 end

end

function script.AimWeapon1( heading, pitch )
	Signal(SIG_AIM)
    SetSignalMask(SIG_AIM)
    Turn(Turret, y_axis, heading, aimSpeed)
    Turn(TurretMissle1, x_axis, -pitch, aimSpeed)
	Turn(TurretMissle2, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
	StartThread(RestoreAfterDelay)
    return true
end

function script.FireWeapon1()
	Laser = Laser + 1
	if (Laser > LaserNumber) then Laser = 1 end
end

function script.Killed(recentDamage, maxHealth, corpsetype)
	Explode (Body, SFX.SHATTER)
	local severity = recentDamage / maxHealth
	if severity <= 0.33 then
	return 1
	else
	return 2 
	end         
end