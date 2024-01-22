---@class LanguageTranslationDictionary
LanguageTranslationDictionary = {}

function LanguageTranslationDictionary:Init()
    local LtdDictionary = LtdLoader:ImportModule("LtdDictionary")
    LtdDictionary:load("spanish")
end
