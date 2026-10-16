function Tired.main()
end

function Tired.AddTiredAnims(ac)
  local typo = "Tired"
  local am = MakeChar.AddMove(ac, "TiredRelaxInit", "TiredRelaxInit", 0, 1, 0)
  am.PriorityLevel = 4098
  MakeChar.MakeEvent(ac, "TiredRelaxInit", "TiredRelax", "!AnmSetAction")
  am = MakeChar.AddMove(ac, "TiredRelax", "TiredRelax", 0, 1, 1)
  am = MakeChar.AddMove(ac, "TiredRelaxEnd", "TiredRelaxEnd", 0, 1, 0)
  am.PriorityLevel = 1024
  am = MakeChar.AddMove(ac, "TiredExplode", "WebDestroy", 0, 1, 0)
  am.PriorityLevel = 4098
end

function Tired.OnTiredSwitch(entity, track, frame, lastSegment, newSegment)
  if newSegment then
    player.IgnoreUsrControl = 1
  else
    player.IgnoreUsrControl = 0
  end
  if lastSegment then
  end
end
