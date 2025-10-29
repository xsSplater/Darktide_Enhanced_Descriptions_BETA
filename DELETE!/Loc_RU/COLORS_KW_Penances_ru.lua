---@diagnostic disable: undefined-global
-- Version 4.0

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

-- Единая конфигурация русских талантов и пенансов
local CONFIG = {
	talents_penances_text_colour = {
		-- Veteran
		volley_fire = "Залповый огонь",
		snipcon = "Концентрация снайпера",
		executioner_stance = "Стойка палача",
		krak_gr = "Граната «Крак»",
		frag_gr = "Фугасная граната",
		smok_gr = "Дымовая граната",
		fcs_trg = "Важная цель!",
		scavenger = "Мусорщик",
		voiceoc = "Голос командира",
		firetim = "Боевая группа",
		infiltr = "Проникновение",
		closenkill = "Вблизи и насмерть",
		weapspec = "Специалист по оружию",
		survivalist = "Мастер выживания",

		-- Zealot
		shock_gren0 = "Оглушающая граната",
		shock_gren = "Оглушающая граната",
		fire_gren = "Граната «Испепеление»",
		shock_gren1 = "Оглушающая граната",
		shock_gren2 = "Оглушающая граната",
		chastise_wicked = "Кара нечестивых",
		chastise_wicked2 = "Кара нечестивых",
		fury_faithful = "Ярость верных",
		martydom = "Мученичество",
		holy_revenant = "Святой призрак",
		chorusosf = "Хор духовной стойкости",
		beaconop = "Маяк чистоты",
		klinvery = "Клинки веры",
		shroudf = "Поле скрытности",
		benedict = "Благословение",
		loner = "Одиночка",
		fanrage = "Ярость",
		momentum = "Моментум",
		inexor = "Неотвратимое правосудие",
		blazingp = "Пламенное благочестие",

		-- Psyker
		bburst = "Мозговой штурм",
		bburst0 = "Мозговой штурм",
		bburst1 = "Мозговой разрыв",
		bburst2 = "Мозговой разрыв",
		smite = "Кара",
		disrdest = "Разрушитель судеб",
		psy_wrath = "Гнев псайкерского меча",
		psy_wrath2 = "Высвобождение",
		telekshii = "Телекинетический щит",
		empsionics = "Усиленная псеника",
		assail = "Наскок",
		scriersgaze = "Взор провидца",
		kinetpres = "Присутствие кинетика",
		prescience = "Предвидение",
		seerspres = "Присутствие провидца",

		-- Ogryn
		bull_rush = "Бешеная атака",
		bull_rush2 = "Бешеная атака",
		bull_rush3 = "Бешеная атака",
		bull_rush4 = "Неукротимый",
		big_box = "Большая коробка боли",
		big_box2 = "Бомбы долой!",
		burstlimo = "Перегрузка ограничителя",
		stayclose = "Держись рядом!",
		loyalprot = "Верный защитник",
		feelnop = "Неболит",
		bonebraura = "Аура крушителя костей",
		cowculaura = "Изничтожение трусов",
		heavyhitter = "Тяжелый удар",
		bigfriendro = "Большой дружелюбный булыжник",
		fragbomb = "Фугасная бомба",
		pbbarrage = "Заградительный огонь",
	},
	
	talents_text_colour = {
		Prologue_p = "Пролог",
		Curio_p = "Диковинка",
		Base_tut_p = "Базовое обучение",
		Sir_melk_p = "Реквизиториум сира Мелка",
		Omnissia_p = "Святилище Омниссии",
	}
}

-- Универсальная функция создания цветных русских переменных
local function create_colored_talents_ru(config)
	local result = {}
	
	for color_setting, talents in pairs(config) do
		local color = Color[mod:get(color_setting)](255, true)
		
		for name, text in pairs(talents) do
			result[name .. "_rgb_ru"] = iu_actit(text, color)
		end
	end
	
	return result
end

-- Валидация: проверяем что ВСЕ переменные созданы
local function validate_all()
	local colors = create_colored_talents_ru(CONFIG)
	local total_expected = 0
	local created_count = 0
	local missing_vars = {}
	
	for color_setting, items in pairs(CONFIG) do
		for name, _ in pairs(items) do
			total_expected = total_expected + 1
			local var_name = name .. "_rgb_ru"
			if colors[var_name] then
				created_count = created_count + 1
			else
				table.insert(missing_vars, var_name)
				mod:error("Missing variable: " .. var_name)
			end
		end
	end
	
	if created_count == total_expected then
		mod:info("✅ All " .. total_expected .. " Russian talent variables created successfully")
	else
		mod:warning("⚠️ Created " .. created_count .. "/" .. total_expected .. " Russian talent variables")
	end
	
	return colors
end

-- Создаем и валидируем все переменные
return validate_all()
