function ObjectLauncher.main()
end

function ObjectLauncher.InitLauncher(o)
  Game.AddScheduledFunc(Game.GetTime() + 1, o.Name, "ObjectLauncher.StartIfAutomatic", o.Name)
end

function ObjectLauncher.StartIfAutomatic(EntityName)
  local launcher = Game.GetEntity(EntityName)
  if launcher.uDatabAutomaticStart then
    ObjectLauncher.StartLaunching(EntityName)
  end
end

function ObjectLauncher.StartLaunching(EntityName)
  Game.DeleteScheduledFuncs(EntityName)
  local launcher = Game.GetEntity(EntityName)
  local timeToLaunch = Game.GetTime() + (launcher.uDataMinLaunchTime + math.random() * (launcher.uDataMaxLaunchTime - launcher.uDataMinLaunchTime))
  Game.AddScheduledFunc(timeToLaunch, EntityName, "ObjectLauncher.LaunchAndSchedule", EntityName)
end

function ObjectLauncher.StopLaunching(EntityName)
  Game.DeleteScheduledFuncs(EntityName)
end

function ObjectLauncher.LaunchAndSchedule(EntityName)
  ObjectLauncher.Launch(EntityName)
  local launcher = Game.GetEntity(EntityName)
  local timeToLaunch = Game.GetTime() + (launcher.uDataMinLaunchTime + math.random() * (launcher.uDataMaxLaunchTime - launcher.uDataMinLaunchTime))
  Game.AddScheduledFunc(timeToLaunch, EntityName, "ObjectLauncher.LaunchAndSchedule", EntityName)
end

function ObjectLauncher.Launch(EntityName)
  MapEffects.ObjectLauncher_Launch(EntityName)
end

function ObjectLauncher.Explode(Fireball)
  MapEffects.ObjectLauncher_Explode(Fireball)
end

function ObjectLauncher.Explosion(pos)
  MapEffects.ObjectLauncher_Explosion(pos)
end
