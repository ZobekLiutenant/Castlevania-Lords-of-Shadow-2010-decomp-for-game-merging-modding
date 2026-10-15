AIEnemy = {}

function AIEnemy.main()
  AIEnemy.AngVisUnderCaution = math.pi / 4
  AIEnemy.DistVisUnderCaution = 2500
  AIEnemy.AngVisUnderAttack = math.pi
  AIEnemy.DistVisUnderAttack = 100000
end

function AIEnemy.LoadAIGroupBehavParams(EnemyName)
  local sPath = Game.Get("PathScriptConfig") .. "AIGroupBehav/AIGroupBehav" .. EnemyName .. ".lua"
  if Game.FileExist(sPath) then
    Game.PreloadLibrary(sPath, "AIGroupBehav" .. EnemyName)
  end
end

function AIEnemy.ResetGroupBehav(EnemyType)
  local iMaxAttackers = AISpec.GetMaxAttackers(EnemyType .. "Default")
  local iWeight = AISpec.GetWeight(EnemyType .. "Default")
  local iMaxSequenceOfAttacks = AISpec.GetMaxSequenceOfAttacks(EnemyType .. "Default")
  local iBigGroupThreshold = AISpec.GetBigGroupThreshold(EnemyType .. "Default")
  local fTimeToWaitUntilNextAttack = AISpec.GetTimeToWaitUntilNextAttack(EnemyType .. "Default")
  AISpec.SetupEnemy(EnemyType, iMaxAttackers, iWeight, iMaxSequenceOfAttacks, iBigGroupThreshold, fTimeToWaitUntilNextAttack)
end

function AIEnemy.LoadAIBehavParams(EnemyName)
  local sPath = Game.Get("PathScriptConfig") .. "AIBehavParamsEditor/AIParams" .. EnemyName .. ".lua"
  if Game.FileExist(sPath) then
    Game.PreloadLibrary(sPath, "AIParams" .. EnemyName)
  end
end

function AIEnemy.IniBehav(behav)
  behav.OnDamageEvent = "AIEnemy.OnDamageEvent"
  behav.OnDeathEvent = "AIEnemy.OnDeathEvent"
  behav.OnViewTargetEvent = "AIEnemy.OnViewTargetEvent"
end

function AIEnemy.AssignMoveHelpers(entityName, generatedEntityName)
  local destinyEntityName = defparam(generatedEntityName, entityName)
  if MapEnemies.RouteLinks ~= nil then
    for i = 1, #MapEnemies.RouteLinks do
      local irl = MapEnemies.RouteLinks[i]
      if MapEnemies.Enemies[irl[1]][3][2] == entityName then
        local point = Team.ListOfMapMoveHelpers[irl[2]]
        local entply = Game.GetEntity(destinyEntityName)
        if entply and entply.oAI and point.bIsPatrolPoint then
          entply.oAI.oPatrolPoint = point
        end
      end
    end
  end
end

function AIEnemy.CreateSingleEnemyAI(name, team)
  local e = Game.GetEntity(name)
  local behav = e.ActCtrl
  AISpec.CreateAI(name, e.Active, behav)
  AITeamList.InsertMember(team, AISetEnemies.Name, name)
  AIEnemy.Init(e, team, {})
  local teamm = AITeamList.Get(team)
  local numMembers = teamm.Num
  for edata in pairs(e.uData) do
    if string.sub(edata, 1, 3) == "AI_" then
      e.oAI[string.sub(edata, 4)] = e.uData[edata]
    end
  end
end

function AIEnemy.Init(ent, team, listProp)
  ent.uData.TeamOrig = team
  local nameBehav = ent.oAI.NameBehav
  if AITrollSmall ~= nil and nameBehav == AITrollSmall.Name then
    AITrollSmall.Init(ent)
  elseif AITrollBig ~= nil and nameBehav == AITrollBig.Name then
    AITrollBig.Init(ent)
  elseif AISwordMaster ~= nil and nameBehav == AISwordMaster.Name then
    AISwordMaster.Init(ent)
  elseif AIWitchChild ~= nil and nameBehav == AIWitchChild.Name then
    AIWitchChild.Init(ent)
  elseif AICrowA ~= nil and nameBehav == AICrowA.Name then
    AICrowA.Init(ent)
  elseif AICrowB ~= nil and nameBehav == AICrowB.Name then
    AICrowB.Init(ent)
  elseif AICrowE ~= nil and nameBehav == AICrowE.Name then
    AICrowE.Init(ent)
  elseif AIWarg ~= nil and nameBehav == AIWarg.Name then
    AIWarg.Init(ent)
  elseif AIWargGreat ~= nil and nameBehav == AIWargGreat.Name then
    AIWargGreat.Init(ent)
  elseif AIWarthog ~= nil and nameBehav == AIWarthog.Name then
    AIWarthog.Init(ent)
  elseif AIOgre ~= nil and nameBehav == AIOgre.Name then
    AIOgre.Init(ent)
  elseif AIWitch ~= nil and nameBehav == AIWitch.Name then
    AIWitch.Init(ent)
  elseif AIChupacabra ~= nil and nameBehav == AIChupacabra.Name then
    AIChupacabra.Init(ent)
  elseif AIGoblin ~= nil and nameBehav == AIGoblin.Name then
    AIGoblin.Init(ent)
  elseif AISpiderGiant ~= nil and nameBehav == AISpiderGiant.Name then
    AISpiderGiant.Init(ent)
  elseif AILycanthropeLesser ~= nil and nameBehav == AILycanthropeLesser.Name then
    AILycanthropeLesser.Init(ent)
  elseif AIGhoul ~= nil and nameBehav == AIGhoul.Name then
    AIGhoul.Init(ent)
  elseif AIAnimArmour ~= nil and nameBehav == AIAnimArmour.Name then
    AIAnimArmour.Init(ent)
  elseif AIVampireWarrior ~= nil and nameBehav == AIVampireWarrior.Name then
    AIVampireWarrior.Init(ent)
  elseif AIDarklord1 ~= nil and nameBehav == AIDarklord1.Name then
    AIDarklord1.Init(ent)
  elseif AIDarklord1L ~= nil and nameBehav == AIDarklord1L.Name then
    AIDarklord1L.Init(ent)
  elseif AILycanthropeGreater ~= nil and nameBehav == AILycanthropeGreater.Name then
    AILycanthropeGreater.Init(ent)
  elseif AIGremlin ~= nil and nameBehav == AIGremlin.Name then
    AIGremlin.Init(ent)
  elseif AIBlackKnight ~= nil and nameBehav == AIBlackKnight.Name then
    AIBlackKnight.Init(ent)
  elseif AISwampThing ~= nil and nameBehav == AISwampThing.Name then
    AISwampThing.Init(ent)
  elseif AIIceElemental ~= nil and nameBehav == AIIceElemental.Name then
    AIIceElemental.Init(ent)
  elseif AIEliteVampA ~= nil and nameBehav == AIEliteVampA.Name then
    AIEliteVampA.Init(ent)
  elseif AIEliteVampB ~= nil and nameBehav == AIEliteVampB.Name then
    AIEliteVampB.Init(ent)
  elseif AIMandrake ~= nil and nameBehav == AIMandrake.Name then
    AIMandrake.Init(ent)
  elseif AIButcher ~= nil and nameBehav == AIButcher.Name then
    AIButcher.Init(ent)
  elseif AIRagDollBugs ~= nil and nameBehav == AIRagDollBugs.Name then
    AIRagDollBugs.Init(ent)
  elseif AIMechanicalM ~= nil and nameBehav == AIMechanicalM.Name then
    AIMechanicalM.Init(ent)
  elseif AIZombie ~= nil and nameBehav == AIZombie.Name then
    AIZombie.Init(ent)
  elseif AIDarklord2 ~= nil and nameBehav == AIDarklord2.Name then
    AIDarklord2.Init(ent)
  elseif AIDarklord2V ~= nil and nameBehav == AIDarklord2V.Name then
    AIDarklord2V.Init(ent)
  elseif AIStoneIdol ~= nil and nameBehav == AIStoneIdol.Name then
    AIStoneIdol.Init(ent)
  elseif AIScarecrow ~= nil and nameBehav == AIScarecrow.Name then
    AIScarecrow.Init(ent)
  elseif AIReaper ~= nil and nameBehav == AIReaper.Name then
    AIReaper.Init(ent)
  elseif AISilverWarrior ~= nil and nameBehav == AISilverWarrior.Name then
    AISilverWarrior.Init(ent)
  elseif AIHeads ~= nil and nameBehav == AIHeads.Name then
    AIHeads.Init(ent)
  elseif AIFloatingHeads ~= nil and nameBehav == AIFloatingHeads.Name then
    AIFloatingHeads.Init(ent)
  elseif AINecromancer ~= nil and nameBehav == AINecromancer.Name then
    AINecromancer.Init(ent)
  elseif AIRat ~= nil and nameBehav == AIRat.Name then
    AIRat.Init(ent)
  elseif AILegion ~= nil and nameBehav == AILegion.Name then
    AILegion.Init(ent)
  end
  AIEntitySpec.Init(ent, listProp)
end

function AIEnemy.IsEnable(ent)
  return ent.oAI.bEnable
end

function AIEnemy.IsBusy(ent)
  return not ent.oAI.bEnable
end

function AIEnemy.AttackEnemyNow(ent)
end

function AIEnemy.OnCreateEvent(entity)
  AISetEnemies.OnCreateEvent(entity)
end

function AIEnemy.IsValidAttacker(ent)
  return ent ~= nil and ent.oAI ~= nil and ent.oAI.MetaTeam == AISpecific.PlayerMetaTeamName
end

function AIEnemy.OnDamageEvent(entity, attacker, damage)
end

function AIEnemy.OnDeathEvent(entity, attacker)
  print(entity, " ENEMIGO MUERTO ATACANTE: ", attacker)
  AISetEnemies.OnDeathEvent(entity)
end

function AIEnemy.OnWithoutAmmoEvent(entity)
end

function AIEnemy.OnViewTargetEvent(ent, target)
end

function AIEnemy.UnderCaution(ent)
end

function AIEnemy.UnderAttack(ent)
end

function AIEnemy.EnableVisionUnderCaution(ent)
end

function AIEnemy.EnableVisionUnderAttack(ent)
end

function AIEnemy.DisableVisionUnderCaution(ent)
end

function AIEnemy.DisableVisionUnderAttack(ent)
end

function AIEnemy.EnableVisionAttackUnderMoment(ent, enable)
end

function AIEnemy.ObtainEnemyLevelFor(EntityName)
  local ent = Game.GetEntity(EntityName)
  ent.oAI:SetEnemyLevel(LevelProperties.EnemyLevels[ent.oActCtrl.oActClass.Name])
end

function AIEnemy.SetupDarkFairyValues(EntityName)
  local ent = Game.GetEntity(EntityName)
  if not ent then
    return
  end
  local dam = player.oActCtrl.oActClass.uData.WeaponsFairy.TableDamages[ent.oActCtrl.oActClass.Name]
  if not dam then
    return
  end
  if 0 < dam then
    ent.oAI.bInvulnerableToBerserkFairy = false
  else
    ent.oAI.bInvulnerableToBerserkFairy = true
  end
end

function AIEnemy.Say(idLine)
  if not TeamTalk.isTalking() and TeamTalk.PlaySingleChat(idLine) then
    return true
  end
  return false
end

function AIEnemy.SayNow(idLine)
  if TeamTalk.PlaySingleChat(idLine) then
    return true
  end
  return false
end

function AIEnemy.SayEvent(entityName, idLine)
  if not TeamTalk.isTalking() then
    TeamTalk.PlaySingleChat(idLine)
  end
end

function AIEnemy.DoTaunt(EntityName)
  if Actions.PlayerInCatch.Value == 1 then
    return
  end
  local ent = Game.GetEntity(EntityName)
  if ent and ent.Active == 1 and ent.oAI and ent.Life > 0 and ent.oAI.bIsCrazy == false and ent.oAI:CanSayTaunt() then
    ent.oAI:SaySomething()
  end
end

AIEnemy.TauntPlayerEvent = {
  {
    "AIEnemy.DoTaunt",
    V3D(64, 128, 200)
  }
}
