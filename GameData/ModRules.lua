--Wiki: http://springrts.com/wiki/Modrules.lua

local modRules = {
	 construction = {
    constructionDecay      = false; -- defaults to true
    constructionDecayTime  = 6.66;  -- defaults to 6.66
    constructionDecaySpeed = 0.03;  -- defaults to 0.03
  },

  damage = {
    debris = 20,
  },

  reclaim = {
    multiReclaim  = 1;    -- defaults to 0
    reclaimMethod = 0;    -- defaults to 1
    unitMethod    = 0;    -- defaults to 1
    unitDrainHealth = false,

    unitEnergyCostFactor    = 0;  -- defaults to 0
    unitEfficiency          = 0.8;  -- defaults to 1
    featureEnergyCostFactor = 0;  -- defaults to 0

    allowEnemies  = false;  -- defaults to true
    allowAllies   = false;  -- defaults to true
  },


  repair = {
    energyCostFactor = 0.67,  -- defaults  0
  },


  resurrect = {
    energyCostFactor = 2,  -- defaults  0.5
  },


  capture = {
    energyCostFactor = 1,  -- defaults  0
  },

	flankingBonus = {
		defaultMode					=	0,
	},
experience = {
		experienceMult				=	0,
		powerScale					=	0,
		healthScale					=	0,
		reloadScale					=	0,
	},
	sensors = {
		los = {
			losMipLevel				=	3,
			airMipLevel				=	5,
		},
	},
	nanospray = {
		allow_team_colours	=	false,
	},
	system = {
		pathFinderSystem = (Spring.GetModOptions() and (Spring.GetModOptions().qtpfs == "1") and 1) or 0,
	},
	
	  paralyze = {
    paralyzeOnMaxHealth = true, -- defaults to true
    unitParalysisDeclineScale = 40, -- Time in seconds to go from 100% to 0% emp
  },
  
  transportability = {
    transportGround = 1,
    transportHover  = 1,  
    transportShip   = 1,  
    transportAir    = 0,  
    targetableTransportedUnits = true;
  },
	
}

return modRules