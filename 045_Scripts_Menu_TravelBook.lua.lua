TravelBook.BookFile = "2D/Menu/BOOK_Lacerias.alpha.tga"
TravelBook.DefaultBackground = "2D/Loading/PapelLibro-D.dds"
TravelBook.BackgroundsPath = "2D/Loading/Book/"
TravelBook.ActionsVideoPath = "Video/TBook/"
TravelBook.DLC1ActionsVideoPath = "Video/DLC1/TBook/"
TravelBook.LeftMenuNewIconOffset = V2D(-11, -1)
TravelBook.ScrollExtensionPollInterval = 5
TravelBook.LastScrollTime = 0
if "PS3" == Game.Get("Platform") then
  TravelBook.MiniGamesFile = "2D/HUD/HUDps3mg.alpha.tga"
elseif Game.Get("Platform") == "X360" then
  TravelBook.MiniGamesFile = "2D/HUD/HUDxboxmg.alpha.tga"
else
  TravelBook.MiniGamesFile = "2D/HUD/HUDpcmg.alpha.tga"
end
if Game.Get("PreloadMode") == 0 then
  TravelBook.MinUpperLeft = V2D(-64, 0)
  TravelBook.MaxLowerRight = V2D(704, 480)
  TravelBook.InactiveColor = Color(150, 150, 150)
  TravelBook.ActionPriceUnaffordableColor = Color(90, 24, 24)
  TravelBook.ActionPriceAffordableColor = Color(27, 78, 5)
  TravelBook.Fonts = {
    Default = "Horatio",
    Title = "HoratioSmall",
    Paragraph = "HoratioLittle",
    ParagraphTitle = "HoratioLittle",
    MenuLeft = "Horatio",
    MenuRight = "HoratioLittle",
    MenuRightSubLine = "HoratioLittle",
    DescriptionTitle = "Horatio",
    Items = "HoratioSmall",
    Label = "Message",
    CharHeaderBig = "HoratioSmall",
    CharHeaderMedium = "HoratioLittle",
    CharHeaderSmall = "HoratioTiny",
    ActionConstraint = "HoratioLittle",
    ActionKeys = "HoratioTiny",
    ActionBuyDialog = "HoratioLittle",
    ActionBuyButton = "HoratioSmall",
    AvailablePointsFrame = "Horatio",
    MiniMapLegend = "HoratioLittle",
    ItemQuantity = "HoratioLittle",
    AchievementsTittle = "Horatio",
    AchievementsDesc = "HoratioSmall"
  }
  TravelBook.ScrollList = {
    FirstLine = 1,
    SelectedLine = 1,
    nDisplayedLines = 7,
    LineSeparation = V2D(0, 0.07),
    SubLineSeparation = -1,
    SubLineX = 625,
    IndentOffset = V2D(0.1, 0),
    IndentArrowOffset = V2D(-45, 9),
    IndentVSeparationReduction = 0.02,
    FirstPosition = V2D(0.58, 0.24),
    Offset = V2D(),
    NewIconOffset = V2D(-13, 2),
    ArrowNames = {
      "ScrollListArrowUp",
      "ScrollListArrowDown"
    },
    ArrowOffsets = {-0.1, 0.14},
    ArrowsX = 0.75,
    List = {},
    Delete = function(this)
      local line = table.remove(this.List)
      while line do
        if line.uData.SubLine then
          line.uData.SubLine:Del()
        end
        line:Del()
        line = table.remove(this.List)
      end
      this.FirstLine = 1
      this.SelectedLine = 1
      TravelBook.GetItem(this.ArrowNames[1]).Visible = 0
      TravelBook.GetItem(this.ArrowNames[2]).Visible = 0
      TravelBook.ClearActionStatusIcons()
      this:ClearIndentArrows()
      this.NextIndentArrowIndex = 1
      this.IsEnabled = false
    end,
    NewLine = function(this, lineName, lineText)
      local newLine = Scorer.NewItem(0, lineName, "Text", 1)
      newLine.Font = TravelBook.Fonts.MenuRight
      newLine.Align = "Left"
      newLine.Text = lineText or lineName
      newLine.OnUp = "TravelBook.ScrollListUp"
      newLine.OnDown = "TravelBook.ScrollListDown"
      newLine.OnAccept = "TravelBook.GoToDescriptionPage"
      newLine.OnGainFocus = "TravelBook.UpdateScrollListHUD"
      newLine.onLeft = "TravelBook.BackToLeftMenu"
      newLine.Color = TravelBookItems.TextColor
      newLine.UseAlpha = 1
      newLine.uData.NewIconOffset = this.NewIconOffset
      table.insert(this.List, newLine)
      return newLine
    end,
    Update = function(this, doNotSelect)
      TravelBook.ClearActionStatusIcons()
      this:ClearIndentArrows()
      local numberIndentedLines = 0
      if this.List[this.FirstLine] and this.List[this.FirstLine].uData.IsIndented then
        if this.SelectedLine == this.FirstLine + this.nDisplayedLines - 1 then
          this.FirstLine = this.FirstLine + 1
        else
          this.FirstLine = this.FirstLine - 1
        end
      end
      for i, line in pairs(this.List) do
        if i < this.FirstLine or i >= this.FirstLine + this.nDisplayedLines then
          line.Visible = 0
          if line.uData.SubLine then
            line.uData.SubLine.Visible = 0
          end
        else
          line.Visible = 1
          local linePosition = this.FirstPosition + this.Offset + (i - this.FirstLine) * this.LineSeparation
          linePosition.y = linePosition.y - numberIndentedLines * this.IndentVSeparationReduction
          if line.uData.IsIndented then
            linePosition = linePosition + this.IndentOffset - V2D(0, this.IndentVSeparationReduction)
            numberIndentedLines = numberIndentedLines + 1
            TravelBook.ApplyProperty(line, {"fPos", linePosition})
            this:CreateIndentArrow(line)
          else
            TravelBook.ApplyProperty(line, {"fPos", linePosition})
          end
          if line.uData.SubLine then
            line.uData.SubLine.Visible = 1
            line.uData.SubLine.Pos = V2D(this.SubLineX, line.Pos.y + this.SubLineSeparation)
          end
          if not doNotSelect and i == this.SelectedLine then
            Scorer.SetDefault(0, line.Name)
            TravelBook.MarkMenuSelection("Right")
          end
          if line.uData.IsDisabled then
            TravelBook.MarkActionState(line.Name, true)
          elseif line.uData.IsBuyable then
            TravelBook.MarkActionPrice(line.Name)
          elseif line.uData.IsAvailable then
            TravelBook.MarkActionState(line.Name)
          elseif line.uData.IsArtworkBuyable then
            Artwork.MarkPrice(line.Name)
          end
        end
      end
      local upArrow = TravelBook.GetItem(this.ArrowNames[1])
      local downArrow = TravelBook.GetItem(this.ArrowNames[2])
      if this.FirstLine == 1 then
        TravelBook.ClearScrollArrow(upArrow)
      else
        upArrow.Visible = 1
        local position = V2D(this.ArrowsX, this.FirstPosition.y + this.ArrowOffsets[1] + this.Offset.y)
        TravelBook.ApplyProperty(upArrow, {"fPos", position})
      end
      if #this.List <= this.nDisplayedLines or this.FirstLine + this.nDisplayedLines - 1 == #this.List then
        TravelBook.ClearScrollArrow(downArrow)
      else
        downArrow.Visible = 1
        local position = V2D(this.ArrowsX, this.FirstPosition.y + this.ArrowOffsets[2] + this.Offset.y + this.LineSeparation.y * (this.nDisplayedLines - 1))
        TravelBook.ApplyProperty(downArrow, {"fPos", position})
        if this.List[this.FirstLine].uData.IsArtworkLine then
          downArrow.Pos = V2D(512, 450)
        end
      end
      if doNotSelect then
        upArrow.Alpha = 128
        downArrow.Alpha = 128
      else
        upArrow.Alpha = 255
        downArrow.Alpha = 255
      end
    end,
    SelectPrevious = function(this)
      if this.SelectedLine > 1 then
        this.SelectedLine = this.SelectedLine - 1
      end
      if this.SelectedLine < this.FirstLine then
        this.FirstLine = this.FirstLine - 1
        local upArrow = TravelBook.GetItem(this.ArrowNames[1])
        upArrow.OnRender = "TravelBook.OnRenderScrollArrow"
        upArrow.uData.GlowRemainTime = 0.5
      end
      this:Update()
    end,
    SelectNext = function(this)
      if this.SelectedLine < #this.List then
        this.SelectedLine = this.SelectedLine + 1
      end
      if this.SelectedLine >= this.FirstLine + this.nDisplayedLines then
        this.FirstLine = this.FirstLine + 1
        local downArrow = TravelBook.GetItem(this.ArrowNames[2])
        downArrow.OnRender = "TravelBook.OnRenderScrollArrow"
        downArrow.uData.GlowRemainTime = 0.5
      end
      this:Update()
    end,
    Enable = function(this, isEnabled)
      for i, line in pairs(this.List) do
        if isEnabled then
          local sizeX, sizeY = Scorer.GetTextArea(TravelBook.Fonts.MenuRight, line.Text)
          line.Size = V2D(sizeX, sizeY)
          line.Alpha = 255
        else
          line.Alpha = 128
          line.Size = V2D(0, 0)
        end
        if line.uData.SubLine then
          line.uData.SubLine.UseAlpha = 1
          line.uData.SubLine.Alpha = line.Alpha
        end
      end
      if isEnabled then
        this:Update()
      end
      this.IsEnabled = isEnabled
    end,
    SetSelectedLine = function(this, lineIndex)
      this.SelectedLine = lineIndex
      this.FirstLine = math.max(1, lineIndex - math.floor(this.nDisplayedLines / 2))
      if this.FirstLine + this.nDisplayedLines > #this.List then
        this.FirstLine = math.max(1, #this.List - this.nDisplayedLines + 1)
      end
      this:Update()
    end,
    SetSelectedLineIf = function(this, conditionFunction)
      for lineIndex, line in ipairs(this.List) do
        if conditionFunction(line) then
          this.SetSelectedLine(this, lineIndex)
          return true
        end
      end
      return false
    end,
    LockInput = function(this)
      local selectedLine = this.List[this.SelectedLine]
      selectedLine.OnAccept = ""
      selectedLine.Down = ""
      selectedLine.Up = ""
      Scorer.SetOnCancel(0, "")
    end,
    GetSelectedLineName = function(this)
      if this.SelectedLine and this.List[this.SelectedLine] then
        return this.List[this.SelectedLine].Name
      end
    end,
    CreateIndentArrow = function(this, line)
      if nil == this.IndentArrows then
        this.IndentArrows = {}
        this.NextIndentArrowIndex = 1
      end
      local arrow = Scorer.NewItem(0, "IndentArrow" .. this.NextIndentArrowIndex, "Sprite")
      this.NextIndentArrowIndex = this.NextIndentArrowIndex + 1
      arrow.IsMultiSprite = 1
      arrow.File = TravelBook.BookFile
      arrow.Pivot = V2D(0.5, 0.5)
      arrow.SpriteIndex = 35
      arrow.Scale = V2D(0.5, 0.5)
      arrow.Pos = line.Pos + this.IndentArrowOffset
      table.insert(this.IndentArrows, arrow)
    end,
    ClearIndentArrows = function(this)
      if this.IndentArrows then
        for arrow in function()
          return table.remove(this.IndentArrows)
        end, nil, nil do
          arrow.DelMe = 1
        end
      end
    end,
    SetUpForTab = function(this, tabNumber)
      this.ArrowsX = 0.75
      if 1 == tabNumber then
        this.Offset = V2D(0, 0.12)
        this.nDisplayedLines = 7
        this.LineSeparation = V2D(0, 0.07)
      elseif 3 == tabNumber then
        this.Offset = V2D(0, -0.05)
        this.nDisplayedLines = 8
        this.LineSeparation = V2D(0, 0.085)
      elseif 4 == tabNumber then
        this.Offset = V2D(-0.5, 0.12)
        this.nDisplayedLines = 7
        this.LineSeparation = V2D(0, 0.07)
        this.ArrowsX = 0.25
      end
    end,
    RenderLineShadow = function(this, scorerId, itemName, timeDiff)
      local shadow = Scorer.GetItem(scorerId, itemName)
      shadow.SkipRender = 0
      for lineIndex = 1, #this.List do
        if lineIndex >= this.FirstLine and lineIndex < this.FirstLine + this.nDisplayedLines then
          shadow.Pos = this.List[lineIndex].Pos
          shadow:Render(scorerId)
        end
      end
      shadow.SkipRender = 1
    end,
    RenderNewIcons = function(this, scorerId, newIcon, timeDiff)
      for _, line in ipairs(this.List) do
        if 1 == line.Visible and line.uData.IsNew then
          newIcon.Pos = line.Pos + line.uData.NewIconOffset
          newIcon:Render(scorerId)
        end
      end
    end,
    RenderActionConditionIcons = function(this, scorerId, icon, timeDiff)
      for _, line in ipairs(this.List) do
        if 1 == line.Visible and line.uData.ActionConditionIndices then
          for i, conditionIndex in ipairs(line.uData.ActionConditionIndices) do
            icon.Pos = V2D(650 - i * 20, line.y)
            icon.SpriteIndex = conditionIndex
            icon:Render(scorerId)
          end
        end
      end
    end
  }
end

function TravelBook.PreloadTextures()
  Scorer.PreloadTexture(TravelBook.BookFile, 1)
end

function TravelBook.Preload()
  TravelBook.PreloadTextures()
  TravelBook.CharManager:Preload()
  TravelBook.ActionsManager:Preload()
  TravelBook.ItemsManager:Preload()
  Sound.LoadSound("Sounds/Generic/Menu/ComboBought.wav")
  local gvarBC = Game.CreateGvar("gvBodyCount", "string", "Number of enemy kills per class")
  Game.Log("kill bill creada\n", 2)
  local nOfEnemies = #TravelBook.CharManager.CharTable[1] + #TravelBook.CharManager.CharTable[2]
  gvarBC.Default = "0" .. string.rep(",0", nOfEnemies - 1)
  gvarBC.Value = gvarBC.Default
end

TravelBook.SoundVolumeComboBought = 1

function TravelBook.UpdateLabels()
  local itm = Scorer.GetItem(0, "CharNameTag")
  if itm then
    itm.Text = langstr("TBook_Enemy_Name")
  end
  itm = Scorer.GetItem(0, "CharSizeTag")
  if itm then
    itm.Text = langstr("TBook_Enemy_Size")
  end
  itm = Scorer.GetItem(0, "CharDifficultyTag")
  if itm then
    itm.Text = langstr("TBook_Enemy_Difficulty")
  end
end

function TravelBook.main()
  TravelBook.CharManager:Init()
  TravelBook.ActionsManager:Init()
  TravelBook.ItemsManager:CheckGVar()
  addSF(0, "", "TravelBook.CheckNewItems")
  if "PS3" == Game.Get("Platform") then
    Scorer.AddSprite(0, "TBookMGSprite", "2D/HUD/HUDps3mg.alpha.tga", "Blend", false, true)
  elseif Game.Get("Platform") == "X360" then
    Scorer.AddSprite(0, "TBookMGSprite", "2D/HUD/HUDxboxmg.alpha.tga", "Blend", false, true)
  else
    Scorer.AddSprite(0, "TBookMGSprite", "2D/HUD/HUDpcmg.alpha.tga", "Blend", false, true)
  end
  TravelBook.CreateKillBill()
  TravelBook.CloseBookKey = "Menu_Nav_CloseBook"
end

TravelBook.CharManager = {
  CharTable = {
    {
      {"Gabriel"},
      {"Marie"},
      {"Pan"},
      {"Zobek"},
      {"Claudia"},
      {"Abbot"},
      {
        "VampireChild"
      },
      {"BabaYaga"},
      {"EvilZobek"}
    },
    {
      {
        "LycanthropeLesser",
        "Medium",
        "Low",
        1
      },
      {
        "WargGreatVillage",
        "Big",
        "Medium"
      },
      {
        "WargGreat",
        "Big",
        "Medium",
        1
      },
      {
        "Goblin",
        "Small",
        "Low",
        1
      },
      {
        "Naiad",
        "Small",
        "Medium"
      },
      {
        "TrollBigSwamp",
        "Big",
        "Medium"
      },
      {
        "IceElemental",
        "Giant",
        "High"
      },
      {
        "SpiderGiant",
        "Big",
        "Medium",
        1
      },
      {
        "Warthog",
        "Big",
        "Medium",
        1
      },
      {
        "LycanthropeGreater",
        "Big",
        "Medium",
        1
      },
      {
        "TrollSmall",
        "Small",
        "Low",
        1
      },
      {
        "TrollBig",
        "Big",
        "Medium",
        1
      },
      {
        "Gremlin",
        "Small",
        "Low",
        1
      },
      {
        "StoneIdol",
        "Giant",
        "High"
      },
      {
        "BlackKnight",
        "Medium",
        "High"
      },
      {
        "Darklord1",
        "Medium",
        "High"
      },
      {
        "Darklord1L",
        "Big",
        "High"
      },
      {
        "Ogre",
        "Giant",
        "High"
      },
      {
        "Chupacabra",
        "Small",
        "Low"
      },
      {
        "SwordMaster",
        "Medium",
        "High",
        1
      },
      {
        "Witch",
        "Giant",
        "High"
      },
      {
        "WitchChild",
        "Medium",
        "Medium",
        1
      },
      {
        "Ghoul",
        "Medium",
        "Low",
        1
      },
      {
        "VampireWarrior",
        "Medium",
        "Medium",
        1
      },
      {
        "AnimArmour",
        "Big",
        "Medium",
        1
      },
      {
        "EliteVampA",
        "Big",
        "High"
      },
      {
        "SkeletonWarrior",
        "Medium",
        "Medium",
        1
      },
      {
        "Mandrake",
        "Small",
        "Low",
        1
      },
      {
        "Butcher",
        "Big",
        "High"
      },
      {
        "MechanicalM",
        "Big",
        "High"
      },
      {
        "RagDoll",
        "Big",
        "Medium",
        1
      },
      {
        "EliteVampB",
        "Big",
        "High"
      },
      {
        "Darklord2",
        "Medium",
        "High"
      },
      {
        "Darklord2V",
        "Big",
        "High"
      },
      {
        "FloatingHeads",
        "Medium",
        "Medium",
        1
      },
      {
        "Scarecrow",
        "Big",
        "High",
        1
      },
      {
        "CreepingCorpse",
        "Medium",
        "Low",
        1
      },
      {
        "CreepingCoffin",
        "Big",
        "Medium",
        1
      },
      {
        "SilverWarrior",
        "Big",
        "High"
      },
      {
        "Zombie",
        "Medium",
        "Low",
        1
      },
      {
        "GraveDigger",
        "Big",
        "High"
      },
      {
        "Reaper",
        "Medium",
        "Medium",
        1
      },
      {
        "Necromancer",
        "Medium",
        "High"
      },
      {
        "Dracolich",
        "Giant",
        "High"
      },
      {
        "Satan",
        "Medium",
        "High"
      },
      {
        "Sharktopus",
        "Big",
        "High",
        1
      },
      {
        "_NONE_",
        "Big",
        "High"
      },
      {
        "Legion",
        "Big",
        "High"
      }
    }
  },
  CharAttributeInfo = {
    {
      "WeaponsDagger.DaggerDamages",
      {
        0,
        0.2,
        0.5,
        1,
        2,
        3
      }
    },
    {
      "TravelBook.TimeCrazyByFairyTable",
      {
        0,
        4,
        6,
        8,
        10,
        12
      }
    },
    {
      "WeaponsVial.EnemyMult",
      {
        0,
        0.2,
        0.5,
        1,
        2,
        3
      }
    },
    {
      "WeaponsDagger.DarkDaggerDamages",
      {
        0,
        0.2,
        0.5,
        1,
        2,
        3
      }
    },
    {
      "WeaponsFairy.TableDamages",
      {
        0,
        20,
        50,
        80,
        140,
        200
      }
    },
    {
      "WeaponsVial.ProtectionMult",
      {
        1,
        0.8,
        0.6,
        0.4,
        0.2,
        0
      }
    },
    {
      "WeaponsCrystal.ExplosionDamages",
      {
        0,
        100,
        250,
        500,
        1000,
        2000
      }
    }
  },
  GVCharStatusName = "gvTBookCharStatus",
  ByteValues = {
    Locked = 32,
    UnLocked = 33,
    New = 34,
    Max = 126
  },
  Preload = function(this)
    local gvCharStatus = Game.CreateGvar(this.GVCharStatusName, "string", "Chars status for travel book")
    local initialValue = string.rep(string.char(this.ByteValues.Locked), #this.CharTable[1] + #this.CharTable[2])
    gvCharStatus.Value = initialValue
    gvCharStatus.Default = initialValue
  end,
  Init = function(this)
    this.CharsList = {}
    this.KillsNeeded = {}
    this.EnemyCategories = {}
    this.Aliases = {
      RedReaper = "Reaper",
      BlueReaper = "Reaper",
      GhoulDLC = "Ghoul",
      SkeletonFlame = "SkeletonWarrior"
    }
    local gvCharStatus = SaveGame.AddToGvar(this.GVCharStatusName)
    local numChars = #this.CharTable[1] + #this.CharTable[2]
    local diff = numChars - #gvCharStatus.Value
    if numChars > #gvCharStatus.Value then
      for i = 1, diff do
        gvCharStatus.Value = gvCharStatus.Value .. string.char(this.ByteValues.Locked)
      end
    end
    for i = 1, #this.CharTable do
      for j = 1, #this.CharTable[i] do
        table.insert(this.CharsList, this.CharTable[i][j][1])
        if this.CharTable[i][j][4] then
          this.KillsNeeded[this.CharTable[i][j][1]] = this.CharTable[i][j][4]
        end
        if this.CharTable[i][j][2] and this.CharTable[i][j][3] then
          this.EnemyCategories[this.CharTable[i][j][1]] = {
            this.CharTable[i][j][2],
            this.CharTable[i][j][3]
          }
        end
      end
    end
    this:NewChar("Gabriel", true)
    TravelBook.TimeCrazyByFairyTable = {Dracolich = 0}
    local metatable = {
      __index = function(table, key)
        local EnemyAIBehavParams = CommonAIBehavParams.Table[key]
        if EnemyAIBehavParams and EnemyAIBehavParams.TimeCrazyByFairy and EnemyAIBehavParams.TimeToSetCrazyByFairy then
          return EnemyAIBehavParams.TimeCrazyByFairy
        end
      end
    }
    setmetatable(TravelBook.TimeCrazyByFairyTable, metatable)
  end,
  GetCharStatus = function(this, charName)
    local index = this:GetCharIndex(charName)
    if index then
      local gvCharStatus = SaveGame.AddToGvar(this.GVCharStatusName)
      local status = string.byte(gvCharStatus.Value, index)
      if this.ByteValues.Locked == status then
        return "Locked"
      elseif this.ByteValues.UnLocked == status then
        return "Unlocked"
      elseif this.ByteValues.New == status then
        return "New"
      elseif status > this.ByteValues.New and status <= this.ByteValues.Max then
        return "Pending", status - this.ByteValues.New
      end
    end
  end,
  AreAllCharsUnlocked = function(this)
    local allUnlocked = true
    for i = 1, #this.CharsList do
      local status = this:GetCharStatus(this.CharsList[i])
      if status == "Locked" or status == "Pending" then
        allUnlocked = false
      end
    end
    return allUnlocked
  end,
  GetKillsNeeded = function(this, charName)
    return this.KillsNeeded[charName] or 0
  end,
  DecrementKillsPending = function(this, charName, numberOfKills)
    charName = this.Aliases[charName] or charName
    numberOfKills = numberOfKills or 1
    local status, killsPending = this:GetCharStatus(charName)
    local index = this:GetCharIndex(charName)
    if status and "Unlocked" ~= status and index and not TravelBook.IgnoreEnemyKills then
      local newValue
      if killsPending then
        newValue = math.max(killsPending - numberOfKills + this.ByteValues.New, this.ByteValues.New)
      else
        newValue = this.ByteValues.New
      end
      local gvCharStatus = SaveGame.AddToGvar(this.GVCharStatusName)
      gvCharStatus.Value = string.sub(gvCharStatus.Value, 1, index - 1) .. string.char(newValue) .. string.sub(gvCharStatus.Value, index + 1)
      if killsPending and this.ByteValues.New == newValue then
        TravelBook.NewEntry("Chars", charName)
      end
    end
    TravelBook.IncreaseKills(charName)
  end,
  SetKillsPendingToZero = function(this, charName)
    charName = this.Aliases[charName] or charName
    local index = this:GetCharIndex(charName)
    if index then
      local gvCharStatus = SaveGame.AddToGvar(this.GVCharStatusName)
      gvCharStatus.Value = string.sub(gvCharStatus.Value, 1, index - 1) .. string.char(this.ByteValues.UnLocked) .. string.sub(gvCharStatus.Value, index + 1)
    end
  end,
  GetCharIndex = function(this, charName)
    for i = 1, #this.CharsList do
      if this.CharsList[i] == charName then
        return i
      end
    end
  end,
  NewChar = function(this, charName, doNotNotify)
    charName = this.Aliases[charName] or charName
    local index = this:GetCharIndex(charName)
    if index then
      local gvCharStatus = SaveGame.AddToGvar(this.GVCharStatusName)
      local currentStatus = string.byte(gvCharStatus.Value, index)
      if currentStatus < this.ByteValues.UnLocked or currentStatus > this.ByteValues.Max then
        local status = math.min(this.ByteValues.New + this:GetKillsNeeded(charName), this.ByteValues.Max)
        gvCharStatus.Value = string.sub(gvCharStatus.Value, 1, index - 1) .. string.char(status) .. string.sub(gvCharStatus.Value, index + 1)
        if not doNotNotify and this.ByteValues.New == status then
          TravelBook.NewEntry("Chars", charName)
        end
      end
    end
  end,
  VisitChar = function(this, charName)
    local status = this:GetCharStatus(charName)
    local index = this:GetCharIndex(charName)
    if index and status and "New" == status then
      local gvCharStatus = SaveGame.AddToGvar(this.GVCharStatusName)
      gvCharStatus.Value = string.sub(gvCharStatus.Value, 1, index - 1) .. string.char(this.ByteValues.UnLocked) .. string.sub(gvCharStatus.Value, index + 1)
    end
  end,
  GetSensitivityLevel = function(this, charName, attributeIndex)
    local attributeInfo = this.CharAttributeInfo[attributeIndex]
    if attributeInfo then
      if "WargGreatVillage" == charName then
        charName = "WargGreat"
      end
      local sensitivity = parseGlobalExpression(attributeInfo[1])[charName]
      if sensitivity then
        local numLevels = #attributeInfo[2]
        local bestDistance = math.huge
        local returnValue
        for i = 1, numLevels do
          local distance = math.abs(sensitivity - attributeInfo[2][i])
          if bestDistance > distance then
            bestDistance = distance
            returnValue = i
          end
        end
        return returnValue
      end
    end
    return -1
  end,
  GetEnemySize = function(this, charName)
    if this.EnemyCategories[charName] then
      return this.EnemyCategories[charName][1]
    end
  end,
  GetEnemyDifficulty = function(this, charName)
    if this.EnemyCategories[charName] then
      return this.EnemyCategories[charName][2]
    end
  end,
  FindNewChars = function(this, charTable)
    local isAnyUnlocked = false
    for _, charInfo in ipairs(charTable) do
      local charName
      if type(charInfo) == "table" then
        charName = charInfo[1]
      else
        charName = charInfo
      end
      if not this:IsCharFromAnotherDLC(charName) then
        charStatus = this:GetCharStatus(charName)
        if "New" == charStatus then
          return true, true
        elseif not isAnyUnlocked and ("Unlocked" == charStatus or "Pending" == charStatus) then
          isAnyUnlocked = true
        end
      end
    end
    return false, isAnyUnlocked
  end,
  IsCharFromAnotherDLC = function(this, charName)
    return "Sharktopus" == charName and nil == init.LevelName:find("dlc_1_") or "Legion" == charName and nil == init.LevelName:find("dlc_2_") or "_NONE_" == charName
  end,
  IsAnyCharNew = function(this)
    local gvCharStatus = SaveGame.AddToGvar(this.GVCharStatusName)
    return nil ~= string.find(gvCharStatus.Value, string.char(this.ByteValues.New), 1, true)
  end,
  IsMainChar = function(this, charName)
    local charIndex = this:GetCharIndex(charName)
    return nil ~= charIndex and charIndex <= #this.CharTable[1]
  end,
  UnlockAllChars = function(this)
    for i, charName in pairs(this.CharsList) do
      this:NewChar(charName)
      this:DecrementKillsPending(charName, 1000)
    end
  end,
  _Test = function(this)
    for i, charName in pairs(this.CharsList) do
      this:NewChar(charName)
      this:DecrementKillsPending(charName, 1000)
    end
  end
}
TravelBook.AchievementsManager = {
  Indices = {
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    43,
    44,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    48,
    53,
    25,
    26,
    27,
    28,
    29,
    47,
    30,
    31,
    32,
    33,
    34,
    35,
    36,
    37,
    38,
    39,
    40,
    41,
    42
  },
  List = {},
  IsAnyTrophyNew = function(this)
    for i = 1, #TravelBook.AchievementsManager.Indices do
      local index = TravelBook.AchievementsManager.Indices[i]
      if Game.IsAchievementUnlocked(index) == 1 then
        return true
      end
    end
    return false
  end
}
TravelBook.ActionsManager = {
  StatusEquivalences = {
    ["."] = "Locked",
    x = "Unlocked",
    X = "New"
  },
  FirstBuyAction = "Guillotine",
  ActionsTable = {
    {
      {
        "DirectionalAttack",
        "d",
        "None"
      },
      {
        "AreaAttack",
        "a",
        "None"
      },
      {
        "SecondaryWeapon",
        "s",
        "None"
      },
      {
        "Jump",
        "j",
        "None"
      },
      {
        "Block",
        "bh",
        "None"
      },
      {
        "SyncBlock",
        "b",
        "None"
      },
      {
        "Dodge",
        "bh+ls",
        "None"
      },
      {
        "Stomp",
        "bh+j",
        "None"
      },
      {
        "Grab",
        "g",
        "None"
      },
      {
        "RappelClimb",
        "g",
        "None"
      },
      {
        "Concentration",
        "",
        "None",
        "TravelBook.ExtendDescriptionText"
      },
      {
        "ExperiencePoints",
        "",
        "None",
        "TravelBook.ExtendDescriptionText"
      }
    },
    {
      {
        "Dagger",
        "s",
        "None"
      },
      {
        "ExplosiveDagger",
        "s",
        {"_dark", "_dagger"}
      },
      {
        "DaggerWave",
        "sh",
        "MultipleDaggers"
      },
      {
        "PowerCrystal",
        "sh",
        "_crystal"
      },
      {
        "Fairy",
        "s",
        "_fairy"
      },
      {
        "LightFairy",
        "s",
        {"_fairy", "_light"}
      },
      {
        "Vial",
        "s",
        "_vial"
      },
      {
        "DivineShield",
        "s",
        {"_vial", "_light"}
      }
    },
    {
      {
        "ComboD",
        "ddddd",
        "None"
      },
      {
        "ComboA",
        "ax8",
        "None"
      },
      {
        "AirComboD",
        "dd",
        "None"
      },
      {
        "AirComboA",
        "aa",
        "None"
      },
      {
        "RisingStrike",
        "dj",
        "None"
      },
      {
        "RisingAssault",
        "aj",
        "None"
      },
      {
        "CounterstrikeD",
        "ddd",
        "None"
      },
      {
        "Somersault",
        "b+j",
        "_boots"
      },
      {
        "Guillotine",
        "dh",
        "WhipFallComboDh"
      },
      {
        "Guillotine_Upgrade",
        "dh",
        "WhipFallComboDhD"
      },
      {
        "SpinningChain",
        "ah",
        "WhipFallComboAh"
      },
      {
        "AirGrab",
        "g",
        "WhipFallComboGripSmall"
      },
      {
        "DownwardPunch",
        "g",
        "WhipFallComboGripSmallDown"
      },
      {
        "DownwardKick",
        "g",
        "WhipFallComboGripBig"
      },
      {
        "CounterstrikeA",
        "aaa",
        "WhipSyncComboAAA"
      },
      {
        "ComboDHeavy",
        "dhdd",
        "WhipComboDrD"
      },
      {
        "ComboDHeavy_Upgrade",
        "dhdx8",
        "WhipComboDrDrDrD"
      },
      {
        "ComboDHeavy_Upgrade_Upgrade",
        "dhdx9",
        "WhipComboDrDrDrDrD"
      },
      {
        "ComboChainBarrier",
        "ah",
        "WhipComboAh"
      },
      {
        "ComboChainBarrier_Upgrade",
        "aha",
        "WhipComboAhA"
      },
      {
        "CircularChain",
        "daa",
        "WhipComboDAA"
      },
      {
        "ChainSaw",
        "dadh",
        "WhipComboDAD"
      },
      {
        "GroundCutter",
        "ddhd",
        "WhipFallComboDDhD"
      },
      {
        "SomersaultStrike",
        "ddd",
        "WhipBlockSommerJumpDDD"
      }
    },
    {
      {
        "RideHorse",
        "",
        "None",
        "TravelBook.ExtendDescriptionText"
      },
      {
        "RideSpider",
        "",
        "None",
        "TravelBook.ExtendDescriptionText"
      },
      {
        "RideWarg",
        "",
        "None",
        "TravelBook.ExtendDescriptionText"
      },
      {
        "RideWarthog",
        "",
        "None",
        "TravelBook.ExtendDescriptionText"
      },
      {
        "RideTroll",
        "",
        "None",
        "TravelBook.ExtendDescriptionText"
      }
    },
    {
      {
        "LightMagic",
        "",
        "_light",
        "TravelBook.SetupMagicSkillPage"
      },
      {
        "DarkMagic",
        "",
        "_dark",
        "TravelBook.SetupMagicSkillPage"
      },
      {
        "TremorPunch",
        "b+dh",
        "_gauntlet"
      },
      {
        "EarthquakePunch",
        "b+ah",
        "_gauntlet"
      },
      {
        "Sprint",
        "lsx2",
        "_boots"
      },
      {
        "ShoulderCharge",
        "bh+ls",
        {"_boots", "_dark"}
      },
      {
        "Shoryuken",
        "b+jh",
        {"_boots", "_gauntlet"}
      },
      {
        "DoubleJump",
        "jj",
        "_wings"
      },
      {
        "HolyJump",
        "jj",
        {"_wings", "_light"}
      },
      {
        "SprintThrust",
        "lsx2ad",
        "WhipSprintComboAD"
      },
      {
        "LightFlash",
        "b",
        "BlockSyncBlind"
      },
      {
        "LandslidePunch",
        "b+dh",
        "WhipFallBlockComboDh"
      },
      {
        "AvalanchePunch",
        "b+ah",
        "WhipFallBlockComboAh"
      },
      {
        "ErosiveChains",
        "dah",
        "WhipComboDALMh"
      },
      {
        "ShadowFlames",
        "adh",
        "WhipComboADDrh"
      },
      {
        "FlameClaws",
        "lsx2d",
        "WhipSprintComboDDark"
      },
      {
        "UpwardGuillotine",
        "djj",
        "WhipComboDJJ"
      },
      {
        "FlapWhirlwind",
        "ajj",
        "WhipComboAJJ"
      },
      {
        "FlapWindWave",
        "b+jhj",
        "WhipBlockComboUppercutJ"
      },
      {
        "HolyCross",
        "adh",
        "WhipComboADLMh"
      },
      {
        "ExplodingQuake",
        "dahaa...ah",
        "WhipComboDADrh"
      },
      {
        "LightFocusMode",
        "swlh+ls",
        "WhipComboLMh"
      },
      {
        "DarkFocusMode",
        "swdh+ls",
        "WhipComboDrMh"
      }
    },
    {
      {
        "DLC_DirectLighting",
        "dddd",
        "None"
      },
      {
        "DLC_DirectHeavyLighting",
        "dh",
        "None"
      },
      {
        "DLC_AreaLighting",
        "ah",
        "None"
      },
      {
        "DLC_Block",
        "bh",
        "None"
      },
      {
        "DLC_Dodge",
        "bh+ls",
        "None"
      },
      {
        "DLC_Grab",
        "g",
        "None"
      }
    }
  },
  GVActionsStatusName = "gvTBookActionsStatus",
  Preload = function(this)
    local gvActionsStatus = Game.CreateGvar(this.GVActionsStatusName, "string", "Actions and combos status for travel book")
    local initialValue = string.rep(".", #this.ActionsTable[1] + #this.ActionsTable[2] + #this.ActionsTable[3] + #this.ActionsTable[4] + #this.ActionsTable[5] + #this.ActionsTable[6])
    gvActionsStatus.Value = initialValue
    gvActionsStatus.Default = initialValue
  end,
  CheckGVarLength = function(this)
    local gvActionsStatus = SaveGame.AddToGvar(this.GVActionsStatusName)
    local currentLength, totalLength = #gvActionsStatus.Value, #this.ActionsList
    gvActionsStatus.Value = gvActionsStatus.Value .. string.rep(".", totalLength - currentLength)
  end,
  Init = function(this)
    this.ActionsList = {}
    this.KeysCodes = {}
    this.ActionAnimName = {}
    this.AvailabilityConditions = {}
    this.DescriptionConfigurators = {}
    for i = 1, #this.ActionsTable do
      for j = 1, #this.ActionsTable[i] do
        table.insert(this.ActionsList, this.ActionsTable[i][j][1])
        this.KeysCodes[this.ActionsTable[i][j][1]] = this.ActionsTable[i][j][2]
        if "table" == type(this.ActionsTable[i][j][3]) or string.sub(this.ActionsTable[i][j][3], 1, 1) == "_" then
          this.AvailabilityConditions[this.ActionsTable[i][j][1]] = this.ActionsTable[i][j][3]
        elseif "None" ~= this.ActionsTable[i][j][3] then
          this.ActionAnimName[this.ActionsTable[i][j][1]] = this.ActionsTable[i][j][3]
        end
        if this.ActionsTable[i][j][4] then
          this.DescriptionConfigurators[this.ActionsTable[i][j][1]] = parseGlobalExpression(this.ActionsTable[i][j][4])
        end
      end
    end
    this:CheckGVarLength()
    if "level.1_1_besieged_village" ~= string.lower(init.LevelName) and "level.menu" ~= string.lower(init.LevelName) and this:GetActionStatus(this.FirstBuyAction) == "Locked" then
      this:NewAction(this.FirstBuyAction, true)
      this:NewAction("SecondaryWeapon", true)
      this:NewAction("RideHorse", true)
      this:NewAction("Dagger", true)
      this:NewAction("ComboD", true)
    end
  end,
  GetActionStatus = function(this, actionName)
    local index = this:GetActionIndex(actionName)
    if index then
      local gvActionStatus = SaveGame.AddToGvar(this.GVActionsStatusName)
      local status = string.sub(gvActionStatus.Value, index, index)
      local statusStr = this.StatusEquivalences[status]
      if not statusStr then
        Game.ConsoleError("ERROR: Not valid status (" .. tostring(status) .. ") in gvTBookActionsStatus GVar for action " .. actionName .. "\n")
      end
      return statusStr
    end
  end,
  GetActionIndex = function(this, actionName)
    for i = 1, #this.ActionsList do
      if this.ActionsList[i] == actionName then
        return i
      end
    end
  end,
  NewAction = function(this, actionName, doNotNotify)
    local index = this:GetActionIndex(actionName)
    if index then
      local gvActionsStatus = SaveGame.AddToGvar(this.GVActionsStatusName)
      local status = this:GetActionStatus(actionName)
      if "Locked" == status then
        local newCode = "X"
        gvActionsStatus.Value = string.sub(gvActionsStatus.Value, 1, index - 1) .. newCode .. string.sub(gvActionsStatus.Value, index + 1)
        if not doNotNotify then
          TravelBook.NewEntry("Actions", actionName)
        end
      end
    end
  end,
  IsVisited = function(this, actionName)
    local status = this:GetActionStatus(actionName)
    return string.find(status, "New") == nil
  end,
  IsUnlocked = function(this, actionName)
    local status = this:GetActionStatus(actionName)
    return status and status ~= "Locked"
  end,
  IsMarkedAsBuyable = function(this, actionName)
    return Experience.isCombatScrollAvailable(this:GetActionAnimName(actionName))
  end,
  IsBought = function(this, actionName)
    return Experience.isCombatScroll(this:GetActionAnimName(actionName))
  end,
  CanBeBought = function(this, actionName)
    return this:IsMarkedAsBuyable(actionName) and this:GetActionPrice(actionName) <= Experience.EPoints.Value
  end,
  GetActionPrice = function(this, actionName)
    return Experience.GetComboPrice(this:GetActionAnimName(actionName))
  end,
  IsNew = function(this, actionName)
    local status = this:GetActionStatus(actionName)
    return string.find(status, "New") ~= nil
  end,
  VisitAction = function(this, actionName)
    local status = this:GetActionStatus(actionName)
    local index = this:GetActionIndex(actionName)
    local gvActionsStatus = SaveGame.AddToGvar(this.GVActionsStatusName)
    if index and status and "." ~= status then
      gvActionsStatus.Value = string.sub(gvActionsStatus.Value, 1, index - 1) .. string.lower(string.sub(gvActionsStatus.Value, index, index)) .. string.sub(gvActionsStatus.Value, index + 1)
    end
  end,
  BuyAction = function(this, actionName)
    if this:IsMarkedAsBuyable(actionName) and not this:IsBought() then
      Experience.BuyCombo(this:GetActionAnimName(actionName))
    else
      Game.ConsoleError("ERROR: Trying to buy a non buyable action\n")
    end
  end,
  GetKeysCode = function(this, actionName)
    return this.KeysCodes[actionName]
  end,
  GetActionAnimName = function(this, actionName)
    return this.ActionAnimName[actionName]
  end,
  CheckNewUnlockedActions = function(this)
    if Game.Get("gvAllCombos") then
      this:UnlockAllWithoutCondition()
    end
    local anyUnlocked
    for i = 1, #this.ActionsList do
      local actionName = this.ActionsList[i]
      local actionAnimName = this:GetActionAnimName(actionName)
      if not this:IsUnlocked(actionName) and (this:MustBeUnlocked(actionName) or Experience.isCombatScrollAvailable(actionAnimName)) and (not this:IsMarkedAsBuyable(actionName) or this:IsBought(this.FirstBuyAction)) then
        this:NewAction(actionName, true)
        anyUnlocked = true
      end
    end
    return anyUnlocked
  end,
  MustBeUnlocked = function(this, actionName)
    local actionCondition = this.AvailabilityConditions[actionName]
    if "table" == type(actionCondition) then
      for _, condition in ipairs(actionCondition) do
        if not Experience.CombatConditions[condition]() then
          return false
        end
      end
      return true
    elseif actionCondition then
      return Experience.CombatConditions[actionCondition]()
    end
    return false
  end,
  UnlockAllWithoutCondition = function(this)
    for _, actionName in ipairs(this.ActionsList) do
      if nil == this.AvailabilityConditions[actionName] and nil == this:GetActionAnimName(actionName) then
        this:NewAction(actionName, true)
      end
    end
  end,
  OnBeforeActionsDisable = function(this)
    this:CheckNewUnlockedActions()
    this.EnabledActions = {}
    print("Previously enabled actions:")
    for _, actionName in ipairs(this.ActionsList) do
      local actionAnimationName = this:GetActionAnimName(actionName)
      local condition = this.AvailabilityConditions[actionName]
      if Experience.isCombatScrollAvailable(actionAnimationName) and this:IsBought(actionName) or condition and Experience.CombatConditions[condition]() then
        table.insert(this.EnabledActions, actionName)
        print("\t- " .. actionName)
      end
    end
    print("")
  end,
  OnAfterActionsDisable = function(this)
    this.DisabledActions = {}
    print("Disabled actions:")
    for _, actionName in ipairs(this.EnabledActions) do
      local actionAnimationName = this:GetActionAnimName(actionName)
      local condition = this.AvailabilityConditions[actionName]
      if not (not this:IsBought(actionName) or Experience.isCombatScrollAvailable(actionAnimationName)) or condition and not Experience.CombatConditions[condition]() then
        table.insert(this.DisabledActions, actionName)
        print("\t- " .. actionName)
      end
    end
    this.EnabledActions = nil
    print("")
  end,
  OnActionsDisableEnd = function(this)
    this.DisabledActions = nil
  end,
  IsActionDisabled = function(this, actionName)
    if not this:IsUnlocked(actionName) then
      return false
    end
    local condition = this.AvailabilityConditions[actionName]
    local animationName = this:GetActionAnimName(actionName)
    if not ((not condition or this:MustBeUnlocked(actionName)) and (not this:IsBought(actionName) or Experience.isCombatScrollAvailable(animationName))) or this:BelongsToAnotherChar(actionName) then
      return true
    end
    return false
  end,
  BelongsToAnotherChar = function(this, actionName)
    local controllingLaura = Game.Get("PlayerCharName") ~= "Belmont"
    local isLauraAction = actionName:match("^DLC_") ~= nil
    return controllingLaura and not isLauraAction or not controllingLaura and isLauraAction
  end,
  IsActionCurrentlyUsable = function(this, actionName)
    if Experience.isCombatScroll(this:GetActionAnimName(actionName)) or 0 == this:GetActionPrice(actionName) and this:IsUnlocked(actionName) then
      return true
    end
    return false
  end,
  IsActionAccesible = function(this, actionName)
    if Experience.isCombatScrollAvailable(this:GetActionAnimName(actionName)) or 0 == this:GetActionPrice(actionName) and this:IsUnlocked(actionName) then
      return true
    end
  end,
  FindNewAndBuyableActions = function(this, actionList)
    local anyNew, anyBuyable, anyUnlocked = false, false, false
    for _, actionInfo in ipairs(actionList) do
      local actionName = actionInfo[1]
      if not anyUnlocked and this:IsUnlocked(actionName) then
        anyUnlocked = true
      end
      if not anyNew and this:IsUnlocked(actionName) and this:IsNew(actionName) and (this:IsActionDisabled(actionName) or this:IsActionAccesible(actionName)) then
        anyNew = true
      end
      if not anyBuyable and this:CanBeBought(actionName) and not this:IsBought(actionName) then
        anyBuyable = true
      end
      if anyNew and anyBuyable then
        return true, true, true
      end
    end
    return anyNew, anyBuyable, anyUnlocked
  end,
  IsThereAnyNewAction = function(this)
    local gvActionStatus = SaveGame.AddToGvar(this.GVActionsStatusName)
    for actionIndex in string.gmatch(gvActionStatus.Value, "()X") do
      local actionName = this.ActionsList[actionIndex]
      if not this:IsActionFromAnotherDLC(actionName) and (this:IsActionAccesible(actionName) or this:IsActionDisabled(actionName)) then
        return true
      end
    end
    return false
  end,
  IsActionFromAnotherDLC = function(this, actionName)
    return nil ~= actionName:match("^DLC_") and nil == init.LevelName:find("dlc_1_")
  end,
  GetVideoFileName = function(this, actionName)
    local videoPath = TravelBook.ActionsVideoPath
    if actionName:match("^DLC_") then
      videoPath = TravelBook.DLC1ActionsVideoPath
    end
    return videoPath .. (this:GetActionAnimName(actionName) or actionName) .. ".bik"
  end,
  IsUpgrade = function(this, actionName)
    return nil ~= string.match(actionName, "_Upgrade$")
  end,
  GetActionUpgrade = function(this, actionName)
    local upgradeName = actionName .. "_Upgrade"
    if this:GetActionIndex(upgradeName) then
      return upgradeName
    end
  end,
  GetRelicConditions = function(this, actionName)
    local returnValue = {}
    local candidates = {
      "_light",
      "_dark",
      "_gauntlet",
      "_boots",
      "_wings"
    }
    local findCondition = function(condition, conditionTable)
      for _, tableEntry in ipairs(conditionTable) do
        if tableEntry == condition then
          return true
        end
      end
      return false
    end
    for i, candidate in ipairs(candidates) do
      local actionConditions = this.AvailabilityConditions[actionName]
      if actionConditions == candidate or "table" == type(actionConditions) and findCondition(candidate, actionConditions) then
        table.insert(returnValue, i)
      else
        local experienceInfo = Experience.CombatScrolls[this:GetActionAnimName(actionName) or ""]
        if experienceInfo and findCondition(candidate, experienceInfo.Conditions) then
          table.insert(returnValue, i)
        end
      end
    end
    return returnValue
  end,
  _Test = function(this)
    for _, actionName in pairs(this.ActionsList) do
      this:NewAction(actionName)
      print("TBook_Action_Name_" .. actionName .. "\t" .. actionName)
      print("TBook_Action_Desc_" .. actionName .. "0\tIndent>" .. actionName .. " description")
    end
  end
}
TravelBook.ItemsManager = {
  ItemList = {
    "Scroll1Image",
    "Scroll2Image",
    "Scroll3Image",
    "Scroll4Image",
    "ItemMedallionLife",
    "ItemMedallionDark",
    "ItemMedallionLight",
    "GauntletImage",
    "BootsImage",
    "WingsImage",
    "FairiesImage",
    "CrystalsImage",
    "DaggerImage",
    "VialsImage",
    "CrossStakeImage",
    "CrossBodyImage",
    "CrossChainImage",
    "CrossHookImage"
  },
  GVItemStatusName = "gvTBookItemStatus",
  GVReadScrollsName = "gvReadScrolls",
  Preload = function(this)
    local gvItemStatus = Game.CreateGvar(this.GVItemStatusName, "string", "Item status (new or old) for travel book")
    local initialValue = string.rep("X", #this.ItemList)
    gvItemStatus.Value = initialValue
    gvItemStatus.Default = initialValue
    local gvReadScrolls = Game.CreateGvar(this.GVReadScrollsName, "string", "Read scrolls for each level")
    initialValue = string.rep("....-", #SaveGame.GameMaps - 1) .. "...."
    gvReadScrolls.Value = initialValue
    gvReadScrolls.Default = initialValue
  end,
  CheckGVar = function(this)
    local gvReadScrolls = SaveGame.AddToGvar(this.GVReadScrollsName)
    local gvReadScrollsValue = gvReadScrolls.Value
    local lastValidLevel = 0
    while gvReadScrollsValue:find("^[%.x][%.x][%.x][%.x]", lastValidLevel * 5 + 1) do
      lastValidLevel = lastValidLevel + 1
      if "-" ~= gvReadScrollsValue:sub(lastValidLevel * 5, lastValidLevel * 5) then
        break
      end
    end
    local numLevels = #SaveGame.GameMaps
    if lastValidLevel < numLevels then
      if 0 == lastValidLevel then
        gvReadScrollsValue = string.rep("....-", numLevels - 1) .. "...."
      else
        gvReadScrollsValue = gvReadScrollsValue:sub(1, lastValidLevel * 5 - 1) .. string.rep("-....", numLevels - lastValidLevel)
      end
    end
    gvReadScrolls.Value = gvReadScrollsValue
  end,
  GetItemStatus = function(this, itemName)
    local index = this:GetItemIndex(itemName)
    if index then
      local gvItemStatus = SaveGame.AddToGvar(this.GVItemStatusName)
      local status = string.sub(gvItemStatus.Value, index, index)
      if itemName:match("Scroll.+Image") then
        local bookScrollIndex = tonumber(itemName:match("Scroll(.+)Image"))
        local globalScrollIndex = tonumber(CollectableItems.CreateScrollData():sub(bookScrollIndex, bookScrollIndex))
        if globalScrollIndex and this:IsScrollRead(globalScrollIndex) then
          status = "x"
        else
          status = "X"
        end
      end
      if "x" == status then
        return "Old"
      elseif "X" == status then
        return "New"
      end
    end
  end,
  GetItemIndex = function(this, itemName)
    for i = 1, #this.ItemList do
      if this.ItemList[i] == itemName then
        return i
      end
    end
  end,
  VisitItem = function(this, itemName)
    local status = this:GetItemStatus(itemName)
    local index = this:GetItemIndex(itemName)
    if index and status then
      local gvItemStatus = SaveGame.AddToGvar(this.GVItemStatusName)
      gvItemStatus.Value = string.sub(gvItemStatus.Value, 1, index - 1) .. "x" .. string.sub(gvItemStatus.Value, index + 1)
      if itemName:match("Scroll.+Image") then
        local bookScrollIndex = tonumber(itemName:match("Scroll(.+)Image"))
        local globalScrollIndex = tonumber(CollectableItems.CreateScrollData():sub(bookScrollIndex, bookScrollIndex))
        this:SetScrollRead(globalScrollIndex)
      end
    end
  end,
  MarkNewItems = function(this)
    for _, itemName in pairs(this.ItemList) do
      local status = this:GetItemStatus(itemName)
      local item = Scorer.GetItem(0, itemName)
      if item then
        item.uData.IsNew = "New" == status and not item.uData.IsNavigationDisabled and not item.uData.IsNavigationLinked
      end
    end
  end,
  RenewItem = function(this, itemName)
    local itemIndex = this:GetItemIndex(itemName)
    if itemIndex then
      local gvItemStatus = SaveGame.AddToGvar(this.GVItemStatusName)
      gvItemStatus.Value = string.sub(gvItemStatus.Value, 1, itemIndex - 1) .. "X" .. string.sub(gvItemStatus.Value, itemIndex + 1)
      TravelBook.NewEntry("Items", itemName)
    end
  end,
  RenewScroll = function(this, globalScrollIndex)
    local bookScrollIndex = this:GetBookScrollIndex(globalScrollIndex)
    if bookScrollIndex then
      this:RenewItem("Scroll" .. bookScrollIndex .. "Image")
    end
    this:SetScrollRead(globalScrollIndex, true)
  end,
  GetBookScrollIndex = function(this, globalScrollIndex)
    local visitedScrolls = CollectableItems.CreateScrollData()
    local bookScrollIndex
    for i = 1, #visitedScrolls do
      if tonumber(visitedScrolls:sub(i, i)) == globalScrollIndex then
        bookScrollIndex = i
      end
    end
    return bookScrollIndex
  end,
  IsScrollRead = function(this, globalScrollIndex)
    local levelIndex = this:GetLevelIndex()
    if levelIndex then
      local gvReadScrolls = SaveGame.AddToGvar(this.GVReadScrollsName).Value
      local charIndex = (levelIndex - 1) * 5 + globalScrollIndex
      return gvReadScrolls:sub(charIndex, charIndex) == "x"
    end
    return false
  end,
  SetScrollRead = function(this, globalScrollIndex, reset)
    local levelIndex = this:GetLevelIndex()
    if levelIndex then
      local gvReadScrolls = SaveGame.AddToGvar(this.GVReadScrollsName)
      local charIndex = (levelIndex - 1) * 5 + globalScrollIndex
      local statusChar = "x"
      if reset then
        statusChar = "."
      end
      gvReadScrolls.Value = gvReadScrolls.Value:sub(1, charIndex - 1) .. statusChar .. gvReadScrolls.Value:sub(charIndex + 1)
    end
  end,
  GetLevelIndex = function(this)
    local levelName = init.LevelName:lower():match("level%.(.+)")
    local levelIndex = 1
    local gameLevels = SaveGame.GameMaps
    while gameLevels[levelIndex] ~= levelName do
      levelIndex = levelIndex + 1
      if levelIndex > #gameLevels then
        return nil
      end
    end
    return levelIndex
  end,
  GetAnyNewItem = function(this)
    local gvItemsStatus = SaveGame.AddToGvar(this.GVItemStatusName).Value
    for index, itemName in ipairs(this.ItemList) do
      if "X" == string.sub(gvItemsStatus, index, index) and this:IsItemCollected(itemName) then
        return itemName
      end
    end
  end,
  IsItemCollected = function(this, itemName)
    if "CrossStakeImage" == itemName then
      return TravelBook.IsStakeAvailable()
    elseif "DaggerImage" == itemName then
      return "level.1_1_besieged_village" ~= string.lower(init.LevelName) or TravelBook.ActionsManager:IsUnlocked("SecondaryWeapon")
    elseif "CrossHookImage" == itemName then
      return Belmont.ChainModelInUse.Value >= 2
    elseif string.match(itemName, "^Scroll%dImage") then
      local scrollNumber = tonumber(string.match(itemName, "^Scroll(%d)Image"))
      return scrollNumber <= #CollectableItems.CreateScrollData()
    elseif 1 == MapInit.TutoLightMagicFase and "ItemMedallionLight" == itemName then
      return false
    else
      if nil == this.RelicConditions then
        this.RelicConditions = {
          BootsImage = {"SpeedBoots", 1},
          GauntletImage = {
            "DarkGauntlet",
            true
          },
          WingsImage = {
            "LightShoulders",
            true
          },
          VialsImage = {"VialActive", true},
          CrystalsImage = {
            "CrystalActive",
            true
          },
          FairiesImage = {
            "FairiesActive",
            true
          },
          ItemMedallionDark = {
            "DarkPowerOn",
            true
          },
          ItemMedallionLight = {
            "LightPowerOn",
            true
          }
        }
        this.ChupacabraConditions = {
          BootsImage = {
            "Chupacabra.SprintOnDoubleTap",
            1
          },
          GauntletImage = {
            "Chupacabra.bGauntlet",
            true
          },
          WingsImage = {
            "Chupacabra.bWings",
            true
          },
          ItemMedallionDark = {
            "DarkPower.oldPowerOn",
            true
          },
          ItemMedallionLight = {
            "LightPower.oldPowerOn",
            true
          }
        }
      end
      local relicCondition = this.RelicConditions[itemName]
      if relicCondition then
        local chupacabraCondition = this.ChupacabraConditions[itemName]
        if LevelProperties.GetValue(relicCondition[1]) == relicCondition[2] or Chupacabra and chupacabraCondition and parseGlobalExpression(chupacabraCondition[1]) == chupacabraCondition[2] then
          return true
        end
        return false
      end
      return true
    end
  end
}

function TravelBook.Show()
  if Team.isGameOver() then
    return
  end
  Game.GetMenu():NeedRender()
  Game.SetLoadingScreen("2D/Loading/PapelLibro-D.dds")
  TravelBook.LaunchFirstPage(TravelBook.ShowFirstPage)
  Game.GetMenu().OnBeginPageTurn = "TravelBook.FadeOutNavigationHUD"
  Game.GetMenu().OnEndPageTurn = "TravelBook.FadeInNavigationHUD"
  Game.GetMenu().OnBeginFadeOut = "TravelBook.FadeOutNavigationHUD"
  if Game.Get("Platform") == "PC" then
    Game.Set("InputChanged", "TravelBook.InputChangedCallback")
  end
end

function TravelBook.LaunchFirstPage(callback)
  TravelBook.GoToMenuMode()
  Menu.DrawBackMenuFirstScreen()
  TravelBook.frameCounter = 0
  TravelBook.FirstPageCallback = callback
  Game.Set("AfterDrawCallback", "TravelBook.GoToFirstPage")
end

function TravelBook.GoToFirstPage()
  TravelBook.frameCounter = TravelBook.frameCounter + 1
  if TravelBook.frameCounter == 5 then
    TravelBook.frameCounter = 0
    Menu.TurnPage(true)
    local f = TravelBook.FirstPageCallback
    TravelBook.FirstPageCallback = nil
    f()
  else
    Game.Set("AfterDrawCallback", "TravelBook.GoToFirstPage")
  end
end

function TravelBook.ShowFirstPage()
  Scorer.SetMsgText("", 0)
  Scorer.Clear(0)
  TravelBook.CreateItemSet("TabNavigation")
  TravelBook.CreateItemSet("ActionsMenu")
  TravelBook.CreateItemSet("ItemsMenu")
  TravelBook.CreateItemSet("ItemsAdornments")
  TravelBook.ArrangeItemsAdornments()
  TravelBook.CreateItemSet("CharsMenu")
  TravelBook.CreateItemSet("AchievementsMenu")
  TravelBook.FillData()
  TravelBook.SetItemsNavigation()
  TravelBook.GetItem("Cursor")
  Game.Set("ScorerUseCursor", 1)
  Scorer.SetCursor(0, "Cursor")
  for i, itemList in pairs(TravelBookItems.UDLists) do
    TravelBook.LinkUDList(itemList)
  end
  Scorer.SetOnCancel(0, "TravelBook.Close")
  if TravelBook.RedirectToTab and (0 < Game.Get("ScorerTravelBook") or 1 == TravelBook.RedirectToTab) then
    TravelBook.GoToNewEntry()
  else
    TravelBook.RedirectToTab = nil
    TravelBook.SelectTab(2)
  end
  local tbTutorial = not TravelBook.ActionsManager:IsBought(TravelBook.ActionsManager.FirstBuyAction)
  if TravelBook.ActionsManager:CheckNewUnlockedActions() and 1 ~= TravelBook.SelectedTab and not tbTutorial then
    Menu.FreezeInput(TravelBook.DoNothing)
    Scorer.AddScheduledFunc(0, 1.5, "", "TravelBook.ShowMessage")
    Game.GetMenu().OnEndPageTurn = ""
    Menu.IgnoreBookFadeIn = true
  end
end

function TravelBook.DoNothing()
  Menu.FreezeInput(TravelBook.DoNothing)
end

function TravelBook.ShowMessage()
  local message = Scorer.NewItem(0, "ModalMsg", "ModalMsg")
  message:Show(langstr("TBook_New_Skills_Unlocked"), 1, langstr("Menu_Press_Continue"):format(Menu.GetAcceptIconCode()))
  message.Outside = 1
  Scorer.AddScheduledFunc(0, 1.5, "", "TravelBook.OnAcceptMessageAppear")
end

function TravelBook.OnAcceptMessageAppear()
  Menu.FreezeInput(TravelBook.HideMessage)
end

function TravelBook.HideMessage()
  Scorer.GetItem(0, "ModalMsg").DelMe = 1
  Game.GetMenu().OnEndPageTurn = "TravelBook.FadeInNavigationHUD"
  Menu.IgnoreBookFadeIn = nil
  TravelBook.FadeInNavigationHUD()
  TravelBook.MapTabNavigation(TravelBook.TabNavigationEnabled)
end

function TravelBook.Close()
  local actionVideo = Scorer.GetItem(0, "ActionVideo")
  if actionVideo then
    actionVideo.Play = ""
  end
  TravelBook.ScrollList:Delete()
  TravelBook.HintScrollControl:ClearMinimap()
  TravelBook.MapTabNavigation(false)
  Menu.StartNewMenu()
  Menu.DrawBackMenuFirstScreen()
  Game.GetMenu():DoPrev()
  Menu.BackToGame()
  Menu.OnBookClosed(false)
  Game.SetLoadingScreen(TravelBook.DefaultBackground)
  TravelBook.CheckNewItems()
  TravelBook.ItemSelection = nil
  Game.SoftSaveConfig()
  Game.GetMenu().OnEndPageTurn = ""
  TravelBook.SelectedTab = 2
end

function TravelBook.GoToMenuMode()
  Menu.InitMenuSys()
  
  function Menu.OnMenuCanBeUsedCallback()
    Input.SetActionSet("Null")
  end
  
  Menu.StartNewMenu()
  Game.Set("ScorerUseCursor", 1)
end

function TravelBook.GetItem(name, update)
  local returnValue = Scorer.GetItem(0, name)
  if nil == returnValue or update then
    local itemInfo = TravelBookItems.Items[name]
    if not itemInfo then
      Game.ConsoleError("Item " .. name .. " not found in TravelBookItems\n")
      return
    end
    local itemClassInfo = TravelBookItems.ItemClasses[itemInfo.ItemClass]
    if not itemClassInfo then
      Game.ConsoleError("Item class " .. itemInfo.ItemClass .. " not found in TravelBookItems\n")
      return
    end
    if not update then
      returnValue = Scorer.NewItem(0, name, itemClassInfo.Type, 1)
    end
    local fontName
    for i = 1, #itemClassInfo do
      TravelBook.ApplyProperty(returnValue, itemClassInfo[i])
      if "Font" == itemClassInfo[i][1] and "Text" == itemClassInfo.Type then
        fontName = itemClassInfo[i][2]
      end
    end
    for i = 1, #itemInfo do
      TravelBook.ApplyProperty(returnValue, itemInfo[i])
      if "Font" == itemInfo[i][1] and "Text" == itemInfo.Type then
        fontName = itemInfo[i][2]
      end
    end
    if "Text" == itemClassInfo.Type then
      local sizeX, sizeY = Scorer.GetTextArea(fontName, returnValue.Text)
      returnValue.Size = V2D(sizeX, sizeY)
    end
  end
  return returnValue
end

function TravelBook.ApplyProperty(item, propertyInfo)
  if "fPos" == propertyInfo[1] then
    local fPosX, fPosY = propertyInfo[2].x, propertyInfo[2].y
    local fPosXComp, fPosYComp = 1 - fPosX, 1 - fPosY
    item.Pos = V2D(math.floor(fPosX * TravelBook.MaxLowerRight.x + fPosXComp * TravelBook.MinUpperLeft.x), math.floor(fPosY * TravelBook.MaxLowerRight.y + fPosYComp * TravelBook.MinUpperLeft.y))
  elseif "Text" == propertyInfo[1] and (string.match(propertyInfo[2], "^TBook_") or string.match(propertyInfo[2], "^Menu_")) then
    item.Text = langstr(propertyInfo[2])
  else
    item[propertyInfo[1]] = propertyInfo[2]
  end
end

function TravelBook.CreateItemSet(setName, update)
  local itemSet = TravelBookItems.ItemSets[setName]
  if not itemSet then
    Game.ConsoleError("Item set " .. setName .. " not found in TravelBookItems\n")
    return
  end
  for i, itemName in pairs(itemSet) do
    TravelBook.GetItem(itemName, update)
  end
end

function TravelBook.ApplyPropertyToSet(itemSetName, propertyName, propertyValue)
  local itemSet = TravelBookItems.ItemSets[itemSetName]
  if not itemSet then
    Game.ConsoleError("Item set " .. itemSetName .. " not found in TravelBookItems\n")
    return
  end
  for i, itemName in ipairs(itemSet) do
    local item = Scorer.GetItem(0, itemName)
    if item then
      item[propertyName] = propertyValue
    end
  end
end

function TravelBook.SelectTab(tabNumber)
  if TravelBook.ScrollList.IsEnabled then
    TravelBook.BackToLeftMenu()
  end
  local SelectAchievement = 1
  TravelBook.ScrollList:Delete()
  TravelBook.GetItem("ScrollListLineShadow")
  TravelBook.ClearMenuSelection("Left")
  local tabIds = {
    "Actions",
    "Items",
    "Chars",
    "Achievements"
  }
  TravelBook.SetBackground(tabIds[tabNumber] .. "Main.dds")
  for i, tabId in pairs(tabIds) do
    if i == tabNumber then
      TravelBook.ApplyPropertyToSet(tabId .. "Menu", "Visible", 1)
      TravelBook.HideDisabledItems()
    else
      TravelBook.ApplyPropertyToSet(tabId .. "Menu", "Visible", 0)
    end
  end
  TravelBook.SelectedTab = tabNumber
  local defaultItems = {
    "BasicActions",
    "ItemMedallionLife",
    "MainCharsText",
    "AchievementsMain"
  }
  if defaultItems[tabNumber] then
    Scorer.SetDefault(0, defaultItems[tabNumber], false)
  end
  if 2 == tabNumber then
    TravelBook.ApplyPropertyToSet("ItemsAdornments", "Visible", 1)
    TravelBook.ItemsManager:MarkNewItems()
    local newItem = TravelBook.ItemsManager:GetAnyNewItem()
    if newItem then
      Scorer.SetDefault(0, newItem, false)
    end
    Menu.ShowNavigationHUD(TravelBook.CloseBookKey, "Menu_Nav_Show", TravelBook.CloseBookKey)
    Scorer.SetPlayOnCancelSound(0, false)
    Scorer.SetPlayOnAcceptSound(0, false)
  else
    TravelBook.ApplyPropertyToSet("ItemsAdornments", "Visible", 0)
    if 1 == tabNumber then
      TravelBook.ActionsManager:CheckNewUnlockedActions()
      local menuAssociations = {
        {
          "BasicActions",
          TravelBook.ActionsManager.ActionsTable[1]
        },
        {
          "AdvancedMoves",
          TravelBook.ActionsManager.ActionsTable[3]
        },
        {
          "SecondaryWeapons",
          TravelBook.ActionsManager.ActionsTable[2]
        },
        {
          "Mounts",
          TravelBook.ActionsManager.ActionsTable[4]
        },
        {
          "RelicPowers",
          TravelBook.ActionsManager.ActionsTable[5]
        },
        {
          "LaurasMoves",
          TravelBook.ActionsManager.ActionsTable[6]
        }
      }
      if nil == init.LevelName:find("dlc_1_") then
        menuAssociations[6][2] = {}
      end
      for i, menuAssociation in ipairs(menuAssociations) do
        local leftMenuItemName, actionsTable = unpack(menuAssociation)
        local leftMenuItem = TravelBook.GetItem(leftMenuItemName)
        leftMenuItem.uData.NewIconOffset = TravelBook.LeftMenuNewIconOffset
        local isAnyNew, isAnyBuyable, isAnyUnlocked = TravelBook.ActionsManager:FindNewAndBuyableActions(actionsTable)
        if 1 < i and not isAnyUnlocked then
          Scorer.GetItem(0, leftMenuItemName).Visible = 0
          Scorer.GetItem(0, menuAssociations[i - 1][1]).Down = ""
        end
        leftMenuItem.uData.IsNew = isAnyNew
      end
      TravelBook.GetItem("AvailablePointsFrameText").Text = tostring(Experience.EPoints.Value)
      TravelBook.AppendCurrencyIconToText(TravelBook.GetItem("AvailablePointsFrameText"), "AvailablePointsFrameCurrencyIcon", TravelBook.Fonts.AvailablePointsFrame, V2D(16, 2))
    elseif 3 == tabNumber then
      local menuAssociations = {
        {
          "MainCharsText",
          TravelBook.CharManager.CharTable[1]
        },
        {
          "MonstersText",
          TravelBook.CharManager.CharTable[2]
        }
      }
      for i, menuAssociation in ipairs(menuAssociations) do
        local leftMenuItemName, charTable = unpack(menuAssociation)
        local leftMenuItem = TravelBook.GetItem(leftMenuItemName)
        leftMenuItem.uData.NewIconOffset = TravelBook.LeftMenuNewIconOffset
        local isAnyNew, isAnyUnlocked = TravelBook.CharManager:FindNewChars(charTable)
        if 1 < i and not isAnyUnlocked then
          Scorer.GetItem(0, leftMenuItemName).Visible = 0
          Scorer.GetItem(0, menuAssociations[i - 1][1]).Down = ""
        end
        leftMenuItem.uData.IsNew = isAnyNew
      end
    elseif 4 == tabNumber then
      local itm = Scorer.GetItem(0, "AchievementsGot")
      local count = 0
      TravelBook.AchievementsManager.List = {}
      for i = 1, #TravelBook.AchievementsManager.Indices do
        local index = TravelBook.AchievementsManager.Indices[i]
        local status = Game.IsAchievementUnlocked(index)
        if status ~= 0 then
          count = count + 1
          table.insert(TravelBook.AchievementsManager.List, count, index)
          if status == 1 then
            SelectAchievement = count
          end
        else
          table.insert(TravelBook.AchievementsManager.List, index)
        end
      end
      itm.Text = langstr("TBook_Action_Available_Points_Title") .. " " .. count .. " / " .. #TravelBook.AchievementsManager.List
    end
    TravelBook.ScrollList:SetUpForTab(tabNumber)
    TravelBook.OpenRightMenu()
    if 4 == tabNumber then
      TravelBook.EnableRightPage()
      TravelBook.GoToAchievementLine(SelectAchievement)
    end
    Menu.ShowNavigationHUD(TravelBook.CloseBookKey, "Menu_Nav_SelectCategory", TravelBook.CloseBookKey)
  end
  Scorer.SetOnExit(0, "TravelBook.Close")
  TravelBook.MapTabNavigation(true)
  TravelBook.GetItem("NewIcon")
  TravelBook.GetItem("NewIconOutside")
end

function TravelBook.SelectAchievement(index)
  local title = Scorer.GetItem(0, "AchievementName")
  local icon = Scorer.GetItem(0, "AchievementIcon")
  local desc1 = Scorer.GetItem(0, "AchievementDesc")
  local desc2 = Scorer.GetItem(0, "AchievementDesc2")
  local desc3 = Scorer.GetItem(0, "AchievementDesc3")
  title.Text = langstr("Trophy" .. index .. "_Title")
  local indexName = tostring(index)
  if string.len(indexName) < 2 then
    indexName = "0" .. indexName
  end
  if Game.IsAchievementUnlocked(index) ~= 0 then
    icon.File = "2D/Menu/dds/TROP0" .. indexName .. ".dds"
    icon.ShaderFilterMask = 0
    icon.Color = Color(255, 255, 255, 255)
  else
    icon.File = "2D/Menu/dds/TROP0" .. indexName .. ".dds"
    icon.ShaderFilterMask = Scorer.SPR2D_FILTER_DESATURATE
    icon.Color = Color(128, 128, 128, 128)
  end
  icon.Scale = V2D(0.5, 0.5)
  local split = Scorer.SplitString(langstr("Trophy" .. index .. "_Desc"), TravelBook.Fonts.AchievementsDesc, 250)
  desc1.Text = split[1] or ""
  desc2.Text = split[2] or ""
  desc3.Text = split[3] or ""
end

function TravelBook.SelectNextTab()
  local maxTab = 3
  if Game.Get("ShowAchievements") ~= 0 then
    maxTab = 4
  end
  if 1 <= TravelBook.SelectedTab and maxTab > TravelBook.SelectedTab then
    Menu.TurnPage(true)
    TravelBook.SelectTab(TravelBook.SelectedTab + 1)
  end
end

function TravelBook.SelectPreviousTab()
  if 2 <= TravelBook.SelectedTab and TravelBook.SelectedTab <= 4 then
    Menu.TurnPage(false)
    TravelBook.SelectTab(TravelBook.SelectedTab - 1)
  end
end

function TravelBook.GoToDescriptionPage(scorerId, itemName)
  Menu.TurnPage()
  TravelBook.MapTabNavigation(false)
  TravelBook.CreateItemSet("DescriptionPage")
  TravelBook.ArrangeDescriptionAdornments()
  TravelBook.ApplyPropertyToSet("DescriptionPage", "Visible", 1)
  TravelBook.ClearMenuSelection("Left")
  TravelBook.ClearMenuSelection("Right")
  Scorer.SetOnCancel(0, "TravelBook.CloseDescriptionPage")
  Scorer.SetPlayOnCancelSound(0, false)
  Scorer.SetPlayOnAcceptSound(0, false)
  Menu.ShowNavigationHUD("Menu_Nav_Back", nil, TravelBook.CloseBookKey)
  if 1 == TravelBook.SelectedTab then
    local title = TravelBook.GetItem("DescriptionPageTitle")
    title.Text = itemName
    title.Size = V2D(0, 0)
    TravelBook.CreateItemSet("ActionsDescriptionElements")
    TravelBook.ShowActionDescription(itemName)
    TravelBook.ApplyPropertyToSet("ActionsMenu", "Visible", 0)
    TravelBook.GetItem("ItemAdornment61").Visible = 0
    TravelBook.GetItem("ItemAdornment62").Visible = 0
  elseif 2 == TravelBook.SelectedTab then
    TravelBook.ItemSelection = itemName
    TravelBook.ApplyPropertyToSet("ItemsMenu", "Visible", 0)
    TravelBook.ApplyPropertyToSet("ItemsAdornments", "Visible", 0)
    TravelBook.CreateItemSet("ItemsDescriptionElements")
    Scorer.SetDefault(0, "DescriptionPageText", false)
    TravelBook.ShowItemDescription()
    TravelBook.ApplyPropertyToSet("DescriptionPageItemsAdornments", "Visible", 0)
  elseif 3 == TravelBook.SelectedTab then
    TravelBook.CreateItemSet("CharsDescriptionElements")
    TravelBook.UpdateLabels()
    TravelBook.ArrangeEnemyAttributesIcons()
    TravelBook.ShowCharDescription(itemName)
    TravelBook.ApplyPropertyToSet("CharsMenu", "Visible", 0)
    TravelBook.ApplyPropertyToSet("DescriptionPageCharAdornments", "Visible", 0)
    Scorer.SetDefault(0, "DescriptionPageText", false)
  elseif 4 == TravelBook.SelectedTab then
  end
  TravelBook.UpdateDescriptionScrollArrows()
  TravelBook.ScrollList:Delete()
end

function TravelBook.CloseDescriptionPage()
  local onFocusVolume = Game.Get("OnFocusSoundVol")
  Game.Set("OnFocusSoundVol", 0)
  Menu.TurnPage(false)
  if 1 == TravelBook.SelectedTab then
    Scorer.GetItem(0, "ActionVideo").Play = ""
    local actionName = TravelBook.CurrentActionName
    if actionName and TravelBookItems.ItemSets["ActionDescription_" .. actionName] then
      TravelBook.ApplyPropertyToSet("ActionDescription_" .. actionName, "DelMe", 1)
    end
  end
  TravelBook.ApplyPropertyToSet("DescriptionPage", "DelMe", 1)
  TravelBook.ApplyPropertyToSet("ActionsDescriptionElements", "DelMe", 1)
  TravelBook.ApplyPropertyToSet("BuyActionDialog", "DelMe", 1)
  TravelBook.ApplyPropertyToSet("ItemsDescriptionElements", "DelMe", 1)
  TravelBook.ApplyPropertyToSet("CharsDescriptionElements", "DelMe", 1)
  TravelBook.ApplyPropertyToSet("ExtensibleScrollDialog", "DelMe", 1)
  TravelBook.ClearActionsKeys()
  TravelBook.HintScrollControl:ClearMinimap()
  local leftMenuSelection = TravelBook.LeftMenuSelection
  TravelBook.SelectTab(TravelBook.SelectedTab)
  if TravelBook.ItemSelection then
    TravelBook.ItemsManager:MarkNewItems()
    Scorer.SetDefault(0, TravelBook.ItemSelection, false)
    TravelBook.ItemSelection = nil
    Scorer.SetOnCancel(0, "TravelBook.Close")
    TravelBook.MapTabNavigation(true)
  else
    TravelBook.LeftMenuSelection = leftMenuSelection
    TravelBook.BackToLeftMenu()
    TravelBook.EnableRightPage()
    Scorer.SetPlayOnCancelSound(0, false)
    local conditionFunction
    if 1 == TravelBook.SelectedTab then
      function conditionFunction(line)
        return TravelBook.CurrentActionName == line.uData.ActionName
      end
    elseif 3 == TravelBook.SelectedTab then
      function conditionFunction(line)
        return TravelBook.CurrentCharName == line.uData.CharName
      end
    end
    TravelBook.ScrollList:SetSelectedLineIf(conditionFunction)
    Scorer.SetOnCancel(0, "TravelBook.BackToLeftMenu")
  end
  Game.Set("OnFocusSoundVol", onFocusVolume)
end

function TravelBook.MapTabNavigation(enable)
  local maxTab = 3
  if Game.Get("ShowAchievements") ~= 0 then
    maxTab = 4
  end
  TravelBook.TabNavigationStatus = {
    enable and TravelBook.SelectedTab > 1,
    enable and maxTab > TravelBook.SelectedTab
  }
  if enable then
    local tabNames = {
      "Actions",
      "Items",
      "Chars",
      "Achievements"
    }
    local areNewElements = {
      TravelBook.ActionsManager:IsThereAnyNewAction(),
      TravelBook.ItemsManager:GetAnyNewItem(),
      TravelBook.CharManager:IsAnyCharNew(),
      TravelBook.AchievementsManager:IsAnyTrophyNew()
    }
    if TravelBook.SelectedTab > 1 then
      TravelBook.GetItem("LButtonText").Text = langstr("TBook_Title_" .. tabNames[TravelBook.SelectedTab - 1])
      TravelBook.UpdateKeys(TravelBook.GetItem("LButtonText"))
      if areNewElements[TravelBook.SelectedTab - 1] then
        TravelBook.GetItem("MainLButtonIcon").uData.IsNew = true
      else
        TravelBook.GetItem("MainLButtonIcon").uData.IsNew = false
      end
    else
    end
    local maxTab = 3
    if Game.Get("ShowAchievements") ~= 0 then
      maxTab = 4
    end
    if maxTab > TravelBook.SelectedTab then
      TravelBook.GetItem("RButtonText").Text = langstr("TBook_Title_" .. tabNames[TravelBook.SelectedTab + 1])
      TravelBook.UpdateKeys(TravelBook.GetItem("RButtonText"), true)
      if areNewElements[TravelBook.SelectedTab + 1] then
        TravelBook.GetItem("MainRButtonIcon").uData.IsNew = true
      else
        TravelBook.GetItem("MainRButtonIcon").uData.IsNew = false
      end
    else
    end
    Input.Bind(0, "Menu", "PgUp", "TravelBook.SelectNextTab")
    Input.Bind(0, "Menu", "PgDown", "TravelBook.SelectPreviousTab")
  else
    Input.Bind(0, "Menu", "PgUp", "")
    Input.Bind(0, "Menu", "PgDown", "")
  end
  TravelBook.TabNavigationEnabled = enable
end

function TravelBook.FadeOutNavigationHUD()
  Menu.FadeOutNavigationHUD()
  TravelBook.ApplyPropertyToSet("TabNavigation", "FadeOut", 0.25)
  TravelBook.GetItem("MainRButtonIcon").uData.OverrideIsNew = TravelBook.GetItem("MainRButtonIcon").uData.IsNew
  TravelBook.GetItem("MainLButtonIcon").uData.OverrideIsNew = TravelBook.GetItem("MainLButtonIcon").uData.IsNew
end

function TravelBook.FadeInNavigationHUD()
  Menu.FadeInNavigationHUD()
  TravelBook.GetItem("MainRButtonIcon").uData.OverrideIsNew = nil
  TravelBook.GetItem("MainLButtonIcon").uData.OverrideIsNew = nil
  local showIcon = Game.Get("Platform") ~= "PC" or Game.Get("PCPadConnected") == 1
  if TravelBook.TabNavigationStatus[1] then
    if showIcon then
      TravelBook.GetItem("MainLButtonIcon").FadeIn = 0.25
    end
    TravelBook.GetItem("LButtonText").FadeIn = 0.25
  end
  if TravelBook.TabNavigationStatus[2] then
    if showIcon then
      TravelBook.GetItem("MainRButtonIcon").FadeIn = 0.25
    end
    TravelBook.GetItem("RButtonText").FadeIn = 0.25
  end
  TravelBook.UpdateKeys(TravelBook.GetItem("LButtonText"))
  TravelBook.UpdateKeys(TravelBook.GetItem("RButtonText"), true)
end

function TravelBook.UpdateKeys(item, right)
  if Game.Get("Platform") ~= "PC" then
    return
  end
  if item.Text ~= item.uData.Original and item.Text ~= item.uData.WithKey then
    item.uData.Original = item.Text
    if right then
      item.uData.WithKey = item.Text .. " [" .. langstr("Keyboard_NEXT") .. "]"
    else
      item.uData.WithKey = "[" .. langstr("Keyboard_PRIOR") .. "] " .. item.Text
    end
  end
  if Game.Get("PCPadConnected") == 1 then
    item.Text = item.uData.Original
  else
    item.Text = item.uData.WithKey
  end
end

function TravelBook.InputChangedCallback()
  Menu.InputChangedCallback()
  if Game.Get("AfterDrawCallback") == nil or Game.Get("AfterDrawCallback") == "" then
    Game.Set("AfterDrawCallback", "TravelBook.AfterDrawInputChanged")
  else
    TravelBook.AfterDrawInputChanged()
  end
end

function TravelBook.AfterDrawInputChanged()
  if not Game.GetMenu():IsTurningPage() then
    TravelBook.FadeOutNavigationHUD()
    TravelBook.FadeInNavigationHUD()
  end
end

function TravelBook._ReloadItemSet(setName)
  Game.PreloadLibrary("Scripts/Menu/TravelBookItems.lua", "TravelBookItems", false)
  TravelBook.CreateItemSet(setName, true)
end

function TravelBook.LinkUDList(itemList)
  for i = 1, #itemList - 1 do
    local up, down = Scorer.GetItem(0, itemList[i]), Scorer.GetItem(0, itemList[i + 1])
    if nil == up then
      Game.ConsoleError("TravelBook.LinkUDList: Item " .. tostring(itemList[i]) .. " not found\n")
    elseif nil ~= down then
      Menu.LinkUD(up, down)
    end
  end
end

function TravelBook.LinkLRList(itemList)
  for i = 1, #itemList - 1 do
    local left, right = Scorer.GetItem(0, itemList[i]), Scorer.GetItem(0, itemList[i + 1])
    if nil == left then
      Game.ConsoleError("TravelBook.LinkLRList: Item " .. tostring(itemList[i]) .. " not found\n")
    elseif nil ~= right then
      Menu.LinkLR(left, right)
    end
  end
end

function TravelBook.FillData()
  TravelBook.GetItemStatus()
end

function TravelBook.GetItemStatus()
  local itemNames = {
    "Scroll1Image",
    "Scroll2Image",
    "Scroll3Image",
    "Scroll4Image",
    "ItemMedallionDark",
    "ItemMedallionLight",
    "GauntletImage",
    "BootsImage",
    "WingsImage",
    "DaggerImage",
    "FairiesImage",
    "CrystalsImage",
    "VialsImage"
  }
  for _, itemName in ipairs(itemNames) do
    if TravelBook.ItemsManager:IsItemCollected(itemName) then
      TravelBook.ShowItemQuantity(itemName)
    else
      local scorerItem = TravelBook.GetItem(itemName)
      scorerItem.Alpha = 0
      scorerItem.uData.IsNavigationDisabled = true
      scorerItem.Size = V2D(0, 0)
    end
  end
  local stakeItem = Scorer.GetItem(0, "CrossStakeImage")
  if TravelBook.IsStakeBroken() then
    stakeItem.SpriteIndex = 23
  elseif TravelBook.IsStakeAvailable() then
    stakeItem.SpriteIndex = 16
  else
    stakeItem.uData.IsNavigationDisabled = true
    stakeItem.Visible = 0
    Scorer.GetItem(0, "CrossBodyImage").SpriteIndex = 17
  end
  local chainItem = Scorer.GetItem(0, "CrossChainImage")
  if Belmont.ChainModelInUse.Value == 1 then
    chainItem.uData.DescriptionTag = chainItem.uData.DescriptionTag .. "0_"
    chainItem.uData.ItemNameTag = chainItem.uData.ItemNameTag .. "0"
    local hookItem = Scorer.GetItem(0, "CrossHookImage")
    hookItem.uData.IsNavigationLinked = true
    TravelBook.ApplyProperty(hookItem, {
      "fPos",
      V2D(0.88, 0.585)
    })
  elseif Belmont.ChainModelInUse.Value == 2 then
    Scorer.GetItem(0, "CrossHookImage").SpriteIndex = 19
    chainItem.uData.DescriptionTag = chainItem.uData.DescriptionTag .. "0_"
    chainItem.uData.ItemNameTag = chainItem.uData.ItemNameTag .. "0"
  elseif Belmont.ChainModelInUse.Value >= 3 then
    chainItem.SpriteIndex = 18
    Scorer.GetItem(0, "CrossHookImage").SpriteIndex = 19
    chainItem.uData.DescriptionTag = chainItem.uData.DescriptionTag .. "1_"
    chainItem.uData.ItemNameTag = chainItem.uData.ItemNameTag .. "1"
    chainItem.uData.BackgroundFile = string.gsub(chainItem.uData.BackgroundFile, ".dds$", "2.dds")
  end
  local gemTypes = {
    "Dark",
    "Light",
    "Life"
  }
  for _, gemType in pairs(gemTypes) do
    local medallion = Scorer.GetItem(0, "ItemMedallion" .. gemType)
    local totalGems = CollectableItems["gv" .. gemType .. "Gems"].Value:len()
    local nGems = CollectableItems.GetNumGems(gemType .. "Gems")
    if totalGems > nGems then
      TravelBook.FillMedallion(gemType, nGems % 5)
    else
      TravelBook.FillMedallion(gemType, 5)
    end
  end
end

function TravelBook.ShowItemQuantity(itemName)
  local itemQuantities = {
    DaggerImage = {
      WeaponsDagger.GetMaxDaggers(),
      WeaponsDagger.Daggers.Value,
      "DaggerQuantity"
    },
    VialsImage = {
      WeaponsVial.GetMaxVials(),
      WeaponsVial.Vials.Value,
      "VialsQuantity"
    },
    FairiesImage = {
      WeaponsFairy.GetMaxFairies(),
      WeaponsFairy.Fairies.Value,
      "FairiesQuantity"
    }
  }
  if itemQuantities[itemName] then
    local text = TravelBook.GetItem(itemQuantities[itemName][3])
    text.Text = itemQuantities[itemName][2] .. "/" .. itemQuantities[itemName][1]
    text.Visible = 1
  end
  if "CrystalsImage" == itemName then
    if WeaponsCrystal.CrystalPieces.Value == WeaponsCrystal.InitialUses then
      TravelBook.GetItem("CrystalPieceFull").uData.IsNavigationDisabled = false
    else
      for i = 1, WeaponsCrystal.CrystalPieces.Value do
        TravelBook.GetItem("CrystalPiece" .. i).uData.IsNavigationDisabled = false
      end
    end
  end
end

function TravelBook.ScrollListUp()
  TravelBook.ScrollList:SelectPrevious()
  if 4 == TravelBook.SelectedTab then
    local line = TravelBook.ScrollList.List[TravelBook.ScrollList.SelectedLine]
    TravelBook.SelectAchievement(line.uData.AchievementIndex)
  end
end

function TravelBook.ScrollListDown()
  TravelBook.ScrollList:SelectNext()
  if 4 == TravelBook.SelectedTab then
    local line = TravelBook.ScrollList.List[TravelBook.ScrollList.SelectedLine]
    TravelBook.SelectAchievement(line.uData.AchievementIndex)
  end
end

function TravelBook.BackToLeftMenu()
  TravelBook.ScrollList:Delete()
  TravelBook.MapTabNavigation(true)
  local leftMenuList = {}
  if 1 == TravelBook.SelectedTab then
    leftMenuList = TravelBookItems.ItemSets.ActionsMenu
  elseif 3 == TravelBook.SelectedTab then
    leftMenuList = TravelBookItems.ItemSets.CharsMenu
  end
  for _, leftItemName in pairs(leftMenuList) do
    local leftItem = Scorer.GetItem(0, leftItemName)
    if leftItem then
      leftItem.Alpha = 255
      if "Text" == TravelBookItems.Items[leftItemName].ItemClass then
        local sizeX, sizeY = Scorer.GetTextArea(TravelBook.Fonts.MenuLeft, leftItem.Text)
        leftItem.Size = V2D(sizeX, sizeY)
      end
    end
  end
  if 1 == TravelBook.SelectedTab then
    TravelBook.ApplyPropertyToSet("ActionsRightMenu", "Alpha", 128)
  end
  if TravelBook.LeftMenuSelection then
    Scorer.SetDefault(0, TravelBook.LeftMenuSelection, true)
  end
  Scorer.SetOnCancel(0, "TravelBook.Close")
  Scorer.SetPlayOnCancelSound(0, false)
  Scorer.SetPlayOnAcceptSound(0, true)
  TravelBook.OpenRightMenu()
  TravelBook.ClearMenuSelection("Right")
  TravelBook.GetItem("LeftMenuArrowLeft").Alpha = 255
  TravelBook.GetItem("LeftMenuArrowRight").Alpha = 255
  Menu.ShowNavigationHUD(TravelBook.CloseBookKey, "Menu_Nav_SelectCategory", TravelBook.CloseBookKey)
end

function TravelBook.OpenRightMenu()
  TravelBook.ScrollList:Delete()
  TravelBook.LeftMenuSelection = Scorer.GetActual(0)
  local menuAssociations = {
    {
      "BasicActions",
      TravelBook.ActionsManager.ActionsTable[1]
    },
    {
      "AdvancedMoves",
      TravelBook.ActionsManager.ActionsTable[3]
    },
    {
      "SecondaryWeapons",
      TravelBook.ActionsManager.ActionsTable[2]
    },
    {
      "Mounts",
      TravelBook.ActionsManager.ActionsTable[4]
    },
    {
      "RelicPowers",
      TravelBook.ActionsManager.ActionsTable[5]
    },
    {
      "LaurasMoves",
      TravelBook.ActionsManager.ActionsTable[6]
    },
    {
      "MainCharsText",
      TravelBook.CharManager.CharTable[1]
    },
    {
      "MonstersText",
      TravelBook.CharManager.CharTable[2]
    },
    {
      "AchievementsMain",
      TravelBook.AchievementsManager.List
    }
  }
  for i, menuLink in pairs(menuAssociations) do
    if TravelBook.LeftMenuSelection == menuLink[1] then
      for j, lineInfo in pairs(menuLink[2]) do
        local line
        if 8 < i then
          line = TravelBook.ScrollList:NewLine("Trophy" .. j, Game.GetLangStr("Trophy" .. lineInfo .. "_Title"))
          line.uData.IsNew = Game.IsAchievementUnlocked(lineInfo) == 1
          if line.uData.IsNew then
            Game.SetAchievementStatus(lineInfo, 2)
          end
          line.uData.IsAvailable = Game.IsAchievementUnlocked(lineInfo) ~= 0
          line.uData.IsDisabled = not line.uData.IsAvailable
          line.uData.IsIndented = false
          line.uData.IsBuyable = false
          line.uData.AchievementIndex = lineInfo
          line.OnAccept = ""
          line.onLeft = ""
        elseif 6 < i then
          local charStatus, killsPending = TravelBook.CharManager:GetCharStatus(lineInfo[1])
          if "Locked" ~= charStatus and "Pending" ~= charStatus and not TravelBook.CharManager:IsCharFromAnotherDLC(lineInfo[1]) then
            local lineName = Game.GetLangStr("TBook_Char_Name_" .. lineInfo[1])
            if "" == lineName then
              lineName = lineInfo[1]
            end
            line = TravelBook.ScrollList:NewLine(lineName)
            if "Pending" == charStatus then
              local killsNeeded = TravelBook.CharManager:GetKillsNeeded(lineInfo[1])
              line.uData.SubLine = TravelBook.CreateCharSubLine(lineInfo[1], killsNeeded - killsPending, killsNeeded)
              if line.uData.SubLine then
                line.OnAccept = ""
              end
              line.uData.IsDisabled = true
            else
              line.uData.IsAvailable = true
              if "New" == charStatus then
                line.uData.IsNew = true
              end
            end
            line.uData.DescriptionTag = "TBook_Char_Desc_" .. lineInfo[1]
            line.uData.CharName = lineInfo[1]
          end
        else
          local actionName = lineInfo[1]
          if TravelBook.ActionsManager:IsUnlocked(actionName) and (TravelBook.ActionsManager:IsActionDisabled(actionName) or TravelBook.ActionsManager:IsActionAccesible(actionName)) then
            local actionUpgrade = TravelBook.ActionsManager:GetActionUpgrade(actionName)
            if nil == actionUpgrade or not TravelBook.ActionsManager:IsBought(actionUpgrade) then
              local lineText = Game.GetLangStr("TBook_Action_Name_" .. actionName)
              if "" == lineText then
                lineText = actionName
              end
              local lineName = string.gsub(lineText, "/", "")
              local isIndented
              if TravelBook.ActionsManager:IsUpgrade(actionName) and not TravelBook.ActionsManager:IsBought(actionName) then
                isIndented = true
                lineText = langstr("TBook_Action_Upgrade")
              end
              line = TravelBook.ScrollList:NewLine(lineName, lineText)
              line.uData.IsIndented = isIndented
              line.uData.DescriptionTag = "TBook_Action_Desc_" .. actionName
              line.uData.ActionName = actionName
              if TravelBook.ActionsManager:IsNew(actionName) then
                line.uData.IsNew = true
              end
              if TravelBook.ActionsManager:IsActionDisabled(actionName) then
                line.uData.IsDisabled = true
              elseif TravelBook.ActionsManager:IsMarkedAsBuyable(actionName) and not TravelBook.ActionsManager:IsBought(actionName) then
                line.uData.IsBuyable = true
              else
                line.uData.IsAvailable = true
              end
            end
          end
        end
      end
      TravelBook.ScrollList:Update(true)
      TravelBook.ScrollList:Enable(false)
    end
  end
  TravelBook.MarkMenuSelection("Left")
end

function TravelBook.EnableRightPage()
  if #TravelBook.ScrollList.List == 0 then
    return
  end
  local leftMenuList
  if 1 == TravelBook.SelectedTab then
    leftMenuList = TravelBookItems.ItemSets.ActionsMenu
  elseif 3 == TravelBook.SelectedTab then
    leftMenuList = TravelBookItems.ItemSets.CharsMenu
  elseif 4 == TravelBook.SelectedTab then
    leftMenuList = TravelBookItems.ItemSets.AchievementsMenu
  end
  for _, leftItemName in pairs(leftMenuList) do
    local leftItem = Scorer.GetItem(0, leftItemName)
    if leftItem then
      leftItem.Alpha = 128
      leftItem.Size = V2D(0, 0)
    end
  end
  TravelBook.GetItem("LeftMenuArrowLeft").Alpha = 128
  TravelBook.GetItem("LeftMenuArrowRight").Alpha = 128
  TravelBook.ScrollList:Enable(true)
  if 1 == TravelBook.SelectedTab then
    TravelBook.ApplyPropertyToSet("ActionsRightMenu", "Alpha", 255)
  end
  if 4 ~= TravelBook.SelectedTab then
    Scorer.SetOnCancel(0, "TravelBook.BackToLeftMenu")
  end
  Scorer.SetPlayOnCancelSound(0, true)
  Scorer.SetPlayOnAcceptSound(0, false)
end

function TravelBook.SetRelicConditionsToLine(line)
  local actionName = line.uData.ActionName
  local relicIndices = {
    53,
    54,
    51,
    52,
    50
  }
  local actionConditions = TravelBook.ActionsManager:GetRelicConditions(actionName)
  line.uData.ActionConditionIndices = {}
  for _, actionConditionIndex in ipairs(actionConditions) do
    table.insert(line.uData.ActionConditionIndices, relicIndices[actionConditionIndex])
  end
end

function TravelBook.OnRenderActionConditionIcons(scorerId, iconName, timeDiff)
  local icon = Scorer.GetItem(scorerId, iconName)
  local conditionTextItem = TravelBook.GetItem("ActionConditionsText")
  local textSize = Scorer.GetTextArea(TravelBook.Fonts.ActionConstraint, conditionTextItem.Text)
  local firstPosition = conditionTextItem.Pos + V2D(textSize, 0)
  icon.SkipRender = 0
  local relicIndices = {
    53,
    54,
    51,
    52,
    50
  }
  if 1 == conditionTextItem.Visible then
    for i, condition in ipairs(TravelBook.CurrentActionConditions) do
      icon.Pos = firstPosition + V2D(i * 32, 0)
      icon.SpriteIndex = relicIndices[condition]
      icon:Render(scorerId)
    end
  end
  icon.SkipRender = 1
end

function TravelBook.ShowActionDescription(itemName)
  local selectedItem = Scorer.GetItem(0, itemName)
  local actionName = selectedItem.uData.ActionName
  TravelBook.CurrentActionName = actionName
  TravelBook.GetItem("DescriptionPageText").Text = selectedItem.uData.DescriptionTag
  local videoName = TravelBook.ActionsManager:GetVideoFileName(actionName)
  local actionVideo = TravelBook.GetItem("ActionVideo")
  actionVideo.PlayLoop = ""
  Game.GetMenu().OnEndPageTurn = "TravelBook.OnEndPageTurnActionDescription"
  actionVideo.uData.VideoName = videoName
  actionVideo.FadeIn = 1.5
  TravelBook.ActionsManager:VisitAction(actionName)
  selectedItem.uData.IsNew = false
  local actionKeysCode = TravelBook.ActionsManager:GetKeysCode(actionName)
  if actionKeysCode then
    TravelBook.CreateActionsKeys(actionKeysCode)
  end
  TravelBook.GetItem("ActionConstraintText").Text = Game.GetLangStr("TBook_Action_Constraint_" .. actionName)
  local descriptionText = TravelBook.GetItem("DescriptionPageText")
  descriptionText.MaxLines = 4
  TravelBook.ApplyProperty(TravelBook.GetItem("DescriptionScrollArrowDown"), {
    "fPos",
    V2D(0.25, 0.6)
  })
  Scorer.SetDefault(0, "DescriptionPageText", false)
  TravelBook.SetBackground("Action_" .. actionName .. ".dds", "ActionsDefault.dds")
  if TravelBookItems.ItemSets["ActionDescription_" .. actionName] then
    TravelBook.CreateItemSet("ActionDescription_" .. actionName)
  end
  if TravelBook.ActionsManager:IsMarkedAsBuyable(actionName) then
    TravelBook.CreateItemSet("BuyActionDialog")
    TravelBook.SetupBuyDialog()
  elseif TravelBook.ActionsManager.DescriptionConfigurators[actionName] then
    TravelBook.ActionsManager.DescriptionConfigurators[actionName](actionName)
  else
    TravelBook.GetItem("ActionBoughtText").Visible = 1
  end
  TravelBook.CurrentActionConditions = TravelBook.ActionsManager:GetRelicConditions(actionName)
  if 0 == #TravelBook.CurrentActionConditions then
    TravelBook.GetItem("ActionConditionsText").Visible = 0
  end
end

function TravelBook.OnEndPageTurnActionDescription()
  TravelBook.FadeInNavigationHUD()
  local actionVideo = TravelBook.GetItem("ActionVideo")
  actionVideo.Visible = 1
  actionVideo.PlayLoop = actionVideo.uData.VideoName
  actionVideo.uData.VideoName = nil
  Game.GetMenu().OnEndPageTurn = "TravelBook.FadeInNavigationHUD"
end

function TravelBook.SetupBuyDialog()
  TravelBook.GetItem("ActionConfirmText").Visible = 0
  Scorer.SetDefault(0, "DescriptionPageText", false)
  local isBought = TravelBook.ActionsManager:IsBought(TravelBook.CurrentActionName)
  local canBeBought = TravelBook.ActionsManager:CanBeBought(TravelBook.CurrentActionName)
  if isBought then
    TravelBook.GetItem("ActionAvailableCash").Visible = 0
    TravelBook.GetItem("ActionAvailableCashHeader").Visible = 0
    TravelBook.GetItem("ActionPrice").Visible = 0
    TravelBook.GetItem("ActionBuyDialogCurrencyIcon1").Visible = 0
    TravelBook.GetItem("ActionBuyDialogCurrencyIcon2").Visible = 0
  else
    TravelBook.GetItem("ActionPrice").Text = string.format(Game.GetLangStr("TBook_Action_Price"), TravelBook.ActionsManager:GetActionPrice(TravelBook.CurrentActionName))
    TravelBook.AppendCurrencyIconToText(TravelBook.GetItem("ActionPrice"), "ActionBuyDialogCurrencyIcon1", TravelBook.Fonts.ActionBuyDialog, V2D(12, 1))
    TravelBook.GetItem("ActionAvailableCash").Text = tostring(Experience.EPoints.Value)
    TravelBook.AppendCurrencyIconToText(TravelBook.GetItem("ActionAvailableCash"), "ActionBuyDialogCurrencyIcon2", TravelBook.Fonts.ActionBuyDialog, V2D(10, 1))
    TravelBook.GetItem("ActionBoughtText").Visible = 0
  end
  local buyButton = TravelBook.GetItem("ActionAcceptButton")
  if isBought or not canBeBought then
    buyButton.Visible = 0
  else
    TravelBook.GetItem("ActionAcceptButton").Text = langstr("TBook_Action_Buy")
    Scorer.SetDefault(0, "ActionAcceptButton", false)
    buyButton.Size = V2D(1, 1)
    Menu.ShowNavigationHUD("Menu_Nav_Back", "TBook_Action_Buy", TravelBook.CloseBookKey)
  end
end

function TravelBook.ShowBuyActionConfirmation()
  TravelBook.GetItem("ActionConfirmText").Visible = 1
  TravelBook.GetItem("ActionAvailableCash").Visible = 0
  TravelBook.GetItem("ActionPrice").Visible = 0
  local buyButton = TravelBook.GetItem("ActionAcceptButton")
  buyButton.Size = V2D(1, 1)
  buyButton.Text = langstr("Menu_Question_Yes")
  buyButton.OnAccept = "TravelBook.BuyAction"
  Scorer.SetDefault(0, "ActionAcceptButton", false)
  Scorer.SetOnCancel(0, "TravelBook.SetupBuyDialog")
end

function TravelBook.UnlockAllLauraActions()
  for _, actionInfo in ipairs(TravelBook.ActionsManager.ActionsTable[6]) do
    TravelBook.ActionsManager:NewAction(actionInfo[1])
  end
end

function TravelBook.BuyAction()
  TravelBook.ActionsManager:BuyAction(TravelBook.CurrentActionName)
  TravelBook.ApplyPropertyToSet("BuyActionDialog", "Visible", 0)
  Scorer.SetDefault(0, "DescriptionPageText", false)
  local boughtText = TravelBook.GetItem("ActionBoughtText")
  boughtText.Visible = 1
  boughtText.OnRender = "TravelBook.OnRenderHighlight"
  Scorer.PlayScorerSound("ComboBought", TravelBook.SoundVolumeComboBought, 1)
  if TravelBook.ActionsManager:CheckNewUnlockedActions() then
    Menu.FreezeInput(TravelBook.DoNothing)
    Scorer.AddScheduledFunc(0, 2, "", "TravelBook.ShowMessage")
    TravelBook.FadeOutNavigationHUD()
  end
  Menu.ShowNavigationHUD("Menu_Nav_Back", nil, TravelBook.CloseBookKey)
end

function TravelBook.ShowItemDescription()
  local selectedItem = Scorer.GetItem(0, TravelBook.ItemSelection)
  if "DaggerImage" == TravelBook.ItemSelection and 0 < WeaponsDagger.DaggersExpansions or "VialsImage" ~= TravelBook.ItemSelection or 0 < WeaponsVial.VialsExpansions then
  end
  if selectedItem.uData.DescriptionTag then
    TravelBook.GetItem("DescriptionPageText").Text = selectedItem.uData.DescriptionTag
    TravelBook.GetItem("DescriptionPageTitle").Text = langstr(selectedItem.uData.ItemNameTag or "")
    TravelBook.SetBackground(selectedItem.uData.BackgroundFile or "", "ItemsDefault.dds")
  else
    local scrollIndex
    if "Scroll1Image" == TravelBook.ItemSelection then
      scrollIndex = tonumber(string.sub(CollectableItems.CreateScrollData(), 1, 1))
    elseif "Scroll2Image" == TravelBook.ItemSelection then
      scrollIndex = tonumber(string.sub(CollectableItems.CreateScrollData(), 2, 2))
    elseif "Scroll3Image" == TravelBook.ItemSelection then
      scrollIndex = tonumber(string.sub(CollectableItems.CreateScrollData(), 3, 3))
    elseif "Scroll4Image" == TravelBook.ItemSelection then
      scrollIndex = tonumber(string.sub(CollectableItems.CreateScrollData(), 4, 4))
    end
    if scrollIndex then
      local levelName = string.sub(init.LevelName, 7)
      local hintSolutionStatus, puzzleAward = Experience.GetMapPuzzleStatus(scrollIndex)
      TravelBook.CurrentScrollIndex = scrollIndex
      if "Locked" == hintSolutionStatus then
        TravelBook.SetupExtensibleScroll()
      elseif "Unlocked" == hintSolutionStatus then
        TravelBook.SetupExtendedScroll(scrollIndex)
      else
        local backgroundIndex
        if TravelBook.IsAutoScroll(scrollIndex) then
          backgroundIndex = 5
        else
          backgroundIndex = 0
          for _, nameByte in ipairs({
            levelName:byte(1, #levelName)
          }) do
            backgroundIndex = backgroundIndex + nameByte
          end
          backgroundIndex = (backgroundIndex + scrollIndex) % 4 + 1
        end
        TravelBook.SetBackground("ScrollDefault" .. backgroundIndex .. ".dds", "ScrollDefault1.dds", "ItemsDefault.dds")
        TravelBook.GetItem("DescriptionPageText").Text = "TBook_Scroll_" .. levelName .. "_" .. scrollIndex .. "_"
      end
      TravelBook.GetItem("DescriptionPageTitle").Text = langstr("TBook_Scroll_" .. levelName .. "_" .. scrollIndex .. "_Title")
      TravelBook.GetItem("DescriptionPageTitle").Size = V2D(0, 0)
    end
  end
  TravelBook.ItemsManager:VisitItem(selectedItem.Name)
end

function TravelBook.ShowCharDescription(itemName)
  local charItem = Scorer.GetItem(0, itemName)
  local descriptionTextItem = TravelBook.GetItem("DescriptionPageText")
  descriptionTextItem.Text = charItem.uData.DescriptionTag
  descriptionTextItem.MaxLines = 5
  TravelBook.ApplyProperty(descriptionTextItem, {
    "fPos",
    V2D(0.05, 0.62)
  })
  TravelBook.ApplyProperty(TravelBook.GetItem("DescriptionScrollArrowUp"), {
    "fPos",
    V2D(0.25, 0.55)
  })
  TravelBook.ApplyProperty(TravelBook.GetItem("DescriptionScrollArrowDown"), {
    "fPos",
    V2D(0.25, 0.945)
  })
  TravelBook.CharManager:VisitChar(charItem.uData.CharName)
  TravelBook.ShowCharSensitivities(charItem.uData.CharName)
  local defaultBackgrounds = {
    MainCharsText = "MainCharsDefault.dds",
    MonstersText = "MonstersDefault.dds"
  }
  TravelBook.SetBackground("Char_" .. charItem.uData.CharName .. ".dds", defaultBackgrounds[TravelBook.LeftMenuSelection])
  local enemySize = TravelBook.CharManager:GetEnemySize(charItem.uData.CharName)
  if enemySize then
    local enemyDifficulty = TravelBook.CharManager:GetEnemyDifficulty(charItem.uData.CharName)
    TravelBook.ApplyProperty(TravelBook.GetItem("CharName"), {
      "fPos",
      V2D(0.06, 0.1)
    })
    TravelBook.ArrangeSet(1, {
      {
        "CharSizeTag"
      },
      {
        "CharDifficultyTag"
      }
    }, V2D(0.06, 0.17), 0.18, 0.05)
    Scorer.GetItem(0, "CharName").Text = langstr("TBook_Char_Name_" .. charItem.uData.CharName)
    Scorer.GetItem(0, "CharSize").Text = langstr("TBook_Enemy_Size_" .. enemySize)
    Scorer.GetItem(0, "CharDifficulty").Text = langstr("TBook_Enemy_Difficulty_" .. enemyDifficulty)
    TravelBook.JoinTextsH("CharSizeTag", "CharSize", TravelBook.Fonts.CharHeaderMedium, V2D(10, 4))
    TravelBook.JoinTextsH("CharDifficultyTag", "CharDifficulty", TravelBook.Fonts.CharHeaderMedium, V2D(10, 4))
    Scorer.GetItem(0, "DescriptionPageTitle").Visible = 0
  else
    Scorer.GetItem(0, "CharName").Visible = 0
    Scorer.GetItem(0, "CharSize").Visible = 0
    Scorer.GetItem(0, "CharDifficulty").Visible = 0
    Scorer.GetItem(0, "CharSizeTag").Visible = 0
    Scorer.GetItem(0, "CharDifficultyTag").Visible = 0
    Scorer.GetItem(0, "DescriptionPageTitle").Text = langstr("TBook_Char_Name_" .. charItem.uData.CharName)
  end
  charItem.uData.IsNew = false
  TravelBook.CurrentCharName = charItem.uData.CharName
end

function TravelBook.JoinTextsH(leftItemName, rightItemName, leftItemFont, separation)
  local leftItem = Scorer.GetItem(0, leftItemName)
  local rightItem = Scorer.GetItem(0, rightItemName)
  separation = separation or V2D()
  if rightItem and leftItem then
    rightItem.Align = "Left"
    local sizeX, _ = Scorer.GetTextArea(leftItemFont, leftItem.Text)
    rightItem.Pos = leftItem.Pos + V2D(sizeX, 0) + separation
  end
end

function TravelBook.ScrollDownDescription()
  local descriptionText = Scorer.GetItem(0, "DescriptionPageText")
  if descriptionText and descriptionText.FirstLine < descriptionText.NumLines - descriptionText.MaxLines then
    local time = Game.GetSysTime()
    if time - TravelBook.LastScrollTime > Game.Get("TimeToNexLineInTextScroller") then
      descriptionText.FirstLine = descriptionText.FirstLine + 1
      TravelBook.LastScrollTime = time
    end
    TravelBook.OnDescriptionScrollDown()
  end
  TravelBook.UpdateDescriptionScrollArrows()
end

function TravelBook.ScrollUpDescription()
  local descriptionText = Scorer.GetItem(0, "DescriptionPageText")
  if descriptionText and 0 < descriptionText.FirstLine then
    local time = Game.GetSysTime()
    if time - TravelBook.LastScrollTime > Game.Get("TimeToNexLineInTextScroller") then
      descriptionText.FirstLine = descriptionText.FirstLine - 1
      TravelBook.LastScrollTime = time
    end
    TravelBook.OnDescriptionScrollUp()
  end
  TravelBook.UpdateDescriptionScrollArrows()
end

function TravelBook.OnDescriptionScrollUp(scorerId, itemName)
  local upArrow = TravelBook.GetItem("DescriptionScrollArrowUp")
  upArrow.OnRender = "TravelBook.OnRenderScrollArrow"
  upArrow.uData.GlowRemainTime = 0.5
end

function TravelBook.OnDescriptionScrollDown(scorerId, itemName)
  local downArrow = TravelBook.GetItem("DescriptionScrollArrowDown")
  downArrow.OnRender = "TravelBook.OnRenderScrollArrow"
  downArrow.uData.GlowRemainTime = 0.5
end

function TravelBook.OnRenderScrollArrow(scorerId, itemName, timeDiff)
  local arrowItem = Scorer.GetItem(scorerId, itemName)
  local t = math.max(0, (arrowItem.uData.GlowRemainTime - timeDiff) / 0.5)
  if 0.75 <= t then
    t = 1
  end
  arrowItem.uData.GlowRemainTime = arrowItem.uData.GlowRemainTime - timeDiff
  arrowItem.GlowColor = Color(240 * t, 160 * t, 100 * t, 96 * t)
  if t <= 0 or arrowItem.uData.HideAtGlowEnd and t <= 0.3 then
    arrowItem.OnRender = ""
    if arrowItem.uData.HideAtGlowEnd then
      arrowItem.uData.HideAtGlowEnd = nil
      arrowItem.Visible = 0
      arrowItem.uData.GlowRemainTime = 0
      arrowItem.GlowColor = Color(0, 0, 0, 0)
    end
  end
end

function TravelBook.ClearScrollArrow(arrow)
  glowRemainTime = arrow.uData.GlowRemainTime
  if glowRemainTime and glowRemainTime > 0 then
    arrow.uData.HideAtGlowEnd = true
  else
    arrow.Visible = 0
  end
end

function TravelBook.UpdateDescriptionScrollArrows()
  local descriptionText = Scorer.GetItem(0, "DescriptionPageText")
  local upArrow = TravelBook.GetItem("DescriptionScrollArrowUp")
  local downArrow = TravelBook.GetItem("DescriptionScrollArrowDown")
  if descriptionText.FirstLine == 0 or 0 == descriptionText.Visible then
    TravelBook.ClearScrollArrow(upArrow)
  else
    upArrow.Visible = 1
    upArrow.uData.HideAtGlowEnd = nil
  end
  if descriptionText.NumLines <= descriptionText.MaxLines or descriptionText.FirstLine + descriptionText.MaxLines == descriptionText.NumLines or 0 == descriptionText.Visible then
    TravelBook.ClearScrollArrow(downArrow)
  else
    downArrow.Visible = 1
    downArrow.uData.HideAtGlowEnd = nil
  end
end

function TravelBook.LinkElementTry(elementName, upList, downList, leftList, rightList)
  local element = Scorer.GetItem(0, elementName)
  local links = {
    {upList, "Up"},
    {downList, "Down"},
    {leftList, "Left"},
    {rightList, "Right"}
  }
  for i, linkInfo in pairs(links) do
    for j, itemName in pairs(linkInfo[1]) do
      local item = Scorer.GetItem(0, itemName)
      if item and not item.uData.IsNavigationDisabled and not item.uData.IsNavigationLinked then
        element[linkInfo[2]] = itemName
        break
      end
    end
  end
end

function TravelBook.SetItemsNavigation()
  local navigation = {
    {
      "ItemMedallionLight",
      {},
      {
        "GauntletImage",
        "Scroll1Image",
        "Scroll2Image",
        "Scroll3Image",
        "Scroll4Image"
      },
      {
        "ItemMedallionLife"
      },
      {}
    },
    {
      "ItemMedallionLife",
      {},
      {
        "WingsImage",
        "GauntletImage",
        "Scroll2Image",
        "Scroll3Image",
        "Scroll1Image",
        "Scroll4Image"
      },
      {
        "ItemMedallionDark",
        "CrystalsImage",
        "DaggerImage",
        "CrossBodyImage"
      },
      {
        "ItemMedallionLight"
      }
    },
    {
      "ItemMedallionDark",
      {},
      {
        "BootsImage",
        "WingsImage",
        "GauntletImage",
        "Scroll4Image",
        "Scroll3Image",
        "Scroll2Image",
        "Scroll1Image"
      },
      {
        "CrystalsImage",
        "DaggerImage"
      },
      {
        "ItemMedallionLife"
      }
    },
    {
      "FairiesImage",
      {},
      {
        "VialsImage",
        "DaggerImage"
      },
      {
        "DaggerImage"
      },
      {
        "CrystalsImage",
        "ItemMedallionDark",
        "ItemMedallionLife"
      }
    },
    {
      "CrystalsImage",
      {
        "FairiesImage"
      },
      {
        "VialsImage",
        "CrossBodyImage"
      },
      {
        "DaggerImage",
        "FairiesImage"
      },
      {
        "ItemMedallionDark",
        "ItemMedallionLife"
      }
    },
    {
      "VialsImage",
      {
        "FairiesImage"
      },
      {
        "CrossBodyImage"
      },
      {
        "DaggerImage"
      },
      {
        "CrystalsImage"
      }
    },
    {
      "DaggerImage",
      {
        "FairiesImage"
      },
      {
        "VialsImage",
        "CrossChainImage",
        "CrossHookImage",
        "CrossBodyImage"
      },
      {},
      {
        "CrystalsImage",
        "ItemMedallionDark",
        "ItemMedallionLife"
      }
    },
    {
      "GauntletImage",
      {
        "ItemMedallionLight",
        "ItemMedallionLife"
      },
      {
        "WingsImage",
        "Scroll1Image",
        "Scroll2Image",
        "Scroll3Image",
        "Scroll4Image"
      },
      {
        "BootsImage",
        "CrossStakeImage",
        "CrossBodyImage"
      },
      {}
    },
    {
      "WingsImage",
      {
        "ItemMedallionLife"
      },
      {
        "Scroll2Image",
        "Scroll3Image",
        "Scroll1Image",
        "Scroll4Image"
      },
      {
        "BootsImage",
        "CrossStakeImage",
        "CrossBodyImage"
      },
      {
        "GauntletImage"
      }
    },
    {
      "BootsImage",
      {
        "ItemMedallionDark",
        "ItemMedallionLife"
      },
      {
        "WingsImage",
        "Scroll4Image",
        "Scroll3Image",
        "Scroll2Image",
        "Scroll1Image"
      },
      {
        "CrossStakeImage",
        "CrossBodyImage"
      },
      {
        "GauntletImage"
      }
    },
    {
      "Scroll1Image",
      {
        "GauntletImage",
        "ItemMedallionLight",
        "ItemMedallionLife",
        "ItemMedallionDark"
      },
      {},
      {
        "Scroll2Image",
        "Scroll3Image",
        "Scroll4Image",
        "CrossStakeImage",
        "CrossBodyImage"
      },
      {}
    },
    {
      "Scroll2Image",
      {
        "WingsImage",
        "GauntletImage",
        "ItemMedallionLight",
        "ItemMedallionLife",
        "ItemMedallionDark"
      },
      {},
      {
        "Scroll3Image",
        "Scroll4Image",
        "CrossStakeImage",
        "CrossBodyImage"
      },
      {
        "Scroll1Image"
      }
    },
    {
      "Scroll3Image",
      {
        "WingsImage",
        "GauntletImage",
        "ItemMedallionLight",
        "ItemMedallionLife",
        "ItemMedallionDark"
      },
      {},
      {
        "Scroll4Image",
        "CrossStakeImage",
        "CrossBodyImage"
      },
      {
        "Scroll2Image",
        "Scroll1Image"
      }
    },
    {
      "Scroll4Image",
      {
        "BootsImage",
        "WingsImage",
        "GauntletImage",
        "ItemMedallionLight",
        "ItemMedallionLife",
        "ItemMedallionDark"
      },
      {},
      {
        "CrossStakeImage",
        "CrossBodyImage"
      },
      {
        "Scroll3Image",
        "Scroll2Image",
        "Scroll1Image"
      }
    },
    {
      "CrossHookImage",
      {
        "CrossChainImage",
        "VialsImage",
        "DaggerImage"
      },
      {},
      {},
      {
        "CrossChainImage",
        "CrossBodyImage"
      }
    },
    {
      "CrossChainImage",
      {
        "VialsImage",
        "DaggerImage"
      },
      {
        "CrossHookImage"
      },
      {
        "CrossHookImage"
      },
      {
        "CrossBodyImage"
      }
    },
    {
      "CrossBodyImage",
      {
        "VialsImage",
        "CrystalsImage",
        "FairiesImage",
        "DaggerImage"
      },
      {},
      {
        "CrossChainImage",
        "CrossHookImage"
      },
      {
        "CrossStakeImage",
        "Scroll4Image",
        "Scroll3Image",
        "Scroll2Image",
        "Scroll1Image",
        "BootsImage",
        "WingsImage",
        "GauntletImage",
        "ItemMedallionDark",
        "ItemMedallionLife"
      }
    },
    {
      "CrossStakeImage",
      {
        "VialsImage",
        "CrystalsImage",
        "FairiesImage",
        "DaggerImage"
      },
      {},
      {
        "CrossBodyImage"
      },
      {
        "Scroll4Image",
        "Scroll3Image",
        "Scroll2Image",
        "Scroll1Image",
        "BootsImage",
        "WingsImage",
        "GauntletImage"
      }
    }
  }
  for i, navigationInfo in pairs(navigation) do
    TravelBook.LinkElementTry(navigationInfo[1], navigationInfo[2], navigationInfo[3], navigationInfo[5], navigationInfo[4])
  end
end

function TravelBook.NewEntry(category, itemName)
  if "Actions" == category then
    TravelBook.RedirectToTab = 1
    TravelBook.RedirectToItem = nil
    TravelBook.RedirectToAction = itemName
    TravelBook.RedirectToChar = nil
    TravelBook.RedirectToAchievement = nil
    Game.Set("ScorerTravelBook", 8)
    Scorer.SetMsgText(langstr("TBook_Skill_Unlocked"), Game.GetTime() + 5)
  else
    if TravelBook.RedirectToTab == 1 and (Game.Get("ScorerTravelBook") > 0 or TravelBook.ActionsManager.FirstBuyAction == TravelBook.RedirectToAction) then
      return
    end
    if "Items" == category then
      TravelBook.RedirectToTab = 2
      TravelBook.RedirectToItem = itemName
      TravelBook.RedirectToAction = nil
      TravelBook.RedirectToChar = nil
      TravelBook.RedirectToAchievement = nil
      Game.Set("ScorerTravelBook", 8)
      Scorer.SetMsgText(langstr("HELP_MESSAGE_1.5_C"), Game.GetTime() + 5)
    elseif "Chars" == category then
      TravelBook.RedirectToTab = 3
      TravelBook.RedirectToItem = nil
      TravelBook.RedirectToAction = nil
      TravelBook.RedirectToChar = itemName
      TravelBook.RedirectToAchievement = nil
      addSF(0, "", "TravelBook.UpdateTravelBook_Enemy", TravelBook.CharManager:IsMainChar(itemName))
    elseif "Achievements" == category then
      TravelBook.RedirectToTab = 4
      TravelBook.RedirectToItem = nil
      TravelBook.RedirectToAction = nil
      TravelBook.RedirectToChar = nil
      TravelBook.RedirectToAchievement = itemName
      Game.Set("ScorerTravelBook", 8)
    end
  end
end

function TravelBook.UpdateTravelBook_Enemy(isMainChar)
  Game.Set("ScorerTravelBook", 8)
  if 1 == isMainChar then
    Scorer.SetMsgText(Game.GetLangStr("TBook_MainChar_Unlocked"), Game.GetTime() + 4)
  else
    Scorer.SetMsgText(Game.GetLangStr("TBook_Enemy_Unlocked"), Game.GetTime() + 4)
  end
end

function TravelBook.NewEntryIfNew(category, itemName, openBook)
  local isNew = false
  if "Actions" == category then
    if TravelBook.ActionsManager:IsNew(itemName) then
      TravelBook.NewEntry(category, itemName)
      isNew = true
    end
  elseif "Items" == category then
    if "New" == TravelBook.ItemsManager:GetItemStatus(itemName) then
      TravelBook.NewEntry(category, itemName)
      isNew = true
    end
  elseif "Chars" == category and "New" == TravelBook.CharManager:GetCharStatus(itemName) then
    TravelBook.NewEntry(category, itemName)
    isNew = true
  end
  if openBook and isNew then
    TravelBook.Show()
  end
end

function TravelBook.GoToNewEntry()
  TravelBook.SelectTab(TravelBook.RedirectToTab)
  if TravelBook.RedirectToItem then
    TravelBook.GoToDescriptionPage(0, TravelBook.RedirectToItem)
    TravelBook.RedirectToItem = nil
  elseif TravelBook.RedirectToAction then
    local leftMenus = {
      "BasicActions",
      "AdvancedMoves",
      "SecondaryWeapons",
      "Mounts",
      "RelicPowers",
      "LaurasMoves"
    }
    local found = false
    for i = #leftMenus, 1, -1 do
      local leftMenuName = leftMenus[i]
      Scorer.SetDefault(0, leftMenuName, false)
      TravelBook.LeftMenuSelection = leftMenuName
      TravelBook.BackToLeftMenu()
      TravelBook.EnableRightPage()
      
      local function conditionFunction(line)
        local isBelmont = Game.Get("PlayerCharName") == "Belmont"
        return line.uData.ActionName == TravelBook.RedirectToAction and (not isBelmont or leftMenuName ~= "LaurasMoves")
      end
      
      if TravelBook.ScrollList:SetSelectedLineIf(conditionFunction) then
        found = true
        break
      end
    end
    if found then
      local selectedLineName = TravelBook.ScrollList:GetSelectedLineName()
      if selectedLineName then
        TravelBook.GoToDescriptionPage(0, selectedLineName)
      end
    end
    TravelBook.RedirectToAction = nil
  elseif TravelBook.RedirectToChar then
    local leftMenus = {
      "MainCharsText",
      "MonstersText"
    }
    for _, leftMenuName in ipairs(leftMenus) do
      Scorer.SetDefault(0, leftMenuName, false)
      TravelBook.LeftMenuSelection = leftMenuName
      TravelBook.BackToLeftMenu()
      TravelBook.EnableRightPage()
      local conditionFunction = function(line)
        return line.uData.CharName == TravelBook.RedirectToChar
      end
      if TravelBook.ScrollList:SetSelectedLineIf(conditionFunction) then
        break
      end
    end
    local selectedLineName = TravelBook.ScrollList:GetSelectedLineName()
    if selectedLineName then
      TravelBook.GoToDescriptionPage(0, selectedLineName)
    end
    TravelBook.RedirectToChar = nil
  elseif TravelBook.RedirectToAchievement then
    local selected = 1
    for i = 1, #TravelBook.AchievementsManager.List do
      if tostring(TravelBook.AchievementsManager.List[i]) == TravelBook.RedirectToAchievement then
        selected = i
        break
      end
    end
    TravelBook.GoToAchievementLine(selected)
  end
  TravelBook.RedirectToTab = nil
end

function TravelBook.GoToAchievementLine(line)
  local index = TravelBook.AchievementsManager.List[line]
  TravelBook.SelectAchievement(index)
  TravelBook.ScrollList:SetSelectedLine(line)
end

function TravelBook.IsStakeAvailable()
  if TravelBook.StakeAvailable then
    return true
  else
    return string.find(Game.Get("VisitedLevels"), "5_4_abbey_catacombs") ~= nil
  end
end

function TravelBook.IsStakeBroken()
  for levelName in string.gmatch(Game.Get("VisitedLevels"), "[^,]+") do
    if TravelBook.StakeBroken or "9_1_bones_forest" == string.lower(levelName) then
      return true
    end
  end
  return false
end

TravelBook.NewIconSelectedTime = 0

function TravelBook.OnRenderNewIcon(scorerId, itemName, timeDiff)
  local t = math.abs(TravelBook.NewIconSelectedTime * 3 % 2 - 1)
  TravelBook.NewIconSelectedTime = TravelBook.NewIconSelectedTime + timeDiff
  local newIcon = Scorer.GetItem(scorerId, itemName)
  newIcon.SkipRender = 0
  newIcon.glowColor = V4D(200 + t * 40, 40 + t * 10, 40 + t * 10, math.min(8 + t * 90, 255))
  for _, markableItemName in ipairs(TravelBookItems.NewMarkableItems) do
    local markableItem = Scorer.GetItem(scorerId, markableItemName)
    if markableItem and markableItem.uData.IsNew and 1 == markableItem.Visible and 0 == markableItem.Outside then
      newIcon.Pos = markableItem.Pos + (markableItem.uData.NewIconOffset or V2D())
      newIcon:Render(scorerId)
    end
  end
  TravelBook.ScrollList:RenderNewIcons(scorerId, newIcon, timeDiff)
  newIcon.SkipRender = 1
end

function TravelBook.OnRenderNewIconOutside(scorerId, itemName, timeDiff)
  local t = math.abs(TravelBook.NewIconSelectedTime * 3 % 2 - 1)
  local newIcon = Scorer.GetItem(scorerId, itemName)
  newIcon.SkipRender = 0
  local glowColor = V4D(200 + t * 40, 40 + t * 10, 40 + t * 10, math.min(8 + t * 90, 255))
  newIcon.glowColor = glowColor
  for _, markableItemName in ipairs(TravelBookItems.NewMarkableItems) do
    local markableItem = Scorer.GetItem(scorerId, markableItemName)
    local isNew = markableItem ~= nil and defparam(markableItem.uData.OverrideIsNew, markableItem.uData.IsNew)
    if isNew and 1 == markableItem.Visible and 1 == markableItem.Outside then
      newIcon.Pos = markableItem.Pos + (markableItem.uData.NewIconOffset or V2D())
      if markableItem.uData.CanFade then
        local lastAlpha = newIcon.Alpha
        newIcon.Alpha = markableItem.Alpha * markableItem.FadeFactor
        newIcon.glowColor = Color(glowColor.x, glowColor.y, glowColor.z, markableItem.FadeFactor * glowColor.w)
        newIcon:Render(scorerId)
        newIcon.Alpha = lastAlpha
        newIcon.glowColor = glowColor
      else
        newIcon:Render(scorerId)
      end
    end
  end
  newIcon.SkipRender = 1
end

function TravelBook.OnRenderSelected(scorerId, itemName, timeDiff)
  local item = Scorer.GetItem(0, itemName)
  local t = math.abs(item.uData.SelectedTime * 3 % 2 - 1)
  item.GlowColor = V4D(200 + t * 40, 140 + t * 20, 90 + t * 10, math.min(8 + t * 90, 255))
  item.uData.SelectedTime = item.uData.SelectedTime + timeDiff
  if item.uData.SelectionChildren then
    for _, childName in pairs(item.uData.SelectionChildren) do
      local child = Scorer.GetItem(0, childName)
      if child then
      end
    end
  end
end

TravelBook.OnRenderHighlightTargetColor = nil

function TravelBook.OnRenderHighlight(scorerId, itemName, timeDiff)
  local item = Scorer.GetItem(scorerId, itemName)
  if nil == item.uData.HighlightedTime then
    item.uData.HighlightedTime = 0
  end
  local fadein = 0.25
  local fadeout = 0.25
  local highlightedTime = 1.5
  local highlightedLoopPeriod = 4
  local colorDeltaOff = 150
  local targetColor = Menu.ItemColor
  if TravelBook.OnRenderHighlightTargetColor then
    targetColor = TravelBook.OnRenderHighlightTargetColor
  end
  if item.uData.CustomHighlightedTime then
    highlightedTime = item.uData.CustomHighlightedTime
  end
  if item.uData.CustomHighlightedLoopPeriod then
    highlightedLoopPeriod = item.uData.CustomHighlightedLoopPeriod
  end
  item.uData.HighlightedTime = item.uData.HighlightedTime + timeDiff
  if highlightedTime < item.uData.HighlightedTime then
    if not item.uData.LoopHighlight then
      item.OnRender = ""
      item.uData.HighlightedTime = nil
    elseif highlightedLoopPeriod < item.uData.HighlightedTime then
      item.uData.HighlightedTime = nil
      if item.uData.Callback then
        item.uData.Callback()
      end
    end
    item.Color = targetColor
    item.Effect = "None"
  elseif fadein > item.uData.HighlightedTime then
    item.Effect = "None"
    local phase = item.uData.HighlightedTime / fadein
    local colorDelta = phase * colorDeltaOff
    item.Color = Color(math.min(255, targetColor.x + colorDelta), math.min(255, targetColor.y + colorDelta), math.min(255, targetColor.z + colorDelta))
    item.Alpha = 255
  elseif item.uData.HighlightedTime > highlightedTime - fadeout then
    item.Effect = "None"
    local phase = 1 - (item.uData.HighlightedTime - (highlightedTime - fadeout)) / fadeout
    local colorDelta = phase * colorDeltaOff
    item.Color = Color(math.min(255, targetColor.x + colorDelta), math.min(255, targetColor.y + colorDelta), math.min(255, targetColor.z + colorDelta))
    item.Alpha = 255
  else
    item.Effect = "Burn"
    local phase = item.uData.HighlightedTime - fadein / (highlightedTime - fadeout - fadein)
    local colorDelta = colorDeltaOff
    item.Color = Color(math.min(255, targetColor.x + colorDelta), math.min(255, targetColor.y + colorDelta), math.min(255, targetColor.z + colorDelta))
    item.Alpha = phase * 255
  end
end

function TravelBook.OnImageGainFocus(scorerId, itemName)
  local item = Scorer.GetItem(0, itemName)
  item.OnRender = "TravelBook.OnRenderSelected"
  item.uData.SelectedTime = 0
  item.uData.DefaultShaderFilterMask = item.ShaderFilterMask
  item.ShaderFilterMask = 0
  item.uData.DefaultAlpha = item.Alpha
  item.Alpha = 255
  if item.uData.SelectionChildren then
    for _, childName in pairs(item.uData.SelectionChildren) do
      local child = Scorer.GetItem(0, childName)
      if child then
        child.uData.DefaultAlpha = child.Alpha
        child.Alpha = 255
      end
    end
  end
end

function TravelBook.OnImageLooseFocus(scorerId, itemName)
  local item = Scorer.GetItem(0, itemName)
  item.OnRender = ""
  item.GlowColor = V4D(0, 0, 0, 0)
  if item.uData.SelectionChildren then
    for _, childName in pairs(item.uData.SelectionChildren) do
      local child = Scorer.GetItem(0, childName)
      if child then
        child.Alpha = child.uData.DefaultAlpha or 255
      end
    end
  end
  item.ShaderFilterMask = item.uData.DefaultShaderFilterMask or 0
  item.Alpha = item.uData.DefaultAlpha or 255
end

function TravelBook.ArrangeItemsAdornments()
  TravelBook.ArrangeSet(3, TravelBookItems.Arrangements.ItemScrollsInner, V2D(0.145, 0.885), 0.1, 0.03)
  TravelBook.ArrangeSet(6, TravelBookItems.Arrangements.ItemScrollsUpper, V2D(0.113, 0.8), 0.053, 0.01)
  TravelBook.ArrangeSet(4, TravelBookItems.Arrangements.ItemsScrolls, V2D(0.09, 0.89), 0.1, 0.01)
  TravelBook.ArrangeSet(3, TravelBookItems.Arrangements.ItemCompassRoseAdornments, V2D(0.6, 0.148), 0.15, 0.183)
end

function TravelBook.ArrangeDescriptionAdornments()
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.DescriptionLeftPageLower, V2D(0.083, 0.878), 0.324, 0.95)
end

function TravelBook.ArrangeActionsAdornments()
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.ActionsLeftPageOuter, V2D(0.02, 0.03), 0.45, 0.95)
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.ActionsLeftPageInner, V2D(0.083, 0.128), 0.324, 0.75)
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.ActionsPointsFrame, V2D(0.53, 0.03), 0.45, 0.23)
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.ActionsRightPageListOuter, V2D(0.57, 0.945), 0.4, 0.47)
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.ActionsRightPageListInner, V2D(0.593, 0.93), 0.319, 0.468)
end

function TravelBook.ArrangeCharsAdornments()
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.CharsLeftPageOuter, V2D(0.02, 0.03), 0.45, 0.95)
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.CharsLeftPageInner, V2D(0.083, 0.128), 0.324, 0.75)
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.CharsRightPageOuter, V2D(0.53, 0.03), 0.45, 0.95)
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.CharsRightPageInner, V2D(0.595, 0.13), 0.324, 0.95)
end

function TravelBook.ArrangeEnemyAttributesIcons()
  TravelBook.ArrangeSet(3, TravelBookItems.Arrangements.CharsAttributesWeapons, V2D(0.687, 0.755), 0.078, 0.125)
  TravelBook.ArrangeSet(3, TravelBookItems.Arrangements.CharsAttributesLevelsTop, V2D(0.718, 0.725), 0.078, 0.125)
  TravelBook.ArrangeSet(3, TravelBookItems.Arrangements.CharsAttributesLevelsMiddle, V2D(0.718, 0.759), 0.078, 0.125)
  TravelBook.ArrangeSet(3, TravelBookItems.Arrangements.CharsAttributesLevelsBottom, V2D(0.718, 0.792), 0.078, 0.125)
end

function TravelBook.ArrangeSet(nColumns, itemArray, initialPosition, separationX, separationY)
  for row = 1, #itemArray do
    local position = initialPosition + V2D(0, separationY * (row - 1))
    for column = 1, nColumns do
      if itemArray[row] and itemArray[row][column] then
        local item = Scorer.GetItem(0, itemArray[row][column])
        if item then
          position.x = initialPosition.x + separationX * (column - 1)
          TravelBook.ApplyProperty(item, {"fPos", position})
        else
          Game.ConsoleError("TravelBook.ArrangeSet: Item '" .. itemArray[row][column] .. "' not found\n")
        end
      end
    end
  end
end

function TravelBook.ArrangeCircularSet(itemNames, center, radius, firstAngle, relativeAngle, angleStep)
  local numItems = #itemNames
  relativeAngle = relativeAngle or 0
  angleStep = angleStep or 360 / numItems
  for i = 1, numItems do
    local item = Scorer.GetItem(0, itemNames[i])
    if item then
      local angle = firstAngle + angleStep * (i - 1)
      item.Angle = angle + relativeAngle
      TravelBook.ApplyProperty(item, {"fPos", center})
      item.Pos = item.Pos + V2D(0, 1):rot(V3D(0, 0, angle)) * radius
    else
      Game.ConsoleError("Item '" .. itemName .. "' not found\n", 3)
    end
  end
end

function TravelBook.MarkMenuSelection(side)
  local arrowOffsetX = {Left = 35, Right = 30}
  local arrowOffsetY = {Left = 21, Right = 13}
  local leftArrow = TravelBook.GetItem(side .. "MenuArrowLeft")
  local rightArrow = TravelBook.GetItem(side .. "MenuArrowRight")
  leftArrow.Visible = 1
  rightArrow.Visible = 1
  local selectedItem
  if "Right" == side then
    selectedItem = TravelBook.ScrollList.List[TravelBook.ScrollList.SelectedLine]
  elseif "Left" == side and TravelBook.LeftMenuSelection then
    selectedItem = Scorer.GetItem(0, TravelBook.LeftMenuSelection)
  end
  if selectedItem then
    leftArrow.Pos = selectedItem.Pos + V2D(-arrowOffsetX[side], arrowOffsetY[side])
    rightArrow.Pos = selectedItem.Pos + V2D(arrowOffsetX[side] + selectedItem.Size.x, arrowOffsetY[side])
  end
end

function TravelBook.ClearMenuSelection(side)
  local leftArrow = TravelBook.GetItem(side .. "MenuArrowLeft")
  local rightArrow = TravelBook.GetItem(side .. "MenuArrowRight")
  leftArrow.Visible = 0
  rightArrow.Visible = 0
end

function TravelBook.FillMedallion(energyType, nGems)
  local gemsIndexes = {
    Light = 7,
    Dark = 6,
    Life = 8
  }
  local medallion = TravelBook.GetItem("ItemMedallion" .. energyType)
  if nil == medallion then
    Game.ConsoleError("TravelBook.FillMedallion: item 'ItemMedallion" .. energyType .. "' not found")
  end
  local angles = {
    33,
    105,
    180,
    -105,
    -33
  }
  medallion.uData.SelectionChildren = {}
  for i = 1, 5 do
    local gem = Scorer.GetItem(0, energyType .. "Gem" .. i)
    gem.uData.IsNavigationDisabled = medallion.uData.IsNavigationDisabled
    table.insert(medallion.uData.SelectionChildren, energyType .. "Gem" .. i)
    gem.Pos = medallion.Pos
    gem.Alpha = medallion.Alpha / 2
    gem.Angle = angles[i]
    gem.SpriteIndex = gemsIndexes[energyType]
    if nGems >= i then
      gem.Visible = 1
    else
      gem.uData.IsNavigationDisabled = true
    end
  end
end

function TravelBook.HideDisabledItems()
  for _, itemName in pairs(TravelBookItems.ItemSets.ItemsMenu) do
    local item = TravelBook.GetItem(itemName)
    if item.uData.IsNavigationDisabled then
      item.Visible = 0
    end
  end
end

function TravelBook.CreateCharSubLine(charName, killsPending, killsNeeded)
  local returnValue = Scorer.GetItem(0, "Char_Subline" .. charName)
  if not returnValue then
    returnValue = Scorer.NewItem(0, "Char_Subline" .. charName, "Text", 1)
    returnValue.Align = "Right"
    returnValue.Font = TravelBook.Fonts.MenuRightSubLine
    returnValue.Text = string.format(langstr("TBook_CharSubLine"), killsPending, killsNeeded)
    returnValue.Color = TravelBookItems.TextColor
  end
  return returnValue
end

function TravelBook.ShowCharSensitivities(charName)
  local availabilityConditions = {
    {
      "DaggersActive",
      true
    },
    {
      "FairiesActive",
      true
    },
    {"VialActive", true},
    {
      "DarkPowerOn",
      true
    },
    {
      "FairiesActive",
      true
    },
    {"VialActive", true},
    {
      "CrystalActive",
      true
    }
  }
  for i = 1, #TravelBook.CharManager.CharAttributeInfo do
    local sensitivityLevel = TravelBook.CharManager:GetSensitivityLevel(charName, i)
    local attributBackground = Scorer.GetItem(0, "AttributeBackground" .. i)
    local condition = availabilityConditions[i]
    if TravelBook.CharManager:GetEnemySize(charName) and -1 ~= sensitivityLevel and (LevelProperties.GetValue(condition[1]) == condition[2] or "DarkPowerOn" == condition[1] and DarkPower.oldPowerOn) then
      for j = 1, 3 do
        local sensitivityItem = Scorer.GetItem(0, "AttributeLevel" .. j .. "_" .. i)
        if 4 <= sensitivityLevel then
          sensitivityItem.SpriteIndex = 32
        else
          sensitivityItem.SpriteIndex = 33
          sensitivityItem.Scale = V2D(0.5, 0.5)
        end
        if j > math.ceil(math.abs(sensitivityLevel - 3.5)) then
          sensitivityItem.Visible = 0
        end
      end
      if attributBackground then
        attributBackground.Pos = Scorer.GetItem(0, "AttributeWeapon" .. i).Pos
      end
    else
      Scorer.GetItem(0, "AttributeWeapon" .. i).Visible = 0
      for j = 1, 3 do
        Scorer.GetItem(0, "AttributeLevel" .. j .. "_" .. i).Visible = 0
      end
      if attributBackground then
        attributBackground.Visible = 0
      end
    end
  end
end

function TravelBook.MarkNew(itemName, isPermanent, isOutsideBook)
  local item = Scorer.GetItem(0, itemName)
  if item then
    if not isPermanent and nil == TravelBook.NewIcons then
      TravelBook.NewIcons = {}
    elseif isPermanent and nil == TravelBook.NewIconsPermanent then
      TravelBook.NewIconsPermanent = {}
    end
    local isFirstIcon = (nil == TravelBook.NewIcons or 0 == #TravelBook.NewIcons) and (nil == TravelBook.NewIconsPermanent or 0 == #TravelBook.NewIconsPermanent)
    local newIcon
    if isPermanent then
      newIcon = Scorer.NewItem(0, itemName .. "_NewIcon", "Sprite", 1)
    else
      local newIconIndex = #TravelBook.NewIcons + 1
      newIcon = Scorer.NewItem(0, "NewIcon" .. newIconIndex, "Sprite", 1)
    end
    if newIcon then
      newIcon.IsMultiSprite = 1
      newIcon.File = TravelBook.BookFile
      newIcon.SpriteIndex = 31
      newIcon.Scale = V2D(0.6, 0.6)
      newIcon.Pos = item.Pos + (item.uData.NewIconOffset or V2D())
      if isOutsideBook then
        newIcon.Outside = 1
      end
      if isPermanent then
        table.insert(TravelBook.NewIconsPermanent, newIcon.Name)
      else
        table.insert(TravelBook.NewIcons, newIcon.Name)
      end
      if isFirstIcon then
        newIcon.OnRender = "TravelBook.OnRenderNewIcon"
        TravelBook.NewIconSelectedTime = 0
      end
    end
  end
end

function TravelBook.MarkActionState(itemName, isDisabled)
  local item = Scorer.GetItem(0, itemName)
  if item then
    if nil == TravelBook.ActionStatusItems then
      TravelBook.ActionStatusItems = {}
    end
    local iconIndex = #TravelBook.ActionStatusItems + 1
    local statusIcon = Scorer.NewItem(0, "StatusIcon" .. iconIndex, "Sprite", 1)
    statusIcon.IsMultiSprite = 1
    if isDisabled then
      if 1 == TravelBook.SelectedTab or 4 == TravelBook.SelectedTab then
        statusIcon.File = TravelBook.BookFile
        statusIcon.SpriteIndex = 34
        statusIcon.Pivot = V2D(1, -0.3)
      else
        statusIcon.File = TravelBook.MiniGamesFile
        statusIcon.SpriteIndex = 36
        statusIcon.Pivot = V2D(1, 0.2)
      end
      statusIcon.Scale = V2D(0.5, 0.5)
    else
      statusIcon.File = TravelBook.MiniGamesFile
      statusIcon.SpriteIndex = 15
      statusIcon.Scale = V2D(0.35, 0.35)
      statusIcon.Pivot = V2D(1, 0)
    end
    if 4 == TravelBook.SelectedTab then
      statusIcon.Pos = V2D(280, item.y)
    else
      statusIcon.Pos = V2D(660, item.y)
    end
    table.insert(TravelBook.ActionStatusItems, statusIcon.Name)
  end
end

function TravelBook.MarkActionPrice(itemName)
  local item = Scorer.GetItem(0, itemName)
  if item then
    if nil == TravelBook.ActionStatusItems then
      TravelBook.ActionStatusItems = {}
    end
    local iconIndex = #TravelBook.ActionStatusItems + 1
    local priceText = Scorer.NewItem(0, "StatusIcon" .. iconIndex, "Text", 1)
    priceText.Text = tostring(TravelBook.ActionsManager:GetActionPrice(item.uData.ActionName))
    priceText.Align = "Right"
    priceText.Font = TravelBook.Fonts.MenuRight
    if TravelBook.ActionsManager:CanBeBought(item.uData.ActionName) then
      priceText.Color = TravelBook.ActionPriceAffordableColor
    else
      priceText.Color = TravelBook.ActionPriceUnaffordableColor
    end
    priceText.Pos = V2D(645, item.y)
    table.insert(TravelBook.ActionStatusItems, priceText.Name)
    local currencyIconName = "StatusIcon" .. tostring(iconIndex + 1)
    TravelBook.AppendCurrencyIconToText(priceText, currencyIconName, TravelBook.Fonts.MenuRight, V2D(2, 1))
    table.insert(TravelBook.ActionStatusItems, currencyIconName)
  end
end

function TravelBook.ClearNewIcons(clearPermanent)
  local clearFunction = function(iconList)
    for _, iconName in pairs(iconList) do
      local icon = Scorer.GetItem(0, iconName)
      if icon then
        icon.DelMe = 1
      end
    end
  end
  if TravelBook.NewIcons then
    clearFunction(TravelBook.NewIcons)
    TravelBook.NewIcons = {}
  end
  if clearPermanent and TravelBook.NewIconsPermanent then
    clearFunction(TravelBook.NewIconsPermanent)
    TravelBook.NewIconsPermanent = {}
  end
end

function TravelBook.ClearActionStatusIcons()
  if TravelBook.ActionStatusItems then
    for _, iconName in pairs(TravelBook.ActionStatusItems) do
      local item = Scorer.GetItem(0, iconName)
      if item then
        item.DelMe = 1
      end
    end
    TravelBook.ActionStatusItems = {}
  end
end

function TravelBook.OnEnemyGroupActivated(groupName)
  local group = NPC.Groups[groupName]
  for _, enemy in pairs(group) do
    if enemy and enemy.bValidBaseType then
      TravelBook.CharManager:NewChar(enemy.ActCtrl)
    end
  end
end

function TravelBook.CreateActionsKeys(keysCode)
  local firstPosition = V2D(0, 370)
  local symbols = {
    "swlh",
    "swdh",
    "swl",
    "swd",
    "ah",
    "dh",
    "jh",
    "bh",
    "sh",
    "lsh",
    "l3h",
    "r3h",
    "a",
    "d",
    "j",
    "b",
    "s",
    "ls",
    "g",
    "-",
    "+",
    "x2",
    "x8",
    "x9",
    "...",
    "/"
  }
  local keyBuilders
  if Game.Get("Platform") ~= "PC" or Game.Get("PCPadConnected") == 1 then
    keyBuilders = {
      a = {
        TravelBook.BuildSingleSprite,
        {31, 30}
      },
      d = {
        TravelBook.BuildSingleSprite,
        {28, 30}
      },
      j = {
        TravelBook.BuildSingleSprite,
        {29, 30}
      },
      b = {
        TravelBook.BuildSingleSprite,
        {11, 30}
      },
      s = {
        TravelBook.BuildSingleSprite,
        {30, 30}
      },
      ls = {
        TravelBook.BuildSingleSprite,
        {1, 40}
      },
      g = {
        TravelBook.BuildSingleSprite,
        {12, 30}
      },
      swl = {
        TravelBook.BuildSingleSprite,
        {3, 42}
      },
      swd = {
        TravelBook.BuildSingleSprite,
        {4, 42}
      },
      ah = {
        TravelBook.BuildHoldSprite,
        {
          31,
          30,
          25
        }
      },
      dh = {
        TravelBook.BuildHoldSprite,
        {
          28,
          30,
          25
        }
      },
      jh = {
        TravelBook.BuildHoldSprite,
        {
          29,
          30,
          25
        }
      },
      bh = {
        TravelBook.BuildHoldSprite,
        {
          11,
          30,
          32
        }
      },
      sh = {
        TravelBook.BuildHoldSprite,
        {
          30,
          30,
          25
        }
      },
      lsh = {
        TravelBook.BuildHoldSprite,
        {
          1,
          30,
          30
        }
      },
      l3h = {
        TravelBook.BuildHoldSprite,
        {
          67,
          30,
          30
        }
      },
      r3h = {
        TravelBook.BuildHoldSprite,
        {
          66,
          30,
          30
        }
      },
      swlh = {
        TravelBook.BuildHoldSprite,
        {
          3,
          42,
          20
        }
      },
      swdh = {
        TravelBook.BuildHoldSprite,
        {
          4,
          42,
          20
        }
      },
      ["-"] = {
        TravelBook.BuildSingleSprite,
        {
          81,
          10,
          true
        }
      },
      x2 = {
        TravelBook.BuildSingleSprite,
        {
          80,
          30,
          true,
          V2D(0.8, 0.8)
        }
      },
      x8 = {
        TravelBook.BuildSingleSprite,
        {
          105,
          30,
          true,
          V2D(0.8, 0.8)
        }
      },
      x9 = {
        TravelBook.BuildSingleSprite,
        {
          106,
          30,
          true,
          V2D(0.8, 0.8)
        }
      },
      ["..."] = {
        TravelBook.BuildSingleSprite,
        {
          107,
          30,
          true,
          V2D(0.8, 0.8)
        }
      },
      ["+"] = {
        TravelBook.BuildSingleSprite,
        {
          79,
          10,
          true
        }
      },
      ["/"] = {
        TravelBook.NewLine,
        {}
      }
    }
  else
    keyBuilders = {
      a = {
        TravelBook.BuildSingleSprite,
        {4}
      },
      d = {
        TravelBook.BuildSingleSprite,
        {3}
      },
      j = {
        TravelBook.BuildSingleSprite,
        {2}
      },
      b = {
        TravelBook.BuildSingleSprite,
        {6}
      },
      s = {
        TravelBook.BuildSingleSprite,
        {5}
      },
      ls = {
        TravelBook.BuildSingleSprite,
        {1}
      },
      g = {
        TravelBook.BuildSingleSprite,
        {7}
      },
      swl = {
        TravelBook.BuildSingleSprite,
        {8}
      },
      swd = {
        TravelBook.BuildSingleSprite,
        {9}
      },
      ah = {
        TravelBook.BuildHoldSprite,
        {4}
      },
      dh = {
        TravelBook.BuildHoldSprite,
        {3}
      },
      jh = {
        TravelBook.BuildHoldSprite,
        {2}
      },
      bh = {
        TravelBook.BuildHoldSprite,
        {6}
      },
      sh = {
        TravelBook.BuildHoldSprite,
        {5}
      },
      lsh = {
        TravelBook.BuildHoldSprite,
        {1}
      },
      l3h = {
        TravelBook.BuildHoldSprite,
        {10}
      },
      r3h = {
        TravelBook.BuildHoldSprite,
        {11}
      },
      swlh = {
        TravelBook.BuildHoldSprite,
        {8}
      },
      swdh = {
        TravelBook.BuildHoldSprite,
        {9}
      },
      ["-"] = {
        TravelBook.BuildSingleSprite,
        {
          81,
          10,
          true
        }
      },
      x2 = {
        TravelBook.BuildSingleSprite,
        {
          80,
          30,
          true,
          V2D(0.8, 0.8)
        }
      },
      x8 = {
        TravelBook.BuildSingleSprite,
        {
          105,
          30,
          true,
          V2D(0.8, 0.8)
        }
      },
      x9 = {
        TravelBook.BuildSingleSprite,
        {
          106,
          30,
          true,
          V2D(0.8, 0.8)
        }
      },
      ["..."] = {
        TravelBook.BuildSingleSprite,
        {
          107,
          30,
          true,
          V2D(0.8, 0.8)
        }
      },
      ["+"] = {
        TravelBook.BuildSingleSprite,
        {
          79,
          10,
          true
        }
      },
      ["/"] = {
        TravelBook.NewLine,
        {}
      }
    }
  end
  TravelBook.ActionKeysItems = {}
  TravelBook.CurrentLineWidth = 0
  TravelBook.CurrentLineItemsCount = 0
  local nextPosition = V2D(firstPosition.x, firstPosition.y)
  local parseIndex = 1
  while parseIndex <= #keysCode do
    local i = 1
    local capture
    while i <= #symbols and not capture do
      if string.sub(keysCode, parseIndex, parseIndex + #symbols[i] - 1) == symbols[i] then
        capture = symbols[i]
        parseIndex = parseIndex + #symbols[i]
      end
      i = i + 1
    end
    if capture then
      print(capture)
      local builder = keyBuilders[capture]
      if builder then
        nextPosition = builder[1](nextPosition, unpack(builder[2]))
      end
    else
      Game.ConsoleError("TravelBook.CreateActionsKeys: Bad code '" .. keysCode .. "'\n")
      return
    end
  end
  TravelBook.NewLine(nextPosition)
end

function TravelBook.BuildSingleSprite(nextPosition, spriteIndex, width, isOnHUDTexture, scale)
  if Game.Get("Platform") ~= "PC" or Game.Get("PCPadConnected") == 1 or isOnHUDTexture then
    local keyItem = Scorer.NewItem(0, "ActionKey" .. #TravelBook.ActionKeysItems + 1, "Sprite", 1)
    keyItem.IsMultiSprite = 1
    if isOnHUDTexture then
      keyItem.File = "2D/HUD/HUD.alpha.tga"
    else
      keyItem.File = TravelBook.MiniGamesFile
    end
    keyItem.Pivot = V2D(0.5, 0.5)
    keyItem.Scale = scale or V2D(0.4, 0.4)
    keyItem.Size = V2D(20, 20)
    keyItem.SpriteIndex = spriteIndex
    table.insert(TravelBook.ActionKeysItems, keyItem)
    keyItem.Pos = nextPosition + V2D(width / 2, 0)
  else
    local label = Scorer.NewItem(0, "ActionKey" .. #TravelBook.ActionKeysItems + 1, "Text", 1)
    label.Text = Menu.GetDefinedKey(spriteIndex, 4)
    label.Color = Color(255, 255, 255, 80)
    label.Effect = "Darkness"
    label.Font = TravelBook.Fonts.Paragraph
    label.Align = "Center"
    if width == nil then
      width = 16 + math.min(string.len(label.Text) - 2, 4) * 13
    end
    label.Pos = nextPosition + V2D(width / 2, 0)
    table.insert(TravelBook.ActionKeysItems, label)
  end
  TravelBook.CurrentLineWidth = TravelBook.CurrentLineWidth + width
  TravelBook.CurrentLineItemsCount = TravelBook.CurrentLineItemsCount + 1
  return nextPosition + V2D(width, 0)
end

function TravelBook.BuildHoldSprite(nextPosition, spriteIndex, width, height, isOnHUDTexture)
  if width == nil then
    local text = Menu.GetDefinedKey(spriteIndex, 4)
    width = 16 + math.min(string.len(text) - 2, 4) * 13
  end
  local holdItem = Scorer.NewItem(0, "ActionKey" .. #TravelBook.ActionKeysItems + 1, "Sprite", 1)
  holdItem.IsMultiSprite = 1
  holdItem.File = "2D/HUD/HUD.alpha.tga"
  holdItem.Pivot = V2D(0.5, 0.5)
  holdItem.Scale = V2D(0.8, 0.8)
  holdItem.SpriteIndex = 78
  table.insert(TravelBook.ActionKeysItems, holdItem)
  local offsetY = height or 22
  holdItem.Pos = nextPosition + V2D(width / 2, -offsetY)
  TravelBook.CurrentLineItemsCount = TravelBook.CurrentLineItemsCount + 1
  local label = Scorer.NewItem(0, "ActionKey" .. #TravelBook.ActionKeysItems + 1, "Text", 1)
  label.Text = langstr("TBook_ActionKey_Hold")
  label.Color = Menu.ItemColor
  label.Font = TravelBook.Fonts.ActionKeys
  label.Align = "Center"
  label.Pos = nextPosition + V2D(width / 2, -offsetY * 1.5)
  table.insert(TravelBook.ActionKeysItems, label)
  TravelBook.CurrentLineItemsCount = TravelBook.CurrentLineItemsCount + 1
  return TravelBook.BuildSingleSprite(nextPosition, spriteIndex, width, isOnHUDTexture)
end

function TravelBook.NewLine(nextPosition)
  local offset = V2D(512 - nextPosition.x / 2, 0)
  for i = #TravelBook.ActionKeysItems - TravelBook.CurrentLineItemsCount + 1, #TravelBook.ActionKeysItems do
    local keyItem = TravelBook.ActionKeysItems[i]
    keyItem.Pos = keyItem.Pos + offset
  end
  TravelBook.CurrentLineWidth = 0
  TravelBook.CurrentLineItemsCount = 0
  return V2D(0, nextPosition.y + 50)
end

function TravelBook.ClearActionsKeys()
  if TravelBook.ActionKeysItems then
    for keyItem in function()
      return table.remove(TravelBook.ActionKeysItems)
    end, nil, nil do
      keyItem.DelMe = 1
    end
  end
end

function TravelBook.UnlockAll()
  for _, actionName in pairs(TravelBook.ActionsManager.ActionsList) do
    TravelBook.ActionsManager:NewAction(actionName)
  end
  for _, charName in pairs(TravelBook.CharManager.CharsList) do
    TravelBook.CharManager:NewChar(charName)
    TravelBook.CharManager:SetKillsPendingToZero(charName)
  end
  if Experience ~= nil then
    Experience.UnlockComboAchievements()
    Experience.UnlockExperienceAchievements()
  end
  if CollectableItems ~= nil then
    CollectableItems.UnlockGemsAchievements("DarkGems")
    CollectableItems.UnlockGemsAchievements("LightGems")
    CollectableItems.UnlockGemsAchievements("LifeGems")
  end
end

function TravelBook.NewScroll(globalScrollIndex)
  local numberScrolls = string.len(CollectableItems.CreateScrollData())
  TravelBook.NewEntry("Items", "Scroll" .. numberScrolls .. "Image")
end

function TravelBook.GetAvailablePointsText()
  return string.format(Game.GetLangStr("TBook_Action_Available_Points"), Experience.EPoints.Value)
end

function TravelBook.SetBackground(...)
  for i = 1, select("#", ...) do
    local fileName = select(i, ...)
    local fullPath = TravelBook.BackgroundsPath .. fileName
    if string.sub(fileName, -4) == ".dds" and Game.FileExist(fullPath) then
      Game.SetLoadingScreen(fullPath)
      return true
    end
  end
  Game.SetLoadingScreen(TravelBook.DefaultBackground)
  return false
end

function TravelBook.ScheduleScrollExtension(scrollIndex)
  Game.ConsoleError("TravelBook.ScheduleScrollExtension is deprecated\n")
end

function TravelBook.CheckScrollExtension(scrollIndex, scheduleTime)
  Game.ConsoleError("TravelBook.CheckScrollExtension is deprecated\n")
end

function TravelBook.CancelScrollExtension(scrollIndex)
  Game.ConsoleError("TravelBook.CancelScrollExtension is deprecated\n")
end

function TravelBook.TryScrollExtension(scrollIndex)
  Game.ConsoleError("TravelBook.TryScrollExtension is deprecated\n")
end

function TravelBook.SetupExtendedScroll()
  local scrollIndex = TravelBook.CurrentScrollIndex
  local backgroundName = string.lower(Game.GetSaveVar("LevelName")) .. "_" .. scrollIndex .. ".dds"
  local defaultBackground = "ScrollDefault1.dds"
  if TravelBook.IsAutoScroll(TravelBook.CurrentScrollIndex) then
    defaultBackground = "ScrollDefault5.dds"
  end
  TravelBook.SetBackground(backgroundName, defaultBackground, "ItemsDefault.dds")
  local configurator = TravelBook.HintScrollControl.ScrollConfigurators[scrollIndex]
  if configurator then
    configurator(scrollIndex)
  end
  local descriptionTextItem = TravelBook.GetItem("DescriptionPageText")
  local _, puzzleAward = Experience.GetMapPuzzleStatus(TravelBook.CurrentScrollIndex)
  if 0 < puzzleAward then
    local awardText = TravelBook.GetItem("ExtensibleScrollCurrentAward")
    awardText.Text = tostring(puzzleAward)
    TravelBook.GetItem("ExtensibleScrollCurrencyIcon")
    TravelBook.AppendCurrencyIconToText(awardText, "ExtensibleScrollCurrencyIcon", TravelBook.Fonts.Paragraph, V2D(11, 13))
    TravelBook.GetItem("ExtensibleScrollCompletionText").Text = langstr("TBook_ExtensibleScroll_Award_Obtained")
    descriptionTextItem.MaxLines = 10
    TravelBook.ApplyProperty(descriptionTextItem, {
      "fPos",
      V2D(0.05, 0.33)
    })
    TravelBook.ApplyProperty(TravelBook.GetItem("DescriptionScrollArrowDown"), {
      "fPos",
      V2D(0.25, 0.94)
    })
    TravelBook.ApplyProperty(TravelBook.GetItem("DescriptionScrollArrowUp"), {
      "fPos",
      V2D(0.25, 0.26)
    })
  end
  descriptionTextItem.Text = "TBook_Scroll_" .. init.LevelName:match("level%.(.+)") .. "_" .. scrollIndex .. "_Extended_"
  Menu.ShowNavigationHUD("Menu_Nav_Back", nil, TravelBook.CloseBookKey)
end

function TravelBook.SetupExtensibleScroll()
  local _, puzzleAward = Experience.GetMapPuzzleStatus(TravelBook.CurrentScrollIndex)
  TravelBook.CreateItemSet("ExtensibleScrollDialog")
  local descriptionTextItem = TravelBook.GetItem("DescriptionPageText")
  descriptionTextItem.MaxLines = 5
  TravelBook.ApplyProperty(descriptionTextItem, {
    "fPos",
    V2D(0.05, 0.33)
  })
  descriptionTextItem.Text = "TBook_Scroll_" .. init.LevelName:match("level%.(.+)") .. "_" .. TravelBook.CurrentScrollIndex .. "_"
  TravelBook.ApplyProperty(TravelBook.GetItem("DescriptionScrollArrowDown"), {
    "fPos",
    V2D(0.25, 0.66)
  })
  TravelBook.ApplyProperty(TravelBook.GetItem("DescriptionScrollArrowUp"), {
    "fPos",
    V2D(0.25, 0.26)
  })
  if 0 < puzzleAward then
    local awardText = TravelBook.GetItem("ExtensibleScrollCurrentAward")
    awardText.Text = tostring(puzzleAward)
    TravelBook.AppendCurrencyIconToText(awardText, "ExtensibleScrollCurrencyIcon", TravelBook.Fonts.Paragraph, V2D(11, 13))
    TravelBook.GetItem("ExtensibleScrollCompletionText").Text = langstr("TBook_ExtensibleScroll_Not_Completed")
  else
    TravelBook.GetItem("ExtensibleScrollCurrentAward").Visible = 0
    TravelBook.GetItem("ExtensibleScrollCurrencyIcon").Visible = 0
    TravelBook.GetItem("ExtensibleScrollCompletionText").Text = langstr("TBook_ExtensibleScroll_Completed")
  end
  TravelBook.GetItem("UnlockHintScrollYes").Visible = 0
  TravelBook.GetItem("UnlockHintScrollNo").Visible = 0
  TravelBook.GetItem("UnlockHintScrollButton").Visible = 1
  Scorer.SetDefault(0, "UnlockHintScrollButton", false)
  if 0 < puzzleAward then
    TravelBook.GetItem("UnlockHintScrollWarning").Text = "TBook_ExtensibleScroll_Warning_1_"
  else
    TravelBook.GetItem("UnlockHintScrollWarning").Visible = 0
  end
  if TravelBook.IsAutoScroll(TravelBook.CurrentScrollIndex) then
    TravelBook.SetBackground("ExtensibleScroll2.dds", "ScrollDefault1.dds")
  else
    TravelBook.SetBackground("ExtensibleScroll.dds", "ActionsDefault.dds")
  end
  Menu.ShowNavigationHUD("Menu_Nav_Back", "Menu_Nav_Select", TravelBook.CloseBookKey)
  if "function" == type(TravelBook.ExtensibleScrollSetup) then
    TravelBook.ExtensibleScrollSetup()
  end
end

function TravelBook.IsAutoScroll(scrollIndex)
  if 4 == scrollIndex then
    return true
  else
    for _, autoScrollIndex in ipairs(TravelBook.AutoScrollIndices or {}) do
      if scrollIndex == autoScrollIndex then
        return true
      end
    end
  end
end

function TravelBook.ShowHintScrollWarning(scrollIndex, force)
  local bookScrollIndex = TravelBook.ItemsManager:GetBookScrollIndex(scrollIndex)
  if nil == bookScrollIndex then
    Scorer.SetMsgText(langstr("TBook_Scroll_Extension_Fail"), Game.GetTime() + 5)
  else
    local scrollItemName = "Scroll" .. bookScrollIndex .. "Image"
    if force or "New" == TravelBook.ItemsManager:GetItemStatus(scrollItemName) then
      Scorer.SetMsgText(langstr("TBook_Scroll_Extension_Success"), Game.GetTime() + 5)
      TravelBook.NewEntry("Items", scrollItemName)
    end
  end
end

function TravelBook.SetupMagicSkillPage(actionName)
  if Game.Get("Platform") ~= "PC" or Game.Get("PCPadConnected") == 1 then
    local actionVideo = TravelBook.GetItem("ActionVideo")
    actionVideo.PlayLoop = ""
    actionVideo.Visible = 0
    local icons = {
      TravelBook.GetItem("MagicDescriptionIcon1"),
      TravelBook.GetItem("MagicDescriptionIcon2"),
      TravelBook.GetItem("MagicDescriptionIcon3")
    }
    local spriteIndices = {
      DarkMagic = {4, 66},
      LightMagic = {3, 67}
    }
    icons[1].SpriteIndex = spriteIndices[actionName][1]
    icons[2].SpriteIndex = spriteIndices[actionName][2]
    TravelBook.GetItem("DescriptionPageText").OnRenderLine = "TravelBook.OnRenderMagicSkillLine"
    
    function TravelBook.OnRenderMagicSkillLine(line, lineNumber, x, y, alpha)
      if 1 == lineNumber then
        icons[3].y = y
        icons[3].Alpha = alpha
        icons[3]:Render(0)
        icons[2].y = y
        icons[2].Alpha = alpha
        icons[2]:Render(0)
      elseif 0 == lineNumber then
        icons[1].y = y
        icons[1].Alpha = alpha
        icons[1]:Render(0)
      end
    end
    
    TravelBook.GetItem("ActionConditionsText").Visible = 0
    Game.GetMenu().OnEndPageTurn = "TravelBook.FadeInNavigationHUD"
  end
  TravelBook.ExtendDescriptionText(actionName)
end

function TravelBook.ExtendDescriptionText(actionName)
  local descriptionText = TravelBook.GetItem("DescriptionPageText")
  descriptionText.MaxLines = 10
  TravelBook.ApplyProperty(TravelBook.GetItem("DescriptionScrollArrowDown"), {
    "fPos",
    V2D(0.25, 0.9)
  })
end

function TravelBook.ConfirmUnlockSolution()
  local yesButton = TravelBook.GetItem("UnlockHintScrollYes")
  local noButton = TravelBook.GetItem("UnlockHintScrollNo")
  Menu.LinkLR(yesButton, noButton)
  TravelBook.GetItem("UnlockHintScrollWarning").Text = "TBook_ExtensibleScroll_Warning_2_"
  TravelBook.GetItem("UnlockHintScrollWarning").Visible = 1
  yesButton.Visible = 1
  noButton.Visible = 1
  TravelBook.GetItem("UnlockHintScrollButton").Visible = 0
  Scorer.SetDefault(0, "UnlockHintScrollNo", false)
end

function TravelBook.UnlockSolution()
  AfterSaveCallbackFunc = TravelBook.UnlockSolutionAfterSave
  Experience.SetPuzzleSolutionUnlocked(TravelBook.CurrentScrollIndex)
end

function TravelBook.UnlockSolutionAfterSave()
  Menu.TurnPage()
  TravelBook.ApplyPropertyToSet("ExtensibleScrollDialog", "DelMe", 1)
  local descriptionText = TravelBook.GetItem("DescriptionPageText")
  descriptionText.MaxLines = 10
  descriptionText.Size = V2D(1, 1)
  TravelBook.ApplyProperty(descriptionText, {
    "fPos",
    V2D(0.05, 0.3)
  })
  Scorer.SetDefault(0, "DescriptionPageText", false)
  TravelBook.ApplyProperty(TravelBook.GetItem("DescriptionScrollArrowDown"), {
    "fPos",
    V2D(0.25, 0.9)
  })
  TravelBook.ApplyProperty(TravelBook.GetItem("DescriptionScrollArrowUp"), {
    "fPos",
    V2D(0.25, 0.21)
  })
  TravelBook.SetupExtendedScroll()
  descriptionText.FirstLine = 0
  TravelBook.UpdateDescriptionScrollArrows()
end

function TravelBook.AppendCurrencyIconToText(textItem, currencyIconName, fontName, offset)
  offset = offset or V2D()
  local currencyIcon = Scorer.GetItem(0, currencyIconName)
  if nil == currencyIcon then
    currencyIcon = Scorer.NewItem(0, currencyIconName, "Sprite")
    currencyIcon.IsMultiSprite = 1
    currencyIcon.File = TravelBook.BookFile
    currencyIcon.SpriteIndex = 36
  end
  local textSize = Scorer.GetTextArea(fontName, textItem.Text)
  local scales = {
    Horatio = V2D(0.8, 0.8),
    HoratioBig = V2D(1, 1),
    HoratioSmall = V2D(0.65, 0.65),
    HoratioLittle = V2D(0.65, 0.65),
    HoratioTiny = V2D(0.45, 0.45)
  }
  currencyIcon.Scale = scales[fontName] or V2D(1, 1)
  local position = textItem.Pos + offset
  if "Left" == textItem.Align then
    position.x = position.x + textSize
  elseif "Center" == textItem.Align then
    position.x = position.x + textSize / 2
  end
  currencyIcon.Pos = position
end

TravelBook.HintScrollControl = {
  MinimapSprites = {},
  LegendSize = 0,
  ScrollConfigurators = {},
  MinimapBookOrigin = V2D(0.55, 0.45),
  MinimapBookScale = V2D(0.4, -0.3),
  LegendPosition = V2D(0.6, 0.65),
  LegendSpacing = V2D(0, 0.075),
  LegendIconToTextOffset = V2D(0.03, -0.025),
  SetWorldAnchorPoints = function(this, upperLeft, lowerLeft, lowerRight)
    this.MinimapBasis = {
      lowerRight - lowerLeft,
      upperLeft - lowerLeft
    }
    this.MinimapOrigin = lowerLeft
  end,
  SetMinimapCoordinates = function(this, lowerLeft, upperRight)
    this.MinimapBookOrigin = lowerLeft
    this.MinimapBookScale = upperRight - lowerLeft
  end,
  DrawMinimapSprite = function(this, file, spriteIndex, worldPosition, scale, angle, doClamp)
    local sprite = Scorer.NewItem(0, "MinimapSprite" .. tostring(#this.MinimapSprites + 1), "Sprite", 1)
    sprite.IsMultiSprite = 1
    sprite.File = file
    sprite.SpriteIndex = spriteIndex
    sprite.Pivot = V2D(0.5, 0.5)
    sprite.Scale = scale or V2D(1, 1)
    if angle then
      sprite.Angle = angle - this.MinimapBasis[1]:getrot().z + 180
    end
    sprite.ShaderFilterMask = Scorer.SPR2D_FILTER_ALPHALUMINANCE
    local position = V2D(worldPosition.x - this.MinimapOrigin.x, worldPosition.z - this.MinimapOrigin.y)
    TravelBook.ApplyProperty(sprite, {
      "fPos",
      this:GetScreenPosition(position, doClamp)
    })
    table.insert(this.MinimapSprites, sprite)
    return sprite
  end,
  GetScreenPosition = function(this, worldPosition, doClamp)
    local e1, e2 = this.MinimapBasis[1], this.MinimapBasis[2]
    local basisRotated = false
    if math.abs(e1.x) < 0.1 then
      e1, e2 = e2, e1
      basisRotated = true
    end
    local y = (e1.y * worldPosition.x - e1.x * worldPosition.y) / (e1.y * e2.x - e1.x * e2.y)
    local x = (worldPosition.x - y * e2.x) / e1.x
    if basisRotated then
      x, y = y, x
    end
    if doClamp then
      x, y = clamp(0, 1, x), clamp(0, 1, y)
    end
    return this.MinimapBookOrigin + V2D(this.MinimapBookScale.x * x, this.MinimapBookScale.y * y)
  end,
  DebugDrawMinimap = function(this)
    local item = Scorer.GetItem(0, "DebugMinimapLowLeft")
    item = item or Scorer.NewItem(0, "DebugMinimapLowLeft", "Sprite", 1)
    item.IsMultiSprite = 1
    item.File = "2D/HUD/HUD.alpha.tga"
    item.SpriteIndex = 76
    item.Pivot = V2D(0, 1)
    TravelBook.ApplyProperty(item, {
      "fPos",
      this.MinimapBookOrigin
    })
    item = Scorer.GetItem(0, "DebugMinimapUpRight")
    item = item or Scorer.NewItem(0, "DebugMinimapUpRight", "Sprite", 1)
    item.IsMultiSprite = 1
    item.File = "2D/HUD/HUD.alpha.tga"
    item.SpriteIndex = 77
    item.Pivot = V2D(1, 0)
    TravelBook.ApplyProperty(item, {
      "fPos",
      this.MinimapBookOrigin + this.MinimapBookScale
    })
  end,
  DebugDrawWorldMinimap = function(this, y, timeToDelete)
    local points = {
      V3D(this.MinimapOrigin.x, y, this.MinimapOrigin.y),
      V3D(this.MinimapOrigin.x + this.MinimapBasis[1].x, y, this.MinimapOrigin.y + this.MinimapBasis[1].y),
      V3D(this.MinimapOrigin.x + this.MinimapBasis[1].x + this.MinimapBasis[2].x, y, this.MinimapOrigin.y + this.MinimapBasis[1].y + this.MinimapBasis[2].y),
      V3D(this.MinimapOrigin.x + this.MinimapBasis[2].x, y, this.MinimapOrigin.y + this.MinimapBasis[2].y)
    }
    for i = 0, 3 do
      local line = DebugDraw.NewPrimitive("Line3D")
      line.TimeToDel = Game.GetTime() + (timeToDelete or 10)
      line.Point0 = points[i + 1]
      line.Point1 = points[(i + 1) % 4 + 1]
    end
  end,
  ClearMinimap = function(this)
    for sprite in function()
      return table.remove(this.MinimapSprites)
    end, nil, nil do
      sprite.DelMe = 1
    end
    local item = Scorer.GetItem(0, "DebugMinimapLowLeft")
    if item then
      item.DelMe = 1
    end
    item = Scorer.GetItem(0, "DebugMinimapUpRight")
    if item then
      item.DelMe = 1
    end
    this.LegendSize = 0
  end,
  ScreenShot = function(this, fileName)
    local colors = {
      Color(255, 0, 0),
      Color(0, 255, 0),
      Color(0, 0, 255)
    }
    local tags = {
      "Upper left: ",
      "Lower left: ",
      "Lower right: "
    }
    Game.CreateOutFile(fileName .. ".Coords.txt")
    for i, screenCooord in ipairs({
      {0, 0},
      {0, 480},
      {640, 480}
    }) do
      local rayOrigin, rayDirection = Game.PickRayFromScreenPoint(unpack(screenCooord))
      local position = Game.TestLine(rayOrigin, rayOrigin + rayDirection * 50000, "", "", false, false, false, true)
      if nil == position then
        position = rayOrigin + rayDirection * (rayOrigin.y + 1800)
      end
      local point = DebugDraw.NewPrimitive("Sphere")
      point.TimeToDel = Game.GetTime() + 30
      point.Color = colors[i]
      point.Pos = position
      point.Radius = 500
      local line = DebugDraw.NewPrimitive("Link")
      line.Point0 = rayOrigin
      line.Point1 = position
      line.TimeToDel = Game.GetTime() + 30
      Game.OutFile(tags[i] .. tostring(position) .. "\n")
    end
    Game.CloseFile()
    Game.ScreenShot(fileName)
  end,
  RegisterScrollConfigurator = function(this, scrollIndex, configuratorFunction)
    if "function" == type(configuratorFunction) then
      this.ScrollConfigurators[scrollIndex] = configuratorFunction
    end
  end,
  AddLegendText = function(this, text, textureFile, spriteIndex, scale, angle)
    local icon = Scorer.NewItem(0, "MinimapSprite" .. tostring(#this.MinimapSprites + 1), "Sprite", 1)
    icon.IsMultiSprite = 1
    icon.File = textureFile
    icon.SpriteIndex = spriteIndex
    icon.Pivot = V2D(0.5, 0.5)
    icon.Scale = scale or V2D(1, 1)
    icon.Angle = angle or 0
    icon.ShaderFilterMask = Scorer.SPR2D_FILTER_ALPHALUMINANCE
    TravelBook.ApplyProperty(icon, {
      "fPos",
      this.LegendPosition + this.LegendSize * this.LegendSpacing
    })
    table.insert(this.MinimapSprites, icon)
    local textItem = Scorer.NewItem(0, "MinimapSprite" .. tostring(#this.MinimapSprites + 1), "Text", 1)
    TravelBook.ApplyProperty(textItem, {
      "fPos",
      this.LegendPosition + this.LegendSize * this.LegendSpacing + this.LegendIconToTextOffset
    })
    textItem.Font = TravelBook.Fonts.MiniMapLegend
    textItem.Text = text
    textItem.Color = Menu.ItemColor
    table.insert(this.MinimapSprites, textItem)
    this.LegendSize = this.LegendSize + 1
    return icon, textItem
  end
}

function TravelBook.CheckNewItems()
  Game.Set("ScorerTravelBook", -1)
end

function TravelBook.UpdateScrollListHUD(scorerId, itemName)
  local item = Scorer.GetItem(0, itemName)
  if item.OnAccept ~= "" then
    Menu.ShowNavigationHUD("Menu_Nav_Back", "Menu_Nav_Show", TravelBook.CloseBookKey)
  else
    Menu.ShowNavigationHUD("Menu_Nav_Back", nil, TravelBook.CloseBookKey)
  end
end

function TravelBook._LabelAdornments()
  for i = 1, 200 do
    local adornment = si("ItemAdornment" .. i)
    if adornment and adornment.Visible == 1 then
      local label = Scorer.NewItem(0, "ItemAdornment" .. i .. "_", "Text", 1)
      label.Text = tostring(i)
      label.Pos = adornment.Pos
      label.Font = "MessageLittle"
      label.CentralText = 1
    end
  end
end

function TravelBook.OnRenderScrollListShadow(scorerId, itemName, timeDiff)
  TravelBook.ScrollList:RenderLineShadow(scorerId, itemName, timeDiff)
end

TravelBook.KillBill = {}

function TravelBook.CreateKillBill()
  local indexToAssign = 1
  for index = 1, #TravelBook.CharManager.CharsList do
    TravelBook.KillBill[TravelBook.CharManager.CharsList[index]] = indexToAssign
    indexToAssign = indexToAssign + 1
  end
end

function TravelBook.IncreaseKills(className)
  local index = TravelBook.KillBill[className]
  local gv = SaveGame.AddToGvar("gvBodyCount")
  local bodycount = Game.Split(gv.Value, ",")
  if index and bodycount[index] then
    bodycount[index] = bodycount[index] + 1
  else
    Game.Log("class '" .. className .. "' nor registered in kill bill\n", 2)
  end
  gv.Value = bodycount[1]
  for i = 2, #bodycount do
    gv.Value = gv.Value .. "," .. bodycount[i]
  end
  TravelBook.IncreaseLevelKill(className)
end

TravelBook.LevelBodyCount = {}

function TravelBook.GetLevelKillVariable(className)
  if not TravelBook.LevelBodyCount[className] then
    local SaveVarName = init.LevelName .. ".LevelKill." .. className
    Game.CreateSaveVar(SaveVarName, "0")
    TravelBook.LevelBodyCount[className] = Game.GetSaveVarObj(SaveVarName)
  end
  return TravelBook.LevelBodyCount[className]
end

function TravelBook.IncreaseLevelKill(className)
  if not TravelBook.LevelBodyCount[className] then
    local SaveVarName = init.LevelName .. ".LevelKill." .. className
    Game.CreateSaveVar(SaveVarName, "0")
    TravelBook.LevelBodyCount[className] = Game.GetSaveVarObj(SaveVarName)
  end
  local v = TravelBook.GetLevelKillVariable(className)
  v.Value = tonumber(v.Value) + 1
end

function TravelBook.GetLevelKills(className)
  return defparam(TravelBook.GetLevelKillVariable(className).Value, 0)
end

function TravelBook.GetTotalKills(className)
  local gv = SaveGame.AddToGvar("gvBodyCount")
  local bodycount = Game.Split(gv.Value, ",")
  return defparam(bodycount[TravelBook.KillBill[className]], 0)
end

function TravelBook.PyIsActionCurrentlyUsabe(actionName)
  if TravelBook.ActionsManager.IsActionCurrentlyUsable(TravelBook.ActionsManager, actionName) then
    return 1
  else
    return 0
  end
end
