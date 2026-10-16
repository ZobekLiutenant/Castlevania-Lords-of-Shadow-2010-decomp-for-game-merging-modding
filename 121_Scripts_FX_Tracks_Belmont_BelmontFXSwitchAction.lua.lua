function BelmontFXSwitchAction.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("SawBack")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXSawEvent,,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 10
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 2
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 5
    seg.bEmpty = false
    seg = Track[4]
    seg.Init = 7
    seg.bEmpty = true
    seg = Track[5]
    seg.Init = 10
    seg.bEmpty = false
    seg = Track[6]
    seg.Init = 12
    seg.bEmpty = true
    seg = Track[7]
    seg.Init = 16
    seg.bEmpty = false
    seg = Track[8]
    seg.Init = 18
    seg.bEmpty = true
    seg = Track[9]
    seg.Init = 22
    seg.bEmpty = false
    seg = Track[10]
    seg.Init = 24
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SawGo")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXSawEvent,,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 10
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 1
    seg.bEmpty = true
    seg = Track[3]
    seg.Init = 3
    seg.bEmpty = false
    seg = Track[4]
    seg.Init = 4
    seg.bEmpty = true
    seg = Track[5]
    seg.Init = 6
    seg.bEmpty = false
    seg = Track[6]
    seg.Init = 7
    seg.bEmpty = true
    seg = Track[7]
    seg.Init = 9
    seg.bEmpty = false
    seg = Track[8]
    seg.Init = 10
    seg.bEmpty = true
    seg = Track[9]
    seg.Init = 12
    seg.bEmpty = false
    seg = Track[10]
    seg.Init = 13
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboAEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXGaunletOn,Belmont.FXGaunletOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
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
  am = ac:GetAct("WhipBlockComboAInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXGaunletOn,Belmont.FXGaunletOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboALoop")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXGaunletOn,Belmont.FXGaunletOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboDEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXGaunletOn,Belmont.FXGaunletOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
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
  am = ac:GetAct("WhipBlockComboDInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXGaunletOn,Belmont.FXGaunletOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 6
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboDLoop")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXGaunletOn,Belmont.FXGaunletOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboJInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXGaunletOn,Belmont.FXGaunletOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 2
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("FXSwitchAction2")
    Track.Info = "Belmont.FXBootsModelGlowOn,Belmont.FXBootsModelGlowOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 2
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboUppercut")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXGaunletOn,Belmont.FXGaunletOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = true
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("FXSwitchAction2")
    Track.Info = "Belmont.FXBootsModelGlowOn,Belmont.FXBootsModelGlowOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
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
  am = ac:GetAct("WhipBlockComboUppercutJ")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction2")
    Track.Info = "Belmont.FXBootsModelGlowOn,Belmont.FXBootsModelGlowOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 31
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboUppercutL")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXGaunletOn,Belmont.FXGaunletOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
    local Track = am.oTracks:Add("FXSwitchAction2")
    Track.Info = "Belmont.FXBootsModelGlowOn,Belmont.FXBootsModelGlowOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockSommerJump")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction2")
    Track.Info = "Belmont.FXBootsModelGlowOn,Belmont.FXBootsModelGlowOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
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
  am = ac:GetAct("WhipComboAAAAh")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXSphereChainOn,Belmont.FXSphereChainOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAAAAhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXSphereChainOn,Belmont.FXSphereChainOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 15
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboADLh")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXKamehaOn,Belmont.FXKamehaOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboADLhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXKamehaOn,Belmont.FXKamehaOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 24
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDAD")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXRadialOn,Belmont.FXRadialOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDADInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXRadialOn,Belmont.FXRadialOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 31
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDDDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXHChainTornadoOn,Belmont.FXHChainTornadoOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDDDDDInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXHChainTornadoOn,Belmont.FXHChainTornadoOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 21
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrD")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXWhipTrailOn,Belmont.FXWhipTrailOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
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
  am = ac:GetAct("WhipComboDrDrD")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXWhipTrailOn,Belmont.FXWhipTrailOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
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
  am = ac:GetAct("WhipComboDrDrDrD")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXWhipTrailOn,Belmont.FXWhipTrailOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 47
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrDrDrDrD")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXWhipTrailOn,Belmont.FXWhipTrailOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
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
  am = ac:GetAct("WhipComboDrDrDrDrDrD")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXWhipTrailOn,Belmont.FXWhipTrailOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 77
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMh")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction2")
    Track.Info = "Belmont.FXWhipTrailOn,Belmont.FXWhipTrailOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMhEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction2")
    Track.Info = "Belmont.FXWhipTrailOn,Belmont.FXWhipTrailOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 182
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDrMhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction2")
    Track.Info = "Belmont.FXWhipTrailOn,Belmont.FXWhipTrailOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 29
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboExplHitEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "WeaponsAttacks.FinalExplosionOn,WeaponsAttacks.FinalExplosionOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 90
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 116
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallBlockComboAEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXGaunletOn,Belmont.FXGaunletOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 29
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallBlockComboAInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXGaunletOn,Belmont.FXGaunletOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallBlockComboDEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXGaunletOn,Belmont.FXGaunletOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
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
  am = ac:GetAct("WhipFallBlockComboDInit")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXGaunletOn,Belmont.FXGaunletOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboDDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Belmont.FXAirRadialOn,Belmont.FXAirRadialOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 3
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2Catch2")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Necromancer.FXGaunletBelmontLoopOn,Necromancer.FXGaunletBelmontLoopOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchLose2")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Necromancer.FXGaunletBelmontLoopOn,Necromancer.FXGaunletBelmontLoopOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchWin")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Necromancer.FXGaunletBelmontLoopOn,Necromancer.FXGaunletBelmontLoopOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 183
    seg.bEmpty = false
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipNc2CatchWin2")
  if am ~= nil then
    local Track = am.oTracks:Add("FXSwitchAction")
    Track.Info = "Necromancer.FXGaunletBelmontLoopOn,Necromancer.FXGaunletBelmontLoopOff,"
    Track.OnSwitch = "Effects.OnSwitchAction"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg = Track[2]
    seg.Init = 386
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
end
