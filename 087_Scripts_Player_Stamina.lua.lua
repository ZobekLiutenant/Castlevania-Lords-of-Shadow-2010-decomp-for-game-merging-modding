Stamina.ActivatePowerLose = 95

function Stamina.main()
  Stamina.Active = Game.GVar("ScorerStaminaActive")
  Stamina.MaxStamina = Game.GVar("ScorerStaminaMaxLevel")
  Stamina.ActivatedTime = Game.GVar("ScorerStaminaActivatedTime")
  Stamina.ActivatedMaxTime = Game.GVar("ScorerStaminaActivatedMaxTime")
  Stamina.StaminaLevel = Game.GVar("ScorerStaminaLevel")
  Stamina.Active.Value = false
  Stamina.Active.Default = false
  Stamina.MaxStamina.Value = 500
  Stamina.MaxStamina.Default = 500
  Stamina.StaminaDmgReceived = 0
  Stamina.StaminaDmgBlocked = 0
  Stamina.StaminaDmgSyncBlocked = 0
  Stamina.StaminaDmgEnemyReceived = 0
  Stamina.StaminaDmgEnemyBlocked = 0
  Stamina.DecreaseQuantityPerSec = 5
  Stamina.Level = 0
  Stamina.InactivityTime = 0
  Stamina.MaxInactivityTime = 30
  Stamina.SlotTime = 0.1
  Stamina.ActivatedTime.Value = 0
  Stamina.ActivatedTime.Default = 0
  Stamina.ActivatedMaxTime.Value = 10
  Stamina.ActivatedMaxTime.Default = 10
  Stamina.MagicMultiplier = 2
  Stamina.Enabled = true
end

function Stamina.Reset()
  Stamina.SetStamina(0)
  Stamina.Level = 0
  Stamina.InactivityTime = 0
  Stamina.UpdateStaminaBar()
  Stamina.SlotTime = 0.1
  Stamina.ActivatedMaxTime.Value = 10
  Stamina.UsageCostPerSec = 20
  Stamina.ActivatedTime.Value = 0
  Stamina.CanUse = false
  Stamina.Active.Value = false
end

function Stamina.SetStamina(level)
  if not Stamina.Enabled then
    level = 0
  end
  local isMagicOn = 0 < DarkPower.PowerUse.Value or 0 < LightPower.PowerUse.Value
  if not (DarkPower.PowerOn.Value or LightPower.PowerOn.Value) or isMagicOn and level > Stamina.Level then
    level = Stamina.Level
  end
  if level > Stamina.Level or isMagicOn then
    Stamina.InactivityTime = 0
  end
  Stamina.Level = level
  if Stamina.Level > Stamina.MaxStamina.Value then
    Stamina.Level = Stamina.MaxStamina.Value
    if not Stamina.Active.Value then
      ScorerSprites.StaminaFocusActive()
      if Stamina.OnFocusOn then
        Stamina.OnFocusOn()
      end
    end
    Stamina.Active.Value = true
  end
  if init and init.LevelName and init.LevelName == "level.8_3_top_corridor" and Trials.isTrial and MapTrial ~= nil then
    if Stamina.Level >= Stamina.MaxStamina.Value then
      MapTrial.StaminaAtMax()
    else
      MapTrial.ResetStaminaCounter()
    end
  end
  if 0 >= Stamina.Level then
    Stamina.Level = 0
  end
  if Stamina.Active.Value and Stamina.Level < Stamina.MaxStamina.Value then
    Stamina.Active.Value = false
    if Stamina.DebugStaminaBar and Stamina.DebugStaminaBar.bValidBaseType then
      Stamina.DebugStaminaBar.Color = Color(255, 255, 0, 255)
    end
    ScorerSprites.StaminaFocusLose()
  end
  Stamina.StaminaLevel.Value = Stamina.Level
  Stamina.UpdateStaminaBar()
end

Stamina.Buffer = {}
Stamina.CoolnessMult = 1
Stamina.RepMultipliers = {
  1,
  0.2,
  0,
  0
}
Stamina.BufferSlots = 10
Stamina.HitCaducity = 20

function Stamina.EnemyDamageStamina(From, To, Damage, HitData)
  if Stamina.Active.Value then
    Stamina.ActivatedTime.Value = 0
    ScorerSprites.StaminaMantain()
  else
    local repetitions = Stamina.HitDataOcurrences(HitData)
    if (not Stamina.Buffer[1] or Stamina.Buffer[1][1] ~= HitData) and LightPower.PowerUse.Value == 0 and DarkPower.PowerUse.Value == 0 then
      local rep = clamp(0, #Stamina.RepMultipliers, repetitions)
      local gain = defparam(HitData.Coolness, 40) * Stamina.CoolnessMult * Stamina.RepMultipliers[rep] * SkillSettings[init.GameSkill.Value].FocusGain
      ScorerSprites.ShowFocusGain(gain, rep)
      Stamina.SetStamina(Stamina.Level + gain)
      table.insert(Stamina.Buffer, {
        HitData,
        Game.GetTime()
      })
    end
  end
end

function Stamina.HitDataOcurrences(HitData)
  local comp = function(a, b)
    return a[2] > b[2]
  end
  table.sort(Stamina.Buffer, comp)
  local repetitions = 1
  local bufferSlots = Stamina.BufferSlots
  for i, data in pairs(Stamina.Buffer) do
    if i >= bufferSlots or data[2] + Stamina.HitCaducity < Game.GetTime() then
      table.remove(Stamina.Buffer, i)
    elseif data[1] == HitData then
      repetitions = repetitions + 1
    end
  end
  Game.Log("Repetitions: " .. repetitions .. "\n", 2)
  return repetitions
end

function Stamina.Slot()
  if Stamina.Enabled then
    if not Stamina.Active.Value then
      Stamina.DecreaseByTime()
    end
    Stamina.ActiveControl()
  end
  addSF(Stamina.SlotTime, "StaminaSlot", "Stamina.Slot", Name)
end

function Stamina.DecreaseByTime()
  if not Stamina.Active.Value and Stamina.Level > 0 and not Stamina.Active.Value then
    if Stamina.InactivityTime > Stamina.MaxInactivityTime then
      Stamina.SetStamina(0)
    else
      Stamina.InactivityTime = Stamina.InactivityTime + Stamina.SlotTime
      Stamina.SetStamina(Stamina.Level - Stamina.SlotTime * Stamina.DecreaseQuantityPerSec)
    end
  end
end

function Stamina.UpdateStaminaBar(IgnoreDinamics)
  if Stamina.Level > 0 then
  end
  if Stamina.DebugStaminaBar and Stamina.DebugStaminaBar.bValidBaseType and Stamina.DebugStaminaBar then
    Stamina.DebugStaminaBar.Fill = Stamina.Level / Stamina.MaxStamina.Value
  end
end

function Stamina.DisableBar()
  Stamina.SetStamina(0)
end

function Stamina.ActiveControl()
  if Stamina.Active.Value then
    if Stamina.DebugStaminaBar and Stamina.DebugStaminaBar.bValidBaseType then
      Stamina.DebugStaminaBar.Color = Color(Game.Rand(0, 255), Game.Rand(0, 255), Game.Rand(0, 255), 255)
    end
    Stamina.ActivatedTime.Value = Stamina.ActivatedTime.Value + Stamina.SlotTime
    if Stamina.ActivatedTime.Value >= Stamina.ActivatedMaxTime.Value then
      Stamina.ActivatedTime.Value = 0
      Stamina.Active.Value = false
      ScorerSprites.StaminaFocusLose()
      if Stamina.DebugStaminaBar and Stamina.DebugStaminaBar.bValidBaseType then
        Stamina.DebugStaminaBar.Color = Color(255, 255, 0, 255)
      end
    end
  end
end

function Stamina.EndUsing()
  DarkPower.EndUsingStaminaAttack()
  LightPower.EndUsingStaminaAttack()
end

function Stamina.DisableIfEnabled()
  if Belmont.IsUsingMagicStamina() then
    Stamina.EndUsing()
  end
end

function Stamina.SetBar(theBar)
  Stamina.DebugStaminaBar = theBar
  Stamina.DebugStaminaBar.Pos = V3D(66, 75, 0)
  Stamina.DebugStaminaBar.Color = Color(255, 255, 0, 255)
  Stamina.DebugStaminaBar.Width = 116
  Stamina.DebugStaminaBar.Height = 4
end

function Stamina.DisableControl()
  Stamina.SetStamina(0)
  Stamina.Enabled = false
  Stamina.Active.Value = false
end

function Stamina.EnableControl()
  Stamina.Enabled = true
end

function Stamina.OnStaminaSwitch(entity, track, frame, lastSegment, newSegment)
  if newSegment then
    if player.Action == "WhipComboLMhInit" then
      LightPower.StartStaminaLoop()
    end
    if player.Action == "WhipComboDrMhInit" then
      DarkPower.StartStaminaLoop()
    end
  else
    Stamina.EndUsing(player.Action)
  end
  if lastSegment then
  else
  end
end
