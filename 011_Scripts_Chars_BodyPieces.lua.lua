function BodyPieces.main()
end

function BodyPieces.SetupBodyPieces(EntityName)
  local ent = Game.GetEntity(EntityName)
  ent:SetupBodyPieces()
end

function BodyPieces.SetupBodyPieces(EntityName, iniIndex, endIndex)
  local ent = Game.GetEntity(EntityName)
  ent:SetupBodyPiecesIndex(1, iniIndex, endIndex)
end

function BodyPieces.LaunchRandomBodyPiece(EntityName, v3Force)
  if v3Force == nil then
    v3Force = V3D(0, 0, 0)
  end
  local ent = Game.GetEntity(EntityName)
  ent:LaunchRandomBodyPiece(v3Force.x, v3Force.y, v3Force.z)
end

function BodyPieces.LaunchAllBodyPieces(EntityName, v3Force)
  if v3Force == nil then
    v3Force = V3D(0, 0, 0)
  end
  local ent = Game.GetEntity(EntityName)
  ent:LaunchAllBodyPieces(v3Force.x, v3Force.y, v3Force.z)
end

function BodyPieces.LaunchBodyPieceId(EntityName, iPieceID, v3Force)
  if v3Force == nil then
    v3Force = V3D(0, 0, 0)
  end
  local ent = Game.GetEntity(EntityName)
  ent:LaunchBodyPieceId(iPieceID, v3Force.x, v3Force.y, v3Force.z)
end

function BodyPieces.LaunchRandomBodyPieceAttacker(EntityName, AttackerName, horizontalForce, verticalForce)
  horizontalForce = defparam(horizontalForce, Game.Rand(8000, 10000))
  verticalForce = defparam(verticalForce, Game.Rand(5000, 10000))
  local ent = Game.GetEntity(EntityName)
  local atk = Game.GetEntity(AttackerName)
  if not ent or not atk then
    return
  end
  local ang = (ent.Pos - atk.Pos):getrot()
  local v3Force = V3D(0, verticalForce, horizontalForce):rot(ang)
  ent:LaunchRandomBodyPiece(v3Force.x, v3Force.y, v3Force.z)
end

function BodyPieces.LaunchBodyPieceIdAttacker(EntityName, iPieceID, AttackerName, horizontalForce, verticalForce)
  horizontalForce = defparam(horizontalForce, Game.Rand(8000, 10000))
  verticalForce = defparam(verticalForce, Game.Rand(5000, 10000))
  local ent = Game.GetEntity(EntityName)
  local atk = Game.GetEntity(AttackerName)
  if not ent or not atk then
    return
  end
  local ang = (ent.Pos - atk.Pos):getrot()
  local v3Force = V3D(0, verticalForce, horizontalForce):rot(ang)
  ent:LaunchBodyPieceId(iPieceID, v3Force.x, v3Force.y, v3Force.z)
end

function BodyPieces.LaunchAllBodyPiecesAttacker(EntityName, AttackerName)
  local ent = Game.GetEntity(EntityName)
  local atk = Game.GetEntity(AttackerName)
  if not ent or not atk then
    return
  end
  local ang = (ent.Pos - atk.Pos):getrot()
  local v3Force = V3D(0, Game.Rand(15000, 20000), Game.Rand(15000, 20000)):rot(ang)
  ent:LaunchAllBodyPieces(v3Force.x, v3Force.y, v3Force.z)
end

function BodyPieces.PreloadBodyPieces(typeName, maxPieces, first)
  first = defparam(first, 0)
  for i = first, maxPieces - 1 do
    local sPieceName = typeName .. "_Piece_" .. string.format("%02d", i)
    Game.Preload3DObject("Models/Physics/" .. sPieceName .. "/" .. sPieceName .. ".M3D")
    local piece = PhysicsObj.CreateObj("TmpPiece" .. i, sPieceName, V3D(0, 0, 0), V3D(0, 0, 0))
    Game.AddScheduledFunc(Game.GetTime() + 0.1, "", "BodyPieces.DeletePiece", piece.Name)
  end
end

function BodyPieces.DeletePiece(sPieceName)
  local ent = Game.GetEntity(sPieceName)
  if ent then
    ent:Del()
  end
end

function BodyPieces.OnPieceLaunched(OwnerName, sModelName, posx, posy, posz, angx, angy, angz, forcex, forcey, forcez)
  local o = PhysicsObj.CreateObj(sModelName, sModelName, V3D(posx, posy, posz), V3D(angx, angy, angz))
  o.Force = V3D(forcex, forcey, forcez)
  o.Invulnerable = 1
  o.Enable = 1
  o.CollAble = 0
  NPC.DisolveAndDeleteEntity(o.Name, 3, 2)
  FXDamage.BodyPieceRemoved(o.Name, o.Pos, o.Ang)
  Game.GetEntity(OwnerName).oLastPieceLaunched = o
end
