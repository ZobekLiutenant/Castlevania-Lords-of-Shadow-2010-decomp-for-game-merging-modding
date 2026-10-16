function LightRay.main()
  LightRay.MaxRayLength = 7500
end

function LightRay.SetupRayReceiver(entity)
  entity.uData.IsRayReceiver = true
  if nil == entity.uData.OnRayReceived then
    entity.uData.OnRayReceived = ""
  end
  if nil == entity.uData.OnRayStop then
    entity.uData.OnRayStop = ""
  end
end

function LightRay.SetupRayEmitter(entity)
  if nil == entity.uData.IsEmitting then
    entity.uData.IsEmitting = false
  end
  entity.OnDebugDraw = "LightRay.EmitterDebugDraw"
  entity.uData.RayDirection = V3D(0, 0, -1):rot(entity.Ang)
end

function LightRay.SetupMirror(entity)
  local oldArrPriority = entity.ArrPriority
  PushPull.SetUpCircle(entity)
  entity.ArrPriority = oldArrPriority
  entity.uData.Snap = {
    entity.uData.UserSnap,
    30
  }
  if 0 ~= entity.uData.MinAng or 360 ~= entity.uData.MaxAng then
    entity.uData.Limits = {
      entity.uData.MinAng,
      entity.uData.MaxAng,
      0
    }
  end
  entity.uData.CallOnTurn = LightRay.OnTurnMirror
  entity.uData.IsEmitting = false
  LightRay.SetupRayEmitter(entity)
  LightRay.SetupRayReceiver(entity)
  entity.uData.OnRayReceived = "LightRay.OnRayReceiveMirror"
  entity.uData.OnRayStop = "LightRay.OnRayStopMirror"
  PushBox.SetupBox(entity)
  entity.uData.LeaveNodeFunc = "LightRay.OnMirrorLeaveNode"
  entity.OnDebugDraw = "LightRay.OnDebugDrawMirror"
end

function LightRay.CheckEmitterRay(emitterName)
  local emitter = Game.GetEntity(emitterName)
  if emitter.uData.IsEmitting then
    local rayOffset = defparam(emitter.uData.RayOffset, V3D())
    local rayEnd = emitter.Pos + rayOffset + LightRay.MaxRayLength * emitter.uData.RayDirection
    local resultSet = {
      Game.TestLine(emitter.Pos + rayOffset, rayEnd, "", "Belmont", false, false, false, true)
    }
    local hittedEntity
    if type(resultSet[1]) == "string" then
      hittedEntity = Game.GetEntity(resultSet[1])
    elseif type(resultSet[3]) == "userdata" then
      hittedEntity = resultSet[3]
    end
    if hittedEntity and hittedEntity.uData.IsRayReceiver and hittedEntity ~= emitter and hittedEntity ~= emitter.uData.FocusedBy then
      emitter.uData.FocusingAt = hittedEntity
      local callback = parseGlobalExpression(hittedEntity.uData.OnRayReceived)
      if type(callback) == "function" then
        callback(hittedEntity, emitter)
      end
    end
    if emitter.uData.OnRayUpdate then
      emitter.uData.OnRayUpdate(emitter)
    end
    emitter.uData.FocusedAngle = Game.NormAng(emitter.JustAng.y)
  else
    if MapEffects.MirrorLightOff then
      MapEffects.MirrorLightOff(emitterName)
    end
    MapEffects.EmitterLightOff(emitterName)
    if emitter.uData.FocusingAt then
      local receiver = emitter.uData.FocusingAt
      local callback = parseGlobalExpression(receiver.uData.OnRayStop)
      if type(callback) == "function" then
        callback(receiver)
      end
      emitter.uData.FocusingAt = nil
      receiver.uData.FocusedBy = nil
    end
  end
end

function LightRay.OnRayReceiveMirror(mirror, emitter)
  if nil ~= mirror.uData.FocusedBy then
    Game.ConsoleError("Mirror " .. mirror.Name .. " already focused by " .. mirror.uData.FocusedBy.Name .. "\n")
  end
  mirror.uData.FocusedBy = emitter
  local front = V3D(0, 0, -1):rot(mirror.Ang)
  if emitter.uData.RayDirection:dot(front) > -1.0E-4 then
    return
  end
  local emitterAng = emitter.uData.RayDirection:getrot().y - 180
  MapEffects.MirrorLightOn(mirror.Name, math.rad(emitterAng - 180))
  mirror.uData.RayDirection = V3D(0, 0, -1):rot(V3D(0, 2 * mirror.Ang.y - emitterAng - 180, 0))
  mirror.uData.IsEmitting = true
  LightRay.CheckEmitterRay(mirror.Name)
end

function LightRay.OnRayStopMirror(mirror)
  mirror.uData.IsEmitting = false
  MapEffects.MirrorLightOff(mirror.Name)
  if mirror.uData.FocusingAt then
    LightRay.CheckEmitterRay(mirror.Name)
  end
end

function LightRay.EmitterDebugDraw(emitter)
  if emitter then
    local color
    if emitter.uData.IsEmitting then
      color = Color(0, 255, 0, 255)
    else
      color = Color(255, 0, 0, 255)
    end
    local rayOffset = defparam(emitter.uData.RayOffset, V3D())
    DebugDraw.DrawLink(emitter.Pos + rayOffset, emitter.Pos + rayOffset + emitter.uData.RayDirection * LightRay.MaxRayLength, false, false, color, color)
  end
end

function LightRay.OnDebugDrawMirror(entity)
  LightRay.EmitterDebugDraw(entity)
  PushBox.OnDebugDrawBox(entity)
  local color = Color(128, 128, 255, 255)
  local rayOffset = defparam(entity.uData.RayOffset, V3D())
  DebugDraw.DrawPlane(entity.Pos + rayOffset, entity.Ang + V3D(90, 0, 0), 150, 150, color)
  DebugDraw.DrawLink(entity.Pos + rayOffset, entity.Pos + rayOffset + 200 * V3D(0, 0, -1):rot(entity.Ang), false, true, color, color)
end

function LightRay.OnTurnMirror(mirror)
  if nil == mirror.uData.FocusedBy then
    return
  end
  local front = V3D(0, 0, -1):rot(mirror.Ang)
  local emitter = mirror.uData.FocusedBy
  local emitterAng = emitter.uData.RayDirection:getrot().y - 180
  if emitter.uData.RayDirection:dot(front) > -1.0E-4 then
    if mirror.uData.IsEmitting then
      mirror.uData.IsEmitting = false
      MapEffects.MirrorLightOff(mirror.Name)
    end
  elseif not mirror.uData.IsEmitting then
    mirror.uData.IsEmitting = true
    MapEffects.MirrorLightOn(mirror.Name, math.rad(emitterAng - 180))
  end
  local snap = mirror.uData.Snap[1]
  local mirrorAng = LightRay.RoundAngle(mirror.JustAng.y)
  if 0 == mirrorAng % snap then
    mirror.uData.RayDirection = V3D(0, 0, -1):rot(V3D(0, 2 * mirrorAng - emitterAng - 180, 0))
    if mirror.uData.IsEmitting and mirror.uData.LastSnapChecked ~= mirrorAng then
      LightRay.CheckEmitterRay(mirror.Name)
      mirror.uData.LastSnapChecked = mirrorAng
    end
  else
    mirror.uData.LastSnapChecked = nil
    local receiver = mirror.uData.FocusingAt
    if receiver and LightRay.IsEmitterOutOfCone(mirror) then
      local callback = parseGlobalExpression(receiver.uData.OnRayStop)
      if type(callback) == "function" then
        callback(receiver)
      end
      receiver.uData.FocusedBy = nil
      mirror.uData.FocusingAt = nil
    end
  end
end

function LightRay.IsEmitterOutOfCone(emitter)
  if emitter.uData.HasAngleMargin and emitter.uData.FocusedAngle then
    local emitterAngle = Game.NormAng(emitter.JustAng.y)
    return math.abs(emitter.uData.FocusedAngle - emitterAngle) >= emitter.uData.Snap[1] / 2
  end
  return true
end

function LightRay.OnMirrorLeaveNode(leftNode, headedNode, mirror)
  mirror.uData.IsEmitting = false
  MapEffects.MirrorLightOff(mirror.Name)
  Game.AddScheduledFunc(Game.GetTime() + 0.25, "", "LightRay.CheckEmitterRay", mirror.Name)
  local emitter = mirror.uData.FocusedBy
  if emitter then
    mirror.uData.FocusedBy = nil
    emitter.uData.FocusingAt = nil
    Game.AddScheduledFunc(Game.GetTime() + 0.25, "", "LightRay.CheckEmitterRay", emitter.Name)
  end
end

function LightRay.OnTurnEmitter(emitter)
  local snap = emitter.uData.Snap[1]
  local emitterAng = LightRay.RoundAngle(emitter.JustAng.y)
  if 0 == emitterAng % snap then
    emitter.uData.RayDirection = V3D(0, 0, -1):rot(V3D(0, emitterAng, 0))
    if emitter.uData.IsEmitting and emitter.uData.LastSnapChecked ~= emitterAng then
      LightRay.CheckEmitterRay(emitter.Name)
      emitter.uData.LastSnapChecked = emitterAng
    end
  else
    emitter.uData.LastSnapChecked = nil
    local receiver = emitter.uData.FocusingAt
    if receiver then
      local callback = parseGlobalExpression(receiver.uData.OnRayStop)
      if type(callback) == "function" then
        callback(receiver)
      end
      receiver.uData.FocusedBy = nil
      emitter.uData.FocusingAt = nil
    end
  end
end

function LightRay.OnEmitterStop(emitterName)
  local emitter = Game.GetEntity(emitterName)
  emitter.uData.IsEmitting = false
  LightRay.CheckEmitterRay(emitterName)
end

function LightRay.OnStatueBegin(emitterName, ignoreFX)
  local emitter = Game.GetEntity(emitterName)
  emitter.uData.IsEmitting = true
  if not ignoreFX then
    MapEffects.EmitterLightOn(emitterName)
  end
  if nil ~= emitter.uData.OnLightOnCallback then
    local callback = parseGlobalExpression(emitter.uData.OnLightOnCallback)
    if type(callback) == "function" then
      callback(entityused)
    end
  end
  emitter.uData.RayDirection = V3D(0, 0, -1):rot(emitter.Ang)
  LightRay.CheckEmitterRay(emitterName)
end

function LightRay.RoundAngle(realAngle)
  local angleFloor = math.floor(realAngle * 10)
  if realAngle * 10 - angleFloor > 0.9 then
    return (angleFloor + 1) / 10
  elseif realAngle * 10 - angleFloor < 0.1 then
    return angleFloor / 10
  else
    return realAngle
  end
end
