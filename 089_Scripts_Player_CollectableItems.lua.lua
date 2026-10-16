CollectableItems = {}

function CollectableItems.main()
  CollectableItems.CreateCollectableData("LifeGems", 30)
  CollectableItems.CreateCollectableData("LightGems", 30)
  CollectableItems.CreateCollectableData("DarkGems", 30)
  CollectableItems.CreateCollectableData("VialUpgrades", 30)
  CollectableItems.CreateCollectableData("DaggerUpgrades", 30)
  CollectableItems.CreateCollectableData("FairyUpgrades", 30)
  if init then
    CollectableItems.CreateScrollData()
  else
    local sv = string.rep("-", #SaveGame.GameMaps - 1)
    local gvar = Game.CreateGvar("gvInfoScrolls", "string", "Info scroll data.")
    gvar.Value = sv
    gvar.Default = sv
  end
  Sound.LoadSound("Sounds/Generic/Objects/Collectable_Item_Gema_Magia.wav")
end

function CollectableItems.Preload()
  CollectableItems.InitEffects()
  CollectableItems.main()
end

CollectableItems.ContainerInfo = {
  Flower = {
    ItemName = "FairiesFlower",
    PickDistance = 0,
    AngleOffset = 0,
    DisabledTime = 3,
    MaxTestAngle = 45,
    TestAngleStep = 3,
    AnimationName = "TakeFlower",
    OffsetPosition = V3D(0, 0, 0),
    MovingFactor = 2.2
  },
  Crystal = {
    ItemName = "PowerCrystal",
    PickDistance = 0,
    AngleOffset = 0,
    DisabledTime = 3,
    MaxTestAngle = 45,
    TestAngleStep = 3,
    AnimationName = "TakeCrystal",
    OffsetPosition = V3D(0, 0, 0),
    MovingFactor = 2.7
  },
  CrystalSmall = {
    ItemName = "PowerCrystalSmall",
    PickDistance = 0,
    AngleOffset = 0,
    DisabledTime = 3,
    MaxTestAngle = 45,
    TestAngleStep = 3,
    AnimationName = "TakeCrystal",
    OffsetPosition = V3D(0, 0, 0),
    MovingFactor = 2.7
  },
  TemplarFountain = {
    PickDistance = 175,
    AngleOffset = 0,
    DisabledTime = 3,
    MaxTestAngle = 15,
    TestAngleStep = 3,
    AnimationName = "TakeWater",
    FillTime = 1.33,
    RepositionTime = 0.35
  },
  KnightLife = {
    ItemName = "KnightLife_Jewel",
    PickDistance = 0,
    AngleOffset = 0,
    DisabledTime = 3,
    MaxTestAngle = 45,
    TestAngleStep = 3,
    AnimationName = "CrossOneSelf",
    OffsetPosition = V3D(0, 0, 0),
    ItemLinkNode = "BoB_KnightLight_Medallon_C",
    AltItemLinkNode = "DC_Item",
    MovingFactor = 1.5,
    ItemVisible = false
  },
  KnightLight = {
    ItemName = "KnightLight_Jewel",
    PickDistance = 0,
    AngleOffset = 0,
    DisabledTime = 3,
    MaxTestAngle = 45,
    TestAngleStep = 3,
    AnimationName = "CrossOneSelf",
    OffsetPosition = V3D(0, 0, 0),
    ItemLinkNode = "BoB_KnightLight_Medallon_C",
    AltItemLinkNode = "DC_Item",
    MovingFactor = 1.5,
    ItemVisible = false
  },
  KnightScroll = {
    ItemName = "KnightScroll",
    PickDistance = 0,
    AngleOffset = 0,
    DisabledTime = 3,
    MaxTestAngle = 45,
    TestAngleStep = 3,
    AnimationName = "CrossOneSelf",
    OffsetPosition = V3D(0, 0, 0),
    ItemLinkNode = "BoB_KnightLight_Medallon_C",
    AltItemLinkNode = "DC_Item",
    MovingFactor = 1.5,
    ItemVisible = false
  },
  KnightDark = {
    ItemName = "KnightDark_Jewel",
    PickDistance = 0,
    AngleOffset = 0,
    DisabledTime = 3,
    MaxTestAngle = 45,
    TestAngleStep = 3,
    AnimationName = "CrossOneSelf",
    OffsetPosition = V3D(0, 0, 0),
    ItemLinkNode = "BoB_KnightLight_Medallon_C",
    AltItemLinkNode = "DC_Item",
    MovingFactor = 1.5,
    ItemVisible = false
  },
  KnightCombo = {
    ItemName = "KnightScroll",
    PickDistance = 0,
    AngleOffset = 0,
    DisabledTime = 3,
    MaxTestAngle = 45,
    TestAngleStep = 3,
    AnimationName = "CrossOneSelf",
    OffsetPosition = V3D(0, 0, 0),
    ItemLinkNode = "BoB_KnightLight_Medallon_C",
    AltItemLinkNode = "DC_Item",
    MovingFactor = 1.5,
    ItemVisible = false
  },
  CrystalStatue = {
    ItemName = "PowerCrystal",
    PickDistance = 200,
    AngleOffset = 0,
    DisabledTime = 3,
    MaxTestAngle = 45,
    TestAngleStep = 3,
    AnimationName = "TakeCrystal",
    PlaceAnimationName = "PlaceCrystal",
    OffsetPosition = V3D(0, 0, 0),
    MovingFactor = 2.7,
    ItemLinkNode = "DC_Crystal"
  },
  CrystalSlot = {
    ItemName = "PowerCrystal",
    PickDistance = 130,
    RepositionTime = 0.35,
    AngleOffset = 0,
    DisabledTime = 3,
    MaxTestAngle = 45,
    TestAngleStep = 3,
    AnimationName = "TakeCrystal",
    PlaceAnimationName = "PlaceCrystal",
    OffsetPosition = V3D(0, 0, 0),
    MovingFactor = 2.7,
    ItemLinkNode = "DC_Crystal"
  }
}

function CollectableItems.PreloadContainerItem(containerType, isPhysicObject)
  local containerInfo = CollectableItems.ContainerInfo[containerType]
  if isPhysicObject then
    local dummy = PhysicsObj.CreateObj("CollectableItemsPreloadDummy" .. containerInfo.ItemName, containerInfo.ItemName, V3D(0, 0, 0), V3D(0, 0, 0))
    dummy:Del()
  else
    Game.Preload3DObject("Models/Physics/" .. containerInfo.ItemName .. "/" .. containerInfo.ItemName .. ".M3D")
  end
end

function CollectableItems.SetUpFlowerContainer(entity)
  CollectableItems.ContainerInfo.Flower.OnItemIncrement = WeaponsFairy.IncrementFairy
  CollectableItems.ContainerInfo.Flower.CanPickFunc = WeaponsFairy.CanPickFairy
  CollectableItems.PreloadContainerItem("Flower", true)
  if nil == entity then
    Game.ConsoleError("CollectableItems.SetUpFlowerContainer: nil entity\n")
    return
  end
  entity.uData.ContainerType = "Flower"
  Hook.ObjectUse_SetUp(entity)
  entity.bUseAngSel = false
  entity.bUseAbsAngSel = false
  entity.bUseMapCheck = false
  entity.UseFunc = "CollectableItems.ContainerOnUse"
  if entity.uData.HasItem then
    entity.bArrowCanUse = true
  else
    entity.bArrowCanUse = false
  end
  PhysicsObj.BuildHitCollider(entity)
  entity.OnDebugDraw = "CollectableItems.OnDebugDraw"
  Game.AddScheduledFunc(0, "", "CollectableItems.OnContainerAfterLoad", entity.Name)
end

function CollectableItems.SetUpCrystalContainer(entity, isSmall)
  local containerType = "Crystal"
  if isSmall then
    containerType = "CrystalSmall"
  else
    entity.uData.RestoreFullCrystal = true
  end
  CollectableItems.ContainerInfo[containerType].OnItemIncrement = WeaponsCrystal.IncrementCrystal
  CollectableItems.ContainerInfo[containerType].OnItemTake = CollectableItems.FallCrystal
  CollectableItems.ContainerInfo[containerType].CanPickFunc = WeaponsCrystal.CanPickCrystal
  if nil == entity then
    Game.ConsoleError("CollectableItems.SetUpCrystalContainer: nil entity\n")
    return
  end
  CollectableItems.PreloadContainerItem(containerType, true)
  entity.uData.ContainerType = containerType
  Hook.ObjectUse_SetUp(entity)
  entity.bUseAngSel = false
  entity.bUseAbsAngSel = false
  entity.bUseMapCheck = false
  entity.UseFunc = "CollectableItems.ContainerOnUse"
  entity.ArrRadius = 180
  if entity.uData.HasItem then
    entity.bArrowCanUse = true
  else
    entity.bArrowCanUse = false
  end
  PhysicsObj.BuildHitCollider(entity)
  entity.OnDebugDraw = "CollectableItems.OnDebugDraw"
  Game.AddScheduledFunc(0, "", "CollectableItems.OnContainerAfterLoad", entity.Name)
end

function CollectableItems.SetUpTemplarFountain(entity)
  if nil == entity then
    Game.ConsoleError("CollectableItems.SetUpTemplarFountain: nil entity\n")
    return
  end
  CollectableItems.ContainerInfo.TemplarFountain.CanPickFunc = Belmont.CanUseTemplarFountain
  entity.uData.ContainerType = "TemplarFountain"
  Hook.ObjectUse_SetUp(entity)
  entity.bUseAbsAngSel = false
  entity.bUseMapCheck = false
  entity.UseFunc = "CollectableItems.ContainerOnUse"
  entity.CanUseFunc = "CollectableItems.FountainCanUseFunc"
  entity.ArrRadius = 140
  PhysicsObj.BuildHitCollider(entity)
  entity.bShowNode_DC_Water = true
  entity.bShowNode_DC_Water_Empty = false
  if entity.uData.HasItem then
    entity.uData.FirstUse = true
    entity.bArrowCanUse = true
  else
    entity.bArrowCanUse = false
  end
  entity.uData.ScheduledRefill = false
  entity.uData.RefillTime = 120
  entity.OnDebugDraw = "CollectableItems.OnDebugDraw"
  Game.AddScheduledFunc(0, "", "CollectableItems.OnFountainAfterLoad", entity.Name)
end

function CollectableItems.FountainCanUseFunc(user, fountain)
  if 0 > (fountain.Pos - user.Pos):dot(V3D(0, 0, -1):rot(fountain.Ang)) then
    return 1
  else
    return 0
  end
end

function CollectableItems.KnightDeath(entityName)
end

function CollectableItems.SetUpKnight(entity, typo)
  CollectableItems.ContainerInfo["Knight" .. typo].OnItemIncrement = CollectableItems.IncrementTotalEnergy
  CollectableItems.PreloadContainerItem("Knight" .. typo, true)
  if nil == entity then
    Game.ConsoleError("CollectableItems.SetUpKnight" .. typo .. ": nil entity\n")
    return
  end
  local alreadyCollected = false
  if typo == "Combo" then
    local comboName = entity.uData.ComboName
    alreadyCollected = nil == comboName or "" == comboName or TravelBook.ActionsManager:IsUnlocked(entity.uData.ComboName)
  else
    local a = CollectableItems[typo .. "GemContainer"]
    a[1 + #a] = entity
    entity.uData.idGem = #a
    if typo == "Scroll" then
      local scrollIndex = entity.uData.ScrollText
      alreadyCollected = type(scrollIndex) == "number" and CollectableItems.GetScrollStatus(scrollIndex)
    else
      alreadyCollected = CollectableItems.isGem(typo .. "Gems", #a)
    end
  end
  entity.uData.ContainerType = "Knight" .. typo
  entity.bUseAngSel = false
  entity.bUseAbsAngSel = false
  entity.bUseMapCheck = false
  entity.UseFunc = "CollectableItems.ContainerOnUse"
  entity.bArrowCanUse = not alreadyCollected
  entity.uData.HasItem = not alreadyCollected
  entity.OnDebugDraw = "CollectableItems.OnDebugDraw"
  Game.AddScheduledFunc(0, "", "CollectableItems.OnContainerAfterLoad", entity.Name)
end

function CollectableItems.SetUpUpgradeChest(entity, typo)
  local a = CollectableItems[typo .. "Container"]
  a[1 + #a] = entity
  entity.uData.idGem = #a
  alreadyCollected = CollectableItems.isGem(typo, #a)
  entity.uData.EnergyType = typo
  if alreadyCollected then
    entity.Action = "Relax"
    entity.bArrowCanUse = false
    entity.StaticActorPositionOffset = V3D(0, -50, 0)
    entity:ResetMapCollision(true, false, true)
  end
  if not entity.bArrowCanUse then
    ChestUpgrade.EndEffects(entity.Name)
  end
end

function CollectableItems.SetUpUpgrade(entity, typo)
  local a = CollectableItems[typo .. "Container"]
  a[1 + #a] = entity
  entity.uData.idGem = #a
  alreadyCollected = CollectableItems.isGem(typo, #a)
  entity.uData.EnergyType = typo
  if alreadyCollected then
    entity.bActive = false
  end
end

function CollectableItems.SetUpFreeGem(entity, typo)
  local a = CollectableItems[typo .. "GemContainer"]
  a[1 + #a] = entity
  entity.uData.idGem = #a
  local isgem = false
  if typo == "Scroll" then
    local scrollIndex = CollectableItems.ScrollArray[entity.uData.idGem]
    isgem = type(scrollIndex) == "number" and CollectableItems.GetScrollStatus(scrollIndex)
  else
    isgem = CollectableItems.isGem(typo .. "Gems", #a)
  end
  entity.uData.MustPopUp = not isGem
  entity.uData.EnergyType = typo
  entity.bUseAngSel = false
  entity.bUseAbsAngSel = false
  entity.bUseMapCheck = false
  entity.UseFunc = "CollectableItems.FreeGemOnUse"
  entity.ArrRadius = 100
  entity.ArrPriority = 3
  entity.bArrowCanUse = true
  Hook.ObjectUse_SetUp(entity)
  entity.bActive = false
  if Game.Get("toolmode") == 1 then
    if nil == PhysicsObj.EditorFreeGems then
      PhysicsObj.EditorFreeGems = {}
    end
    table.insert(PhysicsObj.EditorFreeGems, entity.Name)
  end
  addSF(0, "", "CollectableItems.OnAfterLoadFreeGem", entity.Name)
end

CollectableItems.ScrollGemContainer = {}
CollectableItems.ScrollArray = {}

function CollectableItems.SetUpKnightScroll(entity)
  CollectableItems.SetUpKnight(entity, "Scroll")
  CollectableItems.ScrollArray[entity.uData.idGem] = entity.uData.ScrollText
end

CollectableItems.LifeGemContainer = {}

function CollectableItems.SetUpKnightLife(entity)
  CollectableItems.SetUpKnight(entity, "Life")
end

CollectableItems.LightGemContainer = {}

function CollectableItems.SetUpKnightLight(entity)
  CollectableItems.SetUpKnight(entity, "Light")
end

CollectableItems.DarkGemContainer = {}

function CollectableItems.SetUpKnightDark(entity)
  CollectableItems.SetUpKnight(entity, "Dark")
end

CollectableItems.DaggerUpgradesContainer = {}
CollectableItems.VialUpgradesContainer = {}
CollectableItems.FairyUpgradesContainer = {}

function CollectableItems.SetUpCrystalStatue(entity)
  CollectableItems.ContainerInfo.CrystalStatue.OnItemIncrement = WeaponsCrystal.IncrementCrystal
  CollectableItems.ContainerInfo.CrystalStatue.OnItemTake = CollectableItems.OnCrystalStatueTake
  CollectableItems.ContainerInfo.CrystalStatue.OnPlaceFunction = CollectableItems.OnCrystalStatuePlace
  entity.uData.RestoreFullCrystal = true
  CollectableItems.PreloadContainerItem("CrystalStatue", false)
  entity.uData.ContainerType = "CrystalStatue"
  entity.bUseAngSel = false
  entity.bUseAbsAngSel = false
  entity.bUseMapCheck = false
  entity.bArrowCanUse = true
  entity.uData.HasItem = false
  entity.CanUseFunc = "CollectableItems.CanUseFront"
  entity:ResetMapCollision(true, false, false)
  entity.uData.OneUse = true
  Game.AddScheduledFunc(0, "", "CollectableItems.OnCrystalStatueAfterLoad", entity.Name)
end

function CollectableItems.OnFountainAfterLoad(entityName)
  local entity = Game.GetEntity(entityName)
  if entity.uData.HasItem then
    CollectableItems.FXFountainOn(entityName, true)
  else
    Game.AddScheduledFunc(Game.GetTime() + entity.uData.RefillTime, "", "CollectableItems.RefillFountain", entity.Name)
    entity.bArrowCanUse = false
    entity.bShowNode_DC_Water_Empty = false
    entity.bShowNode_DC_Water = false
  end
end

function CollectableItems.OnContainerAfterLoad(entityName)
  local entity = Game.GetEntity(entityName)
  if entity.uData.HasItem then
    local itemObjectName = CollectableItems.ContainerInfo[entity.uData.ContainerType].ItemName
    local position, angle
    local itemLinkNode = CollectableItems.ContainerInfo[entity.uData.ContainerType].ItemLinkNode
    local altItemLinkNode = CollectableItems.ContainerInfo[entity.uData.ContainerType].AltItemLinkNode
    if itemLinkNode and entity["isNode_" .. itemLinkNode] == 1 then
      position = entity["NodePosHierarchy_" .. itemLinkNode]
      angle = entity["NodeAngHierarchy_" .. itemLinkNode]
    elseif altItemLinkNode and entity["isNode_" .. altItemLinkNode] == 1 then
      position = entity["NodePosHierarchy_" .. altItemLinkNode]
      angle = entity["NodeAngHierarchy_" .. altItemLinkNode]
    else
      position = entity.Pos
      angle = entity.Ang
    end
    if CollectableItems.ContainerInfo[entity.uData.ContainerType].OffsetPosition then
      position = position + CollectableItems.ContainerInfo[entity.uData.ContainerType].OffsetPosition
    end
    local itemName = entity.Name .. "_Item"
    local itemEntity = Game.GetEntity(itemName)
    if nil == itemEntity then
      itemEntity = PhysicsObj.CreateObj(itemName, itemObjectName, position, angle)
    end
    if nil == itemEntity then
      Game.ConsoleError("Could not create collectable item " .. entity.Name .. "_Item" .. "\n")
    end
    itemEntity.bObjectVisible = defparam(CollectableItems.ContainerInfo[entity.uData.ContainerType].ItemVisible, true)
    if entity.uData.ContainerType == "Flower" then
      CollectableItems.FXFlowerDustOn(entityName)
    end
    if entity.uData.ContainerType == "Crystal" or entity.uData.ContainerType == "CrystalSmall" then
      CollectableItems.FXCrystalOn(entityName)
    end
  end
end

function CollectableItems.OnCrystalStatueAfterLoad(entityName)
  local statue = Game.GetEntity(entityName)
  if statue.uData.HasItem then
    local containerInfo = CollectableItems.ContainerInfo[statue.uData.ContainerType]
    local itemObjectName = containerInfo.ItemName
    local itemName = entityName .. "_Item"
    local itemEntity = Game.GetEntity(itemName)
    if nil == itemEntity then
      local position = statue["NodePosHierarchy_" .. containerInfo.ItemLinkNode]
      local angle = statue["NodeAngHierarchy_" .. containerInfo.ItemLinkNode]
      itemEntity = Game.CreateEntity(itemName, "WithLife", position)
      itemEntity.Mesh = "Models/Physics/" .. itemObjectName .. "/" .. itemObjectName .. ".m3d"
      itemEntity.Ang = angle
      itemEntity.LinkModel = entityName .. "," .. containerInfo.ItemLinkNode
      itemEntity.DeltaOffMul = containerInfo.MovingFactor
      itemEntity.UseLinkPos = 1
      itemEntity.UseModelAlign = 0
      itemEntity.UseLinkAng = 1
    end
    if statue.uData.TurnSpeed then
      statue.UseFunc = "PushPull.CircleGrip"
      statue.CanUseFunc = "PushPull.CanUseFunc"
    else
      statue.UseFunc = "CollectableItems.ContainerOnUse"
    end
    LightRay.OnStatueBegin(entityName)
  elseif "" == statue.UseFunc then
    statue.UseFunc = "CollectableItems.PlaceItem"
  end
end

function CollectableItems.OnRedeemed(entityName)
end

function CollectableItems.ContainerOnUse(userEntity, containerEntity)
  if containerEntity.uData.LLave or containerEntity.uData.Gema then
    return CollectableItems.KnightOnUse(userEntity, containerEntity)
  end
  if not containerEntity.uData.HasItem then
    return
  end
  local canPickFunc = CollectableItems.ContainerInfo[containerEntity.uData.ContainerType].CanPickFunc
  if nil ~= canPickFunc and not canPickFunc() then
    local message = Game.GetLangStr("Hint_Collectable_Cannot_Take_" .. containerEntity.uData.ContainerType)
    if "" ~= message then
      Scorer.SetMsgText(message, Game.GetTime() + 3)
    end
    return
  end
  if userEntity.uData.UsedContainer ~= nil then
    return
  end
  if userEntity.isFalling == 1 then
    return
  end
  local isValid, targetPosition, targetAngle = CollectableItems.CalculateTakePosition(userEntity, containerEntity, CollectableItems.ContainerInfo[containerEntity.uData.ContainerType].PickDistance)
  if not isValid then
    return
  end
  if containerEntity.uData.MustBeRedeemed then
    userEntity.Ang = V3D(0, (userEntity.Pos - containerEntity.Pos):getrot().y, 0)
    userEntity.Action = userEntity.ExtraSufix .. "CrossOneSelf"
    userEntity.uData.RedeemedKnight = containerEntity
    return
  end
  local takeActionName = userEntity.ExtraSufix .. CollectableItems.ContainerInfo[containerEntity.uData.ContainerType].AnimationName
  userEntity.oActCtrl:SetAction(takeActionName)
  if userEntity.oActCtrl.Action ~= takeActionName then
    return
  end
  userEntity.uData.ItemGrabbed = false
  containerEntity.bArrowCanUse = false
  Game.AddScheduledFunc(Game.GetTime() + CollectableItems.ContainerInfo[containerEntity.uData.ContainerType].DisabledTime, "EnableGenerator" .. containerEntity.Name, "CollectableItems.EnableGenerator", containerEntity.Name)
  userEntity.DisplAng = 0
  local repositionTime = CollectableItems.ContainerInfo[containerEntity.uData.ContainerType].RepositionTime or 0.1
  userEntity:MoveMePosAng(3, repositionTime, targetPosition.x, targetPosition.y, targetPosition.z, 0, targetAngle, 0)
  userEntity.uData.UsedContainer = containerEntity
  userEntity.SelectedEntity = containerEntity.Name
end

function CollectableItems.CalculateTakePosition(taker, taken, takeDistance)
  local takerPosition, takenPosition = taker.Pos, taken.Pos
  local oldY = takerPosition.y
  takerPosition.y = 0
  takenPosition.y = 0
  if 0 == takeDistance then
    takeDistance = (takerPosition - takenPosition):mod()
  end
  local v = takerPosition - takenPosition
  v = v:norm()
  v = v * takeDistance
  local candidateOffset
  local isValidPosition = false
  local rotation = V3D(0, 0, 0)
  local returnPosition
  taken.uData.candidates = {}
  repeat
    candidateOffset = v:rot(rotation)
    rotation.y = -rotation.y
    if rotation.y <= 0 then
      rotation.y = rotation.y - CollectableItems.ContainerInfo[taken.uData.ContainerType].TestAngleStep
    end
    returnPosition = takenPosition + candidateOffset
    returnPosition.y = oldY
    table.insert(taken.uData.candidates, returnPosition)
    isValidPosition = taker:TestCharPos(returnPosition.x, returnPosition.y, returnPosition.z)
  until isValidPosition or math.abs(rotation.y) > CollectableItems.ContainerInfo[taken.uData.ContainerType].MaxTestAngle
  taken.uData.takenPosition = taken.Pos
  taken.uData.targetPosition = returnPosition
  taken.uData.takerPosition = taker.Pos
  taken.uData.takerOrientation = taker.Ang
  v = candidateOffset:getrot()
  return isValidPosition, returnPosition, v.y
end

function CollectableItems.OnItemGripEvent(entityName)
  local userEntity = Game.GetEntity(entityName)
  local containerEntity = userEntity.uData.UsedContainer
  if nil == containerEntity then
    Game.ConsoleError("CollectableItems.OnItemGripEvent: " .. entityName .. " not using container\n")
    return
  end
  containerEntity.uData.HasItem = false
  local itemEntity = Game.GetEntity(containerEntity.Name .. "_Item")
  if nil == itemEntity then
    Game.ConsoleError("Item entity '" .. containerEntity.Name .. "_Item'" .. " doesn't exist\n")
    return
  end
  userEntity.uData.ItemGrabbed = true
  local containerInfo = CollectableItems.ContainerInfo[containerEntity.uData.ContainerType]
  itemEntity.bObjectVisible = true
  if itemEntity.LinkedNode ~= "" then
    itemEntity.Pos = containerEntity["NodePosHierarchy_" .. containerInfo.ItemLinkNode]
    itemEntity.Ang = containerEntity["NodeAngHierarchy_" .. containerInfo.ItemLinkNode]
    itemEntity:UnlinkModel(0)
  end
  itemEntity.LinkModel = userEntity.Name .. ",OB_Gabriel_Daga"
  itemEntity.DeltaOffMul = containerInfo.MovingFactor
  itemEntity.UseLinkPos = 1
  itemEntity.UseModelAlign = 0
  itemEntity.UseLinkAng = 1
  if containerInfo.OnItemTake then
    containerInfo.OnItemTake(containerEntity.Name)
  end
  if containerEntity.uData.ContainerType == "Flower" then
    CollectableItems.FXFlowerDustOff(containerEntity.Name)
    if CollectableItems.SaveSituation then
      local f = CollectableItems.SaveSituation
      CollectableItems.SaveSituation = nil
      f(containerEntity)
    end
  elseif containerEntity.uData.ContainerType == "Crystal" or containerEntity.uData.ContainerType == "CrystalSmall" then
    CollectableItems.FXCrystalOff(containerEntity.Name)
  elseif containerEntity.uData.ContainerType == "KnightLight" then
    CollectableItems.FXKnightGemOn(itemEntity.Name, "Light")
  elseif containerEntity.uData.ContainerType == "KnightDark" then
    CollectableItems.FXKnightGemOn(itemEntity.Name, "Dark")
  elseif containerEntity.uData.ContainerType == "KnightLife" then
    CollectableItems.FXKnightGemOn(itemEntity.Name, "Life")
  elseif containerEntity.uData.ContainerType == "KnightScroll" then
    CollectableItems.FXKnightGemOn(itemEntity.Name, "Scroll")
  elseif containerEntity.uData.ContainerType == "KnightCombo" then
    CollectableItems.FXKnightGemOn(itemEntity.Name, "Scroll")
  end
end

function CollectableItems.OnFountainTouch(entityName)
  local userEntity = Game.GetEntity(entityName)
  local containerEntity = userEntity.uData.UsedContainer
  if nil == containerEntity then
    Game.ConsoleError("CollectableItems.OnFountainTouch: " .. entityName .. " not using container\n")
    return
  end
  containerEntity.uData.HasItem = false
  userEntity.uData.ItemGrabbed = true
  AISpec.StopAllAttackers()
  userEntity.Invulnerable = 1
  containerEntity.uData.TargetEntityName = entityName
  containerEntity.OnObjSlot = "CollectableItems.FountainSlot"
  local maxLife = userEntity.oActCtrl.oActClass.Life
  if containerEntity.uData.FirstUse then
    containerEntity.uData.FillQuantity = maxLife
    ScorerSprites.ShowRecover(player.Pos, maxLife - userEntity.Life)
  else
    containerEntity.uData.FillQuantity = math.min(maxLife, containerEntity.uData.LifeToRestore + userEntity.Life)
  end
  containerEntity.uData.FillAccumulator = 0
  containerEntity.uData.FillRatio = (containerEntity.uData.FillQuantity - userEntity.Life) / CollectableItems.ContainerInfo[containerEntity.uData.ContainerType].FillTime
  CollectableItems.FXFountainUse(containerEntity.Name)
end

function CollectableItems.OnItemStoreEvent(entityName)
  local userEntity = Game.GetEntity(entityName)
  if not userEntity.uData.ItemGrabbed then
    userEntity.uData.UsedContainer = nil
    return
  else
    userEntity.uData.ItemGrabbed = false
  end
  local containerEntity = userEntity.uData.UsedContainer
  if nil == containerEntity then
    Game.ConsoleError("CollectableItems.OnItemStoreEvent: " .. entityName .. " not using container\n")
    return
  end
  if containerEntity.ActCtrl == "KnightDark" and KnightDark.Tutorial then
    Tutorial.DrawBackMenu(13)
    KnightDark.Tutorial = false
  end
  local itemEntity = Game.GetEntity(containerEntity.Name .. "_Item")
  if nil == itemEntity then
    Game.ConsoleError("Item entity '" .. containerEntity.Name .. "_Item'" .. " doesn't exist\n")
    return
  end
  itemEntity:Del()
  local onIncrement = CollectableItems.ContainerInfo[containerEntity.uData.ContainerType].OnItemIncrement
  if onIncrement then
    onIncrement(containerEntity, userEntity, true)
  end
  userEntity.uData.UsedContainer = nil
end

function CollectableItems.OnEndFountainTouch(entityName)
  local userEntity = Game.GetEntity(entityName)
  if not userEntity.uData.ItemGrabbed then
    userEntity.uData.UsedContainer = nil
    return
  else
    userEntity.uData.ItemGrabbed = false
  end
  local containerEntity = userEntity.uData.UsedContainer
  if nil == containerEntity then
    Game.ConsoleError("CollectableItems.OnEndFountainTouch: " .. entityName .. " not using fountain\n")
    return
  end
  containerEntity.bShowNode_DC_Water = false
  containerEntity.bShowNode_DC_Water_Empty = false
  if containerEntity.uData.Infinite or containerEntity.uData.FirstUse then
    Game.AddScheduledFunc(Game.GetTime() + containerEntity.uData.RefillTime, "", "CollectableItems.RefillFountain", containerEntity.Name)
    containerEntity.uData.ScheduledRefill = true
  end
  userEntity.uData.UsedContainer = nil
  CollectableItems.FXFountainOff(containerEntity.Name)
  AISpec.RestoreAllAttackers()
end

function CollectableItems.FreeGemOnUse(userEntity, gemEntity)
  if userEntity.isFalling == 1 then
    return
  end
  local targetAngleY = (userEntity.Pos - gemEntity.Pos):getrot().y
  local takeActionName = userEntity.ExtraSufix .. "TakeFreeGem"
  userEntity.oActCtrl:SetAction(takeActionName)
  if userEntity.oActCtrl.Action ~= takeActionName then
    return
  end
  userEntity.uData.ItemGrabbed = false
  gemEntity.bArrowCanUse = false
  userEntity.ViewAng = userEntity.Ang
  userEntity.DisplAng = 0
  userEntity:MoveMePosAng(3, 0.1, userEntity.Pos.x, userEntity.Pos.y, userEntity.Pos.z, 0, targetAngleY, 0)
  userEntity.uData.UsedGem = gemEntity
  userEntity.SelectedEntity = gemEntity.Name
  gemEntity.LinkModel = userEntity.Name .. ",OB_Gabriel_Daga"
  gemEntity.DeltaOffMul = 2
  gemEntity.UseLinkPos = 1
  gemEntity.UseModelAlign = 0
  gemEntity.UseLinkAng = 1
end

function CollectableItems.OnFreeGemGrabbed(userName)
  local user = Game.GetEntity(userName)
  local gem = user.uData.UsedGem
  CollectableItems.IncrementTotalEnergy(gem)
  gem.bActive = false
  CollectableItems.FXKnightGemOff(gem.Name, gem.uData.EnergyType)
  user.uData.UsedGem = nil
end

function CollectableItems.DropFreeGem(enemyName, gemName)
  local enemy = Game.GetEntity(enemyName)
  local freeGem = Game.GetEntity(gemName)
  if enemy and freeGem and not CollectableItems.isGem(freeGem.uData.EnergyType .. "Gems", freeGem.uData.idGem) then
    freeGem.bActive = true
    freeGem.Pos = V3D(enemy.Pos.x, freeGem.Pos.y, enemy.Pos.z)
    CollectableItems.FXKnightGemOn(gemName, freeGem.uData.EnergyType)
    addSF(0.5, "MoviendoGema", "CollectableItems.MovePos", gemName)
  end
end

function CollectableItems.MovePos(EntityName)
  local me = Game.GetEntity(EntityName)
  if me then
    MissionUtils.DoInterpTgt(me, {
      [1] = 2,
      [2] = "os",
      Pos = me.Pos + V3D(0, 15, 0)
    })
    addSF(2, "MoviendoPosLLave", "CollectableItems.MovePos", me.Name)
  end
end

function CollectableItems.OnAfterLoadFreeGem(gemName)
  local gem = Game.GetEntity(gemName)
  if gem and gem.bActive then
    CollectableItems.FXKnightGemOn(gemName, gem.uData.EnergyType)
  end
end

function CollectableItems.GenerateItem(generatorName)
  local generatorEntity = Game.GetEntity(generatorName)
  if generatorEntity.uData.HasItem then
    return
  else
    generatorEntity.uData.HasItem = true
  end
  local itemObjectName = CollectableItems.ContainerInfo[generatorEntity.uData.ContainerType].ItemName
  local position, angle
  local itemLinkNode = CollectableItems.ContainerInfo[generatorEntity.uData.ContainerType].ItemLinkNode
  if itemLinkNode then
    position = generatorEntity["NodePosHierarchy_" .. itemLinkNode]
    angle = generatorEntity["NodeAngHierarchy_" .. itemLinkNode]
  else
    position = generatorEntity.Pos
    angle = generatorEntity.Ang
  end
  if CollectableItems.ContainerInfo[generatorEntity.uData.ContainerType].OffsetPosition then
    position = position + CollectableItems.ContainerInfo[generatorEntity.uData.ContainerType].OffsetPosition
  end
  local itemEntity = PhysicsObj.CreateObj(generatorEntity.Name .. "_Item", itemObjectName, position, angle)
  if nil == itemEntity then
    Game.ConsoleError("Could not create item " .. entity.Name .. "_Item" .. "\n")
  end
  generatorEntity.bArrowCanUse = true
  if generatorEntity.uData.ContainerType == "Flower" then
    CollectableItems.FXFlowerDustOn(generatorEntity.Name)
  elseif generatorEntity.uData.ContainerType == "Crystal" or generatorEntity.uData.ContainerType == "CrystalSmall" then
    CollectableItems.FXCrystalOn(generatorEntity.Name)
  end
end

function CollectableItems.RemoveItem(containerName)
  local container = Game.GetEntity(containerName)
  if container and container.uData.HasItem then
    container.uData.HasItem = false
    local item = Game.GetEntity(containerName .. "_Item")
    if item then
      item:Del()
    end
    container.bArrowCanUse = false
    if container.uData.ContainerType == "Flower" then
      CollectableItems.FXFlowerDustOff(containerName)
    elseif container.uData.ContainerType == "Crystal" then
      CollectableItems.FXCrystalOff(containerName)
      container.Action = "PowerCrystal_FallLoop"
    elseif container.uData.ContainerType == "CrystalSmall" then
      CollectableItems.FXCrystalOff(containerName)
      container.Action = "PowerCrystalSmall_FallLoop"
    end
  end
end

function CollectableItems.OnDebugDraw(generatorEntity)
  if nil ~= generatorEntity.uData.takenPosition then
    local orientation = V3D(0, 0, 1):rot(generatorEntity.uData.takerOrientation)
    orientation = orientation + generatorEntity.uData.takerPosition
    DebugDraw.DrawLink(generatorEntity.uData.takerPosition, orientation, false, true, Color(0, 0, 255, 255), Color(0, 0, 255, 255))
    DebugDraw.DrawLink(generatorEntity.uData.takerPosition, generatorEntity.uData.targetPosition, false, true, Color(20, 150, 20, 255), Color(20, 150, 20, 255))
    for i, pos in pairs(generatorEntity.uData.candidates) do
      local color
      if i == 1 then
        color = Color(0, 200, 200, 255)
      elseif i == #generatorEntity.uData.candidates then
        color = Color(255, 64, 0, 255)
      else
        color = Color(0, 64, 255, 255)
      end
      DebugDraw.DrawLink(generatorEntity.uData.takenPosition, pos, false, true, color, color)
    end
  end
end

function CollectableItems.EnableGenerator(generatorName, force)
  local generatorEntity = Game.GetEntity(generatorName)
  if generatorEntity.uData.HasItem or force then
    generatorEntity.bArrowCanUse = true
  end
end

function CollectableItems.RefillFountain(fountainName)
  local fountainEntity = Game.GetEntity(fountainName)
  fountainEntity.bArrowCanUse = true
  fountainEntity.uData.HasItem = true
  fountainEntity.bShowNode_DC_Water = true
  fountainEntity.uData.ScheduledRefill = false
  CollectableItems.FXFountainOn(fountainName)
end

function CollectableItems.FountainSlot(entityName, timeDiff)
  local fountainEntity = Game.GetEntity(entityName)
  local userEntity = Game.GetEntity(fountainEntity.uData.TargetEntityName)
  fountainEntity.uData.FillAccumulator = fountainEntity.uData.FillAccumulator + fountainEntity.uData.FillRatio * timeDiff
  if fountainEntity.uData.FillAccumulator >= 1 then
    local intPart = math.floor(fountainEntity.uData.FillAccumulator)
    fountainEntity.uData.FillAccumulator = fountainEntity.uData.FillAccumulator - intPart
    userEntity.Invulnerable = 0
    userEntity.Life = userEntity.Life + intPart
    if init.LevelName == "level.1_4_haunting_path" and Trials.isTrial and MapTrial ~= nil then
      MapTrial.OnHealthRecovery()
    end
    userEntity.Invulnerable = 1
  end
  if userEntity.Life >= fountainEntity.uData.FillQuantity then
    userEntity.Invulnerable = 0
    userEntity.Life = fountainEntity.uData.FillQuantity
    if init.LevelName == "level.1_4_haunting_path" and Trials.isTrial and MapTrial ~= nil then
      MapTrial.OnHealthRecovery()
    end
    fountainEntity.OnObjSlot = ""
    fountainEntity.uData.FillRatio = 0
    fountainEntity.uData.FillQuantity = 0
    fountainEntity.uData.FillAccumulator = 0
    fountainEntity.uData.TargetEntityName = ""
  end
end

function CollectableItems.IncrementTotalEnergy(knightEntity)
  if knightEntity.uData.OnScrollCollected then
    knightEntity.uData.OnScrollCollected(knightEntity)
  end
  if "Scroll" == knightEntity.uData.EnergyType then
    local scrollIndex = CollectableItems.ScrollArray[knightEntity.uData.idGem]
    if type(scrollIndex) == "number" then
      CollectableItems.AddScroll(scrollIndex)
    end
  elseif "Life" == knightEntity.uData.EnergyType then
    CollectableItems.AddGem("LifeGems", knightEntity.uData.idGem)
    CollectableItems.SetLife()
  elseif "Dark" == knightEntity.uData.EnergyType then
    CollectableItems.AddGem("DarkGems", knightEntity.uData.idGem)
    CollectableItems.SetDark()
  elseif "Light" == knightEntity.uData.EnergyType then
    CollectableItems.AddGem("LightGems", knightEntity.uData.idGem)
    CollectableItems.SetLight()
  elseif "Combo" == knightEntity.uData.EnergyType then
    if knightEntity.uData.ComboName then
      if CollectableItems.OnScrollComboRecievedCallback then
        CollectableItems.OnScrollComboRecievedCallback(knightEntity.uData.ComboName)
      else
        TravelBook.ActionsManager:NewAction(knightEntity.uData.ComboName)
      end
    end
  elseif "DaggerUpgrades" == knightEntity.uData.EnergyType then
    CollectableItems.AddUpgrade("DaggerUpgrades", knightEntity.uData.idGem)
    CollectableItems.SetDaggersUpgrades()
  elseif "VialUpgrades" == knightEntity.uData.EnergyType then
    CollectableItems.AddUpgrade("VialUpgrades", knightEntity.uData.idGem)
    CollectableItems.SetVialsUpgrades()
  elseif "FairyUpgrades" == knightEntity.uData.EnergyType then
    CollectableItems.AddUpgrade("FairyUpgrades", knightEntity.uData.idGem)
    CollectableItems.SetFairiesUpgrades()
  else
    Game.ConsoleError("NeutralEnergy.IncrementTotalEnergy: Invalid knight entity: " .. knightEntity.Name .. "\n")
  end
end

function CollectableItems.FallCrystal(entityName)
  local actionController = Game.GetEntity(entityName).oActCtrl
  if actionController.oActClass.Name == "PowerCrystal_Container" then
    actionController.Action = "PowerCrystal_Fall"
  elseif actionController.oActClass.Name == "PowerCrystalSmall_Container" then
    actionController.Action = "PowerCrystalSmall_Fall"
  end
end

function CollectableItems.PlaceItem(userEntity, containerEntity)
  if containerEntity.uData.HasItem then
    return
  end
  if userEntity.uData.UsedContainer ~= nil then
    return
  end
  if userEntity.isFalling == 1 then
    return
  end
  local containerInfo = CollectableItems.ContainerInfo[containerEntity.uData.ContainerType]
  local isValid, targetPosition, targetAngle = CollectableItems.CalculateTakePosition(userEntity, containerEntity, containerInfo.PickDistance)
  if not isValid then
    return
  end
  local placeActionName = userEntity.ExtraSufix .. containerInfo.PlaceAnimationName
  userEntity.oActCtrl:SetAction(placeActionName)
  if userEntity.oActCtrl.Action ~= placeActionName then
    return
  end
  userEntity.uData.ItemGrabbed = true
  containerEntity.bArrowCanUse = false
  local itemName = containerEntity.Name .. "_Item"
  local itemObjectName = containerInfo.ItemName
  local itemEntity = Game.CreateEntity(itemName, "WithLife", userEntity.NodePosHierarchy_OB_Gabriel_Daga)
  itemEntity.Mesh = "Models/Physics/" .. itemObjectName .. "/" .. itemObjectName .. ".m3d"
  itemEntity.LinkModel = userEntity.Name .. ",OB_Gabriel_Daga"
  itemEntity.DeltaOffMul = 1000
  itemEntity.UseLinkPos = 1
  itemEntity.UseModelAlign = 0
  itemEntity.UseLinkAng = 1
  Game.AddScheduledFunc(Game.GetTime() + containerInfo.DisabledTime, "EnableGenerator" .. containerEntity.Name, "CollectableItems.EnableGenerator", containerEntity.Name, true)
  userEntity.ViewAng = userEntity.Ang
  userEntity.DisplAng = 0
  userEntity:MoveMePosAng(3, 0.1, targetPosition.x, targetPosition.y, targetPosition.z, 0, targetAngle, 0)
  userEntity.uData.UsedContainer = containerEntity
  userEntity.SelectedEntity = containerEntity.Name
end

function CollectableItems.OnItemRelease(entityName)
  local userEntity = Game.GetEntity(entityName)
  local container = userEntity.uData.UsedContainer
  local containerName = container.Name
  local itemEntity = Game.GetEntity(containerName .. "_Item")
  if nil == itemEntity then
    Game.ConsoleError("CollectableItems.OnItemRelease: Item " .. itemName .. " doesn't exist\n")
    return
  end
  local containerInfo = CollectableItems.ContainerInfo[container.uData.ContainerType]
  itemEntity.Pos = userEntity.NodePosHierarchy_OB_Gabriel_Daga
  itemEntity.Ang = userEntity.NodeAngHierarchy_OB_Gabriel_Daga
  itemEntity:UnlinkModel(0)
  itemEntity.LinkModel = containerName .. "," .. containerInfo.ItemLinkNode
  itemEntity.DeltaOffMul = containerInfo.MovingFactor
  itemEntity.UseLinkPos = 1
  itemEntity.UseModelAlign = 0
  itemEntity.UseLinkAng = 1
  container.uData.HasItem = true
  if nil ~= containerInfo.OnPlaceFunction then
    containerInfo.OnPlaceFunction(container)
  end
  userEntity.uData.ItemGrabbed = false
end

function CollectableItems.OnPlaceEnd(entityName)
  local userEntity = Game.GetEntity(entityName)
  local container = userEntity.uData.UsedContainer
  if userEntity.uData.ItemGrabbed then
    local item = Game.GetEntity(container.Name .. "_Item")
    item:Del()
  end
  userEntity.uData.UsedContainer = nil
end

function CollectableItems.OnCrystalStatueTake(entityName)
  local fadeOutTime = 1
  if MapEffects.EmitterLightFadeOut then
    MapEffects.EmitterLightFadeOut(entityName, fadeOutTime)
    if FX.IsEffect("EFFECT_PARTICLES\183EMITTER_CRYSTAL", "EmitterCrystal_" .. entityName) then
      FX.SetEffect("EFFECT_PARTICLES\183EMITTER_CRYSTAL", "EmitterCrystal_" .. entityName, "BirthEnabledAll 0")
      FX.SetEffect("EFFECT_PARTICLES\183EMITTER_CRYSTAL", "EmitterCrystal_" .. entityName, "EmitterDeActivate 2,0")
    end
  end
  addSF(fadeOutTime, "", "LightRay.OnEmitterStop", entityName)
  local statue = Game.GetEntity(entityName)
  if not statue.uData.OneUse then
    local containerInfo = CollectableItems.ContainerInfo[statue.uData.ContainerType]
    if statue.uData.UseFuncToRestore then
      statue.UseFunc = statue.uData.UseFuncToRestore
    else
      statue.UseFunc = "CollectableItems.PlaceItem"
    end
    Game.AddScheduledFunc(Game.GetTime() + containerInfo.DisabledTime, "", "CollectableItems.EnableGenerator", entityName, true)
  end
end

function CollectableItems.OnCrystalStatuePlace(statue)
  WeaponsCrystal.LoseCrystal()
  if statue.uData.TurnSpeed then
    statue.UseFunc = "PushPull.CircleGrip"
    statue.CanUseFunc = "PushPull.CanUseFunc"
    statue.bArrowCanUse = false
    Game.DeleteScheduledFuncs("EnableGenerator" .. statue.Name)
  else
    statue.UseFunc = "CollectableItems.ContainerOnUse"
  end
  addSF(3, "EnableGenerator" .. statue.Name, "CollectableItems.EnableGenerator", statue.Name, true)
  LightRay.OnStatueBegin(statue.Name, statue.uData.IgnoreFXOnPlace)
end

function CollectableItems.CanUseFront(userEntity, containerEntity)
  local containerToUser = userEntity.Pos - containerEntity.Pos
  containerToUser.y = 0
  if math.abs(Game.NormAng(containerToUser:getrot().y - containerEntity.Ang.y + 180)) < (containerEntity.uData.UseFrontAngle or 25) then
    return 1
  else
    return 0
  end
end

function CollectableItems.InitEffects()
  FX.InitEffect("EFFECT_PARTICLES\183FLOWER_DUST", 10, "FX/fairy/flower.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183FLOWER_DUST_BASE", 10, "FX/fairy/flower2.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183CRISTAL_BASE", 10, "FX/cristal/cristal.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183FOUNTAIN_BASE", 10, "FX/fountain/fountain.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183BELMONT_VIAL_RECHARGE2", 1, "fx/belmont/vial/recharge_statue.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183KNIGHT_HELIX", 2, "fx/KnightGem/helix_light.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_Light", 1, "fx/KnightGem/gem_glow_light.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_Dark", 1, "fx/KnightGem/gem_glow_dark.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_Life", 1, "fx/KnightGem/gem_glow_life.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_Scroll", 1, "fx/KnightGem/scroll_glow.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_STATIC_Light", 1, "fx/KnightGem/gem_glow_light_static.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_STATIC_Dark", 1, "fx/KnightGem/gem_glow_dark_static.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_STATIC_Life", 1, "fx/KnightGem/gem_glow_life_static.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_STATIC_Scroll", 1, "fx/KnightGem/scroll_glow_static.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183KNIGHT_GEM_TRAIL_Light", 1, "fx/KnightGem/gem_trail_light.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183KNIGHT_GEM_TRAIL_Dark", 1, "fx/KnightGem/gem_trail_dark.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183KNIGHT_GEM_TRAIL_Life", 1, "fx/KnightGem/gem_trail_life.ps.xml,0,1")
  FX.InitEffect("EFFECT_PARTICLES\183KNIGHT_GEM_TRAIL_Scroll", 1, "fx/KnightGem/scroll_trail.ps.xml,0,1")
end

function CollectableItems.FXFlowerDustOn(entityName)
  local pos = Game.GetEntity(entityName).Pos + V3D(-10, -160, 0)
  if FX.BeginEffect("EFFECT_PARTICLES\183FLOWER_DUST_BASE", "FlowerDustBase_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183FLOWER_DUST_BASE", "FlowerDustBase_" .. entityName, "MatrixTranslation " .. pos:str3())
  end
  pos = pos + V3D(-10, 190, 0)
  if FX.BeginEffect("EFFECT_PARTICLES\183FLOWER_DUST", "FlowerDust_" .. entityName .. "_Item") then
    FX.SetEffect("EFFECT_PARTICLES\183FLOWER_DUST", "FlowerDust_" .. entityName .. "_Item", "MatrixTranslation " .. pos:str3())
  end
  local LightRadius = Game.GetEntity(entityName).uData.LightRadius
  local LightIntensity = Game.GetEntity(entityName).uData.LightIntensity
  local Color = "(0.784,1,0.59)"
  if FX.BeginEffect("EFFECT_LIGHT", "FlowerDustBaseLight_" .. entityName, 999999) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 1 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. Color .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.2,0.4")
    FX.SetEffect("EFFECT_LIGHT", "", "RandomInt " .. LightIntensity * 0.7 .. "," .. LightIntensity .. ",0.1")
    FX.SetEffect("EFFECT_LIGHT", "", "AttDistance 4000")
  end
  SoundUtils.FXPlaySoundLoop("Belmont", "FairyBaseLoop", entityName)
end

function CollectableItems.FXFlowerDustOff(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183FLOWER_DUST_BASE", "FlowerDustBase_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183FLOWER_DUST_BASE", "FlowerDustBase_" .. entityName, "BirthEnabledAll 0")
  end
  if FX.IsEffect("EFFECT_PARTICLES\183FLOWER_DUST", "FlowerDust_" .. entityName .. "_Item") then
    FX.SetEffect("EFFECT_PARTICLES\183FLOWER_DUST", "FlowerDust_" .. entityName .. "_Item", "BirthEnabledAll 0")
  end
  if FX.IsEffect("EFFECT_LIGHT", "FlowerDustBaseLight_" .. entityName) then
    FX.EndEffect("EFFECT_LIGHT", "FlowerDustBaseLight_" .. entityName)
  end
  local LightRadius = Game.GetEntity(entityName).uData.LightRadius
  local LightIntensity = Game.GetEntity(entityName).uData.LightIntensity
  local Color = "(0.784,1,0.59)"
  if FX.BeginEffect("EFFECT_LIGHT", "FlowerDustBaseLight_" .. entityName, 5) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity * 0.85 .. ",0," .. Color .. "] 5,[" .. LightRadius .. ",0,0," .. Color .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.2,0.4")
    FX.SetEffect("EFFECT_LIGHT", "", "AttDistance 4000")
  end
  SoundUtils.FXStopSoundLoop("Belmont", "FairyBaseLoop", entityName)
end

function CollectableItems.FXCrystalOn(entityName)
  local offset = V3D(0, -300, 0)
  if Game.GetEntity(entityName).uData.ContainerType == "Crystal" then
    offset = V3D(0, -220, 0)
  end
  local pos = Game.GetEntity(entityName).Pos + offset
  if FX.BeginEffect("EFFECT_PARTICLES\183CRISTAL_BASE", "CrystalBase_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183CRISTAL_BASE", "CrystalBase_" .. entityName, "MatrixTranslation " .. pos:str3())
    FX.SetEffect("EFFECT_PARTICLES\183CRISTAL_BASE", "CrystalBase_" .. entityName, "BirthEnabledAll 1")
  end
  local LightRadius = Game.GetEntity(entityName).uData.LightRadius
  local LightIntensity = Game.GetEntity(entityName).uData.LightIntensity
  local Color = "(0.44,0.28,1)"
  if FX.BeginEffect("EFFECT_LIGHT", "CrystalBaseLight_" .. entityName, 999999) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 1 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. Color .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.2,0.4")
    FX.SetEffect("EFFECT_LIGHT", "", "RandomInt " .. LightIntensity * 0.7 .. "," .. LightIntensity .. ",0.1")
    FX.SetEffect("EFFECT_LIGHT", "", "AttDistance 4000")
  end
  local time = 0.5
  if FX.BeginEffect("EFFECT_MODELEFFECT", "", time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT", "", "EntityName " .. entityName)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "RenderEffect " .. FX.MODELEFFECT_GLOW_A)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "ValueRamp 2 0,0 " .. time .. ",1")
    FX.SetEffect("EFFECT_MODELEFFECT", "", "FadeNull")
  end
  SoundUtils.FXPlaySoundLoop("Belmont", "CrystalLoop", entityName)
end

function CollectableItems.FXCrystalOff(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183CRISTAL_BASE", "CrystalBase_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183CRISTAL_BASE", "CrystalBase_" .. entityName, "BirthEnabledAll 0")
  end
  if FX.IsEffect("EFFECT_LIGHT", "CrystalBaseLight_" .. entityName) then
    FX.EndEffect("EFFECT_LIGHT", "CrystalBaseLight_" .. entityName)
  end
  local LightRadius = Game.GetEntity(entityName).uData.LightRadius
  local LightIntensity = Game.GetEntity(entityName).uData.LightIntensity
  local Color = "(0.44,0.28,1)"
  if FX.BeginEffect("EFFECT_LIGHT", "CrystalBaseLight_" .. entityName, 5) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. Color .. "] 5,[" .. LightRadius .. ",0,0," .. Color .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.2,0.4")
    FX.SetEffect("EFFECT_LIGHT", "", "AttDistance 4000")
  end
  local time = 3
  if FX.BeginEffect("EFFECT_MODELEFFECT", "", time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT", "", "EntityName " .. entityName)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "RenderEffect " .. FX.MODELEFFECT_GLOW_A)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "ValueRamp 2 0,1 " .. time .. ",0")
    FX.SetEffect("EFFECT_MODELEFFECT", "", "FadeNull")
  end
  SoundUtils.FXStopSoundLoop("Belmont", "CrystalLoop", entityName)
end

function CollectableItems.FXFountainOn(entityName, preloadFX)
  if FX.BeginEffect("EFFECT_PARTICLES\183FOUNTAIN_BASE", "FountainBase_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183FOUNTAIN_BASE", "FountainBase_" .. entityName, "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183FOUNTAIN_BASE", "FountainBase_" .. entityName, "MatrixTranslation " .. V3D(0, 0, -30):str3())
    if preloadFX then
      FX.SetEffect("EFFECT_PARTICLES\183FOUNTAIN_BASE", "FountainBase_" .. entityName, "Preload 3 1")
    end
  end
  local LightRadius = Game.GetEntity(entityName).uData.LightRadius
  local LightIntensity = Game.GetEntity(entityName).uData.LightIntensity
  local Color = "(0.65,0.9,0.65,1)"
  if FX.BeginEffect("EFFECT_LIGHT", "MagicFountain" .. entityName, 999999) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. ",0,0," .. Color .. "] 7.0,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. Color .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.2,0.4")
    FX.SetEffect("EFFECT_LIGHT", "", "RandomInt " .. LightIntensity * 0.7 .. "," .. LightIntensity .. ",0.1")
    FX.SetEffect("EFFECT_LIGHT", "", "AttDistance 4000")
  end
  SoundUtils.FXPlaySoundLoop("Belmont", "FountainLoop", entityName)
end

function CollectableItems.FXFountainUse(entityName)
  if FX.BeginEffect("EFFECT_PARTICLES\183BELMONT_VIAL_RECHARGE2", "") then
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_VIAL_RECHARGE2", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183BELMONT_VIAL_RECHARGE2", "", "MatrixTranslation (0,15,0)")
  end
end

function CollectableItems.FXFountainOff(entityName)
  if FX.IsEffect("EFFECT_PARTICLES\183FOUNTAIN_BASE", "FountainBase_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183FOUNTAIN_BASE", "FountainBase_" .. entityName, "BirthEnabledAll 0")
    FX.SetEffect("EFFECT_PARTICLES\183FOUNTAIN_BASE", "FountainBase_" .. entityName, "AlphaFadeOutEmitterSpeed 0,0,2")
    FX.SetEffect("EFFECT_PARTICLES\183FOUNTAIN_BASE", "FountainBase_" .. entityName, "AlphaFadeOutEmitterSpeed 1,0,2")
    FX.SetEffect("EFFECT_PARTICLES\183FOUNTAIN_BASE", "FountainBase_" .. entityName, "AlphaFadeOutEmitterSpeed 2,0,2")
    FX.SetEffect("EFFECT_PARTICLES\183FOUNTAIN_BASE", "FountainBase_" .. entityName, "AlphaFadeOutEmitterSpeed 3,0,2")
    FX.SetEffect("EFFECT_PARTICLES\183FOUNTAIN_BASE", "FountainBase_" .. entityName, "LifeTimeRemain 3")
  end
  if FX.IsEffect("EFFECT_LIGHT", "MagicFountain" .. entityName) then
    FX.EndEffect("EFFECT_LIGHT", "MagicFountain" .. entityName)
  end
  local LightRadius = Game.GetEntity(entityName).uData.LightRadius
  local LightIntensity = Game.GetEntity(entityName).uData.LightIntensity
  local Color = "(0.65,0.9,0.65,1)"
  if FX.BeginEffect("EFFECT_LIGHT", "MagicFountain" .. entityName, 2) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 2 0.0,[" .. LightRadius .. "," .. LightIntensity * 0.85 .. ",0," .. Color .. "] 2,[" .. LightRadius .. ",0,0," .. Color .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.2,0.4")
    FX.SetEffect("EFFECT_LIGHT", "", "AttDistance 4000")
  end
  SoundUtils.FXStopSoundLoop("Belmont", "FountainLoop", entityName)
end

function CollectableItems.FXKnightRedeem()
  local knight = player.uData.RedeemedKnight
  if knight ~= nil then
  end
end

function CollectableItems.FXKnightDeath(entityName)
  local time = defparam(0.5, 0)
  Game.AddScheduledFunc(Game.GetTime() + time, "", "CollectableItems.FXKnightDeathExec", entityName)
  local knight = Game.GetEntity(entityName)
  local anim = string.match(knight.Mesh, "_(%d+).m3d$")
  local soul = Game.CreateEntity(entityName .. "Soul", "WithLife", knight.Pos)
  soul.ActCtrl = "PureSoulA"
  soul.Action = "Death" .. anim
  soul.Ang = knight.Ang
  CollectableItems.FXPureSoulBegin(soul.Name)
  NPC.DisolveEntity(entityName, 1)
end

function CollectableItems.FXKnightDeathExec(entityName)
  Game.AddScheduledFunc(Game.GetTime() + 10, entityName, "NPC.DeleteEntity", entityName)
  addSF(1, "", "Weapons.SetGhostTime", entityName, 1000)
end

function CollectableItems.FXPureSoulBegin(entityName)
  local time = 0.5
  if FX.BeginEffect("EFFECT_MODELEFFECT", "", time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT", "", "EntityName " .. entityName)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "RenderEffect " .. FX.MODELEFFECT_PHANTOM)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "ValueRamp 2 0,0 " .. time .. ",1")
    FX.SetEffect("EFFECT_MODELEFFECT", "", "FadeNull")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183PURESOUL", "PS_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183PURESOUL", "", "EmitterLinkToNode 0,0 " .. entityName .. "#Bip PureSoulA Head")
    FX.SetEffect("EFFECT_PARTICLES\183PURESOUL", "", "EmitterLinkToNode 0,1 " .. entityName .. "#Bip PureSoulA Spine")
    FX.SetEffect("EFFECT_PARTICLES\183PURESOUL", "", "EmitterLinkToNode 0,2 " .. entityName .. "#BoB_PureSoul_Cola_03")
    FX.SetEffect("EFFECT_PARTICLES\183PURESOUL", "", "EmitterLinkToNode 0,3 " .. entityName .. "#BoB_PureSoul_Cola_03")
    FX.SetEffect("EFFECT_PARTICLES\183PURESOUL", "", "EmitterLinkToNode 0,4 " .. entityName .. "#Bip PureSoulA R UpperArm")
    FX.SetEffect("EFFECT_PARTICLES\183PURESOUL", "", "EmitterLinkToNode 0,5 " .. entityName .. "#Bip PureSoulA L UpperArm")
    FX.SetEffect("EFFECT_PARTICLES\183PURESOUL", "", "EmitterLinkToNode 0,6 " .. entityName .. "#Bip PureSoulA L ForeTwist")
    FX.SetEffect("EFFECT_PARTICLES\183PURESOUL", "", "EmitterLinkToNode 0,7 " .. entityName .. "#Bip PureSoulA R ForeTwist")
    FX.SetEffect("EFFECT_PARTICLES\183PURESOUL", "", "EmitterLinkToNode 0,8 " .. entityName .. "#Bip PureSoulA L Hand")
    FX.SetEffect("EFFECT_PARTICLES\183PURESOUL", "", "EmitterLinkToNode 0,9 " .. entityName .. "#Bip PureSoulA R Hand")
  end
  local LightRadius = 500
  local LightIntensity = 2
  if FX.BeginEffect("EFFECT_LIGHT", "", 2) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#Bip PureSoulA Spine")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 3 0.0,[" .. LightRadius .. ",0,0,(0.5,0.5,1)] 0.2,[" .. LightRadius .. "," .. LightIntensity .. ",0,(0.5,0.5,1)] 2,[" .. LightRadius .. ",0,0,(0.5,0.5,1)]")
  end
end

function CollectableItems.FXPureSoulEnd(entityName)
  addSF(1, "", "CollectableItems.FXPureSoulEndSchd", entityName)
end

function CollectableItems.FXPureSoulEndSchd(entityName)
  local time = 0.5
  if FX.BeginEffect("EFFECT_MODELEFFECT", "", time) ~= nil then
    FX.SetEffect("EFFECT_MODELEFFECT", "", "EntityName " .. entityName)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "RenderEffect " .. FX.MODELEFFECT_PHANTOM)
    FX.SetEffect("EFFECT_MODELEFFECT", "", "ValueRamp 2 0,1 " .. time .. ",0")
    FX.SetEffect("EFFECT_MODELEFFECT", "", "FadeNull")
  end
  local effectName = "PS_" .. entityName
  if FX.IsEffect("EFFECT_PARTICLES\183PURESOUL", effectName) then
    FX.SetEffect("EFFECT_PARTICLES\183PURESOUL", effectName, "BirthEnabledAll 0")
  end
  addSF(3, "", "NPC.DeleteEntity", entityName)
end

function CollectableItems.FXKnightGemOn(entityName, typo)
  if FX.BeginEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_STATIC_" .. typo, "Knight_Glow_Static_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_STATIC_" .. typo, "", "EmitterLinkToNode 0,0 " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_STATIC_" .. typo, "", "EmitterLinkToNode 1,0 " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_STATIC_" .. typo, "", "EmitterLinkToNode 2,0 " .. entityName .. "#DC_Root")
  end
  local LightRadius = 100
  local LightIntensity = 2
  local Color = ""
  if typo == "Light" then
    Color = "(0.482,0.561,1.000)"
  elseif typo == "Dark" then
    Color = "(1.000,0.435,0.353)"
  elseif typo == "Life" then
    Color = "(0.776,1.000,0.710)"
  elseif typo == "Scroll" then
    Color = "(1.000,0.976,0.690)"
  end
  if Color ~= "" and FX.BeginEffect("EFFECT_LIGHT", "KnightLight_" .. entityName, 999999) ~= nil then
    FX.SetEffect("EFFECT_LIGHT", "", "LinkToNode " .. entityName .. "#DC_Root")
    FX.SetEffect("EFFECT_LIGHT", "", "ValueRamp 1 0.0,[" .. LightRadius .. "," .. LightIntensity .. ",0," .. Color .. "]")
    FX.SetEffect("EFFECT_LIGHT", "", "LightAtt 0.2,0.4")
    FX.SetEffect("EFFECT_LIGHT", "", "RandomInt " .. LightIntensity * 0.7 .. "," .. LightIntensity .. ",0.1")
    FX.SetEffect("EFFECT_LIGHT", "", "AttDistance 4000")
  end
  Sound.PlaySound(Game.GetEntity(entityName).Pos, "Collectable_Item_Gema_Magia", 0.5, 100, 5000)
end

function CollectableItems.FXKnightGemOff(entityName, typo)
  if FX.IsEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_STATIC_" .. typo, "Knight_Glow_Static_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_STATIC_" .. typo, "Knight_Glow_Static_" .. entityName, "BirthEnabledAll 0")
  end
  if FX.IsEffect("EFFECT_LIGHT", "KnightLight_" .. entityName) then
    FX.EndEffect("EFFECT_LIGHT", "KnightLight_" .. entityName)
  end
end

function CollectableItems.FXKnightGemTrailOn(entityName, typo)
  CollectableItems.FXKnightGemOff(entityName, typo)
  if FX.BeginEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_" .. typo, "Knight_Glow_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_" .. typo, "", "LinkToNode " .. entityName .. "#DC_Root")
  end
  if FX.BeginEffect("EFFECT_PARTICLES\183KNIGHT_GEM_TRAIL_" .. typo, "Knight_GemTrail_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183KNIGHT_GEM_TRAIL_" .. typo, "", "EmitterLinkToNode 0,0 " .. entityName .. "#DC_Root")
  end
  Sound.PlaySound(Game.GetEntity(entityName).Pos, "Collectable_Item_Gema_Magia", 0.5, 100, 5000)
end

function CollectableItems.FXKnightGemTrailOff(entityName, typo)
  if FX.IsEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_" .. typo, "Knight_Glow_" .. entityName) then
    FX.EndEffect("EFFECT_PARTICLES\183KNIGHT_GEM_GLOW_" .. typo, "Knight_Glow_" .. entityName)
  end
  if FX.IsEffect("EFFECT_PARTICLES\183KNIGHT_GEM_TRAIL_" .. typo, "Knight_GemTrail_" .. entityName) then
    FX.SetEffect("EFFECT_PARTICLES\183KNIGHT_GEM_TRAIL_" .. typo, "Knight_GemTrail_" .. entityName, "BirthEnabled 0,0,0")
  end
end

function CollectableItems.CreateCollectableData(Name, Value)
  if init == nil then
    CollectableItems["ls" .. Name] = {}
    gvar = Game.CreateGvar("gv" .. Name, "string", "List of collectables (" .. Name .. ")")
    gvar.Value = string.rep(".", Value)
    gvar.Default = string.rep(".", Value)
    return
  end
  local istool = Game.Get("ToolMode") == 1
  local einfo
  if istool then
    einfo = {
      "Collectable: " .. Name,
      {},
      "Player"
    }
  end
  local gvarName = "gv" .. Name
  local gvar = Game.GVar(gvarName)
  if not gvar then
    gvar = Game.CreateGvar(gvarName, "string", "List of collectables (" .. Name .. ")")
    gvar.Default = string.rep(".", Value)
    gvar.Value = gvar.Default
  end
  CollectableItems[gvarName] = SaveGame.AddToGvar(gvarName)
  local Number = Value
  local arrayName = "ls" .. Name
  CollectableItems[arrayName] = {}
  for i = 1, #SaveGame.GameMaps do
    CollectableItems[arrayName][i] = 0
  end
  if istool then
    for i = 1, #SaveGame.GameMaps do
      einfo[2][i] = {
        SaveGame.GameMaps[i],
        "uData.CollectableItems." .. arrayName .. "." .. i,
        "INT",
        0,
        Number,
        1
      }
    end
  end
  if istool then
    if CollectableItems.EditorInfo == nil then
      CollectableItems.EditorInfo = {}
    end
    CollectableItems.EditorInfo[#CollectableItems.EditorInfo + 1] = einfo
  end
end

function CollectableItems.CollectableDataEditor(a)
  for i = 1, #CollectableItems.EditorInfo do
    a[#a + 1] = CollectableItems.EditorInfo[i]
  end
end

CollectableItems.ValidLevels = nil

function CollectableItems.BuildValidLevels()
  if CollectableItems.ValidLevels == nil then
    CollectableItems.ValidLevels = {}
    local lev = string.lower(string.sub(Game.GetLevelPath(), 8))
    local isvalid = true
    for i = 1, #SaveGame.GameMaps do
      CollectableItems.ValidLevels[SaveGame.GameMaps[i]] = isvalid
      if SaveGame.GameMaps[i] == lev then
        isvalid = false
      end
    end
  end
end

function CollectableItems.isValidLevel(Name)
  CollectableItems.BuildValidLevels()
  local res = CollectableItems.ValidLevels[string.lower(Name)]
  return res == nil or res == true
end

function CollectableItems.GetNumGems(Name)
  CollectableItems.BuildValidLevels()
  local NumGems = 0
  local A = CollectableItems["ls" .. Name]
  local GV = CollectableItems["gv" .. Name].Value
  for i = 1, #SaveGame.GameMaps do
    for j = 1, A[i] do
      if string.sub(GV, 1, 1) == "X" then
        NumGems = NumGems + 1
      end
      GV = string.sub(GV, 2)
    end
  end
  return NumGems
end

function CollectableItems.AddGem(Name, id)
  local lev = string.lower(string.sub(Game.GetLevelPath(), 8))
  local idGem = 0
  local A = CollectableItems["ls" .. Name]
  local GV = CollectableItems["gv" .. Name]
  Game.CreateSaveVar(init.LevelName .. ".Level" .. Name, "0")
  local numGems = tonumber(Game.GetSaveVar(init.LevelName .. ".Level" .. Name)) + 1
  Game.SetSaveVar(init.LevelName .. ".Level" .. Name, tostring(numGems))
  if CollectableItems.GetNumGems(Name) == 0 and Name == "LifeGems" then
    local gemType = string.match(Name, "(.+)Gems")
    TravelBook.NewEntry("Items", "ItemMedallion" .. gemType)
    TravelBook.Show()
  end
  for i = 1, #SaveGame.GameMaps do
    if SaveGame.GameMaps[i] == lev then
      if 1 <= id and id <= A[i] then
        idGem = idGem + id
        GV.Value = string.sub(GV.Value, 1, idGem - 1) .. "X" .. string.sub(GV.Value, idGem + 1)
        Game.Set("GemType", Name)
        local res = CollectableItems.GetNumGems(Name) % 5
        if res == 0 then
          res = 5
        end
        Game.Set("GemNumber", res)
        if res ~= 5 then
          addSF(0, "", "Scorer.SetMsgText", Game.GetLangStr(Name .. "_Collection"), Game.GetTime() + 3)
        end
        Game.SoftSaveConfig()
        CollectableItems.UnlockGemsAchievements(Name)
        return true
      else
        return false
      end
    else
      idGem = idGem + A[i]
    end
  end
  return false
end

function CollectableItems.AddUpgrade(Name, id)
  local lev = string.lower(string.sub(Game.GetLevelPath(), 8))
  local idUpgrade = 0
  local A = CollectableItems["ls" .. Name]
  local GV = CollectableItems["gv" .. Name]
  Game.CreateSaveVar(init.LevelName .. ".Level" .. Name, "0")
  local numGems = tonumber(Game.GetSaveVar(init.LevelName .. ".Level" .. Name)) + 1
  Game.SetSaveVar(init.LevelName .. ".Level" .. Name, tostring(numGems))
  for i = 1, #SaveGame.GameMaps do
    if SaveGame.GameMaps[i] == lev then
      if 1 <= id and id <= A[i] then
        idUpgrade = idUpgrade + id
        GV.Value = string.sub(GV.Value, 1, idUpgrade - 1) .. "X" .. string.sub(GV.Value, idUpgrade + 1)
        Game.SoftSaveConfig()
        CollectableItems.UnlockUpgradeAchievements()
        return true
      else
        return false
      end
    else
      idUpgrade = idUpgrade + A[i]
    end
  end
  return false
end

function CollectableItems.isGem(Name, id)
  local lev = string.lower(string.sub(Game.GetLevelPath(), 8))
  local idGem = 0
  local A = CollectableItems["ls" .. Name]
  local GV = CollectableItems["gv" .. Name]
  for i = 1, #SaveGame.GameMaps do
    if SaveGame.GameMaps[i] == lev then
      if 1 <= id and id <= A[i] then
        idGem = idGem + id
        return string.sub(GV.Value, idGem, idGem) == "X"
      else
        Game.ConsoleError("ERROR : Gem of type " .. Name .. " out of range " .. id .. "..\n")
        return false
      end
    else
      idGem = idGem + A[i]
    end
  end
  Game.ConsoleError("ERROR : Gem of type " .. Name .. " not defined in map.\n")
  return false
end

function CollectableItems.SetUpData()
  CollectableItems.SetDark()
  CollectableItems.SetLight()
  CollectableItems.SetLife()
  CollectableItems.SetDaggersUpgrades()
  CollectableItems.SetVialsUpgrades()
  CollectableItems.SetFairiesUpgrades()
end

function CollectableItems.SetDark()
  local prev = DarkPower.PowerMax.Value
  local incr = math.floor(CollectableItems.GetNumGems("DarkGems") / 5)
  DarkPower.PowerMax.Value = NeutralEnergy.BaseMagic + NeutralEnergy.KnightInc * incr
  DarkPower.Power.Value = DarkPower.PowerMax.Value
end

function CollectableItems.SetLight()
  local prev = LightPower.PowerMax.Value
  local incr = math.floor(CollectableItems.GetNumGems("LightGems") / 5)
  LightPower.PowerMax.Value = NeutralEnergy.BaseMagic + NeutralEnergy.KnightInc * incr
  LightPower.Power.Value = LightPower.PowerMax.Value
end

function CollectableItems.SetLife()
  local ac = Act.GetClass("Belmont")
  local prev = ac.Life
  local incr = math.floor(CollectableItems.GetNumGems("LifeGems") / 5)
  ac.Life = Belmont.BaseLife + Belmont.LifeInc * incr
  local ply = Game.GetEntity("Belmont")
  if ply then
    if init.LevelName == "level.1_4_haunting_path" and Trials.isTrial and MapTrial ~= nil and ac.Life > ply.Life then
      MapTrial.OnHealthRecoveryWithSaving()
    end
    ply.Life = ac.Life
  end
end

function CollectableItems.SetDaggersUpgrades()
  WeaponsDagger.DaggersExpansions = CollectableItems.GetNumGems("DaggerUpgrades")
end

function CollectableItems.SetVialsUpgrades()
  WeaponsVial.VialsExpansions = CollectableItems.GetNumGems("VialUpgrades")
end

function CollectableItems.SetFairiesUpgrades()
  WeaponsFairy.FairiesExpansions = CollectableItems.GetNumGems("FairyUpgrades")
end

function CollectableItems.SavelGenericScrollData()
  local sv = Game.Split(Game.Get("gvInfoScrolls"), "-")
  local str
  for i = 1, #SaveGame.GameMaps do
    local ns
    if init.level_name == SaveGame.GameMaps[i] then
      ns = Game.GetSaveVar(init.LevelName .. ".InfoScrolls")
    elseif type(sv[i]) == "string" then
      ns = sv[i]
    else
      ns = ""
    end
    if str then
      str = str .. "-" .. ns
    else
      str = ns
    end
  end
  Game.Set("gvInfoScrolls", str)
end

function CollectableItems.CreateScrollData()
  local sv = Game.Split(Game.Get("gvInfoScrolls"), "-")
  local intVal
  for i = 1, #SaveGame.GameMaps do
    if init.level_name == SaveGame.GameMaps[i] then
      intVal = sv[i]
      break
    end
  end
  if intVal == nil then
    intVal = ""
  end
  Game.CreateSaveVar(init.LevelName .. ".InfoScrolls", intVal)
  return Game.GetSaveVar(init.LevelName .. ".InfoScrolls")
end

function CollectableItems.GetScrollStatus(i)
  local s = CollectableItems.CreateScrollData(i)
  for nScroll = 1, #s do
    if tonumber(string.sub(s, nScroll, nScroll)) == i then
      return true
    end
  end
  return false
end

function CollectableItems.AddScroll(scrollIndex)
  if not CollectableItems.GetScrollStatus(scrollIndex) then
    local s = CollectableItems.CreateScrollData()
    Game.SetSaveVar(init.LevelName .. ".InfoScrolls", s .. scrollIndex)
    TravelBook.NewScroll(scrollIndex)
  end
end

function CollectableItems.ExtendScrollText(scrollIndex)
  if CollectableItems.IsScrollTextExtended(scrollIndex) then
    return
  end
  local saveVarName = init.LevelName .. ".InfoScrollsExtended"
  Game.CreateSaveVar(saveVarName, "")
  local saveVarValue = Game.GetSaveVar(saveVarName)
  Game.SetSaveVar(saveVarName, saveVarValue .. scrollIndex)
  TravelBook.ItemsManager:RenewScroll(scrollIndex)
end

function CollectableItems.IsScrollTextExtended(scrollIndex)
  if CollectableItems.GetScrollStatus(scrollIndex) then
    local saveVar = Game.GetSaveVar(init.LevelName .. ".InfoScrollsExtended")
    if saveVar then
      for i = 1, #saveVar do
        if tonumber(string.sub(saveVar, i, i)) == scrollIndex then
          return true
        end
      end
    end
  end
  return false
end

function CollectableItems.SetUpDeadKnight(entity)
  entity.uData.HasItem = true
  entity.ArrPriority = 20
  entity.ArrRadius = 300
  Hook.ObjectUse_SetUp(entity)
  entity.CanUseFunc = "CollectableItems.CanUseDeadKnight"
  local medallonPos = entity.Pos
  if entity.isNode_BoB_KnightLight_Medallon_C == 1 then
    medallonPos = entity.NodePosHierarchy_BoB_KnightLight_Medallon_C - V3D(0, 30, 0)
  elseif entity.isNode_DC_Item == 1 then
    medallonPos = entity.NodePosHierarchy_DC_Item
  end
  if entity.uData.EnergyType == "Dark" then
    CollectableItems.SetUpKnightDark(entity)
  elseif entity.uData.EnergyType == "Light" then
    CollectableItems.SetUpKnightLight(entity)
  elseif entity.uData.EnergyType == "Life" then
    CollectableItems.SetUpKnightLife(entity)
  elseif entity.uData.EnergyType == "Scroll" then
    CollectableItems.SetUpKnightScroll(entity)
  elseif entity.uData.EnergyType == "Key" then
    local posicion = medallonPos
    entity.uData.LLave = PhysicsObj.CreateObj("LLave", "Key", posicion, entity.Ang)
    if Key == nil then
      Game.PreloadLibrary("Models/Physics/Key/EntityDescriptor.lua", "Key", false)
    end
    if KeyHole == nil then
      Game.PreloadLibrary("Models/Physics/KeyHole/EntityDescriptor.lua", "KeyHole", false)
    end
    Key.Init(entity.uData.LLave.Name)
    addSF(0, "", "CollectableItems.KnightSetKeys", "Key")
    CollectableItems.KnightSetKeys2(entity)
  elseif entity.uData.EnergyType == "KeyA" then
    local posicion = medallonPos
    entity.uData.LLave = PhysicsObj.CreateObj("LLave", "KeyA", posicion, entity.Ang)
    if Key == nil then
      Game.PreloadLibrary("Models/Physics/Key/EntityDescriptor.lua", "Key", false)
    end
    if KeyHole == nil then
      Game.PreloadLibrary("Models/Physics/KeyHole/EntityDescriptor.lua", "KeyHole", false)
    end
    addSF(0, "", "KeyA.Init", entity.uData.LLave.Name)
    addSF(0, "", "CollectableItems.KnightSetKeys", "KeyA")
    CollectableItems.KnightSetKeys2(entity)
  elseif entity.uData.EnergyType == "KeyB" then
    local posicion = medallonPos
    entity.uData.LLave = PhysicsObj.CreateObj("LLave", "KeyB", posicion, entity.Ang)
    if Key == nil then
      Game.PreloadLibrary("Models/Physics/Key/EntityDescriptor.lua", "Key", false)
    end
    if KeyHole == nil then
      Game.PreloadLibrary("Models/Physics/KeyHole/EntityDescriptor.lua", "KeyHole", false)
    end
    addSF(0, "", "KeyB.Init", entity.uData.LLave.Name)
    addSF(0, "", "CollectableItems.KnightSetKeys", "KeyB")
    CollectableItems.KnightSetKeys2(entity)
  elseif entity.uData.EnergyType == "KeyC" then
    local posicion = medallonPos
    if Key == nil then
      Game.PreloadLibrary("Models/Physics/Key/EntityDescriptor.lua", "Key", false)
    end
    if KeyHole == nil then
      Game.PreloadLibrary("Models/Physics/KeyHole/EntityDescriptor.lua", "KeyHole", false)
    end
    entity.uData.LLave = PhysicsObj.CreateObj("LLave", "KeyC", posicion, entity.Ang)
    addSF(0, "", "KeyC.Init", entity.uData.LLave.Name)
    addSF(0, "", "CollectableItems.KnightSetKeys", "KeyC")
    CollectableItems.KnightSetKeys2(entity)
  elseif entity.uData.EnergyType == "BlueGem" then
    local posicion = medallonPos
    entity.uData.Gema = PhysicsObj.CreateObj("GemaB", "MechanismLens_Gem", posicion, entity.Ang)
    entity.uData.Gema.uData.Color = "Blue"
    if Key == nil then
      Game.PreloadLibrary("Models/Physics/Key/EntityDescriptor.lua", "Key", false)
    end
    if KeyHole == nil then
      Game.PreloadLibrary("Models/Physics/KeyHole/EntityDescriptor.lua", "KeyHole", false)
    end
    addSF(0, "", "MechanismLens_Gem.Init", entity.uData.Gema.Name)
    addSF(0, "", "CollectableItems.KnightSetKeys", "Gema")
    CollectableItems.KnightSetKeys2(entity)
  elseif entity.uData.EnergyType == "GreenGem" then
    local posicion = medallonPos
    entity.uData.Gema = PhysicsObj.CreateObj("GemaG", "MechanismLens_Gem", posicion, entity.Ang)
    entity.uData.Gema.uData.Color = "Green"
    if Key == nil then
      Game.PreloadLibrary("Models/Physics/Key/EntityDescriptor.lua", "Key", false)
    end
    if KeyHole == nil then
      Game.PreloadLibrary("Models/Physics/KeyHole/EntityDescriptor.lua", "KeyHole", false)
    end
    addSF(0, "", "MechanismLens_Gem.Init", entity.uData.Gema.Name)
    addSF(0, "", "CollectableItems.KnightSetKeys", "Gema")
    CollectableItems.KnightSetKeys2(entity)
  elseif entity.uData.EnergyType == "Combo" then
    CollectableItems.SetUpKnight(entity, "Combo")
  end
end

function CollectableItems.CanUseDeadKnight(char, useEnt)
  if char.Name == player.Name and player.oActCtrl:GetTrackInfo("SyncTgtActions") == nil then
    return 1
  else
    return 0
  end
end

KnightDark = {}
KnightDark.Tutorial = false

function CollectableItems.KnightSetKeys(Name)
  if Name == "GemaB" then
    MechanismLens_Gem.EndEffects("GemaB", "Blue")
  elseif Name == "GemaG" then
    MechanismLens_Gem.EndEffects("GemaG", "Green")
  end
end

function CollectableItems.KnightSetKeys2(entity)
  entity.bUseAngSel = false
  entity.bUseAbsAngSel = false
  entity.bUseMapCheck = false
  entity.UseFunc = "CollectableItems.KnightOnUse"
  if entity.uData.HasItem then
    entity.bArrowCanUse = true
  else
    entity.bArrowCanUse = false
  end
end

function CollectableItems.KnightOnUse(userEntity, containerEntity)
  if containerEntity.uData.MustBeRedeemed then
    userEntity.Ang = V3D(0, (userEntity.Pos - containerEntity.Pos):getrot().y, 0)
    userEntity.Action = userEntity.ExtraSufix .. "CrossOneSelf"
    userEntity.uData.RedeemedKnight = containerEntity
    return
  end
  if containerEntity.uData.EnergyType == "Key" then
    Key.OnUse(userEntity, containerEntity)
  elseif containerEntity.uData.EnergyType == "KeyA" then
    KeyA.OnUse(userEntity, containerEntity.uData.LLave)
  elseif containerEntity.uData.EnergyType == "KeyB" then
    KeyB.OnUse(userEntity, containerEntity)
  elseif containerEntity.uData.EnergyType == "KeyC" then
    KeyC.OnUse(userEntity, containerEntity.uData.LLave)
  elseif containerEntity.uData.EnergyType == "BlueGem" then
    MechanismLens_Gem.OnUse(userEntity, containerEntity.uData.Gema)
    MechanismLens_Gem.BeginEffects("GemaB", containerEntity.uData.Gema.uData.Color)
  elseif containerEntity.uData.EnergyType == "GreenGem" then
    MechanismLens_Gem.OnUse(userEntity, containerEntity.uData.Gema)
    MechanismLens_Gem.BeginEffects("GemaG", containerEntity.uData.Gema.uData.Color)
  end
  containerEntity.bArrowCanUse = false
end

function CollectableItems.EnsureTotalPieces(numberPieces)
  numberPieces = numberPieces or WeaponsCrystal.InitialUses
  local currentPieces = WeaponsCrystal.CrystalPieces.Value
  if numberPieces > currentPieces then
    local availablePieces = 0
    for _, generatorName in ipairs(CrystalContainer.MapContainerNames) do
      local generator = Game.GetEntity(generatorName)
      if generator.uData.HasItem then
        if generator.uData.RestoreFullCrystal then
          return
        else
          availablePieces = availablePieces + 1
        end
      end
    end
    if numberPieces <= availablePieces + currentPieces then
      return
    end
    local sortFunction = function(generatorName1, generatorName2)
      local distance1 = (Game.GetEntity(generatorName1).Pos - player.Pos):mod()
      local distance2 = (Game.GetEntity(generatorName2).Pos - player.Pos):mod()
      return distance1 > distance2
    end
    table.sort(CrystalContainer.MapContainerNames, sortFunction)
    local i = 1
    while i <= #CrystalContainer.MapContainerNames and numberPieces > availablePieces + currentPieces do
      local generator = Game.GetEntity(CrystalContainer.MapContainerNames[i])
      if not generator.uData.HasItem then
        CollectableItems.GenerateItem(CrystalContainer.MapContainerNames[i])
        if generator.uData.RestoreFullCrystal then
          availablePieces = availablePieces + WeaponsCrystal.InitialUses
        else
          availablePieces = availablePieces + 1
        end
      end
      i = i + 1
    end
  end
end

CollectableItems.MapFingerCount = 0

function CollectableItems.SetupFinger(finger)
  CollectableItems.MapFingerCount = CollectableItems.MapFingerCount + 1
  finger.uData.GlobalIndex = CollectableItems.MapFingerCount
  local levelName = init.LevelName:lower():match("level%.(.+)")
  local PrevLevFingers = 0
  for levelIndex, levelFingersInfo in ipairs(WorldMap.LevelsFingerCount) do
    if levelFingersInfo[1] == levelName then
      if finger.uData.GlobalIndex > levelFingersInfo[2] + PrevLevFingers then
        Game.ConsoleError("Finger '" .. finger.Name .. "' out of index\n")
        finger.uData.GlobalIndex = nil
      end
      break
    else
      PrevLevFingers = PrevLevFingers + levelFingersInfo[2]
      finger.uData.GlobalIndex = finger.uData.GlobalIndex + levelFingersInfo[2]
    end
  end
  if finger.uData.GlobalIndex == nil or WorldMap.IsFingerCollected(finger.uData.GlobalIndex) then
    finger.bActive = false
  else
    DLC_RelicFinger.InitEffect()
    DLC_RelicFinger.FXGlowOn(finger.Name)
    Hook.ObjectUse_SetUp(finger)
    finger.bUseAngSel = false
    finger.bUseAbsAngSel = false
    finger.bUseMapCheck = false
    finger.UseFunc = "CollectableItems.PickFinger"
    finger.ArrRadius = 100
    finger.ArrPriority = 3
    finger.bArrowCanUse = true
    CollectableItems.MovePos(finger.Name)
  end
end

function CollectableItems.PickFinger(user, finger)
  if user.isFalling == 1 or user.SelectedEntity ~= "" then
    return
  end
  user.Action = user.ExtraSufix .. "TakeFinger"
  if nil == user.Action:find("TakeFinger") then
    return
  end
  finger.bArrowCanUse = false
  user.SelectedEntity = finger.Name
  finger.LinkModel = user.Name .. ",OB_Gabriel_Daga"
  finger.DeltaOffMul = 2
  finger.UseLinkPos = 1
  finger.UseModelAlign = 0
  finger.UseLinkAng = 1
  WorldMap.SetFingerCollected(finger.uData.GlobalIndex)
end

function CollectableItems.OnFingerPicked(userName)
  local user = Game.GetEntity(userName)
  local finger = Game.GetEntity(user.SelectedEntity)
  if finger then
    user.SelectedEntity = ""
    finger:Del()
  else
    Game.ConsoleError("CollectableItems.OnFingerPicked: Not selected entity\n")
  end
end

function CollectableItems.UnlockGemsAchievements(Name)
  if Name == "DarkGems" and CollectableItems.GetNumGems(Name) == SaveGame.gemsAchievementValue[1] then
    Game.WriteAchievement(SaveGame.gemsAchievementIndex[1])
    print("CHAPTER GEMS DARK ACHIEVEMENT UNLOCKED")
  end
  if Name == "LightGems" and CollectableItems.GetNumGems(Name) == SaveGame.gemsAchievementValue[2] then
    Game.WriteAchievement(SaveGame.gemsAchievementIndex[2])
    print("CHAPTER GEMS LIGHT ACHIEVEMENT UNLOCKED")
  end
  if Name == "LifeGems" and CollectableItems.GetNumGems(Name) == SaveGame.gemsAchievementValue[3] then
    Game.WriteAchievement(SaveGame.gemsAchievementIndex[3])
    print("CHAPTER GEMS GREEN ACHIEVEMENT UNLOCKED")
  end
  CollectableItems.CheckAllGems()
end

function CollectableItems.CheckAllGems()
  local darkGems = CollectableItems.GetNumGems("DarkGems")
  local lightGems = CollectableItems.GetNumGems("LightGems")
  local lifeGems = CollectableItems.GetNumGems("LifeGems")
  local totalGems = darkGems + lightGems + lifeGems
  if totalGems >= SaveGame.gemsAchievementValue[4] then
    Game.WriteAchievement(SaveGame.gemsAchievementIndex[4])
    print("ALL GEMS ACHIEVEMENT UNLOCKED")
  end
end

function CollectableItems.UnlockUpgradeAchievements()
  local vialUpgrades = CollectableItems.GetNumGems("VialUpgrades")
  local daggerUpgrades = CollectableItems.GetNumGems("DaggerUpgrades")
  local fairyUpgrades = CollectableItems.GetNumGems("FairyUpgrades")
  local totalUpgrades = vialUpgrades + daggerUpgrades + fairyUpgrades
  if totalUpgrades >= SaveGame.upgradesAchievementValue then
    Game.WriteAchievement(SaveGame.upgradesAchievementIndex)
    print("ALL UPGRADES ACHIEVEMENT UNLOCKED")
  end
end

function CollectableItems.GiveAllGems()
  local v = string.rep("X", 30)
  CollectableItems.gvLifeGems.Value = v
  CollectableItems.gvLightGems.Value = v
  CollectableItems.gvDarkGems.Value = v
  Game.Set("gvLifeGems", v)
  Game.Set("gvLightGems", v)
  Game.Set("gvDarkGems", v)
  CollectableItems.SetUpData()
end

function CollectableItems.GiveAllUpgrades()
  local v = string.rep("X", 30)
  CollectableItems.gvVialUpgrades.Value = v
  CollectableItems.gvDaggerUpgrades.Value = v
  CollectableItems.gvFairyUpgrades.Value = v
  Game.Set("gvVialUpgrades", v)
  Game.Set("gvDaggerUpgrades", v)
  Game.Set("gvFairyUpgrades", v)
  CollectableItems.SetUpData()
  WeaponsFairy.SetMaxFaires()
  WeaponsVial.IncrementVials("Belmont")
  WeaponsDagger.Inc("Belmont")
  WeaponsCrystal.Inc("Belmont")
end
