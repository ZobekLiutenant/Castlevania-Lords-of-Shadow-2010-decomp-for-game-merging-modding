function ParamWitch.main()
end

ParamCfg.Sets.Witch = {
  {
    "MaxTimeInside",
    "Witch.MaxTimeInside = %f",
    "FLOAT",
    1,
    {
      Increment = 0.1,
      MinValue = 0,
      MaxValue = 100
    }
  },
  {
    "ScreamRadius",
    "Witch.ScreamRadius = %f",
    "FLOAT",
    300,
    {
      Increment = 1,
      MinValue = 1,
      MaxValue = 10000
    }
  },
  {
    "ScreamSpeedFactor",
    "",
    "FLOAT",
    2.79999,
    {
      Increment = 0.1,
      MinValue = 0.01,
      MaxValue = 10000
    }
  },
  {
    "MaxTimeScreaming",
    "",
    "FLOAT",
    10,
    {
      Increment = 0.1,
      MinValue = 0.01,
      MaxValue = 10000
    }
  },
  {
    "PressSpeedAcceleration",
    "Game.Set('PressSpeedAcceleration',%f)",
    "FLOAT",
    0.5,
    {
      Increment = 0.1,
      MinValue = 0.01,
      MaxValue = 10000
    }
  },
  {
    "PressSpeedGameTimeUp",
    "Game.Set('PressSpeedGameTimeUp',%f)",
    "FLOAT",
    8,
    {
      Increment = 0.1,
      MinValue = 0.01,
      MaxValue = 10000
    }
  },
  {
    "PressSpeedGameTimeDown",
    "Game.Set('PressSpeedGameTimeDown',%f)",
    "FLOAT",
    1,
    {
      Increment = 0.1,
      MinValue = 0.01,
      MaxValue = 10000
    }
  },
  {
    "PressSpeedFrecuency",
    "Game.Set('PressSpeedFrecuency',%f)",
    "FLOAT",
    0.3,
    {
      Increment = 0.1,
      MinValue = 0.01,
      MaxValue = 10000
    }
  }
}
