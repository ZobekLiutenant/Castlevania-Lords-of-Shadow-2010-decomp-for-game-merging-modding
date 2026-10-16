function Belmont_MiniGameTracks.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("WhipEggThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnGame")
    Track.OnSwitch = "MiniGames.TurnStickGame"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "-0.2500,WhipEggThrowFail"
    seg = Track[2]
    seg.Init = 38
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallEggThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnGame")
    Track.OnSwitch = "MiniGames.TurnStickGame"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "-0.5,WhipEggThrowFail"
    seg = Track[2]
    seg.Init = 35
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRockThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnGame")
    Track.OnSwitch = "MiniGames.TurnStickGame"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "-1.0,WhipRockThrowFail"
    seg = Track[2]
    seg.Init = 35
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
end
