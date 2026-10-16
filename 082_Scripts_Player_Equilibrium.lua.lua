Equilibrium.TimeToMiniGame = 1.5
Equilibrium.TimeToRelaxTransition = 4
Equilibrium.TimeToWalk = 1
Equilibrium.MaxVariation = 30
Equilibrium.FuncMin = 0.063338041305542
Equilibrium.DistFromBorderSqr = 22500
Equilibrium.OnWeb = false
Equilibrium.WebDisp = 0
Equilibrium.miniGameTime = Equilibrium.TimeToMiniGame
Equilibrium.lastFunc = 0
Equilibrium.DeathWhenFalling = true
Equilibrium.currentTrigger = nil
Equilibrium.triggerStart = nil
Equilibrium.triggerEnd = nil
Equilibrium.triggerPos = nil
Equilibrium.triggerHalfLengthSqr = nil
Equilibrium.relaxTimer = 0
Equilibrium.walkTimer = 0
Equilibrium.prevWebDisp = 0
Equilibrium.relaxTransitionFactor = 0
Equilibrium.IntoEquilibriumZone = false

function Equilibrium.main()
  Game.Set("RT_BlendSpiderBridgeDist", 0)
end

function Equilibrium.AddEquilibriumAnims(ac)
  local typo = "Equilibrium"
  Game.Set("EquilibriumDistToSlide", ac.uData.Belmont.DistToSlide)
  Game.Set("CheckEquilibriumCallback", "Equilibrium.OnCheckEquilibriumCallback")
  MakeChar.AddWalkActions(ac, 540, 0, 1, {"Walk"}, typo)
  am = ac:GetAct("EquilibriumWalk")
  am.MinSpeed = 0.1
  am.PriorityLevel = 8000
  am.MaxSpeed = ac.uData.Belmont.MaxWalkSpeed
  am.NodeModifier = -1
  am.OnObjSlot = "Equilibrium.ModifyWebDisp"
  Equilibrium.IgnoreAnimControls(am)
  MakeChar.AddWalkActions(ac, 540, 0, 1, {"Relax"}, typo)
  am = ac:GetAct("EquilibriumRelax")
  am.MinSpeed = 0.1
  am.PriorityLevel = 8000
  am.MaxSpeed = ac.uData.Belmont.MaxWalkSpeed
  am.NodeModifier = -1
  am.OnObjSlot = "Equilibrium.ModifyWebDisp"
  Equilibrium.IgnoreAnimControls(am)
  local NoiseAnm = typo .. "Noise"
  am = MakeChar.CreateRelaxAction(ac, 0, NoiseAnm, NoiseAnm, 1)
  am.NodeModifier = -1
  am.PriorityLevel = 9000
  am.AngleModifierSpeed = 1
  am.InterpTime = 0.3
  am.Chanel = 3
  am.OnObjSlot = "Equilibrium.NoSlide"
  Equilibrium.IgnoreAnimControls(am)
  local ev
  local maxEvents = 10
  for i = 1, maxEvents do
    ev = am:NewEvent((i - 1) * (1 / maxEvents) * am.AnmTotalTime)
    ev.Name = "N"
    ev.Func = "!CheckEquilibrium"
  end
  NoiseAnm = typo .. "NoiseLeft"
  am = MakeChar.CreateRelaxAction(ac, 0, NoiseAnm, NoiseAnm, 1)
  am.NodeModifier = -1
  am.PriorityLevel = 9000
  am.AngleModifierSpeed = 1
  am.InterpTime = 0.3
  am.Chanel = 3
  am.OnObjSlot = "Equilibrium.SlideLeft"
  Equilibrium.IgnoreAnimControls(am)
  for i = 1, maxEvents do
    ev = am:NewEvent((i - 1) * (1 / maxEvents) * am.AnmTotalTime)
    ev.Name = "L"
    ev.Func = "!CheckEquilibrium"
  end
  NoiseAnm = typo .. "NoiseRight"
  am = MakeChar.CreateRelaxAction(ac, 0, NoiseAnm, NoiseAnm, 1)
  am.NodeModifier = -1
  am.PriorityLevel = 9000
  am.AngleModifierSpeed = 1
  am.InterpTime = 0.3
  am.Chanel = 3
  am.OnObjSlot = "Equilibrium.SlideRight"
  Equilibrium.IgnoreAnimControls(am)
  for i = 1, maxEvents do
    ev = am:NewEvent((i - 1) * (1 / maxEvents) * am.AnmTotalTime)
    ev.Name = "R"
    ev.Func = "!CheckEquilibrium"
  end
  MakeChar.AddMove(ac, "EquilibriumShake", "EquilibriumShake", 0, 0, 0)
  am = ac:GetAct("EquilibriumShake")
  am.PriorityLevel = 10000
  am.InterpTime = 0.3
  am.OnObjSlot = "Equilibrium.ModifyWebDisp"
  Equilibrium.IgnoreAnimControls(am)
  ev = am:NewEvent(am.TimeOfFrame20)
  ev.Func = "!EquilibriumHangFallEvent"
  ev.Name = "Begin_Equilibrium_Hold_Trigger"
  ev = am:NewEvent(am.TimeOfFrame36)
  ev.Func = "!EquilibriumHangFallEvent"
  ev.Name = "Check_EquilibriumShakeFall"
  ev.Discardable = 0
  ev = am:NewEvent(am.AnmTotalTime)
  ev.Func = "!RestoreEquilibrium"
  ev.Name = "RestoreEquilibrium"
  ev = am:NewEvent(am.AnmTotalTime)
  ev.Func = "Equilibrium.RestoreFromFall"
  ev.Name = "RestoreFromFall"
  MakeChar.AddMove(ac, "EquilibriumShakeLeft", "EquilibriumShakeLeft", 0, 0, 0)
  am = ac:GetAct("EquilibriumShakeLeft")
  am.PriorityLevel = 10000
  am.InterpTime = 0
  am.OnObjSlot = "Equilibrium.ModifyWebDisp"
  Equilibrium.IgnoreAnimControls(am)
  ev = am:NewEvent(am.TimeOfFrame12)
  ev.Func = "!EquilibriumHangFallEvent"
  ev.Name = "Begin_Equilibrium_Hold_Trigger"
  ev = am:NewEvent(am.TimeOfFrame36)
  ev.Func = "!EquilibriumHangFallEvent"
  ev.Name = "Check_EquilibriumShakeLeftFall"
  ev.Discardable = 0
  ev = am:NewEvent(am.AnmTotalTime)
  ev.Func = "!RestoreEquilibrium"
  ev.Name = "RestoreEquilibrium"
  ev = am:NewEvent(am.AnmTotalTime)
  ev.Func = "Equilibrium.RestoreFromFall"
  ev.Name = "RestoreFromFall"
  MakeChar.AddMove(ac, "EquilibriumShakeRight", "EquilibriumShakeRight", 0, 0, 0)
  am = ac:GetAct("EquilibriumShakeRight")
  am.PriorityLevel = 10000
  am.InterpTime = 0
  am.OnObjSlot = "Equilibrium.ModifyWebDisp"
  Equilibrium.IgnoreAnimControls(am)
  ev = am:NewEvent(am.TimeOfFrame12)
  ev.Func = "!EquilibriumHangFallEvent"
  ev.Name = "Begin_Equilibrium_Hold_Trigger"
  ev = am:NewEvent(am.TimeOfFrame36)
  ev.Func = "!EquilibriumHangFallEvent"
  ev.Name = "Check_EquilibriumShakeRightFall"
  ev.Discardable = 0
  ev = am:NewEvent(am.AnmTotalTime)
  ev.Func = "!RestoreEquilibrium"
  ev.Name = "RestoreEquilibrium"
  ev = am:NewEvent(am.AnmTotalTime)
  ev.Func = "Equilibrium.RestoreFromFall"
  ev.Name = "RestoreFromFall"
  MakeChar.AddMove(ac, "EquilibriumShakeLeftFall", "EquilibriumShakeLeftFall", 0, 0, 0)
  am = ac:GetAct("EquilibriumShakeLeftFall")
  MakeChar.SetAirActionProperties(am)
  am.PriorityLevel = 15000
  am.InterpTime = 0.075
  am.IgnoreCollision = 1
  Equilibrium.IgnoreAnimControls(am)
  ev = am:NewEvent(0)
  ev.Func = "Equilibrium.StartFalling"
  ev.Name = "StartFalling"
  ev = am:NewEvent(am.TimeOfFrame16)
  ev.Func = "Equilibrium.Death"
  ev.Name = "Death"
  MakeChar.AddMove(ac, "EquilibriumShakeRightFall", "EquilibriumShakeRightFall", 0, 0, 0)
  am = ac:GetAct("EquilibriumShakeRightFall")
  MakeChar.SetAirActionProperties(am)
  am.PriorityLevel = 15000
  am.InterpTime = 0.075
  am.IgnoreCollision = 1
  Equilibrium.IgnoreAnimControls(am)
  ev = am:NewEvent(0)
  ev.Func = "Equilibrium.StartFalling"
  ev.Name = "StartFalling"
  ev = am:NewEvent(am.TimeOfFrame16)
  ev.Func = "Equilibrium.Death"
  ev.Name = "Death"
  MakeChar.AddMove(ac, "EquilibriumShakeFall", "EquilibriumShakeFall", 0, 0, 0)
  am = ac:GetAct("EquilibriumShakeFall")
  MakeChar.SetAirActionProperties(am)
  am.PriorityLevel = 15000
  am.InterpTime = 0.075
  am.IgnoreCollision = 1
  Equilibrium.IgnoreAnimControls(am)
  ev = am:NewEvent(0)
  ev.Func = "Equilibrium.StartFalling"
  ev.Name = "StartFalling"
  ev = am:NewEvent(am.TimeOfFrame16)
  ev.Func = "Equilibrium.Death"
  ev.Name = "Death"
end

function Equilibrium.CanFall()
  local canFall = true
  if Equilibrium.triggerStart and Equilibrium.triggerEnd then
    local distStartSqr = (player.Pos - Equilibrium.triggerStart):mod_sqr()
    local distEndSqr = (player.Pos - Equilibrium.triggerEnd):mod_sqr()
    if distStartSqr <= Equilibrium.DistFromBorderSqr or distEndSqr <= Equilibrium.DistFromBorderSqr then
      canFall = false
    end
  end
  return canFall
end

function Equilibrium.OnCheckEquilibriumCallback(actionName)
  local setAction = player.Action ~= "EquilibriumNoise" and Equilibrium.CanFall() or player.Action == "EquilibriumNoise"
  if setAction then
    player.Action = actionName
  end
end

function Equilibrium.ModifyWebDisp(char, SlotTime, Ipos)
  if not Equilibrium.OnWeb then
    MissionUtils.DoInterpTgt(player, {
      [1] = 0.5,
      [2] = "s",
      JustYModelDisp = player.uData.InitialJustYModelDisp
    })
  else
    local f = 0
    if Equilibrium.triggerPos and Equilibrium.triggerHalfLengthSqr then
      f = 1 - (player.Pos - Equilibrium.triggerPos):mod_sqr() / Equilibrium.triggerHalfLengthSqr
      f = clamp(0, 1, f)
    end
    local prevRelaxTimer = Equilibrium.relaxTimer
    Equilibrium.relaxTimer = Equilibrium.relaxTimer + SlotTime
    local x = Equilibrium.FuncMin + Equilibrium.relaxTimer / Equilibrium.TimeToRelaxTransition
    local variation = Equilibrium.MaxVariation
    if player.Action ~= "EquilibriumWalk" and player.Action ~= "EquilibriumRelax" then
      variation = Equilibrium.MaxVariation * 1.5
    end
    local stopped = player.Action == "EquilibriumRelax"
    local isReallyStopped = stopped and (Equilibrium.WebDisp > Equilibrium.prevWebDisp or 0 < prevRelaxTimer) and variation == Equilibrium.MaxVariation
    if not isReallyStopped then
      if not stopped then
        Equilibrium.relaxTimer = 0
      end
      Equilibrium.relaxTransitionFactor = 0
      Equilibrium.walkTimer = Equilibrium.walkTimer + SlotTime
      if Equilibrium.walkTimer > Equilibrium.TimeToWalk then
        Equilibrium.walkTimer = Equilibrium.walkTimer - Equilibrium.TimeToWalk
      end
      Equilibrium.prevWebDisp = Equilibrium.WebDisp
      Equilibrium.WebDisp = Game.Factorize("os", Equilibrium.walkTimer / Equilibrium.TimeToWalk) * f * variation
    else
      if Equilibrium.relaxTimer > Equilibrium.TimeToRelaxTransition then
        Equilibrium.relaxTimer = Equilibrium.TimeToRelaxTransition
      end
      Equilibrium.relaxTransitionFactor = Game.Factorize("oooiszI", x) * f
      Equilibrium.WebDisp = Equilibrium.prevWebDisp + Equilibrium.relaxTransitionFactor * 5
    end
    player.JustYModelDisp = player.uData.InitialJustYModelDisp - Equilibrium.WebDisp
  end
end

function Equilibrium.OnPlayerEnter()
  print("'Equilibrium.OnPlayerEnter' is deprecated!!!")
end

function Equilibrium.OnPlayerExit()
  print("'Equilibrium.OnPlayerExit' is deprecated!!!")
end

function Equilibrium.OnNewPlayerEnter()
  if Equilibrium.IntoEquilibriumZone then
    return
  end
  local mountedEnt = AISpec.GetEntityMountedByPlayer()
  if mountedEnt and mountedEnt.oActCtrl.oActClass.Name == "SpiderGiant" then
    return
  end
  local ent = Game.UsrEntity(0)
  if ent then
    Equilibrium.IntoEquilibriumZone = true
    ent.ExtraSufix = "Equilibrium"
    ent.bEquilibriumMode = true
    ent.ForceAction = "EquilibriumRelax"
    ent.Action = "EquilibriumNoise"
    ent.oActCtrl.AddDispVel = V3D(0, 0, 0)
    ent.oActCtrl.ActionRotSpeed = 0
    if ent.uData.GripCallbacks == nil then
      ent.uData.GripCallbacks = {}
      ent.uData.GripCallbacks.GripAction = ent.oActCtrl.oActClass.GripAction
      ent.uData.GripCallbacks.GripRelease = ent.oActCtrl.oActClass.GripRelease
      ent.uData.GripCallbacks.GripPress = ent.oActCtrl.oActClass.GripPress
      ent.oActCtrl.oActClass.GripAction = ""
      ent.oActCtrl.oActClass.GripRelease = ""
      ent.oActCtrl.oActClass.GripPress = ""
    end
    ent.owc.Special = 0
    ent.owc.SpecialPlus = 0
    ent.owc.TakeSpecial = 0
    ent.owc.TakeSpecialPlus = 0
    ent.oActCtrl.oActClass.UseParrying = 0
  end
  if Equilibrium.OnWeb then
    Equilibrium.WebDisp = 0
    Game.Set("RT_BlendSpiderBridgeDist", Game.Def("RT_BlendSpiderBridgeDist"))
  end
end

function Equilibrium.OnNewPlayerExit(setAction)
  if not Equilibrium.IntoEquilibriumZone then
    return
  end
  local mountedEnt = AISpec.GetEntityMountedByPlayer()
  if mountedEnt and mountedEnt.oActCtrl.oActClass.Name == "SpiderGiant" then
    return
  end
  setAction = defparam(setAction, true)
  local ent = Game.UsrEntity(0)
  if ent then
    Equilibrium.IntoEquilibriumZone = false
    ent.ExtraSufix = ""
    if setAction and ent.Action ~= "WhipFallHit" then
      ent.ForceAction = "Relax"
      ent.ForceDefLoop = "Relax"
    end
    ent.bEquilibriumMode = false
    ent.oActCtrl.StopSecondary = 3
    if ent.uData.GripCallbacks then
      ent.oActCtrl.oActClass.GripAction = ent.uData.GripCallbacks.GripAction
      ent.oActCtrl.oActClass.GripRelease = ent.uData.GripCallbacks.GripRelease
      ent.oActCtrl.oActClass.GripPress = ent.uData.GripCallbacks.GripPress
      ent.uData.GripCallbacks = nil
    end
    ent.oActCtrl.oActClass.UseParrying = 1
    ent.oActCtrl.RotSpeed = -1
  end
  if Equilibrium.OnWeb then
    Game.Set("RT_BlendSpiderBridgeDist", 0)
  end
  Equilibrium.OnWeb = false
end

function Equilibrium.IgnoreAnimControls(am)
  if not am.uData.CD then
    am.uData.CD = {}
  end
  am.uData.CD.PressArea = "-DoNothing"
  am.uData.CD.PressDirect = "-DoNothing"
  am.uData.CD.PressDagger = "-DoNothing"
  am.uData.CD.PressVial = "-DoNothing"
  am.uData.CD.PressCrystal = "-DoNothing"
  am.uData.CD.PressFairy = "-DoNothing"
  am.uData.CD.PressGrip = "-DoNothing"
  am.uData.CD.PressJump = "-DoNothing"
end

function Equilibrium.NoSlide(ent, TimeDiff)
  Equilibrium.lastFunc = 0
  ent.oActCtrl.AddDispVel = V3D(0, 0, 0)
  Equilibrium.miniGameTime = Equilibrium.TimeToMiniGame
  local stopped = player.Action == "EquilibriumRelax"
  if not stopped and Equilibrium.CanFall() then
    local dist = V2D(ent.owc.Walk, ent.owc.Str):mod()
    local dirAng = V3D(0, 0, 1):rot(V3D(0, player.owc.WorldControlAng, 0))
    local disp = dirAng * 20 * dist
    local colPos = V3D(0, 0, 0)
    local collision = false
    collision, colPos = Game.WorldLineTest(ent.Pos + disp, ent.Pos - V3D(0, 300, 0) + disp, ent.Name)
    if not collision then
      ent.oActCtrl.StopSecondary = 3
      ent.bEquilibriumMode = false
      ent.ForceAction = "EquilibriumShake"
    end
  end
end

function Equilibrium.SlideLeft(ent, TimeDiff)
  if Equilibrium.lastFunc ~= 1 then
    Equilibrium.lastFunc = 1
    Equilibrium.miniGameTime = Equilibrium.TimeToMiniGame
  end
  if ent.owc.Grip == 0 then
    local velParam = ent.oActCtrl.oActClass.uData.Belmont.SlideVel
    if ent.isWalking == 0 then
      velParam = 0
    end
    ent.oActCtrl.AddDispVel = V3D(velParam, 0, 0)
  end
  Equilibrium.miniGameTime = Equilibrium.miniGameTime - TimeDiff
  if Equilibrium.miniGameTime <= 0 then
    ent.oActCtrl.StopSecondary = 3
    ent.bEquilibriumMode = false
    ent:MoveMePos(1, 0.1, ent.Pos + V3D(0, 0, 20):rot(ent.Ang + V3D(0, -90, 0)))
    ent.ForceAction = "EquilibriumShakeLeft"
    Equilibrium.miniGameTime = Equilibrium.TimeToMiniGame
  end
end

function Equilibrium.SlideRight(ent, TimeDiff)
  if Equilibrium.lastFunc ~= 2 then
    Equilibrium.lastFunc = 2
    Equilibrium.miniGameTime = Equilibrium.TimeToMiniGame
  end
  if ent.owc.Grip == 0 then
    local velParam = -ent.oActCtrl.oActClass.uData.Belmont.SlideVel
    if ent.isWalking == 0 then
      velParam = 0
    end
    ent.oActCtrl.AddDispVel = V3D(velParam, 0, 0)
  end
  Equilibrium.miniGameTime = Equilibrium.miniGameTime - TimeDiff
  if Equilibrium.miniGameTime <= 0 then
    ent.oActCtrl.StopSecondary = 3
    ent.bEquilibriumMode = false
    ent:MoveMePos(1, 0.1, ent.Pos + V3D(0, 0, 20):rot(ent.Ang + V3D(0, 90, 0)))
    ent.ForceAction = "EquilibriumShakeRight"
    Equilibrium.miniGameTime = Equilibrium.TimeToMiniGame
  end
end

function Equilibrium.StartFalling(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  ent.bIsFalling = true
  if Equilibrium.OnWeb then
    Game.Set("RT_BlendSpiderBridgeDist", 0)
  end
end

function Equilibrium.Death(EntityName, EventName, Time)
  Game.DoCharTurnOnEntity(EntityName, 180, "WhipFallHit")
  Equilibrium.OnNewPlayerExit(false)
  local ent = Game.GetEntity(EntityName)
  if ent.uData.InitialJustYModelDisp then
    ent.JustYModelDisp = ent.uData.InitialJustYModelDisp
  end
  if Equilibrium.DeathWhenFalling then
    if Team.isFallSafe() then
      addSF(0, "", "Equilibrium.DiePlayerDie")
    else
      ent:SetNoneCollisionMask()
      ent.bShowNode_OB_Gabriel_Latigo = false
      ent.Life = 0
    end
  else
    Act.GetClass("Belmont"):GetAct("WhipFallHit").CheckClimb = 0
    addSF(1, "", "Equilibrium.RestoreClimb")
  end
end

function Equilibrium.DiePlayerDie()
  player.ForceDefLoop = "Relax"
  Team.PlayerFallDeath(true)
end

function Equilibrium.RestoreClimb()
  Act.GetClass("Belmont"):GetAct("WhipFallHit").CheckClimb = 1
end

function Equilibrium.RestoreFromFall(EntityName, EventName, Time)
  Equilibrium.relaxTimer = 0
end

function Equilibrium.SetCurrentTrigger(triggerName)
  Equilibrium.currentTrigger = Game.GetEntity(triggerName)
  if Equilibrium.currentTrigger then
    local triggerDim = Equilibrium.currentTrigger.Box00Dim
    local triggerAng = Equilibrium.currentTrigger.Box00Rot
    local triggerPos = Equilibrium.currentTrigger.Box00Pos
    local triggerLength = triggerDim.x
    local baseVector = V3D(-1, 0, 0)
    if triggerLength < triggerDim.z then
      triggerLength = triggerDim.z
      baseVector = V3D(0, 0, -1)
    end
    local disp = baseVector:rot(triggerAng) * triggerLength
    Equilibrium.triggerStart = triggerPos + disp
    Equilibrium.triggerEnd = triggerPos - disp
    Equilibrium.triggerPos = triggerPos
    Equilibrium.triggerHalfLengthSqr = (Equilibrium.triggerEnd - triggerPos):mod_sqr()
  end
end

function Equilibrium.UnsetCurrentTrigger()
  Equilibrium.currentTrigger = nil
  Equilibrium.triggerStart = nil
  Equilibrium.triggerEnd = nil
  Equilibrium.triggerPos = nil
  Equilibrium.triggerHalfLengthSqr = nil
end

function Equilibrium.RenderDebug()
  DebugDraw.DrawSphere(Equilibrium.triggerStart, 100, V3D(255, 0, 0))
  DebugDraw.DrawSphere(Equilibrium.triggerEnd, 100, V3D(0, 0, 0))
end
