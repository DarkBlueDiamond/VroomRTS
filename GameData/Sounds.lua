local Sounds = {
  SoundItems = {
    IncomingChat = {
      --- always play on the front speaker(s)
      file = "sounds/gui/beep4.wav",
      in3d = "false",
    },
    MultiSelect = {
      --- always play on the front speaker(s)
      file = "sounds/gui/button9.wav",
      in3d = "false",
    },
    MapPoint = {
      --- respect where the point was set, but don't attenuate in distance
      --- also, when moving the camera, don't pitch it
      file = "sounds/gui/beep6.wav",
      rolloff = 0,
      dopplerscale = 0,
    },
	--Weapons 
	Mgun = {			
			file = "Sounds/Weapons/MGun_emg.wav",
			preload, -- put in memory!
			 -- loop me!
			 --- milliseconds!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		LightMissle = {			
			file = "Sounds/Weapons/LightMissle_missile_fire.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 200, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		LightMissleExplosion = {			
			file = "Sounds/Explosions/LightMissle_expl.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 200, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		LightLaser = {			
			file = "Sounds/Weapons/LightLaser.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		IntenseLaser = {			
			file = "Sounds/Weapons/IntenseLaser.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		MissleHit = {			
			file = "Sounds/Weapons/Missle_hit.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		Missle = {			
			file = "Sounds/Weapons/Missle.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},		
		Shotgun = {			
			file = "Sounds/Weapons/lightshotgun.wav",
			preload, -- put in memory!
			gain = 0.65, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		Rapidlaser = {			
			file = "Sounds/Weapons/rapid_laser.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		HeavyLaser = {			
			file = "Sounds/Weapons/Heavylaser.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		Laserhit = {			
			file = "Sounds/Weapons/Laserhit.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		LightLaser2 = {			
			file = "Sounds/Weapons/LightLaser2.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		Plasma = {			
			file = "Sounds/Weapons/plasma.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		Cannonhit = {			
			file = "Sounds/Weapons/Cannonhit.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		Arty = {			
			file = "Sounds/Weapons/Arty.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		Artyhit = {			
			file = "Sounds/Weapons/Artyhit.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
	Lightning = {			
			file = "Sounds/Weapons/lightning1.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
	
	BBfire = {			
			file = "Sounds/Weapons/bb_fire.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		BBhit = {			
			file = "Sounds/Weapons/bb_hit.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		smallexplosion = {			
			file = "Sounds/Explosions/small_explosion.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		mediumexplosion = {			
			file = "Sounds/Explosions/med_explosion.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		bigboom = {			
			file = "Sounds/Explosions/bigboom.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		LightLaser3 = {			
			file = "Sounds/Explosions/LightLaser3.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		MiniFlak = {			
			file = "Sounds/Explosions/Swatter_emg.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 1000, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
				BombDrop = {			
			file = "Sounds/Explosions/bomb_drop.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 1000, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
				BombHit = {			
			file = "Sounds/Explosions/bomb_hit.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 1000, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		StunMissleHit = {			
			file = "Sounds/Explosions/StunMissle_Hit.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 1000, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		HeavyLaser = {			
			file = "Sounds/Weapons/Heavylaser2.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		GrenadeExplosion = {			
			file = "Sounds/Explosions/grenade_explosion.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		UnderwaterExplosion = {			
			file = "Sounds/Explosions/underwater_explosion.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		Torpedeo = {			
			file = "Sounds/Weapons/torpedo.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		DepthCharge = {			
			file = "Sounds/Weapons/depthcharge.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
		HighPitchRocket = {			
			file = "Sounds/Weapons/hightpitch_rocket.wav",
			preload, -- put in memory!
			gain = 1, --- for uber-loudness
			pitch = 1, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
				PhaseGunShot = {			
			file = "Sounds/Weapons/PhaseGunShot.wav",
			preload, -- put in memory!
			gain = 1.2, --- for uber-loudness
			pitch = 0.8, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
				PhaseGunBlast = {			
			file = "Sounds/Explosions/PhaseGunBlast.wav",
			preload, -- put in memory!
			gain = 1.2, --- for uber-loudness
			pitch = 0.8, --- bass-test
			priority = 15, --- very high
			maxconcurrent = 50, ---only once
			--maxdist = FLT_MAX, --- only when near
		},
	},
	}
	
return Sounds
