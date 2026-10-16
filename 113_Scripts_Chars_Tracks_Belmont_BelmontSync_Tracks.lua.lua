function BelmontSync_Tracks.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("FirstCut")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("NdCached")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("NdCachedAttackLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("NdCachedAttackRight")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("NdCachedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("NdCachedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 14
    seg.bEmpty = false
    seg.Info = "DC_Grab,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("NdCachedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PreButcher")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatch2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,,1"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg = Track[2]
    seg.Init = 52
    seg.bEmpty = false
    seg.Info = "None,0"
    seg = Track[3]
    seg.Init = 83
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "None,0"
    seg = Track[3]
    seg.Init = 51
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchShield")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,Me,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchShieldInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,Me,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1"
    seg = Track[2]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "None,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchShieldLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,0"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchShieldWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,Me,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,0"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "None,0"
    seg = Track[3]
    seg.Init = 70
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg = Track[2]
    seg.Init = 200
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "None,0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,0"
    seg = Track[2]
    seg.Init = 78
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg = Track[3]
    seg.Init = 90
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,0"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Face2Face,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Face2Face,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg = Track[2]
    seg.Init = 90
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Face2Face,0"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = 69
    seg.bEmpty = false
    seg.Info = "None,0"
    seg = Track[2]
    seg.Init = 80
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg = Track[3]
    seg.Init = 85
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,0"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk3Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk3CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,"
    seg = Track[2]
    seg.Init = 24
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk3CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,"
    seg = Track[2]
    seg.Init = 87
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "500,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,1,,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 53
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,1,,1"
    seg = Track[2]
    seg.Init = 316
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCcHold")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "10.0000,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "DC_Grab,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,,0"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 19
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "11.7000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,,1"
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "Whip,0,,1"
    seg = Track[3]
    seg.Init = 17
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "8.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,,1"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 88
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,Me,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,Me,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 65
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,,1"
    seg = Track[2]
    seg.Init = 2
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 88
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 99
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 75
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "500.0000,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,1,,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 70
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 272
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,Me,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,1,,1"
    seg = Track[2]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,My target,1"
    seg = Track[3]
    seg.Init = 160
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 179
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1CatchLose0")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 76
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg = Track[2]
    seg.Init = 165
    seg.bEmpty = false
    seg.Info = "None,0,,1"
    seg = Track[3]
    seg.Init = 200
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 291
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchLose0")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 65
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchLose1")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 77
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 146
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,"
    seg = Track[2]
    seg.Init = 375
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,1,,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 29
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchLose0")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = 3
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[4]
    seg.Init = 38
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 303
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatchKick")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,Me,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "DC_Grab,1,Me,1"
    seg = Track[2]
    seg.Init = 85
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchBomb")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab"
    seg = Track[2]
    seg.Init = 49
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = 0
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 40
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[4]
    seg.Init = 90
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = ",1,,1"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "Whip,0,,1"
    seg = Track[3]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "8.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = ",1"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "DC_Grab"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchPunch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,1"
    seg = Track[2]
    seg.Init = 48
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatch2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "10,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0000,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,1,,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg = Track[2]
    seg.Init = 249
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchLose3")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 244
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "21.2000,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 460
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchWinDoor")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 685
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,,1"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "8.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,,1"
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg = Track[2]
    seg.Init = 111
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchPunch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg = Track[2]
    seg.Init = 58
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 62
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 44
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg = Track[2]
    seg.Init = 92
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "6.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatchKick")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = false
    seg.Info = "None,0"
    seg = Track[3]
    seg.Init = 27
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatchThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "6.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg = Track[2]
    seg.Init = 60
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "12.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "8.0000,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,,1"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "20.0000,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg = Track[2]
    seg.Init = 78
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchLose0")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 54
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,Me,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 89
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = ",1"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "Whip"
    seg = Track[3]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "DC_Grab"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "8.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = ",1"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "DC_Grab"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchKick")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab"
    seg = Track[2]
    seg.Init = 39
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchPunch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 34
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 29
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1"
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "8.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchKick")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg = Track[2]
    seg.Init = 45
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchScream")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg = Track[2]
    seg.Init = 104
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatch2Lose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,Me,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg = Track[2]
    seg.Init = 193
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,1,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,"
    seg = Track[2]
    seg.Init = 96
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg = Track[2]
    seg.Init = 237
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatch_2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatch_3")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMudDead")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatch2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "6.0000,Me,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,,1"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,"
    seg = Track[2]
    seg.Init = 78
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,"
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 85
    seg.bEmpty = false
    seg.Info = "None,0,,1"
    seg = Track[3]
    seg.Init = 122
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,"
    seg = Track[2]
    seg.Init = 306
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = ",0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,1,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,0,,1"
    seg = Track[2]
    seg.Init = 137
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "100.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,1,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg = Track[2]
    seg.Init = 91
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg = Track[2]
    seg.Init = 105
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,End,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg = Track[2]
    seg.Init = 38
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideFail")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,End,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg = Track[2]
    seg.Init = 40
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,Begin,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1"
    seg = Track[2]
    seg.Init = 57
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideHitDeath")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,End,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,Begin,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,1,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSmCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "8.0000,Me,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "None,1,,1"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[3]
    seg.Init = 47
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSmFailInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "3.0000,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "DC_Grab,1,,1"
    seg = Track[2]
    seg.Init = 27
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,Me,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch2Init")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 6
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,1,,1"
    seg = Track[2]
    seg.Init = 37
    seg.bEmpty = false
    seg.Info = "None,0,,1"
    seg = Track[3]
    seg.Init = 52
    seg.bEmpty = false
    seg.Info = "None,0,,1"
    seg = Track[4]
    seg.Init = 61
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[5]
    seg.Init = 84
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[6]
    seg.Init = 99
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch2Lose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,Me,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch2Lose2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg = Track[2]
    seg.Init = 61
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch2Lose3")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg = Track[2]
    seg.Init = 161
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,1,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 175
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 35
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 206
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,1,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 123
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchLose1")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 85
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,Me,1"
    seg = Track[3]
    seg.Init = 150
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 355
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,Me,1"
    seg = Track[3]
    seg.Init = 437
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 331
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbFailFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.9000,My target,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "None,1"
    seg = Track[2]
    seg.Init = 32
    seg.bEmpty = false
    seg.Info = "DC_Gabriel"
    seg = Track[3]
    seg.Init = 44
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,End,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 43
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 137
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideFail")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,My target,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,Begin,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,,1"
    seg = Track[2]
    seg.Init = 54
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideHitTbDeath")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,End,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbRideInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,Begin,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = ",1,,1"
    seg = Track[2]
    seg.Init = 55
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "DC_Grab"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab"
    seg = Track[2]
    seg.Init = 91
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = ",1,,1"
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "Whip,0,,1"
    seg = Track[3]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchHitA")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,Me,1"
    seg = Track[2]
    seg.Init = 48
    seg.bEmpty = false
    seg.Info = "None,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchHitD")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,Me,1"
    seg = Track[2]
    seg.Init = 48
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchHitJ")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,Me,1"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchHitK")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,Me,1"
    seg = Track[2]
    seg.Init = 30
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "8.0000,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = ",1"
    seg = Track[2]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "DC_Grab"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "8.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,,1"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0"
    seg = Track[2]
    seg.Init = 59
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg = Track[2]
    seg.Init = 35
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "8.0000,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,,1"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab"
    seg = Track[2]
    seg.Init = 1
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2.0,Me,1,No,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab"
    seg = Track[2]
    seg.Init = 58
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,End,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 33
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideFail")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,Begin,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = ",1,,1"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideHitDeath")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,End,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,My target,1"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgRideInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "4.0000,My target,1,Begin,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = ",1,,1"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,End,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 17
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0,,1"
    seg = Track[2]
    seg.Init = 35
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideFail")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,My target,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg = Track[2]
    seg.Init = 28
    seg.bEmpty = false
    seg.Info = "None,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "4.0000,My target,1,Begin,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "None,1,,1"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWtRideInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "1.5000,My target,1,Begin,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Gabriel,1,,1"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg = Track[2]
    seg.Init = 110
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatchHead")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "8.0000,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,1,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatchThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("SyncTgtActions")
    Track.Info = "2,,1,,"
    Track.OnSwitch = "Actions.SwitchSyncTgtActions"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "DC_Grab,0,"
    seg = Track[2]
    seg.Init = 32
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
end
