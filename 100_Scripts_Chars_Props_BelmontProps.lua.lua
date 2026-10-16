function BelmontProps.main()
  local class = Act.GetClass("Belmont")
  
  class.Radius = 70
  class.HiCapsule = 10
  class.LoCapsule = 75
  class.YModelDisp = -25
  class.SRadius = 12
  class.MinFallDist = 100
  class.Mass = 70
  class.Gravity = 0
  class.FlyAccel = 1000
  class.FlyFric = 0.5
  class.FlySpeed = 1000
  class.FlyHighSpeed = 2400
  class.Size = "average"
  class.Life = 100
  class.TurnAngLimit = 45
  class.MinTimeWalking = 0
  class.SelectionBox = V4D(50, 110, 50, 0)
  class.SelectionYDisp = -30
  class.FOV = 75
  class.CamNearDist = 500
  class.CamDist = 600
  class.CamFarDist = 700
  class.CamAng = -10
  class.CamRot = 10
  class.CenterMove = V4D(0, 32, 0, 0)
  class.CenterAim = V4D(-45, 0, 0, 0)
  class.CenterPC = V4D(-40, 32, 0, 0)
  class.Center3Aim = V4D(-100, 0, 0, 0)
  class.ClimbX = 30
  class.ClimbY = 105
  class.ClimbZ = 80
  class.ClimbTolerance = 60
  class.ClimbBorder = 28
  class.ClimbFloorDist = 200
  class.ClimbWallFoot = 70
  class.HangFallTime = 1
  class.HangAutoFallDist = 370
  Game.PreloadLibrary("Scripts/Chars/Props/IK/IKBelmontProps.lua", "IKBelmontProps")
  Game.PreloadLibrary("Scripts/Chars/Props/Design/DesignBelmontProps.lua", "DesignBelmontProps")
  Game.PreloadLibrary("Scripts/Chars/Props/Player/PlayerBelmontProps.lua", "PlayerBelmontProps")
end
