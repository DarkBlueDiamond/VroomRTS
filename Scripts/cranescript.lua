-- Body and gun
local Base = piece "Base"
local Body = piece "Body"
local Thruster1 = piece "Thruster1"
local Thruster2 = piece "Thruster2"
local Thruster3 = piece "Thruster3"
local Thruster4 = piece "Thruster4"
local PickupPoint = piece "PickupPoint"
aimSpeed = 4.0


function script.Create()
	
end

local function Go()
local rz = select(3, Spring.UnitScript.GetPieceRotation(Thruster1, Thruster2))
    Signal(SIG_DELAYEDSTOP)
	Turn(Thruster1, x_axis, 45, math.rad(90))
	Turn(Thruster2, x_axis, 45, math.rad(90))
	Turn(Thruster3, x_axis, 45, math.rad(90))
	Turn(Thruster4, x_axis, 45, math.rad(90))
 end
function script.StartMoving()
StartThread(Go)
end

function script.StopMoving()
    StartThread(delayedStopAnimation)
end


function delayedStopAnimation()
local rz = select(3, Spring.UnitScript.GetPieceRotation(Thruster1, Thruster2))
    Signal(SIG_DELAYEDSTOP)
    SetSignalMask(SIG_DELAYEDSTOP)
    Sleep(75)
	Turn(Thruster1, x_axis, 0, math.rad(45))
	Turn(Thruster2, x_axis, 0, math.rad(45))
	Turn(Thruster3, x_axis, 0, math.rad(45))
	Turn(Thruster4, x_axis, 0, math.rad(45))
end

----Transporting



function script.BeginTransport(passengerID)
    local unitHeight = Spring.GetUnitHeight(passengerID)
    Move(PickupPoint, y_axis, -unitHeight, 100)
end

function script.QueryTransport()
    return PickupPoint
end
function script.StartUnload()

end
function script.EndTransport(passengerID)

end


---death animation
function script.Killed(recentDamage, maxHealth, corpsetype)
	Explode (Body, SFX.SHATTER)
	local severity = recentDamage / maxHealth
	if severity <= 0.33 then
	return 1
	else
	return 2 
	end
end