Experience.EPoints = nil

function Experience.main()
  Game.PreloadLibrary("Scripts/Chars/Combat/CombatScrolls.lua", "", false)
  if init then
    Experience.gvCombatScrolls = SaveGame.AddToGvar("gvCombatScrolls")
    Experience.EPoints = SaveGame.AddToGvar("gvExperience")
    Experience.EPoints.Value = tonumber(Experience.EPoints.Value)
    Game.CreateSaveVar(init.LevelName .. ".LevelExperience", "0")
    Experience.CombatScrollActive = {}
    for i in pairs(Experience.CombatScrolls) do
      Experience.CombatScrollActive[i] = false
    end
    local a = Game.Split(Experience.gvCombatScrolls.Value, ",")
    for i = 1, #a do
      Experience.CombatScrollActive[a[i]] = true
    end
  end
end

function Experience.Preload()
  local gv
  gv = Game.CreateGvar("gvExperience", "int", "Experience points.")
  gv.Value = 0
  gv.Default = gv.Value
  gv = Game.CreateGvar("gvTotalExperience", "int", "Total Experience Points")
  gv.Value = 0
  gv.Default = gv.Value
  gv = Game.CreateGvar("gvCombatScrolls", "string", "Combat Scrolls buyed.")
  gv.Value = ""
  gv.Default = gv.Value
  gv = Game.CreateGvar(Experience.PuzzleStatusGVarName, "string", "Puzzle status ('puzzleId=hintSolutionStatus/pendingAward')")
  gv.Value = Experience.PuzzleStatusGVarInitialValue()
  gv.Default = gv.Value
end

function Experience.OnDead(ent)
  local points = ent.oActCtrl.oActClass.uData.ExperiencePoints
  if points and not ent.uData.DontGiveExp then
    Experience.AddPoints(points, ent)
  end
end

function Experience.AddPoints(points, ent)
  if player and player.ActCtrl == "Laura" then
    return
  end
  local si = Scorer.GetItem(0, "LifeBar")
  if si then
    local p
    if ent then
      p = ent.Pos
    else
      p = player.Pos
    end
    si:AddEnemyExperience(points, p.x, p.y, p.z)
  end
  Experience.EPoints.Value = Experience.EPoints.Value + points
  local totalPoints = Game.Get("gvTotalExperience")
  totalPoints = totalPoints + points
  Game.Set("gvTotalExperience", totalPoints)
  local levelPoints = Game.GetSaveVar(init.LevelName .. ".LevelExperience")
  levelPoints = levelPoints + points
  Game.SetSaveVar(init.LevelName .. ".LevelExperience", tostring(levelPoints))
  if MapTutorials and MapTutorials.FirstComboBuyNotification and Experience.EPoints.Value >= 25 and not Trials.isTrial then
    MapTutorials.FirstComboBuyNotification = false
    MapTutorials.FinishExperienceTutorial()
    local worldTimer = Game.GetWorldTimer()
    if worldTimer.uData.Modiff and worldTimer.uData.Modiff.bValidBaseType then
      worldTimer.uData.Modiff.bDelete = true
    end
    player.uData.ComboBuffer = {}
    if not TravelBook.ActionsManager:IsBought(TravelBook.ActionsManager.FirstBuyAction) then
      Weapons.IgnoreTimeBlending = true
      Camera.ActionSetFocus("Belmont", "0.5000,s,500,75,NOTHING,0,0.00", 0)
      MapTutorials.SlowTime(0.25, 0.5)
    end
    Game.Set("DoingStopChat", 4)
    Input.SelectiveEntry_BlockAllEntries()
    addSF(1, "", "MapTutorials.RestoreTimeSpeed")
    TravelBook.ActionsManager:NewAction(TravelBook.ActionsManager.FirstBuyAction, false)
    MapTutorials.NotifyBlinkingWellDone()
    AISpec.StopAllAttackers()
  end
  Experience.UnlockExperienceAchievements()
end

Experience.CombatConditions = {}

function Experience.CombatConditions._grip()
  return Belmont.ChainModelInUse.Value >= 2
end

function Experience.CombatConditions._wings()
  return player.oActCtrl.oActClass.uData.bWings
end

function Experience.CombatConditions._gauntlet()
  return player.uData.bGauntlet
end

function Experience.CombatConditions._light()
  return LightPower.PowerOn.Value and not Experience.IsLightMagicDisabled
end

function Experience.CombatConditions._dark()
  return DarkPower.PowerOn.Value
end

function Experience.CombatConditions._boots()
  return player.oActCtrl.oActClass.SprintOnDoubleTap ~= 0
end

function Experience.CombatConditions._syncBlock()
  return TravelBook.ActionsManager:IsUnlocked("CounterstrikeD")
end

function Experience.CombatConditions._vial()
  return Belmont.VialActive.Value
end

function Experience.CombatConditions._crystal()
  local svCrystalDisabled = Game.GetSaveVar("svTBookCrystalDisabled")
  return Belmont.CrystalActive.Value and (nil == svCrystalDisabled or "0" == svCrystalDisabled)
end

function Experience.CombatConditions._fairy()
  local svFairiesDisabled = Game.GetSaveVar("svTBookFairiesDisabled")
  return Belmont.FairiesActive.Value and (nil == svFairiesDisabled or "0" == svFairiesDisabled)
end

function Experience.CombatConditions._dagger()
  return Belmont.DaggersActive.Value
end

Experience.CombatScrolls = {}

function Experience.isCombatScroll(Name)
  return Experience.CombatScrollActive[Name]
end

function Experience.RefreshCombatScrollStatus()
  local r
  for i in pairs(Experience.CombatScrolls) do
    if Experience.CombatScrollActive[i] then
      if r == nil then
        r = i
      else
        r = r .. "," .. i
      end
    end
  end
  if r == nil then
    r = ""
  end
  Experience.gvCombatScrolls.Value = r
end

function Experience.SetAllCombatScrollsStatus(status)
  for i in pairs(Experience.CombatScrollActive) do
    Experience.CombatScrollActive[i] = status
  end
  Experience.RefreshCombatScrollStatus()
end

function Experience.isCombatScrollAvailable(combo)
  if nil == Experience.CombatScrolls[combo] then
    return false
  end
  local cond = Experience.CombatScrolls[combo].Conditions
  for i = 1, #cond do
    if string.sub(cond[i], 1, 1) == "_" then
      if not Experience.CombatConditions[cond[i]]() then
        return false
      end
    elseif not Experience.CombatScrollActive[cond[i]] then
      return false
    end
  end
  return true
end

function Experience.DebugBuyCombos(id, control)
  local combos = {}
  for i, o in pairs(Experience.CombatScrolls) do
    combos[#combos + 1] = {
      o.Price,
      i
    }
  end
  table.sort(combos, function(a, b)
    if a[1] == b[1] then
      return a[2] < b[2]
    else
      return a[1] < b[1]
    end
  end)
  local options = {}
  for i = 1, #combos do
    options[i] = {
      combos[i][2],
      "Experience.DebugBuyThisCombo"
    }
  end
  Menu.VerticalMenu("Debug Buy Combos", options, "Menu.MainMenu", "Message", 25, 15, true, false, false, true)
  Scorer.GetItem(0, "DoExit").Pos = V2D(128, 35)
  for i = 1, #options do
    local itm = Scorer.GetItem(0, "Itm" .. i)
    itm.Pos = V2D(0, itm.Pos.y)
    local mit = Scorer.NewItem(0, "Price" .. i, "Text", 1)
    if Experience.CombatScrollActive[options[i][1]] then
      mit.Text = "Sell " .. Experience.CombatScrolls[options[i][1]].Price
      mit.Color = Color(0, 128, 0, 255)
    elseif not Experience.isCombatScrollAvailable(options[i][1]) then
      mit.Text = "LOCK"
      mit.Color = Color(128, 0, 0, 255)
    else
      mit.Text = tostring(Experience.CombatScrolls[options[i][1]].Price)
      if Experience.EPoints.Value >= Experience.CombatScrolls[options[i][1]].Price then
        mit.Color = Menu.ItemColor
      else
        mit.Color = Color(128, 0, 0, 255)
      end
    end
    mit.Pos = V2D(250, itm.Pos.y)
    mit.Font = "Message"
    mit.Align = "Right"
  end
  local mit = Scorer.NewItem(0, "Experience", "Text", 1)
  mit.Text = "Experience : " .. Experience.EPoints.Value
  mit.Pos = V2D(375, 35)
  mit.Font = "MessageBig"
  mit.Color = Menu.ItemColor
end

function Experience.DebugBuyThisCombo(id, control)
  local combo = Scorer.GetItem(id, control).Text
  if Experience.CombatScrollActive[combo] then
    Experience.EPoints.Value = Experience.EPoints.Value + Experience.CombatScrolls[combo].Price
    Experience.CombatScrollActive[combo] = false
    Experience.RefreshCombatScrollStatus()
    Experience.DebugBuyCombos(id, control)
    Scorer.SetDefault(id, control)
  elseif Experience.isCombatScrollAvailable(combo) and Experience.CombatScrolls[combo].Price <= Experience.EPoints.Value then
    Experience.EPoints.Value = Experience.EPoints.Value - Experience.CombatScrolls[combo].Price
    Experience.CombatScrollActive[combo] = true
    Experience.RefreshCombatScrollStatus()
    Experience.DebugBuyCombos(id, control)
    Scorer.SetDefault(id, control)
  end
end

function Experience.CheapComboPrice()
  local Res = 999999999
  for i, o in pairs(Experience.CombatScrolls) do
    if not Experience.CombatScrollActive[i] and Experience.isCombatScrollAvailable(i) then
      if Res then
        if Res > o.Price then
          Res = o.Price
        end
      else
        Res = o.Price
      end
    end
  end
  return Res
end

function Experience.CanBuyCombo(comboName)
  return Experience.CombatScrolls[comboName] and Experience.isCombatScrollAvailable(comboName) and Experience.CombatScrolls[comboName].Price <= Experience.EPoints.Value
end

function Experience.GetComboPrice(comboName)
  if Experience.CombatScrolls[comboName] then
    return Experience.CombatScrolls[comboName].Price
  end
  return 0
end

function Experience.BuyCombo(comboName)
  if Experience.isCombatScrollAvailable(comboName) and Experience.CombatScrolls[comboName].Price <= Experience.EPoints.Value then
    Experience.EPoints.Value = Experience.EPoints.Value - Experience.CombatScrolls[comboName].Price
    Experience.CombatScrollActive[comboName] = true
    Experience.RefreshCombatScrollStatus()
    Experience.UnlockComboAchievements()
  end
end

function Experience.UnlockExperienceAchievements()
  local totalPoints = Game.Get("gvTotalExperience")
  for i = 1, 3 do
    if totalPoints >= SaveGame.experienceAchievementValue[i] then
      Game.WriteAchievement(SaveGame.experienceAchievementIndex[i])
      print("CHAPTER EXPERIENCE" .. i .. "ACHIEVEMENT UNLOCKED")
    end
  end
end

function Experience.UnlockComboAchievements()
  local numCombos = 0
  for i in pairs(Experience.CombatScrollActive) do
    if Experience.CombatScrollActive[i] == true then
      numCombos = numCombos + 1
    end
  end
  for i = 1, 3 do
    if numCombos >= SaveGame.combosAchievementValue[i] then
      Game.WriteAchievement(SaveGame.combosAchievementIndex[i])
      print("CHAPTER COMBOS" .. i .. "ACHIEVEMENT UNLOCKED")
    end
  end
end

Experience.PuzzleStatusGVarName = "gvPuzzleStatus"

function Experience.SetPuzzleCompleted(hintScrollIndex)
  local hintScrollId = Experience.GetMapPuzzleId(hintScrollIndex)
  Experience.CheckPuzzlePresent(hintScrollId)
  local gvPuzzleStatus = Game.Get(Experience.PuzzleStatusGVarName) or ""
  local solutionHintStatus, puzzleAward = Experience.GetMapPuzzleStatus(hintScrollIndex)
  if "Locked" == solutionHintStatus then
    gvPuzzleStatus = gvPuzzleStatus:gsub(hintScrollId .. "=.-,", hintScrollId .. "=Unlocked/" .. puzzleAward .. ",")
    Game.Set(Experience.PuzzleStatusGVarName, gvPuzzleStatus)
    if 0 < puzzleAward then
      Experience.AddPoints(puzzleAward)
      return puzzleAward
    end
  end
end

function Experience.SetPuzzleSolutionUnlocked(hintScrollIndex)
  local hintScrollId = Experience.GetMapPuzzleId(hintScrollIndex)
  Experience.CheckPuzzlePresent(hintScrollId)
  local gvPuzzleStatus = Game.Get(Experience.PuzzleStatusGVarName) or ""
  gvPuzzleStatus = gvPuzzleStatus:gsub(hintScrollId .. "=.-,", hintScrollId .. "=Unlocked/0,")
  Game.Set(Experience.PuzzleStatusGVarName, gvPuzzleStatus)
  Game.SoftSaveConfig()
  SaveGame.HardSaveGame()
end

function Experience.GetMapPuzzleId(hintScrollIndex)
  return init.LevelName:lower():match("level%.(.+)") .. "_" .. hintScrollIndex
end

function Experience.GetMapPuzzleStatus(hintScrollIndex)
  local hintScrollId = Experience.GetMapPuzzleId(hintScrollIndex)
  Experience.CheckPuzzlePresent(hintScrollId)
  local gvPuzzleStatus = Game.Get(Experience.PuzzleStatusGVarName) or ""
  local hintSolutionStatus, award = gvPuzzleStatus:match(hintScrollId .. "=(.-)/(.-),")
  return hintSolutionStatus, tonumber(award)
end

local mapPuzzleAwards = {
  {
    "1_7_pans_temple_3",
    200
  },
  {
    "2_8_stone_idol_mausoleum_2",
    200
  },
  {
    "3_0_the_gauntlet_1",
    300
  },
  {
    "5_4_abbey_catacombs_1",
    500
  },
  {
    "5_4_abbey_catacombs_a_1",
    500
  },
  {
    "6_1_courtyard_a_1",
    500
  },
  {
    "6_3_castle_hall_1",
    600
  },
  {
    "6_3_castle_hall_2",
    1500
  },
  {
    "6_3_game_room_1",
    0,
    true
  },
  {
    "6_5_refectory_3",
    700
  },
  {
    "7_1_balcony_1",
    800
  },
  {
    "7_3_chromatic_observatory_1",
    900
  },
  {
    "7_3_chromatic_observatory_a_1",
    900
  },
  {
    "8_1_tower_base_1",
    1000
  },
  {
    "8_3_top_corridor_1",
    1000
  },
  {
    "9_4_1_the_music_box_1",
    1100
  },
  {
    "9_3_woes_moor_1",
    1200
  },
  {
    "10_3_cementery_2",
    1300
  },
  {
    "11_0_the_necromancer_abyss_1",
    1500
  },
  {
    "11_0_the_necromancer_abyss_2",
    1500
  },
  {
    "dlc_1_1_castle_hall_1",
    1500
  },
  {
    "dlc_1_3_towermech_1",
    1500
  },
  {
    "dlc_1_3_towermech_2",
    1000
  },
  {
    "dlc_1_3_towermech_3",
    1250
  }
}

function Experience.ResetPuzzle(hintScrollIndex)
  local hintScrollId = Experience.GetMapPuzzleId(hintScrollIndex)
  Experience.CheckPuzzlePresent(hintScrollId)
  local gvPuzzleStatus = Game.Get(Experience.PuzzleStatusGVarName) or ""
  local puzzlePrice = 0
  local initialStatus = "Locked"
  for i, mapPuzzleAwardInfo in ipairs(mapPuzzleAwards) do
    if mapPuzzleAwardInfo[1] == hintScrollId then
      if mapPuzzleAwardInfo[3] then
        initialStatus = "Unlocked"
      end
      gvPuzzleStatus = gvPuzzleStatus:gsub(hintScrollId .. "=.-,", hintScrollId .. "=" .. initialStatus .. "/" .. mapPuzzleAwardInfo[2] .. ",")
      Game.Set(Experience.PuzzleStatusGVarName, gvPuzzleStatus)
    end
  end
end

function Experience.PuzzleStatusGVarInitialValue()
  local returnValue = ""
  for i, mapPuzzleAwardInfo in ipairs(mapPuzzleAwards) do
    local initialStatus = "Locked"
    if mapPuzzleAwardInfo[3] then
      initialStatus = "Unlocked"
    end
    returnValue = returnValue .. mapPuzzleAwardInfo[1] .. "=" .. initialStatus .. "/" .. mapPuzzleAwardInfo[2] .. ","
  end
  return returnValue
end

function Experience.CheckPuzzlePresent(puzzleId)
  for _, mapPuzzleAwardInfo in ipairs(mapPuzzleAwards) do
    if mapPuzzleAwardInfo[1] == puzzleId then
      local gvPuzzleStatusValue = Game.Get(Experience.PuzzleStatusGVarName) or ""
      if nil == gvPuzzleStatusValue:find(puzzleId) then
        local initialStatus = "Locked"
        if mapPuzzleAwardInfo[3] then
          initialStatus = "Unlocked"
        end
        Game.Set(Experience.PuzzleStatusGVarName, gvPuzzleStatusValue .. mapPuzzleAwardInfo[1] .. "=" .. initialStatus .. "/" .. mapPuzzleAwardInfo[2] .. ",")
      end
      return
    end
  end
end
