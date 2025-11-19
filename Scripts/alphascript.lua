-- Body and gun"
local Body = piece "Body"
local Turret = piece "Turret1"
local Turret2 = piece "Turret2"
local Turret3 = piece "Turret3"
local Turret4 = piece "Turret4"
local Turret5 = piece "Turret5"
--hide

local TurretMuzzle4 = piece "TurretMuzzle4"
local TurretMuzzle3 = piece "TurretMuzzle3"
local TurretColor3 = piece "TurretColor3"
local TurretMuzzle5 = piece "TurretMuzzle5"
local TurretColor4 = piece "TurretColor4"

local TurretMuzzle6 = piece "TurretMuzzle6"
local TurretMuzzle7 = piece "TurretMuzzle7"
local TurretColor5 = piece "TurretColor5"
local TurretMuzzle8 = piece "TurretMuzzle8"
local TurretColor6 = piece "TurretColor6"

local TurretMuzzle9 = piece "TurretMuzzle9"
local TurretMuzzle10 = piece "TurretMuzzle10"
local TurretColor7 = piece "TurretColor7"
local TurretMuzzle11 = piece "TurretMuzzle11"

local TurretMuzzle12 = piece "TurretMuzzle12"
local TurretMuzzle13 = piece "TurretMuzzle13"
local TurretColor9 = piece "TurretColor9"
local TurretMuzzle14 = piece "TurretMuzzle14"


--hide




local TurretBarrel1 = piece "TurretBarrel1"
local TurretBarrel2 = piece "TurretBarrel2"
local TurretColor8 = piece "TurretColor8"
local TurretColor10 = piece "TurretColor10"
local Flare1 = piece "Flare1"
local Flare2 = piece "Flare2"
local Flare3 = piece "Flare3"
local Flare4 = piece "Flare4"
local Flare14 = piece "Flare14"
local Flare6 = piece "Flare6"
local Flare7 = piece "Flare7"
local Flare11 = piece "Flare11"
local Barrel = 1
local BarrelNumber = 2
local Barrel1 = 1
local BarrelNumber1 = 4
local Barrel2 = 1
local BarrelNumber2 = 2
local Barrel3 = 1
local BarrelNumber3 = 2
local weapontype = 1
local FIRING_ARC 
aimSpeed = 3.0
local on = true
Spring.SetUnitNanoPieces(unitID, { Flare1 })
local buildermuzzleflash = SFX.CEG
local isbuilding = true
local SIG_AIM = 1
local SIG_AIM_2 = 2
local function Restore()
Sleep(2000)
    Turn(Turret, y_axis, 0, aimSpeed)
    Turn(TurretBarrel1, x_axis, 0, aimSpeed)
	Turn(TurretBarrel2, x_axis, 0, aimSpeed)
	Turn(Turret2, x_axis, 0, aimSpeed)
	Turn(Turret3, x_axis, 0, aimSpeed)
    WaitForTurn(Turret, y_axis)
	WaitForTurn(TurretBarrel1, x_axis)
	WaitForTurn(TurretBarrel2, x_axis)
    WaitForTurn(Turret2, x_axis)
    WaitForTurn(Turret3, x_axis)
end

local function Restore2()
Sleep(2000)
    Turn(Turret, y_axis, 0, aimSpeed)
    Turn(TurretBarrel1, x_axis, 0, aimSpeed)
	Turn(TurretBarrel2, x_axis, 0, aimSpeed)
	Turn(Turret4, x_axis, math.rad(180), aimSpeed)
	Turn(Turret5, x_axis, math.rad(180), aimSpeed)
	Turn(TurretColor8, x_axis, 0, math.rad(90))
	Turn(TurretColor10, x_axis, 0, math.rad(90))
    WaitForTurn(Turret, y_axis)
	WaitForTurn(TurretBarrel1, x_axis)
	WaitForTurn(TurretBarrel2, x_axis)
    WaitForTurn(Turret4, x_axis)
    WaitForTurn(Turret5, x_axis)
    WaitForTurn(TurretColor8, x_axis)
    WaitForTurn(TurretColor10, x_axis)
end


function script.Create()
Spring.SetUnitMaxRange(unitID, 385)
weapontype = 1
Spring.UnitScript.Hide(Turret4)
Spring.UnitScript.Hide(TurretMuzzle9)
Spring.UnitScript.Hide(TurretMuzzle10)
Spring.UnitScript.Hide(TurretColor7)
Spring.UnitScript.Hide(TurretColor8)
Spring.UnitScript.Hide(TurretMuzzle11)

Spring.UnitScript.Hide(Turret5)
Spring.UnitScript.Hide(TurretMuzzle12)
Spring.UnitScript.Hide(TurretMuzzle13)
Spring.UnitScript.Hide(TurretColor9)
Spring.UnitScript.Hide(TurretColor10)
Spring.UnitScript.Hide(TurretMuzzle14)
end

function script.Activate ()
weapontype = 2

Spring.UnitScript.Hide(Turret2)
Spring.UnitScript.Hide(TurretMuzzle3)
Spring.UnitScript.Hide(TurretMuzzle4)
Spring.UnitScript.Hide(TurretColor3)
Spring.UnitScript.Hide(TurretColor4)
Spring.UnitScript.Hide(TurretMuzzle5)

Spring.UnitScript.Hide(Turret3)
Spring.UnitScript.Hide(TurretMuzzle6)
Spring.UnitScript.Hide(TurretMuzzle7)
Spring.UnitScript.Hide(TurretColor5)
Spring.UnitScript.Hide(TurretColor6)
Spring.UnitScript.Hide(TurretMuzzle8)


Spring.SetUnitMaxRange(unitID, 1270)
Spring.UnitScript.Show(Turret4)
Spring.UnitScript.Show(TurretMuzzle9)
Spring.UnitScript.Show(TurretMuzzle10)
Spring.UnitScript.Show(TurretColor7)
Spring.UnitScript.Show(TurretColor8)
Spring.UnitScript.Show(TurretMuzzle11)

Spring.UnitScript.Show(Turret5)
Spring.UnitScript.Show(TurretMuzzle12)
Spring.UnitScript.Show(TurretMuzzle13)
Spring.UnitScript.Show(TurretColor9)
Spring.UnitScript.Show(TurretColor10)
Spring.UnitScript.Show(TurretMuzzle14)
end

function script.Deactivate ()
weapontype = 1
Spring.SetUnitMaxRange(unitID, 385)
Spring.UnitScript.Hide(Turret4)
Spring.UnitScript.Hide(TurretMuzzle9)
Spring.UnitScript.Hide(TurretMuzzle10)
Spring.UnitScript.Hide(TurretColor7)
Spring.UnitScript.Hide(TurretColor8)
Spring.UnitScript.Hide(TurretMuzzle11)

Spring.UnitScript.Hide(Turret5)
Spring.UnitScript.Hide(TurretMuzzle12)
Spring.UnitScript.Hide(TurretMuzzle13)
Spring.UnitScript.Hide(TurretColor9)
Spring.UnitScript.Hide(TurretColor10)
Spring.UnitScript.Hide(TurretMuzzle14)

Spring.UnitScript.Show(Turret2)
Spring.UnitScript.Show(TurretMuzzle3)
Spring.UnitScript.Show(TurretMuzzle4)
Spring.UnitScript.Show(TurretColor3)
Spring.UnitScript.Show(TurretColor4)
Spring.UnitScript.Show(TurretMuzzle5)

Spring.UnitScript.Show(Turret3)
Spring.UnitScript.Show(TurretMuzzle6)
Spring.UnitScript.Show(TurretMuzzle7)
Spring.UnitScript.Show(TurretColor5)
Spring.UnitScript.Show(TurretColor6)
Spring.UnitScript.Show(TurretMuzzle8)
end

----aimining & fire weapon
function script.AimFromWeapon1() 
	return Turret
	
end

function script.QueryWeapon1()
	if (Barrel == 1) then return Flare1 end
	if (Barrel == 2) then return Flare2 end
end

function script.AimWeapon1( heading, pitch )
	Signal(SIG_AIM)
    SetSignalMask(SIG_AIM)
    Turn(Turret, y_axis, heading, aimSpeed)
    Turn(TurretBarrel1, x_axis, -pitch, aimSpeed)
	Turn(TurretBarrel2, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
	StartThread(Restore)
    return true

end

function script.FireWeapon1()	
	--switch to the next barrel:
	Barrel = Barrel + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (Barrel > BarrelNumber) then Barrel = 1 end
end

----aimining & fire weapon
function script.AimFromWeapon2()
 return Turret
end

function script.QueryWeapon2()
if (Barrel1 == 1) then return Flare3 end
if (Barrel1 == 2) then return Flare6 end
if (Barrel1 == 3) then return Flare4 end
if (Barrel1 == 4) then return Flare7 end
end

function script.AimWeapon2( heading, pitch )
if (weapontype == 1) then
Signal(SIG_AIM_2)
    SetSignalMask(SIG_AIM_2)
 	Turn(Turret2, x_axis, -pitch, aimSpeed)
	Turn(Turret3, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret2, x_axis)
    WaitForTurn(Turret3, x_axis)
	StartThread(Restore)
    return true
    end
end

function script.FireWeapon2()
	if (weapontype == 1) then
	--switch to the next barrel:
	Barrel1 = Barrel1 + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (Barrel1 > BarrelNumber1) then Barrel1 = 1 end
	    end
end

function script.AimFromWeapon3()
 return Turret
end

function script.QueryWeapon3()
if (Barrel2 == 1) then return Flare11 end
if (Barrel2 == 2) then return Flare14 end
end

function script.AimWeapon3( heading, pitch )
if (weapontype == 2) then
Signal(SIG_AIM_2)
    SetSignalMask(SIG_AIM_2)
 	Turn(Turret4, x_axis, -pitch, aimSpeed)
	Turn(Turret5, x_axis, -pitch, aimSpeed)
	Turn(TurretColor8, x_axis, math.rad(90), math.rad(90))
	Turn(TurretColor10, x_axis, math.rad(90), math.rad(90))
    WaitForTurn(Turret4, x_axis)
    WaitForTurn(Turret5, x_axis)
    WaitForTurn(TurretColor8, x_axis)
    WaitForTurn(TurretColor10, x_axis)
	StartThread(Restore2)
    return true
    end
end

function script.FireWeapon3()
	if (weapontype == 2) then
	--switch to the next barrel:
	Barrel2 = Barrel2 + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (Barrel2 > BarrelNumber2) then Barrel2 = 1 end
	    end
end

function script.AimFromWeapon4() 
	return Turret
	
end

function script.QueryWeapon4()
	if (Barrel3 == 1) then return Flare1 end
	if (Barrel3 == 2) then return Flare2 end
end

function script.AimWeapon4( heading, pitch )
	Signal(SIG_AIM)
    SetSignalMask(SIG_AIM)
    Turn(Turret, y_axis, heading, aimSpeed)
    Turn(TurretBarrel1, x_axis, -pitch, aimSpeed)
	Turn(TurretBarrel2, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
	StartThread(Restore)
    return true

end

function script.FireWeapon4()	
	--switch to the next barrel:
	Barrel3 = Barrel3 + 1
	--if all barrels have fired, start the cyclus from the beginning:
	if (Barrel3 > BarrelNumber3) then Barrel = 1 end
end

function script.Killed(recentDamage, maxHealth, corpsetype)
	Explode (Body, SFX.SHATTER)
	local severity = recentDamage / maxHealth
	if severity <= 0.33 then
	return 1
	else
	return 2 
	end
end
