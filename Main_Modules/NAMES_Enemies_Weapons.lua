---@diagnostic disable: undefined-global
-- FOR TRANSLATORS: If the in-game translation of a Weapon or Enemy Name is correct in your localization, DO NOT DUPLICATE the line here. I only changed something in the Russian localization if I wasn't satisfied with the official translation, so I marked "ruof" for the official Russian translation and then wrote my correct version in the lines below. There's no need to burden the game with unnecessary duplicate data in the mod and burden yourself with unnecessary work.

local mod = get_mod("Enhanced_descriptions")

-- USING CACHED UTILITIES - ИСПОЛЬЗУЕМ КЭШИРОВАННЫЕ УТИЛИТЫ
local Utils = mod.get_utils()

-- IMPORTING ALL NECESSARY FUNCTIONS AND CONSTANTS - ИМПОРТ ВСЕХ НУЖНЫХ ФУНКЦИЙ И КОНСТАНТ
local create_template = Utils.create_template
local loc_text = Utils.loc_text
local CKWord = Utils.CKWord
local CNumb = Utils.CNumb
local CPhrs = Utils.CPhrs
local CNote = Utils.CNote
local Dot_nc = Utils.DOT_NC or "•"
local Dot_red = Utils.DOT_RED or "•"
local Dot_green = Utils.DOT_GREEN or "•"

-- Main localization data - Основные данные локализации
local names_enemies_weapons_templates = {
	-- TEMPLATE
		-- ["loc_code"] = {
			-- en = "",
			-- ru = "",
			-- fr = "",
			-- ["zh-tw"] = "",
			-- ["zh-cn"] = "",
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		-- },



}

-- Automatic template creation - Автоматическое создание шаблонов
local localization_templates = {}
for loc_key, locales in pairs(names_enemies_weapons_templates) do
	for locale, text in pairs(locales) do
		table.insert(localization_templates, create_template(
			loc_key,
			{loc_key},
			{locale},
			loc_text(text)
		))
	end
end

mod:info("NAMES_Enemies_Weapons.lua loaded successfully")

return localization_templates
