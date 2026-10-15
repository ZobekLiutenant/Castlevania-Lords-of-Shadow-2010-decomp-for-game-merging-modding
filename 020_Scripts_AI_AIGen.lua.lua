AIGen = {}

function AIGen.main()
  Game.PreloadLibrary("Scripts/AI/AISpecific.lua", "AISpecific")
  Game.PreloadLibrary("Scripts/AI/AIEntity.lua", "AIEntity")
  Game.PreloadLibrary("Scripts/AI/AITeam.lua", "AITeam")
end

function AIGen.Init()
  Game.Set("EventActionLabelLinkPath", "AIGen.IniJump")
  AISpecific.Init()
end

function AIGen.GetPlyName()
  local ply = Game.UsrEntity(0)
  if ply == nil then
    return ""
  end
  return ply.Name
end

function AIGen.EnableVisionTeam(team, enable)
  local memb = team.oFirst
  while memb ~= nil do
    local ent = memb.oEnt
    ent.oAI.bEnableControlVision = enable
    memb = team:oNext(memb)
  end
end

function AIGen.EnableVisionMetaTeam(metaTeam, enable)
  local team, memb = AITeamList.FirstMembMetaTeam(metaTeam)
  while team ~= nil and memb ~= nil do
    local ent = memb.oEnt
    ent.oAI.bEnableControlVision = enable
    team, memb = AITeamList.NextMembMetaTeam(metaTeam, team, memb)
  end
end

function AIGen.STATIC_CHAR_MetaTeam(metaTeam)
  local team, memb = AITeamList.FirstMembMetaTeam(metaTeam)
  while team ~= nil and memb ~= nil do
    local e = memb.oEnt
    if e.oAI.State ~= STEERING_CHAR then
      AI.SetStateChar(STATIC_CHAR, e.Name)
    end
    team, memb = AITeamList.NextMembMetaTeam(metaTeam, team, memb)
  end
end

function AIGen.GetMembRandMetaTeam(metaTeam)
  local name = AITeamList.GetMembRandMetaTeam(metaTeam)
  if name == "" then
    return nil
  end
  local e = Game.GetEntity(name)
  if name == AIGen.GetPlyName() or AIEntitySpec.IsEnable(e) then
    return e
  else
    local found = false
    local team, memb = AITeamList.FirstMembMetaTeam(metaTeam)
    while team ~= nil and memb ~= nil do
      e = memb.oEnt
      if name == AIGen.GetPlyName() or AIEntitySpec.IsEnable(e) then
        return e
      end
      team, memb = AITeamList.NextMembMetaTeam(metaTeam, team, memb)
    end
  end
  return nil
end

function AIGen.GetListParapAssignedTeam(team, listParap)
  if team == nil then
    return
  end
  local memb = team.oFirst
  while memb ~= nil do
    local ent = memb.oEnt
    if ent.oAI ~= nil and ent.oAI.oContStSup.oParapControl ~= nil then
      table.insert(listParap, ent.oAI.oFirstParapet)
    end
    memb = team:oNext(memb)
  end
end

function AIGen.KillAITeamWithLife(nameTeam, now, attacker)
  local entName = AITeamList.GetFirstMembTeam(nameTeam)
  while entName ~= "" do
    local ent = Game.GetEntity(entName)
    if ent then
      ent.Hit_RemoveNow = now
      ent.Invulnerable = 0
      ent.Life = 0
      if attacker ~= nil then
        ent.oWeapHit.Attacker = attacker
      end
    end
    entName = AITeamList.GetNextMembTeam(nameTeam)
  end
end

function AIGen.ForceDeath(entityName)
  local ent = Game.GetEntity(entityName)
  if ent == nil then
    return
  end
  ent.Invulnerable = 0
  NPC.DeleteEntity(entityName)
end

function AIGen.ExecFuncTeam(nameTeam, func, timeMin, timeMax, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, tumach)
  if not func then
    return
  end
  timeMin = timeMin or 0
  timeMax = timeMax or timeMin
  if timeMin > timeMax then
    return
  end
  local entName = AITeamList.GetFirstMembTeam(nameTeam)
  while entName ~= "" do
    local ent = Game.GetEntity(entName)
    if ent then
      addSF(math.random(timeMin, timeMax), func, func, ent.Name, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, tumach)
    end
    entName = AITeamList.GetNextMembTeam(nameTeam)
  end
end

function AIGen.OnGoToEndEvent(ent)
  print(ent.Name, " EVENTO GO TO END")
  if ent.oAI.uData.OnGoToEndEvent ~= nil then
    ent.oAI.uData.OnGoToEndEvent(ent)
  end
end

function AIGen.OnGoToObjectiveReachedEvent(ent)
  print(ent.Name, " EVENTO GO TO OBJECTIVE REACHED")
  if ent.oAI.uData.OnGoToObjectiveReachedEvent ~= nil then
    ent.oAI.uData.OnGoToObjectiveReachedEvent(ent)
  end
end

function AIGen.IsElemInTable(tab, elem)
  for i in pairs(tab) do
    if elem == tab[i] then
      return true
    end
  end
  return false
end

function AIGen.EraseElemTable(tab, elem)
  for i in pairs(tab) do
    if elem == tab[i] then
      table.remove(tab, i)
    end
  end
end

function AIGen.IniTable(tab)
  local n = table.getn(tab)
  for i = 1, n do
    table.remove(tab)
  end
end

function AIGen.CopyTable(tabOrig, tabDest)
  AIGen.IniTable(tabDest)
  local n = table.getn(tabOrig)
  for i = 1, n do
    table.insert(tabDest, tabOrig[i])
  end
end

function AIGen.PrintTable(tab)
  for i in pairs(tab) do
    print(tab[i])
  end
end

AIGen.ListPosLocal = {}
AIGen.EnableGetListPosLocal = false

function AIGen.GetListPosLocal(ent, posRef)
  if not AIGen.EnableGetListPosLocal then
    return
  end
  local angEnt = ent.ViewAng
  local vectRef = posRef - ent.Pos
  local angPos = (-vectRef):getrot()
  local angDiff = (angPos:normAngDeg() - angEnt:normAngDeg()):normAngDeg()
  local angDiffNorm = angDiff:torad():normAngRad()
  local mod = vectRef:mod()
  table.insert(AIGen.ListPosLocal, {
    angDiffNorm.y,
    vectRef:norm().y,
    mod
  })
end

function AIGen.Jump(name, vel)
  local ent = Game.GetEntity(name)
  ent.Vel = vel
end

function AIGen.JumpPos(name, pos, velHoriz)
  local ent = Game.GetEntity(name)
  local jumpGravity = ent.oActCtrl.oActClass.Gravity
  local posIni = ent.Pos
  local posDiff = pos - posIni
  local dist = posDiff:mod()
  if dist < 5 then
    return
  end
  local factorTempDist = 1 / velHoriz
  local temp = factorTempDist * dist
  local vx = (pos.x - posIni.x) / temp
  local vz = (pos.z - posIni.z) / temp
  local vy = (pos.y - posIni.y + 0.5 * jumpGravity * temp * temp) / temp
  local vel = V3D(vx, vy, vz)
  AIGen.Jump(name, vel)
end

function AIGen.IniJump(name, posGoX, posGoY, posGoZ, objX, objY, objZ, vel, factorTempDist)
  local ent = Game.GetEntity(name)
  ent.AI_UseLabelPath = 0
  AI.SaveStateAuxChar(name)
  AIGen.GoObjectiveJump(name, posGoX, posGoY, posGoZ, objX, objY, objZ, vel, factorTempDist)
end

function AIGen.GoObjectiveJump(name, posGoX, posGoY, posGoZ, objX, objY, objZ, vel, factorTempDist)
  local ent = Game.GetEntity(name)
  local posGo = V3D(posGoX, posGoY, posGoZ)
  local rad = Game.Get("MarginPosTestJumpCharAI")
  AI.SetStateChar(GO_TO_CHAR, name, posGoX, posGoY, posGoZ, objX, objY, objZ, rad, vel, 1)
  Game.AddScheduledFunc(Game.GetTime() + 0.25, "ControlOrientJump", "AIGen.ControlOrientJump", name, posGoX, posGoY, posGoZ, objX, objY, objZ, factorTempDist)
end

function AIGen.ControlOrientJump(name, posGoX, posGoY, posGoZ, objX, objY, objZ, factorTempDist)
  local ent = Game.GetEntity(name)
  local obj = V3D(objX, objY, objZ)
  local posGo = V3D(posGoX, posGoY, posGoZ)
  local posGo2D = V3D(posGoX, 0, posGoZ)
  local entPos2D = V3D(ent.Pos.x, 0, ent.Pos.z)
  local dist = (posGo2D - entPos2D):mod()
  if dist > Game.Get("MarginPosTestJumpCharAI") then
    Game.AddScheduledFunc(Game.GetTime() + 0.25, "ControlOrientJump", "AIGen.ControlOrientJump", name, posGoX, posGoY, posGoZ, obj.x, obj.y, obj.z, factorTempDist)
    return
  end
  local angEnt = ent.ViewAng
  local vect = V3D(0, 0, -1):rot(angEnt)
  local orient = obj - ent.Pos
  local ang = orient:angle(vect)
  if 45 < ang then
    Game.AddScheduledFunc(Game.GetTime() + 0.25, "ControlOrientJump", "AIGen.ControlOrientJump", name, posGoX, posGoY, posGoZ, obj.x, obj.y, obj.z, factorTempDist)
  else
    AI.SetStateChar(GO_TO_CHAR, name, ent.Pos.x, ent.Pos.y, ent.Pos.z, obj.x, obj.y, obj.z, 1000, 0, 0)
    AIGen.JumpPos(name, obj, factorTempDist)
    Game.AddScheduledFunc(Game.GetTime() + 0.25, "ControlJumpFinish", "AIGen.ControlJumpFinish", name)
  end
end

function AIGen.ControlJumpFinish(name)
  local ent = Game.GetEntity(name)
  if ent.isFalling == 0 then
    ent.AI_UseLabelPath = 1
    AI.RestoreStateAuxChar(name)
  else
    Game.AddScheduledFunc(Game.GetTime() + 0.25, "ControlJumpFinish", "AIGen.ControlJumpFinish", name)
  end
end

function AIGen.MakeChar(name, typeChar, nameBehav)
  local player = Game.GetEntity(Game.GetEntity(Game.GetCam(0)).Target)
  local offsetPos = V3D(0, 0, -1)
  offsetPos = offsetPos:rot(player.Ang)
  local offsetPosNorm = offsetPos:norm()
  offsetPos = offsetPosNorm * V3D(300, 300, 300)
  local entPos = player.Pos + offsetPos
  local ent = Game.CreateEntity(name, "WalkChar", entPos)
  ent.ActCtrl = typeChar
  ent.TgType = "Red"
  AI.EnableAIChar(ent.Name, 1, nameBehav)
end

function AIGen.InvulMetaTeam(metaTeam, inv)
  local team, memb = AITeamList.FirstMembMetaTeam(metaTeam)
  while team ~= nil and memb ~= nil do
    local e = memb.oEnt
    if AIEntitySpec.IsEnable(e) then
      if inv then
        e.Invulnerable = 1
      else
        e.Invulnerable = 0
      end
    end
    team, memb = AITeamList.NextMembMetaTeam(metaTeam, team, memb)
  end
end

function AIGen.InvPly()
  local ply = Game.UsrEntity(0)
  ply.Invulnerable = 1
end

function AIGen.DebugLine(p1x, p1y, p1z, p2x, p2y, p2z, time)
  if DebugLineAI then
    DebugLineAI.TimeToDel = Game.GetTime()
  end
  time = defparam(time, 100000)
  local p1 = V3D(p1x, p1y, p1z)
  local p2 = V3D(p2x, p2y, p2z)
  DebugLineAI = DebugDraw.NewPrimitive("Line3D")
  DebugLineAI.TimeToDel = Game.GetTime() + time
  DebugLineAI.Point0 = p1
  DebugLineAI.Point1 = p2
end

function AIGen.DebugSphere(p1x, p1y, p1z, rad, time)
  if DebugSphereAI then
    DebugSphereAI.TimeToDel = Game.GetTime()
  end
  time = defparam(time, 100000)
  DebugSphereAI = DebugDraw.NewPrimitive("Sphere")
  DebugSphereAI.Pos = V3D(p1x, p1y, p1z)
  DebugSphereAI.Radius = rad
  DebugSphereAI.TimeToDel = Game.GetTime() + time
end

function AIGen.CreateAllGraphs(levelname)
  AI.LogGraphs([[

----------------------------------------------------------------------------------------------]])
  AI.LogGraphs("CREACION GRAFOS NIVEL " .. levelname)
  local g2D = AI.GetGraph2D()
  local g3D = AI.GetGraph3D()
  if not g2D then
    AI.LogGraphsError("ERROR CREACION GRAFOS: Gestor grafo 2D no existe.")
    return
  end
  if not g3D then
    AI.LogGraphsError("ERROR CREACION GRAFOS: Gestor grafo 3D no existe.")
    return
  end
  if Game.FileExist("Levels/" .. levelname .. "/Scripts/MapAISeeds.lua") then
    Game.PreloadLibrary("Levels/" .. levelname .. "/Scripts/MapAISeeds.lua", "MapAISeeds")
  end
  if not MapAISeeds then
    AI.LogGraphs("NO EXISTEN GRAFOS EN NIVEL " .. levelname, 0, 0, 255)
    return
  end
  for j in pairs(MapAISeeds.SemillasLeidas) do
    local o = MapAISeeds.SemillasLeidas[j]
    local infoGraph = {
      TableEnem = {}
    }
    for t in pairs(o) do
      if o[t][1] == "Name_Deleted" then
        infoGraph.Deleted = true
        infoGraph.Name = o[t][2]
        local nameSplit = Game.Split(infoGraph.Name, "_")
        infoGraph.Id = tonumber(nameSplit[2])
      end
      if o[t][1] == "Pos" then
        infoGraph.Pos = o[t][2]
      end
      if o[t][1] == "Name" then
        infoGraph.Name = o[t][2]
        local nameSplit = Game.Split(infoGraph.Name, "_")
        infoGraph.Id = tonumber(nameSplit[2])
      end
      if o[t][1] == "b2D3D" then
        if o[t][2] == "true" then
          infoGraph.b2D3D = true
        else
          infoGraph.b2D3D = false
        end
      end
      if o[t][1] == "onRun" then
        infoGraph.OnRun = o[t][2]
      end
      if string.find(o[t][1], "Enemy") and o[t][2] ~= "" then
        table.insert(infoGraph.TableEnem, o[t][2])
      end
      if o[t][1] == "Box" then
        infoGraph.Box = o[t][2]
      end
      if o[t][1] == "Size" then
        infoGraph.Size = o[t][2]
      end
      if o[t][1] == "resolution" then
        infoGraph.Res = tonumber(o[t][2])
      end
    end
    if infoGraph.Res > 50 and not infoGraph.b2D3D then
      infoGraph.Res = 50
    end
    infoGraph.Enable = true
    AIGen.SetInfoCreateGraph(infoGraph)
  end
  g2D:CreateAllGraphs()
  g3D:CreateAllGraphs()
end

function AIGen.AnalyzeAllGraphs(levelname)
  AI.LogGraphs([[

----------------------------------------------------------------------------------------------]])
  AI.LogGraphs("ANALISIS GRAFOS NIVEL " .. levelname)
  AISpec.ValidateMap()
end

function AIGen.SetInfoCreateGraph(infoGraph)
  if infoGraph.Deleted then
    AI.LogGraphs("GRAFO BORRADO: " .. infoGraph.Name)
    return
  end
  if not infoGraph or not infoGraph.Name then
    AI.LogGraphsError("ERROR FORMATO INF. SEMILLA GRAFO")
    return
  end
  if not (infoGraph.Id and infoGraph.Pos and infoGraph.OnRun and infoGraph.b2D3D ~= nil and infoGraph.Box) or not infoGraph.Size then
    AI.LogGraphs("GRAFO NO CALCULADO. SEMILLA FALTA INF.: " .. infoGraph.Name, 0, 0, 255)
    return
  end
  if 0 >= #infoGraph.TableEnem then
    AI.LogGraphs("INFO. GRAFO " .. infoGraph.Name .. " NO CONTIENE ENEMIGOS ASOCIADOS", 0, 0, 255)
    return
  end
  local graphManager
  if infoGraph.b2D3D then
    graphManager = AI.GetGraph3D()
  else
    graphManager = AI.GetGraph2D()
  end
  if not graphManager then
    AI.LogGraphsError("ERROR MissionMaker.CreateGraph: Gestor grafo no existe.")
    return
  end
  infoGraph.PMinReg = infoGraph.Box - infoGraph.Size
  infoGraph.PMaxReg = infoGraph.Box + infoGraph.Size
  graphManager:SetInfoCreate(infoGraph.Id, infoGraph.Enable, infoGraph.Pos.x, infoGraph.Pos.y, infoGraph.Pos.z, infoGraph.Res, infoGraph.OnRun, infoGraph.PMinReg.x, infoGraph.PMinReg.y, infoGraph.PMinReg.z, infoGraph.PMaxReg.x, infoGraph.PMaxReg.y, infoGraph.PMaxReg.z)
  AI.LogGraphs("INF. SEMILLA " .. infoGraph.Name)
  local msg
  if infoGraph.b2D3D then
    msg = "GRAFO 3D"
  else
    msg = "GRAFO 2D"
  end
  msg = msg .. " RES: " .. infoGraph.Res .. " SCRIPT: " .. infoGraph.OnRun .. " POS: " .. infoGraph.Pos.x .. infoGraph.Pos.y .. infoGraph.Pos.z
  AI.LogGraphs("ENTIDADES CREACION:")
  for t in pairs(infoGraph.TableEnem) do
    graphManager:PushInfoCreateEnt(infoGraph.Id, infoGraph.TableEnem[t])
    AI.LogGraphs(infoGraph.TableEnem[t])
  end
end

function AIGen.DisableBreakableObjCol()
  local currentEnt = Game.GetFirst()
  while currentEnt ~= nil do
    if currentEnt:IsType("PxBodyPhysics") and currentEnt:IsBreakable() then
      print("Deshabilitando colision de " .. currentEnt.Name .. "")
      currentEnt:ResetMapCollision(false, false, false)
    end
    currentEnt = Game.GetEntity(currentEnt.NextInSlot)
  end
end
