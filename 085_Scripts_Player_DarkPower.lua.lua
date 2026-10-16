function DarkPower.main()
  DarkPower.Power = Game.GVar("ScorerDarkPower")
  
  DarkPower.PowerUse = Game.GVar("ScorerDarkPowerUse")
  DarkPower.PowerMax = Game.GVar("ScorerDarkPowerMax")
  DarkPower.PowerOn = Game.GVar("ScorerDarkPowerOn")
  DarkPower.Power.Value = 5
  DarkPower.PowerMax.Value = 5
  DarkPower.PowerUse.Value = 0
  DarkPower.PowerOn.Value = true
  DarkPower.FirstPress = false
  DarkPower.HoldThreshold = 0.5
  DarkPower.HoldingButton = false
  DarkPower.PressTime = 0
  DarkPower.StaminaTimeSpeed = 0.7
  DarkPower.CombatScroll = "WhipComboDrMh"
  DarkPower.DirectionalNoResponsePerc = 0.5
  DarkPower.Combo1Frame = 12
  DarkPower.Combo2Frame = 6
  DarkPower.Combo3Frame = 12
  DarkPower.PlayerAssistance = true
  DarkPower.AngleTolerance = 0.7854
  DarkPower.DistanceLimit = 1200
  DarkPower.StandardDistance = 700
  DarkPower.InterpolationFactor = 20
  DarkPower.UsingStamina = false
  DarkPower.CanUseStamina = false
  DarkPower.RelaxMagicConsume = 0.2
  DarkPower.MustConsume = true
  DarkPower.FullMagicNeeded = false
  DarkPower.ScaleLimit = 50
  DarkPower.GoalPosLimit = 25
end

DarkPower.SlotTime = 5
DarkPower.DamageMultiplier = 2

function DarkPower.AddAnm(ac)
  ac.SpecialPressPlus = "DarkPower.SpecialPress"
  ac.SpecialReleasePlus = "DarkPower.SpecialRelease"
  MakeChar.MakeEvent(ac, "WhipComboDrMhs", " 180WhipComboDrMh", "!CharTurnEvent", 69)
  MakeChar.MakeEvent(ac, "WhipComboDrMhsss", " 180WhipComboDrMh", "!CharTurnEvent", 69)
  MakeChar.MakeEvent(ac, "WhipComboDrMhsss", "WhipComboDrMh", "!AnmSetAction")
  MakeChar.MakeEvent(ac, "WhipComboDrMhs", "WhipComboDrMh", "!AnmSetAction")
  MakeChar.MakeEvent(ac, "WhipComboDrMhss", "WhipComboDrMh", "!AnmSetAction")
  local action = ac:GetAct("WhipComboDrMhInit")
  if action ~= nil then
    action.OnObjSlot = "DarkPower.StaminaAttackControl"
    MakeChar.SetHitable(ac, "WhipComboDrMhInit", 0, 0)
  end
  action = ac:GetAct("WhipComboDrMhEnd")
  if action ~= nil then
    MakeChar.SetHitable(ac, "WhipComboDrMhEnd", action.FirstFrame, 1)
    action = ac:GetAct("WhipComboDrMh")
    action.OnObjSlot = "DarkPower.StaminaAttackControl"
  end
  MakeChar.MakeEvent(ac, "WhipComboDrMhInit", "WhipComboDrMh", "!AnmSetAction")
  action = ac:GetAct("WhipComboDrMhs")
  if action ~= nil then
    action.OnObjSlot = "DarkPower.StaminaAttackControl"
  end
  action = ac:GetAct("WhipComboDrMhss")
  if action ~= nil then
    action.OnObjSlot = "DarkPower.StaminaAttackControl"
  end
  action = ac:GetAct("WhipComboDrMhsss")
  if action ~= nil then
    action.OnObjSlot = "DarkPower.StaminaAttackControl"
  end
end

function DarkPower.SpecialPress(Name)
  if DarkPower.Power.Value == 0 then
    return
  end
  local ent = Game.GetEntity(Name)
  if Actions.PlayerInCatch.Value == 1 or LightPower.HoldingButton or ent.oActCtrl:GetTrackInfo("NoPowerSwitch") or ent.oActCtrl.oAction.Group == "Hook" or ent.oActCtrl.oAction.Group == "Hang" then
    return
  end
  if DarkPower.PowerOn.Value then
    DarkPower.FirstPress = not DarkPower.FirstPress
    if DarkPower.FirstPress and DarkPower.Power.Value > 0 then
      DarkPower.ActivatePower(Name)
      if LightPower.PowerUse.Value == 1 then
        LightPower.DeactivatePower(Name)
      end
    end
    DarkPower.HoldingButton = true
    DarkPower.PressTime = Game.GetTime()
    addSF(DarkPower.HoldThreshold, "", "DarkPower.CheckButtonHolding")
  end
end

function DarkPower.SpecialRelease(name)
  if Actions.PlayerInCatch.Value == 1 then
    DarkPower.HoldingButton = false
    if DarkPower.PowerUse.Value == 1 then
      DarkPower.FirstPress = true
    end
    return
  end
  if LightPower.HoldingButton then
    return
  end
  if Game.Get("IsBelmontUsingStamina") == 1 then
    DarkPower.EndUsingStaminaAttack()
  end
  if not DarkPower.FirstPress and DarkPower.PowerOn.Value and DarkPower.PowerUse.Value == 1 then
    DarkPower.DeactivatePower(name)
  end
  DarkPower.HoldingButton = false
end

function DarkPower.CheckButtonHolding()
  if not Belmont.CanPerformFocusCombo() then
    return
  end
  if DarkPower.HoldingButton and Game.GetTime() - DarkPower.PressTime <= DarkPower.HoldThreshold * 2 and Experience.isCombatScroll(DarkPower.CombatScroll) and (DarkPower.Power.Value >= DarkPower.PowerMax.Value or not DarkPower.FullMagicNeeded) and Game.Get("IsBelmontUsingStamina") == 0 and player.isFalling == 0 and DarkPower.Power.Value > 0 then
    player.ForceAction = "WhipComboDrMhInit"
  end
end

function DarkPower.Consume(Name, Points)
  if not DarkPower.MustConsume then
    return
  end
  if Points >= DarkPower.Power.Value then
    DarkPower.DeactivatePower(Name)
    DarkPower.Power.Value = 0
    DarkPower.EndUsingStaminaAttack()
    return false
  else
    DarkPower.Power.Value = DarkPower.Power.Value - Points
    return true
  end
end

function DarkPower.Increase(points)
  DarkPower.Power.Value = DarkPower.Power.Value + points
  if DarkPower.Power.Value > DarkPower.PowerMax.Value then
    DarkPower.Power.Value = DarkPower.PowerMax.Value
  end
end

function DarkPower.IncreaseEventCall(entityName, pointsString)
  DarkPower.Increase(tonumber(pointsString))
end

function DarkPower.Check(Name)
  local e = Game.GetEntity(Name)
  if DarkPower.Power.Value <= 0 or 0 > e.UsrControl then
    DarkPower.DeactivatePower(Name)
  elseif DarkPower.PowerUse.Value == 1 then
    addSF(0.2, "DarkPower.Check", "DarkPower.Check", Name)
  end
end

function DarkPower.ActivatePower(Name)
  DarkPower.PowerUse.Value = 1
  addSF(0.2, "DarkPower.Check", "DarkPower.Check", Name)
  local char = Game.GetEntity(Name)
  if char then
    if DarkPower.DarkDashActive and char.oActCtrl.oActClass.SprintOnDoubleTap == 1 then
      char.b90GradesDodge = false
      if char.oActCtrl:GetTrackInfo("BlockTimeControl") then
        Belmont.DarkDodgeTestBegin(char)
      end
    end
    char.uData.ExplosiveDaggers = true
    Belmont.FXDarkPowerOn(Name)
    Effects.FXDarkPowerOn()
    if char.isFalling == 0 then
      char.ExtraSufix = "Whip"
      char.Action = "WhipPowerUp"
    end
    char.oAI:OnMagicChanged()
    if Stamina.Active.Value then
      local flos = Stamina.MaxStamina.Value * (Stamina.ActivatePowerLose / 100)
      Stamina.SetStamina(flos)
    end
    if DarkPower.OnSwitchCallback then
      DarkPower.OnSwitchCallback(true)
    end
    if init.LevelName == "level.2_7_labyrinth_ruins_ii" and Trials.isTrial and MapTrial ~= nil then
      MapTrial.OnDarkEnergyCharge()
    end
  end
end

function DarkPower.DeactivatePower(Name, DoNotUseFX)
  DarkPower.EndUsingStaminaAttack()
  DarkPower.FirstPress = false
  DarkPower.HoldingButton = false
  DarkPower.PowerUse.Value = 0
  local char = Game.GetEntity(Name)
  if char then
    char.b90GradesDodge = true
    char.uData.ExplosiveDaggers = false
    Belmont.DarkDodgeTestEnd(char)
    Belmont.FXDarkPowerOff(Name, DoNotUseFX)
    Effects.FXDarkPowerOff()
    if char.oAI then
      char.oAI:OnMagicChanged()
    end
    if DarkPower.OnSwitchCallback then
      DarkPower.OnSwitchCallback(false)
    end
  end
end

function DarkPower.PlayerDamage(player, target, damage, blocked, HitData)
  local returnedDamage = damage
  if Weapons.ReverseLightAndDark then
    if blocked == 0 and HitData and (HitData.Type == "Melee" or HitData.Type == "Whip") and (target.uData.Drainable or target.Invulnerable == 0 and target.TgType == "red" and not target.uData.IsCritter and target:IsType("WalkChar")) then
      local recoveredLife = 0
      if player.Life < player.oActCtrl.oActClass.Life then
        local vampMult = 0.25
        if target:IsType("WalkChar") then
          vampMult = defparam(LightPower.VampirizeMult[target.oActCtrl.oActClass.Name], 0.25)
        end
        recoveredLife = vampMult * damage
        if player.Life + recoveredLife > player.oActCtrl.oActClass.Life then
          recoveredLife = player.oActCtrl.oActClass.Life - player.Life
        end
        player.Life = player.Life + recoveredLife
        if init.LevelName == "level.1_4_haunting_path" and Trials.isTrial and MapTrial ~= nil then
          MapTrial.OnHealthRecovery()
        end
        if Game.Get("IsBelmontUsingStamina") == 1 then
        else
          LightPower.Consume(player.Name, LightPower.LightHitCost * recoveredLife)
        end
        if 1 <= Weapons.Debug.Value then
          local t = DebugDraw.NewPrimitive("Text3D")
          t.Pos = player.Pos
          t.Speed = V3D(0, -80, 0)
          t.TimeToDel = Game.GetTime() + 2
          t.Text = "" .. vampMult * damage
          t.Color = Color(100, 100, 255, 255)
        end
        ScorerSprites.ShowRecover(player.Pos, recoveredLife)
      end
      ScorerSprites.GotLife(target.Pos, recoveredLife)
    end
    returnedDamage = damage
  else
    local multiplier = 1
    if HitData and (HitData.Type == "Melee" or HitData.Type == "Whip" or HitData.Type == "Catch") and (not HitData.DarkMagicUse or HitData.DarkMagicUse == 1) and blocked == 0 and (target.uData.Drainable or target:IsType("WalkChar") and target.Invulnerable == 0 and target.TgType == "red" and not target.uData.IsCritter) then
      multiplier = DarkPower.DamageMultiplier
      DarkPower.Consume(player.Name, DarkPower.DarkHitCost * damage * multiplier)
    end
    returnedDamage = damage * multiplier
  end
  return returnedDamage
end

function DarkPower.Disable()
  if DarkPower.oldPowerOn == nil and DarkPower.oldPower == nil then
    DarkPower.oldPowerOn = DarkPower.PowerOn.Value
    DarkPower.oldPower = DarkPower.Power.Value
    DarkPower.PowerOn.Value = false
    DarkPower.Power.Value = 0
  end
end

function DarkPower.Restore()
  if DarkPower.oldPowerOn and DarkPower.oldPower then
    DarkPower.PowerOn.Value = DarkPower.oldPowerOn
    DarkPower.Power.Value = DarkPower.oldPower
    DarkPower.oldPowerOn = nil
    DarkPower.oldPower = nil
  end
end

function DarkPower.Enable(ActualValue, MaxValue)
  if ActualValue and MaxValue then
    DarkPower.Power.Value = ActualValue
    DarkPower.PowerMax.Value = MaxValue
  else
    DarkPower.Power.Value = 0
    DarkPower.PowerMax.Value = 5
  end
end

function DarkPower.StartStaminaLoop()
  Game.SetTimeSpeed(DarkPower.StaminaTimeSpeed)
  DarkPower.UsingStamina = true
  DarkPower.CanUseStamina = false
  Game.Set("IsBelmontUsingStamina", 1)
  DarkPower.GoalPos = nil
  if Game.Get("BelmontPoisonedTimeLeft") > 0 then
    Belmont.EndSpiderPoison()
  end
  addSF(0.1, "", "DarkPower.DarkStaminaConsume", Game.GetTime())
end

function DarkPower.DarkStaminaConsume(scheduleTime)
  local timeDiff = Game.GetTime() - scheduleTime
  DarkPower.Consume(player.Name, DarkPower.RelaxMagicConsume * timeDiff)
  if Game.Get("IsBelmontUsingStamina") == 1 then
    addSF(0.1, "", "DarkPower.DarkStaminaConsume", Game.GetTime())
  end
end

function DarkPower.StaminaAttackControl(Entity, timeDiff)
  if Game.Get("IsBelmontUsingStamina") == 0 and player.Action ~= "WhipComboDrMhInit" then
    player.ForceAction = "WhipComboDrMhEnd"
    return
  end
  local stickAng = Game.GetControlAng()
  if (math.abs(player.owc.Walk) > 0.5 or 0.5 < math.abs(player.owc.Str)) and DarkPower.CanUseStamina == true then
    local tgtName, globalEnemyName = Game.GetFarestAimEntityForStamina("Belmont", DarkPower.DistanceLimit, 0)
    player.TgtEntity = tgtName
    local nextAction = DarkPower.ResolveNextStaminaAction(player.oActCtrl.Action)
    if 0 < string.len(nextAction) and DarkPower.UsingStamina then
      player.oActCtrl:SetAction(nextAction, true)
      DarkPower.CanUseStamina = false
      if Game.GetEntity(player.TgtEntity) ~= nil and DarkPower.PlayerAssistance == true then
        local tgt = Game.GetEntity(player.TgtEntity)
        local hitDir = tgt.Pos - player.Pos
        hitDir.y = 0
        hitDir = hitDir:norm()
        local tgtRadius = 0
        if tgt.oActCtrl then
          tgtRadius = tgt.oActCtrl.oActClass.WRadius
        end
        theBigestRadious = tgtRadius
        if theBigestRadious < player.oActCtrl.oActClass.WRadius then
          theBigestRadious = player.oActCtrl.oActClass.WRadius
        end
        local radiusSum = player.oActCtrl.oActClass.WRadius + tgtRadius + 1
        local tgtDistance = (tgt.Pos - player.Pos):mod2D() - radiusSum
        if tgtDistance < DarkPower.StandardDistance / 4 and tgt.oActCtrl and (tgt.oActCtrl.oActClass.Size == "small" or tgt.oActCtrl.oActClass.Size == "average") then
          tgtDistance = DarkPower.StandardDistance
        end
        local tgtAngle = (player.Pos - tgt.Pos):getrot()
        tgtAngle.y = Game.NormAng(tgtAngle.y)
        if tgtDistance < DarkPower.DistanceLimit and math.abs(stickAng - tgtAngle.y * 6.26 / 360) < DarkPower.AngleTolerance then
          DarkPower.GoalPos = player.Pos + hitDir * tgtDistance
          player.JustAng = V3D(player.Ang.x, tgtAngle.y, player.Ang.z)
        else
          player.JustAng = V3D(player.Ang.x, stickAng * 180 / 3.14, player.Ang.z)
          local dir = Game.ObtainDirFromAng(player.Ang.x, stickAng * 180 / 3.14, player.Ang.z)
          DarkPower.GoalPos = player.Pos + dir * DarkPower.StandardDistance
        end
      else
        player.JustAng = V3D(player.Ang.x, stickAng * 180 / 3.14, player.Ang.z)
        local dir = Game.ObtainDirFromAng(player.Ang.x, stickAng * 180 / 3.14, player.Ang.z)
        DarkPower.GoalPos = player.Pos + dir * DarkPower.StandardDistance
      end
    end
  end
  local canDisplace = false
  if player.Action == "WhipComboDrMhs" and player.oActCtrl.AnimFrame > DarkPower.Combo1Frame then
    canDisplace = true
  end
  if player.Action == "WhipComboDrMhss" and player.oActCtrl.AnimFrame > DarkPower.Combo2Frame then
    canDisplace = true
  end
  if player.Action == "WhipComboDrMhsss" and player.oActCtrl.AnimFrame > DarkPower.Combo3Frame then
    canDisplace = true
  end
  if DarkPower.GoalPos ~= nil and canDisplace == true then
    local dir = DarkPower.GoalPos - player.Pos
    dir:norm()
    local distanceLeft = (DarkPower.GoalPos - player.Pos):mod2D()
    local delta = timeDiff * DarkPower.InterpolationFactor
    if distanceLeft < delta then
      delta = distanceLeft
    end
    local tgt = Game.GetEntity(player.TgtEntity)
    if tgt then
      tgt.GhostTime = 0.1
    end
    local newPos = player.Pos + dir * delta
    local offSet = V3D(0, player.FloorDist - player.oActCtrl.oActClass.Radius, 0)
    local col = Game.SafeSlide(player.Pos, newPos, player.oActCtrl.oActClass.Radius, player.WorldCollisionMask + player.WallCollisionMask)
    local p1 = col + V3D(0, player.oActCtrl.oActClass.Radius * 2, 0)
    local p2 = col + V3D(0, -player.oActCtrl.oActClass.Radius * 5, 0)
    col = Game.SafeSlide(p1, p2, player.oActCtrl.oActClass.Radius, player.WorldCollisionMask + player.WallCollisionMask)
    local isOk, onFloor
    isOk, onFloor = player:TestCharPos(col)
    if not (isOk and onFloor) or col.y + offSet.y - player.Pos.y > DarkPower.ScaleLimit then
      col = player.Pos - offSet
    end
    local prevDist = (DarkPower.GoalPos - player.Pos):mod()
    local currentDist = (DarkPower.GoalPos - (col + offSet)):mod()
    if currentDist < DarkPower.GoalPosLimit or prevDist - currentDist < DarkPower.GoalPosLimit then
      player.Pos = col + offSet
      DarkPower.GoalPos = nil
    else
      player.Pos = col + offSet
    end
    if delta == distanceLeft then
      DarkPower.GoalPos = nil
    end
  end
  if player.owc.Walk == 0 and player.owc.Str == 0 then
    DarkPower.CanUseStamina = true
  end
  local team, mem = AITeamList.FirstMembMetaTeam("ENEMIES")
  while mem do
    if mem.oEnt.bActive then
      mem.oEnt:FXFocusActive(true)
    end
    team, mem = AITeamList.NextMembMetaTeam("ENEMIES", team, mem)
  end
end

function DarkPower.ResolveNextStaminaAction(currentActionName)
  if currentActionName == "WhipComboDrMh" or currentActionName == "WhipComboDrMhInit" then
    return "WhipComboDrMhs"
  end
  if player.oActCtrl.AnimTime < DarkPower.DirectionalNoResponsePerc then
    return ""
  end
  if currentActionName == "WhipComboDrMhs" then
    return "WhipComboDrMhss"
  end
  if currentActionName == "WhipComboDrMhss" then
    return "WhipComboDrMhsss"
  end
  if currentActionName == "WhipComboDrMhsss" then
    return "WhipComboDrMhss"
  end
  return ""
end

function DarkPower.EndUsingStaminaAttack()
  if Game.Get("IsBelmontUsingStamina") == 1 and DarkPower.HoldingButton then
    DarkPower.HoldingButton = false
    local worldTimer = Game.GetWorldTimer()
    if worldTimer.uData.Modiff and worldTimer.uData.Modiff.bValidBaseType then
      worldTimer.uData.Modiff.FinalTime = 0.01
      worldTimer.uData.Modiff.oValues[1].Final = 1
      worldTimer.uData.Modiff.bDelete = true
    end
    Game.SetTimeSpeed(1)
    addSF(0, "", "Game.SetTimeSpeed", 1)
    DarkPower.UsingStamina = false
    Game.Set("IsBelmontUsingStamina", 0)
    if newAnim then
      player.ForceAction = newAnim
    elseif player.Action == "WhipComboDrMhInit" or player.Action == "WhipComboDrMh" then
      player.ForceAction = "WhipComboDrMhEnd"
    end
  end
end
