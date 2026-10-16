NeutralEnergy.MinDist = 1500
NeutralEnergy.InitSpeed = 500
NeutralEnergy.EndSpeed = 2000
NeutralEnergy.DispelMaxTime = 15
NeutralEnergy.DispelMinTime = 10
NeutralEnergy.Prize = 0.125
NeutralEnergy.MinPrize = 0.125
NeutralEnergy.KnightInc = 1
NeutralEnergy.BaseMagic = 1
NeutralEnergy.MapTable = {
  arena = {
    SpeedBoots = 1,
    LightShoulders = true,
    DarkGauntlet = true,
    NumFairies = 1,
    NumCrystals = 1,
    NumVials = 4,
    DarkPower = 2.5,
    LightPower = 2.5
  },
  test = {
    SpeedBoots = 1,
    LightShoulders = true,
    DarkGauntlet = true,
    NumFairies = 2,
    NumCrystals = 2,
    NumVials = 2
  },
  ["1_1_besieged_village"] = {
    SpeedBoots = 1,
    LightShoulders = false,
    DarkGauntlet = true,
    NumFairies = 3,
    NumCrystals = 3,
    NumVials = 4
  },
  ["4_1_fortress"] = {
    SpeedBoots = 1,
    LightShoulders = false,
    DarkGauntlet = true,
    NumFairies = 0,
    NumCrystals = 0,
    NumVials = 0,
    DarkPower = 0,
    LightPower = 0
  },
  ["4_2_fortress_witch"] = {
    SpeedBoots = 1,
    LightShoulders = false,
    DarkGauntlet = true,
    NumFairies = 1,
    NumCrystals = 1,
    NumVials = 4,
    DarkPower = 2.5,
    LightPower = 2.5
  }
}
NeutralEnergy.KillPrices = {
  SwordMaster = 3,
  TrollBig = 4,
  TrollSmall = 1,
  Warg = 3,
  WitchChild = 1
}
NeutralEnergy.OnHitPrices = {}
NeutralEnergy.HandNode = "Bip Gabriel L Finger2"
NeutralEnergy.EnergyFile = "Models/FX/NeutralEnergy/EmptyModel.M3D"

function NeutralEnergy.Preload()
  Game.Preload3DObject(NeutralEnergy.EnergyFile)
  NeutralEnergy.CreateEffects()
end

function NeutralEnergy.main()
  if init then
    for className in pairs(init.EnemiesConfig) do
      if init.EnemiesConfig[className][1] == true then
        NeutralEnergy.OnHitPrices[className] = V4D(0, 0, 0, 0)
      end
    end
  end
end

function NeutralEnergy.AddAnm(ac)
  am = MakeChar.CreateRelaxAction(ac, 0, "WhipPowerUp", "WhipPowerUp")
  am.FKMethod = 1
  MakeChar.CreateInitLoopEnd(ac, 0, "WhipCharge", 1)
  ac:GetAct("WhipChargeEnd").PriorityLevel = 0
  ac:GetAct("WhipCharge").TakeItems = 1
  MakeChar.MakeEvent(ac, "WhipChargeInit", "WhipCharge", "!AnmSetAction")
  ac.TakeSpecialPress = "NeutralEnergy.TakeSpecialLightPress"
  ac.TakeSpecialRelease = "NeutralEnergy.TakeSpecialLightRelease"
  ac.TakeSpecialPressPlus = "NeutralEnergy.TakeSpecialDarkPress"
  ac.TakeSpecialReleasePlus = "NeutralEnergy.TakeSpecialDarkRelease"
end

function NeutralEnergy.TakeSpecialLightPress(Name)
  if LightPower.PowerOn.Value then
    NeutralEnergy.TakeSpecialPress(Name)
  end
end

function NeutralEnergy.TakeSpecialDarkPress(Name)
  if DarkPower.PowerOn.Value then
    NeutralEnergy.TakeSpecialPress(Name)
  end
end

function NeutralEnergy.TakeSpecialLightRelease(Name)
  NeutralEnergy.TakeSpecialRelease(Name)
end

function NeutralEnergy.TakeSpecialDarkRelease(Name)
  NeutralEnergy.TakeSpecialRelease(Name)
end

function NeutralEnergy.TakeSpecialPress(Name)
  local ent = Game.GetEntity(Name)
  if string.sub(ent.Action, 1, 10) ~= "WhipCharge" then
    if ent.bIsFalling or ent.bEquilibriumMode then
      ent.owc:ResetTakeSpecial()
    else
      local act = player.oActCtrl.oActClass:GetAct("WhipChargeInit")
      act.MinSpeed = SkillSettings[init.GameSkill.Value].Absorb
      act.MinSpeed = act.MinSpeed
      ent.Action = "WhipChargeInit"
      if ent.Action == "WhipChargeInit" then
        ent.ExtraSufix = "Whip"
      else
        ent.owc:ResetTakeSpecial()
      end
      if init.LevelName == "level.2_8_stone_idol_mausoleum" and Trials.isTrial and MapTrial ~= nil then
        MapTrial.OnMagicOrbsAbsorptionStart()
      end
    end
  elseif ent.Action == "WhipChargeEnd" then
    ent.owc:ResetTakeSpecial()
  end
end

function NeutralEnergy.TakeSpecialRelease(Name)
  local ent = Game.GetEntity(Name)
  if (ent.owc.TakeSpecial == 0 or not LightPower.PowerOn.Value) and (ent.owc.TakeSpecialPlus == 0 or not DarkPower.PowerOn.Value) and string.sub(ent.Action, 1, 10) == "WhipCharge" then
    ent.ForceAction = "WhipChargeEnd"
    if init.LevelName == "level.2_8_stone_idol_mausoleum" and Trials.isTrial and MapTrial ~= nil then
      MapTrial.OnMagicOrbsAbsorptionEnd()
    end
  end
end

function NeutralEnergy.EventDrop(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  if ent.Hit_RemoveNow ~= 1 and (LightPower.PowerOn.Value or DarkPower.PowerOn.Value) then
    local params = Game.Split(EventName, ",")
    local numPoints
    numPoints = tonumber(params[1])
    local onlyOnFocus
    onlyOnFocus = tonumber(defparam(params[2], 0))
    if Stamina.Active.Value then
      numPoints = numPoints * Stamina.MagicMultiplier
    end
    local attacker = Game.GetEntity(ent.Hit_Attacker)
    if (ent.Hit_GiveMagicOnHit == 1 or player.oActCtrl.oSync or ent.oActCtrl and ent.oActCtrl.oSync) and LightPower.PowerUse.Value == 0 and DarkPower.PowerUse.Value == 0 and (onlyOnFocus == 0 or Stamina.Active.Value) and (attacker == player or player.oActCtrl.oSync == ent or ent.oActCtrl and ent.oActCtrl.oSync == player) then
      NeutralEnergy.CreateSources(ent.Pos.x, ent.Pos.y, ent.Pos.z, ent.Name, numPoints)
    end
  end
end

function NeutralEnergy.OnDeath(ent, delay)
  ent.uData.Killed = true
  if ent.Hit_RemoveNow ~= 1 then
    if LightPower.PowerOn.Value or DarkPower.PowerOn.Value then
      delay = defparam(delay, 0.2)
      local kp
      if type(NeutralEnergy.KillPrices[ent.ActCtrl]) == "number" then
        kp = NeutralEnergy.KillPrices[ent.ActCtrl]
        kp = V4D(1, kp, 1, kp * 2)
      else
        kp = defparam(NeutralEnergy.KillPrices[ent.ActCtrl], V4D(1, 1, 1, 2))
      end
      local numGlows = 0
      if Stamina.Active.Value then
        if Game.Rand(0.001, 0.999) <= kp.z then
          numGlows = kp.w
        end
      elseif Game.Rand(0.001, 0.999) <= kp.x then
        numGlows = kp.y
      end
      if numGlows < 0 then
        numGlows = 0
      end
      if ent.Hit_GiveMagic == 1 and not ent.uData.DeadByMagic then
        NeutralEnergy.DeatSources(delay, ent, numGlows)
      end
    end
    if not PickableItems.DropPrize(ent.Name, delay) then
      PickableItems.ScheduleDrop(ent, delay)
    end
  end
  local att = Game.GetEntity(ent.Hit_Attacker)
  if (not ent.uData.Rider or ent.uData.Rider ~= "Belmont") and (not att or att.UsrControl ~= -1) then
    Experience.OnDead(ent)
  end
end

function NeutralEnergy.DeatSources(delay, ent, num)
  Game.AddScheduledFunc(Game.GetTime() + delay, "CreateSources", "NeutralEnergy.CreateSources", ent.Pos.x, ent.Pos.y, ent.Pos.z, ent.Name, num)
end

function NeutralEnergy.CreateSources(x, y, z, entName, num)
  local ent = Game.GetEntity(entName)
  local Pos = V3D(x, y, z)
  if ent then
    local node = "Bip " .. ent.ActCtrl
    Pos = FX.GetNodePosition(ent.Name, node)
    if not Pos then
      node = _G[ent.ActCtrl].FXPowerCrystalNode
      Pos = FX.GetNodePosition(ent.Name, node)
      if not Pos then
        print("El personaje " .. ent.ActCtrl .. " necesita un FXVialNode en su script")
      end
    end
  end
  local DestPos, i
  while 0 < num do
    if Stamina.Active.Value and ent then
      DestPos = Pos + V3D(0, Game.Rand(100, 200), Game.Rand(200, 400)):rot(ent.Ang + V3D(0, Game.Rand(-20, 20), 0))
    else
      DestPos = Pos + V3D(Game.Rand(-150, 150), Game.Rand(80, 120), Game.Rand(-150, 150))
    end
    local fDest, trash
    fDest, trash = Game.TestLine(Pos, DestPos, "")
    if fDest then
      DestPos = fDest
    end
    NeutralEnergy.CreateSource(Pos, DestPos, 1)
    num = num - 1
  end
end

function NeutralEnergy.CreateSource(Pos, DestPos, Value)
  Value = defparam(Value, 1)
  local o = Game.CreateEntity("Source", "Item", Pos)
  if NeutralEnergy.OnCreateEnergyBalls then
    local f = NeutralEnergy.OnCreateEnergyBalls
    f(o)
  end
  o.Mesh = NeutralEnergy.EnergyFile
  o.Radius = 0
  o.Origin = Pos
  o.uData.Price = Value * NeutralEnergy.Prize
  o.uData.Value = Value
  o.uData.DestPos = DestPos
  if count(NeutralEnergy.ListSources) > NeutralEnergy.MaxSources then
    local oldestTime, oldestName
    for name, time in pairs(NeutralEnergy.ListSources) do
      if not oldestTime or time < oldestTime then
        oldestTime = time
        oldestName = name
      end
    end
    NeutralEnergy.RemoveSourceFX(oldestName)
  end
  NeutralEnergy.ListSources[o.Name] = Game.GetTime()
  NeutralEnergy.FXEnergyOn(o.Name)
  NeutralEnergy.UpdateRemover(o)
  Game.AddScheduledFunc(Game.GetTime(), "Activate" .. o.Name, "NeutralEnergy.Activate", o.Name)
  return o
end

function NeutralEnergy.RemoveAllSources()
  for name, time in pairs(NeutralEnergy.ListSources) do
    local o = Game.GetEntity(name)
    if nil == o.uData.Fontain then
      NeutralEnergy.FXEnergyOff(name)
      o:Del()
    end
  end
  NeutralEnergy.ListSources = {}
end

function NeutralEnergy.HideAllSources()
  local o
  for name, time in pairs(NeutralEnergy.ListSources) do
    o = Game.GetEntity(name)
    NeutralEnergy.FXEnergyOff(name)
    o.bActive = false
    NeutralEnergy.QuitRemover(o)
  end
end

function NeutralEnergy.UnhideAllSources()
  local o
  for name, time in pairs(NeutralEnergy.ListSources) do
    o = Game.GetEntity(name)
    o.bActive = true
    NeutralEnergy.FXEnergyOn(name)
    NeutralEnergy.UpdateRemover(o)
  end
end

function NeutralEnergy.Activate(Name)
  local o = Game.GetEntity(Name)
  if o then
    o.Radius = NeutralEnergy.MinDist
    o.OnlyUser = 1
    o.OnlyTakeActions = 1
    o.OnTake = "NeutralEnergy.OnTakeSource"
    if o.uData.DestPos then
      local time
      if Stamina.Active.Value then
        time = Game.Rand(0.5, 1)
      else
        time = Game.Rand(2, 5)
      end
      MissionUtils.DoInterpTgt(o, {
        [1] = time,
        [2] = "q",
        Pos = o.uData.DestPos
      })
    end
    o.uData.Dist = 1000
  end
end

function NeutralEnergy.QuitRemover(o)
  local Nam = "NES_" .. o.Name
  Game.DeleteScheduledFuncs(Nam)
end

function NeutralEnergy.UpdateRemover(o)
  local Nam = "NES_" .. o.Name
  Game.DeleteScheduledFuncs(Nam)
  Game.AddScheduledFunc(Game.GetTime() + Game.Rand(NeutralEnergy.DispelMaxTime, NeutralEnergy.DispelMinTime), Nam, "NeutralEnergy.RemoveSourceFX", o.Name)
end

function NeutralEnergy.RemoveSourceFX(Name)
  local o = Game.GetEntity(Name)
  if o then
    NeutralEnergy.FXEnergyFadeOut(Name)
    addSF(2, Name, "NeutralEnergy.RemoveResource", Name)
    NeutralEnergy.ListSources[Name] = nil
  end
end

function NeutralEnergy.RemoveResource(Name)
  local o = Game.GetEntity(Name)
  if o and o:Del() and o.uData.OnRemove then
    o.uData.OnRemove(o)
  end
end

NeutralEnergy.ListSources = {}
NeutralEnergy.MaxSources = 32

function NeutralEnergy.OnTakeSource(ItemName, PlayerName)
  local o = Game.GetEntity(ItemName)
  local ply = player
  if NeutralEnergy.CogiendoBolitas then
    local f = NeutralEnergy.CogiendoBolitas
    NeutralEnergy.CogiendoBolitas = nil
    f(o)
  end
  MissionUtils.RemoveInterp(o)
  o.uData.Parent = ply
  o.uData.Dist = (o.uData.Parent.Pos - o.Pos):mod()
  o.OnTake = ""
  NeutralEnergy.UpdateRemover(o)
  NeutralEnergy.FXStartMove(ItemName)
  o.OnObjSlot = ""
  addSF(0, "", "NeutralEnergy.OnTakeSource2", ItemName)
  local ctrlEnt = Game.UsrEntity(0)
  o.uData.TakeSpecial = ctrlEnt.owc.TakeSpecial ~= 0
  o.uData.TakeSpecialPlus = ctrlEnt.owc.TakeSpecialPlus ~= 0
  if init.LevelName == "level.2_8_stone_idol_mausoleum" and Trials.isTrial and MapTrial ~= nil and MapTrial.Absorbiendo then
    MapTrial.OnMagicOrbAbsorbed()
  end
  if init.LevelName == "level.dlc_2_1_otherworld" and Trials.isTrial and MapTrial ~= nil then
    MapTrial.OnMagicOrbAbsorbed()
  end
end

function NeutralEnergy.OnTakeSource2(ItemName)
  local o = Game.GetEntity(ItemName)
  if o then
    if o.uData.TimeToGet == nil then
      o.uData.TimeToGet = Game.Rand(0.2, 0.7)
    end
    o:LinkModelToNode(player.Name, NeutralEnergy.HandNode, o.uData.TimeToGet)
    o.ModOnEnd = "NeutralEnergy.EndOfTake"
  end
end

function NeutralEnergy.EndOfTake(ItemName)
  local o = Game.GetEntity(ItemName)
  local ply = o.uData.Parent
  o.JustPos = ply["NodePosHierarchy_" .. NeutralEnergy.HandNode]
  local i = 0
  if not LightPower.PowerOn.Value then
    i = 2
  elseif not DarkPower.PowerOn.Value then
    i = 1
  else
    local ctrlEnt = Game.UsrEntity(0)
    if ctrlEnt then
      if ctrlEnt.owc.TakeSpecial == 1 or o.uData.TakeSpecial then
        i = 1
      end
      if ctrlEnt.owc.TakeSpecialPlus == 1 or o.uData.TakeSpecialPlus then
        i = i + 2
      end
    end
  end
  o:Del()
  NeutralEnergy.FXEnergyOff(o.Name)
  NeutralEnergy.FXEndOn(o.Pos, i)
  if o.uData.OnTake then
    o.uData.OnTake(o)
  end
  local VV, VM, vV, vM, Nam, nam
  if i == 1 then
    Nam = "ScorerLightPower"
    nam = "ScorerLightPower"
    ScorerSprites.ShowLightMagic()
  elseif i == 2 then
    Nam = "ScorerDarkPower"
    nam = "ScorerDarkPower"
    ScorerSprites.ShowDarkMagic()
  else
    Nam = "ScorerLightPower"
    nam = "ScorerDarkPower"
    ScorerSprites.ShowLightMagic()
    ScorerSprites.ShowDarkMagic()
  end
  VV = Game.GVar(Nam)
  VM = Game.GVar(Nam .. "Max")
  vV = Game.GVar(nam)
  vM = Game.GVar(nam .. "Max")
  local price, decim, minPrize
  price = o.uData.Price / 2
  minPrize = NeutralEnergy.MinPrize
  decim = VV.Value - math.floor(VV.Value)
  if 0 < decim and minPrize > decim then
    VV.Value = math.floor(VV.Value) + minPrize
  end
  VV.Value = clamp(0, VM.Value * 2, VV.Value + price)
  price = o.uData.Price / 2
  minPrize = NeutralEnergy.MinPrize
  decim = vV.Value - math.floor(vV.Value)
  if 0 < decim and minPrize > decim then
    vV.Value = math.floor(vV.Value) + minPrize
  end
  vV.Value = clamp(0, vM.Value * 2, vV.Value + price)
  if not NeutralEnergy.bOverLoad and (VV.Value > VM.Value or vV.Value > vM.Value) then
    NeutralEnergy.bOverLoad = true
    delSF("NeutralEnergy_OverLoad")
    NeutralEnergy.EnergyOverLoad()
  end
  NeutralEnergy.ListSources[ItemName] = nil
end

NeutralEnergy.bOverLoad = false
NeutralEnergy.OverloadDownStep = 0.1

function NeutralEnergy.EnergyOverLoad()
  local p, m
  NeutralEnergy.bOverLoad = false
  p = LightPower.Power
  m = LightPower.PowerMax
  if p.Value - NeutralEnergy.OverloadDownStep > m.Value then
    p.Value = p.Value - NeutralEnergy.OverloadDownStep
    NeutralEnergy.bOverLoad = true
  elseif p.Value > m.Value then
    p.Value = m.Value
  end
  p = DarkPower.Power
  m = DarkPower.PowerMax
  if p.Value - NeutralEnergy.OverloadDownStep > m.Value then
    p.Value = p.Value - NeutralEnergy.OverloadDownStep
    NeutralEnergy.bOverLoad = true
  elseif p.Value > m.Value then
    p.Value = m.Value
  end
  if NeutralEnergy.bOverLoad then
    addSF(0.1, "NeutralEnergy_OverLoad", "NeutralEnergy.EnergyOverLoad")
  end
end

NeutralEnergy.FountainAccel = 0.25

function NeutralEnergy.OnTakeFontain(o)
  local fountain = o.uData.Fontain
  o.uData.Fontain = nil
  if fountain.uData.Energy ~= 0 then
    fountain.uData.Energy = fountain.uData.Energy - 1
  end
  if 0 == fountain.uData.Energy then
    NeutralEnergy.FXBaseOff(fountain.Name)
  else
    local timy = Game.GetTime()
    local Mult
    if o.uData.FontainTimeStamp == nil then
      o.uData.FontainTimeStamp = 0
      o.uData.FontainMult = 1
    end
    if timy < o.uData.FontainTimeStamp + 0.5 then
      Mult = o.uData.FontainMult + NeutralEnergy.FountainAccel
      o.uData.Price = o.uData.Price * Mult
      o.uData.Value = o.uData.Value * Mult
      Game.ConsoleError("ACC = x " .. Mult .. "\n")
    else
      Mult = 1 + NeutralEnergy.FountainAccel
    end
    local en = NeutralEnergy.CreateSource(fountain.Pos + fountain.uData.EnergyPlace:rot(fountain.Ang), nil, 3)
    NeutralEnergy.QuitRemover(en)
    en.uData.OnTake = NeutralEnergy.OnTakeFontain
    en.uData.OnRemove = NeutralEnergy.OnTakeFontain
    en.uData.Fontain = fountain
    en.uData.TimeToGet = 0.2
    en.uData.FontainTimeStamp = timy
    en.uData.FontainMult = Mult
    fountain.uData.SourceName = en.Name
  end
end

function NeutralEnergy.SetUp(entityName)
  local o = Game.GetEntity(entityName)
  if o.uData.Energy ~= 0 then
    local en = NeutralEnergy.CreateSource(o.Pos + o.uData.EnergyPlace:rot(o.Ang), nil, 3)
    NeutralEnergy.QuitRemover(en)
    en.uData.OnTake = NeutralEnergy.OnTakeFontain
    en.uData.OnRemove = NeutralEnergy.OnTakeFontain
    en.uData.Fontain = o
    en.uData.TimeToGet = 0.2
    o.uData.SourceName = en.Name
    NeutralEnergy.FXBaseOn(o.Name)
  end
end

function NeutralEnergy.EventConsumeMagic(EntityName, EventName, Time)
  local params = Game.Split(EventName, ",")
  local magicType = params[1]
  local amount = tonumber(params[2])
  if magicType == "Light" then
    LightPower.Consume(EntityName, amount)
  else
    DarkPower.Consume(EntityName, amount)
  end
end

function NeutralEnergy.EventDeactivateMagic(EntityName, EventName, Time)
  NeutralEnergy.DeactivateMagic(EntityName)
end

NeutralEnergy.BlockDeactivateMagic = false

function NeutralEnergy.DeactivateMagic(EntityName)
  if NeutralEnergy.BlockDeactivateMagic then
    return
  end
  if LightPower.PowerUse.Value == 1 then
    LightPower.DeactivatePower(EntityName)
  elseif DarkPower.PowerUse.Value == 1 then
    DarkPower.DeactivatePower(EntityName)
  end
end

function NeutralEnergy.CreateEffects()
  FX.InitEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_", 40, "fx/neutralenergy/link_big.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_END", 40, "fx/neutralenergy/end_link.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", 40, "fx/neutralenergy/trail.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183NEUTRALENERGY_BASE", 5, "fx/neutralenergy/estatue.ps.xml")
  FX.InitEffect("EFFECT_PARTICLES\183NEUTRALENERGY_END", 3, "fx/neutralenergy/end.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183NEUTRALENERGY_END_DARK", 3, "fx/neutralenergy/end_dark.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183NEUTRALENERGY_END_LIGHT", 3, "fx/neutralenergy/end_light.ps.xml,0,1")
end

function NeutralEnergy.FXEnergyOn(entityName)
  local o = Game.GetEntity(entityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_", "NELINK_" .. entityName) then
    if Stamina.Active.Value then
      FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_", "", "Preload 1 1")
    end
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_", "", "LinkToNode " .. entityName .. "#DC_Root")
  end
end

function NeutralEnergy.FXEnergyOff(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "NE_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "NE_" .. entityName, "EmitterUnlink 0,0")
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "NE_" .. entityName, "EmitterUnlink 1,0")
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "NE_" .. entityName, "EmitterMatrixTranslation 0,0," .. FX.GetNodePosition(player.Name, NeutralEnergy.HandNode):str3())
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "NE_" .. entityName, "EmitterMatrixTranslation 1,0," .. FX.GetNodePosition(player.Name, NeutralEnergy.HandNode):str3())
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "NE_" .. entityName, "EmitterInstantBirth 0,0")
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "NE_" .. entityName, "BirthEnabledAll 0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_", "NELINK_" .. entityName) then
    FX.EndEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_", "NELINK_" .. entityName)
  end
end

function NeutralEnergy.FXEnergyFadeOut(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "NE_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "NE_" .. entityName, "AlphaFadeOutEmitterSpeed 0,0,1")
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "NE_" .. entityName, "AlphaFadeOutEmitterSpeed 1,0,1")
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "NE_" .. entityName, "LifeTimeRemain 2")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_", "NELINK_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_", "NELINK_" .. entityName, "AlphaFadeOutEmitterSpeed 0,0,1")
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_", "NELINK_" .. entityName, "AlphaFadeOutEmitterSpeed 1,0,1")
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_", "NELINK_" .. entityName, "LifeTimeRemain 2")
  end
end

function NeutralEnergy.FXBaseOn(entityName)
  local pos = Game.GetEntity(entityName).Pos + V3D(0, -100, 0)
  if FX.BeginEffect("EFFECT_PARTICLES\183NEUTRALENERGY_BASE", "NBase_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGY_BASE", "", "MatrixTranslation " .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGY_BASE", "", "MatrixEuler " .. Game.GetEntity(entityName).Ang:torad():str3())
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGY_BASE", "", "Preload 3 1")
  end
  local LightRadius = Game.GetEntity(entityName).uData.LightRadius
  local LightIntensity = Game.GetEntity(entityName).uData.LightIntensity
  local Color = "(1,0.686,0.45)"
  if FX.BeginEffect("EFFECT_LIGHT", "NBaseLight_" .. entityName, 999999) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 1 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. Color .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.6,0.7")
    FX.SetEffect("EFFECT_LIGHT", "", "RandomInt " .. LightIntensity * 0.7 .. "," .. LightIntensity .. ",0.1")
    FX.SetEffect("EFFECT_LIGHT", "", "AttDistance 4000")
  end
  SoundUtils.FXPlaySoundLoop("Belmont", "NeutralBaseLoop", entityName)
end

function NeutralEnergy.FXBaseOff(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183NEUTRALENERGY_BASE", "NBase_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGY_BASE", "NBase_" .. entityName, "BirthEnabled 0,0,0")
  end
  if FX.IsEffect("EFFECT_LIGHT", "NBaseLight_" .. entityName) then
    FX.EndEffect("EFFECT_LIGHT", "NBaseLight_" .. entityName)
  end
  local LightRadius = Game.GetEntity(entityName).uData.LightRadius
  local LightIntensity = Game.GetEntity(entityName).uData.LightIntensity
  local Color = "(1,0.686,0.45)"
  if FX.BeginEffect("EFFECT_LIGHT", "NBaseLight_" .. entityName, 6) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity * 0.85 .. ",0," .. Color .. "] 6,[" .. LightRadius .. ",0,0," .. Color .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.6,0.7")
    FX.SetEffect("EFFECT_LIGHT", "", "AttDistance 4000")
  end
  SoundUtils.FXStopSoundLoop("Belmont", "NeutralBaseLoop", entityName)
end

NeutralEnergy.FXEndOnTimeStamp = 0

function NeutralEnergy.FXEndOn(pos, tipo)
  local AcTime = Game.GetTime()
  if AcTime - NeutralEnergy.FXEndOnTimeStamp < 0.5 then
    return
  end
  NeutralEnergy.FXEndOnTimeStamp = AcTime
  local effect = "EFFECT_PARTICLES\183NEUTRALENERGY_END"
  local color = V3D(1, 0.7, 0.3)
  if tipo == 2 then
    effect = effect .. "_DARK"
    color = V3D(1, 0.5, 0.1)
  elseif tipo == 1 then
    effect = effect .. "_LIGHT"
    color = V3D(0.3, 0.3, 1)
  end
  if FX.BeginEffect(effect, "") then
    FX.SetEffect(effect, "", "LinkToNode " .. player.Name .. "#" .. NeutralEnergy.HandNode)
  end
  local LightRadius = 200
  local LightIntensity = 4
  if FX.BeginEffect("EFFECT_LIGHT", "", 0.2) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "Translation " .. pos:str3())
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. color:str3() .. "] 0.2,[" .. LightRadius .. ",0,0," .. color:str3() .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.6,0.7")
  end
  SoundUtils.FXPlaySound("Belmont", "NeutralEnergyArrive", pos)
end

NeutralEnergy.FXStartMoveTimeStamp = 0

function NeutralEnergy.FXStartMove(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_", "NELINK_" .. entityName) then
    FX.EndEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_", "NELINK_" .. entityName)
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "NE_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "", "BirthEnabledAll 1")
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "", "EmitterLinkToNode 0,0 " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYTRAIL_", "", "EmitterLinkToNode 1,0 " .. entityName .. "#DC_Root")
  end
  local pos = Game.GetEntity(entityName).Pos
  if FX.BeginEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_END", "") then
    FX.SetEffect("EFFECT_PARTICLES\183NEUTRALENERGYLINK_END", "", "MatrixTranslation " .. pos:str3())
  end
  local LightRadius = 200
  local LightIntensity = 4
  if FX.BeginEffect("EFFECT_LIGHT", "", 0.2) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "Translation " .. pos:str3())
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(1,0.7,0.3)] 0.2,[" .. LightRadius .. ",0,0,(1,0.7,0.3)]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.6,0.7")
  end
  local AcTime = Game.GetTime()
  if AcTime - NeutralEnergy.FXStartMoveTimeStamp < 0.5 then
    return
  end
  NeutralEnergy.FXStartMoveTimeStamp = AcTime
  SoundUtils.FXPlaySound("Belmont", "NeutralEnergyArrive", pos)
end
