AITeam = {}

function AITeam.main()
end

function AITeam.IsViewTarget(nameTeam, nameTarget)
  local team = AITeamList.Get(nameTeam)
  if team == nil then
    return false
  end
  local target = Game.GetEntity(nameTarget)
  if target == nil then
    return false
  end
  local memb = team.oFirst
  while memb ~= nil do
    local e = memb.oEnt
    if e.Name ~= AIGen.GetPlyName() and AI.IsVisibleEntityChar(e.Name, nameTarget) then
      return true
    end
    memb = team:oNext(memb)
  end
  return false
end

function AITeam.GetNumWithHelper(team)
  if team == nil then
    return 0
  end
  local num = 0
  local memb = team.oFirst
  while memb ~= nil do
    local ent = memb.oEnt
    if ent.oAI.oHelper ~= nil then
      num = num + 1
    end
    memb = team:oNext(memb)
  end
  return num
end

function AITeam.GetMinorLife(team, withHelper)
  local minLife = -1
  if team == nil then
    return minLife
  end
  local memb = team.oFirst
  while memb ~= nil do
    local ent = memb.oEnt
    if (not withHelper or withHelper and ent.oAI.oHelper ~= nil) and (minLife == -1 or minLife > ent.Life) then
      minLife = ent.Life
    end
    memb = team:oNext(memb)
  end
  return minLife
end
