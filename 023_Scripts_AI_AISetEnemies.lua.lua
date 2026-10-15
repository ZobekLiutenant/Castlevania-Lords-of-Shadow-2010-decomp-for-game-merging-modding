AISetEnemies = {}

function AISetEnemies.main()
  AISetEnemies.Name = AISpec.GetMetaTeamEnemies()
  AISetEnemies.ExistEnem = false
  Game.PreloadLibrary("Scripts/AI/AIEnemiesTeam.lua", "AIEnemiesTeam")
end

function AISetEnemies.IsMember(ent)
  if ent.oAI.MetaTeam == AISetEnemies.Name then
    return true
  end
  return false
end

function AISetEnemies.OnCreateEvent(entity)
  if not AISetEnemies.ExistEnem then
    AISetEnemies.ExistEnem = true
  end
end

function AISetEnemies.OnDeathEvent(entity)
  if AISetEnemies.NumTeamsUnderAttack() == 0 then
    print("ENEMIGOS ELIMINADOS")
    AISetEnemies.ExistEnem = false
  end
end

function AISetEnemies.OnUnderCaution(underCaution)
  local team = AITeamList.FirstMetaTeam(AISetEnemies.Name)
  while team ~= nil do
    AIEnemiesTeam.OnUnderCaution(team, underCaution)
    team = AITeamList.NextMetaTeam(AISetEnemies.Name, team)
  end
end

function AISetEnemies.OnUnderAttack(underAttack)
  local team = AITeamList.FirstMetaTeam(AISetEnemies.Name)
  while team ~= nil do
    AIEnemiesTeam.OnUnderAttack(team, underAttack)
    team = AITeamList.NextMetaTeam(AISetEnemies.Name, team)
  end
end

function AISetEnemies.NumTeamsUnderAttack()
  local num = 0
  local team = AITeamList.FirstMetaTeam(AISetEnemies.Name)
  while team ~= nil do
    if team.uData.UnderAttack then
      num = num + 1
    end
    team = AITeamList.NextMetaTeam(AISetEnemies.Name, team)
  end
  return num
end

function AISetEnemies.AssignNewTarget(target)
  local team, memb = AITeamList.FirstMembMetaTeam(AISetEnemies.Name)
  while team ~= nil and memb ~= nil do
    local ent = memb.oEnt
    if AIEnemy.IsEnable(ent) and not AIEnemy.IsBusy(ent) and not AIEntity.IsGoHelper(ent) and ent.AI_ObjectiveDin == target.Name then
      AIEnemy.AttackEnemyNow(ent)
    end
    team, memb = AITeamList.NextMembMetaTeam(AISetEnemies.Name, team, memb)
  end
end
