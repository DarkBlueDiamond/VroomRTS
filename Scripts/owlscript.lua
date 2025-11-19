-- Thanks ZK for making this work
-- Body
local Base = piece "Base"
local TrueBase = piece "Body"
local Stem1 = piece "Stem1"
local unitDefID = Spring.GetUnitDefID(unitID)
local on = false

function script.Create()
	
end

function script.Activate ( ) 
Spin(Stem1, y_axis, math.rad(180))
on = true
end

function script.Deactivate ( )
StopSpin(Stem1, y_axis) 
on = false
end


---death animation
function script.Killed(recentDamage, maxHealth, corpsetype)
	Explode (TrueBase, SFX.SHATTER)
	local severity = recentDamage / maxHealth
	if severity <= 0.33 then
	return 1
	else
	return 2 
	end
end