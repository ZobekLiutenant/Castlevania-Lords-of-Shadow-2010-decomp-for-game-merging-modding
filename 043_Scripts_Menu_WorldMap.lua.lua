WorldMap = {}
WorldMap.PrevChapterItemName = nil
WorldMap.LastLevelUnlocked = nil
WorldMap.ChapterTextOffsetLeft = V2D(30, 2)
WorldMap.ChapterTextOffsetRight = V2D(-10, 2)
WorldMap.ChapterPercOffset = V2D(14, 42)
WorldMap.QuestItemTable = {}
WorldMap.QuestEndOfLevel = false
WorldMap.FirstScrollableQuestItem = nil
WorldMap.LastScrollableQuestItem = nil
WorldMap.ScrollUpLimit = nil
WorldMap.ScrollDownLimit = nil
WorldMap.WorldMapTutoShown = false
WorldMap.ArtworkGiven = false
WorldMap.MaxLinesTrials = 9
WorldMap.MaxLinesExtraContent = 5
WorldMap.MaxLinesExtraContent2 = 5
WorldMap.DLCRegionSelectionColor = Color(255, 255, 0)
WorldMap.RelicsTable = {
  ["1_1_besieged_village"] = {
    "2D/HUD/HUD.alpha.tga",
    23,
    1,
    V2D(0, 0),
    0,
    V2D(0, 0),
    "Daggers"
  },
  ["1_5_swamp"] = {
    "2D/Menu/BOOK_Lacerias.alpha.tga",
    19,
    0.8,
    V2D(0, 14),
    0,
    V2D(0, 0.8),
    "CrossHook"
  },
  ["1_9_oblivion_lake"] = {
    "2D/Menu/BOOK_Lacerias.alpha.tga",
    48,
    0.6,
    V2D(0, -4),
    0,
    V2D(0, 0),
    "LightGems"
  },
  ["2_3_underground_cave"] = {
    "2D/Menu/BOOK_Lacerias.alpha.tga",
    18,
    0.4,
    V2D(0, -2),
    0,
    V2D(0, 0),
    "CrossChain1"
  },
  ["2_6_underground_dungeons"] = {
    "2D/Menu/BOOK_Lacerias.alpha.tga",
    49,
    0.6,
    V2D(0, -4),
    0,
    V2D(0, 0),
    "DarkGems"
  },
  ["2_8_stone_idol_mausoleum"] = {
    "2D/HUD/HUD.alpha.tga",
    46,
    1,
    V2D(0, -2),
    0,
    V2D(0, 0),
    "Crystals"
  },
  ["2_10_black_knight"] = {
    "2D/Menu/BOOK_Lacerias.alpha.tga",
    13,
    0.55,
    V2D(30, -8),
    60,
    V2D(0, 0),
    "Gauntlet"
  },
  ["3_0_the_gauntlet"] = {
    "2D/HUD/HUD.alpha.tga",
    63,
    1.1,
    V2D(0, 0),
    0,
    V2D(0, 0),
    "Fairies"
  },
  ["3_3_the_dark_lord"] = {
    "2D/Menu/BOOK_Lacerias.alpha.tga",
    5,
    0.55,
    V2D(0, -6),
    0,
    V2D(0, 0),
    "Boots"
  },
  ["5_2_isolated_village"] = {
    "2D/Menu/BOOK_Lacerias.alpha.tga",
    16,
    1,
    V2D(0, -13),
    0,
    V2D(0, 0),
    "CrossStake"
  },
  ["5_8_abbey_tower"] = {
    "2D/HUD/HUD.alpha.tga",
    24,
    1.3,
    V2D(0, -3),
    0,
    V2D(0, 0),
    "Vials"
  },
  ["8_4_the_throne_room"] = {
    "2D/Menu/BOOK_Lacerias.alpha.tga",
    29,
    0.3,
    V2D(0, 0),
    0,
    V2D(0, 0),
    "Wings"
  }
}

function WorldMap.main()
  WorldMap.CreateFingerData()
end

WorldMap.bCalculatedLevelInfo = false

function WorldMap.CalculateLevelInfo()
  if WorldMap.bCalculatedLevelInfo then
    return
  end
  WorldMap.bCalculatedLevelInfo = true
  if Trials.valorObjetivo == nil then
    Trials.main()
  end
  local ac = Act.GetClass("Belmont")
  if ac == nil then
    ac = Act.CreateClass("Belmont")
    ac.uData.CollectableItems = {
      lsFairyUpgrades = {},
      lsLifeGems = {},
      lsLightGems = {},
      lsDarkGems = {},
      lsVialUpgrades = {},
      lsDaggerUpgrades = {}
    }
    PlayerBelmontProps.main()
  end
  local a = {
    "LifeGems",
    "LightGems",
    "DarkGems",
    "VialUpgrades",
    "DaggerUpgrades",
    "FairyUpgrades"
  }
  for I = 1, #a do
    local ls = ac.uData.CollectableItems["ls" .. a[I]]
    local str = Game.Get("gv" .. a[I])
    local A = {}
    local ctr = 1
    WorldMap[a[I]] = A
    for i = 1, #SaveGame.GameChapters do
      local Lvs = SaveGame.GameChapters[i]
      for j = 1, #Lvs do
        if ls[ctr] then
          local gms = string.sub(str, 1, ls[ctr])
          local ngms = 0
          str = string.sub(str, ls[ctr] + 1)
          for J = 1, #gms do
            if string.sub(gms, J, J) == "X" then
              ngms = ngms + 1
            end
          end
          A[Lvs[j]] = {
            ngms,
            ls[ctr]
          }
          ctr = ctr + 1
        end
      end
    end
  end
end

function WorldMap.GetGemsChapterInfo(chapterName, gemType)
  local collectedGems = 0
  local totalGems = 0
  if SaveGame.GameChapters[chapterName] then
    for _, levelName in ipairs(SaveGame.GameChapters[chapterName]) do
      local levelCollectedGems, levelTotalGems = WorldMap.GetGemsLevelInfo(levelName, gemType)
      collectedGems = collectedGems + levelCollectedGems
      totalGems = totalGems + levelTotalGems
    end
  end
  return collectedGems, totalGems
end

function WorldMap.LoadHistoricMission(id, control)
  local levelName = Scorer.GetItem(0, control).uData.ChapterName
  WorldMap.LevelToBeLoaded = levelName
  if not Menu.WorldMapMenuMode then
    Menu.YesNoMenu(langstr("Menu_LoadLevel_Question"), "WorldMap.LoadHistoricLevel", "WorldMap.AbortJumpToLocation", langstr("Menu_Warning_Exit_Level"), nil, nil, langstr("Menu_Level_" .. levelName))
  elseif SaveGame.bCanLoadWaypoint() then
    Menu.YesNoMenu(langstr("Menu_LoadLevel_Question"), "WorldMap.LoadHistoricLevel", "WorldMap.AbortJumpToLocation", langstr("Menu_Warning_LoadLevel"), nil, nil, langstr("Menu_Level_" .. levelName))
  else
    WorldMap.LoadHistoricLevel(id, control)
  end
end

function WorldMap.LoadHistoricLevel(id, control)
  Scorer.SetPlayOnAcceptSound(0, false)
  if SaveGame.isLevelTrial(WorldMap.LevelToBeLoaded) then
    Game.Set("SaveGameSlot", 1)
  else
    Game.Set("SaveGameSlot", 0)
  end
  local LevelName = string.lower(WorldMap.LevelToBeLoaded)
  local newLevelName = init.BuildLevelName(LevelName)
  Game.DelSaveVars("")
  Game.SetSaveVar(newLevelName .. ".Spawn.Point", "0")
  Game.SetSaveVar("LevelName", LevelName)
  Game.SoftSaveAutoSave()
  Game.Set("LoadSaveVars", true)
  SaveGame.LoadLevel(LevelName)
end

function WorldMap.GetGemsLevelInfo(levelName, gemType)
  if WorldMap[gemType .. "Gems"] and WorldMap[gemType .. "Gems"][levelName] then
    return WorldMap[gemType .. "Gems"][levelName][1], WorldMap[gemType .. "Gems"][levelName][2]
  end
end

function WorldMap.FillGemsText(gemInfoReader, questId)
  WorldMap.CalculateLevelInfo()
  local gemTypes = {
    "Life",
    "Light",
    "Dark"
  }
  for _, gemType in ipairs(gemTypes) do
    local itm = Scorer.GetItem(0, gemType .. "GemsItem")
    if itm then
      local gemsCollected, totalGems = gemInfoReader(questId, gemType)
      itm.Text = string.format(langstr("Menu_GemsInfo_" .. gemType), gemsCollected, totalGems)
    end
  end
end

function WorldMap.GetUpgradesLevelInfo(levelName, upgradeType)
  if WorldMap[upgradeType .. "Upgrades"] and WorldMap[upgradeType .. "Upgrades"][levelName] then
    return WorldMap[upgradeType .. "Upgrades"][levelName][1], WorldMap[upgradeType .. "Upgrades"][levelName][2]
  end
end

function WorldMap.GetNumSkillsDone(levelName)
  local numSkillsDone = 0
  local a = Game.Split(Game.Get("gvSkillMapStatus"), ",")
  for j = 1, #SaveGame.GameMaps do
    if SaveGame.GameMaps[j] == levelName then
      local levelList = Game.Split(Game.Get("VisitedLevels"), ",")
      for k = 1, #levelList do
        if levelList[k] == levelName then
          if a[j] ~= nil then
            numSkillsDone = tonumber(a[j])
          end
          break
        end
      end
    end
  end
  return numSkillsDone
end

WorldMap.TrialFont = "HoratioTiny"

function WorldMap.UpdateTrialText(levelName)
  local splitLength = 245
  local trialLines = 0
  local trialCompletion = Game.Get("gvTrialNewRecord")
  if Trials.Status[levelName] == nil then
    local levelList = Game.Split(Game.Get("VisitedLevels"), ",")
    if string.lower(levelName) ~= string.lower(levelList[#levelList]) or levelList[#levelList + 1] == nil then
      local cad = langstr("Trial_" .. string.lower(levelName) .. "_Descr")
      if cad ~= "" then
        local textoTrial = Scorer.SplitString(cad, WorldMap.TrialFont, splitLength)
        trialLines = #textoTrial
        for j = trialLines + 1, WorldMap.MaxLinesTrials do
          textoTrial[j] = ""
        end
        for j = 1, #textoTrial do
          lowLvlName = string.lower(levelName)
          if lowLvlName == "1_9_oblivion_lake" or lowLvlName == "2_9_stone_idol_temple" or lowLvlName == "5_1_dark_forest" or lowLvlName == "5_4_abbey_catacombs_a" or lowLvlName == "8_2_the_tower" or lowLvlName == "11_8_dracolich" then
            local mins = math.floor(Trials.valorObjetivo[lowLvlName] / 60)
            local secs = Trials.valorObjetivo[lowLvlName] - math.floor(Trials.valorObjetivo[lowLvlName] / 60) * 60
            local time
            if secs < 10 then
              time = mins .. ":0" .. secs
            else
              time = mins .. ":" .. secs
            end
            if 0 < secs then
              Scorer.GetItem(0, "TRIAL_I_TextoTrial_" .. j).Text = string.format(textoTrial[j], time)
            else
              Scorer.GetItem(0, "TRIAL_I_TextoTrial_" .. j).Text = string.format(textoTrial[j], Trials.valorObjetivo[lowLvlName] / 60)
            end
          else
            Scorer.GetItem(0, "TRIAL_I_TextoTrial_" .. j).Text = string.format(textoTrial[j], Trials.valorObjetivo[lowLvlName])
          end
        end
      end
    else
      for j = 1, WorldMap.MaxLinesTrials do
        Scorer.GetItem(0, "TRIAL_I_TextoTrial_" .. j).Text = ""
      end
    end
  else
    local trialSuccess = trialCompletion ~= "0"
    local cad = langstr("Trial_" .. string.lower(levelName) .. "_Complete")
    if cad == "" then
      if not WorldMap.QuestEndOfLevel then
        Scorer.GetItem(id, "TRIAL_I").Text = "(Trial_" .. string.lower(levelName) .. "_Complete):" .. Trials.Status[string.lower(levelName)]
      else
        Scorer.GetItem(id, "TRIAL_I").Text = "(Trial_" .. string.lower(levelName) .. "_Complete):" .. MapTrial.Status
      end
    else
      if trialSuccess == false and WorldMap.QuestEndOfLevel then
        lowLvlName = string.lower(levelName)
        cad = langstr("Trial_" .. lowLvlName .. "_Descr")
        if Trials.valorObjetivo[lowLvlName] then
          MapTrial.Status = Trials.valorObjetivo[lowLvlName]
        end
      end
      local textoTrial = Scorer.SplitString(cad, WorldMap.TrialFont, splitLength)
      trialLines = #textoTrial
      for j = trialLines + 1, WorldMap.MaxLinesTrials do
        textoTrial[j] = ""
      end
      for j = 1, #textoTrial do
        if not WorldMap.QuestEndOfLevel then
          Scorer.GetItem(0, "TRIAL_I_TextoTrial_" .. j).Text = string.format(textoTrial[j], Trials.Status[string.lower(levelName)])
        else
          lowLvlName = string.lower(levelName)
          if lowLvlName == "1_9_oblivion_lake" or lowLvlName == "2_9_stone_idol_temple" or lowLvlName == "5_1_dark_forest" or lowLvlName == "5_4_abbey_catacombs_a" or lowLvlName == "8_2_the_tower" or lowLvlName == "11_8_dracolich" then
            local mins = math.floor(MapTrial.Status / 60)
            local secs = MapTrial.Status - math.floor(MapTrial.Status / 60) * 60
            local time
            if secs < 10 then
              time = mins .. ":0" .. secs
            else
              time = mins .. ":" .. secs
            end
            if 0 < secs then
              Scorer.GetItem(0, "TRIAL_I_TextoTrial_" .. j).Text = string.format(textoTrial[j], time)
            else
              Scorer.GetItem(0, "TRIAL_I_TextoTrial_" .. j).Text = string.format(textoTrial[j], MapTrial.Status / 60)
            end
          else
            Scorer.GetItem(0, "TRIAL_I_TextoTrial_" .. j).Text = string.format(textoTrial[j], MapTrial.Status)
          end
        end
      end
    end
  end
  return trialLines
end

function WorldMap.UpdateUpgradeIcon(levelName)
  local picked, available = WorldMap.GetUpgradesLevelInfo(levelName, "Dagger")
  if available and 0 < available then
    Scorer.GetItem(0, "Daga").Visible = 1
    Scorer.GetItem(0, "DagaShadow").Visible = 1
    if picked and 0 < picked then
      Scorer.GetItem(0, "DagaDescText").Visible = 1
    end
  else
    picked, available = WorldMap.GetUpgradesLevelInfo(levelName, "Vial")
    if available and 0 < available then
      if string.find(Game.Get("VisitedLevels"), "5_8_abbey_tower") then
        Scorer.GetItem(0, "Vial").Visible = 1
      else
        Scorer.GetItem(0, "VialPerfilado").Visible = 1
      end
      Scorer.GetItem(0, "VialShadow").Visible = 1
      if picked and 0 < picked then
        Scorer.GetItem(0, "VialDescText").Visible = 1
      end
    else
      picked, available = WorldMap.GetUpgradesLevelInfo(levelName, "Fairy")
      if available and 0 < available then
        if string.find(Game.Get("VisitedLevels"), "3_0_the_gauntlet") then
          Scorer.GetItem(0, "Fairy").Visible = 1
        else
          Scorer.GetItem(0, "FairyPerfilada").Visible = 1
        end
        Scorer.GetItem(0, "FairyShadow").Visible = 1
        if picked and 0 < picked then
          Scorer.GetItem(0, "FairyDescText").Visible = 1
        end
      end
    end
  end
  if picked and picked == 0 then
    Scorer.GetItem(0, "UpgradeNotFoundText").Visible = 1
  end
end

function WorldMap.UpgradePicked(levelName)
  local pickedDaggers, availableDaggers = WorldMap.GetUpgradesLevelInfo(levelName, "Dagger")
  local pickedVials, availableVials = WorldMap.GetUpgradesLevelInfo(levelName, "Vial")
  local pickedFairies, availableFairies = WorldMap.GetUpgradesLevelInfo(levelName, "Fairy")
  return pickedDaggers and 0 < pickedDaggers or pickedVials and 0 < pickedVials or pickedFairies and 0 < pickedFairies
end

function WorldMap.UpgradeExists(levelName)
  local pickedDaggers, availableDaggers = WorldMap.GetUpgradesLevelInfo(levelName, "Dagger")
  local pickedVials, availableVials = WorldMap.GetUpgradesLevelInfo(levelName, "Vial")
  local pickedFairies, availableFairies = WorldMap.GetUpgradesLevelInfo(levelName, "Fairy")
  return availableDaggers and 0 < availableDaggers or availableVials and 0 < availableVials or availableFairies and 0 < availableFairies
end

function WorldMap.SwitchLevelData(scorerId, itemName)
  WorldMap.CreateQuestRightMenu()
end

function WorldMap.ClearLevelData(id, ItmName)
  local a = {
    "LEVEL_N",
    "LIFE_G",
    "LIGHT_G",
    "DARK_G",
    "TRIAL_I"
  }
  for i = 1, #a do
    if a[i] == "TRIAL_I" then
      for j = 1, 3 do
        Scorer.GetItem(id, "TRIAL_I_TextoTrial_" .. j).Text = ""
      end
    else
      Scorer.GetItem(0, a[i]).Text = ""
    end
  end
end

function WorldMap.SelectNextLevelPlayed()
  local MenuTitle, ChapterName
  local Name = Game.Get("gvLastLevelPlayed")
  local ci = 1
  for _, chapterInfo in ipairs(SaveGame.GameChapters) do
    for i = 1, #chapterInfo do
      if chapterInfo[i] == Name then
        WorldMap.CalculateLevelInfo()
        if SaveGame.GameChapters[ci][1] == Name then
          WorldMap.HistoricMenu(id, control, true)
        else
          WorldMap._HistoricSubMenu(chapterInfo[i], ci)
        end
        return
      end
    end
    ci = ci + 1
  end
  WorldMap.HistoricMenu(id, control)
end

function WorldMap.HistoricMenu(id, control, forceSelectNextChapter)
  forceSelectNextChapter = defparam(forceSelectNextChapter, false)
  WorldMap.CalculateLevelInfo()
  if Game.Get("gvGameFinished") then
    if SaveGame.IsDLCAvailable(1) then
      SaveGame.SetLevelVisited("dlc_1_1_castle_hall")
    end
    if WorldMap.GetRegionFinishPerc("dlc_1_3_towermech") > 0 and SaveGame.IsDLCAvailable(2) then
      SaveGame.SetLevelVisited("dlc_2_1_otherworld")
    end
  end
  local gameChapters = {}
  for _, chapterInfo in ipairs(SaveGame.GameChapters) do
    table.insert(gameChapters, chapterInfo.Name)
  end
  Menu.StartNewMenu()
  Menu.TurnPage()
  Menu.HideBasicAdornments(true, true, true, true)
  WorldMap.LoadMapRegion("mapa_viaje.dds", "MainMap", gameChapters, forceSelectNextChapter)
  Scorer.SetOnCancel(0, "WorldMap.BackToMainMenuFromWorldMap")
end

function WorldMap.BackToMainMenuFromWorldMap()
  Menu.IsComingBack = true
  TravelBook.SetBackground("")
  Menu.MainMenu()
end

function WorldMap.HistoricSubMenu(scorerId, itemName)
  local chapterItem = Scorer.GetItem(scorerId, itemName)
  WorldMap._HistoricSubMenu(chapterItem.uData.ChapterName, chapterItem.uData.ChapterIndex)
end

function WorldMap.AbortJumpToLocation(scorerId, itemName)
  WorldMap._HistoricSubMenu(WorldMap.PrevChapterItemName, WorldMap.PrevChapterItemIndex, false)
end

function WorldMap._HistoricSubMenu(ChapterName, ChapterIndex, turnRight)
  turnRight = defparam(turnRight, true)
  WorldMap.PrevChapterItemName = ChapterName
  WorldMap.PrevChapterItemIndex = ChapterIndex
  Menu.StartNewMenu()
  Menu.TurnPage(turnRight)
  Menu.HideBasicAdornments(true, true, true, true)
  Menu.CreateAdornmentCross(2)
  Menu.HideAdornmentCross(2)
  WorldMap.QuestItemTable = {}
  WorldMap.LoadMapRegion("mapa_capitulo" .. ChapterIndex .. ".dds", "Capitulo" .. ChapterIndex, SaveGame.GameChapters[ChapterIndex])
  WorldMap.CreateQuestRightMenu()
  Scorer.SetOnCancel(0, "WorldMap.HistoricMenu")
end

function WorldMap.LoadMapRegion(regionBackground, regionSprites, chapterList, forceSelectNextChapter, editionMode)
  forceSelectNextChapter = defparam(forceSelectNextChapter, false)
  editionMode = defparam(editionMode, false)
  if editionMode then
    Game.PreloadLibrary("Scripts/Editor/MenuEditor.lua", "MenuEditor")
    MenuEditor.NewMenu()
  else
    Game.Set("RenderDebugScorer", 0)
  end
  TravelBook.SetBackground(regionBackground)
  WorldMap.AddSelectionRegionSprites()
  _G[regionSprites].Items = {}
  _G[regionSprites].main()
  local lastItemName = "MonedaGrande1"
  local isMainMap = regionSprites == "MainMap"
  if MenuEditor == nil then
    local itemTable = _G[regionSprites].Items
    local isVisited
    if isMainMap then
      isVisited = SaveGame.IsChapterVisited
    else
      isVisited = SaveGame.IsLevelVisited
    end
    local activeItems = {}
    for i, itemName in ipairs(itemTable) do
      local currentItem = Scorer.GetItem(0, itemName)
      currentItem.uData.ChapterName = chapterList[i]
      currentItem.uData.ChapterIndex = i
      if string.sub(itemName, 1, 12) == "MonedaGrande" and isVisited(chapterList[i]) then
        table.insert(activeItems, itemName)
      end
    end
    if isMainMap then
      local function checkDLC(dlcNumber)
        local dlcChapterIndex = 12 + dlcNumber
        
        local dlcChapterName = SaveGame.GameChapters[dlcChapterIndex].Name
        Scorer.GetItem(0, "MonedaPequenia" .. dlcChapterIndex).Visible = 0
        if not SaveGame.IsDLCAvailable(dlcNumber) then
          for i, activeItemName in ipairs(activeItems) do
            if activeItemName == "MonedaGrande" .. dlcChapterIndex then
              table.remove(activeItems, i)
              return
            end
          end
        end
      end
      
      checkDLC(1)
      checkDLC(2)
    end
    for i, activeItemName in ipairs(activeItems) do
      local currentItem = Scorer.GetItem(0, activeItemName)
      if i < #activeItems then
        local nextItem = Scorer.GetItem(0, activeItems[i + 1])
        print("Linkando: " .. activeItems[i], activeItems[i + 1])
        Menu.LinkLR(currentItem, nextItem)
      end
      currentItem.SkipRender = 1
      Scorer.GetItem(0, "MonedaPequenia" .. i).Visible = 0
      currentItem.uData.IsChapter = isMainMap
      currentItem.OnAccept = "WorldMap.OnRegionSpriteItemClicked"
      currentItem.OnGainFocus = "WorldMap.OnRegionSpriteItemFocusGained"
    end
    lastItemName = activeItems[#activeItems]
  end
  local ultimaMoneda = lastItemName
  if not forceSelectNextChapter and WorldMap.PrevChapterItemName ~= nil then
    for i = 1, #chapterList do
      if WorldMap.PrevChapterItemName == chapterList[i] then
        ultimaMoneda = "MonedaGrande" .. i
        break
      end
    end
  end
  Scorer.SetDefault(0, ultimaMoneda)
  WorldMap.OnRegionSpriteItemFocusGained(0, ultimaMoneda)
  Menu.ShowNavigationHUD("Menu_Nav_Back", "Menu_Nav_Select")
  if not WorldMap.WorldMapTutoShown and not Trials.isTrial and init.level_name == "1_1_besieged_village" then
    WorldMap.WorldMapTutoShown = true
    Menu.FreezeInput(WorldMap.WorldMapTutoDoNothing)
    if Game.Get("ScorerExecuteFunc") == "" then
      Game.Set("ScorerExecuteTime", Game.Get("ScorerExecuteTime") + 2.5)
      Game.Set("ScorerExecuteFunc", "WorldMap.OnWorldMapTutoShown")
    else
      WorldMap.OnWorldMapTutoShown()
    end
    Menu.ShowNavigationHUD(nil, nil, nil)
  end
end

function WorldMap.WorldMapTutoDoNothing()
  Menu.FreezeInput(WorldMap.WorldMapTutoDoNothing)
end

function WorldMap.OnWorldMapTutoShown()
  local str
  if Game.Get("Platform") == "PS3" then
    str = langstr("PS3_Menu_MapScreenFirstTime")
    if Input.GetAcceptCancelSwap() == 1 then
      local a = Game.Split(langstr("PS3_Menu_MapScreenFirstTime"), "\022")
      str = a[1] .. "\023" .. a[2]
    end
  else
    str = langstr("X360_Menu_MapScreenFirstTime")
  end
  local message = Scorer.NewItem(0, "ModalMsg", "ModalMsg")
  message:Show(str, 1, langstr("Menu_Press_Continue"):format(Menu.GetAcceptIconCode()))
  message.Outside = 1
  Scorer.AddScheduledFunc(0, 1.5, "", "WorldMap.AfterWorldMapTutoShown")
end

function WorldMap.AfterWorldMapTutoShown()
  Menu.FreezeInput(WorldMap.HideWorldMapMsg)
end

function WorldMap.HideWorldMapMsg()
  Scorer.GetItem(0, "ModalMsg").DelMe = 1
  Menu.ShowNavigationHUD("Menu_Nav_Back", "Menu_Nav_Select")
end

function WorldMap.AddRegionSprite(spriteInfo, itemtable, align, changeColor)
  itemtable = defparam(itemtable, nil)
  if #spriteInfo < 4 then
    return
  end
  if itemtable then
    table.insert(itemtable, #itemtable + 1, spriteInfo[1])
  end
  local sprite = Scorer.NewItem(0, spriteInfo[1], "Sprite")
  sprite.IsMultiSprite = 1
  sprite.HighRes = 1
  sprite.File = spriteInfo[2]
  sprite.SpriteIndex = spriteInfo[3]
  if spriteInfo[4] then
    sprite.Pos = spriteInfo[4]
  end
  if spriteInfo[5] then
    sprite.Angle = spriteInfo[5]
  end
  if align then
    sprite.uData.textAlign = align
  end
  sprite.uData.ChangeSelectionColor = changeColor
  if MenuEditor then
    sprite.Size = sprite.BmpDim
    sprite.OnAccept = "MenuEditor.OnClickItem"
    sprite.OnGainFocus = "MenuEditor.OnGainFocus"
    sprite.OnLooseFocus = "MenuEditor.OnLooseFocus"
    MenuEditor.Sprites[#MenuEditor.Sprites + 1] = sprite
  else
    sprite.Size = sprite.BmpDim
  end
end

function WorldMap.OnRenderFire(id, ControlName, DiffTime)
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    local itm = Scorer.GetItem(id, ControlName)
    itm.uData.lTime = itm.uData.lTime + DiffTime
    if itm.uData.lTime > 0.1 then
      local P = ScorerSprites.Particles:AddParticle("HUDAlpha", 0.5)
      P.Pos = itm.Pos + V2D(Game.Rand(8, 22), Game.Rand(25, 5))
      P:SetIdx(108)
      P.Size = P.Size / 4.7
      P:CopyFrom()
      P:CopyTo()
      P.oTo.Pos = P.Pos + V2D(0, Game.Rand(-5, -15))
      P.oFrom.Size = P.Size / 5.7
      P.oFrom.Color = itm.Color * V4D(Game.Rand(0.7, 1), Game.Rand(0.7, 1), Game.Rand(0.7, 1), 1)
      P.oTo.Color = itm.Color - V4D(0, 0, 0, 255)
      P.oFrom.Time = 0.9
      P.Func = "a"
      itm.uData.lTime = 0
    end
  end
end

function WorldMap.AddSelectionRegionSprites()
  ScorerSprites.AddParticles()
  local itm = Scorer.NewItem(0, "AnimatedFire", "AnimSprite")
  itm.IsMultiSprite = 1
  itm.HighRes = 1
  itm.File = "2D/Menu/Fuego_Libro.alpha.tga"
  itm.SpriteIndex = 1
  itm.LocalPos = V2D(550, 117)
  itm.Visible = 0
  itm.Rotate = 0
  itm.FirstAnimIndex = 1
  itm.LastAnimIndex = 32
  itm.FirstAnimIndexAfterLoop = 21
  itm.TimeBetweenFrames = 0.05
  itm.OnRender = "WorldMap.OnRenderFire"
  itm.uData.lTime = 0
  itm = Scorer.NewItem(0, "Orb", "Sprite")
  itm.IsMultiSprite = 1
  itm.HighRes = 1
  itm.File = "2D/Menu/mapa_viaje_adds.alpha.tga"
  itm.SpriteIndex = 2
  itm.LocalPos = V2D(550, 117)
  itm.Visible = 0
  itm.Rotate = 0
  itm = Scorer.NewItem(0, "Effect", "Sprite")
  itm.IsMultiSprite = 1
  itm.HighRes = 1
  itm.BlendingMode = 2
  itm.File = "2D/Menu/mapa_viaje_adds.alpha.tga"
  itm.SpriteIndex = 1
  itm.BlinkFactorizer = "r"
  itm.LocalPos = V2D(550, 117)
  itm.Visible = 0
  itm.Rotate = 0
  itm = Scorer.NewItem(0, "ChapterName", "Text", 1)
  itm.Font = "HoratioTiny"
  itm.Align = "Left"
  itm.Effect = "Shadow"
  itm.Text = ""
  itm.Color = V4D(200, 200, 150, 255)
  itm.Visible = 0
  itm = Scorer.NewItem(0, "ChapterPerc", "Text", 1)
  itm.Font = "HoratioSmall"
  itm.Align = "Left"
  itm.Effect = "Shadow"
  itm.Text = ""
  itm.Color = V4D(200, 200, 150, 255)
  itm.Visible = 0
end

function WorldMap.OnRegionSpriteItemFocusGained(id, controlName)
  local control = Scorer.GetItem(0, controlName)
  if control == nil then
    print("El control " .. controlName .. " no existe")
    return
  end
  local index = tonumber(string.sub(controlName, 13, -1))
  local monedaPequenia = Scorer.GetItem(0, "MonedaPequenia" .. index)
  if monedaPequenia == nil then
    print("El control 'MonedaPequenia" .. index .. "' no existe")
    return
  end
  print("Focus gained: " .. controlName)
  local itm = Scorer.GetItem(0, "Orb")
  itm.Visible = 1
  itm.Pos = control.Pos - V2D(6, 5)
  itm = Scorer.GetItem(0, "Effect")
  itm.Visible = 1
  itm.Pos = monedaPequenia.Pos - V2D(24, 30)
  itm = Scorer.GetItem(0, "AnimatedFire")
  itm.Visible = 1
  itm.Pos = monedaPequenia.Pos - V2D(5, 14)
  itm.Reset = 1
  if monedaPequenia.uData.textAlign then
    itm = Scorer.GetItem(0, "ChapterName")
    itm.Visible = 1
    itm.Align = monedaPequenia.uData.textAlign
    if control.uData.IsChapter then
      itm.Text = langstr("Menu_Chapter_" .. control.uData.ChapterName)
    else
      itm.Text = langstr("Menu_Level_" .. control.uData.ChapterName)
    end
    itm.uData.ChapterName = control.uData.ChapterName
    itm.uData.ChapterIndex = index
    if monedaPequenia.uData.textAlign == "Left" then
      itm.Pos = monedaPequenia.Pos + WorldMap.ChapterTextOffsetLeft
    else
      itm.Pos = monedaPequenia.Pos + WorldMap.ChapterTextOffsetRight
    end
  end
  itm = Scorer.GetItem(0, "ChapterPerc")
  itm.Visible = 1
  itm.Align = "Center"
  if control.uData.IsChapter then
    local partialPerc = 0
    local numLevelsInChapter = #SaveGame.GameChapters[index]
    for i = 1, numLevelsInChapter do
      if SaveGame.IsLevelVisited(SaveGame.GameChapters[index][i]) then
        partialPerc = partialPerc + WorldMap.GetRegionFinishPerc(SaveGame.GameChapters[index][i])
      else
        break
      end
    end
    local finalPerc = math.floor(partialPerc / numLevelsInChapter + 0.5)
    if 110 < finalPerc then
      finalPerc = 110
    end
    itm.Text = tostring(finalPerc) .. "%"
  else
    local perc = WorldMap.GetRegionFinishPerc(control.uData.ChapterName)
    itm.Text = tostring(perc) .. "%"
  end
  itm.Pos = control.Pos + WorldMap.ChapterPercOffset
  if not control.uData.IsChapter then
    WorldMap.SwitchLevelData(0, "ChapterName")
  end
  if control.uData.ChangeSelectionColor then
    WorldMap.SwitchNavigationItemsColor(WorldMap.DLCRegionSelectionColor)
  else
    WorldMap.SwitchNavigationItemsColor()
  end
  WorldMap.UnlockAllLevelsPercentageAchievement()
end

function WorldMap.SwitchNavigationItemsColor(color)
  color = color or Color(255, 255, 255)
  local navigationItemNames = {
    "Orb",
    "Effect",
    "AnimatedFire"
  }
  for _, itemName in ipairs(navigationItemNames) do
    Scorer.GetItem(0, itemName).Color = color
  end
end

function WorldMap.GetRegionFinishPerc(levelName)
  local perc = WorldMap.GetNumSkillsDone(levelName) * 8
  if perc == 0 then
    return 0
  elseif perc == 32 then
    perc = 34
  end
  if Trials.IsTrialComplete(levelName) then
    perc = perc + 24
  end
  local collected = 0
  local total = 0
  local totalItemsCollected = 0
  local totalItemsAvailable = 0
  local gemTypes = {
    "Life",
    "Light",
    "Dark"
  }
  for i = 1, #gemTypes do
    collected, total = WorldMap.GetGemsLevelInfo(levelName, gemTypes[i])
    totalItemsCollected = totalItemsCollected + collected
    totalItemsAvailable = totalItemsAvailable + total
  end
  local upgradeTypes = {
    "Dagger",
    "Vial",
    "Fairy"
  }
  for i = 1, #upgradeTypes do
    collected, total = WorldMap.GetUpgradesLevelInfo(levelName, upgradeTypes[i])
    totalItemsCollected = totalItemsCollected + collected
    totalItemsAvailable = totalItemsAvailable + total
  end
  collected, total = WorldMap.GetLevelFingersCount(levelName)
  totalItemsCollected = totalItemsCollected + collected
  totalItemsAvailable = totalItemsAvailable + total
  local itemsPerc = 1
  if 0 < totalItemsAvailable then
    itemsPerc = totalItemsCollected / totalItemsAvailable
  end
  perc = perc + itemsPerc * 52
  perc = math.floor(perc + 0.5)
  if 110 < perc then
    perc = 110
  end
  return perc
end

function WorldMap.UnlockAllLevelsPercentageAchievement()
  for i = 1, #SaveGame.GameMaps do
    if WorldMap.GetRegionFinishPerc(SaveGame.GameMaps[i]) < 110 then
      return
    end
  end
  Game.WriteAchievement(42)
  print("ALL LEVELS AT 110% ACHIEVEMENT UNLOCKED")
end

function WorldMap.OnRegionSpriteItemClicked(id, controlName)
  print("Item clicked: " .. controlName)
  TravelBook.SetBackground("")
  if Scorer.GetItem(id, controlName).uData.IsChapter then
    WorldMap.HistoricSubMenu(id, "ChapterName")
  else
    WorldMap.LoadHistoricMission(0, "ChapterName")
  end
end

function WorldMap.NewQuestItem(itemName, itemType)
  local item = Scorer.NewItem(0, itemName, itemType)
  if item == nil then
    item = Scorer.GetItem(0, itemName)
  else
    item.uData.CanScroll = true
    table.insert(WorldMap.QuestItemTable, item)
  end
  return item
end

function WorldMap.ChangeQuestsItemsProperty(property, value)
  for i = 1, #WorldMap.QuestItemTable do
    local item = WorldMap.QuestItemTable[i]
    if item then
      item[property] = value
    end
  end
end

function WorldMap.ChangeQuestItemAlpha(item)
  if not WorldMap.QuestEndOfLevel then
    return
  end
  local topWindowMin = 125
  local topWindowMax = 150
  local bottomWindowMin = 360
  local bottomWindowMax = 390
  local alphaMod = 1
  if topWindowMin > item.Pos.y or bottomWindowMax < item.Pos.y then
    alphaMod = 0
  elseif topWindowMax > item.Pos.y then
    alphaMod = 1 - (topWindowMax - item.Pos.y) / (topWindowMax - topWindowMin)
  elseif bottomWindowMin < item.Pos.y then
    alphaMod = (bottomWindowMax - item.Pos.y) / (bottomWindowMax - bottomWindowMin)
  end
  item.Alpha = item.uData.OrigAlpha * alphaMod
end

function WorldMap.AddOffsetPosToQuestsItems(offsetPos)
  for i = 1, #WorldMap.QuestItemTable do
    local item = WorldMap.QuestItemTable[i]
    if item and item.uData.CanScroll then
      item.Pos = item.Pos + offsetPos
      WorldMap.ChangeQuestItemAlpha(item)
    end
  end
end

function WorldMap.SaveQuestItemsOrigAlpha()
  for i = 1, #WorldMap.QuestItemTable do
    local item = WorldMap.QuestItemTable[i]
    if item and item.uData.CanScroll then
      item.uData.OrigAlpha = item.Alpha
      WorldMap.ChangeQuestItemAlpha(item)
    end
  end
end

function WorldMap.CreateQuestRightMenu()
  Menu.HideAdornmentCross(2)
  WorldMap.ChangeQuestsItemsProperty("Visible", 0)
  local isX360 = Game.Get("Platform") ~= "PS3"
  local QuestOffsetY = 0
  local levelName
  local chapterNameItem = Scorer.GetItem(0, "ChapterName")
  if chapterNameItem then
    levelName = chapterNameItem.uData.ChapterName
  else
    levelName = init.level_name
  end
  local theChapterName = WorldMap.PrevChapterItemName
  for chapter, chapterInfo in ipairs(SaveGame.GameChapters) do
    for i = 1, #chapterInfo do
      if WorldMap.QuestEndOfLevel and chapterInfo[i] == init.level_name or not WorldMap.QuestEndOfLevel and chapterInfo[i] == WorldMap.PrevChapterItemName then
        theChapterName = SaveGame.GameChapters[chapter].Name
        break
      end
    end
  end
  local chapterNameText = WorldMap.NewQuestItem("ChapterTitle", "Text")
  chapterNameText.Align = "Center"
  chapterNameText.Font = "HoratioSmall"
  if WorldMap.QuestEndOfLevel then
    chapterNameText.Text = ""
  else
    chapterNameText.Text = langstr("Menu_Level_" .. levelName)
  end
  chapterNameText.Color = Menu.ItemColor
  chapterNameText.Pos = V2D(510, 60) + V2D(0, QuestOffsetY)
  chapterNameText.OnRender = "WorldMap.OnQuestItemRendered"
  chapterNameText.uData.CanScroll = false
  chapterNameText.Visible = 1
  if WorldMap.QuestEndOfLevel then
    local levelCompleteText = WorldMap.NewQuestItem("LevelComplete", "Text")
    levelCompleteText.Align = "Center"
    levelCompleteText.Font = "HoratioSmall"
    levelCompleteText.Color = Menu.ItemColor
    levelCompleteText.Pos = V2D(510, 75) + V2D(0, QuestOffsetY)
    levelCompleteText.Text = langstr("Summary_LevelComplete")
    levelCompleteText.uData.CanScroll = false
    levelCompleteText.Visible = 1
    QuestOffsetY = QuestOffsetY + 30
    local xSize, ySize = Scorer.GetTextArea("HoratioSmall", levelCompleteText.Text)
    xSize = xSize / 2
    local adorno1LevelComplete = WorldMap.NewQuestItem("Adorno1LevelComplete", "Sprite")
    adorno1LevelComplete.IsMultiSprite = 1
    adorno1LevelComplete.HighRes = 1
    adorno1LevelComplete.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    adorno1LevelComplete.SpriteIndex = 10
    adorno1LevelComplete.Pos = levelCompleteText.Pos + V2D(-5, 11) - V2D(xSize, 0)
    adorno1LevelComplete.Visible = 1
    adorno1LevelComplete.Rotate = 0
    adorno1LevelComplete.Angle = 180
    adorno1LevelComplete.Size = adorno1LevelComplete.BmpDim
    adorno1LevelComplete.uData.CanScroll = false
    local adorno2LevelComplete = WorldMap.NewQuestItem("Adorno2LevelComplete", "Sprite")
    adorno2LevelComplete.IsMultiSprite = 1
    adorno2LevelComplete.HighRes = 1
    adorno2LevelComplete.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    adorno2LevelComplete.SpriteIndex = 10
    adorno2LevelComplete.Pos = levelCompleteText.Pos + V2D(5, -9) + V2D(xSize, 0)
    adorno2LevelComplete.Visible = 1
    adorno2LevelComplete.Rotate = 0
    adorno2LevelComplete.Size = adorno2LevelComplete.BmpDim
    adorno2LevelComplete.uData.CanScroll = false
    local adornoUp = WorldMap.NewQuestItem("AdornoUp", "Sprite")
    adornoUp.IsMultiSprite = 1
    adornoUp.Pivot = V2D(0.5, 0.5)
    adornoUp.HighRes = 1
    adornoUp.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    adornoUp.SpriteIndex = 4
    adornoUp.Pos = V2D(495, 130)
    adornoUp.Visible = 1
    adornoUp.Rotate = 0
    adornoUp.Angle = 270
    adornoUp.Size = adornoUp.BmpDim
    adornoUp.uData.CanScroll = false
    QuestOffsetY = QuestOffsetY + 25
    local adornoDown = WorldMap.NewQuestItem("AdornoDown", "Sprite")
    adornoDown.IsMultiSprite = 1
    adornoDown.Pivot = V2D(0.5, 0.5)
    adornoDown.HighRes = 1
    adornoDown.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    adornoDown.SpriteIndex = 4
    adornoDown.Pos = V2D(521, 410)
    adornoDown.Visible = 1
    adornoDown.Rotate = 0
    adornoDown.Angle = 90
    adornoDown.Size = adornoDown.BmpDim
    adornoDown.uData.CanScroll = false
  end
  local adorno1 = WorldMap.NewQuestItem("Adorno1", "Sprite")
  adorno1.IsMultiSprite = 1
  adorno1.HighRes = 1
  adorno1.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
  adorno1.SpriteIndex = 9
  adorno1.Pos = V2D(343.63, 100.2) + V2D(0, QuestOffsetY)
  adorno1.Visible = 1
  adorno1.Rotate = 0
  adorno1.Size = adorno1.BmpDim
  WorldMap.FirstScrollableQuestItem = adorno1
  WorldMap.ScrollUpLimit = adorno1.Pos.y
  local difficultyText = WorldMap.NewQuestItem("Difficulty", "Text")
  difficultyText.Align = "Left"
  difficultyText.Font = "HoratioLittle"
  difficultyText.Color = Menu.ItemColor
  difficultyText.Pos = V2D(370, 95) + V2D(0, QuestOffsetY)
  difficultyText.Text = langstr("TBook_Enemy_Difficulty") .. ":"
  difficultyText.UseAlpha = 1
  difficultyText.Visible = 1
  local offsetCalavera = {
    0,
    50,
    100,
    160
  }
  local offsetCalaveraSuccess = {
    14,
    65,
    120,
    182
  }
  local numSkillsDone
  if WorldMap.QuestEndOfLevel then
    numSkillsDone = tonumber(Game.GetSaveVar(init.LevelName .. ".SkillLevel")) + 1
  else
    numSkillsDone = WorldMap.GetNumSkillsDone(levelName)
  end
  for i = 1, 4 do
    local calavera = WorldMap.NewQuestItem("Calavera" .. i, "Sprite")
    calavera.IsMultiSprite = 1
    calavera.HighRes = 1
    calavera.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    calavera.SpriteIndex = 40 + (i - 1)
    calavera.Pos = V2D(463.4 + offsetCalavera[i], 92.27) + V2D(0, QuestOffsetY)
    calavera.Visible = 1
    calavera.Rotate = 0
    calavera.Size = calavera.BmpDim
    if i <= numSkillsDone then
      calavera.Alpha = 255
    else
      calavera.Alpha = 128
    end
    local calaveraSuccess = WorldMap.NewQuestItem("CalaveraSuccess" .. i, "Sprite")
    calaveraSuccess.IsMultiSprite = 1
    calaveraSuccess.HighRes = 1
    calaveraSuccess.File = TravelBook.MiniGamesFile
    calaveraSuccess.SpriteIndex = 15
    calaveraSuccess.Pos = V2D(470.4 + offsetCalaveraSuccess[i], 95.27) + V2D(0, QuestOffsetY)
    calaveraSuccess.Rotate = 0
    calaveraSuccess.Size = calaveraSuccess.BmpDim
    calaveraSuccess.Scale = V2D(0.8, 0.8)
    if i <= numSkillsDone then
      calaveraSuccess.Visible = 1
    else
      calaveraSuccess.Visible = 0
    end
  end
  if WorldMap.QuestEndOfLevel then
    WorldMap.bCalculatedLevelInfo = false
  end
  WorldMap.CalculateLevelInfo()
  local atLeastOneGem = false
  local gemTypes = {
    "Life",
    "Light",
    "Dark"
  }
  for i, gemType in ipairs(gemTypes) do
    local gemsCollectedInLevel, totalGemsInLevel = WorldMap.GetGemsLevelInfo(levelName, gemType)
    if totalGemsInLevel and 0 < totalGemsInLevel then
      atLeastOneGem = true
      break
    end
  end
  if atLeastOneGem then
    local adorno2 = WorldMap.NewQuestItem("Adorno2", "Sprite")
    adorno2.IsMultiSprite = 1
    adorno2.HighRes = 1
    adorno2.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    adorno2.SpriteIndex = 9
    adorno2.Pos = V2D(343.63, 138.83) + V2D(0, QuestOffsetY)
    adorno2.Visible = 1
    adorno2.Rotate = 0
    adorno2.Size = adorno2.BmpDim
    local magicGemsText = WorldMap.NewQuestItem("MagicGems", "Text")
    magicGemsText.Align = "Left"
    magicGemsText.Font = "HoratioLittle"
    magicGemsText.Color = Menu.ItemColor
    magicGemsText.Pos = V2D(370, 135) + V2D(0, QuestOffsetY)
    magicGemsText.Text = langstr("Summary_Gems") .. ":"
    magicGemsText.UseAlpha = 1
    magicGemsText.Visible = 1
    local spriteIndexes = {
      44,
      45,
      46
    }
    for i, gemType in ipairs(gemTypes) do
      local gemsCollectedInLevel, totalGemsInLevel = WorldMap.GetGemsLevelInfo(levelName, gemType)
      if totalGemsInLevel and 0 < totalGemsInLevel then
        local gemItem = WorldMap.NewQuestItem(gemType .. "GemsItem", "Text")
        gemItem.Align = "Right"
        gemItem.Font = "HoratioLittle"
        gemItem.Color = Menu.ItemColor
        gemItem.Pos = V2D(650, 167 + 35 * (i - 1)) + V2D(0, QuestOffsetY)
        gemItem.UseAlpha = 1
        gemItem.Visible = 1
        local gemIconItem = WorldMap.NewQuestItem(gemType .. "GemsIconItem", "Sprite")
        gemIconItem.IsMultiSprite = 1
        gemIconItem.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
        gemIconItem.Pos = V2D(406.85, 154.26 + 35 * (i - 1)) + V2D(0, QuestOffsetY)
        gemIconItem.Angle = 21.9
        gemIconItem.SpriteIndex = spriteIndexes[i]
        gemIconItem.Scale = V2D(0.5, 0.5)
        gemIconItem.Visible = 1
        local gemShadowItem = WorldMap.NewQuestItem(gemType .. "GemShadow", "Sprite")
        gemShadowItem.IsMultiSprite = 1
        gemShadowItem.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
        gemShadowItem.Pos = V3D(362.35, 168.48 + 35 * (i - 1)) + V2D(0, QuestOffsetY)
        gemShadowItem.Angle = 0
        gemShadowItem.SpriteIndex = 47
        gemShadowItem.Scale = V2D(3.6, 0.54)
        gemShadowItem.Visible = 1
      else
        QuestOffsetY = QuestOffsetY - 35
      end
    end
    WorldMap.FillGemsText(WorldMap.GetGemsLevelInfo, levelName)
  else
    QuestOffsetY = QuestOffsetY - 145
  end
  local collectedFingers, totalFingers = WorldMap.GetLevelFingersCount(levelName)
  if 0 < totalFingers then
    local itemCreator = function(itemName, itemType, itemProperties)
      if itemName == "FingerIcon" and Game.Get("Platform") == "X360" then
        local item = WorldMap.NewQuestItem(itemName, itemType)
        if "Sprite" == itemType then
          item.IsMultiSprite = 1
          item.File = "2D/Menu/Reliquia.alpha.tga"
        end
        for key, value in pairs(itemProperties) do
          item[key] = value
        end
        return item
      else
        local item = WorldMap.NewQuestItem(itemName, itemType)
        if "Sprite" == itemType then
          item.IsMultiSprite = 1
          item.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
        end
        for key, value in pairs(itemProperties) do
          item[key] = value
        end
        return item
      end
    end
    local fingerLineItem = itemCreator("FingerAdornment", "Sprite", {
      SpriteIndex = 9,
      Pos = V2D(343.63, 138.83) + V2D(0, QuestOffsetY + 145),
      Rotate = 0,
      Visible = 1,
      Scale = V2D(0.53, 0.53)
    })
    fingerLineItem = itemCreator("FingerText", "Text", {
      Align = "Left",
      Font = "HoratioLittle",
      Color = Menu.ItemColor,
      Pos = V2D(370, 135) + V2D(0, QuestOffsetY + 145),
      Text = langstr("Summary_Fingers") .. ":",
      UseAlpha = 1,
      Visible = 1
    })
    fingerLineItem = itemCreator("FingerIcon", "Sprite", {
      Pos = V2D(406.85, 154.26) + V2D(0, QuestOffsetY + 145),
      Angle = 21.9,
      SpriteIndex = 65,
      Scale = V2D(0.5, 0.5),
      Visible = 1
    })
    fingerLineItem = itemCreator("FingerQuantity", "Text", {
      Align = "Right",
      Font = "HoratioLittle",
      Color = Menu.ItemColor,
      Pos = V2D(650, 167) + V2D(0, QuestOffsetY + 145),
      UseAlpha = 1,
      Visible = 1
    })
    fingerLineItem.Text = langstr("Menu_GemsInfo_Life"):format(collectedFingers, totalFingers)
    fingerLineItem = itemCreator("FingerShadow", "Sprite", {
      Pos = V2D(362.35, 168.48) + V2D(0, QuestOffsetY + 145),
      Angle = 0,
      SpriteIndex = 47,
      Scale = V2D(3.6, 0.54),
      Visible = 1
    })
    QuestOffsetY = QuestOffsetY + 75
  end
  local EndOfLevelOffset = V2D(0, 0)
  if WorldMap.QuestEndOfLevel then
    local numMonsterTypes = 0
    local monstersTable = TravelBook.CharManager.CharTable[2]
    local bossesTable = TravelBook.CharManager.CharTable[3]
    local DLCTable = {
      {
        "GhoulDLC",
        "Big",
        "High",
        1
      },
      {
        "SkeletonFlame",
        "Big",
        "High",
        1
      }
    }
    local DLCTableAlias = {
      {
        "Ghoul",
        "Big",
        "High",
        1
      },
      {
        "SkeletonWarrior",
        "Big",
        "High",
        1
      }
    }
    local tables = {}
    if monstersTable then
      table.insert(tables, monstersTable)
    end
    if DLCTable then
      table.insert(tables, DLCTable)
    end
    if bossesTable then
      table.insert(tables, bossesTable)
    end
    for k = 1, #tables do
      local table = tables[k]
      for i = 1, #init.Enemies do
        for j = 1, #table do
          if init.Enemies[i] == table[j][1] then
            if table[j][1] ~= "Darklord1" and table[j][1] ~= "Darklord2" and (init.level_name ~= "2_8_stone_idol_mausoleum" or table[j][1] ~= "BlackKnight") and (init.level_name ~= "2_4_labyrinth_entrance" or table[j][1] ~= "TrollSmall") and (not (init.level_name == "2_2_enchanted_forest" and Trials.isTrial) or table[j][1] ~= "WargGreat") then
              numMonsterTypes = numMonsterTypes + 1
              local yPos = 285 + numMonsterTypes * 20
              if numMonsterTypes % 2 == 1 then
                local enemyShadow = WorldMap.NewQuestItem("EnemyShadow" .. numMonsterTypes, "Sprite")
                enemyShadow.IsMultiSprite = 1
                enemyShadow.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
                enemyShadow.Pos = V3D(350, yPos) + EndOfLevelOffset + V2D(0, QuestOffsetY)
                enemyShadow.Angle = 0
                enemyShadow.SpriteIndex = 47
                enemyShadow.Scale = V2D(3.9, 0.54)
                enemyShadow.Visible = 1
              end
              local enemyText = WorldMap.NewQuestItem("EnemyText" .. numMonsterTypes, "Text")
              enemyText.Align = "Left"
              enemyText.Font = "HoratioLittle"
              enemyText.Color = Menu.ItemColor
              enemyText.Pos = V2D(390, yPos) + V2D(0, QuestOffsetY)
              local textEntry = "TBook_Char_Name_" .. table[j][1]
              if init.level_name == "1_1_besieged_village" and table[j][1] == "WargGreat" then
                textEntry = textEntry .. "Village"
              end
              enemyText.Text = langstr(textEntry)
              enemyText.UseAlpha = 1
              enemyText.Visible = 1
              for dlcEnemies = 1, #DLCTable do
                if table[j][1] == DLCTable[dlcEnemies][1] then
                  table[j][1] = DLCTableAlias[dlcEnemies][1]
                end
              end
              local numEnemiesKilled = tostring(TravelBook.GetLevelKills(table[j][1]))
              local enemyKillsText = WorldMap.NewQuestItem("EnemyKillsText" .. numMonsterTypes, "Text")
              enemyKillsText.Align = "Right"
              enemyKillsText.Font = "HoratioLittle"
              enemyKillsText.Color = Menu.ItemColor
              enemyKillsText.Pos = V2D(668, yPos) + V2D(0, QuestOffsetY)
              enemyKillsText.Text = numEnemiesKilled
              enemyKillsText.UseAlpha = 1
              enemyKillsText.Visible = 1
              local xSize, ySize = Scorer.GetTextArea("HoratioLittle", numEnemiesKilled)
              local enemyKillsXText = WorldMap.NewQuestItem("EnemyKillsXText" .. numMonsterTypes, "Text")
              enemyKillsXText.Align = "Left"
              enemyKillsXText.Font = "HoratioTiny"
              enemyKillsXText.Color = Menu.ItemColor
              enemyKillsXText.Pos = enemyKillsText.Pos - V2D(xSize + 10, -4)
              enemyKillsXText.Text = "x"
              enemyKillsXText.UseAlpha = 1
              enemyKillsXText.Visible = 1
            end
            break
          end
        end
      end
    end
    if 0 < numMonsterTypes then
      local adornoEnemigos = WorldMap.NewQuestItem("AdornoEnemigos", "Sprite")
      adornoEnemigos.IsMultiSprite = 1
      adornoEnemigos.HighRes = 1
      adornoEnemigos.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
      adornoEnemigos.SpriteIndex = 9
      adornoEnemigos.Pos = V2D(343.63, 284.2) + V2D(0, QuestOffsetY)
      adornoEnemigos.Visible = 1
      adornoEnemigos.Rotate = 0
      adornoEnemigos.Size = adornoEnemigos.BmpDim
      local enemiesText = WorldMap.NewQuestItem("EnemiesText", "Text")
      enemiesText.Align = "Left"
      enemiesText.Font = "HoratioLittle"
      enemiesText.Color = Menu.ItemColor
      enemiesText.Pos = V2D(370, 280) + V2D(0, QuestOffsetY)
      enemiesText.Text = langstr("Summary_Monsters") .. ":"
      enemiesText.UseAlpha = 1
      enemiesText.Visible = 1
    else
      QuestOffsetY = QuestOffsetY - 35
    end
    EndOfLevelOffset = V2D(0, (numMonsterTypes + 1) * 20 + 20)
    local adornoRelic = WorldMap.NewQuestItem("AdornoRelic", "Sprite")
    adornoRelic.IsMultiSprite = 1
    adornoRelic.HighRes = 1
    adornoRelic.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    adornoRelic.SpriteIndex = 9
    adornoRelic.Pos = V2D(343.63, 284.2) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    adornoRelic.Visible = 0
    adornoRelic.Rotate = 0
    adornoRelic.Size = adornoRelic.BmpDim
    local relicText = WorldMap.NewQuestItem("RelicText", "Text")
    relicText.Align = "Left"
    relicText.Font = "HoratioLittle"
    relicText.Color = Menu.ItemColor
    relicText.Pos = V2D(370, 280) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    relicText.Text = langstr("Summary_Relic") .. ":"
    relicText.UseAlpha = 1
    relicText.Visible = 0
    local relic = WorldMap.NewQuestItem("Relic", "Sprite")
    relic.IsMultiSprite = 1
    relic.HighRes = 1
    relic.Pivot = V2D(1, 0.5)
    relic.Pos = V2D(400, 310) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    relic.Scale = V2D(1)
    relic.Angle = 0
    relic.Visible = 0
    relic.Rotate = 0
    local relicShadow = WorldMap.NewQuestItem("RelicShadow", "Sprite")
    relicShadow.IsMultiSprite = 1
    relicShadow.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    relicShadow.Pos = V3D(350, 310) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    relicShadow.Angle = 0
    relicShadow.SpriteIndex = 47
    relicShadow.Scale = V2D(3.8, 0.54)
    relicShadow.Visible = 0
    local relicDescText = WorldMap.NewQuestItem("RelicDescText", "Text")
    relicDescText.Align = "Right"
    relicDescText.Font = "HoratioLittle"
    relicDescText.Color = Menu.ItemColor
    relicDescText.Pos = V2D(665, 310) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    relicDescText.UseAlpha = 1
    relicDescText.Visible = 0
    local relicData = WorldMap.RelicsTable[levelName]
    if relicData then
      adornoRelic.Visible = 1
      relicText.Visible = 1
      relicShadow.Visible = 1
      relicDescText.Visible = 1
      relicDescText.Text = langstr("TBook_Item_Name_" .. relicData[7])
      relic.File = relicData[1]
      relic.SpriteIndex = relicData[2]
      if relicData[3] then
        relic.Scale = V2D(relicData[3])
      end
      if relicData[4] then
        relic.Pos = relic.Pos + relicData[4]
      end
      if relicData[5] then
        relic.Angle = relicData[5]
      end
      if relicData[6] then
        relic.Pivot = relicData[6]
      end
      relic.Visible = 1
      EndOfLevelOffset = EndOfLevelOffset + V2D(0, 70)
    else
      adornoRelic.Visible = 0
      relicText.Visible = 0
      relicShadow.Visible = 0
      relicDescText.Visible = 0
      relic.Visible = 0
    end
  end
  if WorldMap.UpgradePicked(levelName) or WorldMap.UpgradeExists(levelName) then
    local adorno3 = WorldMap.NewQuestItem("Adorno3", "Sprite")
    adorno3.IsMultiSprite = 1
    adorno3.HighRes = 1
    adorno3.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    adorno3.SpriteIndex = 9
    adorno3.Pos = V2D(343.63, 280.2) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    adorno3.Visible = 1
    adorno3.Rotate = 0
    adorno3.Size = adorno3.BmpDim
    local upgradeText = WorldMap.NewQuestItem("UpgradeText", "Text")
    upgradeText.Align = "Left"
    upgradeText.Font = "HoratioLittle"
    upgradeText.Color = Menu.ItemColor
    upgradeText.Pos = V2D(370, 276) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    upgradeText.Text = langstr("Summary_Upgrade") .. ":"
    upgradeText.UseAlpha = 1
    upgradeText.Visible = 1
    local upgradeNotFoundText = WorldMap.NewQuestItem("UpgradeNotFoundText", "Text")
    upgradeNotFoundText.Align = "Right"
    upgradeNotFoundText.Font = "HoratioLittle"
    upgradeNotFoundText.Color = Menu.ItemColor
    upgradeNotFoundText.Pos = V2D(665, 303) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    upgradeNotFoundText.Text = langstr("Summary_UpgradeNotFound")
    upgradeNotFoundText.UseAlpha = 1
    upgradeNotFoundText.Visible = 0
    local daga = WorldMap.NewQuestItem("Daga", "Sprite")
    daga.IsMultiSprite = 1
    daga.HighRes = 1
    daga.File = "2D/HUD/HUD.alpha.tga"
    daga.SpriteIndex = 23
    daga.Pos = V2D(400, 303) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    daga.Visible = 0
    daga.Rotate = 0
    daga.Size = daga.BmpDim
    local dagaShadow = WorldMap.NewQuestItem("DagaShadow", "Sprite")
    dagaShadow.IsMultiSprite = 1
    dagaShadow.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    dagaShadow.Pos = V3D(350, 303) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    dagaShadow.Angle = 0
    dagaShadow.SpriteIndex = 47
    dagaShadow.Scale = V2D(3.8, 0.54)
    dagaShadow.Visible = 0
    local dagaDescText = WorldMap.NewQuestItem("DagaDescText", "Text")
    dagaDescText.Align = "Right"
    dagaDescText.Font = "HoratioLittle"
    dagaDescText.Color = Menu.ItemColor
    dagaDescText.Text = langstr("Summary_UpgradeDagger")
    dagaDescText.Pos = V2D(665, 303) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    dagaDescText.UseAlpha = 1
    dagaDescText.Visible = 0
    local vial = WorldMap.NewQuestItem("Vial", "Sprite")
    vial.IsMultiSprite = 1
    vial.HighRes = 1
    vial.File = "2D/HUD/HUD.alpha.tga"
    vial.SpriteIndex = 24
    vial.Pos = V2D(400, 303) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    vial.Visible = 0
    vial.Rotate = 0
    vial.Size = vial.BmpDim
    local vialPerfilado = WorldMap.NewQuestItem("VialPerfilado", "Sprite")
    vialPerfilado.IsMultiSprite = 1
    vialPerfilado.HighRes = 1
    vialPerfilado.File = "2D/HUD/HUD.alpha.tga"
    vialPerfilado.SpriteIndex = 126
    vialPerfilado.Pos = V2D(400, 303) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    vialPerfilado.Visible = 0
    vialPerfilado.Rotate = 0
    vialPerfilado.Size = vialPerfilado.BmpDim
    local vialShadow = WorldMap.NewQuestItem("VialShadow", "Sprite")
    vialShadow.IsMultiSprite = 1
    vialShadow.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    vialShadow.Pos = V3D(350, 303) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    vialShadow.Angle = 0
    vialShadow.SpriteIndex = 47
    vialShadow.Scale = V2D(3.8, 0.54)
    vialShadow.Visible = 0
    local vialDescText = WorldMap.NewQuestItem("VialDescText", "Text")
    vialDescText.Align = "Right"
    vialDescText.Font = "HoratioLittle"
    vialDescText.Color = Menu.ItemColor
    vialDescText.Text = langstr("Summary_UpgradeVial")
    vialDescText.Pos = V2D(665, 303) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    vialDescText.UseAlpha = 1
    vialDescText.Visible = 0
    local fairy = WorldMap.NewQuestItem("Fairy", "Sprite")
    fairy.IsMultiSprite = 1
    fairy.HighRes = 1
    fairy.File = "2D/HUD/HUD.alpha.tga"
    fairy.SpriteIndex = 63
    fairy.Pos = V2D(400, 303) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    fairy.Visible = 0
    fairy.Rotate = 0
    fairy.Size = fairy.BmpDim
    local fairyPerfilada = WorldMap.NewQuestItem("FairyPerfilada", "Sprite")
    fairyPerfilada.IsMultiSprite = 1
    fairyPerfilada.HighRes = 1
    fairyPerfilada.File = "2D/HUD/HUD.alpha.tga"
    fairyPerfilada.SpriteIndex = 125
    fairyPerfilada.Pos = V2D(400, 303) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    fairyPerfilada.Visible = 0
    fairyPerfilada.Rotate = 0
    fairyPerfilada.Size = fairyPerfilada.BmpDim
    local fairyShadow = WorldMap.NewQuestItem("FairyShadow", "Sprite")
    fairyShadow.IsMultiSprite = 1
    fairyShadow.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    fairyShadow.Pos = V3D(350, 303) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    fairyShadow.Angle = 0
    fairyShadow.SpriteIndex = 47
    fairyShadow.Scale = V2D(3.8, 0.54)
    fairyShadow.Visible = 0
    local fairyDescText = WorldMap.NewQuestItem("FairyDescText", "Text")
    fairyDescText.Align = "Right"
    fairyDescText.Font = "HoratioLittle"
    fairyDescText.Color = Menu.ItemColor
    fairyDescText.Text = langstr("Summary_UpgradeFairy")
    fairyDescText.Pos = V2D(665, 303) + EndOfLevelOffset + V2D(0, QuestOffsetY)
    fairyDescText.UseAlpha = 1
    fairyDescText.Visible = 0
    WorldMap.UpdateUpgradeIcon(levelName)
    QuestOffsetY = QuestOffsetY + 25
  else
    QuestOffsetY = QuestOffsetY - 35
  end
  if Game.Get("isDemo") == 0 then
    if not WorldMap.QuestEndOfLevel or Trials.isTrial then
      local trialState = 0
      if WorldMap.QuestEndOfLevel then
        trialState = tonumber(Game.Get("gvTrialNewRecord"))
      elseif Trials.Status[levelName] ~= nil then
        trialState = 1
      end
      local adorno4 = WorldMap.NewQuestItem("Adorno4", "Sprite")
      adorno4.IsMultiSprite = 1
      adorno4.HighRes = 1
      adorno4.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
      adorno4.SpriteIndex = 9
      adorno4.Pos = V2D(343.63, 315.2) + EndOfLevelOffset + V2D(0, QuestOffsetY)
      adorno4.Visible = 1
      adorno4.Rotate = 0
      adorno4.Size = adorno4.BmpDim
      local trialText = WorldMap.NewQuestItem("TrialText", "Text")
      trialText.Align = "Left"
      trialText.Font = "HoratioLittle"
      trialText.Color = Menu.ItemColor
      trialText.Pos = V2D(370, 311) + EndOfLevelOffset + V2D(0, QuestOffsetY)
      trialText.Text = langstr("Summary_Trial")
      trialText.UseAlpha = 1
      trialText.Visible = 1
      for j = 1, WorldMap.MaxLinesTrials do
        local itm = WorldMap.NewQuestItem("TRIAL_I_TextoTrial_" .. j, "Text")
        itm.Font = WorldMap.TrialFont
        itm.Pos = V2D(390, 336 + (j - 1) * 18) + EndOfLevelOffset + V2D(0, QuestOffsetY)
        itm.Align = "Left"
        itm.Color = Menu.ItemColor
        itm.UseAlpha = 1
        itm.Visible = 1
      end
      local trialLines = WorldMap.UpdateTrialText(levelName)
      local trialCompleteText
      if trialState >= 1 then
        trialCompleteText = WorldMap.NewQuestItem("TrialCompleteText", "Text")
        trialCompleteText.Align = "Left"
        trialCompleteText.Font = "HoratioLittle"
        trialCompleteText.Color = Menu.ItemColor
        trialCompleteText.Pos = V2D(390, 321 + (trialLines + 1) * 18) + EndOfLevelOffset + V2D(0, QuestOffsetY)
        trialCompleteText.Text = langstr("Summary_Trial_Complete")
        trialCompleteText.UseAlpha = 1
        if trialState == 2 and WorldMap.QuestEndOfLevel then
          trialCompleteText.OnRender = "TravelBook.OnRenderHighlight"
        end
        if Trials.Status[levelName] ~= nil then
          trialCompleteText.Visible = 1
        else
          trialCompleteText.Visible = 0
        end
      end
      WorldMap.SaveQuestItemsOrigAlpha()
      if trialState >= 1 then
        WorldMap.LastScrollableQuestItem = trialCompleteText
        WorldMap.ScrollDownLimit = WorldMap.ScrollUpLimit + 175
        if trialState == 2 and WorldMap.QuestEndOfLevel then
          Scorer.PlayScorerSound("ComboBought", 1, 1)
          WorldMap.AddOffsetPosToQuestsItems(V2D(0, -(WorldMap.LastScrollableQuestItem.Pos.y - WorldMap.ScrollDownLimit)))
        end
      else
        local lastTrialLine = Scorer.GetItem(0, "TRIAL_I_TextoTrial_" .. trialLines)
        WorldMap.LastScrollableQuestItem = lastTrialLine
        WorldMap.ScrollDownLimit = WorldMap.ScrollUpLimit + 175
      end
    else
      local adornoExtraContent = WorldMap.NewQuestItem("AdornoExtraContent", "Sprite")
      adornoExtraContent.IsMultiSprite = 1
      adornoExtraContent.HighRes = 1
      adornoExtraContent.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
      adornoExtraContent.SpriteIndex = 9
      adornoExtraContent.Pos = V2D(343.63, 320) + EndOfLevelOffset + V2D(0, QuestOffsetY)
      adornoExtraContent.Visible = 1
      adornoExtraContent.Rotate = 0
      adornoExtraContent.Size = adornoExtraContent.BmpDim
      local extraText = WorldMap.NewQuestItem("ExtraText", "Text")
      extraText.Align = "Left"
      extraText.Font = "HoratioLittle"
      extraText.Color = Menu.ItemColor
      extraText.Pos = V2D(370, 315) + EndOfLevelOffset + V2D(0, QuestOffsetY)
      if SaveGame.CheckIfMapIsDLC(init.level_name) and WorldMap.isDLCComplete(1) and Artwork.GetDLCNumberFromMap(init.level_name) == 1 then
        extraText.Text = langstr("Summary_DLC_ExtraContentLastMap")
      else
        extraText.Text = langstr("Summary_ExtraContentLastChapterLevel_Title")
      end
      extraText.UseAlpha = 1
      extraText.Visible = 1
      local cad = langstr("Summary_ExtraContentLastChapterLevel")
      local texto = Scorer.SplitString(cad, "HoratioTiny", 245)
      local numLines = #texto
      for j = 1, numLines do
        local extraContentText = WorldMap.NewQuestItem("ExtraContentArtworkText" .. j, "Text")
        extraContentText.Align = "Left"
        extraContentText.Font = "HoratioTiny"
        extraContentText.Color = Menu.ItemColor
        extraContentText.Pos = V2D(390, 340 + (j - 1) * 18) + EndOfLevelOffset + V2D(0, QuestOffsetY)
        extraContentText.UseAlpha = 1
        extraContentText.Text = texto[j]
        extraContentText.Visible = 1
      end
      if not WorldMap.ArtworkGiven then
        local prevUnlockedArtwork = Artwork.RecalculateUnlockedArtwork()
        local levelArtworkData = Artwork.ArtworksByLevel[init.level_name]
        if levelArtworkData then
          Game.Set("gvUnlockedArtwork", prevUnlockedArtwork + levelArtworkData[1])
          local artworkToUnlock = Artwork.numArtworkToUnlock(init.level_name)
          Artwork.BuyFreeArtwork(init.level_name, artworkToUnlock)
        else
          Game.ConsoleError("\n")
        end
        if init.level_name == "12_3_final_fight" then
          prevUnlockedArtwork = Artwork.RecalculateUnlockedArtwork()
          Game.Set("gvUnlockedArtwork", prevUnlockedArtwork + Artwork.ArtworksByLevel.epilogue[1])
          Artwork.BuyFreeArtwork("epilogue", prevUnlockedArtwork + 1)
        end
        if SaveGame.CheckIfMapIsDLC(init.level_name) and WorldMap.isDLCComplete(1) and Artwork.GetDLCNumberFromMap(init.level_name) == 1 then
          Artwork.UnlockAllCaricatures()
        end
        WorldMap.ArtworkGiven = true
      end
      local chessMiniGameAvailable = init.level_name == "6_3_castle_hall"
      local veryHardModeAvailable = init.level_name == "12_3_final_fight"
      if chessMiniGameAvailable then
        local adornoExtraContent2 = WorldMap.NewQuestItem("AdornoExtraContent2", "Sprite")
        adornoExtraContent2.IsMultiSprite = 1
        adornoExtraContent2.HighRes = 1
        adornoExtraContent2.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
        adornoExtraContent2.SpriteIndex = 9
        adornoExtraContent2.Pos = V2D(343.63, 380 + (numLines - 1) * 20) + EndOfLevelOffset + V2D(0, QuestOffsetY)
        adornoExtraContent2.Visible = 1
        adornoExtraContent2.Rotate = 0
        adornoExtraContent2.Size = adornoExtraContent2.BmpDim
        local extraText2 = WorldMap.NewQuestItem("ExtraText2", "Text")
        extraText2.Align = "Left"
        extraText2.Font = "HoratioLittle"
        extraText2.Color = Menu.ItemColor
        extraText2.Pos = V2D(370, 375 + (numLines - 1) * 20) + EndOfLevelOffset + V2D(0, QuestOffsetY)
        extraText2.Text = langstr("Summary_ExtraContentCastle_Title")
        extraText2.UseAlpha = 1
        extraText2.Visible = 1
        cad = langstr("Summary_ExtraContentCastle")
        texto = Scorer.SplitString(cad, "HoratioTiny", 245)
        for j = 1, #texto do
          local extraContentText2 = WorldMap.NewQuestItem("ExtraContentChessGameText" .. j, "Text")
          extraContentText2.Align = "Left"
          extraContentText2.Font = "HoratioTiny"
          extraContentText2.Color = Menu.ItemColor
          extraContentText2.Pos = V2D(390, 400 + (numLines - 1) * 18 + (j - 1) * 18) + EndOfLevelOffset + V2D(0, QuestOffsetY)
          extraContentText2.UseAlpha = 1
          extraContentText2.Text = texto[j]
          extraContentText2.Visible = 1
        end
      elseif veryHardModeAvailable then
        local adornoExtraContent2 = WorldMap.NewQuestItem("AdornoExtraContent2", "Sprite")
        adornoExtraContent2.IsMultiSprite = 1
        adornoExtraContent2.HighRes = 1
        adornoExtraContent2.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
        adornoExtraContent2.SpriteIndex = 9
        adornoExtraContent2.Pos = V2D(343.63, 380 + (numLines - 1) * 20) + EndOfLevelOffset + V2D(0, QuestOffsetY)
        adornoExtraContent2.Visible = 1
        adornoExtraContent2.Rotate = 0
        adornoExtraContent2.Size = adornoExtraContent2.BmpDim
        local extraText2 = WorldMap.NewQuestItem("ExtraText2", "Text")
        extraText2.Align = "Left"
        extraText2.Font = "HoratioLittle"
        extraText2.Color = Menu.ItemColor
        extraText2.Pos = V2D(370, 375 + (numLines - 1) * 20) + EndOfLevelOffset + V2D(0, QuestOffsetY)
        extraText2.Text = langstr("Summary_ExtraContentVeryHard")
        extraText2.UseAlpha = 1
        extraText2.Visible = 1
      end
      WorldMap.LastScrollableQuestItem = WorldMap.QuestItemTable[#WorldMap.QuestItemTable - numLines]
      WorldMap.ScrollDownLimit = WorldMap.ScrollUpLimit + 150
      WorldMap.SaveQuestItemsOrigAlpha()
    end
  end
  if not WorldMap.QuestEndOfLevel and not SaveGame.isLevelTrial(levelName) then
    Menu.ShowAdornmentCross(2)
    WorldMap.ChangeQuestsItemsProperty("Visible", 0)
  end
  if WorldMap.QuestEndOfLevel then
    Menu.ShowNavigationHUD(nil, "Menu_Nav_Select")
  end
end

function WorldMap.OnQuestItemRendered(id, name, diffTime)
  if not WorldMap.QuestEndOfLevel then
    return
  end
  local adornoUp = Scorer.GetItem(0, "AdornoUp")
  local adornoDown = Scorer.GetItem(0, "AdornoDown")
  local canScrollUp = WorldMap.FirstScrollableQuestItem and WorldMap.FirstScrollableQuestItem.Pos.y < WorldMap.ScrollUpLimit
  local canScrollDown = WorldMap.LastScrollableQuestItem and WorldMap.LastScrollableQuestItem.Pos.y > WorldMap.ScrollDownLimit
  local value = Input.GetInputState("Menu", "ItemUp", 0)
  if 0 < value then
    if canScrollUp then
      adornoUp.uData.GlowRemainTime = 0.5
      WorldMap.AddOffsetPosToQuestsItems(V2D(0, 100 * value * diffTime))
    end
  else
    value = Input.GetInputState("Menu", "ItemDown", 0)
    if 0 < value and canScrollDown then
      adornoDown.uData.GlowRemainTime = 0.5
      WorldMap.AddOffsetPosToQuestsItems(V2D(0, -100 * value * diffTime))
    end
  end
  if canScrollUp then
    adornoUp.Visible = 1
  else
    TravelBook.ClearScrollArrow(adornoUp)
  end
  if canScrollDown then
    adornoDown.Visible = 1
  else
    TravelBook.ClearScrollArrow(adornoDown)
  end
  if adornoUp.uData.GlowRemainTime ~= nil then
    TravelBook.OnRenderScrollArrow(0, "AdornoUp", diffTime)
  end
  if adornoDown.uData.GlowRemainTime ~= nil then
    TravelBook.OnRenderScrollArrow(0, "AdornoDown", diffTime)
  end
end

function WorldMap.SaveExtrasOnDiskAndExit(id, control)
  if Game.Get("SaveGameActive") == 1 and not Game.SoftCompareConfig() then
    Game.SoftSaveConfig()
    Scorer.SetOnCancel(0, "")
    Menu.TryToSaveConfig(id, control)
  else
    Game.SoftSaveConfig()
    Menu.MainMenu(id, control)
  end
end

function WorldMap.CheckExtras(id, control)
  local bSaveExtras = false
  if Cheats.AnyCheatActive() then
    if Game.Get("SaveGameActive") == 1 then
      Menu.YesNoMenu(langstr("Menu_Warning_Question"), "WorldMap.ActivateCheats", "WorldMap.DeActivateCheats", langstr("Menu_Warning_Cheats"))
      Scorer.SetOnCancel(id, "WorldMap.Extras")
    else
      Cheats.Initialize()
      WorldMap.ActivateCheats(id, control)
    end
  else
    Cheats.Initialize()
    bSaveExtras = true
  end
  Artwork.Clean()
  DisplayCombat.Initialize()
  TravelBook.ScrollList:Delete()
  if bSaveExtras then
    WorldMap.SaveExtrasOnDiskAndExit(id, control)
  end
end

function WorldMap.ActivateCheats(id, control)
  Game.Set("AchievementsBlocked", true)
  Game.Set("SaveGameActive", 0)
  Game.SoftSaveConfig()
  Menu.MainMenu(id, control)
  Cheats.Initialize()
end

function WorldMap.DeActivateCheats(id, control)
  Cheats.DeActivateAll()
  Game.SoftSaveConfig()
  Menu.MainMenu(id, control)
end

function WorldMap.CheckCheatsOn()
  WorldMap.CheatsOn = Game.Get("AnyCheat")
end

WorldMap.SnakeDefinitionTable = {
  {
    Game.GetLangStr("Menu_Snake_Visor"),
    "gvGabrielSnakeVisor"
  },
  {
    Game.GetLangStr("Menu_Snake_Bandana"),
    "gvGabrielSnakeBandana"
  }
}

function WorldMap.SnakeMenuChange(id, controlName)
end

function WorldMap.SetupSnakeMenuRightMenuItems(rightMenuItems)
end

function WorldMap.GetSnakeBookMenuTable()
  local ret = {}
  for i, data in pairs(WorldMap.SnakeDefinitionTable) do
    local text = data[1]
    if Game.Get(data[2]) then
      text = text .. ": " .. Game.GetLangStr("Menu_Cheats_On")
    else
      text = text .. ": " .. Game.GetLangStr("Menu_Cheats_Off")
    end
    table.insert(ret, text)
  end
  return ret
end

WorldMap.GVEndOfDLCName = "GhostBulletKills"

function WorldMap.isDLCComplete(i)
  return _GetBinArray(Game.Get(WorldMap.GVEndOfDLCName))[i]
end

function WorldMap.SetDLCComplete(i, v)
  local a = _GetBinArray(Game.Get(WorldMap.GVEndOfDLCName))
  a[i] = v
  Game.Set(WorldMap.GVEndOfDLCName, _BinArrayToValue(a))
end

function WorldMap.Extras(id, control)
  Menu.TurnPage(true)
  WorldMap.Extras2(id, control)
end

function WorldMap.BackToExtras(id, control)
  Menu.TurnPage(false)
  WorldMap.Extras2(id, control)
end

function WorldMap.Extras2(id, control)
  Sound.LoadSound("Sounds/Generic/Menu/menuclik.wav")
  Game.Set("OnAcceptSound", "menuclik")
  Game.Set("OnAcceptSoundVol", 0.5)
  Menu.BookMenus.Cheats = Cheats.GetBookMenuTable()
  Menu.BookMenus.Display_Combat = DisplayCombat.GetBookMenuTable()
  local submenus = {
    "Display_Combat",
    nil,
    nil,
    nil,
    nil
  }
  WorldMap.CheckCheatsOn()
  if Artwork.RecalculateUnlockedArtwork() > 0 then
    Menu.BookMenus.Extras[2] = langstr("Menu_Artwork")
    submenus[2] = "Artwork"
  end
  local levelList = Game.Split(Game.Get("VisitedLevels"), ",")
  if 29 <= #levelList then
    Menu.BookMenus.Extras[3] = langstr("Menu_Chess")
    submenus[3] = "ChessAll"
  end
  if Game.Get("gvGameFinished") then
    Menu.BookMenus.Extras[4] = langstr("Menu_Credits")
    submenus[4] = "Credits"
  end
  local snakeMenuActive = false
  if Game.Get("gvKonamiCode") == true then
    Menu.BookMenus.Extras[5] = langstr("Menu_Cheats")
    submenus[5] = "Cheats"
  end
  TravelBook.ScrollList:Delete()
  Menu.BookMenu(langstr("Menu_Extras"), "Extras", submenus, "WorldMap.CheckExtras", 145, nil, 145)
  Menu.GetLeftMenuItems()[2].OnAccept = "Artwork.ArtworkMenu"
  Menu.GetLeftMenuItems()[2].OnGainFocus = ""
  Menu.GetLeftMenuItems()[4].OnAccept = "Menu.CreditsButtonPushed"
  Menu.GetLeftMenuItems()[4].OnRender = "Menu.OnRenderCredits"
  Menu.GetLeftMenuItems()[5].OnAccept = "WorldMap.GoToCheatsMenu"
  for i = 2, 5 do
    local item = Menu.GetLeftMenuItems()[i]
    if item.Text == Menu.InterrogationsText then
      item.OnAccept = "Menu.DoNothing"
    end
  end
  local rightMenuItems = Menu.GetRightMenuItems(1)
  DisplayCombat.SetupRightMenuItems(rightMenuItems)
  rightMenu = Menu.GetRightMenuItems(3)
  for i = 1, #rightMenu do
    rightMenu[i].onAccept = "WorldMap.PlayChess"
    rightMenu[i].Y = rightMenu[i].Y + 10
  end
  if Game.Get("gvKonamiCode") == true then
    rightMenuItems = Menu.GetRightMenuItems(5)
    Cheats.SetupRightMenuItems(rightMenuItems)
  end
  Menu.IsComingBack = true
  Menu.CreateUnderlineAdornment("SettingsLeftPageLower", V2D(0.25, 0.9), true)
  Game.SetLoadingScreen("2D/Loading/PapelLibro-D.dds")
end

function WorldMap.IsCheatLocked(itm)
  return itm.uData.Definition.Locked and Game.Get(itm.uData.Definition[2])
end

function WorldMap.GoToCheatsMenu(id, control)
  Menu.GoToRightPage(id, control)
  local n = 5
  for i = 1, n do
    local itm = Scorer.GetItem(0, "Itm" .. i .. "R5")
    if WorldMap.IsCheatLocked(itm) then
      itm.Alpha = 128
      local iprev = (i + n - 2) % n + 1
      while WorldMap.IsCheatLocked(Scorer.GetItem(0, "Itm" .. iprev .. "R5")) and iprev ~= i do
        iprev = (iprev + n - 2) % n + 1
      end
      local inext = i % n + 1
      while WorldMap.IsCheatLocked(Scorer.GetItem(0, "Itm" .. inext .. "R5")) and inext ~= i do
        inext = inext % n + 1
      end
      Scorer.GetItem(0, "Itm" .. iprev .. "R5").Down = "Itm" .. inext .. "R5"
      Scorer.GetItem(0, "Itm" .. inext .. "R5").Up = "Itm" .. iprev .. "R5"
    end
  end
end

function WorldMap.ChessMenu(id, control)
  Menu.TurnPage()
  Menu.BookMenu(langstr("Menu_Chess"), "Chess", {
    "ChessDifficulty",
    ""
  }, "WorldMap.BackToExtras", nil, nil, 170)
  Menu.GetLeftMenuItems()[2].OnAccept = "WorldMap.PlayChess"
  local rightMenuItems = Menu.GetRightMenuItems(1)
  for _, rightMenuItem in pairs(rightMenuItems) do
    rightMenuItem.OnAccept = "WorldMap.PlayChess"
  end
  Menu.IsComingBack = true
  Menu.CreateUnderlineAdornment("SettingsLeftPageLower", V2D(0.25, 0.9), true)
end

function WorldMap.PlayChess(id, control)
  if "Itm4R3" == control then
    print("two players")
    Game.Set("ExtraGameNumPlayers", 2)
  elseif "Itm1R3" == control then
    Game.Set("ExtraGameNumPlayers", 1)
    Game.Set("ExtraGameSkillLevel", 3)
    print("easy")
  elseif "Itm2R3" == control then
    Game.Set("ExtraGameNumPlayers", 1)
    Game.Set("ExtraGameSkillLevel", 2)
    print("medium")
  elseif "Itm3R3" == control then
    Game.Set("ExtraGameNumPlayers", 1)
    Game.Set("ExtraGameSkillLevel", 1)
    print("hard")
  end
  if not Menu.WorldMapMenuMode then
    Menu.YesNoMenu(langstr("Menu_LoadLevel_Question"), "WorldMap.LoadChessMap", "WorldMap.BackToExtras", langstr("Menu_Warning_Exit_Level"), nil, nil, langstr("Menu_Level_6_3_game_room"))
  else
    WorldMap.LoadChessMap()
  end
end

function WorldMap.LoadChessMap()
  local newLevelName = init.BuildLevelName("6_3_game_room")
  Game.SetSaveVar(newLevelName .. ".Spawn.Point", "0")
  Game.SetSaveVar("LevelName", "6_3_game_room")
  Game.SoftSaveAutoSave()
  SaveGame.LoadLevel("6_3_game_room")
end

function WorldMap.CreateTravelBookOption()
  local itemName = "TravelBookOption"
  local travelBookOption = Scorer.GetItem(0, itemName)
  if nil == travelBookOption then
    travelBookOption = Scorer.NewItem(0, itemName, "Text")
    local itemProperties = {
      Font = Menu.LittleFont,
      Text = langstr("TBook_GoToSkillsPage"),
      Align = "Center",
      Size = V2D(1, 1),
      Color = Menu.ItemColor,
      OnAccept = "WorldMap.GoToTravelBook",
      Pos = V2D(128, 440)
    }
    for property, value in pairs(itemProperties) do
      travelBookOption[property] = value
    end
  end
  Menu.LinkLR(travelBookOption, Scorer.GetItem(0, "BackToMenu"))
  TravelBook.GetItem("AvailablePointsFrameText").Font = Menu.LittleFont
  TravelBook.GetItem("ScrollListTitle").Font = Menu.LittleFont
  TravelBook.ApplyPropertyToSet("ActionsRightMenu", "Alpha", 255)
  TravelBook.ApplyPropertyToSet("ActionsRightMenu", "Pos", V2D(128, 360))
  TravelBook.GetItem("AvailablePointsFrameText").Text = tostring(Game.Get("gvExperience"))
  TravelBook.GetItem("AvailablePointsFrameText").y = 380
  TravelBook.AppendCurrencyIconToText(TravelBook.GetItem("AvailablePointsFrameText"), "AvailablePointsFrameCurrencyIcon", Menu.LittleFont, V2D(1, -11))
  if Experience.CheapComboPrice() <= Game.Get("gvExperience") then
    Scorer.SetDefault(0, itemName)
    local comboAvailableText = Scorer.NewItem(0, "ComboAvailableTextItem", "Text")
    local itemProperties = {
      Font = Menu.SmallFont,
      Text = langstr("TBook_BuyableCombos"),
      Align = "Center",
      Size = V2D(1, 1),
      Color = Menu.ItemColor,
      Pos = V2D(128, 320)
    }
    for property, value in pairs(itemProperties) do
      comboAvailableText[property] = value
    end
    if SaveGame.OnMenuNextLevel then
      Game.GetMenu().OnEndPageTurn = "WorldMap.HighlightComboAvailableItem"
      
      function WorldMap.HighlightComboAvailableItem()
        Menu.FadeInNavigationHUD()
        comboAvailableText.OnRender = "TravelBook.OnRenderHighlight"
        comboAvailableText.uData.LoopHighlight = true
        Scorer.PlayScorerSound("ComboBought", TravelBook.SoundVolumeComboBought, 1)
        Game.GetMenu().OnEndPageTurn = "Menu.FadeInNavigationHUD"
      end
    else
      comboAvailableText.OnRender = "TravelBook.OnRenderHighlight"
      comboAvailableText.uData.LoopHighlight = true
      Scorer.PlayScorerSound("ComboBought", TravelBook.SoundVolumeComboBought, 1)
    end
  end
end

function WorldMap.GoToTravelBook()
  Menu.TurnPage()
  TravelBook.CloseBookKey = "Menu_Nav_CloseSkills"
  WorldMap.StandardTravelBookClose = TravelBook.Close
  TravelBook.Close = WorldMap.CloseTravelBook
  WorldMap.StandardMapTabNavigation = TravelBook.MapTabNavigation
  
  function TravelBook.MapTabNavigation()
  end
  
  WorldMap.StandardFadeNavigationFuncs = {
    TravelBook.FadeInNavigationHUD,
    TravelBook.FadeOutNavigationHUD
  }
  TravelBook.FadeInNavigationHUD = Menu.FadeInNavigationHUD
  TravelBook.FadeOutNavigationHUD = Menu.FadeOutNavigationHUD
  TravelBook.RedirectToTab = nil
  TravelBook.ShowFirstPage()
  TravelBook.SelectTab(1)
end

function WorldMap.CloseTravelBook()
  Menu.SetBookCallbacks()
  local actionVideo = Scorer.GetItem(0, "ActionVideo")
  if actionVideo then
    actionVideo.Play = ""
  end
  TravelBook.Close = WorldMap.StandardTravelBookClose
  TravelBook.MapTabNavigation = WorldMap.StandardMapTabNavigation
  TravelBook.FadeInNavigationHUD = WorldMap.StandardFadeNavigationFuncs[1]
  TravelBook.FadeOutNavigationHUD = WorldMap.StandardFadeNavigationFuncs[2]
  Game.SetLoadingScreen(TravelBook.DefaultBackground)
  TravelBook.ScrollList:Delete()
  SaveGame.OnMenuNextLevel = true
  SaveGame.EndOfLevelMenu(SaveGame.NextLevelName)
  Menu.TurnPage(false)
  TravelBook.CloseBookKey = "Menu_Nav_CloseBook"
end

WorldMap.LevelsFingerCount = {
  {
    "dlc_1_1_castle_hall",
    1
  },
  {
    "dlc_1_2_dungeon",
    3
  },
  {
    "dlc_1_3_towermech",
    2
  }
}
WorldMap.GVFingersName = "UnblockedPictures"

function WorldMap.CreateFingerData()
  local totalFingers = 0
  for _, levelFingerInfo in ipairs(WorldMap.LevelsFingerCount) do
    totalFingers = totalFingers + levelFingerInfo[2]
  end
  local gvCollectedFingers = Game.GVar(WorldMap.GVFingersName)
  gvCollectedFingers.Default = string.rep(".", totalFingers)
  local currentLength = gvCollectedFingers.Value:len()
  if totalFingers > currentLength then
    gvCollectedFingers.Value = gvCollectedFingers.Value .. string.rep(".", totalFingers - currentLength)
  end
end

function WorldMap.GetTotalFingers()
  local totalFingers = 0
  for _, levelFingerInfo in ipairs(WorldMap.LevelsFingerCount) do
    totalFingers = totalFingers + levelFingerInfo[2]
  end
  return totalFingers
end

function WorldMap.GetLevelFingersCount(levelName)
  local totalFingers = 0
  local previousFingerCount, totalLevelFingers
  for _, levelFingerInfo in ipairs(WorldMap.LevelsFingerCount) do
    if levelFingerInfo[1] == levelName then
      previousFingerCount, totalLevelFingers = totalFingers, levelFingerInfo[2]
    else
      totalFingers = totalFingers + levelFingerInfo[2]
    end
  end
  if previousFingerCount then
    local collectedFingers = 0
    for i = 1, totalLevelFingers do
      if WorldMap.IsFingerCollected(previousFingerCount + i) then
        collectedFingers = collectedFingers + 1
      end
    end
    return collectedFingers, totalLevelFingers
  end
  return 0, 0
end

function WorldMap.GetTotalFingersCollected()
  local gvFingersValue = Game.Get(WorldMap.GVFingersName)
  local currentLength = gvFingersValue:len()
  local numCollected = 0
  for i = 1, currentLength do
    if WorldMap.IsFingerCollected(i) then
      numCollected = numCollected + 1
    end
  end
  return numCollected
end

function WorldMap.IsFingerCollected(fingerIndex)
  return "x" == Game.Get(WorldMap.GVFingersName):sub(fingerIndex, fingerIndex)
end

function WorldMap.SetFingerCollected(fingerIndex)
  local gvFingersValue = Game.Get(WorldMap.GVFingersName)
  Game.Set(WorldMap.GVFingersName, gvFingersValue:sub(1, fingerIndex - 1) .. "x" .. gvFingersValue:sub(fingerIndex + 1))
  WorldMap.FingerScorerShow()
  WorldMap.FingerAchievementCheck()
end

function WorldMap.FingerScorerShow()
  Scorer.SetMsgText(Game.GetLangStr("DLC_RelicFinger_Collection"), Game.GetTime() + 5)
  Game.Set("ShowFinger", true)
end

function WorldMap.FingerAchievementCheck()
  if SaveGame.DLC_fingersAchievementDone == false then
    local numCollected = WorldMap.GetTotalFingersCollected()
    if numCollected >= SaveGame.DLC_fingersAchievementValue then
      Game.WriteAchievement(SaveGame.DLC_fingersAchievementIndex)
      SaveGame.DLC_fingersAchievementDone = true
      print("DLC ALL FINGERS ACHIEVEMENT UNLOCKED")
    end
  end
end
