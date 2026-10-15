Tips.CustomTip = nil

function Tips.main()
end

function Tips.GetTipKey()
  local candidates = {}
  local maxPriority = 0
  if not Tips.CustomTip then
    for name, data in pairs(Tips.Data) do
      if data[1]() then
        if maxPriority < data[2] then
          candidates = {}
          maxPriority = data[2]
        end
        if data[2] == maxPriority then
          table.insert(candidates, name)
        end
      end
    end
    if 0 < #candidates then
      return candidates[math.random(#candidates)]
    else
      return nil
    end
  else
    return Tips.CustomTip
  end
end

function Tips.GetTip()
  return Tips.CurrentTip
end

function Tips.OnDeath()
  local tipKey = Tips.GetTipKey()
  if tipKey then
    local a = Game.Split(tipKey, ".")
    Tips.CurrentTip = langstr("Tip_Prefix") .. langstr(a[1])
  else
    Tips.CurrentTip = ""
  end
end

function Tips.CheckTimestamp(name, time)
  return Tips.Timestamps[name] and Tips.Timestamps[name] + time > Game.GetTime()
end

Tips.Timestamps = {}

function Tips.SetTimestamp(name)
  Tips.Timestamps[name] = Game.GetTime()
end

function Tips.EventSetTimestamp(EntityName, EventName, Time)
  Tips.SetTimestamp(EventName)
end

function Tips.AttackedBy(className)
  local attacker = Game.GetEntity(player.Hit_Attacker)
  if attacker and attacker.oActCtrl and attacker.oActCtrl.oActClass then
    return attacker.oActCtrl.oActClass.Name == className
  else
    return nil
  end
end

function Tips.IsLevel(levelName)
  return init.level_name == string.lower(levelName)
end

function Tips.IsChapterPast(chapterNumber)
  local chapter = tonumber(Game.Split(init.level_name, "_")[1])
  if chapter then
    return chapterNumber < chapter
  else
    return true
  end
end

function Tips.SetCustomTip(key)
  Tips.CustomTip = key
end

function Tips.ResetCustomTip()
  Tips.CustomTip = nil
end

function Tips.AnyTime()
  return true
end

function Tips.Never()
  return false
end

function Tips.Fall()
  return player.Action == "WhipFallDeath"
end

function Tips.FallEquilibrium()
  return Tips.CheckTimestamp("EquilibriumFail", 5)
end

function Tips.BreakBlock()
  return Tips.Fall() and Tips.CheckTimestamp("BreakBlock", 3)
end

function Tips.LookDownFall()
  return Tips.Fall() and Tips.CheckTimestamp("LookDownFall", 3)
end

function Tips.ExitHook()
  return Tips.Fall() and Tips.CheckTimestamp("ExitHook", 3)
end

function Tips.EnemyHitAndFall()
  return Tips.Fall() and Tips.CheckTimestamp("EnemyHit", 3)
end

function Tips.Boots()
  return player.oActCtrl.oActClass.SprintOnDoubleTap == 1
end

function Tips.FallWithBoots()
  return Tips.Fall() and Tips.Boots()
end

function Tips.Wings()
  return player.oActCtrl.oActClass.uData.bWings
end

function Tips.FallWithWings()
  return Tips.Fall() and Tips.Wings()
end

function Tips.DrownInMud()
  return Tips.CheckTimestamp("DrownInMud", 3)
end

function Tips.JustHitted()
  return Tips.CheckTimestamp("EnemyHit", 1)
end

function Tips.Laura()
  return player.ActCtrl == "Laura"
end

function Tips.LauraGhoulExploded()
  return Tips.CheckTimestamp("GhoulExploded", 5) and player.ActCtrl == "Laura"
end

function Tips.EatedByLeviathan()
  return Tips.CheckTimestamp("LeviathanLunch", 1)
end

function Tips.JustHittedOnAir()
  return Tips.CheckTimestamp("EnemyHit", 1) and player.bIsFalling
end

function Tips.JustHittedFirstChapters()
  return Tips.CheckTimestamp("EnemyHit", 1) and not Tips.IsChapterPast(3)
end

function Tips.JustHittedNextChapters()
  return Tips.CheckTimestamp("EnemyHit", 1) and Tips.IsChapterPast(1)
end

function Tips.IsChupacabrasActive()
  return Tips.IsChapterPast(2) and not Tips.LightMagicEnabled()
end

function Tips.CombatDodgeable()
  return Tips.JustHitted() and player.Hit_Dodgeable == 1 and not Tips.IsLevel("1_1_Besieged_Village")
end

function Tips.CombatJumpable()
  return Tips.JustHitted() and player.Hit_Jumpable == 1
end

function Tips.CombatUnblockable()
  return Tips.JustHitted() and player.Hit_Unblockable == 1
end

function Tips.CombatBlockable()
  return Tips.JustHitted() and player.Hit_Unblockable == 0
end

function Tips.CombatBoss()
  return Game.Get("ScorerBossName") ~= ""
end

function Tips.CombatInvulnerableBoss()
  return Game.Get("ScorerBossInvulnerable") and Tips.CombatBoss()
end

function Tips.CombatLycanthropeLesser()
  return Tips.JustHitted() and Tips.AttackedBy("LycanthropeLesser")
end

function Tips.CombatGhoul()
  return Tips.JustHitted() and Tips.AttackedBy("Ghoul")
end

function Tips.CombatSpiderGiant()
  return Tips.JustHitted() and Tips.AttackedBy("SpiderGiant")
end

function Tips.CombatWithBoots()
  return Tips.JustHitted() and Tips.IsChapterPast(3)
end

function Tips.CombatGoblin()
  return Tips.JustHitted() and Tips.AttackedBy("Goblin")
end

function Tips.CombatOgre()
  return Tips.JustHitted() and Tips.AttackedBy("Ogre")
end

function Tips.CombatWitch()
  return (not Tips.JustHitted() or not Tips.AttackedBy("CrowB")) and Tips.JustHitted() and Tips.AttackedBy("WitchChild")
end

function Tips.CombatButcher()
  return Tips.JustHitted() and Tips.AttackedBy("Butcher")
end

function Tips.CombatRagdoll()
  return Tips.JustHitted() and Tips.AttackedBy("RagDoll")
end

function Tips.CombatMandrake()
  return Tips.JustHitted() and Tips.AttackedBy("Mandrake")
end

function Tips.CombatSilverWarrior()
  return Tips.JustHitted() and Tips.AttackedBy("SilverWarrior")
end

function Tips.CombatSatan()
  return Tips.JustHitted() and Tips.AttackedBy("Satan")
end

function Tips.CombatGrenade()
  return Tips.JustHitted() and player.Hit_Type == "Grenade"
end

function Tips.CombatPoison()
  return Game.Get("BelmontPoisonedTimeLeft") > 0.1 and player.Action == "StillDie"
end

function Tips.LightMagicEnabled()
  return LightPower.PowerOn.Value
end

function Tips.DarkMagicEnabled()
  return DarkPower.PowerOn.Value
end

function Tips.SomeMagicEnabled()
  return Tips.LightMagicEnabled() or Tips.DarkMagicEnabled()
end

function Tips.DarkAndLightMagic()
  return Tips.HaveLightMagic() and Tips.HaveDarkMagic()
end

function Tips.CombatHaveMagic()
  return Tips.JustHitted() and Tips.HaveMagic()
end

function Tips.CombatAvailableCombo()
  return Tips.JustHitted() and Game.Get("ShowBuyComboIcon")
end

function Tips.DeadlyFog()
  return AreaTriggers.VenomActive
end

function Tips.MinigameMomentFail()
  return Tips.CheckTimestamp("MinigameMomentFail", 3)
end

function Tips.MinigameSpeedFail()
  return Tips.CheckTimestamp("MinigameSpeedFail", 3)
end

function Tips.SkillGreaterThan2()
  return Game.Get("GameSkill") >= 2
end

function Tips.ScrollAvailable()
  return CollectableItems.CreateScrollData() ~= "" and Game.Get("SaveGameSlot") == 0
end

function Tips.LongTimePlayed()
  return Game.GetTimePlaying() > 7200
end

function Tips.MinigameNaiadFail()
  return Tips.CheckTimestamp("MinigameNaiadFail", 5)
end

function Tips.Level_1_1()
  return Tips.IsLevel("1_1_Besieged_Village")
end

function Tips.Level_1_9()
  return Tips.IsLevel("1_9_Oblivion_lake")
end

function Tips.Level_2_9()
  return Tips.IsLevel("2_9_Stone_Idol_Temple")
end

function Tips.Level_9_4_1()
  return Tips.IsLevel("9_4_1_The_music_box")
end

function Tips.BladeHit()
  return Tips.CheckTimestamp("BladeHit", 5)
end

function Tips.CaughtByLegion()
  return Tips.CheckTimestamp("LegionCatch", 5)
end

function Tips.CaughtByLegionLava()
  return Tips.CheckTimestamp("LegionCatchLava", 5)
end

function Tips.CaughtByLavaJumping()
  return Tips.CheckTimestamp("LavaCatchJumpingPlayer", 1)
end

function Tips.CaughtByLavaHanging()
  return Tips.CheckTimestamp("LavaCatchHangPlayer", 2)
end

function Tips.CaughtByLava()
  return Tips.CheckTimestamp("LavaPlayerDLC", 1)
end

function Tips.CaughtByLavaSurfing()
  return Tips.CheckTimestamp("LavaPlayerDLCSurf", 1)
end

function Tips.HittedByDebris()
  return Tips.CheckTimestamp("HittedByDebris", 1)
end

function Tips.CombatLegion()
  return Tips.JustHitted() and Tips.AttackedBy("Legion")
end

Tips.Data = {
  Tip_Fall1 = {
    Tips.Fall,
    10
  },
  Tip_Fall2 = {
    Tips.Fall,
    10
  },
  Tip_Fall3 = {
    Tips.Fall,
    10
  },
  Tip_Fall4 = {
    Tips.Fall,
    10
  },
  Tip_Fall5 = {
    Tips.Fall,
    10
  },
  Tip_Fall6 = {
    Tips.Fall,
    10
  },
  Tip_Fall_With_Boots = {
    Tips.FallWithBoots,
    10
  },
  Tip_Fall_With_Wings = {
    Tips.FallWithWings,
    10
  },
  Tip_Fall_Equilibrium = {
    Tips.FallEquilibrium,
    20
  },
  Tip_Fall_BreakBlock = {
    Tips.BreakBlock,
    20
  },
  Tip_Fall_LookDownFall = {
    Tips.LookDownFall,
    20
  },
  Tip_Fall_EnemyHit = {
    Tips.EnemyHitAndFall,
    20
  },
  Tip_Drown_In_Mud = {
    Tips.DrownInMud,
    20
  },
  Tip_Drown_In_Mud_2 = {
    Tips.DrownInMud,
    20
  },
  Tip_Deadly_Fog = {
    Tips.DeadlyFog,
    20
  },
  Tip_Combat_Boss = {
    Tips.CombatInvulnerableBoss,
    20
  },
  Tip_Combat_Boss = {
    Tips.CombatBoss,
    0
  },
  Tip_Combat_Ghoul = {
    Tips.CombatGhoul,
    0
  },
  Tip_Combat_SpiderGiant = {
    Tips.CombatSpiderGiant,
    0
  },
  Tip_Combat_Goblin = {
    Tips.CombatGoblin,
    0
  },
  Tip_Combat_Boss = {
    Tips.CombatOgre,
    10
  },
  Tip_Combat_Ogre = {
    Tips.CombatOgre,
    10
  },
  Tip_Combat_Ogre_2 = {
    Tips.CombatOgre,
    10
  },
  Tip_Combat_Ogre_3 = {
    Tips.CombatOgre,
    10
  },
  Tip_Combat_Ogre_4 = {
    Tips.CombatOgre,
    10
  },
  Tip_Combat_Ogre_5 = {
    Tips.CombatOgre,
    10
  },
  Tip_Combat_Butcher = {
    Tips.CombatButcher,
    0
  },
  Tip_Combat_Butcher_2 = {
    Tips.CombatButcher,
    0
  },
  Tip_Combat_4d = {
    Tips.CombatButcher,
    0
  },
  Tip_Combat_7d = {
    Tips.CombatButcher,
    0
  },
  Tip_Combat_Boss = {
    Tips.CombatWitch,
    10
  },
  Tip_Combat_Witch = {
    Tips.CombatWitch,
    10
  },
  Tip_Combat_Witch_2 = {
    Tips.CombatWitch,
    10
  },
  Tip_Combat_Witch_3 = {
    Tips.CombatWitch,
    10
  },
  Tip_Combat_Boss = {
    Tips.CombatSilverWarrior,
    10
  },
  Tip_Combat_SilverWarrior = {
    Tips.CombatSilverWarrior,
    10
  },
  Tip_Combat_SilverWarrior_2 = {
    Tips.CombatSilverWarrior,
    10
  },
  Tip_Combat_SilverWarrior_3 = {
    Tips.CombatSilverWarrior,
    10
  },
  Tip_Combat_Ragdoll = {
    Tips.CombatRagdoll,
    0
  },
  Tip_Combat_Ragdoll_2 = {
    Tips.CombatRagdoll,
    0
  },
  Tip_Combat_Mandrake = {
    Tips.CombatMandrake,
    0
  },
  Tip_Combat_Boss = {
    Tips.CombatSatan,
    10
  },
  Tip_Combat_Satan = {
    Tips.CombatSatan,
    10
  },
  Tip_Combat_Satan_2 = {
    Tips.CombatSatan,
    10
  },
  Tip_Combat_Satan_3 = {
    Tips.CombatSatan,
    10
  },
  Tip_Combat_Satan_4 = {
    Tips.CombatSatan,
    10
  },
  Tip_Combat_Grenade = {
    Tips.CombatGrenade,
    5
  },
  Tip_Combat_Dodgeable = {
    Tips.CombatDodgeable,
    0
  },
  Tip_Combat_Dodgeable_2 = {
    Tips.CombatDodgeable,
    0
  },
  Tip_Combat_Dodgeable_3 = {
    Tips.CombatDodgeable,
    0
  },
  Tip_Combat_Jumpable = {
    Tips.CombatJumpable,
    0
  },
  Tip_Combat_Blockable = {
    Tips.CombatBlockable,
    0
  },
  Tip_Combat_Blockable_2 = {
    Tips.CombatBlockable,
    0
  },
  Tip_Combat_Unblockable = {
    Tips.CombatUnblockable,
    0
  },
  Tip_Combat_Enemy_Poison = {
    Tips.CombatPoison,
    10
  },
  Tip_Combat_Magic_Enabled = {
    Tips.SomeMagicEnabled,
    0
  },
  Tip_Combat_Magic_Enabled_2 = {
    Tips.SomeMagicEnabled,
    0
  },
  Tip_Combat_Magic_Enabled_3 = {
    Tips.SomeMagicEnabled,
    0
  },
  Tip_Combat_Magic_Enabled_4 = {
    Tips.SomeMagicEnabled,
    0
  },
  Tip_Combat_Magic_Enabled_5 = {
    Tips.SomeMagicEnabled,
    0
  },
  Tip_Combat_Magic_Enabled_6 = {
    Tips.SomeMagicEnabled,
    0
  },
  Tip_Combat_Magic_Enabled_7 = {
    Tips.SomeMagicEnabled,
    0
  },
  Tip_Combat_HitOnair = {
    Tips.JustHittedOnAir,
    8
  },
  Tip_Combat = {
    Tips.JustHittedFirstChapters,
    0
  },
  Tip_Combat_2 = {
    Tips.JustHitted,
    0
  },
  Tip_Combat_3 = {
    Tips.JustHitted,
    0
  },
  Tip_Combat_4 = {
    Tips.CombatWithBoots,
    0
  },
  Tip_Combat_5 = {
    Tips.JustHitted,
    0
  },
  Tip_Combat_6 = {
    Tips.JustHittedNextChapters,
    0
  },
  Tip_Combat_7 = {
    Tips.JustHitted,
    0
  },
  Tip_Combat_DarkMagic_Enabled = {
    Tips.DarkMagicEnabled,
    0
  },
  Tip_Combat_Available_Combo = {
    Tips.CombatAvailableCombo,
    0
  },
  Tip_Combat_Chupacabras = {
    Tips.IsChupacabrasActive,
    0
  },
  Tip_Combat_Chupacabras_2 = {
    Tips.IsChupacabrasActive,
    0
  },
  Tip_Combat_Chupacabras_3 = {
    Tips.IsChupacabrasActive,
    0
  },
  Tip_MinigameMomentFail = {
    Tips.MinigameMomentFail,
    10
  },
  Tip_MinigameMomentFail_2 = {
    Tips.MinigameMomentFail,
    10
  },
  Tip_MinigameSpeedFail = {
    Tips.MinigameSpeedFail,
    10
  },
  Tip_MinigameNaiadFail = {
    Tips.MinigameNaiadFail,
    20
  },
  Tip_SkillGreaterThan2 = {
    Tips.SkillGreaterThan2,
    0
  },
  Tip_ScrollAvailable = {
    Tips.ScrollAvailable,
    0
  },
  Tip_Take_Break = {
    Tips.LongTimePlayed,
    0
  },
  Tip_Level_1_1 = {
    Tips.Level_1_1,
    0
  },
  Tip_Level_1_9 = {
    Tips.Level_1_9,
    20
  },
  Tip_Level_1_9_2 = {
    Tips.Level_1_9,
    20
  },
  Tip_Level_1_9_3 = {
    Tips.Level_1_9,
    20
  },
  Tip_Level_1_9_4 = {
    Tips.Level_1_9,
    20
  },
  Tip_Level_2_9 = {
    Tips.Level_2_9,
    20
  },
  Tip_Level_2_9_2 = {
    Tips.Level_2_9,
    20
  },
  Tip_Level_2_9_3 = {
    Tips.Level_2_9,
    20
  },
  Tip_Level_2_9_4 = {
    Tips.Level_2_9,
    20
  },
  Tip_Level_2_9_5 = {
    Tips.Level_2_9,
    20
  },
  Tip_Level_9_4_1 = {
    Tips.Level_9_4_1,
    20
  },
  Tip_Level_9_4_1_2 = {
    Tips.Level_9_4_1,
    20
  },
  Tip_DLC_Leviathan_0 = {
    Tips.EatedByLeviathan,
    20
  },
  Tip_DLC_Leviathan_1 = {
    Tips.EatedByLeviathan,
    20
  },
  Tip_DLC_Laura_Dies_0 = {
    Tips.Laura,
    100
  },
  Tip_DLC_Laura_Dies_1 = {
    Tips.Laura,
    100
  },
  Tip_DLC_Laura_Dies_2 = {
    Tips.Laura,
    100
  },
  Tip_DLC_Laura_Dies_3 = {
    Tips.Laura,
    100
  },
  Tip_DLC_Laura_Dies_Explosion_0 = {
    Tips.LauraGhoulExploded,
    120
  },
  Tip_DLC_Blades_0 = {
    Tips.BladeHit,
    30
  },
  Tip_DLC_Blades_1 = {
    Tips.BladeHit,
    30
  },
  Tip_DLC_Blades_2 = {
    Tips.BladeHit,
    30
  },
  Tip_DLC2_PlayerCaught_0 = {
    Tips.CaughtByLegion,
    20
  },
  Tip_DLC2_PlayerCaught_1 = {
    Tips.CaughtByLegion,
    20
  },
  Tip_DLC2_LavaFall_0 = {
    Tips.CaughtByLavaJumping,
    20
  },
  Tip_DLC2_LavaFall_1 = {
    Tips.CaughtByLavaHanging,
    20
  },
  Tip_DLC2_RockMinigame_0 = {
    Tips.HittedByDebris,
    20
  },
  Tip_DLC2_ForgottenOne_0 = {
    Tips.CombatLegion,
    100
  },
  Tip_DLC2_ForgottenOne_1 = {
    Tips.CombatLegion,
    100
  },
  Tip_DLC2_ForgottenOne_2 = {
    Tips.CombatLegion,
    100
  },
  Tip_DLC2_ForgottenOne_3 = {
    Tips.CombatLegion,
    100
  },
  Tip_DLC2_ForgottenOne_4 = {
    Tips.CombatLegion,
    100
  },
  Tip_DLC2_ForgottenOne_5 = {
    Tips.CombatLegion,
    100
  },
  Tip_DLC2_LavaPlatform_0 = {
    Tips.CaughtByLava,
    20
  },
  Tip_DLC2_LavaPlatform_1 = {
    Tips.CaughtByLava,
    20
  },
  Tip_DLC2_LavaPlatform_2 = {
    Tips.CaughtByLava,
    20
  },
  Tip_DLC2_LavaPlatform_3 = {
    Tips.CaughtByLava,
    20
  },
  Tip_DLC2_LavaPlatform_3 = {
    Tips.CaughtByLavaSurfing,
    30
  },
  Tip_DLC2_LavaCaught_0 = {
    Tips.CaughtByLegionLava,
    20
  },
  Tip_DLC2_LavaCaught_1 = {
    Tips.CaughtByLegionLava,
    20
  }
}

function Tips.GetPauseKey()
  if Tips.MapPauseConditions then
    for _, conditionInfo in ipairs(Tips.MapPauseConditions) do
      if conditionInfo[2]() then
        return "Menu_Picture_" .. string.match(init.LevelName, "level%.(.+)") .. conditionInfo[1]
      end
    end
  end
end

function Tips.BuildMapZoneCondition(zoneId)
  return function()
    local gVarName = init.LevelName .. ".CurrentMapZone"
    return zoneId == Game.GetSaveVar(gVarName)
  end
end

function Tips.SetCurrentMapZone(zoneId)
  Game.SetSaveVar(init.LevelName .. ".CurrentMapZone", zoneId or "")
end

function Tips.BuildGeneratorActiveCondition(generatorNames)
  return function()
    for _, generatorName in ipairs(generatorNames) do
      if NPC.Groups[generatorName] and EnemyGen.nActiveEnemies(generatorName) > 0 then
        return true
      end
    end
    return false
  end
end

function Tips.AnyGeneratorActiveCondition()
  for _, group in pairs(NPC.Groups) do
    if EnemyGen.NumberActiveEnemiesInGroup(group) > 0 and (not (nil ~= group[1] and group[1].bValidBaseType) or not group[1].uData.IsCritter) then
      return true
    end
  end
  return false
end

function Tips.BuildPlayerMountedCondition(enemyClass)
  return function()
    local mountedEntity = AISpec.GetEntityMountedByPlayer()
    return nil ~= mountedEntity and mountedEntity.ActCtrl == enemyClass
  end
end

function Tips.BuildANDCondition(condition1, condition2)
  return function()
    return condition1() and condition2()
  end
end

function Tips.BuildPlayerHangedCondition()
  return function()
    local s = player.Action
    local action = string.sub(s, 1, 11)
    local grupo = Act.GetClass("Belmont"):GetAct(player.Action).Group
    return grupo == "Hang" or grupo == "Hook" or action == "Equilibrium"
  end
end

function Tips.BuildPlayerThreeOrbsCondition()
  return function()
    local val = RubikOrbe.CuantosTengo()
    return val == 3
  end
end
