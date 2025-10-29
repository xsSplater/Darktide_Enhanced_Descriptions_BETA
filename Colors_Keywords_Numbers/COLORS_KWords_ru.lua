---@diagnostic disable: undefined-global
-- Version 4.0

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

local CONFIG = {
-- КЛЮЧЕВЫЕ СЛОВА
	bleed_text_colour = {
		Bleed = "кровотечения",
		Bleeding = "кровотечение",
	},
	brittleness_text_colour = {
		Brttlns = "Хрупкость",
		Brittleness = "хрупкости",
	},
	burn_text_colour = {
		Burn = "горения",
		Burning = "горящих",
		Burnd = "поджигает",
		Heat = "перегрева",
		Heat2 = "перегреве",
	},
	cleave_text_colour = {
		Cleave = "рассечению",
		Cleaving = "рассечение",
		Cleavat = "рассекать",
		Cleavaet = "рассекает",
		Cleaving_r = "прострел",
		Cleaving_e = "простреле",
		Cleaving_u = "прострелу",
		Cleaving_et = "простреливает",
		Cleaving_etsa = "простреливается",
	},
	coherency_text_colour = {
		Coherency = "сплочённости",
	},
	combat_ability_text_colour = {
		Ability_cd = "восстановления способности",
		Cd = "восстановления",
		Combat_abil = "боевая способность",
		Combat_ability = "боевой способности",
	},
	corruption_text_colour = {
		Corruption = "порче",
		Corruption_i = "порчи",
		Corruption_a = "порча",
		Corruptdmg = "урон от порчи",
	},
	crit_text_colour = {
		Crt_chance = "шанс критического выстрела",
		Crt_u_chance = "шансу критического выстрела",
		Crit_chance = "шансу критического удара",
		Crit_hit = "критическом ударе",
		Crit_hits = "критическими ударами",
		Crit = "критическому",
		Crit0 = "критические удары",
		CritH = "Критические удары",
		Crit_dmg_r = "критический урон",
		Crit_dmg_u = "критическому урону",
		Crit_chance_r = "критическом выстреле",
		Crit_chance_l = "критический выстрел",
		Crit_hit_color = "урону критического удара",
		Crit_shot_color = "урону критического выстрела",
		Crit_hit_om = "критическим выстрелом",
		Crit_hit_udom = "критическим ударом",
	},
	damage_text_colour = {
		Dmg = "урон",
		Dmg_a = "урона",
		Damage = "урону",
		Damagewrp = "варп-урону",
		Damagewrp_a = "варп-урона",
	},
	electrocuted_text_colour = {
		Electrocute = "электрошок",
		Electrocution = "электрошока",
		Electrocuted = "электрошоком",
	},
	finesse_text_colour = {
		Fnss = "Ловкость",
		Finesse = "ловкости",
		Finesse_dmg = "урону от ловкости",
	},
	health_text_colour = {
		Health = "здоровью",
		Healthx = "здоровьем",
		Wound = "здоровья",
		Wound_u = "рану",
		Wound_y = "раны",
	},
	hit_mass_text_colour = {
		Hit_mass = "ударную массу",
		Hit_masss = "ударной массы",
	},
	impact_text_colour = {
		Impact0 = "Выведение из равновесия",
		Impact = "выведению из равновесия",
	},
	peril_text_colour = {
		Peril = "опасности",
		Perils = "опасностей",
		Perl = "опасность",
		Perl0 = "Опасность",
	},
	power_text_colour = {
		Pwr = "Сила",
		Power = "сила",
		Strength = "силе",
	},
	rending_text_colour = {
		Rndg = "Пробивание",
		Rending = "пробиванию",
	},
	soulblaze_text_colour = {
		Soulblaze = "горения души",
	},
	stagger_text_colour = {
		Stagger = "ошеломление",
		Stagger_i = "ошеломлении",
		Stagger2 = "ошеломлению",
		Staggered = "ошеломлённых",
		Staggering = "ошеломления",
		Staggern = "ошеломляя",
		Staggernt = "ошеломить",
		Staggers = "ошеломляют",
		Staggerstsa = "ошеломляются",
		Staggers_e = "ошеломляет",
		Staggers_esia = "ошеломляется",
		Stun = "ошеломлённого",
		Stunned = "ошеломлена",
		Stuns = "ошеломлённым",
		Stunss = "Ошеломляющие",
		Stunssx = "Ошеломлённые",
		Staggerr = "Ошеломление",
	},
	stamina_text_colour = {
		Stamina = "выносливости",
	},
	toughness_text_colour = {
		Toughness = "стойкости",
		Tghnss = "стойкость",
		Toughness_dmg_red = "снижение урона стойкости",
		Toughness_dmg_red_u = "снижению урона стойкости",
		Toughness_dmg = "урона стойкости",
	},
	weakspot_text_colour = {
		Weakspot = "уязвимые места",
		Weakspothit = "уязвимое место",
		Weakspot_dmg = "урону по уязвимым местам",
		Weakspotv_dmg = "урон по уязвимым местам",
	},

-- КЛАССЫ
	-- Псайкер
	class_psyker_text_colour = {
		cls_psy = "Псайкер",
		cls_psy2 = "Псайкером",
	},
	precision_text_colour = {
		Precision = "меткости",
	},
	-- Огрин
	class_ogryn_text_colour = {
		cls_ogr = "Огрин",
		cls_ogr2 = "Огрином",
	},
	fnp_text_colour = {
		Feel_no_pain = "Неболита",
	},
	luckyb_text_colour = {
		Lucky_bullet = "Счастливую пулю",
	},
	trample_text_colour = {
		Trample = "Топота",
	},
	-- Изувер
	class_zealot_text_colour = {
		cls_zea = "Изувер",
		cls_zea2 = "Изувером",
	},
	momentum_text_colour = {
		Momentum = "Моментума",
	},
	stealth_text_colour = {
		Stealth = "Скрытности",
	},
	fury_text_colour = {
		Fury = "Ярость",
		Fury_i = "Ярости",
	},
	-- Ветеран
	class_veteran_text_colour = {
		cls_vet = "Ветеран",
		cls_vet2 = "Ветераном",
	},
	focus_text_colour = {
		Focus = "Концентрации",
		Forceful = "Неудержимости",
	},
	focust_text_colour = {
		Focus_Target = "Важной цели",
		Markedenemy = "Отмеченного врага",
	},
	meleespec_text_colour = {
		Meleespec = "Специалиста-рукопашника",
		Meleejust = "Судьи-рукопашника",
	},
	rangedspec_text_colour = {
		Rangedspec = "Специалиста-стрелка",
		Rangedjust = "Судьи-стрелка",
	},
	-- Арбитрес
	class_arbites_text_colour = {
		cls_arb = "Арбитратор",
		cls_arb2 = "Арбитратором",
	},

-- ТАЛАНТЫ
	talents_text_colour = { -- жёлтый
		Arbites_gren = "Гранату арбитрес",
		Scriers_gaze = "Взор провидца",
		Stun_gren = "Оглушающая граната",
		Frag_gren = "Фраг-гранату",
		Fragm_gren = "Осколочная граната",
		Electro_mine = "Вольтаическую шоковую мину",
		Enfeeble = "Ослабление",
		BreakZLined = "Прорыв вражеского строя",
		BreakZLine = "Прорыва вражеского строя",

	-- Искупления
		Prologue_p = "Пролог",
		Curio_p = "Реликвия",
		Base_tut_p = "Базовое обучение",
		Sir_melk_p = "Реквизиториум сира Мелка",
		Omnissia_p = "Святилище Омниссии",
	},

-- ИСКУПЛЕНИЯ
	talents_penances_text_colour = { -- зелёный
	-- Псайкер
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
	-- Огрин
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
	-- Veteran
		volley_fire = "Залповый огонь",
		snipcon = "Концентрация снайпера",
		exec_stan = "Стойка палача",
		krak_gr = "Крак-граната",
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
		chast_wckd = "Кара нечестивых",
		chast_wckd2 = "Кара нечестивых",
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
	},

-- СЛОЖНОСТЬ
	sedition_text_colour = {
		sedition = "Мятеж",
	},
	uprising_text_colour = {
		uprising = "Восстание",
	},
	malice_text_colour = {
		malice = "Злоба",
	},
	heresy_text_colour = {
		heresy = "Ересь",
	},
	damnation_text_colour = {
		damnation = "Проклятие",
	},
	auric_text_colour = {
		auric = "Золото",
	},
}

-- Универсальная функция создания цветных переменных
local function create_colored_keywords_ru(config)
	local result = {}

	for color_setting, keywords in pairs(config) do
		local color = Color[mod:get(color_setting)](255, true)

		for name, text in pairs(keywords) do
			result[name .. "_rgb_ru"] = iu_actit(text, color)
		end
	end

	return result
end

-- Валидация: проверяем что ВСЕ переменные созданы
local function validate_all()
	local colors = create_colored_keywords_ru(CONFIG)
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
		mod:info("✅ All " .. total_expected .. " Russian keyword variables created successfully")
	else
		mod:warning("⚠️ Created " .. created_count .. "/" .. total_expected .. " Russian keyword variables")
	end

	return colors
end

-- Создаем и валидируем все переменные
return validate_all()
