-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Turret1 = piece "Turret1"
local Turret2 = piece "Turret2"
local TurretMuzzle1 = piece "TurretMuzzle1"
local TurretMuzzle2 = piece "TurretMuzzle2"
local Flare1 = piece "Flare1"
local Flare2 = piece "Flare2"
local Flare3 = piece "Flare3"
local Flare4 = piece "Flare4"
local Flare5 = piece "Flare5"
local Flare6 = piece "Flare6"
local Flare7 = piece "Flare7"
local Flare8 = piece "Flare8"
local Laser = 1
local LaserNumber = 2
local Laser2 = 1
local Laser2Number = 6
aimSpeed1 = 2.5
aimSpeed2 = 1.5

local SIG_AIM = 1
local SIG_AIM_2 = 2
local function Restore1()
Sleep(2000)
    Turn(Turret1, y_axis, 0, aimSpeed1)
    Turn(TurretMuzzle1, x_axis, 0, aimSpeed1)
	Turn(TurretMuzzle2, x_axis, 0, aimSpeed1)
    WaitForTurn(Turret1, y_axis)
	WaitForTurn(TurretMuzzle1, x_axis)
	WaitForTurn(TurretMuzzle2, x_axis)

end

local function Restore2()
Sleep(2000)
	 Turn(Turret2, y_axis, 0, aimSpeed2)
	 Turn(Turret2, x_axis, 0, aimSpeed2)
	WaitForTurn(Turret2, y_axis)
	WaitForTurn(Turret2, x_axis)
end





function script.Create()
end

----aimining & fire weapon
function script.AimFromWeapon1() 
	return Turret1
	
end

function script.QueryWeapon1()
	if (Laser == 1) then return Flare1 end
	if (Laser == 2) then return Flare2 end
end

function script.AimWeapon1( heading, pitch )
	Signal(SIG_AIM)
    SetSignalMask(SIG_AIM)
    Turn(Turret1, y_axis, heading, aimSpeed1)
    Turn(TurretMuzzle1, x_axis, -pitch, aimSpeed1)
	Turn(TurretMuzzle2, x_axis, -pitch, aimSpeed1)
    WaitForTurn(Turret1, y_axis)
	StartThread(Restore1)
    return true

end

function script.Shot1()	
	--switch to the next barrel:
	Laser = Laser + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (Laser > LaserNumber) then Laser = 1 end
end

----aimining & fire weapon
function script.AimFromWeapon2() 
	return Turret2
	
end

function script.QueryWeapon2()
if (Laser2 == 1) then return Flare3 end
if (Laser2 == 2) then return Flare4 end
if (Laser2 == 3) then return Flare5 end
if (Laser2 == 4) then return Flare6 end
if (Laser2 == 5) then return Flare7 end
if (Laser2 == 6) then return Flare8 end
end

function script.AimWeapon2( heading, pitch )
Signal(SIG_AIM_2)
    SetSignalMask(SIG_AIM_2)
  Turn(Turret2, y_axis, heading, aimSpeed2)
	Turn(Turret2, x_axis, -pitch, aimSpeed2)
	WaitForTurn(Turret2, y_axis)
	StartThread(Restore2)
    return true
end

function script.FireWeapon2()	
--switch to the next barrel:
	Laser2 = Laser2 + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (Laser2 > Laser2Number) then Laser2 = 1 end
end

----aimining & fire weapon
function script.AimFromWeapon3() 
	return Turret2
	
end

function script.QueryWeapon3()
if (Laser2 == 1) then return Flare3 end
if (Laser2 == 2) then return Flare4 end
if (Laser2 == 3) then return Flare5 end
if (Laser2 == 4) then return Flare6 end
if (Laser2 == 5) then return Flare7 end
if (Laser2 == 6) then return Flare8 end
end

function script.AimWeapon3( heading, pitch )
Signal(SIG_AIM_2)
    SetSignalMask(SIG_AIM_2)
  Turn(Turret2, y_axis, heading, aimSpeed2)
	Turn(Turret2, x_axis, -pitch, aimSpeed2)
	WaitForTurn(Turret2, y_axis)
	StartThread(Restore2)
    return true
end

function script.Shot3()	
--switch to the next barrel:
	Laser2 = Laser2 + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (Laser2 > Laser2Number) then Laser2 = 1 end
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