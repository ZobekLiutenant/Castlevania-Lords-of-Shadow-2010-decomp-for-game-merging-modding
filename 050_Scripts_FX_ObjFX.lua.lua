function ObjFX.main()
end

function ObjFX.Preload()
  ObjFX.PhysicObjInitFX()
end

ObjFX.MaterialBreakFX = {
  WOOD = {
    MEDIUM = "fx/Objects/wood_medium.ps.xml",
    BIG = "fx/Objects/wood_big.ps.xml",
    PUMPKIN = "fx/Objects/pumpkin.ps.xml"
  },
  STONE = {
    MEDIUM = "fx/Objects/stone_medium.ps.xml",
    BIG = "fx/Objects/stone_big.ps.xml"
  },
  DRYGRASS = {
    MEDIUM = "fx/Objects/wood_medium.ps.xml"
  },
  BOOK = {SMALL = nil, MEDIUM = nil},
  METAL = {
    MEDIUM = "fx/Objects/metal_medium.ps.xml",
    CHESS = "fx/WarGame/piece_break.ps.xml"
  }
}

function ObjFX.PhysicObjInitFX()
  for materialName, materialTable in pairs(ObjFX.MaterialBreakFX) do
    for shapeName, effectFile in pairs(materialTable) do
      if effectFile then
        FX.InitEffect("EFFECT_PARTICLES\183BREAKOBJFX" .. materialName .. shapeName, 3, effectFile .. ",0,1")
      end
    end
  end
end

function ObjFX.PhysicObjDeathFX(EntityName)
  local entity = Game.GetEntity(EntityName)
  local materialName = entity.SurfaceStr
  local shapeName = entity.uData.ApproxShape
  local materialTable = ObjFX.MaterialBreakFX[materialName]
  if materialTable == nil then
    return
  end
  local effectFile = materialTable[shapeName]
  if effectFile == nil then
    return
  end
  local effect = "EFFECT_PARTICLES\183BREAKOBJFX" .. materialName .. shapeName
  local pos = FX.GetNodePosition(EntityName, "DC_Root")
  if FX.BeginEffect(effect, "") then
    FX.SetEffect(effect, "", "MatrixTranslation " .. pos:str3())
  end
end

ObjFX.BreakableObjects = {}

function ObjFX.FXBreakBlockAdvert(entity)
  if entity == nil then
    return
  end
  local table = ObjFX.BreakableObjects[entity.ActCtrl]
  if table == nil then
    return
  end
  local effect = table[3]
  if effect ~= nil and FX.IsEffect("EFFECT_PARTICLES\183" .. effect, "BreakPeriodic_" .. entity.Name) then
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "BreakPeriodic_" .. entity.Name, "BirthEnabledAll 0")
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "BreakPeriodic_" .. entity.Name, "LifeTimeRemain 1")
  end
  effect = table[1]
  if effect ~= nil and FX.BeginEffect("EFFECT_PARTICLES\183" .. effect, "BreakAdvert_" .. entity.Name) then
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "", "MatrixTranslation " .. entity.Pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "", "MatrixEuler " .. entity.Ang:torad():str3())
  end
end

function ObjFX.FXBreakBlockNow(entity)
  if entity == nil then
    return
  end
  local table = ObjFX.BreakableObjects[entity.ActCtrl]
  if table == nil then
    return
  end
  local effect = table[1]
  if effect ~= nil and FX.IsEffect("EFFECT_PARTICLES\183" .. effect, "BreakAdvert_" .. entity.Name) then
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "BreakAdvert_" .. entity.Name, "BirthEnabledAll 0")
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "BreakAdvert_" .. entity.Name, "LifeTimeRemain 1")
  end
  effect = table[2]
  if effect ~= nil and FX.BeginEffect("EFFECT_PARTICLES\183" .. effect, "") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "", "MatrixTranslation " .. entity.Pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "", "MatrixEuler " .. entity.Ang:torad():str3())
  end
end

ObjFX.ChargeBreakableObjects = {}

function ObjFX.FXChargeBreakableSetup(entity)
  if entity == nil then
    return
  end
  if entity.Action ~= "Closed" then
    return
  end
  local table = ObjFX.ChargeBreakableObjects[entity.ActCtrl]
  if table == nil then
    return
  end
  local effect = table[3]
  if effect ~= nil and FX.BeginEffect("EFFECT_PARTICLES\183" .. effect, "ChargeBreakablePeriodic_" .. entity.Name) then
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "", "MatrixTranslation " .. entity.Pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "", "MatrixEuler " .. entity.Ang:torad():str3())
  end
end

function ObjFX.FXChargeBreakableDamage(entity)
  if entity == nil then
    return
  end
  local table = ObjFX.ChargeBreakableObjects[entity.ActCtrl]
  if table == nil then
    return
  end
  local effect = table[1]
  if effect == nil then
    return
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. effect, "") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "", "MatrixTranslation " .. entity.Pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "", "MatrixEuler " .. entity.Ang:torad():str3())
  end
end

function ObjFX.FXChargeBreakableBreak(entity)
  if entity == nil then
    return
  end
  local table = ObjFX.ChargeBreakableObjects[entity.ActCtrl]
  if table == nil then
    return
  end
  local effect = table[2]
  if effect ~= nil and FX.BeginEffect("EFFECT_PARTICLES\183" .. effect, "") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "", "MatrixTranslation " .. entity.Pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "", "MatrixEuler " .. entity.Ang:torad():str3())
  end
  effect = table[3]
  if effect ~= nil and FX.IsEffect("EFFECT_PARTICLES\183" .. effect, "ChargeBreakablePeriodic_" .. entity.Name) then
    FX.SetEffect("EFFECT_PARTICLES\183" .. effect, "ChargeBreakablePeriodic_" .. entity.Name, "BirthEnabledAll 0")
  end
end

function ObjFX.OnChange(tipo, entity)
  if tipo == "Goteras" then
    local t = "ObjFX_PS_" .. entity.Name .. "_gotera"
    if FX.IsEffect("EFFECT_PARTICLESYSTEM", t) then
      FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "BirthRate 0,0," .. entity.uDataBirthRate)
    end
  end
end

function ObjFX.Build_ParticleSystem(entity)
end

function ObjFX.Destroy_ParticleSystem(entity)
end

function ObjFX.Ciclo(entityName)
  local entity = Game.GetEntity(entityName)
  if not entity then
    return
  end
  local effect_name = "ObjFX_PS_" .. entityName
  FX.SetEffect("EFFECT_PARTICLESYSTEM", effect_name, "ResetDynamicEmitters")
  FX.SetEffect("EFFECT_PARTICLESYSTEM", effect_name, "Active")
  local sonido = entity.uDataSound
  local vol = entity.uDataSoundVol
  if sonido and vol then
    local index = math.random(entity.uDataSoundNum)
    Sound.PlaySound(entity.Pos, sonido[index], vol)
  end
  local timeToLaunch = Game.GetTime() + (entity.uDataMinDelay + math.random() * entity.uDataRandDelay)
  Game.AddScheduledFunc(timeToLaunch, "", "ObjFX.Ciclo", entityName)
end

function ObjFX.Build_Sparks(entity)
  local t = "ObjFX_PS_" .. entity.Name
  local sparks
  if entity.uDataMode == "Metal" then
    sparks = "spark_metal.ps.xml"
  elseif entity.uDataMode == "Electric" then
    sparks = "spark_electric.ps.xml"
  end
  FX.BeginEffect("EFFECT_PARTICLESYSTEM", t, "FX/Sparks/" .. sparks)
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "EmitterLinkToNode 0,0 " .. entity.Name .. "#DC_ROOT")
  entity.uDataMinDelay = 2
  entity.uDataRandDelay = 0.5
  ObjFX.Ciclo(entity.Name)
end

function ObjFX.Destroy_Sparks(entity)
  local t = "ObjFX_PS_" .. entity.Name
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "EmitterUnlink 0,0")
  FX.EndEffect("EFFECT_PARTICLESYSTEM", t)
end

function ObjFX.Build_Goteras(entity)
  local name = entity.Name
  local charco, gotera
  if entity.uDataMode == "Normal" then
    charco = "charco.ps.xml"
    gotera = "gotera.ps.xml"
  else
    charco = "charco_dudv.ps.xml"
    gotera = "gotera_dudv.ps.xml"
  end
  local t
  t = "ObjFX_PS_" .. name .. "_charco"
  FX.BeginEffect("EFFECT_PARTICLESYSTEM", t, "FX/BloodPuddle/" .. charco)
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "EmitterLinkToNode 0,0 " .. name .. "#DC_ROOT")
  t = "ObjFX_PS_" .. name .. "_gotera"
  FX.BeginEffect("EFFECT_PARTICLESYSTEM", t, "FX/BloodPuddle/" .. gotera)
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "EmitterLinkToNode 0,0 " .. name .. "#DC_ROOT")
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "BirthRate 0,0," .. entity.uDataBirthRate)
  local v1 = entity.Pos
  local v2 = V3D(v1.x, v1.y, v1.z)
  v2.y = v2.y - 9999
  local hit = Game.TestLine(v1, v2, "")
end

function ObjFX.Destroy_Goteras(entity)
  local name = entity.Name
  local t
  t = "ObjFX_PS_" .. name .. "_charco"
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "EmitterUnlink 0,0")
  FX.EndEffect("EFFECT_PARTICLESYSTEM", t)
  t = "ObjFX_PS_" .. name .. "_gotera"
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "EmitterUnlink 0,0")
  FX.EndEffect("EFFECT_PARTICLESYSTEM", t)
end

ObjFX.lightshaftcount = {
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0
}

function ObjFX.Type_LightShaft(Type)
  local index, shaft
  if Type == "NormalCubo" then
    shaft = "lightshaft1.ps.xml"
    index = 1
  elseif Type == "PequenoCubo" then
    shaft = "lightshaft2.ps.xml"
    index = 2
  elseif Type == "NormalEsfera" then
    shaft = "lightshaft3.ps.xml"
    index = 3
  elseif Type == "PequenoEsfera" then
    shaft = "lightshaft4.ps.xml"
    index = 4
  elseif Type == "GrandeCubo" then
    shaft = "lightshaft5.ps.xml"
    index = 5
  elseif Type == "Rom_Square" then
    shaft = "LightShaftRomSquare.ps.xml"
    index = 6
  elseif Type == "Rom_Hemispheric" then
    shaft = "LightShaftRomHemi.ps.xml"
    index = 7
  elseif Type == "Rom_HemiLarge" then
    shaft = "LightShaftRomHemiLarge.ps.xml"
    index = 8
  elseif Type == "Sum_LittleSquare" then
    shaft = "LightShaftSumLittleSquare.ps.xml"
    index = 9
  elseif Type == "Sum_BigSquare" then
    shaft = "LightShaftSumBigSquare.ps.xml"
    index = 10
  elseif Type == "Sum_DobleSquare" then
    shaft = "LightShaftSumDoubleSquare.ps.xml"
    index = 11
  elseif Type == "Sum_Sphere" then
    shaft = "LightShaftSumSphere.ps.xml"
    index = 12
  else
    return nil
  end
  return {index, shaft}
end

function ObjFX.Build_LightShaft(entity)
  local name = entity.Name
  local mode = entity.uDataMode
  if mode == nil then
    return
  end
  local tb = ObjFX.Type_LightShaft(mode)
  if tb == nil then
    return
  end
  local index = tb[1]
  local shaft = tb[2]
  local t
  t = "ObjFX_PS_" .. index .. "_shaft"
  local ttype = "EFFECT_PARTICLES\183LIGHTSHAFT" .. index
  if ObjFX.lightshaftcount[index] == 0 then
    FX.InitEffect(ttype, 1, "FX/LightShaft/" .. shaft)
    if FX.BeginEffect(ttype, t, "") then
      FX.SetEffect(ttype, t, "LinkToNode " .. name .. "#DC_ROOT")
      FX.SetEffect(ttype, t, "Preload 30 2.0")
    end
  else
    FX.SetEffect(ttype, t, "InsertInstances 1")
    FX.SetEffect(ttype, t, "InstanceLinkToNode " .. ObjFX.lightshaftcount[index] .. " " .. name .. "#DC_ROOT")
  end
  entity.uDataInstanceIndex = ObjFX.lightshaftcount[index]
  ObjFX.lightshaftcount[index] = ObjFX.lightshaftcount[index] + 1
end

function ObjFX.Destroy_LightShaft(entity)
  local mode = entity.uDataMode
  if mode == nil then
    return
  end
  local tb = ObjFX.Type_LightShaft(mode)
  if tb == nil then
    return
  end
  local index = tb[1]
  local shaft = tb[2]
  local ttype = "EFFECT_PARTICLES\183LIGHTSHAFT" .. index
  local t = "ObjFX_PS_" .. index .. "_shaft"
  FX.SetEffect(ttype, t, "InstanceUnlink " .. entity.uDataInstanceIndex)
  FX.SetEffect(ttype, t, "ActiveInstance " .. ObjFX.lightshaftcount[index] .. ",0")
end

function ObjFX.Build_Antorcha(entityName, type, dummy, bSmoke)
  local t
  t = "ObjFX_" .. entityName .. "_B"
  FX.BeginEffect("EFFECT_PARTICLESYSTEM", t, "FX/Antorchas/" .. type .. "_dynamic.PS.xml")
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "EmitterLinkToNode 0,0 " .. entityName .. "#" .. dummy)
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "EmitterLinkToNode 1,0 " .. entityName .. "#" .. dummy)
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "Preload 5 0.2")
  if bSmoke == false then
    FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "BirthEnabled 1,0,0")
  end
  t = "ObjFX_" .. entityName .. "_A"
  FX.BeginEffect("EFFECT_PARTICLESYSTEM", t, "FX/Antorchas/" .. type .. "_static.PS.xml")
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "LinkToNode " .. entityName .. "#" .. dummy)
end

function ObjFX.Destroy_Antorcha(entityName)
  local t
  t = "ObjFX_" .. entityName .. "_B"
  FX.EndEffect("EFFECT_PARTICLESYSTEM", t)
  t = "ObjFX_" .. entityName .. "_A"
  FX.EndEffect("EFFECT_PARTICLESYSTEM", t)
end

function ObjFX.Build_Antorcha01(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch1", "DF_Fuego00", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Antorcha01(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Antorcha01Plus(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch1", "DF_Fuego06", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Antorcha01Plus(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Antorcha02(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch2", "DF_Fuego01", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Antorcha02(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Antorcha02Plus(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch2", "DF_Fuego05", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Antorcha02Plus(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Antorcha03(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch1", "DF_Fuego02", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Antorcha03(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Antorcha03Plus(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch1", "DF_Fuego04", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Antorcha03Plus(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Antorcha04Plus(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch1", "DF_Fuego08", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Antorcha04Plus(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Antorcha05(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch1", "DF_Fuego03", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Antorcha05(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Antorcha05Plus(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch1", "DF_Fuego07", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Antorcha05Plus(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Antorcha_matias00(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch1", "DF_Fuego10", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Antorcha_matias00(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Hoguera00(entity)
  ObjFX.Build_Antorcha(entity.Name, "Hogera00", "DF_Fuego20", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Hoguera00(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_WWII_Hoguera_A(entity)
  ObjFX.Build_Antorcha(entity.Name, "Hogera00", "DF_Burst", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_WWII_Hoguera_A(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_WWII_Hoguera_B(entity)
  ObjFX.Build_Antorcha(entity.Name, "Hogera01", "DF_Burst", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_WWII_Hoguera_B(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_WWII_Hoguera_C(entity)
  ObjFX.Build_Antorcha(entity.Name, "Hogera00", "DF_Burst", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_WWII_Hoguera_C(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Rom_torch_00(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch3", "DF_Fuego04XX", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Rom_torch_00(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Rom_torch_01(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch4", "DF_Fuego04XX", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Rom_torch_01(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Rom_torch_02(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch4", "DF_Fuego04XX", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Rom_torch_02(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Rom_torch_03(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch5", "DF_Fuego04XX", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Rom_torch_03(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Rom_torch_04(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch3", "DF_Fuego04XX", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Rom_torch_04(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Rom_torch_05(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch8", "DF_Fuego04XX", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Rom_torch_05(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Rom_torch_06(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch6", "DF_Fuego04XX", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Rom_torch_06(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Rom_torch_07(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch7", "DF_Fuego04XX", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Rom_torch_07(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Rom_torch_08(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch6", "DF_Fuego04XX", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Rom_torch_08(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Rom_torch_09(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch11", "DC_ROOT", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Rom_torch_09(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_LapidaAntorcha00(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch9", "DF_Fuego21", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_LapidaAntorcha00(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Rom_LapidaAntorcha00(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch9", "DF_Fuego21", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Rom_LapidaAntorcha00(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Alk_Goretorch_C(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch10", "DF_Fuego", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Alk_Goretorch_C(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Alk_Goretorch_B(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch10", "DF_Fuego", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Alk_Goretorch_B(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Alk_Goretorch_C(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch10", "DF_Fuego", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Alk_Goretorch_C(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Alk_Goretorch_A(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch10", "DF_Fuego", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Alk_Goretorch_A(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Sum_Antorcha_A(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch1", "DF_Fuego_A", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Sum_Antorcha_A(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Sum_Antorcha_B(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch1", "DF_Fuego_B", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Sum_Antorcha_B(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Sum_Antorcha_C(entity)
  ObjFX.Build_Antorcha(entity.Name, "torch3", "DF_Fuego_C", entity.uDataSmokeEnable)
end

function ObjFX.Destroy_Sum_Antorcha_C(entity)
  ObjFX.Destroy_Antorcha(entity.Name)
end

function ObjFX.Build_Debris(entity)
  local t = "ObjFX_PS_" .. entity.Name
  local effect
  if entity.uDataMode == "Floor1" then
    effect = "FX/Debris/debris_floor.ps.xml"
  elseif entity.uDataMode == "Ceiling1" then
    effect = "FX/Debris/debris_ceiling.ps.xml"
  elseif entity.uDataMode == "Floor2" then
    effect = "FX/Debris/debris_floor2.ps.xml"
  elseif entity.uDataMode == "Ceiling2" then
    effect = "FX/Debris/debris_ceiling2.ps.xml"
  elseif entity.uDataMode == "Door_Close" then
    effect = "FX/Debris/loseta_cierre.ps.xml"
  elseif entity.uDataMode == "Door_Open" then
    effect = "FX/Debris/loseta_apertura.ps.xml"
  end
  FX.BeginEffect("EFFECT_PARTICLESYSTEM", t, effect)
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "LinkToNode " .. entity.Name .. "#DC_ROOT")
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "ResetDynamicEmitters")
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "DeActivate")
end

function ObjFX.Destroy_Debris(entity)
  local t = "ObjFX_PS_" .. entity.Name
  FX.EndEffect("EFFECT_PARTICLESYSTEM", t)
end

ObjFX.Rom_Blood_Cascade_Count = {
  0,
  0,
  0
}

function ObjFX.Build_Rom_Blood_Cascade(entity)
  local name = entity.Name
  local index, effect
  if entity.uDataMode == "BloodFall" then
    effect = "FX/Blood/Blood_cascade_rom.ps.xml"
    index = 1
  elseif entity.uDataMode == "BloodFallShort" then
    effect = "FX/Blood/Blood_cascade_rom_short.ps.xml"
    index = 2
  elseif entity.uDataMode == "Floor" then
    effect = "FX/Blood/Blood_cas_floor.ps.xml"
    index = 3
  end
  local t
  t = "ObjFX_PS_" .. index .. "_bloodfall"
  if ObjFX.Rom_Blood_Cascade_Count[index] == 0 then
    FX.BeginEffect("EFFECT_PARTICLESYSTEM", t, effect)
    FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "LinkToNode " .. name .. "#DC_ROOT")
  else
    FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "InsertInstances 1")
    FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "InstanceLinkToNode " .. ObjFX.Rom_Blood_Cascade_Count[index] .. " " .. name .. "#DC_ROOT")
  end
  entity.uDataInstanceIndex = ObjFX.Rom_Blood_Cascade_Count[index]
  ObjFX.Rom_Blood_Cascade_Count[index] = ObjFX.Rom_Blood_Cascade_Count[index] + 1
end

function ObjFX.Destroy_Rom_Blood_Cascade(entity)
  local name = entity.Name
  local mode = entity.uDataMode
  local index
  if entity.uDataMode == "BloodFall" then
    index = 1
  elseif entity.uDataMode == "BloodFallShort" then
    index = 2
  elseif entity.uDataMode == "Floor" then
    index = 3
  end
  local t = "ObjFX_PS_" .. index .. "_bloodfall"
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "InstanceUnlink " .. entity.uDataInstanceIndex)
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "ActiveInstance " .. ObjFX.Rom_Blood_Cascade_Count[index] .. ",0")
end

ObjFX.Steam_Count = {
  0,
  0,
  0
}

function ObjFX.Build_Steam(entity)
  local effect, index
  local mode = entity.uDataMode
  if mode == "White" then
    effect = "white_steam.ps.xml"
    index = 1
  elseif mode == "Red" then
    effect = "red_steam.ps.xml"
    index = 2
  elseif mode == "Green" then
    effect = "green_steam.ps.xml"
    index = 3
  end
  local t = "ObjFX_PS_" .. index .. "_Steam"
  if ObjFX.Steam_Count[index] == 0 then
    FX.InitEffect("EFFECT_PARTICLES\183OBJFXSTEAM" .. mode, 1, "FX/Steam/" .. effect)
    if FX.BeginEffect("EFFECT_PARTICLES\183OBJFXSTEAM" .. mode, t) then
      FX.SetEffect("EFFECT_PARTICLES\183OBJFXSTEAM" .. mode, t, "LinkToNode " .. entity.Name .. "#DC_ROOT")
    end
  else
    FX.SetEffect("EFFECT_PARTICLES\183OBJFXSTEAM" .. mode, t, "InsertInstances 1")
    FX.SetEffect("EFFECT_PARTICLES\183OBJFXSTEAM" .. mode, t, "InstanceLinkToNode " .. ObjFX.Steam_Count[index] .. " " .. entity.Name .. "#DC_ROOT")
  end
  entity.uDataInstanceIndex = ObjFX.Steam_Count[index]
  ObjFX.Steam_Count[index] = ObjFX.Steam_Count[index] + 1
end

function ObjFX.Destroy_Steam(entity)
  local mode = entity.uDataMode
  local index
  if entity.uDataMode == "White" then
    index = 1
  elseif entity.uDataMode == "Red" then
    index = 2
  elseif entity.uDataMode == "Green" then
    index = 3
  end
  local t = "ObjFX_PS_" .. index .. "_Steam"
  FX.SetEffect("EFFECT_PARTICLES\183OBJFXSTEAM" .. mode, t, "InstanceUnlink " .. entity.uDataInstanceIndex)
  FX.SetEffect("EFFECT_PARTICLES\183OBJFXSTEAM" .. mode, t, "ActiveInstance " .. ObjFX.Steam_Count[index] .. ",0")
end

function ObjFX.Build_Lightings(entity)
  local t = "ObjFX_PS_" .. entity.Name
  if FX.BeginEffect("EFFECT_PARTICLESYSTEM", t, "FX/Lightings/lighting.ps.xml") then
    FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "LinkToNode " .. entity.Name .. "#DC_ROOT")
    ObjFX.Ciclo(entity.Name)
  end
end

function ObjFX.Destroy_Lightings(entity)
  local t = "ObjFX_PS_" .. entity.Name
  if FX.IsEffect("EFFECT_PARTICLESYSTEM", t) then
    FX.EndEffect("EFFECT_PARTICLESYSTEM", t)
  end
end

function ObjFX.Build_Electrics(entity)
  local t = "ObjFX_PS_" .. entity.Name
  if FX.BeginEffect("EFFECT_PARTICLESYSTEM", t, "FX/Lightings/arco_voltaico.ps.xml") then
    FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "EmitterLinkToNode 0,0 " .. entity.Name .. "#DC_ROOT")
  end
  entity.uDataMinDelay = 2
  entity.uDataRandDelay = 0.5
  Sound.LoadSound("Sounds/FX/electrics.wav")
  Sound.LoadSound("Sounds/FX/electrics1.wav")
  Sound.LoadSound("Sounds/FX/electrics2.wav")
  entity.uDataSound = {
    "electrics",
    "electrics1",
    "electrics2"
  }
  entity.uDataSoundNum = 3
  entity.uDataSoundVol = 0.2
  ObjFX.Ciclo(entity.Name)
end

function ObjFX.Destroy_Electrics(entity)
  local t = "ObjFX_PS_" .. entity.Name
  FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "EmitterUnlink 0,0")
  FX.EndEffect("EFFECT_PARTICLESYSTEM", t)
end

function ObjFX.ActivateFX(name, time)
  local t = "ObjFX_PS_" .. name
  if FX.IsEffect("EFFECT_PARTICLESYSTEM", t) ~= nil then
    FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "ResetDynamicEmitters")
    FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "Activate")
  end
  if time then
    Game.AddScheduledFunc(Game.GetTime() + time, "", "ObjFX.DeActivateFX", name)
  end
end

function ObjFX.DeActivateFX(name)
  local t = "ObjFX_PS_" .. name
  if FX.IsEffect("EFFECT_PARTICLESYSTEM", t) ~= nil then
    FX.EndEffect("EFFECT_PARTICLESYSTEM", t)
  end
end

function ObjFX.DeActivateTempFX(name)
  local t = "ObjFX_PS_" .. name
  if FX.IsEffect("EFFECT_PARTICLESYSTEM", t) ~= nil then
    FX.SetEffect("EFFECT_PARTICLESYSTEM", t, "DeActivate")
  end
end
