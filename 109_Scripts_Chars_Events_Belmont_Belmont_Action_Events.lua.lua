function Belmont_Action_Events.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("EquilibriumShakeFall")
  if am ~= nil then
    MakeChar.ActEvent(am, "EquilibriumFail", "Tips.EventSetTimestamp", 0, 1)
  end
  am = ac:GetAct("EquilibriumShakeLeftFall")
  if am ~= nil then
    MakeChar.ActEvent(am, "EquilibriumFail", "Tips.EventSetTimestamp", 0, 1)
  end
  am = ac:GetAct("EquilibriumShakeRightFall")
  if am ~= nil then
    MakeChar.ActEvent(am, "EquilibriumFail", "Tips.EventSetTimestamp", 0, 1)
  end
  am = ac:GetAct("FallEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 41, 1)
  end
  am = ac:GetAct("FallHighEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 15, 1)
  end
  am = ac:GetAct("FallRunEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 12, 1)
  end
  am = ac:GetAct("FallShortEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 8, 1)
  end
  am = ac:GetAct("GetAmmo")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 76, 1)
  end
  am = ac:GetAct("HandCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 137, 1)
  end
  am = ac:GetAct("HandCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 110, 1)
  end
  am = ac:GetAct("HangLookDownFall")
  if am ~= nil then
    MakeChar.ActEvent(am, "LookDownFall", "Tips.EventSetTimestamp", 0, 1)
  end
  am = ac:GetAct("HangWallLookDownFall")
  if am ~= nil then
    MakeChar.ActEvent(am, "LookDownFall", "Tips.EventSetTimestamp", 0, 1)
  end
  am = ac:GetAct("HitSharktopus")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 1, 1)
  end
  am = ac:GetAct("HitUseRune")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 15, 1)
  end
  am = ac:GetAct("KickBoom")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 36, 1)
  end
  am = ac:GetAct("KickBoom0")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 38, 1)
  end
  am = ac:GetAct("KickGrenade")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 19, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 32, 1)
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 35, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 37, 1)
  end
  am = ac:GetAct("MirrorTeleportEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 19, 1)
  end
  am = ac:GetAct("NdCachedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "MinigameNaiadFail", "Tips.EventSetTimestamp", 75, 1)
  end
  am = ac:GetAct("PlaceCrystal")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 78, 1)
  end
  am = ac:GetAct("PushRelaxEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 17, 1)
  end
  am = ac:GetAct("PushRollEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 13, 1)
  end
  am = ac:GetAct("PushRollLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 17, 1)
  end
  am = ac:GetAct("PushRollWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 124, 1)
  end
  am = ac:GetAct("RagDollDestroy")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 12, 1)
  end
  am = ac:GetAct("SawLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 10, 1)
  end
  am = ac:GetAct("SawWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 33, 1)
  end
  am = ac:GetAct("StatueMiniGameLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 12, 1)
  end
  am = ac:GetAct("StatueMiniGameWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 80, 1)
  end
  am = ac:GetAct("TakeCrystal")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 34, 1)
  end
  am = ac:GetAct("TakeFlower")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 29, 1)
  end
  am = ac:GetAct("TakeFreeGem")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 42, 1)
  end
  am = ac:GetAct("TakeGem")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 42, 1)
  end
  am = ac:GetAct("TakeKey")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 33, 1)
  end
  am = ac:GetAct("TakeWater")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 67, 1)
  end
  am = ac:GetAct("TbCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 98, 1)
  end
  am = ac:GetAct("TbCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 24, 1)
  end
  am = ac:GetAct("TeleportEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 120, 1)
  end
  am = ac:GetAct("TrapDestroy")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 12, 1)
  end
  am = ac:GetAct("UseKey")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 76, 1)
  end
  am = ac:GetAct("UsePengoSwitchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 142, 1)
  end
  am = ac:GetAct("UseRune")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 74, 1)
  end
  am = ac:GetAct("WebDestroy")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 12, 1)
  end
  am = ac:GetAct("WhipAaCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 15, 1)
  end
  am = ac:GetAct("WhipAaCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 108, 1)
  end
  am = ac:GetAct("WhipAaCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 84, 1)
  end
  am = ac:GetAct("WhipAaCatchShieldLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 85, 1)
  end
  am = ac:GetAct("WhipAaCatchShieldWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 92, 1)
  end
  am = ac:GetAct("WhipAaCatchWin2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 227, 1)
  end
  am = ac:GetAct("WhipBk11CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 6, 1)
  end
  am = ac:GetAct("WhipBk11CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 130, 1)
  end
  am = ac:GetAct("WhipBk11CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 32, 1)
  end
  am = ac:GetAct("WhipBk12CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 11, 1)
  end
  am = ac:GetAct("WhipBk12CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 132, 1)
  end
  am = ac:GetAct("WhipBk12CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 32, 1)
  end
  am = ac:GetAct("WhipBk2CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 9, 1)
  end
  am = ac:GetAct("WhipBk2CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 130, 1)
  end
  am = ac:GetAct("WhipBk2CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 38, 1)
  end
  am = ac:GetAct("WhipBk3CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 32, 1)
  end
  am = ac:GetAct("WhipBk3CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 150, 1)
  end
  am = ac:GetAct("WhipBlockComboAEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 73, 1)
  end
  am = ac:GetAct("WhipBlockComboDEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 33, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 61, 1)
  end
  am = ac:GetAct("WhipBlockComboDInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 5, 1)
  end
  am = ac:GetAct("WhipBlockComboUppercut")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 36, 1)
    MakeChar.ActEvent(am, "None,0", "WeaponsCombo.SetIsFalling", 4, 1)
    MakeChar.ActEvent(am, "GroundHit,30", "WeaponsCombo.SetIsFalling", 19, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 30, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 31, 1)
  end
  am = ac:GetAct("WhipBlockComboUppercutJ")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 41, 1)
    MakeChar.ActEvent(am, "GroundHit,38", "WeaponsCombo.SetIsFalling", 25, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 38, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 39, 1)
  end
  am = ac:GetAct("WhipBlockEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 41, 1)
  end
  am = ac:GetAct("WhipBlockHitBreak")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 22, 1)
  end
  am = ac:GetAct("WhipBlockHitSync")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 3, 1)
  end
  am = ac:GetAct("WhipBlockSommerJump")
  if am ~= nil then
    MakeChar.ActEvent(am, "30", "MakeChar.EventSetRot", 10, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 27, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 33, 1)
    MakeChar.ActEvent(am, "UpHit,13", "WeaponsCombo.SetIsFalling", 4, 1)
    MakeChar.ActEvent(am, "UpHit,13", "WeaponsCombo.SetIsFalling", 9, 1)
    MakeChar.ActEvent(am, "ResetDisp,13", "WeaponsCombo.SetIsFalling", 13, 1)
    MakeChar.ActEvent(am, "GroundHit,24", "WeaponsCombo.SetIsFalling", 15, 1)
    MakeChar.ActEvent(am, "GroundHit,25", "WeaponsCombo.SetIsFalling", 19, 1)
    MakeChar.ActEvent(am, "GroundHit,25", "WeaponsCombo.SetIsFalling", 22, 1)
    MakeChar.ActEvent(am, "GroundHit,25", "WeaponsCombo.SetIsFalling", 24, 1)
    MakeChar.ActEvent(am, "CheckAndFall,23", "WeaponsCombo.SetIsFalling", 25, 1)
  end
  am = ac:GetAct("WhipBlockSommerJumpD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 10, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 35, 1)
  end
  am = ac:GetAct("WhipBlockSommerJumpDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "360", "MakeChar.EventSetRot", 31, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 34, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 52, 1)
  end
  am = ac:GetAct("WhipBlockSommerJumpDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 51, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 58, 1)
  end
  am = ac:GetAct("WhipBtCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 101, 1)
  end
  am = ac:GetAct("WhipBtCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 293, 1)
  end
  am = ac:GetAct("WhipCcHold")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 16, 1)
  end
  am = ac:GetAct("WhipCfCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 0, 1)
    MakeChar.ActEvent(am, "180", "MakeChar.EventSetRot", 14, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 35, 1)
  end
  am = ac:GetAct("WhipCfCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 20, 1)
  end
  am = ac:GetAct("WhipCfCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 37, 1)
  end
  am = ac:GetAct("WhipChargeEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 67, 1)
  end
  am = ac:GetAct("WhipCoCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 10, 1)
  end
  am = ac:GetAct("WhipCoCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "180", "MakeChar.EventSetRot", 0, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 11, 1)
  end
  am = ac:GetAct("WhipCoCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 124, 1)
  end
  am = ac:GetAct("WhipCoCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 72, 1)
  end
  am = ac:GetAct("WhipCoCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 89, 1)
  end
  am = ac:GetAct("WhipCoCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 129, 1)
  end
  am = ac:GetAct("WhipCoCatchedLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 165, 1)
  end
  am = ac:GetAct("WhipCoCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 79, 1)
  end
  am = ac:GetAct("WhipComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "180", "MakeChar.EventSetRot", 4, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 7, 1)
    MakeChar.ActEvent(am, "WhipComboA,0", "WeaponsCombo.ReadyToWalk", 20, 1)
  end
  am = ac:GetAct("WhipComboAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "180", "MakeChar.EventSetRot", 15, 1)
    MakeChar.ActEvent(am, "90", "MakeChar.EventSetRot", 18, 1)
    MakeChar.ActEvent(am, "WhipComboAA,0", "WeaponsCombo.ReadyToWalk", 35, 1)
  end
  am = ac:GetAct("WhipComboAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "120", "MakeChar.EventSetRot", 31, 1)
    MakeChar.ActEvent(am, "50", "MakeChar.EventSetRot", 39, 1)
    MakeChar.ActEvent(am, "WhipComboAAA,0", "WeaponsCombo.ReadyToWalk", 55, 1)
  end
  am = ac:GetAct("WhipComboAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "180", "MakeChar.EventSetRot", 6, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 17, 1)
    MakeChar.ActEvent(am, "WhipComboAAA,0", "WeaponsCombo.ReadyToWalk", 26, 1)
  end
  am = ac:GetAct("WhipComboAAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "180", "MakeChar.EventSetRot", 23, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 35, 1)
    MakeChar.ActEvent(am, "WhipComboAAA,0", "WeaponsCombo.ReadyToWalk", 41, 1)
  end
  am = ac:GetAct("WhipComboAAAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 37, 1)
    MakeChar.ActEvent(am, "WhipComboAAA,0", "WeaponsCombo.ReadyToWalk", 59, 1)
  end
  am = ac:GetAct("WhipComboAAAAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "WhipComboAAA,0", "WeaponsCombo.ReadyToWalk", 86, 1)
  end
  am = ac:GetAct("WhipComboAAAAAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "WhipComboAAA,0", "WeaponsCombo.ReadyToWalk", 101, 1)
  end
  am = ac:GetAct("WhipComboADLhEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 69, 1)
  end
  am = ac:GetAct("WhipComboADLhInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 6, 1)
  end
  am = ac:GetAct("WhipComboAJ")
  if am ~= nil then
    MakeChar.ActEvent(am, "None,0", "WeaponsCombo.SetIsFalling", 26, 1)
  end
  am = ac:GetAct("WhipComboAhAAlt")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 5, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 44, 1)
  end
  am = ac:GetAct("WhipComboCatchTry")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 13, 1)
  end
  am = ac:GetAct("WhipComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.000", "MakeChar.EventSetRot", 6, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 18, 1)
  end
  am = ac:GetAct("WhipComboDA")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 34, 1)
  end
  am = ac:GetAct("WhipComboDAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 51, 1)
  end
  am = ac:GetAct("WhipComboDADEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 92, 1)
  end
  am = ac:GetAct("WhipComboDADInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 24, 1)
    MakeChar.ActEvent(am, "360", "MakeChar.EventSetRot", 29, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 37, 1)
  end
  am = ac:GetAct("WhipComboDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.000", "MakeChar.EventSetRot", 6, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 18, 1)
  end
  am = ac:GetAct("WhipComboDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 10, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 19, 1)
  end
  am = ac:GetAct("WhipComboDDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "1100", "MakeChar.EventSetRot", 7, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 12, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 21, 1)
  end
  am = ac:GetAct("WhipComboDDDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 11, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 27, 1)
  end
  am = ac:GetAct("WhipComboDDDDDDEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 55, 1)
  end
  am = ac:GetAct("WhipComboDDDDDDInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 5, 1)
    MakeChar.ActEvent(am, "360", "MakeChar.EventSetRot", 12, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 16, 1)
  end
  am = ac:GetAct("WhipComboDDh")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 14, 1)
    MakeChar.ActEvent(am, "30", "MakeChar.EventSetRot", 17, 1)
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 23, 1)
    MakeChar.ActEvent(am, "30", "MakeChar.EventSetRot", 28, 1)
  end
  am = ac:GetAct("WhipComboDDhD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 12, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 27, 1)
  end
  am = ac:GetAct("WhipComboDDhEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 36, 1)
  end
  am = ac:GetAct("WhipComboDDhInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "30", "MakeChar.EventSetRot", 4, 1)
  end
  am = ac:GetAct("WhipComboDJ")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 13, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.SetIsFalling", 13, 1)
  end
  am = ac:GetAct("WhipComboDJJ")
  if am ~= nil then
    MakeChar.ActEvent(am, "GroundHit,37", "WeaponsCombo.SetIsFalling", 25, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 37, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 38, 1)
  end
  am = ac:GetAct("WhipComboDhDAlt")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 6, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 16, 1)
  end
  am = ac:GetAct("WhipComboDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 8, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 29, 1)
  end
  am = ac:GetAct("WhipComboDrDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "225", "MakeChar.EventSetRot", 23, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 30, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 49, 1)
  end
  am = ac:GetAct("WhipComboDrDrDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "225", "MakeChar.EventSetRot", 40, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 45, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 62, 1)
  end
  am = ac:GetAct("WhipComboDrDrDrDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "225", "MakeChar.EventSetRot", 54, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 59, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 74, 1)
  end
  am = ac:GetAct("WhipComboDrDrDrDrDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "225", "MakeChar.EventSetRot", 68, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 73, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 89, 1)
  end
  am = ac:GetAct("WhipComboDrMhEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 180, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 181, 1)
  end
  am = ac:GetAct("WhipComboDrMhInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 8, 1)
  end
  am = ac:GetAct("WhipComboDrMhs")
  if am ~= nil then
    MakeChar.ActEvent(am, "1000000000", "MakeChar.EventSetRot", 0, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 1, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 69, 0)
  end
  am = ac:GetAct("WhipComboDrMhss")
  if am ~= nil then
    MakeChar.ActEvent(am, "1000000000", "MakeChar.EventSetRot", 0, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 1, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 22, 0)
  end
  am = ac:GetAct("WhipComboDrMhsss")
  if am ~= nil then
    MakeChar.ActEvent(am, "1000000000", "MakeChar.EventSetRot", 0, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 1, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 68, 0)
  end
  am = ac:GetAct("WhipComboExplEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 78, 1)
  end
  am = ac:GetAct("WhipComboExplHitEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 132, 1)
  end
  am = ac:GetAct("WhipComboLMhEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 45, 1)
  end
  am = ac:GetAct("WhipCrossOneSelf")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 104, 1)
  end
  am = ac:GetAct("WhipCrystalPowerEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 104, 1)
  end
  am = ac:GetAct("WhipDL2CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 108, 1)
  end
  am = ac:GetAct("WhipDL2CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 303, 1)
  end
  am = ac:GetAct("WhipDL2CatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 264, 1)
  end
  am = ac:GetAct("WhipDL2CatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 203, 1)
  end
  am = ac:GetAct("WhipDarkDodgeFront")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 5, 1)
    MakeChar.ActEvent(am, "WhipDarkDodgeFront,0", "WeaponsCombo.ReadyToWalk", 18, 1)
  end
  am = ac:GetAct("WhipDl2Catched2Lose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 69, 1)
  end
  am = ac:GetAct("WhipDodgeBack")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 5, 1)
  end
  am = ac:GetAct("WhipDodgeBackToRelax")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 20, 1)
  end
  am = ac:GetAct("WhipDodgeComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 4, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 17, 1)
  end
  am = ac:GetAct("WhipDodgeComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 0, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 4, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 17, 1)
  end
  am = ac:GetAct("WhipDodgeFront")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 5, 1)
  end
  am = ac:GetAct("WhipDodgeLeft")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 5, 1)
  end
  am = ac:GetAct("WhipDodgeLeftToRelax")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 25, 1)
  end
  am = ac:GetAct("WhipDodgeRight")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 5, 1)
  end
  am = ac:GetAct("WhipDodgeRightToRelax")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 25, 1)
  end
  am = ac:GetAct("WhipEggThrow")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 57, 1)
  end
  am = ac:GetAct("WhipEggThrowFail")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 59, 1)
  end
  am = ac:GetAct("WhipEva1CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 0, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 162, 1)
  end
  am = ac:GetAct("WhipEva1CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 156, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 210, 1)
  end
  am = ac:GetAct("WhipEva1CatchLose0")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 44, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 97, 1)
  end
  am = ac:GetAct("WhipEva1CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 156, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 209, 1)
  end
  am = ac:GetAct("WhipEva2Catch")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 100, 1)
  end
  am = ac:GetAct("WhipEva2CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 0, 1)
  end
  am = ac:GetAct("WhipEva2CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 156, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 315, 1)
  end
  am = ac:GetAct("WhipEva2CatchLose0")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 18, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 68, 1)
  end
  am = ac:GetAct("WhipEva2CatchLose1")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 56, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 102, 1)
  end
  am = ac:GetAct("WhipEva2CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 156, 1)
  end
  am = ac:GetAct("WhipEvaCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 227, 1)
  end
  am = ac:GetAct("WhipEvaCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 182, 1)
  end
  am = ac:GetAct("WhipEvbCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 86, 1)
  end
  am = ac:GetAct("WhipEvbCatchLose0")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 123, 1)
  end
  am = ac:GetAct("WhipEvbCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 227, 1)
  end
  am = ac:GetAct("WhipEvbCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 182, 1)
  end
  am = ac:GetAct("WhipFallBlockComboAEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 54, 1)
    MakeChar.ActEvent(am, "DownDisp,32", "WeaponsCombo.SetIsFalling", 22, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 32, 1)
    MakeChar.ActEvent(am, "GroundHit,50", "WeaponsCombo.SetIsFalling", 43, 1)
    MakeChar.ActEvent(am, "GroundHit,50", "WeaponsCombo.SetIsFalling", 44, 1)
    MakeChar.ActEvent(am, "GroundHit,50", "WeaponsCombo.SetIsFalling", 45, 1)
    MakeChar.ActEvent(am, "GroundHit,50", "WeaponsCombo.SetIsFalling", 46, 1)
    MakeChar.ActEvent(am, "GroundHit,50", "WeaponsCombo.SetIsFalling", 47, 1)
    MakeChar.ActEvent(am, "GroundHit,50", "WeaponsCombo.SetIsFalling", 48, 1)
    MakeChar.ActEvent(am, "GroundHit,50", "WeaponsCombo.SetIsFalling", 49, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 50, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 51, 1)
  end
  am = ac:GetAct("WhipFallBlockComboDEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 40, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 72, 1)
    MakeChar.ActEvent(am, "GroundHit,40", "WeaponsCombo.SetIsFalling", 38, 1)
    MakeChar.ActEvent(am, "GroundHit,40", "WeaponsCombo.SetIsFalling", 39, 1)
    MakeChar.ActEvent(am, "GroundHit,42", "WeaponsCombo.SetIsFalling", 40, 1)
    MakeChar.ActEvent(am, "GroundHit,42", "WeaponsCombo.SetIsFalling", 41, 1)
    MakeChar.ActEvent(am, "GroundHit,44", "WeaponsCombo.SetIsFalling", 42, 1)
    MakeChar.ActEvent(am, "GroundHit,44", "WeaponsCombo.SetIsFalling", 43, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 44, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 45, 1)
  end
  am = ac:GetAct("WhipFallComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "DownDisp,14", "WeaponsCombo.SetIsFalling", 0, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 14, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 15, 1)
  end
  am = ac:GetAct("WhipFallComboAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "DownDisp,26", "WeaponsCombo.SetIsFalling", 13, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 26, 1)
  end
  am = ac:GetAct("WhipFallComboAh")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 40, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 46, 1)
    MakeChar.ActEvent(am, "GroundHit,40", "WeaponsCombo.SetIsFalling", 15, 1)
    MakeChar.ActEvent(am, "GroundHit,40", "WeaponsCombo.SetIsFalling", 24, 1)
    MakeChar.ActEvent(am, "GroundHit,40", "WeaponsCombo.SetIsFalling", 31, 1)
    MakeChar.ActEvent(am, "GroundHit,40", "WeaponsCombo.SetIsFalling", 32, 1)
    MakeChar.ActEvent(am, "GroundHit,40", "WeaponsCombo.SetIsFalling", 33, 1)
    MakeChar.ActEvent(am, "GroundHit,40", "WeaponsCombo.SetIsFalling", 34, 1)
    MakeChar.ActEvent(am, "GroundHit,40", "WeaponsCombo.SetIsFalling", 35, 1)
    MakeChar.ActEvent(am, "GroundHit,40", "WeaponsCombo.SetIsFalling", 36, 1)
    MakeChar.ActEvent(am, "GroundHit,40", "WeaponsCombo.SetIsFalling", 37, 1)
    MakeChar.ActEvent(am, "GroundHit,40", "WeaponsCombo.SetIsFalling", 38, 1)
    MakeChar.ActEvent(am, "GroundHit,40", "WeaponsCombo.SetIsFalling", 39, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 40, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 41, 1)
  end
  am = ac:GetAct("WhipFallComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "180", "MakeChar.EventSetRot", 5, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 27, 1)
    MakeChar.ActEvent(am, "DownDisp,10", "WeaponsCombo.SetIsFalling", 0, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 10, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 15, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 17, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 19, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 21, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 22, 1)
    MakeChar.ActEvent(am, "GroundHit,24", "WeaponsCombo.SetIsFalling", 23, 1)
    MakeChar.ActEvent(am, "GroundHit,25", "WeaponsCombo.SetIsFalling", 24, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 25, 1)
    MakeChar.ActEvent(am, "CheckAndFall,26", "WeaponsCombo.SetIsFalling", 26, 1)
  end
  am = ac:GetAct("WhipFallComboDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "180", "MakeChar.EventSetRot", 6, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 27, 1)
    MakeChar.ActEvent(am, "DownDisp,10", "WeaponsCombo.SetIsFalling", 0, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 10, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 15, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 17, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 19, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 21, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 22, 1)
    MakeChar.ActEvent(am, "GroundHit,24", "WeaponsCombo.SetIsFalling", 23, 1)
    MakeChar.ActEvent(am, "GroundHit,25", "WeaponsCombo.SetIsFalling", 24, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 25, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 26, 1)
  end
  am = ac:GetAct("WhipFallComboDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "90", "MakeChar.EventSetRot", 32, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 51, 1)
    MakeChar.ActEvent(am, "GroundHit,37", "WeaponsCombo.SetIsFalling", 32, 1)
    MakeChar.ActEvent(am, "GroundHit,37", "WeaponsCombo.SetIsFalling", 33, 1)
    MakeChar.ActEvent(am, "GroundHit,37", "WeaponsCombo.SetIsFalling", 34, 1)
    MakeChar.ActEvent(am, "GroundHit,37", "WeaponsCombo.SetIsFalling", 35, 1)
    MakeChar.ActEvent(am, "GroundHit,37", "WeaponsCombo.SetIsFalling", 36, 1)
    MakeChar.ActEvent(am, "GroundHit,38", "WeaponsCombo.SetIsFalling", 37, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 38, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 39, 1)
  end
  am = ac:GetAct("WhipFallComboDDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 3, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 16, 1)
  end
  am = ac:GetAct("WhipFallComboDhD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 0, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 21, 1)
  end
  am = ac:GetAct("WhipFallComboDhEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 47, 1)
  end
  am = ac:GetAct("WhipFallComboDhInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "90", "MakeChar.EventSetRot", 9, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 17, 1)
    MakeChar.ActEvent(am, "GroundHit,22", "WeaponsCombo.SetIsFalling", 9, 1)
    MakeChar.ActEvent(am, "GroundHit,21", "WeaponsCombo.SetIsFalling", 17, 1)
    MakeChar.ActEvent(am, "GroundHit,21", "WeaponsCombo.SetIsFalling", 18, 1)
    MakeChar.ActEvent(am, "GroundHit,21", "WeaponsCombo.SetIsFalling", 19, 1)
    MakeChar.ActEvent(am, "GroundHit,21", "WeaponsCombo.SetIsFalling", 20, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 21, 1)
    MakeChar.ActEvent(am, "CheckAndFall,23", "WeaponsCombo.SetIsFalling", 22, 1)
  end
  am = ac:GetAct("WhipFallComboGripBig")
  if am ~= nil then
    MakeChar.ActEvent(am, "740", "MakeChar.EventSetRot", 0, 1)
    MakeChar.ActEvent(am, "30", "MakeChar.EventSetRot", 10, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 25, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 45, 1)
    MakeChar.ActEvent(am, "FrontHit,24", "WeaponsCombo.SetIsFalling", 10, 1)
    MakeChar.ActEvent(am, "FrontHit,24", "WeaponsCombo.SetIsFalling", 15, 1)
    MakeChar.ActEvent(am, "FrontHit,24", "WeaponsCombo.SetIsFalling", 20, 1)
    MakeChar.ActEvent(am, "FrontHit,24", "WeaponsCombo.SetIsFalling", 21, 1)
    MakeChar.ActEvent(am, "FrontHit,24", "WeaponsCombo.SetIsFalling", 22, 1)
    MakeChar.ActEvent(am, "FrontHit,24", "WeaponsCombo.SetIsFalling", 23, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 24, 1)
    MakeChar.ActEvent(am, "GroundHit,42", "WeaponsCombo.SetIsFalling", 35, 1)
    MakeChar.ActEvent(am, "GroundHit,42", "WeaponsCombo.SetIsFalling", 38, 1)
    MakeChar.ActEvent(am, "GroundHit,42", "WeaponsCombo.SetIsFalling", 40, 1)
    MakeChar.ActEvent(am, "GroundHit,42", "WeaponsCombo.SetIsFalling", 41, 1)
    MakeChar.ActEvent(am, "ResetDisp,42", "WeaponsCombo.SetIsFalling", 42, 1)
    MakeChar.ActEvent(am, "CheckAndFall,42", "WeaponsCombo.SetIsFalling", 43, 1)
  end
  am = ac:GetAct("WhipFallComboGripSmall")
  if am ~= nil then
    MakeChar.ActEvent(am, "DownDisp,37", "WeaponsCombo.SetIsFalling", 0, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 37, 1)
  end
  am = ac:GetAct("WhipFallComboGripSmallDown")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 37, 1)
    MakeChar.ActEvent(am, "DownDisp,22", "WeaponsCombo.SetIsFalling", 11, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 22, 1)
    MakeChar.ActEvent(am, "GroundHit,33", "WeaponsCombo.SetIsFalling", 23, 1)
    MakeChar.ActEvent(am, "GroundHit,33", "WeaponsCombo.SetIsFalling", 25, 1)
    MakeChar.ActEvent(am, "GroundHit,33", "WeaponsCombo.SetIsFalling", 27, 1)
    MakeChar.ActEvent(am, "GroundHit,33", "WeaponsCombo.SetIsFalling", 29, 1)
    MakeChar.ActEvent(am, "GroundHit,33", "WeaponsCombo.SetIsFalling", 31, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 33, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 34, 1)
  end
  am = ac:GetAct("WhipFallComboKEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "DownDisp,31", "WeaponsCombo.SetIsFalling", 15, 1)
    MakeChar.ActEvent(am, "ResetDisp,32", "WeaponsCombo.SetIsFalling", 31, 1)
  end
  am = ac:GetAct("WhipFallComboStomp")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 8, 1)
    MakeChar.ActEvent(am, "GroundHit,2", "WeaponsCombo.SetIsFalling", 0, 1)
    MakeChar.ActEvent(am, "GroundHit,2", "WeaponsCombo.SetIsFalling", 1, 1)
    MakeChar.ActEvent(am, "GroundHit,3", "WeaponsCombo.SetIsFalling", 2, 1)
    MakeChar.ActEvent(am, "GroundHit,4", "WeaponsCombo.SetIsFalling", 3, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 4, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 5, 1)
  end
  am = ac:GetAct("WhipFallEggThrow")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 56, 1)
  end
  am = ac:GetAct("WhipFallEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 40, 1)
  end
  am = ac:GetAct("WhipFallHighEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 30, 1)
  end
  am = ac:GetAct("WhipFallHitEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 26, 1)
  end
  am = ac:GetAct("WhipFallHitHardEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 45, 1)
  end
  am = ac:GetAct("WhipFallRunComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "DownDisp,16", "WeaponsCombo.SetIsFalling", 0, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 16, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 17, 1)
  end
  am = ac:GetAct("WhipFallRunComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "90", "MakeChar.EventSetRot", 5, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 27, 1)
    MakeChar.ActEvent(am, "DownDisp,10", "WeaponsCombo.SetIsFalling", 0, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 10, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 15, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 17, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 19, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 21, 1)
    MakeChar.ActEvent(am, "GroundHit,23", "WeaponsCombo.SetIsFalling", 22, 1)
    MakeChar.ActEvent(am, "GroundHit,24", "WeaponsCombo.SetIsFalling", 23, 1)
    MakeChar.ActEvent(am, "GroundHit,25", "WeaponsCombo.SetIsFalling", 24, 1)
    MakeChar.ActEvent(am, "ResetDisp,0", "WeaponsCombo.SetIsFalling", 25, 1)
    MakeChar.ActEvent(am, "CheckAndFall,26", "WeaponsCombo.SetIsFalling", 26, 1)
  end
  am = ac:GetAct("WhipFallShortEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 6, 1)
  end
  am = ac:GetAct("WhipFhCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 0, 1)
  end
  am = ac:GetAct("WhipFhCatchKick")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 12, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 94, 0)
  end
  am = ac:GetAct("WhipFhCatchLoseEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 38, 1)
  end
  am = ac:GetAct("WhipFhCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 70, 1)
  end
  am = ac:GetAct("WhipGbCatchBomb")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 41, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 49, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 62, 1)
  end
  am = ac:GetAct("WhipGbCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 108, 1)
  end
  am = ac:GetAct("WhipGbCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 0, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 9, 1)
  end
  am = ac:GetAct("WhipGbCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 8, 1)
  end
  am = ac:GetAct("WhipGbCatchPunch")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 56, 1)
  end
  am = ac:GetAct("WhipGdCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 10, 1)
  end
  am = ac:GetAct("WhipGdCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "MakeChar.EventStopIfDead", 100, 0)
  end
  am = ac:GetAct("WhipGdCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "MakeChar.EventStopIfDead", 305, 0)
  end
  am = ac:GetAct("WhipGdCatchLose3")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 314, 1)
  end
  am = ac:GetAct("WhipGdCatchWinDoor")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 712, 1)
  end
  am = ac:GetAct("WhipGetAmmo")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 70, 1)
  end
  am = ac:GetAct("WhipGhCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 15, 1)
  end
  am = ac:GetAct("WhipGhCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 14, 1)
  end
  am = ac:GetAct("WhipGhCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 122, 1)
  end
  am = ac:GetAct("WhipGhCatchPunch")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 38, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 48, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 75, 1)
  end
  am = ac:GetAct("WhipGhCatchThrow")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 89, 1)
  end
  am = ac:GetAct("WhipGlCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 108, 1)
  end
  am = ac:GetAct("WhipGlCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 17, 1)
  end
  am = ac:GetAct("WhipGlCatchKick")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 32, 1)
  end
  am = ac:GetAct("WhipGlCatchThrow")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 50, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 59, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 62, 1)
  end
  am = ac:GetAct("WhipHitCrushEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 36, 1)
  end
  am = ac:GetAct("WhipHitHardBack")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 40, 1)
  end
  am = ac:GetAct("WhipHitHardBackFix")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 14, 1)
  end
  am = ac:GetAct("WhipHitHardFw")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 34, 1)
  end
  am = ac:GetAct("WhipHitHardFwFix")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 13, 1)
  end
  am = ac:GetAct("WhipHitHardLeft")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 34, 1)
  end
  am = ac:GetAct("WhipHitHardLeftFix")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 24, 1)
  end
  am = ac:GetAct("WhipHitHardRight")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 34, 1)
  end
  am = ac:GetAct("WhipHitHardRightFix")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 24, 1)
  end
  am = ac:GetAct("WhipHitMedBack")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 11, 1)
  end
  am = ac:GetAct("WhipHitMedFw")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 11, 1)
  end
  am = ac:GetAct("WhipHitMedLeft")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 11, 1)
  end
  am = ac:GetAct("WhipHitMedRight")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 11, 1)
  end
  am = ac:GetAct("WhipHitSoftBack")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 10, 1)
  end
  am = ac:GetAct("WhipHitSoftFw")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 10, 1)
  end
  am = ac:GetAct("WhipHitSoftLeft")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 10, 1)
  end
  am = ac:GetAct("WhipHitSoftRight")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 10, 1)
  end
  am = ac:GetAct("WhipHitUseRune")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 38, 1)
  end
  am = ac:GetAct("WhipLgCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 37, 1)
  end
  am = ac:GetAct("WhipLgCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 136, 1)
  end
  am = ac:GetAct("WhipLgCatchLose0")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 101, 1)
  end
  am = ac:GetAct("WhipLgCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 106, 1)
  end
  am = ac:GetAct("WhipLlCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 26, 1)
  end
  am = ac:GetAct("WhipLlCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 0, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 12, 1)
  end
  am = ac:GetAct("WhipLlCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 10, 1)
  end
  am = ac:GetAct("WhipLlCatchKick")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 33, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 43, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 51, 1)
  end
  am = ac:GetAct("WhipLlCatchPunch")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 39, 1)
  end
  am = ac:GetAct("WhipMdCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 8, 0)
  end
  am = ac:GetAct("WhipMdCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 6, 0)
  end
  am = ac:GetAct("WhipMdCatchKick")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 72, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 66, 1)
  end
  am = ac:GetAct("WhipMdCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 52, 1)
  end
  am = ac:GetAct("WhipMdCatchScream")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 131, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 121, 1)
  end
  am = ac:GetAct("WhipMmCatch2Lose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 263, 1)
  end
  am = ac:GetAct("WhipMmCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 154, 1)
  end
  am = ac:GetAct("WhipMmCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 355, 1)
  end
  am = ac:GetAct("WhipNc1CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 0, 1)
  end
  am = ac:GetAct("WhipNc1CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 228, 1)
  end
  am = ac:GetAct("WhipNc1CatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 187, 1)
  end
  am = ac:GetAct("WhipNc1CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 291, 1)
  end
  am = ac:GetAct("WhipNc2CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 0, 1)
  end
  am = ac:GetAct("WhipNc2CatchWin2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 392, 1)
  end
  am = ac:GetAct("WhipOpenChest")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 181, 1)
  end
  am = ac:GetAct("WhipPlaceCrystal")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 77, 1)
  end
  am = ac:GetAct("WhipPullBridgeLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 20, 1)
  end
  am = ac:GetAct("WhipPullBridgeWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 74, 1)
  end
  am = ac:GetAct("WhipPullCourtine")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 47, 1)
  end
  am = ac:GetAct("WhipPullGenericLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 32, 1)
  end
  am = ac:GetAct("WhipPullGenericWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 80, 1)
  end
  am = ac:GetAct("WhipPullLever")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 136, 1)
  end
  am = ac:GetAct("WhipPullPlankBLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 31, 1)
  end
  am = ac:GetAct("WhipPullPlankBWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 79, 1)
  end
  am = ac:GetAct("WhipPullPlankLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 33, 1)
  end
  am = ac:GetAct("WhipPullPlankWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 79, 1)
  end
  am = ac:GetAct("WhipRaceComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "180", "MakeChar.EventSetRot", 4, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 7, 1)
    MakeChar.ActEvent(am, "WhipComboA,0", "WeaponsCombo.ReadyToWalk", 20, 1)
  end
  am = ac:GetAct("WhipRaceComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.000", "MakeChar.EventSetRot", 6, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 18, 1)
  end
  am = ac:GetAct("WhipRelicStolen")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 0, 0)
  end
  am = ac:GetAct("WhipRgCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "180", "MakeChar.EventSetRot", 9, 1)
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 20, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 24, 1)
  end
  am = ac:GetAct("WhipRgCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 110, 1)
  end
  am = ac:GetAct("WhipRgCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 67, 1)
  end
  am = ac:GetAct("WhipRgCatchWin2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 310, 1)
  end
  am = ac:GetAct("WhipSMCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 15, 1)
  end
  am = ac:GetAct("WhipSMCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "WhipSMCatchedWin,0", "WeaponsCombo.ReadyToWalk", 139, 1)
  end
  am = ac:GetAct("WhipScCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 0, 1)
  end
  am = ac:GetAct("WhipScCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 134, 1)
  end
  am = ac:GetAct("WhipScCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 117, 1)
  end
  am = ac:GetAct("WhipScCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 127, 1)
  end
  am = ac:GetAct("WhipScCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 98, 1)
  end
  am = ac:GetAct("WhipSgCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 134, 1)
  end
  am = ac:GetAct("WhipSgCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 231, 1)
  end
  am = ac:GetAct("WhipSgRideEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 70, 1)
  end
  am = ac:GetAct("WhipSgRideFail")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 75, 1)
  end
  am = ac:GetAct("WhipSgRideFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 4, 1)
  end
  am = ac:GetAct("WhipSgRideHitDeath")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 27, 1)
  end
  am = ac:GetAct("WhipSmCatch")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 13, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 54, 1)
  end
  am = ac:GetAct("WhipSmFailInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 15, 1)
  end
  am = ac:GetAct("WhipSprintComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "180", "MakeChar.EventSetRot", 11, 1)
    MakeChar.ActEvent(am, "90", "MakeChar.EventSetRot", 18, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 23, 1)
  end
  am = ac:GetAct("WhipSprintComboAD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 23, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 49, 1)
  end
  am = ac:GetAct("WhipSprintComboDDark")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 17, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 48, 1)
  end
  am = ac:GetAct("WhipSprintEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 19, 1)
  end
  am = ac:GetAct("WhipStakeLeftEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 11, 1)
  end
  am = ac:GetAct("WhipStakeRightEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 11, 1)
  end
  am = ac:GetAct("WhipStunnedEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 77, 1)
  end
  am = ac:GetAct("WhipSwCatch2Init")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 3, 1)
  end
  am = ac:GetAct("WhipSwCatch2Lose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 90, 1)
  end
  am = ac:GetAct("WhipSwCatch2Lose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 126, 1)
  end
  am = ac:GetAct("WhipSwCatch2Lose3")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 178, 1)
  end
  am = ac:GetAct("WhipSwCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 0, 1)
  end
  am = ac:GetAct("WhipSwCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 105, 1)
  end
  am = ac:GetAct("WhipSyncComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 22, 1)
  end
  am = ac:GetAct("WhipSyncComboAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 36, 1)
  end
  am = ac:GetAct("WhipSyncComboAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 58, 1)
  end
  am = ac:GetAct("WhipSyncComboAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "360", "MakeChar.EventSetRot", 58, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 69, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 76, 1)
  end
  am = ac:GetAct("WhipSyncComboAAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 67, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 100, 1)
  end
  am = ac:GetAct("WhipSyncComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 11, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 16, 1)
  end
  am = ac:GetAct("WhipSyncComboDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 17, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 27, 1)
  end
  am = ac:GetAct("WhipSyncComboDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 36, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 56, 1)
  end
  am = ac:GetAct("WhipTakeCrystal")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 33, 1)
  end
  am = ac:GetAct("WhipTakeFlower")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 33, 1)
  end
  am = ac:GetAct("WhipTakeFreeGem")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 45, 1)
  end
  am = ac:GetAct("WhipTakeGem")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 45, 1)
  end
  am = ac:GetAct("WhipTakeKey")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 33, 1)
  end
  am = ac:GetAct("WhipTakeWater")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 79, 1)
  end
  am = ac:GetAct("WhipTbCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 17, 1)
  end
  am = ac:GetAct("WhipTbCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 0, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 132, 1)
  end
  am = ac:GetAct("WhipTbCatchLose1")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 218, 1)
  end
  am = ac:GetAct("WhipTbCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 486, 1)
  end
  am = ac:GetAct("WhipTbCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 368, 1)
  end
  am = ac:GetAct("WhipTbFailFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "1500", "MakeChar.EventSetRot", 5, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 13, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 72, 1)
  end
  am = ac:GetAct("WhipTbRideEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 162, 1)
  end
  am = ac:GetAct("WhipTbRideFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 8, 1)
  end
  am = ac:GetAct("WhipTbRideHitTbDeath")
  if am ~= nil then
    MakeChar.ActEvent(am, "WhipTbRideHitTbDeath,0", "WeaponsCombo.ReadyToWalk", 36, 1)
  end
  am = ac:GetAct("WhipTbRideInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 8, 1)
  end
  am = ac:GetAct("WhipThrowDaggerEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 46, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 51, 1)
  end
  am = ac:GetAct("WhipThrowDaggerInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 7, 1)
  end
  am = ac:GetAct("WhipThrowFairy")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 20, 1)
  end
  am = ac:GetAct("WhipThrowVial")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 4, 1)
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 10, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 12, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 30, 1)
  end
  am = ac:GetAct("WhipThrowVialLM")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 29, 1)
  end
  am = ac:GetAct("WhipTombLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 189, 1)
  end
  am = ac:GetAct("WhipTsCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "WhipTsCatchEnd,0", "WeaponsCombo.ReadyToWalk", 106, 1)
  end
  am = ac:GetAct("WhipTsCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "1500", "MakeChar.EventSetRot", 5, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 13, 1)
  end
  am = ac:GetAct("WhipTsCatchHitA")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 4, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 8, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 51, 1)
    MakeChar.ActEvent(am, "WhipTsCatchHitA,0", "WeaponsCombo.ReadyToWalk", 36, 1)
  end
  am = ac:GetAct("WhipTsCatchHitD")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 65, 1)
  end
  am = ac:GetAct("WhipTsCatchHitJ")
  if am ~= nil then
    MakeChar.ActEvent(am, "360", "MakeChar.EventSetRot", 7, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 22, 1)
    MakeChar.ActEvent(am, "WhipTsCatchHitJ,0", "WeaponsCombo.ReadyToWalk", 44, 1)
  end
  am = ac:GetAct("WhipTsCatchHitK")
  if am ~= nil then
    MakeChar.ActEvent(am, "1500", "MakeChar.EventSetRot", 2, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 15, 1)
    MakeChar.ActEvent(am, "WhipTsCatchHitK,0", "WeaponsCombo.ReadyToWalk", 36, 1)
  end
  am = ac:GetAct("WhipTsCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 5, 1)
    MakeChar.ActEvent(am, "90", "MakeChar.EventSetRot", 15, 1)
  end
  am = ac:GetAct("WhipUseKey")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 83, 1)
  end
  am = ac:GetAct("WhipUseRune")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 81, 1)
  end
  am = ac:GetAct("WhipVwCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 7, 1)
  end
  am = ac:GetAct("WhipVwCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 83, 1)
  end
  am = ac:GetAct("WhipVwCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 37, 1)
  end
  am = ac:GetAct("WhipVwCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 177, 1)
  end
  am = ac:GetAct("WhipVwCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 126, 1)
  end
  am = ac:GetAct("WhipWcCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "90", "MakeChar.EventSetRot", 5, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 15, 1)
  end
  am = ac:GetAct("WhipWcCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 13, 1)
  end
  am = ac:GetAct("WhipWcCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 51, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 68, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 87, 1)
  end
  am = ac:GetAct("WhipWcFailFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 5, 1)
    MakeChar.ActEvent(am, "WhipWcFailFarInit,0", "WeaponsCombo.ReadyToWalk", 35, 1)
  end
  am = ac:GetAct("WhipWgCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 69, 1)
  end
  am = ac:GetAct("WhipWgCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 53, 1)
  end
  am = ac:GetAct("WhipWgRideEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 54, 1)
    MakeChar.ActEvent(am, "CheckAndFall,0", "WeaponsCombo.SetIsFalling", 43, 1)
  end
  am = ac:GetAct("WhipWgRideFail")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 74, 1)
  end
  am = ac:GetAct("WhipWgRideHitDeath")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 27, 1)
  end
  am = ac:GetAct("WhipWtRideEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 70, 1)
  end
  am = ac:GetAct("WhipZbCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 131, 1)
  end
  am = ac:GetAct("WhipZbCatchHead")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 51, 1)
  end
  am = ac:GetAct("WhipZbCatchThrow")
  if am ~= nil then
    MakeChar.ActEvent(am, "720", "MakeChar.EventSetRot", 16, 1)
    MakeChar.ActEvent(am, "0", "MakeChar.EventSetRot", 29, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ReadyToWalk", 67, 1)
  end
end
