return lowerkeys({
  airfactory_dead = {
            description = "dead air factory :(",
            damage = 1250,
            object = "dead/Air FactoryDED.s3o",
            footprintz = 9,
            footprintx = 9,
            smokeTime = 400,
            reclaimable = true,
            reclaimTime = 300,
            metal = 300,
            hitdensity = 300,
            world = "All Worlds",
            category = "dedunit",
			featureDead = "airfactory_heap",
			collisionVolumeOffsets    =  "0 -.25 7.5",
		    collisionVolumeScales     =  "175 122 175",
			collisionvolumetype = "box",
},
airfactory_heap = {
            description = "very dead air factory  :(",
            damage = 350,
            object = "dead/Pieces_ExBig.s3o",
            footprintz = 4,
            footprintx = 4,
            smokeTime = 100,
            reclaimable = true,
			blocking = false,
            reclaimTime = 75,
            metal = 75,
            hitdensity = 200,
            world = "All Worlds",
            category = "dedunit",
			collisionvolumeoffsets = "0 0 0",
			collisionvolumescales = "60 8 60",
			collisionvolumetype = "box",
},
})