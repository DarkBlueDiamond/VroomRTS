-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local TurretHolder1 = piece "TurretHolder1"
local TurretHolder2 = piece "TurretHolder2"
local TurretMuzzle1 = piece "TurretMuzzle1"
local TurretMuzzle2 = piece "TurretMuzzle2"
local Flare1 = piece "Flare1"
local Flare2 = piece "Flare2"
local Thruster1 = piece "Thruster1"
local Thruster2 = piece "Thruster2"
aimSpeed = 4.0
SIG_DELAYEDSTOP = 1
local Laser = 1
local LaserNumber = 2

local SIG_AIM = 1

local function RestoreAfterDelay()
Sleep(2000)
	Turn(TurretHolder1, y_axis, 0, aimSpeed)
	Turn(TurretHolder2, y_axis, 0, aimSpeed)
    Turn(TurretMuzzle1, x_axis, 0, aimSpeed)
	Turn(TurretMuzzle2, x_axis, 0, aimSpeed)
    WaitForTurn(TurretHolder1, y_axis)
	WaitForTurn(TurretHolder2, y_axis)
	WaitForTurn(TurretMuzzle1, x_axis)
	WaitForTurn(TurretMuzzle2, x_axis)
end






function script.Create()
	
end

local function Go()
local rz = select(3, Spring.UnitScript.GetPieceRotation(Thruster1, Thruster2))
    Signal(SIG_DELAYEDSTOP)
	Turn(Thruster1, x_axis, 45, math.rad(90))
	Turn(Thruster2, x_axis, 45, math.rad(90))
 end
function script.StartMoving()
StartThread(Go)
end

function script.StopMoving()
    StartThread(delayedStopAnimation)
end


function delayedStopAnimation()
local rz = select(3, Spring.UnitScript.GetPieceRotation(Thruster1, Thruster2))
    Signal(SIG_DELAYEDSTOP)
    SetSignalMask(SIG_DELAYEDSTOP)
    Sleep(75)
	Turn(Thruster1, x_axis, 0, math.rad(45))
	Turn(Thruster2, x_axis, 0, math.rad(45))
end

----aimining & fire weapon
function script.AimFromWeapon1() 
	return TurretHolder1 

	
end

function script.QueryWeapon1() 
return Flare1
	
end

function script.AimWeapon1( heading, pitch )
		Signal(SIG_AIM)
    SetSignalMask(SIG_AIM)
    --aiming animation: instantly turn the gun towards the enemy
    Turn(TurretHolder1, y_axis, heading, aimSpeed)
	Turn(TurretHolder2, y_axis, heading, aimSpeed)
    Turn(TurretMuzzle1, x_axis, -pitch, aimSpeed)
	Turn(TurretMuzzle2, x_axis, -pitch, aimSpeed)
    WaitForTurn(TurretHolder1, y_axis)
	StartThread(RestoreAfterDelay)
    return true
end

function script.FireWeapon1()

end
----aimining & fire weapon 2
function script.AimFromWeapon2() 
	return TurretHolder2

	
end

function script.QueryWeapon2() 
return Flare2
	
end

function script.AimWeapon2( heading, pitch )
		Signal(SIG_AIM)
    SetSignalMask(SIG_AIM)
    --aiming animation: instantly turn the gun towards the enemy
    Turn(TurretHolder1, y_axis, heading, aimSpeed)
	Turn(TurretHolder2, y_axis, heading, aimSpeed)
    Turn(TurretMuzzle1, x_axis, -pitch, aimSpeed)
	Turn(TurretMuzzle2, x_axis, -pitch, aimSpeed)
    WaitForTurn(TurretHolder2, y_axis)
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