function PickableItems.main()
  if Game.Get("ToolMode") ~= 0 and init then
    for name, data in pairs(init.EnemiesConfig) do
      if not DropPresets.ClassDefaults[name] and data[1] then
        DropPresets.ClassDefaults[name] = "-Nothing"
      end
    end
  end
  PickableItems.Active = true
  Sound.LoadSound("Sounds/Generic/Objects/Pickable_Items.wav")
  Sound.LoadSound("Sounds/Generic/Objects/UnPickable_Items.wav")
end

PickableItems.BreakeablePreset = "D(Medio)_V(Medio)_F(Medio)_d(Medio)"

function PickableItems.Preload()
  PickableItems.InitEffects()
  for name, data in pairs(PickableItems.Table) do
    Game.Preload3DObject(data.Mesh)
  end
end

PickableItems.Counter = 0

function PickableItems.Create(Type, Pos)
  if not PickableItems.Active and not player.uData.MustDropLycanDagger then
    return
  end
  local typeData = PickableItems.Table[Type]
  if not typeData then
    Game.ConsoleError(Type .. " pickable item not defined!!!\n")
    return
  end
  if MapTutorials and not Trials.isTrial and not MapTutorials.DaggerTutorialCompleted and not MapTutorials.FirstDaggerZoomOK then
    if (Pos - player.Pos):mod2D() < player.Radius + PickableItems.PickRadius then
      LycanthropeLesser.IgnoreUserControlForTutorial = true
      player.IgnoreUsrControl = 0
      player.uData.MustDropLycanDagger = false
      Game.ConsoleError("Player too near!!!\n")
      player.uData.IgnorePickingDaggers = true
    else
      player.uData.MustDropLycanDagger = false
    end
  end
  local isCol, thePos = Game.WorldLineTest(Pos, Pos - V3D(0, 1500, 0), "", player.WorldCollisionMask + player.WallCollisionMask)
  if isCol then
    if MapTutorials and not Trials.isTrial and not MapTutorials.DaggerTutorialCompleted and not MapTutorials.FirstDaggerZoomOK then
      if (thePos - player.Pos):mod2D() < player.Radius + PickableItems.PickRadius then
        LycanthropeLesser.IgnoreUserControlForTutorial = true
        player.IgnoreUsrControl = 0
        player.uData.MustDropLycanDagger = false
        Game.ConsoleError("Player too near!!!\n")
        player.uData.IgnorePickingDaggers = true
      else
        player.uData.MustDropLycanDagger = false
      end
    end
    local o = Game.CreateEntity("PickableItem" .. PickableItems.Counter, "Item", Pos)
    PickableItems.Counter = PickableItems.Counter + 1
    o.Mesh = typeData.Mesh
    PickableItems.CreateEffects(o.Name, Type)
    local dispY = defparam(typeData.DisplacementY, 100)
    thePos = thePos + V3D(0, dispY, 0)
    o.uData.DestPos = thePos
    o.Origin = Pos
    o.Pos = Pos
    o.Radius = PickableItems.PickRadius
    o.OnlyUser = 1
    o.OnTake = typeData.OnTake
    o.SpinSpeed = PickableItems.SpinSpeed
    o.FloatingSpeed = PickableItems.FloatingSpeed
    o.FloatingAmplitude = PickableItems.FloatingAmplitude
    MissionUtils.DoInterpTgt(o, {
      [1] = 1,
      [2] = "2s",
      Pos = thePos
    })
    o.uData.modif.OnEnd = "PickableItems.OnEndModifier"
    o.uData.modif.uData.object = o
    o.uData.modif.uData.Dist = (Pos - thePos):mod()
    addSF(typeData.DisappearTime, o.Name .. "_Disappear", "PickableItems.Dissapear", o.Name)
    PickableItems.Add(o)
    if not Trials.isTrial and player.uData.DaggersAppearCallBack then
      player.uData.DaggersAppearCallBack(o.Name)
    end
  end
end

function PickableItems.OnEndModifier(m)
  local o = m.uData.object
  if o and o.bValidBaseType then
    MissionUtils.DoInterpTgt(o, {
      [1] = 1,
      [2] = "os",
      Pos = o.Pos + V3D(0, m.uData.Dist * 0.1, 0)
    })
  end
end

function PickableItems.Dissapear(ItemName)
  local o = Game.GetEntity(ItemName)
  if o then
    PickableItems.StopEffects(ItemName)
    PickableItems.Remove(o)
    if not Trials.isTrial and player.uData.DaggersDisappearCallBack then
      player.uData.DaggersDisappearCallBack()
    end
  end
  Game.Log("Item dissapear (" .. ItemName .. ")\n", 2)
end

PickableItems.List = {}

function PickableItems.Add(item)
  PickableItems.List[item.Name] = item
end

function PickableItems.Remove(item)
  PickableItems.List[item.Name] = nil
  item:Del()
end

function PickableItems.RemoveAll()
  for name, item in pairs(PickableItems.List) do
    PickableItems.EndEffects(item.Name)
    PickableItems.Remove(item)
  end
end

PickableItems.TimeStamps = {}
PickableItems.CantPickDelay = 2

function PickableItems.TimerControl(str)
  if PickableItems.TimeStamps[str] and PickableItems.TimeStamps[str] + PickableItems.CantPickDelay > Game.GetTime() then
    PickableItems.TimeStamps[str] = Game.GetTime()
    return false
  else
    PickableItems.TimeStamps[str] = Game.GetTime()
    return true
  end
end

function PickableItems.GetCurrentDaggers()
  return WeaponsDagger.Daggers.Value
end

function PickableItems.OnPickDagger(ItemName, PlayerName)
  if player.uData.IgnorePickingDaggers then
    return
  end
  if PickableItems.GetCurrentDaggers() < WeaponsDagger.GetMaxDaggers() then
    local o = Game.GetEntity(ItemName)
    PickableItems.OnPickFX(ItemName, "Dagger")
    PickableItems.IncrementType(PlayerName, o.Pos, "Dagger", 1)
    PickableItems.Remove(o)
    Game.Log("DAGGER PICKED!!!!!\n", 2)
    if MapTutorials then
      MapTutorials.PickedDaggers = true
    end
  elseif PickableItems.TimerControl("Dagger") then
    PickableItems.CantPickFX(ItemName)
    PickableItems.MessageCantPick("Daggers_Limit")
  end
end

function PickableItems.OnPickDaggerPack(ItemName, PlayerName)
  if player.uData.IgnorePickingDaggers then
    return
  end
  if PickableItems.GetCurrentDaggers() < WeaponsDagger.GetMaxDaggers() then
    local o = Game.GetEntity(ItemName)
    PickableItems.OnPickFX(ItemName, "DaggerPack")
    PickableItems.IncrementType(PlayerName, o.Pos, "Dagger", WeaponsDagger.PickedDaggers)
    PickableItems.Remove(o)
    Game.Log("DAGGER PACK PICKED!!!!!\n", 2)
    if MapTutorials then
      MapTutorials.PickedDaggers = true
    end
  elseif PickableItems.TimerControl("DaggerPack") then
    PickableItems.CantPickFX(ItemName)
    PickableItems.MessageCantPick("Daggers_Limit")
  end
end

function PickableItems.GetCurrentVials()
  return WeaponsVial.Vials.Value
end

function PickableItems.OnPickVial(ItemName, PlayerName)
  if PickableItems.GetCurrentVials() < WeaponsVial.GetMaxVials() then
    local o = Game.GetEntity(ItemName)
    PickableItems.OnPickFX(ItemName, "Vial")
    PickableItems.IncrementType(PlayerName, o.Pos, "Vial", 1)
    PickableItems.Remove(o)
    Game.Log("VIAL PICKED!!!!!\n", 2)
  elseif PickableItems.TimerControl("Vial") then
    PickableItems.CantPickFX(ItemName)
    PickableItems.MessageCantPick("Vials_Limit")
  end
end

function PickableItems.OnPickVialPack(ItemName, PlayerName)
  if PickableItems.GetCurrentVials() < WeaponsVial.GetMaxVials() then
    local o = Game.GetEntity(ItemName)
    PickableItems.OnPickFX(ItemName, "VialPack")
    PickableItems.IncrementType(PlayerName, o.Pos, "Vial", WeaponsVial.PickedVials)
    PickableItems.Remove(o)
    Game.Log("VIAL PACK PICKED!!!!!\n", 2)
  elseif PickableItems.TimerControl("VialPack") then
    PickableItems.CantPickFX(ItemName)
    PickableItems.MessageCantPick("Vials_Limit")
  end
end

function PickableItems.GetCurrentFairies()
  return player.oAI:NumFairies()
end

function PickableItems.OnPickFairy(ItemName, PlayerName)
  local playerEntity = Game.GetEntity("Belmont")
  if PickableItems.GetCurrentFairies() < WeaponsFairy.GetMaxFairies() then
    local o = Game.GetEntity(ItemName)
    PickableItems.OnPickFX(ItemName, "Fairy")
    PickableItems.IncrementType(PlayerName, o.Pos, "Fairy", 1)
    PickableItems.Remove(o)
    Game.Log("FAIRY PICKED!!!!!\n", 2)
  elseif PickableItems.TimerControl("Fairy") then
    PickableItems.CantPickFX(ItemName)
    PickableItems.MessageCantPick("Fairies_Limit")
  end
end

function PickableItems.OnPickFairyPack(ItemName, PlayerName)
  local playerEntity = Game.GetEntity("Belmont")
  if PickableItems.GetCurrentFairies() < WeaponsFairy.GetMaxFairies() then
    local o = Game.GetEntity(ItemName)
    PickableItems.OnPickFX(ItemName, "FairyPack")
    PickableItems.IncrementType(PlayerName, o.Pos, "Fairy", WeaponsFairy.PickedFairies)
    PickableItems.Remove(o)
    Game.Log("FAIRY PICKED!!!!!\n", 2)
  elseif PickableItems.TimerControl("Fairy") then
    PickableItems.CantPickFX(ItemName)
    PickableItems.MessageCantPick("Fairies_Limit")
  end
end

function PickableItems.GetCurrentCrystals()
  return WeaponsCrystal.CrystalPieces.Value
end

function PickableItems.OnPickCrystal(ItemName, PlayerName)
  if PickableItems.GetCurrentCrystals() < WeaponsCrystal.InitialUses then
    local o = Game.GetEntity(ItemName)
    PickableItems.OnPickFX(ItemName, "Crystal")
    PickableItems.IncrementType(PlayerName, o.Pos, "Crystal", 1)
    PickableItems.Remove(o)
    Game.Log("CRYSTAL PICKED!!!!!\n", 2)
  elseif PickableItems.TimerControl("Crystal") then
    PickableItems.CantPickFX(ItemName, "VialPack")
    PickableItems.MessageCantPick("Crystal_Limit")
  end
end

function PickableItems.MessageCantPick(msg)
  if not Menu.IsPreviousMsgActive() then
    Scorer.SetMsgText(Game.GetLangStr(msg), Game.GetTime() + 5)
  end
end

function PickableItems.SetFullMessage(itemType)
  if itemType == "Crystal" then
    Scorer.SetMsgText(Game.GetLangStr("Crystal_Limit"), Game.GetTime() + 5)
  elseif itemType == "Vial" then
    Scorer.SetMsgText(Game.GetLangStr("Vials_Limit"), Game.GetTime() + 5)
  elseif itemType == "Fairy" then
    Scorer.SetMsgText(Game.GetLangStr("Fairies_Limit"), Game.GetTime() + 5)
  else
    Scorer.SetMsgText(Game.GetLangStr("Daggers_Limit"), Game.GetTime() + 5)
  end
end

function PickableItems.IsFullOf(itemType)
  if itemType == "Crystal" then
    return PickableItems.GetCurrentCrystals() >= WeaponsCrystal.InitialUses
  elseif itemType == "Vial" then
    return PickableItems.GetCurrentVials() >= WeaponsVial.GetMaxVials()
  elseif itemType == "Fairy" then
    return PickableItems.GetCurrentFairies() >= WeaponsFairy.GetMaxFairies()
  else
    return PickableItems.GetCurrentDaggers() >= WeaponsDagger.GetMaxDaggers()
  end
end

function PickableItems.Drop(dropperName, posX, posY, posZ, presetName)
  local pos = V3D(posX, posY, posZ)
  local dropper = Game.GetEntity(dropperName)
  if dropper then
    pos = dropper.Pos
  end
  local preset = DropPresets.table[presetName]
  if not preset then
    Game.ConsoleError("Drop preset '" .. presetName .. "' not found!!\n")
    return
  end
  Game.Log(dropperName .. " trying to drop with preset: " .. presetName, 2)
  if Game.Rand(0, 100) < preset.DropRate then
    local maxRnd = 0
    for typeName, typeData in pairs(PickableItems.Table) do
      if PickableItems.IsAvailable(typeName) then
        maxRnd = maxRnd + defparam(preset["Weight" .. typeName], 0)
      end
    end
    if 0 < maxRnd then
      local rnd = Game.Rand(0, maxRnd)
      local currentNumber = 0
      local dropType
      for typeName, typeData in pairs(PickableItems.Table) do
        if PickableItems.IsAvailable(typeName) then
          currentNumber = currentNumber + defparam(preset["Weight" .. typeName], 0)
          dropType = typeName
          if rnd < currentNumber then
            break
          end
        end
      end
      PickableItems.Create(dropType, pos)
      Game.Log(" (Drop)", 2)
    end
  end
  Game.Log("\n", 2)
end

function PickableItems.IsAvailable(typeName)
  if not PickableItems.Table[typeName].IsAvailable then
    return true
  else
    return PickableItems.Table[typeName].IsAvailable()
  end
end

function PickableItems.DaggerAvailable()
  return Belmont.DaggersActive.Value
end

function PickableItems.VialAvailable()
  return Belmont.VialActive.Value
end

function PickableItems.CrystalAvailable()
  return Belmont.CrystalActive.Value and (SaveGame.IsLevelVisited("2_9_stone_idol_temple") or init.LevelName == "level.lego")
end

function PickableItems.FairyAvailable()
  return Belmont.FairiesActive.Value and init.LevelName ~= "level.3_0_the_gauntlet"
end

function PickableItems.ScheduleDrop(dropper, delay)
  local attacker = Game.GetEntity(dropper.Hit_Attacker)
  if (not attacker or attacker.TgType ~= "red") and (not player or player.ActCtrl ~= "Laura") then
    local presetName
    local pos = dropper.Pos
    presetName = PickableItems.GetPresetName(dropper)
    if not presetName or presetName == "" or presetName == "-Nothing" then
      return
    end
    addSF(delay, "DropPickable", "PickableItems.Drop", dropper.Name, pos, presetName)
  end
end

function PickableItems.GetPresetName(dropper)
  local presetName
  if dropper.uData.InheritedDropPreset then
    presetName = dropper.uData.InheritedDropPreset
  else
    if dropper:IsType("WalkChar") then
      if Game.GetEntityList(dropper.EntityList) then
        presetName = Game.GetEntityList(dropper.EntityList).uData.DropPreset
      end
    elseif dropper.uData and dropper.uData.DropPreset then
      presetName = dropper.uData.DropPreset
    end
    presetName = defparam(presetName, "-ClassDefault")
    if presetName == "-ClassDefault" then
      if dropper:IsType("WalkChar") then
        presetName = DropPresets.ClassDefaults[dropper.oActCtrl.oActClass.Name]
      else
        local meshName = dropper.Mesh
        presetName = defparam(DropPresets.ClassDefaults[string.sub(meshName, 0, #meshName - 4)], PickableItems.BreakeablePreset)
      end
    end
  end
  return presetName
end

function PickableItems.EventFillDaggers(EntityName)
  WeaponsDagger.Daggers.Value = WeaponsDagger.GetMaxDaggers()
  local ent = Game.GetEntity(EntityName)
  local obj = ent.uData.PickingFromObj
  if obj and obj.uData.ReactivationTime and obj.uData.ReactivationTime > 0.1 then
    obj.bArrowCanUse = false
    addSF(obj.uData.ReactivationTime, "Reactivate_" .. obj.Name, "PickableItems.Reactivate", obj.Name)
  end
end

function PickableItems.EventPickFromObj(EntityName)
  local ent = Game.GetEntity(EntityName)
  local obj = ent.uData.PickingFromObj
  PickableItems.IncrementType(EntityName, obj.Pos, obj.uData.ItemType, obj.uData.Items)
  if obj and obj.uData.ReactivationTime and obj.uData.ReactivationTime > 0.1 then
    obj.bArrowCanUse = false
    addSF(obj.uData.ReactivationTime, "Reactivate_" .. obj.Name, "PickableItems.Reactivate", obj.Name)
  end
end

function PickableItems.IncrementType(EntityName, pos, itemType, number, markLast, markFirst)
  local incremented
  if not itemType or itemType == "Dagger" then
    if number == -1 then
      number = WeaponsDagger.GetMaxDaggers()
    end
    local left = WeaponsDagger.GetMaxDaggers() - PickableItems.GetCurrentDaggers()
    incremented = math.min(left, number)
    WeaponsDagger.Inc("Belmont", incremented)
    if 0 < incremented then
      ScorerSprites.GotDagger(pos, incremented, markLast, markFirst)
    end
  elseif itemType == "Vial" then
    if number == -1 then
      number = WeaponsVial.GetMaxVials()
    end
    local left = WeaponsVial.GetMaxVials() - PickableItems.GetCurrentVials()
    incremented = math.min(left, number)
    WeaponsVial.IncrementVials("Belmont", incremented)
    if 0 < incremented then
      ScorerSprites.GotVial(pos, incremented, markLast, markFirst)
    end
  elseif itemType == "Fairy" then
    if number == -1 then
      number = WeaponsFairy.GetMaxFairies()
    end
    local left = WeaponsFairy.GetMaxFairies() - PickableItems.GetCurrentFairies()
    incremented = math.min(left, number)
    WeaponsFairy.Inc(EntityName, incremented)
    if 0 < incremented then
      ScorerSprites.GotFairy(pos, incremented, markLast, markFirst)
    end
  elseif itemType == "Crystal" then
    if number == -1 then
      number = WeaponsCrystal.InitialUses
    end
    local left = WeaponsCrystal.InitialUses - PickableItems.GetCurrentCrystals()
    incremented = math.min(left, number)
    if 0 < incremented then
      if PickableItems.GetCurrentCrystals() + incremented == WeaponsCrystal.InitialUses then
        ScorerSprites.GotFullCrystal(pos)
      else
        ScorerSprites.GotCrystal(pos, PickableItems.GetCurrentCrystals() + incremented)
      end
    end
    WeaponsCrystal.Inc("Belmont", incremented)
  end
end

function PickableItems.Reactivate(EntityName)
  local ent = Game.GetEntity(EntityName)
  ent.bArrowCanUse = true
end

function PickableItems.ResetPickingFromObj(EntityName)
  local ent = Game.GetEntity(EntityName)
  if ent.uData.PickingFromObj then
    ent.uData.PickingFromObj.Action = "Relax"
    ent.uData.PickingFromObj = nil
  end
end

function PickableItems.DropPrize(EntityName)
  local ent = Game.GetEntity(EntityName)
  local group = Game.GetEntityList(ent.EntityList)
  if group and (not group.uData.isGenerator or EnemyGen.IsEmpty(ent.EntityList)) and group.uData.PrizePreset and group.uData.PrizePreset ~= "" then
    Game.Log("Entity " .. EntityName .. " dropping pack '" .. group.uData.PrizePreset .. "' from group " .. ent.EntityList .. "\n", 2)
    local prizePresetData = PrizePresets.table[group.uData.PrizePreset]
    PickableItems.CreatePrizes(ent.Pos, prizePresetData)
    return true
  else
    return false
  end
end

function PickableItems.CreatePrizes(pos, prizePresetData)
  local dropped = 0
  local usedPositions = {}
  for name, number in pairs(prizePresetData) do
    Game.Log("dropping " .. number .. " " .. name .. "\n", 1)
    for i = 1, number do
      local dropPos = V3D(Game.Rand(-150, 150), 0, Game.Rand(-150, 150))
      local iterations = 0
      while iterations < 5 and PickableItems.TooNear(dropPos, usedPositions) do
        dropPos = V3D(Game.Rand(-150, 150), 0, Game.Rand(-150, 150))
        iterations = iterations + 1
      end
      PickableItems.Create(name, pos + V3D(dropPos.x, Game.Rand(0, 350), dropPos.z))
      table.insert(usedPositions, dropPos)
      dropped = dropped + 1
    end
  end
end

function PickableItems.TooNear(pos, list)
  for i, usedPos in pairs(list) do
    if (usedPos - pos):mod() < 50 then
      return true
    end
  end
  return false
end

function PickableItems.GetPresets()
  local presetNamesTable = {}
  table.insert(presetNamesTable, {
    "Element",
    "-ClassDefault"
  })
  table.insert(presetNamesTable, {"Element", "-Nothing"})
  local sortedPresets = TableToKeysSortedList(DropPresets.table)
  for i, name in pairs(sortedPresets) do
    table.insert(presetNamesTable, {"Element", name})
  end
  return presetNamesTable
end

function PickableItems.GetPrizePresets()
  local presetNamesTable = {}
  table.insert(presetNamesTable, {"Element", ""})
  local sortedPresets = TableToKeysSortedList(PrizePresets.table)
  for i, name in pairs(sortedPresets) do
    table.insert(presetNamesTable, {"Element", name})
  end
  return presetNamesTable
end

function PickableItems.InitEffects()
  FX.InitEffect("EFFECT_PARTICLES\183PICKABLE_ON_PICK", 10, "fx/Pickable/OnPick.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183PICKABLE_CANT_PICK", 10, "fx/Pickable/CantPick.ps.xml,1")
  FX.InitEffect("EFFECT_PARTICLES\183PICKABLE_Dagger", 10, "fx/Pickable/Dagger.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183PICKABLE_DaggerPack", 10, "fx/Pickable/DaggerPack.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183PICKABLE_Vial", 10, "fx/Pickable/Vial.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183PICKABLE_VialPack", 10, "fx/Pickable/VialPack.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183PICKABLE_Fairy", 10, "fx/Pickable/Fairy.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183PICKABLE_FairyPack", 10, "fx/Pickable/FairyPack.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183PICKABLE_Crystal", 10, "fx/Pickable/Crystal.ps.xml,0,1")
end

function PickableItems.CreateEffects(EntityName, Type)
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_Dagger", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_Dagger", "Pickable_" .. EntityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_DaggerPack", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_DaggerPack", "Pickable_" .. EntityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_Vial", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_Vial", "Pickable_" .. EntityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_VialPack", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_VialPack", "Pickable_" .. EntityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_Fairy", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_Fairy", "Pickable_" .. EntityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_FairyPack", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_FairyPack", "Pickable_" .. EntityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_Crystal", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_Crystal", "Pickable_" .. EntityName)
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183PICKABLE_" .. Type, "Pickable_" .. EntityName) then
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_" .. Type, "", "LinkToNode " .. EntityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_" .. Type, "", "MatrixTranslation (0,0,0)")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_" .. Type, "", "MatrixEuler (0,0,0)")
  end
end

function PickableItems.EndEffects(EntityName)
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_Dagger", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_Dagger", "Pickable_" .. EntityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_DaggerPack", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_DaggerPack", "Pickable_" .. EntityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_Vial", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_Vial", "Pickable_" .. EntityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_VialPack", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_VialPack", "Pickable_" .. EntityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_Fairy", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_Fairy", "Pickable_" .. EntityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_FairyPack", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_FairyPack", "Pickable_" .. EntityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_Crystal", "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_Crystal", "Pickable_" .. EntityName)
  end
end

function PickableItems.StopEffects(EntityName)
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_Dagger", "Pickable_" .. EntityName) then
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Dagger", "Pickable_" .. EntityName, "Unlink")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Dagger", "Pickable_" .. EntityName, "MatrixFromNode " .. EntityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Dagger", "Pickable_" .. EntityName, "BirthEnabledAll 0")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Dagger", "Pickable_" .. EntityName, "AlphaFadeOutEmitterSpeed 4,0,1")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Dagger", "Pickable_" .. EntityName, "LifeTimeRemain 1")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_DaggerPack", "Pickable_" .. EntityName) then
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_DaggerPack", "Pickable_" .. EntityName, "Unlink")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_DaggerPack", "Pickable_" .. EntityName, "MatrixFromNode " .. EntityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_DaggerPack", "Pickable_" .. EntityName, "BirthEnabledAll 0")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_DaggerPack", "Pickable_" .. EntityName, "AlphaFadeOutEmitterSpeed 4,0,1")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_DaggerPack", "Pickable_" .. EntityName, "LifeTimeRemain 1")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_Vial", "Pickable_" .. EntityName) then
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Vial", "Pickable_" .. EntityName, "Unlink")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Vial", "Pickable_" .. EntityName, "MatrixFromNode " .. EntityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Vial", "Pickable_" .. EntityName, "BirthEnabledAll 0")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Vial", "Pickable_" .. EntityName, "AlphaFadeOutEmitterSpeed 4,0,1")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Vial", "Pickable_" .. EntityName, "LifeTimeRemain 1")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_VialPack", "Pickable_" .. EntityName) then
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_VialPack", "Pickable_" .. EntityName, "Unlink")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_VialPack", "Pickable_" .. EntityName, "MatrixFromNode " .. EntityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_VialPack", "Pickable_" .. EntityName, "BirthEnabledAll 0")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_VialPack", "Pickable_" .. EntityName, "AlphaFadeOutEmitterSpeed 4,0,1")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_VialPack", "Pickable_" .. EntityName, "LifeTimeRemain 1")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_Fairy", "Pickable_" .. EntityName) then
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Fairy", "Pickable_" .. EntityName, "Unlink")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Fairy", "Pickable_" .. EntityName, "MatrixFromNode " .. EntityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Fairy", "Pickable_" .. EntityName, "BirthEnabledAll 0")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Fairy", "Pickable_" .. EntityName, "AlphaFadeOutEmitterSpeed 4,0,1")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Fairy", "Pickable_" .. EntityName, "LifeTimeRemain 1")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_FairyPack", "Pickable_" .. EntityName) then
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_FairyPack", "Pickable_" .. EntityName, "Unlink")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_FairyPack", "Pickable_" .. EntityName, "MatrixFromNode " .. EntityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_FairyPack", "Pickable_" .. EntityName, "BirthEnabledAll 0")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_FairyPack", "Pickable_" .. EntityName, "AlphaFadeOutEmitterSpeed 4,0,1")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_FairyPack", "Pickable_" .. EntityName, "LifeTimeRemain 1")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_Crystal", "Pickable_" .. EntityName) then
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Crystal", "Pickable_" .. EntityName, "Unlink")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Crystal", "Pickable_" .. EntityName, "MatrixFromNode " .. EntityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Crystal", "Pickable_" .. EntityName, "BirthEnabledAll 0")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Crystal", "Pickable_" .. EntityName, "AlphaFadeOutEmitterSpeed 4,0,1")
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_Crystal", "Pickable_" .. EntityName, "LifeTimeRemain 1")
  end
end

function PickableItems.OnPickFX(EntityName, Type)
  if FX.BeginEffect("EFFECT_PARTICLES\183PICKABLE_ON_PICK", "") then
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_ON_PICK", "", "MatrixFromNode " .. EntityName .. "#DC_Root")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183PICKABLE_" .. Type, "Pickable_" .. EntityName) then
    FX.EndEffect("EFFECT_PARTICLES\183PICKABLE_" .. Type, "Pickable_" .. EntityName)
  end
  Sound.PlaySound(Game.GetEntity(EntityName).Pos, "Pickable_Items", 0.6, 100, 5000)
end

function PickableItems.CantPickFX(EntityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183PICKABLE_CANT_PICK", "CantPick_" .. EntityName) then
    FX.SetEffect("EFFECT_PARTICLES\183PICKABLE_CANT_PICK", "", "MatrixFromNode " .. EntityName .. "#DC_Root")
    Sound.PlaySound(Game.GetEntity(EntityName).Pos, "UnPickable_Items", 0.6, 100, 5000)
  end
end

PickableItems.Table = {
  Dagger = {
    Mesh = "Models/Chars/Belmont/PickDagger.M3D",
    OnTake = "PickableItems.OnPickDagger",
    IsAvailable = PickableItems.DaggerAvailable,
    DisappearTime = 15,
    DisplacementY = 100
  },
  DaggerPack = {
    Mesh = "Models/Chars/Belmont/PickDaggerPack.M3D",
    OnTake = "PickableItems.OnPickDaggerPack",
    IsAvailable = PickableItems.DaggerAvailable,
    DisappearTime = 15,
    DisplacementY = 100
  },
  Vial = {
    Mesh = "Models/Chars/Belmont/PickVial.M3D",
    OnTake = "PickableItems.OnPickVial",
    IsAvailable = PickableItems.VialAvailable,
    DisappearTime = 15,
    DisplacementY = 100
  },
  VialPack = {
    Mesh = "Models/Chars/Belmont/PickVialPack.M3D",
    OnTake = "PickableItems.OnPickVialPack",
    IsAvailable = PickableItems.VialAvailable,
    DisappearTime = 15,
    DisplacementY = 100
  },
  Fairy = {
    Mesh = "Models/Chars/Belmont/PickFairy.M3D",
    OnTake = "PickableItems.OnPickFairy",
    IsAvailable = PickableItems.FairyAvailable,
    DisappearTime = 15,
    DisplacementY = 100
  },
  FairyPack = {
    Mesh = "Models/Chars/Belmont/PickFairyPack.M3D",
    OnTake = "PickableItems.OnPickFairyPack",
    IsAvailable = PickableItems.FairyAvailable,
    DisappearTime = 15,
    DisplacementY = 100
  },
  Crystal = {
    Mesh = "Models/Chars/Belmont/PickCrystal.M3D",
    OnTake = "PickableItems.OnPickCrystal",
    IsAvailable = PickableItems.CrystalAvailable,
    DisappearTime = 15,
    DisplacementY = 100
  }
}
PickableItems.PresetDescription = {
  DropRate = {
    ESD_FLOAT,
    0,
    100,
    1,
    100
  },
  WeightFairy = {
    ESD_FLOAT,
    0,
    100,
    0.1,
    0.05
  },
  WeightFairyPack = {
    ESD_FLOAT,
    0,
    100,
    0.1,
    0.05
  },
  WeightDagger = {
    ESD_FLOAT,
    0,
    100,
    0.1,
    0.5
  },
  WeightDaggerPack = {
    ESD_FLOAT,
    0,
    100,
    0.1,
    0.1
  },
  WeightVial = {
    ESD_FLOAT,
    0,
    100,
    0.1,
    0.2
  },
  WeightVialPack = {
    ESD_FLOAT,
    0,
    100,
    0.1,
    0.1
  },
  WeightCrystal = {
    ESD_FLOAT,
    0,
    100,
    0.1,
    0.05
  }
}
PickableItems.PrizePresetDescription = {
  Fairy = {
    ESD_INTEGER,
    0,
    100,
    1,
    0
  },
  FairyPack = {
    ESD_INTEGER,
    0,
    100,
    1,
    0
  },
  Dagger = {
    ESD_INTEGER,
    0,
    100,
    1,
    0
  },
  DaggerPack = {
    ESD_INTEGER,
    0,
    100,
    1,
    0
  },
  Vial = {
    ESD_INTEGER,
    0,
    100,
    1,
    0
  },
  VialPack = {
    ESD_INTEGER,
    0,
    100,
    1,
    0
  },
  Crystal = {
    ESD_INTEGER,
    0,
    100,
    1,
    0
  }
}
