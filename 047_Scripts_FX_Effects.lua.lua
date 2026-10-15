function Effects.Preload()
  FX.InitEffect("EFFECT_PARTICLESYSTEM", 256)
  
  FX.InitEffect("EFFECT_LIGHT", 20)
  FX.InitEffect("EFFECT_MODELEFFECT", 60)
  FX.InitEffect("EFFECT_PARTICLES\183HUD_STAMINA", 1, "fx/menu/stamina.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183HUD_LIGHTPOWER", 1, "fx/menu/lightmagic.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183HUD_DARKPOWER", 1, "fx/menu/darkmagic.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183NOBLOCKATTACK_Small", 2, "fx/impact/body/noblockattack_small.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183NOBLOCKATTACK_Big", 2, "fx/impact/body/noblockattack_big.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183NOBLOCKATTACK_TRAIL", 2, "fx/impact/body/noblockattack_trail.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183EXPANSIVE_ATTACK", 3, "fx/impact/body/expansiveattack.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183EXPANSIVE_ATTACK_BIG", 3, "fx/impact/body/expansiveattack_big.ps.xml,0,1")
  Preload.PreloadLib("Scripts/FX/Impact.lua", "Impact")
  Preload.PreloadLib("Scripts/FX/ObjFX.lua", "ObjFX")
end

Effects.FXScorer = true

function Effects.main()
  Game.PreloadLibrary("Scripts/FX/EffectsTools.lua", "EffectsTools")
  Game.PreloadLibrary("Scripts/FX/EffectsFrame.lua", "EffectsFrame")
  Game.PreloadLibrary("Scripts/FX/ObjFX.lua", "ObjFX")
  Effects.DefaultHivarita()
  Game.PreloadLibrary("Scripts/FX/Impact.lua", "Impact")
end

function Effects.LoadMapEffects()
  TSCLOAD_Begin("MapEffects")
  Effects.DefaultLevels()
  filename = init.GetLevelScriptsPath() .. "Scripts/MapLevels"
  if Game.FileExist(filename .. ".lc") or Game.FileExist(filename .. ".lua") then
    Game.PreloadLibrary(filename .. ".lua", "MapLevels")
  end
  Effects.DefaultWeather()
  filename = init.GetLevelScriptsPath() .. "Scripts/MapWeather"
  if Game.FileExist(filename .. ".lc") or Game.FileExist(filename .. ".lua") then
    Game.PreloadLibrary(filename .. ".lua", "MapWeather")
  end
  local filename = "Scripts/FX/" .. string.sub(Game.GetLevelPath(), 8) .. "/MapEffects"
  if Game.FileExist(filename .. ".lc") or Game.FileExist(filename .. ".lua") then
    Game.PreloadLibrary(filename .. ".lua", "MapEffects")
  end
  TSCLOAD_End("MapEffects")
end

function Effects.DefaultLevels()
  Game.Set("RT_ReflectionPlane", Game.Def("RT_ReflectionPlane"))
  Game.Set("RT_GBufferWetUV", Game.Def("RT_GBufferWetUV"))
  Game.Set("RT_GBufferWetUVC", Game.Def("RT_GBufferWetUVC"))
  Game.Set("RT_GBufferWetParams", Game.Def("RT_GBufferWetParams"))
  Game.Set("RT_GBufferWetParamsC", Game.Def("RT_GBufferWetParamsC"))
  Game.Set("RT_GlowFlickParams", Game.Def("RT_GlowFlickParams"))
  Game.Set("RT_GlowFlickParamsC", Game.Def("RT_GlowFlickParamsC"))
  Game.Set("RT_FocusValue", 0)
end

function Effects.DefaultWeather()
  Game.Set("WindDraw", Game.Def("WindDraw"))
  Game.Set("WindDir", Game.Def("WindDir"))
  Game.Set("WindAngMult", Game.Def("WindAngMult"))
  Game.Set("WindVelLimit", Game.Def("WindVelLimit"))
  Game.Set("WindOscA0", Game.Def("WindOscA0"))
  Game.Set("WindOscA1", Game.Def("WindOscA1"))
  Game.Set("WindOscA2", Game.Def("WindOscA2"))
  Game.Set("WindOscA3", Game.Def("WindOscA3"))
  Game.Set("WindOscV0", Game.Def("WindOscV0"))
  Game.Set("WindOscV1", Game.Def("WindOscV1"))
  Game.Set("WindOscV2", Game.Def("WindOscV2"))
  Game.Set("WindOscV3", Game.Def("WindOscV3"))
end

function Effects.DefaultHivarita()
  Game.Set("R_GlobalMult", 1)
  Game.Set("R_LightMult", 1)
  Game.Set("R_SkyLightMult", 1)
  Game.Set("SkyMult", 1)
  Game.Set("RT_FocusValue", 0)
  Effects.SetShadowSettings("Default")
end

function Effects.Environment()
  local level = string.sub(string.upper(Game.GetLevelPath()), 8)
  local bFog = false
  local bRain = false
  if level == "CRU_SEWERS" or level == "DEMO" or level == "CRU_RIVER" or level == "CRU_KEEP" then
    bRain = true
  end
  if bFog == true then
    local fogtype = "EFFECT_FOG\1831"
    FX.InitEffect(fogtype, 1, "FX/FOG/FOG.PS.xml")
    if FX.BeginEffect(fogtype, fogtype, "1750,150,1") ~= nil then
      FX.SetEffect(fogtype, "", "SurfaceEmitter 11,0")
      FX.SetEffect(fogtype, "", "SurfaceEmitter 5,1")
      FX.SetEffect(fogtype, "", "SurfaceEmitter 6,3")
      FX.SetEffect(fogtype, "", "SurfaceEmitter 1,2")
      FX.SetEffect(fogtype, "", "SurfaceEmitter 2,2")
      FX.SetEffect(fogtype, "", "SurfaceEmitter 7,2")
      if level == "ROM_COLOSEUM" then
        FX.SetEffect(fogtype, "", "SurfaceEmitter 6,1")
      end
      if level == "ROM_CALDARIUM" then
        FX.SetEffect(fogtype, "", "SurfaceEmitter 0,4")
        FX.InitEffect(fogtype .. "T", 1, "FX/FOG/FOG.PS.xml")
        if FX.BeginEffect(fogtype .. "T", fogtype .. "T", "1750,75,10") ~= nil then
          FX.SetEffect(fogtype .. "T", "", "SurfaceEmitter 0,5")
          FX.SetEffect(fogtype .. "T", "", "SurfaceEmitter 11,5")
          FX.SetEffect(fogtype .. "T", "", "SurfaceEmitter 5,5")
          FX.SetEffect(fogtype .. "T", "", "SurfaceEmitter 6,5")
          FX.SetEffect(fogtype .. "T", "", "SurfaceEmitter 1,5")
          FX.SetEffect(fogtype .. "T", "", "SurfaceEmitter 2,5")
          FX.SetEffect(fogtype .. "T", "", "SurfaceEmitter 7,5")
        end
      end
    end
  end
  if bRain == true then
    local raintype = "EFFECT_RAIN\1831"
    FX.InitEffect(raintype, 1, "FX/Rain/Streaks.PS.xml#FX/Rain/Drops.PS.xml")
    local params
    if level == "CRU_SEWERS" or level == "DEMO" then
      params = "1500,800"
    else
      params = "1750,400"
    end
    if FX.BeginEffect(raintype, raintype, params) ~= nil then
      FX.SetEffect(raintype, "", "SurfaceEmitter 11,0")
      FX.SetEffect(raintype, "", "SurfaceEmitter 5,1")
      FX.SetEffect(raintype, "", "SurfaceEmitter 6,2")
      FX.SetEffect(raintype, "", "SurfaceEmitter 1,2")
      FX.SetEffect(raintype, "", "SurfaceEmitter 2,2")
      if level == "CRU_SEWERS" then
        FX.SetEffect(raintype, raintype, "EmitterPoint (-1977,-1604,246),2000")
      end
    end
    FX.InitEffect("EFFECT_PARTICLES\183FP_Rain", 1, "FX/FP_Rain/FP_Rain.PS.xml")
    if FX.BeginEffect("EFFECT_PARTICLES\183FP_Rain", "FP_Rain", "") then
      FX.SetEffect("EFFECT_PARTICLES\183FP_Rain", "", "BirthEnabled 0,0,0")
      FX.SetEffect("EFFECT_PARTICLES\183FP_Rain", "", "BirthEnabled 1,0,0")
    end
    EffectsSound.LoadRainSounds()
  end
end

_ShadowSettings = {
  Default = {
    {
      "RT_ShadowMapHQ",
      nil
    },
    {
      "R_LightSelfShadow",
      nil
    },
    {
      "R_ShadowMapsModelsOpt",
      nil
    },
    {
      "R_ShadowMapsSplitDrawModels",
      nil
    },
    {
      "R_ShadowMapsSplitDists",
      nil
    },
    {
      "R_ShadowMapsSplitBiasModels",
      nil
    },
    {
      "R_ShadowMapsSplitBiasWorld",
      nil
    },
    {
      "R_ShadowMapsSplitFade",
      nil
    }
  },
  Scene = {
    {
      "RT_ShadowMapHQ",
      nil
    },
    {
      "R_LightSelfShadow",
      1
    },
    {
      "R_ShadowMapsModelsOpt",
      0
    },
    {
      "R_ShadowMapsSplitDrawModels",
      3
    },
    {
      "R_ShadowMapsSplitDists",
      nil
    },
    {
      "R_ShadowMapsSplitBiasModels",
      nil
    },
    {
      "R_ShadowMapsSplitBiasWorld",
      nil
    },
    {
      "R_ShadowMapsSplitFade",
      nil
    }
  },
  Video = {
    {
      "RT_ShadowMapHQ",
      1
    },
    {
      "R_LightSelfShadow",
      1
    },
    {
      "R_ShadowMapsModelsOpt",
      0
    },
    {
      "R_ShadowMapsSplitDrawModels",
      3
    },
    {
      "R_ShadowMapsSplitDists",
      nil
    },
    {
      "R_ShadowMapsSplitBiasModels",
      V4D(9, 6, 2.5, 0)
    },
    {
      "R_ShadowMapsSplitBiasWorld",
      V4D(25, 15, 10, 0)
    },
    {
      "R_ShadowMapsSplitFade",
      nil
    }
  }
}

function Effects.SetShadowSettings(name)
  local tbl = _ShadowSettings[name]
  for i = 1, table.getn(tbl) do
    if tbl[i][2] == nil then
      Game.Set(tbl[i][1], Game.Def(tbl[i][1]))
    else
      Game.Set(tbl[i][1], tbl[i][2])
    end
  end
end

function Effects.PlayScene(SceneName)
  FX.EndEffect("EFFECT_RAGDOLL\183FIRECALIMA")
  FX.EndEffect("EFFECT_RAGDOLL\183FIREFREE")
  FX.EndEffect("EFFECT_RAGDOLL\183FIRELINK")
  FX.EndEffect("EFFECT_RAGDOLL\183Death_Smoke")
  FX.EndEffect("EFFECT_RAGDOLL\183Death_Fire")
  FX.EndEffect("EFFECT_RAGDOLL\183Death_Fire2")
  FX.EndEffect("EFFECT_RAGDOLL\183Death_Fire3")
  FX.EndEffect("EFFECT_PARTICLES\183CRAZY_BY_PLAYER")
  FX.EndEffect("EFFECT_PARTICLES\183CRAZY_BY_PLAYER_BIG")
  FX.EndEffect("EFFECT_PARTICLES\183CRAZY_BY_BLINDNESS")
  FX.EndEffect("EFFECT_PARTICLES\183CRAZY_BY_BLINDNESS_BIG")
  FX.EndEffect("EFFECT_BLOOD")
  Effects.FXScorerOff()
  Effects.SetShadowSettings("Scene")
  Effects.OnSuddenCameraChange()
  if Belmont.FXPlayScene then
    Belmont.FXPlayScene()
  end
end

function Effects.EndScene()
  Effects.SetShadowSettings("Default")
  Effects.OnSuddenCameraChange()
end

function Effects.MapLoaded()
  TSCLOAD_Begin("MapEffects")
  Effects.Environment()
  TSCLOAD_End("MapEffects")
end

function Effects.CharsLoaded()
  TSCLOAD_Begin("MapEffects")
  Game.PreloadLibrary("Scripts/FX/FootStep.lua", "FootStep")
  Game.PreloadLibrary("Scripts/FX/BodyImpact.lua", "BodyImpact")
  Game.PreloadLibrary("Scripts/FX/ExplosiveWeapons.lua", "ExplosiveWeapons")
  Game.PreloadLibrary("Scripts/FX/Fire.lua", "Fire")
  Belmont.CreateEffectsNoPreloaded()
  Belmont.BeginEffectsNoPreloaded(player.Name)
  if FXDamage then
    FXDamage.CreateBloodEffects()
  end
  TSCLOAD_End("MapEffects")
end

function Effects.SpecialEmergeFX()
  local level = string.sub(string.upper(Game.GetLevelPath()), 8)
  local list = {
    {
      "CultistaMelee",
      "Emerge",
      "Effects.EmergeEffect"
    },
    {
      "CultistaExplosivo",
      "Emerge",
      "Effects.EmergeEffect"
    },
    {
      "Legionary",
      "Emerge",
      "Legionary.FXEmerge"
    }
  }
  for i in pairs(list) do
    local ac = Act.GetClass(list[i][1])
    if ac ~= nil then
      local am = ac:GetAct(list[i][2])
      if am ~= nil then
        local ev
        local firstframetime = am:TimeFrame(am.FirstFrame)
        ev = am:NewEvent(0)
        ev.Name = ""
        ev.Func = list[i][3]
        ev.Discardable = 0
      end
    end
  end
end

function Effects.EmergeEffect(EntityName)
  local ent = Game.GetEntity(EntityName)
  if ent and FX.CheckSphereVisibility(ent.Pos, 350) then
    local pos = V3D(ent.Pos.x, ent.Pos.y + 5, ent.Pos.z)
    ExplosiveWeapons.DoExplosionImpact(pos.x, pos.y, pos.z)
  end
end

function Effects.GrabQTE_FX_Add(ac, AnName, Frame, fxtype)
  local am = ac:GetAct(AnName)
  local evB = am:NewEvent(am:TimeFrame(Frame))
  evB.Name = fxtype
  evB.Func = "BodyImpact.GrabQTE_FX_Do"
end

function Effects.SandStorm_CameraSetup()
  Game.GetEntity(Game.GetCam(0)).clipNear = 10
  Game.GetEntity(Game.GetCam(0)).clipFar = 400000
end

function Effects.DropDrebris(model, lifetime, pos, rot, vel, rotvel)
  Game.SetDebrisValue(0, pos.x, pos.y, pos.z)
  Game.SetDebrisValue(1, rot.x, rot.y, rot.z)
  Game.SetDebrisValue(2, vel.x, vel.y, vel.z)
  Game.SetDebrisValue(3, rotvel.x, rotvel.y, rotvel.z)
  Game.DropDebris(model, lifetime)
end

function Effects.DropBullet(pos, n)
  print("Effects:DropBullet")
  local model = "models/weapons/bullet/bullet.m3d"
  Game.SetDebrisSys(model, 32, 10000, 1, 1, 2800, 1)
  for i = 1, n do
    Effects:DropDrebris(model, 1.5, pos, V3D(Game.Rand(-180, 180), Game.Rand(-180, 180), Game.Rand(-180, 180)), V3D(Game.Rand(-250, 250), Game.Rand(150, 550), Game.Rand(-250, 250)), V3D(Game.Rand(-300, 300), Game.Rand(-300, 300), Game.Rand(-300, 300)))
  end
end

Effects.FXHelper_Entity = ""
Effects.FXHelper_Node = ""

function Effects.FXHelper_Do(Entity, Node, Offset, Rotation)
  Effects.FXHelper_Entity = Entity
  Effects.FXHelper_Node = Node
  Effects.FXHelper()
end

function Effects.FXHelper()
  local fxposition, fxangle
  fxposition, fxangle = FX.GetNodeMatrix(Effects.FXHelper_Entity, Effects.FXHelper_Node)
  local e
  e = Game.GetEntity("Effects.FXHelper")
  if e == nil then
    e = Game.CreateEntity("Effects.FXHelper", "WithLife")
    e.Ang = V3D(0, 0, 0)
    e.Mesh = "Models/Tools/Axis.M3D"
  end
  e.Pos = fxposition
  e.Ang = fxangle * V3D(57.29, 57.29, 57.29)
  Game.AddScheduledFunc(Game.GetTime(), "", "Effects.FXHelper")
end

Effects.FXMover_Offset = V3D(0, 0, 0)
Effects.FXMover_Radius = 0
Effects.FXMover_Speed = 0
Effects.FXMover_Angle = 0

function Effects.FXMover_Do(Offset, Radius, Speed)
  Effects.FXMover_Offset = Offset
  Effects.FXMover_Radius = Radius
  Effects.FXMover_Speed = Speed
  Effects.FXMover_Angle = 0
  Effects.FXMover()
end

function Effects.FXMover()
  local cam = Game.GetEntity(Game.GetCam(0))
  local usr = Game.GetEntity(cam.MainTarget)
  local pos = cam.camPos
  local ang = cam.camAng
  local e
  e = Game.GetEntity("Effects.FXMover")
  if e == nil then
    e = Game.CreateEntity("Effects.FXMover", "WithLife")
    e.Ang = V3D(0, 0, 0)
    e.Mesh = "Models/Tools/Axis.M3D"
  end
  Effects.FXMover_Angle = Effects.FXMover_Angle + Effects.FXMover_Speed
  local tcos = math.cos(Effects.FXMover_Angle)
  local tsin = math.sin(Effects.FXMover_Angle)
  e.Pos = pos + Effects.FXMover_Offset:rot(ang) + V3D(tcos * Effects.FXMover_Radius, 0, tsin * Effects.FXMover_Radius)
  Game.AddScheduledFunc(Game.GetTime(), "", "Effects.FXMover")
end

function Effects.FXModel(model, pos)
  local e
  e = Game.GetEntity("ViewerModel")
  if e == nil then
    e = Game.CreateEntity("ViewerModel", "WithLife")
    e.Ang = V3D(0, 0, 0)
    e.Mesh = model
  end
  e.Pos = pos
end

function Effects.FXModelAnm(model, anm, pos)
  local e
  e = Game.GetEntity("ViewerModel")
  if e == nil then
    Act.CreateClass("ViewerModelClass")
    Act.SetCls("ModelFilePath", model)
    Act.CreateAction("Loop")
    Act.SetAct("AnmFilePath", anm)
    Act.SetAct("isLoop", 1)
    Act.SetCls("DefAction", "Loop")
    e = Game.CreateEntity("ViewerModel", "WithLife", pos)
    if anm ~= "" then
      e.ActCtrl = "ViewerModelClass"
    else
      e.Mesh = model
    end
  end
  e.Pos = pos
end

function Effects.FXFliesEmerge(EntityName)
end

function Effects.FXFPFlies()
end

function Effects.FXFPFliesOff()
end

function Effects.FPFliesPass(times, delay, random)
end

function Effects.Test(path, dist, pos, entity, node)
  FX.CleanUpEffect("EFFECT_PARTICLES\183ONE")
  FX.InitEffect("EFFECT_PARTICLES\183ONE", 1, path)
  FX.BeginEffect("EFFECT_PARTICLES\183ONE", "")
  if pos then
    FX.SetEffect("EFFECT_PARTICLES\183ONE", "", "MatrixTranslation " .. pos:str3())
  elseif entity and node then
    FX.SetEffect("EFFECT_PARTICLES\183ONE", "", "LinkToNode " .. entity .. "#" .. node)
  elseif dist then
    local cam = Game.GetEntity(Game.GetCam(0))
    local dir = V3D(0, 0, 1):rot(cam.camAng)
    dir = dir * dist
    print(dir:str3())
    local pos = cam.Pos + dir
    FX.SetEffect("EFFECT_PARTICLES\183ONE", "", "MatrixTranslation " .. pos:str3())
    print(pos:str3())
  end
end

function Effects.FXCleanOnSwitchCharacter()
  if Delgado then
    Delgado.DeactivateBarrier()
  end
end

function Effects.FXCleanUpOnDeath(charName)
  FXDamage.StopCrazyFX(charName)
end

function Effects.CreateEffects()
  if MapParticles then
    local effects = MapParticles.Effects
    if effects then
      for i = 1, #effects do
        local tname = effects[i][3][2]
        local ttype = effects[i][4][2]
        local tfile = effects[i][5][2]
        if Game.Get("toolmode") == 1 then
          FX.InitEffect("EFFECT_PARTICLES\183" .. ttype, 1, tfile)
        else
          FX.InitEffect("EFFECT_PARTICLES\183" .. ttype, 1, tfile .. ",0,1")
        end
        if effects[i][10][2] == "Map Initialization" then
          local rot = effects[i][2][2] * 3.1416 / 180
          if FX.BeginEffect("EFFECT_PARTICLES\183" .. ttype, tname) then
            FX.SetEffect("EFFECT_PARTICLES\183" .. ttype, tname, "MatrixTranslation " .. effects[i][1][2]:str3())
            FX.SetEffect("EFFECT_PARTICLES\183" .. ttype, tname, "MatrixEuler " .. rot:str3())
            if string.upper(string.sub(tfile, 1, 13)) == "FX/WATERFALL/" then
              FX.SetEffect("EFFECT_PARTICLES\183" .. ttype, tname, "Preload 5 0.2")
            elseif effects[i][14] ~= nil and effects[i][14][2] > 0 and 0 < effects[i][15][2] then
              FX.SetEffect("EFFECT_PARTICLES\183" .. ttype, tname, "Preload " .. effects[i][14][2] .. " " .. effects[i][15][2])
            end
            if effects[i][16] ~= nil and 0 < effects[i][16][2] then
              FX.SetEffect("EFFECT_PARTICLES\183" .. ttype, tname, "Periodic " .. effects[i][16][2] .. "," .. effects[i][17][2] .. "," .. effects[i][18][2] .. "," .. effects[i][19][2])
              if effects[i][20] ~= nil and effects[i][20][2] ~= "" or effects[i][21] ~= nil and effects[i][21][2] ~= "" then
                FX.SetEffect("EFFECT_PARTICLES\183" .. ttype, tname, "PeriodicCallback " .. effects[i][20][2] .. "#" .. effects[i][21][2])
              end
            end
          end
        end
      end
    end
  end
end

function Effects.SearchEffect(id)
  if MapParticles then
    local effects = MapParticles.Effects
    for i = 1, #effects do
      if effects[i][3][2] == id then
        return effects[i]
      end
    end
  end
  return nil
end

function Effects.SearchEffectEnt(id, lib)
  if _G[lib] then
    local effects = _G[lib].Effects
    for i = 1, #effects do
      if effects[i][3][2] == id then
        return effects[i]
      end
    end
  end
  return nil
end

function Effects.BeginEffect(id)
  local effect = Effects.SearchEffect(id)
  if effect then
    local rot = effect[2][2] * 3.1416 / 180
    FX.BeginEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2])
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2], "MatrixTranslation " .. effect[1][2]:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2], "MatrixEuler " .. rot:str3())
    if effect[14] ~= nil and effect[14][2] > 0 and 0 < effect[15][2] then
      FX.SetEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2], "Preload " .. effect[14][2] .. " " .. effect[15][2])
    end
    if effect[16] ~= nil and 0 < effect[16][2] then
      FX.SetEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2], "Periodic " .. effect[16][2] .. "," .. effect[17][2] .. "," .. effect[18][2] .. "," .. effect[19][2])
    end
    if effect[20] ~= nil and effect[20][2] ~= "" or effect[21] ~= nil and effect[21][2] ~= "" then
      FX.SetEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2], "PeriodicCallback " .. effect[20][2] .. "#" .. effect[21][2])
    end
  end
end

function Effects.BeginEffectEnt(id, ent)
  local effect = Effects.SearchEffectEnt(id, "FX" .. ent.ActCtrl)
  if effect then
    FX.BeginEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2] .. "_" .. ent.Name)
    if effect[6][2] then
      FX.SetEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2] .. "_" .. ent.Name, "Unlink")
      FX.SetEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2] .. "_" .. ent.Name, "LinkToNode " .. ent.Name .. "#" .. effect[9][2])
    else
      FX.SetEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2] .. "_" .. ent.Name, "MatrixTranslation " .. effect[1][2]:str3())
      FX.SetEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2] .. "_" .. ent.Name, "MatrixEuler " .. effect[2][2]:str3())
    end
    if effect[16] ~= nil and effect[16][2] > 0 then
      FX.SetEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2], "Periodic " .. effects[16][2] .. "," .. effect[17][2] .. "," .. effect[18][2] .. "," .. effect[19][2])
      if effect[20] ~= nil and effect[20][2] ~= "" or effect[21] ~= nil and effect[21][2] ~= "" then
        FX.SetEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2], "PeriodicCallback " .. effect[20][2] .. "#" .. effect[21][2])
      end
    end
  end
end

function Effects.SetEffect(id, params)
  local effect = Effects.SearchEffect(id)
  if effect then
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2], params)
  end
end

function Effects.BeginEffectScene(scene, id)
  Effects.EndEffect(id)
  Effects.BeginEffect(id)
end

function Effects.EndEffect(id)
  local effect = Effects.SearchEffect(id)
  if effect and FX.IsEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2]) then
    FX.EndEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2])
  end
end

function Effects.EndEffectEnt(id, ent)
  local effect = Effects.SearchEffectEnt(id, "FX" .. ent.ActCtrl)
  if effect and FX.IsEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2] .. "_" .. ent.Name) then
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2] .. "_" .. ent.Name, "Unlink")
    FX.EndEffect("EFFECT_PARTICLES\183" .. effect[4][2], effect[3][2] .. "_" .. ent.Name)
  end
end

function Effects.EndEffectScene(scene, id)
  Effects.EndEffect(id)
end

function Effects.OnEntityCreation(tipo)
  if Game.FileExist("scripts/fx/chars/FX" .. tipo .. ".lua") then
    Game.PreloadLibrary("scripts/fx/chars/FX" .. tipo .. ".lua", "FX" .. tipo)
  end
end

function Effects.OnEntityInitialization(tipo)
  if EditorAnimTester and EditorAnimTester.object and EditorAnimTester.object.ActCtrl == tipo then
    return
  end
  if _G["FX" .. tipo] then
    local subtipos = _G["FX" .. tipo].SubTypes
    local i
    for i in pairs(subtipos) do
      FX.InitEffect("EFFECT_PARTICLES\183" .. subtipos[i][1][2], subtipos[i][3][2], subtipos[i][2][2] .. ",0,1")
    end
  end
end

function Effects.OnEntityActivation(entity)
  if EditorAnimTester and EditorAnimTester.object and EditorAnimTester.object.ActCtrl == entity.ActCtrl then
    return
  end
  local actCtrl = entity.ActCtrl
  if _G["FX" .. actCtrl] then
    local efectos = _G["FX" .. actCtrl].Effects
    local i
    for i in pairs(efectos) do
      if efectos[i][10][2] == "Entity Initialization" then
        Effects.BeginEffectEnt(efectos[i][3][2], entity)
      end
    end
  end
end

function Effects.OnEntityAnimEventsRegistry(tipo, actClass)
  if EditorAnimTester and EditorAnimTester.object and EditorAnimTester.object.ActCtrl == tipo then
    return
  end
  if _G["FX" .. tipo] then
    local efectos = _G["FX" .. tipo].Effects
    local i
    for i in pairs(efectos) do
      local BeginAnimEventList = efectos[i][11][2]
      if BeginAnimEventList then
        local anm
        for anm in pairs(BeginAnimEventList) do
          local frame
          for frame in pairs(BeginAnimEventList[anm]) do
            print("BAE anm: " .. anm .. " frame: " .. BeginAnimEventList[anm][frame])
            MakeChar.MakeEvent(actClass, anm, efectos[i][3][2], "Effects.FXBeginOnAnimEvent", BeginAnimEventList[anm][frame])
          end
        end
      end
      local EndAnimEventList = efectos[i][13][2]
      if EndAnimEventList then
        for anm in pairs(EndAnimEventList) do
          local frame
          for frame in pairs(EndAnimEventList[anm]) do
            print("EAE anm: " .. anm .. " frame: " .. frame)
            MakeChar.MakeEvent(actClass, anm, efectos[i][3][2], "Effects.FXEndOnAnimEvent", EndAnimEventList[anm][frame])
          end
        end
      end
    end
  end
end

function Effects.FXBeginOnAnimEvent(EntityName, params)
  print("ANIMEVENT BEGIN")
  Effects.BeginEffectEnt(params, Game.GetEntity(EntityName))
end

function Effects.FXEndOnAnimEvent(EntityName, params)
  print("ANIMEVENT END")
  Effects.EndEffectEnt(params, Game.GetEntity(EntityName))
end

function Effects.CallbackCaller(entityName, params, time)
  local p = Game.Split(params, ".")
  local pp = Game.Split(p[2], ",")
  print(pp)
  if _G[p[1]] ~= nil and _G[p[1]][pp[1]] ~= nil then
    _G[p[1]][pp[1]](entityName, time, pp[2])
  else
    print("FX Function does not exist: " .. params)
  end
end

function Effects.LoadSceneEvents(scene)
  local path = Game.GetLevelPath() .. "/Scripts/SceneFX/" .. scene .. "/FXEvents" .. scene .. ".lua"
  Scene.ValidPreloadLibrary(path, "FXEvents" .. scene)
  if Scene.Actors[scene] then
    for i = 1, table.getn(Scene.Actors[scene]) do
      local actor = Scene.Actors[scene][i][2]
      if actor then
        local path = Game.GetLevelPath() .. "/Scripts/SceneFX/" .. scene .. "/FXEvents" .. actor .. ".lua"
        Scene.ValidPreloadLibrary(path, "FXEvents" .. actor)
      end
    end
  end
end

function Effects.RadialBlur(value, value_end, time, pos, pivotentity, color)
  Game.Set("RadialBlurFactorBegin", value)
  Game.Set("RadialBlurFactorEnd", value_end)
  Game.Set("RadialBlurTime", 0)
  Game.Set("RadialBlurEndTime", time)
  if pos ~= nil then
    Game.Set("RT_RadialBlurPivot", pos)
  else
    Game.Set("RT_RadialBlurPivot", V3D(0, 0, 0))
  end
  if pivotentity ~= nil then
    Game.Set("RadialBlurPivotEntity", pivotentity)
  else
    Game.Set("RadialBlurPivotEntity", "")
  end
  if color ~= nil then
    Game.Set("RT_RadialBlurColor", color)
  else
    Game.Set("RT_RadialBlurColor", V4D(0, 0, 0, 0))
  end
end

function Effects.OnSuddenCameraChangeScene()
  Game.Set("R_CrossFade", 1)
  Effects.OnSuddenCameraChange()
end

function Effects.OnSuddenCameraChange()
  local skipcount = 1 - Game.Get("DrawNextFrame") + 1
  Game.Set("RT_HDRLuminanceSkipInterp", skipcount)
  Game.Set("RT_PixelMotionBlurSkipCamera", skipcount)
  if FX.IsEffect("EFFECT_AMBIENT\183RAIN", "Rain") then
    FX.SetEffect("EFFECT_AMBIENT\183RAIN", "Rain", "ResetPosition")
  end
  if FX.IsEffect("EFFECT_AMBIENT\183LIGHTRAIN", "LightRain") then
    FX.SetEffect("EFFECT_AMBIENT\183LIGHTRAIN", "LightRain", "ResetPosition")
  end
  if FX.IsEffect("EFFECT_AMBIENT\183HEAVYRAIN", "HeavyRain") then
    FX.SetEffect("EFFECT_AMBIENT\183HEAVYRAIN", "HeavyRain", "ResetPosition")
  end
  if FX.IsEffect("EFFECT_AMBIENT\183SNOW", "Snow") then
    FX.SetEffect("EFFECT_AMBIENT\183SNOW", "Snow", "ResetPosition")
  end
  if FX.IsEffect("EFFECT_AMBIENT\183SNOWSTORM", "SnowStorm") then
    FX.SetEffect("EFFECT_AMBIENT\183SNOWSTORM", "SnowStorm", "ResetPosition")
  end
  if FX.IsEffect("EFFECT_AMBIENT\183LIGHTFLIES", "LightFlies") then
    FX.SetEffect("EFFECT_AMBIENT\183LIGHTFLIES", "LightFlies", "ResetPosition")
  end
end

function Effects.OnSwitchAction(e, Track, Frame, lSeg, nSeg)
  if lSeg == nil then
    local p = Game.Split(Track.Info, ",")
    if p and p[1] then
      Effects.CallbackCaller(e.Name, p[1], Frame)
    end
  end
  if nSeg == nil then
    local p = Game.Split(Track.Info, ",")
    if p and p[2] then
      Effects.CallbackCaller(e.Name, p[2], Frame)
    end
  end
end

function Effects.FXStaminaBarOn()
  if Effects.FXScorer == true then
    FX.BeginEffect("EFFECT_PARTICLES\183HUD_STAMINA", "STAMINA_BAR")
    if FX.IsEffect("EFFECT_PARTICLES\183HUD_STAMINA", "STAMINA_BAR") then
      FX.SetEffect("EFFECT_PARTICLES\183HUD_STAMINA", "STAMINA_BAR", "BirthEnabledAll 1")
    end
  end
end

function Effects.FXStaminaBarOff()
  if FX.IsEffect("EFFECT_PARTICLES\183HUD_STAMINA", "STAMINA_BAR") then
    FX.SetEffect("EFFECT_PARTICLES\183HUD_STAMINA", "STAMINA_BAR", "BirthEnabledAll 0")
  end
end

function Effects.FXLightPowerOn()
  if Effects.FXScorer == true then
    FX.BeginEffect("EFFECT_PARTICLES\183HUD_LIGHTPOWER", "HUD_LIGHTPOWER")
    if FX.IsEffect("EFFECT_PARTICLES\183HUD_LIGHTPOWER", "HUD_LIGHTPOWER") then
      FX.SetEffect("EFFECT_PARTICLES\183HUD_LIGHTPOWER", "HUD_LIGHTPOWER", "BirthEnabledAll 1")
    end
  end
end

function Effects.FXLightPowerOff()
  if FX.IsEffect("EFFECT_PARTICLES\183HUD_LIGHTPOWER", "HUD_LIGHTPOWER") then
    FX.SetEffect("EFFECT_PARTICLES\183HUD_LIGHTPOWER", "HUD_LIGHTPOWER", "BirthEnabledAll 0")
  end
end

function Effects.FXDarkPowerOn()
  if Effects.FXScorer == true then
    FX.BeginEffect("EFFECT_PARTICLES\183HUD_DARKPOWER", "DARKPOWER")
    if FX.IsEffect("EFFECT_PARTICLES\183HUD_DARKPOWER", "DARKPOWER") then
      FX.SetEffect("EFFECT_PARTICLES\183HUD_DARKPOWER", "DARKPOWER", "BirthEnabledAll 1")
    end
  end
end

function Effects.FXDarkPowerOff()
  if FX.IsEffect("EFFECT_PARTICLES\183HUD_DARKPOWER", "DARKPOWER") then
    FX.SetEffect("EFFECT_PARTICLES\183HUD_DARKPOWER", "DARKPOWER", "BirthEnabledAll 0")
  end
end

function Effects.FXScorerOff()
  if FX.IsEffect("EFFECT_PARTICLES\183HUD_LIGHTPOWER", "HUD_LIGHTPOWER") then
    FX.EndEffect("EFFECT_PARTICLES\183HUD_LIGHTPOWER", "HUD_LIGHTPOWER")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183HUD_DARKPOWER", "DARKPOWER") then
    FX.EndEffect("EFFECT_PARTICLES\183HUD_DARKPOWER", "DARKPOWER")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183HUD_STAMINA", "STAMINA_BAR") then
    FX.EndEffect("EFFECT_PARTICLES\183HUD_STAMINA", "STAMINA_BAR")
  end
end

function Effects.FXNoBlockAttack(entityName, params, time)
  local paramList = Game.Split(params, ",")
  local effect = "EFFECT_PARTICLES\183NOBLOCKATTACK_Small"
  if paramList[5] and paramList[5] == "Big" then
    effect = "EFFECT_PARTICLES\183NOBLOCKATTACK_Big"
  end
  if FX.BeginEffect(effect, "") then
    FX.SetEffect(effect, "", "LinkToNode " .. entityName .. "#" .. paramList[1])
    if paramList[2] then
      FX.SetEffect(effect, "", "MatrixTranslation " .. V3D(paramList[2], paramList[3], paramList[4]):str3())
    end
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183NOBLOCKATTACK_TRAIL", "") then
    FX.SetEffect("EFFECT_PARTICLES\183NOBLOCKATTACK_TRAIL", "", "EmitterLinkToNode 0,0 " .. entityName .. "#" .. paramList[1])
    if paramList[2] then
      FX.SetEffect("EFFECT_PARTICLES\183NOBLOCKATTACK_TRAIL", "", "EmitterMatrixTranslation 0,0," .. V3D(paramList[2], paramList[3], paramList[4]):str3())
    end
  end
  SoundUtils.FXPlaySound("Belmont", "NoBlockAttack", Game.GetEntity(entityName).Pos)
end

function Effects.FXExpansiveAttack(entityName, params, time)
  local paramList = Game.Split(params, ",")
  local pos = FX.GetNodePosition(entityName, paramList[1]) + V3D(paramList[2], paramList[3], paramList[4]):rot(Game.GetEntity(entityName).Ang)
  local effect = "EFFECT_PARTICLES\183EXPANSIVE_ATTACK"
  if paramList[5] and paramList[5] == "Big" then
    effect = "EFFECT_PARTICLES\183EXPANSIVE_ATTACK_BIG"
  end
  if FX.BeginEffect(effect, "") then
    FX.SetEffect(effect, "", "MatrixTranslation " .. pos:str3())
  end
  local posIni = pos + V3D(0, 50, 0)
  local posEnd = pos - V3D(0, 100, 0)
  local hit, norm, material = Game.TestLine(posIni, posEnd, "", "", true, true)
  if hit ~= nil and type(material) == "number" and 0 < material then
    local surface = Impact.Surfaces[material]
    if surface ~= nil then
      Impact.DoImpact("Splash/" .. surface, "DoFixed " .. hit:str3() .. ",(0,1,0)")
      SoundUtils.FXPlaySound("Belmont", "Splash_" .. surface, hit)
    end
  end
end

function Effects.FXDirectionalAttack(entityName, params, time)
  local wave = Game.CreateEntity("FXDirAttack", "Obj", V3D(0, 0, 0))
  wave.Mesh = "Models/FX/DirAttack/DirAttack.M3D"
  if wave ~= nil then
    local paramList = Game.Split(params, ",")
    local entity = Game.GetEntity(entityName)
    local angOffset = V3D(0, 0, 0)
    if paramList[6] and paramList[6] ~= "" then
      angOffset.x = paramList[6]
      angOffset.y = paramList[7]
      angOffset.z = paramList[8]
    end
    local ang = entity.Ang
    local pos = FX.GetNodePosition(entityName, "DC_Root") + V3D(paramList[1], paramList[2], paramList[3]):rot(ang)
    local speed = paramList[4]
    local distance = paramList[5]
    local time = distance / speed
    wave.Ang = ang + angOffset
    wave.Pos = pos
    Effects.FXDirAttackBegin(wave.Name)
    local modif = Game.ValueModifier():New()
    modif.FactorStack = ""
    modif.FinalTime = time
    modif.oValues.n = 1
    modif.oValues[1]:SetValue(wave, "Pos")
    modif.oValues[1].Final = pos + V3D(0, 0, -distance):rot(ang + angOffset)
    modif.OnEnd = "Effects.FXDirAttackEnd"
  end
end

function Effects.FXDirAttackInit()
  local wave = Game.GetEntity("FXDirAttack")
  if wave == nil then
    FX.InitEffect("EFFECT_PARTICLES\183DIRECTIONAL_ATTACK", 5, "fx/impact/body/dirattack.ps.xml,0,1")
    local entity = Game.CreateEntity("FXDirAttack", "Obj", V3D(0, 0, 0))
    entity.Mesh = "Models/FX/DirAttack/DirAttack.M3D"
    entity:Del()
  end
end

function Effects.FXDirAttackBegin(entityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183DIRECTIONAL_ATTACK", "FXDirAttack_Smoke_" .. entityName) then
    local batches = FX.GetEffect("EFFECT_PARTICLES\183DIRECTIONAL_ATTACK", "", "EmittersCount -1")
    for i = 0, batches - 1 do
      local emitters = FX.GetEffect("EFFECT_PARTICLES\183DIRECTIONAL_ATTACK", "", "EmittersCount " .. i)
      for j = 0, emitters - 1 do
        FX.SetEffect("EFFECT_PARTICLES\183DIRECTIONAL_ATTACK", "", "EmitterLinkToNode " .. i .. "," .. j .. " " .. entityName .. "#DC_Root")
      end
    end
    if FX.BeginEffect("EFFECT_MODELEFFECT", "", "0.01") ~= nil then
      FX.SetEffect("EFFECT_MODELEFFECT", "", "EntityName " .. entityName)
      FX.SetEffect("EFFECT_MODELEFFECT", "", "RenderEffect " .. FX.MODELEFFECT_BLEND)
      FX.SetEffect("EFFECT_MODELEFFECT", "", "ValueRamp 1 0,1")
      FX.SetEffect("EFFECT_MODELEFFECT", "", "FadeIn")
    end
  end
end

function Effects.FXDirAttackEnd(modif)
  local ent = modif.oValues[1].oObject
  local entityName = ent.Name
  if FX.IsEffect("EFFECT_PARTICLES\183DIRECTIONAL_ATTACK", "FXDirAttack_Smoke_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183DIRECTIONAL_ATTACK", "FXDirAttack_Smoke_" .. entityName, "BirthEnabledAll 0")
    local batches = FX.GetEffect("EFFECT_PARTICLES\183DIRECTIONAL_ATTACK", "FXDirAttack_Smoke_" .. entityName, "EmittersCount -1")
    for i = 0, batches - 1 do
      local emitters = FX.GetEffect("EFFECT_PARTICLES\183DIRECTIONAL_ATTACK", "FXDirAttack_Smoke_" .. entityName, "EmittersCount " .. i)
      for j = 0, emitters - 1 do
        FX.SetEffect("EFFECT_PARTICLES\183DIRECTIONAL_ATTACK", "FXDirAttack_Smoke_" .. entityName, "EmitterUnlink " .. i .. "," .. j)
      end
    end
    if FX.BeginEffect("EFFECT_MODELEFFECT", "", "0.01") ~= nil then
      FX.SetEffect("EFFECT_MODELEFFECT", "", "EntityName " .. entityName)
      FX.SetEffect("EFFECT_MODELEFFECT", "", "RenderEffect " .. FX.MODELEFFECT_BLEND)
      FX.SetEffect("EFFECT_MODELEFFECT", "", "ValueRamp 1 0,0")
      FX.SetEffect("EFFECT_MODELEFFECT", "", "FadeOut")
    end
  end
  addSF(1.5, "", "Effects.FXDirAttacEndSchd", entityName)
end

function Effects.FXDirAttacEndSchd(entityName)
  local ent = Game.GetEntity(entityName)
  ent:Del()
end

function Effects.FXBeginEffectSceneLinked(entityName, params)
  local paramList = Game.Split(params, ",")
  local name = paramList[1]
  local subtype = "EFFECT_PARTICLES\183" .. paramList[2]
  local nodeName = paramList[3]
  local pos = V3D(paramList[4], paramList[5], paramList[6])
  local ang = V3D(paramList[7], paramList[8], paramList[9])
  local linktype = paramList[10]
  if FX.BeginEffect(subtype, name) then
    if linktype == "Instance" then
      FX.SetEffect(subtype, "", "LinkToNode " .. entityName .. "#" .. nodeName)
      FX.SetEffect(subtype, "", "MatrixTranslation " .. pos:str3())
      FX.SetEffect(subtype, "", "MatrixEuler " .. ang:str3())
    elseif linktype == "Emitters" then
      local batches = FX.GetEffect(subtype, "", "EmittersCount -1")
      FX.SetEffect(subtype, "", "MatrixTranslation (0,0,0)")
      FX.SetEffect(subtype, "", "MatrixEuler (0,0,0)")
      for i = 0, batches - 1 do
        local emitters = FX.GetEffect(subtype, "", "EmittersCount " .. i)
        for j = 0, emitters - 1 do
          FX.SetEffect(subtype, "", "EmitterLinkToNode " .. i .. "," .. j .. " " .. entityName .. "#" .. nodeName)
          FX.SetEffect(subtype, "", "EmitterMatrixTranslation " .. i .. "," .. j .. "," .. pos:str3())
          FX.SetEffect(subtype, "", "EmitterMatrixEuler " .. i .. "," .. j .. "," .. ang:str3())
        end
      end
    elseif linktype == "Position" then
      local nodePos = FX.GetNodePosition(entityName, nodeName)
      pos = pos + nodePos
      FX.SetEffect(subtype, "", "MatrixTranslation " .. pos:str3())
      FX.SetEffect(subtype, "", "MatrixEuler " .. ang:str3())
    end
  end
end

function Effects.FXBeginEffectSceneStatic(entityName, params)
  local paramList = Game.Split(params, ",")
  local name = paramList[1]
  local subtype = "EFFECT_PARTICLES\183" .. paramList[2]
  local pos = V3D(paramList[3], paramList[4], paramList[5])
  local ang = V3D(paramList[6], paramList[7], paramList[8])
  if FX.BeginEffect(subtype, name) then
    FX.SetEffect(subtype, "", "MatrixTranslation " .. pos:str3())
    FX.SetEffect(subtype, "", "MatrixEuler " .. ang:str3())
  end
end

function Effects.FXSceneLight(entityName, params)
  local paramList = Game.Split(params, ",")
  local name = paramList[1]
  local fStack = paramList[2]
  local intensity = paramList[3]
  local time = paramList[4]
  local light = Game.GetEntity(name)
  local onEnd = ""
  print(paramList[5])
  if paramList[5] == nil or paramList[5] == "" or paramList[5] == "Turn off" then
    onEnd = "Effects.FXSceneLightOnEnd"
  end
  if light then
    light.bLightEnable00 = true
    light.LightIntens00 = 0
    MissionUtils.DoInterpTgt(light, {
      [1] = time + 0,
      [2] = fStack,
      LightIntens00 = intensity + 0
    }, onEnd)
  end
end

function Effects.FXSceneLightOnEnd(modifier)
  print("OnEnddd" .. modifier.OnEnd)
  if modifier.oValues[1].oObject then
    modifier.oValues[1].oObject.bLightEnable00 = false
  end
end

function Effects.FXMoreMaticsOff()
  FX.EndEffect("EFFECT_BLOOD")
end
