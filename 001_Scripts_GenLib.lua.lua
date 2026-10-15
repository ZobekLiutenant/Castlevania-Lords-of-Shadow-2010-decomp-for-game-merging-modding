function GetValidFileName(FileName)
  local a = Game.Split(FileName, "/")
  
  local s = a[#a]
  if 42 < #s then
    local num = 0
    for i = 1, #s - 31 do
      num = num + string.byte(string.sub(s, i, i))
    end
    s = "_" .. num .. "_" .. string.sub(s, #s - 30)
    for i = 1, #a - 1 do
      s = a[#a - i] .. "/" .. s
    end
    return s
  else
    return FileName
  end
end

function ValidFileExist(FileName)
  if Game.FileExist(FileName) then
    return true
  end
  local NewFileName = GetValidFileName(FileName)
  if NewFileName ~= FileName then
    return Game.FileExist(NewFileName)
  else
    return false
  end
end

function ValidPreloadLibrary(FileName, LibraryName, libchunk)
  libchunk = defparam(libchunk, true)
  local NewFileName = GetValidFileName(FileName)
  if NewFileName ~= FileName then
    if Game.FileExist(NewFileName) then
      Game.PreloadLibrary(NewFileName, LibraryName, libchunk)
      return true
    elseif Game.FileExist(FileName) then
      Game.ConsoleError([[

INVALID FILE NAME !!!
	]] .. FileName .. [[


]])
      if Game.Get("ToolMode") == 1 then
        Editor.MessageBox([[
INVALID FILE NAME !!!
	]] .. FileName, "MB_OK", "MB_ICONEXCLAMATION")
      end
      Game.PreloadLibrary(FileName, LibraryName, libchunk)
      return true
    end
  elseif Game.FileExist(FileName) then
    Game.PreloadLibrary(FileName, LibraryName, libchunk)
    return true
  end
  return false
end

function track_tag(tag)
  if DebugTrack then
    DebugTrack.AddTag(tag)
  end
end

function defparam(param, value)
  if param == nil then
    return value
  else
    return param
  end
end

function saferun(func, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, param11, tumach)
  if tumach then
    Game.ConsoleError("too much parameters in saferun function\n")
  end
  Game.AddScheduledFunc(unpack({
    0,
    "saferun",
    func,
    param1,
    param2,
    param3,
    param4,
    param5,
    param6,
    param7,
    param8,
    param9,
    param10,
    param11
  }))
end

function clamp(min, max, v)
  if max < v then
    return max
  elseif v < min then
    return min
  else
    return v
  end
end

function count(table)
  local item = next(table)
  local n = 0
  while item ~= nil and table[item] ~= nil do
    n = n + 1
    item = next(table, item)
  end
  return n
end

function duplicateValue(v)
  if type(v) == "table" then
    local rez = {}
    for i, j in pairs(v) do
      rez[i] = duplicateValue(j)
    end
    return rez
  else
    return v
  end
end

function HideCharsOfClass(className)
  if init.HidenChars == nil then
    init.HidenChars = {}
  end
  e = Game.UsrEntity(0)
  if e ~= nil and e:IsType("WalkChar") then
    e.SelectedEntity = ""
  end
  e = Game.GetFirst()
  while e ~= nil do
    if e:IsType("WalkChar") and e.Active ~= 0 and e.oActCtrl and e.oActCtrl.oActClass and e.oActCtrl.oActClass.Name == className then
      table.insert(init.HidenChars, e.Name)
      e.Active = 0
      e.TimeSpeed = 0
    end
    if e.NextInSlot == "" then
      break
    end
    e = Game.GetEntity(e.NextInSlot)
  end
end

function UnhideChars()
  local i, e
  if init.HidenChars ~= nil then
    for i in pairs(init.HidenChars) do
      e = Game.GetEntity(init.HidenChars[i])
      if e ~= nil then
        e.Active = 1
        e.TimeSpeed = 1
      end
    end
  end
  init.HidenChars = nil
end

function addSF(time, name, func, param1, param2, param3, param4, param5, param6, param7, param8, param9, param10, param11, tumach)
  if tumach then
    Game.ConsoleError("too much parameters in saferun function\n")
  end
  Game.AddScheduledFunc(unpack({
    Game.GetTime() + time,
    name,
    func,
    param1,
    param2,
    param3,
    param4,
    param5,
    param6,
    param7,
    param8,
    param9,
    param10,
    param11
  }))
end

function delSF(name)
  Game.DeleteScheduledFuncs(name)
end

function CallStrFunc(strFunction)
  local tokens = Game.Split(strFunction, ".")
  local val = _G[tokens[1]]
  for i = 2, #tokens - 1 do
    val = val[tokens[i]]
  end
  return val[tokens[#tokens]]()
end

function parseToTable(cad, def, sep)
  local ret = {}
  local a = Game.Split(cad, sep)
  for i = 1, #a do
    ret[def[i]] = a[i]
  end
  return ret
end

function parseGlobalExpression(expressionName)
  local hierarchy = Game.Split(expressionName, ".")
  local returnValue = _G[hierarchy[1]]
  for i = 2, #hierarchy do
    returnValue = returnValue[hierarchy[i]]
  end
  return returnValue
end

function TableToKeysSortedList(t)
  local ret = {}
  for name, data in pairs(t) do
    table.insert(ret, name)
  end
  table.sort(ret)
  return ret
end

function langstr(cad)
  local s = Game.GetLangStr(cad)
  if s == "" then
    s = "UNKNOWN(" .. cad .. ")"
  end
  return s
end

function langExtend(extendPercent)
  Game.Set("TextExtendWidth", extendPercent / 100)
  Game.SetLanguage("English", true)
end

function TSCLOAD_Begin(enum)
  if Game.TSCLOAD_Begin and enum ~= nil and Game["TSCLOAD_LUA_" .. enum] ~= nil then
    Game.TSCLOAD_Begin(Game["TSCLOAD_LUA_" .. enum])
  end
end

function TSCLOAD_End(enum)
  if Game.TSCLOAD_End and enum ~= nil and Game["TSCLOAD_LUA_" .. enum] ~= nil then
    Game.TSCLOAD_End(Game["TSCLOAD_LUA_" .. enum])
  end
end

function _pairs(v)
  if type(v) == "table" then
    return pairs(v)
  else
    return v._next, v, nil
  end
end

function _GetBinArray(v)
  local i = 1
  r = {}
  while 0 < v do
    if v % 2 == 1 then
      v = (v - 1) / 2
      r[#r + 1] = true
    else
      v = v / 2
      r[#r + 1] = false
    end
  end
  return r
end

function _BinArrayToValue(r)
  local v = 0
  local nv = 1
  for i = 1, #r do
    if r[i] then
      v = v + nv
    end
    nv = nv * 2
  end
  return v
end
