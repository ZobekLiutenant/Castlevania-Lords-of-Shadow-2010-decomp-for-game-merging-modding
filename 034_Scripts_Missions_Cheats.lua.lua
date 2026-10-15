function Cheats.Preload()
  for i = 1, #Cheats.DefinitionTable do
    local v = Cheats.DefinitionTable[i]
    
    local gvar = Game.CreateGvar(v[2], "bool", "Cheat GVar.")
    gvar.Value = false
  end
  local gvar = Game.CreateGvar("AnyCheat", "bool", "Any cheat was used")
  gvar.Value = false
end

function Cheats.main()
end

function Cheats.GetBookMenuTable()
  local ret = {}
  for i, data in pairs(Cheats.DefinitionTable) do
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

function Cheats.MenuChangeCheat(id, controlName)
  local control = Scorer.GetItem(0, controlName)
  local definition = control.uData.Definition
  local CheatGVar = Game.GVar(definition[2])
  CheatGVar.Value = not CheatGVar.Value
  if CheatGVar.Value then
    control.Text = definition[1] .. ": " .. langstr("Menu_Cheats_On")
  else
    control.Text = definition[1] .. ": " .. langstr("Menu_Cheats_Off")
  end
  Menu.CenterItem(control)
end

function Cheats.SetupRightMenuItems(rightMenuItems)
  for index, rightMenuItem in pairs(rightMenuItems) do
    rightMenuItem.OnAccept = "Cheats.MenuChangeCheat"
    rightMenuItem.onLeft = "Cheats.MenuChangeCheat"
    rightMenuItem.onRight = "Cheats.MenuChangeCheat"
    rightMenuItem.uData.Definition = Cheats.DefinitionTable[index]
  end
end

Cheats.PastValues = {
  gvNoDamageMode = false,
  gvAllRelics = false,
  gvAllCombos = false,
  gvAllGems = false,
  gvAllUpgrades = false
}

function Cheats.Initialize()
  for i, data in pairs(Cheats.DefinitionTable) do
    if data[3] then
      local CheatGVar = Game.GVar(data[2])
      data[3](CheatGVar.Value)
      Cheats.PastValues[data[2]] = CheatGVar.Value
      if CheatGVar.Value then
        Game.Set("AnyCheat", true)
      end
      data.Locked = 1 < i and CheatGVar.Value
    end
  end
end

function Cheats.SetNoDamage(set)
  if not Weapons then
    return
  end
  if set then
    if not Weapons.OnePointDamage then
      Weapons.OnePointDamage = true
      Weapons.NoDamageLoop()
    end
  else
    Weapons.OnePointDamage = false
    delSF("Weapons.NoDamageLoop")
  end
end

function Cheats.SetAllRelics(set)
  if not player then
    return
  end
  if set then
    Cheats.GiveAllRelics()
  else
  end
end

function Cheats.SetAllCombos(set)
  if not Experience then
    return
  end
  if set then
    Cheats.GiveAllCombos()
  else
  end
end

function Cheats.SetAllGems(set)
  if not CollectableItems then
    return
  end
  if set then
    Cheats.GiveAllGems()
  else
  end
end

function Cheats.SetAllUpgrades(set)
  if not CollectableItems then
    return
  end
  if set then
    Cheats.GiveAllUpgrades()
  else
  end
end

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
Cheats.PreviousRelics = {}

function Cheats.GiveAllRelics()
  Cheats.PreviousRelics.SprintOnDoubleTap = player.oActCtrl.oActClass.SprintOnDoubleTap
  player.oActCtrl.oActClass.SprintOnDoubleTap = 1
  Cheats.PreviousRelics.DarkDashActive = DarkPower.DarkDashActive
  DarkPower.DarkDashActive = true
  Cheats.PreviousRelics.MultipleDaggers = Belmont.MultipleDaggers
  Belmont.MultipleDaggers = true
  Cheats.PreviousRelics.bWings = player.oActCtrl.oActClass.uData.bWings
  player.oActCtrl.oActClass.uData.bWings = true
  Cheats.PreviousRelics.bGauntlet = player.uData.bGauntlet
  player.uData.bGauntlet = true
  Cheats.PreviousRelics.DarkPowerOn = DarkPower.PowerOn.Value
  DarkPower.PowerOn.Value = true
  Cheats.PreviousRelics.LightPowerOn = LightPower.PowerOn.Value
  LightPower.PowerOn.Value = true
  Cheats.PreviousRelics.FairiesActive = Belmont.FairiesActive.Value
  Belmont.FairiesActive.Value = true
  Cheats.PreviousRelics.CrystalActive = Belmont.CrystalActive.Value
  Belmont.CrystalActive.Value = true
  Cheats.PreviousRelics.VialActive = Belmont.VialActive.Value
  Belmont.VialActive.Value = true
  Cheats.PreviousRelics.DaggersActive = Belmont.DaggersActive.Value
  Belmont.DaggersActive.Value = true
  Belmont.ChainModelInUse.Value = 4
  Cheats.PreviousRelics.RideTutorialPassed = Belmont.RideTutorialPassed.Value
  Belmont.RideTutorialPassed.Value = 4
  TravelBook.StakeAvailable = true
  if Game.Get("gvAllCombos") then
    Cheats.GiveAllCombos()
  end
end

function Cheats.UngiveAllRelics()
  if Cheats.PreviousRelics.SprintOnDoubleTap then
    player.oActCtrl.oActClass.SprintOnDoubleTap = Cheats.PreviousRelics.SprintOnDoubleTap
    DarkPower.DarkDashActive = Cheats.PreviousRelics.DarkDashActive
    Belmont.MultipleDaggers = Cheats.PreviousRelics.MultipleDaggers
    player.oActCtrl.oActClass.uData.bWings = Cheats.PreviousRelics.bWings
    player.uData.bGauntlet = Cheats.PreviousRelics.bGauntlet
    DarkPower.PowerOn.Value = Cheats.PreviousRelics.DarkPowerOn
    LightPower.PowerOn.Value = Cheats.PreviousRelics.LightPowerOn
    Belmont.FairiesActive.Value = Cheats.PreviousRelics.FairiesActive
    Belmont.CrystalActive.Value = Cheats.PreviousRelics.CrystalActive
    Belmont.VialActive.Value = Cheats.PreviousRelics.VialActive
    Belmont.DaggersActive.Value = Cheats.PreviousRelics.DaggersActive
    Belmont.RideTutorialPassed.Value = Cheats.PreviousRelics.RideTutorialPassed
    TravelBook.StakeAvailable = false
  end
end

function Cheats.AnyCheatActive()
  for i, data in pairs(Cheats.DefinitionTable) do
    if data[3] then
      local CheatGVar = Game.GVar(data[2])
      if CheatGVar.Value then
        return true
      end
    end
  end
  return Game.Get("AnyCheat")
end

function Cheats.DeActivateAll()
  for i, data in pairs(Cheats.DefinitionTable) do
    if data[3] then
      local CheatGVar = Game.GVar(data[2])
      CheatGVar.Value = false
    end
  end
end

Cheats.PreviousCombos = {}

function Cheats.GiveAllCombos()
  local pos = 1
  for i in pairs(Experience.CombatScrollActive) do
    if Experience.CombatScrollActive[i] == true then
      Cheats.PreviousCombos[pos] = i
      pos = pos + 1
    end
    Experience.CombatScrollActive[i] = true
  end
  Experience.RefreshCombatScrollStatus()
  if TBookTutorial and TBookTutorial.Show then
    TBookTutorial.CombosCheat = true
    TravelBook.IgnoreEnemyKills = false
    TravelBook.Show = TBookTutorial.Show
    TravelBook.ShowFirstPage = TBookTutorial.StandardShowFirstPage
  end
end

function Cheats.UngiveAllCombos()
  for i in pairs(Experience.CombatScrollActive) do
    Experience.CombatScrollActive[i] = false
  end
  if #Cheats.PreviousCombos > 1 then
    for i = 1, #Cheats.PreviousCombos do
      if Cheats.PreviousCombos[i] ~= "" then
        Experience.CombatScrollActive[Cheats.PreviousCombos[i]] = true
      end
    end
  end
end

function Cheats.GiveAllGems()
  Cheats.SaveActualGems()
  CollectableItems.GiveAllGems()
end

function Cheats.UngiveAllGems()
  Cheats.LoadPastGems()
end

function Cheats.SaveActualGems()
  Cheats.gvLifeGems = CollectableItems.gvLifeGems.Value
  Cheats.gvLightGems = CollectableItems.gvLightGems.Value
  Cheats.gvDarkGems = CollectableItems.gvDarkGems.Value
end

function Cheats.LoadPastGems()
  CollectableItems.gvLifeGems.Value = Cheats.gvLifeGems
  CollectableItems.gvLightGems.Value = Cheats.gvLightGems
  CollectableItems.gvDarkGems.Value = Cheats.gvDarkGems
  Game.Set("gvLifeGems", Cheats.gvLifeGems)
  Game.Set("gvLightGems", Cheats.gvLightGems)
  Game.Set("gvDarkGems", Cheats.gvDarkGems)
  CollectableItems.SetUpData()
end

function Cheats.GiveAllUpgrades()
  Cheats.SaveActualUpgrades()
  CollectableItems.GiveAllUpgrades()
  if MapTutorials then
    Game.Set("DaggersCanBeUsed", true)
  end
end

function Cheats.UngiveAllUpgrades()
  Cheats.LoadPastUpgrades()
end

function Cheats.SaveActualUpgrades()
  Cheats.gvVialUpgrades = CollectableItems.gvVialUpgrades.Value
  Cheats.gvDaggerUpgrades = CollectableItems.gvDaggerUpgrades.Value
  Cheats.gvFairyUpgrades = CollectableItems.gvFairyUpgrades.Value
end

function Cheats.LoadPastUpgrades()
  CollectableItems.gvVialUpgrades.Value = Cheats.gvVialUpgrades
  CollectableItems.gvDaggerUpgrades.Value = Cheats.gvDaggerUpgrades
  CollectableItems.gvFairyUpgrades.Value = Cheats.gvFairyUpgrades
  Game.Set("gvVialUpgrades", Cheats.gvVialUpgrades)
  Game.Set("gvDaggerUpgrades", Cheats.gvDaggerUpgrades)
  Game.Set("gvFairyUpgrades", Cheats.gvFairyUpgrades)
  CollectableItems.SetUpData()
end
