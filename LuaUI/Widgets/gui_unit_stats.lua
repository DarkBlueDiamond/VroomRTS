function widget:GetInfo()
	return {
		name      = "Unit Stats",
		desc      = "Shows detailed unit stats",
		author    = "Niobium + Doo",
		date      = "Jan 11, 2009",
		version   = 1.8,
		license   = "GNU GPL, v2 or later",
		layer     = -9999999999,
		enabled   = true,  --  loaded by default?
	}
end

include("keysym.h.lua")
---v1.8 by Shruggoth
-- Updated color Rendering for BAR engine (clunkily)
-- Added misc infos such as cloak/stealth working, flight altitudes, clarifying AoE is radius, projectile speed

----v1.7 by Doo changes
-- Reverted "Added beamtime to oRld value to properly count dps of BeamLaser weapons" because reload starts at the beginning of the beamtime
-- Reduced the "minimal" reloadTime to properly calculate dps for low reloadtime weapons
-- Hid range from gui for explosion (death/selfd) as it is irrelevant.

----v1.6 by Doo changes
-- Fixed crashing when hovering some enemy units

----v1.5 by Doo changes
-- Fixed some issues with the add of BeamTime values
-- Added a 1/30 factor to stockpiling weapons (seems like the lua wDef.stockpileTime is in frames while the weaponDefs uses seconds) Probably the 1/30 value in older versions wasnt a "min reloadtime" but the 1/30 factor for stockpile weapons with a typo

----v1.4 by Doo changes
-- Added beamtime to oRld value to properly count dps of BeamLaser weapons

---- v1.3 changes
-- Fix for 87.0
-- Added display of experience effect (when experience >25%)

---- v1.2 changes
-- Fixed drains for burst weapons (Removed 0.125 minimum)
-- Show remaining costs for units under construction

---- v1.1 changes
-- Added extra text to help explain numbers
-- Added grouping of duplicate weapons
-- Added sonar radius
-- Fixed radar/jammer detection
-- Fixed stockpiling unit drains
-- Fixed turnrate/acceleration scale
-- Fixed very low reload times

------------------------------------------------------------------------------------
-- Globals
------------------------------------------------------------------------------------
local fontSize = 13
local useSelection = true

local customFontSize = 13

local cX, cY

local vsx, vsy = gl.GetViewSizes()
local widgetScale = (0.60 + (vsx*vsy / 5000000))
local xOffset = (32 + (fontSize*0.9))*widgetScale
local yOffset = -((32 - (fontSize*0.9))*widgetScale)

------------------------------------------------------------------------------------
-- Speedups
------------------------------------------------------------------------------------

local bgcorner				= "LuaUI/Images/bgcorner.png"

local white = '\255\255\255\255'
local grey = '\255\190\190\190'
local green = '\255\1\255\1'
local yellow = '\255\255\255\1'
local orange = '\255\255\128\1'
local blue = '\255\128\128\255'
local red = '\255\255\128\128'

local metalColor = '\255\196\196\255' -- Light blue
local energyColor = '\255\255\255\128' -- Light yellow
local buildColor = '\255\128\255\128' -- Light green

local simSpeed = Game.gameSpeed

local max = math.max
local floor = math.floor
local ceil = math.ceil
local format = string.format
local char = string.char

local glColor = gl.Color
local glText = gl.Text
local glTexture = gl.Texture
local glRect = gl.Rect
local glTexRect = gl.TexRect

local spGetMyTeamID = Spring.GetMyTeamID
local spGetTeamResources = Spring.GetTeamResources
local spGetTeamInfo = Spring.GetTeamInfo
local spGetPlayerInfo = Spring.GetPlayerInfo
local spGetTeamColor = Spring.GetTeamColor
local spIsUserWriting = Spring.IsUserWriting
local spGetModKeyState = Spring.GetModKeyState
local spGetMouseState = Spring.GetMouseState
local spTraceScreenRay = Spring.TraceScreenRay
local spGetSelectedUnits = Spring.GetSelectedUnits
local spGetSelectedUnitsCount	= Spring.GetSelectedUnitsCount

local spGetUnitDefID = Spring.GetUnitDefID
local spGetUnitExp = Spring.GetUnitExperience
local spGetUnitHealth = Spring.GetUnitHealth
local spGetUnitTeam = Spring.GetUnitTeam
local spGetUnitExperience = Spring.GetUnitExperience
local spGetUnitSensorRadius = Spring.GetUnitSensorRadius
local spGetUnitWeaponState = Spring.GetUnitWeaponState

local uDefs = UnitDefs
local wDefs = WeaponDefs

local triggerKey = KEYSYMS.SPACE
local oldUnitpics = false

local myTeamID = Spring.GetMyTeamID
local spGetTeamRulesParam = Spring.GetTeamRulesParam
local spGetTooltip = Spring.GetCurrentTooltip

local vsx, vsy = Spring.GetViewGeometry()

local maxWidth = 0
local textBuffer = {}
local textBufferCount = 0

local spec = Spring.GetSpectatingState()


-- local gameName = Spring.GetGameName()
-- local activeGame = nil
-- local games = {
        -- [1]="Metal Factions", 
        -- [2]="BYAR", 
        -- [3]="BA"}
        
local powerTypeColors = {
	L = "\255\150\150\255", --~Blue
	M = "\255\160\140\50",  --~Brown
	H = "\255\200\110\100"  --~Red
}
local armorCatConversion = {
    default = orange.."Default", armor_light = powerTypeColors['L'].."Light", armor_medium = powerTypeColors['M'].."Medium", armor_heavy = powerTypeColors['H'].."Heavy"
}

------------------------------------------------------------------------------------
-- Functions
------------------------------------------------------------------------------------


function RectRound(px,py,sx,sy,cs)
	
	local px,py,sx,sy,cs = math.floor(px),math.floor(py),math.floor(sx),math.floor(sy),math.floor(cs)
	
	gl.Rect(px+cs, py, sx-cs, sy)
	gl.Rect(sx-cs, py+cs, sx, sy-cs)
	gl.Rect(px+cs, py+cs, px, sy-cs)
	
	gl.Texture(bgcorner)
	gl.TexRect(px, py+cs, px+cs, py)		-- top left
	gl.TexRect(sx, py+cs, sx-cs, py)		-- top right
	gl.TexRect(px, sy-cs, px+cs, sy)		-- bottom left
	gl.TexRect(sx, sy-cs, sx-cs, sy)		-- bottom right
	gl.Texture(false)
end

local function DrawText(t1, t2)
	textBufferCount = textBufferCount + 1
	textBuffer[textBufferCount] = {t1,t2,cX,cY}
	cY = cY - fontSize
	maxWidth = max(maxWidth, (gl.GetTextWidth(t1)*fontSize), (gl.GetTextWidth(t2)*fontSize)+(fontSize*6.5))
end

local function DrawTextBuffer()
	local num = #textBuffer
	for i=1, num do
		glText(textBuffer[i][1], textBuffer[i][3], textBuffer[i][4], fontSize, "o")
		glText(textBuffer[i][2], textBuffer[i][3] + (fontSize*6.5), textBuffer[i][4], fontSize, "o")
	end
end

local function GetTeamColorCode(teamID)

	if not teamID then return "\255\255\255\255" end

	local R, G, B = spGetTeamColor(teamID)

	if not R then return "\255\255\255\255" end

	R = floor(R * 255)
	G = floor(G * 255)
	B = floor(B * 255)

	if (R < 11) then R = 11	end -- Note: char(10) terminates string
	if (G < 11) then G = 11	end
	if (B < 11) then B = 11	end

	return "\255" .. char(R) .. char(G) .. char(B)
end

local function GetTeamName(teamID)

	if not teamID then return 'Error:NoTeamID' end

	local _, teamLeader = spGetTeamInfo(teamID)
	if not teamLeader then return 'Error:NoLeader' end

	local leaderName = spGetPlayerInfo(teamLeader)

    if Spring.GetGameRulesParam('ainame_'..teamID) then
        leaderName = Spring.GetGameRulesParam('ainame_'..teamID)
    end
	return leaderName or 'Error:NoName'
end

local guishaderEnabled = false	-- not a config var
function RemoveGuishader()
	if guishaderEnabled and WG['guishader_api'] ~= nil then
		WG['guishader_api'].RemoveRect('unit_stats_title')
		WG['guishader_api'].RemoveRect('unit_stats_data')
		guishaderEnabled = false
	end
end

------------------------------------------------------------------------------------
-- Code
------------------------------------------------------------------------------------

function widget:Initialize()
	WG['unitstats'] = {}
	WG['unitstats'].getOldUnitIcons = function()
		return oldUnitpics
	end
	WG['unitstats'].setOldUnitIcons = function(value)
		oldUnitpics = value
	end
    
    if Game.gameName ~= nil then Spring.Echo(red.."Game Detected: "..Game.gameName) else Spring.Echo("No Game Detected") end
    
    -- if gameName then --Identify Game. Oops, Game.gameName works just as well.
        -- for i,g in ipairs(games) do --for i=1, #games do
            -- activeGame = string.find(gameName, g)
            -- if activeGame then -- no longer Nil, as it found a match
                -- activeGame = games[i]
                -- Spring.Echo("Game: "..activeGame.." -via Unit Stats") --
                -- break -- match found, don't keep checking and setting activeGame to nil.
            -- end
            -- if (activeGame == nil) then Spring.Echo("Game Not Detected") end
        -- end
    -- end
    
	if (Spring.GetModOptions().unba or "disabled") == "enabled" then
		VFS.Include("unbaconfigs/stats.lua")
		unba = true
	end
	init()
end

function widget:Shutdown()
	WG['unitstats'] = nil
	RemoveGuishader()
end

function widget:PlayerChanged()
	spec = Spring.GetSpectatingState()
end

function init()
	vsx, vsy = gl.GetViewSizes()
	widgetScale = (0.60 + (vsx*vsy / 5000000))
	fontSize = customFontSize * widgetScale
	
	bgcornerSize = fontSize*0.45
	bgpadding = fontSize*0.9

	xOffset = (32 + bgpadding)*widgetScale
	yOffset = -((32 + bgpadding)*widgetScale)
end

function widget:ViewResize(x,y)
	init()
end

function widget:DrawScreen()
	local alt, ctrl, meta, shift = spGetModKeyState()
	if not meta or spIsUserWriting() then
		WG.hoverID = nil 
		RemoveGuishader() 
		return 
	end
	local mx, my = spGetMouseState()
	local uID
	local rType, unitID = spTraceScreenRay(mx, my)
	if rType == 'unit' then
		uID = unitID
	end
	if useSelection then
		local selUnits = spGetSelectedUnits()
		if #selUnits >= 1 then
			uID = selUnits[1]
		end
	end
	local useHoverID = false
	local _, activeID = Spring.GetActiveCommand()
	if not activeID then activeID = 0 end
	if not uID and (not WG.hoverID) and not (activeID < 0) then
		RemoveGuishader() return
	elseif WG.hoverID and not (activeID < 0) then
		uID = nil
		useHoverID = true
	elseif activeID < 0 then
		uID = nil
		useHoverID = false
	end
	local useExp = ctrl
	local uDefID = (uID and spGetUnitDefID(uID)) or (useHoverID and WG.hoverID) or (UnitDefs[-activeID] and -activeID)
	
	if not uDefID then
		RemoveGuishader() return
	end

	local uDef = uDefs[uDefID]
	local maxHP = uDef.health
    local baseHP = uDef.health
	local uTeam = Spring.GetMyTeamID()
	local losRadius = uDef.losRadius
	local airLosRadius = uDef.airLosRadius
	local radarRadius = uDef.radarRadius
	local sonarRadius = uDef.sonarRadius
	local jammingRadius = uDef.jammerRadius
	local sonarJammingRadius = uDef.sonarJamRadius
	local seismicRadius = uDef.seismicRadius
	local armoredMultiple = uDef.armoredMultiple
	if uID then
		uCurHp, _, _, _, buildProg = spGetUnitHealth(uID)
		maxHP = select(2,Spring.GetUnitHealth(uID))
		uTeam = spGetUnitTeam(uID)
		losRadius = spGetUnitSensorRadius(uID, 'los') or 0
		airLosRadius = spGetUnitSensorRadius(uID, 'airLos') or 0
		radarRadius = spGetUnitSensorRadius(uID, 'radar') or 0
		sonarRadius = spGetUnitSensorRadius(uID, 'sonar') or 0
		jammingRadius = spGetUnitSensorRadius(uID, 'radarJammer') or 0
		sonarJammingRadius = spGetUnitSensorRadius(uID, 'sonarJammer') or 0
		seismicRadius = spGetUnitSensorRadius(uID, 'seismic') or 0
		uExp = spGetUnitExperience(uID) -- This was "Local" and it fails to read properly then.
		armoredMultiple = select(2,Spring.GetUnitArmored(uID))

		local unbacom = unba and (UnitDefs[Spring.GetUnitDefID(uID)].name == "armcom" or UnitDefs[Spring.GetUnitDefID(uID)].name == "corcom")
		local _, xp = Spring.GetUnitExperience(uID)
		if unbacom then
			if xp then
				level = math.floor(xp*10) + 1
				if xp*10 >= 9.9 then level = 11 end
			else
				level = "unknown"
			end
		end
	end

	maxWidth = 0

	cX = mx + xOffset
	cY = my + yOffset
	cYstart = cY


	local titleFontSize = fontSize*1.12
	local cornersize = ceil(bgpadding*0.21)
	cY = cY - 2 * titleFontSize
	textBuffer = {}
	textBufferCount = 0

	------------------------------------------------------------------------------------
	-- Units under construction
	------------------------------------------------------------------------------------
	if buildProg and buildProg < 1 then

		local myTeamID = spGetMyTeamID()
		local mCur, mStor, mPull, mInc, mExp, mShare, mSent, mRec = spGetTeamResources(myTeamID, 'metal')
		local eCur, eStor, ePull, eInc, eExp, eShare, eSent, eRec = spGetTeamResources(myTeamID, 'energy')

		local mTotal = uDef.metalCost
		local eTotal = uDef.energyCost
		local buildRem = 1 - buildProg
		local mRem = mTotal * buildRem
		local eRem = eTotal * buildRem
		local mEta = (mRem - mCur) / (mInc + mRec)
		local eEta = (eRem - eCur) / (eInc + eRec)

		DrawText(grey .. "Prog:", format(white .. "%d%%", 100 * buildProg))
		DrawText(grey .. "Metal:", format(white .. "%d / %d (" .. yellow .. "%d" .. white .. ", %ds)", mTotal * buildProg, mTotal, mRem, mEta))
		DrawText(grey .. "Energy:", format(white .. "%d / %d (" .. yellow .. "%d" .. white .. ", %ds)", eTotal * buildProg, eTotal, eRem, eEta))
		-- DrawText(grey .. "ETA: ", format(white .. "%d", math.max(mEta, eEta))) --Need to track bt progress, add that as a max
        --DrawText("MaxBP:", format(white .. '%d', buildRem * uDef.buildTime / math.max(mEta, eEta)))
		cY = cY - fontSize
	end

	------------------------------------------------------------------------------------
	-- Generic information, cost, move, class
	------------------------------------------------------------------------------------

	--DrawText('Height:', uDefs[spGetUnitDefID(uID)].height)

	DrawText(grey .. "Cost:", format(metalColor .. '%d' .. white .. ' / ' ..
							energyColor .. '%d' .. white .. ' / ' ..
							buildColor .. '%d', uDef.metalCost, uDef.energyCost, uDef.buildTime)
			)

	if not (uDef.isBuilding or uDef.isFactory) then
		if not uID or not Spring.GetUnitMoveTypeData(uID) then
			DrawText(grey .. "Move:", white .. format("%.1f / %.1f / %.0f (Speed / Accel / Turn)", uDef.speed, 900 * uDef.maxAcc, simSpeed * uDef.turnRate * (180 / 32767)))
		else
			local mData = Spring.GetUnitMoveTypeData(uID)
			local mSpeed = mData.maxSpeed or uDef.speed
			local mAccel = mData.accRate or uDef.maxAcc
			local mTurnRate = mData.baseTurnRate or uDef.turnRate
			DrawText(grey .. "Move:", white .. format("%.1f / %.1f / %.0f (Speed / Accel / Turn)", mSpeed, 900 * mAccel, simSpeed * mTurnRate * (180 / 32767)))
		end
	end


	if unbacom then
		local buildSpeed = BuildSpeed[level] or uDef.buildSpeed
		DrawText(grey .. 'Build:', yellow .. buildSpeed)
		if uID then
			DrawText(grey .. 'Level:', green .. level)
		end
	elseif uDef.buildSpeed > 0 then
		DrawText(grey .. 'Build:', yellow .. uDef.buildSpeed)
	end
    
    if uID then
        if uExp == nil then
            DrawText(grey .. "Experience: ", format(red .. "%f", 0))
        else
            DrawText(grey .. "Experience: ", format(red .. "%f", uExp*1000)) -- Multiplied by 1k to avoid decimals.
        end
    end

	cY = cY - fontSize

	------------------------------------------------------------------------------------
	-- Sensors and Jamming
	------------------------------------------------------------------------------------

	DrawText(grey .. 'LoS:', white .. losRadius .. (airLosRadius > losRadius and format(' (AirLos: %d)', airLosRadius) or ''))

	if radarRadius   > 0 then DrawText(grey .. 'Radar:', '\255\77\255\77' .. radarRadius) end
	if sonarRadius   > 0 then DrawText(grey .. 'Sonar:', '\255\128\128\255' .. sonarRadius) end
	if jammingRadius > 0 then DrawText(grey .. 'Jam:'  , '\255\255\77\77' .. jammingRadius) end
	if sonarJammingRadius > 0 then DrawText(grey .. 'Sonar Jam:', '\255\255\77\77' .. sonarJammingRadius) end
	if seismicRadius > 0 then DrawText(grey .. 'Seismic:' , '\255\255\26\255' .. seismicRadius) end

    -- SnC = ""
    -- if uDef.stealth then SnC = SnC .. "Stealth " end
    -- if uDef.canCloak then SnC = SnC .. "Cloaks" end
    -- if SnC ~= "" then DrawText (grey.."Other:", white..SnC) end
	if uDef.stealth then DrawText(grey .. "Other:", white .. "Stealth") end
    if uDef.canCloak then DrawText(grey .. "Other:", white .. "Cloaks") end
    if uDef.wantedHeight and uDef.wantedHeight > 0 then DrawText(grey .. "Altitude: ", white .. uDef.wantedHeight) end

	cY = cY - fontSize

	------------------------------------------------------------------------------------
	-- Armor
	------------------------------------------------------------------------------------

    if armorCatConversion[Game.armorTypes[uDef.armorType]] then
        DrawText(grey .. "Armor:", white .. armorCatConversion[Game.armorTypes[uDef.armorType or 0]] or '???')
    else
        DrawText(grey .. "Armor:", white .. "class " .. Game.armorTypes[uDef.armorType or 0] or '???') --default fallback
    end


    if maxHP then
        DrawText(grey .. "Base HP:", green .. format("%d", baseHP))
    end
    
	if uID and uExp ~= 0 then
		if maxHP then
			DrawText(grey .. "Exp:", white .. format("+%d%% health -> %d HP", (maxHP/uDef.health-1)*100, maxHP))
		else
			DrawText(grey .. "Exp:                 unknown",'\255\255\77\77')
		end
	end
    
	if armoredMultiple and armoredMultiple ~= 1 then
		DrawText(grey .. "Armored:", white .. format("+%d%% -> %d Effective HP", (1/armoredMultiple-1) *100,maxHP/armoredMultiple))
	end

	cY = cY - fontSize

	------------------------------------------------------------------------------------
	-- Weapons
	------------------------------------------------------------------------------------
	local wepCounts = {} -- wepCounts[wepDefID] = #
	local wepsCompact = {} -- uWepsCompact[1..n] = wepDefID
	if unbacom then
		if uDef.weapons[level] and uDef.weapons[level + 11] and uDef.weapons[30] then
			uWeps = {uDef.weapons[level], uDef.weapons[level + 11], uDef.weapons[30]}
		else
			uWeps = uDef.weapons
		end
	else
		uWeps = uDef.weapons
	end
	local weaponNums = {}
	for i = 1, #uWeps do
		local wDefID = uWeps[i].weaponDef
		local wCount = wepCounts[wDefID]
		if wCount then
			wepCounts[wDefID] = wCount + 1
		else
			wepCounts[wDefID] = 1
			wepsCompact[#wepsCompact + 1] = wDefID
			weaponNums[#wepsCompact] = i
		end
	end

	if unbacom then
		weaponNums = { level, level + 11, 30}
	end

	local selfDWeaponID = WeaponDefNames[uDef.selfDExplosion].id
	local deathWeaponID = WeaponDefNames[uDef.deathExplosion].id
	local selfDWeaponIndex
	local deathWeaponIndex

	if shift then
		wepCounts = {}
		wepsCompact = {}
		wepCounts[selfDWeaponID] = 1
		wepCounts[deathWeaponID] = 1
		deathWeaponIndex = #wepsCompact+1
		wepsCompact[deathWeaponIndex] = deathWeaponID
		selfDWeaponIndex = #wepsCompact+1
		wepsCompact[selfDWeaponIndex] = selfDWeaponID
	end

	for i = 1, #wepsCompact do

		local wDefId = wepsCompact[i]
		local uWep = wDefs[wDefId]

		if uWep.customParams and uWep.customParams.def then
			uWep = wDefs[WeaponDefNames[uWep.customParams.def].id]
		end
		if uWep.range > 0 then
			local oBurst = uWep.salvoSize * uWep.projectiles
			local oRld = max(0.00000000001,uWep.stockpile == true and uWep.stockpileTime/30 or uWep.reload)
			if uID and useExp and not ((uWep.stockpile and uWep.stockpileTime)) then
				oRld = spGetUnitWeaponState(uID,weaponNums[i] or -1,"reloadTimeXP") or spGetUnitWeaponState(uID,weaponNums[i] or -1,"reloadTime") or oRld
			end
			local wepCount = wepCounts[wDefId]

			local typeName =  uWep.type
			local wpnName = uWep.description
			if i == deathWeaponIndex then
				wpnName = "Death explosion"
				oRld = 1
			elseif i == selfDWeaponIndex then
				wpnName = "Self Destruct"
				oRld = uDef.selfDCountdown
			end
			if wepCount > 1 then
				DrawText(grey .. "Weap:", format(yellow .. "%dx" .. white .. " %s", wepCount, wpnName))
			else
				DrawText(grey .. "Weap:", white .. wpnName)
			end

			local reload = uWep.reload
			local accuracy = uWep.accuracy
			local moveError = uWep.targetMoveError
			local range = uWep.range
			local accuracyBonus = accuracy ~= 0 and (uWep.accuracy/accuracy-1) or 0
			local moveErrorBonus = moveError ~= 0 and (uWep.targetMoveError/moveError-1) or 0
			local reloadBonus = reload ~= 0 and (uWep.reload/reload-1) or 0
			if uID then
				reload = spGetUnitWeaponState(uID,weaponNums[i] or -1,"reloadTimeXP") or spGetUnitWeaponState(uID,weaponNums[i] or -1,"reloadTime") or uWep.reload
				accuracy = spGetUnitWeaponState(uID,weaponNums[i] or -1,"accuracy") or uWep.accuracy
				moveError = spGetUnitWeaponState(uID,weaponNums[i] or -1,"targetMoveError") or uWep.targetMoveError
				range = spGetUnitWeaponState(uID,weaponNums[i] or -1,"range") or uWep.range
			end

			if unbacom then
				if i == 1 then
					range = Range[level]
				elseif i == 2 then
					range = Range2[level]
				end
			end

			local rangeBonus = range ~= 0 and (range/uWep.range-1) or 0
			if uExp ~= 0 and Game.gameName ~= "Metal Factions" then -- Metal Factions doesn't use exp this way, doesn't need it.
				DrawText(grey .. "Exp:", white .. format("+%d%% accuracy, +%d%% aim, +%d%% firerate, +%d%% range", accuracyBonus*100, moveErrorBonus*100, reloadBonus*100, rangeBonus*100 ))
			end
			local infoText = ""
			if wpnName == "Death explosion" or wpnName == "Self Destruct" then
				infoText = white .. format("%d aoe (r), %d%% edge", uWep.damageAreaOfEffect, 100 * uWep.edgeEffectiveness)
			else
				infoText = white .. format("%d Range, %d AoE (r), %d%% Edge, %d Velocity", useExp and range or uWep.range, uWep.damageAreaOfEffect, 100 * uWep.edgeEffectiveness, uWep.projectilespeed*30)
			end
            if uWep.selfExplode == true then
                infoText = white .. format("%s, Burnblow", infoText)
            end
			if uWep.damages.paralyzeDamageTime > 0 then
				infoText = white .. format("%s, %ds Paralyze", infoText, uWep.damages.paralyzeDamageTime)
			end
			if uWep.damages.impulseBoost > 0 then
				infoText = white .. format("%s, %d Impulse", infoText, uWep.damages.impulseBoost*100) --? This seems inaccurate
			end
			if uWep.damages.craterBoost > 0 then
				infoText = white .. format("%s, %d Crater", infoText, uWep.damages.craterBoost*100)
			end
			DrawText(grey .. "Info:", infoText)

			local defaultDamage = uWep.damages[0] -- damages is a table, as defined on the weaponDef.
            local catStart = 0
            if (Game.gameName == "Metal Factions") then catStart = 1 end -- Skip over Default
			for cat=catStart, #uWep.damages do -- 
				local oDmg = uWep.damages[cat] -- a damage number
				local catName = Game.armorTypes[cat] -- a string for the armor type. Game.armorTypes is a table of them, but only "default" exists by...default.
				--if armorCatConversion[catName] and oDmg and (oDmg ~= defaultDamage or cat == 0) then     --OG line check, to avoid "duplicates"
                if armorCatConversion[catName] and oDmg and string.lower(wpnName) ~= "energy shield" then --Avoid listing "energy shield" (shield defined as a weapon, cause engine)
					local dmgString
					if oBurst > 1 then
						dmgString = format(yellow.. "%d (x%d)" ..white.. " / " ..yellow.. "%.2f\s" ..white.. " = " ..orange.. "%.2f" ..yellow.. " \d\p\s", oDmg, oBurst, oRld, oBurst * oDmg / oRld)
					else
						dmgString = format(yellow.. "%d" ..white.. " / " ..yellow.. "%.2f\s" ..white.. " = " ..orange.. "%.2f" ..yellow.. " \d\p\s", oDmg, oRld, oDmg / oRld)
					end

					if wepCount > 1 then
						dmgString = dmgString .. white .. " (Each)"
					end

					dmgString = dmgString .. white .. " (" .. armorCatConversion[catName] .. ")"
                    
                    --if catName == "default" then catName = nil end
                    
					if catName ~= Nil then DrawText(grey .. "Dmg:", dmgString) end
				end
			end

			if uWep.metalCost > 0 or uWep.energyCost > 0 then

				-- Stockpiling weapons are weird
				-- They take the correct amount of resources overall
				-- They take the correct amount of time
				-- They drain ((simSpeed+2)/simSpeed) times more resources than they should (And the listed drain is real, having lower income than listed drain WILL stall you)
				local drainAdjust = uWep.stockpile and (simSpeed+2)/simSpeed or 1

				DrawText(grey .. 'Cost:', format(metalColor .. '%d' .. white .. ', ' ..
										 energyColor .. '%d' .. white .. ' = ' ..
										 metalColor .. '-%d' .. white .. ', ' ..
										 energyColor .. '-%d' .. white .. ' per second',
										 uWep.metalCost,
										 uWep.energyCost,
										 drainAdjust * uWep.metalCost / oRld,
										 drainAdjust * uWep.energyCost / oRld))
			end


			cY = cY - fontSize
		end
	end

	-- background
	if WG.hoverID ~= nil then
		glColor(0.11,0.11,0.11,0.9)
	else
		glColor(0,0,0,0.66)
	end

	-- correct position when it goes below screen
	if cY < 0 then
		cYstart = cYstart - cY
		local num = #textBuffer
		for i=1, num do
			textBuffer[i][4] = textBuffer[i][4] - (cY/2)
			textBuffer[i][4] = textBuffer[i][4] - (cY/2)
		end
		cY = 0
	end
	-- correct position when it goes off screen
	if cX + maxWidth+bgpadding+bgpadding > vsx then
		local cXnew = vsx-maxWidth-bgpadding-bgpadding
		local num = #textBuffer
		for i=1, num do
			textBuffer[i][3] = textBuffer[i][3] - ((cX-cXnew)/2)
			textBuffer[i][3] = textBuffer[i][3] - ((cX-cXnew)/2)
		end
		cX = cXnew
	end

	-- title
	local text = "\255\190\255\190" .. uDef.humanName
	if uID then
		text = text .. "   " ..  grey ..  uDef.name .. "   #" .. uID .. "   "..GetTeamColorCode(uTeam) .. GetTeamName(uTeam)
	end
	local iconHalfSize = titleFontSize*0.75
	if not uID then
		iconHalfSize = -bgpadding/2.5
	end
	cornersize = 0
	if not uID then
		glColor(0.11,0.11,0.11,0.9)
	else
		glColor(0,0,0,0.75)
	end
	RectRound(cX-bgpadding+cornersize, cYstart-bgpadding+cornersize, cX+(gl.GetTextWidth(text)*titleFontSize)+iconHalfSize+iconHalfSize+bgpadding+(bgpadding/1.5)-cornersize, cYstart+(titleFontSize/2)+bgpadding-cornersize, bgcornerSize)
	cornersize = ceil(bgpadding*0.21)
	glColor(1,1,1,0.025)
	RectRound(cX-bgpadding+cornersize, cYstart-bgpadding+cornersize, cX+(gl.GetTextWidth(text)*titleFontSize)+iconHalfSize+iconHalfSize+bgpadding+(bgpadding/1.5)-cornersize, cYstart+(titleFontSize/2)+bgpadding-cornersize, bgcornerSize)

	if (WG['guishader_api'] ~= nil) then
		guishaderEnabled = true
		WG['guishader_api'].InsertRect(cX-bgpadding+1, cYstart-bgpadding+1, cX+(gl.GetTextWidth(text)*titleFontSize)+bgpadding-1, cYstart+(titleFontSize/2)+bgpadding-1, 'unit_stats_title')
	end

	-- icon
	if uID then
		glColor(1,1,1,1)
		glTexture('#' .. uDefID)
		glTexRect(cX, cYstart+cornersize-iconHalfSize, cX+iconHalfSize+iconHalfSize, cYstart+cornersize+iconHalfSize)
		glTexture(false)
	end

	-- title text
	glColor(1,1,1,1)
	glText(text, cX+iconHalfSize+iconHalfSize+(bgpadding/1.5), cYstart, titleFontSize, "o")

	-- stats
	cornersize = 0
	if not uID then
		glColor(0.11,0.11,0.11,0.9)
	else
		glColor(0,0,0,0.75)
	end
	RectRound(floor(cX-bgpadding)+cornersize, ceil(cY+(fontSize/3)+bgpadding)+cornersize, ceil(cX+maxWidth+bgpadding)-cornersize, floor(cYstart-bgpadding)-cornersize, bgcornerSize)
	cornersize = ceil(bgpadding*0.16)
	glColor(1,1,1,0.025)
	RectRound(floor(cX-bgpadding)+cornersize, ceil(cY+(fontSize/3)+bgpadding)+cornersize, ceil(cX+maxWidth+bgpadding)-cornersize, floor(cYstart-bgpadding)-cornersize, bgcornerSize)

	DrawTextBuffer()

	if (WG['guishader_api'] ~= nil) then
		guishaderEnabled = true
		WG['guishader_api'].InsertRect(cX-bgpadding, cY+(fontSize/3)+bgpadding, cX+maxWidth+bgpadding, cYstart-bgpadding, 'unit_stats_data')
	end
------------------------------------------------------------------------------------
end