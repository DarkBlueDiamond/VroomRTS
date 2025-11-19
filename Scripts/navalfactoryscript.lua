-- Body
local Base = piece "Base"
local Tower = piece "Tower"
local Turret = piece "Turret"
local TurretBuilder = piece "TurretBuilder"
local Flare = piece "Flare"
local BuildSpot = piece "BuildSpot"
aimSpeed = 3.0
local buildermuzzleflash = SFX.CEG
local isbuilding = true
Spring.SetUnitNanoPieces(unitID, { Flare })

local function Building()
while (isbuilding == true) do
EmitSfx(Flare, buildermuzzleflash)
Sleep(100)
end
end

function script.Create()

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
return 1
end

function script.Deactivate()
SetUnitValue(COB.INBUILDSTANCE, 0)
return 1
end

function script.StartBuilding(heading, pitch)
    isbuilding = true
	StartThread(Building)
end

function script.StopBuilding()
isbuilding = false
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