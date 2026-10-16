WeaponsDagger.Daggers = Game.GVar("ScorerWeapon3")

function WeaponsDagger.Preload()
  WeaponsDagger.InitFX()
end

function WeaponsDagger.main()
end

function WeaponsDagger.Set(EntityName, DaggerFile)
  local ent = Game.GetEntity(EntityName)
  ent.uData.DaggerFile = DaggerFile
  ent.uData.RangedAction = "PressDagger"
  Weapons.SelectedWeapon.Value = 3
  ent.uData.DaggerHitsInARow = 0
  Belmont.UpdateDaggerNodes(EntityName, true)
end

WeaponsDagger.LaunchAngleBias = 0
WeaponsDagger.Index = 0
WeaponsDagger.EnemyNodes = {}
WeaponsDagger.EnemyBias = {
  Witch = V3D(0, -196, 234.76904296875)
}

function WeaponsDagger.ThrowDagger(EntityName, EventName, Time)
  local char = Game.GetEntity(EntityName)
  local daggerPos = char.NodePosHierarchy_OB_Gabriel_Daga
  local daggersToLaunch = defparam(char.uData.ChargedDaggers, 1)
  if WeaponsDagger.Infinite == 1 then
    WeaponsDagger.Daggers.Value = 5
  end
  local a = Game.Split(EventName, ",")
  local daggerSpeed = a[1]
  local data = {}
  data[1] = {
    a[2],
    a[3]
  }
  data[2] = {
    a[4],
    a[5]
  }
  data[3] = {
    a[6],
    a[7]
  }
  data[4] = {
    a[8],
    a[9]
  }
  local target = Game.GetEntity(char.AimEntity)
  local angleToEnemy
  if target then
    local targetPointPos = target.Pos
    if target.oActCtrl and WeaponsDagger.EnemyNodes[target.oActCtrl.oActClass.Name] then
      targetPointPos = target["NodePosHierarchy_" .. WeaponsDagger.EnemyNodes[target.oActCtrl.oActClass.Name]]
      angleToEnemy = (daggerPos - targetPointPos):getrot()
    elseif target.oActCtrl and WeaponsDagger.EnemyBias[target.oActCtrl.oActClass.Name] then
      targetPointPos = target.Pos + WeaponsDagger.EnemyBias[target.oActCtrl.oActClass.Name]:rot(target.Ang)
      angleToEnemy = (daggerPos - targetPointPos):getrot()
    else
      targetPointPos = target.Pos
      local angToEnemy = (daggerPos - targetPointPos):getrot()
      angleToEnemy = V3D(angToEnemy.x, clamp(char.Ang.y - 20, char.Ang.y + 20, angToEnemy.y), char.Ang.z)
    end
  else
    angleToEnemy = char.Ang
  end
  if 1 < daggersToLaunch then
    if char.isFalling ~= 1 and angleToEnemy.x < 30 and angleToEnemy.x > -30 then
      angleToEnemy.x = 0
    end
    if DarkPower.PowerUse.Value == 1 then
      WeaponsAttacks.LaunchWave(char, angleToEnemy, daggerSpeed, data[daggersToLaunch - 1][1], data[daggersToLaunch - 1][2], {
        Belmont.DaggersDarkWaveHitPreset.giant,
        Belmont.DaggersDarkWaveHitPreset.large,
        Belmont.DaggersDarkWaveHitPreset.average,
        Belmont.DaggersDarkWaveHitPreset.small
      })
    else
      WeaponsAttacks.LaunchWave(char, angleToEnemy, daggerSpeed, data[daggersToLaunch - 1][1], data[daggersToLaunch - 1][2], {
        Belmont.DaggersWaveHitPreset.giant,
        Belmont.DaggersWaveHitPreset.large,
        Belmont.DaggersWaveHitPreset.average,
        Belmont.DaggersWaveHitPreset.small
      })
    end
    WeaponsDagger.FXAbanico(daggerPos, angleToEnemy, daggersToLaunch)
  end
  local daggersSeparation = 0
  if 1 < daggersToLaunch then
    daggersSeparation = data[daggersToLaunch - 1][1] / 5
  end
  if WeaponsDagger.Infinite ~= 1 then
    WeaponsDagger.Daggers.Value = WeaponsDagger.Daggers.Value - daggersToLaunch
  end
  local daggerAngle = V3D(angleToEnemy.x, angleToEnemy.y, angleToEnemy.z)
  for i = 1, daggersToLaunch do
    if 1 < daggersToLaunch then
      daggerAngle.y = angleToEnemy.y + (i - 1) * daggersSeparation - (daggersToLaunch - 1) * daggersSeparation / 2
    end
    local Dagger = WeaponsDagger.LaunchDagger(char, daggerPos, daggerAngle, daggerSpeed)
    if 1 < daggersToLaunch then
      local lifeTime = data[daggersToLaunch - 1][2] / daggerSpeed
      Dagger.TimeToExplode = lifeTime
      Dagger.CharColMode = 0
      Dagger.bExplodeOnHit = false
    end
    local testPoint0 = daggerPos
    local testPoint1 = daggerPos + V3D(0, 0, -4000):rot(daggerAngle)
    local resultSet = {
      Game.TestLine(testPoint0, testPoint1, "L", EntityName)
    }
    local hittedEntity
    if type(resultSet[2]) == "string" then
      hittedEntity = Game.GetEntity(resultSet[2])
    elseif resultSet[3] == "userdata" then
      hittedEntity = resultSet[3]
    end
    if hittedEntity then
      local tempReactions = {}
      tempReactions.small = char.oActCtrl.oActClass.uData.HitPresets[Belmont.DaggerHitPreset.small].Reaction
      tempReactions.average = char.oActCtrl.oActClass.uData.HitPresets[Belmont.DaggerHitPreset.average].Reaction
      tempReactions.large = char.oActCtrl.oActClass.uData.HitPresets[Belmont.DaggerHitPreset.large].Reaction
      tempReactions.giant = char.oActCtrl.oActClass.uData.HitPresets[Belmont.DaggerHitPreset.giant].Reaction
      if hittedEntity.oActCtrl and hittedEntity.oActCtrl.oActClass and hittedEntity.oActCtrl.oActClass.uData.DaggerCustomSize then
        local size = hittedEntity.oActCtrl.oActClass.Size
        local customSize = hittedEntity.oActCtrl.oActClass.uData.DaggerCustomSize
        tempReactions[size] = char.oActCtrl.oActClass.uData.HitPresets[Belmont.DaggerHitPreset[customSize]].Reaction
      end
      local timeToHit = (daggerPos - hittedEntity.Pos):mod() / daggerSpeed
      char:CallPreHit(Dagger.Name, hittedEntity.Name, timeToHit, daggerAngle.x, daggerAngle.y, daggerAngle.z, hittedEntity.Pos.x, hittedEntity.Pos.y, hittedEntity.Pos.z, tempReactions.small, tempReactions.average, tempReactions.large, tempReactions.giant, 1)
    end
  end
  WeaponsDagger.FXThrowDaggerSound(EntityName, daggersToLaunch)
end

WeaponsDagger.Infinite = 1
WeaponsDagger.PickedDaggers = 1
WeaponsDagger.MaxDaggersBase = 5
WeaponsDagger.DaggersExpansions = 0
WeaponsDagger.MaxDaggersInc = 5

function WeaponsDagger.Inc(EntityName, count)
  local ent = Game.GetEntity(EntityName)
  if count == nil or count == -1 then
    count = WeaponsDagger.GetMaxDaggers() - WeaponsDagger.Daggers.Value
  else
    count = math.min(count, WeaponsDagger.GetMaxDaggers() - WeaponsDagger.Daggers.Value)
  end
  WeaponsDagger.Daggers.Value = WeaponsDagger.Daggers.Value + count
  return count
end

function WeaponsDagger.GetMaxDaggers()
  return WeaponsDagger.MaxDaggersBase + WeaponsDagger.DaggersExpansions * WeaponsDagger.MaxDaggersInc
end

function WeaponsDagger.LaunchDagger(char, daggerPos, angleToEnemy, speed)
  local Dagger = Game.CreateEntity("BelmontDagger" .. WeaponsDagger.Index, "Missile", daggerPos)
  WeaponsDagger.Index = WeaponsDagger.Index + 1
  Dagger.oParent = char
  Dagger.Mesh = defparam(char.uData.DaggerFile, Belmont.DagaFile)
  Dagger.CharColMode = 4
  Dagger.EmbeddedCapsuleRadius = 13
  Dagger.EmbeddedCapsuleHeight = 200
  local randomAimPoint = V3D(math.random(-15, 15), math.random(-20, 20), 0)
  Dagger.Life = 50
  Dagger.Ang = V3D(angleToEnemy.x, angleToEnemy.y, angleToEnemy.z)
  Dagger.Vel = V3D(0, 0, -speed):rot(Dagger.Ang)
  Dagger.OnHit = "WeaponsDagger.HitDagger"
  Dagger.OnExplode = "WeaponsDagger.ExplodeDagger"
  Dagger.Gravity = 0
  Dagger.ReboundLimit = 0
  Dagger.bCheckIfStablePos = false
  Dagger.bBounceOnHit = false
  Dagger.bExplodeOnHit = true
  if DarkPower.PowerUse.Value == 1 then
    Dagger.uData.Explosive = true
    DarkPower.Consume(char.Name, DarkPower.DarkDaggerCost)
  end
  Dagger.TimeToExplode = 5
  Belmont.UpdateDaggerNodes(char.Name, true)
  WeaponsDagger.BeginDaggerTrail(Dagger.Name, Dagger.uData.Explosive)
  return Dagger
end

function WeaponsDagger.ExplodeDagger(Bullet, x, y, z, Target)
  if Bullet and Target and Bullet.uData.IgnoreEntity == Target then
    Bullet.bHasExploded = false
  else
    Bullet:Del()
  end
end

WeaponsDagger.sizes = {
  "giant",
  "large",
  "average",
  "small"
}

function WeaponsDagger.HitDagger(Bullet, x, y, z, Target)
  local pos = V3D(x, y, z)
  local hitted = false
  if Target ~= nil then
    local class = Bullet.oParent.oActCtrl.oActClass
    if not Bullet.uData.Explosive then
      local hitPreset = Belmont.DaggerHitPreset
      for i = 1, #WeaponsDagger.sizes do
        local preset = class.uData.HitPresets[Belmont.DaggerHitPreset[WeaponsDagger.sizes[i]]]
        preset.Pos = Bullet.Pos
        if Weapons.DoDamage(Bullet.oParent, Target, preset) then
          hitted = true
        end
      end
      if hitted then
        Bullet.oParent.uData.LastExpDaggerHitEnt = nil
        WeaponsDagger.FXImpactNormal(pos)
      end
    else
      local hitPreset
      WeaponsDagger.DarkDaggerDamaging = true
      for i = 1, #WeaponsDagger.sizes do
        local preset = class.uData.HitPresets[Belmont.DarkDaggerHitPreset[WeaponsDagger.sizes[i]]]
        preset.Pos = Bullet.Pos
        if Weapons.DoDamage(Bullet.oParent, Target, preset) then
          hitted = true
        end
      end
      WeaponsDagger.FXImpactPower(pos)
      WeaponsDagger.DarkDaggerDamaging = nil
    end
    if hitted and Target:IsType("PxBodyPhysics") then
      local dir = (Target.Pos - Bullet.oParent.Pos):norm()
      Weapons.PushObject(Target.Name, dir.x, dir.y, dir.z)
    end
  else
    Bullet.oParent.uData.LastExpDaggerHitEnt = nil
    if Bullet.uData.Explosive then
      WeaponsDagger.FXImpactPower(pos)
    else
      WeaponsDagger.FXImpactNormal(pos)
    end
  end
  if Target and not hitted then
    Bullet.uData.IgnoreEntity = Target
  end
  WeaponsDagger.EndDaggerTrail(Bullet.Name)
end

function WeaponsDagger.PlayerDamage(From, To, Damage, HitData)
  if To:IsType("WalkChar") and (HitData.Type == "Dagger" or HitData.Type == "DarkDagger") then
    if HitData.Type == "DarkDagger" then
      Damage = Damage * defparam(WeaponsDagger.DarkDaggerDamages[To.oActCtrl.oActClass.Name], 1)
    else
      Damage = Damage * defparam(WeaponsDagger.DaggerDamages[To.oActCtrl.oActClass.Name], 1)
    end
  end
  return Damage
end

function WeaponsDagger.InitFX()
  FX.InitEffect("EFFECT_PARTICLES\183DAGGERTRAIL", 11, "FX/Belmont/daggertrail.ps.xml,10,1")
  FX.InitEffect("EFFECT_PARTICLES\183DAGGERTRAILPOWER", 11, "FX/Belmont/daggertrailpower.ps.xml,10,1")
  FX.InitEffect("EFFECT_PARTICLES\183DAGGEREXPLOSION", 11, "FX/Belmont/Dagger/explosion.ps.xml,0.5,1")
  FX.InitEffect("EFFECT_PARTICLES\183DAGGEREXPLOSIONPOWER", 11, "FX/Belmont/Dagger/explosion_big.ps.xml,0.5,1")
  FX.InitEffect("EFFECT_PARTICLES\183DAGGERGLOW", 11, "FX/Belmont/Dagger/glow.ps.xml,10,1")
  FX.InitEffect("EFFECT_PARTICLES\183DAGGERGLOWPOWER", 11, "FX/Belmont/Dagger/glow_power.ps.xml,10,1")
  FX.InitEffect("EFFECT_PARTICLES\183RETURNDAGGERGLOW", 10, "FX/Belmont/Dagger/return_glow.ps.xml,1,1")
  FX.InitEffect("EFFECT_PARTICLES\183DAGGERABANICO1", 1, "fx/belmont/dagger/abanico1.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183DAGGERABANICO2", 1, "fx/belmont/dagger/abanico2.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183DAGGERABANICO3", 1, "fx/belmont/dagger/abanico3.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183DAGGERABANICO4", 1, "fx/belmont/dagger/abanico4.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183DAGGERABANICOPOWER1", 1, "fx/belmont/dagger/abanico1_pow.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183DAGGERABANICOPOWER2", 1, "fx/belmont/dagger/abanico2_pow.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183DAGGERABANICOPOWER3", 1, "fx/belmont/dagger/abanico3_pow.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183DAGGERABANICOPOWER4", 1, "fx/belmont/dagger/abanico4_pow.ps.xml,0,1")
end

function WeaponsDagger.FXImpactNormal(pos)
  if FX.BeginEffect("EFFECT_PARTICLES\183DAGGEREXPLOSION", "") then
    FX.SetEffect("EFFECT_PARTICLES\183DAGGEREXPLOSION", "", "MatrixTranslation " .. pos:str3())
  end
end

function WeaponsDagger.FXImpactPower(pos)
  if FX.BeginEffect("EFFECT_PARTICLES\183DAGGEREXPLOSIONPOWER", "") then
    FX.SetEffect("EFFECT_PARTICLES\183DAGGEREXPLOSIONPOWER", "", "MatrixTranslation " .. pos:str3())
  end
  local LightRadius = 300
  local LightIntensity = 3
  if FX.BeginEffect("EFFECT_LIGHT", "Dagger_impact", 0.2) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "Translation " .. pos:str3())
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0,(1,0.7,0.4)] 0.2,[" .. LightRadius .. ",0,0,(1,0.7,0.4)]")
  end
end

function WeaponsDagger.FXPowerDamage(entityName)
  FXDamage.FXElectricDamage(entityName, 1)
end

function WeaponsDagger.BeginDaggerTrail(entityName, explosive)
  if explosive == true then
    if FX.BeginEffect("EFFECT_PARTICLES\183DAGGERTRAILPOWER", entityName .. "_DaggerTrailPower") then
      FX.SetEffect("EFFECT_PARTICLES\183DAGGERTRAILPOWER", entityName .. "_DaggerTrailPower", "BirthEnabled 0,0,1")
      FX.SetEffect("EFFECT_PARTICLES\183DAGGERTRAILPOWER", "", "EmitterLinkToNode 0,0 " .. entityName .. "#OB_Gabriel_Daga")
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183DAGGERGLOWPOWER", entityName .. "_DaggerGlowPower") then
      FX.SetEffect("EFFECT_PARTICLES\183DAGGERGLOWPOWER", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Daga")
    end
  else
    if FX.BeginEffect("EFFECT_PARTICLES\183DAGGERTRAIL", entityName .. "_DaggerTrail") then
      FX.SetEffect("EFFECT_PARTICLES\183DAGGERTRAIL", entityName .. "_DaggerTrail", "BirthEnabled 0,0,1")
      FX.SetEffect("EFFECT_PARTICLES\183DAGGERTRAIL", "", "EmitterLinkToNode 0,0 " .. entityName .. "#OB_Gabriel_Daga")
    end
    if FX.BeginEffect("EFFECT_PARTICLES\183DAGGERGLOW", entityName .. "_DaggerGlow") then
      FX.SetEffect("EFFECT_PARTICLES\183DAGGERGLOW", "", "MatrixTranslation (0,0,0)")
      FX.SetEffect("EFFECT_PARTICLES\183DAGGERGLOW", "", "MatrixEuler (0,0,0)")
      FX.SetEffect("EFFECT_PARTICLES\183DAGGERGLOW", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Daga")
    end
  end
end

function WeaponsDagger.EndDaggerTrail(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183DAGGERTRAIL", entityName .. "_DaggerTrail") then
    FX.SetEffect("EFFECT_PARTICLES\183DAGGERTRAIL", entityName .. "_DaggerTrail", "BirthEnabled 0,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183DAGGERTRAILPOWER", entityName .. "_DaggerTrailPower") then
    FX.SetEffect("EFFECT_PARTICLES\183DAGGERTRAILPOWER", entityName .. "_DaggerTrailPower", "BirthEnabled 0,0,0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183DAGGERGLOW", entityName .. "_DaggerGlow") then
    FX.EndEffect("EFFECT_PARTICLES\183DAGGERGLOW", entityName .. "_DaggerGlow")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183DAGGERGLOWPOWER", entityName .. "_DaggerGlowPower") then
    FX.EndEffect("EFFECT_PARTICLES\183DAGGERGLOWPOWER", entityName .. "_DaggerGlowPower")
  end
end

function WeaponsDagger.FXReturn(entityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183RETURNDAGGERGLOW", "") then
    FX.SetEffect("EFFECT_PARTICLES\183RETURNDAGGERGLOW", "", "LinkToNode " .. entityName .. "#OB_Gabriel_Daga")
  end
end

function WeaponsDagger.FXReturnBelt(entityName, nodeName)
  if FX.BeginEffect("EFFECT_PARTICLES\183RETURNDAGGERGLOW", "") then
    FX.SetEffect("EFFECT_PARTICLES\183RETURNDAGGERGLOW", "", "LinkToNode Belmont#" .. nodeName)
  end
end

function WeaponsDagger.FXAbanico(pos, dir, num)
  local rot = dir * 3.1416 / 180
  if DarkPower.PowerUse.Value == 1 then
    local effect = "EFFECT_PARTICLES\183DAGGERABANICOPOWER" .. num - 1
    if FX.BeginEffect(effect, "") then
      FX.SetEffect(effect, "", "MatrixTranslation " .. pos:str3())
      FX.SetEffect(effect, "", "MatrixEuler " .. rot:str3())
    end
  else
    local effect = "EFFECT_PARTICLES\183DAGGERABANICO" .. num - 1
    if FX.BeginEffect(effect, "") then
      FX.SetEffect(effect, "", "MatrixTranslation " .. pos:str3())
      FX.SetEffect(effect, "", "MatrixEuler " .. rot:str3())
    end
  end
end

WeaponsDagger.ThrowDaggerSounds = {
  Normal = {
    "DaggerOne",
    "DaggerTwo",
    "DaggerThree",
    "DaggerFour",
    "DaggerFive"
  },
  Dark = {
    "DaggerOneD",
    "DaggerTwoD",
    "DaggerThreeD",
    "DaggerFourD",
    "DaggerFiveD"
  }
}

function WeaponsDagger.FXThrowDaggerSound(EntityName, NumDaggers)
  local soundName = WeaponsDagger.ThrowDaggerSounds.Normal[NumDaggers]
  if DarkPower.PowerUse.Value == 1 then
    soundName = WeaponsDagger.ThrowDaggerSounds.Dark[NumDaggers]
  end
  SoundUtils.FXPlaySound("Belmont", soundName, Game.GetEntity(EntityName).Pos)
end

WeaponsDagger.DaggerDamages = {}
WeaponsDagger.DarkDaggerDamages = {}
