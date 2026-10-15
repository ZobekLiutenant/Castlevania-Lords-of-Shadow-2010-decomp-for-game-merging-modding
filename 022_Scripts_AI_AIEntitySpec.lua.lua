AIEntitySpec = {}

function AIEntitySpec.main()
end

function AIEntitySpec.Init(ent, listProp)
  ent.oAI.uData.EnableVisionAttack = true
  AIEntity.Init(ent)
end

function AIEntitySpec.InTeamOrig(ent)
  return ent.uData.TeamOrig == ent.oAI.Team
end
