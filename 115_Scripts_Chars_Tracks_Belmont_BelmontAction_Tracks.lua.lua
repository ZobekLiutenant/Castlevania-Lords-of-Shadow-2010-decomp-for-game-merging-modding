function BelmontAction_Tracks.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("BalanceDodge")
  if am ~= nil then
    local Track = am.oTracks:Add("JumpLine")
    Track.OnSwitch = "!HangJumpSwitchTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("EquilibriumRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("LockSprint")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("EquilibriumShake")
  if am ~= nil then
    local Track = am.oTracks:Add("LockSprint")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("EquilibriumShakeLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("LockSprint")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("EquilibriumShakeRight")
  if am ~= nil then
    local Track = am.oTracks:Add("LockSprint")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("EquilibriumWalk")
  if am ~= nil then
    local Track = am.oTracks:Add("LockSprint")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("FirstCut")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 70
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("FistChargedDL2V")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallFarLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("JumpLine")
    Track.OnSwitch = "!HangJumpSwitchTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallFarLeft0")
  if am ~= nil then
    local Track = am.oTracks:Add("JumpLine")
    Track.OnSwitch = "!HangJumpSwitchTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallFarLeftSwitch")
  if am ~= nil then
    local Track = am.oTracks:Add("JumpLine")
    Track.OnSwitch = "!HangJumpSwitchTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 25
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallFarRight")
  if am ~= nil then
    local Track = am.oTracks:Add("JumpLine")
    Track.OnSwitch = "!HangJumpSwitchTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallFarRight0")
  if am ~= nil then
    local Track = am.oTracks:Add("JumpLine")
    Track.OnSwitch = "!HangJumpSwitchTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallFarRightSwitch")
  if am ~= nil then
    local Track = am.oTracks:Add("JumpLine")
    Track.OnSwitch = "!HangJumpSwitchTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 25
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallLookLeftFarLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("JumpLine")
    Track.OnSwitch = "!HangJumpSwitchTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallLookLeftFarLeft0")
  if am ~= nil then
    local Track = am.oTracks:Add("JumpLine")
    Track.OnSwitch = "!HangJumpSwitchTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallLookLeftFarLeftSwitch")
  if am ~= nil then
    local Track = am.oTracks:Add("JumpLine")
    Track.OnSwitch = "!HangJumpSwitchTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 25
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallLookRightFarRight")
  if am ~= nil then
    local Track = am.oTracks:Add("JumpLine")
    Track.OnSwitch = "!HangJumpSwitchTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallLookRightFarRight0")
  if am ~= nil then
    local Track = am.oTracks:Add("JumpLine")
    Track.OnSwitch = "!HangJumpSwitchTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HangWallLookRightFarRightSwitch")
  if am ~= nil then
    local Track = am.oTracks:Add("JumpLine")
    Track.OnSwitch = "!HangJumpSwitchTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 25
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HookLinear45")
  if am ~= nil then
    local Track = am.oTracks:Add("SkipFixSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HookLinear45Fall")
  if am ~= nil then
    local Track = am.oTracks:Add("SkipFixSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HookLinear45FallRun")
  if am ~= nil then
    local Track = am.oTracks:Add("SkipFixSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HookLinearFw")
  if am ~= nil then
    local Track = am.oTracks:Add("SkipFixSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HookLinearFwFall")
  if am ~= nil then
    local Track = am.oTracks:Add("SkipFixSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HookLinearFwFallRun")
  if am ~= nil then
    local Track = am.oTracks:Add("SkipFixSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HookLinearUp")
  if am ~= nil then
    local Track = am.oTracks:Add("SkipFixSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HookLinearUpFall")
  if am ~= nil then
    local Track = am.oTracks:Add("SkipFixSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("HookLinearUpFallRun")
  if am ~= nil then
    local Track = am.oTracks:Add("SkipFixSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("JumpInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.4000"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("KickBoom")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 6
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[3]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[4]
    seg.Init = 16
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[5]
    seg.Init = 25
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[6]
    seg.Init = 32
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("KickBoom0")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("KickGrenade")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.9000"
    seg = Track[2]
    seg.Init = 50
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PreButcher")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0,1.0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("RagDollDestroy")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2.0000"
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("ReaperDoorMiniGameBack")
  if am ~= nil then
    local Track = am.oTracks:Add("HideTip")
    Track.OnSwitch = "TracksCallBacks.HideTip"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("ReaperDoorMiniGameInit")
  if am ~= nil then
    local Track = am.oTracks:Add("HideTip")
    Track.OnSwitch = "TracksCallBacks.HideTip"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("ReaperDoorMiniGameLose")
  if am ~= nil then
    local Track = am.oTracks:Add("HideTip")
    Track.OnSwitch = "TracksCallBacks.HideTip"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("ReaperDoorMiniGameWin")
  if am ~= nil then
    local Track = am.oTracks:Add("HideTip")
    Track.OnSwitch = "TracksCallBacks.HideTip"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawBack")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[3]
    seg.Init = 12
    seg.bEmpty = false
    seg.Info = "1.8000"
    seg = Track[4]
    seg.Init = 19
    seg.bEmpty = false
    seg.Info = "2.5000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawBackRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawGo")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 2
    seg.bEmpty = false
    seg.Info = "1.7000"
    seg = Track[3]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "1.3000"
    seg = Track[4]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawGoRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawInit")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.5000"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawLose")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
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
  am = ac:GetAct("SawRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawWin")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 7
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "0.4000"
    seg = Track[3]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "0.4000"
    seg = Track[4]
    seg.Init = 14
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[5]
    seg.Init = 16
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[6]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[7]
    seg.Init = 26
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 37
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawWinLoop")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0000"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SpearMiniGameInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SpearMiniGameRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("StatueMiniGameBack")
  if am ~= nil then
    local Track = am.oTracks:Add("HideTip")
    Track.OnSwitch = "TracksCallBacks.HideTip"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("StatueMiniGameInit")
  if am ~= nil then
    local Track = am.oTracks:Add("HideTip")
    Track.OnSwitch = "TracksCallBacks.HideTip"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("StatueMiniGameLose")
  if am ~= nil then
    local Track = am.oTracks:Add("HideTip")
    Track.OnSwitch = "TracksCallBacks.HideTip"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("StatueMiniGameWin")
  if am ~= nil then
    local Track = am.oTracks:Add("HideTip")
    Track.OnSwitch = "TracksCallBacks.HideTip"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TbCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TbCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 14
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TbCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 98
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TbCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TrapDestroy")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2.0000"
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("UseMirror")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 135
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("UsePengoSwitch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("UsePengoSwitchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 138
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("UsePengoSwitchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 18
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WebDestroy")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2.0000"
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatch2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 21
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 103
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = false
    seg.Info = "0.2000"
    seg = Track[3]
    seg.Init = 14
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 80
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchShieldWin")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.6000"
    seg = Track[2]
    seg.Init = 66
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[2]
    seg.Init = 93
    seg.bEmpty = false
    seg.Info = "1.8000"
    seg = Track[3]
    seg.Init = 96
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 200
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk3Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk3CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 36
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk3CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 146
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlock")
  if am ~= nil then
    local Track = am.oTracks:Add("BlockTimeControl")
    Track.OnSwitch = "TracksCallBacks.BlockTimeControl"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboAEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[2]
    seg.Init = 40
    seg.bEmpty = false
    seg.Info = "1.2500"
    seg = Track[3]
    seg.Init = 73
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboAInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.6000"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[3]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[4]
    seg.Init = 16
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboDEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.3000"
    seg = Track[2]
    seg.Init = 36
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboDInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.6000"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[3]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[4]
    seg.Init = 16
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboJInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.6700"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "0.4200"
    seg = Track[3]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "0.2200"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboUppercut")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "0.7000"
    seg = Track[3]
    seg.Init = 36
    seg.bEmpty = false
    seg.Info = "0.8500"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockHitSync")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.3000"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2.0000"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "1.5000"
    seg = Track[3]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("BlockTimeControl")
    Track.OnSwitch = "TracksCallBacks.BlockTimeControl"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockSommerJump")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 26
    seg.bEmpty = false
    seg.Info = "0.4000"
    seg = Track[3]
    seg.Init = 29
    seg.bEmpty = false
    seg.Info = "0.7000"
    seg = Track[4]
    seg.Init = 34
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0000,0.0000,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 117
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 360
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 206
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 333
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0000,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCcHold")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 162
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 5
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[3]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "0.7000"
    seg = Track[4]
    seg.Init = 14
    seg.bEmpty = false
    seg.Info = "0.8500"
    seg = Track[5]
    seg.Init = 22
    seg.bEmpty = false
    seg.Info = "0.9000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 35
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 19
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCharge")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.2500"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipChargeEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.5000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipChargeInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.5000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "0.6500"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 17
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 12
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 125
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 67
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 6
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.9000"
    seg = Track[2]
    seg.Init = 22
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[3]
    seg.Init = 40
    seg.bEmpty = false
    seg.Info = "0.9000"
    seg = Track[4]
    seg.Init = 88
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[5]
    seg.Init = 92
    seg.bEmpty = false
    seg.Info = "1.2500"
    seg = Track[6]
    seg.Init = 96
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 114
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 12
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 124
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 162
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 115
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboA")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "1.4000"
    seg = Track[3]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAA")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "1.4000"
    seg = Track[3]
    seg.Init = 26
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAAA")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[2]
    seg.Init = 37
    seg.bEmpty = false
    seg.Info = "1.4000"
    seg = Track[3]
    seg.Init = 46
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAAAAh")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAAAAhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboADLh")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboADLhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAJ")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.8000"
    seg = Track[2]
    seg.Init = 26
    seg.bEmpty = false
    seg.Info = "1.3000"
    seg = Track[3]
    seg.Init = 40
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAhAAlt")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2.9900"
    seg = Track[2]
    seg.Init = 39
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDA")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[3]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "1.5000"
    seg = Track[4]
    seg.Init = 28
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDADInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimDisp")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 29
    seg.bEmpty = false
    seg.Info = "0.0,0.0,-600.0000"
    seg = Track[2]
    seg.Init = 39
    seg.bEmpty = false
    seg.Info = "0.0,0.0,-200.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDDDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDDDDDInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDhD")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 5
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[2]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[3]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[4]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "0.4000"
    seg = Track[5]
    seg.Init = 28
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDJJ")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = false
    seg.Info = "1.5000"
    seg = Track[3]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDhDAlt")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.4000"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrDrDrD")
  if am ~= nil then
    local Track = am.oTracks:Add("RepetitionControl")
    Track.OnSwitch = "TracksCallBacks.RepetitionControl"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1"
    seg = Track[2]
    seg.Init = 43
    seg.bEmpty = false
    seg.Info = "0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrDrDrDrD")
  if am ~= nil then
    local Track = am.oTracks:Add("RepetitionControl")
    Track.OnSwitch = "TracksCallBacks.RepetitionControl"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrDrDrDrDrD")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 5
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[2]
    seg.Init = 67
    seg.bEmpty = false
    seg.Info = "0.4000"
    seg = Track[3]
    seg.Init = 73
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[4]
    seg.Init = 82
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[5]
    seg.Init = 86
    seg.bEmpty = false
    seg.Info = "0.7000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboExpl")
  if am ~= nil then
    local Track = am.oTracks:Add("RepetitionControl")
    Track.OnSwitch = "TracksCallBacks.RepetitionControl"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1"
    seg = Track[2]
    seg.Init = 45
    seg.bEmpty = false
    seg.Info = "0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboLMh")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.3000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboLMhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 19
    seg.bEmpty = false
    seg.Info = "1.3000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 58
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[3]
    seg.Init = 62
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SkipFixSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 28
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 6
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "0.4000"
    seg = Track[3]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[4]
    seg.Init = 47
    seg.bEmpty = false
    seg.Info = "1.5000"
    seg = Track[5]
    seg.Init = 60
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[6]
    seg.Init = 65
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 106
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 7
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 229
    seg.bEmpty = false
    seg.Info = "0.2800"
    seg = Track[3]
    seg.Init = 230
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[4]
    seg.Init = 236
    seg.bEmpty = false
    seg.Info = "0.4000"
    seg = Track[5]
    seg.Init = 242
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[6]
    seg.Init = 262
    seg.bEmpty = false
    seg.Info = "0.5500"
    seg = Track[7]
    seg.Init = 271
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 298
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2Catched")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 56
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 264
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 184
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDarkDodgeFront")
  if am ~= nil then
    local Track = am.oTracks:Add("BlockTimeControl")
    Track.OnSwitch = "TracksCallBacks.BlockTimeControl"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDl2Catched2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDl2Catched2Init")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 72
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDl2Catched2Lose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 75
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDl2Catched2Win")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeBack")
  if am ~= nil then
    local Track = am.oTracks:Add("BlockTimeControl")
    Track.OnSwitch = "TracksCallBacks.BlockTimeControl"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 26
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeFront")
  if am ~= nil then
    local Track = am.oTracks:Add("BlockTimeControl")
    Track.OnSwitch = "TracksCallBacks.BlockTimeControl"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 26
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeFrontRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 5
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.8700"
    seg = Track[2]
    seg.Init = 14
    seg.bEmpty = false
    seg.Info = "0.7400"
    seg = Track[3]
    seg.Init = 16
    seg.bEmpty = false
    seg.Info = "0.7600"
    seg = Track[4]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "0.8500"
    seg = Track[5]
    seg.Init = 23
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("BlockTimeControl")
    Track.OnSwitch = "TracksCallBacks.BlockTimeControl"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 26
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeLeftRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[3]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "0.9000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeRight")
  if am ~= nil then
    local Track = am.oTracks:Add("BlockTimeControl")
    Track.OnSwitch = "TracksCallBacks.BlockTimeControl"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 26
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeRightRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[3]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "0.9000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 5
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 31
    seg.bEmpty = false
    seg.Info = "0.4400"
    seg = Track[3]
    seg.Init = 44
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[4]
    seg.Init = 95
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[5]
    seg.Init = 114
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 166
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 210
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 209
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 11
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "0.3500"
    seg = Track[3]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "0.3000"
    seg = Track[4]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "0.7500"
    seg = Track[5]
    seg.Init = 25
    seg.bEmpty = false
    seg.Info = "0.3500"
    seg = Track[6]
    seg.Init = 30
    seg.bEmpty = false
    seg.Info = "0.7500"
    seg = Track[7]
    seg.Init = 50
    seg.bEmpty = false
    seg.Info = "0.3500"
    seg = Track[8]
    seg.Init = 53
    seg.bEmpty = false
    seg.Info = "0.3000"
    seg = Track[9]
    seg.Init = 57
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[10]
    seg.Init = 60
    seg.bEmpty = false
    seg.Info = "0.3500"
    seg = Track[11]
    seg.Init = 65
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 9
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 225
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 172
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.8500"
    seg = Track[2]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "0.7000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 5
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.9000"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[3]
    seg.Init = 31
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[4]
    seg.Init = 49
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[5]
    seg.Init = 73
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 17
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 86
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchLose0")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 114
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 10
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 30
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[3]
    seg.Init = 32
    seg.bEmpty = false
    seg.Info = "1.7000"
    seg = Track[4]
    seg.Init = 38
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[5]
    seg.Init = 44
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[6]
    seg.Init = 61
    seg.bEmpty = false
    seg.Info = "2.4000"
    seg = Track[7]
    seg.Init = 74
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[8]
    seg.Init = 226
    seg.bEmpty = false
    seg.Info = "1.7000"
    seg = Track[9]
    seg.Init = 242
    seg.bEmpty = false
    seg.Info = "0.2500"
    seg = Track[10]
    seg.Init = 244
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 9
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 226
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 168
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallBlockComboAEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 50
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[3]
    seg.Init = 55
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallBlockComboAInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallBlockComboDEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 42
    seg.bEmpty = false
    seg.Info = "1.2500"
    seg = Track[3]
    seg.Init = 59
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("AnimDisp")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.0,0.0,-4000.0000"
    seg = Track[2]
    seg.Init = 40
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallBlockComboDInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboA")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.4000"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[3]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "1.6000"
    seg = Track[4]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboAA")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 19
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[3]
    seg.Init = 29
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboAh")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[3]
    seg.Init = 43
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[4]
    seg.Init = 57
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 42
    seg.bEmpty = false
    seg.Info = "0.4000"
    seg = Track[3]
    seg.Init = 47
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[4]
    seg.Init = 52
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboDDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.5000"
    seg = Track[2]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "0.4000"
    seg = Track[3]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("AnimDisp")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.0,0.0,0.0"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "0.0,0.0,-500.0000"
    seg = Track[3]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "0.0,0.0,-200.0000"
    seg = Track[4]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "0.0,0.0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboDh")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.4000"
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "0.7900"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboDhD")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 5
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "1.1000"
    seg = Track[3]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "0.7000"
    seg = Track[4]
    seg.Init = 14
    seg.bEmpty = false
    seg.Info = "0.9000"
    seg = Track[5]
    seg.Init = 22
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboGripBig")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.7500"
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[3]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallHit")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallHitEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallHitHard")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallHitHardEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 18
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatchKick")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 69
    seg.bEmpty = false
    seg.Info = "1.5000"
    seg = Track[2]
    seg.Init = 85
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatchLoseEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 27
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 74
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchBomb")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 62
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 109
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 25
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchPunch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 63
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatch2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 6
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 53
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[3]
    seg.Init = 58
    seg.bEmpty = false
    seg.Info = "1.5000"
    seg = Track[4]
    seg.Init = 73
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[5]
    seg.Init = 168
    seg.bEmpty = false
    seg.Info = "0.2500"
    seg = Track[6]
    seg.Init = 170
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 32
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchLose3")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 315
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchWinDoor")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 725
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 27
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 14
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 119
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchPunch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 70
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 82
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 109
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 27
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatchKick")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 38
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatchThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 59
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitFall")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitFallHard")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardBackFix")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.1000"
    seg = Track[2]
    seg.Init = 14
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardFwFix")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.2500"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardLeftFix")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardRightFix")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipJumpInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.4000"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 137
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchLose0")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
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
  am = ac:GetAct("WhipLgCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 109
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 24
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 25
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchKick")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 51
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchPunch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 25
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 24
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 6
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchKick")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 66
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 54
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchScream")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
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
  am = ac:GetAct("WhipMmCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[2]
    seg.Init = 89
    seg.bEmpty = false
    seg.Info = "0.3500"
    seg = Track[3]
    seg.Init = 95
    seg.bEmpty = false
    seg.Info = "0.8500"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatch2Lose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 263
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 5
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 49
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[3]
    seg.Init = 55
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[4]
    seg.Init = 58
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[5]
    seg.Init = 64
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 43
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 152
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 5
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 226
    seg.bEmpty = false
    seg.Info = "2.0000"
    seg = Track[3]
    seg.Init = 245
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[4]
    seg.Init = 296
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[5]
    seg.Init = 320
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 346
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatch_2")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[2]
    seg.Init = 89
    seg.bEmpty = false
    seg.Info = "0.3500"
    seg = Track[3]
    seg.Init = 95
    seg.bEmpty = false
    seg.Info = "0.8500"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatch_3")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[2]
    seg.Init = 89
    seg.bEmpty = false
    seg.Info = "0.3500"
    seg = Track[3]
    seg.Init = 95
    seg.bEmpty = false
    seg.Info = "0.8500"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 12
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1CatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 181
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 5
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 135
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[3]
    seg.Init = 140
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[4]
    seg.Init = 145
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[5]
    seg.Init = 150
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 287
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0000,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 312
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2Catch2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 12
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 408
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0000,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 421
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPullPlankB")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.5"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPullPlankBInit")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.5"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPullPlankBLose")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.5"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 32
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPullPlankBWin")
  if am ~= nil then
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.5"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 75
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.6500"
    seg = Track[2]
    seg.Init = 45
    seg.bEmpty = false
    seg.Info = "0.4000"
    seg = Track[3]
    seg.Init = 51
    seg.bEmpty = false
    seg.Info = "0.7000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatch2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.3500"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 72
    seg.bEmpty = false
    seg.Info = "0.1800"
    seg = Track[3]
    seg.Init = 74
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 96
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 61
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 9
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 125
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[3]
    seg.Init = 137
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[4]
    seg.Init = 148
    seg.bEmpty = false
    seg.Info = "0.4000"
    seg = Track[5]
    seg.Init = 160
    seg.bEmpty = false
    seg.Info = "0.7500"
    seg = Track[6]
    seg.Init = 184
    seg.bEmpty = false
    seg.Info = "0.4000"
    seg = Track[7]
    seg.Init = 194
    seg.bEmpty = false
    seg.Info = "1.1000"
    seg = Track[8]
    seg.Init = 197
    seg.bEmpty = false
    seg.Info = "0.3000"
    seg = Track[9]
    seg.Init = 202
    seg.bEmpty = false
    seg.Info = "0.7500"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 302
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 48
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 79
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 35
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[3]
    seg.Init = 40
    seg.bEmpty = false
    seg.Info = "0.3000"
    seg = Track[4]
    seg.Init = 44
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SkipFixSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 14
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 126
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 120
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 17
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 126
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 96
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 11
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 131
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 226
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideAttack")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideAttack0")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideDoorInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0000,0.7000,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideDoorLoop")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideDoorLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideDoorWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 62
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 20
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 67
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideFail")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 30
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 70
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "0.7000"
    seg = Track[3]
    seg.Init = 26
    seg.bEmpty = false
    seg.Info = "1.3000"
    seg = Track[4]
    seg.Init = 42
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 57
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideHitDeath")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideHitMed")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideHitSoft")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideRun")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideRunEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideSpit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideWalk")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideWalkEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideWalkInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSmCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 8
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "0.6500"
    seg = Track[3]
    seg.Init = 25
    seg.bEmpty = false
    seg.Info = "0.1500"
    seg = Track[4]
    seg.Init = 27
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[5]
    seg.Init = 35
    seg.bEmpty = false
    seg.Info = "0.2000"
    seg = Track[6]
    seg.Init = 37
    seg.bEmpty = false
    seg.Info = "0.6000"
    seg = Track[7]
    seg.Init = 46
    seg.bEmpty = false
    seg.Info = "0.8000"
    seg = Track[8]
    seg.Init = 54
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 29
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 49
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSmFailInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 12
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 65
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSprintComboAD")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimDisp")
    Track.n = 5
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.0,0.0,0.0000"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "0.0,0.0,-250.0000"
    seg = Track[3]
    seg.Init = 17
    seg.bEmpty = false
    seg.Info = "0.0,0.0,-500.0000"
    seg = Track[4]
    seg.Init = 26
    seg.bEmpty = false
    seg.Info = "0.0,0.0,-250.0000"
    seg = Track[5]
    seg.Init = 31
    seg.bEmpty = false
    seg.Info = "0.0,0.0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSprintComboDDark")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "2.0000"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "0.2000"
    seg = Track[3]
    seg.Init = 16
    seg.bEmpty = false
    seg.Info = "2.0000"
    seg = Track[4]
    seg.Init = 22
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("AnimDisp")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.0,0.0,-250.0000"
    seg = Track[2]
    seg.Init = 29
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
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
  am = ac:GetAct("WhipSwCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch2Init")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 10
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "0.6600"
    seg = Track[3]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[4]
    seg.Init = 22
    seg.bEmpty = false
    seg.Info = "0.6600"
    seg = Track[5]
    seg.Init = 32
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[6]
    seg.Init = 47
    seg.bEmpty = false
    seg.Info = "0.6600"
    seg = Track[7]
    seg.Init = 56
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[8]
    seg.Init = 60
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[9]
    seg.Init = 88
    seg.bEmpty = false
    seg.Info = "0.6600"
    seg = Track[10]
    seg.Init = 94
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SkipFixSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 20
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 135
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch2Lose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 91
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch2Lose2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 130
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch2Lose3")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 184
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 65
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[3]
    seg.Init = 80
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SkipFixSpeed")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 13
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 211
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 105
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 217
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 22
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 127
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchLose1")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 209
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 485
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 5
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 330
    seg.bEmpty = false
    seg.Info = "0.8500"
    seg = Track[3]
    seg.Init = 334
    seg.bEmpty = false
    seg.Info = "0.5000"
    seg = Track[4]
    seg.Init = 340
    seg.bEmpty = false
    seg.Info = "0.8500"
    seg = Track[5]
    seg.Init = 345
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 337
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbFailFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 44
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 69
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideAttack")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideAttack0")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideComboA")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideComboAA")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideComboAAA")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideComboAAAA")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideComboAAAAA")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideComboD")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideComboDD")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideComboDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideComboDDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 120
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 146
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideFail")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 20
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 62
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideFall")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideFallEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideFallInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 56
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideHitSoft")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideHitTb")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideHitTbDeath")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 4
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 7
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 54
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideRun")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideRunEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideTurnLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideTurnRight")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideWalk")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideWalkEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideWalkInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipThrowDaggerInit")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.4600"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "2.1500"
    seg = Track[3]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "4.6100"
    seg = Track[4]
    seg.Init = 33
    seg.bEmpty = false
    seg.Info = "5.0600"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipThrowVialLM")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 7
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[3]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "0.7500"
    seg = Track[4]
    seg.Init = 17
    seg.bEmpty = false
    seg.Info = "1.2000"
    seg = Track[5]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "0.7000"
    seg = Track[6]
    seg.Init = 26
    seg.bEmpty = false
    seg.Info = "0.8500"
    seg = Track[7]
    seg.Init = 30
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTombInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTombLoop")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTombLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 204
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 204
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTombOpen")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 18
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTombWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 275
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("UseMaxCamera")
    Track.Info = "0.0,0.0,0"
    Track.OnSwitch = "Camera.MaxCameraSwitch"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 275
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 108
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 23
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchHitA")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 64
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchHitD")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 63
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchHitJ")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
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
  am = ac:GetAct("WhipTsCatchHitK")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
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
  am = ac:GetAct("WhipTsCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 71
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("AnimSpeed")
    Track.n = 9
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "0.3000"
    seg = Track[3]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "1.6000"
    seg = Track[4]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[5]
    seg.Init = 19
    seg.bEmpty = false
    seg.Info = "0.3500"
    seg = Track[6]
    seg.Init = 22
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg = Track[7]
    seg.Init = 24
    seg.bEmpty = false
    seg.Info = "1.7000"
    seg = Track[8]
    seg.Init = 32
    seg.bEmpty = false
    seg.Info = "0.7500"
    seg = Track[9]
    seg.Init = 49
    seg.bEmpty = false
    seg.Info = "1.0000"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 43
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 7
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 168
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 105
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 17
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 14
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 67
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 11
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 63
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 48
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideAttack")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideAttack1")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 30
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideFail")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 65
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideFall")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideFallEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideFallInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 17
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideHitDeath")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 19
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideHitMed")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideHitSoft")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 20
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideJump")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideJumpAbort")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideJumpShort")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideSprint")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideSprintEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideSprintInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideTurnLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideTurnRight")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideWalk")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideWalkEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideWalkInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideWalkTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideAttack")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideAttack0")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideAttack1")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideCrash")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 43
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideFail")
  if am ~= nil then
    local Track = am.oTracks:Add("ForceWall")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 84
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 61
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideHitMed")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideHitSoft")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 11
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideRunAttack")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideTurnLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideTurnRight")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideWalk")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideWalkEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideWalkInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 125
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatchHead")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 28
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatchThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("NoPowerSwitch")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 25
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
end
