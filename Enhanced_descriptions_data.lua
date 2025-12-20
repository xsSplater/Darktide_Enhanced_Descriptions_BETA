---@diagnostic disable: undefined-global
-- The main file needed for this mod's menu to work.
-- FOR TRANSLATORS: YOU DON'T NEED TO DO ANYTHING IN THIS FILE!

local mod = get_mod("Enhanced_descriptions")

-- CONSTANTS AND CONFIGURATION
local DEFAULT_SETTINGS = {
	-- Main modules
	enable_menus_file =				true,
	enable_curious_file =			true,
	enable_penances_file =			true,
	enable_weapons_file =			true,
	enable_talents_file =			true,
	enable_names_file =				true,
	enable_names_tal_bless_file =	true,
	enable_debug_mode =				false,

}

local COLOR_SETTINGS = {
	-- Default text color = terminal_text_body
	{ id = "bleed",				default = "ui_zealot" },
	{ id = "brittleness",		default = "medium_orchid" },
	{ id = "burn",				default = "sienna" },
	{ id = "cleave",			default = "player_slot_2_bright" },
	{ id = "coherency",			default = "citadel_kindleflame" },
	{ id = "combat_ability",	default = "olive_drab" },
	{ id = "corruption",		default = "ui_corruption_medium" },
	{ id = "crit",				default = "citadel_yriel_yellow" },
	{ id = "damage",			default = "citadel_jokaero_orange" },
	{ id = "electrocuted",		default = "citadel_stormfang" },
	{ id = "finesse",			default = "dodger_blue" },
	{ id = "health",			default = "red" },
	{ id = "hit_mass",			default = "item_rarity_dark_2" },
	{ id = "impact",			default = "sea_green" },
	{ id = "peril",				default = "ui_orange_dark" },
	{ id = "power",				default = "steel_blue" },
	{ id = "rending",			default = "violet" },
	{ id = "soulblaze",			default = "ui_toughness_default" },
	{ id = "stagger",			default = "terminal_background_selected" },
	{ id = "stamina",			default = "light_salmon" },
	{ id = "toughness",			default = "ui_difficulty_1" },
	{ id = "weakspot",			default = "green_yellow" },

	-- Classes
	{ id = "class_psyker",		default = "player_slot_4" },
	{ id = "precision",			default = "ui_psyker" },
	{ id = "class_ogryn",		default = "player_slot_3" },
	{ id = "fnp",				default = "light_coral" },
	{ id = "luckyb",			default = "orange" },
	{ id = "trample",			default = "dark_olive_green" },
	{ id = "class_zealot",		default = "player_slot_2" },
	{ id = "fury",				default = "hot_pink" },
	{ id = "momentum",			default = "ui_red_super_light" },
	{ id = "stealth",			default = "ui_grey_light" },
	{ id = "class_veteran",		default = "player_slot_1" },
	{ id = "focus",				default = "dark_violet" },
	{ id = "focust",			default = "teal" },
	{ id = "meleespec",			default = "ui_hud_red_light" },
	{ id = "rangedspec",		default = "citadel_the_fang_grey" },
	{ id = "class_arbites",		default = "plum" },
	{ id = "class_scum",		default = "citadel_nurgling_green" },
	{ id = "chemtox",			default = "online_green" },

	-- Misc
	{ id = "talents",			default = "ui_input_color" },
	{ id = "numbers",			default = "ui_hud_yellow_super_light" },
	{ id = "variables",			default = "ui_hud_yellow_super_light" },
	{ id = "note",				default = "terminal_text_warning_dark" },
	{ id = "warning",			default = "item_rarity_6" },

	-- Difficulty
	{ id = "uprising",			default = "ui_difficulty_1" },
	{ id = "malice",			default = "ui_difficulty_2" },
	{ id = "heresy",			default = "ui_difficulty_3" },
	{ id = "damnation",			default = "ui_difficulty_4" },
	{ id = "auric",				default = "ui_difficulty_5" },
}
-- УДАЛЕНЫ! Очищаются в Enhanced_descriptions.lua
	-- { id = "talents_penances",	default = "forest_green" },
	-- { id = "sedition",			default = "terminal_text_body" },

-- UTILITY FUNCTIONS
local function create_checkbox_widget(setting_id, default_value)
	return {
		name = mod:localize(setting_id),
		setting_id = setting_id,
		default_value = default_value,
		type = "checkbox",
		description = mod:localize(setting_id .. "_description"),

		change = function(new_value)
			mod:set(setting_id, new_value)
			-- The on_setting_changed handler in main file will handle the reload
		end,
		get = function()
			return mod:get(setting_id)
		end
	}
end

local function get_color_options()
	local color_options = {}
	for _, color_name in ipairs(Color.list) do
		table.insert(color_options, {
			text = color_name,
			value = color_name
		})
	end
	table.sort(color_options, function(a, b)
		return a.text < b.text
	end)
	return color_options
end

-- Cache the color options since they don't change
local color_options_cache = get_color_options()

local function create_color_option_group(color_setting)
	return {
		setting_id = color_setting.id .. "_colour",
		type = "group",
		sub_widgets = {
			{
				setting_id = color_setting.id .. "_text_colour",
				type = "dropdown",
				default_value = color_setting.default,
				options = get_color_options()
			}
		}
	}
end

-- MAIN OPTIONS CONFIGURATION
local options = {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	options = {
		widgets = {}
	}
}

-- Add main module checkboxes
local main_modules = {
	{ id = "enable_talents_file",			desc = "TALENTS Module" },
	{ id = "enable_weapons_file",			desc = "WEAPONS Module" },
	{ id = "enable_curious_file",			desc = "CURIOS Module" },
	{ id = "enable_penances_file",			desc = "PENANCES Module" },
	{ id = "enable_menus_file",				desc = "MENUS Module" },
	{ id = "enable_names_file",				desc = "NAMES Module - Weapons and Enemies" },
	{ id = "enable_names_tal_bless_file",	desc = "NAMES Module - Talents and Blessings" },
	{ id = "enable_debug_mode",				desc = "Debug Mode" }
}

for _, module in ipairs(main_modules) do
	table.insert(options.options.widgets, create_checkbox_widget(
		module.id, 
		DEFAULT_SETTINGS[module.id]
	))
end

-- Add color options
for _, color_setting in ipairs(COLOR_SETTINGS) do
	table.insert(options.options.widgets, create_color_option_group(color_setting))
end

-- INITIALIZATION
-- Ensure default settings are set
for setting_id, default_value in pairs(DEFAULT_SETTINGS) do
	if mod:get(setting_id) == nil then
		mod:set(setting_id, default_value)
	end
end

return options
