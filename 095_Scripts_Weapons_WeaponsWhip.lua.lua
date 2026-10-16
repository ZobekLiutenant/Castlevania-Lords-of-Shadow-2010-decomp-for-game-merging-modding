WeaponsWhip.UseTimeShake = 1
WeaponsWhip.TSFadeInitSpeed = 0.1
WeaponsWhip.TSFadeDuration = 0.1
WeaponsWhip.TSShakeFactor = 0.1
WeaponsWhip.TSShakeTime = 0.1
WeaponsWhip.TSDelay = 0.1

function WeaponsWhip.Preload()
  WeaponsWhip.CreateEffects()
end

function WeaponsWhip.main()
end

function WeaponsWhip.CreateEffects()
end

function WeaponsWhip.Set(EntityName)
  local ent = Game.GetEntity(EntityName)
  ent.oWhip.OnWallCollide = "WeaponsWhip.WallCollide"
  ent.oWhip.OnHit = "WeaponsWhip.HitEntity"
  ent.owc.OverrideControls = "!OverrideControls"
  ent.uData.ComboBuffer = {}
end

function WeaponsWhip.AreaAttackPress(EntityName)
  local ent = Game.GetEntity(EntityName)
  if WeaponsCombo.ProcessAction(EntityName, "PressArea") then
    ent.ExtraSufix = "Whip"
  end
end

function WeaponsWhip.DirectAttackPress(EntityName)
  local ent = Game.GetEntity(EntityName)
  if WeaponsCombo.ProcessAction(EntityName, "PressDirect") then
    ent.ExtraSufix = "Whip"
  end
end

function WeaponsWhip.HitEntity(owner, e, time, velX, velY, velZ, posX, posY, posZ, hittedPartName)
  if e then
    local presets = owner.oWhip.uData.hitPreset
    local hitpresets = owner.oActCtrl.oActClass.uData.HitPresets
    local hitAgainList
    if not Game.Get("PlayingDLC") then
      hitAgainList = e.uData.HitAgainList
    elseif hittedPartName then
      local part = Game.GetEntity(hittedPartName)
      hitAgainList = part.uData.HitAgainList
    else
      hitAgainList = e.uData.HitAgainList
    end
    for i, presetName in pairs(presets) do
      if presetName ~= "" then
        local hitData = hitpresets[presetName]
        if hitData[Weapons.GetSize(e, hitData)] == true and (hitAgainList == nil or Weapons.CanHitAgain(e, owner, hitData, Game.GetTime(), hittedPartName)) then
          hitData.Dir = V3D(velX, velY, velZ)
          local pos = V3D(posX, posY, posZ)
          hitData.Pos = pos
          if Weapons.DoDamage(owner, e, hitData, true, hitAgainList ~= nil, hittedPartName) then
            if owner.Name == "Belmont" then
              if e:IsType("PxBodyPhysics") then
                if e.MaxColSoundTimeStamp <= 0 or e.MaxColSoundTimeStamp > Game.GetTime() then
                  Belmont.FXWhipImpactAOn(owner.Name, pos)
                end
                break
              end
              if e.Name == "Legion" or e.Name == "legion" then
                do
                  local hittedPart = Game.GetEntity(hittedPartName)
                  if not hittedPart.uData.SuperBlock then
                    Belmont.FXWhipImpactAOn(owner.Name, pos)
                  end
                end
                break
              end
              Belmont.FXWhipImpactAOn(owner.Name, pos)
              break
            end
            if owner.oActCtrl.oActClass.Name == "SilverWarrior" then
              SilverWarrior.FXWhipImpactAOn(owner.Name, pos)
            end
          end
          break
        end
      end
    end
    if e:IsType("PxBodyPhysics") then
      local dir = (e.Pos - owner.Pos):norm()
      Weapons.PushObject(hittedPartName, dir.x, dir.y, dir.z)
    end
  end
end

function WeaponsWhip.TimeShake(EntityName, FadeInitSpeed, FadeDuration, ShakeFactor, ShakeTime, Test)
  local e = Game.GetEntity(EntityName)
  if e then
    Game.SetTimeSpeed(FadeInitSpeed)
    Game.SetTimeFade(1, FadeDuration)
    Weapons.QuakeFX(e.Pos, ShakeFactor, ShakeTime)
  end
end

BeginSwordNodePos = V3D(0, 0, 0)

function WeaponsWhip.BeginDamage(EntityName, EventName, Time)
  local ent = Game.GetEntity(EntityName)
  local currentHitPreset = Game.Split(EventName, ",")
  if Weapons.ReverseLightAndDark then
    for i = 1, #currentHitPreset do
      if currentHitPreset[i] and currentHitPreset[i] ~= "" then
        local alias = Weapons.ReverseLightAndDarkAlias[currentHitPreset[i]]
        if alias then
          currentHitPreset[i] = alias
        end
      end
    end
  end
  ent.oWhip.uData.hitPreset = currentHitPreset
end

function WeaponsWhip.EndDamage(EntityName, EventName, Time)
end

WeaponsWhip.WallImpactMinTime = 0.5

function WeaponsWhip.WallCollide(colX, colY, colZ, normX, normY, normZ, velX, velY, velZ, surface)
  local surfaceList = Physics.GetSurfaceList()
  local tipo, i
  for i = 1, #surfaceList do
    if i == surface + 1 then
      print(surfaceList[i])
      tipo = "WhipWallImpact_" .. surfaceList[i]
    end
  end
  local time = Game.GetTime()
  if not WeaponsWhip.WallImpactTimeStamp or time > WeaponsWhip.WallImpactTimeStamp + WeaponsWhip.WallImpactMinTime then
    SoundUtils.FXPlaySound("Belmont", "WhipWallImpact_GENERIC", V3D(colX, colY, colZ))
    if tipo then
      SoundUtils.FXPlaySound("Belmont", tipo, V3D(colX, colY, colZ))
    end
    WeaponsWhip.WallImpactTimeStamp = Game.GetTime()
  end
  if Impact.Surfaces[surface] then
    Impact.DoImpact("Wall/" .. Impact.Surfaces[surface], "DoFixed " .. V3D(colX, colY, colZ):str3() .. "," .. V3D(normX, normY, normZ):str3())
  end
end
