return lowerkeys({
  dove_dead = {
            description = "dead dove :(",
            damage = 120,
            object = "dead/DoveDED.s3o", --"HunterT.s3o"
            footprintz = 2,
            footprintx = 2,
            smokeTime = 400,
            reclaimable = true,
            reclaimTime = 56,
            metal = 56,
            hitdensity = 100,
            world = "All Worlds",
            category = "dedunit",
			featureDead = "dove_heap",
			collisionVolumeOffsets    =  "0 0 0",
			collisionVolumeScales     =  "11 8 30",
			collisionVolumeType       =  "box",
			collisionvolumetype = "box",
},
dove_heap = {
            description = "very dead dove :(",
            damage = 24,
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