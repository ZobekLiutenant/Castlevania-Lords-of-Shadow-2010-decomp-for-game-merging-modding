function NPC.main()
  NPC.CreateList = {}
end

function NPC.Create(EneList, groupName)
  local list, nam, e, data, datalist
  list = EneList[groupName]
  Game.CreateEntityList(groupName)
  for name in pairs(list) do
    e = Game.CreateEntity(name, "WalkChar")
    datalist = list[name]
    for data in pairs(datalist) do
      if string.sub(data, 1, 1) == "." then
        e[string.sub(data, 2)] = datalist[data]
      end
    end
    e.TgType = "red"
    e.EntityList = groupName
  end
end

function NPC.CreateWithAI(acName, x, y, z, groupName, setOnFloor)
  local e = NPC.CreateSingleEnemy(nil, acName)
  e.Pos = V3D(x, y, z)
  if bSetOnFloor ~= nil and setOnFloor == 1 then
    Game.SetOnFloor(e.Name)
  end
  e.bActive = false
  e.ActCtrl = acName
  e.EntityList = groupName
  table.insert(NPC.Groups[groupName], e)
  e.TgType = "red"
  AI.EnableAIChar(e.Name, 1, e.ActCtrl)
  AIEnemy.CreateSingleEnemyAI(e.Name, groupName, propsAI)
  return e
end

function NPC.AssignOnEnter(TriggerName, EneList, groupName)
  NPC.CreateList[TriggerName] = {EneList, groupName}
  Game.GetEntity(TriggerName).OnEnter = "NPC.OnEnterCreate"
end

function NPC.OnEnterCreate(TriggerName)
  local l
  l = NPC.CreateList[TriggerName]
  if l ~= nil then
    NPC.Create(l[1], l[2])
    AIEnemiesTeam.Create(l[1], l[2])
  else
    Game.ConsoleError("ERROR : List Not found at NPC.OnEnterCreate('" .. TriggerName .. "')\n")
  end
end

NPC.Counter = 0

function NPC.CreateSingleEnemy(enemyData, ActCtrlName)
  local enemy = Game.CreateEntity("Enemy_" .. NPC.Counter, "WalkChar")
  enemy.bActive = false
  NPC.Counter = NPC.Counter + 1
  if enemyData then
    for dataIndex in pairs(enemyData) do
      enemy[enemyData[dataIndex][1]] = enemyData[dataIndex][2]
    end
  end
  enemy.isFalling = 0
  return enemy
end

function NPC.CreateMapEnemies()
  if Game.Get("ToolMode") == 1 then
    NPC.ListOfMapEnemies = {}
  end
  for i in pairs(MapEnemies.Enemies) do
    local h = NPC.CreateSingleEnemy(MapEnemies.Enemies[i])
    if NPC.ListOfMapEnemies ~= nil then
      NPC.ListOfMapEnemies[i] = h
    end
  end
end

function NPC.GetGroupData(enemyGroup)
  for i in pairs(MapEnemiesGroup.Groups) do
    local groupData = MapEnemiesGroup.Groups[i]
    if groupData[1][2] == enemyGroup then
      return groupData
    end
  end
end

function NPC.CreateMapEnemiesGroup()
  NPC.Groups = {}
  local tempArray = {}
  for i in pairs(MapEnemiesGroup.Groups) do
    local groupData = MapEnemiesGroup.Groups[i]
    local groupName = groupData[1][2]
    local enemyNames = Game.Split(groupData[2][2], "\n")
    local tarray = {}
    NPC.Groups[groupName] = {}
    tempArray[groupName] = tarray
    local els = Game.CreateEntityList(groupName)
    if EnemyGen.GetProperty("isGenerator", groupData) then
      EnemyGen.CreateGenData(enemyNames, els, groupData)
      els.uData.isGenerator = true
    else
      els.uData.isGenerator = false
      els.uData.PrizePreset = defparam(EnemyGen.GetProperty("PrizePreset", groupData), "")
      els.uData.DropPreset = defparam(EnemyGen.GetProperty("DropPreset", groupData), "-ClassDefault")
    end
    for j = 1, #groupData do
      local locobj = groupData[j]
      if string.sub(locobj[1], 1, 3) == "el_" then
        local propstr = string.sub(locobj[1], 4)
        els[propstr] = locobj[2]
      end
    end
    local numdatalist = #enemyNames
    for idata = 1, numdatalist do
      local e = Game.GetEntity(enemyNames[idata])
      if e == nil then
        Game.ConsoleError("ERROR Enemy " .. enemyNames[idata] .. [[
 does not exist!
 can't be incuded in the group.
Please save the whole map again.
]])
        return
      end
    end
    for iEnemy in pairs(enemyNames) do
      local e = Game.GetEntity(enemyNames[iEnemy])
      if e == nil then
        Game.ConsoleError("ERROR Enemy " .. enemyNames[idata] .. [[
 does not exist!
 can't be incuded in the group.
Please save the whole map again.
]])
        return
      end
      tarray[e.Name] = {}
      e.EntityList = groupName
      NPC.Groups[groupName][iEnemy] = e
    end
    NPC.Groups[groupName].uData = els.uData
    if not els.uData.isGenerator then
      AIEnemiesTeam.Create(tempArray, groupName)
      for idata in pairs(enemyNames) do
        local e = Game.GetEntity(enemyNames[idata])
        local MuData = e.uData
        for iMuData in pairs(MuData) do
          if string.sub(iMuData, 1, 3) == "AI_" then
            e[iMuData] = e.uData[iMuData]
          end
        end
      end
    end
  end
  if MapEnemies.RouteLinks ~= nil then
    for i = 1, #MapEnemies.RouteLinks do
      local irl = MapEnemies.RouteLinks[i]
      local point = Team.ListOfMapMoveHelpers[irl[2]]
      local entply = Game.GetEntity(MapEnemies.Enemies[irl[1]][3][2])
      if entply and entply.oAI and point.bIsPatrolPoint then
        entply.oAI.oPatrolPoint = point
      end
    end
  end
end

function NPC.ModifyEnemiesInGroup(GroupName, Prop, Value)
  local a = NPC.Groups[GroupName]
  for i = 1, #a do
    a[i][Prop] = Value
  end
end

function NPC.ModifyAIEnemiesInGroup(GroupName, Prop, Value)
  local a = NPC.Groups[GroupName]
  for i = 1, #a do
    a[i].oAI[Prop] = Value
  end
end

function NPC.ActivateEnemyGroup(GroupName)
  local a = NPC.Groups[GroupName]
  if a == nil then
    Game.ConsoleError("ERROR : Enemy group '" .. GroupName .. "' not found!")
  elseif a.uData and a.uData.isGenerator then
    EnemyGen.Activate(GroupName)
    AIEnemiesTeam.OnActivateEvent(GroupName)
    TravelBook.OnEnemyGroupActivated(GroupName)
  else
    a.uData.wasActivated = true
    NPC.ModifyEnemiesInGroup(GroupName, "bActive", true)
    AIEnemiesTeam.OnActivateEvent(GroupName)
    TravelBook.OnEnemyGroupActivated(GroupName)
  end
end

NPC.BoomData = {}

function NPC.PreloadBoomPieces(listenemies)
  for i = 1, #listenemies do
    local enemytype = listenemies[i]
    if NPC.BoomData[enemytype] then
      local listacachos = NPC.BoomData[enemytype]
      for dumi, object in pairs(listacachos) do
        local o = PhysicsObj.CreateObj([[




_0]], object, V3D(0, 0, 0), V3D(0, 0, 0))
        o.bActive = false
        o:Del()
      end
    end
  end
end

function NPC.ExplodeChar(e, BoomPos, Faliu)
  local typeName = e.ActCtrl
  local ManRay = NPC.BoomData[typeName]
  if ManRay then
    for Nam, Typ in pairs(ManRay) do
      local posit = e["NodePosHierarchy_" .. Nam]
      local o = PhysicsObj.CreateObj(Nam .. "_" .. Typ, Typ, posit, e["NodeAngHierarchy_" .. Nam])
      o.Force = (posit - BoomPos):norm() * V3D(Faliu, Faliu, Faliu)
      o.Enable = 1
      o.Life = 250
      NPC.FXExplosionPiece(o.Name)
      NPC.DisolveAndDeleteEntity(o.Name, 2 + math.random() * 2, 3 + math.random() * 1)
    end
    e.bActive = false
    e.uData.Exploded = true
    ExplosiveWeapons.DoBodyExplosion(e.Name, e.Pos)
    Game.AddScheduledFunc(Game.GetTime() + 1, e.Name .. "_Del", "NPC.DelChar", e.Name)
    return true
  else
    return false
  end
end

function NPC.FXExplosionPiece(Entity)
end

function NPC.DisolveBurnAndDeleteEntity(entityname, delay, time)
  if 0 < time then
    if 0 < delay then
      Game.AddScheduledFunc(Game.GetTime() + delay, entityname, "NPC.DisolveBurnEntity", entityname, time)
    else
      NPC.DisolveEntity(entityname, time)
    end
    Game.AddScheduledFunc(Game.GetTime() + delay + time + 0.1, entityname, "NPC.DeleteEntity", entityname)
  end
end

function NPC.DisolveAndDeleteEntity(entityname, delay, time)
  if 0 < time then
    if 0 < delay then
      Game.AddScheduledFunc(Game.GetTime() + delay, entityname, "NPC.DisolveEntity", entityname, time)
    else
      NPC.DisolveEntity(entityname, time)
    end
    Game.AddScheduledFunc(Game.GetTime() + delay + time + 0.1, entityname, "NPC.DeleteEntity", entityname)
  end
end

function NPC.DisolveBurnEntity(entityname, time)
  if FX.BeginEffect("EFFECT_MODELEFFECT", "", "" .. time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT", "", "EntityName " .. entityname)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "RenderEffect " .. FX.MODELEFFECT_DISOLVEANDBURN)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "ValueRamp 2 0,0 " .. time .. ",1")
    FX.SetEffect("EFFECT_MODELEFFECT", "", "FadeOut")
  end
end

function NPC.DisolveEntity(entityname, time)
  if FX.BeginEffect("EFFECT_MODELEFFECT", "", "" .. time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT", "", "EntityName " .. entityname)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "RenderEffect " .. FX.MODELEFFECT_DISOLVE)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "ValueRamp 2 0,0 " .. time .. ",1")
    FX.SetEffect("EFFECT_MODELEFFECT", "", "FadeOut")
  end
end

function NPC.AppearBurnEntity(entityname, time)
  if FX.BeginEffect("EFFECT_MODELEFFECT", "", "" .. time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT", "", "EntityName " .. entityname)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "RenderEffect " .. FX.MODELEFFECT_DISOLVEANDBURN)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "ValueRamp 2 0,1 " .. time .. ",0")
    FX.SetEffect("EFFECT_MODELEFFECT", "", "FadeIn")
  end
end

function NPC.AppearEntity(entityname, time)
  if FX.BeginEffect("EFFECT_MODELEFFECT", "", "" .. time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT", "", "EntityName " .. entityname)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "RenderEffect " .. FX.MODELEFFECT_DISOLVE)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "ValueRamp 2 0,1 " .. time .. ",0")
    FX.SetEffect("EFFECT_MODELEFFECT", "", "FadeIn")
  end
end

function NPC.DeleteEntity(entityname)
  local e = Game.GetEntity(entityname)
  if e then
    e:Del()
  end
end

function NPC.DelChar(Namir)
  local e = Game.GetEntity(Namir)
  if e then
    e:Del()
  end
end

function NPC.control(entname)
  local cam, usr, ent
  cam = Game.GetEntity(Game.GetCam(0))
  usr = Game.GetEntity(cam.MainTarget)
  ent = Game.GetEntity(entname)
  ent.UsrControl = 0
  cam.MainTarget = ent.Name
  cam.Target = ent.Name
  usr.UsrControl = -1
end
