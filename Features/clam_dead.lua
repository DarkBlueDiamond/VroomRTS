return lowerkeys({
  clam_dead = {
            description = "dead clam :(",
            damage = 900,
            object = "dead/ClamDED.s3o",
            footprintz = 3,
            footprintx = 3,
            smokeTime = 400,
            reclaimable = true,
            reclaimTime = 120,
            metal = 120,
            hitdensity = 150,
			featureDead  = "clam_heap",
            world = "All Worlds",
            category = "dedunit",
			collisionVolumeOffsets    =  "0 -4 -5",
			collisionVolumeScales     =  "31.5 33 54",
			collisionvolumetype = "box",
},
clam_heap = {
            description = "very dead clam :(",
            damage = 180,
            object = "dead/Pieces_Big.s3o",
            footprintz = 3,
            footprintx = 3,
            smokeTime = 100,
            reclaimable = true,
			blocking = false,
            reclaimTime = 30,
            metal = 30,
            hitdensity = 150,
            world = "All Worlds",
            category = "dedunit",
			collisionvolumeoffsets = "0 0 0",
			collisionVolumeScales     =  "29 27 42",
			collisionvolumetype = "box",
},
})
