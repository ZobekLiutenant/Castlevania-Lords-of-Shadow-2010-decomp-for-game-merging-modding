function ScorerPos.main()
  local o
  
  o = Scorer.GetScorerPos("TurnStick")
  if o then
    o.LocalPos = V2D(0, -46)
    o.AlignX = "center"
    o.AlignY = "down"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 25
  end
  o = Scorer.GetScorerPos("PanCartridgeFirstRune")
  if o then
    o.LocalPos = V2D(-20.5, -54)
    o.AlignX = "right"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 8
  end
  o = Scorer.GetScorerPos("PanCartridge")
  if o then
    o.LocalPos = V2D(-43.5, -113)
    o.AlignX = "right"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 2
  end
  o = Scorer.GetScorerPos("PanFifthRune")
  if o then
    o.LocalPos = V2D(103, -111)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 7
  end
  o = Scorer.GetScorerPos("PanFourthRune")
  if o then
    o.LocalPos = V2D(39.5, -143)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 6
  end
  o = Scorer.GetScorerPos("PanThirdRune")
  if o then
    o.LocalPos = V2D(-27, -156)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 5
  end
  o = Scorer.GetScorerPos("PanSecondRune")
  if o then
    o.LocalPos = V2D(-94, -142.5)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 4
  end
  o = Scorer.GetScorerPos("PanFirstRune")
  if o then
    o.LocalPos = V2D(-157.5, -111)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 3
  end
  o = Scorer.GetScorerPos("PanMain")
  if o then
    o.LocalPos = V2D(-208.5, -174.5)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 1
  end
  o = Scorer.GetScorerPos("BossLifeShining")
  if o then
    o.LocalPos = V2D(22.5, 9.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 2
  end
  o = Scorer.GetScorerPos("BossLifeFrame")
  if o then
    o.LocalPos = V2D(-176.5, -11.5)
    o.AlignX = "right"
    o.AlignY = "up"
    o.BmpFile = "HUDBossLife"
    o.BmpIdx = 8
  end
  o = Scorer.GetScorerPos("BuyComboIconGlow")
  if o then
    o.LocalPos = V2D(0, 0)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 31
  end
  o = Scorer.GetScorerPos("BuyComboIcon")
  if o then
    o.LocalPos = V2D(60.5, 45.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 14
  end
  o = Scorer.GetScorerPos("TravelBookGlow")
  if o then
    o.LocalPos = V2D(0, 0)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 38
  end
  o = Scorer.GetScorerPos("TravelBook")
  if o then
    o.LocalPos = V2D(0, 0)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 37
  end
  o = Scorer.GetScorerPos("CristalSmallNoAmmo")
  if o then
    o.LocalPos = V2D(-21.5, 46.5)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 22
  end
  o = Scorer.GetScorerPos("CristalSmallNormalSelected")
  if o then
    o.LocalPos = V2D(-24, 44.5)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 27
  end
  o = Scorer.GetScorerPos("CristalSmallNormalUnselected")
  if o then
    o.LocalPos = V2D(-23, 45.5)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 12
  end
  o = Scorer.GetScorerPos("FairySmallNoAmmo")
  if o then
    o.LocalPos = V2D(-0.5, 25)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 21
  end
  o = Scorer.GetScorerPos("FairySmallMagicSelected")
  if o then
    o.LocalPos = V2D(-3, 23.5)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 32
  end
  o = Scorer.GetScorerPos("FairySmallNormalSelected")
  if o then
    o.LocalPos = V2D(-3, 23.5)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 9
  end
  o = Scorer.GetScorerPos("FairySmallMagicUnselected")
  if o then
    o.LocalPos = V2D(0, 25)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 38
  end
  o = Scorer.GetScorerPos("FairySmallNormalUnselected")
  if o then
    o.LocalPos = V2D(-0.5, 25)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 61
  end
  o = Scorer.GetScorerPos("VialSmallNoAmmo")
  if o then
    o.LocalPos = V2D(-0.5, 67.5)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 20
  end
  o = Scorer.GetScorerPos("VialSmallMagicSelected")
  if o then
    o.LocalPos = V2D(-3, 66)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 36
  end
  o = Scorer.GetScorerPos("VialSmallNormalSelected")
  if o then
    o.LocalPos = V2D(-3, 66)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 29
  end
  o = Scorer.GetScorerPos("VialSmallMagicUnselected")
  if o then
    o.LocalPos = V2D(-0.5, 67)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 37
  end
  o = Scorer.GetScorerPos("VialSmallNormalUnselected")
  if o then
    o.LocalPos = V2D(-0.5, 67)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 13
  end
  o = Scorer.GetScorerPos("DaggerSmallMagicSelected")
  if o then
    o.LocalPos = V2D(19, 44)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 35
  end
  o = Scorer.GetScorerPos("DaggerSmallNormalSelected")
  if o then
    o.LocalPos = V2D(19, 44)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 11
  end
  o = Scorer.GetScorerPos("DaggerSmallMagicUnselected")
  if o then
    o.LocalPos = V2D(20.5, 45.5)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 47
  end
  o = Scorer.GetScorerPos("DaggerSmallNormalUnselected")
  if o then
    o.LocalPos = V2D(20, 45.5)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 30
  end
  o = Scorer.GetScorerPos("CristalFrame")
  if o then
    o.LocalPos = V2D(-27, 42)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 28
  end
  o = Scorer.GetScorerPos("DaggerFrame")
  if o then
    o.LocalPos = V2D(16.5, 41.5)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 26
  end
  o = Scorer.GetScorerPos("VialFrame")
  if o then
    o.LocalPos = V2D(-5.5, 63.5)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 19
  end
  o = Scorer.GetScorerPos("FairyFrame")
  if o then
    o.LocalPos = V2D(-5.5, 21)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 10
  end
  o = Scorer.GetScorerPos("BigFlame")
  if o then
    o.LocalPos = V2D(29.5, 54.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 25
  end
  o = Scorer.GetScorerPos("BigFrameVial")
  if o then
    o.LocalPos = V2D(29, 59.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 43
  end
  o = Scorer.GetScorerPos("CristalFirstPiece")
  if o then
    o.LocalPos = V2D(0, 0)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 49
  end
  o = Scorer.GetScorerPos("CristalGlowSmall")
  if o then
    o.LocalPos = V2D(0, 0)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 114
  end
  o = Scorer.GetScorerPos("CristalGlow")
  if o then
    o.LocalPos = V2D(0, 0)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 45
  end
  o = Scorer.GetScorerPos("CristalCharged")
  if o then
    o.LocalPos = V2D(0, 0)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 46
  end
  o = Scorer.GetScorerPos("CristalGray")
  if o then
    o.LocalPos = V2D(32, 56)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 48
  end
  o = Scorer.GetScorerPos("DaggerBigMagic")
  if o then
    o.LocalPos = V2D(0, 0)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 60
  end
  o = Scorer.GetScorerPos("DaggerBig")
  if o then
    o.LocalPos = V2D(34.5, 58.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 23
  end
  o = Scorer.GetScorerPos("DaggerGrayBig")
  if o then
    o.LocalPos = V2D(13, 0)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 54
  end
  o = Scorer.GetScorerPos("VialGreyBig")
  if o then
    o.LocalPos = V2D(32.5, 59.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 56
  end
  o = Scorer.GetScorerPos("VialBig")
  if o then
    o.LocalPos = V2D(-35.5, -120)
    o.AlignX = "left"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 24
  end
  o = Scorer.GetScorerPos("FairyDead")
  if o then
    o.LocalPos = V2D(43.5, 72.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 113
  end
  o = Scorer.GetScorerPos("FairyBigMagic")
  if o then
    o.LocalPos = V2D(1.5, 0)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 62
  end
  o = Scorer.GetScorerPos("FairyBigNormal")
  if o then
    o.LocalPos = V2D(0, 0)
    o.AlignX = "center"
    o.AlignY = "center"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 63
  end
  o = Scorer.GetScorerPos("FairyBigGray")
  if o then
    o.LocalPos = V2D(33, 60.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 33
  end
  o = Scorer.GetScorerPos("WeaponsGrayCircle")
  if o then
    o.LocalPos = V2D(22, 51)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 16
  end
  o = Scorer.GetScorerPos("DarkMagicHead")
  if o then
    o.LocalPos = V2D(25.75, -1)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 18
  end
  o = Scorer.GetScorerPos("DarkMagicShining")
  if o then
    o.LocalPos = V2D(35, 16)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 40
  end
  o = Scorer.GetScorerPos("DarkMagicBarMask")
  if o then
    o.LocalPos = V2D(36, 30.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 0
  end
  o = Scorer.GetScorerPos("DarkMagicBar")
  if o then
    o.LocalPos = V2D(53.5, 22)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 8
  end
  o = Scorer.GetScorerPos("DarkMagicBarHide")
  if o then
    o.LocalPos = V2D(36, 28.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 41
  end
  o = Scorer.GetScorerPos("DarkMagicFrame")
  if o then
    o.LocalPos = V2D(-46.5, -117)
    o.AlignX = "right"
    o.AlignY = "down"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 6
  end
  o = Scorer.GetScorerPos("LightMagicHead")
  if o then
    o.LocalPos = V2D(4, -1)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 17
  end
  o = Scorer.GetScorerPos("LightMagicShining")
  if o then
    o.LocalPos = V2D(13, 11)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 34
  end
  o = Scorer.GetScorerPos("LightMagicBarMask")
  if o then
    o.LocalPos = V2D(16.5, 25.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 0
  end
  o = Scorer.GetScorerPos("LightMagicBar")
  if o then
    o.LocalPos = V2D(0, 0)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 7
  end
  o = Scorer.GetScorerPos("LightMagicBarHide")
  if o then
    o.LocalPos = V2D(16, 24.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 39
  end
  o = Scorer.GetScorerPos("LightMagicFrame")
  if o then
    o.LocalPos = V2D(-14, -113)
    o.AlignX = "left"
    o.AlignY = "down"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 5
  end
  o = Scorer.GetScorerPos("LifeHead")
  if o then
    o.LocalPos = V2D(9, 9)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 104
  end
  o = Scorer.GetScorerPos("LifeShining")
  if o then
    o.LocalPos = V2D(33, 17)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 4
  end
  o = Scorer.GetScorerPos("LifeBarMask")
  if o then
    o.LocalPos = V2D(36.5, 18.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 0
  end
  o = Scorer.GetScorerPos("LifeBarHide")
  if o then
    o.LocalPos = V2D(36.5, 18.5)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 7
  end
  o = Scorer.GetScorerPos("LifeBar")
  if o then
    o.LocalPos = V2D(0, -8)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 3
  end
  o = Scorer.GetScorerPos("LifeFrame")
  if o then
    o.LocalPos = V2D(-14, -18.5)
    o.AlignX = "left"
    o.AlignY = "up"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 1
  end
  o = Scorer.GetScorerPos("LifeBack")
  if o then
    o.LocalPos = V2D(-27, -27)
    o.AlignX = "none"
    o.AlignY = "none"
    o.BmpFile = "HUDmgPath"
    o.BmpIdx = 1
  end
  o = Scorer.GetScorerPos("FocusScorerPos")
  if o then
    o.LocalPos = V2D(0, -3)
    o.AlignX = "center"
    o.AlignY = "down"
    o.BmpFile = "HUDPath2"
    o.BmpIdx = 1
  end
end
