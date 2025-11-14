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
		Cleavi = "рассечении",
		Cleavat = "рассекать",
		Cleavaet = "рассекает",
		Cleavaetsa = "рассекается",
		Cleaving_r = "прострел",
		Cleaving_e = "простреле",
		Cleaving_ii = "простреливании",
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
		Corruption_u = "порчу",
		Corruptdmg = "урон от порчи",
	},
	crit_text_colour = {
		Crit = "критическому",
		Crt_chance = "шанс критического выстрела",
		Crt_u_chance = "шансу критического выстрела",
		Crit_chance = "шансу критического удара",

		CritH = "Критические удары",
		Crit_hit = "критическом ударе",
		Crithit = "критический удар",
		Crit_hits = "критическими ударами",
		Crit0 = "критические удары",
		Crit_hit_udom = "критическим ударом",

		Crit_dmg_r = "критический урон",
		Crit_dmg_u = "критическому урону",
		Crit_hit_color = "урону критического удара",

		Crit_shots = "Критические выстрелы",
		Crit_chance_r = "критическом выстреле",
		Crit_chance_l = "критический выстрел",
		Crit_hit_om = "критическим выстрелом",
		Crit_hit_ogo = "критического выстрела",
		Crit_shot_color = "урону критического выстрела",
	},
	damage_text_colour = {
		Dmg = "урон",
		DMG = "Урон",
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
		PerilsozWarp = "Опасностей варпа",
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
		Stagger_et = "Ошеломляет",
	},
	stamina_text_colour = {
		Stamin = "выносливость",
		Stamina = "выносливости",
	},
	toughness_text_colour = {
		TDR = "СУС",
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
		cls_psya = "псайкера",
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
		Psy_Mark = "отмечены",
		Psy_Mark_ogo = "отмеченного",
		Psy_Mark_ym = "отмеченным",
	},
	fury_text_colour = {
		Fury = "Ярость",
		Fury_i = "Ярости",
	},
	-- Ветеран
	class_veteran_text_colour = {
		cls_vet = "Ветеран",
		cls_veta = "Ветерана",
		cls_vetu = "Ветерану",
		cls_vet2 = "Ветераном",
	},
	focus_text_colour = {
		Focus = "Концентрации",
		Forceful = "Неудержимости",
	},
	focust_text_colour = {
		Focus_Target = "Важной цели",
		Focus_Targt = "Важная цель",
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
	talents_text_colour = { -- ЖЁЛТЫЙ цвет
		Assail = "Нападение",
		Arbites_gren = "Гранату арбитрес",
		Brain_rupture = "Разрыв мозга",
		BreakZLined = "Прорыв вражеского строя",
		BreakZLine = "Прорыва вражеского строя",
		Electro_mine = "Вольтаическую шоковую мину",
		Enfeeble = "Ослабление",
		Frag_gren = "Фраг-гранату",
		Fragm_gren = "Осколочная граната",
		Fragmu_grenu = "Осколочную гранату",
		Rangd_stnc = "Стойку дальнего боя",
		Scriers_gaze = "Взор провидца",
		Stun_gren = "Оглушающая граната",

	-- Искупления
		Prologue_p = "Пролог",
		Curio_p = "Реликвий",
		Base_tut_p = "Базовое обучение",
		Sir_melk_p = "Реквизиториум сира Мелка",
		Omnissia_p = "Святилище Омниссии",
	},

-- ИСКУПЛЕНИЯ
	talents_penances_text_colour = { -- ЗЕЛЁНЫЙ цвет
	-- Псайкер
		bburst = "Взрыва мозга",
		bburst0 = "Взрыв мозга",
		bburst1 = "Разрыв мозга",
		bburst2 = "Разрыва мозга",
		smite = "Сокрушение",
		disrdest = "Прерывание судьбы",
		psy_wrath = "Гнев психокинетика",
		psy_wrath2 = "Сбрасывающий вопль",
		telekshii = "Телекинетический щит",
		empsionics = "Усиленные псионики",
		assail = "Нападение",
		scriersgaze = "Взор провидца",
		kinetpres = "Кинетическое присутствие",
		prescience = "Предвидение",
		seerspres = "Присутствие провидца",
	-- Огрин
		bull_rush = "Рывок быка",
		bull_rush2 = "Рывком быка",
		bull_rush3 = "Рывка быка",
		bull_rush4 = "Неукротимый",
		big_box = "Большая коробка боли",
		big_box2 = "Бросай бомбы!",
		burstlimo = "Обход ограничителя очереди",
		stayclose = "Держись рядом!",
		loyalprot = "Верный защитник",
		feelnop = "Неболит",
		bonebraura = "Аура костолома",
		cowculaura = "Отсев трусливых",
		heavyhitter = "Тяжеловес",
		bigfriendro = "Большой дружелюбный валун",
		fragbomb = "Фраг-бомба",
		pbbarrage = "Беспощадный обстрел в упор",
	-- Veteran
		volley_fire = "Залповый огонь",
		snipcon = "Концентрация снайпера",
		exec_stan = "Стойка палача",
		krak_gr = "Крак-гранату",
		frag_gr = "Фраг-гранаты",
		smok_gr = "Дымовой гранаты",
		fcs_trg = "Важная цель!",
		scavenger = "Сборщик",
		voiceoc = "Командный голос",
		firetim = "Боевая группа",
		infiltr = "Проникновение",
		closenkill = "Приблизиться и убить",
		weapspec = "Специалист по оружию",
		survivalist = "Выживальщик",
	-- Zealot
		shock_gren0 = "Оглушающе-штурмовую гранату",
		shock_gren = "Оглушающе-штурмовой гранаты",
		fire_gren = "Огненной гранаты",
		shock_gren1 = "Оглушающую гранату",
		shock_gren2 = "Оглушающие гранаты",
		chast_wckd = "Кара нечестивых",
		chast_wckd2 = "Кары нечестивых",
		fury_faithful = "Ярость верующего",
		martydom = "Мученичества",
		holy_revenant = "Святой призрак",
		chorusosf = "Хор духовной стойкости",
		beaconop = "Маяк очищения",
		klinvery = "Клинки веры",
		shroudf = "Покров",
		benedict = "Благословение",
		loner = "Единоличник",
		fanrage = "Ярость",
		momentum = "Моментума",
		inexor = "Неумолимый приговор",
		blazingp = "Пылающая благочестивость",
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
