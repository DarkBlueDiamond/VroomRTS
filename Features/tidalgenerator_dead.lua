return lowerkeys({
  tidalgenerator_dead = {
            description = "dead tidal generator :(",
            damage = 150,
            object = "dead/Tidal GeneratorDED.s3o",
            footprintz = 3,
            footprintx = 3,
            smokeTime = 400,
            reclaimable = true,
            reclaimTime = 16,
            metal = 16,
            hitdensity = 100,
            world = "All Worlds",
            category = "dedunit",
			featureDead = "tidalgenerator_heap",
			collisionVolumeOffsets    =  "0 -3 0",
			collisionVolumeScales     =  "54 30 42",
			collisionvolumetype = "box",
},
tidalgenerator_heap = {
            description = "very dead tidal generator :(",
            damage =  30,
            object = "dead/Pieces_Small.s3o",
            footprintz = 3,
            footprintx = 3,
            smokeTime = 100,
            reclaimable = true,
			blocking = false,
            reclaimTime = 4,
            metal = 4,
            hitdensity = 100,
            world = "All Worlds",
            category = "dedunit",
			collisionvolumeoffsets = "0 0 0",
			collisionvolumescales = "35 5 35",
			collisionvolumetype = "box",
},
})