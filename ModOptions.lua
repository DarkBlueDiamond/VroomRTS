-- Wiki: http://springrts.com/wiki/Modoptions.lua

--  Custom Options Definition Table format

--  NOTES:
--  - using an enumerated table lets you specify the options order

--
--  These keywords must be lowercase for LuaParser to read them.
--
--  key:      the string used in the script.txt
--  name:     the displayed name
--  desc:     the description (could be used as a tooltip)
--  type:     the option type
--  def:      the default value;
--  min:      minimum value for number options
--  max:      maximum value for number options
--  step:     quantization step, aligned to the def value
--  maxlen:   the maximum string length for string options
--  items:    array of item strings for list options
--  scope:    "all", "player", "team", "allyteam"      <<< not supported yet >>>


--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
local options = {
	{
		key  = "startmetal ",
		name = "Starting Metal",
		desc = "Sets storage and amount of Metal that players will start with",
		type = "number",
		section = "resources",
		def    = 1000,
		min    = 1,
		max    = 40000,
		step   = 1,
	},
	{
		key  = "startenergy",
		name = "Starting Metal",
		desc = "Sets storage and amount of Energy that players will start with",
		type = "number",
		section = "resources",
		def    = 1000,
		min    = 1,
		max    = 40000,
		step   = 1,
	},
}

return options
