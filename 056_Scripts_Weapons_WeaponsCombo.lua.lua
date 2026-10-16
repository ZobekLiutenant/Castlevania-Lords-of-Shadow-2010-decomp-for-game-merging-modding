WeaponsCombo.CaducityParry = 1
WeaponsCombo.LinkTypes = {
  "PressArea",
  "PressDirect",
  "PressDagger",
  "PressVial",
  "PressCrystal",
  "PressFairy",
  "PressGrip",
  "PressJump"
}
WeaponsCombo.DashTime = 0.1
WeaponsCombo.AutoAimAngle = Game.GVar("AutoAimAngle")
WeaponsCombo.AutoAimAngleInStop = Game.GVar("AutoAimAngleInStop")
WeaponsCombo.CentimetersVsDegreesRatio = Game.GVar("CentimetersVsDegreesRatio")
WeaponsCombo.CentimetersVsDegreesRatioInStop = Game.GVar("CentimetersVsDegreesRatioInStop")
WeaponsCombo.AutoAimObjectPenalization = Game.GVar("AutoAimObjectPenalization")
WeaponsCombo.AutoAimObjectPenalizationInStop = Game.GVar("AutoAimObjectPenalizationInStop")
WeaponsCombo.Ranges = {
  PressArea = 1500,
  PressDirect = 1500,
  PressDagger = 8000,
  PressVial = 1500,
  PressCrystal = 6000,
  PressFairy = 1500,
  PressGrip = 4000,
  PressJump = 1500
}
WeaponsCombo.Buttons = {
  PressArea = "AreaAttack",
  PressDirect = "DirectionalAttack",
  PressDagger = "RangedAttack",
  PressVial = "RangedAttack",
  PressCrystal = "RangedAttack",
  PressFairy = "RangedAttack",
  PressGrip = "Grip",
  PressJump = "Jump"
}

function WeaponsCombo.main()
  if not WeaponsCombo.PressCount then
    WeaponsCombo.PressCount = {}
    for i, n in pairs(WeaponsCombo.LinkTypes) do
      WeaponsCombo.PressCount[n] = {}
    end
  end
end

function WeaponsCombo.AddCheckBufferEvents(ac)
  local am = ac.oFirstAction
  while am ~= nil do
    local data = am.uData.CD
    if data then
      for i, n in pairs(WeaponsCombo.LinkTypes) do
        local presetName = data[n]
        presetName = presetName or GabrielCombos.DefaultLinks[am.Group][n]
        if CombatLinks.Presets[presetName] then
          for i, d in pairs(CombatLinks.Presets[presetName]) do
            if d[2].Frames then
              local EventTime
              EventTime = WeaponsCombo.GetValue(d[2].Frames[2], am)
              if EventTime and EventTime ~= 0 then
                local evTimStr = string.sub("" .. EventTime, 0, 6)
                local evName = n .. "," .. evTimStr
                local duplicated = false
                local evIte = am.oFirstEvent
                while evIte do
                  if evIte.Name == evName and ev.Func == "WeaponsCombo.EventCheckBuffer" then
                    duplicated = true
                    break
                  end
                  evIte = evIte.oNext
                end
                if not duplicated then
                  ev = am:NewEvent(EventTime)
                  ev.Name = evName
                  ev.Func = "WeaponsCombo.EventCheckBuffer"
                end
              end
            end
          end
        else
          Game.ConsoleError("Preset " .. presetName .. " dont exists!!!!!\n")
        end
      end
    end
    am = am.oNext
  end
end

function WeaponsCombo.AddComboData(ac, am, animation, data)
  local weapType = defparam(data.Type, "")
  if am.uData.CD then
    for n, d in pairs(am.uData.CD) do
      data[n] = d
    end
  end
  am.uData.CD = data
  am.uData.MultiAirAttacks = data.MultiAirAttacks
  return am
end

function WeaponsCombo.GetValue(value, am)
  local ret = 0
  local data = am.uData.CD
  if data and value then
    if type(value) == "string" then
      local name = value
      value = data[value]
      if value then
        if value + 0 == 0 then
          ret = 0
        else
          ret = am:TimeFrame(value)
        end
      else
        return ret
      end
    elseif value + 0 == 0 then
      ret = 0
    else
      ret = am:TimeFrame(value)
    end
  end
  return ret
end

WeaponsCombo.MinFloorDist = 250

function WeaponsCombo.GetWantedAnim(EntityName, data, time, TgtEntity, frame, TimePushingStick, Action, LinkType, Parry)
  if not data then
    return nil
  end
  local ent = Game.GetEntity(EntityName)
  local act = ent.oActCtrl.oAction
  local tooLow = Game.TestLine(ent.Pos, ent.Pos - V3D(0, WeaponsCombo.MinFloorDist, 0), "")
  if ent.isFalling == 1 and (ent.bUsedAirAttack and act.uData.CD and act.uData.CD.MultiAirAttacks ~= 1 or tooLow) then
    return nil
  end
  local tgtentity = Game.GetEntity(TgtEntity)
  local validLinks = data
  for condIdx = 1, #LinkConditions.Conditions do
    validLinks = LinkConditions.Conditions[condIdx][2](validLinks, ent, tgtentity, time, frame, TimePushingStick, Action, LinkType, Parry)
  end
  if MapTutorials and MapTutorials.PurgeLinks then
    validLinks = MapTutorials.PurgeLinks(validLinks)
  end
  local bestFit = WeaponsCombo.SelectBestFit(validLinks)
  if bestFit then
    return bestFit
  else
    return nil
  end
end

function WeaponsCombo.SelectBestFit(LinksData)
  local bestFit
  local bestScore = -1
  local bestRunningTime
  for i, n in pairs(LinksData) do
    local score = WeaponsCombo.GetScore(n[2])
    local runningTime
    if n[2].RunningTime then
      runningTime = n[2].RunningTime
    end
    if bestScore < score or runningTime and (not bestRunningTime or bestRunningTime < runningTime) then
      if runningTime then
        bestRunningTime = runningTime
      end
      bestFit = n
      bestScore = score
    end
  end
  return bestFit
end

function WeaponsCombo.GetScore(conditions)
  local item = next(conditions)
  local score = 0
  while item ~= nil and conditions[item] ~= nil do
    if item == "Dash" then
      score = score + 3
    end
    if item == "Parry" then
      score = score + 4
    end
    score = score + 1
    item = next(conditions, item)
  end
  return score
end

function WeaponsCombo.GetReferencedNumber(act, data)
  if data then
    if type(data) == "string" then
      if act.uData.CD[data] then
        data = act.uData.CD[data]
      else
        Game.ConsoleError("erroneous reference to property " .. data .. " in action" .. act.Name .. "\n")
      end
    end
    return data
  end
end

function WeaponsCombo.GetAimEntity(EntityName, range, SearchForBlue)
  local a, b, noEntitiesNear = Game.GetAimEntity(EntityName, range, SearchForBlue)
  local ent = Game.GetEntity(a)
  while ent and ent.uData.ObjectToPropagateDamage do
    ent = Game.GetEntity(ent.uData.ObjectToPropagateDamage)
    if ent then
      a = ent.Name
      b = ent.Name
    end
  end
  return a, b, noEntitiesNear
end

function WeaponsCombo.EventClearBuffer(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  ent.uData.ComboBuffer = {}
end

function WeaponsCombo.EventCheckBuffer(EntityName, EventName, Time)
  local d = Game.Split(EventName, ",")
  local LinkType = d[1]
  local eventTime = d[2] + 0
  local ent = Game.GetEntity(EntityName)
  local act = ent.oActCtrl.oAction
  local range = defparam(WeaponsCombo.Ranges[LinkType], 8000)
  local SearchForBlue = 0
  if ent.owc.Parry == 1 and LinkType ~= "PressJump" then
    SearchForBlue = 1
  end
  local a, b, noEntitiesNear
  if LinkType ~= "PressGrip" then
    a, b, noEntitiesNear = WeaponsCombo.GetAimEntity(EntityName, range, SearchForBlue)
  elseif ent.oAutoSelectedEntity then
    a = ent.oAutoSelectedEntity.Name
    b = a
    noEntitiesNear = false
  else
    a = ""
    b = ""
    noEntitiesNear = false
  end
  if ent.uData.ForceTgtEntity and (Game.GetTime() < ent.uData.ForceTgtTime or 0 > ent.uData.ForceTgtTime) then
    a = ent.uData.ForceTgtEntity
    b = ent.uData.ForceTgtEntity
  end
  local caducity
  if WeaponsCombo.IsPushingStick() then
    caducity = WeaponsCombo.DinamicCaducity
  else
    caducity = WeaponsCombo.Caducity
  end
  if ent.uData.SuggestTgtEntity and Game.GetTime() < ent.uData.SuggestTgtTime + 1.5 and (not WeaponsCombo.PointingOppositeTo(ent.Name, ent.uData.SuggestTgtEntity) or not WeaponsCombo.IsPushingStick()) then
    a = ent.uData.SuggestTgtEntity
    b = a
  end
  if ent.owc.Parry == 1 and LinkType == "PressJump" and b then
    local enti = Game.GetEntity(b)
    if enti and not enti:IsType("WalkChar") then
      a = ""
      b = ""
    end
  end
  local aimEnt = Game.GetEntity(a)
  if not aimEnt or 0 >= aimEnt.Life then
    if noEntitiesNear then
      caducity = WeaponsCombo.Caducity
    else
      caducity = 0
    end
  end
  if ent.owc.Parry == 1 then
    caducity = WeaponsCombo.CaducityParry
  end
  WeaponsCombo.SortAndPurge(ent, ent.uData.ComboBuffer, caducity)
  if ent.uData.ComboBuffer[1] then
    local NextInBuffer = ent.uData.ComboBuffer[1]
    if NextInBuffer and NextInBuffer[2] == LinkType then
      local aimEntityName, tgtEntityName
      if ent.oActCtrl.oSync and not ent.uData.Rider and 0 < ent.oActCtrl.oSync.Life then
        aimEntityName = ent.oActCtrl.oSync.Name
        tgtEntityName = ent.oActCtrl.oSync.Name
      else
        aimEntityName = a
        tgtEntityName = b
      end
      local presetName = act.uData.CD[LinkType]
      presetName = presetName or GabrielCombos.DefaultLinks[act.Group][LinkType]
      local linkData = CombatLinks.Presets[presetName]
      local bestFit = WeaponsCombo.GetWantedAnim(EntityName, linkData, NextInBuffer[3], tgtEntityName, eventTime, NextInBuffer[5], NextInBuffer[4], LinkType, NextInBuffer[6])
      if bestFit and bestFit[1] then
        WeaponsCombo.TriggerAction(ent, bestFit, aimEntityName, tgtEntityName, LinkType)
        table.remove(ent.uData.ComboBuffer, 1)
      end
    end
  end
end

function WeaponsCombo.PointingOppositeTo(FromName, ToName)
  local To = Game.GetEntity(ToName)
  local From = Game.GetEntity(FromName)
  if not To or not From then
    return true
  end
  local angToTgt = (To.Pos - From.Pos):getrot().y
  local stickAng = Game.GetControlAng()
  stickAng = stickAng * 180 / 3.14
  local diffAng = math.abs(Game.NormAng(stickAng - angToTgt))
  return diffAng < 90
end

function WeaponsCombo.TriggerAction(ent, actionData, aimEntityName, tgtEntityName, LinkType)
  local action = actionData[1]
  if Game.Get("IsBelmontTired") and action ~= "TiredComboA" and action ~= "TiredComboAA" then
    return
  end
  ent.oWhip.precHitPos = V3D(0, 0, 0)
  local newAct = ent.oActCtrl.oActClass:GetAct(action)
  if not newAct then
    Game.ConsoleError("TriggerAction -> No action " .. action .. " in entity " .. ent.Name .. "\n")
  end
  if aimEntityName ~= "" and newAct.uData.CD and newAct.uData.CD.SelectTgt == 1 then
    local aimEnt = Game.GetEntity(aimEntityName)
    if aimEnt then
      ent.oWhip.oTarget = aimEnt
    end
  elseif aimEntityName == "" and newAct.uData.CD and newAct.uData.CD.SelectTgt == 1 then
    ent.oWhip.oTarget = nil
    ent.oWhip.precHitPos = V3D(0, 0, 0)
  end
  WeaponsCombo.SetAction(ent, action, aimEntityName, tgtEntityName)
  ent.oWhip:TestPreHits()
  ent.uData.LastTrigeredLink = LinkType
  if LinkType == "PressArea" and ent.owc.AreaAttack == 1 or LinkType == "PressDirect" and ent.owc.DirectionalAttack == 1 or LinkType == "PressDagger" and ent.owc.RangedAttack == 1 or LinkType == "PressVial" and ent.owc.RangedAttack == 1 or LinkType == "PressCrystal" and ent.owc.RangedAttack == 1 or LinkType == "PressJump" and ent.owc.Jump == 1 or LinkType == "PressGrip" and ent.owc.Grip == 1 then
    ent.uData.ButtonReleased = false
  else
    ent.uData.ButtonReleased = true
  end
end

function WeaponsCombo.ProcessAction(EntityName, LinkType, TgtEntity)
  if Satan and LinkType == "PressGrip" then
    Satan.OnGrip()
  end
  local ent = Game.GetEntity(EntityName)
  local act = ent.oActCtrl.oAction
  local ret = false
  ent.uData.LastPressType = LinkType
  ent.uData.LastPressTime = Game.GetTime()
  local linksData
  if not act.uData.CD or act.uData.CD and not act.uData.CD[LinkType] then
    local groupLinkData = ent.uData.DefaultLinks[act.Group]
    groupLinkData = groupLinkData or ent.uData.DefaultLinks.Default
    linksData = CombatLinks.Presets[groupLinkData[LinkType]]
  else
    linksData = CombatLinks.Presets[act.uData.CD[LinkType]]
  end
  local aimEntityName, tgtEntityName
  if TgtEntity then
    aimEntityName = TgtEntity
    tgtEntityName = TgtEntity
  elseif ent.oActCtrl.oSync and not ent.uData.Rider and ent.oActCtrl.oSync.Life > 0 then
    aimEntityName = ent.oActCtrl.oSync.Name
    tgtEntityName = ent.oActCtrl.oSync.Name
  else
    local range = defparam(WeaponsCombo.Ranges[LinkType], 8000)
    local SearchForBlue = 0
    if ent.owc.Parry == 1 and LinkType ~= "PressJump" then
      SearchForBlue = 1
    end
    local a, b, noEntitiesNear = WeaponsCombo.GetAimEntity(EntityName, range, SearchForBlue)
    if ent.uData.ForceTgtEntity and (Game.GetTime() < ent.uData.ForceTgtTime or 0 > ent.uData.ForceTgtTime) then
      a = ent.uData.ForceTgtEntity
      b = ent.uData.ForceTgtEntity
    end
    if ent.uData.SuggestTgtEntity and Game.GetTime() < ent.uData.SuggestTgtTime + 1.5 and (not WeaponsCombo.PointingOppositeTo(ent.Name, ent.uData.SuggestTgtEntity) or not WeaponsCombo.IsPushingStick()) then
      a = ent.uData.SuggestTgtEntity
      b = ent.uData.SuggestTgtEntity
    end
    if ent.owc.Parry == 1 and LinkType == "PressJump" and b then
      local enti = Game.GetEntity(b)
      if enti and not enti:IsType("WalkChar") then
        a = ""
        b = ""
      end
    end
    aimEntityName = a
    tgtEntityName = b
  end
  local bestFit = WeaponsCombo.GetWantedAnim(EntityName, linksData, ent.oActCtrl.AnimTime, tgtEntityName, nil, ent.TimePushingStick, ent.Action, LinkType, ent.owc.Parry)
  if bestFit then
    if not bestFit[2].Frames then
      WeaponsCombo.TriggerAction(ent, bestFit, aimEntityName, tgtEntityName, LinkType)
      ret = true
    else
      local a = WeaponsCombo.GetFrameValues(bestFit[2].Frames, act)
      local time1 = a[1]
      local time2 = a[2]
      local time3 = a[3]
      if time2 <= ent.oActCtrl.AnimTime and time3 >= ent.oActCtrl.AnimTime then
        WeaponsCombo.TriggerAction(ent, bestFit, aimEntityName, tgtEntityName, LinkType)
        ret = true
      elseif time1 <= ent.oActCtrl.AnimTime and time2 > ent.oActCtrl.AnimTime then
        if ent.uData.ComboBuffer[1] and LinkType ~= ent.uData.ComboBuffer[1][2] then
          ent.uData.ComboBuffer = {}
        end
        table.insert(ent.uData.ComboBuffer, {
          Game.GetTime(),
          LinkType,
          ent.oActCtrl.AnimTime,
          ent.Action,
          ent.TimePushingStick,
          ent.owc.Parry
        })
        ret = true
      else
        Game.Log("link con frames pero no para este momento, la pulsaci\243n ser\225 almacenada\n(action: " .. ent.Action .. "  link: " .. bestFit[1] .. ")\n", 2)
        if not ent.uData.ComboBuffer[1] or ent.uData.ComboBuffer[1][2] ~= "PressJump" then
          table.insert(ent.uData.ComboBuffer, {
            Game.GetTime(),
            LinkType,
            ent.oActCtrl.AnimTime,
            ent.Action,
            ent.TimePushingStick,
            ent.owc.Parry
          })
        end
      end
    end
  elseif not ent.uData.ComboBuffer[1] or ent.uData.ComboBuffer[1][2] ~= "PressJump" then
    table.insert(ent.uData.ComboBuffer, {
      Game.GetTime(),
      LinkType,
      ent.oActCtrl.AnimTime,
      ent.Action,
      ent.TimePushingStick,
      ent.owc.Parry
    })
  end
  return ret
end

function WeaponsCombo.GetFrameValues(framesData, am)
  local time1, time2, time3
  if framesData[1] then
    time1 = WeaponsCombo.GetValue(framesData[1], am)
  else
    time1 = 0
  end
  if framesData[2] then
    time2 = WeaponsCombo.GetValue(framesData[2], am)
  else
    Game.ConsoleError("animaci\243n de buffer en toda la animaci\243n\n")
    time2 = am.AnmTotalTime
  end
  if framesData[3] then
    time3 = WeaponsCombo.GetValue(framesData[3], am)
  else
    time3 = am.AnmTotalTime
  end
  return {
    time1,
    time2,
    time3
  }
end

function WeaponsCombo.SetAction(ent, action, aimEntityName, tgtEntityName)
  local animLaunched = false
  local act = ent.oActCtrl.oActClass:GetAct(action)
  if not act then
    Game.ConsoleError("Action " .. action .. " don't exists in entity" .. ent.Name .. "\n")
    return
  end
  if ent.Action == action then
    ent.oActCtrl:ResetPrimaryAction()
  else
    if ent.oActCtrl.oAction.PriorityLevel > act.PriorityLevel then
      Game.Log("lanzando una acci\243n de combo con prioridad m\225s baja que la acci\243n actual\n", 2)
      Game.Log(action .. " = " .. act.PriorityLevel .. "\n", 2)
      Game.Log(ent.Action .. " = " .. ent.oActCtrl.oAction.PriorityLevel .. "\n", 2)
    end
    ent.ForceAction = action
  end
  if act.uData.CD and act.uData.CD.SelectTgt == 1 then
    ent.AimEntity = aimEntityName
    ent.TgtEntity = tgtEntityName
  end
end

function WeaponsCombo.SortAndPurge(ent, t, caducity)
  local comp = function(a, b)
    return a[1] < b[1]
  end
  table.sort(t, comp)
  local ocurrences = {}
  local item = next(t)
  while item ~= nil and t[item] ~= nil do
    if caducity and t[item][1] + caducity < Game.GetTime() then
      if WeaponsCombo.LinkPressed(ent, t[item][2]) and not ocurrences[t[item][2]] then
        if 2 <= Weapons.Debug.Value then
          Game.Log("maintining " .. t[item][2] .. " in buffer because is still pressed\n", 3)
        end
        ocurrences[t[item][2]] = true
        item = next(t, item)
      else
        if 2 <= Weapons.Debug.Value then
          Game.Log("removing caducated item from buffer (" .. Game.GetTime() - t[item][1] .. " > " .. caducity .. ")\n", 3)
        end
        table.remove(t, item)
      end
    else
      if caducity and 2 <= Weapons.Debug.Value then
        Game.Log("mantaining item in the buffer (" .. Game.GetTime() - t[item][1] .. " < " .. caducity .. ")\n", 3)
      end
      item = next(t, item)
    end
  end
  table.sort(t, comp)
end

function WeaponsCombo.LinkPressed(ent, tipo)
  if ent.owc[WeaponsCombo.Buttons[tipo]] == 1 then
    return true
  else
    return false
  end
end

function WeaponsCombo.ReadyToWalk(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  if ent and ent.oActCtrl then
    ent.oActCtrl.AnimPriority = 0
    ent.owc.Walk = ent.owc.UsrWalk
    ent.owc.Str = ent.owc.UsrStr
    ent.bIsWalking = false
    if Game.Get("IsBelmontTired") then
      ent.ForceAction = "TiredRelaxInit"
    else
      ent.DefLoop = ent.ExtraSufix .. "Relax"
    end
  end
end

function WeaponsCombo.IsPushingStick()
  local ent = Game.UsrEntity(0)
  if ent then
    return math.abs(ent.owc.UsrWalk) > 0.1 or 0.1 < math.abs(ent.owc.UsrStr)
  else
    return false
  end
end

function WeaponsCombo.AddDataFromList(ac, list)
  for animName, data in pairs(list) do
    local a = Game.Split(animName, ",")
    for i, n in pairs(a) do
      local am = ac:GetAct(n)
      if am then
        WeaponsCombo.AddComboData(ac, am, n, data)
      else
        Game.Log("Combo data for '" .. n .. "' defined but Action has not been created\n", 3)
      end
    end
  end
end

function WeaponsCombo.DamageTarget(EntityName, EventName, Time)
  if EditorAnimTester and EditorAnimTester.object then
    return
  end
  local ent = Game.GetEntity(EntityName)
  local tgt = Game.GetEntity(ent.TgtEntity)
  local a = Game.Split(EventName, ",")
  local damage = tonumber(a[1])
  local oldInvulnerable = tgt.Invulnerable
  tgt.Invulnerable = 0
  tgt.uData.UnavoidableDamage = true
  if a[2] and a[2] ~= "" then
    Weapons.DoDamage(ent, tgt, ent.oActCtrl.oActClass.uData.HitPresets[a[2]])
  else
    Weapons.DoDamage(ent, tgt, {
      Damage = damage,
      Reaction = -1,
      GiveMagic = 0,
      GiveMagicOnHit = 0
    })
  end
  tgt.Invulnerable = oldInvulnerable
  tgt.uData.UnavoidableDamage = nil
end

function WeaponsCombo.DamageEntity(EntityName, EventName, Time)
  if EditorAnimTester and EditorAnimTester.object then
    return
  end
  local ent = Game.GetEntity(EntityName)
  local tgt
  if ent.UsrControl == -1 then
    tgt = player
  elseif ent.oActCtrl.oSync then
    tgt = ent.oActCtrl.oSync
  elseif ent.oActCtrl.oParentSync then
    tgt = ent.oActCtrl.oParentSync.oParent
  end
  local a = Game.Split(EventName, ",")
  local damage = tonumber(a[1])
  if damage == -1 then
    damage = ent.Life
  end
  local oldInvulnerable = ent.Invulnerable
  ent.Invulnerable = 0
  ent.uData.UnavoidableDamage = true
  if a[2] and a[2] ~= "" then
    Weapons.DoDamage(tgt, ent, ent.oActCtrl.oActClass.uData.HitPresets[a[2]])
  else
    Weapons.DoDamage(tgt, ent, {
      Damage = damage,
      Reaction = -1,
      GiveMagic = 0,
      GiveMagicOnHit = 0
    })
  end
  ent.Invulnerable = oldInvulnerable
  ent.uData.UnavoidableDamage = nil
end

function WeaponsCombo.IncPressCount(ent, class)
  table.insert(WeaponsCombo.PressCount[class], Game.GetTime())
  local onPressFunc = ent.oActCtrl:GetTrackInfo("OnPressFunc")
  if onPressFunc then
    local a = Game.Split(onPressFunc, ",")
    local pressType = a[1]
    if pressType == class then
      local a = Game.Split(a[2], ".")
      _G[a[1]][a[2]](ent)
    end
  end
end

WeaponsCombo.RapidFireCaducity = 0.5
WeaponsCombo.RapidFireHits = 2
WeaponsCombo.StartRapidFireCaducity = 0.5
WeaponsCombo.StartRapidFireHits = 2

function WeaponsCombo.CheckRapidFire(pressType, initial)
  local currentTime = Game.GetTime()
  local hits = 0
  local caducity = WeaponsCombo.RapidFireCaducity
  local neededHits = WeaponsCombo.RapidFireHits
  if initial then
    caducity = WeaponsCombo.StartRapidFireCaducity
    neededHits = WeaponsCombo.StartRapidFireHits
  end
  if WeaponsCombo.PressCount[pressType] then
    for i = 1, #WeaponsCombo.PressCount[pressType] do
      if currentTime < WeaponsCombo.PressCount[pressType][i] + caducity then
        hits = hits + 1
      else
        table.remove(WeaponsCombo.PressCount, i)
      end
    end
  end
  return neededHits <= hits
end

function WeaponsCombo.EventCheckRapidFire(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local a = Game.Split(EventName, ",")
  local pressType = a[1]
  local actionIfYes = a[2]
  local actionIfNo = a[3]
  if WeaponsCombo.CheckRapidFire(pressType) then
    ent.ForceAction = actionIfYes
  else
    ent.ForceAction = actionIfNo
  end
end

function WeaponsCombo.LaunchActionIfHold(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  if ent and ent.oAI and ent ~= Game.UsrEntity(0) then
    return
  end
  local a = Game.Split(EventName, ",")
  local actionName = a[1]
  local repetitionsToRelease = defparam(tonumber(a[2]), -1)
  local repetitionsExceded = false
  local staminaUse = defparam(tonumber(a[3]), -1)
  local darkUse = defparam(tonumber(a[4]), 0)
  local lightUse = defparam(tonumber(a[5]), 0)
  local parry = defparam(tonumber(a[7]), 0)
  local holdTime = defparam(tonumber(a[8]), 0.4)
  local ignoreRelease = 1 == defparam(tonumber(a[9]), 0)
  if a[6] ~= nil and a[6] ~= "" and not Experience.isCombatScroll(a[6]) then
    return
  end
  if repetitionsToRelease ~= -1 then
    if not ent.uData.IfHoldCounter then
      ent.uData.IfHoldCounter = 0
    end
    ent.uData.IfHoldCounter = ent.uData.IfHoldCounter + 1
    if repetitionsToRelease < ent.uData.IfHoldCounter then
      repetitionsExceded = true
    end
  end
  local requirementsFailed = ent.uData.WaitingForRelease or repetitionsExceded or 0 < darkUse and DarkPower.PowerUse.Value == 0 or 0 < lightUse and LightPower.PowerUse.Value == 0 or parry ~= ent.owc.Parry
  if actionName == "WhipComboDrMhInit" and not Stamina.Active.Value then
    return
  end
  if actionName == "WhipComboLMhInit" and not Stamina.Active.Value then
    return
  end
  local released = not ignoreRelease and ent.uData.ButtonReleased and not WeaponsCombo.LinkHolded(ent, ent.uData.LastTrigeredLink, holdTime) or ignoreRelease and not WeaponsCombo.LinkHolded(ent, ent.uData.LastTrigeredLink, holdTime)
  if string.sub(actionName, 1, 1) == "!" then
    if released or requirementsFailed then
      WeaponsCombo.TriggerAction(ent, {
        string.sub(actionName, 2),
        {}
      }, ent.AimEntity, ent.TgtEntity, ent.uData.LastTrigeredLink)
      ent.uData.ComboBuffer = {}
    end
  elseif not released and not requirementsFailed then
    WeaponsCombo.TriggerAction(ent, {
      actionName,
      {}
    }, ent.AimEntity, ent.TgtEntity, ent.uData.LastTrigeredLink)
    ent.uData.ComboBuffer = {}
  end
end

function WeaponsCombo.LinkHolded(ent, tipo, holdTime)
  holdTime = defparam(holdTime, 0.4)
  return WeaponsCombo.LinkPressed(ent, tipo) and ent.uData.LastPressType == tipo and ent.uData.LastPressTime + holdTime < Game.GetTime()
end

function WeaponsCombo.EventForceButtonReleased(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  ent.uData.ButtonReleased = true
end

function WeaponsCombo.EventSetWaitingForRelease(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  ent.uData.WaitingForRelease = true
end

function WeaponsCombo.ResetActionIfHoldCnt(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  ent.uData.IfHoldCounter = 0
end

function WeaponsCombo.LaunchIfRapidFire(EntityName, EventName, Time)
  local a = Game.Split(EventName, ",")
  local ent = Game.GetEntity(EntityName)
  local actionName = a[1]
  if string.sub(actionName, 1, 1) == "!" then
    if not WeaponsCombo.CheckRapidFire(a[2], false) then
      WeaponsCombo.TriggerAction(ent, {
        string.sub(actionName, 2),
        {}
      }, ent.AimEntity, ent.TgtEntity, ent.uData.LastTrigeredLink)
    end
  elseif WeaponsCombo.CheckRapidFire(a[2], false) then
    WeaponsCombo.TriggerAction(ent, {
      actionName,
      {}
    }, ent.AimEntity, ent.TgtEntity, ent.uData.LastTrigeredLink)
  end
end

function WeaponsCombo.SetIsFalling(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local params = Game.Split(EventName, ",")
  if params[1] == "CheckAndFall" or params[1] == "CheckAndFallHit" then
    local isOk, onFloor, isDyn, oplatf
    isOk, onFloor, isDyn, oplatf = ent:TestCharPos(ent.Pos)
    if isOk and onFloor then
      ent.isFalling = 0
      ent.TestInFloorTimer = 0.5
      if isDyn then
        ent.oPlatformLinker.oPlatform = oplatf
      else
        ent.oPlatformLinker.oPlatform = nil
      end
      ent.ForcePlayerTestTime = 0.5
    else
      ent.isFalling = 1
      if params[1] == "CheckAndFall" then
        ent.ForceAction = ent.ExtraSufix .. "Fall"
      else
        ent.ForceAction = "WhipFallHit"
      end
    end
  elseif params[1] == "DisableFall" then
    local TgtPos = ent:GetOnFloorPos(ent.Pos, 100)
    if TgtPos then
      ent:SetFalling(false, false)
    end
  else
    if string.sub(params[1], 1, 1) == "#" then
      params[1] = string.sub(params[1], 2)
    else
      ent.isFalling = 1
    end
    if params[1] == "UpHit" then
      ent.uData.LastUpHitInfo = nil
      local tgt = Game.GetEntity(ent.AimEntity)
      if tgt and tgt:IsType("WalkChar") then
        local Action = ent.oActCtrl.oActClass:GetAct(ent.Action)
        local Frame = 0 + params[2]
        local Rez = Action:GetDisp(Frame) - Action:GetTimDisp(Time)
        local TotTime = Action:TimeFrame(Frame) - Time
        local YDelta = tgt.Pos.y + tgt.Radius + tgt.oActCtrl.oActClass.HiCapsule - (ent.Pos.y - ent.FloorDist) - Rez.y
        local ZDelta = (V2D(ent.Pos.x, ent.Pos.z) - V2D(tgt.Pos.x, tgt.Pos.z)):mod() + Rez.z
        if ZDelta < 400 and YDelta < 600 then
          ent.oActCtrl.AddDispVel = V3D(0, YDelta / TotTime, -ZDelta / TotTime)
          ent.uData.LastUpHitInfo = {
            tgt,
            Game.GetTime()
          }
          ent.uData.SuggestTgtEntity = tgt.Name
          ent.uData.SuggestTgtTime = Game.GetTime()
        end
      end
    elseif string.sub(params[1], 1, 8) == "FrontHit" then
      local cdn = string.sub(params[1], 9)
      local tgt
      if cdn == "" then
        tgt = Game.GetEntity(ent.AimEntity)
        ZDeltaLimit = 400
        YDeltaLimit = 600
      elseif cdn == "Player" then
        tgt = player
        ZDeltaLimit = 1000
        YDeltaLimit = 1000
        ent.Ang = V3D(0, (ent.Pos - tgt.Pos):getrot().y, 0)
      end
      if tgt then
        local Action = ent.oActCtrl.oActClass:GetAct(ent.Action)
        local Frame = 0 + params[2]
        local Rez = Action:GetDisp(Frame) - Action:GetTimDisp(Time)
        local TotTime = Action:TimeFrame(Frame) - Time
        local hookNode = tgt.oActCtrl.oActClass.HookNode
        local hookPos, YDelta, ZDelta
        if hookNode ~= "" then
          hookPos = tgt["NodePosHierarchy_" .. hookNode]
          YDelta = hookPos.y - ent.Pos.y - Rez.y
          ZDelta = (V2D(ent.Pos.x, ent.Pos.z) - V2D(hookPos.x, hookPos.z)):mod() + Rez.z
        else
          YDelta = tgt.Pos.y + tgt.oActCtrl.oActClass.HiCapsule - ent.Pos.y - Rez.y
          ZDelta = (V2D(ent.Pos.x, ent.Pos.z) - V2D(tgt.Pos.x, tgt.Pos.z)):mod() + Rez.z - (ent.Radius + tgt.Radius)
        end
        if ZDelta < ZDeltaLimit and YDelta < YDeltaLimit then
          ent.oActCtrl.AddDispVel = V3D(0, YDelta / TotTime, -ZDelta / TotTime)
        end
      end
    elseif string.sub(params[1], 1, 8) == "MagneHit" then
      local cdn = string.sub(params[1], 9)
      local tgt
      if cdn == "" then
        tgt = Game.GetEntity(ent.AimEntity)
        ZDeltaLimit = 400
      elseif cdn == "Player" then
        tgt = player
        ZDeltaLimit = 1000
        ent.Ang = V3D(0, (ent.Pos - tgt.Pos):getrot().y, 0)
      end
      if tgt then
        local Action = ent.oActCtrl.oActClass:GetAct(ent.Action)
        local Frame = 0 + params[2]
        local Rez = Action:GetDisp(Frame) - Action:GetTimDisp(Time)
        local TotTime = Action:TimeFrame(Frame) - Time
        local ZDelta = (V2D(ent.Pos.x, ent.Pos.z) - V2D(tgt.Pos.x, tgt.Pos.z)):mod() + Rez.z - (ent.Radius + tgt.Radius)
        if ZDelta < ZDeltaLimit and 50 < ZDelta then
          ent.oActCtrl.AddDispVel = V3D(0, 0, (50 - ZDelta) / TotTime)
        end
      end
    elseif string.sub(params[1], 1, 8) == "UpperHit" then
      local cdn = string.sub(params[1], 9)
      local tgt
      if cdn == "" then
        tgt = Game.GetEntity(ent.AimEntity)
        YDeltaLimit = 600
      elseif cdn == "Player" then
        tgt = player
        YDeltaLimit = 1000
        ent.Ang = V3D(0, (ent.Pos - tgt.Pos):getrot().y, 0)
      end
      if tgt then
        local Action = ent.oActCtrl.oActClass:GetAct(ent.Action)
        local Frame = 0 + params[2]
        local Rez = Action:GetDisp(Frame) - Action:GetTimDisp(Time)
        local TotTime = Action:TimeFrame(Frame) - Time
        local YDelta = tgt.Pos.y + tgt.oActCtrl.oActClass.HiCapsule - ent.Pos.y - Rez.y
        if YDelta < YDeltaLimit then
          ent.oActCtrl.AddDispVel = V3D(0, YDelta / TotTime, 0)
        end
      end
    elseif params[1] == "GroundHit" then
      local testDist = 3000
      local TgtPos = ent:GetOnFloorPos(ent.Pos, testDist)
      TgtPos = TgtPos or ent.Pos - V3D(0, testDist, 0)
      local Action = ent.oActCtrl.oActClass:GetAct(ent.Action)
      local Frame = 0 + params[2]
      local Rez = Action:GetDisp(Frame) - Action:GetTimDisp(Time)
      local TotTime = Action:TimeFrame(Frame) - Time
      local YDelta = TgtPos.y - ent.Pos.y - Rez.y
      ent.oActCtrl.AddDispVel = V3D(0, YDelta / TotTime, 0)
    elseif params[1] == "DownDisp" then
      local fla = ent.uData.FlyActionsDown
      if fla and fla[ent.Action] then
        local FloorDist = ent:GetOnFloorPos(ent.Pos, 2500)
        local TgtPos = ent.Pos - V3D(0, Belmont.AirComboDown + Belmont.AirComboDownPlus * fla[ent.Action], 0)
        if FloorDist and FloorDist.y + 50 > TgtPos.y then
          TgtPos = V3D(FloorDist.x, FloorDist.y + 50, FloorDist.z)
        end
        local Action = ent.oActCtrl.oActClass:GetAct(ent.Action)
        local Frame = 0 + params[2]
        local Rez = Action:GetDisp(Frame) - Action:GetTimDisp(Time)
        local TotTime = Action:TimeFrame(Frame) - Time
        local YDelta = TgtPos.y - ent.Pos.y - Rez.y
        ent.oActCtrl.AddDispVel = V3D(0, YDelta / TotTime, 0)
        fla[ent.Action] = fla[ent.Action] + 1
      else
        if fla == nil then
          fla = {}
        end
        fla[ent.Action] = 0
      end
      ent.uData.FlyActionsDown = fla
    elseif params[1] == "ResetDisp" then
      ent.oActCtrl.AddDispVel = V3D(0, 0, 0)
    elseif params[1] == "CustomPos" then
      local Frame = 0 + params[2]
      local customPos = ent.uData.CustomFallPos
      if type(customPos) == "function" then
        customPos = customPos()
      end
      local action = ent.oActCtrl.oAction
      local disp = (action:GetDisp(Frame) - action:GetDisp(action["FrameOfTime" .. Time])):rot(V3D(0, ent.Ang.y, 0))
      local distLeftEnd = (action:GetDisp(action.LastFrame) - action:GetDisp(Frame)):rot(V3D(0, ent.Ang.y, 0))
      local dist = customPos - ent.Pos
      local delta = dist - (disp + distLeftEnd)
      local TotTime = action:TimeFrame(Frame) - Time
      ent.oActCtrl.AddDispVel = delta:rot(V3D(0, -ent.Ang.y, 0)) / TotTime
    end
  end
end

WeaponsCombo.PrivateSetIsFalling = WeaponsCombo.SetIsFalling

function WeaponsCombo.EventAirImpulse(EntityName, EventName, Time)
  local entity = Game.GetEntity(EntityName)
  local attacker = Game.GetEntity(entity.Hit_Attacker)
  entity.isFalling = 1
  entity.Ang = V3D(0, (entity.Pos - attacker.Pos):getrot().y, 0)
  entity.oActCtrl.AddDispVel = V3D(0, 600, 800)
end

WeaponsCombo.NumChargeDagger = 5

function WeaponsCombo.ChargeDagger(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  ent.uData.ChargedDaggers = tonumber(EventName)
  if ent.uData.ChargedDaggers > WeaponsCombo.NumChargeDagger or ent.uData.ChargedDaggers > WeaponsDagger.Daggers.Value then
    ent.uData.ChargedDaggers = math.min(WeaponsDagger.Daggers.Value, WeaponsCombo.NumChargeDagger)
  end
end

function WeaponsCombo.EventResetDamageCharge(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  ent.uData.DamageChargeTime = Game.GetTime()
  ent.uData.DamageChargeAction = EventName
  ent.uData.DamageChargingAction = ent.Action
end

function WeaponsCombo.EventSwitchFairies(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  ent.oAI:SwitchFairies()
  if ent.oAI.bFairiesOut then
    SoundUtils.FXPlaySound("Belmont", "FairiesOut", nil)
  end
end

function WeaponsCombo.DoSelectTarget(EntityName)
  if WeaponsCombo.TemSelectTargetEnt == EntityName then
    return
  end
  local ent = Game.GetEntity(EntityName)
  if not ent:IsType("PxBodyPhysics") or not ent.bIsRagdollPart then
    ent.TgtEntity = EntityName
  end
end

function WeaponsCombo.LaunchIfFlagPress(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local params = Game.Split(EventName, ",")
  local Condition = ent.owc:isFlagPress(params[2])
  if Condition and params[3] == "EnemyDown" then
    local checkPos = ent.Pos + V3D(0, -ent.FloorDist - ent.Radius * 3, 0)
    WeaponsCombo.TemSelectTargetEnt = ent
    Condition = Game.SphereCall(checkPos, ent.Radius * 2, "L", "WeaponsCombo.DoSelectTarget", 1, true) ~= 0
    if 2 <= Weapons.Debug.Value then
      local inner = DebugDraw.NewPrimitive("Sphere")
      inner.Pos = checkPos
      inner.Radius = ent.Radius * 2
      inner.TimeToDel = Game.GetTime() + 1.5
      inner.Color = Color(0, 0, 255, 255)
    end
  end
  if params[1] == "1" then
    Condition = not Condition
  end
  if Condition then
    if ent.Action == params[4] then
      ent.oActCtrl:ResetPrimaryAction()
    else
      ent.Action = params[4]
    end
  end
end

function WeaponsCombo.ResetFlagPress(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  ent.owc:ResetFlagPress(EventName)
end
