-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Turret = piece "Turret"
local Stem = piece "Stem"
local TurretHolder1 = piece "TurretHolder1"
local TurretHolder2 = piece "TurretHolder2"
local TurretMuzzle = piece "TurretMuzzle"
local TurretHolderMuzzle1 = piece "TurretHolderMuzzle1"
local TurretHolderMuzzle2 = piece "TurretHolderMuzzle2"
local TurretHolderMuzzle3 = piece "TurretHolderMuzzle3"
local TurretHolderMuzzle4 = piece "TurretHolderMuzzle4"
local Flare1 = piece "Flare1"
local Flare2 = piece "Flare2"
local Flare3 = piece "Flare3"
local Flare4 = piece "Flare4"
local Flare5 = piece "Flare5"
local Laser = 1
local LaserNumber = 4
aimSpeed = 2
local on = true

local SIG_AIM = 1
local SIG_AIM_2 = 2


local function RestoreAfterDelay()
Sleep(2000)
 Turn(Turret, y_axis, 0, aimSpeed)
    WaitForTurn(Turret, y_axis)
	WaitForTurn(TurretMuzzle, x_axis)
Move(Turret, y_axis, 10, math.rad(33))
Move(Stem, y_axis, 10, math.rad(33))
 WaitForMove(Turret, y_axis)
 WaitForMove(Stem, y_axis)
end

local function Deploy()
Move(Turret, y_axis, 0, math.rad(33))
Move(Stem, y_axis, 0, math.rad(33))
 WaitForMove(Turret, y_axis)
 WaitForMove(Stem, y_axis)
end

function script.Create()
end

----aimining & fire weapon
function script.AimFromWeapon1() 
	return Turret
end

function script.QueryWeapon1()
	return Flare1
end

function script.AimWeapon1( heading, pitch )
	Signal(SIG_AIM)
    SetSignalMask(SIG_AIM)
	StartThread(Deploy)
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
	if (Laser == 1) then return Flare2 end
	if (Laser == 2) then return Flare3 end
	if (Laser == 3) then return Flare4 end
	if (Laser == 4) then return Flare5 end
end

function script.AimWeapon2( heading, pitch )
	Signal(SIG_AIM_2)
    SetSignalMask(SIG_AIM_2)
	StartThread(Deploy)
    Turn(Turret, y_axis, heading, aimSpeed)
    WaitForTurn(Turret, y_axis)
	StartThread(RestoreAfterDelay)
    return true
end

function script.Shot2()	
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