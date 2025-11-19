-- Body and gun
local TrueBase = piece "TrueBase"
local Base = piece "Base"
local Spinner = piece "Spinner"


function script.Create()
	Spin(Spinner, y_axis, math.rad(45))
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