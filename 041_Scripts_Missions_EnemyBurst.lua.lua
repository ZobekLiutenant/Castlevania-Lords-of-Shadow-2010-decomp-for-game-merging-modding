EnemyBurst = {}

function EnemyBurst.main()
  EnemyBurst.PollDelay = 1
end

function EnemyBurst.MakeBurst(breakableName, enemyName, enemyGroupName, cameraName)
  local enemyEntity = Game.GetEntity(enemyName)
  local breakableEntity = Game.GetEntity(breakableName)
  local enemyGroup = NPC.Groups[enemyGroupName]
  if not (nil ~= breakableEntity and breakableEntity.uData.TestRadius) or not breakableEntity.uData.BurstType then
    Game.ConsoleError("EnemyBurst.MakeBurst: Bad entity " .. breakableName .. "\n")
    return
  elseif nil == enemyEntity or not enemyEntity:IsType("WalkChar") then
    Game.ConsoleError("EnemyBurst.MakeBurst: Bad entity " .. enemyName .. "\n")
    return
  elseif nil == enemyGroup then
    Game.ConsoleError("EnemyBurst.MakeBurst: Bad enemy group: " .. enemyGroupName .. "\n")
    return
  end
  local hittedName = Game.TestSphere(breakableEntity.Pos, breakableEntity.uData.TestRadius, "WR", breakableEntity.Name)
  if hittedName and hittedName ~= "" then
    Game.AddScheduledFunc(Game.GetTime() + EnemyBurst.PollDelay, "", "EnemyBurst.MakeBurst", breakableName, enemyName, enemyGroupName, cameraName)
    return
  end
  breakableEntity.bMapCollision = true
  PhysicsObj.BuildHitCollider(breakableEntity, "CHAR")
  enemyGroup.uData.BurstElementName = breakableName
  local func = EnemyBurst[enemyEntity.ActCtrl .. "_" .. breakableEntity.uData.BurstType]
  if type(func) == "function" then
    func(enemyEntity, breakableEntity, enemyGroupName, cameraName)
  else
    Game.ConsoleError("EnemyBurst.MakeBurst: Burst function not found for " .. enemyEntity.ActCtrl .. " against " .. breakableEntity.uData.BurstType .. "\n")
  end
end

function EnemyBurst.OnDebugDraw(breakableEntity)
  if breakableEntity and breakableEntity.uData.TestRadius then
    DebugDraw.DrawSphere(breakableEntity.Pos, breakableEntity.uData.TestRadius, Color(20, 180, 20))
  end
end

function EnemyBurst.TrollBig_TrollBarsA(trollEntity, barsEntity, enemyGroupName, cameraName)
  if cameraName then
    Camera.LaunchCamera(cameraName, 9, "", false)
  end
  NPC.ActivateEnemyGroup(enemyGroupName)
end

function EnemyBurst.OnTrollBigBurstHit(entityName, eventName)
  local eventName = defparam(eventName, "")
  if string.sub(eventName, 1, 8) ~= "BurstHit" then
    Game.ConsoleError("Event name: '" .. eventName .. "' must begin with 'BurstHit'\n")
    return
  end
  local hitNumber = tonumber(string.sub(eventName, 9))
  if nil == hitNumber then
    Game.ConsoleError("Invalid burst event name: " .. eventName .. "\n")
    return
  end
  local entity = Game.GetEntity(entityName)
  local enemyGroup = NPC.Groups[entity.uData.TeamOrig]
  local breakableEntity = Game.GetEntity(enemyGroup.uData.BurstElementName)
  if hitNumber == breakableEntity.uData.CurrentVisibleNode then
    if hitNumber == 1 then
      breakableEntity.oActCtrl:SetAction("TrollBarsA_State1")
    elseif hitNumber == 2 then
      breakableEntity.oActCtrl:SetAction("TrollBarsA_State2")
    elseif hitNumber == 3 then
      breakableEntity.oActCtrl:SetAction("TrollBarsA_State3")
    end
    if MapEffects and MapEffects.BigTrollAppearsHit then
      MapEffects.BigTrollAppearsHit(hitNumber, breakableEntity.Pos)
    end
    local camera = Game.GetEntity(Game.GetCam(0))
    camera.QuakeFactor = 1.5
    camera.QuakeTime = 0.3
    EnemyBurst.BreakStep(breakableEntity)
  end
end

function EnemyBurst.BreakStep(breakableEntity)
  if breakableEntity.uData.BurstSound then
    local soundInfo = breakableEntity.uData.BurstSound[breakableEntity.uData.CurrentVisibleNode]
    if nil ~= soundInfo and "" ~= soundInfo[1] then
      Sound.PlaySound(breakableEntity.Pos, soundInfo[1], soundInfo[2], soundInfo[3], soundInfo[4], soundInfo[5])
    end
  end
  if nil ~= breakableEntity.uData.NodeNames then
    for i, name in pairs(breakableEntity.uData.NodeNames[breakableEntity.uData.CurrentVisibleNode]) do
      breakableEntity["bShowNode_" .. name] = false
    end
    breakableEntity.uData.CurrentVisibleNode = breakableEntity.uData.CurrentVisibleNode + 1
    for i, name in pairs(breakableEntity.uData.NodeNames[breakableEntity.uData.CurrentVisibleNode]) do
      breakableEntity["bShowNode_" .. name] = true
    end
  elseif nil ~= breakableEntity.uData.BurstAnm then
    breakableEntity.Action = breakableEntity.uData.BurstAnm[breakableEntity.uData.CurrentVisibleNode]
    breakableEntity.uData.CurrentVisibleNode = breakableEntity.uData.CurrentVisibleNode + 1
  else
    breakableEntity.uData.CurrentVisibleNode = breakableEntity.uData.CurrentVisibleNode + 1
  end
  if breakableEntity.uData.CurrentVisibleNode == breakableEntity.uData.LastNode then
    if breakableEntity.uData.OpenFunc and string.len(breakableEntity.uData.OpenFunc) > 0 then
      assert(loadstring(breakableEntity.uData.OpenFunc .. "(" .. breakableEntity.Name .. ")"))()
    end
    return true
  end
  return false
end

function EnemyBurst.StopBreakAnm(entityName)
  Game.GetEntity(entityName).oActCtrl:Pause()
end
