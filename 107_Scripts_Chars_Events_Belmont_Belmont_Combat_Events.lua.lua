function Belmont_Combat_Events.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("BalanceAttack")
  if am ~= nil then
    MakeChar.ActEvent(am, "DIRECTIONAL_ATTACK", "WeaponsCombo.ResetFlagPress", 33, 1)
    MakeChar.ActEvent(am, "1,DIRECTIONAL_ATTACK,true,BalanceAttackEnd", "WeaponsCombo.LaunchIfFlagPress", 62, 1)
  end
  am = ac:GetAct("BalanceAttackInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "DIRECTIONAL_ATTACK", "WeaponsCombo.ResetFlagPress", 0, 1)
    MakeChar.ActEvent(am, "1,DIRECTIONAL_ATTACK,true,BalanceAttackEnd", "WeaponsCombo.LaunchIfFlagPress", 33, 1)
  end
  am = ac:GetAct("CrossGrille")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 0, 1)
  end
  am = ac:GetAct("Gear")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.0000,0.3000,0.5000", "Weapons.VibraEvent", 55, 1)
    MakeChar.ActEvent(am, "0,0.5000,0.5000,0.1000", "Weapons.VibraEvent", 80, 1)
  end
  am = ac:GetAct("GearLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.5000,0.5000,0.1000", "Weapons.VibraEvent", 152, 1)
  end
  am = ac:GetAct("GearWW")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.0,0.3000,0.5000", "Weapons.VibraEvent", 55, 1)
    MakeChar.ActEvent(am, "0,0.5000,0.5000,0.1000", "Weapons.VibraEvent", 82, 1)
  end
  am = ac:GetAct("GearWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.0,0.3000,0.5000", "Weapons.VibraEvent", 55, 1)
    MakeChar.ActEvent(am, "0,0.5000,0.5000,0.1000", "Weapons.VibraEvent", 81, 1)
  end
  am = ac:GetAct("HandCatchedLoop")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.2000,0.3000,0.5000", "Weapons.VibraEvent", 7, 1)
    MakeChar.ActEvent(am, "0,0.2000,0.3000,0.5000", "Weapons.VibraEvent", 33, 1)
    MakeChar.ActEvent(am, "0,0.2000,0.3000,0.5000", "Weapons.VibraEvent", 67, 1)
  end
  am = ac:GetAct("HandCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.2000,0.3000,0.5000", "Weapons.VibraEvent", 6, 1)
    MakeChar.ActEvent(am, "0,0.3000,0.3000,0.6000", "Weapons.VibraEvent", 43, 1)
  end
  am = ac:GetAct("HandS1Catched")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 7, 0)
  end
  am = ac:GetAct("HandS2Catched")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 9, 0)
  end
  am = ac:GetAct("HandS3Catched")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 8, 0)
  end
  am = ac:GetAct("HangWallAttack")
  if am ~= nil then
    MakeChar.ActEvent(am, "DIRECTIONAL_ATTACK", "WeaponsCombo.ResetFlagPress", 21, 1)
    MakeChar.ActEvent(am, "1,DIRECTIONAL_ATTACK,true,HangWallAttackEnd", "WeaponsCombo.LaunchIfFlagPress", 47, 1)
  end
  am = ac:GetAct("HangWallAttackInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "DIRECTIONAL_ATTACK", "WeaponsCombo.ResetFlagPress", 0, 1)
    MakeChar.ActEvent(am, "1,DIRECTIONAL_ATTACK,true,HangWallAttackEnd", "WeaponsCombo.LaunchIfFlagPress", 21, 1)
  end
  am = ac:GetAct("Jump2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.0000,-300.0000,0.0000,750,5.0000,DoubleJumpMelee(Small),DoubleJumpMelee(Large),,", "WeaponsAttacks.EventDoubleJumpBlind", 9, 1)
  end
  am = ac:GetAct("Jump2Run")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.0000,-300.0000,0.0000,750,5.0000,DoubleJumpMelee(Small),DoubleJumpMelee(Large),,", "WeaponsAttacks.EventDoubleJumpBlind", 11, 1)
  end
  am = ac:GetAct("KickGrenade")
  if am ~= nil then
    MakeChar.ActEvent(am, "4000.0000,1.0000", "Weapons.EventSetTgtEntity", 18, 1)
  end
  am = ac:GetAct("NdCachedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 11, 0)
  end
  am = ac:GetAct("RagDollDestroy")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 10, 1)
  end
  am = ac:GetAct("RagDollRelaxInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 10, 0)
  end
  am = ac:GetAct("SpearMiniGameInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 0, 0)
  end
  am = ac:GetAct("Sprint")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.2000,0.2000,0.0500", "Weapons.VibraEvent", 8, 1)
    MakeChar.ActEvent(am, "0,0.2000,0.2000,0.0500", "Weapons.VibraEvent", 18, 1)
  end
  am = ac:GetAct("SprintInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.2000,0.2000,0.0500", "Weapons.VibraEvent", 6, 1)
  end
  am = ac:GetAct("StatueMiniGameLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 11, 1)
  end
  am = ac:GetAct("StatueMiniGameWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 79, 1)
  end
  am = ac:GetAct("TbCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 14, 0)
  end
  am = ac:GetAct("TbCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 96, 1)
    MakeChar.ActEvent(am, "10", "WeaponsCombo.DamageEntity", 27, 1)
    MakeChar.ActEvent(am, "15", "WeaponsCombo.DamageEntity", 66, 1)
  end
  am = ac:GetAct("TbCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 22, 1)
  end
  am = ac:GetAct("UsePengoSwitchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 18, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 18, 1)
  end
  am = ac:GetAct("WebDestroy")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 10, 1)
  end
  am = ac:GetAct("WebRelaxInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 9, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 9, 0)
  end
  am = ac:GetAct("WheelGreenHit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,1.0000,0.1000,0.1000,1.0000", "Weapons.VibraEvent", 116, 1)
  end
  am = ac:GetAct("WheelRed110Hit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,1.0000,0.1000,0.1000,1.0000", "Weapons.VibraEvent", 116, 1)
  end
  am = ac:GetAct("WheelRedHit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,1.0000,0.1000,0.1000,1.0000", "Weapons.VibraEvent", 116, 1)
  end
  am = ac:GetAct("WhipAaCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 21, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 13, 0)
  end
  am = ac:GetAct("WhipAaCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 53, 1)
  end
  am = ac:GetAct("WhipAaCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 82, 1)
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 18, 1)
  end
  am = ac:GetAct("WhipAaCatchShieldLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 83, 1)
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 28, 1)
  end
  am = ac:GetAct("WhipAaCatchShieldWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 90, 1)
  end
  am = ac:GetAct("WhipAaCatchWin2")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 197, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 225, 1)
  end
  am = ac:GetAct("WhipBk11CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 128, 1)
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 89, 1)
  end
  am = ac:GetAct("WhipBk11CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 30, 1)
  end
  am = ac:GetAct("WhipBk12CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 130, 1)
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 89, 1)
  end
  am = ac:GetAct("WhipBk12CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 30, 1)
  end
  am = ac:GetAct("WhipBk2CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 128, 1)
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 85, 1)
  end
  am = ac:GetAct("WhipBk2CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 36, 1)
  end
  am = ac:GetAct("WhipBk3CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 36, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 31, 0)
  end
  am = ac:GetAct("WhipBk3CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 148, 1)
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 116, 1)
  end
  am = ac:GetAct("WhipBlockComboAEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "_Variable,0,-135.0000,0.0000,600,,0,90.0000,0.0,,,,1.0000", "Weapons.MeleeHitEvent", 40, 1)
  end
  am = ac:GetAct("WhipBlockComboAInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "BlockA1(Small),BlockA1(Average),BlockA1(Large),", "Weapons.SetVariableHitPreset", 4, 1)
    MakeChar.ActEvent(am, "BlockA2(Small),BlockA2(Average),BlockA2(Large),", "Weapons.SetVariableHitPreset", 10, 1)
    MakeChar.ActEvent(am, "BlockA3(Small),BlockA3(Average),BlockA3(Large),", "Weapons.SetVariableHitPreset", 17, 1)
    MakeChar.ActEvent(am, "BlockA4(Small),BlockA4(Average),BlockA4(Large),", "Weapons.SetVariableHitPreset", 26, 1)
  end
  am = ac:GetAct("WhipBlockComboDEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "_Variable,0,-14.0000,-368.0000,300,,0,0.0000,0.0000,,,,0.0", "Weapons.MeleeHitEvent", 36, 1)
    MakeChar.ActEvent(am, "1500.0000,1.0000", "Weapons.EventSetTgtEntity", 28, 1)
  end
  am = ac:GetAct("WhipBlockComboDInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "BlockD1(Small),BlockD1(Average),BlockD1(Large),", "Weapons.SetVariableHitPreset", 4, 1)
    MakeChar.ActEvent(am, "BlockD2(Small),BlockD2(Average),BlockD2(Large),", "Weapons.SetVariableHitPreset", 10, 1)
    MakeChar.ActEvent(am, "BlockD3(Small),BlockD3(Average),BlockD3(Large),", "Weapons.SetVariableHitPreset", 17, 1)
    MakeChar.ActEvent(am, "BlockD4(Small),BlockD4(Average),BlockD4(Large),", "Weapons.SetVariableHitPreset", 26, 1)
  end
  am = ac:GetAct("WhipBlockComboJInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "UpperCut1(Small),UpperCut1(Large),,", "Weapons.SetVariableHitPreset", 5, 1)
    MakeChar.ActEvent(am, "UpperCut2(Small),UpperCut2(Large),,", "Weapons.SetVariableHitPreset", 9, 1)
    MakeChar.ActEvent(am, "UpperCut3(Small),UpperCut3(Large),,", "Weapons.SetVariableHitPreset", 13, 1)
  end
  am = ac:GetAct("WhipBlockComboUppercut")
  if am ~= nil then
    MakeChar.ActEvent(am, "_Variable,0.0000,330.0000,0.0000,400,,0,90.0000,0.0000,,,,0", "Weapons.MeleeHitEvent", 7, 1)
    MakeChar.ActEvent(am, "_Variable,0.0000,550.0000,0.0000,400,,0,90.0000,0.0000,,,,0", "Weapons.MeleeHitEvent", 10, 1)
  end
  am = ac:GetAct("WhipBlockComboUppercutJ")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.0,0.0,0.0,750,5.0000,UppercutJ,UppercutJ(Large),,,1.0000", "WeaponsAttacks.EventDoubleJumpBlind", 13, 1)
  end
  am = ac:GetAct("WhipBlockSommerJump")
  if am ~= nil then
    MakeChar.ActEvent(am, "JUMP", "WeaponsCombo.ResetFlagPress", 3, 1)
  end
  am = ac:GetAct("WhipBlockSommerJumpD")
  if am ~= nil then
    MakeChar.ActEvent(am, "SommerJumpClaw(Small),256.0000,0.0000,0.0,230,,0,0.0,-90.0000,SommerJumpClaw(Average),SommerJumpClaw(Large),,0.0000", "Weapons.MeleeHitEvent", 6, 1)
    MakeChar.ActEvent(am, "SommerJumpD(Small),SommerJumpD(Average),SommerJumpD(Large),", "WeaponsWhip.BeginDamage", 12, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 17, 1)
    for i = 12, 17 do
      am:AddHitCheck(ac:GetAct("WhipBlockSommerJumpD")["TimeOfFrame" .. i], 2, 2, 1, 1, 2)
    end
  end
  am = ac:GetAct("WhipBlockSommerJumpDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "SommerJumpDD(Average),SommerJumpDD(Large),SommerJumpDD(Small),", "WeaponsWhip.BeginDamage", 32, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 46, 1)
    for i = 32, 46 do
      am:AddHitCheck(ac:GetAct("WhipBlockSommerJumpDD")["TimeOfFrame" .. i], 2, 2, 1, 1, 2)
    end
  end
  am = ac:GetAct("WhipBlockSommerJumpDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "SommerJumpDDD(Average),SommerJumpDDD(Large),SommerJumpDDD(Small),", "WeaponsWhip.BeginDamage", 45, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 53, 1)
    for i = 45, 53 do
      am:AddHitCheck(ac:GetAct("WhipBlockSommerJumpDDD")["TimeOfFrame" .. i], 3, 3, 2, 2, 2)
    end
  end
  am = ac:GetAct("WhipBtCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 32, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 32, 0)
  end
  am = ac:GetAct("WhipBtCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 99, 1)
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 57, 0)
  end
  am = ac:GetAct("WhipBtCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 390, 1)
  end
  am = ac:GetAct("WhipCfCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 34, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 14, 0)
  end
  am = ac:GetAct("WhipCfCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 18, 1)
    MakeChar.ActEvent(am, "20,", "WeaponsCombo.DamageEntity", 1, 1)
  end
  am = ac:GetAct("WhipCfCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 35, 1)
  end
  am = ac:GetAct("WhipCoCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 17, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 17, 0)
  end
  am = ac:GetAct("WhipCoCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 12, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 12, 0)
  end
  am = ac:GetAct("WhipCoCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "10,", "WeaponsCombo.DamageEntity", 16, 1)
  end
  am = ac:GetAct("WhipCoCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "10,", "WeaponsCombo.DamageEntity", 5, 1)
  end
  am = ac:GetAct("WhipCoCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,DestroySmallEnemy", "WeaponsCombo.DamageTarget", 65, 1)
  end
  am = ac:GetAct("WhipCoCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 12, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 12, 0)
  end
  am = ac:GetAct("WhipCoCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 124, 1)
    MakeChar.ActEvent(am, "20,", "WeaponsCombo.DamageEntity", 13, 1)
  end
  am = ac:GetAct("WhipCoCatchedLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "20,", "WeaponsCombo.DamageEntity", 5, 1)
  end
  am = ac:GetAct("WhipCoCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,DestroySmallEnemy", "WeaponsCombo.DamageTarget", 65, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 77, 1)
  end
  am = ac:GetAct("WhipComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "A(Small),A(Average),A(Large),A(Giant)", "WeaponsWhip.BeginDamage", 3, 1)
    MakeChar.ActEvent(am, "WhipComboDDhInit,-1,-1,0,0,WhipComboAh,0,0.4,0", "WeaponsCombo.LaunchActionIfHold", 14, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 13, 0)
    for i = 3, 13 do
      am:AddHitCheck(ac:GetAct("WhipComboA")["TimeOfFrame" .. i], 1, 1, -1, 1, 2)
    end
  end
  am = ac:GetAct("WhipComboAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "AA(Small),AA(Average),AA(Large),AA(Giant)", "WeaponsWhip.BeginDamage", 18, 1)
    MakeChar.ActEvent(am, "WhipComboDDhInit,-1,-1,0,0,WhipComboAh,0", "WeaponsCombo.LaunchActionIfHold", 29, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 28, 0)
    for i = 18, 28 do
      am:AddHitCheck(ac:GetAct("WhipComboAA")["TimeOfFrame" .. i], 1, 1, -1, 1, 2)
    end
  end
  am = ac:GetAct("WhipComboAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "A(Small),A(Average),A(Large),A(Giant)", "WeaponsWhip.BeginDamage", 25, 1)
    MakeChar.ActEvent(am, "AA(Small),AA(Average),AA(Large),AA(Giant)", "WeaponsWhip.BeginDamage", 37, 1)
    MakeChar.ActEvent(am, "WhipComboDDhInit,-1,-1,0,0,WhipComboAh,0", "WeaponsCombo.LaunchActionIfHold", 49, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 36, 0)
    for i = 25, 36 do
      am:AddHitCheck(ac:GetAct("WhipComboAAA")["TimeOfFrame" .. i], 1, 1, -1, 1, 2)
    end
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 47, 0)
    for i = 37, 47 do
      am:AddHitCheck(ac:GetAct("WhipComboAAA")["TimeOfFrame" .. i], 1, 1, -1, 1, 2)
    end
  end
  am = ac:GetAct("WhipComboAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "A(Small),A(Average),A(Large),A(Giant)", "WeaponsWhip.BeginDamage", 1, 1)
    MakeChar.ActEvent(am, "WhipComboDDhInit,-1,-1,0,0,WhipComboAh,0", "WeaponsCombo.LaunchActionIfHold", 20, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 17, 0)
    for i = 1, 17 do
      am:AddHitCheck(ac:GetAct("WhipComboAAAA")["TimeOfFrame" .. i], 1, 1, -1, 1, 2)
    end
  end
  am = ac:GetAct("WhipComboAAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "A(Small),A(Average),A(Large),A(Giant)", "WeaponsWhip.BeginDamage", 17, 1)
    MakeChar.ActEvent(am, "WhipComboDDhInit,-1,-1,0,0,WhipComboAh,0", "WeaponsCombo.LaunchActionIfHold", 35, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 35, 0)
    for i = 17, 35 do
      am:AddHitCheck(ac:GetAct("WhipComboAAAAA")["TimeOfFrame" .. i], 1, 1, -1, 1, 2)
    end
  end
  am = ac:GetAct("WhipComboAAAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "AA(Small),AA(Average),AA(Large),AA(Giant)", "WeaponsWhip.BeginDamage", 33, 1)
    MakeChar.ActEvent(am, "WhipComboDDhInit,-1,-1,0,0,WhipComboAh,0", "WeaponsCombo.LaunchActionIfHold", 50, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 46, 0)
    for i = 33, 46 do
      am:AddHitCheck(ac:GetAct("WhipComboAAAAAA")["TimeOfFrame" .. i], 1, 1, -1, 1, 2)
    end
  end
  am = ac:GetAct("WhipComboAAAAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "AAA2(Small),AAA2(Average),AAA2(Large),AAA2(Giant)", "WeaponsWhip.BeginDamage", 54, 1)
    MakeChar.ActEvent(am, "WhipComboDDhInit,-1,-1,0,0,WhipComboAh,0", "WeaponsCombo.LaunchActionIfHold", 82, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 78, 0)
    for i = 54, 78 do
      am:AddHitCheck(ac:GetAct("WhipComboAAAAAAA")["TimeOfFrame" .. i], 2, 1, -1, 2, 2)
    end
  end
  am = ac:GetAct("WhipComboAAAAAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "AAA(Small),AAA(Average),AAA(Large),AAA(Giant)", "WeaponsWhip.BeginDamage", 75, 1)
    MakeChar.ActEvent(am, "3200,200,2000,0.0,0.0,0.0,AAAAAAAAWave(Small),AAAAAAAAWave(Average),,,FALSE", "WeaponsAttacks.EventLaunchCircularWave", 76, 1)
    MakeChar.ActEvent(am, "WhipComboDDhInit,-1,-1,0,0,WhipComboAh,0,0.4,0", "WeaponsCombo.LaunchActionIfHold", 103, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 85, 0)
    for i = 75, 85 do
      am:AddHitCheck(ac:GetAct("WhipComboAAAAAAAA")["TimeOfFrame" .. i], 2, 1, 1, 1, 2)
    end
  end
  am = ac:GetAct("WhipComboAJJ")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.0,0.0,0.0,750,5.0000,AJJ(small),AJJ(Large),,,1.0000", "WeaponsAttacks.EventDoubleJumpBlind", 8, 1)
  end
  am = ac:GetAct("WhipComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "D(Small),D(Average),D(Large),D(Giant)", "WeaponsWhip.BeginDamage", 6, 1)
    MakeChar.ActEvent(am, "WhipComboDrD,-1,-1,0,0,WhipComboDrD,0", "WeaponsCombo.LaunchActionIfHold", 12, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 12, 0)
    for i = 6, 12 do
      am:AddHitCheck(ac:GetAct("WhipComboD")["TimeOfFrame" .. i], 2, 1, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipComboDA")
  if am ~= nil then
    MakeChar.ActEvent(am, "DA(Small),DA(Average),DA(Large),", "WeaponsWhip.BeginDamage", 1, 1)
    MakeChar.ActEvent(am, "WhipComboExplInit,-1,-1,1,0,WhipComboDADrh,0", "WeaponsCombo.LaunchActionIfHold", 22, 1)
    MakeChar.ActEvent(am, "WhipComboAAAAhInit,-1,-1,0,1,WhipComboDALMh,0", "WeaponsCombo.LaunchActionIfHold", 23, 1)
    MakeChar.ActEvent(am, "WhipComboDDhInit,-1,-1,0,0,WhipComboAh,0", "WeaponsCombo.LaunchActionIfHold", 24, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 20, 1)
    for i = 1, 20 do
      am:AddHitCheck(ac:GetAct("WhipComboDA")["TimeOfFrame" .. i], 2, 1, 1, 1, 2)
    end
  end
  am = ac:GetAct("WhipComboDAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "DA(Small),DA(Average),DA(Large),", "WeaponsWhip.BeginDamage", 16, 1)
    MakeChar.ActEvent(am, "WhipComboDDhInit,-1,-1,0,0,WhipComboAh,0,0.4,0", "WeaponsCombo.LaunchActionIfHold", 41, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 38, 1)
    for i = 16, 38 do
      am:AddHitCheck(ac:GetAct("WhipComboDAA")["TimeOfFrame" .. i], 2, 1, 1, 1, 2)
    end
  end
  am = ac:GetAct("WhipComboDAD")
  if am ~= nil then
    MakeChar.ActEvent(am, "DAD(Small),-21.0000,6.0000,-414.0000,180,,0,45.0000,0.0000,DAD(Average),DAD(Large),,0", "Weapons.MeleeHitEvent", 53, 1)
    MakeChar.ActEvent(am, "DAD(Small),-21.0000,6.0000,-414.0000,180,,0,45.0000,0.0000,DAD(Average),DAD(Large),,0", "Weapons.MeleeHitEvent", 58, 1)
    MakeChar.ActEvent(am, "DAD(Small),-21.0000,6.0000,-414.0000,180,,0,45.0000,0.0000,DAD(Average),DAD(Large),,0", "Weapons.MeleeHitEvent", 63, 1)
    MakeChar.ActEvent(am, "DAD(Small),-21.0000,6.0000,-414.0000,180,,0,45.0000,0.0000,DAD(Average),DAD(Large),,0", "Weapons.MeleeHitEvent", 68, 1)
    MakeChar.ActEvent(am, "DAD(Small),-21.0000,6.0000,-414.0000,180,,0,45.0000,0.0000,DAD(Average),DAD(Large),,0", "Weapons.MeleeHitEvent", 73, 1)
    MakeChar.ActEvent(am, "DAD(Small),-21.0000,6.0000,-414.0000,180,,0,45.0000,0.0000,DAD(Average),DAD(Large),,0", "Weapons.MeleeHitEvent", 76, 1)
  end
  am = ac:GetAct("WhipComboDADInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "DAD(Small),-21.0000,6.0000,-414.0000,180,,0,45.0000,0.0000,DAD(Average),DAD(Large),,0", "Weapons.MeleeHitEvent", 37, 1)
    MakeChar.ActEvent(am, "DAD(Small),-21.0000,6.0000,-414.0000,180,,0,45.0000,0.0000,DAD(Average),DAD(Large),,0", "Weapons.MeleeHitEvent", 42, 1)
    MakeChar.ActEvent(am, "DAD(Small),-21.0000,6.0000,-414.0000,180,,0,45.0000,0.0000,DAD(Average),DAD(Large),,0", "Weapons.MeleeHitEvent", 45, 1)
  end
  am = ac:GetAct("WhipComboDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "DD(Small),DD(Average),DD(Large),DD(Giant)", "WeaponsWhip.BeginDamage", 3, 1)
    MakeChar.ActEvent(am, "WhipComboDrD,-1,-1,0,0,WhipComboDrD,0,0.4,0", "WeaponsCombo.LaunchActionIfHold", 10, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 9, 0)
    for i = 3, 9 do
      am:AddHitCheck(ac:GetAct("WhipComboDD")["TimeOfFrame" .. i], 2, 1, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipComboDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "DDD(Average),DDD(Giant),DDD(Large),DDD(Small)", "WeaponsWhip.BeginDamage", 9, 1)
    MakeChar.ActEvent(am, "WhipComboDrD,-1,-1,0,0,WhipComboDrD,0,0.4,0", "WeaponsCombo.LaunchActionIfHold", 15, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 15, 1)
    for i = 9, 15 do
      am:AddHitCheck(ac:GetAct("WhipComboDDD")["TimeOfFrame" .. i], 2, 1, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipComboDDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "DDDD(Average),DDDD(Giant),DDDD(Large),DDDD(Small)", "WeaponsWhip.BeginDamage", 11, 1)
    MakeChar.ActEvent(am, "WhipComboDrD,-1,-1,0,0,WhipComboDrD,0,0.4,0", "WeaponsCombo.LaunchActionIfHold", 20, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 16, 1)
    for i = 11, 16 do
      am:AddHitCheck(ac:GetAct("WhipComboDDDD")["TimeOfFrame" .. i], 2, 1, 1, 3, 1)
    end
  end
  am = ac:GetAct("WhipComboDDDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "DDDDD(Average),DDDDD(Giant),DDDDD(Large),DDDDD(Small)", "WeaponsWhip.BeginDamage", 12, 1)
    MakeChar.ActEvent(am, "WhipComboDrD,-1,-1,0,0,WhipComboDrD,0,0.4,0", "WeaponsCombo.LaunchActionIfHold", 25, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 17, 1)
    for i = 12, 17 do
      am:AddHitCheck(ac:GetAct("WhipComboDDDDD")["TimeOfFrame" .. i], 3, 2, 2, 1, 1)
    end
  end
  am = ac:GetAct("WhipComboDDDDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-366.0000,270,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 30, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-618.0000,300,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 30, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-873.0000,330,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 30, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-366.0000,270,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 35, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-618.0000,300,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 35, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-873.0000,330,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 35, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-366.0000,270,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 40, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-618.0000,300,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 40, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-873.0000,330,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 40, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-366.0000,270,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 45, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-618.0000,300,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 45, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-873.0000,330,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 45, 1)
    MakeChar.ActEvent(am, "Dark,0.4500", "NeutralEnergy.EventConsumeMagic", 30, 1)
    MakeChar.ActEvent(am, "Dark,0.4500", "NeutralEnergy.EventConsumeMagic", 35, 1)
    MakeChar.ActEvent(am, "Dark,0.4500", "NeutralEnergy.EventConsumeMagic", 40, 1)
    MakeChar.ActEvent(am, "Dark,0.4500", "NeutralEnergy.EventConsumeMagic", 45, 1)
  end
  am = ac:GetAct("WhipComboDDDDDDInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-291.0000,250,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 19, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-624.0000,300,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 19, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-366.0000,270,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 24, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-618.0000,300,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 24, 1)
    MakeChar.ActEvent(am, "DDDDDDh(Small),0.0000,0.0000,-873.0000,330,,0,-180,-180,DDDDDDh(Average),DDDDDDh(Large),,0", "Weapons.MeleeHitEvent", 24, 1)
    MakeChar.ActEvent(am, "Dark,0.4500", "NeutralEnergy.EventConsumeMagic", 19, 1)
    MakeChar.ActEvent(am, "Dark,0.4500", "NeutralEnergy.EventConsumeMagic", 24, 1)
  end
  am = ac:GetAct("WhipComboDDh")
  if am ~= nil then
    MakeChar.ActEvent(am, "DDh2(Small),DDh2(Average),DDh2(Large),DDh2(Giant)", "WeaponsWhip.BeginDamage", 18, 1)
    MakeChar.ActEvent(am, "DDh(Small),DDh(Average),DDh(Large),DDh(Giant)", "WeaponsWhip.BeginDamage", 24, 1)
    MakeChar.ActEvent(am, "!WhipComboDDhEnd,3,0,0,0", "WeaponsCombo.LaunchActionIfHold", 28, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 22, 1)
    for i = 18, 22 do
      am:AddHitCheck(ac:GetAct("WhipComboDDh")["TimeOfFrame" .. i], 2, 1, -1, 2, 1)
    end
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 28, 1)
    for i = 24, 28 do
      am:AddHitCheck(ac:GetAct("WhipComboDDh")["TimeOfFrame" .. i], 2, 1, -1, 2, 1)
    end
  end
  am = ac:GetAct("WhipComboDDhD")
  if am ~= nil then
    MakeChar.ActEvent(am, "AhA(Average),AhA(Large),AhA(Small),", "WeaponsWhip.BeginDamage", 8, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 20, 1)
    for i = 8, 20 do
      am:AddHitCheck(ac:GetAct("WhipComboDDhD")["TimeOfFrame" .. i], 3, 2, 2, 2, 1)
    end
  end
  am = ac:GetAct("WhipComboDDhInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "DDh(Small),DDh(Average),DDh(Large),DDh(Giant)", "WeaponsWhip.BeginDamage", 8, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.ResetActionIfHoldCnt", 13, 1)
    MakeChar.ActEvent(am, "WhipComboDDh,-1,-1", "WeaponsCombo.LaunchActionIfHold", 14, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 13, 1)
    for i = 8, 13 do
      am:AddHitCheck(ac:GetAct("WhipComboDDhInit")["TimeOfFrame" .. i], 2, 1, -1, 2, 1)
    end
  end
  am = ac:GetAct("WhipComboDJ")
  if am ~= nil then
    MakeChar.ActEvent(am, "DJ(Small),DJ(Average),DJ(Large),DJ(Giant)", "WeaponsWhip.BeginDamage", 11, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 18, 1)
    for i = 11, 18 do
      am:AddHitCheck(ac:GetAct("WhipComboDJ")["TimeOfFrame" .. i], 3, 3, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipComboDJJ")
  if am ~= nil then
    MakeChar.ActEvent(am, "DJJ(Small),DJJ(Large),,", "WeaponsWhip.BeginDamage", 12, 1)
    MakeChar.ActEvent(am, "0.0,89.0000,0.0,750,5.0000,DJJ_Blind,,,", "WeaponsAttacks.EventDoubleJumpBlind", 20, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 19, 1)
    for i = 12, 19 do
      am:AddHitCheck(ac:GetAct("WhipComboDJJ")["TimeOfFrame" .. i], 3, 3, 2, 2, 1)
    end
  end
  am = ac:GetAct("WhipComboDhDAlt")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.0,0.0,-200.0000,100,0.0", "WeaponsAttacks.EventBlind", 14, 1)
    MakeChar.ActEvent(am, "0.0,0.0,-350.0000,100,0.0", "WeaponsAttacks.EventBlind", 14, 1)
    MakeChar.ActEvent(am, "0.0,0.0,-500.0000,100,0.0", "WeaponsAttacks.EventBlind", 14, 1)
    MakeChar.ActEvent(am, "0.0,0.0,-650.0000,100,0.0", "WeaponsAttacks.EventBlind", 14, 1)
    MakeChar.ActEvent(am, "D(Average),D(Giant),D(Large),D(Small)", "WeaponsWhip.BeginDamage", 7, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 13, 1)
    for i = 7, 13 do
      am:AddHitCheck(ac:GetAct("WhipComboDhDAlt")["TimeOfFrame" .. i], 2, 1, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipComboDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "RetardedD(Small),RetardedD(Average),RetardedD(Large),", "WeaponsWhip.BeginDamage", 11, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 22, 1)
    for i = 11, 22 do
      am:AddHitCheck(ac:GetAct("WhipComboDrD")["TimeOfFrame" .. i], 2, 1, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipComboDrDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "RetardedD2(Small),RetardedD(Average),RetardedD(Large),", "WeaponsWhip.BeginDamage", 28, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 43, 1)
    for i = 28, 43 do
      am:AddHitCheck(ac:GetAct("WhipComboDrDrD")["TimeOfFrame" .. i], 3, 1, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipComboDrDrDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "RetardedD2(Small),RetardedD2(Average),RetardedD(Large),", "WeaponsWhip.BeginDamage", 43, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 56, 1)
    for i = 43, 56 do
      am:AddHitCheck(ac:GetAct("WhipComboDrDrDrD")["TimeOfFrame" .. i], 3, 2, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipComboDrDrDrDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "RetardedD2(Small),RetardedD2(Average),RetardedD(Large),", "WeaponsWhip.BeginDamage", 59, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 64, 1)
    for i = 59, 64 do
      am:AddHitCheck(ac:GetAct("WhipComboDrDrDrDrD")["TimeOfFrame" .. i], 3, 2, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipComboDrDrDrDrDrD")
  if am ~= nil then
    MakeChar.ActEvent(am, "RetardedDEnd(Small),RetardedDEnd(Average),RetardedDEnd(Large),", "WeaponsWhip.BeginDamage", 74, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 78, 1)
    for i = 74, 78 do
      am:AddHitCheck(ac:GetAct("WhipComboDrDrDrDrDrD")["TimeOfFrame" .. i], 3, 3, 2, 2, 1)
    end
  end
  am = ac:GetAct("WhipComboDrMhs")
  if am ~= nil then
    MakeChar.ActEvent(am, "StaminaAttack(Small),StaminaAttack(Average),StaminaAttack(Large),StaminaAttack(Giant)", "WeaponsWhip.BeginDamage", 3, 1)
    MakeChar.ActEvent(am, "Dark,2.3000", "NeutralEnergy.EventConsumeMagic", 26, 0)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 24, 0)
    for i = 3, 24 do
      am:AddHitCheck(ac:GetAct("WhipComboDrMhs")["TimeOfFrame" .. i], 3, 3, 3, 3, 0)
    end
  end
  am = ac:GetAct("WhipComboDrMhss")
  if am ~= nil then
    MakeChar.ActEvent(am, "StaminaAttack(Small),StaminaAttack(Average),StaminaAttack(Large),StaminaAttack(Giant)", "WeaponsWhip.BeginDamage", 10, 1)
    MakeChar.ActEvent(am, "Dark,2.3000", "NeutralEnergy.EventConsumeMagic", 23, 0)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 21, 0)
    for i = 10, 21 do
      am:AddHitCheck(ac:GetAct("WhipComboDrMhss")["TimeOfFrame" .. i], 3, 3, 3, 3, 0)
    end
  end
  am = ac:GetAct("WhipComboDrMhsss")
  if am ~= nil then
    MakeChar.ActEvent(am, "StaminaAttack(Small),StaminaAttack(Average),StaminaAttack(Large),StaminaAttack(Giant)", "WeaponsWhip.BeginDamage", 8, 1)
    MakeChar.ActEvent(am, "Dark,2.3000", "NeutralEnergy.EventConsumeMagic", 22, 0)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 20, 0)
    for i = 8, 20 do
      am:AddHitCheck(ac:GetAct("WhipComboDrMhsss")["TimeOfFrame" .. i], 3, 3, 3, 3, 0)
    end
  end
  am = ac:GetAct("WhipComboExpl")
  if am ~= nil then
    MakeChar.ActEvent(am, "PressArea,,WhipComboExplEnd", "WeaponsCombo.EventCheckRapidFire", 41, 1)
    MakeChar.ActEvent(am, "PressArea,,WhipComboExplEnd", "WeaponsCombo.EventCheckRapidFire", 46, 1)
    MakeChar.ActEvent(am, "PressArea,,WhipComboExplEnd", "WeaponsCombo.EventCheckRapidFire", 50, 1)
    MakeChar.ActEvent(am, "PressArea,,WhipComboExplEnd", "WeaponsCombo.EventCheckRapidFire", 54, 1)
    MakeChar.ActEvent(am, "PressArea,,WhipComboExplEnd", "WeaponsCombo.EventCheckRapidFire", 58, 1)
    MakeChar.ActEvent(am, "PressArea,,WhipComboExplEnd", "WeaponsCombo.EventCheckRapidFire", 62, 1)
    MakeChar.ActEvent(am, "PressArea,,WhipComboExplEnd", "WeaponsCombo.EventCheckRapidFire", 66, 1)
    MakeChar.ActEvent(am, "Dark,1.0000", "NeutralEnergy.EventConsumeMagic", 38, 1)
    MakeChar.ActEvent(am, "Dark,1.0000", "NeutralEnergy.EventConsumeMagic", 42, 1)
    MakeChar.ActEvent(am, "Dark,1.0000", "NeutralEnergy.EventConsumeMagic", 47, 1)
    MakeChar.ActEvent(am, "Dark,1.0000", "NeutralEnergy.EventConsumeMagic", 51, 1)
    MakeChar.ActEvent(am, "Dark,1.0000", "NeutralEnergy.EventConsumeMagic", 55, 1)
    MakeChar.ActEvent(am, "Dark,1.0000", "NeutralEnergy.EventConsumeMagic", 59, 1)
    MakeChar.ActEvent(am, "Dark,1.0000", "NeutralEnergy.EventConsumeMagic", 63, 1)
    MakeChar.ActEvent(am, "WhipComboExplHitEnd,-1,-1,1,0,,0,0.2500,0", "WeaponsCombo.LaunchActionIfHold", 38, 1)
    MakeChar.ActEvent(am, "WhipComboExplHitEnd,-1,-1,1,0,,0,0.2500,0", "WeaponsCombo.LaunchActionIfHold", 42, 1)
    MakeChar.ActEvent(am, "WhipComboExplHitEnd,-1,-1,1,0,,0,0.2500", "WeaponsCombo.LaunchActionIfHold", 47, 1)
    MakeChar.ActEvent(am, "WhipComboExplHitEnd,-1,-1,1,0,,0,0.2500", "WeaponsCombo.LaunchActionIfHold", 51, 1)
    MakeChar.ActEvent(am, "WhipComboExplHitEnd,-1,-1,1,0,,0,0.2500,0", "WeaponsCombo.LaunchActionIfHold", 55, 1)
    MakeChar.ActEvent(am, "WhipComboExplHitEnd,-1,-1,1,0,,0,0.2500", "WeaponsCombo.LaunchActionIfHold", 59, 1)
    MakeChar.ActEvent(am, "WhipComboExplHitEnd,-1,-1,1,0,,0,0.2500", "WeaponsCombo.LaunchActionIfHold", 63, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventForceButtonReleased", 37, 1)
  end
  am = ac:GetAct("WhipComboExplEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "WhipComboExplHitEnd,-1,-1,1,0,,0,0.2000,0", "WeaponsCombo.LaunchActionIfHold", 72, 1)
  end
  am = ac:GetAct("WhipComboExplHitEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "BlockA4(Average),0.0,0.0,0.0,1300,,0,0.0,0.0,BlockA4(Large),BlockA4(Small),,1.0000", "Weapons.MeleeHitEvent", 90, 1)
    MakeChar.ActEvent(am, "Dark,5.0000", "NeutralEnergy.EventConsumeMagic", 90, 1)
  end
  am = ac:GetAct("WhipComboExplInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventForceButtonReleased", 1, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventSetWaitingForRelease", 1, 1)
  end
  am = ac:GetAct("WhipComboLMh")
  if am ~= nil then
    MakeChar.ActEvent(am, "StaminaAreaAttack(Small),StaminaAreaAttack(Average),StaminaAreaAttack(Large),StaminaAreaAttack(Giant)", "WeaponsWhip.BeginDamage", 22, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 30, 1)
    for i = 22, 30 do
      am:AddHitCheck(ac:GetAct("WhipComboLMh")["TimeOfFrame" .. i], 2, 2, 2, 2, 0)
    end
  end
  am = ac:GetAct("WhipComboLMhEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 42, 1)
    for i = 22, 42 do
      am:AddHitCheck(ac:GetAct("WhipComboLMhEnd")["TimeOfFrame" .. i], 2, 2, 2, 2, 0)
    end
  end
  am = ac:GetAct("WhipComboLMhInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "StaminaAreaAttack(Small),StaminaAreaAttack(Average),StaminaAreaAttack(Large),StaminaAreaAttack(Giant)", "WeaponsWhip.BeginDamage", 19, 1)
  end
  am = ac:GetAct("WhipDL2CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 27, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 27, 0)
  end
  am = ac:GetAct("WhipDL2CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 9, 1)
  end
  am = ac:GetAct("WhipDL2CatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 57, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 18, 0)
  end
  am = ac:GetAct("WhipDL2CatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 262, 1)
    MakeChar.ActEvent(am, "6,", "WeaponsCombo.DamageEntity", 175, 1)
    MakeChar.ActEvent(am, "6,", "WeaponsCombo.DamageEntity", 177, 1)
    MakeChar.ActEvent(am, "6,", "WeaponsCombo.DamageEntity", 179, 1)
    MakeChar.ActEvent(am, "6,", "WeaponsCombo.DamageEntity", 181, 1)
    MakeChar.ActEvent(am, "6,", "WeaponsCombo.DamageEntity", 183, 1)
    MakeChar.ActEvent(am, "6,", "WeaponsCombo.DamageEntity", 185, 1)
    MakeChar.ActEvent(am, "6,", "WeaponsCombo.DamageEntity", 187, 1)
    MakeChar.ActEvent(am, "6,", "WeaponsCombo.DamageEntity", 189, 1)
    MakeChar.ActEvent(am, "6,", "WeaponsCombo.DamageEntity", 191, 1)
    MakeChar.ActEvent(am, "6,", "WeaponsCombo.DamageEntity", 193, 1)
    MakeChar.ActEvent(am, "6,", "WeaponsCombo.DamageEntity", 195, 1)
    MakeChar.ActEvent(am, "6,", "WeaponsCombo.DamageEntity", 197, 1)
    MakeChar.ActEvent(am, "8,", "WeaponsCombo.DamageEntity", 199, 1)
  end
  am = ac:GetAct("WhipDL2CatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "100,", "WeaponsCombo.DamageTarget", 178, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 201, 1)
  end
  am = ac:GetAct("WhipDl2Catched2Init")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 72, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 72, 0)
  end
  am = ac:GetAct("WhipDl2Catched2Lose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 67, 1)
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 15, 1)
  end
  am = ac:GetAct("WhipDl2Catched2Win")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 21, 1)
  end
  am = ac:GetAct("WhipDodgeComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "DDD(Average),DDD(Giant),DDD(Large),DDD(Small)", "WeaponsWhip.BeginDamage", 5, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 9, 1)
    for i = 5, 9 do
      am:AddHitCheck(ac:GetAct("WhipDodgeComboA")["TimeOfFrame" .. i], 2, 1, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipDodgeComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "DDD(Average),DDD(Giant),DDD(Large),DDD(Small)", "WeaponsWhip.BeginDamage", 5, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 9, 1)
    for i = 5, 9 do
      am:AddHitCheck(ac:GetAct("WhipDodgeComboD")["TimeOfFrame" .. i], 2, 1, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipEva1CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 9, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 7, 0)
  end
  am = ac:GetAct("WhipEva1CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 181, 1)
  end
  am = ac:GetAct("WhipEva1CatchLose0")
  if am ~= nil then
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 60, 1)
  end
  am = ac:GetAct("WhipEva2CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 99, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 99, 0)
  end
  am = ac:GetAct("WhipEva2CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 313, 1)
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 166, 1)
  end
  am = ac:GetAct("WhipEva2CatchLose0")
  if am ~= nil then
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 28, 1)
  end
  am = ac:GetAct("WhipEva2CatchLose1")
  if am ~= nil then
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 65, 1)
  end
  am = ac:GetAct("WhipEva2CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 342, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 409, 1)
  end
  am = ac:GetAct("WhipEvaCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 9, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 7, 0)
  end
  am = ac:GetAct("WhipEvaCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 225, 1)
  end
  am = ac:GetAct("WhipEvaCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "100,", "WeaponsCombo.DamageTarget", 165, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 180, 1)
  end
  am = ac:GetAct("WhipEvbCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 77, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 77, 0)
  end
  am = ac:GetAct("WhipEvbCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 15, 1)
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 34, 1)
  end
  am = ac:GetAct("WhipEvbCatchLose0")
  if am ~= nil then
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 37, 1)
  end
  am = ac:GetAct("WhipEvbCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 8, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 8, 0)
  end
  am = ac:GetAct("WhipEvbCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 225, 1)
  end
  am = ac:GetAct("WhipEvbCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "100,", "WeaponsCombo.DamageTarget", 165, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 180, 1)
  end
  am = ac:GetAct("WhipFallBlockComboAEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "_Variable,-15.0000,-373.0000,-80.0000,400,,0,90.0000,0.0000,,,,1.0000", "Weapons.MeleeHitEvent", 27, 1)
  end
  am = ac:GetAct("WhipFallBlockComboAInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "BlockA1(Small),BlockA1(Average),BlockA1(Large),", "Weapons.SetVariableHitPreset", 2, 1)
    MakeChar.ActEvent(am, "FallBlockA(Small),FallBlockA(Large),,", "Weapons.SetVariableHitPreset", 12, 1)
    MakeChar.ActEvent(am, "FallBlockAEnd(Small),FallBlockAEnd(Large),,", "Weapons.SetVariableHitPreset", 22, 1)
  end
  am = ac:GetAct("WhipFallBlockComboDEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "FallDh(Small),-30.0000,-66.0000,-15.0000,150,,0,-60.0000,0.0000,FallDh(Average),FallDh(Large),FallDh(Giant),0", "Weapons.MeleeHitEvent", 38, 1)
    MakeChar.ActEvent(am, "FallDh(Small),-30.0000,-66.0000,-15.0000,150,,0,-60.0000,0.0000,FallDh(Average),FallDh(Large),FallDh(Giant),0", "Weapons.MeleeHitEvent", 39, 1)
    MakeChar.ActEvent(am, "_Variable,0.0000,-135.0000,-63.0000,400,,0,-180,-180,,,,1.0000", "Weapons.MeleeHitEvent", 42, 1)
  end
  am = ac:GetAct("WhipFallBlockComboDInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "BlockA1(Average),BlockA1(Large),BlockA1(Small),", "Weapons.SetVariableHitPreset", 2, 1)
    MakeChar.ActEvent(am, "BlockA2(Average),BlockA2(Large),BlockA2(Small),", "Weapons.SetVariableHitPreset", 10, 1)
    MakeChar.ActEvent(am, "BlockA3(Average),BlockA3(Large),BlockA3(Small),", "Weapons.SetVariableHitPreset", 16, 1)
    MakeChar.ActEvent(am, "BlockA4(Average),BlockA4(Large),BlockA4(Small),", "Weapons.SetVariableHitPreset", 22, 1)
  end
  am = ac:GetAct("WhipFallComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "FallA(Small),FallA(Average),FallA(Large),FallA(Giant)", "WeaponsWhip.BeginDamage", 6, 1)
    MakeChar.ActEvent(am, "WhipFallComboAh,-1,-1,0,0,WhipFallComboAh", "WeaponsCombo.LaunchActionIfHold", 13, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 13, 1)
    for i = 6, 13 do
      am:AddHitCheck(ac:GetAct("WhipFallComboA")["TimeOfFrame" .. i], 3, 3, 1, 2, 2)
    end
  end
  am = ac:GetAct("WhipFallComboAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "FallAA(Small),FallAA(Average),FallAA(Large),FallAA(Giant)", "WeaponsWhip.BeginDamage", 13, 1)
    MakeChar.ActEvent(am, "WhipFallComboAh,-1,-1,0,0,WhipFallComboAh", "WeaponsCombo.LaunchActionIfHold", 28, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 29, 1)
    for i = 13, 29 do
      am:AddHitCheck(ac:GetAct("WhipFallComboAA")["TimeOfFrame" .. i], 3, 3, 1, 3, 2)
    end
  end
  am = ac:GetAct("WhipFallComboAh")
  if am ~= nil then
    MakeChar.ActEvent(am, "FallAh(Small),FallAh(Average),FallAh(Large),FallAh(Giant)", "WeaponsWhip.BeginDamage", 15, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 42, 1)
    for i = 15, 42 do
      am:AddHitCheck(ac:GetAct("WhipFallComboAh")["TimeOfFrame" .. i], 1, 1, 1, 1, 2)
    end
  end
  am = ac:GetAct("WhipFallComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "FallD(Small),FallD(Average),FallD(Large),FallD(Giant)", "WeaponsWhip.BeginDamage", 5, 1)
    MakeChar.ActEvent(am, "WhipFallComboDhInit,-1,-1,0,0,WhipFallComboDh,0,0.4,0", "WeaponsCombo.LaunchActionIfHold", 12, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 11, 0)
    for i = 5, 11 do
      am:AddHitCheck(ac:GetAct("WhipFallComboD")["TimeOfFrame" .. i], 3, 3, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipFallComboDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "FallD(Small),FallD(Average),FallD(Giant),FallD(Large)", "WeaponsWhip.BeginDamage", 5, 1)
    MakeChar.ActEvent(am, "WhipFallComboDDD,-1,-1,0,0,WhipFallComboDDhD,0,0.4,0", "WeaponsCombo.LaunchActionIfHold", 11, 1)
    MakeChar.ActEvent(am, "WhipFallComboDhInit,-1,-1,0,0,WhipFallComboDh,0,0.4,0", "WeaponsCombo.LaunchActionIfHold", 12, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 12, 1)
    for i = 5, 12 do
      am:AddHitCheck(ac:GetAct("WhipFallComboDD")["TimeOfFrame" .. i], 3, 3, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipFallComboDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "FallDDD(Small),FallDDD(Average),FallDDD(Large),", "WeaponsWhip.BeginDamage", 31, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 37, 1)
    for i = 31, 37 do
      am:AddHitCheck(ac:GetAct("WhipFallComboDDD")["TimeOfFrame" .. i], 4, 4, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipFallComboDDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "ChainSaw(Small)),ChainSaw(Average),ChainSaw(Large),", "WeaponsWhip.BeginDamage", 3, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 15, 1)
    for i = 3, 15 do
      am:AddHitCheck(ac:GetAct("WhipFallComboDDDD")["TimeOfFrame" .. i], 2, 1, -1, -1, 1)
    end
  end
  am = ac:GetAct("WhipFallComboDhD")
  if am ~= nil then
    MakeChar.ActEvent(am, "FallDhD(Small),0.0000,0.0000,-300.0000,250,,0,90.0000,0.0000,FallDhD(Average),FallDhD(Large),,1.0000", "Weapons.MeleeHitEvent", 5, 1)
    MakeChar.ActEvent(am, "FallDhD(Small),0.0000,0.0000,-700.0000,250,,0,90.0000,0.0000,FallDhD(Large),FallDhD(Average),,1.0000", "Weapons.MeleeHitEvent", 5, 1)
    MakeChar.ActEvent(am, "FallDhD(Small),0.0000,0.0000,-248.0000,250,,0,90.0000,0.0000,FallDhD(Average),FallDhD(Large),,1.0000", "Weapons.MeleeHitEvent", 7, 1)
    MakeChar.ActEvent(am, "FallDhD(Small),0.0000,0.0000,-592.0000,250,,0,90.0000,0.0000,FallDhD(Average),FallDhD(Large),,1.0000", "Weapons.MeleeHitEvent", 7, 1)
  end
  am = ac:GetAct("WhipFallComboDhInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "FallDh(Small),FallDh(Average),FallDh(Large),FallDh(Giant)", "WeaponsWhip.BeginDamage", 9, 1)
    MakeChar.ActEvent(am, "WhipFallComboDh,-1,0,0,0,WhipFallComboDhD,0,0.2000,1", "WeaponsCombo.LaunchActionIfHold", 22, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 22, 1)
    for i = 9, 22 do
      am:AddHitCheck(ac:GetAct("WhipFallComboDhInit")["TimeOfFrame" .. i], 4, 4, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipFallComboGripBig")
  if am ~= nil then
    MakeChar.ActEvent(am, "FallGripBig,0.0000,-25.0000,-59.0000,80,,0,-37.0000,0.0000,,,,0", "Weapons.MeleeHitEvent", 24, 1)
    MakeChar.ActEvent(am, "0.0,0.0000,large,2,0,24", "Weapons.CallPreHit", 0, 1)
  end
  am = ac:GetAct("WhipFallComboGripSmall")
  if am ~= nil then
    MakeChar.ActEvent(am, "150.0000,0.0000,FallGripSmall,,,", "Weapons.HitEvent", 23, 1)
  end
  am = ac:GetAct("WhipFallComboGripSmallDown")
  if am ~= nil then
    MakeChar.ActEvent(am, "-90.0000,0.0000,FallGripSmallDown,,,", "Weapons.HitEvent", 10, 1)
  end
  am = ac:GetAct("WhipFallComboKEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "6000.0002,10.0000,6500.0002,27.0000,4400.0999,55.0000,3000.0000,90.0000,2200.0001", "WeaponsDagger.ThrowDagger", 18, 1)
  end
  am = ac:GetAct("WhipFallComboKInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "1", "WeaponsCombo.ChargeDagger", 0, 1)
    MakeChar.ActEvent(am, "2", "WeaponsCombo.ChargeDagger", 5, 1)
    MakeChar.ActEvent(am, "3", "WeaponsCombo.ChargeDagger", 8, 1)
    MakeChar.ActEvent(am, "4", "WeaponsCombo.ChargeDagger", 11, 1)
    MakeChar.ActEvent(am, "5", "WeaponsCombo.ChargeDagger", 14, 1)
    MakeChar.ActEvent(am, "!WhipFallComboKEnd,-1,-1", "WeaponsCombo.LaunchActionIfHold", 3, 1)
  end
  am = ac:GetAct("WhipFallComboStomp")
  if am ~= nil then
    MakeChar.ActEvent(am, "Stomp(Average),0.0,0.0,0.0,192,,0,0.0,0.0,Stomp(Small),,,1.0000", "Weapons.MeleeHitEvent", 2, 1)
  end
  am = ac:GetAct("WhipFallComboV")
  if am ~= nil then
    MakeChar.ActEvent(am, "OnAir", "WeaponsVial.ThrowVial", 20, 1)
  end
  am = ac:GetAct("WhipFallRunComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "FallA(Small),FallA(Average),FallA(Large),FallA(Giant)", "WeaponsWhip.BeginDamage", 7, 1)
    MakeChar.ActEvent(am, "WhipFallComboAh,-1,-1,0,0,WhipFallComboAh", "WeaponsCombo.LaunchActionIfHold", 12, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 20, 0)
    for i = 7, 20 do
      am:AddHitCheck(ac:GetAct("WhipFallRunComboA")["TimeOfFrame" .. i], 3, 3, 1, 2, 2)
    end
  end
  am = ac:GetAct("WhipFallRunComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "FallD(Small),FallD(Average),FallD(Large),FallD(Giant)", "WeaponsWhip.BeginDamage", 4, 1)
    MakeChar.ActEvent(am, "WhipFallComboDhInit,-1,-1,0,0,WhipFallComboDh,0,0.4,0", "WeaponsCombo.LaunchActionIfHold", 10, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 13, 0)
    for i = 4, 13 do
      am:AddHitCheck(ac:GetAct("WhipFallRunComboD")["TimeOfFrame" .. i], 3, 3, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipFhCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 15, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 15, 0)
  end
  am = ac:GetAct("WhipFhCatchKick")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,DestroySmallEnemy", "WeaponsCombo.DamageTarget", 85, 1)
  end
  am = ac:GetAct("WhipGbCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "10,", "WeaponsCombo.DamageEntity", 92, 1)
  end
  am = ac:GetAct("WhipGbCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 24, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 24, 0)
  end
  am = ac:GetAct("WhipGbCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 9, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 9, 0)
  end
  am = ac:GetAct("WhipGbCatchPunch")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,DestroySmallEnemy", "WeaponsCombo.DamageTarget", 41, 1)
  end
  am = ac:GetAct("WhipGdCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 30, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 10, 0)
  end
  am = ac:GetAct("WhipGdCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.7000,0.0,0.6000", "Weapons.VibraEvent", 52, 1)
  end
  am = ac:GetAct("WhipGdCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.2000,0.4000,0.5000", "Weapons.VibraEvent", 111, 1)
    MakeChar.ActEvent(am, "0,0.7000,0.0,0.6000", "Weapons.VibraEvent", 185, 1)
  end
  am = ac:GetAct("WhipGdCatchLose3")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.2000,0.4000,0.5000", "Weapons.VibraEvent", 111, 1)
    MakeChar.ActEvent(am, "0,0.4000,0.0000,0.6000", "Weapons.VibraEvent", 188, 1)
    MakeChar.ActEvent(am, "0,0.3000,0.0000,0.5000", "Weapons.VibraEvent", 225, 1)
    MakeChar.ActEvent(am, "60,", "WeaponsCombo.DamageEntity", 188, 1)
  end
  am = ac:GetAct("WhipGdCatchWin2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 538, 1)
  end
  am = ac:GetAct("WhipGdCatchWinDoor")
  if am ~= nil then
    MakeChar.ActEvent(am, "10,", "WeaponsCombo.DamageEntity", 624, 1)
  end
  am = ac:GetAct("WhipGhCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 27, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 27, 0)
  end
  am = ac:GetAct("WhipGhCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 15, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 15, 0)
  end
  am = ac:GetAct("WhipGhCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "20,", "WeaponsCombo.DamageEntity", 104, 1)
  end
  am = ac:GetAct("WhipGhCatchPunch")
  if am ~= nil then
    MakeChar.ActEvent(am, "TsCatchA,0.0000,0.0000,0.0000,100,!BoC_Ghoul_Pelvis,1,0.0000,0.0000,,,", "Weapons.MeleeHitEvent", 58, 1)
    MakeChar.ActEvent(am, "TsCatchA,0.0000,0.0000,0.0000,100,!BoC_Ghoul_Pelvis,1,0.0000,0.0000,,,", "Weapons.MeleeHitEvent", 60, 1)
    MakeChar.ActEvent(am, "TsCatchA,0.0000,0.0000,0.0000,100,!BoC_Ghoul_Pelvis,1,0.0000,0.0000,,,", "Weapons.MeleeHitEvent", 62, 1)
    MakeChar.ActEvent(am, "TsCatchA,0.0000,0.0000,0.0000,100,!BoC_Ghoul_Pelvis,1,0.0000,0.0000,,,", "Weapons.MeleeHitEvent", 64, 1)
    MakeChar.ActEvent(am, "TsCatchA,0.0000,0.0000,0.0000,100,!BoC_Ghoul_Pelvis,1,0.0000,0.0000,,,", "Weapons.MeleeHitEvent", 66, 1)
    MakeChar.ActEvent(am, "TsCatchA,0.0000,0.0000,0.0000,100,!BoC_Ghoul_Pelvis,1,0.0000,0.0000,,,", "Weapons.MeleeHitEvent", 68, 1)
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 64, 1)
  end
  am = ac:GetAct("WhipGhCatchThrow")
  if am ~= nil then
    MakeChar.ActEvent(am, "TsCatchA,0.0000,26.0000,-197.0000,150,,0,0.0000,0.0000,,,,1.0000", "Weapons.MeleeHitEvent", 69, 1)
    MakeChar.ActEvent(am, "-1,DestroySmallEnemy", "WeaponsCombo.DamageTarget", 69, 1)
  end
  am = ac:GetAct("WhipGlCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "10,", "WeaponsCombo.DamageEntity", 93, 1)
  end
  am = ac:GetAct("WhipGlCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 25, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 25, 0)
  end
  am = ac:GetAct("WhipLgCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 12, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 12, 0)
  end
  am = ac:GetAct("WhipLgCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 134, 1)
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 76, 1)
  end
  am = ac:GetAct("WhipLgCatchLose0")
  if am ~= nil then
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 20, 1)
  end
  am = ac:GetAct("WhipLgCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 79, 0)
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 104, 1)
  end
  am = ac:GetAct("WhipLlCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "10,", "WeaponsCombo.DamageEntity", 11, 1)
  end
  am = ac:GetAct("WhipLlCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 25, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 25, 0)
  end
  am = ac:GetAct("WhipLlCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 11, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 11, 0)
  end
  am = ac:GetAct("WhipLlCatchKick")
  if am ~= nil then
    MakeChar.ActEvent(am, "TsCatchA,0.0000,0.0000,0.0000,100,!BoC_LycanthropeLesser_Pelvis,1,0.0000,0.0000,,,", "Weapons.MeleeHitEvent", 39, 1)
    MakeChar.ActEvent(am, "TsCatchA,0.0000,0.0000,0.0000,100,!BoC_LycanthropeLesser_Pelvis,1,0.0000,0.0000,,,", "Weapons.MeleeHitEvent", 43, 1)
    MakeChar.ActEvent(am, "TsCatchA,0.0000,0.0000,0.0000,100,!BoC_LycanthropeLesser_Pelvis,1,0.0000,0.0000,,,", "Weapons.MeleeHitEvent", 47, 1)
    MakeChar.ActEvent(am, "TsCatchA,0.0000,0.0000,0.0000,100,!BoC_LycanthropeLesser_Pelvis,1,0.0000,0.0000,,,", "Weapons.MeleeHitEvent", 51, 1)
    MakeChar.ActEvent(am, "TsCatchA,0.0000,0.0000,0.0000,100,!BoC_LycanthropeLesser_Pelvis,1,0.0000,0.0000,,,", "Weapons.MeleeHitEvent", 55, 1)
    MakeChar.ActEvent(am, "-1", "WeaponsCombo.DamageTarget", 39, 1)
  end
  am = ac:GetAct("WhipLlCatchPunch")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1", "WeaponsCombo.DamageTarget", 29, 1)
  end
  am = ac:GetAct("WhipMdCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 24, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 24, 0)
  end
  am = ac:GetAct("WhipMdCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 6, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 6, 0)
  end
  am = ac:GetAct("WhipMdCatchKick")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,DestroySmallEnemy", "WeaponsCombo.DamageTarget", 44, 1)
  end
  am = ac:GetAct("WhipMdCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "10,", "WeaponsCombo.DamageEntity", 19, 1)
  end
  am = ac:GetAct("WhipMdCatchScream")
  if am ~= nil then
    MakeChar.ActEvent(am, "MandrakeScream(Small),9.0000,-24.0000,-75.0000,500,,0,0.0,0.0,MandrakeScream(Large),,,1.0000", "Weapons.MeleeHitEvent", 92, 1)
    MakeChar.ActEvent(am, "-1,DestroySmallEnemy", "WeaponsCombo.DamageTarget", 92, 1)
  end
  am = ac:GetAct("WhipMmCatch2Lose")
  if am ~= nil then
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 187, 1)
  end
  am = ac:GetAct("WhipMmCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 44, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 2, 0)
  end
  am = ac:GetAct("WhipMmCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 100, 1)
  end
  am = ac:GetAct("WhipNc1CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 11, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 9, 0)
  end
  am = ac:GetAct("WhipNc1CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.0000,0.4000,0.6000", "Weapons.VibraEvent", 62, 1)
    MakeChar.ActEvent(am, "0,0.7000,0.0,0.4000", "Weapons.VibraEvent", 126, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 226, 1)
  end
  am = ac:GetAct("WhipNc1CatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.0000,0.4000,0.6000", "Weapons.VibraEvent", 139, 1)
  end
  am = ac:GetAct("WhipNc1CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.4000,0.0,0.4000", "Weapons.VibraEvent", 92, 1)
    MakeChar.ActEvent(am, "0,0.5000,0.5000,0.6000", "Weapons.VibraEvent", 246, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 289, 1)
  end
  am = ac:GetAct("WhipNc2CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 10, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 9, 0)
  end
  am = ac:GetAct("WhipNc2CatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.5000,0.0,0.1000", "Weapons.VibraEvent", 53, 1)
    MakeChar.ActEvent(am, "0,0.0,0.2000,0.7000", "Weapons.VibraEvent", 76, 1)
    MakeChar.ActEvent(am, "0,0.7000,0.0,0.4000", "Weapons.VibraEvent", 89, 1)
  end
  am = ac:GetAct("WhipNc2CatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.0,0.3000,1.6000", "Weapons.VibraEvent", 169, 1)
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageEntity", 201, 0)
  end
  am = ac:GetAct("WhipNc2CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.4000,0.0,0.4000", "Weapons.VibraEvent", 92, 1)
    MakeChar.ActEvent(am, "0,0.5000,0.5000,0.7000", "Weapons.VibraEvent", 159, 1)
  end
  am = ac:GetAct("WhipNc2CatchWin2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 390, 1)
  end
  am = ac:GetAct("WhipPullBridgeLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 19, 1)
  end
  am = ac:GetAct("WhipPullBridgeWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 73, 1)
  end
  am = ac:GetAct("WhipPullGenericLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 31, 1)
  end
  am = ac:GetAct("WhipPullGenericWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 79, 1)
  end
  am = ac:GetAct("WhipPullPlankBLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 30, 1)
  end
  am = ac:GetAct("WhipPullPlankBWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 78, 1)
  end
  am = ac:GetAct("WhipPullPlankLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 32, 1)
  end
  am = ac:GetAct("WhipPullPlankWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 78, 1)
  end
  am = ac:GetAct("WhipRaceComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "A(Small),A(Average),A(Large),A(Giant)", "WeaponsWhip.BeginDamage", 3, 1)
    MakeChar.ActEvent(am, "WhipComboDDhInit,-1,-1,0,0,WhipComboAh,0", "WeaponsCombo.LaunchActionIfHold", 14, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 13, 0)
    for i = 3, 13 do
      am:AddHitCheck(ac:GetAct("WhipRaceComboA")["TimeOfFrame" .. i], 1, 1, -1, 1, 2)
    end
  end
  am = ac:GetAct("WhipRaceComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "D(Small),D(Average),D(Large),D(Giant)", "WeaponsWhip.BeginDamage", 6, 1)
    MakeChar.ActEvent(am, "WhipComboDrD,-1,-1,0,0,WhipComboDrD,0", "WeaponsCombo.LaunchActionIfHold", 11, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 11, 0)
    for i = 6, 11 do
      am:AddHitCheck(ac:GetAct("WhipRaceComboD")["TimeOfFrame" .. i], 2, 1, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipRgCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 24, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 19, 0)
  end
  am = ac:GetAct("WhipRgCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 76, 1)
  end
  am = ac:GetAct("WhipRgCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 65, 1)
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 10, 1)
  end
  am = ac:GetAct("WhipRgCatchWin2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 308, 1)
  end
  am = ac:GetAct("WhipSMCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 100, 1)
    MakeChar.ActEvent(am, "20,", "WeaponsCombo.DamageEntity", 48, 1)
  end
  am = ac:GetAct("WhipSMCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 137, 1)
  end
  am = ac:GetAct("WhipScCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 13, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 13, 0)
  end
  am = ac:GetAct("WhipScCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 132, 1)
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 95, 1)
  end
  am = ac:GetAct("WhipScCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 115, 1)
  end
  am = ac:GetAct("WhipScCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 18, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 17, 0)
  end
  am = ac:GetAct("WhipScCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 125, 1)
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 53, 1)
  end
  am = ac:GetAct("WhipScCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 96, 1)
  end
  am = ac:GetAct("WhipSgCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 14, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 9, 0)
  end
  am = ac:GetAct("WhipSgCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 132, 1)
    MakeChar.ActEvent(am, "20,", "WeaponsCombo.DamageEntity", 13, 1)
    MakeChar.ActEvent(am, "20,", "WeaponsCombo.DamageEntity", 60, 1)
  end
  am = ac:GetAct("WhipSgCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 229, 1)
  end
  am = ac:GetAct("WhipSgRideEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 36, 1)
  end
  am = ac:GetAct("WhipSgRideFail")
  if am ~= nil then
    MakeChar.ActEvent(am, "25", "WeaponsCombo.DamageEntity", 53, 1)
  end
  am = ac:GetAct("WhipSgRideFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 55, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 55, 0)
  end
  am = ac:GetAct("WhipSgRideInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 8, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 8, 0)
  end
  am = ac:GetAct("WhipSmCatch")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 29, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 29, 0)
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 34, 1)
  end
  am = ac:GetAct("WhipSmFailInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 17, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 17, 0)
    MakeChar.ActEvent(am, "20,", "WeaponsCombo.DamageEntity", 35, 1)
  end
  am = ac:GetAct("WhipSprint")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.2000,0.2000,0.0500", "Weapons.VibraEvent", 9, 1)
    MakeChar.ActEvent(am, "0,0.2000,0.2000,0.0500", "Weapons.VibraEvent", 18, 1)
  end
  am = ac:GetAct("WhipSprintComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "AAA(Small),AAA(Average),AAA(Large),AAA(Giant)", "WeaponsWhip.BeginDamage", 3, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 11, 0)
    for i = 3, 11 do
      am:AddHitCheck(ac:GetAct("WhipSprintComboA")["TimeOfFrame" .. i], 2, 1, 1, 1, 2)
    end
  end
  am = ac:GetAct("WhipSprintComboDDark")
  if am ~= nil then
    MakeChar.ActEvent(am, "4000,40.0000,1500.0000,DarkClaw(Small),2.0000,0,DarkClaw(Average),DarkClaw(Large),,0.0,0.0,0.0,0.0", "WeaponsAttacks.EventLaunchWave", 17, 1)
  end
  am = ac:GetAct("WhipSprintInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.2000,0.2000,0.0500", "Weapons.VibraEvent", 6, 1)
  end
  am = ac:GetAct("WhipStunnedEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 75, 1)
  end
  am = ac:GetAct("WhipSwCatch2Init")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 22, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 22, 0)
  end
  am = ac:GetAct("WhipSwCatch2Lose")
  if am ~= nil then
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 19, 1)
  end
  am = ac:GetAct("WhipSwCatch2Lose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 57, 1)
  end
  am = ac:GetAct("WhipSwCatch2Lose3")
  if am ~= nil then
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 141, 1)
  end
  am = ac:GetAct("WhipSwCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 11, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 11, 0)
  end
  am = ac:GetAct("WhipSwCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 232, 1)
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 172, 1)
  end
  am = ac:GetAct("WhipSwCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "80,", "WeaponsCombo.DamageEntity", 33, 1)
  end
  am = ac:GetAct("WhipSwCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 237, 1)
  end
  am = ac:GetAct("WhipSyncComboA")
  if am ~= nil then
    MakeChar.ActEvent(am, "SyncA(Small),SyncA(Average),SyncA(Large),", "WeaponsWhip.BeginDamage", 10, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 20, 0)
    for i = 10, 20 do
      am:AddHitCheck(ac:GetAct("WhipSyncComboA")["TimeOfFrame" .. i], 1, 1, -1, -1, 0)
    end
  end
  am = ac:GetAct("WhipSyncComboAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "SyncA(Small),SyncA(Average),SyncA(Large),", "WeaponsWhip.BeginDamage", 16, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 33, 1)
    for i = 16, 33 do
      am:AddHitCheck(ac:GetAct("WhipSyncComboAA")["TimeOfFrame" .. i], 1, 1, -1, -1, 0)
    end
  end
  am = ac:GetAct("WhipSyncComboAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "SyncAA(Small),SyncAA(Average),SyncAA(Large),", "WeaponsWhip.BeginDamage", 41, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 56, 0)
    for i = 41, 56 do
      am:AddHitCheck(ac:GetAct("WhipSyncComboAAA")["TimeOfFrame" .. i], 2, 1, 1, 1, 0)
    end
  end
  am = ac:GetAct("WhipSyncComboAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "SyncAA(Small),SyncAA(Average),SyncAA(Large),", "WeaponsWhip.BeginDamage", 49, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 68, 0)
    for i = 49, 68 do
      am:AddHitCheck(ac:GetAct("WhipSyncComboAAAA")["TimeOfFrame" .. i], 2, 1, 1, 1, 0)
    end
  end
  am = ac:GetAct("WhipSyncComboAAAAA")
  if am ~= nil then
    MakeChar.ActEvent(am, "SyncAAA(Small),SyncAAA(Average),SyncAAA(Large),", "WeaponsWhip.BeginDamage", 62, 1)
    MakeChar.ActEvent(am, "3200,200,1200,0.0,-126.0000,0.0,SyncAWave(Small),SyncAWave(Average),SyncAWave(Large),,FALSE", "WeaponsAttacks.EventLaunchCircularWave", 67, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 77, 0)
    for i = 62, 77 do
      am:AddHitCheck(ac:GetAct("WhipSyncComboAAAAA")["TimeOfFrame" .. i], 3, 2, 2, 2, 0)
    end
  end
  am = ac:GetAct("WhipSyncComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "SyncD(Average),SyncD(Large),SyncD(Small),", "WeaponsWhip.BeginDamage", 5, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 13, 1)
    for i = 5, 13 do
      am:AddHitCheck(ac:GetAct("WhipSyncComboD")["TimeOfFrame" .. i], 2, 1, 1, 1, 1)
    end
  end
  am = ac:GetAct("WhipSyncComboDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "SyncDD(Small),SyncDD(Average),SyncDD(Large),", "WeaponsWhip.BeginDamage", 12, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 22, 1)
    for i = 12, 22 do
      am:AddHitCheck(ac:GetAct("WhipSyncComboDD")["TimeOfFrame" .. i], 2, 2, 2, 2, 1)
    end
  end
  am = ac:GetAct("WhipSyncComboDDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "SyncDDD(Small),SyncDDD(Average),SyncDDD(Large),", "WeaponsWhip.BeginDamage", 37, 1)
    MakeChar.ActEvent(am, "", "WeaponsWhip.EndDamage", 49, 1)
    for i = 37, 49 do
      am:AddHitCheck(ac:GetAct("WhipSyncComboDDD")["TimeOfFrame" .. i], 3, 3, 2, 2, 1)
    end
  end
  am = ac:GetAct("WhipTbCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 23, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 13, 0)
  end
  am = ac:GetAct("WhipTbCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "60,", "WeaponsCombo.DamageEntity", 83, 1)
  end
  am = ac:GetAct("WhipTbCatchLose1")
  if am ~= nil then
    MakeChar.ActEvent(am, "60,", "WeaponsCombo.DamageEntity", 130, 1)
  end
  am = ac:GetAct("WhipTbCatchLose2")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 484, 1)
    MakeChar.ActEvent(am, "60,", "WeaponsCombo.DamageEntity", 399, 1)
  end
  am = ac:GetAct("WhipTbCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 333, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 366, 1)
  end
  am = ac:GetAct("WhipTbFailFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 42, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 32, 0)
    MakeChar.ActEvent(am, "10", "WeaponsCombo.DamageEntity", 42, 1)
  end
  am = ac:GetAct("WhipTbRideEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 134, 1)
  end
  am = ac:GetAct("WhipTbRideFail")
  if am ~= nil then
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 25, 1)
  end
  am = ac:GetAct("WhipTbRideFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 56, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 53, 0)
  end
  am = ac:GetAct("WhipTbRideInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 54, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 54, 0)
  end
  am = ac:GetAct("WhipThrowDaggerEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "6000.0002,10.0000,6500.0002,27.0000,4400.0999,55.0000,3000.0000,90.0000,2200.0001", "WeaponsDagger.ThrowDagger", 47, 1)
  end
  am = ac:GetAct("WhipThrowDaggerInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "1", "WeaponsCombo.ChargeDagger", 0, 1)
    MakeChar.ActEvent(am, "2", "WeaponsCombo.ChargeDagger", 13, 1)
    MakeChar.ActEvent(am, "3", "WeaponsCombo.ChargeDagger", 23, 1)
    MakeChar.ActEvent(am, "4", "WeaponsCombo.ChargeDagger", 33, 1)
    MakeChar.ActEvent(am, "5", "WeaponsCombo.ChargeDagger", 43, 1)
  end
  am = ac:GetAct("WhipThrowFairy")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventSwitchFairies", 10, 0)
  end
  am = ac:GetAct("WhipThrowVial")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsVial.ThrowVial", 12, 1)
  end
  am = ac:GetAct("WhipThrowVialLM")
  if am ~= nil then
    MakeChar.ActEvent(am, "1750,200,1500,0.0000,-132.0000,0.0,Vial,,,,FALSE,FALSE", "WeaponsAttacks.EventLaunchCircularWave", 22, 1)
    MakeChar.ActEvent(am, "", "WeaponsVial.LaunchProtectiveVial", 22, 1)
  end
  am = ac:GetAct("WhipTombInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 17, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 6, 1)
  end
  am = ac:GetAct("WhipTombLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 187, 1)
  end
  am = ac:GetAct("WhipTombOpen")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 18, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 7, 1)
  end
  am = ac:GetAct("WhipTsCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "10,", "WeaponsCombo.DamageEntity", 91, 1)
  end
  am = ac:GetAct("WhipTsCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 23, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 23, 0)
  end
  am = ac:GetAct("WhipTsCatchHitA")
  if am ~= nil then
    MakeChar.ActEvent(am, "TsCatchA,0,0,0,100,!BoC_TrollSmall_Cuello,1,0.0,0.0,,,", "Weapons.MeleeHitEvent", 12, 1)
    MakeChar.ActEvent(am, "TsCatchA,0,0,0,100,!BoC_TrollSmall_Cuello,1,0.0,0.0,,,", "Weapons.MeleeHitEvent", 15, 1)
    MakeChar.ActEvent(am, "TsCatchA,0,0,0,100,!BoC_TrollSmall_Cuello,1,0.0,0.0,,,", "Weapons.MeleeHitEvent", 18, 1)
    MakeChar.ActEvent(am, "TsCatchA,0,0,0,100,!BoC_TrollSmall_Cuello,1,0.0,0.0,,,", "Weapons.MeleeHitEvent", 20, 1)
    MakeChar.ActEvent(am, "TsCatchA,0,0,0,100,!BoC_TrollSmall_Cuello,1,0.0,0.0,,,", "Weapons.MeleeHitEvent", 24, 1)
    MakeChar.ActEvent(am, "TsCatchA,0,0,0,100,!BoC_TrollSmall_Cuello,1,0.0,0.0,,,", "Weapons.MeleeHitEvent", 26, 1)
    MakeChar.ActEvent(am, "TsCatchA,0,0,0,100,!BoC_TrollSmall_Cuello,1,0.0,0.0,,,", "Weapons.MeleeHitEvent", 30, 1)
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 18, 1)
  end
  am = ac:GetAct("WhipTsCatchHitD")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,DestroySmallEnemy", "WeaponsCombo.DamageTarget", 48, 1)
  end
  am = ac:GetAct("WhipTsCatchHitK")
  if am ~= nil then
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_TrollSmall_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 12, 1)
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_TrollSmall_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 15, 1)
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_TrollSmall_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 18, 1)
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_TrollSmall_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 20, 1)
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_TrollSmall_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 24, 1)
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_TrollSmall_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 26, 1)
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_TrollSmall_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 30, 1)
    MakeChar.ActEvent(am, "-1", "WeaponsCombo.DamageTarget", 18, 1)
  end
  am = ac:GetAct("WhipTsCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 11, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 11, 0)
  end
  am = ac:GetAct("WhipVwCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 6, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 6, 0)
  end
  am = ac:GetAct("WhipVwCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "20,", "WeaponsCombo.DamageEntity", 59, 1)
  end
  am = ac:GetAct("WhipVwCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 28, 1)
  end
  am = ac:GetAct("WhipVwCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 6, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 5, 0)
  end
  am = ac:GetAct("WhipVwCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 175, 1)
  end
  am = ac:GetAct("WhipVwCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 124, 1)
  end
  am = ac:GetAct("WhipWcCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 16, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 16, 0)
  end
  am = ac:GetAct("WhipWcCatchLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "20,", "WeaponsCombo.DamageEntity", 3, 1)
  end
  am = ac:GetAct("WhipWgCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 11, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 11, 0)
  end
  am = ac:GetAct("WhipWgCatchedLose")
  if am ~= nil then
    MakeChar.ActEvent(am, "0,0.5000,0.5000,0.1000", "Weapons.VibraEvent", 15, 1)
    MakeChar.ActEvent(am, "0,0.4000,0.4000,0.2000", "Weapons.VibraEvent", 33, 1)
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 67, 1)
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 12, 1)
  end
  am = ac:GetAct("WhipWgCatchedWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "WeaponsCombo.EventClearBuffer", 51, 1)
  end
  am = ac:GetAct("WhipWgRideEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 31, 1)
  end
  am = ac:GetAct("WhipWgRideFail")
  if am ~= nil then
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 27, 1)
  end
  am = ac:GetAct("WhipWgRideFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 17, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 15, 0)
  end
  am = ac:GetAct("WhipWgRideInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 20, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 14, 0)
  end
  am = ac:GetAct("WhipWtRideEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 26, 1)
  end
  am = ac:GetAct("WhipWtRideFail")
  if am ~= nil then
    MakeChar.ActEvent(am, "40,", "WeaponsCombo.DamageEntity", 27, 1)
  end
  am = ac:GetAct("WhipWtRideFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 59, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 24, 0)
  end
  am = ac:GetAct("WhipWtRideInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 14, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 14, 0)
  end
  am = ac:GetAct("WhipZbCatchEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "20,", "WeaponsCombo.DamageEntity", 105, 1)
  end
  am = ac:GetAct("WhipZbCatchHead")
  if am ~= nil then
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 17, 1)
  end
  am = ac:GetAct("WhipZbCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "NeutralEnergy.EventDeactivateMagic", 16, 0)
    MakeChar.ActEvent(am, "", "WeaponsVial.EndVialProtection", 16, 0)
  end
  am = ac:GetAct("WhipZbCatchThrow")
  if am ~= nil then
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_Zombie_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 23, 1)
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_Zombie_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 24, 1)
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_Zombie_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 25, 1)
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_Zombie_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 26, 1)
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_Zombie_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 27, 1)
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_Zombie_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 29, 1)
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_Zombie_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 31, 1)
    MakeChar.ActEvent(am, "TsCatchK,0,0,0,100,!BoC_Zombie_Cuello,1,0,0,,,,0", "Weapons.MeleeHitEvent", 32, 1)
    MakeChar.ActEvent(am, "-1,", "WeaponsCombo.DamageTarget", 17, 1)
  end
end
