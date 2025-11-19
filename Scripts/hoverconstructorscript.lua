-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Turret = piece "Turret"
local TurretBuilder1 = piece "TurretBuilder1"
local TurretBuilder2 = piece "TurretBuilder2"
local Flare1 = piece "Flare1"
local Flare2 = piece "Flare2"
aimSpeed = 3.0
local SIG_BUILD = 1
local buildermuzzleflash = SFX.CEG
local isbuilding = true
local function Restore()
Signal (SIG_BUILD)
	SetSignalMask (SIG_BUILD)
Sleep(2000)
Turn(Turret, y_axis, 0, aimSpeed)
    Turn(Flare1, y_axis, 0, 1)
	Turn(Flare2, y_axis, 0, 1)
	WaitForTurn(Turret, y_axis)
end

local function Building()
while (isbuilding == true) do
local dice = math.random (1,2)
if (dice == 1) then
EmitSfx(Flare1, buildermuzzleflash)
Sleep(100)
end
if (dice == 2) then
EmitSfx(Flare2, buildermuzzleflash)
Sleep(100)
end
end
end


function script.Create()
end

function script.QueryNanoPiece()
	local dice = math.random (1,2)
	if (dice == 1) then
		--Spring.SetUnitNanoPieces(unitID, { Flare1 })
		return Flare1
	else
		--Spring.SetUnitNanoPieces(unitID, { Flare2 })
		return Flare2
	end
end

function script.StartBuilding(heading, pitch)
Signal (SIG_BUILD)
	SetSignalMask (SIG_BUILD)
    Turn(Turret, y_axis, heading, aimSpeed)
    Turn(Flare1, y_axis, math.rad(heading), 1)
	Turn(Flare2, y_axis, math.rad(heading), 1)
	WaitForTurn(Turret, y_axis)
    SetUnitValue(COB.INBUILDSTANCE, 1)
	isbuilding = true
	StartThread(Building)
end

function script.StopBuilding()
isbuilding = false
SetUnitValue(COB.INBUILDSTANCE, 0)
StartThread(Restore)
end


---death animation
function script.Killed(recentDamage, maxHealth, corpsetype)
	Explode (Body, SFX.SHATTER)
	return 1
end