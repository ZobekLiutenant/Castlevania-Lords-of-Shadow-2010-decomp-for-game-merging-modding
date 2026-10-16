function Fairy.main()
  Sound.LoadSound("Sounds/Physics/Fairy_Frigth_1.wav")
  
  Sound.LoadSound("Sounds/Physics/Fairy_Frigth_2.wav")
  Sound.LoadSound("Sounds/Physics/Fairy_Frigth_3.wav")
  Sound.LoadSound("Sounds/Physics/Fairy_HitDeath_1.wav")
  Sound.LoadSound("Sounds/Physics/Fairy_HitDeath_2.wav")
  Sound.LoadSound("Sounds/Physics/Fairy_HitDeath_3.wav")
  Sound.LoadSound("Sounds/Physics/Fairy_HitDeath_4.wav")
  local ac, ActList, ActName, typo, ev
  Fairy.wRadius = 70
  Fairy.Life = 100
  Fairy.DamageCtr = 0
  Fairy.InifiniteOnInvulnerable = true
  ac = MakeChar.InitChar("Fairy")
  ac.CanFly = 1
  ac.FlyAccel = 10000
  ac.FlySpeed = 12000
  ac.FlyFric = 0
  ac.FlyFallAccel = 0
  ac.SkipInitOnChange = 0
  ac.InitEndWalkInterpFactor = 1
  MakeChar.NewTurn = true
  ac.UseRagdollToDie = 0
  MakeChar.SetNodeRotation(ac, 0, 0, 0, 0)
  MakeChar.SetNodeRotation(ac, 0, 1, 5, 0)
  MakeChar.SetNodeRotation(ac, 0, 2, 5, 0)
  MakeChar.SetNodeRotation(ac, 0, 3, 40, 50)
  MakeChar.SetNodeRotation(ac, 1, 0, 100, 100)
  MakeChar.SetNodeRotation(ac, 1, 1, 0, 0)
  MakeChar.SetNodeRotation(ac, 1, 2, 0, 0)
  MakeChar.SetNodeRotation(ac, 1, 3, 0, 0)
  MakeChar.MaxSpeed = 1
  MakeChar.MinSpeed = 1
  ac.CenterMoveX, ac.CenterMoveY, ac.CenterMoveZ = 0, 25, 0
  ac.CenterAimX, ac.CenterAimY, ac.CenterAimZ = 0, 25, 0
  ac.CenterPCX, ac.CenterPCY, ac.CenterPCZ = 0, 25, 0
  ac.Center3AimX, ac.Center3AimY, ac.Center3AimZ = 0, 25, 0
  typo = ""
  Fairy.AddRelaxActions(ac, 720, 0, typo)
  ac.TurnAngLimit = 50
  ac.MinFallDist = 40
  ac.WRadius = Fairy.wRadius
  ac.VRadius = Fairy.wRadius
  ac.PhyRadius = Fairy.wRadius
  ac.Mass = 1
  ac.Gravity = 0
  ac.SRadius = 12
  ac.YModelDisp = 5
  ac.DispCrouch = 0
  ac.StandUpSpeed = 2
  ac.MinTimeWalking = 0
  ac.Life = Fairy.Life
  ac.OnCreate = "Fairy.OnCreate"
  ac.WeaponSlots = 1
end

function Fairy.Preload()
  Game.PreloadLibrary("Scripts/AI/AIFairy.lua", "AIFairy", false)
  Game.PreloadLibrary(Game.Get("PathScriptConfig") .. "AIBehavParamsEditor/AIParamsFairy.lua", "AIParamsFairy", false)
  Fairy.FXCreateEffects()
  Fairy.main()
end

function Fairy.OnCreate(EntityName)
  local char, wc, slt
  char = Game.GetEntity(EntityName)
  char.TgType = "Green"
  char.Invulnerable = 1
  char.OnSwitchActive = "Fairy.OnSwitchActive"
  char:SetNoneCollisionMask()
  char.uData.NotAffectectedByPowerCrystal = true
  print(EntityName .. " created as Fairy.")
end

function Fairy.AddRelaxActions(ac, turnspeed, nExtraRlx, Prefix)
  local CharName, am, RelaxAnm, dukuy
  nExtraRlx = defparam(nExtraRlx, 2)
  Prefix = defparam(Prefix, "")
  RelaxAnm = Prefix .. "Relax"
  CharName = ac.Name
  am = MakeChar.CreateRelaxAction(ac, turnspeed, RelaxAnm, RelaxAnm, 1)
  am.NodeModifier = 0
  am.AngleModifierSpeed = 1
  am.UseFlyDisp = 1
  am.UseDisp = 0
  am.UseAnmDispInFly = 0
  ac.DefAction = "Relax"
  for i = 0, nExtraRlx - 1 do
    am = MakeChar.CreateRelaxAction(ac, turnspeed, RelaxAnm .. i, RelaxAnm .. i)
    if dukuy then
      am.LegsSpeed = 0
    end
  end
end

function Fairy.CreateFairy()
  print("CREATING FAIRY")
  local char = Game.GetEntity("Belmont")
  if char == nil then
    return
  end
  local oFairy = Game.CreateEntity("LilFairy", "WalkChar", char.Pos + V3D(0, 0, -100))
  oFairy.ActCtrl = "Fairy"
  AISpec.CreateAI(oFairy.Name, 0, oFairy.ActCtrl)
  oFairy.oAI.oOwner = char
  oFairy.Pos = char.Pos + V3D(0, 100, 0)
  oFairy.oAI.bEnable = true
  oFairy.bActive = false
  char.oAI:OnFairyCreated(oFairy.oAI)
  if FlowerContainer ~= nil and #FlowerContainer.FairiesList ~= 0 then
    Game.AddScheduledFunc(Game.GetTime() + 0, "ChequenadoFairies", "FlowerContainer.Check")
  end
end

function Fairy.PerformDamage(EntityName, targetName)
  local oFairy = Game.GetEntity(EntityName)
  local oTarget = Game.GetEntity(targetName)
  if oTarget.Invulnerable == 0 then
    if oTarget:IsType("WalkChar") then
      Weapons.DoDamage(player, oTarget, {
        Damage = defparam(WeaponsFairy.TableDamages[oTarget.oActCtrl.oActClass.Name], 50),
        Type = "Fairy",
        Reaction = 3,
        Unblockable = 2,
        Pos = oTarget.Pos,
        Dir = oTarget.Pos - oFairy.Pos
      })
      oFairy.oAI.Energy = oFairy.oAI.Energy - WeaponsFairy.TableDamages[oTarget.oActCtrl.oActClass.Name] * 0.01 * AISpec.GetBehavParamValue("Fairy", "DamageRatio")
    else
      Weapons.DoDamage(player, oTarget, {
        Damage = 50,
        Type = "Fairy",
        Reaction = 3,
        Unblockable = 2,
        Pos = oTarget.Pos,
        Dir = oTarget.Pos - oFairy.Pos
      })
    end
  end
end

function Fairy.OnSwitchActive(entity, active)
  if active == 1 then
    Fairy.FXGlowOn(entity.Name)
  else
    Fairy.FXGlowOff(entity.Name)
  end
end

function Fairy.OnSwitchToLightMagic(entityName)
  local entity = Game.GetEntity(entityName)
  if entity.bActive then
    Fairy.FXGlowOff(entityName)
    entity.uData.FXDarkPower = true
    Fairy.FXGlowOn(entityName)
  end
end

function Fairy.OnSwitchToNormal(entityName)
  local entity = Game.GetEntity(entityName)
  if entity.bActive then
    Fairy.FXGlowOff(entityName)
    entity.uData.FXDarkPower = false
    Fairy.FXGlowOn(entityName)
  end
end

function Fairy.OnFairyDelete(entityName)
  local ent = Game.GetEntity(entityName)
  Sound.PlaySound(ent.Pos, "Fairy_HitDeath_" .. math.random(4), 0.75, 100, 3000)
  Fairy.OnEndFairyAttack(entityName)
  Fairy.FXDeathOn(entityName)
  Fairy.FXGlowOff(entityName)
  WeaponsFairy.Fairies.Value = Game.GetEntity("Belmont").oAI:NumFairies()
  if FlowerContainer ~= nil and #FlowerContainer.FairiesList ~= 0 then
    Game.AddScheduledFunc(Game.GetTime() + 0, "ChequenadoFairies", "FlowerContainer.Check")
  end
  if Fairy.MinFairiesQuantity then
    FlowerContainer.EnsureFairyQuantity()
  end
  ent.bActive = false
  local si = Scorer.GetItem(0, "LifeBar")
  if si then
    si.FairyDead = 1
  end
  if Fairy.OnFairyDeleteCallback then
    Fairy.OnFairyDeleteCallback()
  end
end

function Fairy.FXCreateEffects()
  FX.InitEffect("EFFECT_PARTICLES\183FAIRY_GLOW", 10, "FX/fairy/glow.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183FAIRY_DUST", 10, "FX/fairy/fairy_dust.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183FAIRY_TRAIL", 10, "FX/fairy/trail.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183FAIRY_GLOW_DARK", 10, "FX/fairy/glow_dark.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183FAIRY_TRAIL_DARK", 10, "FX/fairy/trail_dark.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183FAIRY_DEAD", 10, "FX/fairy/death.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183FAIRY_DEAD_DARK", 10, "FX/fairy/death_power.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183FAIRY_CHARMED", 10, "FX/fairy/enemy_charmed.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183FAIRY_FRIGHTENED", 10, "FX/fairy/frightened.ps.xml,1,0")
end

function Fairy.FXGlowOn(entityName)
  local LightColor = V3D(0, 0, 0)
  if Game.GetEntity(entityName).uData.FXDarkPower then
    if FX.BeginEffect("EFFECT_PARTICLES\183FAIRY_GLOW_DARK", "FairyGlowDark_" .. entityName) then
      FX.SetEffect("EFFECT_PARTICLES\183FAIRY_GLOW_DARK", "", "LinkToNode " .. entityName .. "#DC_Root")
      LightColor = V3D(0.8, 1, 0.8)
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183FAIRY_TRAIL_DARK", "FairyTrailDark_" .. entityName) then
      FX.SetEffect("EFFECT_PARTICLES\183FAIRY_TRAIL_DARK", "", "EmitterLinkToNode 0,0 " .. entityName .. "#DC_Root")
      LightColor = V3D(0.6, 0.6, 1)
    end
  else
    if FX.BeginEffect("EFFECT_PARTICLES\183FAIRY_GLOW", "FairyGlow_" .. entityName) then
      FX.SetEffect("EFFECT_PARTICLES\183FAIRY_GLOW", "", "LinkToNode " .. entityName .. "#DC_Root")
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183FAIRY_TRAIL", "FairyTrail_" .. entityName) then
      FX.SetEffect("EFFECT_PARTICLES\183FAIRY_TRAIL", "", "EmitterLinkToNode 0,0 " .. entityName .. "#DC_Root")
    end
  end
  local LightRadius = 100
  local LightIntensity = 2
  if FX.BeginEffect("EFFECT_LIGHT", "Fairy_" .. entityName, 99999) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 1 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. LightColor:str3() .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LocalOffset (0,0,-15)")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.7,0")
  end
end

function Fairy.FXGlowOff(entityName)
  local entity = Game.GetEntity(entityName)
  if entity ~= nil and entity.uData.FXDarkPower then
    if FX.IsEffect("EFFECT_PARTICLES\183FAIRY_GLOW_DARK", "FairyGlowDark_" .. entityName) then
      FX.EndEffect("EFFECT_PARTICLES\183FAIRY_GLOW_DARK", "FairyGlowDark_" .. entityName)
    end
    if FX.IsEffect("EFFECT_PARTICLES\183FAIRY_TRAIL_DARK", "FairyTrailDark_" .. entityName) then
      FX.EndEffect("EFFECT_PARTICLES\183FAIRY_TRAIL_DARK", "FairyTrailDark_" .. entityName)
    end
  else
    if FX.IsEffect("EFFECT_PARTICLES\183FAIRY_GLOW", "FairyGlow_" .. entityName) then
      FX.EndEffect("EFFECT_PARTICLES\183FAIRY_GLOW", "FairyGlow_" .. entityName)
    end
    if FX.IsEffect("EFFECT_PARTICLES\183FAIRY_TRAIL", "FairyTrail_" .. entityName) then
      FX.EndEffect("EFFECT_PARTICLES\183FAIRY_TRAIL", "FairyTrail_" .. entityName)
    end
  end
  if FX.IsEffect("EFFECT_LIGHT", "Fairy_" .. entityName) then
    FX.EndEffect("EFFECT_LIGHT", "Fairy_" .. entityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183FAIRY_FRIGHTENED", "Fairy_frigh_" .. entityName) then
    print("END FRIGHTENED")
    FX.EndEffect("EFFECT_PARTICLES\183FAIRY_FRIGHTENED", "Fairy_frigh_" .. entityName)
  end
end

function Fairy.FXDeathOn(entityName)
  local pos = Game.GetEntity(entityName).Pos
  print(Game.GetEntity(entityName).uData.FXDarkPower)
  if Game.GetEntity(entityName).uData.FXDarkPower then
    if FX.BeginEffect("EFFECT_PARTICLES\183FAIRY_DEAD_DARK", "FairyDeadDark_" .. entityName) then
      FX.SetEffect("EFFECT_PARTICLES\183FAIRY_DEAD_DARK", "", "MatrixTranslation " .. pos:str3())
    end
  elseif FX.BeginEffect("EFFECT_PARTICLES\183FAIRY_DEAD", "FairyDead_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183FAIRY_DEAD", "", "MatrixTranslation " .. pos:str3())
  end
end

function Fairy.OnStartFairyAttack(entityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183FAIRY_DUST", "FairyDust_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183FAIRY_DUST", "", "EmitterLinkToNode 0,0 " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183FAIRY_DUST", "FairyDust_" .. entityName, "BirthEnabled 0,0,1")
  end
end

function Fairy.OnEndFairyAttack(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183FAIRY_DUST", "FairyDust_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183FAIRY_DUST", "FairyDust_" .. entityName, "BirthEnabled 0,0,0")
  end
end

function Fairy.FXCrazyOn(targetName)
  local ent = Game.GetEntity(targetName)
  local pos = V3D(0, ent.Radius, 0)
  if FX.BeginEffect("EFFECT_PARTICLES\183FAIRY_CHARMED", "fairy_crazy_" .. targetName) then
    FX.SetEffect("EFFECT_PARTICLES\183FAIRY_CHARMED", "fairy_crazy_" .. targetName, "LinkToNode " .. targetName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183FAIRY_CHARMED", "fairy_crazy_" .. targetName, "MatrixTranslation " .. pos:str3())
  end
  if FX.IsEffect("EFFECT_PARTICLES\183FAIRY_CHARMED", "fairy_crazy_" .. targetName) then
    FX.SetEffect("EFFECT_PARTICLES\183FAIRY_CHARMED", "fairy_crazy_" .. targetName, "BirthEnabled 0,0,1")
  end
end

function Fairy.FXCrazyOff(targetName)
  if FX.IsEffect("EFFECT_PARTICLES\183FAIRY_CHARMED", "fairy_crazy_" .. targetName) then
    FX.SetEffect("EFFECT_PARTICLES\183FAIRY_CHARMED", "fairy_crazy_" .. targetName, "BirthEnabled 0,0,0")
  end
end

function Fairy.FXFrightened(entityName)
  print("FAIRY FRIGHTENED FX")
  if FX.BeginEffect("EFFECT_PARTICLES\183FAIRY_FRIGHTENED", "Fairy_frigh_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183FAIRY_FRIGHTENED", "", "PositionLinkToNode " .. entityName .. "#Bip Pixie Spine1")
  end
end

function Fairy.PlayScreamSound(EntityName, offsetter)
  Fairy.FXFrightened(EntityName)
  addSF(offsetter * 0.25, "", "Fairy.DoPlayScreamSound", EntityName)
end

function Fairy.DoPlayScreamSound(EntityName)
  local ent = Game.GetEntity(EntityName)
  if ent then
    Sound.PlaySound(ent.Pos, "Fairy_Frigth_" .. math.random(3), 0.75, 100, 3000)
  end
end
