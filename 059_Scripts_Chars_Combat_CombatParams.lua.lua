function CombatLinks.main()
end

CombatLinks.Presets = {}
CombatLinks.Presets["-DoNothing"] = {}
CombatLinks.Presets.BlockHitSyncA = {
  {
    "WhipSyncComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Scroll = "WhipSyncComboAAA"
    }
  }
}
CombatLinks.Presets.BlockHitSyncD = {
  {
    "WhipSyncComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  }
}
CombatLinks.Presets.BlockHitSyncDD = {
  {
    "WhipSyncComboDD",
    {
      Frames = {
        nil,
        12,
        nil
      }
    }
  }
}
CombatLinks.Presets.BlockHitSyncDDD = {
  {
    "WhipSyncComboDDD",
    {
      Frames = {
        nil,
        23,
        nil
      }
    }
  }
}
CombatLinks.Presets.ComboAJ_Jump = {
  {
    "WhipComboAJJ",
    {
      ["Boolean expresion"] = "<oActCtrl.oActClass.uData.bWings",
      Frames = {
        nil,
        37,
        nil
      },
      OnFloor = false,
      Parry = false,
      Scroll = "WhipComboAJJ"
    }
  },
  {
    "WhipFallComboStomp",
    {
      ["Boolean expresion"] = "<!uData.NoStomp",
      OnFloor = false,
      Parry = true
    }
  }
}
CombatLinks.Presets.ComboDJ_Jump = {
  {
    "WhipComboDJJ",
    {
      ["Boolean expresion"] = "<oActCtrl.oActClass.uData.bWings",
      Frames = {
        nil,
        22,
        nil
      },
      OnFloor = false,
      Parry = false,
      Scroll = "WhipComboDJJ"
    }
  },
  {
    "WhipFallComboStomp",
    {
      ["Boolean expresion"] = "<!uData.NoStomp",
      OnFloor = false,
      Parry = true
    }
  }
}
CombatLinks.Presets.ComboExplRapidFire = {
  {
    "WhipComboExpl",
    {
      DarkPower = true,
      Frames = {
        nil,
        67,
        nil
      },
      RapidFire = true
    }
  },
  {
    "WhipComboExplEnd",
    {
      DarkPower = true,
      Frames = {
        nil,
        66,
        nil
      },
      OnFloor = true,
      Repetitions = -2
    }
  }
}
CombatLinks.Presets.DefaultArea = {
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false
    }
  },
  {
    "WhipBlockComboAInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipRaceComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      RunningTime = 0.1
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.DefaultAreaFallFloor = {
  {
    "WhipFallComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        "ReadyToLink2"
      },
      OnFloor = false
    }
  },
  {
    "WhipFallBlockComboAInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        "ReadyToLink2"
      },
      OnFloor = false,
      Parry = true,
      Scroll = "WhipFallBlockComboAh",
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipComboA",
    {
      DoubleTap = false,
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipBlockComboAInit",
    {
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipRaceComboA",
    {
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      RunningTime = 0.1
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.DefaultCrystal = {
  {
    "WhipCrystalPowerInit",
    {
      CrystalNeeded = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      ["uData Property"] = "!CrystalLocked"
    }
  }
}
CombatLinks.Presets.DefaultDagger = {
  {
    "WhipThrowDaggerInit",
    {
      DaggersNeeded = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false
    }
  }
}
CombatLinks.Presets.DefaultDirect = {
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false
    }
  },
  {
    "WhipBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipSMCatchedInit",
    {
      ["Boolean expresion"] = ">oAI.iCrazyState!=0,>!bIsFalling",
      Class = "SwordMaster",
      Dist = {400, nil},
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Probability = {0, 0.07}
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.DefaultDirectFallFloor = {
  {
    "WhipFallComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        "ReadyToLink2"
      },
      OnFloor = false
    }
  },
  {
    "WhipFallBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        "ReadyToLink2"
      },
      OnFloor = false,
      Parry = true,
      Scroll = "WhipFallBlockComboDh",
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipSMCatchedInit",
    {
      ["Boolean expresion"] = ">oAI.iCrazyState!=0,>!bIsFalling",
      Class = "SwordMaster",
      Dist = {400, nil},
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Probability = {0, 0.07}
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.DefaultFairy = {
  {
    "WhipThrowFairy",
    {FairiesNeeded = true}
  }
}
CombatLinks.Presets.DefaultGrip = {
  {
    "WhipTsCatchFarInit",
    {
      AICollision = true,
      Class = "TrollSmall",
      Dist = {50, 800},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipTsCatchInit",
    {
      AICollision = true,
      Class = "TrollSmall",
      Dist = {nil, 50},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipTbFailFarInit",
    {
      AICollision = true,
      Class = "TrollBig",
      Dist = {nil, 800},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipTbFailFarInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState!=0,Belmont.ChainModelInUse.Value>=3",
      Class = "TrollBigSwamp",
      Dist = {nil, 800},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipTbRideInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3",
      Class = "TrollBig",
      Dist = {nil, 450},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipWcCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0",
      Class = "WitchChild",
      Dist = {nil, 50},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipSmFailInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState!=0",
      Class = "SwordMaster",
      Dist = {nil, 350},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipSMCatchedInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState!=0,>!bIsFalling",
      Class = "SwordMaster",
      Dist = {350, 800},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipTbRideFarInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3",
      Class = "TrollBig",
      Dist = {450, 800},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipWitchCatchInit",
    {
      AICollision = true,
      Class = "Witch",
      ["uData Property"] = "KillWitch"
    }
  },
  {
    "WhipCcHold",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.bIsCatcheable,>Selected==2",
      Class = "Chupacabra",
      Dist = {-1, 50},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipLlCatchInit",
    {
      AICollision = true,
      Class = "LycanthropeLesser",
      Dist = {nil, 50},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipLlCatchFarInit",
    {
      AICollision = true,
      ["Boolean expresion"] = "Belmont.ChainModelInUse.Value>=2",
      Class = "LycanthropeLesser",
      Dist = {50, 800},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipGbCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">!oAI.bIsMountingWarthog",
      Class = "Goblin",
      Dist = {-1, 50},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      },
      ["uData Property"] = ">!GrenadesUnplugged"
    }
  },
  {
    "WhipGbCatchFarInit",
    {
      AICollision = true,
      ["Boolean expresion"] = "Belmont.ChainModelInUse.Value>=2,>!oAI.bIsMountingWarthog",
      Class = "Goblin",
      Dist = {50, 800},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      },
      ["uData Property"] = ">!GrenadesUnplugged"
    }
  },
  {
    "WhipWgRideInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3",
      Class = "WargGreat",
      Dist = {nil, 400},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipWgRideFarInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3",
      Class = "WargGreat",
      Dist = {400, 800},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipWtRideInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3",
      Class = "Warthog",
      Dist = {-1, 350},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipWtRideFarInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3",
      Class = "Warthog",
      Dist = {350, 650},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipTbCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=2,>Selected==2",
      Class = "TrollBig",
      Dist = {nil, 400},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipTbCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=2,>Selected==2",
      Class = "TrollBigSwamp",
      Dist = {nil, 450},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipSgRideInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3,<!bEquilibriumMode",
      Class = "SpiderGiant",
      Dist = {nil, 200},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipSgRideFarInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3",
      Class = "SpiderGiant",
      Dist = {200, 700},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipGlCatchInit",
    {
      AICollisionAir = true,
      Class = "Gremlin",
      Dist = {nil, 1000},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      },
      VerticalLimit = 45,
      ["uData Property"] = ">!GrabDone"
    }
  },
  {
    "WhipLgCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0",
      Class = "LycanthropeGreater",
      Dist = {nil, 50},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipBk11CatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,>oAI.ActualPhaseWhip==>oAI.GetIdPhaseWhipNone",
      Class = "BlackKnight",
      Dist = {-1, 800},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipBk12CatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,>oAI.ActualPhaseWhip==>oAI.GetIdPhaseWhip1",
      Class = "BlackKnight",
      Dist = {-1, 800},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipBk2CatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,>oAI.ActualPhaseWhip==>oAI.GetIdPhaseWhip2",
      Class = "BlackKnight",
      Dist = {nil, 800},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipBk3CatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,>oAI.ActualPhaseWhip==>oAI.GetIdPhaseWhip3,>Action!=BlackKnight.AnimHitCrazyHardInit",
      Class = "BlackKnight",
      Dist = {-1, 400},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipAaCatchShieldInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.bCanCatchForShield,Belmont.ChainModelInUse.Value>=3",
      Class = "AnimArmour",
      Dist = {-1, 600},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipMdCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">!oAI.bDisappearing",
      Class = "Mandrake",
      Dist = {-1, 50},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipMdCatchFarInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">!oAI.bDisappearing",
      Class = "Mandrake",
      Dist = {50, 800},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipGhCatchInit",
    {
      AICollision = true,
      Class = "Ghoul",
      Dist = {-1, 50},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipGhCatchFarInit",
    {
      AICollision = true,
      Class = "Ghoul",
      Dist = {50, 800},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipGhCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3",
      Class = "GhoulDLC",
      Dist = {-1, 50},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipGhCatchFarInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3",
      Class = "GhoulDLC",
      Dist = {50, 800},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipVwCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3",
      Class = "VampireWarrior",
      Dist = {-1, 25},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipAaCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">!oAI.bCanCatchForShield,>oAI.iCrazyState==0",
      Class = "AnimArmour",
      Dist = {nil, 300},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipBtCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3",
      Class = "Butcher",
      Dist = {-1, 500},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipEva1CatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,>oAI.iWave==1",
      Class = "EliteVampA",
      Dist = {nil, 400},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipEva2CatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,>oAI.iWave==2",
      Class = "EliteVampA",
      Dist = {nil, 400},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipZbCatchInit",
    {
      AICollision = true,
      Class = "Zombie",
      Dist = {nil, 50},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipMmCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0",
      Class = "MechanicalM",
      Dist = {-1, 600},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipRgCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3",
      Class = "RagDoll",
      Dist = {nil, 400},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipEvbCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,Belmont.ChainModelInUse.Value>=3",
      Class = "EliteVampB",
      Dist = {nil, 300},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipSwCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,>oAI.iWave==1,Belmont.ChainModelInUse.Value>=3",
      Class = "SilverWarrior",
      Dist = {-1, 400},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipSwCatch2Init",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,>oAI.iWave==2,Belmont.ChainModelInUse.Value>=3",
      Class = "SilverWarrior",
      Dist = {-1, 400},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipScCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0",
      Class = "Scarecrow",
      Dist = {nil, 550},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipGdCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0",
      Class = "GraveDigger",
      Dist = {-1, 250},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipCoCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">Action!=CreepingCorpse.NoCatcheableAction",
      Class = "CreepingCorpse",
      Dist = {nil, 100},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipCoCatchFarInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">Action!=CreepingCorpse.NoCatcheableAction",
      Class = "CreepingCorpse",
      Dist = {100, 800},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipCfCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.WithOutLegs",
      Class = "CreepingCoffin",
      Dist = {nil, 400},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipNc1CatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,>oAI.iNecroType==1",
      Class = "Necromancer",
      Dist = {nil, 300},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipNc2CatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,>oAI.iNecroType==2",
      Class = "Necromancer",
      Dist = {-1, 300},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipSmCatch",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0",
      Class = "SwordMaster",
      Dist = {nil, 700},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipDL2CatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0,>oAI.iWave==1",
      Class = "Darklord2V",
      Dist = {nil, 500},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  },
  {
    "WhipComboCatchTry",
    {
      Action = "WhipComboCatchTry",
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true
    }
  },
  {
    "WhipComboCatchTry",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  },
  {
    "WhipFhCatchKick",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0",
      Class = "FloatingHeads",
      Dist = {nil, 200},
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  }
}
CombatLinks.Presets.DefaultJump = {
  {
    "WhipBlockComboJInit",
    {
      ["Boolean expresion"] = "<oActCtrl.oActClass.SprintOnDoubleTap==1",
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipBlockSommerJump",
    {
      ["Boolean expresion"] = "<oActCtrl.oActClass.SprintOnDoubleTap==1",
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "!bGauntlet"
    }
  }
}
CombatLinks.Presets.DefaultJumpFallFloor = {
  {
    "WhipBlockComboJInit",
    {
      ["Boolean expresion"] = "<oActCtrl.oActClass.SprintOnDoubleTap==1",
      Frames = {
        "ReadyToLink",
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipBlockSommerJump",
    {
      ["Boolean expresion"] = "<oActCtrl.oActClass.SprintOnDoubleTap==1",
      Frames = {
        "ReadyToLink",
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "!bGauntlet"
    }
  },
  {
    "WhipFallComboStomp",
    {
      ["Boolean expresion"] = "<!uData.NoStomp",
      OnFloor = false,
      Parry = true
    }
  }
}
CombatLinks.Presets.DefaultVial = {
  {
    "WhipThrowVial",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      VialsNeeded = true
    }
  },
  {
    "WhipThrowVialLM",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      LightPower = true,
      Parry = false,
      VialsNeeded = true
    }
  }
}
CombatLinks.Presets.DodgeComboA = {
  {
    "WhipComboA",
    {
      DoubleTap = false,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false
    }
  },
  {
    "WhipBlockComboAInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipRaceComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      RunningTime = 0.1
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        17,
        nil
      },
      Scroll = "WhipSprintComboAD"
    }
  },
  {
    "WhipDodgeComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true,
      Parry = false
    }
  }
}
CombatLinks.Presets.DodgeComboD = {
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false
    }
  },
  {
    "WhipBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipSMCatchedInit",
    {
      ["Boolean expresion"] = ">oAI.iCrazyState!=0,>!bIsFalling",
      Class = "SwordMaster",
      Dist = {400, nil},
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Probability = {0, 0.07}
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipDodgeComboD",
    {
      Frames = {
        nil,
        17,
        nil
      },
      OnFloor = true,
      Parry = false
    }
  }
}
CombatLinks.Presets.FallBlockComboA = {
  {
    "WhipFallComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = false,
      Parry = false
    }
  },
  {
    "WhipComboA",
    {
      DoubleTap = false,
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipBlockComboAInit",
    {
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipRaceComboA",
    {
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      RunningTime = 0.1
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = false,
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.FallComboA = {
  {
    "WhipFallComboAA",
    {
      Frames = {
        nil,
        14,
        nil
      },
      OnFloor = false
    }
  },
  {
    "WhipFallBlockComboAInit",
    {
      Frames = {
        nil,
        13,
        nil
      },
      Parry = true,
      Scroll = "WhipFallBlockComboAh",
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipBlockComboAInit",
    {
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.FallComboD = {
  {
    "WhipFallComboDD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = false
    }
  },
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipFallBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      Scroll = "WhipFallBlockComboDh",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.FallComboDD = {
  {
    "WhipFallComboDDD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = false
    }
  },
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        40,
        nil
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipBlockComboDInit",
    {
      Frames = {
        nil,
        40,
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        40,
        nil
      },
      OnFloor = true,
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipFallBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      Scroll = "WhipFallBlockComboDh",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets["FallComboDD-Repeat-"] = {
  {
    "WhipFallComboD",
    {
      Frames = {
        nil,
        10,
        22
      },
      OnFloor = false
    }
  },
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = false,
      Scroll = "WhipSprintComboDDark"
    }
  },
  {
    "WhipFallBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      Scroll = "WhipFallBlockComboDh",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.FallComboDDD = {
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false
    }
  },
  {
    "WhipBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipSMCatchedInit",
    {
      ["Boolean expresion"] = ">oAI.iCrazyState!=0,>!bIsFalling",
      Class = "SwordMaster",
      Dist = {400, nil},
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Probability = {0, 0.07}
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipFallComboDDDD",
    {
      Frames = {
        nil,
        42,
        53
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipFallBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      Scroll = "WhipFallBlockComboDh",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.FallComboDhD = {
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false
    }
  },
  {
    "WhipBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipSMCatchedInit",
    {
      ["Boolean expresion"] = ">oAI.iCrazyState!=0,>!bIsFalling",
      Class = "SwordMaster",
      Dist = {400, nil},
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Probability = {0, 0.07}
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipFallComboDhDInit",
    {
      Frames = {
        nil,
        24,
        42
      },
      OnFloor = true,
      Parry = false,
      Scroll = "WhipFallComboDhD"
    }
  }
}
CombatLinks.Presets.FallComboDhDJ = {
  {
    "WhipBlockComboJInit",
    {
      ["Boolean expresion"] = "<oActCtrl.oActClass.SprintOnDoubleTap==1",
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipBlockSommerJump",
    {
      ["Boolean expresion"] = "<oActCtrl.oActClass.SprintOnDoubleTap==1",
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "!bGauntlet"
    }
  },
  {
    "WhipComboDJ",
    {
      Frames = {
        nil,
        13,
        nil
      }
    }
  }
}
CombatLinks.Presets.FallComboDh_Jump = {
  {
    "WhipBlockComboJInit",
    {
      ["Boolean expresion"] = "<oActCtrl.oActClass.SprintOnDoubleTap==1",
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipBlockSommerJump",
    {
      ["Boolean expresion"] = "<oActCtrl.oActClass.SprintOnDoubleTap==1",
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "!bGauntlet"
    }
  },
  {
    "WhipComboDJ",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.FallComboK = {
  {
    "WhipFallComboKInit",
    {
      DaggersNeeded = true,
      Frames = {
        nil,
        31,
        nil
      }
    }
  }
}
CombatLinks.Presets.FallDefaultArea = {
  {
    "WhipFallComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = false
    }
  },
  {
    "WhipFallBlockComboAInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      Scroll = "WhipFallBlockComboAh",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.FallDefaultDagger = {
  {
    "WhipFallComboKInit",
    {
      DaggersNeeded = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  }
}
CombatLinks.Presets.FallDefaultDirect = {
  {
    "WhipFallComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = false
    }
  },
  {
    "WhipFallBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      Scroll = "WhipFallBlockComboDh",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.FallDefaultGrip = {
  {
    "WhipFallComboGripBig",
    {
      AICollision = true,
      Dist = {nil, 800},
      EnemySize = {
        average = false,
        giant = false,
        large = true,
        small = false
      },
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      },
      OnFloor = false,
      Scroll = "WhipFallComboGripBig",
      ["uData Property"] = ">!NoGripAttacks"
    }
  },
  {
    "WhipFallComboGripSmallDown",
    {
      Dist = {0, 300},
      EnemyOnFloor = false,
      EnemySize = {
        average = true,
        giant = false,
        large = false,
        small = true
      },
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      },
      HasAction = {
        Name = "HitFallDown",
        ["not"] = false
      },
      OnFloor = false,
      Scroll = "WhipFallComboGripSmallDown"
    }
  },
  {
    "WhipFallComboGripSmall",
    {
      AICollision = true,
      Dist = {0, 1200},
      EnemyOnFloor = true,
      EnemySize = {
        average = true,
        giant = false,
        large = false,
        small = true
      },
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      },
      HasAction = {
        Name = "HitUp2",
        ["not"] = false
      },
      OnFloor = false,
      Scroll = "WhipFallComboGripSmall"
    }
  }
}
CombatLinks.Presets.FallDefaultJump = {
  {
    "WhipFallComboStomp",
    {
      ["Boolean expresion"] = "<!uData.NoStomp",
      OnFloor = false,
      Parry = true
    }
  }
}
CombatLinks.Presets.FallDefaultVial = {
  {
    "WhipFallComboV",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = false,
      VialsNeeded = true
    }
  }
}
CombatLinks.Presets.FallRunDefaultArea = {
  {
    "WhipFallRunComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = false
    }
  },
  {
    "WhipFallBlockComboAInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      Scroll = "WhipFallBlockComboAh",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.FallRunDefaultDirect = {
  {
    "WhipFallRunComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = false
    }
  },
  {
    "WhipFallBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = true,
      Scroll = "WhipFallBlockComboDh",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.HitHardBackFix_Jump = {
  {
    "WhipHitHardBackFix",
    {
      Frames = {
        nil,
        10,
        40
      }
    }
  }
}
CombatLinks.Presets.HitHardFwFix_Jump = {
  {
    "WhipHitHardFwFix",
    {
      Frames = {
        nil,
        10,
        40
      }
    }
  }
}
CombatLinks.Presets.HitHardLeftFix_Jump = {
  {
    "WhipHitHardLeftFix",
    {
      Frames = {
        nil,
        10,
        40
      }
    }
  }
}
CombatLinks.Presets.HitHardRightFix_Jump = {
  {
    "WhipHitHardRightFix",
    {
      Frames = {
        nil,
        10,
        40
      }
    }
  }
}
CombatLinks.Presets.LauraGrip = {
  {
    "GlCatchInit",
    {
      AICollision = true,
      ["Boolean expresion"] = ">oAI.iCrazyState==0",
      Class = "GhoulDLC",
      Dist = {-1, 50},
      EnemyOnFloor = true,
      Frames = {
        nil,
        "ReadyToGrip",
        nil
      }
    }
  }
}
CombatLinks.Presets.SommerJumpDD = {
  {
    "WhipBlockSommerJumpDD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.Sommersault = {
  {
    "WhipBlockSommerJump",
    {
      Frames = {
        nil,
        5,
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.SommersaultDirect = {
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        32,
        nil
      }
    }
  },
  {
    "WhipBlockSommerJumpD",
    {
      AttackingSuggestedTgt = true,
      EnemyAtBack = true,
      Frames = {
        nil,
        25,
        nil
      },
      Scroll = "WhipBlockSommerJumpDDD",
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipBlockComboDInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.SpiderGiantA = {
  {
    "WhipSgRideSpit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.SpiderGiantD = {
  {
    "WhipSgRideAttack0",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.SprintAD = {
  {
    "WhipSprintComboAD",
    {
      Frames = {
        nil,
        11,
        25
      }
    }
  },
  {
    "WhipComboD",
    {
      Frames = {
        25,
        25,
        nil
      }
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.TrollBigDD = {
  {
    "WhipTbRideComboDD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.TrollBigDDD = {
  {
    "WhipTbRideComboDDD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.TrollBigDDDD = {
  {
    "WhipTbRideComboDDDD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.TrollBigDefaultArea = {
  {
    "WhipTbRideComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.TrollBigDefaultDirect = {
  {
    "WhipTbRideComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.TrollbigAA = {
  {
    "WhipTbRideComboAA",
    {
      Frames = {
        nil,
        26,
        30
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipTbRideComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.TrollbigAAA = {
  {
    "WhipTbRideComboAAA",
    {
      Frames = {
        nil,
        47,
        51
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipTbRideComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.TrollbigAAAA = {
  {
    "WhipTbRideComboAAAA",
    {
      Frames = {
        nil,
        70,
        71
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipTbRideComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.TrollbigAAAAA = {
  {
    "WhipTbRideComboAAAAA",
    {
      Frames = {
        nil,
        95,
        96
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipTbRideComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.UppercutJump = {
  {
    "WhipBlockComboJInit",
    {
      ["Boolean expresion"] = "<oActCtrl.oActClass.SprintOnDoubleTap==1",
      Frames = {
        "ReadyToLink",
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipBlockSommerJump",
    {
      ["Boolean expresion"] = "<oActCtrl.oActClass.SprintOnDoubleTap==1",
      Frames = {
        "ReadyToLink",
        "ReadyToLink2",
        nil
      },
      OnFloor = true,
      Parry = true,
      ["uData Property"] = "!bGauntlet"
    }
  },
  {
    "WhipBlockComboUppercutJ",
    {
      ["Boolean expresion"] = "<oActCtrl.oActClass.uData.bWings",
      Frames = {
        nil,
        10,
        nil
      },
      OnFloor = false,
      Scroll = "WhipBlockComboUppercutJ"
    }
  }
}
CombatLinks.Presets.WargGreatDefaultArea = {
  {
    "WhipWgRideAttack1",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.WargGreatDefaultAreaAlt = {
  {
    "WhipWgRideAttack",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.WargGreatDefaultDirect = {
  {
    "WhipWgRideAttackDashInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.WarthogA = {
  {
    "WhipWtRideAttack1",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.WarthogD = {
  {
    "WhipWtRideAttack",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.WarthogDD = {
  {
    "WhipWtRideAttack0",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.WarthogRunInitD = {
  {
    "WhipWtRideRunAttack",
    {
      Frames = {
        43,
        43,
        nil
      },
      OnFloor = true
    }
  },
  {
    "WhipWtRideAttack",
    {
      Frames = {
        nil,
        1,
        43
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.WarthogWalk = {
  {
    "WhipWtRideRunAttack",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.WhipBlockSommerJumpDDD = {
  {
    "WhipBlockSommerJumpDDD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  }
}
CombatLinks.Presets.WhipComboA = {
  {
    "WhipComboAA",
    {
      Frames = {
        nil,
        15,
        33
      }
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        15,
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.WhipComboAA = {
  {
    "WhipComboAAA",
    {
      Frames = {
        nil,
        26,
        45
      },
      OnFloor = true
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        26,
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.WhipComboAAA = {
  {
    "WhipComboAAAA",
    {
      Frames = {
        nil,
        52,
        72
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        52,
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.WhipComboAAAA = {
  {
    "WhipComboAAAAA",
    {
      Frames = {
        nil,
        17,
        30
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        17,
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.WhipComboAAAAA = {
  {
    "WhipComboAAAAAA",
    {
      Frames = {
        nil,
        33,
        45
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        33,
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.WhipComboAAAAAA = {
  {
    "WhipComboAAAAAAA",
    {
      Frames = {
        nil,
        50,
        67
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        50,
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.WhipComboAAAAAAA = {
  {
    "WhipComboAAAAAAAA",
    {
      Frames = {
        nil,
        75,
        85
      },
      OnFloor = true,
      Parry = false
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        75,
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.WhipComboAAAJ = {
  {
    "WhipComboAJ",
    {
      Frames = {
        nil,
        48,
        nil
      }
    }
  }
}
CombatLinks.Presets.WhipComboAAJ = {
  {
    "WhipComboAJ",
    {
      Frames = {
        nil,
        28,
        nil
      }
    }
  }
}
CombatLinks.Presets.WhipComboAD = {
  {
    "WhipComboADLhInit",
    {
      Frames = {
        nil,
        12,
        nil
      },
      LightPower = true,
      Parry = false,
      Scroll = "WhipComboADLMh"
    }
  },
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false
    }
  },
  {
    "WhipComboDDDDDDInit",
    {
      DarkPower = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipComboADDrh"
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.WhipComboAJ = {
  {
    "WhipComboAJ",
    {}
  }
}
CombatLinks.Presets.WhipComboD = {
  {
    "WhipComboDD",
    {
      Frames = {
        nil,
        10,
        nil
      }
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.WhipComboDA = {
  {
    "WhipComboDA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Scroll = "WhipComboDAA"
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.WhipComboDAA = {
  {
    "WhipComboDAA",
    {
      Frames = {
        nil,
        16,
        34
      },
      OnFloor = true
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      OnFloor = true
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        16,
        nil
      },
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.WhipComboDAD = {
  {
    "WhipComboDADInit",
    {
      Frames = {
        nil,
        16,
        26
      },
      OnFloor = true,
      Scroll = "WhipComboDAD"
    }
  },
  {
    "WhipComboD",
    {
      Frames = {
        25,
        25,
        nil
      },
      OnFloor = true
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.WhipComboDD = {
  {
    "WhipComboDDD",
    {
      Frames = {
        nil,
        9,
        nil
      }
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.WhipComboDDD = {
  {
    "WhipComboDDDD",
    {
      Frames = {
        nil,
        16,
        nil
      }
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.WhipComboDDDD = {
  {
    "WhipComboDDDDD",
    {
      Frames = {
        nil,
        17,
        nil
      }
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.WhipComboDDDDJ = {
  {
    "WhipComboDJ",
    {
      Frames = {
        nil,
        15,
        68
      }
    }
  }
}
CombatLinks.Presets.WhipComboDDDJ = {
  {
    "WhipComboDJ",
    {
      Frames = {
        nil,
        16,
        54
      }
    }
  }
}
CombatLinks.Presets.WhipComboDDhEnd = {
  {
    "WhipComboDDhD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Scroll = "WhipComboAhA"
    }
  }
}
CombatLinks.Presets.WhipComboDDhJ = {
  {
    "WhipComboDJ",
    {
      Frames = {
        nil,
        14,
        nil
      }
    }
  }
}
CombatLinks.Presets.WhipComboDJ = {
  {
    "WhipComboDJ",
    {}
  }
}
CombatLinks.Presets.WhipComboDhAAlt = {
  {
    "WhipComboAhAAlt",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  }
}
CombatLinks.Presets.WhipComboDrA = {
  {
    "WhipComboDhDAlt",
    {}
  }
}
CombatLinks.Presets.WhipComboDrDrD = {
  {
    "WhipComboDrDrD",
    {
      Frames = {
        nil,
        18,
        35
      },
      OnFloor = true,
      Scroll = "WhipComboDrD"
    }
  },
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.WhipComboDrDrDrD = {
  {
    "WhipComboDrDrDrD",
    {
      Frames = {
        nil,
        34,
        47
      },
      OnFloor = true
    }
  },
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.WhipComboDrDrDrDrD = {
  {
    "WhipComboDrDrDrDrD",
    {
      Frames = {
        nil,
        48,
        "ReadyToLink"
      },
      OnFloor = true,
      Scroll = "WhipComboDrDrDrD"
    }
  },
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.WhipComboDrDrDrDrDrD = {
  {
    "WhipComboDrDrDrDrDrD",
    {
      Frames = {
        nil,
        64,
        78
      },
      OnFloor = true,
      Scroll = "WhipComboDrDrDrDrD"
    }
  },
  {
    "WhipComboDrDrDrD",
    {
      Frames = {
        nil,
        64,
        78
      },
      OnFloor = true,
      Repetitions = 3,
      Scroll = "WhipComboDrDrDrD"
    }
  },
  {
    "WhipComboD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  },
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      DoubleTap = true,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      },
      Parry = false,
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  }
}
CombatLinks.Presets.WhipSprintComboDDark = {
  {
    "WhipSprintComboDDark",
    {
      DarkPower = true,
      Frames = {
        8,
        12,
        nil
      },
      Scroll = "WhipSprintComboDDark",
      ["uData Property"] = "bGauntlet"
    }
  },
  {
    "WhipComboD",
    {
      DarkPower = false,
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  }
}
CombatLinks.Presets.WhipSyncComboAA = {
  {
    "WhipSyncComboAA",
    {
      Frames = {
        nil,
        16,
        21
      },
      OnFloor = true
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        16,
        nil
      },
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.WhipSyncComboAAA = {
  {
    "WhipSyncComboAAA",
    {
      Frames = {
        nil,
        35,
        42
      },
      OnFloor = true
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        42,
        nil
      }
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        35,
        nil
      },
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.WhipSyncComboAAAA = {
  {
    "WhipSyncComboAAAA",
    {
      Frames = {
        nil,
        49,
        52
      },
      OnFloor = true
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        49,
        nil
      },
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.WhipSyncComboAAAAA = {
  {
    "WhipSyncComboAAAAA",
    {
      Frames = {
        nil,
        62,
        65
      },
      OnFloor = true
    }
  },
  {
    "WhipComboA",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  },
  {
    "WhipSprintComboA",
    {
      DoubleTap = true,
      Frames = {
        nil,
        62,
        nil
      },
      Scroll = "WhipSprintComboAD"
    }
  }
}
CombatLinks.Presets.LauraD = {
  {
    "AttackD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  }
}
CombatLinks.Presets.LauraDD = {
  {
    "AttackDD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  }
}
CombatLinks.Presets.LauraDDD = {
  {
    "AttackDDD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  }
}
CombatLinks.Presets.LauraDDDD = {
  {
    "AttackDDDD",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  }
}
CombatLinks.Presets.LauraA = {
  {
    "AttackAreaInit",
    {
      Frames = {
        nil,
        "ReadyToLink",
        nil
      }
    }
  }
}
