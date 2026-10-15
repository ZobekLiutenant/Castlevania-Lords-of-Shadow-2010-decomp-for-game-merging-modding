if init == nil then
  return
end
TravelBookItems = {}
TravelBookItems.BackgroundColorDark = Color(38, 77, 147)
TravelBookItems.TextColor = Color(63, 47, 26)
TravelBookItems.ItemSets = {
  TabNavigation = {
    "MainLButtonIcon",
    "MainRButtonIcon",
    "LButtonText",
    "RButtonText"
  },
  ActionsMenu = {
    "ActionsTitle",
    "BasicActions",
    "AdvancedMoves",
    "SecondaryWeapons",
    "Mounts",
    "RelicPowers",
    "LaurasMoves",
    "AvailablePointsFrameText",
    "ScrollListTitle",
    "AvailablePointsFrameCurrencyIcon"
  },
  ActionsRightMenu = {
    "AvailablePointsFrameText",
    "ScrollListTitle",
    "AvailablePointsFrameCurrencyIcon"
  },
  ActionsAdornments = {
    "ItemAdornment75",
    "ItemAdornment76",
    "ItemAdornment77",
    "ItemAdornment78",
    "ItemAdornment79",
    "ItemAdornment80",
    "ItemAdornment81",
    "ItemAdornment82",
    "ItemAdornment83",
    "ItemAdornment140",
    "ItemAdornment141",
    "ItemAdornment144",
    "ItemAdornment145",
    "ItemAdornment148",
    "ItemAdornment149",
    "ItemAdornment150",
    "ItemAdornment151"
  },
  CharsMenu = {
    "CharsTitle",
    "MainCharsText",
    "MonstersText"
  },
  CharsAdornments = {
    "ItemAdornment90",
    "ItemAdornment91",
    "ItemAdornment92",
    "ItemAdornment93",
    "ItemAdornment94",
    "ItemAdornment95",
    "ItemAdornment96",
    "ItemAdornment97",
    "ItemAdornment98",
    "ItemAdornment99",
    "ItemAdornment100",
    "ItemAdornment101",
    "ItemAdornment102",
    "ItemAdornment103",
    "ItemAdornment104"
  },
  ItemsMenu = {
    "ItemsTitle",
    "ItemCompassRose",
    "DaggerImage",
    "FairiesImage",
    "CrystalsImage",
    "VialsImage",
    "DaggerQuantity",
    "FairiesQuantity",
    "VialsQuantity",
    "CrystalPiece1",
    "CrystalPiece2",
    "CrystalPiece3",
    "CrystalPieceFull",
    "WingsImage",
    "BootsImage",
    "GauntletImage",
    "Scroll1Image",
    "Scroll2Image",
    "Scroll3Image",
    "Scroll4Image",
    "CrossHookImage",
    "CrossChainImage",
    "CrossBodyImage",
    "CrossStakeImage",
    "ItemMedallionDark",
    "ItemMedallionLight",
    "ItemMedallionLife",
    "LifeGem1",
    "LifeGem2",
    "LifeGem3",
    "LifeGem4",
    "LifeGem5",
    "LightGem1",
    "LightGem2",
    "LightGem3",
    "LightGem4",
    "LightGem5",
    "DarkGem1",
    "DarkGem2",
    "DarkGem3",
    "DarkGem4",
    "DarkGem5"
  },
  ItemsAdornments = {
    "ItemAdornment1",
    "ItemAdornment2",
    "ItemAdornment3",
    "ItemAdornment16",
    "ItemAdornment17",
    "ItemAdornment18",
    "ItemAdornment19",
    "ItemAdornment20",
    "ItemAdornment21",
    "ItemAdornment22",
    "ItemAdornment23",
    "ItemAdornment24",
    "ItemAdornment36",
    "ItemAdornment37",
    "ItemAdornment38",
    "ItemAdornment39",
    "ItemAdornment56"
  },
  DescriptionPage = {
    "DescriptionPageText",
    "DescriptionPageTitle",
    "DescriptionScrollArrowUp",
    "DescriptionScrollArrowDown",
    "DescriptionScrollArrowDown",
    "DescriptionScrollArrowUp",
    "ItemAdornment61",
    "ItemAdornment62"
  },
  DescriptionPageItemsAdornments = {
    "ItemAdornment61",
    "ItemAdornment62"
  },
  DescriptionPageCharAdornments = {
    "ItemAdornment61",
    "ItemAdornment62"
  },
  DescriptionPageEnemiesAdornments = {
    "ItemAdornment107",
    "ItemAdornment108",
    "ItemAdornment109",
    "ItemAdornment110",
    "ItemAdornment111",
    "ItemAdornment112",
    "ItemAdornment113",
    "ItemAdornment114",
    "ItemAdornment115",
    "ItemAdornment116",
    "ItemAdornment117",
    "ItemAdornment118",
    "ItemAdornment119",
    "ItemAdornment120"
  },
  ActionsDescriptionElements = {
    "ActionVideo",
    "ActionConstraintText",
    "ActionConditionsText",
    "RelicConditionIcon"
  },
  BuyActionDialog = {
    "ActionAcceptButton",
    "ActionPrice",
    "ActionAvailableCash",
    "ActionAvailableCashHeader",
    "ActionConfirmText",
    "ActionBoughtText",
    "ActionBuyDialogCurrencyIcon1",
    "ActionBuyDialogCurrencyIcon2"
  },
  ActionDescription_LightMagic = {
    "MagicDescriptionIcon1",
    "MagicDescriptionIcon2",
    "MagicDescriptionIcon3"
  },
  ActionDescription_DarkMagic = {
    "MagicDescriptionIcon1",
    "MagicDescriptionIcon2",
    "MagicDescriptionIcon3"
  },
  ItemsDescriptionElements = {},
  ExtensibleScrollDialog = {
    "ExtensibleScrollCurrentAward",
    "ExtensibleScrollCurrencyIcon",
    "ExtensibleScrollCompletionText",
    "UnlockHintScrollYes",
    "UnlockHintScrollNo",
    "UnlockHintScrollButton",
    "UnlockHintScrollWarning"
  },
  CharsDescriptionElements = {
    "CharName",
    "CharSizeTag",
    "CharSize",
    "CharDifficultyTag",
    "CharDifficulty",
    "AttributeBackground4",
    "AttributeBackground5",
    "AttributeBackground6",
    "AttributeWeapon1",
    "AttributeWeapon2",
    "AttributeWeapon3",
    "AttributeWeapon4",
    "AttributeWeapon5",
    "AttributeWeapon6",
    "AttributeWeapon7",
    "AttributeLevel1_1",
    "AttributeLevel1_2",
    "AttributeLevel1_3",
    "AttributeLevel1_4",
    "AttributeLevel1_5",
    "AttributeLevel1_6",
    "AttributeLevel2_1",
    "AttributeLevel2_2",
    "AttributeLevel2_3",
    "AttributeLevel2_4",
    "AttributeLevel2_5",
    "AttributeLevel2_6",
    "AttributeLevel3_1",
    "AttributeLevel3_2",
    "AttributeLevel3_3",
    "AttributeLevel3_4",
    "AttributeLevel3_5",
    "AttributeLevel3_6",
    "AttributeLevel1_7",
    "AttributeLevel2_7",
    "AttributeLevel3_7"
  },
  MenuCrossA = {
    "MenuCrossA1",
    "MenuCrossA2",
    "MenuCrossA3",
    "MenuCrossA4",
    "MenuCrossA5",
    "MenuCrossA6",
    "MenuCrossA7",
    "MenuCrossA8",
    "MenuCrossA9",
    "MenuCrossA10",
    "MenuCrossA11",
    "MenuCrossA12",
    "MenuCrossA13",
    "MenuCrossA14",
    "MenuCrossA15"
  },
  MenuCrossB = {
    "MenuCrossB1",
    "MenuCrossB2",
    "MenuCrossB3",
    "MenuCrossB4",
    "MenuCrossB5",
    "MenuCrossB6",
    "MenuCrossB7",
    "MenuCrossB8",
    "MenuCrossB9",
    "MenuCrossB10",
    "MenuCrossB11",
    "MenuCrossB12",
    "MenuCrossB13",
    "MenuCrossB14",
    "MenuCrossB15",
    "MenuCrossB16"
  },
  MenuCrossC = {
    "MenuCrossC1",
    "MenuCrossC2",
    "MenuCrossC3",
    "MenuCrossC4",
    "MenuCrossC5",
    "MenuCrossC6",
    "MenuCrossC7",
    "MenuCrossC8",
    "MenuCrossC9",
    "MenuCrossC10",
    "MenuCrossC11",
    "MenuCrossC12",
    "MenuCrossC13",
    "MenuCrossC14",
    "MenuCrossC15"
  },
  MenuAdornments = {
    "ItemAdornment75",
    "ItemAdornment78",
    "ItemAdornment76",
    "ItemAdornment77",
    "ItemAdornment80",
    "ItemAdornment81",
    "ItemAdornment128",
    "ItemAdornment129",
    "ItemAdornment84",
    "ItemAdornment85",
    "ItemAdornment86",
    "ItemAdornment87",
    "ItemAdornment88",
    "ItemAdornment89",
    "ItemAdornment122",
    "ItemAdornment123",
    "ItemAdornment124",
    "ItemAdornment125",
    "ItemAdornment126",
    "ItemAdornment127"
  },
  AchievementsMenu = {
    "AchievementsMain",
    "AchievementsTitle",
    "AchievementsGot",
    "AchievementName",
    "AchievementIcon",
    "AchievementDesc",
    "AchievementDesc2",
    "AchievementDesc3"
  }
}
TravelBookItems.Items = {
  MainCloseButton = {
    ItemClass = "CloseButton",
    {
      "fPos",
      V2D(0.05, 0.95)
    }
  },
  MainSelectButton = {
    ItemClass = "SelectButton",
    {"Align", "Right"},
    {
      "fPos",
      V2D(0.95, 0.95)
    }
  },
  MainLButtonIcon = {
    ItemClass = "MGSprite",
    {
      "Pos",
      V2D(40, 50)
    },
    {"Outside", 1},
    {
      "Pivot",
      V2D(0, 0)
    },
    {
      "SpriteIndex",
      3
    },
    {
      "Scale",
      V2D(0.5, 0.5)
    },
    {
      "uDataNewIconOffset",
      V2D(8, 2)
    },
    {"FadeOut", 0},
    {"Persistent", 1},
    {
      "uDataCanFade",
      true
    }
  },
  MainRButtonIcon = {
    ItemClass = "MGSprite",
    {
      "Pos",
      V2D(602, 50)
    },
    {"Outside", 1},
    {
      "SpriteIndex",
      4
    },
    {
      "Pivot",
      V2D(1, 0)
    },
    {
      "Scale",
      V2D(0.5, 0.5)
    },
    {
      "uDataNewIconOffset",
      V2D(-24, 2)
    },
    {"FadeOut", 0},
    {"Persistent", 1},
    {
      "uDataCanFade",
      true
    }
  },
  LButtonText = {
    ItemClass = "Text",
    {"Align", "Left"},
    {
      "Pos",
      V2D(44, 75)
    },
    {
      "Color",
      Color(255, 255, 255, 255)
    },
    {"Outside", 1},
    {"UseAlpha", 1},
    {"Effect", "Shadow"},
    {
      "Font",
      TravelBook.Fonts.Label
    },
    {
      "uDataSkipRenderWithAlpha",
      true
    },
    {"FadeOut", 0},
    {"Persistent", 1}
  },
  RButtonText = {
    ItemClass = "Text",
    {"Align", "Right"},
    {
      "Pos",
      V2D(595, 75)
    },
    {
      "Color",
      Color(255, 255, 255, 255)
    },
    {"UseAlpha", 1},
    {"Outside", 1},
    {"Effect", "Shadow"},
    {
      "Font",
      TravelBook.Fonts.Label
    },
    {
      "uDataSkipRenderWithAlpha",
      true
    },
    {"FadeOut", 0},
    {"Persistent", 1}
  },
  ActionsTitle = {
    ItemClass = "Text",
    {
      "Text",
      "TBook_Title_Actions"
    },
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.25, 0.1)
    }
  },
  BasicActions = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.1, 0.24)
    },
    {
      "Text",
      "TBook_Text_BasicActions"
    },
    {
      "OnGainFocus",
      "TravelBook.OpenRightMenu"
    },
    {
      "OnAccept",
      "TravelBook.EnableRightPage"
    },
    {
      "onRight",
      "TravelBook.EnableRightPage"
    },
    {"UseAlpha", 1}
  },
  AdvancedMoves = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.1, 0.34)
    },
    {
      "Text",
      "TBook_Text_AdvancedMoves"
    },
    {
      "OnGainFocus",
      "TravelBook.OpenRightMenu"
    },
    {
      "OnAccept",
      "TravelBook.EnableRightPage"
    },
    {
      "onRight",
      "TravelBook.EnableRightPage"
    },
    {"UseAlpha", 1}
  },
  SecondaryWeapons = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.1, 0.44)
    },
    {
      "Text",
      "TBook_Text_SecondaryWeapons"
    },
    {
      "OnGainFocus",
      "TravelBook.OpenRightMenu"
    },
    {
      "OnAccept",
      "TravelBook.EnableRightPage"
    },
    {
      "onRight",
      "TravelBook.EnableRightPage"
    },
    {"UseAlpha", 1}
  },
  Mounts = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.1, 0.54)
    },
    {
      "Text",
      "TBook_Text_Mounts"
    },
    {
      "OnGainFocus",
      "TravelBook.OpenRightMenu"
    },
    {
      "OnAccept",
      "TravelBook.EnableRightPage"
    },
    {
      "onRight",
      "TravelBook.EnableRightPage"
    },
    {"UseAlpha", 1}
  },
  RelicPowers = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.1, 0.64)
    },
    {
      "Text",
      "TBook_Text_RelicPowers"
    },
    {
      "OnGainFocus",
      "TravelBook.OpenRightMenu"
    },
    {
      "OnAccept",
      "TravelBook.EnableRightPage"
    },
    {
      "onRight",
      "TravelBook.EnableRightPage"
    },
    {"UseAlpha", 1}
  },
  LaurasMoves = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.1, 0.74)
    },
    {
      "Text",
      "TBook_Text_DLC_LauraSkills"
    },
    {
      "OnGainFocus",
      "TravelBook.OpenRightMenu"
    },
    {
      "OnAccept",
      "TravelBook.EnableRightPage"
    },
    {
      "onRight",
      "TravelBook.EnableRightPage"
    },
    {"UseAlpha", 1}
  },
  AvailablePointsFrameText = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.75, 0.18)
    },
    {"Align", "Center"},
    {
      "Font",
      TravelBook.Fonts.AvailablePointsFrame
    },
    {
      "Color",
      Menu.ItemColor
    },
    {"UseAlpha", 1},
    {"Alpha", 128}
  },
  ActionNameHeader = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.58, 0.37)
    },
    {"Align", "Left"},
    {
      "Font",
      TravelBook.Fonts.Title
    },
    {
      "Color",
      Menu.ItemColor
    },
    {
      "Text",
      "TBook_Action_Name_Header"
    },
    {"UseAlpha", 1},
    {"Alpha", 128}
  },
  ActionPriceHeader = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.96, 0.37)
    },
    {"Align", "Right"},
    {
      "Font",
      TravelBook.Fonts.Title
    },
    {
      "Color",
      Menu.ItemColor
    },
    {
      "Text",
      "TBook_Action_Price_Header"
    },
    {"UseAlpha", 1},
    {"Alpha", 128}
  },
  ScrollListTitle = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.75, 0.12)
    },
    {"Align", "Center"},
    {
      "Text",
      "TBook_Action_Available_Points_Title"
    },
    {
      "Font",
      TravelBook.Fonts.Title
    },
    {
      "Color",
      Menu.ItemColor
    },
    {"UseAlpha", 1},
    {"Alpha", 128}
  },
  AvailablePointsFrameCurrencyIcon = {
    ItemClass = "BookSprite",
    {
      "SpriteIndex",
      36
    },
    {"Alpha", 128}
  },
  ItemAdornment75 = {ItemClass = "AdornmentB"},
  ItemAdornment76 = {
    ItemClass = "AdornmentB",
    {"Angle", 270}
  },
  ItemAdornment77 = {
    ItemClass = "AdornmentB",
    {"Angle", 180}
  },
  ItemAdornment78 = {
    ItemClass = "AdornmentB",
    {"Angle", 90}
  },
  ItemAdornment79 = {
    ItemClass = "AdornmentA",
    {"Angle", 45}
  },
  ItemAdornment80 = {
    ItemClass = "AdornmentA",
    {"Angle", 225}
  },
  ItemAdornment81 = {
    ItemClass = "AdornmentA",
    {"Angle", 135}
  },
  ItemAdornment82 = {
    ItemClass = "AdornmentF",
    {"Mirror", 1},
    {
      "fPos",
      V2D(0.045, 0.31)
    }
  },
  ItemAdornment83 = {
    ItemClass = "AdornmentF",
    {
      "fPos",
      V2D(0.474, 0.705)
    }
  },
  ItemAdornment84 = {ItemClass = "AdornmentB"},
  ItemAdornment85 = {
    ItemClass = "AdornmentB",
    {"Angle", 90}
  },
  ItemAdornment86 = {
    ItemClass = "AdornmentB",
    {"Angle", 270}
  },
  ItemAdornment87 = {
    ItemClass = "AdornmentB",
    {"Angle", 180}
  },
  ItemAdornment88 = {
    ItemClass = "AdornmentA",
    {"Angle", 315}
  },
  ItemAdornment89 = {
    ItemClass = "AdornmentA",
    {"Angle", 45}
  },
  ItemAdornment130 = {
    ItemClass = "AdornmentB",
    {"Angle", 0},
    {
      "Scale",
      V2D(0.3, 0.3)
    }
  },
  ItemAdornment131 = {
    ItemClass = "AdornmentB",
    {"Angle", 90},
    {
      "Scale",
      V2D(0.3, 0.3)
    }
  },
  ItemAdornment132 = {
    ItemClass = "AdornmentB",
    {"Angle", 270},
    {
      "Scale",
      V2D(0.3, 0.3)
    }
  },
  ItemAdornment133 = {
    ItemClass = "AdornmentB",
    {"Angle", 180},
    {
      "Scale",
      V2D(0.3, 0.3)
    }
  },
  ItemAdornment134 = {
    ItemClass = "AdornmentE",
    {"Mirror", 1}
  },
  ItemAdornment135 = {ItemClass = "AdornmentE"},
  ItemAdornment136 = {
    ItemClass = "AdornmentF",
    {"Angle", 90},
    {
      "Scale",
      V2D(0.6, 0.6)
    }
  },
  ItemAdornment137 = {
    ItemClass = "AdornmentF",
    {"Angle", 90},
    {
      "Scale",
      V2D(0.6, 0.6)
    }
  },
  ItemAdornment138 = {
    ItemClass = "AdornmentF",
    {"Angle", 90},
    {
      "Scale",
      V2D(0.6, 0.6)
    },
    {"Mirror", 1}
  },
  ItemAdornment139 = {
    ItemClass = "AdornmentF",
    {"Angle", 90},
    {
      "Scale",
      V2D(0.6, 0.6)
    },
    {"Mirror", 1}
  },
  ItemAdornment140 = {ItemClass = "AdornmentE"},
  ItemAdornment141 = {
    ItemClass = "AdornmentE",
    {"Mirror", 1}
  },
  ItemAdornment144 = {ItemClass = "AdornmentD"},
  ItemAdornment145 = {ItemClass = "AdornmentD"},
  ItemAdornment148 = {
    ItemClass = "AdornmentB",
    {"Angle", 0},
    {
      "Scale",
      V2D(0.5, 0.5)
    }
  },
  ItemAdornment149 = {
    ItemClass = "AdornmentB",
    {"Angle", 90},
    {
      "Scale",
      V2D(0.5, 0.5)
    }
  },
  ItemAdornment150 = {
    ItemClass = "AdornmentB",
    {"Angle", 270},
    {
      "Scale",
      V2D(0.5, 0.5)
    }
  },
  ItemAdornment151 = {
    ItemClass = "AdornmentB",
    {"Angle", 180},
    {
      "Scale",
      V2D(0.5, 0.5)
    }
  },
  CharsTitle = {
    ItemClass = "Text",
    {
      "Text",
      "TBook_Title_Chars"
    },
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.25, 0.1)
    }
  },
  MainCharsText = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.1, 0.24)
    },
    {
      "Text",
      "TBook_Text_MainChars"
    },
    {
      "OnGainFocus",
      "TravelBook.OpenRightMenu"
    },
    {
      "OnAccept",
      "TravelBook.EnableRightPage"
    },
    {
      "onRight",
      "TravelBook.EnableRightPage"
    },
    {"UseAlpha", 1}
  },
  MonstersText = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.1, 0.34)
    },
    {
      "Text",
      "TBook_Text_Monsters"
    },
    {
      "OnGainFocus",
      "TravelBook.OpenRightMenu"
    },
    {
      "OnAccept",
      "TravelBook.EnableRightPage"
    },
    {
      "onRight",
      "TravelBook.EnableRightPage"
    },
    {"UseAlpha", 1}
  },
  BossesText = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.1, 0.44)
    },
    {
      "Text",
      "TBook_Text_Bosses"
    },
    {
      "OnGainFocus",
      "TravelBook.OpenRightMenu"
    },
    {
      "OnAccept",
      "TravelBook.EnableRightPage"
    },
    {
      "onRight",
      "TravelBook.EnableRightPage"
    },
    {"UseAlpha", 1}
  },
  ItemAdornment90 = {ItemClass = "AdornmentB"},
  ItemAdornment91 = {
    ItemClass = "AdornmentB",
    {"Angle", 270}
  },
  ItemAdornment92 = {
    ItemClass = "AdornmentB",
    {"Angle", 180}
  },
  ItemAdornment93 = {
    ItemClass = "AdornmentB",
    {"Angle", 90}
  },
  ItemAdornment94 = {
    ItemClass = "AdornmentA",
    {"Angle", 45}
  },
  ItemAdornment95 = {
    ItemClass = "AdornmentA",
    {"Angle", 225}
  },
  ItemAdornment96 = {
    ItemClass = "AdornmentA",
    {"Angle", 135}
  },
  ItemAdornment97 = {
    ItemClass = "AdornmentF",
    {"Mirror", 1},
    {
      "fPos",
      V2D(0.045, 0.31)
    }
  },
  ItemAdornment98 = {
    ItemClass = "AdornmentF",
    {
      "fPos",
      V2D(0.474, 0.705)
    }
  },
  ItemAdornment99 = {ItemClass = "AdornmentB"},
  ItemAdornment100 = {
    ItemClass = "AdornmentB",
    {"Angle", 90}
  },
  ItemAdornment101 = {
    ItemClass = "AdornmentB",
    {"Angle", 270}
  },
  ItemAdornment102 = {
    ItemClass = "AdornmentB",
    {"Angle", 180}
  },
  ItemAdornment103 = {
    ItemClass = "AdornmentA",
    {"Angle", 315}
  },
  ItemAdornment104 = {
    ItemClass = "AdornmentA",
    {"Angle", 45}
  },
  ItemsTitle = {
    ItemClass = "Text",
    {
      "Text",
      "TBook_Title_Items"
    },
    {
      "Font",
      TravelBook.Fonts.Items
    },
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.25, 0.09)
    }
  },
  DaggerImage = {
    ItemClass = "HUDSprite",
    {
      "SpriteIndex",
      23
    },
    {
      "fPos",
      V2D(0.85, 0.33)
    },
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_Daggers"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_Daggers"
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "uDataNewIconOffset",
      V2D(7, -45)
    },
    {
      "uDataBackgroundFile",
      "Item_Daga.dds"
    },
    {
      "uDataBackgroundFile",
      "Item_Daga.dds"
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    },
    {
      "uDataSelectionChildren",
      {
        "DaggerQuantity"
      }
    }
  },
  FairiesImage = {
    ItemClass = "HUDSprite",
    {
      "fPos",
      V2D(0.75, 0.165)
    },
    {
      "SpriteIndex",
      63
    },
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_Fairies"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_Fairies"
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "uDataBackgroundFile",
      "Item_Hadas.dds"
    },
    {
      "uDataNewIconOffset",
      V2D(20, -40)
    },
    {"Angle", -8},
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    },
    {
      "uDataSelectionChildren",
      {
        "FairiesQuantity"
      }
    }
  },
  CrystalsImage = {
    ItemClass = "HUDSprite",
    {
      "SpriteIndex",
      48
    },
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_Crystals"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_Crystals"
    },
    {
      "fPos",
      V2D(0.65, 0.33)
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "uDataNewIconOffset",
      V2D(15, -35)
    },
    {
      "uDataBackgroundFile",
      "Item_Crystal.dds"
    },
    {
      "uDataSelectionChildren",
      {
        "CrystalPiece1",
        "CrystalPiece2",
        "CrystalPiece3",
        "CrystalPieceFull"
      }
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  VialsImage = {
    ItemClass = "HUDSprite",
    {
      "SpriteIndex",
      24
    },
    {
      "fPos",
      V2D(0.75, 0.48)
    },
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_Vials"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_Vials"
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "Scale",
      V2D(0.75, 0.75)
    },
    {
      "uDataBackgroundFile",
      "Item_Vial.dds"
    },
    {
      "uDataNewIconOffset",
      V2D(10, -30)
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    },
    {
      "uDataSelectionChildren",
      {
        "VialsQuantity"
      }
    }
  },
  DaggerQuantity = {
    ItemClass = "ItemQuantity",
    {
      "fPos",
      V2D(0.86, 0.34)
    }
  },
  FairiesQuantity = {
    ItemClass = "ItemQuantity",
    {
      "fPos",
      V2D(0.77, 0.17)
    }
  },
  VialsQuantity = {
    ItemClass = "ItemQuantity",
    {
      "fPos",
      V2D(0.77, 0.48)
    }
  },
  CrystalPiece1 = {
    ItemClass = "CrystalPiece",
    {
      "SpriteIndex",
      49
    }
  },
  CrystalPiece2 = {
    ItemClass = "CrystalPiece",
    {
      "SpriteIndex",
      50
    }
  },
  CrystalPiece3 = {
    ItemClass = "CrystalPiece",
    {
      "SpriteIndex",
      51
    }
  },
  CrystalPieceFull = {
    ItemClass = "CrystalPiece",
    {
      "SpriteIndex",
      46
    }
  },
  BootsImage = {
    ItemClass = "BookSpriteSelectable",
    {
      "SpriteIndex",
      5
    },
    {
      "Scale",
      V2D(0.75, 0.75)
    },
    {
      "fPos",
      V2D(0.39, 0.48)
    },
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_Boots"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_Boots"
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "uDataNewIconOffset",
      V2D(23, -65)
    },
    {
      "uDataBackgroundFile",
      "Item_Bota.dds"
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  GauntletImage = {
    ItemClass = "BookSpriteSelectable",
    {
      "SpriteIndex",
      13
    },
    {
      "Scale",
      V2D(0.75, 0.7)
    },
    {
      "fPos",
      V2D(0.12, 0.48)
    },
    {"Angle", 20},
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_Gauntlet"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_Gauntlet"
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "uDataBackgroundFile",
      "Item_Guantelete.dds"
    },
    {
      "uDataNewIconOffset",
      V2D(30, -45)
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  WingsImage = {
    ItemClass = "BookSpriteSelectable",
    {
      "fPos",
      V2D(0.25, 0.71)
    },
    {
      "Scale",
      V2D(0.5, 0.5)
    },
    {
      "SpriteIndex",
      29
    },
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_Wings"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_Wings"
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "uDataBackgroundFile",
      "Item_Alas.dds"
    },
    {
      "uDataNewIconOffset",
      V2D(10, -35)
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  Scroll1Image = {
    ItemClass = "MGSprite",
    {
      "fPos",
      V2D(0.08, 0.9)
    },
    {
      "Scale",
      V2D(0.5, 0.5)
    },
    {
      "SpriteIndex",
      37
    },
    {
      "Size",
      V2D(1, 1)
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "OnGainFocus",
      "TravelBook.OnImageGainFocus"
    },
    {
      "OnLooseFocus",
      "TravelBook.OnImageLooseFocus"
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  Scroll2Image = {
    ItemClass = "MGSprite",
    {
      "fPos",
      V2D(0.19, 0.9)
    },
    {
      "Scale",
      V2D(0.5, 0.5)
    },
    {
      "SpriteIndex",
      37
    },
    {
      "Size",
      V2D(1, 1)
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "OnGainFocus",
      "TravelBook.OnImageGainFocus"
    },
    {
      "OnLooseFocus",
      "TravelBook.OnImageLooseFocus"
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  Scroll3Image = {
    ItemClass = "MGSprite",
    {
      "fPos",
      V2D(0.31, 0.9)
    },
    {
      "Scale",
      V2D(0.5, 0.5)
    },
    {
      "SpriteIndex",
      37
    },
    {
      "Size",
      V2D(1, 1)
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "OnGainFocus",
      "TravelBook.OnImageGainFocus"
    },
    {
      "OnLooseFocus",
      "TravelBook.OnImageLooseFocus"
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  Scroll4Image = {
    ItemClass = "MGSprite",
    {
      "fPos",
      V2D(0.42, 0.9)
    },
    {
      "Scale",
      V2D(0.5, 0.5)
    },
    {
      "SpriteIndex",
      37
    },
    {
      "Size",
      V2D(1, 1)
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "OnGainFocus",
      "TravelBook.OnImageGainFocus"
    },
    {
      "OnLooseFocus",
      "TravelBook.OnImageLooseFocus"
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  CrossBodyImage = {
    ItemClass = "BookSpriteSelectable",
    {
      "SpriteIndex",
      20
    },
    {
      "Scale",
      V2D(0.68, 0.68)
    },
    {
      "fPos",
      V2D(0.76, 0.59)
    },
    {
      "Pivot",
      V2D(1, 0)
    },
    {
      "uDataNewIconOffset",
      V2D(-30, 17)
    },
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_CrossBody"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_CrossBody"
    },
    {
      "uDataBackgroundFile",
      "Item_Cruz.dds"
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  CrossChainImage = {
    ItemClass = "BookSpriteSelectable",
    {
      "SpriteIndex",
      21
    },
    {
      "Scale",
      V2D(0.68, 0.68)
    },
    {
      "fPos",
      V2D(0.732, 0.585)
    },
    {
      "Pivot",
      V2D(0, 0)
    },
    {
      "uDataNewIconOffset",
      V2D(130, -5)
    },
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_CrossChain"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_CrossChain"
    },
    {
      "uDataBackgroundFile",
      "Item_Cadena.dds"
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  CrossHookImage = {
    ItemClass = "BookSpriteSelectable",
    {
      "SpriteIndex",
      22
    },
    {
      "Scale",
      V2D(0.68, 0.68)
    },
    {
      "fPos",
      V2D(0.882, 0.585)
    },
    {
      "Pivot",
      V2D(0, 0)
    },
    {
      "uDataNewIconOffset",
      V2D(35, 120)
    },
    {
      "uDataBackgroundFile",
      "Item_Punta.dds"
    },
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_CrossHook"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_CrossHook"
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  CrossStakeImage = {
    ItemClass = "BookSpriteSelectable",
    {
      "SpriteIndex",
      2
    },
    {
      "Scale",
      V2D(0.68, 0.68)
    },
    {
      "fPos",
      V2D(0.653, 0.737)
    },
    {
      "Pivot",
      V2D(1, 0)
    },
    {
      "uDataNewIconOffset",
      V2D(-40, 3)
    },
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_CrossStake"
    },
    {
      "uDataBackgroundFile",
      "Item_ Estaca.dds"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_CrossStake"
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  ItemCompassRose = {
    ItemClass = "BookSprite",
    {
      "fPos",
      V2D(0.75, 0.33)
    },
    {
      "SpriteIndex",
      12
    },
    {
      "Scale",
      V2D(0.75, 0.75)
    }
  },
  ItemMedallionDark = {
    ItemClass = "MGSprite",
    {
      "fPos",
      V2D(0.375, 0.18)
    },
    {
      "SpriteIndex",
      13
    },
    {
      "Scale",
      V2D(0.5, 0.5)
    },
    {
      "Size",
      V2D(1, 1)
    },
    {"Alpha", 200},
    {
      "OnGainFocus",
      "TravelBook.OnImageGainFocus"
    },
    {
      "OnLooseFocus",
      "TravelBook.OnImageLooseFocus"
    },
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_DarkGems"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_DarkGems"
    },
    {
      "uDataBackgroundFile",
      "Item_GemasRojas.dds"
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "uDataNewIconOffset",
      V2D(30, -50)
    }
  },
  ItemMedallionLight = {
    ItemClass = "MGSprite",
    {
      "fPos",
      V2D(0.125, 0.18)
    },
    {
      "SpriteIndex",
      13
    },
    {
      "Scale",
      V2D(0.5, 0.5)
    },
    {
      "Size",
      V2D(1, 1)
    },
    {"Alpha", 200},
    {
      "OnGainFocus",
      "TravelBook.OnImageGainFocus"
    },
    {
      "OnLooseFocus",
      "TravelBook.OnImageLooseFocus"
    },
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_LightGems"
    },
    {
      "uDataBackgroundFile",
      "Item_GemasAzules.dds"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_LightGems"
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "uDataNewIconOffset",
      V2D(30, -50)
    }
  },
  ItemMedallionLife = {
    ItemClass = "MGSprite",
    {
      "SpriteIndex",
      13
    },
    {
      "fPos",
      V2D(0.25, 0.28)
    },
    {
      "Scale",
      V2D(0.5, 0.5)
    },
    {
      "Size",
      V2D(1, 1)
    },
    {"Alpha", 200},
    {
      "OnGainFocus",
      "TravelBook.OnImageGainFocus"
    },
    {
      "OnLooseFocus",
      "TravelBook.OnImageLooseFocus"
    },
    {
      "uDataDescriptionTag",
      "TBook_Item_Desc_LifeGems"
    },
    {
      "uDataBackgroundFile",
      "Item_GemasVerdes.dds"
    },
    {
      "uDataItemNameTag",
      "TBook_Item_Name_LifeGems"
    },
    {
      "OnAccept",
      "TravelBook.GoToDescriptionPage"
    },
    {
      "uDataNewIconOffset",
      V2D(30, -50)
    }
  },
  LifeGem1 = {ItemClass = "Gem"},
  LifeGem2 = {ItemClass = "Gem"},
  LifeGem3 = {ItemClass = "Gem"},
  LifeGem4 = {
    ItemClass = "Gem",
    {"Mirror", 1}
  },
  LifeGem5 = {
    ItemClass = "Gem",
    {"Mirror", 1}
  },
  DarkGem1 = {ItemClass = "Gem"},
  DarkGem2 = {ItemClass = "Gem"},
  DarkGem3 = {ItemClass = "Gem"},
  DarkGem4 = {
    ItemClass = "Gem",
    {"Mirror", 1}
  },
  DarkGem5 = {
    ItemClass = "Gem",
    {"Mirror", 1}
  },
  LightGem1 = {ItemClass = "Gem"},
  LightGem2 = {ItemClass = "Gem"},
  LightGem3 = {ItemClass = "Gem"},
  LightGem4 = {
    ItemClass = "Gem",
    {"Mirror", 1}
  },
  LightGem5 = {
    ItemClass = "Gem",
    {"Mirror", 1}
  },
  ItemAdornment1 = {
    ItemClass = "AdornmentA",
    {
      "fPos",
      V2D(0.25, 0.52)
    },
    {
      "Pivot",
      V2D(0.5, 1)
    }
  },
  ItemAdornment2 = {
    ItemClass = "AdornmentA",
    {
      "fPos",
      V2D(0.25, 0.52)
    },
    {"Angle", 120},
    {
      "Pivot",
      V2D(0.5, 1)
    }
  },
  ItemAdornment3 = {
    ItemClass = "AdornmentA",
    {
      "fPos",
      V2D(0.25, 0.52)
    },
    {"Angle", 240},
    {
      "Pivot",
      V2D(0.5, 1)
    }
  },
  ItemAdornment4 = {
    ItemClass = "AdornmentA",
    {"Angle", 45}
  },
  ItemAdornment5 = {
    ItemClass = "AdornmentA",
    {"Angle", 135}
  },
  ItemAdornment6 = {
    ItemClass = "AdornmentA",
    {"Angle", 225}
  },
  ItemAdornment7 = {
    ItemClass = "AdornmentA",
    {"Angle", 315}
  },
  ItemAdornment8 = {ItemClass = "AdornmentB"},
  ItemAdornment9 = {
    ItemClass = "AdornmentB",
    {"Angle", 90}
  },
  ItemAdornment10 = {
    ItemClass = "AdornmentB",
    {"Angle", 270}
  },
  ItemAdornment11 = {
    ItemClass = "AdornmentB",
    {"Angle", 180}
  },
  ItemAdornment12 = {
    ItemClass = "AdornmentD",
    {"Angle", 270},
    {
      "Scale",
      V2D(0.75, 0.75)
    }
  },
  ItemAdornment13 = {
    ItemClass = "AdornmentD",
    {"Angle", 90},
    {
      "Scale",
      V2D(0.75, 0.75)
    }
  },
  ItemAdornment14 = {
    ItemClass = "AdornmentC",
    {"Angle", 270}
  },
  ItemAdornment15 = {
    ItemClass = "AdornmentC",
    {"Angle", 90},
    {"Mirror", 1}
  },
  ItemAdornment16 = {ItemClass = "AdornmentD"},
  ItemAdornment17 = {ItemClass = "AdornmentD"},
  ItemAdornment18 = {ItemClass = "AdornmentD"},
  ItemAdornment19 = {ItemClass = "AdornmentD"},
  ItemAdornment20 = {ItemClass = "AdornmentD"},
  ItemAdornment21 = {ItemClass = "AdornmentD"},
  ItemAdornment22 = {
    ItemClass = "AdornmentE",
    {"Angle", 90}
  },
  ItemAdornment23 = {
    ItemClass = "AdornmentE",
    {"Angle", 90}
  },
  ItemAdornment24 = {
    ItemClass = "AdornmentE",
    {"Angle", 90}
  },
  ItemAdornment25 = {
    ItemClass = "AdornmentE",
    {"Angle", 270}
  },
  ItemAdornment26 = {
    ItemClass = "AdornmentE",
    {"Angle", 270}
  },
  ItemAdornment27 = {
    ItemClass = "AdornmentE",
    {"Angle", 270}
  },
  ItemAdornment28 = {ItemClass = "AdornmentB"},
  ItemAdornment29 = {
    ItemClass = "AdornmentB",
    {"Angle", 90}
  },
  ItemAdornment36 = {
    ItemClass = "AdornmentE",
    {"Angle", 90}
  },
  ItemAdornment37 = {ItemClass = "AdornmentE"},
  ItemAdornment38 = {
    ItemClass = "AdornmentE",
    {"Angle", 270}
  },
  ItemAdornment39 = {
    ItemClass = "AdornmentE",
    {"Angle", 180}
  },
  ItemAdornment40 = {
    ItemClass = "AdornmentC",
    {"Angle", 180},
    {
      "Scale",
      V2D(0.5, 0.6)
    }
  },
  ItemAdornment41 = {
    ItemClass = "AdornmentC",
    {"Angle", 180},
    {
      "Scale",
      V2D(0.5, 0.6)
    },
    {"Mirror", 1}
  },
  ItemAdornment30 = {
    ItemClass = "AdornmentC",
    {"Mirror", 1},
    {"Angle", 180},
    {
      "Scale",
      V2D(0.9, 0.9)
    }
  },
  ItemAdornment31 = {
    ItemClass = "AdornmentC",
    {"Angle", 180},
    {
      "Scale",
      V2D(0.9, 0.9)
    }
  },
  ItemAdornment42 = {
    ItemClass = "AdornmentC",
    {"Mirror", 1},
    {"Angle", 270},
    {
      "Scale",
      V2D(0.9, 0.9)
    }
  },
  ItemAdornment43 = {
    ItemClass = "AdornmentC",
    {"Angle", 90},
    {
      "Scale",
      V2D(0.9, 0.9)
    }
  },
  ItemAdornment44 = {
    ItemClass = "AdornmentD",
    {
      "Scale",
      V2D(0.55, 0.6)
    }
  },
  ItemAdornment45 = {
    ItemClass = "AdornmentD",
    {
      "Scale",
      V2D(0.55, 0.6)
    }
  },
  ItemAdornment46 = {
    ItemClass = "AdornmentD",
    {
      "Scale",
      V2D(0.55, 0.6)
    }
  },
  ItemAdornment47 = {
    ItemClass = "AdornmentD",
    {
      "Scale",
      V2D(0.55, 0.6)
    }
  },
  ItemAdornment48 = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.55, 0.6)
    }
  },
  ItemAdornment49 = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.55, 0.6)
    }
  },
  ItemAdornment50 = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.55, 0.6)
    }
  },
  ItemAdornment51 = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.55, 0.6)
    }
  },
  ItemAdornment52 = {
    ItemClass = "AdornmentE",
    {"Mirror", 1}
  },
  ItemAdornment53 = {
    ItemClass = "AdornmentE",
    {"Mirror", 1}
  },
  ItemAdornment54 = {
    ItemClass = "AdornmentE",
    {"Mirror", 1}
  },
  ItemAdornment55 = {
    ItemClass = "AdornmentE",
    {"Mirror", 1}
  },
  ItemAdornment56 = {
    ItemClass = "AdornmentF",
    {"Angle", 90},
    {
      "Scale",
      V2D(0.6, 0.6)
    },
    {
      "fPos",
      V2D(0.25, 0.145)
    }
  },
  DescriptionPageTitle = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.05, 0.11)
    },
    {
      "Text",
      "Description"
    },
    {"Align", "Left"},
    {
      "Font",
      TravelBook.Fonts.Title
    }
  },
  DescriptionPageText = {
    ItemClass = "DescriptionText"
  },
  ItemAdornment57 = {ItemClass = "AdornmentB"},
  ItemAdornment58 = {
    ItemClass = "AdornmentB",
    {"Angle", 270}
  },
  ItemAdornment59 = {
    ItemClass = "AdornmentB",
    {"Angle", 180}
  },
  ItemAdornment61 = {
    ItemClass = "AdornmentA",
    {"Angle", 225}
  },
  ItemAdornment62 = {
    ItemClass = "AdornmentA",
    {"Angle", 135}
  },
  ItemAdornment60 = {
    ItemClass = "AdornmentF",
    {"Mirror", 1},
    {
      "fPos",
      V2D(0.045, 0.31)
    }
  },
  ItemAdornment65 = {
    ItemClass = "AdornmentF",
    {
      "fPos",
      V2D(0.474, 0.705)
    }
  },
  DescriptionScrollArrowDown = {
    ItemClass = "AdornmentG",
    {"Angle", 90},
    {
      "fPos",
      V2D(0.25, 0.91)
    },
    {
      "Scale",
      V2D(0.65, 0.65)
    }
  },
  DescriptionScrollArrowUp = {
    ItemClass = "AdornmentG",
    {"Angle", 270},
    {
      "fPos",
      V2D(0.25, 0.21)
    },
    {
      "Scale",
      V2D(0.65, 0.65)
    }
  },
  ItemAdornment66 = {ItemClass = "AdornmentB"},
  ItemAdornment67 = {
    ItemClass = "AdornmentB",
    {"Angle", 90}
  },
  ItemAdornment68 = {
    ItemClass = "AdornmentB",
    {"Angle", 270}
  },
  ItemAdornment69 = {
    ItemClass = "AdornmentB",
    {"Angle", 180}
  },
  ItemAdornment70 = {ItemClass = "AdornmentF"},
  ItemAdornment71 = {ItemClass = "AdornmentF"},
  ItemAdornment72 = {
    ItemClass = "AdornmentB",
    {"Angle", 270}
  },
  ItemAdornment73 = {
    ItemClass = "AdornmentB",
    {"Angle", 180}
  },
  ItemAdornment105 = {ItemClass = "AdornmentB"},
  ItemAdornment106 = {
    ItemClass = "AdornmentB",
    {"Angle", 90}
  },
  ItemAdornment107 = {
    ItemClass = "AdornmentF",
    {"Angle", 90}
  },
  ItemAdornment108 = {
    ItemClass = "AdornmentF",
    {"Angle", 90}
  },
  ItemAdornment109 = {
    ItemClass = "AdornmentD",
    {"Angle", 90}
  },
  ItemAdornment110 = {
    ItemClass = "AdornmentD",
    {"Angle", 90}
  },
  ItemAdornment111 = {
    ItemClass = "AdornmentD",
    {"Angle", 90}
  },
  ItemAdornment112 = {
    ItemClass = "AdornmentD",
    {"Angle", 90}
  },
  ItemAdornment113 = {
    ItemClass = "AdornmentD",
    {"Angle", 90}
  },
  ItemAdornment114 = {
    ItemClass = "AdornmentD",
    {"Angle", 90}
  },
  ItemAdornment115 = {
    ItemClass = "AdornmentE",
    {"Angle", 270}
  },
  ItemAdornment116 = {
    ItemClass = "AdornmentE",
    {"Angle", 270}
  },
  ItemAdornment117 = {
    ItemClass = "AdornmentE",
    {"Angle", 270}
  },
  ItemAdornment118 = {
    ItemClass = "AdornmentE",
    {"Angle", 90}
  },
  ItemAdornment119 = {
    ItemClass = "AdornmentE",
    {"Angle", 90}
  },
  ItemAdornment120 = {
    ItemClass = "AdornmentE",
    {"Angle", 90}
  },
  ItemAdornment122 = {
    ItemClass = "AdornmentA",
    {"Angle", 225}
  },
  ItemAdornment123 = {
    ItemClass = "AdornmentA",
    {"Angle", 125}
  },
  ItemAdornment124 = {
    ItemClass = "AdornmentF",
    {"Mirror", 1}
  },
  ItemAdornment125 = {ItemClass = "AdornmentF"},
  ItemAdornment126 = {
    ItemClass = "AdornmentF",
    {"Mirror", 1}
  },
  ItemAdornment127 = {ItemClass = "AdornmentF"},
  ItemAdornment128 = {
    ItemClass = "AdornmentA",
    {"Angle", 315}
  },
  ItemAdornment129 = {
    ItemClass = "AdornmentA",
    {"Angle", 45}
  },
  Cursor = {
    ItemClass = "Rectangle",
    {
      "fPos",
      V2D(0.5, 0.5)
    },
    {
      "Scale",
      V2D(3, 3)
    },
    {
      "Color",
      Color(200, 0, 0)
    },
    {"Visible", 0}
  },
  ActionVideo = {
    ItemClass = "Video",
    {
      "fPos",
      V2D(0.747, 0.34)
    },
    {
      "Scale",
      V2D(310, 232)
    },
    {
      "Pivot",
      V2D(0.5, 0.5)
    },
    {"Visible", 0}
  },
  ActionConstraintText = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.575, 0.59)
    },
    {
      "Font",
      TravelBook.Fonts.ActionConstraint
    }
  },
  ActionBackButton = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.075, 0.86)
    },
    {
      "Font",
      TravelBook.Fonts.ActionBuyDialog
    },
    {
      "onUp",
      "TravelBook.ScrollUpDescription"
    },
    {
      "onDown",
      "TravelBook.ScrollDownDescription"
    },
    {
      "Text",
      "Menu_Cancel"
    },
    {
      "OnAccept",
      "TravelBook.CloseDescriptionPage"
    }
  },
  ActionAcceptButton = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.25, 0.9)
    },
    {"Align", "Center"},
    {
      "Font",
      TravelBook.Fonts.ActionBuyButton
    },
    {
      "onUp",
      "TravelBook.ScrollUpDescription"
    },
    {
      "onDown",
      "TravelBook.ScrollDownDescription"
    },
    {
      "OnAccept",
      "TravelBook.BuyAction"
    }
  },
  ActionPrice = {
    ItemClass = "Text",
    {"GetExtens", 1},
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.25, 0.83)
    },
    {
      "Font",
      TravelBook.Fonts.ActionBuyDialog
    }
  },
  ActionAvailableCashHeader = {
    ItemClass = "Text",
    {"GetExtens", 1},
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.25, 0.73)
    },
    {
      "Font",
      TravelBook.Fonts.ActionBuyDialog
    },
    {
      "Text",
      "TBook_Action_Available_Points_Title"
    }
  },
  ActionAvailableCash = {
    ItemClass = "Text",
    {"GetExtens", 1},
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.25, 0.77)
    },
    {
      "Font",
      TravelBook.Fonts.ActionBuyDialog
    }
  },
  ActionConfirmText = {
    ItemClass = "Text",
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.25, 0.74)
    },
    {
      "Font",
      TravelBook.Fonts.ActionBuyDialog
    },
    {
      "Text",
      "TBook_Action_Confirm_Buy"
    }
  },
  ActionBoughtText = {
    ItemClass = "Text",
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.25, 0.81)
    },
    {
      "Font",
      TravelBook.Fonts.Default
    },
    {
      "Text",
      "TBook_Action_Bought"
    }
  },
  ActionBuyDialogCurrencyIcon1 = {
    ItemClass = "BookSprite",
    {
      "SpriteIndex",
      36
    }
  },
  ActionBuyDialogCurrencyIcon2 = {
    ItemClass = "BookSprite",
    {
      "SpriteIndex",
      36
    }
  },
  ActionConditionsText = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.575, 0.87)
    },
    {
      "Font",
      TravelBook.Fonts.ActionConstraint
    },
    {
      "Text",
      "TBook_ActionConditions"
    }
  },
  RelicConditionIcon = {
    ItemClass = "BookSprite",
    {
      "OnRender",
      "TravelBook.OnRenderActionConditionIcons"
    },
    {
      "Scale",
      V2D(0.6, 0.6)
    },
    {
      "Pivot",
      V2D(0.5, 0.2)
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  MagicDescriptionIcon1 = {
    ItemClass = "MGSprite",
    {
      "fPos",
      V2D(0.42, 0)
    },
    {
      "Scale",
      V2D(0.4, 0.4)
    },
    {
      "Pivot",
      V2D(0.6, -0.15)
    },
    {"Visible", 0}
  },
  MagicDescriptionIcon2 = {
    ItemClass = "MGSprite",
    {
      "fPos",
      V2D(0.42, 0)
    },
    {
      "Scale",
      V2D(0.3, 0.3)
    },
    {
      "Pivot",
      V2D(0.5, -0.1)
    },
    {"Visible", 0}
  },
  MagicDescriptionIcon3 = {
    ItemClass = "HUDSprite",
    {
      "SpriteIndex",
      78
    },
    {
      "fPos",
      V2D(0.42, 0)
    },
    {
      "Scale",
      V2D(0.6, 0.6)
    },
    {
      "Pivot",
      V2D(0.5, 0.8)
    },
    {"Visible", 0}
  },
  ItemPicture = {
    ItemClass = "Video",
    {
      "fPos",
      V2D(0.755, 0.31)
    },
    {
      "Pivot",
      V2D(0.5, 0.5)
    },
    {
      "Scale",
      V2D(300, 225)
    }
  },
  ExtensibleScrollCurrentAward = {
    ItemClass = "Text",
    {"Align", "Right"},
    {
      "fPos",
      V2D(0.44, 0.2)
    },
    {
      "Font",
      TravelBook.Fonts.Paragraph
    }
  },
  ExtensibleScrollCurrencyIcon = {
    ItemClass = "BookSprite",
    {
      "SpriteIndex",
      36
    }
  },
  ExtensibleScrollCompletionText = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.055, 0.2)
    },
    {"Align", "Left"},
    {
      "Font",
      TravelBook.Fonts.Paragraph
    }
  },
  UnlockHintScrollYes = {
    ItemClass = "Text",
    {"Align", "Left"},
    {
      "fPos",
      V2D(0.1, 0.85)
    },
    {
      "Text",
      "Menu_Question_Yes"
    },
    {
      "Size",
      V2D(1, 1)
    },
    {
      "Font",
      TravelBook.Fonts.Paragraph
    },
    {
      "onUp",
      "TravelBook.ScrollUpDescription"
    },
    {
      "onDown",
      "TravelBook.ScrollDownDescription"
    },
    {
      "OnAccept",
      "TravelBook.UnlockSolution"
    }
  },
  UnlockHintScrollNo = {
    ItemClass = "Text",
    {"Align", "Right"},
    {
      "fPos",
      V2D(0.4, 0.85)
    },
    {
      "Text",
      "Menu_Question_No"
    },
    {
      "Size",
      V2D(1, 1)
    },
    {
      "Font",
      TravelBook.Fonts.Paragraph
    },
    {
      "onUp",
      "TravelBook.ScrollUpDescription"
    },
    {
      "onDown",
      "TravelBook.ScrollDownDescription"
    },
    {
      "OnAccept",
      "TravelBook.SetupExtensibleScroll"
    }
  },
  UnlockHintScrollButton = {
    ItemClass = "Text",
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.25, 0.9)
    },
    {
      "Text",
      "TBook_ExtensibleScroll_Button"
    },
    {
      "Size",
      V2D(1, 1)
    },
    {
      "Font",
      TravelBook.Fonts.Paragraph
    },
    {
      "onUp",
      "TravelBook.ScrollUpDescription"
    },
    {
      "onDown",
      "TravelBook.ScrollDownDescription"
    },
    {
      "OnAccept",
      "TravelBook.ConfirmUnlockSolution"
    }
  },
  UnlockHintScrollWarning = {
    ItemClass = "DescriptionText",
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.25, 0.75)
    },
    {
      "Font",
      TravelBook.Fonts.Paragraph
    },
    {"MaxLines", 2},
    {
      "LineSplitSize",
      250
    },
    {"onUp", ""},
    {"onDown", ""},
    {
      "Size",
      V2D(0, 0)
    }
  },
  CharNameTag = {
    ItemClass = "Text",
    {
      "Text",
      Game.GetLangStr("TBook_Enemy_Name")
    },
    {
      "Font",
      TravelBook.Fonts.CharHeaderBig
    }
  },
  CharName = {
    ItemClass = "Text",
    {
      "Font",
      TravelBook.Fonts.CharHeaderBig
    }
  },
  CharSizeTag = {
    ItemClass = "Text",
    {
      "Text",
      Game.GetLangStr("TBook_Enemy_Size")
    },
    {
      "Font",
      TravelBook.Fonts.CharHeaderMedium
    }
  },
  CharSize = {
    ItemClass = "Text",
    {
      "Font",
      TravelBook.Fonts.CharHeaderSmall
    }
  },
  CharDifficultyTag = {
    ItemClass = "Text",
    {
      "Text",
      Game.GetLangStr("TBook_Enemy_Difficulty")
    },
    {
      "Font",
      TravelBook.Fonts.CharHeaderMedium
    }
  },
  CharDifficulty = {
    ItemClass = "Text",
    {
      "Font",
      TravelBook.Fonts.CharHeaderSmall
    }
  },
  CharPicture = {
    ItemClass = "Video",
    {
      "Pos",
      V2D(0, 0)
    },
    {
      "Pivot",
      V2D(0, 0)
    },
    {
      "Scale",
      V2D(640, 480)
    },
    {
      "ShaderFilterMask",
      1
    },
    {"Unit", 1},
    {"WideScale", 0}
  },
  AttributeWeapon1 = {
    ItemClass = "EnemyAttributeWeapon",
    {
      "SpriteIndex",
      23
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  AttributeWeapon2 = {
    ItemClass = "EnemyAttributeWeapon",
    {
      "SpriteIndex",
      63
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  AttributeWeapon3 = {
    ItemClass = "EnemyAttributeWeapon",
    {
      "SpriteIndex",
      24
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    },
    {
      "Scale",
      V2D(0.6, 0.6)
    }
  },
  AttributeBackground4 = {
    ItemClass = "EnemyAttributeWeapon",
    {
      "SpriteIndex",
      25
    },
    {
      "Color",
      Color(251, 55, 0, 255)
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  AttributeWeapon4 = {
    ItemClass = "EnemyAttributeWeapon",
    {
      "SpriteIndex",
      60
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  AttributeBackground5 = {
    ItemClass = "EnemyAttributeWeapon",
    {
      "SpriteIndex",
      25
    },
    {
      "Color",
      Color(169, 198, 255, 255)
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  AttributeWeapon5 = {
    ItemClass = "EnemyAttributeWeapon",
    {
      "SpriteIndex",
      62
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  AttributeBackground6 = {
    ItemClass = "EnemyAttributeWeapon",
    {
      "SpriteIndex",
      43
    },
    {"Alpha", 128}
  },
  AttributeWeapon6 = {
    ItemClass = "EnemyAttributeWeapon",
    {
      "SpriteIndex",
      24
    },
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    },
    {
      "Scale",
      V2D(0.6, 0.6)
    }
  },
  AttributeWeapon7 = {
    ItemClass = "EnemyAttributeWeapon",
    {
      "SpriteIndex",
      46
    },
    {
      "fPos",
      V2D(0.92, 0.83)
    },
    {
      "Color",
      Color(255, 116, 233, 255)
    },
    {
      "Scale",
      V2D(1, 1)
    },
    {"Angle", -30},
    {
      "ShaderFilterMask",
      Scorer.SPR2D_FILTER_ALPHALUMINANCE
    }
  },
  AttributeLevel1_1 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel1_2 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel1_3 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel1_4 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel1_5 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel1_6 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel1_7 = {
    ItemClass = "EnemyAttributeLevel",
    {
      "fPos",
      V2D(0.946, 0.79)
    }
  },
  AttributeLevel2_1 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel2_2 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel2_3 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel2_4 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel2_5 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel2_6 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel2_7 = {
    ItemClass = "EnemyAttributeLevel",
    {
      "fPos",
      V2D(0.946, 0.825)
    }
  },
  AttributeLevel3_1 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel3_2 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel3_3 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel3_4 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel3_5 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel3_6 = {
    ItemClass = "EnemyAttributeLevel"
  },
  AttributeLevel3_7 = {
    ItemClass = "EnemyAttributeLevel",
    {
      "fPos",
      V2D(0.946, 0.862)
    }
  },
  Damage = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.55, 0.7)
    },
    {"Text", "Damage"},
    {"Align", "Left"}
  },
  LeftMenuArrowLeft = {
    ItemClass = "AdornmentE",
    {"Angle", 180}
  },
  LeftMenuArrowRight = {ItemClass = "AdornmentE"},
  RightMenuArrowLeft = {
    ItemClass = "AdornmentE",
    {"Angle", 180},
    {
      "Scale",
      V2D(0.4, 0.4)
    }
  },
  RightMenuArrowRight = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.4, 0.4)
    }
  },
  ScrollListArrowDown = {
    ItemClass = "AdornmentG",
    {"Angle", 90}
  },
  ScrollListArrowUp = {
    ItemClass = "AdornmentG",
    {"Angle", -90}
  },
  ScrollListLineShadow = {
    ItemClass = "BookSprite",
    {
      "SpriteIndex",
      47
    },
    {
      "OnRender",
      "TravelBook.OnRenderScrollListShadow"
    },
    {
      "Scale",
      V2D(4, 0.5)
    },
    {
      "Pivot",
      V2D(0.12, -0.1)
    }
  },
  NewIcon = {
    ItemClass = "BookSprite",
    {
      "SpriteIndex",
      31
    },
    {
      "Scale",
      V2D(0.6, 0.6)
    },
    {
      "Pivot",
      V2D(0, 0)
    },
    {
      "OnRender",
      "TravelBook.OnRenderNewIcon"
    }
  },
  NewIconOutside = {
    ItemClass = "BookSprite",
    {
      "SpriteIndex",
      31
    },
    {
      "Scale",
      V2D(0.6, 0.6)
    },
    {
      "Pivot",
      V2D(0, 0)
    },
    {"Outside", 1},
    {
      "OnRender",
      "TravelBook.OnRenderNewIconOutside"
    },
    {"Persistent", 1}
  },
  MenuCrossA1 = {ItemClass = "AdornmentE"},
  MenuCrossA2 = {ItemClass = "AdornmentE"},
  MenuCrossA3 = {ItemClass = "AdornmentE"},
  MenuCrossA4 = {ItemClass = "AdornmentE"},
  MenuCrossA5 = {ItemClass = "AdornmentE"},
  MenuCrossA6 = {ItemClass = "AdornmentE"},
  MenuCrossA7 = {
    ItemClass = "AdornmentA",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossA8 = {
    ItemClass = "AdornmentA",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossA9 = {
    ItemClass = "AdornmentA",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossA10 = {
    ItemClass = "AdornmentA",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossA11 = {
    ItemClass = "AdornmentF",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossA12 = {
    ItemClass = "AdornmentF",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossA13 = {
    ItemClass = "AdornmentF",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossA14 = {
    ItemClass = "AdornmentF",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossA15 = {
    ItemClass = "BookSprite",
    {
      "SpriteIndex",
      12
    },
    {
      "Scale",
      V2D(0.74, 0.74)
    }
  },
  MenuCrossB1 = {ItemClass = "AdornmentH"},
  MenuCrossB2 = {ItemClass = "AdornmentH"},
  MenuCrossB3 = {ItemClass = "AdornmentH"},
  MenuCrossB4 = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.7, 0.7)
    },
    {
      "Pivot",
      V2D(1.1, 0.5)
    }
  },
  MenuCrossB5 = {ItemClass = "AdornmentH"},
  MenuCrossB6 = {ItemClass = "AdornmentH"},
  MenuCrossB7 = {ItemClass = "AdornmentH"},
  MenuCrossB8 = {ItemClass = "AdornmentH"},
  MenuCrossB9 = {
    ItemClass = "AdornmentA",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossB10 = {
    ItemClass = "AdornmentA",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossB11 = {
    ItemClass = "AdornmentA",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossB12 = {
    ItemClass = "AdornmentA",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossB13 = {
    ItemClass = "AdornmentA",
    {
      "fPos",
      V2D(0.75, 0.735)
    },
    {"Angle", 180}
  },
  MenuCrossB14 = {
    ItemClass = "AdornmentG",
    {
      "fPos",
      V2D(0.75, 0.85)
    },
    {"Angle", 90}
  },
  MenuCrossB15 = {
    ItemClass = "AdornmentH",
    {
      "fPos",
      V2D(0.75, 0.9)
    },
    {"Angle", 90}
  },
  MenuCrossB16 = {
    ItemClass = "BookSprite",
    {
      "SpriteIndex",
      30
    },
    {
      "Scale",
      V2D(0.89, 0.89)
    }
  },
  MenuCrossC1 = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossC2 = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossC3 = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossC4 = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossC5 = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossC6 = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossC7 = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossC8 = {
    ItemClass = "AdornmentE",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossC9 = {
    ItemClass = "AdornmentA",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossC10 = {
    ItemClass = "AdornmentA",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossC11 = {
    ItemClass = "AdornmentA",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossC12 = {
    ItemClass = "AdornmentA",
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossC13 = {
    ItemClass = "AdornmentA",
    {
      "fPos",
      V2D(0.75, 0.73)
    },
    {"Angle", 180}
  },
  MenuCrossC14 = {
    ItemClass = "AdornmentE",
    {
      "fPos",
      V2D(0.75, 0.84)
    },
    {"Angle", 90},
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  MenuCrossC15 = {
    ItemClass = "BookSprite",
    {
      "SpriteIndex",
      30
    },
    {
      "Scale",
      V2D(0.89, 0.89)
    }
  },
  AchievementsMain = {
    ItemClass = "Text",
    {"Text", ""}
  },
  AchievementsTitle = {
    ItemClass = "Text",
    {
      "Text",
      "TBook_Title_Achievements"
    },
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.25, 0.1)
    }
  },
  AchievementName = {
    ItemClass = "Text",
    {
      "Font",
      TravelBook.Fonts.AchievementsTittle
    },
    {"Text", ""},
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.75, 0.28)
    },
    {"Visible", 0}
  },
  AchievementIcon = {
    ItemClass = "TrophySprite",
    {
      "fPos",
      V2D(0.667, 0.365)
    },
    {
      "File",
      "2D/Menu/dds/TROP001.dds"
    }
  },
  AchievementDesc = {
    ItemClass = "Text",
    {
      "Font",
      TravelBook.Fonts.AchievementsDesc
    },
    {"Text", ""},
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.75, 0.7)
    },
    {"Visible", 0}
  },
  AchievementDesc2 = {
    ItemClass = "Text",
    {
      "Font",
      TravelBook.Fonts.AchievementsDesc
    },
    {"Text", ""},
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.75, 0.77)
    },
    {"Visible", 0}
  },
  AchievementDesc3 = {
    ItemClass = "Text",
    {
      "Font",
      TravelBook.Fonts.AchievementsDesc
    },
    {"Text", ""},
    {"Align", "Center"},
    {
      "fPos",
      V2D(0.75, 0.84)
    },
    {"Visible", 0}
  },
  AchievementsGot = {
    ItemClass = "Text",
    {
      "fPos",
      V2D(0.25, 0.21)
    },
    {"Align", "Center"},
    {
      "Text",
      "TBook_Action_Available_Points_Title"
    },
    {
      "Font",
      TravelBook.Fonts.Title
    }
  }
}
TravelBookItems.ItemClasses = {
  CloseButton = {
    Type = "Text",
    {
      "Font",
      TravelBook.Fonts.Label
    },
    {"Align", "Left"},
    {
      "Text",
      "[[B]] / [[Back]] Close"
    }
  },
  SelectButton = {
    Type = "Text",
    {
      "Font",
      TravelBook.Fonts.Label
    },
    {"Align", "Left"},
    {
      "Text",
      "[[A]] Select"
    }
  },
  Text = {
    Type = "Text",
    {
      "Font",
      TravelBook.Fonts.Default
    },
    {"Align", "Left"},
    {
      "Color",
      TravelBookItems.TextColor
    }
  },
  Rectangle = {
    Type = "Sprite",
    {
      "File",
      "2D/White.alpha.tga"
    }
  },
  DescriptionText = {
    Type = "TextScroller",
    {
      "fPos",
      V2D(0.05, 0.3)
    },
    {"MaxLines", 10},
    {"FirstLine", 0},
    {"LineStep", 25},
    {
      "LineSplitSize",
      300
    },
    {
      "BoldFont",
      TravelBook.Fonts.ParagraphTitle
    },
    {
      "BoldColor",
      Menu.ItemColor
    },
    {
      "IndentFont",
      TravelBook.Fonts.Paragraph
    },
    {
      "IndentColor",
      Menu.ItemColor
    },
    {
      "onUp",
      "TravelBook.ScrollUpDescription"
    },
    {
      "onDown",
      "TravelBook.ScrollDownDescription"
    },
    {
      "Size",
      V2D(1, 1)
    }
  },
  Video = {
    Type = "Video",
    {
      "File",
      "2D/Menu/RenderMask.alpha.tga"
    },
    {
      "ShaderFilterMask",
      1
    },
    {"Unit", 1}
  },
  Image = {
    Type = "Sprite",
    {"Unit", 1}
  },
  HUDSprite = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      "2D/HUD/dds/HUD.alpha.dds"
    },
    {
      "OnGainFocus",
      "TravelBook.OnImageGainFocus"
    },
    {
      "OnLooseFocus",
      "TravelBook.OnImageLooseFocus"
    },
    {
      "Size",
      V2D(1, 1)
    },
    {
      "Pivot",
      V2D(0.5, 0.5)
    }
  },
  BookSprite = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      TravelBook.BookFile
    },
    {
      "Pivot",
      V2D(0.5, 0.5)
    }
  },
  BookSpriteSelectable = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      TravelBook.BookFile
    },
    {
      "Pivot",
      V2D(0.5, 0.5)
    },
    {
      "Size",
      V2D(1, 1)
    },
    {
      "OnGainFocus",
      "TravelBook.OnImageGainFocus"
    },
    {
      "OnLooseFocus",
      "TravelBook.OnImageLooseFocus"
    }
  },
  MGSprite = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      TravelBook.MiniGamesFile
    },
    {
      "Pivot",
      V2D(0.5, 0.5)
    }
  },
  Gem = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      TravelBook.MiniGamesFile
    },
    {
      "Pivot",
      V2D(0.5, 1)
    },
    {
      "Scale",
      V2D(0.5, 0.5)
    },
    {"Visible", 0}
  },
  AdornmentA = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      TravelBook.BookFile
    },
    {
      "Pivot",
      V2D(0.5, 0.5)
    },
    {
      "SpriteIndex",
      15
    },
    {
      "Scale",
      V2D(0.6, 0.6)
    }
  },
  AdornmentB = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      TravelBook.BookFile
    },
    {
      "Pivot",
      V2D(0, 0)
    },
    {
      "SpriteIndex",
      1
    },
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  AdornmentC = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      TravelBook.BookFile
    },
    {
      "Pivot",
      V2D(0.5, 0)
    },
    {
      "SpriteIndex",
      11
    },
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  AdornmentD = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      TravelBook.BookFile
    },
    {
      "Pivot",
      V2D(0.5, 0)
    },
    {
      "SpriteIndex",
      6
    },
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  AdornmentE = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      TravelBook.BookFile
    },
    {
      "Pivot",
      V2D(1, 0.5)
    },
    {
      "SpriteIndex",
      10
    },
    {
      "Scale",
      V2D(0.6, 0.6)
    }
  },
  AdornmentF = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      TravelBook.BookFile
    },
    {
      "Pivot",
      V2D(1, 0.5)
    },
    {
      "SpriteIndex",
      14
    },
    {
      "Scale",
      V2D(0.8, 0.8)
    }
  },
  AdornmentG = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      TravelBook.BookFile
    },
    {
      "Pivot",
      V2D(1, 0.5)
    },
    {
      "SpriteIndex",
      4
    },
    {
      "Scale",
      V2D(0.7, 0.7)
    }
  },
  AdornmentH = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      TravelBook.BookFile
    },
    {
      "Pivot",
      V2D(1, 0.5)
    },
    {
      "SpriteIndex",
      9
    },
    {
      "Scale",
      V2D(0.8, 0.8)
    }
  },
  EnemyAttributeWeapon = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      "2D/HUD/dds/HUD.alpha.dds"
    },
    {
      "Scale",
      V2D(0.7, 0.7)
    },
    {
      "Pivot",
      V2D(0.5, 0.5)
    },
    {
      "SpriteIndex",
      59
    }
  },
  EnemyAttributeLevel = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      TravelBook.BookFile
    },
    {
      "Scale",
      V2D(0.6, 0.6)
    },
    {
      "Pivot",
      V2D(0.5, 0.5)
    }
  },
  ItemQuantity = {
    Type = "Text",
    {
      "Font",
      TravelBook.Fonts.ItemQuantity
    },
    {"Align", "Left"},
    {"Effect", "Darkness"},
    {"Alpha", 64},
    {"Visible", 0}
  },
  CrystalPiece = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      1
    },
    {
      "File",
      "2D/HUD/dds/HUD.alpha.dds"
    },
    {
      "Pivot",
      V2D(0.5, 0.5)
    },
    {
      "fPos",
      V2D(0.65, 0.33)
    },
    {"Alpha", 128},
    {
      "uDataIsNavigationDisabled",
      true
    }
  },
  TrophySprite = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      0
    },
    {
      "Pivot",
      V2D(0.5, 0.5)
    },
    {"Visible", 0}
  },
  GreyTrophySprite = {
    Type = "Sprite",
    {
      "IsMultiSprite",
      0
    },
    {
      "Pivot",
      V2D(0.5, 0.5)
    },
    {"Visible", 0}
  }
}
TravelBookItems.UDLists = {
  {
    "BasicActions",
    "AdvancedMoves",
    "SecondaryWeapons",
    "Mounts",
    "RelicPowers",
    "LaurasMoves"
  },
  {
    "MainCharsText",
    "MonstersText"
  }
}
TravelBookItems.Arrangements = {
  ItemLeftPageOuter = {
    {
      "ItemAdornment8",
      "ItemAdornment9"
    },
    {
      "ItemAdornment10",
      "ItemAdornment11"
    }
  },
  ItemLeftPageMedalsLower = {
    {
      "ItemAdornment12",
      "ItemAdornment13"
    },
    {
      "ItemAdornment14",
      "ItemAdornment15"
    }
  },
  ItemScrollsUpper = {
    {
      "ItemAdornment16",
      "ItemAdornment17",
      "ItemAdornment18",
      "ItemAdornment19",
      "ItemAdornment20",
      "ItemAdornment21"
    }
  },
  ItemScrollsInner = {
    {
      "ItemAdornment22",
      "ItemAdornment23",
      "ItemAdornment24"
    }
  },
  ItemSecondaryWeaponsOuter = {
    {
      "ItemAdornment28",
      "ItemAdornment29"
    }
  },
  ItemSecondaryWeaponsInner = {
    {
      "ItemAdornment7",
      "ItemAdornment4"
    },
    {
      "ItemAdornment6",
      "ItemAdornment5"
    }
  },
  ItemCompassRoseAdornments = {
    {
      nil,
      "ItemAdornment36",
      nil
    },
    {
      "ItemAdornment39",
      nil,
      "ItemAdornment37"
    },
    {
      nil,
      "ItemAdornment38",
      nil
    }
  },
  ItemSecondaryWeaponsLateral = {
    {
      "ItemAdornment40",
      "ItemAdornment41"
    },
    {
      "ItemAdornment30",
      "ItemAdornment31"
    }
  },
  ItemSecondaryWeaponsLower = {
    {
      "ItemAdornment42",
      "ItemAdornment43"
    }
  },
  ItemsRightPageLowerA = {
    {
      "ItemAdornment44",
      "ItemAdornment45",
      "ItemAdornment46",
      "ItemAdornment47"
    }
  },
  ItemsRightPageLowerB = {
    {
      "ItemAdornment48",
      "ItemAdornment49",
      "ItemAdornment50",
      "ItemAdornment51"
    }
  },
  ItemsRightPageLowerC = {
    {
      "ItemAdornment52",
      "ItemAdornment53",
      "ItemAdornment54",
      "ItemAdornment55"
    }
  },
  ItemsScrolls = {
    {
      "Scroll1Image",
      "Scroll2Image",
      "Scroll3Image",
      "Scroll4Image"
    }
  },
  DescriptionLeftPageOuter = {
    {
      "ItemAdornment57",
      nil
    },
    {
      "ItemAdornment58",
      "ItemAdornment59"
    }
  },
  DescriptionLeftPageLower = {
    {
      "ItemAdornment61",
      "ItemAdornment62"
    }
  },
  DescriptionRightPageOuter = {
    {
      "ItemAdornment66",
      "ItemAdornment67"
    },
    {
      "ItemAdornment68",
      "ItemAdornment69"
    }
  },
  DescriptionRightPageMiddleUpper = {
    {
      "ItemAdornment70",
      "ItemAdornment71"
    }
  },
  DescriptionRightPageMiddleLower = {
    {
      "ItemAdornment72",
      "ItemAdornment73"
    }
  },
  DescriptionRightPageMiddleTopLower = {
    {
      "ItemAdornment105",
      "ItemAdornment106"
    }
  },
  ActionsLeftPageOuter = {
    {
      "ItemAdornment75",
      "ItemAdornment78"
    },
    {
      "ItemAdornment76",
      "ItemAdornment77"
    }
  },
  ActionsLeftPageInner = {
    {
      nil,
      "ItemAdornment79"
    },
    {
      "ItemAdornment80",
      "ItemAdornment81"
    }
  },
  ActionsRightPageOuter = {
    {
      "ItemAdornment84",
      "ItemAdornment85"
    },
    {
      "ItemAdornment86",
      "ItemAdornment87"
    }
  },
  ActionsRightPageInner = {
    {
      "ItemAdornment88",
      "ItemAdornment89"
    }
  },
  ActionsRightPageListOuter = {
    {
      "ItemAdornment140",
      "ItemAdornment141"
    }
  },
  ActionsRightPageListInner = {
    {
      "ItemAdornment144",
      "ItemAdornment145"
    }
  },
  ActionsPointsFrame = {
    {
      "ItemAdornment148",
      "ItemAdornment149"
    },
    {
      "ItemAdornment150",
      "ItemAdornment151"
    }
  },
  ActionsPointsFrameLines = {
    {
      "ItemAdornment136",
      "ItemAdornment138"
    },
    {
      "ItemAdornment137",
      "ItemAdornment139"
    }
  },
  ActionsPointsFrameSides = {
    {
      "ItemAdornment134",
      "ItemAdornment135"
    }
  },
  CharsLeftPageOuter = {
    {
      "ItemAdornment90",
      "ItemAdornment93"
    },
    {
      "ItemAdornment91",
      "ItemAdornment92"
    }
  },
  CharsLeftPageInner = {
    {
      nil,
      "ItemAdornment94"
    },
    {
      "ItemAdornment95",
      "ItemAdornment96"
    }
  },
  CharsRightPageOuter = {
    {
      "ItemAdornment99",
      "ItemAdornment100"
    },
    {
      "ItemAdornment101",
      "ItemAdornment102"
    }
  },
  CharsRightPageInner = {
    {
      "ItemAdornment103",
      "ItemAdornment104"
    }
  },
  CharsAttributesWeapons = {
    {
      "AttributeWeapon1",
      "AttributeWeapon2",
      "AttributeWeapon3"
    },
    {
      "AttributeWeapon4",
      "AttributeWeapon5",
      "AttributeWeapon6"
    }
  },
  CharsAttributesLevelsTop = {
    {
      "AttributeLevel1_1",
      "AttributeLevel1_2",
      "AttributeLevel1_3"
    },
    {
      "AttributeLevel1_4",
      "AttributeLevel1_5",
      "AttributeLevel1_6"
    }
  },
  CharsAttributesLevelsMiddle = {
    {
      "AttributeLevel2_1",
      "AttributeLevel2_2",
      "AttributeLevel2_3"
    },
    {
      "AttributeLevel2_4",
      "AttributeLevel2_5",
      "AttributeLevel2_6"
    }
  },
  CharsAttributesLevelsBottom = {
    {
      "AttributeLevel3_1",
      "AttributeLevel3_2",
      "AttributeLevel3_3"
    },
    {
      "AttributeLevel3_4",
      "AttributeLevel3_5",
      "AttributeLevel3_6"
    }
  },
  CharsEnemyAttributesH = {
    {
      "ItemAdornment107"
    },
    {
      "ItemAdornment108"
    }
  },
  CharsEnemyAttributesVOuter = {
    {
      "ItemAdornment109",
      "ItemAdornment110",
      "ItemAdornment111"
    },
    {
      "ItemAdornment112",
      "ItemAdornment113",
      "ItemAdornment114"
    }
  },
  CharsEnemyAttributesVInner = {
    {
      "ItemAdornment115",
      "ItemAdornment116",
      "ItemAdornment117"
    },
    {
      "ItemAdornment118",
      "ItemAdornment119",
      "ItemAdornment120"
    }
  },
  MenuLeftPageOuter = {
    {
      "ItemAdornment75",
      "ItemAdornment78"
    },
    {
      "ItemAdornment76",
      "ItemAdornment77"
    }
  },
  MenuLeftPageInner = {
    {
      "ItemAdornment128",
      "ItemAdornment129"
    },
    {
      "ItemAdornment80",
      "ItemAdornment81"
    }
  },
  MenuRightPageOuter = {
    {
      "ItemAdornment84",
      "ItemAdornment85"
    },
    {
      "ItemAdornment86",
      "ItemAdornment87"
    }
  },
  MenuRightPageInner = {
    {
      "ItemAdornment88",
      "ItemAdornment89"
    },
    {
      "ItemAdornment122",
      "ItemAdornment123"
    }
  },
  MenuLeftPageMiddle = {
    {
      "ItemAdornment124",
      "ItemAdornment125"
    }
  },
  MenuRightPageMiddle = {
    {
      "ItemAdornment126",
      "ItemAdornment127"
    }
  }
}
TravelBookItems.NewMarkableItems = {
  "Scroll1Image",
  "Scroll2Image",
  "Scroll3Image",
  "Scroll4Image",
  "ItemMedallionDark",
  "ItemMedallionLife",
  "ItemMedallionLight",
  "GauntletImage",
  "BootsImage",
  "WingsImage",
  "MainLButtonIcon",
  "MainRButtonIcon",
  "BasicActions",
  "AdvancedMoves",
  "SecondaryWeapons",
  "Mounts",
  "RelicPowers",
  "LaurasMoves",
  "MainCharsText",
  "MonstersText",
  "FairiesImage",
  "DaggerImage",
  "VialsImage",
  "CrystalsImage",
  "CrossBodyImage",
  "CrossChainImage",
  "CrossHookImage",
  "CrossStakeImage"
}
