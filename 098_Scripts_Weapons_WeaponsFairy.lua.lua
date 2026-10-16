WeaponsFairy.Fairies = Game.GVar("ScorerWeapon0")
WeaponsFairy.MaxFairiesBase = 4
WeaponsFairy.FairiesExpansions = 0
WeaponsFairy.MaxFairiesInc = 1
WeaponsFairy.PickedFairies = 3

function WeaponsFairy.main()
end

function WeaponsFairy.Set(EntityName)
  local ent = Game.GetEntity(EntityName)
  ent.uData.RangedAction = "PressFairy"
  WeaponsFairy.Fairies.Value = ent.oAI:NumFairies()
  Weapons.SelectedWeapon.Value = 0
end

function WeaponsFairy.IncrementFairy(container, user, drawToScorer)
  drawToScorer = defparam(drawToScorer, false)
  local playerEntity = Game.GetEntity("Belmont")
  if nil ~= playerEntity and playerEntity.oAI:NumFairies() < WeaponsFairy.GetMaxFairies() then
    Fairy.CreateFairy()
    WeaponsFairy.Fairies.Value = playerEntity.oAI:NumFairies()
  end
  if drawToScorer then
    ScorerSprites.GotFairy(playerEntity.Pos, 1)
  end
end

function WeaponsFairy.SetMaxFaires()
  local playerEntity = Game.GetEntity("Belmont")
  if playerEntity then
    for i = PickableItems.GetCurrentFairies(), WeaponsFairy.GetMaxFairies() - 1 do
      Fairy.CreateFairy()
    end
    WeaponsFairy.Fairies.Value = playerEntity.oAI:NumFairies()
  end
end

function WeaponsFairy.GetMaxFairies()
  return WeaponsFairy.MaxFairiesBase + WeaponsFairy.FairiesExpansions * WeaponsFairy.MaxFairiesInc
end

function WeaponsFairy.Inc(EntityName, count)
  local ent = player
  local currentFairies = ent.oAI:NumFairies()
  local incTo
  if not count or count == -1 then
    incTo = WeaponsFairy.GetMaxFairies()
  else
    incTo = math.min(currentFairies + count, WeaponsFairy.GetMaxFairies())
  end
  for i = currentFairies, incTo - 1 do
    Fairy.CreateFairy()
  end
  WeaponsFairy.Fairies.Value = ent.oAI:NumFairies()
  return incTo - currentFairies
end

function WeaponsFairy.CanPickFairy()
  local playerEntity = Game.UsrEntity(0)
  if nil ~= playerEntity then
    return playerEntity.oAI:NumFairies() < WeaponsFairy.GetMaxFairies()
  end
  return false
end

WeaponsFairy.TableDamages = {}
