function Trials.Preload()
  Game.CreateGvar("gvTrials", "string", "Trials Completed")
  
  Game.CreateGvar("gvTrialNewRecord", "string", "Trials new record")
end

function Trials.main()
  Game.Set("gvTrialNewRecord", "0")
  Trials.gvTrials = SaveGame.AddToGvar("gvTrials")
  Trials.Status = {}
  if Trials.gvTrials and Trials.gvTrials.Value ~= "" then
    local a = Game.Split(Trials.gvTrials.Value, ",")
    for i = 1, #a do
      local b = Game.Split(a[i], "|")
      Trials.Status[string.lower(b[1])] = b[2]
    end
  end
  Trials.LastTrialResult = Trials.Status[string.lower(string.sub(init.LevelFile, 8))]
  Trials.valorObjetivo = {}
  Trials.valorObjetivo["1_1_besieged_village"] = 1
  Trials.valorObjetivo["1_4_haunting_path"] = 1
  Trials.valorObjetivo["1_5_swamp"] = 50
  Trials.valorObjetivo["1_7_pans_temple"] = 5
  Trials.valorObjetivo["1_9_oblivion_lake"] = 90
  Trials.valorObjetivo["2_2_enchanted_forest"] = 30
  Trials.valorObjetivo["2_3_underground_cave"] = 10
  Trials.valorObjetivo["2_4_labyrinth_entrance"] = 5
  Trials.valorObjetivo["2_6_underground_dungeons"] = 20
  Trials.valorObjetivo["2_7_labyrinth_ruins_ii"] = 0
  Trials.valorObjetivo["2_8_dark_dungeon"] = 1
  Trials.valorObjetivo["2_8_stone_idol_mausoleum"] = 20
  Trials.valorObjetivo["2_9_stone_idol_temple"] = 120
  Trials.valorObjetivo["2_10_black_knight"] = 1
  Trials.valorObjetivo["3_0_the_gauntlet"] = 15
  Trials.valorObjetivo["3_3_the_dark_lord"] = 1
  Trials.valorObjetivo["4_1_fortress"] = 1
  Trials.valorObjetivo["4_2_fortress_witch"] = 2
  Trials.valorObjetivo["5_1_dark_forest"] = 180
  Trials.valorObjetivo["5_2_isolated_village"] = 0
  Trials.valorObjetivo["5_4_abbey_catacombs"] = 0
  Trials.valorObjetivo["5_4_abbey_catacombs_a"] = 150
  Trials.valorObjetivo["5_8_abbey_tower_A"] = 21
  Trials.valorObjetivo["5_8_abbey_tower"] = 100
  Trials.valorObjetivo["5_2_isolated_village_a"] = 4
  Trials.valorObjetivo["5_11_sewers"] = 3
  Trials.valorObjetivo["6_1_courtyard"] = 3
  Trials.valorObjetivo["6_1_courtyard_a"] = 15
  Trials.valorObjetivo["6_1_Courtyard_A_2"] = 15
  Trials.valorObjetivo["6_3_castle_hall"] = 3
  Trials.valorObjetivo["6_5_refectory"] = 15
  Trials.valorObjetivo["7_1_balcony"] = 7
  Trials.valorObjetivo["7_3_chromatic_observatory"] = 1
  Trials.valorObjetivo["7_3_chromatic_observatory_a"] = 10
  Trials.valorObjetivo["8_1_tower_base"] = 10
  Trials.valorObjetivo["8_2_the_tower"] = 300
  Trials.valorObjetivo["8_3_top_corridor"] = 60
  Trials.valorObjetivo["8_4_the_throne_room"] = 10
  Trials.valorObjetivo["9_1_bones_forest"] = 10
  Trials.valorObjetivo["9_3_woes_moor"] = 13
  Trials.valorObjetivo["9_4_1_the_music_box"] = 1
  Trials.valorObjetivo["10_1_marsh_of_silence"] = 100
  Trials.valorObjetivo["10_2_misty_moor"] = 1
  Trials.valorObjetivo["10_3_cementery"] = 20
  Trials.valorObjetivo["10_5_crematory_oven"] = 15
  Trials.valorObjetivo["11_0_the_necromancer_abyss"] = 60
  Trials.valorObjetivo["11_8_dracolich"] = 300
  Trials.valorObjetivo["12_3_final_fight"] = 1
  Trials.valorObjetivo.dlc_1_1_castle_hall = 1
  Trials.valorObjetivo.dlc_1_2_dungeon = 1
  Trials.valorObjetivo.dlc_1_3_towermech = 1
  Trials.valorObjetivo.dlc_2_1_otherworld = 100
  Trials.valorObjetivo.dlc_2_2_otherworld = 16
  Trials.iconsIndex = {}
  Trials.iconsIndex.Copa = 10
  Trials.iconsIndex.Ok = 15
  Trials.iconsIndex.Fail = 23
  Trials.iconsIndex.MagiaOscura = 24
  Trials.iconsIndex.MagiaLuz = 33
  Trials.iconsIndex.Puzzle = 34
  Trials.iconsIndex.Tiempo = 35
  Trials.iconsIndex.Craneo = 36
  Trials.iconsIndex.Caja = 14
  Trials.iconsIndex.Escudo = 65
end

Game.Set("ScorerTrialText", "")
Game.Set("ScorerTrialIcon", -1)
Game.Set("ScorerTrialIcon2", -1)
Game.Set("ScorerTrialText2ndLine", "")
Game.Set("ScorerTrialIcon2ndLine", -1)
Trials.isTrial = Game.Get("SaveGameSlot") == 1 or Game.Get("InitLuaLine") ~= ""

function Trials.SetTrialComplete(result)
  local lName = string.lower(string.sub(init.LevelFile, 8))
  Trials.Status[lName] = result
  local v
  for i, j in pairs(Trials.Status) do
    if v == nil then
      v = i .. "|" .. j
    else
      v = v .. "," .. i .. "|" .. j
    end
  end
  Trials.gvTrials.Value = v
  Game.SoftSaveConfig()
end

function Trials.AddTrialScroll(i)
  CollectableItems.AddScroll(i)
end

function Trials.SetTrialScorer(s)
  Game.Set("ScorerTrialIcon2", -1)
  Game.Set("ScorerTrialText", s)
end

function Trials.SetTrialIcon(i)
  Game.Set("ScorerTrialIcon", i)
end

function Trials.SetTrialIcon2(i)
  Game.Set("ScorerTrialIcon2", i)
end

function Trials.SetTrial2ndLineText(s)
  Game.Set("ScorerTrialText2ndLine", s)
end

function Trials.SetTrial2ndLineIcon(i)
  Game.Set("ScorerTrialIcon2ndLine", i)
end

function Trials.IsTrialComplete(level)
  local completed = false
  if Trials.Status[level] ~= nil then
    completed = true
  end
  return completed
end

function Trials.TrialSuccess(message)
  Menu.ClearMsg()
  Menu.TempTextRender(Game.GetLangStr(message), 0, 2.5, nextTutorial)
  Sound.PlaySound(player.Pos, "Well_Done", 1, 50, 10000)
end

function Trials.CheckTrialRecord(valorObjetivo)
  if Trials.LastTrialResult ~= nil then
    if tonumber(Trials.LastTrialResult) < MapTrial.Status then
      return true
    else
      return false
    end
  elseif valorObjetivo <= MapTrial.Status then
    return true
  else
    return false
  end
end

function Trials.ActivateTrialEffect()
  local gameScorer = Scorer.GetItem(0, "LifeBar")
  if gameScorer == nil then
    gameScorer = Scorer.NewItem(0, "LifeBar", "LifeBar")
  end
  gameScorer.LaunchTrialEffect = 1
end

function Trials.SetTrialCompleteByLevel(level, result)
  Trials.Status[level] = result
  local v
  for i, j in pairs(Trials.Status) do
    if v == nil then
      v = i .. "|" .. j
    else
      v = v .. "," .. i .. "|" .. j
    end
  end
  Trials.gvTrials.Value = v
  Game.SoftSaveConfig()
end

function Trials.AllTrialsResolved()
  local errorcillo = false
  if Trials.valorObjetivo then
    for i = 1, #SaveGame.GameMaps do
      local valorObjetivo = Trials.valorObjetivo[SaveGame.GameMaps[i]]
      if valorObjetivo then
        local time = 0
        if valorObjetivo == 90 or 120 <= valorObjetivo then
          local mins = math.floor(valorObjetivo / 60)
          local secs = valorObjetivo - math.floor(valorObjetivo / 60) * 60
          if secs < 10 then
            time = mins .. ":0" .. secs
          else
            time = mins .. ":" .. secs
          end
          Trials.SetTrialCompleteByLevel(SaveGame.GameMaps[i], time)
        else
          Trials.SetTrialCompleteByLevel(SaveGame.GameMaps[i], valorObjetivo)
        end
        SaveGame.CheckTrialsAchievementUnlocked(SaveGame.GameMaps[i])
      else
        Game.ConsoleError("ERROR al completar el trial del nivel: " .. SaveGame.GameMaps[i])
        errorcillo = true
      end
    end
    if errorcillo == false then
      Game.ConsoleError([[

ALL TRIALS PASSED!
]])
    end
  else
    Game.ConsoleError("ERROR: Comienza una partida para poder desbloquear todos los TRIALS!")
  end
end

function Trials.All_DLC_TrialsResolved()
  local errorcillo = false
  if Trials.valorObjetivo then
    for i = 1, #SaveGame.GameMaps do
      if SaveGame.CheckIfMapIsDLC(SaveGame.GameMaps[i]) == true then
        local valorObjetivo = Trials.valorObjetivo[SaveGame.GameMaps[i]]
        if valorObjetivo then
          Trials.SetTrialCompleteByLevel(SaveGame.GameMaps[i], valorObjetivo - 1)
        else
          Game.ConsoleError("ERROR al completar el trial del nivel: " .. SaveGame.GameMaps[i])
          errorcillo = true
        end
      end
    end
    if errorcillo == false then
      Game.ConsoleError([[

ALL TRIALS PASSED!
]])
    end
  else
    Game.ConsoleError("ERROR: Comienza una partida para poder desbloquear todos los TRIALS!")
  end
end

Sound.LoadSound("Sounds/Generic/Objects/Well_Done.wav")

function Trials.TrialFailedMessage()
  Menu.ClearMsg()
  Menu.TempTextRender(Game.GetLangStr("Menu_Trial_Failed"), 0, 3)
  addSF(Menu.SuccessSoundDelay, "", "Trials.LaunchSuccessSound")
end

function Trials.LaunchSuccessSound()
  Sound.PlaySound(player.Pos, "Well_Done", 1, 50, 10000)
end
