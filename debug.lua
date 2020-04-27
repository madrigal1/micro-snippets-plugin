local micro = import("micro")
local buffer = import("micro/buffer")
local config = import("micro/config")
local util = import("micro/util")

local debugflag = true

-- Debug functions below
-- debug1 is for logging functionName and 1 argument passed
function debug1(functionName, argument)
    if debugflag == false then return end
    if argument == nil then
        micro.Log("snippets-plugin -> function " .. functionName .. " = nil")
    elseif argument == "" then
        micro.Log("snippets-plugin -> function " .. functionName ..
                      " = empty string")
    else
        micro.Log("snippets-plugin -> function " .. functionName .. " = " ..
                      tostring(argument))
    end
end

-- debug is for logging functionName only
function debug(functionName)
    if debugflag == false then return end
    micro.Log("snippets-plugin -> function " .. functionName)
end

-- debug is for logging functionName and table
function debugt(functionName, tablepassed)
    if debugflag == false then return end
    micro.Log("snippets-plugin -> function " .. functionName)
    tprint(tablepassed)
    --	if (tablepassed == nil) then return end
    --	for key,value in pairs(tablepassed) do 
    --		micro.Log("key - " .. tostring(key) .. "value = " .. tostring(value[1]) )
    --	end
end

-- dump table
function dump(o)
    if type(o) == 'table' then
        local s = '{ '
        for k, v in pairs(o) do
            if type(k) ~= 'number' then k = '"' .. k .. '"' end
            s = s .. '[' .. k .. '] = ' .. dump(v) .. ','
        end
        return s .. '} '
    else
        return tostring(o)
    end
end

function tprint(tbl, indent)
    if not indent then indent = 0 end
    for k, v in pairs(tbl) do
        formatting = string.rep("  ", indent) .. k .. ": "
        if type(v) == "table" then
            micro.Log(formatting .. "Table ->")
            tprint(v, indent + 1)
        elseif type(v) == nil then
            micro.Log(formatting .. " nil")
        else
            micro.Log(formatting .. tostring(v))
        end
    end
end

function checkTableisEmpty(myTable)
    if next(myTable) == nil then
        -- myTable is empty
    end
end

function tablePrint(tbl)
    for index = 1, #tbl do
        micro.Log(tostring(index) .. " = " .. tostring(tbl[index]))
    end
end
