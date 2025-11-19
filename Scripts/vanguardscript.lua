-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Turret1 = piece "Turret1"
local Turret2 = piece "Turret2"
local Turret1Muzzle1 = piece "Turret1Muzzle1"
local Turret1Muzzle2 = piece "Turret1Muzzle2"
local Turret2Muzzle = piece "Turret2Muzzle"
local Flare1 = piece "Flare1"
local Flare2 = piece "Flare2"
local Flare3 = piece "Flare3"
local Laser = 1
local LaserNumber = 2
aimSpeed1 = 1.5
aimSpeed2 = 4
local vanguardmuzzleflash = SFX.CEG
local SIG_AIM = 1
local SIG_AIM_2 = 2
local function Restore1()
Sleep(2000)
    Turn(Turret1, y_axis, 0, aimSpeed1)
    Turn(Turret1Muzzle1, x_axis, 0, aimSpeed1)
	Turn(Turret1Muzzle2, x_axis, 0, aimSpeed1)
    WaitForTurn(Turret1, y_axis)
	WaitForTurn(Turret1Muzzle1, x_axis)
	WaitForTurn(Turret1Muzzle2, x_axis)

end

local function Restore2()
Sleep(2000)
	 Turn(Turret2, y_axis, 0, aimSpeed2)
	 Turn(Turret2Muzzle, x_axis, 0, aimSpeed2)
	WaitForTurn(Turret2, y_axis)
	WaitForTurn(Turret2Muzzle, x_axis)
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
    Turn(Turret1Muzzle1, x_axis, -pitch, aimSpeed1)
	Turn(Turret1Muzzle2, x_axis, -pitch, aimSpeed1)
    WaitForTurn(Turret1, y_axis)
	StartThread(Restore1)
    return true

end

function script.FireWeapon1()	
	--switch to the next barrel:
	Laser = Laser + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (Laser > LaserNumber) then Laser = 1 end
	if (Laser == 1) then
	EmitSfx(Flare1, vanguardmuzzleflash) end
	
	if (Laser == 2) then
	EmitSfx(Flare2, vanguardmuzzleflash) end
end

----aimining & fire weapon
function script.AimFromWeapon2() 
	return Turret2
	
end

function script.QueryWeapon2()
 return Flare3 
end

function script.AimWeapon2( heading, pitch )
Signal(SIG_AIM_2)
    SetSignalMask(SIG_AIM_2)
  Turn(Turret2, y_axis, heading, aimSpeed2)
	Turn(Turret2Muzzle, x_axis, -pitch, aimSpeed2)
	WaitForTurn(Turret2, y_axis)
	StartThread(Restore2)
    return true
end

function script.Shot2()	
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