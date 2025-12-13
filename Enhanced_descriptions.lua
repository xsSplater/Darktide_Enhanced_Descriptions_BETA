---@diagnostic disable: undefined-global
-- The main file needed for this mod to work.
-- FOR TRANSLATORS: YOU DON'T NEED TO DO ANYTHING IN THIS FILE!

local mod = get_mod("Enhanced_descriptions")

-- <<<CODE_REVEALER>>>
-- local function create_template(id, loc_keys, locales, handle_func) return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func } end mod.localization_templates = { create_template("code_reveal", {"loc_talent_adamant_disable_companion_replenish_split_desc"}, {"ru", "en"}, function(locale, value) return string.gsub(value, "{", "(") end), }
-- <<</CODE_REVEALER>>>

-- Main Modules Location
local location = "Enhanced_descriptions/Main_Modules/"

-- CONSTANTS
local VERSION = "4.88b"
local LOCALIZATION_FILES = {
	WEAPONS_Blessings_Perks =	"enable_weapons_file",
	TALENTS =					"enable_talents_file",
	CURIOS_Blessings_Perks =	"enable_curious_file",
	MENUS =						"enable_menus_file",
	PENANCES =					"enable_penances_file",
	-- NAMES_Enemies_Weapons =		"enable_names_file",
	-- NAMES_Talents_Blessings =	"enable_names_tal_bless_file"
}

local BUTTON_OFFSETS = {
	InventoryWeaponsView =		"equip_button",
	MarksVendorView =			"purchase_button", 
	InventoryWeaponMarksView =	"equip_button"
}

-- UI OFFSET CONSTANTS
local WIDGET_OFFSET =			{-622, 20, 0}
local WINDOW_OFFSET =			200

-- Кэш цветов
mod._color_cache = {
	numbers = nil,
	keywords = nil,
	current_lang = nil
}

-- Список поддерживаемых языков
mod.SUPPORTED_LANGUAGES = {
	"en",		-- English
	"ru",		-- Russian
	"zh-cn",	-- Chinese Simplified
	"zh-tw",	-- Chinese Traditional
	"de",		-- German
	"it",		-- Italian
	"ja",		-- Japanese
	"ko",		-- Korean
	"pl",		-- Polish
	"pt-br",	-- Portuguese (Brazil)
	"es",		-- Spanish
	"fr",		-- French
}

-- Карта языков для файлов
local LANGUAGE_FILE_MAP = {
	["en"] =	"en",
	["ru"] =	"ru",
	["zh-cn"] =	"zh_cn",
	["zh-tw"] =	"tw",
	["de"] =	"de",
	["it"] =	"it",
	["ja"] =	"ja",
	["ko"] =	"ko",
	["pl"] =	"pl",
	["pt-br"] =	"pt_br",
	["es"] =	"es",
	["fr"] =	"fr",
}

-- FIXES FOR DESCRIPTIONS - ФИКСЫ ДЛЯ ОПИСАНИЙ
local FIXES = {
--[+ ++BLESSINGS - БЛАГОСЛОВЕНИЯ++ +]--
	--[+ OVERLOAD +]--
		-- "+25% Heat is reduced immediately..." -- Removed "+"
		loc_explosion_on_overheat_lockout_desc = {
			overheat_reduction = function(value)
				local str = tostring(value)
				return str:gsub("^+", "")
			end
		},
	--[+ WRATH +]--
		-- "+50% Cleave on Hit..." -- Removed "+"
		loc_trait_bespoke_chained_hits_increases_cleave_desc = {
			cleave = function(value)
				local str = tostring(value)
				return str:gsub("^+", "")
			end
		},
	--[+ HEATSINK +]--
		-- "+10% Heat..." -- Removed "+" and replaced with "-"
		loc_reduce_fixed_overheat_amount_desc = {
			amount = function(value)
				local str = tostring(value)
				return str:gsub("^+", "")
			end
		},
	--[+ SLOW AND STEADY +]--
		-- "Up to +8% Toughness recovered..." -- Removed "+"
		loc_trait_bespoke_toughness_on_hit_based_on_charge_time_desc = {
			toughness = function(value)
				local str = tostring(value)
				return str:gsub("^+", "")
			end
		},
	--[+ FOCUSED COOLING +]--
		-- "+60% Heat generation..." -- Removed "+"
		loc_trait_bespoke_reduced_overheat_on_crits_desc = {
			heat_percentage = function(value)
				local str = tostring(value)
				return str:gsub("^+", "")
			end
		},
--[+ ++TALENTS - ТАЛАНТЫ++ +]--
	--[+ NODES - УЗЛЫ +]--
		--[+ Peril Resistance Medium +]--
			-- "+10.00% Peril Generation." -- Removed ".00"
			loc_talent_warp_charge_low_desc = {
				warp_charge = function(value)
					local str = tostring(value)
					return str:gsub("%.00%%", "%%")
				end
			},
	--[+ PSYKER - ПСАЙКЕР +]--
		--[+ ABILITY 1-3 - Creeping Flames +]--
			-- "Venting Shriek applies 1 - 6 Stacks..." -- Removed " -" from number "1 -"
			loc_talent_psyker_warpfire_on_shout_desc = {
				min_stacks = function(value)
					local str = tostring(value)
					return str:gsub("%s*%-%s*", "")
				end
			},
	--[+ VETERAN - ВЕТЕРАН +]--
		--[+ Passive 23 - Deadshot +]--
			-- "+60% Sway Reduction..." -- Removed "+"
			loc_talent_veteran_ads_drains_stamina_boost_desc = {
				sway_reduction = function(value)
					local str = tostring(value)
					return str:gsub("%+", "")
				end,
			},
	--[+ ZEALOT - ИЗУВЕР +]--
		--[+ BLITZ 1 - Stunstorm Grenade +]--
			-- "+50% blast radius..." -- Removed "+"
			loc_zealot_improved_stun_grenade_desc = {
				radius = function(value)
					local str = tostring(value)
					return str:gsub("%+", "")
				end,
			},
		--[+ ABILITY 1-1 - Unrelenting Fury +]--
			-- "+20% Ability Cooldown..." -- Removed "+"
			loc_talent_zealot_fotf_refund_cooldown_desc = {
				cooldown = function(value)
					local str = tostring(value)
					return str:gsub("%+", "")
				end,
			},
		--[+ Passive 5 - Enemies Within, Enemies Without +]--
			-- "+2.5% Toughness replenished..." -- Removed "+"
			loc_talent_zealot_toughness_near_enemies_desc = {
				toughness = function(value)
					local str = tostring(value)
					return str:gsub("%+", "")
				end,
			},
	--[+ ARBITES - АРБИТРЕС +]--
		--[+ ABILITY 1 - Castigator's Stance +]--
			-- "+80% Reduced Damage Taken..." -- Removed "+"
			loc_talent_adamant_stance_ability_alt_description = {
				damage_taken = function(value)
					local str = tostring(value)
					return str:gsub("%+", "")
				end,
			},
		--[+ Passive 16 - Canine Morale +]--
			-- "+10% Toughness replenished..." -- Removed "+"
			loc_talent_adamant_pinning_dog_kills_buff_allies_description = {
				toughness = function(value)
					local str = tostring(value)
					return str:gsub("%+", "")
				end,
			},
}

-- ФУНКЦИИ ДЛЯ ЗАГРУЗКИ ЦВЕТОВ
function mod.load_colors_numbers()
	if mod._color_cache.numbers then
		return mod._color_cache.numbers
	end
	
	local colors_func = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_Numbers")
	local colors = type(colors_func) == "function" and colors_func() or colors_func
	
	mod._color_cache.numbers = colors or {}
	return mod._color_cache.numbers
end

function mod.load_colors_keywords(language)
	language = language or "en"
	
	if mod._color_cache.keywords and mod._color_cache.current_lang == language then
		return mod._color_cache.keywords
	end
	
	local file_name
	if language == "en" then
		file_name = "Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords"
	else
		local file_suffix = LANGUAGE_FILE_MAP[language] or language
		file_suffix = file_suffix:gsub("-", "_")
		file_name = string.format("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords_%s", file_suffix)
	end
	
	local colors_func
	local success, err = pcall(function()
		colors_func = mod:io_dofile(file_name)
	end)
	
	local colors = {}
	
	if success and colors_func then
		if type(colors_func) == "function" then
			colors = colors_func() or {}
		else
			colors = colors_func or {}
		end
		
		mod:info("Loaded colors for language: %s", language)
	else
		mod:warning("Failed to load colors for language: %s, file: %s, error: %s", 
				   language, file_name, tostring(err))
		
		if language ~= "en" then
			mod:info("Falling back to English colors for language: %s", language)
			colors = mod.load_colors_keywords("en")
		else
			colors = {
				keywords = {},
				phrs = {},
				nts = {}
			}
		end
	end
	
	if not colors.keywords then
		local old_structure = colors
		colors = {
			keywords = old_structure,
			phrs = {},
			nts = {}
		}
	end
	
	mod._color_cache.keywords = colors
	mod._color_cache.current_lang = language
	
	return mod._color_cache.keywords
end

function mod.get_current_language_colors()
	if not Managers or not Managers.localization then
		return {}, {}, "en"
	end
	
	local current_lang = Managers.localization._language or "en"
	
	local is_supported = false
	for _, lang in ipairs(mod.SUPPORTED_LANGUAGES) do
		if lang == current_lang then
			is_supported = true
			break
		end
	end
	
	if not is_supported then
		mod:info("Language %s is not supported, falling back to English", current_lang)
		current_lang = "en"
	end
	
	local numbers = mod.load_colors_numbers()
	local keywords = mod.load_colors_keywords(current_lang)
	
	return {numbers, keywords, current_lang}
end

function mod.clear_color_cache()
	mod._color_cache.numbers = nil
	mod._color_cache.keywords = nil
	mod._color_cache.current_lang = nil
	
	-- Очищаем глобальный кэш утилит
	local success, utils = pcall(function()
		return mod:io_dofile("Enhanced_descriptions/Enhanced_descriptions_utils")
	end)
	
	if success and utils and utils.clear_global_cache then
		utils.clear_global_cache()
	end
	
	mod:info("Color cache cleared")
end

mod:hook(LocalizationManager, "localize", function(func, self, loc_key, no_cache, context)
	local result = func(self, loc_key, no_cache, context)
	
	if context and FIXES[loc_key] then
		local modified_context = table.shallow_copy(context)
		local modified = false
		
		for field, fix_func in pairs(FIXES[loc_key]) do
			if modified_context[field] then
				modified_context[field] = fix_func(modified_context[field])
				modified = true
			end
		end
		
		if modified then
			result = func(self, loc_key, no_cache, modified_context)
		end
	end
	
	return result
end)

-- LOCALIZATION SYSTEM
local LocalizationManager = require("scripts/managers/localization/localization_manager")
local registered_fixes = {}

local function safe_load_localization_file(file_path, setting_name)
	if not mod:get(setting_name) then
		return {}
	end

	local file_templates = mod:io_dofile(file_path)
	
	if file_templates then
		mod:info("Loaded localization file: %s", file_path)
		return file_templates
	else
		mod:error("Failed to load localization file: %s", file_path)
		return {}
	end
end

local function load_localization_file(file_name, setting_name)
	return safe_load_localization_file(location .. file_name, setting_name)
end

local function load_all_templates()
	local templates = {}

	for file_name, setting_name in pairs(LOCALIZATION_FILES) do
		local file_templates = load_localization_file(file_name, setting_name)
		if file_templates and #file_templates > 0 then
			for _, template in ipairs(file_templates) do
				templates[#templates + 1] = template
			end
		end
	end

	return templates
end

local function should_load_template(template, current_lang)
	if not template.locales then
		return true
	end

	for _, locale in ipairs(template.locales) do
		if locale == current_lang then
			return true
		end
	end

	return false
end

local function register_template_fixes(templates, current_lang)
	table.clear(registered_fixes)

	for _, template in ipairs(templates) do
		if should_load_template(template, current_lang) and template.loc_keys and template.handle_func then
			for _, loc_key in ipairs(template.loc_keys) do
				if loc_key then
					registered_fixes[loc_key] = registered_fixes[loc_key] or {}
					registered_fixes[loc_key][#registered_fixes[loc_key] + 1] = template.handle_func
				end
			end
		end
	end
end

mod.reload_templates = function()
	if not Managers or not Managers.localization then
		mod:info("Managers not available, cannot reload templates")
		return false
	end

	local current_lang = Managers.localization._language or "en"
	local all_templates = load_all_templates()
	register_template_fixes(all_templates, current_lang)

	mod:info(string.format("Localization templates reloaded for %s: %d templates", 
		current_lang, #all_templates))
	
	return true
end

local function setup_button_offsets()
	for class_name, widget_name in pairs(BUTTON_OFFSETS) do
		if CLASS[class_name] then
			mod:hook_safe(CLASS[class_name], "on_enter", function(self)
				if self._widgets_by_name and self._widgets_by_name[widget_name] then
					self._widgets_by_name[widget_name].offset = WIDGET_OFFSET
				end
			end)
		else
			mod:warning("Class not found for button offset: " .. class_name)
		end
	end
end

local function setup_window_offsets()
	mod:hook_safe("ViewElementWeaponInfo", "_create_bar_breakdown_widgets", function(self)
		local scenegraph = self._ui_scenegraph

		if scenegraph.bar_breakdown_slate then
			scenegraph.bar_breakdown_slate.world_position[2] = scenegraph.bar_breakdown_slate.world_position[2] - WINDOW_OFFSET
		end

		if scenegraph.entry then
			scenegraph.entry.world_position[2] = scenegraph.entry.world_position[2] - WINDOW_OFFSET
		end
	end)
end

mod:hook(LocalizationManager, "_process_string", function(func, self, key, raw_str, context)
	local fixes = registered_fixes[key]

	if not fixes then
		return func(self, key, raw_str, context or {})
	end

	local modified_str = raw_str
	for i = 1, #fixes do
		local result = fixes[i](Managers.localization._language, modified_str, context or {})
		if type(result) == "string" then
			modified_str = result
		end
	end

	return func(self, key, modified_str, context or {})
end)

function mod.on_all_mods_loaded()
	setup_button_offsets()
	setup_window_offsets()
	mod.reload_templates()
	
	-- Экспортируем переменные для Debug модуля
	mod.registered_fixes = registered_fixes
	mod.FIXES = FIXES
	mod.LOCALIZATION_FILES = LOCALIZATION_FILES
	
	-- Пробуем загрузить debug модуль (опционально)
	local debug_success, debug_result = pcall(function()
		return mod:io_dofile("Enhanced_descriptions/Main_Modules/Debug")
	end)
	
	if debug_success and debug_result then
		mod:info("Debug module loaded")
	else
		-- Не показываем warning, если файла нет
		mod:info("Debug module not loaded (optional)")
	end
end

function mod.on_enabled()
	mod.reload_templates()
	mod:info("Enhanced Descriptions enabled")
end

function mod.on_disabled()
	table.clear(registered_fixes)
	mod.clear_color_cache()
	mod:info("Enhanced Descriptions disabled")
end

local function on_setting_changed(setting_id)
	mod:info("Setting changed: " .. setting_id)

	if string.find(setting_id, "_text_colour") then
		mod.clear_color_cache()
		mod.reload_templates()
		mod:notify("Colors updated")
	elseif string.find(setting_id, "enable_") then
		mod.reload_templates()
		mod:notify("Modules reloaded")
	end
end

mod.on_setting_changed = on_setting_changed

function mod.reload_localization()
	mod.clear_color_cache()
	local success = mod.reload_templates()
	if success then
		mod:notify("Localization reloaded successfully")
	else
		mod:notify("Failed to reload localization")
	end
	return success
end

mod:command("reload_ed_localization", "Reload Enhanced Descriptions localization", function()
	mod.reload_localization()
end)

mod:info("Enhanced Descriptions mod loaded version: %s", VERSION)
