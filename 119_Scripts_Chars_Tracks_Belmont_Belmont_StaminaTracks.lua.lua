function Belmont_StaminaTracks.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("WhipComboLMh")
  if am ~= nil then
    local Track = am.oTracks:Add("StaminaTrack")
    Track.OnSwitch = "Stamina.OnStaminaSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboLMhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("StaminaTrack")
    Track.OnSwitch = "Stamina.OnStaminaSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMh")
  if am ~= nil then
    local Track = am.oTracks:Add("StaminaTrack")
    Track.OnSwitch = "Stamina.OnStaminaSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("StaminaTrack")
    Track.OnSwitch = "Stamina.OnStaminaSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMhs")
  if am ~= nil then
    local Track = am.oTracks:Add("StaminaTrack")
    Track.OnSwitch = "Stamina.OnStaminaSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMhss")
  if am ~= nil then
    local Track = am.oTracks:Add("StaminaTrack")
    Track.OnSwitch = "Stamina.OnStaminaSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMhsss")
  if am ~= nil then
    local Track = am.oTracks:Add("StaminaTrack")
    Track.OnSwitch = "Stamina.OnStaminaSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
end
