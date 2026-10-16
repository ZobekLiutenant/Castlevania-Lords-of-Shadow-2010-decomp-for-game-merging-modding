function Belmont_EnergyTracks.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("Jump2")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "4.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("Jump2Run")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "4.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("JumpInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "5.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("JumpRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "5.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("JumpShortInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "5.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("Sprint")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SprintEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "5.0000,"
    seg = Track[2]
    seg.Init = 6
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("SprintInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 6
    seg.bEmpty = false
    seg.Info = "7.5000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboAEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "3.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboAInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "3.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboALoop")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboDEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "3.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboDInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "3.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboDLoop")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockComboUppercutL")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipBlockSommerJump")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 4
    seg.bEmpty = false
    seg.Info = "30.0000,"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboA")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "7.5000,"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAA")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "15.0000,"
    seg = Track[2]
    seg.Init = 36
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAAA")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "25.0000,"
    seg = Track[2]
    seg.Init = 55
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboAJ")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 25
    seg.bEmpty = false
    seg.Info = "15.0000,"
    seg = Track[2]
    seg.Init = 39
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboD")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "5.0000,"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDD")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "10.0000,"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "15.0000,"
    seg = Track[2]
    seg.Init = 24
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg = Track[2]
    seg.Init = 40
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDDDD")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "25.0000,"
    seg = Track[2]
    seg.Init = 34
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDh")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDhEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "15.0000,"
    seg = Track[2]
    seg.Init = 37
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDDhInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "15.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipComboDJ")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 11
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeBack")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg = Track[2]
    seg.Init = 26
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeBackRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg = Track[2]
    seg.Init = 19
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeFront")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg = Track[2]
    seg.Init = 24
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeFrontRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeLeft")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeLeftRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeRight")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipDodgeRightRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg = Track[2]
    seg.Init = 21
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboA")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "10.0000,"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboAA")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "10.0000,"
    seg = Track[2]
    seg.Init = 29
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboAh")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg = Track[2]
    seg.Init = 45
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboD")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "10.0000,"
    seg = Track[2]
    seg.Init = 12
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboDh")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboGripBig")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 10
    seg.bEmpty = false
    seg.Info = "15.0000,"
    seg = Track[2]
    seg.Init = 22
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallComboGripSmall")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = 12
    seg.bEmpty = false
    seg.Info = "10.0000,"
    seg = Track[2]
    seg.Init = 31
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallRunComboA")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "10.0000,"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipFallRunComboD")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "10.0000,"
    seg = Track[2]
    seg.Init = 13
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipJumpInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "5.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipJumpRunInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "7.5000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipJumpShortInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "5.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRaceComboA")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "7.5000,"
    seg = Track[2]
    seg.Init = 20
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipRaceComboD")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "5.0000,"
    seg = Track[2]
    seg.Init = 18
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSprint")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "7.5000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSprintComboA")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "15.0000,"
    seg = Track[2]
    seg.Init = 23
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSprintComboAD")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "20.0000,"
    seg = Track[2]
    seg.Init = 34
    seg.bEmpty = true
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSprintEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "5.0000,"
    seg = Track[2]
    seg.Init = 17
    seg.bEmpty = false
    seg.Info = "0.0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipSprintInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 1
    local seg
    seg = Track[1]
    seg.Init = 5
    seg.bEmpty = false
    seg.Info = "5.0000,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipThrowDaggerEnd")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "5.0000,"
    seg = Track[2]
    seg.Init = 51
    seg.bEmpty = false
    seg.Info = "0.0,"
    seg.End = am.LastFrame
  end
  am = ac:GetAct("WhipThrowDaggerInit")
  if am ~= nil then
    local Track = am.oTracks:Add("EnergyConsume")
    Track.Info = "TRUE"
    Track.OnSwitch = "Energy.ResetConsumeTime"
    Track.OnMove = "Energy.ConsumeEnergy"
    Track.n = 2
    local seg
    seg = Track[1]
    seg.Init = am.FirstFrame
    seg.bEmpty = false
    seg.Info = "0.0,"
    seg = Track[2]
    seg.Init = 9
    seg.bEmpty = false
    seg.Info = "5.0000,"
    seg.End = am.LastFrame
  end
end
