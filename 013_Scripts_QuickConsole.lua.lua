function QuickConsole.main()
  print("QuickConsole loaded")
end

function QuickConsole.restart()
  SaveGame.Restart()
end

function QuickConsole.reload()
  Input.Bind(0, "Walk", "NextAction", "")
  Input.Bind(0, "Walk", "PrevAction", "")
  Input.Bind(0, "Racer", "TargetNext", "")
  Input.Bind(0, "Racer", "NextWeapon", "")
  Input.Bind(0, "Racer", "PrevWeapon", "")
  Input.Bind(0, "Racer", "Laser", "")
  Input.Bind(0, "Racer", "Vulcan", "")
  Input.Bind(0, "Racer", "Devastator", "")
  Input.Bind(0, "Racer", "Swarm", "")
  Input.Bind(0, "Racer", "TargetReticle", "")
  Scorer.ClearDebugLabels()
  Game.Set("OnDebugLabel", "")
  Game.Set("ToolKeyCall", "")
  if Net.IsServer() ~= 0 then
    Net.CloseServer(Game.GetLevelPath())
    print("server")
  elseif Net.IsClient() ~= 0 then
    Net.CloseClient(Game.GetLevelPath())
    print("client")
  else
    Game.LoadLevel(Game.GetLevelPath())
    print("loadlevel")
  end
end

function QuickConsole.camrot(angulus)
  angulus = defparam(angulus, 180)
  Game.GetEntity(Game.GetCam(0)).AddTurn = angulus
end

QuickConsole.FreeMenu = {}

function QuickConsole.EndMenu(id, control)
  Menu.BackToGame(id, control)
  QuickConsole.IgnorePedalCall = false
  Menu.DebugMenuBackFunction = "Menu.MainMenu"
  Input.SetActionSet("Walk")
end

if MapInit and MapInit.FreeMenu then
  for i = 1, #MapInit.FreeMenu do
    QuickConsole.FreeMenu[#QuickConsole.FreeMenu + 1] = MapInit.FreeMenu[i]
  end
end
Game.Set("DebugTextLabel", "")
QuickConsole.iFreeMenu = 1
QuickConsole.iSpawnPos = 1

function QuickConsole.ShowtimeLoop()
  Game.AddScheduledFunc(Game.GetTime() + 0.1, "QuickConsole.ShowtimeLoop", "QuickConsole.ShowtimeLoop")
  local e = player
  e.Life = e.oActCtrl.oActClass.Life
  Game.Set("ScorerLightPower", Game.Get("ScorerLightPowerMax"))
  Game.Set("ScorerDarkPower", Game.Get("ScorerDarkPowerMax"))
  WeaponsVial.IncrementVials(e.Name)
  WeaponsFairy.SetMaxFaires()
  WeaponsCrystal.IncrementCrystal()
  Stamina.SetStamina(500)
  Energy.SetEnergy(500)
end

function QuickConsole.free_Show_Data()
  local s
  for i = 1, #QuickConsole.FreeMenu do
    if s then
      s = s .. "\n"
    else
      s = ""
    end
    if i == QuickConsole.iFreeMenu then
      s = s .. "<= "
    end
    s = s .. QuickConsole.FreeMenu[i][1]
    if i == QuickConsole.iFreeMenu then
      s = s .. " =>"
    end
  end
  Game.Set("DebugTextLabel", s)
end

function QuickConsole.free_Down_Menu(idx)
  QuickConsole.iFreeMenu = QuickConsole.iFreeMenu % #QuickConsole.FreeMenu + 1
  QuickConsole.free_Show_Data()
end

function QuickConsole.free_Up_Menu(idx)
  QuickConsole.iFreeMenu = (QuickConsole.iFreeMenu + #QuickConsole.FreeMenu - 2) % #QuickConsole.FreeMenu + 1
  QuickConsole.free_Show_Data()
end

function QuickConsole.free_Left_Menu(idx)
  QuickConsole.FreeMenu[QuickConsole.iFreeMenu][2]()
end

function QuickConsole.free_Right_Menu(idx)
  QuickConsole.FreeMenu[QuickConsole.iFreeMenu][3]()
end

function QuickConsole.ScreenShot_Scorer(id)
  Input.Bind(0, "Walk", "Jump", "")
  Input.Bind(0, "Walk", "RangedAttack", "")
  QuickConsole.LastDebugTextLabel = Game.Get("DebugTextLabel")
  Game.Set("DebugTextLabel", "")
  Game.Set("AfterDrawCallback", "QuickConsole.ScreenShot_Scorer_")
end

function QuickConsole.ScreenShot_Scorer_()
  Game.ScreenShot("")
  Game.Set("AfterDrawCallback", "QuickConsole.ScreenShot_Scorer__")
end

function QuickConsole.ScreenShot_Scorer__()
  Game.Set("DebugTextLabel", QuickConsole.LastDebugTextLabel)
  QuickConsole.LastDebugTextLabel = nil
  Input.Bind(0, "Walk", "Jump", "QuickConsole.ScreenShot")
  Input.Bind(0, "Walk", "RangedAttack", "QuickConsole.ScreenShot_Scorer")
end

function QuickConsole.ScreenShot(id)
  Input.Bind(0, "Walk", "Jump", "")
  Input.Bind(0, "Walk", "RangedAttack", "")
  Scorer.Hide(0)
  QuickConsole.LastDebugTextLabel = Game.Get("DebugTextLabel")
  QuickConsole.LastRenderGameVersion = Game.Get("RenderGameVersion")
  QuickConsole.LastRenderDebug = Game.Get("OnRenderDebug")
  Game.Set("DebugTextLabel", "")
  Game.Set("AfterDrawCallback", "QuickConsole.ScreenShot_")
  Game.Set("RenderGameVersion", 0)
  Game.Set("OnRenderDebug", "")
end

function QuickConsole.anaglyph()
  Game.Set("RT_PixelMotionBlur", 0)
  Game.Set("RP_3D", 1)
  EditorInterface.AddGVarLever("RP_3D_D", 0, 10, "Eye Dist")
  EditorInterface.AddGVarLever("RP_3D_R", 0, 0.02, "Eye Rot")
end

function QuickConsole.ScreenShot_()
  Game.ScreenShot("NoScorer*")
  Game.Set("AfterDrawCallback", "QuickConsole.ScreenShot__")
end

function QuickConsole.ScreenShot__()
  Scorer.Show(0)
  Game.Set("DebugTextLabel", QuickConsole.LastDebugTextLabel)
  QuickConsole.LastDebugTextLabel = nil
  Input.Bind(0, "Walk", "Jump", "QuickConsole.ScreenShot")
  Input.Bind(0, "Walk", "RangedAttack", "QuickConsole.ScreenShot_Scorer")
  Game.Set("RenderGameVersion", QuickConsole.LastRenderGameVersion)
  Game.Set("OnRenderDebug", QuickConsole.LastRenderDebug)
end

backupIsNoHUD = 0
backupRenderGameVersion = 1

function QuickConsole.free(idx, modifActSet)
  local cam, usr
  idx = defparam(idx, 0)
  modifActSet = defparam(modifActSet, true)
  Scorer.SetConsole(0)
  cam = Game.GetEntity(Game.GetCam(0))
  usr = Game.GetEntity(cam.MainTarget)
  if cam.FreeCam ~= 0 then
    Game.Set("NoHUD", backupIsNoHUD)
    Game.Set("RenderGameVersion", backupRenderGameVersion)
    if idx == 0 then
      print("Camera back to ", usr.Name)
      Game.Set("FreeCameraCollide", 1)
      Game.Set("FreeCameraCycle", 1)
      cam.FreeCam = 0
      usr.UsrControl = 0
      cam.UsrControl = 0
      Input.Bind(0, "Walk", "RangedAttack", "")
      Input.Bind(0, "Walk", "DigitalUp", "")
      Input.Bind(0, "Walk", "DigitalDown", "")
      Input.Bind(0, "Walk", "DigitalLeft", "")
      Input.Bind(0, "Walk", "DigitalRight", "")
      Input.Bind(0, "Walk", "Jump", "")
      Game.Set("DebugTextLabel", "")
    elseif cam.UsrControl == 0 then
      usr.UsrControl = 0
      cam.UsrControl = 1
    else
      usr.UsrControl = -1
      cam.UsrControl = 0
    end
  else
    print("Camera free")
    backupIsNoHUD = Game.Get("NoHUD")
    Game.Set("NoHUD", 1)
    backupRenderGameVersion = Game.Get("RenderGameVersion")
    Game.Set("RenderGameVersion", 0)
    QuickConsole.free_Show_Data()
    Game.Set("FreeCameraCollide", 0)
    Game.Set("FreeCameraCycle", 0)
    cam.FreeCam = 1
    cam.UsrControl = 0
    usr.UsrControl = -1
    Input.Bind(0, "Walk", "RangedAttack", "QuickConsole.ScreenShot_Scorer")
    Input.Bind(0, "Walk", "Jump", "QuickConsole.ScreenShot")
    Input.Bind(0, "Walk", "DigitalUp", "QuickConsole.free_Up_Menu")
    Input.Bind(0, "Walk", "DigitalDown", "QuickConsole.free_Down_Menu")
    Input.Bind(0, "Walk", "DigitalLeft", "QuickConsole.free_Left_Menu")
    Input.Bind(0, "Walk", "DigitalRight", "QuickConsole.free_Right_Menu")
    cam.EntityLink = ""
    if modifActSet then
      Input.SetActionSet("Walk")
    end
    if Game.Get("toolmode") ~= 0 then
      Scorer.SetCursor(0, "Cursor")
    end
  end
end

function QuickConsole.setchar(id)
  local cam, usr, pos
  cam = Game.GetEntity(Game.GetCam(0))
  usr = Game.GetEntity(cam.MainTarget)
  pos = cam.camPos
  print("V3D( " .. math.ceil(pos.x) .. ", " .. math.ceil(pos.y) .. ", " .. math.ceil(pos.z) .. " )")
  usr.Pos = pos
end

function QuickConsole.movie_sound_init(fps)
  if 0 < fps then
    print("FMOD Sound recording Init")
    Game.Set("S_SoundOutputType", "wavwriternrt")
    Game.Set("S_DSPBufferSize", 48000 / fps)
    Game.ResetSound()
  end
end

function QuickConsole.movie_sound_stop()
  if Game.Get("S_SoundOutputType") == "wavwriternrt" then
    print("FMOD Sound recording End")
    Game.Set("S_SoundOutputType", "")
    Game.Set("S_DSPBufferSize", Game.Def("S_DSPBufferSize"))
    Game.ResetSound()
  end
end

function QuickConsole.movie(fps, Speed, MovieName)
  fps = defparam(fps, 15)
  Speed = defparam(Speed, 1)
  MovieName = defparam(MovieName, "_Movie_")
  QuickConsole.movie_sound_init(fps)
  Speed = Speed / Game.Get("TimerFreqMult")
  print("Recording AVI file at" .. fps .. "fps," .. Speed .. "speed.")
  print("TimerFreqMult:" .. Game.Get("TimerFreqMult") .. " ( should be " .. 1 / Speed .. ")")
  print("type /unpackdvf when finished")
  Game.Set("MovieFramerate", fps)
  Game.Set("DisableSkipSlot", 1)
  Game.Set("R_LimitFPS", Speed * fps)
  Game.Set("AutoScreenShot", 1)
  Game.ProcessDVF(MovieName .. ".avi", 0)
  Game.ScreenShot(MovieName)
end

function QuickConsole.realmovie(fps, Speed, MovieName)
  fps = defparam(fps, 15)
  Speed = defparam(Speed, 1)
  MovieName = defparam(MovieName, "_Movie_")
  QuickConsole.movie_sound_init(fps)
  Speed = Speed / Game.Get("TimerFreqMult")
  print("Recording AVI file at" .. fps .. "fps," .. Speed .. "speed.")
  print("TimerFreqMult:" .. Game.Get("TimerFreqMult") .. " ( should be " .. 1 / Speed .. ")")
  print("type /unpackdvf when finished")
  Game.Set("MovieFramerate", fps)
  Game.Set("DisableSkipSlot", 1)
  Game.Set("R_ForceFPS", Speed * fps)
  Game.Set("AutoScreenShot", 1)
  Game.ProcessDVF(MovieName .. ".avi", 0)
  Game.ScreenShot(MovieName)
end

function QuickConsole.framemovie(fps, Speed, FrameName, Quality)
  fps = defparam(fps, 15)
  Speed = defparam(Speed, 1)
  FrameName = defparam(FrameName, "_Frame_")
  Quality = defparam(Quality, 100)
  QuickConsole.movie_sound_init(fps)
  Speed = Speed / Game.Get("TimerFreqMult")
  print("Recording AVI file at" .. fps .. "fps," .. Speed .. "speed.")
  print("TimerFreqMult:" .. Game.Get("TimerFreqMult") .. " ( should be " .. 1 / Speed .. ")")
  print("type /stopmovie when finished")
  Game.Set("MovieFramerate", fps)
  Game.Set("DisableSkipSlot", 1)
  Game.Set("R_ForceFPS", Speed * fps)
  Game.Set("AutoScreenShot", 1)
  Game.Set("MovieJpegQuality", Quality)
  Game.ScreenShot(FrameName .. "*")
end

function QuickConsole.stopmovie(name)
  name = defparam(name, "Movie/Movie")
  Game.ProcessDVF(name .. ".dvf", 3)
  Game.SetTimeSpeed(1)
  Game.Set("S_PitchScale", 1)
  Game.Set("DisableSkipSlot", 0)
  Game.Set("R_LimitFPS", 0)
  Game.Set("R_ForceFPS", 0)
  Game.Set("AutoScreenShot", 0)
  Game.ProcessDVF(name .. ".dvf", 2)
  QuickConsole.movie_sound_stop()
end

function QuickConsole.moviesyncsnd()
  Sound.LoadSound("Sounds/Generic/Misc/MovieSync.wav")
  Scorer.PlayScorerSound("MovieSync", 1, 0)
end

function QuickConsole.listmodels()
  Game.ListModels()
end

function QuickConsole.modelinfo(Ename, Nmodel)
  Ename = defparam(Ename, "")
  Nmodel = defparam(Nmodel, 0)
  Game.ModelInfo(Ename, Nmodel)
end

function QuickConsole.reset3d()
  Game.Reset3D()
end

function QuickConsole.resettextures()
  Game.ResetTextures()
end

function QuickConsole.resetmatparams()
  Game.ResetMatParams()
end

function QuickConsole.resetrender()
  Game.ResetRender()
end

function QuickConsole.resetsound()
  Game.ResetSound()
end

function QuickConsole.v(val, name, posdata)
  if val == nil then
    EditorInterface.ShowList = {}
  else
    EditorInterface.AddViewVar(val, name, posdata)
  end
end

QuickConsole.DisplayVarList = {
  camon = {
    {
      "Game.Get('CameraFixFocus')",
      "i"
    },
    {
      "Game.Get('CameraFixFocusDist')",
      "Dist"
    },
    {
      "Game.Get('CameraFixFocusFov')",
      "Fov"
    },
    {
      "Game.Get('CameraFixFocusNode')",
      "Node"
    },
    {
      "Game.Get('CameraFixFocusNodeB')",
      "NodeB"
    },
    {
      "Game.Get('CameraFixAtoBFactor')",
      "BFactor"
    },
    {
      "Game.Get('CameraFixFocusPulse')",
      "Pulse"
    },
    {
      "Game.Get('CameraFixFocusRoll')",
      "Roll"
    }
  },
  musicsave = {
    {
      "SoundUtils.SaveVar.Status.Value",
      "Stat"
    },
    {
      "SoundUtils.SaveVar.File.Value",
      "File"
    },
    {
      "SoundUtils.SaveVar.Volume.Value",
      "Vol"
    },
    {
      "SoundUtils.SaveVar.LoopCount.Value",
      "nLoop"
    },
    {
      "SoundUtils.SaveVar.RelaxFiles.Value",
      "Rlx"
    },
    {
      "SoundUtils.SaveVar.RelaxVolume.Value",
      "RVol"
    },
    {
      "SoundUtils.SaveVar.CombatFiles.Value",
      "Cmbt"
    },
    {
      "SoundUtils.SaveVar.CombatVolume.Value",
      "CVol"
    }
  },
  reverb = {
    {
      "Game.Get('DefaultReverbType')",
      "D_T"
    },
    {
      "Game.Get('DefaultReverbLevel')",
      "D_L"
    },
    {
      "Game.Get('S_ReverbType')",
      "T"
    },
    {
      "Game.Get('S_ReverbLevel')",
      "L"
    }
  },
  cam = {
    {
      "Game.GetEntity(Game.GetCam(0)).FixedCam",
      "Cam"
    },
    {
      "Game.GetEntity(Game.GetCam(0)).LastFixedTgtPos:str3()",
      "DDist",
      function()
        DebugDraw.DrawSphere(Game.GetEntity(Game.GetCam(0)).LastFixedTgtPos, 20, Color(255, 255, 255, 255))
      end
    }
  },
  anm = {
    {
      "player.Action",
      "Act"
    },
    {
      "player.oActCtrl.oAction.FirstFrame",
      "First"
    },
    {
      "player.oActCtrl.AnimFrame",
      "Frame"
    },
    {
      "player.oActCtrl.oAction.LastFrame",
      "Last"
    },
    {
      "player.DefLoop",
      "DLoop"
    }
  },
  titan = {
    {
      "TitanLib.acEntity.Action",
      "Act"
    },
    {
      "TitanLib.acEntity.oActCtrl.oAction.FirstFrame",
      "First"
    },
    {
      "TitanLib.acEntity.oActCtrl.AnimFrame",
      "Frame"
    },
    {
      "TitanLib.acEntity.oActCtrl.oAction.LastFrame",
      "Last"
    },
    {
      "TitanLib.acEntity.DefLoop",
      "DLoop"
    },
    {
      "TitanLib.acEntity.oAI.bEnable",
      "AI"
    }
  },
  mud = {
    {
      "player.iLastStepSurface",
      "Surf"
    },
    {
      "player.ExtraSufix",
      "Sufix"
    },
    {
      "player.JustYModelDisp",
      "Down"
    },
    {"MudCounter", "cnt"}
  },
  save = {
    {
      "Game.Get(\"SaveUsedMemoryConfig\")*100",
      "Config"
    },
    {
      "Game.Get(\"SaveUsedMemoryLocal\")*100",
      "Local"
    }
  }
}

function QuickConsole.V(name)
  local a = QuickConsole.DisplayVarList[name]
  for i = 1, #a do
    QuickConsole.v(a[i][1], a[i][2], a[i][3])
  end
end

function QuickConsole.viewer()
  Game.Set("Viewer", 1)
  Game.Set("ViewerFOV", 90)
  Input.SetActionSet("Racer")
end

function QuickConsole.shent()
  local e1, s
  e1 = Game.GetFirst()
  while e1 ~= nil do
    s = string.format("%d %-10s = V3D(%6d,%6d,%6d) ", e1.Active, e1.Name, math.ceil(e1.Pos.x), math.ceil(e1.Pos.y), math.ceil(e1.Pos.z))
    if e1:IsType("WithLife") then
      s = s .. string.format("%-5s %4d", e1.TgType, e1.Life)
    end
    print(s)
    e1 = Game.GetEntity(e1.NextInSlot)
  end
end

function QuickConsole.speed(ts)
  Game.SetTimeSpeed(ts)
end

function QuickConsole.milio(ts)
  local cam
  cam = Game.GetEntity(Game.GetCam(0))
  if cam.FreeCam ~= 0 then
    QuickConsole.free()
  end
  QuickConsole.free()
  if Milios == nil then
    Game.PreloadLibrary("Scripts/Milios.lua", "Milios")
  end
  Milios.Init(ts)
end

function QuickConsole.m(MapName)
  MapName = "Levels/" .. MapName
  if not Game.FileExist(MapName .. "/Map/Map3D.SM3") and not Game.FileExist(MapName .. "/Map/Map3D.M3D") then
    Game.ConsoleError("Map not found:" .. MapName .. "\n")
    return
  end
  if Game.Get("toolmode") ~= 0 and not Game.FileExist(init.GetLevelScriptsPath()) then
    Game.ConsoleError("Scripts not found at:" .. init.GetLevelScriptsPath() .. "\n")
    Game.Set("LevelScriptsPrePath", "")
    Game.Set("LevelScriptsPostPath", "")
    return
  end
  Game.LoadLevel(MapName)
end

function QuickConsole.map(MapName)
  if MapName == nil then
    MapName = string.sub(Game.GetLevelPath(), 8)
  end
  Game.Set("ForceReload", 1)
  QuickConsole.m(MapName)
end

function QuickConsole.buildmap()
  Game.BuildMap()
end

function QuickConsole.precalc()
  Precalc.Build()
end

function QuickConsole.color()
  EffectsTools.ColorPickerInit()
end

function QuickConsole.dinavar(Name, modifier, mmval)
  if DinaVar == nil then
    Game.PreloadLibrary("Scripts/DinaVar.lua", "DinaVar")
  end
  DinaVar.AddDinaVar(Name, modifier, mmval)
end

function QuickConsole.ToolsMenu()
  if QuickConsole.ToolExec ~= nil then
    QuickConsole.ToolExec()
    QuickConsole.ToolExec = nil
  end
  print("Tools Menu")
  if DinaVar == nil then
    Game.PreloadLibrary("Scripts/DinaVar.lua", "DinaVar")
  end
  DinaVar.DefDinaName = "Tools Menu"
  DinaVar.AddClickCtrl("[F]ree", "Menu.BackToGame(0);QuickConsole.free()", "F")
  DinaVar.AddClickCtrl("[R]eload", "Menu.BackToGame(0);QuickConsole.reload()", "R")
  DinaVar.AddClickCtrl("Render [E]ngine", "Menu.BackToGame(0);QuickConsole.tools()", "E")
  DinaVar.AddClickCtrl("C[o]ntroller", "Menu.BackToGame(0);QuickConsole.ControllerMenu()", "O")
  DinaVar.AddClickCtrl("[0] Light Shadows", "local t=Game.Get(\"r_lightshadows\"); if t<1 then t=t+1 else t=0 end; Game.Set(\"r_lightshadows\",t);return \"[0] Light Shadows = \"..t", "NUMPAD0")
  DinaVar.DefDinaName = "Sound Menu"
  DinaVar.AddClickCtrl("[P]ositional", "Menu.BackToGame(0);QuickConsole.milio()", "P")
  DinaVar.AddClickCtrl("[A]rea sound", "Menu.BackToGame(0);QuickConsole.strigg()", "A")
  DinaVar.DefDinaName = "Game Menu"
  DinaVar.AddClickCtrl("E[n]emies", "Menu.BackToGame(0);QuickConsole.enem()", "N")
  DinaVar.AddClickCtrl("[T]riggers", "Menu.BackToGame(0);QuickConsole.trigg()", "T")
  DinaVar.AddClickCtrl("Ent[i]ties", "Menu.BackToGame(0);QuickConsole.entset()", "I")
  DinaVar.AddClickCtrl("[S]cene", "Menu.BackToGame(0);QuickConsole.play()", "S")
  DinaVar.AddClickCtrl("Parti[c]les Design", "Menu.BackToGame(0);QuickConsole.pse()", "C")
  DinaVar.AddClickCtrl("Partic[l]es Placement", "Menu.BackToGame(0);QuickConsole.pss()", "L")
  DinaVar.AddClickCtrl("[H]elpers", "QuickConsole.cagueitor();Game.Set(\"CShow\",12);Menu.BackToGame(0);Game.PreloadLibrary(\"Scripts/HelperSet.lua\", \"HelperSet\")", "H")
  DinaVar.AddClickCtrl("[J] Area Help", "Menu.BackToGame(0);QuickConsole.areatrigg()", "J")
end

function QuickConsole.ControllerMenu()
  if QuickConsole.ToolExec ~= nil then
    QuickConsole.ToolExec()
    QuickConsole.ToolExec = nil
  end
  local t
  print("ControllerMenu")
  if DinaVar == nil then
    Game.PreloadLibrary("Scripts/DinaVar.lua", "DinaVar")
  end
  DinaVar.DefDinaName = "Controller Menu"
  t = "InvertCharAxisControl"
  DinaVar.ClickCtrl_Add(t .. " = " .. Game.Get(t), "local t = \"" .. t .. "\";Game.Set(t,math.mod(Game.Get(t)+1,2));return t..\" = \"..Game.Get(t)")
  t = "HRotAccel"
  DinaVar.ClickCtrl_Add(t .. " = " .. Game.Get(t), "local t = \"" .. t .. "\";Game.Set(t,math.mod(Game.Get(t)+1,2));return t..\" = \"..Game.Get(t)")
  t = "VRotAccel"
  DinaVar.ClickCtrl_Add(t .. " = " .. Game.Get(t), "local t = \"" .. t .. "\";Game.Set(t,math.mod(Game.Get(t)+1,2));return t..\" = \"..Game.Get(t)")
  DinaVar.Separator()
  t = "AidedAim"
  DinaVar.ClickCtrl_Add(t .. " = " .. Game.Get(t), "local t = \"" .. t .. "\";Game.Set(t,math.mod(Game.Get(t)+1,2));return t..\" = \"..Game.Get(t)")
  t = "AimBrake"
  DinaVar.ClickCtrl_Add(t .. " = " .. Game.Get(t), "local t = \"" .. t .. "\";Game.Set(t,math.mod(Game.Get(t)+1,2));return t..\" = \"..Game.Get(t)")
  t = "AllwaysReload"
  DinaVar.ClickCtrl_Add(t .. " = " .. Game.Get(t), "local t = \"" .. t .. "\";Game.Set(t,math.mod(Game.Get(t)+1,2));return t..\" = \"..Game.Get(t)")
  DinaVar.Separator()
  t = "VRotSpeed"
  DinaVar.EditSlider_Add(t, "Game.Set('" .. t .. "',%f)", V3D(0, 1, Game.Get(t)), 0)
  t = "HRotSpeed"
  DinaVar.EditSlider_Add(t, "Game.Set('" .. t .. "',%f)", V3D(0, 1, Game.Get(t)), 0)
  DinaVar.Separator()
  t = "MaxTurnAccelSpeed"
  DinaVar.EditSlider_Add(t, "Game.Set('" .. t .. "',%f)", V3D(0.1, 10, Game.Get(t)), 0)
  t = "MinTurnAccelSpeed"
  DinaVar.EditSlider_Add(t, "Game.Set('" .. t .. "',%f)", V3D(0.1, 10, Game.Get(t)), 0)
  t = "TurnAccelTime"
  DinaVar.EditSlider_Add(t, "Game.Set('" .. t .. "',%f)", V3D(0.1, 10, Game.Get(t)), 0)
end

function QuickConsole.areatrigg()
  local cam
  cam = Game.GetEntity(Game.GetCam(0))
  if cam.FreeCam ~= 0 then
    QuickConsole.free()
  end
  QuickConsole.free()
  if TriggSet == nil then
    Game.PreloadLibrary("Scripts/TriggSet.lua", "TriggSet")
  end
  if AreaSet == nil then
    Game.PreloadLibrary("Scripts/AreaSet.lua", "AreaSet")
  end
  TriggSet.TriggLib = MapAreaTrigg
  TriggSet.TriggLibName = "MapAreaTrigg"
  TriggSet.TriggPref = "Area_"
  TriggSet.TypeClass = "Area"
  TriggSet.DataDefault = {}
  TriggSet.DataLimits = {}
  TriggSet.OutUsr = AreaSet.OutTrigg
  TriggSet.OutUsrFuncs = AreaSet.OutTriggFuncs
  TriggSet.MenuUsr = AreaSet.MenuTrigg
  TriggSet.DebugSelector = AreaSet.DebugSelector
  TriggSet.Init()
  if MapAreaTrigg.Links == nil then
    MapAreaTrigg.Links = {}
  end
end

function QuickConsole.trigg()
  local cam
  cam = Game.GetEntity(Game.GetCam(0))
  if cam.FreeCam ~= 0 then
    QuickConsole.free()
  end
  QuickConsole.free()
  if TriggSet == nil then
    Game.PreloadLibrary("Scripts/TriggSet.lua", "TriggSet")
  end
  if TriggEvent == nil then
    Game.PreloadLibrary("Scripts/TriggEvent.lua", "TriggEvent")
  end
  TriggSet.TriggLib = MapEneTrigg
  TriggSet.TriggLibName = "MapEneTrigg"
  TriggSet.TriggPref = "EneTrigg_"
  TriggSet.TypeClass = "Trigger"
  TriggSet.DataDefault = {}
  TriggSet.DataLimits = {}
  TriggSet.OutUsr = TriggEvent.OutTrigg
  TriggSet.OutUsrFuncs = TriggEvent.OutTriggFuncs
  TriggSet.MenuUsr = TriggEvent.MenuTrigg
  TriggSet.DebugSelector = TriggEvent.DebugSelector
  TriggSet.Init()
  if MapEneTrigg.Enemies == nil then
    MapEneTrigg.Enemies = {}
  end
end

function QuickConsole.strigg()
  local cam
  cam = Game.GetEntity(Game.GetCam(0))
  if cam.FreeCam ~= 0 then
    QuickConsole.free()
  end
  QuickConsole.free()
  if TriggSet == nil then
    Game.PreloadLibrary("Scripts/TriggSet.lua", "TriggSet")
  end
  TriggSet.TriggLib = MapSndTrigg
  TriggSet.TriggLibName = "MapSndTrigg"
  TriggSet.TriggPref = "SndTrigg_"
  TriggSet.TypeClass = "Trigger"
  TriggSet.DataDefault = {
    {"Snd", "ambience1"},
    {"Snd_FadeIn", 1},
    {
      "Snd_FadeOut",
      1
    },
    {"Snd_MinVol", 0.25},
    {"Snd_MaxVol", 0.25},
    {"Snd_VarVol", 0},
    {"Snd_MinPan", 0},
    {"Snd_MaxPan", 0},
    {"Snd_VarPan", 0},
    {
      "Snd_MinPitch",
      0
    },
    {
      "Snd_MaxPitch",
      0
    },
    {
      "Snd_VarPitch",
      0
    }
  }
  TriggSet.DataLimits = {
    Snd_FadeIn = {0.01, 5},
    Snd_FadeOut = {0.01, 5},
    Snd_MinVol = {0, 1},
    Snd_MaxVol = {0, 1},
    Snd_VarVol = {0, 10},
    Snd_MinPan = {-1, 1},
    Snd_MaxPan = {-1, 1},
    Snd_VarPan = {0, 10},
    Snd_MinPitch = {-16, 16},
    Snd_MaxPitch = {-16, 16},
    Snd_VarPitch = {0, 10}
  }
  TriggSet.OutUsr = nil
  TriggSet.OutUsrFuncs = nil
  TriggSet.MenuUsr = nil
  TriggSet.DebugSelector = nil
  TriggSet.Init()
end

function QuickConsole.enem()
  local cam
  cam = Game.GetEntity(Game.GetCam(0))
  if cam.FreeCam ~= 0 then
    QuickConsole.free()
  end
  QuickConsole.free()
  if EneSet == nil then
    Game.PreloadLibrary("Scripts/EneSet.lua", "EneSet")
  end
  EneSet.Init()
end

function QuickConsole.fixed()
  if DinaVar == nil then
    Game.PreloadLibrary("Scripts/DinaVar.lua", "DinaVar")
  end
  acCamera = Game.GetEntity(Game.GetCam(0)).FixedCam
  cam = Game.GetEntity(acCamera)
  DinaVar.DefDinaName = acCamera
  DinaVar.AddDinaVar("Fov", "Game.GetEntity(\"" .. acCamera .. "\").Fov = %f", V3D(20, 175, cam.Fov))
  DinaVar.AddDinaVar("DispDistance", "Game.GetEntity(\"" .. acCamera .. "\").DispDistance  = %f", V3D(100, 1000, cam.DispDistance))
  DinaVar.AddAxisCtrl("CamMove", "Game.UsrEntity(0).InCtrl_Str = %f;Game.UsrEntity(0).InCtrl_Walk = %f", V3D(-1, 1, 0), V3D(1, -1, 0))
  DinaVar.AddClickCtrl("ShowInfo", "if Game.Get(\"Cshow\")==0 then Game.Set(\"Cshow\",2) else Game.Set(\"Cshow\",0) end")
  QuickConsole.FixedUsrCheck()
end

function QuickConsole.FixedUsrCheck()
  if Input.GetActionSet() == "Menu" then
    if Game.UsrEntity(0).IgnoreUsrControl == 0 then
      Game.UsrEntity(0).IgnoreUsrControl = 1
    end
    Game.AddScheduledFunc(Game.GetTime() + 1, "FixedUsrCheck", "QuickConsole.FixedUsrCheck")
  else
    Game.UsrEntity(0).IgnoreUsrControl = 0
  end
end

function QuickConsole.play(escena)
  if PlayScene == nil then
    Game.PreloadLibrary("Scripts/PlayScene.lua", "PlayScene")
  end
  PlayScene.play(escena)
end

function QuickConsole.tools()
  if Menu == nil then
    Game.PreloadLibrary("Scripts/Menu/Menu.lua", "Menu")
  end
  if DinaVar == nil then
    Game.PreloadLibrary("Scripts/DinaVar.lua", "DinaVar")
  end
  if PlayScene == nil then
    Game.PreloadLibrary("Scripts/PlayScene.lua", "PlayScene")
  end
  DinaVar.DefDinaName = "Tools"
  DinaVar.AddListCtrl("List", {
    "Noise",
    "Bloom",
    "Depth Of Field",
    "Motion Blur",
    "Radial Blur",
    "Blur",
    "Debug Render",
    "HDR",
    "HDR Levels"
  }, "PlayScene.ManageTools(\"%s\")")
end

function QuickConsole.pse()
  if EffectsTools == nil then
    Game.PreloadLibrary("Scripts/FX/EffectsTools.lua", "EffectsTools")
  end
  EffectsTools.PS_Editor()
end

function QuickConsole.pss()
  if EffectsTools == nil then
    Game.PreloadLibrary("Scripts/FX/EffectsTools.lua", "EffectsTools")
  end
  EffectsTools.PS_Set()
end

function QuickConsole.entset()
  if Entity_Set == nil then
    Game.PreloadLibrary("Scripts/Entity_Set.lua", "Entity_Set")
  end
  Entity_Set.Init()
end

function QuickConsole.phys(ObjName)
  cam = Game.GetEntity(Game.GetCam(0))
  if cam.FreeCam ~= 0 then
    QuickConsole.free()
  end
  QuickConsole.free()
  if PlayScene == nil then
    Game.PreloadLibrary("Scripts/PhysicTool.lua", "PhysicTool")
  end
  PhysicTool.ObNam = ObjName
end

QuickConsole.GodEntity = {}

function QuickConsole.GodLoop()
  Game.AddScheduledFunc(Game.GetTime() + 0.1, "QuickConsole.GodLoop", "QuickConsole.GodLoop")
  local lst = {}
  for i in pairs(QuickConsole.GodEntity) do
    lst[#lst + 1] = i
  end
  for i = 1, #lst do
    local e = QuickConsole.GodEntity[lst[i]]
    if e.ActCtrl == "Belmont" then
      e.Life = e.oActCtrl.oActClass.Life
      Game.Set("ScorerLightPower", Game.Get("ScorerLightPowerMax"))
      Game.Set("ScorerDarkPower", Game.Get("ScorerDarkPowerMax"))
      WeaponsVial.IncrementVials(e.Name)
      WeaponsFairy.SetMaxFaires()
      WeaponsDagger.Daggers.Value = WeaponsDagger.GetMaxDaggers()
      WeaponsCrystal.IncrementCrystal()
      Stamina.SetStamina(500)
      Energy.SetEnergy(500)
    end
    if e.uData.GodMode then
      e.Invulnerable = 1
    else
      e.Invulnerable = 0
      QuickConsole.GodEntity[e.Name] = nil
    end
  end
end

function QuickConsole.god(e)
  e = defparam(e, Game.UsrEntity(0))
  e.uData.GodMode = true
  QuickConsole.GodEntity[e.Name] = e
  Game.DeleteScheduledFuncs("QuickConsole.GodLoop")
  QuickConsole.GodLoop()
end

function QuickConsole.man(e)
  e = defparam(e, Game.UsrEntity(0))
  e.uData.GodMode = false
  QuickConsole.GodEntity[e.Name] = e
  Game.DeleteScheduledFuncs("QuickConsole.GodLoop")
  QuickConsole.GodLoop()
end

function QuickConsole.dmm(DummyName)
  DummyName = defparam(DummyName, "Dummy")
  Game.ConsoleError([[


[]] .. DummyName .. "]\n")
  usr = Game.UsrEntity(0)
  if usr then
    usrpos = usr.Pos
    usrrot = usr.Ang
  else
    cam = Game.GetEntity(Game.GetCam(0))
    usrpos = cam.camPos
    usrrot = cam.camAng
  end
  Game.ConsoleError("Pos = \t" .. math.ceil(usrpos[0]) .. "\t" .. math.ceil(usrpos[1]) .. "\t" .. math.ceil(usrpos[2]) .. "\n")
  Game.ConsoleError("Rot = \t" .. math.ceil(-usrrot[0]) .. "\t" .. math.ceil(usrrot[1] + 180) .. "\t" .. math.ceil(usrrot[2]) .. [[



]])
end

function QuickConsole.hmax()
  local Name, Pos, Rot, idx, h, am
  am = Game.GetAreaManager()
  h = am.oFirstHelper
  while h ~= nil do
    h:Del()
    h = am.oFirstHelper
  end
  Game.StartDummySearch("DM_HELP_*")
  Name, Pos, Rot, idx = Game.NextDummySearch()
  while Name ~= nil do
    Pos = Game.TestLine(Pos, Pos - V3D(0, 1300, 0), "")
    h = am.oNewHelper
    h.bAdvance = true
    h.Pos = Pos + V3D(0, 130, 0)
    h.Ang = Rot
    h.bDuck = false
    h.CornerView = 0
    if string.sub(Name, 1, 13) == "DM_HELP_JONES" then
      h.Member = 1
    elseif string.sub(Name, 1, 12) == "DM_HELP_COLE" then
      h.Member = 2
    elseif string.sub(Name, 1, 15) == "DM_HELP_DELGADO" then
      h.Member = 4
    elseif string.sub(Name, 1, 14) == "DM_HELP_CHURCH" then
      h.Member = 8
    elseif string.sub(Name, 1, 16) == "DM_HELP_RAWLINGS" then
      h.Member = 16
    elseif string.sub(Name, 1, 13) == "DM_HELP_BLACK" then
      h.Member = 32
    end
    Name, Pos, Rot, idx = Game.NextDummySearch()
  end
end

function QuickConsole.cagueitor()
  local am = Game.GetAreaManager()
  local h1 = am.oFirstHelper
  local ctr1 = 0
  while h1 ~= nil do
    local h2 = am.oFirstHelper
    local ctr2 = 0
    while h2 ~= nil do
      if ctr1 ~= ctr2 and h2.bAdvance and h1.Member ~= h2.Member and (h2.Pos - h1.Pos):mod() < 80 then
        h1.bErroneous = true
        break
      end
      ctr2 = ctr2 + 1
      h2 = h2.oNext
    end
    if h1.oArea == nil then
      h1.bErroneous = true
    end
    if Game.TestSphere(h1.Pos, 50, "", 0) == "" then
      h1.bErroneous = true
    end
    ctr1 = ctr1 + 1
    h1 = h1.oNext
  end
  local h1 = am.oFirstHelper
  while h1 ~= nil do
    if h1.oArea == nil and h1.oOwner == nil then
      h1:Del()
      h1 = am.oFirstHelper
      print("Borrator")
    else
      h1 = h1.oNext
    end
  end
end

function QuickConsole.linx()
  local e1, s, e2
  e1 = Game.GetFirst()
  MapAreaTrigg.Links = {}
  while e1 ~= nil do
    if e1:IsType("Area") and string.sub(e1.Name, 0, 7) == "Area_S_" then
      if string.len(e1.Name) == 9 then
        e2 = Game.GetEntity(string.format("Area_S_%02d", string.sub(e1.Name, 8, 9) + 1))
        if e2 ~= nil then
          e1.AddLink = e2.Name
          MapAreaTrigg.Links[string.sub(e1.Name, 6)] = {
            string.sub(e2.Name, 6)
          }
        end
      else
        local i = 11
        s = string.sub(e1.Name, i, i + 1)
        MapAreaTrigg.Links[string.sub(e1.Name, 6)] = {}
        while s ~= "" do
          s = "Area_S_" .. s
          e2 = Game.GetFirst()
          while e2 ~= nil do
            if string.sub(e2.Name, 0, 9) == s then
              e1.AddLink = e2.Name
              table.insert(MapAreaTrigg.Links[string.sub(e1.Name, 6)], string.sub(e2.Name, 6))
              e2 = nil
            else
              e2 = Game.GetEntity(e2.NextInSlot)
            end
          end
          i = i + 3
          s = string.sub(e1.Name, i, i + 1)
        end
      end
    end
    e1 = Game.GetEntity(e1.NextInSlot)
  end
end

function QuickConsole.fpanm()
  print(Game.GetEntity(Game.UsrEntity(0).FPSEntity).Action)
end

function QuickConsole.control(entname)
  Actions.control(entname)
end

function QuickConsole.testchar(EntType)
  e = Game.CreateEntity("Cru", "WalkChar", Game.UsrEntity().Pos + V3D(0, 100, 0))
  e.ActCtrl = EntType
  Game.SetTriggeredEntity(0, e)
  Game.Set("PlayerCharName", e.Name)
  player = e
  QuickConsole.control(e.Name)
end

function QuickConsole.ragdoll(tipo)
  tipo = defparam(tipo, "CruzaderA")
  local cam = Game.GetEntity(Game.GetCam(0))
  local e = Game.CreateEntity("bob", "WalkChar", cam.camPos)
  e.ActCtrl = tipo
  e.Life = 0
  e.uData.DontRemoveOnDeath = true
end

function QuickConsole.windowres(width, height)
  Game.Set("WindowedWidth", width)
  Game.Set("WindowedHeight", height)
  QuickConsole.reset3d()
end

function QuickConsole.killall()
  local e1, s
  e1 = Game.GetFirst()
  while e1 ~= nil do
    if e1:IsType("WalkChar") and e1.TgType == "red" and e1.UsrControl == -1 then
      e1.Life = 0
    end
    e1 = Game.GetEntity(e1.NextInSlot)
  end
end

function QuickConsole.killsquad()
  local order = {
    "Ross",
    "Jones",
    "Cole",
    "Delgado",
    "Black",
    "Church",
    "Rawlings"
  }
  local i
  for i = 1, table.getn(order) do
    local char = Game.GetEntity(order[i])
    if char then
      char.Life = 0
    end
  end
end

function QuickConsole.testscorer()
  local Aim = Scorer.NewItem(0, "Test", "Sprite", 1)
  Aim.IsMultiSprite = 0
  Aim.File = "2D/TestScorer.alpha.tga"
  Aim.PivotX = 0
  Aim.PivotY = 0
  Aim.Unit = 1
  Aim.X, Aim.Y, Aim.Visible = 0, 0, 1
  Aim.ScaleX, Aim.ScaleY = 640, 480
  Aim.WideScale = 0
  return Aim
end

function QuickConsole.qtetest(me, you)
  if QTE.canNotQTEAttack(Game.GetEntity(me), Game.GetEntity(you)) then
    Game.ConsoleError("norl\n")
  else
    Game.ConsoleError("yes\n")
  end
  local usr = Game.UsrEntity(0)
  if usr then
    me = usr.Name
  end
  Game.AddScheduledFunc(Game.GetTime() + 0.1, "qtetest", "QuickConsole.qtetest", me, you)
end

function QuickConsole.xmen()
  local a = {
    "Jones",
    "Cole",
    "Delgado",
    "Church",
    "Rawlings",
    "Black",
    "Ross"
  }
  for i = 1, #a do
    ac = Act.GetClass(a[i])
    if ac then
      ac.RegenStepEasy = 0.025
      ac.RegenStep = 0.05
      ac.RegenStepHard = 0.075
      ac.Life = 200
      Game.ConsoleError(a[i] .. " Upgraded!\n")
    end
  end
end

function QuickConsole.GetPrior(EntityName)
  local ent = Game.GetEntity(EntityName)
  if ent and ent.oActCtrl and ent.oActCtrl.oActClass then
    local act = ent.oActCtrl.oActClass.oFirstAction
    local actlist = {}
    while act ~= nil do
      table.insert(actlist, {
        act.PriorityLevel,
        act.Name
      })
      act = act.oNext
    end
    table.sort(actlist, function(a, b)
      return a[1] < b[1]
    end)
    for a, b in pairs(actlist) do
      print(b[1] .. " " .. b[2])
    end
  end
end

function QuickConsole.tp(Variable, Name)
  Name = defparam(Name, Variable)
  Game.ConsoleError("Deprecated...\n")
end

function QuickConsole.ngame()
  Game.Set("PressGameType", 1)
  Game.Set("PressSpeedGameType", 1)
  Game.Set("PressSpeedGamePos", 0)
  Game.Set("PressSpeedAcceleration", 0)
  Game.Set("PressSpeedGameTimeUp", 1)
  Game.Set("PressSpeedGameTimeDown", 1)
  Game.Set("PressSpeedFrecuency", 0.1)
  Game.Set("PressSpeedGameShowBar", 1)
  Game.Set("PressSpeedGameCallback", "QuickConsole.AnimMoveGame")
  local c = Game.GetEntity("Belmont")
  c.IgnoreUsrControl = 1
  c.oActCtrl.oActClass:GetAct("WhipTsCatch").MinSpeed = 0.5
  c.oActCtrl.oActClass:GetAct("WhipTsCatch").MaxSpeed = 5
  c.oActCtrl:SetAction("WhipTsCatch", true)
end

function QuickConsole.AnimMoveGame(iPos)
  local c = Game.GetEntity("Belmont")
  if 1 <= iPos then
    c.oActCtrl:SetAction("WhipTsCatchEnd", true)
    c.oActCtrl.DefLoop = "Relax"
    c.IgnoreUsrControl = 0
    Game.Set("PressSpeedGameCallback", "")
  elseif iPos <= 0 then
  else
    c.oActCtrl.AnimSpeed = 1 - iPos
  end
end

function QuickConsole.sgame()
  Game.Set("PressGameType", 1)
  Game.Set("PressSpeedGameType", 0)
  Game.Set("PressSpeedGamePos", 0.5)
  Game.Set("PressSpeedAcceleration", 0.5)
  Game.Set("PressSpeedGameTime", 4)
  Game.Set("PressSpeedFrecuency", 0.1)
  Game.Set("PressSpeedGameCallback", "QuickConsole.AnimSpeedGame")
  local c = Game.GetEntity("Belmont")
  c.oActCtrl:Pause()
  c.IgnoreUsrControl = 1
  c.oActCtrl:SetAction("HangWallCorner270Left", true)
end

function QuickConsole.AnimSpeedGame(iPos)
  local c = Game.GetEntity("Belmont")
  if 1 <= iPos then
    c.oActCtrl:SetAction("HangWallFallInit", true)
    c.oActCtrl.DefLoop = "Fall"
    c.isFalling = 1
    c.oActCtrl:ContinuePlaying()
    c.IgnoreUsrControl = 0
    Game.Set("PressSpeedGameCallback", "")
  elseif iPos <= 0 then
    c.isFalling = 1
    c.oActCtrl:SetAction("HangWallClimb", true)
    c.oActCtrl.DefLoop = "Relax"
    c.oActCtrl:ContinuePlaying()
    c.IgnoreUsrControl = 0
    Game.Set("PressSpeedGameCallback", "")
  else
    c.oActCtrl:ResetPrimaryAction()
    c.oActCtrl:IncActionTime(0, c.oActCtrl.oAction.AnmTotalTime * iPos)
  end
end

function QuickConsole.mgame()
  Game.Set("PressGameType", 0)
  Game.Set("PressMomentGameSuccess", 0.1)
  Game.Set("PressMomentGameStartTime", Game.GetTime() + 2)
  Game.Set("PressMomentGameTotalTime", 1)
  Game.Set("PressMomentGameUseAreaAttack", 1)
  Game.Set("PressMomentGameCallback", "QuickConsole.ExecuteQTR")
end

function QuickConsole.ExecuteQTR(V1, V2)
  local valiu
  if V2 == 0 then
    valiu = "Directional"
  else
    valiu = "Area"
  end
  if V1 == 0 then
    Editor.MessageBox("Failure", "MB_OK", "MB_ICONEXCLAMATION")
  elseif V1 == 1 then
    Editor.MessageBox("Damage #" .. valiu, "MB_OK", "MB_ICONEXCLAMATION")
  elseif V1 == 2 then
    Editor.MessageBox("Kill   #" .. valiu, "MB_OK", "MB_ICONEXCLAMATION")
  end
end

QuickConsole.cubemap_FaceIndex = 0
QuickConsole.cubemap_FaceSet = {
  {
    "1_X_plus",
    V3D(1, 0, 0),
    V3D(0, 1, 0)
  },
  {
    "2_X_minus",
    V3D(-1, 0, 0),
    V3D(0, 1, 0)
  },
  {
    "3_Y_plus",
    V3D(0, 1, 0),
    V3D(0, 0, -1)
  },
  {
    "4_Y_minus",
    V3D(0, -1, 0),
    V3D(0, 0, 1)
  },
  {
    "5_Z_plus",
    V3D(0, 0, 1),
    V3D(0, 1, 0)
  },
  {
    "6_Z_minus",
    V3D(0, 0, -1),
    V3D(0, 1, 0)
  }
}
QuickConsole.cubemap_filename = nil
QuickConsole.cubemap_callback = nil

function QuickConsole.cubemap(filename, callback)
  QuickConsole.cubemap_filename = defparam(filename, "cubemap")
  QuickConsole.cubemap_callback = defparam(callback, nil)
  Game.Set("RP_Grafico2D", 0)
  Game.Set("R_Mult", 1)
  Game.Set("RT_HDRPostFX", 0)
  QuickConsole.cubemap_FaceIndex = 0
  Game.Set("AfterDrawCallback", "QuickConsole.cubemap_TakeEvent")
end

function QuickConsole.cubemap_TakeEvent()
  if QuickConsole.cubemap_FaceIndex > 6 then
    Game.Set("RP_Grafico2D", 1)
    Game.Set("CubeScreenShot", 0)
    if QuickConsole.cubemap_callback then
      QuickConsole.cubemap_callback()
      QuickConsole.cubemap_callback = nil
    end
    return
  end
  QuickConsole.cubemap_FaceIndex = QuickConsole.cubemap_FaceIndex + 1
  if QuickConsole.cubemap_FaceIndex <= 6 then
    Game.Set("CubeScreenShot", QuickConsole.cubemap_FaceIndex)
    Game.Set("CubeScreenShotD", QuickConsole.cubemap_FaceSet[QuickConsole.cubemap_FaceIndex][2])
    Game.Set("CubeScreenShotU", QuickConsole.cubemap_FaceSet[QuickConsole.cubemap_FaceIndex][3])
    print(QuickConsole.cubemap_FaceSet[QuickConsole.cubemap_FaceIndex][1])
    Game.ScreenShot(QuickConsole.cubemap_filename)
  end
  Game.Set("AfterDrawCallback", "QuickConsole.cubemap_TakeEvent")
end

function QuickConsole.texttest()
  t = DebugDraw.NewPrimitive("Text3D")
  t.Pos = player.Pos
  t.Speed = V3D(0, -60, 0)
  t.TimeToDel = Game.GetTime() + 0.7
  t.Text = "hola"
end

QuickConsole.PedalScreenShot = true
QuickConsole.PedalCleanScorer = true
QuickConsole.IgnorePedalCall = false

function QuickConsole.PedalCall(TimeDiff, P1, P2)
  if QuickConsole.IgnorePedalCall then
    return
  end
  P2 = defparam(P2, 0)
  if QuickConsole.PedalCleanScorer then
    Game.Set("DebugTextLabel", "")
    QuickConsole.PedalCleanScorer = false
  end
  if Input.GetActionSet() == "EditorIn" then
    local cam = Game.GetEntity(Game.GetCam(0))
    if cam.Type == "EditorCam" then
      local p1, p2
      p1 = 100 + (1 - P1 * P1 * P1 * P1) * 499900
      p2 = 100 + P2 * P2 * P2 * P2 * 499900
      if p1 < cam.fVelocity then
        cam.fVelocity = p1
      elseif p2 > cam.fVelocity then
        cam.fVelocity = p2
      end
    end
  elseif Input.GetActionSet() == "Walk" then
    local spd = 1 - P1 + P2 * (5 - P1 * 4)
    Game.Set("WorldTimerSpeed", spd)
    local cam = Game.GetEntity((Game.GetCam(0)))
    if cam and cam:IsType("FCam") then
      if P1 == 1 then
        if cam.FreeCam == 0 then
          QuickConsole.free(0, false)
        end
        cam:FreeMove(TimeDiff)
      elseif cam.FreeCam == 1 then
        QuickConsole.free(0, false)
      end
    end
  elseif Input.GetActionSet() == "Inactive" and Game.Get("Platform") ~= "PS3" then
    local spd = 1 - P1 + P2 * 5
    Game.Set("WorldTimerSpeed", spd)
    if Scene.IsPlaying and (0 < P1 or 0 < P2) then
      local e = Game.GetEntity(Scene.SceneName)
      local s = string.format("%04d/%04d >%1.2f", e.oActCtrl.AnimFrame, e.oActCtrl.AnimTotalFrames, spd)
      Game.Set("DebugTextLabel", s)
      QuickConsole.PedalCleanScorer = true
    end
  elseif QuickConsole.PedalScreenShot and P1 == 1 then
    Game.ScreenShot("")
    if Game.Get("Platform") == "PS3" then
      Game.Set("PS3_SwitchFootState", 0)
    else
      QuickConsole.PedalScreenShot = false
    end
  elseif P1 == 0 then
    QuickConsole.PedalScreenShot = true
  end
end
