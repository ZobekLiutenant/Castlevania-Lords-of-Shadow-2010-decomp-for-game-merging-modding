function LightPower.main()
  LightPower.Power = Game.GVar("ScorerLightPower")
  
  LightPower.PowerUse = Game.GVar("ScorerLightPowerUse")
  LightPower.PowerMax = Game.GVar("ScorerLightPowerMax")
  LightPower.PowerOn = Game.GVar("ScorerLightPowerOn")
  LightPower.Blinking = Game.GVar("ScorerLightBlinking")
  LightPower.Power.Value = 5
  LightPower.PowerMax.Value = 5
  LightPower.PowerUse.Value = 0
  LightPower.PowerOn.Value = true
  LightPower.Blinking.Value = false
  LightPower.FirstPress = false
  LightPower.HoldThreshold = 0.5
  LightPower.HoldingButton = false
  LightPower.PressTime = 0
  LightPower.CombatScroll = "WhipComboLMh"
  LightPower.FullMagicNeeded = false
  LightPower.MaxAreaDisplacementSec = 20
  LightPower.AreaIncrementSec = 100
  LightPower.StaminaTimeSpeed = 0.7
  LightPower.RelaxMagicConsume = 0.2
  LightPower.MovementMagicConsume = 0.7
  LightPower.StaminaConsumePerHit = 0.1
  LightPower.AreaAttackMovement = V3D(0, 0, 0)
  LightPower.UsingStamina = false
  LightPower.MustConsume = true
  LightPower.ScaleLimit = 50
end

LightPower.SlotTime = 7
LightPower.RegenStepEasy = 0.4
LightPower.RegenStep = 0.4
LightPower.RegenStepHard = 0.4
LightPower.BlindedDamageMult = 2
LightPower.VampirizeMult = {}

function LightPower.AddAnm(ac)
  ac.SpecialPress = "LightPower.SpecialPress"
  ac.SpecialRelease = "LightPower.SpecialRelease"
  ac.uData.bWings = true
  ac.OnSprintSwitch = "LightPower.SprintSwitch"
  ac.SprintOnDoubleTap = 1
  a = {
    {
      "Jump2",
      0,
      1
    },
    {
      "Jump2Run",
      0,
      1
    }
  }
  MakeChar.AddFallActions(ac, a, 0, "")
  MakeChar.SetAirActionProperties(ac:GetAct("Jump2"))
  ac:GetAct("Jump2").Group = "Jump"
  MakeChar.SetAirActionProperties(ac:GetAct("Jump2Run"))
  ac:GetAct("Jump2Run").Group = "Jump"
end

function LightPower.SpecialPress(Name)
  if LightPower.Power.Value == 0 then
    return
  end
  local ent = Game.GetEntity(Name)
  if Actions.PlayerInCatch.Value == 1 or DarkPower.HoldingButton or ent.oActCtrl:GetTrackInfo("NoPowerSwitch") or ent.oActCtrl.oAction.Group == "Hook" or ent.oActCtrl.oAction.Group == "Hang" then
    return
  end
  if LightPower.PowerOn.Value then
    LightPower.FirstPress = not LightPower.FirstPress
    if LightPower.FirstPress and LightPower.Power.Value > 0 then
      LightPower.ActivatePower(Name)
      if DarkPower.PowerUse.Value == 1 then
        DarkPower.DeactivatePower(Name)
      end
    end
    LightPower.HoldingButton = true
    LightPower.PressTime = Game.GetTime()
    addSF(LightPower.HoldThreshold, "", "LightPower.CheckButtonHolding")
  end
end

function LightPower.SpecialRelease(name)
  if Actions.PlayerInCatch.Value == 1 then
    LightPower.HoldingButton = false
    if LightPower.PowerUse.Value == 1 then
      LightPower.FirstPress = true
    end
    return
  end
  if DarkPower.HoldingButton then
    return
  end
  if Game.Get("IsBelmontUsingStamina") == 1 then
    Game.ConsoleError("Finalizando estamina por release de boton de magia\n")
    LightPower.EndUsingStaminaAttack()
  end
  if not LightPower.FirstPress and LightPower.PowerOn.Value and LightPower.PowerUse.Value == 1 then
    LightPower.DeactivatePower(name)
  end
  LightPower.HoldingButton = false
end

function LightPower.CheckButtonHolding()
  if not Belmont.CanPerformFocusCombo() then
    return
  end
  if LightPower.HoldingButton and Game.GetTime() - LightPower.PressTime <= LightPower.HoldThreshold * 2 and Experience.isCombatScroll(LightPower.CombatScroll) and (LightPower.Power.Value >= LightPower.PowerMax.Value or not LightPower.FullMagicNeeded) and Game.Get("IsBelmontUsingStamina") == 0 and player.isFalling == 0 and LightPower.Power.Value > 0 then
    player.ForceAction = "WhipComboLMhInit"
  end
end

function LightPower.Consume(Name, Points)
  if not LightPower.MustConsume then
    return
  end
  if Points >= LightPower.Power.Value then
    LightPower.DeactivatePower(Name)
    LightPower.Power.Value = 0
    return false
  else
    LightPower.Power.Value = LightPower.Power.Value - Points
    return true
  end
end

function LightPower.Increase(points)
  LightPower.Power.Value = LightPower.Power.Value + points
  if LightPower.Power.Value > LightPower.PowerMax.Value then
    LightPower.Power.Value = LightPower.PowerMax.Value
  end
end

function LightPower.Check(Name)
  local e = Game.GetEntity(Name)
  if LightPower.Power.Value <= 0 or 0 > e.UsrControl then
    LightPower.DeactivatePower(Name)
  elseif LightPower.PowerUse.Value == 1 then
    addSF(0.2, "LightPower.Check", "LightPower.Check", Name)
  end
end

function LightPower.ActivatePower(Name)
  if Game.Get("BelmontPoisonedTimeLeft") > 0 then
    LightPower.Consume("Belmont", Belmont.LightCost)
    Belmont.EndSpiderPoison()
  end
  if (init.LevelName == "level.2_10_black_knight" or init.LevelName == "level.3_3_the_dark_lord") and Trials.isTrial and MapTrial ~= nil then
    MapTrial.OnLightEnergyCharge()
  end
  LightPower.PowerUse.Value = 1
  addSF(0.2, "LightPower.Check", "LightPower.Check", Name)
  local char = Game.GetEntity(Name)
  if char then
    local ac = char.oActCtrl.oActClass
    ac.RegenStepEasy = LightPower.RegenStepEasy
    ac.RegenStep = LightPower.RegenStep
    ac.RegenStepHard = LightPower.RegenStepHard
    if char.isFalling == 0 then
      char.ExtraSufix = "Whip"
      char.Action = "WhipPowerUp"
    end
    Belmont.FXLightPowerOn(Name)
    Effects.FXLightPowerOn()
    char.oAI:OnMagicChanged()
    if Stamina.Active.Value then
      local flos = Stamina.MaxStamina.Value * (Stamina.ActivatePowerLose / 100)
      Stamina.SetStamina(flos)
    end
  end
end

function LightPower.DeactivatePower(Name, DoNotUseFX)
  LightPower.EndUsingStaminaAttack()
  LightPower.FirstPress = false
  LightPower.HoldingButton = false
  LightPower.PowerUse.Value = 0
  delSF("LightPower.Check")
  local char = Game.GetEntity(Name)
  if char == nil then
    return
  end
  local ac = char.oActCtrl.oActClass
  ac.RegenStepEasy = 0
  ac.RegenStep = 0
  ac.RegenStepHard = 0
  Belmont.FXLightPowerOff(Name, DoNotUseFX)
  Effects.FXLightPowerOff()
  if char.oAI then
    char.oAI:OnMagicChanged()
  end
end

LightPower.Jump2Y = 2000

function LightPower.DoubleJuump(char)
  local ret = false
  if char.oActCtrl.oActClass.uData.bWings and char.JumpCounter == 0 then
    if string.find(char.Action, "Run") ~= nil then
      char.Action = "Jump2Run"
      if char.Action == "Jump2Run" then
        ret = true
      end
    elseif string.find(char.Action, "Short") ~= nil then
      char.Action = "Jump2"
      if char.Action == "Jump2" then
        ret = true
      end
      char.AddDispVel = V3D(0, 0, -500)
    else
      char.Action = "Jump2"
      if char.Action == "Jump2" then
        ret = true
      end
      local vel = V3D(char.Vel.x, 0, char.Vel.z)
      if vel:mod() > 400 then
        vel = vel:norm() * V3D(400, 400, 400)
      end
      char.AddDispVel = vel:rot(V3D(0, -char.Ang.y, 0))
    end
    char.DefLoop = "Fall"
    char.JumpCounter = 1
    char.Vel = V3D(0, 0, 0)
    player.uData.DoubleJumpDone = true
  end
  return ret
end

function LightPower.JumpRelease(char)
end

function LightPower.SprintSwitch(o, val)
  if not o.uData.Mount then
    local ActNam = o.Action
    if val == 0 then
      o.owc.DoubleTap = 0
    elseif string.sub(ActNam, #ActNam - 5) == "Sprint" then
      o.Action = ActNam .. "Init"
    end
    if val == 0 then
      Belmont.FXBootsOff(o.Name)
    end
  end
end

function LightPower.OnDoubleTap(Name)
  local o = Game.GetEntity(Name)
  if player.isFalling ~= 0 or player.oActCtrl.oAction.PriorityLevel ~= 0 or Game.Get("IsBelmontTired") then
    o.owc.DoubleTap = 0
  end
end

function LightPower.PlayerDamage(player, target, damage, blocked, HitData)
  local returnedDamage = damage
  if Weapons.ReverseLightAndDark then
    local multiplier = 1
    if HitData and (HitData.Type == "Melee" or HitData.Type == "Whip" or HitData.Type == "Catch") and (not HitData.DarkMagicUse or HitData.DarkMagicUse == 1) and blocked == 0 and (target.uData.Drainable or target:IsType("WalkChar") and target.Invulnerable == 0 and target.TgType == "red" and not target.uData.IsCritter) then
      multiplier = DarkPower.DamageMultiplier
      DarkPower.Consume(player.Name, DarkPower.DarkHitCost * damage * multiplier)
    end
    returnedDamage = damage * multiplier
  else
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
  end
  if Game.Get("IsBelmontUsingStamina") == 1 then
    LightPower.Consume(player.Name, LightPower.StaminaConsumePerHit)
  end
  return returnedDamage
end

function LightPower.Disable()
  Game.ConsoleError("Disabling Light Power\n")
  if LightPower.oldPower == nil and LightPower.oldPowerOn == nil then
    LightPower.oldPower = LightPower.Power.Value
    LightPower.oldPowerOn = LightPower.PowerOn.Value
    LightPower.Power.Value = 0
    LightPower.PowerOn.Value = false
  end
end

function LightPower.Restore()
  Game.ConsoleError("Enabling Light Power\n")
  if LightPower.oldPower and LightPower.oldPowerOn then
    LightPower.Power.Value = LightPower.oldPower
    LightPower.PowerOn.Value = LightPower.oldPowerOn
    LightPower.oldPower = nil
    LightPower.oldPowerOn = nil
  end
end

function LightPower.Enable(ActualValue, MaxValue)
  Game.ConsoleError("Enabling Light Power\n")
  if ActualValue and MaxValue then
    LightPower.Power.Value = ActualValue
    LightPower.PowerMax.Value = MaxValue
  else
    LightPower.Power.Value = 0
    LightPower.PowerMax.Value = 5
  end
end

function LightPower.StartStaminaLoop()
  Game.ConsoleError("Beginning Light Stamina Mode...\n")
  Game.SetTimeSpeed(LightPower.StaminaTimeSpeed)
  LightPower.AreaAttackMovement = V3D(0, 0, 0)
  LightPower.UsingStamina = true
  Game.Set("IsBelmontUsingStamina", 1)
  Belmont.FXStaminaOn()
  if 0 < Game.Get("BelmontPoisonedTimeLeft") then
    Belmont.EndSpiderPoison()
  end
  addSF(0.1, "", "LightPower.LightStaminaConsume", Game.GetTime())
end

function LightPower.LightStaminaConsume(scheduleTime)
  local timeDiff = Game.GetTime() - scheduleTime
  local consume = LightPower.RelaxMagicConsume
  if math.abs(player.owc.UsrWalk) > 0.5 or 0.5 < math.abs(player.owc.UsrStr) then
    consume = LightPower.MovementMagicConsume
  end
  LightPower.Consume(player.Name, consume * timeDiff)
  if Game.Get("IsBelmontUsingStamina") == 1 then
    addSF(0.1, "", "LightPower.LightStaminaConsume", Game.GetTime())
  end
end

function LightPower.StaminaAreaControl(Entity, timeDiff)
  if Game.Get("IsBelmontUsingStamina") == 0 then
    player.ForceAction = "WhipComboLMhEnd"
    Game.ConsoleError("Finalizando estamina por modificacion de GVar\n")
    return
  end
  if math.abs(player.owc.UsrWalk) > 0.5 or 0.5 < math.abs(player.owc.UsrStr) then
    local stickAng = Game.GetControlAng()
    stickAng = stickAng * 180 / 3.14
    local direction = Game.ObtainDirFromAng(0, stickAng, 0)
    local deltaSlot = LightPower.AreaIncrementSec * timeDiff
    local newAttackDirection = LightPower.AreaAttackMovement + direction * deltaSlot
    if newAttackDirection:mod() < LightPower.MaxAreaDisplacementSec then
      LightPower.AreaAttackMovement = newAttackDirection
    end
  elseif 0 < LightPower.AreaAttackMovement:mod() then
    local oldMovement = LightPower.AreaAttackMovement
    LightPower.AreaAttackMovement = LightPower.AreaAttackMovement - LightPower.AreaAttackMovement:norm() * LightPower.AreaIncrementSec * timeDiff * 0.5
    if oldMovement:mod() <= LightPower.AreaAttackMovement:mod() then
      LightPower.AreaAttackMovement = V3D(0, 0, 0)
    end
  else
    LightPower.AreaAttackMovement = V3D(0, 0, 0)
  end
  local newPos = player.Pos + LightPower.AreaAttackMovement
  local col = Game.SafeSlide(player.Pos, newPos, player.oActCtrl.oActClass.Radius, player.WorldCollisionMask + player.WallCollisionMask)
  local p1 = col + V3D(0, player.oActCtrl.oActClass.Radius * 2, 0)
  local p2 = col + V3D(0, -player.oActCtrl.oActClass.Radius * 2, 0)
  col = Game.SafeSlide(p1, p2, player.oActCtrl.oActClass.Radius, player.WorldCollisionMask + player.WallCollisionMask)
  local isOk, onFloor
  local offSet = V3D(0, player.FloorDist - player.oActCtrl.oActClass.Radius, 0)
  isOk, onFloor = player:TestCharPos(col)
  if isOk and col.y + offSet.y - player.Pos.y < LightPower.ScaleLimit then
    player.Pos = col + offSet
    if not onFloor then
      player.isFalling = 1
      LightPower.EndUsingStaminaAttack()
    else
    end
  end
end

function LightPower.EndUsingStaminaAttack()
  if Game.Get("IsBelmontUsingStamina") == 1 and LightPower.HoldingButton then
    LightPower.HoldingButton = false
    Game.ConsoleError("End Light Stamina Mode...\n")
    local worldTimer = Game.GetWorldTimer()
    if worldTimer.uData.Modiff and worldTimer.uData.Modiff.bValidBaseType then
      worldTimer.uData.Modiff.FinalTime = 0.01
      worldTimer.uData.Modiff.oValues[1].Final = 1
      worldTimer.uData.Modiff.bDelete = true
    end
    Game.SetTimeSpeed(1)
    addSF(0, "", "Game.SetTimeSpeed", 1)
    LightPower.UsingStamina = false
    Game.Set("IsBelmontUsingStamina", 0)
    if newAnim then
      player.ForceAction = newAnim
    elseif player.Action == "WhipComboLMhInit" or player.Action == "WhipComboLMh" then
      player.ForceAction = "WhipComboLMhEnd"
    end
    Belmont.FXStaminaOff()
  end
end
