---@diagnostic disable: undefined-global
-- The main file needed for this mod's menu to work.
-- FOR TRANSLATORS: YOU DON'T NEED TO DO ANYTHING IN THIS FILE!

-- Enhanced_descriptions_data.lua

local mod = get_mod("Enhanced_descriptions")

-- ---------------------------------------------------------------------------
-- Constants
-- ---------------------------------------------------------------------------
local DEFAULT_SETTINGS = {
	-- Main modules
	enable_menus_file			 = true,
	enable_curious_file			 = true,
	enable_penances_file		 = true,
	enable_weapons_file			 = true,
	enable_talents_file			 = true,
	enable_names_file			 = true,
	enable_names_tal_bless_file	 = true,
	enable_debug_mode			 = false,

	-- Default preset
	color_preset				 = "default",

	-- Language override
	language_override			 = "auto",
}

local SUPPORTED_LANGUAGES = {
	{ value = "auto",  text = "language_auto" },
	{ value = "en",	   text = "language_en" },
	{ value = "ru",	   text = "language_ru" },
	{ value = "fr",	   text = "language_fr" },
	{ value = "zh-tw", text = "language_zh_tw" },
	{ value = "zh-cn", text = "language_zh_cn" },
	{ value = "de",	   text = "language_de" },
	{ value = "it",	   text = "language_it" },
	{ value = "ja",	   text = "language_ja" },
	{ value = "ko",	   text = "language_ko" },
	{ value = "pl",	   text = "language_pl" },
	{ value = "pt-br", text = "language_pt_br" },
	{ value = "es",	   text = "language_es" },
}

-- Каждый id — настройка <id>_text_colour (type="color").
-- `default` — имя цвета из Color.* (используется для построения ARGB-дефолта).
local COLOR_SETTINGS = {
-- Default text color = terminal_text_body
	{ id = "dump_stat",		  default = "terminal_text_body" },
	{ id = "dump_stat2",	  default = "terminal_text_body" },
	{ id = "dump_stat3",	  default = "terminal_text_body" },

	{ id = "bleed",			  default = "ui_zealot" },
	{ id = "brittleness",	  default = "medium_orchid" },
	{ id = "burn",			  default = "sienna" },
	{ id = "cleave",		  default = "indian_red" },
	{ id = "coherency",		  default = "citadel_kindleflame" },
	{ id = "combat_ability",  default = "olive_drab" },
	{ id = "corruption",	  default = "ui_corruption_medium" },
	{ id = "crit",			  default = "citadel_yriel_yellow" },
	{ id = "damage",		  default = "citadel_jokaero_orange" },
	{ id = "electrocuted",	  default = "citadel_stormfang" },
	{ id = "finesse",		  default = "dodger_blue" },
	{ id = "health",		  default = "red" },
	{ id = "hit_mass",		  default = "item_rarity_dark_2" },
	{ id = "impact",		  default = "sea_green" },
	{ id = "peril",			  default = "ui_orange_dark" },
	{ id = "power",			  default = "steel_blue" },
	{ id = "rending",		  default = "violet" },
	{ id = "soulblaze",		  default = "ui_toughness_default" },
	{ id = "stagger",		  default = "terminal_background_selected" },
	{ id = "stamina",		  default = "light_salmon" },
	{ id = "toughness",		  default = "ui_difficulty_1" },
	{ id = "weakspot",		  default = "green_yellow" },

-- Classes
	-- Psyker
	{ id = "class_psyker",	  default = "player_slot_4" },
	{ id = "precision",		  default = "ui_psyker" },
	-- Ogryn
	{ id = "class_ogryn",	  default = "player_slot_3" },
	{ id = "fnp",			  default = "light_coral" },
	{ id = "luckyb",		  default = "orange" },
	{ id = "trample",		  default = "mb_terminal_base" },
	-- Zealot
	{ id = "class_zealot",	  default = "player_slot_2" },
	{ id = "fury",			  default = "hot_pink" },
	{ id = "momentum",		  default = "ui_red_super_light" },
	{ id = "stealth",		  default = "ui_grey_light" },
	-- Veteran
	{ id = "class_veteran",	  default = "player_slot_1" },
	{ id = "focus",			  default = "dark_violet" },
	{ id = "focust",		  default = "teal" },
	{ id = "meleespec",		  default = "ui_hud_red_light" },
	{ id = "rangedspec",	  default = "citadel_the_fang_grey" },
	-- Arbites
	{ id = "class_arbites",	  default = "plum" },
	-- Hive Scum
	{ id = "class_scum",	  default = "citadel_nurgling_green" },
	{ id = "chemtox",		  default = "online_green" },

-- Misc
	{ id = "talents",		  default = "ui_input_color" },
	{ id = "numbers",		  default = "ui_hud_yellow_super_light" },
	{ id = "variables",		  default = "ui_hud_yellow_super_light" },
	{ id = "note",			  default = "terminal_text_warning_dark" },
	{ id = "warning",		  default = "item_rarity_6" },

-- Difficulty
	{ id = "uprising",		  default = "ui_difficulty_1" },
	{ id = "malice",		  default = "ui_difficulty_2" },
	{ id = "heresy",		  default = "ui_difficulty_3" },
	{ id = "damnation",		  default = "ui_difficulty_4" },
	{ id = "auric",			  default = "ui_difficulty_5" },
}

-- ---------------------------------------------------------------------------
-- Helpers
-- ---------------------------------------------------------------------------

-- Имя цвета ("ui_zealot") → ARGB {A, R, G, B} (0..255).
-- Используется для построения default_value color-виджетов.
local function named_color_to_argb(name, alpha)
	local ctor = Color[name]
	if not ctor then
		return { alpha or 255, 255, 255, 255 }
	end
	local c = ctor(alpha or 255, true)
	if not c or #c < 4 then
		return { alpha or 255, 255, 255, 255 }
	end
	return { c[1], c[2], c[3], c[4] }
end

-- ---------------------------------------------------------------------------
-- Widget constructors — new DMF API
-- ---------------------------------------------------------------------------
local function checkbox_widget(setting_id, default_value, overrides)
	local w = {
		setting_id	  = setting_id,
		type		  = "checkbox",
		default_value = default_value,
	}
	if overrides then
		for k, v in pairs(overrides) do w[k] = v end
	end
	return w
end

local function dropdown_widget(setting_id, options, default_value, overrides)
	local w = {
		setting_id	  = setting_id,
		type		  = "dropdown",
		default_value = default_value,
		options		  = options,
	}
	if overrides then
		for k, v in pairs(overrides) do w[k] = v end
	end
	return w
end

-- ---------------------------------------------------------------------------
-- Preset application (called from main script via mod.apply_color_preset)
-- ---------------------------------------------------------------------------
local function apply_color_preset(preset)
	mod._applying_preset = true

	if preset == "monochrome" then
		for i = 1, #COLOR_SETTINGS do
			mod:set(COLOR_SETTINGS[i].id .. "_text_colour", named_color_to_argb("terminal_text_body", 255))
		end
	elseif preset == "default" then
		for i = 1, #COLOR_SETTINGS do
			mod:set(COLOR_SETTINGS[i].id .. "_text_colour", named_color_to_argb(COLOR_SETTINGS[i].default, 255))
		end
	else
		mod:warning("Unknown preset: %s", tostring(preset))
		mod._applying_preset = false
		return
	end

	mod._applying_preset = false
	mod:clear_color_cache()
	mod:reload_templates()
	mod:info("Color preset applied: %s", preset)
end

mod.apply_color_preset = apply_color_preset

-- ---------------------------------------------------------------------------
-- Main options configuration
-- ---------------------------------------------------------------------------
local options = {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	options = {
		widgets = {},
	},
}

-- 1. General settings group
local general_settings_group = {
	setting_id = "general_settings_group",
	type = "group",
	sub_widgets = {
		dropdown_widget("language_override", SUPPORTED_LANGUAGES, DEFAULT_SETTINGS.language_override),
	},
}

-- 2. Presets group
local presets_group = {
	setting_id = "presets_group",
	type = "group",
	sub_widgets = {
		{
			setting_id	  = "color_preset",
			type		  = "dropdown",
			default_value = DEFAULT_SETTINGS.color_preset,
			options = {
				{ value = "default",	text = "color_preset_default" },
				{ value = "monochrome", text = "color_preset_monochrome" },
			},
		},
	},
}

-- 3. Modules group
local modules_group = {
	setting_id = "modules_group",
	type = "group",
	sub_widgets = {},
}

local main_modules = {
	"enable_talents_file",
	"enable_weapons_file",
	"enable_curious_file",
	"enable_penances_file",
	"enable_menus_file",
	"enable_names_file",
	"enable_names_tal_bless_file",
	"enable_debug_mode",
}

for i = 1, #main_modules do
	local setting_id = main_modules[i]
	modules_group.sub_widgets[#modules_group.sub_widgets + 1] =
		checkbox_widget(setting_id, DEFAULT_SETTINGS[setting_id])
end

-- 4. Colors group — плоский список color-виджетов.
-- Название виджета берётся из локализации <id>_colour (например, bleed_colour).
local colors_group = {
	setting_id = "colors_group",
	type = "group",
	sub_widgets = {},
}

for i = 1, #COLOR_SETTINGS do
	local cs = COLOR_SETTINGS[i]
	colors_group.sub_widgets[#colors_group.sub_widgets + 1] = {
		setting_id	  = cs.id .. "_text_colour",
		type		  = "color",
		has_alpha	  = false,
		default_value = named_color_to_argb(cs.default, 255),
	}
end

-- Register all groups
options.options.widgets[#options.options.widgets + 1] = general_settings_group
options.options.widgets[#options.options.widgets + 1] = presets_group
options.options.widgets[#options.options.widgets + 1] = modules_group
options.options.widgets[#options.options.widgets + 1] = colors_group

-- ---------------------------------------------------------------------------
-- Ensure defaults are set for the very first launch
-- ---------------------------------------------------------------------------
for setting_id, default_value in pairs(DEFAULT_SETTINGS) do
	if mod:get(setting_id) == nil then
		mod:set(setting_id, default_value)
	end
end

-- ---------------------------------------------------------------------------
-- Экспорт для миграции в main script: список id цветовых настроек и их
-- default-имён. Используется в Enhanced_descriptions.lua → migrate_legacy_colors.
-- ---------------------------------------------------------------------------
mod._color_setting_ids = {}
mod._color_defaults = {}
for i = 1, #COLOR_SETTINGS do
	local sid = COLOR_SETTINGS[i].id .. "_text_colour"
	mod._color_setting_ids[i] = sid
	mod._color_defaults[sid] = COLOR_SETTINGS[i].default
end

return options
