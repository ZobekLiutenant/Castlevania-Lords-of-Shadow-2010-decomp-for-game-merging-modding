PhysicsObj.ListOfScripts = {
  {"Particles", false},
  {"Light", true},
  {"Scene", false},
  {"Parapet", false},
  {"Logic", false},
  {"Door", false},
  {"Atrezzo", false},
  {"Lego", true},
  {
    "SmartObject",
    false
  }
}

function PhysicsObj.main()
  if Game.Get("ToolMode") == 1 then
    PhysicsObj.EdProps = {}
  end
  PhysicsObj.Objs = {}
  PhysicsObj.CreateOnMap()
  PhysicsObj.Preload = {}
end

function PhysicsObj.DefCrash(ObjName)
  local o = Game.GetEntity(ObjName)
  if o.uData.BreakSound ~= nil then
    local attenIni = o.uData.BreakSoundAttenIni or Game.Get("SoundAttenIni")
    local attenEnd = o.uData.BreakSoundAttenEnd or Game.Get("SoundAttenEnd")
    if o.uData.BreakNumberSounds ~= nil then
      Sound.PlaySound(o.Pos, o.uData.BreakSound .. math.ceil(Game.Rand(0.1, o.uData.BreakNumberSounds)), o.uData.BreakVolumeSound, attenIni, attenEnd)
    else
      Sound.PlaySound(o.Pos, o.uData.BreakSound, o.uData.BreakVolumeSound, attenIni, attenEnd)
    end
  end
  local noMoreBreaks = true
  local linkPiece
  if o.FirstLinkPiece and o.FirstLinkPiece ~= "" then
    linkPiece = Game.GetEntity(o.FirstLinkPiece)
  end
  while linkPiece and linkPiece ~= "" do
    if linkPiece.FirstLinkPiece and linkPiece.FirstLinkPiece ~= "" then
      noMoreBreaks = false
      linkPiece.uData.InheritedDropPreset = PickableItems.GetPresetName(o)
      if o.uData.HitAgainList then
        linkPiece.uData.HitAgainList = {}
        for i, data in pairs(o.uData.HitAgainList) do
          table.insert(linkPiece.uData.HitAgainList, data)
        end
      end
    end
    linkPiece = Game.GetEntity(o.NextLinkPiece)
  end
  if noMoreBreaks then
    PickableItems.ScheduleDrop(o, 0)
  end
  PhysicsObj.ObjCrash(ObjName)
end

function PhysicsObj.CreateOnMap()
  local nds, Name, Pos, Angle, isDummy, r1, r2, cad, typo
  Game.StartDummySearch("DM_Physic_*", 1)
  while true do
    Name, Pos, Angle, isDummy = Game.NextDummySearch3D()
    if Name == nil then
      break
    end
    cad = string.sub(Name, 11)
    r1, r2 = string.find(cad, "_")
    typo = string.sub(cad, 0, r1 - 1)
    PhysicsObj.CreateObj(Name, typo, Pos, Angle)
  end
end

PhysicsObj.AutoDestroy = 1

function PhysicsObj.CreateSubObjs(obj)
  local o, i, a, b, num, pos, ang, elemList, _type
  a = string.sub(obj.Mesh, 1, string.len(obj.Mesh) - 4)
  elemList = Physics.GetModelElementList(obj.Name)
  if 0 < #elemList and obj.Invulnerable == 0 then
    obj.TgType = "red"
  end
  for i = 1, #elemList do
    local meshName = obj.Mesh
    local className = string.sub(meshName, 0, #meshName - 4)
    if obj["isNode_DC_Element_" .. elemList[i]] == 1 then
      b = string.sub(elemList[i], 1, string.len(elemList[i]) - 3)
      pos = obj["NodePosHierarchy_DC_Element_" .. elemList[i]]
      ang = obj["NodeAngHierarchy_DC_Element_" .. elemList[i]]
      o = PhysicsObj.CreateObj(b, b, pos, ang, 1)
      o.CrashableModelNodeIndex = obj["nodeIndex_DC_Element_" .. elemList[i]]
      o.CrashableElement = 1
    elseif obj["isNode_DC_Piece_" .. elemList[i]] == 1 then
      pos = obj["NodePosHierarchy_DC_Piece_" .. elemList[i]]
      ang = obj["NodeAngHierarchy_DC_Piece_" .. elemList[i]]
      num = tonumber(string.sub(elemList[i], 1, 1))
      if num ~= nil and 0 <= num and num <= 9 then
        local name = a .. "_Piece" .. elemList[i]
        o = PhysicsObj.CreateObj(name, name, pos, ang, 1)
        _type = name
      else
        o = PhysicsObj.CreateObj(elemList[i], elemList[i], pos, ang, 1)
        _type = elemList[i]
      end
      o.CrashableModelNodeIndex = obj["nodeIndex_DC_Piece_" .. elemList[i]]
    end
    obj.LinkPiece = o.Name
    if PhysicsObj.AutoDestroy == 0 then
      o.AutoDestroy = 0
      PhysicsObj.AutoDestroy = 1
    end
    local _setup = PhysicsObj.Objs[_type].SetUp
    if _setup then
      _setup(o)
    end
  end
end

PhysicsObj.LoadCloth = 1

function PhysicsObj.CreateObj(Name, Type, Pos, Ang, SetAsKinematic, o)
  local a, i
  local XtraDirect = ""
  local _name = Name
  local _Type = Type
  local _Pos = Pos
  local _Ang = Ang
  PhysicsObj.ObjAuxType = Type
  if Game.Get("ToolMode") == 1 and Game.Get("ShowEditorModels") == 1 and Game.FileExist("Models/Physics/" .. Type .. "/Editor") then
    XtraDirect = "Editor/"
  end
  if PhysicsObj.Objs[Type] == nil then
    PhysicsObj.ObjAuxProperty = nil
    local filenam = "Models/Physics/" .. Type .. "/EntityDescriptor"
    PhysicsObj.ObjAuxProperty = nil
    PhysicsObj.EdAuxProperty = nil
    if Game.FileExist(filenam .. ".lc") or Game.FileExist(filenam .. ".lua") then
      Game.PreloadLibrary(filenam .. ".lua", "EntityDescriptor", false)
    end
    if PhysicsObj.ObjAuxProperty == nil then
      PhysicsObj.Objs[Type] = {Type = "Obj"}
    else
      PhysicsObj.Objs[Type] = PhysicsObj.ObjAuxProperty
    end
    if Game.Get("ToolMode") == 1 then
      local edAuxProperty = PhysicsObj.EdAuxProperty
      if edAuxProperty == nil then
        edAuxProperty = {}
      end
      if PickableItems and PhysicsObj.ObjAuxProperty ~= nil then
        for i = 1, #PhysicsObj.ObjAuxProperty do
          local propData = PhysicsObj.ObjAuxProperty[i]
          if propData[1] == "OnDeath" and propData[2] == "PhysicsObj.DefCrash" then
            table.insert(edAuxProperty, {
              "uDataDropPreset",
              "Drop Preset",
              ESD_TEXT_LIST,
              "-ClassDefault",
              PickableItems.GetPresets()
            })
            break
          end
        end
      end
      table.insert(edAuxProperty, {
        "ModelAO",
        "Model AO",
        ESD_FLOAT,
        "0",
        {
          {"MinValue", 0},
          {"MaxValue", 1}
        }
      })
      PhysicsObj.EdProps[Type] = edAuxProperty
    end
  end
  a = PhysicsObj.Objs[Type]
  if type(a) == "table" then
    if PhysicsObj.ObjAuxProperty == nil or PhysicsObj.Objs[Type].Type ~= "PhysicsScene" and PhysicsObj.Objs[Type].Type ~= "WithLifeScene" then
      if o == nil then
        o = Game.CreateEntity(Name, a.Type, Pos)
      else
        o.Pos = Pos
      end
      o.Ang = Ang
    elseif PhysicsObj.Objs[Type].Type == "PhysicsScene" then
      PhysicsObj.SceneEntities = {}
      Game.Set("EditorPxCreationCallback", "PhysicsObj.OnCreatePhysXNode")
      Physics.SetSceneToImport(PhysicsObj.Objs[Type].SceneToImport)
      local nameEntity = Physics.ImportScene(Pos, 0)
      Physics.EndScene()
      if nameEntity ~= "" then
        o = Game.GetEntity(nameEntity)
        o.uData.OnlyOneClothScene = false
        o.uData.IsWithLifeScene = false
        o.uData.SurfaceStr = PhysicsObj.Objs[Type].SurfaceStr
        Game.Set("EditorPxCreationCallback", "")
        o.uData.SceneEntities = PhysicsObj.SceneEntities
        PhysicsObj.SceneEntities = nil
      else
        Game.ConsoleError("Escena con solo una tela!!!\n")
        o = PhysicsObj.SceneEntities[1]
        o.uData.IsWithLifeScene = false
        o.uData.SurfaceStr = PhysicsObj.Objs[Type].SurfaceStr
        Game.Set("EditorPxCreationCallback", "")
        o.uData.SceneEntities = PhysicsObj.SceneEntities
        PhysicsObj.SceneEntities = nil
        o.uData.OnlyOneClothScene = true
      end
      for h = 1, #o.uData.SceneEntities do
        local e = o.uData.SceneEntities[h]
        if e:IsType("PxCloth") then
          local LevelName = Game.GetLevelPath()
          local PathName = LevelName .. "/ClothState/Cloth_" .. PhysicsObj.LoadCloth .. ".bin"
          PhysicsObj.LoadCloth = PhysicsObj.LoadCloth + 1
          if Game.FileExist(PathName) then
            Physics.LoadClothState(e.Name, PathName)
            e.Enable = 1
          end
        end
      end
      return o
    else
      PhysicsObj.SceneEntities = {}
      Game.Set("EditorPxCreationCallback", "PhysicsObj.OnCreatePhysXNode")
      if o == nil then
        o = Game.CreateEntity(Name, "WithLife", Pos)
      else
        o.Pos = Pos
      end
      o.uData.OnlyOneClothScene = false
      o.uData.bIsPhysXScene = true
      o.uData.IsWithLifeScene = true
      o.uData.SurfaceStr = PhysicsObj.Objs[Type].SurfaceStr
    end
    if a.Anm ~= nil then
      if Act.GetClass(Type) == nil then
        ac = Act.CreateClass(Type)
        ac.ModelFilePath = "Models/Physics/" .. Type .. "/" .. XtraDirect .. Type .. ".m3d"
        for i = 1, #a.Anm do
          am = ac:NewAct(a.Anm[i][1])
          am.AnmFilePath = "Models/Physics/" .. Type .. "/" .. XtraDirect .. a.Anm[i][1] .. ".m3d"
          am.isLoop = a.Anm[i][2]
          if a.Anm[i][3] ~= nil then
            am.InterpTime = a.Anm[i][3]
          end
        end
        ac.DefAction = a.Anm[1][1]
        if a.InitClass ~= nil then
          a.InitClass(ac, a.InitClassParams)
        end
      end
      o.ActCtrl = Type
    elseif o:IsType("Obj") then
      o.Mesh = "Models/Physics/" .. Type .. "/" .. XtraDirect .. Type .. ".m3d"
    end
    o.Pos = Pos
    for i = 1, #a do
      o[a[i][1]] = a[i][2]
    end
    if o:IsType("PxBodyPhysics") then
      if o.bCanBurn then
        o.FireOn = "Fire.FireOn"
        o.FireOff = "Fire.FireOff"
      end
      if SetAsKinematic ~= nil then
        o.Kinematic = SetAsKinematic
      end
    end
    if PhysicsObj.Objs[Type].AutoDestroy and PhysicsObj.Objs[Type].AutoDestroy == 0 then
      PhysicsObj.AutoDestroy = 0
    end
    if o:IsType("Obj") then
      o.Ang = Ang
      PhysicsObj.CreateSubObjs(o)
    end
    if a.Func ~= nil then
      a.Func(o)
    end
  else
    o = a(Name, Pos, Ang)
  end
  Game.Set("EditorPxCreationCallback", "")
  if PhysicsObj.SceneEntities then
    o.uData.SceneEntities = PhysicsObj.SceneEntities
    PhysicsObj.SceneEntities = nil
  end
  local final_obj
  if PhysicsObj.Objs[Type].Type == "WithLifeScene" then
    o.Life = 0
    o.oActCtrl:KillRagDoll()
    local namewithlife = o.Name
    final_obj = o.uData.SceneEntities[1]
    final_obj.uData.NodeWithLife = namewithlife
    final_obj.uData.IsWithLifeScene = true
    final_obj.uData.SceneEntities = o.uData.SceneEntities
    final_obj.uData.OnlyOneClothScene = false
    for p = 1, #o.uData.SceneEntities do
      local ot = o.uData.SceneEntities[p]
      ot.Enable = 0
    end
    for k = 1, #o.uData.SceneEntities do
      local obj
      obj = o.uData.SceneEntities[k]
      if obj.uData.JointToScene == true then
        obj.uData.SceneEntities = o.uData.SceneEntities
        o.uData.SceneEntities = nil
        o.uData.IsWithLifeScene = false
        obj.uData.IsWithLifeScene = true
        obj.uData.NodeWithLife = namewithlife
        obj.uData.OnlyOneClothScene = false
        final_obj = obj
        break
      end
    end
    return final_obj
  end
  return o
end

PhysicsObj.CanBreak = true

function PhysicsObj.ObjCrash(ObjName, Delta)
  if PhysicsObj.CanBreak then
    Delta = defparam(Delta, 0)
    local ent = Game.GetEntity(ObjName)
    if ent ~= nil then
      ent.CrashObject = Delta
      if ent.Kinematic == 1 then
        ent.Kinematic = 0
      end
      if ent.bMapCollision then
        ent.bMapCollision = false
      end
      if ent.uData.base ~= nil and ent.uData.baseMustDisolve ~= nil and ent.uData.baseMustDisolve == true then
        Game.GetEntity(ent.uData.base).bMapCollision = false
        NPC.DisolveAndDeleteEntity(ent.uData.base, 1, 2)
      end
      if ent.uData.OnDeathFX then
        ent.uData.OnDeathFX(ObjName)
      end
      if init.LevelName == "level.5_8_abbey_tower" and Trials.isTrial and MapTrial ~= nil then
        MapTrial.OnObjectBreak()
      end
    end
  end
end

function PhysicsObj.CreateChain(Name, Pos, Model, nlink)
  local o, oo, ctr, oob, space
  space = Game.CreateEntity(Name .. "_Space", "Space")
  o = PhysicsObj.CreateObj(Name .. "Chain", Model, Pos, V3D(0, 0, 0))
  space.AddEntity = o.Name
  oob = o
  Physics.MapLink(o.Name, 0, Physics.iUniversal)
  o.Joint00Axis = V3D(1, 0, 0)
  o.Joint00Axis2 = V3D(0, 0, 1)
  for ctr = 1, nlink do
    oo = PhysicsObj.CreateObj(Name .. "Chain" .. ctr, Model, Pos, V3D(0, 0, 0))
    space.AddEntity = oo.Name
    Physics.Link(o.Name, oo.Name, 1, 0, Physics.iUniversal)
    o.Joint01Axis = V3D(1, 0, 0)
    o.Joint01Axis2 = V3D(0, 0, 1)
    o = oo
  end
  return o, oob, space
end

function PhysicsObj.SwitchDoor(EntityName, EventName, Time)
  local o = Game.GetEntity(EntityName)
  if o.uData.useColl then
    o.bMapCollision = EventName == "Closed"
  end
end

function PhysicsObj.SwitchDoorPortal(EntityName, EventName, Time)
  local o = Game.GetEntity(EntityName)
  if o.uData.sPortal ~= nil then
    Game.SetPortal(o.uData.sPortal, EventName ~= "Closed")
  end
end

function PhysicsObj.OpenDoor(EntityName)
  local o = Game.GetEntity(EntityName)
  if o.Action ~= "Opened" and o.Action ~= "Open" then
    o.Action = "Open"
  end
end

function PhysicsObj.CloseDoor(EntityName)
  local o = Game.GetEntity(EntityName)
  if o.Action ~= "Closed" and o.Action ~= "Close" then
    o.Action = "Close"
  end
end

function PhysicsObj.InitDoorClass(ac, params)
  local tim = 0.5
  if params ~= nil and params.OpenMoment ~= nil then
    tim = params.OpenMoment
  end
  am = ac:GetAct("Open")
  MakeChar.ActEvent(am, "Opened", "PhysicsObj.SwitchDoor", am.FirstFrame + math.floor(am.AnmTotalTime * am.AnmFPS * tim)).Discardable = 0
  MakeChar.ActEvent(am, "Opened", "PhysicsObj.SwitchDoorPortal", am.FirstFrame)
  MakeChar.ActEvent(am, "Opened", "!AnmSetAction")
  MakeChar.ActEvent(am, "Opened", "PhysicsObj.ResetCol")
  am = ac:GetAct("Close")
  MakeChar.ActEvent(am, "Closed", "PhysicsObj.SwitchDoor", am.FirstFrame).Discardable = 0
  MakeChar.ActEvent(am, "Closed", "!AnmSetAction")
  MakeChar.ActEvent(am, "Closed", "PhysicsObj.SwitchDoorPortal")
  MakeChar.ActEvent(am, "Closed", "PhysicsObj.ResetCol")
end

function PhysicsObj.ResetCol(EntityName)
  local o = Game.GetEntity(EntityName)
  local useVisible = o.uData.useVisible == nil or o.uData.useVisible == true
  if o and o.bOpenColl then
    o:ResetMapCollision(true, useVisible, true)
    o.bMapCollision = true
  end
end

function PhysicsObj.SetupDoor(o)
  local ac, am
  local LAction = o.Action
  local isClosed = LAction == "Closed" or LAction == "Close"
  local useVisible = o.uData.useVisible == nil or o.uData.useVisible == true
  local enter = true
  local nodeSize3D = Game.Get("BatchBuildGraph3DAI")
  local nodeSize2D = Game.Get("BatchBuildGraph2DAI")
  local viewerIniAI = Game.Get("ViewerIniAI") ~= 0
  if 0 < nodeSize3D or 0 < nodeSize2D or viewerIniAI then
    enter = false
  end
  if enter then
    local faliu = SaveGame.GetSaveValue(o.Name, "Action")
    if faliu then
      o.ForceAction = faliu
    end
  end
  if o.uData.useColl == nil then
    o.uData.useColl = true
  end
  if o.uData.useColl then
    o:ResetMapCollision(isClosed, useVisible, true)
    if o.bOpenColl then
      if o.Action == "Opened" or o.Action == "Open" then
        o.oActCtrl:SetAction("Close", true, 0)
        o.oActCtrl:SetAction("Opened", true, 0)
        isClosed = false
      end
      PhysicsObj.ResetCol(o.Name)
    end
  end
  if o.uData.sPortal ~= nil then
    Game.SetPortal(o.uData.sPortal, not isClosed)
  end
  if o.uData.IsChargeBreakable then
    o.TgType = "Red"
    o.AimScoreBonus = 150
    o.uData.PosInitialDash = o.Pos
    ObjFX.FXChargeBreakableSetup(o)
  end
end

function PhysicsObj.GetParapetNodesArray(o)
  local h, idx, Pos
  local a = {}
  local i = 1
  AllHelpers = {
    {
      "DC_HELP_PARAPET_DOWN_00",
      1
    },
    {
      "DC_HELP_PARAPET_LEFT_00",
      2
    },
    {
      "DC_HELP_PARAPET_RIGHT_00",
      3
    },
    {
      "DC_HELP_PARAPET_DOWN_01",
      1
    },
    {
      "DC_HELP_PARAPET_LEFT_01",
      2
    },
    {
      "DC_HELP_PARAPET_RIGHT_01",
      3
    },
    {
      "DC_HELP_PARAPET_DOWN_02",
      1
    },
    {
      "DC_HELP_PARAPET_LEFT_02",
      2
    },
    {
      "DC_HELP_PARAPET_RIGHT_02",
      3
    }
  }
  for idx = 1, #AllHelpers do
    local HlpName = AllHelpers[idx][1]
    if o["isNode_" .. HlpName] ~= 0 then
      a[i] = {}
      h = a[i]
      h.bAdvance = false
      Pos = o["NodePos_" .. HlpName]
      Pos = Game.TestLine(Pos, Pos - V3D(0, 1300, 0), "")
      if Pos ~= nil then
        h.Pos = Pos + V3D(0, 130, 0)
      else
        Game.ConsoleError("Invalid Position for node!!! at " .. HlpName .. " in " .. o.Name .. "\n")
        h.Pos = o["NodePos_" .. HlpName]
      end
      h.Ang = o["NodeAng_" .. HlpName]
      local idply = o.uData[string.sub(HlpName, #HlpName - 1)]
      if idply == nil then
        idply = 63
      end
      h.Member = idply
      h.bAdvance = idply ~= 63
      h.bIsPatrolPoint = false
      h.TypeParapet = AllHelpers[idx][2]
      h.oOwner = o
      i = i + 1
    end
  end
  return a
end

function PhysicsObj.SetupParapet(o)
  local h, idx, Pos
  local am = Game.GetAreaManager()
  o:ResetMapCollision(true, true, true)
  o.uData.bIsParapet = true
  AllHelpers = {
    {
      "DC_HELP_PARAPET_DOWN_00",
      1
    },
    {
      "DC_HELP_PARAPET_LEFT_00",
      2
    },
    {
      "DC_HELP_PARAPET_RIGHT_00",
      3
    },
    {
      "DC_HELP_PARAPET_DOWN_01",
      1
    },
    {
      "DC_HELP_PARAPET_LEFT_01",
      2
    },
    {
      "DC_HELP_PARAPET_RIGHT_01",
      3
    },
    {
      "DC_HELP_PARAPET_DOWN_02",
      1
    },
    {
      "DC_HELP_PARAPET_LEFT_02",
      2
    },
    {
      "DC_HELP_PARAPET_RIGHT_02",
      3
    }
  }
  local a = PhysicsObj.GetParapetNodesArray(o)
  local i = 1
  for idx = 1, #AllHelpers do
    local HlpName = AllHelpers[idx][1]
    if o["isNode_" .. HlpName] ~= 0 then
      local ah = a[i]
      h = am.oNewHelper
      h.bAdvance = ah.bAdvance
      h.Pos = ah.Pos
      h.Ang = ah.Ang
      h.Member = ah.Member
      h.bAdvance = ah.bAdvance
      h.bIsPatrolPoint = ah.bIsPatrolPoint
      h.TypeParapet = ah.TypeParapet
      h.oOwner = ah.oOwner
      i = i + 1
    end
  end
end

function PhysicsObj.FillSmartObjectData(o)
  local oSmart = AISpec.GetSmartObjectByName("Smart_" .. o.Name)
  o.oSmartObject = oSmart
  for i = 0, oSmart.NumSmartData - 1 do
    local oData = oSmart:GetSmartDataAt(i)
    oData.PickAction = o.uData["PickAction" .. i]
    oData.PickNode = o.uData["PickNode" .. i]
    oData.AnimSet = o.uData["AnimSet" .. i]
    oData.PivotNode = o.uData["PivotNode" .. i]
  end
end

function PhysicsObj.FillSmartObjectEditorData(oSmart, sDefaultPickAnim, sDefaultAnimSet, sDefaultPickNode, sDefaultPivotNode)
  local sPivotNode
  for i = 0, oSmart.NumSmartData - 1 do
    local oData = oSmart:GetSmartDataAt(i)
    table.insert(PhysicsObj.EdAuxProperty, {
      "uDataPickAction" .. i,
      "Pick Action for " .. oData.UsableBy .. " (" .. i .. ")",
      ESD_STRING,
      sDefaultPickAnim,
      {}
    })
    table.insert(PhysicsObj.EdAuxProperty, {
      "uDataAnimSet" .. i,
      "Anim Set for " .. oData.UsableBy .. " (" .. i .. ")",
      ESD_STRING,
      sDefaultAnimSet,
      {}
    })
    table.insert(PhysicsObj.EdAuxProperty, {
      "uDataPickNode" .. i,
      "Pick Node for " .. oData.UsableBy .. " (" .. i .. ")",
      ESD_STRING,
      sDefaultPickNode,
      {}
    })
    if oData.PivotNode ~= "" then
      sPivotNode = oData.PivotNode
    else
      sPivotNode = sDefaultPivotNode
    end
    table.insert(PhysicsObj.EdAuxProperty, {
      "uDataPivotNode" .. i,
      "Pivot Node for " .. oData.UsableBy .. " (" .. i .. ")",
      ESD_STRING,
      sPivotNode,
      {}
    })
  end
  PhysicsObj.EdAuxProperty = {}
end

function PhysicsObj.CreateSmartObjectFrom(o, sColliderType, fCollisionRadius, fCollisionLength)
  local sEnemyType, sDummyName
  local oSmartObj = AISpec.CreateSmartObject()
  oSmartObj.Name = "Smart_" .. o.Name
  oSmartObj.oObj = o
  o.oSmartObject = oSmartObj
  if sColliderType ~= nil and (sColliderType == "Sphere" or sColliderType == "Capsule" or sColliderType == "Line") then
    oSmartObj.sColliderType = sColliderType
    oSmartObj.fCollisionRadius = fCollisionRadius
    oSmartObj.fCollisionLength = fCollisionLength
  end
  local bEnd = false
  local i = 1
  while bEnd == false do
    sDummyName = "DC_ANCHOR_Belmont_" .. i
    if o["isNode_" .. sDummyName] ~= 0 then
      local oSmartData = oSmartObj:CreateSmartData()
      oSmartData.Pos = o["NodePos_" .. sDummyName]
      oSmartObj.fOriginalYOffset = o.Pos.y - oSmartData.Pos.y
      local ang = V3D(0, 0, 0)
      ang = o["NodeAng_" .. sDummyName]
      oSmartData.Ang = V3D(ang.x, ang.z + o.Ang.y, ang.y)
      oSmartData.UsableBy = "Belmont"
    else
      bEnd = true
    end
    i = i + 1
  end
  if init.Enemies ~= nil then
    for idx = 1, #init.Enemies do
      sEnemyType = init.Enemies[idx]
      sDummyName = "DC_ANCHOR_" .. sEnemyType
      if o["isNode_" .. sDummyName] ~= 0 then
        local oSmartData = oSmartObj:CreateSmartData()
        oSmartData.Pos = o["NodePos_" .. sDummyName]
        if oSmartObj.fOriginalYOffset == 0 then
          oSmartObj.fOriginalYOffset = o.Pos.y - oSmartData.Pos.y
        end
        local ang = V3D(0, 0, 0)
        ang = o["NodeAng_" .. sDummyName]
        oSmartData.Ang = V3D(ang.x, ang.z + o.Ang.y, ang.y)
        oSmartData.UsableBy = sEnemyType
      end
      for i = 0, 10 do
        sDummyName = "DC_ANCHOR_" .. sEnemyType .. i
        if o["isNode_" .. sDummyName] ~= 0 then
          local oSmartData = oSmartObj:CreateSmartData()
          oSmartData.Pos = o["NodePos_" .. sDummyName]
          if oSmartObj.fOriginalYOffset == 0 then
            oSmartObj.fOriginalYOffset = o.Pos.y - oSmartData.Pos.y
          end
          local ang = V3D(0, 0, 0)
          ang = o["NodeAngHierarchy_" .. sDummyName]
          oSmartData.Ang = V3D(0, Game.NormAng(ang.y), 0)
          Game.ConsoleError("Ang(" .. sDummyName .. "): " .. ang.y .. "\n")
          oSmartData.UsableBy = sEnemyType
          sDummyName = "DC_" .. sEnemyType .. "_Grip" .. i
          if o["isNode_" .. sDummyName] ~= 0 then
            oSmartData.PivotNode = sDummyName
          end
        end
      end
    end
  end
  return oSmartObj
end

function PhysicsObj.SetupSmartObject(o, sColliderType, fCollisionRadius, fCollisionLength, sDefaultPickAnim, sDefaultAnimSet, sDefaultPickNode, sDefaultPivotNode)
  sDefaultPickAnim = defparam(sDefaultPickAnim, "")
  sDefaultAnimSet = defparam(sDefaultAnimSet, "")
  sDefaultPickNode = defparam(sDefaultPickNode, "")
  sDefaultPivotNode = defparam(sDefaultPivotNode, "DC_ROOT")
  o.uData.bIsSmartObject = true
  local oSmartObj = PhysicsObj.CreateSmartObjectFrom(o, sColliderType, fCollisionRadius, fCollisionLength)
  PhysicsObj.FillSmartObjectEditorData(oSmartObj, sDefaultPickAnim, sDefaultAnimSet, sDefaultPickNode, sDefaultPivotNode)
  if not o.uData.DontSetOnFloor then
    oSmartObj:SetOnFloor()
  end
  return oSmartObj
end

function PhysicsObj.CreateBelmontSmartObjectFrom(o, iMaxSmartData, sColliderType, fCollisionRadius, fCollisionLength)
  local sEnemyType, sDummyName
  local oSmartObj = AISpec.CreateSmartObject()
  oSmartObj.Name = "Smart_" .. o.Name
  oSmartObj.oObj = o
  o.oSmartObject = oSmartObj
  if sColliderType ~= nil and (sColliderType == "Sphere" or sColliderType == "Capsule" or sColliderType == "Line") then
    oSmartObj.sColliderType = sColliderType
    oSmartObj.fCollisionRadius = fCollisionRadius
    oSmartObj.fCollisionLength = fCollisionLength
  end
  for i = 1, iMaxSmartData do
    sDummyName = "DC_ANCHOR_Belmont_" .. i
    if o["isNode_" .. sDummyName] ~= 0 then
      local oSmartData = oSmartObj:CreateSmartData()
      oSmartData.Pos = o["NodePos_" .. sDummyName]
      oSmartObj.fOriginalYOffset = o.Pos.y - oSmartData.Pos.y
      local ang = V3D(0, 0, 0)
      ang = o["NodeAng_" .. sDummyName]
      oSmartData.Ang = V3D(ang.x, ang.z + o.Ang.y, ang.y)
      oSmartData.UsableBy = "Belmont"
    end
  end
  return oSmartObj
end

function PhysicsObj.SetupBelmontSmartObject(o, iMaxSmartData, sColliderType, fCollisionRadius, fCollisionLength, sDefaultPickAnim, sDefaultAnimSet, sDefaultPickNode, sDefaultPivotNode)
  sDefaultPickAnim = defparam(sDefaultPickAnim, "")
  sDefaultAnimSet = defparam(sDefaultAnimSet, "")
  sDefaultPickNode = defparam(sDefaultPickNode, "")
  sDefaultPivotNode = defparam(sDefaultPivotNode, "DC_ROOT")
  iMaxSmartData = defparam(iMaxSmartData, 1)
  o.uData.bIsSmartObject = true
  local oSmartObj = PhysicsObj.CreateBelmontSmartObjectFrom(o, iMaxSmartData, sColliderType, fCollisionRadius, fCollisionLength)
  PhysicsObj.FillSmartObjectEditorData(oSmartObj, sDefaultPickAnim, sDefaultAnimSet, sDefaultPickNode, sDefaultPivotNode)
  if not o.uData.DontSetOnFloor then
    oSmartObj:SetOnFloor()
  end
  return oSmartObj
end

function PhysicsObj.Parapet(o)
  local h, idx, Pos
  local am = Game.GetAreaManager()
  if Team ~= nil then
    o.uData.GotoSecondFunc = Team.GotToObjectSecond
    o.uData.GotoMainFunc = Team.GotToObjectMain
    o.uData.UseFunc = Team.AbandonObject
    o.uData.ReadyFunc = Team.InPosition
  end
  o.uData.Ready = false
  o.UseFunc = ""
  o.ArrOpt0 = "TakeCover:Go!"
  o.ArrowCanTeam = 1
  o.MapCollision = 1
  o.VRadius = 1
  Physics.MapLink(o.Name, 0, Physics.iFixed)
  AllHelpers = {
    {
      "DC_HELP_PARAPET_DOWN_00",
      1
    },
    {
      "DC_HELP_PARAPET_LEFT_00",
      2
    },
    {
      "DC_HELP_PARAPET_RIGHT_00",
      3
    },
    {
      "DC_HELP_PARAPET_DOWN_01",
      1
    },
    {
      "DC_HELP_PARAPET_LEFT_01",
      2
    },
    {
      "DC_HELP_PARAPET_RIGHT_01",
      3
    },
    {
      "DC_HELP_PARAPET_DOWN_02",
      1
    },
    {
      "DC_HELP_PARAPET_LEFT_02",
      2
    },
    {
      "DC_HELP_PARAPET_RIGHT_02",
      3
    }
  }
  for idx = 1, #AllHelpers do
    local HlpName = AllHelpers[idx][1]
    if o["isNode_" .. HlpName] ~= 0 then
      h = am.oNewHelper
      h.bAdvance = false
      Pos = o["NodePos_" .. HlpName]
      Pos = Game.TestLine(Pos, Pos - V3D(0, 1300, 0), "")
      h.Pos = Pos + V3D(0, 130, 0)
      h.Ang = o["NodeAng_" .. HlpName]
      h.Member = 127
      h.TypeParapet = AllHelpers[idx][2]
      h.oOwner = o
    end
  end
end

function PhysicsObj.CreatePhysicObject(_Name, _Type, _Pos, _Ang, marray)
  if Game.GetLoadAborted() then
    return
  end
  local h = PhysicsObj.CreateObj(_Name, _Type, _Pos, _Ang)
  local oldh, change
  change = false
  if h.uData.SceneEntities then
    for i = 1, #h.uData.SceneEntities do
      local e = h.uData.SceneEntities[i]
      if e:IsType("PxCloth") then
        oldh = h
        h = e
        change = true
      end
    end
  end
  if h.uData.IsWithLifeScene == true then
    oldh = h
    h = Game.GetEntity(h.uData.NodeWithLife)
    Physics.RotatePhysicsScene(oldh.Name, V3D(0, 0, 0))
    if oldh.uData.JointToScene == true then
      Physics.RestoreEntityWorldJoint(oldh.Name)
    end
    change = true
  end
  if type(marray) == "table" then
    for j = 5, #marray do
      h[marray[j][1]] = marray[j][2]
    end
  elseif marray == "load" then
    Game.GetSingleTable():ReadObject(h)
  end
  if change == true then
    h = oldh
  end
  local __Setup = _Type
  __Setup = PhysicsObj.Objs[__Setup].SetUp
  if __Setup then
    __Setup(h)
  end
  if Game.Get("Viewer") == 0 and Game.Get("ToolMode") == 0 then
    local savevars = _Type
    savevars = PhysicsObj.CheckAditionalSaveVals(h, PhysicsObj.Objs[savevars].SaveVals)
    if savevars then
      SaveGame.SaveLocalEntityValue(h.Name, savevars)
    end
  end
  return h
end

function PhysicsObj.CheckAditionalSaveVals(Entity, savevars)
  if Entity.uData.AutoSaveLight then
    if savevars == nil then
      savevars = {}
    end
    table.insert(savevars, "bLightEnable00")
    table.insert(savevars, "bLightShadow00")
    table.insert(savevars, "LightColor00")
    table.insert(savevars, "LightColorEnd00")
    table.insert(savevars, "LightIntens00")
    table.insert(savevars, "LightStencilMask00")
    table.insert(savevars, "bLightProjEnable00")
    table.insert(savevars, "ProjID00")
    table.insert(savevars, "LightAttStart00")
    table.insert(savevars, "LightDotAtt00")
    table.insert(savevars, "LightDirVector00")
    table.insert(savevars, "LightLightAttDist00")
    table.insert(savevars, "LightShadowAttDist00")
    table.insert(savevars, "bLightSectorEnable00")
    table.insert(savevars, "LightiFX00")
    table.insert(savevars, "LightFX_TorchIntens00")
    table.insert(savevars, "LightFX_TorchFrequency00")
    table.insert(savevars, "LightFX_MoveRadius00")
    table.insert(savevars, "LightFX_MoveFrequency00")
    table.insert(savevars, "bLightEnvEnable00")
    table.insert(savevars, "EnvDiffuseID00")
    table.insert(savevars, "LightEnvDiffuseColor00")
    table.insert(savevars, "LightEnvDiffuseMult00")
    table.insert(savevars, "LightEnvDiffuseMultC00")
    table.insert(savevars, "EnvSpecularID00")
    table.insert(savevars, "LightEnvSpecularColor00")
    table.insert(savevars, "LightEnvSpecularMult00")
    table.insert(savevars, "LightEnvSpecularMultC00")
    table.insert(savevars, "bLightFresnelEnable00")
    table.insert(savevars, "LightFresnelInnerColor00")
    table.insert(savevars, "LightFresnelInnerMult00")
    table.insert(savevars, "LightFresnelInnerMultC00")
    table.insert(savevars, "LightFresnelInnerExp00")
    table.insert(savevars, "LightFresnelEdgeColor00")
    table.insert(savevars, "LightFresnelEdgeMult00")
    table.insert(savevars, "LightFresnelEdgeMultC00")
    table.insert(savevars, "LightFresnelEdgeExp00")
    table.insert(savevars, "LightOptMask00")
  end
  return savevars
end

function PhysicsObj.CreateMapPhysicObject(marray)
  return PhysicsObj.CreatePhysicObject(marray[3][2], marray[4][2], marray[1][2], marray[2][2], marray)
end

function PhysicsObj.CreateMapPhysicObjects(ManRay, Mextra)
  ManRay = defparam(ManRay, MapPhysicObjects.PhysicObjects)
  Mextra = defparam(Mextra, "ListOfMapPhysicObjects")
  if Game.Get("ToolMode") == 1 then
    PhysicsObj[Mextra] = {}
    print(Mextra)
  end
  for i in pairs(ManRay) do
    h = PhysicsObj.CreateMapPhysicObject(ManRay[i])
    if PhysicsObj[Mextra] ~= nil then
      PhysicsObj[Mextra][i] = h
    end
  end
end

function PhysicsObj.ConcatArrays(TargetArray, SourceArray)
  for i = 1, #SourceArray do
    table.insert(TargetArray, SourceArray[i])
  end
end

function PhysicsObj.SaveElementLua()
  for Type in pairs(PhysicsObj.Objs) do
    if type(PhysicsObj.Objs[Type]) == "table" then
      local havefunc = PhysicsObj.Objs[Type].Func ~= nil
      if havefunc then
        PhysicsObj.Objs[Type].Func = nil
      end
      Game.Set("OutDebugFile", "+Models/Physics/" .. Type .. "/EntityDescriptor.lua")
      Game.ConsoleError([[
-- object information...
PhysicsObj.ObjAuxProperty ={
]])
      EditorUtils.SaveSingleArray("    ", PhysicsObj.Objs[Type])
      if havefunc then
        Game.ConsoleError([[

["Func"] = PhysicsObj.Parapet,
]])
        PhysicsObj.Objs[Type].Func = PhysicsObj.Parapet
      end
      Game.ConsoleError("}\n")
      Game.Set("OutDebugFile", "")
    end
  end
end

if Game.Get("ToolMode") == 1 then
  PhysicsObj.EdAuxLightProperty = {
    {
      "bLightEnable00",
      "Light Status",
      ESD_BOOLEAN,
      false,
      {
        {"FalseText", "Disabled"},
        {"TrueText", "Enabled"}
      }
    },
    {
      "bLightShadow00",
      "Light Shadows",
      ESD_BOOLEAN,
      false,
      {
        {"FalseText", "No Cast"},
        {"TrueText", "Cast"}
      }
    },
    {
      "LightColor00",
      "Light Color",
      ESD_COLOR,
      V4D(255, 255, 255, 255),
      {}
    },
    {
      "LightColorEnd00",
      "Light Color End",
      ESD_COLOR,
      V4D(0, 0, 0, 0),
      {}
    },
    {
      "LightIntens00",
      "Light Intens",
      ESD_FLOAT,
      1,
      {
        {"MinValue", 0},
        {"MaxValue", 1024}
      }
    },
    {
      "LightStencilMask00",
      "Stencil Mask",
      ESD_ENUM_LIST,
      3,
      {
        {
          "Element",
          "1*World Only"
        },
        {
          "Element",
          "2*Models Only"
        },
        {
          "Element",
          "3*World&Models"
        },
        {
          "Element",
          "4*Characters Only"
        }
      }
    },
    {
      "bLightProjEnable00",
      "Light Proyector",
      ESD_BOOLEAN,
      false,
      {
        {"FalseText", "Disabled"},
        {"TrueText", "Enabled"}
      }
    },
    {
      "ProjID00",
      "Proyector ID",
      ESD_INTEGER,
      1,
      {
        {"MinValue", 1},
        {"MaxValue", 100}
      }
    },
    {
      "LightAttStart00",
      "Attenuation Start",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 1}
      }
    },
    {
      "LightDotAtt00",
      "Dot Attenuation",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 1}
      }
    },
    {
      "LightDirVector00",
      "Directional Vector",
      ESD_VECTOR4D,
      V4D(0, 0, 0, 0),
      {
        {"Label", "XYZ"}
      }
    },
    {
      "LightLightAttDist00",
      "Light Att Dist.",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 50000},
        {"Increment", 50}
      }
    },
    {
      "LightShadowAttDist00",
      "Shadow Att Dist.",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 50000},
        {"Increment", 50}
      }
    },
    {
      "bLightSectorEnable00",
      "Light Sector",
      ESD_BOOLEAN,
      true,
      {
        {"FalseText", "Disabled"},
        {"TrueText", "Enabled"}
      }
    },
    {
      "LightiFX00",
      "FX type",
      ESD_ENUM_LIST,
      0,
      {
        {"Element", "0*None"},
        {"Element", "1*Torch"},
        {"Element", "2*Flick"}
      }
    },
    {
      "LightFX_TorchIntens00",
      "FX Torch Intens",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 1},
        {"Increment", 0.025}
      }
    },
    {
      "LightFX_TorchFrequency00",
      "FX Torch Frequency",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 500},
        {"Increment", 0.05}
      }
    },
    {
      "LightFX_MoveRadius00",
      "FX Move Radius",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 5000},
        {"Increment", 5}
      }
    },
    {
      "LightFX_MoveFrequency00",
      "FX Move Frequency",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 500},
        {"Increment", 0.05}
      }
    },
    {
      "bLightEnvEnable00",
      "Light Env",
      ESD_BOOLEAN,
      false,
      {
        {"FalseText", "Disabled"},
        {"TrueText", "Enabled"}
      }
    },
    {
      "EnvDiffuseID00",
      "Env Diffuse ID",
      ESD_INTEGER,
      1,
      {
        {"MinValue", 1},
        {"MaxValue", 100}
      }
    },
    {
      "LightEnvDiffuseColor00",
      "Env Diffuse Color",
      ESD_COLOR,
      V4D(255, 255, 255, 0),
      {}
    },
    {
      "LightEnvDiffuseMult00",
      "Env Diffuse Mult",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 8}
      }
    },
    {
      "LightEnvDiffuseMultC00",
      "Env Diffuse Mult C",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 8}
      }
    },
    {
      "EnvSpecularID00",
      "Env Specular ID",
      ESD_INTEGER,
      1,
      {
        {"MinValue", 1},
        {"MaxValue", 100}
      }
    },
    {
      "LightEnvSpecularColor00",
      "Env Specular Color",
      ESD_COLOR,
      V4D(255, 255, 255, 0),
      {}
    },
    {
      "LightEnvSpecularMult00",
      "Env Specular Mult",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 8}
      }
    },
    {
      "LightEnvSpecularMultC00",
      "Env Specular Mult C",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 8}
      }
    },
    {
      "bLightFresnelEnable00",
      "Light Fresnel",
      ESD_BOOLEAN,
      false,
      {
        {"FalseText", "Disabled"},
        {"TrueText", "Enabled"}
      }
    },
    {
      "LightFresnelInnerColor00",
      "Fresnel Inner Color",
      ESD_COLOR,
      V4D(255, 255, 255, 0),
      {}
    },
    {
      "LightFresnelInnerMult00",
      "Fresnel Inner Mult",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 1024}
      }
    },
    {
      "LightFresnelInnerMultC00",
      "Fresnel Inner Mult C",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 1024}
      }
    },
    {
      "LightFresnelInnerExp00",
      "Fresnel Inner Exp",
      ESD_FLOAT,
      2.5,
      {
        {"MinValue", 0},
        {"MaxValue", 15}
      }
    },
    {
      "LightFresnelEdgeColor00",
      "Fresnel Edge Color",
      ESD_COLOR,
      V4D(255, 255, 255, 0),
      {}
    },
    {
      "LightFresnelEdgeMult00",
      "Fresnel Edge Mult",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 1024}
      }
    },
    {
      "LightFresnelEdgeMultC00",
      "Fresnel Edge Mult C",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 1024}
      }
    },
    {
      "LightFresnelEdgeExp00",
      "Fresnel Edge Exp",
      ESD_FLOAT,
      2.5,
      {
        {"MinValue", 0},
        {"MaxValue", 15}
      }
    },
    {
      "LightOptMask00",
      "Opt Mask",
      ESD_ENUM_LIST,
      3,
      {
        {"Element", "0*None"},
        {"Element", "1*BuildMap"},
        {"Element", "2*Precalc"},
        {
          "Element",
          "3*BuildMap&Precalc"
        }
      }
    },
    {
      "uDataLoadPresetScript",
      "Load Preset",
      ESD_BUTTON,
      "EditorUtils.LoadObjPresetInSelected()",
      {}
    },
    {
      "uDataSavePresetScript",
      "Save Preset",
      ESD_BUTTON,
      "EditorUtils.SaveObjPresetFromSelected()",
      {}
    },
    {
      "uDataAutoSaveLight",
      "Auto Save Light",
      ESD_BOOLEAN,
      false,
      {
        {"FalseText", "Disabled"},
        {"TrueText", "Enabled"}
      }
    }
  }
  
  function PhysicsObj.EdAuxLight_Volumetric()
    table.insert(PhysicsObj.EdAuxLightProperty, {
      "LightVolumetricMult00",
      "VolumetricMult",
      ESD_FLOAT,
      0,
      {
        {"MinValue", 0},
        {"MaxValue", 2},
        {"Increment", 0.05}
      }
    })
  end
  
  function PhysicsObj.AddEdAuxProperty(prop, propdefault)
    for i = 1, #prop do
      local v = duplicateValue(prop[i])
      if propdefault ~= nil and v[1] == propdefault[1] then
        v[4] = propdefault[2]
      end
      table.insert(PhysicsObj.EdAuxProperty, v)
    end
  end
  
  function PhysicsObj.GetPortalList()
    local a = Game.GetPortalList()
    local r = {
      {"Element", ""}
    }
    for i = 1, #a do
      table.insert(r, {
        "Element",
        a[i]
      })
    end
    return r
  end
  
  function PhysicsObj.GetSurfaceList()
    local tablesurfaces = Physics.GetSurfaceList()
    local r = {}
    for i = 1, #tablesurfaces do
      table.insert(r, {
        "Element",
        tablesurfaces[i]
      })
    end
    return r
  end
else
  function PhysicsObj.AddEdAuxProperty(prop, propdefault)
  end
  
  function PhysicsObj.GetPortalList()
  end
end

function PhysicsObj.GetSectorList()
  local a = Game.GetSectorList()
  local r = {
    {"Element", ""}
  }
  for i = 1, #a do
    table.insert(r, {
      "Element",
      a[i]
    })
    if Game.IsSectorVisible(i - 1) then
      print("Sector:" .. a[i] .. "Visible" .. "\n")
    else
      print("Sector:" .. a[i] .. "NO visible" .. "\n")
    end
  end
  return r
end

PhysicsObj.IndexSceneNodes = 1

function PhysicsObj.OnCreatePhysXNode(name)
  local o = Game.GetEntity(name)
  o.uData.bIsPhysXScene = true
  o.Enable = 0
  table.insert(PhysicsObj.SceneEntities, o)
  if not o:IsType("PxCloth") then
    if o.NumJoints == 1 and o.JointedEntity == "" then
      o.uData.JointToScene = true
    else
      o.uData.JointToScene = false
    end
  end
  if o:IsType("PxConvexMeshPhysics") or o:IsType("PxBoxPhysics") then
    o.Damping = 0.25
  end
  o.Damping = o.Damping * 2
end

function PhysicsObj.OnPreCreateCloth(nameactor)
end

function PhysicsObj.PlayAnimatedModel(EntityName, Delay)
  local ent = Game.GetEntity(EntityName)
  if not Delay or Delay <= 0 then
    ent.Action = "Play"
  else
    addSF(Delay, "SfPlayAnimatedModel", "PhysicsObj.SfPlayAnimatedModel", EntityName)
  end
end

function PhysicsObj.SfPlayAnimatedModel(EntityName)
  local ent = Game.GetEntity(EntityName)
  ent.Action = "Play"
end

function PhysicsObj.SetupNodeVis(EntityName)
  local ent = Game.GetEntity(EntityName)
  if ent.uData.NodeNames then
    for i = 1, #ent.uData.NodeNames do
      for j, nodeName in pairs(ent.uData.NodeNames[i]) do
        ent["bShowNode_" .. nodeName] = false
      end
    end
    for i, nodeName in pairs(ent.uData.NodeNames[ent.uData.CurrentVisibleNode]) do
      ent["bShowNode_" .. nodeName] = true
    end
  end
  if ent.uData.CurrentVisibleNode == ent.uData.LastNode then
    ent.bArrowCanUse = false
  end
end

function PhysicsObj.InitBreakableClass(actClass, params)
  local loopActions = params.LoopActions
  local breakActions = params.BreakActions
  if nil == loopActions or nil == breakActions then
    Game.ConsoleError("PhysicsObj.InitBreakableClass: Break animations not defined for " .. actClass.Name)
    return
  end
  for i = 1, #breakActions do
    MakeChar.MakeEvent(actClass, breakActions[i], loopActions[i + 1], "!AnmSetAction")
  end
  actClass.uData.BreakActions = breakActions
  actClass.uData.LoopActions = loopActions
  if nil ~= params.HitAnimation then
    actClass.uData.HitAnimation = params.HitAnimation
  end
  actClass.uData.BreakSounds = params.BreakSounds
  actClass.uData.OnHitFX = PhysicsObj.DefaultBreakFX
end

function PhysicsObj.SetupBreakable(entity)
  entity.uData.IsBreakable = true
  entity.uData.CurrentState = 1
  entity.uData.LastState = #entity.oActCtrl.oActClass.uData.BreakActions + 1
  entity.ActiveCMask = 1
  Game.AddScheduledFunc(0, "", "PhysicsObj.OnBreakableAfterLoad", entity.Name)
  entity.bArrowCanUse = true
  entity.UseFunc = "PhysicsObj.BreakHint"
  entity.bUseAngSel = false
  entity.bUseAbsAngSel = false
  entity.bUseMapCheck = false
  entity.ArrPriority = 4
  entity.ArrRadius = 100
  Hook.ObjectUse_SetUp(entity)
  entity.uData.HitsToBreak = defparam(entity.uData.HitsToBreak, 1)
  entity.uData.HitCount = 1
end

function PhysicsObj.BreakStep(entity, attacker)
  if not entity.uData.IsBreakable then
    return
  elseif nil ~= entity.uData.BreakableBy then
    local isBreakable = false
    local attackerClassName = attacker.ActCtrl
    if "" == attackerClassName then
      attackerClassName = attacker.Type
    end
    for i, className in pairs(entity.uData.BreakableBy) do
      if attackerClassName == className then
        isBreakable = true
        break
      end
    end
    if not isBreakable then
      Game.Log(entity.Name .. " not breakable by " .. attackerClassName, 2)
      return
    end
  end
  if entity.uData.CurrentState == entity.uData.LastState then
    return
  end
  local actClass = entity.oActCtrl.oActClass
  if entity.uData.HitCount < entity.uData.HitsToBreak then
    entity.uData.HitCount = entity.uData.HitCount + 1
    entity.Action = actClass.uData.HitAnimation
  else
    entity.Action = actClass.uData.BreakActions[entity.uData.CurrentState]
    entity.uData.CurrentState = entity.uData.CurrentState + 1
  end
  local breakSounds = actClass.uData.BreakSounds
  if breakSounds then
    local soundInfo = breakSounds[entity.uData.CurrentState]
    Sound.PlaySound(entity.Pos, soundInfo[1], soundInfo[2], soundInfo[3], soundInfo[4], soundInfo[5])
  end
  if actClass.uData.OnHitFX then
    actClass.uData.OnHitFX(entity)
  end
  if entity.uData.CurrentState == entity.uData.LastState then
    if entity.uData.OpenFunc and entity.uData.OpenFunc ~= "" then
      local callback = parseGlobalExpression(entity.uData.OpenFunc)
      callback(entity, attacker)
    end
    if entity.uData.OnDeathFX then
      entity.uData.OnDeathFX(entity.Name)
    end
    if entity.uData.BreakableBy ~= nil then
      for i, className in pairs(entity.uData.BreakableBy) do
        Actions.DeactivateMountObjectClass(className, entity)
      end
    end
    entity:ResetMapCollision(false, false, false)
    entity.bArrowCanUse = false
  end
end

function PhysicsObj.OnBreakableAfterLoad(entityName)
  local entity = Game.GetEntity(entityName)
  if entity.uData.CurrentState == entity.uData.LastState then
    entity:ResetMapCollision(false, false, false)
    entity.bArrowCanUse = false
  else
    local useVisible = defparam(entity.uData.useVisible, true)
    entity:ResetMapCollision(true, useVisible, false)
  end
  entity.Action = entity.oActCtrl.oActClass.uData.LoopActions[entity.uData.CurrentState]
end

function PhysicsObj.DefaultBreakFX(entity)
  local camera = Game.GetEntity(Game.GetCam(0))
  camera.QuakeFactor = 2.5
  camera.QuakeTime = 0.3
end

function PhysicsObj.BuildHitCollider(o, ColliderType)
  local pmesh = string.sub(o.Mesh, 1, #o.Mesh - 4)
  local MeshName = "Models/Physics/" .. pmesh .. "/" .. pmesh .. "_Hit."
  local h = o
  if Game.FileExist(MeshName .. "m3d") or Game.FileExist(MeshName .. "cm3") or Game.FileExist(MeshName .. "sm3") then
    h = Game.CreateEntity(o.Name .. "_Hit", "Obj")
    h.Mesh = MeshName .. "m3d"
    h.Pos = o.Pos
    h.Ang = o.Ang
    h.CollisionGroupName = "VISIBLE"
    h:ResetMapCollision(true, false, false)
    o.uData.HitCollider = {h}
    if ColliderType then
      o.CollisionGroupName = ColliderType
    else
      o.CollisionGroupName = "LOGIC"
    end
  elseif ColliderType then
    o.CollisionGroupName = ColliderType
  else
    o.CollisionGroupName = "GENERIC"
  end
  o:ResetMapCollision(true, false, false)
  return h
end

function PhysicsObj.BuildMultiCollider(o)
  local pmesh = string.sub(o.Mesh, 1, #o.Mesh - 4)
  local i = 2
  o.uData.HitCollider = {}
  while true do
    local MeshName = "Models/Physics/" .. pmesh .. "/" .. pmesh .. "_Hit" .. i - 1 .. "."
    if Game.FileExist(MeshName .. "m3d") or Game.FileExist(MeshName .. "cm3") or Game.FileExist(MeshName .. "sm3") then
      local h = Game.CreateEntity(o.Name .. "_Hit" .. i, "Obj")
      h.Mesh = MeshName .. "m3d"
      h.Pos = o.Pos
      h.Ang = o.Ang
      h.CollisionGroupName = o.uData["Collider_Type_" .. i]
      h:ResetMapCollision(true, false, false)
      h.bMapCollision = o.uData.bMapCollision
      o.uData.HitCollider[i - 1] = h
    else
      break
    end
    i = i + 1
  end
  o.CollisionGroupName = o.uData.Collider_Type_1
  o:ResetMapCollision(true, false, false)
  o.bMapCollision = o.uData.bMapCollision
end

function PhysicsObj.MultiColliderEdAux(mx)
  local a = {
    {
      "uDatabMapCollision",
      "Collision",
      ESD_BOOLEAN,
      true,
      {
        {"FalseText", "Inactive"},
        {"TrueText", "Active"}
      }
    }
  }
  for i = 2, mx + 2 do
    a[i] = {
      "uDataCollider_Type_" .. i - 1,
      "Collider " .. i - 1,
      ESD_TEXT_LIST,
      "LOGIC",
      {
        {"Element", "NONE"},
        {"Element", "GENERIC"},
        {"Element", "VISIBLE"},
        {"Element", "LOGIC"},
        {"Element", "CHAR"},
        {"Element", "WALL"},
        {"Element", "AI"},
        {"Element", "AI2D"},
        {"Element", "AI3D"},
        {"Element", "PLAYER"},
        {"Element", "DYNELEM"}
      }
    }
  end
  return a
end

function PhysicsObj.SetCollision(o, val)
  o.uData.bMapCollision = val
  o.bMapCollision = o.uData.bMapCollision
  local a = o.uData.HitCollider
  if a then
    for i = 1, #a do
      a[i].bMapCollision = val
    end
  end
end

function PhysicsObj.BreakHint(userEntity, entity)
  local breakableBy = entity.uData.BreakableBy
  if nil == breakableBy then
    return
  end
  local breakerString = breakableBy[1]
  for i = 2, #breakableBy do
    breakerString = breakerString .. breakableBy[i]
  end
  local textLine = Game.GetLangStr("Hint_Break_" .. entity.ActCtrl .. "_" .. breakerString)
  if "" ~= textLine then
    Scorer.SetMsgText(textLine, Game.GetTime() + 3)
  else
    textLine = Game.GetLangStr("Hint_Break_Any_" .. breakerString)
    if "" ~= textLine then
      Scorer.SetMsgText(textLine, Game.GetTime() + 3)
    else
      Game.Log("No hint text found for " .. entity.ActCtrl .. "\n", 2)
    end
  end
end

function PhysicsObj.InitSoundClass(actClass, soundEventsInfo)
  for i, soundInfo in pairs(soundEventsInfo) do
    local action = actClass:GetAct(soundInfo[1])
    if nil ~= action then
      if soundInfo[8] then
        action:ActSoundNoRepeat(math.max(action.FirstFrame, soundInfo[3]), soundInfo[2], soundInfo[4], soundInfo[5], soundInfo[6], soundInfo[7])
      else
        action:ActSound(math.max(action.FirstFrame, soundInfo[3]), soundInfo[2], soundInfo[4], soundInfo[5], soundInfo[6], soundInfo[7])
      end
    end
  end
end

function PhysicsObj.OnDamageBreakable(EntityName, AttackerName, Damage)
  local ent = Game.GetEntity(EntityName)
  if ent.Hit_BreakObjects == 0 then
    ent.Life = ent.Life + Damage
  end
  if ent.Hit_BreakObjects == 2 then
    ent.Life = 0
  end
end

if init and init.PreloadMethods then
  function init.PreloadMethods.MapPhysicObjects()
    local fileName = Game.GetLevelPath() .. "/Scripts/MapPhysic"
    
    local st = Game.GetSingleTable()
    local SourceFile = fileName .. "Objects.lua"
    st.TargetFile = fileName .. "Objects.lbt"
    st.SourceFile = SourceFile
    for i = 1, #PhysicsObj.ListOfScripts do
      st.SourceFile = st.SourceFile .. "," .. fileName .. PhysicsObj.ListOfScripts[i][1] .. ".lua"
    end
    if st.bPrecompile then
      local prevMapLibsExec = init.MapLibsExec
      local initPreloadMapLib = init.PreloadMapLib
      init.MapLibsExec = {}
      
      function init.PreloadMapLib(name)
        Game.PreloadLibrary(Game.GetLevelPath() .. "/Scripts/" .. name .. ".lua", name)
      end
      
      Game.PreloadLibrary(SourceFile, "MapPhysicObjects")
      MapPhysicObjects.preload()
      init.MapLibsExec = prevMapLibsExec
      init.PreloadMapLib = initPreloadMapLib
      PhysicsObj.CreateMapPhysicObjects()
      st:OpenFileOut()
      for i = 1, #MapPhysicObjects.PhysicObjects do
        local _Pos = MapPhysicObjects.PhysicObjects[i][1][2]
        table.remove(MapPhysicObjects.PhysicObjects[i], 1)
        local _Ang = MapPhysicObjects.PhysicObjects[i][1][2]
        table.remove(MapPhysicObjects.PhysicObjects[i], 1)
        local _Name = MapPhysicObjects.PhysicObjects[i][1][2]
        table.remove(MapPhysicObjects.PhysicObjects[i], 1)
        local _ActCtrl = MapPhysicObjects.PhysicObjects[i][1][2]
        table.remove(MapPhysicObjects.PhysicObjects[i], 1)
        st:WriteV4D(_Pos.x, _Pos.y, _Pos.z, _Pos.w)
        st:WriteV4D(_Ang.x, _Ang.y, _Ang.z, _Ang.w)
        st:WriteString(_Name)
        st:WriteString(_ActCtrl)
        MissionUtils.WriteLuaElement(st, MapPhysicObjects.PhysicObjects[i])
      end
      st:CloseFileOut()
    else
      st:Open()
      while st.NextType ~= "exit" do
        local _Pos = st:Read()
        local _Ang = st:Read()
        local _Name = st:Read()
        local _ActCtrl = st:Read()
        PhysicsObj.CreatePhysicObject(_Name, _ActCtrl, _Pos, _Ang, "load")
      end
      st:Close()
    end
  end
end
