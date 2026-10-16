function MiniGames.main()
  MiniGames.WargGreatIntro = false
  
  MiniGames.LastButton = Game.GVar("LastMiniGameButtonId")
end

function MiniGames.UpDownMiniGameWinCall()
  player.uData.Arbol.Action = "Open"
  player.uData.Arbol.uData.Cadena.bUseMapCheck = false
  _G[player.uData.DescriptorName].EstamosJugando = 0
  player.uData.Arbol:ResetMapCollision(false, false, false)
  player.uData.Arbol.bArrowCanUse = false
end

function MiniGames.UpDownMiniGameLoseCall()
  player.uData.Arbol.uData.Cadena.bObjectVisible = false
  player.uData.Arbol.bArrowCanUse = false
  _G[player.uData.DescriptorName].EstamosJugando = 0
  _G[player.uData.DescriptorName].agarre = false
  addSF(1, "", "MiniGames.ReturnUpDownArrow", player.uData.Arbol.Name)
end

function MiniGames.CrushButtonMiniGameWinCall()
  player.uData.CrushButtonObj.Action = "Open"
  player.uData.CrushButtonObj.uData.Cadena.bUseMapCheck = false
  _G[player.uData.DescriptorName].EstamosJugando = 0
  player.uData.CrushButtonObj:ResetMapCollision(false, false, false)
  player.uData.CrushButtonObj.bArrowCanUse = false
end

function MiniGames.CrushButtonMiniGameLoseCall()
  player.uData.CrushButtonObj.uData.Cadena.bObjectVisible = false
  player.uData.CrushButtonObj.bArrowCanUse = false
  _G[player.uData.DescriptorName].EstamosJugando = 0
  _G[player.uData.DescriptorName].agarre = false
  addSF(1, "", "MiniGames.ReturnUpDownArrow", player.uData.CrushButtonObj.Name)
end

function MiniGames.ReturnUpDownArrow(entityName)
  Game.GetEntity(entityName).bArrowCanUse = true
end

function MiniGames.GetRandomButton()
  local candidate = math.floor(Game.Rand(0, 3.9))
  local isMessage = Scorer.IsMessageTextActive()
  if MiniGames.LastButton.Value == candidate then
    candidate = candidate + 1
    if 3 < candidate then
      candidate = 0
    end
  end
  if isMessage then
    Game.ConsoleError("Hay mensaje en minijuego\n")
  end
  if isMessage and candidate == 1 then
    candidate = 2
  end
  MiniGames.LastButton.Value = candidate
  return candidate
end

function MiniGames.LaunchMoment(entityName, args, time)
  local param = Game.Split(args, ",")
  local offsetStartTime = param[1]
  local totalTime = param[2]
  MiniGames.FailureAnim = param[3]
  MiniGames.DamageAnim = param[4]
  MiniGames.DirectKill = param[5]
  MiniGames.AreaKill = param[5]
  if param[6] then
    MiniGames.AreaKill = param[6]
  end
  local successPerc = 0.4
  if param[7] then
    local candidate = tonumber(param[7])
    if candidate and 0 < candidate then
      successPerc = candidate
    end
  end
  Game.ConsoleError("Tiempo de exito: " .. successPerc .. "\n")
  MiniGames.Entity = entityName
  local tgt = Game.GetEntity(Game.GetEntity(MiniGames.Entity).TgtEntity)
  local MinVal = 0.2
  local MaxVal = 1
  local mg = tgt.oActCtrl.oActClass.uData.MiniGames
  if mg then
    MinVal = mg.MinValMoment
    MaxVal = mg.MaxValMoment
  end
  local totalMgTime = tonumber(totalTime)
  if MapTutorials and MapTutorials.TutorialCatch then
    MinVal = 0.4
    totalMgTime = 4
  end
  Game.Set("PressGameType", 0)
  Game.Set("PressMomentGameSuccess", successPerc)
  Game.Set("PressMomentGameStartTime", Game.GetAbsoluteTime() + offsetStartTime)
  Game.Set("PressMomentGameTotalTime", totalMgTime)
  Game.Set("PressMomentGameUseAreaAttack", 1)
  Game.Set("PressMomentGameCallback", "MiniGames.MiniGameMomentCallback")
  Energy.Disable()
  if MapInit.FirstMomentCatch then
    MapInit.FirstMomentCatch = false
    Game.SetTimeSpeed(0.2)
    MiniGames.FirstMomentCatch = true
    IgnoreWrongPressGame.Value = true
  end
  MiniGames.LastMomentWon = false
end

function MiniGames.MiniGameMomentCallback(result, buttonPressed)
  local ent = Game.GetEntity(MiniGames.Entity)
  local tgtEntityName = ent.TgtEntity
  if result == 0 or result == 1 then
    MiniGames.MomentIterationsLeft = nil
    ent.oActCtrl:SetAction(MiniGames.FailureAnim, true)
    Tips.SetTimestamp("MinigameMomentFail")
  else
    local canFinish = true
    if MiniGames.DirectKill ~= "none" and canFinish then
      MiniGames.MomentIterationsLeft = nil
      if buttonPressed == 1 then
        ent.oActCtrl:SetAction(MiniGames.DirectKill, true)
      else
        ent.oActCtrl:SetAction(MiniGames.AreaKill, true)
      end
      Tips.SetTimestamp("MinigameMomentFail")
    end
    MiniGames.LastMomentWon = true
  end
  ent.uData.InMiniGame = false
  Energy.Enable()
  if MiniGames.FirstMomentCatch then
    MiniGames.FirstMomentCatch = false
    Game.SetTimeSpeed(1)
    IgnoreWrongPressGame.Value = false
  end
end

function MiniGames.LaunchMomentCustomized(entityName, args, time)
  local param = Game.Split(args, ",")
  local offsetStartTime = param[1]
  local totalTime = param[2]
  local difficulty = param[3]
  if player.uData.NaiadDifficulty ~= nil then
    totalTime = totalTime * player.uData.NaiadDifficulty
    print(totalTime)
  else
    Game.ConsoleError("player.uData.NaiadDifficulty == nil \n")
  end
  MiniGames.FailureAnim = param[4]
  MiniGames.DamageAnim = param[5]
  MiniGames.DirectKill = param[6]
  MiniGames.AreaKill = param[6]
  if param[7] then
    MiniGames.AreaKill = param[7]
  end
  MiniGames.Entity = entityName
  Game.Set("PressGameType", 0)
  Game.Set("PressMomentGameSuccess", difficulty + 0)
  Game.Set("PressMomentGameStartTime", Game.GetAbsoluteTime() + offsetStartTime)
  Game.Set("PressMomentGameTotalTime", tonumber(totalTime))
  Game.Set("PressMomentGameUseAreaAttack", 1)
  Game.Set("PressMomentGameCallback", "MiniGames.MiniGameMomentCustomizedCallback")
  Energy.Disable()
end

function MiniGames.MiniGameMomentCustomizedCallback(result, buttonPressed)
  local ent = Game.GetEntity(MiniGames.Entity)
  local tgtEntityName = ent.TgtEntity
  if result == 0 or result == 1 then
    MiniGames.MomentIterationsLeft = nil
    WeaponsCombo.TriggerAction(ent, {
      MiniGames.FailureAnim,
      {}
    }, ent.AimEntity, tgtEntityName, ent.uData.LastTrigeredLink)
    Tips.SetTimestamp("MinigameMomentFail")
  else
    if MiniGames.MomentIterationsLeft ~= nil then
      Game.ConsoleError("Iterations left: " .. MiniGames.MomentIterationsLeft .. "\n")
    end
    if MiniGames.MomentIterationsLeft ~= nil then
      MiniGames.MomentIterationsLeft = MiniGames.MomentIterationsLeft - 1
    end
    local canFinish = MiniGames.MomentIterationsLeft == nil or 0 >= MiniGames.MomentIterationsLeft
    if MiniGames.DirectKill ~= "none" and canFinish then
      MiniGames.MomentIterationsLeft = nil
      if buttonPressed == 1 then
        ent.oActCtrl:SetAction(MiniGames.DirectKill, true)
      else
        ent.oActCtrl:SetAction(MiniGames.AreaKill, true)
      end
      Tips.SetTimestamp("MinigameMomentFail")
    end
  end
  ent.uData.InMiniGame = false
  Energy.Enable()
end

function MiniGames.LaunchSpeed(entityName, args, time)
  local param = Game.Split(args, ",")
  local acceleration = tonumber(param[1])
  if acceleration < 0 then
    acceleration = -acceleration
    MiniGames.InvertAnim = true
  else
    MiniGames.InvertAnim = false
  end
  local pressSpeedFrecuency = param[2]
  local pressSpeedGameTimeUp = param[3]
  local pressSpeedGameTimeDown = param[4]
  MiniGames.Anim = param[5]
  MiniGames.FailAnim = param[6]
  MiniGames.WinAnim = param[7]
  MiniGames.Entity = entityName
  local ent = Game.GetEntity(entityName)
  local tgt = Game.GetEntity(ent.TgtEntity)
  ent.IgnoreUsrControl = 1
  MiniGames.SpeedTypeRelax = defparam(tonumber(param[8]), 0)
  ent.oActCtrl:SetAction(MiniGames.Anim, true)
  if MiniGames.SpeedTypeRelax == 0 then
    ent.oActCtrl:Pause()
  end
  if tgt ~= nil or MiniGames.SpeedTypeRelax == 1 then
    Game.Set("PressSpeedCancelable", false)
    if MiniGames.SpeedTypeRelax == 0 and tgt.oActCtrl then
      tgt.oActCtrl:SetAction(MiniGames.Anim, true)
      tgt.IgnoreUsrControl = 1
      tgt.oActCtrl:Pause()
    end
  else
    Game.Set("PressSpeedCancelable", true)
  end
  local baseNoiseFactor = defparam(tonumber(param[9]), 0)
  Game.Set("PressSpeedGameBaseNoise", baseNoiseFactor)
  local noiseFactor = defparam(tonumber(param[10]), 0.666)
  Game.Set("PressSpeedGameNoise", noiseFactor)
  Game.Set("PressGameType", 1)
  Game.Set("PressSpeedGameType", MiniGames.GetRandomButton())
  Game.Set("PressSpeedGamePos", 0.5)
  Game.Set("PressSpeedGameShowBar", 0)
  Game.Set("PressSpeedAcceleration", acceleration)
  Game.Set("PressSpeedFrecuency", tonumber(pressSpeedFrecuency))
  Game.Set("PressSpeedGameTimeUp", tonumber(pressSpeedGameTimeUp))
  Game.Set("PressSpeedGameTimeDown", tonumber(pressSpeedGameTimeDown))
  if MiniGames.SpeedTypeRelax == 1 then
    Game.Set("PressSpeedGameCallback", "MiniGames.MiniGameSpeedCallbackRelax")
    MiniGames.TimeWebMiniGameBegins = Game.GetTime()
    MiniGames.MinTimeForPoison = pressSpeedGameTimeDown + 1
    Game.Set("SpiderMinigameNoAttackLimit", MiniGames.TimeWebMiniGameBegins + MiniGames.MinTimeForPoison)
  else
    Game.Set("PressSpeedGameCallback", "MiniGames.MiniGameSpeedCallback")
  end
  ent.uData.InMiniGame = true
  Energy.Disable()
  Game.Set("MsgActive", false)
end

function MiniGames.LaunchSpeedSpecial(entityName, args, time)
  local param = Game.Split(args, ",")
  local acceleration = tonumber(param[1])
  if acceleration < 0 then
    acceleration = -acceleration
    MiniGames.InvertAnim = true
  else
    MiniGames.InvertAnim = false
  end
  local pressSpeedFrecuency = param[2]
  local pressSpeedGameTimeUp = param[3]
  local pressSpeedGameTimeDown = param[4]
  MiniGames.Anim = param[5]
  MiniGames.FailAnim = param[6]
  MiniGames.WinAnim = param[7]
  MiniGames.Entity = entityName
  local ent = Game.GetEntity(entityName)
  local tgt = Game.GetEntity(ent.TgtEntity)
  ent.IgnoreUsrControl = 1
  MiniGames.SpeedTypeRelax = defparam(tonumber(param[8]), 0)
  ent.oActCtrl:SetAction(MiniGames.Anim, true)
  if MiniGames.SpeedTypeRelax == 0 then
    ent.oActCtrl:Pause()
  end
  if tgt ~= nil then
    tgt.IgnoreUsrControl = 1
    tgt.oActCtrl:SetAction(MiniGames.Anim, true)
    if MiniGames.SpeedTypeRelax == 0 then
      tgt.oActCtrl:Pause()
    end
  end
  Game.Set("PressSpeedGameBaseNoise", 0)
  Game.Set("PressSpeedGameNoise", 0.666)
  local miniGameInstance = Scorer.GetItem(0, "SpeedSpecial")
  miniGameInstance.LogicPos = 0.5
  miniGameInstance.Acceleration = acceleration
  miniGameInstance.Frecuency = tonumber(pressSpeedFrecuency)
  miniGameInstance.TimeUp = tonumber(pressSpeedGameTimeUp)
  miniGameInstance.TimeDown = tonumber(pressSpeedGameTimeDown)
  if MiniGames.SpeedTypeRelax == 1 then
    miniGameInstance.UpdateCallBack = "MiniGames.MiniGameSpeedCallbackRelax"
    MiniGames.TimeWebMiniGameBegins = Game.GetTime()
    MiniGames.MinTimeForPoison = miniGameInstance.TimeDown + AISpec.GetBehavParamValue("SpiderGiant", "WebAdvantageTime")
  else
    miniGameInstance.UpdateCallBack = "MiniGames.MiniGameSpeedCallback"
  end
  ent.uData.InMiniGame = true
  Energy.Disable()
  miniGameInstance.Enable = true
  Game.Set("MsgActive", false)
end

function MiniGames.MiniGameSpeedCallback(iPos, special)
  local special = defparam(special, 0)
  if MiniGames.InvertAnim then
    iPos = 1 - iPos
  end
  local ent = Game.GetEntity(MiniGames.Entity)
  local tgt = Game.GetEntity(ent.TgtEntity)
  if ent.Action ~= MiniGames.Anim then
    Energy.Enable()
    ent.uData.InMiniGame = false
    if special == 1 then
      Scorer.GetItem(0, "SpeedSpecial").Enable = false
    else
      Game.Set("PressSpeedGameCallback", "")
    end
    ent.oActCtrl:ContinuePlaying()
    ent.IgnoreUsrControl = 0
    if tgt ~= nil and tgt.oActCtrl ~= nil then
      tgt.oActCtrl:ContinuePlaying()
      tgt.IgnoreUsrControl = 0
    end
    Game.Set("MsgActive", true)
    return
  end
  if iPos <= 0 then
    Game.Log("Win\n", 1)
    Energy.Enable()
    if MiniGames.InvertAnim then
      ent.oActCtrl:SetAction(MiniGames.FailAnim, true)
    else
      ent.oActCtrl:SetAction(MiniGames.WinAnim, true)
    end
    ent.oActCtrl:ContinuePlaying()
    ent.IgnoreUsrControl = 0
    if tgt ~= nil and tgt.oActCtrl ~= nil then
      tgt.Action = ent.Action
      tgt.oActCtrl:ContinuePlaying()
      tgt.IgnoreUsrControl = 0
    end
    if special == 1 then
      Scorer.GetItem(0, "SpeedSpecial").Enable = false
    else
      Game.Set("PressSpeedGameCallback", "")
    end
    if MiniGames.WargGreatIntro == true then
      Camera.FreeCam.NodeName = ""
      MiniGames.WargGreatIntro = false
    end
    Game.Set("MsgActive", true)
  elseif 1 <= iPos then
    Game.Log("Lose\n", 1)
    Tips.SetTimestamp("MinigameSpeedFail")
    if PuenteLevadizoAbad and PuenteLevadizoAbad.oldCam ~= nil then
      local cam = Game.GetEntity(Game.GetCam(0))
      cam.FixedCam = PuenteLevadizoAbad.oldCam
      PuenteLevadizoAbad.oldCam = nil
    end
    if LabF_BreakWallA and LabF_BreakWallA.oldCam ~= nil then
      LabF_BreakWallA.OnFinishBreak()
    end
    if LabF_BreakWallB and LabF_BreakWallB.oldCam ~= nil then
      LabF_BreakWallB.OnFinishBreak()
    end
    Energy.Enable()
    if MiniGames.InvertAnim then
      ent.oActCtrl:SetAction(MiniGames.WinAnim, true)
    else
      ent.oActCtrl:SetAction(MiniGames.FailAnim, true)
    end
    ent.oActCtrl:ContinuePlaying()
    ent.IgnoreUsrControl = 0
    if tgt ~= nil and tgt.oActCtrl ~= nil then
      tgt.Action = ent.Action
      tgt.oActCtrl:ContinuePlaying()
      tgt.IgnoreUsrControl = 0
    end
    if special == 1 then
      Scorer.GetItem(0, "SpeedSpecial").Enable = false
    else
      Game.Set("PressSpeedGameCallback", "")
    end
    if MiniGames.WargGreatIntro == true then
      Camera.FreeCam.NodeName = ""
      MiniGames.WargGreatIntro = false
    end
    Game.Set("MsgActive", true)
  else
    local liPos = 1 - iPos
    ent.oActCtrl:ResetPrimaryAction()
    ent.oActCtrl:IncActionTime(0, ent.oActCtrl.oAction.AnmTotalTime * liPos)
    if tgt ~= nil and tgt.oActCtrl then
      tgt.oActCtrl:ResetPrimaryAction()
      tgt.oActCtrl:IncActionTime(0, tgt.oActCtrl.oAction.AnmTotalTime * liPos)
    end
  end
  ent.uData.InMiniGame = false
end

function MiniGames.MiniGameSpeedCallbackRelax(iPos, special)
  local special = defparam(special, 0)
  local ent = Game.GetEntity(MiniGames.Entity)
  local tgt = Game.GetEntity(ent.TgtEntity)
  if ent.Action ~= MiniGames.Anim and (MiniGames.Anim == "RagDollRelax" or MiniGames.Anim == "WebRelax") then
    Game.Set("PressSpeedGameCallback", "")
    ent.IgnoreUsrControl = 0
    ent.uData.InMiniGame = false
    if MiniGames.Anim == "RagDollRelax" then
      RagDollBugs.EndRagdollMg()
    end
    if MiniGames.Anim == "WebRelax" then
      Belmont.EndSpiderMinigame()
    end
    Game.Set("MsgActive", true)
    return
  end
  if tgt then
    tgt.Pos = ent.Pos + V3D(0, -25, 0)
    tgt.Ang = ent.Ang
    tgt.Action = ent.Action
    tgt.oActCtrl:ResetPrimaryAction()
    tgt.oActCtrl:IncActionTime(0, ent.oActCtrl.AnimTime)
  end
  if iPos <= 0 then
    ent.Action = MiniGames.WinAnim
    ent.IgnoreUsrControl = 0
    if tgt ~= nil then
      tgt.Action = MiniGames.WinAnim
      tgt.IgnoreUsrControl = 0
    end
    if special == 1 then
      Scorer.GetItem(0, "SpeedSpecial").Enable = false
    else
      Game.Set("PressSpeedGameCallback", "")
    end
    ent.uData.InMiniGame = false
    Game.Log("Win\n", 1)
    Energy.Enable()
    Game.Set("MsgActive", true)
  end
  if 1 <= iPos then
    ent.Action = MiniGames.FailAnim
    ent.IgnoreUsrControl = 0
    if tgt ~= nil then
      tgt.Action = MiniGames.FailAnim
      tgt.IgnoreUsrControl = 0
    end
    if special == 1 then
      Scorer.GetItem(0, "SpeedSpecial").Enable = false
    else
      Game.Set("PressSpeedGameCallback", "")
    end
    ent.uData.InMiniGame = false
    Game.Log("Lose\n", 1)
    Tips.SetTimestamp("MinigameSpeedFail")
    if PuenteLevadizoAbad and PuenteLevadizoAbad.oldCam ~= nil then
      local cam = Game.GetEntity(Game.GetCam(0))
      cam.FixedCam = PuenteLevadizoAbad.oldCam
      PuenteLevadizoAbad.oldCam = nil
    end
    Energy.Enable()
    Game.Set("MsgActive", true)
  end
end

function MiniGames.LaunchSpeedFree(entityName, args, time)
  local param = Game.Split(args, ",")
  local acceleration = param[1]
  local pressSpeedFrecuency = param[2]
  local pressSpeedGameTimeUp = param[3]
  local pressSpeedGameTimeDown = param[4]
  MiniGames.Anim = param[5]
  MiniGames.EndAnim = param[6]
  MiniGames.Entity = entityName
  local ent = Game.GetEntity(entityName)
  ent.IgnoreUsrControl = 1
  ent.oActCtrl:Pause()
  ent.oActCtrl:SetAction(MiniGames.Anim, true)
  Game.Set("PressGameType", 1)
  Game.Set("PressSpeedGameType", 0)
  Game.Set("PressSpeedGamePos", 0.5)
  Game.Set("PressSpeedGameShowBar", 0)
  Game.Set("PressSpeedAcceleration", tonumber(acceleration))
  Game.Set("PressSpeedFrecuency", tonumber(pressSpeedFrecuency))
  Game.Set("PressSpeedGameTimeUp", tonumber(pressSpeedGameTimeUp))
  Game.Set("PressSpeedGameTimeDown", tonumber(pressSpeedGameTimeDown))
  Game.Set("PressSpeedGameCallback", "MiniGames.MiniGameSpeedFreeCallback")
  ent.uData.InMiniGame = true
end

function MiniGames.MiniGameSpeedFreeCallback(iPos)
  local ent = Game.GetEntity(MiniGames.Entity)
  if iPos <= 0 then
    ent.oActCtrl:SetAction(MiniGames.EndAnim, true)
    ent.oActCtrl:ContinuePlaying()
    ent.IgnoreUsrControl = 0
    Game.Set("PressSpeedGameCallback", "")
  else
    ent.oActCtrl:ResetPrimaryAction()
    ent.oActCtrl:IncActionTime(0, clamp(1.0E-4, ent.oActCtrl.oAction.AnmTotalTime - 1.0E-4, ent.oActCtrl.oAction.AnmTotalTime * (1 - iPos)))
  end
  ent.uData.InMiniGame = false
end

function MiniGames.LaunchMomentCustom(entityName, args, time)
  local param = Game.Split(args, ",")
  local offsetStartTime = param[1]
  local totalTime = param[2]
  MiniGames.Entity = entityName
  Game.Set("PressGameType", 0)
  Game.Set("PressMomentGameSuccess", tonumber(param[3]))
  Game.Set("PressMomentGameStartTime", Game.GetAbsoluteTime() + offsetStartTime)
  Game.Set("PressMomentGameTotalTime", tonumber(totalTime))
  Game.Set("PressMomentGameUseAreaAttack", 1)
  Game.Set("PressMomentGameCallback", param[4])
end

function MiniGames.AbortCurrentMiniGame()
  Game.Set("PressMomentGameCallback", "")
end

function MiniGames.LaunchStickA(entityName, args, time)
  local param = Game.Split(args, ",")
  MiniGames.ReturnToRelaxSpeed = tonumber(param[1])
  MiniGames.Anim1Speed = tonumber(param[2])
  MiniGames.Anim2Speed = tonumber(param[3])
  MiniGames.iterations = tonumber(param[4])
  MiniGames.RelaxAnimation = param[5]
  MiniGames.Animation1 = param[6]
  MiniGames.Animation2 = param[7]
  MiniGames.animation1End = param[8]
  MiniGames.animation2End = param[9]
  MiniGames.WinAnim = param[10]
  MiniGames.LoseAnim = param[11]
  MiniGames.Time = tonumber(param[12])
  MiniGames.Entity = entityName
  local miniGameInstance = Scorer.GetItem(0, "StickGameA")
  miniGameInstance.entityName = entityName
  if MiniGames.RelaxAnimation ~= "none" then
    miniGameInstance.relaxAnimation = MiniGames.RelaxAnimation
  end
  miniGameInstance.animation1 = MiniGames.Animation1
  miniGameInstance.animation2 = MiniGames.Animation2
  if MiniGames.WinAnim ~= "none" then
    miniGameInstance.winAnimation = MiniGames.WinAnim
  end
  if MiniGames.LoseAnim ~= "none" then
    miniGameInstance.loseAnimation = MiniGames.LoseAnim
  end
  miniGameInstance.animation1End = MiniGames.animation1End
  miniGameInstance.animation2End = MiniGames.animation2End
  miniGameInstance.anim1Speed = MiniGames.Anim1Speed
  miniGameInstance.anim2Speed = MiniGames.Anim2Speed
  miniGameInstance.returnToRelaxSpeed = MiniGames.ReturnToRelaxSpeed
  miniGameInstance.iterations = MiniGames.iterations
  miniGameInstance.timeLeft = MiniGames.Time
  miniGameInstance.finishCallback = "MiniGames.MiniGameStickACallback"
  miniGameInstance.active = true
  Game.Set("StickGameAActive", 1)
  Game.GetEntity(entityName).uData.InMiniGame = true
end

function MiniGames.MiniGameStickACallback(result, entity)
  Game.ConsoleError("Fin del minijuegoo!!")
  local miniGameInstance = Scorer.GetItem(0, "StickGameA")
  miniGameInstance.active = false
  Game.Set("StickGameAActive", 0)
  entity.uData.InMiniGame = false
end

function MiniGames.LaunchStickB(entityName, args, time)
  local param = Game.Split(args, ",")
  MiniGames.ReturnToRelaxSpeed = tonumber(param[1])
  MiniGames.AnimSpeed = tonumber(param[2])
  MiniGames.iterations = 1
  MiniGames.HoldTime = tonumber(param[3])
  MiniGames.RelaxAnimation = param[4]
  MiniGames.Animation1 = param[5]
  MiniGames.Animation2 = param[6]
  MiniGames.animation1End = param[7]
  MiniGames.animation2End = param[8]
  MiniGames.WinAnim = param[9]
  MiniGames.LoseAnim = "none"
  MiniGames.Time = tonumber(param[10])
  MiniGames.Entity = entityName
  local miniGameInstance = Scorer.GetItem(0, "StickGameB")
  miniGameInstance.entityName = entityName
  if MiniGames.RelaxAnimation ~= "none" then
    miniGameInstance.relaxAnimation = MiniGames.RelaxAnimation
  end
  miniGameInstance.animation1 = MiniGames.Animation1
  miniGameInstance.animation2 = MiniGames.Animation2
  miniGameInstance.winAnimation = MiniGames.WinAnim
  miniGameInstance.loseAnimation = MiniGames.LoseAnim
  miniGameInstance.animation1End = MiniGames.animation1End
  miniGameInstance.animation2End = MiniGames.animation2End
  miniGameInstance.animSpeed = MiniGames.AnimSpeed
  miniGameInstance.HoldTime = MiniGames.HoldTime
  miniGameInstance.returnToRelaxSpeed = MiniGames.ReturnToRelaxSpeed
  miniGameInstance.iterations = MiniGames.iterations
  miniGameInstance.timeLeft = MiniGames.Time
  miniGameInstance.finishCallback = "MiniGames.MiniGameStickBCallback"
  Game.Set("StickGameBActive", 1)
  miniGameInstance.active = true
  Game.GetEntity(entityName).uData.InMiniGame = true
end

function MiniGames.MiniGameStickBCallback(result, entity)
  Game.ConsoleError("Fin del minijuegoo!!")
  local miniGameInstance = Scorer.GetItem(0, "StickGameB")
  Game.Set("StickGameBActive", 0)
  miniGameInstance.active = false
  entity.uData.InMiniGame = false
end

function MiniGames.LaunchSync(entityName, args)
  if EditorAnimTester and EditorAnimTester.object then
    return
  end
  local param = Game.Split(args, ",")
  MiniGames.iterations = tonumber(param[1])
  MiniGames.WinAnim = param[2]
  MiniGames.LoseAnm = param[3]
  MiniGames.Callback = param[4]
  MiniGames.ShowBar = param[5]
  MiniGames.offset = 0
  if param[6] ~= nil then
    MiniGames.offset = tonumber(param[6])
  end
  local miniGameInstance = Scorer.GetItem(0, "SynchronizedGame")
  miniGameInstance.EntityName = entityName
  miniGameInstance.Iterations = MiniGames.iterations
  if MiniGames.WinAnim ~= "none" then
    miniGameInstance.WinAnm = MiniGames.WinAnim
  end
  if MiniGames.LoseAnm ~= "none" then
    miniGameInstance.LoseAnm = MiniGames.LoseAnm
  end
  if MiniGames.ShowBar == "TRUE" then
    miniGameInstance.ShowBar = true
  else
    miniGameInstance.ShowBar = false
  end
  miniGameInstance.offset = MiniGames.offset
  Game.GetEntity(entityName).uData.InMiniGame = true
  miniGameInstance.Enable = true
  Game.ConsoleError(miniGameInstance.offset .. "\n")
end

function MiniGames.PreloadSyncEvents(entityName)
  local am = Game.GetEntity(entityName).oActCtrl.oActClass:GetAct(Game.GetEntity(entityName).Action)
  local Track = am.oTracks:Get("SyncGame")
  if Track then
    for k = 1, Track.n do
      local lseg, nseg
      if k == 1 then
        lseg = nil
        nseg = Track[k]
      else
        lseg = Track[k - 1]
        nseg = Track[k]
      end
      MiniGames.PreSyncEvent(Game.GetEntity(entityName), Track, 0, lseg, nseg)
    end
  end
end

function MiniGames.SyncEvent(e, Track, Frame, lSeg, nSeg)
  if EditorAnimTester and EditorAnimTester.object then
    return
  end
  local miniGameInstance = Scorer.GetItem(0, "SynchronizedGame")
  if not miniGameInstance.Enable then
    MiniGames.LaunchSync(e.Name, Track.Info)
  end
  if nSeg == nil then
    local winAnm = miniGameInstance.WinAnm
    e.uData.InMiniGame = false
    miniGameInstance.Enable = false
    if MiniGames.Callback ~= "" then
      local param = Game.Split(MiniGames.Callback, ".")
      if e.Action == winAnm then
        Energy.Enable()
        _G[param[1]][param[2]](1)
      else
        Energy.Enable()
        _G[param[1]][param[2]](0)
      end
    end
  else
  end
end

function MiniGames.PreSyncEvent(e, Track, Frame, lSeg, nSeg)
  local miniGameInstance = Scorer.GetItem(0, "SynchronizedGame")
  if nSeg == nil then
  else
    local param = Game.Split(nSeg.Info, ",")
    local button = 0
    if param[1] == "Area" then
      button = 1
    end
    if param[1] == "Directional" then
      button = 0
    end
    if param[1] == "Jump" then
      button = 2
    end
    if param[1] == "Second" then
      button = 3
    end
    if param[1] == "Random" then
      button = MiniGames.GetRandomButton()
    end
    local loseAnm = ""
    if param[2] ~= "none" then
      loseAnm = param[2]
    end
    local finish = 0
    if param[3] == "TRUE" then
      finish = 1
    end
    local ignoreWrong = 0
    if param[4] and param[4] == "TRUE" then
      ignoreWrong = 1
    end
    if param[1] ~= "None" then
      miniGameInstance:AddSyncEvent(button, nSeg.Init, nSeg.End, finish, loseAnm, ignoreWrong)
    end
  end
end

function MiniGames.LaunchAccumulation(entityName, args)
  local param = Game.Split(args, ",")
  local energy = param[1]
  local acceleration = param[2]
  local frecuency = param[3]
  local relaxAnim = param[4]
  local winAnim = param[5]
  local cancelAnim = param[6]
  local miniGameInstance = Scorer.GetItem(0, "AccumulationGame")
  miniGameInstance.EnergyLeft = tonumber(energy)
  miniGameInstance.Acceleration = tonumber(acceleration)
  miniGameInstance.Frecuency = tonumber(frecuency)
  miniGameInstance.EntityName = entityName
  miniGameInstance.WinAnm = winAnim
  miniGameInstance.FailAnm = cancelAnim
  miniGameInstance.RelaxAnm = relaxAnim
  Game.GetEntity(entityName).uData.InMiniGame = true
  miniGameInstance.Enable = true
end

function MiniGames.LaunchMantain(entityName, args)
  local param = Game.Split(args, ",")
  local FailZonePerc = param[1]
  local TimeToWin = param[2]
  local TimeToLose = param[3]
  local firstCheckTime = param[4]
  local timeForArea = param[5]
  local AreaPressLimit = param[6]
  local acceleration = param[7]
  local frecuency = param[8]
  local relaxAnim = param[9]
  local winAnim = param[10]
  local failAnim = param[11]
  local miniGameInstance = Scorer.GetItem(0, "MantainGame")
  miniGameInstance.EnergyLeft = tonumber(FailZonePerc)
  miniGameInstance.WinTime = tonumber(TimeToWin)
  miniGameInstance.FailTime = tonumber(TimeToLose)
  miniGameInstance.FirstCheckTime = tonumber(firstCheckTime)
  miniGameInstance.Acceleration = tonumber(acceleration)
  miniGameInstance.TimeToPushArea = tonumber(timeForArea)
  miniGameInstance.TimeLimitToPushArea = tonumber(AreaPressLimit)
  miniGameInstance.Frecuency = tonumber(frecuency)
  miniGameInstance.EntityName = entityName
  miniGameInstance.WinAnm = winAnim
  miniGameInstance.FailAnm = failAnim
  miniGameInstance.RelaxAnm = relaxAnim
  Game.GetEntity(entityName).uData.InMiniGame = true
  miniGameInstance.Enable = true
end

function MiniGames.TurnStickGame(e, Track, Frame, lSeg, nSeg)
  if lSeg then
    local a = Game.Split(lSeg.Info, ",")
    local turns = Game.Get("InputTurnCounter")
    local target = tonumber(a[1])
    if target < 0 then
      turns = -turns
      target = -target
    end
    Game.Set("TurnStickScorerStatus", 0)
    if turns < target then
      e.ForceAction = a[2]
      return
    end
  end
  if nSeg then
    local a = Game.Split(nSeg.Info, ",")
    if tonumber(a[1]) > 0 then
      Game.Set("TurnStickScorerStatus", 1)
    else
      Game.Set("TurnStickScorerStatus", -1)
    end
    Game.Set("InputTurnCounter", 0)
  end
end

function MiniGames.LaunchSpeedExplode(entityName, args, time)
  local param = Game.Split(args, ",")
  local acceleration = tonumber(param[1])
  if acceleration < 0 then
    acceleration = -acceleration
    MiniGames.InvertAnim = true
  else
    MiniGames.InvertAnim = false
  end
  local pressSpeedFrecuency = param[2]
  local pressSpeedGameTimeUp = param[3]
  local pressSpeedGameTimeDown = param[4]
  MiniGames.Anim = param[5]
  MiniGames.FailAnim = param[6]
  MiniGames.WinAnim = param[7]
  MiniGames.WinOnExplode = false
  local ent = Game.GetEntity(entityName)
  local tgt = Game.GetEntity(ent.TgtEntity)
  if param[8] == "TRUE" then
    MiniGames.WinOnExplode = true
    tgt = ent.uData.UsedObject
  end
  MiniGames.Entity = entityName
  local stressIniRange = AISpec.GetBehavParamValue("GhoulDLC", "LauraMGRandomInit")
  local stressEndRange = AISpec.GetBehavParamValue("GhoulDLC", "LauraMGRandomEnd")
  Game.Set("ExplodeGameStress", Game.Rand(stressIniRange, stressEndRange))
  MiniGames.ExplodeMgInitLife = AISpec.GetBehavParamValue("GhoulDLC", "LauraMGMaxLifeAbsorved")
  MiniGames.ExplodeMgInitLifePlayer = ent.Life
  MiniGames.ExplodeMgAbsorved = 0
  MiniGames.ExplodeMgPrevTime = Game.GetTime()
  MiniGames.ExplodeMgIniTime = Game.GetTime()
  ent.IgnoreUsrControl = 1
  ent.oActCtrl:SetAction(MiniGames.Anim, true)
  Game.Set("PressSpeedCancelable", true)
  Game.Set("PressSpeedGameBaseNoise", 0)
  Game.Set("PressSpeedGameNoise", 0)
  if MiniGames.WinOnExplode then
    Game.Set("PressGameType", 3)
    Game.Set("PressSpeedGameCallback", "MiniGames.MiniGameExplodeWinCallback")
    if tgt then
      tgt.ForceAction = tgt.uData.BurningAnim
      if tgt.uData.BurningCallback then
        tgt.uData.BurningCallback(ent, tgt)
      end
    end
    MapEffects.FXChainPuzzleBegin(tgt.Name)
  else
    Game.Set("PressGameType", 2)
    Game.Set("PressSpeedGameCallback", "MiniGames.MiniGameExplodeCallback")
  end
  Game.Set("PressSpeedGamePos", 0)
  Game.Set("PressSpeedGameType", MiniGames.GetRandomButton())
  Game.Set("PressSpeedGameShowBar", 1)
  Game.Set("PressSpeedAcceleration", acceleration)
  Game.Set("PressSpeedFrecuency", tonumber(pressSpeedFrecuency))
  Game.Set("PressSpeedGameTimeUp", tonumber(pressSpeedGameTimeUp))
  Game.Set("PressSpeedGameTimeDown", tonumber(pressSpeedGameTimeDown))
  ent.uData.InMiniGame = true
  Game.Set("MsgActive", false)
  Game.Set("ExplodeGameProgress", 0)
  player.LocalTimerSpeed = 1
  if tgt then
    tgt.LocalTimerSpeed = 1
  end
end

function MiniGames.MiniGameExplodeCallback(iPos)
  local currentTime = Game.GetTime()
  if MiniGames.InvertAnim then
    iPos = 1 - iPos
  end
  local ent = Game.GetEntity(MiniGames.Entity)
  local tgt = Game.GetEntity(ent.TgtEntity)
  if not string.find(ent.Action, MiniGames.Anim) then
    ent.uData.InMiniGame = false
    Game.Set("PressSpeedGameCallback", "")
    ent.oActCtrl:ContinuePlaying()
    ent.IgnoreUsrControl = 0
    Game.Set("MsgActive", true)
    ent.uData.InMiniGame = false
    return
  end
  if iPos <= 0 and Game.GetTime() - MiniGames.ExplodeMgIniTime > 2 then
    Game.Log("WIN\n", 1)
    ent.oActCtrl:SetAction(MiniGames.WinAnim, true)
    ent.IgnoreUsrControl = 0
    Game.Set("PressSpeedGameCallback", "")
    Game.Set("MsgActive", true)
    ent.uData.InMiniGame = false
    addSF(1, "", "GhoulDLC.FXGripEnd", tgt.Name)
    ScorerSprites.isPlayingLauraSuckBloodLoop = false
    print("QUITO SONIDO CHUPAR")
    return
  elseif 0 < iPos then
    if not tgt then
      Game.ConsoleError("No hay TARGET!!")
      Game.Set("ExplodeGameProgress", 1)
    else
      Laura.ShowScorerAfterFadeIn(10)
      local lifePerSec = AISpec.GetBehavParamValue("GhoulDLC", "LauraMGLifeSpeed")
      if Game.Get("ExplodeGameProgress") >= Game.Get("ExplodeGameStress") then
        lifePerSec = AISpec.GetBehavParamValue("GhoulDLC", "LauraMGLifeSpeedStress")
      end
      local deltaTime = currentTime - MiniGames.ExplodeMgPrevTime
      local deltaLife = deltaTime * lifePerSec
      local prevInv = ent.Invulnerable
      ent.Invulnerable = 0
      MiniGames.ExplodeMgAbsorved = MiniGames.ExplodeMgAbsorved + deltaLife
      if 1 < MiniGames.ExplodeMgInitLife - MiniGames.ExplodeMgAbsorved then
        local prevLife = ent.Life
        ent.Life = MiniGames.ExplodeMgInitLifePlayer + MiniGames.ExplodeMgAbsorved
        local incr = ent.Life - prevLife
        ScorerSprites.LauraGotLife(incr)
        if ent.Life > ent.oActCtrl.oActClass.Life then
          ent.Life = ent.oActCtrl.oActClass.Life
        end
        Game.Set("ExplodeGameProgress", MiniGames.ExplodeMgAbsorved / MiniGames.ExplodeMgInitLife)
        if 2 >= MiniGames.ExplodeMgInitLife - MiniGames.ExplodeMgAbsorved then
          Game.Set("PressSpeedAcceleration", 0)
        end
      else
        Game.Set("ExplodeGameProgress", 1)
      end
      ent.Invulnerable = prevInv
    end
  end
  GhoulDLC.FXGrip(tgt.Name)
  if Game.Get("ExplodeGameProgress") >= 0.99 then
    Game.Log("LOSE\n", 1)
    ent.oActCtrl:SetAction(MiniGames.FailAnim, true)
    ent.IgnoreUsrControl = 0
    Game.Set("PressSpeedGameCallback", "")
    Game.Set("MsgActive", true)
    ent.uData.InMiniGame = false
    addSF(1, "", "GhoulDLC.FXGripEnd", tgt.Name)
  end
  if Game.Get("ExplodeGameProgress") >= Game.Get("ExplodeGameStress") and ent.Action ~= "GlCatch2" and ent.Action ~= MiniGames.WinAnim and ent.Action ~= MiniGames.FailAnim then
    ent.ForceAction = "GlCatch2"
    Camera.ActionSetFocus(ent.Name, "0.2000,s,500,30,YES,45,40.0000,Bip Laura Spine2,0,")
    Laura.UpdateSuckSound(ent)
  end
  MiniGames.ExplodeMgPrevTime = currentTime
end

function MiniGames.MiniGameExplodeWinCallback(iPos)
  local currentTime = Game.GetTime()
  if MiniGames.InvertAnim then
    iPos = 1 - iPos
  end
  local ent = Game.GetEntity(MiniGames.Entity)
  local tgt = ent.uData.UsedObject
  if ent.Action ~= MiniGames.Anim then
    ent.uData.InMiniGame = false
    Game.Set("PressSpeedGameCallback", "")
    ent.IgnoreUsrControl = 0
    Game.Set("MsgActive", true)
    ent.uData.InMiniGame = false
    if tgt and tgt.uData.OnLoseCall then
      tgt.uData.OnLoseCall(tgt)
    end
    MapEffects.FXChainPuzzleEnd(tgt.Name)
    return
  end
  if iPos <= 0 and (Game.GetTime() - MiniGames.ExplodeMgPrevTime > 2 or iPos == -1) then
    Game.Log("LOSE\n", 1)
    ent.oActCtrl:SetAction(MiniGames.FailAnim, true)
    ent.IgnoreUsrControl = 0
    Game.Set("PressSpeedGameCallback", "")
    Game.Set("MsgActive", true)
    ent.uData.InMiniGame = false
    if tgt and tgt.uData.OnLoseCall then
      tgt.uData.OnLoseCall(tgt)
    end
    MapEffects.FXChainPuzzleEnd(tgt.Name)
  elseif 1 <= iPos then
    if not tgt then
      Game.ConsoleError("No hay TARGET!!")
      ent.oActCtrl:SetAction(MiniGames.FailAnim, true)
      ent.IgnoreUsrControl = 0
      Game.Set("PressSpeedGameCallback", "")
      Game.Set("MsgActive", true)
      ent.uData.InMiniGame = false
    else
      Game.Log("WIN\n", 1)
      ent.oActCtrl:SetAction(MiniGames.WinAnim, true)
      ent.IgnoreUsrControl = 0
      Game.Set("PressSpeedGameCallback", "")
      Game.Set("MsgActive", true)
      ent.uData.InMiniGame = false
      if tgt and tgt.uData.OnWinCall then
        tgt.uData.OnWinCall(tgt)
      end
    end
    MapEffects.FXChainPuzzleEndWin(tgt.Name)
  end
  Game.Set("ExplodeGameProgress", iPos)
  MapEffects.FXChainPuzzleUpdate(tgt.Name)
end
