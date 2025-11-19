-- Body and gun
local Base = piece "Base"
local TrueBase = piece "TrueBase"
local Turret = piece "Turret"
local TurretHolder1 = piece "TurretHolder1"
local TurretHolder2 = piece "TurretHolder2"
local Flare1 = piece "Flare1"
local Flare2 = piece "Flare2"
local Laser = 1
local LaserNumber = 2
aimSpeed = 3.5
local wheel_speed = math.rad(180)

local Laser = 1
local LaserNumber = 2

local SIG_AIM = 1

function script.Create()
end


local function Restore()
Sleep(2000)
Turn(Turret, y_axis, 0, aimSpeed)
    Turn(TurretHolder1, x_axis, 0, aimSpeed)
	Turn(TurretHolder2, x_axis, 0, aimSpeed)
    WaitForTurn(Turret, y_axis)
	WaitForTurn(TurretHolder2, x_axis)
	WaitForTurn(TurretHolder1, x_axis)
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
	StartThread(Restore)
    return true
end

function script.Shot1()
	Laser = Laser + 1
	if (Laser > LaserNumber) then Laser = 1 end
end

function script.Killed(recentDamage, maxHealth, corpsetype)
	Explode (TrueBase, SFX.SHATTER)
	local severity = recentDamage / maxHealth
	if severity <= 0.33 then
	return 1
	else
	return 2 
	end        
end