function MissionUtils.Preload()
  Sound.LoadSound("Sounds/Generic/Objects/Rumble_Cam.wav")
end

function MissionUtils.main()
  MissionUtils.Preload()
end

function MissionUtils.RemoveInterp(Object)
  if Object and Object.uData.modif and Object.uData.modif.bValidBaseType then
    Object.uData.modif.bDelete = true
  end
end

function MissionUtils.DoInterpTgt(Object, Params, OnEnd)
  if Object ~= nil then
    MissionUtils.RemoveInterp(Object)
    local tgt = {}
    for i in pairs(Params) do
      if type(i) == "string" then
        if type(Params[i]) == "string" then
          Object[i] = Params[i]
        else
          tgt[#tgt + 1] = {
            i,
            Params[i]
          }
        end
      end
    end
    local modif = Game.ValueModifier():New()
    if Params[1] then
      modif.FinalTime = Params[1]
    end
    if Params[2] then
      modif.FactorStack = Params[2]
    end
    modif.oValues.n = #tgt
    for i = 1, #tgt do
      modif.oValues[i]:SetValue(Object, tgt[i][1])
      modif.oValues[i].Final = tgt[i][2]
    end
    if OnEnd then
      modif.OnEnd = OnEnd
    end
    Object.uData.modif = modif
  end
end

MissionUtils.BreakableBlocks = {}

function MissionUtils.BreakBlock(Name, time, delay)
  local o = Game.GetEntity(Name)
  local actime = Game.GetTime() + time
  Game.AddScheduledFunc(actime, "BreakBlock", "MissionUtils.BreakBlockAdvert", Name, delay)
  Game.AddScheduledFunc(actime + delay, "BreakBlock", "MissionUtils.BreakBlockNow", Name)
  Game.AddScheduledFunc(actime + delay + 4, "BreakBlock", "MissionUtils.DeactivateBlockNow", Name)
  local caller = Game.Split(Game.Get("CalledFromTrigger"), ",")
  if #caller == 3 then
    o.uData.Caller = caller
  end
  MissionUtils.BlockBroke[#MissionUtils.BlockBroke + 1] = o
end

function MissionUtils.BreakBlockAdvert(Name, delay)
  local o = Game.GetEntity(Name)
  Weapons.QuakeFX(nil, 1, delay)
  local volume = 1
  local attIni = 500
  local attEnd = 5000
  Sound.PlaySound(o.Pos, "Rumble_Cam", volume, attIni, attEnd)
  ObjFX.FXBreakBlockAdvert(o)
end

function MissionUtils.BreakBlockNow(Name)
  local o = Game.GetEntity(Name)
  o.oActCtrl:ContinuePlaying()
  local c_pos, c_norm, c_ent
  c_pos, c_norm, c_ent = Game.TestLine(player.Pos, player.Pos + V3D(0, 0, -300):rot(V3D(0, player.Ang.y, 0)), "", player.Name, 1, 0)
  if c_ent and type(c_ent) == "userdata" and c_ent.Name == o.Name then
    player.ForceAction = "WhipFallHit"
    player.ForceDefLoop = "WhipFallHit"
    player.isFalling = 1
    player.TimeToCheckClimb = 5
  end
  o.bMapCollision = false
  Tips.SetTimestamp("BreakBlock")
  ObjFX.FXBreakBlockNow(o)
end

MissionUtils.BlockBroke = {}

function MissionUtils.DeactivateBlockNow(Name)
  local o = Game.GetEntity(Name)
  o.bActive = false
end

function MissionUtils.RestoreBlocks()
  Game.DeleteScheduledFuncs("BreakBlock")
  for i = 1, #MissionUtils.BlockBroke do
    local o = MissionUtils.BlockBroke[i]
    o.oActCtrl:Pause()
    o.oActCtrl:ResetPrimaryAction()
    o.bMapCollision = true
    o.bActive = true
    if o.uData.Caller then
      local caller = o.uData.Caller
      Game.GetEntity(caller[2])[caller[1]] = caller[3]
    end
    if o and _G[o.ActCtrl] and _G[o.ActCtrl].FXRestore then
      _G[o.ActCtrl].FXRestore(o.Name)
    end
  end
  MissionUtils.BlockBroke = {}
end

function MissionUtils.CreateBlocker(obj)
  local pmesh = string.sub(obj.Mesh, 1, #obj.Mesh - 4)
  return MissionUtils.CreateBlockerByMeshName(pmesh, obj.Name, obj.Pos, obj.Ang)
end

function MissionUtils.CreateBlockerByMeshName(pmesh, objName, pos, ang)
  local MeshName = "Models/Physics/" .. pmesh .. "/" .. pmesh .. "_Bloqueador."
  local blocker = Game.CreateEntity(objName .. "_Bloqueador", "Obj", pos)
  blocker.Mesh = MeshName .. "m3d"
  blocker.Ang = ang
  blocker.CollisionGroupName = "PLAYER"
  blocker:ResetMapCollision(true, false, false)
  return blocker
end

function MissionUtils.InterpToEntityUseDummy(srcEntity, dstEntity, interpMode, interpTime)
  srcEntity:MoveMePosAng(interpMode, interpTime, dstEntity.NodePosHierarchy_DC_Use - V3D(0, srcEntity.JustYModelDisp, 0), dstEntity.NodeAngHierarchy_DC_Use)
end

function MissionUtils.WriteLuaElement(st, a)
  st:WriteBegin()
  for j = 1, #a do
    st:WriteString(a[j][1])
    local v = a[j][2]
    local t = type(v)
    if t == "string" then
      st:WriteString(v)
    elseif t == "number" then
      if v % 1 == 0 then
        st:WriteInteger(v)
      else
        st:WriteFloat(v)
      end
    elseif t == "boolean" then
      st:WriteBoolean(v)
    elseif t == "userdata" then
      st:WriteV4D(v.x, v.y, v.z, v.w)
    end
  end
  st:WriteEnd()
end

function MissionUtils.ForceSlowTime(speed, timeToFade)
  local worldTimer = Game.GetWorldTimer()
  if worldTimer.uData.Modiff and worldTimer.uData.Modiff.bValidBaseType then
    worldTimer.uData.Modiff.bDelete = true
  end
  Weapons.IgnoreTimeBlending = true
  Game.SetTimeFade(speed, timeToFade)
end

function MissionUtils.RestoreNormalTime()
  Game.SetTimeSpeed(1)
  Weapons.IgnoreTimeBlending = false
end

function MissionUtils.ShowPuzzleSolved(showMessage, soundId, soundVolume, award, offsetY)
  if showMessage then
    Menu.ClearMsg()
    if award and 0 < award then
      Menu.TempTextRender(Game.GetLangStr("PUZZLE_SOLVED"), 0, 2.5, "", "+" .. award, offsetY)
    else
      Menu.TempTextRender(Game.GetLangStr("PUZZLE_SOLVED"), 0, 2.5, "", offsetY)
    end
  end
  if soundId == 2 then
    return
  end
  if soundId then
    Sound.Play("Fanfare_0" .. soundId, soundVolume or 1)
  end
end

function MissionUtils.PlayerTeleport(Pos, Angle)
  player.Pos = Pos
  if Angle == nil then
    player.Ang = V3D(0, 0, 0)
  elseif type(Angle) == "number" then
    player.Ang = V3D(0, Angle, 0)
  else
    player.Ang = V3D(0, Angle.y, 0)
  end
  Game.Set("DrawNextFrame", -10)
end

function MissionUtils.CreateFakeClass(className, entityName, onCreateCallback, animName)
  local fakeClass = Act.CreateClass(className)
  fakeClass.ModelFilePath = "Models/Chars/" .. entityName .. "/" .. entityName .. ".M3D"
  fakeClass.OnCreate = onCreateCallback
  local fakeAnm = fakeClass:NewAct("Relax")
  fakeAnm.AnmFilePath = "Models/Chars/" .. entityName .. "/Anm/" .. entityName .. "_Relax.M3D"
  fakeAnm.isLoop = 1
  local fakeAnm = fakeClass:NewAct(animName)
  fakeAnm.AnmFilePath = "Models/Chars/" .. entityName .. "/Anm/" .. entityName .. "_" .. animName .. ".M3D"
  fakeAnm.isLoop = 1
  fakeClass.DefAction = "Relax"
  return fakeClass
end

function MissionUtils.OnCreateSceneFakeChar(EntityName)
  local char = Game.GetEntity(EntityName)
  char.TgType = "Green"
  char.Invulnerable = 1
  char.Ang = V3D(0, 0, 0)
end

function MissionUtils.OnBeginPuzzle()
  if LightPower.PowerUse.Value == 1 then
    LightPower.DeactivatePower("Belmont")
  end
  if DarkPower.PowerUse.Value == 1 then
    DarkPower.DeactivatePower("Belmont")
  end
end
