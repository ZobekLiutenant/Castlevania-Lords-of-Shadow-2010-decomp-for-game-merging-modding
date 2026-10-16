function Energy.main()
  Energy.Active = false
  
  Energy.MaxEnergy = 100
  Game.Set("ScorerMaxEnergyLevel", Energy.MaxEnergy)
  Energy.IncreaseQuantityPerSec = 15
  Energy.MagicIncreaseQuantityPerSec = 33
  Energy.TiredIncreaseQuantityPerSec = 50
  Energy.MagicConsumeMultiplier = 0.1
  Energy.GameFailedPenalization = 1
  Energy.Level = Energy.MaxEnergy
  Energy.SlotTime = 0.03
  Energy.IncreaseBlocked = false
  Belmont.IsTired = false
  Energy.LastConsumeTime = 0
  Energy.AccumulatedDecrease = 0
  Energy.LastPlayerAction = ""
  Energy.LastPlayerActionFrame = 0
  Energy.SlotLaunched = false
  Energy.Enabled = true
end

function Energy.Reset()
  Game.ConsoleError("Reinitializing Energy...\n")
  Game.Set("ScorerMaxEnergyLevel", Energy.MaxEnergy)
  Energy.Level = Energy.MaxEnergy
end

function Energy.SetEnergy(level)
end

function Energy.Slot()
  Energy.IncreaseByTime()
  addSF(Energy.SlotTime, "EnergySlot", "Energy.Slot", Name)
end

function Energy.IncreaseByTime()
  if Energy.IncreaseBlocked == true then
    return
  end
  if Game.Get("IsBelmontTired") then
    Energy.SetEnergy(Energy.Level + Energy.SlotTime * Energy.TiredIncreaseQuantityPerSec * Energy.GameFailedPenalization)
  elseif Game.Get("ScorerDarkPowerUse") > 0 or 0 < Game.Get("ScorerLightPowerUse") then
    Energy.SetEnergy(Energy.Level + Energy.SlotTime * Energy.MagicIncreaseQuantityPerSec)
  else
    Energy.SetEnergy(Energy.Level + Energy.SlotTime * Energy.IncreaseQuantityPerSec)
  end
end

function Energy.UpdateEnergyBar()
  if Energy.Level > 0 then
  end
  if Scorer.GetItem(0, "LifeBar") then
    Energy.DebugEnergyBar.Fill = Energy.Level / Energy.MaxEnergy
  end
end

function Energy.SetBar(theBar)
  Energy.DebugEnergyBar = theBar
  Energy.DebugEnergyBar.Width = 116
  Energy.DebugEnergyBar.Height = 6
  Energy.DebugEnergyBar.Pos = V3D(320 - Energy.DebugEnergyBar.Width / 2, 400, 0)
  Energy.DebugEnergyBar.Color = Color(0, 255, 0, 255)
  Game.Set("ScorerEnergyLevel", Energy.Level)
end

function Energy.DecreaseEnergy(entityName, quantity)
  if not Game.Get("IsBelmontTired") then
    Energy.SetEnergy(Energy.Level - quantity)
  end
end

function Energy.CheckSprintLoop(entityName, action)
  if Energy.Level <= 0 then
    Game.GetEntity(entityName).owc.DoubleTap = 0
    player.Action = action
  end
end

function Energy.ResetConsumeTime(entity, track, frame, lastSegment, newSegment)
  if newSegment then
    if Game.Split(track.Info, ",")[1] == "TRUE" then
      Energy.IncreaseBlocked = true
    end
  else
    Energy.IncreaseBlocked = false
  end
end

function Energy.ConsumeEnergy(entity, track, frame, newSegment)
end

function Energy.DeleteBar()
end

function Energy.FinishTired(result, meleehit)
end

function Energy.RestartTiredState()
  Energy.GameFailedPenalization = 0.5
  Energy.DebugEnergyBar.Color = Color(128, 0, 0, 255)
end

function Energy.Disable()
  if Energy.Enabled then
    Energy.SetEnergy(Energy.MaxEnergy)
    Energy.Enabled = false
  end
end

function Energy.Enable()
  Energy.Enabled = true
end
