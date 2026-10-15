function AreaTriggers.main()
end

if init and init.PreloadMethods then
  function init.PreloadMethods.MapAreaSound()
    local fileName = Game.GetLevelPath() .. "/Scripts/MapAreaSound"
    
    local st = Game.GetSingleTable()
    st.SourceFile = fileName .. ".lua"
    st.TargetFile = fileName .. ".lbt"
    if st.bPrecompile then
      Game.PreloadLibrary(st.SourceFile, "MapAreaSound")
      st:OpenFileOut()
      for i = 1, #MapAreaSound.Areas do
        MissionUtils.WriteLuaElement(st, MapAreaSound.Areas[i])
      end
      st:CloseFileOut()
    else
      st:Open()
      while st.NextType ~= "exit" do
        local h = Game.CreateEntity("AreaTrigger", "Trigger")
        st:ReadObject(h)
        SaveGame.SaveLocalEntityValue(h.Name, {
          "OnEnter",
          "OnExit",
          "OnAllInside",
          "OnCameraView",
          "ExtraData",
          "bActive",
          "FixedCam",
          "OnEntityInside"
        })
      end
      st:Close()
    end
  end
  
  function init.PreloadMethods.MapAreaTriggers()
    local fileName = Game.GetLevelPath() .. "/Scripts/MapAreaTriggers"
    local st = Game.GetSingleTable()
    local SourceFile = fileName .. ".lua"
    st.TargetFile = fileName .. ".lbt"
    st.SourceFile = SourceFile .. "," .. fileName .. "AI.lua," .. fileName .. "Camera.lua," .. fileName .. "Logic.lua," .. fileName .. "Scenes.lua"
    if st.bPrecompile then
      Game.PreloadLibrary(SourceFile, "MapAreaTriggers")
      st:OpenFileOut()
      for i = 1, #MapAreaTriggers.Areas do
        MissionUtils.WriteLuaElement(st, MapAreaTriggers.Areas[i])
      end
      st:CloseFileOut()
    else
      st:Open()
      while st.NextType ~= "exit" do
        local h = Game.CreateEntity("AreaTrigger", "Trigger")
        st:ReadObject(h)
        SaveGame.SaveLocalEntityValue(h.Name, {
          "OnEnter",
          "OnExit",
          "OnAllInside",
          "OnCameraView",
          "ExtraData",
          "bActive",
          "FixedCam",
          "OnEntityInside"
        })
      end
      st:Close()
    end
  end
end

function AreaTriggers.CreateSingleAreaTeam(a)
  local h = Game.CreateEntity("AreaTeam", "Area")
  AreaTriggers.FillSingleAreaTeam(h, a)
  return h
end

function AreaTriggers.FillSingleAreaTeam(h, a)
  for j in pairs(a) do
    h[a[j][1]] = a[j][2]
  end
  return h
end

function AreaTriggers.CreateAreaTeam()
  local doit = Game.Get("ToolMode") == 1
  AreaTriggers.ListOfAreaTeam = {}
  for i = 1, #MapAreaTeam.Areas do
    local h = AreaTriggers.CreateSingleAreaTeam(MapAreaTeam.Areas[i])
    AreaTriggers.ListOfAreaTeam[i] = h
  end
  for i = 1, #MapAreaTeam.Areas do
    AreaTriggers.FillSingleAreaTeam(AreaTriggers.ListOfAreaTeam[i], MapAreaTeam.Areas[i])
  end
  if not doit then
    AreaTriggers.ListOfAreaTeam = nil
  end
end

function AreaTriggers.CreateSingleAreaTrigger(a)
  local h = Game.CreateEntity("AreaTrigger", "Trigger")
  for j in pairs(a) do
    h[a[j][1]] = a[j][2]
  end
  SaveGame.SaveLocalEntityValue(h.Name, {
    "OnEnter",
    "OnExit",
    "OnAllInside",
    "OnCameraView",
    "ExtraData",
    "bActive",
    "FixedCam",
    "OnEntityInside"
  })
  return h
end

function AreaTriggers.AddToAreaTriggers(Array)
  for i = 1, #Array do
    MapAreaTriggers.Areas[#MapAreaTriggers.Areas + 1] = Array[i]
  end
end

function AreaTriggers.CreateAreaTriggers()
  local doit = Game.Get("ToolMode") == 1
  if doit then
    AreaTriggers.ListOfAreaTriggers = {}
  end
  for i = 1, #MapAreaTriggers.Areas do
    local h = AreaTriggers.CreateSingleAreaTrigger(MapAreaTriggers.Areas[i])
    if doit then
      AreaTriggers.ListOfAreaTriggers[i] = h
    end
  end
end

function AreaTriggers.CreateSingleAreaSound(a)
  local h = Game.CreateEntity("AreaSound", "Trigger")
  for j in pairs(a) do
    h[a[j][1]] = a[j][2]
  end
  return h
end

function AreaTriggers.CreateAreaSound()
  local doit = Game.Get("ToolMode") == 1
  if doit then
    AreaTriggers.ListOfAreaSound = {}
  end
  for i = 1, #MapAreaSound.Areas do
    local h = AreaTriggers.CreateSingleAreaTrigger(MapAreaSound.Areas[i])
    if doit then
      AreaTriggers.ListOfAreaSound[i] = h
    end
  end
end

function AreaTriggers.IsPlayer(id, Name)
  local Nam = Game.GetTriggeredEntity(id)
  if Name == nil or Nam == Name then
    return Game.GetEntity(Nam).UsrControl == 0
  end
  return false
end

AreaTriggers.PunishLink = {}

function AreaTriggers.AttackPunishTeam(GroupName, PunishGroupName)
  if AreaTriggers.PunishLink[GroupName] == nil and AreaTriggers.PunishLink[PunishGroupName] == nil then
    local thisen = Game.GetEntityList(GroupName)
    local punish = Game.GetEntityList(PunishGroupName)
    NPC.ActivateEnemyGroup(PunishGroupName)
    AreaTriggers.PunishLink[GroupName] = {
      Other = punish,
      OnAllDeath = thisen.OnAllDeath
    }
    AreaTriggers.PunishLink[PunishGroupName] = {
      Other = thisen,
      OnAllDeath = thisen.OnAllDeath
    }
    punish.OnAllDeath = "AreaTriggers.PunishAllDeath"
    thisen.OnAllDeath = "AreaTriggers.PunishAllDeath"
  else
    Game.ConsoleError("ERROR : AreaTriggers.AttackPunishTeam('" .. GroupName .. "','" .. PunishGroupName .. ")\n")
  end
end

function AreaTriggers.PunishAllDeath(GroupName)
  local a = AreaTriggers.PunishLink[GroupName]
  a.Other.OnAllDeath = a.OnAllDeath
end

function AreaTriggers.EnterFireArea(TriggerName, Playerid, ExtraData)
  local usr = Game.GetEntity(Game.GetTriggeredEntity(Playerid))
  AreaTriggers.StartSoloMision()
  if usr.Name ~= "Delgado" then
    Input.SetActionSet("Inactive")
    Game.AddScheduledFunc(Game.GetTime() + 0.5, "PlayerBurnOnFire", "AreaTriggers.PlayerBurnOnFire")
  else
    Game.AddScheduledFunc(Game.GetTime() + 0.5, "DelgadoBurnDamage", "AreaTriggers.DelgadoBurnDamage", TriggerName)
  end
end

function AreaTriggers.PlayerBurnOnFire()
  local usr = Game.UsrEntity(0)
  usr.Life = 0
end

function AreaTriggers.ExitFireArea(TriggerName, Playerid, ExtraData)
  Game.DeleteScheduledFuncs("DelgadoBurnDamage")
end

AreaTriggers.FireAreaDamage = 15

function AreaTriggers.DelgadoBurnDamage(TriggerName)
  local usr = Game.GetEntity("Delgado")
  if not usr.uData.bProtection then
    usr.Life = usr.Life - AreaTriggers.FireAreaDamage
  end
  Game.DeleteScheduledFuncs("DelgadoBurnDamage")
  Game.AddScheduledFunc(Game.GetTime() + 0.5, "DelgadoBurnDamage", "AreaTriggers.DelgadoBurnDamage", TriggerName)
end

function AreaTriggers.EndSoloMision()
  AreaTriggers.SoloMision = false
end

function AreaTriggers.StartSoloMision()
  AreaTriggers.SoloMision = true
end

function AreaTriggers.SetTeamsThere(Poz)
  Team.AreaManager:SetSecond(Poz.x, Poz.y, Poz.z)
  Team.AreaManager:SetActual(Poz.x, Poz.y, Poz.z)
end

function AreaTriggers.SetupPulser(hlp)
  local trig = Game.CreateEntity(hlp.Name .. "_Help", "Trigger")
  hlp.uData.Trigg = trig
  trig.uData.Pulse = hlp
  hlp.uData.Pulsed = false
  local enter = true
  local nodeSize3D = Game.Get("BatchBuildGraph3DAI")
  local nodeSize2D = Game.Get("BatchBuildGraph2DAI")
  local viewerIniAI = Game.Get("ViewerIniAI") ~= 0
  if 0 < nodeSize3D or 0 < nodeSize2D or viewerIniAI then
    enter = false
  end
  if enter and hlp.uData.OnPulse and hlp.uData.OnPulse ~= "" then
    local a = Game.Split(hlp.uData.OnPulse, ".")
    local f = _G
    for i = 1, #a do
      f = f[a[i]]
    end
    hlp.uData.OnPulse = f
  end
  trig.nBoxes = 1
  trig.Box00Dim = V3D(75, 130, 75)
  trig.Box00Pos = hlp.Pos + V3D(0, 120, 0)
  trig.bClearOnExit = false
  trig.bClearOnEnter = false
  trig.OnEnter = "AreaTriggers.OnEnterPluser"
  trig.OnExit = "AreaTriggers.OnExitPluser"
end

function AreaTriggers.OnEnterPluser(TriggerName, Playerid, ExtraData)
  local trig = Game.GetEntity(TriggerName)
  local pulse = trig.uData.Pulse
  if pulse.uData.Working then
    pulse.Action = "Close"
    pulse.DefLoop = "Closed"
    pulse.uData.Pulsed = true
    if pulse.uData.OnPulse then
      Game.ConsoleError("pulsator = " .. pulse.Name .. "\n")
      pulse.uData.OnPulse(pulse)
    end
  end
end

function AreaTriggers.OnExitPluser(TriggerName, Playerid, ExtraData)
  local trig = Game.GetEntity(TriggerName)
  if not trig.bAnyPlayerInside then
    local pulse = trig.uData.Pulse
    if pulse.uData.Working then
      pulse.Action = "Open"
      pulse.DefLoop = "Opened"
      pulse.uData.Pulsed = false
    end
  end
end

function AreaTriggers.isPulsersActive(PulserList)
  for i = 1, #PulserList do
    if not Game.GetEntity(PulserList[i]).uData.Pulsed then
      return false
    end
  end
  for i = 1, #PulserList do
    local ent = Game.GetEntity(PulserList[i])
    ent.uData.OnPulse = nil
    ent.uData.Working = false
    ent.Action = "Closed"
  end
  return true
end

function AreaTriggers.FadeAndMove(SectorName, TimeOff)
  local usr = Game.UsrEntity(0)
  if Input.SetActionSet("Walk") and usr and usr.Invulnerable == 0 and Game.GetTimeSpeed() > 0.9 then
    Scorer.Fade(0, Color(0, 0, 0, 0), Color(0, 0, 0, 255), 0.5)
    Game.AddScheduledFunc(Game.GetTime() + 0.5 + TimeOff, "jumper", "AreaTriggers.JumpPlayers", SectorName, Input.GetActionSet())
    Input.SetActionSet("Inactive")
    Scorer.Hide(0)
  else
    Game.AddScheduledFunc(Game.GetTime() + 0.5, "AreaTriggers.FadeAndMove", "AreaTriggers.FadeAndMove", SectorName, TimeOff)
  end
end

function AreaTriggers.JumpPlayers(SectorName, LastISet)
  Input.SetActionSet(LastISet)
  Scorer.Fade(0, Color(0, 0, 0, 255), Color(0, 0, 0, 0), 0.5)
  Team.ReviveAll()
  Scorer.Show(0)
  local sector = Game.GetEntity(SectorName)
  local hlpr = sector.oFirstHelper
  local membersName = {
    "Jones",
    "Cole",
    "Delgado",
    "Ross",
    "Church",
    "Rawlings",
    "Black"
  }
  for i = 1, #membersName do
    local e = Game.GetEntity(membersName[i])
    if e then
      if hlpr then
        e.ForceAction = "Relax"
        e.Pos = hlpr.Pos
        e.Ang = V3D(0, hlpr.Ang.y, 0)
        Game.SetOnFloor(e.Name)
        hlpr = hlpr.oNextTrigg
      else
        Game.ConsoleError("Error at AreaTriggers.JumpPlayers('" .. SectorName .. "'): Not enough helpers.\n")
      end
    end
  end
end

function AreaTriggers.OnEnterDamageTrigger(DPS, Effect)
  local EntityName = player.Name
  Game.Log("OnEnterDamageTrigger (" .. EntityName .. "," .. DPS .. ")\n", 2)
  AreaTriggers.EnterDamageTriggerTime = Game.GetTime()
  if not Effect or Effect == "Venom" then
    Belmont.FXVenomStart()
    AreaTriggers.VenomActive = true
    Game.Set("ScorerActive", 1)
  end
  AreaTriggers.TriggerDoDamage(EntityName, DPS)
end

function AreaTriggers.OnExitDamageTrigger()
  local EntityName = player.Name
  Game.Log("OnExitDamageTrigger (" .. EntityName .. ")\n", 2)
  delSF("DamageTrigger_" .. EntityName)
  if AreaTriggers.VenomActive then
    Belmont.FXVenomEnd()
    AreaTriggers.VenomActive = nil
  end
end

function AreaTriggers.TriggerDoDamage(EntityName, DPS)
  local time = Game.GetTime()
  if AreaTriggers.VenomActive and time < AreaTriggers.EnterDamageTriggerTime + 3 then
    Scorer.SetMsgText(Game.GetLangStr("Warning_Mud"), Game.GetTime() + 3)
  else
    local ent = Game.GetEntity(EntityName)
    ent.Life = ent.Life - DPS * 0.1
    if ent.Life <= 0 then
      ent.ForceAction = "StillDie"
    end
    if init.LevelName == "level.10_1_marsh_of_silence" and Trials.isTrial and MapTrial ~= nil then
      local damage = DPS * 0.1
      MapTrial.InsideDamageTrigger(damage)
    end
  end
  addSF(0.1, "DamageTrigger_" .. EntityName, "AreaTriggers.TriggerDoDamage", EntityName, DPS)
end
