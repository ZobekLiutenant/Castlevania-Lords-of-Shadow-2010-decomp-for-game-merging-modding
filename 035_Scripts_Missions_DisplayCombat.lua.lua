function DisplayCombat.Preload()
end

function DisplayCombat.CreateTables()
  DisplayCombat.DefinitionTable = {
    {
      langstr("Menu_DisplayCombat_Experience"),
      "gvExperienceD",
      DisplayCombat.SetExperience
    },
    {
      langstr("Menu_DisplayCombat_EnemiesLife"),
      "gvEnemiesLifeD",
      DisplayCombat.SetEnemiesLife
    },
    {
      langstr("Menu_DisplayCombat_BelmontLife"),
      "gvBelmontLifeD",
      DisplayCombat.SetBelmontLife
    },
    {
      langstr("Menu_DisplayCombat_BelmontHits"),
      "gvBelmontHitsD",
      DisplayCombat.SetBelmontHits
    },
    {
      langstr("Menu_DisplayCombat_BelmontRecover"),
      "gvBelmontRecover",
      DisplayCombat.SetBelmontRecover
    },
    {
      langstr("Menu_DisplayCombat_BelmontFocus"),
      "gvBelmontFocus",
      DisplayCombat.SetBelmontFocus
    }
  }
  if string.find(Game.Get("VisitedLevels"), "2_3_underground_cave") == nil then
    DisplayCombat.DefinitionTable[6] = nil
  end
end

function DisplayCombat.main()
  DisplayCombat.CreateTables()
end

function DisplayCombat.SetExperience(set)
  if set then
    Game.ConsoleError("PONIENDO LA EXPERIENCIA GANADA\n")
  else
    Game.ConsoleError("QUITANDO LA EXPERIENCIA GANADA\n")
  end
end

function DisplayCombat.SetEnemiesLife(set)
  if set then
    Game.ConsoleError("PONIENDO LA VIDA DE LOS ENEMIGOS\n")
  else
    Game.ConsoleError("QUITANDO LA VIDA DE LOS ENEMIGOS\n")
  end
end

function DisplayCombat.SetBelmontLife(set)
  if set then
    Game.ConsoleError("PONIENDO LA VIDA DE BELMONT\n")
  else
    Game.ConsoleError("QUITANDO LA VIDA DE BELMONT\n")
  end
end

function DisplayCombat.SetBelmontHits(set)
  if set then
    Game.ConsoleError("PONIENDO LOS GOLPES DE BELMONT\n")
  else
    Game.ConsoleError("QUITANDO LOS GOLPES DE BELMONT\n")
  end
end

function DisplayCombat.SetBelmontRecover(set)
  if set then
    Game.ConsoleError("PONIENDO RECUPERACION DE BELMONT\n")
  else
    Game.ConsoleError("QUITANDO RECUPERACION DE BELMONT\n")
  end
end

function DisplayCombat.SetBelmontFocus(set)
  if set then
    Game.ConsoleError("PONIENDO FOCUS DE BELMONT\n")
  else
    Game.ConsoleError("QUITANDO FOCUS DE BELMONT\n")
  end
end

DisplayCombat.DefinitionTable = {
  {
    langstr("Menu_DisplayCombat_Experience"),
    "gvExperienceD",
    DisplayCombat.SetExperience
  },
  {
    langstr("Menu_DisplayCombat_EnemiesLife"),
    "gvEnemiesLifeD",
    DisplayCombat.SetEnemiesLife
  },
  {
    langstr("Menu_DisplayCombat_BelmontLife"),
    "gvBelmontLifeD",
    DisplayCombat.SetBelmontLife
  },
  {
    langstr("Menu_DisplayCombat_BelmontHits"),
    "gvBelmontHitsD",
    DisplayCombat.SetBelmontHits
  },
  {
    langstr("Menu_DisplayCombat_BelmontRecover"),
    "gvBelmontRecover",
    DisplayCombat.SetBelmontRecover
  },
  {
    langstr("Menu_DisplayCombat_BelmontFocus"),
    "gvBelmontFocus",
    DisplayCombat.SetBelmontFocus
  }
}

function DisplayCombat.GetBookMenuTable()
  local ret = {}
  DisplayCombat.CreateTables()
  for i, data in pairs(DisplayCombat.DefinitionTable) do
    local text = data[1]
    if Game.Get(data[2]) then
      text = text .. ": " .. langstr("Menu_Cheats_On")
    else
      text = text .. ": " .. langstr("Menu_Cheats_Off")
    end
    table.insert(ret, text)
  end
  return ret
end

function DisplayCombat.MenuChangeCheat(id, controlName)
  local control = Scorer.GetItem(0, controlName)
  local definition = control.uData.Definition
  local DisplayCombatGVar = Game.GVar(definition[2])
  if DisplayCombatGVar.Value then
    DisplayCombatGVar.Value = false
    control.Text = definition[1] .. ": " .. langstr("Menu_Cheats_Off")
  else
    DisplayCombatGVar.Value = true
    control.Text = definition[1] .. ": " .. langstr("Menu_Cheats_On")
  end
  Menu.CenterItem(control)
end

function DisplayCombat.SetupRightMenuItems(rightMenuItems)
  for index, rightMenuItem in pairs(rightMenuItems) do
    if #DisplayCombat.DefinitionTable > 5 then
      rightMenuItem.Pos = rightMenuItem.Pos - V2D(0, 20)
      rightMenuItem.uData.OriginalPosition = rightMenuItem.uData.OriginalPosition - V2D(0, 20)
    end
    rightMenuItem.OnAccept = "DisplayCombat.MenuChangeCheat"
    rightMenuItem.onLeft = "DisplayCombat.MenuChangeCheat"
    rightMenuItem.onRight = "DisplayCombat.MenuChangeCheat"
    rightMenuItem.uData.Definition = DisplayCombat.DefinitionTable[index]
  end
end

DisplayCombat.PastValues = {
  gvExperienceD = false,
  gvEnemiesLifeD = false,
  gvBelmontLifeD = false,
  gvBelmontHitsD = false
}

function DisplayCombat.Initialize()
  for i, data in pairs(DisplayCombat.DefinitionTable) do
    if data[3] then
      local DisplayCombatGVar = Game.GVar(data[2])
      if DisplayCombat.PastValues[data[2]] ~= DisplayCombatGVar.Value then
        data[3](DisplayCombatGVar.Value)
        DisplayCombat.PastValues[data[2]] = DisplayCombatGVar.Value
      end
    end
  end
end
