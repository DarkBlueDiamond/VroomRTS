-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Turret = piece "Turret"
local TurretPlasma = piece "TurretPlasma"
local Flare = piece "Flare"
aimSpeed = 2 --3.3
local ravagermuzzleflash = SFX.CEG
local SIG_AIM = 1


function script.Create()
	
end

SIG_DELAYEDSTOP = 1

local function RestoreAfterDelay()
Sleep(2000)
	Turn(Turret, y_axis, 0, aimSpeed)
    Turn(TurretPlasma, x_axis, 0, aimSpeed)
    WaitForTurn(Turret, y_axis)
	WaitForTurn(TurretPlasma, x_axis)
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
    Turn(TurretPlasma, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
	StartThread(RestoreAfterDelay)
    return true
end

function script.FireWeapon1()	
		EmitSfx(Flare, ravagermuzzleflash)
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
