if Game.Get("Platform") == "PC" then
  Game.Set("OnPoolDevices", "")
end

function init.LoadChar(CharType, withAI)
  TSCLOAD_Begin("LoadChar")
  Game.PreloadLibrary("Scripts/Chars/" .. CharType .. ".lua", CharType)
  if withAI then
    print("Loading ---------------------- Scripts/AI/AI" .. CharType .. ".lua")
    Game.PreloadLibrary("Scripts/AI/AI" .. CharType .. ".lua", "AI" .. CharType)
  end
  TSCLOAD_End("LoadChar")
end

function init.BuildLevelName(LevelName)
  return string.lower("level." .. LevelName)
end

function init.BuildChapterName(levelName)
  local chapterName = ""
  for chapName in pairs(SaveGame.GameChapters) do
    local levels = SaveGame.GameChapters[chapName]
    for j = 1, #levels do
      if levels[j] == levelName then
        chapterName = chapName
        break
      end
    end
  end
  return chapterName
end

init.isMainMenu = false

function init.main()
  Game.PreloadLibrary("Scripts/GenLib.lua", "GenLib", false)
  TSCLOAD_Begin("Init")
  if Game.Get("ToolMode") ~= 0 then
    init.BreakFileName = Game.GetLevelPath() .. "/EditorBreakPoints.lua"
    if Game.FileExist(init.BreakFileName) then
      Game.PreloadLibrary(init.BreakFileName, "EditorBreakPoints", false)
    end
  end
  if Game.Get("toolmode") ~= 0 then
    Game.Set("DeferredRagdollCreate", 0)
    Game.DelSaveVars("")
  else
    init.isMainMenu = string.upper(string.sub(Game.GetLevelPath(), 8)) == "MENU"
  end
  init.LevelFile = Game.GetLevelPath()
  init.LevelName = init.BuildLevelName(string.sub(init.LevelFile, 8))
  init.level_name = string.lower(string.sub(init.LevelFile, 8))
  init.InitGVars()
  Game.CreateElements()
  if init.isMainMenu then
    init.initMainMenu()
  else
    init.initGame()
  end
  init.chapter_name = init.BuildChapterName(init.level_name)
  local nodeSize3D = Game.Get("BatchBuildGraph3DAI")
  local nodeSize2D = Game.Get("BatchBuildGraph2DAI")
  if 0 < nodeSize3D then
    AI.BuildGraph(0, nodeSize3D, nodeSize3D, nodeSize3D)
  end
  if 0 < nodeSize2D then
    AI.BuildGraph2D(0, nodeSize2D, nodeSize2D, nodeSize2D)
  end
  TSCLOAD_End("Init")
end

function init.initMainMenu()
  PlayerBelmontProps = {}
  Game.PreloadLibrary("Scripts/Chars/Props/Player/PlayerBelmontProps.lua", "PlayerBelmontProps", false)
  Game.PreloadLibrary("Scripts/QuickConsole.lua", "QuickConsole")
  Game.PreloadLibrary("Scripts/Sound/SoundUtils.lua", "SoundUtils")
  Game.PreloadLibrary("Scripts/Missions/SaveGame.lua", "SaveGame")
  Trials = {}
  Game.PreloadLibrary("Scripts/Missions/Trials.lua", "Trials", false)
  Game.PreloadLibrary("Scripts/Missions/Cheats.lua", "Cheats")
  Game.PreloadLibrary("Scripts/Missions/DisplayCombat.lua", "DisplayCombat")
  Game.PreloadLibrary("Scripts/Missions/Artwork.lua", "Artwork")
  Game.PreloadLibrary("Scripts/Missions/Tips.lua", "Tips")
  Game.PreloadLibrary("Scripts/Missions/Camera.lua", "Camera")
  Game.PreloadLibrary("Scripts/Missions/Scene.lua", "Scene")
  Game.PreloadLibrary("Scripts/Missions/MissionUtils.lua", "MissionUtils")
  Game.PreloadLibrary("Scripts/Menu/Menu.lua", "Menu")
  Game.PreloadLibrary("Scripts/Menu/ScorerSprites.lua", "ScorerSprites")
  Game.PreloadLibrary("Scripts/Menu/WorldMap.lua", "WorldMap")
  Game.PreloadLibrary("Scripts/Menu/TravelBook.lua", "TravelBook")
  Game.PreloadLibrary("Scripts/Menu/TravelBookItems.lua", "TravelBookItems", false)
  Game.PreloadLibrary("Scripts/FX/Effects.lua", "Effects")
  Game.PreloadLibrary("Scripts/Physics/PhysicsCfg.lua", "PhysicsCfg")
  Game.PreloadLibrary("Scripts/Physics/PhysicsObj.lua", "PhysicsObj")
  Game.PreloadLibrary(init.GetLevelScriptsPath() .. "Scripts/MapPhysicObjects.lua", "MapPhysicObjects")
  Game.PreloadLibrary(init.GetLevelScriptsPath() .. "Scripts/MapStaticSound.lua", "MapStaticSound")
end

init.GameSkill = Game.GVar("GameSkill")
init.PreloadMethods = {}

function init.initGame()
  LevelProperties = {}
  SectorPresets = {}
  EnviromentSettings = {}
  CommonAIBehav = {}
  InitLoad = {}
  Game.PreloadLibrary("Scripts/InitLoad.lua", "InitLoad", false)
  for i = 1, #InitLoad.Game do
    local a = InitLoad.Game[i]
    Game.PreloadLibrary(a[2], a[1], a[3])
    if Game.GetLoadAborted() then
      return
    end
  end
  Game.Set("PlayingDLC", SaveGame.CheckIfMapIsDLC(init.level_name))
  local platform = Game.Get("Platform")
  if Game.Get("RetailType") ~= 0 then
    Game.PreloadLibrary("Scripts/Debug/DebugTrack.lua", "DebugTrack")
  end
  if Game.GetLoadAborted() then
    return
  end
  AIGen.Init()
  if Game.GetLoadAborted() then
    return
  end
  init.Enemies = {}
  if Game.GetLoadAborted() then
    return
  end
  init.EnemiesConfig = {
    AnimArmour = {true},
    BlackKnight = {true},
    Chupacabra = {true},
    Claudia = {false},
    CreepingCoffin = {true},
    CreepingCorpse = {true},
    CrowA = {true},
    CrowB = {true},
    CrowE = {true},
    CrowF = {true},
    Darklord1 = {true},
    Darklord1L = {true},
    Darklord2 = {true},
    Darklord2V = {true},
    Dracolich = {false},
    EliteVampA = {true},
    EliteVampB = {true},
    Fairy = {true},
    Feto = {false},
    GHorse = {false},
    Ghoul = {true},
    GhoulDLC = {true},
    Goblin = {true},
    GraveDigger = {true},
    Gremlin = {true},
    IceElemental = {true},
    LycanthropeGreater = {true},
    LycanthropeLesser = {true},
    Mandrake = {true},
    Marie = {false},
    MechanicalM = {true},
    Ogre = {true},
    RagDoll = {true},
    Reaper = {true},
    Scarecrow = {true},
    SilverWarrior = {true},
    SpiderGiant = {true},
    StoneIdol = {true},
    SwampThing = {true},
    SwordMaster = {true},
    TrollBig = {true},
    TrollBigSwamp = {true},
    TrollSmall = {true},
    VampireWarrior = {true},
    Villager01 = {true},
    Villager02 = {true},
    Villager03 = {true},
    WargGreat = {true},
    Warthog = {true},
    Witch = {true},
    WitchChild = {true},
    Zobek = {true},
    Zombie = {true},
    Butcher = {true},
    Heads = {true},
    Necromancer = {true},
    FloatingHeads = {true},
    Satan = {true},
    BatC = {true},
    Rat = {true},
    Sapo = {true},
    Partridge = {true},
    Sparrow = {true},
    SparrowB = {true},
    SkeletonWarrior = {true},
    SkeletonFlame = {true},
    Laura = {true},
    Legion = {true}
  }
  init.Team = {"Belmont"}
  Map = {}
  Game.PreloadLibrary(init.LevelFile .. "/Scripts/Map.lua", "Map", false)
  LevelProperties.main()
  LevelProperties.Load("PreCharacters")
  TSCLOAD_Begin("SectorPresets")
  SectorPresets.main()
  TSCLOAD_End("SectorPresets")
  TSCLOAD_Begin("EnviromentSettings")
  EnviromentSettings.main()
  TSCLOAD_End("EnviromentSettings")
  local bLoadFairy = true
  table.sort(init.Enemies)
  for i = 1, #init.Enemies do
    if Game.GetLoadAborted() then
      return
    end
    local enemin = init.Enemies[i]
    if enemin == "Fairy" then
      bLoadFairy = false
    end
    local cosobar = init.EnemiesConfig[enemin]
    Game.ConsoleError(enemin .. "\n")
    init.LoadChar(enemin, cosobar[1])
  end
  if bLoadFairy then
    init.LoadChar("Fairy", true)
  end
  table.sort(init.Team)
  if init.DefaultSoldier == nil then
    for i = 1, #init.Team do
      if Game.GetLoadAborted() then
        return
      end
      init.LoadChar(init.Team[i], true)
    end
  elseif init.DefaultSoldier ~= "Soldier" then
    init.LoadChar(init.DefaultSoldier, true)
  end
  CommonAIBehav.main()
  AI.IniGraphAI(init.LevelFile, 0)
  NPC.PreloadBoomPieces(init.Enemies)
  if Game.GetLoadAborted() then
    return
  end
  TSCLOAD_Begin("Map")
  Map.main()
  TSCLOAD_End("Map")
  if Game.GetLoadAborted() then
    return
  end
  TSCLOAD_Begin("Precalc")
  Game.PreloadLibrary("Scripts/Precalc.lua", "Precalc")
  TSCLOAD_End("Precalc")
  if Game.GetLoadAborted() then
    return
  end
  if SoundUtils then
    SoundUtils.SetupSoundData()
  end
  Effects.MapLoaded()
  local pos = V3D(-5225, -530, 879)
  Team.CreateTeam()
  LevelProperties.Load("PostCharacters")
  LevelProperties.Load()
  CollectableItems.SetUpData()
  if Game.GetLoadAborted() then
    return
  end
  if Game.GetLoadAborted() then
    return
  end
  Effects.CharsLoaded()
  TSCLOAD_Begin("LoadScenes")
  Scene.LoadScenes()
  TSCLOAD_End("LoadScenes")
  Map.Init()
  Game.Set("DrawNextFrame", 0)
  Input.Bind(0, "Walk", "ToolsMenu", "init.ToolsMenu")
  if Game.Get("toolmode") ~= 0 then
    Game.PreloadLibrary("Scripts/Editor/EditorIni.lua", "EditorIni")
  end
  SaveGame.InitLocalEntityValues()
  SaveGame.InitPlayerStatus()
  Team.CheckInitSectors()
  if Game.Get("RetailType") ~= 0 then
    Game.PreloadLibrary("Scripts/Editor/EditorInterface.lua", "EditorInterface")
  end
  init.CleanUselessLua()
  Menu.AfterLoadGame()
end

function init.ToolsMenu()
  if QuickConsole == nil then
    Game.PreloadLibrary("Scripts/QuickConsole.lua", "QuickConsole")
  end
  QuickConsole.ToolsMenu()
end

function init.InitGVars()
  Sound.StopMusic()
  Game.Set("FPSFlashLightTimeOn", 0)
  Game.Set("SoundDopplerLevel", 1)
  if 0 >= Game.Get("PhysXSpeed") then
    Game.Set("PhysXSpeed", Game.Def("PhysXSpeed"))
  end
  Game.Set("PlayingDLC", false)
end

init.MapLibsExec = {}
init.MapLibsExecTSC = {}

function init.GetLevelScriptsPath()
  if Game.Get("toolmode") ~= 0 then
    return Game.Get("LevelScriptsPrePath") .. Game.GetLevelPath() .. "/" .. Game.Get("LevelScriptsPostPath")
  else
    return Game.GetLevelPath() .. "/"
  end
end

MapPhysicObjects = {
  preload = function()
  end
}

function init.PreloadMapLib(Name)
  TSCLOAD_Begin(Name)
  if init.PreloadMethods[Name] and Game.Get("ToolMode") == 0 then
    local i = #init.MapLibsExec + 1
    init.MapLibsExec[i] = init.PreloadMethods[Name]
    init.MapLibsExecTSC[i] = Name
  else
    _G[Name] = {}
    Game.PreloadLibrary(init.GetLevelScriptsPath() .. "Scripts/" .. Name .. ".lua", Name, false)
    local i = #init.MapLibsExec + 1
    init.MapLibsExec[i] = _G[Name].main
    init.MapLibsExecTSC[i] = Name
  end
  TSCLOAD_End(Name)
end

function init.ExecMapLibs()
  for i = 1, #init.MapLibsExec do
    local tscload_Name = init.MapLibsExecTSC[i]
    TSCLOAD_Begin(tscload_Name)
    init.MapLibsExec[i]()
    TSCLOAD_End(tscload_Name)
  end
end

function init.CleanUselessLua()
  if Game.Get("ToolMode") == 0 then
    init.MapLibsExec = nil
    MapSectorPresets = nil
    MapPrecalc = nil
    MapCamera = nil
    MapEnviromentSettings = nil
    MapAreaTriggers = nil
    MapStaticSound = nil
    MapPhysicObjects = nil
    MapPhysicDoor = nil
    MapPhysicLego = nil
    MapPhysicAtrezzo = nil
    MapPhysicLogic = nil
    MapPhysicLight = nil
    MapPhysicParapet = nil
    MapPhysicParticles = nil
    MapPhysicScene = nil
    MapPhysicSmartObject = nil
  end
end

init.SFCounter = 0

function init.addMapSF(time)
  local nameOfFunc = "Sched" .. init.SFCounter
  init.SFCounter = init.SFCounter + 1
  Game.AddScheduledFunc(Game.GetTime() + time, nameOfFunc, "init." .. nameOfFunc, nameOfFunc)
  return nameOfFunc
end

Game.Set("ScorerBossName", "")
Game.Set("ScorerBossInvulnerable", 0)
Game.Set("ScorerBossMaxLife", 0)
Game.Set("ScorerBossLife", 0)
Game.Set("ListenerAllwaysInCam", 0)
Game.Set("ScorerTotalKeys", 0)
Game.Set("ScorerKeys", 0)
Game.Set("ScorerUsedKeys", 0)
Game.Set("ScorerTotalAKeys", 0)
Game.Set("ScorerAKeys", 0)
Game.Set("ScorerUsedAKeys", 0)
Game.Set("ScorerTotalBKeys", 0)
Game.Set("ScorerBKeys", 0)
Game.Set("ScorerUsedBKeys", 0)
Game.Set("ScorerTotalCKeys", 0)
Game.Set("ScorerCKeys", 0)
Game.Set("ScorerUsedCKeys", 0)
Game.Set("ScorerTotalButcherKeys", 0)
Game.Set("ScorerButcherKeys", 0)
Game.Set("ScorerUsedButcherKeys", 0)
Game.Set("ScorerTotalTitanKeys", 0)
Game.Set("ScorerTitanKeys", 0)
Game.Set("ScorerUsedTitanKeys", 0)
Game.Set("ScorerTotalKeyClocks", 0)
Game.Set("ScorerKeyClocks", 0)
Game.Set("ScorerUsedKeyClocks", 0)
Game.Set("ScorerTotalRubikOrbes", 0)
Game.Set("ScorerRubikOrbes", 0)
Game.Set("ScorerUsedRubikOrbes", 0)
Game.Set("RedGemTaken", false)
Game.Set("GreenGemTaken", false)
Game.Set("BlueGemTaken", false)
Game.Set("RedCylTaken", false)
Game.Set("GreenCylTaken", false)
Game.Set("BlueCylTaken", false)
Game.Set("YellowCylTaken", false)
Game.Set("MagentaCylTaken", false)
Game.Set("ScorerLightBlinking", false)
Game.Set("VideoRender", 0)
Game.Set("PlayVideoPause", 0)
Game.Set("OnRenderDebug", "")
Game.Set("SelectedAngleSpeed", 2)
Game.Set("ActualTakString", "")
Game.Set("WorldTimerSpeed", 1)
Game.Set("LBS_GemType", 0)
Game.Set("LBS_NumGems", 0)
Game.Set("LBS_GemsPhase", 0)
Game.Set("LBS_GemGlowTimer", 3)
Game.Set("MsgBlinkTime", 10)
Game.Set("MsgBlinkSound", "Fanfare_03")
Game.Set("MsgBlinkVolume", 0.5)
Game.Set("DrawKeyFairies", false)
Game.Set("CrystalHUDDrawn", false)
Game.Set("S_PauseMusicVolume", Game.Def("S_PauseMusicVolume"))
Game.Set("ForceShowSaveIcon", false)
