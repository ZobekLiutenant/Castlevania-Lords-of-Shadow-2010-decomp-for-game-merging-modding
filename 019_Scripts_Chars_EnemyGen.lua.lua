function EnemyGen.main()
end

function EnemyGen.CreateGenData(enemyNames, els, groupData)
  els.uData.poolSize = defparam(EnemyGen.GetProperty("poolSize", groupData), 10)
  els.uData.minTimeToSpawn = defparam(EnemyGen.GetProperty("minTimeToSpawn", groupData), 2)
  els.uData.maxTimeToSpawn = defparam(EnemyGen.GetProperty("maxTimeToSpawn", groupData), 5)
  els.uData.nSpawnPoints = #enemyNames
  els.uData.maxSimultaneousEnemies = defparam(EnemyGen.GetProperty("maxSimultaneousEnemies", groupData), #enemyNames)
  els.uData.quickFill = defparam(EnemyGen.GetProperty("quickFill", groupData), false)
  els.uData.isInfinite = defparam(EnemyGen.GetProperty("isInfinite", groupData), false)
  els.uData.spawnPoints = {}
  for indexSpawnPoint = 1, els.uData.nSpawnPoints + 1 do
    els.uData.spawnPoints[indexSpawnPoint] = EnemyGen.GetEnemyData(enemyNames[indexSpawnPoint])
  end
  els.uData.rndDistStart = defparam(EnemyGen.GetProperty("rndDistStart", groupData), false)
  local strDistribution = defparam(EnemyGen.GetProperty("distribution", groupData), "1,2,3,4,5,6,7,8,9")
  els.uData.Distribution = Game.Split(strDistribution, ",")
  els.uData.freezeResetTime = defparam(EnemyGen.GetProperty("freezeResetTime", groupData), 10)
  els.uData.waveTime = defparam(EnemyGen.GetProperty("waveTime", groupData), -1)
  els.uData.waitForDel = defparam(EnemyGen.GetProperty("waitForDel", groupData), true)
  els.uData.DropPreset = defparam(EnemyGen.GetProperty("DropPreset", groupData), "-ClassDefault")
  els.uData.PrizePreset = defparam(EnemyGen.GetProperty("PrizePreset", groupData), "")
  els.uData.WarningSound = defparam(EnemyGen.GetProperty("WarningSound", groupData), "")
  els.uData.Killed = 0
  els.uData.Spawned = 0
end

function EnemyGen.GetProperty(name, table)
  for indexProperty = 1, #table do
    if table[indexProperty][1] == name then
      return table[indexProperty][2]
    end
  end
  return nil
end

function EnemyGen.GetEnemyData(name)
  local dataEnemy
  for i in pairs(MapEnemies.Enemies) do
    dataEnemy = MapEnemies.Enemies[i]
    if dataEnemy[3][2] == name then
      return dataEnemy
    end
  end
  return nil
end

function EnemyGen.ActivateSpontaneousEnemy(groupName)
  local enemyGroup = NPC.Groups[groupName]
  if enemyGroup.uData.Distribution[1] ~= "" and not enemyGroup.uData.LastSpawnTry then
    if enemyGroup.uData.rndDistStart then
      enemyGroup.uData.LastSpawnTry = math.random(#enemyGroup.uData.Distribution)
    else
      enemyGroup.uData.LastSpawnTry = 0
    end
  end
  for tryIndex = 1, enemyGroup.uData.nSpawnPoints do
    local currentSpawnPoint
    if enemyGroup.uData.Distribution[1] ~= "" then
      local distributionIndex = enemyGroup.uData.Distribution[math.mod(enemyGroup.uData.LastSpawnTry, #enemyGroup.uData.Distribution) + 1]
      currentSpawnPoint = enemyGroup.uData.spawnPoints[math.mod(distributionIndex - 1, enemyGroup.uData.nSpawnPoints) + 1]
      enemyGroup.uData.LastSpawnTry = enemyGroup.uData.LastSpawnTry + 1
    else
      currentSpawnPoint = enemyGroup.uData.spawnPoints[math.mod(math.random(enemyGroup.uData.nSpawnPoints) - 1, enemyGroup.uData.nSpawnPoints) + 1]
    end
    if not Game.TestSphere(currentSpawnPoint[1][2], 60, "R") or enemyGroup.uData.IgnoreSpawnCollision then
      print("elegido spawnpoint libre, activando enemigo de generaci\243n espontanea")
      local enemy = NPC.CreateWithAI(currentSpawnPoint[4][2], currentSpawnPoint[1][2].x, currentSpawnPoint[1][2].y, currentSpawnPoint[1][2].z, groupName)
      enemy.Ang = currentSpawnPoint[2][2]
      enemy.ForceAction = currentSpawnPoint[5][2]
      enemy.bActive = true
      if currentSpawnPoint[7] then
        local SpawnObj = Game.GetEntity(currentSpawnPoint[7][2])
        if SpawnObj then
          SpawnObj.ForceAction = "Play"
        end
      end
      enemyGroup.uData.Spawned = enemyGroup.uData.Spawned + 1
      AIEnemy.AssignMoveHelpers(currentSpawnPoint[3][2], enemy.Name)
      Game.GetEntityList(groupName):CallOnGenerate(enemy.Name, enemyGroup.uData.Spawned)
      return true
    else
      print("descartando spawnpoint por estar ocupado")
    end
  end
  return false
end

function EnemyGen.SetStatus(groupName, Paused)
  if not Paused then
    NPC.ActivateEnemyGroup(groupName)
  end
  EnemyGen.SetFreeze(groupName, set)
end

EnemyGen.CurrentActivationIndex = 0

function EnemyGen.Activate(groupName)
  Game.Log("Activating '" .. groupName .. "'\n", 2)
  local enemyGroup = NPC.Groups[groupName]
  if not enemyGroup.uData.wasActivated then
    enemyGroup.uData.wasActivated = true
    enemyGroup.uData.ActivationIndex = EnemyGen.CurrentActivationIndex
    EnemyGen.CurrentActivationIndex = EnemyGen.CurrentActivationIndex + 1
  end
  enemyGroup.uData.AllDeathCalled = false
  enemyGroup.uData.AllDeathCalled2 = false
  enemyGroup.uData.Stopped = false
  delSF("Stopper_" .. groupName)
  if not enemyGroup.uData.FreezeTime and not Game.ExistsScheduledFunc(groupName .. "_Spawn") then
    local warningSound = enemyGroup.uData.WarningSound
    if enemyGroup.uData.Spawned <= 0 and warningSound and warningSound ~= "" then
      a = Game.Split(warningSound, ",")
      warningSound = defparam(a[1], warningSound)
      local volume = defparam(a[2], 0.6)
      local attIni = defparam(a[3], 1000)
      local attEnd = defparam(a[4], 10000)
      Sound.PlaySound(enemyGroup.uData.spawnPoints[1][1][2], warningSound, volume, attIni, attEnd)
      addSF(1, groupName .. "_Spawn", "EnemyGen.SpawnerFunc", groupName)
    else
      EnemyGen.SpawnerFunc(groupName)
    end
  end
end

function EnemyGen.IsActive(groupName)
  local enemyGroup = NPC.Groups[groupName]
  return not enemyGroup.uData.Stopped
end

function EnemyGen.CanKillEntity(ent)
  return ent.bValidBaseType and (ent.bActive or ent.uData.bActive) and ent.Life > 0 and ent.Name ~= player.uData.Mount
end

function EnemyGen.Stop(groupName, killAll)
  killAll = defparam(killAll, false)
  local enemyGroup = NPC.Groups[groupName]
  if enemyGroup == nil then
    Game.ConsoleError("EnemyGen.Stop('" .. groupName .. [[
',killAll):
	Group doesn't exist!
]])
    return
  end
  if killAll then
    Game.Log("Stopping '" .. groupName .. "' with killAll\n", 2)
  else
    Game.Log("Stopping '" .. groupName .. "' without killAll\n", 2)
  end
  EnemyGen.StopperScheduled(groupName, killAll)
  if enemyGroup.uData.isGenerator then
    enemyGroup.uData.Stopped = true
    delSF(groupName .. "_Spawn")
    local levelToHack = init.LevelName == "level.1_4_haunting_path"
    if EnemyGen.nActiveEnemies(groupName) <= 0 and not enemyGroup.uData.AllDeathCalled and levelToHack then
      enemyGroup.uData.AllDeathCalled = true
      enemyGroup.uData.AllDeathCalled2 = true
      Game.GetEntityList(groupName):CallOnAllDeath()
    end
  end
end

function EnemyGen.StopperScheduled(groupName, killAll)
  local enemyGroup = NPC.Groups[groupName]
  if enemyGroup == nil then
    Game.ConsoleError("EnemyGen.StopperScheduled('" .. groupName .. [[
',killAll):
	Group doesn't exist!
]])
    return
  end
  if type(killAll) == "boolean" and killAll then
    for i = 1, #enemyGroup do
      if EnemyGen.CanKillEntity(enemyGroup[i]) then
        EnemyGen.Kill(enemyGroup[i])
        if init.LevelName ~= "level.dlc_1_3_towermech" then
          enemyGroup.uData.Spawned = enemyGroup.uData.poolSize
        end
      end
    end
    if init.LevelName == "level.dlc_1_3_towermech" and enemyGroup.uData.waveTime <= 0 then
      enemyGroup.uData.Spawned = enemyGroup.uData.poolSize
    end
    enemyGroup.uData.AllDeathCalled = true
    if not enemyGroup.uData.AllDeathCalled2 then
      Game.GetEntityList(groupName):CallOnAllDeath()
    end
  elseif type(killAll) == "string" and killAll then
    for i = 1, #enemyGroup do
      if EnemyGen.CanKillEntity(enemyGroup[i]) then
        if enemyGroup[i].oActCtrl.oActClass:GetAct(killAll) then
          enemyGroup[i].Action = killAll
        else
          EnemyGen.Kill(enemyGroup[i])
          enemyGroup.uData.Spawned = enemyGroup.uData.poolSize
        end
      end
    end
  end
  if 0 < EnemyGen.NumberActiveEnemiesInGroup(enemyGroup) then
    addSF(0.5, "Stopper_" .. groupName, "EnemyGen.StopperScheduled", groupName, killAll)
  end
end

function EnemyGen.Kill(entity)
  entity.Hit_RemoveNow = 1
  entity.Invulnerable = 0
  entity.Life = 0
  entity.uData.DontGiveExp = true
end

function EnemyGen.SetFreeze(groupName, set)
  local enemyGroup = NPC.Groups[groupName]
  if not enemyGroup then
    Game.ConsoleError("EnemyGen.SetFreeze: '" .. groupName .. "' doesn't exists\n")
    return
  end
  if set then
    Game.Log("Freezing '" .. groupName .. "'\n", 2)
    enemyGroup.uData.FreezeTime = Game.GetTime()
    for i = 1, #enemyGroup do
      if enemyGroup[i].bValidBaseType and enemyGroup[i].bActive and enemyGroup[i].Life > 0 and enemyGroup[i].Name ~= player.uData.Mount then
        enemyGroup[i].uData.bActive = enemyGroup[i].bActive
        enemyGroup[i].bActive = false
        if enemyGroup[i].oAI then
          enemyGroup[i].oAI.bEnable = false
        end
      end
    end
    if enemyGroup.uData.isGenerator then
      delSF(groupName .. "_Spawn")
    end
  else
    Game.Log("Unfreezing '" .. groupName .. "'\n", 2)
    if enemyGroup.uData.FreezeTime then
      if enemyGroup.uData.isGenerator then
        local isStopped = enemyGroup.uData.Stopped
        if 0 < enemyGroup.uData.freezeResetTime and enemyGroup.uData.FreezeTime + enemyGroup.uData.freezeResetTime < Game.GetTime() then
          EnemyGen.Stop(groupName, true)
          EnemyGen.FillPool(groupName)
        else
          EnemyGen.UnfreezeEnemies(groupName)
        end
        enemyGroup.uData.FreezeTime = nil
        if isStopped == false then
          EnemyGen.Activate(groupName)
        end
      else
        EnemyGen.UnfreezeEnemies(groupName)
        enemyGroup.uData.FreezeTime = nil
      end
    end
  end
end

function EnemyGen.UnfreezeEnemies(groupName)
  local enemyGroup = NPC.Groups[groupName]
  for i = 1, #enemyGroup do
    if enemyGroup[i].bValidBaseType and enemyGroup[i].uData.bActive then
      enemyGroup[i].bActive = enemyGroup[i].uData.bActive
      enemyGroup[i].uData.bActive = nil
      if enemyGroup[i].oAI then
        enemyGroup[i].oAI.bEnable = true
      end
      if enemyGroup.uData.isGenerator then
        EnemyGen.ResetSpawnTime(groupName)
      end
    end
  end
end

function EnemyGen.IsFrozen(groupName)
  local enemyGroup = NPC.Groups[groupName]
  return enemyGroup.uData.FreezeTime ~= nil
end

function EnemyGen.FillPool(groupName)
  Game.Log("Filling pool '" .. groupName .. "'\n", 2)
  local entityList = NPC.Groups[groupName]
  entityList.uData.Spawned = 0
end

function EnemyGen.NumberOfRenderableEnemies(group)
  local activeEnemies = 0
  for i = 1, #group do
    if group[i].bValidBaseType and group[i] and group[i].bActive and not group[i].uData.IgnoreForGenCounter then
      activeEnemies = activeEnemies + 1
    end
  end
  return activeEnemies
end

function EnemyGen.nRenderableEnemies(groupName)
  local entityList = NPC.Groups[groupName]
  return EnemyGen.NumberOfRenderableEnemies(entityList)
end

function EnemyGen.NumberActiveEnemiesInGroup(group)
  local activeEnemies = 0
  for i = 1, #group do
    if group[i].bValidBaseType and group[i] and group[i].bActive and not group[i].uData.Killed and not group[i].uData.IgnoreForGenCounter then
      activeEnemies = activeEnemies + 1
    end
  end
  return activeEnemies
end

function EnemyGen.nActiveEnemies(groupName)
  local entityList = NPC.Groups[groupName]
  return EnemyGen.NumberActiveEnemiesInGroup(entityList)
end

function EnemyGen.nFreeSlots(groupName)
  local entityList = NPC.Groups[groupName]
  return entityList.uData.maxSimultaneousEnemies - EnemyGen.nActiveEnemies(groupName)
end

function EnemyGen.isTimeToSpawn(groupName)
  local entityList = NPC.Groups[groupName]
  return not entityList.uData.NextSpawnTime or entityList.uData.NextSpawnTime < Game.GetTime()
end

function EnemyGen.leftInPool(groupName)
  local entityList = NPC.Groups[groupName]
  if entityList.uData.isInfinite and not entityList.uData.Stopped then
    return entityList.uData.poolSize
  else
    return entityList.uData.poolSize - entityList.uData.Spawned
  end
end

function EnemyGen.IsBlockedByWave(entityList)
  return entityList.uData.waveTime > 0 and 0 < entityList.uData.Spawned and 0 == math.mod(entityList.uData.Spawned, entityList.uData.maxSimultaneousEnemies) and (0 ~= math.mod(entityList.uData.Killed, entityList.uData.maxSimultaneousEnemies) or entityList.uData.LastDeathTime and not (entityList.uData.LastDeathTime + entityList.uData.waveTime < Game.GetTime()))
end

function EnemyGen.ResetSpawnTime(groupName)
  local entityList = NPC.Groups[groupName]
  local rndSpawnTime = math.random(entityList.uData.minTimeToSpawn, entityList.uData.maxTimeToSpawn)
  entityList.uData.NextSpawnTime = Game.GetTime() + rndSpawnTime
end

function EnemyGen.SpawnerFunc(groupName)
  local entityList = NPC.Groups[groupName]
  if EnemyGen.isTimeToSpawn(groupName) and EnemyGen.leftInPool(groupName) > 0 and 0 < EnemyGen.nFreeSlots(groupName) and (not entityList.uData.waitForDel or EnemyGen.nRenderableEnemies(groupName) < entityList.uData.maxSimultaneousEnemies) and not EnemyGen.IsBlockedByWave(entityList) and not Scene.IsPlaying then
    if entityList.uData.Spawned == 0 and entityList.uData.quickFill then
      local activationSuccessfull = true
      while activationSuccessfull and EnemyGen.leftInPool(groupName) > 0 and 0 < EnemyGen.nFreeSlots(groupName) do
        activationSuccessfull = EnemyGen.ActivateSpontaneousEnemy(groupName)
      end
    else
      EnemyGen.ActivateSpontaneousEnemy(groupName)
    end
    EnemyGen.ResetSpawnTime(groupName)
  end
  addSF(0.5, groupName .. "_Spawn", "EnemyGen.SpawnerFunc", groupName)
  EnemyGen.DebugInfo(groupName)
end

function EnemyGen.MemberDead(groupName)
  local entityList = NPC.Groups[groupName]
  if EnemyGen.nFreeSlots(groupName) == 1 then
    EnemyGen.ResetSpawnTime(groupName)
  end
  entityList.uData.LastDeathTime = Game.GetTime()
  if EnemyGen.leftInPool(groupName) <= 0 and 0 >= EnemyGen.nActiveEnemies(groupName) or entityList.uData.Stopped and 0 >= EnemyGen.nActiveEnemies(groupName) then
    entityList.uData.AllDeathCalled = true
    if not entityList.uData.AllDeathCalled2 then
      Game.GetEntityList(groupName):CallOnAllDeath()
    end
    NPC.Groups[groupName].uData.Stopped = true
    delSF(groupName .. "_Spawn")
  elseif entityList.uData.isGenerator and not entityList.uData.FreezeTime and EnemyGen.leftInPool(groupName) > 0 and not entityList.uData.Stopped and not Game.ExistsScheduledFunc(groupName .. "_Spawn") then
    Game.Log("Activating '" .. groupName .. "' from MemberDead\n", 2)
    EnemyGen.Activate(groupName)
  end
  if entityList.uData.Killed then
    entityList.uData.Killed = entityList.uData.Killed + 1
  end
end

function EnemyGen.IsEmpty(groupName)
  local entityList = NPC.Groups[groupName]
  return EnemyGen.leftInPool(groupName) <= 0 and 0 >= EnemyGen.nActiveEnemies(groupName) or entityList.uData.Stopped and 0 >= EnemyGen.nActiveEnemies(groupName)
end

function EnemyGen.ChangeParam(groupName, param, value)
  local entityList = NPC.Groups[groupName]
  entityList[param] = value
end

function EnemyGen.DebugInfo(groupName)
  if Weapons.Debug.Value == 8 then
    local entityList = NPC.Groups[groupName]
    if not (not entityList.uData.debugText or entityList.uData.debugText.bValidBaseType) or not entityList.uData.debugText then
      entityList.uData.debugText = DebugDraw.NewPrimitive("Text3D")
    end
    local WaveDebugText = ""
    if EnemyGen.IsBlockedByWave(entityList) then
      WaveDebugText = " blocked by wave"
    end
    if EnemyGen.IsBlockedByWave(entityList) and 0 == math.mod(entityList.uData.Killed, entityList.uData.maxSimultaneousEnemies) then
      local timeToNextWave = string.format("%0.1f", entityList.uData.LastDeathTime + entityList.uData.waveTime - Game.GetTime())
      WaveDebugText = WaveDebugText .. " (next wave in " .. timeToNextWave .. ")"
    end
    local deltaY = entityList.uData.ActivationIndex * 10
    entityList.uData.debugText.Pos = V3D(20, 150 + deltaY, 0)
    entityList.uData.debugText.TimeToDel = Game.GetTime() + 0.7
    entityList.uData.debugText.Text = groupName .. ": pool->" .. EnemyGen.leftInPool(groupName) .. " active->" .. EnemyGen.nActiveEnemies(groupName) .. WaveDebugText
    entityList.uData.debugText.DontTransform = true
  end
end
