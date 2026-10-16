Weapons.SelectedWeapon = Game.GVar("ScorerWeaponId")
Weapons.Debug = Game.GVar("CombatDebug")
Weapons.BlockSyncEnabled = true
Weapons.TempMelee = {}
Weapons.TempMelee.HitData = {}
Weapons.ExpansionsPicked = ""

function Weapons.Preload()
  Preload.PreloadLib("Scripts/Weapons/WeaponsWhip.lua", "WeaponsWhip")
  Preload.PreloadLib("Scripts/Weapons/WeaponsDagger.lua", "WeaponsDagger")
  Preload.PreloadLib("Scripts/Weapons/WeaponsVial.lua", "WeaponsVial")
end

function Weapons.main()
  Game.PreloadLibrary("Scripts/Weapons/WeaponsCombo.lua", "WeaponsCombo")
  Game.PreloadLibrary("Scripts/Weapons/LinkConditions.lua", "LinkConditions")
  Game.PreloadLibrary("Scripts/Chars/Combat/CombatParams.lua", "CombatParams")
  Game.PreloadLibrary("Scripts/Chars/Combat/CombatLinks.lua", "CombatLinks")
  Game.PreloadLibrary("Scripts/Player/GabrielCombos.lua", "GabrielCombos")
  Game.PreloadLibrary("Scripts/Weapons/WeaponsCharge.lua", "WeaponsCharge")
  Game.PreloadLibrary("Scripts/FX/Damage.lua", "FXDamage")
  Game.PreloadLibrary("Scripts/Weapons/MiniGames.lua", "MiniGames")
  Game.PreloadLibrary("Scripts/Chars/Combat/EnemyLevels.lua", "EnemyLevels")
  if init then
    Game.NumWeapons(24)
    Game.Set("OnBeforeDeathChar", "Weapons.OnBeforeCharDeath")
    Game.Set("OnDeathChar", "Weapons.OnCharDeath")
    Weapons.FliesFlag = 0
    Weapons.ResetSounds()
    Weapons.ExplosionType = 0
  end
end

function Weapons.ResetSounds()
  Weapons.TempSound = ""
  Weapons.TempVolume = 1
  Weapons.TempAttenIni = 0
  Weapons.TempAttenEnd = 0
end

function Weapons.PlaySound(Pos)
  Sound.PlaySound(Pos, Weapons.TempSound, Weapons.TempVolume, Weapons.TempAttenIni, Weapons.TempAttenEnd)
  Weapons.ResetSounds()
end

function Weapons.SetVariableHitPreset(EntityName, EventName, Time)
  local char = Game.GetEntity(EntityName)
  char.uData.VariableHitPreset = EventName
end

function Weapons.MeleeHit(entityName, hitPresetsNames, posX, posY, posZ, radius, node, ignoreAimEnt, angX, angY, nodeRelativedir)
  local char = Game.GetEntity(entityName)
  if char ~= nil then
    local hitPresetList = char.oActCtrl.oActClass.uData.HitPresets
    local tempMelee = Weapons.TempMelee
    tempMelee.HitData = {
      hitPresetList[hitPresetsNames[1]],
      hitPresetList[hitPresetsNames[2]],
      hitPresetList[hitPresetsNames[3]],
      hitPresetList[hitPresetsNames[4]]
    }
    tempMelee.Ent = char
    if ignoreAimEnt == "1" then
      tempMelee.Ignored = char.TgtEntity
    end
    local nodePos, nodeAng
    if node and node ~= "" then
      if string.sub(node, 1, 1) == "!" then
        local tgt = Game.GetEntity(char.TgtEntity)
        if tgt then
          nodePos = tgt["NodePosHierarchy_" .. string.sub(node, 2)]
          nodeAng = tgt["NodeAngHierarchy_" .. string.sub(node, 2)]
        end
      else
        nodePos = char["NodePosHierarchy_" .. node]
        nodeAng = char["NodeAngHierarchy_" .. node]
      end
    end
    local testPos
    if nodePos and nodeAng then
      testPos = nodePos + V3D(posX, posY, posZ):rot(nodeAng)
    else
      testPos = char.Pos + V3D(posX, posY, posZ):rot(V3D(0, char.Ang.y, 0))
    end
    tempMelee.Pos = testPos
    if angX and angY then
      if nodeAng and nodeRelativedir then
        tempMelee.Dir = V3D(0, 0, -1):rot(V3D(angX, angY, 0)):rot(nodeAng)
      else
        tempMelee.Dir = V3D(0, 0, -1):rot(V3D(angX, angY, 0)):rot(char.Ang)
      end
    else
      tempMelee.Dir = nil
    end
    local res = Game.SphereCall(testPos, radius, "L", "Weapons.DoMeleeHit", 1, true)
    tempMelee.Ent = nil
    tempMelee.Ignored = nil
    if 2 <= Weapons.Debug.Value then
      local s = DebugDraw.NewPrimitive("Sphere")
      s.Pos = testPos
      s.Radius = tonumber(radius)
      s.TimeToDel = Game.GetTime() + 0.3
      s.Color = Color(255, 0, 0, 255)
    end
  end
end

function Weapons.TriMeleeHit(EntityName, hitPresetsNames, vert1, vert2, vert3, angX, angY)
  local char = Game.GetEntity(EntityName)
  if char ~= nil then
    local hitPresetList = char.oActCtrl.oActClass.uData.HitPresets
    Weapons.TempMelee.HitData = {
      hitPresetList[hitPresetsNames[1]],
      hitPresetList[hitPresetsNames[2]],
      hitPresetList[hitPresetsNames[3]],
      hitPresetList[hitPresetsNames[4]]
    }
    Weapons.TempMelee.Ent = char
    vert1 = char.Pos + vert1:rot(char.Ang)
    vert2 = char.Pos + vert2:rot(char.Ang)
    vert3 = char.Pos + vert3:rot(char.Ang)
    Weapons.TempMelee.Pos = testPos
    if angX and angY then
      Weapons.TempMelee.Dir = V3D(0, 0, -1):rot(V3D(angX, angY, 0)):rot(char.Ang)
    else
      Weapons.TempMelee.Dir = nil
    end
    local res = Game.TriBoxCall(vert1, vert2, vert3, "Weapons.DoMeleeHit")
    Weapons.TempMelee.Ent = nil
    Weapons.TempMelee.Ignored = nil
    if 2 <= Weapons.Debug.Value then
      local s = DebugDraw.NewPrimitive("Triangle")
      s.Point0 = vert1
      s.Point1 = vert2
      s.Point2 = vert3
      s.Fill = true
      s.TimeToDel = Game.GetTime() + 0.3
      s.Color = Color(255, 0, 0, 128)
    end
  end
end

function Weapons.MeleeHitEvent(EntityName, EventName, Time)
  local char = Game.GetEntity(EntityName)
  if char ~= nil then
    local hitpreset, posX, posY, posZ, radius, node, ignoreAimEnt, radial, angX, angY
    local a = Game.Split(EventName, ",")
    local hitpresets = {}
    hitpresets[1] = a[1]
    posX = a[2]
    posY = a[3]
    posZ = a[4]
    radius = a[5] + 0
    node = a[6]
    ignoreAimEnt = a[7]
    radial = a[13]
    if not radial or tonumber(radial) ~= 1 then
      angX = defparam(a[8], 0)
      angY = defparam(a[9], 0)
    end
    hitpresets[2] = defparam(a[10], "")
    hitpresets[3] = defparam(a[11], "")
    hitpresets[4] = defparam(a[12], "")
    if hitpresets[1] == "_Variable" then
      if char.uData.VariableHitPreset then
        hitpresets = Game.Split(char.uData.VariableHitPreset, ",")
      else
        Game.ConsoleError([[
Hit Preset _Variable not set
At ]] .. EntityName .. " on action " .. char.Action .. "\n")
      end
    end
    if Weapons.ReverseLightAndDark then
      for i = 1, #hitpresets do
        if hitpresets[i] and hitpresets[i] ~= "" then
          local alias = Weapons.ReverseLightAndDarkAlias[hitpresets[i]]
          if alias then
            hitpresets[i] = alias
          end
        end
      end
    end
    Weapons.MeleeHit(EntityName, hitpresets, posX, posY, posZ, radius, node, ignoreAimEnt, angX, angY)
  end
  return false
end

function Weapons.TriMeleeHitEvent(EntityName, EventName, Time)
  local char = Game.GetEntity(EntityName)
  if char ~= nil then
    local a = Game.Split(EventName, ",")
    local hitpresets = {}
    local vert1 = V3D(tonumber(a[1]), tonumber(a[2]), tonumber(a[3]))
    local vert2 = V3D(tonumber(a[4]), tonumber(a[5]), tonumber(a[6]))
    local vert3 = V3D(tonumber(a[7]), tonumber(a[8]), tonumber(a[9]))
    local angX, angY
    local radial = a[12]
    if not radial or tonumber(radial) ~= 1 then
      angX = defparam(a[10], 0)
      angY = defparam(a[11], 0)
    end
    hitpresets[1] = defparam(a[13], "")
    hitpresets[2] = defparam(a[14], "")
    hitpresets[3] = defparam(a[15], "")
    hitpresets[4] = defparam(a[16], "")
    if hitpresets[1] == "_Variable" then
      if char.uData.VariableHitPreset then
        hitpresets = Game.Split(char.uData.VariableHitPreset, ",")
      else
        Game.ConsoleError([[
Hit Preset _Variable not set
At ]] .. EntityName .. " on action " .. char.Action .. "\n")
      end
    end
    Weapons.TriMeleeHit(EntityName, hitpresets, vert1, vert2, vert3, angX, angY)
  end
  return false
end

function Weapons.TriPreHitEvent(EntityName, EventName, Time)
  local char = Game.GetEntity(EntityName)
  if char ~= nil then
    local a = Game.Split(EventName, ",")
    local hitpresets = {}
    local vert1 = V3D(tonumber(a[1]), tonumber(a[2]), tonumber(a[3]))
    local vert2 = V3D(tonumber(a[4]), tonumber(a[5]), tonumber(a[6]))
    local vert3 = V3D(tonumber(a[7]), tonumber(a[8]), tonumber(a[9]))
    vert1 = char.Pos + vert1:rot(char.Ang)
    vert2 = char.Pos + vert2:rot(char.Ang)
    vert3 = char.Pos + vert3:rot(char.Ang)
    Weapons.TempMelee.Ent = char
    Weapons.TempMelee.Reactions = {
      small = tonumber(a[13]),
      average = tonumber(a[14]),
      large = tonumber(a[15]),
      giant = tonumber(a[16])
    }
    local angX, angY
    local radial = a[12]
    if not radial or tonumber(radial) ~= 1 then
      angX = defparam(a[10], 0)
      angY = defparam(a[11], 0)
    end
    if angX and angY then
      Weapons.TempMelee.Dir = V3D(0, 0, -1):rot(V3D(angX, angY, 0)):rot(char.Ang)
    else
      Weapons.TempMelee.Dir = nil
    end
    Weapons.TempMelee.Dodgeable = tonumber(a[17])
    local action = char.oActCtrl.oAction
    local hitframe = tonumber(a[18])
    Weapons.TempMelee.TimeToHit = hitframe / action.AnmFPS - Time - action.FirstFrame
    local res = Game.TriBoxCall(vert1, vert2, vert3, "Weapons.TriPreHit")
  end
  return false
end

function Weapons.TriPreHit(EntityName)
  local ent = Game.GetEntity(EntityName)
  if ent:IsType("WalkChar") then
    local dir = Weapons.TempMelee.Dir
    local size = ent.oActCtrl.oActClass.Size
    local tempReactions = Weapons.TempMelee.Reactions
    local dodgeable = Weapons.TempMelee.Dodgeable
    local hittime = Weapons.TempMelee.TimeToHit
    Weapons.TempMelee.Ent:CallPreHit(Weapons.TempMelee.Ent.Name, EntityName, hittime, dir.x, dir.y, dir.z, ent.Pos.x, ent.Pos.y, ent.Pos.z, tempReactions.small, tempReactions.average, tempReactions.large, tempReactions.giant, dodgeable)
  end
end

function Weapons.DoMeleeHit(EntityName)
  local tempMelee = Weapons.TempMelee
  if tempMelee.Ent.Name == EntityName or tempMelee.Ignored == EntityName then
    return
  end
  local ent = Game.GetEntity(EntityName)
  local ragdollPartName
  if ent:IsType("PxBodyPhysics") and ent.bIsRagdollPart or ent:IsType("PxDynamicElement") and ent.bIsRagdollPart then
    ragdollPartName = ent.Name
    ent = Game.GetRagdollPartOwner(ent.Name)
    if ent == tempMelee.Ent then
      return
    end
  end
  local size = Weapons.GetSize(ent, tempMelee.HitData[1])
  for i, meleeHitData in pairs(tempMelee.HitData) do
    if meleeHitData[size] then
      meleeHitData.Pos = tempMelee.Pos
      if not tempMelee.Dir then
        meleeHitData.Dir = (ent.Pos - meleeHitData.Pos):norm()
      else
        meleeHitData.Dir = tempMelee.Dir
      end
      Weapons.DoDamage(tempMelee.Ent, ent, meleeHitData, true, nil, ragdollPartName)
      if ent and ent:IsType("PxBodyPhysics") then
        local dir = (ent.Pos - tempMelee.Ent.Pos):norm()
        Weapons.PushObject(EntityName, dir.x, dir.y, dir.z)
      end
    end
  end
end

function Weapons.HitEvent(EntityName, EventName, Time)
  local char = Game.GetEntity(EntityName)
  if char ~= nil and char.TgtEntity ~= nil then
    local a = Game.Split(EventName, ",")
    local hitpresets = {}
    local angX = defparam(a[1], 0)
    local angY = defparam(a[2], 0)
    hitpresets[1] = defparam(a[3], "")
    hitpresets[2] = defparam(a[4], "")
    hitpresets[3] = defparam(a[5], "")
    hitpresets[4] = defparam(a[6], "")
    for i = 1, #hitpresets do
      if hitpresets[i] ~= "" then
        local hitpreset = hitpresets[i]
        if hitpreset == "_Variable" then
          if char.uData.VariableHitPreset then
            hitpreset = char.uData.VariableHitPreset
          else
            Game.ConsoleError([[
Hit Preset _Variable not set
At ]] .. EntityName .. " on action " .. char.Action .. "\n")
          end
        end
        local MeleeHitData = char.oActCtrl.oActClass.uData.HitPresets[hitpreset]
        if not MeleeHitData then
          Game.ConsoleError("hit preset '" .. hitpreset .. "' does not exists!!!!!!\n")
        end
        MeleeHitData.Pos = checkPos
        MeleeHitData.Dir = V3D(0, 0, -1):rot(char.Ang + V3D(angX, angY, 0))
        Weapons.DoDamage(char, Game.GetEntity(char.TgtEntity), MeleeHitData)
      end
    end
  end
  return false
end

function Weapons.DestroyCharacter(charName)
  local To = Game.GetEntity(charName)
  local ScName = "DestroyChar" .. To.Name
  local group = Game.GetEntityList(To.EntityList)
  if group and group.uData.isGenerator and not To.uData.IgnoreMemberDeath then
    EnemyGen.MemberDead(To.EntityList)
  end
  Effects.FXCleanUpOnDeath(charName)
  if To.uData.DontRemoveOnDeath == true then
    return
  end
  local reaction = To.Hit_Reaction
  if reaction == 0 then
    reaction = 5
  end
  local autoExplode = 3 <= reaction and To.oActCtrl and To.oActCtrl.oActClass and (To.oActCtrl.oActClass.Size == "small" or To.oActCtrl.oActClass.Size == "average")
  if To.uData.DoNotExplode then
    autoExplode = false
  end
  if autoExplode or To.Hit_RemoveNow == 1 or not FX.CheckSphereVisibility(To.Pos, 350) and To.uData.PersistentRagdoll then
    if autoExplode then
      Game.GetEntity(charName).uData.AutoExplode = true
      FXDamage.FXAutoExplode(charName)
    end
    return
  end
  if 0 < To.FireRemainTime and To.bCanBurn then
    To.FireRemainTime = 4
    Game.AddScheduledFunc(Game.GetTime() + 2, "", "Fire.FXAshes", To.Name)
    Game.AddScheduledFunc(Game.GetTime() + 10, "", "Weapons.RemoveChar", To.Name)
  elseif To.uData.TimeToRemove then
    Game.AddScheduledFunc(Game.GetTime() + To.uData.TimeToRemove, ScName, "Weapons.RemoveCharacter", To.Name)
  elseif To.oActCtrl.oActClass.UseRagdollToDie == 1 then
    Game.AddScheduledFunc(Game.GetTime() + 3, ScName, "Weapons.RemoveCharacter", To.Name)
  else
    Game.AddScheduledFunc(Game.GetTime() + 0.5, ScName, "Weapons.RemoveCharacter", To.Name)
  end
end

function Weapons.RemoveCharacter(ToName, Time)
  local Time = defparam(Time, 8)
  local To = Game.GetEntity(ToName)
  if To and To.Life <= 0 then
    if not FX.CheckSphereVisibility(To.Pos, 350) then
      Game.Log("Removing character '" .. ToName .. "' outside of the camera\n", 3)
      Weapons.RemoveChar(ToName)
      return
    end
    if Weapons.FliesFlag == 0 then
      Weapons.RemoveCharEffect(ToName, Time)
      Game.AddScheduledFunc(Game.GetTime() + Time, "", "Weapons.RemoveChar", ToName)
    else
      Game.AddScheduledFunc(Game.GetTime() + 2, "", "Weapons.RemoveCharacter", ToName, Time)
    end
  end
end

function Weapons.SetGhostTime(EntityName, time)
  local ent = Game.GetEntity(EntityName)
  if ent then
    ent.GhostTime = time
  end
end

function Weapons.SetHitParams(ent, att, HitData)
  if att then
    ent.Hit_Attacker = att.Name
  else
    ent.Hit_Attacker = ""
  end
  local Reaction = tonumber(defparam(HitData.Reaction, 2))
  local hitType = HitData.Type
  if att == player and (not (not (DarkPower.PowerUse.Value > 0) or hitType ~= "Melee" and hitType ~= "Whip" or ent.uData.DontUseDarkReactBonus) or Weapons.IsPotentiatedByBlindness(ent, hitType)) then
    if Reaction == -2 then
      Reaction = 1
    elseif Reaction == -1 then
      Reaction = 1
    elseif Reaction == 1 then
      Reaction = 2
    elseif Reaction == 2 then
      Reaction = 3
    end
  end
  local ReactionAnim = defparam(HitData.ReactionAnim, "")
  if ent.oActCtrl and ent.oActCtrl.oActClass.CanFly == 1 and 0 < ent.Life - tonumber(HitData.Damage) then
    if (Reaction == 2 or Reaction == 3) and att and att.bIsFalling then
      Reaction = 1
    elseif Reaction == 4 then
      Reaction = 0
      ReactionAnim = "HitFallDown"
    end
  end
  if ent.uData.VialProtection and att and att.oAI and 0 < Reaction and Reaction < 4 then
    if Reaction == 1 then
      ent.Hit_Reaction = -2
    else
      ent.Hit_Reaction = Reaction - 1
    end
  else
    ent.Hit_Reaction = Reaction
  end
  ent.Hit_ReactionAnim = ReactionAnim
  ent.Hit_ForceOrientation = tonumber(defparam(HitData.ForceOrientation, 0))
  ent.Hit_Unblockable = tonumber(defparam(HitData.Unblockable, 0))
  ent.Hit_Dodgeable = tonumber(defparam(HitData.Dodgeable, 0))
  ent.Hit_Jumpable = tonumber(defparam(HitData.Jumpable, 0))
  ent.Hit_Type = defparam(HitData.Type, "")
  ent.Hit_BreakObjects = tonumber(defparam(HitData.BreakObjects, 1))
  ent.Hit_GiveMagic = tonumber(defparam(HitData.GiveMagic, 1))
  ent.Hit_GiveMagicOnHit = tonumber(defparam(HitData.GiveMagicOnHit, 1))
  if HitData.Pos then
    ent.Hit_Pos = HitData.Pos
  elseif att then
    ent.Hit_Pos = ent.Pos
  else
    ent.Hit_Pos = V3D(0, 0, 0)
  end
  if ent and att then
    ent.Hit_Direction = defparam(HitData.Dir, ent.Pos - att.Pos)
  else
    ent.Hit_Direction = defparam(HitData.Dir, V3D(0, 0, 0))
  end
end

function Weapons.DoDamage(From, To, HitData, sizeFiltered, hitAgainFiltered, hittedPartName)
  if hittedPartName then
  end
  if To.uData.ObjectToPropagateDamage then
    local propEnt = Game.GetEntity(To.uData.ObjectToPropagateDamage)
    if propEnt then
      Weapons.DoDamage(From, propEnt, HitData, sizeFiltered, hitAgainFiltered, hittedPartName)
      return
    end
  end
  local initialLife = To.Life
  local Damage = HitData.Damage
  local initialDamage = Damage
  if not Game.Get("PlayingDLC") then
    if not To.uData.HitAgainList then
      To.uData.HitAgainList = {}
    end
  elseif hittedPartName then
    local part = Game.GetEntity(hittedPartName)
    if not part.uData.HitAgainList then
      part.uData.HitAgainList = {}
    end
  elseif not To.uData.HitAgainList then
    To.uData.HitAgainList = {}
  end
  local ignored = Weapons.EntityIgnoreDmg(To, From, HitData, sizeFiltered, hitAgainFiltered, hittedPartName)
  if not ignored then
    Weapons.SetHitParams(To, From, HitData)
    local hitAgainList
    if not Game.Get("PlayingDLC") then
      hitAgainList = To.uData.HitAgainList
    elseif hittedPartName then
      local part = Game.GetEntity(hittedPartName)
      hitAgainList = part.uData.HitAgainList
    else
      hitAgainList = To.uData.HitAgainList
    end
    hitAgainList[#hitAgainList + 1] = {
      From,
      HitData,
      Game.GetTime()
    }
    local blocked, blockTooWeak
    blocked, Damage, blockTooWeak = Weapons.ProcessBlock(From, To, Damage, HitData, hittedPartName)
    if To.uData.ModMyDamage then
      Damage = To.uData.ModMyDamage(From, To, Damage)
    end
    if From then
      Damage = Weapons.ApplyLevelDmgMult(From, To, Damage, blocked, HitData)
      if From.UsrControl ~= -1 then
        if LightPower.PowerUse.Value > 0 then
          Damage = LightPower.PlayerDamage(From, To, Damage, blocked, HitData)
        elseif 0 < DarkPower.PowerUse.Value then
          Damage = DarkPower.PlayerDamage(From, To, Damage, blocked, HitData)
        end
        if Weapons.IsPotentiatedByBlindness(To, HitData.Type) then
          Damage = Damage * LightPower.BlindedDamageMult
        end
      end
      if From.uData and From.uData.DamageMultiplier then
        Damage = Damage * From.uData.DamageMultiplier
      end
      Damage = WeaponsVial.PlayerDamage(From, To, Damage, HitData)
      Damage = WeaponsDagger.PlayerDamage(From, To, Damage, HitData)
      From.Hit_Target = To.Name
    end
    if blocked == 2 and LightPower.PowerUse.Value > 0 and To:IsType("WalkChar") and To.UsrControl ~= -1 and Experience.isCombatScroll("BlockSyncBlind") then
      LightPower.Consume(To.Name, LightPower.BlockSyncBlindCost)
    end
    if To == player then
      if blocked == 0 then
        local flos = Stamina.Level - Stamina.MaxStamina.Value
        if flos <= 0 then
          Stamina.DisableBar()
        else
          Stamina.SetStamina(flos)
        end
        Stamina.Buffer = {}
      elseif blocked == 1 then
        local gain = initialDamage * Stamina.StaminaDmgBlocked * SkillSettings[init.GameSkill.Value].FocusGain
        ScorerSprites.ShowFocusGain(gain, "Block")
        Stamina.SetStamina(Stamina.Level + gain)
      elseif blocked == 2 then
        local gain = initialDamage * Stamina.StaminaDmgSyncBlocked * SkillSettings[init.GameSkill.Value].FocusGain
        ScorerSprites.ShowFocusGain(gain, "CoolBlock")
        Stamina.SetStamina(Stamina.Level + gain)
      end
      if 0 < Damage then
        Tips.SetTimestamp("EnemyHit")
      end
      if SpiderGiant and From and From.oActCtrl and From.oActCtrl.oActClass.Name == "SpiderGiant" then
        SpiderGiant.CheckBlockAttackPoison(From, To)
      end
    elseif From == player and To.TgType == "red" and not To.uData.IsCritter and not To.uData.InvulnerableToFocus and (not HitData.GiveStamina or HitData.GiveStamina == 1) and To:IsType("WalkChar") then
      if blocked == 0 then
        Stamina.EnemyDamageStamina(From, To, Damage, HitData)
      elseif 1 <= blocked then
        local gain = initialDamage * Stamina.StaminaDmgEnemyBlocked * SkillSettings[init.GameSkill.Value].FocusGain
        ScorerSprites.ShowFocusGain(gain, "DamageBlock")
        Stamina.SetStamina(Stamina.Level + gain)
        if To.oAI then
          To.oAI:OnBlocked(From.Name, initialDamage)
        end
      end
    end
    if (To.Name == "Belmont" or To.Name == "LauraPlayer") and 0 < Damage and initialDamage ~= -1 then
      if Weapons.OnePointDamage then
        Damage = 1
      else
        Damage = math.max(Damage * SkillSettings[init.GameSkill.Value].Damage, 1)
      end
    end
    if initialDamage == -1 then
      Damage = initialLife
      To.uData.LetMeDie = true
    end
    Damage = math.floor(Damage + 0.5)
    if To == player and Game.Get("IsSpiderMinigameActive") == 1 then
      To.Life = To.Life - Damage / 2
      if Game.Get("BelmontPoisonedTimeLeft") == 0 then
        local mgTime = Game.GetTime() - MiniGames.TimeWebMiniGameBegins
        if mgTime > MiniGames.MinTimeForPoison then
          To.Hit_Reaction = 3
          if From.oActCtrl.oActClass.Name == "SpiderGiant" then
            Belmont.BeginSpiderPoison()
          end
        end
      end
    else
      To.Life = To.Life - Damage
    end
    if From == player and To.Life <= 0 then
      if 0 < DarkPower.PowerUse.Value then
        To.uData.DeadByMagic = "dark"
      elseif LightPower.PowerUse.Value > 0 then
        To.uData.DeadByMagic = "light"
      end
    end
    if To.uData.OnHitted and From then
      To.uData.OnHitted(To.Name, From.Name, Damage, blocked, HitData, blockTooWeak, initialDamage)
    end
    if To:IsType("WalkChar") and To.Life > 0 and not To.uData.SuperBlock then
      if Game.Get("PlayingDLC") then
        local hittedPart
        if hittedPartName then
          hittedPart = Game.GetEntity(hittedPartName)
        end
        if (not hittedPart or not hittedPart.uData.SuperBlock) and Weapons.CanDropMagic(To.Name) then
          Weapons.DropMagicOnHit(From, To)
        end
      elseif Weapons.CanDropMagic(To.Name) then
        Weapons.DropMagicOnHit(From, To)
      end
    end
    Weapons.DamageFX(From, To, Damage, blocked, HitData, hittedPartName)
    if not To.oAI or not To.oAI:IsInvulnerable() then
      ScorerSprites.ShowDamage(To, From, Damage)
    end
    if 1 <= Weapons.Debug.Value then
      Weapons.DebugDamage(From, To, Damage, initialDamage, blocked, HitData, blockTooWeak)
    end
  end
  if From and To.oAI and To.oAI:IsThisYourDesc("AI CHAR SPEC") then
    To.oAI:OnHitted(From.Name, Damage)
  end
  return not ignored
end

function Weapons.CanDropMagic(EntityName)
  local ent = Game.GetEntity(EntityName)
  if not ent then
    return false
  end
  if Game.Get("ScorerBossName") == EntityName then
    if not ent.oAI then
      Game.ConsoleError(EntityName .. " can't drop magic\n")
      return false
    end
    if ent.oAI.bIsCrazy and ent.oAI.iCrazyState == 0 then
      Game.ConsoleError(EntityName .. " can't drop magic\n")
      return false
    else
      return true
    end
  end
  return true
end

function Weapons.IsPotentiatedByBlindness(To, hitType)
  return To.oAI and (To.oAI.iCrazyState == 2 or To.oAI.bIncomingBlindess) and hitType ~= "Crystal" and hitType ~= "DarkDagger" and hitType ~= "Dagger" and hitType ~= "Vial" and hitType ~= "Fairy" and hitType ~= "light"
end

function Weapons.DropMagicOnHit(From, To)
  if Stamina.Active.Value and From == player and To.Hit_GiveMagicOnHit == 1 and LightPower.PowerUse.Value == 0 and DarkPower.PowerUse.Value == 0 then
    local data = NeutralEnergy.OnHitPrices[To.oActCtrl.oActClass.Name]
    if data and 0 < data[0] and Game.Rand(0, 100) < data[0] and (not To.uData.LastDropTime or To.uData.LastDropTime + data[1] < Game.GetTime()) then
      local amount = math.floor(Game.Rand(data[2], data[3]))
      NeutralEnergy.CreateSources(To.Pos.x, To.Pos.y, To.Pos.z, To.Name, amount)
      To.uData.LastDropTime = Game.GetTime()
    end
  end
end

function Weapons.ApplyLevelDmgMult(From, To, Damage, blocked, HitData)
  local multiplier = 1
  if From.oActCtrl and From.oActCtrl.oActClass then
    local class = From.oActCtrl.oActClass
    local level = 1
    if LevelProperties and LevelProperties.EnemyLevels and LevelProperties.EnemyLevels[class.Name] then
      level = LevelProperties.EnemyLevels[class.Name]
    end
    local levelsTable = EnemyLevels.Table
    if levelsTable[class.Name] and levelsTable[class.Name][level] then
      multiplier = levelsTable[class.Name][level].Damage
    end
  end
  return Damage * multiplier
end

function Weapons.Push(objectName, dirX, dirY, dirZ, extraImpulse)
  local obj = Game.GetEntity(objectName)
  if obj then
    obj.TempPos = obj.Pos
    obj.ForcePos = V3D(dirX, dirY, dirZ) * extraImpulse
  end
end

function Weapons.PushObject(objectName, dirX, dirY, dirZ, extraImpulse)
  local impulse = defparam(extraImpulse, 8000)
  local e = Game.GetEntity(objectName)
  if e.Life <= 0 then
    local pieceName = e.FirstLinkPiece
    while pieceName and pieceName ~= "" do
      Game.AddScheduledFunc(Game.GetTime(), "Push", "Weapons.Push", pieceName, dirX, dirY, dirZ, impulse)
      pieceName = e.NextLinkPiece
    end
    if e.uData.OnBreak then
      local p = Game.Split(e.uData.OnBreak, ".")
      if _G[p[1]] ~= nil and _G[p[1]][p[2]] ~= nil then
        _G[p[1]][p[2]](objectName)
      end
    end
  else
    e.TempPos = e.Pos
    e.ForcePos = V3D(dirX, dirY, dirZ) * impulse
  end
end

function Weapons.Dodged(To, From, HitData)
  local dodgeType
  if To.oActCtrl then
    local trackInfo = To.oActCtrl:GetTrackInfo("IsDodging")
    if trackInfo then
      if trackInfo == "" then
        dodgeType = 1
      elseif trackInfo == "Side Dodge" then
        dodgeType = 1
      elseif trackInfo == "Back Dodge" then
        dodgeType = 2
      elseif trackInfo == "Any Dodge" then
        dodgeType = 3
      end
    end
  end
  return dodgeType and HitData.Dodgeable ~= 0 and (HitData.Dodgeable == dodgeType or dodgeType == 3) and (dodgeType ~= 2 or (To.Pos - From.Pos):mod() > 400)
end

function Weapons.GetSize(To, HitData)
  if To:IsType("WalkChar") then
    local class = To.oActCtrl.oActClass
    if HitData.Type == "Dagger" and class.uData.DaggerCustomSize then
      return class.uData.DaggerCustomSize
    else
      return class.Size
    end
  else
    return "average"
  end
end

function Weapons.IsJumping(ent)
  local trackInfo = ent.oActCtrl:GetTrackInfo("ForceIsJumping")
  if trackInfo == "Yes" then
    return true
  elseif trackInfo == "No" then
    return false
  else
    return ent.bIsFlying
  end
end

function Weapons.FriendlyDamage(From, To, HitData)
  if not HitData.IgnoreColor or string.lower(HitData.IgnoreColor) == "none" then
    return From and From.TgType == "green" and To.TgType == "green"
  else
    return To.TgType == HitData.IgnoreColor
  end
end

function Weapons.EntityIgnoreDmg(To, From, HitData, sizeFiltered, hitAgainFiltered, hittedPartName)
  local ignore = false
  if To.Life <= 0 then
    ignore = true
  elseif not To.uData.UnavoidableDamage and (not ((sizeFiltered or HitData[Weapons.GetSize(To, HitData)] ~= false) and (hitAgainFiltered or Weapons.CanHitAgain(To, From, HitData, Game.GetTime(), hittedPartName))) or Weapons.FriendlyDamage(From, To, HitData) or Weapons.Dodged(To, From, HitData) or To:IsType("WalkChar") and Weapons.IsJumping(To) and HitData.Jumpable == 1 or To.uData.IsLurking and HitData.DamageLurkers ~= 1 or To.uData.Mount or To.Intangible or To.uData.RagdollHits and (not hittedPartName or hittedPartName == To.Name)) then
    ignore = true
  end
  return ignore
end

function Weapons.CanHitAgain(To, From, HitData, Time, hittedPartName)
  local hitAgainList
  if not Game.Get("PlayingDLC") then
    hitAgainList = To.uData.HitAgainList
  elseif hittedPartName then
    local part = Game.GetEntity(hittedPartName)
    hitAgainList = part.uData.HitAgainList
  else
    hitAgainList = To.uData.HitAgainList
  end
  for index, data in pairs(hitAgainList) do
    if Time > data[3] + defparam(data[2].HitAgainTime, 0.2) then
      table.remove(hitAgainList, index)
    end
  end
  for index, data in pairs(hitAgainList) do
    if From and data[1] == From and data[2] == HitData or HitData.HitGroup and HitData.HitGroup ~= "" and HitData.HitGroup == data[2].HitGroup then
      return false
    end
  end
  return true
end

function Weapons.GetIsBlocking(From, To, Unblockable, hittedPartName)
  local trackInfo = To.oActCtrl:GetTrackInfo("IsBlocking")
  if trackInfo then
    local a = Game.Split(trackInfo, ",")
    local breaksWithLevel = tonumber(defparam(a[1], 0))
    local vulnerableAngRight = tonumber(defparam(a[2], 0))
    local vulnerableAngLeft = tonumber(defparam(a[3], 0))
    if not breaksWithLevel or Weapons.IsAtBack(From, To, vulnerableAngRight, vulnerableAngLeft) then
      return false, false
    else
      local reactionLevel = To.Hit_Reaction
      if reactionLevel == 0 then
        reactionLevel = 5
      end
      return reactionLevel < tonumber(breaksWithLevel), not (reactionLevel < tonumber(breaksWithLevel)) or Unblockable == 1
    end
  elseif Game.Get("PlayingDLC") and hittedPartName then
    local part = Game.GetEntity(hittedPartName)
    To.uData.hittedPart = part
    if part and part.uData.VulnerableAngRight and part.uData.VulnerableAngLeft and not Weapons.IsAtBackDLC(From, To, part.uData.VulnerableAngRight, part.uData.VulnerableAngLeft) then
      return true, true
    end
  end
end

function Weapons.IsAtBackDLC(From, To, RightAng, LeftAng)
  local dirVec = To.uData.hittedPart.Pos - From.Pos
  local dirAng = Game.NormAng(dirVec:getrot().y)
  local toAng = Game.NormAng(To.Ang.y)
  local angDiff = Game.NormAng(toAng - dirAng - 180)
  if LeftAng <= angDiff and RightAng >= angDiff then
    return true
  else
  end
  return false
end

function Weapons.IsAtBack(From, To, RightAng, LeftAng)
  if 0 < RightAng and 0 < LeftAng then
    local dirVec = From.Pos - To.Pos
    local dirAng = Game.NormAng(dirVec:getrot().y)
    local toAng = Game.NormAng(To.Ang.y)
    local angDiff = Game.NormAng(dirAng - toAng)
    if angDiff > -RightAng and LeftAng > angDiff then
      return true
    end
  end
  return false
end

function Weapons.ProcessBlock(From, To, Damage, HitData, hittedPartName)
  if To.uData.SuperBlock then
    return 1, 0, false
  end
  if hittedPartName then
    local part = Game.GetEntity(hittedPartName)
    if part and part.uData and part.uData.SuperBlock then
      return 1, 0, false
    end
  end
  local isBlocking, blockTooWeak
  if To.oActCtrl then
    isBlocking, blockTooWeak = Weapons.GetIsBlocking(From, To, HitData.Unblockable, hittedPartName)
  end
  local blocked = 0
  if HitData.Unblockable == 0 then
    if isBlocking then
      if From and From.oAI and To:IsType("WalkChar") and To.UsrControl ~= -1 and Weapons.BlockSyncEnabled and From.oAI:CheckAttackFail() == 2 then
        blocked = 2
        Damage = 0
        if To == player and player.uData.OnSyncBlockCall then
          player.uData.OnSyncBlockCall()
        end
      else
        blocked = 1
        Damage = 0
      end
    else
      blocked = 0
    end
  elseif HitData.Unblockable == 1 then
    blocked = 0
  elseif HitData.Unblockable == 2 then
    if isBlocking then
      if From and From.oAI and To:IsType("WalkChar") and To.UsrControl ~= -1 and Weapons.BlockSyncEnabled and From.oAI:CheckAttackFail() == 2 then
        blocked = 2
        Damage = 0
      else
        blocked = -1
        Damage = Damage * defparam(HitData.UnblockedDamage, 0)
      end
    else
      blocked = 0
    end
  elseif HitData.Unblockable == 3 then
    if isBlocking then
      blocked = 1
      Damage = 0
    else
      blocked = 0
    end
  end
  if To.uData.VialProtection and From and From.oAI then
    From.Action = "AttackFail"
    WeaponsVial.FXVialShiedlHit()
    FXDamage.Impact("BlockBladeSync", To, To.Hit_Pos)
    local enemyWeaponType = From.oActCtrl.oActClass.uData.WeaponType
    if enemyWeaponType ~= nil and HitData.Type ~= "None" then
      SoundUtils.FXPlaySound("Belmont", "EnemyBlockedSpecial" .. enemyWeaponType .. "Hit", To.Hit_Pos)
    end
  end
  if blocked == 0 and From then
    From.uData.LastSuccessfulHit = Game.GetTime()
  end
  if blocked == 2 then
    To.uData.ForceTgtEntity = From.Name
    To.uData.ForceTgtTime = Game.GetTime() + 0.6
  end
  return blocked, Damage, blockTooWeak
end

Weapons.Rumble = {
  BlockEnemy = V4D(0, 0, 0.4, 0.2),
  HitEnemy = V4D(0.4, 0.2, 0, 0),
  HitLaura = V4D(0.2, 0.1, 0, 0),
  BlockUsr = V4D(1, 0.2, 0, 0),
  SyncUsr = V4D(1, 0.4, 0, 0),
  HitUsr = V4D(1, 0.2, 1, 0.5),
  DashBreak = V4D(1, 0.3, 1, 0.3)
}

function Weapons.VibraPad(cad)
  local a = Weapons.Rumble[cad]
  Weapons.SetVibraData(a.x, a.y, a.z, a.w)
end

function Weapons.SetVibraData(x, y, z, w)
  local Vibra = Input.GetRumble(0)
  if 0 < x and 0 < y then
    Vibra:SetLeft(x, y)
  end
  if 0 < z and 0 < w then
    Vibra:SetRight(z, w)
  end
end

function Weapons.VibraEvent(EntityName, EventName, Time)
  local a = Game.Split(EventName, ",")
  local Vibra = Input.GetRumble(tonumber(a[1]))
  local La = tonumber(a[2])
  local Lt = tonumber(a[4])
  if 0 < La and 0 < Lt then
    Vibra:SetLeft(La, Lt)
  end
  local Ra = tonumber(a[3])
  local Rt = tonumber(a[4])
  if 0 < Ra and 0 < Rt then
    Vibra:SetRight(Ra, Rt)
  end
end

Weapons.WhipSoundTimeStamp = 0

function Weapons.DamageFX(From, To, LifeLost, Blocked, HitData, hittedPartName)
  if not From then
    return
  end
  if HitData.Type then
    print(HitData.Type)
  end
  local dir = defparam(HitData.Dir, From.Ang)
  if 0 < LifeLost and (To == player or From == player) then
    if HitData.CamLinearDuration and 0 < HitData.CamLinearDuration then
      Weapons.CamLinearShake(HitData.CamLinearDuration, dir, HitData.CamLinearAmplitude, HitData.CamLinearStack)
    end
    if HitData.TimeBlendDuration and 0 < HitData.TimeBlendDuration then
      Weapons.Timeblend(HitData.TimeBlendDuration, HitData.TimeBlendTarget, HitData.TimeBlendStack)
    end
    if HitData.CamShake and HitData.CamShakeDuration and 0 < HitData.CamShakeDuration then
      Weapons.QuakeFX(From.Pos, HitData.CamShake, HitData.CamShakeDuration)
    end
    if HitData.RadialBlur and HitData.RadialBlurTime and 0 < HitData.RadialBlurTime then
      Effects.RadialBlur(HitData.RadialBlur, 0, HitData.RadialBlurTime, To.Hit_Pos)
    end
  end
  if From.Name == player.Name then
    if Blocked == 0 then
      if To.Type ~= "WalkChar" then
        local param = "DoFixed " .. To.Hit_Pos:str3() .. "," .. (-To.Hit_Direction):str3()
        local tipo = string.lower(To.SurfaceStr)
        tipo = string.upper(string.sub(tipo, 1, 1)) .. string.lower(string.sub(tipo, 2))
        if tipo then
          local pxCol = true
          if To:IsType("PxBodyPhysics") then
            pxCol = 0 >= To.MaxColSoundTimeStamp or To.MaxColSoundTimeStamp > Game.GetTime()
          end
          if pxCol then
            Impact.DoImpact("Wall/" .. tipo, param)
            SoundUtils.FXPlaySound("Belmont", "WhipWallImpact_GENERIC", To.Hit_Pos)
            SoundUtils.FXPlaySound("Belmont", "WhipWallImpact_" .. To.SurfaceStr, To.Hit_Pos)
          end
        end
      else
        local time = Game.GetTime()
        local timedelay = 0.5
        local hitType = HitData.Type
        local enemySurfaceType
        if To:IsType("WithLife") and To.oActCtrl then
          enemySurfaceType = To.oActCtrl.oActClass.uData.SurfaceType
        end
        if hitType ~= nil and enemySurfaceType ~= nil and time > Weapons.WhipSoundTimeStamp + timedelay then
          SoundUtils.FXPlaySound("Belmont", hitType .. enemySurfaceType .. "Hit", To.Hit_Pos)
        end
        if hitType == "Whip" then
          if Game.Get("PlayingDLC") and hittedPartName then
            local hittedPart = Game.GetEntity(hittedPartName)
            if hittedPart then
              FXDamage.Blood(To.Name, To.ActCtrl, hittedPart.Pos, To.Hit_Direction)
            else
              FXDamage.Blood(To.Name, To.ActCtrl, To.Hit_Pos, To.Hit_Direction)
            end
          else
            FXDamage.Blood(To.Name, To.ActCtrl, To.Hit_Pos, To.Hit_Direction)
          end
          if time > Weapons.WhipSoundTimeStamp + timedelay then
            SoundUtils.FXPlaySound("Belmont", "WhipGenericHit", To.Hit_Pos)
          end
          if HitData.VibraPad ~= false then
            Weapons.VibraPad("HitEnemy")
          end
        elseif hitType == "Dagger" then
          FXDamage.Blood(To.Name, To.ActCtrl, To.Hit_Pos, To.Hit_Direction)
        elseif hitType == "Melee" or hitType == "GauntletMelee" then
          FXDamage.Blood(To.Name, To.ActCtrl, To.Hit_Pos, To.Hit_Direction)
          Weapons.VibraPad("HitEnemy")
        end
        if time > Weapons.WhipSoundTimeStamp + timedelay then
          Weapons.WhipSoundTimeStamp = time
        end
      end
    elseif Blocked == 1 or Blocked == 2 then
      local hitType = HitData.Type
      local enemyBlockedSurfaceType
      if To:IsType("WithLife") and To.oActCtrl then
        enemyBlockedSurfaceType = To.oActCtrl.oActClass.uData.BlockSurfaceType
      end
      if hitType ~= nil and enemyBlockedSurfaceType ~= nil then
        if Game.Get("PlayingDLC") then
          local currentTime = Game.GetTime()
          if To.uData.CustomBlockSound and (not To.uData.CustomBlockTimeStamp or currentTime > To.uData.CustomBlockTimeStamp + 0.2) then
            To.uData.CustomBlockTimeStamp = currentTime
            SoundUtils.FXPlaySound(To.oActCtrl.oActClass.Name, To.uData.CustomBlockSound, To.Hit_Pos)
          else
            SoundUtils.FXPlaySound("Belmont", "Blocked" .. hitType .. enemyBlockedSurfaceType .. "Hit", To.Hit_Pos)
          end
        else
          SoundUtils.FXPlaySound("Belmont", "Blocked" .. hitType .. enemyBlockedSurfaceType .. "Hit", To.Hit_Pos)
        end
      end
      if hitType == "Whip" then
        if Game.Get("PlayingDLC") and hittedPartName then
          local hittedPart = Game.GetEntity(hittedPartName)
          if hittedPart then
            FXDamage.Impact("BlockBlade", hittedPart, To.Hit_Pos)
          else
            FXDamage.Impact("BlockBlade", To, To.Hit_Pos)
          end
        else
          FXDamage.Impact("BlockBlade", To, To.Hit_Pos)
        end
        SoundUtils.FXPlaySound("Belmont", "WhipGenericHit", To.Hit_Pos)
        Weapons.VibraPad("BlockEnemy")
      elseif hitType == "Dagger" then
        FXDamage.Impact("BlockBlade", To, To.Hit_Pos)
      elseif hitType == "Melee" or hitType == "GauntletMelee" then
        FXDamage.Impact("BlockMeleeSoft", To, To.Hit_Pos)
        Weapons.VibraPad("BlockEnemy")
      end
    end
  elseif Blocked == 0 or Blocked == -1 then
    local enemyWeaponType = HitData.Type
    if From.oActCtrl ~= nil and enemyWeaponType ~= nil and enemyWeaponType ~= "Push" then
      SoundUtils.FXPlaySound(From.oActCtrl.oActClass.Name, enemyWeaponType .. "Hit", To.Hit_Pos)
    end
    if To.Name == player.Name then
      if enemyWeaponType == "Whip" then
        FXDamage.Blood(To.Name, To.ActCtrl, To.Hit_Pos, To.Hit_Direction)
      elseif enemyWeaponType == "Blade" then
        FXDamage.Blood(To.Name, To.ActCtrl, To.Hit_Pos, To.Hit_Direction)
      elseif enemyWeaponType == "Spirit" then
        SilverWarrior.FXSpiritImpact(To.Hit_Pos, To.Hit_Direction)
      elseif enemyWeaponType == "Melee" or enemyWeaponType == "GauntletMelee" then
      elseif enemyWeaponType == "Push" and To.Type == "WalkChar" then
        SoundUtils.FXPlaySound(From.oActCtrl.oActClass.Name, enemyWeaponType .. "Hit", To.Hit_Pos)
      end
    elseif enemyWeaponType == "Blade" then
      FXDamage.Blood(To.Name, To.ActCtrl, To.Hit_Pos, To.Hit_Direction)
    elseif enemyWeaponType == "Melee" or enemyWeaponType == "GauntletMelee" then
      if From.uData.Rider == player.Name then
        Weapons.VibraPad("HitEnemy")
      end
    elseif enemyWeaponType == "Push" and To.Type == "WalkChar" then
      SoundUtils.FXPlaySound(From.oActCtrl.oActClass.Name, enemyWeaponType .. "Hit", To.Hit_Pos)
    end
    if To:IsType("WalkChar") and To.UsrControl ~= -1 and (To ~= player or player.Invulnerable ~= 1) then
      Weapons.VibraPad("HitUsr")
    end
  elseif Blocked == 1 then
    local enemyWeaponType = HitData.Type
    if enemyWeaponType ~= nil then
      SoundUtils.FXPlaySound("Belmont", "EnemyBlocked" .. enemyWeaponType .. "Hit", To.Hit_Pos)
    end
    if enemyWeaponType == "Blade" then
      FXDamage.Impact("BlockBlade", To, To.Hit_Pos)
    elseif enemyWeaponType == "Melee" or enemyWeaponType == "GauntletMelee" then
      FXDamage.Impact("BlockMeleeSoft", To, To.Hit_Pos)
    end
    Weapons.QuakeFX(To.Hit_Pos, 0.6, 0.2)
    if To:IsType("WalkChar") and To.UsrControl ~= -1 then
      Weapons.VibraPad("BlockUsr")
    end
  elseif Blocked == 2 then
    local enemyWeaponType = HitData.Type
    if enemyWeaponType ~= nil then
      SoundUtils.FXPlaySound("Belmont", "EnemyBlockedSpecial" .. enemyWeaponType .. "Hit", To.Hit_Pos)
    end
    if enemyWeaponType == "Blade" then
      FXDamage.Impact("BlockBladeSync", To, To.Hit_Pos)
      if 0 < LightPower.PowerUse.Value and Experience.isCombatScroll("BlockSyncBlind") then
        FXDamage.Impact("BlockBladeSyncBlind", To, To.Hit_Pos)
      end
    elseif enemyWeaponType == "Melee" or enemyWeaponType == "GauntletMelee" then
      FXDamage.Impact("BlockMeleeSoftSync", To, To.Hit_Pos)
      if 0 < LightPower.PowerUse.Value and Experience.isCombatScroll("BlockSyncBlind") then
        FXDamage.Impact("BlockBladeSyncBlind", To, To.Hit_Pos)
      end
    else
      FXDamage.Impact("BlockBladeSync", To, To.Hit_Pos)
      if 0 < LightPower.PowerUse.Value and Experience.isCombatScroll("BlockSyncBlind") then
        FXDamage.Impact("BlockBladeSyncBlind", To, To.Hit_Pos)
      end
    end
    Effects.RadialBlur(4, 0, 0.6, To.Hit_Pos)
    Weapons.QuakeFX(To.Hit_Pos, 1, 0.4)
    if To:IsType("WalkChar") and To.UsrControl ~= -1 then
      Weapons.VibraPad("SyncUsr")
    end
  end
  if Laura then
    if HitData.Type == "LauraRayD" or HitData.Type == "LauraRayDSus" then
      Laura.FXTargetRay(From.Name, To.Name)
      Laura.FXTargetRay(From.Name, To.Name)
    end
    if HitData.Type == "LauraRayD" or HitData.Type == "LauraRayA" then
      SoundUtils.FXPlaySound("Belmont", "WhipFleshHit", To.Hit_Pos)
      if player.ActCtrl == "Laura" then
        Weapons.VibraPad("HitLaura")
      end
    end
  end
  if HitData.Type ~= "NoFX" then
    Weapons.DamageFeedBack(From, To, LifeLost, Blocked, HitData)
  end
end

Weapons.IgnoreDeathList = {Behemoth = true}

function Weapons.OnBeforeCharDeath(EntityName, From)
  local To = Game.GetEntity(EntityName)
  if Weapons.IgnoreDeathList[To.ActCtrl] then
    return
  end
  if not To.uData.DontGiveExp then
    if From.UsrControl ~= -1 then
      TravelBook.CharManager:DecrementKillsPending(To.ActCtrl)
    else
      local attacker = Game.GetEntity(From)
      if attacker and attacker.ActCtrl == "Fairy" then
        TravelBook.CharManager:DecrementKillsPending(To.ActCtrl)
      end
    end
  end
end

function Weapons.OnCharDeath(EntityName, From)
  local To = Game.GetEntity(EntityName)
  To.bArrowCanUse = false
  if Weapons.IgnoreDeathList[To.ActCtrl] then
    return
  end
  if To:IsType("WalkChar") then
    if To.TgType ~= "green" and To.UsrControl == -1 then
      Weapons.DestroyCharacter(To.Name)
    elseif To.uData.Rider == player.Name then
      Weapons.DestroyCharacter(To.Name)
    end
  end
end

Weapons.OnDeathFliesCallback = nil

function Weapons.RemoveCharEffect(ent, time)
  local e = Game.GetEntity(ent)
  if e.bCanBurn == true then
    if Weapons.OnDeathFliesCallback then
      local funky = Weapons.OnDeathFliesCallback
      Weapons.OnDeathFliesCallback = nil
      funky()
    end
    Weapons.FliesFlag = 1
    Game.AddScheduledFunc(Game.GetTime() + time, "", "Weapons.EndRemoveCharEffect", ent)
  end
end

function Weapons.EndRemoveCharEffect(ent)
  Weapons.FliesFlag = 0
end

Weapons.DefaultDamageModifier = 1

function Weapons.ExplotaExplotaQueExploEnt(EntityName, Radius, Damage, DoFX, Impulse)
  local X, Y, Z
  local me = Game.GetEntity(EntityName)
  if me ~= nil then
    X, Y, Z = me.Pos.x, me.Pos.y, me.Pos.z
    local Owner
    if me.oParent then
      Owner = me.oParent
    else
      Owner = EntityName
    end
    Weapons.ExplotaExplotaQueExplo(X, Y, Z, Owner, Radius, Damage, DoFX, Impulse)
    me:Del()
  end
end

Weapons.FXExplosionIdx = 1

function Weapons.ExplotaExplotaQueExplo(X, Y, Z, Owner, Radius, Damage, DoFX, Impulse)
  Radius = defparam(Radius, 500)
  Damage = defparam(Damage, 100)
  Impulse = defparam(Impulse, 25000)
  if DoFX == nil or DoFX == 1 then
    local FXName = "t_explosion_" .. math.mod(Weapons.FXExplosionIdx, 5)
    FX.SetEffect("EFFECT_PARTICLESYSTEM", FXName, "Activate")
    FX.SetEffect("EFFECT_PARTICLESYSTEM", FXName, "ResetDynamicEmitters")
    FX.SetEffect("EFFECT_PARTICLESYSTEM", FXName, "MatrixTranslate " .. V3D(X, Y, Z):str3())
    local t = FXName .. "_light"
    FX.BeginEffect("EFFECT_LIGHT", t, "0.4")
    FX.SetEffect("EFFECT_LIGHT", t, "Translation " .. V3D(X, Y, Z):str3())
    FX.SetEffect("EFFECT_LIGHT", t, "ValueRamp 2 0.05,[1200,15,0,(1,0.8,0.6)] 0.4,[1200,0,0,(1,0.6,0.3)]")
  end
  Weapons.Pos = V3D(X, Y, Z)
  Weapons.Radius = Radius
  Weapons.TempDamage = Damage
  Weapons.Damager = Owner
  Weapons.ExplosionImpulse = Impulse
  Game.SphereCall(Weapons.Pos, Weapons.Radius, "L", "Weapons.ExplosionDamage", 1, true)
  Game.AddScheduledFunc(Game.GetTime(), "AffectExplosion", "Weapons.AffectExplosion", X, Y, Z, Weapons.Radius)
  Weapons.TempSound = "explosion-granada" .. math.floor(Game.Rand(0, 2.9))
  Weapons.TempVolume = 0.525
  Weapons.TempAttenIni = 100
  Weapons.TempAttenEnd = 6000
  Weapons.PlaySound(V3D(X, Y, Z))
end

function Weapons.ExplosionDamage(Name)
  local e = Game.GetEntity(Name)
  local damage = Weapons.TempDamage
  if not e:IsType("PxBodyPhysics") or not e.bIsRagdollPart then
    Weapons.DoDamage(Game.GetEntity(Weapons.Damager), e, {
      Damage = damage,
      Reaction = 3,
      Unblockable = 1,
      Pos = Weapons.Pos,
      Dir = Weapons.Pos - e.Pos
    })
  end
end

function Weapons.AffectExplosion(X, Y, Z, Radius)
  Game.SphereCall(V3D(X, Y, Z), Radius, "LPO", "Weapons.SetExplosionData", 1, true)
end

function Weapons.SetExplosionData(name)
  e = Game.GetEntity(name)
  local diff = e.Pos - Weapons.Pos
  local dist = diff:mod()
  local impulseFactor = 0
  if dist < Weapons.Radius then
    impulseFactor = 1 - dist / Weapons.Radius
  end
  if e:IsType("WalkChar") then
    e:AddExplosionData(Weapons.Pos, Weapons.Radius, Weapons.ExplosionImpulse)
  elseif e:IsType("PxBodyPhysics") then
    if e.bIsRagdollPart then
      e.Force = diff:norm() * Weapons.ExplosionImpulse * impulseFactor * e.oRagDollDamagePart.ImpulseMultiplier
    else
      e.Force = diff:norm() * Weapons.ExplosionImpulse * impulseFactor * 5
    end
  elseif e:IsType("PxCloth") then
    e.TempForcePos = Weapons.Pos
    e.TempForceRadius = Weapons.Radius
    e.Force = diff:norm() * Weapons.ExplosionImpulse
  end
  if e:IsType("WithLife") then
    e:ForcePush(e.Name, diff:norm() * Weapons.ExplosionImpulse * impulseFactor, Weapons.Damager)
  end
end

function Weapons.RemoveCharNow(EntityName, EventName, Time)
  Weapons.RemoveChar(EntityName)
end

function Weapons.RemoveChar(Name)
  local e = Game.GetEntity(Name)
  if e ~= nil and e.EntityList ~= "Alpha" and e.EntityList ~= "Omega" then
    Game.Log("RemoveChar '" .. Name .. "'", 2)
    e:Del()
  end
end

function Weapons.QuakeFX(pos, factor, time, radius, EntityName, nodeName, useRumble)
  useRumble = defparam(useRumble, true)
  local ent
  if EntityName then
    ent = Game.GetEntity(EntityName)
  end
  local cam = Game.GetEntity(Game.GetCam(0))
  if cam and cam:IsType("FCam") then
    if ent and nodeName then
      local nodePos = ent["NodePosHierarchy_" .. nodeName]
      if nodePos then
        pos = nodePos
      end
    end
    if not pos and ent then
      pos = ent.Pos
    end
    local intensity = 1
    if radius then
      radius = radius + 0
      local distance = (cam.Pos - pos):mod()
      if radius > distance then
        intensity = 1 - distance / radius
      else
        intensity = 0
      end
    end
    local vbr = clamp(0, 1, intensity * factor / 4)
    if useRumble and 0.1 < vbr and 0.1 < time and not player.bIsFalling then
      local Vibra = Input.GetRumble(0)
      if Vibra.RemainTimeLeft < time / 2 and vbr > Vibra.Left then
        Vibra:SetLeft(vbr, time)
      end
    end
    cam.QuakeFactor = factor * intensity
    cam.QuakeTime = time
  end
end

function Weapons.QuakeFXEvent(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local a = Game.Split(EventName, ",")
  local factor = a[1] + 0
  local time = a[2] + 0
  local radius = a[3]
  local nodeName = a[4]
  local originPos = ent.Pos
  Weapons.QuakeFX(originPos, factor, time, radius, EntityName, nodeName)
end

function Weapons.TimeBlendEvent(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local a = Game.Split(EventName, ",")
  local duration = tonumber(a[1])
  local targetTime = tonumber(a[2])
  local factorStack = a[3]
  local onlyOnHit = tonumber(a[4])
  local timeFromHit = tonumber(a[5])
  local onlyOnLocked = tonumber(a[6])
  local unstoppable = tonumber(defparam(a[7], 0))
  if (onlyOnHit == 0 or onlyOnHit == 1 and ent.uData.LastSuccessfulHit and ent.uData.LastSuccessfulHit > Game.GetTime() - timeFromHit) and (onlyOnLocked == 0 or onlyOnLocked == 1 and ent.AimEntity ~= "") then
    Weapons.Timeblend(duration, targetTime, factorStack, unstoppable)
  end
end

function Weapons.ResetTimeblend()
  local worldTimer = Game.GetWorldTimer()
  if worldTimer.uData.Modiff and worldTimer.uData.Modiff.bValidBaseType then
    worldTimer.uData.Modiff.bDelete = true
    worldTimer.Speed = 1
    Weapons.IgnoreTimeBlending = nil
  end
end

function Weapons.Timeblend(duration, targetTime, factorStack, unstoppable)
  if Weapons.IgnoreTimeBlending then
    return
  end
  local initialTime = 1
  if Game.Get("IsBelmontUsingStamina") == 1 then
    initialTime = DarkPower.StaminaTimeSpeed
  end
  local worldTimer = Game.GetWorldTimer()
  if worldTimer.uData.Modiff and worldTimer.uData.Modiff.bValidBaseType then
    worldTimer.uData.Modiff.bDelete = true
  end
  local modif = Game.ValueModifier():New()
  worldTimer.uData.Modiff = modif
  modif.FinalTime = duration
  modif.FactorStack = factorStack
  modif.TimeType = 3
  modif.oValues.n = 1
  modif.oValues[1]:SetValue(worldTimer, "Speed")
  modif.oValues[1].Inicial = initialTime
  modif.oValues[1].Final = targetTime
  if unstoppable and unstoppable == 1 then
    modif.OnEnd = "Weapons.EndUnstoppable"
    Weapons.IgnoreTimeBlending = true
  end
end

function Weapons.EndUnstoppable()
  Weapons.IgnoreTimeBlending = nil
end

function Weapons.CamLinearShakeEvent(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local a = Game.Split(EventName, ",")
  local duration = tonumber(a[1])
  local angX = tonumber(a[2])
  local angY = tonumber(a[3])
  local amplitude = tonumber(a[4])
  local factorStack = a[5]
  local onlyOnHit = tonumber(a[6])
  local timeFromHit = tonumber(a[7])
  local onlyOnLocked = tonumber(a[8])
  local radius = tonumber(defparam(a[9], -1))
  local dontRumble = tonumber(defparam(a[10], 0))
  if player and ent and 0 < radius then
    local dist = (ent.Pos - player.Pos):mod()
    if radius < dist then
      return
    else
      amplitude = amplitude - amplitude * (dist / radius)
    end
  end
  if (onlyOnHit == 0 or onlyOnHit == 1 and ent.uData.LastSuccessfulHit and ent.uData.LastSuccessfulHit > Game.GetTime() - timeFromHit) and (onlyOnLocked == 0 or onlyOnLocked == 1 and ent.AimEntity ~= "") then
    local shakeWorldVec = V3D(0, 0, -1):rot(ent.Ang + V3D(angX, angY, 0))
    Weapons.CamLinearShake(duration, shakeWorldVec, amplitude, factorStack)
    if dontRumble == 0 then
      local vbr = clamp(0, 1, amplitude / 1.4)
      if 0.1 < vbr and 0.1 < duration then
        local Vibra = Input.GetRumble(0)
        if Vibra.RemainTimeLeft < duration / 2 and vbr > Vibra.Left then
          Vibra:SetLeft(vbr, duration * 0.6)
        end
      end
    end
  end
end

function Weapons.CamLinearShake(duration, shakeWorldVec, amplitude, factorStack)
  local cam = Game.GetEntity(Game.GetCam(0))
  local ent = Game.UsrEntity(0)
  if EditorAnimTester and EditorAnimTester.object then
    ent = EditorAnimTester.object
  end
  if ent == nil then
    return
  end
  local projVecPosX, projVecPosY = Scorer.Get2DPos(ent.Pos + shakeWorldVec)
  local projEntPosX, projEntPosY = Scorer.Get2DPos(ent.Pos)
  local shakeProjVec = V2D(projVecPosX - projEntPosX, projVecPosY - projEntPosY):norm()
  local modif = Game.ValueModifier():New()
  modif.FinalTime = duration
  modif.FactorStack = factorStack
  modif.TimeType = 3
  modif.oValues.n = 2
  modif.oValues[1]:SetValue(cam.oModif, "Pitch")
  modif.oValues[1].Inicial = 0
  modif.oValues[1].Final = shakeProjVec.y * amplitude
  modif.oValues[2]:SetValue(cam.oModif, "Yaw")
  modif.oValues[2].Inicial = 0
  modif.oValues[2].Final = shakeProjVec.x * amplitude
end

function Weapons.GetDirString(rot)
  local wanted = ""
  if rot < 45 and -45 < rot then
    return "Fw"
  elseif rot < 160 and 45 < rot then
    return "Left"
  elseif rot < -45 and -160 < rot then
    return "Right"
  else
    return "Back"
  end
end

function Weapons.DebugDamage(From, To, Damage, initialDamage, blocked, HitData, blockTooWeak)
  local t = DebugDraw.NewPrimitive("Text3D")
  t.Pos = To.Pos
  t.Speed = V3D(0, -80, 0)
  t.TimeToDel = Game.GetTime() + 2
  t.Text = "" .. Damage
  if To:IsType("WalkChar") then
    if To.UsrControl ~= -1 then
      if blocked == 2 then
        t.Color = V4D(255, 215, 0, 128)
        t.Text = t.Text .. " (SYNC)"
      elseif blocked == 1 then
        t.Color = V4D(238, 232, 170, 128)
        t.Text = t.Text .. " (BLOCK)"
      elseif blocked == 0 then
        t.Color = V4D(255, 0, 0, 128)
      elseif blocked == -1 then
        t.Color = V4D(255, 140, 0, 128)
        t.Text = t.Text .. " (BROKEN)"
      end
    elseif blocked == 1 or blocked == 2 then
      t.Color = V4D(244, 164, 96, 128)
      t.Text = t.Text .. " (BLOCK)"
    elseif blocked == 0 then
      t.Color = V4D(192, 192, 192, 128)
    elseif blocked == -1 then
      t.Color = V4D(238, 130, 238, 128)
      t.Text = t.Text .. " (BROKEN)"
    end
  end
  if Weapons.Debug.Value >= 4 then
    local d = DebugDraw.NewPrimitive("Link")
    d.Point0 = To.Hit_Pos
    local dir = To.Hit_Direction
    d.Point1 = To.Hit_Pos + dir:norm() * 200
    d.TimeToDel = Game.GetTime() + 2.5
    d.Color = Color(255, 255, 0, 255)
    local str = ""
    if To.Hit_Reaction == -2 then
      str = " |Reaction only on death|"
    elseif To.Hit_Reaction == -1 then
      str = " |No reaction|"
    elseif To.Hit_Reaction == 0 then
      str = " |Custom: '" .. To.Hit_ReactionAnim .. "'|"
    elseif To.Hit_Reaction == 1 then
      str = " |Soft|"
    elseif To.Hit_Reaction == 2 then
      str = " |Med|"
    elseif To.Hit_Reaction == 3 then
      str = " |Hard|"
    elseif To.Hit_Reaction == 4 then
      str = " |Crush|"
    elseif To.Hit_Reaction == 5 then
      str = " |Launch|"
    end
    t.Text = t.Text .. str
    if blockTooWeak then
      t.Text = t.Text .. " BREAKLEVEL<REACTION"
    elseif To.Hit_Unblockable == 1 then
      t.Text = t.Text .. " UNBLOCKABLE"
    elseif To.Hit_Unblockable == 2 then
      t.Text = t.Text .. " BLOCKBREAKER"
    end
    if To.oActCtrl then
      local minStrenghtToReact = To.oActCtrl:GetTrackInfo("Reactionability")
      if minStrenghtToReact and minStrenghtToReact ~= "" then
        minStrenghtToReact = tonumber(minStrenghtToReact)
        local reaction = To.Hit_Reaction
        if reaction == 0 then
          reaction = 5
        end
        if minStrenghtToReact <= reaction then
          t.Text = t.Text .. " [REACTIONABILITY TRACK BROKEN (Reaction " .. reaction .. " >= Track " .. minStrenghtToReact .. ")]"
        else
          t.Text = t.Text .. " [REACTIONABILITY TRACK]"
        end
      elseif not To.oActCtrl.oAction.oAI.bHitable then
        t.Text = t.Text .. " [NO HITABLE]"
      end
    end
  end
  local fromStr = "ALGO"
  if From then
    fromStr = From.Name
  end
  if 1 <= Weapons.Debug.Value and From then
    Weapons.ProcessDamageList(From.Name, To.Name, Damage, initialDamage)
  end
  Game.Log("Time: " .. string.format("%.5f", Game.GetTime()) .. " -> " .. fromStr .. " da\241a a " .. To.Name .. " por " .. Damage .. "(" .. initialDamage .. ")" .. " puntos\n", 2)
end

Weapons.DamageList = {}
Weapons.DamageGraphPosX = 20
Weapons.DamageGraphPosY = 400

function Weapons.ProcessDamageList(FromName, ToName, Damage, initialDamage)
  table.insert(Weapons.DamageList, {
    Game.GetTime(),
    Damage
  })
  local secondsToMonitor = 10
  local resolution = 0.5
  local counter = 0
  local damageFromSecondList = {}
  local time = Game.GetTime()
  time = resolution * math.floor(time / resolution)
  for i, data in pairs(Weapons.DamageList) do
    if time > data[1] + secondsToMonitor then
      table.remove(Weapons.DamageList, i)
    end
    local countingFromSecond = secondsToMonitor
    while resolution <= countingFromSecond do
      if not damageFromSecondList[countingFromSecond] then
        damageFromSecondList[countingFromSecond] = 0
      end
      if time < data[1] + countingFromSecond and time >= data[1] + countingFromSecond - resolution then
        damageFromSecondList[countingFromSecond] = damageFromSecondList[countingFromSecond] + data[2]
        counter = counter + 1
      end
      countingFromSecond = countingFromSecond - resolution
    end
  end
  if not Weapons.bg or not Weapons.bg.bValidBaseType then
    Weapons.bg = DebugDraw.NewPrimitive("BarGraph")
  end
  Weapons.bg.Pos = V3D(Weapons.DamageGraphPosX, Weapons.DamageGraphPosY)
  Weapons.bg.TimeToDel = Game.GetTime() + 2
  Weapons.bg.Color = Color(255, 0, 0, 255)
  Weapons.bg.BarWidth = 4
  local index = resolution
  local barIndex = 0
  local acumulatedDamage = 0
  while secondsToMonitor > index do
    Weapons.bg["Height_" .. string.format("%.2i", barIndex)] = damageFromSecondList[index] / 5
    acumulatedDamage = acumulatedDamage + damageFromSecondList[index]
    index = index + resolution
    barIndex = barIndex + 1
    Weapons.LastDamageTime = Game.GetTime()
  end
  if not Weapons.t or not Weapons.t.bValidBaseType then
    Weapons.t = DebugDraw.NewPrimitive("Text3D")
  end
  Weapons.t.Pos = V3D(Weapons.DamageGraphPosX + 50, Weapons.DamageGraphPosY + 10)
  Weapons.t.TimeToDel = Game.GetTime() + 2
  Weapons.t.Text = "Total Damage: " .. acumulatedDamage
  Weapons.t.DontTransform = true
  delSF("SchUpdateDamageList")
  if 1 <= Weapons.Debug.Value then
    addSF(resolution, "SchUpdateDamageList", "Weapons.ProcessDamageList", FromName, ToName, 0, initialDamage)
  end
end

function Weapons.DamageFeedBack(From, To, LifeLost, Blocked, HitData)
  if To:IsType("WithLife") and To.oActCtrl and To.oActCtrl.oActClass then
    local dmfb = To.oActCtrl.oActClass.uData.DamageFeedBack
    if dmfb and From and Game.UsrEntity() and From.Name == Game.UsrEntity().Name and Blocked == 0 and 0 < LifeLost then
      if dmfb.Flash and 0 < dmfb.Flash.Time and dmfb.Flash.Color ~= Color(0, 0, 0, 0) then
        if Stamina.Active.Value then
          color = Color(255, 128, 64)
          To.SelectedParams = Color(1, 8, 5, 1.75)
        else
          color = dmfb.Flash.Color
          To.SelectedParams = Color(1, 8, 2, 2.5)
        end
        Weapons.FlashDamage(To, dmfb.Flash.Time, dmfb.Flash.FStack, color)
      end
      Weapons.QuakeDamageFX(To)
    end
  end
end

function Weapons.EventFlash(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local dmfb = ent.oActCtrl.oActClass.uData.DamageFeedBack
  if dmfb and dmfb.Flash and dmfb.Flash.Time > 0 and dmfb.Flash.Color ~= Color(0, 0, 0, 0) then
    Weapons.FlashDamage(ent, dmfb.Flash.Time, dmfb.Flash.FStack, dmfb.Flash.Color)
    Weapons.VibraPad("HitEnemy")
  end
end

function Weapons.DefaultProperties(ac)
  if ac.Name == "Belmont" then
    return
  end
  ac.uData.DamageFeedBack = {
    Flash = {
      Time = 0.25,
      FStack = "aaais",
      Color = Color(64, 0, 0, 0)
    }
  }
  ac.uData.MiniGames = {MinValMoment = 0.2, MaxValMoment = 1}
  ac.uData.QuakeDamageFX = {
    Time = 0,
    FStack = "i",
    Pos = V3D(0, 0, 0),
    Ang = V3D(0, 0, 0)
  }
end

function Weapons.FlashDamage(e, time, FStack, rgb)
  local modif = Game.ValueModifier():New()
  if e.uData.FlashDamage and e.uData.FlashDamage.bValidBaseType then
    e.uData.FlashDamage.bDelete = true
  end
  e.uData.FlashDamage = modif
  e.FXSelectedColor = rgb
  modif.FinalTime = time
  modif.FactorStack = FStack
  modif.oValues.n = 1
  modif.oValues[1]:SetValue(e, "FXSelectedColor")
  modif.oValues[1].Final = rgb
  modif.oValues[1].Inicial = Color(0, 0, 0, 0)
end

function Weapons.QuakeDamageFX(e)
  local a
  local modif = Game.ValueModifier():New()
  if e.uData.QuakeDamage and e.uData.QuakeDamage.bValidBaseType then
    e.uData.QuakeDamage.bDelete = true
  end
  e.uData.QuakeDamage = modif
  local data = e.oActCtrl.oActClass.uData.QuakeDamageFX
  if not data or data.Time <= 0 then
    return
  end
  modif.FinalTime = data.Time
  modif.FactorStack = data.FStack
  modif.oValues.n = 2
  a = modif.oValues[1]
  a:SetValue(e, "QuakeAngFactor")
  a.Final = data.Ang
  a.Inicial = V3D(0, 0, 0)
  a = modif.oValues[2]
  a:SetValue(e, "QuakePosFactor")
  a.Final = data.Pos
  a.Inicial = V3D(0, 0, 0)
end

function Weapons.EventSetTgtEntity(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local params = Game.Split(EventName, ",")
  local a, b
  if ent.uData.ForceGrenadeTgtEntity and (Game.GetTime() < ent.uData.ForceGrenadeTgtTime or ent.uData.ForceGrenadeTgtTime < 0) then
    a = ent.uData.ForceGrenadeTgtEntity
    b = ent.uData.ForceGrenadeTgtEntity
  else
    a, b = WeaponsCombo.GetAimEntity(EntityName, tonumber(params[1]), tonumber(params[2]))
  end
  ent.AimEntity = a
  ent.TgtEntity = b
end

function Weapons.NoDamageLoop()
  addSF(0.1, "Weapons.NoDamageLoop", "Weapons.NoDamageLoop")
  local e = player
  if not e.uData.LetMeDie then
    e.Life = e.oActCtrl.oActClass.Life
  end
end

function Weapons.CallPreHit(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local tgt = Game.GetEntity(ent.TgtEntity)
  if tgt then
    local a = Game.Split(EventName, ",")
    local dir = V3D(a[1], a[2], 0)
    local size = a[3]
    local reaction = tonumber(a[4])
    local dodgeable = tonumber(a[5])
    local hitframe = tonumber(a[6])
    local tempReactions = {
      small = -1,
      average = -1,
      large = -1,
      giant = -1
    }
    tempReactions[size] = reaction
    local action = ent.oActCtrl.oAction
    local hittime = hitframe / action.AnmFPS - Time - action.FirstFrame
    ent:CallPreHit(EntityName, ent.TgtEntity, hittime, dir.x, dir.y, dir.z, tgt.Pos.x, tgt.Pos.y, tgt.Pos.z, tempReactions.small, tempReactions.average, tempReactions.large, tempReactions.giant, dodgeable)
  end
end

Weapons.ReverseLightAndDarkAlias = {
  ["DDDDDDh(Small)"] = "RDDDDDDh(Small)",
  ["DDDDDDh(Average)"] = "RDDDDDDh(Average)",
  ["DDDDDDh(Large)"] = "RDDDDDDh(Large)",
  ["DarkClaw(Small)"] = "RDarkClaw(Small)",
  ["DarkClaw(Average)"] = "RDarkClaw(Average)",
  ["DarkClaw(Large)"] = "RDarkClaw(Large)",
  ["StaminaAttack(Small)"] = "RStaminaAttack(Small)",
  ["StaminaAttack(Average)"] = "RStaminaAttack(Average)",
  ["StaminaAttack(Large)"] = "RStaminaAttack(Large)",
  ["StaminaAttack(Giant)"] = "RStaminaAttack(Giant)",
  ["StaminaAreaAttack(Small)"] = "RStaminaAreaAttack(Small)",
  ["StaminaAreaAttack(Average)"] = "RStaminaAreaAttack(Average)",
  ["StaminaAreaAttack(Large)"] = "RStaminaAreaAttack(Large)",
  ["StaminaAreaAttack(Giant)"] = "RStaminaAreaAttack(Giant)",
  ["DarkDodge(Small)"] = "RDarkDodge(Small)",
  ["DarkDodge(Average)"] = "RDarkDodge(Average)",
  ["DarkDodge(Large)"] = "RDarkDodge(Large)",
  ["DarkDodge(Giant)"] = "RDarkDodge(Giant)"
}
