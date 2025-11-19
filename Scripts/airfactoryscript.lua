-- Body
local Base = piece "Base"
local Tower = piece "Tower"
local Turret = piece "Turret"
local TurretBuilder = piece "TurretMuzzle"
local Flare = piece "Flare"
local BuildSpot = piece "BuildSpot"
local Pad = piece "Pad"
local buildermuzzleflash = SFX.CEG
local isbuilding = true
Spring.SetUnitNanoPieces(unitID, { Flare })


function script.Create()

end

local function Building()
while (isbuilding == true) do
EmitSfx(Flare, buildermuzzleflash)
Sleep(100)
end
end

function script.QueryBuildInfo() 
	return BuildSpot
end

function script.QueryNanoPiece()
    local nano = nanoPieces[nanoNum]
    return nano
end
function script.Activate()
SetUnitValue(COB.INBUILDSTANCE, 1)
SetUnitValue(COB.YARD_OPEN, 1)
SetUnitValue(COB.BUGGER_OFF, 1)
return 1
end

function script.Deactivate()
SetUnitValue(COB.INBUILDSTANCE, 0)
SetUnitValue(COB.YARD_OPEN, 0)
SetUnitValue(COB.BUGGER_OFF, 0)
return 1
end

function script.StartBuilding(heading, pitch)
    Spin(Pad, y_axis, math.rad(90))
	isbuilding = true
	StartThread(Building)
end

function script.StopBuilding()
isbuilding = false
 StopSpin(Pad, y_axis, math.rad(90))
end


---death animation
function script.Killed(recentDamage, maxHealth, corpsetype)
	Explode (Tower, SFX.SHATTER)
	local severity = recentDamage / maxHealth
	if severity <= 0.33 then
	return 1
	else
	return 2 
	end
end