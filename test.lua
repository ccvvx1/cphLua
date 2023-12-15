-- 获取原始 package.path
local original_path = package.path
-- 添加新的搜索路径
package.path = "/storage/emulated/0/Android/data/com.chinamobile.cphsdk2demo/files/?.lua;" .. original_path
local dkjson = require("dkjson")




-- 创建 Lua 表
local data = {
    audioType = 1,
    sampleRate = 48000,
    sampleInterval = 10
}

-- 将 Lua 表转换为 JSON 字符串
local formattedString = dkjson.encode(data)
--
local formattedString = string.format("JSON String:%s", json_string)
printData(formattedString)

local cphlibs = require("cphlibs")
cphlibs.InitAudio(formattedString)
