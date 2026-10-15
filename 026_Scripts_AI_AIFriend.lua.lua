AIFriend = {}

function AIFriend.main()
end

function AIFriend.DoTaunt(EntityName)
  if Actions.PlayerInCatch.Value == 1 then
    return
  end
  local ent = Game.GetEntity(EntityName)
  if ent and ent.Active == 1 and ent.oAI and ent.Life > 0 and ent.oAI:CanSayTaunt() then
    ent.oAI:SaySomething()
  end
end

AIFriend.TauntPlayerEvent = {
  {
    "AIFriend.DoTaunt",
    V3D(64, 128, 200)
  }
}
