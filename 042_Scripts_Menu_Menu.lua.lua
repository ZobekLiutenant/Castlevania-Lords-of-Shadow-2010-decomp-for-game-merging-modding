Menu.EndOfLevelMusicThemeList = {
  "2.8_Dark_Dungeon.ogg",
  "1.6_Half_Ruined_Bridge_Strings.ogg",
  "1.9_LIKE_OF_OBLIBION.ogg",
  "2.2_enchanted_forest.ogg",
  "5.9.1_THE_ABBOT.ogg",
  "6.3_castle_hall.ogg"
}
Menu.EndOfLevelMusicTheme = "music/" .. Menu.EndOfLevelMusicThemeList[1 + (Game.Get("NumLoadLevels") + #Menu.EndOfLevelMusicThemeList - 1) % #Menu.EndOfLevelMusicThemeList]
Menu.PauseVideoMusicTheme = "music/Empty.ogg"
Menu.IsDemoStores = false
Menu.Advanced_VSync0 = -1
Menu.Advanced_VSync = -1
Menu.PrevFullscreen = -1
Menu.KeysChanged = false
Menu.NextKeyToDefine = nil
Menu.LanguageList = {
  {"English", "English"},
  {"Deutsch", "German"},
  {"Fran\231ais", "French"},
  {"Espa\241ol", "Spanish"},
  {"Italiano", "Italian"},
  {
    "Portugu\234s Brasileiro",
    "Brazilian_Portuguese"
  },
  {
    string.char(1) .. "65E5" .. string.char(31) .. string.char(1) .. "672C" .. string.char(31) .. string.char(1) .. "8A9E",
    "Japanese"
  }
}
Menu.ControlsEntries = {
  {
    2,
    0.7,
    -50,
    -15,
    "Menu_Controls_Move"
  },
  {
    29,
    0.7,
    -40,
    -5,
    "Menu_Controls_Switch_Char1"
  },
  {
    28,
    0.7,
    -40,
    -5,
    "Menu_Controls_Reload"
  },
  {
    31,
    0.7,
    -40,
    -5,
    "Menu_Controls_Flashlight"
  },
  {
    30,
    0.7,
    -40,
    -5,
    "Menu_Controls_Melee"
  },
  {
    11,
    0.55,
    -39,
    -6,
    "Menu_Controls_Dodge"
  },
  {
    12,
    0.55,
    -39,
    -4,
    "Menu_Controls_Grip"
  },
  {
    3,
    0.7,
    -50,
    -2,
    "Menu_Controls_Power_Left"
  },
  {
    4,
    0.7,
    -50,
    -2,
    "Menu_Controls_Power_Right"
  },
  {
    5,
    0.6,
    -46,
    -13,
    "Menu_Controls_SecWeapSel"
  },
  {
    67,
    0.6,
    -40,
    -5,
    "Menu_Controls_Absorb_Light"
  },
  {
    66,
    0.6,
    -40,
    -4,
    "Menu_Controls_Absorb_Dark"
  },
  {
    83,
    1,
    -42,
    -8,
    "Menu_Controls_Travel_Book"
  },
  {
    79,
    1,
    -38,
    -9,
    "Menu_Game_Menu"
  }
}
if Game.Get("PreloadMode") == 0 then
  Game.CreateSaveVar("Menu.ShowPlaceHolders", "1")
  Menu.ShowPlaceHolders = Game.GetSaveVar("Menu.ShowPlaceHolders") == "1"
  if Game.Get("toolmode") ~= 0 then
    Menu.isStartUpMenu = false
  else
    Menu.isStartUpMenu = string.upper(string.sub(Game.GetLevelPath(), 8)) == "MENU"
  end
  Menu.WorldMapMenuMode = Menu.isStartUpMenu
end
Menu.bUseFocusScorer = true

function Menu.PreloadTextures()
  Scorer.PreloadTexture("2D/White.alpha.tga")
  Scorer.PreloadTexture("2D/cursor.alpha.tga")
  Scorer.PreloadTexture("2D/Noise.alpha.tga")
  Scorer.PreloadTexture("2D/marker.alpha.tga")
  Scorer.PreloadTexture("2D/Menu/Tabs.alpha.tga", 1)
  Scorer.PreloadTexture("2D/Menu/Slider.alpha.tga", 1)
  Scorer.PreloadTexture("2D/Menu/ExtrasButtons.alpha.tga", 1)
  Scorer.PreloadTexture("2D/Menu/RenderMask.alpha.tga")
  Scorer.PreloadTexture("2D/HUD/HUD.alpha.tga", 1)
  Scorer.PreloadTexture("2D/Menu/Fuego_Libro.alpha.tga", 1)
  Scorer.PreloadTexture("2D/Menu/mapa_viaje_adds.alpha.tga", 1)
  Scorer.PreloadTexture("2D/HUD/HUDBossLife.alpha.tga", 1)
  Scorer.PreloadTexture("2D/HUD/HUDNoise.tga")
  Scorer.PreloadTexture("2D/HUD/HUD2.alpha.tga")
  Scorer.PreloadTexture("2D/Menu/dds/PiPMask.alpha.dds")
  Scorer.PreloadTexture("2D/Menu/dds/Trophies.dds", 1)
  Scorer.PreloadTexture("2D/Menu/dds/trop001.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop002.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop003.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop004.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop005.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop006.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop007.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop008.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop009.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop010.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop011.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop012.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop013.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop014.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop015.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop016.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop017.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop018.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop019.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop020.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop021.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop022.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop023.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop024.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop025.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop026.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop027.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop028.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop029.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop030.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop031.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop032.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop033.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop034.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop035.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop036.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop037.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop038.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop039.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop040.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop041.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop042.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop043.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop044.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop045.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop046.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop047.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop048.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop049.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop050.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop051.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop052.dds")
  Scorer.PreloadTexture("2D/Menu/dds/trop053.dds")
  Scorer.PreloadTexture("2D/Menu/dds/popup_achievements.dds")
  Scorer.PreloadTexture("2D/Menu/dds/logoinbook.dds")
  if Menu.bUseFocusScorer then
    Scorer.PreloadTexture("2D/HUD/HUD2.alpha.tga", 1)
  end
  if Game.Get("Platform") == "PS3" then
    Scorer.PreloadTexture("2D/HUD/HUDps3mg.alpha.tga", 1)
  elseif Game.Get("Platform") == "X360" then
    Scorer.PreloadTexture("2D/HUD/HUDxboxmg.alpha.tga", 1)
  else
    Scorer.PreloadTexture("2D/HUD/HUDpcmg.alpha.tga", 1)
  end
end

function Menu.Preload()
  Menu.SetUpCameras()
  Menu.PreloadTextures()
  Menu.PreloadSounds()
  Preload.PreloadLib("Scripts/Menu/TravelBook.lua", "TravelBook")
end

function Menu.PreloadSounds()
  Sound.LoadSound("Sounds/Generic/Menu/menuclik.wav")
  Game.Set("OnAcceptSound", "menuclik")
  Game.Set("OnAcceptSoundVol", 0.5)
  Sound.LoadSound("Sounds/Generic/Menu/menufocus.wav")
  Game.Set("OnFocusSound", "menufocus")
  Game.Set("OnFocusSoundVol", 0.65)
  for i = 0, 2 do
    Sound.LoadSound("Sounds/Generic/Menu/PageFwd" .. i .. ".wav")
    Sound.LoadSound("Sounds/Generic/Menu/PageBack" .. i .. ".wav")
  end
  Sound.LoadSound("Sounds/Generic/Menu/OpenBook.wav")
  Sound.LoadSound("Sounds/Generic/Menu/CloseBook.wav")
  Sound.LoadSound("Sounds/Generic/Menu/BookFadeIn.wav")
  Sound.LoadSound("Sounds/Generic/Menu/BookFadeOut.wav")
  Sound.LoadSound("Sounds/Generic/Menu/BookFadeInLarge.wav")
  Game.Set("OnTurnPageFwdSound", "PageFwd")
  Game.Set("OnTurnPageBackSound", "PageBack")
  Game.Set("OnTurnPageSoundVol", 1)
  Game.Set("NumSoundsTurnPage", 3)
  Game.Set("OnOpenBookSound", "OpenBook")
  Game.Set("OnOpenBookSoundVolume", 1)
  Game.Set("OnCloseBookSound", "CloseBook")
  Game.Set("OnCloseBookSoundVolume", 1)
  Game.Set("OnFadeInBookSound", "BookFadeIn")
  Game.Set("OnFadeInBookSoundVolume", 0.3)
  Game.Set("OnFadeOutBookSound", "BookFadeOut")
  Game.Set("OnFadeOutBookSoundVolume", 0.3)
  Game.Set("OnBookFirstAppearSound", "BookFadeInLarge")
  Game.Set("OnBookFirstAppearSoundVolume", 1)
  Sound.LoadSound("Sounds/Generic/Menu/ExpPoints.wav")
  Game.Set("SoundNameExpPoints", "ExpPoints")
  Sound.LoadSound("Sounds/Generic/Menu/TutorialExpPoints.wav")
  Game.Set("SoundNameTutorialExpPoints", "TutorialExpPoints")
  Game.Set("SoundVolExpPoints", 1)
  for i = 1, 3 do
    Sound.LoadSound("Sounds/Generic/Menu/Dag_0" .. i .. ".wav")
    Sound.LoadSound("Sounds/Generic/Menu/Hada_0" .. i .. ".wav")
    Sound.LoadSound("Sounds/Generic/Menu/Vial_0" .. i .. ".wav")
  end
  Sound.LoadSound("Sounds/Generic/Menu/Cris_01.wav")
  Sound.LoadSound("Sounds/Generic/Menu/Cris_Full_01.wav")
  Sound.LoadSound("Sounds/Generic/Menu/Sound_Up.wav")
  Sound.LoadSound("Sounds/Generic/Menu/Sound_Up_Cristal.wav")
  Sound.LoadSound("Sounds/Generic/Menu/Gem_ScorerLock.wav")
  Sound.LoadSound("Sounds/Generic/Menu/Gem_ScorerLock_5.wav")
  Sound.LoadSound("Sounds/Generic/Menu/Pergamino.wav")
  Sound.LoadSound("Sounds/Generic/Menu/SwitchWeapon.wav")
  Game.Set("SoundNameGemLock", "Gem_ScorerLock")
  Game.Set("SoundNameGemLockAll", "Gem_ScorerLock_5")
  Game.Set("SoundNameTravelBook", "Pergamino")
  Sound.LoadSound("Sounds/Chars/Belmont/HBeat_03.wav")
  Game.Set("SoundNameHeartBeat", "HBeat_03")
  Game.Set("SoundVolHeartBeat", 1)
  Game.Set("SoundTimeHeartBeat", 30)
  local g
  g = Game.CreateGvar("SoundRndLock", "int")
  g.Value = 3
  g.Default = 3
  g = Game.CreateGvar("SoundVolUp", "float")
  g.Value = 1
  g.Default = 1
  g = Game.CreateGvar("SoundNameLockDag", "string")
  g.Value = "Dag_0"
  g.Default = "Dag_0"
  g = Game.CreateGvar("SoundNameLockHada", "string")
  g.Value = "Hada_0"
  g.Default = "Hada_0"
  g = Game.CreateGvar("SoundNameLockVial", "string")
  g.Value = "Vial_0"
  g.Default = "Vial_0"
  g = Game.CreateGvar("SoundNameLockCris", "string")
  g.Value = "Cris_01"
  g.Default = "Cris_01"
  g = Game.CreateGvar("SoundNameLockCrisFull", "string")
  g.Value = "Cris_Full_01"
  g.Default = "Cris_Full_01"
end

function Menu.main()
  Scorer.AddSprite(0, "HUD", "2D/HUD/HUD.alpha.tga", "Blend", false, true)
  Scorer.AddSprite(0, "HUDAlpha", "2D/HUD/HUD.alpha.tga", "AddAlpha", false, true)
  Scorer.AddSprite(0, "HUD2", "2D/HUD/HUD2.alpha.tga", "Blend", false, true)
  Scorer.AddSprite(0, "HUD2Alpha", "2D/HUD/HUD2.alpha.tga", "AddAlpha", false, true)
  Scorer.AddSprite(0, "BOOK", "2D/Menu/BOOK_Lacerias.alpha.tga", "Blend", false, true)
  local inicioNombreNivel = Game.Split(init.LevelName, "_")
  if inicioNombreNivel[1] == "level.dlc" then
    Scorer.PreloadTexture("2D/HUD/LauraHUD.alpha.tga", 1)
    Scorer.PreloadTexture("2D/HUD/sangre.tga")
  end
  if Game.Get("Platform") == "X360" then
    Scorer.PreloadTexture("2D/Menu/Reliquia.alpha.tga", 1)
  end
  Menu.UseScorer = true
  Menu.BigFont = "HoratioBig"
  Menu.AverageFont = "Horatio"
  Menu.SmallFont = "HoratioSmall"
  Menu.LittleFont = "HoratioLittle"
  Menu.TinyFont = "HoratioTiny"
  Menu.Message = "Message"
  Game.Set("EscapeEvent", "Menu.MenuBookShow")
  Game.Set("MainMissionEvent", "Menu.TravelBookShow")
  if Game.Get("ToolMode") == 1 then
    Game.Set("BackBtnMissionInfo", 0)
  else
    Game.Set("BackBtnMissionInfo", 1)
  end
  if Game.Get("Platform") ~= "PC" then
    Input.ResetToDefault()
  end
  Menu.TitleColor = Color(63, 47, 26)
  Menu.ItemColor = Color(63, 47, 26)
  Menu.BrownColor = Color(255, 192, 64, 255)
  Menu.DangerColor = Color(89, 40, 39, 255)
  Menu.PreloadSounds()
  if Menu.isStartUpMenu then
    Sound.PauseMusic(false)
    Game.PreloadLibrary("Scripts/Menu/MainMenu.lua", "MainMenu")
    Game.AddScheduledFunc(0, "Run_Startup_Menu", "MainMenu.Init")
  else
    Sound.PauseMusic(true)
  end
  Game.PreloadLibrary("Scripts/Menu/WorldMapRegions/MainMap.lua", "MainMap", false)
  for i = 1, #SaveGame.GameChapters do
    Game.PreloadLibrary("Scripts/Menu/WorldMapRegions/Capitulo" .. i .. ".lua", "Capitulo" .. i, false)
  end
  Game.PreloadLibrary("Scripts/Menu/WarioMsg.lua", "WarioMsg")
  Game.PreloadLibrary("Scripts/Menu/ModalMsg.lua", "ModalMsg")
  Menu.TutoDefaultDrawTime = 0.4
  Menu.TutoDefaultTimesForMantained = 5
  Menu.TutoDefaultMantainedTime = 4
  Menu.TutoBackCounter = 25
  Menu.TutoDefaultColor0 = V3D(0, 0, 0)
  Menu.TutoDefaultColor1 = V3D(128, 128, 128)
  Menu.TutoDefaultColor2 = V3D(128, 64, 64)
  Menu.TutoCurrentColor = Menu.TutoDefaultColor1
  Menu.TutoCurrentDrawTime = Menu.TutoDefaultDrawTime
  Scorer.SetMsgBackColor(0, 0, 0, 128, 0.1)
  Menu.SuccessSoundDelay = 0.8
end

function Menu.MenuBookShow()
  Game.GetMenu():NeedRender()
  Game.SetLoadingScreen("2D/Loading/PapelLibro-D.dds")
  Menu.Init()
end

function Menu.TravelBookShow()
  Game.GetMenu():NeedRender()
  Game.SetLoadingScreen("2D/Loading/PapelLibro-D.dds")
  TravelBook.Show()
end

function Menu.Init()
  Game.SetLoadingScreen("2D/Loading/PapelLibro-D.dds")
  Menu.InitMenuSys()
  Menu.MainMenu()
end

function Menu.MainMenu(id, control)
  if Menu.isStartUpMenu then
    MainMenu.MainMenu(id, control)
    return
  end
  if Menu.IsComingBack then
    Menu.TurnPage(false)
  end
  Menu.IsComingBack = false
  Game.Set("InGameMenu", 1)
  Menu.VerticalMenuCallback = Menu.ChangeVerticalMenuBackScreen
  local Menu_BigFont = Menu.BigFont
  local Menu_SmallFont = Menu.SmallFont
  local Menu_Message = Menu.Message
  Menu.SmallFont = "Horatio"
  local isDemo = Game.Get("isDemo") ~= 0
  local MenuOptions = {}
  table.insert(MenuOptions, {
    langstr("Menu_Resume_Game"),
    "Menu.BackToGame"
  })
  if isDemo then
    if player and player.Life == 0 then
      table.insert(MenuOptions, {
        langstr("Menu_Restart_Waypoint"),
        "Menu.RestartWaypoint"
      })
    end
    table.insert(MenuOptions, {
      langstr("Menu_Configuration"),
      "Menu.SettingsBookMenu"
    })
    local isSteamDemoWithOverlay = Game.Get("IsSteamOverlayEnabled") ~= 0 and Game.Get("IsSteamDemo") ~= 0
    if isSteamDemoWithOverlay then
      table.insert(MenuOptions, {
        langstr("Steam_Buy_Full_Game"),
        "Menu.BuyFullGame"
      })
    end
    table.insert(MenuOptions, {
      langstr("Demo_Restart_Demo"),
      "SaveGame.RestartDemo"
    })
  else
    if init.level_name ~= "6_3_game_room" or Menu.WorldMapMenuMode then
      table.insert(MenuOptions, {
        langstr("Menu_Restart_Waypoint"),
        "Menu.RestartWaypointGameMenu"
      })
    end
    local levelList = Game.Split(Game.Get("VisitedLevels"), ",")
    if 1 < #levelList then
      table.insert(MenuOptions, {
        langstr("Menu_Exit_Level"),
        "WorldMap.HistoricMenu"
      })
    end
    table.insert(MenuOptions, {
      langstr("Menu_Configuration"),
      "Menu.SettingsBookMenu"
    })
    table.insert(MenuOptions, {
      langstr("Menu_Extras"),
      "WorldMap.Extras"
    })
  end
  if Menu.IsDebugMenuActive() or Game.Get("RetailType") ~= 0 then
    table.insert(MenuOptions, {
      "Debug",
      "Menu.LoDebugMenu"
    })
  end
  if not SaveGame.bCanLoadWaypoint() or Menu.WorldMapMenuMode then
    table.remove(MenuOptions, 2)
  end
  local canCloseBook = true
  if Team.isGameOver() or Menu.WorldMapMenuMode then
    table.remove(MenuOptions, 1)
    canCloseBook = false
  end
  if Game.Get("Platform") == "PC" then
    if Game.Get("isDemo") == 0 then
      table.insert(MenuOptions, {
        langstr("Menu_ExitGame"),
        "Menu.ExitGameMenu"
      })
    else
      table.insert(MenuOptions, {
        langstr("Demo_Exit"),
        "Menu.ExitGameMenu"
      })
    end
  end
  if Menu.WorldMapMenuMode then
    Game.SetLoadingScreen("2D/Loading/Menu_Inicio.DDS")
    Game.SetOverlayScreen("2D/Loading/Menu_Inicio_Overlay.dds")
    Menu.VerticalMenu("", MenuOptions, "Menu.BackToGame", nil, 210, nil, nil, true, nil, nil, 560)
  else
    Menu.VerticalMenu("", MenuOptions, "Menu.BackToGame", nil, nil, nil, nil, true)
    Game.SetLoadingScreen("2D/Loading/PapelLibro-D.dds")
  end
  if Game.Get("IsSteamDemo") ~= 0 and Game.Get("IsSteamFullGameAvailable") == 0 then
    Scorer.GetItem(0, "Itm3_R").UseAlpha = 1
    Scorer.GetItem(0, "Itm3_R").Alpha = 128
    Scorer.GetItem(0, "Itm2_R").Down = "Itm4_R"
    Scorer.GetItem(0, "Itm4_R").Up = "Itm2_R"
  end
  Menu.BigFont = Menu_BigFont
  Menu.SmallFont = Menu_SmallFont
  Menu.Message = Menu_Message
  Menu.AddLogo(0)
  Menu.DrawBackMenu = Menu.DefaultBackMenuFunc
  if canCloseBook then
    Menu.ShowNavigationHUD("Menu_Nav_CloseBook", "Menu_Nav_Select")
  else
    Menu.ShowNavigationHUD(nil, "Menu_Nav_Select")
  end
end

function Menu.AddHideDebugOptions()
  if Menu.IsDebugMenuActive() then
    local mit
    mit = Scorer.NewItem(0, "ItmDebugL", "Text")
    mit.Text = ""
    mit.OnAccept = "Menu.DebugMenuIntL"
    mit.Pos = V2D(320, 320)
    Menu.LinkLR(mit, Scorer.GetItem(0, "Itm1_R"))
    mit = Scorer.NewItem(0, "ItmDebugR", "Text")
    mit.Text = ""
    mit.OnAccept = "Menu.DebugMenuIntR"
    mit.Pos = V2D(320, 320)
    Menu.LinkLR(Scorer.GetItem(0, "Itm1_R"), mit)
  end
end

function Menu.IsDebugMenuActive()
  if Game.Get("RetailType") == -1 and Game.Get("isDemo") == 0 then
    return true
  end
  return false
end

Menu.LoDebugOptions = {
  {
    "Change Level",
    "Menu.ChangeLevelMenu(0,\"\")"
  },
  {
    "Game Version",
    "Menu.DebugBoolean(\"RenderGameVersion\",0,1)",
    "RenderGameVersion"
  },
  {
    "Listener in Camera",
    "Menu.DebugBoolean(\"ListenerAllwaysInCam\",0,1)",
    "ListenerAllwaysInCam"
  },
  {
    "God Mode",
    "Game.Set(\"DebugOptionActivated\", true); Menu.DebugGodMode()",
    "GodMode"
  },
  {
    "Beefed Up",
    "Game.Set(\"DebugOptionActivated\", true); Menu.BeefedUpMode()"
  },
  {
    "Killing Machine",
    "Game.Set(\"DebugOptionActivated\", true); Menu.KillingMachineMode()"
  },
  {
    "Play Scene",
    "Menu.NewPlaySceneMenu(0,\"\")"
  },
  {
    "Play Video Exclusive",
    "Menu.PlayVideoList(0,\"\",true)"
  },
  {
    "Next Checkpoint",
    "Game.Set(\"DebugOptionActivated\", true); Menu.DebugLoadNextCheckPoint()"
  },
  {
    "Previous Checkpoint",
    "Game.Set(\"DebugOptionActivated\", true); Menu.DebugLoadPrevCheckPoint()"
  },
  {
    "Finish ALL",
    "Menu.FinishAll()"
  },
  {
    "SaveGame",
    "Game.Set(\"SaveGameAfterDrawCallback\", \"SaveGame.ActualHardSaveGame\")"
  },
  {
    "SaveGameBackground",
    "Game.Set(\"AfteHardSaveGame\",nil);Game.HardSaveGameBackground()"
  },
  {
    "LoadGame",
    "Game.Set(\"SaveGameAfterDrawCallback\", \"SaveGame.HardLoadGame\")"
  }
}
if Menu.IsDebugMenuActive() then
  Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
    "Play Video list",
    "Menu.PlayVideoList(0,\"\",false)"
  }
  Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
    "Finish All Levels",
    "Menu.FinishAllGame()"
  }
  Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
    "Finish All Trials",
    "Menu.FinishAllTrials()"
  }
  Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
    "Unlock All TBook Cards",
    "TravelBook.UnlockAll()"
  }
  Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
    "Unlock&Buy All Artwork",
    "Menu.UnlockAllArtwork()"
  }
  Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
    "Stepped Completion",
    "Menu.SteppedCompletion()"
  }
  Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
    "Show achievements",
    "Menu.DebugShowAchievements()"
  }
  if Game.Get("Platform") == "PS3" then
    Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
      "PS3_SaveData_ListDelete",
      "Game.Set(\"SaveGameAfterDrawCallback\", \"SaveGame.ActualDeleteListPS3\")"
    }
  end
  if Game.Get("Platform") == "PC" then
    Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
      "Copy files from Cloud",
      "Game.Set(\"SaveGameAfterDrawCallback\", \"SaveGame.ActualCopyFileFromCloud\")"
    }
    Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
      "Copy files to Cloud",
      "Game.Set(\"SaveGameAfterDrawCallback\", \"SaveGame.ActualCopyFileToCloud\")"
    }
    Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
      "Delete all Cloud files",
      "Game.Set(\"SaveGameAfterDrawCallback\", \"SaveGame.ActualDeleteCloudFile\")"
    }
    Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
      "Clear achievements",
      "Game.Set(\"SaveGameAfterDrawCallback\", \"SaveGame.ActualClearAchievements\")"
    }
  end
  Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
    "Hidden debug menu 1",
    "Menu.DebugMenuIntL()"
  }
  Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
    "Hidden debug menu 2",
    "Menu.DebugMenuIntR()"
  }
  Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
    "Toggle Task Monitor",
    "Game.Set(\"TM\", 1 - Game.Get(\"TM\"))"
  }
  if Game.Get("Platform") == "PC" then
    Menu.LoDebugOptions[#Menu.LoDebugOptions + 1] = {
      "Hard exit",
      "Game.Set(\"SaveGameAfterDrawCallback\", \"Game.HardExit\")"
    }
  end
end

function Menu.DebugLoadNextCheckPoint()
  if MapSpawnPlayers ~= nil then
    QuickConsole.iSpawnPos = (QuickConsole.iSpawnPos + #MapSpawnPlayers.Positions - 2) % #MapSpawnPlayers.Positions + 1
    local spawnpos = MapSpawnPlayers.Positions[QuickConsole.iSpawnPos]
    player.Pos = spawnpos[4][2]
    player.Ang = V3D(0, spawnpos[5][2], 0)
  end
end

function Menu.DebugLoadPrevCheckPoint()
  if MapSpawnPlayers ~= nil then
    QuickConsole.iSpawnPos = QuickConsole.iSpawnPos % #MapSpawnPlayers.Positions + 1
    local spawnpos = MapSpawnPlayers.Positions[QuickConsole.iSpawnPos]
    player.Pos = spawnpos[4][2]
    player.Ang = V3D(0, spawnpos[5][2], 0)
  end
end

leftRum = 0.5
rightRum = 0.5
timeRum = 2

function Menu.DebugVibration()
  local options = {}
  options[#options + 1] = {
    "Change Left",
    "Menu.TryRum"
  }
  options[#options + 1] = {
    "Change Right",
    "Menu.TryRum"
  }
  options[#options + 1] = {
    "Change Time",
    "Menu.TryRum"
  }
  Menu.VerticalMenu("Try Rumble", options, "Menu.MainMenu", Menu.SmallFont, 120, 28)
  Scorer.GetItem(0, "Itm1").OnGainFocus = "Menu.WriteRum"
  Scorer.GetItem(0, "Itm1").onLeft = "Menu.SubstractLeft"
  Scorer.GetItem(0, "Itm1").onRight = "Menu.AddLeft"
  Scorer.GetItem(0, "Itm2").OnGainFocus = "Menu.WriteRum"
  Scorer.GetItem(0, "Itm2").onLeft = "Menu.SubstractRight"
  Scorer.GetItem(0, "Itm2").onRight = "Menu.AddRight"
  Scorer.GetItem(0, "Itm3").OnGainFocus = "Menu.WriteRum"
  Scorer.GetItem(0, "Itm3").onLeft = "Menu.SubstractTime"
  Scorer.GetItem(0, "Itm3").onRight = "Menu.AddTime"
end

function Menu.AddLeft()
  leftRum = leftRum + 0.1
  if leftRum > 1 then
    leftRum = 1
  end
  Menu.WriteRum()
end

function Menu.SubstractLeft()
  leftRum = leftRum - 0.1
  if leftRum <= 0 then
    leftRum = 0
  end
  Menu.WriteRum()
end

function Menu.AddRight()
  rightRum = rightRum + 0.1
  if rightRum > 1 then
    rightRum = 1
  end
  Menu.WriteRum()
end

function Menu.SubstractRight()
  rightRum = rightRum - 0.1
  if rightRum <= 0 then
    rightRum = 0
  end
  Menu.WriteRum()
end

function Menu.AddTime()
  timeRum = timeRum + 0.1
  if timeRum > 10 then
    timeRum = 10
  end
  Menu.WriteRum()
end

function Menu.SubstractTime()
  timeRum = timeRum - 0.1
  if timeRum <= 0 then
    timeRum = 0
  end
  Menu.WriteRum()
end

function Menu.TryRum()
  Menu.WriteRum()
  Input.SetActionSet("Walk")
  addSF(timeRum, "rumm", "Menu.BackToMenuMode")
  Input.Rumble(0, leftRum, rightRum, timeRum)
end

function Menu.BackToMenuMode()
  Input.SetActionSet("Menu")
end

function Menu.WriteRum()
  local RumItem = Scorer.GetItem(0, "RumItem")
  if RumItem ~= nil then
    RumItem.visible = 1
  else
    local textoWarning = string.format([[
Left: %f
 Right: %f
 Time: %f
]], leftRum, rightRum, timeRum)
    local textoSplitted = Scorer.SplitString(textoWarning, "Message", 270)
    for j = 1, #textoSplitted do
      Scorer.NewItem(0, "RumItem" .. j, "Text", 1)
      Scorer.GetItem(0, "RumItem" .. j).Align = "Center"
      Scorer.GetItem(0, "RumItem" .. j).Font = Menu.LittleFont
      Scorer.GetItem(0, "RumItem" .. j).Color = Menu.TitleColor
      Scorer.GetItem(0, "RumItem" .. j).Pos = V2D(512, 160 + j * 20)
      Scorer.GetItem(0, "RumItem" .. j).UseAlpha = 1
      Scorer.GetItem(0, "RumItem" .. j).Alpha = 200
      Scorer.GetItem(0, "RumItem" .. j).Text = textoSplitted[j]
    end
  end
end

function Menu.WriteWarningCheckpointText()
  local warningCheckpointItem = Scorer.GetItem(0, "WarningCheckpoint")
  if warningCheckpointItem ~= nil then
    warningCheckpointItem.visible = 1
  else
    local textoWarning = ""
    local textoSplitted = Scorer.SplitString(textoWarning, "Message", 270)
    for j = 1, #textoSplitted do
      Scorer.NewItem(0, "warningCheckpointItem" .. j, "Text", 1)
      Scorer.GetItem(0, "warningCheckpointItem" .. j).Align = "Center"
      Scorer.GetItem(0, "warningCheckpointItem" .. j).Font = Menu.LittleFont
      Scorer.GetItem(0, "warningCheckpointItem" .. j).Color = Menu.TitleColor
      Scorer.GetItem(0, "warningCheckpointItem" .. j).Pos = V2D(512, 160 + j * 20)
      Scorer.GetItem(0, "warningCheckpointItem" .. j).UseAlpha = 1
      Scorer.GetItem(0, "warningCheckpointItem" .. j).Alpha = 200
      Scorer.GetItem(0, "warningCheckpointItem" .. j).Text = textoSplitted[j]
    end
  end
end

function Menu.ClearWarningCheckpointText()
  local warningCheckpointItem = Scorer.GetItem(0, "WarningCheckpoint")
  if warningCheckpointItem ~= nil then
    warningCheckpointItem.visible = 0
  end
end

Menu.VideoList = {
  "1_1_Intro.bik",
  "1_3_1_Sec2_Dream_Pan.bik",
  "1_4_2_9_BigJump_S3.bik",
  "1_7_1_Pan.bik",
  "1_8_1_Revelations.bik",
  "1_9_2_Marie.bik",
  "2_7_ClaudiaShowsUp.bik",
  "2_8_0_CrystalPower.bik",
  "2_8_1_Ambush_Sec2.bik",
  "2_10_1_BlackKnightDeath.bik",
  "2_10_ClaudiasDeath.bik",
  "3_5_PowerSpirits.bik",
  "5_9_1_TheAbbot.bik",
  "5_10_1_FareWell.bik",
  "5_10_1_FareWell_B.bik",
  "6_4_GamesRoom.bik",
  "7_4_1_VampiresMercy.bik",
  "7_4_VioletChamber.bik",
  "8_5_1_MirrorOfFate.bik",
  "9_2_1_BabaYaga.bik",
  "9_4_1_WitchsSpell.bik",
  "9_4_WitchCottage.bik",
  "11_7_1_DracoApp.bik",
  "12_2_1 Ending_Flash1.bik",
  "12_2_1 Ending_Flash2.bik",
  "12_2_1 Ending_SEC5.bik",
  "12_4_TheEnd.bik",
  "13_Epilogue.bik",
  "DLC1/13_1_Intro.bik",
  "DLC1/13_2_Hall.bik",
  "DLC1/13_3_Tower.bik",
  "DLC2/13_2_99_End.bik",
  "Trailer.bik",
  "konami.bik",
  "MercurySteam.bik",
  "KojimaProductions.bik",
  "Legal.bik",
  "CLOS1_PC_End_Slate.bik"
}

function Menu.PlayVideoList(id, control, exclusive)
  SoundUtils.SceneStopMusic()
  local options = {}
  local templist = {}
  templist = Menu.VideoList
  for i = 1, #templist do
    if not exclusive then
      table.insert(options, {
        templist[i],
        "Menu.PlayVideoListExec"
      })
    else
      table.insert(options, {
        templist[i],
        "Menu.PlayVideoListExclusive"
      })
    end
  end
  if table.getn(options) > 0 then
    Menu.VerticalMenu("Play Video List", options, "Menu.MainMenu", "Terminal8", 120, 9, false)
  end
  if not exclusive then
    local itm
    itm = Scorer.NewItem(0, "PlayVideo", "Video")
    itm.File = "2D/Menu/RenderMask.alpha.tga"
    itm.Unit = 1
    itm.Pos = V2D(320, 240)
    itm.Scale = V2D(320, 240)
    itm.Color = Color(255, 241, 190, 255)
    itm.Pivot = V2D(0, 0)
    itm.PlayFrame = "Video/000_oneframe.bik"
  end
  Menu.DrawBackMenu()
end

function Menu.PlayVideoListPause(id, control)
  Menu.DebugBoolean("PlayVideoPause", 0, 1)
end

function Menu.PlayVideoListExec(id, control)
  local video = Scorer.GetItem(id, control).Text
  local playvideo = Scorer.GetItem(id, "PlayVideo")
  playvideo.Play = "Video/" .. video
end

function Menu.PlayVideoListExclusive(id, control)
  local video = Scorer.GetItem(id, control).Text
  Game.Set("PlayVideo", "Video/" .. video)
end

function Menu.GetTimePlaying()
  local sec = Game.GetTotalTimePlaying()
  local min = math.floor(sec / 60)
  sec = sec - min * 60
  local hs = math.floor(min / 60)
  min = min - hs * 60
  return hs, min, sec
end

function Menu.LoDebugMenu(id, control)
  Menu.DebugOptions = Menu.LoDebugOptions
  Menu.DebugMenu(id, control, false, 0)
  local hs, min, sec = Menu.GetTimePlaying()
  local sititle = Scorer.NewItem(0, "TimePlaying", "Text")
  sititle.Font = Menu.SmallFont
  sititle.Text = "Time played: " .. string.format("%0.0f:%0.0f:%0.0f", hs, min, sec)
  sititle.Pos = V2D(60, 20)
  sititle.Color = Menu.TitleColor
  sititle.Effect = "Shadow"
  sititle.Size = V3D(0, 0)
  sititle.Outside = 1
  Game.SetLoadingScreen("2D/Loading/PapelLibro-D.dds")
end

function Menu.NewPlaySceneMenu(id, control)
  local options = {}
  for idx in pairs(Scene.Scenes) do
    local isVideo = Scene.GetVar(idx, "VideoOnConsole")
    if not isVideo then
      table.insert(options, {
        idx,
        "Menu.NewPlaySceneDebug"
      })
    end
  end
  if table.getn(options) > 0 then
    Menu.VerticalMenu("Debug / Play Scene", options, "Menu.MainMenu", Menu.TinyFont, 80, 18)
  end
end

function Menu.PlaySceneMenu(id, control)
  local options = {}
  for idx in pairs(Scene.Scenes) do
    table.insert(options, {
      idx,
      "Menu.PlaySceneDebug"
    })
  end
  if table.getn(options) > 0 then
    Menu.VerticalMenu("Debug / Play Scene", options, "Menu.MainMenu", Menu.TinyFont, 80, 18)
  end
end

function Menu.NewPlaySceneDebug(id, control)
  SoundUtils.SceneStopMusic()
  local name = Scorer.GetItem(id, control).Text
  Game.GetMenu():DoHide()
  Menu.BackToGame(id, control)
  Scene.Scenes[name].NextScene = nil
  Scene.Scenes[name].EscapeScene = true
  Scene.Play(name)
  Scene.EndOfSubSceneCallback = nil
  Scene.EndOfSceneCallback = nil
  addSF(0.1, "ResetEndSceneCallbacks", "Menu.ResetEndOfSceneCallback")
  if Scene.IsPlaying == true then
    Game.ConsoleError("There is another Scene being played, it is DANGEROUS!\n")
  end
end

function Menu.ResetEndOfSceneCallback()
  Scene.EndOfSubSceneCallback = nil
  Scene.EndOfSceneCallback = nil
end

function Menu.PlaySceneDebug(id, control)
  local name = Scorer.GetItem(id, control).Text
  Game.GetMenu():DoHide()
  Menu.BackToGame(id, control)
  Scene.Play(name)
end

function Menu.UnlockHistoricMissions()
  local str = "menu"
  for i = 1, #SaveGame.GameMaps do
    str = str .. "," .. SaveGame.GameMaps[i]
  end
  Game.Set("VisitedLevels", str)
  WorldMap.SetDLCComplete(1, true)
  WorldMap.SetDLCComplete(2, true)
end

function Menu.ChangeLevelMenu(id, control)
  local options = {}
  for i = 1, #SaveGame.GameChapters do
    options[i] = {
      SaveGame.GameChapters[i].Name,
      "Menu.ChangChapterMenu"
    }
  end
  options[#options + 1] = {
    "Extras",
    "Menu.ChangChapterMenu"
  }
  Menu.VerticalMenu("Change Level", options, "Menu.LoDebugMenu", Menu.TinyFont, 125, 18)
end

function Menu.ChangChapterMenu(id, control)
  local options = {}
  local chapt
  if Scorer.GetItem(id, control) then
    chapt = Scorer.GetItem(id, control).Text
  else
    chapt = capituloACargar
  end
  local a
  if chapt == "Extras" then
    a = SaveGame.ExtrasMaps
  elseif chapt == langstr("Menu_Question_No") or chapt == langstr("Menu_Question_Yes") then
    a = SaveGame.GameChapters[capituloACargar]
    chapt = capituloACargar
  else
    a = SaveGame.GameChapters[chapt]
  end
  for i = 1, #a do
    options[i] = {
      a[i],
      "Menu.ChooseLevelTrial"
    }
  end
  capituloACargar = chapt
  Menu.VerticalMenu(chapt, options, "Menu.ChangeLevelMenu", Menu.TinyFont, 125, 18)
end

function Menu.ChooseLevelTrial(id, control)
  levelACargar = string.lower(Scorer.GetItem(id, control).Text)
  Menu.YesNoMenu("Play in Trial Mode?", "Menu.ChangLevelExecTrial", "Menu.ChangLevelExecNoTrial", "", false, levelACargar, false)
  Scorer.SetOnCancel(0, "Menu.ChangChapterMenu")
end

function Menu.ChangLevelDemo(id, control)
  local map = Scorer.GetItem(id, control).uData.Level
  SaveGame.NewLevel(map)
end

function Menu.ChangLevelExecTrial(id, control)
  Game.Set("DebugOptionActivated", true)
  SaveGame.VisitAllLevels()
  Game.SoftSaveConfig()
  local map = levelACargar
  Game.Set("SaveGameActive", 0)
  Game.Set("SaveGameSlot", 1)
  Game.Set("SaveSlotUsed", 1)
  Game.Set("gvPlayerStatus", "")
  Game.Set("gvExperience", 1000000)
  Game.Set("gvGameFinished", true)
  WorldMap.SetDLCComplete(1, true)
  WorldMap.SetDLCComplete(2, true)
  Game.DelSaveVars("")
  Game.SetSaveVar(map .. ".Spawn.Point", "0")
  Game.SetSaveVar("LevelName", map)
  Game.SoftSaveAutoSave()
  Game.Set("LoadSaveVars", true)
  init.LevelFile = "Levels/" .. string.lower(map)
  SaveGame.LoadLevel(string.lower(map))
end

function Menu.ChangLevelExecNoTrial(id, control)
  Game.Set("DebugOptionActivated", true)
  SaveGame.VisitAllLevelsTillChosen(levelACargar)
  Game.SoftSaveConfig()
  local map = levelACargar
  Game.Set("SaveGameActive", 0)
  Game.Set("SaveGameSlot", 0)
  Game.Set("SaveSlotUsed", 1)
  Game.Set("gvPlayerStatus", "")
  Game.Set("gvExperience", 1000000)
  Game.Set("gvGameFinished", SaveGame.CheckIfMapIsDLC(levelACargar))
  WorldMap.SetDLCComplete(1, false)
  WorldMap.SetDLCComplete(2, false)
  Game.DelSaveVars("")
  Game.SetSaveVar(map .. ".Spawn.Point", "0")
  Game.SetSaveVar("LevelName", map)
  Game.Set("LoadSaveVars", true)
  Game.SoftSaveAutoSave()
  init.LevelFile = "Levels/" .. string.lower(map)
  SaveGame.LoadLevel(string.lower(map))
end

function Menu.ChangLevelExec(id, control)
  SaveGame.VisitAllLevels()
  Game.SoftSaveConfig()
  local map = string.lower(Scorer.GetItem(id, control).Text)
  Game.Set("SaveGameActive", 0)
  Game.Set("SaveGameSlot", 0)
  Game.Set("gvPlayerStatus", "")
  Game.Set("gvExperience", 1000000)
  Game.DelSaveVars("")
  Game.SetSaveVar(map .. ".Spawn.Point", "0")
  Game.SetSaveVar("LevelName", map)
  Game.SoftSaveAutoSave()
  Game.Set("LoadSaveVars", true)
  SaveGame.NewLevel(map)
end

function Menu.LoadSaveGameExec(id, control)
  local map = Scorer.GetItem(id, control).Text
  SaveGame.LoadGame(string.sub(map, 7))
end

Menu.Configurables = {
  {
    "Walk",
    "Forward",
    false,
    "Forward",
    "PC_Menu_Defining_Up",
    15
  },
  {
    "Walk",
    "Jump",
    false,
    "Jump"
  },
  {
    "Walk",
    "DirectionalAttack",
    false,
    "DirectionalAttack"
  },
  {
    "Walk",
    "AreaAttack",
    false,
    "AreaAttack"
  },
  {
    "Walk",
    "RangedAttack",
    false,
    "RangedAttack"
  },
  {
    "Walk",
    "Parry",
    false,
    "Parry"
  },
  {
    "Walk",
    "Grip",
    false,
    "Grip"
  },
  {
    "Walk",
    "Special",
    false,
    "Special"
  },
  {
    "Walk",
    "SpecialPlus",
    false,
    "SpecialPlus"
  },
  {
    "Walk",
    "DigitalUp",
    false,
    "DigitalUp",
    "PC_Menu_Defining_Up",
    18
  },
  {
    "Walk",
    "TakeSpecial",
    false,
    "TakeSpecial"
  },
  {
    "Walk",
    "TakeSpecialPlus",
    false,
    "TakeSpecialPlus"
  },
  {
    "Walk",
    "MissionInfo",
    false,
    "MissionInfo"
  },
  {
    "Walk",
    "MainMenu",
    false,
    "MainMenu"
  },
  {
    "Walk",
    "Backward",
    false,
    "Backward",
    "PC_Menu_Defining_Down",
    16
  },
  {
    "Walk",
    "StrafeTurnLeft",
    false,
    "StrafeTurnLeft",
    "PC_Menu_Defining_Left",
    17
  },
  {
    "Walk",
    "StrafeTurnRight",
    false,
    "StrafeTurnRight",
    "PC_Menu_Defining_Right"
  },
  {
    "Walk",
    "DigitalDown",
    false,
    "DigitalDown",
    "PC_Menu_Defining_Down",
    19
  },
  {
    "Walk",
    "DigitalLeft",
    false,
    "DigitalLeft",
    "PC_Menu_Defining_Left",
    20
  },
  {
    "Walk",
    "DigitalRight",
    false,
    "DigitalRight",
    "PC_Menu_Defining_Right"
  }
}

function Menu.ConfigProtoSav(id, control)
  Menu.TurnPage()
  if Game.Get("Platform") == "PC" then
    Menu.LastControlConfig = {}
    local listuky = Menu.Configurables
    for i = 1, #listuky do
      Menu.LastControlConfig[i] = Input.GetDefinedList(0, listuky[i][1], listuky[i][2], 0)
    end
  end
  Menu.ConfigProto(id, control)
end

function Menu.ConfigProto(id, control)
  local itma, itmc, lastEntry, linkedEntry
  if true then
    repeat
      do break end -- pseudo-goto
      Menu.VerticalMenu(langstr("Menu_Configuration"), {
        {
          langstr("X360_Menu_Storage"),
          "Menu.StorageLocation"
        },
        {
          langstr("Menu_Options_Game"),
          "Menu.ConfigGame"
        },
        {
          langstr("Menu_Options_Audio"),
          "Menu.AudioMenu"
        },
        {
          langstr("Menu_Options_Video"),
          "Menu.VideoMenu"
        },
        {
          langstr("Menu_Options_Controls"),
          "Menu.ConfigProto2"
        },
        {
          Menu.GetCancelText(),
          "Menu.RestoreConfig"
        },
        {
          Menu.GetAcceptText(),
          "Menu.SaveConfigMenu"
        }
      }, "Menu.RestoreConfig", Menu.SmallFont, 125)
      itma = Scorer.GetItem(0, "Itm7")
      itma.Y = 380
      itma.X = 400
      itmc = Scorer.GetItem(0, "Itm6")
      itmc.Y = 380
      itmc.X = 60
      lastEntry = "Itm5"
      linkedEntry = "Itm7"
    until true
  else
    local MenuOptions = {
      {
        langstr("Menu_Options_Audio"),
        "Menu.AudioMenu"
      },
      {
        langstr("Menu_Options_Video"),
        "Menu.VideoMenu"
      },
      {
        langstr("Menu_Options_Controls"),
        "Menu.ConfigProto2"
      },
      {
        Menu.GetCancelText(),
        "Menu.RestoreConfig"
      },
      {
        Menu.GetAcceptText(),
        "Menu.SaveConfigMenu"
      }
    }
    if Game.Get("isDemo") == 0 then
      Menu.VerticalMenu(langstr("Menu_Configuration"), MenuOptions, "Menu.RestoreConfig")
    end
    itma = Scorer.GetItem(0, "Itm5")
    itma.Align = "Right"
    itma.GetExtens = 1
    itma.Y = 380
    itma.X = 300
    itmc = Scorer.GetItem(0, "Itm4")
    itmc.Align = "Left"
    itmc.Y = 380
    itmc.X = 20
    lastEntry = "Itm3"
    linkedEntry = "Itm5"
  end
  for i = 1, 4 do
    Menu.LinkLR(Scorer.GetItem(0, "Itm" .. i), itma)
    Menu.LinkLR(itmc, Scorer.GetItem(0, "Itm" .. i))
  end
  Menu.LinkLR(itmc, itma)
  Menu.LinkLR(itma, itmc)
  Menu.LinkUD(Scorer.GetItem(0, lastEntry), Scorer.GetItem(0, linkedEntry))
end

function Menu.CombosDescUp(id, control)
  local desc = Scorer.GetItem(0, "CombosDesc")
  if 0 < desc.FirstLine then
    desc.FirstLine = desc.FirstLine - 1
  end
end

function Menu.CombosDescDown(id, control)
  local desc = Scorer.GetItem(0, "CombosDesc")
  if desc.FirstLine <= desc.NumLines - desc.MaxLines then
    desc.FirstLine = desc.FirstLine + 1
  end
end

function Menu.GenCombosControls(id, control, title, descText)
  Menu.VerticalMenu(title, {
    {
      Menu.GetAcceptText(),
      "Menu.CombosControls"
    }
  }, "Menu.CombosControls", Menu.SmallFont, 160, 35, false)
  itma = Scorer.GetItem(0, "Itm1")
  itma.Y = 380
  itma.X = 400
  local desc = Scorer.NewItem(0, "CombosDesc", "TextScroller")
  desc.Pos = V2D(100, 100)
  desc.MaxLines = 12
  desc.FirstLine = 0
  desc.LineStep = 20
  if Game.Get("PhysicalAspectRatio") < 1.7 then
    desc.LineSplitSize = 450
  else
    desc.LineSplitSize = 450
  end
  desc.BoldFont = "HoratioTiny"
  desc.BoldColor = Color(63, 47, 26, 255)
  desc.IndentFont = "HoratioTiny"
  desc.IndentColor = Color(63, 47, 26, 255)
  desc.Text = descText
  local descUpButton = Scorer.NewItem(0, "DescUp", "Button")
  descUpButton.IsMultiSprite = 1
  descUpButton.HighRes = 1
  descUpButton.File = "2D/Menu/ExtrasButtons.alpha.tga"
  descUpButton.SpriteIndex = 3
  descUpButton.FocusSpriteIndex = 2
  descUpButton.Highlight = 1
  descUpButton.LocalPos = V2D(520, 78)
  descUpButton.W = 30
  descUpButton.H = 32
  descUpButton.FocusPivotX = -2
  descUpButton.FocusPivotY = -2
  descUpButton.Complex = 0
  descUpButton.Visible = 1
  descUpButton.Rotate = 3
  descUpButton.OnAccept = "Menu.CombosDescUp"
  descUpButton.MultiPress = 1
  local descDownButton = Scorer.NewItem(0, "DescDown", "Button")
  descDownButton.IsMultiSprite = 1
  descDownButton.HighRes = 1
  descDownButton.File = "2D/Menu/ExtrasButtons.alpha.tga"
  descDownButton.SpriteIndex = 3
  descDownButton.FocusSpriteIndex = 2
  descDownButton.Highlight = 1
  descDownButton.LocalPos = V2D(520, 342)
  descDownButton.W = 30
  descDownButton.H = 32
  descDownButton.FocusPivotX = -2
  descDownButton.FocusPivotY = -2
  descDownButton.Complex = 0
  descDownButton.Visible = 1
  descDownButton.Rotate = 1
  descDownButton.Mirror = 2
  descDownButton.OnAccept = "Menu.CombosDescDown"
  descDownButton.MultiPress = 1
  Menu.LinkUD(Scorer.GetItem(0, "DescUp"), Scorer.GetItem(0, "DescDown"))
  Menu.LinkUD(Scorer.GetItem(0, "DescDown"), Scorer.GetItem(0, "Itm1"))
  Scorer.SetDefault(0, "DescDown")
  Menu.DrawBackMenu()
end

function Menu.FloorCombosControls(id, control)
  local str = "X360_Floor_Attacks_"
  local platform = Game.Get("Platform")
  if platform == "PS3" then
    str = "PS3_Floor_Attacks_"
  end
  Menu.GenCombosControls(id, control, langstr("Menu_Controls_Combos_Floor"), str)
end

function Menu.AirCombosControls(id, control)
  local str = "X360_Air_Attacks_"
  local platform = Game.Get("Platform")
  if platform == "PS3" then
    str = "PS3_Air_Attacks_"
  end
  Menu.GenCombosControls(id, control, langstr("Menu_Controls_Combos_Air"), str)
end

function Menu.BlokCombosControls(id, control)
  local str = "X360_Blocking_Attacks_"
  local platform = Game.Get("Platform")
  if platform == "PS3" then
    str = "PS3_Blocking_Attacks_"
  end
  Menu.GenCombosControls(id, control, langstr("Menu_Controls_Combos_Blok"), str)
end

function Menu.MagicCombosControls(id, control)
  local str = "X360_Magic_"
  local platform = Game.Get("Platform")
  if platform == "PS3" then
    str = "PS3_Magic_"
  end
  Menu.GenCombosControls(id, control, langstr("Menu_Controls_Combos_Magic"), str)
end

function Menu.CombosControls(id, control)
  Menu.VerticalMenu(langstr("Menu_Controls_Combos"), {
    {
      langstr("Menu_Controls_Combos_Floor"),
      "Menu.FloorCombosControls"
    },
    {
      langstr("Menu_Controls_Combos_Air"),
      "Menu.AirCombosControls"
    },
    {
      langstr("Menu_Controls_Combos_Blok"),
      "Menu.BlokCombosControls"
    },
    {
      langstr("Menu_Controls_Combos_Magic"),
      "Menu.MagicCombosControls"
    },
    {
      Menu.GetAcceptText(),
      "Menu.ConfigProto2"
    }
  }, "Menu.ConfigProto2")
  itma = Scorer.GetItem(0, "Itm5")
  itma.Y = 380
  itma.X = 400
end

function Menu.DoNothingOneParam(param)
end

function Menu.StorageLocation(id, control)
  if Game.IsPlayerSignedIn() == 1 then
    Game.ShowDeviceUI("MainMenu.PreFinalLoadConfigurationXbox", true)
  else
    if Input.GetActionSet() ~= "Menu" then
      Menu.InitMenuSys()
    end
    Menu.AcceptMenuMultiline(langstr("X360_Menu_No_Signed_In_Storage_Device"), "Menu.ConfigProto")
  end
end

function Menu.StorageLocationInGame(id, control)
  if Game.IsPlayerSignedIn() == 1 then
    Game.ShowDeviceUI("Menu.DoNothingOneParam", true)
  else
    if Input.GetActionSet() ~= "Menu" then
      Menu.InitMenuSys()
    end
    Menu.AcceptMenuMultiline(langstr("X360_Menu_No_Signed_In_Storage_Device"), "Menu.MainMenu")
  end
end

function Menu.BackToSettingsBookMenu()
  Menu.TurnPage(true)
  Menu.__SettingsBookMenu__()
end

function Menu.AfterConfigMenu(id, control)
  if Menu.KeysChanged then
    Game.InvalidateKbStrCache()
  end
  local bChangedVSync = false
  local bChangedResolution = false
  local bChangedFullscreen = false
  if Game.Get("Platform") == "PC" then
    if Game.Get("Fullscreen") == 0 then
      Menu.SelectedVideoMode = Game.GetVideoCurrentMode()
    end
    bChangedVSync = 0 <= Menu.Advanced_VSync and Game.Get("VSync") ~= Menu.Advanced_VSync
    bChangedResolution = Game.GetVideoCurrentMode() ~= Menu.SelectedVideoMode
    bChangedFullscreen = Game.Get("Fullscreen") ~= Menu.PrevFullscreen
  end
  local changes = bChangedVSync or bChangedResolution or bChangedFullscreen or Menu.KeysChanged
  if Game.CompareConfig() and (Game.Get("Platform") ~= "PC" or not changes) then
    Menu.IsComingBack = true
    Menu.MainMenu(id, control)
  else
    Menu.TryToSaveConfig(id, control)
  end
  Menu.IsMainCfgMenu = false
end

function Menu.SaveConfigMenu(id, control)
  if Game.Get("SaveGameActive") == 0 then
    Menu.SaveConfig(id, control)
  else
    Menu.YesNoMenu(langstr("Menu_Config_Question"), "Menu.TryToSaveConfig", "Menu.SettingsBookMenu", langstr("Menu_Warning_Config"))
  end
end

function Menu.TryToSaveConfig(id, control)
  if Game.Get("Platform") == "X360" then
    if Game.IsSavedGameDamaged() == 1 then
      Menu.YesNoMenu(langstr("Menu_Config_Question"), "Menu.SaveConfig", "Menu.SettingsBookMenu", langstr("X360_Menu_Corrupt_Content1"))
    else
      Menu.SaveConfig(id, control)
    end
  else
    Menu.SaveConfig(id, control)
  end
end

function Menu.SaveConfig(id, control)
  local bChangedVSync = Menu.Advanced_VSync >= 0 and Game.Get("VSync") ~= Menu.Advanced_VSync
  local bChangedResolution = Game.GetVideoCurrentMode() ~= Menu.SelectedVideoMode
  local bChangedFullscreen = Game.Get("Fullscreen") ~= Menu.PrevFullscreen
  if bChangedVSync and Game.Get("Fullscreen") == 0 then
    Menu.PreviousVSync = Game.Get("VSync")
    Game.Set("VSync", Menu.Advanced_VSync)
    bChangedVSync = false
  end
  if Game.Get("Platform") == "PC" and (bChangedResolution or bChangedVSync or bChangedFullscreen) then
    Menu.PreviousSelectedVideoMode = Game.GetVideoCurrentMode()
    Menu.PreviousVSync = Game.Get("VSync")
    if bChangedVSync then
      Game.Set("VSync", Menu.Advanced_VSync)
    end
    if bChangedFullscreen then
      Game.SetVideoAndWindow(Menu.SelectedVideoMode, Game.Get("Fullscreen"))
    elseif bChangedResolution or bChangedVSync then
      Game.SetVideoCurrentMode(Menu.SelectedVideoMode)
    end
    if bChangedResolution or bChangedFullscreen then
      Game.Set("AfterDrawCallback", "Menu.AfterChangeResolution")
    else
      Menu.SaveConfig2(id, control)
    end
    Game.Set("SavingMsgStr", Game.GetLangStr("Menu_Please_Wait", false))
    Game.Set("SavingMsg", 1)
  else
    Menu.SaveConfig2(id, control)
  end
end

function Menu.AfterChangeResolution()
  Game.Set("SavingMsg", 0)
  Menu.ConfigResolutionMenu(0, "Yes")
end

function Menu.SaveConfig2(id, control)
  Game.Set("ScorerExecuteFunc", "")
  Game.Set("ScorerExecuteTime", 0)
  local itm = Scorer.GetItem(id, control)
  if itm then
    itm.OnAccept = ""
  end
  Menu.IsComingBack = true
  if Game.Get("Platform") == "PC" then
    Game.SaveConfig()
    Menu.PrevFullscreen = Game.Get("Fullscreen")
    Menu.KeysChanged = false
    Input.SetActionSet("Null")
    Game.Set("AfterDrawCallback", "Menu.AfterSaveConfig2")
  else
    AfterSaveCallbackFunc = SaveGame.AfterSaveConfigCallback
    AfterSaveCallbackParam = control
    SaveGame.SaveGameConfig()
  end
end

function Menu.AfterSaveConfig2()
  Game.Set("SavingMsg", 0)
  Game.Set("AfterDrawCallback", "Menu.MainMenu")
  Input.SetActionSet("Menu")
end

function Menu.ConfigResolutionMenu(id, control)
  Menu.YesNoMenu(langstr("Menu_Screen_Question_Resolution"), "Menu.SaveConfig2", "Menu.CancelConfigResolution", langstr("Menu_Screen_Descriptor_Resolution"), nil, nil, nil, true)
  Game.Set("ScorerExecuteTime", Game.Get("ScorerExecuteTime") + 17)
  Game.Set("ScorerExecuteFunc", "Menu.CancelConfigResolution")
end

function Menu.CancelConfigResolution(id, control)
  id = id or 0
  control = control or "No"
  Menu.Advanced_VSync = Menu.PreviousVSync
  Game.Set("VSync", Menu.Advanced_VSync)
  Menu.SelectedVideoMode = Menu.PreviousSelectedVideoMode
  if Game.Get("Fullscreen") ~= Menu.PrevFullscreen then
    Game.Set("Fullscreen", Menu.PrevFullscreen)
    Game.SetVideoAndWindow(Menu.SelectedVideoMode, Menu.PrevFullscreen)
  else
    Game.SetVideoCurrentMode(Menu.SelectedVideoMode)
  end
  Game.Set("AfterDrawCallback", "Menu.AfterCancelResolution")
  Game.Set("SavingMsgStr", Game.GetLangStr("Menu_Please_Wait", false))
  Game.Set("SavingMsg", 1)
end

function Menu.AfterCancelResolution()
  Game.Set("SavingMsg", 0)
  Menu.SaveConfig2(0, "No")
end

function Menu.RestoreConfig(id, control)
  if Game.Get("SaveGameActive") == 0 or Game.CompareConfig() then
    Menu.CancelConfig(id, control)
  else
    Menu.YesNoMenu(langstr("Menu_CancelConfig_Question"), "Menu.CancelConfig", "Menu.SettingsBookMenu", langstr("Menu_Warning_CancelConfig"))
  end
end

function Menu.CancelConfig(id, control)
  Game.SoftLoadConfig()
  if Game.Get("Platform") == "PC" then
    local listuky = Menu.Configurables
    for i = 1, #listuky do
      Menu.SetDefinedList(0, listuky[i][1], listuky[i][2], Menu.LastControlConfig[i])
    end
    Menu.ControllFix()
    Menu.LastControlConfig = nil
    Menu.SelectedVideoMode = Game.GetVideoCurrentMode()
    Menu.Advanced_VSync = Game.Get("VSync")
    Game.SetLanguage(Game.Get("SelectedLanguage"), true)
    Menu.CreateMenuTables()
    Menu.RewritePausedLabel(id)
  else
    Input.ResetToDefault()
  end
  Menu.IsComingBack = true
  return Menu.MainMenu(id, control)
end

function Menu.SliderModify(id, name)
  local itm, si
  si = Scorer.GetItem(id, name)
  if si.uData.invert then
    Game.Set(si.uData.GVar, si.MMValue.x + (si.MMValue.y - si.Value))
  else
    Game.Set(si.uData.GVar, si.Value)
  end
end

function Menu.SliderLeft(id, name, overWritableStep, playSound)
  local itm = Scorer.GetItem(id, name)
  local si = itm.uData.slider
  overWritableStep = defparam(overWritableStep, si.ValueStep)
  playSound = defparam(playSound, true)
  si.Value = si.Value - overWritableStep
  if si.uData.invert then
    Game.Set(si.uData.GVar, si.MMValue.x + (si.MMValue.y - si.Value))
  else
    Game.Set(si.uData.GVar, si.Value)
  end
  if playSound then
    Menu.PlayFocusSound()
  end
end

function Menu.SliderRight(id, name, overWritableStep, playSound)
  local itm = Scorer.GetItem(id, name)
  local si = itm.uData.slider
  overWritableStep = defparam(overWritableStep, si.ValueStep)
  playSound = defparam(playSound, true)
  si.Value = si.Value + overWritableStep
  if si.uData.invert then
    Game.Set(si.uData.GVar, si.MMValue.x + (si.MMValue.y - si.Value))
  else
    Game.Set(si.uData.GVar, si.Value)
  end
  if playSound then
    Menu.PlayFocusSound()
  end
end

function Menu.DoNothing(id, name)
end

function Menu.SliderSet(itm, GVar, Limits, Step, invert)
  local si
  itm.X = 100
  itm.uData.GVar = GVar
  invert = defparam(invert, nil)
  itm.onLeft = "Menu.SliderLeft"
  itm.onRight = "Menu.SliderRight"
  si = itm:NewItem("Slider", "Slider")
  si.HighRes = 1
  si.File = "2D/Menu/Slider.alpha.tga"
  si.LocalPos = V2D(350, 0)
  si.Size = V2D(225, 26)
  si.FocusPivot = V2D(-8, -5)
  si.BackSpriteIndex = 1
  si.FocusBackSpriteIndex = 3
  si.SliderSpriteIndex = 2
  si.FocusSpriteIndex = 4
  si.Color = Color(63, 47, 26, 255)
  si.MMValue = Limits
  si.ValueStep = Step
  si.MarginSize = 15
  si.OnChange = "Menu.SliderModify"
  if invert then
    si.Value = Limits.x + (Limits.y - Game.Get(GVar))
  else
    si.Value = Game.Get(GVar)
  end
  si.uData.GVar = GVar
  si.uData.item = itm
  si.uData.invert = invert
  itm.uData.slider = si
  itm.uData.invert = invert
  return si
end

function Menu.AudioMenu(id, control)
  Menu.VerticalMenu(langstr("Menu_Options_Audio"), {
    {
      langstr("Menu_Audio_SoundVolume"),
      "Menu.DoNothing"
    },
    {
      langstr("Menu_Audio_MusicVolume"),
      "Menu.DoNothing"
    },
    {
      Menu.GetBackText(),
      "Menu.ConfigProto"
    }
  }, "Menu.ConfigProto", nil, 120, 70, false, true, true)
  Menu.SliderSet(Scorer.GetItem(0, "Itm1_R"), "SoundMainVolume", V2D(0, 1), 0.1)
  Menu.SliderSet(Scorer.GetItem(0, "Itm2_R"), "MusicMainVolume", V2D(0, 1), 0.1)
  local item = Scorer.GetItem(0, "Itm1_R")
  item.X = 340
  item.uData.slider.LocalPos = V2D(0, 35)
  item = Scorer.GetItem(0, "Itm2_R")
  item.X = 340
  item.uData.slider.LocalPos = V2D(0, 35)
  item = Scorer.GetItem(0, "Itm3_R")
  item.Y = 380
  item.X = 440
end

if Game.Get("Platform") == "PC" then
  Menu.SelectedVideoMode = Game.GetVideoCurrentMode()
  Menu.Advanced_VSync0 = Game.Get("VSync")
  Menu.Advanced_VSync = Game.Get("VSync")
  Menu.PrevFullscreen = Game.Get("Fullscreen")
end

function Menu.VideoMenu(id, control)
  if Game.Get("Platform") == "PC" then
    Menu.VerticalMenu(langstr("Menu_Options_Video"), {
      {
        langstr("Menu_Video_Gamma"),
        "Menu.DoNothing"
      },
      {
        Menu.Get_Screen_Resolution_Status(),
        "Menu.Switch_Next_Resolution"
      },
      {
        langstr("Menu_Video_Advanced"),
        "Menu.VideoAdvancedMenu"
      },
      {
        Menu.GetBackText(),
        "Menu.ConfigProto"
      }
    }, "Menu.ConfigProto", nil, 140, nil, false, true, true)
    Menu.SliderSet(Scorer.GetItem(0, "Itm1_R"), "RT_CopyRamp", V2D(-1, 1), 0.1)
    local item = Scorer.GetItem(0, "Itm1_R")
    item.X = 480
    item.Y = item.Y - 25
    item.Align = "Center"
    item.uData.slider.Align = "Center"
    item.uData.slider.LocalPos = V2D(-50, 25)
    item = Scorer.GetItem(0, "Itm3_R")
    item.onLeft = "Menu.Switch_Prev_Resolution"
    item.onRight = "Menu.Switch_Next_Resolution"
    item = Scorer.GetItem(0, "Itm5_R")
    item.Y = 380
  else
    Menu.VerticalMenu(langstr("Menu_Options_Video"), {
      {
        langstr("Menu_Video_Gamma"),
        "Menu.DoNothing"
      },
      {
        Menu.GetBackText(),
        "Menu.ConfigProto"
      }
    }, "Menu.ConfigProto", nil, 240, nil, false, true)
    Menu.SliderSet(Scorer.GetItem(0, "Itm1_R"), "RT_CopyRamp", V2D(-1, 1), 0.1)
    local item = Scorer.GetItem(0, "Itm1_R")
    item.X = 480
    item.Y = item.Y - 25
    item.Align = "Center"
    item.uData.slider.Align = "Center"
    item.uData.slider.LocalPos = V2D(-50, 25)
    item = Scorer.GetItem(0, "Itm2_R")
    item.Y = 380
  end
end

function Menu.VideoAdvancedMenu(id, control)
  local bInit = true
  if control == "No" then
    bInit = false
  end
  Menu.VerticalMenu(langstr("Menu_Video_Advanced"), {
    {
      Menu.Get_VSync_Status(bInit),
      "Menu.Switch_VSync"
    },
    {
      Menu.Get_Shadows_Status(bInit),
      "Menu.Switch_Shadows"
    },
    {
      Menu.Get_ShaderDetail_Status(bInit),
      "Menu.Switch_ShaderDetail"
    },
    {
      Menu.Get_TextureLOD_Status(bInit),
      "Menu.Switch_TextureLOD"
    },
    {
      Menu.Get_MotionBlur_Status(bInit),
      "Menu.Switch_MotionBlur"
    },
    {
      Menu.Get_Antialias_Status(bInit),
      "Menu.Switch_Antialias"
    },
    {
      Menu.GetCancelText(),
      "Menu.VideoAdvancedCancel"
    },
    {
      Menu.GetAcceptText(),
      "Menu.VideoAdvancedAccept"
    }
  }, "Menu.VideoAdvancedCancel", Menu.SmallFont, 110)
  local itm2
  itm2 = Scorer.GetItem(0, "Itm1")
  itm2.onLeft = "Menu.Switch_Prev_VSync"
  itm2.onRight = "Menu.Switch_Next_VSync"
  itm2.X = 80
  itm2 = Scorer.GetItem(0, "Itm2")
  itm2.onLeft = "Menu.Switch_Prev_Shadows"
  itm2.onRight = "Menu.Switch_Next_Shadows"
  itm2.X = 80
  itm2 = Scorer.GetItem(0, "Itm3")
  itm2.onLeft = "Menu.Switch_Prev_ShaderDetail"
  itm2.onRight = "Menu.Switch_Next_ShaderDetail"
  itm2.X = 80
  itm2 = Scorer.GetItem(0, "Itm4")
  itm2.onLeft = "Menu.Switch_Prev_TextureLOD"
  itm2.onRight = "Menu.Switch_Next_TextureLOD"
  itm2.X = 80
  itm2 = Scorer.GetItem(0, "Itm5")
  itm2.onLeft = "Menu.Switch_Prev_MotionBlur"
  itm2.onRight = "Menu.Switch_Next_MotionBlur"
  itm2.X = 80
  itm2 = Scorer.GetItem(0, "Itm6")
  Menu.Update_Antialias_MenuItem(0, "Itm6")
  itm2.onLeft = "Menu.Switch_Prev_Antialias"
  itm2.onRight = "Menu.Switch_Next_Antialias"
  itm2.X = 80
  itm2 = Scorer.GetItem(0, "Itm7")
  itm2.Y = 380
  itm2.X = 60
  itm2 = Scorer.GetItem(0, "Itm8")
  itm2.Y = 380
  itm2.X = 400
  Menu.LinkLR(Scorer.GetItem(0, "Itm7"), Scorer.GetItem(0, "Itm8"))
  Menu.LinkLR(Scorer.GetItem(0, "Itm8"), Scorer.GetItem(0, "Itm7"))
  Menu.LinkUD(Scorer.GetItem(0, "Itm6"), Scorer.GetItem(0, "Itm8"))
end

Menu.Advanced_Shadows0 = nil
Menu.Advanced_Shadows = nil

function Menu.Switch_Next_Shadows(id, control)
  Menu.Switch_Shadows(id, control, true)
end

function Menu.Switch_Prev_Shadows(id, control)
  Menu.Switch_Shadows(id, control, false)
end

function Menu.Get_Shadows_Level()
  local resList = Game.GetShadowResolutions()
  local res = Game.Get("R_ShadowMapsSize")
  local level = 0
  if Game.Get("R_ShadowMaps") == 1 then
    for i = 1, #resList do
      if res >= resList[i] then
        level = i
      end
    end
  end
  return level
end

function Menu.Set_Shadows_Level(level)
  local originalRes = Game.Get("R_ShadowMapsSize")
  local res = originalRes
  local active = 0
  local resList = Game.GetShadowResolutions()
  if 1 <= level and level <= #resList then
    active = 1
    res = resList[level]
  end
  Game.Set("R_ShadowMaps", active)
  if res ~= originalRes then
    Game.Set("R_ShadowMapsSize", res)
    Game.ResetShadows()
  end
  local LevelName = string.lower(Game.GetSaveVar("LevelName"))
  Game.Log("Set_Shadows_Level. Levelname = " .. LevelName .. "\n", 1)
  if LevelName == "5_4_abbey_catacombs" or LevelName == "1_9_oblivion_lake" then
    addSF(0.01, "", "MapInit.SwitchWeirdShadow")
  end
end

function Menu.Switch_Shadows(id, control, advance)
  local level = Menu.Get_Shadows_Level()
  local newlevel = level
  local resList = Game.GetShadowResolutions()
  maxlevel = #resList + 1
  if advance or advance == nil then
    newlevel = (level + 1) % maxlevel
  else
    newlevel = (level - 1 + maxlevel) % maxlevel
  end
  if level == newlevel then
    return
  end
  Menu.Set_Shadows_Level(newlevel)
  local itm = Scorer.GetItem(id, control)
  itm.Text = Menu.Get_Shadows_Status()
  Menu.CenterItem(itm)
end

function Menu.Get_Shadows_Status(bInit)
  local level = Menu.Get_Shadows_Level()
  local list = {
    "No",
    "Low",
    "Medium",
    "High",
    "Max"
  }
  local lname = langstr("Menu_Question_" .. list[level + 1])
  return langstr("Menu_Video_Shadows") .. ": " .. lname
end

Menu.Advanced_ShaderDetail0 = nil
Menu.Advanced_ShaderDetail = nil

function Menu.Switch_Next_ShaderDetail(id, control)
  Menu.Switch_ShaderDetail(id, control, true)
end

function Menu.Switch_Prev_ShaderDetail(id, control)
  Menu.Switch_ShaderDetail(id, control, false)
end

function Menu.Switch_ShaderDetail(id, control, advance)
  local level = Menu.Advanced_ShaderDetail
  local newlevel = level
  if level == 0 then
    newlevel = 1
  else
    newlevel = 0
  end
  if level == newlevel then
    return
  end
  Menu.Advanced_ShaderDetail = newlevel
  local itm = Scorer.GetItem(id, control)
  itm.Text = Menu.Get_ShaderDetail_Status()
end

function Menu.Get_ShaderDetail_Status(bInit)
  local level = Game.Get("R_ShaderSpecIdx")
  if bInit then
    Menu.Advanced_ShaderDetail0 = level
    Menu.Advanced_ShaderDetail = level
  else
    level = Menu.Advanced_ShaderDetail
  end
  local list = {"High", "Low"}
  local lname = langstr("Menu_Question_" .. list[level + 1])
  return langstr("Menu_Video_ShaderDetail") .. ": " .. lname
end

function Menu.Switch_Next_VSync(id, control)
  Menu.Switch_VSync(id, control, true)
end

function Menu.Switch_Prev_VSync(id, control)
  Menu.Switch_VSync(id, control, false)
end

function Menu.Switch_VSync(id, control, advance)
  local level = Menu.Advanced_VSync
  local newlevel = level
  if level == 0 then
    newlevel = 1
  else
    newlevel = 0
  end
  if level == newlevel then
    return
  end
  Menu.Advanced_VSync = newlevel
  local itm = Scorer.GetItem(id, control)
  itm.Text = Menu.Get_VSync_Status()
  Menu.CenterItem(itm)
end

function Menu.Switch_VSync_Do()
  local mode = Game.GetVideoCurrentMode()
  Game.SetVideoCurrentMode(mode)
end

function Menu.Get_VSync_Status(bInit)
  level = Menu.Advanced_VSync
  local list = {"No", "Yes"}
  local lname = langstr("Menu_Question_" .. list[level + 1])
  return langstr("Menu_Video_VSync") .. ": " .. lname
end

Menu.Advanced_TextureLOD0 = nil
Menu.Advanced_TextureLOD = nil

function Menu.Switch_Next_TextureLOD(id, control)
  Menu.Switch_TextureLOD(id, control, true)
end

function Menu.Switch_Prev_TextureLOD(id, control)
  Menu.Switch_TextureLOD(id, control, false)
end

function Menu.Switch_TextureLOD(id, control, advance)
  local level = Menu.Advanced_TextureLOD
  local newlevel = level
  if advance or advance == nil then
    if 0 < level then
      newlevel = level - 1
    else
      newlevel = 2
    end
  elseif level < 2 then
    newlevel = level + 1
  else
    newlevel = 0
  end
  if level == newlevel then
    return
  end
  Menu.Advanced_TextureLOD = newlevel
  local itm = Scorer.GetItem(id, control)
  itm.Text = Menu.Get_TextureLOD_Status()
end

function Menu.Get_TextureLOD_Status(bInit)
  local level = Game.Get("TextureLOD")
  if bInit then
    Menu.Advanced_TextureLOD0 = level
    Menu.Advanced_TextureLOD = level
  else
    level = Menu.Advanced_TextureLOD
  end
  local list = {
    "High",
    "Medium",
    "Low"
  }
  local lname = langstr("Menu_Question_" .. list[level + 1])
  return langstr("Menu_Video_TextureDetail") .. ": " .. lname
end

Menu.Advanced_MotionBlur0 = nil
Menu.Advanced_MotionBlur = nil

function Menu.Switch_Next_MotionBlur(id, control)
  Menu.Switch_MotionBlur(id, control, true)
end

function Menu.Switch_Prev_MotionBlur(id, control)
  Menu.Switch_MotionBlur(id, control, false)
end

function Menu.Get_MotionBlur_Level()
  local res = Game.Get("RT_PixelMotionBlurPower")
  local level = 0
  if 0.008999999612569809 <= res then
    level = 2
  elseif 0.004000000189989805 <= res then
    level = 1
  else
    level = 0
  end
  return level
end

function Menu.Set_MotionBlur_Level(level)
  local res = Game.Get("RT_PixelMotionBlurPower")
  if 2 <= level then
    res = 0.01
  elseif 1 <= level then
    res = 0.005
  else
    res = 0
  end
  Game.Set("RT_PixelMotionBlurPower", res)
end

function Menu.Switch_MotionBlur(id, control, advance)
  Game.Set("RT_PixelMotionBlur", 1 - Game.Get("RT_PixelMotionBlur"))
  local itm = Scorer.GetItem(id, control)
  itm.Text = Menu.Get_MotionBlur_Status()
  Menu.CenterItem(itm)
end

function Menu.Get_MotionBlur_Status(bInit)
  local level = Game.Get("RT_PixelMotionBlur")
  local list = {"No", "Yes"}
  local lname = langstr("Menu_Question_" .. list[level + 1])
  return langstr("Menu_Video_MotionBlur") .. ": " .. lname
end

Menu.Advanced_Antialias0 = nil
Menu.Advanced_Antialias = nil

function Menu.Switch_Next_Antialias(id, control)
  Menu.Switch_Antialias(id, control, true)
end

function Menu.Switch_Prev_Antialias(id, control)
  Menu.Switch_Antialias(id, control, false)
end

function Menu.Get_Antialias_Next_Valid(current, advance)
  local NumModes = 3
  local Current = current
  local Selected = current
  for i = 1, NumModes do
    if advance or advance == nil then
      Selected = (Selected + 1) % NumModes
    else
      Selected = (Selected + NumModes - 1) % NumModes
    end
    if Game.VideoAntialiasValid(Selected) == 1 then
      return Selected
    end
  end
  return nil
end

function Menu.Switch_Antialias(id, control, advance)
  local level = Game.Get("RP_Antialias")
  local Selected = Menu.Get_Antialias_Next_Valid(level, advance)
  if Selected == nil or Selected == level then
    return
  end
  Menu.Advanced_Antialias = Selected
  Game.Set("RP_Antialias", Selected)
  Game.Set("RP_Antialias_Menu", Selected)
  Menu.Update_Antialias_MenuItem(id, control)
end

function Menu.Switch_Antialias_Do()
  local mode = Game.GetVideoCurrentMode()
  Game.SetVideoCurrentMode(mode)
end

function Menu.Get_Antialias_Status(bInit)
  local level = Game.Get("RP_Antialias")
  local list = {
    "No",
    "Yes",
    "Max"
  }
  local lname = langstr("Menu_Question_" .. list[level + 1])
  return langstr("Menu_Video_Antialias") .. ": " .. lname
end

function Menu.Get_Anisotropic_Status()
  local list = {
    langstr("Menu_Question_No"),
    "x2",
    "x4",
    "x8",
    "x16"
  }
  return langstr("Menu_Video_Anisotropic") .. ": " .. list[Menu.GetAnisotropicLevel() + 1]
end

function Menu.Switch_Next_Anisotropic(id, control)
  Menu.Switch_Anisotropic(id, control, true)
end

function Menu.Switch_Prev_Anisotropic(id, control)
  Menu.Switch_Anisotropic(id, control, false)
end

function Menu.Switch_Anisotropic(id, control, advance)
  if advance == nil then
    advance = true
  end
  local level = Menu.GetAnisotropicLevel()
  local kNOptions = 5
  local maxlevel = Game.Get("R_MaxAnisotropy")
  if maxlevel < 2 then
    return
  elseif maxlevel < 4 then
    kNOptions = 2
  elseif maxlevel < 8 then
    kNOptions = 3
  elseif maxlevel < 16 then
    kNOptions = 4
  end
  if advance then
    Menu.SetAnisotropicLevel((level + 1) % kNOptions)
  else
    Menu.SetAnisotropicLevel((level + kNOptions - 1) % kNOptions)
  end
  local itm = Scorer.GetItem(id, control)
  itm.Text = Menu.Get_Anisotropic_Status()
  Menu.CenterItem(itm)
end

function Menu.GetAnisotropicLevel()
  local level = Game.Get("R_Anisotropy")
  local maxlevel = Game.Get("R_MaxAnisotropy")
  local list = {
    [0] = 0,
    [2] = 1,
    [4] = 2,
    [8] = 3,
    [16] = 4
  }
  return list[level]
end

function Menu.SetAnisotropicLevel(level)
  if level == 0 then
    Game.Set("R_Anisotropy", 0)
  else
    local list = {
      2,
      4,
      8,
      16
    }
    Game.Set("R_Anisotropy", list[level])
    Game.Log("Setting R_TexFilter to 2 and R_Anisotropy to " .. list[level] .. "\n", 1)
  end
end

function Menu.Get_AmbientOccluison_Status()
  local level = Game.Get("RT_AmbientOcclusion")
  local list = {"No", "Yes"}
  local lname = langstr("Menu_Question_" .. list[level + 1])
  return langstr("Menu_Video_AmbientOcclusion") .. ": " .. lname
end

function Menu.Switch_Next_AmbientOcclusion(id, control)
  Menu.Switch_AmbientOcclusion(id, control, true)
end

function Menu.Switch_Prev_AmbientOcclusion(id, control)
  Menu.Switch_AmbientOcclusion(id, control, false)
end

function Menu.Switch_AmbientOcclusion(id, control, advance)
  if advance == nil then
    advance = true
  end
  local level = Game.Get("RT_AmbientOcclusion")
  local kNOptions = 2
  if advance then
    level = (level + 1) % kNOptions
  else
    level = (level + kNOptions - 1) % kNOptions
  end
  Game.Set("RT_AmbientOcclusion", level)
  local itm = Scorer.GetItem(id, control)
  itm.Text = Menu.Get_AmbientOccluison_Status()
  Menu.CenterItem(itm)
end

function Menu.CenterItem(itm)
  if itm.uData.OriginalPosition then
    itm.Pos = itm.uData.OriginalPosition
    itm.CentralText = 1
  end
end

function Menu.Update_Antialias_MenuItem(id, control)
  local level = Game.Get("RP_Antialias")
  itm = Scorer.GetItem(id, control)
  if itm == nil then
    return
  end
  itm.Text = Menu.Get_Antialias_Status()
  Menu.CenterItem(itm)
end

function Menu.Get_Antialias_Unvailable()
  local Selected = Menu.Get_Antialias_Next_Valid(0, true)
  return Selected == nil or Selected == 0
end

function Menu.VideoAdvancedIsChanged()
  local t = 0
  if Menu.Advanced_Shadows0 ~= Menu.Advanced_Shadows then
    t = t + 1
  end
  if Menu.Advanced_ShaderDetail0 ~= Menu.Advanced_ShaderDetail then
    t = t + 1
  end
  if Menu.Advanced_VSync0 ~= Menu.Advanced_VSync then
    t = t + 1
  end
  if Menu.Advanced_TextureLOD0 ~= Menu.Advanced_TextureLOD then
    t = t + 1
  end
  if Menu.Advanced_MotionBlur0 ~= Menu.Advanced_MotionBlur then
    t = t + 1
  end
  if Menu.Advanced_Antialias0 ~= Menu.Advanced_Antialias then
    t = t + 1
  end
  return t
end

function Menu.VideoAdvancedAccept(id, control)
  local t = Menu.VideoAdvancedIsChanged()
  if 0 < t then
    Menu.Set_Shadows_Level(Menu.Advanced_Shadows)
    Game.Set("R_ShaderSpecIdx", Menu.Advanced_ShaderDetail)
    Game.Set("VSync", Menu.Advanced_VSync)
    Game.Set("TextureLOD", Menu.Advanced_TextureLOD)
    Menu.Set_MotionBlur_Level(Menu.Advanced_MotionBlur)
    Game.Set("Antialiasing", Menu.Advanced_Antialias)
    local mode = Game.GetVideoCurrentMode()
    Game.SetVideoCurrentMode(mode)
  end
  Menu.VideoMenu(id, control)
end

function Menu.VideoAdvancedCancel(id, control)
  local t = Menu.VideoAdvancedIsChanged()
  if 0 < t then
    Menu.YesNoMenu(langstr("Menu_CancelConfig_Question"), "Menu.VideoMenu", "Menu.VideoAdvancedCancelNo", langstr("Menu_Warning_CancelConfig"))
  else
    Menu.VideoMenu(id, control)
  end
end

function Menu.VideoAdvancedCancelNo(id, control)
  Menu.VideoAdvancedMenu(id, "No")
end

function Menu.GoToVideoMenu(scorerId, itemName)
  Menu.GoToRightPage(scorerId, itemName)
  if Game.Get("AreAdvancedOptionsBlocked") == 0 then
    Menu.SetResolutionDisabled(Game.Get("Fullscreen") == 0)
  else
    Menu.SetResolutionDisabled(false)
    Scorer.GetItem(0, "Itm3R2").Alpha = 128
    Scorer.GetItem(0, "Itm5R2").Alpha = 128
    Scorer.GetItem(0, "Itm2R2").Down = "Itm1R2"
    Scorer.GetItem(0, "Itm1R2").Up = "Itm2R2"
  end
end

function Menu.Switch_Next_Resolution(id, control)
  Menu.Switch_Resolution(id, control, true)
end

function Menu.Switch_Prev_Resolution(id, control)
  Menu.Switch_Resolution(id, control, false)
end

function Menu.Switch_Resolution(id, control, advance)
  if Game.Get("FullScreen") == 0 then
    return
  end
  local NumModes = Game.GetVideoModes(0)
  local Current = Game.GetVideoCurrentMode()
  local Selected = Menu.SelectedVideoMode
  for i = 1, NumModes do
    if advance then
      Selected = Selected % NumModes + 1
    else
      Selected = (Selected + NumModes - 2) % NumModes + 1
    end
    local width, height, bpp = Game.GetVideoModes(Selected)
    if Selected == Current or 640 <= width and 480 <= height and height <= width and 32 <= bpp then
      Menu.SelectedVideoMode = Selected
      break
    end
  end
  local itm = Scorer.GetItem(id, control)
  itm.Text = Menu.Get_Screen_Resolution_Status()
  Menu.CenterItem(itm)
end

function Menu.Get_Screen_Resolution_Status()
  local i = Menu.SelectedVideoMode
  local width, height, bpp = Game.GetVideoModes(i)
  return langstr("Menu_Screen_Resolution") .. ": " .. width .. " x " .. height
end

function Menu.Switch_Fullscreen(id, control)
  local mode = Game.Get("FullScreen")
  mode = (mode + 1) % 2
  Game.Set("FullScreen", mode)
  local itm = Scorer.GetItem(id, control)
  itm.Text = Menu.Get_Fullscreen_Status()
  Menu.CenterItem(itm)
  Menu.SetResolutionDisabled(mode == 0)
end

function Menu.SetResolutionDisabled(disable)
  if Game.Get("AreAdvancedOptionsBlocked") == 1 then
    disable = true
  end
  if disable then
    Scorer.GetItem(0, "Itm4R2").Alpha = 128
    Scorer.GetItem(0, "Itm3R2").Down = "Itm5R2"
    Scorer.GetItem(0, "Itm5R2").Up = "Itm3R2"
  else
    Scorer.GetItem(0, "Itm4R2").Alpha = 255
    Scorer.GetItem(0, "Itm3R2").Down = "Itm4R2"
    Scorer.GetItem(0, "Itm5R2").Up = "Itm4R2"
  end
end

function Menu.Get_Fullscreen_Status()
  local mode = Game.Get("FullScreen")
  local list = {
    "Menu_Windowed",
    "Menu_Fullscreen"
  }
  return langstr("Menu_Fullscreen_Mode") .. ": " .. langstr(list[mode + 1])
end

function Menu.Switch_Aspect_Ratio_Down(id, control)
  Menu.Switch_Aspect_Ratio(id, control)
  Menu.Switch_Aspect_Ratio(id, control)
end

function Menu.Switch_Aspect_Ratio(id, control)
  local itm = Scorer.GetItem(id, control)
  local aratio = Game.Get("PhysicalAspectRatio")
  if aratio < 1.5 then
    Game.Set("PhysicalAspectRatio", 1.7777777910232544)
  elseif aratio < 1.7 then
    Game.Set("PhysicalAspectRatio", 1.3333333730697632)
  else
    Game.Set("PhysicalAspectRatio", 1.600000023841858)
  end
  itm.Text = Menu.Get_Aspect_Ratio_Status()
  Menu.CenterItem(itm)
  Menu.SetUpCameras()
end

function Menu.Get_Aspect_Ratio_Status()
  local cad = langstr("Menu_Aspect_Ratio") .. ": "
  local aratio = Game.Get("PhysicalAspectRatio")
  if aratio < 1.5 then
    return cad .. langstr("Menu_Aspect_Ratio_Normal")
  elseif aratio < 1.7 then
    return cad .. langstr("Menu_Aspect_Ratio_Wide_PC")
  else
    return cad .. langstr("Menu_Aspect_Ratio_Wide")
  end
end

function Menu.ConfigGame(id, control)
  local itm6
  Menu.VerticalMenu(langstr("Menu_Options_Game"), {
    {
      Menu.Get_Subtitles_Status(),
      "Menu.SwitchSubtitles"
    },
    {
      Menu.Get_Reload_Status(),
      "Menu.SwitchReload"
    },
    {
      Menu.Get_AutoAim_Status(),
      "Menu.SwitchAutoAim"
    },
    {
      Menu.Get_Crouch_Status(),
      "Menu.SwitchCrouch"
    },
    {
      Menu.GetBackText(),
      "Menu.ConfigProto"
    }
  }, "Menu.ConfigProto", Menu.SmallFont, 125)
  for i = 1, 4 do
    itm = Scorer.GetItem(0, "Itm" .. i)
    itm.onLeft = itm.OnAccept
    itm.onRight = itm.OnAccept
  end
  itm5 = Scorer.GetItem(0, "Itm5")
  itm6.Y = 380
  itm6.X = 440
end

function Menu.ShowHelp()
  if not Team.isGameOver() then
    Menu.UsePauseSys = false
    Menu.InitMenuSys()
    Menu.UsePauseSys = true
    local usr = Game.UsrEntity(0)
    if usr then
      Menu.HelpCharacter(usr.ActCtrl)
    else
      Menu.HelpControls()
    end
  end
end

function Menu.ShowHelpControls()
  Menu.UsePauseSys = false
  Menu.InitMenuSys()
  Menu.UsePauseSys = true
  Menu.HelpControls()
end

function Menu.HelpChar()
  local usr = Game.UsrEntity(0)
  if usr then
    Menu.HelpCharacter(usr.ActCtrl)
  else
    Menu.HelpCharacter("Ross")
  end
end

function Menu.HelpCharacter(Character)
  Menu.StartNewMenu()
  Menu.ShowCharHelp(Character)
  Menu.BackHelpMenu(Character)
end

function Menu.HelpControls()
  Menu.StartNewMenu()
  Menu.controlsBaseY = -50
  Menu.ShowControls(0)
  Menu.controlsBaseY = 0
  Menu.BackHelpMenu("Menu_Options_Controls")
end

function Menu.ShowCharHelp(Character)
  local charDescUpButton = Scorer.NewItem(0, "DescUp", "Button")
  charDescUpButton.IsMultiSprite = 1
  charDescUpButton.HighRes = 1
  charDescUpButton.File = "2D/Menu/ExtrasButtons.alpha.tga"
  charDescUpButton.SpriteIndex = 3
  charDescUpButton.FocusSpriteIndex = 2
  charDescUpButton.Highlight = 1
  charDescUpButton.LocalPos = V2D(550, 117)
  charDescUpButton.W = 30
  charDescUpButton.H = 32
  charDescUpButton.FocusPivotX = -2
  charDescUpButton.FocusPivotY = -2
  charDescUpButton.Complex = 0
  charDescUpButton.Visible = 1
  charDescUpButton.Rotate = 3
  charDescUpButton.OnAccept = "Menu.CharDescUp"
  charDescUpButton.MultiPress = 1
  local charDescDownButton = Scorer.NewItem(0, "DescDown", "Button")
  charDescDownButton.IsMultiSprite = 1
  charDescDownButton.HighRes = 1
  charDescDownButton.File = "2D/Menu/ExtrasButtons.alpha.tga"
  charDescDownButton.SpriteIndex = 3
  charDescDownButton.FocusSpriteIndex = 2
  charDescDownButton.Highlight = 1
  charDescDownButton.LocalPos = V2D(550, 376)
  charDescDownButton.W = 30
  charDescDownButton.H = 32
  charDescDownButton.FocusPivotX = -2
  charDescDownButton.FocusPivotY = -2
  charDescDownButton.Complex = 0
  charDescDownButton.Visible = 1
  charDescDownButton.Rotate = 1
  charDescDownButton.Mirror = 2
  charDescDownButton.OnAccept = "Menu.CharDescDown"
  charDescDownButton.MultiPress = 1
  local linesPerPage = 17
  local charDesc = Scorer.NewItem(0, "CharDesc", "TextScroller")
  charDesc.Pos = V2D(100, 116)
  charDesc.MaxLines = linesPerPage
  charDesc.FirstLine = 0
  charDesc.LineStep = 16
  charDesc.LineSplitSize = 420
  charDesc.BoldFont = "HoratioTiny"
  charDesc.BoldColor = Color(255, 255, 255, 255)
  charDesc.IndentFont = "HoratioTiny"
  charDesc.IndentColor = Color(255, 255, 255, 255)
  charDesc.Text = "Menu_Description_" .. Character .. "_"
  if linesPerPage >= charDesc.NumLines then
    charDescUpButton.Visible = 0
    charDescDownButton.Visible = 0
  end
end

function Menu.CharDescUp(id, control)
  local charDesc = Scorer.GetItem(0, "CharDesc")
  if 0 < charDesc.FirstLine then
    charDesc.FirstLine = charDesc.FirstLine - 1
  end
end

function Menu.CharDescDown(id, control)
  local charDesc = Scorer.GetItem(0, "CharDesc")
  if charDesc.FirstLine <= charDesc.NumLines - charDesc.MaxLines then
    charDesc.FirstLine = charDesc.FirstLine + 1
  end
end

function Menu.BackHelpMenu(TitleCode)
  local platform = Game.Get("Platform")
  local sititle = Scorer.NewItem(0, "DoExit", "Text")
  sititle.Font = Menu.BigFont
  sititle.Text = langstr(TitleCode)
  sititle.Pos = V2D(50, 50)
  sititle.Color = Menu.TitleColor
  sititle.Effect = "Shadow"
  sititle.Size = V3D(0, 0)
  local Back = Scorer.NewItem(0, "ItmOK", "Text")
  Back.Font = Menu.SmallFont
  Back.Text = Menu.GetBackText()
  Back.Pos = V2D(320, 410)
  Back.CentralText = 1
  Back.UseBlood = 0
  Back.OnAccept = "Menu.BackToGame"
  Back.Color = Menu.ItemColor
  Back.Effect = "Shadow"
  local itm = Scorer.NewItem(0, "Backerillo", "Sprite")
  itm.Unit = 1
  itm.Pos = V2D(320, 240)
  if Game.Get("Platform") == "PC" then
    itm.Scale = V2D(630, 410)
  else
    itm.Scale = V2D(570, 410)
  end
  itm.Color = Color(0, 0, 0, 128)
  itm.Pivot = V2D(0.5, 0.5)
  local nextHelp = Scorer.NewItem(0, "NextHelp", "Button")
  nextHelp.IsMultiSprite = 1
  nextHelp.HighRes = 1
  nextHelp.File = "2D/Menu/ExtrasButtons.alpha.tga"
  nextHelp.Highlight = 1
  nextHelp.W = 30
  nextHelp.H = 32
  nextHelp.FocusPivotX = -2
  nextHelp.FocusPivotY = -2
  nextHelp.Complex = 0
  nextHelp.Visible = 1
  nextHelp.MultiPress = 0
  if "Menu_Options_Controls" == TitleCode then
    nextHelp.SpriteIndex = 3
    nextHelp.FocusSpriteIndex = 2
    nextHelp.Rotate = 0
    nextHelp.Mirror = 0
    nextHelp.LocalPos = V2D(550, 400)
    nextHelp.OnAccept = "Menu.HelpChar"
    nextHelp.onRight = "Menu.HelpChar"
  else
    nextHelp.SpriteIndex = 3
    nextHelp.FocusSpriteIndex = 2
    nextHelp.Rotate = 2
    nextHelp.Mirror = 2
    nextHelp.LocalPos = V2D(110, 400)
    nextHelp.OnAccept = "Menu.HelpControls"
    nextHelp.onLeft = "Menu.HelpControls"
    nextHelp.onUp = "Menu.CharDescUp"
    nextHelp.onDown = "Menu.CharDescDown"
    local charDescDownButton = Scorer.GetItem(0, "DescDown")
  end
  Scorer.SetDefault(0, "NextHelp")
  Scorer.SetOnCancel(0, "Menu.BackToGame")
end

Menu.controlsBaseX = 0
Menu.controlsBaseY = 0

function Menu.SetDefinedList(iPlayer, ActionSet, Action, DefinedLst)
  local alist = Game.Split(DefinedLst, ", ")
  Input.ClearDefinedList(iPlayer, ActionSet, Action, 0, "Kb")
  Input.ClearDefinedList(iPlayer, ActionSet, Action, 0, "Mouse")
  for i = 1, #alist do
    local dt = Game.Split(alist[i], ":")
    if dt[1] == "Kb" or dt[1] == "Mouse" then
      Input.AssingEntry(dt[1], dt[2], iPlayer, ActionSet, Action)
    end
  end
end

function Menu.ShowControls(config)
  local platform = Game.Get("Platform")
  local baseX = Menu.controlsBaseX
  local baseY = Menu.controlsBaseY - 15
  if platform == "PC" then
    local ControlName = "PC_Up"
    local Typeof = "Walk"
    local listuky = Menu.Configurables
    baseX = baseX - 80
    local controlx = Scorer.NewItem(0, "ControlTextX", "Text")
    controlx.Pos = V2D(baseX + 310, baseY + 155)
    controlx.Text = langstr("Menu_Controls_Mouse")
    controlx.Align = "Left"
    controlx.Font = "MessageSmall"
    controlx.Color = Color(255, 255, 255, 255)
    controlx.Effect = "Shadow"
    controlx.Size = V2D(0, 0)
    local controlxx = Scorer.NewItem(0, "ControlTextXX", "Text")
    controlxx.Pos = V2D(baseX + 540, baseY + 155)
    controlxx.Text = langstr("Menu_Controls_Keyboard")
    controlxx.Align = "Right"
    controlxx.Font = "MessageSmall"
    controlxx.Color = Color(255, 255, 255, 255)
    controlxx.Effect = "Shadow"
    controlxx.Size = V2D(0, 0)
    local controlxxx = Scorer.NewItem(0, "ControlTextXXX", "Text")
    controlxxx.Pos = V2D(baseX + 700, baseY + 155)
    controlxxx.Text = langstr("Menu_Controls_Pad")
    controlxxx.Align = "Right"
    controlxxx.Font = "MessageSmall"
    controlxxx.Color = Color(255, 255, 255, 255)
    controlxxx.Effect = "Shadow"
    controlxxx.Size = V2D(0, 0)
    local controly = Scorer.NewItem(0, "ControlTextY", "Text")
    controly.Pos = V2D(baseX + 100, baseY + 155)
    controly.Text = langstr("Menu_Controls_Action")
    controly.Align = "Left"
    controly.Font = "MessageSmall"
    controly.Color = Color(255, 255, 255, 255)
    controly.Effect = "Shadow"
    controly.Size = V2D(0, 0)
    local itm = Scorer.NewItem(0, "Separatorum", "Sprite")
    itm.Unit = 1
    itm.Pos = V2D(320, baseY + 155 + 15)
    itm.Scale = V2D(620, 2)
    itm.Color = Color(255, 255, 255, 255)
    itm.Pivot = V2D(0.5, 0.5)
    for i = 1, #listuky do
      local alist = Game.Split(Input.GetDefinedList(0, listuky[i][1], listuky[i][2], 0, 0), ", ")
      local alist2 = Game.Split(Input.GetDefinedList(0, listuky[i][1], listuky[i][4], 0, 0), ", ")
      local kbList = ""
      local mouseList = ""
      local padList = ""
      for i = 1, #alist do
        local dt = Game.Split(alist[i], ":")
        if dt[1] == "Kb" then
          kbList = kbList .. ", " .. dt[2]
        elseif dt[1] == "Mouse" then
          mouseList = mouseList .. ", " .. dt[2]
        end
      end
      for i = 1, #alist2 do
        local dt = Game.Split(alist2[i], ":")
        if dt[1] == "Joy1" then
          padList = padList .. ", " .. dt[2]
        end
      end
      local controlx = Scorer.NewItem(0, "ControlTextX" .. i, "Text")
      controlx.Pos = V2D(baseX + 310, baseY + 160 + i * 12)
      controlx.Text = string.sub(mouseList, 3)
      controlx.Align = "Left"
      controlx.Font = "MessageSmall"
      controlx.Color = Color(255, 255, 255, 255)
      controlx.Effect = "Shadow"
      controlx.Size = V2D(0, 0)
      local controlxx = Scorer.NewItem(0, "ControlTextXX" .. i, "Text")
      controlxx.Pos = V2D(baseX + 540, baseY + 160 + i * 12)
      controlxx.Text = string.sub(kbList, 3)
      controlxx.Align = "Right"
      controlxx.Font = "MessageSmall"
      controlxx.Color = Color(255, 255, 255, 255)
      controlxx.Effect = "Shadow"
      controlxx.Size = V2D(0, 0)
      local controlxxx = Scorer.NewItem(0, "ControlTextXXX" .. i, "Text")
      controlxxx.Pos = V2D(baseX + 700, baseY + 160 + i * 12)
      controlxxx.Text = string.sub(padList, 3)
      controlxxx.Align = "Right"
      controlxxx.Font = "MessageSmall"
      controlxxx.Color = Color(255, 255, 255, 255)
      controlxxx.Effect = "Shadow"
      controlxxx.Size = V2D(0, 0)
      local controly = Scorer.NewItem(0, "ControlTextY" .. i, "Text")
      controly.Pos = V2D(baseX + 100, baseY + 160 + i * 12)
      controly.Text = langstr("Menu_Controls_" .. listuky[i][2])
      controly.Align = "Left"
      controly.Font = "MessageSmall"
      controly.Color = Color(255, 255, 255, 255)
      controly.Effect = "Shadow"
      if config == 1 then
        controly.Size = V2D(450, 12)
        controly.OnAccept = "Menu.ConfigurateControl"
        controly.uData.info = listuky[i]
      else
        controly.Size = V2D(0, 0)
      end
    end
    if config == 1 then
      Menu.LinkUD(Scorer.GetItem(0, "Itm2"), Scorer.GetItem(0, "ControlTextY1"))
      Menu.LinkUD(Scorer.GetItem(0, "ControlTextY" .. #listuky), Scorer.GetItem(0, "Itm3"))
      for i = 1, #listuky - 1 do
        Menu.LinkUD(Scorer.GetItem(0, "ControlTextY" .. i), Scorer.GetItem(0, "ControlTextY" .. i + 1))
      end
    end
  else
    local colorin = Color(63, 47, 26, 255)
    local controlSecondaryWeapon = Scorer.NewItem(0, "ControlSecondaryWeapon", "Text")
    controlSecondaryWeapon.Pos = V2D(baseX + 202, baseY + 197)
    controlSecondaryWeapon.Text = langstr("Menu_Controls_Secondary_Weapon")
    controlSecondaryWeapon.Align = "Right"
    controlSecondaryWeapon.Font = "MessageSmall"
    controlSecondaryWeapon.Color = colorin
    controlSecondaryWeapon.Size = V2D(0, 0)
    local controlSecondaryPower = Scorer.NewItem(0, "ControlSecondaryPower", "Text")
    controlSecondaryPower.Pos = V2D(baseX + 202, baseY + 210)
    controlSecondaryPower.Text = langstr("Menu_Controls_Power_Left")
    controlSecondaryPower.Align = "Right"
    controlSecondaryPower.Font = "MessageSmall"
    controlSecondaryPower.Color = colorin
    controlSecondaryPower.Size = V2D(0, 0)
    local controlMove = Scorer.NewItem(0, "ControlMove", "Text")
    if platform == "X360" then
      controlMove.Pos = V2D(baseX + 202, baseY + 271 - 16)
    else
      controlMove.Pos = V2D(baseX + 202, baseY + 333 - 16)
    end
    if Game.Get("PadInitInvertSticks") == 0 then
      controlMove.Text = langstr("Menu_Controls_Move")
    else
      controlMove.Text = langstr("Menu_Controls_Aim")
    end
    controlMove.Align = "Right"
    controlMove.Font = "MessageSmall"
    controlMove.Color = colorin
    controlMove.Size = V2D(0, 0)
    local controlCrouch = Scorer.NewItem(0, "ControlCrouch", "Text")
    controlCrouch.Pos = controlMove.Pos + V2D(0, 12)
    controlCrouch.Text = langstr("Menu_Controls_Crouch_1")
    controlCrouch.Align = "Right"
    controlCrouch.Font = "MessageSmall"
    controlCrouch.Color = colorin
    controlCrouch.Size = V2D(0, 0)
    local controlCrouch2 = Scorer.NewItem(0, "ControlCrouch2", "Text")
    controlCrouch2.Pos = controlMove.Pos + V2D(0, 24)
    controlCrouch2.Text = langstr("Menu_Controls_Crouch_2")
    controlCrouch2.Align = "Right"
    controlCrouch2.Font = "MessageSmall"
    controlCrouch2.Color = colorin
    controlCrouch2.Size = V2D(0, 0)
    local controlOrdersFollow = Scorer.NewItem(0, "ControlOrdersFollow", "Text")
    if platform == "X360" then
      controlOrdersFollow.Pos = V2D(baseX + 202, baseY + 293)
    else
      controlOrdersFollow.Pos = V2D(baseX + 202, baseY + 257)
    end
    controlOrdersFollow.Text = langstr("Menu_Controls_Orders_Follow")
    controlOrdersFollow.Align = "Right"
    controlOrdersFollow.Font = "MessageSmall"
    controlOrdersFollow.Color = colorin
    controlOrdersFollow.Size = V2D(0, 0)
    local controlOrdersGoAlpha = Scorer.NewItem(0, "ControlOrdersGoAlpha", "Text")
    if platform == "X360" then
      controlOrdersGoAlpha.Pos = V2D(baseX + 202, baseY + 307)
    else
      controlOrdersGoAlpha.Pos = V2D(baseX + 202, baseY + 271)
    end
    controlOrdersGoAlpha.Text = langstr("Menu_Controls_Orders_Go_Alpha")
    controlOrdersGoAlpha.Align = "Right"
    controlOrdersGoAlpha.Font = "MessageSmall"
    controlOrdersGoAlpha.Color = colorin
    controlOrdersGoAlpha.Size = V2D(0, 0)
    local controlOrdersKeep = Scorer.NewItem(0, "ControlOrdersKeep", "Text")
    if platform == "X360" then
      controlOrdersKeep.Pos = V2D(baseX + 202, baseY + 320)
    else
      controlOrdersKeep.Pos = V2D(baseX + 202, baseY + 285)
    end
    controlOrdersKeep.Text = langstr("Menu_Controls_Orders_Keep")
    controlOrdersKeep.Align = "Right"
    controlOrdersKeep.Font = "MessageSmall"
    controlOrdersKeep.Color = colorin
    controlOrdersKeep.Size = V2D(0, 0)
    local controlOrdersGoOmega = Scorer.NewItem(0, "ControlOrdersGoOmega", "Text")
    if platform == "X360" then
      controlOrdersGoOmega.Pos = V2D(baseX + 202, baseY + 333)
    else
      controlOrdersGoOmega.Pos = V2D(baseX + 202, baseY + 299)
    end
    controlOrdersGoOmega.Text = langstr("Menu_Controls_Orders_Go_Omega")
    controlOrdersGoOmega.Align = "Right"
    controlOrdersGoOmega.Font = "MessageSmall"
    controlOrdersGoOmega.Color = colorin
    controlOrdersGoOmega.Size = V2D(0, 0)
    local controlMainWeapon = Scorer.NewItem(0, "ControlMainWeapon", "Text")
    controlMainWeapon.Pos = V2D(baseX + 435, baseY + 197)
    controlMainWeapon.Text = langstr("Menu_Controls_Main_Weapon")
    controlMainWeapon.Align = "Left"
    controlMainWeapon.Font = "MessageSmall"
    controlMainWeapon.Color = colorin
    controlMainWeapon.Size = V2D(0, 0)
    local controlMainPower = Scorer.NewItem(0, "ControlMainPower", "Text")
    controlMainPower.Pos = V2D(baseX + 435, baseY + 210)
    controlMainPower.Text = langstr("Menu_Controls_Power_Right")
    controlMainPower.Align = "Left"
    controlMainPower.Font = "MessageSmall"
    controlMainPower.Color = colorin
    controlMainPower.Size = V2D(0, 0)
    local controlFlashLight = Scorer.NewItem(0, "ControlFlashLight", "Text")
    controlFlashLight.Pos = V2D(baseX + 435, baseY + 249)
    controlFlashLight.Text = langstr("Menu_Controls_Flashlight")
    controlFlashLight.Align = "Left"
    controlFlashLight.Font = "MessageSmall"
    controlFlashLight.Color = colorin
    controlFlashLight.Size = V2D(0, 0)
    local controlMelee = Scorer.NewItem(0, "ControlMelee", "Text")
    controlMelee.Pos = V2D(baseX + 435, baseY + 265)
    controlMelee.Text = langstr("Menu_Controls_Melee")
    controlMelee.Align = "Left"
    controlMelee.Font = "MessageSmall"
    controlMelee.Color = colorin
    controlMelee.Size = V2D(0, 0)
    local controlReload = Scorer.NewItem(0, "ControlReload", "Text")
    controlReload.Pos = V2D(baseX + 435, baseY + 279)
    controlReload.Text = langstr("Menu_Controls_Reload")
    controlReload.Align = "Left"
    controlReload.Font = "MessageSmall"
    controlReload.Color = colorin
    controlReload.Size = V2D(0, 0)
    local controlSwitch1 = Scorer.NewItem(0, "ControlSwitch1", "Text")
    controlSwitch1.Pos = V2D(baseX + 435, baseY + 294)
    controlSwitch1.Text = langstr("Menu_Controls_Switch_Char1")
    controlSwitch1.Align = "Left"
    controlSwitch1.Font = "MessageSmall"
    controlSwitch1.Color = colorin
    controlSwitch1.Size = V2D(0, 0)
    local controlSwitch2 = Scorer.NewItem(0, "ControlSwitch2", "Text")
    controlSwitch2.Pos = V2D(baseX + 435, baseY + 304)
    controlSwitch2.Text = langstr("Menu_Controls_Switch_Char2")
    controlSwitch2.Align = "Left"
    controlSwitch2.Font = "MessageSmall"
    controlSwitch2.Color = colorin
    controlSwitch2.Size = V2D(0, 0)
    local controlSwitch3 = Scorer.NewItem(0, "ControlSwitch3", "Text")
    controlSwitch3.Pos = V2D(baseX + 435, baseY + 314)
    controlSwitch3.Text = langstr("Menu_Controls_Switch_Char3")
    controlSwitch3.Align = "Left"
    controlSwitch3.Font = "MessageSmall"
    controlSwitch3.Color = colorin
    controlSwitch3.Size = V2D(0, 0)
    local controlAim = Scorer.NewItem(0, "ControlAim", "Text")
    controlAim.Pos = V2D(baseX + 435, baseY + 322)
    if Game.Get("PadInitInvertSticks") == 0 then
      controlAim.Text = langstr("Menu_Controls_Aim")
    else
      controlAim.Text = langstr("Menu_Controls_Move")
    end
    controlAim.Align = "Left"
    controlAim.Font = "MessageSmall"
    controlAim.Color = colorin
    controlAim.Size = V2D(0, 0)
    local controlZoom = Scorer.NewItem(0, "ControlZoom", "Text")
    controlZoom.Pos = controlAim.Pos + V2D(0, 12)
    controlZoom.Text = langstr("Menu_Controls_Zoom_1")
    controlZoom.Align = "Left"
    controlZoom.Font = "MessageSmall"
    controlZoom.Color = colorin
    controlZoom.Size = V2D(0, 0)
    local controlZoom2 = Scorer.NewItem(0, "ControlZoom2", "Text")
    controlZoom2.Pos = controlAim.Pos + V2D(0, 24)
    controlZoom2.Text = langstr("Menu_Controls_Zoom_2")
    controlZoom2.Align = "Left"
    controlZoom2.Font = "MessageSmall"
    controlZoom2.Color = colorin
    controlZoom2.Size = V2D(0, 0)
  end
end

function Menu.AbortWaitRedefine(id)
  Menu.NextKeyToDefine = nil
  Input.AbortListenToDefine()
  Menu.SetDefinedList(0, Menu.LastDefined[1], Menu.LastDefined[2], Menu.LastDefined[3])
  local prevChanged = Menu.KeysChanged
  Menu.EndOfConfig()
  Menu.KeysChanged = prevChanged
end

function Menu.ConfigurateControl(id, control)
  id = id or 0
  control = control or Scorer.GetActual(0)
  local itm = Scorer.GetItem(id, control)
  local info
  if Menu.NextKeyToDefine then
    info = Menu.Configurables[Menu.NextKeyToDefine]
  else
    info = Menu.Configurables[itm.uData.info]
    if info[3] then
      Game.Set("UsrMouseButtonConfig", 0)
    else
      Game.Set("UsrMouseButtonConfig", 1)
    end
  end
  Menu.NextKeyToDefine = info[6]
  Menu.LastDefined = {
    info[1],
    info[2],
    Input.GetDefinedList(0, info[1], info[2])
  }
  Input.ClearDefinedList(0, info[1], info[2], 0, "Kb")
  Input.ClearDefinedList(0, info[1], info[2], 0, "Mouse")
  Input.ListenToDefine(id, info[1], info[2], "Menu.EndOfConfig")
  Game.Set("EscapeEvent", "Menu.AbortWaitRedefine")
  Input.SetActionSet("Inactive")
  itm.Color = Color(128, 10, 10, 255)
end

function Menu.IsReservedEntry(set, action)
  local list = Input.GetDefinedList(0, set, action)
  local split = Game.Split(list, ", ")
  for i = 1, #split do
    local dt = Game.Split(split[i], ":")
    if dt[1] == "Kb" or dt[1] == "Mouse" then
      local k = Input.GetEntry("Kb", dt[2], "Menu")
      local m = Input.GetEntry("Mouse", dt[2], "Menu")
      if k ~= "" and k ~= "ItemUp" and k ~= "ItemDown" and k ~= "ItemLeft" and k ~= "ItemRight" or m ~= "" and m ~= "ItemUp" and m ~= "ItemDown" and m ~= "ItemLeft" and m ~= "ItemRight" then
        return true
      end
    end
  end
  return false
end

function Menu.ControllFix()
  Menu.SetDefinedList(0, "Inactive", "QTEUp", Input.GetDefinedList(0, "Walk", "AreaAttack"))
  Menu.SetDefinedList(0, "Inactive", "QTEDown", Input.GetDefinedList(0, "Walk", "Jump"))
  Menu.SetDefinedList(0, "Inactive", "QTELeft", Input.GetDefinedList(0, "Walk", "DirectionalAttack"))
  Menu.SetDefinedList(0, "Inactive", "QTERight", Input.GetDefinedList(0, "Walk", "RangedAttack"))
  if not Menu.IsReservedEntry("Walk", "Forward") then
    Menu.SetDefinedList(0, "Menu", "ItemUp", Input.GetDefinedList(0, "Walk", "Forward"))
  end
  if not Menu.IsReservedEntry("Walk", "Backward") then
    Menu.SetDefinedList(0, "Menu", "ItemDown", Input.GetDefinedList(0, "Walk", "Backward"))
  end
  if not Menu.IsReservedEntry("Walk", "StrafeTurnLeft") then
    Menu.SetDefinedList(0, "Menu", "ItemLeft", Input.GetDefinedList(0, "Walk", "StrafeTurnLeft"))
  end
  if not Menu.IsReservedEntry("Walk", "StrafeTurnRight") then
    Menu.SetDefinedList(0, "Menu", "ItemRight", Input.GetDefinedList(0, "Walk", "StrafeTurnRight"))
  end
  Input.AssingEntry("Kb", "UP", 0, "Menu", "ItemUp")
  Input.AssingEntry("Kb", "DOWN", 0, "Menu", "ItemDown")
  Input.AssingEntry("Kb", "LEFT", 0, "Menu", "ItemLeft")
  Input.AssingEntry("Kb", "RIGHT", 0, "Menu", "ItemRight")
end

function Menu.EndOfConfig()
  Input.SetActionSet("Menu")
  Menu.ControllFix()
  Game.Set("EscapeEvent", "Menu.Init")
  if Menu.NextKeyToDefine then
    local info = Menu.Configurables[Menu.NextKeyToDefine]
    if info[5] then
      Menu.SetCtrlMsg(langstr(info[5]))
    else
      Menu.SetCtrlMsg(langstr("PC_Menu_Defining_Key"))
    end
    Game.Set("AfterDrawCallback", "Menu.ConfigurateControl")
  else
    Menu.SetCtrlMsg(langstr("PC_Menu_Define_Key"))
    local itm = Scorer.GetItem(0, Scorer.GetActual(0))
    itm.Color = Menu.ItemColor
  end
  Menu.UpdateAllKeyTexts()
  Menu.KeysChanged = true
end

function Menu.ConfigCheck(id, control)
  Terror = false
  if Game.Get("Platform") == "PC" then
    local listuky = Menu.Configurables
    for i = 1, #listuky do
      local faliu = Input.GetDefinedList(0, listuky[i][1], listuky[i][2])
      if string.find(faliu, "Kb:") == nil and string.find(faliu, "Mouse:") == nil then
        Terror = true
      end
    end
  end
  if Terror then
    Menu.YesNoMenu(langstr("Menu_Unassigned_Question"), "Menu.ResetAndContinue", "Menu.ConfigProto2", langstr("Menu_Unassigned_Text"))
  else
    Menu.ConfigProto(id, control)
  end
end

function Menu.ResetAndContinue(id, control)
  Input.ResetToDefault()
  Menu.ConfigProto(id, control)
end

function Menu.ConfigProto2(id, control)
  local itm
  id = defparam(id, 0)
  local platform = Game.Get("Platform")
  if platform == "PC" then
    Menu.VerticalMenu(langstr("Menu_Options_Controls"), {
      {
        Menu.Get_Sensib_Status(),
        "Menu.SwitchSensib"
      },
      {
        Menu.Get_Axis_Status(),
        "Menu.SwitchAxis"
      },
      {
        langstr("Menu_Controls_Reset"),
        "Menu.ResetInput"
      },
      {
        Menu.GetBackText(),
        "Menu.ConfigCheck"
      }
    }, "Menu.ConfigCheck", Menu.SmallFont, 65, 25, false)
    itm = Scorer.GetItem(0, "Itm3")
    itm.Y = 430
    itm.X = 30
    itm = Scorer.GetItem(0, "Itm4")
    itm.Y = 430
    itm.X = 440
    itm = Scorer.GetItem(0, "Itm1")
    itm.onLeft = "Menu.SwitchSensibLow"
    itm.onRight = "Menu.SwitchSensib"
    itm = Scorer.GetItem(0, "Itm2")
    itm.onLeft = itm.OnAccept
    itm.onRight = itm.OnAccept
  else
    Menu.VerticalMenu(langstr("Menu_Options_Controls"), {
      {
        Menu.Get_Sensib_Status(),
        "Menu.SwitchSensib"
      },
      {
        langstr("Menu_Controls_Combos"),
        "Menu.CombosControls"
      },
      {
        Menu.GetBackText(),
        "Menu.ConfigProto"
      }
    }, "Menu.ConfigProto", Menu.SmallFont, 70, 25, false)
    itm = Scorer.GetItem(0, "Itm3")
    itm.Y = 380
    itm.X = 440
    itm = Scorer.GetItem(0, "Itm1")
    itm.onLeft = "Menu.SwitchSensibLow"
    itm.onRight = "Menu.SwitchSensib"
  end
  Menu.controlsBaseX = 0
  Menu.controlsBaseY = 0
  Menu.ShowControls(1)
  Menu.DrawBackMenu()
end

function Menu.ResetInput(id, control)
  Input.ResetToDefault()
  Menu.ConfigProto2(id, control)
end

function Menu.GetBackText()
  if Menu.SwapAcceptCancel() then
    return "\022 " .. langstr("Menu_Back")
  else
    return "\023 " .. langstr("Menu_Back")
  end
end

function Menu.GetAcceptText()
  if Menu.SwapAcceptCancel() then
    return "\023 " .. langstr("Menu_Accept")
  else
    return "\022 " .. langstr("Menu_Accept")
  end
end

function Menu.GetCancelText()
  if Menu.SwapAcceptCancel() then
    return "\022 " .. langstr("Menu_Cancel")
  else
    return "\023 " .. langstr("Menu_Cancel")
  end
end

function Menu.PlatformTest(id, control)
  Menu.BackToGame(id, control)
  Game.LoadLevel("Levels/PlatForm")
end

function Menu.CombatTest(id, control)
  Menu.BackToGame(id, control)
  Game.LoadLevel("Levels/Metro")
end

function Menu.ViewScene(id, control)
  Menu.VerticalMenu("ViewScene", {
    {
      "Little fiend",
      "Menu.Scene0"
    },
    {
      "Ambush",
      "Menu.Scene1"
    },
    {
      "Back",
      "Menu.MainMenu"
    }
  }, "Menu.MainMenu")
  itm4 = Scorer.GetItem(0, "Itm3")
  itm4.Y = 380
  itm4.X = 440
end

function Menu.Scene0(id, control)
  Game.SetSaveVar("SceneToPlay", "Scene0")
  Menu.Reload(id, control)
end

function Menu.Scene1(id, control)
  Game.SetSaveVar("SceneToPlay", "Scene1")
  Menu.Reload(id, control)
end

function Menu.SwitchHRotAccel(id, control)
  local itm4
  itm4 = Scorer.GetItem(id, control)
  if Game.Get("HRotAccel") == 0 then
    Game.Set("HRotAccel", 1)
    itm4.Text = "Horiz. Accel:Enable"
  else
    Game.Set("HRotAccel", 0)
    itm4.Text = "Horiz. Accel:Disable"
  end
end

function Menu.Get_Sensib_Status()
  local valuez = langstr("Menu_Keep_Sticks_Sensibility") .. ":"
  if Game.Get("FullRotSpeed") < 0.9 then
    valuez = valuez .. langstr("Menu_Question_Low")
  elseif Game.Get("FullRotSpeed") < 1.1 then
    valuez = valuez .. langstr("Menu_Question_Medium")
  else
    valuez = valuez .. langstr("Menu_Question_High")
  end
  return valuez
end

function Menu.SwitchSensib(id, control)
  local itm4
  itm4 = Scorer.GetItem(id, control)
  if Game.Get("FullRotSpeed") < 0.9 then
    Game.Set("FullRotSpeed", 1)
  elseif Game.Get("FullRotSpeed") < 1.1 then
    Game.Set("FullRotSpeed", 1.5)
  else
    Game.Set("FullRotSpeed", 0.5)
  end
  itm4.Text = Menu.Get_Sensib_Status()
end

function Menu.SwitchSensibLow(id, control)
  local itm4
  itm4 = Scorer.GetItem(id, control)
  if Game.Get("FullRotSpeed") < 0.9 then
    Game.Set("FullRotSpeed", 1.5)
  elseif Game.Get("FullRotSpeed") < 1.1 then
    Game.Set("FullRotSpeed", 0.5)
  else
    Game.Set("FullRotSpeed", 1)
  end
  itm4.Text = Menu.Get_Sensib_Status()
end

function Menu.Get_AutoAim_Status(itm4)
  if Game.Get("AidedAim") == 0 then
    return langstr("Menu_Keep_Auto_Aim") .. ":" .. langstr("Menu_Question_No")
  else
    return langstr("Menu_Keep_Auto_Aim") .. ":" .. langstr("Menu_Question_Yes")
  end
end

function Menu.SwitchAutoAim(id, control)
  local itm4
  itm4 = Scorer.GetItem(id, control)
  if Game.Get("AidedAim") == 0 then
    Game.Set("AidedAim", 1)
    Game.Set("AimBrakeFollow", 1)
  else
    Game.Set("AidedAim", 0)
    Game.Set("AimBrakeFollow", 0)
  end
  itm4.Text = Menu.Get_AutoAim_Status()
end

function Menu.SwitchVRotAccel(id, control)
  local itm4
  itm4 = Scorer.GetItem(id, control)
  if Game.Get("VRotAccel") == 0 then
    Game.Set("VRotAccel", 1)
    itm4.Text = "Vert. Accel:Enable"
  else
    Game.Set("VRotAccel", 0)
    itm4.Text = "Vert. Accel:Disable"
  end
end

function Menu.Get_ShowVersion_Status()
  if Game.Get("RenderGameVersion") == 0 then
    return "Show Version" .. ":" .. langstr("Menu_Question_No")
  else
    return "Show Version" .. ":" .. langstr("Menu_Question_Yes")
  end
end

function Menu.SwitchShowVersion(id, control)
  local itm4
  itm4 = Scorer.GetItem(id, control)
  if Game.Get("RenderGameVersion") == 0 then
    Game.Set("RenderGameVersion", 1)
  else
    Game.Set("RenderGameVersion", 0)
  end
  itm4.Text = Menu.Get_ShowVersion_Status()
end

function Menu.Get_Placeholders_Status()
  if Menu.ShowPlaceHolders then
    return "Placeholders" .. ":" .. langstr("Menu_Question_Yes")
  else
    return "Placeholders" .. ":" .. langstr("Menu_Question_No")
  end
end

function Menu.SwitchPlaceholders(id, control)
  local itm4
  itm4 = Scorer.GetItem(id, control)
  if Game.GetSaveVar("Menu.ShowPlaceHolders") == "0" then
    Game.SetSaveVar("Menu.ShowPlaceHolders", "1")
  else
    Game.SetSaveVar("Menu.ShowPlaceHolders", "0")
  end
  Menu.ShowPlaceHolders = Game.GetSaveVar("Menu.ShowPlaceHolders") == "1"
  itm4.Text = Menu.Get_Placeholders_Status()
end

Menu.SkillLevels = {
  "Easy",
  "Normal",
  "Hard",
  "Very_Hard"
}
Menu.NumSkilLevels = #Menu.SkillLevels

function Menu.GetSwitchSkillLevelFunction(skillLevel)
  local function returnValue()
    Game.Set("GameSkill", skillLevel)
    
    Menu.MarkCurrentSkillLevel()
  end
  
  return returnValue
end

Menu.SetSkillEasy = Menu.GetSwitchSkillLevelFunction(0)
Menu.SetSkillNormal = Menu.GetSwitchSkillLevelFunction(1)
Menu.SetSkillHard = Menu.GetSwitchSkillLevelFunction(2)
Menu.SetSkillVery_Hard = Menu.GetSwitchSkillLevelFunction(3)

function Menu.Get_Crouch_Status()
  if Game.Get("CrouckKeepPressed") == 0 then
    return langstr("Menu_Keep_Crouch") .. ":" .. langstr("Menu_Question_Yes")
  else
    return langstr("Menu_Keep_Crouch") .. ":" .. langstr("Menu_Question_No")
  end
end

function Menu.SwitchCrouch(id, control)
  local itm5 = Scorer.GetItem(id, control)
  if Game.Get("CrouckKeepPressed") == 0 then
    Game.Set("CrouckKeepPressed", 1)
  else
    Game.Set("CrouckKeepPressed", 0)
  end
  itm5.Text = Menu.Get_Crouch_Status()
end

function Menu.Get_Subtitles_Status()
  if Game.Get("ShowSubtitles") == 0 then
    return langstr("Menu_Show_Subtitles") .. ": " .. langstr("Menu_Question_No")
  else
    return langstr("Menu_Show_Subtitles") .. ": " .. langstr("Menu_Question_Yes")
  end
end

function Menu.SwitchSubtitles(id, control)
  local subtitlesText = Scorer.GetItem(id, control)
  if Game.Get("ShowSubtitles") == 0 then
    Game.Set("ShowSubtitles", 1)
  else
    Game.Set("ShowSubtitles", 0)
  end
  subtitlesText.Text = Menu.Get_Subtitles_Status()
  if subtitlesText.uData.OriginalPosition then
    subtitlesText.Pos = subtitlesText.uData.OriginalPosition
    subtitlesText.CentralText = 1
  end
end

function Menu.Get_Reload_Status()
  if Game.Get("AutoReload") == 0 then
    return langstr("Menu_Keep_Auto_Reload") .. ":" .. langstr("Menu_Question_No")
  else
    return langstr("Menu_Keep_Auto_Reload") .. ":" .. langstr("Menu_Question_Yes")
  end
end

function Menu.SwitchReload(id, control)
  local itm5
  itm5 = Scorer.GetItem(id, control)
  if Game.Get("AutoReload") == 0 then
    Game.Set("AutoReload", 1)
  else
    Game.Set("AutoReload", 0)
  end
  itm5.Text = Menu.Get_Reload_Status()
end

function Menu.Get_Axis_Status()
  if Game.Get("InvertCharAxisControl") == 0 then
    return langstr("Menu_Keep_Invert_View") .. ":" .. langstr("Menu_Question_No")
  else
    return langstr("Menu_Keep_Invert_View") .. ":" .. langstr("Menu_Question_Yes")
  end
end

function Menu.Get_Sticks_Status()
  if Game.Get("PadInitInvertSticks") == 0 then
    return langstr("Menu_Keep_Switch_Sticks") .. ":" .. langstr("Menu_Keep_Stick_Left")
  else
    return langstr("Menu_Keep_Switch_Sticks") .. ":" .. langstr("Menu_Keep_Stick_Right")
  end
end

function Menu.SwitchAxis(id, control)
  local itm4
  itm4 = Scorer.GetItem(id, control)
  if Game.Get("InvertCharAxisControl") == 0 then
    Game.Set("InvertCharAxisControl", 1)
  else
    Game.Set("InvertCharAxisControl", 0)
  end
  itm4.Text = Menu.Get_Axis_Status()
end

function Menu.SwitchSticks(id, control)
  local itm4
  itm4 = Scorer.GetItem(id, control)
  if Game.Get("PadInitInvertSticks") == 0 then
    Game.Set("PadInitInvertSticks", 1)
  else
    Game.Set("PadInitInvertSticks", 0)
  end
  local platform = Game.Get("Platform")
  local controlMove = Scorer.GetItem(0, "ControlMove")
  local controlCrouch = Scorer.GetItem(0, "ControlCrouch")
  local controlAim = Scorer.GetItem(0, "ControlAim")
  local controlZoom = Scorer.GetItem(0, "ControlZoom")
  if Game.Get("PadInitInvertSticks") == 0 then
    controlMove.Text = langstr("Menu_Controls_Move")
    controlCrouch.Text = langstr("Menu_Controls_Crouch")
  else
    controlMove.Text = langstr("Menu_Controls_Aim")
    controlCrouch.Text = langstr("Menu_Controls_Zoom")
  end
  if platform == "PS3" then
    controlCrouch.Text = langstr("L3_Button") .. " : " .. controlCrouch.Text
  end
  if Game.Get("PadInitInvertSticks") == 0 then
    controlAim.Text = langstr("Menu_Controls_Aim")
    controlZoom.Text = langstr("Menu_Controls_Zoom")
  else
    controlAim.Text = langstr("Menu_Controls_Move")
    controlZoom.Text = langstr("Menu_Controls_Crouch")
  end
  if platform == "PS3" then
    controlZoom.Text = langstr("R3_Button") .. " : " .. controlZoom.Text
  end
  Input.ResetToDefault()
  itm4.Text = Menu.Get_Sticks_Status()
end

function Menu.SwitchControlType(id, control)
  local itm4
  itm4 = Scorer.GetItem(id, control)
  if Game.Get("WalkCameraCenter") == 0 then
    Game.Set("WalkCameraCenter", 5)
    Game.Set("MouseSmooth", 1)
    Game.Set("CamInterp", 1)
    itm4.Text = "Control:Console"
  else
    Game.Set("WalkCameraCenter", 0)
    Game.Set("MouseSmooth", 0)
    Game.Set("CamInterp", 0)
    itm4.Text = "Control:PC"
  end
end

function Menu.BackTitleMenu(id, control)
  Menu.YesNoMenu(langstr("Menu_Back_To_Title_Question"), "Menu.TryBackTitle", "Menu.MainMenu", langstr("Menu_Warning_Back_To_Title"))
end

function Menu.TryBackTitle(id, control)
  if Game.Get("Platform") == "X360" then
    if Game.IsSavedGameDamaged() == 1 then
      Menu.YesNoMenu(langstr("Menu_SaveGame_Overwrite_Question"), "Menu.BackTitle", "Menu.BackTitleWithoutSaving", langstr("X360_Menu_Corrupt_Content1"))
    else
      Menu.BackTitle(id, control)
    end
  else
    Menu.BackTitle(id, control)
  end
end

function Menu.BackTitle(id, control)
  AfterSaveCallbackFunc = SaveGame.LoadLevel
  AfterSaveCallbackParam = "menu"
  SaveGame.HardSaveGame()
end

function Menu.BackTitleWithoutSaving(id, control)
  SaveGame.LoadLevel("menu")
end

function Menu.ExitGameMenu(id, control)
  if Game.Get("isDemo") ~= 0 then
    local curTime = Game.GetSysTime()
    local diff = curTime - Game.Get("LastTimeShowedDemoScreens")
    print("Diff time from End Demo = " .. diff)
    if diff < 120 then
      Menu.YesNoMenu(langstr("Menu_ExitGame_Question"), "Menu.ExitClosingBook", "Menu.MainMenu", nil, nil, true)
    else
      Menu.YesNoMenu(langstr("Menu_ExitGame_Question"), "Menu.DemoSplashScreenExit", "Menu.MainMenu", nil, nil, true)
    end
  else
    Menu.YesNoMenu(langstr("Menu_ExitGame_Question"), "Menu.ExitClosingBook", "Menu.MainMenu", nil, nil, true)
  end
  Game.SetLoadingScreen("2D/Loading/PapelLibro-D.dds")
end

function Menu.BuyFullGame(id, control)
  if Game.Get("isDemo") ~= 0 then
    Game.BuyFullGame(true)
  end
end

function Menu.ShowGameInSteam()
  if Game.Get("isDemo") ~= 0 then
    Game.BuyFullGame(false)
  end
end

function Menu.ExitClosingBook(id, control)
  local si = Scorer.GetItem(id, "FuckingPaused")
  if si then
    si.Visible = 0
  end
  Input.SetActionSet("Null")
  Game.GetMenu():DoClose()
  Game.GetMenu().OnLoopEvent = "Menu.ExitGame"
end

function Menu.ExitDemo(id, control)
  Menu.YesNoMenu(langstr("Menu_ExitGame_Question"), "Menu.DemoSplashScreenExit", "Menu.MainMenu", langstr("Menu_ExitGame_Warning"))
end

function Menu.RestartGameMenu(id, control)
  Menu.YesNoMenu(langstr("Menu_Restart_Question"), "Menu.Reload", "Menu.MainMenu", langstr("Menu_Warning_Restart"))
end

function Menu.ExitLevelMenu(id, control)
  Menu.YesNoMenu(langstr("Menu_Exit_Level_Question"), "Menu.ExitLevel", "Menu.MainMenu", langstr("Menu_Warning_Exit_Level"))
end

function Menu.RestartWaypointGameMenu(id, control)
  Menu.YesNoMenu(langstr("Menu_Restart_Waypoint_Question"), "Menu.RestartWaypoint", "Menu.MainMenu", langstr("Menu_Warning_Restart_Waypoint"))
end

function Menu.RestartWaypoint(id, control)
  SaveGame.LoadWaypointBack = true
  SaveGame.LoadWaypoint()
end

function Menu.ExitGame(id, control)
  Game.Exit()
end

function Menu.BackToGame(id, control)
  if Team.isGameOver() == true or Menu.WorldMapMenuMode then
    return
  end
  Game.Set("InGameMenu", 0)
  Input.SetActionSet("Null")
  Game.GetMenu():DoFadeOut("Menu.OnFadeOutEnd")
  SaveGame.CheckTrackingVars()
  Menu.IsComingBack = false
  collectgarbage("collect")
  if Game.Get("VideoRender") == 1 then
    Sound.SetMusicVolume(0, 0.25)
  end
end

function Menu.EndOfTurnPage()
  Input.SetActionSet("Menu")
  Menu.OnMenuCanBeUsed()
end

function Menu.TurnPage(Next)
  local m = Game.GetMenu()
  if Game.GetMenu():IsClosed() then
    m:DoOpen()
  elseif Next == nil then
    m:TurnPage()
  elseif Next then
    m:DoNext()
  else
    m:DoPrev()
  end
  Input.SetActionSet("Null")
  m.OnLoopEvent = "Menu.EndOfTurnPage"
end

function Menu.OpenBook()
  local m = Game.GetMenu()
  m:DoOpen()
  Input.SetActionSet("Null")
  m.OnLoopEvent = "Menu.EndOfTurnPage"
end

function Menu.SwitchCameras()
  local m, c, C
  m = Game.GetMenu()
  c = m.oCamRender
  C = m.oCamLoop
  local Pos = c.Pos
  local Ang = c.Ang
  local FOV = c.FOV
  c.Pos = C.Pos
  c.Ang = C.Ang
  c.FOV = C.FOV
  C.Pos = Pos
  C.Ang = Ang
  C.FOV = FOV
end

function Menu.SetUpCameras(Left)
  Left = defparam(Left, false)
  local m, c
  m = Game.GetMenu()
  c = m.oCamRender
  if Left then
    c.Pos = V3D(8.1, 20, 1.8)
  else
    c.Pos = V3D(-7.6, 20, 1.8)
  end
  c.Ang = V3D(90, 0, 0)
  c.FOV = 30
  c = m.oCamLoop
  local ratio = 1.7777777910232544
  local Ang = V3D((1.7777777910232544 - ratio) * 40, 0, 0)
  c.Pos = V3D(0, 35, -16.2):rot(Ang)
  c.Ang = V3D(65.5, 0, 0) + Ang
end

if Game.Get("NumLoadLevels") == 1 then
  Menu.SetUpCameras()
end

function Menu.OnFadeOutEnd()
  Input.SetActionSet(Menu.LastMode)
  Game.SetTimeSpeed(Menu.LastTimeSpeed)
  if Game.Get("SoundMainVolume") < 0.05 then
    Sound.StopAllSounds()
  end
  if Menu.currentSoundPitch ~= 0 then
    Game.Set("S_PitchScale", Menu.currentSoundPitch)
  else
    Game.Set("S_PitchScale", 1)
  end
  if Game.Get("VideoRender") == 1 then
    Sound.StopMusic()
    Scene.VideoScorer_Resume(id, control)
    return
  end
  Menu.BackToGame_CloseScorer(0, nil)
  WarioMsg.Restore()
end

function Menu.BackToGame_CloseScorer(id, control)
  Game.Set("R_DrawFrame", 0)
  Sound.PauseMusic(false)
  if Scene and Scene.IsPlaying then
    Game.ScreenSaverEnable(false)
  end
  Scorer.Clear(id, true)
  Menu.ShowScorer()
  if Menu.BackToGameCallback then
    Menu.BackToGameCallback()
  end
  Game.Set("ScorerRender", 1)
end

function Menu.ExitLevel(id, control)
  Game.Set("gvLastLevelPlayed", init.level_name)
  SaveGame.ClearSaveMarker()
  Game.SoftSaveConfig()
  Menu.TryBackTitle(id, control)
end

function Menu.Reload(id, control)
  SaveGame.ClearSaveMarker()
  SaveGame.Restart()
end

function Menu.LinkLR(LeftOne, RightOne)
  LeftOne.Right = RightOne.Name
  RightOne.Left = LeftOne.Name
end

function Menu.LinkUD(UpOne, DownOne)
  UpOne.Down = DownOne.Name
  DownOne.Up = UpOne.Name
end

function Menu.UnLinkLR(LeftOne, RightOne)
  LeftOne.Right = ""
  RightOne.Left = ""
end

function Menu.UnLinkUD(UpOne, DownOne)
  UpOne.Down = ""
  DownOne.Up = ""
end

Menu.UsePauseSys = true
Menu.UsePauseMessage = false

function Menu.OnFadeInEnd(alreadyFadedIn)
  Input.SetActionSet("Menu")
  local si = Scorer.GetItem(0, "FuckingPaused")
  if si then
    si.FadeIn = 0.25
  end
  if 1 ~= alreadyFadedIn and not Menu.IgnoreBookFadeIn then
    Menu.FadeInNavigationHUD()
  end
  Menu.OnMenuCanBeUsed()
end

function Menu.OnMenuCanBeUsed()
  if Menu.OnMenuCanBeUsedCallback then
    local f = Menu.OnMenuCanBeUsedCallback
    Menu.OnMenuCanBeUsedCallback = nil
    f()
  end
end

function Menu.OnDashboard()
  Menu.OnPauseEvent("IsConsoleDashboard")
end

function Menu.ControllerDisconnected()
  Menu.OnPauseEvent("IsControllerDisconnected")
end

function Menu.OnPauseEvent(GvarName)
  if string.lower(string.sub(Game.GetLevelPath(), 8)) == "menu" then
    return
  end
  local ev = Game.Get("EscapeEvent")
  local as = Input.GetActionSet()
  if ev ~= "" and as ~= "Menu" and as ~= "Null" then
    ev = Game.Split(ev, ".")
    _G[ev[1]][ev[2]]()
  elseif as == "Null" or as == "Walk" and ev == "" then
    Game.ConsoleError(GvarName .. "\n")
    Game.GVar(GvarName).Default = false
  end
end

function Menu.GetUsePauseMessage()
  Menu.UsePauseMessage = not Menu.isStartUpMenu and Menu.UsePauseSys and Team.isGameOver() ~= true and not WorldMap.QuestEndOfLevel
  return Menu.UsePauseMessage
end

function Menu.InitMenuSys(timeSpeed)
  Input.Rumble(0, 0, 0, 0)
  timeSpeed = defparam(timeSpeed, 0)
  Menu.LastMode = Input.GetActionSet()
  Input.SetActionSet("Null")
  Menu.LastTimeSpeed = Game.GetTimeSpeed()
  Game.SetTimeSpeed(timeSpeed)
  Menu.GetUsePauseMessage()
  Game.GetMenu():DoFadeIn("Menu.OnFadeInEnd")
  Game.SoftSaveConfig()
  if Scene and Scene.IsPlaying then
    Sound.PauseMusic(true)
    Game.ScreenSaverEnable(true)
  end
  Menu.CreateNavigationHUD()
  Menu.SetBookCallbacks()
  if Game.Get("Platform") == "PC" then
    Game.Set("InputChanged", "Menu.InputChangedCallback")
  end
end

function Menu.YesNoMenu(Title, ActionYes, ActionNo, Warning, bRightPage, pageDirection, topTitle, dontTurnPage)
  local si, Yes, No, mit, arr, i, QuestionMenuYStart
  if not dontTurnPage then
    Menu.TurnPage(pageDirection)
  end
  Menu.StartNewMenu()
  if topTitle and "" ~= topTitle then
    QuestionMenuYStart = 260
  else
    QuestionMenuYStart = 230
  end
  local xPos = 128
  if bRightPage then
    xPos = 512
  end
  if Warning then
    local astr = Scorer.SplitString(Warning, Menu.SmallFont, 300)
    for i = 1, #astr do
      si = Scorer.NewItem(0, "Warning" .. i, "Text")
      si.Font = Menu.SmallFont
      si.Text = astr[i]
      si.Pos = V2D(xPos, QuestionMenuYStart - 40 - (#astr - i) * 30)
      si.CentralText = 1
      si.Color = Menu.DangerColor
      si.Size = V3D(0, 0)
    end
  end
  si = Scorer.NewItem(0, "DoExit", "Text")
  si.Font = Menu.SmallFont
  si.Text = Title
  si.Pos = V2D(xPos, QuestionMenuYStart)
  si.CentralText = 1
  si.Color = Menu.TitleColor
  Yes = Scorer.NewItem(0, "Yes", "Text")
  Yes.Text = langstr("Menu_Question_Yes")
  Yes.UseBlood = 0
  Yes.OnAccept = ActionYes
  Yes.X = xPos - 80
  No = Scorer.NewItem(0, "No", "Text")
  No.Text = langstr("Menu_Question_No")
  No.UseBlood = 0
  No.OnAccept = ActionNo
  No.X = xPos + 80
  arr = {No, Yes}
  for i = 1, table.getn(arr) do
    mit = arr[i]
    mit.Font = Menu.SmallFont
    mit.Y = QuestionMenuYStart + 40
    mit.CentralText = 1
    mit.Color = Menu.ItemColor
  end
  Menu.LinkLR(No, Yes)
  Menu.LinkLR(Yes, No)
  Scorer.SetDefault(0, "No")
  Scorer.SetOnCancel(0, ActionNo)
  si.Size = V3D(0, 0)
  Menu.DrawBackMenu()
  if Menu.DrawBackMenu ~= Menu.DrawBackMenuFirstScreen then
  end
  if not bRightPage then
    Menu.CreateAdornmentCross(2)
  end
  if topTitle and "" ~= topTitle then
    si = Scorer.NewItem(0, "YesNoMenuTopTitle", "Text", 1)
    si.Text = topTitle
    si.Font = Menu.AverageFont
    si.Align = "Center"
    si.Pos = V2D(128, 60)
    si.Color = Menu.ItemColor
    Menu.CreateUnderlineAdornment("YesNoMenuTopTitle_Underline", V2D(0.25, 0.2))
  end
  Menu.IsComingBack = true
  Menu.ShowNavigationHUD("Menu_Nav_Back", "Menu_Nav_Select")
end

Menu.MultilineKey = "Tittle"

function Menu.TextMultiline(Title, Font, Color, YOff, XOff, SplitLength, YSep, AlignMode, OnRenderFunc)
  XOff = defparam(XOff, 0)
  SplitLength = defparam(SplitLength, 300)
  YSep = defparam(YSep, 30)
  AlignMode = defparam(AlignMode, "Center")
  OnRenderFunc = defparam(OnRenderFunc, nil)
  local astr = Scorer.SplitString(Title, Font, SplitLength)
  local YStart = YOff - #astr * YSep / 2
  local j = 1
  local item = Scorer.GetItem(0, Menu.MultilineKey .. j)
  while item do
    j = j + 1
    item = Scorer.GetItem(0, Menu.MultilineKey .. j)
  end
  for i = j, j + #astr do
    local si = Scorer.NewItem(0, Menu.MultilineKey .. i, "Text")
    si.Font = Font
    si.Text = astr[i - j]
    si.Pos = V2D(128 + XOff, YStart)
    si.Align = AlignMode
    si.Color = Color
    si.Size = V3D(0, 0)
    if OnRenderFunc then
      si.OnRender = OnRenderFunc
      si.uData.LoopHighlight = true
    end
    YStart = YStart + YSep
  end
  return YStart
end

function Menu.AcceptMenuMultiline(Title, ActionAccept, Color, Warning)
  local si, Accept
  Color = defparam(Color, Menu.TitleColor)
  Warning = defparam(Warning, false)
  Menu.TurnPage()
  Menu.StartNewMenu()
  local YStart = Menu.TextMultiline(Title, Menu.SmallFont, Color, 240)
  Accept = Scorer.NewItem(0, "Accept", "Text")
  Accept.Font = "HoratioLittle"
  Accept.Text = langstr("Menu_Accept")
  Accept.X = 128
  Accept.Y = YStart + 20
  Accept.CentralText = 1
  Accept.UseBlood = 0
  Accept.OnAccept = ActionAccept
  Accept.Color = Menu.ItemColor
  Scorer.SetDefault(0, "Accept")
  Scorer.SetOnCancel(0, "")
  Menu.DrawBackMenu()
  local platform = Game.Get("Platform")
  local dlc1, dlc2 = SaveGame.IsDLCAvailable()
  Menu.CreateAdornmentCross(1)
  Menu.ShowNavigationHUD(nil, "Menu_Accept")
end

function Menu.VerticalMenu(Title, Options, BackFunction, Font, YStart, VerticalStep, bDrawBack, bRightPage, bKeepLastScorer, bWithoutAdornments, x)
  if Menu.VerticalMenuCallback then
    Menu.VerticalMenuCallback(Title)
  end
  local sititle, mit, size, i1, i2, StartPoint, idx
  local VerticalMenuYStart = defparam(YStart, 160)
  Font = defparam(Font, Menu.SmallFont)
  VerticalStep = defparam(VerticalStep, 35)
  bDrawBack = defparam(bDrawBack, true)
  Menu.StartNewMenu(false, bKeepLastScorer)
  local xPos = x or 128
  local itemPostfix = ""
  local createAtTop = 0
  if bRightPage then
    xPos = x or 512
    itemPostfix = "_R"
    createAtTop = 1
  end
  sititle = Scorer.NewItem(0, "DoExit" .. itemPostfix, "Text", createAtTop)
  sititle.Font = Menu.AverageFont
  sititle.Text = Title
  sititle.Pos = V2D(xPos, 60)
  sititle.Color = Menu.TitleColor
  sititle.Align = "Center"
  sititle.Size = V3D(0, 0)
  size = table.getn(Options)
  StartPoint = VerticalMenuYStart + 22
  for i = 1, size do
    if Menu.SeparateFirst and 1 < i then
      idx = i + 1
    else
      idx = i
    end
    mit = Scorer.NewItem(0, "Itm" .. i .. itemPostfix, "Text", createAtTop)
    mit.Text = Options[i][1]
    mit.OnAccept = Options[i][2]
    mit.Pos = V2D(xPos, StartPoint + idx * VerticalStep)
    mit.Font = Font
    mit.CentralText = 1
    mit.Color = Menu.ItemColor
    if Options[i].onLeft then
      mit.onLeft = Options[i].onLeft
    end
    if Options[i].onRight then
      mit.onRight = Options[i].onRight
    end
  end
  for i = 1, size - 1 do
    Menu.LinkUD(Scorer.GetItem(0, "Itm" .. i + 0 .. itemPostfix), Scorer.GetItem(0, "Itm" .. i + 1 .. itemPostfix))
  end
  Menu.LinkUD(Scorer.GetItem(0, "Itm" .. size .. itemPostfix), Scorer.GetItem(0, "Itm1" .. itemPostfix))
  Scorer.SetDefault(0, "Itm1" .. itemPostfix)
  Scorer.SetOnCancel(0, BackFunction)
  if BackFunction and "" ~= BackFunction then
    Menu.ShowNavigationHUD("Menu_Nav_Back", "Menu_Nav_Select")
  else
    Menu.ShowNavigationHUD(nil, "Menu_Nav_Select")
  end
  if bDrawBack then
    Menu.DrawBackMenu()
  end
  if Menu.DrawBackMenu ~= Menu.DrawBackMenuFirstScreen then
  end
  if not bWithoutAdornments and "" ~= Title then
    Menu.CreateUnderlineAdornment(Title .. "_Underline", V2D(0.25, 0.2))
  end
end

Menu.ExitFromDemo = false

function Menu.DemoSplashScreenExit(id, control)
  print("Menu.DemoSplashScreenExit")
  Scorer.DeleteScheduledFuncs(0, "LaunchNextDemoSplashScreen")
  Menu.ExitFromDemo = true
  Game.Set("CheckInactivityTime", 180)
  Game.Set("CheckInactivityFunc", "Menu.ExitGame")
  Menu.ExitClosingBook(id, control)
end

function Menu.DemoSplashScreen(acceptFunc)
  acceptFunc = defparam(acceptFunc, "Menu.SplashExitGame")
  Menu.UsePauseSys = false
  Menu.InitMenuSys()
  Menu.UsePauseSys = true
  Game.Set("ScorerUseCursor", 0)
  local keyStr = "Menu_Press_Start"
  if Game.Get("Platform") == "PC" and Game.Get("PCPadConnected") == 1 then
    keyStr = "X360_" .. keyStr
  end
  Menu.VerticalMenu("", {
    {
      langstr(keyStr),
      acceptFunc
    }
  }, "", "Message", 30, 9, false)
  local pressStartItem = Scorer.GetItem(0, "Itm1")
  pressStartItem.Y = 390
  pressStartItem.Visible = 0
  pressStartItem.Outside = 1
  pressStartItem.Align = "Center"
  Game.Set("ScorerExecuteTime", Game.Get("ScorerExecuteTime") + 6)
  Game.Set("ScorerExecuteFunc", "Menu.ActivateAcceptButton")
end

function Menu.ActivateAcceptButton()
  if Game.Get("Platform") == "X360" then
    Game.Exit()
  else
    Scorer.GetItem(0, "Itm1").Visible = 1
    Scorer.SetDefault(0, "Itm1")
    Game.Set("ScorerExecuteTime", Game.Get("ScorerExecuteTime") + 90)
    Game.Set("ScorerExecuteFunc", "Menu.ExitGame")
  end
end

function Menu.SplashReload(id, control)
  if Scorer.GetItem(id, control).Visible == 1 then
    Game.Set("ScorerUseCursor", 1)
    Menu.Reload(id, control)
  end
end

function Menu.SplashExitGame(id, control)
  if Scorer.GetItem(id, control).Visible == 1 then
    Game.Set("ScorerUseCursor", 1)
    Menu.ExitGame(id, control)
  end
end

function Menu.LaunchTimeOut()
  if Game.Get("isDemo") ~= 0 then
    Menu.DemoSplashScreenExit(0, nil)
  end
end

function Menu.DrawBackMenu()
end

function Menu.SetPictureText(text)
  local levelstr = string.lower(string.sub(init.LevelFile, 8))
  Game.SetSaveVar(init.LevelName .. ".Picture_Description", "Menu_Picture_" .. levelstr .. text)
end

Menu.ActualTakString = Game.GVar("ActualTakString")

function Menu.DrawBackMenuFirstScreen(Left)
  Left = defparam(Left, false)
  Menu.SetUpCameras(Left)
  local delta
  if Left then
    delta = 400
  else
    delta = 0
  end
  if not Menu.WorldMapMenuMode then
    local itm
    itm = Scorer.NewItem(0, "GameRender", "Render")
    itm.File = "2D/Menu/RenderMask.alpha.tga"
    itm.ShaderFilterMask = 1
    itm.Unit = 1
    itm.Pos = V2D(128 + delta, 200)
    itm.Color = Color(255, 241, 190, 255)
    itm.Pivot = V2D(0.5, 0.5)
    itm.Scale = V2D(162 * Game.Get("PhysicalAspectRatio"), 162)
    local bGameOver = Team.isGameOver()
    local levelstr = string.lower(string.sub(init.LevelFile, 8))
    local astr = Scorer.SplitString(langstr("Menu_Level_" .. levelstr), Menu.AverageFont, 300)
    for i = 1, #astr do
      itm = Scorer.NewItem(0, "LevelName" .. i, "Text", 1)
      itm.Font = Menu.AverageFont
      itm.Text = astr[i]
      itm.Pos = V2D(125, 25 + i * 30)
      itm.Color = Menu.TitleColor
      itm.Size = V3D(0, 0)
      itm.Align = "Center"
    end
    local gvarname = init.LevelName .. ".Picture_Description"
    Game.CreateSaveVar(gvarname, "Menu_Picture_" .. levelstr)
    local TipStr, toContinue
    if bGameOver then
      TipStr = Tips.GetTip()
    elseif Menu.ActualTakString.Value ~= "" then
      if WorldMap.QuestEndOfLevel then
        TipStr = ""
      else
        TipStr = Menu.ActualTakString.Value
      end
    else
      local pictureKey = Game.GetSaveVar(gvarname)
      local conditionKey = Tips.GetPauseKey()
      if not Scene or Scene.IsPlaying or WorldMap.QuestEndOfLevel then
        TipStr = ""
        if WorldMap.QuestEndOfLevel and Game.Get("isDemo") ~= 0 and init.level_name == "1_4_haunting_path" then
          toContinue = langstr("Demo_ToContinue")
        end
      elseif "Menu_Picture_" .. levelstr ~= pictureKey or nil == conditionKey then
        TipStr = langstr(pictureKey)
      else
        TipStr = langstr(conditionKey)
      end
    end
    local astr = Scorer.SplitString(TipStr, Menu.Message, 300)
    for i = 1, #astr do
      itm = Scorer.NewItem(0, "Description" .. i, "Text", 1)
      itm.Font = Menu.Message
      itm.Text = astr[i]
      itm.Pos = V2D(125, 300 + i * 15)
      itm.Color = Menu.TitleColor
      itm.Size = V3D(0, 0)
      itm.Align = "Center"
      if bGameOver then
        itm.Effect = "Burn"
        itm.Alpha = 0
        itm.OnRender = "Menu.TipFxRender"
        itm.uData.FadeTime = -i / 4
      end
    end
    if bGameOver then
      itm = Scorer.NewItem(0, "_The_End_", "Text", 1)
      itm.Font = Menu.AverageFont
      itm.Text = langstr("Menu_The_End")
      itm.Pos = V2D(265, 415)
      itm.Color = Menu.TitleColor
      itm.Size = V3D(0, 0)
      itm.Align = "Right"
    end
    if toContinue then
      itm = Scorer.NewItem(0, "ToBeContinued", "Text", 1)
      itm.Font = Menu.AverageFont
      itm.Text = toContinue
      itm.Pos = V2D(130, 415)
      itm.Color = Menu.TitleColor
      itm.Size = V3D(0, 0)
      itm.Align = "Center"
    end
  end
end

function Menu.TipFxRender(scorerId, itemName, timeDiff, callback)
  local itm = Scorer.GetItem(scorerId, itemName)
  itm.uData.FadeTime = itm.uData.FadeTime + timeDiff
  if itm.uData.FadeTime < 0 then
    return
  end
  local p = itm.uData.FadeTime * 4 % 2
  if 0 <= p and p < 1 then
    p = 1 - p
    p = math.pow(p, 2)
  else
    p = p - 1
    p = math.pow(p, 2)
  end
  local t = itm.uData.FadeTime % 2
  if 0 <= t and t < 1 then
    local p = t
    itm.Alpha = p * 255
  elseif 1 <= t and t < 2 then
    itm.Alpha = 255
    itm.Effect = ""
    itm.OnRender = ""
    itm.Color = Menu.TitleColor
  end
end

function Menu.ChangeVerticalMenuBackScreen(title)
  if title == "" then
    Menu.DrawBackMenu = Menu.DrawBackMenuFirstScreen
  else
    Menu.DrawBackMenu = Menu.DefaultBackMenuFunc
  end
end

Menu.DefaultBackMenuFunc = Menu.DrawBackMenu

function Menu.StartNewMenu(CoolArrow, keepLastScorer)
  local cursor, pos_x, pos_y, visible
  CoolArrow = defparam(CoolArrow, false)
  keepLastScorer = defparam(keepLastScorer, false)
  cursor = Scorer.GetItem(0, "Cursor")
  if cursor == nil then
    pos_x, pos_y, visible = 320, 240, 0
  else
    pos_x, pos_y, visible = cursor.X, cursor.Y, cursor.Visible
  end
  if keepLastScorer then
    return
  end
  Scorer.Clear(0)
  cursor = Scorer.NewItem(0, "Cursor", "Sprite")
  Scorer.SetCursor(0, "Cursor")
  cursor.HighRes = 1
  if CoolArrow then
    cursor.IsMultiSprite = 1
    cursor.File = "2D/arrow.alpha.tga"
    cursor.PivotX = 0.03125
    cursor.PivotY = 0.03125
    cursor.SpriteIndex = 2
  else
    cursor.IsMultiSprite = 0
    cursor.File = "2D/cursor.alpha.tga"
    cursor.PivotX = 0
    cursor.PivotY = 0
  end
  cursor.X, cursor.Y, cursor.Visible = pos_x, pos_y, visible
  Menu.currentSoundPitch = Game.Get("S_PitchScale")
  Game.Set("S_PitchScale", 1)
  Game.Set("NoiseFactor", 0)
  Game.Set("ScorerRender", 1)
  local si
  if Menu.UsePauseMessage then
    si = Scorer.NewItem(0, "FuckingPaused", "Text")
    if si ~= nil then
      si.Font = "HoratioLittle"
      si.Text = langstr("Menu_GamePaused")
      si.Pos = V2D(320, 38)
      si.CentralText = 1
      si.Color = Menu.BrownColor
      si.Effect = "Darkness"
      si.Size = V3D(0, 0)
      si.Outside = 1
      si.FadeOut = 0
      si.Persistent = 1
    end
  else
    si = Scorer.GetItem(0, "FuckingPaused")
    if si then
      si.DelMe = 1
    end
  end
  if Menu.OnStartNewMenu then
    local f = Menu.OnStartNewMenu
    Menu.OnStartNewMenu = nil
    f()
  end
end

function Menu.GhostBulletScorer()
  Scorer.Clear(0)
  local Aim = Scorer.NewItem(0, "Aim", "Sprite")
  Aim.HighRes = 1
  Aim.IsMultiSprite = 1
  Aim.File = "2D/Jericho/AimWeapons.alpha.tga"
  Aim.PivotX = 0.5
  Aim.PivotY = 0.5
  Aim.SpriteIndex = 48
  Aim.X, Aim.Y, Aim.Visible = 320, 240, 1
end

Menu.bShowAim = true
Menu.bShowTeamStatus = true
Menu.bShowAmmo = true

function Menu.AddScorerTalk()
  local si = Scorer.NewItem(0, "Talk", "Talk")
  si.Pos = V2D(320, 420)
  si.TabVisible = 1
  si.TabBlendingMode = 6
  si.TabSprite = "2D/HUD/HUD.alpha.tga"
  si.TabSpriteIndex = 74
  si.TabAlpha = 255
  si.TabRed = 255
  si.TabGreen = 255
  si.TabBlue = 255
  si.MaxViewLines = 30
  return si
end

function Menu.AddLogo(id)
  local Logo
  local logoalpha = 255
  if not Menu.isStartUpMenu and not Menu.WorldMapMenuMode then
    Logo = Scorer.NewItem(id, "MainLogo", "Sprite", 1)
    Logo.HighRes = 1
    Logo.IsMultiSprite = 1
    Logo.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    Logo.SpriteIndex = 24
    Logo.PivotX = 0.5
    Logo.PivotY = 0.5
    Logo.Pos = V2D(512, 110)
    Logo.Color = Color(255, 255, 255, 255)
    local Logo2 = Scorer.NewItem(id, "MainLogo2", "Sprite", 1)
    Logo2.IsMultiSprite = 0
    Logo2.HighRes = 1
    Logo2.File = "2D/Menu/dds/logoinbook.dds"
    Logo2.PivotX = 0.5
    Logo2.PivotY = 0.5
    Logo2.Pos = V2D(512, 170)
    Logo2.Color = Color(255, 255, 255, 255)
  end
end

function Menu.AfterLoadGame()
  if Game.Get("toolmode") ~= 0 then
    addSF(-1, "AfterLoadGame_Tool", "Menu.AfterLoadGame_Tool")
  elseif 0 < Game.Get("GameRecorder") then
    addSF(-1, "AfterLoadGame_Tool", "Menu.AfterLoadGame_Recorder")
  else
    Menu.AfterLoadGame_Game()
  end
end

function Menu.AfterLoadGame_Tool()
  Menu.LastMode = "EditorIn"
  Menu.LastTimeSpeed = 1
  Input.SetActionSet("Null")
  Menu.currentSoundPitch = 1
  Game.GetMenu():DoHide()
  Game.GetMenu().OnLoopEvent = ""
  Menu.OnFadeOutEnd()
end

function Menu.AfterLoadGame_Recorder()
  Menu.LastMode = "Walk"
  Menu.LastTimeSpeed = 1
  Input.SetActionSet("Null")
  Menu.currentSoundPitch = 1
  Game.GetMenu():DoHide()
  Game.GetMenu().OnLoopEvent = ""
  Menu.OnFadeOutEnd()
end

function Menu.AfterLoadGame_Game()
  Game.Set("ScorerUseCursor", 0)
  Menu.LastMode = "Walk"
  Menu.LastTimeSpeed = 1
  Menu.currentSoundPitch = 1
  Input.SetActionSet("Null")
  Game.GetMenu():DoShow()
  Game.GetMenu():DoLoop()
  Game.SetTimeSpeed(1)
  Game.Set("AfterDrawCallback", "Menu.AfterLoadGame_0")
  Game.Set("RT_PixelMotionBlur", 0)
  Menu.PauseLoadSounds()
end

function Menu.PauseLoadSounds()
  Game.Set("S_PauseGameSounds", 1)
end

function Menu.RestoreLoadSounds()
  Game.Set("S_PauseGameSounds", 0)
end

function Menu.AfterLoadGame_0()
  if Game.Get("PlayVideo") == "" and Game.Get("VideoRender") == 0 or ifile ~= nil then
    Game.SetTimeSpeed(1)
  elseif Game.Get("VideoRender") == 1 then
    Menu.PlayPauseVideoMusic()
    Game.Set("PlayVideoPause", 1)
  end
  Menu.DrawBackMenu()
  Game.Set("DoLoadingRender", true)
  Menu.AfterLoadGame_1()
end

function Menu.AfterLoadGame_1()
  Game.Set("AfterDrawCallback", "Menu.AfterLoadGame_2_A")
  if Scene.IsPlaying then
    Menu.LastMode = "Inactive"
    Scene.AcActionSet = "Walk"
  end
  Game.Set("DrawNextFrame", 0)
end

function Menu.AfterLoadGame_2_A()
  if Game.Get("DrawNextFrame") >= 1 then
    Game.Set("AfterDrawCallback", "Menu.AfterLoadGame_2_B")
    if Game.Get("VideoRender") == 1 then
      Menu.TempVideoScorer = Scene.CreateVideoScorerItem()
    end
    Game.GetMenu():NeedRender()
  else
    Game.Set("AfterDrawCallback", "Menu.AfterLoadGame_2_A")
  end
end

function Menu.AfterLoadGame_2_B()
  if Menu.TempVideoScorer then
    Menu.TempVideoScorer:Del()
    Menu.TempVideoScorer = nil
  end
  Game.Set("AfterDrawCallback", "Menu.AfterLoadGame_3")
end

function Menu.AfterLoadGame_3()
  local vr_x, vr_y, vr_X, vr_Y = Scorer.GetValidRect()
  Game.Set("RT_PixelMotionBlur", 1)
  Input.SetActionSet("Menu")
  Game.Set("LoadingScorerShowProgress", 0)
  Game.SetTimeSpeed(0)
  Menu.RestoreLoadSounds()
  Menu.PressStart("Menu.AfterLoadGame_Start")
  if ifile ~= nil then
    Menu.AfterLoadGame_Start()
  end
  Menu.DrawBackMenu()
end

function Menu.PressStart(onAccept)
  Menu.KonamiCode_Start()
  local vr_x, vr_y, vr_X, vr_Y = Scorer.GetValidRect()
  Menu.StartNewMenu()
  local levelName = string.lower(Game.GetSaveVar("LevelName"))
  Menu.IsNarrating = "Menu.AfterLoadGame_Start" == onAccept and levelName ~= "menu" and levelName ~= "6_3_game_room"
  local keyStr = "Menu_Press_Start"
  if Game.Get("Platform") == "PC" and Game.Get("PCPadConnected") == 1 then
    keyStr = "X360_" .. keyStr
  end
  local si = Scorer.NewItem(0, "Start", "Text")
  si.Font = "MessageBig"
  si.Text = langstr(keyStr)
  si.Pos = V2D(320, vr_Y - 15)
  si.CentralText = 1
  si.Color = Menu.ItemColor * 4
  if Menu.IsNarrating then
    Game.Set("EndOfSpeech", "Menu.EndOfSpeech")
    Menu.LaunchPressStartSound = false
    si.Effect = "None"
  else
    si.Effect = "Darkness"
  end
  si.Size = V2D(0, 0)
  si.Outside = 1
  si.OnRender = "Menu.PressStartOnRender"
  local si2 = Scorer.NewItem(0, "Start2", "Text")
  si2.Pos = si.Pos
  si2.Size = V2D(0, 0)
  si2.OnAccept = onAccept
  si2.Outside = 1
  Scorer.SetDefault(0, "Start2")
  Scorer.SetOnCancel(0, "")
  Game.ScreenSaverEnable(true)
  if Cheats.AnyCheatActive() then
    Game.Set("AchievementsBlocked", true)
    Game.Set("SaveGameActive", 0)
  end
  Cheats.Initialize()
end

function Menu.EndOfSpeech()
  Menu.IsNarrating = false
  Menu.LaunchPressStartSound = true
  Menu.PressStartFadeTime = 0
end

Menu.PressStartFadeTime = 0
Menu.LaunchPressStartSound = true

function Menu.PressStartOnRender(scorerId, itemName, timeDiff, callback)
  if Menu.IsNarrating then
    timeDiff = 0.5 * timeDiff
  end
  local itm = Scorer.GetItem(scorerId, itemName)
  Menu.PressStartFadeTime = Menu.PressStartFadeTime + timeDiff
  local p = Menu.PressStartFadeTime * 4 % 2
  if 0 <= p and p < 1 then
    p = 1 - p
    p = math.pow(p, 2)
  else
    p = p - 1
    p = math.pow(p, 2)
  end
  local pcolor = Menu.ItemColor * (3 + p * 3)
  itm.Color = Color(math.min(pcolor.x, 255), math.min(pcolor.y, 255), math.min(pcolor.z, 255), math.min(pcolor.w, 255))
  local t = Menu.PressStartFadeTime % 2
  if Menu.IsNarrating then
    itm.Effect = "None"
  elseif 0 <= t and t < 1 then
    local p = t
    itm.Alpha = p * 255
    itm.Effect = "Burn&Darkness"
  elseif 1 <= t and t < 2 then
    itm.Alpha = 255
    itm.Effect = "Darkness"
  end
  if Menu.LaunchPressStartSound and Menu.PressStartFadeTime > 0.3 then
    Menu.LaunchPressStartSound = false
    Scorer.PlayScorerSound("Fanfare_03", 1, 0)
  end
  local cvLogo = Scorer.GetItem(0, "CastlevaniaLogo")
  if cvLogo then
    local alpha = 255 * (Menu.PressStartFadeTime / 4)
    if 255 < alpha then
      alpha = 255
    end
    cvLogo.Color = Color(255, 255, 255, alpha)
  end
end

Menu.KonamiCode = {
  "Up",
  "Up",
  "Down",
  "Down",
  "Left",
  "Right",
  "Left",
  "Right",
  "B",
  "A"
}
Menu.KonamiCode_Status = 1

function Menu.KonamiCode_Start()
  Input.Bind(0, "Menu", "ItemUp", "Menu.KonamiCode_Up")
  Input.Bind(0, "Menu", "ItemDown", "Menu.KonamiCode_Down")
  Input.Bind(0, "Menu", "ItemLeft", "Menu.KonamiCode_Left")
  Input.Bind(0, "Menu", "ItemRight", "Menu.KonamiCode_Right")
  Input.Bind(0, "Menu", "Cancel", "Menu.KonamiCode_Cancel")
  Input.Bind(0, "Menu", "Accept", "Menu.KonamiCode_Accept")
  if Game.Get("Platform") == "PC" then
    Game.Set("KonamiCodeB", "Menu.KonamiCode_B")
    Game.Set("KonamiCodeA", "Menu.KonamiCode_A")
  end
end

function Menu.KonamiCode_End()
  Input.Bind(0, "Menu", "ItemUp", "")
  Input.Bind(0, "Menu", "ItemDown", "")
  Input.Bind(0, "Menu", "ItemLeft", "")
  Input.Bind(0, "Menu", "ItemRight", "")
  Input.Bind(0, "Menu", "Cancel", "")
  Input.Bind(0, "Menu", "Accept", "")
  if Game.Get("Platform") == "PC" then
    Game.Set("KonamiCodeB", "")
    Game.Set("KonamiCodeA", "")
  end
end

function Menu.KonamiCode_Check(id)
  if Menu.KonamiCode[Menu.KonamiCode_Status] == id then
    if #Menu.KonamiCode == Menu.KonamiCode_Status then
      Menu.KonamiCode_End()
      Game.ConsoleError("Konami Code!\n")
      Game.Set("gvKonamiCode", true)
      Sound.Play("Gem_ScorerLock_5", 1, 0)
    else
      Menu.KonamiCode_Status = Menu.KonamiCode_Status + 1
    end
  end
end

function Menu.KonamiCode_Up(id)
  Menu.KonamiCode_Check("Up")
end

function Menu.KonamiCode_Down(id)
  Menu.KonamiCode_Check("Down")
end

function Menu.KonamiCode_Left(id)
  Menu.KonamiCode_Check("Left")
end

function Menu.KonamiCode_Right(id)
  Menu.KonamiCode_Check("Right")
end

function Menu.KonamiCode_B(id)
  Menu.KonamiCode_Check("B")
end

function Menu.KonamiCode_A(id)
  Menu.KonamiCode_Check("A")
end

function Menu.KonamiCode_Cancel(id)
  if Game.Get("Platform") ~= "PC" or Game.Get("PCPadConnected") == 1 then
    Menu.KonamiCode_Check("B")
  end
end

function Menu.KonamiCode_Accept(id)
  if Game.Get("Platform") ~= "PC" or Game.Get("PCPadConnected") == 1 then
    Menu.KonamiCode_Check("A")
  end
end

function Menu.AfterLoadGame_Start()
  Game.GetMenu().OnLoopEvent = ""
  Game.SetLoadingScreen("2D/Loading/PapelLibro-D.dds")
  Game.Set("DoLoadingRender", false)
  Game.Set("LoadingScorerShowProgress", 1)
  Menu.StartNewMenu()
  Menu.DrawBackMenuFirstScreen()
  Game.GetMenu():DoNext()
  Menu.StartNewMenu()
  Menu.DrawBackMenuFirstScreen()
  Input.SetActionSet("Null")
  Game.GetMenu():DoFadeOut("Menu.OnFadeOutEnd")
  Game.GetMenu().OnLoopEvent = ""
  Sound.SetVoiceVolume(6, 0, 0.8)
  Sound.PauseMusic(false)
  collectgarbage("collect")
end

Menu.OnScorerCreatedCallback = nil
Menu.ShowExperienceMovement = false
Menu.HideMagicBars = 0
Menu.SimonWakCycle = {
  60,
  61,
  60,
  62
}
Menu.SimonAttackCicle = {
  {57, 0.75},
  {58, 0.75},
  {59, 0.2}
}
Menu.SimonData = {Air = 0, Time = 0}

function Menu.RenderSimon(id, name)
  if Game.Get("NoHUD") == 1 then
    return
  end
  local idx = 61
  local rot = 0
  local pivot = V3D(0.5, 0.6)
  local actname = player.Action
  if player.isFalling == 1 and 0 < player.Vel.y then
    Menu.SimonData.Air = clamp(0, 50, Menu.SimonData.Air + (Game.GetTime() - Menu.SimonData.Time) * 50)
    idx = 63
  else
    Menu.SimonData.Air = clamp(0, 50, Menu.SimonData.Air - (Game.GetTime() - Menu.SimonData.Time) * 50)
  end
  local Pos = Scorer.GetScorerPos("LightMagicFrame").Pos + V2D(20, -20 - Menu.SimonData.Air)
  if string.sub(player.Action, 1, 9) == "WhipBlock" then
    idx = 63
  elseif string.sub(player.Action, 1, 9) == "WhipDodge" then
    idx = 63
    rot = clamp(0, 360, player.oActCtrl.AnimPos * 720)
  elseif string.find(actname, "Combo") then
    idx = 59
    local i = Menu.SimonAttackCicle[clamp(1, 3, math.floor(player.oActCtrl.AnimPos * 15 + 1))]
    idx = i[1]
    pivot = V3D(i[2], 0.6)
  elseif player.isWalking == 1 then
    idx = Menu.SimonWakCycle[math.floor(Game.GetTime() * 4 % 4 + 1)]
  end
  Scorer.RenderSprite(0, Pos, "BOOK", idx, Color(255, 255, 255, 255), 0.5, rot, pivot)
  Menu.SimonData.Time = Game.GetTime()
end

function Menu.ShowScorer()
  local si, itm
  Scorer.Clear(0)
  if Input.GetActionSet() == "Inactive" then
    Game.Set("MaxTalkLineSizePix", 500)
  else
    Game.Set("MaxTalkLineSizePix", 340)
  end
  if Menu.FakeTransition then
    Menu.ScorerFakeTransition()
    Menu.FakeTransition = nil
  end
  Game.Set("NextComboExperience", Experience.CheapComboPrice())
  ScorerSprites.AddParticles()
  Menu.AddScorerTalk()
  Scorer.NewItem(0, "Msg", "Msg").Pos = V2D(320, 40)
  local lifeBar = Scorer.NewItem(0, "LifeBar", "LifeBar")
  lifeBar.PlayerFinalLife = Belmont.BaseLife + Belmont.LifeInc * 6
  lifeBar.PlayerFinalDarkMagic = NeutralEnergy.BaseMagic + NeutralEnergy.KnightInc * 6
  lifeBar.PlayerFinalLightMagic = NeutralEnergy.BaseMagic + NeutralEnergy.KnightInc * 6
  lifeBar.HideMagicBars = Menu.HideMagicBars
  lifeBar.OnDamage = "ScorerSprites.ScorerBossDamage"
  if WorldMap then
    if not WorldMap.CheatsOn then
      WorldMap.CheckCheatsOn()
    end
    if WorldMap.CheatsOn then
      lifeBar.OnRender = "Menu.RenderSimon"
    else
    end
  end
  if Game.Get("gvExperienceD") or Menu.ShowExperienceMovement then
    lifeBar.ShowExperienceMovement = 1
  else
    lifeBar.ShowExperienceMovement = 0
  end
  if lifeBar.ShowExperienceMovement == 1 then
    local playExpPointsSound = not Trials.isTrial and init.level_name == "1_1_besieged_village"
    Game.Set("PlayTutorialExpPointsSound", playExpPointsSound)
  end
  if Menu.bUseFocusScorer then
    local FocusScorer = Scorer.NewItem(0, "Focus", "Focus")
    FocusScorer.OnActivate = "ScorerSprites.FocusRuneOn"
    FocusScorer.OnBroke = "ScorerSprites.FocusRuneOff"
  end
  Scorer.NewItem(0, "PressGame", "PressGame")
  Scorer.NewItem(0, "SpeedExplodeGame", "SpeedExplodeGame")
  Scorer.NewItem(0, "StickGameA", "StickGameA")
  Scorer.NewItem(0, "TurnStick", "TurnStick")
  Scorer.NewItem(0, "StickGameB", "StickGameB")
  Scorer.NewItem(0, "SynchronizedGame", "SynchronizedGame")
  Scorer.NewItem(0, "AccumulationGame", "AccumulationGame")
  Scorer.NewItem(0, "MantainGame", "MantainGame")
  Scorer.NewItem(0, "SpeedSpecial", "SpeedSpecial")
  Scorer.NewItem(0, "LuaPad", "LuaPad")
  ModalMsg.Init()
  Stamina.UpdateStaminaBar(true)
  if Menu.OnScorerCreatedCallback then
    Menu.OnScorerCreatedCallback()
  end
  if Gong then
    Gong.InitScorer()
  end
  if BoxMusic then
    if BoxMusic.ThereIsSound == 1 then
      BoxMusic.ScorerCreateBackMenu()
      BoxMusic.CloclSelectColor(BoxMusic.ClockColor)
      BoxMusic.ClockVisible()
      BoxMusic.PartituraVisible()
    end
    if BoxMusic.ScorerTuto == 1 then
      BoxMusic.Scorer(65, 28)
      BoxMusic.TextSelect(BoxMusic.FramedObject)
    end
  end
  if FirstPanPuzzle then
    FirstPanPuzzle.InitScorer()
    if FirstPanPuzzle.PlayingPuzzle == 1 then
      FirstPanPuzzle.HelpScorer()
    end
  end
  if PuzzlePan and PuzzlePan.PlayingPuzzle == 1 then
    Scorer.GetItem(0, "LifeBar").ShowScrollOnly = 1
    PuzzlePan.Scorer(65, 28)
  end
  if PuzzleInvernadero and PuzzleInvernadero.PlayingPuzzle == 1 then
    Scorer.GetItem(0, "LifeBar").ShowScrollOnly = 1
    PuzzleInvernadero.Scorer(65, 28)
  end
  if Pachinko and Pachinko.PlayingPuzzle == 1 then
    Scorer.GetItem(0, "LifeBar").ShowScrollOnly = 1
    Pachinko.Scorer(65, 28)
  end
  if PuzzleObservatory and PuzzleObservatory.PlayingPuzzle == 1 then
    Scorer.GetItem(0, "LifeBar").ShowScrollOnly = 1
    MechanismLens.Scorer(65, 28)
  end
  if PuzzleEclipse and PuzzleEclipse.PlayingPuzzle == 1 then
    PuzzleEclipse.Scorer(70, 33)
    PuzzleEclipse.EclipseScorer()
    PuzzleEclipse.SetInitial(PuzzleEclipse.fecha_paint.x, PuzzleEclipse.fecha_paint.y, PuzzleEclipse.fecha_paint.z)
    PuzzleEclipse.ScorerEclipseOn()
  end
  if PollaEnVinagre and PollaEnVinagre.PlayingPuzzle == 1 then
    PollaEnVinagre.Scorer()
  end
  if PuzzleRubik and PuzzleRubik.IsPlaying == 1 then
    PuzzleRubik.Scorer(95, -15)
    PuzzleRubik.CheckPossibleVictory()
  end
  si = Scorer.NewItem(0, "PadStatus", "Pad")
  si.Pos = V2D(325, 445)
  si.Size = V2D(50, 50)
  local es = Scorer.NewItem(0, "EnemyStatus", "EnemyStatus")
  es.bShowEnemies = Game.Get("gvEnemiesLifeD")
  es.bShowPlayer = Game.Get("gvBelmontLifeD")
  if Game.Get("toolmode") ~= 0 then
    cursor = Scorer.NewItem(0, "Cursor", "Sprite")
    if Game.GetEntity(Game.GetCam(0)).FreeCam == 1 then
      Scorer.SetCursor(0, "Cursor")
    end
    cursor.HighRes = 0
    cursor.File = "bmp/Editor/Cursor.alpha.tga"
    cursor.PivotX = 0.5
    cursor.PivotY = 0.5
    cursor.ScaleX = 0.5
    cursor.ScaleY = 0.5
    cursor.X, cursor.Y, cursor.Visible = 320, 240, 1
  end
end

Game.Set("TurnStickScorerStatus", 0)
if Game.Get("toolmode") ~= 0 then
  Input.ResetToDefault()
end

function Menu.PlaceHolder(Title)
  if Menu.ShowPlaceHolders then
    local si, Yes, No, mit, arr, i, QuestionMenuYStart
    Menu.InitMenuSys()
    Menu.StartNewMenu()
    QuestionMenuYStart = 230
    si = Scorer.NewItem(0, "TODO", "Text")
    si.Font = Menu.SmallFont
    si.Text = "TO DO"
    si.Pos = V2D(400, 100)
    si.CentralText = 1
    si.Color = Menu.TitleColor
    si.Size = V2D(0, 0)
    local a = Scorer.SplitString(Title, Menu.Message, 300)
    for i = 1, #a do
      si = Scorer.NewItem(0, "DoExit" .. i, "Text")
      si.Font = Menu.Message
      si.Text = a[i]
      si.Pos = V2D(360, 110 + i * 18)
      si.Color = Color(0, 0, 0, 255)
      si.Size = V2D(0, 0)
    end
    No = Scorer.NewItem(0, "OK", "Text")
    No.Text = "Continue"
    No.OnAccept = "Menu.BackToGame"
    arr = {No, Yes}
    for i = 1, table.getn(arr) do
      mit = arr[i]
      mit.Font = Menu.SmallFont
      mit.Y = 450
      mit.X = 560
      mit.CentralText = 1
      mit.Color = Menu.ItemColor
    end
    Scorer.SetDefault(0, "OK")
    Scorer.SetOnCancel(0, "Menu.BackToGame")
    Menu.DrawBackMenuFirstScreen()
  end
end

function Menu.PPUFailure()
  local si, text1, text2, QuestionMenuYStart
  Menu.InitMenuSys()
  Menu.StartNewMenu()
  QuestionMenuYStart = 230
  si = Scorer.NewItem(0, "Title", "Text")
  si.Font = Menu.SmallFont
  si.Text = "PHYSX  PPU  FAILURE"
  si.Pos = V2D(320, 190)
  si.CentralText = 1
  si.Color = Menu.TitleColor
  si.Effect = "Shadow"
  si.Size = V3D(0, 0)
  si.Outside = 1
  text1 = Scorer.NewItem(0, "Text1", "Text")
  text1.Text = "A PhysX Hardware error has been detected"
  text1.Pos = V2D(320, 220)
  text1.CentralText = 1
  text1.Outside = 1
  text2 = Scorer.NewItem(0, "Text2", "Text")
  text2.Text = "Level must be restarted"
  text2.Pos = V2D(320, 240)
  text2.CentralText = 1
  text2.Outside = 1
  button = Scorer.NewItem(0, "Button", "Text")
  button.Font = Menu.SmallFont
  button.Text = "Accept"
  button.OnAccept = "Menu.Reload"
  button.Pos = V2D(320, 265)
  button.Color = Color(255, 0, 0, 255)
  button.Effect = "None"
  button.CentralText = 1
  button.Outside = 1
  Scorer.SetDefault(0, "Button")
  Scorer.SetOnCancel(0, "Menu.Reload")
  itm = Scorer.NewItem(0, "BackLogo", "Sprite")
  itm.File = "2D/White.alpha.tga"
  itm.Unit = 1
  itm.Pos = V2D(60, 190)
  itm.Scale = V2D(520, 100)
  itm.Color = Color(0, 0, 0, 128)
  itm.Pivot = V2D(0, 0)
  itm.Outside = 1
end

Menu.DebugOptionsIntL = {
  {
    "BackBtnMissionInfo",
    "Menu.SwitchBackBtnMapping()"
  },
  {
    "Pad Status",
    "Game.Set(\"ShowScorerPad\",true)"
  },
  {
    "Menu",
    "Menu.DebugBoolean(\"Menu\",0,1)"
  },
  {
    "Pause",
    "Game.SetTimeSpeed(1-Game.GetTimeSpeed())"
  },
  {
    "Speed 1X",
    "Game.SetTimeSpeed(1)"
  },
  {
    "Speed 2X",
    "Game.SetTimeSpeed(2)"
  },
  {
    "Speed 4X",
    "Game.SetTimeSpeed(4)"
  },
  {
    "Reload Map",
    "QuickConsole.map()"
  },
  {
    "God Mode",
    "QuickConsole.god()"
  },
  {
    "Kill All",
    "QuickConsole.killall()"
  },
  {
    "Kill Me",
    "Game.GetEntity(\"Belmont\").Life = 0"
  },
  {
    "Debug Level",
    "Menu.DebugBoolean(\"debug\",0,3)"
  },
  {
    "Console",
    "Menu.DebugBoolean(\"ShowConsoleLog\",0,1)"
  },
  {
    "PhysXShow",
    "Menu.DebugBoolean(\"PhysXShow\",0,2)"
  },
  {
    "PhysXShowLines",
    "Menu.DebugBoolean(\"PhysXShowLines\",0,1)"
  },
  {
    "cshow",
    "Menu.DebugBoolean(\"cshow\",0,21)"
  },
  {
    "AIActivated",
    "Menu.DebugBoolean(\"AIActivated\",0,1)"
  },
  {
    "ShowNodesAI",
    "Menu.DebugBoolean(\"ShowNodesAI\",0,1)"
  },
  {
    "ShowNodes2DAI",
    "Menu.DebugBoolean(\"ShowNodes2DAI\",0,1)"
  },
  {
    "Mission Maker Loop",
    "ifile=nil;iloop=1;Game.PreloadLibrary(\"Scripts/MissionMaker.lua\",\"MissionMaker\")"
  },
  {
    "Viewer",
    "Scorer.Clear(0); QuickConsole.viewer()"
  },
  {
    "Trial Mode",
    "Menu.SetTrialMode()"
  },
  {
    "Print Random Number",
    "print(math.random())"
  },
  {
    "Variable data",
    "Menu.ShowVariableData()"
  }
}
Menu.DebugOptionsIntR = {
  {
    "RenderInfo",
    "Menu.DebugBoolean(\"R_ShowInfo\",0,8)"
  },
  {
    "Pause",
    "Game.SetTimeSpeed(1-Game.GetTimeSpeed())"
  },
  {
    "[ PerfMon ]",
    "Menu.DebugMenuIntR_PerfMon(id,control)"
  },
  {
    "[ DebugInfo ]",
    "Menu.DebugMenuIntR_DebugInfo(id,control)"
  },
  {
    "[ Render ]",
    "Menu.DebugMenuIntR_Render(id,control)"
  },
  {
    "[ Lighting ]",
    "Menu.DebugMenuIntR_Lighting(id,control)"
  },
  {
    "[ GBuffer ]",
    "Menu.DebugMenuIntR_GBuffer(id,control)"
  },
  {
    "[ PostFX ]",
    "Menu.DebugMenuIntR_PostFX(id,control)"
  },
  {
    "[ FX ]",
    "Menu.DebugMenuIntR_FX(id,control)"
  },
  {
    "[ Sound ]",
    "Menu.DebugMenuIntR_Sound(id,control)"
  },
  {
    "[ AI ]",
    "Menu.DebugMenuIntR_AI(id,control)"
  },
  {
    "[ MapCollision ]",
    "Menu.DebugMenuIntR_MapCollision(id,control)"
  },
  {
    "[ " .. Game.Get("Platform") .. " ]",
    "Menu.DebugMenuIntR_Platform(id,control)"
  },
  {".", ""}
}
Menu.DebugOptionsIntR_PerfMon = {
  {
    "ShowTSCMode",
    "Menu.DebugBoolean(\"ShowTSCMode\",0,2)",
    print = "ShowTSCMode"
  },
  {
    "ShowTSCGraph",
    "Menu.DebugBoolean(\"ShowTSCGraph\",0,1)",
    print = "ShowTSCGraph"
  },
  {
    "ShowDebugStrings",
    "Menu.DebugBoolean(\"ShowDebugStrings\",0,1)",
    print = "ShowDebugStrings"
  },
  {
    "ShowWarnStrings",
    "Menu.DebugBoolean(\"ShowWarnStrings\",0,1)",
    print = "ShowWarnStrings"
  },
  {
    "R_EventTime",
    "Menu.DebugBoolean(\"R_EventTime\",0,1)",
    print = "R_EventTime"
  },
  {
    "R_EventReport",
    "Menu.DebugBoolean(\"R_EventReport\",0,1)",
    print = "R_EventReport"
  },
  {".", ""},
  {
    "TM",
    "Menu.DebugBoolean(\"TM\",0,1)",
    print = "TM"
  },
  {
    "TM_Freq_Pause",
    "Game.Set(\"TM_Freq\",0)",
    print = "TM_Freq"
  },
  {
    "TM_Freq_1",
    "Game.Set(\"TM_Freq\",1)",
    print = "TM_Freq"
  },
  {
    "TM_Freq_2",
    "Game.Set(\"TM_Freq\",2)",
    print = "TM_Freq"
  },
  {
    "TM_Freq_5",
    "Game.Set(\"TM_Freq\",5)",
    print = "TM_Freq"
  },
  {
    "TM_Freq_8",
    "Game.Set(\"TM_Freq\",8)",
    print = "TM_Freq"
  },
  {
    "TM_Freq_Realtime",
    "Game.Set(\"TM_Freq\",1000)",
    print = "TM_Freq"
  },
  {".", ""},
  {
    "PM",
    "Menu.DebugBoolean(\"PM\",0,2)",
    print = "PM"
  },
  {
    "PM_Freq_Pause",
    "Game.Set(\"PM_Freq\",0)",
    print = "PM_Freq"
  },
  {
    "PM_Freq_1",
    "Game.Set(\"PM_Freq\",1)",
    print = "PM_Freq"
  },
  {
    "PM_Freq_2",
    "Game.Set(\"PM_Freq\",2)",
    print = "PM_Freq"
  },
  {
    "PM_Freq_5",
    "Game.Set(\"PM_Freq\",5)",
    print = "PM_Freq"
  },
  {
    "PM_Freq_8",
    "Game.Set(\"PM_Freq\",8)",
    print = "PM_Freq"
  },
  {
    "PM_Freq_Realtime",
    "Game.Set(\"PM_Freq\",1000)",
    print = "PM_Freq"
  },
  {
    "PM_Time",
    "Menu.DebugBoolean(\"PM_Time\",0,1)",
    print = "PM_Time"
  },
  {
    "PM_Percent",
    "Menu.DebugBoolean(\"PM_Percent\",0,1)",
    print = "PM_Percent"
  },
  {
    "PM_Lost",
    "Menu.DebugBoolean(\"PM_Lost\",0,1)",
    print = "PM_Lost"
  },
  {
    "PM_GPU",
    "Menu.DebugBoolean(\"PM_GPU\",0,1)",
    print = "PM_GPU"
  },
  {".", ""},
  {
    "PM_World",
    "Menu.DebugBoolean(\"PM_World\",0,1)",
    print = "PM_World"
  },
  {
    "PM_RenderEvent",
    "Menu.DebugBoolean(\"PM_RenderEvent\",0,1)",
    print = "PM_RenderEvent"
  },
  {
    "PM_RenderPresent",
    "Menu.DebugBoolean(\"PM_RenderPresent\",0,1)",
    print = "PM_RenderPresent"
  },
  {
    "PM_ParticleSystem",
    "Menu.DebugBoolean(\"PM_ParticleSystem\",0,1)",
    print = "PM_ParticleSystem"
  },
  {
    "PM_LUA",
    "Menu.DebugBoolean(\"PM_LUA\",0,1)",
    print = "PM_LUA"
  }
}
Menu.DebugOptionsIntR_DebugInfo = {
  {
    "ShowTSCMode",
    "Menu.DebugBoolean(\"ShowTSCMode\",0,2)",
    print = "ShowTSCMode"
  },
  {
    "R_ShowLights",
    "Menu.DebugBoolean(\"R_ShowLights\",0,4)",
    print = "R_ShowLights"
  },
  {
    "R_SortShow",
    "Menu.DebugBoolean(\"R_SortShow\",0,3)",
    print = "R_SortShow"
  },
  {
    "R_ShowModelPos",
    "Menu.DebugBoolean(\"R_ShowModelPos\",0,3)",
    print = "R_ShowModelPos"
  },
  {
    "R_ShowModelSector",
    "Menu.DebugBoolean(\"R_ShowModelSector\",0,1)",
    print = "R_ShowModelSector"
  },
  {
    "R_ShowLocalBox",
    "Menu.DebugBoolean(\"R_ShowLocalBox\",0,3)",
    print = "R_ShowLocalBox"
  },
  {
    "R_ShowPortals",
    "Menu.DebugBoolean(\"R_ShowPortals\",0,3)",
    print = "R_ShowPortals"
  },
  {
    "ShowWorldLayers",
    "Menu.DebugBoolean(\"ShowWorldLayers\",0,2)",
    print = "ShowWorldLayers"
  },
  {
    "ShowWorldMeshes",
    "Menu.DebugBoolean(\"ShowWorldMeshes\",0,3)",
    print = "ShowWorldMeshes"
  },
  {
    "ShowMapCollision",
    "Menu.DebugBoolean(\"ShowMapCollision\",0,5)",
    print = "ShowMapCollision"
  },
  {
    "ShowTextureUsage",
    "Menu.DebugBoolean(\"ShowTextureUsage\",0,3)",
    print = "ShowTextureUsage"
  },
  {
    "PlayVideoShowStats",
    "Menu.DebugBoolean(\"PlayVideoShowStats\",0,2)",
    print = "PlayVideoShowStats"
  },
  {
    "PlayVideo51Audio",
    "Menu.DebugBoolean(\"PlayVideo51Audio\",0,1)",
    print = "PlayVideo51Audio"
  },
  {
    "R_LoadStandarMaps",
    "Menu.DebugBoolean(\"R_LoadStandarMaps\",0,2)",
    print = "R_LoadStandarMaps"
  },
  {
    "RenderDebugScorer",
    "Menu.DebugBoolean(\"RenderDebugScorer\",0,1)",
    print = "RenderDebugScorer"
  }
}
Menu.DebugOptionsIntR_Render = {
  {
    "R_Wireframe",
    "Menu.DebugBoolean(\"R_Wireframe\",0,1)",
    print = "R_Wireframe"
  },
  {
    "VSync",
    "Menu.DebugBoolean(\"VSync\",0,1)",
    print = "VSync"
  },
  {
    "R_TexFilter",
    "Menu.DebugBoolean(\"R_TexFilter\",0,2)",
    print = "R_TexFilter"
  },
  {
    "R_Anisotropy",
    "Menu.DebugBoolean(\"R_Anisotropy\",0,16)",
    print = "R_Anisotropy"
  },
  {
    "R_Specular",
    "Menu.DebugBoolean(\"R_Specular\",0,1)",
    print = "R_Specular"
  },
  {
    "R_Gloss",
    "Menu.DebugBoolean(\"R_Gloss\",0,1)",
    print = "R_Gloss"
  },
  {
    "R_Env",
    "Menu.DebugBoolean(\"R_Env\",0,1)",
    print = "R_Env"
  },
  {
    "R_Scattering",
    "Menu.DebugBoolean(\"R_Scattering\",0,1)",
    print = "R_Scattering"
  },
  {
    "R_Subsurface",
    "Menu.DebugBoolean(\"R_Subsurface\",0,1)",
    print = "R_Subsurface"
  },
  {
    "R_Glow",
    "Menu.DebugBoolean(\"R_Glow\",0,1)",
    print = "R_Glow"
  },
  {
    "R_Parallax",
    "Menu.DebugBoolean(\"R_Parallax\",0,1)",
    print = "R_Parallax"
  },
  {
    "WorldUseLayers",
    "Menu.DebugBoolean(\"WorldUseLayers\",0,1)",
    print = "WorldUseLayers"
  },
  {
    "WorldUseShadowOpt",
    "Menu.DebugBoolean(\"WorldUseShadowOpt\",0,1)",
    print = "WorldUseShadowOpt"
  },
  {
    "WorldMeshesExtens",
    "Menu.DebugBoolean(\"WorldMeshesExtens\",0,1)",
    print = "WorldMeshesExtens"
  },
  {
    "R_UsePortals",
    "Menu.DebugBoolean(\"R_UsePortals\",0,1)",
    print = "R_UsePortals"
  },
  {
    "R_UseSkinCache",
    "Menu.DebugBoolean(\"R_UseSkinCache\",0,1)",
    print = "R_UseSkinCache"
  },
  {
    "R_SkinOneBone",
    "Menu.DebugBoolean(\"R_SkinOneBone\",0,1)",
    print = "R_SkinOneBone"
  },
  {
    "R_MeshCache",
    "Menu.DebugBoolean(\"R_MeshCache\",0,1)",
    print = "R_MeshCache"
  },
  {
    "R_PortalExt",
    "Menu.DebugBoolean(\"R_PortalExt\",0,1)",
    print = "R_PortalExt"
  },
  {
    "RenderModels",
    "Menu.DebugBoolean(\"RenderModels\",0,1)",
    print = "RenderModels"
  },
  {
    "RenderSectors",
    "Menu.DebugBoolean(\"RenderSectors\",0,1)",
    print = "RenderSectors"
  },
  {
    "RenderDecals",
    "Menu.DebugBoolean(\"RenderDecals\",0,1)",
    print = "RenderDecals"
  },
  {
    "R_ModelTrans",
    "Menu.DebugBoolean(\"R_ModelTrans\",0,1)",
    print = "R_ModelTrans"
  },
  {
    "R_ModelViewDist",
    "Menu.DebugBoolean(\"R_ModelViewDist\",0,1)",
    print = "R_ModelViewDist"
  },
  {
    "R_DrawMLodMin",
    "Menu.DebugBoolean(\"R_DrawMLodMin\",0,3)",
    print = "R_DrawMLodMin"
  },
  {
    "R_UseMLOD",
    "Menu.DebugBoolean(\"R_UseMLOD\",0,1)",
    print = "R_UseMLOD"
  },
  {
    "R_SkipUpdateVis",
    "Menu.DebugBoolean(\"R_SkipUpdateVis\",0,1)",
    print = "R_SkipUpdateVis"
  },
  {
    "R_SkipAnim",
    "Menu.DebugBoolean(\"R_SkipAnim\",0,1)",
    print = "R_SkipAnim"
  },
  {
    "R_SkipNodeFX",
    "Menu.DebugBoolean(\"R_SkipNodeFX\",0,1)",
    print = "R_SkipNodeFX"
  },
  {
    "R_SkipNodeRot",
    "Menu.DebugBoolean(\"R_SkipNodeRot\",0,1)",
    print = "R_SkipNodeRot"
  },
  {
    "RP_MatCache",
    "Menu.DebugBoolean(\"RP_MatCache\",0,1)",
    print = "RP_MatCache"
  },
  {
    "RP_SelfIlum",
    "Menu.DebugBoolean(\"RP_SelfIlum\",0,2)",
    print = "RP_SelfIlum"
  },
  {
    "RP_Lighting",
    "Menu.DebugBoolean(\"RP_Lighting\",0,1)",
    print = "RP_Lighting"
  },
  {
    "RP_Glow",
    "Menu.DebugBoolean(\"RP_Glow\",0,1)",
    print = "RP_Glow"
  },
  {
    "RP_GlowWorld",
    "Menu.DebugBoolean(\"RP_GlowWorld\",0,1)",
    print = "RP_GlowWorld"
  },
  {
    "RP_ShadowDraw",
    "Menu.DebugBoolean(\"RP_ShadowDraw\",0,2)",
    print = "RP_ShadowDraw"
  },
  {
    "RP_Overdraw",
    "Menu.DebugBoolean(\"RP_Overdraw\",0,1)",
    print = "RP_Overdraw"
  }
}
Menu.DebugOptionsIntR_Lighting = {
  {
    "R_OneLight",
    "Game.Set(\"R_OneLight\", -1*(Game.Get(\"R_OneLight\")+1))",
    print = "R_OneLight"
  },
  {
    "R_OneLight0",
    "Game.Set(\"R_OneLight\", 0)",
    "R_OneLight",
    print = "R_OneLight"
  },
  {
    "R_OneLight+",
    "Game.Set(\"R_OneLight\", (Game.Get(\"R_OneLight\")+1))",
    print = "R_OneLight"
  },
  {
    "R_OneLight-",
    "Game.Set(\"R_OneLight\", (Game.Get(\"R_OneLight\")-1))",
    print = "R_OneLight"
  },
  {
    "R_SkyLightOnly",
    "Menu.DebugBoolean(\"R_SkyLightOnly\",0,1)",
    print = "R_SkyLightOnly"
  },
  {
    "R_LightAO",
    "Menu.DebugBooleanDef(\"R_LightAO\",0,1)",
    print = "R_LightAO"
  },
  {
    "R_LightAOAmbient",
    "Menu.DebugBooleanDef(\"R_LightAOAmbient\")",
    print = "R_LightAOAmbient"
  },
  {
    "R_LightAODirect",
    "Menu.DebugBooleanDef(\"R_LightAODirect\")",
    print = "R_LightAODirect"
  },
  {
    "R_ModelAO",
    "Menu.DebugBooleanDef(\"R_ModelAO\",0,1)",
    print = "R_ModelAO"
  },
  {
    "R_LightShadows",
    "Menu.DebugBoolean(\"R_LightShadows\",0,1)",
    print = "R_LightShadows"
  },
  {
    "R_ShadowMaps",
    "Menu.DebugBoolean(\"R_ShadowMaps\",0,2)",
    print = "R_ShadowMaps"
  },
  {
    "R_ShadowMapsOpt",
    "Menu.DebugBoolean(\"R_ShadowMapsOpt\",0,3)",
    print = "R_ShadowMapsOpt"
  },
  {
    "R_ShadowMapsModelsOpt",
    "Menu.DebugBoolean(\"R_ShadowMapsModelsOpt\",0,1)",
    print = "R_ShadowMapsModelsOpt"
  },
  {
    "R_ShadowMapsMask",
    "Menu.DebugBoolean(\"R_ShadowMapsMask\",0,3)",
    print = "R_ShadowMapsMask"
  },
  {
    "R_ShadowMapsCullWorld",
    "Menu.DebugBoolean(\"R_ShadowMapsCullWorld\",0,2)",
    print = "R_ShadowMapsCullWorld"
  },
  {
    "R_ShadowMapsCullModels",
    "Menu.DebugBoolean(\"R_ShadowMapsCullModels\",0,2)",
    print = "R_ShadowMapsCullModels"
  },
  {
    "R_ShadowModelTest",
    "Menu.DebugBoolean(\"R_ShadowModelTest\",0,1)",
    print = "R_ShadowModelTest"
  },
  {
    "R_ShadowMapsLeafDepthReplace",
    "Menu.DebugBooleanDef(\"R_ShadowMapsLeafDepthReplace\")",
    print = "R_ShadowMapsLeafDepthReplace"
  },
  {
    "R_LightPrecalc",
    "Menu.DebugBoolean(\"R_LightPrecalc\",0,1)",
    print = "R_LightPrecalc"
  },
  {
    "R_LightVisSpot",
    "Menu.DebugBoolean(\"R_LightVisSpot\",0,1)",
    print = "R_LightVisSpot"
  },
  {
    "R_LightSphereDiv",
    "Menu.DebugBoolean(\"R_LightSphereDiv\",4,8)",
    print = "R_LightSphereDiv"
  },
  {
    "R_LightScissor",
    "Menu.DebugBoolean(\"R_LightScissor\",0,1)",
    print = "R_LightScissor"
  },
  {
    "R_LightDepthBounds",
    "Menu.DebugBoolean(\"R_LightDepthBounds\",0,1)",
    print = "R_LightDepthBounds"
  },
  {
    "RT_SelfShadow",
    "Menu.DebugBoolean(\"RT_SelfShadow\",0,1)",
    print = "RT_SelfShadow"
  },
  {
    "R_LightSelfShadow",
    "Menu.DebugBoolean(\"R_LightSelfShadow\",0,2)",
    print = "R_LightSelfShadow"
  },
  {
    "R_ShadowMapsSelfCameraClamp",
    "Menu.DebugBoolean(\"R_ShadowMapsSelfCameraClamp\",0,1)",
    print = "R_ShadowMapsSelfCameraClamp"
  },
  {
    "RT_DeferredShow",
    "Menu.DebugBoolean(\"RT_DeferredShow\",0,1)",
    print = "RT_DeferredShow"
  },
  {
    "RT_DeferredScattering",
    "Menu.DebugBoolean(\"RT_DeferredScattering\",0,1)",
    print = "RT_DeferredScattering"
  },
  {
    "RT_DeferredEnv",
    "Menu.DebugBoolean(\"RT_DeferredEnv\",0,1)",
    print = "RT_DeferredEnv"
  },
  {
    "RT_DeferredFresnel",
    "Menu.DebugBoolean(\"RT_DeferredFresnel\",0,1)",
    print = "RT_DeferredFresnel"
  }
}
Menu.DebugOptionsIntR_GBuffer = {
  {
    "RT_Reflection",
    "Menu.DebugBoolean(\"RT_Reflection\",0,2)",
    print = "RT_Reflection"
  },
  {
    "RT_ReflectionLight",
    "Menu.DebugBoolean(\"RT_ReflectionLight\",0,1)",
    print = "RT_ReflectionLight"
  },
  {
    "RT_SelfIlum",
    "Menu.DebugBoolean(\"RT_SelfIlum\",0,1)",
    print = "RT_SelfIlum"
  },
  {
    "RT_GBufferClear",
    "Menu.DebugBoolean(\"RT_GBufferClear\",0,1)",
    print = "RT_GBufferClear"
  },
  {
    "RT_GBufferDebug",
    "Menu.DebugBoolean(\"RT_GBufferDebug\",0,8)",
    print = "RT_GBufferDebug"
  },
  {
    "RT_GBufferDebugDiffuse",
    "Menu.DebugBoolean(\"RT_GBufferDebugDiffuse\",0,3)",
    print = "RT_GBufferDebugDiffuse"
  },
  {
    "RT_GBufferDebugNormal",
    "Menu.DebugBoolean(\"RT_GBufferDebugNormal\",0,1)",
    print = "RT_GBufferDebugNormal"
  },
  {
    "RT_GBufferDebugSpec",
    "Menu.DebugBoolean(\"RT_GBufferDebugSpec\",0,1)",
    print = "RT_GBufferDebugSpec"
  },
  {
    "RT_GBufferDebugColor",
    "Menu.DebugBoolean(\"RT_GBufferDebugColor\",0,1)",
    print = "RT_GBufferDebugColor"
  },
  {
    "RT_GBufferCull",
    "Menu.DebugBoolean(\"RT_GBufferCull\",0,2)",
    print = "RT_GBufferCull"
  },
  {
    "RT_GBufferAlphaTest",
    "Menu.DebugBoolean(\"RT_GBufferAlphaTest\",0,3)",
    print = "RT_GBufferAlphaTest"
  },
  {
    "RT_GBufferMask",
    "Menu.DebugBoolean(\"RT_GBufferMask\",0,3)",
    print = "RT_GBufferMask"
  },
  {
    "RT_GBufferWet",
    "Menu.DebugBoolean(\"RT_GBufferWet\",0,1)",
    print = "RT_GBufferWet"
  },
  {
    "RT_GBufferConditional",
    "Menu.DebugBoolean(\"RT_GBufferConditional\",0,1)",
    print = "RT_GBufferConditional"
  },
  {
    "RT_GBufferModelFadeDist",
    "Menu.DebugBoolean(\"RT_GBufferModelFadeDist\",0,1)",
    print = "RT_GBufferModelFadeDist"
  },
  {
    "RT_Terrain",
    "Menu.DebugBoolean(\"RT_Terrain\",0,1)",
    print = "RT_Terrain"
  },
  {
    "RT_TerrainUseStandard",
    "Menu.DebugBoolean(\"RT_TerrainUseStandard\",0,1)",
    print = "RT_TerrainUseStandard"
  },
  {
    "RT_Vegetation",
    "Menu.DebugBoolean(\"RT_Vegetation\",0,1)",
    print = "RT_Vegetation"
  },
  {
    "RT_VegetationCharMov",
    "Menu.DebugBoolean(\"RT_VegetationCharMov\",0,1)",
    print = "RT_VegetationCharMov"
  }
}
Menu.DebugOptionsIntR_PostFX = {
  {
    "RT_ModelFXRender",
    "Menu.DebugBoolean(\"RT_ModelFXRender\",0,1)",
    print = "RT_ModelFXRender"
  },
  {
    "RT_HDRPostFX",
    "Menu.DebugBoolean(\"RT_HDRPostFX\",0,1)",
    print = "RT_HDRPostFX"
  },
  {
    "RT_FOG",
    "Menu.DebugBoolean(\"RT_FOG\",0,1)",
    print = "RT_FOG"
  },
  {
    "RT_SceneBlur",
    "Menu.DebugBoolean(\"RT_SceneBlur\",0,1)",
    print = "RT_SceneBlur"
  },
  {
    "RT_DOF",
    "Menu.DebugBoolean(\"RT_DOF\",0,1)",
    print = "RT_DOF"
  },
  {
    "RT_Waves",
    "Menu.DebugBoolean(\"RT_Waves\",0,1)",
    print = "RT_Waves"
  },
  {
    "RT_WavesDebugColor",
    "Menu.DebugBoolean(\"RT_WavesDebugColor\",0,1)",
    print = "RT_WavesDebugColor"
  },
  {
    "RT_Deformation",
    "Menu.DebugBoolean(\"RT_Deformation\",0,1)",
    print = "RT_Deformation"
  },
  {
    "RT_PixelMotionBlur",
    "Menu.DebugBoolean(\"RT_PixelMotionBlur\",0,1)",
    print = "RT_PixelMotionBlur"
  },
  {
    "RT_HDRLuminance",
    "Menu.DebugBoolean(\"RT_HDRLuminance\",0,2)",
    print = "RT_HDRLuminance"
  },
  {
    "RT_HDRPostProcessing",
    "Menu.DebugBoolean(\"RT_HDRPostProcessing\",0,1)",
    print = "RT_HDRPostProcessing"
  },
  {
    "RT_HDRFinalPass",
    "Menu.DebugBoolean(\"RT_HDRFinalPass\",0,1)",
    print = "RT_HDRFinalPass"
  },
  {
    "RT_HDRToneMap",
    "Menu.DebugBoolean(\"RT_HDRToneMap\",0,1)",
    print = "RT_HDRToneMap"
  },
  {
    "RT_GodRays",
    "Menu.DebugBoolean(\"RT_GodRays\",0,1)",
    print = "RT_GodRays"
  },
  {
    "RT_CopySharpen",
    "Game.Set(\"RT_CopySharpen\", 1.25-Game.Get(\"RT_CopySharpen\"))",
    print = "RT_CopySharpen"
  }
}
Menu.DebugOptionsIntR_FX = {
  {
    "fx_update",
    "Menu.DebugBoolean(\"fx_update\",0,1)",
    print = "fx_update"
  },
  {
    "ps_update",
    "Menu.DebugBoolean(\"ps_update\",0,1)",
    print = "ps_update"
  },
  {
    "ps_render",
    "Menu.DebugBoolean(\"ps_render\",0,1)",
    print = "ps_render"
  },
  {
    "ps_debug",
    "Menu.DebugBoolean(\"ps_debug\",0,4)",
    print = "ps_debug"
  },
  {
    "ps_pool",
    "Menu.DebugBoolean(\"ps_pool\",0,1)",
    print = "ps_pool"
  },
  {
    "ps_sortgroups",
    "Menu.DebugBoolean(\"ps_sortgroups\",0,1)",
    print = "ps_sortgroups"
  },
  {
    "ps_hidefreeze",
    "Menu.DebugBoolean(\"ps_hidefreeze\",0,1)",
    print = "ps_hidefreeze"
  },
  {
    "ps_draw",
    "Menu.DebugBoolean(\"ps_draw\",0,1)",
    print = "ps_draw"
  },
  {
    "ps_wire",
    "Menu.DebugBoolean(\"ps_wire\",0,1)",
    print = "ps_wire"
  },
  {
    "ps_drawwire",
    "Menu.DebugBoolean(\"ps_drawwire\",0,1)",
    print = "ps_drawwire"
  },
  {
    "ps_checkvisibility",
    "Menu.DebugBoolean(\"ps_checkvisibility\",0,1)",
    print = "ps_checkvisibility"
  },
  {
    "ps_checkbounding",
    "Menu.DebugBoolean(\"ps_checkbounding\",0,1)",
    print = "ps_checkbounding"
  },
  {
    "ps_checksectors",
    "Menu.DebugBoolean(\"ps_checksectors\",0,2)",
    print = "ps_checksectors"
  },
  {
    "ps_CheckSectorsRoot",
    "Menu.DebugBoolean(\"ps_CheckSectorsRoot\",0,1)",
    print = "ps_CheckSectorsRoot"
  },
  {
    "ps_checkparticle",
    "Menu.DebugBoolean(\"ps_checkparticle\",0,1)",
    print = "ps_checkparticle"
  },
  {
    "ps_zbias",
    "Menu.DebugBoolean(\"ps_zbias\",0,1)",
    print = "ps_zbias"
  },
  {
    "ps_alphadistance",
    "Menu.DebugBoolean(\"ps_alphadistance\",0,1)",
    print = "ps_alphadistance"
  },
  {
    "ps_alphadot",
    "Menu.DebugBoolean(\"ps_alphadot\",0,1)",
    print = "ps_alphadot"
  },
  {
    "ps_lightcolor",
    "Menu.DebugBoolean(\"ps_lightcolor\",0,1)",
    print = "ps_lightcolor"
  },
  {
    "ps_alphatest",
    "Menu.DebugBoolean(\"ps_alphatest\",0,1)",
    print = "ps_alphatest"
  },
  {
    "ps_cb",
    "Menu.DebugBoolean(\"ps_cb\",0,1)",
    print = "ps_cb"
  },
  {
    "ps_flush",
    "Menu.DebugBoolean(\"ps_flush\",0,1)",
    print = "ps_flush"
  }
}
Menu.DebugOptionsIntR_Sound = {
  {
    "S_Show",
    "Menu.DebugBoolean(\"S_Show\",0,3)",
    print = "S_Show"
  },
  {
    "S_ShowVUMeters",
    "Menu.DebugBoolean(\"S_ShowVUMeters\",0,1)",
    print = "S_ShowVUMeters"
  },
  {
    "S_SkipPlay",
    "Menu.DebugBoolean(\"S_SkipPlay\",0,1)",
    print = "S_SkipPlay"
  },
  {
    "S_SkipUpdates",
    "Menu.DebugBoolean(\"S_SkipUpdates\",0,1)",
    print = "S_SkipUpdates"
  }
}
Menu.DebugOptionsIntR_MapCollision = {
  {
    "hide all",
    "Menu.HideAllMapCollisionDebug()"
  },
  {
    "show all",
    "Menu.ShowAllMapCollisionDebug()"
  },
  {
    "generic",
    "Menu.DebugPhysXGeneric()"
  },
  {
    "char",
    "Menu.DebugPhysXChar()"
  },
  {
    "wall",
    "Menu.DebugPhysXWall()"
  },
  {
    "logic",
    "Menu.DebugPhysXLogic()"
  },
  {
    "player",
    "Menu.DebugPhysXPlayer()"
  },
  {
    "dynelem",
    "Menu.DebugPhysXDynElem()"
  },
  {
    "ai 2D (char+wall+logic+generic)",
    "Menu.DebugPhysXAI2D()"
  },
  {
    "ai 3D (logic+generic)",
    "Menu.DebugPhysXAI3D()"
  },
  {
    "Fast Show All",
    "Menu.FastShowAll()"
  },
  {
    "Fast Hide All",
    "Menu.FastHideAll()"
  }
}
Menu.DebugOptionsIntR_AI = {
  {
    "enable/disable ai debug",
    "Menu.DebugBoolean(\"ShowAI\",0,1)",
    print = "ShowAI"
  },
  {
    "ai state",
    "Menu.DebugBoolean(\"ShowStAI\",0,1)",
    print = "ShowStAI"
  },
  {
    "ai graph 2d",
    "Menu.DebugBoolean(\"ShowNodes2DAI\",0,1)",
    print = "ShowNodes2DAI"
  },
  {
    "ai graph 3d",
    "Menu.DebugBoolean(\"ShowNodesAI\",0,1)",
    print = "ShowNodesAI"
  },
  {
    "ai path",
    "Menu.DebugBoolean(\"ShowPathAI\",0,1)",
    print = "ShowPathAI"
  },
  {
    "showanimai",
    "Menu.DebugBoolean(\"ShowAnimAI\",0,2)",
    print = "ShowAnimAI"
  },
  {
    "start actions debug",
    "AISpec.StartActionDebug()"
  },
  {
    "end actions debug",
    "AISpec.EndActionDebug()"
  },
  {
    "show with life spheres",
    "Menu.ShowSpheres()"
  },
  {
    "hide with life spheres",
    "Menu.HideSpheres()"
  }
}
if Game.Get("Platform") == "PC" then
  Menu.DebugOptionsIntR_Platform = {}
elseif Game.Get("Platform") == "PS3" then
  Menu.DebugOptionsIntR_Platform = {
    {
      "PS3_RPatchVP",
      "Menu.DebugBoolean(\"PS3_RPatchVP\",0,1)"
    },
    {
      "PS3_RPatchFP",
      "Menu.DebugBoolean(\"PS3_RPatchFP\",0,1)"
    },
    {
      "PS3_SubPixelAdjust",
      "Menu.DebugBoolean(\"PS3_SubPixelAdjust\",0,1)"
    },
    {
      "PS3_Recording_Start",
      "Game.PS3_Recording_Start()"
    },
    {
      "PS3_Recording_Stop",
      "Game.PS3_Recording_Stop()"
    },
    {
      "PS3_OptMipMap",
      "Menu.DebugBoolean(\"PS3_OptMipMap\",0,1)"
    },
    {
      "PS3_ZCull",
      "Menu.DebugBoolean(\"PS3_ZCull\",0,1)"
    },
    {
      "PS3_SCull",
      "Menu.DebugBoolean(\"PS3_SCull\",0,1)"
    },
    {
      "PS3_DepthPassZcullLimit",
      "Menu.DebugBoolean(\"PS3_DepthPassZcullLimit\",0,0x200,0x20)"
    },
    {
      "PS3_ShadowMapsZcullLimit",
      "Menu.DebugBoolean(\"PS3_ShadowMapsZcullLimit\",0,0x200,0x20)"
    }
  }
elseif Game.Get("Platform") == "X360" then
  Menu.DebugOptionsIntR_Platform = {
    {
      "XB_TrilinearThreshold",
      "Menu.DebugBoolean(\"XB_TrilinearThreshold\",0,1)"
    },
    {
      "XB_HiStencilEnable",
      "Menu.DebugBoolean(\"XB_HiStencilEnable\",0,1)"
    },
    {
      "XB_HiZMode",
      "Menu.DebugBoolean(\"XB_HiZMode\",0,1)"
    },
    {
      "XB_UseDoubleDepth",
      "Menu.DebugBoolean(\"XB_UseDoubleDepth\",0,1)"
    },
    {
      "SwapDisc(1)",
      "Game.SwapDisc(1)"
    },
    {
      "SwapDisc(2)",
      "Game.SwapDisc(2)"
    },
    {
      "SwapDiscLevel",
      "SaveGame.SwapDiscLevel(\"4_1_Fortress\")"
    }
  }
end
Menu.DebugOptions = {}

function Menu.ShowSpheres()
  Game.Set("CShow", 21)
end

function Menu.HideSpheres()
  Game.Set("CShow", 0)
end

function Menu.HideAllMapCollisionDebug()
  Physics.HideAllPhysXDebug()
  Menu.bColDbgGeneric = false
  Menu.bColDbgChar = false
  Menu.bColDbgWall = false
  Menu.bColDbgLogic = false
  Menu.bColDbgAI2D = false
  Menu.bColDbgAI3D = false
  Menu.bColDbgPlayer = false
  Menu.bColDbgDynElem = false
end

function Menu.ShowAllMapCollisionDebug()
  Physics.ShowAllPhysXDebug()
  Menu.bColDbgGeneric = true
  Menu.bColDbgChar = true
  Menu.bColDbgWall = true
  Menu.bColDbgLogic = true
  Menu.bColDbgAI2D = true
  Menu.bColDbgAI3D = true
  Menu.bColDbgPlayer = true
  Menu.bColDbgDynElem = true
end

function Menu.ShowFastCollisionDebug()
  Menu.DebugPhysXGeneric()
  Menu.DebugPhysXLogic()
  Menu.DebugPhysXPlayer()
  Menu.bColDbgGeneric = true
  Menu.bColDbgPlayer = true
  Menu.bColDbgLogic = true
end

function Menu.HideFastCollisionDebug()
  Menu.DebugPhysXGeneric()
  Menu.DebugPhysXLogic()
  Menu.DebugPhysXPlayer()
  Menu.bColDbgGeneric = false
  Menu.bColDbgPlayer = false
  Menu.bColDbgLogic = false
end

Menu.bColDbgGeneric = false

function Menu.DebugPhysXGeneric()
  if Menu.bColDbgGeneric then
    Physics.ConsolePhysXShowGeneric(0)
    Menu.bColDbgGeneric = false
  else
    Physics.ConsolePhysXShowGeneric(1)
    Menu.bColDbgGeneric = true
  end
end

Menu.bColDbgChar = false

function Menu.DebugPhysXChar()
  if Menu.bColDbgChar then
    Physics.ConsolePhysXShowChar(0)
    Menu.bColDbgChar = false
  else
    Physics.ConsolePhysXShowChar(1)
    Menu.bColDbgChar = true
  end
end

Menu.bColDbgWall = false

function Menu.DebugPhysXWall()
  if Menu.bColDbgWall then
    Physics.ConsolePhysXShowWall(0)
    Menu.bColDbgWall = false
  else
    Physics.ConsolePhysXShowWall(1)
    Menu.bColDbgWall = true
  end
end

Menu.bColDbgLogic = false

function Menu.DebugPhysXLogic()
  if Menu.bColDbgLogic then
    Physics.ConsolePhysXShowLogic(0)
    Menu.bColDbgLogic = false
  else
    Physics.ConsolePhysXShowLogic(1)
    Menu.bColDbgLogic = true
  end
end

Menu.bColDbgPlayer = false

function Menu.DebugPhysXPlayer()
  if Menu.bColDbgPlayer then
    Physics.ConsolePhysXShowPlayer(0)
    Menu.bColDbgPlayer = false
  else
    Physics.ConsolePhysXShowPlayer(1)
    Menu.bColDbgPlayer = true
  end
end

Menu.bColDbgDynElem = false

function Menu.DebugPhysXDynElem()
  if Menu.bColDbgDynElem then
    Physics.ConsolePhysXShowDynElem(0)
    Menu.bColDbgDynElem = false
  else
    Physics.ConsolePhysXShowDynElem(1)
    Menu.bColDbgDynElem = true
  end
end

Menu.bColDbgAI2D = false

function Menu.DebugPhysXAI2D()
  if Menu.bColDbgAI2D then
    Physics.ConsolePhysXShowAI2D(0)
    Menu.bColDbgAI2D = false
  else
    Physics.ConsolePhysXShowAI2D(1)
    Menu.bColDbgAI2D = true
  end
end

Menu.bColDbgAI3D = false

function Menu.DebugPhysXAI3D()
  if Menu.bColDbgAI3D then
    Physics.ConsolePhysXShowAI3D(0)
    Menu.bColDbgAI3D = false
  else
    Physics.ConsolePhysXShowAI3D(1)
    Menu.bColDbgAI3D = true
  end
end

function Menu.FastShowAll()
  Game.Set("R_LightShadows", 0)
  Game.Set("R_ShadowMaps", 0)
  Game.Set("ps_render", 0)
  Game.Set("RP_Lighting", 0)
  Menu.ShowFastCollisionDebug()
  Game.Set("ShowAI", 1)
  Game.Set("FastCollisionDebugRender", true)
end

function Menu.FastHideAll()
  Game.Set("R_LightShadows", 1)
  Game.Set("R_ShadowMaps", 1)
  Game.Set("ps_render", 1)
  Game.Set("RP_Lighting", 1)
  Menu.HideFastCollisionDebug()
  Game.Set("ShowAI", 0)
  Game.Set("FastCollisionDebugRender", false)
end

function Menu.DebugMenuIntL(id, control)
  Menu.DebugOptions = Menu.DebugOptionsIntL
  Menu.DebugMenu(id, control, true)
end

function Menu.DebugMenuIntR(id, control)
  Menu.DebugOptions = Menu.DebugOptionsIntR
  Menu.DebugMenu(id, control, true)
end

function Menu.DebugMenuIntR_PerfMon(id, control)
  Menu.DebugMenuIntR_Combo(id, control, Menu.DebugOptionsIntR, Menu.DebugOptionsIntR_PerfMon)
end

function Menu.DebugMenuIntR_DebugInfo(id, control)
  Menu.DebugMenuIntR_Combo(id, control, Menu.DebugOptionsIntR, Menu.DebugOptionsIntR_DebugInfo)
end

function Menu.DebugMenuIntR_Render(id, control)
  Menu.DebugMenuIntR_Combo(id, control, Menu.DebugOptionsIntR, Menu.DebugOptionsIntR_Render)
end

function Menu.DebugMenuIntR_Lighting(id, control)
  Menu.DebugMenuIntR_Combo(id, control, Menu.DebugOptionsIntR, Menu.DebugOptionsIntR_Lighting)
end

function Menu.DebugMenuIntR_GBuffer(id, control)
  Menu.DebugMenuIntR_Combo(id, control, Menu.DebugOptionsIntR, Menu.DebugOptionsIntR_GBuffer)
end

function Menu.DebugMenuIntR_PostFX(id, control)
  Menu.DebugMenuIntR_Combo(id, control, Menu.DebugOptionsIntR, Menu.DebugOptionsIntR_PostFX)
end

function Menu.DebugMenuIntR_FX(id, control)
  Menu.DebugMenuIntR_Combo(id, control, Menu.DebugOptionsIntR, Menu.DebugOptionsIntR_FX)
end

function Menu.DebugMenuIntR_Sound(id, control)
  Menu.DebugMenuIntR_Combo(id, control, Menu.DebugOptionsIntR, Menu.DebugOptionsIntR_Sound)
end

function Menu.DebugMenuIntR_AI(id, control)
  Menu.DebugMenuIntR_Combo(id, control, Menu.DebugOptionsIntR, Menu.DebugOptionsIntR_AI)
end

function Menu.DebugMenuIntR_MapCollision(id, control)
  Menu.DebugMenuIntR_Combo(id, control, Menu.DebugOptionsIntR, Menu.DebugOptionsIntR_MapCollision)
end

function Menu.DebugMenuIntR_Platform(id, control)
  Menu.DebugMenuIntR_Combo(id, control, Menu.DebugOptionsIntR, Menu.DebugOptionsIntR_Platform)
end

function Menu.DebugMenuIntR_Combo(id, control, a, b)
  Menu.DebugOptions = {}
  for i = 1, table.getn(a) do
    local t = a[i]
    table.insert(Menu.DebugOptions, t)
  end
  for i = 1, table.getn(b) do
    local t = b[i]
    table.insert(Menu.DebugOptions, t)
  end
  local actual = Scorer.GetActual(0)
  Menu.DebugMenu(id, control, true)
  Scorer.SetDefault(0, actual)
end

Menu.DebugMenuBackFunction = "Menu.MainMenu"

function Menu.DebugMenu(id, control, debug, out)
  local itm
  debug = defparam(debug, false)
  out = defparam(out, 1)
  if not debug then
    Menu.TurnPage()
  end
  if QuickConsole == nil then
    Game.PreloadLibrary("Scripts/QuickConsole.lua", "QuickConsole")
  end
  local options = {}
  local i
  for i = 1, table.getn(Menu.DebugOptions) do
    local t = Menu.DebugOptions[i][1]
    table.insert(options, {
      t,
      "Menu.DebugValue",
      onLeft = "Menu.CheckDebugValue",
      onRight = "Menu.CheckDebugValue"
    })
  end
  local font = Menu.LittleFont
  local stepY = 27
  if 10 < #options then
    font = Menu.TinyFont
    stepY = 14.5
  end
  if out == 1 then
    local t = Menu.ItemColor
    Menu.ItemColor = Color(255, 255, 255)
    Menu.VerticalMenu("", options, Menu.DebugMenuBackFunction, "Terminal8", -10, 9, false)
    Menu.ItemColor = t
  elseif #options < 25 then
    Menu.VerticalMenu("Debug Menu", options, Menu.DebugMenuBackFunction, font, 43, stepY, nil, nil, nil, true)
  else
    Menu.VerticalMenu(" ", options, Menu.DebugMenuBackFunction, font, 0, stepY, nil, nil, nil, true)
  end
  for i = 1, table.getn(Menu.DebugOptions) do
    Menu.CheckDebugColor("Itm" .. i, 0)
    Scorer.GetItem(0, "Itm" .. i).Outside = out
  end
  Menu.IsComingBack = true
  itm = Scorer.GetItem(0, "Cursor")
  if itm then
    itm.Outside = out
  end
end

function Menu.CheckDebugColor(control, id)
  local v
  if Scorer.GetItem(id, control) then
    v = Scorer.GetItem(id, control).Text
  end
  local data, i
  for i = 1, table.getn(Menu.DebugOptions) do
    local t = Menu.DebugOptions[i][1]
    if t == v then
      data = Menu.DebugOptions[i][3]
      break
    end
  end
  if data ~= nil then
    if data == "GodMode" then
      local e = Game.GetEntity("Belmont")
      if e then
        if e.uData.GodMode then
          Scorer.GetItem(id, control).Color = Color(63, 47, 26, 255)
        else
          Scorer.GetItem(id, control).Color = Color(128, 128, 128, 255)
        end
      else
        Scorer.GetItem(id, control).Color = Color(128, 128, 128, 255)
      end
    else
      i = Game.Get(data)
      local colore = Color(255, 255, 255, 255)
      local cololist = {
        Color(128, 128, 128, 255),
        Color(63, 47, 26, 255),
        Color(255, 0, 0, 255),
        Color(0, 255, 0, 255),
        Color(0, 0, 255, 255),
        Color(0, 255, 255, 255),
        Color(255, 0, 255, 255),
        Color(255, 255, 0, 255)
      }
      if cololist[i + 1] then
        Scorer.GetItem(id, control).Color = cololist[i + 1]
      else
        Scorer.GetItem(id, control).Color = Color(255, 255, 255, 255)
      end
    end
  end
end

function Menu.PrintDebugValue(gvar, prefix)
  prefix = prefix or ""
  if gvar == nil or gvar == "" then
    return
  end
  local v = Game.Get(gvar)
  if v == nil then
    v = "nil"
  end
  Game.Set("SavingMsgStr", prefix .. gvar .. " = " .. tostring(v))
  Game.Set("SavingMsg", 1)
end

function Menu.CheckDebugValue(id, control)
  local v = Scorer.GetItem(id, control).Text
  for i = 1, table.getn(Menu.DebugOptions) do
    if Menu.DebugOptions[i][1] == v then
      Menu.PrintDebugValue(Menu.DebugOptions[i].print, "[Checking] ")
      break
    end
  end
end

function Menu.DebugValue(id, control)
  local v = Scorer.GetItem(id, control).Text
  local data
  local index = -1
  for i = 1, table.getn(Menu.DebugOptions) do
    local t = Menu.DebugOptions[i][1]
    if t == v then
      data = Menu.DebugOptions[i][2]
      index = i
      break
    end
  end
  if data ~= nil then
    loadstring(data)()
    if Menu.DebugOptions[index] then
      Menu.PrintDebugValue(Menu.DebugOptions[index].print)
    end
  end
  Menu.CheckDebugColor(control, id)
end

function Menu.DebugBoolean(gvarname, min, max, step)
  local value = Game.Get(gvarname)
  step = defparam(step, 1)
  if max > value then
    value = value + step
  else
    value = min
  end
  Game.Set(gvarname, value)
  print(gvarname, value)
end

function Menu.DebugBooleanDef(gvarname)
  local value = Game.Get(gvarname)
  local def = Game.Def(gvarname)
  value = def - value
  Game.Set(gvarname, value)
  print(gvarname, value)
end

function Menu.DebugGodMode()
  local e = player
  if e then
    if e.uData.GodMode then
      QuickConsole.man(e)
    else
      QuickConsole.god(e)
    end
  end
end

function Menu.BeefedUpMode()
  Cheats.GiveAllRelics()
  CollectableItems.GiveAllUpgrades()
  CollectableItems.GiveAllGems()
  Experience.SetAllCombatScrollsStatus(true)
end

function Menu.KillingMachineMode()
  Menu.BeefedUpMode()
  player.uData.DamageMultiplier = 10
end

function Menu.PS3_SaveGameErrorMenu(Title, ActionRetry, ActionContinue, Warning)
  Menu.YesNoMenu("", ActionContinue, ActionRetry, Title)
  local Yes = Scorer.GetItem(0, "Yes")
  Yes.Text = langstr("AutoSave_ErrorContinue")
  Yes.X = 120
  Yes.CentralText = 1
  local No = Scorer.GetItem(0, "no")
  No.Text = langstr("AutoSave_ErrorRetry")
  No.X = 120
  No.CentralText = 1
  No.Y = Yes.Y + 32
  Menu.LinkUD(No, Yes)
  Menu.LinkUD(Yes, No)
end

if Game.Get("isDemo") ~= 0 then
  if Menu.isStartUpMenu then
    Game.Set("CheckInactivityTime", 30)
    Game.Set("CheckInactivityFunc", "")
  elseif not Menu.IsDemoStores then
    Game.Set("CheckInactivityTime", 180)
    Game.Set("CheckInactivityFunc", "SaveGame.LoadMenuExitProfile")
  else
    Game.Set("CheckInactivityFunc", "")
  end
  Game.Set("DrawNextFrame", 0)
end

function Menu.SwitchBackBtnMapping()
  Menu.DebugBoolean("BackBtnMissionInfo", 0, 1)
  Input.ResetToDefault()
end

function Menu.BeginBigMsgCentered(text)
  Scorer.GetItem(0, "LuaPad").OnRender = "Menu.BigTextRender"
  Menu.OutlinedText = false
  Menu.TutorialTextTime = 0
  Menu.BigText = text
end

function Menu.EndBigMsgCentered()
  Scorer.GetItem(0, "LuaPad").OnRender = ""
end

function Menu.BigTextRender(painter)
  Menu.TutorialTextTime = Menu.TutorialTextTime + Game.GetTimeDiff() / Game.GetTimeSpeed()
  if Menu.OutlinedText then
    if Menu.TutorialTextTime >= 0.25 then
      Menu.OutlinedText = not Menu.OutlinedText
      Menu.TutorialTextTime = 0
    end
  elseif Menu.TutorialTextTime >= 0.5 then
    Menu.OutlinedText = not Menu.OutlinedText
    Menu.TutorialTextTime = 0
  end
  if Menu.OutlinedText then
    painter:RenderText(320, 350, Menu.BigText, 1, 255)
  else
    painter:RenderText(320, 350, Menu.BigText, 0, 255)
  end
end

function Menu.RestoreModalCtrls()
  Belmont.JumpEnabled = Menu.WasJumpBeforeModel
  Game.Set("EscapeEvent", Menu.OldScapeEvent)
  Game.Set("MainMissionEvent", Menu.OldMMEvent)
end

function Menu.ShowTutoMsg(msg, finishCallbackStr, hideCallbackStr)
  Menu.TutoCurrentColor = Menu.TutoDefaultColor1
  Menu.TutoCurrentDrawTime = Menu.TutoDefaultDrawTime
  Menu.TutoBackCounter = 25
  Menu.TutoColor0Drawing = false
  Menu.ShowBlinkingMsg(msg, finishCallbackStr, hideCallbackStr)
end

function Menu.ShowBlinkingMsg(msg, finishCallbackStr, hideCallbackStr)
  if not CallStrFunc(finishCallbackStr) then
    Scorer.SetMsgBackColor(0, 0, 0, 128, 0.1)
    Menu.ClearMsgIfMatch(msg)
    return
  end
  if not Menu.TutoColor0Drawing then
    Menu.TutoColor0Drawing = true
    Scorer.SetMsgBackColor(0, 0, 0, 128, Menu.TutoCurrentDrawTime)
  else
    Menu.TutoColor0Drawing = false
    Scorer.SetMsgBackColor(Menu.TutoCurrentColor.x, Menu.TutoCurrentColor.y, Menu.TutoCurrentColor.z, 128, Menu.TutoCurrentDrawTime)
  end
  if Menu.TutoCurrentColor ~= Menu.TutoDefaultColor2 then
    Menu.TutoBackCounter = Menu.TutoBackCounter - Menu.TutoDefaultDrawTime
    if 0 > Menu.TutoBackCounter then
      Menu.TutoCurrentColor = Menu.TutoDefaultColor2
      Menu.TutoCurrentDrawTime = Menu.TutoDefaultDrawTime / 3
    end
  end
  if hideCallbackStr == nil or not CallStrFunc(hideCallbackStr) then
    Scorer.SetMsgText(msg, Game.GetTime() + 999999)
  else
    Menu.ClearMsgIfMatch(msg)
  end
  Game.AddScheduledFunc(Game.GetTime() + Menu.TutoCurrentDrawTime, "", "Menu.ShowBlinkingMsg", msg, finishCallbackStr, hideCallbackStr)
end

function Menu.ClearMsg()
  Scorer.SetMsgText("", Game.GetTime())
  Scorer.SetMsgBackColor(0, 0, 0, 128, 0.35)
end

function Menu.ClearMsgIfMatch(msg)
  if Scorer.MatchesCurrentMessageText(msg) then
    Menu.ClearMsg()
  end
end

function Menu.TempTextRender(text, outLine, time, nextCall, subLine, offsetY)
  Menu.TempText = {}
  Menu.TempText.String = text
  Menu.TempText.StringSubLine = subLine
  Menu.TempText.OutLine = outLine
  Menu.TempText.NextCall = nextCall
  Menu.TempText.ShowTime = time
  Menu.TempText.FadeTime = time / 3
  Menu.TempText.TimeRendering = 0
  Menu.TempText.OffsetY = offsetY or 0
  local itm = Scorer.GetItem(0, "LuaPad")
  if itm then
    itm.OnRender = "Menu.TextRender"
  end
end

function Menu.TextRender(painter)
  Menu.TempText.TimeRendering = Menu.TempText.TimeRendering + Game.GetTimeDiff()
  if Menu.TempText.TimeRendering > Menu.TempText.ShowTime then
    if Menu.TempText.NextCall and "" ~= Menu.TempText.NextCall then
      CallStrFunc(Menu.TempText.NextCall)
    end
    Scorer.GetItem(0, "LuaPad").OnRender = ""
    return
  end
  local alpha = 255
  local burn = 1
  alpha = 255 * (Menu.TempText.TimeRendering - Menu.TempText.FadeTime) / (Menu.TempText.ShowTime - Menu.TempText.FadeTime * 2)
  if Menu.TempText.TimeRendering <= Menu.TempText.FadeTime then
    alpha = 255 * Menu.TempText.TimeRendering / Menu.TempText.FadeTime
    burn = 0
  end
  local outTime = Menu.TempText.ShowTime - Menu.TempText.TimeRendering
  if outTime <= Menu.TempText.FadeTime and 0 < outTime then
    alpha = 255 * outTime / Menu.TempText.FadeTime
    burn = 0
  end
  local offsetY = Menu.TempText.OffsetY
  painter:RenderText(320, 350 + offsetY, Menu.TempText.String, burn, alpha)
  if Menu.TempText.StringSubLine then
    local subLineAlpha = alpha
    if burn ~= 0 then
      subLineAlpha = 255
    end
    painter:RenderText(315, 380 + offsetY, Menu.TempText.StringSubLine, 0, subLineAlpha)
    Scorer.RenderSprite(0, V2D(320 + 0.5 * Scorer.GetTextArea("Horatio", Menu.TempText.StringSubLine), 380 + offsetY), "HUD", 14, Color(255, 255, 255, subLineAlpha), 0.85, 0, V2D(0.08, 0.39))
  end
end

function Menu.SetTrialMode()
  Menu.DebugBoolean("SaveGameSlot", 0, 1)
  if Game.Get("SaveGameSlot") == 1 then
    SaveGame.Restart()
  end
end

function Menu.ShowVariableData()
  if EditorInterface == nil then
    Game.PreloadLibrary("Scripts/Editor/EditorInterface.lua", "EditorInterface")
  end
  if EditorInterface.ShowList == nil or #EditorInterface.ShowList == 0 then
    EditorInterface.ShowList = {
      {
        "Invul",
        function()
          return player.Invulnerable
        end
      },
      {
        "AI_Atck",
        AISpec.AreAttackersStopped
      }
    }
  else
    EditorInterface.ShowList = {}
  end
end

function Menu.GetAchievements()
  local list = {}
  for i = 1, 53 do
    list[i] = langstr("Trophy" .. i .. "_Title")
  end
  return list
end

Menu.InterrogationsText = "?????"

function Menu.CreateMenuTables()
  Menu.BookMenus = {
    Settings = {
      langstr("Menu_Options_Controls"),
      langstr("Menu_Options_Video"),
      langstr("Menu_Options_Audio"),
      langstr("Menu_Skill_Level")
    },
    Audio = {
      langstr("Menu_Audio_VoiceVolume"),
      langstr("Menu_Audio_SoundVolume"),
      langstr("Menu_Audio_MusicVolume")
    },
    Video = {
      langstr("Menu_Video_Gamma"),
      langstr("__Subtitles__")
    },
    Controls = {},
    ChessAll = {
      langstr("Menu_Chess_Difficulty_Easy"),
      langstr("Menu_Chess_Difficulty_Medium"),
      langstr("Menu_Chess_Difficulty_Hard"),
      langstr("Menu_Play_Chess_2P")
    },
    Chess = {
      langstr("Menu_Play_Chess_1P"),
      langstr("Menu_Play_Chess_2P")
    },
    ChessDifficulty = {
      langstr("Menu_Chess_Difficulty_Easy"),
      langstr("Menu_Chess_Difficulty_Medium"),
      langstr("Menu_Chess_Difficulty_Hard")
    },
    Difficulty = {
      langstr("Menu_Skill_Easy"),
      langstr("Menu_Skill_Normal"),
      langstr("Menu_Skill_Hard"),
      langstr("Menu_Skill_Very_Hard")
    },
    Vibration = {
      langstr("Menu_Question_No"),
      langstr("Menu_Question_Low"),
      langstr("Menu_Question_Medium"),
      langstr("Menu_Question_High")
    },
    Language = {},
    AdvancedVideo = {},
    Extras = {
      langstr("Menu_Combat_Display"),
      Menu.InterrogationsText,
      Menu.InterrogationsText,
      Menu.InterrogationsText,
      Menu.InterrogationsText
    },
    Artwork = Artwork.GetBookMenuTable(),
    Cheats = Cheats.GetBookMenuTable(),
    Achievements = Menu.GetAchievements(),
    ["Display Combat"] = DisplayCombat.GetBookMenuTable()
  }
  if Game.Get("Platform") == "PC" then
    table.insert(Menu.BookMenus.Settings, 5, langstr("X360_Menu_Vibration"))
    table.insert(Menu.BookMenus.Settings, 6, langstr("Menu_Options_Language"))
    table.insert(Menu.BookMenus.Video, 3, Menu.Get_Fullscreen_Status())
    table.insert(Menu.BookMenus.Video, 4, Menu.Get_Screen_Resolution_Status())
    table.insert(Menu.BookMenus.Video, 5, langstr("Menu_Video_Advanced"))
    table.insert(Menu.BookMenus.AdvancedVideo, 1, Menu.Get_Shadows_Status())
    table.insert(Menu.BookMenus.AdvancedVideo, 2, Menu.Get_VSync_Status())
    table.insert(Menu.BookMenus.AdvancedVideo, 3, Menu.Get_Antialias_Status())
    table.insert(Menu.BookMenus.AdvancedVideo, 4, Menu.Get_Anisotropic_Status())
    table.insert(Menu.BookMenus.AdvancedVideo, 5, Menu.Get_AmbientOccluison_Status())
    if Game.Get("MenuMotionBlur") then
      table.insert(Menu.BookMenus.AdvancedVideo, 6, Menu.Get_MotionBlur_Status())
    end
    local size = table.getn(Menu.ControlsEntries)
    for i = 1, size do
      table.insert(Menu.BookMenus.Controls, #Menu.BookMenus.Controls + 1, langstr(Menu.ControlsEntries[i][5]))
    end
    table.insert(Menu.BookMenus.Controls, #Menu.BookMenus.Controls + 1, langstr("Menu_Controls_Reset"))
  end
  for i = 1, #Menu.LanguageList do
    if Game.FileExist("Language/" .. Menu.LanguageList[i][2] .. ".txt", false) then
      table.insert(Menu.BookMenus.Language, Menu.LanguageList[i][1])
    end
  end
  DisplayCombat.CreateTables()
  Cheats.DefinitionTable = {
    {
      Game.GetLangStr("Menu_Cheats_NoDamage"),
      "gvNoDamageMode",
      Cheats.SetNoDamage
    },
    {
      Game.GetLangStr("Menu_Cheats_AllRelics"),
      "gvAllRelics",
      Cheats.SetAllRelics
    },
    {
      Game.GetLangStr("Menu_Cheats_AllCombos"),
      "gvAllCombos",
      Cheats.SetAllCombos
    },
    {
      Game.GetLangStr("Menu_Cheats_AllGems"),
      "gvAllGems",
      Cheats.SetAllGems
    },
    {
      Game.GetLangStr("Menu_Cheats_AllUpgrades"),
      "gvAllUpgrades",
      Cheats.SetAllUpgrades
    }
  }
  Cheats.Initialize()
end

if init then
  Menu.CreateMenuTables()
end
Menu.IsMainCfgMenu = false
Menu.PrevBookMenuOnCancel = nil

function Menu.BookMenu(leftPageTitle, leftMenuName, rightMenusNames, onBackCallback, startY, stepY, startYRightPage)
  startY = startY or 182
  stepY = stepY or 35
  startYRightPage = startYRightPage or startY
  Menu.LeftPageBackCallback = onBackCallback
  onBackCallback = onBackCallback or ""
  Menu.StartNewMenu()
  local item
  if leftPageTitle and "" ~= leftPageTitle then
    item = Scorer.NewItem(0, "LeftPageTitle", "Text")
    item.Font = Menu.AverageFont
    item.Text = leftPageTitle
    item.Pos = V2D(128, 60)
    item.Color = Menu.TitleColor
    item.Align = "Center"
    item.Size = V3D(0, 0)
  end
  local menu = Menu.BookMenus[leftMenuName]
  if not menu then
    Game.ConsoleError("Menu '" .. leftMenuName .. "' not found\n")
    return
  end
  Menu.BuildPageMenu(menu, true, "L", startY, stepY)
  for i, menuName in pairs(rightMenusNames) do
    menu = Menu.BookMenus[menuName]
    if menu then
      Menu.BuildPageMenu(menu, false, "R" .. i, startYRightPage, stepY)
    else
      Game.ConsoleError("Menu '" .. menuName .. "' not found\n")
    end
  end
  Scorer.SetDefault(0, "Itm1L")
  Scorer.SetOnCancel(0, onBackCallback)
  Menu.PrevBookMenuOnCancel = onBackCallback
  if "" ~= onBackCallback then
    Menu.ShowNavigationHUD("Menu_Nav_Back", "Menu_Nav_Select")
  else
    Menu.ShowNavigationHUD(nil, "Menu_Nav_Select")
  end
  Menu.DrawBackMenu()
  if leftPageTitle and "" ~= leftPageTitle then
    Menu.CreateUnderlineAdornment(leftPageTitle .. "_Underline", V2D(0.25, 0.2))
  end
  Menu.IsMainCfgMenu = false
end

function Menu.BuildPageMenu(optionsNames, isLeftPage, itemPostfix, startY, stepY)
  if #optionsNames == 0 then
    return
  end
  local xPos = 512
  if isLeftPage then
    xPos = 128
  end
  local menuSize = table.getn(optionsNames)
  for i = 1, menuSize do
    item = Scorer.NewItem(0, "Itm" .. i .. itemPostfix, "Text")
    item.Text = optionsNames[i]
    item.Pos = V2D(xPos, startY + i * stepY)
    item.uData.OriginalPosition = item.Pos
    item.Font = Menu.SmallFont
    item.CentralText = 1
    item.Color = Menu.ItemColor
    item.UseAlpha = 1
    if isLeftPage then
      item.OnAccept = "Menu.GoToRightPage"
      item.OnGainFocus = "Menu.ShowRightMenu"
    else
      item.Visible = 0
    end
  end
  for i = 1, menuSize - 1 do
    Menu.LinkUD(Scorer.GetItem(0, "Itm" .. i .. itemPostfix), Scorer.GetItem(0, "Itm" .. i + 1 .. itemPostfix))
  end
  Menu.LinkUD(Scorer.GetItem(0, "Itm" .. menuSize .. itemPostfix), Scorer.GetItem(0, "Itm1" .. itemPostfix))
end

function Menu.GoToRightPage()
  for i, leftItem in pairs(Menu.GetLeftMenuItems()) do
    leftItem.Alpha = 128
  end
  local leftIndex = Menu.GetMenuIndex(Scorer.GetActual(0))
  if not leftIndex then
    Game.ConsoleError("Menu.GoToRightPage: No left selection\n")
    return
  end
  Menu.LeftSelection = leftIndex
  for i, leftItem in pairs(Menu.GetLeftMenuItems()) do
    leftItem.Size = V2D(0, 0)
  end
  for i, rightItem in pairs(Menu.GetRightMenuItems(leftIndex)) do
    rightItem.Visible = 1
    rightItem.Alpha = 255
  end
  Scorer.GetItem(0, Scorer.GetActual(0)).OnLooseFocus = ""
  Scorer.SetDefault(0, "Itm1R" .. leftIndex)
  Scorer.SetOnCancel(0, "Menu.GoToLeftPage")
end

function Menu.GoToLeftPage()
  for i, rightItem in pairs(Menu.GetRightMenuItems(Menu.LeftSelection)) do
    rightItem.Alpha = 128
  end
  for i, leftItem in pairs(Menu.GetLeftMenuItems()) do
    local itemPosition = leftItem.Pos
    leftItem.GetExtens = 1
    leftItem.Pos = itemPosition
    leftItem.Alpha = 255
  end
  Scorer.SetDefault(0, "Itm" .. Menu.LeftSelection .. "L")
  Scorer.SetOnCancel(0, Menu.LeftPageBackCallback or "Menu.MainMenu")
end

function Menu.GetLeftMenuItems()
  local returnValue = {}
  local leftItem = Scorer.GetItem(0, "Itm1L")
  local index = 2
  while leftItem do
    table.insert(returnValue, leftItem)
    leftItem = Scorer.GetItem(0, "Itm" .. index .. "L")
    index = index + 1
  end
  return returnValue
end

function Menu.GetRightMenuItems(menuIndex)
  local returnValue = {}
  local rightItem = Scorer.GetItem(0, "Itm1R" .. menuIndex)
  local index = 2
  while rightItem do
    table.insert(returnValue, rightItem)
    rightItem = Scorer.GetItem(0, "Itm" .. index .. "R" .. menuIndex)
    index = index + 1
  end
  return returnValue
end

function Menu.GetMenuIndex(itemName)
  local leftIndex, rightIndex = string.match(itemName, "Itm(%d+)[LR](%d*)")
  return tonumber(leftIndex), tonumber(rightIndex)
end

function Menu.HideRightMenu(scorerId, itemName, nextItemName)
  local leftIndex = Menu.GetMenuIndex(itemName)
  if leftIndex then
    for i, rightItem in pairs(Menu.GetRightMenuItems(leftIndex)) do
      rightItem.Visible = 0
    end
  end
end

function Menu.ShowRightMenu(scorerId, itemName, previousItemName)
  Scorer.GetItem(0, itemName).OnLooseFocus = "Menu.HideRightMenu"
  local leftIndex = Menu.GetMenuIndex(itemName)
  if leftIndex then
    for i, rightItem in pairs(Menu.GetRightMenuItems(leftIndex)) do
      rightItem.Visible = 1
      rightItem.Alpha = 128
      Menu.LeftSelection = leftIndex
    end
  end
end

function Menu.GetAcceptLabel()
  local item = Scorer.GetItem(0, "AcceptLabel")
  if not item then
    item = Scorer.NewItem(0, "AcceptLabel", "Text")
    item.Text = Menu.GetAcceptText()
    item.Font = "MessageBig"
    item.Align = "Right"
    item.Outside = 1
    item.Pos = V2D(585, 420)
  end
  return item
end

function Menu.GetBackLabel()
  local item = Scorer.GetItem(0, "BackLabel")
  if not item then
    item = Scorer.NewItem(0, "BackLabel", "Text")
    item.Text = Menu.GetCancelText()
    item.Font = "MessageBig"
    item.Align = "Left"
    item.Outside = 1
    item.Pos = V2D(55, 420)
  end
  return item
end

function Menu.SettingsBookMenu()
  Menu.TurnPage()
  Menu.__SettingsBookMenu__()
end

function Menu.__SettingsBookMenu__()
  if Game.Get("Platform") == "PC" then
    Menu.LastControlConfig = {}
    local listuky = Menu.Configurables
    for i = 1, #listuky do
      Menu.LastControlConfig[i] = Input.GetDefinedList(0, listuky[i][1], listuky[i][2], 0)
    end
  end
  if Game.Get("Platform") == "PC" then
    Menu.BookMenu(langstr("Menu_Configuration"), "Settings", {
      "Controls",
      "Video",
      "Audio",
      "Difficulty",
      "Vibration",
      "Language"
    }, "Menu.AfterConfigMenu", 140, nil, 145)
  else
    Menu.BookMenu(langstr("Menu_Configuration"), "Settings", {
      "Controls",
      "Video",
      "Audio",
      "Difficulty"
    }, "Menu.AfterConfigMenu", 150, nil, 145)
  end
  Menu.IsMainCfgMenu = true
  local leftMenu = Menu.GetLeftMenuItems()
  if Game.Get("Platform") == "PC" then
    local rightMenu = Menu.GetRightMenuItems(1)
    for i = 1, #rightMenu do
      rightMenu[i].onAccept = "Menu.RedefineKey"
      rightMenu[i].uData.info = i
      rightMenu[i].Pos = V2D(440, 50 + i * 25)
      rightMenu[i].Font = Menu.Message
    end
    rightMenu[#rightMenu].onAccept = "Menu.TryToResetInput"
  else
    leftMenu[1].onAccept = "Menu.DoNothing"
  end
  leftMenu[1].OnLooseFocus = "Menu.HideControlsPage"
  leftMenu[1].OnGainFocus = "Menu.ShowControlsPage"
  Menu.ShowControlsPage()
  leftMenu[2].OnAccept = "Menu.GoToVideoMenu"
  local rightMenu = Menu.GetRightMenuItems(2)
  local slider = Menu.SliderSet(rightMenu[1], "RT_CopyRamp", V2D(-1, 1), 0.01)
  rightMenu[1].Pos = rightMenu[1].uData.OriginalPosition
  rightMenu[1].CentralText = 1
  rightMenu[1].onAccept = "Menu.OnAcceptGammaMenu"
  rightMenu[1].onLeft = ""
  rightMenu[1].onRight = ""
  slider.Visible = 0
  rightMenu[2].onAccept = "Menu.SwitchSubtitles"
  rightMenu[2].onLeft = "Menu.SwitchSubtitles"
  rightMenu[2].onRight = "Menu.SwitchSubtitles"
  rightMenu[2].Text = Menu.Get_Subtitles_Status(0, rightMenu[2].Name)
  rightMenu[2].Pos = rightMenu[2].uData.OriginalPosition
  rightMenu[2].CentralText = 1
  if 2 < #rightMenu then
    rightMenu[3].onAccept = "Menu.Switch_Fullscreen"
    rightMenu[3].onLeft = "Menu.Switch_Fullscreen"
    rightMenu[3].onRight = "Menu.Switch_Fullscreen"
    rightMenu[3].Text = Menu.Get_Fullscreen_Status()
    rightMenu[3].Pos = rightMenu[3].uData.OriginalPosition
    rightMenu[3].CentralText = 1
    rightMenu[4].onAccept = "Menu.Switch_Next_Resolution"
    rightMenu[4].onLeft = "Menu.Switch_Prev_Resolution"
    rightMenu[4].onRight = "Menu.Switch_Next_Resolution"
    rightMenu[4].Text = Menu.Get_Screen_Resolution_Status()
    rightMenu[4].Pos = rightMenu[4].uData.OriginalPosition
    rightMenu[4].CentralText = 1
    rightMenu[5].onAccept = "Menu.GoToAdvancedVideo"
  end
  leftMenu[3].onAccept = "Menu.GoToAudioRightMenu"
  
  function Menu.GoToAudioRightMenu(...)
    Menu.GoToRightPage(...)
    Menu.ShowNavigationHUD("Menu_Nav_Back", nil, nil)
    Scorer.SetOnCancel(0, "Menu.GoToAudioLeftPage")
  end
  
  function Menu.GoToAudioLeftPage(...)
    Menu.GoToLeftPage(...)
    Menu.ShowNavigationHUD("Menu_Nav_Back", "Menu_Nav_Select", nil)
  end
  
  rightMenu = Menu.GetRightMenuItems(3)
  local audioGVars = {
    "VoiceMainVolume",
    "SoundMainVolume",
    "MusicMainVolume"
  }
  for i = 1, 3 do
    Menu.SliderSet(rightMenu[i], audioGVars[i], V2D(0, 1), 0.1)
    rightMenu[i].Align = "Center"
    rightMenu[i].Y = rightMenu[i].Y - (3 - i) * 20 + 55
    rightMenu[i].X = 512
    rightMenu[i].uData.slider.LocalPos = V2D(-50, 20)
    rightMenu[i].OnLooseFocus = "Menu.PlayAudioMenuSound"
  end
  leftMenu[4].OnGainFocus = "Menu.ShowSkillLevelMenu"
  leftMenu[4].OnAccept = "Menu.GoToSkillLevelMenu"
  rightMenu = Menu.GetRightMenuItems(4)
  local skillIcons = Menu.GetSkillIcons(0, 128, 0.4)
  for i = 1, Menu.NumSkilLevels do
    if i < 4 or i == 4 and Game.Get("gvGameFinished") then
      rightMenu[i].OnAccept = "Menu.SetSkill" .. Menu.SkillLevels[i]
    end
    rightMenu[i].Y = rightMenu[i].Y + 10
    rightMenu[i].uData.LeftMarkOffset = 20
    skillIcons[i].Pos = rightMenu[i].Pos + V2D(-18, 5)
  end
  if Game.Get("Platform") == "PC" then
    if leftMenu[5] then
      leftMenu[5].OnGainFocus = "Menu.ShowVibrationLevelMenu"
      leftMenu[5].OnAccept = "Menu.GoToVibrationLevelMenu"
      rightMenu = Menu.GetRightMenuItems(5)
      for i = 1, 4 do
        rightMenu[i].uData.Vibration = Menu.VibrationLevels[i]
        rightMenu[i].Y = rightMenu[i].Y + 10
        rightMenu[i].OnAccept = "Menu.SetVibration"
      end
    end
    if leftMenu[6] then
      leftMenu[6].OnGainFocus = "Menu.ShowLanguageLevelMenu"
      leftMenu[6].OnAccept = "Menu.GoToLanguageLevelMenu"
      rightMenu = Menu.GetRightMenuItems(6)
      local i = 1
      for j = 1, #Menu.LanguageList do
        if Game.FileExist("Language/" .. Menu.LanguageList[j][2] .. ".txt", false) then
          rightMenu[i].uData.Language = Menu.LanguageList[j][2]
          rightMenu[i].OnAccept = "Menu.AcceptLanguage"
          if 6 > #Menu.BookMenus.Language then
            rightMenu[i].Y = rightMenu[i].Y
          else
            rightMenu[i].Y = rightMenu[i].Y - 15
          end
          i = i + 1
        end
      end
    end
    Menu.CreateUnderlineAdornment("SettingsLeftPageLower", V2D(0.25, 0.9), true)
  else
    Menu.CreateUnderlineAdornment("SettingsLeftPageLower", V2D(0.25, 0.8), true)
  end
  Menu.IsComingBack = true
  Game.SetLoadingScreen("2D/Loading/PapelLibro-D.dds")
end

function Menu.PlayFocusSound()
  Scorer.AddScheduledFunc(0, 0, "PlayFocusSound", "Scorer.PlayScorerSound", Game.Get("OnFocusSound"), Game.Get("OnFocusSoundVol"), 0)
end

function Menu.PlayAudioMenuSound(scorerId, itemName, nextItemName)
  if nextItemName ~= "Itm3L" then
    Menu.PlayFocusSound()
  end
end

Menu.InGammaMenu = false
Menu.PrevGammaItemUp = ""
Menu.PrevGammaItemDown = ""
Menu.GammaSpritesAlpha = 0
Menu.GammaMaxFadeTime = 1
Menu.GammaFadeTime = 0
Menu.GammaSliderMaxDisp = 120

function Menu.ShowGammaMenu(scorerId, itemName)
  local labelCreator = function(itemName, position, align, text)
    local HUDItem = Scorer.GetItem(0, itemName)
    if nil == HUDItem then
      HUDItem = Scorer.NewItem(0, itemName, "Text")
      HUDItem.Font = "MessageBig"
      HUDItem.Pos = position
      HUDItem.Align = align
      HUDItem.Outside = 1
      HUDItem.UseAlpha = 1
    end
    HUDItem.Text = text
    return HUDItem
  end
  labelCreator("Gamma_Cancel", V2D(50, 420), "Left", Menu.GetCancelIconCode() .. langstr("Menu_Cancel"))
  labelCreator("Gamma_Accept", V2D(590, 420), "Right", langstr("Menu_Accept") .. " " .. Menu.GetAcceptIconCode())
  Scorer.GetItem(0, "Gamma_Cancel").Visible = 0
  Scorer.GetItem(0, "Gamma_Accept").Visible = 0
  local item = Scorer.NewItem(0, "LeftArrow", "Sprite")
  if item == nil then
    item = Scorer.GetItem(0, "LeftArrow")
  else
    item.IsMultiSprite = 1
    item.File = "2D/HUD/dds/HUD2.alpha.dds"
    item.SpriteIndex = 24
    item.Outside = 1
    item.Pos = V2D(320 - Menu.GammaSliderMaxDisp - 12, 160)
    item.Angle = 90
    item.Pivot = V2D(0.5, 0.5)
    item.Scale = V2D(0.5, 0.5)
    item.Color = Color(255, 255, 255, 255)
    item.Visible = 0
  end
  item = Scorer.NewItem(0, "RightArrow", "Sprite")
  if item == nil then
    item = Scorer.GetItem(0, "RightArrow")
  else
    item.IsMultiSprite = 1
    item.File = "2D/HUD/dds/HUD2.alpha.dds"
    item.SpriteIndex = 24
    item.Outside = 1
    item.Pos = V2D(320 + Menu.GammaSliderMaxDisp + 12, 160)
    item.Angle = 270
    item.Pivot = V2D(0.5, 0.5)
    item.Scale = V2D(0.5, 0.5)
    item.Color = Color(255, 255, 255, 255)
    item.Visible = 0
  end
  item = Scorer.NewItem(0, "UpArrow", "Sprite")
  if item == nil then
    item = Scorer.GetItem(0, "UpArrow")
  else
    item.IsMultiSprite = 1
    item.File = "2D/HUD/dds/HUD2.alpha.dds"
    item.SpriteIndex = 24
    item.Outside = 1
    item.Pos = V2D(320, 150)
    item.Angle = 180
    item.Pivot = V2D(0.5, 0.5)
    item.Scale = V2D(0.3, 0.3)
    item.Color = Color(255, 255, 255, 255)
    item.Visible = 0
  end
  item = Scorer.NewItem(0, "DownArrow", "Sprite")
  if item == nil then
    item = Scorer.GetItem(0, "DownArrow")
  else
    item.IsMultiSprite = 1
    item.File = "2D/HUD/dds/HUD2.alpha.dds"
    item.SpriteIndex = 24
    item.Outside = 1
    item.Pos = V2D(320, 170)
    item.Angle = 0
    item.Pivot = V2D(0.5, 0.5)
    item.Scale = V2D(0.3, 0.3)
    item.Color = Color(255, 255, 255, 255)
    item.Visible = 0
  end
  item = Scorer.NewItem(0, "GammaSliderBar", "Sprite")
  if item == nil then
    item = Scorer.GetItem(0, "GammaSliderBar")
  else
    item.File = "2D/White.alpha.tga"
    item.Unit = 1
    item.WideScale = 0
    item.Pos = V2D(320, 160)
    item.Pivot = V2D(0.5, 0.5)
    item.Outside = 1
    item.Color = Color(255, 255, 255, 255)
    item.Visible = 0
  end
  item.Scale = V2D(242 / (Game.Get("PhysicalAspectRatio") / 1.3333333730697632), 4)
  local gammaStrings = Scorer.SplitString(Game.GetLangStr("GammaHelp"), "HoratioSmall", 500)
  for i = 1, #gammaStrings do
    item = Scorer.NewItem(0, "SliderText" .. i, "Text", 1)
    if item == nil then
      item = Scorer.GetItem(0, "SliderText" .. i)
    else
      item.Font = "HoratioSmall"
      item.Align = "Center"
      item.Text = gammaStrings[i]
      item.Color = V4D(255, 255, 255, 255)
      item.Pos = V2D(320, 65 + 35 * (i - 1))
      item.Outside = 1
      item.Visible = 0
    end
  end
  local blackGamma = {
    4,
    8,
    16
  }
  for i = 1, 3 do
    item = Scorer.NewItem(0, "GammaSprite" .. i, "Sprite")
    if item == nil then
      item = Scorer.GetItem(0, "GammaSprite" .. i)
    else
      item.IsMultiSprite = 1
      item.File = Game.Get("HUDmgPath")
      item.SpriteIndex = 25
      item.WideScale = 1
      item.Outside = 1
      item.Pos = V2D(320 + 200 * (i - 2), 300)
      item.Pivot = V2D(0.5, 0.5)
      item.Color = Color(blackGamma[i], blackGamma[i], blackGamma[i], 255)
    end
  end
  item = Scorer.NewItem(0, "GammaGreySquare", "Sprite")
  if item == nil then
    item = Scorer.GetItem(0, "GammaGreySquare")
  else
    item.File = "2D/White.alpha.tga"
    item.Unit = 1
    item.WideScale = 0
    item.Pos = V2D(0, 0)
    item.Scale = V2D(640, 480)
    item.Pivot = V2D(0, 0)
    item.Outside = 1
  end
  item.Color = Color(0, 0, 0, 255 * Menu.GammaFadeTime)
end

function Menu.OnAcceptGammaMenu(scorerId, itemName)
  Input.SetActionSet("Null")
  local item = Menu.GetRightMenuItems(2)[1]
  item.onRender = "Menu.OnRenderGammaMenu"
  if not Menu.InGammaMenu then
    Menu.InGammaMenu = true
    Menu.PrevGammaItemUp = item.Up
    Menu.PrevGammaItemDown = item.Down
    Menu.PrevGammaValue = Game.Get("RT_CopyRamp")
    item.Up = ""
    item.Down = ""
    Scorer.GetItem(0, "MenuNavigationHUD_Back").Visible = 0
    Scorer.GetItem(0, "MenuNavigationHUD_Accept").Visible = 0
    local si = Scorer.GetItem(0, "Gamma_Cancel")
    if si then
      si.Visible = 1
    end
    si = Scorer.GetItem(0, "Gamma_Accept")
    if si then
      si.Visible = 1
    end
    Scorer.SetOnCancel(0, "Menu.OnCancelGammaMenu")
  else
    Menu.OnCancelGammaMenu(scorerId, item.Name, false)
  end
end

function Menu.OnCancelGammaMenu(scorerId, itemName, restorePrevGamma)
  Input.SetActionSet("Null")
  restorePrevGamma = defparam(restorePrevGamma, true)
  local item = Scorer.GetItem(0, itemName)
  Menu.InGammaMenu = false
  item.Up = Menu.PrevGammaItemUp
  item.Down = Menu.PrevGammaItemDown
  Scorer.GetItem(0, "MenuNavigationHUD_Back").Visible = 1
  Scorer.GetItem(0, "MenuNavigationHUD_Back").Alpha = 0
  Scorer.GetItem(0, "MenuNavigationHUD_Accept").Visible = 1
  Scorer.GetItem(0, "MenuNavigationHUD_Accept").Alpha = 0
  Menu.FadeInNavigationHUD()
  Scorer.GetItem(0, "Gamma_Cancel").Visible = 0
  Scorer.GetItem(0, "Gamma_Accept").Visible = 0
  Scorer.SetOnCancel(0, "Menu.GoToLeftPage")
  if restorePrevGamma then
    Game.Set("RT_CopyRamp", Menu.PrevGammaValue)
    item.uData.slider.Value = Menu.PrevGammaValue
  end
end

function Menu.OnRenderGammaMenu(scorerId, itemName, timeDiff, callback)
  local execCallback = false
  callback = defparam(callback, nil)
  if Menu.InGammaMenu then
    Menu.GammaFadeTime = Menu.GammaFadeTime + timeDiff
    if Menu.GammaFadeTime > Menu.GammaMaxFadeTime then
      Menu.GammaFadeTime = Menu.GammaMaxFadeTime
    end
    local value = Input.GetInputState("Menu", "ItemLeft", 0) * timeDiff / 1.5
    if 0 < value then
      Menu.SliderLeft(scorerId, itemName, value, false)
    end
    value = Input.GetInputState("Menu", "ItemRight", 0) * timeDiff / 1.5
    if 0 < value then
      Menu.SliderRight(scorerId, itemName, value, false)
    end
  else
    Menu.GammaFadeTime = Menu.GammaFadeTime - timeDiff
    if Menu.GammaFadeTime <= 0 then
      Menu.GammaFadeTime = 0
      execCallback = true
    end
  end
  if (Menu.GammaFadeTime == Menu.GammaMaxFadeTime or Menu.GammaFadeTime == 0) and Input.GetActionSet() ~= "Menu" then
    Input.SetActionSet("Menu")
    if Menu.GammaFadeTime == 0 then
      local item = Scorer.GetItem(0, itemName)
      if item then
        item.onRender = ""
      end
    end
  end
  Menu.ShowGammaMenu(scorerId, itemName)
  Menu.UpdateGammaMenuVisibility(scorerId, itemName)
  if execCallback and callback then
    callback()
    local itm = Scorer.GetItem(scorerId, itemName)
    if itm then
      itm.Visible = 0
    end
  end
end

function Menu.UpdateGammaMenuVisibility(scorerId, itemName)
  local item
  local itemTable = {}
  local slider = Scorer.GetItem(0, itemName).uData.slider
  for i = 1, 3 do
    item = Scorer.GetItem(0, "GammaSprite" .. i)
    table.insert(itemTable, item)
  end
  item = Scorer.GetItem(0, "UpArrow")
  item.Pos = V2D(320 + Menu.GammaSliderMaxDisp * slider.Value, item.Pos.y)
  table.insert(itemTable, item)
  item = Scorer.GetItem(0, "DownArrow")
  item.Pos = V2D(320 + Menu.GammaSliderMaxDisp * slider.Value, item.Pos.y)
  table.insert(itemTable, item)
  item = Scorer.GetItem(0, "GammaSliderBar")
  table.insert(itemTable, item)
  item = Scorer.GetItem(0, "SliderText1")
  table.insert(itemTable, item)
  item = Scorer.GetItem(0, "SliderText2")
  table.insert(itemTable, item)
  for i = 1, #itemTable do
    if Menu.GammaFadeTime == Menu.GammaMaxFadeTime then
      itemTable[i].Visible = 1
    else
      itemTable[i].Visible = 0
    end
  end
  itemTable = {}
  item = Scorer.GetItem(0, "Gamma_Accept")
  table.insert(itemTable, item)
  item = Scorer.GetItem(0, "Gamma_Cancel")
  table.insert(itemTable, item)
  for i = 1, #itemTable do
    local threshold = Menu.GammaMaxFadeTime - Menu.GammaMaxFadeTime / 4
    if threshold > Menu.GammaFadeTime then
      itemTable[i].Alpha = 0
    else
      itemTable[i].Alpha = 255 * ((Menu.GammaFadeTime - threshold) / (Menu.GammaMaxFadeTime - threshold))
    end
    itemTable[i].Visible = 1
  end
end

Menu.VibrationLevels = {
  0,
  0.2,
  0.5,
  1
}

function Menu.MarkCurrentVibrationLevel(isShaded)
  local RumbleLevel = Game.Get("RumblePow")
  for i = 1, #Menu.VibrationLevels do
    if math.abs(Menu.VibrationLevels[i] - RumbleLevel) < 0.09 then
      local RumbleLevelItem = Menu.GetRightMenuItems(5)[i]
      Menu.MarkItem(RumbleLevelItem.Name, isShaded)
      break
    end
  end
end

function Menu.ShowVibrationLevelMenu(scorerId, itemName)
  Menu.ShowRightMenu(scorerId, itemName)
  Menu.MarkCurrentVibrationLevel(true)
end

function Menu.GoToVibrationLevelMenu(scorerId, itemName)
  Menu.GoToRightPage(scorerId, itemName)
  Menu.MarkCurrentVibrationLevel(false)
end

function Menu.SetVibration(scorerId, itemName)
  local itm = Scorer.GetItem(scorerId, itemName)
  Game.Set("RumblePow", itm.uData.Vibration)
  Menu.MarkCurrentVibrationLevel(false)
  if itm.uData.Vibration > 0 then
    Input.SetActionSet("Null")
    Input.Rumble(0, 1, 1, 0.5)
    Scorer.AddScheduledFunc(0, 0.5, "RumbleEnd", "Input.SetActionSet", "Menu")
  end
end

function Menu.MarkCurrentLanguage(isShaded)
  local language = Game.GetLanguage()
  for i = 1, #Menu.LanguageList do
    if Menu.LanguageList[i][2] == language then
      local LanguageItem = Menu.GetRightMenuItems(6)[i]
      Menu.MarkItem(LanguageItem.Name, isShaded)
      break
    end
  end
end

function Menu.ShowLanguageLevelMenu(scorerId, itemName)
  Menu.ShowRightMenu(scorerId, itemName)
  Scorer.GetItem(scorerId, itemName).OnLooseFocus = "Menu.HideLanguageLevelMenu"
  Menu.MarkCurrentLanguage(true)
end

function Menu.HideLanguageLevelMenu(scorerId, itemName)
  Menu.ClearSelectionMarks()
  Menu.HideRightMenu(scorerId, itemName)
end

function Menu.GoToLanguageLevelMenu(scorerId, itemName)
  Menu.GoToRightPage(scorerId, itemName)
  Menu.MarkCurrentLanguage(false)
end

function Menu.AcceptLanguage(id, ItmName)
  local itm = Scorer.GetItem(id, ItmName)
  if itm.uData.Language == Game.GetLanguage() then
    return
  end
  Game.SetLanguage(itm.uData.Language)
  Menu.CreateMenuTables()
  Menu.TurnPage(true)
  Menu.RewritePausedLabel(id)
  Scorer.Clear(0)
  Game.Set("AfterDrawCallback", "Menu.RecreateSettingsMenu")
end

function Menu.RewritePausedLabel(id)
  local si = Scorer.GetItem(id, "FuckingPaused")
  if si then
    si.Text = langstr("Menu_GamePaused")
    si.Pos = V2D(320, 38)
    si.CentralText = 1
  end
end

function Menu.RecreateSettingsMenu()
  Menu.__SettingsBookMenu__()
  Scorer.SetDefault(0, "Itm6L")
  Menu.GoToRightPage()
  local language = Game.GetLanguage()
  for i = 1, #Menu.LanguageList do
    if Menu.LanguageList[i][2] == language then
      Scorer.SetDefault(0, "Itm" .. i .. "R6")
      Menu.MarkCurrentLanguage(false)
      break
    end
  end
end

function Menu.GoToAdvancedVideo(id, ItmName)
  if Game.Get("Platform") == "PC" then
    Menu.TurnPage(true)
    Menu.AdvancedVideoMenu()
  end
end

function Menu.GainFocusAdvGraphOption(id, control)
  print("GainFocusAdvGraphOption id=" .. id .. "  control=" .. control)
  Game.ChangedAdvGraphFocus(control)
end

function Menu.AdvancedVideoMenu()
  local y = 145
  if Game.Get("MenuMotionBlur") then
    y = 140
  end
  Menu.BookMenu(langstr("Menu_Video_Advanced"), "AdvancedVideo", {}, "Menu.AfterAdvancedVideo", y, nil)
  local leftMenu = Menu.GetLeftMenuItems()
  leftMenu[1].onAccept = "Menu.Switch_Next_Shadows"
  leftMenu[1].onLeft = "Menu.Switch_Prev_Shadows"
  leftMenu[1].onRight = "Menu.Switch_Next_Shadows"
  leftMenu[1].OnGainFocus = "Menu.GainFocusAdvGraphOption"
  leftMenu[1].Text = Menu.Get_Shadows_Status()
  leftMenu[1].Pos = leftMenu[1].uData.OriginalPosition
  leftMenu[1].CentralText = 1
  leftMenu[2].onAccept = "Menu.Switch_VSync"
  leftMenu[2].onLeft = "Menu.Switch_VSync"
  leftMenu[2].onRight = "Menu.Switch_VSync"
  leftMenu[2].Text = Menu.Get_VSync_Status()
  leftMenu[2].Pos = leftMenu[2].uData.OriginalPosition
  leftMenu[2].CentralText = 1
  leftMenu[3].onAccept = "Menu.Switch_Antialias"
  leftMenu[3].onLeft = "Menu.Switch_Prev_Antialias"
  leftMenu[3].onRight = "Menu.Switch_Next_Antialias"
  leftMenu[3].OnGainFocus = "Menu.GainFocusAdvGraphOption"
  leftMenu[3].Text = Menu.Get_Antialias_Status()
  leftMenu[3].Pos = leftMenu[3].uData.OriginalPosition
  leftMenu[3].CentralText = 1
  leftMenu[4].onAccept = "Menu.Switch_Anisotropic"
  leftMenu[4].onLeft = "Menu.Switch_Prev_Anisotropic"
  leftMenu[4].onRight = "Menu.Switch_Next_Anisotropic"
  leftMenu[4].OnGainFocus = "Menu.GainFocusAdvGraphOption"
  leftMenu[4].Text = Menu.Get_Anisotropic_Status()
  leftMenu[4].Pos = leftMenu[4].uData.OriginalPosition
  leftMenu[4].CentralText = 1
  leftMenu[5].onAccept = "Menu.Switch_AmbientOcclusion"
  leftMenu[5].onLeft = "Menu.Switch_Prev_AmbientOcclusion"
  leftMenu[5].onRight = "Menu.Switch_Next_AmbientOcclusion"
  leftMenu[5].OnGainFocus = "Menu.GainFocusAdvGraphOption"
  leftMenu[5].Text = Menu.Get_AmbientOccluison_Status()
  leftMenu[5].Pos = leftMenu[5].uData.OriginalPosition
  leftMenu[5].CentralText = 1
  if leftMenu[6] then
    leftMenu[6].onAccept = "Menu.Switch_MotionBlur"
    leftMenu[6].onLeft = "Menu.Switch_MotionBlur"
    leftMenu[6].onRight = "Menu.Switch_MotionBlur"
    leftMenu[6].OnGainFocus = "Menu.GainFocusAdvGraphOption"
    leftMenu[6].Text = Menu.Get_MotionBlur_Status()
    leftMenu[6].Pos = leftMenu[6].uData.OriginalPosition
    leftMenu[6].CentralText = 1
  end
  Menu.IsComingBack = true
  Menu.CreateUnderlineAdornment("SettingsLeftPageLower", V2D(0.25, 0.9), true)
  local bookscene = Scorer.NewItem(0, "BookScene", "BookScene")
  bookscene.Pos = V2D(360, 70)
  bookscene.Size = V2D(235, 360)
end

function Menu.AfterAdvancedVideo()
  Menu.SettingsBookMenu()
  Scorer.SetDefault(0, "Itm2L")
  Menu.GoToRightPage()
  Scorer.SetDefault(0, "Itm5R2")
  Menu.SetResolutionDisabled(Game.Get("Fullscreen") == 0)
end

function Menu.GetSkillIcons(visible, alpha, scaleFactor)
  local firstSkillSpriteIndex = 40
  local returnValue = {}
  for i = 1, Menu.NumSkilLevels do
    local skillSprite = Scorer.GetItem(0, "SkillLevelIcon" .. i)
    if nil == skillSprite then
      skillSprite = Scorer.NewItem(0, "SkillLevelIcon" .. i, "Sprite")
      skillSprite.IsMultiSprite = 1
      skillSprite.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
      skillSprite.SpriteIndex = firstSkillSpriteIndex + i - 1
      skillSprite.PivotX = 0.5
    end
    skillSprite.Visible = visible or skillSprite.Visible
    skillSprite.Alpha = alpha or skillSprite.Alpha
    skillSprite.Scale = V2D(scaleFactor or skillSprite.ScaleX, scaleFactor or skillSprite.ScaleY)
    table.insert(returnValue, skillSprite)
  end
  return returnValue
end

function Menu.ShowSkillLevelMenu(scorerId, itemName)
  Menu.ShowRightMenu(scorerId, itemName)
  Scorer.GetItem(0, itemName).OnLooseFocus = "Menu.HideSkillLevelMenu"
  Menu.MarkCurrentSkillLevel(true)
  Menu.GetSkillIcons(1, 128)
  local lockSprite = Scorer.GetItem(0, "LockSkillLevelIcon")
  if lockSprite == nil then
    lockSprite = Scorer.NewItem(0, "LockSkillLevelIcon", "Sprite")
    lockSprite.IsMultiSprite = 1
    lockSprite.File = "2D/Menu/BOOK_Lacerias.alpha.tga"
    lockSprite.SpriteIndex = 34
  end
  local xSize, ySize = Scorer.GetTextArea(Menu.SmallFont, Menu.GetRightMenuItems(4)[4].Text)
  lockSprite.Pos = Menu.GetRightMenuItems(4)[4].Pos + V2D(xSize + 7, 0)
  lockSprite.Alpha = 128
  lockSprite.Scale = V2D(1, 1)
  lockSprite.Visible = 0
  if not Game.Get("gvGameFinished") then
    lockSprite.Visible = 1
    local items = Menu.GetRightMenuItems(4)
    items[1].Up = items[3].Name
    items[3].Down = items[1].Name
  end
end

function Menu.GoToSkillLevelMenu(scorerId, itemName)
  Menu.GoToRightPage(scorerId, itemName)
  Menu.MarkCurrentSkillLevel(false)
  Menu.GetSkillIcons(1, 255)
  if not Game.Get("gvGameFinished") then
    Menu.GetRightMenuItems(4)[4].Alpha = 128
    Scorer.GetItem(0, "SkillLevelIcon4").Alpha = 128
    local lockSprite = Scorer.GetItem(0, "LockSkillLevelIcon")
    if lockSprite then
      lockSprite.Alpha = 255
    end
  end
end

function Menu.HideSkillLevelMenu(scorerId, itemName)
  Menu.ClearSelectionMarks()
  Menu.HideRightMenu(scorerId, itemName)
  Menu.GetSkillIcons(0)
  local lockSprite = Scorer.GetItem(0, "LockSkillLevelIcon")
  if lockSprite then
    lockSprite.Visible = 0
  end
end

Menu.InCredits = false
Menu.CreditsFadeTime = 0
Menu.CreditsFadeOutTime = 0
Menu.CreditsMaxFadeTime = 1
Menu.CreditsMaxFadeOutTime = 2
Menu.CreditsSpeed = 2
Menu.CreditsScorerItem = nil
Menu.CreditsFadingOut = true
Menu.CreditsCalledFromEOG = false
Menu.AfterCreditsFadeOutCallback = nil
Menu.BackFromCredits = false
Menu.CreditsMusicList = {
  {
    "Music/Zobek_Theme.ogg",
    165
  },
  {
    "Music/1.6_Half_Ruined_Bridge_Strings.ogg",
    109
  },
  {
    "Music/2.8_Dark_Dungeon.ogg",
    84
  },
  {
    "Music/The Waterfalls_Magic_River.ogg",
    159
  },
  {
    "Music/2.2_enchanted_forest.ogg",
    64
  },
  {
    "Music/Forest_Of_Creatures.ogg",
    124
  },
  {
    "Music/2.3_UNDERGROUND_CAVE_A.ogg",
    145
  }
}

function Menu.LaunchCredits()
  Scorer.SetOnCancel(0, "Menu.BackToExtrasFromCredits")
  Game.Set("CreditsDistance", 18)
  Game.Set("CreditsSpeed", Menu.CreditsSpeed)
  Game.Set("CreditsLines", 18)
  Game.Set("CreditsTop", 100)
  Scorer.GetItem(0, "Creditus").Visible = 1
  Scorer.GetItem(0, "Creditus").OnRender = "Menu.ChangeCreditsSpeed"
  Menu.CreditsScorerItem.Visible = 1
  if Menu.CreditsCalledFromEOG then
    Menu.LaunchNextCreditsMusic(1)
  end
  Input.SetActionSet("Menu")
  Menu.ShowSkipOption()
end

function Menu.LaunchNextCreditsMusic(musicIndex)
  if musicIndex > #Menu.CreditsMusicList then
    musicIndex = 1
  end
  local songName = Menu.CreditsMusicList[musicIndex][1]
  local songTime = Menu.CreditsMusicList[musicIndex][2]
  Sound.SetMusic(songName, 1)
  Sound.SetMusicLoopCount(0)
  Scorer.AddScheduledFunc(0, songTime, "LaunchNextCreditsMusic", "Menu.LaunchNextCreditsMusic", musicIndex + 1)
end

function Menu.ChangeCreditsSpeed(scorerId, itemName, timeDiff)
  local speed = Menu.CreditsSpeed
  local value = Input.GetInputState("Menu", "ItemUp", 0)
  if 0 < value then
    speed = Menu.CreditsSpeed - value * Menu.CreditsSpeed
  else
    value = Input.GetInputState("Menu", "ItemDown", 0)
    if 0 < value then
      speed = Menu.CreditsSpeed + Menu.CreditsSpeed * value * 4
    end
  end
  Game.Set("CreditsSpeed", speed)
end

function Menu.CreditsButtonPushed(id, control)
  if not Menu.InCredits then
    Menu.InCredits = true
    Menu.CreditsFadeTime = Menu.CreditsMaxFadeTime
    Menu.FadeOutNavigationHUD()
    Input.SetActionSet("Null")
  end
end

function Menu.ShowSkipOption()
  if not Menu.BackFromCredits then
    Menu.ShowNavigationHUD("Menu_Skip", nil, nil)
    Scorer.GetItem(0, "MenuNavigationHUD_Back").Effect = "Darkness"
    Menu.FadeInNavigationHUD()
  end
  Menu.FreezeInput(Menu.CreditsDoNothing, Menu.BackToExtrasFromCredits)
end

function Menu.CreditsDoNothing()
  Menu.FreezeInput(Menu.CreditsDoNothing, Menu.BackToExtrasFromCredits)
end

function Menu.CreditsDoNothingEOG()
  Menu.FreezeInput(Menu.CreditsDoNothingEOG, Menu.PreLaunchEpilogue)
end

function Menu.ShowCredits(scorerId, itemName, timeDiff, callback, fromEOG)
  fromEOG = defparam(fromEOG, false)
  local item = Scorer.NewItem(0, "Creditus", "Credits")
  if item == nil then
    item = Scorer.GetItem(0, "Creditus")
  else
    if fromEOG then
      item.ExitFunc = "Menu.PreLaunchEpilogue"
    else
      item.ExitFunc = "Menu.BackToExtrasFromCredits"
    end
    item.XOffset = 145
    item.OutSide = 1
    item.Visible = 0
  end
  local MaxVideoColorFadeTime = 2
  if Menu.CreditsScorerItem == nil then
    Menu.CreditsScorerItem = Scene.CreateVideoScorerItem()
    Menu.CreditsScorerItem.PlayFrame = "Video/Credits.bik"
    Menu.CreditsScorerItem.OnRender = ""
    Menu.CreditsScorerItem.Visible = 0
    Menu.CreditsScorerItem.Color = V4D(255, 255, 255, 0)
    Menu.CreditsScorerItem.uData.ColorFadeTimer = MaxVideoColorFadeTime
  elseif Menu.CreditsFadeTime == 0 then
    Menu.CreditsScorerItem.uData.ColorFadeTimer = Menu.CreditsScorerItem.uData.ColorFadeTimer - timeDiff
    if 0 > Menu.CreditsScorerItem.uData.ColorFadeTimer then
      Menu.CreditsScorerItem.uData.ColorFadeTimer = 0
    end
    Menu.CreditsScorerItem.Color = V4D(255, 255, 255, 255 * (1 - Menu.CreditsScorerItem.uData.ColorFadeTimer / MaxVideoColorFadeTime))
  end
  item = Scorer.NewItem(0, "CreditsGreySquare", "Sprite")
  if item == nil then
    item = Scorer.GetItem(0, "CreditsGreySquare")
  else
    item.File = "2D/White.alpha.tga"
    item.Unit = 1
    item.WideScale = 0
    item.Pos = V2D(0, 0)
    item.Scale = V2D(640, 480)
    item.Pivot = V2D(0, 0)
    item.Outside = 1
  end
  item.Color = Color(0, 0, 0, 255 * (1 - Menu.CreditsFadeTime))
  local execCallback = false
  callback = defparam(callback, nil)
  if 0 < Menu.CreditsFadeTime then
    Menu.CreditsFadeTime = Menu.CreditsFadeTime - timeDiff
    if 0 > Menu.CreditsFadeTime then
      Menu.CreditsFadeTime = 0
      execCallback = true
    end
  end
  if execCallback and callback then
    callback()
  end
end

function Menu.CreditsFadeOut(timeDiff)
  local item = Scorer.GetItem(0, "Creditus")
  if item then
    item.ForcedAlpha = 1 - Menu.CreditsFadeOutTime / Menu.CreditsMaxFadeOutTime
  end
  if Menu.CreditsScorerItem then
    Menu.CreditsScorerItem.Color = V4D(255, 255, 255, 255 * (1 - Menu.CreditsFadeOutTime / Menu.CreditsMaxFadeOutTime))
  end
  Menu.CreditsFadeOutTime = Menu.CreditsFadeOutTime + timeDiff
  if Menu.CreditsFadeOutTime >= Menu.CreditsMaxFadeOutTime then
    item.Visible = 0
    Menu.CreditsScorerItem.Visible = 0
    if Menu.AfterCreditsFadeOutCallback then
      Menu.AfterCreditsFadeOutCallback()
    else
      Menu.CreditsFadingOut = false
      Menu.CreditsFadeOutTime = Menu.CreditsMaxFadeOutTime
    end
  end
end

function Menu.CreditsFadeIn(timeDiff)
  local item = Scorer.GetItem(0, "CreditsGreySquare")
  if item then
    item.Color = Color(0, 0, 0, 255 * (Menu.CreditsFadeOutTime / Menu.CreditsMaxFadeOutTime))
  end
  Menu.CreditsFadeOutTime = Menu.CreditsFadeOutTime - timeDiff
  if 0 >= Menu.CreditsFadeOutTime then
    Menu.ReallyBackToExtrasFromCredits()
  end
end

function Menu.OnRenderCredits(scorerId, itemName, timeDiff)
  if Menu.InCredits then
    Menu.ShowCredits(scorerId, itemName, timeDiff, Menu.LaunchCredits)
    if Menu.BackFromCredits then
      if Menu.CreditsFadingOut then
        Menu.CreditsFadeOut(timeDiff)
      else
        Menu.CreditsFadeIn(timeDiff)
      end
    end
  end
end

function Menu.CreditsCleanUp()
  Game.Set("VideoRender", 0)
  if Menu.CreditsScorerItem then
    Menu.CreditsScorerItem:Del()
    Menu.CreditsScorerItem = nil
  end
  local item = Scorer.GetItem(0, "Creditus")
  if item then
    item:Del()
  end
  item = Scorer.GetItem(0, "CreditsGreySquare")
  if item then
    item:Del()
  end
  Menu.InCredits = false
  Menu.BackFromCredits = false
  Menu.CreditsFadeOutTime = 0
  Menu.CreditsFadingOut = true
end

function Menu.BackToExtrasFromCredits(id, control)
  Menu.BackFromCredits = true
  Menu.CreditsFadingOut = true
  Menu.CreditsFadeOutTime = Menu.CreditsMaxFadeOutTime * (1 - Menu.CreditsScorerItem.Color.a / 255)
  Menu.AfterCreditsFadeOutCallback = nil
  Menu.FadeOutNavigationHUD()
  Scorer.SetCursor(0, "")
end

function Menu.ReallyBackToExtrasFromCredits()
  Menu.CreditsCleanUp()
  Menu.CreditsFadeTime = Menu.CreditsMaxFadeTime
  Menu.ShowNavigationHUD("Menu_Nav_Back", "Menu_Nav_Select")
  Menu.FadeInNavigationHUD()
  Menu.DeFrostInput()
  Scorer.SetOnCancel(0, "WorldMap.CheckExtras")
end

function Menu.LaunchCreditsFromEOG()
  Game.SetTimeSpeed(0)
  Input.SetActionSet("Menu")
  Menu.InCredits = true
  Menu.CreditsCalledFromEOG = true
  Menu.CreateNavigationHUD()
  Menu.FadeOutNavigationHUD()
  Menu.ShowCredits(0, nil, 0, nil, true)
  Menu.CreditsScorerItem.Color = V4D(255, 255, 255, 255)
  Menu.LaunchCredits()
  Menu.FreezeInput(Menu.CreditsDoNothingEOG, Menu.PreLaunchEpilogue)
end

function Menu.PreLaunchEpilogue()
  if not Menu.BackFromCredits then
    Menu.FadeOutNavigationHUD()
    Menu.BackFromCredits = true
    Menu.CreditsFadingOut = true
    Menu.CreditsFadeOutTime = 0
    Menu.AfterCreditsFadeOutCallback = Menu.LaunchEpilogue
    Menu.CreditsScorerItem.OnRender = "Menu.OnRenderCredits"
    Scorer.SetCursor(0, "")
  end
end

function Menu.LaunchEpilogue()
  Scorer.DeleteScheduledFuncs(0, "LaunchNextCreditsMusic")
  Menu.CreditsCleanUp()
  Menu.DeFrostInput()
  Menu.FadeOutNavigationHUD()
  Game.SetTimeSpeed(1)
  Input.SetActionSet("Inactive")
  Scene.EndOfLevelScene = true
  Scene.PlayVideo("13_Epilogue")
  Scene.EndOfSceneCallback = Menu.AfterEpilogue
end

function Menu.AfterEpilogue()
  SaveGame.NewLevelNow("Menu")
end

function Menu.MarkCurrentSkillLevel(isShaded)
  local skillLevel = Game.Get("GameSkill")
  local skillLevelItem = Menu.GetRightMenuItems(4)[skillLevel + 1]
  if skillLevelItem then
    Menu.MarkItem(skillLevelItem.Name, isShaded)
  end
end

function Menu.MarkItem(itemName, isShaded)
  local item = Scorer.GetItem(0, itemName)
  if item then
    local arrowOffset = V2D(32, 18)
    local leftArrow = TravelBook.GetItem("RightMenuArrowLeft")
    local rightArrow = TravelBook.GetItem("RightMenuArrowRight")
    leftArrow.Pos = item.Pos + V2D(-arrowOffset.x - (item.uData.LeftMarkOffset or 0), arrowOffset.y)
    rightArrow.Pos = item.Pos + V2D(arrowOffset.x + item.Size.x, arrowOffset.y)
    if isShaded then
      leftArrow.Alpha = 128
      rightArrow.Alpha = 128
    else
      leftArrow.Alpha = 255
      rightArrow.Alpha = 255
    end
  end
end

function Menu.ClearSelectionMarks()
  local markNames = {
    "RightMenuArrowLeft",
    "RightMenuArrowRight"
  }
  for _, markName in ipairs(markNames) do
    local mark = Scorer.GetItem(0, markName)
    if mark then
      mark.DelMe = 1
    end
  end
end

function Menu.ShowControlsPage()
  local controlsFont = Menu.Message
  local multiSpriteFileName = "2D/HUD/HUDpcmg.alpha.tga"
  if Game.Get("Platform") == "PS3" then
    multiSpriteFileName = "2D/HUD/HUDps3mg.alpha.tga"
  elseif Game.Get("Platform") == "X360" then
    multiSpriteFileName = "2D/HUD/HUDxboxmg.alpha.tga"
  end
  local xPos = 440
  local startY = 50
  local stepY = 25
  local keybd = Game.Get("Platform") == "PC" and Game.Get("PCPadConnected") == 0
  local size = table.getn(Menu.ControlsEntries)
  local leftMenu = Menu.GetLeftMenuItems()
  local rightMenu = Menu.GetRightMenuItems(1)
  if keybd then
    xPos = 400
    startY = 40
    stepY = 23
    for i = 1, #rightMenu do
      rightMenu[i].Pos = V2D(rightMenu[i].Pos.x, startY + i * stepY)
    end
    leftMenu[1].onAccept = "Menu.GoToControlsMenu"
    Menu.ShowRightMenu(0, "Itm1L")
    for i = 1, size do
      local item = Scorer.GetItem(0, "ControlLabel" .. i)
      if item == nil then
        item = Scorer.NewItem(0, "ControlLabel" .. i, "Text", 1)
        item.uData.info = i
        Menu.UpdateKeyText(item)
        item.Pos = V2D(xPos, startY + i * stepY + 8)
        item.Font = controlsFont
        item.Color = Menu.ItemColor
        item.UseAlpha = 1
      else
        Menu.UpdateKeyText(item)
      end
      item.Alpha = 128
      item.Visible = 1
    end
  else
    for i = 1, #rightMenu do
      rightMenu[i].Pos = V2D(rightMenu[i].Pos.x, startY + i * stepY)
      rightMenu[i].Visible = 1
      rightMenu[i].Alpha = 224
      Menu.LeftSelection = leftIndex
    end
    rightMenu[#rightMenu].Visible = 0
    leftMenu[1].onAccept = "Menu.DoNothing"
    for i = 1, size do
      if Menu.ControlsEntries[i][1] ~= -1 then
        local item = Scorer.GetItem(0, "ControlSprite" .. i)
        if item == nil then
          item = Scorer.NewItem(0, "ControlSprite" .. i, "Sprite", 1)
          item.IsMultiSprite = 1
          item.HighRes = 1
          item.File = multiSpriteFileName
          item.SpriteIndex = Menu.ControlsEntries[i][1]
          item.Scale = V2D(Menu.ControlsEntries[i][2])
          item.PivotX = 0
          item.PivotY = 0
          item.Color = Color(255, 255, 255, 255)
          item.Pos = V2D(xPos + Menu.ControlsEntries[i][3], startY + i * stepY + Menu.ControlsEntries[i][4])
          if Game.Get("Platform") == "PS3" then
            if i == 1 then
              item.Pos = V2D(item.Pos.x + 2, item.Pos.y)
            elseif i == 6 or i == 7 then
              item.Pos = V2D(item.Pos.x - 3, item.Pos.y)
            elseif i == 14 then
              item.Pos = V2D(item.Pos.x - 3, item.Pos.y + 3)
            end
          end
        end
        item.Visible = 1
      end
    end
    local refPos
    local item = Scorer.GetItem(0, "ControlSprite1_1")
    if item == nil then
      refPos = Scorer.GetItem(0, "ControlSprite1").Pos
      item = Scorer.NewItem(0, "ControlSprite1_1", "Sprite", 1)
      item.IsMultiSprite = 1
      item.HighRes = 1
      item.File = multiSpriteFileName
      item.SpriteIndex = 1
      item.Scale = V4D(0.7, 0.7, 0, 0)
      item.PivotX = 0
      item.PivotY = 0
      item.Color = Color(255, 255, 255, 255)
      item.Pos = V2D(refPos.x, refPos.y - 10)
    end
    item.Visible = 1
  end
  Scorer.GetItem(0, "Itm1L").OnLooseFocus = "Menu.HideControlsPage"
  if keybd then
    Menu.CreateCtrlInfoItem("ControlRedefineKeys", 512, startY + 16.7 * stepY)
    Menu.CreateCtrlInfoItem("ControlRedefineKeys1", 512, startY + 16.7 * stepY - 6)
    Menu.CreateCtrlInfoItem("ControlRedefineKeys2", 512, startY + 16.7 * stepY + 10)
    Menu.SetCtrlMsg(langstr("PC_Menu_Define_Key"))
    rightMenu[#rightMenu].Text = langstr("Menu_Controls_Reset")
    rightMenu[#rightMenu].onAccept = "Menu.TryToResetInput"
    item.onLeft = ""
    item.onRight = ""
  else
    Menu.ShowNavigationHUD("Menu_Nav_Back")
  end
end

function Menu.SetCtrlMsg(text)
  local split = Scorer.SplitString(text, Menu.Message, 300)
  if #split < 2 then
    Scorer.GetItem(0, "ControlRedefineKeys").Text = text
    Scorer.GetItem(0, "ControlRedefineKeys1").Text = ""
    Scorer.GetItem(0, "ControlRedefineKeys2").Text = ""
  else
    split = Scorer.SplitString(text, Menu.Message, 220)
    Scorer.GetItem(0, "ControlRedefineKeys").Text = ""
    Scorer.GetItem(0, "ControlRedefineKeys1").Text = split[1]
    Scorer.GetItem(0, "ControlRedefineKeys2").Text = split[2]
  end
end

function Menu.CreateCtrlInfoItem(name, x, y)
  local item = Scorer.GetItem(0, name)
  if item == nil then
    item = Scorer.NewItem(0, name, "Text", 1)
    item.Text = ""
    item.Align = "Center"
    item.Pos = V2D(x, y)
    item.Font = Menu.Message
    item.Color = Menu.ItemColor
    item.UseAlpha = 1
  end
  item.Visible = 1
  item.Alpha = 128
  return item
end

function Menu.UpdateAllKeyTexts()
  local size = table.getn(Menu.ControlsEntries)
  for i = 1, size do
    local item = Scorer.GetItem(0, "ControlLabel" .. i)
    if item then
      Menu.UpdateKeyText(item)
    end
  end
end

function Menu.GetDefinedKey(index, trim)
  local info = Menu.Configurables[index]
  local allDefined = true
  local kbList = ""
  local n = 0
  repeat
    local alist = Game.Split(Input.GetDefinedList(0, info[1], info[2], 1, 0), ", ")
    local defined = false
    for i = 1, #alist do
      local dt = Game.Split(alist[i], ":")
      if dt[1] == "Kb" and dt[2] ~= "ESC" then
        kbList = kbList .. dt[2]
        defined = true
      end
    end
    if info[6] then
      info = Menu.Configurables[info[6]]
    else
      info = nil
    end
    allDefined = allDefined and defined
    n = n + 1
  until info == nil
  local len = string.len(kbList)
  if len == 0 or not allDefined then
    return "--"
  elseif 1 < n and trim and trim < len then
    return "[...]"
  elseif trim and trim < string.len(kbList) then
    return "[" .. string.sub(kbList, 1, trim) .. ".]"
  else
    return "[" .. kbList .. "]"
  end
end

function Menu.UpdateKeyText(item)
  item.Text = Menu.GetDefinedKey(item.uData.info, 6)
  item.Align = "Center"
end

function Menu.HideControlsPage(scorerId, itemName)
  local size = table.getn(Menu.ControlsEntries)
  for i = 1, size do
    local item = Scorer.GetItem(0, "ControlLabel" .. i)
    if item then
      item.Visible = 0
    end
  end
  for i = 1, size do
    local item = Scorer.GetItem(0, "ControlSprite" .. i)
    if item then
      item.Visible = 0
    end
  end
  local item = Scorer.GetItem(0, "ControlSprite1_1")
  if item then
    item.Visible = 0
  end
  if Game.Get("Platform") == "PC" then
    local itm = Scorer.GetItem(0, "ControlRedefineKeys")
    if itm then
      itm.Visible = 0
    end
    itm = Scorer.GetItem(0, "ControlRedefineKeys1")
    if itm then
      itm.Visible = 0
    end
    itm = Scorer.GetItem(0, "ControlRedefineKeys2")
    if itm then
      itm.Visible = 0
    end
    Menu.HideRightMenu(scorerId, itemName)
  end
  Menu.ShowNavigationHUD("Menu_Nav_Back", "Menu_Nav_Select")
end

function Menu.GoToControlsMenu(scorerId, itemName)
  Menu.GoToRightPage(scorerId, itemName)
  Scorer.GetItem(0, itemName).OnLooseFocus = "Menu.HideControlsPage"
  if Game.Get("Platform") == "PC" then
    local itm = Scorer.GetItem(0, "ControlRedefineKeys")
    if itm then
      itm.Alpha = 255
    end
    itm = Scorer.GetItem(0, "ControlRedefineKeys1")
    if itm then
      itm.Alpha = 255
    end
    itm = Scorer.GetItem(0, "ControlRedefineKeys2")
    if itm then
      itm.Alpha = 255
    end
  end
  for i = 1, #Menu.ControlsEntries do
    local item = Scorer.GetItem(0, "ControlLabel" .. i)
    if item then
      item.Alpha = 224
    end
  end
  Scorer.SetOnCancel(0, "Menu.CheckAllDefined")
end

function Menu.CheckAllDefined()
  for i = 1, #Menu.ControlsEntries do
    local item = Scorer.GetItem(0, "ControlLabel" .. i)
    if item.Text == "--" then
      Scorer.SetDefault(0, "Itm" .. i .. "R1")
      return
    end
  end
  Menu.GoToLeftPage()
end

function Menu.TryToResetInput(id, control)
  local item = Scorer.GetItem(id, control)
  item.Text = langstr("X360_Menu_Confirmation") .. " " .. langstr("Menu_Question_No")
  item.onAccept = "Menu.CancelResetInput"
  item.onLeft = "Menu.SwapInputConfirmation"
  item.onRight = "Menu.SwapInputConfirmation"
  item.OnLooseFocus = "Menu.CancelResetInput"
  Scorer.SetOnCancel(0, "Menu.CancelResetInput")
end

function Menu.SwapInputConfirmation(id, control)
  local item = Scorer.GetItem(id, control)
  if item.onAccept == "Menu.CancelResetInput" then
    item.Text = langstr("X360_Menu_Confirmation") .. " " .. langstr("Menu_Question_Yes")
    item.onAccept = "Menu.ResetInput"
  else
    item.Text = langstr("X360_Menu_Confirmation") .. " " .. langstr("Menu_Question_No")
    item.onAccept = "Menu.CancelResetInput"
  end
end

function Menu.CancelResetInput(id, control)
  local item = Scorer.GetItem(id, control)
  item.Text = langstr("Menu_Controls_Reset")
  item.onAccept = "Menu.TryToResetInput"
  item.onLeft = ""
  item.onRight = ""
  Scorer.SetOnCancel(0, "Menu.CheckAllDefined")
end

function Menu.ResetInput(id, control)
  Input.ResetToDefault()
  Menu.UpdateAllKeyTexts()
  Menu.KeysChanged = true
  Menu.CancelResetInput(id, control)
end

function Menu.RedefineKey(id, control)
  local itm = Scorer.GetItem(id, control)
  local info = Menu.Configurables[itm.uData.info]
  if info[5] then
    Menu.SetCtrlMsg(langstr(info[5]))
  else
    Menu.SetCtrlMsg(langstr("PC_Menu_Defining_Key"))
  end
  Menu.NextKeyToDefine = nil
  Game.Set("AfterDrawCallback", "Menu.ConfigurateControl")
end

function Menu.CreateAdornmentCross(model)
  local crossSets = {
    "MenuCrossA",
    "MenuCrossB",
    "MenuCrossC"
  }
  local crossItems = {
    {
      {
        {
          "MenuCrossA1",
          "MenuCrossA2"
        },
        174,
        0,
        90
      },
      {
        {
          "MenuCrossA3",
          "MenuCrossA4",
          "MenuCrossA5",
          "MenuCrossA6"
        },
        123,
        45,
        90
      },
      {
        {
          "MenuCrossA7",
          "MenuCrossA8",
          "MenuCrossA9",
          "MenuCrossA10"
        },
        118,
        0,
        0
      },
      {
        {
          "MenuCrossA11",
          "MenuCrossA12",
          "MenuCrossA13",
          "MenuCrossA14"
        },
        105,
        45,
        90
      }
    },
    {
      {
        {
          "MenuCrossB1",
          "MenuCrossB2",
          "MenuCrossB3",
          "MenuCrossB4"
        },
        138,
        90,
        90
      },
      {
        {
          "MenuCrossB5",
          "MenuCrossB6",
          "MenuCrossB7",
          "MenuCrossB8"
        },
        79,
        45,
        90
      },
      {
        {
          "MenuCrossB9",
          "MenuCrossB10",
          "MenuCrossB11",
          "MenuCrossB12"
        },
        74,
        0,
        0
      }
    },
    {
      {
        {
          "MenuCrossC1",
          "MenuCrossC2",
          "MenuCrossC3",
          "MenuCrossC4"
        },
        134,
        90,
        90
      },
      {
        {
          "MenuCrossC5",
          "MenuCrossC6",
          "MenuCrossC7",
          "MenuCrossC8"
        },
        74,
        45,
        90
      },
      {
        {
          "MenuCrossC9",
          "MenuCrossC10",
          "MenuCrossC11",
          "MenuCrossC12"
        },
        74,
        0,
        0
      }
    }
  }
  local centers = {
    V2D(0.75, 0.5),
    V2D(0.75, 0.4),
    V2D(0.75, 0.4)
  }
  TravelBook.CreateItemSet(crossSets[model])
  for _, circularSet in pairs(crossItems[model]) do
    TravelBook.ArrangeCircularSet(circularSet[1], centers[model], circularSet[2], circularSet[3], circularSet[4], circularSet[5], circularSet[6])
  end
  local centralItems = {
    "MenuCrossA15",
    "MenuCrossB16",
    "MenuCrossC15"
  }
  TravelBook.ApplyProperty(Scorer.GetItem(0, centralItems[model]), {
    "fPos",
    centers[model]
  })
end

function Menu.DeleteAdornmentCross(model)
  if model < 4 and 0 < model then
    local crossSets = {
      "MenuCrossA",
      "MenuCrossB",
      "MenuCrossC"
    }
    TravelBook.ApplyPropertyToSet(crossSets[model], "DelMe", 1)
  end
end

function Menu.HideAdornmentCross(model)
  if model < 4 and 0 < model then
    local crossSets = {
      "MenuCrossA",
      "MenuCrossB",
      "MenuCrossC"
    }
    TravelBook.ApplyPropertyToSet(crossSets[model], "Visible", 0)
  end
end

function Menu.ShowAdornmentCross(model)
  if model < 4 and 0 < model then
    local crossSets = {
      "MenuCrossA",
      "MenuCrossB",
      "MenuCrossC"
    }
    TravelBook.ApplyPropertyToSet(crossSets[model], "Visible", 1)
  end
end

function Menu.CreateUnderlineAdornment(prefix, position, isInverted)
  for i = 1, 3 do
    local item = Scorer.NewItem(0, prefix .. i, "Sprite", 1)
    if nil == item then
      Game.ConsoleError("Menu.CreateUnderlineAdornment: Prefix '" .. prefix .. "'already used\n")
      return
    end
    item.IsMultiSprite = 1
    item.File = TravelBook.BookFile
    item.Scale = V2D(0.7, 0.7)
  end
  local attributes
  if isInverted then
    attributes = {
      Angle = {
        90,
        180,
        270
      },
      SpriteIndex = {
        11,
        15,
        11
      },
      Mirror = {
        1,
        0,
        0
      },
      Pivot = {
        V2D(0.5, 0),
        V2D(0.5, 0.23),
        V2D(0.5, 0)
      }
    }
  else
    attributes = {
      Angle = {
        90,
        0,
        270
      },
      SpriteIndex = {
        11,
        15,
        11
      },
      Mirror = {
        0,
        0,
        1
      },
      Pivot = {
        V2D(0.5, 0),
        V2D(0.5, 0.23),
        V2D(0.5, 0)
      }
    }
  end
  for attribute, values in next, attributes, nil do
    for i = 1, 3 do
      Scorer.GetItem(0, prefix .. i)[attribute] = values[i]
    end
  end
  TravelBook.ArrangeSet(3, {
    {
      prefix .. "1",
      prefix .. "2",
      prefix .. "3"
    }
  }, position - V2D(0.032, 0), 0.032, 0.1)
end

function Menu.CreateBasicAdornments()
  TravelBook.CreateItemSet("MenuAdornments")
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.MenuLeftPageOuter, V2D(0.02, 0.03), 0.45, 0.95)
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.MenuLeftPageInner, V2D(0.083, 0.13), 0.324, 0.75)
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.MenuRightPageOuter, V2D(0.53, 0.03), 0.45, 0.95)
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.MenuRightPageInner, V2D(0.595, 0.13), 0.324, 0.75)
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.MenuRightPageMiddle, V2D(0.553, 0.7), 0.431, 0.95)
  TravelBook.ArrangeSet(2, TravelBookItems.Arrangements.MenuLeftPageMiddle, V2D(0.044, 0.7), 0.431, 0.95)
end

function Menu.HideBasicAdornments(hideLeftTop, hideLeftBottom, hideRightTop, hideRightBottom)
  local itemLists = {
    TravelBookItems.Arrangements.MenuLeftPageInner[1],
    TravelBookItems.Arrangements.MenuLeftPageInner[2],
    TravelBookItems.Arrangements.MenuRightPageInner[1],
    TravelBookItems.Arrangements.MenuRightPageInner[2]
  }
  local params = {
    hideLeftTop,
    hideLeftBottom,
    hideRightTop,
    hideRightBottom
  }
  for i, doHide in ipairs(params) do
    if doHide then
      for _, itemName in ipairs(itemLists[i]) do
        local item = Scorer.GetItem(0, itemName)
        if item then
          item.DelMe = 1
        end
      end
    end
  end
end

function Menu.SetVerticalMenuScroll(maxLines)
  local numLines = 0
  local menuItem = Scorer.GetItem(0, "Itm1")
  while menuItem do
    numLines = numLines + 1
    menuItem.uData.ScrollIndex = numLines
    menuItem = Scorer.GetItem(0, "Itm" .. numLines)
  end
end

Menu.VerticalMenuScroller = {
  Init = function(this, itemList, displayedLines, upArrowName, downArrowName)
    this.FirstLine = 1
    this.DisplayedLines = displayedLines
    this.LineSeparation = 0
    this.SelectedLine = 1
    this.Lines = {}
    
    function Menu.VerticalScrollerDown()
      Menu.VerticalMenuScroller:SelectNext()
    end
    
    function Menu.VerticalScrollerUp()
      Menu.VerticalMenuScroller:SelectPrevious()
    end
    
    for i, itemName in ipairs(itemList) do
      local item = Scorer.GetItem(0, itemName)
      if i == 1 then
        this.FirstPosition = item.Pos.y
        item.Up = ""
      elseif i == 2 then
        this.LineSeparation = item.Pos.y - Scorer.GetItem(0, itemList[1]).Pos.y
      end
      item.onUp = "Menu.VerticalScrollerUp"
      item.onDown = "Menu.VerticalScrollerDown"
      table.insert(this.Lines, itemName)
    end
    Scorer.GetItem(0, itemList[#itemList]).Down = ""
    if upArrowName and downArrowName then
      this.UpArrow = Scorer.GetItem(0, upArrowName)
      this.DownArrow = Scorer.GetItem(0, downArrowName)
    else
      this.UpArrow = TravelBook.GetItem("ScrollListArrowUp")
      this.UpArrow.Pos = V2D(128, 150)
      this.DownArrow = TravelBook.GetItem("ScrollListArrowDown")
      this.DownArrow.Pos = V2D(128, 440)
    end
    this:Update()
  end,
  Update = function(this)
    for i, lineName in ipairs(this.Lines) do
      local line = Scorer.GetItem(0, lineName)
      if i < this.FirstLine or i >= this.FirstLine + this.DisplayedLines then
        line.Visible = 0
      else
        line.Visible = 1
        line.y = this.FirstPosition + (i - this.FirstLine) * this.LineSeparation
      end
    end
    if this.FirstLine == 1 then
      this.UpArrow.Visible = 0
    else
      this.UpArrow.Visible = 1
    end
    if #this.Lines <= this.DisplayedLines or this.FirstLine + this.DisplayedLines - 1 == #this.Lines then
      this.DownArrow.Visible = 0
    else
      this.DownArrow.Visible = 1
    end
    TravelBook.MarkMenuSelection("Left")
    local leftArrow = TravelBook.GetItem("LeftMenuArrowLeft")
    local rightArrow = TravelBook.GetItem("LeftMenuArrowRight")
    if leftArrow and rightArrow then
      leftArrow.Pos = leftArrow.Pos - V2D(0, 8)
      rightArrow.Pos = rightArrow.Pos - V2D(0, 9)
    end
  end,
  SelectPrevious = function(this)
    if this.SelectedLine > 1 then
      this.SelectedLine = this.SelectedLine - 1
    end
    if this.SelectedLine < this.FirstLine then
      this.FirstLine = this.FirstLine - 1
      if this.UpArrow then
        this.UpArrow.OnRender = "TravelBook.OnRenderScrollArrow"
        this.UpArrow.uData.GlowRemainTime = 0.5
        this.DownArrow.uData.GlowRemainTime = 0
      end
    end
    this:Update()
  end,
  SelectNext = function(this)
    if this.SelectedLine < #this.Lines then
      this.SelectedLine = this.SelectedLine + 1
    end
    if this.SelectedLine >= this.FirstLine + this.DisplayedLines then
      this.FirstLine = this.FirstLine + 1
      if this.DownArrow then
        this.DownArrow.OnRender = "TravelBook.OnRenderScrollArrow"
        this.UpArrow.uData.GlowRemainTime = 0
        this.DownArrow.uData.GlowRemainTime = 0.5
      end
    end
    this:Update()
  end
}

function Menu.ScorerFakeTransition()
  local itm = Scorer.NewItem(0, "FaderBack", "Render")
  itm.File = "2D/White.alpha.tga"
  itm.Unit = 1
  itm.WideScale = 0
  itm.Color = Color(255, 255, 255, 255)
  itm.Pos = V2D(320, 240)
  itm.Pivot = V2D(0.5, 0.5)
  itm.Scale = V2D(640, 480)
  itm.ShaderFilterMask = 0
  itm.OnRender = "Menu.OnRenderScorerFakeTransition"
  itm.uData.Time = 1
  return itm
end

function Menu.OnRenderScorerFakeTransition(id, name, difftime)
  local itm = Scorer.GetItem(0, name)
  local t = itm.uData.Time
  t = t - difftime * 4
  itm.uData.Time = t
  if t <= 0 then
    itm:Del()
  else
    itm.Color = Color(255, 255, 255, 255 * t)
  end
end

function Menu.FillGemsText()
  local gemTypes = {
    "Life",
    "Light",
    "Dark"
  }
  for _, gemType in ipairs(gemTypes) do
    local gemsCollected = Game.GetSaveVar(init.LevelName .. ".Level" .. gemType .. "Gems")
    if Scorer.GetItem(0, gemType .. "GemsItem") ~= nil then
      Scorer.GetItem(0, gemType .. "GemsItem").Text = tostring(gemsCollected)
    end
  end
end

function Menu.PlayMenuMusic(volume)
  if Menu.EndOfLevelMusicTheme then
    volume = defparam(volume, 1)
    Sound.SetMusic(Menu.EndOfLevelMusicTheme, volume)
    Sound.PauseMusic(false)
    Sound.SetMusicLoopCount(-1)
  end
end

function Menu.PlayPauseVideoMusic()
  if Menu.PauseVideoMusicTheme then
    Sound.SetMusic(Menu.PauseVideoMusicTheme, 1)
    Sound.PauseMusic(false)
    Sound.SetMusicLoopCount(-1)
  end
end

function Menu.EndOfLevelMenu(levelName)
  WorldMap.QuestItemTable = {}
  WorldMap.QuestEndOfLevel = true
  Menu.GetUsePauseMessage()
  WorldMap.CreateQuestRightMenu()
  si = Scorer.GetItem(0, "FuckingPaused")
  if si then
    si.DelMe = 1
  end
end

function Menu.HasDecimals(num)
  local aux
  aux = num - math.floor(num)
  if 0.1 <= aux then
    return true
  else
    return false
  end
end

function Menu.WriteAchievement(id, control)
  local options = {}
  for i = 1, SaveGame.nPics do
    table.insert(options, {
      "" .. i,
      "Menu.WriteAchievementExec"
    })
  end
  if table.getn(options) > 0 then
    Menu.VerticalMenu("Write Achievement", options, "Menu.MainMenu", "Terminal8", 80, 8, false)
  end
  Menu.DrawBackMenu()
end

function Menu.WriteAchievementExec(id, control)
  local id = tonumber(Scorer.GetItem(id, control).Text)
  print("WriteAchievementExec", id)
  SaveGame.AddPic(id)
end

function Menu.SwapAcceptCancel()
  return Game.Get("Platform") == "PS3" and Input.GetAcceptCancelSwap() == 1
end

function Menu.GetAcceptIconCode()
  if Game.Get("Platform") == "PC" and Game.Get("PCPadConnected") == 0 then
    local menu = Game.GetMenu()
    if menu:IsOpening() or menu:IsFading() or menu:IsActive() or Input.GetActionSet() == "Menu" then
      return "[" .. langstr("Keyboard_RETURN") .. "]"
    elseif Menu.SwapAcceptCancel() then
      return Menu.GetDefinedKey(5)
    else
      return Menu.GetDefinedKey(2)
    end
  elseif Menu.SwapAcceptCancel() then
    return "\023"
  else
    return "\022"
  end
end

function Menu.GetCancelIconCode()
  if Game.Get("Platform") == "PC" and Game.Get("PCPadConnected") == 0 then
    local menu = Game.GetMenu()
    if menu:IsOpening() or menu:IsFading() or menu:IsActive() or Input.GetActionSet() == "Menu" then
      return "[" .. langstr("Keyboard_BACK") .. "]"
    elseif Menu.SwapAcceptCancel() then
      return Menu.GetDefinedKey(2)
    else
      return Menu.GetDefinedKey(5)
    end
  elseif Menu.SwapAcceptCancel() then
    return "\022"
  else
    return "\023"
  end
end

function Menu.GetExitIconCode()
  if Game.Get("Platform") == "PC" and Game.Get("PCPadConnected") == 0 then
    local menu = Game.GetMenu()
    if menu:IsOpening() or menu:IsFading() or menu:IsActive() or Input.GetActionSet() == "Menu" then
      return "[" .. langstr("Keyboard_ESCAPE") .. "]"
    else
      return Menu.GetDefinedKey(4)
    end
  else
    return "\025"
  end
end

function Menu.CreateNavigationHUD()
  local labelCreator = function(itemName, position, align)
    local HUDItem = Scorer.NewItem(0, itemName, "Text")
    if HUDItem then
      HUDItem.Font = "MessageBig"
      HUDItem.Pos = position
      HUDItem.Align = align
      HUDItem.Outside = 1
      HUDItem.Persistent = 1
      HUDItem.FadeOut = 0.25
    end
  end
  labelCreator("MenuNavigationHUD_Back", V2D(30, 420), "Left")
  labelCreator("MenuNavigationHUD_Accept", V2D(610, 420), "Right")
  labelCreator("MenuNavigationHUD_Exit", V2D(320, 429), "Center")
end

Menu.CurrentHUDBack = nil
Menu.CurrentHUDAccept = nil
Menu.CurrentHUDExit = nil

function Menu.InputChangedCallback()
  Menu.ShowNavigationHUD(Menu.CurrentHUDBack, Menu.CurrentHUDAccept, Menu.CurrentHUDExit)
  if Menu.IsMainCfgMenu and Scorer.GetActual(0) == "Itm1L" then
    Menu.HideControlsPage(0, "Itm1L")
    Menu.ShowControlsPage()
  elseif Menu.IsMainCfgMenu and Menu.LeftSelection == 1 then
    if Game.Get("EscapeEvent") == "Menu.AbortWaitRedefine" then
      Menu.AbortWaitRedefine(0)
    end
    Menu.HideControlsPage(0, "Itm1L")
    Menu.GoToLeftPage()
  end
  if Artwork.IsShowingArtwork then
    Artwork.UpdateHUD()
  end
end

function Menu.ShowNavigationHUD(backKey, acceptKey, exitKey)
  Menu.CurrentHUDBack = backKey
  Menu.CurrentHUDAccept = acceptKey
  Menu.CurrentHUDExit = exitKey
  local fadeTime = 0.25
  local menu = Game.GetMenu()
  local fadeChanges = not menu:IsTurningPage() and not menu:IsOpening() and not menu:IsClosed() and not menu:IsFading()
  
  local function itemWriter(itemName, text)
    local HUDItem = Scorer.GetItem(0, itemName)
    if HUDItem ~= nil then
      if fadeChanges and HUDItem.Text ~= text then
        HUDItem.FadeOut = fadeTime
        HUDItem.Text = text
        HUDItem.FadeIn = fadeTime
      else
        HUDItem.Text = text
      end
    end
  end
  
  if backKey then
    if backKey ~= exitKey then
      itemWriter("MenuNavigationHUD_Back", Menu.GetCancelIconCode() .. " " .. langstr(backKey))
    else
      itemWriter("MenuNavigationHUD_Back", Menu.GetCancelIconCode() .. " " .. Menu.GetExitIconCode() .. " " .. langstr(backKey))
      exitKey = nil
    end
  else
    itemWriter("MenuNavigationHUD_Back", "")
  end
  if acceptKey then
    itemWriter("MenuNavigationHUD_Accept", langstr(acceptKey) .. " " .. Menu.GetAcceptIconCode())
  else
    itemWriter("MenuNavigationHUD_Accept", "")
  end
  if exitKey then
    itemWriter("MenuNavigationHUD_Exit", Menu.GetExitIconCode() .. " " .. langstr(exitKey))
  else
    itemWriter("MenuNavigationHUD_Exit", "")
  end
end

function Menu.FadeInNavigationHUD()
  local fadeTime = 0.25
  local o
  o = Scorer.GetItem(0, "MenuNavigationHUD_Accept")
  if o then
    o.FadeIn = fadeTime
  end
  o = Scorer.GetItem(0, "MenuNavigationHUD_Back")
  if o then
    o.FadeIn = fadeTime
  end
  o = Scorer.GetItem(0, "MenuNavigationHUD_Exit")
  if o then
    o.FadeIn = fadeTime
  end
  local itm1 = Scorer.GetItem(0, "MenuNavigationHUD_Exit")
  local itm2 = Scorer.GetItem(0, "MenuNavigationHUD_Accept")
  if itm1 and itm2 and itm1.Text and itm2.Text then
    if string.len(itm1.Text) + string.len(itm2.Text) >= 40 then
      itm1.Pos = V2D(300, 429)
    else
      itm1.Pos = V2D(320, 429)
    end
  end
end

function Menu.FadeOutNavigationHUD()
  local fadeTime = 0.25
  local o
  o = Scorer.GetItem(0, "MenuNavigationHUD_Accept")
  if o then
    o.FadeOut = fadeTime
  end
  o = Scorer.GetItem(0, "MenuNavigationHUD_Back")
  if o then
    o.FadeOut = fadeTime
  end
  o = Scorer.GetItem(0, "MenuNavigationHUD_Exit")
  if o then
    o.FadeOut = fadeTime
  end
end

function Menu.OnRenderNavigationMenuItem(scorerId, itemName)
  local item = Scorer.GetItem(scorerId, itemName)
  if item == nil then
    return
  end
  if "" ~= Game.Get("ScorerGenericMsg") or Game.GetMenu():IsTurningPage() then
    if item.uData.SkipRenderWithAlpha then
      item.Alpha = 0
    else
      item.SkipRender = 1
    end
    item.uData.IsSkippingRender = true
  else
    if item.uData.SkipRenderWithAlpha then
      item.Alpha = 255
    else
      item.SkipRender = 0
    end
    item.uData.IsSkippingRender = nil
  end
end

function Menu.IsPreviousMsgActive()
  local previousMsgLastMsg = Game.Get("TimeToMsg")
  if previousMsgLastMsg < 0 or previousMsgLastMsg > Game.GetTime() then
    return true
  else
    return false
  end
end

function Menu.ShowSuccessMessage(nextCall)
  Menu.TempTextRender(Game.GetLangStr("TUTORIAL_SUCCESS"), 0, 2.5, nextCall or "")
  addSF(Menu.SuccessSoundDelay, "", "Menu.LaunchSuccessSound")
end

function Menu.LaunchSuccessSound()
  Sound.PlaySound(player.Pos, "Well_Done", 1, 50, 10000)
end

function Menu.AjustPosToRatioFrom43(X)
  local aspect = Game.Get("PhysicalAspectRatio")
  if aspect <= 1.3333333730697632 then
    return X
  end
  return (X - 320) * aspect * 0.75 + 320
end

function Menu.FreezeInput(onAcceptCallback, onCancelCallback)
  local bindingsToClear = {"PgUp", "PgDown"}
  for _, bindingToClear in ipairs(bindingsToClear) do
    Input.Bind(0, "Menu", bindingToClear, "")
  end
  Scorer.SetCursor(0, "")
  if onAcceptCallback then
    Menu.OnAcceptInFrozenInputCallback = onAcceptCallback
    Input.Bind(0, "Menu", "Accept", "Menu.OnAcceptInFrozenInput")
  end
  if onCancelCallback then
    Menu.OnCancelInFrozenInputCallback = onCancelCallback
    Input.Bind(0, "Menu", "Cancel", "Menu.OnCancelInFrozenInput")
  end
  if onAcceptCallback == nil and onCancelCallback == nil then
    Game.ConsoleError("\161\161\161\161\161\161\161\161\161Invalid parameters to Menu.FreezeInput!!!!!!!")
  end
end

function Menu.OnAcceptInFrozenInput()
  Menu.DeFrostInput()
  if Menu.OnAcceptInFrozenInputCallback then
    Menu.OnAcceptInFrozenInputCallback()
  end
  Scorer.SetIgnoreInputFrames(0, 1)
end

function Menu.OnCancelInFrozenInput()
  Menu.DeFrostInput()
  Menu.OnCancelInFrozenInputCallback()
  Scorer.SetIgnoreInputFrames(0, 1)
end

function Menu.DeFrostInput()
  Scorer.SetCursor(0, "Cursor")
  Input.Bind(0, "Menu", "Accept", "")
  Input.Bind(0, "Menu", "Cancel", "")
end

function Menu.SetBookCallbacks()
  Game.GetMenu().OnBeginPageTurn = "Menu.FadeOutNavigationHUD"
  Game.GetMenu().OnBeginClose = "Menu.FadeOutNavigationHUD"
  Game.GetMenu().OnBeginFadeOut = "Menu.OnBookClosed"
  Game.GetMenu().OnEndPageTurn = "Menu.FadeInNavigationHUD"
end

function Menu.OnBookClosed(fadeOutHUD)
  fadeOutHUD = defparam(fadeOutHUD, true)
  local si = Scorer.GetItem(0, "FuckingPaused")
  if si then
    si.FadeOut = 0.25
  end
  if fadeOutHUD then
    Menu.FadeOutNavigationHUD()
  end
end

function Menu.FinishAllGame()
  Game.ConsoleError([[

ALL LEVELS PASSED AT HARD DIFICULTY!
]])
  Menu.UnlockHistoricMissions()
  Game.Set("gvGameFinished", true)
  SaveGame.CompleteAllLevels(3)
end

function Menu.FinishAllTrials()
  Menu.UnlockHistoricMissions()
  Trials.AllTrialsResolved()
end

function Menu.UnlockAllArtwork()
  Game.ConsoleError([[

ALL ARTWORK UNLOCKED&BOUGHT
]])
  Artwork.BuyAllArtwork()
end

function Menu.FinishAll()
  Game.ConsoleError([[

ALL GAME FINISHED (All levels, all trials, all tbook unlocked, all artwork unlocked)
]])
  Menu.FinishAllGame()
  Menu.FinishAllTrials()
  TravelBook.UnlockAll()
  Menu.UnlockAllArtwork()
end

function Menu.FinishTrial(i)
  if not Trials.valorObjetivo or not Trials.valorObjetivo[SaveGame.GameMaps[i]] then
    Game.ConsoleError("Start a game to unlock trials!\n")
    return false
  end
  local valorObjetivo = Trials.valorObjetivo[SaveGame.GameMaps[i]]
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
  return true
end

function Menu.FinishLevel(i, difficulty)
  local a = Game.Split(Game.Get("gvSkillMapStatus"), ",")
  a[i] = tostring(difficulty)
  local s = ""
  for i = 1, #SaveGame.GameMaps do
    s = s .. "," .. a[i]
  end
  Game.Set("gvSkillMapStatus", string.sub(s, 2))
  if i == 46 then
    Game.Set("gvGameFinished", true)
  end
  if i == 49 then
    WorldMap.SetDLCComplete(1, true)
  end
  if i == 51 then
    WorldMap.SetDLCComplete(2, true)
  end
end

Menu.DebugCompletion = nil

function Menu.StepCompletion(reverse, auto)
  Menu.UnlockHistoricMissions()
  Game.Set("gvGameFinished", true)
  if not Menu.DebugCompletion then
    Menu.DebugCompletion = 51
  end
  local i = Menu.DebugCompletion
  if i <= 51 and 1 <= i then
    if reverse then
    else
      i = 51 - i + 1
    end
    Menu.FinishLevel(i, 4)
    local trial = Menu.FinishTrial(i)
    local str = "[" .. i .. "] Completed " .. SaveGame.GameMaps[i]
    if trial then
      str = str .. " + Trial"
    end
    Game.Set("SavingMsgStr", str)
  elseif i == 0 then
    TravelBook.UnlockAll()
    Game.Set("SavingMsgStr", "TravelBook.UnlockAll")
  elseif i == -1 then
    Artwork.BuyAllArtwork()
    Game.Set("SavingMsgStr", "Artwork.BuyAllArtwork")
  elseif i < -1 or 51 < i then
    Menu.DebugCompletion = nil
    return
  end
  Game.Set("SavingMsg", 1)
  SaveGame.CheckLevelDificultyAchievementUnlocked()
  Menu.DebugCompletion = Menu.DebugCompletion - 1
  if auto then
    addSF(1, "", "Menu.StepCompletion")
  end
end

function Menu.SteppedCompletion()
  Game.Set("SaveGameActive", 1)
  Menu.StepCompletion(true, false)
end

function Menu.DebugShowAchievements()
  for i = 1, #TravelBook.AchievementsManager.Indices do
    local index = TravelBook.AchievementsManager.Indices[i]
    Menu.DebugShowAchievement(i, Game.IsAchievementUnlocked(index) ~= 0)
  end
end

function Menu.DebugShowAchievement(i, unlocked)
  local index = TravelBook.AchievementsManager.Indices[i]
  local itm = Scorer.GetItem(0, "DebugAchievement" .. index)
  if itm == nil then
    itm = Scorer.NewItem(0, "DebugAchievement" .. index, "Text")
  end
  itm.Text = index .. ". " .. Game.GetLangStr("Trophy" .. index .. "_Title")
  if i <= 24 then
    itm.Pos = V2D(380, 32 + i * 16)
  else
    itm.Pos = V2D(520, 40 + (i - 24) * 16)
  end
  itm.Font = Menu.TinyFont
  if unlocked then
    itm.Color = Color(200, 200, 200, 200)
  else
    itm.Color = Menu.TitleColor
  end
end
