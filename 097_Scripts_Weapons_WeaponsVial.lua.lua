WeaponsVial.Vials = Game.GVar("ScorerWeapon2")
WeaponsVial.VialProtection = Game.GVar("VialProtection")
WeaponsVial.PickedVials = 2

function WeaponsVial.Preload()
  WeaponsVial.CreateEffects()
end

function WeaponsVial.main()
end

function WeaponsVial.Set(EntityName, VialFile)
  local ent = Game.GetEntity(EntityName)
  ent.uData.VialFile = VialFile
  ent.uData.RangedAction = "PressVial"
  ent.uData.nVials = WeaponsVial.Vials.Value
  Weapons.SelectedWeapon.Value = 2
  Belmont.UpdateVialNodes(EntityName)
end

WeaponsVial.Index = 0
WeaponsVial.Speed = 2200
WeaponsVial.Gravity = -3000
WeaponsVial.Angle = -10
WeaponsVial.AngleDown = -90
WeaponsVial.EnemyMult = {}
WeaponsVial.ProtectionMult = {}

function WeaponsVial.ThrowVial(EntityName, EventName, Time)
  local char = Game.GetEntity(EntityName)
  local onAir = EventName == "OnAir"
  local DeltaPos = V3D(0, 70, -140)
  local Vial = Game.CreateEntity("BelmontVial" .. WeaponsVial.Index, "Missile", char.Pos + DeltaPos:rot(char.Ang))
  WeaponsVial.Index = WeaponsVial.Index + 1
  Vial.oParent = char
  Vial.Mesh = char.uData.VialFile
  Vial.EmbeddedCapsuleRadius = 13
  Vial.EmbeddedCapsuleHeight = 200
  local speed = WeaponsVial.Speed
  Vial.Life = 50
  local gravity = WeaponsVial.Gravity
  local angx, explodeFunction
  if onAir then
    angx = WeaponsVial.AngleDown
    if LightPower.PowerUse.Value == 1 then
      explodeFunction = "WeaponsVial.ExplodeLightVial"
    else
      explodeFunction = "WeaponsVial.ExplodeVial"
    end
  else
    angx = WeaponsVial.Angle
    explodeFunction = "WeaponsVial.ExplodeVial"
  end
  Vial.Ang = V3D(angx, char.Ang.y, char.Ang.z)
  Vial.Vel = V3D(0, 0, -speed):rot(Vial.Ang)
  Vial.OnExplode = explodeFunction
  Vial.OnHit = "WeaponsVial.OnHit"
  Vial.Gravity = gravity
  Vial.ReboundLimit = 0
  Vial.bCheckIfStablePos = false
  Vial.bBounceOnHit = true
  Vial.bExplodeOnHit = true
  Vial.TimeToExplode = 5
  char.uData.nVials = char.uData.nVials - 1
  WeaponsVial.Vials.Value = char.uData.nVials
  Belmont.UpdateVialNodes(EntityName)
  WeaponsVial.FXTrailOn(Vial.Name)
  local speed = Vial.Vel:mod()
  local target = Game.GetEntity(char.TgtEntity)
  if target and target:IsType("WalkChar") then
    local targetPointPos = target.Pos
    local angleToEnemy = (Vial.Pos - targetPointPos):getrot()
    local dir = (Vial.Pos - targetPointPos):norm()
    local timeToHit = (Vial.Pos - targetPointPos):mod() / speed
    local reaction = char.oActCtrl.oActClass.uData.HitPresets[Belmont.VialHitPreset].Reaction
    char:CallPreHit(Vial.Name, target.Name, timeToHit, dir.x, dir.y, dir.z, targetPointPos.x, targetPointPos.y, targetPointPos.z, reaction, reaction, reaction, reaction, 2)
  end
end

function WeaponsVial.ExplodeVial(Bullet, x, y, z, Target)
  if Bullet then
    local pos = V3D(x, y, z)
    WeaponsAttacks.LaunchCircularWave(Bullet.oParent, 1750, 200, 1000, V3D(0, 0, 0), {"Vial"}, false, Bullet.Pos, false)
    WeaponsVial.FXTrailOff(Bullet.Name)
    NPC.DisolveAndDeleteEntity(Bullet.Name, 0, 0.8)
  end
end

function WeaponsVial.ExplodeLightVial(Bullet, x, y, z, Target)
  if Bullet then
    local pos = V3D(x, y, z)
    WeaponsAttacks.LaunchCircularWave(Bullet.oParent, 1750, 200, 1000, V3D(0, 0, 0), {"Vial"}, false, Bullet.Pos, false)
    WeaponsVial.FXTrailOff(Bullet.Name)
    WeaponsVial.BeginVialProtection(Bullet.oParent)
    NPC.DisolveAndDeleteEntity(Bullet.Name, 0, 0.8)
  end
end

function WeaponsVial.OnHit(Bullet, x, y, z, target, surface, nx, ny, nz)
  local pos = V3D(x, y, z)
  local normal = V3D(nx, ny, nz)
  WeaponsVial.FXExplosion(Bullet.Name, pos, normal)
  if init.LevelName == "level.dlc_1_2_dungeon" and surface == "WATER" then
    Bullet.TimeToExplode = 0
  end
end

WeaponsVial.MaxVialsBase = 4
WeaponsVial.VialsExpansions = 0
WeaponsVial.MaxVialsInc = 2

function WeaponsVial.GetMaxVials()
  return WeaponsVial.MaxVialsBase + WeaponsVial.VialsExpansions * WeaponsVial.MaxVialsInc
end

function WeaponsVial.IncrementVials(entityName, count)
  local entity = Game.GetEntity(entityName)
  if not entity.uData.nVials then
    entity.uData.nVials = WeaponsVial.GetMaxVials()
  end
  if nil == count or -1 == count then
    count = WeaponsVial.GetMaxVials() - entity.uData.nVials
  else
    count = math.min(count, WeaponsVial.GetMaxVials() - entity.uData.nVials)
  end
  entity.uData.nVials = entity.uData.nVials + count
  WeaponsVial.Vials.Value = entity.uData.nVials
  Belmont.UpdateVialNodes(entityName)
  return count
end

function WeaponsVial.ExpendVial(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  if not ent then
    return
  end
  ent.uData.nVials = ent.uData.nVials - 1
  WeaponsVial.Vials.Value = ent.uData.nVials
  Belmont.UpdateVialNodes(EntityName)
end

function WeaponsVial.LaunchProtectiveVial(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  if not ent then
    return
  end
  ent.uData.nVials = ent.uData.nVials - 1
  WeaponsVial.Vials.Value = ent.uData.nVials
  Belmont.UpdateVialNodes(EntityName)
  WeaponsVial.BeginVialProtection(ent)
end

function WeaponsVial.BeginVialProtection(ent)
  ent.uData.VialProtection = true
  WeaponsVial.VialProtection.Value = 1
  LightPower.Consume(ent.Name, Belmont.ProtectiveVialCost)
  delSF("EndVialProtection")
  addSF(Belmont.ProtectiveVialDuration, "EndVialProtection", "WeaponsVial.EndVialProtection", ent.Name)
  Game.Log("BeginVialProtection\n", 2)
  if FX.IsEffect("EFFECT_PARTICLES\183VIAL_SHIELD", "VIAL_SHIELD") then
    FX.EndEffect("EFFECT_PARTICLES\183VIAL_SHIELD", "VIAL_SHIELD")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183VIAL_SHIELD", "VIAL_SHIELD") then
    FX.SetEffect("EFFECT_PARTICLES\183VIAL_SHIELD", "", "PositionLinkToNode " .. player.Name .. "#DC_Root")
  end
end

WeaponsVial.FXVialShieldHitTimeStamp = 0

function WeaponsVial.FXVialShiedlHit()
  local time = Game.GetTime()
  if time > WeaponsVial.FXVialShieldHitTimeStamp + 0.5 and FX.BeginEffect("EFFECT_PARTICLES\183VIAL_SHIELD_HIT", "") then
    FX.SetEffect("EFFECT_PARTICLES\183VIAL_SHIELD_HIT", "", "PositionLinkToNode " .. player.Name .. "#DC_Root")
    WeaponsVial.FXVialShieldHitTimeStamp = time
  end
end

function WeaponsVial.VialProtectionDebug(EntityName)
  local ent = Game.GetEntity(EntityName)
  if ent and ent.uData.VialProtection then
    if not ent.uData.VialProtectionDebug or not ent.uData.VialProtectionDebug.bValidBaseType then
      ent.uData.VialProtectionDebug = DebugDraw.NewPrimitive("Sphere")
      ent.uData.VialProtectionDebug.Radius = 150
      ent.uData.VialProtectionDebug.Color = Color(50, 200, 50, 255)
    end
    ent.uData.VialProtectionDebug.Pos = ent.Pos
    ent.uData.VialProtectionDebug.TimeToDel = Game.GetTime() + 0.2
    addSF(0.1, "VialProtectionDebug", "WeaponsVial.VialProtectionDebug", ent.Name)
  end
end

function WeaponsVial.EndVialProtection(EntityName)
  local ent = Game.GetEntity(EntityName)
  if ent then
    ent.uData.VialProtection = false
    WeaponsVial.VialProtection.Value = 0
    Game.Log("EndVialProtection\n", 2)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183VIAL_SHIELD", "VIAL_SHIELD") then
    FX.EndEffect("EFFECT_PARTICLES\183VIAL_SHIELD", "VIAL_SHIELD")
    WeaponsVial.FXVialShiedlHit()
  end
end

function WeaponsVial.PlayerDamage(From, To, Damage, HitData)
  if To.uData.VialProtection and To:IsType("WalkChar") and To.UsrControl and To.UsrControl ~= -1 then
    local prot = defparam(WeaponsVial.ProtectionMult[From.oActCtrl.oActClass.Name], 0.5)
    return Damage * prot
  elseif HitData.Type == "Vial" and To:IsType("WalkChar") and WeaponsVial.EnemyMult[To.oActCtrl.oActClass.Name] then
    return Damage * WeaponsVial.EnemyMult[To.oActCtrl.oActClass.Name]
  else
    return Damage
  end
end

function WeaponsVial.CreateEffects()
  FX.InitEffect("EFFECT_PARTICLES\183VIAL_EXPLOSION", 5, "fx/belmont/vial/explosion.ps.xml,1,0")
  FX.InitEffect("EFFECT_PARTICLES\183VIAL_FIRE", 5, "fx/belmont/vial/fire.ps.xml,1,0")
  FX.InitEffect("EFFECT_PARTICLES\183VIAL_TRAIL", 5, "fx/belmont/vial/trail.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183VIAL_FIRE_SHIELD", 1, "fx/belmont/vial/FIRE_shield.ps.xml,0,1")
end

function WeaponsVial.FXTrailOn(entityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183VIAL_TRAIL", entityName .. "_VialTrail") then
    FX.SetEffect("EFFECT_PARTICLES\183VIAL_TRAIL", entityName .. "_VialTrail", "BirthEnabled 0,0,1")
    FX.SetEffect("EFFECT_PARTICLES\183VIAL_TRAIL", "", "EmitterLinkToNode 0,0 " .. entityName .. "#DC_Root")
  end
end

function WeaponsVial.FXTrailOff(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183VIAL_TRAIL", entityName .. "_VialTrail") then
    FX.SetEffect("EFFECT_PARTICLES\183VIAL_TRAIL", entityName .. "_VialTrail", "BirthEnabled 0,0,0")
  end
end

function WeaponsVial.FXExplosion(entityName, pos, normal)
  local expPos
  if FX.BeginEffect("EFFECT_PARTICLES\183VIAL_EXPLOSION", "") then
    expPos = pos + normal * 100
    FX.SetEffect("EFFECT_PARTICLES\183VIAL_EXPLOSION", "", "MatrixTranslation " .. expPos:str3())
    Effects.RadialBlur(4, 0, 0.5, expPos, nil, V4D(1.3, 1.4, 1.5, 0.6))
    Weapons.QuakeFX(expPos, 1, 0.4, nil, nil, nil, false)
    Input.Rumble(0, 0.75, 0.75, 0.4)
    SoundUtils.FXPlaySound("Belmont", "VialExplosion", expPos)
  end
  print(normal.y)
  if 0.5 < normal.y then
    expPos = expPos + V3D(0, -60, 0)
    if FX.BeginEffect("EFFECT_PARTICLES\183VIAL_FIRE", "") then
      FX.SetEffect("EFFECT_PARTICLES\183VIAL_FIRE", "", "MatrixTranslation " .. expPos:str3())
    end
  end
end

function WeaponsVial.FXShieldFire(entityName)
  local pos = Game.GetEntity(entityName).Pos
  pos = pos + V3D(0, -130, 0)
  if FX.BeginEffect("EFFECT_PARTICLES\183VIAL_FIRE_SHIELD", "") then
    FX.SetEffect("EFFECT_PARTICLES\183VIAL_FIRE_SHIELD", "", "MatrixTranslation " .. pos:str3())
  end
  Input.Rumble(0, 0.75, 0.75, 0.4)
  SoundUtils.FXPlaySound("Belmont", "VialExplosion", pos)
end
