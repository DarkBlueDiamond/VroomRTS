-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Turret = piece "Turret"
local TurretMuzzle1 = piece "TurretMuzzle1"
local TurretMuzzle2 = piece "TurretMuzzle2"
local TurretMuzzle3 = piece "TurretMuzzle3"
local TurretMuzzle4 = piece "TurretMuzzle4"
local Flare1 = piece "Flare1"
local Flare2 = piece "Flare2"
local Flare3 = piece "Flare3"
local Flare4 = piece "Flare4"
local Laser = 1
local LaserNumber = 4
aimSpeed = 5.3
local SIG_AIM = 1
local on = true
local swattermuzzleflash = SFX.CEG

function script.Create()
end

local function RestoreAfterDelay()
Sleep(2000)
	Turn(Turret, y_axis, 0, aimSpeed)
      Turn(TurretMuzzle1, x_axis, 0, aimSpeed)
	Turn(TurretMuzzle2, x_axis, 0, aimSpeed)
	Turn(TurretMuzzle3, x_axis, 0, aimSpeed)
	Turn(TurretMuzzle4, x_axis, 0, aimSpeed)
	     Turn(TurretMuzzle1, y_axis, 0, aimSpeed)
	Turn(TurretMuzzle2, y_axis, 0, aimSpeed)
	Turn(TurretMuzzle3, y_axis, 0, aimSpeed)
	Turn(TurretMuzzle4, y_axis, 0, aimSpeed)
    WaitForTurn(Turret, y_axis)
	WaitForTurn(TurretMuzzle1, x_axis)
	WaitForTurn(TurretMuzzle2, x_axis)
	WaitForTurn(TurretMuzzle3, x_axis)
	WaitForTurn(TurretMuzzle4, x_axis)
end

----aimining & fire weapon
function script.AimFromWeapon1() 
	return Turret
end

function script.QueryWeapon1()
	if (Laser == 1) then return Flare1 end
	if (Laser == 2) then return Flare2 end
	if (Laser == 3) then return Flare3 end
	if (Laser == 4) then return Flare4 end
end

function script.AimWeapon1( heading, pitch )
	Signal(SIG_AIM)
    SetSignalMask(SIG_AIM)
    Turn(Turret, y_axis, heading, aimSpeed)
    Turn(TurretMuzzle1, x_axis, -pitch, aimSpeed)
	Turn(TurretMuzzle2, x_axis, -pitch, aimSpeed)
	Turn(TurretMuzzle3, x_axis, -pitch, aimSpeed)
	Turn(TurretMuzzle4, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
	StartThread(RestoreAfterDelay)
    return true
end

function script.FireWeapon1()	
	Laser = Laser + 1
	if (Laser > LaserNumber) then Laser = 1 end
	if (Laser == 1) then
	EmitSfx(Flare1, swattermuzzleflash) end
	
	if (Laser == 2) then
	EmitSfx(Flare2, swattermuzzleflash) end
	
	if (Laser == 3) then
	EmitSfx(Flare3, swattermuzzleflash) end
	
	if (Laser == 4) then
	EmitSfx(Flare4, swattermuzzleflash) end
	
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