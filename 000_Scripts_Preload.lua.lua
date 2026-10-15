function Preload.PreloadLib(File, Name)
  if Game.GetLoadAborted() then
    return
  end
  if _G[Name] == nil then
    _G[Name] = {}
    Game.PreloadLibrary(File, Name, false)
  end
  if _G[Name].Preload then
    print(">> " .. Name .. ".Preload()")
    _G[Name].Preload()
    print("<< " .. Name .. ".Preload()")
  else
    print("Preload not found in " .. Name)
  end
end

function Preload.LuaPreload()
  InitLoad = {}
  init = {}
  Game.PreloadLibrary("Scripts/Init.lua", "init", false)
  Game.PreloadLibrary("Scripts/InitLoad.lua", "InitLoad", false)
  init = nil
  local L = {}
  for i = 1, #InitLoad.Game do
    local a = InitLoad.Game[i]
    if a[4] then
      Game.PreloadLibrary(a[2], a[1], a[3])
    else
      _G[a[1]] = {}
      Game.PreloadLibrary(a[2], a[1], false)
    end
    if Game.GetLoadAborted() then
      return
    end
  end
end

function Preload.main()
  Game.PreloadLibrary("Scripts/GenLib.lua", "GenLib", false)
  if Game.Get("Viewer") == 1 then
    return
  end
  print("Preload init")
  local lastgc = Game.Get("LuaGCLoadDivisor")
  Game.Set("LuaGCLoadDivisor", 0)
  
  function GetParam(v1, v2)
    return 1
  end
  
  Preload.LuaPreload()
  Preload.PreloadLib("Scripts/BookSetup.lua", "BookSetup")
  Preload.PreloadLib("Scripts/Missions/Cheats.lua", "Cheats")
  Preload.PreloadLib("Scripts/Missions/Artwork.lua", "Artwork")
  Preload.PreloadLib("Scripts/Missions/DisplayCombat.lua", "DisplayCombat")
  Preload.PreloadLib("Scripts/Menu/Menu.lua", "Menu")
  Preload.PreloadLib("Scripts/Sound/SoundUtils.lua", "SoundUtils")
  Preload.PreloadLib("Scripts/Sound/SoundPhysics.lua", "SoundPhysics")
  Preload.PreloadLib("Scripts/Chars/Combat/CombatLinks.lua", "CombatLinks")
  Preload.PreloadLib("Scripts/Chars/MakeChar.lua", "MakeChar")
  Preload.PreloadLib("Scripts/FX/Effects.lua", "Effects")
  Preload.PreloadLib("Scripts/FX/Damage.lua", "FXDamage")
  Preload.PreloadLib("Scripts/FX/Fire.lua", "Fire")
  Preload.PreloadLib("Scripts/Player/Hook.lua", "Hook")
  Preload.PreloadLib("Scripts/Player/PushPull.lua", "PushPull")
  Preload.PreloadLib("Scripts/Player/LightRay.lua", "LightRay")
  Preload.PreloadLib("Scripts/Weapons/WeaponsCombo.lua", "WeaponsCombo")
  Preload.PreloadLib("Scripts/Player/GabrielCombos.lua", "GabrielCombos")
  Preload.PreloadLib("Scripts/Chars/Fairy.lua", "Fairy")
  Preload.PreloadLib("Scripts/Chars/Belmont.lua", "Belmont")
  Preload.PreloadLib("Scripts/Weapons/Weapons.lua", "Weapons")
  Preload.PreloadLib("Scripts/Player/NeutralEnergy.lua", "NeutralEnergy")
  Preload.PreloadLib("Scripts/Player/CollectableItems.lua", "CollectableItems")
  Preload.PreloadLib("Scripts/Weapons/MiniGames.lua", "MiniGames")
  Preload.PreloadLib("Scripts/Chars/TracksCallBacks.lua", "TracksCallBacks")
  Preload.PreloadLib("Scripts/Missions/MissionUtils.lua", "MissionUtils")
  Preload.PreloadLib("Scripts/Missions/Trials.lua", "Trials")
  Preload.PreloadLib("Scripts/Missions/SaveGame.lua", "SaveGame")
  Preload.PreloadLib("Scripts/Player/Experience.lua", "Experience")
  Preload.PreloadLib("Scripts/Player/PickableItems.lua", "PickableItems")
  Game.PreloadLibrary("Scripts/ScorerPos.lua", "ScorerPos")
  Game.PreloadLibrary("Scripts/MaterialLegend.lua", "MaterialLegend")
  Game.Set("LuaGCLoadDivisor", lastgc)
  print("Preload end")
end
