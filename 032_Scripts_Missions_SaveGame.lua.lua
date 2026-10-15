SaveGame.OldMethod = false
SaveGame.nPics = 48
SaveGame.nFirstPic = 48
SaveGame.GameChapters = {
  {
    Name = "1._Prologue",
    "1_1_besieged_village",
    "1_4_haunting_path",
    "1_5_swamp",
    "1_7_pans_temple",
    "1_9_oblivion_lake"
  },
  {
    Name = "2._Labyrinth_1",
    "2_2_enchanted_forest",
    "2_3_underground_cave",
    "2_4_labyrinth_entrance",
    "2_6_underground_dungeons",
    "2_7_labyrinth_ruins_ii",
    "2_8_dark_dungeon",
    "2_8_stone_idol_mausoleum",
    "2_9_stone_idol_temple",
    "2_10_black_knight"
  },
  {
    Name = "3._Labyrinth_2",
    "3_0_the_gauntlet",
    "3_3_the_dark_lord"
  },
  {
    Name = "4._Mountain_Fortress",
    "4_1_fortress",
    "4_2_fortress_witch"
  },
  {
    Name = "5._Isolated_Village",
    "5_1_dark_forest",
    "5_2_isolated_village",
    "5_4_abbey_catacombs",
    "5_4_abbey_catacombs_a",
    "5_8_abbey_tower",
    "5_2_isolated_village_a",
    "5_11_sewers"
  },
  {
    Name = "6._Vampire_Castle_1",
    "6_1_courtyard",
    "6_1_courtyard_a",
    "6_3_castle_hall",
    "6_5_refectory"
  },
  {
    Name = "7._Vampire_Castle_2",
    "7_1_balcony",
    "7_3_chromatic_observatory",
    "7_3_chromatic_observatory_a"
  },
  {
    Name = "8._Vampire_Castle_3",
    "8_1_tower_base",
    "8_2_the_tower",
    "8_3_top_corridor",
    "8_4_the_throne_room"
  },
  {
    Name = "9._Babayaga_Cottage",
    "9_1_bones_forest",
    "9_3_woes_moor",
    "9_4_1_the_music_box"
  },
  {
    Name = "10._Necromancer_Abyss_1",
    "10_1_marsh_of_silence",
    "10_2_misty_moor",
    "10_3_cementery",
    "10_5_crematory_oven"
  },
  {
    Name = "11._Necromancer_Abyss_2",
    "11_0_the_necromancer_abyss",
    "11_8_dracolich"
  },
  {
    Name = "12._Necromancer_Abyss_3",
    "12_3_final_fight"
  },
  {
    Name = "13._DLC_1",
    "dlc_1_1_castle_hall",
    "dlc_1_2_dungeon",
    "dlc_1_3_towermech"
  },
  {
    Name = "14._DLC_2",
    "dlc_2_1_otherworld",
    "dlc_2_2_otherworld"
  }
}
SaveGame.ExtrasMaps = {
  "6_3_Game_Room"
}
SaveGame.GameMaps = {}
for i = 1, #SaveGame.GameChapters do
  local a = SaveGame.GameChapters[i]
  if a.Name ~= "Extras" then
    SaveGame.GameChapters[a.Name] = SaveGame.GameChapters[i]
    for j = 1, #a do
      SaveGame.GameMaps[#SaveGame.GameMaps + 1] = a[j]
    end
  end
end
SaveGame.ChapterAchievement = {
  ["1_9_oblivion_lake"] = 1,
  ["2_10_black_knight"] = 2,
  ["3_3_the_dark_lord"] = 3,
  ["4_2_fortress_witch"] = 4,
  ["5_11_sewers"] = 5,
  ["6_5_refectory"] = 6,
  ["7_3_chromatic_observatory_a"] = 7,
  ["8_4_the_throne_room"] = 8,
  ["9_4_1_the_music_box"] = 9,
  ["10_5_crematory_oven"] = 10,
  ["11_8_dracolich"] = 11,
  ["12_3_final_fight"] = 12,
  dlc_1_3_towermech = 43,
  dlc_2_2_otherworld = 44
}
SaveGame.ChapterTrialAchievement = {
  [1] = 13,
  [2] = 14,
  [3] = 15,
  [4] = 16,
  [5] = 17,
  [6] = 18,
  [7] = 19,
  [8] = 20,
  [9] = 21,
  [10] = 22,
  [11] = 23,
  [12] = 24,
  [13] = 48,
  [14] = 53
}
SaveGame.allTrialsAchievementIndex = 25
SaveGame.gemsAchievementValue = {
  30,
  30,
  30,
  90
}
SaveGame.gemsAchievementIndex = {
  26,
  27,
  28,
  29
}
SaveGame.upgradesAchievementValue = 11
SaveGame.upgradesAchievementIndex = 41
SaveGame.allArtworkBoughtValue = 310
SaveGame.allArtworkBoughtIndex = 30
SaveGame.gameEndSkillsAchievementIndex = {
  31,
  32,
  33,
  34
}
SaveGame.combosAchievementValue = {
  1,
  15,
  31
}
SaveGame.combosAchievementIndex = {
  35,
  36,
  37
}
SaveGame.experienceAchievementValue = {
  1000,
  20000,
  100000
}
SaveGame.experienceAchievementIndex = {
  38,
  39,
  40
}
SaveGame.DLC_fingersAchievementIndex = 47
SaveGame.DLC_fingersAchievementValue = 6
SaveGame.DLC_fingersAchievementDone = false

function SaveGame.SetLoadingMsg(levelname)
  print("SaveGame.SetLoadingMsg  " .. levelname)
  local lo_msg_str = string.lower(levelname)
  if string.find(Game.Get("VisitedLevels"), "9_1_bones_forest") then
    Game.Set("LoadingScorerBarType", 5)
  elseif string.find(Game.Get("VisitedLevels"), "5_4_abbey_catacombs") then
    Game.Set("LoadingScorerBarType", 4)
  else
    local cm = Game.Split(Game.Get("gvPlayerStatus"), ",")[20]
    if cm then
      Game.Set("LoadingScorerBarType", tonumber(cm))
    end
  end
  if lo_msg_str == "menu" then
    Game.Set("LoadingScreenTitle", "")
    Game.Set("LoadingScreenMessage", "")
  else
    Game.Set("LoadingScreenTitle", "")
    Game.Set("LoadingScreenMessage", "Menu_Loading_" .. lo_msg_str)
    Game.Set("LoadingScorerSkipRender", false)
  end
end

if init then
  SaveGame.SetLoadingMsg(string.sub(init.LevelFile, 8))
end

function SaveGame.main()
  Game.SetSaveVar("LevelName", string.sub(init.LevelFile, 8))
  Game.CreateSaveVar(init.LevelName .. ".Spawn.Point", "0")
  SaveGame.CheckTrackingVars()
end

function SaveGame.Preload()
  Game.CreateGvar("gvLastLevelPlayed", "string", "Last status of the player.")
  Game.CreateGvar("gvPlayerStatus", "string", "Last status of the player.")
  local gvar = Game.CreateGvar("gvSkillMapStatus", "string", "Status of the skill completed of the game.")
  gvar.Value = string.sub(string.rep(",0", #SaveGame.GameMaps), 2)
  gvar.Default = gvar.Value
  local gameFinishedGVar = Game.CreateGvar("gvGameFinished", "bool", "'true' if the game has been finished.")
  gameFinishedGVar.Value = false
  gameFinishedGVar.Default = false
  local unlockedArtworkGVar = Game.CreateGvar("gvUnlockedArtwork", "int", "Number of artworks unlocked")
  unlockedArtworkGVar.Value = 0
  unlockedArtworkGVar.Default = 0
  local buyedArtworkGVar = Game.CreateGvar("gvBuyedArtwork", "string", "Buyed artwork list (separated by ',')")
  buyedArtworkGVar.Value = ""
  buyedArtworkGVar.Default = ""
end

SaveGame.CanAutoSaveWaypoint = true

function SaveGame.AutoSaveWaypoint(idWaypoint, FileName, ForceSave)
  if (Team.GetSavedSpawnPlayerPoint() ~= idWaypoint or ForceSave == true) and SaveGame.CanAutoSaveWaypoint then
    local allGamePerc = SaveGame.CalculateAllGameCompletePerc()
    Game.Set("GameCompletionPerc", allGamePerc)
    SaveGame.SaveWaypoint(idWaypoint, FileName)
    Team.Reequip()
    track_tag("Waypoint " .. idWaypoint)
    if Game.Get("SaveGameActive") ~= 0 then
      SaveGame.CanAutoSaveWaypoint = false
      Game.Set("AfteHardSaveGame", "SaveGame.AfteHardSaveGame")
      Game.HardSaveGameBackground()
    else
      SaveGame.ShowCheckpointMessage()
    end
  end
end

function SaveGame.ShowCheckpointMessage()
  if Game.Get("DebugOptionActivated") and not Game.IsPlayingWithoutHUD() then
    local message = Scorer.GetItem(0, "DebugCheckpointMessage")
    if nil == message then
      delSF("DeleteDebugCheckpointMessage")
      message = Scorer.NewItem(0, "DebugCheckpointMessage", "Text")
      message.Font = "MessageBig"
      message.Align = "Center"
      message.Effect = "Darkness"
      message.Pos = V2D(320, 40)
      message.Text = langstr("Hint_Checkpoint")
      message.FadeOut = 3
      addSF(3, "DeleteDebugCheckpointMessage", "SaveGame.DeleteCheckpointMessage")
    end
  end
end

function SaveGame.DeleteCheckpointMessage()
  local message = Scorer.GetItem(0, "DebugCheckpointMessage")
  if message then
    message.DelMe = 1
  end
end

function SaveGame.AfteHardSaveGame(res)
  if res ~= 0 then
    Menu.InitMenuSys()
    Menu.StartNewMenu()
    SaveGame.HardSaveGameError(res)
  end
  SaveGame.CanAutoSaveWaypoint = true
end

function SaveGame.GetPlayerStatusString()
  local s = ""
  if player ~= nil then
    s = tostring(math.max(math.floor(100 * player.Life / player.oActCtrl.oActClass.Life + 0.5), 1))
    s = s .. "," .. tostring(clamp(0, 100, math.floor(100 * DarkPower.Power.Value / DarkPower.PowerMax.Value + 0.5)))
    s = s .. "," .. tostring(clamp(0, 100, math.floor(100 * LightPower.Power.Value / LightPower.PowerMax.Value + 0.5)))
    s = s .. "," .. tostring(WeaponsVial.Vials.Value)
    s = s .. "," .. tostring(WeaponsFairy.Fairies.Value)
    s = s .. "," .. tostring(WeaponsCrystal.CrystalPieces.Value)
    s = s .. "," .. tostring(math.floor(WeaponsCrystal.Energy.Value + 0.5))
    s = s .. "," .. tostring(WeaponsDagger.Daggers.Value)
    s = s .. "," .. tostring(LightPower.PowerOn.Value)
    s = s .. "," .. tostring(DarkPower.PowerOn.Value)
    s = s .. "," .. tostring(player.oActCtrl.oActClass.SprintOnDoubleTap)
    s = s .. "," .. tostring(DarkPower.DarkDashActive)
    s = s .. "," .. tostring(Belmont.MultipleDaggers)
    s = s .. "," .. tostring(player.oActCtrl.oActClass.uData.bWings)
    s = s .. "," .. tostring(player.uData.bGauntlet)
    s = s .. "," .. tostring(Belmont.FairiesActive.Value)
    s = s .. "," .. tostring(Belmont.CrystalActive.Value)
    s = s .. "," .. tostring(Belmont.VialActive.Value)
    s = s .. "," .. tostring(Belmont.DaggersActive.Value)
    s = s .. "," .. tostring(Belmont.ChainModelInUse.Value)
    s = s .. "," .. tostring(Belmont.RideTutorialPassed.Value)
  end
  return s
end

function SaveGame.SetPlayerStatusString(s)
  if s ~= "" then
    a = Game.Split(s, ",")
    player.Life = math.max(tonumber(a[1]), SkillSettings[init.GameSkill.Value].MinLife) * (player.oActCtrl.oActClass.Life / 100)
    DarkPower.Power.Value = tonumber(a[2]) * (DarkPower.PowerMax.Value / 100)
    LightPower.Power.Value = tonumber(a[3]) * (LightPower.PowerMax.Value / 100)
    WeaponsVial.Vials.Value = tonumber(a[4])
    WeaponsFairy.Fairies.Value = tonumber(a[5])
    WeaponsCrystal.CrystalPieces.Value = tonumber(a[6])
    WeaponsCrystal.Energy.Value = tonumber(a[7])
    WeaponsDagger.Daggers.Value = tonumber(a[8])
    LightPower.PowerOn.Value = a[9] == "true"
    DarkPower.PowerOn.Value = a[10] == "true"
    player.oActCtrl.oActClass.SprintOnDoubleTap = tonumber(a[11])
    DarkPower.DarkDashActive = a[12] == "true"
    Belmont.MultipleDaggers = a[13] == "true"
    player.oActCtrl.oActClass.uData.bWings = a[14] == "true"
    player.uData.bGauntlet = a[15] == "true"
    Belmont.FairiesActive.Value = a[16] == "true"
    Belmont.CrystalActive.Value = a[17] == "true"
    Belmont.VialActive.Value = a[18] == "true"
    Belmont.DaggersActive.Value = a[19] == "true"
    Belmont.ChainModelInUse.Value = tonumber(a[20])
    Belmont.RideTutorialPassed.Value = tonumber(a[21])
  end
end

function SaveGame.InitPlayerStatus()
  local s = Game.GetSaveVar(init.LevelName .. ".PlayerStatus")
  if s == nil then
    s = Game.Get("gvPlayerStatus")
  end
  if s ~= nil then
    SaveGame.SetPlayerStatusString(s)
  end
end

function SaveGame.SaveWaypoint(idWaypoint, FileName)
  FileName = defparam(FileName, "Autosave")
  Game.ConsoleError("Saving " .. FileName .. "...\n")
  Game.SetSaveVar(init.LevelName .. ".Spawn.Point", "" .. idWaypoint)
  local playerStatus = SaveGame.GetPlayerStatusString()
  Game.SetSaveVar(init.LevelName .. ".PlayerStatus", playerStatus)
  SaveGame.SaveLocalEntityValues()
  LevelProperties.SetSaveVars()
  if SaveGame.OldMethod then
    Game.SaveGameVars("Save/" .. FileName .. ".sav", FileName)
  else
    Game.SoftSaveAutoSave()
  end
end

function SaveGame.bCanLoadWaypoint()
  return Game.Get("SaveSlotUsed") == 1
end

function SaveGame.isLevelTrial(LevelName)
  local levelList = Game.Split(Game.Get("VisitedLevels"), ",")
  local levelname = string.lower(LevelName)
  if string.sub(levelname, 1, 4) == "dlc_" then
    if WorldMap.isDLCComplete(tonumber(string.sub(levelname, 5, 5))) then
      return true
    end
    local idlc = string.sub(levelname, 1, 5)
    local dlclist = {}
    for i = 1, #levelList do
      if idlc == string.lower(string.sub(levelList[i], 1, 5)) then
        dlclist[1 + #dlclist] = levelList[i]
      end
    end
    if 0 < #dlclist then
      if LevelName == "dlc_2_2_otherworld" then
        local a = Game.Split(Game.Get("gvSkillMapStatus"), ",")
        if 0 < tonumber(a[#SaveGame.GameMaps]) then
          return true
        end
      else
        return string.lower(dlclist[#dlclist]) ~= levelname
      end
    else
      return false
    end
  else
    return string.lower(levelList[#levelList]) ~= levelname or Game.Get("gvGameFinished")
  end
end

SaveGame.LoadWaypointBack = false

function SaveGame.LoadWaypoint()
  SaveGameSlot = defparam(SaveGameSlot, Game.Get("SaveGameSlot"))
  if SaveGame.bCanLoadWaypoint() then
    Game.DelSaveVars("")
    Game.SoftLoadAutoSave()
    Game.Set("LoadSaveVars", true)
    local LevelName = Game.GetSaveVar("LevelName")
    if SaveGame.isLevelTrial(LevelName) then
      Game.Set("SaveGameSlot", 1)
    else
      Game.Set("SaveGameSlot", 0)
    end
    SaveGame.LoadLevel(LevelName)
  end
end

function SaveGame.SaveLocalEntityValue(EntityName, Values)
  local e = Game.GetEntity(EntityName)
  for i = 1, #Values do
    local Value = Values[i]
    local nam = init.LevelName .. ".EntityValue." .. EntityName .. "." .. Value
    if e ~= nil then
      local v = e[Value]
      if v ~= nil and Game.CreateSaveVar(nam, "") == 1 then
        local svo = Game.GetSaveVarObj(nam)
        svo.Value = v
      end
    end
  end
end

function SaveGame.GetSaveValue(EntityName, Value)
  local savevarname = init.LevelName .. ".EntityValue." .. EntityName .. "." .. Value
  local rez = Game.GetSaveVar(savevarname)
  Game.DelSaveVars(savevarname, false)
  return rez
end

function SaveGame.InitLocalEntityValues()
  if MapInit ~= nil and MapInit.CreateSaveVars ~= nil then
    MapInit.CreateSaveVars()
  end
  local svo = Game.GetFirstVarObj()
  local fltnam = init.LevelName .. ".EntityValue."
  while svo ~= nil do
    if string.sub(svo.Name, 1, #fltnam) == fltnam then
      local darta = Game.Split(string.sub(svo.Name, #fltnam + 1), ".")
      local e = Game.GetEntity(darta[1])
      if e then
        e[darta[2]] = svo.Value
      else
        Game.ConsoleError([[
Error in SaveGame.InitLocalEntityValues:
  ']] .. darta[1] .. "->" .. darta[2] .. "' Entity not found\n")
      end
    end
    svo = svo.oNext
  end
end

function SaveGame.SaveLocalEntityValues()
  local svo = Game.GetFirstVarObj()
  local fltnam = init.LevelName .. ".EntityValue."
  while svo ~= nil do
    if string.sub(svo.Name, 1, #fltnam) == fltnam then
      local darta = Game.Split(string.sub(svo.Name, #fltnam + 1), ".")
      local e = Game.GetEntity(darta[1])
      if e then
        svo.Value = e[darta[2]]
      else
        Game.ConsoleError([[
Error in SaveGame.SaveLocalEntityValues:
  ']] .. darta[1] .. "' Entity not found\n")
      end
    end
    svo = svo.oNext
  end
end

function SaveGame.SwapDiscEvent()
  SaveGame.LoadLevel(SaveGame.SwapDiscLevelName)
end

function SaveGame.SwapDiscLoop(LevelName)
  local newdisc = 3 - Game.Get("XBCurrentDisc")
  Game.SwapDisc(newdisc, false, "SaveGame.SwapDiscEvent")
end

function SaveGame.SwapDiscLevel(LevelName)
  if Game.Get("Platform") == "X360" and Game.Get("XBCurrentDisc") ~= 0 then
    SaveGame.SwapDiscLevelName = LevelName
    Game.Set("AfterDrawCallback", "SaveGame.SwapDiscLoop")
  end
end

SaveGame.bForceLoadLevel = false

function SaveGame.ExitProfile()
  if Game.Get("AfterDrawCallback") ~= "" then
    return
  end
  Game.Set("PlayVideo", " ")
  Game.Set("PlayVideoPause", 0)
  Game.Set("VideoRender", 0)
  Game.Set("AfterDrawCallback", "SaveGame.ContinueExitProfile")
end

function SaveGame.ContinueExitProfile()
  Input.SetActionSet("Null")
  Game.SetTimeSpeed(0)
  Game.Set("TimePlaying", 0)
  Game.GetMenu():DoFadeIn("SaveGame.LoadMenuExitProfile")
  Game.Set("LoadingScreenTitle", "")
  Game.Set("LoadingScreenMessage", "")
  Game.Set("NumLoadLevels", 0)
  Game.Set("SigninChange", 0)
  Game.Set("SaveSlotUsed", 0)
end

function SaveGame.RestoreDemoInitialState()
  Game.ResetGVarsToDefault()
  Game.SoftSaveAutoSave()
  Game.HardSaveGame()
end

function SaveGame.LoadMenuExitProfile()
  print("SaveGame.LoadMenuExitProfile")
  if Game.Get("isDemo") ~= 0 then
    local aspect = Game.GVar("PhysicalAspectRatio")
    aspect.Default = aspect.Value
    local gamma = Game.GVar("RT_CopyRamp")
    gamma.Default = gamma.Value
    Game.Set("ScorerGenericMsg", "")
    Game.Set("ScorerGenericMsgSmall", "")
    Game.Set("LoadingScorerSkipRender", true)
    Game.Set("R_DrawFrame", 0)
    Scorer.Clear(0)
    Game.GetMenu():DoLoopClosed()
    Game.GetMenu():DoHide()
    Input.SetActionSet("Null")
    Game.Set("PlayVideo", " ")
    Game.Set("PlayVideoPause", 0)
    Game.Set("VideoRender", 0)
    if Menu.ExitFromDemo then
      Game.Exit()
      return
    end
    SaveGame.RestoreDemoInitialState()
  elseif init.level_name == "menu" then
    Game.GetMenu():DoLoopClosed()
  else
    Game.GetMenu():TurnPage()
  end
  Game.LoadLevel("levels/menu")
end

function SaveGame.LoadLevel(LevelName)
  if not Game.FileExist("Levels/" .. LevelName .. "/Map/Map3D.SM3") and not Game.FileExist("Levels/" .. LevelName .. "/Map/Map3D.M3D") then
    Game.ConsoleError("Map not found:" .. LevelName .. "\n")
    Menu.InitMenuSys()
    Menu.StartNewMenu()
    Menu.DrawBackMenu()
    Scorer.SetDefault(0, "")
    SaveGame.SwapDiscLevel(LevelName)
    return
  end
  if Input.GetActionSet() == "Menu" then
    if SaveGame.LoadWaypointBack then
      Game.GetMenu():DoPrev()
    else
      Game.GetMenu():DoNext()
    end
  end
  local nl2l = string.lower(LevelName)
  if nl2l ~= "menu" and Game.Get("InitLuaLine") == "" and Game.Get("toolmode") == 0 then
    Game.Set("ProgressBarWait", 864000)
  end
  EffectsFrame.MenuOut()
  if init.level_name == "menu" then
    Game.Set("TimePlaying", 0)
  end
  Game.LoadLevel("Levels/" .. nl2l)
  SaveGame.SetLoadingMsg(nl2l)
end

SaveGame.FadeOutTimeLevelTime = 1

function SaveGame.CheckVisitedLevels(LevelName, addTo)
  SaveGameSlot = defparam(addTo, false)
  local sLevelList = Game.Get("VisitedLevels")
  local LevelList = Game.Split(sLevelList, ",")
  LevelName = string.lower(LevelName)
  if sLevelList == "" then
    LevelList = {}
  end
  local NewLevel = true
  for i = 1, #LevelList do
    if LevelList[i] == LevelName then
      NewLevel = false
    end
  end
  if addTo and NewLevel then
    if #LevelList == 0 then
      Game.Set("VisitedLevels", LevelName)
    else
      Game.Set("VisitedLevels", sLevelList .. "," .. LevelName)
    end
    Game.ConsoleError([[
New Level Added!!!
']] .. LevelName .. "'\n")
  end
  Game.SoftSaveConfig()
  return NewLevel
end

function SaveGame.ClearSaveMarker()
  Game.Set("SaveSlotUsed", 0)
end

function SaveGame.NewLevel(LevelName)
  Game.Log("SaveGame.NewLevel", 1)
  SaveGame.NewLevelNow(LevelName)
end

function SaveGame.NewLevelNow(LevelName)
  Game.Log("SaveGame.NewLevelNow  " .. LevelName .. "\n", 1)
  Sound.SetMusicVolume(0, SaveGame.FadeOutTimeLevelTime)
  if Input.GetActionSet() ~= "Menu" and "level.menu" ~= init.LevelName and Game.Get("InitLuaLine") == "" then
    if Game.Get("isDemo") ~= 0 and init.level_name ~= "1_1_besieged_village" then
      Input.SetActionSet("Menu")
      SaveGame.RestoreDemoInitialState()
      if Game.Get("IsSteamDemo") ~= 0 and Game.Get("IsSteamFullGameAvailable") ~= 0 then
        Menu.ShowGameInSteam()
      end
      SaveGame.DemoGotoMenu()
    else
      SaveGame.EndOfLevelMenu(LevelName)
      Game.Set("S_PauseMusicVolume", 1)
      Sound.SetMusic("music/Stage_Clear.ogg", 1)
      Sound.SetMusicLoopCount(0)
      Sound.PauseMusic(false)
      Scorer.AddScheduledFunc(0, 9, "", "Menu.PlayMenuMusic", 1)
    end
  else
    SaveGame.__NewLevelNow__(LevelName)
  end
end

function SaveGame.SaveLevelCompleted(levelName)
  SaveGame.WriteToGvar()
  Game.Set("gvPlayerStatus", SaveGame.GetPlayerStatusString())
  SaveGame.SaveTrackingVars()
  SaveGame.CheckVisitedLevels(levelName, true)
  local allGamePerc = SaveGame.CalculateAllGameCompletePerc()
  Game.Set("GameCompletionPerc", allGamePerc)
  Game.DelSaveVars("")
  Game.SoftSaveAutoSave()
  SaveGame.BackupAllGVars()
  SaveGame.ClearSaveMarker()
  Game.SoftSaveConfig()
end

function SaveGame.SaveTrackingVars()
  CollectableItems.SavelGenericScrollData()
  local SaveSkill = tonumber(Game.GetSaveVar(init.LevelName .. ".SkillLevel")) + 1
  local a = Game.Split(Game.Get("gvSkillMapStatus"), ",")
  local s = ""
  for i = 1, #SaveGame.GameMaps do
    if a[i] == nil or a[i] == "" then
      a[i] = "0"
    end
    if init.level_name == SaveGame.GameMaps[i] and SaveSkill > tonumber(a[i]) then
      s = s .. "," .. tostring(SaveSkill)
    else
      s = s .. "," .. a[i]
    end
  end
  Game.Set("gvSkillMapStatus", string.sub(s, 2))
end

function SaveGame.CheckTrackingVars()
  local svName = init.LevelName .. ".SkillLevel"
  local NewSkill = Game.Get("GameSkill")
  Game.CreateSaveVar(svName, tostring(NewSkill))
  local SaveSkill = tonumber(Game.GetSaveVar(svName))
  if NewSkill < SaveSkill then
    Game.SetSaveVar(svName, tostring(NewSkill))
  end
end

function SaveGame.EndOfLevelMenu(LevelName)
  Game.Log("SaveGame.EndOfLevelMenu  " .. LevelName .. "\n", 1)
  local ibm, inl
  if DebugTrack then
    DebugTrack.SaveHistory("End")
  end
  
  function Menu.ShowScorer()
  end
  
  if SaveGame.OnMenuNextLevel then
    Input.SetActionSet("Menu")
    Menu.TurnPage(true)
    Game.SetTimeSpeed(0)
  else
    if Scene and not Scene.EndOfLevelScene then
      Game.GetMenu():NeedRender()
    end
    Menu.InitMenuSys()
  end
  Menu.StartNewMenu()
  local level = string.sub(init.LevelName, 7)
  SaveGame.UnlockAchievements(level)
  if Game.Get("SaveGameSlot") == 0 then
    Game.Set("gvLastLevelPlayed", string.lower(LevelName))
  else
    Game.Set("gvLastLevelPlayed", init.level_name)
  end
  if Game.Get("isDemo") ~= 0 then
    Menu.PlayMenuMusic()
    SaveGame.OnContinueDemoQuest()
  else
    Menu.EndOfLevelMenu(level)
    ibm = Scorer.NewItem(0, "BackToMenu", "Text", 1)
    ibm.Text = langstr("Menu_Continue_Quest")
    ibm.OnAccept = "SaveGame.OnContinueQuest"
    ibm.Pos = V2D(510, 440)
    ibm.Font = "HoratioLittle"
    ibm.CentralText = 1
    ibm.Color = Menu.ItemColor
    ibm.uData.NextLevel = LevelName
    Scorer.SetDefault(0, "BackToMenu")
    WorldMap.CreateTravelBookOption()
    SaveGame.NextLevelName = LevelName
    Menu.DrawBackMenuFirstScreen()
  end
end

function SaveGame.NextLevelOption(id, control)
  SaveGame.__NewLevelNow__(Scorer.GetItem(id, control).uData.NextLevel)
end

function SaveGame.OnContinueQuest(id, control)
  WorldMap.QuestEndOfLevel = false
  SaveGame.SaveLevelCompleted(SaveGame.NextLevelName)
  SaveGame.CheckLevelDificultyAchievementUnlocked()
  SaveGame.BackToMenuOption(id, control)
end

SaveGame.CurrentDemoSplashID = 0

function SaveGame.OnContinueDemoQuest()
  if init.level_name then
    Game.Log("SaveGame.OnContinueDemoQuest " .. init.level_name .. "\n", 1)
  else
    Game.Log("SaveGame.OnContinueDemoQuest \n", 1)
  end
  if init.level_name == "1_1_besieged_village" then
    SaveGame.CurrentDemoSplashID = 0
  else
    Game.ScreenSaverEnable(false)
    SaveGame.CurrentDemoSplashID = 1
  end
  SaveGame.LaunchDemoSplashFirstPage()
end

function SaveGame.LaunchDemoSplashHighlightSound()
  Scorer.PlayScorerSound("ComboBought", TravelBook.SoundVolumeComboBought, 1)
end

function SaveGame.LaunchDemoSplashFirstPage()
  print("SaveGame.LaunchDemoSplashFirstPage " .. init.level_name)
  if init.level_name == "1_1_besieged_village" then
    SaveGame.CurrentDemoSplashID = 0
    if SaveGame.OnMenuNextLevel then
      SaveGame.LaunchDemoNextLevel()
    else
      Menu.OnMenuCanBeUsedCallback = SaveGame.LaunchDemoNextLevel
      Menu.DrawBackMenuFirstScreen()
    end
    return
  end
  if SaveGame.OnMenuNextLevel then
    print("SaveGame.\t")
    SaveGame.LaunchDemoSplashScreen()
  else
    print("not SaveGame.OnMenuNextLevel ")
    Menu.OnMenuCanBeUsedCallback = SaveGame.LaunchDemoSplashScreen
    Menu.DrawBackMenuFirstScreen()
  end
end

function SaveGame.LaunchDemoSplashScreen()
  print("SaveGame.LaunchDemoSplashScreen " .. SaveGame.CurrentDemoSplashID)
  local splashID = SaveGame.CurrentDemoSplashID
  Menu.StartNewMenu()
  if 1 < splashID or not SaveGame.OnMenuNextLevel then
    Menu.TurnPage(true)
  end
  Game.SetLoadingScreen("2D/Loading/Demo/DemoSplash" .. splashID .. ".dds")
  if Scorer.GetItem(0, "FuckingPaused") then
    Scorer.GetItem(0, "FuckingPaused").Visible = 0
  end
  if splashID == 0 then
    Scorer.AddScheduledFunc(0, 1, "LaunchDemoNextLevel", "SaveGame.LaunchDemoNextLevel")
    return
  elseif splashID == 1 then
    Game.Set("CheckInactivityTime", 180)
    local s1 = Scorer.NewItem(0, "S1", "Text", 1)
    s1.Text = ""
    s1.uData.params = {
      "Demo_Splash_1",
      380,
      -40,
      300
    }
    s1.OnRender = "SaveGame.DrawDemoSplashText"
    return
  elseif splashID == 2 then
    local s2 = Scorer.NewItem(0, "S2", "Text", 1)
    s2.Text = ""
    s2.uData.params = {
      "Demo_Splash_2",
      0,
      200,
      300
    }
    s2.OnRender = "SaveGame.DrawDemoSplashText"
  elseif splashID == 3 then
    local s3 = Scorer.NewItem(0, "S3", "Text", 1)
    s3.Text = ""
    s3.uData.params = {
      "Demo_Splash_3",
      380,
      -40,
      300
    }
    s3.OnRender = "SaveGame.DrawDemoSplashText"
  elseif splashID == 4 then
    local s4_0 = Scorer.NewItem(0, "S4_0", "Text", 1)
    s4_0.Text = ""
    s4_0.uData.params = {
      "Demo_Splash_4_0",
      0,
      -40,
      300
    }
    s4_0.OnRender = "SaveGame.DrawDemoSplashText"
    local s4_1 = Scorer.NewItem(0, "S4_1", "Text", 1)
    s4_1.Text = ""
    s4_1.uData.params = {
      "Demo_Splash_4_1",
      0,
      240,
      300
    }
    s4_1.OnRender = "SaveGame.DrawDemoSplashText"
  end
  local ibm = Scorer.NewItem(0, "BackToMenu", "Text", 1)
  if splashID == 0 then
    ibm.Text = langstr("Demo_Continue_Demo")
    ibm.OnAccept = "SaveGame.LaunchDemoNextLevel"
  else
    ibm.Text = langstr("Menu_Continue")
    if splashID == 4 then
      ibm.OnAccept = "SaveGame.LaunchDemoLastScreen"
    else
      ibm.OnAccept = "SaveGame.LaunchNextDemoSplashScreen"
    end
  end
  ibm.Pos = V2D(510, 440)
  ibm.Font = "HoratioLittle"
  ibm.CentralText = 1
  ibm.Color = Menu.ItemColor
  ibm.Effect = "Shadow"
  Menu.ShowNavigationHUD(nil, "Menu_Accept", nil)
  o = Scorer.GetItem(0, "MenuNavigationHUD_Back")
  if o then
    o.Visible = 0
  end
  o = Scorer.GetItem(0, "MenuNavigationHUD_Exit")
  if o then
    o.Visible = 0
  end
  Scorer.SetDefault(0, "BackToMenu")
  if not Menu.IsDemoStores and 0 < splashID then
    if splashID < 4 then
      Scorer.AddScheduledFunc(0, 30, "LaunchNextDemoSplashScreen", "SaveGame.LaunchNextDemoSplashScreen")
    else
      Scorer.AddScheduledFunc(0, 40, "LaunchNextDemoSplashScreen", "SaveGame.LaunchDemoLastScreen")
    end
  end
end

function SaveGame.DemoGotoMenu()
  SaveGame.RestartDemo()
end

function SaveGame.SetOnAcceptInDemoLastScreen()
  local s4_99 = Scorer.NewItem(0, "S4_99", "Text")
  s4_99.Font = "HoratioMedium"
  s4_99.Text = ""
  s4_99.Pos = V2D(640, 480)
  s4_99.Align = "Center"
  s4_99.Color = Color(0, 0, 0, 0)
  s4_99.Size = V3D(0, 0)
  s4_99.Outside = 0
  s4_99.UseAlpha = 1
  local item = Scorer.GetItem(0, "S4_99")
  if item then
    if Menu.ExitFromDemo then
      item.OnAccept = "Menu.ExitGame"
    else
      item.OnAccept = "SaveGame.DemoGotoMenu"
    end
    Scorer.SetDefault(0, "S4_99", false)
  end
  if Menu.ExitFromDemo then
    Scorer.SetOnCancel(0, "Menu.ExitGame")
  else
    Scorer.SetOnCancel(0, "SaveGame.DemoGotoMenu")
  end
  Input.SetActionSet("Menu")
end

function SaveGame.LaunchDemoLastScreen()
  print("SaveGame.LaunchDemoLastScreen")
  Scorer.DeleteScheduledFuncs(0, "LaunchNextDemoSplashScreen")
  Menu.ShowNavigationHUD(nil, nil, nil)
  if Game.Get("IsSteamDemo") ~= 0 then
    Input.SetActionSet("Menu")
    if Menu.ExitFromDemo then
      Scorer.AddScheduledFunc(0, 1, "ExitDemo", "Menu.ExitGame")
    else
      Scorer.AddScheduledFunc(0, 1, "DemoGotoMenu", "SaveGame.DemoGotoMenu")
    end
    SaveGame.RestoreDemoInitialState()
    Menu.ShowGameInSteam()
  else
    Input.SetActionSet("Null")
    Scorer.AddScheduledFunc(0, 5, "SetOnAcceptInDemoLastScreen", "SaveGame.SetOnAcceptInDemoLastScreen")
    Game.Set("LastTimeShowedDemoScreens", Game.GetSysTime())
    SaveGame.RestoreDemoInitialState()
    TravelBook.OnRenderHighlightTargetColor = Color(255, 255, 255, 255)
    local s4_6 = Scorer.NewItem(0, "s4_6", "Sprite")
    s4_6.File = "2D/Loading/Demo/CLoS_Ultimate_End_Slate_ERSB.dds"
    s4_6.Unit = 1
    s4_6.WideScale = 0
    s4_6.Pivot = V2D(0.5, 0.5)
    s4_6.Pos = V2D(320, 240)
    SaveGame.UpdateAspectRatio(s4_6)
    s4_6.OnRender = "SaveGame.UpdateBackground"
    s4_6.Outside = 1
    s4_6.Color = Color(255, 255, 255, 0)
    s4_6.UseAlpha = 1
    local item = Scorer.NewItem(0, "BlackSquare", "Sprite")
    if item then
      item.File = "2D/White.alpha.tga"
      item.Unit = 1
      item.WideScale = 0
      item.Pos = V2D(0, 0)
      item.Scale = V2D(640, 480)
      item.Pivot = V2D(0, 0)
      item.Outside = 1
      item.OnRender = "SaveGame.OnDemoBlackScreenRendered"
    end
    item.Color = Color(0, 0, 0, 0)
  end
end

function SaveGame.UpdateAspectRatio(itm)
  local sx, sy = 640, 480
  local camRatio = Game.Get("CameraAspectRatio")
  local defRatio = 1.7777777910232544
  if camRatio > defRatio then
    sx = sx * defRatio / camRatio
  elseif camRatio < defRatio then
    sy = sy * camRatio / defRatio
  end
  itm.Scale = V2D(sx, sy)
end

function SaveGame.UpdateBackground(id, controlName, timeDiff)
  local s4_6 = Scorer.GetItem(0, "s4_6")
  SaveGame.UpdateAspectRatio(s4_6)
end

SaveGame.BlackScreenTimer = 0

function SaveGame.OnDemoBlackScreenRendered(id, controlName, timeDiff)
  SaveGame.BlackScreenTimer = SaveGame.BlackScreenTimer + timeDiff
  local alpha = 255 * SaveGame.BlackScreenTimer
  if 255 < alpha then
    alpha = 255
  end
  local item = Scorer.GetItem(0, controlName)
  item.Color = Color(0, 0, 0, alpha)
  if alpha == 255 then
    item.OnRender = "SaveGame.OnDemoLastTextRendered"
    SaveGame.BlackScreenTimer = 0
  end
end

function SaveGame.OnDemoLastTextRendered(id, controlName, timeDiff)
  SaveGame.BlackScreenTimer = SaveGame.BlackScreenTimer + timeDiff
  local alpha = 255 * SaveGame.BlackScreenTimer
  if 255 < alpha then
    alpha = 255
  end
  local s4_6 = Scorer.GetItem(0, "s4_6")
  s4_6.Color = Color(255, 255, 255, alpha)
  if alpha == 255 then
    local item = Scorer.GetItem(0, controlName)
    item.OnRender = ""
    SaveGame.LaunchDemoSplashHighlightSound()
    Scorer.AddScheduledFunc(0, 20, "RestartDemo", "SaveGame.RestartDemo")
  end
end

function SaveGame.DrawDemoSplashText(id, controlName)
  local params = Scorer.GetItem(id, controlName).uData.params
  Scorer.DrawLoadingMessage(langstr(params[1]), params[2], params[3], params[4])
end

function SaveGame.RestartDemo()
  Scorer.DeleteScheduledFuncs(0, "LaunchNextDemoSplashScreen")
  Game.ScreenSaverEnable(true)
  SaveGame.LoadMenuExitProfile()
end

function SaveGame.LaunchNextDemoSplashScreen()
  Scorer.DeleteScheduledFuncs(0, "LaunchNextDemoSplashScreen")
  SaveGame.CurrentDemoSplashID = SaveGame.CurrentDemoSplashID + 1
  SaveGame.LaunchDemoSplashScreen()
end

function SaveGame.LaunchDemoNextLevel()
  Game.Log("SaveGame.LaunchDemoNextLevel\n", 1)
  Scorer.DeleteScheduledFuncs(0, "LaunchNextDemoSplashScreen")
  SaveGame.SaveLevelCompleted("1_4_haunting_path")
  WorldMap.LevelToBeLoaded = "1_4_haunting_path"
  WorldMap.LoadHistoricLevel(0, "")
end

function SaveGame.LaunchDemoVideo()
  local aspect = Game.GVar("PhysicalAspectRatio")
  aspect.Default = aspect.Value
  local gamma = Game.GVar("RT_CopyRamp")
  gamma.Default = gamma.Value
  Game.Set("LoadingScorerSkipRender", true)
  Game.Set("R_DrawFrame", 0)
  Scorer.Clear(0)
  Game.GetMenu():DoHide()
  Game.Set("PlayVideo", "&Video/Trailer.bik")
  Input.SetActionSet("Null")
  SaveGame.LoadLevel("menu")
end

function SaveGame.BackToMenuOption(id, control)
  Scorer.GetItem(id, control).OnAccept = ""
  Menu.WorldMapMenuMode = true
  Menu.UsePauseMessage = false
  AfterSaveCallbackFunc = WorldMap.SelectNextLevelPlayed
  AfterSaveCallbackParam = "Menu"
  SaveGame.HardSaveGame()
end

function SaveGame.__NewLevelNow__(FullLevelName)
  if Input.GetActionSet() == "Menu" or Game.Get("GameRecorder") > 0 then
    SaveGame.NewLevelNow_NO_BOOK(FullLevelName)
  else
    Menu.InitMenuSys()
    Menu.StartNewMenu()
    if "level.menu" == init.LevelName then
      Menu.DrawBackMenu()
    else
      Menu.DrawBackMenuFirstScreen()
    end
    Game.Set("AfterDrawCallback", "SaveGame.WaitForLoad")
    SaveGame.___FullLevelName___ = FullLevelName
    SaveGame.___FrameCounter___ = 5
    Game.GetMenu().OnLoopEvent = "SaveGame.WaitForLoad"
  end
end

function SaveGame.WaitForLoad()
  SaveGame.___FrameCounter___ = SaveGame.___FrameCounter___ - 1
  if SaveGame.___FrameCounter___ <= 0 then
    Game.GetMenu():DoNext()
    SaveGame.NewLevelNow_NO_BOOK(SaveGame.___FullLevelName___)
  else
    Game.Set("AfterDrawCallback", "SaveGame.WaitForLoad")
  end
end

SaveGame.ToGvars = {}
SaveGame.NonSaveGvars = {
  gvTotalExperience = true,
  gvExperience = true,
  gvCombatScrolls = true,
  gvDaggerUpgrades = true,
  gvVialUpgrades = true,
  gvFairyUpgrades = true,
  gvDarkGems = true,
  gvLightGems = true,
  gvLifeGems = true,
  gvTBookItemStatus = true,
  gvTBookActionsStatus = true,
  gvTBookCharStatus = true
}

function SaveGame.AddToGvar(GVarName)
  if "level.menu" == init.LevelName or SaveGame.NonSaveGvars[GVarName] then
    return Game.GVar(GVarName)
  else
    local SaveVarName = "ToGVar." .. GVarName
    Game.CreateSaveVar(SaveVarName, Game.Get(GVarName))
    SaveGame.ToGvars[GVarName] = Game.GetSaveVarObj(SaveVarName)
    return SaveGame.ToGvars[GVarName]
  end
end

function SaveGame.WriteToGvar()
  for name, savevar in pairs(SaveGame.ToGvars) do
    Game.Set(name, savevar.Value)
  end
end

function SaveGame.NewLevelNow_NO_BOOK(LevelName)
  local ismenu = string.lower(LevelName) == "menu"
  Game.Set("EscapeEvent", "")
  Game.Set("MainMissionEvent", "")
  Input.SetActionSet("Menu")
  Sound.StopWorldSoundLoops()
  Sound.StopVoice(0)
  Sound.StopVoice(1)
  Sound.StopVoice(2)
  Sound.StopAllSounds()
  Sound.SetMusicVolume(0, 0)
  Game.DelSaveVars("")
  if not ismenu then
    local newLevelName = init.BuildLevelName(LevelName)
    Game.SetSaveVar(newLevelName .. ".Spawn.Point", "0")
    Game.SetSaveVar("LevelName", LevelName)
    SaveGame.CheckVisitedLevels(LevelName, true)
    Game.SoftSaveAutoSave()
    Game.Set("LoadSaveVars", true)
  else
    SaveGame.ClearSaveMarker()
  end
  if Game.Get("SaveGameSlot") == 1 then
    SaveGame.ClearSaveMarker()
    Game.SoftSaveConfig()
  end
  Game.SetTimeSpeed(0)
  SaveGame.LoadLevel(LevelName)
end

function SaveGame.LoadNextLevel()
  SaveGame.LoadLevel(nextLevelToLoad)
end

function SaveGame.LoadGame(FileToLoad)
  Game.DelSaveVars("")
  Game.LoadGameVars("Save/" .. FileToLoad .. ".sav")
  local LevelName = Game.GetSaveVar("LevelName")
  SaveGame.LoadLevel(LevelName)
end

function SaveGame.Restart()
  Game.DelSaveVars("")
  Game.SetSaveVar(init.LevelName .. ".Spawn.Point", "0")
  Game.SetSaveVar("LevelName", string.sub(init.LevelFile, 8))
  Game.SoftSaveAutoSave()
  Game.Set("LoadSaveVars", true)
  SaveGame.LoadLevel(string.sub(init.LevelFile, 8))
end

function SaveGame.FlagCounter(Name, Value)
  local nam = init.LevelName .. ".FlagCounter." .. Name
  Game.CreateSaveVar(nam, "" .. Value)
  Value = -1 + Game.GetSaveVar(nam)
  Game.SetSaveVar(nam, "" .. Value)
  return Value <= 0
end

function SaveGame.FlagSet(Name, Value)
  local nam = init.LevelName .. ".FlagCounter." .. Name
  Game.SetSaveVar(nam, "" .. Value)
end

function SaveGame.FlagCheck(Name, Value)
  local nam = init.LevelName .. ".FlagCounter." .. Name
  local v = Game.GetSaveVar(nam)
  if v and v == "" .. Value then
    return true
  else
    return false
  end
end

function SaveGame.SaveGameConfig()
  Game.SoftSaveConfig()
  return SaveGame.HardSaveGame()
end

AfterSaveCallbackFunc = nil
AfterSaveCallbackParam = nil

function SaveGame.AfterSaveCallback()
  Game.Set("SavingMsg", 0)
  if AfterSaveCallbackFunc then
    AfterSaveCallbackFunc(AfterSaveCallbackParam)
    AfterSaveCallbackFunc = nil
    AfterSaveCallbackParam = nil
  end
end

function SaveGame.AfterSaveConfigCallback(control)
  Menu.MainMenu(0, param)
end

function SaveGame.ActualHardSaveGame()
  local res = Game.HardSaveGame()
  if res == 0 then
    Game.Set("ScorerExecuteTime", Game.Get("ScorerExecuteTime"))
    Game.Set("ScorerExecuteFunc", "SaveGame.AfterSaveCallback")
  else
    SaveGame.HardSaveGameError(res)
  end
end

function SaveGame.HardSaveGameError(res)
  local platform = Game.Get("Platform")
  Game.Set("SavingMsg", 0)
  if platform ~= "PS3" then
    Game.Set("SaveGameActive", 0)
  end
  if AfterSaveCallbackFunc == nil then
    AfterSaveCallbackFunc = SaveGame.AfterSaveConfigCallback
  end
  if platform == "X360" then
    if Game.IsStorageDeviceAvailable() == 0 then
      Menu.AcceptMenuMultiline(Game.GetLangStr("X360_Menu_No_Device_Available1") .. " " .. Game.GetLangStr("X360_Menu_No_Autosave"), "SaveGame.AfterSaveCallback")
    else
      Menu.AcceptMenuMultiline(Game.GetLangStr("X360_Menu_No_Content") .. Game.GetLangStr("X360_Menu_No_Autosave"), "SaveGame.AfterSaveCallback")
    end
  elseif platform == "PS3" then
    Menu.PS3_SaveGameErrorMenu(Game.GetLangStr("AutoSave_SavingError"), "SaveGame.HardSaveGame", "SaveGame.AfterSaveCallback")
  else
    Menu.AcceptMenuMultiline(Game.GetLangStr("AutoSave_SavingError") .. Game.GetLangStr("Autosave_Deactivated"), "SaveGame.AfterSaveCallback")
  end
end

function SaveGame.RetryHardSaveGameXbox()
  Game.ShowDeviceUI("SaveGame.FinalRetryHardSaveGameXbox", true)
end

function SaveGame.FinalRetryHardSaveGameXbox(deviceSelected)
  if deviceSelected == 0 then
    if Input.GetActionSet() ~= "Menu" then
      Menu.InitMenuSys()
    end
    Game.Set("SaveGameActive", 0)
    Menu.AcceptMenuMultiline(Game.GetLangStr("X360_Menu_No_Device") .. " " .. Game.GetLangStr("X360_Menu_No_Autosave"), "SaveGame.AfterSaveCallback")
  else
    SaveGame.HardSaveGame()
  end
end

function SaveGame.HardSaveGame()
  if Game.Get("SaveGameActive") ~= 0 then
    local platform = Game.Get("Platform")
    if platform == "X360" and Game.IsStorageDeviceAvailable() == 0 then
      if Input.GetActionSet() ~= "Menu" then
        Menu.InitMenuSys()
      end
      Menu.AcceptMenuMultiline(Game.GetLangStr("X360_Menu_No_Device_Available1") .. " " .. Game.GetLangStr("X360_Menu_No_Device_Available2"), "SaveGame.RetryHardSaveGameXbox")
      return 2
    else
      local strId
      if platform == "X360" then
        strId = "X360_Menu_Saving_Game"
      else
        strId = "AutoSave_Saving"
      end
      Game.Set("SavingMsg", 3)
      Game.Set("SavingMsgStr", Game.GetLangStr(strId))
      Game.Set("SaveGameAfterDrawCallback", "SaveGame.ActualHardSaveGame")
      return 1
    end
    Game.ConsoleError("Game saved in device!!\n")
    Game.ConsoleError("VisitedLevels = '" .. Game.Get("VisitedLevels") .. "'\n")
  else
    SaveGame.AfterSaveCallback()
    return 0
  end
end

function SaveGame.HardLoadGame()
  if Game.Get("SaveGameActive") ~= 0 then
    local platform = Game.Get("Platform")
    if platform ~= "X360" or Game.IsStorageDeviceAvailable() == 1 then
      return Game.HardLoadGame()
    else
      Game.Set("SavingMsg", 0)
      Game.Set("SaveGameActive", 0)
      if Game.Get("DeviceSelected") == 1 then
        Menu.AcceptMenuMultiline(Game.GetLangStr("X360_Menu_No_Device_Available1") .. " " .. Game.GetLangStr("X360_Menu_No_Autosave"), "MainMenu.MainMenu")
      else
        Menu.AcceptMenuMultiline(Game.GetLangStr("X360_Menu_No_Device") .. " " .. Game.GetLangStr("X360_Menu_No_Autosave"), "MainMenu.MainMenu")
      end
      return 6
    end
  else
    return 0
  end
end

function SaveGame.LoadGameConfig()
  local res = SaveGame.HardLoadGame()
  if res == 0 then
    Game.SoftLoadConfig()
    SaveGame.RestoreAllGVars()
    if not Game.HardCheckOwner() then
      Game.Set("AchievementsBlocked", true)
      Game.SoftSaveConfig()
    end
  elseif Game.Get("Platform") ~= "PC" then
    Game.ResetGVarsToDefault()
  end
  return res
end

function SaveGame.ActualDeleteListPS3()
  local res = Game.PS3_SaveData_ListDelete()
end

function SaveGame.ActualDeleteCloudFile()
  local res = Game.Steam_DeleteAllCloudFiles()
end

function SaveGame.ActualCopyFileFromCloud()
  local res = Game.Steam_CopyFilesFromCloud()
end

function SaveGame.ActualCopyFileToCloud()
  local res = Game.Steam_CopyFilesToCloud()
end

function SaveGame.ActualClearAchievements()
  Game.Steam_ClearAchievements()
end

function SaveGame.IsChapterVisited(chapterName)
  local chapterLevels = SaveGame.GameChapters[chapterName]
  if chapterLevels then
    local visitedLevels = Game.Split(Game.Get("VisitedLevels"), ",")
    for _, levelName in ipairs(chapterLevels) do
      if SaveGame.IsLevelVisited(levelName) then
        return true
      end
    end
  end
  return false
end

function SaveGame.SetLevelVisited(levelName)
  levelName = levelName:lower()
  local visitedLevels = Game.Split(Game.Get("VisitedLevels"), ",")
  local levelIndex = SaveGame.GetLevelIndex(levelName)
  local insertPosition = #visitedLevels + 1
  for index, visitedLevelName in ipairs(visitedLevels) do
    local visitedLevelIndex = SaveGame.GetLevelIndex(visitedLevelName)
    if visitedLevelName == levelName then
      return
    elseif nil == insertPosition and visitedLevelIndex and levelIndex < visitedLevelIndex then
      insertPosition = index
    end
  end
  table.insert(visitedLevels, insertPosition, levelName)
  Game.Set("VisitedLevels", table.concat(visitedLevels, ","))
end

function SaveGame.GetLevelIndex(theLevelName)
  theLevelName = theLevelName:lower()
  for levelIndex, levelName in ipairs(SaveGame.GameMaps) do
    if levelName == theLevelName then
      return levelIndex
    end
  end
end

function SaveGame.IsLevelVisited(levelName)
  local visitedLevels = Game.Split(Game.Get("VisitedLevels"), ",")
  for i = 1, #visitedLevels do
    if levelName == visitedLevels[i] then
      return true
    end
  end
  return false
end

function SaveGame.VisitAllLevels()
  local gvVisitedLevels = Game.GVar("VisitedLevels")
  gvVisitedLevels.Value = table.concat(SaveGame.GameMaps, ",")
end

function SaveGame.VisitAllLevelsTillChosen(levelACargar)
  local gvVisitedLevels = Game.GVar("VisitedLevels")
  local nivelesAVisitar = ""
  for i = 1, #SaveGame.GameMaps do
    if nivelesAVisitar == "" then
      nivelesAVisitar = SaveGame.GameMaps[i]
    else
      nivelesAVisitar = nivelesAVisitar .. "," .. SaveGame.GameMaps[i]
    end
    if SaveGame.GameMaps[i] == levelACargar then
      gvVisitedLevels.Value = nivelesAVisitar
      return
    end
  end
end

function SaveGame.UnlockAchievements(level)
  if SaveGame.ChapterAchievement[level] ~= nil then
    Game.WriteAchievement(SaveGame.ChapterAchievement[level])
    print("CHAPTER COMPLETION ACHIEVEMENT UNLOCKED")
  end
  SaveGame.CheckTrialsAchievementUnlocked(level)
end

function SaveGame.CheckTrialsAchievementUnlocked(level)
  local isDLC = SaveGame.CheckIfMapIsDLC(level)
  local trialsCompleted = SaveGame.AddToGvar("gvTrials")
  local completedStatus = {}
  if trialsCompleted.Value ~= "" then
    local a = Game.Split(trialsCompleted.Value, ",")
    for i = 1, #a do
      local b = Game.Split(a[i], "|")
      completedStatus[string.lower(b[1])] = b[2]
    end
  end
  local nameLevelSplitted = Game.Split(level, "_")
  local numChapter = nameLevelSplitted[1]
  if isDLC then
    numChapter = nameLevelSplitted[1] .. "_" .. nameLevelSplitted[2]
  end
  local completed = {}
  for j = 1, 14 do
    completed[j] = true
  end
  local numLevels = 0
  local allTrialsCompleted = true
  for i = 1, #SaveGame.GameMaps do
    local nameAuxSplitted = Game.Split(SaveGame.GameMaps[i], "_")
    local numAuxChapter = nameAuxSplitted[1]
    if isDLC then
      numAuxChapter = nameAuxSplitted[1] .. "_" .. nameAuxSplitted[2]
    end
    if numChapter == numAuxChapter then
      numLevels = numLevels + 1
      if completedStatus[SaveGame.GameMaps[i]] == nil then
        completed[numLevels] = false
        allTrialsCompleted = false
        Game.Log(SaveGame.GameMaps[i] .. "  NO trial completed\n", 1)
      else
        Game.Log(SaveGame.GameMaps[i] .. "  trial completed\n", 1)
      end
    elseif completedStatus[SaveGame.GameMaps[i]] == nil then
      allTrialsCompleted = false
    end
  end
  local allCompleted = true
  for j = 1, numLevels do
    if completed[j] == true then
    else
      allCompleted = false
    end
  end
  if allCompleted == true then
    if numChapter == "dlc_1" then
      Game.WriteAchievement(SaveGame.ChapterTrialAchievement[13])
    elseif numChapter == "dlc_2" then
      Game.WriteAchievement(SaveGame.ChapterTrialAchievement[14])
    else
      Game.WriteAchievement(SaveGame.ChapterTrialAchievement[tonumber(numChapter)])
    end
    print("CHAPTER TRIALS COMPLETION ACHIEVEMENT UNLOCKED")
  end
  if allTrialsCompleted == true then
    Game.WriteAchievement(SaveGame.allTrialsAchievementIndex)
    print("ALL CHAPTER TRIALS COMPLETION ACHIEVEMENT UNLOCKED")
  end
end

function SaveGame.GetUnblockedPictures()
  local pstr = Game.Get("UnblockedPictures")
  if pstr == "" then
    pstr = string.rep(".", SaveGame.nFirstPic - 1) .. "X" .. string.rep(".", SaveGame.nPics - SaveGame.nFirstPic)
    Game.Set("UnblockedPictures", pstr)
  end
  local farray = {}
  for i = 1, SaveGame.nPics do
    if string.sub(pstr, i, i) ~= "." then
      table.insert(farray, i)
    end
  end
  return farray
end

function SaveGame.AddPic(ipic, forcesave)
  if Game.Get("isDemo") ~= 0 then
    return false
  end
  if ipic < 1 or ipic > SaveGame.nPics then
    return false
  end
  local finalPic = ipic
  Game.WriteAchievement(finalPic)
  SaveGame.GetUnblockedPictures()
  local pstr = Game.Get("UnblockedPictures")
  if string.sub(pstr, ipic, ipic) == "." then
    pstr = string.sub(pstr, 1, ipic - 1) .. "X" .. string.sub(pstr, ipic + 1)
    Game.Set("UnblockedPictures", pstr)
    Game.SoftSaveConfig()
    Scorer.PopUpMessage(0, 320, 175, Game.GetLangStr("BonusCodes_Unlocked") .. "\n" .. Game.GetLangStr("Extra_" .. ipic - 1 .. "_Main_Title"), 2)
    return true
  end
  return false
end

function SaveGame.CheckIfMapIsDLC(map)
  local isDLC = false
  local splits = Game.Split(map, "_")
  if splits[1] == "dlc" then
    isDLC = true
  end
  return isDLC
end

function SaveGame.Check_DLC_LevelDificultyAchievementUnlocked()
end

function SaveGame.Check_DLC2_LevelDificultyAchievementUnlocked()
end

function SaveGame.CheckLevelDificultyAchievementUnlocked()
  local allInEasy = true
  local allInNormal = true
  local allInHard = true
  local allInHardCore = true
  local a = Game.Split(Game.Get("gvSkillMapStatus"), ",")
  for i = 1, #SaveGame.GameMaps do
    if tonumber(a[i]) < 4 then
      allInHardCore = false
    end
    if tonumber(a[i]) < 3 then
      allInHard = false
    end
    if tonumber(a[i]) < 2 then
      allInNormal = false
    end
    if 1 > tonumber(a[i]) then
      allInEasy = false
    end
  end
  if allInEasy == true then
    Game.WriteAchievement(SaveGame.gameEndSkillsAchievementIndex[1])
    print("ALL GAME FINISHED IN EASY ACHIEVEMENT UNLOCKED")
  end
  if allInNormal == true then
    Game.WriteAchievement(SaveGame.gameEndSkillsAchievementIndex[2])
    print("ALL GAME FINISHED IN NORMAL ACHIEVEMENT UNLOCKED")
  end
  if allInHard == true then
    Game.WriteAchievement(SaveGame.gameEndSkillsAchievementIndex[3])
    print("ALL GAME FINISHED IN HARD ACHIEVEMENT UNLOCKED")
  end
  if allInHardCore == true then
    Game.WriteAchievement(SaveGame.gameEndSkillsAchievementIndex[4])
    print("ALL GAME FINISHED IN HARDCORE ACHIEVEMENT UNLOCKED")
  end
end

function SaveGame.CompleteAllLevels(nivel)
  local a = Game.Split(Game.Get("gvSkillMapStatus"), ",")
  local s = ""
  for i = 1, #SaveGame.GameMaps do
    a[i] = tostring(nivel)
    s = s .. "," .. a[i]
  end
  Game.Set("gvSkillMapStatus", string.sub(s, 2))
  for i = 1, #SaveGame.GameMaps do
    SaveGame.UnlockAchievements(SaveGame.GameMaps[i])
  end
  SaveGame.CheckLevelDificultyAchievementUnlocked()
end

function SaveGame.CompleteAllLevelsTillLast(nivel)
  local a = Game.Split(Game.Get("gvSkillMapStatus"), ",")
  local s = ""
  local num = #SaveGame.GameMaps - 1
  for i = 1, num do
    a[i] = tostring(nivel)
    s = s .. "," .. a[i]
  end
  Game.Set("gvSkillMapStatus", string.sub(s, 2))
  SaveGame.CheckLevelDificultyAchievementUnlocked()
end

function SaveGame.CalculateAllGameCompletePerc()
  local allPerc = 0
  WorldMap.CalculateLevelInfo()
  for i = 1, #SaveGame.GameMaps do
    allPerc = allPerc + WorldMap.GetRegionFinishPerc(SaveGame.GameMaps[i])
  end
  allPerc = allPerc / #SaveGame.GameMaps
  print("PORCENTAJE TOTAL JUGADO: " .. allPerc)
  return allPerc
end

function SaveGame.IsDLCAvailable(dlcNumber)
  SaveGame.DLCAvailability = {true, true}
  if nil == dlcNumber then
    return unpack(SaveGame.DLCAvailability)
  else
    return true
  end
end

SaveGame.BackupGVars = {
  "gvSkillMapStatus",
  "gvInfoScrolls"
}
SaveGame.BackupGVarSeparator = "#@#"
SaveGame.BackupContainerName = "UnblockedPictures"

function SaveGame.BackupGVar(gVarName)
  local backupContainerValue = Game.Get(SaveGame.BackupContainerName)
  local index = SaveGame.GetBackupGVarIndex(gVarName)
  if index then
    local numberSeparators = 0
    local necessarySeparators = #SaveGame.BackupGVars + 1
    for _ in backupContainerValue:gmatch(SaveGame.BackupGVarSeparator) do
      numberSeparators = numberSeparators + 1
    end
    backupContainerValue = backupContainerValue .. string.rep(SaveGame.BackupGVarSeparator, necessarySeparators - numberSeparators)
    local rangeStart, rangeEnd = SaveGame.GetBackupGVarRange(index, backupContainerValue)
    local backupString = Game.Get(gVarName)
    if SaveGame.BackupBuilders[gVarName] then
      backupString = SaveGame.BackupBuilders[gVarName](backupString)
    end
    backupContainerValue = backupContainerValue:sub(1, rangeStart - 1) .. backupString .. backupContainerValue:sub(rangeEnd)
    Game.Set(SaveGame.BackupContainerName, backupContainerValue)
    return backupContainerValue
  end
end

function SaveGame.RestoreGVar(gVarName)
  local backupContainerValue = Game.Get(SaveGame.BackupContainerName)
  local rangeStart, rangeEnd = SaveGame.GetBackupGVarRange(SaveGame.GetBackupGVarIndex(gVarName), backupContainerValue)
  if rangeStart and rangeEnd and rangeStart ~= rangeEnd then
    local backupString = backupContainerValue:sub(rangeStart, rangeEnd - 1)
    if SaveGame.BackupRestorers[gVarName] then
      backupString = SaveGame.BackupRestorers[gVarName](backupString, Game.Get(gVarName))
    end
    Game.Set(gVarName, backupString)
  end
end

function SaveGame.BackupAllGVars()
  for _, gVarName in ipairs(SaveGame.BackupGVars) do
    SaveGame.BackupGVar(gVarName)
  end
end

function SaveGame.RestoreAllGVars()
  for _, gVarName in ipairs(SaveGame.BackupGVars) do
    SaveGame.RestoreGVar(gVarName)
  end
  Game.SoftSaveConfig()
end

function SaveGame.GetBackupGVarIndex(gVarName)
  for index, backupGVarName in ipairs(SaveGame.BackupGVars) do
    if backupGVarName == gVarName then
      return index
    end
  end
end

function SaveGame.GetBackupGVarRange(gVarIndex, backupContainerValue)
  local pattern = string.rep(SaveGame.BackupGVarSeparator .. ".-", gVarIndex - 1) .. SaveGame.BackupGVarSeparator .. "().-()" .. SaveGame.BackupGVarSeparator
  return backupContainerValue:match(pattern)
end

function SaveGame.RestoreSkillMapStatusBackup(backupString, gVarValue)
  local numLevelsBeforeDLC = 46
  return gVarValue:sub(1, 2 * numLevelsBeforeDLC - 1) .. backupString:sub(2 * numLevelsBeforeDLC)
end

function SaveGame.RestoreCollectedScrollsBackup(backupString, gVarValue)
  local numLevelsBeforeDLC = 46
  local gVarBeforeDLCEnd
  local levelIndex = 0
  for stringIndex in gVarValue:gmatch("()-") do
    levelIndex = levelIndex + 1
    if levelIndex == numLevelsBeforeDLC then
      gVarBeforeDLCEnd = stringIndex - 1
    end
  end
  gVarBeforeDLCEnd = gVarBeforeDLCEnd or gVarValue:len()
  levelIndex = 0
  local backupAfterDLCStart = backupString:len()
  for stringIndex in backupString:gmatch("-()") do
    levelIndex = levelIndex + 1
    if levelIndex == numLevelsBeforeDLC then
      backupAfterDLCStart = stringIndex
    end
  end
  return gVarValue:sub(1, gVarBeforeDLCEnd) .. "-" .. backupString:sub(backupAfterDLCStart)
end

SaveGame.BackupBuilders = {}
SaveGame.BackupRestorers = {
  gvSkillMapStatus = SaveGame.RestoreSkillMapStatusBackup,
  gvInfoScrolls = SaveGame.RestoreCollectedScrollsBackup
}
