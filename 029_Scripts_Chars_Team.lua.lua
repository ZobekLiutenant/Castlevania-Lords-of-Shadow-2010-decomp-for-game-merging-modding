Team.FallWaypointTracerInitialStatus = {
  ["1_5_swamp"] = "1",
  ["2_2_enchanted_forest"] = "1",
  ["2_3_underground_cave"] = "1",
  ["2_4_labyrinth_entrance"] = "1",
  ["2_6_underground_dungeons"] = "1",
  ["2_7_labyrinth_ruins_ii"] = "1",
  ["2_8_dark_dungeon"] = "1",
  ["2_8_stone_idol_mausoleum"] = "1",
  ["3_0_the_gauntlet"] = "1",
  ["3_3_the_dark_lord"] = "1",
  ["4_1_fortress"] = "1",
  ["4_2_fortress_witch"] = "1",
  ["5_4_abbey_catacombs"] = "1",
  ["5_8_abbey_tower"] = "1",
  ["5_11_sewers"] = "1",
  ["6_1_courtyard"] = "1",
  ["6_1_courtyard_a"] = "1",
  ["6_5_refectory"] = "1",
  ["7_1_balcony"] = "1",
  ["7_3_chromatic_observatory"] = "1",
  ["7_3_chromatic_observatory_a"] = "1",
  ["8_1_tower_base"] = "1",
  ["8_2_the_tower"] = "1",
  ["9_1_bones_forest"] = "1",
  ["9_4_1_the_music_box"] = "1",
  ["10_1_marsh_of_silence"] = "1",
  ["10_3_cementery"] = "1",
  ["11_0_the_necromancer_abyss"] = "1"
}
if init then
  Game.CreateSaveVar(init.LevelName .. ".Spawn.Point", "0")
end
Game.Set("AdvancedTeamOrders", 1)
Team.AttackOrders = false

function Team.main()
  Team.MainChar = "Belmont"
  Team.Data = {
    PlayerTeam = {
      Belmont = {
        V3D(0, 0, 0),
        0
      }
    }
  }
  Team.DataOthers = {}
  Team.AreaManager = Game.GetAreaManager()
  Team.AreaManager.uData.Attacking = false
  Team.AreaManager.uData.LastFollowMain = true
  Team.AreaManager.uData.LastFollowSide = true
  Team.NumTeamMembers = 0
  Game.Set("ChangeCamEvent", "Team.OnChangeCamera")
end

function Team.CreateTeam()
  local t, team, name
  for team in pairs(Team.Data) do
    el = Game.CreateEntityList(team)
    el.OnDeath = "Team.OnDeath"
  end
  if Team.Data.PlayerTeam == nil then
    Game.ConsoleError("Player team is not defined\n")
    return
  end
  if Team.MainChar == nil then
    Game.ConsoleError("Main char is not defined\n")
    return
  end
  if Team.Data.PlayerTeam[Team.MainChar] ~= nil then
    name = Team.MainChar
    t = Team.Data.PlayerTeam
    Team.CreateMainChar(name, name, t[name][1], t[name][2], "PlayerTeam")
    if name == "Belmont" then
      AISpec.CreateAI(name, 0, AISpec.GetBelmontNmBehavAI())
      AITeamList.InsertMember("PlayerTeam", "PLAYER_METATEAM", name)
      AIBelmont.Init()
    end
    local FWTS = Team.FallWaypointTracerInitialStatus[init.level_name]
    if FWTS == nil then
      FWTS = "0"
    end
    Game.CreateSaveVar(init.LevelName .. ".FallWaypointTracer", FWTS)
    if Game.GetSaveVar(init.LevelName .. ".FallWaypointTracer") ~= "0" then
      Team.SetFallWaypointTracer(true)
    end
  else
    Game.ConsoleError("Player team has no main char\n")
    return
  end
end

function Team.CreateMainChar(Name, Descriptor, Pos, Angle, team)
  local pos, cam, o, ang, firstchar
  pos = Pos
  ang = V3D(0, Angle, 0)
  cam, firstchar = Camera.CreateMainCam()
  if firstchar then
    Input.SetActionSet("Walk")
  end
  o = Game.CreateEntity(Name, "WalkChar", pos)
  if init.DefaultSoldier == nil then
    o.ActCtrl = Name
  else
    o.ActCtrl = init.DefaultSoldier
  end
  o.Ang = ang
  o.TgType = "Green"
  o.Descriptor = Descriptor
  o.EntityList = team
  if firstchar then
    o.UsrControl = 0
    cam.MainTarget = o.Name
    cam.Target = o.Name
  end
  o.InCtrl_ForceCenterCameraVal = 1
  Game.SetTriggeredEntity(Team.NumTeamMembers, o)
  Team.NumTeamMembers = Team.NumTeamMembers + 1
end

Team.bSaveStatus = false

function Team.CheckInitSectors()
end

Team.GameOverValue = false

function Team.OnDeath(EntityName, AttackerName)
  if not Team.GameOverValue then
    Team.GameOver()
  end
end

function Team.isGameOver()
  return Team.GameOverValue
end

Team.PlayingTime = Game.GVar("TimePlaying")
Team.DeathFocusString = "0.1,2s,600,40,NOTHING,0"

function Team.GameOver()
  if Game.Rand(-1, 1) > 0 then
    Sound.SetMusic("music/35_Death of Grabiel.ogg", 1)
  else
    Sound.SetMusic("music/32_Game Over.ogg", 1)
  end
  Game.Set("S_PauseMusicVolume", 1)
  Sound.SetMusicLoopCount(0)
  Sound.PauseMusic(false)
  Scorer.AddScheduledFunc(0, 9, "", "Menu.PlayMenuMusic", 1)
  Team.GameOverValue = true
  Weapons.ResetTimeblend()
  Input.SetActionSet("Null")
  Game.Set("EscapeEvent", "")
  Scorer.Fade(0, Color(255, 0, 0, 0), Color(0, 0, 0, 255), 3)
  if Team.DeathFocusString then
    Camera.ActionSetFocus(player.Name, Team.DeathFocusString)
  end
  Team.DeathFocusString = "0.1,2s,600,40,NOTHING,0"
  Tips.OnDeath()
  Game.Set("AfterDrawCallback", "Team.PreGameOverFade")
  if DebugTrack then
    DebugTrack.SaveHistory("Dead")
  end
end

function Team.PreGameOverFade()
  Game.SetTimeSpeed(0.05)
  Game.AddScheduledFunc(Game.GetTime() + 0.1, "GameOver", "Team.GameOverFade")
end

function Team.GameOverFade()
  Game.Set("AfterDrawCallback", "Menu.Init")
  Game.SetTimeSpeed(1)
  Game.GetMenu():NeedRender()
  Scorer.Fade(0, Color(0, 0, 0, 0), Color(0, 0, 0, 0), 0)
end

function Team.GameOverNow()
  Team.GameOverValue = true
  Menu.Init()
end

function Team.ReviveAll(nPlayers)
end

function Team.PlayerFallDeath(skipanim)
  local player = Game.UsrEntity(0)
  if player.Invulnerable ~= 1 then
    Weapons.ResetTimeblend()
    if type(skipanim) == "string" or not skipanim then
      player.ExtraSufix = "Whip"
      if type(skipanim) == "string" then
        player.oActCtrl:SetAction(skipanim, true, 0.2)
      else
        player.oActCtrl:SetAction("WhipFallDeath", true, 2.5)
      end
    end
    if Team.isFallSafe() then
      player.TimeToCheckClimb = 0.5
      Team.FallWaypointRestore()
      if Trials.isTrial and init.LevelName == "level.9_4_1_the_music_box" then
        MapTrial.TrialFail()
      end
      if init.LevelName == "level.9_4_1_the_music_box" then
        addSF(1, "", "BoxMusic.PlayVoice")
      end
      return false
    else
      addSF(0.2, "", "Team.GameOver")
      return true
    end
  end
  return false
end

function Team.GetFallDamage()
  return player.oActCtrl.oActClass.Life * Game.Get("ScorerPlayerLifeBlinkPercent")
end

function Team.isFallSafe()
  return Team.FallWaypoints and #Team.FallWaypoints > 0 and player.Life > Team.GetFallDamage() * SkillSettings[Game.Get("GameSkill")].Damage + 1
end

Team.InstantReCall = false

function Team.FallWaypointRestore()
  print("Restore")
  if not Team.InstantReCall then
    Game.SetTimeSpeed(0.05)
    FXDamage.FXDead()
    Scorer.Fade(0, Color(255, 255, 255, 255), Color(255, 0, 0, 0), 1)
    if Team.DeathFocusString then
      Camera.ActionSetFocus(player.Name, Team.DeathFocusString)
    end
    Team.DeathFocusString = "0.1,2s,600,40,NOTHING,0"
    track_tag("FallBack")
    Game.DeleteScheduledFuncs("FallWaypointTracer")
    Game.AddScheduledFunc(Game.GetTime() + 1, "FallWaypointTracer", "Team.FallWaypointTracer")
    Game.AddScheduledFunc(Game.GetTime() + 0.13, "FallWaypointRestoreNow", "Team.FallWaypointRestoreNow")
  end
  local caller = Game.Split(Game.Get("CalledFromTrigger"), ",")
  if #caller == 3 then
    Game.GetEntity(caller[2])[caller[1]] = caller[3]
  end
  player.Invulnerable = 1
  if Team.InstantReCall then
    Team.FallWaypointRestoreNow()
  end
end

function Team.FallWaypointRestoreNow()
  print("Restore Now")
  local player = Game.UsrEntity(0)
  local wp = Team.FallWaypoints[#Team.FallWaypoints]
  player.Pos = wp[2]
  player.Ang = V3D(0, wp[3], 0)
  player.isFalling = wp[4]
  player.ExtraSufix = ""
  player.oActCtrl:SetAction(wp[1], true, 0)
  if player.uData.InitialJustYModelDisp then
    player.JustYModelDisp = player.uData.InitialJustYModelDisp
  end
  player.iLastStepSurface = 0
  player:UpdateLastStepSurface()
  player.DefLoop = wp[1]
  Scorer.Fade(0, Color(0, 0, 0, 255), Color(0, 0, 0, 0), 1)
  Game.Set("CameraFixFocus", 0)
  Game.SetTimeSpeed(1)
  player.oPlatformLinker.oPlatform = nil
  if wp[1] == "Hang" or wp[1] == "HangWall" then
    local res, Ang, px, py, pz = player:ClimbCheck()
    if res then
      player.Pos = V3D(px, py, pz)
      player.Ang = V3D(0, Ang, 0)
    else
      Team.FallWaypoints[#Team.FallWaypoints] = nil
      if #Team.FallWaypoints == 0 then
        player.Life = 0
      else
        Team.FallWaypointRestoreNow()
        return
      end
    end
  elseif wp[1] == "Hook" then
    player.ForceDefLoop = "WhipRelax"
    player.ForceAction = "WhipRelax"
    player.ExtraSufix = "Whip"
    player.bIsFalling = false
    local f = Game.Split(wp[6].UseFunc, ".")
    local lastfunc = Team.FallWaypointHook
    
    function Team.FallWaypointHook(a, b, c, d, e)
    end
    
    _G[f[1]][f[2]](player, wp[6])
    Team.FallWaypointHook = lastfunc
    Scorer.Fade(0, Color(0, 0, 0, 255), Color(0, 0, 0, 255), 0.5)
    addSF(0.5, "", "Team.HookFadeOut")
  end
  player.Invulnerable = 0
  local damage = math.floor(Team.GetFallDamage())
  Weapons.DoDamage(nil, player, {
    Damage = damage,
    Reaction = 3,
    Unblockable = 1
  })
  local Fixcam = Game.GetEntity(Game.GetCam(0))
  if Fixcam and wp[5] then
    Fixcam.FixedCam = wp[5]
  end
  FXDamage.FXDeadOff()
  MissionUtils.RestoreBlocks()
  Weapons.FlashDamage(player, 2, "oooos", Color(128, 0, 0, 128))
  player.TimeToCheckClimb = 0
end

function Team.HookFadeOut()
  Scorer.Fade(0, Color(0, 0, 0, 255), Color(0, 0, 0, 0), 1)
end

function Team.FallWaypointRender()
  local t = Game.GetTime()
  for i = 1, #Team.FallWaypoints do
    local wp = Team.FallWaypoints[i]
    if wp[1] == "Hang" then
      DebugDraw.DrawSphere(wp[2], 70, Color(0, 0, 255, 255))
    elseif wp[1] == "HangWall" then
      DebugDraw.DrawSphere(wp[2], 70, Color(0, 128, 255, 255))
    elseif wp[1] == "Relax" then
      DebugDraw.DrawSphere(wp[2], 70, Color(0, 255, 0, 255))
    elseif wp[1] == "Hook" then
      DebugDraw.DrawSphere(wp[2], 70, Color(255, 255, 0, 255))
      DebugDraw.DrawLink(wp[2], wp[6].Pos, false, false, Color(255, 255, 0, 255), Color(255, 255, 0, 255))
    else
      DebugDraw.DrawSphere(wp[2], 70, Color(255, 0, 0, 255))
    end
  end
end

function Team.FallWaypointHook(HookPoint)
  if Team.FallWaypoints == nil then
    return
  end
  local n = #Team.FallWaypoints
  while 10 < n do
    table.remove(Team.FallWaypoints, 1)
    n = #Team.FallWaypoints
  end
  local Fixcam = Game.GetEntity(Game.GetCam(0))
  if Fixcam then
    Fixcam = Fixcam.FixedCam
  else
    return
  end
  Team.FallWaypoints[n + 1] = {
    "Hook",
    player.Pos,
    player.Ang.y,
    0,
    Fixcam,
    HookPoint
  }
end

function Team.FallWaypointTracer()
  local player = Game.UsrEntity(0)
  Game.AddScheduledFunc(Game.GetTime() + 0.5, "FallWaypointTracer", "Team.FallWaypointTracer")
  if player and player.bActive then
    local p = player.Pos
    local n = #Team.FallWaypoints
    if 10 < n then
      table.remove(Team.FallWaypoints, 1)
      n = #Team.FallWaypoints
    end
    local prev = Team.FallWaypoints[n]
    if prev and (prev[2] - p):mod() < 100 then
      return
    end
    local Fixcam = Game.GetEntity(Game.GetCam(0))
    if Fixcam then
      Fixcam = Fixcam.FixedCam
    else
      return
    end
    if not player.bIsFalling then
      local res, onfloor, dyn, ent = player:TestCharPos(player.Pos)
      if res and onfloor and not dyn and ent == nil then
        local surf = player.iLastStepSurface
        if surf ~= 20 and surf ~= 21 and surf ~= 5 and surf ~= 18 then
          Team.FallWaypoints[n + 1] = {
            "Relax",
            p,
            player.Ang.y,
            0,
            Fixcam
          }
        end
      end
    else
      local act = player.Action
      local isHW = string.sub(player.Action, 1, 8) == "HangWall"
      local isH = not isHW and string.sub(player.Action, 1, 4) == "Hang"
      if isHW or isH then
        local res, Ang, px, py, pz = player:ClimbCheck()
        if isHW then
          act = "HangWall"
        end
        if isH then
          act = "Hang"
        end
        if res then
          Team.FallWaypoints[n + 1] = {
            act,
            V3D(px, py, pz),
            Ang,
            1,
            Fixcam
          }
        end
      end
    end
  end
end

function Team.CleanWaypointTracer()
  Team.FallWaypoints = {}
end

function Team.SetFallWaypointTracer(Status)
  Game.DeleteScheduledFuncs("FallWaypointTracer")
  if Status then
    Team.FallWaypoints = {}
    Team.FallWaypointTracer()
    Game.SetSaveVar(init.LevelName .. ".FallWaypointTracer", "1")
  else
    Game.SetSaveVar(init.LevelName .. ".FallWaypointTracer", "0")
    Team.FallWaypoints = nil
  end
end

function Team.EntityFallDeath(Entity)
  Entity.Life = 0
  Entity.bCheckOnTrigger = false
end

Team.UnavaliablePlayers = {}

function Team.IsPlayerAvaliable(Nam)
  if Team.UnavaliablePlayers[Nam] then
    return false
  end
  char = Game.GetEntity(Nam)
  return char ~= nil and char.Life > 0 and char.bActive
end

function Team.IsPlayerDead(Nam)
  char = Game.GetEntity(Nam)
  return char ~= nil and char.Life <= 0 and char.bActive
end

function Team.IsTeamAvaliable(A)
  local i, char
  for i = 1, table.getn(A) do
    if Team.IsPlayerAvaliable(A[i]) then
      return true
    end
  end
  return false
end

function Team.CleanSelection(e, idvar)
  e[idvar .. "Text"] = ""
  e[idvar .. "Data"] = ""
  e[idvar .. "Icon"] = 0
  e[idvar .. "OnSelect"] = ""
  e[idvar .. "Selected"] = 0
  e[idvar .. "Gauge"] = 0
end

function Team.ResetUsrAnim(t)
  t = defparam(t, Game.UsrEntity(0))
  t.ForceAction = "Relax"
  t.ForceDefLoop = "Relax"
  t.owc.Crouch = 0
  t.oWeapCtrl.ZoomLevel = 0
  if t.bMoveActive then
    t.MoveTime = 0.2
  end
end

function Team.isMainHold()
end

function Team.isSecondHold()
end

function Team.FollowMeMain()
end

function Team.HoldPosSide()
end

function Team.StartCombat()
end

function Team.EndCombat()
end

function Team.EnemyDetected(usr, tgt)
end

function Team.GetAssignedEntities(Obj)
  local hlpr, E1
  hlpr = Obj.oFirstHelper
  Obj.uData.E1 = nil
  Obj.uData.E2 = nil
  Obj.uData.E3 = nil
  if hlpr ~= nil and hlpr.oUsrLink ~= nil then
    Obj.uData.E1 = hlpr.oUsrLink.oEntity
  end
  hlpr = hlpr.oNextOwned
  if hlpr ~= nil and hlpr.oUsrLink ~= nil then
    Obj.uData.E2 = hlpr.oUsrLink.oEntity
  end
  hlpr = hlpr.oNextOwned
  if hlpr ~= nil and hlpr.oUsrLink ~= nil then
    Obj.uData.E3 = hlpr.oUsrLink.oEntity
  end
end

function Team.GetAssignedEntity(Obj)
  local hlpr, E1
  hlpr = Obj.oFirstHelper
  while hlpr ~= nil do
    if hlpr.oUsrLink ~= nil and hlpr.oUsrLink.oEntity then
      return hlpr.oUsrLink.oEntity
    end
    hlpr = hlpr.oNextOwned
  end
end

function Team.InPosition(Obj)
  local tam = Team.AreaManager
  local E1 = Team.GetAssignedEntity(Obj)
  Team.GetAssignedEntities(Obj)
  if tam:isSecondTeam(E1) then
    if Obj.uData.Ready and tam.oSecondTarget.Name == Obj.Name then
      Obj.uData.UseFunc(Obj)
      tam.oSecondTarget = nil
      tam.bSecondReady = false
    else
      tam.oSecondTarget = Obj
      tam.bSecondReady = true
    end
  elseif tam:isMainTeam(E1) then
    if Obj.uData.Ready and tam.oMainTarget.Name == Obj.Name then
      Obj.uData.UseFunc(Obj)
      tam.oMainTarget = nil
      tam.bMainReady = false
    else
      tam.oMainTarget = Obj
      tam.bMainReady = true
    end
  end
end

function Team.ResetCharacterTeam(E1)
  local tam = Team.AreaManager
  if tam:isSecondTeam(E1) then
    tam.oSecondTarget = nil
    tam.bSecondReady = false
  elseif tam:isMainTeam(E1) then
    tam.oMainTarget = nil
    tam.bMainReady = false
  end
end

function Team.AbandonObject(Obj)
end

function Team.GotToObjectSecond(Obj)
end

function Team.GotToObjectMain(Obj)
end

function Team.TeamAlive()
  local namesToCheck = {"Belmont"}
  for i = 1, #namesToCheck do
    if Team.IsPlayerDead(namesToCheck[i]) then
      return false
    end
  end
  return true
end

function Team.SoftReequip(Ply, idWeap)
end

function Team.Reequip()
end

function Team.SetMaxAmmo()
end

function Team.OnChangeCamera(name)
end

function Team.TravelCam(F, T)
  local cam = Game.CreateEntity("Cameraman", "CamPath")
  local accam = Game.GetEntity(Game.GetCam(0))
  Game.DeleteScheduledFuncs("Ross_Enters")
  if cam:CreatePathAI(F.WeaponPos, V3D(0, F.ViewAng.y + 180, 0), T.WeaponPos, V3D(0, T.ViewAng.y + 180, 0), 2.5E-6) then
    Game.SetCam(0, cam.Name)
    cam.OnEnd = "Team.EndTravelCam"
    Team.TargetCamName = T.Name
    Game.SetTimeSpeed(0.005)
    EffectsFrame.Travel_Ini()
    Game.Set("DrawNextFrame", 1)
    Input.SetActionSet("Inactive")
    Scorer.Hide(0)
    Sound.Play("BeginSwitch", 0.5)
    Game.AddScheduledFunc(Game.GetTime(), "Init2DLoop", "SoundUtils.Init2DLoop")
  else
    EffectsFrame.Travel_Quick()
    cam:Del()
    accam.MainTarget = T.Name
    accam.Target = T.Name
    Input.SetActionSet("Walk")
  end
end

function Team.EndTravelCam(Camname)
  local cam = Game.GetEntity(Camname)
  local accam = Game.GetEntity("MainCam")
  cam:Del()
  Game.SetCam(0, accam.Name)
  Game.SetTimeSpeed(1)
  EffectsFrame.Travel_End()
  accam.MainTarget = Team.TargetCamName
  accam.Target = Team.TargetCamName
  Input.SetActionSet("Walk")
  Scorer.Show(0)
  Sound.Play("EndSwitch", 0.5)
  SoundUtils.End2DLoop()
  if Team.EndSwitchCallback then
    Team.EndSwitchCallback()
  end
end

function Team.CreateSingleMoveHelper(a)
  local h = Team.AreaManager.oNewHelper
  for j in pairs(a) do
    h[a[j][1]] = a[j][2]
  end
  return h
end

function Team.CreateMapMoveHelpers()
  Team.ListOfMapMoveHelpers = {}
  for i in pairs(MapMoveHelpers.Positions) do
    local h = Team.CreateSingleMoveHelper(MapMoveHelpers.Positions[i])
    Team.ListOfMapMoveHelpers[i] = h
  end
  if MapMoveHelpers.Links ~= nil then
    for i = 1, #MapMoveHelpers.Links do
      local a = MapMoveHelpers.Links[i]
      Team.ListOfMapMoveHelpers[a[1]].oNextPatrolPoint = Team.ListOfMapMoveHelpers[a[2]]
    end
  end
end

function Team.GetSavedSpawnPlayerPoint()
  return math.floor(Game.GetSaveVar(init.LevelName .. ".Spawn.Point"))
end

function Team.CreateMapSpawnPlayers()
  local idPos = Team.GetSavedSpawnPlayerPoint()
  local id
  if Game.Get("ToolMode") == 1 then
    for i = 1, #MapSpawnPlayers.Positions do
      local e = MapSpawnPlayers.Positions[i][2]
      if e ~= nil and e[2] == -1 then
        id = i
        idPos = -1
      end
    end
  end
  if id == nil then
    for i = 1, #MapSpawnPlayers.Positions do
      local e = MapSpawnPlayers.Positions[i][2]
      if e ~= nil and e[2] == idPos then
        id = i
      end
    end
  end
  local posiz = MapSpawnPlayers.Positions[id]
  local playerTeam = Team.Data.PlayerTeam
  if playerTeam and posiz and posiz[3][2] then
    playerTeam.Belmont = {
      posiz[4][2],
      posiz[5][2]
    }
  end
end

function Team.SwitchLauraAI(iActivate)
  if Laura then
    local ent = Game.GetEntity(Laura.EntityName)
    if ent then
      ent.Active = iActivate
    end
  end
end

function Team.ControlLaura(pos, ang)
  Team.SwitchLauraAI(0)
  pos = defparam(pos, Game.UsrEntity().Pos + V3D(0, 100, 0))
  local e = Game.CreateEntity("LauraPlayer", "WalkChar", pos)
  e.ActCtrl = "Laura"
  player.EntityList = ""
  e.EntityList = "PlayerTeam"
  if ang then
    e.Ang = V3D(0, ang, 0)
  end
  Game.SetTriggeredEntity(0, e)
  Game.Set("PlayerCharName", e.Name)
  Game.Set("LauraShowScorer", true)
  player = e
  Actions.control(e.Name)
  e:SetCollisionEnvironment(true, true, false)
  Game.Set("LauraLifeIncrInterpolation", false)
  addSF(1, "Team.RestoreLauraScorerInterpolation", "Team.RestoreLauraScorerInterpolation")
end

function Team.ControlGabriel()
  if player.ActCtrl == "Laura" then
    player:SetCollisionEnvironment(true, false, true)
    player:Del()
    Team.SwitchLauraAI(1)
  end
  e = Game.GetEntity("Belmont")
  player.EntityList = ""
  e.EntityList = "PlayerTeam"
  Game.SetTriggeredEntity(0, e)
  Game.Set("PlayerCharName", e.Name)
  player = e
  Actions.control(e.Name)
end

function Team.RestoreLauraScorerInterpolation()
  Game.Set("LauraLifeIncrInterpolation", true)
end
