LevelProperties.Table = {
  LevelProperties = {
    {
      "SpeedBoots",
      "INT",
      1,
      {
        Increment = 1,
        MinValue = 0,
        MaxValue = 1
      },
      "Belmont",
      "SprintOnDoubleTap",
      "PostCharacters"
    },
    {
      "DarkDashActive",
      "BOOL",
      false,
      {},
      "",
      "DarkPower.DarkDashActive",
      "PostCharacters"
    },
    {
      "NumFairies",
      "INT",
      4,
      {
        Increment = 1,
        MinValue = 0,
        MaxValue = 100
      },
      "",
      "WeaponsFairy.Fairies.Value",
      "PostCharacters"
    },
    {
      "NumCrystalsPieces",
      "INT",
      2,
      {
        Increment = 1,
        MinValue = 0,
        MaxValue = 100
      },
      "",
      "WeaponsCrystal.CrystalPieces.Value",
      "PostCharacters"
    },
    {
      "NumChargeDagger",
      "INT",
      5,
      {
        Increment = 1,
        MinValue = 1,
        MaxValue = 5
      },
      "",
      "WeaponsCombo.NumChargeDagger",
      "PostCharacters"
    },
    {
      "MultipleDaggers",
      "BOOL",
      true,
      {},
      "",
      "Belmont.MultipleDaggers",
      "PostCharacters"
    },
    {
      "DarkPower",
      "FLOAT",
      2.5,
      {
        Increment = 0.25,
        MinValue = 0,
        MaxValue = 20
      },
      "",
      "DarkPower.Power.Value",
      "PostCharacters"
    },
    {
      "LightPower",
      "FLOAT",
      3.5,
      {
        Increment = 0.25,
        MinValue = 0,
        MaxValue = 20
      },
      "",
      "LightPower.Power.Value",
      "PostCharacters"
    },
    {
      "LightShoulders",
      "BOOL",
      true,
      {},
      "Belmont",
      "uData.bWings",
      "PostCharacters"
    },
    {
      "DarkGauntlet",
      "BOOL",
      true,
      {},
      "",
      "player.uData.bGauntlet",
      "PostCharacters"
    },
    {
      "DarkPowerOn",
      "BOOL",
      true,
      {},
      "",
      "DarkPower.PowerOn.Value",
      "PostCharacters"
    },
    {
      "LightPowerOn",
      "BOOL",
      true,
      {},
      "",
      "LightPower.PowerOn.Value",
      "PostCharacters"
    },
    {
      "FairiesActive",
      "BOOL",
      true,
      {},
      "",
      "Belmont.FairiesActive.Value",
      "PostCharacters"
    },
    {
      "CrystalActive",
      "BOOL",
      true,
      {},
      "",
      "Belmont.CrystalActive.Value",
      "PostCharacters"
    },
    {
      "VialActive",
      "BOOL",
      true,
      {},
      "",
      "Belmont.VialActive.Value",
      "PostCharacters"
    },
    {
      "DaggersActive",
      "BOOL",
      true,
      {},
      "",
      "Belmont.DaggersActive.Value",
      "PostCharacters"
    },
    {
      "ChainModelA",
      "BOOL",
      true,
      {},
      "",
      "Belmont.ChainModelA",
      "PostCharacters"
    },
    {
      "ChainModelB",
      "BOOL",
      false,
      {},
      "",
      "Belmont.ChainModelB",
      "PostCharacters"
    },
    {
      "ChainModelC",
      "BOOL",
      false,
      {},
      "",
      "Belmont.ChainModelC",
      "PostCharacters"
    },
    {
      "ChainModelInUse",
      "INT",
      1,
      {
        Increment = 1,
        MinValue = 1,
        MaxValue = 4
      },
      "",
      "Belmont.ChainModelInUse.Value",
      "PostCharacters"
    },
    {
      "RideTutorialPassed",
      "INT",
      4,
      {
        Increment = 1,
        MinValue = 0,
        MaxValue = 4
      },
      "",
      "Belmont.RideTutorialPassed.Value",
      "PostCharacters"
    }
  },
  SoundSettings = {
    {
      "Reverb Type",
      "INT",
      0,
      {
        Increment = 1,
        MinValue = 0,
        MaxValue = 26
      },
      "",
      "SoundUtils.ReverbType.Value",
      "SoundUtils"
    },
    {
      "Reverb Level",
      "FLOAT",
      0,
      {
        Increment = 0.1,
        MinValue = 0,
        MaxValue = 1
      },
      "",
      "SoundUtils.ReverbLevel.Value",
      "SoundUtils"
    }
  }
}
LevelProperties.EnemyLevels = {}

function LevelProperties.main()
  LevelProperties.LoadMapProperties()
  LevelProperties.Table.EnemyLevels = {}
  for i = 1, #init.Enemies do
    if EnemyLevels.Table[init.Enemies[i]] then
      table.insert(LevelProperties.Table.EnemyLevels, {
        init.Enemies[i],
        "INT",
        1,
        {
          Increment = 1,
          MinValue = 1,
          MaxValue = #EnemyLevels.Table[init.Enemies[i]]
        },
        "",
        "LevelProperties.EnemyLevels." .. init.Enemies[i],
        "PreCharacters"
      })
    end
  end
end

function LevelProperties.Load(moment)
  LevelProperties.LoadDefaultProperties(moment)
  LevelProperties.LoadProperties(moment)
end

function LevelProperties.LoadDefaultProperties(moment)
  if LevelProperties.Table then
    for name in pairs(LevelProperties.Table) do
      for i = 1, #LevelProperties.Table[name] do
        if LevelProperties.Table[name][i][7] == moment then
          local prop = LevelProperties.Table[name][i][1]
          local value = LevelProperties.Table[name][i][3]
          LevelProperties.SetValue(prop, value)
        end
      end
    end
  end
end

function LevelProperties.ExistProperty(property)
  if LevelProperties.Table then
    for name in pairs(LevelProperties.Table) do
      for i = 1, #LevelProperties.Table[name] do
        local prop = LevelProperties.Table[name][i][1]
        if property == prop then
          return true
        end
      end
    end
    return false
  end
end

function LevelProperties.LoadMapProperties()
  local LevelName = string.lower(Game.GetSaveVar("LevelName"))
  local FullFileName = init.GetLevelScriptsPath() .. "Scripts/MapProperties.lua"
  if Game.FileExist(FullFileName) then
    Game.PreloadLibrary(FullFileName, "MapProperties")
  else
    print(FullFileName .. " not found!")
  end
end

function LevelProperties.LoadProperties(moment)
  if MapProperties.Table then
    for name in pairs(MapProperties.Table) do
      for prop in pairs(MapProperties.Table[name]) do
        if LevelProperties.ExistProperty(prop) and LevelProperties.GetPropertyRow(prop)[7] == moment then
          LevelProperties.SetValue(prop, MapProperties.Table[name][prop], true)
        end
      end
    end
  end
end

function LevelProperties.GetValue(propName)
  local actClass = LevelProperties.GetPropertyRow(propName)[5]
  if string.len(actClass) > 0 then
    return LevelProperties.GetValueFromActClass(propName, actClass)
  end
  local propertyPath = LevelProperties.GetPropertyRow(propName)[6]
  local tokens = Game.Split(propertyPath, ".")
  local val = _G[tokens[1]]
  for i = 2, #tokens - 1 do
    val = val[tokens[i]]
  end
  return val[tokens[#tokens]]
end

function LevelProperties.SetSaveVars()
  if MapProperties.Table then
    for name in pairs(MapProperties.Table) do
      for prop in pairs(MapProperties.Table[name]) do
        if LevelProperties.ExistProperty(prop) then
          local snam = init.LevelName .. ".MapProperties." .. prop
          local value = LevelProperties.GetValue(prop)
          Game.SetSaveVar(snam, tostring(value))
        end
      end
    end
  end
end

function LevelProperties.SetValue(propName, value, SaveValue)
  if SaveValue then
    local snam = init.LevelName .. ".MapProperties." .. propName
    local typo = type(value)
    Game.CreateSaveVar(snam, tostring(value))
    if typo == "number" then
      value = tonumber(Game.GetSaveVar(snam))
    elseif typo == "string" then
      value = Game.GetSaveVar(snam)
    elseif typo == "boolean" then
      value = Game.GetSaveVar(snam) == "true"
    else
      Game.ConsoleError("==")
      Game.ConsoleError("== FATAL ERROR : ")
      Game.ConsoleError("== " .. propName .. " is an unknown type!")
      Game.ConsoleError("======================================")
    end
  end
  local actClass = LevelProperties.GetPropertyRow(propName)[5]
  if string.len(actClass) > 0 then
    LevelProperties.SetValueToActClass(propName, value, actClass)
    return
  end
  local propertyPath = LevelProperties.GetPropertyRow(propName)[6]
  local tokens = Game.Split(propertyPath, ".")
  local val = _G[tokens[1]]
  for i = 2, #tokens - 1 do
    val = val[tokens[i]]
  end
  val[tokens[#tokens]] = value
end

function LevelProperties.SetValueToActClass(propName, value, actClassName)
  local class = Act.GetClass(actClassName)
  local propertyRow = LevelProperties.GetPropertyRow(propName)
  local propertyPath = propertyRow[6]
  local tokens = Game.Split(propertyPath, ".")
  local val = class
  for i = 1, #tokens - 1 do
    val = val[tokens[i]]
  end
  val[tokens[#tokens]] = value
end

function LevelProperties.GetValueFromActClass(propName, actClassName)
  local class = Act.GetClass(actClassName)
  local propertyRow = LevelProperties.GetPropertyRow(propName)
  local propertyPath = propertyRow[6]
  local tokens = Game.Split(propertyPath, ".")
  local val = class
  for i = 1, #tokens - 1 do
    val = val[tokens[i]]
  end
  if val[tokens[#tokens]] ~= nil then
    return val[tokens[#tokens]]
  else
    return propertyRow[3]
  end
end

function LevelProperties.GetPropertyRow(propName)
  for name in pairs(LevelProperties.Table) do
    for i = 1, #LevelProperties.Table[name] do
      if LevelProperties.Table[name][i][1] == propName then
        return LevelProperties.Table[name][i]
      end
    end
  end
end
