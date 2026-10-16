function BelmontCombat_Tracks.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("CrossOneSelf")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 36
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 36
    seg.bEmpty = false
    seg.Info = "6"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 36
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangFromEdge")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangFromEdge0")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallFromEdge")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallFromEdge0")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("KeyPick")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("KickGrenade")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "3"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PlaceCrystal")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushBack")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushBackEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushBackInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushGetKeyLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushGetKeyRight")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushRelaxEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushRelaxInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushSetKeyLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushSetKeyRight")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushWalkLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushWalkLeftEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushWalkLeftInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushWalkRight")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushWalkRightEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushWalkRightInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("RagDollDestroy")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("StatueMiniGameLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("StatueMiniGameWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TakeWater")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TbCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TbCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TeleportEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 120
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TrapDestroy")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("UseKey")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 78
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WebDestroy")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchShieldLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchShieldWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk3CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlock")
  if am ~= nil then
    local Track = am.oTracks:Add("IsBlocking")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6,0,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboAEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 42
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboAInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0,0.0,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "WhipBlockComboAEnd"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1"
    seg = Track[2]
    seg.Init = 14
    seg.bEmpty = false
    seg.Info = "2"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboALoop")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0,0.0,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBlockComboAEnd"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboDEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 55
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboDInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0,0.0,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "WhipBlockComboDEnd"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1"
    seg = Track[2]
    seg.Init = 19
    seg.bEmpty = false
    seg.Info = "2"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboDLoop")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0,0.0,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBlockComboDEnd"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboJInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0,0.0,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBlockSommerJump"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "WhipBlockComboUppercut"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboUppercut")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 35
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "0.1000,_Variable,,,,0.0,-79.0000,0.0,500,,0,0.0,0.0,1.0000"
    seg = Track[2]
    seg.Init = 10
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "Yes"
    seg = Track[2]
    seg.Init = 30
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboUppercutJ")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 41
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboUppercutL")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0,0.0,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBlockComboUppercut"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("IsBlocking")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6,0,0"
    seg = Track[2]
    seg.Init = 51
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 46
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockHit")
  if am ~= nil then
    local Track = am.oTracks:Add("IsBlocking")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6,0,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockHitBreak")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockHitSync")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsBlocking")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6,0,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockInit")
  if am ~= nil then
    local Track = am.oTracks:Add("IsBlocking")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6,0,0"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "2"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockSommerJump")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 33
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "Yes"
    seg = Track[2]
    seg.Init = 24
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("BlockOnPress")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 32
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockSommerJumpD")
  if am ~= nil then
    local Track = am.oTracks:Add("BlockOnPress")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 35
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockSommerJumpDD")
  if am ~= nil then
    local Track = am.oTracks:Add("BlockOnPress")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 52
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockSommerJumpDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("BlockOnPress")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 58
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 42
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboA")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAA")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAAA")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 55
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAAAAh")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "3.0000,0.0000,0.3000"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboAAAAhEnd"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.1200,AAAh(Small),AAAh(Average),AAAh(Giant),AAAh(Large),0.0,-100.0000,0.0,600,,0,90.0000,0.0,0.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit2")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit2"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.2500,Magnet,,,,0.0,-100.0000,0.0,1000,,0,0.0,0.0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAAAAhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "3.0000,0.0,2.0000"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "WhipComboAAAAhEnd"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "0.0300,AAAh(Small),AAAh(Average),AAAh(Large),AAAh(Giant),0.0,-100.0000,0.0,600,,0,0.0,0.0,1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit2")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit2"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "0.05,Magnet,,,,0.0,-100.0000,0.0,1000,,0,0.0,0.0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboADLh")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboADLhEnd"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("DeadlyCone")
    Track.Info = "400.0000,4999.9999,sqq,400.0000,400.0000,qss,4.0000,2.0000,60.0000"
    Track.OnSwitch = "TracksCallBacks.SwitchDeadlyCone"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboADLhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 24
    seg.bEmpty = false
    seg.Info = "WhipComboADLhEnd"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("DeadlyCone")
    Track.Info = "400.0000,3000.0000,qqs,400.0000,4000.0000,qss,4.0000,2.0000,60.0000"
    Track.OnSwitch = "TracksCallBacks.SwitchDeadlyCone"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 21
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAJ")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 25
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 26
    seg.bEmpty = false
    seg.Info = "0.0,AJ(Small),AJ(Average),AJ(Large),AJ(Giant),0.0,0.0,0.0,500,,0,0.0,0.0,0.0"
    seg = Track[2]
    seg.Init = 32
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAhAAlt")
  if am ~= nil then
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "0.1000,FistOfTheNorthStar(SmallAverage),FistOfTheNorthStar(LargeGiant),,,0.0,0.0,-250.0000,130,,0,0.0,0.0,0.0"
    seg = Track[2]
    seg.Init = 39
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit2")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit2"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "0.1000,FistOfTheNorthStar(SmallAverage),FistOfTheNorthStar(LargeGiant),,,0.0,0.0,-550.0000,130,,0,0.0,0.0,0.0"
    seg = Track[2]
    seg.Init = 39
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboD")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDAD")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "5.0000,0.0000,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboDADEnd"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.1000,DAD(Small),DAD(Average),DAD(Large),,-21.0000,33.0000,-96.0000,250,,0,0.0,0.0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDADInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "2.0000,0.0000,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 40
    seg.bEmpty = false
    seg.Info = "WhipComboDADEnd"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 36
    seg.bEmpty = false
    seg.Info = "0.0,DAD(Small),DAD(Average),DAD(Large),,-21.0000,33.0000,-96.0000,250,,0,0.0,0.0,1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDD")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDDDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "3.0000,3.0000,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboDDDDDDEnd"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDDDDDInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "3.0000,3.0000,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 26
    seg.bEmpty = false
    seg.Info = "WhipComboDDDDDDEnd"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 19
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDh")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "3"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDhD")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 19
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 1
    seg.bEmpty = false
    seg.Info = "Yes"
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDhEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "3"
    seg = Track[2]
    seg.Init = 36
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "3"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDJ")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMhs")
  if am ~= nil then
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "0.0,StaminaAttack(Small),StaminaAttack(Average),StaminaAttack(Large),StaminaAttack(Giant),0.0,-14.0000,0.0,140,,0,0.0,0.0,0.0"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMhss")
  if am ~= nil then
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "0.0,StaminaAttack(Small),StaminaAttack(Average),StaminaAttack(Large),StaminaAttack(Giant),0.0,-20.0000,0.0,140,,0,0.0,0.0,0.0"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMhsss")
  if am ~= nil then
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "0.0,StaminaAttack(Small),StaminaAttack(Average),StaminaAreaAttack(Large),StaminaAreaAttack(Giant),0.0,-20.0000,0.0,140,,0,0.0,0.0,0.0"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboExpl")
  if am ~= nil then
    local Track = am.oTracks:Add("OnPressFunc")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "PressArea,WeaponsAttacks.ExplosionPress"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboExplInit")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("OnPressFunc")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "PressArea,WeaponsAttacks.ExplosionPress"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCrossOneSelf")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 36
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 36
    seg.bEmpty = false
    seg.Info = "6"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 36
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCrystalPower")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCrystalPowerEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 101
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 101
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCrystalPowerInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "No"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0,0.0,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "WhipRelax"
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "WhipCrystalPowerEnd"
    seg = Track[3]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 16
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDarkDodgeFront")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 24
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "0.0,DarkDodge(Small),DarkDodge(Average),DarkDodge(Large),DarkDodge(Giant),0.0000,-13.0000,35.0000,210,,0,0.0,0.0,0.0"
    seg = Track[2]
    seg.Init = 10
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDl2Catched2Lose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDl2Catched2Win")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeBack")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsBlocking")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "6,0,0"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 1
    seg.bEmpty = false
    seg.Info = "0.1000,Dodge(Small),,,,0.0,-80.0000,30.0000,90,,0,0.0,0.0,1.0000"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeBackRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 19
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeBackToRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeComboA")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeComboD")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeFront")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 24
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsBlocking")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 19
    seg.bEmpty = false
    seg.Info = "6,0,0"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 1
    seg.bEmpty = false
    seg.Info = "0.1000,Dodge(Small),,,,0.0,-80.0000,-30.0000,90,,0,0.0,0.0,1.0000"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeFrontRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 16
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsBlocking")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "6,0,0"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 1
    seg.bEmpty = false
    seg.Info = "0.1000,Dodge(Small),,,,30.0000,-80.0000,0.0,90,,0,0.0,0.0,1.0000"
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeLeftRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 16
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeLeftToRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeRight")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsBlocking")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "6,0,0"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 1
    seg.bEmpty = false
    seg.Info = "0.1000,Dodge(Small),,,,-30.0000,-80.0000,0.0,90,,0,0.0,0.0,1.0000"
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeRightRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeRightToRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "Yes"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallBlockComboAEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 53
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallBlockComboAInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 3
    seg.bEmpty = false
    seg.Info = "WhipFallBlockComboAEnd"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallBlockComboDEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 74
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallBlockComboDInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "WhipFallBlockComboDEnd"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboA")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboAA")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 25
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboAh")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 45
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[2]
    seg.Init = 40
    seg.bEmpty = false
    seg.Info = "0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboD")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "2"
    seg = Track[3]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboDDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.1000,FallComboDDD(Small),FallComboDDD(Average),FallComboDDD(Large),,-18.0000,-66.0000,-18.0000,130,,0,0.0,0.0,0.0"
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboDh")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0,0.0,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipFallComboDhEnd"
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "WhipFallComboDhD"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboDhEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanJump")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 50
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboDhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboKInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0,0.0,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 3
    seg.bEmpty = false
    seg.Info = "WhipFallComboKEnd"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboStomp")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 36
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallRunEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallShortEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardBack")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 40
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardBackFix")
  if am ~= nil then
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 14
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 14
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg = Track[2]
    seg.Init = 14
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardFw")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 34
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardFwFix")
  if am ~= nil then
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 34
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardLeftFix")
  if am ~= nil then
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardRight")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 34
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardRightFix")
  if am ~= nil then
    local Track = am.oTracks:Add("IsDodging")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Any Dodge"
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ForceIsJumping")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Yes"
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitMedBack")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitMedFw")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitMedLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitMedRight")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitSoftBack")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitSoftFw")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitSoftLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitSoftRight")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipOpenChest")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPlaceCrystal")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPullBridgeLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPullBridgeWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPullGenericLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPullGenericWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPullPlankBLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPullPlankBWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPullPlankLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPullPlankWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 48
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 91
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSmFailInit")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 35
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 66
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSprintComboAD")
  if am ~= nil then
    local Track = am.oTracks:Add("MeleeHit")
    Track.OnSwitch = "TracksCallBacks.SwitchMeleeHit"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 24
    seg.bEmpty = false
    seg.Info = "0.0,PushWave(Small),PushWave(Large),,,0.0000,0.0000,-150.0000,250,,0,0.0,0.0,1.0000"
    seg = Track[2]
    seg.Init = 36
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipStunnedEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 97
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSyncComboA")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("BlockOnPress")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSyncComboAA")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6"
    seg = Track[2]
    seg.Init = 42
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("BlockOnPress")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSyncComboAAA")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6"
    seg = Track[2]
    seg.Init = 57
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("BlockOnPress")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSyncComboAAAA")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6"
    seg = Track[2]
    seg.Init = 70
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("BlockOnPress")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSyncComboAAAAA")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6"
    seg = Track[2]
    seg.Init = 84
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("BlockOnPress")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSyncComboD")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("BlockOnPress")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSyncComboDD")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("BlockOnPress")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSyncComboDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "6"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("BlockOnPress")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTakeWater")
  if am ~= nil then
    local Track = am.oTracks:Add("Intangibility")
    Track.OnSwitch = "TracksCallBacks.SwitchIntangibility"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 514
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 396
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipThrowDaggerInit")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0,0.0,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "WhipThrowDaggerEnd"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipThrowDaggerLoop")
  if am ~= nil then
    local Track = am.oTracks:Add("ReleaseButtonAction")
    Track.Info = "0.0,0.0,0.0"
    Track.OnSwitch = "TracksCallBacks.SwitchReleaseButtonAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipThrowDaggerEnd"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipThrowVialLM")
  if am ~= nil then
    local Track = am.oTracks:Add("Reactionability")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "3"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "6"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTombInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTombLoop")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTombLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTombOpen")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTombWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FairiesNotAllowed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceCanBlock")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "No"
    seg = Track[2]
    seg.Init = 70
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
end
