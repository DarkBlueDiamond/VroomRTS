return lowerkeys({
  stingray_dead = {
            description = "dead sting ray :(",
            damage = 267.5,
            object = "dead/Sting RayDED.s3o",
            footprintz = 2,
            footprintx = 2,
            smokeTime = 400,
            reclaimable = true,
            reclaimTime = 74,
            metal = 74,
            hitdensity = 100,
            world = "All Worlds",
            category = "dedunit",
			featureDead = "stingray_heap",
			collisionvolumeoffsets = "0  0",
			collisionvolumescales = "20 18 40",
			collisionvolumetype = "box",
},
stingray_heap = {
            description = "very dead sting ray :(",
            damage = 53.5,
            object = "dead/Pieces_Small.s3o",
            footprintz = 2,
            footprintx = 2,
            smokeTime = 100,
            reclaimable = true,
			blocking = false,
            reclaimTime = 18.5,
            metal = 18.5,
            hitdensity = 100,
            world = "All Worlds",
            category = "dedunit",
			collisionvolumeoffsets = "0 0 0",
			collisionvolumescales = "35 5 35",
			collisionvolumetype = "box",
},
})