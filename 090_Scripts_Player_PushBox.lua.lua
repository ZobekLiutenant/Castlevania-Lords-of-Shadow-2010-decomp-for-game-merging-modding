PushBox = {}
PushBox.HasCollided = false

function PushBox.main()
  PushBox.FrictionFactor = 50
  PushBox.MinimumSpeed = 50
  PushBox.NodeSqrDistanceThreshold = 22500
  PushBox.MinimumInitialForce = 1000
  PushBox.MaxPunchChargeTime = 2
end

function PushBox.ChooseHeadedNode(boxEntity, forceVector)
  if boxEntity.uData.PathNodeFrom == boxEntity.uData.PathNodeTo then
    local currentNodeEntity = Game.GetEntity(boxEntity.uData.PathNodeFrom)
    if nil == currentNodeEntity then
      Game.ConsoleError("Box wasn't linked to a path node\n")
      return
    end
    local neighbours = Game.Split(currentNodeEntity.uData.Neighbours, "\n")
    local bestDotProductError = 1 - math.cos(math.rad(75))
    local normDirection = forceVector:norm()
    local bestNodeEntity
    for i, neighbourName in pairs(neighbours) do
      local neighbourEntity = Game.GetEntity(neighbourName)
      local v = (neighbourEntity.Pos - currentNodeEntity.Pos):norm()
      local dotProductError = 1 - v:dot(normDirection)
      if bestDotProductError > dotProductError then
        bestDotProductError = dotProductError
        bestNodeEntity = neighbourEntity
      end
    end
    local linearForce = forceVector:mod() * (1 - bestDotProductError)
    return bestNodeEntity, linearForce
  else
    local fromNodeEntity, toNodeEntity = Game.GetEntity(boxEntity.uData.PathNodeFrom), Game.GetEntity(boxEntity.uData.PathNodeTo)
    local v = (toNodeEntity.Pos - fromNodeEntity.Pos):norm()
    local dotProduct = v:dot(forceVector)
    if 0 < dotProduct then
      return toNodeEntity, dotProduct
    else
      return fromNodeEntity, -dotProduct
    end
  end
end

function PushBox.PunchBox(playerEntity, boxEntity, force)
  if boxEntity.uData.PathNodeFrom == nil then
    return
  end
  local lForce = defparam(force, 1000)
  local forceVector = V3D(0, 0, -lForce):rot(playerEntity.Ang)
  local headedNodeEntity, linearForce = PushBox.ChooseHeadedNode(boxEntity, forceVector)
  PushBox.PlayHitSound(boxEntity, lForce)
  local quakeFactor = (lForce - 350) / 650
  if 0 < quakeFactor then
    local camera = Game.GetEntity(Game.GetCam(0))
    camera.QuakeFactor = quakeFactor
    camera.QuakeTime = 0.15
  end
  if boxEntity.uData.BlackMagic and not playerEntity.uData.DarkPowerPunch then
    Scorer.SetMsgText(Game.GetLangStr("HELP_MESSAGE_3.0_C"), Game.GetTime() + 3)
    if "function" == type(boxEntity.uData.OnPunchWithoutDarkMagic) then
      boxEntity.uData.OnPunchWithoutDarkMagic(boxEntity)
    end
    return
  end
  if headedNodeEntity and linearForce > PushBox.MinimumInitialForce then
    local actualForce = 0
    if boxEntity.uData.ForceToApply then
      actualForce = boxEntity.uData.ForceToApply
    else
      actualForce = linearForce * 500 / boxEntity.uData.PushWeight
    end
    if boxEntity.uData.PathNodeFrom == boxEntity.uData.PathNodeTo then
      boxEntity.uData.PathNodeTo = headedNodeEntity.Name
      if boxEntity.uData.LeaveNodeFunc and boxEntity.uData.LeaveNodeFunc ~= "" then
        parseGlobalExpression(boxEntity.uData.LeaveNodeFunc)(boxEntity.uData.PathNodeFrom, boxEntity.uData.PathNodeTo, boxEntity)
      end
    elseif headedNodeEntity.Name ~= boxEntity.uData.PathNodeTo then
      boxEntity.uData.PathNodeFrom = boxEntity.uData.PathNodeTo
      boxEntity.uData.PathNodeTo = headedNodeEntity.Name
    end
    PushBox.PlayHitSound2(boxEntity, lForce)
    boxEntity.uData.HeadedNodePos = headedNodeEntity.Pos
    boxEntity.uData.PushedSpeed = actualForce
    if boxEntity.uData.IsTeleportable then
      boxEntity.OnObjSlot = "PushBox.MovingTeleBoxSlot"
    else
      boxEntity.OnObjSlot = "PushBox.MovingBoxSlot"
    end
    PushBox.FXDragOn(boxEntity.Name)
  elseif headedNodeEntity then
    Scorer.SetMsgText(Game.GetLangStr("HELP_MESSAGE_3.0_B"), Game.GetTime() + 5)
  end
end

function PushBox.ResolveCollision(EntityName)
  local bIgnoreCollide = false
  local ent = Game.GetEntity(EntityName)
  if ent.uData.IsCritter then
    ent:Del()
  elseif ent.oAI and ent.ActCtrl ~= "Belmont" then
    if ent.ActCtrl == "Zobek" then
      ent.ForceAction = "DodgeRight"
      ent.GhostTime = 0.5
      bIgnoreCollide = false
    elseif ent.ActCtrl == "LycanthropeLesser" then
      Weapons.DoDamage(player, ent, {
        Damage = 5000000,
        Reaction = 3,
        Unblockable = 2,
        Pos = ent.Pos,
        Dir = ent.Pos - player.Pos
      })
      bIgnoreCollide = true
    else
      Weapons.DoDamage(player, ent, {
        Damage = 50,
        Reaction = 3,
        Unblockable = 2,
        Pos = ent.Pos,
        Dir = ent.Pos - player.Pos
      })
      bIgnoreCollide = false
    end
    if not bIgnoreCollide then
      PushBox.HasCollided = true
    end
  end
end

function PushBox.MovingBoxSlot(boxEntityName, slotTime)
  local boxEntity = Game.GetEntity(boxEntityName)
  local vToNode = boxEntity.uData.HeadedNodePos - boxEntity.Pos
  local vel = vToNode:norm() * boxEntity.uData.PushedSpeed
  local nextPosition = boxEntity.Pos + vel * slotTime
  local vNextPosToNode = boxEntity.uData.HeadedNodePos - nextPosition
  local v3Dummy = boxEntity.Pos + vel * slotTime * 2
  checkColPos = Game.TestLine(v3Dummy, v3Dummy - V3D(0, 500, 0), "", "", true, true)
  local checkColRadius = 200
  PushBox.HasCollided = false
  if checkColPos ~= nil then
    Game.SphereCall(checkColPos, checkColRadius, "L", "PushBox.ResolveCollision", 1, true)
    if PushBox.HasCollided then
      boxEntity.uData.PushedSpeed = 0
      boxEntity.OnObjSlot = ""
      if GhoulDeath ~= nil then
        GhoulDeath.CheckGeometry(boxEntityName)
      end
      PushBox.FXDragOff(boxEntity.Name)
      boxEntity.snd00_vol = 0
      return
    end
  end
  if vToNode:mod_sqr() < 0.1 or 0 > vToNode:dot(vNextPosToNode) then
    if boxEntity.uData.PushedSpeed > PushBox.MinimumSpeed and boxEntity.uData.PathNodeTo ~= boxEntity.uData.MutedNode then
      SoundUtils.PlayObjectSoundByIndex(boxEntityName, 2)
    end
    boxEntity.JustPos = boxEntity.uData.HeadedNodePos
    boxEntity.uData.HeadedNodePos = nil
    boxEntity.uData.PushedSpeed = 0
    boxEntity.uData.PathNodeFrom = boxEntity.uData.PathNodeTo
    boxEntity.OnObjSlot = ""
    if boxEntity.uData.ReachNodeFunc and boxEntity.uData.ReachNodeFunc ~= "" then
      addSF(0, "", "PushBox.ExecuteReachNodeCallback", boxEntity.Name)
    end
    if GhoulDeath ~= nil then
      GhoulDeath.CheckGeometry(boxEntityName)
    end
    PushBox.FXDragOff(boxEntity.Name)
  else
    boxEntity.JustPos = nextPosition
    if vNextPosToNode:mod_sqr() > PushBox.NodeSqrDistanceThreshold then
      local nextSpeed = boxEntity.uData.PushedSpeed - PushBox.FrictionFactor
      if 0 < nextSpeed then
        boxEntity.uData.PushedSpeed = nextSpeed
      else
        boxEntity.uData.HeadedNodePos = nil
        boxEntity.uData.PushedSpeed = 0
        boxEntity.OnObjSlot = ""
        if GhoulDeath ~= nil then
          GhoulDeath.CheckGeometry(boxEntityName)
        end
        PushBox.FXDragOff(boxEntity.Name)
      end
    elseif boxEntity.uData.PushedSpeed <= PushBox.MinimumSpeed then
      boxEntity.uData.PushedSpeed = PushBox.MinimumSpeed
    end
  end
  boxEntity.snd00_vol = math.min(boxEntity.uData.PushedSpeed / 1500, 1)
end

function PushBox.ExecuteReachNodeCallback(boxEntityName, nodeFrom)
  local boxEntity = Game.GetEntity(boxEntityName)
  parseGlobalExpression(boxEntity.uData.ReachNodeFunc)(boxEntity.uData.PathNodeTo, boxEntity, nodeFrom)
  if GhoulDeath ~= nil then
    GhoulDeath.CheckGeometry(boxEntityName)
  end
  PushBox.FXDragOff(boxEntity.Name)
end

function PushBox.OnBeginPunch(entityName)
  Game.GetEntity(entityName).uData.PunchBeginTime = Game.GetTime()
end

function PushBox.OnEndPunch(entityName)
  local entity = Game.GetEntity(entityName)
  local rays = {
    {
      entity.Pos,
      entity.Pos + V3D(0, 0, -1):rot(entity.Ang) * 500
    },
    {
      entity.Pos + V3D(-1, 0, 0):rot(entity.Ang) * entity.Radius,
      entity.Pos + V3D(0, 0, -1):rot(entity.Ang + V3D(0, 20, 0)) * 600
    },
    {
      entity.Pos + V3D(1, 0, 0):rot(entity.Ang) * entity.Radius,
      entity.Pos + V3D(0, 0, -1):rot(entity.Ang - V3D(0, 20, 0)) * 600
    }
  }
  for i, rayEnd in pairs(rays) do
    local resultSet = {
      Game.TestLine(rayEnd[1], rayEnd[2], "", entityName)
    }
    local hittedEntity
    if type(resultSet[1]) == "string" then
      hittedEntity = Game.GetEntity(resultSet[1])
    elseif type(resultSet[3]) == "userdata" then
      hittedEntity = resultSet[3]
    end
    if hittedEntity and hittedEntity.uData.PathNodeFrom then
      local force
      if entity.uData.DarkPowerPunch then
        force = PushBox.MaxPunchChargeTime * 1500
      else
        force = 1500 * math.min(Game.GetTime() - entity.uData.PunchBeginTime, PushBox.MaxPunchChargeTime)
      end
      PushBox.PunchBox(entity, hittedEntity, force)
      return
    elseif hittedEntity and hittedEntity.uData.PunchActive and MechanismPush then
      MechanismPush.Activate(hittedEntity.Name)
      return
    elseif hittedEntity and hittedEntity.uData.PunchActive and ElectricButton then
      ElectricButton.Activate(hittedEntity.Name)
      return
    elseif hittedEntity and hittedEntity.uData.PunchActive and NEC_Swith then
      NEC_Swith.Activate(hittedEntity.Name)
      return
    elseif hittedEntity and hittedEntity.uData.PunchActive and Gong then
      Gong.Activate(hittedEntity.Name)
      return
    elseif hittedEntity and hittedEntity.uData.IsPengoPushable and PengoPuzzle then
      PengoPuzzle.PunchBox(hittedEntity.Name)
      return
    end
  end
end

function PushBox.OnEndFloorPunch(entityName)
  local radiusSqr = 22500
  local minDistSqr, resButton
  if ElectricButton then
    for i = 1, #ElectricButton.ButtonsList do
      local button = Game.GetEntity(ElectricButton.ButtonsList[i])
      if button.uData.PunchActive then
        local distSqr = (button.Pos - player["NodePosHierarchy_Bip Gabriel L Hand"]):mod_sqr()
        if radiusSqr >= distSqr and (minDistSqr == nil or minDistSqr > distSqr) then
          minDistSqr = distSqr
          resButton = button
        end
      end
    end
  end
  if NEC_Swith then
    for i = 1, #NEC_Swith.ButtonsList do
      local button = Game.GetEntity(NEC_Swith.ButtonsList[i])
      if button.uData.PunchActive then
        local distSqr = (button.Pos - player["NodePosHierarchy_Bip Gabriel L Hand"]):mod_sqr()
        if radiusSqr >= distSqr and (minDistSqr == nil or minDistSqr > distSqr) then
          minDistSqr = distSqr
          resButton = button
        end
      end
    end
  end
  if ZobekSwitch then
    for i = 1, #ZobekSwitch.ButtonsList do
      local button = Game.GetEntity(ZobekSwitch.ButtonsList[i])
      if button.uData.PunchActive then
        local distSqr = (button.Pos - player["NodePosHierarchy_Bip Gabriel L Hand"]):mod_sqr()
        if radiusSqr >= distSqr and (minDistSqr == nil or minDistSqr > distSqr) then
          minDistSqr = distSqr
          resButton = button
        end
      end
    end
  end
  if resButton then
    if resButton.OnDamage == "ElectricButtonRecharged.OnDamage" then
      _G.ElectricButtonRecharged.OnDamage(resButton.Name)
    elseif resButton.OnDamage == "NEC_Swith.OnDamage" then
      NEC_Swith.Activate(resButton.Name)
    elseif resButton.OnDamage == "ZobekSwitch.OnDamage" then
      ZobekSwitch.Activate(resButton.Name)
    else
      ElectricButton.Activate(resButton.Name)
    end
  end
  if WeldingPuzzle then
    WeldingPuzzle.OnFloorPunch(entityName)
  end
end

function PushBox.SetupNode(entity)
end

function PushBox.SetupBox(entity)
  entity.uData.PathNodeFrom = defparam(entity.uData.PathNodeFrom, "")
  entity.uData.PathNodeTo = defparam(entity.uData.PathNodeTo, "")
  entity.OnDebugDraw = "PushBox.OnDebugDrawBox"
  entity.TgType = "blue"
  entity.Invulnerable = 1
  entity.AimScoreBonus = 1000
end

function PushBox.OnDebugDrawBox(boxEntity)
  if boxEntity.uData.PathNodeFrom and boxEntity.uData.PathNodeFrom == boxEntity.uData.PathNodeTo then
    local currentNode = Game.GetEntity(boxEntity.uData.PathNodeFrom)
    if currentNode then
      DebugDraw.DrawBox(currentNode.Pos, V3D(0, 0, -1), V3D(20, 20, 20), Color(64, 100, 185))
      local neighbours = Game.Split(currentNode.uData.Neighbours, "\n")
      for i, neighbourName in pairs(neighbours) do
        local neighbourEntity = Game.GetEntity(neighbourName)
        DebugDraw.DrawBox(neighbourEntity.Pos, V3D(0, 0, -1), V3D(20, 20, 20), Color(201, 118, 162))
        DebugDraw.DrawLink(currentNode.Pos, neighbourEntity.Pos, false, true, Color(201, 118, 162), Color(201, 118, 162))
      end
    end
  else
    local nodeFrom, nodeTo = Game.GetEntity(boxEntity.uData.PathNodeFrom), Game.GetEntity(boxEntity.uData.PathNodeTo)
    if nodeFrom and nodeTo then
      DebugDraw.DrawBox(nodeFrom.Pos, V3D(0, 0, -1), V3D(20, 20, 20), Color(201, 118, 162))
      DebugDraw.DrawBox(nodeTo.Pos, V3D(0, 0, -1), V3D(20, 20, 20), Color(201, 118, 162))
      DebugDraw.DrawLink(Game.GetEntity(boxEntity.uData.PathNodeFrom).Pos, Game.GetEntity(boxEntity.uData.PathNodeTo).Pos, true, true, Color(201, 118, 162), Color(201, 118, 162))
    end
  end
end

function PushBox.PlayHitSound(boxEntity, force)
  Sound.PlaySound(boxEntity.Pos, boxEntity.uData.HitSound, 0.6)
end

function PushBox.PlayHitSound2(boxEntity, force)
  SoundUtils.PlayObjectSoundByIndex(boxEntity.Name, 1)
end

function PushBox.IsBoxAtNode(nodeName, boxName)
  local box = Game.GetEntity(boxName)
  if box and nodeName and box.uData.PathNodeFrom == box.uData.PathNodeTo and nodeName == box.uData.PathNodeTo then
    return true
  end
  return false
end

function PushBox.IsBoxAtAnyNode(boxName)
  local box = Game.GetEntity(boxName)
  return box and "" ~= box.uData.PathNodeFrom and box.uData.PathNodeFrom == box.uData.PathNodeTo
end

function PushBox.FXDragOn(entityName)
  print("Dragging ON")
  if FX.BeginEffect("EFFECT_PARTICLES\183PUSH_OBJECT", "PushObject_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183PUSH_OBJECT", "", "EmitterLinkToNode 0,0 " .. entityName .. "#DC_Base")
    FX.SetEffect("EFFECT_PARTICLES\183PUSH_OBJECT", "", "EmitterLinkToNode 1,0 " .. entityName .. "#DC_Base")
    FX.SetEffect("EFFECT_PARTICLES\183PUSH_OBJECT", "", "BirthEnabledAll 1")
  end
end

function PushBox.FXDragOff(entityName)
  print("Dragging Off")
  if FX.IsEffect("EFFECT_PARTICLES\183PUSH_OBJECT", "PushObject_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183PUSH_OBJECT", "PushObject_" .. entityName, "BirthEnabledAll 0")
  end
end

function PushBox.MovingTeleBoxSlot(boxEntityName, slotTime)
  local boxEntity = Game.GetEntity(boxEntityName)
  local vToNode = boxEntity.uData.HeadedNodePos - boxEntity.Pos
  local vel = vToNode:norm() * boxEntity.uData.PushedSpeed
  local nextPosition = boxEntity.Pos + vel * slotTime
  local vNextPosToNode = boxEntity.uData.HeadedNodePos - nextPosition
  if vToNode:mod_sqr() < 0.1 or vToNode:dot(vNextPosToNode) < 0 then
    if boxEntity.uData.PushedSpeed > PushBox.MinimumSpeed and boxEntity.uData.PathNodeTo ~= boxEntity.uData.MutedNode then
      SoundUtils.PlayObjectSoundByIndex(boxEntityName, 2)
    end
    boxEntity.JustPos = boxEntity.uData.HeadedNodePos
    boxEntity.uData.HeadedNodePos = nil
    boxEntity.uData.PushedSpeed = 0
    local nodeFrom = boxEntity.uData.PathNodeFrom
    boxEntity.uData.PathNodeFrom = boxEntity.uData.PathNodeTo
    boxEntity.OnObjSlot = ""
    if boxEntity.uData.ReachNodeFunc and boxEntity.uData.ReachNodeFunc ~= "" then
      addSF(0, "", "PushBox.ExecuteReachNodeCallback", boxEntity.Name, nodeFrom)
    end
    PushBox.FXDragOff(boxEntity.Name)
  else
    boxEntity.JustPos = nextPosition
    if vNextPosToNode:mod_sqr() > PushBox.NodeSqrDistanceThreshold then
      local nextSpeed = boxEntity.uData.PushedSpeed
      if 0 < nextSpeed then
        boxEntity.uData.PushedSpeed = nextSpeed
      else
        boxEntity.uData.HeadedNodePos = nil
        boxEntity.uData.PushedSpeed = 0
        boxEntity.OnObjSlot = ""
        PushBox.FXDragOff(boxEntity.Name)
      end
    elseif boxEntity.uData.PushedSpeed <= PushBox.MinimumSpeed then
      boxEntity.uData.PushedSpeed = PushBox.MinimumSpeed
    end
  end
  boxEntity.snd00_vol = math.min(boxEntity.uData.PushedSpeed / 1500, 1)
end
