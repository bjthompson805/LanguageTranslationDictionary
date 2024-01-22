-- This class loads and accesses the given dictionary.
---@class LtdDictionary
local LtdDictionary = LtdLoader:CreateModule("LtdDictionary")

local dictionary = {}

function LtdDictionary:load(language)
    if language == "spanish" then
        local dictionaryHTML = CreateFrame("SimpleHTML", nil, nil, "EsEnDictionary")
        local regions = { dictionaryHTML:GetRegions() }
        if (not (regions and #regions > 0)) then return end
        local dataParts = { }
        for _, region in ipairs(regions) do
            table.insert(dataParts, region:GetText())
        end

        local tmpDictionaryString = table.concat(dataParts)

        -- TODO: Need to retain newlines. &#10; won't work because it still strips it. Need some sort of placeholder entity or something.
        local _, count = tmpDictionaryString:gsub("\n", "")
        print("Number of newlines: " .. count)
    else
        error("Language '" .. language .. "' is not supported.")
        return
    end
end