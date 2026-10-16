function LinkConditions.main()
  LinkConditions.Conditions = {
    {
      "Scroll",
      
      LinkConditions.FilterLinksByScroll,
      ""
    },
    {
      "Dist",
      LinkConditions.FilterLinksByDist,
      {nil, 400}
    },
    {
      "Class",
      LinkConditions.FilterLinksByClass,
      "TrollSmall"
    },
    {
      "uData Property",
      LinkConditions.FilterLinksByUDataProperty,
      "bGauntlet"
    },
    {
      "Boolean expresion",
      LinkConditions.FilterLinksByBooleanExpresion,
      ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value==3"
    },
    {
      "Parry",
      LinkConditions.FilterLinksByParry,
      true
    },
    {
      "OnFloor",
      LinkConditions.FilterLinksByOnFloor,
      true
    },
    {
      "Dash",
      LinkConditions.FilterLinksByTimePushingStick,
      true
    },
    {
      "Frames",
      LinkConditions.FilterLinksByTime,
      {
        nil,
        "ReadyToLink",
        nil
      }
    },
    {
      "DaggersNeeded",
      LinkConditions.FilterLinksByDaggers,
      true
    },
    {
      "VialsNeeded",
      LinkConditions.FilterLinksByVials,
      true
    },
    {
      "DarkPower",
      LinkConditions.FilterLinksByDarkPower,
      true
    },
    {
      "LightPower",
      LinkConditions.FilterLinksByLightPower,
      true
    },
    {
      "CrystalFull",
      LinkConditions.FilterLinksByCrystalCharge,
      true
    },
    {
      "CrystalNeeded",
      LinkConditions.FilterLinksByCrystalUses,
      true
    },
    {
      "FairiesNeeded",
      LinkConditions.FilterLinksByFairiesLeft,
      true
    },
    {
      "Probability",
      LinkConditions.FilterLinksByProbability,
      {0, 0.5}
    },
    {
      "Angle",
      LinkConditions.FilterLinksByAngle,
      {-90, 90}
    },
    {
      "RunningTime",
      LinkConditions.FilterLinksByRunningTime,
      0.1
    },
    {
      "EnemySize",
      LinkConditions.FilterLinksBySize,
      {
        giant = true,
        large = true,
        average = true,
        small = true
      }
    },
    {
      "HasAction",
      LinkConditions.FilterLinksByEnemyAction,
      {
        ["not"] = false,
        Name = "Relax"
      }
    },
    {
      "EnemyOnFloor",
      LinkConditions.FilterLinksByEnemyOnFloor,
      true
    },
    {
      "RapidFire",
      LinkConditions.FilterLinksByRapidFire,
      true
    },
    {
      "DoubleTap",
      LinkConditions.FilterLinksByDoubleTap,
      true
    },
    {
      "Repetitions",
      LinkConditions.FilterLinksByRepetitions,
      4
    },
    {
      "AttackingSuggestedTgt",
      LinkConditions.FilterLinksByAttackingSuggestedTgt,
      true
    },
    {
      "AICollision",
      LinkConditions.FilterLinksByAICollision,
      true
    },
    {
      "AICollisionAir",
      LinkConditions.FilterLinksByAICollisionAir,
      true
    },
    {
      "Action",
      LinkConditions.FilterLinksByAction,
      true
    },
    {
      "EnemyAtBack",
      LinkConditions.FilterLinksByEnemyAtBack,
      true
    },
    {
      "VerticalLimit",
      LinkConditions.FilterLinksByVerticalLimit,
      90
    }
  }
end

function LinkConditions.FilterLinksByTime(validLinks, ent, tgt, time, eventTime, TimePushingStick, Action)
  local ret = {}
  local act = ent.oActCtrl.oAction
  for i, n in pairs(validLinks) do
    if n[2].Frames then
      local a = WeaponsCombo.GetFrameValues(n[2].Frames, act)
      local min = a[1]
      local med = a[2]
      local max = a[3]
      if not eventTime and (not min or time >= min - 0.001) and (not max or time <= max + 0.001) or eventTime and (med and eventTime and eventTime > med - 0.001 and eventTime < med + 0.001 or ent.Action ~= Action and (not med or eventTime >= med - 0.001) and (not max or eventTime <= max + 0.001)) then
        table.insert(ret, n)
      end
    else
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByAngle(validLinks, ent, tgt, time, frame, TimePushingStick, Action)
  local wantedAng = Game.NormAng(ent.ViewAng.y - ent.Ang.y + ent.DisplAng)
  local ret = {}
  for i, n in pairs(validLinks) do
    local angles = n[2].Angle
    if angles then
      local low = angles[1]
      local high = angles[2]
      if low > high then
        high = high + 360
        if wantedAng < low then
          wantedAng = wantedAng + 360
        end
      end
      if low < wantedAng and high > wantedAng then
        table.insert(ret, n)
      end
    else
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByDist(validLinks, ent, tgt, time, frame, TimePushingStick, Action)
  local ret = {}
  local distance
  if ent and tgt then
    distance = (tgt.Pos - ent.Pos):mod() - Game.Get("ArrowActiveRadius")
  end
  for i, n in pairs(validLinks) do
    local distData = n[2].Dist
    if distData then
      if distance then
        local min = defparam(distData[1], -1)
        if min < 0 then
          min = -10000
        end
        local max = defparam(distData[2], 1000000)
        if distance > min and distance < max then
          table.insert(ret, n)
        end
      end
    else
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByTimePushingStick(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action)
  local ret = {}
  for i, n in pairs(validLinks) do
    if n[2].Dash then
      if WeaponsCombo.IsPushingStick() and TimePushingStick < WeaponsCombo.DashTime then
        table.insert(ret, n)
      end
    else
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByRunningTime(validLinks, ent, tgt, time, frame, TimePushingStick, Action)
  local ret = {}
  for i, n in pairs(validLinks) do
    local timeNeeded = n[2].RunningTime
    if timeNeeded then
      if timeNeeded < ent.RunningTime then
        table.insert(ret, n)
      end
    else
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByScroll(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action)
  local ret = {}
  for i, n in pairs(validLinks) do
    local c = n[2].Scroll
    if c then
      if Experience.isCombatScroll(c) then
        table.insert(ret, n)
      end
    else
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByClass(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action)
  local ret = {}
  local className
  if tgtentity and tgtentity.oActCtrl then
    className = tgtentity.ActCtrl
  end
  for i, n in pairs(validLinks) do
    local c = n[2].Class
    if c then
      if className and className == c then
        table.insert(ret, n)
      end
    else
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByUDataProperty(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action)
  local ret = {}
  for i, n in pairs(validLinks) do
    local subject = ent
    local doInsert = false
    local properties = n[2]["uData Property"]
    if properties then
      if string.sub(properties, 1, 1) == ">" then
        subject = tgtentity
        properties = string.sub(properties, 2)
      end
      if subject then
        local propList = Game.Split(properties, ",")
        local failed = false
        for i = 1, #propList do
          if string.sub(propList[i], 1, 1) == "!" then
            if subject.uData[string.sub(propList[i], 2)] then
              failed = true
            end
          elseif not subject.uData[propList[i]] then
            failed = true
          end
        end
        if not failed then
          doInsert = true
        end
      end
    else
      doInsert = true
    end
    if doInsert then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByBooleanExpresion(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action)
  local ret = {}
  for i, n in pairs(validLinks) do
    local subject = ent
    local doInsert = false
    local properties = n[2]["Boolean expresion"]
    if properties then
      local expressionList = Game.Split(properties, ",")
      local failed = false
      for i = 1, #expressionList do
        failed = failed or not LinkConditions.EvaluateExpression(expressionList[i], ent, tgtentity)
      end
      if not failed then
        doInsert = true
      end
    else
      doInsert = true
    end
    if doInsert then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByParry(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action, LinkType, Parry)
  local ret = {}
  local parry = Parry == 1 and ent.owc.Parry == 1
  for i, n in pairs(validLinks) do
    if n[2].Parry == nil or n[2].Parry and parry or not n[2].Parry and not parry then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByOnFloor(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action)
  local ret = {}
  local OnFloor = not ent.bIsFalling
  for i, n in pairs(validLinks) do
    if n[2].OnFloor == nil or n[2].OnFloor and OnFloor or n[2].OnFloor == false and not OnFloor then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByEnemyOnFloor(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action)
  local ret = {}
  local OnFloor = false
  if tgtentity and tgtentity:IsType("WalkChar") then
    if tgtentity.oActCtrl.oActClass.CanFly == 1 then
      if (tgtentity.Pos - ent.Pos):mod() - tgtentity.oActCtrl.oActClass.Radius > 250 then
        OnFloor = true
      else
        if tgtentity.uData.LastPosTester ~= tgtentity.Pos then
          local r
          r, tgtentity.uData.LastOnFloorTester = tgtentity:TestCharPos(tgtentity.Pos)
        end
        tgtentity.uData.LastPosTester = tgtentity.Pos
        OnFloor = tgtentity.uData.LastOnFloorTester
      end
    else
      OnFloor = not tgtentity.bIsFalling
    end
  end
  for i, n in pairs(validLinks) do
    if n[2].EnemyOnFloor == nil or tgtentity and n[2].EnemyOnFloor == OnFloor then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByDaggers(data, ent)
  local ret = {}
  for i, n in pairs(data) do
    if n[2].DaggersNeeded then
      if WeaponsDagger.Daggers.Value > 0 or WeaponsDagger.Infinite == 1 then
        table.insert(ret, n)
      end
    else
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByVials(data, ent)
  local ret = {}
  for i, n in pairs(data) do
    if not n[2].VialsNeeded or n[2].VialsNeeded and ent.uData.nVials > 0 then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByDarkPower(data)
  local ret = {}
  for i, n in pairs(data) do
    if n[2].DarkPower == nil or n[2].DarkPower and DarkPower.PowerUse.Value == 1 then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByLightPower(data)
  local ret = {}
  for i, n in pairs(data) do
    if not n[2].LightPower or n[2].LightPower and LightPower.PowerUse.Value == 1 then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByCrystalCharge(data)
  local ret = {}
  for i, n in pairs(data) do
    if n[2].CrystalFull == true then
      if WeaponsCrystal.Energy.Value >= WeaponsCrystal.MaxEnergy.Value then
        table.insert(ret, n)
      end
    elseif n[2].CrystalFull == false then
      if WeaponsCrystal.Energy.Value < WeaponsCrystal.MaxEnergy.Value then
        table.insert(ret, n)
      end
    else
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByCrystalUses(data)
  local ret = {}
  for i, n in pairs(data) do
    if n[2].CrystalNeeded then
      if WeaponsCrystal.CrystalPieces.Value >= WeaponsCrystal.InitialUses then
        table.insert(ret, n)
      end
    else
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByFairiesLeft(data)
  local ret = {}
  for i, n in pairs(data) do
    if n[2].FairiesNeeded then
      if player.oAI:GetNumFairiesInPocket() > 0 and 0 >= player.RunningTime then
        table.insert(ret, n)
      end
    else
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByProbability(data)
  local ret = {}
  local value = Game.Rand(0, 0.9999)
  for i, n in pairs(data) do
    if not n[2].Probability or n[2].Probability and value >= n[2].Probability[1] and value < n[2].Probability[2] then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByEnemyAction(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action)
  local ret = {}
  local ac
  if tgtentity and tgtentity:IsType("WalkChar") then
    ac = tgtentity.oActCtrl.oActClass
  end
  for i, n in pairs(validLinks) do
    local lnk = n[2].HasAction
    if not lnk then
      table.insert(ret, n)
    elseif ac then
      local val = ac:GetAct(lnk.Name)
      if lnk["not"] then
        val = not val
      end
      if val then
        table.insert(ret, n)
      end
    end
  end
  return ret
end

function LinkConditions.FilterLinksBySize(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action)
  local ret = {}
  local the_size = "unknow"
  if tgtentity and tgtentity:IsType("WalkChar") then
    the_size = tgtentity.oActCtrl.oActClass.Size
  end
  for i, n in pairs(validLinks) do
    local lnk = n[2].EnemySize
    if not lnk or lnk[the_size] then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByRapidFire(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action, LinkType)
  local ret = {}
  local rapidFire = WeaponsCombo.CheckRapidFire(LinkType, true)
  for i, n in pairs(validLinks) do
    local lnkRF = n[2].RapidFire
    if lnkRF == nil or lnkRF == true and rapidFire then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByDoubleTap(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action, LinkType)
  local ret = {}
  local isDoubleTapping = ent.uData.LastDoubleTapTime and Game.GetTime() - ent.uData.LastDoubleTapTime <= 0.5 and ent.oActCtrl.oActClass.SprintOnDoubleTap == 1
  for i, n in pairs(validLinks) do
    local doubleTap = n[2].DoubleTap
    if doubleTap == nil or doubleTap == true and (isDoubleTapping or ent.bIsSprinting) or doubleTap == false and not isDoubleTapping and not ent.bIsSprinting then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByRepetitions(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action, LinkType)
  local ret = {}
  for i, n in pairs(validLinks) do
    local rep = n[2].Repetitions
    if not rep or rep > ent.ActionRepetitions or rep < 0 and ent.ActionRepetitions > -rep then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByAttackingSuggestedTgt(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action, LinkType)
  local ret = {}
  for i, n in pairs(validLinks) do
    if not n[2].AttackingSuggestedTgt or n[2].AttackingSuggestedTgt and tgtentity and ent.uData.SuggestTgtEntity == tgtentity.Name then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByAICollision(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action, LinkType)
  local ret = {}
  for i, n in pairs(validLinks) do
    local c = n[2].AICollision
    if c then
      local isCol, thePos = Game.WorldLineTest(ent.Pos, tgtentity.Pos, tgtentity.Name, ent:MergeCollision(tgtentity.Name))
      if not isCol then
        table.insert(ret, n)
      end
    else
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByAICollisionAir(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action, LinkType)
  local ret = {}
  for i, n in pairs(validLinks) do
    local c = n[2].AICollisionAir
    if c then
      local isCol, thePos = Game.WorldLineTest(ent.Pos, tgtentity.Pos, tgtentity.Name, tgtentity.WorldCollisionMask)
      if not isCol then
        table.insert(ret, n)
      end
    else
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByAction(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action, LinkType, Parry)
  local ret = {}
  for i, n in pairs(validLinks) do
    local action = n[2].Action
    if not action or ent.Action == action then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByEnemyAtBack(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action, LinkType, Parry)
  local ret = {}
  for i, n in pairs(validLinks) do
    local enemyAtBack = n[2].EnemyAtBack
    if not enemyAtBack or tgtentity and enemyAtBack and Weapons.IsAtBack(tgtentity, ent, 90, 90) then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.FilterLinksByVerticalLimit(validLinks, ent, tgtentity, time, frame, TimePushingStick, Action, LinkType, Parry)
  local ret = {}
  for i, n in pairs(validLinks) do
    local verticalLimit = n[2].VerticalLimit
    if not verticalLimit or tgtentity and verticalLimit and verticalLimit > LinkConditions.GetVerticalAngle(ent, tgtentity) and LinkConditions.GetVerticalAngle(ent, tgtentity) > -verticalLimit then
      table.insert(ret, n)
    end
  end
  return ret
end

function LinkConditions.GetVerticalAngle(ent, tgt)
  local dirVec = tgt.Pos - ent.Pos
  return dirVec:getrot().x
end

function LinkConditions.EvaluateExpression(expression, ent, tgt)
  local theType = 3
  local memberTokens = Game.Split(expression, "==")
  local ok = false
  if 1 < #memberTokens then
    theType = 1
    ok = true
  end
  if not ok then
    memberTokens = Game.Split(expression, "!=")
  end
  if 1 < #memberTokens and not ok then
    theType = 2
    ok = true
  end
  if not ok then
    memberTokens = Game.Split(expression, "<=")
  end
  if 1 < #memberTokens and not ok then
    theType = 4
    ok = true
  end
  if not ok then
    memberTokens = Game.Split(expression, ">=")
  end
  if 1 < #memberTokens and not ok then
    theType = 5
    ok = true
  end
  if 2 < #memberTokens then
    Game.ConsoleError("Invalid expression " .. expression .. "\n")
    return
  end
  if theType == 1 then
    local leftMember = LinkConditions.EvaluateExpressionMember(memberTokens[1], ent, tgt)
    local rightMember = LinkConditions.EvaluateExpressionMember(memberTokens[2], ent, tgt)
    return leftMember == rightMember
  end
  if theType == 2 then
    local leftMember = LinkConditions.EvaluateExpressionMember(memberTokens[1], ent, tgt)
    local rightMember = LinkConditions.EvaluateExpressionMember(memberTokens[2], ent, tgt)
    return leftMember ~= rightMember
  end
  if theType == 4 then
    local leftMember = LinkConditions.EvaluateExpressionMember(memberTokens[1], ent, tgt)
    local rightMember = LinkConditions.EvaluateExpressionMember(memberTokens[2], ent, tgt)
    return leftMember <= rightMember
  end
  if theType == 5 then
    local leftMember = LinkConditions.EvaluateExpressionMember(memberTokens[1], ent, tgt)
    local rightMember = LinkConditions.EvaluateExpressionMember(memberTokens[2], ent, tgt)
    return leftMember >= rightMember
  end
  return LinkConditions.EvaluateExpressionMember(memberTokens[1], ent, tgt)
end

function LinkConditions.EvaluateExpressionMember(member, ent, tgt)
  local entity
  if string.sub(member, 1, 1) == "<" then
    entity = ent
    member = string.sub(member, 2)
  end
  if string.sub(member, 1, 1) == ">" then
    entity = tgt
    member = string.sub(member, 2)
  end
  if string.sub(member, 1, 1) == "!" then
    return not LinkConditions.ResolveLogicValue(string.sub(member, 2), entity)
  else
    return LinkConditions.ResolveLogicValue(member, entity)
  end
end

function LinkConditions.ResolveLogicValue(logicPath, ent)
  print("Evaluating logic value:" .. logicPath .. "\n")
  if tonumber(logicPath) ~= nil or logicPath == "0" then
    return tonumber(logicPath)
  end
  local tokens = Game.Split(logicPath, ".")
  local val = ent
  local startIndex = 1
  if val == nil then
    val = _G[tokens[startIndex]]
    startIndex = startIndex + 1
  end
  for i = startIndex, #tokens - 1 do
    val = val[tokens[i]]
  end
  return val[tokens[#tokens]]
end
