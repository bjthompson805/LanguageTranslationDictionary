-- This class loads and accesses the given dictionary.
---@class LtdDictionary
local LtdDictionary = LtdLoader:CreateModule("LtdDictionary")

local dictionary = {}

function LtdDictionary:load(language)
    if language == "spanish" then
        print("Loading language '" .. language .."'.")
    else
        error("Language '" .. language .. "' is not supported.")
        return
    end
end