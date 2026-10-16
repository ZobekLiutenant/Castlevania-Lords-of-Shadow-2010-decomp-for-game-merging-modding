function Belmont_Camera_Events.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("BalanceAttack")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.9500,90.0000,0.0000,1.4000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 51, 1)
  end
  am = ac:GetAct("BalanceAttackInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.9500,90.0000,0.0000,1.4000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 24, 1)
  end
  am = ac:GetAct("FallHighEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2500,90.0000,0.0000,0.4000,S2qoooooszI,0,0,0,0,1", "Weapons.CamLinearShakeEvent", 4, 1)
  end
  am = ac:GetAct("HandCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 44, 0)
  end
  am = ac:GetAct("HandCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 48, 0)
  end
  am = ac:GetAct("HandS1Catched")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,900,50,NO,0,40.0000,Bip Gabriel,0,", "Camera.ActionSetFocus", 12, 1)
  end
  am = ac:GetAct("HandS2Catched")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,900,50,NO,0,40.0000,Bip Gabriel,0,", "Camera.ActionSetFocus", 12, 1)
  end
  am = ac:GetAct("HandS3Catched")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,900,50,NO,0,40.0000,Bip Gabriel,0,", "Camera.ActionSetFocus", 12, 1)
  end
  am = ac:GetAct("HangWallAttack")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.9500,0.0,0.0,1.4000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 21, 1)
  end
  am = ac:GetAct("HitSharktopus")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,s,500,50,NO,0,5.0000,,0,", "Camera.ActionSetFocus", 0, 1)
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 28, 0)
    MakeChar.ActEvent(am, "4.0000,0.3000,issss,0,0.0,0,0", "Weapons.TimeBlendEvent", 2, 1)
  end
  am = ac:GetAct("NdCachedAttackLeft")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5500,25.0000,0.0000,1.0000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 17, 1)
  end
  am = ac:GetAct("NdCachedAttackRight")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5500,-25.0000,-105.0000,1.0000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 17, 1)
  end
  am = ac:GetAct("NdCachedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,600,50,NO,0,20.0000,,0,", "Camera.ActionSetFocus", 0, 1)
  end
  am = ac:GetAct("NdCachedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 51, 0)
  end
  am = ac:GetAct("NdCachedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 50, 0)
    MakeChar.ActEvent(am, "0.6500,0.0000,110.0000,1.2000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 34, 1)
  end
  am = ac:GetAct("RunInitFallRun")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2500,90.0000,0.0000,0.4000,S2qoooooszI,0,0,0,0,1", "Weapons.CamLinearShakeEvent", 5, 1)
  end
  am = ac:GetAct("SawWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,0.0,0.0,0.8000,S2qoooooszI,0,0.0,0,0,0", "Weapons.CamLinearShakeEvent", 14, 1)
  end
  am = ac:GetAct("TbCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5500,0.0000,90.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 4, 1)
  end
  am = ac:GetAct("WebDestroy")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5500,0.0000,-90.0000,0.8000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 2, 1)
    MakeChar.ActEvent(am, "0.4000,0.4000,Sqoss,0,0,0", "Weapons.TimeBlendEvent", 1, 1)
  end
  am = ac:GetAct("WhipAaCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,600,50,YES,110,20.0000,Bip Gabriel", "Camera.ActionSetFocus", 19, 1)
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 23, 1)
    MakeChar.ActEvent(am, "0.8500,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 15, 1)
    MakeChar.ActEvent(am, "1.4000,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 23, 1)
  end
  am = ac:GetAct("WhipAaCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 29, 0)
    MakeChar.ActEvent(am, "0.8500,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 39, 1)
    MakeChar.ActEvent(am, "0.6500,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 53, 1)
  end
  am = ac:GetAct("WhipAaCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 16, 0)
    MakeChar.ActEvent(am, "0.8500,0.0000,0.0000,1.1000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 18, 1)
  end
  am = ac:GetAct("WhipAaCatchShieldLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 28, 1)
    MakeChar.ActEvent(am, "0.6500,0.1000,isss,0,0,0", "Weapons.TimeBlendEvent", 25, 1)
    MakeChar.ActEvent(am, "0.8500,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 28, 1)
  end
  am = ac:GetAct("WhipAaCatchShieldWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.8500,0.0000,0.0000,1.1000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 70, 1)
  end
  am = ac:GetAct("WhipAaCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 126, 1)
    MakeChar.ActEvent(am, "0.7000,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 107, 1)
  end
  am = ac:GetAct("WhipAaCatchWin2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 187, 0)
    MakeChar.ActEvent(am, "0.4000,16.0000,34.0000,0.7000,S2qoooooszI,0,0.0,0,0,0", "Weapons.CamLinearShakeEvent", 183, 1)
  end
  am = ac:GetAct("WhipBlockComboAEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.7500,90.0000,0.0000,1.4000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 43, 1)
  end
  am = ac:GetAct("WhipBlockComboDEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,1.5000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 37, 1)
  end
  am = ac:GetAct("WhipBlockHitSync")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.1000,iaai,700,50,NO,0,4.0000,,0,", "Camera.ActionSetFocus", 0, 1)
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 8, 0)
    MakeChar.ActEvent(am, "2.0000,0.0500,aai,0,0,0", "Weapons.TimeBlendEvent", 0, 1)
  end
  am = ac:GetAct("WhipBtCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.8500,0.0000,0.0000,1.4000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 57, 1)
    MakeChar.ActEvent(am, "0.7000,0.3000,isss,0,0,0,0", "Weapons.TimeBlendEvent", 57, 1)
  end
  am = ac:GetAct("WhipCcHold")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,600,50,NO,0,0.0,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 16, 1)
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 77, 0)
  end
  am = ac:GetAct("WhipCfCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,500,50,NO,0,20.0000,DC_Root,0,", "Camera.ActionSetFocus", 23, 1)
    MakeChar.ActEvent(am, "0.7500,90.0000,0.0,0.8500,S2qoooooszI,0,0.0,0,0,1", "Weapons.CamLinearShakeEvent", 34, 1)
  end
  am = ac:GetAct("WhipCfCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 2, 0)
  end
  am = ac:GetAct("WhipCfCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 20, 0)
    MakeChar.ActEvent(am, "0.7500,-21.0000,0.0,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 15, 1)
  end
  am = ac:GetAct("WhipCoCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Hand,0,", "Camera.ActionSetFocus", 16, 1)
  end
  am = ac:GetAct("WhipCoCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Hand,0,", "Camera.ActionSetFocus", 9, 1)
  end
  am = ac:GetAct("WhipCoCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6000,s,", "Camera.ActionLoseFocus", 60, 0)
  end
  am = ac:GetAct("WhipCoCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 6, 0)
  end
  am = ac:GetAct("WhipCoCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 68, 0)
  end
  am = ac:GetAct("WhipCoCatchedLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 95, 0)
  end
  am = ac:GetAct("WhipCoCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 68, 0)
  end
  am = ac:GetAct("WhipComboDDDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5500,90.0000,0.0000,0.7000,S2qooooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 16, 1)
  end
  am = ac:GetAct("WhipComboDDhD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.7500,90.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 17, 1)
  end
  am = ac:GetAct("WhipComboDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.4000,90.0000,0.0000,0.9500,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 14, 1)
  end
  am = ac:GetAct("WhipComboDrDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.4000,90.0000,0.0000,1.0000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 32, 1)
  end
  am = ac:GetAct("WhipComboDrDrDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.4000,90.0000,0.0000,1.1000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 47, 1)
  end
  am = ac:GetAct("WhipComboDrDrDrDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,90.0000,0.0000,1.2000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 62, 1)
  end
  am = ac:GetAct("WhipComboDrDrDrDrDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.9000,90.0000,0.0000,1.4000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 77, 1)
  end
  am = ac:GetAct("WhipComboDrMhs")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.0400,issss,0,0,0", "Weapons.TimeBlendEvent", 9, 0)
  end
  am = ac:GetAct("WhipComboDrMhss")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.0400,issss,0,0,0", "Weapons.TimeBlendEvent", 5, 0)
  end
  am = ac:GetAct("WhipComboDrMhsss")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.0400,issss,0,0,0", "Weapons.TimeBlendEvent", 9, 0)
  end
  am = ac:GetAct("WhipCrystalPowerEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 100, 0)
  end
  am = ac:GetAct("WhipCrystalPowerInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,,100,70,JUSTANG,0,0.0,Bip Gabriel L Hand,0,", "Camera.ActionSetFocus", 23, 1)
    MakeChar.ActEvent(am, "0.6000,,100,70,JUSTANG,0,0.0,Bip Gabriel L Hand,0,", "Camera.ActionSetFocus", 32, 1)
    MakeChar.ActEvent(am, "1.0000,s,", "Camera.ActionLoseFocus", 31, 1)
  end
  am = ac:GetAct("WhipDL2Catch")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6000,123.0000,-6.0000,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 93, 1)
    MakeChar.ActEvent(am, "0.6500,126.0000,-6.0000,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 116, 1)
  end
  am = ac:GetAct("WhipDL2CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,-33.0000,0.0000,0.6000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 27, 1)
    MakeChar.ActEvent(am, "0.6000,123.0000,-15.0000,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 66, 1)
  end
  am = ac:GetAct("WhipDL2CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,90.0000,0.0,1.2000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 9, 1)
  end
  am = ac:GetAct("WhipDL2CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,98.0000,9.0000,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 150, 1)
    MakeChar.ActEvent(am, "0.6000,68.0000,42.0000,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 179, 1)
    MakeChar.ActEvent(am, "0.8000,95.0000,9.0000,1.2000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 234, 1)
    MakeChar.ActEvent(am, "0.5000,90.0000,0.0000,0.8000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 275, 1)
  end
  am = ac:GetAct("WhipDL2CatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,YES,-120,20.0000,Bip Gabriel Head", "Camera.ActionSetFocus", 55, 1)
    MakeChar.ActEvent(am, "0.6500,0.0000,-90.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 18, 1)
    MakeChar.ActEvent(am, "0.8500,0.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 60, 1)
    MakeChar.ActEvent(am, "0.4500,0.4000,isss,0,0,0", "Weapons.TimeBlendEvent", 19, 1)
    MakeChar.ActEvent(am, "0.5500,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 62, 1)
  end
  am = ac:GetAct("WhipDL2CatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 198, 0)
    MakeChar.ActEvent(am, "0.7500,90.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 173, 1)
    MakeChar.ActEvent(am, "0.6500,90.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 198, 1)
    MakeChar.ActEvent(am, "0.5500,90.0000,0.0000,0.6000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 229, 1)
  end
  am = ac:GetAct("WhipDL2CatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 159, 0)
    MakeChar.ActEvent(am, "0.4500,90.0000,0.0000,0.6000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 156, 1)
    MakeChar.ActEvent(am, "0.8500,0.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 177, 1)
    MakeChar.ActEvent(am, "0.4500,0.4000,isss,0,0,0", "Weapons.TimeBlendEvent", 157, 1)
    MakeChar.ActEvent(am, "0.7500,0.1500,isss,0,0,0", "Weapons.TimeBlendEvent", 178, 1)
  end
  am = ac:GetAct("WhipDarkDodgeFront")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,1.4000,S2qooooooszI,1,0.3000,0,0", "Weapons.CamLinearShakeEvent", 6, 1)
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,1.4000,S2qooooooszI,1,0.3000,0,0", "Weapons.CamLinearShakeEvent", 8, 1)
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,1.4000,S2qooooooszI,1,0.3000,0,0", "Weapons.CamLinearShakeEvent", 10, 1)
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,1.4000,S2qooooooszI,1,0.3000,0,0", "Weapons.CamLinearShakeEvent", 12, 1)
    MakeChar.ActEvent(am, "0.5500,0.1000,aaaaaaaai,0,0.0,0", "Weapons.TimeBlendEvent", 4, 1)
  end
  am = ac:GetAct("WhipDl2Catched2Init")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.9500,36.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 72, 1)
  end
  am = ac:GetAct("WhipDl2Catched2Lose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.8500,33.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 16, 1)
    MakeChar.ActEvent(am, "0.5500,0.4000,isss,0,0,0", "Weapons.TimeBlendEvent", 17, 1)
  end
  am = ac:GetAct("WhipDl2Catched2Win")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.8500,90.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 6, 1)
  end
  am = ac:GetAct("WhipEva2CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2500,-18.0000,-63.0000,0.5000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 12, 1)
    MakeChar.ActEvent(am, "0.6500,0.0000,90.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 23, 1)
    MakeChar.ActEvent(am, "0.6500,0.0000,90.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 60, 1)
    MakeChar.ActEvent(am, "0.1500,0.2500,isss,0,0,0", "Weapons.TimeBlendEvent", 8, 1)
    MakeChar.ActEvent(am, "0.9500,0.4000,isss,0,0,0", "Weapons.TimeBlendEvent", 12, 1)
    MakeChar.ActEvent(am, "0.9500,0.2500,isss,0,0,0", "Weapons.TimeBlendEvent", 24, 1)
    MakeChar.ActEvent(am, "0.6500,0.2500,isss,0,0,0", "Weapons.TimeBlendEvent", 49, 1)
    MakeChar.ActEvent(am, "0.7500,0.1500,isss,0,0,0", "Weapons.TimeBlendEvent", 60, 1)
    MakeChar.ActEvent(am, "0.5500,0.5500,isss,0,0,0", "Weapons.TimeBlendEvent", 79, 1)
  end
  am = ac:GetAct("WhipEva2CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,90.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 165, 1)
    MakeChar.ActEvent(am, "0.5000,0.0000,90.0000,0.7000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 263, 1)
    MakeChar.ActEvent(am, "0.3500,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 163, 1)
    MakeChar.ActEvent(am, "0.4500,0.2500,isss,0,0,0", "Weapons.TimeBlendEvent", 166, 1)
    MakeChar.ActEvent(am, "0.9500,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 245, 1)
  end
  am = ac:GetAct("WhipEva2CatchLose0")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,55.0000,-112.0000,0.8000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 28, 1)
  end
  am = ac:GetAct("WhipEva2CatchLose1")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,-10.0000,-45.0000,0.9000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 65, 1)
  end
  am = ac:GetAct("WhipEva2CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 203, 1)
    MakeChar.ActEvent(am, "0.7500,90.0000,0.0000,1.4000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 235, 1)
    MakeChar.ActEvent(am, "0.6500,0.0000,90.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 278, 1)
    MakeChar.ActEvent(am, "0.8500,0.0000,90.0000,1.4000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 337, 1)
    MakeChar.ActEvent(am, "0.8500,0.5000,isss,0,0,0", "Weapons.TimeBlendEvent", 162, 1)
    MakeChar.ActEvent(am, "0.4000,0.2500,isss,0,0,0", "Weapons.TimeBlendEvent", 188, 1)
    MakeChar.ActEvent(am, "0.4500,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 198, 1)
    MakeChar.ActEvent(am, "0.8500,0.1000,isss,0,0,0", "Weapons.TimeBlendEvent", 204, 1)
    MakeChar.ActEvent(am, "0.2500,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 232, 1)
    MakeChar.ActEvent(am, "0.7500,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 235, 1)
    MakeChar.ActEvent(am, "0.5500,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 267, 1)
  end
  am = ac:GetAct("WhipEvaCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,YES,-130,25.0000,Bip Gabriel Head", "Camera.ActionSetFocus", 8, 1)
  end
  am = ac:GetAct("WhipEvaCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 139, 0)
    MakeChar.ActEvent(am, "0.6500,90.0000,0.0000,0.7000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 175, 1)
  end
  am = ac:GetAct("WhipEvaCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 165, 0)
    MakeChar.ActEvent(am, "0.7000,30.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 121, 1)
    MakeChar.ActEvent(am, "0.8500,30.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 164, 1)
    MakeChar.ActEvent(am, "0.5500,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 117, 1)
    MakeChar.ActEvent(am, "0.5500,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 160, 1)
  end
  am = ac:GetAct("WhipEvbCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,-33.0000,-93.0000,0.7000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 10, 1)
    MakeChar.ActEvent(am, "0.7500,69.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 33, 1)
    MakeChar.ActEvent(am, "0.5500,54.0000,0.0000,0.7000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 60, 1)
  end
  am = ac:GetAct("WhipEvbCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.8500,-30.0000,-42.0000,0.9000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 2, 1)
    MakeChar.ActEvent(am, "0.8500,0.0000,90.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 29, 1)
    MakeChar.ActEvent(am, "0.5500,90.0000,0.0000,0.7000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 40, 1)
    MakeChar.ActEvent(am, "0.6500,0.4000,isss,0,0,0", "Weapons.TimeBlendEvent", 30, 1)
  end
  am = ac:GetAct("WhipEvbCatchLose0")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,0.0000,-72.0000,1.2000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 37, 1)
  end
  am = ac:GetAct("WhipEvbCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.8500,30.0000,90.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 42, 1)
    MakeChar.ActEvent(am, "0.8500,27.0000,0.0000,1.1000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 75, 1)
    MakeChar.ActEvent(am, "0.6500,0.0000,-90.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 100, 1)
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 288, 1)
  end
  am = ac:GetAct("WhipEvbCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,YES,-130,25.0000,Bip Gabriel Head", "Camera.ActionSetFocus", 8, 1)
  end
  am = ac:GetAct("WhipEvbCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 139, 0)
    MakeChar.ActEvent(am, "0.6500,90.0000,0.0000,0.7000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 175, 1)
  end
  am = ac:GetAct("WhipEvbCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 165, 0)
    MakeChar.ActEvent(am, "0.7000,30.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 121, 1)
    MakeChar.ActEvent(am, "0.8500,30.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 164, 1)
    MakeChar.ActEvent(am, "0.5500,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 117, 1)
    MakeChar.ActEvent(am, "0.5500,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 160, 1)
  end
  am = ac:GetAct("WhipFallBlockComboAEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.8500,90.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 26, 1)
  end
  am = ac:GetAct("WhipFallBlockComboDEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.8000,90.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 42, 1)
  end
  am = ac:GetAct("WhipFallComboDhD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.7500,90.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 6, 1)
  end
  am = ac:GetAct("WhipFallComboDhInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5500,90.0000,0.0000,1.0000,S2qooooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 21, 1)
  end
  am = ac:GetAct("WhipFallComboGripBig")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.7500,45.0000,-180.0000,1.0000,S2qoooooszI,1,0.0,0,0", "Weapons.CamLinearShakeEvent", 24, 1)
  end
  am = ac:GetAct("WhipFallComboGripSmallDown")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,0.2000,Sqoss,0,0.0,0", "Weapons.TimeBlendEvent", 6, 1)
  end
  am = ac:GetAct("WhipFallComboStomp")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,90.0000,0.0000,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 2, 1)
  end
  am = ac:GetAct("WhipFallHighEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3500,90.0000,0.0000,0.5000,S2qoooooszI,0,0,0,0,1", "Weapons.CamLinearShakeEvent", 4, 1)
  end
  am = ac:GetAct("WhipFallHitEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3500,90.0000,0.0000,0.8000,S2qoooooszI,0,0,0,0,0", "Weapons.CamLinearShakeEvent", 4, 1)
  end
  am = ac:GetAct("WhipFallHitHardEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3500,90.0000,0.0000,0.8000,S2qoooooszI,0,0,0,0,0", "Weapons.CamLinearShakeEvent", 10, 1)
  end
  am = ac:GetAct("WhipFhCatchKick")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,70.0000,0.0000,0.7000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 11, 1)
    MakeChar.ActEvent(am, "0.6000,43.0000,0.0,0.7000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 43, 1)
    MakeChar.ActEvent(am, "0.7500,90.0000,0.0,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 84, 1)
  end
  am = ac:GetAct("WhipFhCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.4000,90.0000,0.0000,0.6000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 10, 1)
    MakeChar.ActEvent(am, "0.7000,-12.0000,102.0000,1.2000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 25, 1)
    MakeChar.ActEvent(am, "0.8000,30.0000,0.0000,1.2000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 56, 1)
  end
  am = ac:GetAct("WhipGbCatchBomb")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 48, 0)
    MakeChar.ActEvent(am, "0.3500,0.5000,i2SSos,0,0.0,0", "Weapons.TimeBlendEvent", 42, 1)
  end
  am = ac:GetAct("WhipGbCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 92, 0)
  end
  am = ac:GetAct("WhipGbCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,600,50,NO,0,20.0000,Bip Gabriel L Forearm,0,", "Camera.ActionSetFocus", 21, 1)
    MakeChar.ActEvent(am, "0.5000,s,600,50,NO,0,20.0000,Bip Gabriel L Forearm,0,", "Camera.ActionSetFocus", 51, 1)
    MakeChar.ActEvent(am, "1.0000,,", "Camera.ActionLoseFocus", 50, 0)
  end
  am = ac:GetAct("WhipGbCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Forearm,0,", "Camera.ActionSetFocus", 6, 1)
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Forearm,0,", "Camera.ActionSetFocus", 22, 1)
    MakeChar.ActEvent(am, "1.0000,,", "Camera.ActionLoseFocus", 21, 0)
  end
  am = ac:GetAct("WhipGbCatchPunch")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 47, 0)
    MakeChar.ActEvent(am, "0.5500,20.0000,-10.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 11, 1)
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 39, 1)
    MakeChar.ActEvent(am, "0.3000,0.2500,i2Sos,0,0.0,0", "Weapons.TimeBlendEvent", 5, 1)
    MakeChar.ActEvent(am, "0.7000,0.0800,i2oss,0,0.0,0", "Weapons.TimeBlendEvent", 29, 1)
  end
  am = ac:GetAct("WhipGdCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.4000,90.0000,0.0000,0.5000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 28, 1)
    MakeChar.ActEvent(am, "0.5000,90.0000,0.0000,0.6000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 78, 1)
    MakeChar.ActEvent(am, "0.8000,30.0000,-180.0000,1.2000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 176, 1)
    MakeChar.ActEvent(am, "0.4500,0.2000,iss,0,0.0,0", "Weapons.TimeBlendEvent", 176, 1)
  end
  am = ac:GetAct("WhipGdCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.7500,0.2000,is,0,0.0,0", "Weapons.TimeBlendEvent", 55, 1)
  end
  am = ac:GetAct("WhipGdCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.8500,90.0000,0.0,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 190, 1)
    MakeChar.ActEvent(am, "0.2500,0.2000,iss,0,0.0,0", "Weapons.TimeBlendEvent", 191, 1)
  end
  am = ac:GetAct("WhipGdCatchLose3")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.8500,90.0000,0.0,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 190, 1)
    MakeChar.ActEvent(am, "0.8500,90.0000,0.0,1.2000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 224, 1)
    MakeChar.ActEvent(am, "0.2500,0.2000,iss,0,0.0,0", "Weapons.TimeBlendEvent", 191, 1)
  end
  am = ac:GetAct("WhipGdCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,0.0,0.0,0.8000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 59, 1)
    MakeChar.ActEvent(am, "0.6500,24.0000,116.0000,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 99, 1)
    MakeChar.ActEvent(am, "0.7500,138.0000,0.0000,1.2000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 135, 1)
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 210, 1)
    MakeChar.ActEvent(am, "0.7500,0.3000,iss,0,0.0,0", "Weapons.TimeBlendEvent", 126, 1)
    MakeChar.ActEvent(am, "0.5000,0.2500,iss,0,0.0,0", "Weapons.TimeBlendEvent", 136, 1)
  end
  am = ac:GetAct("WhipGdCatchWin2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,0.8000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 225, 1)
    MakeChar.ActEvent(am, "0.9500,0.0000,0.0000,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 249, 1)
    MakeChar.ActEvent(am, "0.9500,90.0000,0.0000,1.2000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 332, 1)
    MakeChar.ActEvent(am, "0.9500,75.0000,90.0000,1.2000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 435, 1)
    MakeChar.ActEvent(am, "0.6500,0.3000,iss,0,0.0,0", "Weapons.TimeBlendEvent", 227, 1)
    MakeChar.ActEvent(am, "0.3500,0.2000,iss,0,0.0,0", "Weapons.TimeBlendEvent", 250, 1)
    MakeChar.ActEvent(am, "0.7000,0.5000,iss,0,0.0,0", "Weapons.TimeBlendEvent", 317, 1)
    MakeChar.ActEvent(am, "0.4000,0.1500,iss,0,0.0,0", "Weapons.TimeBlendEvent", 342, 1)
    MakeChar.ActEvent(am, "0.4500,0.2000,iss,0,0.0,0", "Weapons.TimeBlendEvent", 435, 1)
  end
  am = ac:GetAct("WhipGdCatchWinDoor")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,0.8000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 225, 1)
    MakeChar.ActEvent(am, "0.9500,0.0000,0.0000,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 249, 1)
    MakeChar.ActEvent(am, "0.9500,90.0000,0.0000,1.2000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 332, 1)
    MakeChar.ActEvent(am, "0.9500,75.0000,90.0000,1.2000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 435, 1)
    MakeChar.ActEvent(am, "0.5500,0.0,70.0000,0.6000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 559, 1)
    MakeChar.ActEvent(am, "0.7500,0.0,0.0000,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 622, 1)
    MakeChar.ActEvent(am, "0.6500,0.3000,iss,0,0.0,0", "Weapons.TimeBlendEvent", 227, 1)
    MakeChar.ActEvent(am, "0.3500,0.2000,iss,0,0.0,0", "Weapons.TimeBlendEvent", 250, 1)
    MakeChar.ActEvent(am, "0.7000,0.5000,iss,0,0.0,0", "Weapons.TimeBlendEvent", 317, 1)
    MakeChar.ActEvent(am, "0.4000,0.1500,iss,0,0.0,0", "Weapons.TimeBlendEvent", 342, 1)
    MakeChar.ActEvent(am, "0.4500,0.2000,iss,0,0.0,0", "Weapons.TimeBlendEvent", 435, 1)
  end
  am = ac:GetAct("WhipGhCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 26, 1)
  end
  am = ac:GetAct("WhipGhCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 23, 1)
  end
  am = ac:GetAct("WhipGhCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 104, 0)
  end
  am = ac:GetAct("WhipGhCatchPunch")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 46, 0)
    MakeChar.ActEvent(am, "0.5500,0.0000,-45.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 28, 1)
    MakeChar.ActEvent(am, "0.5500,0.0000,90.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 44, 1)
    MakeChar.ActEvent(am, "1.4500,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 45, 1)
  end
  am = ac:GetAct("WhipGhCatchThrow")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 68, 0)
    MakeChar.ActEvent(am, "0.7000,0.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 17, 1)
    MakeChar.ActEvent(am, "0.9500,0.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 71, 1)
    MakeChar.ActEvent(am, "0.8000,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 7, 1)
    MakeChar.ActEvent(am, "1.0000,0.1500,issss,0,0,0", "Weapons.TimeBlendEvent", 62, 1)
  end
  am = ac:GetAct("WhipGlCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 93, 0)
  end
  am = ac:GetAct("WhipGlCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 23, 1)
  end
  am = ac:GetAct("WhipGlCatchKick")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 25, 0)
    MakeChar.ActEvent(am, "0.4500,90.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 13, 1)
    MakeChar.ActEvent(am, "0.4000,0.2000,Sqoss,0,0,0", "Weapons.TimeBlendEvent", 7, 1)
    MakeChar.ActEvent(am, "0.5000,0.0600,Sqoss,0,0,0", "Weapons.TimeBlendEvent", 13, 1)
  end
  am = ac:GetAct("WhipGlCatchThrow")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 48, 0)
    MakeChar.ActEvent(am, "0.3500,0.0000,-90.0000,0.6000,,0,0,0", "Weapons.CamLinearShakeEvent", 14, 1)
    MakeChar.ActEvent(am, "0.5500,45.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 38, 1)
    MakeChar.ActEvent(am, "0.3500,0.2000,Sqos,0,0,0", "Weapons.TimeBlendEvent", 8, 1)
    MakeChar.ActEvent(am, "0.4000,0.2000,Sqoss,0,0,0", "Weapons.TimeBlendEvent", 14, 1)
    MakeChar.ActEvent(am, "0.4000,0.1500,Sqos,0,0,0", "Weapons.TimeBlendEvent", 31, 1)
    MakeChar.ActEvent(am, "0.6000,0.0600,Sqoss,0,0,0", "Weapons.TimeBlendEvent", 38, 1)
    MakeChar.ActEvent(am, "0.3500,0.2000,Sqos,0,0,0", "Weapons.TimeBlendEvent", 55, 1)
  end
  am = ac:GetAct("WhipLlCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 11, 0)
  end
  am = ac:GetAct("WhipLlCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 22, 1)
  end
  am = ac:GetAct("WhipLlCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 8, 1)
  end
  am = ac:GetAct("WhipLlCatchKick")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 39, 0)
    MakeChar.ActEvent(am, "0.5500,90.0000,0.0000,1.1000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 29, 1)
    MakeChar.ActEvent(am, "0.6500,0.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 41, 1)
    MakeChar.ActEvent(am, "0.6000,0.2000,i2SSoss,0,0.0,0", "Weapons.TimeBlendEvent", 14, 1)
    MakeChar.ActEvent(am, "0.5000,0.1500,i2SSos,0,0.0,0", "Weapons.TimeBlendEvent", 33, 1)
  end
  am = ac:GetAct("WhipLlCatchPunch")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 0, 0)
    MakeChar.ActEvent(am, "0.5500,90.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 7, 1)
    MakeChar.ActEvent(am, "0.7500,-90.0000,0.0000,1.4000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 20, 1)
    MakeChar.ActEvent(am, "0.4000,0.1000,dis,0,0.0,0", "Weapons.TimeBlendEvent", 3, 1)
    MakeChar.ActEvent(am, "0.9000,0.0600,is,0,0.0,0", "Weapons.TimeBlendEvent", 12, 1)
  end
  am = ac:GetAct("WhipMdCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 23, 1)
  end
  am = ac:GetAct("WhipMdCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 9, 1)
  end
  am = ac:GetAct("WhipMdCatchKick")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 44, 0)
    MakeChar.ActEvent(am, "0.6500,90.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 20, 1)
    MakeChar.ActEvent(am, "0.7500,90.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 41, 1)
    MakeChar.ActEvent(am, "0.6500,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 12, 1)
    MakeChar.ActEvent(am, "0.4000,0.4500,isss,0,0,0", "Weapons.TimeBlendEvent", 24, 1)
    MakeChar.ActEvent(am, "0.6000,0.3000,iss,0,0,0", "Weapons.TimeBlendEvent", 28, 1)
  end
  am = ac:GetAct("WhipMdCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 19, 0)
    MakeChar.ActEvent(am, "0.6000,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 11, 1)
  end
  am = ac:GetAct("WhipMdCatchScream")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 104, 0)
    MakeChar.ActEvent(am, "0.8500,90.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 91, 1)
  end
  am = ac:GetAct("WhipMmCatch")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.7000,90.0000,0.0000,0.8000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 96, 1)
    MakeChar.ActEvent(am, "0.7500,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 97, 1)
  end
  am = ac:GetAct("WhipMmCatch2Lose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.9500,0.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 187, 1)
  end
  am = ac:GetAct("WhipMmCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.7000,90.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 69, 1)
    MakeChar.ActEvent(am, "0.4500,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 68, 1)
  end
  am = ac:GetAct("WhipMmCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.7500,90.0000,0.0000,0.7000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 100, 1)
  end
  am = ac:GetAct("WhipMmCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "1.0000,s,150,60,YES,110,15.0000,Bip Gabriel L Finger1,-10,", "Camera.ActionSetFocus", 270, 1)
    MakeChar.ActEvent(am, "1.0000,s,", "Camera.ActionLoseFocus", 320, 0)
    MakeChar.ActEvent(am, "0.8500,90.0000,0.0000,1.0000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 132, 1)
    MakeChar.ActEvent(am, "0.9500,0.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 185, 1)
    MakeChar.ActEvent(am, "0.2500,0.4000,isss,0,0,0", "Weapons.TimeBlendEvent", 126, 1)
    MakeChar.ActEvent(am, "0.7500,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 134, 1)
    MakeChar.ActEvent(am, "0.6500,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 173, 1)
    MakeChar.ActEvent(am, "0.7500,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 186, 1)
  end
  am = ac:GetAct("WhipMmCatch_2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.7000,90.0000,0.0000,0.8000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 96, 1)
    MakeChar.ActEvent(am, "0.7500,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 97, 1)
  end
  am = ac:GetAct("WhipMmCatch_3")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.7000,90.0000,0.0000,0.8000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 96, 1)
    MakeChar.ActEvent(am, "0.7500,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 97, 1)
  end
  am = ac:GetAct("WhipRgCatch")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.4500,0.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 26, 1)
    MakeChar.ActEvent(am, "0.4500,0.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 35, 1)
    MakeChar.ActEvent(am, "0.4500,0.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 44, 1)
    MakeChar.ActEvent(am, "0.4500,0.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 53, 1)
  end
  am = ac:GetAct("WhipRgCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,700,60,YES,150,20.0000,DC_Grab,0,", "Camera.ActionSetFocus", 21, 1)
  end
  am = ac:GetAct("WhipRgCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.4500,0.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 69, 1)
  end
  am = ac:GetAct("WhipRgCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,700,60,YES,150,20.0000,,0,", "Camera.ActionSetFocus", 138, 1)
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 82, 0)
    MakeChar.ActEvent(am, "0.4500,0.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 70, 1)
    MakeChar.ActEvent(am, "0.4500,0.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 83, 1)
    MakeChar.ActEvent(am, "0.6500,-42.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 139, 1)
    MakeChar.ActEvent(am, "0.4500,147.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 164, 1)
    MakeChar.ActEvent(am, "0.4500,147.0000,0.0000,0.8000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 198, 1)
    MakeChar.ActEvent(am, "0.8500,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 129, 1)
  end
  am = ac:GetAct("WhipRgCatchWin2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 232, 0)
  end
  am = ac:GetAct("WhipScCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 13, 1)
  end
  am = ac:GetAct("WhipScCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 92, 0)
  end
  am = ac:GetAct("WhipScCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 104, 0)
  end
  am = ac:GetAct("WhipScCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5500,0.0000,-51.0000,0.9000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 84, 1)
  end
  am = ac:GetAct("WhipSmCatch")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,600,50,NO,0,0.0000,", "Camera.ActionSetFocus", 26, 1)
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 48, 0)
  end
  am = ac:GetAct("WhipSmFailInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,600,50,YES,-112,0.0,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 6, 1)
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 29, 0)
  end
  am = ac:GetAct("WhipSprintComboDDark")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.9500,45.0000,0.0000,1.2000,S2qooooozsI,0,0,0", "Weapons.CamLinearShakeEvent", 18, 1)
  end
  am = ac:GetAct("WhipSwCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,600,50,YES,-150,20.0000,Bip Gabriel R Hand", "Camera.ActionSetFocus", 82, 1)
  end
  am = ac:GetAct("WhipSwCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 175, 0)
  end
  am = ac:GetAct("WhipSwCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 34, 0)
  end
  am = ac:GetAct("WhipSwCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 206, 0)
  end
  am = ac:GetAct("WhipSyncComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 11, 0)
  end
  am = ac:GetAct("WhipSyncComboAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 16, 0)
  end
  am = ac:GetAct("WhipSyncComboAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 35, 0)
  end
  am = ac:GetAct("WhipSyncComboAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 49, 0)
  end
  am = ac:GetAct("WhipSyncComboAAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 62, 0)
  end
  am = ac:GetAct("WhipSyncComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 5, 0)
  end
  am = ac:GetAct("WhipSyncComboDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 12, 0)
  end
  am = ac:GetAct("WhipSyncComboDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 29, 0)
  end
  am = ac:GetAct("WhipTbCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 0, 0)
  end
  am = ac:GetAct("WhipTbCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 320, 0)
  end
  am = ac:GetAct("WhipTsCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 95, 0)
  end
  am = ac:GetAct("WhipTsCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,600,50,NO,0,20.0000,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 19, 1)
  end
  am = ac:GetAct("WhipTsCatchHitA")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 46, 0)
  end
  am = ac:GetAct("WhipTsCatchHitD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 45, 0)
    MakeChar.ActEvent(am, "0.4500,90.0000,0.0000,0.8000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 18, 1)
    MakeChar.ActEvent(am, "0.7500,90.0000,0.0000,1.0000,S2qoooooszI,0,0,0,0", "Weapons.CamLinearShakeEvent", 45, 1)
    MakeChar.ActEvent(am, "0.3500,0.2000,Sqosss,0,0,0", "Weapons.TimeBlendEvent", 9, 1)
    MakeChar.ActEvent(am, "0.3500,0.2000,Sqosss,0,0,0", "Weapons.TimeBlendEvent", 41, 1)
  end
  am = ac:GetAct("WhipTsCatchHitJ")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 43, 0)
  end
  am = ac:GetAct("WhipTsCatchHitK")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,s,", "Camera.ActionLoseFocus", 19, 0)
  end
  am = ac:GetAct("WhipTsCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 4, 1)
  end
  am = ac:GetAct("WhipVwCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,600,50,YES,-150,20.0000,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 6, 1)
    MakeChar.ActEvent(am, "0.3000,0.5000,isss,0,0,0", "Weapons.TimeBlendEvent", 2, 1)
    MakeChar.ActEvent(am, "0.5000,0.2500,isss,0,0,0", "Weapons.TimeBlendEvent", 6, 1)
  end
  am = ac:GetAct("WhipVwCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 61, 0)
    MakeChar.ActEvent(am, "0.6500,21.0000,6.0000,0.8000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 59, 1)
    MakeChar.ActEvent(am, "0.3500,0.2000,isss,0,0,0", "Weapons.TimeBlendEvent", 56, 1)
  end
  am = ac:GetAct("WhipVwCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 36, 0)
    MakeChar.ActEvent(am, "0.7000,-45.0000,-24.0000,0.7000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 14, 1)
    MakeChar.ActEvent(am, "0.8500,63.0000,-12.0000,1.0000,S2qoooooszI,0,0.0,0,0", "Weapons.CamLinearShakeEvent", 29, 1)
  end
  am = ac:GetAct("WhipVwCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,600,50,YES,-90,20.0000,Bip Gabriel Head", "Camera.ActionSetFocus", 5, 1)
  end
  am = ac:GetAct("WhipVwCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 115, 0)
  end
  am = ac:GetAct("WhipVwCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 106, 0)
  end
  am = ac:GetAct("WhipWcCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 16, 1)
  end
  am = ac:GetAct("WhipWcCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 3, 0)
  end
  am = ac:GetAct("WhipWcCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 55, 1)
  end
  am = ac:GetAct("WhipZbCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 105, 0)
  end
  am = ac:GetAct("WhipZbCatchHead")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 17, 0)
    MakeChar.ActEvent(am, "0.8000,39.0000,-21.0000,0.9000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 18, 1)
    MakeChar.ActEvent(am, "0.4000,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 5, 1)
    MakeChar.ActEvent(am, "0.9000,0.1000,isss,0,0,0", "Weapons.TimeBlendEvent", 18, 1)
  end
  am = ac:GetAct("WhipZbCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,500,50,NO,0,20.0000,Bip Gabriel L Forearm", "Camera.ActionSetFocus", 13, 1)
  end
  am = ac:GetAct("WhipZbCatchThrow")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,s,", "Camera.ActionLoseFocus", 18, 0)
    MakeChar.ActEvent(am, "0.7000,0.0000,0.0000,1.2000,S2qoooooszI,0,0,0", "Weapons.CamLinearShakeEvent", 17, 1)
    MakeChar.ActEvent(am, "0.5000,0.3000,isss,0,0,0", "Weapons.TimeBlendEvent", 6, 1)
  end
end
