---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")

-- КЛЮЧЕВЫЕ СЛОВА
--		Ключ_rgb_ru			"Значение"						-- Где используется?
local CONFIG = {
	bleed_text_colour = {
		krovotechenie =		"кровотечение",					-- Таланты
		krovotecheniem =		"кровотечением",					-- Таланты
		krovotechenia =		"кровотечения",					-- Таланты, Благословения
	},
	brittleness_text_colour = {
		Hrupkost =			"Хрупкость",					-- Примечания внизу
		hrupkosti =			"хрупкости",					-- Таланты, Благословения
	},
	burn_text_colour = {
		gorenia =			"горения",						-- Таланты, Благословения
		goriaschej =		"горящей",						-- Благословения
		goriaschih =		"горящих",						-- Благословения
		podjigaet =			"поджигает",					-- Таланты
		peregreva =			"перегрева",					-- Благословения
		peregreve =			"перегреве",					-- Благословения
		sjigauschei =		"сжигающей",					-- Таланты
	},
	cleave_text_colour = {
		probit =			"пробить",						-- Таланты
		prostrel =			"прострел",						-- Благословения
	-- prostrele =			"простреле",					-- ?
		prostrelu =			"прострелу",					-- Таланты, Благословения
		prostrelivaet =		"простреливает",				-- Таланты
		prostrelivaetsa =	"простреливается",				-- ЧПФ внизу
		prostrelivanii =	"простреливании",				-- ЧПФ внизу
		rassekaet =			"рассекает",					-- Таланты
		rassekaetsa =		"рассекается",					-- ЧПФ внизу
		rassekat =			"рассекать",					-- Благословения
		rassechenie =		"рассечение",					-- Благословения
		rassechenii =		"рассечении",					-- ЧПФ внизу
		rassecheniu =		"рассечению",					-- Таланты, Благословения
	},
	coherency_text_colour = {
		splochennosti =		"сплочённости",					-- Таланты, ЧПФ внизу
	},
	combat_ability_text_colour = {
		boeva_sposobnost =	"боевая способность",			-- Таланты
		boev_sposobnosti =	"боевой способности",			-- Таланты, Редкости
		vosstanovlenia =	"восстановления",				-- Таланты
		vost_sposobnosti =	"восстановления способности",	-- Таланты
	},
	corruption_text_colour = {
	-- porcha =				"порча",						-- ?
		porche =			"порче",						-- Таланты, Редкости
		porchi =			"порчи",						-- Таланты
		porchu =			"порчу",						-- Таланты
		porchi_uron =		"урон от порчи",				-- Таланты
	},
	crit_text_colour = {
		Krit_vystrely =		"Критические выстрелы",			-- Таланты
		Krit_udary =		"Критические удары",			-- Благословения

		krit_udar =			"критический удар",				-- Таланты
		kritom =			"критическим",					-- Таланты
		krit_udarom =		"критическим ударом",			-- Таланты, Благословения
		krit_udary =		"критические удары",			-- Таланты
		krit_udarami =		"критическими ударами",			-- Благословения
		krit_udare =		"критическом ударе",			-- Таланты, Благословения
		krit_udara_uron =	"урону критического удара",		-- Таланты, Благословения

		krit_uron =			"критический урон",				-- Таланты, Примечания внизу
		krit_uronu =		"критическому урону",			-- Таланты, Благословения

		krit_vystrel =		"критический выстрел",			-- Таланты, Благословения
		krit_vystrela =		"критического выстрела",		-- Таланты
		krit_vystrele =		"критическом выстреле",			-- Благословения
		krit_vystrelom =	"критическим выстрелом",		-- Таланты
		krit_vystr_uron =	"урону критического выстрела",	-- Благословения

		kriticheskomu =		"критическому",					-- Благословения

		sh_krit_vystrela =	"шансу критического выстрела",	-- Таланты, Благословения
		sha_krit_udara =	"шанса критического удара",		-- Таланты
		sh_krit_udara =		"шансу критического удара",		-- Таланты, Благословения
	},
	damage_text_colour = {
		Uron =				"Урон",							-- Таланты
		uron =				"урон",							-- Таланты, Благословения, Примечания внизу
		urona =				"урона",						-- Таланты
		uronu =				"урону",						-- Таланты, Благословения, Редкости
	-- urona_warp =			"варп-урона",					-- ?
		uronu_warp =		"варп-урону",					-- Таланты
	},
	electrocuted_text_colour = {
	-- elektroshok =		"электрошок",					-- ?
		elektroshoka =		"электрошока",					-- Таланты, Благословения
		elektroshokom =		"электрошоком",					-- Таланты, Благословения
	},
	finesse_text_colour = {
		Lovkost =			"Ловкость",						-- Примечания внизу
		lovkosti =			"ловкости",						-- Таланты, Благословения
		lovkosti_uron =		"урону от ловкости",			-- Таланты
	},
	health_text_colour = {
		ran =				"ран",							-- Таланты
		ranu =				"рану",							-- Таланты
		rany =				"раны",							-- Таланты
		zdorovie =			"здоровье",						-- Таланты
		zdoroviem =			"здоровьем",					-- Таланты
		zdoroviu =			"здоровью",						-- Таланты, Редкости
		zdorovia =			"здоровья",						-- Таланты, Редкости
	},
	hit_mass_text_colour = {
		udarn_massu =		"ударную массу",				-- Благословения
		udarn_massy =		"ударной массы",				-- Благословения
	},
	impact_text_colour = {
		Vyved_ravnovesia =	"Выведение из равновесия",		-- Примечания внизу
		vyved_ravnovesia =	"выведению из равновесия",		-- Таланты, Благословения
		vyveda_ravnovesia =	"выведения из равновесия",		-- Таланты, Благословения
	},
	peril_text_colour = {
		Opasnost =			"Опасность",					-- Таланты
		opasnost =			"опасность",					-- Таланты
	-- opasnostei =			"опасностей",					-- ?
		Opasnostei_warpa =	"Опасностей варпа",				-- Таланты
		opasnosti =			"опасности",					-- Таланты, Благословения
	},
	power_text_colour = {
		Sila =				"Сила",							-- Примечания внизу
	-- sila =				"сила",							-- ?
		sile =				"силе",							-- Таланты, Благословения
	},
	rending_text_colour = {
		Probivanie =		"Пробивание",					-- Примечания внизу
		probivaniu =		"пробиванию",					-- Таланты, Благословения
	},
	soulblaze_text_colour = {
		gorenia_dushi =		"горения души",					-- Таланты, Благословения
	},
	stagger_text_colour = {
		Oshelomlenie =		"Ошеломление",					-- Таланты, Благословения
	-- Oshelomlennye =		"Ошеломлённые",					-- ?
		Oshelomlaet =		"Ошеломляет",					-- Таланты
		Oshelomlautsa =		"Ошеломляются",					-- Таланты
		Oshelomlauschie =	"Ошеломляющие",					-- Таланты

		oglushit =			"оглушить",						-- Таланты
		oglushaetes =		"оглушаетесь",					-- Таланты

		oshelomit =			"ошеломить",					-- Таланты
		oshelomlena =		"ошеломлена",					-- Благословения
		oshelomlenie =		"ошеломление",					-- Таланты, Примечания внизу
		oshelomlenii =		"ошеломлении",					-- Таланты
		oshelomleniu =		"ошеломлению",					-- Таланты, Благословения
		oshelomlenia =		"ошеломления",					-- Таланты, Благословения, Примечания внизу
		oshelomlennogo =	"ошеломлённого",				-- Благословения
		oshelomlennye =		"ошеломлённые",					-- Таланты
		oshelomlennym =		"ошеломлённым",					-- Таланты, Благословения
		oshelomlennyh =		"ошеломлённых",					-- Таланты, Благословения
		oshelomlaet =		"ошеломляет",					-- Таланты, Благословения
		oshelomlaete =		"ошеломляете",					-- Таланты, Благословения
		oshelomlaetsa =		"ошеломляется",					-- Благословения
		oshelomlaut =		"ошеломляют",					-- Таланты
		oshelomlautsa =		"ошеломляются",					-- Таланты
		oshelomlauschej =	"ошеломляющей",					-- Таланты
		oshelomlauschij =	"ошеломляющий",					-- Таланты
		oshelomlaa =		"ошеломляя",					-- Таланты
	},
	stamina_text_colour = {
		Vynoslivost =		"Выносливость",					-- Таланты
		vynoslivost =		"выносливость",					-- Таланты
		vynoslivosti =		"выносливости",					-- Таланты, Благословения, Редкости
	},
	toughness_text_colour = {
		stoikosti =			"стойкости",					-- Таланты, Благословения, Редкости
		Stoikost =			"Стойкость",					-- Таланты, Примечания внизу
		stoikost =			"стойкость",					-- Таланты, Примечания внизу

		TDR =				"СУС",
	-- sn_ur_stoikosti =	"снижение урона стойкости",		-- ?
		snu_ur_stoikosti =	"снижению урона стойкости",		-- Таланты
	-- stoikosti_urona =	"урона стойкости",				-- ?
	},
	weakspot_text_colour = {
		ujazvimye_mesta =	"уязвимые места",				-- Таланты, Благословения
		u_mestam_uronu =	"урону по уязвимым местам",		-- Таланты, Благословения
		ujazvimoe_mesto =	"уязвимое место",				-- Таланты, Благословения
		u_mestam_uron =		"урон по уязвимым местам",		-- Примечания внизу
	},

-- КЛАССЫ И ИХ ТАЛАНТЫ
-- Псайкер
	class_psyker_text_colour = {
		cls_psy =			"Псайкер",
		cls_psya =			"псайкера",
		cls_psyov =			"псайкеров",
		cls_psy2 =			"Псайкером",
	},
		precision_text_colour = {
			Precision =			"меткости",
	},
-- Огрин
	class_ogryn_text_colour = {
		cls_ogr =			"Огрин",
		cls_ogr2 =			"Огрином",
	},
		fnp_text_colour = {
			Feel_no_pain =		"Неболита",

			Desperadki =		"Отчаянной атаки",			-- Падаль
		},
		luckyb_text_colour = {
			Lucky_bullet =		"Счастливую пулю",

			stojkosti_zolot =	"стойкости",				-- Изувер
			stojkost_zolot =	"стойкость",				-- Изувер
		},
		trample_text_colour = {
			Trample =			"Топота",

			Depend =			"Зависимости",				-- Падаль
	},
-- Изувер
	class_zealot_text_colour = {
		cls_zea =			"Изувер",
		cls_zeaa =			"Изувера",
		cls_zea2 =			"Изувером",
		cls_zeau =			"Изуверу",
	},
		fury_text_colour = {
			Fury =				"Ярость",
			Fury_i =			"Ярости",

			Rampage =			"Буйство!",					-- Падаль
			Rampaga =			"Буйства!",					-- Падаль
		},
		momentum_text_colour = {
			Momentum =			"Моментума",

			Adren =				"Адреналина",				-- Падаль
			AdrenFr =			"Адреналиновое безумие",	-- Падаль
		},
		stealth_text_colour = {
			Stealth =			"Скрытности",

			Psy_Mark =			"отмечены",					-- Псайкер
			Psy_Mark_ogo =		"отмеченного",				-- Псайкер
			Psy_Mark_ym =		"отмеченным",				-- Псайкер
		},
-- Ветеран
	class_veteran_text_colour = {
		cls_vet =			"Ветеран",
		cls_veta =			"Ветерана",
		cls_vetu =			"Ветерану",
		cls_vet2 =			"Ветераном",
	},
		focus_text_colour = {
			Focus =				"Концентрации",
			Forceful =			"Неудержимости",
		},
		focust_text_colour = {
			Focus_Target =		"Важной цели",
			Focus_Targt =		"Важная цель",

			VultsMark =			"Метки стервятника",		-- Падаль
			Markedenemy =		"Отмеченного врага",		-- Псайкер
		},
		meleespec_text_colour = {
			Meleespec =			"Специалиста-рукопашника",

			Meleejust =			"Судьи-рукопашника",		-- Арбитрес
		},
		rangedspec_text_colour = {
			Rangedspec =		"Специалиста-стрелка",

			Rangedjust =		"Судьи-стрелка",			-- Арбитрес
		},
-- Арбитрес
	class_arbites_text_colour = {
		cls_arb =			"Арбитратор",
		cls_arb2 =			"Арбитратором",
	},
-- Падаль Улья
	class_scum_text_colour = {
		cls_scm =			"Падаль Улья",
		cls_scma =			"Падали Улья",
		cls_scm2 =			"Падалью Улья",
	},
		chemtox_text_colour = {
			Chem_Toxom =		"Хим-токсином",
			Chem_Toxa =			"Хим-токсина",
		},

-- ТАЛАНТЫ
	talents_text_colour = { -- ЖЁЛТЫЙ цвет
	-- Псайкер
		Assail =			"Нападение",
		Brain_rupture =		"Разрыв мозга",
		Enfeeble =			"Ослабление",
		Scriers_gaze =		"Взор провидца",
	-- Арбитрес
		Electro_mine =		"Вольтаическую шоковую мину",
		Arbites_gren =		"Гранату арбитрес",
		Nuncio_akvilu =		"Нунцио-аквилу",
		BreakZLined =		"Прорыв вражеского строя",
		BreakZLine =		"Прорыва вражеского строя",
		Stojku_bicha =		"Стойку бичевателя",
	-- Падаль
		Blind_greny =		"Ослепляющие гранаты",
	-- Ветеран
		Frag_gren =			"Фраг-гранату",
		Fragm_gren =		"Осколочная граната",
		Fragmu_grenu =		"Осколочную гранату",
		Rangd_stnc =		"Стойку дальнего боя",
	--Изувер
		Sv_relikviu =		"Священную реликвию",
		Stun_gren =			"Оглушающая граната",
		Oglush_granatu =	"Оглушающую гранату",

-- ИСКУПЛЕНИЯ
		Base_tut_p =		"Базовое обучение",
		Curio_p =			"Реликвий",
		Omnissia_p =		"Святилище Омниссии",
		Prologue_p =		"Пролог",
		Sir_melk_p =		"Реквизиториум сира Мелка",
	-- },

-- ИСКУПЛЕНИЯ
	-- talents_penances_text_colour = { -- ЗЕЛЁНЫЙ цвет
	-- Псайкер
		assail =			"Нападение",
		bburst =			"Взрыва мозга",
		bburst0 =			"Взрыв мозга",
		bburst1 =			"Разрыв мозга",
		bburst2 =			"Разрыва мозга",
		disrdest =			"Прерывание судьбы",
		empsionics =		"Усиленные псионики",
		kinetpres =			"Кинетическое присутствие",
		prescience =		"Предвидение",
		psy_wrath =			"Гнев психокинетика",
		psy_wrath2 =		"Сбрасывающий вопль",
		scriersgaze =		"Взор провидца",
		seerspres =			"Присутствие провидца",
		smite =				"Сокрушение",
		telekshii =			"Телекинетический щит",
	-- Огрин
		big_box =			"Большая коробка боли",
		big_box2 =			"Бросай бомбы!",
		bigfriendro =		"Большой дружелюбный валун",
		bonebraura =		"Аура костолома",
		bull_rush =			"Рывок быка",
		bull_rush2 =		"Рывком быка",
		bull_rush3 =		"Рывка быка",
		bull_rush4 =		"Неукротимый",
		burstlimo =			"Обход ограничителя очереди",
		cowculaura =		"Отсев трусливых",
		feelnop =			"Неболит",
		fragbomb =			"Фраг-бомба",
		heavyhitter =		"Тяжеловес",
		loyalprot =			"Верный защитник",
		pbbarrage =			"Беспощадный обстрел в упор",
		stayclose =			"Держись рядом!",
	-- Veteran
		closenkill =		"Приблизиться и убить",
		exec_stan =			"Стойка палача",
		fcs_trg =			"Важная цель!",
		firetim =			"Боевая группа",
		frag_gr =			"Фраг-гранаты",
		infiltr =			"Проникновение",
		krak_gr =			"Крак-гранату",
		volley_fire =		"Залповый огонь",
		scavenger =			"Сборщик",
		smok_gr =			"Дымовой гранаты",
		snipcon =			"Концентрация снайпера",
		survivalist =		"Выживальщик",
		voiceoc =			"Командный голос",
		weapspec =			"Специалист по оружию",
	-- Zealot
		beaconop =			"Маяк очищения",
		benedict =			"Благословение",
		blazingp =			"Пылающая благочестивость",
		chast_wckd =		"Кара нечестивых",
		chast_wckd2 =		"Кары нечестивых",
		chorusosf =			"Хор духовной стойкости",
		inexor =			"Неумолимый приговор",
		fanrage =			"Ярость",
		fire_gren =			"Огненной гранаты",
		fury_faithful =		"Ярость верующего",
		holy_revenant =		"Святой призрак",
		klinvery =			"Клинки веры",
		loner =				"Единоличник",
		martydom =			"Мученичества",
		momentum =			"Моментума",
		shock_gren =		"Оглушающе-штурмовой гранаты",
		shock_gren0 =		"Оглушающе-штурмовую гранату",
		shock_gren1 =		"Оглушающую гранату",
		shock_gren2 =		"Оглушающие гранаты",
		shroudf =			"Покров",
	},

-- СЛОЖНОСТЬ
	sedition_text_colour = {
		sedition =			"Мятеж",
	},
	uprising_text_colour = {
		uprising =			"Восстание",
	},
	malice_text_colour = {
		malice =			"Злоба",
	},
	heresy_text_colour = {
		heresy =			"Ересь",
	},
	damnation_text_colour = {
		damnation =			"Проклятие",
	},
	auric_text_colour = {
		auric =				"Золото",
	},
}

-- Основная функция для создания цветных ключевых слов
local function create_colored_keywords_ru()
	local result = {}

	for category, keywords in pairs(CONFIG) do
		local color_name = mod:get(category) or "white"
		local color = Color[color_name]

		if not color then
			color = Color.white(255, true)
		else
			color = color(255, true)
		end

		for key, text in pairs(keywords) do
			if InputUtils and InputUtils.apply_color_to_input_text then
				local colored_text = InputUtils.apply_color_to_input_text(text, color)
				result[key .. "_rgb_ru"] = colored_text
			else
				result[key .. "_rgb_ru"] = text
			end
		end
	end

	return result
end

--[+ +ЧАСТО ПОВТОРЯЕМЫЕ ФРАЗЫ+ +]--
local function create_phrs_ru(colors_ru)
	local Dot_green =	"{#color(35, 255, 5)}•{#reset()}"
	local Dot_red =		"{#color(255, 35, 5)}•{#reset()}"

	-- local function CKWord(fallback, colors, key)
		-- return colors[key] or fallback
	-- end
	local CKWord = function(fallback, key)
		return fallback
	end

	return {
		Can_appl_thr_shlds =		Dot_green.." Накладывается через щиты.",
		Can_be_refr =				Dot_green.." Обновляется во время действия. ",
		Can_be_refr_drop_1 =		Dot_green.." Заряды обновляются во время действия и сбрасываются по одному. ",
		Can_proc_mult = 			Dot_green.." Может срабатывать несколько раз за удар при "..CKWord("рассечении", "rassechenii_rgb_ru").." нескольких врагов.\n",
		Can_proc_mult_str =			Dot_green.." Может срабатывать несколько раз за выстрел при "..CKWord("простреливании", "prostrelivanii_rgb_ru").." нескольких врагов.\n",
		Refr_dur_stappl =			Dot_green.." Длительность обновляется при наложении заряда. ",
-- Псайкер
		Doesnt_Stack_Psy_Aura =		Dot_red.." Не суммируется с эффектом такой же ауры другого "..CKWord("псайкера", "cls_psya_rgb_ru")..".",
		Doesnt_Stack_Psy_eff =		Dot_red.." Не суммируется с таким же ослаблением от другого псайкера.",
-- Ветеран
		Doesnt_Stack_Vet_Aura =		Dot_red.." Не суммируется с эффектом такой же ауры другого "..CKWord("Ветерана", "cls_veta_rgb_ru")..".",
-- Изувер
		Doesnt_Stack_Zea_Aura =		Dot_red.." Не суммируется с эффектом такой же ауры другого "..CKWord("Изувера", "cls_zeaa_rgb_ru")..".",
	Doesnt_Stack_Zea_abil =		Dot_red.." Не суммируется с эффектом такого же таланта другого "..CKWord("Изувера", "cls_zeaa_rgb_ru")..".",

		Cant_appl_thr_shlds =		Dot_red.." Не накладывается через щиты.",
		Cant_Crit =					Dot_red.." Не наносит "..CKWord("критические удары", "krit_udary_rgb_ru")..".\n",
		Carap_cant_clv =			Dot_red.." Панцирная броня не "..CKWord("рассекается", "rassekaetsa_rgb_ru")..".",
		Carap_cant_cleave =			Dot_red.." Панцирная броня не "..CKWord("простреливается", "prostrelivaetsa_rgb_ru")..".",
		Dont_intw_coher_toughn =	Dot_red.." Не влияет на "..CKWord("стойкость", "stoikost_rgb_ru").." от "..CKWord("сплочённости", "splochennosti_rgb_ru")..".",
	}
end

--[+ +ПРИМЕЧАНИЯ+ +]--
local function create_nts_ru(colors_ru)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

	-- local function CKWord(fallback, colors, key)
		-- return colors[key] or fallback
	-- end
	local CKWord = function(fallback, key)
		return fallback
	end

	return {
		Brtl_note =			Dot_green.." "..CKWord("Хрупкость", "Hrupkost_rgb_ru").." брони повышает "..CKWord("урон", "uron_rgb_ru").." команды по врагу.",
		Fns_note =			Dot_green.." "..CKWord("Ловкость", "Lovkost_rgb_ru").." повышает "..CKWord("критический урон", "krit_uron_rgb_ru").." и "..CKWord("урон по уязвимым местам", "u_mestam_uron_rgb_ru")..".",
		Impact_note =		Dot_green.." "..CKWord("Выведение из равновесия", "Vyved_ravnovesia_rgb_ru").." увеличивает эффективность "..CKWord("ошеломления", "oshelomlenia_rgb_ru").." врагов.",
		Pwr_note =			Dot_green.." "..CKWord("Сила", "Sila_rgb_ru").." повышает "..CKWord("урон", "uron_rgb_ru")..", "..CKWord("ошеломление", "oshelomlenie_rgb_ru").." и "..CKWord("рассечение", "rassechenie_rgb_ru")..".",
		Rend_note =			Dot_green.." "..CKWord("Пробивание", "Probivanie_rgb_ru").." брони повышает ваш "..CKWord("урон", "uron_rgb_ru")..".",
	}
end

-- Создаём цвета
local colored_keywords_ru = create_colored_keywords_ru()

-- ВОЗВРАЩАЕМ ВСЁ
return {
	keywords = colored_keywords_ru,					-- ЦВЕТНЫЕ КЛЮЧЕВЫЕ СЛОВА
	phrs = create_phrs_ru(colored_keywords_ru),		-- ЧАСТО ПОВТОРЯЕМЫЕ ФРАЗЫ
	nts = create_nts_ru(colored_keywords_ru)		-- ПРИМЕЧАНИЯ
}
