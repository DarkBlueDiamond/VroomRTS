-- Thanks Piscasso for basically doing most of the script!
-- Body
local Base = piece "Base"
local TrueBase = piece "TrueBase"
local Extractor = piece "Extractor"
SIG_EXT = 1

local function Extract()
    Signal(SIG_EXT)
    SetSignalMask(SIG_EXT)
    while true do
     Move(Extractor, y_axis,-5, 5)
     WaitForMove( Extractor, y_axis)
     Move(Extractor, y_axis,0, 5)
     WaitForMove( Extractor, y_axis)
     Sleep(1000)
    end
end 

function script.Create()

end


function script.Activate () 
    StartThread(Extract)
end

function script.Deactivate ()
    Signal(SIG_EXT)
end

function script.ExtractionRateChanged()


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