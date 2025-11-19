--------------------------------------------------------------------------------
--------------------------------------------------------------------------------


local stealthDefs = {
  panther = {
    draw   = true,
    init   = false,
    energy = 1.6,
    delay  = 30,
  },
   alpha = {
    draw   = true,
    init   = false,
    energy = 6,
    delay  = 10,
  },
  
}


if (Spring.IsDevLuaEnabled()) then
  for k,v in pairs(UnitDefNames) do
    stealthDefs[k] = {
      init   = false,
      energy = v.metalCost * 0.5,
      draw   = true
    }
  end
end


return stealthDefs


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
