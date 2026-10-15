TeamTalk.UseNames = Game.GVar("UseNamesOnSubtitles")
TeamTalk.VoiceDelay = 0.4

function TeamTalk.main()
  TeamTalk.RanCtr = 0
  TeamTalk.VoiceCallbacks = {}
  TeamTalk.TalkStamp = 0
  TeamTalk.TimeShuttedUpForIdle = 20
  TeamTalk.IdleMinTime = 30
  TeamTalk.IdleMaxTime = 60
  TeamTalk.ImpatientTime = 120
  TeamTalk.LastArea = ""
  TeamTalk.TimeStampNoEnemy = 0
  TeamTalk.TimeStampEnemySpotted = 0
  TeamTalk.TimeStampEnemyAttacking = 0
  TeamTalk.TimeStampReload = 0
  TeamTalk.TimeStampMissileIncomming = 0
  TeamTalk.TimeStampHeavyFire = 0
  TeamTalk.TimeStampMinigun = 0
end

function TeamTalk.isTalking()
  if Game.IsPlayingWithoutHUD() then
    return false
  end
  return TeamTalk.EndTalkFunc ~= nil or Game.Get("RemainTalkTime") > 0.25
end

function TeamTalk.GetRandString(voice)
  local nlang = Game.GetNumberOfLangStr(voice)
  local voiceString
  if nlang <= 0 then
    if TeamTalk.IsValidVoice(voice) then
      return voice
    end
  else
    local firstChar, lineTone
    local index = math.random(nlang + 1) - 1
    firstChar, _, lineTone = string.find(Game.GetLangStr(voice .. math.floor(index)), "(%d+)>")
    if firstChar ~= 1 then
      for i = 0, nlang do
        if TeamTalk.IsValidVoice(voice .. math.floor((index + i) % (nlang + 1))) then
          index = (index + i) % (nlang + 1)
          break
        end
      end
      return voice .. math.floor(index)
    else
      local situationTone = TeamTalk.GetTone()
      if math.floor(lineTone) == situationTone and TeamTalk.IsValidVoice(voice .. math.floor(index)) then
        return voice .. math.floor(index)
      else
        matchingVoice = TeamTalk.GetStringMatchingTone(situationTone, voice, index, nlang)
        if matchingVoice then
          return matchingVoice
        else
          if situationTone == 0 then
            situationTone = 1
          elseif situationTone == 1 then
            situationTone = 0
          else
            situationTone = 1
          end
          matchingVoice = TeamTalk.GetStringMatchingTone(1, voice, index, nlang)
          if matchingVoice then
            return matchingVoice
          else
            return nil
          end
        end
      end
    end
  end
end

function TeamTalk.GetStringMatchingTone(situationTone, voice, index, nlang)
  for i = 0, nlang do
    local firstChar, lineTone
    firstChar, _, lineTone = string.find(Game.GetLangStr(voice .. math.floor((index + i) % (nlang + 1))), "(%d+)>")
    local tone = 1
    if lineTone then
      tone = math.floor(lineTone)
    end
    if tone == situationTone and TeamTalk.IsValidVoice(voice .. math.floor((index + i) % (nlang + 1))) then
      return voice .. math.floor((index + i) % (nlang + 1))
    end
  end
  return nil
end

function TeamTalk.IsValidVoice(voice)
  if TeamTalk.LastTalk == voice and TeamTalk.TalkStamp + 15 > Game.GetTime() then
    return false
  end
  if not TeamTalk.VoiceConditions[voice] then
    return true
  elseif TeamTalk.VoiceConditions[voice]() then
    return true
  else
    return false
  end
end

function TeamTalk.GetTone()
  if AISquad.UnderAttack() then
    if TeamTalk.MapToneList[string.lower(string.sub(init.LevelName, 7))] then
      return TeamTalk.MapToneList[string.lower(string.sub(init.LevelName, 7))][3]
    else
      return 2
    end
  elseif AISquad.UnderAlert() then
    if TeamTalk.MapToneList[string.lower(string.sub(init.LevelName, 7))] then
      return TeamTalk.MapToneList[string.lower(string.sub(init.LevelName, 7))][1]
    else
      return 0
    end
  elseif TeamTalk.MapToneList[string.lower(string.sub(init.LevelName, 7))] then
    return TeamTalk.MapToneList[string.lower(string.sub(init.LevelName, 7))][2]
  else
    return 1
  end
end

function TeamTalk.IsValidPlayer(Name, includePlayer)
  local n = Game.GetEntity(Name)
  local damageScorer = Scorer.GetItem(0, "Damage")
  if damageScorer and damageScorer:IsHeavyBreathing() == 1 then
    includePlayer = false
  end
  return n ~= nil and 0 < n.Life and (n.UsrControl == -1 or includePlayer)
end

function TeamTalk.IsValidPlayerChoose(Name, includePlayer)
  local n = Game.GetEntity(Name)
  return TeamTalk.IsValidPlayer(Name, includePlayer) and n.bActive
end

function TeamTalk.GetRndTeamMember(Name, includePlayer, avoidInHelpers)
  local tm = Team.Data[Name]
  if tm then
    local a = {}
    for i in pairs(tm) do
      local ent = Game.GetEntity(i)
      if TeamTalk.IsValidPlayerChoose(i, includePlayer) and (not avoidInHelpers or ent and ent.oAI and not ent.oAI.bInHelper) then
        table.insert(a, i)
      end
    end
    if 0 < #a then
      return TeamTalk.ChooseOne(a)
    end
  end
end

function TeamTalk.GetRndMember(includePlayer)
  local a = {}
  for Name in pairs(Team.Data) do
    local tm = Team.Data[Name]
    if tm then
      for i in pairs(tm) do
        if TeamTalk.IsValidPlayerChoose(i, includePlayer) then
          table.insert(a, i)
        end
      end
    end
  end
  if Team.DataOthers then
    for i, Name in pairs(Team.DataOthers) do
      table.insert(a, Name)
    end
  end
  if 0 < #a then
    return TeamTalk.ChooseOne(a)
  end
end

function TeamTalk.RadioTalkFromTableDelayed(TextTable, Prefix, min, max, RetryTime)
  local rnd = math.random(#TextTable)
  Game.AddScheduledFunc(Game.GetTime() + Game.Rand(min, max), "RadioTalk", "TeamTalk.RadioTalk", TextTable[rnd][1], TextTable[rnd][2], Prefix, "", RetryTime)
end

function TeamTalk.RadioTalkFromTable(TextTable, Prefix)
  local rnd = math.random(#TextTable)
  TeamTalk.RadioTalk(TextTable[rnd][1], TextTable[rnd][2], Prefix)
end

function TeamTalk.RadioTalkDelayed(Player, Text, Prefix, ForceNumber, min, max, RetryTime)
  Game.AddScheduledFunc(Game.GetTime() + Game.Rand(min, max), Text, "TeamTalk.RadioTalk", Player, Text, Prefix, ForceNumber, RetryTime)
end

function TeamTalk.RadioTalk(Player, Text, Prefix, ForceNumber, RetryTime)
  if not Player then
    return false
  end
  Prefix = defparam(Prefix, "Talk")
  local ent = Game.GetEntity(Player)
  local unavailable = false
  local DamageScorer = Scorer.GetItem(0, "Damage")
  if ent and (0 >= ent.Life or ent.uData.CannotSpeak or Game.UsrEntity(0) and Player == Game.UsrEntity(0).Name and DamageScorer and DamageScorer:IsHeavyBreathing() == 1) then
    unavailable = true
  end
  if not TeamTalk.isTalking() and not unavailable then
    return TeamTalk.ForceRadioTalk(Player, Text, Prefix, ForceNumber)
  elseif RetryTime and 0 < RetryTime then
    Game.AddScheduledFunc(Game.GetTime() + 1, "RetryRadioTalk", "TeamTalk.RadioTalk", Player, Text, Prefix, ForceNumber, RetryTime - 1)
  end
  return false
end

function TeamTalk.SayCategoryMember(Player, Text, Prefix, ForceNumber, RetryTime)
  if AISquad.UnderCaution() then
    return TeamTalk.RadioTalk(Player, Text, Prefix, ForceNumber, RetryTime)
  end
  return false
end

TeamTalk.NonFilterDist = 20

function TeamTalk.isFiltered(charname)
  local char = TeamTalk.GetFacialAlias(charname)
  local usr = Game.UsrEntity(0)
  if charname == "Ross" then
    return char == nil
  end
  if char and usr then
    return (char.Pos - usr.Pos):mod() > TeamTalk.NonFilterDist
  else
    return false
  end
end

function TeamTalk.ForceRadioTalk(Player, Text, Prefix, ForceNumber)
  Prefix = defparam(Prefix, "Talk")
  if Player ~= nil and not TeamTalk.StopRadioTalk then
    Player = TeamTalk.ChooseOne(Player)
    if not ForceNumber then
      Text = TeamTalk.ChooseOne(Text)
    else
      Text = Text .. ForceNumber
    end
    text = TeamTalk.GetRandString(Prefix .. "_" .. Player .. "_" .. Text)
    if text then
      local lineTone
      local langStr = Game.GetLangStr(text)
      _, _, lineTone = string.find(langStr, "(%d+)>")
      if langStr == "" then
        print("GetLangStr " .. text .. " returned empty string")
        return false
      end
      local trascadeno = string.gsub(langStr, "(%d+)>", "", 1)
      local usr = Game.UsrEntity(0)
      if usr and Player == usr.Name then
        local DamageScorer = Scorer.GetItem(0, "Damage")
        if DamageScorer then
          DamageScorer:StopBreathing()
        end
      end
      local TalkName = ""
      if TeamTalk.UseNames.Value then
        TalkName = Game.GetLangStr(Player) .. ": "
      end
      TeamTalk.GenericTalk(TalkName .. trascadeno, text, TeamTalk.isFiltered(Player), trascadeno ~= ".")
      TeamTalk.StartTalkingLips(Player)
      TeamTalk.LastTalk = text
      return true
    else
      print(Prefix .. "_" .. Player .. "_" .. Text .. " no se pudo lanzar por no se v\225lida en este momento\n")
    end
  end
  return false
end

function TeamTalk.VoicesDir()
  return Game.Get("VoicePath") .. "English/"
end

function TeamTalk.VoiceString(code)
  local lngs = Game.GetLangStr(code)
  if lngs == "" then
    return "Not found <" .. code .. ">"
  end
  local is = string.find(lngs, ">")
  local subs = string.sub(lngs, is + 1)
  if subs == "." then
    return "."
  else
    local TalkName = ""
    if TeamTalk.UseNames.Value then
      TalkName = Game.GetLangStr(string.sub(lngs, 1, is - 1)) .. ": "
    end
    return TalkName .. subs
  end
end

function TeamTalk.NextSubtitleEvent(EntityName, EventName, Time)
  TeamTalk.Subtitle(EventName)
end

function TeamTalk.Subtitle(LanguageKey)
  local RemainTalkTime = Game.Get("RemainTalkTime")
  local FullTalkTime = Game.Get("FullTalkTime")
  if 0.1 < RemainTalkTime then
    Scorer.SetSpeechText(TeamTalk.VoiceString(LanguageKey), RemainTalkTime)
    Game.Set("RemainTalkTime", RemainTalkTime)
    Game.Set("FullTalkTime", FullTalkTime)
  end
end

function TeamTalk.GenericTalk(Text, voice, filtered, show_it)
  filtered = defparam(filtered, false)
  show_it = defparam(show_it, true)
  if TeamTalk.VoiceCallbacks[voice] then
    TeamTalk.VoiceCallbacks[voice](voice)
  end
  local filename = TeamTalk.VoicesDir() .. voice .. ".ogg"
  if filtered then
    local newfilename = TeamTalk.VoicesDir() .. voice .. "_.ogg"
    if Game.FileExist(newfilename) then
      filename = newfilename
    else
    end
  end
  Sound.OpenVoice(filename, 2)
  Game.AddScheduledFunc(Game.GetTime() + TeamTalk.VoiceDelay, "TeamTalk.PlayVoice", "TeamTalk.PlayVoice", 2, 1)
  if show_it then
    Scorer.SetSpeechText(Text, 3 + TeamTalk.VoiceDelay * 4)
  else
    Scorer.SetSpeechText(".", 3 + TeamTalk.VoiceDelay * 4)
  end
  TeamTalk.EndTalkFunc = nil
  TeamTalk.EndTalkParam = nil
end

function TeamTalk.AbortInGameVoice()
  if Game.ExistsScheduledFunc("TeamTalk.PlayVoice") or Game.ExistsScheduledFunc("TeamTalk.OnEndTalk") then
    Game.DeleteScheduledFuncs("TeamTalk.PlayVoice")
    Game.DeleteScheduledFuncs("TeamTalk.OnEndTalk")
    Sound.StopVoice(2)
    Game.Set("RemainTalkTime", 0)
    TeamTalk.OnEndTalk()
  end
end

function TeamTalk.PlayVoice(chan, vol)
  if Sound.VoiceIsReady(chan) then
    Sound.SetVoiceVolume(chan, vol)
    Sound.PlayVoice(chan)
    local Time = Sound.VoiceRemain(chan, 3)
    Game.Set("RemainTalkTime", Time)
    Game.Set("FullTalkTime", Time)
    Game.DeleteScheduledFuncs("TeamTalk.OnEndTalk")
    Game.AddScheduledFunc(Game.GetTime() + Time, "TeamTalk.OnEndTalk", "TeamTalk.OnEndTalk")
  else
    Game.AddScheduledFunc(Game.GetTime() + 0.1, "TeamTalk.PlayVoice", "TeamTalk.PlayVoice", chan, vol)
    Game.Set("RemainTalkTime", Game.Get("RemainTalkTime") + 0.15)
  end
end

function TeamTalk.OnEndTalk()
  TeamTalk.EndTalkingLips()
  TeamTalk.TalkStamp = Game.GetTime()
  local DamageScorer = Scorer.GetItem(0, "Damage")
  if DamageScorer then
    DamageScorer:StartBreathing()
  end
  if TeamTalk.EndTalkFunc ~= nil then
    local temp = TeamTalk.EndTalkFunc
    local temparam = TeamTalk.EndTalkParam
    TeamTalk.EndTalkFunc = nil
    TeamTalk.EndTalkParam = nil
    temp(temparam)
  end
end

function TeamTalk.ChooseOne(a)
  if type(a) == "string" then
    return a
  elseif type(a) == "table" and 0 < #a then
    return a[math.floor(Game.Rand(1, #a + 0.9))]
  end
  return nil
end

function TeamTalk.OneToAll(Guy, Order, Response)
  if TeamTalk.RadioTalk(Guy, Order) then
    TeamTalk.EndTalkFunc = TeamTalk.UsrOrderConfirmAll
    TeamTalk.EndTalkParam = Response
  end
end

function TeamTalk.UsrOrdersAll(Order, Response)
  TeamTalk.OneToAll("Ross", Order, Response)
end

function TeamTalk.UsrOrderConfirmAll(param, includePlayer)
  local member = TeamTalk.GetRndMember(includePlayer)
  TeamTalk.RadioTalk(member, param)
  return member ~= nil
end

function TeamTalk.SayCategoryAll(param)
  local member
  if AISquad.UnderCaution() then
    member = TeamTalk.GetRndMember()
    TeamTalk.RadioTalk(member, param)
  end
  return member ~= nil
end

function TeamTalk.UsrOrdersToTeam(sn, Order, Response)
  TeamTalk["UsrOrders" .. sn]("Order" .. sn .. Order, Response)
end

function TeamTalk.TeamSay(sn, SayText)
  TeamTalk["UsrOrderConfirm" .. sn](SayText)
end

function TeamTalk.UsrOrdersAlpha(Order, Response)
  if TeamTalk.RadioTalk("Ross", Order) then
    if Order == "OrderAlphaGo" or Order == "OrderAlphaGoC" then
      TeamTalk.EndTalkFunc = TeamTalk.UsrOrderConfirmAlphaMovingOnes
    else
      TeamTalk.EndTalkFunc = TeamTalk.UsrOrderConfirmAlpha
    end
    TeamTalk.EndTalkParam = Response
  end
end

function TeamTalk.UsrOrderConfirmAlpha(param)
  local member = TeamTalk.GetRndTeamMember("Alpha")
  TeamTalk.RadioTalk(member, param)
  return member ~= nil
end

function TeamTalk.UsrOrderConfirmAlphaMovingOnes(param)
  local member = TeamTalk.GetRndTeamMember("Alpha", false, true)
  TeamTalk.RadioTalk(member, param)
  return member ~= nil
end

function TeamTalk.UsrOrdersOmega(Order, Response)
  if TeamTalk.RadioTalk("Ross", Order) then
    if Order == "OrderOmegaGo" or Order == "OrderOmegaGoC" then
      TeamTalk.EndTalkFunc = TeamTalk.UsrOrderConfirmOmegaMovingOnes
    else
      TeamTalk.EndTalkFunc = TeamTalk.UsrOrderConfirmOmega
    end
    TeamTalk.EndTalkParam = Response
  end
end

function TeamTalk.UsrOrderConfirmOmega(param)
  local member = TeamTalk.GetRndTeamMember("Omega")
  TeamTalk.RadioTalk(member, param)
  return member ~= nil
end

function TeamTalk.UsrOrderConfirmOmegaMovingOnes(param)
  local member = TeamTalk.GetRndTeamMember("Omega", false, true)
  TeamTalk.RadioTalk(member, param)
  return member ~= nil
end

function TeamTalk.UsrOrderConfirmMain(param)
  local member = TeamTalk.GetRndTeamMember(Team.AreaManager.MainName)
  TeamTalk.RadioTalk(member, param)
  return member ~= nil
end

function TeamTalk.UsrOrderConfirmSecond(param)
  local member = TeamTalk.GetRndTeamMember(Team.AreaManager.SideName)
  TeamTalk.RadioTalk(member, param)
  return member ~= nil
end

function TeamTalk.IsValidChatPlayer(Name)
  local n = Game.GetEntity(Name)
  return n == nil or n.Life > 0
end

function TeamTalk.TryRadioChat(TextMain, TextSecond, CharacterType, FailFunc, FailParam, SecondsToWin)
  TeamTalk.RadioChatInfo = {
    TextMain,
    TextSecond,
    CharacterType,
    FailFunc,
    FailParam,
    SecondsToWin
  }
  TeamTalk.TryRadioChatCounter = SecondsToWin
  TeamTalk.TryRadioChatCall()
end

function TeamTalk.TryRadioChatCall()
  local TextMain = TeamTalk.RadioChatInfo[1]
  local TextSecond = TeamTalk.RadioChatInfo[2]
  local CharacterType = TeamTalk.RadioChatInfo[3]
  local FailFunc = TeamTalk.RadioChatInfo[4]
  local FailParam = TeamTalk.RadioChatInfo[5]
  local SecondsToWin = TeamTalk.RadioChatInfo[6]
  Game.DeleteScheduledFuncs("TryRadioChatCall")
  if FailFunc(FailParam) then
    local bdoit = true
    bdoit = bdoit and Team.TeamAlive()
    local usr = Game.UsrEntity(0)
    bdoit = bdoit and usr ~= nil
    if bdoit then
      TeamTalk.TryRadioChatCounter = TeamTalk.TryRadioChatCounter - 1
      if 0 >= TeamTalk.TryRadioChatCounter then
        if usr.ActCtrl == CharacterType then
          TeamTalk.InitRadioChat(TextMain)
        else
          TeamTalk.InitRadioChat(TextSecond)
        end
        return
      end
    else
      TeamTalk.TryRadioChatCounter = SecondsToWin
    end
    Game.AddScheduledFunc(Game.GetTime() + 1, "TryRadioChatCall", "TeamTalk.TryRadioChatCall")
  end
end

function TeamTalk.InitRadioChat(TextMain)
  local n = Game.GetNumberOfLangStr(TextMain)
  TeamTalk.ChatData = {}
  if n == -1 or TeamTalk.isTalking() then
    return false
  end
  for i = 0, n do
    local code = TextMain .. i
    local lngs = Game.GetLangStr(code)
    local is = string.find(lngs, ">")
    TeamTalk.ChatData[i + 1] = {
      code,
      string.sub(lngs, 1, is - 1),
      string.sub(lngs, is + 1)
    }
    if not TeamTalk.IsValidChatPlayer(TeamTalk.ChatData[i + 1][2]) then
      TeamTalk.ChatData = nil
      return false
    end
  end
  TeamTalk.iChatData = 1
  TeamTalk.NextChat()
  return true
end

function TeamTalk.NextChat()
  if TeamTalk.ChatData == nil then
    return
  end
  local a = TeamTalk.ChatData[TeamTalk.iChatData]
  if a == nil or not TeamTalk.IsValidChatPlayer(a[2]) then
    TeamTalk.ChatData = nil
    TeamTalk.iChatData = nil
    if TeamTalk.EndOfSpeechCallback then
      TeamTalk.EndOfSpeechCallback()
    end
    return false
  end
  if not TeamTalk.isTalking() then
    TeamTalk.iChatData = TeamTalk.iChatData + 1
    local TalkName = ""
    if TeamTalk.UseNames.Value then
      TalkName = Game.GetLangStr(a[2]) .. ": "
    end
    TeamTalk.GenericTalk(TalkName .. a[3], a[1], TeamTalk.isFiltered(a[2]), a[3] ~= ".")
    TeamTalk.StartTalkingLips(a[2])
    TeamTalk.EndTalkFunc = TeamTalk.NextChat
    TeamTalk.EndTalkParam = nil
    return true
  else
    Game.AddScheduledFunc(Game.GetTime() + 1, "TeamTalk_NextChat", "TeamTalk.NextChat")
    return true
  end
end

function TeamTalk.PlaySingleChat(Text)
  local code = Text
  local lngs = Game.GetLangStr(code)
  if lngs == "" then
    TeamTalk.ChatData = {}
    TeamTalk.ChatData[1] = {
      code,
      "Language",
      "Not found <" .. code .. ">"
    }
  else
    local is = string.find(lngs, ">")
    TeamTalk.ChatData = {}
    TeamTalk.ChatData[1] = {
      code,
      string.sub(lngs, 1, is - 1),
      string.sub(lngs, is + 1)
    }
  end
  if not TeamTalk.IsValidChatPlayer(TeamTalk.ChatData[1][2]) then
    TeamTalk.ChatData = nil
    return false
  end
  TeamTalk.iChatData = 1
  TeamTalk.NextChat()
  return true
end

function TeamTalk.PlayChat(textList)
  if #textList == 0 or TeamTalk.isTalking() then
    return false
  end
  TeamTalk.ChatData = {}
  for i, code in pairs(textList) do
    local lngs = Game.GetLangStr(code)
    local is = string.find(lngs, ">")
    TeamTalk.ChatData[i] = {
      code,
      string.sub(lngs, 1, is - 1),
      string.sub(lngs, is + 1)
    }
    if not TeamTalk.IsValidChatPlayer(TeamTalk.ChatData[i][2]) then
      TeamTalk.ChatData = nil
      return false
    end
  end
  TeamTalk.iChatData = 1
  TeamTalk.NextChat()
  return true
end

function TeamTalk.TiggerUsed(objName)
  return Game.GetEntity(objName).bArrowCanUse
end

TeamTalk.IncidentalSpeach = false
TeamTalk.IncidentalTextMain = ""
TeamTalk.HoldFire = true

function TeamTalk.InitIncidentalChat(TextMain, Callback, HoldFire)
  if TeamTalk.IncidentalSpeach then
    return false
  end
  TeamTalk.HoldFire = defparam(HoldFire, true)
  TeamTalk.IncidentalTextMain = TextMain
  TeamTalk.EndOfIncidentalChatCallback = Callback
  TeamTalk.IncidentalSpeach = true
  if TeamTalk.HoldFire then
    Game.Set("DoingStopChat", 1)
    Team.ReviveAllCallback = TeamTalk.InitIncidentalChatStart
    Team.ReviveAll()
  else
    TeamTalk.InitIncidentalChatStart()
  end
end

function TeamTalk.InitIncidentalChatStart()
  TeamTalk.TryIncidentalChat(TeamTalk.IncidentalTextMain)
end

function TeamTalk.TryIncidentalChat(TextMain)
  Game.DeleteScheduledFuncs("TryIncidentalChat")
  if TeamTalk.InitRadioChat(TextMain) then
    local cole = Game.GetEntity("Cole")
    if cole and cole.uData.LoopActive then
      Cole.SwitchPower("0FP_Cole")
    end
    TeamTalk.EndOfSpeechCallback = TeamTalk.EndOfIncidentalChat
  elseif Game.Get("DoingStopChat") == 0 then
    Game.AddScheduledFunc(Game.GetTime() + 1, "TryIncidentalChat", "TeamTalk.TryIncidentalChat", TextMain)
  else
    TeamTalk.TextMainAfterReviveAll = TextMain
    Team.ReviveAllCallback = TeamTalk.TryIncidentalChatAfterReviveAll
    Team.ReviveAll()
  end
end

function TeamTalk.TryIncidentalChatAfterReviveAll()
  Game.AddScheduledFunc(Game.GetTime() + 1, "TryIncidentalChat", "TeamTalk.TryIncidentalChat", TeamTalk.TextMainAfterReviveAll)
end

function TeamTalk.EndOfIncidentalChat(estopvoic)
  estopvoic = defparam(estopvoic, false)
  if TeamTalk.IncidentalSpeach then
    Game.DeleteScheduledFuncs("TryIncidentalChat")
    Game.DeleteScheduledFuncs("TeamTalk_NextChat")
    TeamTalk.IncidentalSpeach = false
    Game.Set("DoingStopChat", 0)
    if estopvoic then
      Sound.StopVoice(2)
      Game.Set("RemainTalkTime", 0.1)
      Game.Set("FullTalkTime", 0.1)
    end
    TeamTalk.EndTalkFunc = nil
    TeamTalk.EndTalkParam = nil
    if TeamTalk.EndOfIncidentalChatCallback then
      local funki = TeamTalk.EndOfIncidentalChatCallback
      TeamTalk.EndOfIncidentalChatCallback = nil
      funki()
    end
  end
end

TeamTalk.IncidentalBlocker = nil

function TeamTalk.BlockIncidentalChat(TextMain, Blocker1, HoldFire)
  TeamTalk.InitIncidentalChat(TextMain, TeamTalk.UnBlockIncidentalChat, HoldFire)
  TeamTalk.IncidentalBlocker = Game.GetEntity(Blocker1)
end

function TeamTalk.UnBlockIncidentalChat()
  TeamTalk.IncidentalBlocker.bMapCollision = false
  TeamTalk.IncidentalBlocker = nil
end

TeamTalk.FacialAlias = {
  Gabriel = {"Belmont"},
  Elite_Vampire = {"Enemy", "Enemy3"},
  Lycan_DarkLord = {"Enemy", "Enemy10"},
  Vampire_Queen = {"Enemy", "Enemy4"},
  Silver_Warrior = {"Enemy"},
  Chupacabra = {
    "Enemy44",
    "Enemy267",
    "Enemy2",
    "Enemy4",
    "Enemy"
  },
  Laura = {
    "Laura",
    "LauraPlayer"
  }
}

function TeamTalk.GetFacialAlias(name)
  if TeamTalk.FacialAlias[name] then
    local a = TeamTalk.FacialAlias[name]
    for i = 1, #a do
      local e = Game.GetEntity(a[i])
      if e and (e.bActive or #a == 1) then
        return e
      end
    end
  else
    return Game.GetEntity(name)
  end
end

function TeamTalk.StartTalkingLips(charname)
  TeamTalk.EndTalkingLips()
  local char = TeamTalk.GetFacialAlias(charname)
  if char then
    char.Action = "Facial_Talk"
    char.TimeToExtraRelax = 30
    TeamTalk.TalkingLips = char
    Sound.SetVoiceString(2, char.Name)
  end
end

function TeamTalk.EndTalkingLips()
  if TeamTalk.TalkingLips then
    local char = TeamTalk.TalkingLips
    if char.oActCtrl.oActClass:GetAct("Facial_Relax") then
      char.Action = "Facial_Relax"
    else
      char.oActCtrl.StopSecondary = 1
    end
    TeamTalk.TalkingLips = nil
    Sound.SetVoiceString(2, "")
  end
end

function TeamTalk.SchChat()
  if not TeamTalk.isTalking() and Game.GetTime() > TeamTalk.TalkStamp + TeamTalk.TimeShuttedUpForIdle and AISquad.UnderCaution() and not TeamTalk.SuspendIncidentalTalking then
    TeamTalk.IdleChat()
  end
  if TeamTalk.LastArea ~= Game.GetAreaManager().Actual then
    TeamTalk.StoppedTimeStamp = Game.GetTime()
  end
  TeamTalk.LastArea = Game.GetAreaManager().Actual
  Game.AddScheduledFunc(Game.GetTime() + Game.Rand(TeamTalk.IdleMinTime, TeamTalk.IdleMaxTime), "SchChat", "TeamTalk.SchChat")
end

function TeamTalk.IdleChat()
  if Game.Get("toolmode") == 0 and not AreaTriggers.SoloMision then
    if Team.isMainHold() and Team.isSecondHold() then
      TeamTalk.UsrOrderConfirmAll("Stop")
    elseif Team.isMainHold() then
      TeamTalk.UsrOrderConfirmMain("Stop")
    elseif Team.isSecondHold() then
      TeamTalk.UsrOrderConfirmSecond("Stop")
    elseif TeamTalk.StoppedTimeStamp and TeamTalk.StoppedTimeStamp + TeamTalk.ImpatientTime < Game.GetTime() then
      TeamTalk.UsrOrderConfirmAll("Idle_Impatient")
    else
      local listIdles = TeamTalk.MapIdlesList[string.lower(string.sub(init.LevelName, 7))]
      if listIdles then
        local rand = math.random(#listIdles)
        TeamTalk.UsrOrderConfirmAll(listIdles[rand])
      else
        TeamTalk.UsrOrderConfirmAll("Idle")
      end
    end
  end
end

function TeamTalk.TalkNoEnemy()
  Game.DeleteScheduledFuncs("Under_Heavy_Fire")
  if TeamTalk.TimeStampNoEnemy + 30 < Game.GetTime() and not AreaTriggers.SoloMision and not TeamTalk.SuspendIncidentalTalking then
    if AISquadTeam.LastViewer then
      TeamTalk.RadioTalk(AISquadTeam.LastViewer.Name, "NoEnemy")
    else
      TeamTalk.UsrOrderConfirmAll("NoEnemy")
    end
  end
  TeamTalk.TimeStampNoEnemy = Game.GetTime()
end

function TeamTalk.EnemySpotted()
  Game.DeleteScheduledFuncs("TalkNoEnemy")
  if TeamTalk.TimeStampEnemySpotted + 10 < Game.GetTime() and not TeamTalk.SuspendIncidentalTalking then
    if AISquadTeam.ViewedTarget and AISquadTeam.Viewer then
      TeamTalk.TimeStampEnemySpotted = Game.GetTime()
      local enemyType = AISquadTeam.ViewedTarget.ActCtrl
      if enemyType == "PsichicCommander" then
        return
      end
      if enemyType == "SummerianENLIL" or enemyType == "SummerianINANNA" or string.sub(enemyType, 1, 5) == "Wheel" then
        if AISquadTeam.Viewer.Name == "Black" then
          TeamTalk.RadioTalk("Black", "Spot_Unusual_Feature1")
        elseif AISquadTeam.Viewer.Name == "Jones" then
          TeamTalk.RadioTalk("Jones", "Spot_Unusual_Feature2")
        elseif AISquadTeam.Viewer.Name == "Delgado" then
          TeamTalk.RadioTalk("Delgado", "Spot_Unusual_Feature0")
        elseif AISquadTeam.Viewer.Name == "Rawlings" then
          TeamTalk.RadioTalk("Rawlings", "Arcane_Features0")
        end
        return
      end
      if enemyType == "BlindBehemoth" then
        return
      end
      if enemyType == "Behemoth" then
        return
      end
      if enemyType == "Gladiador" or enemyType == "Vicus" then
        TeamTalk.RadioTalk("Delgado", "Dark_Area2")
        return
      end
      if enemyType == "GhostChildCruzader" then
        return
      end
      local distance = (AISquadTeam.ViewedTarget.Pos - AISquadTeam.Viewer.Pos):mod()
      if 3000 < distance then
        if EBlack and EBlack.bActive and EBlack.Life > 0 then
          TeamTalk.RadioTalk(AISquadTeam.Viewer.Name, "View_EnemyFar")
        end
      else
        TeamTalk.RadioTalk(AISquadTeam.Viewer.Name, "View_Enemy")
      end
    else
      print("EnemySpotted no viewer or target")
    end
  end
end

function TeamTalk.MissileIncomming(EntityName)
  local DamageScorer = Scorer.GetItem(0, "Damage")
  if EntityName == Game.UsrEntity(0).Name and DamageScorer and DamageScorer:IsHeavyBreathing() == 1 then
    return
  end
  if TeamTalk.TimeStampMissileIncomming + 10 < Game.GetTime() then
    TeamTalk.TimeStampMissileIncomming = Game.GetTime()
    TeamTalk.RadioTalkDelayed(EntityName, "Missile_Incomming", "Talk", nil, 1, 2.5)
  elseif TeamTalk.TimeStampHeavyFire + 10 < Game.GetTime() then
    TeamTalk.TimeStampHeavyFire = Game.GetTime()
    TeamTalk.RadioTalkDelayed(EntityName, "Under_Heavy_Fire", "Talk", nil, 4, 6)
  end
end

function TeamTalk.EnemyAttacking()
  Game.DeleteScheduledFuncs("TalkNoEnemy")
  if TeamTalk.TimeStampEnemyAttacking + 10 < Game.GetTime() and not TeamTalk.SuspendIncidentalTalking then
    TeamTalk.TimeStampEnemyAttacking = Game.GetTime()
    if AISquadTeam.ViewedTarget and AISquadTeam.Viewer then
      local enemyType = AISquadTeam.ViewedTarget.ActCtrl
      if enemyType == "Behemoth" then
        if AISquadTeam.ViewedTarget.Name == "Behemoth_00" then
          TeamTalk.RadioTalk("Black", "GenCom_Crusade0")
        end
        if AISquadTeam.ViewedTarget.Name == "Behemoth_01" or AISquadTeam.ViewedTarget.Name == "Behemoth_01" then
          TeamTalk.RadioTalk("Black", "GenCom_Crusade4")
        end
        return
      end
      if enemyType == "PsichicCommander" then
        return
      end
      if enemyType == "Gladiador" or enemyType == "Vicus" then
        return
      end
      if enemyType == "GhostChildCruzader" then
        return
      end
      local distance = (AISquadTeam.ViewedTarget.Pos - AISquadTeam.Viewer.Pos):mod()
      if AISquadTeam.ViewedTarget.ActCtrl == "BlindBehemoth" then
        if distance < 1500 then
          TeamTalk.RadioTalk(AISquadTeam.Viewer.Name, "Unexpected")
        end
        return
      end
      if distance < 2000 then
        local groupName = AISquadTeam.ViewedTarget.EntityList
        for i in pairs(MapEnemiesGroup.Groups) do
          local a = MapEnemiesGroup.Groups[i]
          local listname = a[1][2]
          if listname == groupName and EnemyGen.GetProperty("CreatedAttack", a) and math.random(3) == 1 then
            TeamTalk.RadioTalk(AISquadTeam.Viewer.Name, "Enemy_Ambush")
            return
          end
        end
        local vec = AISquadTeam.ViewedTarget.Pos - AISquadTeam.Viewer.Pos
        local height = AISquadTeam.ViewedTarget.Pos.y - AISquadTeam.Viewer.Pos.y
        local ang = math.asin(height / distance)
        if ang < -0.2 then
          TeamTalk.RadioTalk(AISquadTeam.Viewer.Name, "View_EnemyLow")
        elseif 0.2 < ang then
          TeamTalk.RadioTalk(AISquadTeam.Viewer.Name, "View_EnemyHigh")
        elseif distance < 500 then
          TeamTalk.RadioTalk(AISquadTeam.Viewer.Name, "View_EnemyClose")
        else
          TeamTalk.RadioTalk(AISquadTeam.Viewer.Name, "View_Enemy")
        end
      else
        TeamTalk.RadioTalk(AISquadTeam.Viewer.Name, "View_Enemy")
      end
    else
      print("EnemyAttacking no viewer or target\n")
    end
  end
end

function TeamTalk.Reload(EntityName, Probability)
  if TeamTalk.TimeStampReload + 10 < Game.GetTime() and not TeamTalk.SuspendIncidentalTalking then
    TeamTalk.TimeStampReload = Game.GetTime()
    local ent = Game.GetEntity(EntityName)
    local force = false
    if ent and ent.oAI and ent.oAI.ObjectiveDin then
      local target = Game.GetEntity(ent.oAI.ObjectiveDin)
      if target then
        distance = (ent.Pos - target.Pos):mod()
        if distance < 800 then
          Probability = Probability / 5
        end
      end
    end
    local rnd = math.random(Probability)
    if rnd == 1 and AISquad.UnderAttack() then
      TeamTalk.RadioTalk(EntityName, "Reload")
    end
  end
end

function TeamTalk.AddReloadTalkEvent(ac, AnName, Frame, Probability)
  local am = ac:GetAct(AnName)
  local ev = am:NewEvent(am:TimeFrame(Frame))
  ev.Name = "" .. Probability
  ev.Func = "TeamTalk.Reload"
  return ev
end

TeamTalk.MapIdlesList = {
  alk_bunker_00 = {"Idle"},
  alk_bunker_01 = {"Idle"},
  alk_city = {"Idle"},
  alk_desert = {"Idle"},
  alk_final = {"Idle"},
  alk_tomb = {"Idle"},
  cru_catacomb = {"Idle", "Cold_Area"},
  cru_chapel = {"Idle", "Cold_Area"},
  cru_keep = {"Idle"},
  cru_labyrinth = {"Idle"},
  cru_river = {"Idle", "Water"},
  cru_sewers = {"Idle"},
  rom_caldarium = {
    "Idle",
    "Bad_Smell",
    "Hot_Area"
  },
  rom_chamber = {"Idle"},
  rom_coloseum = {"Idle"},
  rom_outskirts = {"Idle", "Blood_Gore"},
  rom_palace_01 = {"Idle"},
  rom_palace_02 = {"Idle"},
  rom_tepidarium = {"Idle", "Bad_Smell"},
  sum_ziggurat_01 = {
    "Idle",
    "GenCom_Sumerian"
  },
  sum_ziggurat_02 = {
    "Idle",
    "GenCom_Sumerian"
  },
  sum_ziggurat_03 = {
    "Idle",
    "GenCom_Sumerian"
  },
  sum_ziggurat_04 = {
    "Idle",
    "GenCom_Sumerian"
  },
  sum_ziggurat_05 = {
    "Idle",
    "GenCom_Sumerian"
  },
  wwii_biggates = {"Idle"},
  wwii_brandenburg = {"Idle"},
  wwii_mosque = {"Idle"},
  wwii_mosque_inside = {"Idle"},
  wwii_pillboxes = {"Idle"},
  wwii_vigil = {"Idle"},
  wwii_vigil_inside = {"Idle"}
}
TeamTalk.MapToneList = {
  cru_labyrinth = {
    0,
    0,
    2
  },
  cru_sewers = {
    0,
    0,
    2
  },
  wwii_vigil_inside = {
    0,
    0,
    2
  }
}

function TeamTalk.RawlingsAvailable()
  if ERawlings and ERawlings.bActive and ERawlings.oAI and ERawlings.oAI.bEnable and ERawlings.Life > 0 then
    return true
  else
    return false
  end
end

function TeamTalk.RossAvailable()
  if ERoss and ERoss.Life > 0 then
    return true
  else
    return false
  end
end

function TeamTalk.DelgadoAvailable()
  if EDelgado and EDelgado.bActive and EDelgado.oAI and EDelgado.oAI.bEnable and EDelgado.Life > 0 then
    return true
  else
    return false
  end
end

function TeamTalk.ColeAvailable()
  if ECole and ECole.bActive and ECole.oAI and ECole.oAI.bEnable and ECole.Life > 0 then
    return true
  else
    return false
  end
end

function TeamTalk.NotInSumerian()
  if string.lower(string.sub(init.LevelName, 7, 9)) ~= "sum" then
    return true
  else
    return false
  end
end

function TeamTalk.NotInAlkhali()
  if string.lower(string.sub(init.LevelName, 7, 9)) ~= "alk" then
    return true
  else
    return false
  end
end

function TeamTalk.NotInAlkDesert()
  if string.lower(string.sub(init.LevelName, 7, 16)) ~= "alk_desert" then
    return true
  else
    return false
  end
end

function TeamTalk.NotInBunker00()
  if string.lower(string.sub(init.LevelName, 7, 20)) ~= "alk_bunker_00" then
    return true
  else
    return false
  end
end

function TeamTalk.NotInSoloMission()
  if not AreaTriggers.SoloMision then
    return true
  else
    return false
  end
end

function TeamTalk.NotFraggingPillboxes()
  if WWII_PilBox_A.FraggedPillboxes == 0 then
    return true
  else
    return false
  end
end

function TeamTalk.Never()
  return false
end

TeamTalk.VoiceConditions = {
  Talk_Delgado_Casualty_Delgado1 = TeamTalk.RawlingsAvailable,
  Talk_Delgado_GenCom_Sumerian6 = TeamTalk.NotInSumerian,
  Talk_Delgado_Revived6 = TeamTalk.Never,
  Talk_Delgado_Revived7 = TeamTalk.Never,
  Talk_Jones_Casualty_AnyFemale4 = TeamTalk.NotInSumerian,
  Talk_Jones_Casualty_AnyFemale5 = TeamTalk.NotInSumerian,
  Talk_Jones_Casualty_Jones0 = TeamTalk.RawlingsAvailable,
  Talk_Jones_Casualty_Jones1 = TeamTalk.RawlingsAvailable,
  Talk_Jones_Casualty_Church4 = TeamTalk.RawlingsAvailable,
  Talk_Jones_Casualty_Church5 = TeamTalk.RawlingsAvailable,
  Talk_Jones_Casualty_Delgado4 = TeamTalk.RawlingsAvailable,
  Talk_Jones_Casualty_Delgado5 = TeamTalk.RawlingsAvailable,
  Talk_Jones_Casualty_AnyFemale2 = TeamTalk.RawlingsAvailable,
  Talk_Jones_Casualty_AnyFemale3 = TeamTalk.RawlingsAvailable,
  Talk_Church_Casualty_Church1 = TeamTalk.RawlingsAvailable,
  Talk_Church_Casualty_Church2 = TeamTalk.DelgadoAvailable,
  Talk_Church_Casualty_Jones1 = TeamTalk.RawlingsAvailable,
  Talk_Church_Stop3 = TeamTalk.DelgadoAvailable,
  Talk_Church_Stop4 = TeamTalk.DelgadoAvailable,
  Talk_Church_Stop5 = TeamTalk.DelgadoAvailable,
  Talk_Church_Go12 = TeamTalk.DelgadoAvailable,
  Talk_Church_Go13 = TeamTalk.DelgadoAvailable,
  Talk_Church_Go14 = TeamTalk.DelgadoAvailable,
  Talk_Church_Go15 = TeamTalk.DelgadoAvailable,
  Talk_Church_Go16 = TeamTalk.DelgadoAvailable,
  Talk_Church_Go17 = TeamTalk.DelgadoAvailable,
  Talk_Black_Idle4 = TeamTalk.RawlingsAvailable,
  Talk_Black_Casualty_Black1 = TeamTalk.RawlingsAvailable,
  Talk_Black_Casualty_Church2 = TeamTalk.RawlingsAvailable,
  Talk_Cole_Using_PowerOne4 = TeamTalk.Never,
  Talk_Cole_Using_PowerOne5 = TeamTalk.Never,
  Talk_Cole_Idle5 = TeamTalk.Never,
  Talk_Cole_Idle0 = TeamTalk.NotInAlkDesert,
  Talk_Cole_Using_PowerOne2 = TeamTalk.Never,
  Talk_Cole_Using_PowerTwo4 = TeamTalk.Never,
  Talk_Cole_Using_PowerTwo5 = TeamTalk.Never,
  Talk_Cole_Under_Heavy_Fire1 = TeamTalk.Never,
  Talk_Cole_Under_Heavy_Fire2 = TeamTalk.Never,
  HINT_Cole_42_L2_Grenade_Pillboxes = TeamTalk.NotFraggingPillboxes,
  Talk_Church_Spot_Unusual_Feature4 = TeamTalk.Never,
  Talk_Church_Spot_Unusual_Feature5 = TeamTalk.Never,
  Talk_Rawlings_Spot_Unusual_Feature0 = TeamTalk.Never,
  Talk_Rawlings_NoEnemy4 = TeamTalk.Never,
  Talk_Rawlings_NoEnemy5 = TeamTalk.Never,
  Talk_Church_NoEnemy1 = TeamTalk.NotInSoloMission,
  Talk_Jones_NoEnemy4 = TeamTalk.NotInSoloMission,
  Talk_Rawlings_NoEnemy8 = TeamTalk.NotInSoloMission,
  Talk_Rawlings_NoEnemy9 = TeamTalk.NotInSoloMission,
  Talk_Rawlings_NoEnemy10 = TeamTalk.NotInSoloMission,
  Talk_Rawlings_NoEnemy11 = TeamTalk.NotInSoloMission,
  Talk_Delgado_Enemy_Killed1 = TeamTalk.NotInAlkhali,
  Talk_Church_Enemy_Killed1 = TeamTalk.NotInAlkhali,
  Talk_Black_Enemy_Killed1 = TeamTalk.NotInAlkhali,
  Talk_Delgado_AmmoOut6 = TeamTalk.ColeAvailable,
  Talk_Delgado_AmmoOut7 = TeamTalk.ColeAvailable,
  Talk_Delgado_AmmoLow0 = TeamTalk.ColeAvailable,
  Talk_Delgado_AmmoLow1 = TeamTalk.ColeAvailable,
  Talk_Delgado_AmmoLow2 = TeamTalk.ColeAvailable,
  Talk_Delgado_AmmoLow3 = TeamTalk.ColeAvailable,
  Talk_Delgado_AmmoResupplied2 = TeamTalk.ColeAvailable,
  Talk_Delgado_AmmoResupplied3 = TeamTalk.ColeAvailable,
  Talk_Black_AmmoOut3 = TeamTalk.ColeAvailable,
  Talk_Black_AmmoOut4 = TeamTalk.ColeAvailable,
  Talk_Black_AmmoOut5 = TeamTalk.ColeAvailable,
  Talk_Black_AmmoResupplied9 = TeamTalk.ColeAvailable,
  Talk_Black_AmmoResupplied10 = TeamTalk.ColeAvailable,
  Talk_Black_AmmoResupplied11 = TeamTalk.ColeAvailable,
  Talk_Jones_AmmoLow1 = TeamTalk.ColeAvailable,
  Talk_Jones_AmmoLow2 = TeamTalk.ColeAvailable,
  Talk_Jones_AmmoResupplied4 = TeamTalk.ColeAvailable,
  Talk_Church_AmmoResupplied1 = TeamTalk.ColeAvailable,
  Talk_Rawlings_AmmoResupplied0 = TeamTalk.ColeAvailable,
  Talk_Rawlings_AmmoResupplied1 = TeamTalk.ColeAvailable,
  Talk_Rawlings_AmmoResupplied2 = TeamTalk.ColeAvailable,
  Talk_Rawlings_AmmoResupplied3 = TeamTalk.ColeAvailable,
  Talk_Rawlings_AmmoResupplied8 = TeamTalk.ColeAvailable,
  Talk_Rawlings_AmmoResupplied9 = TeamTalk.ColeAvailable,
  Talk_Rawlings_AmmoLow3 = TeamTalk.ColeAvailable,
  Talk_Rawlings_AmmoLow4 = TeamTalk.ColeAvailable,
  Talk_Rawlings_AmmoLow5 = TeamTalk.ColeAvailable,
  Talk_Rawlings_AmmoLow6 = TeamTalk.ColeAvailable,
  Talk_Rawlings_AmmoLow7 = TeamTalk.ColeAvailable,
  Talk_Rawlings_AmmoOut2 = TeamTalk.ColeAvailable,
  Talk_Rawlings_AmmoOut3 = TeamTalk.ColeAvailable,
  Talk_Ross_Casualty_Rawlings1 = TeamTalk.NotInBunker00,
  Talk_Ross_Casualty_AnyMale0 = TeamTalk.NotInBunker00,
  Talk_Delgado_Idle_Impatient4 = TeamTalk.NotInAlkhali,
  Talk_Delgado_Idle_Impatient5 = TeamTalk.NotInAlkhali
}

function TeamTalk.PlayVoiceFromList(list, random)
  if nil == list or nil == list.Voices or 0 == #list.Voices then
    return
  end
  if #list.Voices == 1 then
    list.CurrentVoiceIndex = 1
  elseif #list.Voices == 2 then
    if list.CurrentVoiceIndex == 1 then
      list.CurrentVoiceIndex = 2
    else
      list.CurrentVoiceIndex = 1
    end
  elseif random then
    local randomIndex = list.CurrentVoiceIndex
    local i = 5
    while randomIndex == list.CurrentVoiceIndex and 0 < i do
      randomIndex = math.random(1, #list.Voices)
      i = i - 1
    end
    list.CurrentVoiceIndex = randomIndex
  elseif list.CurrentVoiceIndex then
    list.CurrentVoiceIndex = list.CurrentVoiceIndex % #list.Voices + 1
  else
    list.CurrentVoiceIndex = 1
  end
  TeamTalk.PlaySingleChat(list.Voices[list.CurrentVoiceIndex])
end

TeamTalk.AbortVoice = {
  {
    "TeamTalk.AbortInGameVoice",
    V3D(192, 128, 32)
  }
}
