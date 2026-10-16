function Belmont_TiredTracks.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("TiredExplode")
  if am ~= nil then
    local Track = am.oTracks:Add("TiredTrack")
    Track.OnSwitch = "Tired.OnTiredSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TiredRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("TiredTrack")
    Track.OnSwitch = "Tired.OnTiredSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TiredRelaxEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("TiredTrack")
    Track.OnSwitch = "Tired.OnTiredSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TiredRelaxInit")
  if am ~= nil then
    local Track = am.oTracks:Add("TiredTrack")
    Track.OnSwitch = "Tired.OnTiredSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
end
