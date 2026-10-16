WeaponsCharge = {}
WeaponsCharge.DashDistance = 1400
WeaponsCharge.AutoAimAngleThreshold = 22.5

function WeaponsCharge.main()
  WeaponsCharge.MaxChargeDistance = 150
end

function WeaponsCharge.OnBeginCharge(entityName)
  WeaponsCharge.AutoAim(entityName)
end

function WeaponsCharge.TestCharge(entityName)
  local entity = Game.GetEntity(entityName)
  local rayEnd = entity.Pos + V3D(0, 0, -1):rot(entity.Ang) * WeaponsCharge.DashDistance
  local resultSet = {
    Game.TestLine(entity.Pos, rayEnd, "", entityName)
  }
  local hittedEntity
  if type(resultSet[2]) == "string" then
    hittedEntity = Game.GetEntity(resultSet[1])
  elseif type(resultSet[3]) == "userdata" then
    hittedEntity = resultSet[3]
  end
  if hittedEntity ~= nil then
    addSF(0, "", "WeaponsCharge.RestartShowingBreakableMsg", hittedEntity.Name)
    Scorer.SetMsgText("", Game.GetTime() + 0)
  end
  if hittedEntity and hittedEntity.uData.IsChargeBreakable or resultSet[1] then
    local distance = (resultSet[1] - entity.Pos):mod()
    if distance <= WeaponsCharge.MaxChargeDistance then
      if hittedEntity and hittedEntity.uData.IsChargeBreakable then
        if hittedEntity.uData.NotBreakeable then
          if hittedEntity.uData.NotBreakeableMsg and hittedEntity.uData.NotBreakeableMsg ~= "" then
            Scorer.SetMsgText(Game.GetLangStr(hittedEntity.uData.NotBreakeableMsg), Game.GetTime() + 3)
          end
        else
          PhysicsObj.OpenDoor(hittedEntity.Name)
          Weapons.QuakeFX(entity.Pos, 0.75, 0.35)
          Weapons.VibraPad("DashBreak")
          hittedEntity.Life = 0
          ObjFX.FXChargeBreakableBreak(hittedEntity)
          if hittedEntity.uData.BrokenFunc and hittedEntity.uData.BrokenFunc ~= "" then
            parseGlobalExpression(hittedEntity.uData.BrokenFunc)(hittedEntity.Name)
          end
          addSF(0, "", "WeaponsCharge.RestartShowingBreakableMsg", hittedEntity.Name)
        end
      else
      end
    else
      local vel = entity.Vel:mod()
      local time
      if 3000 < vel then
        time = distance / vel
        Game.AddScheduledFunc(Game.GetTime() + time, "TestCharge", "WeaponsCharge.TestCharge", entityName)
      else
        time = 0
      end
    end
  end
end

function WeaponsCharge.OnDebugDraw(entity)
  for i, testInfo in pairs(entity.uData.TestInfo) do
    local color
    if testInfo.Result == 1 then
      color = V3D(20, 240, 20)
    elseif testInfo.Result == 2 then
      color = V3D(240, 20, 200)
    else
      if testInfo.Result == 3 then
        color = V3D(240, 20, 20)
      else
      end
    end
    DebugDraw.DrawLink(testInfo.Pos, testInfo.Target, false, true, color, color)
    DebugDraw.DrawSphere(testInfo.Pos, 10, color, 5, 5)
  end
end

function WeaponsCharge.OnDamage(MyName, AttackerName, damage)
  local restoreBreakMsgAfterDamage = false
  local entity = Game.GetEntity(MyName)
  if (entity.Action == "Closed" or entity.Action == "Relax") and AttackerName == "Belmont" then
    ObjFX.FXChargeBreakableDamage(entity)
    Weapons.QuakeFX(entity.Pos, 0.5, 0.3)
    local direction = V3D(0, 0, -1):rot(entity.Ang + V3D(0, 90, 0))
    print(entity.Pos)
    MissionUtils.DoInterpTgt(entity, {
      [1] = 0.2,
      [2] = "S2qoooszI",
      Pos = entity.Pos + direction
    })
    Game.AddScheduledFunc(Game.GetTime() + 0.2, "", "WeaponsCharge.Repos", MyName)
    entity.Life = 100
    if entity.uData.BreakMsgShown == false then
      if not DarkPower.DarkDashActive then
        if entity.uData.BreakHintMsg ~= nil and entity.uData.BreakHintMsg ~= "" then
        else
          entity.uData.BreakHintMsg = "HELP_MESSAGE_2.4_F"
        end
        Scorer.SetMsgText(Game.GetLangStr(entity.uData.BreakHintMsg), Game.GetTime() + 5)
        addSF(5, "", "WeaponsCharge.RestartShowingBreakableMsg", MyName)
      else
        if Chupacabra and Chupacabra.HasPlayerPowers.Value then
          entity.uData.BreakHintMsg = "HELP_MESSAGE_2.4_H"
          restoreBreakMsgAfterDamage = true
        elseif entity.uData.BreakHintMsg ~= nil and entity.uData.BreakHintMsg == "HELP_MESSAGE_2.4_I" then
          entity.uData.BreakHintMsg = "HELP_MESSAGE_2.4_J"
          restoreBreakMsgAfterDamage = true
        elseif entity.uData.isDoor == nil or entity.uData.isDoor ~= true then
          entity.uData.BreakHintMsg = "HELP_MESSAGE_2.4_G"
        else
          entity.uData.BreakHintMsg = "HELP_MESSAGE_2.4_J"
        end
        Scorer.SetMsgText(Game.GetLangStr(entity.uData.BreakHintMsg), Game.GetTime() + 5)
        addSF(5, "", "WeaponsCharge.RestartShowingBreakableMsg", MyName)
        if restoreBreakMsgAfterDamage == true then
          if entity.uData.BreakHintMsg == "HELP_MESSAGE_2.4_H" then
            entity.uData.BreakHintMsg = "HELP_MESSAGE_2.4_J"
          else
            entity.uData.BreakHintMsg = "HELP_MESSAGE_2.4_I"
          end
        end
      end
      entity.uData.BreakMsgShown = true
    end
  end
  if entity.Action == "Opened" and AttackerName == "Belmont" then
    entity.Life = 0
  else
    entity.Life = 100
  end
end

function WeaponsCharge.RestartShowingBreakableMsg(MyName)
  local o = Game.GetEntity(MyName)
  o.uData.BreakMsgShown = false
end

function WeaponsCharge.Repos(Name)
  local entity = Game.GetEntity(Name)
  entity.Pos = entity.uData.PosInitialDash
end

function WeaponsCharge.AutoAim(entityName)
  local belmont = Game.GetEntity(entityName)
  WeaponsCharge.ChargeCandidate = nil
  Game.SphereCall(belmont.Pos, WeaponsCharge.DashDistance, "L", "WeaponsCharge.CheckDasheableEntity")
  if WeaponsCharge.ChargeCandidate then
    belmont.JustAng = V3D(0, (belmont.Pos - WeaponsCharge.ChargeCandidate.Pos):getrot().y, 0)
    WeaponsCharge.ChargeCandidate = nil
  end
  addSF(0, "", "WeaponsCharge.TestCharge", entityName)
end

function WeaponsCharge.CheckDasheableEntity(entityName)
  local entity = Game.GetEntity(entityName)
  if entity.uData.IsChargeAimable or entity.uData.IsChargeBreakable and "Closed" == entity.Action then
    local relativeAngle = math.abs(Game.NormAng(player.Ang.y - (player.Pos - entity.Pos):getrot().y))
    if relativeAngle > WeaponsCharge.AutoAimAngleThreshold then
      return
    end
    local resultSet = {
      Game.TestLine(player.Pos, entity.Pos, "L", "Belmont")
    }
    local hittedEntity
    if type(resultSet[2]) == "string" then
      hittedEntity = Game.GetEntity(resultSet[2])
    elseif type(resultSet[3]) == "userdata" then
      hittedEntity = resultSet[3]
    end
    if hittedEntity == entity then
      WeaponsCharge.ChargeCandidate = entity
    end
  end
end
