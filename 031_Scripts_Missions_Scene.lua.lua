function Scene.main()
  Scene.Actors = {}
  
  Scene.SceneName = nil
  Scene.SceneClass = nil
  Scene.LocalActors = {}
  Scene.VoiceChannel = 0
  Scene.EndOfSceneCallback = nil
  Scene.EndOfSubSceneCallback = nil
  Scene.AcActionSet = nil
  Scene.usr = nil
  Scene.LastDopplerLevel = 0
  Scene.lastActorName = ""
  Scene.SoundBreak = false
  Scene.MusicBreak = false
  Scene.VoiceBreak = true
  Scene.Aborted = false
  Scene.Scenes = {}
  Scene.PrevPhysXSpeed = Game.Get("PhysXSpeed")
  Scene.UseAbsPos = 1
  Scene.UseDummyPosition = false
  Scene.CameraFrom = ""
  Scene.UsePhysics = false
  Scene.NextScene = ""
  Scene.EscapeScene = true
  Scene.Preload = true
  Scene.Discardable = false
  Scene.VideoOnConsole = false
  Scene.VideoCGI = false
  Scene.PlantPlayer = true
  Scene.AbortBreak = true
  Scene.EndOfLevelScene = false
  Scene.SkipAlternate = false
  Scene.SkippingScene = false
  Game.Set("CinemaBlackBandHeight", 0)
  Game.ScreenSaverEnable(true)
end

function Scene.ValidPreloadLibrary(FileName, LibraryName, libchunk)
  libchunk = defparam(libchunk, true)
  local lib = _G[LibraryName]
  if lib then
    if libchunk then
      Game.ConsoleError("Calling " .. LibraryName .. ".main()\n")
      lib.main()
    end
    return true
  end
  return ValidPreloadLibrary(FileName, LibraryName, libchunk)
end

Scene.CustomSceneEvents = {}

function Scene.PreloadSceneEvents(SceneName)
  local libname = "MapScene" .. SceneName
  if Scene.CustomSceneEvents[SceneName] then
    SceneEventsTable[SceneName] = Scene.CustomSceneEvents[SceneName]
    return
  end
  if Scene.ValidPreloadLibrary(init.LevelFile .. "/Scripts/MissionCustomEvents/MapScene" .. SceneName .. ".lua", libname, false) then
    SceneEventsTable[SceneName] = MapSceneEvents.Events
    Scene.CustomSceneEvents[SceneName] = MapSceneEvents.Events
  else
    Game.ConsoleError("ERROR:" .. init.LevelFile .. "/Scripts/MissionCustomEvents/MapScene" .. SceneName .. ".lua NOT FOUND")
    return
  end
end

function Scene.LoadSceneTracks(SceneClass)
  local sceneName = SceneClass
  local libPrefix = ""
  if tonumber(string.sub(SceneClass, 1, 1)) then
    libPrefix = "_"
  end
  local libName = libPrefix .. sceneName
  if Scene.ValidPreloadLibrary(Game.GetLevelPath() .. "/Scripts/SceneScorer/" .. sceneName .. "/" .. libName .. "ScrTracks.lua", libName .. "ScrTracks") then
  end
  local actorlist = Scene.Actors[sceneName]
  for actr in pairs(actorlist) do
    local actorLib = libPrefix .. actorlist[actr][2]
    if actorlist[actr].Exist or Scene.ValidPreloadLibrary(Game.GetLevelPath() .. "/Scripts/SceneScorer/" .. sceneName .. "/" .. actorLib .. "ScrTracks.lua", actorLib .. "ScrTracks") then
    end
  end
end

function Scene.LoadCustomSceneEvents(SceneName)
  if SceneEventsTable[SceneName] == nil then
    Game.ConsoleError("Events for " .. SceneName .. [[
 not defined
 ]])
  end
  local oldAction = Scene.SceneController:GetActiveAction()
  local firstTime = true
  for k, v in pairs(SceneEventsTable[SceneName]) do
    Scene.SceneController:SetSceneAction(k)
    for i = 1, #SceneEventsTable[SceneName][k] do
      if firstTime then
        if SceneEventsTable[SceneName][k][i][1] == "Comentarios" then
        else
          local masterEnviroment = "default"
          if SceneEventsTable[SceneName][k][i][7] then
            masterEnviroment = SceneEventsTable[SceneName][k][i][7]
          end
          local frameForEvent = SceneEventsTable[SceneName][k][i][1]
          if tonumber(frameForEvent) < Scene.SceneController.FirstFrame then
            frameForEvent = Scene.SceneController.FirstFrame
          end
          Scene.SceneController:CreateFrameEvent(tostring(frameForEvent), SceneEventsTable[SceneName][k][i][2], SceneEventsTable[SceneName][k][i][3], SceneEventsTable[SceneName][k][i][4], SceneEventsTable[SceneName][k][i][5], SceneEventsTable[SceneName][k][i][6], masterEnviroment)
        end
        firstTime = false
      elseif SceneEventsTable[SceneName][k][i][1] ~= "Comentarios" then
        local masterEnviroment = "default"
        if SceneEventsTable[SceneName][k][i][7] then
          masterEnviroment = SceneEventsTable[SceneName][k][i][7]
        end
        local frameForEvent = SceneEventsTable[SceneName][k][i][1]
        if tonumber(frameForEvent) < Scene.SceneController.FirstFrame then
          frameForEvent = Scene.SceneController.FirstFrame
        end
        Scene.SceneController:CreateFrameEvent(tostring(frameForEvent), SceneEventsTable[SceneName][k][i][2], SceneEventsTable[SceneName][k][i][3], SceneEventsTable[SceneName][k][i][4], SceneEventsTable[SceneName][k][i][5], SceneEventsTable[SceneName][k][i][6], masterEnviroment)
      end
    end
  end
  Scene.SceneController:SetSceneAction(oldAction)
end

function Scene.DeleteSceneController(SceneName)
  Game.DeleteSceneController()
end

function Scene.CreateSceneController(SceneName, SceneEntity)
  Scene.SceneController = Game.CreateSceneController(SceneEntity.Name)
  Scene.LoadCustomSceneEvents(SceneName)
end

function Scene.SceneCustomEventsControl()
  Scene.SceneController:Control()
end

function Scene.GetVar(SceneName, VarName)
  if Scene.Scenes[SceneName] ~= nil and Scene.Scenes[SceneName][VarName] ~= nil then
    return Scene.Scenes[SceneName][VarName]
  else
    return Scene[VarName]
  end
end

Scene.hasLoadScenes = false

function Scene.IsEngineScene(scne)
  return not Scene.GetVar(scne, "VideoCGI") and (not Scene.GetVar(scne, "VideoOnConsole") or Game.Get("Platform") == "PC")
end

function Scene.LoadScenes()
  if Scene.hasLoadScenes then
    return
  end
  Scene.hasLoadScenes = true
  SceneEventsTable = {}
  local idx, lst
  lst = {}
  for idx in pairs(Scene.Scenes) do
    table.insert(lst, idx)
  end
  table.sort(lst)
  for idx = 1, table.getn(lst) do
    if Scene.GetVar(lst[idx], "Preload") then
      if Game.GetLoadAborted() then
        return
      end
      Scene.Load(lst[idx])
    end
  end
end

function Scene.LoadNotPreloadedScenes()
  local idx, lst
  lst = {}
  for idx in pairs(Scene.Scenes) do
    table.insert(lst, idx)
  end
  table.sort(lst)
  for idx = 1, table.getn(lst) do
    if not Scene.GetVar(lst[idx], "Preload") then
      Scene.Load(lst[idx])
    end
  end
end

function Scene.BaseAddActor(ActorName, ActorClass, pathfile, ragdollfile)
  local actorname, act
  MakeChar.MaxSpeed = 1
  MakeChar.MinSpeed = 1
  Scene.lastActorName = Scene.SceneName .. ActorName
  local maka = {
    "Actor_" .. ActorName,
    Scene.lastActorName,
    ActorClass
  }
  table.insert(Scene.Actors[Scene.SceneName], maka)
  act = Act.GetClass(Scene.lastActorName)
  if act == nil then
    act = Act.CreateClass(Scene.lastActorName)
    act.ModelFilePath = pathfile
    if ragdollfile ~= nil then
      act.RagDollFilePath = ragdollfile
      act.CreateRagDollParts = 0
    end
    maka.Exist = false
  else
    maka.Exist = true
  end
  return act
end

Scene.CharDir = "Chars"
Scene.CharDefRelax = "Relax"

function Scene.CreateRelaxAction(CharName, turnspeed, Name, Anm, Loop)
  local am, ac
  Name = defparam(Name, "Relax")
  Anm = defparam(Anm, "Relax")
  Loop = defparam(Loop, 0)
  ac = Act.GetClass(Scene.lastActorName)
  am = ac:GetAct(Name)
  if am == nil then
    am = ac:NewAct(Name)
    am.AnmFilePath = "Models/" .. Scene.CharDir .. "/" .. CharName .. "/Anm/" .. defparam(MakeChar.Fake_Prefix[CharName], CharName) .. "_" .. Anm .. ".M3D"
    am.isLoop = Loop
    am.RotSpeed = turnspeed
    am.AngRotLimit = MakeChar.RelaxRotLimit
    am.UseDisp = 0
    am.NodeModifier = -1
    am.AngleModifierSpeed = 5
  end
  return am
end

function Scene.AddCharActor(ActorName, ActorClass, hasRagdoll)
  local ragdoll
  if hasRagdoll == true then
    ragdoll = "Models/" .. Scene.CharDir .. "/" .. ActorClass .. "/" .. ActorClass .. ".pxs"
  end
  local ac = Scene.BaseAddActor(ActorName, ActorClass, "Models/" .. Scene.CharDir .. "/" .. ActorClass .. "/" .. ActorClass .. ".M3D", ragdoll)
  Scene.CreateRelaxAction(ActorClass, 0, Scene.CharDefRelax, Scene.CharDefRelax, 1)
  if Scene.LocalActors[Scene.SceneName] == nil then
    Scene.LocalActors[Scene.SceneName] = {}
  end
  if Scene.LocalActors[Scene.SceneName][ActorClass] == nil then
    Scene.LocalActors[Scene.SceneName][ActorClass] = 1
  end
  Act.SetCls("DefAction", Scene.CharDefRelax)
end

function Scene.AddLocalActor(ActorName, ActorClass, Path, hasRagdoll)
  local ac, ragdoll
  if Path then
    if hasRagdoll == true then
      ragdoll = Path .. "/" .. ActorClass .. ".pxs"
    end
    ac = Scene.BaseAddActor(ActorName, ActorClass, Path .. "/" .. ActorClass .. ".M3D", ragdoll)
  else
    if hasRagdoll == true then
      ragdoll = Game.GetLevelPath() .. "/Map/" .. Scene.SceneName .. "/" .. ActorClass .. ".pxs"
    end
    ac = Scene.BaseAddActor(ActorName, ActorClass, Game.GetLevelPath() .. "/Map/" .. Scene.SceneName .. "/" .. ActorClass .. ".M3D", ragdoll)
  end
  if Scene.GetVar(Scene.SceneName, "Discardable") then
    Act.SetCls("Discardable", 1)
  end
  if Scene.LocalActors[Scene.SceneName] == nil then
    Scene.LocalActors[Scene.SceneName] = {}
  end
  if Scene.LocalActors[Scene.SceneName][ActorClass] == nil then
    Scene.LocalActors[Scene.SceneName][ActorClass] = 1
  end
end

function Scene.ActorAction(frame, Actor, Action, DefAction)
  local Time
  DefAction = defparam(DefAction, "-")
  Time = Act.GetAct("TimeOfFrame" .. frame)
  Act.SetAct("AddEventAtTime", Time)
  Act.SetAct("EventName", Actor .. "\001" .. Action .. "\001" .. DefAction)
  Act.SetAct("EventFunc", "Scene.ActorActEvent")
end

function Scene.ActorActEvent(EntityName, EventName, Time)
  local Actor, Action, DefAction
  Actor, Action, DefAction = string.gfind(EventName, "(.+)\001(.+)\001(.+)")()
  e = Game.GetEntity(string.sub(EntityName, 10) .. Actor)
  if e == nil then
    Game.ConsoleError("Actor : '" .. Actor .. "' does not exists\n")
    Game.ConsoleError("Can not execute '" .. Action .. "' action.\n")
  else
    e.ForceAction = Action
    if DefAction == "-" then
      e.ForceDefLoop = Action
    else
      e.ForceDefLoop = DefAction
    end
  end
end

function Scene.ActorBreakChannel(frame, Actor, Channel)
  local Time
  Time = Act.GetAct("TimeOfFrame" .. frame)
  Act.SetAct("AddEventAtTime", Time)
  Act.SetAct("EventName", Actor .. "\001" .. Channel)
  Act.SetAct("EventFunc", "Scene.ActorActBreakChanne")
end

function Scene.ActorActBreakChanne(EntityName, EventName, Time)
  local Actor, Channel
  Actor, Channel = string.gfind(EventName, "(.+)\001(.+)")()
  e = Game.GetEntity(string.sub(EntityName, 10) .. Actor)
  e.StopSecondary = Channel
end

function Scene.ObjAction(frame, Actor, Action, DefAction)
  local Time
  DefAction = defparam(DefAction, "-")
  Time = Act.GetAct("TimeOfFrame" .. frame)
  Act.SetAct("AddEventAtTime", Time)
  Act.SetAct("EventName", Actor .. "\001" .. Action .. "\001" .. DefAction)
  Act.SetAct("EventFunc", "Scene.ObjActEvent")
end

function Scene.ObjActEvent(EntityName, EventName, Time)
  local Actor, Action, DefAction
  Actor, Action, DefAction = string.gfind(EventName, "(.+)\001(.+)\001(.+)")()
  e = Game.GetEntity(Actor)
  e.ForceAction = Action
  if DefAction == "-" then
    e.ForceDefLoop = Action
  else
    e.ForceDefLoop = DefAction
  end
end

function Scene.SetDefSounds(ActorName, ActorType)
  loadstring(ActorType .. "Sound.SetSounds(\"" .. Scene.SceneName .. ActorName .. "\")")()
  if MapScenesSnd == nil or MapScenesSnd[Scene.SceneName .. ActorName] == nil then
    print("Sound warning: MapScenesSnd." .. Scene.SceneName .. ActorName .. "() not found\n")
  else
    MapScenesSnd[Scene.SceneName .. ActorName](MapScenesSnd)
  end
end

function Scene.CreateLocalAction(CharName, turnspeed, Name, Anm, Loop)
  local ac, act
  Name = defparam(Name, "Relax")
  Anm = defparam(Anm, "Relax")
  Loop = defparam(Loop, 0)
  ac = Act.GetClass(Scene.lastActorName)
  if ac:GetAct(Name) == nil then
    act = ac:NewAct(Name)
    act.AnmFilePath = Game.GetLevelPath() .. "/Map/" .. Scene.SceneName .. "/" .. Scene.SceneName .. "Anm/" .. defparam(MakeChar.Fake_Prefix[CharName], CharName) .. "_" .. Anm .. ".M3D"
    act.isLoop = Loop
    act.RotSpeed = turnspeed
    act.AngRotLimit = 90
    act.UseDisp = 0
    act.NodeModifier = -1
    act.AngleModifierSpeed = 5
    act.AnimAbsMove = 1
    ac.DefAction = Name
    return act
  end
end

function Scene.CreateExtraAction(CharName, Name, Anm, EventName, EventType, UseDisp)
  local ac, act
  UseDisp = defparam(UseDisp, 1)
  EventType = defparam(EventType, "!CharTurnEvent")
  ac = Act.GetClass(CharName)
  if ac:GetAct(Name) == nil then
    act = ac:NewAct(Name)
    act.AnmFilePath = Game.GetLevelPath() .. "/Map/" .. Scene.SceneName .. "/" .. Scene.SceneName .. "Anm/" .. CharName .. "_" .. Anm .. ".M3D"
    act.isLoop = 0
    act.RotSpeed = 0
    act.AngRotLimit = 90
    act.UseDisp = 0
    act.NodeModifier = -1
    act.AngleModifierSpeed = 5
    act.AnimAbsMove = 1
    act.UseDisp = UseDisp
    act.PriorityLevel = 1024
    if EventName ~= nil then
      ev = act:NewEvent(act.AnmTotalTime)
      ev.Name = EventName
      ev.Func = EventType
    end
    return act
  end
end

function Scene.SkipRenderDo(numframes)
  numframes = defparam(numframes, 1)
  local auto = Game.Get("AutoScreenShot")
  if not auto or auto == 0 then
    Game.Set("DrawNextFrame", 1 - numframes)
  end
end

function Scene.ExecGeneric(EntityName, EventName, Time)
  loadstring(EventName)()
end

function Scene.AddGeneric(Frame, Event, Discardable)
  local Time
  Discardable = defparam(Discardable, 1)
  Time = Act.GetAct("TimeOfFrame" .. Frame)
  Scene.AddGenericTime(Time, Event, Discardable)
end

function Scene.AddGenericTime(Time, Event, Discardable)
  Discardable = defparam(Discardable, 1)
  Act.SetAct("AddEventAtTime", Time)
  Act.SetAct("EventFunc", "Scene.ExecGeneric")
  Act.SetAct("EventName", Event)
  Act.SetAct("EventDiscardable", Discardable)
end

function Scene.AddStream(frame, filename, vol)
  local Time
  vol = defparam(vol, 1)
  Time = Act.GetAct("TimeOfFrame" .. frame)
  Act.SetAct("AddEventAtTime", Time)
  Act.SetAct("EventName", filename .. "\001" .. vol)
  Act.SetAct("EventFunc", "Scene.PlayStream")
end

function Scene.PlayStream(EntityName, EventName, Time)
  local cads0, cads1
  cads0, cads1 = string.gfind(EventName, "(.+)\001(.+)")()
  Sound.OpenVoice(Game.Get("StreamPath") .. cads0 .. ".ogg", 2, 0)
  Game.AddScheduledFunc(Game.GetTime() + 0.5, "Scene", "Scene.PlayVoiceVol", 2, tonumber(cads1))
end

function Scene.PlayVoiceVol(chan, vol)
  Sound.SetVoiceVolume(chan, vol)
  Sound.PlayVoice(chan)
end

function Scene.ExecRumble(EntityName, EventName, Time)
  local a = Game.Split(EventName, ",")
  Input.Rumble(a[1], a[2], a[3], a[4])
end

function Scene.AddRumble(act, Frame, icontrol, Left, Right, TimeRumble)
  local Time = act["TimeOfFrame" .. Frame]
  Scene.AddRumbleTime(act, Time, icontrol, Left, Right, TimeRumble)
end

function Scene.AddRumbleTime(act, Time, icontrol, Left, Right, TimeRumble)
  local ev = act:NewEvent(Time)
  ev.Name = icontrol .. "," .. Left .. "," .. Right .. "," .. TimeRumble
  ev.Func = "Scene.ExecRumble"
end

Scene.SpeechTextString = {}
Scene.VoiceDelayTime = 0.8

function Scene.ScheduledVoiceCallback(channel, rtime)
  local Time
  Sound.SetVoiceVolume(channel, 1)
  Sound.PlayVoice(channel)
  Time = Sound.VoiceRemain(channel, Game.Get("FullTalkTime"))
  if Time < 1 then
    if rtime then
      Time = rtime
    else
      Time = 1
    end
  end
  Scorer.SetSpeechText(Scene.SpeechTextString[channel], Time, V3D(220, 235, 255))
  Scene.SpeechTextString[channel] = "."
  Game.Set("FullTalkTime", Time)
  Game.Set("RemainTalkTime", Time)
end

function Scene.PlayVoiceScheduled(channel, stime, rtime)
  Game.AddScheduledFunc(Game.GetTime() + stime, "Scene", "Scene.ScheduledVoiceCallback", channel, rtime)
end

function Scene.PlayText(EntityName, EventName, Time)
  if Scene.SkippingScene then
    return
  end
  local a = Game.Split(EventName, ",")
  Scene.SetText(a[1], tonumber(a[2]))
end

function Scene.SetText(Cad, Duration)
  Sound.OpenVoice(TeamTalk.VoicesDir() .. Cad, Scene.VoiceChannel)
  Scene.PlayVoiceScheduled(Scene.VoiceChannel, Scene.VoiceDelayTime, Duration)
  local prevchan = Scene.VoiceChannel
  Scene.VoiceChannel = (Scene.VoiceChannel + 1) % 3
  Scene.SpeechTextString[prevchan] = TeamTalk.VoiceString(Cad)
end

function Scene.AddText(frame, lngtext, act)
  local Time
  if act then
    local ev = act:NewEvent(act:TimeFrame(frame))
    ev.Name = lngtext
    ev.Func = "Scene.PlayText"
  else
    Time = Act.GetAct("TimeOfFrame" .. frame) - Scene.VoiceDelayTime
    if Time < 0 then
      Time = 0
    end
    Act.SetAct("AddEventAtTime", Time)
    Act.SetAct("EventName", lngtext)
    Act.SetAct("EventFunc", "Scene.PlayText")
  end
end

function Scene.Pause()
  if Game.GetTime() > 0.5 then
    if Game.Get("DrawNextFrame") >= 1 then
      Game.GetMenu():NeedRender()
      Game.Set("AfterDrawCallback", "Scene.PauseMenu")
    else
      Game.Set("AfterDrawCallback", "Scene.Pause")
    end
  end
end

function Scene.PauseMenu()
  Menu.InitMenuSys()
  local DrawBackMenu = Menu.DrawBackMenu
  Menu.DrawBackMenu = Menu.DrawBackMenuFirstScreen
  Menu.YesNoMenu(Game.GetLangStr("Menu_Skip_Scene_Question"), "Scene.AbortSceneMenu", "Menu.BackToGame", Game.GetLangStr("Menu_Warning_Skip_Scene"), true, nil, nil, true)
  Menu.DrawBackMenu = DrawBackMenu
end

function Scene.AbortOnBreakScene(SceneName)
  if Scene.IsEngineScene(SceneName) then
    Scene.SkippingScene = true
    Game.AddScheduledFunc(0, "Scene.AbortScene", "Scene.AbortScene", 0)
  else
    Scene.VideoScorer_Abort()
  end
end

function Scene.AbortNextScene(SceneName)
  return Scene.Aborted and not Scene.GetVar(SceneName, "AbortBreak") and Scene.GetVar(SceneName, "EscapeScene") and not Scene.GetVar(SceneName, "EndOfLevelScene")
end

function Scene.AbortSceneMenu(id)
  if Scene.GetVar(Scene.SceneClass, "EndOfLevelScene") then
    Scene.Scenes[Scene.SceneClass].NextScene = nil
    Game.SetTimeSpeed(1)
    SaveGame.OnMenuNextLevel = true
    Input.SetActionSet("Inactive")
  else
    Menu.BackToGame(id)
  end
  Game.DeleteScheduledFuncs("Scene.AbortScene")
  Game.AddScheduledFunc(0, "Scene.AbortScene", "Scene.AbortScene", id)
end

function Scene.AbortScene(id)
  Scene.SkippingScene = false
  Scene.Aborted = true
  if Scene.GetVar(Scene.SceneClass, "SoundBreak") then
    Sound.StopAllSounds()
  end
  if Scene.GetVar(Scene.SceneClass, "MusicBreak") then
    SoundUtils.SceneStopMusic()
  end
  if Scene.GetVar(Scene.SceneClass, "VoiceBreak") then
    Sound.StopVoice(0)
    Sound.StopVoice(1)
    Sound.StopVoice(2)
    Game.Set("RemainTalkTime", 0)
  end
  Scene.EndOfScene(Scene.SceneName, "EndOfScene", 0)
end

function Scene.EndOfScene(EntityName, EventName, Time)
  local cam, SName, actlist
  local SceneClass = string.sub(Scene.SceneName, 10)
  TeamTalk.SuspendIncidentalTalking = false
  TeamTalk.StopRadioTalk = false
  Scene.IsPlaying = false
  Game.ScreenSaverEnable(true)
  Game.Set("PhysXSpeed", Scene.PrevPhysXSpeed)
  TeamTalk.TalkStamp = Game.GetTime()
  Game.Set("WalkCamFar", 200000)
  if MapEffects ~= nil then
    local tClass = "CleanUp_" .. string.sub(Scene.SceneName, 10)
    if MapEffects[tClass] ~= nil then
      MapEffects[tClass](MapEffects)
    end
  end
  if Effects.EndScene ~= nil then
    Effects.EndScene()
  end
  local controladorDeEscena
  if SceneEditor == nil then
    if Scene.SceneController then
      controladorDeEscena = Scene.SceneController
    end
  elseif SceneEditor ~= nil and SceneEditor.sceneController ~= nil then
    controladorDeEscena = SceneEditor.sceneController
  else
    controladorDeEscena = Scene.SceneController
  end
  controladorDeEscena:HideImage()
  if EditorIni ~= nil and EditorIni.grabando ~= nil and EditorIni.grabando == true and Scene.SkipAlternate == false then
    EditorIni.PressStopFrameRec()
  end
  SName = string.sub(EntityName, 10)
  actlist = Scene.Actors[SName]
  for actr in pairs(actlist) do
    local a = Game.GetEntity(actlist[actr][2])
    a.OnObjSlot = ""
    a:Del()
  end
  Scene.LastSceneName = Scene.SceneName
  Scene.SceneName = nil
  Scene.SceneClass = nil
  l = Game.GetEntity(EntityName)
  l.OnObjSlot = ""
  l.OnSlot = ""
  l:Del()
  Scene.DeleteSceneController()
  Menu.IsComingBack = false
  Scorer.SetLabelText("", 0)
  Scorer.SetMsgText("", 0)
  Scorer.SetSpeechText("", 0)
  Input.SetActionSet(Scene.AcActionSet)
  Game.Set("EscapeEvent", "Menu.MenuBookShow")
  Game.Set("SoundDopplerLevel", Scene.LastDopplerLevel)
  Scene.SkipRenderDo()
  Game.AddScheduledFunc(0, "Scene", "Scene.DelClass", SName)
  Game.Set("DisableSkipSlot", 0)
  Game.SetTimeSpeed(1)
  Game.SetTimeFade(1, 1)
  if Camera.FocusModif and Camera.FocusModif.bValidBaseType then
    Camera.FocusModif.bDelete = true
  end
  Game.Set("CameraFixFocus", 0)
  if Scene.EndOfSubSceneCallback ~= nil then
    func = Scene.EndOfSubSceneCallback
    Scene.EndOfSubSceneCallback = nil
    func(Scene.usr)
  end
  local NextSceneName = Scene.GetVar(SceneClass, "NextScene")
  if NextSceneName ~= "" then
    local FakeTransition = Scene.Aborted
    if Scene.SkipAlternate == true then
      Scene.HideChars()
    end
    local AbortNextScene = Scene.AbortNextScene(NextSceneName)
    if AbortNextScene and not Scene.IsEngineScene(NextSceneName) then
      Scene.Aborted = false
      Scene.AcActionSet = Input.GetActionSet()
      Scene.IsPlaying = true
      Game.ScreenSaverEnable(false)
      Scene.VideoSceneClass = NextSceneName
      Scene.usr = Game.UsrEntity(0)
      Scene.PrevVideoFrame = -1
      Sound.StopAllSounds()
      SoundUtils.SceneStopMusic()
      Sound.StopVoice(0)
      Sound.StopVoice(1)
      Sound.StopVoice(2)
      Game.Set("RemainTalkTime", 0)
      Sound.StopAllSounds()
    else
      Scene.Play(NextSceneName)
    end
    if AbortNextScene then
      Scene.AbortOnBreakScene(NextSceneName)
    elseif FakeTransition then
      Menu.ScorerFakeTransition()
    end
  else
    Scene.UnhideChars()
    if Scene.GetVar(SceneClass, "PlantPlayer") then
      Scene.DoPlantPlayer(Scene.GetVar(SceneClass, "PlantPlayer"))
    end
    if Scene.Aborted then
      Menu.FakeTransition = true
    end
    Menu.ShowScorer()
    track_tag("Scene(" .. SceneClass .. ")")
    if Scene.EndOfSceneCallback ~= nil then
      func = Scene.EndOfSceneCallback
      Scene.EndOfSceneCallback = nil
      func(Scene.usr)
    end
    if Scene.GetVar(Scene.SceneClass, "SoundBreak") then
      Sound.StopAllSounds()
    end
    if Scene.GetVar(Scene.SceneClass, "MusicBreak") then
      SoundUtils.SceneStopMusic()
    end
    if Scene.GetVar(Scene.SceneClass, "VoiceBreak") then
      Sound.StopVoice(0)
      Sound.StopVoice(1)
      Sound.StopVoice(2)
      Game.Set("RemainTalkTime", 0)
    end
  end
end

function Scene.DoPlantPlayer(setRelax)
  setRelax = defparam(setRelax, true)
  player:SetOnFloor(1, 1500)
  if setRelax == "Whip" then
    player.ForceDefLoop = "WhipRelax"
    player.ForceEndWalkAction = "WhipRelax"
  elseif setRelax then
    player.ForceDefLoop = "Relax"
    player.ForceEndWalkAction = "Relax"
  end
  player.isFalling = 0
  player.DisplAng = 0
  player.Ang = V3D(0, player.Ang.y, 0)
  player.ViewAng = V3D(0, player.Ang.y, 0)
  player.IgnoreUsrControl = 1
  player.IgnoreUsrControl = 0
  if setRelax == "Whip" then
    player.oActCtrl:SetAction("WhipRelax", true, 0)
  elseif setRelax then
    player.oActCtrl:SetAction("Relax", true, 0)
  end
end

function Scene.DelClass(SName)
  Act.DelClass("Scene" .. SName)
  if Scene.LocalActors[SName] ~= nil then
    for anam in pairs(Scene.LocalActors[SName]) do
      Act.DelClass(SName .. anam)
    end
    Scene.LocalActors[SName] = nil
  end
  if Scene.OnDelClass then
    Scene.OnDelClass(SName)
    Scene.OnDelClass = nil
  end
end

function Scene.ReloadScene(EntityName, EventName, Time)
  local escena = string.sub(Scene.SceneName, 10)
  Scene.ReloadEndOfSceneCallback = Scene.EndOfSceneCallback
  Scene.EndOfSceneCallback = nil
  local ReloadNextScene = Scene.Scenes[escena].NextScene
  Scene.Scenes[escena].NextScene = nil
  Scene.EndOfScene(EntityName, EventName, Time)
  Scene.Scenes[escena].NextScene = ReloadNextScene
  Scene.OnDelClass = Scene.ReplayScene
end

function Scene.ReplayScene(escena)
  local SceneClass = Act.GetClass("Scene" .. escena)
  Scene.EndOfSceneCallback = Scene.ReloadEndOfSceneCallback
  if SceneClass == nil then
    Scene.Load(escena)
    Game.ConsoleError("Cositas recargadas!\n")
  end
  Scene.Play(escena)
end

function Scene.LoadSounds(sceneClass)
  local sceneName = sceneClass
  local libPrefix = ""
  if tonumber(string.sub(sceneClass, 1, 1)) then
    libPrefix = "_"
  end
  local libName = libPrefix .. sceneName
  if Scene.ValidPreloadLibrary(Game.GetLevelPath() .. "/Scripts/SceneSound/" .. sceneName .. "/" .. libName .. "Sound.lua", libName .. "Sound") then
    _G[libName .. "Sound"].LoadSounds(sceneName)
  end
  local actorlist = Scene.Actors[sceneName]
  for actr in pairs(actorlist) do
    local actorLib = libPrefix .. actorlist[actr][2]
    if not actorlist[actr].Exist and Scene.ValidPreloadLibrary(Game.GetLevelPath() .. "/Scripts/SceneSound/" .. sceneName .. "/" .. actorLib .. "Sound.lua", actorLib .. "Sound") then
      _G["" .. actorLib .. "Sound"].LoadSounds(actorlist[actr][2])
    end
  end
  if Scene.ValidPreloadLibrary(Game.GetLevelPath() .. "/Scripts/SceneSound/" .. sceneName .. "/" .. libName .. "SndTracks.lua", libName .. "SndTracks") then
  end
  local actorlist = Scene.Actors[sceneName]
  for actr in pairs(actorlist) do
    local actorLib = libPrefix .. actorlist[actr][2]
    if actorlist[actr].Exist or Scene.ValidPreloadLibrary(Game.GetLevelPath() .. "/Scripts/SceneSound/" .. sceneName .. "/" .. actorLib .. "SndTracks.lua", actorLib .. "SndTracks") then
    end
  end
end

function Scene.AddSound(Frame, SoundName, Vol, Pitch, Pan, Filter, Reverb)
  Pitch = defparam(Pitch, 0)
  Pan = defparam(Pan, 0)
  Filter = defparam(Filter, 1)
  Reverb = defparam(Reverb, 1)
  Time = Act.GetAct("TimeOfFrame" .. Frame)
  Act.SetAct("AddEventAtTime", Time)
  Act.SetAct("EventName", SoundName .. ":" .. Vol .. ":" .. Pitch .. ":" .. Pan .. ":" .. Filter .. ":" .. Reverb)
  Act.SetAct("EventFunc", "!AnmSound2DEvent")
end

function Scene.EndOfSceneRender(EntityName, EventName, Time)
  if Scene.GetVar(Scene.SceneClass, "EndOfLevelScene") then
    Game.GetMenu():NeedRender()
    Game.SetTimeSpeed(0)
    Game.Set("AfterDrawCallback", "Scene.CallEndOfSceneRender")
    Scene.EndOfSceneParams = {
      EntityName,
      EventName,
      Time
    }
  else
    Scene.EndOfScene(EntityName, EventName, Time)
  end
end

function Scene.CallEndOfSceneRender()
  Game.SetTimeSpeed(1)
  Scene.EndOfScene(Scene.EndOfSceneParams[1], Scene.EndOfSceneParams[2], Scene.EndOfSceneParams[3])
end

function Scene.Load(SceneClass)
  local path
  if not Scene.IsEngineScene(SceneClass) then
    print("Scene " .. SceneClass .. " must be played as video!\n")
    return
  end
  path = Game.GetLevelPath() .. "/Map/" .. SceneClass .. "/"
  if Act.GetClass("Scene" .. SceneClass) ~= nil then
    print("HORROR : Scene" .. SceneClass .. " Allready exists!\n")
    return
  end
  Scene.PreloadSceneEvents(SceneClass)
  Act.CreateClass("Scene" .. SceneClass)
  if Scene.GetVar(SceneClass, "Discardable") then
    Act.SetCls("Discardable", 1)
  end
  Act.SetCls("ModelFilePath", path .. SceneClass .. ".m3d")
  Act.CreateAction("Play")
  Act.SetAct("AnmFilePath", path .. SceneClass .. "Anm/Play.m3d")
  Act.SetAct("InterpTime", 0)
  Act.SetAct("isLoop", 0)
  Act.SetAct("AddEventAtTime", Act.GetAct("AnmTotalTime"))
  Act.SetAct("EventName", "EndOfScene")
  Act.SetAct("EventFunc", "Scene.EndOfSceneRender")
  Game.Set("PathInPackFile", "")
  Act.GetClass("Scene" .. SceneClass)
  Act.SetCls("DefAction", "Play")
  Scene.SceneName = SceneClass
  Scene.Actors[Scene.SceneName] = {}
  if MapScenes ~= nil and MapScenes["OnLoad_" .. SceneClass] then
    print("Loading  Scene '" .. SceneClass .. "'...")
    MapScenes["OnLoad_" .. SceneClass]()
  end
  Scene.LoadSounds(SceneClass)
  if MapEffects ~= nil then
    local tClass = "Init_" .. SceneClass
    if MapEffects[tClass] ~= nil then
      MapEffects[tClass](MapEffects)
    end
  end
  Effects.LoadSceneEvents(SceneClass)
  Scene.LoadSceneTracks(SceneClass)
  Scene.LoadLogicEvents(SceneClass)
end

function Scene.LoadAlternate(sufix, eosfunc, Loop)
  Loop = defparam(Loop, 0)
  local path
  local SceneClass = Scene.SceneName
  endOfSceneFunc = defparam(eosfunc, "Scene.EndOfScene")
  path = Game.GetLevelPath() .. "/Map/" .. SceneClass .. "/"
  if Act.GetClass("Scene" .. SceneClass) == nil then
    print("HORROR : Scene" .. SceneClass .. " Don't exists!\n")
    return
  end
  Act.CreateAction("Play" .. sufix)
  Act.SetAct("AnmFilePath", path .. SceneClass .. "Anm/Play" .. sufix .. ".m3d")
  Act.SetAct("InterpTime", 0)
  Act.SetAct("isLoop", Loop)
  Act.SetAct("AddEventAtTime", Act.GetAct("AnmTotalTime"))
  Act.SetAct("EventName", "EndOfScene")
  Act.SetAct("EventFunc", endOfSceneFunc)
  Game.Set("PathInPackFile", Game.GetLevelPath() .. "/Sounds/" .. SceneClass .. "/")
  if MapScenesSnd == nil or MapScenesSnd[SceneClass .. sufix] == nil then
    print("Sound warning: MapScenesSnd." .. SceneClass .. "() not found\n")
  else
    MapScenesSnd[SceneClass .. sufix](MapScenesSnd)
  end
  Game.Set("PathInPackFile", "")
  if MapEffects ~= nil then
    local tClass = "Init_" .. SceneClass .. sufix
    if MapEffects[tClass] ~= nil then
      MapEffects[tClass](MapEffects)
    end
  end
  Act.GetClass("Scene" .. SceneClass)
end

function Scene.UnhideChars()
  local i, e
  if Scene.HidenChars ~= nil then
    for i in pairs(Scene.HidenChars) do
      e = Game.GetEntity(Scene.HidenChars[i])
      if e ~= nil then
        e.Active = 1
        e.TimeSpeed = 1
      end
    end
  end
  Scene.HidenChars = nil
end

function Scene.HideThis(e)
  if e == nil then
    return
  end
  if e.Life <= 0 then
    e.Active = 0
    e.TimeSpeed = 0
  elseif e.Active ~= 0 then
    table.insert(Scene.HidenChars, e.Name)
    e.Active = 0
    e.TimeSpeed = 0
  end
end

function Scene.HideChars()
  if Scene.HidenChars == nil then
    Scene.HidenChars = {}
  end
  e = Game.UsrEntity(0)
  if e ~= nil and e:IsType("WalkChar") then
    e.SelectedEntity = ""
  end
  e = Game.GetFirst()
  while e ~= nil do
    if e:IsType("WalkChar") then
      Scene.HideThis(e)
    end
    if e:IsType("PxBodyPhysics") and e.bIsDissolving then
      e:Del()
    end
    if e.NextInSlot == "" then
      break
    end
    e = Game.GetEntity(e.NextInSlot)
  end
end

function Scene.StickCamera(id, ename)
end

function Scene.CreateSceneObj(SceneClass)
  local dummyname, dummypos, dummyang, isDummy, l
  Game.StartDummySearch("DM_Scene_" .. SceneClass, 1)
  dummyname, dummypos, dummyang, isDummy = Game.NextDummySearch()
  if dummyname == nil then
    print("DM_Scene_" .. SceneClass .. " Dummy never exists!")
    print("using scene Data")
    dummypos = Scene.GetVar(SceneClass, "ScenePos")
    dummyang = Scene.GetVar(SceneClass, "SceneAng")
    dummyname = "DM_Scene_" .. SceneClass
  end
  l = Game.CreateEntity(dummyname, "WithLife")
  if Scene.GetVar(SceneClass, "UseDummyPosition") then
    l.Pos = dummypos
    l.Ang = dummyang
  end
  l.ActCtrl = "Scene" .. SceneClass
  return l
end

function Scene.EndOfVideoScene()
  local SceneClass = Scene.VideoSceneClass
  Scene.IsPlaying = false
  Game.ScreenSaverEnable(true)
  if Scene.GetVar(SceneClass, "PlantPlayer") then
    Scene.DoPlantPlayer(Scene.GetVar(SceneClass, "PlantPlayer"))
  end
  if Scene.Aborted then
    Game.Set("RemainTalkTime", 0)
  end
  Input.SetActionSet(Scene.AcActionSet)
  local NextSceneName = Scene.GetVar(SceneClass, "NextScene")
  if Scene.EndOfSubSceneCallback ~= nil then
    func = Scene.EndOfSubSceneCallback
    Scene.EndOfSubSceneCallback = nil
    func(Scene.usr)
  end
  if NextSceneName ~= "" then
    local AbortNextScene = Scene.AbortNextScene(NextSceneName)
    Scene.Play(NextSceneName)
    if AbortNextScene then
      Scene.AbortOnBreakScene(NextSceneName)
    end
  else
    track_tag("Video(" .. SceneClass .. ")")
    if Scene.EndOfSceneCallback ~= nil then
      func = Scene.EndOfSceneCallback
      Scene.EndOfSceneCallback = nil
      func(Scene.usr)
    end
  end
end

Scene.SubsEntries = {}
Scene.RumblesEntries = {}
Scene.PrevVideoFrame = -1
Scene.ContinueMusicInVideo = false

function Scene.PlayVideo(videoname)
  print("Scene.VideoScorer_Init('" .. videoname .. ")")
  if Game.Get("VideoRender") == 1 then
    return
  end
  Scene.Aborted = false
  Scene.AcActionSet = Input.GetActionSet()
  local VideoPath
  if string.sub(init.level_name, 1, 4) == "dlc_" then
    VideoPath = "Video/DLC" .. string.sub(init.level_name, 5, 5) .. "/"
  else
    VideoPath = "Video/"
  end
  local videofile = VideoPath .. videoname .. ".bik"
  Menu.RestoreLoadSounds()
  Scene.IsPlaying = true
  Game.ScreenSaverEnable(false)
  Scene.VideoSceneClass = videoname
  Scene.usr = Game.UsrEntity(0)
  Game.Set("VideoRender", 1)
  Game.Set("PlayVideo", "#" .. videofile)
  Game.Set("PlayVideoLoop", 0)
  Game.Set("MaxTalkLineSizePix", 500)
  Scorer.Fade(0, Color(0, 0, 0, 0), Color(0, 0, 0, 0), 0)
  if Scene.GetVar(Scene.SceneClass, "SoundBreak") then
    Sound.StopAllSounds()
  end
  if Scene.ContinueMusicInVideo then
    Scene.ContinueMusicInVideo = false
  else
    SoundUtils.SceneStopMusic()
  end
  Sound.StopVoice(0)
  Sound.StopVoice(1)
  Sound.StopVoice(2)
  Game.Set("RemainTalkTime", 0)
  Game.Set("EscapeEvent", "Scene.VideoScorer_Pause")
  if Game.GetTime() <= 0.01 then
    Game.Set("PlayVideoPause", 0)
  elseif Input.GetActionSet() == "Menu" then
    Game.Set("PlayVideoPause", 1)
    Menu.PlayPauseVideoMusic()
  else
    Game.Set("PlayVideoPause", 0)
    Scene.VideoScorer_Resume()
  end
  local fileLines = Game.GetTextFilePak(VideoPath .. videoname .. ".MSEsub")
  if fileLines then
    for i = 1, #fileLines do
      Scene.SubsEntries[i] = Game.Split(fileLines[i], "\t")
      if #Scene.SubsEntries[i] == 3 then
        Scene.SubsEntries[i][1] = tonumber(Scene.SubsEntries[i][1])
        Scene.SubsEntries[i][2] = 0.25 + (tonumber(Scene.SubsEntries[i][2]) - tonumber(Scene.SubsEntries[i][1])) / 25
        Scene.SubsEntries[i][4] = string.sub(Game.GetLangStr(Scene.SubsEntries[i][3]), 1, 7) == "FORCED>"
        Scene.SubsEntries[i][3] = Scorer.ParseLanguageEntryId(Scene.SubsEntries[i][3])
      else
        table.remove(Scene.SubsEntries, #Scene.SubsEntries)
        break
      end
    end
  end
  local entry = {}
  fileLines = Game.GetTextFilePak(VideoPath .. videoname .. ".MSErum")
  if fileLines then
    for i = 1, #fileLines do
      Scene.RumblesEntries[i] = {}
      entry = Game.Split(fileLines[i], "\t")
      if #entry == 3 then
        Scene.RumblesEntries[i][1] = tonumber(entry[1])
        Scene.RumblesEntries[i][2] = (tonumber(entry[2]) - Scene.RumblesEntries[i][1]) / 30
        local pos = string.find(entry[3], ";")
        Scene.RumblesEntries[i][3] = tonumber(string.sub(entry[3], 1, pos - 1))
        Scene.RumblesEntries[i][4] = tonumber(string.sub(entry[3], pos + 1))
      else
        table.remove(Scene.RumblesEntries, #Scene.RumblesEntries)
        break
      end
    end
  end
  Scene.PrevVideoFrame = -1
end

function Scene.VideoScorer_Pause()
  if Game.Get("PlayVideoFrames") > 0 and Game.Get("PlayVideoPause") == 0 then
    print("Scene.VideoScorer_Pause")
    Game.GetMenu():NeedRender()
    Game.Set("PlayVideoPause", 1)
    Game.Set("AfterDrawCallback", "Scene.VideoScorer_PauseMenu")
  end
end

function Scene.VideoScorer_PauseMenu()
  local LastMode = Menu.LastMode
  local LastTimeSpeed = Menu.LastTimeSpeed
  Menu.InitMenuSys()
  local DrawBackMenu = Menu.DrawBackMenu
  Menu.DrawBackMenu = Menu.DrawBackMenuFirstScreen
  Menu.YesNoMenu(Game.GetLangStr("Menu_Skip_Scene_Question"), "Scene.VideoScorer_Abort", "Menu.BackToGame", Game.GetLangStr("Menu_Warning_Skip_Scene"), true, nil, nil, true)
  Menu.DrawBackMenu = DrawBackMenu
  EffectsFrame.BackFadeClear()
  Menu.IsComingBack = false
  Menu.LastMode = LastMode
  Menu.LastTimeSpeed = LastTimeSpeed
  Menu.PlayPauseVideoMusic()
end

function Scene.VideoScorer_Resume()
  print("Scene.VideoScorer_Resume")
  Menu.LastMode = Input.GetActionSet()
  Input.SetActionSet("Inactive")
  Menu.LastTimeSpeed = Game.GetTimeSpeed()
  Game.SetTimeSpeed(0)
  local UsePauseMessage = Menu.UsePauseMessage
  Menu.UsePauseMessage = false
  Menu.StartNewMenu(false, false)
  Menu.UsePauseMessage = UsePauseMessage
  Menu.AddScorerTalk()
  Scorer.GetItem(0, "Talk").OutSide = 1
  Scene.CreateVideoScorerItem()
  Scorer.SetDefault(0, "PlayVideo")
  Game.Set("PlayVideoPause", 0)
  Sound.PauseMusic(false)
  Game.ScreenSaverEnable(false)
end

function Scene.CreateVideoScorerItem()
  local video
  video = Scorer.NewItem(0, "PlayVideo", "Video")
  video.File = "2D/White.alpha.tga"
  video.Unit = 1
  video.WideScale = 0
  video.Pos = V2D(320, 240)
  video.Scale = V2D(1137.77783203125 / Game.Get("PhysicalAspectRatio"), 480)
  video.Size = video.Scale
  video.Color = Color(255, 255, 255, 255)
  video.Pivot = V2D(0.5, 0.5)
  video.OutSide = 1
  video.NeedRender = 1
  video.OnAccept = ""
  video.OnRender = "Scene.VideoScorer_Loop"
  video.uData.NeedRender = true
  return video
end

function Scene.VideoScorer_Loop()
  local frame = Game.Get("PlayVideoFrame")
  if frame ~= Scene.PrevVideoFrame then
    if #Scene.SubsEntries > 0 and frame >= Scene.SubsEntries[1][1] then
      Scorer.SetSpeechText(Scene.SubsEntries[1][3], Scene.SubsEntries[1][2])
      Game.Set("ForceShowSubtitles", Scene.SubsEntries[1][4])
      table.remove(Scene.SubsEntries, 1)
    end
    if 0 < #Scene.RumblesEntries and frame >= Scene.RumblesEntries[1][1] then
      Input.Rumble(0, Scene.RumblesEntries[1][3], Scene.RumblesEntries[1][4], Scene.RumblesEntries[1][2])
      table.remove(Scene.RumblesEntries, 1)
    end
  end
  Scene.PrevVideoFrame = frame
  if Scene.GetVar(Scene.VideoSceneClass, "EndOfLevelScene") then
    local video = Scorer.GetItem(0, "PlayVideo")
    if video.uData.NeedRender and frame >= Game.Get("PlayVideoFrames") - 5 then
      Game.GetMenu():NeedRender()
      video.uData.NeedRender = false
    end
  end
  if frame == 0 then
    if Scene.GetVar(Scene.VideoSceneClass, "EndOfLevelScene") then
      Game.Set("AfterDrawCallback", "Scene.VideoScorer_End")
    else
      Scene.VideoScorer_End()
    end
  end
end

function Scene.VideoScorer_Abort()
  Scene.Aborted = true
  Sound.StopMusic()
  if Scene.GetVar(Scene.VideoSceneClass, "EndOfLevelScene") then
    local a = Scene.Scenes[Scene.VideoSceneClass]
    if a then
      a.NextScene = nil
    end
    Game.Set("PlayVideo", " ")
    Game.Set("PlayVideoPause", 0)
    Game.Set("VideoRender", 0)
    Game.SetTimeSpeed(1)
    SaveGame.OnMenuNextLevel = true
    Input.SetActionSet("Inactive")
    Scene.EndOfVideoScene()
  else
    Menu.FakeTransition = true
    Scene.VideoScorer_End()
  end
end

function Scene.VideoScorer_End()
  print("Scene.VideoScorer_End")
  Scene.SubsEntries = {}
  Scene.RumblesEntries = {}
  Scene.PrevVideoFrame = -1
  Game.Set("PlayVideo", " ")
  Game.Set("PlayVideoPause", 0)
  Game.Set("MaxTalkLineSizePix", 340)
  Game.Set("VideoRender", 0)
  Menu.BackToGame(0, "")
  Game.Set("EscapeEvent", "Menu.MenuBookShow")
  if Input.GetActionSet() == "Null" then
    addSF(0, "", "Scene.EndOfVideoScene")
  else
    Scene.EndOfVideoScene()
  end
end

function Scene.Play(SceneClass)
  AISpec.HideGrenades()
  Game.Set("HUDFullScreenPicActive", false)
  if Team.isGameOver() then
    Scene.EndOfSceneCallback = nil
    return false
  end
  if not Scene.IsEngineScene(SceneClass) then
    Scene.PlayVideo(SceneClass)
    Game.Log("Scene.PlayVideo(" .. SceneClass .. ")\n", 1)
    return true
  elseif Scene.GetVar(SceneClass, "VideoOnConsole") or Scene.GetVar(SceneClass, "VideoCGI") then
    Game.ConsoleError("---------------------------------------\n")
    Game.ConsoleError("-- Scene.PlayVideo(" .. SceneClass .. ") --\n")
    Game.ConsoleError("---------------------------------------\n")
    Scene.PlayVideo(SceneClass)
    return true
  end
  Weapons.ResetTimeblend()
  Effects.FXScorerOff()
  Stamina.DisableIfEnabled()
  Energy.FinishTired(1)
  NeutralEnergy.RemoveAllSources()
  PickableItems.RemoveAll()
  delSF("DropPickable")
  TeamTalk.SuspendIncidentalTalking = true
  TeamTalk.StopRadioTalk = true
  if player then
    player.ExtraSufix = ""
  end
  local actr, actorlist, l, actinfo, a
  Scene.Aborted = false
  Game.Set("DrawNextFrame", 0)
  Scene.SkipRenderDo(2)
  Scene.Load(SceneClass)
  actorlist = Scene.Actors[SceneClass]
  for actr in pairs(actorlist) do
    local actorName = actorlist[actr][2]
    Game.CreateEntity(actorName, "WithLife")
  end
  l = Scene.CreateSceneObj(SceneClass)
  Scene.CreateSceneController(SceneClass, l)
  Scene.HideChars()
  Scene.usr = Game.UsrEntity(0)
  Scorer.Clear(0)
  WarioMsg.CLEAR_WARIO()
  Scorer.SetCinema(0, 1, 0.25)
  Game.Set("MaxTalkLineSizePix", 500)
  Menu.AddScorerTalk()
  Scorer.NewItem(0, "PressGame", "PressGame")
  Scorer.SetLabelText("", 0)
  Scorer.SetMsgText("", 0)
  Scorer.SetSpeechText("", 0)
  Scene.AcActionSet = Input.GetActionSet()
  Input.SetActionSet("Inactive")
  if Scene.GetVar(SceneClass, "EscapeScene") then
    Game.Set("EscapeEvent", "Scene.Pause")
  end
  Scene.SceneName = l.Name
  Scene.SceneClass = SceneClass
  Scene.LastDopplerLevel = Game.Get("SoundDopplerLevel")
  Game.Set("SoundDopplerLevel", 0)
  if Scene.GetVar(Scene.SceneClass, "SoundBreak") then
    Sound.StopAllSounds()
  end
  if Scene.GetVar(Scene.SceneClass, "MusicBreak") then
    SoundUtils.SceneStopMusic()
  end
  if Scene.GetVar(Scene.SceneClass, "VoiceBreak") then
    Sound.StopVoice(0)
    Sound.StopVoice(1)
    Sound.StopVoice(2)
    Game.Set("RemainTalkTime", 0)
  end
  Game.AddScheduledFunc(Game.GetTime(), "Scene", "Game.Set", "DisableSkipSlot", 1)
  local locUseAbsPos = Scene.GetVar(SceneClass, "UseAbsPos")
  for actr in pairs(actorlist) do
    actinfo = actorlist[actr]
    a = Game.GetEntity(actinfo[2])
    a.Pos = l.Pos
    a.Ang = l.Ang
    a.ActCtrl = actinfo[2]
    if locUseAbsPos ~= 1 then
      a.LinkModel = Scene.SceneName .. "," .. actinfo[1]
    elseif l.isNode_DC_Actors == 1 then
      local lpos = l.NodeLocalPos_DC_Actors
      a.Pos = l.Pos + V3D(lpos.x, lpos.z, -lpos.y):rot(l.Ang)
      a.LinkModel = Scene.SceneName .. ",DC_Actors"
    end
    a.OffModPos = V3D(0, 0, 0)
    a.DeltaOffMul = 1
    a.OffMul = 1
    a.UseLinkAng = 1
    a.UseLinkPos = 1
    a.UseAbsPos = locUseAbsPos
    local subName = string.sub(actinfo[2], string.len(actinfo[2]) - (string.len("Belmont") - 1), length)
    local subName2 = string.sub(actinfo[2], string.len(actinfo[2]) - (string.len("Gabriel_Render") - 1), length)
    if subName == "Belmont" or subName2 == "Gabriel_Render" then
      Belmont.UpdateRelicModels(Game.GetEntity(actinfo[2]))
      Belmont.UpdatePocketNodes(actinfo[2])
    end
  end
  Scene.IsPlaying = true
  Game.ScreenSaverEnable(false)
  if MapEffects ~= nil then
    local tClass = "Play_" .. SceneClass
    if MapEffects[tClass] ~= nil then
      MapEffects[tClass](MapEffects)
    end
  end
  if Effects.PlayScene ~= nil then
    Effects.PlayScene(l.Name)
  end
  if not Scene.GetVar(SceneClass, "UsePhysics") then
    Scene.PrevPhysXSpeed = Game.Get("PhysXSpeed")
    Game.Set("PhysXSpeed", 0)
  end
end

function Scene.PlayAlternate(sufix, sceneName)
  if Scene.SkipAlternate == true then
    return
  end
  name = defparam(sceneName, Scene.SceneName)
  Game.ConsoleError("Params: " .. sufix .. "\n")
  scene = Game.GetEntity(name)
  scene.Action = "Play" .. sufix
  Scene.SceneController:SetSceneAction(scene.Action)
end

function Scene.SetTimeSpeed(speed)
  scene = Game.GetEntity(Scene.SceneName)
  scene.TimeSpeed = speed
  if scene == nil then
    return
  end
  local SceneClass = string.sub(Scene.SceneName, 10)
  actorlist = Scene.Actors[SceneClass]
  for actr in pairs(actorlist) do
    e = Game.GetEntity(actorlist[actr][2])
    e.TimeSpeed = speed
  end
end

function Scene.ShowChar(frame, Actor, Active)
  local Time
  DefAction = defparam(DefAction, "-")
  Time = Act.GetAct("TimeOfFrame" .. frame)
  Act.SetAct("AddEventAtTime", Time)
  Act.SetAct("EventName", Actor)
  if Active then
    Act.SetAct("EventFunc", "Scene.ShowCharActiveEvent")
  else
    Act.SetAct("EventFunc", "Scene.ShowCharRelaxEvent")
  end
end

function Scene.ShowCharRelaxEvent(EntityName, EventName, Time)
  local e = Game.GetEntity(EventName)
  if e then
    e.ForceAction = "Relax"
    e.bActive = true
    e.TimeSpeed = 1
    e.oAI.bEnable = false
    e:ResetControl()
  end
end

function Scene.ShowCharActiveEvent(EntityName, EventName, Time)
  local e = Game.GetEntity(EventName)
  if e then
    e.ForceAction = "Relax"
    e.bActive = true
    e.TimeSpeed = 1
    e.oAI.bEnable = true
    e:ResetControl()
  end
end

function Scene.SetUsrPosAng(id, Pos, AngY, AngX, calva)
  AngX = defparam(AngX, 0)
  local char = Game.UsrEntity(id)
  local wc = char.oWeapCtrl
  local AnimName
  local realang = 0
  wc.ZoomLevel = 0
  char.IgnoreUsrControl = 1
  local angy = Game.NormAng(AngY - char.ViewAng.y)
  if 45 < angy and angy < 135 then
    angy = angy - 90
    AnimName = "Turn90Right"
  elseif angy < -45 and -135 < angy then
    angy = angy + 90
    AnimName = "Turn90Left"
  elseif 135 < angy or angy < -135 then
    angy = angy + 180
    AnimName = "Turn180"
  else
    AnimName = "Hide"
    realang = AngX
  end
  local fps = Game.GetEntity(char.FPSEntity)
  Scene.fpEntity = fps
  if Scene.fpEntity == nil then
    Game.ConsoleError("Mal rollete!\n")
    char:MoveMePosAng(2, 0.2, Pos, V3D(realang, char.ViewAng.y + angy, 0))
  else
    char:MoveMePosAng(2, fps.oActCtrl.oActClass:GetAct(fps.Action).AnmTotalTime - 0.1, Pos, V3D(realang, char.ViewAng.y + angy, 0))
  end
  if calva ~= nil then
    char.OnEndMove = "Scene.SetUsrPosAngEnd"
    Scene.SetUsrPosAngEndFunc = calva
  end
end

function Scene.SetUsrPosAngEnd(EntityName)
  Game.AddScheduledFunc(Game.GetTime() + 0.2, "Scene.SetUsrPosAngEndFunc", Scene.SetUsrPosAngEndFunc, EntityName)
  Scene.SetUsrPosAngEndFunc = nil
end

function Scene.PlayFPNI(escenito)
  local char = Game.UsrEntity(0)
  local fps = Game.GetEntity(char.FPSEntity)
  Scene.fpEntity = fps
  Scene.FP_SceneName = escenito
  Scene.LauchFromFP(char.Name)
end

function Scene.PlayFPNNI(escenito)
  local char = Game.UsrEntity(0)
  local fps = Game.GetEntity(char.FPSEntity)
  Scene.fpEntity = fps
  Scene.FP_SceneName = escenito
  Scene.LauchFromFP(char.Name, false)
end

function Scene.GetCamLink(SceneClass)
end

function Scene.PlayFP(SceneClass)
  if Scene.Scenes[SceneClass].CameraFrom then
    Scene.PlayFPNI(SceneClass)
    return
  end
  local l = Scene.CreateSceneObj(SceneClass)
  local char = Game.UsrEntity(0)
  local cam = Game.CreateEntity("Temp_Camera", "Cam")
  l.Action = "Play"
  cam.EntityLink = Scene.GetCamLink(SceneClass)
  Scene.SetUsrPosAng(0, cam.camPos - V3D(0, char.oActCtrl.oActClass.CenterMoveY, 0), cam.camAng.y - 180, -cam.camAng.x, "Scene.LauchFromFP")
  l:Del()
  cam:Del()
  Scene.FP_SceneName = SceneClass
end

function Scene.InterpolCam(interp)
  local camint = Game.CreateEntity("InterpolusCamera", "CamPath")
  camint.OnEnd = "Scene.PlayFP"
  camint.nWayPoint = 2
  camint[0].TgtCam = Game.GetCam(0)
  camint[0].TgtCam = ""
  camint[0].Time = interp
  camint[0].FadeOut = 1
  camint[0].FadeIn = 1
  camint[1].TgtCam = Game.GetCam(0)
  camint.OnEnd = "Scene.SetUsrPosAngEndInterpolated"
  return camint
end

function Scene.SetInterpolCam(camint)
  camint.uData.EntityName = EntityName
  Game.SetCam(0, camint.Name)
  Scene.SkipRenderDo()
end

function Scene.LauchFromFP(EntityName, interpol)
  interpol = defparam(interpol, true)
  local camint
  if interpol then
    camint = Scene.InterpolCam(0.25)
  end
  local char = Game.GetEntity(EntityName)
  char.IgnoreUsrControl = 0
  char.MoveTime = 0
  Scene.FPEndOfSceneCallback = Scene.EndOfSceneCallback
  Scene.EndOfSceneCallback = Scene.EndOfFpScene
  local ret = Scene.Play(Scene.FP_SceneName)
  Scene.FP_SceneName = nil
  if interpol and ret then
    Scene.SetInterpolCam(camint)
  end
end

function Scene.SetUsrPosAngEndInterpolated(camintName)
  local camint = Game.GetEntity(camintName)
  Game.SetCam(0, camint[1].TgtCam)
  camint:Del()
end

function Scene.EndOfFpScene(usr)
  local SceneClass = string.sub(Scene.LastSceneName, 10)
  if Scene.fpEntity then
    Scene.fpEntity.ForceAction = usr.oWeapCtrl.oActual.oType.FPAnmSet .. "Show"
  end
  Scene.fpEntity = nil
  local SCls = Scene.Scenes[SceneClass]
  if SCls == nil or SCls.FPPos == nil then
    local cam = Game.GetEntity(Game.GetCam(0))
    usr.Pos = cam.camPos - V3D(0, usr.oActCtrl.oActClass.CenterMoveY, 0)
    usr.Ang = V3D(0, cam.camAng.y + 180, 0)
    Game.AddScheduledFunc(Game.GetTime() + 1.5, "Scene", "Scene.PrintDebugNyapa", SceneClass)
  else
    usr.Pos = SCls.FPPos
    usr.Ang = SCls.FPAng
  end
  if Scene.FPEndOfSceneCallback ~= nil then
    local func = Scene.FPEndOfSceneCallback
    Scene.FPEndOfSceneCallback = nil
    func(usr)
  elseif not Scene.Aborted then
    local camint = Scene.InterpolCam(0.25)
    Scene.SetInterpolCam(camint)
  end
end

function Scene.PrintDebugNyapa(SceneClass)
  local usr = Game.UsrEntity(0)
  Game.ConsoleError("Warning at '" .. SceneClass .. "' :\n")
  Game.ConsoleError("\t\t[\"FPPos\"]       = V3D" .. usr.Pos:str3() .. ",\n")
  Game.ConsoleError("\t\t[\"FPAng\"]       = V3D" .. usr.Ang:str3() .. [[
,


]])
end

function Scene.CamInterpolation()
  local camint = Scene.InterpolCam(0.25)
  Scene.SetInterpolCam(camint)
end

function Scene.AICharEnd(EntityName, EventName, Time)
  local char = Game.GetEntity(EntityName)
  char.ForceAction = EventName
  char.oAI.bEnable = true
  print("recu\241ao")
end

function Scene.MakeListOfObjects()
  Scene.objs = {
    Game.GetEntity(Scene.SceneName)
  }
  local SceneClass = string.sub(Scene.SceneName, 10)
  local actorlist = Scene.Actors[SceneClass]
  for actr in pairs(actorlist) do
    Scene.objs[#Scene.objs + 1] = Game.GetEntity(actorlist[actr][2])
  end
end

function Scene.SetStartPressGame(frame, SuccessFunc, FailFunc, IdleLoopPortion, IdleLoopSpeed)
  local Time
  SuccessFunc = defparam(SuccessFunc, "")
  FailFunc = defparam(FailFunc, "")
  IdleLoopPortion = defparam(IdleLoopPortion, "")
  IdleLoopSpeed = defparam(IdleLoopSpeed, "")
  Time = Act.GetAct("TimeOfFrame" .. frame)
  Act.SetAct("AddEventAtTime", Time)
  Act.SetAct("EventName", SuccessFunc .. "|" .. FailFunc .. "|" .. IdleLoopPortion .. "|" .. IdleLoopSpeed)
  Act.SetAct("EventFunc", "Scene.StartPressGame")
  Scene.SuccessFuncCall = nil
  Scene.FailFuncCall = nil
end

function Scene.StartPressGame(EntityName, EventName, Time)
  MapScenes.playing = true
  Scene.MakeListOfObjects()
  local TotTime = Scene.objs[1].oActCtrl.oAction.AnmTotalTime
  local AnimTime = Scene.objs[1].oActCtrl.AnimTime
  Game.Set("PressGameType", 1)
  Game.Set("PressSpeedGameType", MiniGames.GetRandomButton())
  Game.Set("PressSpeedGamePos", 1 - AnimTime / TotTime)
  Game.Set("PressSpeedAcceleration", 0.5)
  Game.Set("PressSpeedGameTimeUp", TotTime)
  Game.Set("PressSpeedGameTimeDown", TotTime)
  Game.Set("PressSpeedFrecuency", 0.1)
  Game.Set("PressSpeedGameShowBar", 0)
  Game.Set("PressSpeedGameNoise", 0.666)
  Game.Set("PressSpeedGameBaseNoise", 0)
  Game.Set("PressSpeedCancelable", false)
  Game.Set("PressSpeedGameCallback", "Scene.SpeedGameActualize")
  for i = 1, #Scene.objs do
    Scene.objs[i].oActCtrl:Pause()
  end
  local a = Game.Split(EventName, "|")
  if a[1] ~= "" then
    local b = Game.Split(a[1], ".")
    Scene.SuccessFuncCall = _G[b[1]][b[2]]
  else
    Scene.SuccessFuncCall = nil
  end
  if a[2] ~= "" then
    local b = Game.Split(a[2], ".")
    Scene.FailFuncCall = _G[b[1]][b[2]]
  else
    Scene.FailFuncCall = nil
  end
  if a[3] ~= "" then
    Scene.IdleLoopPortion = a[3] + 0
  else
    Scene.IdleLoopPortion = 0.05
  end
  if a[4] ~= "" then
    Scene.IdleLoopSpeed = a[4] + 0
  else
    Scene.IdleLoopSpeed = 2
  end
end

function Scene.SpeedGameActualize(iPos)
  for i = 1, #Scene.objs do
    Scene.objs[i].oActCtrl:ResetPrimaryAction()
    Scene.objs[i].oActCtrl:IncActionTime(0, Scene.objs[i].oActCtrl.oAction.AnmTotalTime * (1 - iPos))
    local animTotalTime = Scene.objs[i].oActCtrl.oAction.AnmTotalTime
    if not Scene.FailFuncCall and 1 - iPos < Scene.IdleLoopPortion then
      local sinZeroOne = 1 + math.sin(Game.GetTime() * Scene.IdleLoopSpeed)
      local increment = sinZeroOne * (Scene.IdleLoopPortion - (1 - iPos)) * animTotalTime
      Game.Log("increment = " .. increment .. "\n", 1)
      Scene.objs[i].oActCtrl:IncActionTime(0, increment)
    end
  end
  if iPos <= 0 and Scene.SuccessFuncCall then
    Scene.SuccessFuncCall()
  elseif 1 <= iPos and Scene.FailFuncCall then
    Scene.FailFuncCall()
  end
end

function Scene.SpeedGameEnd()
  Game.Set("PressSpeedGameCallback", "")
  Scene.EndOfScene(Scene.objs[1].Name, "EndOfScene", 0)
end

function Scene.OnMoveScene(Pos, Ang)
  local scene = Game.GetEntity(Scene.SceneName)
  Scene.DiffPos = Pos
  Scene.DiffAng = Ang
  if scene.isNode_DC_Actors == 1 then
    local lpos = scene.NodeLocalPos_DC_Actors
    Scene.DiffPos = Pos + V3D(lpos.x, lpos.z, -lpos.y):rot(Ang)
  end
  scene.JustPos = Pos
  scene.JustAng = Ang
end

function Scene.OnActorSlotMove(name, timediff)
  if Scene.DiffPos and Scene.DiffAng then
    local scene = Game.GetEntity(Scene.SceneName)
    local o = Game.GetEntity(name)
    o.JustPos = Scene.DiffPos
    o.JustAng = Scene.DiffAng
  end
end

function Scene.SetScenePos(Pos, Ang)
  Scene.OnMoveScene(Pos, Ang)
  Scene.MakeListOfObjects()
  for i = 1, #Scene.objs do
    if Scene.SceneName ~= Scene.objs[i].Name then
      Scene.OnActorSlotMove(Scene.objs[i].Name)
    end
  end
end

function Scene.SetOnSlotScene(OnSlotFunc)
  Scene.MakeListOfObjects()
  addSF(-1, "", "Scene.SetOnSlotSceneNOW", OnSlotFunc)
end

function Scene.SetOnSlotSceneNOW(OnSlotFunc)
  Scene.DiffPos = nil
  Scene.DiffAng = nil
  Scene.MakeListOfObjects()
  for i = 1, #Scene.objs do
    local a = Scene.objs[i]
    local cls = a.oActCtrl.oActClass
    cls.VisibleSlotFPS = 60
    cls.UserSlotFPS = 60
    cls.HiddenNearSlotFPS = 60
    cls.HiddenFarSlotFPS = 60
    cls.RCVisibleSlotFPS = 60
    cls.RCHiddenSlotFPS = 60
    a.bIntensiveProcess = true
    a.bdefIntensiveProcess = true
  end
  Scene.objs[1].OnObjSlot = OnSlotFunc
  for i = 2, #Scene.objs do
    local a = Scene.objs[i]
    a.OnObjSlot = "Scene.OnActorSlotMove"
    a.OffModPos = V3D(0, 0, 0)
    a.DeltaOffMul = 0
    a.OffMul = 0
    a.UseLinkAng = 0
    a.UseLinkPos = 0
    a.UseAbsPos = 1
    a.LinkModel = ","
    a:Sincronize(Scene.objs[1].Name)
    a:SetFirstProcess()
  end
end

function Scene.LoadLogicEvents(scene)
  local path = Game.GetLevelPath() .. "/Scripts/SceneLogicEvents/" .. scene .. ".lua"
  Scene.ValidPreloadLibrary(path, "SLE" .. scene)
  if Scene.Actors[scene] then
    for i = 1, table.getn(Scene.Actors[scene]) do
      local actor = Scene.Actors[scene][i][2]
      if actor then
        local path = Game.GetLevelPath() .. "/Scripts/SceneLogicEvents/" .. actor .. ".lua"
        Scene.ValidPreloadLibrary(path, "SLE" .. actor)
      end
    end
  end
  local path = Game.GetLevelPath() .. "/Scripts/MissionRumbleEvents/" .. scene .. "/RumbleEvents" .. scene .. ".lua"
  if Scene.ValidPreloadLibrary(path, "RumbleEvents" .. scene) then
  end
  local path = Game.GetLevelPath() .. "/Scripts/MissionFadeEvents/" .. scene .. "/FadeEvents" .. scene .. ".lua"
  if Scene.ValidPreloadLibrary(path, "FadeEvents" .. scene) then
  end
  local path = Game.GetLevelPath() .. "/Scripts/MissionSceneCallbackEvents/" .. scene .. "/SceneCallbackEvents" .. scene .. ".lua"
  if Scene.ValidPreloadLibrary(path, "SceneCallbackEvents" .. scene) then
  end
  local pathFarPlane = Game.GetLevelPath() .. "/Scripts/MissionSceneFarPlaneEvents/FarPlaneEvents" .. scene .. ".lua"
  if Scene.ValidPreloadLibrary(pathFarPlane, "FarPlaneEvents" .. scene) then
  end
end

function Scene.FadeInEvent(EntityName, EventName, Time)
  local a = Game.Split(EventName, ",")
  local color1X = tonumber(a[1])
  local color1Y = tonumber(a[2])
  local color1Z = tonumber(a[3])
  local color1W = tonumber(a[4])
  local fadeTime = tonumber(a[5])
  local color1 = Color(color1X, color1Y, color1Z, color1W)
  Scorer.Fade(0, color1, Color(0, 0, 0, 0), fadeTime)
end

function Scene.FadeOutEvent(EntityName, EventName, Time)
  local a = Game.Split(EventName, ",")
  local color1X = tonumber(a[1])
  local color1Y = tonumber(a[2])
  local color1Z = tonumber(a[3])
  local color1W = tonumber(a[4])
  local fadeTime = tonumber(a[5])
  local color1 = Color(color1X, color1Y, color1Z, color1W)
  Scorer.Fade(0, Color(0, 0, 0, 0), color1, fadeTime)
end

function Scene.ExecCallback(EntityName, EventName, Time)
  local a = Game.Split(EventName, ",")
  local sceneCallback = a[1]
  if sceneCallback ~= nil then
    callBackSplitted = Game.Split(sceneCallback, ".")
    obj = callBackSplitted[1]
    fcn = callBackSplitted[2]
    if fcn ~= nil then
      CallStrFunc(EventName)
    else
      CallStrFunc("MapCallbacks." .. obj)
    end
  end
end

function Scene.TransitionScorerSwitch(entity, track, frame, lastSegment, newSegment)
  local controladorDeEscena
  local modoEdicion = false
  if SceneEditor == nil then
    if Scene.SceneController then
      controladorDeEscena = Scene.SceneController
    end
  elseif SceneEditor ~= nil and SceneEditor.sceneController ~= nil then
    controladorDeEscena = SceneEditor.sceneController
    modoEdicion = true
  else
    controladorDeEscena = Scene.SceneController
  end
  if newSegment and not lastSegment then
    local trackParams = Game.Split(track.Info, ",")
    local rangeParams = Game.Split(newSegment.Info, ",")
    local fadeType = defparam(rangeParams[1], "None")
    local fadeTime = defparam(tonumber(rangeParams[2]), 0)
    local panStart_min_X = defparam(tonumber(rangeParams[3]), 0)
    local panStart_min_Y = defparam(tonumber(rangeParams[4]), 0)
    local panStart_max_X = defparam(tonumber(rangeParams[5]), 0)
    local panStart_max_Y = defparam(tonumber(rangeParams[6]), 0)
    local panEnd_min_X = defparam(tonumber(rangeParams[7]), 0)
    local panEnd_min_Y = defparam(tonumber(rangeParams[8]), 0)
    local panEnd_max_X = defparam(tonumber(rangeParams[9]), 0)
    local panEnd_max_Y = defparam(tonumber(rangeParams[10]), 0)
    local picName = defparam(rangeParams[11], "")
    local picSize = defparam(tonumber(rangeParams[12]), 1024)
    Game.Set("HUDFullScreenPicPath", picName)
    local Action = entity.oActCtrl.oActClass:GetAct("Play")
    local frameIni = newSegment.Init
    local frameEnd = newSegment.End
    local duracionSegmento = (frameEnd - frameIni) / Action.AnmFPS
    if modoEdicion == true then
      if controladorDeEscena:isPaused() then
        modoEdicion = true
      else
        modoEdicion = false
      end
    end
    if modoEdicion == false then
      controladorDeEscena:ImageAppear(fadeType, fadeTime, duracionSegmento, panStart_min_X, panStart_min_Y, panStart_max_X, panStart_max_Y, panEnd_min_X, panEnd_min_Y, panEnd_max_X, panEnd_max_Y, picSize)
    else
      controladorDeEscena:ShowImage()
      Scene.ShowTransitionEditor(panStart_min_X, panStart_min_Y, panStart_max_X, panStart_max_Y, panEnd_min_X, panEnd_min_Y, panEnd_max_X, panEnd_max_Y)
    end
  end
  if newSegment and lastSegment then
    local trackParams = Game.Split(track.Info, ",")
    local rangeParams = Game.Split(newSegment.Info, ",")
    local fadeType = defparam(rangeParams[1], "None")
    local fadeTime = defparam(tonumber(rangeParams[2]), 0)
    local panStart_min_X = defparam(tonumber(rangeParams[3]), 0)
    local panStart_min_Y = defparam(tonumber(rangeParams[4]), 0)
    local panStart_max_X = defparam(tonumber(rangeParams[5]), 0)
    local panStart_max_Y = defparam(tonumber(rangeParams[6]), 0)
    local panEnd_min_X = defparam(tonumber(rangeParams[7]), 0)
    local panEnd_min_Y = defparam(tonumber(rangeParams[8]), 0)
    local panEnd_max_X = defparam(tonumber(rangeParams[9]), 0)
    local panEnd_max_Y = defparam(tonumber(rangeParams[10]), 0)
    local picName = defparam(rangeParams[11], "")
    local picSize = defparam(tonumber(rangeParams[12]), 1024)
    local oldPic = Game.Get("HUDFullScreenPicPath")
    Game.Set("HUDFullScreenAuxPicPath", oldPic)
    Game.Set("HUDFullScreenPicPath", picName)
    local Action = entity.oActCtrl.oActClass:GetAct("Play")
    local frameIni = newSegment.Init
    local frameEnd = newSegment.End
    local duracionSegmento = (frameEnd - frameIni) / Action.AnmFPS
    if modoEdicion == true then
      if controladorDeEscena:isPaused() then
        modoEdicion = true
      else
        modoEdicion = false
      end
    end
    if modoEdicion == false then
      controladorDeEscena:ImageMixAndAppear(fadeType, fadeTime, duracionSegmento, panStart_min_X, panStart_min_Y, panStart_max_X, panStart_max_Y, panEnd_min_X, panEnd_min_Y, panEnd_max_X, panEnd_max_Y, picSize)
    else
      controladorDeEscena:ShowImage()
      Scene.ShowTransitionEditor(panStart_min_X, panStart_min_Y, panStart_max_X, panStart_max_Y, panEnd_min_X, panEnd_min_Y, panEnd_max_X, panEnd_max_Y)
    end
  end
  if not newSegment then
    controladorDeEscena:HideImage()
  end
end

function Scene.SetFarPlane(EntityName, EventName, Time)
  local a = Game.Split(EventName, ",")
  local FarPlane = tonumber(a[1])
  Game.Set("WalkCamFar", FarPlane)
end

function Scene.ShowTransitionEditor(panStart_min_X, panStart_min_Y, panStart_max_X, panStart_max_Y, panEnd_min_X, panEnd_min_Y, panEnd_max_X, panEnd_max_Y)
  if SceneEditor and SceneEditor.sceneController then
    local picWidth = Game.Get("VideoWidth")
    local picHeight = Game.Get("VideoHeight")
    Game.Set("HUDFullScreenPicDebugActive", true)
    SceneEditor.sceneController:DrawEditorMode(panStart_min_X, panStart_min_Y, panStart_max_X, panStart_max_Y, panEnd_min_X, panEnd_min_Y, panEnd_max_X, panEnd_max_Y)
  end
end

function Scene.GameOver()
  Scene.IsPlaying = false
  Team.OnDeath()
end
