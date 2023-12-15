-- 获取原始 package.path
local original_path = package.path
-- 添加新的搜索路径
package.path = "/storage/emulated/0/Android/data/com.chinamobile.cphsdk2demo/files/?.lua;" .. original_path



local dkjson = require("dkjson")

-- 创建 Lua 表
local data = {
    name = "John",
    age = 30,
    city = "New York"
}

-- 将 Lua 表转换为 JSON 字符串
local json_string = dkjson.encode(data)
--
--local formattedString = string.formatprint("JSON String:%s", json_string)
local formattedString = string.format("JSON String:%s", json_string)
printData(formattedString)
local formattedStringlength = string.format("JSON String length :%d", string.len(formattedString))
printData(formattedStringlength)

local cphlibs = require("my")
local result = cphlibs.add_numbers(json_string)
--print("Result:", result)

---- 解析 JSON 字符串为 Lua 表
--local parsed_data = dkjson.decode(json_string)
--
---- 打印提取的字段值
--print("Name:", parsed_data.name)
--print("Age:", parsed_data.age)
--print("City:", parsed_data.city)


-- Iterate through package.loaded and print module names
--for moduleName, moduleTable in pairs(package.loaded) do
--    local formattedString = string.format("Loaded module: %s", moduleName)
--    printData(formattedString)
--end
--
--for k, v in pairs(_G) do
--    if type(v) == "function" then
--        local formattedString = string.format("Global Function:%s", k)
--        printData(formattedString)
--    end
--end
