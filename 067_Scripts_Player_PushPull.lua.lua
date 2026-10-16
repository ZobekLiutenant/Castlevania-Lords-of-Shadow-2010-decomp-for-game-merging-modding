PushPull.NodeName = "DC_Anchor_RightHand"
PushPull.GripNodeName = "DC_Belmont_Grip1"
PushPull.GripAction = "KeyPick"
PushPull.GripExtraSufix = "Key"
PushPull.ReturnDegrees = 0
PushPull.ReturnWait = 0
PushPull.PlatformAttach = 0

function PushPull.main()
  PushPull.opening = false
end

function PushPull.AddAnm(ac)
  local act
  local a = {
    {
      "PushRelaxInit",
      5,
      0,
      "PushPull.SlotPush",
      1
    },
    {
      "PushBack",
      5,
      1,
      "PushPull.SlotPush",
      1
    },
    {
      "PushWalkLeft",
      5,
      1,
      "PushPull.SlotPush",
      1
    },
    {
      "PushWalkRight",
      5,
      1,
      "PushPull.SlotPush",
      1
    },
    {
      "PushRelax",
      5,
      1,
      "PushPull.SlotPush",
      1
    },
    {
      "PushWalkLeftInit",
      5,
      0,
      "PushPull.SlotPush",
      1
    },
    {
      "PushWalkRightInit",
      5,
      0,
      "PushPull.SlotPush",
      1
    },
    {
      "PushWalkLeftEnd",
      5,
      0,
      "PushPull.SlotPush",
      1
    },
    {
      "PushWalkRightEnd",
      5,
      0,
      "PushPull.SlotPush",
      1
    },
    {
      "PushBackInit",
      5,
      0,
      "PushPull.SlotPush",
      1
    },
    {
      "PushBackEnd",
      5,
      0,
      "PushPull.SlotPush",
      1
    },
    {
      "PushRelaxEnd",
      5,
      0,
      "",
      1
    },
    {
      "PushSetKeyRight",
      5,
      0,
      "PushPull.SlotPush",
      1
    },
    {
      "PushGetKeyRight",
      5,
      0,
      "",
      1
    },
    {
      "PushSetKeyLeft",
      5,
      0,
      "PushPull.SlotPush",
      1
    },
    {
      "PushGetKeyLeft",
      5,
      0,
      "",
      1
    }
  }
  MakeChar.AddHangPlatformActions(ac, a)
  Hook.SetAsGripAnm(ac, a, false)
  for i = 1, #a do
    act = ac:GetAct(a[i][1])
    act.NodeModifier = 1
    act.RotSpeed = 0
    act.AngleModifierSpeed = 50
    act.IgnoreStraferInTurnAngles = 1
    MakeChar.AddExitTrack(act, "PushPullTrack", PushPull.OnExitTrack)
  end
  ac:GetAct("PushWalkLeftInit").NextToLaunch = "PushWalkLeft"
  ac:GetAct("PushWalkLeftEnd").NextToLaunch = "PushRelax"
  ac:GetAct("PushWalkRightInit").NextToLaunch = "PushWalkRight"
  ac:GetAct("PushWalkRightEnd").NextToLaunch = "PushRelax"
  ac:GetAct("PushBackInit").NextToLaunch = "PushBack"
  ac:GetAct("PushBackEnd").NextToLaunch = "PushRelax"
  act = ac:GetAct("PushSetKeyLeft")
  act.NextToLaunch = "PushRelax"
  act.PriorityLevel = 11
  MakeChar.ActEvent(act, "SET", "PushPull.KeyEvent", 56, 0)
  act = ac:GetAct("PushGetKeyLeft")
  act.NextToLaunch = "KeyWalk"
  act.PriorityLevel = 11
  MakeChar.ActEvent(act, "GET", "PushPull.KeyEvent", 22, 1)
  act = ac:GetAct("PushSetKeyRight")
  act.NextToLaunch = "PushRelax"
  act.PriorityLevel = 11
  MakeChar.ActEvent(act, "SET", "PushPull.KeyEvent", 56, 0)
  act = ac:GetAct("PushGetKeyRight")
  act.NextToLaunch = "KeyWalk"
  act.PriorityLevel = 11
  MakeChar.ActEvent(act, "GET", "PushPull.KeyEvent", 15, 1)
  act = ac:GetAct("PushRelaxInit")
  act.NextToLaunch = "PushRelax"
  act.PriorityLevel = 11
  MakeChar.ActEvent(act, "ChangCam", "PushPull.ChangingCam", 1, 0)
  act = ac:GetAct("PushRelaxEnd")
  act.NextToLaunch = "WhipRelax"
  act.PriorityLevel = 11
  MakeChar.ActEvent(act, "", "PushPull.DeselectEntity", nil, 0)
  PushPull.AddKeyAnims(ac)
  PushPull.AddRollAnm(ac)
end

function PushPull.OnExitTrack(entity)
  PushPull.DeselectEntity(entity.Name)
  if PushPull.OnExitCallback then
    PushPull.OnExitCallback(entity)
  end
end

function PushPull.SlotObject(objName, SlotTime, Ipos)
  local char = player
  local obj = Game.GetEntity(objName)
  local callOnReturn = false
  if char.SelectedEntity ~= objName then
    if obj.uData.IsGripped then
      PushPull.StopTurnFX(obj)
      PushPull.Notify(obj, "OnMechanismReleased")
      PushPull.StopTurnSound(obj)
      obj.uData.IsGripped = false
    end
    if obj.uData.Limits then
      if obj.uData.Limits[3] == 0 then
        obj.OnObjSlot = ""
      else
        local lastAngle = obj.JustAng.y
        obj.JustAng = V3D(0, obj.JustAng.y + SlotTime * obj.uData.Limits[3], 0)
        if obj.JustAng.y > obj.uData.Limits[1] + 4 then
          PushPull.PlayReturnSound(obj)
          PushPull.StartTurnFX(obj)
        end
        if PushPull.ReturnWait == 0 then
          PushPull.ReturnDegrees = obj.JustAng.y
          PushPull.ReturnWait = 1
        end
        if obj.uData.Limits[3] < 0 then
          if obj.JustAng.y < obj.uData.Limits[1] then
            obj.JustAng = V3D(0, obj.uData.Limits[1], 0)
            obj.OnObjSlot = ""
            callOnReturn = true
            PushPull.StopReturnSound(obj)
            PushPull.StopTurnFX(obj)
          end
        elseif obj.JustAng.y > obj.uData.Limits[2] then
          obj.JustAng = V3D(0, obj.uData.Limits[2], 0)
          obj.OnObjSlot = ""
          callOnReturn = true
          PushPull.StopReturnSound(obj)
          PushPull.StopTurnFX(obj)
        end
        PushPull.CheckSpeed(obj, SlotTime)
        PushPull.Notify(obj, "OnMoveMechanism")
        if callOnReturn and obj.JustAng.y ~= lastAngle then
          PushPull.Notify(obj, "OnMechanismLimitReached")
          obj.uData.IsAtLimit = true
        end
      end
    elseif obj.uData.Snap then
      local snp1 = obj.uData.Snap[1]
      local vang = math.floor((obj.JustAng.y + snp1 / 2) / snp1) * snp1
      local spdang = SlotTime * obj.uData.Snap[2]
      local difang = Game.NormAng(vang - obj.JustAng.y)
      PushPull.PlayReturnSound(obj)
      PushPull.StartTurnFX(obj)
      local isAtSnap = false
      if spdang < difang then
        obj.JustAng = V3D(0, obj.JustAng.y + spdang, 0)
      elseif difang < -spdang then
        obj.JustAng = V3D(0, obj.JustAng.y - spdang, 0)
      else
        obj.JustAng = V3D(0, vang, 0)
        obj.OnObjSlot = ""
        isAtSnap = true
        PushPull.StopReturnSound(obj)
        PushPull.StopTurnFX(obj)
      end
      PushPull.CheckSpeed(obj, SlotTime)
      PushPull.Notify(obj, "OnMoveMechanism")
      if isAtSnap and not obj.uData.IsAtSnap then
        PushPull.Notify(obj, "OnMechanismSnap")
        obj.uData.IsAtSnap = true
      end
    end
    if not obj.uData.IsForeverDisabled then
      obj.bArrowCanUse = true
    end
    if obj.uData.OnReleaseFunc then
      obj.uData.OnReleaseFunc()
      obj.uData.OnReleaseFunc = nil
    end
  end
  if obj.uData.CallOnTurn then
    obj.uData.CallOnTurn(obj)
  end
  if callOnReturn and obj.uData.OnReturn then
    obj.uData.OnReturn(obj)
  end
end

PushPull.IgnorePPActs = {
  PushBackEnd = true,
  PushWalkLeftEnd = true,
  PushWalkRightEnd = true,
  PushSetKeyRight = true,
  PushGetKeyRight = true,
  PushSetKeyLeft = true,
  PushGetKeyLeft = true,
  PushRelaxInit = true
}

function PushPull.SlotPush(char, SlotTime, Ipos)
  local obj = char.oSelectedEntity
  local dist, DiffAng
  local VecMove = V3D(char.owc.Str, 0, char.owc.Walk)
  local VecMoveMod = VecMove:mod()
  local MovAng = VecMove:getrot().y + Game.GetEntity(Game.GetCam(0)).camAng.y - 90
  local ActName
  local DeadZone = 15
  local Direction
  if obj == nil then
    char.ForceAction = "WhipRelax"
    char.SelectedEntity = ""
    return
  end
  if obj and obj.uData and obj.uData.Snap then
    if VecMoveMod < 0.7 then
      local snp1 = obj.uData.Snap[1]
      if obj.uData.SnapAng == true then
        MovAng = math.floor((obj.JustAng.y + snp1 * 0.01) / snp1) * snp1
      elseif obj.uData.SnapAng == false then
        MovAng = math.floor((obj.JustAng.y + snp1 * 0.99) / snp1) * snp1
      elseif obj.uData.SnapAng == nil then
        MovAng = math.floor((obj.JustAng.y + snp1 * 0.5) / snp1) * snp1
      end
      VecMoveMod = 1
      DeadZone = obj.uData.LnkPos:mod() * SlotTime * obj.uData.TurnSpeed
    else
      obj.uData.SnapAng = 0 > Game.NormAng(MovAng - obj.JustAng.y)
    end
  end
  if obj.uData.LnkAng == 0 then
    Direction = "Right"
  else
    Direction = "Left"
  end
  MovAng = Game.NormAng(MovAng - obj.JustAng.y)
  local isGrip = char.owc.Grip == 1 and char.owc.PGrip == 0
  if isGrip or char.owc.Jump == 1 and char.owc.PJump == 0 then
    char.isFalling = 0
    char.ExtraSufix = "Whip"
    local lastAction = char.Action
    if isGrip then
      char.ForceAction = "PushRelaxEnd"
      if Zobek then
        Zobek.UnblockGabrielControl()
        local me = Game.GetEntity("Zobek")
        if me then
          me.oAI:LeaveStick()
          me.oAI:FollowMe()
        end
      end
    else
      char.ForceAction = "WhipRelax"
      char.SelectedEntity = ""
    end
    if string.sub(lastAction, 1, 9) ~= "PushRelax" then
      PushPull.Notify(obj, "OnStopPushMechanism")
      PushPull.StopTurnSound(obj)
    end
    return
  end
  if obj.uData.LnkAng == 0 then
    DiffAng = -obj.uData.DiffAng
  else
    DiffAng = obj.uData.DiffAng
  end
  if DeadZone < math.abs(MovAng) and 0.7 < VecMoveMod and not PushPull.IgnorePPActs[char.Action] then
    if 0 < MovAng and obj.uData.LnkAng == 0 or MovAng < 0 and obj.uData.LnkAng ~= 0 then
      ActName = "PushWalk" .. Direction
      dist = obj.uData.LnkPos:mod() * SlotTime * obj.uData.TurnSpeed
    else
      ActName = "PushBack"
      dist = -obj.uData.LnkPos:mod() * SlotTime * obj.uData.TurnSpeed
    end
  else
    dist = 0
    ActName = "PushRelax"
  end
  if obj.uData.LnkAng == 0 then
    dist = -dist
  end
  PushPull.PlatformAttach = 0
  local isAtLimit = false
  if obj.uData.Limits then
    if obj.JustAng.y - dist < obj.uData.Limits[1] then
      dist = 0
      ActName = "PushRelax"
      obj.JustAng = V3D(0, obj.uData.Limits[1], 0)
      isAtLimit = true
    elseif obj.JustAng.y - dist > obj.uData.Limits[2] then
      dist = 0
      ActName = "PushRelax"
      obj.JustAng = V3D(0, obj.uData.Limits[2], 0)
      isAtLimit = true
    elseif dist ~= 0 then
      obj.uData.IsAtLimit = false
    end
  end
  if obj.uData.Limits then
    local limInf = obj.uData.Limits[1] - 0.5
    local limInf2 = obj.uData.Limits[1] + 0.5
    local limSup = obj.uData.Limits[2] - 0.5
    local limSup2 = obj.uData.Limits[2] + 0.5
    local kk = limInf > obj.JustAng.y
    local kk2 = limInf2 > obj.JustAng.y
    if kk or kk2 then
      PushPull.PlatformAttach = 1
    elseif limSup < obj.JustAng.y or limSup2 < obj.JustAng.y then
      PushPull.PlatformAttach = 1
    end
  end
  if ActName == "PushBack" then
    if string.sub(char.Action, 1, 8) == "PushWalk" then
      char.Action = "PushWalk" .. Direction .. "End"
      PushPull.StopTurnSound(obj)
    elseif char.Action ~= "PushBackInit" and char.Action ~= "PushBack" then
      char.Action = "PushBackInit"
      PushPull.PlayTurnSound(obj)
    end
  elseif ActName == "PushWalk" .. Direction then
    if string.sub(char.Action, 1, 8) == "PushBack" then
      char.Action = "PushBackEnd"
      PushPull.StopTurnSound(obj)
    elseif char.Action ~= "PushWalk" .. Direction .. "Init" and char.Action ~= "PushWalk" .. Direction then
      char.Action = "PushWalk" .. Direction .. "Init"
      PushPull.PlayTurnSound(obj)
    end
  elseif ActName == "PushRelax" then
    if string.sub(char.Action, 1, 8) == "PushBack" then
      char.Action = "PushBackEnd"
      PushPull.StopTurnSound(obj)
    elseif string.sub(char.Action, 1, 8) == "PushWalk" then
      char.Action = "PushWalk" .. Direction .. "End"
      PushPull.StopTurnSound(obj)
    elseif string.sub(char.Action, 1, 9) ~= "PushRelax" then
      if true then
        repeat
          char.Action = "PushRelax"
          PushPull.StopTurnSound(obj)
          do break end -- pseudo-goto
          char.uData.Push_iAng = Game.EqInterp(char.uData.Push_iAng, 1, SlotTime * 4)
        until true
    end
  end
  else
    char.uData.Push_iAng = Game.EqInterp(char.uData.Push_iAng, 0, SlotTime * 4)
  end
  DiffAng = DiffAng * char.uData.Push_iAng
  local isAtSnap = false
  if obj.uData.Snap and dist == 0 then
    local snp1 = obj.uData.Snap[1]
    local SnapPos = math.floor((obj.JustAng.y + snp1 / 2) / snp1) * snp1
    isAtSnap = 1 > math.abs(Game.NormAng(SnapPos - obj.JustAng.y))
    if isAtSnap then
      obj.JustAng = V3D(0, SnapPos, 0)
    end
  else
    obj.JustAng = V3D(0, obj.JustAng.y - dist, 0)
  end
  local hasStopped, hasStarted = PushPull.CheckSpeed(obj, SlotTime)
  PushPull.Notify(obj, "OnMoveMechanism")
  local rumbleControl = Input.GetRumble(0)
  if 0 < obj.uData.CurrentTurnSpeed then
  end
  if hasStopped and obj.uData.IsGripped then
    PushPull.Notify(obj, "OnStopPushMechanism")
    PushPull.StopTurnFX(obj)
  elseif hasStarted then
    PushPull.Notify(obj, "OnBeginPushMechanism")
    PushPull.StartTurnFX(obj)
  end
  obj.uData.IsGripped = true
  if isAtLimit and not obj.uData.IsAtLimit then
    PushPull.Notify(obj, "OnMechanismLimitReached")
    PushPull.StopTurnFX(obj)
    obj.uData.IsAtLimit = true
    rumbleControl:SetLeft(0.5, 0.1)
  elseif isAtSnap and not obj.uData.IsAtSnap then
    if nil ~= obj.uData.IsAtSnap then
      PushPull.Notify(obj, "OnMechanismSnap")
    end
    obj.uData.IsAtSnap = true
  elseif not isAtSnap then
    if obj.uData.IsAtSnap then
      PushPull.Notify(obj, "OnMechanismSnapLeft")
    end
    obj.uData.IsAtSnap = false
  end
  local Gang = V3D(0, obj.Ang.y, 0)
  if 1 <= obj.uData.char_itimy then
    char.JustPos = obj.Pos + obj.uData.LnkPos:rot(Gang)
  else
    obj.uData.char_itimy = obj.uData.char_itimy + SlotTime * 3
    local i = obj.uData.char_itimy
    local ii = 1 - i
    char.JustPos = (obj.Pos + obj.uData.LnkPos:rot(Gang)) * i + obj.uData.char_JustPos * ii
  end
  char.JustAng = V3D(0, Game.NormAng(obj.Ang.y + obj.uData.LnkAng + DiffAng), 0)
  char.JustViewAng = V3D(0, Game.NormAng(obj.Ang.y + obj.uData.LnkAng), 0)
  char.DisplAng = 0
  char.owc.ForceCenterCameraVal = 1
end

function PushPull.DeselectEntity(EntityName, EventName, time)
  local cam = Game.GetEntity(Game.GetCam(0))
  if PushPull.oldCam ~= nil then
    if not Camera.IsCameraLaunched then
      cam.FixedCam = PushPull.oldCam
      Game.Set("LockFixedCameraTrigger", 0)
    end
    PushPull.oldCam = nil
  end
  local char = Game.GetEntity(EntityName)
  if char.SelectedEntity ~= "" and char.oSelectedEntity.UseFunc ~= "PushPull.KeyGripWithSmartObject" then
    char.SelectedEntity = ""
  end
end

function PushPull.CanUseFunc(usr, o)
  if math.abs(Game.NormAng(V3D(o.Pos.x - usr.Pos.x, 0, o.Pos.z - usr.Pos.z):getrot().y - o.Ang.y + 90)) > 75 then
    return 0
  else
    return 1
  end
end

function PushPull.DebugCallOnTurn(o)
  Game.ConsoleError("Angle = " .. o.Ang.y .. "\n")
end

function PushPull.OpenDoorOnTurn(o)
  PushPull.opening = true
  if Game.GetEntity("Zobek") and o.Name == "o73_Carrete_0" then
    Zobek.OnTurn(o)
  end
  if not o.uData.LastAngle then
    o.uData.LastAngle = o.Ang.y
  end
  local doorsList = {}
  if type(o.uData.DoorToOpen) == "table" then
    for i, doorName in pairs(o.uData.DoorToOpen) do
      table.insert(doorsList, doorName)
    end
  else
    table.insert(doorsList, o.uData.DoorToOpen)
  end
  for i, doorName in pairs(doorsList) do
    local door = Game.GetEntity(doorName)
    if door and door.Action ~= "Opened" then
      local diffAng = o.Ang.y - o.uData.LastAngle
      if door.Action == "Closed" then
        door.ForceAction = "Open"
        door.oActCtrl:Pause()
      end
      local angleMultiplier = door.oActCtrl.oAction.AnmTotalTime / o.uData.SpinsToOpen / 360
      local timeToSet = clamp(0, door.oActCtrl.oAction.AnmTotalTime, door.oActCtrl.AnimTime + diffAng * angleMultiplier)
      door.oActCtrl:ResetPrimaryAction()
      door.oActCtrl:IncActionTime(0, timeToSet)
      if o.uData.FixWhenOpened and door.oActCtrl.AnimTime > door.oActCtrl.oAction.AnmTotalTime * 0.98 and not o.uData.IsReleased then
        door.ForceAction = "Opened"
        o.uData.Limits = {
          o.uData.ZeroAng + o.uData.SpinsToOpen * 360,
          o.uData.ZeroAng + o.uData.SpinsToOpen * 360,
          0
        }
        door.bMapCollision = false
        if o.uData.OnFixOpenedFunc then
          PushPull.StopTurnSound(o)
          o.uData.OnFixOpenedFunc(o)
        end
        if o.uData.TakeBarWhenOpen then
          PushPull.SetKeyMillInactive(o)
        else
          o.UseFunc = ""
          o.bArrowCanUse = false
          o.OnObjSlot = ""
          o.CanUseFunc = "PushPull.CanUseFunc"
        end
      end
    end
  end
  o.uData.LastAngle = o.Ang.y
end

function PushPull.ReleaseFixedMechanism(mechanismName)
  local mechanism = Game.GetEntity(mechanismName)
  if nil == mechanism then
    Game.ConsoleError("PushPull.ReleaseFixedMechanism: '" .. mechanismName .. "' not found\n")
    return
  end
  mechanism.OnObjSlot = "PushPull.SlotObject"
  mechanism.uData.Limits = {
    unpack(mechanism.uData.InitialLimits)
  }
  mechanism.uData.CallOnTurn = PushPull.OpenDoorOnTurn
  mechanism.uData.IsReleased = true
  mechanism.uData.LastAngle = nil
  mechanism.UseFunc = "PushPull.CircleGrip"
  local doorList = mechanism.uData.DoorToOpen
  if "table" ~= type(doorList) then
    doorList = {doorList}
  end
  for _, doorName in ipairs(doorList) do
    local door = Game.GetEntity(doorName)
    if door then
      door.bMapCollision = true
      door.ForceAction = "Open"
      door.oActCtrl:ResetPrimaryAction()
      door.oActCtrl:IncActionTime(0, door.oActCtrl.oAction.AnmTotalTime)
      door.oActCtrl:Pause()
    end
  end
end

PushPull.KeyMills = {}

function PushPull.SetUpCircle(o)
  o.uData.LinkPosFront = V3D(100, 57, 135)
  o.uData.LinkPosBack = V3D(100, 57, -135)
  o.uData.TurnSpeed = 0.25
  o.uData.DiffAng = 70
  o.UseFunc = "PushPull.CircleGrip"
  o.bUseAngSel = false
  o.bUseAbsAngSel = false
  o.bUseMapCheck = true
  o.ArrPriority = 4
  o.ArrRadius = 150
  o.uData.DeltaLink = o.uData.LinkPosFront
  o.uData.EntityLink = o.Name
  o.uData.MaterialLink = ""
  o.CanUseFunc = "PushPull.CanUseFunc"
  Hook.SetVisibleHookFX(o, true)
  o.uData.ZeroAng = o.Ang.y
end

function PushPull.SetOpenDoor(objectName, doorName, spinsToOpen, returnSpeed, fixWhenOpened, takeBarWhenOpen, agroUp)
  local obj = Game.GetEntity(objectName)
  obj.uData.DoorToOpen = doorName
  obj.uData.SpinsToOpen = spinsToOpen
  obj.uData.Limits = {
    obj.uData.ZeroAng,
    obj.uData.ZeroAng + spinsToOpen * 360,
    -returnSpeed
  }
  obj.uData.InitialLimits = {
    unpack(obj.uData.Limits)
  }
  obj.uData.CallOnTurn = PushPull.OpenDoorOnTurn
  obj.uData.FixWhenOpened = fixWhenOpened
  obj.uData.TakeBarWhenOpen = takeBarWhenOpen
  obj.uData.AgroUp = agroUp
  local firstDoor
  if type(doorName) == "table" then
    firstDoor = Game.GetEntity(doorName[1])
  else
    firstDoor = Game.GetEntity(doorName)
  end
  PushPull.RegisterListener(obj, firstDoor)
  
  function firstDoor.uData.OnMechanismLimitReached(obj, door)
    if math.abs(obj.uData.Limits[2] - obj.JustAng.y) < 0.1 then
      SoundUtils.PlayObjectSoundByIndex(firstDoor.Name, 3)
    end
  end
end

function PushPull.SetObjectMove(objectName, objectMove, spinsToOpen, returnSpeed, takeBarWhenOpen)
  local toro = Game.GetEntity(objectName)
  local objecto = Game.GetEntity(objectMove)
  toro.uData.objectMove = objectMove
  toro.uData.CallOnTurn = PushPull.MoveObjectOnTurn
  toro.uData.TakeBarWhenOpen = takeBarWhenOpen
  toro.uData.returnSpeed = returnSpeed
  toro.uData.spinsToOpen = spinsToOpen
  toro.uData.Limits = {
    toro.uData.ZeroAng,
    toro.uData.ZeroAng + spinsToOpen * 360,
    -returnSpeed
  }
end

function PushPull.MoveObjectOnTurn(o)
  local objeto = Game.GetEntity(o.uData.objectMove)
  local InitNode = Game.GetEntity(objeto.uData.InitialNode)
  local EndNode = Game.GetEntity(objeto.uData.EndNode)
  local DistanciaTotal = (EndNode.Pos - InitNode.Pos):mod()
  local AnguloTotal = o.uData.spinsToOpen * 360
  local Direccion = (EndNode.Pos - InitNode.Pos):norm()
  if objeto then
    local Angulo = o.Ang.y - o.uData.ZeroAng
    if Zobek then
      Zobek.Platform(o, Angulo)
    end
    if Game.GetEntity("oPlatEngendro") then
      PushPull.OnTurnMechanicalPlatform(o, objeto)
    end
    objeto.uData.iPos = InitNode.Pos + Angulo * (DistanciaTotal / AnguloTotal) * Direccion
    if math.abs(Angulo - AnguloTotal) < 0.01 and objeto.uData.ReachNodeFunc then
      objeto.uData.ReachNodeFunc(objeto, EndNode)
      o.OnObjSlot = ""
      PushPull.PlatformAttach = 1
    end
  end
end

function PushPull.OnTurnMechanicalPlatform(o, objeto)
  if not o.uData.LastAngle then
    o.uData.LastAngle = o.Ang.y
  end
  local engendro = Game.GetEntity("oPlatEngendro")
  local diffAng = o.Ang.y - o.uData.LastAngle
  if objeto.Action == "Relax" then
    objeto.ForceAction = "Play"
    objeto.oActCtrl:Pause()
  end
  if engendro.Action == "Relax" then
    engendro.ForceAction = "Play"
    engendro.oActCtrl:Pause()
  end
  local angleMultiplier = objeto.oActCtrl.oAction.AnmTotalTime / o.uData.spinsToOpen / 360
  local angleMultiplier2 = engendro.oActCtrl.oAction.AnmTotalTime / o.uData.spinsToOpen / 360
  local timeToSet = clamp(0, objeto.oActCtrl.oAction.AnmTotalTime, objeto.oActCtrl.AnimTime + diffAng * angleMultiplier)
  objeto.oActCtrl:ResetPrimaryAction()
  objeto.oActCtrl:IncActionTime(0, timeToSet)
  local timeToSet2 = clamp(0, engendro.oActCtrl.oAction.AnmTotalTime, engendro.oActCtrl.AnimTime + diffAng * angleMultiplier2)
  engendro.oActCtrl:ResetPrimaryAction()
  engendro.oActCtrl:IncActionTime(0, timeToSet2)
  o.uData.LastAngle = o.Ang.y
end

function PushPull.SetKeyMillInactive(o)
  if o.uData.KeyObject then
    o.UseFunc = "PushPull.RemoveKey"
    o.bArrowCanUse = true
  else
    o.UseFunc = ""
    o.bArrowCanUse = false
  end
  o.uData.Limits = {
    o.Ang.y,
    o.Ang.y,
    0
  }
  o.OnObjSlot = ""
  o.CanUseFunc = "PushPull.CanUseFunc"
end

function PushPull.CircleGrip(char, parent)
  PushPull.StopReturnSound(parent, true)
  PushPull.StopTurnFX(parent)
  if char.oActCtrl.AnimPriority > 10 or player.isFalling == 1 then
    return false
  end
  if Game.GetEntity("Zobek") then
    if Game.GetEntity("Zobek").Action == "PushRelax" then
      Game.GetEntity("Zobek").oAI:LeaveStick()
    end
    if parent.Name == "o73_Carrete_0" then
      Zobek.CataC_FirstMechSolved = 1
    end
  end
  char.SelectedEntity = parent.Name
  char.Action = "PushRelaxInit"
  char.isFalling = 1
  char.uData.Push_iAng = 0
  char.owc.ForceCenterCameraVal = 1
  parent.OnObjSlot = "PushPull.SlotObject"
  parent.bArrowCanUse = false
  parent.uData.char_JustPos = char.JustPos
  parent.uData.char_JustAng = char.JustAng
  parent.uData.char_JustViewAng = char.JustViewAng
  parent.uData.char_itimy = 0
  if parent.uData.Limits then
    if parent.JustPos.y == parent.uData.Limits[1] or parent.JustPos.y == parent.uData.Limits[2] then
      parent.uData.IsAtLimit = true
    end
    parent.uData.IsReleased = nil
  end
  PushPull.GetBestLinkPos(char, parent)
  if parent.uData.AgroUp then
    PushPull.AgresiveEnemies()
    parent.uData.OnReleaseFunc = PushPull.NiceEnemies
  end
  PushPull.Notify(parent, "OnGripMechanism")
  if MapInit.OnSpecificUse then
    MapInit.OnSpecificUse(parent.Name)
  end
  camara = parent.uData.CameraWhenUse
  if camara ~= nil and camara ~= "" and player.Action == "PushRelaxInit" then
    local cam = Game.GetEntity(Game.GetCam(0))
    PushPull.oldCam = cam.FixedCam
    cam.FixedCam = camara
    Game.Set("LockFixedCameraTrigger", 1)
  end
  return true
end

function PushPull.GetBestLinkPos(char, parent)
  if parent.uData.LinkPos then
    parent.uData.LnkPos = parent.uData.LinkPos
    parent.uData.LnkAng = -90
    return
  end
  local d1 = (parent.Pos + parent.uData.LinkPosFront:rot(parent.Ang) - char.Pos):mod()
  local d2 = (parent.Pos + parent.uData.LinkPosBack:rot(parent.Ang) - char.Pos):mod()
  if d1 < d2 then
    parent.uData.LnkPos = parent.uData.LinkPosFront
    parent.uData.LnkAng = 0
  else
    parent.uData.LnkPos = parent.uData.LinkPosBack
    parent.uData.LnkAng = 180
  end
end

function PushPull.AgresiveEnemies()
  Game.Log("PushPull.AgresiveEnemies\n", 1)
  PushPull.a = AISpec.GetMaxAttackers("Goblin")
  PushPull.b = AISpec.GetWeight("Goblin")
  PushPull.c = AISpec.GetMaxSequenceOfAttacks("Goblin")
  PushPull.d = AISpec.GetBigGroupThreshold("Goblin")
  PushPull.e = AISpec.GetTimeToWaitUntilNextAttack("Goblin")
  AISpec.SetupEnemy("Goblin", 1, 1, 1, 1, 1)
end

function PushPull.NiceEnemies()
  Game.Log("PushPull.NiceEnemies\n", 1)
  AISpec.SetupEnemy("Goblin", PushPull.a, PushPull.b, PushPull.c, PushPull.d, PushPull.e)
end

function PushPull.AssignKeyObjSlotFunc(actionName)
  local action = PushPull.g_ac:GetAct(actionName)
  action.OnObjSlot = "PushPull.OnKeyObjSlot"
  action.Group = "Hook"
end

function PushPull.AddKeyAnims(ac)
  PushPull.g_ac = ac
  local typo = PushPull.GripExtraSufix
  Game.Set("OnActionCreation", "PushPull.AssignKeyObjSlotFunc")
  MakeChar.AddRelaxActions(ac, 0, 0, typo)
  MakeChar.AddWalkActions(ac, 540, 0, 1, {
    "Run",
    "Walk",
    "WalkTurn"
  }, typo)
  MakeChar.AddInitWalkActions(ac, 540, 0, 1, {
    "RunInit",
    "WalkInit",
    "WalkInitTurn"
  }, typo)
  MakeChar.AddEndWalkActions(ac, 45, 0, 1, {
    "RunEnd",
    "WalkEndLeft",
    "WalkEndRight"
  }, typo)
  Game.Set("OnActionCreation", "")
  am = ac:GetAct(typo .. "WalkTurn")
  am.RotSpeed = 180 / am.AnmTotalTime
  am.isLoop = 0
  am.DispType = 2
  am.RotDirection = 1
  am.InitVel = ac:GetAct(typo .. "Walk").AnmVel * 0.3
  am.EndVel = -ac:GetAct(typo .. "Walk").AnmVel
  am = ac:GetAct(typo .. "WalkInitTurn")
  am.RotSpeed = 180 / am.AnmTotalTime
  am.isLoop = 0
  am.DispType = 2
  am.RotDirection = 1
  am.InitVel = -ac:GetAct(typo .. "Walk").AnmVel * 0.2
  am.EndVel = -ac:GetAct(typo .. "Walk").AnmVel
  Game.Set("OnActionCreation", "PushPull.AssignKeyObjSlotFunc")
  am = MakeChar.AddMove(ac, "KeyPick", "KeyPick", 0, 0, 0)
  Game.Set("OnActionCreation", "")
  MakeChar.MakeEvent(ac, "KeyPick", "", "PushPull.OnPickedByBelmont", 9).Discardable = 0
  MakeChar.MakeEvent(ac, "KeyPick", "", "PushPull.ApplyCorrectionOnBelmont", 35).Discardable = 0
  if Arrow then
    MakeChar.MakeEvent(ac, "KeyPick", "", "Arrow.OnPickedByBelmont", 9).Discardable = 0
    MakeChar.MakeEvent(ac, "KeyPick", "", "Arrow.ApplyCorrectionOnBelmont", 35).Discardable = 0
  end
  am.MinSpeed = 1
  am.MaxSpeed = 1
  am.PriorityLevel = 20
  am.Group = "Hook"
end

function PushPull.RemoveKey(char, parent)
  if char.oActCtrl.AnimPriority > 1 or player.isFalling == 1 then
    return
  end
  local obj = parent.uData.KeyObject
  PushPull.GetBestLinkPos(char, parent)
  if parent.uData.LnkAng == 0 then
    char.ForceAction = "PushGetKeyRight"
  else
    char.ForceAction = "PushGetKeyLeft"
  end
  char.Ang = V3D(0, Game.NormAng(parent.Ang.y + parent.uData.LnkAng), 0)
  char.ViewAng = char.Ang
  char.DisplAng = 0
  char:MoveMePos(1, 0.3, parent.Pos + parent.uData.LnkPos:rot(V3D(0, parent.Ang.y, 0)))
  char.uData.PushPullInfo = {parent, obj}
end

function PushPull.KeyGripWithSmartObject(char, key)
  if char.oActCtrl.AnimPriority > 1 or player.isFalling == 1 then
    return
  end
  if char.oAI.oAssignedSmartData then
    return
  end
  if char.uData.oSmartObjData then
    return
  end
  AISpec.ActivateSmartObjectsOfType("mechanismdoora_key")
  AISpec.ActivateSmartObjectsOfType("gore_meat")
  AISpec.ActivateSmartObjectsOfType("arrow")
  AISpec.ActivateSmartObjectsOfType("mechanismcarrete_key")
  AISpec.ActivateSmartObjectsOfType("mecanismopareda_key")
  local oSmartData = AISpec.FindBestSmartObjectDataIgnoringOwner(char, 0, 400)
  if oSmartData and oSmartData:IsOwnerFarEnough(250) then
    char.uData.oSmartObjData = oSmartData
    char.SelectedEntity = key.Name
    char.ExtraSufix = PushPull.GripExtraSufix
    char.ForceAction = PushPull.GripAction
    oSmartData.PickNode = PushPull.NodeName
    oSmartData.PivotNode = PushPull.GripNodeName
    key.OnObjSlot = "PushPull.CarryKeySlot"
    key.bArrowCanUse = false
    oSmartData.oSmartObject.oOwner = char
    local objName = key.Name
    for i in pairs(PushPull.KeyMills) do
      PushPull.KeyMills[i].bArrowCanUse = true
    end
    local v3SmartDataPos = V3D(oSmartData.Pos.x, char.Pos.y, oSmartData.Pos.z)
    local p1 = player.Pos
    local p2 = v3SmartDataPos
    col = Game.SafeSlide(p1, p2, player.oActCtrl.oActClass.Radius, player.WorldCollisionMask + player.WallCollisionMask)
    char:MoveMePosAng(1, 0.3, col, V3D(0, oSmartData.Ang.y, 0))
  else
    print("No valid object found!!")
  end
end

function PushPull.KeyGrip(char, parent)
  if char.oActCtrl.AnimPriority > 1 or player.isFalling == 1 then
    return
  end
  char.ForceAction = PushPull.GripAction
  PushPull.ForceKeyGrip(char, parent, 0.5)
end

function PushPull.ForceKeyGrip(char, parent, time)
  char.SelectedEntity = parent.Name
  char.ExtraSufix = PushPull.GripExtraSufix
  parent.OnObjSlot = "PushPull.CarryKeySlot"
  parent:LinkModelToNode(char.Name, PushPull.NodeName, time)
  parent.bArrowCanUse = false
  local objName = parent.Name
  for i in pairs(PushPull.KeyMills) do
    PushPull.KeyMills[i].bArrowCanUse = true
  end
end

function PushPull.PlayerCanGetKey(usr, o)
  if usr.bisUsingWallCollisionMask then
    return 1
  else
    return 0
  end
end

function PushPull.SetUpKey(o)
  o.UseFunc = "PushPull.KeyGripWithSmartObject"
  o.CanUseFunc = "PushPull.PlayerCanGetKey"
  o.bUseAngSel = false
  o.bUseAbsAngSel = false
  o.bUseMapCheck = true
  o.ArrPriority = 4
  o.ArrRadius = 150
  o.uData.DeltaLink = o.uData.LinkPosFront
  o.uData.EntityLink = o.Name
  o.uData.MaterialLink = ""
  Hook.SetVisibleHookFX(o, true)
end

function PushPull.CarryKeySlot(objName, SlotTime, Ipos)
  local char = player
  if char.SelectedEntity ~= objName then
    local obj = Game.GetEntity(objName)
    obj.bArrowCanUse = true
    obj.OnObjSlot = ""
    obj.uData.OnDrop(obj)
    for i in pairs(PushPull.KeyMills) do
      PushPull.KeyMills[i].bArrowCanUse = false
    end
  end
end

function PushPull.KeyEvent(EntityName, EventName, time)
  local char = Game.GetEntity(EntityName)
  if EventName == "GET" then
    local parent = char.uData.PushPullInfo[1]
    local obj = char.uData.PushPullInfo[2]
    parent.uData.KeyObject = nil
    parent.uData.MechKeyName = ""
    parent.bArrowCanUse = false
    parent.UseFunc = ""
    parent.CanUseFunc = ""
    parent[parent.uData.KeyNode] = false
    if parent.uData.KeyNode2 then
      parent[parent.uData.KeyNode2] = false
    end
    obj.OnObjSlot = ""
    obj.Pos = parent.NT_NodePos_DC_Key
    obj.Ang = parent.NT_NodeAng_DC_Key
    obj.bActive = true
    PushPull.ForceKeyGrip(char, obj, 0)
  elseif EventName == "SET" then
    local obj = char.uData.PushPullData.obj
    local tgt = char.uData.PushPullData.tgt
    if tgt.uData.OnSetCallback then
      tgt.uData.OnSetCallback(tgt)
    end
    obj:UnlinkModel(0)
    obj.bActive = false
    obj.uData.OnPutOnLock(obj)
    tgt[tgt.uData.KeyNode] = true
    if tgt.uData.KeyNode2 then
      tgt[tgt.uData.KeyNode2] = true
    end
  end
end

function PushPull.OnKeyObjSlot(char, SlotTime, Ipos)
  if Game.Get("DoingStopChat") == 4 then
    return
  end
  local objName = char.SelectedEntity
  local obj
  if objName == "" then
    if char.oAI.oAssignedSmartData and char.oAI.oAssignedSmartData.oSmartObject and char.oAI.oAssignedSmartData.oSmartObject.oObj then
      Game.ConsoleError("ERROR : No Key selected RESTORED!\n")
      local smartObj = char.oAI.oAssignedSmartData.oSmartObject
      obj = smartObj.oObj
      char.oAI.oAssignedSmartData.PivotNode = PushPull.GripNodeName
      obj.uData.OnDrop(obj)
      smartObj.oOwner = nil
      char.oAI.oAssignedSmartData = nil
      obj:UnlinkModel(0)
      char.ForceAction = "Relax"
      char.ExtraSufix = ""
      return
    end
    Game.ConsoleError("ERROR : No Key selected!\n")
    return
  else
    obj = char.oSelectedEntity
  end
  if char.owc.Grip == 1 and char.owc.PGrip == 0 then
    local tgt = PushPull.KeyMills[char.AutoSelectedEntity]
    if tgt then
      PushPull.KeyMills[char.AutoSelectedEntity] = nil
      tgt.uData.MechKeyUsed = true
      for i in pairs(PushPull.KeyMills) do
        PushPull.KeyMills[i].bArrowCanUse = false
      end
      tgt.bArrowCanUse = true
      tgt.uData.KeyObject = obj
      tgt.uData.MechKeyName = obj.Name
      obj.OnObjSlot = ""
      obj.bArrowCanUse = false
      char.ForceAction = "Relax"
      char.ExtraSufix = ""
      char.uData.PushPullData = {obj = obj, tgt = tgt}
      if tgt.uData.LinkPos then
        PushPull.RollCircleGrip(char, tgt)
      else
        PushPull.CircleGrip(char, tgt)
      end
      if obj.uData.AngleNodes then
        if tgt.uData.LnkAng == 0 then
          obj[obj.uData.AngleNodes[1]] = true
          obj[obj.uData.AngleNodes[2]] = false
        else
          obj[obj.uData.AngleNodes[1]] = false
          obj[obj.uData.AngleNodes[2]] = true
        end
      end
      if tgt.uData.LinkPos then
        char.uData.RollMech = tgt
        char.ForceAction = "PushRollSetKeyLeft"
      elseif tgt.uData.LnkAng == 0 then
        char.ForceAction = "PushSetKeyRight"
      else
        char.ForceAction = "PushSetKeyLeft"
      end
    else
      char.ForceAction = "Relax"
      char.ExtraSufix = ""
    end
  end
end

function PushPull.ChangingCam()
  if Zobek and Zobek.HaveArrow == 1 then
    PushPull.RightOrLeft()
  end
end

function PushPull.RightOrLeft()
  local char = Game.GetEntity("Belmont")
  local parent = Game.GetEntity("o70_ArrowMech")
  local d1 = (parent.Pos + parent.uData.LinkPosFront:rot(parent.Ang) - char.Pos):mod()
  local d2 = (parent.Pos + parent.uData.LinkPosBack:rot(parent.Ang) - char.Pos):mod()
  if d1 < d2 then
    Game.GetEntity("CameraArrow").DeltaView = V4D(1.8, 45, 0, 0)
    Game.GetEntity("CameraArrow").YAngleDisp = -45
  else
    Game.GetEntity("CameraArrow").DeltaView = V4D(1.8, -45, 0, 0)
    Game.GetEntity("CameraArrow").YAngleDisp = 45
  end
end

function PushPull.PlayTurnSound(entity)
  if entity.uData.PlayingTurnLoop then
    return
  end
  local engendro = Game.GetEntity("oPlatEngendro")
  SoundUtils.PlayObjectSoundLoopByIndex(entity.Name, 1)
  SoundUtils.PlayObjectSoundByIndex(entity.Name, 3)
  local doorsList = {}
  if type(entity.uData.DoorToOpen) == "table" then
    table.insert(doorsList, entity.uData.DoorToOpen[1])
  else
    table.insert(doorsList, entity.uData.DoorToOpen)
  end
  for i, doorName in pairs(doorsList) do
    if doorName and doorName ~= "" then
      local door = Game.GetEntity(doorName)
      if door then
        SoundUtils.PlayObjectSoundLoopByIndex(door.Name, 1)
      end
    end
  end
  if engendro and entity.Name == "o73_Carrete_3" then
    SoundUtils.PlayObjectSoundByIndex(engendro.Name, 5)
    SoundUtils.PlayObjectSoundLoopByIndex(entity.uData.objectMove, 1)
    SoundUtils.PlayObjectSoundLoopByIndex(engendro.Name, 1)
    if PushPull.PlatformAttach == 1 then
      SoundUtils.PlayObjectSoundByIndex(entity.uData.objectMove, 4)
      SoundUtils.PlayObjectSoundByIndex(engendro.Name, 4)
    end
  end
  entity.uData.PlayingTurnLoop = true
end

function PushPull.StopTurnSound(entity)
  if not entity.uData.PlayingTurnLoop then
    return
  end
  SoundUtils.StopObjectSoundLoopByIndex(entity.Name, 1)
  SoundUtils.PlayObjectSoundByIndex(entity.Name, 2)
  local doorsList = {}
  if type(entity.uData.DoorToOpen) == "table" then
    table.insert(doorsList, entity.uData.DoorToOpen[1])
  else
    table.insert(doorsList, entity.uData.DoorToOpen)
  end
  for i, doorName in pairs(doorsList) do
    if doorName and doorName ~= "" then
      local door = Game.GetEntity(doorName)
      if door then
        SoundUtils.StopObjectSoundLoopByIndex(door.Name, 1)
      end
    end
  end
  local engendro = Game.GetEntity("oPlatEngendro")
  if engendro and entity.Name == "o73_Carrete_3" then
    SoundUtils.PlayObjectSoundByIndex(entity.uData.objectMove, 2)
    SoundUtils.PlayObjectSoundByIndex(engendro.Name, 2)
    SoundUtils.StopObjectSoundLoopByIndex(entity.uData.objectMove, 1)
    SoundUtils.StopObjectSoundLoopByIndex(engendro.Name, 1)
    if PushPull.PlatformAttach == 1 then
      SoundUtils.PlayObjectSoundByIndex(entity.uData.objectMove, 3)
      SoundUtils.PlayObjectSoundByIndex(engendro.Name, 3)
    end
  end
  entity.uData.PlayingTurnLoop = false
end

function PushPull.PlayReturnSound(entity)
  PushPull.PlatformAttach = 1
  if entity.uData.PlayingReturnLoop then
    return
  end
  SoundUtils.PlayObjectSoundLoopByIndex(entity.Name, 4)
  local doorsList = {}
  if type(entity.uData.DoorToOpen) == "table" then
    table.insert(doorsList, entity.uData.DoorToOpen[1])
  else
    table.insert(doorsList, entity.uData.DoorToOpen)
  end
  for i, doorName in pairs(doorsList) do
    local door = Game.GetEntity(doorName)
    if door then
      SoundUtils.PlayObjectSoundLoopByIndex(door.Name, 4)
    end
  end
  local engendro = Game.GetEntity("oPlatEngendro")
  if engendro and entity.Name == "o73_Carrete_3" then
    SoundUtils.PlayObjectSoundLoopByIndex(entity.uData.objectMove, 1)
    SoundUtils.PlayObjectSoundLoopByIndex(engendro.Name, 1)
    if PushPull.PlatformAttach == 1 then
      SoundUtils.PlayObjectSoundByIndex(entity.uData.objectMove, 4)
      SoundUtils.PlayObjectSoundByIndex(engendro.Name, 4)
    end
  end
  entity.uData.PlayingReturnLoop = true
end

function PushPull.StopReturnSound(entity, doNotPlayEndSound)
  if doNotPlayEndSound == nil then
    doNotPlayEndSound = false
  end
  PushPull.ReturnWait = 0
  if not entity.uData.PlayingReturnLoop then
    return
  end
  SoundUtils.StopObjectSoundLoopByIndex(entity.Name, 4)
  local door
  local doorsList = {}
  if type(entity.uData.DoorToOpen) == "table" then
    table.insert(doorsList, entity.uData.DoorToOpen[1])
  else
    table.insert(doorsList, entity.uData.DoorToOpen)
  end
  for i, doorName in pairs(doorsList) do
    local door = Game.GetEntity(doorName)
    if door then
      SoundUtils.StopObjectSoundLoopByIndex(doorName, 4)
      if not doNotPlayEndSound and PushPull.ReturnDegrees > 15 then
        SoundUtils.PlayObjectSoundByIndex(doorName, 2)
        PushPull.ReturnDegrees = 0
      end
    end
  end
  local engendro = Game.GetEntity("oPlatEngendro")
  if engendro and entity.Name == "o73_Carrete_3" then
    if not doNotPlayEndSound then
      SoundUtils.PlayObjectSoundByIndex(entity.uData.objectMove, 2)
      SoundUtils.PlayObjectSoundByIndex(engendro.Name, 2)
    end
    SoundUtils.StopObjectSoundLoopByIndex(entity.uData.objectMove, 1)
    SoundUtils.StopObjectSoundLoopByIndex(engendro.Name, 1)
    if PushPull.PlatformAttach == 1 then
      SoundUtils.PlayObjectSoundByIndex(entity.uData.objectMove, 3)
      SoundUtils.PlayObjectSoundByIndex(engendro.Name, 3)
    end
  end
  entity.uData.PlayingReturnLoop = false
end

function PushPull.PlayDoorOpenedSound(door)
  SoundUtils.PlayObjectSoundByIndex(door.Name, 3)
end

function PushPull.SetupTurnable(entityName, mechanismName, mechanismAngle)
  local turnable = Game.GetEntity(entityName)
  local mechanism = Game.GetEntity(mechanismName)
  if nil == mechanism or nil == turnable then
    return
  end
  local mechanismReturnSpeed = turnable.uData.ReturnSpeed * (mechanismAngle / math.abs(turnable.uData.TurnAngle))
  mechanism.uData.Limits = {
    mechanism.Ang.y,
    mechanism.Ang.y + mechanismAngle,
    -mechanismReturnSpeed
  }
  turnable.uData.ZeroAng = turnable.Ang.y
  turnable.uData.AngleRatio = turnable.uData.TurnAngle / mechanismAngle
  turnable.OnObjSlot = "PushPull.TurnableSlot"
  PushPull.RegisterListener(mechanism, turnable)
  
  function turnable.uData.OnMoveMechanism(mechanism, turnable)
    turnable.uData.TargetAngle = turnable.uData.ZeroAng + (mechanism.JustAng.y - mechanism.uData.ZeroAng) * turnable.uData.AngleRatio
    turnable.uData.CurrentTurnSpeed = mechanism.uData.CurrentTurnSpeed * math.abs(turnable.uData.AngleRatio)
  end
  
  function turnable.uData.OnMechanismReleased(mechanism, turnable)
    SoundUtils.StopObjectSoundLoopByIndex(turnable.Name, 1)
    if mechanism.Ang.y ~= mechanism.uData.Limits[1] then
      SoundUtils.PlayObjectSoundLoopByIndex(turnable.Name, 4)
    end
  end
  
  function turnable.uData.OnMechanismLimitReached(mechanism, turnable)
    SoundUtils.StopObjectSoundLoopByIndex(turnable.Name, 1)
    SoundUtils.StopObjectSoundLoopByIndex(turnable.Name, 4)
    if not turnable.uData.IsGripped and math.abs(mechanism.uData.Limits[1] - mechanism.JustAng.y) < 0.01 then
      SoundUtils.PlayObjectSoundByIndex(turnable.Name, 2)
    elseif 0.01 > math.abs(mechanism.uData.Limits[2] - mechanism.JustAng.y) then
      SoundUtils.PlayObjectSoundByIndex(turnable.Name, 3)
    end
  end
  
  function turnable.uData.OnStopPushMechanism(mechanism, turnable)
    SoundUtils.StopObjectSoundLoopByIndex(turnable.Name, 1)
  end
  
  function turnable.uData.OnBeginPushMechanism(mechanism, turnable)
    SoundUtils.PlayObjectSoundLoopByIndex(turnable.Name, 1)
    SoundUtils.PlayObjectSoundByIndex(turnable.Name, 5)
  end
  
  function turnable.uData.OnGripMechanism(mechanism, turnable)
    SoundUtils.StopObjectSoundLoopByIndex(turnable.Name, 4)
  end
end

function PushPull.SetupSnapTurnable(entityName, mechanismName, snap, onReachSnapCallback, onLeaveSnapCallback)
  local turnable = Game.GetEntity(entityName)
  local mechanism = Game.GetEntity(mechanismName)
  if nil == mechanism or nil == turnable then
    return
  end
  mechanism.uData.Snap = {snap, 30}
  turnable.uData.SnapAngle = snap
  turnable.uData.LastSnapAngle = turnable.Ang.y
  turnable.uData.ZeroAng = turnable.Ang.y
  turnable.OnObjSlot = "PushPull.OnSlotSnapTurnable"
  turnable.uData.MechanismEvents = {}
  turnable.uData.SnapCallback = onReachSnapCallback
  turnable.uData.LeaveSnapCallback = onLeaveSnapCallback
  PushPull.RegisterListener(mechanism, turnable)
  
  function turnable.uData.OnMoveMechanism(mechanism, turnable)
    turnable.uData.TargetAngle = turnable.uData.ZeroAng + (mechanism.JustAng.y - mechanism.uData.ZeroAng)
    turnable.uData.CurrentTurnSpeed = mechanism.uData.CurrentTurnSpeed
  end
  
  function turnable.uData.OnMechanismReleased(mechanism, turnable)
    SoundUtils.StopObjectSoundLoopByIndex(turnable.Name, 1)
    if not mechanism.uData.IsAtSnap then
      SoundUtils.PlayObjectSoundLoopByIndex(turnable.Name, 4)
    end
  end
  
  function turnable.uData.OnStopPushMechanism(mechanism, turnable)
    SoundUtils.StopObjectSoundLoopByIndex(turnable.Name, 1)
  end
  
  function turnable.uData.OnMechanismSnap(mechanism, turnable)
    SoundUtils.StopObjectSoundLoopByIndex(turnable.Name, 1)
    SoundUtils.PlayObjectSoundByIndex(turnable.Name, 2)
    table.insert(turnable.uData.MechanismEvents, "SnapReach")
    Game.Set("DoingStopChat", 0)
  end
  
  function turnable.uData.OnMechanismSnapLeft(mechanism, turnable)
    SoundUtils.PlayObjectSoundLoopByIndex(turnable.Name, 1)
    SoundUtils.PlayObjectSoundByIndex(turnable.Name, 3)
    table.insert(turnable.uData.MechanismEvents, "SnapLeft")
    Game.Set("DoingStopChat", 2)
  end
  
  function turnable.uData.OnGripMechanism(mechanism, turnable)
    SoundUtils.StopObjectSoundLoopByIndex(turnable.Name, 4)
  end
end

function PushPull.OnSlotSnapTurnable(entityName, timeDiff)
  local turnable = Game.GetEntity(entityName)
  if turnable.uData.CurrentTurnSpeed then
    local speed = turnable.uData.CurrentTurnSpeed
    if speed == 0 then
      speed = 360
    end
    local newAngle = Game.EqInterp(turnable.JustAng.y, turnable.uData.TargetAngle, speed * timeDiff)
    turnable.JustAng = V3D(turnable.JustAng.x, newAngle, turnable.JustAng.z)
    newAngle = PushPull.RoundAngle(newAngle)
    local nextEvent = turnable.uData.MechanismEvents[1]
    if "SnapReach" == nextEvent and 0 == newAngle % turnable.uData.SnapAngle and not Game.ExistsScheduledFunc("SnapReachDelayed") then
      function PushPull.OnSnapReachDelayed(...)
        turnable.uData.SnapCallback(...)
        
        table.remove(turnable.uData.MechanismEvents, 1)
      end
      
      addSF(0, "SnapReachDelayed", "PushPull.OnSnapReachDelayed", entityName, newAngle - turnable.uData.LastSnapAngle)
      turnable.uData.LastSnapAngle = newAngle
    elseif "SnapLeft" == nextEvent then
      turnable.uData.LeaveSnapCallback(entityName)
      table.remove(turnable.uData.MechanismEvents, 1)
    end
  end
end

function PushPull.TurnableSlot(entityName, timeDiff)
  local turnable = Game.GetEntity(entityName)
  if turnable.uData.CurrentTurnSpeed then
    turnable.JustAng = V3D(turnable.JustAng.x, Game.EqInterp(turnable.JustAng.y, turnable.uData.TargetAngle, turnable.uData.CurrentTurnSpeed * timeDiff), turnable.JustAng.z)
  end
end

function PushPull.RoundAngle(realAngle)
  local angleFloor = math.floor(realAngle * 10)
  if realAngle * 10 - angleFloor > 0.9 then
    return (angleFloor + 1) / 10
  elseif realAngle * 10 - angleFloor < 0.1 then
    return angleFloor / 10
  else
    return realAngle
  end
end

function PushPull.AssignKey(Name)
  local toro = Game.GetEntity(Name)
  if toro.uData.MechKeyName then
    toro.uData.KeyObject = Game.GetEntity(toro.uData.MechKeyName)
  end
  if toro.uData.MechKeyUsed then
    PushPull.KeyMills[Name] = nil
  end
end

function PushPull.Notify(mechanism, event, ...)
  if event ~= "OnMoveMechanism" then
    print("PushPull.Notify '" .. mechanism.Name .. "' --> '" .. event .. "'")
  end
  if mechanism.uData.PushPullListeners then
    for _, listener in ipairs(mechanism.uData.PushPullListeners) do
      if type(listener.uData[event]) == "function" then
        listener.uData[event](mechanism, listener, ...)
      end
    end
  end
end

function PushPull.RegisterListener(mechanism, listener)
  mechanism.uData.PushPullListeners = mechanism.uData.PushPullListeners or {}
  for _, registeredListener in ipairs(mechanism.uData.PushPullListeners) do
    if listener == registeredListener then
      return
    end
  end
  table.insert(mechanism.uData.PushPullListeners, listener)
end

function PushPull.DeregisterListener(mechanism, listener)
  if mechanism.uData.PushPullListeners then
    for i, registeredListener in ipairs(mechanism.uData.PushPullListeners) do
      if listener == registeredListener then
        table.remove(mechanism.uData.PushPullListeners, i)
        return
      end
    end
  end
end

function PushPull.CheckSpeed(mechanism, timeDiff)
  if nil == mechanism.uData.LastTurnAngle then
    mechanism.uData.LastTurnAngle = mechanism.JustAng.y
  end
  local lastSpeed = mechanism.uData.CurrentTurnSpeed
  mechanism.uData.CurrentTurnSpeed = math.abs(mechanism.JustAng.y - mechanism.uData.LastTurnAngle) / timeDiff
  mechanism.uData.LastTurnAngle = mechanism.JustAng.y
  local hasStopped = false
  local hasStarted = false
  if lastSpeed then
    if 0 < lastSpeed and 0 == mechanism.uData.CurrentTurnSpeed then
      hasStopped = true
    elseif 0 == lastSpeed and mechanism.uData.CurrentTurnSpeed > 0 then
      hasStarted = true
    end
  end
  return hasStopped, hasStarted
end

function PushPull.OnPickedByBelmont(entityName)
  local ent = Game.GetEntity("Belmont")
  ent.uData.HasKey = true
  if Game.GetEntity("Belmont").uData.oSmartObjData ~= nil then
    ent.uData.oSmartObjData:OnPickedByOwner()
    ent.uData.PickedObject = Game.GetEntity("Belmont").uData.oSmartObjData.oSmartObject.oObj
    if ent.uData.PickedObject.Name == "o71_Arrow" then
      Zobek.HaveArrow = 1
    elseif ent.uData.PickedObject.Name == "o73" then
      Zobek.HavePalito = 1
    end
  end
end

function PushPull.ApplyCorrectionOnBelmont(entityName)
  local ent = Game.GetEntity("Belmont")
  if Game.GetEntity("Belmont").uData.oSmartObjData ~= nil then
    ent.uData.oSmartObjData.PivotNode = "DC_Belmont_Grip2"
  end
end

function PushPull.SetUpRollCircle(o)
  o.uData.LinkPos = V3D(-172, 0, -50)
  o.uData.TurnSpeed = 0.25
  o.uData.DiffAng = 180
  o.UseFunc = "PushPull.RollCircleGrip"
  o.bUseAngSel = false
  o.bUseAbsAngSel = false
  o.bUseMapCheck = true
  o.ArrPriority = 4
  o.ArrRadius = 200
  o.uData.DeltaLink = o.uData.LinkPos
  o.uData.EntityLink = o.Name
  o.uData.MaterialLink = ""
  o.CanUseFunc = "PushPull.RollCanUseFunc"
  Hook.SetVisibleHookFX(o, true)
  o.uData.ZeroAng = o.Ang.y
end

function PushPull.RollCircleGrip(char, parent)
  char.uData.RollMech = parent
  PushPull.StopReturnSound(parent, true)
  if char.oActCtrl.AnimPriority > 10 or player.isFalling == 1 then
    return false
  end
  char.SelectedEntity = parent.Name
  char.Action = "PushRollInit"
  char.uData.Push_iAng = 0
  char.owc.ForceCenterCameraVal = 1
  parent.bArrowCanUse = false
  parent.uData.char_JustPos = char.JustPos
  parent.uData.char_JustAng = char.JustAng
  parent.uData.char_JustViewAng = char.JustViewAng
  parent.uData.char_itimy = 0
  if parent.uData.Limits and (parent.JustPos.y == parent.uData.Limits[1] or parent.JustPos.y == parent.uData.Limits[2]) then
    parent.uData.IsAtLimit = true
  end
  parent.uData.LnkPos = parent.uData.LinkPos + V3D(0, 0, -20)
  parent.uData.LnkAng = -90
  PushPull.Notify(parent, "OnGripMechanism")
  return true
end

function PushPull.RollCanUseFunc(usr, o)
  if o:GetNodeVisibility("MecanismoParedA_Key") == false and not player.uData.HasKey then
    return 0
  end
  if math.abs(Game.NormAng(V3D(o.Pos.x - usr.Pos.x, 0, o.Pos.z - usr.Pos.z):getrot().y - o.Ang.y)) > 75 then
    return 0
  elseif usr.Name == player.Name and player.oActCtrl:GetTrackInfo("SyncTgtActions") == nil then
    return 1
  else
    return 0
  end
end

function PushPull.AddRollAnm(ac)
  local act
  local a = {
    {
      "PushRollInit",
      5,
      0,
      "PushPull.SlotRoll",
      1
    },
    {
      "PushRoll",
      5,
      1,
      "PushPull.SlotRoll",
      1
    },
    {
      "PushRollEnd",
      5,
      0,
      "",
      1
    },
    {
      "PushRollWin",
      5,
      0,
      "PushPull.SlotRoll",
      1
    },
    {
      "PushRollSetKeyLeft",
      5,
      0,
      "PushPull.SlotRoll",
      1
    },
    {
      "PushRollGetKeyLeft",
      5,
      0,
      "PushPull.SlotRoll",
      1
    },
    {
      "PushRollLose",
      5,
      0,
      "",
      1
    }
  }
  MakeChar.AddHangPlatformActions(ac, a)
  Hook.SetAsGripAnm(ac, a, false)
  for i = 1, #a do
    act = ac:GetAct(a[i][1])
    act.NodeModifier = 1
    act.RotSpeed = 0
    act.AngleModifierSpeed = 50
    act.IgnoreStraferInTurnAngles = 1
  end
  act = ac:GetAct("PushRollSetKeyLeft")
  act.NextToLaunch = "PushRoll"
  act.PriorityLevel = 11
  MakeChar.ActEvent(act, "SET", "PushPull.KeyEvent", 56, 0)
  act = ac:GetAct("PushRollGetKeyLeft")
  act.NextToLaunch = "KeyWalk"
  act.PriorityLevel = 11
  MakeChar.ActEvent(act, "GET", "PushPull.KeyEvent", 22, 1)
  act = ac:GetAct("PushRollInit")
  act.NextToLaunch = "PushRoll"
  act.PriorityLevel = 11
  MakeChar.ActEvent(act, "ChangCam", "", 1, 0)
  act = ac:GetAct("PushRollEnd")
  act.NextToLaunch = "WhipRelax"
  act.PriorityLevel = 11
  act = ac:GetAct("PushRollWin")
  act.NextToLaunch = "WhipRelax"
  act.PriorityLevel = 4096
  act = ac:GetAct("PushRollLose")
  act.NextToLaunch = "WhipRelax"
  act.PriorityLevel = 11
end

function PushPull.SlotRoll(char, SlotTime, Ipos)
  if char.Action ~= "PushRollGetKeyLeft" then
    PushPull.SetOnRollPos(char, SlotTime, Ipos)
  end
  if char.Action == "PushRoll" or char.Action == "PushRollWin" then
    PushPull.RollSyncSlot(char, SlotTime, Ipos)
  end
end

function PushPull.SetOnRollPos(char, SlotTime, Ipos)
  local obj = char.oSelectedEntity
  local DiffAng
  if obj.uData.LnkAng == 0 then
    DiffAng = -obj.uData.DiffAng
  else
    DiffAng = obj.uData.DiffAng
  end
  char.uData.Push_iAng = Game.EqInterp(char.uData.Push_iAng, 1, SlotTime * 4)
  DiffAng = DiffAng * char.uData.Push_iAng
  local Gang = V3D(0, obj.Ang.y, 0)
  if 1 <= obj.uData.char_itimy then
    char.JustPos = obj.Pos + obj.uData.LnkPos:rot(Gang)
  else
    obj.uData.char_itimy = obj.uData.char_itimy + SlotTime * 3
    local i = obj.uData.char_itimy
    local ii = 1 - i
    char.JustPos = (obj.Pos + obj.uData.LnkPos:rot(Gang)) * i + obj.uData.char_JustPos * ii
  end
  char.JustAng = V3D(0, Game.NormAng(obj.Ang.y + obj.uData.LnkAng), 0)
  char.JustViewAng = V3D(0, Game.NormAng(obj.Ang.y + obj.uData.LnkAng), 0)
  char.DisplAng = 0
  char.owc.ForceCenterCameraVal = 1
  obj.Action = "Go"
  obj.oActCtrl:Pause()
end

function PushPull.RollSyncSlot(char, SlotTime, Ipos)
  local mechanism = char.oSelectedEntity
  if char.Action == "PushRollWin" and mechanism.Action ~= "Win" then
    mechanism.ForceAction = "Win"
  end
  mechanism.oActCtrl:ResetPrimaryAction()
  mechanism.oActCtrl:IncActionTime(0, player.oActCtrl.AnimTime)
  MecanismoPared.TurnSlot(mechanism, SlotTime)
end

function PushPull.SetRollKeyMillInactive(o)
  if o.uData.KeyObject then
    o.UseFunc = "PushPull.RemoveRollKey"
    o.bArrowCanUse = true
  else
    o.UseFunc = ""
    o.bArrowCanUse = false
  end
  o.uData.Limits = {
    o.Ang.y,
    o.Ang.y,
    0
  }
  o.OnObjSlot = ""
  o.CanUseFunc = "PushPull.RollCanUseFunc"
end

function PushPull.RemoveRollKey(char, parent)
  if char.oActCtrl.AnimPriority > 1 or player.isFalling == 1 then
    return
  end
  local obj = parent.uData.KeyObject
  char.SelectedEntity = parent.Name
  parent.uData.LinkPos = V3D(-172, 0, -50)
  parent.uData.TurnSpeed = 0.25
  parent.uData.DiffAng = 70
  PushPull.GetBestLinkPos(char, parent)
  char.ForceAction = "PushRollGetKeyLeft"
  char.Ang = V3D(0, Game.NormAng(parent.Ang.y + parent.uData.LnkAng), 0)
  char.ViewAng = char.Ang
  char.DisplAng = 0
  char:MoveMePos(1, 0.3, parent.Pos + parent.uData.LnkPos:rot(V3D(0, parent.Ang.y, 0)))
  char.uData.PushPullInfo = {parent, obj}
end

function PushPull.CreateEffects(obj)
  FX.InitEffect("EFFECT_PARTICLES\183PUSHPULL_DUST", 1, "FX/PushObject/rotate_dust.ps.xml")
  if FX.BeginEffect("EFFECT_PARTICLES\183PUSHPULL_DUST", "PushPull_" .. obj.Name) then
    FX.SetEffect("EFFECT_PARTICLES\183PUSHPULL_DUST", "", "EmitterLinkToNode 0,0 " .. obj.Name .. "#DC_Base")
    FX.SetEffect("EFFECT_PARTICLES\183PUSHPULL_DUST", "", "EmitterLinkToNode 1,0 " .. obj.Name .. "#DC_Base")
    FX.SetEffect("EFFECT_PARTICLES\183PUSHPULL_DUST", "", "BirthEnabledAll 0")
  end
end

function PushPull.StartTurnFX(obj)
  if FX.IsEffect("EFFECT_PARTICLES\183PUSHPULL_DUST", "PushPull_" .. obj.Name) then
    FX.SetEffect("EFFECT_PARTICLES\183PUSHPULL_DUST", "PushPull_" .. obj.Name, "BirthEnabledAll 1")
  end
end

function PushPull.StopTurnFX(obj)
  if FX.IsEffect("EFFECT_PARTICLES\183PUSHPULL_DUST", "PushPull_" .. obj.Name) then
    FX.SetEffect("EFFECT_PARTICLES\183PUSHPULL_DUST", "PushPull_" .. obj.Name, "BirthEnabledAll 0")
  end
end
