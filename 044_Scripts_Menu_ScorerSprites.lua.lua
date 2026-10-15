ScorerSprites.daggerIdx = 23
ScorerSprites.vialIdx = 24
ScorerSprites.fairyIdx = 63
ScorerSprites.cristalFullIdx = 46
ScorerSprites.cristalFirstPartIdx = 48
ScorerSprites.staminaFirstPart = 97
ScorerSprites.staminaPartFullIdx = 100
ScorerSprites.staminaPartFullGlowIdx = 101

function ScorerSprites.main()
  Game.Set("OnGemRenderedCallback", "ScorerSprites.OnGemRendered")
  Game.Set("OnAllGemsRenderedCallback0", "ScorerSprites.OnAllGemsRendered0")
  Game.Set("OnAllGemsRenderedCallback1", "ScorerSprites.OnAllGemsRendered1")
  Game.Set("OnAllGemsRenderedCallback2", "ScorerSprites.OnAllGemsRendered2")
  Game.Set("OnTravelBookRenderedCallback", "ScorerSprites.OnTravelBookRendered")
  Game.Set("OnShieldRenderedCallback", "ScorerSprites.OnShieldRendered")
  Game.Set("OnTrialRenderedCallback", "ScorerSprites.OnTrialRendered")
  Game.Set("OnTrialRenderedCallback2", "ScorerSprites.OnTrialRendered2")
end

ScorerSprites.Particles = nil
ScorerSprites.Emitters = {}

function ScorerSprites.AddParticles()
  ScorerSprites.Particles = Scorer.NewItem(0, "Particle", "Particle")
  ScorerSprites.Particles:AddSprite("WHITE", "2D/White.alpha.tga", "Blend", true, false)
  ScorerSprites.Particles:AddSprite("HUD", "2D/HUD/HUD.alpha.tga", "Blend", false, true)
  ScorerSprites.Particles:AddSprite("HUDAlpha", "2D/HUD/HUD.alpha.tga", "AddAlpha", false, true)
  if Menu.bUseFocusScorer then
    ScorerSprites.Particles:AddSprite("HUD2", "2D/HUD/HUD2.alpha.tga", "Blend", false, true)
    ScorerSprites.Particles:AddSprite("HUD2Alpha", "2D/HUD/HUD2.alpha.tga", "AddAlpha", false, true)
  end
end

function ScorerSprites.AddEmitter(Name, Pos, Ratio, Rotation, Amplitude, Lifespan, Velocity, Scale, Color1, Color2, idx)
  ScorerSprites.Emitters[Name] = {
    Pos = Pos,
    Active = false,
    Ratio = Ratio,
    Rotation = Rotation,
    Amplitude = Amplitude,
    Lifespan = Lifespan,
    Velocity = Velocity,
    Scale = Scale,
    Color1 = Color1,
    Color2 = Color2,
    idx = idx
  }
end

function ScorerSprites.StartEmitter(Name)
  if ScorerSprites.Emitters[Name] and ScorerSprites.Emitters[Name].Active == false then
    ScorerSprites.Emitters[Name].Active = true
    ScorerSprites.EmitFrom(Name)
  end
end

function ScorerSprites.StopEmitter(Name)
  if ScorerSprites.Emitters[Name] and ScorerSprites.Emitters[Name].Active == true then
    ScorerSprites.Emitters[Name].Active = false
  end
end

function ScorerSprites.StopAllEmitters()
  for name in pairs(ScorerSprites.Emitters) do
    ScorerSprites.Emitters[name].Active = false
  end
end

function ScorerSprites.EmitFrom(Name)
  if ScorerSprites.Emitters[Name] and ScorerSprites.Emitters[Name].Active == true then
    local tmpEmitter = ScorerSprites.Emitters[Name]
    if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
      local tmpMax = math.floor(tmpEmitter.Ratio / 100)
      if Game.Rand(0, 100) < tmpEmitter.Ratio % 10 * 10 then
        tmpMax = tmpMax + 1
      end
      for i = 1, tmpMax do
        local T = tmpEmitter.Lifespan
        local p = ScorerSprites.Particles:AddParticle("HUDAlpha", T, true)
        p.Pos = tmpEmitter.Pos
        p:SetIdx(tmpEmitter.idx)
        p.Color = tmpEmitter.Color1
        p.Size = p.Size * Game.Rand(0.5, 0.125) * tmpEmitter.Scale
        p.Rot = Game.Rand(-180, 180)
        p:CopyFrom()
        p:CopyTo()
        p.oTo.Pos = tmpEmitter.Pos + V2D(0, tmpEmitter.Velocity * tmpEmitter.Lifespan):rot(V3D(0, 0, Game.Rand(-tmpEmitter.Amplitude * 180, tmpEmitter.Amplitude * 180) - 90 - tmpEmitter.Rotation))
        p.oFrom.Time = T
        p.oTo.Color = tmpEmitter.Color2
        p.oTo.Rot = p.Rot + Game.Rand(-360, 360)
        p.Func = "a"
      end
    end
    Scorer.AddScheduledFunc(0, 0.01, "", "ScorerSprites.EmitFrom", Name)
  end
end

ScorerSprites.BossLifePos = Scorer.GetScorerPos("BossLifeFrame")
ScorerSprites.BossHead = Game.GVar("HUDBossHead")
ScorerSprites.BossHead_Last = {"", ""}
ScorerSprites.BossHeadData = {
  blackknight = {
    {
      98,
      V2D(53, 78),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(76, 78),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  butcher = {
    {
      98,
      V2D(52, 45),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(74, 43),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  darklord1 = {
    {
      98,
      V2D(49, 51),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(75, 51),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  darklord1l = {
    {
      98,
      V2D(46, 57),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(76, 57),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  darklord2v = {
    {
      98,
      V2D(51, 76),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(74, 76),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  dracolich = {
    {
      98,
      V2D(79, 47),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  elitevampa = {
    {
      98,
      V2D(50, 67),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(77, 67),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  elitevampb = {
    {
      98,
      V2D(49, 67),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(76, 67),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  gravedigger = {},
  iceelemental = {
    {
      93,
      V2D(50, 60),
      V2D(0.1, 0.5),
      V2D(0.1, 0.1)
    },
    {
      93,
      V2D(78, 60),
      V2D(0.1, 0.5),
      V2D(0.1, 0.1)
    }
  },
  mechanicalm = {
    {
      98,
      V2D(67, 78),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  necromancer = {
    {
      98,
      V2D(53, 48),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(74, 50),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  ogre = {
    {
      98,
      V2D(44, 55),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(82, 55),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  satan = {
    {
      98,
      V2D(52, 73),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(74, 73),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  scarecrow = {
    {
      98,
      V2D(51, 54),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(83, 54),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  silverwarrior = {
    {
      98,
      V2D(52, 60),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(74, 60),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  stoneidol = {
    {
      98,
      V2D(51, 53),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(78, 53),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  trollbig = {
    {
      93,
      V2D(43, 50),
      V2D(0.1, 0.5),
      V2D(0.1, 0.1)
    },
    {
      93,
      V2D(85, 50),
      V2D(0.1, 0.5),
      V2D(0.1, 0.1)
    }
  },
  warthog = {
    {
      98,
      V2D(45, 47),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(80, 47),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  },
  witch = {
    {
      98,
      V2D(45, 46),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    },
    {
      98,
      V2D(80, 46),
      V2D(0.5, 0.5),
      V2D(0.25, 0.25)
    }
  }
}

function ScorerSprites.ScorerBossDamage(prev, new)
  if new < prev then
    ScorerSprites.ScorerBossDamageFX(prev, new)
  else
    ScorerSprites.ScorerBossGotLifeFX(prev, new)
  end
end

function ScorerSprites.ScorerBossGotLifeFX(prev, new)
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    local srg = Game.Get("ScorerBossRegenerationTime") + 0.2
    for i = 1, 10 do
      local t = 0.2 + 0.08 * i
      local p = ScorerSprites.Particles:AddParticle("HUDAlpha", t * srg, true)
      local minval = ScorerSprites.BossLifePos.Pos + V2D(150, 18)
      p.Pos = minval + V2D(0, Game.Rand(-5, 5))
      p.Color = Color(255, 255, 255, 255)
      p:SetIdx(109)
      p.Pivot = V2D(0.75, 0.5)
      p.Size = p.Size / 4
      p.Rot = 0
      p:CopyFrom()
      p:CopyTo()
      p.oTo.Pos = p.Pos - V2D(120 * (prev + (new - prev) * t), 0)
      p.oFrom.Size = V2D(p.Size.x / 6, p.Size.y)
      p.oFrom.Time = p.Time - Game.Rand(0, 0.15)
      p.oTo.Color = Color(255, 255, 127, 64)
      p.Func = "aa"
    end
    ScorerSprites.ScorerBossEyes(255, 255, 255, srg)
  end
end

function ScorerSprites.ScorerBossDamageFX(prev, new)
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    local p = ScorerSprites.Particles:AddParticle("HUDAlpha", 0.5, true)
    p:SetIdx(8)
    p.Pivot = V2D(0.5, 0.5)
    p.Color = Color(255, 0, 0, 255)
    p.Size = p.Size * 0.5
    p.Pos = ScorerSprites.BossLifePos.Pos + p.Size
    p:CopyFrom()
    p:CopyTo()
    p.oFrom.Color = Color(255, 0, 0, 255)
    p.oTo.Color = Color(255, 0, 0, 0)
    p.oTo.Size = p.Size * V2D(1, 2)
    p.oFrom.Time = 0.5
    p.Func = "iai"
    ScorerSprites.ScorerBossEyes(255, 0, 0, 0.5)
  end
end

function ScorerSprites.ScorerBossEyes(r, g, b, time)
  local Head = ScorerSprites.BossHead.Value
  if Head ~= ScorerSprites.BossHead_Last[1] then
    if Head == "" then
      ScorerSprites.BossHead_Last = {"", ""}
    else
      ScorerSprites.BossHead_Last = {
        Head,
        string.lower(Game.Split(Game.Split(Game.Split(Head, "/")[4], ".")[1], "_")[3])
      }
    end
  end
  local d = ScorerSprites.BossHeadData[ScorerSprites.BossHead_Last[2]]
  if d then
    for i = 1, #d do
      local di = d[i]
      local ps = ScorerSprites.BossLifePos.Pos + V2D(145, -15)
      p = ScorerSprites.Particles:AddParticle("HUDAlpha", time, true)
      p.Pos = ps + di[2] / 2
      p:SetIdx(di[1])
      local si = p.Size
      p.Size = si * di[3]
      p:CopyFrom()
      p:CopyTo()
      p.oTo.Color = Color(r, g, b, 0)
      p.oFrom.Size = si * di[4]
      p.oFrom.Color = Color(r, g, b, 255)
      p.oFrom.Time = time
      p.Func = "iai"
    end
  end
end

ScorerSprites.FocusScorerPos = Scorer.GetScorerPos("FocusScorerPos")

function ScorerSprites.FocusRuneOn(x, y, siz, id, inv)
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    local p = ScorerSprites.Particles:AddParticle("HUD2Alpha", 0.25)
    p:SetIdx(id)
    if inv == 0 then
      local uvmin = V2D(p.UVMax.x, p.UVMin.y)
      local uvmax = V2D(p.UVMin.x, p.UVMax.y)
      p.UVMin = uvmin
      p.UVMax = uvmax
    end
    p.Color = Color(255, 255, 255, 128)
    p.Size = p.Size * V2D(siz, siz)
    p.Pos = V2D(x, y)
    p:CopyFrom()
    p:CopyTo()
    p.oFrom.Time = 0.25
    p.oFrom.Color = Color(255, 255, 255, 64)
    p.oFrom.Size = p.Size * V2D(4, 4)
    p.Func = "a"
  end
end

function ScorerSprites.FocusRuneOff(x, y, siz, id, inv)
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType and LightPower.PowerUse.Value == 0 and DarkPower.PowerUse.Value == 0 then
    local p = ScorerSprites.Particles:AddParticle("HUD2", 0.5)
    p:SetIdx(id)
    if inv == 0 then
      local uvmin = V2D(p.UVMax.x, p.UVMin.y)
      local uvmax = V2D(p.UVMin.x, p.UVMax.y)
      p.UVMin = uvmin
      p.UVMax = uvmax
    end
    p.Size = p.Size * V2D(siz, siz)
    p.Pos = V2D(x, y)
    p:CopyFrom()
    p:CopyTo()
    p.oFrom.Time = 0.5
    p.oFrom.Color = Color(255, 128, 64, 255)
    p.oTo.Color = Color(0, 0, 0, 0)
    p.oTo.Size = p.Size * V2D(1.5, 1.5)
    p.Func = "q"
  end
end

function ScorerSprites.StaminaMantain()
end

ScorerSprites.FocusFXData = {
  {
    sfrom = 5,
    sto = 0.5,
    idx = 26,
    rot = -90,
    time = 0.5,
    fcolor = Color(255, 255, 255, 255),
    tcolor = Color(255, 255, 255, 0),
    func = "iai"
  },
  {
    sfrom = 5,
    sto = 0.75,
    idx = 26,
    rot = 90,
    time = 0.75,
    fcolor = Color(255, 255, 255, 255),
    tcolor = Color(255, 255, 255, 0),
    func = "iai"
  },
  {
    sfrom = 0.75,
    sto = 4,
    idx = 27,
    rot = 90,
    time = 0.75,
    fcolor = Color(255, 255, 0, 255),
    tcolor = Color(255, 255, 255, 0),
    func = "a"
  },
  {
    sfrom = 0.75,
    sto = 4,
    idx = 25,
    rot = -90,
    time = 0.75,
    fcolor = Color(255, 0, 0, 255),
    tcolor = Color(255, 255, 0, 0),
    func = "a"
  }
}

function ScorerSprites.StaminaFocusActive()
  if Game.Get("StickGameAActive") == 1 or string.find(player.Action, "Saw") then
    return
  end
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    if not Game.ExistsScheduledFunc("QuickConsole.ShowtimeLoop") and not player.uData.GodMode then
      Scorer.PlayScorerSound("Focus_On", 1, 0)
    end
    for i = 1, #ScorerSprites.FocusFXData do
      local v = ScorerSprites.FocusFXData[i]
      local p = ScorerSprites.Particles:AddParticle("HUD2Alpha", v.time)
      p:SetIdx(v.idx)
      p.Size = p.Size
      p.Pos = ScorerSprites.FocusScorerPos.Pos
      p:CopyFrom()
      p:CopyTo()
      p.oTo.Color = v.tcolor
      p.oFrom.Color = v.fcolor
      p.oFrom.Size = p.Size * V3D(v.sfrom, v.sfrom)
      p.oTo.Size = p.Size * V3D(v.sto, v.sto)
      p.oTo.Rot = v.rot
      p.oFrom.Time = v.time
      p.Func = v.func
    end
    for i = 0, 7 do
      local t = 0.5 + (1 - i) * 0.025
      local p = ScorerSprites.Particles:AddParticle("HUD2Alpha", t)
      p:SetIdx(25)
      p.Size = p.Size * V3D(0.25, 0.25)
      p.Pos = ScorerSprites.FocusScorerPos.Pos + V2D(i * 11 + 25, 0)
      p:CopyFrom()
      p:CopyTo()
      p.oTo.Color = Color(255, 255, 128, 255)
      p.oFrom.Color = Color(255, 128, 0, 0)
      p.oFrom.Size = p.Size * V3D(4, 4)
      p.oFrom.Time = 0.5
      p.Func = "is"
      local p = ScorerSprites.Particles:AddParticle("HUD2Alpha", t)
      p:SetIdx(25)
      p.Size = p.Size * V3D(0.25, 0.25)
      p.Pos = ScorerSprites.FocusScorerPos.Pos - V2D(i * 11 + 25, 0)
      p:CopyFrom()
      p:CopyTo()
      p.oTo.Color = Color(255, 255, 128, 255)
      p.oFrom.Color = Color(255, 128, 0, 0)
      p.oFrom.Size = p.Size * V3D(4, 4)
      p.oFrom.Time = 0.5
      p.Func = "is"
    end
  end
end

function ScorerSprites.StaminaFocusLose()
  if Game.Get("StickGameAActive") == 1 or string.find(player.Action, "Saw") then
    return
  end
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    Scorer.PlayScorerSound("Focus_Off", 1, 0)
    for i = 0, 7 do
      local t = 0.5 + i * 0.025
      local p = ScorerSprites.Particles:AddParticle("HUD2", t)
      p:SetIdx(25)
      p.Size = p.Size * V3D(0.25, 0.25)
      p.Pos = ScorerSprites.FocusScorerPos.Pos + V2D(i * 11 + 25, 0)
      p:CopyFrom()
      p:CopyTo()
      p.oTo.Color = Color(128, 64, 0, 128)
      p.oFrom.Color = Color(0, 0, 0, 0)
      p.oFrom.Size = p.Size * V3D(4, 4)
      p.oFrom.Time = 0.5
      p.Func = "is"
      local p = ScorerSprites.Particles:AddParticle("HUD2", t)
      p:SetIdx(25)
      p.Size = p.Size * V3D(0.25, 0.25)
      p.Pos = ScorerSprites.FocusScorerPos.Pos - V2D(i * 11 + 25, 0)
      p:CopyFrom()
      p:CopyTo()
      p.oTo.Color = Color(128, 64, 0, 128)
      p.oFrom.Color = Color(0, 0, 0, 0)
      p.oFrom.Size = p.Size * V3D(4, 4)
      p.oFrom.Time = 0.5
      p.Func = "is"
    end
  end
end

ScorerSprites.GCPos = Scorer.GetScorerPos("LifeFrame")

function ScorerSprites.GotKey(Pos, Rad, Col1, Col2, Max, idx)
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    for i = 1, Max do
      local T = Game.Rand(1, 2)
      local p = ScorerSprites.Particles:AddParticle("HUDAlpha", T, true)
      p.Pos = Pos + V2D(Game.Rand(-Rad, Rad), 0):rot(V3D(0, 0, Game.Rand(-180, 180)))
      p:SetIdx(idx)
      p.Color = Col1
      p.Size = p.Size * Game.Rand(0.5, 0.125)
      p.Rot = Game.Rand(-180, 180)
      p:CopyFrom()
      p:CopyTo()
      p.oTo.Pos = p.Pos + V2D(Game.Rand(-Rad, Rad), Game.Rand(-30, -50))
      p.oFrom.Time = T
      p.oTo.Color = Col2
      p.oTo.Rot = p.Rot + Game.Rand(-360, 360)
      p.Func = "a"
    end
  end
end

function ScorerSprites.RadialFX(Pos, Rad, Col1, Col2, Max, idx, Noise)
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    for i = 1, Max do
      local pos0, pos1
      local T = 1 + Game.Rand(0, Noise)
      local p = ScorerSprites.Particles:AddParticle("HUDAlpha", T, true)
      if Rad < 0 then
        pos0 = Pos + V2D(Rad + Game.Rand(-Noise * 10, Noise * 10), 0):rot(V3D(0, 0, 360 * i / Max))
        pos1 = Pos
      else
        pos0 = Pos
        pos1 = Pos + V2D(Rad + Game.Rand(-Noise * 10, Noise * 10), 0):rot(V3D(0, 0, 360 * i / Max))
      end
      p.Pos = pos0
      p:SetIdx(idx)
      p.Color = Col1
      p.Size = p.Size * Game.Rand(0.5, 0.125)
      p.Rot = Game.Rand(-180, 180)
      p:CopyFrom()
      p:CopyTo()
      p.oTo.Pos = pos1
      p.oFrom.Time = T
      p.oTo.Color = Col2
      p.oTo.Rot = p.Rot + Game.Rand(-360, 360)
      p.Func = "iaaai"
    end
  end
end

ScorerSprites.DaggerPos = Scorer.GetScorerPos("DaggerSmallNormalSelected")
ScorerSprites.VialPos = Scorer.GetScorerPos("VialSmallNormalSelected")
ScorerSprites.FairyPos = Scorer.GetScorerPos("FairySmallNormalSelected")
ScorerSprites.CrystalPos = Scorer.GetScorerPos("CristalSmallNormalSelected")

function ScorerSprites.GotDarkTgPos()
  return ScorerSprites.DarkPos.Pos + ScorerSprites.DarkPosHead.LocalPos + ScorerSprites.DarkPosSize
end

function ScorerSprites.GotLightTgPos()
  return ScorerSprites.LightPos.Pos + ScorerSprites.LightPosHead.LocalPos + ScorerSprites.LightPosSize
end

function ScorerSprites.GotLifeTgPos()
  local b = player.oActCtrl.oActClass.uData.Belmont
  return ScorerSprites.GCPos.Pos + V2D(38 + 120 * player.Life / (b.BaseLife + b.LifeInc * 5), 24)
end

ScorerSprites.ShowFlow = false

function ScorerSprites.GotLife(Pos, points)
  ScorerSprites.GotFlow(Pos, "GotLifeTgPos", 64, 255, 64, 1, "ScorerSprites.StepOnScorerFlow")
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    local t = Game.GetTime()
    if ScorerSprites.GotLifeTime == nil or ScorerSprites.GotLifeTime - t < 0 then
      Sound.Play("EnergyUp_10", 1, 0)
      ScorerSprites.GotLifeTime = t + 0.25
    end
    for i = 1, clamp(0, 10, points) do
      local p = ScorerSprites.Particles:AddParticle("HUDAlpha", Game.Rand(0.5, 0.75), true)
      p.Pos = ScorerSprites.GotLifeTgPos() + V2D(-2, Game.Rand(-5, 5))
      p.Color = Color(255, 255, 255, 255)
      p:SetIdx(109)
      p.Pivot = V2D(0.75, 0.5)
      p.Size = p.Size / 4
      p.Rot = 180
      p:CopyFrom()
      p:CopyTo()
      p.oFrom.Pos = V2D(ScorerSprites.GCPos.Pos.x + 38, p.Pos.y)
      p.oFrom.Size = V2D(p.Size.x / 6, p.Size.y)
      p.oFrom.Time = p.Time - Game.Rand(0, 0.15)
      p.oTo.Time = 0
      p.oTo.Color = Color(255, 255, 127, 64)
      p.Func = "iai"
    end
  end
end

function ScorerSprites.GotFlow(Pos, callbackname, r, g, b, time, NextFunc)
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType and ScorerSprites.ShowFlow then
    Game.Set("ScorerActive", 1)
    local x, y = Scorer.Get2DPos(Pos)
    local pPos = V2D(x, y)
    local TgtPos2 = ScorerSprites[callbackname]()
    local TgtPos = (TgtPos2 + V2D(x, y)) * V2D(0.5, 0.5) + V2D(Game.Rand(-50, 50), Game.Rand(-50, 50))
    local r1 = Game.NormAng(V3D(TgtPos.y - pPos.y, 0, TgtPos.x - pPos.x):getrot().y + 180)
    local r2 = Game.NormAng(V3D(TgtPos2.y - TgtPos.y, 0, TgtPos2.x - TgtPos.x):getrot().y + 180)
    local p = ScorerSprites.Particles:AddParticle("HUDAlpha", Game.Get("BarSpeedModifier"), true)
    p.Pos = pPos
    p.Color = Color(r, g, b, 255)
    p.uData.TgtCall = callbackname
    p:SetIdx(109)
    p.Pivot = V2D(0.75, 0.5)
    p:CopyFrom()
    p:CopyTo()
    p.oFrom.Size = p.Size * V3D(0.125, 0.25)
    p.oTo.Size = p.Size * V3D(0.5, 0.25)
    p.oFrom.Rot = r1
    p.oFrom.Color = Color(r, g, b, 128)
    p.oTo.Rot = r1 + Game.NormAng(r2 - r1) / 2
    p.oTo.Pos = TgtPos
    p.Func = "a"
    p.Time = time
    p.oFrom.Time = p.Time
    p.oTo.Time = p.Time / 2
    p.uData.TgtCall = callbackname
    p.uData.NextFunc = NextFunc
    p.OnEndStep = "ScorerSprites.StepToScorerFlow"
    local p = ScorerSprites.Particles:AddParticle("HUDAlpha", Game.Get("BarSpeedModifier"), true)
    p.Pos = pPos
    p.Color = Color(r, g, b, 255)
    p:SetIdx(108)
    p.Size = p.Size * V3D(0.3, 0.3)
    p.Pivot = V2D(0.5, 0.5)
    p:CopyFrom()
    p:CopyTo()
    p.oFrom.Rot = 1024
    p.oTo.Pos = TgtPos
    p.Func = "a"
    p.Time = time
    p.oFrom.Time = p.Time
    p.oTo.Time = p.Time / 2
    p.uData.TgtCall = callbackname
    p.OnEndStep = "ScorerSprites.StepToScorerFlow"
  end
end

function ScorerSprites.StepToScorerFlow(p)
  p:CopyFrom()
  p.oFrom.Time = p.Time
  p.oTo.Time = 0
  local TgtPos = ScorerSprites[p.uData.TgtCall]()
  p.oTo.Pos = ScorerSprites[p.uData.TgtCall]()
  p.Func = "iai"
  if p.uData.NextFunc then
    p.OnEndStep = p.uData.NextFunc
    p.oTo.Rot = p.oFrom.Rot + Game.NormAng(180 + V3D(TgtPos.y - p.Pos.y, 0, TgtPos.x - p.Pos.x):getrot().y - p.oFrom.Rot)
    p.oTo.Size = p.Size * V3D(0.5, 1)
  else
    p.oTo.Rot = -1024
  end
  Game.Set("ScorerActive", 1)
end

function ScorerSprites.StepOnScorerFlow(p)
  local P = ScorerSprites.Particles:AddParticle("HUDAlpha", 0.5)
  P.Pos = ScorerSprites[p.uData.TgtCall]()
  P.Rot = 0
  P:SetIdx(3)
  P.Size = P.Size / 3
  P:CopyFrom()
  P:CopyTo()
  P.oTo.Size = p.Size * 4
  P.oTo.Color = Color(P.Color.x, P.Color.y, P.Color.z, 0)
  P.oFrom.Time = 0.5
  P.Func = "iaai"
  Game.Set("ScorerActive", 1)
end

function ScorerSprites.GotFullCrystal(Pos)
  ScorerSprites.GotItem(Pos, 1, ScorerSprites.cristalFullIdx, 0, ScorerSprites.CrystalPos.Pos + V2D(32, 10))
end

function ScorerSprites.GotCrystal(Pos, n)
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    local pos = V2D(320, 130)
    local p = ScorerSprites.GotItem(Pos, 1, ScorerSprites.cristalFirstPartIdx, 0, ScorerSprites.CrystalPos.Pos + V2D(32, 10))
    p.oTo.Pos = pos
    p.oFrom.Pos = pos
    p.oFrom.Rot = p.oTo.Rot
    p.uData.Flash = true
    p.uData.Full = n == 4
    p.OnEndStep = "ScorerSprites.StepToScorerFlash"
    p.uData.Increment = true
    for i = 1, n - 1 do
      local P = ScorerSprites.GotItem(Pos, 1, ScorerSprites.cristalFirstPartIdx + i, 0, ScorerSprites.CrystalPos.Pos + V2D(32, 10))
      P.oFrom.Pos = pos
      P.oTo.Pos = pos
      P.oTo.Time = p.oTo.Time
      P.oFrom.Rot = p.oTo.Rot
      P.OnEndStep = "ScorerSprites.StepToScorerFlash"
      if n == 4 then
        P.uData.FadeOut = true
      end
    end
    local P = ScorerSprites.GotItem(Pos, 1, ScorerSprites.cristalFirstPartIdx + n, 0, ScorerSprites.CrystalPos.Pos + V2D(32, 10))
    P.oTo.Pos = pos
    P.oTo.Time = p.oTo.Time
    P.OnEndStep = "ScorerSprites.StepToScorerFlash"
    if n == 4 then
      P.uData.FadeOut = true
    end
  end
end

function ScorerSprites.StepToScorerFlash(p)
  if p.uData.Flash then
    local P = ScorerSprites.Particles:AddParticle("HUDAlpha", 0.5)
    P.Pos = p.Pos
    P.Rot = p.Rot
    P:SetIdx(45)
    P.Size = p.Size
    P:CopyFrom()
    P:CopyTo()
    P.oTo.Size = p.Size * 1.5
    P.oTo.Color = Color(255, 255, 255, 0)
    P.oFrom.Time = 0.5
    P.Func = "iaai"
    if p.uData.Full then
      p.uData.idx = ScorerSprites.cristalFullIdx
      p:SetIdx(ScorerSprites.cristalFullIdx)
      p.Size = P.oFrom.Size
      p:CopyFrom()
      p:CopyTo()
    end
  end
  if p.uData.FadeOut then
    p:CopyFrom()
    p:CopyTo()
    p.Time = 0.5
    p.oFrom.Time = 0.5
    p.oTo.Time = 0
    p.oTo.Color = Color(255, 255, 255, 0)
  else
    p.Time = 1
    p:CopyFrom()
    p.OnEndStep = "ScorerSprites.StepToScorer"
  end
end

function ScorerSprites.GotDagger(Pos, n, markLast, markFirst)
  if markLast and markLast == -1 then
    markLast = WeaponsDagger.MaxDaggersInc
  end
  ScorerSprites.GotItem(Pos, n, ScorerSprites.daggerIdx, 0, ScorerSprites.DaggerPos.Pos + V2D(32, 10), nil, markLast, markFirst)
end

function ScorerSprites.GotVial(Pos, n, markLast, markFirst)
  if markLast and markLast == -1 then
    markLast = WeaponsVial.MaxVialsInc
  end
  ScorerSprites.GotItem(Pos, n, ScorerSprites.vialIdx, 0, ScorerSprites.VialPos.Pos + V2D(32, 10), nil, markLast, markFirst)
end

function ScorerSprites.GotFairy(Pos, n, markLast, markFirst)
  if markLast and markLast == -1 then
    markLast = WeaponsFairy.MaxFairiesInc
  end
  ScorerSprites.GotItem(Pos, n, ScorerSprites.fairyIdx, 0, ScorerSprites.FairyPos.Pos + V2D(32, 10), nil, markLast, markFirst)
end

function ScorerSprites.GotItem(Pos, n, idx, Rot, Target, col, markLast, markFirst)
  col = defparam(col, Color(255, 255, 255, 0))
  local p
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    Game.Set("ScorerActive", 1)
    for i = 1, n do
      p = ScorerSprites.Particles:AddParticle("HUD", 0.75 + 0.2 * i, true)
      local x, y = Scorer.Get2DPos(Pos)
      p.Pos = V2D(x, y)
      p:SetIdx(idx)
      p.Size = p.Size / 2
      p:CopyFrom()
      p:CopyTo()
      p.oFrom.Rot = Game.Rand(-180, 180) + Rot
      p.oFrom.Size = p.Size / 2
      p.oFrom.Color = col + Color(0, 0, 0, 64)
      p.oTo.Rot = Rot
      p.oTo.Pos = V2D(Game.Rand(200, 440), Game.Rand(100, 140))
      p.oTo.Color = col + Color(0, 0, 0, 255)
      p.Func = "iai"
      p.oFrom.Time = p.Time
      p.oTo.Time = Game.Rand(p.Time / 3, p.Time * 2 / 3)
      p.OnEndStep = "ScorerSprites.StepToScorer"
      p.uData.Target = Target
      p.uData.idx = idx
      p.uData.Size = p.oFrom.Size / 2
      if markFirst and markFirst >= i then
        p.uData.IsMarkedFirst = true
      end
      if markLast and i > n - markLast then
        p.uData.IsMarkedLast = true
      end
      if idx == ScorerSprites.daggerIdx then
        p.uData.Type = "Dag"
        Sound.Play("Sound_Up", Game.Get("SoundVolUp"))
      elseif idx == ScorerSprites.vialIdx then
        p.uData.Type = "Vial"
        Sound.Play("Sound_Up", Game.Get("SoundVolUp"))
      elseif idx == ScorerSprites.fairyIdx then
        p.uData.Type = "Hada"
        Sound.Play("Sound_Up", Game.Get("SoundVolUp"))
      elseif idx == ScorerSprites.cristalFullIdx then
        p.uData.Type = "CrisFull"
        Sound.Play("Sound_Up", Game.Get("SoundVolUp"))
      else
        p.uData.Type = "Cris"
        Sound.Play("Sound_Up_Cristal", Game.Get("SoundVolUp"))
      end
    end
  end
  return p
end

function ScorerSprites.StepToScorer(p)
  p:CopyFrom()
  p.oFrom.Time = p.Time
  p.oTo.Time = 0
  p.oTo.Pos = p.uData.Target
  p.oTo.Size = p.uData.Size
  p.Func = "a"
  p.OnEndStep = "ScorerSprites.StepOnScorer"
end

function ScorerSprites.StepOnScorer(p)
  local P = ScorerSprites.Particles:AddParticle("HUDAlpha", 0.5)
  P.Pos = p.Pos
  P.Rot = p.Rot
  P:SetIdx(p.uData.idx)
  P.Size = p.Size
  P:CopyFrom()
  P:CopyTo()
  P.oTo.Size = p.Size * 4
  P.oTo.Color = Color(P.Color.x, P.Color.y, P.Color.z, 0)
  P.oFrom.Time = 0.5
  P.Func = "iaai"
  local num = Game.Get("SoundRndLock")
  local i = math.floor(Game.Rand(1, num + 0.999))
  if p.uData.idx == ScorerSprites.cristalFullIdx then
    Sound.Play(Game.GVar("SoundNameLockCrisFull").Value, Game.Get("SoundVolLock"))
  elseif p.uData.idx >= ScorerSprites.cristalFirstPartIdx and p.uData.idx < ScorerSprites.cristalFirstPartIdx + 3 then
    Sound.Play(Game.GVar("SoundNameLockCris").Value, Game.Get("SoundVolLock"))
  else
    Sound.Play(Game.GVar("SoundNameLock" .. p.uData.Type).Value .. i, Game.Get("SoundVolLock"))
  end
  local si = Scorer.GetItem(0, "LifeBar")
  if si then
    if p.uData.Type == "Dag" then
      si.ScorerFakeWeapon3 = si.ScorerFakeWeapon3 + 1
    elseif p.uData.Type == "Vial" then
      si.ScorerFakeWeapon2 = si.ScorerFakeWeapon2 + 1
    elseif p.uData.Type == "Hada" then
      si.ScorerFakeWeapon0 = si.ScorerFakeWeapon0 + 1
    elseif p.uData.Increment and p.uData.Type == "Cris" then
      si.ScorerFakeWeapon1 = si.ScorerFakeWeapon1 + 1
    elseif p.uData.Type == "CrisFull" then
      si.ScorerFakeWeapon1 = WeaponsCrystal.InitialUses
    end
  end
  if p.uData.IsMarkedLast then
    Game.Log("particle marked as LAST arriving!!!!\n", 1)
    Scorer.AddScheduledFunc(0, 0.3, "", "ScorerSprites.ShowWeaponsNumbersEffect", p.uData.Type)
  end
  if p.uData.IsMarkedFirst then
    Game.Log("particle marked as FIRST arriving!!!!\n", 1)
    ScorerSprites.ChangeWeapon(p.uData.Type)
  end
end

function ScorerSprites.ChangeWeapon(weaponType)
  if weaponType == "Dag" then
    WeaponsDagger.Set("Belmont", Belmont.DagaFile)
  elseif weaponType == "Vial" then
    WeaponsVial.Set("Belmont", Belmont.VialFile)
  elseif weaponType == "Hada" then
    WeaponsFairy.Set("Belmont")
  end
end

function ScorerSprites.ShowWeaponsNumbersEffect(weaponType)
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    local number = 0
    if weaponType == "Dag" then
      number = Game.Get("ScorerWeapon3")
    elseif weaponType == "Vial" then
      number = Game.Get("ScorerWeapon2")
    elseif weaponType == "Hada" then
      number = Game.Get("ScorerWeapon0")
    else
      return
    end
    local offset = 3
    if 9 < number then
      offset = 0
    end
    local numbersPos = Game.Get("WeaponsNumbersPos")
    local a = ScorerSprites.ShowNumber(V2D(numbersPos.x, numbersPos.y), number, "HUD", 0.5)
    for i = 1, #a do
      local p = a[i]
      p.Pos = V2D(p.Pos.x - offset, p.Pos.y)
      p.oFrom.Pos = p.Pos
      p.oTo.Pos = p.Pos
      p.Pivot = V2D(0.5, 0.5)
      p.oFrom.Pivot = V2D(0.5, 0.5)
      p.oTo.Pivot = V2D(0.5, 0.5)
      p.oFrom.Color = Color(255, 151, 66, 255)
      p.oTo.Color = Color(255, 0, 0, 0)
      p.oTo.Size = p.oFrom.Size * 2
      p.oTo.Time = 0.5
      p.Func = "q"
    end
  end
end

function ScorerSprites.ShowNumber(Pos, num, Sprite, Size, Plus)
  local val = {}
  local size = 0
  while 0 < num do
    local p = ScorerSprites.Particles:AddParticle(Sprite, 1)
    local i = num % 10
    num = math.floor(num / 10)
    p:SetIdx(64 + i)
    p.Size = p.Size * Size
    size = size + p.Size.x
    val[#val + 1] = p
  end
  if Plus then
    local p = ScorerSprites.Particles:AddParticle(Sprite, 1)
    p:SetIdx(79)
    p.Size = p.Size * Size * 0.7
    val[#val + 1] = p
    val[#val + 1] = p
  end
  Pos = V2D(Pos.x - size / 2, Pos.y)
  for i = 1, #val do
    local p = val[i]
    p.Pos = Pos + V2D(size, 0)
    size = size - p.Size.x * 1.5
    p:CopyFrom()
    p:CopyTo()
  end
  return val
end

function ScorerSprites.ShowDamage(Entity, Killer, num)
  if Entity:IsType("WalkChar") and (Killer == nil or Killer:IsType("WalkChar")) and ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    if Entity.oActCtrl.oActClass == "Belmont" and Entity.UsrControl >= 0 then
      if 0 < num then
        ScorerSprites.ShowPlayerDamage()
      end
    elseif Killer and Game.Get("gvBelmontHitsD") and Killer.UsrControl >= 0 and Entity.UsrControl <= -1 and Entity.ActCtrl ~= "Darklord2" then
      if Game.Get("ScorerBossName") == Entity.Name and Game.Get("ScorerBossInvulnerable") == 1 then
        num = 0
      end
      if num <= 1 and Entity.ActCtrl ~= "Satan" and Entity.ActCtrl ~= "SilverWarrior" then
        num = 0
      end
      local x, y = Scorer.Get2DPos(Entity.Pos)
      local a = ScorerSprites.ShowNumber(V2D(x, y), num, "HUD", 0.5)
      local up = Game.Rand(-30, -50)
      for i = 1, #a do
        local p = a[i]
        p.oFrom.Size = p.oFrom.Size / 4
        if DarkPower.PowerUse.Value ~= 0 then
          p.oFrom.Color = Color(255, 0, 0, 128)
          p.oTo.Color = Color(255, 0, 0, 255)
        else
          p.oFrom.Color = Color(255, 0, 0, 128)
          p.oTo.Color = Color(255, 255, 0, 255)
        end
        p.oTo.Pos = p.oFrom.Pos + V3D(0, up, 0)
        p.oTo.Time = 0.5
        p.Func = "q"
        p.OnEndStep = "ScorerSprites.NumberHideStep"
      end
    end
  end
end

ScorerSprites.FocusColorData = {
  Block = {
    Color(0, 0, 192, 128),
    Color(0, 0, 255, 255)
  },
  CoolBlock = {
    Color(0, 0, 255, 255),
    Color(0, 255, 255, 255)
  },
  DamageBlock = {
    Color(0, 192, 0, 128),
    Color(0, 255, 0, 255)
  },
  {
    Color(255, 255, 0, 255),
    Color(255, 255, 255, 255)
  },
  {
    Color(255, 0, 0, 255),
    Color(255, 255, 0, 255)
  },
  {
    Color(192, 0, 0, 128),
    Color(255, 0, 0, 255)
  },
  {
    Color(64, 64, 64, 128),
    Color(128, 128, 128, 255)
  }
}

function ScorerSprites.ShowFocusGain(num, idx)
  num = math.floor(num)
  if Stamina.Enabled and Game.Get("gvBelmontFocus") and ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    local Pos = ScorerSprites.FocusScorerPos.Pos + V2D(0, -5)
    local a = ScorerSprites.ShowNumber(Pos, num, "HUD", 0.5)
    local up = Game.Rand(-30, -50)
    local cd = ScorerSprites.FocusColorData[idx]
    for i = 1, #a do
      local p = a[i]
      p.oFrom.Size = p.oFrom.Size / 4
      p.oFrom.Color = cd[1]
      p.oTo.Color = cd[2]
      p.oTo.Pos = p.oFrom.Pos + V3D(0, up, 0)
      p.oTo.Time = 0.5
      p.Func = "q"
      p.OnEndStep = "ScorerSprites.NumberHideStep"
    end
  end
end

function ScorerSprites.ShowRecover(Pos, num)
  num = math.floor(num)
  if Game.Get("gvBelmontRecover") and ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType and 0 < num then
    local x, y = Scorer.Get2DPos(Pos)
    local a = ScorerSprites.ShowNumber(V2D(x, y), num, "HUD", 0.5, true)
    local up = Game.Rand(-30, -50)
    for i = 1, #a do
      local p = a[i]
      p.oFrom.Size = p.oFrom.Size / 4
      p.oFrom.Color = Color(0, 192, 0, 128)
      p.oTo.Color = Color(0, 255, 0, 255)
      p.oTo.Pos = p.oFrom.Pos + V3D(0, up, 0)
      p.oTo.Time = 0.5
      p.Func = "q"
      p.OnEndStep = "ScorerSprites.NumberHideStep"
    end
  end
end

function ScorerSprites.NumberHideStep(p)
  local P = ScorerSprites.Particles:AddParticle("HUDAlpha", 0.5, true)
  P.Pos = p.Pos
  P.Rot = p.Rot
  P.UVMin = p.UVMin
  P.UVMax = p.UVMax
  P.Size = p.Size
  P:CopyFrom()
  P:CopyTo()
  P.oTo.Size = V2D(p.Size.x, p.Size.y * 2)
  P.oFrom.Color = Color(p.Color.x, p.Color.y, p.Color.z, 255)
  P.oTo.Color = Color(p.Color.x, p.Color.y, p.Color.z, 0)
  P.oFrom.Time = 0.5
  P.Func = "iaai"
  p:CopyFrom()
  p.oFrom.Time = p.Time
  p.oTo.Time = 0
  p.oTo.Color = Color(p.Color.x, p.Color.y, p.Color.z, 0)
  p.Func = "a"
end

ScorerSprites.GHead = V2D(30, 25)

function ScorerSprites.ShowPlayerDamage()
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    Game.Set("LastDamageTimeStamp", Game.GetTime())
    local p = ScorerSprites.Particles:AddParticle("HUDAlpha", 0.5, true)
    local ps = ScorerSprites.GCPos.Pos + ScorerSprites.GHead
    p:SetIdx(104)
    p.Size = p.Size / 2
    p.Pos = ps
    p:CopyFrom()
    p:CopyTo()
    p.Func = "a"
    p.oFrom.Time = 0.5
    p.oTo.Size = p.Size * 2
    p.oTo.Color = Color(255, 255, 255, 0)
    p = ScorerSprites.Particles:AddParticle("HUDAlpha", 1, true)
    p.Pos = ps + V2D(0.5, -2)
    p:SetIdx(112)
    p.Size = p.Size * V2D(0.5, 0.5)
    p:CopyFrom()
    p:CopyTo()
    p.oTo.Size = p.Size * V2D(0.25, 0.25)
    p.oFrom.Color = Color(255, 128, 0, 64)
    p.oTo.Color = Color(255, 0, 0, 255)
    p.oTo.Rot = p.Rot + Game.Rand(-90, 90)
    p.Func = "a"
    p = ScorerSprites.Particles:AddParticle("HUDAlpha", 1, true)
    p.Pos = ps + V2D(-4.5, -2)
    p:SetIdx(112)
    p.Size = p.Size * V2D(0.5, 0.5)
    p:CopyFrom()
    p:CopyTo()
    p.oTo.Size = p.Size * V2D(0.25, 0.25)
    p.oFrom.Color = Color(255, 128, 0, 64)
    p.oTo.Color = Color(255, 0, 0, 255)
    p.oTo.Rot = p.Rot + Game.Rand(-90, 90)
    p.Func = "a"
    p = ScorerSprites.Particles:AddParticle("HUDAlpha", 1, true)
    p:SetIdx(1)
    p.Pos = ScorerSprites.GCPos.Pos
    p.Pivot = V2D(1, 1)
    p.Size = p.Size * V2D(0.5, 0.5)
    p:CopyFrom()
    p:CopyTo()
    p.oFrom.Color = Color(255, 0, 0, 255)
    p.oTo.Color = Color(255, 0, 0, 0)
    p.Func = "iri"
  end
end

ScorerSprites.LightPos = Scorer.GetScorerPos("LightMagicFrame")
ScorerSprites.LightPosHead = Scorer.GetScorerPos("LightMagicHead")
ScorerSprites.LightPosSize = V2D(0, 0)

function ScorerSprites.ShowLightMagic()
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    local p = ScorerSprites.Particles:AddParticle("HUDAlpha", 0.5, true)
    p:SetIdx(17)
    p.Size = p.Size / 2
    p.Pos = ScorerSprites.LightPos.Pos + p.Size + ScorerSprites.LightPosHead.LocalPos
    p:CopyFrom()
    p:CopyTo()
    p.Func = "a"
    p.oFrom.Time = 0.5
    p.oFrom.Size = p.Size * 2
    p.oTo.Color = Color(255, 255, 255, 0)
    if ScorerSprites.ShowFlow then
      p.oTo.Color = Color(255, 255, 255, 255)
      p.oFrom.Color = Color(255, 255, 255, 0)
      p.Time = 1
      ScorerSprites.LightPosSize = p.Size
      ScorerSprites.GotFlow(player["NodePosHierarchy_" .. NeutralEnergy.HandNode], "GotLightTgPos", 0, 127, 255, 0.5, "")
    end
  end
end

ScorerSprites.DarkPos = Scorer.GetScorerPos("DarkMagicFrame")
ScorerSprites.DarkPosHead = Scorer.GetScorerPos("DarkMagicHead")
ScorerSprites.DarkPosSize = V2D(0, 0)

function ScorerSprites.ShowDarkMagic()
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    local p = ScorerSprites.Particles:AddParticle("HUDAlpha", 0.5, true)
    p:SetIdx(18)
    p.Size = p.Size / 2
    p.Pos = ScorerSprites.DarkPos.Pos + p.Size + ScorerSprites.DarkPosHead.LocalPos
    p:CopyFrom()
    p:CopyTo()
    p.Func = "a"
    p.oFrom.Time = 0.5
    p.oFrom.Size = p.Size * 2
    p.oTo.Color = Color(255, 255, 255, 0)
    if ScorerSprites.ShowFlow then
      p.oTo.Color = Color(255, 255, 255, 255)
      p.oFrom.Color = Color(255, 255, 255, 0)
      p.Time = 1
      ScorerSprites.DarkPosSize = p.Size
      ScorerSprites.GotFlow(player["NodePosHierarchy_" .. NeutralEnergy.HandNode], "GotDarkTgPos", 255, 0, 0, 0.5, "")
    end
  end
end

function ScorerSprites.OnShieldRendered(posX, posY)
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    local T = 0.1
    for i = 1, 5 do
      local p = ScorerSprites.Particles:AddParticle("HUDAlpha", T, true)
      T = T + 0.3
      p:SetIdx(31)
      p.Size = p.Size / 2
      p.Pos = V2D(posX, posY)
      p:CopyFrom()
      p:CopyTo()
      p.Func = "a"
      p.oFrom.Size = p.Size
      p.oTo.Color = Color(255, 255, 255, 0)
      p.oTo.Size = p.Size * 2.5
    end
  end
end

function ScorerSprites.OnTrialRendered(posX, posY)
end

function ScorerSprites.OnTrialRendered2(posX, posY, num)
  print("Superaste tu anterior record del trial!")
  local nums = Game.Split(num, "/")
  local i = 1
  local a = ScorerSprites.ShowNumber(V2D(posX - 27, posY + 15), tonumber(nums[i]), "HUD", 0.65)
  for i = 1, #a do
    local p = a[i]
    p.oFrom.Size = p.oFrom.Size / 6
    p.oFrom.Color = Color(255, 255, 255, 255)
    p.oTo.Color = Color(225, 225, 0, 255)
    p.oTo.Pos = p.oFrom.Pos + V3D(-1, 0, 0)
    p.oTo.Size = p.oFrom.Size * 10
    p.oTo.Time = 0.5
    p.Func = "q"
    p.OnEndStep = "ScorerSprites.NumberHideStep"
  end
end

function ScorerSprites.OnGemRendered(gemType, posX, posY)
  if gemType == 0 then
    ScorerSprites.GotKey(V2D(posX, posY), 20, Color(100, 255, 0, 255), Color(0, 100, 0, 0), 50, 112)
  elseif gemType == 1 then
    ScorerSprites.GotKey(V2D(posX, posY), 20, Color(100, 100, 255, 255), Color(0, 0, 100, 0), 50, 112)
  elseif gemType == 2 then
    ScorerSprites.GotKey(V2D(posX, posY), 20, Color(255, 0, 50, 255), Color(100, 0, 0, 0), 50, 112)
  else
    ScorerSprites.GotKey(V2D(posX, posY), 20, Color(192, 160, 98, 255), Color(100, 100, 0, 0), 50, 112)
  end
end

function ScorerSprites.OnTravelBookRendered(posX, posY)
  ScorerSprites.GotKey(V2D(posX + 22, posY + 20), 20, Color(255, 200, 50, 250), Color(100, 0, 0, 0), 50, 112)
end

ScorerSprites.PrevEscapeEvent = ""
ScorerSprites.PrevMainMissionEvent = ""

function ScorerSprites.OnAllGemsRendered0()
  ScorerSprites.PrevEscapeEvent = Game.Get("EscapeEvent")
  ScorerSprites.PrevMainMissionEvent = Game.Get("MainMissionEvent")
  Game.Set("EscapeEvent", "")
  Game.Set("MainMissionEvent", "")
  Weapons.ResetTimeblend()
  Game.Set("S_PauseMusicVolume", 1)
  Sound.CombatMusicSetActive(0)
  Sound.SetMusicLoopCount(0)
  Sound.SetMusic("Music/Gema_Encontrada_01.ogg", 1)
  Sound.SetMusicLoopCount(0)
  Game.GetWorldTimer().Speed = 0
  if BoxMusic and Scorer.GetItem(0, "MusicBoxSlider") then
    Scorer.GetItem(0, "MusicBoxSlider").IgnoreTimer = 1
  end
  Scorer.Fade(0, Color(0, 0, 0, 0), Color(0, 0, 0, 192), 0.5)
end

function ScorerSprites.OnAllGemsRendered1(posX, posY, time)
  print(posX, posY, time)
  if Game.Get("GemType") == "DarkGems" then
    ScorerSprites.AddEmitter("GemEmitter", V2D(posX, posY), 200, 0, 1, 2.5, 30, 1.5, Color(230, 75, 100, 200), Color(50, 20, 0, 0), 112)
    ScorerSprites.StartEmitter("GemEmitter")
    Scorer.AddScheduledFunc(0, time, "", "ScorerSprites.FXToRedBar")
  elseif Game.Get("GemType") == "LightGems" then
    ScorerSprites.AddEmitter("GemEmitter", V2D(posX, posY), 200, 0, 1, 2.5, 30, 1.5, Color(75, 100, 230, 200), Color(0, 20, 50, 0), 112)
    ScorerSprites.StartEmitter("GemEmitter")
    Scorer.AddScheduledFunc(0, time, "", "ScorerSprites.FXToBlueBar")
  else
    ScorerSprites.AddEmitter("GemEmitter", V2D(posX, posY), 200, 0, 1, 2.5, 30, 1.5, Color(100, 230, 75, 200), Color(20, 50, 0, 0), 112)
    ScorerSprites.StartEmitter("GemEmitter")
    Scorer.AddScheduledFunc(0, time, "", "ScorerSprites.FXToGreenBar")
  end
end

function ScorerSprites.OnAllGemsRendered2(posX, posY)
  local str = ""
  local gemType = Game.Get("GemType")
  if gemType == "DarkGems" then
    str = langstr("TBook_DarkGems_Upgrade")
    ScorerSprites.GotKey(V2D(posX - 10, posY - 20), 15, Color(255, 0, 50, 150), Color(100, 0, 0, 0), 50, 112)
  elseif gemType == "LightGems" then
    str = langstr("TBook_LightGems_Upgrade")
    ScorerSprites.GotKey(V2D(posX + 20, posY - 20), 20, Color(100, 100, 255, 150), Color(0, 0, 100, 0), 50, 112)
  else
    str = langstr("TBook_LifeGems_Upgrade")
    ScorerSprites.GotKey(V2D(posX + 30, posY + 15), 20, Color(100, 255, 0, 150), Color(0, 100, 0, 0), 50, 112)
  end
  Sound.Play("Fanfare_03", 1, 0, true)
  ScorerSprites.CheckContainerFilled(gemType, str)
end

function ScorerSprites.CheckContainerFilled(gemType, str)
  local showMessage = false
  local lifeBar = Scorer.GetItem(0, "LifeBar")
  if gemType == "LightGems" and lifeBar.LastLight == Game.Get("ScorerLightPowerMax") then
    showMessage = true
  elseif gemType == "DarkGems" and lifeBar.LastDark == Game.Get("ScorerDarkPowerMax") then
    showMessage = true
  elseif gemType == "LifeGems" and lifeBar.LastLife == player.oActCtrl.oActClass.Life then
    showMessage = true
  end
  if showMessage then
    Game.Set("EscapeEvent", ScorerSprites.PrevEscapeEvent)
    Game.Set("MainMissionEvent", ScorerSprites.PrevMainMissionEvent)
    ModalMsg.Show(str, "ScorerSprites.ContinueAfterGemsUpgrade")
    ScorerSprites.KeepLifeBarScorer()
  else
    Scorer.AddScheduledFunc(0, 0.1, "", "ScorerSprites.CheckContainerFilled", gemType, str)
  end
end

function ScorerSprites.KeepLifeBarScorer()
  Game.Set("ForceShowScorer", 1)
  Scorer.AddScheduledFunc(0, 0.1, "KeepLifeBarScorer", "ScorerSprites.KeepLifeBarScorer")
end

function ScorerSprites.ContinueAfterGemsUpgrade()
  Scorer.DeleteScheduledFuncs(0, "KeepLifeBarScorer")
  if BoxMusic and Scorer.GetItem(0, "MusicBoxSlider") then
    Scorer.GetItem(0, "MusicBoxSlider").IgnoreTimer = 0
  end
  Game.Set("ScorerGenericMsg", "")
  Input.Bind(0, "Walk", "Jump", "")
  Game.GetWorldTimer().Speed = 1
  Weapons.Timeblend(1, 0, "is", 1)
  Scorer.Fade(0, Color(0, 0, 0, 192), Color(0, 0, 0, 0), 0.5)
  SoundUtils.RestoreMusic()
  Game.Set("S_PauseMusicVolume", Game.Def("S_PauseMusicVolume"))
end

function ScorerSprites.FXToRedBar()
  ScorerSprites.StopEmitter("GemEmitter")
  local modifier = Game.ValueModifier():New()
  modifier.TimeType = 1
  modifier.FinalTime = 0.5
  modifier.FactorStack = "a"
  modifier.Func = "ScorerSprites.IntRSlot"
end

function ScorerSprites.FXToBlueBar()
  ScorerSprites.StopEmitter("GemEmitter")
  local modifier = Game.ValueModifier():New()
  modifier.TimeType = 1
  modifier.FinalTime = 0.5
  modifier.FactorStack = ""
  modifier.Func = "ScorerSprites.IntBSlot"
end

function ScorerSprites.FXToGreenBar()
  ScorerSprites.StopEmitter("GemEmitter")
  local modifier = Game.ValueModifier():New()
  modifier.TimeType = 1
  modifier.FinalTime = 0.5
  modifier.FactorStack = ""
  modifier.Func = "ScorerSprites.IntGSlot"
end

function ScorerSprites.IntRSlot(modifier)
  ScorerSprites.Emitters.GemEmitter.Pos = V2D(320, 144) + (ScorerSprites.DarkPos.Pos - V2D(320, 144) + V2D(25, 95)) * modifier.iFactor
  ScorerSprites.GotKey(ScorerSprites.Emitters.GemEmitter.Pos, 30 * (1.2 - modifier.iFactor), Color(200, 50, 75, 200), Color(50, 0, 0, 0), 30, 112)
end

function ScorerSprites.IntGSlot(modifier)
  ScorerSprites.Emitters.GemEmitter.Pos = V2D(320, 144) + (ScorerSprites.GCPos.Pos - V2D(320, 144) + V2D(45, 28)) * modifier.iFactor
  ScorerSprites.GotKey(ScorerSprites.Emitters.GemEmitter.Pos, 30 * (1.2 - modifier.iFactor), Color(100, 230, 75, 200), Color(20, 50, 0, 0), 30, 112)
end

function ScorerSprites.IntBSlot(modifier)
  ScorerSprites.Emitters.GemEmitter.Pos = V2D(320, 144) + (ScorerSprites.LightPos.Pos - V2D(320, 144) + V2D(25, 100)) * modifier.iFactor
  ScorerSprites.GotKey(ScorerSprites.Emitters.GemEmitter.Pos, 30 * (1.2 - modifier.iFactor), Color(75, 100, 230, 200), Color(0, 20, 50, 0), 30, 112)
end

function ScorerSprites.CreateFairyKeyFX(keyIndex, numParticles, a, baseB, variationB, baseLifeSpan, lifeSpanVariation, baseSpeed, speedVariation)
  ScorerSprites.FairyKeyParticlesInfo = ScorerSprites.FairyKeyParticlesInfo or {}
  ScorerSprites.FairyKeyParticlesInfo[keyIndex] = {}
  for i = 1, numParticles do
    ScorerSprites.FairyKeyParticlesInfo[keyIndex][i] = {
      a * math.random(),
      baseB + (math.random() - 0.5) * variationB,
      baseLifeSpan + (math.random() - 0.5) * lifeSpanVariation,
      0,
      math.random() < 0.5,
      baseSpeed + (math.random() - 0.5) * speedVariation,
      math.random(-10, 10),
      math.random(-10, 10)
    }
  end
  Game.Set("OnKeyRenderedCallback", "ScorerSprites.OnFairyKeyRendered")
end

function ScorerSprites.OnFairyKeyRendered(scorerId, timeDiff, keyIndex, x, y)
  local deadFairyIndex = WeaponsFairy.Fairies.Value + 1
  local offsetX = 25
  local allParticlesDead = true
  local particlesInfo = ScorerSprites.FairyKeyParticlesInfo[keyIndex]
  if particlesInfo then
    for i = 1, #particlesInfo do
      particlesInfo[i][4] = particlesInfo[i][4] + timeDiff
      local life = particlesInfo[i][4]
      if life < particlesInfo[i][3] then
        local displacementX = life * particlesInfo[i][6] + particlesInfo[i][7]
        local displacementY = y + (particlesInfo[i][1] * life * life + particlesInfo[i][2] * life) * particlesInfo[i][6] + particlesInfo[i][8]
        if particlesInfo[i][5] then
          Scorer.RenderSprite(scorerId, V2D(x + displacementX + offsetX, y + displacementY), "HUDAlpha", 112, Color(20, 200, 20, 255 * (1 - life / particlesInfo[i][3])), 0.35)
        else
          Scorer.RenderSprite(scorerId, V2D(x - displacementX, y + displacementY), "HUDAlpha", 112, Color(20, 200, 20, 255 * (1 - life / particlesInfo[i][3])), 0.35)
        end
        allParticlesDead = false
      end
    end
  end
  if allParticlesDead then
    ScorerSprites.FairyKeyParticlesInfo[keyIndex] = nil
    if ScorerSprites.FairyKeyParticlesInfo[1] == nil and ScorerSprites.FairyKeyParticlesInfo[2] == nil and ScorerSprites.FairyKeyParticlesInfo[3] == nil then
      Game.Set("OnKeyRenderedCallback", "")
    end
  end
end

function ScorerSprites.GotLifeLauraPos()
  local xPos = Game.Get("LauraLifePosX")
  local yPos = Game.Get("LauraLifePosY")
  return V2D(xPos + 10, yPos + 16)
end

function ScorerSprites.GotLifeLauraStartPos()
  local xPos = Game.Get("LauraLifeStartPosX")
  local yPos = Game.Get("LauraLifeStartPosY")
  return V2D(xPos, yPos + 16)
end

function ScorerSprites.DoLifeDrainFlow(points)
  ScorerSprites.ShowFlow = true
  local color = Game.Get("LauraLifeFlyingDrainColor")
  if Game.Get("ExplodeGameProgress") >= Game.Get("ExplodeGameStress") then
    for i = 1, 3 do
      ScorerSprites.GotFlow(player.NodePosHierarchy_BoF_VampireGirl_Labio_L, "GotLifeLauraPos", color.x, color.y, color.z, 0.5, "")
    end
  elseif 0 < points then
    ScorerSprites.GotFlow(player.NodePosHierarchy_BoF_VampireGirl_Labio_L, "GotLifeLauraPos", color.x, color.y, color.z, 0.5, "")
  end
  ScorerSprites.ShowFlow = false
end

function ScorerSprites.LifePointsFlow(points)
  ScorerSprites.DoLifeDrainFlow(points)
end

ScorerSprites.isPlayingLauraSuckBloodLoop = false

function ScorerSprites.LauraGotLife(points)
  local LauraLifePos = ScorerSprites.GotLifeLauraPos()
  local LauraStartLifePos = ScorerSprites.GotLifeLauraStartPos()
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    local t = Game.GetTime()
    if ScorerSprites.isPlayingLauraSuckBloodLoop == false then
      print("PONGO SONIDO CHUPAR")
      ScorerSprites.isPlayingLauraSuckBloodLoop = true
    end
    for i = 1, clamp(0, 10, points) do
      local p = ScorerSprites.Particles:AddParticle("HUDAlpha", Game.Rand(0.5, 0.75), true)
      p.Pos = LauraLifePos + V2D(-10, Game.Rand(-5, 4))
      p.Color = Game.Get("LauraLifeDrainColor")
      p:SetIdx(109)
      p.Pivot = V2D(0.75, 0.5)
      p.Size = p.Size / 4
      p.Rot = 180
      p:CopyFrom()
      p:CopyTo()
      p.oFrom.Pos = V2D(LauraStartLifePos.x + 2, p.Pos.y)
      p.oFrom.Size = V2D(p.Size.x / 6, p.Size.y)
      p.oFrom.Time = p.Time - Game.Rand(0, 0.15)
      p.oTo.Time = 0
      p.oTo.Color = Color(255, 255, 127, 64)
      p.oTo.Pos = V2D(LauraLifePos.x, p.Pos.y)
      p.Func = "iai"
    end
  end
  ScorerSprites.LifePointsFlow(points)
end

function ScorerSprites.Burning(Pos, Rad, Col1, Col2, Max, idx)
  if ScorerSprites.Particles and ScorerSprites.Particles.bValidBaseType then
    for i = 1, Max do
      local T = Game.Rand(1, 2)
      local p = ScorerSprites.Particles:AddParticle("HUDAlpha", T, true)
      p.Pos = Pos + V2D(Game.Rand(-Rad, Rad), 0):rot(V3D(0, 0, Game.Rand(-180, 180)))
      p:SetIdx(idx)
      p.Color = Col1
      p.Size = p.Size * Game.Rand(0.5, 0.125)
      p.Rot = Game.Rand(-180, 180)
      p:CopyFrom()
      p:CopyTo()
      p.oTo.Pos = p.Pos + V2D(Game.Rand(-Rad, Rad), Game.Rand(-30, -50))
      p.oFrom.Time = T
      p.oTo.Color = Col2
      p.oTo.Rot = p.Rot + Game.Rand(-360, 360)
      p.Func = "a"
    end
  end
end

ScorerSprites.PosBurning = 40

function ScorerSprites.BurningComplete()
  local aspect = Game.Get("PhysicalAspectRatio")
  local PosX
  if aspect == 1.7777777910232544 then
    PosX = 0
  else
    PosX = 106
  end
  ScorerSprites.Burning(V2D(PosX, 70), 20, Color(0, 0, 0, 255), Color(255, 255, 255, 255), 2, 16)
  ScorerSprites.Burning(V2D(PosX + ScorerSprites.PosBurning, 70), 20, Color(0, 0, 0, 255), Color(255, 255, 255, 255), 2, 16)
  ScorerSprites.Burning(V2D(PosX + ScorerSprites.PosBurning * 2, 70), 20, Color(0, 0, 0, 255), Color(255, 255, 255, 255), 2, 16)
end
