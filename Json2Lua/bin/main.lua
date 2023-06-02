require "lfs"
require "json"

local num = 0
local luaTable = ""

local function readFile(path)
    local f = assert(io.open(path, 'r'))
    local string = f:read("*all")
    f:close()
    return string
end

local function writeFile(path, str)
    local f = assert(io.open(path, 'w'))
    f:write(str)
    f:close()
end

local function getLuaName(name)
    local i1 = string.find(name, "_")
    local s1 = string.sub(name, 1, i1 - 1)
    local c1 = string.sub(s1, 1, 1)
    local C1 = string.upper(c1)
    local n1 = C1 .. string.sub(s1, 2, -1)

    local s2 = string.sub(name, i1 + 1, -1)
    local i2 = string.find(s2, "_")

    if i2 == nil then
        local c2 = string.sub(s2, 1, 1)
        local C2 = string.upper(c2)
        local n2 = C2 .. string.sub(s2, 2, -1)
        n1 = n1 .. n2
    else
        local s3 = string.sub(s2, 1, i2 - 1)
        local c2 = string.sub(s3, 1, 1)
        local C2 = string.upper(c2)
        local n2 = C2 .. string.sub(s3, 2, -1)
        local s4 = string.sub(s2, i2 + 1, -1)
        local c3 = string.sub(s4, 1, 1)
        local C3 = string.upper(c3)
        local n3 = C3 .. string.sub(s4, 2, -1)
        n1 = n1 .. n2 .. n3
    end

    return n1
end

local function formatLuaTable(tab, indent)
    local count = #tab
    indent = indent or 0
    for k, v in pairs(tab) do
        if type(k) == "string" then
            k = string.format("%q", k)
        end
        local szSuffix = ""
        local szPrefix = string.rep("    ", indent)
        if type(v) == "table" then
            szSuffix = "\n" .. szPrefix .. "{"
        end
        if indent == 0 then
            formatting = szSuffix
        else
            formatting = szPrefix .. "[" .. k .. "]" .. " = " .. szSuffix
        end
        if type(v) == "table" then
            luaTable = luaTable .. formatting .. "\n"
            formatLuaTable(v, indent + 1)
            if count == indent then
                luaTable = luaTable .. szPrefix .. "}" .. "\n"
            else
                luaTable = luaTable .. szPrefix .. "}," .. "\n"
            end
        else
            local szValue = ""
            if type(v) == "string" then
                szValue = string.format("%q", v)
            else
                szValue = tostring(v)
            end
            luaTable = luaTable .. formatting .. szValue .. "," .. "\n"
        end
    end
end

local function convert(jsonName, jsonPath)
    local luaName = getLuaName(jsonName)

    print(jsonName .. ".json" .. " >>>>>> " .. luaName .. ".lua")

    local jsonStr = readFile(jsonPath)
    local tab = json.decode(jsonStr)
	tab = tab["param"]

    luaTable = ""
    formatLuaTable(tab)

    local path = "./lua/" .. luaName .. ".lua"
    local luaStr = "local ".. luaName .. " = {" .. luaTable .. "}\n\nreturn " .. luaName

    writeFile(path, luaStr)
end

local function start(path)
    for fileName in lfs.dir(path) do
        if fileName ~= "." and fileName ~= ".." then
            if string.find(fileName, ".json") ~= nil then
                local filePath = path .. '/' .. fileName
                fileName = string.sub(fileName, 1, string.find(fileName, ".json") - 1)
                convert(fileName, filePath)
                num = num + 1
            end
         end
    end
end

print(">>>>>> Json2Lua（1.0）开始转换 <<<<<<\n")

start("./json")

print("\n>>>>>> 转换 " .. num .." 个文件成功 <<<<<<\n")