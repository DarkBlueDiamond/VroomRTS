--Stunburstdeath
--smallunitdeath
--Mediumdeath
--Commanderdeath
--Geothermaldeath
--Factorydeath
--BBdeath
--smallairdeath
--mediumairdeath
--VolcanoDeath
 --volcanoshock
return {
--Stunburstdeath
    ["Stunburstdeath"] = {
	usedefaultexplosions = false,
        groundflash = {
		
            circlealpha        = 1,
            circlegrowth       = 3,
            flashalpha         = 0.9,
            flashsize          = 30, --30
            ttl                = 12,
            color = {
                [1]  = 1,
                [2]  = 0.95,
                [3]  = 0.4,
            },
        },
        mainhit = {
            air                = true,
            class              = [[heatcloud]],
            count              = 1,
            ground             = true,
            water              = true,
			underwater         = true,
            properties = {
                heat               = 9,
                heatfalloff        = 1,
                maxheat            = 9,
                pos                = [[0, 1, 0]],
                size               = 12, 
                sizegrowth         = 1, 
                speed              = [[0, 1, 0]],
                texture            = [[heatcloud]],
            },
        },
		explosionsphere  = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        alpha              = 0.5,
        color              = [[1,0.95,0.4]],
        expansionspeed     = 3,
        ttl                = 12,
	},
   },
  },
  --smallunitdeath
  ["Smalldeath"] = {
	usedefaultexplosions = false,
        groundflash = {
		
            circlealpha        = 1,
            circlegrowth       = 3,
            flashalpha         = 0.9,
            flashsize          = 35, --30
            ttl                = 16,
            color = {
                [1]  = 1,
                [2]  = 0.95,
                [3]  = 0.4,
            },
        },
        mainhit = {
            air                = true,
            class              = [[heatcloud]],
            count              = 1,
            ground             = true,
            water              = true,
			underwater         = true,

            properties = {
                heat               = 11,
                heatfalloff        = 1,
                maxheat            = 11,
                pos                = [[0, 1, 0]],
                size               = 14, 
                sizegrowth         = 1, 
                speed              = [[0, 1, 0]],
                texture            = [[heatcloud]],
            },
        },
		explosionsphere  = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        alpha              = 0.5,
        color              = [[1,0.95,0.4]],
        expansionspeed     = 3.2,
        ttl                = 16,
	},
   },
  },
  --Mediumdeath
  ["Mediumdeath"] = {
	usedefaultexplosions = false,
        groundflash = {
		
            circlealpha        = 1,
            circlegrowth       = 4,
            flashalpha         = 0.9,
            flashsize          = 45, --30
            ttl                = 20,
            color = {
                [1]  = 1,
                [2]  = 0.95,
                [3]  = 0.4,
            },
        },
        mainhit = {
            air                = true,
            class              = [[heatcloud]],
            count              = 1,
            ground             = true,
            water              = true,
			underwater         = true,
            properties = {
                heat               = 16,
                heatfalloff        = 1,
                maxheat            = 16,
                pos                = [[0, 1, 0]],
                size               = 20, 
                sizegrowth         = 1.2, 
                speed              = [[0, 1, 0]],
                texture            = [[heatcloud]],
            },
        },
		explosionsphere  = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        alpha              = 0.5,
        color              = [[1,0.95,0.4]],
        expansionspeed     = 4,
        ttl                = 18,
	},
   },
  },
  --Commanderdeath
  ["Commanderdeath"] = {
	usedefaultexplosions = false,
        groundflash = {
		
            circlealpha        = 1,
            circlegrowth       = 4,
            flashalpha         = 0.9,
            flashsize          = 55, --30
            ttl                = 20,
            color = {
                [1]  = 1,
                [2]  = 0.95,
                [3]  = 0.4,
            },
        },
        mainhit = {
            air                = true,
            class              = [[heatcloud]],
            count              = 1,
            ground             = true,
            water              = true,
			underwater         = true,
            properties = {
                heat               = 20,
                heatfalloff        = 1,
                maxheat            = 20,
                pos                = [[0, 1, 0]],
                size               = 22, 
                sizegrowth         = 1.2, 
                speed              = [[0, 1, 0]],
                texture            = [[heatcloud]],
            },
        },
		explosionsphere  = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        alpha              = 0.5,
        color              = [[1,0.95,0.4]],
        expansionspeed     = 6,
        ttl                = 14,
	},
   },
  },
  --Geothermaldeath
   ["Geothermaldeath"] = {
	usedefaultexplosions = false,
        groundflash = {
		
            circlealpha        = 1,
            circlegrowth       = 6,
            flashalpha         = 0.9,
            flashsize          = 80, --30
            ttl                = 22,
            color = {
                [1]  = 1,
                [2]  = 0.95,
                [3]  = 0.4,
            },
        },
        mainhit = {
            air                = true,
            class              = [[heatcloud]],
            count              = 1,
            ground             = true,
            water              = true,
			underwater         = true,
            properties = {
                heat               = 24,
                heatfalloff        = 1,
                maxheat            = 24,
                pos                = [[0, 1, 0]],
                size               = 40, 
                sizegrowth         = 1.2, 
                speed              = [[0, 1, 0]],
                texture            = [[heatcloud]],
            },
        },
		explosionsphere  = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        alpha              = 0.5,
        color              = [[1,0.95,0.4]],
        expansionspeed     = 6.75,
        ttl                = 26,
	},
   },
  },
  --Factorydeath
  ["Factorydeath"] = {
	usedefaultexplosions = false,
        groundflash = {
		
            circlealpha        = 1,
            circlegrowth       = 4,
            flashalpha         = 0.9,
            flashsize          = 112, --30
            ttl                = 22,
            color = {
                [1]  = 1,
                [2]  = 0.95,
                [3]  = 0.4,
            },
        },
        mainhit = {
            air                = true,
            class              = [[heatcloud]],
            count              = 1,
            ground             = true,
            water              = true,
			underwater         = true,
            properties = {
                heat               = 48,
                heatfalloff        = 1,
                maxheat            = 48,
                pos                = [[0, 1, 0]],
                size               = 64, 
                sizegrowth         = 1.3, 
                speed              = [[0, 1, 0]],
                texture            = [[heatcloud]],
            },
        },
		explosionsphere  = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        alpha              = 0.5,
        color              = [[1,0.95,0.4]],
        expansionspeed     = 7,
        ttl                = 32,
	},
   },
  },
  --BBdeath
  ["BBdeath"] = {
	usedefaultexplosions = false,
        groundflash = {
		
            circlealpha        = 1,
            circlegrowth       = 12,
            flashalpha         = 0.9,
            flashsize          = 600, --30
            ttl                = 60,
            color = {
                [1]  = 1,
                [2]  = 0.95,
                [3]  = 0.4,
            },
        },
        mainhit = {
            air                = true,
            class              = [[heatcloud]],
            count              = 1,
            ground             = true,
            water              = true,
			underwater         = true,
            properties = {
                heat               = 168,
                heatfalloff        = 1,
                maxheat            = 168,
                pos                = [[0, 1, 0]],
                size               = 108, 
                sizegrowth         = 1.5, 
                speed              = [[0, 1, 0]],
                texture            = [[heatcloud]],
            },
        },
		explosionsphere  = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        alpha              = 0.5,
        color              = [[1,0.95,0.4]],
        expansionspeed     = 11,
        ttl                = 58,
	},
   },
  },
   --volcanodeath
  ["volcanodeath"] = {
	usedefaultexplosions = false,
        groundflash = {
		
            circlealpha        = 1,
            circlegrowth       = 14,
            flashalpha         = 0.9,
            flashsize          = 800, --30
            ttl                = 60,
            color = {
                [1]  = 1,
                [2]  = 0.95,
                [3]  = 0.4,
            },
        },
        mainhit = {
            air                = true,
            class              = [[heatcloud]],
            count              = 1,
            ground             = true,
            water              = true,
			underwater         = true,
            properties = {
                heat               = 200,
                heatfalloff        = 1,
                maxheat            = 200,
                pos                = [[0, 1, 0]],
                size               = 65, 
                sizegrowth         = 1.5, 
                speed              = [[0, 1, 0]],
                texture            = [[heatcloud]],
            },
        },
		explosionsphere  = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        alpha              = 0.5,
        color              = [[1,0.95,0.4]],
        expansionspeed     = 12,
        ttl                = 60,
	},
   },
  },
   --volcanoshock
  ["volcanoshock"] = {
	usedefaultexplosions = false,
		explosionsphere  = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
	  underwater         = true,
      properties = {
        alpha              = 0.1,
        color              = [[1,1,1]],
        expansionspeed     = 20,
        ttl                = 60,
	},
   },
  },
  --smallairdeath
  ["Smallairdeath"] = {
	usedefaultexplosions = false,
        mainhit = {
            air                = true,
            class              = [[heatcloud]],
            count              = 1,
            ground             = true,
            water              = true,
			
            properties = {
                heat               = 11,
                heatfalloff        = 1,
                maxheat            = 11,
                pos                = [[0, 0, 0]],
                size               = 14, 
                sizegrowth         = 1, 
                speed              = [[0, 0.5, 0]],
                texture            = [[heatcloud]],
            },
        },
		explosionsphere  = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
	  
      properties = {
        alpha              = 0.5,
        color              = [[1,0.95,0.4]],
        expansionspeed     = 3.2,
        ttl                = 16,
	},
   },
  },
  --mediumairdeath
  ["Mediumairdeath"] = {
	usedefaultexplosions = false,
        mainhit = {
            air                = true,
            class              = [[heatcloud]],
            count              = 1,
            ground             = true,
            water              = true,

            properties = {
                heat               = 17,
                heatfalloff        = 1,
                maxheat            = 17,
                pos                = [[0, 1, 0]],
                size               = 20, 
                sizegrowth         = 1.2, 
                speed              = [[0, 1, 0]],
                texture            = [[heatcloud]],
            },
        },
		explosionsphere  = {
      air                = true,
      class              = [[CSpherePartSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
	  
      properties = {
        alpha              = 0.5,
        color              = [[1,0.95,0.4]],
        expansionspeed     = 4.25,
        ttl                = 18,
	},
   },
  },
 }
