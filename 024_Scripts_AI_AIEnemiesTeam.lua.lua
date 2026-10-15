AIEnemiesTeam = {}

function AIEnemiesTeam.main()
  Game.PreloadLibrary("Scripts/AI/AIEnemy.lua", "AIEnemy")
end

function AIEnemiesTeam.Create(eneList, team)
  local teamActive = false
  local list = eneList[team]
  for name in pairs(list) do
    local e = Game.GetEntity(name)
    local behav = list[name].BehavAI
    if behav == nil then
      behav = e.ActCtrl
    end
    AISpec.CreateAI(name, e.Active, behav)
    AITeamList.InsertMember(team, AISetEnemies.Name, name)
    AIEnemy.Init(e, team, list[name])
    for edata in pairs(e.uData) do
      if string.sub(edata, 1, 3) == "AI_" then
        e.oAI[string.sub(edata, 4)] = e.uData[edata]
      end
    end
    if e.bActive then
      teamActive = true
    end
  end
  local teamm = AITeamList.Get(team)
  if teamm ~= nil then
    print("EQUIPO ENEMIGO CREADO:", team)
    teamm.uData.UnderCaution = false
    teamm.uData.UnderAttack = false
    AIEnemiesTeam.OnUnderCaution(teamm, true)
    if teamActive then
      AIEnemiesTeam.OnActivateEvent(team)
    end
  end
end

function AIEnemiesTeam.OnUnderCaution(team, caution)
  if team.uData.UnderCaution ~= caution then
    print("ENEMY TEAM: ", team.Name, " UNDER CAUTION: ", caution)
    team.uData.UnderCaution = caution
    if caution then
      AIEnemiesTeam.OnUnderAttack(team, false)
      AIEnemiesTeam.EnableVisionUnderCaution(team)
    end
  end
end

function AIEnemiesTeam.OnUnderAttack(team, attack)
  if team.uData.UnderAttack ~= attack then
    print("ENEMY TEAM: ", team.Name, " UNDER ATTACK: ", attack)
    team.uData.UnderAttack = attack
    if attack then
      team:OnUnderAttack()
      AIEnemiesTeam.OnUnderCaution(team, false)
      AIEnemiesTeam.EnableVisionUnderAttack(team)
    end
  end
end

function AIEnemiesTeam.OnUnderAttackEvent(team)
  if not team.uData.UnderAttack then
    AIEnemiesTeam.OnUnderAttack(team, true)
  end
end

function AIEnemiesTeam.OnActivateEvent(teamName)
  local teamm = AITeamList.Get(teamName)
  if teamm == nil then
    return
  end
  print(teamName, " ACTIVADO")
  for i in pairs(MapEnemiesGroup.Groups) do
    local a = MapEnemiesGroup.Groups[i]
    local listname = a[1][2]
    if listname == teamName and EnemyGen.GetProperty("CreatedAttack", a) then
      AIEnemiesTeam.OnUnderAttackEvent(teamm)
      return
    end
  end
end

function AIEnemiesTeam.OnViewTarget(team, e, target)
  AIEnemiesTeam.OnUnderAttackEvent(team)
end

function AIEnemiesTeam.EnableVisionUnderCaution(team)
  local memb = team.oFirst
  while memb ~= nil do
    local ent = memb.oEnt
    AIEnemy.EnableVisionUnderCaution(ent)
    memb = team:oNext(memb)
  end
end

function AIEnemiesTeam.EnableVisionUnderAttack(team)
  local memb = team.oFirst
  while memb ~= nil do
    local ent = memb.oEnt
    AIEnemy.EnableVisionUnderAttack(ent)
    memb = team:oNext(memb)
  end
end
