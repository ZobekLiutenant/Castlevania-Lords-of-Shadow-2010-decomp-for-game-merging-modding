SectorPresets = {}

function SectorPresets.main()
  SectorPresets.load()
end

function SectorPresets.load()
  local fileName = Game.GetLevelPath() .. "/Scripts/Map"
  local st = Game.GetSingleTable()
  st.SourceFile = fileName .. "SectorPresets.lua," .. fileName .. "MapSceneSectorPresets.lua"
  st.TargetFile = fileName .. "SectorPresets.lbt"
  if st.bPrecompile or Game.Get("ToolMode") ~= 0 then
    SectorPresets.lua_load()
    if MapSceneSectorPresets then
      st:OpenFileOut()
      for k, v in pairs(MapSectorPresets.Presets) do
        st:WriteString(k)
        st:WriteBoolean(false)
        st:WriteBegin()
        for i = 1, #v do
          st:WriteString(v[i][1])
          st:WriteString(v[i][2])
          st:WriteBoolean(v[i][3])
          st:WriteBoolean(v[i][4])
        end
        st:WriteEnd()
      end
      for k, v in pairs(MapSceneSectorPresets.Presets) do
        st:WriteString(k)
        st:WriteBoolean(true)
        st:WriteBegin()
        for i = 1, #v do
          st:WriteString(v[i][1])
          st:WriteString(v[i][2])
          st:WriteBoolean(v[i][3])
          st:WriteBoolean(v[i][4])
        end
        st:WriteEnd()
      end
      st:CloseFileOut()
    end
  else
    Game.LoadSectorPreset()
  end
end

function SectorPresets.lua_load()
  if Game.FileExist(init.LevelFile .. "/Scripts/MapSectorPresets.lua") then
    Game.PreloadLibrary(init.LevelFile .. "/Scripts/MapSectorPresets.lua", "MapSectorPresets", false)
  end
  if MapSectorPresets ~= nil then
    for k, v in pairs(MapSectorPresets.Presets) do
      local newPreset = Game.CreateSectorPreset(k)
      local myDataTable = MapSectorPresets.Presets[k]
      for i = 1, #myDataTable do
        newPreset:SetLayerProperties(myDataTable[i][1], myDataTable[i][2], myDataTable[i][3], myDataTable[i][4])
      end
    end
  else
    Game.CreateSectorPreset("default")
  end
  if Game.FileExist(init.LevelFile .. "/Scripts/MapSceneSectorPresets.lua") then
    Game.PreloadLibrary(init.LevelFile .. "/Scripts/MapSceneSectorPresets.lua", "MapSceneSectorPresets", false)
  end
  if MapSceneSectorPresets ~= nil then
    for k, v in pairs(MapSceneSectorPresets.Presets) do
      local newPreset = Game.CreateSectorPreset(k, true)
      local myDataTable = MapSceneSectorPresets.Presets[k]
      for i = 1, #myDataTable do
        newPreset:SetLayerProperties(myDataTable[i][1], myDataTable[i][2], myDataTable[i][3], myDataTable[i][4])
      end
    end
  else
    Game.CreateSectorPreset("default", true)
  end
end

function SectorPresets.Save()
  if EditorUtils ~= nil then
    if not Game.CreateOutFile(Game.GetLevelPath() .. "/Scripts/MapSectorPresets.lua") then
      return false
    end
    Game.OutFile("-- Tool generated file (c) Mercury Steam Entertainment\n")
    Game.OutFile("MapSectorPresets = {}\n")
    Game.OutFile("MapSectorPresets.Presets = {}\n")
    Game.OutFile([[
MapSectorPresets.Presets= { -- Begin Data
    ]])
    local preset
    local presetList = Game.GetSectorPresetNames()
    for i = 1, #presetList do
      preset = Game.GetSectorPreset(presetList[i])
      if not preset.ScenePreset then
        Game.OutFile("\t[\"" .. presetList[i] .. "\"] =  {\n")
        local sectorList = Game.GetSectorList()
        local sector
        for j = 1, #sectorList do
          local layerList = Game.GetSectorLayersListNames(sectorList[j])
          for k = 1, #layerList do
            layer = Game.GetSectorLayer(presetList[i], sectorList[j], layerList[k])
            visible = "false"
            shadows = "false"
            if layer.bVisible then
              visible = "true"
            end
            if layer.bShadow then
              shadows = "true"
            end
            Game.OutFile("\t\t{\"" .. sectorList[j] .. "\", \"" .. layerList[k] .. "\", " .. visible .. "," .. shadows .. " },\n")
          end
        end
        Game.OutFile("\t},\n")
      end
    end
    Game.OutFile([[
} -- End Data

]])
    Game.CloseFile()
    if not Game.CreateOutFile(Game.GetLevelPath() .. "/Scripts/MapSceneSectorPresets.lua") then
      return false
    end
    Game.OutFile("-- Tool generated file (c) Mercury Steam Entertainment\n")
    Game.OutFile("MapSceneSectorPresets = {}\n")
    Game.OutFile("MapSceneSectorPresets.Presets = {}\n")
    Game.OutFile([[
MapSceneSectorPresets.Presets= { -- Begin Data
    ]])
    local preset
    local presetList = Game.GetSectorPresetNames()
    for i = 1, #presetList do
      preset = Game.GetSectorPreset(presetList[i])
      if preset.ScenePreset then
        Game.OutFile("\t[\"" .. presetList[i] .. "\"] =  {\n")
        local sectorList = Game.GetSectorList()
        local sector
        for j = 1, #sectorList do
          local layerList = Game.GetSectorLayersListNames(sectorList[j])
          for k = 1, #layerList do
            layer = Game.GetSectorLayer(presetList[i], sectorList[j], layerList[k])
            visible = "false"
            shadows = "false"
            if layer.bVisible then
              visible = "true"
            end
            if layer.bShadow then
              shadows = "true"
            end
            Game.OutFile("\t\t{\"" .. sectorList[j] .. "\", \"" .. layerList[k] .. "\", " .. visible .. "," .. shadows .. " },\n")
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
