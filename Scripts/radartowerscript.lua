-- Thanks ZK for making this work
-- Body
local Base = piece "Base"
local TrueBase = piece "TrueBase"
local RadarHolder = piece "RadarHolder"
local Dish = piece "Dish"
local unitDefID = Spring.GetUnitDefID(unitID)
local on = false

function script.Create()
	
end

function script.Activate ( ) 
Spin(RadarHolder, y_axis, math.rad(60))
on = true
end

function script.Deactivate ( )
StopSpin(RadarHolder, y_axis) 
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