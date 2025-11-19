--hunter
--skeeter
--ravager
--mangonel
--swatter
--bb
--geothermalplasmacannon
--vanguard
--catapult
--builder
return {
--hunter
	["huntermuzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[1 0.95 0.4 0.01   1 0.8 0.35 0.01   1 0.5 0.2 0.01   0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[muzzlefront]],
        length             = 25,
        sidetexture        = [[muzzleside]],
        size               = 3,
        sizegrowth         = -1,
        ttl                = 15,
      },
    },
  },
--skeeter
	["skeetermuzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[1 0.95 0.4 0.01   1 0.8 0.35 0.01   1 0.5 0.2 0.01   0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[muzzlefront]],
        length             = 17.5,
        sidetexture        = [[muzzleside]],
        size               = 4,
        sizegrowth         = -1,
        ttl                = 15,
      },
    },
  },
  --ravager
	["ravagermuzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[1 0.5 0.5 0.01   0.85 0.4 0.4 0.01   0.7 0.3 0.3 0.01   0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[muzzlefront]],
        length             = 25,
        sidetexture        = [[muzzleside]],
        size               = 5,
        sizegrowth         = -1,
        ttl                = 15,
      },
    },
  },
   --mangonel
	["mangonelmuzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[1 0.8 0.4 0.01   0.9 0.7 0.35 0.01   0.8 0.6 0.3 0.01   0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[muzzlefront]],
        length             = 30,
        sidetexture        = [[muzzleside]],
        size               = 9,
        sizegrowth         = -1.2,
        ttl                = 15,
      },
    },
  },
   --bb
	["bbmuzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[1 0.95 0.4 0.01   1 0.8 0.35 0.01   1 0.5 0.2 0.01   0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[muzzlefront]],
        length             = 175,
        sidetexture        = [[muzzleside]],
        size               = 35,
        sizegrowth         = -2,
        ttl                = 35,
      },
    },
  },
    --volcano
	["volcanomuzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.8 0.65 0.4 0.01   0.75 0.5 0.35 0.01   0.6 0.4 0.2 0.01   0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[muzzlefront]],
        length             = 200,
        sidetexture        = [[muzzleside]],
        size               = 42,
        sizegrowth         = -2,
        ttl                = 38,
      },
    },
  },
  --swatter
  ["swattermuzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[0.85 0.75 0.4 0.01   0.70 0.65 0.35 0.01   0.6 0.5 0.2 0.01   0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[muzzlefront]],
        length             = 18,
        sidetexture        = [[muzzleside]],
        size               = 2,
        sizegrowth         = -0.75,
        ttl                = 15,
      },
    },
  },
  --geothermalplasmacannon
	["geothermalmuzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[1 0.95 0.4 0.01   1 0.8 0.35 0.01   1 0.5 0.2 0.01   0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[muzzlefront]],
        length             = 125,
        sidetexture        = [[muzzleside]],
        size               = 25,
        sizegrowth         = -2,
        ttl                = 35,
      },
    },
  },
  --catapult
  ["catapultmuzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[1 0.95 0.4 0.01   1 0.8 0.35 0.01   1 0.5 0.2 0.01   0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[muzzlefront]],
        length             = 25,
        sidetexture        = [[muzzleside]],
        size               = 4,
        sizegrowth         = -1,
        ttl                = 16,
      },
    },
  },
  --vanguard
  ["vanguardmuzzleflash"] = {
    bitmapmuzzleflame = {
      air                = true,
      class              = [[CBitmapMuzzleFlame]],
      count              = 1,
      ground             = true,
      underwater         = 1,
      water              = true,
      properties = {
        colormap           = [[1 0.5 0.5 0.01   0.85 0.4 0.4 0.01   0.7 0.3 0.3 0.01   0 0 0 0.01]],
        dir                = [[dir]],
        frontoffset        = 0,
        fronttexture       = [[muzzlefront]],
        length             = 30,
        sidetexture        = [[muzzleside]],
        size               = 5.5,
        sizegrowth         = -1,
        ttl                = 16,
      },
    },
  },
  --builder
  ["buildermuzzleflash"] = {
  Effect = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        heat               = 10, --8
        heatfalloff        = 1,
        maxheat            = 10, --8
        pos                = [[0, 0, 0]],
        size               = 12,
        sizegrowth         = 0.5, 
        speed              = [[0, 0, 0]],
        texture            = [[flare]],
      },
	},
	},
}
