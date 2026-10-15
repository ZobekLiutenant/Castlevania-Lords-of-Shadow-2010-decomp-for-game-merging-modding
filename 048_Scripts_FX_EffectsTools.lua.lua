function EffectsTools.main()
  EffectsTools.id = 0
  
  EffectsTools.LastMode = "Menu"
end

function EffectsTools.MenuInit()
  EffectsTools.LastMode = Input.GetActionSet()
  Input.SetActionSet("Menu")
  Scorer.Clear(EffectsTools.id)
  Scorer.Add(EffectsTools.id, "Cursor", "Sprite")
  Scorer.SetCursor(EffectsTools.id, "Cursor")
  Scorer.Set(EffectsTools.id, "Cursor", "HighRes", 1)
  Scorer.Set(EffectsTools.id, "Cursor", "File", "2D/arrow.alpha.tga")
  Scorer.Set(EffectsTools.id, "Cursor", "PivotX", 0.25)
  Scorer.Set(EffectsTools.id, "Cursor", "PivotY", 0.0625)
  Scorer.SetOnCancel(EffectsTools.id, "EffectsTools.MenuExit")
end

function EffectsTools.MenuExit()
  Input.SetActionSet(EffectsTools.LastMode)
  Scorer.Clear(EffectsTools.id)
end

function EffectsTools.ColorPickerInit()
  if DinaVar == nil then
    Game.PreloadLibrary("Scripts/DinaVar.lua", "DinaVar")
  end
  DinaVar.DefDinaName = "ColorPicker"
  DinaVar.ColorPicker_Add("Color", "print(\" %d %d %d %d \")", {
    255,
    255,
    255,
    255
  })
end

function EffectsTools.ChangeFogColor()
end

function EffectsTools.ColorRampInit()
  if ColorRamp == nil then
    Game.PreloadLibrary("Scripts/FX/ColorRamp.lua", "ColorRamp")
  end
  EffectsTools.MenuInit()
  ColorRamp.Init()
end

function EffectsTools.PS_Editor()
  if PS_Editor == nil then
    Game.PreloadLibrary("Scripts/FX/PS_Editor.lua", "PS_Editor")
  end
  PS_Editor.Init()
end

function EffectsTools.PS_Set()
  if PS_Set == nil then
    Game.PreloadLibrary("Scripts/FX/PS_Set.lua", "PS_Set")
  end
  PS_Set.Init()
end

function EffectsTools.OffsetCalc(entityName, nodeName, particleName)
  local ehlp, posA, rotA
  for i in ipairs(Editor_Particles.helpers) do
    if Editor_Particles.helpers[i].uData.LastName == particleName then
      posA = Editor_Particles.helpers[i].Pos
      rotA = Editor_Particles.helpers[i].Ang
    end
  end
  rotA = V3D(3.1416 * rotA.x / 180, 3.1416 * rotA.y / 180, 3.1416 * rotA.z / 180)
  local posB = FX.GetNodePosition(entityName, nodeName)
  local rotB = FX.GetNodeEuler(entityName, nodeName)
  local pos = FX.ToNodeCoords(entityName, nodeName, posA, rotA)
  local rot = rotA - rotB
  print("Offset Position: " .. pos:str3())
  print("Offset Rotation: " .. rot:str3())
  return pos, rot
end

function EffectsTools.CalculateRelativeMatrix(EntityName, NodeName, ParticleName)
  local ehlp
  for i = 1, #Editor_Particles.helpers do
    if Editor_Particles.helpers[i].Text == ParticleName then
      ehlp = Editor_Particles.helpers[i]
    end
  end
  if ehlp == nil then
    print("Particle not found")
    return
  end
  return FX.ToNodeCoords(EntityName, NodeName, ehlp.Pos, ehlp.Ang:torad())
end
