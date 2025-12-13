---@diagnostic disable: undefined-global
-- Debug commands for Enhanced Descriptions mod
-- Simple and reliable commands only

local mod = get_mod("Enhanced_descriptions")

-- Основные команды
mod:command("ed_reload", "Reload Enhanced Descriptions", function()
	if mod.reload_localization then
		mod.reload_localization()
	elseif mod.reload_templates then
		mod.reload_templates()
	end
	mod:notify("Enhanced Descriptions reloaded")
end)

mod:command("ed_clear_cache", "Clear color cache", function()
	if mod.clear_color_cache then
		mod.clear_color_cache()
		mod:notify("Color cache cleared")
	else
		mod:notify("clear_color_cache not available")
	end
end)

mod:command("ed_status", "Show mod status", function()
	local lang = "unknown"
	if Managers and Managers.localization then
		lang = Managers.localization._language or "unknown"
	end
	
	local fixes_count = 0
	if mod.registered_fixes then
		for _, v in pairs(mod.registered_fixes) do
			if v then
				fixes_count = fixes_count + #v
			end
		end
	end
	
	local color_cache_status = "not loaded"
	if mod._color_cache then
		if mod._color_cache.keywords then
			color_cache_status = "keywords loaded"
		else
			color_cache_status = "empty"
		end
	end
	
	mod:echo(string.format([[
Enhanced Descriptions Status:
Language: %s
Templates: %d
Color cache: %s
Debug mode: %s]], 
		lang,
		fixes_count,
		color_cache_status,
		mod:get("enable_debug_mode") and "enabled" or "disabled"
	))
end)

-- Команда для проверки памяти
mod:command("ed_mem", "Show memory usage", function()
	local mem_kb = collectgarbage("count")
	local mem_mb = mem_kb / 1024
	mod:echo(string.format("Memory: %.2f MB (%.0f KB)", mem_mb, mem_kb))
end)

-- Команда для принудительной сборки мусора
mod:command("ed_gc", "Force garbage collection", function()
	collectgarbage("collect")
	mod:notify("Garbage collection complete")
end)

-- Команда для проверки цвета
mod:command("ed_test_color", "Test if colors work", function()
	if not mod._color_cache or not mod._color_cache.keywords then
		mod:echo("Color cache not loaded")
		return
	end
	
	local keywords = mod._color_cache.keywords
	
	-- Проверяем несколько ключей
	local test_keys = {"Damage_rgb", "Toughness_rgb", "Crit_rgb"}
	local found = 0
	
	for _, key in ipairs(test_keys) do
		if keywords[key] then
			found = found + 1
			mod:echo(string.format("✓ %s: available", key))
		else
			mod:echo(string.format("✗ %s: NOT found", key))
		end
	end
	
	-- Проверяем русские ключи если текущий язык русский
	local current_lang = mod._color_cache.current_lang or "en"
	if current_lang == "ru" then
		mod:echo("\nRussian keys check:")
		local ru_keys = {"Damage_rgb_ru", "Toughness_rgb_ru"}
		for _, key in ipairs(ru_keys) do
			if keywords[key] then
				mod:echo(string.format("✓ %s: available", key))
			else
				mod:echo(string.format("✗ %s: NOT found", key))
			end
		end
	end
	
	mod:echo(string.format("\nTotal keys in cache: %d", table.size(keywords)))
end)

-- Команда для проверки языка
mod:command("ed_lang", "Show current language info", function()
	if not Managers or not Managers.localization then
		mod:echo("Localization manager not available")
		return
	end
	
	local current_lang = Managers.localization._language or "unknown"
	local cache_lang = mod._color_cache and mod._color_cache.current_lang or "unknown"
	
	mod:echo(string.format([[
Language Information:
Game language: %s
Cache language: %s
Match: %s]], 
		current_lang,
		cache_lang,
		current_lang == cache_lang and "✓ YES" or "✗ NO"
	))
	
	-- Проверяем поддержку языка
	local is_supported = false
	if mod.SUPPORTED_LANGUAGES then
		for _, lang in ipairs(mod.SUPPORTED_LANGUAGES) do
			if lang == current_lang then
				is_supported = true
				break
			end
		end
	end
	
	if is_supported then
		mod:echo(string.format("Language %s: ✓ SUPPORTED", current_lang))
	else
		mod:echo(string.format("Language %s: ✗ NOT SUPPORTED (fallback to English)", current_lang))
	end
end)

-- Команда для проверки модулей
mod:command("ed_modules", "Check enabled modules", function()
	local modules = {
		{id = "enable_talents_file", name = "Talents"},
		{id = "enable_weapons_file", name = "Weapons"},
		{id = "enable_curious_file", name = "Curios"},
		{id = "enable_penances_file", name = "Penances"},
		{id = "enable_menus_file", name = "Menus"},
		{id = "enable_names_file", name = "Names"},
		{id = "enable_names_tal_bless_file", name = "Names (Tal/Bless)"},
	}
	
	local enabled = 0
	local total = #modules
	
	mod:echo("Module status:")
	for _, module in ipairs(modules) do
		local is_enabled = mod:get(module.id)
		local status = is_enabled and "✓ ENABLED" or "✗ DISABLED"
		if is_enabled then enabled = enabled + 1 end
		mod:echo(string.format("  %s: %s", module.name, status))
	end
	
	mod:echo(string.format("\n%d of %d modules enabled", enabled, total))
end)

-- Команда для тестирования локализации
mod:command("ed_test_loc", "Test specific localization key", function(key)
	if not key or key == "" then
		mod:echo("Usage: /ed_test_loc <loc_key>")
		mod:echo("Example: /ed_test_loc loc_talent_cleave_boost_medium_desc")
		return
	end
	
	if not Managers or not Managers.localization then
		mod:echo("Localization manager not available")
		return
	end
	
	local success, result = pcall(function()
		return Managers.localization:localize(key)
	end)
	
	if success then
		mod:echo(string.format("Localization for '%s':", key))
		mod:echo("---")
		mod:echo(tostring(result))
		mod:echo("---")
		
		-- Проверяем есть ли фиксы для этого ключа
		if mod.registered_fixes and mod.registered_fixes[key] then
			mod:echo(string.format("✓ Has %d enhancement(s)", #mod.registered_fixes[key]))
		else
			mod:echo("✗ No enhancements for this key")
		end
	else
		mod:echo(string.format("✗ Error localizing '%s'", key))
	end
end)

-- Команда для быстрого сброса
mod:command("ed_reset", "Quick reset (clear cache + reload)", function()
	if mod.clear_color_cache then
		mod.clear_color_cache()
	end
	
	if mod.reload_templates then
		local success = mod.reload_templates()
		if success then
			mod:notify("Reset complete - cache cleared and templates reloaded")
		else
			mod:notify("Reset failed - could not reload templates")
		end
	else
		mod:notify("Reset failed - reload_templates not available")
	end
end)

-- Инициализация
mod:info("Enhanced Descriptions debug commands loaded")
