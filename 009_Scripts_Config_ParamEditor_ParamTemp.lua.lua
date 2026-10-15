function ParamGabriel.main()
end

ParamCfg.Sets.Gabriel = {
  {
    "Speed Run",
    "MakeChar.SetMaxMinSpeeds('Belmont',Belmont.RunActions,%f,0.1,-0.3)",
    "FLOAT",
    1,
    {
      Increment = 0.01,
      MinValue = 0.01,
      MaxValue = 20
    }
  },
  {
    "Speed Sprint",
    "MakeChar.SetMaxMinSpeeds('Belmont',Belmont.SprintActions,%f)",
    "FLOAT",
    0.8,
    {
      Increment = 0.01,
      MinValue = 0.01,
      MaxValue = 20
    }
  }
}
