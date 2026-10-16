function BelmontSound_Tracks.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("CemeteryMiniGame")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSound1")
    Track.Info = "0.5000,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 12
    local seg
    seg = Track[1]
    seg.Init = 14
    seg.bEmpty = false
    seg.Info = "Chain_Fat4,Chain_Fat3"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 16
    seg.bEmpty = false
    seg.Info = "Chain_Fat1,Chain_Fat2"
    seg = Track[4]
    seg.Init = 17
    seg.bEmpty = true
    seg = Track[5]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "Chain_Fat3,Chain_Fat4"
    seg = Track[6]
    seg.Init = 19
    seg.bEmpty = true
    seg = Track[7]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "Chain_Fat1,Chain_Fat2"
    seg = Track[8]
    seg.Init = 21
    seg.bEmpty = true
    seg = Track[9]
    seg.Init = 22
    seg.bEmpty = false
    seg.Info = "Chain_Fat3,Chain_Fat4"
    seg = Track[10]
    seg.Init = 23
    seg.bEmpty = true
    seg = Track[11]
    seg.Init = 24
    seg.bEmpty = false
    seg.Info = "Chain_Fat2,Chain_Fat1"
    seg = Track[12]
    seg.Init = 25
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("FirstCut")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBtCatch,0.5000,0.0,,0.8500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("FistChargedDL2V")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipDl2Catched2Loop,1.0000,1.0000,,0.7000,0.0,0,5000,0.0"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop2")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "WhipDL2Catched,0.0000,1.0000,,0.7500,0.0,0,3000,0.0"
    seg = Track[2]
    seg.Init = 53
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("NdCached")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipSgCatched,0.0000,0.0000,,0.8500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("NdCachedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipSgCatched,0.0000,1.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 48
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("NdCachedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipSgCatched,0.0000,1.0000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 22
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PreButcher")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBtCatch,0.0000,0.5000,,0.8500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 40
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("RagDollRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Tentacles_Loop,0.0001,1.0000,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawBack")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSound1")
    Track.Info = "1.0000,100.0000,100000.0000"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "Chain_Fat2|Chain_Fat4,Chain_Fat3|Chain_Fat1"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "Chain_Fat3|Chain_Fat1,Chain_Fat2|Chain_Fat4"
    seg = Track[4]
    seg.Init = 24
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound2")
    Track.Info = "0.0700,100.0000,100000.0000"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 8
    local seg
    seg = Track[1]
    seg.Init = 1
    seg.bEmpty = false
    seg.Info = "Mov_Gab1,Mov_Gab2"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "Mov_Gab3,Mov_Gab4"
    seg = Track[4]
    seg.Init = 11
    seg.bEmpty = true
    seg = Track[5]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "Mov_Gab5,Mov_Gab6"
    seg = Track[6]
    seg.Init = 17
    seg.bEmpty = true
    seg = Track[7]
    seg.Init = 19
    seg.bEmpty = false
    seg.Info = "Mov_Gab1,Mov_Gab2"
    seg = Track[8]
    seg.Init = 25
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound3")
    Track.Info = "0.3000,100.0000,100000.0000"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 6
    local seg
    seg = Track[1]
    seg.Init = 2
    seg.bEmpty = false
    seg.Info = "Chain_Fat3|Chain_Fat1,Chain_Fat4|Chain_Fat2"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "Chain_Fat3|Chain_Fat1,Chain_Fat2|Chain_Fat4"
    seg = Track[4]
    seg.Init = 11
    seg.bEmpty = true
    seg = Track[5]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "Chain_Fat4|Chain_Fat2,Chain_Fat3|Chain_Fat1"
    seg = Track[6]
    seg.Init = 22
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawGo")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSound1")
    Track.Info = "1.0000,100.0000,100000.0000"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "Chain_Fat3|Chain_Fat4,Chain_Fat1|Chain_Fat2"
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound2")
    Track.Info = "0.3000,100.0000,100000.0000"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 1
    seg.bEmpty = false
    seg.Info = "Chain_Fat1|Chain_Fat2,Chain_Fat3|Chain_Fat4"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound3")
    Track.Info = "0.0900,100.0000,100000.0000"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 1
    seg.bEmpty = false
    seg.Info = "Mov_Gab1,Mov_Gab2"
    seg = Track[2]
    seg.Init = 7
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawGoRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Mov_Gab1|Mov_Gab2,0.1000,0.1000,,0.0700,0.0000,100,100000,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TbCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "TbCatched,0.0,0.0,,0.8500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("TbCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "TbCatched,0.0,0.0000,,0.8500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 24
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WebRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Loop_Web,0.0001,2.0000,,0.1500,0.0000,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSound1")
    Track.Info = "0.1000,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 6
    local seg
    seg = Track[1]
    seg.Init = 55
    seg.bEmpty = false
    seg.Info = "Mov_Gab1|Mov_Gab5|Mov_Gab2,Mov_Gab6|Mov_Gab4|Mov_Gab3"
    seg = Track[2]
    seg.Init = 63
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 71
    seg.bEmpty = false
    seg.Info = "Mov_Gab6|Mov_Gab4|Mov_Gab3,Mov_Gab1|Mov_Gab5|Mov_Gab2"
    seg = Track[4]
    seg.Init = 77
    seg.bEmpty = true
    seg = Track[5]
    seg.Init = 82
    seg.bEmpty = false
    seg.Info = "Mov_Gab1|Mov_Gab5|Mov_Gab2,Mov_Gab6|Mov_Gab4|Mov_Gab3"
    seg = Track[6]
    seg.Init = 86
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipAaCatch_1,0.0000,1.0000,,0.7500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatch2")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSound1")
    Track.Info = "0.1000,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = 139
    seg.bEmpty = false
    seg.Info = "Mov_Gab1|Mov_Gab5|Mov_Gab2,Mov_Gab1|Mov_Gab5|Mov_Gab2"
    seg = Track[2]
    seg.Init = 154
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 158
    seg.bEmpty = false
    seg.Info = "Mov_Gab6|Mov_Gab4|Mov_Gab3,Mov_Gab1|Mov_Gab5|Mov_Gab2"
    seg = Track[4]
    seg.Init = 171
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipAaCatch2,0.0,1.0000,,0.8000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchShield")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSound1")
    Track.Info = "0.3000,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 8
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "Chain_Fat2,Chain_Fat1"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 27
    seg.bEmpty = false
    seg.Info = "Chain_Fat4,Chain_Fat3"
    seg = Track[4]
    seg.Init = 37
    seg.bEmpty = true
    seg = Track[5]
    seg.Init = 41
    seg.bEmpty = false
    seg.Info = "Chain_Fat1,Chain_Fat12"
    seg = Track[6]
    seg.Init = 51
    seg.bEmpty = true
    seg = Track[7]
    seg.Init = 61
    seg.bEmpty = false
    seg.Info = "Chain_Fat3,Chain_Fat4"
    seg = Track[8]
    seg.Init = 74
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound2")
    Track.Info = "0.2000,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 8
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "Chain_Squeak2,Chain_Squeak1"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 27
    seg.bEmpty = false
    seg.Info = "Chain_Squeak4,Chain_Squeak3"
    seg = Track[4]
    seg.Init = 37
    seg.bEmpty = true
    seg = Track[5]
    seg.Init = 41
    seg.bEmpty = false
    seg.Info = "Chain_Squeak1,Chain_Squeak2"
    seg = Track[6]
    seg.Init = 51
    seg.bEmpty = true
    seg = Track[7]
    seg.Init = 61
    seg.bEmpty = false
    seg.Info = "Chain_Squeak3,Chain_Squeak4"
    seg = Track[8]
    seg.Init = 74
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound3")
    Track.Info = "0.2000,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 8
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "Chain_Pull2,Chain_Pull1"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 27
    seg.bEmpty = false
    seg.Info = "Chain_Pull4,Chain_Pull3"
    seg = Track[4]
    seg.Init = 37
    seg.bEmpty = true
    seg = Track[5]
    seg.Init = 41
    seg.bEmpty = false
    seg.Info = "Chain_Pull1,Chain_Pull2"
    seg = Track[6]
    seg.Init = 51
    seg.bEmpty = true
    seg = Track[7]
    seg.Init = 61
    seg.bEmpty = false
    seg.Info = "Chain_Pull3,Chain_Pull4"
    seg = Track[8]
    seg.Init = 74
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipAaCatchShield,0.0,0.0000,,0.8000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchShieldLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipAaCatchShield,0.0,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 26
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchShieldWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipAaCatchShield,0.0000,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 65
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipAaCatchShield,0.0,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 100
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSound1")
    Track.Info = "0.3500,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "Chain_Fat3,Chain_Fat4"
    seg = Track[2]
    seg.Init = 24
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 38
    seg.bEmpty = false
    seg.Info = "Chain_Fat1,Chain_Fat2"
    seg = Track[4]
    seg.Init = 52
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound2")
    Track.Info = "0.3500,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "Chain_Pull1,Chain_Pull2"
    seg = Track[2]
    seg.Init = 24
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 38
    seg.bEmpty = false
    seg.Info = "Chain_Pull4,Chain_Pull3"
    seg = Track[4]
    seg.Init = 52
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound3")
    Track.Info = "0.3500,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "Chain_Squeak3,Chain_Squeak4"
    seg = Track[2]
    seg.Init = 24
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 38
    seg.bEmpty = false
    seg.Info = "Chain_Squeak1,Chain_Squeak2"
    seg = Track[4]
    seg.Init = 52
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBk11Catch,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "WhipBk11Catch,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBk11Catch,0.0000,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 89
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBk11Catch,0.0000,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 10
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSound1")
    Track.Info = "0.3500,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "Chain_Fat3,Chain_Fat4"
    seg = Track[2]
    seg.Init = 22
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 38
    seg.bEmpty = false
    seg.Info = "Chain_Fat2,Chain_Fat1"
    seg = Track[4]
    seg.Init = 49
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound2")
    Track.Info = "0.3500,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "Chain_SqueakB,Chain_SqueakA"
    seg = Track[2]
    seg.Init = 22
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 38
    seg.bEmpty = false
    seg.Info = "Chain_SqueakC,Chain_SqueakD"
    seg = Track[4]
    seg.Init = 49
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound3")
    Track.Info = "0.3500,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "Chain_Pull2,Chain_Pull1"
    seg = Track[2]
    seg.Init = 22
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 38
    seg.bEmpty = false
    seg.Info = "Chain_Pull4,Chain_Pull3"
    seg = Track[4]
    seg.Init = 49
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBk12Catch,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 19
    seg.bEmpty = false
    seg.Info = "WhipBk12Catch,0.0,0.0,,0.8000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBk12Catch,0.0000,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 89
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBk12Catch,0.0000,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSound1")
    Track.Info = "0.3500,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "Chain_Fat4,Chain_Fat3"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 38
    seg.bEmpty = false
    seg.Info = "Chain_Fat2,Chain_Fat1"
    seg = Track[4]
    seg.Init = 52
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound2")
    Track.Info = "0.3500,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "Chain_Squeak2,Chain_Squeak1"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 38
    seg.bEmpty = false
    seg.Info = "Chain_Squeak3,Chain_Squeak4"
    seg = Track[4]
    seg.Init = 52
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound3")
    Track.Info = "0.3500,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "Chain_Pull2,Chain_Pull3"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 38
    seg.bEmpty = false
    seg.Info = "Chain_Pull4,Chain_Pull3"
    seg = Track[4]
    seg.Init = 52
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBk11CatchB,0.0000,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "WhipBk11CatchB,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBk11CatchB,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 86
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBk11CatchB,0.0,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk3Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSound1")
    Track.Info = "0.5000,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 8
    local seg
    seg = Track[1]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "SheetMetal_04,SheetMetal_03"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 19
    seg.bEmpty = false
    seg.Info = "SheetMetal_05,SheetMetal_06"
    seg = Track[4]
    seg.Init = 31
    seg.bEmpty = true
    seg = Track[5]
    seg.Init = 36
    seg.bEmpty = false
    seg.Info = "SheetMetal_01,SheetMetal_02"
    seg = Track[6]
    seg.Init = 48
    seg.bEmpty = true
    seg = Track[7]
    seg.Init = 55
    seg.bEmpty = false
    seg.Info = "SheetMetal_03,SheetMetal_04"
    seg = Track[8]
    seg.Init = 65
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBk11Catch,0.0000,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboAInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Belmont_Power_01,0.0,1.0000,,1.0000,5.0000,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboDInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop2")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Belmont_Power_01,0.0,1.0000,,1.0000,5.0000,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboJInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Belmont_Power_01,0.0000,1.0000,,1.0000,5.0000,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSound1")
    Track.Info = "0.3000,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 8
    local seg
    seg = Track[1]
    seg.Init = 2
    seg.bEmpty = false
    seg.Info = "Chain_Fat4,Chain_Fat3"
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "Chain_Fat2,Chain_Fat1"
    seg = Track[4]
    seg.Init = 18
    seg.bEmpty = true
    seg = Track[5]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "Chain_Fat1,Chain_Fat2"
    seg = Track[6]
    seg.Init = 27
    seg.bEmpty = true
    seg = Track[7]
    seg.Init = 31
    seg.bEmpty = false
    seg.Info = "Chain_Fat3,Chain_Fat4"
    seg = Track[8]
    seg.Init = 36
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound2")
    Track.Info = "0.2000,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 8
    local seg
    seg = Track[1]
    seg.Init = 2
    seg.bEmpty = false
    seg.Info = "Chain_SqueakF,Chain_SqueakG"
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "Chain_SqueakA,Chain_SqueakB"
    seg = Track[4]
    seg.Init = 18
    seg.bEmpty = true
    seg = Track[5]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "Chain_SqueakC,Chain_SqueakD"
    seg = Track[6]
    seg.Init = 27
    seg.bEmpty = true
    seg = Track[7]
    seg.Init = 31
    seg.bEmpty = false
    seg.Info = "Chain_SqueakE,Chain_SqueakF"
    seg = Track[8]
    seg.Init = 36
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSound3")
    Track.Info = "0.0,0.0,0.0"
    Track.OnSwitch = "SoundUtils.SwitchSound"
    Track.n = 8
    local seg
    seg = Track[1]
    seg.Init = 2
    seg.bEmpty = false
    seg.Info = "Chain_Pull4,Chain_Pull3"
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "Chain_Pull2,Chain_Pull1"
    seg = Track[4]
    seg.Init = 18
    seg.bEmpty = true
    seg = Track[5]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "Chain_Pull3,Chain_Pull4"
    seg = Track[6]
    seg.Init = 27
    seg.bEmpty = true
    seg = Track[7]
    seg.Init = 31
    seg.bEmpty = false
    seg.Info = "Chain_Pull1,Chain_Pull2"
    seg = Track[8]
    seg.Init = 36
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBtCatch,0.0000,0.0000,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBtCatch,0.0,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 57
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCfCatch,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 34
    seg.bEmpty = false
    seg.Info = ",0.0,0.0,,0.0,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCfCatch,0.0,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCoCatch,0.0000,0.5000,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 17
    seg.bEmpty = false
    seg.Info = "WhipCoCatch,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "WhipCoCatch,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCoCatch,0.0,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCoCatch,0.0,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCoCatch,0.0,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 19
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCoCatched,0.0,0.0000,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCoCatched,0.0000,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCoCatched,0.0,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 14
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCoCatched,0.0,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAAAAh")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboDAD,0.0000,0.5000,,0.5000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAAAAhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "WhipComboDAD,0.5000,0.0,,0.5000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboADLh")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboADLh,0.0000,1.0000,,0.7500,0.0000,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAJ")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "Wind_LoopPower,0.0,1.0000,,1.0000,0.0000,0,0,0.0"
    seg = Track[2]
    seg.Init = 36
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop2")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "Wind_LoopPower,0.0000,1.0000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 36
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop3")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 23
    seg.bEmpty = false
    seg.Info = "Wind_LoopPower,0.0,1.0000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 36
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAJJ")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "Wind_LoopPower,0.0,1.5000,,0.8500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDAD")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboDAD,0.0000,1.0000,,0.5000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDADInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 29
    seg.bEmpty = false
    seg.Info = "WhipComboDAD,1.0000,0.0,,0.5000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDDDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboDDDDDDInit,0.0000,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMh")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboDrMh,1.0000,1.5000,,1.0000,0.0000,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMhs")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboDrMh,0.0000,1.5000,,1.0000,0.0000,0.0,0.0,,0.0,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMhss")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboDrMh,0.0,1.5000,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMhsss")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboDrMh,0.0000,1.5000,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboLMh")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboDAD,0.0,1.0000,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop2")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboDrMh,0.0,1.0000,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboLMhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboDAD,1.5000,0.0000,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop2")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipComboDrMh,1.0000,1.0000,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCrystalPower")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Wind_LoopPower,2.0000,1.0000,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2Catched")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipDL2Catched,0.0,0.0,,0.8000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCfCatch,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipEva1Catch,0.0000,0.0000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 180
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipEva1Catch,0.0000,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 163
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipEva2Catch,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 81
    seg.bEmpty = false
    seg.Info = "WhipEva1Catch,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipEva1Catch,0.0,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 164
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCfCatch,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "WhipCfCatch,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCfCatch,0.0,0.2000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 110
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipCfCatch,0.0,0.0,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 119
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipEvbCatch,0.0,0.0,,0.8000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipEvbCatch,0.0,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchLose0")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipEvbCatch,0.0,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 37
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipEvbCatch,0.0,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 51
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipEvbCatched,0.0,0.0,,0.8000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipEvbCatched,0.0,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 7
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipEvbCatched,0.0,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 108
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipEvbCatched,0.0,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 104
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboDDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 1
    seg.bEmpty = false
    seg.Info = "WhipFallComboDDDD_01,0.0,0.5000,,1.0000,2.0000,0,0,0.0"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop2")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 1
    seg.bEmpty = false
    seg.Info = "Wind_LoopPower,0.0,0.5000,,1.0000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipTbCatch,1.0000,1.0000,,1.0000,0.0,0,3000,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipSgCatched,1.0000,1.0000,,1.0000,0.0,0,3000,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipGdCatch,0.0000,0.0,,0.7500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatch2")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipGdCatched,0.0,0.0,,0.8000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipGdCatch,0.0,0.5000,,0.7500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 52
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipGdCatched,0.0,0.5000,,0.7500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 116
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchLose3")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipGdCatched,0.0,0.5000,,0.7500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 112
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipGdCatch,0.0,0.5000,,0.7500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 95
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipGdCatched,0.0,0.5000,,0.7500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 226
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchWinDoor")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipGdCatched,0.0,0.5000,,0.7500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 227
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 24
    seg.bEmpty = false
    seg.Info = "WhipComboADLh,0.0000,1.0000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 66
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipLgCatch,0.0,0.0,,0.8000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 158
    seg.bEmpty = false
    seg.Info = "WhipLgCatch,0.0,0.0,,0.8000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipLgCatch,0.0,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchLose0")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipLgCatch,0.0,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipLgCatch,0.0,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 71
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBtCatch,0.0,0.0,,0.7500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBtCatch,0.0,0.5000,,0.7500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 64
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1CatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBtCatch,0.0,0.5000,,0.7500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 136
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop2")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBtCatch,0.0,0.0,,0.7500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2Catch2")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipBtCatch,0.0,0.0,,0.9000,0.0,0,0,0.0"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop2")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "PowerCrystalLoop,0.0,1.0000,,0.8200,10.0000,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 156
    seg.bEmpty = false
    seg.Info = "PowerCrystalLoop,1.0000,0.0000,,0.8500,10.0000,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "PowerCrystalLoop,0.0000,0.0000,,0.8500,10.0000,0,3000,0.0"
    seg = Track[2]
    seg.Init = 381
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipPullPlank")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Mov_Gab1,0.1000,0.1000,,0.0000,0.0000,10,10000,0.0"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("SwitchSndLoop2")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Chain_SqueakA,0.1000,1.0000,,0.0000,0.0000,10,10000,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRgCatch2")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRgCatch22,0.0,0.0,,0.8500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipSMCatched,0.0,0.0,,0.8000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 30
    seg.bEmpty = false
    seg.Info = "WhipSMCatched,0.0,0.8500,,0.8000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipSMCatched,0.0,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 38
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipScCatch,0.0,0.0,,0.8500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipScCatched_1,0.0,0.0,,0.8500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipSgCatched,0.0,0.0,,0.8500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipSwCatch,0.0,0.5000,,0.8500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipTbCatch,0.0,0.0,,0.8500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 22
    seg.bEmpty = false
    seg.Info = "WhipSgCatched,0.0,0.0,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 216
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTombInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTombLoop")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipSMCatched,0.0000,0.5000,,0.7500,0.0,0,3000,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTombOpen")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipVwCatched,0.0,0.0,,0.8500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "WhipVwCatched,6.0000,0.0000,,0.8500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipVwCatched,0.0,0.0,,0.8500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 68
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipVwCatched,0.0,0.0,,0.8500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 26
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipWcCatch,0.0,0.0,,0.8500,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipWcCatch,0.0,0.0,,0.8500,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipWgCatched,0.0,0.0,,0.8000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 38
    seg.bEmpty = false
    seg.Info = "WhipWgCatched,0.0,0.0,,0.8000,0.0,0,0,0.0"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("SwitchSndLoop1")
    Track.OnSwitch = "SoundUtils.SwitchSoundLoop"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipWgCatched,0.0,0.5000,,0.8000,0.0,0,0,0.0"
    seg = Track[2]
    seg.Init = 29
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
end
