-- Body and gun
local TrueBase = piece "TrueBase"
local Base = piece "Base"
local TurbineHolder = piece "TurbineHolder"
local Stem = piece "Stem" 

function script.Create()
end

function script.WindChanged(heading,strength)
local dice = math.random (-225,225)
 Turn(Stem, y_axis, heading, math.rad(dice))
 Spin(TurbineHolder, z_axis, strength * 1)
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