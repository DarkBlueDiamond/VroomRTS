-- Body and gun
local TrueBase = piece "TrueBase"
local Base = piece "Base"
local Turret = piece "Turret"
local TurretMuzzle1 = piece "TurretMuzzle1"
local TurretMuzzle2 = piece "TurretMuzzle2"
local Flare1 = piece "Flare1"
local Flare2 = piece "Flare2"
local TurretHolder1 = piece "TurretHolder1"
local TurretHolder2 = piece "TurretHolder2"
aimSpeed = 4.0
local Laser = 1
local LaserNumber = 2

local SIG_AIM = 1

local function RestoreAfterDelay()
Sleep(2000)
  Turn(Turret, y_axis, 0, aimSpeed)
	Turn(TurretHolder1, x_axis, 0, aimSpeed)
	Turn(TurretHolder2, x_axis, 0, aimSpeed)
    WaitForTurn(Turret, y_axis)
	 WaitForTurn(TurretHolder1, x_axis)
	  WaitForTurn(TurretHolder2, x_axis)
end






function script.Create()
	
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
	Turn(TurretHolder1, x_axis, -pitch, aimSpeed)
	Turn(TurretHolder2, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
	StartThread(RestoreAfterDelay)
    return true
end

function script.FireWeapon1()	
		--switch to the next barrel:
	Laser = Laser + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (Laser > LaserNumber) then Laser = 1 end
end

---death animation
function script.Killed(recentDamage, maxHealth, corpsetype)
	Explode (TrueBase, SFX.SHATTER)
	local severity = recentDamage / maxHealth
	if severity <= 0.33 then
	return 1
	else
	return 2 
	end
end