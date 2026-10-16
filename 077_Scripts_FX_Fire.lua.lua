function Fire.Preload()
  Fire.CreateEffects()
end

function Fire.main()
end

function Fire.CreateEffects()
  FX.InitEffect("EFFECT_RAGDOLL\183CENIZAS", 10, "FX/Fire/cenizas.PS.XML")
  FX.InitEffect("EFFECT_RAGDOLL\183PAVESAS", 10, "FX/Fire/pavesas.PS.XML")
end

function Fire.FireOn(ent, duration)
  print("FIREONNNNN")
  local entityName = ent.Name
  local t = "bonzo_calima_" .. entityName
  if FX.IsEffect("EFFECT_RAGDOLL\183FIRECALIMA", t) then
    Game.DeleteScheduledFuncs("Fire_off" .. entityName)
    Fire.FireOffFinal(ent.Name)
  end
  if not FX.IsEffect("EFFECT_RAGDOLL\183FIRECALIMA", t) and FX.BeginEffect("EFFECT_RAGDOLL\183FIRECALIMA", t, entityName) ~= nil then
    FX.SetEffect("EFFECT_RAGDOLL\183FIRECALIMA", t, "LinkToEmitter")
    if ent.ActCtrl == "ChildCruzader" then
      Fire.ChildCruzaderFireFXNodesSetup("EFFECT_RAGDOLL\183FIRECALIMA", t)
    elseif ent.ActCtrl == "CultistaVolador" then
      Fire.CultistaVoladorFireFXNodesSetup("EFFECT_RAGDOLL\183FIRECALIMA", t)
    elseif ent.ActCtrl == "Legionary" then
      Fire.LegionaryFireFXNodesSetup("EFFECT_RAGDOLL\183FIRECALIMA", t)
    end
  end
  t = "bonzo_free_" .. entityName
  if not FX.IsEffect("EFFECT_RAGDOLL\183FIREFREE", t) and FX.BeginEffect("EFFECT_RAGDOLL\183FIREFREE", t, entityName) ~= nil then
    FX.SetEffect("EFFECT_RAGDOLL\183FIREFREE", t, "LinkToEmitter")
    if ent.ActCtrl == "ChildCruzader" then
      Fire.ChildCruzaderFireFXNodesSetup("EFFECT_RAGDOLL\183FIREFREE", t)
    elseif ent.ActCtrl == "CultistaVolador" then
      Fire.CultistaVoladorFireFXNodesSetup("EFFECT_RAGDOLL\183FIREFREE", t)
    elseif ent.ActCtrl == "Legionary" then
      Fire.LegionaryFireFXNodesSetup("EFFECT_RAGDOLL\183FIREFREE", t)
    end
  end
  t = "bonzo_link_" .. entityName
  if not FX.IsEffect("EFFECT_RAGDOLL\183FIRELINK", t) and FX.BeginEffect("EFFECT_RAGDOLL\183FIRELINK", t, entityName) ~= nil then
    if ent.ActCtrl == "ChildCruzader" then
      Fire.ChildCruzaderFireFXNodesSetup("EFFECT_RAGDOLL\183FIRELINK", t)
    elseif ent.ActCtrl == "CultistaVolador" then
      Fire.CultistaVoladorFireFXNodesSetup("EFFECT_RAGDOLL\183FIRELINK", t)
    elseif ent.ActCtrl == "Legionary" then
      Fire.LegionaryFireFXNodesSetup("EFFECT_RAGDOLL\183FIRELINK", t)
    end
  end
end

function Fire.FireOff(ent)
  local entityName = ent.Name
  print("FIREOFF")
  if FX.IsEffect("EFFECT_RAGDOLL\183FIRECALIMA", "bonzo_calima_" .. entityName) then
    FX.SetEffect("EFFECT_RAGDOLL\183FIRECALIMA", "bonzo_calima_" .. entityName, "AlphaFadeOutEmitterSpeed  0.5")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183FIREFREE", "bonzo_free_" .. entityName) then
    FX.SetEffect("EFFECT_RAGDOLL\183FIREFREE", "bonzo_free_" .. entityName, "AlphaFadeOutEmitterSpeed 0.5")
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183FIRELINK", "bonzo_link_" .. entityName) then
    FX.SetEffect("EFFECT_RAGDOLL\183FIRELINK", "bonzo_link_" .. entityName, "AlphaFadeOutEmitterSpeed 0.5")
    Game.AddScheduledFunc(Game.GetTime() + 3, "Fire_off" .. entityName, "Fire.FireOffFinal", ent.Name)
  end
end

function Fire.FireOffFinal(entityName)
  print("FIREOFFFFFFFFF")
  if FX.IsEffect("EFFECT_RAGDOLL\183FIRECALIMA", "bonzo_calima_" .. entityName) then
    FX.EndEffect("EFFECT_RAGDOLL\183FIRECALIMA", "bonzo_calima_" .. entityName)
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183FIREFREE", "bonzo_free_" .. entityName) then
    FX.EndEffect("EFFECT_RAGDOLL\183FIREFREE", "bonzo_free_" .. entityName)
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183FIRELINK", "bonzo_link_" .. entityName) then
    FX.EndEffect("EFFECT_RAGDOLL\183FIRELINK", "bonzo_link_" .. entityName)
  end
end

function Fire.ChildCruzaderFireFXNodesSetup(tipo, effect)
end

function Fire.CultistaVoladorFireFXNodesSetup(tipo, effect)
end

function Fire.LegionaryFireFXNodesSetup(tipo, effect)
end

function Fire.FXAshes(EntityName)
  if FX.BeginEffect("EFFECT_RAGDOLL\183CENIZAS", "FXAshes_" .. EntityName, EntityName) then
    FX.SetEffect("EFFECT_RAGDOLL\183CENIZAS", "", "LinkToEmitter")
  end
  if FX.BeginEffect("EFFECT_RAGDOLL\183PAVESAS", "FXPavesas_" .. EntityName, EntityName) then
    FX.SetEffect("EFFECT_RAGDOLL\183PAVESAS", "", "LinkToEmitter")
  end
  NPC.DisolveEntity(EntityName, 3)
  Game.AddScheduledFunc(Game.GetTime() + 7, "", "Fire.FXAshesOff", EntityName)
end

function Fire.FXAshesOff(EntityName)
  if FX.IsEffect("EFFECT_RAGDOLL\183CENIZAS", "FXAshes_" .. EntityName) then
    FX.EndEffect("EFFECT_RAGDOLL\183CENIZAS", "FXAshes_" .. EntityName)
  end
  if FX.IsEffect("EFFECT_RAGDOLL\183PAVESAS", "FXPavesas_" .. EntityName) then
    FX.EndEffect("EFFECT_RAGDOLL\183PAVESAS", "FXPavesas_" .. EntityName)
  end
end
