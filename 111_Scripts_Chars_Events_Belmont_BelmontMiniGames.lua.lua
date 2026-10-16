function BelmontMiniGames.main()
  local ac = Act.GetClass("Belmont")
  
  am = ac:GetAct("Gear")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.0,0.8000,0.4000,GearLose,GearLose,GearWin,GearWin,", "MiniGames.LaunchMomentCustomized", 97, 1)
    MakeChar.ActEvent(am, "OB_Gabriel_Latigo_C", "!SetMinGameNode", 94, 0)
  end
  am = ac:GetAct("GearInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.0,0.8000,0.4000,GearLose,GearLose,none,none,", "MiniGames.LaunchMomentCustomized", 20, 1)
    MakeChar.ActEvent(am, "OB_Gabriel_Latigo_C", "!SetMinGameNode", 16, 0)
  end
  am = ac:GetAct("HangWallMiniGameLeftInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.1000,1.0000,1.0000,HangWallMiniGameLeft,HangWallMiniGameLeftFail,HangWallMiniGameLeftWin,", "MiniGames.LaunchSpeed", ac:GetAct("HangWallMiniGameLeftInit").LastFrame, 1)
  end
  am = ac:GetAct("HangWallMiniGameUpInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.4000,1.0000,0.6000,HangWallMiniGameUp,HangWallMiniGameUpFail,HangWallMiniGameUpWin,", "MiniGames.LaunchSpeed", ac:GetAct("HangWallMiniGameUpInit").LastFrame, 1)
  end
  am = ac:GetAct("HoldPhase1Init")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.7000,4.0000,2.0000,0.5000,2.0000,20.0,0.6,0.2500,HoldPhase1,HoldPhase1to2,HoldPhase1to2,", "MiniGames.LaunchMantain", 14, 1)
  end
  am = ac:GetAct("HoldPhase1to2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.8000,4.0000,1.5000,0.0,0.0,20.0,0.6000,0.2500,HoldPhase2,HoldPhase2to3,HoldPhase2to3,", "MiniGames.LaunchMantain", 56, 1)
  end
  am = ac:GetAct("HoldPhase2to3")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.90000,3.0000,1.0000,0.0,0.0,20.0,0.6000,0.2500,HoldPhase3,HoldPhase3RunInit,HoldPhase3RunInit,", "MiniGames.LaunchMantain", 98, 1)
  end
  am = ac:GetAct("NdCachedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.3000,1.0000,0.4000,NdCachedLose,NdCachedLose,NdCachedAttackLeft,NdCachedAttackRight,", "MiniGames.LaunchMomentCustomized", 14, 1)
    MakeChar.ActEvent(am, "Bip Gabriel Spine2", "!SetMinGameNode", 13, 0)
  end
  am = ac:GetAct("PushRoll")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.0,0.8000,0.4000,PushRollLose,PushRollLose,PushRollWin,PushRollWin,", "MiniGames.LaunchMomentCustomized", 84, 1)
    MakeChar.ActEvent(am, "Bip Gabriel L Hand", "!SetMinGameNode", 83, 0)
  end
  am = ac:GetAct("PushRollInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.0,0.8000,0.4000,PushRollLose,PushRollLose,none,none,", "MiniGames.LaunchMomentCustomized", 14, 1)
    MakeChar.ActEvent(am, "Bip Gabriel L Hand", "!SetMinGameNode", 13, 0)
  end
  am = ac:GetAct("PushRollSetKeyLeft")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.0,0.8000,0.4000,PushRollLose,PushRollLose,none,none,", "MiniGames.LaunchMomentCustomized", 70, 1)
    MakeChar.ActEvent(am, "Bip Gabriel L Hand", "!SetMinGameNode", 61, 0)
  end
  am = ac:GetAct("RagDollRelaxInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,8.0000,1.0000,RagDollRelax,RagDollDestroy,RagDollDestroy,1,1.0000,1.5000", "MiniGames.LaunchSpeed", 14, 0)
  end
  am = ac:GetAct("SawInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "1.0000,2.0000,10.0000,4,SawRelax,SawBack,SawGo,SawBackRelax,SawGoRelax,SawWinLoop,SawLose,30.0000,", "MiniGames.LaunchStickA", 34, 1)
  end
  am = ac:GetAct("StatueMiniGameInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.1000,4.0000,4.0000,StatueMiniGameBack,StatueMiniGameLose,StatueMiniGameWin,", "MiniGames.LaunchSpeed", 35, 1)
  end
  am = ac:GetAct("ReaperDoorMiniGameInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.1000,4.0000,4.0000,ReaperDoorMiniGameBack,ReaperDoorMiniGameLose,ReaperDoorMiniGameWin,", "MiniGames.LaunchSpeed", 35, 1)
  end
  am = ac:GetAct("WebRelaxInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2500,0.1500,10.0000,1.0000,WebRelax,WebDestroy,WebDestroy,1,1.0000,1.5000", "MiniGames.LaunchSpeed", 14, 1)
  end
  am = ac:GetAct("WhipAaCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipAaCatchLose,WhipAaCatchLose,WhipAaCatchWin,WhipAaCatchWin,", "MiniGames.LaunchMoment", 71, 1)
  end
  am = ac:GetAct("WhipAaCatchShieldInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,4.0000,1.0000,WhipAaCatchShield,WhipAaCatchShieldLose,WhipAaCatchShieldWin,0,0.6600,1.0000", "MiniGames.LaunchSpeed", 22, 1)
  end
  am = ac:GetAct("WhipAaCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,4.0000,1.0000,WhipAaCatch2,WhipAaCatchLose2,WhipAaCatchWin2,0,1.5000,2.0000", "MiniGames.LaunchSpeed", 155, 1)
  end
  am = ac:GetAct("WhipBk11CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "-0.5000,0.3000,4.0000,1.0000,WhipBk11Catch,WhipBk11CatchLose,WhipBk11CatchWin,0,1.0000,1.5000", "MiniGames.LaunchSpeed", 34, 0)
  end
  am = ac:GetAct("WhipBk12CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "-0.5000,0.3000,4.0000,1.0000,WhipBk12Catch,WhipBk12CatchLose,WhipBk12CatchWin,0,1.0000,1.5000", "MiniGames.LaunchSpeed", 34, 0)
  end
  am = ac:GetAct("WhipBk2CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "-0.5000,0.3000,4.0000,1.0000,WhipBk2Catch,WhipBk2CatchLose,WhipBk2CatchWin,0,1.0000,1.5000", "MiniGames.LaunchSpeed", 39, 0)
  end
  am = ac:GetAct("WhipBk3CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "-0.5000,0.2000,4.0000,2.0000,WhipBk3Catch,WhipBk3CatchLose,WhipBk3CatchWinFake,0,0.5000,1.0000", "MiniGames.LaunchSpeed", 49, 0)
  end
  am = ac:GetAct("WhipBtCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "5.0000,0.3000,4.0000,1.0000,WhipBtCatch,WhipBtCatchLose,FirstCut,0,1.0000,1.5000", "MiniGames.LaunchSpeed", 127, 1)
  end
  am = ac:GetAct("WhipCfCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,4.0000,1.0000,WhipCfCatch,WhipCfCatchLose,WhipCfCatchWin,0,1.0000,1.5000", "MiniGames.LaunchSpeed", 39, 1)
  end
  am = ac:GetAct("WhipCoCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipCoCatchLose,WhipCoCatchLose,WhipCoCatchWin,WhipCoCatchWin,", "MiniGames.LaunchMoment", 18, 1)
  end
  am = ac:GetAct("WhipCoCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipCoCatchLose,WhipCoCatchLose,WhipCoCatchWin,WhipCoCatchWin,", "MiniGames.LaunchMoment", 15, 1)
  end
  am = ac:GetAct("WhipCoCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,4.0000,1.0000,WhipCoCatched,WhipCoCatchedLose,WhipCoCatchedWin,0,1.5000,2.0000", "MiniGames.LaunchSpeed", 29, 1)
  end
  am = ac:GetAct("WhipDL2CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipDL2CatchLose,WhipDL2CatchLose,none,none,", "MiniGames.LaunchMoment", 49, 1)
  end
  am = ac:GetAct("WhipDL2CatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipDL2CatchLose,WhipDL2CatchLose,none,none,", "MiniGames.LaunchMoment", 126, 1)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipDL2CatchLose,WhipDL2CatchLose,none,none,", "MiniGames.LaunchMoment", 210, 1)
  end
  am = ac:GetAct("WhipEva1Catch")
  if am ~= nil then
    MakeChar.ActEvent(am, "Bip Gabriel R Foot", "!SetMinGameNode", 106, 0)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipEva1CatchLose,WhipEva1CatchLose,WhipEva1CatchWin,WhipEva1CatchWin,0.0000", "MiniGames.LaunchMoment", 106, 1)
  end
  am = ac:GetAct("WhipEva1CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipEva1CatchLose0,WhipEva2CatchLose0,none,none,0.0000", "MiniGames.LaunchMoment", 30, 1)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipEva1CatchLose,WhipEva1CatchLose,none,none,0.0000", "MiniGames.LaunchMoment", 96, 1)
  end
  am = ac:GetAct("WhipEva2CatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,4.0000,1.0000,WhipEva2Catch,WhipEva2CatchLose,WhipEva2CatchWin,0,1.5000,2.0000", "MiniGames.LaunchSpeed", 99, 1)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipEva2CatchLose0,WhipEva2CatchLose0,none,none,0.0000", "MiniGames.LaunchMoment", 10, 1)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipEva2CatchLose1,WhipEva2CatchLose1,none,none,0.0000", "MiniGames.LaunchMoment", 46, 1)
  end
  am = ac:GetAct("WhipEvbCatch")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipEvbCatchLose,WhipEvbCatchLose,WhipEvbCatchWin,WhipEvbCatchWin,0.0000", "MiniGames.LaunchMoment", 10, 1)
  end
  am = ac:GetAct("WhipEvbCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipEvbCatchLose0,WhipEvbCatchLose0,none,none,", "MiniGames.LaunchMoment", 16, 1)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipEvbCatchLose0,WhipEvbCatchLose0,none,none,", "MiniGames.LaunchMoment", 49, 1)
  end
  am = ac:GetAct("WhipFhCatch")
  if am ~= nil then
    MakeChar.ActEvent(am, "_raiz_escena", "!SetMinGameNode", 0, 0)
  end
  am = ac:GetAct("WhipGbCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipGbCatchEnd,WhipGbCatchEnd,WhipGbCatchPunch,WhipGbCatchBomb,", "MiniGames.LaunchMoment", 31, 1)
  end
  am = ac:GetAct("WhipGbCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipGbCatchEnd,WhipGbCatchEnd,WhipGbCatchPunch,WhipGbCatchBomb,", "MiniGames.LaunchMoment", 19, 1)
  end
  am = ac:GetAct("WhipGdCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,4.0000,1.0000,WhipGdCatch,WhipGdCatchLose,WhipGdCatchWin,0,1.0000,1.5000", "MiniGames.LaunchSpeed", 200, 1)
  end
  am = ac:GetAct("WhipGdCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,4.0000,1.0000,WhipGdCatch2,WhipGdCatchLose2,WhipGdCatchWin2,0,1.0000,1.5000", "MiniGames.LaunchSpeed", 209, 1)
  end
  am = ac:GetAct("WhipGhCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipGhCatchLose,WhipGhCatchLose,WhipGhCatchThrow,WhipGhCatchPunch,", "MiniGames.LaunchMoment", 50, 1)
  end
  am = ac:GetAct("WhipGhCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipGhCatchLose,WhipGhCatchLose,WhipGhCatchThrow,WhipGhCatchPunch,", "MiniGames.LaunchMoment", 26, 1)
  end
  am = ac:GetAct("WhipGlCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipGlCatchEnd,WhipGlCatchEnd,WhipGlCatchKick,WhipGlCatchThrow,", "MiniGames.LaunchMoment", 26, 1)
  end
  am = ac:GetAct("WhipLgCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,4.0000,1.0000,WhipLgCatch,WhipLgCatchLose,WhipLgCatchWin,0,2.0000,2.0000", "MiniGames.LaunchSpeed", 173, 1)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipLgCatchLose0,WhipLgCatchLose0,none,none,", "MiniGames.LaunchMoment", 26, 1)
  end
  am = ac:GetAct("WhipLlCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipLlCatchEnd,WhipLlCatchEnd,WhipLlCatchPunch,WhipLlCatchKick,", "MiniGames.LaunchMoment", 30, 1)
  end
  am = ac:GetAct("WhipLlCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipLlCatchEnd,WhipLlCatchEnd,WhipLlCatchPunch,WhipLlCatchKick,", "MiniGames.LaunchMoment", 22, 1)
  end
  am = ac:GetAct("WhipMdCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipMdCatchLose,WhipMdCatchLose,WhipMdCatchKick,WhipMdCatchScream,", "MiniGames.LaunchMoment", 36, 1)
  end
  am = ac:GetAct("WhipMdCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipMdCatchLose,WhipMdCatchLose,WhipMdCatchKick,WhipMdCatchScream,", "MiniGames.LaunchMoment", 16, 1)
  end
  am = ac:GetAct("WhipMmCatch")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipMmCatchLose,WhipMmCatchLose,none,none,", "MiniGames.LaunchMoment", 82, 1)
  end
  am = ac:GetAct("WhipMmCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipMmCatchLose,WhipMmCatchLose,none,none,", "MiniGames.LaunchMoment", 54, 1)
  end
  am = ac:GetAct("WhipMmCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipMmCatch2Lose,WhipMmCatch2Lose,none,none,", "MiniGames.LaunchMoment", 152, 1)
  end
  am = ac:GetAct("WhipMmCatch_2")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipMmCatchLose,WhipMmCatchLose,none,none,", "MiniGames.LaunchMoment", 82, 1)
  end
  am = ac:GetAct("WhipMmCatch_3")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipMmCatchLose,WhipMmCatchLose,none,none,", "MiniGames.LaunchMoment", 82, 1)
  end
  am = ac:GetAct("WhipPullBridgeInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.8000,4.0000,4.0000,WhipPullBridge,WhipPullBridgeLose,WhipPullBridgeWin,0,", "MiniGames.LaunchSpeed", 30, 1)
  end
  am = ac:GetAct("WhipPullGenericInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.8000,2.0000,2.0000,WhipPullGeneric,WhipPullGenericLose,WhipPullGenericWin,0,0.0,0.666", "MiniGames.LaunchSpeed", 28, 1)
  end
  am = ac:GetAct("WhipPullPlankBInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.8000,2.0000,2.0000,WhipPullPlankB,WhipPullPlankBLose,WhipPullPlankBWin,0,0.0,0.666", "MiniGames.LaunchSpeed", 28, 1)
  end
  am = ac:GetAct("WhipPullPlankInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.8000,2.0000,2.0000,WhipPullPlank,WhipPullPlankLose,WhipPullPlankWin,0,0.0,0.666", "MiniGames.LaunchSpeed", 28, 1)
  end
  am = ac:GetAct("WhipRgCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipRgCatchLose,WhipRgCatchLose,WhipRgCatch,WhipRgCatch,", "MiniGames.LaunchMoment", 13, 1)
  end
  am = ac:GetAct("WhipRgCatchWin")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,4.0000,1.0000,WhipRgCatch2,WhipRgCatchLose2,WhipRgCatchWin2,0,1.2000,1.8000", "MiniGames.LaunchSpeed", 209, 1)
    MakeChar.ActEvent(am, "0.1000,0.8000,WhipRgCatchLose2,WhipRgCatchLose2,none,none,", "MiniGames.LaunchMoment", 124, 1)
  end
  am = ac:GetAct("WhipSMCatchedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,4.0000,1.0000,WhipSMCatched,WhipSMCatchedLose,WhipSMCatchedWin,0,0.6600,1.0000", "MiniGames.LaunchSpeed", 64, 1)
  end
  am = ac:GetAct("WhipScCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,4.0000,1.0000,WhipScCatch,WhipScCatchLose,WhipScCatchWin,0,2.0000,2.0000", "MiniGames.LaunchSpeed", 71, 0)
  end
  am = ac:GetAct("WhipSgRideFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipSgRideFail,WhipSgRideFail,none,none,", "MiniGames.LaunchMoment", 123, 1)
  end
  am = ac:GetAct("WhipSgRideInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipSgRideFail,WhipSgRideFail,none,none,", "MiniGames.LaunchMoment", 121, 1)
  end
  am = ac:GetAct("WhipStunnedInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.1000,10.0000,1.0000,WhipStunned,WhipStunnedEnd,", "MiniGames.LaunchSpeedFree", 20, 1)
  end
  am = ac:GetAct("WhipSwCatch2Init")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipSwCatch2Lose,WhipSwCatch2Lose,none,none,", "MiniGames.LaunchMoment", 2, 1)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipSwCatch2Lose2,WhipSwCatch2Lose2,none,none,", "MiniGames.LaunchMoment", 38, 1)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipSwCatch2Lose3,WhipSwCatch2Lose3,none,none,", "MiniGames.LaunchMoment", 70, 1)
  end
  am = ac:GetAct("WhipSwCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,4.0000,1.0000,WhipSwCatch,WhipSwCatchLose,WhipSwCatchWin,0,1.5000,2.0000", "MiniGames.LaunchSpeed", 117, 1)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipSwCatchLose2,WhipSwCatchLose2,none,none,", "MiniGames.LaunchMoment", 65, 1)
  end
  am = ac:GetAct("WhipTbCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.5000,0.3000,8.0000,1.0000,WhipTbCatch,WhipTbCatchLose2,WhipTbCatchWin,0,1.0000,1.5000", "MiniGames.LaunchSpeed", 315, 1)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipTbCatchLose1,WhipTbCatchLose1,none,none,", "MiniGames.LaunchMoment", 42, 1)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipTbCatchLose1,WhipTbCatchLose1,none,none,", "MiniGames.LaunchMoment", 76, 1)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipTbCatchLose1,WhipTbCatchLose1,none,none,", "MiniGames.LaunchMoment", 128, 1)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipTbCatchLose2,WhipTbCatchLose2,none,none,", "MiniGames.LaunchMoment", 269, 1)
  end
  am = ac:GetAct("WhipTbRideFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "OB_Gabriel_Latigo_Punta", "!SetMinGameNode", 112, 0)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipTbRideFail,WhipTbRideFail,none,none,0.0000", "MiniGames.LaunchMoment", 124, 1)
  end
  am = ac:GetAct("WhipTbRideInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "OB_Gabriel_Latigo_Punta", "!SetMinGameNode", 118, 0)
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipTbRideFail,WhipTbRideFail,none,none,0.0000", "MiniGames.LaunchMoment", 130, 1)
  end
  am = ac:GetAct("WhipTombInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "-0.5000,0.8000,4.0000,4.0000,WhipTombLoop,WhipTombLose,WhipTombWin,0,0.0,0.666", "MiniGames.LaunchSpeed", 134, 1)
  end
  am = ac:GetAct("WhipTsCatchFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipTsCatchEnd,WhipTsCatchEnd,WhipTsCatchHitD,WhipTsCatchHitJ,", "MiniGames.LaunchMoment", 26, 1)
  end
  am = ac:GetAct("WhipTsCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipTsCatchEnd,WhipTsCatchEnd,WhipTsCatchHitD,WhipTsCatchHitJ,", "MiniGames.LaunchMoment", 16, 1)
  end
  am = ac:GetAct("WhipVwCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipVwCatchLose,WhipVwCatchLose,WhipVwCatchWin,WhipVwCatchWin,", "MiniGames.LaunchMoment", 25, 1)
  end
  am = ac:GetAct("WhipWcCatch")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipWcCatchLose,WhipWcCatchLose,WhipWcCatchWin,WhipWcCatchWin,0.0000", "MiniGames.LaunchMoment", 0, 1)
  end
  am = ac:GetAct("WhipWgRideFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipWgRideFail,WhipWgRideFail,none,none,", "MiniGames.LaunchMoment", 67, 1)
  end
  am = ac:GetAct("WhipWgRideInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipWgRideFail,WhipWgRideFail,default,default,", "MiniGames.LaunchMoment", 66, 1)
  end
  am = ac:GetAct("WhipWtRideFarInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipWtRideFail,WhipWtRideFail,none,none,", "MiniGames.LaunchMoment", 93, 1)
  end
  am = ac:GetAct("WhipWtRideInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipWtRideFail,WhipWtRideFail,none,none,", "MiniGames.LaunchMoment", 90, 1)
  end
  am = ac:GetAct("WhipZbCatchInit")
  if am ~= nil then
    MakeChar.ActEvent(am, "0.2000,0.8000,WhipZbCatchEnd,WhipZbCatchEnd,WhipZbCatchHead,WhipZbCatchThrow,", "MiniGames.LaunchMoment", 34, 1)
  end
end
