return lowerkeys({
  lmt_dead = {
            description = "dead light missle tower :(",
            damage = 287.5,
            object = "dead/LMTDED.s3o",
            footprintz = 3,
            footprintx = 3,
            smokeTime = 400,
            reclaimable = true,
            reclaimTime = 56,
            metal = 56,
            hitdensity = 100,
            world = "All Worlds",
            category = "dedunit",
			featureDead = "lmt_heap",
			collisionVolumeOffsets    =  "0 25 0",
			collisionVolumeScales     =  "25 83 25",
			collisionvolumetype = "box",
},
lmt_heap = {
            description = "very dead light missle tower :(",
            damage = 57.5,
            object = "dead/Pieces_Small.s3o",
            footprintz = 2,
            footprintx = 2,
            smokeTime = 100,
            reclaimable = true,
			blocking = false,
            reclaimTime = 14,
            metal = 14,
            hitdensity = 100,
            world = "All Worlds",
            category = "dedunit",
			collisionvolumeoffsets = "0 0 0",
			collisionvolumescales = "35 5 35",
			collisionvolumetype = "box",
},
})