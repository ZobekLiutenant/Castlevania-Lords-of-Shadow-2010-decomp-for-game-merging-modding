WeaponsCrystal.RemainingUses = Game.GVar("ScorerWeapon1")
WeaponsCrystal.CrystalPieces = Game.GVar("ScorerWeapon1")
WeaponsCrystal.ExplosionRadius = 3000
WeaponsCrystal.Energy = Game.GVar("ScorerCrystalEnergy")
WeaponsCrystal.MaxEnergy = Game.GVar("ScorerCrystalMaxEnergy")
WeaponsCrystal.InitialUses = 4
WeaponsCrystal.MarkedEntity = Game.GVar("ScorerCrystalTgtEnt")
WeaponsCrystal.EnergyGain = 3
WeaponsCrystal.EnemyList = {}

function WeaponsCrystal.main()
  WeaponsCrystal.CrystalPieces.Value = WeaponsCrystal.InitialUses
  WeaponsCrystal.Energy.Value = 0
  WeaponsCrystal.OnCrystalEmptied = ""
  WeaponsCrystal.OnCrystalFull = ""
  WeaponsCrystal.OnEnemyDrained = ""
  WeaponsCrystal.OnCrystalCollected = ""
end

function WeaponsCrystal.Set(EntityName)
  local ent = Game.GetEntity(EntityName)
  ent.uData.RangedAction = "PressCrystal"
  Weapons.SelectedWeapon.Value = 1
end

function WeaponsCrystal.SwitchDrain(ent, Track, Frame, lSeg, nSeg)
  if not lSeg then
    addSF(0.1, ent.Name .. "_Drain", "WeaponsCrystal.Drain", ent.Name)
    Belmont.FXCrystalDrainLightOn(ent.Name)
  end
  if not nSeg then
    delSF(ent.Name .. "_Drain")
    Belmont.FXCrystalDrainLightOff(ent.Name)
  end
end

function WeaponsCrystal.Drain(EntityName)
  local ent = Game.GetEntity(EntityName)
  local stopDraining = false
  local yahay = 0
  local tgt = Game.GetEntity(ent.TgtEntity)
  if tgt and 0 < tgt.Life and (ent.Pos - tgt.Pos):mod() < WeaponsCombo.Ranges.PressCrystal and WeaponsCrystal.Energy.Value < WeaponsCrystal.MaxEnergy.Value then
    local className = tgt.oActCtrl.oActClass.Name
    if WeaponsCrystal.DrainSpeeds[className] and DarkPower.PowerUse.Value ~= 1 or WeaponsCrystal.DarkDrainSpeeds[className] and DarkPower.PowerUse.Value == 1 then
      if DarkPower.PowerUse.Value ~= 1 and 0 >= WeaponsCrystal.DrainSpeeds[className] or DarkPower.PowerUse.Value == 1 and 0 >= WeaponsCrystal.DarkDrainSpeeds[className] then
        Weapons.DoDamage(tgt, ent, {Damage = 5, Reaction = 2})
      else
        if WeaponsCrystal.EnemyList == nil then
          WeaponsCrystal.EnemyList[1] = tgt.oActCtrl.oActClass.Name
        else
          for i = 1, #WeaponsCrystal.EnemyList do
            if className == WeaponsCrystal.EnemyList[i] then
              yahay = 1
            end
          end
          if yahay == 0 then
            local enemyType = tgt.oActCtrl.oActClass.Name
            WeaponsCrystal.EnemyList[#WeaponsCrystal.EnemyList + 1] = enemyType
            if "" ~= WeaponsCrystal.OnEnemyDrained then
              parseGlobalExpression(WeaponsCrystal.OnEnemyDrained)(EntityName, enemyType)
            end
          end
        end
        if DarkPower.PowerUse.Value == 1 then
        end
        local drain
        if DarkPower.PowerUse.Value == 1 then
          drain = defparam(WeaponsCrystal.DarkDrainSpeeds[className], 40) / 10
          DarkPower.Consume(EntityName, DarkPower.DarkCrystalDrainCost)
        else
          drain = defparam(WeaponsCrystal.DrainSpeeds[className], 20) / 10
        end
        Weapons.DoDamage(ent, tgt, {
          Damage = drain,
          Reaction = -1,
          Unblockable = 2,
          Dodgeable = 0,
          GiveStamina = 0
        })
        WeaponsCrystal.Energy.Value = WeaponsCrystal.Energy.Value + drain * WeaponsCrystal.EnergyGain
        if tgt.oAI ~= nil and not tgt.oAI.bIsAttacking then
          tgt.oAI:ForceOrderToAttack()
        end
        if 0 > tgt.Life then
          tgt.uData.DeathType = "Crystal"
        end
        Belmont.FXPowerCrystalDrain(ent.TgtEntity)
      end
    else
      stopDraining = true
    end
  else
    stopDraining = true
  end
  if stopDraining then
    ent.Action = "WhipCrystalEnd"
  end
  WeaponsCrystal.Energy.Value = clamp(0, WeaponsCrystal.MaxEnergy.Value, WeaponsCrystal.Energy.Value)
  if WeaponsCrystal.OnCrystalFull ~= "" and WeaponsCrystal.Energy.Value == WeaponsCrystal.MaxEnergy.Value then
    local callback = parseGlobalExpression(WeaponsCrystal.OnCrystalFull)
    callback(EntityName)
  end
  addSF(0.1, ent.Name .. "_Drain", "WeaponsCrystal.Drain", EntityName)
end

function WeaponsCrystal.BlindEnemies()
  local team, mem = AITeamList.FirstMembMetaTeam("ENEMIES")
  while mem do
    if mem.oEnt.bActive and mem.oEnt.oAI and not mem.oEnt.uData.IsCritter and not mem.oEnt.uData.NotAffectectedByPowerCrystal then
      print(mem.oEnt.oActCtrl.oActClass.Name)
      if (mem.oEnt.Pos - player.Pos):mod() < WeaponsCrystal.ExplosionRadius then
        mem.oEnt:OnPowerCrystalBegin()
      end
    end
    team, mem = AITeamList.NextMembMetaTeam("ENEMIES", team, mem)
  end
  addSF(0.5, "WeaponsCrystal.BlindEnemies", "WeaponsCrystal.BlindEnemies")
end

function WeaponsCrystal.SafePower(EntityName)
  local ent = Game.GetEntity(EntityName)
  if ent and (ent.Action == "WhipCrystalPower" or ent.Action == "WhipCrystalPowerInit") then
    WeaponsCrystal.CrystalPieces.Value = 0
    WeaponsCrystal.Energy.Value = 0
    if 0 < DarkPower.PowerUse.Value then
      DarkPower.Consume(EntityName, DarkPower.CrystalCurseCost)
      WeaponsCrystal.ActivatedWithDarkPower = true
    end
    delSF("SafePowerEnd")
    if nil ~= Chupacabra then
      Chupacabra.delay = 7
    end
    Game.Set("IsBelmontUsingPowerCrystal", 1)
    addSF(6, "PowerKill", "WeaponsCrystal.PowerKill", EntityName)
    addSF(7, "SafePowerEnd", "WeaponsCrystal.SafePowerEnd", EntityName)
    AISpec.StopAllAttackers()
    Belmont.FXPowerCrystalOn(EntityName)
    WeaponsCrystal.BlindEnemies()
    WeaponsCrystal.EnemyList = {}
    if "" ~= WeaponsCrystal.OnCrystalEmptied then
      parseGlobalExpression(WeaponsCrystal.OnCrystalEmptied)(EntityName)
    end
  end
end

function WeaponsCrystal.PowerKill(EntityName)
  delSF("WeaponsCrystal.BlindEnemies")
  local ent = Game.GetEntity(EntityName)
  WeaponsCrystal.TempAttacker = ent
  Game.SphereCall(ent.Pos, WeaponsCrystal.ExplosionRadius, "R", "WeaponsCrystal.PowerHit", 1, true)
  if MapInit.PowerCrystalSpecialUse ~= nil then
    MapInit.PowerCrystalSpecialUse()
  end
  WeaponsCrystal.TempAttacker = nil
  player.ForceAction = "WhipCrystalPowerEnd"
end

function WeaponsCrystal.SafePowerEnd(entityName)
  Game.Set("IsBelmontUsingPowerCrystal", 0)
  AISpec.RestoreAllAttackers()
  if nil ~= Chupacabra then
    Chupacabra.delay = 0.5
  end
end

function WeaponsCrystal.ApplySpecialCaseHit(EntityName)
  local ent = Game.GetEntity(EntityName)
  if not (ent.oActCtrl and ent.oActCtrl.oActClass) or ent.oActCtrl.oActClass.Name == "Ogre" then
  end
  return false
end

function WeaponsCrystal.ApplySpecialCaseInit(EntityName)
  return false
end

function WeaponsCrystal.PowerHit(EntityName)
  local ent = Game.GetEntity(EntityName)
  if WeaponsCrystal.TempAttacker ~= ent then
    if ent:IsType("WalkChar") then
      ent:OnPowerCrystalDamage()
    else
      Weapons.DoDamage(WeaponsCrystal.TempAttacker, ent, {
        Damage = 500,
        Unblockable = 2,
        Dodgeable = 0
      })
    end
  end
end

function WeaponsCrystal.CrystalCurse(EntityName, EndTime)
  local ent = Game.GetEntity(EntityName)
  local damage = defparam(WeaponsCrystal.CurseDamages[ent.oActCtrl.oActClass.Name], 20) / 10
  if ent and ent.Life > damage + 5 and EndTime > Game.GetTime() then
    Weapons.DoDamage(Game.GetEntity("Belmont"), ent, {
      Damage = damage,
      Reaction = -1,
      Unblockable = 2,
      Dodgeable = 0
    })
    delSF("CrystalCurse_" .. EntityName)
    addSF(0.1, "CrystalCurse_" .. EntityName, "WeaponsCrystal.CrystalCurse", EntityName, EndTime)
  end
end

function WeaponsCrystal.EndPower(EntityName)
end

function WeaponsCrystal.IncrementCrystal(containerEntity, userEntity, drawToScorer)
  drawToScorer = defparam(drawToScorer, false)
  if containerEntity and containerEntity.uData.RestoreFullCrystal then
    WeaponsCrystal.CrystalPieces.Value = WeaponsCrystal.InitialUses
  else
    WeaponsCrystal.CrystalPieces.Value = math.min(WeaponsCrystal.CrystalPieces.Value + 1, WeaponsCrystal.InitialUses)
  end
  if nil ~= containerEntity and "" ~= WeaponsCrystal.OnCrystalCollected then
    parseGlobalExpression(WeaponsCrystal.OnCrystalCollected)(containerEntity, userEntity)
  end
  if drawToScorer then
    local playerEntity = Game.GetEntity("Belmont")
    if containerEntity and containerEntity.uData.RestoreFullCrystal or WeaponsCrystal.CrystalPieces.Value == WeaponsCrystal.InitialUses then
      ScorerSprites.GotFullCrystal(playerEntity.Pos)
    else
      ScorerSprites.GotCrystal(playerEntity.Pos, WeaponsCrystal.CrystalPieces.Value)
    end
  end
end

function WeaponsCrystal.Inc(EntityName, count)
  local ent = Game.GetEntity(EntityName)
  if count == nil or count == -1 then
    count = WeaponsCrystal.InitialUses - WeaponsCrystal.CrystalPieces.Value
  else
    count = math.min(count, WeaponsCrystal.InitialUses - WeaponsCrystal.CrystalPieces.Value)
  end
  WeaponsCrystal.CrystalPieces.Value = WeaponsCrystal.CrystalPieces.Value + count
  if WeaponsCrystal.CrystalPieces.Value == WeaponsCrystal.InitialUses then
    local si = Scorer.GetItem(0, "LifeBar")
    if si then
      si.CristalCharged = 1
    end
  end
  return count
end

function WeaponsCrystal.LoseCrystal()
  WeaponsCrystal.CrystalPieces.Value = 0
  WeaponsCrystal.Energy.Value = 0
  WeaponsCrystal.EnemyList = {}
end

function WeaponsCrystal.CrystalContainsEnemy(enemyType)
  if WeaponsCrystal.EnemyList ~= nil then
    for i = 1, #WeaponsCrystal.EnemyList do
      if WeaponsCrystal.EnemyList[i] == enemyType then
        return true
      end
    end
  end
  return false
end

function WeaponsCrystal.CanPickCrystal()
  return WeaponsCrystal.CrystalPieces.Value < WeaponsCrystal.InitialUses
end

WeaponsCrystal.DrainSpeeds = {}
WeaponsCrystal.DarkDrainSpeeds = {}
WeaponsCrystal.ExplosionDamages = {}
WeaponsCrystal.CurseDamages = {}

function WeaponsCrystal.OnPowerCrystalBegin(EntityName)
  local ent = Game.GetEntity(EntityName)
  ent.oAI:SetCrazyFor(10, 5)
end

function WeaponsCrystal.OnPowerCrystalDamage(EntityName)
  Game.ConsoleError("Crystal damage to " .. EntityName .. "\n")
  local ent = Game.GetEntity(EntityName)
  ent.Invulnerable = 0
  if ent.oActCtrl.oActClass.Size == "large" and ent.oAI.bIsCrazy then
    if ent.oAI.iCrazyState == 5 then
      ent.oAI:SetCrazyFalse(5)
    elseif ent.oAI.iCrazyState == 0 then
      return
    end
  end
  Weapons.DoDamage(WeaponsCrystal.TempAttacker, ent, {
    Damage = defparam(WeaponsCrystal.ExplosionDamages[ent.oActCtrl.oActClass.Name], 500),
    Reaction = 3,
    Unblockable = 2,
    Dodgeable = 0,
    Type = "Crystal"
  })
end
