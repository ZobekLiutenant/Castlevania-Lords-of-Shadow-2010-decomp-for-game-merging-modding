_LightTableConversor = {
  bLightEnable00 = "Enable",
  Pos = "ModelPos",
  Ang = "ModelRot",
  LightConeOuter00 = "ConeOuter",
  LightRangeIni00 = "RangeIni",
  LightRange00 = "Range",
  bLightOverShoot00 = "OverShoot",
  bLightShadow00 = "Shadow",
  LightShadowCast00 = "ShadowCast",
  LightShadowMapBias00 = "ShadowMapBias",
  LightColor00 = "Color",
  LightIntens00 = "Intens",
  ProjID00 = "ProjID",
  bLightProjEnable00 = "ProjEnable",
  LightAttStart00 = "AttStart",
  LightDotAtt00 = "DotAtt",
  LightDirVector00 = "DirVector",
  LightiFX00 = "iFX",
  LightLightAttDist00 = "LightAttDist",
  LightShadowAttDist00 = "ShadowAttDist",
  LightOptMask00 = "OptMask",
  LightBoxSize00 = "BoxSize",
  bLightFresnelEnable00 = "FresnelEnable",
  LightFresnelInnerColor00 = "FresnelInnerColor",
  LightFresnelInnerMult00 = "FresnelInnerMult",
  LightFresnelInnerMultC00 = "FresnelInnerMultC",
  LightFresnelInnerExp00 = "FresnelInnerExp",
  LightFresnelEdgeColor00 = "FresnelEdgeColor",
  LightFresnelEdgeMult00 = "FresnelEdgeMult",
  LightFresnelEdgeMultC00 = "FresnelEdgeMultC",
  LightFresnelEdgeExp00 = "FresnelEdgeExp",
  LightFX_TorchIntens00 = "FX_TorchIntens",
  LightFX_TorchFrequency00 = "FX_TorchFrequency",
  LightFX_MoveRadius00 = "FX_MoveRadius",
  LightFX_MoveFrequency00 = "FX_MoveFrequency"
}

function BookSetup.Preload()
  Preload.PreloadLib("Levels/Menu/Scripts/MapPhysicLight.lua", "MapPhysicLight")
  for i in pairs(MapPhysicLight.PhysicObjects) do
    local o = MapPhysicLight.PhysicObjects[i]
    local ActCtrl
    for t in pairs(o) do
      if o[t][1] == "ActCtrl" then
        ActCtrl = o[t][2]
      end
    end
    local obj = Game.GetMenu():CreateLight(i - 1, ActCtrl)
    for t in pairs(o) do
      local v = _LightTableConversor[o[t][1]]
      if v then
        obj[v] = o[t][2]
      end
    end
  end
  Game.GetMenu():DoInit()
  local m
  m = Game.GetMenu()
  m.AngDelta = V3D(0, 0, 0)
  m.PosDelta = V3D(0, 0, 0)
  m.LimitAngDelta = V3D(5, 5, 5)
  m.AngDeltaSpeed = 90
  m.LimitAngPulse = V3D(2, 1, 1)
  m.LimitPosPulse = V3D(0.25, 0.25, 0.25)
  m:SetPulse(0.4, 2, 0.4, 2)
  local c = m.oCamClosed
  local Ang = V3D(0, 0, 0)
  c.Pos = V3D(0, 35, -17.2):rot(Ang)
  c.Ang = V3D(62.25, 0, 0) + Ang
  c.FOV = 50
end
