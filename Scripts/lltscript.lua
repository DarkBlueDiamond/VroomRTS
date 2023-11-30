-- Body and gun
local TrueBase = piece "TrueBase"
local Base = piece "Base"
local Turret = piece "Turret"
local TurretLaser = piece "TurretLaser"
local Flare = piece "Flare"
aimSpeed = 4.0


function script.Create()
	
end

SIG_DELAYEDSTOP = 1


----aimining & fire weapon
function script.AimFromWeapon1() 
	return Turret
	
end

function script.QueryWeapon1() 
	return Flare 
end

function script.AimWeapon1( heading, pitch )

    --aiming animation: instantly turn the gun towards the enemy
    Turn(Turret, y_axis, heading, aimSpeed)
    Turn(TurretLaser, x_axis, -pitch, aimSpeed)
    WaitForTurn(Turret, y_axis)
    return true
end

function script.FireWeapon1()	
	
end

---death animation
function script.Killed(recentDamage, maxHealth)
	Explode (TrueBase, SFX.SHATTER)
	  
end