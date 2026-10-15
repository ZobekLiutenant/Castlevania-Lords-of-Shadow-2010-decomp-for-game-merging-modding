function Camera.main()
end

if init and init.PreloadMethods then
  function init.PreloadMethods.MapCamera()
    local fileName = Game.GetLevelPath() .. "/Scripts/MapCamera"
    
    local st = Game.GetSingleTable()
    st.SourceFile = fileName .. ".lua"
    st.TargetFile = fileName .. ".lbt"
    if st.bPrecompile then
      Game.PreloadLibrary(st.SourceFile, "MapCamera")
      st:OpenFileOut()
      for i = 1, #MapCamera.Positions do
        MissionUtils.WriteLuaElement(st, MapCamera.Positions[i])
      end
      st:CloseFileOut()
    else
      st:Open()
      while st.NextType ~= "exit" do
        local h = Game.CreateEntity("Camera", "FixCam")
        st:ReadObject(h)
      end
      st:Close()
      Camera.FreeCam = Camera.MakeFreeCam("FreeCam")
      Camera.SetFreeCamPersistence(Camera.FreeCam)
    end
  end
end
Camera.Counter = 1

function Camera.CreateMainCam()
  local cam = Game.GetEntity("MainCam")
  if cam == nil then
    cam = Game.CreateEntity("MainCam", "FCam")
    Game.SetCam(0, cam.Name)
    cam.CamRot = 5
    cam.CamAng = -20
    cam.CamDist = 0
    cam.Fov = 90
    Game.CreateSaveVar(init.LevelName .. ".EntityValue.MainCam.FixedCam", "")
    return cam, true
  else
    return cam, false
  end
end

function Camera.CreateSingleCamera(a)
  local h = Game.CreateEntity("Camera_" .. Camera.Counter, "FixCam")
  Camera.Counter = Camera.Counter + 1
  for j in pairs(a) do
    h[a[j][1]] = a[j][2]
  end
  if Game.Get("ToolMode") == 1 then
    h.uData.NodeIdx = 0
  end
  return h
end

function Camera.CreateCameras()
  if Game.Get("ToolMode") == 1 then
    Camera.ListOfMapCamera = {}
  end
  for i = 1, #MapCamera.Positions do
    local h = Camera.CreateSingleCamera(MapCamera.Positions[i])
    if Camera.ListOfMapCamera ~= nil then
      Camera.ListOfMapCamera[i] = h
    end
  end
  Camera.FreeCam = Camera.MakeFreeCam("FreeCam")
  Camera.SetFreeCamPersistence(Camera.FreeCam)
end

function Camera.LaunchCamera(CamName, Timy, Colbac, forceWalk, Skipable, Invulnerable)
  forceWalk = defparam(forceWalk, 0)
  Skipable = defparam(Skipable, true)
  local c = Game.GetEntity(CamName)
  local time = Game.GetTime()
  local cam = Game.GetEntity(Game.GetCam(0))
  local luser = Game.UsrEntity(0)
  local endtimi
  if luser == nil then
    Game.Log("Warning! Camera.LaunchCamera('" .. CamName .. "') Cannot be launched.\n")
    if Colbac then
      Game.Log("Calling the callback function.\n")
      Colbac()
    end
    return
  end
  Camera.IsCameraLaunched = true
  if forceWalk == 3 then
    luser.IgnoreUsrControl = 1
  end
  if Timy == 0 then
    c.TimeInit = -1
    c.TimeEnd = -1
  elseif 0 < Timy then
    endtimi = time + Timy
    c.TimeInit = time
    c.TimeEnd = endtimi
  else
    endtimi = time - Timy
    c.TimeInit = endtimi
    c.TimeEnd = time
  end
  local prevListenerValue = Game.Get("ListenerAllwaysInCam")
  Game.Set("LockFixedCameraTrigger", 1)
  if forceWalk then
    Game.Set("ListenerAllwaysInCam", 1)
    Game.Set("DoingStopChat", forceWalk)
    Game.Log("DoingStopChat = " .. forceWalk .. "\n")
  end
  local lastInvulnerable = luser.Invulnerable
  if Invulnerable then
    luser.Invulnerable = 1
  end
  Camera.ParamsLaunchCamera = {
    cam.FixedCam,
    luser.Name,
    Colbac,
    prevListenerValue,
    forceWalk,
    lastInvulnerable
  }
  Game.AddScheduledFunc(endtimi, "StopCamLaunched", "Camera.StopCamLaunched", "End")
  cam.FixedCam = CamName
  track_tag("Camera")
  if Camera.LastEscapeEvent == nil and Skipable then
    Camera.LastEscapeEvent = Game.Get("EscapeEvent")
    Game.Set("EscapeEvent", "Camera.CamPause")
  end
end

function Camera.SetWalkAtCamera(time, Walk, Strafe)
  Game.AddScheduledFunc(Game.GetTime() + time, "SetWalkAtCamera", "Camera._SetWalkAtCamera", Walk, Strafe)
end

function Camera._SetWalkAtCamera(Walk, Strafe)
  player.owc.Walk = Walk
  player.owc.Str = Strafe
end

function Camera.CamPause()
  if Game.Get("DrawNextFrame") >= 1 then
    Game.GetMenu():NeedRender()
    Game.Set("AfterDrawCallback", "Camera.CamPauseMenu")
  else
    Game.Set("AfterDrawCallback", "Camera.CamPause")
  end
end

function Camera.CamPauseMenu()
  Menu.InitMenuSys()
  local DrawBackMenu = Menu.DrawBackMenu
  Menu.DrawBackMenu = Menu.DrawBackMenuFirstScreen
  Menu.YesNoMenu(Game.GetLangStr("Menu_Skip_Scene_Question"), "Camera.AbortCamLaunched", "Menu.BackToGame", Game.GetLangStr("Menu_Warning_Skip_Scene"), true, nil, nil, true)
  Menu.DrawBackMenu = DrawBackMenu
  Menu.IsComingBack = false
end

function Camera.AbortCamLaunched(id, control)
  Menu.FakeTransition = true
  Menu.BackToGame(0, "")
  Game.AddScheduledFunc(0, "StopCamLaunched", "Camera.StopCamLaunched", "Abort")
end

function Camera.StopCamLaunched(Status)
  local LastCamName, LUser, Colbac, prevListenerValue, forceWalk, lastInvulnerable = unpack(Camera.ParamsLaunchCamera)
  Camera.IsCameraLaunched = nil
  if Camera.LastEscapeEvent then
    Game.Set("EscapeEvent", Camera.LastEscapeEvent)
    Camera.LastEscapeEvent = nil
    Game.DeleteScheduledFuncs("StopCamLaunched")
    Game.DeleteScheduledFuncs("SetWalkAtCamera")
  end
  local cam = Game.GetEntity(Game.GetCam(0))
  local luser = Game.GetEntity(LUser)
  if Status == "End" then
    cam.FixedCam = LastCamName
  end
  Game.Set("LockFixedCameraTrigger", 0)
  if forceWalk then
    Game.Set("DoingStopChat", 0)
    Game.Log("DoingStopChat = 0\n")
    luser.IgnoreUsrControl = 0
  end
  Game.Set("ListenerAllwaysInCam", 0)
  if lastInvulnerable then
    luser.Invulnerable = lastInvulnerable
  end
  if Colbac then
    Game.AddScheduledFunc(Game.GetTime(), "StopCamera", Colbac, LastCamName)
  end
end

Camera.FreeCamDefaultData = {
  TargetName = "",
  NodeName = "",
  bAutoChooseTarget = false,
  NearDistance = 500,
  FarDistance = 1000,
  MaxAngleSin = 0.5,
  MinAngleSin = 0.25,
  FovFacing = 0.25,
  MaxFacingSpeed = 2,
  Fov = 80,
  DispDistance = 250,
  SoftSwitch = -1,
  SwitchSpeed = 1,
  DeltaView = V3D(0, 0, 0),
  bFixedDelta = false,
  bFixedDeltaJump = false,
  YLimit = 150,
  Priority = 0,
  PulseFactor = 1,
  SafeHeight = 150,
  Tolerance = V3D(360, 90, 0),
  SectorPreset = "FreeCam"
}

function Camera.ResetFreeCam(FreeCam)
  if FreeCam == nil then
    FreeCam = Camera.FreeCam
  end
  for value, data in pairs(Camera.FreeCamDefaultData) do
    FreeCam[value] = data
  end
  return FreeCam
end

function Camera.SetFreeCamPersistence(FreeCam)
  if FreeCam == nil then
    FreeCam = Camera.FreeCam
  end
  local vnam = init.LevelName .. ".EntityValue." .. FreeCam.Name .. "."
  for value in pairs(Camera.FreeCamDefaultData) do
    if Game.CreateSaveVar(vnam .. value, "") == 1 then
      Game.GetSaveVarObj(vnam .. value).Value = FreeCam[value]
    end
  end
  return FreeCam
end

function Camera.MakeFreeCam(Name)
  local FreeCam = Game.GetEntity(Name)
  if FreeCam == nil then
    FreeCam = Game.CreateEntity(Name, "FreeCam")
  end
  Camera.ResetFreeCam(FreeCam)
  return FreeCam
end

function Camera.SetCameraTrigger(TriggerName, CameraName)
  local trig = Game.GetEntity(TriggerName)
  local cam = Game.GetEntity(Game.GetCam(0))
  if trig == nil then
    Game.ConsoleError("ERROR in Camera.SetCameraTrigger(\"" .. TriggerName .. "\",\"" .. CameraName .. [[
")
Trigger not found.
]])
  end
  if trig.FixedCam == cam.FixedCam then
    cam.FixedCam = CameraName
  end
  trig.FixedCam = CameraName
end

function Camera.DoInterpTgt(camera, params)
  MissionUtils.DoInterpTgt(camera, params)
end

function Camera.SetFreeCameraView(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local FreeCam = ent.oActCtrl.oActClass.uData.FreeCam
  ent.uData.ActualFreeCam = EventName
  FreeCam.uData.ActualFreeCam = EventName
  if FreeCam == nil then
    FreeCam = Camera.FreeCam
  end
  Camera.DoInterpTgt(FreeCam, FreeCam.uData[EventName])
end

function Camera.SetFreeCameraViewNow(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local FreeCam = ent.oActCtrl.oActClass.uData.FreeCam
  ent.uData.ActualFreeCam = EventName
  if FreeCam == nil then
    FreeCam = Camera.FreeCam
  end
  FreeCam.uData.ActualFreeCam = EventName
  local Params = FreeCam.uData[EventName]
  for i in pairs(Params) do
    if type(i) == "string" then
      FreeCam[i] = Params[i]
    end
  end
end

function Camera.SetDefaultCameras(ac, list)
  local fc = Camera.MakeFreeCam(ac.Name .. "FreeCam")
  ac.uData.FreeCam = fc
  for i = 1, #list do
    fc.uData[list[i]] = {
      [1] = 1,
      [2] = "s",
      NodeName = "",
      NearDistance = 400,
      FarDistance = 500,
      MaxAngleSin = 0.2,
      MinAngleSin = 0.15,
      FovFacing = 0.25,
      MaxFacingSpeed = 2,
      Fov = 80,
      DispDistance = 100,
      DeltaView = V4D(0, 0, 0, 0),
      YLimit = 150,
      PulseFactor = 0.5
    }
  end
  return fc
end

function Camera.AddFixedCamProp(ac, Prop)
  local prp = {}
  ac.uData["Camera_" .. Prop] = prp
  prp[1] = 0.5
  prp[2] = "s"
  prp.Fov = 60
  prp.DispDistance = 0
  prp.YLimit = 0
  prp.PulseFactor = 4
  return prp
end

function Camera.SetFixedCameraView(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local Prop = ent.oActCtrl.oActClass.uData["Camera_" .. EventName]
  local fCam = Game.GetEntity(Game.GetCam(0))
  if not (fCam ~= nil and fCam:IsType("FCam")) or fCam.oFixedCam == nil then
    return
  end
  local cam = fCam.oFixedCam
  if cam.uData.modif and cam.uData.modif.bValidBaseType then
    return
  end
  ent.uData.LastFixCam = cam
  cam.uData.LastValues = {}
  for i in pairs(Prop) do
    if type(i) == "string" then
      cam.uData.LastValues[i] = cam[i]
    else
      cam.uData.LastValues[i] = Prop[i]
    end
  end
  Camera.DoInterpTgt(cam, Prop)
end

function Camera.BackFixedCameraView(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  Camera.DoInterpTgt(ent.uData.LastFixCam, ent.uData.LastFixCam.uData.LastValues)
  ent.uData.LastFixCam.uData.LastValues = nil
  ent.uData.LastFixCam = nil
end

Camera.NumValidCharTests = 4

function Camera.GetValidCharPos(ent)
  local entPos = ent.Pos
  local NewentPos
  local doit = true
  local counter = 1
  local tests = {
    {
      V3D(-ent.Radius * 0.4, 0, -ent.Radius * 0.4)
    },
    {
      V3D(-ent.Radius * 0.6, 0, 0)
    },
    {
      V3D(-ent.Radius * 0.4, 0, ent.Radius * 0.4)
    },
    {
      V3D(0, 0, ent.Radius * 0.6)
    },
    {
      V3D(ent.Radius * 0.4, 0, ent.Radius * 0.4)
    },
    {
      V3D(ent.Radius * 0.6, 0, 0)
    },
    {
      V3D(ent.Radius * 0.4, 0, -ent.Radius * 0.4)
    },
    {
      V3D(0, 0, -ent.Radius * 0.6)
    }
  }
  while doit and counter <= Camera.NumValidCharTests do
    doit = false
    for i = 1, #tests do
      local coll, floor, dincoll
      coll, floor, dincoll = ent:TestCharPos(entPos + tests[i][1], false)
      tests[i] = {
        tests[i][1],
        coll,
        floor,
        dincoll
      }
      if not coll then
        doit = true
      end
    end
    if not doit then
      break
    end
    doit = false
    for i = 1, #tests do
      local k0 = (i + 2) % 8 + 1
      local k1 = (i + 3) % 8 + 1
      local k2 = (i + 4) % 8 + 1
      if not tests[i][2] and tests[k0][2] and tests[k1][2] and tests[k2][2] then
        entPos = entPos + tests[k1][1]
        NewentPos = entPos
        doit = true
        break
      end
    end
    if not doit then
      for i = 1, #tests do
        if tests[i][2] then
          entPos = entPos + tests[i][1]
          doit = true
          break
        end
      end
    end
    counter = counter + 1
  end
  return NewentPos
end

Game.Set("CameraFixFocus", 0)
Game.Set("CameraFixFocusNode", "Bip Gabriel")
Game.Set("CameraFixFocusNodeB", "Bip Gabriel")
Game.Set("CameraFixFocusRoll", 0)
Game.Set("CameraFixAtoBFactor", 0)

function Camera.ActionSetFocus(EntityName, EventName, Time)
  local a = Game.Split(EventName, ",")
  local gvar = Game.GVar("CameraFixFocus")
  local modif = Game.ValueModifier():New()
  if Camera.FocusModif and Camera.FocusModif.bValidBaseType then
    Camera.FocusModif.bDelete = true
  end
  Camera.FocusModif = modif
  modif.FinalTime = tonumber(a[1])
  modif.FactorStack = a[2]
  local CameraFixFocusDist = tonumber(a[3])
  local CameraFixFocusFov = tonumber(a[4])
  local CameraFixFocusNode = "Bip Gabriel"
  local CameraFixFocusPulse = 0
  local CameraFixFocusRoll = 0
  if a[7] then
    CameraFixFocusPulse = tonumber(a[7])
  end
  local ent = Game.GetEntity(EntityName)
  local NewentPos, XtraPar
  local NOCONTROL = a[5] == "NOCONTROL"
  if NOCONTROL then
    player.IgnoreUsrControl = 1
    Camera.FocusIgnoreUsrControl = true
    player.Intangible = true
  end
  if not NOCONTROL and a[5] ~= "NOTHING" and a[5] ~= "JUSTANG" then
    NewentPos = Camera.GetValidCharPos(ent)
  end
  if NewentPos then
    XtraPar = 1
  else
    XtraPar = 0
  end
  local SwitchGVar = gvar.Value >= 0.01
  if SwitchGVar then
    XtraPar = XtraPar + 5
  end
  if not NOCONTROL and a[5] ~= "NO" and a[5] ~= "NOTHING" then
    local cam = Game.GetEntity(Game.GetCam(0))
    local ent = Game.GetEntity(EntityName)
    local RotDiff = (ent.Pos - cam.Pos):getrot().y + a[6]
    XtraPar = XtraPar + 2
    modif.oValues.n = XtraPar
    local finalAng = V3D(0, ent.Ang.y + Game.NormAng(RotDiff - ent.Ang.y), 0)
    local cancelReposition = false
    if a[5] == "YESBUTTEST" then
      local grabVec
      if ent == player then
        grabVec = (ent.NodePosHierarchy_DC_Grab - ent.Pos):rot(-ent.Ang)
      else
        grabVec = (ent.NodePosHierarchy_DC_Gabriel - ent.Pos):rot(-ent.Ang)
      end
      local finalPos = grabVec:rot(finalAng) + ent.Pos
      local safePos = Game.SafeSlide(ent.Pos, finalPos, ent.oActCtrl.oActClass.Radius, ent.WorldCollisionMask + ent.WallCollisionMask)
      if (safePos - finalPos):mod() > 20 then
        cancelReposition = true
      end
    end
    if not cancelReposition then
      modif.oValues[2]:SetValue(ent, "Ang")
      modif.oValues[2].Final = finalAng
    end
  else
    XtraPar = XtraPar + 1
    modif.oValues.n = XtraPar
  end
  modif.oValues[1]:SetValue(gvar, "Value")
  modif.oValues[1].Final = 1
  if NewentPos then
    modif.oValues[modif.oValues.n]:SetValue(ent, "Pos")
    modif.oValues[modif.oValues.n].Final = NewentPos
  end
  if a[8] and a[8] ~= "" then
    CameraFixFocusNode = "ENTITY=" .. EntityName .. "#" .. a[8]
  end
  if a[9] then
    CameraFixFocusRoll = tonumber(a[9])
  end
  if SwitchGVar then
    local v
    v = modif.oValues[XtraPar - 0]
    v:SetValue(Game.GVar("CameraFixFocusDist"), "Value")
    v.Final = CameraFixFocusDist
    v = modif.oValues[XtraPar - 1]
    v:SetValue(Game.GVar("CameraFixFocusFov"), "Value")
    v.Final = CameraFixFocusFov
    v = modif.oValues[XtraPar - 2]
    v:SetValue(Game.GVar("CameraFixFocusPulse"), "Value")
    v.Final = CameraFixFocusPulse
    v = modif.oValues[XtraPar - 3]
    v:SetValue(Game.GVar("CameraFixFocusRoll"), "Value")
    v.Final = CameraFixFocusRoll
    v = modif.oValues[XtraPar - 4]
    v:SetValue(Game.GVar("CameraFixAtoBFactor"), "Value")
    if Game.Get("CameraFixAtoBFactor") < 0.5 then
      Game.Set("CameraFixFocusNodeB", CameraFixFocusNode)
      v.Final = 1
    else
      Game.Set("CameraFixFocusNode", CameraFixFocusNode)
      v.Final = 0
    end
  else
    Game.Set("CameraFixFocusDist", CameraFixFocusDist)
    Game.Set("CameraFixFocusFov", CameraFixFocusFov)
    Game.Set("CameraFixFocusNode", CameraFixFocusNode)
    Game.Set("CameraFixFocusNodeB", CameraFixFocusNode)
    Game.Set("CameraFixFocusPulse", CameraFixFocusPulse)
    Game.Set("CameraFixFocusRoll", CameraFixFocusRoll)
    Game.Set("CameraFixAtoBFactor", 0)
  end
end

function Camera.ActionLoseFocus(EntityName, EventName, Time)
  local a = Game.Split(EventName, ",")
  local gvar = Game.GVar("CameraFixFocus")
  local modif = Game.ValueModifier():New()
  if Camera.FocusModif and Camera.FocusModif.bValidBaseType then
    Camera.FocusModif.bDelete = true
  end
  Camera.FocusModif = modif
  modif.FinalTime = 0 + a[1]
  modif.FactorStack = a[2]
  modif.oValues.n = 1
  modif.oValues[1]:SetValue(gvar, "Value")
  modif.oValues[1].Final = 0
  if Camera.FocusIgnoreUsrControl then
    player.IgnoreUsrControl = 0
    Camera.FocusIgnoreUsrControl = false
    player.Intangible = false
  end
end

function Camera.SwitchFreeCamera(EntityName)
  if Game.Get("ToolMode") ~= 0 then
    EditorIni.SwitchFreeCamera()
  elseif Game.Get("RetailType") == -1 then
    QuickConsole.free()
  end
end

function Camera.MaxCameraSwitch(entity, track, frame, lastSegment, newSegment)
  if newSegment and not lastSegment then
    Camera.LastEntityOn = entity.Name
    local params = Game.Split(track.Info, ",")
    local fadeInTime = defparam(tonumber(params[1]), 0)
    local fadeOutTime = defparam(tonumber(params[2]), 0)
    local nearPlane = defparam(tonumber(params[3]), 0)
    Game.GetEntity(Game.GetCam(0)):LinkToEntityCamera(entity.Name, fadeInTime, fadeOutTime, nearPlane)
    if nil == Camera.LastCameraListenerValue then
      Camera.LastCameraListenerValue = Game.Get("ListenerAllwaysInCam")
      Game.Set("ListenerAllwaysInCam", 1)
    end
  end
  if not newSegment and Camera.LastEntityOn == entity.Name then
    Game.GetEntity(Game.GetCam(0)):UnlinkEntityCamera()
    if Camera.LastCameraListenerValue then
      Game.Set("ListenerAllwaysInCam", Camera.LastCameraListenerValue)
      Camera.LastCameraListenerValue = nil
    end
  end
end

function Camera.CancelMaxCamera()
  Game.GetEntity(Game.GetCam(0)):UnlinkEntityCamera()
  if Camera.LastCameraListenerValue then
    Game.Set("ListenerAllwaysInCam", Camera.LastCameraListenerValue)
    Camera.LastCameraListenerValue = nil
  end
end

function Camera.ForceMainCamTempParams(pos, rot, fov, time, fadeIn, fadeOut)
  local mainCam = Game.GetEntity("MainCam")
  if mainCam then
    mainCam:ForceCameraParams(pos.x, pos.y, pos.z, rot.x, rot.y, rot.z, fov, time, fadeIn, fadeOut)
  end
end

function Camera.CancelMainTempParams()
  local mainCam = Game.GetEntity("MainCam")
  if mainCam then
    mainCam:CancelForcedCameraParams()
  end
end

function Camera.GetMainCamPos()
  return Game.GetEntity("MainCam").Pos
end

function Camera.GetMainCamAng()
  return Game.GetEntity("MainCam").Ang
end
