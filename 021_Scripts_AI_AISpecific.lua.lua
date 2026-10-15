AISpecific = {}

function AISpecific.main()
  AISpecific.PlayerMetaTeamName = AISpec.GetPlayerMetaTeam()
  Game.PreloadLibrary("Scripts/AI/AIEntitySpec.lua", "AIEntitySpec")
  Game.PreloadLibrary("Scripts/AI/AISetEnemies.lua", "AISetEnemies")
  Game.PreloadLibrary("Scripts/AI/AIFriend.lua", "AIFriend")
end

function AISpecific.Init()
end

function AISpecific.OnGoToObjectiveReachedEvent(ent)
  AIGen.OnGoToObjectiveReachedEvent(ent)
end

function AISpecific.SetFreezeTeam(nameTeam, set)
  if not nameTeam or not set then
    return
  end
  if type(killAll) ~= "boolean" then
    return
  end
  Game.Log("Freezing AI Team '" .. entName .. "'\n", 2)
  local freeze = "false"
  if set then
    freeze = "true"
  end
  AIGen.ExecFuncTeam(nameTeam, "AISpecific.SetFreeze", 0, 0, freeze)
end

function AISpecific.SetFreeze(entName, set)
  local ent = Game.GetEntity(entName)
  if not ent then
    return
  end
  if type(set) ~= "string" then
    return
  end
  if set == "true" then
    Game.Log("Freezing AI '" .. entName .. "'\n", 2)
    if ent.bActive and ent.Life > 0 and entName ~= player.uData.Mount then
      ent.bActive = false
    end
  else
    Game.Log("Unfreezing AI '" .. entName .. "'\n", 2)
    if not ent.bActive then
      ent.bActive = true
    end
  end
end

function AISpecific.StopTeam(nameTeam, killall)
  if not nameTeam then
    return
  end
  killAll = defparam(killAll, false)
  if killall and type(killAll) == "boolean" then
    Game.Log("Stopping AI Team'" .. nameTeam .. "'\n", 2)
    AIGen.ExecFuncTeam(nameTeam, "AISpecific.Stop", 0, 0, killall)
  end
end

function AISpecific.Stop(entName, kill)
  local ent = Game.GetEntity(entName)
  if not ent then
    return
  end
  if EnemyGen.CanKillEntity(ent) then
    EnemyGen.Kill(ent)
  end
end

function AISpecific.ValidateEnemiesNearGraph()
  local err = false
  for i in pairs(MapEnemies.Enemies) do
    local dataEnemy = MapEnemies.Enemies[i]
    local pos = dataEnemy[1][2]
    local typename = dataEnemy[4][2]
    local name = dataEnemy[3][2]
    if not AISpec.IsInExclusionListTestGraph(init.LevelFile, name) and typename ~= "Witch" and typename ~= "Ogre" and typename ~= "RagDollBugs" and typename ~= "Feto" and typename ~= "SwampThing" and typename ~= "FloatingHeads" and typename ~= "Bat" and typename ~= "BatB" and typename ~= "BatC" and typename ~= "CrowA" and typename ~= "CrowB" and typename ~= "CrowE" and typename ~= "CrowF" and typename ~= "Sapo" and typename ~= "Partridge" and typename ~= "Rat" and typename ~= "Sparrow" and typename ~= "SparrowB" then
      if AI.IsEntAssocNearGraph(V3D(pos.x, pos.y, pos.z), typename) == 0 then
        err = true
        Game.Log("ERROR: NEARBY GRAPH IS NOT COMPUTED OR NOT REACHABLE FOR ENEMY: " .. name .. " TYPE: " .. typename .. "\n", 0)
        AISpec.AddGraphWarning("Nearby graph is not computed or not reachable for Enemy: " .. name .. " Type: " .. typename .. "!", pos.x, pos.y, pos.z)
      end
      if AISpec.CollidesWithGeom(init.LevelFile, name, typename, pos.x, pos.y, pos.z) == 1 then
        Game.Log("WARNING: " .. name .. " (" .. typename .. ") seems to be colliding with geometry\n", 0)
        AISpec.AddGraphWarning("WARNING: " .. name .. " (" .. typename .. ") seems to be colliding with geometry", pos.x, pos.y, pos.z)
      end
    end
  end
  if not err then
    Game.Log("OK: ALL AGENTS CAN USE NEARBY GRAPHS", 4)
    AISpec.AddGraphWarning("OK: ALL AGENTS CAN USE NEARBY GRAPHS", 0, 0, 0, false)
  end
end

function AISpecific.CreateAIToEnt(ent)
  if not ent then
    return
  end
  AISpec.CreateAI(ent.Name, 1, ent.ActCtrl)
end
