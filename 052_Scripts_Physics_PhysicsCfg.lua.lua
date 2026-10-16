function PhysicsCfg.main()
  local m
  
  m = Physics.GetSurface("NONE")
  m.DynamicFriction = 4
  m = Physics.GetSurface("GROUND")
  m.Restitution = 0.4
  m.DynamicFriction = 4
  m = Physics.GetSurface("GLASS")
  m.Restitution = 0.5
  m.DynamicFriction = 4
  m = Physics.GetSurface("GRASS")
  m.Restitution = 0.3
  m.DynamicFriction = 4
  m = Physics.GetSurface("METAL")
  m.Restitution = 0.5
  m.DynamicFriction = 4
  m = Physics.GetSurface("STONE")
  m.Restitution = 0
  m.DynamicFriction = 4
  m = Physics.GetSurface("WATER")
  m.Restitution = 0.01
  m.DynamicFriction = 4
  m = Physics.GetSurface("WOOD")
  m.Restitution = 0.4
  m.DynamicFriction = 4
  m = Physics.GetSurface("MUD")
  m.Restitution = 0.2
  m.DynamicFriction = 4
end
