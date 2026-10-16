EnviromentSettings = {}
EnviromentSettings.Properties = {
  {
    "RT_HDRBrightPassThreshold",
    "EP_FLOAT",
    0.7,
    V3D(0, 2, 0.02)
  },
  {
    "RT_HDRBrightPassOffset",
    "EP_FLOAT",
    3,
    V3D(0, 10, 0.1)
  },
  {
    "RT_DOFValue",
    "EP_FLOAT",
    0,
    V3D(0, 10, 0.05)
  },
  {
    "RT_DOFNearDist",
    "EP_FLOAT",
    0,
    V3D(0, 10000, 10)
  },
  {
    "RT_DOFNearRange",
    "EP_FLOAT",
    0,
    V3D(0, 10000, 5)
  },
  {
    "RT_DOFFarDist",
    "EP_FLOAT",
    5000,
    V3D(0, 500000, 100)
  },
  {
    "RT_DOFFarRange",
    "EP_FLOAT",
    500,
    V3D(0, 100000, 50)
  },
  {
    "RT_VFogValue",
    "EP_FLOAT",
    0.5,
    V3D(0, 10, 0.05)
  },
  {
    "RT_VFogDistance",
    "EP_FLOAT",
    200,
    V3D(0, 500000, 100)
  },
  {
    "RT_VFogRange",
    "EP_FLOAT",
    3350,
    V3D(0, 100000, 50)
  },
  {
    "RT_VFogHorizon",
    "EP_FLOAT",
    -12000,
    V3D(-500000, 500000, 250)
  },
  {
    "RT_VFogHorizonColor",
    "EP_COLOR",
    V4D(0.81, 0.83, 1, 0),
    V3D(0, 0, 0)
  },
  {
    "RT_VFogColor",
    "EP_COLOR",
    V4D(1, 1, 1, 0),
    V3D(0, 0, 0)
  },
  {
    "RT_VFogOffset",
    "EP_FLOAT",
    0.3,
    V3D(-3, 3, 0.02)
  },
  {
    "RT_GodRaysValue",
    "EP_FLOAT",
    1,
    V3D(0, 4, 0.05)
  },
  {
    "RT_HDRLevelsColorShift",
    "EP_COLOR",
    V4D(1, 1, 1, 0),
    V3D(0, 1, 0.025)
  },
  {
    "RT_HDRLevelsContrast",
    "EP_FLOAT",
    1,
    V3D(0, 2, 0.02)
  },
  {
    "R_SkyLightMult",
    "EP_FLOAT",
    1,
    V3D(0, 10, 0.02)
  },
  {
    "FXAmbientBirthRate",
    "EP_FLOAT",
    1,
    V3D(0, 2, 0.02)
  }
}

function EnviromentSettings.main()
  EnviromentSettings.load()
end

function EnviromentSettings.load()
  if Game.FileExist(init.LevelFile .. "/Scripts/MapEnviromentSettings.lua") then
    Game.PreloadLibrary(init.LevelFile .. "/Scripts/MapEnviromentSettings.lua", "EnviromentSettings", false)
  end
  if Game.FileExist(init.LevelFile .. "/Scripts/MapSceneEnviromentSettings.lua") then
    Game.PreloadLibrary(init.LevelFile .. "/Scripts/MapSceneEnviromentSettings.lua", "MapSceneEnviromentSettings", false)
  end
  if MapEnviromentSettings ~= nil then
    for k, v in pairs(MapEnviromentSettings.Presets) do
      local newPreset = EnviromentSettings.CreatePreset(k, false)
      for j = 1, #MapEnviromentSettings.Presets[k] do
        if MapEnviromentSettings.Presets[k][j][2] == "EP_COLOR" then
          newPreset:ModifyProperty(MapEnviromentSettings.Presets[k][j][1], MapEnviromentSettings.Presets[k][j][2], MapEnviromentSettings.Presets[k][j][3].x, MapEnviromentSettings.Presets[k][j][3].y, MapEnviromentSettings.Presets[k][j][3].z, MapEnviromentSettings.Presets[k][j][3].w)
        else
          newPreset:ModifyProperty(MapEnviromentSettings.Presets[k][j][1], MapEnviromentSettings.Presets[k][j][2], MapEnviromentSettings.Presets[k][j][3])
        end
        if MapEnviromentSettings.Presets[k][j][4] ~= nil then
          newPreset:SetSynchToProperty(MapEnviromentSettings.Presets[k][j][1], MapEnviromentSettings.Presets[k][j][4])
        end
        if k == "default" then
          newPreset:SetSynchToProperty(MapEnviromentSettings.Presets[k][j][1], 0)
        end
      end
    end
  else
    EnviromentSettings.CreatePreset("default", false)
  end
  if MapSceneEnviromentSettings ~= nil then
    for k, v in pairs(MapSceneEnviromentSettings.Presets) do
      local newPreset = EnviromentSettings.CreatePreset(k, true)
      for j = 1, #MapSceneEnviromentSettings.Presets[k] do
        if MapSceneEnviromentSettings.Presets[k][j][2] == "EP_COLOR" then
          newPreset:ModifyProperty(MapSceneEnviromentSettings.Presets[k][j][1], MapSceneEnviromentSettings.Presets[k][j][2], MapSceneEnviromentSettings.Presets[k][j][3].x, MapSceneEnviromentSettings.Presets[k][j][3].y, MapSceneEnviromentSettings.Presets[k][j][3].z, MapSceneEnviromentSettings.Presets[k][j][3].w)
        else
          newPreset:ModifyProperty(MapSceneEnviromentSettings.Presets[k][j][1], MapSceneEnviromentSettings.Presets[k][j][2], MapSceneEnviromentSettings.Presets[k][j][3])
        end
        if MapSceneEnviromentSettings.Presets[k][j][4] ~= nil then
          newPreset:SetSynchToProperty(MapSceneEnviromentSettings.Presets[k][j][1], MapSceneEnviromentSettings.Presets[k][j][4])
        end
        if MapSceneEnviromentSettings.Presets[k][j][1] == "default" then
          newPreset:SetSynchToProperty(MapSceneEnviromentSettings.Presets[k][j][1], 0)
        end
      end
    end
  else
  end
  local presetCount = Game.GetEnviromentPresetCount()
  for i = 0, presetCount - 1 do
    preset = Game.GetEnviromentPreset(i)
    if preset.name ~= "default" then
      preset:SetMasterPreset("default")
    end
  end
  Game.InitializeEnviroment()
end

function EnviromentSettings.Save()
  if EditorUtils ~= nil then
    if not Game.CreateOutFile(Game.GetLevelPath() .. "/Scripts/MapEnviromentSettings.lua") then
      return false
    end
    Game.OutFile("-- Tool generated file (c) Mercury Steam Entertainment\n")
    Game.OutFile("MapEnviromentSettings = {}\n")
    Game.OutFile("MapEnviromentSettings.Presets = {}\n")
    Game.OutFile([[
MapEnviromentSettings.Presets= { -- Begin Data
    ]])
    local preset
    local presetCount = Game.GetEnviromentPresetCount()
    for i = 0, presetCount - 1 do
      preset = Game.GetEnviromentPreset(i)
      if not preset.ScenePreset or preset.name == "default" then
        Game.OutFile("\t[\"" .. preset.name .. "\"] =  {\n")
        local propertyCount = preset.PropertyCount
        local property
        for j = 0, propertyCount - 1 do
          property = preset:GetProperty(j)
          local synch = 0
          if property.bSynch == true then
            synch = 1
          end
          if property.type == "EP_COLOR" then
            Game.OutFile("\t\t{\"" .. property.name .. "\", \"" .. property.type .. "\", V4D(" .. property.value.x .. ", " .. property.value.y .. ", " .. property.value.z .. ", " .. property.value.w .. " ), " .. synch .. " },\n")
          else
            Game.OutFile("\t\t{\"" .. property.name .. "\", \"" .. property.type .. "\", " .. property.value .. ", " .. synch .. " },\n")
          end
        end
        Game.OutFile("\t},\n")
      end
    end
    Game.OutFile([[
} -- End Data

]])
    Game.CloseFile()
    if not Game.CreateOutFile(Game.GetLevelPath() .. "/Scripts/MapSceneEnviromentSettings.lua") then
      return false
    end
    Game.OutFile("-- Tool generated file (c) Mercury Steam Entertainment\n")
    Game.OutFile("MapSceneEnviromentSettings = {}\n")
    Game.OutFile("MapSceneEnviromentSettings.Presets = {}\n")
    Game.OutFile([[
MapSceneEnviromentSettings.Presets= { -- Begin Data
    ]])
    local preset
    local presetCount = Game.GetEnviromentPresetCount()
    for i = 0, presetCount - 1 do
      preset = Game.GetEnviromentPreset(i)
      if preset.ScenePreset then
        Game.OutFile("\t[\"" .. preset.name .. "\"] =  {\n")
        local propertyCount = preset.PropertyCount
        local property
        for j = 0, propertyCount - 1 do
          property = preset:GetProperty(j)
          local synch = 0
          if property.bSynch == true then
            synch = 1
          end
          if property.type == "EP_COLOR" then
            Game.OutFile("\t\t{\"" .. property.name .. "\", \"" .. property.type .. "\", V4D(" .. property.value.x .. ", " .. property.value.y .. ", " .. property.value.z .. ", " .. property.value.w .. " ), " .. synch .. " },\n")
          else
            Game.OutFile("\t\t{\"" .. property.name .. "\", \"" .. property.type .. "\", " .. property.value .. ", " .. synch .. " },\n")
          end
        end
        Game.OutFile("\t},\n")
      end
    end
    Game.OutFile([[
} -- End Data

]])
    Game.CloseFile()
  end
end

function EnviromentSettings.CreatePreset(name, scene)
  local masterPreset = Game.CreateEnviromentPreset(name, scene)
  for i = 1, #EnviromentSettings.Properties do
    if EnviromentSettings.Properties[i][2] == "EP_COLOR" then
      masterPreset:AddProperty(EnviromentSettings.Properties[i][1], EnviromentSettings.Properties[i][2], EnviromentSettings.Properties[i][3].x, EnviromentSettings.Properties[i][3].y, EnviromentSettings.Properties[i][3].z, EnviromentSettings.Properties[i][3].w)
    else
      masterPreset:AddProperty(EnviromentSettings.Properties[i][1], EnviromentSettings.Properties[i][2], EnviromentSettings.Properties[i][3])
    end
    if name == "default" then
      Game.AddMinMaxStepValues(EnviromentSettings.Properties[i][1], EnviromentSettings.Properties[i][4])
      masterPreset:SetSynchToProperty(EnviromentSettings.Properties[i][1], 0)
    end
  end
  return masterPreset
end
