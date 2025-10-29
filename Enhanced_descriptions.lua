---@diagnostic disable: undefined-global
-- Version 4.0
-- FOR TRANSLATORS: YOU DON'T NEED TO DO ANYTHING IN THIS FILE!

local mod = get_mod("Enhanced_descriptions")

-- Main Modules Location
local location = "Enhanced_descriptions/Main_Modules/"

-- CONSTANTS
local LOCALIZATION_FILES = {
	MENUS = "enable_menus_file",
	CURIOS_Blessings_Perks = "enable_curious_file", 
	WEAPONS_Blessings_Perks = "enable_weapons_file",
	TALENTS = "enable_talents_file",
	PENANCES = "enable_penances_file",
	NAMES_Enemies_Weapons = "enable_names_file",
	NAMES_Talents_Blessings = "enable_names_tal_bless_file"
}

local BUTTON_OFFSETS = {
	InventoryWeaponsView = "equip_button",
	MarksVendorView = "purchase_button", 
	InventoryWeaponMarksView = "equip_button"
}

local RELOAD_DELAY = 0.1 -- seconds

-- FIXES FOR DESCRIPTIONS - ФИКСЫ ДЛЯ ОПИСАНИЙ
	-- loc_key = {
		-- value
			-- fix }
local FIXES = {
-- BLESSINGS - БЛАГОСЛОВЕНИЯ
	--[+ OVERLOAD +]--
	-- "+25% Heat is reduced immediately..." -- Removed "+".
	loc_explosion_on_overheat_lockout_desc = {
		overheat_reduction = function(value)
			return tostring(value):gsub("^+", "")
		end
	},
	--[+ WRATH +]--
	-- "+50% Cleave on Hit..." -- Removed "+".
	loc_trait_bespoke_chained_hits_increases_cleave_desc = {
		cleave = function(value)
			return tostring(value):gsub("^+", "")
		end
	},
	--[+ HEATSINK +]--
	-- "+10% Heat..." -- Removed "+" and replaced with "-".
	loc_reduce_fixed_overheat_amount_desc = {
		amount = function(value)
			return tostring(value):gsub("^+", "")
		end
	},
	--[+ SLOW AND STEADY +]--
	-- "Up to +8% Toughness recovered..." -- Removed "+".
	loc_trait_bespoke_toughness_on_hit_based_on_charge_time_desc = {
		toughness = function(value)
			return tostring(value):gsub("^+", "")
		end
	},
	--[+ FOCUSED COOLING +]--
	-- "+60% Heat generation..." -- Removed "+".
	loc_trait_bespoke_reduced_overheat_on_crits_desc = {
		heat_percentage = function(value)
			return tostring(value):gsub("^+", "")
		end
	},

-- TALENTS - ТАЛАНТЫ
	--[+ NODES - УЗЛЫ +]--
		--[+ Peril Resistance Medium +]--
		-- "+10.00% Peril Generation." -- Removed ".00".
	loc_talent_warp_charge_low_desc = {
		warp_charge = function(value)
			return tostring(value):gsub("%.00%%", "%%")
		end
	},
	--[+ PSYKER - ПСАЙКЕР +]--
		--[+ ABILITY 1-3 - Creeping Flames +]--
		-- "Venting Shriek applies 1 - 6 Stacks..." -- Removed " -" from number "1 -".
	loc_talent_psyker_warpfire_on_shout_desc = {
		min_stacks = function(value)
			return tostring(value):gsub("%s*%-%s*", "")
		end
	}

}

-- hook for fixes
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
local is_initialized = false

-- SETTINGS CHANGE HANDLER
local settings_change_timer = 0
local pending_settings_reload = false

local function should_reload_for_setting(setting_id)
	return  string.find(setting_id, "enable_") or 
			string.find(setting_id, "enhanced_descriptions") or
			string.find(setting_id, "_text_colour") -- Включаем изменения цветов
end

local function on_setting_changed(setting_id)
	mod:info("Setting changed: " .. setting_id)

	if should_reload_for_setting(setting_id) then
		mod:info("Reloading localization templates due to setting change...")
		pending_settings_reload = true
		settings_change_timer = 0
	end
end

-- MODULE LOADING
local function load_localization_file(file_name, setting_name)
	if not mod:get(setting_name) then
		return {}
	end

	local success, file_templates = pcall(function()
		return mod:io_dofile(location .. file_name)
	end)

	if success and file_templates then
		mod:info("Loaded localization file: " .. file_name)
		return file_templates
	else
		mod:error("Failed to load localization file: " .. file_name .. ": " .. tostring(file_templates))
		return {}
	end
end

local function load_all_templates()
	local templates = {}
	local loaded_files = 0

	for file_name, setting_name in pairs(LOCALIZATION_FILES) do
		local file_templates = load_localization_file(file_name, setting_name)
		for _, template in ipairs(file_templates) do
			templates[#templates + 1] = template
		end
		if #file_templates > 0 then
			loaded_files = loaded_files + 1
		end
	end

	mod:info(string.format("Successfully loaded %d localization files with %d total templates", 
		loaded_files, #templates))
	return templates
end

-- TEMPLATE REGISTRATION
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

-- MAIN RELOAD FUNCTION
function mod.reload_templates()
	if not Managers or not Managers.localization then
		mod:info("Managers not available, cannot reload templates")
		return false
	end

	-- Clear cache for fresh reload
	if Managers.localization._string_cache then
		table.clear(Managers.localization._string_cache)
	end

	-- Load and register templates
	local current_lang = Managers.localization._language
	local all_templates = load_all_templates()
	register_template_fixes(all_templates, current_lang)

	-- Count statistics
	local total_keys = 0
	for _ in pairs(registered_fixes) do
		total_keys = total_keys + 1
	end

	is_initialized = true
	mod:info(string.format("Localization templates reloaded for %s: %d keys, %d templates", 
		current_lang, total_keys, #all_templates))
	return true
end

-- UI OFFSETS SYSTEM
local function setup_button_offsets()
	for class_name, widget_name in pairs(BUTTON_OFFSETS) do
		if CLASS[class_name] then
			mod:hook_safe(CLASS[class_name], "on_enter", function(self)
				if self._widgets_by_name and self._widgets_by_name[widget_name] then
					self._widgets_by_name[widget_name].offset = {-622, 20, 0}
				end
			end)
		else
			mod:warning("Class not found for button offset: " .. class_name)
		end
	end
end

local function setup_window_offsets()
	mod:hook_safe("ViewElementWeaponInfo", "_create_bar_breakdown_widgets", function(self)
		local OFFSET = 200
		local scenegraph = self._ui_scenegraph

		if scenegraph.bar_breakdown_slate then
			scenegraph.bar_breakdown_slate.world_position[2] = scenegraph.bar_breakdown_slate.world_position[2] - OFFSET
		end

		if scenegraph.entry then
			scenegraph.entry.world_position[2] = scenegraph.entry.world_position[2] - OFFSET
		end
	end)
end

-- HOOKS AND CALLBACKS
-- Localization hook with better error handling
mod:hook(LocalizationManager, "_process_string", function(func, self, key, raw_str, context)
	local fixes = registered_fixes[key]

	if not fixes then
		return func(self, key, raw_str, context or {})
	end

	local modified_str = raw_str
	for i = 1, #fixes do
		local success, result = pcall(fixes[i], Managers.localization._language, modified_str, context or {})

		if success and type(result) == "string" then
			modified_str = result
		elseif not success then
			mod:error("Localization handler failed for key '%s': %s", key, result)
			-- Continue with previous string if handler fails
		end
	end

	return func(self, key, modified_str, context or {})
end)

-- MOD LIFECYCLE
function mod.on_all_mods_loaded()
	setup_button_offsets()
	setup_window_offsets()
	mod.reload_templates()
end

function mod.on_enabled()
	mod.reload_templates()
end

function mod.on_disabled()
	if Managers and Managers.localization and Managers.localization._string_cache then
		table.clear(Managers.localization._string_cache)
	end
	table.clear(registered_fixes)
	is_initialized = false
	pending_settings_reload = false
end

-- Update function for delayed reload
mod.update = function(dt)
	if pending_settings_reload then
		settings_change_timer = settings_change_timer + dt
		if settings_change_timer >= RELOAD_DELAY then
			if mod.reload_templates() then
				mod:notify("Enhanced Descriptions updated")
			end
			pending_settings_reload = false
			settings_change_timer = 0
		end
	end
end

-- Register setting change handler
mod.on_setting_changed = on_setting_changed

-- COMMANDS AND UTILITIES
mod:command("reload_descriptions", "Reload Enhanced Descriptions", function()
	if mod.reload_templates() then
		mod:notify("Enhanced Descriptions reloaded successfully")
	else
		mod:notify("Failed to reload Enhanced Descriptions")
	end
end)

function mod.get_localization_stats()
	local total_keys = 0
	for _ in pairs(registered_fixes) do
		total_keys = total_keys + 1
	end

	local loaded_files = 0
	for _, setting_name in pairs(LOCALIZATION_FILES) do
		if mod:get(setting_name) then
			loaded_files = loaded_files + 1
		end
	end

	return {
		initialized = is_initialized,
		total_localization_keys = total_keys,
		current_language = Managers and Managers.localization and Managers.localization._language or "unknown",
		loaded_files = loaded_files,
		total_files = table.size(LOCALIZATION_FILES)
	}
end

mod:command("desc_stats", "Show Enhanced Descriptions statistics", function()
	local stats = mod.get_localization_stats()
	local message = string.format(
		"Enhanced Descriptions Stats:\nInitialized: %s\nLanguage: %s\nKeys: %d\nFiles: %d/%d",
		tostring(stats.initialized),
		stats.current_language,
		stats.total_localization_keys,
		stats.loaded_files,
		stats.total_files
	)
	mod:echo(message)
end)


-- INITIALIZATION
mod:info("Enhanced Descriptions mod loaded with improved architecture")
