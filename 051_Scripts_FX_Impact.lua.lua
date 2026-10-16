Impact.DistLOD = 1500
Impact.Surfaces = {
  "Stone",
  "Wood",
  "Metal",
  "Ground",
  "Mud",
  "QuickSands",
  "DryGrass",
  "Grass",
  "Glass",
  "Water",
  "Carpet",
  "Ice",
  "Snow",
  "Leaves",
  "Wetstone",
  "Nightmud",
  "Book",
  "MudFog",
  "Ashes",
  "WoodEQ",
  "WebEQ"
}
Impact.Types = {
  Unknown = {
    15,
    "FX/Impact/Unknown/",
    0
  },
  ["FootStep/Stone"] = {
    25,
    "FX/Impact/FootStep/Stone/",
    0
  },
  ["FootStep/Wood"] = {
    25,
    "FX/Impact/FootStep/Wood/",
    0
  },
  ["FootStep/Metal"] = {
    25,
    "FX/Impact/FootStep/Metal/",
    0
  },
  ["FootStep/Ground"] = {
    25,
    "FX/Impact/FootStep/Ground/",
    0
  },
  ["FootStep/Mud"] = {
    25,
    "FX/Impact/FootStep/Mud/",
    0
  },
  ["FootStep/Glass"] = {
    25,
    "FX/Impact/FootStep/Glass/",
    0
  },
  ["FootStep/Water"] = {
    25,
    "FX/Impact/FootStep/Water/",
    0
  },
  ["FootStep/Carpet"] = {
    25,
    "FX/Impact/FootStep/Carpet/",
    0
  },
  ["FootStep/Ice"] = {
    25,
    "FX/Impact/FootStep/Ice/",
    0
  },
  ["FootStep/Snow"] = {
    25,
    "FX/Impact/FootStep/Snow/",
    0
  },
  ["FootStep/Leaves"] = {
    25,
    "FX/Impact/FootStep/Leaves/",
    0
  },
  ["FootStep/Ashes"] = {
    25,
    "FX/Impact/FootStep/Ashes/",
    0
  },
  ["Splash/Stone"] = {
    25,
    "FX/Impact/Splash/Stone/",
    0
  },
  ["Splash/Wood"] = {
    25,
    "FX/Impact/Splash/Wood/",
    0
  },
  ["Splash/Metal"] = {
    25,
    "FX/Impact/Splash/Metal/",
    0
  },
  ["Splash/Ground"] = {
    25,
    "FX/Impact/Splash/Ground/",
    0
  },
  ["Splash/Mud"] = {
    25,
    "FX/Impact/Splash/Mud/",
    0
  },
  ["Splash/Glass"] = {
    25,
    "FX/Impact/Splash/Glass/",
    0
  },
  ["Splash/Water"] = {
    25,
    "FX/Impact/Splash/Water/",
    0
  },
  ["Splash/Carpet"] = {
    25,
    "FX/Impact/Splash/Carpet/",
    0
  },
  ["Splash/Ice"] = {
    25,
    "FX/Impact/Splash/Ice/",
    0
  },
  ["Splash/Snow"] = {
    25,
    "FX/Impact/Splash/Snow/",
    0
  },
  ["Splash/Leaves"] = {
    25,
    "FX/Impact/Splash/Leaves/",
    0
  },
  ["Splash/Ashes"] = {
    25,
    "FX/Impact/Splash/Ashes/",
    0
  },
  ["Wall/Stone"] = {
    15,
    "FX/Impact/Wall/Stone/",
    0
  },
  ["Wall/Wood"] = {
    15,
    "FX/Impact/Wall/Wood/",
    0
  },
  ["Wall/Metal"] = {
    15,
    "FX/Impact/Wall/Metal/",
    0
  },
  ["Wall/Ground"] = {
    15,
    "FX/Impact/Wall/Ground/",
    0
  },
  ["Wall/Mud"] = {
    15,
    "FX/Impact/FootStep/Mud/",
    0
  },
  ["Wall/Glass"] = {
    15,
    "FX/Impact/Wall/Glass/",
    0
  },
  ["Wall/Water"] = {
    15,
    "FX/Impact/FootStep/Water/",
    0
  },
  ["Wall/Carpet"] = {
    15,
    "FX/Impact/Wall/Carpet/",
    0
  },
  ["Wall/Ice"] = {
    15,
    "FX/Impact/Wall/Ice/",
    0
  },
  ["Wall/Snow"] = {
    15,
    "FX/Impact/Wall/Snow/",
    0
  },
  ["Wall/Leaves"] = {
    20,
    "FX/Impact/Wall/Leaves/",
    0
  },
  ["Wall/Book"] = {
    15,
    "FX/Impact/Wall/Book/",
    0
  },
  ["Wall/Ashes"] = {
    15,
    "FX/Impact/Wall/Ashes/",
    0
  }
}
Impact.ObjectTypes = {
  ["Object/Sparks"] = {
    10,
    "",
    "FX/Impact/Object/Sparks/free.ps.xml"
  },
  ["Object/STONE"] = {
    5,
    "FX/Impact/Object/Metal/link.ps.xml",
    "FX/Impact/Object/Metal/free.ps.xml"
  }
}

function Impact.Preload()
  Impact.BuildImpacts_Objects(Impact.ObjectTypes)
  Impact.BuildImpacts()
  FX.InitEffect("EFFECT_PARTICLES\183PUSH_OBJECT", 2, "fx/pushobject/dust.ps.xml,0,1")
end

function Impact.main()
end

function Impact.BuildDecals()
  local i
  for i in pairs(Impact.Types) do
    Impact.BuildDecal(i)
  end
end

function Impact.BuildImpacts()
  local i
  for i in pairs(Impact.Types) do
    Impact.BuildImpact(i)
  end
end

function Impact.BuildDecal(Type)
  local impact = Impact.Types[Type]
  local pool = impact[1]
  local folder = impact[2]
  local decal = impact[3]
  if decal == 1 then
    FX.InitEffect("EFFECT_DECALSYSTEM", 1)
    FX.BeginEffect("EFFECT_DECALSYSTEM", "DECALSYS_" .. Type, folder .. "decal.ps.xml")
  end
end

function Impact.BuildImpact(Type)
  local impact = Impact.Types[Type]
  local pool = impact[1]
  local folder = impact[2]
  local decal = impact[3]
  FX.InitEffect("EFFECT_IMPACT\183" .. Type, pool, folder .. "link.ps.xml" .. "#" .. folder .. "free.ps.xml")
end

Impact.LastImpactType = nil

function Impact.DoImpact(Type, Params)
  if Type == nil then
    return false
  end
  if FX.BeginEffect("EFFECT_IMPACT\183" .. Type, "", Params) ~= nil then
    Impact.LastImpactType = Type
    return true
  else
    Impact.LastImpactType = nil
    print("Impact can't Do: ", Type, Params)
  end
  return false
end

function Impact.DoImpact_SetLast(Set)
  if Impact.LastImpactType ~= nil then
    FX.SetEffect("EFFECT_IMPACT\183" .. Impact.LastImpactType, "", Set)
  end
end

function Impact.DoDecal(Type)
  if FX.IsEffect("EFFECT_DECALSYSTEM", "DECALSYS_" .. Type) then
    FX.SetEffect("EFFECT_DECALSYSTEM", "DECALSYS_" .. Type, "DoFLW")
    return true
  end
  return false
end

function Impact.BuildImpacts_MapEffects(types)
  local i
  for i in pairs(types) do
    local impact = types[i]
    local Type = i
    local pool = impact[1]
    local link = impact[2]
    local free = impact[3]
    local params = link .. "#" .. free
    FX.InitEffect("EFFECT_IMPACT\183" .. i, pool, params)
  end
end

function Impact.BuildImpacts_Objects(types)
  local i
  for i in pairs(types) do
    local impact = types[i]
    local Type = i
    local pool = impact[1]
    local link = impact[2]
    local free = impact[3]
    local params = link .. "#" .. free
    FX.InitEffect("EFFECT_IMPACT\183" .. i, pool, params)
  end
end

function Impact.DoBodyRemainExplosion(EntityName)
  local ent = Game.GetEntity(EntityName)
  if ent then
    local pos = ent.Pos
    if FX.BeginEffect("EFFECT_PARTICLES\183IMPACT_FLESH", "") then
      FX.SetEffect("EFFECT_PARTICLES\183IMPACT_FLESH", "", "MatrixTranslation " .. pos:str3())
    end
    ent:Del()
  end
end

function Impact.TestLOD(pos, tipo)
  local tipoFinal = tipo
  if pos then
    local dist = pos - Game.GetActiveCamPos()
    local tdist = math.abs(dist.x) + math.abs(dist.y) + math.abs(dist.z)
    if tdist > Impact.DistLOD and Impact.Types[tipo .. "_LOD"] then
      tipoFinal = tipo .. "_LOD"
    end
  end
  return tipoFinal
end

function Impact.DoFootStep(EntityName, NodeName)
  local posIni = FX.GetNodePosition(EntityName, NodeName) + V3D(0, 150, 0)
  local posEnd = posIni - V3D(0, 200, 0)
  local hit, norm, material = Game.TestLine(posIni, posEnd, "", "", true, true)
  if hit ~= nil and type(material) == "number" and 0 < material then
    Impact.DoImpact(FootStep.SurfaceFootStep[material], "DoFixed " .. hit:str3() .. ",(0,1,0)")
  end
end

function Impact.Splash(EntityName, NodeName)
  if NodeName == nil then
    NodeName = "DC_Root"
  end
  local pos = FX.GetNodePosition(EntityName, NodeName)
  if pos == nil then
    pos = FX.GetNodePosition(EntityName, "DC_Root")
  end
  local posIni = pos + V3D(0, 50, 0)
  local posEnd = posIni - V3D(0, 300, 0)
  local hit, norm, material = Game.TestLine(posIni, posEnd, "", "", true, true)
  if hit ~= nil and type(material) == "number" and 0 < material then
    local surface = Impact.Surfaces[material]
    if surface ~= nil then
      Impact.DoImpact("Splash/" .. surface, "DoFixed " .. hit:str3() .. ",(0,1,0)")
      SoundUtils.FXPlaySound("Belmont", "Splash_" .. surface, hit)
    end
  end
end

function Impact.SplashEvent(entityName, params)
  local paramList = Game.Split(params, ",")
  if paramList ~= nil and paramList[1] ~= "" then
    Impact.Splash(entityName, paramList[1])
  end
end

function Impact.GripEffect(EffectType, EntityName, NodeName, PosOffset, AngOffset)
  local ang = FX.GetNodeEuler(EntityName, NodeName)
  local pos = FX.GetNodePosition(EntityName, NodeName) + PosOffset:rot(ang:todeg())
  ang = AngOffset + ang
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. EffectType, "") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. EffectType, "", "MatrixTranslation " .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. EffectType, "", "MatrixEuler " .. ang:str3())
  end
end

function Impact.GripEffectLinked(EffectType, EntityName, NodeName, PosOffset, AngOffset)
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. EffectType, "") then
    FX.SetEffect("EFFECT_PARTICLES\183" .. EffectType, "", "LinkToNode " .. EntityName .. "#" .. NodeName)
    FX.SetEffect("EFFECT_PARTICLES\183" .. EffectType, "", "MatrixTranslation " .. PosOffset:str3())
    FX.SetEffect("EFFECT_PARTICLES\183" .. EffectType, "", "MatrixEuler " .. AngOffset:str3())
  end
end

function Impact.GripEffectLinkedEmitter(EffectType, EntityName, NodeName, PosOffset, AngOffset)
  if FX.BeginEffect("EFFECT_PARTICLES\183" .. EffectType, "") then
    local batches = FX.GetEffect("EFFECT_PARTICLES\183" .. EffectType, "", "EmittersCount -1")
    FX.SetEffect("EFFECT_PARTICLES\183" .. EffectType, "", "MatrixTranslation (0,0,0)")
    FX.SetEffect("EFFECT_PARTICLES\183" .. EffectType, "", "MatrixEuler (0,0,0)")
    for i = 0, batches - 1 do
      local emitters = FX.GetEffect("EFFECT_PARTICLES\183" .. EffectType, "", "EmittersCount " .. i)
      for j = 0, emitters - 1 do
        FX.SetEffect("EFFECT_PARTICLES\183" .. EffectType, "", "EmitterLinkToNode " .. i .. "," .. j .. " " .. EntityName .. "#" .. NodeName)
        FX.SetEffect("EFFECT_PARTICLES\183" .. EffectType, "", "EmitterMatrixTranslation " .. i .. "," .. j .. "," .. PosOffset:str3())
        FX.SetEffect("EFFECT_PARTICLES\183" .. EffectType, "", "EmitterMatrixEuler " .. i .. "," .. j .. "," .. AngOffset:str3())
      end
    end
  end
end

function Impact.GripBlood(EntityName, NodeName, ActCtrl, PosOffset, AngOffset)
  local ang = FX.GetNodeEuler(EntityName, NodeName)
  local pos = FX.GetNodePosition(EntityName, NodeName) + PosOffset:rot(ang:todeg())
  ang = AngOffset + ang
  FXDamage.Blood(EntityName, ActCtrl, pos, V3D(0, 0, -1):rot(ang:todeg()))
end

function Impact.GripEvent(entityName, params)
  local paramList = Game.Split(params, ",")
  if paramList ~= nil then
    local linktype = paramList[1]
    local subtype = paramList[2]
    local nodeName = paramList[3]
    local offset = V3D(paramList[4], paramList[5], paramList[6])
    local ang = V3D(paramList[7], paramList[8], paramList[9])
    if linktype == "Free" then
      Impact.GripEffect(subtype, entityName, nodeName, offset, ang)
    elseif linktype == "Linked" then
      Impact.GripEffectLinked(subtype, entityName, nodeName, offset, ang)
    elseif linktype == "LinkedEmitter" then
      Impact.GripEffectLinkedEmitter(subtype, entityName, nodeName, offset, ang)
    elseif linktype == "Blood" then
      local actCtrl = subtype
      Impact.GripBlood(entityName, nodeName, actCtrl, offset, ang)
    end
  end
end
