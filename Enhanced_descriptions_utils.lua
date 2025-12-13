---@diagnostic disable: undefined-global
-- Общая библиотека утилит для всех модулей Enhanced Descriptions

local mod = get_mod("Enhanced_descriptions")

-- Глобальные кэши для цветов и цифр
local _global_colors_cache = nil
local _global_numbers_cache = nil

-- Функция для получения глобального кэша цветов
local function get_global_colors()
	if not _global_colors_cache then
		local colors_data = mod.get_current_language_colors()
		_global_colors_cache = colors_data[2] or {}
	end
	return _global_colors_cache
end

-- Функция для получения глобального кэша цифр
local function get_global_numbers()
	if not _global_numbers_cache then
		local colors_data = mod.get_current_language_colors()
		_global_numbers_cache = colors_data[1] or {}
	end
	return _global_numbers_cache
end

-- Умный CKWord - теперь понимает цифры и ключевые слова
local function CKWord(fallback_text, key_or_table, maybe_key)
	local color_table, key

	if maybe_key == nil then
		key = key_or_table
		-- Автоматически определяем, где искать:
		-- 1. Сначала пробуем в ключевых словах
		local colors_data = get_global_colors()
		color_table = colors_data.keywords or {}
		-- 2. Если не нашли в ключевых словах, пробуем в цифрах
		if not color_table[key] then
			local numbers_data = get_global_numbers()
			color_table = numbers_data
			-- 3. Если и там нет, возвращаем к ключевым словам (для fallback)
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

-- Функция для цифр для удобства
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

-- Функция для получения цветных цифр с суффиксом
local function get_number_color(number_value)
	-- Преобразуем число в строку и добавляем суффикс _rgb
	local key = tostring(number_value) .. "_rgb"
	return CNumb(number_value, key)
end

-- Остальные функции...
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

-- Функция создания шаблона
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end

-- Функция для статичного текста
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

-- ЧАСТО ПОВТОРЯЕМЫЕ ФРАЗЫ
local function CPhrs(key, language)
	local colors_data = get_global_colors()

	if not colors_data or not colors_data.phrs then
		return ""
	end

	-- Если передан язык, используем его
	if language and language ~= "en" then
		local lang_key = key .. "_" .. language
		if colors_data.phrs[lang_key] then
			return colors_data.phrs[lang_key]
		end

		-- Специальные случаи
		if language == "zh-cn" then
			lang_key = key .. "_zh_cn"
		elseif language == "zh-tw" then
			lang_key = key .. "_tw"
		elseif language == "pt-br" then
			lang_key = key .. "_pt_br"
		end

		if colors_data.phrs[lang_key] then
			return colors_data.phrs[lang_key]
		end
	end

	return colors_data.phrs[key] or ""
end

-- ЗАМЕТКИ
local function CNote(key, language)
	local colors_data = get_global_colors()

	if not colors_data or not colors_data.nts then
		return ""
	end
	-- Добавляем _ и ключ локализации _en, _ru, etc
	if language and language ~= "en" then
		local lang_key = key .. "_" .. language
		if colors_data.nts[lang_key] then
			return colors_data.nts[lang_key]
		end
		-- Локализации с дефисом
		if language == "zh-cn" then
			lang_key = key .. "_zh_cn"
		elseif language == "zh-tw" then
			lang_key = key .. "_tw"
		elseif language == "pt-br" then
			lang_key = key .. "_pt_br"
		end

		if colors_data.nts[lang_key] then
			return colors_data.nts[lang_key]
		end
	end

	return colors_data.nts[key] or ""
end

-- Функция очистки глобального кэша
local function clear_global_cache()
	_global_colors_cache = nil
	_global_numbers_cache = nil
end

-- Константы
local DOT_RED = "{#color(255, 35, 5)}•{#reset()}"
local DOT_NC = "•"
local DOT_GREEN = "{#color(35, 255, 5)}•{#reset()}"

-- Экспортируемый объект
local Utils = {
	get_colors = get_colors,
	get_number_color = get_number_color,
	create_template = create_template,
	clear_global_cache = clear_global_cache,
	loc_text = loc_text,
	CKWord = CKWord,	-- Умная функция для всего
	CNumb = CNumb,		-- Специально для цифр
	CPhrs = CPhrs,		-- Фразы
	CNote = CNote,		-- Заметки
	DOT_RED = DOT_RED,
	DOT_NC = DOT_NC,
	DOT_GREEN = DOT_GREEN,
}

return Utils
