AIEntity = {}

function AIEntity.main()
end

function AIEntity.Init(ent)
  AIEntity.DefineStates()
end

function AIEntity.DefineStates()
  STATIC_CHAR = AI.GetIdStStaticChar()
  STEERING_CHAR = AI.GetIdStSteeringChar()
  CHASE_WITH_ACTION_CHAR = AI.GetIdStChaseDoActionChar()
  CHASE_WITHOUT_ACTION_CHAR = AI.GetIdStChaseChar()
  GO_TO_CHAR = AI.GetIdStGoToOrientChar()
  ORIENT_CHAR = AI.GetIdStOrientChar()
end

function AIEntity.GetStateWithDiff(ent)
  return ai.ent.oAI.State
end

function AIEntity.FindEntNearTeam(ent, team)
  local entNear
  local distNear = -1
  local memb = team.oFirst
  while memb ~= nil do
    local e = memb.oEnt
    local enable = AIEntitySpec.IsEnable(e)
    if enable and ent.Name ~= e.Name then
      local dist = (ent.Pos - e.Pos):mod2D()
      if distNear == -1 or distNear > dist then
        distNear = dist
        entNear = e
      end
    end
    memb = team:oNext(memb)
  end
  return entNear, distNear
end

function AIEntity.GetVectOrient(ent)
  local orient = V3D(0, 0, -1):rot(ent.ViewAng)
  return orient:norm()
end

function AIEntity.ChangeTeam(ent, teamName, metaTeam)
  AITeamList.DeleteMember(ent.oAI.Team, ent.Name)
  AITeamList.InsertMember(teamName, metaTeam, ent.Name)
end

function AIEntity.SetBeforeAttack(ent)
end

function AIEntity.ActualizeWeapon(ent)
  ent.AI_DistMinAction = 0
  ent.AI_DistMaxAction = Game.GetWeapon(ent.Weap_SlotAcId).ShotDist
  ent.AI_DistMinChase = ent.AI_DistMinAction
  ent.AI_DistMaxChase = ent.AI_DistMaxAction
end

function AIEntity.Aim(ent)
  ent.ForceAction = ent.WeaponSufix .. "AimInit"
  ent.ForceDefLoop = ent.WeaponSufix .. "Aim"
  ent.bIsWalking = false
end

function AIEntity.InPosHelper(ent)
  local ai = ent.oAI
  local helper = ai.oHelper
  if helper ~= nil and (ent.Pos - helper.Pos):mod2D() < 40 then
    return true
  end
  return false
end

function AIEntity.IsHelperEnable(ent, helper)
  if helper.bIsPlayerInside == true or helper.oUsrLinkAI ~= nil and helper.oUsrLinkAI.oEntity.Name ~= ent.Name then
    return false
  end
  return true
end

function AIEntity.IsGoHelper(ent)
  local st = AIEntity.GetStateWithDiff(ent)
  if st ~= GO_TO_CHAR then
    return false
  end
  local helper = ent.oAI.oHelper
  if helper == nil then
    return false
  end
  if AIEntity.InPosHelperGo(ent) then
    return false
  end
  return true
end

function AIEntity.InPosHelperGo(ent)
  local ai = ent.oAI
  local helper = ai.oHelper
  if helper ~= nil and ai.State == GO_TO_CHAR and not ai.bHoldState then
    return true
  end
  return false
end
