-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Turret = piece "Turret"
local Turret2 = piece "Turret2"
local TurretBuilder = piece "TurretConstructor"
local TurretMuzzle1 = piece "TurretMuzzle1"
local TurretMuzzle2 = piece "TurretMuzzle2"
local Flare1 = piece "Flare1"
local Flare2 = piece "Flare2"
local Flare3 = piece "Flare3"
local Laser = 1
local LaserNumber = 2
local returnbuild = 0
aimSpeed = 3.0
local on = true
Spring.SetUnitNanoPieces(unitID, { Flare1 })
local buildermuzzleflash = SFX.CEG
local isbuilding = true
local SIG_AIM = 1
local SIG_BUILD = 2
local function Restore1()
Sleep(2000)
    Turn(Turret, y_axis, 0, aimSpeed)
    Turn(TurretMuzzle1, x_axis, 0, aimSpeed)
	Turn(TurretMuzzle2, x_axis, 0, aimSpeed)
    WaitForTurn(Turret, y_axis)
	WaitForTurn(TurretMuzzle1, x_axis)
	WaitForTurn(TurretMuzzle2, x_axis)
end

local function Building()
while (isbuilding == true) do
EmitSfx(Flare1, buildermuzzleflash)
Sleep(100)
end
end

local function Restore2()
Signal (SIG_BUILD)
	SetSignalMask (SIG_BUILD)
Sleep(3000)
     Turn(Turret, y_axis, 0, aimSpeed)
    Turn(Flare1, y_axis, 0, 1)
	WaitForTurn(Turret, y_axis)
	WaitForTurn(Flare1, y_axis)
end


function script.Create()
end

function script.QueryNanoPiece()
    local nano = nanoPieces[nanoNum]
    return nano
end

function script.StartBuilding(heading, pitch)
Signal (SIG_BUILD)
	SetSignalMask (SIG_BUILD)
    Turn(Turret, y_axis, heading, aimSpeed)
    Turn(Flare1, y_axis, math.rad(heading), 1)
	WaitForTurn(Turret, y_axis)
    SetUnitValue(COB.INBUILDSTANCE, 1)
	isbuilding = true
	StartThread(Building)
end

function script.StopBuilding()
SetUnitValue(COB.INBUILDSTANCE, 0)
returnbuild = 1
isbuilding = false
if (returnbuild == 1) then
StartThread(Restore2)
returnbuild = 0
end

end

----aimining & fire weapon
function script.AimFromWeapon1() 
	return Turret
	
end

function script.QueryWeapon1()
	if (Laser == 1) then return Flare2 end
	if (Laser == 2) then return Flare3 end
end

function script.AimWeapon1( heading, pitch )
	Signal(SIG_AIM)
    SetSignalMask(SIG_AIM)
    Turn(Turret, y_axis, heading, aimSpeed)
    Turn(TurretMuzzle1, x_axis, -pitch, aimSpeed)
	Turn(TurretMuzzle2, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
	StartThread(Restore1)
    return true

end

function script.FireWeapon1()	
	--switch to the next barrel:
	Laser = Laser + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (Laser > LaserNumber) then Laser = 1 end
end

----aimining & fire weapon
function script.AimFromWeapon2() 
	return Turret
	
end

function script.QueryWeapon2()
if (Laser == 1) then return Flare2 end
if (Laser == 2) then return Flare3 end
 
end

function script.AimWeapon2( heading, pitch )
Signal(SIG_AIM)
    SetSignalMask(SIG_AIM)
  Turn(Turret, y_axis, heading, aimSpeed)
    Turn(TurretMuzzle1, x_axis, -pitch, aimSpeed)
	Turn(TurretMuzzle2, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
	StartThread(Restore1)
    return true
end

function script.Shot2()	
	--switch to the next barrel:
	Laser = Laser + 1
	--if all barrels have fired, start the cyclus from the beginning:
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