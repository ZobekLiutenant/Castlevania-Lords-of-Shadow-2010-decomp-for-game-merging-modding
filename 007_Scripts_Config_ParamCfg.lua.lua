ParamCfg.Sets = {}

function ParamCfg.main()
  local ConfigPath = Game.Get("PathScriptConfig")
  Game.PreloadLibrary(ConfigPath .. "ParamEditor/ParamTemp.lua", "ParamTemp")
  Game.PreloadLibrary(ConfigPath .. "ParamEditor/ParamGabriel.lua", "ParamGabriel")
  Game.PreloadLibrary(ConfigPath .. "ParamEditor/ParamWitch.lua", "ParamWitch")
end

function ParamCfg.GetEditableValue(SetName, ValueName)
  local ret
  if not ParamCfg.Sets[SetName] then
    Game.ConsoleError("Editable value Set not found!!!! -> " .. SetName .. "\n")
    return nil
  end
  for i = 1, #ParamCfg.Sets[SetName] do
    if ParamCfg.Sets[SetName][i] and ParamCfg.Sets[SetName][i][1] == ValueName then
      ret = ParamCfg.Sets[SetName][i][4]
    end
  end
  if ret then
    return ret
  else
    Game.ConsoleError("Editable value not found!!!! -> " .. SetName .. "," .. ValueName .. "\n")
    return nil
  end
end

function GetParam(setName, valueName)
  return ParamCfg.GetEditableValue(setName, valueName)
end
