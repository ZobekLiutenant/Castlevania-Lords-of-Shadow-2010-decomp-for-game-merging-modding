function BelmontAnimLink_Tracks.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("Balance")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "BalanceTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("Balance0")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "BalanceTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("Balance1")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "BalanceTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("BalanceFallEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 12
    seg.bEmpty = false
    seg.Info = "BalanceTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("BalanceRun")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "BalanceRunEndLeft"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = false
    seg.Info = "BalanceRunEndRight"
    seg = Track[3]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "BalanceRunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "BalanceRunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("BalanceRun0")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "BalanceRunEndLeft"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "BalanceRunEndRight"
    seg = Track[3]
    seg.Init = 17
    seg.bEmpty = false
    seg.Info = "BalanceRunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "BalanceRunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("BalanceRunEndLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "BalanceRunTurn"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "BalanceTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("BalanceRunEndRight")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "BalanceRunTurn"
    seg = Track[2]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "BalanceTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("BalanceRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "BalanceRunEndRight"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "BalanceRunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "BalanceTurn"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "BalanceRunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("BalanceRunTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "BalanceRunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("BalanceTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "TurnLink"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("FirstCut")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("KeyWalk")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "KeyWalkEndLeft"
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "KeyWalkEndRight"
    seg = Track[3]
    seg.Init = 34
    seg.bEmpty = false
    seg.Info = "KeyWalkEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.Info = "KeyWalkTurn"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "KeyWalkTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("KeyWalkEndLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "KeyWalkTurn"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "KeyWalkInitTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("KeyWalkEndRight")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "KeyWalkTurn"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "KeyWalkInitTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("KeyWalkInit")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "KeyWalkInitTurn"
    seg.End = 5
  end
  am = ac:GetAct("KeyWalkInitTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "KeyTurn180"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "KeyTurnRight"
    seg = Track[3]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "KeyWalkEndLeft"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("KeyWalkTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "KeyWalkEndRight"
    seg = Track[2]
    seg.Init = 22
    seg.bEmpty = false
    seg.Info = "KeyWalkEndLeft"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("MudWalk")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "MudWalkEndLeft"
    seg = Track[2]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "MudWalkEndRight"
    seg = Track[3]
    seg.Init = 34
    seg.bEmpty = false
    seg.Info = "MudWalkEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.Info = "MudWalkTurn"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "MudWalkTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("MudWalkEndLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "MudWalkTurn"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "MudWalkInitTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("MudWalkEndRight")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "MudWalkTurn"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "MudWalkInitTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("MudWalkInit")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "MudWalkInitTurn"
    seg.End = 5
  end
  am = ac:GetAct("MudWalkInitTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "MudTurn180"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "MudTurnRight"
    seg = Track[3]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "MudWalkEndLeft"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("MudWalkTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "MudWalkEndRight"
    seg = Track[2]
    seg.Init = 22
    seg.bEmpty = false
    seg.Info = "MudWalkEndLeft"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PreButcher")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PullLever")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 46
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 84
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushBack")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushRoll")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 93
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushRollLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushRollWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 100
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushWalkLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("PushWalkRight")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("Run")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunEndLeft"
    seg = Track[2]
    seg.Init = 2
    seg.bEmpty = false
    seg.Info = "RunEndRight"
    seg = Track[3]
    seg.Init = 12
    seg.bEmpty = false
    seg.Info = "RunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("RunEndLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunTurn"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "RunInitTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("RunEndRight")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunTurn"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "RunInitTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("RunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunEndLeft"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "RunEndRight"
    seg = Track[3]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "RunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunInitTurn"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "RunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("RunInitFall")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunEndRight"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "RunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunInitTurn"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "RunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("RunInitFallRun")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunEndRight"
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "RunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunInitTurn"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "RunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("RunInitFallShort")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunEndRight"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "RunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunInitTurn"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "RunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("RunInitTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Turn180"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = false
    seg.Info = "TurnRight"
    seg = Track[3]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "RunEndLeft"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("RunTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunEndLeft"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawBack")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawBackRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawGo")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawGoRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawRelax")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 36
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawWinLoop")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("StatueMiniGameBack")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("StatueMiniGameInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("StatueMiniGameLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("StatueMiniGameWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 65
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("ReaperDoorMiniGameBack")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("ReaperDoorMiniGameInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("ReaperDoorMiniGameLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("ReaperDoorMiniGameWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 65
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("Walk")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WalkEndLeft"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "WalkEndRight"
    seg = Track[3]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "WalkEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WalkTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WalkEndLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WalkTurn"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "WalkInitTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WalkEndRight")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WalkTurn"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "WalkInitTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WalkInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WalkEndLeft"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "WalkEndRight"
    seg = Track[3]
    seg.Init = 31
    seg.bEmpty = false
    seg.Info = "WalkEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WalkInitTurn"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "WalkTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WalkInitTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Turn180"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "TurnRight"
    seg = Track[3]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "WalkEndRight"
    seg = Track[4]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "WalkEndLeft"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WalkTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WalkEndRight"
    seg = Track[2]
    seg.Init = 14
    seg.bEmpty = false
    seg.Info = "WalkEndLeft"
    seg = Track[3]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "WalkEndRight"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatch2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 76
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 55
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchShield")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchShieldLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 72
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchShieldWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 82
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipAaCatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 225
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 89
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 120
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk11CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 30
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 90
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 120
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk12CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 30
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 84
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 115
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk3Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk3CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 30
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBk3CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 84
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 130
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboAInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboALoop")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboDInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboDLoop")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboJInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboUppercutL")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 48
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 55
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 80
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBtCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 360
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCcHold")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 75
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 94
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCfCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 35
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCharge")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 16
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 90
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 25
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "Deatn"
    seg = Track[3]
    seg.Init = 90
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Deatn"
    seg = Track[2]
    seg.Init = 130
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCoCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCrystalPower")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCrystalPowerEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPowerEnd"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipCrystalPowerInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPowerInit"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 90
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 300
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2Catched")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 245
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDL2CatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 200
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDl2Catched2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDl2Catched2Init")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 100
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDl2Catched2Lose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 45
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDl2Catched2Win")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 25
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEggThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 25
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 45
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEggThrowFail")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 50
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 135
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 195
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1CatchLose0")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 75
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva1CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 185
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 300
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchLose0")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 50
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchLose1")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 85
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEva2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 370
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 195
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvaCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 195
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 55
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchLose0")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 85
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 450
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 105
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 200
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipEvbCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 180
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallDeath")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallHit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallHitHard")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatchKick")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 3
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 105
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatchLoseEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 40
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFhCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 70
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchBomb")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 60
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 90
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 107
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGbCatchPunch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 60
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatch2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchLose3")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 250
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 510
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGdCatchWinDoor")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 680
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 115
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchPunch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 85
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGhCatchThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 100
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 130
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatchKick")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 40
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipGlCatchThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 70
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitFall")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitFallHard")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardBack")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardFw")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitHardRight")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 16
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitMedBack")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitMedFw")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitMedLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 10
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitMedRight")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 10
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitSoftBack")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 14
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitSoftFw")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = true
    seg.Info = "Death"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitSoftLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipHitSoftRight")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 14
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 112
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchLose0")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 75
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLgCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 110
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 25
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchKick")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 55
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipLlCatchPunch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 50
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchKick")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 60
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 40
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMdCatchScream")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 110
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatch2Lose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 225
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 90
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[3]
    seg.Init = 130
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 365
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatch_2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMmCatch_3")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipMudDead")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 35
    seg.bEmpty = false
    seg.Info = "Death"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 165
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1CatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 135
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 165
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc1CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 280
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2Catch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2Catch2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 410
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRun")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRunEndLeft"
    seg = Track[2]
    seg.Init = 2
    seg.bEmpty = false
    seg.Info = "WhipRunEndRight"
    seg = Track[3]
    seg.Init = 12
    seg.bEmpty = false
    seg.Info = "WhipRunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRun0")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunEndLeft"
    seg = Track[2]
    seg.Init = 2
    seg.bEmpty = false
    seg.Info = "RunEndRight"
    seg = Track[3]
    seg.Init = 12
    seg.bEmpty = false
    seg.Info = "RunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "RunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRunEndLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRunTurn"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "WhipRunInitTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRunEndRight")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRunTurn"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "WhipRunInitTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRunEndLeft"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "WhipRunEndRight"
    seg = Track[3]
    seg.Init = 18
    seg.bEmpty = false
    seg.Info = "WhipRunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRunInitTurn"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "WhipRunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRunInitFall")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRunEndRight"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "WhipRunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRunInitTurn"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "WhipRunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRunInitFallRun")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRunEndRight"
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "WhipRunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRunInitTurn"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "WhipRunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRunInitFallShort")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRunEndRight"
    seg = Track[2]
    seg.Init = 8
    seg.bEmpty = false
    seg.Info = "WhipRunEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRunInitTurn"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "WhipRunTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRunInitTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipTurn180"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = false
    seg.Info = "WhipTurnRight"
    seg = Track[3]
    seg.Init = 7
    seg.bEmpty = false
    seg.Info = "WhipRunEndLeft"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRunTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipRunEndLeft"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 41
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 80
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSMCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 140
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 85
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 120
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 105
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 16
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 85
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipScCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 110
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 15
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 115
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 230
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideFail")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 30
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 56
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSgRideInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSmCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSmFailInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 60
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch2Init")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 135
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch2Lose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 19
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 65
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch2Lose2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 95
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatch2Lose3")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 125
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 170
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 170
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 195
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 80
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSwCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 220
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 35
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 120
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchLose1")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 70
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 170
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 335
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 440
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTbCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 360
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 90
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 110
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchFarInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchHitA")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 60
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchHitD")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 60
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchHitJ")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 40
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchHitK")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 35
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipTsCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 55
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 80
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 50
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 65
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 135
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipVwCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 129
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWalk")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipWalkEndLeft"
    seg = Track[2]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "WhipWalkEndRight"
    seg = Track[3]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "WhipWalkEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipWalkTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWalkEndLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipWalkTurn"
    seg = Track[2]
    seg.Init = 3
    seg.bEmpty = false
    seg.Info = "WhipWalkInitTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWalkEndRight")
  if am ~= nil then
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipWalkTurn"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "WhipWalkInitTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWalkInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipWalkEndLeft"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "WhipWalkEndRight"
    seg = Track[3]
    seg.Init = 31
    seg.bEmpty = false
    seg.Info = "WhipWalkEndLeft"
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("TurnLink")
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipWalkInitTurn"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "WhipWalkTurn"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWalkInitTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 4
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipTurn180"
    seg = Track[2]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "WhipTurnRight"
    seg = Track[3]
    seg.Init = 13
    seg.bEmpty = false
    seg.Info = "WhipWalkEndRight"
    seg = Track[4]
    seg.Init = 16
    seg.bEmpty = false
    seg.Info = "WhipWalkEndLeft"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWalkTurn")
  if am ~= nil then
    local Track = am.oTracks:Add("EndLink")
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "WhipWalkEndRight"
    seg = Track[2]
    seg.Init = 14
    seg.bEmpty = false
    seg.Info = "WhipWalkEndLeft"
    seg = Track[3]
    seg.Init = 21
    seg.bEmpty = false
    seg.Info = "WhipWalkEndRight"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatchLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 10
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWcCatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 80
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgCatched")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgCatchedInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgCatchedLose")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[2]
    seg.Init = 45
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipWgCatchedWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 45
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatch")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatchEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 3
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 100
    seg.bEmpty = false
    seg.Info = "Death"
    seg = Track[3]
    seg.Init = 140
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatchHead")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 31
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatchInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipZbCatchThrow")
  if am ~= nil then
    local Track = am.oTracks:Add("FacialAction")
    Track.OnSwitch = "MakeChar.OnFacialTrack"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "CrystalPower"
    seg = Track[2]
    seg.Init = 50
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
end
