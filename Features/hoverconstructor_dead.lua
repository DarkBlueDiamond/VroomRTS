return lowerkeys({
  hoverconstructor_dead = {
            description = "dead hover constructor :(",
            damage = 200,
            object = "dead/Hover ConstructorDED.s3o",
            footprintz = 3,
            footprintx = 3,
            smokeTime = 400,
            reclaimable = true,
            reclaimTime = 32,
            metal = 32,
            hitdensity = 150,
			featureDead  = "constructor_heap",
            world = "All Worlds",
            category = "dedunit",
			collisionVolumeOffsets    =  "0 0 -2.5",
			collisionVolumeScales     =  "28 26 35",
			collisionvolumetype = "box",
},
hoverconstructor_heap = {
            description = "very dead hover constructor :(",
            damage = 40,
            object = "dead/Pieces_Big.s3o",
            footprintz = 3,
            footprintx = 3,
            smokeTime = 100,
            reclaimable = true,
			blocking = false,
            reclaimTime = 8,
            metal = 8,
            hitdensity = 150,
            world = "All Worlds",
            category = "dedunit",
			collisionvolumeoffsets = "0 0 0",
			collisionvolumescales = "45 7 45",
			collisionvolumetype = "box",
},
})
