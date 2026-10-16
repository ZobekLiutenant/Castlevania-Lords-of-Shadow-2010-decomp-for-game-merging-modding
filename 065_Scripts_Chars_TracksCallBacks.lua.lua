function TracksCallBacks.main()
end

function TracksCallBacks.NotHitableSwitch(entity, track, frame, lastSegment, newSegment)
  if newSegment then
    Game.ConsoleError(newSegment.Info .. "\n")
  else
    Game.ConsoleError("NONE\n")
  end
end

TracksCallBacks.MagicConsumeSlot = 0.1

function TracksCallBacks.SwitchReleaseButtonAction(entity, track, frame, lastSegment, newSegment)
  if newSegment and not lastSegment then
    local a = Game.Split(newSegment.Info, ",")
    local b = Game.Split(track.Info, ",")
    local time = tonumber(b[1])
    local darkConsume = defparam(tonumber(b[2]), -1)
    local lightConsume = defparam(tonumber(b[3]), -1)
    if entity.uData.ButtonReleased and not WeaponsCombo.LinkHolded(entity, entity.uData.LastTrigeredLink) then
      entity.ForceAction = newSegment.Info
    elseif time and 0 < time then
      addSF(time, entity.Name .. "_SwitchReleaseButtonAction", "TracksCallBacks.ReleaseButtonActionTimeLimit", entity.Name)
    end
    if 0.01 < lightConsume then
      addSF(TracksCallBacks.MagicConsumeSlot, "LightSlot", "TracksCallBacks.LightSlot", entity.Name, lightConsume, newSegment.Info)
    end
    if 0.01 < darkConsume then
      addSF(TracksCallBacks.MagicConsumeSlot, "DarkSlot", "TracksCallBacks.DarkSlot", entity.Name, darkConsume, newSegment.Info)
    end
  end
  if not newSegment and lastSegment then
    delSF(entity.Name .. "_SwitchReleaseButtonAction")
    delSF("LightSlot")
    delSF("DarkSlot")
    entity.uData.ButtonReleased = true
    entity.uData.WaitingForRelease = nil
    entity.uData.LastPressTime = Game.GetTime()
  end
end

function TracksCallBacks.LightSlot(EntityName, consume, action)
  if LightPower.Consume(EntityName, TracksCallBacks.MagicConsumeSlot * consume) then
    addSF(TracksCallBacks.MagicConsumeSlot, "LightSlot", "TracksCallBacks.LightSlot", EntityName, consume, action)
  else
    local ent = Game.GetEntity(EntityName)
    ent.ForceAction = action
  end
end

function TracksCallBacks.DarkSlot(EntityName, consume, action)
  if DarkPower.Consume(EntityName, TracksCallBacks.MagicConsumeSlot * consume) then
    addSF(TracksCallBacks.MagicConsumeSlot, "DarkSlot", "TracksCallBacks.DarkSlot", EntityName, consume, action)
  else
    local ent = Game.GetEntity(EntityName)
    ent.ForceAction = action
  end
end

function TracksCallBacks.ReleaseButtonActionTimeLimit(EntityName)
  local ent = Game.GetEntity(EntityName)
  local trackInfo = ent.oActCtrl:GetTrackInfo("ReleaseButtonAction")
  if ent and trackInfo then
    ent.Action = trackInfo
  end
end

function TracksCallBacks.InitActionsCombo(ClassName, list)
  local ActList = {}
  local Class = Act.GetClass(ClassName)
  local Action = Class.oFirstAction
  while Action do
    ActList[#ActList + 1] = Action.Name
    Action = Action.oNext
  end
  table.sort(ActList)
  for i = 1, #ActList do
    list:Add(ActList[i])
  end
end

function TracksCallBacks.SwitchDeadlyCone(entity, track, frame, lastSegment, newSegment)
  if newSegment and not lastSegment then
    local a = Game.Split(track.Info, ",")
    WeaponsAttacks.BeginDeadlyCone(entity.Name, a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9])
  elseif not newSegment and lastSegment then
    WeaponsAttacks.EndDeadlyCone(entity)
  end
end

function TracksCallBacks.SwitchNoAim(entity, track, frame, lastSegment, newSegment)
  if newSegment and not lastSegment then
    entity.bUseDodgeFakePos = true
    entity.DodgeFakePos = entity.Pos
    entity.uData.LastDodgeAction = entity.Action
  elseif not newSegment and lastSegment then
    entity.bUseDodgeFakePos = false
    entity.uData.LastDodgeAction = nil
  end
end

function TracksCallBacks.SwitchIntangibility(entity, track, frame, lastSegment, newSegment)
  if newSegment and not lastSegment then
    entity.uData.TempArrowCanUse = entity.bArrowCanUse
    entity.uData.TempIntangible = entity.Intangible
    entity.Intangible = true
    entity.bArrowCanUse = false
  elseif not newSegment and lastSegment then
    entity.bArrowCanUse = entity.uData.TempArrowCanUse
    if entity.Intangible then
      entity.Intangible = entity.uData.TempIntangible
    end
    entity.uData.TempArrowCanUse = nil
  end
end

function TracksCallBacks.HideTip(entity, track, frame, lastSegment, newSegment)
  if newSegment and not lastSegment then
    player.bShowNode_OB_Gabriel_Latigo_Punta = false
  elseif not newSegment and lastSegment then
    player.bShowNode_OB_Gabriel_Latigo_Punta = true
  end
end

function TracksCallBacks.SwitchMeleeHit(entity, track, frame, lastSegment, newSegment)
  local segProperties = {
    "TestFrecuency",
    "HitPreset1",
    "HitPreset2",
    "HitPreset3",
    "HitPreset4",
    "PosX",
    "PosY",
    "PosZ",
    "Radius",
    "Node",
    "IgnoreAimEnt",
    "AngX",
    "AngY",
    "Radial"
  }
  local ls = Actions.UnpackTrack(lastSegment, segProperties)
  entity.uData.MeleeHitTrackData = Actions.UnpackTrack(newSegment, segProperties)
  if not lastSegment and newSegment then
    TracksCallBacks.SchTestMeleeHit(entity.Name)
  elseif not newSegment then
    delSF(entity.Name .. "_SchTestMeleeHit")
  end
end

function TracksCallBacks.SchTestMeleeHit(EntityName)
  local entity = Game.GetEntity(EntityName)
  if entity then
    addSF(tonumber(entity.uData.MeleeHitTrackData.TestFrecuency), entity.Name .. "_SchTestMeleeHit", "TracksCallBacks.SchTestMeleeHit", entity.Name)
    local d = entity.uData.MeleeHitTrackData
    local hitpresets = {
      d.HitPreset1,
      d.HitPreset2,
      d.HitPreset3,
      d.HitPreset4
    }
    local angX, angY
    if not d.Radial or tonumber(d.Radial) ~= 1 then
      angX = defparam(d.AngX, 0)
      angY = defparam(d.AngY, 0)
    end
    if hitpresets[1] == "_Variable" then
      if entity.uData.VariableHitPreset then
        hitpresets = Game.Split(entity.uData.VariableHitPreset, ",")
      else
        Game.ConsoleError([[
Hit Preset _Variable not set
At ]] .. EntityName .. " on action " .. entity.Action .. "\n")
      end
    end
    if Weapons.ReverseLightAndDark then
      for i = 1, #hitpresets do
        if hitpresets[i] and hitpresets[i] ~= "" then
          local alias = Weapons.ReverseLightAndDarkAlias[hitpresets[i]]
          if alias then
            hitpresets[i] = alias
          end
        end
      end
    end
    Weapons.MeleeHit(entity.Name, hitpresets, d.PosX, d.PosY, d.PosZ, d.Radius, d.Node, d.IgnoreAimEnt, angX, angY, true)
  end
end

function TracksCallBacks.SwitchMeleeHit2(entity, track, frame, lastSegment, newSegment)
  local segProperties = {
    "TestFrecuency",
    "HitPreset1",
    "HitPreset2",
    "HitPreset3",
    "HitPreset4",
    "PosX",
    "PosY",
    "PosZ",
    "Radius",
    "Node",
    "IgnoreAimEnt",
    "AngX",
    "AngY",
    "Radial"
  }
  local ls = Actions.UnpackTrack(lastSegment, segProperties)
  entity.uData.MeleeHitTrackData2 = Actions.UnpackTrack(newSegment, segProperties)
  if not lastSegment and newSegment then
    TracksCallBacks.SchTestMeleeHit2(entity.Name)
  elseif not newSegment then
    delSF(entity.Name .. "_SchTestMeleeHit2")
  end
end

function TracksCallBacks.SchTestMeleeHit2(EntityName)
  local entity = Game.GetEntity(EntityName)
  if entity then
    addSF(tonumber(entity.uData.MeleeHitTrackData2.TestFrecuency), entity.Name .. "_SchTestMeleeHit2", "TracksCallBacks.SchTestMeleeHit2", entity.Name)
    local d = entity.uData.MeleeHitTrackData2
    local hitpresets = {
      d.HitPreset1,
      d.HitPreset2,
      d.HitPreset3,
      d.HitPreset4
    }
    local angX, angY
    if not d.Radial or tonumber(d.Radial) ~= 1 then
      angX = defparam(d.AngX, 0)
      angY = defparam(d.AngY, 0)
    end
    if Weapons.ReverseLightAndDark then
      for i = 1, #hitpresets do
        if hitpresets[i] and hitpresets[i] ~= "" then
          local alias = Weapons.ReverseLightAndDarkAlias[hitpresets[i]]
          if alias then
            hitpresets[i] = alias
          end
        end
      end
    end
    Weapons.MeleeHit(entity.Name, hitpresets, d.PosX, d.PosY, d.PosZ, d.Radius, d.Node, d.IgnoreAimEnt, angX, angY, true)
  end
end

function TracksCallBacks.RepetitionControl(entity, track, frame, lastSegment, newSegment)
  if newSegment and newSegment.Info == "1" then
    entity.ActionRepetitions = entity.ActionRepetitions + 1
  end
  if not newSegment then
    entity.ActionRepetitions = 0
  end
end

function TracksCallBacks.BlockTimeControl(entity, track, frame, lastSegment, newSegment)
  if not lastSegment and DarkPower.DarkDashActive and entity.oActCtrl:GetTrackInfo("BlockTimeControl") and entity.oActCtrl.oActClass.SprintOnDoubleTap == 1 then
    Belmont.DarkDodgeTestBegin(entity)
  end
  if not newSegment then
    Belmont.DarkDodgeTestEnd(entity)
  end
end

function TracksCallBacks.SwitchContinuousDamageTgt(entity, track, frame, lastSegment, newSegment)
  local segProperties = {"Frequency", "HitPreset"}
  local ns = Actions.UnpackTrack(newSegment, segProperties)
  delSF(entity.Name .. "TrackDamage")
  if newSegment then
    TracksCallBacks.SchDamageTgt(entity.Name, tonumber(ns.Frequency), ns.HitPreset)
  end
end

function TracksCallBacks.SchDamageTgt(entityName, frequency, hitPreset)
  local ent = Game.GetEntity(entityName)
  local tgt = Game.GetEntity(ent.TgtEntity)
  if tgt then
    local oldInvulnerable = tgt.Invulnerable
    tgt.Invulnerable = 0
    tgt.uData.UnavoidableDamage = true
    Weapons.DoDamage(ent, tgt, ent.oActCtrl.oActClass.uData.HitPresets[hitPreset])
    tgt.Invulnerable = oldInvulnerable
    tgt.uData.UnavoidableDamage = nil
    addSF(frequency, entityName .. "TrackDamage", "TracksCallBacks.SchDamageTgt", entityName, frequency, hitPreset)
  end
end

function TracksCallBacks.SwitchIsLurking(entity, track, frame, lastSegment, newSegment)
  if newSegment and not lastSegment then
    entity.uData.IsLurking = true
  elseif not newSegment and lastSegment then
    entity.uData.IsLurking = nil
  end
end

function TracksCallBacks.DoingStopChatSwitch(entity, track, frame, lastSegment, newSegment)
  if newSegment and not lastSegment then
    TracksCallBacks.LastStopChat = tonumber(Game.Get("DoingStopChat"))
    Game.Set("DoingStopChat", tonumber(newSegment.Info))
  elseif not newSegment and lastSegment then
    Game.Set("DoingStopChat", TracksCallBacks.LastStopChat)
  end
end
