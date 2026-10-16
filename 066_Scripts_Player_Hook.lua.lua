function Hook.Preload()
  FX.InitEffect("EFFECT_PARTICLES\183HOOK_DUMMY", 5, "FX/Hook/hook_dummy.ps.xml")
  
  FX.InitEffect("EFFECT_HOOKDUMMY\183HOOK_SIGHT_DUMMY", 5, "FX/Hook/hook_dummy2.ps.xml")
end

function Hook.main()
end

Hook.FallUsrMoveInactive = 0.5

function Hook.isGripUse(char)
  return char.AutoSelectedEntity ~= "" and char.SelectedEntity ~= char.AutoSelectedEntity and char.oAutoSelectedEntity.UseFunc ~= "" and char.oActCtrl.oAction.Group ~= "Hit" and char.oActCtrl.AnimPriority <= 10
end

function Hook.GripAction(EntityName)
  local char = Game.GetEntity(EntityName)
  if Hook.isGripUse(char) then
    char.oAutoSelectedEntity:UseMe(char)
  end
end

function Hook.SetAsGripAnm(ac, a, absmove)
  for i = 1, #a do
    local ani = ac:GetAct(a[i][1])
    ani.isWhip = 1
    ani.WhipWallCol = 0
    ani.WhipPrecissionHit = 1
    ani.Group = "Hook"
    if absmove then
      ani.AnimAbsMove = 1
    end
  end
end

function Hook.AddGripAnm(ac)
  local a = {
    {
      "HookPendGo45",
      5,
      1,
      "Hook.SlotPendGo",
      1
    },
    {
      "HookPendGoFw",
      5,
      1,
      "Hook.SlotPendGo",
      1
    },
    {
      "HookPendGoUp",
      5,
      1,
      "Hook.SlotPendGo",
      1
    },
    {
      "HookPendGo",
      5,
      1,
      "Hook.SlotPendGo",
      1
    },
    {
      "HookPendBack",
      5,
      1,
      "Hook.SlotPendGo",
      1
    },
    {
      "HookLinearUp",
      5,
      1,
      "Hook.SlotHookGo",
      1
    },
    {
      "HookLinearUpFall",
      5,
      1,
      "Hook.SlotHookGo",
      1
    },
    {
      "HookLinearUpFallRun",
      5,
      1,
      "Hook.SlotHookGo",
      1
    },
    {
      "HookLinear45",
      5,
      1,
      "Hook.SlotHookGo",
      1
    },
    {
      "HookLinear45Fall",
      5,
      1,
      "Hook.SlotHookGo",
      1
    },
    {
      "HookLinear45FallRun",
      5,
      1,
      "Hook.SlotHookGo",
      1
    },
    {
      "HookLinearFw",
      5,
      1,
      "Hook.SlotHookGo",
      1
    },
    {
      "HookLinearFwFall",
      5,
      1,
      "Hook.SlotHookGo",
      1
    },
    {
      "HookLinearFwFallRun",
      5,
      1,
      "Hook.SlotHookGo",
      1
    },
    {
      "HookLinearUpInit",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookLinearUpFallInit",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookLinearUpFallRunInit",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookLinear45Init",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookLinear45FallInit",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookLinear45FallRunInit",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookLinearFwInit",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookLinearFwFallInit",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookLinearFwFallRunInit",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookRappelUpInit",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookRappel45Init",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookRappelUpFallInit",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookRappel45FallInit",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookRappel45FallRunInit",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookRappelUpFallRunInit",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookRappelUpFallInitLeft",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookRappelUpFallInitRight",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookRappelUpInitLeft",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookRappelUpInitRight",
      5,
      0,
      "Hook.SlotHookGoInit",
      1
    },
    {
      "HookRappelInitInit",
      5,
      0,
      "Hook.SlotRappelJump",
      1
    },
    {
      "HookRappelInit",
      5,
      1,
      "Hook.SlotRappelJump",
      1
    },
    {
      "HookRappelInitLeft",
      5,
      1,
      "Hook.SlotRappelJump",
      1
    },
    {
      "HookRappelInitRight",
      5,
      1,
      "Hook.SlotRappelJump",
      1
    },
    {
      "HookRappelInitEnd",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelInitLeftEnd",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelInitRightEnd",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelLookDownInit",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelLookDown",
      5,
      1,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelLookDownEnd",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappel",
      5,
      1,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelRun",
      5,
      1,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelRunInit",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelRunEnd",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelBack",
      5,
      1,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelBackInit",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelBackEnd",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelLeft",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelLeft2",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelLeftEnd",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelLeftFar",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelLeftFarEnd",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelRight",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelRight2",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelRightFar",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelRightEnd",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    },
    {
      "HookRappelRightFarEnd",
      5,
      0,
      "Hook.SlotRappelRelax",
      1
    }
  }
  MakeChar.AddHangPlatformActions(ac, a)
  Hook.SetAsGripAnm(ac, a, false)
  for i = 1, #a do
    local anam = a[i]
    if anam[4] == "Hook.SlotHookGoInit" then
      ac:GetAct(anam[1]).UseAnmDispInFly = 0
    end
  end
  a = {
    {
      "HookLinearUpEnd",
      0,
      1
    },
    {
      "HookLinear45End",
      0,
      1
    },
    {
      "HookLinearFwEnd",
      0,
      1
    },
    {
      "HookRappelFall",
      0,
      1
    },
    {
      "HookRappelJump",
      0,
      1
    },
    {
      "HookRappelLeftJump",
      0,
      1
    },
    {
      "HookRappelRightJump",
      0,
      1
    }
  }
  MakeChar.AddFallActions(ac, a, 0, "")
  Hook.SetAsGripAnm(ac, a, true)
  ac:GetAct("HookRappelInitLeftEnd").InterpTime = 0.3
  ac:GetAct("HookRappelInitRightEnd").InterpTime = 0.3
  MakeChar.MakeEvent(ac, "HookRappelLeft", "HookRappelLeft", "Hook.RappelSideEvent")
  MakeChar.MakeEvent(ac, "HookRappelLeft2", "HookRappelLeft", "Hook.RappelSideEvent")
  MakeChar.MakeEvent(ac, "HookRappelLeftFar", "HookRappelLeftFar", "Hook.RappelSideEvent")
  MakeChar.MakeEvent(ac, "HookRappelRight", "HookRappelRight", "Hook.RappelSideEvent")
  MakeChar.MakeEvent(ac, "HookRappelRight2", "HookRappelRight", "Hook.RappelSideEvent")
  MakeChar.MakeEvent(ac, "HookRappelRightFar", "HookRappelRightFar", "Hook.RappelSideEvent")
  MakeChar.MakeEvent(ac, "HookRappelLeft", "HookRappelLeftEnd", "Hook.RappelSideEvent", 44)
  MakeChar.MakeEvent(ac, "HookRappelRight", "HookRappelRightEnd", "Hook.RappelSideEvent", 44)
  MakeChar.MakeEvent(ac, "HookRappelLeft2", "HookRappelLeftEnd", "Hook.RappelSideEvent", 40)
  MakeChar.MakeEvent(ac, "HookRappelRight2", "HookRappelRightEnd", "Hook.RappelSideEvent", 40)
  MakeChar.MakeEvent(ac, "HookRappelLeftFar", "HookRappelLeftFarEnd", "Hook.RappelSideEvent", 92)
  MakeChar.MakeEvent(ac, "HookRappelRightFar", "HookRappelRightFarEnd", "Hook.RappelSideEvent", 92)
  MakeChar.MakeEvent(ac, "HookRappelJump", " 180FallRun|FallRun", "!CharTurnAction")
  MakeChar.MakeEvent(ac, "HookRappelLeftJump", " 270FallRun|FallRun", "!CharTurnAction")
  MakeChar.MakeEvent(ac, "HookRappelRightJump", "  90FallRun|FallRun", "!CharTurnAction")
  Hook.LoadSpecific(ac)
end

function Hook.IsSpecificChar(Name)
  if init == nil then
    return false
  end
  for i = 1, #init.Enemies do
    if init.Enemies[i] == Name then
      return true
    end
  end
  return Game.Get("ToolMode") ~= 0
end

function Hook.LoadGripSpecific(ac, Name, LastFrame)
  local act, FirstFrame
  local a = {
    {
      Name,
      5,
      0
    }
  }
  MakeChar.AddHangPlatformActions(ac, a)
  Hook.SetAsGripAnm(ac, a, true)
  act = ac:GetAct(Name)
  LastFrame = defparam(LastFrame, act.LastFrame)
  FirstFrame = act.FirstFrame
  MakeChar.ActEvent(act, "", "Hook.OnEndOfHook", LastFrame, 0)
  MakeChar.ActEvent(act, "ResetDisp,0", "WeaponsCombo.PrivateSetIsFalling", LastFrame)
  for frame = FirstFrame, LastFrame - 1 do
    MakeChar.ActEvent(act, "CustomPos," .. tostring(LastFrame), "WeaponsCombo.PrivateSetIsFalling", frame)
  end
  return act
end

function Hook.SpecificGrip(char, parent, ActionName, FallPosFunction)
  char.SelectedEntity = parent.Name
  char.JumpCounter = 0
  char.TimeToCheckClimb = 0.5
  char.oLineLinker.LineIdx = -1
  char.ForceAction = ActionName
  char.uData.CustomFallPos = FallPosFunction
  Hook.SetWhipTarget(char.Name)
  parent.bArrowCanUse = false
end

function Hook.LoadSpecific(ac)
  local act
  if Hook.IsSpecificChar("IceElemental") then
    act = Hook.LoadGripSpecific(ac, "FromRuneToBack")
    MakeChar.ActEvent(act, " 180HangWall|HangWall", "!CharTurnAction", act.LastFrame, 0)
  end
  if Hook.IsSpecificChar("StoneIdol") then
    act = Hook.LoadGripSpecific(ac, "HangWallToStoneLeg", 34)
    MakeChar.ActEvent(act, "   0HangWall|HangWall", "!CharTurnAction", act.LastFrame, 0)
    local a = {
      {
        "WhipRockThrow",
        5,
        0,
        "StoneIdol.ReturnRock",
        1
      },
      {
        "WhipRockThrowFail",
        5,
        0,
        "StoneIdol.ReturnRockFail",
        1
      }
    }
    MakeChar.AddHangPlatformActions(ac, a)
    Hook.SetAsGripAnm(ac, a, false)
    act = ac:GetAct("WhipRockThrow")
    act.uData.Lock = 15
    act.uData.UnLock = 47
  end
  if Hook.IsSpecificChar("Dracolich") then
    local act
    local a = {
      {
        "HookLinearFwHangWallInit",
        5,
        0,
        "Hook.SlotHookGoInit",
        1
      }
    }
    MakeChar.AddHangPlatformActions(ac, a)
    Hook.SetAsGripAnm(ac, a, false)
  end
  if Hook.IsSpecificChar("Witch") then
    local a = {
      {
        "WhipEggThrow",
        5,
        0,
        "Witch.ReturnEgg",
        1
      },
      {
        "WhipEggThrowFail",
        5,
        0,
        "Witch.ReturnEggFail",
        1
      },
      {
        "WhipFallEggThrow",
        5,
        0,
        "Witch.ReturnEgg",
        1
      }
    }
    MakeChar.AddHangPlatformActions(ac, a)
    Hook.SetAsGripAnm(ac, a, false)
    act = ac:GetAct("WhipEggThrow")
    act.uData.Lock = 28
    act.uData.UnLock = 47
    act = ac:GetAct("WhipFallEggThrow")
    act.uData.Lock = 28
    act.uData.UnLock = 47
  end
end

function Hook.SetUp(o)
  o.OnAutoSelected = "Hook.OnAutoSelected"
  o.OnSelectedSight = "Hook.OnSelectedSight"
  o.CanUseFunc = "Hook.CanUseFunc"
  o.OnDebugDraw = "Hook.OnDebugDraw"
  o.uData.CanUse = true
end

function Hook.TriggerUse_SetUp(o)
  o.OnAutoSelected = "Hook.OnAutoSelected"
  o.OnSelectedSight = "Hook.OnSelectedSight"
end

function Hook.ObjectUse_SetUp(o)
  o.OnAutoSelected = "Hook.OnAutoSelected"
  o.OnSelectedSight = "Hook.OnSelectedSight"
  o.uData.EntityLink = o.Name
end

function Hook.GetDeltaLink(o)
  if o.uData.DeltaLink == nil then
    o.uData.DeltaLink = V3D(0, 0, 0)
  end
  return o.uData.DeltaLink:rot(o.Ang)
end

function Hook.OnDebugDraw(o)
  local dPos = o.Pos + Hook.GetDeltaLink(o)
  DebugDraw.DrawBox(dPos, o.Ang, V3D(10, 10, 10), Color(0, 255, 0, 255))
  if o.UseFunc == "Hook.LinearGrip" then
    Hook.LinearOnDebugDraw(o)
  elseif o.UseFunc == "Hook.PendGrip" then
    Hook.PendOnDebugDraw(o)
  elseif o.UseFunc == "Hook.RappelGrip" or o.UseFunc == "Hook.RappelNGrip" or o.UseFunc == "Hook.RappelSGrip" then
    Hook.RappelOnDebugDraw(o)
  end
end

function Hook.CanUseFunc(usr, o)
  if not o.uData.CanUse then
    return 0
  elseif o.uData.bUseOnFloor and usr.bIsFalling then
    return 0
  end
  if o.uData.UseTrigger and not o.uData.UseTrigger:IsPointInside(player.Pos) then
    return 0
  end
  if o.UseFunc == "Hook.LinearGrip" then
    return Hook.LinearCanUseFunc(usr, o)
  elseif o.UseFunc == "Hook.PendGrip" then
    return Hook.PendCanUseFunc(usr, o)
  elseif o.UseFunc == "Hook.RappelGrip" or o.UseFunc == "Hook.RappelNGrip" or o.UseFunc == "Hook.RappelSGrip" then
    return Hook.RappelCanUseFunc(usr, o)
  else
    return 1
  end
end

function Hook.isOnHook()
  return player.oActCtrl.oAction.Group == "Hook"
end

Hook.L_DistJump = 300
Hook.L_Accel = 5000
Hook.L_MSpeed = 2000
Hook.L_FSpeed = V3D(0, 600, -1000)
Hook.DrawFook = {
  V3D(0, 1, 0):rot(V3D(225, 0, 0)),
  V3D(0, -Hook.L_DistJump, 0):rot(V3D(0, 0, 0)),
  V3D(0, -Hook.L_DistJump, 0):rot(V3D(-20, 0, 0)),
  V3D(0, -Hook.L_DistJump, Hook.L_DistJump * 0.75),
  V3D(0, -Hook.L_DistJump * 1.5, Hook.L_DistJump * 0.75)
}

function Hook.LinearCanUseFunc(usr, o)
  local diff = usr.Pos - o.Pos
  if 0 > diff:rot(V3D(0, -o.Ang.y, 0)).z and diff:mod() > Hook.L_DistJump + 100 then
    return 1
  else
    return 0
  end
end

function Hook.LinearOnDebugDraw(o)
  local a = Hook.DrawFook
  for i = 1, #a - 1 do
    local v = a[i]
    if i == 1 then
      v = v * (o.ArrRadius + 50)
    end
    DebugDraw.DrawLink(o.Pos + v:rot(o.Ang), o.Pos + a[i + 1]:rot(o.Ang), false, true, Color(0, 255, 0, 255), Color(255, 255, 0, 255), 10, 40)
  end
end

function Hook.SetWhipTarget(charName)
  local char = Game.GetEntity(charName)
  char.oWhip.oTarget = char.oSelectedEntity
  char.oWhip.deltaHitPos = Hook.GetDeltaLink(char.oSelectedEntity)
end

function Hook.SetWhipTargetDelayed(char)
  Game.AddScheduledFunc(Game.GetTime() + 0.1, "Hook_SetWhipTarget", "Hook.SetWhipTarget", char.Name)
end

function Hook.CallOnInit(char, parent, cad, newcad)
  if parent.uData.CallOnInit then
    parent.uData.CallOnInit(char, parent, cad, newcad)
    parent.uData.CallOnInit = nil
  end
end

function Hook.LinearGrip(char, parent, cad, newcad)
  if char.oActCtrl.AnimPriority > 10 then
    return
  end
  Hook.SetWhipTargetDelayed(char)
  char.SelectedEntity = parent.Name
  Hook.CallOnInit(char, parent, cad, newcad)
  local sp = parent.uData.Specific
  local dPos = char.oSelectedEntity.Pos + Hook.GetDeltaLink(char.oSelectedEntity)
  local diff = char.Pos - dPos
  local icos = -diff:norm().y
  local locm
  if 0.89 < icos then
    locm = "Up"
  elseif 0.4 < icos then
    locm = "45"
  else
    locm = "Fw"
  end
  char.uData.EndInitial = "HookLinear" .. locm .. "End"
  char.uData.EndLoop = "FallRun"
  char.uData.bIsFalling = char.bIsFalling and char.oLineLinker.LineIdx == -1
  char.JumpCounter = 0
  char.TimeToCheckClimb = 0.5
  char.oLineLinker.LineIdx = -1
  char.uData.FixLink = true
  if char.uData.bIsFalling then
    local defloop = char.DefLoop
    if string.sub(defloop, #defloop - 2) == "Run" then
      char.Action = "HookLinear" .. locm .. "FallRunInit"
      char.DefLoop = "HookLinear" .. locm .. "FallRun"
    else
      char.Action = "HookLinear" .. locm .. "FallInit"
      char.DefLoop = "HookLinear" .. locm .. "Fall"
    end
    char.uData.HangVel = char.Vel
    char.uData.SrcAng = char.Ang.y
    char.uData.TgtAng = diff:getrot().y
    char.uData.bDrop = false
  else
    char.Action = "HookLinear" .. locm .. "Init"
    char.DefLoop = "HookLinear" .. locm
    char.SelectedEntity = parent.Name
    char.uData.HangVel = V3D(0, 0, 0)
    char.uData.SrcAng = char.Ang.y
    char.uData.TgtAng = diff:getrot().y
    char.uData.bDrop = false
    char.bIsFalling = true
  end
  if sp and sp.Init then
    char.Action = sp.Init
  end
  char.uData.HangVelTgY = -1000
  if char.oActCtrl.oAction.Group == "Hook" then
    char:SetNoneCollisionMask()
  end
  Team.FallWaypointHook(parent)
end

function Hook.SlotHookGoInit(o, SlotTime, Ipos)
  o:MarkPrevPos()
  if o.uData.bIsFalling then
    local ipos = Ipos
    local jpos = 1 - ipos
    local o_FloorDist = o.FloorDist
    local DestPos = Game.TestLine(o.Pos, o.Pos - V3D(0, o_FloorDist * 2, 0), "")
    if not DestPos then
      o.uData.LHangVel = o.uData.HangVel * jpos + V3D(0, o.uData.HangVelTgY * ipos, 0)
    else
      local DDiff = o.Pos.y - DestPos.y
      if o_FloorDist > DDiff then
        o.uData.LHangVel = V3D(0, 0, 0)
      else
        o.uData.LHangVel = o.uData.HangVel * jpos + V3D(0, o.uData.HangVelTgY * ipos, 0)
        o.uData.LHangVel = o.uData.LHangVel * (DDiff - o_FloorDist) / o_FloorDist
      end
    end
  else
    o.uData.LHangVel = V3D(0, 0, 0)
  end
  o.JustPos = o.JustPos + o.uData.LHangVel * SlotTime
  local liPos = Ipos * 4
  if 1 < liPos then
    liPos = 1
  end
  o.JustAng = V3D(0, o.uData.SrcAng + Game.NormAng(o.uData.TgtAng - o.uData.SrcAng) * liPos, 0)
  o.uData.DistWip = (o.oSelectedEntity.Pos - o.JustPos):mod()
  o.uData.oDistWip = o.uData.DistWip
  o.uData.HangSpeed = -2000
  o.uData.UpSpeed = 0
  o.uData.Wiff = o.JustPos - o.oSelectedEntity.Pos
  o.uData.Wiff = V2D(V2D(o.uData.Wiff.x, o.uData.Wiff.z):mod(), o.uData.Wiff.y)
  o.uData.oWiff = o.uData.Wiff
  o.uData.oJustAng = o.JustAng
  o.uData.oJustViewAng = o.JustViewAng
  local dist = o.Pos - o.oSelectedEntity.Pos
  if o.uData.FixLink then
    o.uData.TgtAng = dist:getrot().y
    o.uData.DistAng = nil
  else
    o.uData.TgtAng = Game.NormAng(o.oSelectedEntity.Ang.y + 180)
    o.uData.DistAng = dist:getrot().y
  end
  if string.sub(o.DefLoop, 1, 10) == "HookLinear" then
    local icos = -(o.Pos - (o.oSelectedEntity.Pos + Hook.GetDeltaLink(o.oSelectedEntity))):norm().y
    if 0.89 < icos then
      o.DefLoop = "HookLinearUp"
    elseif 0.4 < icos then
      o.DefLoop = "HookLinear45"
    else
      o.DefLoop = "HookLinearFw"
    end
  end
end

function Hook.SlotHookGo(o, SlotTime, Ipos)
  local Sel = o.oSelectedEntity
  local RefDist = Hook.L_DistJump
  o.JustAng = V3D(0, o.uData.TgtAng, 0)
  if Sel and not o.uData.bDrop then
    o:MarkPrevPos()
    o.uData.UpSpeed = Game.EqInterp(o.uData.UpSpeed, Hook.L_MSpeed, Hook.L_Accel * SlotTime)
    o.uData.DistWip = o.uData.DistWip - o.uData.UpSpeed * SlotTime
    if o.uData.DistWip <= 1 then
      o.uData.DistWip = 1
      o.uData.bDrop = true
    end
    o.uData.Wiff = o.uData.Wiff:norm()
    o.uData.Wiff = o.uData.Wiff * o.uData.DistWip
    local Diff = o.uData.Wiff:rot(V3D(0, o.JustAng.y - 90, 0))
    o.JustPos = Sel.Pos + Diff + V3D(0, -(Hook.L_DistJump + o.Radius) * (1 - o.uData.DistWip / o.uData.oDistWip), 0)
  else
    o:SetCollisionEnvironment(true, true, false)
    o.isFalling = 1
    o.ForceAction = o.uData.EndInitial
    o.ForceDefLoop = o.uData.EndLoop
    o.SelectedEntity = ""
    o.Vel = Hook.L_FSpeed:rot(V3D(0, Sel.Ang.y - 180, 0))
    o.JustAng = V3D(0, Sel.Ang.y - 180, 0)
    o:SetFallUsrMoveInactive(Hook.FallUsrMoveInactive)
    if Hook.OnEndOfHook then
      local f = Hook.OnEndOfHook
      Hook.OnEndOfHook = nil
      f(o, Sel)
    end
  end
end

Hook.DrawPendulin = {
  V3D(0, 1, 0):rot(V3D(240, 0, 0)),
  V3D(0, 1, 0):rot(V3D(230, 0, 0)),
  V3D(0, 1, 0):rot(V3D(220, 0, 0)),
  V3D(0, 1, 0):rot(V3D(210, 0, 0)),
  V3D(0, 1, 0):rot(V3D(200, 0, 0)),
  V3D(0, 1, 0):rot(V3D(190, 0, 0)),
  V3D(0, 1, 0):rot(V3D(180, 0, 0)),
  V3D(0, 1, 0):rot(V3D(170, 0, 0)),
  V3D(0, 1, 0):rot(V3D(160, 0, 0)),
  V3D(0, 1, 0):rot(V3D(150, 0, 0)),
  V3D(0, 1, 0):rot(V3D(140, 0, 0)),
  V3D(0, 1, 0):rot(V3D(130, 0, 0)),
  V3D(0, 1, 0):rot(V3D(120, 0, 0))
}
Hook.P_DistMinus = 200
Hook.P_FSpeed = 800
Hook.P_FYSpeed = 800
Hook.P_Accel = 5000
Hook.P_MSpeed = 2000
Hook.P_Hvel = 400

function Hook.PendOnDebugDraw(o)
  local a = Hook.DrawPendulin
  for i = 1, #a - 1 do
    if o.uData.DiffRadius == nil then
      o.uData.DiffRadius = 0
    end
    local newdist = o.ArrRadius - o.uData.DiffRadius - Hook.P_DistMinus
    local v1 = a[i + 0] * newdist
    local v2 = a[i + 1] * newdist
    DebugDraw.DrawLink(o.Pos + v1:rot(o.Ang), o.Pos + v2:rot(o.Ang), false, true, Color(0, 255, 0, 255), Color(255, 255, 0, 255), 10, 40)
  end
end

function Hook.PendCanUseFunc(usr, o)
  if o.Pos.y > usr.Pos.y then
    return 1
  else
    return 0
  end
end

function Hook.PendGrip(char, parent, cad, newcad)
  if char.oActCtrl.AnimPriority > 10 then
    return
  end
  Hook.SetWhipTargetDelayed(char)
  char.SelectedEntity = parent.Name
  Hook.CallOnInit(char, parent, cad, newcad)
  local dPos = char.oSelectedEntity.Pos + Hook.GetDeltaLink(char.oSelectedEntity)
  local diff = char.Pos - dPos
  local icos = -diff:norm().y
  local locm
  if 0.89 < icos then
    locm = "Up"
  elseif 0.4 < icos then
    locm = "45"
  else
    locm = "Fw"
  end
  char.uData.EndInitial = "HookLinear" .. locm .. "End"
  char.uData.EndLoop = "FallRun"
  char.uData.bIsFalling = char.bIsFalling and char.oLineLinker.LineIdx == -1
  char.uData.bGoFw = true
  char.uData.dDoMove = 0
  char.uData.bDrop = false
  char.uData.bJump = false
  char.uData.bFVertex = false
  char.uData.SrcAng = char.Ang.y
  char.uData.TgtAng = diff:getrot().y
  char.uData.FixLink = true
  char.JumpCounter = 0
  char.uData.InterpSwitch = 0
  char.TimeToCheckClimb = 0.5
  char.oLineLinker.LineIdx = -1
  if char.uData.bIsFalling then
    local defloop = char.DefLoop
    if string.sub(defloop, #defloop - 2) == "Run" then
      char.Action = "HookLinear" .. locm .. "FallRunInit"
      char.DefLoop = "HookPendGo" .. locm
    else
      char.Action = "HookLinear" .. locm .. "FallInit"
      char.DefLoop = "HookPendGo" .. locm
    end
    char.uData.HangVel = V3D(clamp(-Hook.P_Hvel, 0, char.Vel.x), clamp(-Hook.P_Hvel, 0, char.Vel.y), clamp(-Hook.P_Hvel, 0, char.Vel.z))
  else
    char.Action = "HookLinear" .. locm .. "Init"
    char.DefLoop = "HookPendGo" .. locm
    char.SelectedEntity = parent.Name
    char.uData.HangVel = V3D(0, 0, 0)
    char.bIsFalling = true
  end
  char.uData.HangVelTgY = -1000
  if char.oActCtrl.oAction.Group == "Hook" then
    char:SetNoneCollisionMask()
  end
  Team.FallWaypointHook(parent)
end

function Hook.SlotPendGo(o, SlotTime, Ipos)
  local Sel = o.oSelectedEntity
  o.JustAng = V3D(0, o.uData.TgtAng, 0)
  if Sel and not o.uData.bDrop then
    if Sel.uData.DiffRadius == nil then
      Sel.uData.DiffRadius = 0
    end
    local RefDist = Sel.ArrRadius - Sel.uData.DiffRadius - Hook.P_DistMinus
    local DeltaDiff = o.uData.UpSpeed * SlotTime
    local DoMove, TgAng
    if o.uData.bGoFw then
      TgAng = -0.8
      o.uData.dDoMove = Game.EqInterp(o.uData.dDoMove, 1, 5 * SlotTime)
    else
      TgAng = 0.8
      o.uData.dDoMove = Game.EqInterp(o.uData.dDoMove, -1, 5 * SlotTime)
    end
    o:MarkPrevPos()
    local oWiff = o.uData.oWiff:norm().x
    local Wiff = o.uData.Wiff:norm().x
    local fitang = TgAng
    local idist = (Wiff - oWiff) / (fitang - oWiff)
    if idist < 0 then
      idist = 0
    elseif 1 < idist then
      idist = 1
    end
    o.uData.DistWip = o.uData.oDistWip + (RefDist - o.uData.oDistWip) * idist
    o.uData.Wiff = o.uData.Wiff:norm()
    o.uData.Wiff = (o.uData.Wiff:norm() + V2D(-SlotTime * o.uData.dDoMove * 2, 0)):norm()
    if o.uData.bGoFw and TgAng >= o.uData.Wiff.x or not o.uData.bGoFw and TgAng <= o.uData.Wiff.x then
      o.uData.Wiff = V2D(TgAng, o.uData.Wiff.y):norm()
      o.uData.bGoFw = not o.uData.bGoFw
      o.uData.oDistWip = o.uData.DistWip
      o.uData.oJustAng = V3D(0, Game.NormAng(o.uData.oJustAng.y + Game.NormAng((Sel.JustAng.y - o.uData.oJustAng.y) * 2) / 2), 0)
      o.uData.bFVertex = true
      if o.uData.bGoFw then
        o.ForceAction = "HookPendGo"
      else
        o:SetFallUsrMoveInactive(Hook.FallUsrMoveInactive)
        if Hook.OnEndOfHook then
          o.uData.bJump = true
        end
        o.ForceAction = "HookPendBack"
      end
      o.ForceDefLoop = o.Action
    end
    if o.uData.bFVertex and o.uData.bJump then
      local ndiff = (o.Pos - Sel.Pos):norm()
      ndiff = V3D(ndiff.x, 0, ndiff.z):norm()
      o.uData.JumpDirVel = V3D(ndiff.x * Hook.P_FSpeed, Hook.P_FYSpeed, ndiff.z * Hook.P_FSpeed)
      o.uData.bDrop = true
    end
    o.uData.Wiff = o.uData.Wiff * o.uData.DistWip
    o.JustAng = V3D(0, Game.NormAng(o.uData.oJustAng.y + Game.NormAng((Sel.JustAng.y - o.uData.oJustAng.y) * 2) / 2 * idist), 0)
    local Diff = o.uData.Wiff:rot(V3D(0, o.JustAng.y - 90, 0))
    if 1 > o.uData.InterpSwitch then
      if 0 >= o.uData.InterpSwitch then
        o.uData.JustPos = o.JustPos
      end
      o.uData.JustPos = o.uData.JustPos + o.uData.LHangVel * SlotTime
      o.JustPos = (Sel.Pos + Diff) * o.uData.InterpSwitch + o.uData.JustPos * (1 - o.uData.InterpSwitch)
      o.uData.InterpSwitch = o.uData.InterpSwitch + SlotTime * 2
    else
      o.JustPos = Sel.Pos + Diff
    end
    local vfloordist = V3D(0, o.FloorDist + 30, 0)
    local VHPos, VHExtra = Game.TestLine(o.Pos, o.Pos - vfloordist, "")
    if VHPos then
      o.uData.oDistWip = (o.oSelectedEntity.Pos - VHPos - vfloordist):mod()
    end
    if o.owc.Grip == 1 and o.owc.PGrip == 0 or o.owc.Jump == 1 and o.owc.PJump == 0 then
      o.uData.bJump = true
    end
  else
    o:SetCollisionEnvironment(true, true, false)
    o.isFalling = 1
    o.ForceAction = o.uData.EndInitial
    o.ForceDefLoop = o.uData.EndLoop
    o.SelectedEntity = ""
    o.Vel = o.uData.JumpDirVel
    o.JustAng = o.uData.oJustAng
    o:SetFallUsrMoveInactive(Hook.FallUsrMoveInactive)
    if Hook.OnEndOfHook then
      local f = Hook.OnEndOfHook
      Hook.OnEndOfHook = nil
      f(o, Sel)
    end
  end
end

Hook.R_MinRadius = 400
Hook.R_MinSel = 350
Hook.R_MaxMove = 850
Hook.R_MaxSMove = 600
Hook.R_JumpMove = 850
Hook.R_JSpeedInit = 750
Hook.R_JAccel = 1500
Hook.R_JSpeed = 1000
Hook.R_JSpeed2 = 1500
Hook.R_JS2Time = 0.25
Hook.R_JumpVSpeed = 250
Hook.R_FSpeed = V3D(0, 1000, -1000)
Hook.R_Hvel = 400

function Hook.RappelGrip(char, parent, cad, newcad)
  if char.oActCtrl.AnimPriority > 10 then
    return false
  end
  Hook.SetWhipTargetDelayed(char)
  char.SelectedEntity = parent.Name
  Hook.CallOnInit(char, parent, cad, newcad)
  local dPos = char.oSelectedEntity.Pos + Hook.GetDeltaLink(char.oSelectedEntity)
  local diff = char.Pos - dPos
  local icos = -diff:norm().y
  local locm
  if 0.89 < icos then
    locm = "Up"
  else
    locm = "45"
  end
  char.uData.EndInitial = "HookRappel" .. locm .. "End"
  char.uData.EndLoop = "HookRappelInit"
  char.uData.bIsFalling = char.bIsFalling and char.oLineLinker.LineIdx == -1
  char.uData.bGoFw = true
  char.uData.dDoMove = 0
  char.uData.ZBalance = 0
  char.uData.bDrop = false
  char.uData.bJump = false
  char.uData.bHiJump = false
  char.uData.SrcAng = char.Ang.y
  char.uData.TgtAng = diff:getrot().y
  char.uData.JumpSpeed = Hook.R_JSpeedInit
  char.uData.MinusRawDisp = {}
  char.uData.HookJumpActive = false
  char.JumpCounter = 0
  char.uData.InterpSwitch = 0
  char.oLineLinker.LineIdx = -1
  if char.uData.bIsFalling then
    if math.abs(Game.NormAng(char.uData.TgtAng - char.uData.SrcAng)) > 177 then
      char.uData.SrcAng = Game.NormAng(char.uData.SrcAng + 10)
      char.uData.HangVel = V3D(0, 0, 0)
    else
      char.uData.HangVel = V3D(clamp(-Hook.R_Hvel, 0, char.Vel.x), clamp(-Hook.R_Hvel, 0, char.Vel.y), clamp(-Hook.R_Hvel, 0, char.Vel.z))
    end
    local defloop = char.DefLoop
    if string.sub(defloop, #defloop - 2) == "Run" then
      char.Action = "HookRappel" .. locm .. "FallRunInit"
      char.DefLoop = "HookRappel" .. locm .. "FallRun"
    else
      char.Action = "HookRappel" .. locm .. "FallInit"
      char.DefLoop = "HookRappel" .. locm .. "Fall"
    end
  else
    char.uData.HangVel = V3D(0, 0, 0)
    char.Action = "HookRappel" .. locm .. "Init"
    char.bIsFalling = true
  end
  char.DefLoop = "HookRappelInit"
  char.uData.FixLink = V2D(diff.x, diff.z):mod() > 100
  char.uData.HangVelTgY = -1000
  local angulus = Game.NormAng(char.oSelectedEntity.Ang.y - diff:getrot().y - 180)
  if char.uData.FixLink and math.abs(angulus) > 60 then
    char.uData.FixLink = false
    local FallStr
    if char.uData.bIsFalling then
      FallStr = "Fall"
    else
      FallStr = ""
    end
    if angulus < 0 then
      char.Action = "HookRappelUp" .. FallStr .. "InitLeft"
      char.DefLoop = "HookRappelInitLeft"
    else
      char.Action = "HookRappelUp" .. FallStr .. "InitRight"
      char.DefLoop = "HookRappelInitRight"
    end
    char.uData.HangVel = V3D(char.uData.HangVel.x, 0, char.uData.HangVel.z)
    char.uData.HangVelTgY = -250
  end
  if char.oActCtrl.oAction.Group == "Hook" then
    char:SetNoneCollisionMask()
  end
  Team.FallWaypointHook(parent)
  return true
end

Hook.RappelNGrip = Hook.RappelGrip
Hook.RappelSGrip = Hook.RappelGrip

function Hook.RappelCanUseFunc(usr, o)
  if o.Pos.y > usr.Pos.y + Hook.R_MinSel then
    return 1
  else
    return 0
  end
end

function Hook.RappelOnDebugDraw(o)
  if o.uData.DiffRadius == nil then
    o.uData.DiffRadius = 0
  end
  if o.uData.JumpType == nil then
    o.uData.JumpType = 2
  end
  local o_ArrRadius = o.ArrRadius - o.uData.DiffRadius
  DebugDraw.DrawBox(o.Pos - V3D(0, (o_ArrRadius - Hook.R_MinRadius) / 2 + Hook.R_MinRadius, 0), o.Ang, V3D(70, (o_ArrRadius - Hook.R_MinRadius) / 2, 70), Color(0, 255, 0, 255))
  local MaxMove
  if o.UseFunc == "Hook.RappelSGrip" then
    MaxMove = Hook.R_MaxSMove
  else
    MaxMove = Hook.R_MaxMove
  end
  local p1 = o.Pos - V3D(0, (o_ArrRadius - MaxMove) / 2 + MaxMove, 0)
  local p2y = (o_ArrRadius - MaxMove) / 2
  if o.UseFunc == "Hook.RappelGrip" then
    DebugDraw.DrawBox(p1, o.Ang, V3D(550, p2y, 20), Color(255, 255, 0, 255))
  elseif o.UseFunc == "Hook.RappelSGrip" then
    DebugDraw.DrawBox(p1, o.Ang, V3D(332, p2y, 20), Color(255, 255, 0, 255))
  end
  if o.uData.JumpType == 2 then
    p1 = o.Pos - V3D(0, (o_ArrRadius - Hook.R_JumpMove) / 2 + Hook.R_JumpMove, 0)
    p2y = (o_ArrRadius - Hook.R_JumpMove) / 2
    dist = 140
    DebugDraw.DrawBox(o.Pos - V3D(0, (Hook.R_JumpMove - Hook.R_MinRadius) / 2 + Hook.R_MinRadius, dist):rot(V3D(0, o.Ang.y, 0)), o.Ang, V3D(20, (Hook.R_JumpMove - Hook.R_MinRadius) / 2, 20 + dist), Color(255, 0, 0, 255))
    dist = 320
    DebugDraw.DrawBox(p1 - V3D(0, 0, dist):rot(V3D(0, o.Ang.y, 0)), o.Ang, V3D(20, p2y, 20 + dist), Color(255, 0, 0, 255))
  elseif o.uData.JumpType == 1 then
    p1 = o.Pos - V3D(0, (o_ArrRadius - Hook.R_MinRadius) / 2 + Hook.R_MinRadius, 0)
    p2y = (o_ArrRadius - Hook.R_MinRadius) / 2
    dist = 140
    DebugDraw.DrawBox(p1 - V3D(0, 0, dist):rot(V3D(0, o.Ang.y, 0)), o.Ang, V3D(20, p2y, 20 + dist), Color(255, 0, 0, 255))
  end
end

function Hook.SlotRappelJump(o, SlotTime, Ipos)
  local Sel = o.oSelectedEntity
  local o_owc_Str
  if Sel then
    if Sel.UseFunc == "Hook.RappelNGrip" then
      o_owc_Str = 0
    else
      o_owc_Str = o.owc.Str
    end
    if Sel.uData.JumpType == nil then
      Sel.uData.JumpType = 2
    end
  end
  if Sel and not o.uData.bDrop then
    if Sel.uData.DiffRadius == nil then
      Sel.uData.DiffRadius = 0
    end
    local Sel_ArrRadius = Sel.ArrRadius - Sel.uData.DiffRadius
    if o.uData.HookJumpActive and (o.owc.Grip == 1 and o.owc.PGrip == 0 or o.owc.Jump == 1 and o.owc.PJump == 0) then
      o.uData.bDrop = true
    end
    o.JustAng = V3D(0, o.uData.TgtAng, 0)
    o.uData.Wiff = V3D(Game.EqInterp(o.uData.Wiff.x, 0, o.uData.JumpSpeed * SlotTime), o.uData.Wiff.y, 0)
    o.uData.JumpSpeed = o.uData.JumpSpeed + SlotTime * Hook.R_JAccel
    o.uData.Wiff = o.uData.Wiff:norm() * o.uData.DistWip
    local locAng = o.JustAng.y
    if o.uData.DistAng then
      locAng = o.uData.DistAng
    end
    local Diff = o.uData.Wiff:rot(V3D(0, locAng - 90, 0))
    if 1 > o.uData.InterpSwitch then
      if 0 >= o.uData.InterpSwitch then
        o.uData.JustPos = o.JustPos
        o.uData.LHangVel = o.Vel
      end
      o.uData.JustPos = o.uData.JustPos + o.uData.LHangVel * SlotTime
      o.JustPos = (Sel.Pos + Diff) * o.uData.InterpSwitch + o.uData.JustPos * (1 - o.uData.InterpSwitch)
      o.uData.InterpSwitch = o.uData.InterpSwitch + SlotTime * 4
    else
      o.JustPos = Sel.Pos + Diff
    end
    local vfloordist = V3D(0, o.FloorDist + 30, 0)
    local VHPos, VHExtra = Game.TestLine(o.JustPos, o.JustPos - vfloordist, "")
    if VHPos then
      o.uData.DistWip = (Sel.Pos - VHPos - vfloordist):mod()
    end
    if 0 >= o.uData.Wiff.x then
      local XtraStr
      if Sel.UseFunc == "Hook.RappelGrip" then
        XtraStr = "Far"
      else
        XtraStr = "2"
      end
      if o.DefLoop == "HookRappelInitLeft" then
        if 0.5 <= o_owc_Str then
          o.Action = "HookRappelRight" .. XtraStr
        else
          o.Action = "HookRappelInitLeftEnd"
        end
        o.DefLoop = "HookRappel"
      elseif o.DefLoop == "HookRappelInitRight" then
        if o_owc_Str <= -0.5 then
          o.Action = "HookRappelLeft" .. XtraStr
        else
          o.Action = "HookRappelInitRightEnd"
        end
        o.DefLoop = "HookRappel"
      else
        o.Action = "HookRappelInitEnd"
        o.DefLoop = "HookRappel"
      end
      o.bIsFalling = true
    end
    local minLimit = Hook.R_MinRadius
    if o.uData.bHiJump then
      minLimit = Hook.R_JumpMove
    end
    if Sel_ArrRadius < o.uData.DistWip then
      o.uData.DistWip = Game.EqInterp(o.uData.DistWip, Sel_ArrRadius, 8 * Hook.R_JumpVSpeed * SlotTime)
    elseif minLimit > o.uData.DistWip then
      o.uData.DistWip = Game.EqInterp(o.uData.DistWip, minLimit, 8 * Hook.R_JumpVSpeed * SlotTime)
    elseif 0 > o.owc.Walk and Sel_ArrRadius > o.uData.DistWip or 0 < o.owc.Walk and minLimit < o.uData.DistWip then
      o.uData.DistWip = o.uData.DistWip - o.owc.Walk * Hook.R_JumpVSpeed * SlotTime
    end
  else
    o:SetCollisionEnvironment(true, true, false)
    o.isFalling = 1
    o.ForceDefLoop = "FallRun"
    if Sel then
      o.ForceAction = "HookRappelJump"
      o.SelectedEntity = ""
      o.Vel = Hook.R_FSpeed:rot(V3D(0, Sel.Ang.y, 0))
    else
      o.ForceAction = "FallRun"
    end
  end
end

function Hook.SlotRappelRelax(o, SlotTime, Ipos)
  local Sel = o.oSelectedEntity
  local o_owc_Str
  if Sel == nil then
    o:SetCollisionEnvironment(true, true, false)
    o.isFalling = 1
    o.ExtraSufix = "Whip"
    o.ForceAction = "WhipFall"
    o.ForceDefLoop = "WhipFall"
    return
  elseif Sel.UseFunc == "Hook.RappelNGrip" then
    o_owc_Str = 0
  else
    o_owc_Str = o.owc.Str
  end
  o.uData.InterpSwitch = 1
  o.uData.DistAng = nil
  o.uData.HookJumpActive = true
  if Sel and not o.uData.bDrop then
    if Sel.uData.JumpType == nil then
      Sel.uData.JumpType = 2
    end
    local MaxMove
    if Sel.UseFunc == "Hook.RappelSGrip" then
      MaxMove = Hook.R_MaxSMove
    else
      MaxMove = Hook.R_MaxMove
    end
    if Sel.uData.DiffRadius == nil then
      Sel.uData.DiffRadius = 0
    end
    local Sel_ArrRadius = Sel.ArrRadius - Sel.uData.DiffRadius
    local ArrRadius = Sel_ArrRadius
    local tgtAngle = math.floor(o.JustAng.y + Game.NormAng(Sel.Ang.y + 180 - o.JustAng.y))
    o.JustAng = V3D(0, Game.EqInterp(o.JustAng.y, tgtAngle, 360 * SlotTime), 0)
    o.uData.TgtAng = o.JustAng.y
    o.uData.Wiff = o.uData.Wiff:norm() * o.uData.DistWip
    local Diff = o.uData.Wiff:rot(V3D(0, o.JustAng.y - 90, 0))
    o.JustPos = Sel.Pos + Diff
    local N_R_L = string.sub(o.Action, 1, 15) ~= "HookRappelRight" and string.sub(o.Action, 1, 14) ~= "HookRappelLeft" and 1 >= math.abs(o.JustAng.y - tgtAngle)
    local _HRILE_ = o.Action == "HookRappelInitLeftEnd"
    local _HRIRE_ = o.Action == "HookRappelInitRightEnd"
    local _HRI_RE_or_LE = _HRILE_ or _HRIRE_
    if N_R_L and o_owc_Str <= -0.5 and not _HRILE_ then
      o.Action = "HookRappelLeft"
      if MaxMove > o.uData.DistWip then
        o.uData.LastDistWip = o.uData.DistWip
      else
        o.uData.LastDistWip = nil
      end
      o.DefLoop = "HookRappel"
    elseif N_R_L and 0.5 <= o_owc_Str and not _HRIRE_ then
      o.Action = "HookRappelRight"
      if MaxMove > o.uData.DistWip then
        o.uData.LastDistWip = o.uData.DistWip
      else
        o.uData.LastDistWip = nil
      end
      o.DefLoop = "HookRappel"
    elseif N_R_L and not _HRI_RE_or_LE and -0.5 >= o.owc.Walk and o.DefLoop ~= "HookRappelBack" and o.DefLoop ~= "HookRappelLookDown" then
      if ArrRadius > o.uData.DistWip then
        o.Action = "HookRappelBackInit"
        o.DefLoop = "HookRappelBack"
      elseif o.Action ~= "HookRappelBackEnd" then
        o.Action = "HookRappelLookDownInit"
        o.DefLoop = "HookRappelLookDown"
      else
        o.oActCtrl:SetAction("HookRappelLookDown", false, 5)
        o.DefLoop = "HookRappelLookDown"
      end
    elseif N_R_L and not _HRI_RE_or_LE and 0.5 < o.owc.Walk and o.DefLoop ~= "HookRappelRun" and o.uData.DistWip > Hook.R_MinRadius then
      o.Action = "HookRappelRunInit"
      o.DefLoop = "HookRappelRun"
    elseif o.owc.Grip == 1 and o.owc.PGrip == 0 or o.owc.Jump == 1 and o.owc.PJump == 0 then
      o.uData.bDrop = true
    elseif N_R_L and 1 <= Sel.uData.JumpType and (o.owc.AreaAttack == 1 and o.owc.PAreaAttack == 0 or o.owc.DirectionalAttack == 1 and o.owc.PDirectionalAttack == 0) then
      if (o.Action == "HookRappelInitEnd" or o.Action == "HookRappelInitLeftEnd" or o.Action == "HookRappelInitRightEnd") and o.oActCtrl.AnimTime < Hook.R_JS2Time and Sel.uData.JumpType >= 2 then
        o.uData.JumpSpeed = -Hook.R_JSpeed2
        o.uData.bHiJump = true
      else
        o.uData.JumpSpeed = -Hook.R_JSpeed
        o.uData.bHiJump = false
      end
      o.Action = "HookRappelInitInit"
      o.DefLoop = "HookRappelInit"
      o.uData.Wiff = V3D(1, o.uData.Wiff.y, 0)
    end
    local AnimPos = o.oActCtrl.AnimPos
    if not N_R_L then
      if (o.Action == "HookRappelRight" or o.Action == "HookRappelLeft") and o.uData.LastDistWip ~= nil then
        o.uData.DistWip = MaxMove * AnimPos + o.uData.LastDistWip * (1 - AnimPos)
      end
      o.uData.ZBalance = -o.oActCtrl.AnimRawDisp.x
      local mirawd = o.uData.MinusRawDisp[o.Action]
      if mirawd then
        o.uData.ZBalance = o.uData.ZBalance - mirawd
      end
      o.uData.Wiff = V3D(0, o.uData.Wiff.y, o.uData.ZBalance)
      if o.uData.LastDistWip == nil then
        if -0.5 > o.owc.Walk and Sel_ArrRadius > o.uData.DistWip or Sel_ArrRadius < o.uData.DistWip then
          local Sel_ArrRadius = Sel_ArrRadius
          local VHPos, VHExtra = Game.TestLine(Sel.Pos, Sel.Pos + V3D(0, -Sel_ArrRadius - o.FloorDist - 30, 0), "")
          if VHPos ~= nil then
            Sel_ArrRadius = Sel.Pos.y - VHPos.y - o.FloorDist - 30
          end
          o.uData.DistWip = Game.EqInterp(o.uData.DistWip, Sel_ArrRadius, Hook.R_JumpVSpeed * SlotTime)
        elseif 0.5 < o.owc.Walk and MaxMove < o.uData.DistWip or MaxMove > o.uData.DistWip then
          o.uData.DistWip = Game.EqInterp(o.uData.DistWip, MaxMove, Hook.R_JumpVSpeed * SlotTime)
        end
      end
    elseif o.Action == "HookRappelBack" or o.Action == "HookRappelBackInit" then
      o.uData.DistWip = o.uData.DistWip - o.Vel.y * SlotTime
      if ArrRadius < o.uData.DistWip then
        o.uData.DistWip = ArrRadius
        o.Action = "HookRappelBackEnd"
        o.DefLoop = "HookRappel"
      elseif -0.5 <= o.owc.Walk and o.Action == "HookRappelBack" and 0.8 < AnimPos then
        o.Action = "HookRappelBackEnd"
        o.DefLoop = "HookRappel"
      end
      local VHPos = Game.TestLine(o.Pos, o.Pos - V3D(0, o.FloorDist + 20, 0), "")
      if VHPos then
        o.uData.bDrop = true
      end
    elseif o.Action == "HookRappelRun" or o.Action == "HookRappelRunInit" then
      o.uData.DistWip = o.uData.DistWip - o.Vel.y * SlotTime
      if o.uData.DistWip <= Hook.R_MinRadius then
        o.uData.DistWip = Hook.R_MinRadius
        o.Action = "HookRappelRunEnd"
        o.DefLoop = "HookRappel"
        o.oActCtrl:IncActionTime(0, 0.27)
      elseif 0.5 >= o.owc.Walk and (o.Action == "HookRappelRun" or o.Action == "HookRappelRunInit" and 0.7 < AnimPos) then
        o.Action = "HookRappelRunEnd"
        o.DefLoop = "HookRappel"
        o.oActCtrl:IncActionTime(0, 0.27)
      end
    elseif o.Action == "HookRappelLookDown" or o.Action == "HookRappelLookDownInit" then
      if -0.5 < o.owc.Walk and o.owc.Jump == 0 and o.owc.Grip == 0 then
        o.Action = "HookRappelLookDownEnd"
        o.DefLoop = "HookRappel"
      elseif -0.5 >= o.owc.Walk and (o.owc.Jump == 1 or o.owc.Grip == 1) then
        o.uData.bDrop = true
      end
    end
    o.uData.DistWip = Game.EqInterp(o.uData.DistWip, clamp(Hook.R_MinRadius - 70, ArrRadius + 70, o.uData.DistWip), 8 * Hook.R_JumpVSpeed * SlotTime)
    if o.uData.DistWip <= Hook.R_MinRadius and 0.5 <= o.owc.Walk or ArrRadius <= o.uData.DistWip and -0.5 >= o.owc.Walk then
      o:SetCollisionEnvironment(true, true, false)
      if o:ClimbCheck(true) then
        o.isFalling = 1
        o.SelectedEntity = ""
        o.uData.bDrop = true
        o.ForceAction = "HookRappelFall"
        o.ForceDefLoop = "Fall"
        o.Vel = V3D(0, 200, 0)
      else
        o:SetNoneCollisionMask()
      end
    end
  else
    o:SetCollisionEnvironment(true, true, false)
    local PressCtr = 0
    if -0.5 >= o.owc.Walk then
      PressCtr = PressCtr + 1
    end
    if 0.5 <= o.owc.Grip then
      PressCtr = PressCtr + 1
      if o.AutoSelectedEntity ~= o.SelectedEntity then
        local ase = player.oAutoSelectedEntity
        if ase and string.lower(ase.Mesh) == "trigger_hook.m3d" then
          PressCtr = PressCtr + 1
        end
      end
    end
    if 0.5 <= o.owc.Jump then
      PressCtr = PressCtr + 1
    end
    if o.Action == "HookRappelLeft" and o.oActCtrl.AnimFrame < 27 or o.Action == "HookRappelLeft2" and o.oActCtrl.AnimFrame < 27 or o.Action == "HookRappelLeftFar" and 70 > o.oActCtrl.AnimFrame or o.Action == "HookRappelRight" and o.oActCtrl.AnimFrame > 35 or o.Action == "HookRappelRight2" and o.oActCtrl.AnimFrame > 27 or o.Action == "HookRappelRightFar" and o.oActCtrl.AnimFrame > 80 then
      o.SelectedEntity = ""
      o.isFalling = 1
      o.ForceAction = "HookRappelLeftJump"
      o.ForceDefLoop = "FallRun"
      o.Vel = Hook.R_FSpeed:rot(V3D(0, Sel.Ang.y + 89, 0))
    elseif o.Action == "HookRappelRight" and o.oActCtrl.AnimFrame < 27 or o.Action == "HookRappelRight2" and o.oActCtrl.AnimFrame < 27 or o.Action == "HookRappelRightFar" and 70 > o.oActCtrl.AnimFrame or o.Action == "HookRappelLeft" and o.oActCtrl.AnimFrame > 35 or o.Action == "HookRappelLeft2" and o.oActCtrl.AnimFrame > 27 or o.Action == "HookRappelLeftFar" and o.oActCtrl.AnimFrame > 80 then
      o.SelectedEntity = ""
      o.isFalling = 1
      o.ForceAction = "HookRappelRightJump"
      o.ForceDefLoop = "FallRun"
      o.Vel = Hook.R_FSpeed:rot(V3D(0, Sel.Ang.y - 89, 0))
    elseif not Sel or 2 <= PressCtr then
      o.SelectedEntity = ""
      o.isFalling = 1
      o.ForceAction = "HookRappelFall"
      o.ForceDefLoop = "Fall"
    elseif N_R_L then
      o.uData.bDrop = false
      o.Action = "HookRappelLookDownInit"
      o.DefLoop = "HookRappelLookDown"
    else
      o.uData.bDrop = false
    end
  end
end

function Hook.RappelTurnActionXQT(EntityName, EventName, Time)
  local o = Game.GetEntity(EntityName)
  o.Vel = o.Vel:rot(V3D(0, 180, 0))
end

function Hook.RappelSideEvent(EntityName, EventName, Time)
  local o = Game.GetEntity(EntityName)
  local clearLastDistWip = true
  local o_owc_Str
  local Sel = o.oSelectedEntity
  if Sel.UseFunc == "Hook.RappelNGrip" then
    o_owc_Str = 0
  else
    o_owc_Str = o.owc.Str
  end
  local XtraStr
  if Sel.UseFunc == "Hook.RappelGrip" then
    XtraStr = "Far"
  else
    XtraStr = "2"
  end
  if EventName == "HookRappelRightFar" then
    o.Action = "HookRappelLeft" .. XtraStr
  elseif EventName == "HookRappelRightFarEnd" then
    if -0.5 < o_owc_Str then
      o.uData.MinusRawDisp.HookRappelRightFarEnd = o.oActCtrl.AnimRawDisp.x
      o.Action = "HookRappelRightFarEnd"
      o.DefLoop = "HookRappel"
      o.uData.LastDistWip = nil
    end
    clearLastDistWip = false
  elseif EventName == "HookRappelLeftFar" then
    o.Action = "HookRappelRight" .. XtraStr
  elseif EventName == "HookRappelLeftFarEnd" then
    if o_owc_Str < 0.5 then
      o.uData.MinusRawDisp.HookRappelLeftFarEnd = o.oActCtrl.AnimRawDisp.x
      o.Action = "HookRappelLeftFarEnd"
      o.DefLoop = "HookRappel"
      o.uData.LastDistWip = nil
    end
    clearLastDistWip = false
  elseif EventName == "HookRappelRight" then
    o.Action = "HookRappelLeft" .. XtraStr
  elseif EventName == "HookRappelRightEnd" then
    if -0.5 < o_owc_Str then
      o.uData.MinusRawDisp.HookRappelRightEnd = o.oActCtrl.AnimRawDisp.x
      o.Action = "HookRappelRightEnd"
      o.DefLoop = "HookRappel"
      o.uData.LastDistWip = nil
    end
    clearLastDistWip = false
  elseif EventName == "HookRappelLeft" then
    o.Action = "HookRappelRight" .. XtraStr
  elseif EventName == "HookRappelLeftEnd" then
    if o_owc_Str < 0.5 then
      o.uData.MinusRawDisp.HookRappelLeftEnd = o.oActCtrl.AnimRawDisp.x
      o.Action = "HookRappelLeftEnd"
      o.DefLoop = "HookRappel"
      o.uData.LastDistWip = nil
    end
    clearLastDistWip = false
  end
  if clearLastDistWip and o.uData.LastDistWip ~= nil then
    if Sel.UseFunc == "Hook.RappelSGrip" then
      o.uData.DistWip = Hook.R_MaxSMove
    else
      o.uData.DistWip = Hook.R_MaxMove
    end
    o.uData.LastDistWip = nil
  end
end

function Hook.SlotHookPend2(o, SlotTime, Ipos)
  o:MarkPrevPos()
  local Sel = o.oSelectedEntity
  if Sel then
    if o.owc.Jump == 1 and o.uData.DistWip == 500 then
      o.uData.bDrop = true
    end
    local iJump
    o.uData.DistWip = Game.EqInterp(o.uData.DistWip, 500, 1000 * SlotTime)
    iJump = o.uData.Wiff.x > o.uData.DistWip - 50 or o.uData.Wiff.x < -o.uData.DistWip + 50
    if o.uData.Wiff.x > o.uData.DistWip - 5 then
      o.uData.HangSpeed = -2000
    elseif o.uData.Wiff.x < -o.uData.DistWip + 5 then
      o.uData.HangSpeed = 2000
    end
    local Deltha = V2D(o.uData.HangSpeed * SlotTime, 0)
    if o.uData.Wiff.y > -20 then
      Deltha = V2D(0, -500 * SlotTime)
    else
      o.JustAng = o.JustAng + V3D(0, Game.NormAng(Sel.Ang.y - o.JustAng.y) * 2 * SlotTime * -o.uData.Wiff:norm().y, 0)
    end
    o.uData.Wiff = o.uData.Wiff + Deltha
    o.uData.Wiff = o.uData.Wiff:norm() * o.uData.DistWip
    local Diff = o.uData.Wiff:rot(V3D(0, o.JustAng.y - 90, 0))
    o.JustPos = Sel.Pos + Diff
    if o.uData.bDrop and iJump then
      o.ForceAction = "HookEnd"
      o.ForceDefLoop = "Fall"
      o.isFalling = 1
      o.SelectedEntity = ""
      o.Vel = V3D(0, 1000, o.uData.HangSpeed / 8):rot(V3D(0, o.Ang.y, 0))
    end
  else
    o:SetCollisionEnvironment(true, true, false)
    o.ForceAction = "HookEnd"
    o.ForceDefLoop = "Fall"
    o.isFalling = 1
    o.SelectedEntity = ""
  end
end

function Hook.GetSelent(entity)
  local Ent = entity.uData.EntityLink
  if Ent and Ent ~= "" then
    local material = entity.uData.MaterialLink
    Ent = Game.GetEntity(Ent)
    if Ent and material and material ~= "" then
      Ent.Selected_Material = material
      if material == "All" then
        Ent.Selected_Material = ""
      end
    end
  else
    return nil
  end
  return Ent
end

function Hook.OnAutoSelected(entity, selected)
  local Ent = Hook.GetSelent(entity)
  if entity.Selected == 3 then
    return
  end
  if selected == 1 then
    if Ent then
      Ent.Selected = 2
    else
      local offset = entity.uData.DeltaLink
      FX.BeginEffect("EFFECT_PARTICLES\183HOOK_DUMMY", "hook_dummy" .. entity.Name)
      if offset then
        FX.SetEffect("EFFECT_PARTICLES\183HOOK_DUMMY", "", "MatrixTranslation " .. offset:str3())
      end
      FX.SetEffect("EFFECT_PARTICLES\183HOOK_DUMMY", "", "LinkToNode " .. entity.Name .. "#DC_Root")
    end
  elseif Ent then
    if entity.bisSelectedSight then
      Ent.Selected = 1
    else
      Ent.Selected = 0
    end
  elseif FX.IsEffect("EFFECT_PARTICLES\183HOOK_DUMMY", "hook_dummy" .. entity.Name) then
    FX.EndEffect("EFFECT_PARTICLES\183HOOK_DUMMY", "hook_dummy" .. entity.Name)
  end
end

function Hook.OnSelectedSight(entity, selected)
  local Ent = Hook.GetSelent(entity)
  if entity.Selected == 3 then
    return
  end
  if selected == 1 then
    if Ent then
      if entity.bisAutoSelected then
        Ent.Selected = 2
      else
        Ent.Selected = 1
      end
    else
      local offset = entity.uData.DeltaLink
      FX.BeginEffect("EFFECT_HOOKDUMMY\183HOOK_SIGHT_DUMMY", "hook_sight" .. entity.Name)
      if offset then
        FX.SetEffect("EFFECT_HOOKDUMMY\183HOOK_SIGHT_DUMMY", "", "MatrixTranslation " .. offset:str3())
      end
      FX.SetEffect("EFFECT_HOOKDUMMY\183HOOK_SIGHT_DUMMY", "", "LinkToNode " .. entity.Name .. "#DC_Root")
      FX.SetEffect("EFFECT_HOOKDUMMY\183HOOK_SIGHT_DUMMY", "", "HookName " .. entity.Name)
    end
  elseif Ent then
    Ent.Selected = 0
  elseif FX.IsEffect("EFFECT_HOOKDUMMY\183HOOK_SIGHT_DUMMY", "hook_sight" .. entity.Name) then
    FX.EndEffect("EFFECT_HOOKDUMMY\183HOOK_SIGHT_DUMMY", "hook_sight" .. entity.Name)
  end
end

function Hook.OnSwitchAnmGroup(char, LastAnm, NewAnm)
  if LastAnm.Group == "Hook" then
    char.SelectedEntity = ""
    Tips.SetTimestamp("ExitHook")
    char:SetCollisionEnvironment(true, true, false)
  end
end

Hook.ENEMY_SELECT_LOW = 1
Hook.ENEMY_SELECT_NORM = 2
Hook.ENEMY_SELECT_HIGH = 3

function Hook.SetDefaultHookDescriptor(ac, Descr)
  if ac.uData.HookInfo == nil then
    ac.uData.HookInfo = {}
  end
  local res = {}
  if Descr == "Active" then
    res.Type = "MATERIAL"
    res.Priority = "ENEMY_SELECT_HIGH"
    res.Radius = 800
    res.DeltaLink = V3D(0, 100, 0)
    res.Material = ""
  else
    res.Type = "NONE"
    res.Priority = "ENEMY_SELECT_NORM"
    res.Radius = 800
    res.DeltaLink = V3D(0, 100, 0)
    res.Material = ""
  end
  ac.uData.HookInfo[Descr] = res
end

function Hook.InitEnemyHook(e, Descr)
  Hook.SetVisibleHookFX(e, false)
  e.UseFunc = "Hook.EnemyGrip"
  if Descr.Type == "INACTIVE" then
    e.bArrowCanUse = false
  else
    e.bArrowCanUse = true
    e.bUseAngSel = false
    e.bUseAbsAngSel = false
    e.bUseMapCheck = true
    e.ArrPriority = Hook[Descr.Priority]
    e.ArrRadius = Descr.Radius
    if Descr.Type ~= "NONE" then
      e.uData.DeltaLink = Descr.DeltaLink
      if Descr.Type == "POINT" then
        e.uData.EntityLink = nil
        e.uData.MaterialLink = nil
      elseif Descr.Type == "MATERIAL" then
        e.uData.EntityLink = e.Name
        e.uData.MaterialLink = Descr.Material
      end
      Hook.SetVisibleHookFX(e, true)
    end
  end
end

function Hook.SetEnemyHook(e, Radius, Priority, DeltaLink)
  e.bArrowCanUse = true
  e.bUseAngSel = false
  e.bUseAbsAngSel = false
  e.bUseMapCheck = true
  e.UseFunc = "Hook.EnemyGrip"
  e.ArrPriority = Priority
  e.ArrRadius = Radius
  if DeltaLink then
    e.uData.DeltaLink = DeltaLink
  end
  Hook.SetVisibleHookFX(e, DeltaLink)
end

function Hook.SetVisibleHookFX(e, status)
  if status then
    if e.OnSelectedSight == "" and e.bisSelectedSight then
      Hook.OnSelectedSight(e, 1)
    end
    if e.OnAutoSelected == "" and e.bisAutoSelected then
      Hook.OnAutoSelected(e, 1)
    end
    e.OnAutoSelected = "Hook.OnAutoSelected"
    e.OnSelectedSight = "Hook.OnSelectedSight"
  else
    local lbisAutoSelected = e.bisAutoSelected
    local lbisSelectedSight = e.bisSelectedSight
    e.bisAutoSelected = false
    e.bisSelectedSight = false
    if e.OnSelectedSight == "Hook.OnSelectedSight" then
      Hook.OnSelectedSight(e, 0)
    end
    if e.OnAutoSelected == "Hook.OnAutoSelected" then
      Hook.OnAutoSelected(e, 0)
    end
    e.OnSelectedSight = ""
    e.OnAutoSelected = ""
    e.bisAutoSelected = lbisAutoSelected
    e.bisSelectedSight = lbisSelectedSight
  end
end

function Hook.EnemyGrip(char, parent)
  if char.SelectedEntity == "" and not char.uData.InMiniGame and parent.Life > 0 and char.owc.PGrip == 0 and not parent.Intangible then
    if player.ActCtrl ~= "Laura" then
      char.ExtraSufix = "Whip"
    else
      Game.Set("LauraShowScorer", true)
    end
    WeaponsCombo.ProcessAction(char.Name, "PressGrip", parent.Name)
  end
end

function Hook.TryNoHookStatus(char)
  Game.AddScheduledFunc(0, "Hook_TryNoHookStatus", "Hook.schTryNoHookStatus", char.Name)
end

function Hook.schTryNoHookStatus(charName)
  local char = Game.GetEntity(charName)
  if char ~= nil and Belmont.ChainModelInUse.Value == 1 then
    Hook.InitEnemyHook(char, char.oActCtrl.oActClass.uData.HookInfo.NoHook)
  end
end

function Hook.GripObject(userEntity, usedEntity)
  if userEntity.oActCtrl.oAction.Group ~= "Hook" then
    userEntity.Action = usedEntity.uData.GripAnimation
    if userEntity.Action ~= usedEntity.uData.GripAnimation then
      return
    end
    usedEntity.bArrowCanUse = false
    userEntity.oWhip.oTarget = usedEntity
    usedEntity.uData.User = userEntity
    userEntity.uData.Used = usedEntity
  end
end

function Hook.RestoreObject(userName)
  local user = Game.GetEntity(userName)
  local usedEntity = user.uData.Used
  if usedEntity then
    usedEntity.bArrowCanUse = true
    usedEntity.uData.User = nil
    user.uData.UsedEntity = nil
  end
end
