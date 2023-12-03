return lowerkeys({
  hlt_dead = {
            description = "dead heavy laser tower :(",
            damage = 900,
            object = "dead/HLTDED.s3o",
            footprintz = 3,
            footprintx = 3,
            smokeTime = 400,
            reclaimable = true,
            reclaimTime = 180,
            metal = 180,
            hitdensity = 100,
            world = "All Worlds",
            category = "dedunit",
			featureDead = "llt_heap",
			collisionVolumeOffsets    =  "0 25 0",
			collisionVolumeScales     =  "25 83 25",
			collisionvolumetype = "box",
},
hlt_heap = {
            description = "very dead heavy laser tower :(",
            damage = 180,
            object = "dead/Pieces_Big.s3o",
            footprintz = 3,
            footprintx = 3,
            smokeTime = 100,
            reclaimable = true,
			blocking = false,
            reclaimTime = 45,
            metal = 45,
            hitdensity = 150,
            world = "All Worlds",
            category = "dedunit",
			collisionvolumeoffsets = "0 0 0",
			collisionvolumescales = "45 7 45",
			collisionvolumetype = "box",
},
})