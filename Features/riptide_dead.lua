return lowerkeys({
  riptide_dead = {
            description = "dead riptide :(",
            damage = 200,
            object = "dead/RiptideDED.s3o", --"HunterT.s3o"
            footprintz = 2,
            footprintx = 2,
            smokeTime = 400,
            reclaimable = true,
            reclaimTime = 32,
            metal = 32,
            hitdensity = 100,
            world = "All Worlds",
            category = "dedunit",
			featureDead = "riptide_heap",
			collisionvolumeoffsets = "0  0",
			collisionvolumescales = "20 18 40",
			collisionvolumetype = "box",
},
riptide_heap = {
            description = "very dead riptide :(",
            damage = 40,
            object = "dead/Pieces_Small.s3o",
            footprintz = 2,
            footprintx = 2,
            smokeTime = 100,
            reclaimable = true,
			blocking = false,
            reclaimTime = 8,
            metal = 8,
            hitdensity = 100,
            world = "All Worlds",
            category = "dedunit",
			collisionvolumeoffsets = "0 0 0",
			collisionvolumescales = "35 5 35",
			collisionvolumetype = "box",
},
})