-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Turret = piece "Turret"
local TurretBuilder = piece "TurretBuilder"
local Flare = piece "Flare"
local Wing1 = piece "Wing1"
local Wing2 = piece "Wing2"
aimSpeed = 3.0

SIG_DELAYEDSTOP = 1

Spring.SetUnitNanoPieces(unitID, { Flare })



local function Stop()
local rz = select(3, Spring.UnitScript.GetPieceRotation(Wing1, Wing2))
Signal(SIG_DELAYEDSTOP)
SetSignalMask(SIG_DELAYEDSTOP)
Sleep(75)
Turn(Wing1, x_axis, 80, math.rad(120))
Turn(Wing2, x_axis, 80, math.rad(120))
end
local function Go()
local rz = select(3, Spring.UnitScript.GetPieceRotation(Wing1, Wing2))
Signal(SIG_DELAYEDSTOP)
Turn(Wing1, x_axis, 0, math.rad(120))
Turn(Wing2, x_axis, 0, math.rad(120))
end
function script.Create()
end

function script.StartMoving()
StartThread(Go)
end

function script.StopMoving()
StartThread(Stop)
end
function script.QueryNanoPiece()
    local nano = nanoPieces[nanoNum]
    return nano
end

function script.StartBuilding(heading, pitch)
    Turn(Turret, y_axis, heading, aimSpeed)
    Turn(Flare, y_axis, math.rad(heading), 1)
	WaitForTurn(Turret, y_axis)
    SetUnitValue(COB.INBUILDSTANCE, 1)
	StartThread(Stop)
end

function script.StopBuilding()
SetUnitValue(COB.INBUILDSTANCE, 0)
StartThread(Go)
end


---death animation
function script.Killed(recentDamage, maxHealth, corpsetype)
	Explode (Body, SFX.SHATTER)
	return 1         
end