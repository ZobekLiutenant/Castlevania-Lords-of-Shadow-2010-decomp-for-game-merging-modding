CommonAIBehav = {}
CommonAIBehav.Table = {
  CrazyByBlockBlindnessTime = {
    5,
    V3D(0, 30, 1)
  },
  CrazyByJumpBlindnessTime = {
    5,
    V3D(0, 30, 1)
  },
  TimeToSetCrazyByFairy = {
    0,
    V3D(0, 30, 1)
  },
  TimeCrazyByFairy = {
    0,
    V3D(0, 30, 1)
  },
  CheckPlayerJumpTime = {
    10,
    V3D(1, 50, 1)
  },
  PlayerJumpRatioToAttack = {
    50,
    V3D(1, 100, 1)
  },
  MinTimeBetweenAirAttacks = {
    5,
    V3D(1, 20, 1)
  }
}

function CommonAIBehav.main()
  local path = Game.Get("PathScriptConfig") .. "AIBehavParamsEditor/CommonAIBehavParams.lua"
  if Game.FileExist(path) then
    Game.PreloadLibrary(path, "CommonAIBehavParams", false)
  else
    Game.ConsoleError("Creating default CommonAIBehavParams.lua\n")
    CommonAIBehav.Save()
    Game.PreloadLibrary(path, "CommonAIBehavParams", false)
  end
  for i = 1, #init.Enemies do
    local enemyName = init.Enemies[i]
    for propName in pairs(CommonAIBehav.Table) do
      local propValue = CommonAIBehav.Table[propName][1]
      if CommonAIBehavParams and CommonAIBehavParams.Table[enemyName] and CommonAIBehavParams.Table[enemyName][propName] then
        propValue = CommonAIBehavParams.Table[enemyName][propName]
      end
      if AISpec.IsBehavParamDefined(enemyName, propName) then
        propValue = AISpec.GetBehavParamValue(enemyName, propName)
        CommonAIBehavParams.Table[enemyName][propName] = propValue
        Game.ConsoleError("ATENCION!! Sobreescribiendo valor de IA " .. propName .. " de " .. enemyName .. " con un valor existente anteriormente\n")
      end
      local minMaxStep = CommonAIBehav.Table[propName][2]
      AISpec.SetBehavParamValue(enemyName, propName, propValue, minMaxStep.x, minMaxStep.y)
    end
  end
end

function CommonAIBehav.IsPropertyInTable(propName)
  for tablePropName in pairs(CommonAIBehav.Table) do
    if tablePropName == propName then
      return true
    end
  end
  return false
end

function CommonAIBehav.Save()
  if Game.CreateOutFile(Game.Get("PathScriptConfig") .. "AIBehavParamsEditor/CommonAIBehavParams.lua") then
    Game.OutFile([[
-- Tool generated file (c) Mercury Steam Entertainment

]])
    Game.OutFile([[
CommonAIBehavParams = {}

]])
    Game.OutFile("CommonAIBehavParams.Table = {\n")
    for enemyName in pairs(init.EnemiesConfig) do
      if init.EnemiesConfig[enemyName][1] then
        Game.OutFile("\t['" .. enemyName .. "'] = {\n")
        local globalTableEntry = CommonAIBehav.Table
        local tableEntry
        if CommonAIBehavParams and CommonAIBehavParams.Table then
          tableEntry = CommonAIBehavParams.Table[enemyName]
        end
        for propName in pairs(CommonAIBehav.Table) do
          local value = globalTableEntry[propName][1]
          if tableEntry and tableEntry[propName] then
            value = tableEntry[propName]
          end
          Game.OutFile("\t\t['" .. propName .. "'] = " .. value .. ",\n")
        end
        Game.OutFile("\t},\n")
      end
    end
    Game.OutFile("}\n")
    Game.CloseFile()
    Game.ConsoleError("CommonAIBehav susccesfully saved!!\n")
  else
    Game.ConsoleError("WARNING: CommonAIBehav could not be saved!!\n")
  end
end
