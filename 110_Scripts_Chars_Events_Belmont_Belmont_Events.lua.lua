function Belmont_Events.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("CrossOneSelf")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnItemGripEvent", "Belmont.CallbackCaller", 67, 1)
    MakeChar.ActEvent(am, "CollectableItems.OnItemStoreEvent", "Belmont.CallbackCaller", 102, 0)
  end
  am = ac:GetAct("Gear")
  if am ~= nil then
    MakeChar.ActEvent(am, "MecanismoPalanca.DoTurn", "Belmont.CallbackCaller", 55, 1)
  end
  am = ac:GetAct("GearWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "MecanismoPalanca.DoTurn", "Belmont.CallbackCaller", 55, 1)
  end
  am = ac:GetAct("PlaceCrystal")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnItemRelease", "Belmont.CallbackCaller", 33, 1)
    MakeChar.ActEvent(am, "CollectableItems.OnPlaceEnd", "Belmont.CallbackCaller", 90, 0)
  end
  am = ac:GetAct("TakeCrystal")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnItemGripEvent", "Belmont.CallbackCaller", 1, 1)
    MakeChar.ActEvent(am, "CollectableItems.OnItemStoreEvent", "Belmont.CallbackCaller", 30, 0)
  end
  am = ac:GetAct("TakeFlower")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnItemGripEvent", "Belmont.CallbackCaller", 1, 1)
    MakeChar.ActEvent(am, "CollectableItems.OnItemStoreEvent", "Belmont.CallbackCaller", 24, 0)
  end
  am = ac:GetAct("TakeFreeGem")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnFreeGemGrabbed", "Belmont.CallbackCaller", 37, 0)
  end
  am = ac:GetAct("TakeGem")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnItemGripEvent", "Belmont.CallbackCaller", 1, 1)
    MakeChar.ActEvent(am, "CollectableItems.OnItemStoreEvent", "Belmont.CallbackCaller", 37, 0)
  end
  am = ac:GetAct("TakeWater")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnFountainTouch", "Belmont.CallbackCaller", 24, 1)
    MakeChar.ActEvent(am, "CollectableItems.OnEndFountainTouch", "Belmont.CallbackCaller", 66, 0)
  end
  am = ac:GetAct("WhipBlockComboAInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "WhipBlockComboAEnd,BlockA4(Average),BlockA4(Large),BlockA4(Small),", "Belmont.DarkQuickCharge", 2, 1)
  end
  am = ac:GetAct("WhipBlockComboDEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "Belmont.BrutalAim", 35, 1)
  end
  am = ac:GetAct("WhipBlockComboDInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "WhipBlockComboDEnd,BlockD4(Average),BlockD4(Large),BlockD4(Small),", "Belmont.DarkQuickCharge", 3, 1)
  end
  am = ac:GetAct("WhipBlockComboJInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "WhipBlockComboUppercut,UpperCut3(Small),UpperCut3(Large),,", "Belmont.DarkQuickCharge", 6, 1)
  end
  am = ac:GetAct("WhipComboAJJ")
  if am ~= nil then
    MakeChar.ActEvent(am, "1", "Belmont.SetDoubleJumpCounter", 7, 1)
  end
  am = ac:GetAct("WhipComboAhAAlt")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "Belmont.BrutalAim", 5, 1)
  end
  am = ac:GetAct("WhipComboD")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "Belmont.BrutalAim", 6, 1)
  end
  am = ac:GetAct("WhipComboDD")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "Belmont.BrutalAim", 6, 1)
  end
  am = ac:GetAct("WhipComboDJ")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "Belmont.BrutalAim", 13, 1)
  end
  am = ac:GetAct("WhipComboDJJ")
  if am ~= nil then
    MakeChar.ActEvent(am, "1", "Belmont.SetDoubleJumpCounter", 4, 1)
  end
  am = ac:GetAct("WhipComboDhDAlt")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "Belmont.BrutalAim", 6, 1)
  end
  am = ac:GetAct("WhipCrossOneSelf")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnItemGripEvent", "Belmont.CallbackCaller", 67, 1)
    MakeChar.ActEvent(am, "CollectableItems.OnItemStoreEvent", "Belmont.CallbackCaller", 102, 0)
  end
  am = ac:GetAct("WhipFallBlockComboAInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "WhipFallBlockComboAEnd,FallBlockA(Large),FallBlockA(Small),,", "Belmont.DarkQuickCharge", 1, 1)
  end
  am = ac:GetAct("WhipFallBlockComboDInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "WhipFallBlockComboDEnd,BlockA4(Average),BlockA4(Large),BlockA4(Small),", "Belmont.DarkQuickCharge", 1, 1)
  end
  am = ac:GetAct("WhipFallComboKInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "WhipFallComboKEnd", "Belmont.EventAvoidMultipleDaggers", 2, 1)
  end
  am = ac:GetAct("WhipGlCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "Belmont.BrutalAim", 4, 1)
  end
  am = ac:GetAct("WhipPlaceCrystal")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnItemRelease", "Belmont.CallbackCaller", 33, 1)
    MakeChar.ActEvent(am, "CollectableItems.OnPlaceEnd", "Belmont.CallbackCaller", 90, 0)
  end
  am = ac:GetAct("WhipTakeCrystal")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnItemGripEvent", "Belmont.CallbackCaller", 1, 1)
    MakeChar.ActEvent(am, "CollectableItems.OnItemStoreEvent", "Belmont.CallbackCaller", 30, 0)
  end
  am = ac:GetAct("WhipTakeFlower")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnItemGripEvent", "Belmont.CallbackCaller", 1, 1)
    MakeChar.ActEvent(am, "CollectableItems.OnItemStoreEvent", "Belmont.CallbackCaller", 30, 0)
  end
  am = ac:GetAct("WhipTakeFreeGem")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnFreeGemGrabbed", "Belmont.CallbackCaller", 42, 0)
  end
  am = ac:GetAct("WhipTakeGem")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnItemGripEvent", "Belmont.CallbackCaller", 1, 1)
    MakeChar.ActEvent(am, "CollectableItems.OnItemStoreEvent", "Belmont.CallbackCaller", 42, 0)
  end
  am = ac:GetAct("WhipTakeWater")
  if am ~= nil then
    MakeChar.ActEvent(am, "CollectableItems.OnFountainTouch", "Belmont.CallbackCaller", 23, 1)
    MakeChar.ActEvent(am, "CollectableItems.OnEndFountainTouch", "Belmont.CallbackCaller", 62, 0)
  end
  am = ac:GetAct("WhipThrowDaggerEnd")
  if am ~= nil then
    MakeChar.ActEvent(am, "", "Belmont.BrutalAim", 46, 1)
  end
  am = ac:GetAct("WhipThrowDaggerInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "WhipThrowDaggerEnd", "Belmont.EventAvoidMultipleDaggers", 3, 1)
  end
end
