return lowerkeys({
  shatterer_dead = {
            description = "dead shatterer :(",
            damage = 787.5,
            object = "dead/ShattererDED.s3o",
            footprintz = 3,
            footprintx = 3,
            smokeTime = 400,
            reclaimable = true,
            reclaimTime = 110,
            metal = 110,
            hitdensity = 150,
			featureDead  = "shatterer_heap",
            world = "All Worlds",
            category = "dedunit",
			collisionVolumeOffsets    =  "0 4 0",
			collisionVolumeScales     =  "28.5 29 44",
			collisionvolumetype = "box",
},
shatterer_heap = {
            description = "very dead shatterer :(",
            damage = 157.5,
            object = "dead/Pieces_Big.s3o",
            footprintz = 3,
            footprintx = 3,
            smokeTime = 100,
            reclaimable = true,
			blocking = false,
            reclaimTime = 27.5,
            metal = 27.5,
            hitdensity = 150,
            world = "All Worlds",
            category = "dedunit",
			collisionvolumeoffsets = "0 0 0",
			collisionvolumescales = "45 7 45",
			collisionvolumetype = "box",
},
})
