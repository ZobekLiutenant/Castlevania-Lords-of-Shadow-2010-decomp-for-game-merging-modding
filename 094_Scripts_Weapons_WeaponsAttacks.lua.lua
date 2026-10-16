WeaponsAttacks.DebugData = 1

function WeaponsAttacks.main()
end

function WeaponsAttacks.EventLaunchCircularWave(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local a = Game.Split(EventName, ",")
  local speed = a[1]
  local width = a[2]
  local dist = a[3]
  local posX = a[4]
  local posY = a[5]
  local posZ = a[6]
  local hitPreset = {}
  if a[7] then
    table.insert(hitPreset, a[7])
  end
  if a[8] then
    table.insert(hitPreset, a[8])
  end
  if a[9] then
    table.insert(hitPreset, a[9])
  end
  if a[10] then
    table.insert(hitPreset, a[10])
  end
  local showSphere = false
  if defparam(a[11], "FALSE") == "TRUE" then
    showSphere = true
  end
  local jumpable = "TRUE" == defparam(a[12], "TRUE")
  local delta = V3D(tonumber(posX), tonumber(posY), tonumber(posZ)):rot(ent.Ang)
  local wave = WeaponsAttacks.LaunchCircularWave(ent, speed, width, dist, delta, hitPreset, showSphere, nil, jumpable)
  wave.Parent = ent
end

function WeaponsAttacks.LaunchCircularWave(attacker, speed, width, dist, pos, hitPresets, showSphere, overwritePos, jumpable)
  local wave = Game.CreateEntity("TheWave", "CircularWave", defparam(overwritePos, attacker.Pos + pos))
  wave.bShowDebugSpheres = showSphere or Weapons.Debug.Value > 0
  wave.uData.Parent = attacker
  wave.OnHit = "WeaponsAttacks.CircularWaveHit"
  wave.fWide = tonumber(width)
  wave.fSpeed = tonumber(speed)
  wave.fMaxDistance = tonumber(dist)
  wave.uData.HitPresets = {}
  wave.bJumpable = jumpable
  if hitPresets[1] == "_Variable" then
    if attacker.uData.VariableHitPreset then
      hitPresets = Game.Split(attacker.uData.VariableHitPreset, ",")
    else
      Game.ConsoleError([[
Hit Preset _Variable not set
At ]] .. attacker.Name .. " on action " .. attacker.Action .. "\n")
    end
  end
  for i = 1, #hitPresets do
    wave.uData.HitPresets[i] = attacker.oActCtrl.oActClass.uData.HitPresets[hitPresets[i]]
  end
  return wave
end

function WeaponsAttacks.CircularWaveHit(wave, entity)
  local attacker = wave.uData.Parent
  for i = 1, #wave.uData.HitPresets do
    if Game.Get("PlayingDLC") then
      local dir = (entity.Pos - wave.Pos):norm()
      wave.uData.HitPresets[i].Dir = dir
    end
    Weapons.DoDamage(attacker, entity, wave.uData.HitPresets[i])
  end
end

function WeaponsAttacks.EventLaunchCircularWavePreHit(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local a = Game.Split(EventName, ",")
  local speed = a[1]
  local width = a[2]
  local dist = a[3]
  local posX = a[4]
  local posY = a[5]
  local posZ = a[6]
  local hitPreset = {}
  if a[7] then
    table.insert(hitPreset, a[7])
  end
  if a[8] then
    table.insert(hitPreset, a[8])
  end
  if a[9] then
    table.insert(hitPreset, a[9])
  end
  if a[10] then
    table.insert(hitPreset, a[10])
  end
  local showSphere = false
  if defparam(a[11], "FALSE") == "TRUE" then
    showSphere = true
  end
  local jumpable = "TRUE" == defparam(a[12], "TRUE")
  if WeaponsAttacks.ForceCircularWaveDist then
    dist = WeaponsAttacks.ForceCircularWaveDist
  end
  local delta = V3D(tonumber(posX), tonumber(posY), tonumber(posZ)):rot(ent.Ang)
  local wave = WeaponsAttacks.LaunchCircularWave(ent, speed, width, dist, delta, hitPreset, showSphere, nil, jumpable)
  wave.Parent = ent
  if ent == player then
    wave.bCheckPhysics = true
  end
  local wavePreHit = WeaponsAttacks.LaunchCircularWavePreHit(ent, speed, width, dist, delta, hitPreset, showSphere, nil, jumpable)
  wavePreHit.Parent = ent
end

function WeaponsAttacks.EventSetForceCircularWaveDist(EntityName, EventName, Time)
  WeaponsAttacks.ForceCircularWaveDist = tonumber(EventName)
  if WeaponsAttacks.ForceCircularWaveDist <= 0 then
    WeaponsAttacks.ForceCircularWaveDist = nil
  end
end

function WeaponsAttacks.LaunchCircularWavePreHit(attacker, speed, width, dist, pos, hitPresets, showSphere, overwritePos, jumpable)
  local wave = Game.CreateEntity("wavePreHit", "CircularWave", defparam(overwritePos, attacker.Pos + pos))
  wave.bShowDebugSpheres = showSphere or Weapons.Debug.Value > 0
  wave.uData.Parent = attacker
  wave.OnHit = "WeaponsAttacks.CircularWavePreHit"
  wave.fWide = tonumber(width + 50)
  wave.fSpeed = tonumber(speed)
  wave.fMaxDistance = tonumber(dist)
  wave.uData.HitPresets = {}
  wave.bJumpable = jumpable
  for i = 1, #hitPresets do
    wave.uData.HitPresets[i] = attacker.oActCtrl.oActClass.uData.HitPresets[hitPresets[i]]
  end
  return wave
end

function WeaponsAttacks.CircularWavePreHit(wave, entity)
  if wave.uData.Parent and entity and entity.oAI and #wave.uData.HitPresets > 0 then
    local dir = (entity.Pos - wave.Parent.Pos):norm()
    local dodgeable = wave.uData.HitPresets[1].Dodgeable
    local reaction = wave.uData.HitPresets[1].Reaction
    wave.uData.Parent:CallPreHit(wave.uData.Parent.Name, entity.Name, 0, dir.x, dir.y, dir.z, entity.Pos.x, entity.Pos.y, entity.Pos.z, reaction, reaction, reaction, reaction, dodgeable)
  end
end

WeaponsAttacks.WaveIndex = 0

function WeaponsAttacks.EventLaunchWave(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local a = Game.Split(EventName, ",")
  local speed = a[1]
  local angle = a[2]
  local dist = a[3]
  local hitPreset = {}
  local darkMagicCost = defparam(tonumber(a[5]), -1)
  local lightMagicCost = defparam(tonumber(a[6]), -1)
  if a[4] then
    table.insert(hitPreset, a[4])
  end
  if a[7] then
    table.insert(hitPreset, a[7])
  end
  if a[8] then
    table.insert(hitPreset, a[8])
  end
  if a[9] then
    table.insert(hitPreset, a[9])
  end
  if Weapons.ReverseLightAndDark then
    for i = 1, #hitPreset do
      if hitPreset[i] and hitPreset[i] ~= "" then
        local alias = Weapons.ReverseLightAndDarkAlias[hitPreset[i]]
        if alias then
          hitPreset[i] = alias
        end
      end
    end
  end
  local offset = V3D(defparam(tonumber(a[10]), 0), defparam(tonumber(a[11]), 0), defparam(tonumber(a[12]), 0))
  local width = defparam(tonumber(a[13]), 0)
  local angleToEnemy
  if tonumber(a[14]) then
    angleToEnemy = V3D(0, ent.Ang.y + tonumber(a[14]), 0)
  else
    angleToEnemy = V3D(0, ent.Ang.y, ent.Ang.z)
  end
  if 0 < darkMagicCost then
    DarkPower.Consume(EntityName, darkMagicCost)
  end
  if 0 < lightMagicCost then
    LightPower.Consume(EntityName, lightMagicCost)
  end
  WeaponsAttacks.LaunchWave(ent, angleToEnemy, speed, angle, dist, hitPreset, offset, width)
end

function WeaponsAttacks.LaunchWave(ent, angleToEnemy, speed, angle, dist, hitPreset, offset, width)
  offset = defparam(offset, V3D(0, 0, 0))
  width = defparam(width, 0)
  local h = math.cos(angle / 2 * 0.0174533)
  local lifeTime = dist * h / speed
  local currentHeight = 0
  while width >= currentHeight do
    WeaponsAttacks.WaveIndex = WeaponsAttacks.WaveIndex + 1
    local pos = ent.Pos + offset:rot(V3D(0, ent.ViewAng.y, 0)) + V3D(0, currentHeight, 0)
    local WaveTest = Game.CreateEntity("WaveTest" .. WeaponsAttacks.WaveIndex, "Missile", pos)
    WaveTest.oParent = ent
    WaveTest.CharColMode = 0
    WaveTest.Ang = angleToEnemy
    WaveTest.Vel = V3D(0, 0, -speed):rot(WaveTest.Ang)
    WaveTest.TimeToExplode = lifeTime + 0
    WaveTest.OnObjSlot = "WeaponsAttacks.WaveSlot"
    WaveTest.OnExplode = "WeaponsAttacks.ExplodeWave"
    WaveTest.TimeToActivateMapCol = 10
    WaveTest.uData.HitId = WeaponsAttacks.WaveIndex
    WaveTest.uData.Angle = angle
    WaveTest.uData.HitData = {}
    if type(hitPreset) ~= "table" then
      WaveTest.uData.HitData[1] = ent.oActCtrl.oActClass.uData.HitPresets[hitPreset]
    else
      for i = 1, #hitPreset do
        WaveTest.uData.HitData[i] = ent.oActCtrl.oActClass.uData.HitPresets[hitPreset[i]]
      end
    end
    WaveTest.uData.TimeStamp = Game.GetTime()
    currentHeight = currentHeight + 100
  end
end

function WeaponsAttacks.WaveSlot(EntityName, TimeDiff)
  local ent = Game.GetEntity(EntityName)
  if ent.uData.P1 and ent.uData.P2 then
    local time = Game.GetTime() - ent.uData.TimeStamp
    local speed = ent.Vel:mod()
    local sin = math.sin(ent.uData.Angle / 2 * 0.0174533)
    local width = time * speed * sin
    local P1 = ent.uData.P1
    local P2 = ent.uData.P2
    local R1 = P1 + V3D(width, 0, 0):rot(ent.Ang)
    local R2 = P2 + V3D(width, 0, 0):rot(ent.Ang)
    local L1 = P1 + V3D(-width, 0, 0):rot(ent.Ang)
    local L2 = P2 + V3D(-width, 0, 0):rot(ent.Ang)
    WeaponsAttacks.CurrentWaveBullet = ent
    Game.TriBoxCall(ent.Pos, R1, L1, "WeaponsAttacks.HitWave")
    Game.TriBoxCall(P1, R1, R2, "WeaponsAttacks.HitWave")
    Game.TriBoxCall(P1, L1, L2, "WeaponsAttacks.HitWave")
    if EditorAnimTester and EditorAnimTester.object and EditorAnimTester.object.bValidBaseType or 0 < Weapons.Debug.Value then
      local tri = DebugDraw.NewPrimitive("Triangle")
      tri.Point0 = ent.Pos
      tri.Point1 = R1
      tri.Point2 = L1
      tri.TimeToDel = Game.GetTime() + 0.2
      local tri1 = DebugDraw.NewPrimitive("Triangle")
      tri1.Point0 = P1
      tri1.Point1 = R1
      tri1.Point2 = R2
      tri1.TimeToDel = Game.GetTime() + 0.2
      local tri2 = DebugDraw.NewPrimitive("Triangle")
      tri2.Point0 = P1
      tri2.Point1 = L1
      tri2.Point2 = L2
      tri2.TimeToDel = Game.GetTime() + 0.2
    end
  end
  ent.uData.P2 = ent.uData.P1
  ent.uData.P1 = ent.Pos
end

function WeaponsAttacks.ExplodeWave(Bullet, x, y, z, Target)
  if Bullet then
    Bullet:Del()
  end
end

function WeaponsAttacks.HitWave(TargetName)
  local Target = Game.GetEntity(TargetName)
  local hitData = WeaponsAttacks.CurrentWaveBullet.uData.HitData
  local hitId = WeaponsAttacks.CurrentWaveBullet.uData.HitId
  if not Target then
    return
  end
  if not Game.Get("PlayingDLC") then
    if (not Target:IsType("PxBodyPhysics") or not Target.bIsRagdollPart) and WeaponsAttacks.CurrentWaveBullet.oParent.Name ~= TargetName and (not Target.uData or Target.uData.LastHitId ~= hitId) then
      Target.uData.LastHitId = hitId
      Game.Log("Damaging " .. Target.Name .. " with a wave\n", 2)
      for i = 1, #hitData do
        Weapons.DoDamage(WeaponsAttacks.CurrentWaveBullet.oParent, Target, hitData[i])
      end
    end
  elseif Target:IsType("PxBodyPhysics") and Target.bIsRagdollPart then
    if WeaponsAttacks.CurrentWaveBullet.oParent.Name ~= TargetName and (not Target.uData or Target.uData.LastHitId ~= hitId) then
      Target.uData.LastHitId = hitId
      local owner = Game.GetRagdollPartOwner(Target.Name)
      Game.Log("Damaging " .. owner.Name .. "(" .. Target.Name .. ") with a wave\n", 2)
      for i = 1, #hitData do
        Weapons.DoDamage(WeaponsAttacks.CurrentWaveBullet.oParent, owner, hitData[i], nil, nil, Target.Name)
      end
    end
  elseif WeaponsAttacks.CurrentWaveBullet.oParent.Name ~= TargetName and (not Target.uData or Target.uData.LastHitId ~= hitId) then
    Target.uData.LastHitId = hitId
    Game.Log("Damaging " .. Target.Name .. " with a wave\n", 2)
    for i = 1, #hitData do
      hitData[i].Dir = V3D(0, 0, -10):rot(WeaponsAttacks.CurrentWaveBullet.Ang)
      Weapons.DoDamage(WeaponsAttacks.CurrentWaveBullet.oParent, Target, hitData[i])
    end
  end
  if Target and Target:IsType("PxBodyPhysics") then
    local dir = (Target.Pos - WeaponsAttacks.CurrentWaveBullet.oParent.Pos):norm()
    Weapons.PushObject(TargetName, dir.x, dir.y, dir.z)
  end
end

function WeaponsAttacks.EventDoubleJumpBlind(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local params = Game.Split(EventName, ",")
  local pos = V3D(params[1], params[2], params[3])
  local radius = params[4]
  local time = params[5]
  local testPos = ent.Pos + pos:rot(ent.Ang)
  local hitpresets = {}
  hitpresets[1] = defparam(params[6], "")
  hitpresets[2] = defparam(params[7], "")
  hitpresets[3] = defparam(params[8], "")
  hitpresets[4] = defparam(params[9], "")
  local DmgAlways = tonumber(defparam(params[10], "0"))
  if LightPower.PowerUse.Value == 1 and not ent.uData.DoubleJumpBlindDisabled then
    LightPower.Consume(player.Name, LightPower.DoubleJumpBlindCost)
    addSF(0, "", "WeaponsAttacks.BlindByJumpSphereCall", testPos.x, testPos.y, testPos.z, radius)
  end
  if DmgAlways == 1 or LightPower.PowerUse.Value == 1 then
    Weapons.MeleeHit(EntityName, hitpresets, pos.x, pos.y, pos.z, radius)
  end
end

function WeaponsAttacks.BlindByJumpSphereCall(x, y, z, radius)
  Game.SphereCall(V3D(x, y, z), radius, "R", "WeaponsAttacks.BlindEntityByJump", 1, true)
end

function WeaponsAttacks.EventBlind(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local params = Game.Split(EventName, ",")
  local pos = V3D(params[1], params[2], params[3])
  local radius = params[4]
  local time = params[5]
  local testPos = ent.Pos + pos:rot(ent.Ang)
  Game.SphereCall(testPos, radius, "R", "WeaponsAttacks.BlindEntityByJump", 1, true)
end

function WeaponsAttacks.BlindEntityByJump(EntityName)
  local ent = Game.GetEntity(EntityName)
  local time
  if AISpec.IsBehavParamDefined(ent.oActCtrl.oActClass.Name, "CrazyByJumpBlindnessTime") then
    time = AISpec.GetBehavParamValue(ent.oActCtrl.oActClass.Name, "CrazyByJumpBlindnessTime")
  else
    time = AISpec.GetBehavParamValue("AllEnemies", "CrazyByJumpBlindnessTime")
  end
  if Game.Get("PlayingDLC") and (ent.oActCtrl.oActClass.Name == "Laura" or ent.oActCtrl.oActClass.Name == "Fairy") then
    return
  end
  if ent.UsrControl == -1 and ent.oAI and not ent.uData.IsCritter then
    ent.oAI.bIncomingBlindess = true
    local schedFuncName = ent.Name .. "Blindness"
    addSF(Game.Rand(0, 0.6), schedFuncName, "WeaponsAttacks.SetCrazyFor", EntityName, time)
    Game.Log(EntityName .. " cegado por salto durante " .. time .. " secs\n", 1)
  end
end

function WeaponsAttacks.BlindEntityByBlock(EntityName)
  local ent = Game.GetEntity(EntityName)
  local time
  if AISpec.IsBehavParamDefined(ent.oActCtrl.oActClass.Name, "CrazyByBlockBlindnessTime") then
    time = AISpec.GetBehavParamValue(ent.oActCtrl.oActClass.Name, "CrazyByBlockBlindnessTime")
  else
    time = AISpec.GetBehavParamValue("AllEnemies", "CrazyByBlockBlindnessTime")
  end
  if Game.Get("PlayingDLC") and (ent.oActCtrl.oActClass.Name == "Laura" or ent.oActCtrl.oActClass.Name == "Fairy") then
    return
  end
  if ent.UsrControl == -1 and ent.oAI and not ent.uData.IsCritter then
    ent.oAI.bIncomingBlindess = true
    local schedFuncName = ent.Name .. "Blindness"
    addSF(Game.Rand(0, 0.6), schedFuncName, "WeaponsAttacks.SetCrazyFor", EntityName, time)
    Game.Log(EntityName .. " cegado por bloqueo durante " .. time .. " secs\n", 1)
  end
end

function WeaponsAttacks.SetCrazyFor(EntityName, time)
  time = defparam(time, 10)
  local ent = Game.GetEntity(EntityName)
  if ent and ent.Life > 0 and ent.oAI and not ent.uData.IsCritter then
    if Game.Get("PlayingDLC") and ent.oActCtrl.oActClass.Name == "Laura" then
      return
    end
    ent.oAI:SetCrazyFor(time, 2)
  end
end

WeaponsAttacks.UpdateConeFrecuency = 0.2

function WeaponsAttacks.BeginDeadlyCone(EntityName, initDist, endDist, stackDist, initRadius, endRadius, stackRadius, time, consume, damage)
  local ent = Game.GetEntity(EntityName)
  initDist = tonumber(initDist)
  initRadius = tonumber(initRadius)
  endDist = tonumber(endDist)
  endRadius = tonumber(endRadius)
  time = tonumber(time)
  consume = tonumber(consume)
  damage = tonumber(damage)
  if ent then
    ent.uData.DeadlyCone = {}
    ent.uData.DeadlyCone.initDist = initDist
    ent.uData.DeadlyCone.initRadius = initRadius
    ent.uData.DeadlyCone.endDist = endDist
    ent.uData.DeadlyCone.endRadius = endRadius
    ent.uData.DeadlyCone.time = time
    ent.uData.DeadlyCone.consume = consume
    ent.uData.DeadlyCone.damage = damage
    local distModifier = Game.ValueModifier():New()
    distModifier.FinalTime = time
    distModifier.FactorStack = stackDist
    distModifier.Func = "WeaponsAttacks.SlotDeadlyConeDist"
    distModifier.uData.owner = ent
    ent.uData.DeadlyCone.DistModifier = distModifier
    local radiusModifier = Game.ValueModifier():New()
    radiusModifier.FinalTime = time
    radiusModifier.FactorStack = stackRadius
    radiusModifier.OnEnd = "WeaponsAttacks.OnEndDeadlyCone"
    radiusModifier.Func = "WeaponsAttacks.SlotDeadlyConeRadius"
    radiusModifier.uData.owner = ent
    ent.uData.DeadlyCone.RadiusModifier = radiusModifier
    if not ent.uData.BlindIndex then
      ent.uData.BlindIndex = 1
    else
      ent.uData.BlindIndex = ent.uData.BlindIndex + 1
    end
    WeaponsAttacks.UpdateCone(EntityName)
  end
end

function WeaponsAttacks.SlotDeadlyConeDist(modifier)
  local ent = modifier.uData.owner
  ent.uData.DeadlyCone.dist = ent.uData.DeadlyCone.initDist + (ent.uData.DeadlyCone.endDist - ent.uData.DeadlyCone.initDist) * modifier.iFactor
end

function WeaponsAttacks.SlotDeadlyConeRadius(modifier)
  local ent = modifier.uData.owner
  ent.uData.DeadlyCone.radius = ent.uData.DeadlyCone.initRadius + (ent.uData.DeadlyCone.endRadius - ent.uData.DeadlyCone.initRadius) * modifier.iFactor
end

function WeaponsAttacks.EndDeadlyCone(ent)
  ent.uData.DeadlyCone.RadiusModifier.FinalTime = 0
  ent.uData.DeadlyCone.RadiusModifier.Func = ""
  ent.uData.DeadlyCone.DistModifier.FinalTime = 0
  ent.uData.DeadlyCone.DistModifier.Func = ""
  for i, e in pairs(WeaponsAttacks.ConeList) do
    if e and e.bValidBaseType and e.oAI and e.oAI.iCrazyState == 2 then
      e.oAI:SetCrazyFalse(2)
    end
  end
  WeaponsAttacks.ConeList = {}
  delSF("UpdateCone")
end

WeaponsAttacks.ConeList = {}

function WeaponsAttacks.UpdateCone(EntityName)
  local ent = Game.GetEntity(EntityName)
  local timeDiff = WeaponsAttacks.UpdateConeFrecuency
  if ent.bActive then
    if not LightPower.Consume(ent.Name, ent.uData.DeadlyCone.consume * timeDiff) then
      WeaponsAttacks.EndDeadlyCone(ent)
      ent.ForceAction = "WhipComboADLhEnd"
    else
      if ent.uData.DeadlyCone.radius and ent.uData.DeadlyCone.dist then
        local coneAng = math.atan2(ent.uData.DeadlyCone.radius, ent.uData.DeadlyCone.dist) * 180 / math.pi
        local e = Game.GetFirstWithLifeEntity()
        while e do
          if e:IsType("WalkChar") and ent ~= e and not e.uData.IsCritter then
            local ang = (e.Pos - (ent.Pos + V3D(0, 0, 150):rot(ent.Ang))):getrot() - ent.Ang + V3D(0, 180, 0):normAngDeg()
            local dist = (e.Pos - ent.Pos):mod()
            if coneAng > math.abs(ang.y) and coneAng > math.abs(ang.x) and dist < ent.uData.DeadlyCone.dist then
              local angle = (e.Pos - player.Pos):getrot()
              if e.oAI and e.TgType == "red" then
                local blindTime = defparam(WeaponsAttacks.TableConeBlindness[e.oActCtrl.oActClass.Name], -1)
                if blindTime < -timeDiff then
                  e.oAI:SetCrazyFor(1, 2)
                elseif 0 < blindTime and e.uData.BlindedBy ~= ent.uData.BlindIndex then
                  e.oAI:SetCrazyFor(blindTime, 2)
                  if e.oAI.iCrazyState == 2 then
                    e.uData.BlindedBy = ent.uData.BlindIndex
                    e.Ang = V3D(e.Ang.x, angle.y, e.Ang.z)
                    table.insert(WeaponsAttacks.ConeList, e)
                  end
                end
              end
              local damage = defparam(WeaponsAttacks.TableConeDamages[e.oActCtrl.oActClass.Name], 1)
              if Weapons.DoDamage(ent, e, {
                Damage = damage * ent.uData.DeadlyCone.damage * timeDiff,
                Unblockable = 0,
                Dodgeable = 0,
                Reaction = -1,
                HitAgainTime = 0,
                Type = "light"
              }) then
                hitted = true
              end
            end
          end
          e = e.oNextWithLifeEntity
        end
        if 2 <= Weapons.Debug.Value then
          if not ent.uData.DeadlyCone.DebugShape or not ent.uData.DeadlyCone.DebugShape.bValidBaseType then
            ent.uData.DeadlyCone.DebugShape = DebugDraw.NewPrimitive("Cone")
            ent.uData.DeadlyCone.DebugShape.TimeToDel = Game.GetTime() + WeaponsAttacks.UpdateConeFrecuency + 0.05
          end
          local s = ent.uData.DeadlyCone.DebugShape
          s.Pos = ent.Pos + V3D(0, 0, 150):rot(ent.Ang)
          s.Ang = ent.Ang + V3D(90, 0, 0)
          s.Dist = ent.uData.DeadlyCone.dist
          s.Radius = ent.uData.DeadlyCone.radius
          s.Color = Color(255, 0, 0, 255)
        end
      end
      addSF(WeaponsAttacks.UpdateConeFrecuency, "UpdateCone", "WeaponsAttacks.UpdateCone", EntityName)
    end
  else
    WeaponsAttacks.EndDeadlyCone(ent)
  end
end

function WeaponsAttacks.OnEndDeadlyCone(modifier)
  local ent = modifier.uData.owner
  ent.ForceAction = "WhipComboADLhEnd"
end

WeaponsAttacks.ExplosionPresets = {}

function WeaponsAttacks.ExplosionPress(ent)
  WeaponsAttacks.ExplosionList = {}
  Game.SphereCall(ent.Pos, WeaponsAttacks.ExplosionsZoneRadius, "R", "WeaponsAttacks.ExplosionListPopulate", 1, true)
  if #WeaponsAttacks.ExplosionList > 0 then
    local repetitions = 0
    local success = false
    while not success and repetitions < 10 do
      local rand = math.floor(Game.Rand(1, #WeaponsAttacks.ExplosionList) + 0.5)
      local enemy = WeaponsAttacks.ExplosionList[rand]
      local lenght = Game.Rand(WeaponsAttacks.ExplosionRandomShiftInnerRadius, WeaponsAttacks.ExplosionRandomShiftRadius)
      local rotation = V3D(0, Game.Rand(0, 360), 0)
      local direction = V3D(0, 0, lenght):rot(rotation)
      success = WeaponsAttacks.DoExplosion(ent, enemy.Pos + direction)
      repetitions = repetitions + 1
    end
  else
    local repetitions = 0
    local success = false
    while not success and repetitions < 10 do
      local lenght = Game.Rand(400, WeaponsAttacks.ExplosionsZoneRadius)
      local rotation = V3D(0, Game.Rand(0, 360), 0)
      local direction = V3D(0, 0, lenght):rot(rotation)
      success = WeaponsAttacks.DoExplosion(ent, ent.Pos + direction)
      repetitions = repetitions + 1
    end
  end
end

function WeaponsAttacks.DoExplosion(entity, pos)
  local isCol
  if Game.Get("PlayingDLC") then
    WeaponsAttacks.ExplosionDownTest = -1000
  end
  isCol, pos = Game.WorldLineTest(pos + V3D(0, WeaponsAttacks.ExplosionUpTest, 0), pos + V3D(0, WeaponsAttacks.ExplosionDownTest, 0), entity.Name, entity.WorldCollisionMask)
  if isCol then
    local radius = WeaponsAttacks.ExplosionRadius
    Weapons.TempMelee.Ent = entity
    Game.SphereCall(pos, radius, "L", "WeaponsAttacks.ExplosionHit", 1, true)
    Weapons.TempMelee.Ent = nil
    Belmont.FXFireStorm(pos)
    if Weapons.Debug.Value >= 2 then
      local s = DebugDraw.NewPrimitive("Sphere")
      s.Pos = pos
      s.Radius = tonumber(radius)
      s.TimeToDel = Game.GetTime() + 0.3
      s.Color = Color(255, 80, 0, 255)
    end
    return true
  else
    return false
  end
end

function WeaponsAttacks.ExplosionHit(EntityName)
  if Weapons.TempMelee.Ent.Name ~= EntityName then
    local entity = Game.GetEntity(EntityName)
    local hitPresetList = Weapons.TempMelee.Ent.oActCtrl.oActClass.uData.HitPresets
    Weapons.TempMelee.HitData[1] = hitPresetList[WeaponsAttacks.ExplosionPresets[1]]
    Weapons.TempMelee.HitData[2] = hitPresetList[WeaponsAttacks.ExplosionPresets[2]]
    Weapons.TempMelee.HitData[3] = hitPresetList[WeaponsAttacks.ExplosionPresets[3]]
    Weapons.TempMelee.HitData[4] = hitPresetList[WeaponsAttacks.ExplosionPresets[4]]
    Weapons.TempMelee.Pos = entity.Pos
    Weapons.TempMelee.Dir = nil
    Weapons.DoMeleeHit(EntityName)
  end
end

function WeaponsAttacks.ExplosionListPopulate(EntityName)
  local ent = Game.GetEntity(EntityName)
  if ent.TgType == "red" then
    table.insert(WeaponsAttacks.ExplosionList, ent)
  end
end

function WeaponsAttacks.FinalExplosionOn(entityName)
  WeaponsAttacks.FinalExplosionSch(entityName, 0)
end

function WeaponsAttacks.FinalExplosionSch(entityName, it)
  local lenght
  local rotation = V3D(0, Game.Rand(0, 360), 0)
  if it < 5 then
    lenght = Game.Rand(200, 400)
  elseif it < 15 then
    lenght = Game.Rand(400, 600)
  elseif it < 28 then
    lenght = Game.Rand(600, 800)
  else
    return
  end
  local pos = Game.GetEntity(entityName).Pos + V3D(0, 0, lenght):rot(rotation)
  local isCol
  isCol, posFinal = Game.WorldLineTest(pos, pos + V3D(0, -200, 0), entityName, Game.GetEntity(entityName).WorldCollisionMask)
  if isCol then
    Belmont.FXFireStorm(posFinal)
  end
  print("aaaaaaaa:" .. it)
  addSF(0.01, "WeaponsAttacks.FinalExplosionSch", "WeaponsAttacks.FinalExplosionSch", entityName, it + 1)
end

function WeaponsAttacks.FinalExplosionOff(entityName)
  delSF("WeaponsAttacks.FinalExplosionSch")
end

WeaponsAttacks.TableConeDamages = {}
WeaponsAttacks.TableConeBlindness = {}
