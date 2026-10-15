function EffectsFrame.main()
  EffectsFrame.RT_Reset()
  
  if init and not init.isMainMenu then
    EffectsFrame.BackFadeOut()
  end
end

function EffectsFrame.RT_Reset()
  Effects.RadialBlur(0, 0, 0)
  Game.Set("RT_AberrationValue", 0)
  Game.Set("EagleViewFactorBegin", 0)
  Game.Set("EagleViewFactorEnd", 0)
  Game.Set("EagleViewTime", 0)
  Game.Set("EagleViewEndTime", 0)
  Game.Set("RT_EagleViewColor", Color(0, 0.05, 0, 0))
  EffectsFrame.DOF_Normal()
  EffectsFrame.Aim_Enable = 0
  if Effects then
    Effects.FXFPFliesOff()
  end
end

function EffectsFrame.DOF_Normal()
end

EffectsFrame.Aim_Enable = 0

function EffectsFrame.Reload_Ini()
  if EffectsFrame.Aim_Enable == 1 then
    EffectsFrame.Aim_End()
    EffectsFrame.Aim_EndTotalTime(1)
  end
end

function EffectsFrame.Reload_End()
  if EffectsFrame.Aim_Enable == 1 then
    EffectsFrame.Aim_Ini()
    EffectsFrame.Aim_IniTotalTime(1)
  end
end

function EffectsFrame.Aim_Ini()
  Game.Set("TravelFactorBegin", 0)
  Game.Set("TravelFactorEnd", 5)
  Game.Set("TravelTime", 0)
  Game.Set("TravelEndTime", 0.8)
  Game.Set("EagleViewFactorBegin", 0)
  Game.Set("EagleViewFactorEnd", 0.5)
  Game.Set("EagleViewTime", 0)
  Game.Set("EagleViewEndTime", 0.8)
  Game.Set("RT_EagleViewColor", Color(0, 0.05, 0, 0))
end

function EffectsFrame.Aim_IniTotalTime(Auto)
  if Auto == nil then
    EffectsFrame.Aim_Enable = 1
  end
  Game.Set("TravelFactorBegin", 0)
  Game.Set("TravelFactorEnd", 0)
  Game.Set("TravelTime", 0)
  Game.Set("TravelEndTime", 0)
  Game.Set("RT_DOFAutoFocus", 250000)
  Game.Set("RT_DOFAutoFocusField", 0.3)
  Game.Set("RT_DOFAutoFocusNear", 1)
  Game.Set("RT_DOFValue", 0.4)
end

function EffectsFrame.Aim_End()
  Game.Set("TravelFactorBegin", 5)
  Game.Set("TravelFactorEnd", 0)
  Game.Set("TravelTime", 0)
  Game.Set("TravelEndTime", 0.8)
  Game.Set("EagleViewFactorBegin", 1)
  Game.Set("EagleViewFactorEnd", 0)
  Game.Set("EagleViewTime", 0)
  Game.Set("EagleViewEndTime", 0.8)
  Game.Set("RT_EagleViewColor", Color(0, 0.05, 0, 0))
  EffectsFrame.DOF_Normal()
end

function EffectsFrame.Aim_EndTotalTime(Auto)
  if Auto == nil then
    EffectsFrame.Aim_Enable = 0
  end
end

function EffectsFrame.Zoom_Ini()
  EffectsFrame.DOF_Reload_NearDist = Game.Get("RT_DOFNearDist")
  EffectsFrame.DOF_Reload_NearRange = Game.Get("RT_DOFNearRange")
  Game.Set("RT_DOFAutoFocus", 0)
  Game.Set("RT_DOFNearDistTo", 200)
  Game.Set("RT_DOFNearDistStep", 30000)
  Game.Set("RT_DOFNearRangeTo", 50)
  Game.Set("RT_DOFNearRangeStep", 8000)
end

function EffectsFrame.Zoom_End()
  EffectsFrame.DOF_Normal()
  Game.Set("RT_DOFNearDistTo", -1)
  Game.Set("RT_DOFNearDistStep", 0)
  Game.Set("RT_DOFNearRangeTo", -1)
  Game.Set("RT_DOFNearRangeStep", 0)
end

function EffectsFrame.Travel_Quick()
  Scorer.Fade(0, Color(0, 0, 0, 255), Color(0, 0, 0, 0), 0.5)
end

function EffectsFrame.Travel_Ini()
  Scorer.Fade(0, Color(0, 0, 0, 255), Color(0, 0, 0, 0), 0.5)
  Game.Set("TravelFactorBegin", 0)
  Game.Set("TravelFactorEnd", 10)
  Game.Set("TravelTime", 0)
  Game.Set("TravelEndTime", 2)
end

function EffectsFrame.Travel_End()
  Scorer.Fade(0, Color(0, 0, 0, 255), Color(0, 0, 0, 0), 0.75)
  Game.Set("TravelFactorBegin", 0)
  Game.Set("TravelFactorEnd", 0)
  Game.Set("TravelTime", 0)
  Game.Set("TravelEndTime", 0)
end

function EffectsFrame.Headache_Ini()
  Game.Set("HeadacheEndTime", 1.5)
  Game.Set("HeadacheTime", 0)
  Game.Set("HeadacheFactorEnd", 0)
  Game.Set("HeadacheFactorBegin", 1)
  Game.Set("RT_HeadacheColor", Color(0.4, 0, 0, 1))
end

function EffectsFrame.Headache_End()
  Game.Set("HeadacheEndTime", 0)
  Game.Set("HeadacheTime", 0)
  Game.Set("HeadacheFactorEnd", 0)
  Game.Set("HeadacheFactorBegin", 0)
end

function EffectsFrame.GhostBullet_Ini()
  Game.Set("TravelFactorBegin", 0)
  Game.Set("TravelFactorEnd", 2)
  Game.Set("TravelTime", 0)
  Game.Set("TravelEndTime", 0.5)
end

function EffectsFrame.GhostBullet_Set(x)
end

function EffectsFrame.GhostBullet_End()
  Game.Set("TravelFactorBegin", 0)
  Game.Set("TravelFactorEnd", 0)
  Game.Set("TravelTime", 0)
  Game.Set("TravelEndTime", 0)
  Scorer.Fade(0, Color(0, 0, 0, 255), Color(0, 0, 0, 0), 0.5)
end

function EffectsFrame.BlackAbuse_Ini()
  Game.Set("MotionBlurOffVar", 0.025)
  Game.Set("MotionBlurEndTime", 0)
  Game.Set("MotionBlurTime", 0)
  Game.Set("MotionBlurFactorEnd", 1)
  Game.Set("MotionBlurFactorBegin", 1)
end

function EffectsFrame.BlackAbuse_Set(x)
  Game.Set("RT_CloseBlurValue", x)
  Game.Set("CloseBlurFactorBegin", 0)
  Game.Set("CloseBlurFactorEnd", x)
  Game.Set("CloseBlurTime", 0)
  Game.Set("CloseBlurEndTime", 0)
end

function EffectsFrame.BlackAbuse_Fade(x, t)
  local v = Game.Get("RT_CloseBlurValue")
  Game.Set("CloseBlurFactorBegin", v)
  Game.Set("CloseBlurFactorEnd", x)
  Game.Set("CloseBlurTime", 0)
  Game.Set("CloseBlurEndTime", t)
end

function EffectsFrame.BlackAbuse_End()
  Game.Set("MotionBlurOffVar", 0)
  Game.Set("MotionBlurEndTime", 0)
  Game.Set("MotionBlurTime", 0)
  Game.Set("MotionBlurFactorEnd", 0)
  Game.Set("MotionBlurFactorBegin", 0)
  Game.Set("CloseBlurFactorBegin", 0)
  Game.Set("CloseBlurFactorEnd", 0)
  Game.Set("CloseBlurTime", 0)
  Game.Set("CloseBlurEndTime", 0)
end

function EffectsFrame.BlackCornerShot_Activate()
  Game.Set("RT_SilhouetteColor", Color(0.5, 2, 0, 1.5))
end

function EffectsFrame.BlackGhostBullet_Activate()
  Game.Set("RT_SilhouetteColor", Color(1.5, 0.2, 0.2, 1.5))
end

function EffectsFrame.ColeFly_Ini()
  Game.Set("RT_MonitorViewValue", 0.15)
end

function EffectsFrame.ColeFlyInfiniteLoop_Set(x)
  Game.Set("HeadacheEndTime", 0)
  Game.Set("HeadacheFactorEnd", x * x * 2)
  Game.Set("RT_HeadacheColor", Color(0.3, 0.4, 0.2, 1))
end

function EffectsFrame.ColeFlyFireStorm_Set(x)
  Game.Set("HeadacheEndTime", 0)
  Game.Set("HeadacheFactorEnd", x * x * 2)
  Game.Set("RT_HeadacheColor", Color(0.8, 0.4, 0.2, 1))
end

function EffectsFrame.ColeFly_End()
  Game.Set("RT_MonitorViewValue", 0)
  Game.Set("HeadacheEndTime", 0)
  Game.Set("HeadacheTime", 0)
  Game.Set("HeadacheFactorEnd", 0)
  Game.Set("HeadacheFactorBegin", 0)
  Game.Set("TravelFactorBegin", 0)
  Game.Set("TravelFactorEnd", 0)
  Game.Set("TravelTime", 0)
  Game.Set("TravelEndTime", 0)
  Game.Set("NoiseFactor", 0)
end

function EffectsFrame.Jones_Ini()
  Scorer.Fade(0, Color(0, 0, 0, 255), Color(0, 0, 0, 0), 0.5)
  Game.Set("EagleViewFactorBegin", 0)
  Game.Set("EagleViewFactorEnd", 1)
  Game.Set("EagleViewTime", 0)
  Game.Set("EagleViewEndTime", 0.5)
  Game.Set("RT_EagleViewColor", Color(0, 0.05, 0, 0))
  Game.Set("RT_DOFAutoFocus", 250000)
  Game.Set("RT_DOFAutoFocusField", 0.4)
  Game.Set("RT_DOFAutoFocusNear", 1)
end

function EffectsFrame.Jones_End()
  Scorer.Fade(0, Color(0, 0, 0, 255), Color(0, 0, 0, 0), 0.5)
  Game.Set("EagleViewFactorBegin", 1)
  Game.Set("EagleViewFactorEnd", 0)
  Game.Set("EagleViewTime", 0)
  Game.Set("EagleViewEndTime", 0.5)
  EffectsFrame.DOF_Normal()
end

function EffectsFrame.JonesZoom_Ini()
  Game.Set("TravelFactorBegin", 0)
  Game.Set("TravelFactorEnd", 10)
  Game.Set("TravelTime", 0)
  Game.Set("TravelEndTime", 1)
end

function EffectsFrame.JonesZoom_End()
end

function EffectsFrame.JonesProjection_Ini()
  Game.Set("TravelFactorBegin", Game.Get("TravelFactorEnd"))
  Game.Set("TravelFactorEnd", 0)
  Game.Set("TravelTime", 0)
  Game.Set("TravelEndTime", 0.5)
end

function EffectsFrame.JonesProjection_End()
end

function EffectsFrame.RawlingsGhostHeal_Activate()
  Game.Set("RT_SilhouetteColor", Color(1.1, 0.9, 5, 1.5))
end

function EffectsFrame.RawlingsGhostHeal_Begin()
  Scorer.Fade(0, Color(0, 0, 0, 255), Color(0, 0, 0, 0), 0.5)
  Game.Set("EagleViewFactorBegin", 0)
  Game.Set("EagleViewFactorEnd", 0.4)
  Game.Set("EagleViewTime", 0)
  Game.Set("EagleViewEndTime", 0.5)
  Game.Set("RT_EagleViewColor", Color(0.65, 0.6, 0.9, 0))
  Game.Set("RT_DOFAutoFocus", 250000)
  Game.Set("RT_DOFAutoFocusField", 0.4)
  Game.Set("RT_DOFAutoFocusNear", 1)
end

function EffectsFrame.RawlingsGhostHeal_End()
  Scorer.Fade(0, Color(0, 0, 0, 255), Color(0, 0, 0, 0), 0.5)
  Game.Set("EagleViewFactorBegin", 1)
  Game.Set("EagleViewFactorEnd", 0)
  Game.Set("EagleViewTime", 0)
  Game.Set("EagleViewEndTime", 0.5)
  EffectsFrame.DOF_Normal()
end

function EffectsFrame.ColeAntivirus_LoopBegin()
  Game.Set("RT_SilhouetteColor", Color(1.5, 1.5, 1.5, 2))
end

function EffectsFrame.ColeAntivirus_LoopEnd()
  Game.Set("RT_SilhouetteColor", Color(1.5, 1.5, 1.5, 0.5))
end

EffectsFrame.LastTime1 = nil
EffectsFrame.LastTime2 = nil
EffectsFrame.RT_HDRBrightThreshold = 0
EffectsFrame.RT_HDRContrast = 0

function EffectsFrame.GameOver(isRoss)
  EffectsFrame.RT_Reset()
  if isRoss then
    Scorer.Fade(0, Color(255, 0, 0, 120), Color(1, 0, 0, 0), 1.5)
  end
  EffectsFrame.RT_HDRBrightThreshold = Game.Get("RT_HDRBrightThreshold")
  EffectsFrame.RT_HDRContrast = Game.Get("RT_HDRContrast")
  EffectsFrame.LastTime1 = nil
  EffectsFrame.LastTime2 = nil
  Game.AddScheduledFunc(Game.GetTime() + 1, "", "EffectsFrame.GameOver_OutSchedule1")
  Game.AddScheduledFunc(Game.GetTime() + 1.5, "", "EffectsFrame.GameOver_OutSchedule2")
  Game.Set("RT_HeadacheColor", Color(0.4, 0, 0, 1))
  Game.Set("CloseBlurFactorBegin", 0)
  Game.Set("CloseBlurFactorEnd", 8)
  Game.Set("CloseBlurTime", 0)
  Game.Set("CloseBlurEndTime", 2.5)
  Game.Set("HeadacheFactorBegin", 0)
  Game.Set("HeadacheFactorEnd", 1)
  Game.Set("HeadacheTime", 0)
  Game.Set("HeadacheEndTime", 3)
  Game.AddScheduledFunc(Game.GetTime() + 4, "", "EffectsFrame.GameOver_FadeOut")
  Game.AddScheduledFunc(Game.GetTime() + 6, "", "EffectsFrame.GameOver_Over")
  Sound.Play("FP_FliesGameOver", 1)
end

function EffectsFrame.GameOver_FadeOut()
  Scorer.Fade(0, Color(0, 0, 0, 0), Color(0, 0, 0, 255), 1)
end

function EffectsFrame.GameOver_Over()
  Game.Set("RT_HDRBrightThreshold", EffectsFrame.RT_HDRBrightThreshold)
  Game.Set("RT_HDRContrast", EffectsFrame.RT_HDRContrast)
  Menu.Init()
end

function EffectsFrame.GameOver_OutSchedule1()
  local time = Game.GetTime()
  if EffectsFrame.LastTime1 == nil then
    EffectsFrame.LastTime1 = time
  end
  local diff = time - EffectsFrame.LastTime1
  EffectsFrame.LastTime1 = time
  local t = Game.Get("RT_HDRBrightThreshold")
  t = t - diff * 0.03
  if 0 < t then
    Game.Set("RT_HDRBrightThreshold", t)
    Game.AddScheduledFunc(Game.GetTime() + 0, "", "EffectsFrame.GameOver_OutSchedule1")
  else
    Game.Set("RT_HDRBrightThreshold", 0)
  end
end

function EffectsFrame.GameOver_OutSchedule2()
  local time = Game.GetTime()
  if EffectsFrame.LastTime2 == nil then
    EffectsFrame.LastTime2 = time
  end
  local diff = time - EffectsFrame.LastTime2
  EffectsFrame.LastTime2 = time
  local t = Game.Get("RT_HDRContrast")
  t = t + diff * 0.25
  if t < 5 then
    Game.Set("RT_HDRContrast", t)
    Game.AddScheduledFunc(Game.GetTime() + 0, "", "EffectsFrame.GameOver_OutSchedule2")
  else
    Game.Set("RT_HDRContrast", 5)
  end
end

EffectsFrame.MenuLast = false

function EffectsFrame.MenuIn()
  if EffectsFrame.MenuLast ~= false then
    return
  end
  EffectsFrame.MenuLast = true
end

function EffectsFrame.MenuOut()
  if EffectsFrame.MenuLast ~= true then
    return
  end
  EffectsFrame.MenuLast = false
end

function EffectsFrame.DreamCameraSetup()
  Game.Set("EagleViewFactorEnd", 0.2)
  Game.Set("RT_AberrationValue", 0.25)
  Game.Set("RT_AberrationFPS", 2)
end

function EffectsFrame.BackFadeClear()
  Game.DeleteScheduledFuncs("ClearFadeOut")
end

function EffectsFrame.BackFadeIn()
  Game.AddScheduledFunc(Game.GetTime() + 5, "ClearFadeOut", "EffectsFrame.BackFadeClear")
end

function EffectsFrame.BackFadeOut()
  Game.AddScheduledFunc(Game.GetTime() + 5, "ClearFadeOut", "EffectsFrame.BackFadeClear")
end
