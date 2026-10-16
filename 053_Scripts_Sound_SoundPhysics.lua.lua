function SoundPhysics.Preload()
  Sound.LoadSound("Sounds/Physics/Hit-Metal-Light-1.wav")
  
  Sound.LoadSound("Sounds/Physics/Hit-Metal-Light-2.wav")
  Sound.LoadSound("Sounds/Physics/Hit-Metal-Light-3.wav")
  Sound.LoadSound("Sounds/Physics/Hit-Metal-Heavy-1.wav")
  Sound.LoadSound("Sounds/Physics/Hit-Metal-Heavy-2.wav")
  Sound.LoadSound("Sounds/Physics/Hit-Metal-Heavy-3.wav")
end

function SoundPhysics.main()
  local srf, hit
  SoundPhysics.Preload()
  srf = Physics.GetSurface("NONE")
  srf.Sound = "Hit-Flesh"
  srf.Volume = 0.1
  srf.nSnd = 3
  srf = Physics.GetSurface("METAL")
  srf.Sound = "Hit-Metal-Light-"
  srf.Volume = 0.1
  srf.nSnd = 2
  srf = Physics.GetSurface("GRASS")
  srf.Sound = "plastic"
  srf.Volume = 0.1
  srf.nSnd = 3
  srf = Physics.GetSurface("STONE")
  srf.Sound = "Hit-Stone-Light-"
  srf.Volume = 0.1
  srf.nSnd = 3
  srf = Physics.GetSurface("GLASS")
  srf.Sound = "Hit-Glass-Light"
  srf.Volume = 0.05
  srf.nSnd = 3
  srf = Physics.GetSurface("WOOD")
  srf.Sound = "wood"
  srf.Volume = 0.1
  srf.nSnd = 3
  srf = Physics.GetSurface("DIRT")
  srf.Sound = "plastic"
  srf.Volume = 0.1
  srf.nSnd = 3
  srf = Physics.GetSurface("WATER")
  srf.Sound = "plastic"
  srf.Volume = 0.1
  srf.nSnd = 3
  srf = Physics.GetSurface("SAND")
  srf.Sound = "plastic"
  srf.Volume = 0.1
  srf.nSnd = 3
  srf = Physics.GetSurface("MUD")
  srf.Sound = "plastic"
  srf.Volume = 0.1
  srf.nSnd = 3
  srf = Physics.GetSurface("CONCRETE")
  srf.Sound = "Hit-Stone-Heavy-"
  srf.Volume = 0.1
  srf.nSnd = 3
  srf = Physics.GetSurface("BLOOD")
  srf.Sound = "Hit-Flesh"
  srf.Volume = 0.1
  srf.nSnd = 3
  srf = Physics.GetSurface("FLESH")
  srf.Sound = "Hit-Flesh"
  srf.Volume = 0.1
  srf.nSnd = 3
end
