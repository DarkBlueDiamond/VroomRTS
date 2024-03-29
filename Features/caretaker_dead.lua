return lowerkeys({
  caretaker_dead = {
            description = "dead caretaker :(",
            damage = 225,
            object = "dead/CaretakerDED.s3o",
            footprintz = 3,
            footprintx = 3,
            smokeTime = 400,
            reclaimable = true,
            reclaimTime = 64,
            metal = 64,
            hitdensity = 100,
            world = "All Worlds",
            category = "dedunit",
			featureDead = "caretaker_heap",
			collisionVolumeOffsets    =  "0 25 0",
			collisionVolumeScales     =  "25 83 25",
			collisionvolumetype = "box",
},
caretaker_heap = {
            description = "very dead caretaker :(",
            damage = 55,
            object = "dead/Pieces_Small.s3o",
            footprintz = 2,
            footprintx = 2,
            smokeTime = 100,
            reclaimable = true,
			blocking = false,
            reclaimTime = 16,
            metal = 16,
            hitdensity = 100,
            world = "All Worlds",
            category = "dedunit",
			collisionvolumeoffsets = "0 0 0",
			collisionvolumescales = "35 5 35",
			collisionvolumetype = "box",
},
})