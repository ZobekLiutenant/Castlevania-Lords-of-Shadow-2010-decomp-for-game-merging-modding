function SoundUtils.main()
  local level = string.sub(string.upper(Game.GetLevelPath()), 8)
  
  if level == "MENU" then
    return
  end
  SoundUtils.LoadSteps()
  SoundUtils.LoadSwitchs()
  SoundUtils.End2DLoop()
  SoundUtils.InitMusicSys()
end

function SoundUtils.Preload()
  SoundUtils.LoadStepsSounds()
  SoundUtils.LoadSwitchs()
end

function LoadStepSet(File, nInit, nEnd)
  for i = nInit, nEnd do
    Sound.LoadSound("Sounds/Steps/" .. File .. i .. ".wav")
  end
end

function SoundUtils.LoadStepsSounds()
  LoadStepSet("Step_BiTroll", 1, 4)
  LoadStepSet("Step_WildChild_Concrete", 1, 4)
  LoadStepSet("Footstep_Belmont_Concrete", 1, 6)
  LoadStepSet("Footstep_Belmont_Grabel", 1, 6)
  LoadStepSet("Footstep_Belmont_Grass", 1, 6)
  LoadStepSet("Footstep_Belmont_Metal", 1, 6)
  LoadStepSet("Footstep_Belmont_Mud", 1, 6)
  LoadStepSet("Footstep_Belmont_Snow", 1, 6)
  LoadStepSet("Footstep_Belmont_Water", 1, 6)
  LoadStepSet("Footstep_Belmont_Wood", 1, 6)
  LoadStepSet("Footstep_TS_Grabel", 1, 4)
  LoadStepSet("Footstep_TS_Grass", 1, 4)
  LoadStepSet("Footstep_TS_Metal", 1, 4)
  LoadStepSet("Footstep_TS_Snow", 1, 4)
  LoadStepSet("Footstep_TS_Wood", 1, 4)
  LoadStepSet("Footstep_TS_Stone", 1, 4)
  LoadStepSet("Footstep_TS_Mud", 1, 4)
end

function SoundUtils.LoadSteps()
  local srf, hit
  SoundUtils.LoadStepsSounds()
  srf = Physics.GetSurface("NONE")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Concrete"
  hit.nsnd = 6
  hit.minvol = 0.005
  hit.maxvol = 0.005
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Stone"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "Step_WildChild_Concrete"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("METAL")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Metal"
  hit.nsnd = 6
  hit.minvol = 0.01
  hit.maxvol = 0.01
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Metal"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "step-metal-heavy"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("GRASS")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Grass"
  hit.nsnd = 6
  hit.minvol = 0.01
  hit.maxvol = 0.01
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Grass"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "step-grass-heavy"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("STONE")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Concrete"
  hit.nsnd = 6
  hit.minvol = 0.005
  hit.maxvol = 0.005
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Stone"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "Step_WildChild_Concrete"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("GLASS")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Concrete"
  hit.nsnd = 6
  hit.minvol = 0.005
  hit.maxvol = 0.005
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Stone"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "step-stone-heavy"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("WOOD")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Wood"
  hit.nsnd = 6
  hit.minvol = 0.005
  hit.maxvol = 0.005
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Wood"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "step-wood-heavy"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("Ground")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Grabel"
  hit.nsnd = 6
  hit.minvol = 0.01
  hit.maxvol = 0.01
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Grabel"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "Step_WildChild_Concrete"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("LEAVES")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Grass"
  hit.nsnd = 6
  hit.minvol = 0.01
  hit.maxvol = 0.01
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Grass"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "step-grass-heavy"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("QUICKSANDS")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Water"
  hit.nsnd = 6
  hit.minvol = 0.01
  hit.maxvol = 0.01
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_Belmont_Water"
  hit.nsnd = 6
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "step-water-heavy"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("NIGHTMUD")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Mud"
  hit.nsnd = 6
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.01
  hit.maxvol = 0.01
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Mud"
  hit.nsnd = 6
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "step-mud-heavy"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("WETSTONE")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Water"
  hit.nsnd = 6
  hit.minvol = 0.01
  hit.maxvol = 0.01
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_Belmont_Water"
  hit.nsnd = 6
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "step-water-heavy"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("WATER")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Water"
  hit.nsnd = 6
  hit.minvol = 0.01
  hit.maxvol = 0.01
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_Belmont_Water"
  hit.nsnd = 6
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "step-water-heavy"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("DryGrass")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Grabel"
  hit.nsnd = 6
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.01
  hit.maxvol = 0.01
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Grabel"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "Step_WildChild_Concrete"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("MUD")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Mud"
  hit.nsnd = 6
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.01
  hit.maxvol = 0.01
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Mud"
  hit.nsnd = 6
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "step-mud-heavy"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("ICE")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "step-stone-cowboy"
  hit.nsnd = 4
  hit.minvol = 0.005
  hit.maxvol = 0.005
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Stone"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "step-stone-heavy"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("Snow")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Snow"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Snow"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "step-water-heavy"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  srf = Physics.GetSurface("Carpet")
  hit = srf.stepHits[Physics.PHYSICS_STEP_COWBOY]
  hit.file = "Footstep_Belmont_Grabel"
  hit.nsnd = 4
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_NORMAL]
  hit.file = "Step_BiTroll"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_HEAVY]
  hit.file = "Footstep_TS_Grabel"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
  hit = srf.stepHits[Physics.PHYSICS_STEP_DARIO]
  hit.file = "step-water-heavy"
  hit.nsnd = 8
  hit.minvol = 0.03
  hit.maxvol = 0.03
  hit.minpitch = -1
  hit.maxpitch = 1
end

function SoundUtils.LoadSwitchs()
  Sound.LoadSound("Sounds/Generic/Switch/BeginSwitch.wav")
  Sound.LoadSound("Sounds/Generic/Switch/EndSwitch.wav")
  Sound.LoadSound("Sounds/Fx/loop_camara.wav")
  Sound.LoadSound("Sounds/Generic/Menu/Fanfare_01.wav")
  Sound.LoadSound("Sounds/Generic/Menu/Fanfare_03.wav")
end

function SoundUtils.AddStep(am, frame, id, volume, randix, soundtype)
  am:StepEvent(frame, id, volume, randix, soundtype)
end

SoundUtils.Counter = 0

function SoundUtils.CreateSingleStaticSound(a)
  local h = Sound.CreatePS("Sound_" .. SoundUtils.Counter)
  SoundUtils.Counter = SoundUtils.Counter + 1
  for j in pairs(a) do
    h[a[j][1]] = a[j][2]
  end
  return h
end

function SoundUtils.CreateStaticSounds()
  for i in pairs(MapStaticSound.SoundList) do
    Sound.LoadSound(Game.GetLevelPath() .. "/Sounds/" .. MapStaticSound.SoundList[i])
  end
  if Game.Get("ToolMode") == 1 then
    SoundUtils.ListOfMapStaticSound = {}
  end
  for i = 1, #MapStaticSound.Positions do
    local h = SoundUtils.CreateSingleStaticSound(MapStaticSound.Positions[i])
    if SoundUtils.ListOfMapStaticSound ~= nil then
      SoundUtils.ListOfMapStaticSound[i] = h
    end
  end
end

function SoundUtils.PauseStaticSoundLoop(name, fadeout)
  if fadeout == nil then
    fadeout = 0
  end
  local sloop = Sound.ObtainPS(name)
  if sloop ~= nil then
    MissionUtils.DoInterpTgt(sloop, {
      [1] = fadeout,
      [2] = "",
      Volume = 0
    })
  end
end

function SoundUtils.ResumeStaticSoundLoop(name, volume, fadein)
  if fadein == nil then
    fadein = 0
  end
  if volume == nil then
    volume = 1
  end
  local sloop = Sound.ObtainPS(name)
  if sloop ~= nil then
    MissionUtils.DoInterpTgt(sloop, {
      [1] = fadein,
      [2] = "",
      Volume = volume
    })
  end
end

function SoundUtils.SetDamageLoops(ent)
  if ent.sdl_n == 0 then
    ent.sdl_n = 1
  end
  ent.sdl00_name = "Burn1"
  ent.sdl00_pitch0 = 0
  ent.sdl00_vol0 = 0.4
  ent.sdl00_time0 = 0.5
  ent.sdl00_time1 = 0.7
  ent.sdl00_time2 = 1.6
  ent.sdl00_ini = 100
  ent.sdl00_end = 800
end

function SoundUtils.SetDamageSquadLoops(ent)
  if ent.sdl_n == 0 then
    ent.sdl_n = 1
  end
  ent.sdl00_name = "loop-quemado"
  ent.sdl00_pitch0 = 0
  ent.sdl00_vol0 = 0.4
  ent.sdl00_time0 = 0.5
  ent.sdl00_time1 = 0.7
  ent.sdl00_time2 = 1.6
  ent.sdl00_ini = 100
  ent.sdl00_end = 800
end

function SoundUtils.BeginSdl(ent, indexString)
  ent["sdl" .. indexString .. "_time"] = -10000
end

function SoundUtils.EndSdl(ent, indexString)
  if ent == nil then
    return
  end
  ent["sdl" .. indexString .. "_time"] = 0
end

SoundUtils.MusicAlias = {
  ["12.2.1_ending_2"] = "12.2.1_ending_2_maqueta"
}
SoundUtils.NonCycleRelaxMusic = {
  ["1.1 intro _edit"] = true,
  ["1.6_half_ruined_bridge_strings"] = true,
  ["1.7 pan's temple_01"] = true,
  ["2.2_enchanted_forest"] = true,
  ["2.3_underground_cave_a"] = true,
  ["2.3_underground_cave_b"] = true,
  ["2.8.1_ambush_sec2"] = true,
  ["1.7 pan's temple_02"] = true,
  ["1.7 pan's temple_03"] = true,
  ["2.6_underground_dungeon"] = true,
  ["2.8_dark_dungeon"] = true,
  ["the waterfalls_magic_river"] = true,
  atmosfera_1 = true,
  atmosfera_2_a = true,
  atmosfera_3 = true,
  atmosfera_2_b = true,
  ["2.4_labyrinth_entrance"] = true,
  atmosfera_c = true,
  ["5.9.1_the_abbot"] = true,
  ["3_3_darklord_intro"] = true,
  ["3_3_darklord_intro_a"] = true,
  ["3_3_darklord_intro_b"] = true,
  ["9.3_woes_moor_maqueta"] = true,
  ["2.8.1_ambush_sec2"] = true,
  ["9.1_bones_forest"] = true,
  ["9.3_woes_moor"] = true,
  ["9.3_woes_moor_a"] = true,
  ["9.3_woes_moor_b"] = true,
  ["2.8.1_ambush_sec2"] = true,
  ["4.1 ascension"] = true,
  ["4.1 ascension_a"] = true,
  ["6.3_castle_hall"] = true,
  ["6.3_castle_hall_a"] = true,
  ["6.3_castle_hall_b"] = true,
  ["6.2_deserted_gardens"] = true,
  zobek_theme = true,
  prologue = true,
  ["4.1.2 climbing side wall"] = true,
  forest_of_creatures = true,
  ["6.1.1_dungeons"] = true,
  demon_castle = true,
  monsters = true
}

function SoundUtils.GetMusicAlias(Name)
  Name = string.lower(Name)
  local r = SoundUtils.MusicAlias[Name]
  if r then
    return r
  else
    return Name
  end
end

function SoundUtils.InitMusicSys()
  if init.LevelName and SoundUtils.SaveVar == nil then
    local savevarname = init.LevelName .. ".music."
    Game.CreateSaveVar(savevarname .. "Status", "first")
    Game.CreateSaveVar(savevarname .. "File", "none.ogg")
    Game.CreateSaveVar(savevarname .. "Volume", "1")
    Game.CreateSaveVar(savevarname .. "LoopCount", "0")
    Game.CreateSaveVar(savevarname .. "RelaxFiles", "")
    Game.CreateSaveVar(savevarname .. "CombatFiles", "")
    Game.CreateSaveVar(savevarname .. "RelaxVolume", "0")
    Game.CreateSaveVar(savevarname .. "CombatVolume", "0")
    SoundUtils.SaveVar = {
      Status = Game.GetSaveVarObj(savevarname .. "Status"),
      File = Game.GetSaveVarObj(savevarname .. "File"),
      Volume = Game.GetSaveVarObj(savevarname .. "Volume"),
      LoopCount = Game.GetSaveVarObj(savevarname .. "LoopCount"),
      RelaxFiles = Game.GetSaveVarObj(savevarname .. "RelaxFiles"),
      CombatFiles = Game.GetSaveVarObj(savevarname .. "CombatFiles"),
      RelaxVolume = Game.GetSaveVarObj(savevarname .. "RelaxVolume"),
      CombatVolume = Game.GetSaveVarObj(savevarname .. "CombatVolume")
    }
    Game.AddScheduledFunc(0, "__InitMusicSys__", "SoundUtils.__InitMusicSys__")
    if SoundUtils.SaveVar.Status.Value ~= "first" then
      SoundUtils.IgnoreInitialMusic = true
      Game.AddScheduledFunc(0.2, "ResetIgnoreInitialMusic", "SoundUtils.ResetIgnoreInitialMusic")
    end
  end
end

function SoundUtils.__InitMusicSys__()
  local status = SoundUtils.SaveVar.Status.Value
  if status == "off" then
    Sound.StopMusic()
  elseif status == "on" then
    Sound.SetMusic("Music/" .. SoundUtils.GetMusicAlias(SoundUtils.SaveVar.File.Value) .. ".ogg", SoundUtils.SaveVar.Volume.Value)
    local LoopCount = tonumber(SoundUtils.SaveVar.LoopCount.Value)
    if LoopCount and 0 <= LoopCount then
      Sound.SetMusicLoopCount(tonumber(LoopCount))
    else
      Sound.SetMusicLoopCount(-1)
    end
  elseif status == "combat" then
    Game.Set("RelaxMusicVolume", tonumber(SoundUtils.SaveVar.RelaxVolume.Value))
    Game.Set("ActionMusicVolume", tonumber(SoundUtils.SaveVar.CombatVolume.Value))
    Sound.CombatMusicSongsLists(SoundUtils.SaveVar.RelaxFiles.Value, SoundUtils.SaveVar.CombatFiles.Value)
    Sound.CombatMusicSetActive(1)
  end
end

function SoundUtils.RestoreMusic()
  if SoundUtils.SaveVar.Status.Value == "first" then
    SoundUtils.SaveVar.Status.Value = "off"
  end
  SoundUtils.SaveVar = nil
  SoundUtils.InitMusicSys()
end

function SoundUtils.ResetIgnoreInitialMusic()
  SoundUtils.IgnoreInitialMusic = nil
end

function SoundUtils.SceneStopMusic()
  if SoundUtils.SaveVar == nil then
    SoundUtils.InitMusicSys()
  end
  SoundUtils.SaveVar.Status.Value = "off"
  Sound.SetMusicLoopCount(0)
  Sound.SetMusicVolume(0, 0.5)
  Sound.CombatMusicSetActive(0)
end

function SoundUtils.SetMusicEvent(EntityName, EventName, Time)
  local a = Game.Split(EventName, ",")
  Sound.CombatMusicSetActive(0)
  if a[1] == "" then
    Sound.StopMusic()
  else
    Sound.SetMusic("Music/" .. SoundUtils.GetMusicAlias(a[1]) .. ".ogg", 0 + a[2])
  end
end

function SoundUtils.SwitchMusicEvent(EntityName, EventName, Time)
  if Scene and Scene.SkippingScene then
    return
  end
  local a = Game.Split(EventName, ",")
  SoundUtils.SwtMusic(a[1], tonumber(a[2]), tonumber(a[3]), tonumber(a[4]), 0)
end

function SoundUtils.FadeOutMusic(FadeOut)
  if FadeOut <= 0 then
    Sound.StopMusic()
  else
    Sound.SetMusicVolume(0, FadeOut)
  end
end

function SoundUtils.CombatMusic(RelaxList, RelaxVolume, CombatList, CombatVolume)
  if SoundUtils.SaveVar == nil then
    SoundUtils.InitMusicSys()
  end
  if SoundUtils.IgnoreInitialMusic then
    Game.ConsoleError("Ignoring : SoundUtils.CombatMusic()\n")
    return
  end
  Game.Set("RelaxMusicVolume", RelaxVolume)
  Game.Set("ActionMusicVolume", CombatVolume)
  local rl = ""
  for i = 1, #RelaxList do
    local rm = string.lower(RelaxList[i])
    if SoundUtils.NonCycleRelaxMusic[rm] then
      rm = "!" .. SoundUtils.GetMusicAlias(rm) .. ".ogg"
    else
      rm = SoundUtils.GetMusicAlias(rm) .. ".ogg"
    end
    if i == #RelaxList then
      rl = rl .. rm
    else
      rl = rl .. rm .. ","
    end
  end
  local cl = ""
  for i = 1, #CombatList do
    if i == #CombatList then
      cl = cl .. SoundUtils.GetMusicAlias(CombatList[i]) .. ".ogg"
    else
      cl = cl .. SoundUtils.GetMusicAlias(CombatList[i]) .. ".ogg,"
    end
  end
  Sound.CombatMusicSongsLists(rl, cl)
  Sound.CombatMusicSetActive(1)
  SoundUtils.SaveVar.Status.Value = "combat"
  SoundUtils.SaveVar.RelaxFiles.Value = rl
  SoundUtils.SaveVar.CombatFiles.Value = cl
  SoundUtils.SaveVar.RelaxVolume.Value = RelaxVolume
  SoundUtils.SaveVar.CombatVolume.Value = CombatVolume
end

function SoundUtils.SwtMusic(NewMusic, FadeOut, FadeIn, Volume, LoopCount)
  if SoundUtils.SaveVar == nil then
    SoundUtils.InitMusicSys()
  end
  if SoundUtils.IgnoreInitialMusic then
    Game.ConsoleError("Ignoring : SoundUtils.SwtMusic()\n")
    return
  end
  if NewMusic == "" then
    Sound.CombatMusicSetActive(0)
    SoundUtils.FadeOutMusic(FadeOut)
    SoundUtils.SaveVar.Status.Value = "off"
  else
    LoopCount = LoopCount or -1
    Sound.CombatMusicSetActive(0)
    SoundUtils.SaveVar.Status.Value = "on"
    SoundUtils.SaveVar.File.Value = string.lower(NewMusic)
    SoundUtils.SaveVar.Volume.Value = Volume
    SoundUtils.SaveVar.LoopCount.Value = LoopCount
    NewMusic = SoundUtils.GetMusicAlias(NewMusic)
    if Game.GetTime() <= 0.1 then
      Game.AddScheduledFunc(0, "swmusic", "SoundUtils.SwitchMusic", "Music/" .. NewMusic .. ".ogg", FadeOut, FadeIn, Volume, LoopCount)
    else
      SoundUtils.SwitchMusic("Music/" .. NewMusic .. ".ogg", FadeOut, FadeIn, Volume, LoopCount)
    end
  end
end

function SoundUtils.SwitchMusic(NewMusic, FadeOut, FadeIn, Volume, LoopCount)
  if Volume <= 0 then
    SoundUtils.FadeOutMusic(FadeOut)
  elseif FadeOut <= 1 then
    SoundUtils.PlayNextMusic(NewMusic, FadeIn, Volume, LoopCount)
  else
    Sound.SetMusicVolume(0, FadeOut)
    Game.AddScheduledFunc(Game.GetTime() + FadeOut - 1, "", "SoundUtils.PlayNextMusic", NewMusic, FadeIn, Volume, LoopCount)
  end
end

FixedFadeOut = 2

function SoundUtils.SwtMusicCross(NewMusic, FadeIn, Volume, LoopCount)
  if NewMusic == "" then
    SoundUtils.FadeOutMusic(FixedFadeOut)
  else
    SoundUtils.SwitchMusicCross("Music/" .. NewMusic .. ".ogg", FadeIn, Volume, LoopCount)
  end
end

function SoundUtils.SwitchMusicCross(NewMusic, FadeIn, Volume, LoopCount)
  if Volume <= 0 then
    SoundUtils.FadeOutMusic(FixedFadeOut)
  else
    Game.AddScheduledFunc(Game.GetTime() + 0, "", "SoundUtils.PlayNextMusic", NewMusic, FadeIn, Volume, LoopCount)
  end
end

function SoundUtils.PlayNextMusic(NewMusic, FadeIn, Volume, LoopCount)
  if FadeIn <= 0 then
    Sound.SetMusic(NewMusic, Volume)
  else
    Sound.SetMusic(NewMusic, 0)
    Sound.SetMusicVolume(Volume, FadeIn)
  end
  if LoopCount and 0 <= LoopCount then
    Sound.SetMusicLoopCount(LoopCount)
  else
    Sound.SetMusicLoopCount(-1)
  end
end

function SoundUtils.Create2DLoop()
  local t = Game.GetEntity("BidimensionalSound")
  if t == nil then
    t = Game.CreateEntity("BidimensionalSound", "Trigger")
  end
  t.nBoxes = 1
  t.Box00Pos, t.Box00Dim = Game.GetWorldCollisionBox()
  t.Snd = "loop_camara"
  t.Snd_MaxPan = 0
  t.Snd_MinPan = 0
  t.Snd_VarPan = 0
  t.Snd_MaxVol = 0.8
  t.Snd_MinVol = 0.6
  t.Snd_VarVol = 0.1
  t.Snd_MaxPitch = 2
  t.Snd_MinPitch = 1
  t.Snd_VarPitch = 1
  t.Snd_FadeIn = 2
  t.Snd_FadeOut = 1
  return t
end

function SoundUtils.End2DLoop()
  local t = Game.GetEntity("BidimensionalSound")
  if t == nil then
    t = SoundUtils.Create2DLoop()
  end
  t.Box00Dim = V3D(0, 0, 0)
  Game.Set("SoundDopplerLevel", 1)
end

function SoundUtils.Init2DLoop()
  local t = Game.GetEntity("BidimensionalSound")
  if t == nil then
    t = SoundUtils.Create2DLoop()
  end
  t.Box00Pos, t.Box00Dim = Game.GetWorldCollisionBox()
  t.Snd_FadeFactor = 0
  Game.Set("SoundDopplerLevel", 0)
end

function SoundUtils.PlayAreaSound2D(entityName)
  local t = Game.GetEntity(entityName)
  if t then
    t.Box00Pos, t.Box00Dim = Game.GetWorldCollisionBox()
    t.Snd_FadeFactor = 0
  end
end

function SoundUtils.StopAreaSound2D(entityName)
  local t = Game.GetEntity(entityName)
  if t then
    t.Box00Dim = V3D(0, 0, 0)
  end
end

SoundUtils.ReverbType = Game.GVar("S_ReverbType")
SoundUtils.ReverbLevel = Game.GVar("S_ReverbLevel")
SoundUtils.ReverbType.Value = 0
SoundUtils.ReverbLevel.Value = 0

function SoundUtils.SetupSoundData()
  LevelProperties.Load("SoundUtils")
  Game.Set("DefaultReverbType", SoundUtils.ReverbType.Value)
  Game.Set("DefaultReverbLevel", SoundUtils.ReverbLevel.Value)
end

function SoundUtils.FXPlaySound(tipo, id, pos)
  if not FXSoundTable[tipo] or not FXSoundTable[tipo][id] then
    print("FX sound not found: " .. tipo .. " / " .. id .. ". Setup this sound in the editor before playing it.")
    return
  end
  local soundInfo = FXSoundTable[tipo][id]
  local sounds = Game.Split(soundInfo[1], "|")
  local randomNumber = math.random(#sounds)
  pos = pos or player.Pos
  Sound.PlaySound(pos, sounds[randomNumber], soundInfo[2], soundInfo[4], soundInfo[5], soundInfo[3])
end

function SoundUtils.FXPlaySoundLoop(tipo, id, entity)
  if not FXSoundTable[tipo] or not FXSoundTable[tipo][id] then
    print("FX LOOP sound not found: " .. tipo .. " / " .. id .. ". Setup this sound in the editor before playing it.")
    return
  end
  local soundInfo = FXSoundTable[tipo][id]
  local ent = Game.GetEntity(entity)
  if ent then
    local sloopName = "SFX_" .. tipo .. id
    local sloop = ent.uData[sloopName]
    if sloop == nil then
      sloop = ent:AddPosSound()
      ent.uData[sloopName] = sloop
      sloop.Volume = 0
    end
    sloop.Sound = soundInfo[1]
    MissionUtils.DoInterpTgt(sloop, {
      [1] = soundInfo[7],
      [2] = "",
      Volume = soundInfo[2]
    })
    sloop.AttenIni = soundInfo[4]
    sloop.AttenEnd = soundInfo[5]
    sloop.Pitch = soundInfo[3]
  end
end

function SoundUtils.FXStopSoundLoop(tipo, id, entity)
  if not FXSoundTable[tipo] or not FXSoundTable[tipo][id] then
    print("FX LOOP sound not found: " .. tipo .. " / " .. id .. ". Setup this sound in the editor before stoping it.")
    return
  end
  local soundInfo = FXSoundTable[tipo][id]
  local ent = Game.GetEntity(entity)
  if ent then
    local sloopName = "SFX_" .. tipo .. id
    local sloop = ent.uData[sloopName]
    if sloop == nil then
      sloop = ent:AddPosSound()
      ent.uData[sloopName] = sloop
    end
    MissionUtils.DoInterpTgt(sloop, {
      [1] = soundInfo[8],
      [2] = "",
      Volume = 0
    })
    sloop.uData.modif.OnEnd = "SoundUtils.SwitchSoundLoopOnEnd"
    sloop.uData.modif.uData.sloop = sloop
    sloop.uData.modif.uData.e = ent
    sloop.uData.modif.uData.sloopName = sloopName
  end
end

function SoundUtils.PlayObjectSoundByIndex(entityName, soundIndex)
  local entity = Game.GetEntity(entityName)
  if nil == entity then
    return
  end
  local soundInfo
  if entity.oActCtrl then
    soundInfo = entity.oActCtrl.oActClass.uData.SoundInfo
  else
    soundInfo = entity.uData.SoundInfo
  end
  if soundInfo then
    local singleSoundInfo = soundInfo[soundIndex]
    if singleSoundInfo and 4 <= #singleSoundInfo then
      Sound.PlaySound(entity.Pos, singleSoundInfo[1], singleSoundInfo[2], singleSoundInfo[3], singleSoundInfo[4])
    end
  end
end

function SoundUtils.PlayObjectSoundLoopByIndex(entityName, soundIndex)
  local entity = Game.GetEntity(entityName)
  if nil == entity then
    return
  end
  local soundInfo
  if entity.oActCtrl then
    soundInfo = entity.oActCtrl.oActClass.uData.SoundInfo
  else
    soundInfo = entity.uData.SoundInfo
  end
  if soundInfo then
    local loopInfo = soundInfo[soundIndex]
    if loopInfo and 7 <= #loopInfo then
      return SoundUtils.PlayObjectSoundLoop(entityName, loopInfo[1], loopInfo[2], unpack(loopInfo, 4))
    end
  end
end

function SoundUtils.PlayObjectSoundLoop(entity, soundId, fadeIn, volume, attenIni, attenEnd, pitch, doppler)
  local ent = Game.GetEntity(entity)
  if ent then
    local sloopName = "SObj_" .. soundId
    local sloop = ent.uData[sloopName]
    if sloop == nil then
      sloop = ent:AddPosSound()
      ent.uData[sloopName] = sloop
      sloop.Volume = 0
    end
    sloop.Sound = soundId
    MissionUtils.DoInterpTgt(sloop, {
      [1] = fadeIn,
      [2] = "",
      Volume = volume
    })
    sloop.AttenIni = attenIni
    sloop.AttenEnd = attenEnd
    sloop.BasePitch = pitch
    if nil ~= doppler then
      sloop.Doppler = doppler
    end
    return sloop
  end
end

function SoundUtils.StopObjectSoundLoopByIndex(entityName, soundIndex)
  local entity = Game.GetEntity(entityName)
  if nil == entity then
    return
  end
  local soundInfo
  if entity.oActCtrl then
    soundInfo = entity.oActCtrl.oActClass.uData.SoundInfo
  else
    soundInfo = entity.uData.SoundInfo
  end
  if soundInfo then
    local loopInfo = soundInfo[soundIndex]
    if loopInfo and 7 <= #loopInfo then
      SoundUtils.StopObjectSoundLoop(entityName, loopInfo[1], loopInfo[3])
    end
  end
end

function SoundUtils.StopObjectSoundLoop(entity, soundId, fadeOut)
  local ent = Game.GetEntity(entity)
  if ent then
    local sloopName = "SObj_" .. soundId
    local sloop = ent.uData[sloopName]
    if sloop == nil then
      sloop = ent:AddPosSound()
      ent.uData[sloopName] = sloop
    end
    MissionUtils.DoInterpTgt(sloop, {
      [1] = fadeOut,
      [2] = "",
      Volume = 0
    })
    sloop.uData.modif.OnEnd = "SoundUtils.SwitchSoundLoopOnEnd"
    sloop.uData.modif.uData.sloop = sloop
    sloop.uData.modif.uData.e = ent
    sloop.uData.modif.uData.sloopName = sloopName
  end
end

function SoundUtils.SwitchSound(e, Track, Frame, lSeg, nSeg)
  if nSeg then
    local dif1 = math.abs(nSeg.Init - Frame)
    local dif2 = math.abs(nSeg.End - Frame)
    local a = Game.Split(nSeg.Info, ",")
    if dif1 < dif2 then
      if not a[1] then
        Game.ConsoleError(nSeg.Info .. "->No compatible con Split(|)\n")
        return
      end
      a = Game.Split(a[1], "|")
    else
      if not a[2] then
        Game.ConsoleError(nSeg.Info .. "->No compatible con Split(|)\n")
        return
      end
      a = Game.Split(a[2], "|")
    end
    local d = Game.Split(Track.Info, ",")
    Sound.PlaySound(e.SndPos, a[math.floor(Game.Rand(1, #a + 0.9))], d[1], d[2], d[3])
  end
end

function SoundUtils.SwitchReverb(e, Track, Frame, lSeg, nSeg)
  if nSeg then
    local a = Game.Split(nSeg.Info, ",")
    Game.Set("S_ReverbType", tonumber(Game.Split(a[1], "*")[1]))
    Game.Set("S_ReverbLevel", tonumber(a[2]))
  elseif lSeg then
    Game.Set("S_ReverbType", 0)
    Game.Set("S_ReverbLevel", 0)
  end
end

function SoundUtils.SwitchSoundLoop(e, Track, Frame, lSeg, nSeg)
  local sloopName = "ST_" .. Track.Name
  local sloop = e.uData[sloopName]
  if nSeg then
    local a = Game.Split(nSeg.Info, ",")
    if a[9] == nil or a[9] == "" then
      a[9] = 0
    end
    if sloop == nil then
      sloop = e:AddPosSound()
      e.uData[sloopName] = sloop
    end
    sloop.Sound = a[1]
    MissionUtils.DoInterpTgt(sloop, {
      [1] = 0 + tonumber(a[2]),
      [2] = a[4],
      Volume = 0 + tonumber(a[5]),
      BasePitch = 0 + tonumber(a[6]),
      AttenIni = 0 + tonumber(a[7]),
      AttenEnd = 0 + tonumber(a[8]),
      Doppler = 0 + tonumber(a[9])
    })
  elseif lSeg then
    local a = Game.Split(lSeg.Info, ",")
    if sloop ~= nil then
      MissionUtils.DoInterpTgt(sloop, {
        [1] = 0 + a[3],
        [2] = a[4],
        Volume = 0
      })
    end
    sloop.uData.modif.OnEnd = "SoundUtils.SwitchSoundLoopOnEnd"
    sloop.uData.modif.uData.sloop = sloop
    sloop.uData.modif.uData.e = e
    sloop.uData.modif.uData.sloopName = sloopName
  end
end

function SoundUtils.SwitchSoundLoopOnEnd(Modif)
  if Modif.uData.e ~= nil and DelPosSound ~= nil then
    Modif.uData.e:DelPosSound(Modif.uData.sloop)
    Modif.uData.e.uData[Modif.uData.sloopName] = nil
  end
end

function SoundUtils.AddStaticSound(ent, a)
  local h = ent:AddPosSound()
  SoundUtils.Counter = SoundUtils.Counter + 1
  for j in pairs(a) do
    h[a[j][1]] = a[j][2]
  end
  return h
end

if init and init.PreloadMethods then
  function init.PreloadMethods.MapStaticSound()
    local fileName = Game.GetLevelPath() .. "/Scripts/MapStaticSound"
    
    local st = Game.GetSingleTable()
    st.SourceFile = fileName .. ".lua"
    st.TargetFile = fileName .. ".lbt"
    if st.bPrecompile then
      Game.PreloadLibrary(st.SourceFile, "MapStaticSound")
      st:OpenFileOut()
      for i = 1, #MapStaticSound.SoundList do
        st:WriteString(MapStaticSound.SoundList[i])
      end
      for i = 1, #MapStaticSound.Positions do
        MissionUtils.WriteLuaElement(st, MapStaticSound.Positions[i])
      end
      st:CloseFileOut()
    else
      st:Open()
      while st.NextType ~= "begin" and st.NextType ~= "exit" do
        Sound.LoadSound(Game.GetLevelPath() .. "/Sounds/" .. st:Read())
      end
      while st.NextType ~= "exit" do
        local h = Sound.CreatePS("Sound_")
        st:ReadObject(h)
        SaveGame.SaveLocalEntityValue(h.Name, {
          "OnEnter",
          "OnExit",
          "OnAllInside",
          "OnCameraView",
          "ExtraData",
          "bActive",
          "FixedCam",
          "OnEntityInside"
        })
      end
      st:Close()
    end
  end
end
