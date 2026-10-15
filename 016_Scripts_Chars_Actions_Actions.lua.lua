Actions.PlayerInCatch = Game.GVar("PlayerInCatch")
Actions.PlayerInCatch.Value = 0

function Actions.main()
end

function Actions.UnpackTrack(item, params)
  local ret = {}
  for i, n in pairs(params) do
    ret[n] = ""
  end
  if item and item.Info then
    ret = parseToTable(item.Info, params, ",")
  end
  return ret
end

function Actions.SwitchSyncTgtActions(masterEnt, Track, Frame, lSeg, nSeg)
  local lsegInfo = Actions.UnpackTrack(lSeg, {
    "node",
    "first",
    "rootStrOverride",
    "SlaveOrientation"
  })
  local nsegInfo = Actions.UnpackTrack(nSeg, {
    "node",
    "first",
    "rootStrOverride",
    "SlaveOrientation"
  })
  local trackInfo = Actions.UnpackTrack(Track, {
    "interpolation",
    "rootStr",
    "isolate",
    "controlTarget",
    "syncPrefix"
  })
  local slaveEnt = masterEnt.oActCtrl.oSync
  if nsegInfo.first == "1" then
    slaveEnt = Game.GetEntity(masterEnt.TgtEntity)
  end
  if masterEnt.uData.Mount and trackInfo.controlTarget == "End" then
    slaveEnt = Game.GetEntity(masterEnt.uData.Mount)
  end
  local rootEnt = masterEnt
  local leafEnt = slaveEnt
  local rootStr
  if nsegInfo then
    rootStr = nsegInfo.rootStrOverride
  end
  if not rootStr or rootStr == "" then
    rootStr = trackInfo.rootStr
  end
  if rootStr == "My target" then
    local temp = leafEnt
    leafEnt = masterEnt
    rootEnt = slaveEnt
  end
  if not lSeg then
    Game.Log("ENTRANDO AL TRACK\n", 2)
    if (masterEnt == player or slaveEnt == player) and not player.uData.TempWallCollisionMask then
      player.uData.TempWallCollisionMask = player.WallCollisionMask
      player.WallCollisionMask = player.WallCollisionMask + 64 + 128
    end
    if slaveEnt and slaveEnt.Life <= 0 and nsegInfo.first == "1" then
      masterEnt.ForceAction = "WhipRelax"
      return
    end
    Actions.BeginIsolation(masterEnt, slaveEnt)
    if masterEnt and masterEnt.UsrControl ~= -1 or slaveEnt and slaveEnt.UsrControl ~= -1 then
      Actions.PlayerInCatch.Value = 1
    end
  end
  if not nSeg then
    Game.Log("SALIENDO DEL TRACK\n", 2)
    if (masterEnt == player or slaveEnt == player) and player.uData.TempWallCollisionMask then
      player.WallCollisionMask = player.uData.TempWallCollisionMask
      player.uData.TempWallCollisionMask = nil
    end
    Actions.EndIsolation(masterEnt, slaveEnt)
    if masterEnt and masterEnt.UsrControl ~= -1 or slaveEnt and slaveEnt.UsrControl ~= -1 then
      Actions.PlayerInCatch.Value = 0
    end
    delSF(masterEnt.Name .. "_UpdateLogicPos")
  end
  if not lSeg and trackInfo.controlTarget == "End" then
    slaveEnt.OnObjSlot = ""
  end
  if trackInfo.syncPrefix and slaveEnt then
    slaveEnt.oActCtrl.SyncPrefix = trackInfo.syncPrefix
  end
  if masterEnt.uData.Mount and not nSeg and trackInfo.controlTarget == "End" then
    Actions.EndControl(slaveEnt.Name)
  end
  if nsegInfo.first == "1" then
    if not slaveEnt then
      Game.ConsoleError("Trying to syncronize actions with target, but target is nil.\n")
    else
      if slaveEnt.oActCtrl.oSync == masterEnt then
        slaveEnt.oActCtrl.oSync = nil
      end
      masterEnt.oActCtrl.oSync = slaveEnt
      slaveEnt.ForceAction = masterEnt.Action
      slaveEnt.oActCtrl:IncActionTime(0, masterEnt.oActCtrl.AnimTime)
      local slaveOrient = nsegInfo.SlaveOrientation == nil or tonumber(nsegInfo.SlaveOrientation) == 1
      if trackInfo.controlTarget ~= "End" and slaveOrient then
        slaveEnt:MoveMePosAng(2, 0.3, slaveEnt.Pos, V3D(0, (slaveEnt.Pos - masterEnt.Pos):getrot().y, 0))
      end
    end
  end
  if nsegInfo.node == "Face2Face" and not Game.ExistsScheduledFunc(masterEnt.Name .. "_SyncSlot") then
    addSF(0.3, masterEnt.Name .. "_SyncSlot", "Actions.SyncSlot", masterEnt.Name)
  end
  if not nSeg or nsegInfo.node ~= "Face2Face" then
    delSF(masterEnt.Name .. "_SyncSlot")
  end
  if not nSeg then
    masterEnt.oActCtrl.oSync = nil
  end
  if leafEnt then
    if lSeg and lsegInfo.node ~= nsegInfo.node and (nSeg or trackInfo.controlTarget ~= "Begin") then
      if lsegInfo.node ~= "" and lsegInfo.node ~= "None" and lsegInfo.node ~= "Whip" and lsegInfo.node ~= "Face2Face" then
        if rootEnt.LinkedNode ~= "" then
          Actions.UnLink(rootEnt, leafEnt, lsegInfo.node, trackInfo.interpolation + 0)
        else
          Actions.UnLink(leafEnt, rootEnt, lsegInfo.node, trackInfo.interpolation + 0)
        end
        delSF(masterEnt.Name .. "_UpdateLogicPos")
      elseif lsegInfo.node == "Whip" then
        rootEnt.oWhip.oTarget = nil
        rootEnt.oWhip.oAttached = nil
      end
    end
    if nSeg and lsegInfo.node ~= nsegInfo.node then
      if nsegInfo.node ~= "" and nsegInfo.node ~= "None" and nsegInfo.node ~= "Whip" and nsegInfo.node ~= "Face2Face" then
        Actions.LinkToNode(leafEnt, rootEnt, nsegInfo.node, trackInfo.interpolation + 0)
        delSF(masterEnt.Name .. "_UpdateLogicPos")
        addSF(0.1, masterEnt.Name .. "_UpdateLogicPos", "Actions.UpdateLogicPos", masterEnt.Name, leafEnt.Name, rootEnt.Name)
      elseif nsegInfo.node == "Whip" then
        rootEnt.oWhip.oTarget = nil
        rootEnt.oWhip.oAttached = leafEnt
        if leafEnt:IsType("WalkChar") then
          leafEnt.GhostTime = leafEnt.oActCtrl.oAction.AnmTotalTime
        end
      end
    end
  end
  if not nSeg and trackInfo.controlTarget == "Begin" then
    Actions.BeginControl(slaveEnt.Name)
  end
end

function Actions.CreateAndSetMount(className, groupName)
  local mount = NPC.CreateWithAI(className, player.Pos.x, player.Pos.y, player.Pos.z, groupName)
  local isCol, colPos = Game.WorldLineTest(player.Pos + V3D(0, 300, 0), player.Pos + V3D(0, -300, 0), player.Name, player.WorldCollisionMask + player.WallCollisionMask)
  mount.Pos = colPos + V3D(0, mount.FloorDist, 0)
  mount.Ang = player.Ang
  mount.bActive = true
  Actions.SetMount(mount.Name)
end

function Actions.SetMount(MountName, SyncPrefix)
  local mountEnt = Game.GetEntity(MountName)
  player.TgtEntity = MountName
  if SyncPrefix and mountEnt then
    mountEnt.oActCtrl.SyncPrefix = SyncPrefix
  end
  if mountEnt.oActCtrl.oSync == mountEnt then
    mountEnt.oActCtrl.oSync = nil
  end
  mountEnt.oActCtrl.oSync = player
  if mountEnt.ActCtrl == "TrollBig" then
    player.oActCtrl:SetAction("WhipTbRideRelax", true, 0)
    mountEnt.oActCtrl:SetAction("WhipTbRideRelax", true, 0)
  elseif mountEnt.ActCtrl == "SpiderGiant" then
    player.oActCtrl:SetAction("WhipSgRideRelax", true, 0)
    mountEnt.oActCtrl:SetAction("WhipSgRideRelax", true, 0)
  elseif mountEnt.ActCtrl == "WargGreat" then
    player.oActCtrl:SetAction("WhipWgRideRelax", true, 0)
    mountEnt.oActCtrl:SetAction("WhipWgRideRelax", true, 0)
  else
    player.oActCtrl:SetAction("WhipWtRideRelax", true, 0)
    mountEnt.oActCtrl:SetAction("WhipWtRideRelax", true, 0)
  end
  player.oActCtrl:IncActionTime(0, mountEnt.oActCtrl.AnimTime)
  Actions.LinkToNode(player, mountEnt, "DC_Gabriel")
  delSF(mountEnt.Name .. "_UpdateLogicPos")
  addSF(0.1, mountEnt.Name .. "_UpdateLogicPos", "Actions.UpdateLogicPos", mountEnt.Name, player.Name, mountEnt.Name)
  Actions.BeginControl(mountEnt.Name, "SetMount")
end

function Actions.SyncSlot(EntityName)
  local ent = Game.GetEntity(EntityName)
  if ent then
    if ent.oActCtrl.oSync and ent.LinkedNode == "" and ent.oActCtrl.oSync.LinkedNode == "" then
      ent.Ang = V3D(0, ent.oActCtrl.oSync.Ang.y - 180, 0)
    end
    addSF(0.3, EntityName .. "_SyncSlot", "Actions.SyncSlot", EntityName)
  end
end

function Actions.UpdateLogicPos(MasterName, LeafName, RootName)
  local master = Game.GetEntity(MasterName)
  local leaf = Game.GetEntity(LeafName)
  local root = Game.GetEntity(RootName)
  if master and leaf and root then
    local syncEnt = master.oActCtrl.oSync
    if syncEnt then
      if leaf.LinkedNode ~= "" and leaf.OffMul >= 1 then
        leaf.Pos = root["NodePosHierarchy_" .. leaf.LinkedNode] - V3D(0, leaf.oActCtrl.oActClass.YModelDisp, 0)
      end
      addSF(0.1, MasterName .. "_UpdateLogicPos", "Actions.UpdateLogicPos", MasterName, LeafName, RootName)
    end
  end
end

function Actions.BeginIsolation(ent, tgt)
  if ent ~= nil then
    ent.Intangible = true
  end
  if tgt ~= nil then
    tgt.Intangible = true
    Game.Log("BeginIsolation of " .. tgt.Name .. "\n", 2)
  end
  if ent.oAI then
    AI.SetStateChar(0, ent.Name)
    ent.oAI.bEnable = false
  end
  if tgt and tgt.oAI then
    AI.SetStateChar(0, tgt.Name)
    tgt.oAI.bEnable = false
  end
  AISpec.StopAllAttackers()
end

function Actions.EndIsolation(ent, tgt)
  if tgt and tgt.oAI and tgt.oAI.MetaTeam == AISpecific.PlayerMetaTeamName then
    local tmp
    tmp = ent
    ent = tgt
    tgt = tmp
  end
  if tgt and tgt.oAI then
    if tgt.Life > 0 then
      tgt.oActCtrl.oAction.CanFly = 0
      tgt.oAI.bEnable = true
    end
    Game.Log("EndIsolation of " .. tgt.Name .. "\n", 2)
  end
  ent.Intangible = false
  if tgt then
    tgt.Intangible = false
  end
  AISpec.RestoreAllAttackers()
  if tgt and tgt.oAI and tgt.Life > 0 then
    tgt.oAI:OnWeirdState()
  end
end

function Actions.LinkToNode(leafEnt, rootEnt, nodeName, interp)
  Game.Log("Actions.LinkToNode\n", 1)
  if leafEnt.LinkedNode == "" then
    leafEnt.LinkModel = rootEnt.Name .. "," .. nodeName
    leafEnt.UseLinkPos = 1
    leafEnt.OffModPosAsPos = 0
    leafEnt.OffModPos = V3D(0, -leafEnt.oActCtrl.oActClass.YModelDisp, 0)
    if interp then
      leafEnt.DeltaOffMul = interp
    else
      leafEnt.DeltaOffMul = 0
      leafEnt.OffMul = 1
    end
    leafEnt.UseModelAlign = 1
    leafEnt.UseLinkAng = 1
    leafEnt.bMoveLogicToModel = true
    if leafEnt:IsType("WalkChar") then
      leafEnt.GhostTime = 999999
    end
  end
end

function Actions.UnLink(linkedEnt, e, nodeName, Interp)
  Game.Log("Actions.UnLink\n", 1)
  local dumyPos = e["NodePosHierarchy_" .. nodeName]
  linkedEnt.Ang = e.Ang + V3D(0, 180, 0)
  e.ViewAng = e.Ang
  e.DisplAng = 0
  linkedEnt.LinkModel = ","
  linkedEnt.UseLinkPos = 1
  linkedEnt.DeltaOffMul = -Interp
  linkedEnt.OffMul = 0
  local v3 = dumyPos - V3D(0, linkedEnt.oActCtrl.oActClass.YModelDisp, 0)
  local spherediff = linkedEnt.oActCtrl.oActClass.Radius - e.oActCtrl.oActClass.Radius
  local repospos
  if linkedEnt:IsType("WalkChar") then
    if e.oActCtrl.oActClass.Size == "giant" then
      repospos = v3
    else
      repospos = Game.SafeSlide(e.Pos + V3D(0, spherediff, 0), v3, linkedEnt.oActCtrl.oActClass.Radius, linkedEnt.WorldCollisionMask)
    end
    linkedEnt:TeleportTo(repospos.x, repospos.y, repospos.z)
  else
    linkedEnt.Pos = v3
  end
  linkedEnt.GhostTime = 0.01
end

Actions.MountObjects = {}

function Actions.AddMountObjects(ClassName, obj)
  if Actions.MountObjects[ClassName] == nil then
    Actions.MountObjects[ClassName] = {}
  end
  local a = Actions.MountObjects[ClassName]
  a[1 + #a] = obj
end

function Actions.ActivateMountObject(ClassName, obj)
  obj.bArrowCanUse = true
  Actions.AddMountObjects(ClassName, obj)
end

function Actions.SwitchMountObjects(ent, value)
  local ClassName = ent.oActCtrl.oActClass.Name
  local a = Actions.MountObjects[ClassName]
  if a then
    for i = 1, #a do
      if value then
        a[i].Selected = 3
        if a[i].uData.MountRed then
          a[i].uData.MountPrevType = a[i].TgType
          a[i].TgType = "red"
          a[i].AimScoreBonus = 2000
        end
      else
        if a[i].bArrowCanUse then
          a[i].Selected = 1
        else
          a[i].Selected = 0
        end
        if a[i].uData.MountRed then
          a[i].TgType = a[i].uData.MountPrevType
          a[i].AimScoreBonus = 0
        end
      end
    end
  end
end

function Actions.DeactivateMountObject(ent, obj)
  local ClassName = ent.oActCtrl.oActClass.Name
  Actions.DeactivateMountObjectClass(ClassName, obj)
end

function Actions.DeactivateMountObjectClass(ClassName, obj)
  obj.Selected = 0
  obj.bArrowCanUse = false
  if Actions.MountObjects[ClassName] == nil then
    Game.ConsoleError("Actions.DeactivateMountObjectClass( '" .. ClassName .. [[
')
 Class do not exist
]])
    return
  end
  for index, o in pairs(Actions.MountObjects[ClassName]) do
    if o.Name == obj.Name then
      table.remove(Actions.MountObjects[ClassName], index)
      Game.Log("removing " .. o.Name .. "\n", 1)
    end
  end
end

function Actions.CheckMountInfoText(ent)
  if ent.oAutoSelectedEntity and ent.oAutoSelectedEntity.uData.MountInfoText then
    local miText = ent.oAutoSelectedEntity.uData.MountInfoText
    if type(miText) == "string" then
      Scorer.SetMsgText(Game.GetLangStr(miText), Game.GetTime() + 5)
    elseif miText[ent.oActCtrl.oActClass.Name] then
      Scorer.SetMsgText(Game.GetLangStr(miText[ent.oActCtrl.oActClass.Name]), Game.GetTime() + 5)
    end
  end
end

function Actions.BeginControl(EntityName, EventName, Time)
  local e = Game.GetEntity(EntityName)
  local rider = player
  rider.uData.Mount = e.Name
  Game.Log("BeginControl\n", 1)
  e:SetCollisionEnvironment(true, true, false)
  if e.oAI then
    AI.SetStateChar(0, e.Name)
    e.oAI.bEnable = false
    e.oAI:OnMountedByPlayer()
  end
  if rider.oActCtrl.oSync == e then
    rider.oActCtrl.oSync = nil
  end
  e.oActCtrl.oSync = rider
  rider.ForceAction = e.oActCtrl.SyncPrefix .. e.Action
  rider.Intangible = true
  AISpec.SetEntityMountedByPlayer(e)
  AISpec.RestoreAllAttackers()
  e.uData.Rider = rider.Name
  Actions.control(EntityName)
  if e.oActCtrl.oActClass.Name == "TrollBig" or e.oActCtrl.oActClass.Name == "TrollBigSwamp" then
    e.ExtraSufix = "WhipTbRide"
  elseif e.oActCtrl.oActClass.Name == "WargGreat" then
    e.ExtraSufix = "WhipWgRide"
  elseif e.oActCtrl.oActClass.Name == "SpiderGiant" then
    e.ExtraSufix = "WhipSgRide"
  elseif e.oActCtrl.oActClass.Name == "Warthog" then
    e.ExtraSufix = "WhipWtRide"
  end
  e.OnObjSlot = "Actions.RideSlot"
  e.TgType = "green"
  Actions.SwitchMountObjects(e, true)
  local el = Game.GetEntityList(e.EntityList)
  if el then
    el:CallOnMount(e.Name)
  end
  Game.SetSaveVar("MountGroup", e.EntityList)
  Game.SetSaveVar("MountClass", e.ActCtrl)
  if not EventName or EventName ~= "SetMount" then
    Experience.OnDead(e)
  end
end

function Actions.control(entname)
  local cam, usr, ent
  cam = Game.GetEntity(Game.GetCam(0))
  usr = Game.GetEntity(cam.MainTarget)
  ent = Game.GetEntity(entname)
  ent.UsrControl = 0
  cam.MainTarget = ent.Name
  cam.Target = ent.Name
  usr.UsrControl = -1
end

function Actions.EndControl(EntityName, EventName, Time)
  local e = Game.GetEntity(EntityName)
  local rider = Game.GetEntity(e.uData.Rider)
  rider.uData.Mount = nil
  NPC.control(e.uData.Rider)
  e.ViewAng = e.Ang
  e.ExtraSufix = ""
  e.oActCtrl.oSync = nil
  rider.ForceDefLoop = "Relax"
  rider.Intangible = false
  e.uData.Rider = false
  e.OnObjSlot = ""
  e.TgType = "red"
  Actions.SwitchMountObjects(e, false)
  local el = Game.GetEntityList(e.EntityList)
  if el then
    el:CallOnUnmount(e.Name)
  end
  Game.DelSaveVars("MountGroup")
  Game.DelSaveVars("MountClass")
end

function Actions.RideSlot(EntityName, Time)
  local e = Game.GetEntity(EntityName)
  local rider = Game.GetEntity(e.uData.Rider)
  rider.GhostTime = 1
  rider.JustPos = e.Pos
  rider.Vel = V3D(0, 0, 0)
end

function Actions.HookOn(EntityName)
  local e = Game.GetEntity(EntityName)
  if e.uData.DefaultActiveHook then
    Hook.InitEnemyHook(e, e.uData.DefaultActiveHook)
  else
    if e.oActCtrl.oActClass.uData.HookInfo == nil then
      Game.ConsoleError("Actions.HookOn('" .. EntityName .. [[
')
 ActClass(]] .. e.oActCtrl.oActClass.Name .. ") has not uData.HookInfo\n")
    end
    Hook.InitEnemyHook(e, e.oActCtrl.oActClass.uData.HookInfo.Active)
  end
end

function Actions.HookOff(EntityName)
  local e = Game.GetEntity(EntityName)
  if e.oActCtrl.oActClass.uData.HookInfo then
    Hook.InitEnemyHook(e, e.oActCtrl.oActClass.uData.HookInfo.Default)
  end
end

function Actions.OnBossCrazySwitch(EntityName, crazy, iCrazyMode)
  local ent = Game.GetEntity(EntityName)
  if not ent then
    return
  end
  if crazy == 1 then
    if iCrazyMode == 0 then
      ent.uData.SuperBlock = true
    end
  else
    ent.uData.SuperBlock = false
  end
  Actions.OnCrazySwitch(EntityName, crazy, iCrazyMode)
end

function Actions.OnCrazySwitch(EntityName, crazy, iCrazyMode)
  if crazy == 1 then
    if iCrazyMode == 0 then
      Actions.HookOn(EntityName)
    end
    FXDamage.StartCrazyFX(EntityName, iCrazyMode)
  else
    Actions.HookOff(EntityName)
    FXDamage.StopCrazyFX(EntityName)
  end
end

function Actions.Passthrough(EntityName, EventName, Time)
  local e = Game.GetFirst()
  while e ~= nil do
    if e:IsType("WalkChar") and e.ActCtrl == "TrollSmall" then
      e.GhostTime = EventName + 0
    end
    if e.NextInSlot == "" then
      break
    end
    e = Game.GetEntity(e.NextInSlot)
  end
end

function Actions.GhostTime(EntityName, EventName, Time)
  local e = Game.GetEntity(EntityName)
  if e then
    e.GhostTime = EventName + 0
  end
end

function Actions.CancelCrazy(EntityName)
  Actions.OnCrazySwitch(EntityName, 0, 0)
end

function Actions.SimulateFirstProperty(masterEnt, slaveEnt)
  if slaveEnt.oActCtrl.oSync == masterEnt then
    slaveEnt.oActCtrl.oSync = nil
  end
  masterEnt.oActCtrl.oSync = slaveEnt
  slaveEnt.ForceAction = masterEnt.Action
  slaveEnt.oActCtrl:IncActionTime(0, masterEnt.oActCtrl.AnimTime)
  slaveEnt:MoveMePosAng(2, 0.3, slaveEnt.Pos, V3D(0, (slaveEnt.Pos - masterEnt.Pos):getrot().y, 0))
end

function Actions.CheckTargetReachable(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local tgt = Game.GetEntity(ent.TgtEntity)
  if tgt then
    local spherediff = ent.oActCtrl.oActClass.Radius - tgt.oActCtrl.oActClass.Radius
    local to = tgt.Pos + V3D(0, spherediff, 0)
    local safePos = Game.SafeSlide(ent.Pos, tgt.Pos + V3D(0, spherediff, 0), ent.oActCtrl.oActClass.Radius)
    tgt.Pos = safePos - V3D(0, spherediff, 0)
  end
end

function Actions.CreateSyncBlockWindow(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local windowTime = tonumber(EventName)
  if ent.oAI then
    ent.oAI:CreateSyncBlockWindow(windowTime)
  end
end

Actions.BossLifeEventRestoreParam = nil
Actions.BossLifeEventLifePerc = nil
Actions.BossLifeEventSpeed = nil

function Actions.BossLifeEvent(restoreParam, lifePerc, speed)
  Actions.BossLifeEventRestoreParam = restoreParam
  Actions.BossLifeEventLifePerc = lifePerc
  Actions.BossLifeEventSpeed = speed
  local si = Scorer.GetItem(0, "LifeBar")
  if si == nil then
    si = Scorer.NewItem(0, "LifeBar", "LifeBar")
  end
  if 0 < lifePerc then
    local ent = Game.GetEntity(Game.Get("ScorerBossName"))
    if Scene.IsPlaying then
      si.HideAllButBossBar = 1
      si.PrevBossLife = ent.Life
      si.LastBossLife = ent.Life
      Game.Set("ScorerBossBarMovement", 0)
      Menu.OnScorerCreatedCallback = Actions.OnScorerCallbackBossLifeEvent
    end
    if ent then
      local param
      if AISpec.IsBehavParamDefined(ent.oActCtrl.oActClass.Name, restoreParam) then
        param = AISpec.GetBehavParamValue(ent.oActCtrl.oActClass.Name, restoreParam)
      end
      if param == nil then
        if ent.oAI[restoreParam] ~= nil then
          param = ent.oAI[restoreParam] * 0.01
        else
          param = 1
        end
      else
        param = param * 0.01
      end
      local wasInvulnerable = ent.Invulnerable
      ent.Invulnerable = 0
      local newLife = ent.oActCtrl.oActClass.Life * param * lifePerc
      if ent.oActCtrl.oActClass.Name == "WargGreat" then
        if newLife > ent.Life then
          ent.Life = newLife
        end
      else
        ent.Life = newLife
      end
      ent.Invulnerable = wasInvulnerable
    end
    Game.Set("ScorerBossRegenerationTime", speed)
  end
end

function Actions.BossLifeEventStart(EntityName, EventName, Time)
  local params = Game.Split(EventName, ",")
  local restoreParam = params[1]
  local lifePerc = tonumber(params[2])
  local speed = tonumber(params[3])
  if 1 < lifePerc then
    lifePerc = 1
  elseif lifePerc < 0 then
    lifePerc = 0
  end
  Actions.BossLifeEvent(restoreParam, lifePerc, speed)
end

function Actions.BossLifeEventEnd(EntityName, EventName, Time)
  Game.ConsoleError("End de evento de vida\n")
  Menu.OnScorerCreatedCallback = nil
  Game.Set("ScorerBossRegenerationTime", Game.Def("ScorerBossRegenerationTime"))
end

function Actions.OnScorerCallbackBossLifeEvent()
  Actions.BossLifeEvent(Actions.BossLifeEventRestoreParam, Actions.BossLifeEventLifePerc, Actions.BossLifeEventSpeed)
end

function Actions.EventForceAttack(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  if ent and ent.oAI then
    ent.oAI:ForceOrderToAttack()
  end
end

function Actions.MountAddChargeAnm(ac, Prefix)
  MakeChar.CreateInitLoopEnd(ac, 0, Prefix .. "Charge", 1)
  ac:GetAct(Prefix .. "ChargeEnd").PriorityLevel = 0
  ac:GetAct(Prefix .. "ChargeInit").TakeItems = 1
  ac:GetAct(Prefix .. "Charge").TakeItems = 1
  MakeChar.MakeEvent(ac, Prefix .. "ChargeInit", Prefix .. "Charge", "!AnmSetAction")
  ac.TakeSpecialPress = "Actions.MountTakeSpecialLightPress"
  ac.TakeSpecialRelease = "Actions.MountTakeSpecialLightRelease"
  ac.TakeSpecialPressPlus = "Actions.MountTakeSpecialDarkPress"
  ac.TakeSpecialReleasePlus = "Actions.MountTakeSpecialDarkRelease"
end

function Actions.MountTakeSpecialLightPress(Name)
  if LightPower.PowerOn.Value then
    Actions.MountTakeSpecialPress(Name)
  end
end

function Actions.MountTakeSpecialDarkPress(Name)
  if DarkPower.PowerOn.Value then
    Actions.MountTakeSpecialPress(Name)
  end
end

function Actions.MountTakeSpecialLightRelease(Name)
  Actions.MountTakeSpecialRelease(Name)
end

function Actions.MountTakeSpecialDarkRelease(Name)
  Actions.MountTakeSpecialRelease(Name)
end

function Actions.MountTakeSpecialPress(Name)
  local ent = Game.GetEntity(Name)
  if string.sub(ent.Action, 1, 10) ~= ent.ExtraSufix .. "Charge" then
    if ent.bIsFalling or ent.bEquilibriumMode then
      ent.owc:ResetTakeSpecial()
    else
      local act = ent.oActCtrl.oActClass:GetAct(ent.ExtraSufix .. "ChargeInit")
      act.MinSpeed = SkillSettings[init.GameSkill.Value].Absorb
      act.MinSpeed = act.MinSpeed
      ent.Action = ent.ExtraSufix .. "ChargeInit"
      if ent.Action ~= ent.ExtraSufix .. "ChargeInit" then
        ent.owc:ResetTakeSpecial()
      end
    end
  elseif ent.Action == ent.ExtraSufix .. "ChargeEnd" then
    ent.owc:ResetTakeSpecial()
  end
end

function Actions.MountTakeSpecialRelease(Name)
  local ent = Game.GetEntity(Name)
  if (ent.owc.TakeSpecial == 0 or not LightPower.PowerOn.Value) and (ent.owc.TakeSpecialPlus == 0 or not DarkPower.PowerOn.Value) and string.sub(ent.Action, string.len(ent.ExtraSufix) + 1, string.len(ent.ExtraSufix) + 6) == "Charge" then
    ent.ForceAction = ent.ExtraSufix .. "ChargeEnd"
  end
end
