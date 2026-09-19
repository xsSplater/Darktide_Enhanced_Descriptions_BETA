---@diagnostic disable: undefined-global
-- Общая библиотека утилит для всех модулей Enhanced Descriptions

-- Enhanced_descriptions_utils.lua

local mod = get_mod("Enhanced_descriptions")

-- Global caches for colors and numbers - Глобальные кэши для цветов и цифр
local _global_colors_cache = nil
local _global_numbers_cache = nil

-- Function for getting the global color cache - Функция для получения глобального кэша цветов
local function get_global_colors()
	if not _global_colors_cache then
		local colors_data = mod.get_current_language_colors()
		_global_colors_cache = colors_data[2] or {}
	end
	return _global_colors_cache
end

-- Function to get the global cache of digits - Функция для получения глобального кэша цифр
local function get_global_numbers()
	if not _global_numbers_cache then
		local colors_data = mod.get_current_language_colors()
		_global_numbers_cache = colors_data[1] or {}
	end
	return _global_numbers_cache
end

-- Function to get the current language - Функция для получения текущего языка
local function get_current_language()
	local colors_data = {}
	
	if mod and mod.get_current_language_colors then
		local success, data = pcall(function()
			return mod.get_current_language_colors()
		end)
		
		if success and data then
			colors_data = data
		end
	end
	
	if colors_data and #colors_data >= 3 then
		return colors_data[3] or "en"
	end
	
	return "en"
end

-- Smart CKWord - understands Numbers and Keywords - Умный CKWord - понимает цифры и ключевые слова
local function CKWord(fallback_text, key_or_table, maybe_key)
	local color_table, key

	if maybe_key == nil then
		key = key_or_table
		-- Automatically determine where to look - Автоматически определяем, где искать:
		-- 1. First, try to search in Keywords. - Сначала пробуем в ключевых словах
		local colors_data = get_global_colors()
		color_table = colors_data.keywords or {}
		-- 2. If didn’t find it in Keywords, try in Numbers - Если не нашли в ключевых словах, пробуем в цифрах
		if not color_table[key] then
			local numbers_data = get_global_numbers()
			color_table = numbers_data
			-- 3. If it's not there either, return to the Keywords (for fallback) - Если и там нет, возвращаем к ключевым словам (для fallback)
			if not color_table[key] then
				color_table = colors_data.keywords or {}
			end
		end
	else
		color_table = key_or_table
		key = maybe_key
	end

	if not color_table or type(color_table) ~= "table" then
		return fallback_text or ""
	end
	local color = color_table[key]
	if color then
		return color
	end

	return fallback_text or ""
end

-- Function for numbers for convenience - Функция для цифр для удобства
local function CNumb(fallback_text, key)
	local numbers_data = get_global_numbers()
	
	if not numbers_data or type(numbers_data) ~= "table" then
		return fallback_text or ""
	end
	
	local number = numbers_data[key]
	if number then
		return number
	end
	
	return fallback_text or ""
end

-- Function to get colored numbers with a suffix - Функция для получения цветных цифр с суффиксом
local function get_number_color(number_value)
	-- Convert the number to a string and add the _rgb suffix - Преобразуем число в строку и добавляем суффикс _rgb
	local key = tostring(number_value) .. "_rgb"
	return CNumb(number_value, key)
end

-- Other functions - Остальные функции
local function get_colors()
	local colors_data = {}
	
	if mod and mod.get_current_language_colors then
		local success, data = pcall(function()
			return mod.get_current_language_colors()
		end)
		
		if success and data then
			colors_data = data
		end
	end
	
	if colors_data and #colors_data >= 3 then
		return colors_data[1] or {}, colors_data[2] or {}, colors_data[3] or "en"
	end
	
	return {}, {}, "en"
end

-- Template creation function - Функция создания шаблона
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end

-- Function for static text - Функция для статичного текста
local function loc_text(text)
	if type(text) == "table" then
		return function(locale) 
			return text[locale] or text["en"] or ""
		end
	end
	return function() 
		return text
	end
end

-- FREQUENTLY REPEATED PHRASES - ЧАСТО ПОВТОРЯЕМЫЕ ФРАЗЫ
local function CPhrs(key)
	local colors_data = get_global_colors()
	local current_lang = get_current_language()

	if not colors_data or not colors_data.phrs then
		return ""
	end

	-- If it's not English, look for a localized version - Если не английский, ищем локализованную версию
	if current_lang and current_lang ~= "en" then
		local lang_key = key .. "_" .. current_lang
		if colors_data.phrs[lang_key] then
			return colors_data.phrs[lang_key]
		end

		-- Special cases for hyphenated languages - Специальные случаи для языков с дефисом
		if current_lang == "zh-cn" then
			lang_key = key .. "_zh_cn"
		elseif current_lang == "zh-tw" then
			lang_key = key .. "_tw"
		elseif current_lang == "pt-br" then
			lang_key = key .. "_pt_br"
		end

		if colors_data.phrs[lang_key] then
			return colors_data.phrs[lang_key]
		end
	end

	-- Fallback in English - Откат на английский
	return colors_data.phrs[key] or ""
end

-- NOTES - ЗАМЕТКИ
local function CNote(key)
	local colors_data = get_global_colors()
	local current_lang = get_current_language()

	if not colors_data or not colors_data.nts then
		return ""
	end
	
	if current_lang and current_lang ~= "en" then
		local lang_key = key .. "_" .. current_lang
		if colors_data.nts[lang_key] then
			return colors_data.nts[lang_key]
		end
		
		if current_lang == "zh-cn" then
			lang_key = key .. "_zh_cn"
		elseif current_lang == "zh-tw" then
			lang_key = key .. "_tw"
		elseif current_lang == "pt-br" then
			lang_key = key .. "_pt_br"
		end

		if colors_data.nts[lang_key] then
			return colors_data.nts[lang_key]
		end
	end

	return colors_data.nts[key] or ""
end

-- Global cache clearing function - Функция очистки глобального кэша
local function clear_global_cache()
	_global_colors_cache = nil
	_global_numbers_cache = nil
end

-- Constants - Константы
local DOT_RED = "{#color(255, 35, 5)}•{#reset()}"
local DOT_NC = "•"
local DOT_GREEN = "{#color(35, 255, 5)}•{#reset()}"

-- Exported objects - Экспортируемый объекты
local Utils = {
	clear_global_cache = clear_global_cache,
	get_current_language = get_current_language,
	get_number_color = get_number_color,
	create_template = create_template,
	get_colors = get_colors,
	loc_text = loc_text,
	CKWord = CKWord,						-- Smart function for everything - Умная функция для всего
	CNumb = CNumb,							-- Especially for numbers - Специально для цифр
	CPhrs = CPhrs,							-- Phrases - Фразы
	CNote = CNote,							-- Notes - Заметки
	DOT_NC = DOT_NC,
	DOT_RED = DOT_RED,
	DOT_GREEN = DOT_GREEN,
}

-- ============================================================================
-- Color helpers (for type="color" settings; legacy string values also accepted)
-- ============================================================================

-- Возвращает ARGB таблицу {A, R, G, B} (0..255) из настройки.
-- Поддерживает:
--	 * новый формат		 — таблица {A, R, G, B} (0..255) от DMF type="color"
--	 * legacy (старые сейвы) — строка "red", "online_green", ...
--	 * Vector4/Color userdata — через normalize
-- Если ничего не подходит — возвращает fallback_color_name (default "white")
-- или чистый белый.
local function get_argb_from_setting(setting_id, fallback_color_name)
	local value = mod:get(setting_id)

	-- Новый формат: таблица {A, R, G, B} (0..255)
	if type(value) == "table" and #value >= 4 then
		return value
	end

	-- Userdata (Vector4/Color) — разворачиваем через ColorUtils (если доступно)
	if type(value) == "userdata" then
		local ok, unpacked = pcall(function()
			local v = value
			return { v[1], v[2], v[3], v[4] }
		end)
		if ok and unpacked and #unpacked == 4 and unpacked[1] then
			return unpacked
		end
	end

	-- Legacy: строка с именем цвета
	if type(value) == "string" and value ~= "" then
		local ctor = Color[value]
		if ctor then
			local c = ctor(255, true)
			if c and #c >= 4 then
				return { c[1], c[2], c[3], c[4] }
			end
		end
	end

	-- Fallback по имени
	local fb = fallback_color_name or "white"
	local ctor = Color[fb]
	if ctor then
		local c = ctor(255, true)
		if c and #c >= 4 then
			return { c[1], c[2], c[3], c[4] }
		end
	end

	return { 255, 255, 255, 255 }
end

-- Оборачивает текст в DT markup-цвет: {#color(r,g,b)}text{#reset()}.
-- Использует R, G, B из ARGB-таблицы (alpha игнорируется — для текста в DT
-- альфа задаётся отдельно, если вообще нужна).
local function wrap_in_color(text, argb)
	if type(argb) ~= "table" or #argb < 4 then
		return text
	end
	return string.format("{#color(%d,%d,%d)}%s{#reset()}", argb[2], argb[3], argb[4], text)
end

-- Публичный API
Utils.get_argb_from_setting = get_argb_from_setting
Utils.wrap_in_color			= wrap_in_color

return Utils
