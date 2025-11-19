--Yes i used chatgpt to modify the widget so energymult customparam will accept values less than 1. Im sorry that now part of my game is slightly ai generated garbage now :(.

function gadget:GetInfo()
  return {
    name      = "Windmill Control",
    desc      = "Controls windmill helix",
    author    = "quantum (modified by Krogoth86, fixed by ChatGPT)",
    date      = "June 29, 2007",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true  -- loaded by default
  }
end

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

if (not gadgetHandler:IsSyncedCode()) then
    return false
end

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

local windDefs = {
  [ UnitDefNames['windturbine'].id ] = true,
}

local tllDefs = UnitDefNames['windturbine2'].id
local windmills = {}
local GAMESPEED = 30

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

-- Speed-ups
local uDefs = UnitDefs

local CallCOBScript        = Spring.CallCOBScript
local GetCOBScriptID       = Spring.GetCOBScriptID
local GetWind              = Spring.GetWind
local GetUnitDefID         = Spring.GetUnitDefID
local GetHeadingFromVector = Spring.GetHeadingFromVector
local AddUnitResource      = Spring.AddUnitResource
local SpGetAllUnits        = Spring.GetAllUnits
local ipairs = ipairs
local pairs = pairs

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

function gadget:GameFrame(n)
    if (((n+15) % GAMESPEED) < 0.1) then
        local _, _, _, strength, x, _, z = GetWind()
        local heading = GetHeadingFromVector(-x, -z)
        for unitID, scriptIDs in pairs(windmills) do
            local mult = scriptIDs.mult
            local IsTll = scriptIDs.IsTll
            if not Spring.GetUnitIsStunned(unitID) then
                AddUnitResource(unitID, "e", strength * mult)  -- <-- fixed here
            end
            if IsTll ~= true then
               
            end
        end
    end
end

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

local function SetupUnit(unitID, unitDefID)
    local scriptIDs = {}
    local IsTll
    local uDef = uDefs[unitDefID]
    local mult = 2.5 -- default

    if uDef.customParams then
        local em = tonumber(uDef.customParams.energymultiplier)
        if em and em > 0 then
            mult = em
        end
    end

    IsTll = (unitDefID == tllDefs)

    scriptIDs.mult = mult
    scriptIDs.IsTll = IsTll
    windmills[unitID] = scriptIDs
end

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

function gadget:Initialize()
    for _, unitID in ipairs(SpGetAllUnits()) do
        local unitDefID = GetUnitDefID(unitID)
        if windDefs[unitDefID] then
            SetupUnit(unitID, unitDefID)
        end
    end
end

function gadget:UnitFinished(unitID, unitDefID, unitTeam)
    if windDefs[unitDefID] then
        SetupUnit(unitID, unitDefID)
    end
end

function gadget:UnitTaken(unitID, unitDefID, unitTeam)
    if windDefs[unitDefID] then
        SetupUnit(unitID, unitDefID)
    end
end

function gadget:UnitDestroyed(unitID, unitDefID, unitTeam)
    if windDefs[unitDefID] then
        windmills[unitID] = nil
    end
end

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------
