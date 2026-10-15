function MakeChar.main()
  MakeChar.MaxSpeed = 1
  
  MakeChar.MinSpeed = 0.5
  MakeChar.DazedChars = {}
  MakeChar.Fake_Prefix = {}
  MakeChar.Fake_Dir = {}
  MakeChar.RelaxRotLimit = 90
end

function MakeChar.Preload()
  MakeChar.main()
end

function MakeChar.BuildPrefName(CharName)
  return "Models/Chars/" .. MakeChar.Fake_Dir[CharName] .. "/Anm/" .. MakeChar.Fake_Prefix[CharName] .. "_"
end

function MakeChar.InitChar(CharName, CharModel, look)
  local ac
  local ModelSize = 1
  CharModel = defparam(CharModel, CharName)
  MakeChar.MaxSpeed = 1.5
  MakeChar.MinSpeed = 0.8
  MakeChar.NewTurn = false
  MakeChar.Turn180 = nil
  MakeChar.Fake_Prefix[CharName] = CharModel
  MakeChar.Fake_Dir[CharName] = CharModel
  print("Loading " .. CharName .. " in " .. CharModel .. " ...\n")
  ac = Act.CreateClass(CharName)
  ac.ModelSize = ModelSize
  local level = 1
  if LevelProperties and LevelProperties.EnemyLevels and LevelProperties.EnemyLevels[CharName] then
    level = LevelProperties.EnemyLevels[CharName]
  end
  if EnemyLevels and EnemyLevels.Table[CharName] and EnemyLevels.Table[CharName][level] then
    ac.ModelPreset = EnemyLevels.Table[CharName][level].Look
  end
  if look ~= nil then
    ac.ModelPreset = look
  end
  ac.ModelFilePath = "Models/Chars/" .. CharModel .. "/" .. CharModel .. ".M3D"
  ac.TurnAngLimit = 45
  ac.MinTimeToExtraRelax = 5
  ac.MaxTimeToExtraRelax = 10
  ac.MinTimeWalking = 0.3
  ac.MinFallDist = 30
  ac.FlyAccel = 600
  ac.Radius = 60
  ac.SRadius = 12
  if MakeChar.RelaxRotLimit > 90 then
    ac.StrafeChar = 0
  end
  ac.FOV = 90
  ac.CamDist = 200
  ac.CamAng = 0
  ac.CamRot = 0
  local variables = {
    "DefInterpTime",
    "DefActSoundVolMult",
    "DefActSoundPitch",
    "DefActSoundAttInit",
    "DefActSoundAttEnd"
  }
  for i = 1, #variables do
    local varname = variables[i]
    Game.Set(varname, Game.Def(varname))
  end
  return ac
end

function MakeChar.LoadOptionalLibrary(Path, LibraryName)
  return ValidPreloadLibrary(Path .. LibraryName .. ".lua", LibraryName)
end

MakeChar.PropertyLibraries = {
  {
    "Scripts/Chars/Props/",
    "%sProps"
  },
  {
    "Scripts/Chars/Combat/",
    "%sHits",
    true
  }
}
MakeChar.ActionLibraries = {
  {
    "Scripts/Chars/Actions/%s/",
    "%s_Actions"
  }
}
MakeChar.EventLibraries = {
  {
    "Scripts/FX/Events/",
    "FXEvents%s"
  },
  {
    "Scripts/Chars/Events/%s/",
    "%s_Combat_Events"
  },
  {
    "Scripts/Chars/Events/%s/",
    "%s_Camera_Events"
  },
  {
    "Scripts/Chars/Events/%s/",
    "%s_Action_Events"
  },
  {
    "Scripts/Chars/Events/%s/",
    "%s_Events"
  },
  {
    "Scripts/Chars/Events/%s/",
    "%sMiniGames"
  },
  {
    "Scripts/Chars/Tracks/",
    "%s_Tracks"
  },
  {
    "Scripts/Chars/Tracks/Test/",
    "%s_TestTracks"
  },
  {
    "Scripts/Sound/Tracks/",
    "%sSound_Tracks"
  },
  {
    "Scripts/Chars/Tracks/%s/",
    "%sSync_Tracks"
  },
  {
    "Scripts/Chars/Tracks/%s/",
    "%sCombat_Tracks"
  },
  {
    "Scripts/Chars/Tracks/%s/",
    "%sAction_Tracks"
  },
  {
    "Scripts/Chars/Tracks/%s/",
    "%s_MiniGameTracks"
  },
  {
    "Scripts/Chars/Tracks/%s/",
    "%s_EnergyTracks"
  },
  {
    "Scripts/Chars/Tracks/%s/",
    "%s_TiredTracks"
  },
  {
    "Scripts/Chars/Tracks/%s/",
    "%s_StaminaTracks"
  },
  {
    "Scripts/Chars/Tracks/%s/",
    "%sAnimLink_Tracks"
  },
  {
    "Scripts/FX/Tracks/%s/",
    "%sFXSwitchAction"
  },
  {
    "Scripts/Chars/Tracks/%s/",
    "%sHitable_Tracks"
  },
  {
    "Scripts/Sound/",
    "%sSound",
    true
  }
}

function MakeChar.LoadLibraryArray(acName, la)
  for i = 1, #la do
    local a = la[i]
    local libname = string.format(a[2], acName)
    MakeChar.LoadOptionalLibrary(string.format(a[1], acName), libname)
    if Game.Get("ToolMode") == 0 and not a[3] then
      _G[libname] = nil
    end
  end
end

function MakeChar.LoadProperties(ac)
  Weapons.DefaultProperties(ac)
  MakeChar.LoadLibraryArray(ac.Name, MakeChar.PropertyLibraries)
  MakeChar.SetLevelClassInfo(ac)
  if Game.Get("ToolMode") == 0 then
    _G["IK" .. ac.Name .. "Props"] = nil
    _G["Design" .. ac.Name .. "Props"] = nil
    _G["Player" .. ac.Name .. "Props"] = nil
    _G["Map" .. ac.Name .. "Props"] = nil
  end
end

function MakeChar.LoadActions(ac)
  MakeChar.LoadLibraryArray(ac.Name, MakeChar.ActionLibraries)
  MakeChar.LoadOptionalActions(ac)
end

Game.Set("EventPersistenceMarker", false)

function MakeChar.SaveFXData(ac)
  local st = Game.GetSingleTable()
  st:WriteBegin()
  if ac.uData.WeaponType then
    st:WriteString(ac.uData.WeaponType)
  else
    st:WriteString("nil")
  end
  if ac.uData.SurfaceType then
    st:WriteString(ac.uData.SurfaceType)
  else
    st:WriteString("nil")
  end
  if ac.uData.BlockSurfaceType then
    st:WriteString(ac.uData.BlockSurfaceType)
  else
    st:WriteString("nil")
  end
  if FXSoundTable then
    local a = FXSoundTable[ac.Name]
    if a then
      for k, v in pairs(a) do
        st:WriteString(k)
        st:WriteString(v[1])
        st:WriteFloat(v[2])
        st:WriteFloat(v[3])
        st:WriteFloat(v[4])
        st:WriteFloat(v[5])
        st:WriteBoolean(v[6])
        st:WriteFloat(v[7])
        st:WriteFloat(v[8])
      end
    end
  end
  st:WriteEnd()
end

function MakeChar.LoadFXData(ac)
  local st = Game.GetSingleTable()
  if st.NextType ~= "begin" then
    Game.ConsoleError("Error in MakeChar.LoadFXData")
    return
  end
  st:ReadNextType()
  ac.uData.WeaponType = st:Read()
  ac.uData.SurfaceType = st:Read()
  ac.uData.BlockSurfaceType = st:Read()
  if ac.uData.WeaponType == "nil" then
    ac.uData.WeaponType = nil
  end
  if ac.uData.SurfaceType == "nil" then
    ac.uData.SurfaceType = nil
  end
  if ac.uData.BlockSurfaceType == "nil" then
    ac.uData.BlockSurfaceType = nil
  end
  local a = {}
  while st.NextType ~= "end" do
    a[st:Read()] = {
      st:Read(),
      st:Read(),
      st:Read(),
      st:Read(),
      st:Read(),
      st:Read(),
      st:Read(),
      st:Read()
    }
  end
  st:ReadNextType()
  if not FXSoundTable then
    FXSoundTable = {
      [ac.Name] = a
    }
  else
    FXSoundTable[ac.Name] = a
  end
end

function MakeChar.LoadEvents(ac)
  if init and Game.Get("ToolMode") == 0 then
    local st = Game.GetSingleTable()
    st.TargetFile = Game.GetLevelPath() .. "/Scripts/Char_" .. ac.Name .. ".lbt"
    local SourceFile
    for i = 1, #MakeChar.EventLibraries do
      local a = MakeChar.EventLibraries[i]
      local sf = string.format(a[1], ac.Name) .. string.format(a[2], ac.Name) .. ".lua"
      if SourceFile then
        SourceFile = SourceFile .. "," .. sf
      else
        SourceFile = sf
      end
    end
    st.SourceFile = SourceFile
    if st.bPrecompile then
      MakeChar.__LoadEvents(ac)
      st:OpenFileOut()
      MakeChar.SaveFXData(ac)
      ac:SavePersistentEvents()
      st:CloseFileOut()
      return
    end
    MakeChar.LoadSpecificCharFiles(ac)
    st:Open()
    MakeChar.LoadFXData(ac)
    ac:LoadPersistentEvents()
    st:Close()
  else
    MakeChar.__LoadEvents(ac)
  end
end

function MakeChar.__LoadEvents(ac)
  MakeChar.LoadSpecificCharFiles(ac)
  Game.Set("EventPersistenceMarker", true)
  local Name = ac.Name
  MakeChar.LoadLibraryArray(Name, MakeChar.EventLibraries)
  local SoundLib = _G[Name .. "Sound"]
  if SoundLib and SoundLib.LoadSounds then
    SoundLib.LoadSounds(Name)
  end
  Game.Set("EventPersistenceMarker", false)
end

function MakeChar.OnCreate(e)
  local ac = e.oActCtrl.oActClass
  if ac.uData.HookInfo and ac.uData.HookInfo.Default then
    Hook.InitEnemyHook(e, ac.uData.HookInfo.Default)
  end
end

function MakeChar.isEnemyLoad(badboy)
  if init and init.Enemies then
    for i = 1, #init.Enemies do
      if init.Enemies[i] == badboy then
        return true
      end
    end
  end
  return false
end

function MakeChar.AddRelaxActions(ac, turnspeed, nExtraRlx, Prefix, AliasPrefix, TurnLimit)
  local CharName, am, RelaxAnm, dukuy
  nExtraRlx = defparam(nExtraRlx, 2)
  Prefix = defparam(Prefix, "")
  AliasPrefix = defparam(AliasPrefix, "")
  TurnLimit = defparam(TurnLimit, 45)
  RelaxAnm = Prefix .. "Relax"
  dukuy = string.sub(RelaxAnm, 1, 4) ~= "Duck"
  ac.TurnAngLimit = TurnLimit
  CharName = ac.Name
  am = MakeChar.CreateRelaxAction(ac, turnspeed, AliasPrefix .. RelaxAnm, RelaxAnm, 1)
  am.NodeModifier = 0
  am.AngleModifierSpeed = 1
  if dukuy then
    am.FKMethod = 1
  end
  ac.DefAction = "Relax"
  for i = 0, nExtraRlx - 1 do
    am = MakeChar.CreateRelaxAction(ac, turnspeed, AliasPrefix .. RelaxAnm .. i, RelaxAnm .. i)
    if dukuy then
      am.FKMethod = 1
    end
  end
  if turnspeed == 0 then
    if MakeChar.NewTurn then
      am = MakeChar.CreateRelaxAction(ac, 180, AliasPrefix .. Prefix .. "TurnLeft", Prefix .. "TurnLeft")
      am.RotSpeed = TurnLimit / am.AnmTotalTime
      am.RotDirection = -1
      am.NodeModifier = 0
      am.oAI.bRot = true
      if dukuy then
        am.FKMethod = 1
      end
      am = MakeChar.CreateRelaxAction(ac, 180, AliasPrefix .. Prefix .. "TurnRight", Prefix .. "TurnRight")
      am.RotSpeed = TurnLimit / am.AnmTotalTime
      am.RotDirection = 1
      am.NodeModifier = 0
      am.oAI.bRot = true
      if dukuy then
        am.FKMethod = 1
      end
    else
      am = MakeChar.CreateRelaxAction(ac, 180, AliasPrefix .. Prefix .. "Turn", Prefix .. "Turn")
      am.RotSpeed = TurnLimit / am.AnmTotalTime
      am.NodeModifier = 0
      am.oAI.bRot = true
      if dukuy then
        am.FKMethod = 1
      end
    end
    if MakeChar.Turn180 then
      am = MakeChar.CreateRelaxAction(ac, 180, AliasPrefix .. Prefix .. "Turn180", Prefix .. "Turn180")
      am.RotSpeed = 180 / am.AnmTotalTime
      am.RotDirection = MakeChar.Turn180
      am.NodeModifier = 0
      am.oAI.bRot = true
      if dukuy then
        am.FKMethod = 1
      end
    end
  end
end

function MakeChar.OnExitTrack(e, Track, Frame, lSeg, nSeg)
  if lSeg and not nSeg then
    lSeg.uData.CallBack(e)
  end
end

function MakeChar.AddExitTrack(am, Name, CallBack, InitFrame, EndFrame)
  local Track = am.oTracks:Add(Name)
  InitFrame = defparam(InitFrame, am.FirstFrame)
  EndFrame = defparam(EndFrame, am.LastFrame)
  Track.OnSwitch = "MakeChar.OnExitTrack"
  Track.n = 1
  local seg
  seg = Track[1]
  seg.Init = InitFrame
  seg.bEmpty = false
  seg.uData.CallBack = CallBack
  seg.End = EndFrame
end

function MakeChar.ModifyParams(ac, ActList, ParamList, typo)
  local actn, act, idx
  typo = defparam(typo, "")
  for actn = 1, table.getn(ActList) do
    act = ac:GetAct(typo .. ActList[actn])
    if act == nil then
      print("ERROR IN : MakeChar.ModifyParams() " .. ac.Name .. "  " .. typo .. ActList[actn] .. "")
    else
      for idx in pairs(ParamList) do
        act[idx] = ParamList[idx]
      end
    end
  end
end

function MakeChar.ModifyParamsAI(ac, ActList, ParamList, typo)
  local actn, act, idx
  typo = defparam(typo, "")
  for actn = 1, table.getn(ActList) do
    act = ac:GetAct(typo .. ActList[actn])
    if act == nil then
      print("ERROR IN : MakeChar.ModifyParamsAI() " .. ac.Name .. "  " .. typo .. ActList[actn] .. "")
    else
      for idx in pairs(ParamList) do
        act.oAI[idx] = ParamList[idx]
      end
    end
  end
end

function MakeChar.CreateMoveXtraList(ac, ActioName, a, typo)
  local am, ev, rez
  typo = defparam(typo, "")
  am = ac:GetAct(typo .. ActioName)
  ev = am:NewEvent(am.AnmTotalTime)
  ev.Name = ActioName
  ev.Func = "!CharXtraAnim"
  rez = ev
  for i = 1, table.getn(a) do
    am = MakeChar.AddMove(ac, typo .. ActioName .. a[i], typo .. ActioName .. a[i], 720, 1, 0)
    ev = am:NewEvent(am.AnmTotalTime)
    ev.Name = ActioName
    ev.Func = "!AnmSetAction"
  end
  return rez
end

function MakeChar.CreateRelaxList(ac, turnspeed, ActList, Loop, typo)
  local actn, Name, am
  typo = defparam(typo, "")
  for actn = 1, table.getn(ActList) do
    Name = typo .. ActList[actn]
    am = MakeChar.CreateRelaxAction(ac, turnspeed, Name, Name, Loop)
    if string.sub(Name, 1, 4) ~= "Duck" then
      am.FKMethod = 1
    end
  end
end

function MakeChar.CreateRelaxAction(ac, turnspeed, Name, Anm, Loop)
  local am, CharName
  Name = defparam(Name, "Relax")
  Anm = defparam(Anm, "Relax")
  Loop = defparam(Loop, 0)
  am = ac:GetAct(Name)
  if am == nil then
    am = ac:NewAct(Name)
    CharName = ac.Name
    am.AnmFilePath = MakeChar.BuildPrefName(CharName) .. Anm .. ".M3D"
    am.isLoop = Loop
    am.RotSpeed = turnspeed
    am.AngRotLimit = MakeChar.RelaxRotLimit
    am.UseDisp = 0
    am.NodeModifier = -1
    am.AngleModifierSpeed = 5
  end
  return am
end

function MakeChar.CreateCombatAction(ac, Name, Anm)
  local am, CharName
  am = ac:NewAct(Name)
  CharName = ac.Name
  am.AnmFilePath = MakeChar.BuildPrefName(CharName) .. Anm .. ".M3D"
  am.AngRotLimit = MakeChar.RelaxRotLimit
  am.UseDisp = 1
  am.NodeModifier = -1
  am.AngleModifierSpeed = 5
  am.FKMethod = 1
  am.PriorityLevel = 5
  am.uData.CombatAction = true
  am.Group = "Combat"
  return am
end

function MakeChar.CreateHideAction(ac, Anm)
  local am, CharName
  am = ac:NewAct("Hide")
  CharName = ac.Name
  am.AnmFilePath = MakeChar.BuildPrefName(CharName) .. Anm .. ".M3D"
  am.AngRotLimit = MakeChar.RelaxRotLimit
  am.UseDisp = 1
  am.IgnoreAI = 1
  am.PriorityLevel = 4096
  ev = am:NewEvent(am.AnmTotalTime)
  ev.Func = "MakeChar.Instakill"
  ev.Discardable = 0
  return am
end

function MakeChar.Instakill(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local enemyGroup = NPC.Groups[ent.EntityList]
  enemyGroup.uData.Spawned = enemyGroup.uData.Spawned - 1
  ent:Del()
end

function MakeChar.CreateInitLoopEnd(ac, turnspeed, Name, Priority)
  local am, CharName, Valuez, i, Nam, Loop
  Name = defparam(Name, "Relax")
  Priority = defparam(Priority, 1)
  Valuez = {
    Name,
    Name .. "Init",
    Name .. "End"
  }
  Loop = 1
  for i = 1, 3 do
    Nam = Valuez[i]
    am = ac:GetAct(Nam)
    if am == nil then
      am = ac:NewAct(Nam)
      CharName = ac.Name
      am.AnmFilePath = MakeChar.BuildPrefName(CharName) .. Nam .. ".M3D"
      am.isLoop = Loop
      am.RotSpeed = turnspeed
      am.AngRotLimit = MakeChar.RelaxRotLimit
      am.UseDisp = 0
      am.NodeModifier = -1
      am.AngleModifierSpeed = 5
      am.PriorityLevel = Priority
      Loop = 0
    end
  end
end

function MakeChar.SetNodeRotation(ac, iSet, iNode, x, y)
  local Name
  Name = "Node" .. iNode .. "_" .. iSet
  ac[Name .. "x"] = x / 100
  ac[Name .. "y"] = y / 100
end

function MakeChar.AddMove(ac, action, animation, turnspeed, UseDisp, isLoop)
  local am, CharName
  am = ac:NewAct(action)
  CharName = ac.Name
  am.AnmFilePath = MakeChar.BuildPrefName(CharName) .. animation .. ".M3D"
  am.isLoop = isLoop
  am.RotSpeed = turnspeed
  am.AngRotLimit = MakeChar.RelaxRotLimit
  am.UseDisp = UseDisp
  am.MaxSpeed = MakeChar.MaxSpeed
  am.MinSpeed = MakeChar.MinSpeed
  am.NodeModifier = 0
  am.AngleModifierSpeed = 5
  am.UseFlyFall = 0
  am.oAI.bDisplacement = true
  return am
end

function MakeChar.AddLinkActions(am, Link, typo, manray)
  local Lnk = am.oTracks:Add(Link .. "Link")
  local Lnkn = 1
  for i = 2, #manray do
    if manray[i - 1] ~= manray[i] then
      Lnkn = Lnkn + 1
    end
  end
  Lnk.n = Lnkn
  Lnk[1].oInit.Frame = am.FirstFrame
  Lnk[1].Info = typo .. manray[1]
  Lnk[1].bEmpty = false
  Lnk[Lnk.n].oEnd.Frame = am.FirstFrame + am.AnmTotalTime * am.AnmFPS
  local Lnkn = 1
  for i = 2, #manray do
    if manray[i - 1] ~= manray[i] then
      Lnkn = Lnkn + 1
      local Segment = Lnk[Lnkn]
      Segment.oInit.Frame = am.FirstFrame + (i - 1) / #manray * am.AnmTotalTime * am.AnmFPS
      Segment.Info = typo .. manray[i]
      Segment.bEmpty = false
    end
  end
end

function MakeChar.AddLinkActionList(ac, typo, manray)
  local act, arru
  for actname in pairs(manray) do
    act = ac:GetAct(typo .. actname)
    arru = manray[actname]
    for linkname in pairs(arru) do
      MakeChar.AddLinkActions(act, linkname, typo .. arru[linkname][1], arru[linkname][2])
    end
  end
end

function MakeChar.AddWalkActions(ac, turnspeed, isRun, UseDisp, ActList, Prefix, AnmPrefix, AliasPrefix)
  local nam, actn, filnam
  turnspeed = defparam(turnspeed, 360)
  isRun = defparam(isRun, 1)
  UseDisp = defparam(UseDisp, 1)
  ActList = defparam(ActList, {
    "Walk",
    "Back",
    "StrLeft",
    "StrRight"
  })
  Prefix = defparam(Prefix, "")
  AliasPrefix = defparam(AliasPrefix, "")
  if isRun == 1 then
    table.insert(ActList, "Run")
  end
  for actn = 1, table.getn(ActList) do
    nam = Prefix .. ActList[actn]
    if AnmPrefix == nil then
      filnam = nam
    else
      filnam = AnmPrefix .. ActList[actn]
    end
    MakeChar.AddMove(ac, AliasPrefix .. nam, filnam, turnspeed, UseDisp, 1)
  end
  MakeChar.PrefixSet(ac, ActList, Prefix)
end

function MakeChar.AddInitWalkActions(ac, turnspeed, isRun, UseDisp, ActList, Prefix, AliasPrefix)
  local nam, actn
  turnspeed = defparam(turnspeed, 360)
  isRun = defparam(isRun, 1)
  UseDisp = defparam(UseDisp, 1)
  ActList = defparam(ActList, {
    "WalkInit",
    "BackInit",
    "StrLeftInit",
    "StrRightInit"
  })
  Prefix = defparam(Prefix, "")
  AliasPrefix = defparam(AliasPrefix, "")
  if isRun == 1 then
    table.insert(ActList, "RunInit")
  end
  for actn = 1, table.getn(ActList) do
    nam = Prefix .. ActList[actn]
    local am = MakeChar.AddMove(ac, AliasPrefix .. nam, nam, turnspeed, UseDisp, 0)
    am.FKMethod = 1
    am:ComputeDesplacementFrames()
  end
  MakeChar.PrefixSet(ac, ActList, Prefix)
end

function MakeChar.AddEndWalkActions(ac, turnspeed, isRun, UseDisp, ActList, Prefix, AliasPrefix)
  local nam, actn
  turnspeed = defparam(turnspeed, 360)
  isRun = defparam(isRun, 1)
  UseDisp = defparam(UseDisp, 1)
  ActList = defparam(ActList, {
    "WalkEnd",
    "BackEnd",
    "StrLeftEnd",
    "StrRightEnd"
  })
  Prefix = defparam(Prefix, "")
  AliasPrefix = defparam(AliasPrefix, "")
  if isRun == 1 then
    table.insert(ActList, "RunEnd")
  end
  for actn = 1, table.getn(ActList) do
    nam = Prefix .. ActList[actn]
    am = MakeChar.AddMove(ac, AliasPrefix .. nam, nam, turnspeed, UseDisp, 0)
    am.MinSpeed = MakeChar.MaxSpeed
    am.FKMethod = 1
    am:ComputeDesplacementFrames()
  end
  MakeChar.PrefixSet(ac, ActList, Prefix)
end

function MakeChar.AddHitDamage(ac, ActList)
  for i = 1, table.getn(ActList) do
    am = MakeChar.CreateRelaxAction(ac, 180, ActList[i], ActList[i], 0)
    am.UseDisp = 1
    am.NodeModifier = -1
    am.PriorityLevel = 1025
  end
end

function MakeChar.AddFallAction(ac, turnspeed, InitAction, EndAction, Prefix)
  local am, CharName, actn, namy, ActList
  turnspeed = defparam(turnspeed, 45)
  InitAction = defparam(InitAction, 0)
  EndAction = defparam(EndAction, 0)
  Prefix = defparam(Prefix, "")
  CharName = ac.Name
  ActList = {
    {"Fall", 1}
  }
  if InitAction == 1 then
    table.insert(ActList, {"FallInit", 0})
  end
  if EndAction == 1 then
    table.insert(ActList, {"FallEnd", 0})
  end
  MakeChar.AddFallActions(ac, ActList, turnspeed, Prefix)
end

function MakeChar.AddFallActions(ac, ActList, turnspeed, Prefix, priority)
  local am, CharName, actn, namy
  turnspeed = defparam(turnspeed, 45)
  Prefix = defparam(Prefix, "")
  CharName = ac.Name
  namy = MakeChar.BuildPrefName(CharName)
  local ActNames = {}
  for actn = 1, table.getn(ActList) do
    local actx = ActList[actn]
    nam = Prefix .. actx[1]
    am = ac:NewAct(nam)
    am.AnmFilePath = namy .. nam .. ".M3D"
    am.isLoop = actx[2]
    am.RotSpeed = turnspeed
    am.NodeModifier = -1
    am.AngleModifierSpeed = 5
    am.CheckClimb = 1
    am.oAI.bDisplacement = true
    am.IgnoreAI = 1
    table.insert(ActNames, actx[1])
  end
  MakeChar.PrefixSet(ac, ActNames, Prefix)
end

function MakeChar.PrefixSet(ac, listAct, Prefix)
  local am, i
  if Prefix ~= "" then
    for i = 1, table.getn(listAct) do
      am = ac:GetAct(Prefix .. listAct[i])
      am.NodeModifier = 1
      am.AngleModifierSpeed = 5
    end
  end
end

function MakeChar.AddWeaponSet(ac, WeaponType, turnspeed)
  local am, listAct
  turnspeed = defparam(turnspeed, 0)
  MakeChar.CreateRelaxAction(ac, turnspeed, WeaponType .. "Relax", WeaponType .. "Relax", 1).AngleModifierSpeed = 1
  if MakeChar.NewTurn then
    MakeChar.CreateRelaxAction(ac, 180, WeaponType .. "TurnRight", WeaponType .. "TurnRight")
    MakeChar.CreateRelaxAction(ac, 180, WeaponType .. "TurnLeft", WeaponType .. "TurnLeft")
  else
    MakeChar.CreateRelaxAction(ac, 180, WeaponType .. "Turn", WeaponType .. "Turn")
  end
  MakeChar.AddWalkActions(ac, 720, 1, 1, {
    "Walk",
    "Back",
    "StrLeft",
    "StrRight"
  }, WeaponType)
  MakeChar.AddFallAction(ac, 720, 0, 0, WeaponType)
  if MakeChar.NewTurn then
    listAct = {
      WeaponType .. "TurnLeft",
      WeaponType .. "TurnRight"
    }
  else
    listAct = {
      WeaponType .. "Turn"
    }
  end
  for i = 1, table.getn(listAct) do
    am = ac:GetAct(listAct[i])
    am.NodeModifier = 1
    am.AngleModifierSpeed = 5
    am.oAI.bRot = true
  end
  am = ac:GetAct(WeaponType .. "Relax")
  am.NodeModifier = 1
  am.AngleModifierSpeed = 5
end

function MakeChar.AddMudClimbActions(ac, ActList, Prefix)
  local am, CharName, actn, namy
  Prefix = defparam(Prefix, "")
  CharName = ac.Name
  namy = MakeChar.BuildPrefName(CharName)
  local ActNames = {}
  for actn = 1, table.getn(ActList) do
    nam = Prefix .. ActList[actn]
    am = ac:NewAct(nam)
    am.AnmFilePath = namy .. nam .. ".M3D"
    am.UseDisp = 1
    am.isLoop = 0
    am.RotSpeed = 0
    am.NodeModifier = -1
    am.AngleModifierSpeed = 5
    am.CheckClimb = 1
    am.oAI.bDisplacement = true
    am.IgnoreAI = 1
    am.PriorityLevel = 1
    table.insert(ActNames, ActList[actn])
  end
  MakeChar.PrefixSet(ac, ActNames, Prefix)
end

function MakeChar.AddHangPlatformActions(ac, ActList)
  local am, ev, ActName, timy, i
  for i = 1, table.getn(ActList) do
    local idad = ActList[i][2]
    ActName = ActList[i][1]
    am = ac:NewAct(ActName)
    am.AnmFilePath = MakeChar.BuildPrefName(ac.Name) .. ActName .. ".M3D"
    am.RotSpeed = 0
    am.NodeModifier = -1
    am.AngleModifierSpeed = 5
    if idad == 3 then
      am.PriorityLevel = 0
    else
      am.PriorityLevel = 10
    end
    am.UseZRotMove = 1
    am.ZRotSpeed = 90
    am.TurnStrafeSpeed = 0
    am.CanFly = 1
    am.UseFlyDisp = 0
    am.UseFlyFall = 0
    am.UseDisp = 1
    am.UseAnmDispInFly = 1
    am.AnimAbsMove = 1
    am.HAngFixSpeed = 90
    am.MaxSpeed = 1
    am.MinSpeed = 1
    am.ZMinRotLimit = 0
    am.ZMaxRotLimit = 0
    am.MinCamHAng = -65
    am.MaxCamHAng = 65
    am.PlatformType = 1
    am.UsrControlFixed = 1
    am.Group = "Hang"
    if string.sub(ActName, 1, 7) == "Balance" then
      am.LinkLineXAngle = 0
      am.LinkLineZAngle = 0
    end
    if idad == 0 then
      am.isLoop = 0
      ev = am:NewEvent(am.AnmTotalTime)
      ev.Func = "!HeroinHangEvent"
    elseif idad == 1 then
      am.CheckClimb = 1
      am.isLoop = ActList[i][3]
      timy = am.AnmTotalTime - 0.1
      while 0 < timy do
        ev = am:NewEvent(timy)
        ev.Func = "!HeroinHangEvent"
        timy = timy - 0.1
      end
    elseif idad == 2 or idad == 3 or idad == 4 then
      if ActList[i][3] ~= nil then
        ev = am:NewEvent(am.AnmTotalTime)
        ev.Func = ActList[i][3]
        ev.Name = ActList[i][4]
      end
    elseif idad == 5 then
      am.isLoop = ActList[i][3]
      if ActList[i][4] then
        am.OnObjSlot = ActList[i][4]
      end
    end
  end
end

function MakeChar.AddTurnAngle(ac, Action, EventName, UseDisp)
  local am, ev
  UseDisp = defparam(UseDisp, 1)
  am = MakeChar.CreateRelaxAction(ac, 0, Action, Action)
  am.UseDisp = UseDisp
  am.isLoop = 0
  am.RotSpeed = 450
  am.PriorityLevel = 1
  am.MaxSpeed = 1
  am.MinSpeed = 1
  am.NodeModifier = -1
  am.oAI.bRot = true
  if EventName ~= nil then
    ev = am:NewEvent(am.AnmTotalTime)
    ev.Name = EventName
    ev.Func = "!CharTurnEvent"
  end
end

function MakeChar.AddShelterActions(ac, Action, Angulus, MoreActions, MoreAnm)
  local am, ev, i, actname, anmname
  if MoreAnm == nil then
    MoreAnm = {}
  end
  MakeChar.AddTurnAngle(ac, Action .. "End", string.format("%4d", 360 - Angulus) .. "Relax")
  MakeChar.AddTurnAngle(ac, Action .. "Init", string.format("%4d", Angulus) .. Action)
  am = MakeChar.CreateRelaxAction(ac, 0, Action, Action)
  am.isLoop = 1
  am.ShelterAnm = 1
  am.UseDisp = 1
  am.RotSpeed = 450
  am.PriorityLevel = 1024
  am.MaxSpeed = 1
  am.MinSpeed = 1
  am.NodeModifier = -1
  for i = 1, table.getn(MoreActions) do
    actname = MoreActions[i]
    anmname = MoreAnm[i]
    if anmname == nil then
      anmname = actname
    end
    am = MakeChar.CreateRelaxAction(ac, 0, Action .. actname, Action .. anmname)
    am.isLoop = 0
    am.UseDisp = 1
    am.RotSpeed = 450
    am.PriorityLevel = 1024
    am.MaxSpeed = 1
    am.MinSpeed = 1
    am.NodeModifier = -1
    ev = am:NewEvent(am.AnmTotalTime)
    ev.Name = Action
    ev.Func = "!AnmSetAction"
  end
end

function MakeChar.MakeFacialRelax(ac, MixFix, EyesAnm)
  local am
  MixFix = defparam(MixFix, "")
  MixFix = "Facial" .. MixFix
  EyesAnm = defparam(EyesAnm, true)
  am = MakeChar.CreateRelaxAction(ac, 0, MixFix .. "_Relax", MixFix .. "_Relax", 1)
  am.Chanel = 1
  am.InterpTime = 0.2
  if EyesAnm then
    am = MakeChar.CreateRelaxAction(ac, 0, MixFix .. "_Relax1", MixFix .. "_Relax1", 0)
    am.Chanel = 2
    am.InterpTime = 0
    MakeChar.MakeEvent(ac, MixFix .. "_Relax1", "2", "!AnmStopChan")
    MakeChar.MakeEvent(ac, MixFix .. "_Relax", "3:" .. MixFix .. "_Relax1", "!AnmSetRndAction")
  end
end

function MakeChar.MakeFacialAction(ac, Name, Loop)
  am = MakeChar.CreateRelaxAction(ac, 0, "Facial_" .. Name, "Facial_" .. Name, Loop)
  am.Chanel = 1
  am.InterpTime = 0.2
end

function MakeChar.MakeFacialTalk(ac, MixFix, manray)
  local am
  MixFix = defparam(MixFix, "")
  MixFix = "Facial" .. MixFix
  manray = defparam(manray, {
    "_Talk",
    "_Talk1",
    "_Talk2"
  })
  for i = 1, #manray do
    local nam = MixFix .. manray[i]
    am = MakeChar.CreateRelaxAction(ac, 0, nam, nam, 1)
    am.Chanel = 1
    am.InterpTime = 0.2
    local cad = ""
    for i = 1, #manray do
      cad = cad .. MixFix .. manray[i] .. ","
    end
    MakeChar.MakeEvent(ac, nam, string.sub(cad, 0, #cad - 1), "!AnmSetAction")
  end
end

function MakeChar.OnFacialTrack(e, Track, Frame, lSeg, nSeg)
  if lSeg and not nSeg then
    e.Action = "Facial_Relax"
  else
    local si = nSeg.Info
    if si == "" then
      e.oActCtrl.StopSecondary = 1
    else
      e.Action = "Facial_" .. si
    end
  end
end

function MakeChar.MakeEvent(ac, ActioName, Name, Function, frame, discardable)
  local am = ac:GetAct(ActioName)
  if am then
    return MakeChar.ActEvent(ac:GetAct(ActioName), Name, Function, frame, discardable)
  else
    Game.Log(ac.Name .. ": Skipping event creation in unexistent action (" .. ActioName .. ")\n", 3)
    return nil
  end
end

function MakeChar.FillEvents(ac, ActioName, Name, Function, fFrame, lFrame, Step, discardable)
  local am = ac:GetAct(ActioName)
  if am then
    fFrame = defparam(fFrame, am.FirstFrame)
    lFrame = defparam(lFrame, am.LastFrame)
    Step = defparam(Step, 1)
    for i = fFrame, lFrame, Step do
      MakeChar.ActEvent(am, Name, Function, i, discardable)
    end
  else
    Game.Log(ac.Name .. ": Skipping event creation in unexistent action (" .. ActioName .. ")\n", 3)
  end
end

function MakeChar.ActEvent(am, Name, Function, frame, discardable)
  discardable = defparam(discardable, 1)
  local ev
  if frame == nil then
    frame = am.AnmTotalTime
  else
    frame = am:TimeFrame(frame)
  end
  ev = am:NewEvent(frame)
  ev.Name = Name
  ev.Func = Function
  ev.Discardable = discardable
  return ev
end

function MakeChar.ActEventNoDis(am, Name, Function, frame)
  local ev
  if frame == nil then
    frame = am.AnmTotalTime
  else
    frame = am:TimeFrame(frame)
  end
  ev = am:NewEvent(frame)
  ev.Name = Name
  ev.Func = Function
  ev.Discardable = 0
  return ev
end

function MakeChar.MakeEventList(ac, actList, typo, func, frame)
  local actn
  typo = defparam(typo, "")
  for actn = 1, table.getn(actList) do
    MakeChar.MakeEvent(ac, typo .. actList[actn], "", func, frame)
  end
end

function MakeChar.MakeEventTime(ac, ActioName, Name, Function, frame)
  return MakeChar.ActEventTime(ac:GetAct(ActioName), Name, Function, frame)
end

function MakeChar.ActEventTime(am, Name, Function, time)
  local ev
  ev = am:NewEvent(time)
  ev.Name = Name
  ev.Func = Function
  return ev
end

function MakeChar.MakeEventListTime(ac, actList, typo, func, time)
  local actn
  typo = defparam(typo, "")
  for actn = 1, table.getn(actList) do
    MakeChar.MakeEventTime(ac, typo .. actList[actn], "", func, time)
  end
end

function MakeChar.AddAditionalAnim(ClassName, ActionName, rotation, useAI, invulnerable, endsFalling)
  local ev
  local ac = Act.GetClass(ClassName)
  if ac == nil then
    print("Fail trying to load '" .. ActionName .. "' in '" .. ClassName .. "'")
    return
  end
  local am = ac:GetAct(ActionName)
  if am ~= nil then
    print("Action '" .. ActionName .. "' already loaded in '" .. ClassName .. "'")
    return am
  end
  am = ac:NewAct(ActionName)
  local CharName = ac.Name
  useAI = defparam(useAI, false)
  am.uData.IsAditional = true
  am.AnmFilePath = MakeChar.BuildPrefName(CharName) .. ActionName .. ".M3D"
  am.isLoop = 0
  am.RotSpeed = 0
  am.AngRotLimit = MakeChar.RelaxRotLimit
  am.UseDisp = 1
  am.MaxSpeed = 1
  am.MinSpeed = 1
  am.AngleModifierSpeed = 0
  am.IgnoreFloor = 1
  am.IgnoreCollision = 0
  am.PriorityLevel = 2048
  am.NodeModifier = -1
  am.CanBePushed = 0
  am.CanFly = 1
  am.UseFlyDisp = 0
  am.UseFlyFall = 0
  am.UseDisp = 1
  am.UseAnmDispInFly = 1
  am.AnimAbsMove = 1
  am.DiscardYDisp = 0
  am.InterpTime = 0
  if not rotation and rotation ~= 0 then
    ev = am:NewEvent(am.AnmTotalTime)
    ev.Name = string.format("%4dRelax", rotation)
    ev.Func = "!CharTurnEvent"
  end
  if not useAI then
    am.IgnoreAI = 1
  end
  if MapScenesSnd ~= nil then
    local funky = MapScenesSnd[ClassName .. "_" .. ActionName]
    if funky ~= nil then
      funky(am)
    end
  end
  if endsFalling then
    ev = am:NewEvent(am.AnmTotalTime)
    ev.Func = "MakeChar.OnSetFalling"
    ev.Discardable = 0
  end
  return am
end

function MakeChar.AddBlockActions(ac, typo)
  local am, ev, CharName
  CharName = ac.Name
  am = ac:NewAct(typo .. "Block")
  am.AnmFilePath = MakeChar.BuildPrefName(CharName) .. typo .. "Block" .. ".M3D"
  am.PriorityLevel = 6
  am.isLoop = 1
  am = ac:NewAct(typo .. "BlockInit")
  am.AnmFilePath = MakeChar.BuildPrefName(CharName) .. typo .. "BlockInit" .. ".M3D"
  am.PriorityLevel = 6
  am.NextToLaunch = typo .. "Block"
  am = ac:NewAct(typo .. "BlockEnd")
  am.AnmFilePath = MakeChar.BuildPrefName(CharName) .. typo .. "BlockEnd" .. ".M3D"
  am.PriorityLevel = 6
end

function MakeChar.AddDodgeAction(ac, name, typo, readyToWalk, useRunInit)
  local am = MakeChar.AddMove(ac, typo .. name, typo .. name, 0, 1, 0)
  am.PriorityLevel = 10
  am.MaxSpeed = 1
  am.MinSpeed = 1
  am.RotSpeed = 360
  am.NextToLaunch = "WhipBlock"
  local ev
  ev = am:NewEvent(0)
  ev.Name = "30"
  ev.Func = "MakeChar.EventSetPriority"
  ev = am:NewEvent(0)
  ev.Name = "ResetParryReleased"
  ev.Func = "MakeChar.EventResetParryReleased"
  ev = am:NewEvent(am:TimeFrame(readyToWalk))
  ev.Name = "0"
  ev.Func = "MakeChar.EventSetPriority"
  ev = am:NewEvent(am.AnmTotalTime)
  ev.Name = typo .. "BlockEnd"
  ev.Func = "MakeChar.SetBlockEnd"
  ev = am:NewEvent(am:TimeFrame(24))
  ev.Name = "5"
  ev.Func = "MakeChar.EventSetPriority"
  if useRunInit then
    ev = am:NewEvent(am:TimeFrame(13))
    ev.Name = typo .. name .. "RunInit"
    ev.Func = "MakeChar.LaunchDodgeEnd"
    local am2 = MakeChar.AddMove(ac, typo .. name .. "RunInit", typo .. name .. "RunInit", 0, 1, 0)
    am2.PriorityLevel = 40
    am2.NextToLaunch = "WhipRunEndLeft"
    ev = am2:NewEvent(am2:TimeFrame(19))
    ev.Name = "5"
    ev.Func = "MakeChar.EventSetPriority"
    if string.find(name, "Left") then
      am2.RotSpeed = 90 / am2.AnmTotalTime
      am2.RotDirection = -1
      am2.InitVel = ac:GetAct(typo .. "Run").AnmVel:rot(V3D(0, -90, 0)) * 0.2
      am2.EndVel = ac:GetAct(typo .. "Run").AnmVel:rot(V3D(0, -90, 0))
      am2.DispType = 2
    elseif string.find(name, "Right") then
      am2.RotSpeed = 90 / am2.AnmTotalTime
      am2.RotDirection = 1
      am2.InitVel = ac:GetAct(typo .. "Run").AnmVel:rot(V3D(0, 90, 0)) * 0.2
      am2.EndVel = ac:GetAct(typo .. "Run").AnmVel:rot(V3D(0, 90, 0))
      am2.DispType = 2
    elseif string.find(name, "Back") then
      am2.RotSpeed = 180 / am2.AnmTotalTime
      am2.RotDirection = 1
      am2.InitVel = ac:GetAct(typo .. "Run").AnmVel:rot(V3D(0, 180, 0)) * 0.6
      am2.EndVel = ac:GetAct(typo .. "Run").AnmVel:rot(V3D(0, 180, 0)) * 1
      am2.DispType = 2
    end
  end
  return am
end

function MakeChar.AddBlockHitAction(ac, name, typo, readyToWalk)
  local am = MakeChar.AddMove(ac, typo .. name, typo .. name, 0, 1, 0)
  am.PriorityLevel = 10
  am.MaxSpeed = 1
  am.MinSpeed = 1
  am.RotSpeed = 0
  local ev = am:NewEvent(am.AnmTotalTime)
  ev.Name = typo .. "BlockEnd"
  ev.Func = "MakeChar.SetBlockEnd"
  if readyToWalk then
    ev = am:NewEvent(am:TimeFrame(readyToWalk))
    ev.Name = "0"
    ev.Func = "MakeChar.EventSetPriority"
  end
  return am
end

function MakeChar.AddHitActions(ac, hitList, typo)
  for state, reactionList in pairs(hitList) do
    for reaction, directionList in pairs(reactionList) do
      for direction, frame in pairs(directionList) do
        local name = typo .. state .. "Hit" .. reaction .. direction
        local am
        if not ac:GetAct(name) then
          am = MakeChar.AddMove(ac, name, name, 0, 1, 0)
        else
          am = ac:GetAct(name)
        end
        am.MaxSpeed = 1
        am.MinSpeed = 1
        am.RotSpeed = 0
        am.PriorityLevel = 1024
        am.Group = "Hit"
        if state == "Block" then
          local ev = am:NewEvent(am.AnmTotalTime)
          ev.Name = typo .. "BlockEnd"
          ev.Func = "MakeChar.SetBlockEnd"
          am.PriorityLevel = 10
          am.NextToLaunch = typo .. "Block"
        end
        if frame ~= -1 then
        else
          am.UseDisp = 0
          ev = am:NewEvent(0)
          ev.Name = name
          ev.Func = "MakeChar.EventStartCheckingValidPos"
        end
      end
    end
  end
end

function MakeChar.EventSetRot(EntityName, EventName, Time)
  if not EventName then
    return
  end
  local ent = Game.GetEntity(EntityName)
  if ent then
    if ent.UsrControl ~= -1 then
      ent.oActCtrl.ActionRotSpeed = EventName + 0
    elseif ent.oAI then
      ent.oAI.MaxVelRot = (EventName + 0) / 360
      if EventName + 0 < 0 then
        ent.oActCtrl.ActionRotSpeed = 720
      else
        ent.oActCtrl.ActionRotSpeed = EventName + 0
      end
    end
  end
end

function MakeChar.EventSetRotIfPlayer(EntityName, EventName, Time)
  if Game.GetEntity(EntityName) == Game.UsrEntity(0) then
    MakeChar.EventSetRot(EntityName, EventName, Time)
  end
end

function MakeChar.EventSetPriority(EntityName, EventName, Time)
  if not EventName then
    return
  end
  local ent = Game.GetEntity(EntityName)
  if ent and ent.oActCtrl and ent.oActCtrl.oActClass then
    ent.oActCtrl.AnimPriority = EventName + 0
  end
end

function MakeChar.EventResetParryReleased(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  ent.uData.ParryReleased = false
end

function MakeChar.LaunchDodgeEnd(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  if ent.uData.ParryReleased or ent.owc.Parry == 0 and (math.abs(ent.owc.Walk) > 0.2 or 0.2 < math.abs(ent.owc.Str)) then
    local wantedRot = Game.NormAng(ent.ViewAng.y + ent.DisplAng - ent.Ang.y)
    if EventName == "WhipDodgeBackRunInit" and -90 < wantedRot and wantedRot < 90 then
      ent.ForceAction = "WhipDodgeBackToRelax"
    elseif EventName == "WhipDodgeLeftRunInit" and -45 < wantedRot and wantedRot < 45 then
      ent.ForceAction = "WhipDodgeLeftToRelax"
    elseif EventName == "WhipDodgeRightRunInit" and -45 < wantedRot and wantedRot < 45 then
      ent.ForceAction = "WhipDodgeRightToRelax"
    else
      ent.Action = EventName
    end
  end
end

function MakeChar.SetBlockEnd(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  if ent.owc.Parry == 0 then
    if ent.ActCtrl == "Laura" then
      ent.ForceAction = "Relax"
    else
      ent.ForceAction = ent.ExtraSufix .. "BlockEnd"
    end
  end
end

function MakeChar.SetAirActionProperties(am)
  am.TurnStrafeSpeed = 0
  am.CanFly = 1
  am.UseFlyDisp = 0
  am.UseFlyFall = 0
  am.UseDisp = 1
  am.UseAnmDispInFly = 1
  am.AnimAbsMove = 1
end

function MakeChar.SetUnBlockable(ac, ActioName, Set)
  local am = ac:GetAct(ActioName)
  am.uData.unblockable = Set
end

function MakeChar.SetReaction(ac, ActioName, reaction)
  local am = ac:GetAct(ActioName)
  am.uData.AC.reaction = reaction
end

function MakeChar.SetHitable(ac, ActionName, frame, set)
  local am = ac:GetAct(ActionName)
  local ev = am:NewEvent(am:TimeFrame(frame))
  ev.Name = "" .. set
  ev.Func = "MakeChar.EventSetHitable"
end

function MakeChar.EventSetHitable(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local act = ent.oActCtrl.oAction
  if EventName + 0 == 1 then
    act.oAI.bHitable = true
  else
    act.oAI.bHitable = false
  end
end

function MakeChar.SetControlMovEnabled(ac, ActionName, frame, set)
  local am = ac:GetAct(ActionName)
  local ev = am:NewEvent(am:TimeFrame(frame))
  ev.Name = "" .. set
  ev.Func = "MakeChar.EventControlMovEnabled"
end

function MakeChar.EventControlMovEnabled(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local act = ent.oActCtrl.oAction
  if EventName + 0 == 1 then
    act.oAI.bControlMovEnabled = true
  else
    act.oAI.bControlMovEnabled = false
  end
end

function MakeChar.SetCollisionEnabled(ac, ActionName, frame, set)
  local am = ac:GetAct(ActionName)
  local ev = am:NewEvent(am:TimeFrame(frame))
  ev.Name = "" .. set
  ev.Func = "MakeChar.EventCollisionEnabled"
end

function MakeChar.EventCollisionEnabled(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local act = ent.oActCtrl.oAction
  if EventName + 0 == 1 then
    act.IgnoreCollision = 0
  else
    act.IgnoreCollision = 1
  end
end

function MakeChar.CreateEditableAction(ac, Name, Anm)
  local am = ac:GetAct(Name)
  if am == nil then
    am = ac:NewAct(Name)
    local CharName = ac.Name
    am.AnmFilePath = MakeChar.BuildPrefName(CharName) .. Anm .. ".M3D"
    am.AngRotLimit = MakeChar.RelaxRotLimit
    am.MaxSpeed = 1
    am.MinSpeed = 1
    am.uData.Editable = true
  end
  return am
end

function MakeChar.SetMinSpeeds(EntityName, actions, value)
  local ent = Game.GetEntity(EntityName)
  for i, name in pairs(actions) do
    ent.oActCtrl.oActClass:GetAct(name).MinSpeed = value
  end
end

function MakeChar.SetMaxSpeeds(EntityName, actions, value)
  local ent = Game.GetEntity(EntityName)
  for i, name in pairs(actions) do
    ent.oActCtrl.oActClass:GetAct(name).MaxSpeed = value
  end
end

function MakeChar.SetRotSpeeds(EntityName, actions, value)
  local ent = Game.GetEntity(EntityName)
  for i, name in pairs(actions) do
    ent.oActCtrl.oActClass:GetAct(name).RotSpeed = value
  end
end

function MakeChar.SetMaxMinSpeeds(EntityName, actions, value, upLim, downLim)
  local ent = Game.GetEntity(EntityName)
  upLim = defparam(upLim, 0)
  downLim = defparam(downLim, 0)
  for i, name in pairs(actions) do
    ent.oActCtrl.oActClass:GetAct(name).MaxSpeed = value + upLim
    ent.oActCtrl.oActClass:GetAct(name).MinSpeed = value + downLim
  end
end

function MakeChar.EventStartCheckingValidPos(EntityName, EventName, Time)
  if not Game.ExistsScheduledFunc("EventCheckValidPos") then
    Game.AddScheduledFunc(Game.GetTime() + 0.1, "EventCheckValidPos", "MakeChar.EventCheckValidPos", EntityName, EventName, Time)
  end
end

function MakeChar.EventCheckValidPos(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local isValid, isOnFloor, isInDynElement = ent:TestCharPos(ent.Pos.x, ent.Pos.y, ent.Pos.z)
  local colPos, colNormal, colEntity = Game.TestLine(ent.Pos + V3D(0, 1000, 0), ent.Pos, "", ent.Name)
  if not colEntity and isValid and not isInDynElement then
    Game.Log("valid position -> endinG crush\n", 3)
    ent.ForceAction = EventName .. "End"
    MakeChar.SchCrushStandUp(EntityName, EventName, Time)
  else
    Game.Log("waiting crushed until valid position\n", 3)
    ent:SetOnFloor(1, 500)
    ent:MoveMePos(1, 0.1, ent.Pos)
    ent.OnEndMove = ""
    Game.AddScheduledFunc(Game.GetTime() + 0.2, "EventCheckValidPos", "MakeChar.EventCheckValidPos", EntityName, EventName, Time)
  end
end

function MakeChar.SchCrushStandUp(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  ent.MoveTime = 0
  ent.oPlatformLinker.oPlatform = nil
end

function MakeChar.EventStopIfDead(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  if ent.Life <= 0 then
    ent.oActCtrl:Pause()
  end
end

function MakeChar.CreateTakeAction(actionName, ac, priorityLevel, alias)
  local am = MakeChar.CreateRelaxAction(ac, 0, defparam(alias, actionName), actionName)
  am.PriorityLevel = defparam(priorityLevel, 10)
  am.isLoop = 0
  am.InterpTime = 0.3
  am.FKMethod = 1
  am.Group = "Hook"
  return am
end

function MakeChar.LoadOptionalActions(ac)
  local className = ac.Name
  local path = "Scripts/Chars/Actions/" .. className .. "/"
  local classesList = {}
  if init and init.Enemies then
    table.insert(classesList, "Belmont")
    if Game.Get("ToolMode") == 0 then
      for i = 1, #init.Enemies do
        table.insert(classesList, init.Enemies[i])
      end
    else
      for name, data in pairs(init.EnemiesConfig) do
        table.insert(classesList, name)
      end
    end
    local thereIsTB = false
    local thereIsTBS = false
    for i = 1, #classesList do
      if classesList[i] == "TrollBigSwamp" then
        thereIsTBS = true
      end
      if classesList[i] == "TrollBig" then
        thereIsTB = true
      end
    end
    if thereIsTBS and not thereIsTB and className == "Belmont" then
      table.insert(classesList, "TrollBig")
    end
    for i = 1, #classesList do
      local libName = className .. "_" .. classesList[i] .. "_Actions"
      MakeChar.LoadOptionalLibrary(path, libName)
    end
  end
end

function MakeChar.AddAirHitActions(ac, LoadFall)
  LoadFall = defparam(LoadFall, true)
  local am, nfr
  am = MakeChar.AddMove(ac, "HitUp", "HitUp", 720, 1, 0)
  am.PriorityLevel = 2049
  MakeChar.SetAirActionProperties(am)
  am.DiscardYDisp = 0
  nfr = math.floor(am.LastFrame - am.FirstFrame)
  MakeChar.ActEvent(am, "MagneHitPlayer," .. math.floor(am.FirstFrame + nfr * 4 / 8), "WeaponsCombo.PrivateSetIsFalling", am.FirstFrame + 1)
  MakeChar.ActEvent(am, "UpperHitPlayer," .. am.LastFrame, "WeaponsCombo.PrivateSetIsFalling", math.floor(am.FirstFrame + nfr * 4 / 8))
  MakeChar.ActEvent(am, "UpperHitPlayer," .. am.LastFrame, "WeaponsCombo.PrivateSetIsFalling", math.floor(am.FirstFrame + nfr * 5 / 8))
  MakeChar.ActEvent(am, "UpperHitPlayer," .. am.LastFrame, "WeaponsCombo.PrivateSetIsFalling", math.floor(am.FirstFrame + nfr * 6 / 8))
  MakeChar.ActEvent(am, "UpperHitPlayer," .. am.LastFrame, "WeaponsCombo.PrivateSetIsFalling", math.floor(am.FirstFrame + nfr * 7 / 8))
  MakeChar.ActEvent(am, "FallHit", "!AnmSetDefaultLoop")
  MakeChar.ActEvent(am, "GhostTime=0.5", "!AnmSetNumVal")
  MakeChar.ActEvent(am, "ExtraSufix=", "!AnmSetStrVal")
  am.IgnoreAI = 1
  am = MakeChar.AddMove(ac, "HitUp2", "HitUp", 720, 1, 0)
  am.PriorityLevel = 2049
  MakeChar.SetAirActionProperties(am)
  am.DiscardYDisp = 0
  MakeChar.ActEvent(am, "FallHit", "!AnmSetDefaultLoop")
  MakeChar.ActEvent(am, "GhostTime=0.5", "!AnmSetNumVal")
  MakeChar.ActEvent(am, "ExtraSufix=", "!AnmSetStrVal")
  MakeChar.ActEvent(am, "FrontHitPlayer," .. am.LastFrame, "WeaponsCombo.PrivateSetIsFalling", am.FirstFrame)
  nfr = math.floor(am.LastFrame - am.FirstFrame)
  MakeChar.ActEvent(am, "FrontHitPlayer," .. am.LastFrame, "WeaponsCombo.PrivateSetIsFalling", math.floor(am.FirstFrame + nfr / 2))
  am.IgnoreAI = 1
  am = MakeChar.AddMove(ac, "HitUp3", "HitUp", 720, 1, 0)
  am.PriorityLevel = 2049
  am.UseDisp = 1
  am.AnimAbsMove = 1
  MakeChar.ActEvent(am, "#FrontHitPlayer," .. am.LastFrame, "WeaponsCombo.PrivateSetIsFalling", am.FirstFrame)
  nfr = math.floor(am.LastFrame - am.FirstFrame)
  MakeChar.ActEvent(am, "#FrontHitPlayer," .. am.LastFrame, "WeaponsCombo.PrivateSetIsFalling", math.floor(am.FirstFrame + nfr / 2))
  am.IgnoreAI = 1
  am.NextToLaunch = "HitMedBack"
  am.MinSpeed = 2
  am.MaxSpeed = 2
  am = MakeChar.AddMove(ac, "HitFall", "HitFall", 720, 1, 0)
  am.PriorityLevel = 2049
  MakeChar.SetAirActionProperties(am)
  am.DiscardYDisp = 0
  MakeChar.ActEvent(am, "FallHit", "!AnmSetDefaultLoop")
  MakeChar.ActEvent(am, "GhostTime=0.5", "!AnmSetNumVal")
  MakeChar.ActEvent(am, "ExtraSufix=", "!AnmSetStrVal")
  am.IgnoreAI = 1
  MakeChar.ActEvent(am, "UpperHitPlayer," .. am.LastFrame, "WeaponsCombo.PrivateSetIsFalling", am.FirstFrame)
  nfr = math.floor(am.LastFrame - am.FirstFrame)
  MakeChar.ActEvent(am, "UpperHitPlayer," .. am.LastFrame, "WeaponsCombo.PrivateSetIsFalling", math.floor(am.FirstFrame + nfr / 2))
  am = MakeChar.AddMove(ac, "HitFall2", "HitFall", 720, 1, 0)
  am.PriorityLevel = 2049
  MakeChar.SetAirActionProperties(am)
  am.DiscardYDisp = 0
  MakeChar.ActEvent(am, "FallHit", "!AnmSetDefaultLoop")
  MakeChar.ActEvent(am, "GhostTime=0.5", "!AnmSetNumVal")
  MakeChar.ActEvent(am, "ExtraSufix=", "!AnmSetStrVal")
  am.IgnoreAI = 1
  MakeChar.ActEvent(am, "FrontHitPlayer," .. am.LastFrame, "WeaponsCombo.PrivateSetIsFalling", am.FirstFrame)
  nfr = math.floor(am.LastFrame - am.FirstFrame)
  MakeChar.ActEvent(am, "FrontHitPlayer," .. am.LastFrame, "WeaponsCombo.PrivateSetIsFalling", math.floor(am.FirstFrame + nfr / 2))
  am = MakeChar.AddMove(ac, "HitFall3", "HitFall", 720, 1, 0)
  am.PriorityLevel = 2049
  MakeChar.SetAirActionProperties(am)
  am.DiscardYDisp = 0
  MakeChar.ActEvent(am, "FallHit", "!AnmSetDefaultLoop")
  MakeChar.ActEvent(am, "GhostTime=0.5", "!AnmSetNumVal")
  MakeChar.ActEvent(am, "ExtraSufix=", "!AnmSetStrVal")
  am.IgnoreAI = 1
  MakeChar.ActEvent(am, "", "WeaponsCombo.EventAirImpulse", am.FirstFrame)
  am = MakeChar.AddMove(ac, "HitFallDown", "HitFallDown", 720, 1, 0)
  am.PriorityLevel = 2049
  MakeChar.SetAirActionProperties(am)
  am.DiscardYDisp = 0
  am.IgnoreAI = 1
  MakeChar.AddFallActions(ac, {
    {"FallHit", 1},
    {"FallHitEnd", 0}
  }, 0, "")
  if LoadFall then
    MakeChar.AddFallActions(ac, {
      {"Fall", 1},
      {"FallInit", 0},
      {"FallEnd", 0}
    }, 0, "")
    ac:GetAct("FallInit").IgnoreAI = 1
    ac:GetAct("Fall").IgnoreAI = 1
    ac:GetAct("FallEnd").IgnoreAI = 1
  end
  am = ac:GetAct("FallHitEnd")
  am.PriorityLevel = 2049
  am.IgnoreAI = 1
  am.AnimAbsMove = 1
  ac:GetAct("FallHit").IgnoreAI = 1
end

MakeChar.SpecificCharFiles_ALIAS = {lycanthropelesser = "LycLess", lycanthropegreater = "LycGreat"}

function MakeChar.LoadSpecificCharFiles(ac)
  local acName = MakeChar.SpecificCharFiles_ALIAS[string.lower(ac.Name)]
  if acName == nil then
    acName = ac.Name
  end
  if Game.Get("toolmode") ~= 0 then
    local dirList = Game.GetFileList("scripts/chars/specific/" .. string.lower(acName) .. "__*.lua")
    if dirList then
      local nDirs = table.getn(dirList)
      if nDirs ~= nil and 0 < nDirs then
        for i = 1, nDirs do
          local sPath = "scripts/chars/specific/" .. string.lower(dirList[i])
          ValidPreloadLibrary(sPath, acName .. string.lower(string.sub(dirList[i], #acName + 1, #dirList[i] - 4)))
        end
      end
    end
  elseif init then
    local sFileName = acName .. "__" .. string.lower(string.sub(init.LevelFile, 8))
    local sPath = "scripts/chars/specific/" .. sFileName .. ".lua"
    ValidPreloadLibrary(sPath, sFileName)
  end
end

function MakeChar.OnSetFalling(entityName)
  local entity = Game.GetEntity(entityName)
  if entity ~= nil then
    entity.ForceAction = "Fall"
    entity.isFalling = 1
  end
end

function MakeChar.AddSyncActions(ac, masterClass, actList, Loop)
  if MakeChar.isEnemyLoad(masterClass) then
    for i = 1, #actList do
      local am = ac:GetAct(actList[i])
      if am == nil then
        am = ac:NewAct(actList[i])
        local CharName = ac.Name
        am.AnmFilePath = MakeChar.BuildPrefName(CharName) .. actList[i] .. ".M3D"
        am.AngRotLimit = MakeChar.RelaxRotLimit
        am.PriorityLevel = 4096
        am.isLoop = Loop
        am.CanFly = 1
        am.UseDisp = 1
        am.UseFlyDisp = 0
        am.UseFlyFall = 0
        am.UseDisp = 1
        am.UseAnmDispInFly = 1
        am.IgnoreAI = 1
        am.uData.LoadWith = masterClass
        am.MaxSpeed = 1
        am.MinSpeed = 1
      end
    end
  end
  return am
end

MakeChar.DefaultExperiencePoints = {
  giant = 1000,
  large = 100,
  average = 25,
  small = 5
}

function MakeChar.SetLevelClassInfo(class)
  if LevelProperties then
    local level = 1
    if LevelProperties.EnemyLevels and LevelProperties.EnemyLevels and LevelProperties.EnemyLevels[class.Name] then
      level = LevelProperties.EnemyLevels[class.Name]
    end
    if EnemyLevels.Table[class.Name] and EnemyLevels.Table[class.Name][level] then
      class.Life = EnemyLevels.Table[class.Name][level].Life
      local pts = EnemyLevels.Table[class.Name][level].Points
      if pts then
        class.uData.ExperiencePoints = pts
      end
      if EnemyLevels.Table[class.Name][level].Size and EnemyLevels.Table[class.Name][level].Size ~= "-ClassDefault" then
        class.Size = EnemyLevels.Table[class.Name][level].Size
      end
    end
  end
  if class.uData.ExperiencePoints == nil then
    class.uData.ExperiencePoints = MakeChar.DefaultExperiencePoints[class.Size]
  end
end

function MakeChar.AddObstacleBreakerAnm(ac, animToReplicate)
  local am = MakeChar.AddMove(ac, "ObstacleBreaker", animToReplicate, 720, 1, 0)
  am.PriorityLevel = 1024
  am.IgnoreAI = 1
end
