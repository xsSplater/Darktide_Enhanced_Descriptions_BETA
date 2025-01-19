---@diagnostic disable: undefined-global

-- local mod = get_mod("Enhanced_descriptions")

--[+ Function to create a localization template +]--
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end

--[+ Define localization templates +]--
local localization_templates = {
	-- Duplicate the line and translate. For example:
	--		create_template("weap_bb0_ext_en", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies" end),
	--		create_template("weap_bb0_ext_YOURLANGUAGE", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"YOURLANGUAGE"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." к "..COLORS_KWords.Damage_rgb_YOURLANGUAGE.." против врагов в противоосколочной броне." end), <- Don't forget the comma at the end!

-- Make changes to this file only if you need them!

--[+ ++ВРАГИ++ +]--
	--[+ Орда +]--
		--[+ Groaner - Ворчун +]--
	create_template("enemies_chaos_groaner_ext_ru", {"loc_breed_display_name_chaos_newly_infected",}, {"ru",}, function(locale, value) return "Ворчун" end),
		--[+ Dreg Bruiser - Дрег-громила +]--
	create_template("enemies_cultist_melee_ext_ru", {"loc_breed_display_name_cultist_melee",}, {"ru",}, function(locale, value) return "Дрег-громила" end),
		--[+ Dreg Stalker - Дрег-охотник +]--
	create_template("enemies_cultist_assault_ext_ru", {"loc_breed_display_name_cultist_assault",}, {"ru",}, function(locale, value) return "Дрег-охотник" end),
		--[+ Scab Bruiser - Скаб-громила +]--
	create_template("enemies_renegade_melee_ext_ru", {"loc_breed_display_name_renegade_melee",}, {"ru",}, function(locale, value) return "Скаб-громила" end),
		--[+ Poxwalker mutated - Чумной ходок мутировавший слабый +]--
	create_template("enemies_chaos_poxwalker_mut_less_ext_ru", {"loc_breed_display_name_chaos_lesser_mutated_poxwalker",}, {"ru",}, function(locale, value) return "Чумной ходок мутировавший слабый" end),
		--[+ Poxwalker mutated - Чумной ходок слабый мутировавший +]--
	create_template("enemies_chaos_poxwalker_mut_ext_ru", {"loc_breed_display_name_chaos_mutated_poxwalker",}, {"ru",}, function(locale, value) return "Чумной ходок мутировавший" end),
	--[+ Специалисты +]--
		--[+ Poxburster - Чумной взрывник +]--
	create_template("enemies_chaos_poxwalker_bomber_ext_ru", {"loc_breed_display_name_chaos_poxwalker_bomber",}, {"ru",}, function(locale, value) return "Чумной взрывник" end),
		--[+ Dreg Tox Flamer - Дрег Токс-огнемётчик +]--
	create_template("enemies_cultist_flamer_ext_ru", {"loc_breed_display_name_cultist_flamer",}, {"ru",}, function(locale, value) return "Дрег Токс-огнемётчик" end),
		--[+ Dreg Tox Bomber - Дрег Токс-гренадёр +]--
	create_template("enemies_cultist_grenadier_ext_ru", {"loc_breed_display_name_cultist_grenadier",}, {"ru",}, function(locale, value) return "Дрег Токс-гренадёр" end),
		--[+ Scab Flamer - Скаб-огнемётчик +]--
	create_template("enemies_renegade_flamer_ext_ru", {"loc_breed_display_name_renegade_flamer",}, {"ru",}, function(locale, value) return "Скаб-огнемётчик" end),
		--[+ Scab Bomber - Скаб-гренадёр +]--
	create_template("enemies_renegade_grenadier_ext_ru", {"loc_breed_display_name_renegade_grenadier",}, {"ru",}, function(locale, value) return "Скаб-гренадёр" end),
		--[+ Scab Trapper - Скаб-ловец +]--
	create_template("enemies_renegade_netgunner_ext_ru", {"loc_breed_display_name_renegade_netgunner",}, {"ru",}, function(locale, value) return "Скаб-ловец" end),
	--[+ Элита +]--
		--[+ Dreg Shotgunner - Дрег-штурмовик +]--
	create_template("enemies_cultist_shocktrooper_ext_ru", {"loc_breed_display_name_cultist_shocktrooper",}, {"ru",}, function(locale, value) return "Дрег-штурмовик" end),
		--[+ Dreg  - Дрег-пулемётчик +]--
	create_template("enemies_cultist_gunner_ext_ru", {"loc_breed_display_name_cultist_gunner",}, {"ru",}, function(locale, value) return "Дрег-пулемётчик" end),
		--[+ Dreg  - Дрег-берсерк +]--
	create_template("enemies_cultist_berzerker_ext_ru", {"loc_breed_display_name_cultist_berzerker",}, {"ru",}, function(locale, value) return "Дрег-берсерк" end),
		--[+ Scab Shotgunner - Скаб-штурмовик +]--
	create_template("enemies_renegade_shocktrooper_ext_ru", {"loc_breed_display_name_renegade_shocktrooper",}, {"ru",}, function(locale, value) return "Скаб-штурмовик" end),
		--[+ Scab - Скаб-пулемётчик +]--
	create_template("enemies_renegade_gunner_ext_ru", {"loc_breed_display_name_renegade_gunner",}, {"ru",}, function(locale, value) return "Скаб-пулемётчик" end),
		--[+ Scab - Скаб-берсерк +]--
	create_template("enemies_renegade_berzerker_ext_ru", {"loc_breed_display_name_renegade_berzerker",}, {"ru",}, function(locale, value) return "Скаб-берсерк" end),
		--[+ Mauler - Скаб-разрубатель +]--
	create_template("enemies_renegade_executor_ext_ru", {"loc_breed_display_name_renegade_executor",}, {"ru",}, function(locale, value) return "Скаб-разрубатель" end),
		--[+  - Крушила +]--
	create_template("enemies_chaos_ogryn_executor_ext_ru", {"loc_breed_display_name_chaos_ogryn_executor",}, {"ru",}, function(locale, value) return "Крушила" end),
	--[+ Монстры +]--
		--[+  - Зверь Нургла +]--
	create_template("enemies_chaos_beast_of_nurgle_ext_ru", {"loc_breed_display_name_chaos_beast_of_nurgle",}, {"ru",}, function(locale, value) return "Зверь Нургла" end),
--[+ ++ТИПЫ ТЕЛ И БРОНИ++ +]--
		--[+ Заражённый +]--
	create_template("body_disgustingly_resilient_ext_ru", {"loc_weapon_stats_display_disgustingly_resilient",}, {"ru",}, function(locale, value) return "Заражённый" end),
		--[+ Несгибаемый +]--
	create_template("body_resistant_ext_ru", {"loc_glossary_armour_type_resistant",}, {"ru",}, function(locale, value) return "Несгибаемый" end),
		--[+ Небронированный +]--
	create_template("body_unarmoured_ext_ru", {"loc_weapon_stats_display_unarmored",}, {"ru",}, function(locale, value) return "Небронированный" end),


--[+ ++WEAPONS - ОРУЖИЕ++ +]--
	--[+ +PSYKER - ПСАЙКЕР+ +]--
		--[+ +MELEE - БЛИЖНИЙ БОЙ+ +]--

		--[+ Assault Chainaxe - Штурмовой пилотопор +]-- -- руоф Штурмовой цепной топор
	create_template("weapons_names_chainaxe1_ext_ru", {"loc_weapon_family_chainaxe_p1_m1",}, {"ru",}, function(locale, value) return "Штурмовой пилотопор" end),
	create_template("weapons_names_chainaxe2_ext_ru", {"loc_weapon_family_chainaxe_p1_m2",}, {"ru",}, function(locale, value) return "Штурмовой пилотопор" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_chainaxe1_ext_ru", {"loc_weapon_pattern_chainaxe_p1_m1",}, {"ru",}, function(locale, value) return "Орестес" end),
		-- create_template("weapons_patterns_chainaxe2_ext_ru", {"loc_weapon_pattern_chainaxe_p1_m2",}, {"ru",}, function(locale, value) return "Орестес" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_chainaxe1_ext_ru", {"loc_weapon_mark_chainaxe_p1_m1",}, {"ru",}, function(locale, value) return "Модель IV" end),
		create_template("weapons_marks_chainaxe2_ext_ru", {"loc_weapon_mark_chainaxe_p1_m2",}, {"ru",}, function(locale, value) return "Модель XII" end),

		--[+ Assault Chainsword - Штурмовой пиломеч +]-- -- руоф Штурмовой цепной меч
	create_template("weapons_names_chainsword1_ext_ru", {"loc_weapon_family_chainsword_p1_m1",}, {"ru",}, function(locale, value) return "Штурмовой пиломеч" end),
	create_template("weapons_names_chainsword2_ext_ru", {"loc_weapon_family_chainsword_p1_m2",}, {"ru",}, function(locale, value) return "Штурмовой пиломеч" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_chainsword1_ext_ru", {"loc_weapon_pattern_chainsword_p1_m1",}, {"ru",}, function(locale, value) return "Кадия" end),
		-- create_template("weapons_patterns_chainsword2_ext_ru", {"loc_weapon_pattern_chainsword_p1_m2",}, {"ru",}, function(locale, value) return "Кадия" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_chainsword1_ext_ru", {"loc_weapon_mark_chainsword_p1_m1",}, {"ru",}, function(locale, value) return "Модель IV" end),
		create_template("weapons_marks_chainsword2_ext_ru", {"loc_weapon_mark_chainsword_p1_m2",}, {"ru",}, function(locale, value) return "Модель XIIIg" end),

		--[+ Combat Axe - Боевой топор +]--
	-- create_template("weapons_names_combataxe1_ext_ru", {"loc_weapon_family_combataxe_p1_m1",}, {"ru",}, function(locale, value) return "Боевой топор" end),
	-- create_template("weapons_names_combataxe2_ext_ru", {"loc_weapon_family_combataxe_p1_m2",}, {"ru",}, function(locale, value) return "Боевой топор" end),
	-- create_template("weapons_names_combataxe3_ext_ru", {"loc_weapon_family_combataxe_p1_m3",}, {"ru",}, function(locale, value) return "Боевой топор" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_combataxe1_ext_ru", {"loc_weapon_pattern_combataxe_p1_m1",}, {"ru",}, function(locale, value) return "Рашад" end),
		-- create_template("weapons_patterns_combataxe2_ext_ru", {"loc_weapon_pattern_combataxe_p1_m2",}, {"ru",}, function(locale, value) return "Антакс" end),
		-- create_template("weapons_patterns_combataxe3_ext_ru", {"loc_weapon_pattern_combataxe_p1_m3",}, {"ru",}, function(locale, value) return "Ахлис" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combataxe1_ext_ru", {"loc_weapon_mark_combataxe_p1_m1",}, {"ru",}, function(locale, value) return "Модель III" end),
		create_template("weapons_marks_combataxe2_ext_ru", {"loc_weapon_mark_combataxe_p1_m2",}, {"ru",}, function(locale, value) return "Модель V" end),
		create_template("weapons_marks_combataxe3_ext_ru", {"loc_weapon_mark_combataxe_p1_m3",}, {"ru",}, function(locale, value) return "Модель VIII" end),

		--[+ Tactical Axe - Тактический топор +]--
	-- create_template("weapons_names_combataxe1_2_ext_ru", {"loc_weapon_family_combataxe_p2_m1",}, {"ru",}, function(locale, value) return "Тактический топор" end),
	-- create_template("weapons_names_combataxe2_2_ext_ru", {"loc_weapon_family_combataxe_p2_m2",}, {"ru",}, function(locale, value) return "Тактический топор" end),
	-- create_template("weapons_names_combataxe3_2_ext_ru", {"loc_weapon_family_combataxe_p2_m3",}, {"ru",}, function(locale, value) return "Тактический топор" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_combataxe1_2_ext_ru", {"loc_weapon_pattern_combataxe_p2_m1",}, {"ru",}, function(locale, value) return "Атрокс" end),
		-- create_template("weapons_patterns_combataxe2_2_ext_ru", {"loc_weapon_pattern_combataxe_p2_m2",}, {"ru",}, function(locale, value) return "Атрокс" end),
		-- create_template("weapons_patterns_combataxe3_2_ext_ru", {"loc_weapon_pattern_combataxe_p2_m3",}, {"ru",}, function(locale, value) return "Атрокс" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combataxe1_2_ext_ru", {"loc_weapon_mark_combataxe_p2_m1",}, {"ru",}, function(locale, value) return "Модель II" end),
		create_template("weapons_marks_combataxe2_2_ext_ru", {"loc_weapon_mark_combataxe_p2_m2",}, {"ru",}, function(locale, value) return "Модель IV" end),
		create_template("weapons_marks_combataxe3_2_ext_ru", {"loc_weapon_mark_combataxe_p2_m3",}, {"ru",}, function(locale, value) return "Модель VII" end),

		--[+ Combat Blade - Боевой клинок +]--
	-- create_template("weapons_names_combatknife1_ext_ru", {"loc_weapon_family_combatknife_p1_m1",}, {"ru",}, function(locale, value) return "Боевой клинок" end),
	-- create_template("weapons_names_combatknife2_ext_ru", {"loc_weapon_family_combatknife_p1_m2",}, {"ru",}, function(locale, value) return "Боевой клинок" end),
			--[+ Pattern - Паттерн +]-- руоф Катачанск.
		create_template("weapons_patterns_combatknife1_ext_ru", {"loc_weapon_pattern_combatknife_p1_m1",}, {"ru",}, function(locale, value) return "Катачан" end),
		create_template("weapons_patterns_combatknife2_ext_ru", {"loc_weapon_pattern_combatknife_p1_m2",}, {"ru",}, function(locale, value) return "Катачан" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combatknife1_ext_ru", {"loc_weapon_mark_combatknife_p1_m1",}, {"ru",}, function(locale, value) return "Модель III" end),
		create_template("weapons_marks_combatknife2_ext_ru", {"loc_weapon_mark_combatknife_p1_m2",}, {"ru",}, function(locale, value) return "Модель VI" end),

		--[+ "Devil's Claw" Sword - Меч «Дьявольский коготь» +]--
	-- create_template("weapons_names_combatsword1_ext_ru", {"loc_weapon_family_combatsword_p1_m1",}, {"ru",}, function(locale, value) return "Меч «Дьявольский коготь»" end),
	-- create_template("weapons_names_combatsword2_ext_ru", {"loc_weapon_family_combatsword_p1_m2",}, {"ru",}, function(locale, value) return "Меч «Дьявольский коготь»" end),
	-- create_template("weapons_names_combatsword3_ext_ru", {"loc_weapon_family_combatsword_p1_m3",}, {"ru",}, function(locale, value) return "Меч «Дьявольский коготь»" end),
			--[+ Pattern - Паттерн +]-- руоф Катачанск.
		create_template("weapons_patterns_combatsword1_ext_ru", {"loc_weapon_pattern_combatsword_p1_m1",}, {"ru",}, function(locale, value) return "Катачан" end),
		create_template("weapons_patterns_combatsword2_ext_ru", {"loc_weapon_pattern_combatsword_p1_m2",}, {"ru",}, function(locale, value) return "Катачан" end),
		create_template("weapons_patterns_combatsword3_ext_ru", {"loc_weapon_pattern_combatsword_p1_m3",}, {"ru",}, function(locale, value) return "Катачан" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combatsword1_ext_ru", {"loc_weapon_mark_combatsword_p1_m1",}, {"ru",}, function(locale, value) return "Модель I" end),
		create_template("weapons_marks_combatsword2_ext_ru", {"loc_weapon_mark_combatsword_p1_m2",}, {"ru",}, function(locale, value) return "Модель IV" end),
		create_template("weapons_marks_combatsword3_ext_ru", {"loc_weapon_mark_combatsword_p1_m3",}, {"ru",}, function(locale, value) return "Модель VII" end),

		--[+ Heavy Sword - Тяжёлый меч +]-- руоф Тяжелый меч
	create_template("weapons_names_combatsword1_2_ext_ru", {"loc_weapon_family_combatsword_p2_m1",}, {"ru",}, function(locale, value) return "Тяжёлый меч" end),
	create_template("weapons_names_combatsword2_2_ext_ru", {"loc_weapon_family_combatsword_p2_m2",}, {"ru",}, function(locale, value) return "Тяжёлый меч" end),
	create_template("weapons_names_combatsword3_2_ext_ru", {"loc_weapon_family_combatsword_p2_m3",}, {"ru",}, function(locale, value) return "Тяжёлый меч" end),
			--[+ Pattern - Паттерн +]-- руоф Тартолскай
		create_template("weapons_patterns_combatsword1_2_ext_ru", {"loc_weapon_pattern_combatsword_p2_m1",}, {"ru",}, function(locale, value) return "Туртольский" end),
		create_template("weapons_patterns_combatsword2_2_ext_ru", {"loc_weapon_pattern_combatsword_p2_m2",}, {"ru",}, function(locale, value) return "Туртольский" end),
		create_template("weapons_patterns_combatsword3_2_ext_ru", {"loc_weapon_pattern_combatsword_p2_m3",}, {"ru",}, function(locale, value) return "Туртольский" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combatsword1_2_ext_ru", {"loc_weapon_mark_combatsword_p2_m1",}, {"ru",}, function(locale, value) return "Модель VI" end),
		create_template("weapons_marks_combatsword2_2_ext_ru", {"loc_weapon_mark_combatsword_p2_m2",}, {"ru",}, function(locale, value) return "Модель VII" end),
		create_template("weapons_marks_combatsword3_2_ext_ru", {"loc_weapon_mark_combatsword_p2_m3",}, {"ru",}, function(locale, value) return "Модель IX" end),

		--[+ Duelling Sword - Дуэльный меч +]--
	-- create_template("weapons_names_combatsword1_3_ext_ru", {"loc_weapon_family_combatsword_p3_m1",}, {"ru",}, function(locale, value) return "Дуэльный меч" end),
	-- create_template("weapons_names_combatsword2_3_ext_ru", {"loc_weapon_family_combatsword_p3_m2",}, {"ru",}, function(locale, value) return "Дуэльный меч" end),
	-- create_template("weapons_names_combatsword3_3_ext_ru", {"loc_weapon_family_combatsword_p3_m3",}, {"ru",}, function(locale, value) return "Дуэльный меч" end),
			--[+ Pattern - Паттерн +]-- руоф Маккабианск.
		create_template("weapons_patterns_combatsword1_3_ext_ru", {"loc_weapon_pattern_combatsword_p3_m1",}, {"ru",}, function(locale, value) return "Маккабиан" end),
		create_template("weapons_patterns_combatsword2_3_ext_ru", {"loc_weapon_pattern_combatsword_p3_m2",}, {"ru",}, function(locale, value) return "Маккабиан" end),
		create_template("weapons_patterns_combatsword3_3_ext_ru", {"loc_weapon_pattern_combatsword_p3_m3",}, {"ru",}, function(locale, value) return "Маккабиан" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combatsword1_3_ext_ru", {"loc_weapon_mark_combatsword_p3_m1",}, {"ru",}, function(locale, value) return "Модель II" end),
		create_template("weapons_marks_combatsword2_3_ext_ru", {"loc_weapon_mark_combatsword_p3_m2",}, {"ru",}, function(locale, value) return "Модель IV" end),
		create_template("weapons_marks_combatsword3_3_ext_ru", {"loc_weapon_mark_combatsword_p3_m3",}, {"ru",}, function(locale, value) return "Модель V" end),

		--[+ Blaze Force Greatsword - Пылающий психосиловой двуручный меч +]-- руоф Длинный пламенный психосиловой меч
	create_template("weapons_names_forcesword_2h1_ext_ru", {"loc_weapon_family_forcesword_2h_p1_m1",}, {"ru",}, function(locale, value) return "Пылающий психосиловой двуручный меч" end),
	create_template("weapons_names_forcesword_2h2_ext_ru", {"loc_weapon_family_forcesword_2h_p1_m2",}, {"ru",}, function(locale, value) return "Пылающий психосиловой двуручный меч" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_forcesword_2h1_ext_ru", {"loc_weapon_pattern_forcesword_2h_p1_m1",}, {"ru",}, function(locale, value) return "Завет" end),
		-- create_template("weapons_patterns_forcesword_2h2_ext_ru", {"loc_weapon_pattern_forcesword_2h_p1_m2",}, {"ru",}, function(locale, value) return "Завет" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_forcesword_2h1_ext_ru", {"loc_weapon_mark_forcesword_2h_p1_m1",}, {"ru",}, function(locale, value) return "Модель VI" end),
		create_template("weapons_marks_forcesword_2h2_ext_ru", {"loc_weapon_mark_forcesword_2h_p1_m2",}, {"ru",}, function(locale, value) return "Модель VIII" end),

		--[+ Blaze Force Sword - Пылающий психосиловой меч +]-- руоф Пламенный психосиловой меч
	create_template("weapons_names_forcesword1_ext_ru", {"loc_weapon_family_forcesword_p1_m1",}, {"ru",}, function(locale, value) return "Пылающий психосиловой меч" end),
	create_template("weapons_names_forcesword2_ext_ru", {"loc_weapon_family_forcesword_p1_m2",}, {"ru",}, function(locale, value) return "Пылающий психосиловой меч" end),
	create_template("weapons_names_forcesword3_ext_ru", {"loc_weapon_family_forcesword_p1_m3",}, {"ru",}, function(locale, value) return "Пылающий психосиловой меч" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_forcesword1_ext_ru", {"loc_weapon_pattern_forcesword_p1_m1",}, {"ru",}, function(locale, value) return "Обскурус" end),
		-- create_template("weapons_patterns_forcesword2_ext_ru", {"loc_weapon_pattern_forcesword_p1_m2",}, {"ru",}, function(locale, value) return "Деймос" end),
		-- create_template("weapons_patterns_forcesword3_ext_ru", {"loc_weapon_pattern_forcesword_p1_m3",}, {"ru",}, function(locale, value) return "Иллиси" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_forcesword1_ext_ru", {"loc_weapon_mark_forcesword_p1_m1",}, {"ru",}, function(locale, value) return "Модель II" end),
		create_template("weapons_marks_forcesword2_ext_ru", {"loc_weapon_mark_forcesword_p1_m2",}, {"ru",}, function(locale, value) return "Модель IV" end),
		create_template("weapons_marks_forcesword3_ext_ru", {"loc_weapon_mark_forcesword_p1_m3",}, {"ru",}, function(locale, value) return "Модель V" end),

		--[+ Shock Maul - Шоковая булава +]--
	-- create_template("weapons_names_powermaul1_ext_ru", {"loc_weapon_family_powermaul_p1_m1",}, {"ru",}, function(locale, value) return "Шоковая булава" end),
	-- create_template("weapons_names_powermaul2_ext_ru", {"loc_weapon_family_powermaul_p1_m2",}, {"ru",}, function(locale, value) return "Шоковая булава" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_powermaul1_ext_ru", {"loc_weapon_pattern_powermaul_p1_m1",}, {"ru",}, function(locale, value) return "Агни" end),
		-- create_template("weapons_patterns_powermaul2_ext_ru", {"loc_weapon_pattern_powermaul_p1_m2",}, {"ru",}, function(locale, value) return "Муниторум" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_powermaul1_ext_ru", {"loc_weapon_mark_powermaul_p1_m1",}, {"ru",}, function(locale, value) return "Модель Ia" end),
		create_template("weapons_marks_powermaul2_ext_ru", {"loc_weapon_mark_powermaul_p1_m2",}, {"ru",}, function(locale, value) return "Модель III" end),

		--[+ +RANGED - ДАЛЬНИЙ БОЙ+ +]--

		--[+ Infantry Autogun - Пехотный автомат +]--
	-- create_template("weapons_names_autogun1_ext_ru", {"loc_weapon_family_autogun_p1_m1",}, {"ru",}, function(locale, value) return "Пехотный автомат" end),
	-- create_template("weapons_names_autogun2_ext_ru", {"loc_weapon_family_autogun_p1_m2",}, {"ru",}, function(locale, value) return "Пехотный автомат" end),
	-- create_template("weapons_names_autogun3_ext_ru", {"loc_weapon_family_autogun_p1_m3",}, {"ru",}, function(locale, value) return "Пехотный автомат" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_autogun1_ext_ru", {"loc_weapon_pattern_autogun_p1_m1",}, {"ru",}, function(locale, value) return "Агрипинаа" end),
		-- create_template("weapons_patterns_autogun2_ext_ru", {"loc_weapon_pattern_autogun_p1_m2",}, {"ru",}, function(locale, value) return "Вракс" end),
		-- create_template("weapons_patterns_autogun3_ext_ru", {"loc_weapon_pattern_autogun_p1_m3",}, {"ru",}, function(locale, value) return "Колумнус" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_autogun1_ext_ru", {"loc_weapon_mark_autogun_p1_m1",}, {"ru",}, function(locale, value) return "Модель I" end),
		create_template("weapons_marks_autogun2_ext_ru", {"loc_weapon_mark_autogun_p1_m2",}, {"ru",}, function(locale, value) return "Модель V" end),
		create_template("weapons_marks_autogun3_ext_ru", {"loc_weapon_mark_autogun_p1_m3",}, {"ru",}, function(locale, value) return "Модель VIII" end),

		--[+ Braced Autogun - Усиленный автомат +]--
	-- create_template("weapons_names_autogun1_2_ext_ru", {"loc_weapon_family_autogun_p2_m1",}, {"ru",}, function(locale, value) return "Усиленный автомат" end),
	-- create_template("weapons_names_autogun2_2_ext_ru", {"loc_weapon_family_autogun_p2_m2",}, {"ru",}, function(locale, value) return "Усиленный автомат" end),
	-- create_template("weapons_names_autogun3_2_ext_ru", {"loc_weapon_family_autogun_p2_m3",}, {"ru",}, function(locale, value) return "Усиленный автомат" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_autogun1_2_ext_ru", {"loc_weapon_pattern_autogun_p2_m1",}, {"ru",}, function(locale, value) return "Вракс" end),
		-- create_template("weapons_patterns_autogun2_2_ext_ru", {"loc_weapon_pattern_autogun_p2_m2",}, {"ru",}, function(locale, value) return "Грайя" end),
		-- create_template("weapons_patterns_autogun3_2_ext_ru", {"loc_weapon_pattern_autogun_p2_m3",}, {"ru",}, function(locale, value) return "Агрипинаа" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_autogun1_2_ext_ru", {"loc_weapon_mark_autogun_p2_m1",}, {"ru",}, function(locale, value) return "Модель II" end),
		create_template("weapons_marks_autogun2_2_ext_ru", {"loc_weapon_mark_autogun_p2_m2",}, {"ru",}, function(locale, value) return "Модель IV" end),
		create_template("weapons_marks_autogun3_2_ext_ru", {"loc_weapon_mark_autogun_p2_m3",}, {"ru",}, function(locale, value) return "Модель VIII" end),

		--[+ Vigilant Autogun - Вигилянтский автомат +]-- руоф Автомат «Бдительность»
	create_template("weapons_names_autogun1_ext_ru", {"loc_weapon_family_autogun_p3_m1",}, {"ru",}, function(locale, value) return "Вигилянтский автомат" end),
	create_template("weapons_names_autogun2_ext_ru", {"loc_weapon_family_autogun_p3_m2",}, {"ru",}, function(locale, value) return "Вигилянтский автомат" end),
	create_template("weapons_names_autogun3_ext_ru", {"loc_weapon_family_autogun_p3_m3",}, {"ru",}, function(locale, value) return "Вигилянтский автомат" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_autogun1_ext_ru", {"loc_weapon_pattern_autogun_p3_m1",}, {"ru",}, function(locale, value) return "Колумнус" end),
		-- create_template("weapons_patterns_autogun2_ext_ru", {"loc_weapon_pattern_autogun_p3_m2",}, {"ru",}, function(locale, value) return "Грайя" end),
		-- create_template("weapons_patterns_autogun3_ext_ru", {"loc_weapon_pattern_autogun_p3_m3",}, {"ru",}, function(locale, value) return "Агрипинаа" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_autogun1_ext_ru", {"loc_weapon_mark_autogun_p3_m1",}, {"ru",}, function(locale, value) return "Модель III" end),
		create_template("weapons_marks_autogun2_ext_ru", {"loc_weapon_mark_autogun_p3_m2",}, {"ru",}, function(locale, value) return "Модель VII" end),
		create_template("weapons_marks_autogun3_ext_ru", {"loc_weapon_mark_autogun_p3_m3",}, {"ru",}, function(locale, value) return "Модель IX" end),

		--[+ Shredder Autopistol - Автопистолет-крошитель +]--
	-- create_template("weapons_names_autopistol1_ext_ru", {"loc_weapon_family_autopistol_p1_m1",}, {"ru",}, function(locale, value) return "Автопистолет-крошитель" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_autopistol1_ext_ru", {"loc_weapon_pattern_autopistol_p1_m1",}, {"ru",}, function(locale, value) return "Иус" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_autopistol1_ext_ru", {"loc_weapon_mark_autopistol_p1_m1",}, {"ru",}, function(locale, value) return "Модель IV" end),

		--[+ Bolt Pistol - Болт-пистолет +]--
	-- create_template("weapons_names_boltpistol1_ext_ru", {"loc_weapon_family_boltpistol_p1_m1",}, {"ru",}, function(locale, value) return "Болт-пистолет" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_boltpistol1_ext_ru", {"loc_weapon_pattern_boltpistol_p1_m1",}, {"ru",}, function(locale, value) return "Годвин-Бранкс" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_boltpistol1_ext_ru", {"loc_weapon_mark_boltpistol_p1_m1",}, {"ru",}, function(locale, value) return "Модель IV" end),

		--[+ Voidblast Force Staff - Травматический психосиловой посох +]-- (Trauma) руоф Психосиловой посох взрывной пустоты
	create_template("weapons_names_forcestaff1_ext_ru", {"loc_weapon_family_forcestaff_p1_m1",}, {"ru",}, function(locale, value) return "Психосиловой посох Травмы" end), -- Травматический психосиловой посох
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_forcestaff1_ext_ru", {"loc_weapon_pattern_forcestaff_p1_m1",}, {"ru",}, function(locale, value) return "Эквинокс" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_forcestaff1_ext_ru", {"loc_weapon_mark_forcestaff_p1_m1",}, {"ru",}, function(locale, value) return "Модель III" end),

		--[+ Inferno Force Staff - Психосиловой посох Инферно +]-- руоф Огневой психосиловой посох
	create_template("weapons_names_forcestaff1_2_ext_ru", {"loc_weapon_family_forcestaff_p2_m1",}, {"ru",}, function(locale, value) return "Психосиловой посох Инферно" end),
			--[+ Pattern - Паттерн +]-- руоф Рифтхевен
		create_template("weapons_patterns_forcestaff1_2_ext_ru", {"loc_weapon_pattern_forcestaff_p2_m1",}, {"ru",}, function(locale, value) return "Рифтхейвен" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_forcestaff1_2_ext_ru", {"loc_weapon_mark_forcestaff_p2_m1",}, {"ru",}, function(locale, value) return "Модель II" end),

		--[+ Electrokinetic Force Staff - Психосиловой посох Электрокинетик +]-- руоф Электрокинетический психосиловой посох
	create_template("weapons_names_forcestaff1_3_ext_ru", {"loc_weapon_family_forcestaff_p3_m1",}, {"ru",}, function(locale, value) return "Психосиловой посох Электрокинетик" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_forcestaff1_3_ext_ru", {"loc_weapon_pattern_forcestaff_p3_m1",}, {"ru",}, function(locale, value) return "Номанус" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_forcestaff1_3_ext_ru", {"loc_weapon_mark_forcestaff_p3_m1",}, {"ru",}, function(locale, value) return "Модель VI" end),

		--[+ Voidstrike Force Staff - Психосиловой посох Пустоты +]-- руоф Психосиловой пустотный посох
	create_template("weapons_names_forcestaff1_4_ext_ru", {"loc_weapon_family_forcestaff_p4_m1",}, {"ru",}, function(locale, value) return "Психосиловой посох Пустоты" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_forcestaff1_4_ext_ru", {"loc_weapon_pattern_forcestaff_p4_m1",}, {"ru",}, function(locale, value) return "Эквинокс" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_forcestaff1_4_ext_ru", {"loc_weapon_mark_forcestaff_p4_m1",}, {"ru",}, function(locale, value) return "Модель IV" end),

		--[+ Infantry Lasgun - Лазвинтовка пехоты +]-- руоф Пехотный лазган
	create_template("weapons_names_lasgun1_ext_ru", {"loc_weapon_family_lasgun_p1_m1",}, {"ru",}, function(locale, value) return "Лазвинтовка пехоты" end),
	create_template("weapons_names_lasgun2_ext_ru", {"loc_weapon_family_lasgun_p1_m2",}, {"ru",}, function(locale, value) return "Лазвинтовка пехоты" end),
	create_template("weapons_names_lasgun3_ext_ru", {"loc_weapon_family_lasgun_p1_m3",}, {"ru",}, function(locale, value) return "Лазвинтовка пехоты" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_lasgun1_ext_ru", {"loc_weapon_pattern_lasgun_p1_m1",}, {"ru",}, function(locale, value) return "Кантраэль" end),
		-- create_template("weapons_patterns_lasgun2_ext_ru", {"loc_weapon_pattern_lasgun_p1_m2",}, {"ru",}, function(locale, value) return "Кантраэль" end),
		-- create_template("weapons_patterns_lasgun3_ext_ru", {"loc_weapon_pattern_lasgun_p1_m3",}, {"ru",}, function(locale, value) return "Кантраэль" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_lasgun1_ext_ru", {"loc_weapon_mark_lasgun_p1_m1",}, {"ru",}, function(locale, value) return "Модель VII" end),
		create_template("weapons_marks_lasgun2_ext_ru", {"loc_weapon_mark_lasgun_p1_m2",}, {"ru",}, function(locale, value) return "Модель IIb" end),
		create_template("weapons_marks_lasgun3_ext_ru", {"loc_weapon_mark_lasgun_p1_m3",}, {"ru",}, function(locale, value) return "Модель IX" end),

		--[+ Recon Lasgun - Лазвинтовка разведки +]-- руоф Разведывательный лазган
	create_template("weapons_names_lasgun1_3_ext_ru", {"loc_weapon_family_lasgun_p3_m1",}, {"ru",}, function(locale, value) return "Лазвинтовка разведки" end),
	create_template("weapons_names_lasgun2_3_ext_ru", {"loc_weapon_family_lasgun_p3_m2",}, {"ru",}, function(locale, value) return "Лазвинтовка разведки" end),
	create_template("weapons_names_lasgun3_3_ext_ru", {"loc_weapon_family_lasgun_p3_m3",}, {"ru",}, function(locale, value) return "Лазвинтовка разведки" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_lasgun1_3_ext_ru", {"loc_weapon_pattern_lasgun_p3_m1",}, {"ru",}, function(locale, value) return "Аккатран" end),
		-- create_template("weapons_patterns_lasgun2_3_ext_ru", {"loc_weapon_pattern_lasgun_p3_m2",}, {"ru",}, function(locale, value) return "Аккатран" end),
		-- create_template("weapons_patterns_lasgun3_3_ext_ru", {"loc_weapon_pattern_lasgun_p3_m3",}, {"ru",}, function(locale, value) return "Аккатран" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_lasgun1_3_ext_ru", {"loc_weapon_mark_lasgun_p3_m1",}, {"ru",}, function(locale, value) return "Модель VIc" end),
		create_template("weapons_marks_lasgun2_3_ext_ru", {"loc_weapon_mark_lasgun_p3_m2",}, {"ru",}, function(locale, value) return "Модель XII" end),
		create_template("weapons_marks_lasgun3_3_ext_ru", {"loc_weapon_mark_lasgun_p3_m3",}, {"ru",}, function(locale, value) return "Модель XIV" end),

		--[+ Heavy Laspistol - Тяжёлый лазпистолет +]-- руоф Тяжелый лазпистолет
	create_template("weapons_names_laspistol1_ext_ru", {"loc_weapon_family_laspistol_p1_m1",}, {"ru",}, function(locale, value) return "Тяжёлый лазпистолет" end),
	create_template("weapons_names_laspistol3_ext_ru", {"loc_weapon_family_laspistol_p1_m3",}, {"ru",}, function(locale, value) return "Тяжёлый лазпистолет" end),
			--[+ Pattern - Паттерн +]--
		create_template("weapons_patterns_laspistol1_ext_ru", {"loc_weapon_pattern_laspistol_p1_m1",}, {"ru",}, function(locale, value) return "Аккатран РП" end), -- Аккатран MG
		-- create_template("weapons_patterns_laspistol3_ext_ru", {"loc_weapon_pattern_laspistol_p1_m3",}, {"ru",}, function(locale, value) return "Кантраэль" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_laspistol1_ext_ru", {"loc_weapon_mark_laspistol_p1_m1",}, {"ru",}, function(locale, value) return "Модель II" end),
		create_template("weapons_marks_laspistol3_ext_ru", {"loc_weapon_mark_laspistol_p1_m3",}, {"ru",}, function(locale, value) return "Модель X" end),

		--[+ Combat Shotgun - Боевой дробовик +]--
	-- create_template("weapons_names_shotgun1_ext_ru", {"loc_weapon_family_shotgun_p1_m1",}, {"ru",}, function(locale, value) return "Боевой дробовик" end),
	-- create_template("weapons_names_shotgun2_ext_ru", {"loc_weapon_family_shotgun_p1_m2",}, {"ru",}, function(locale, value) return "Боевой дробовик" end),
	-- create_template("weapons_names_shotgun3_ext_ru", {"loc_weapon_family_shotgun_p1_m3",}, {"ru",}, function(locale, value) return "Боевой дробовик" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_shotgun1_ext_ru", {"loc_weapon_pattern_shotgun_p1_m1",}, {"ru",}, function(locale, value) return "Зарона" end),
		-- create_template("weapons_patterns_shotgun2_ext_ru", {"loc_weapon_pattern_shotgun_p1_m2",}, {"ru",}, function(locale, value) return "Агрипинаа" end),
		-- create_template("weapons_patterns_shotgun3_ext_ru", {"loc_weapon_pattern_shotgun_p1_m3",}, {"ru",}, function(locale, value) return "Аккатран" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_shotgun1_ext_ru", {"loc_weapon_mark_shotgun_p1_m1",}, {"ru",}, function(locale, value) return "Модель VI" end),
		create_template("weapons_marks_shotgun2_ext_ru", {"loc_weapon_mark_shotgun_p1_m2",}, {"ru",}, function(locale, value) return "Модель VII" end),
		create_template("weapons_marks_shotgun3_ext_ru", {"loc_weapon_mark_shotgun_p1_m3",}, {"ru",}, function(locale, value) return "Модель IX" end),

		--[+ Double-Barrelled Shotgun - Двухствольный дробовик +]--
	-- create_template("weapons_names_shotgun1_2_ext_ru", {"loc_weapon_family_shotgun_p2_m1",}, {"ru",}, function(locale, value) return "Двухствольный дробовик" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_shotgun1_2_ext_ru", {"loc_weapon_pattern_shotgun_p2_m1",}, {"ru",}, function(locale, value) return "Круцис" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_shotgun1_2_ext_ru", {"loc_weapon_mark_shotgun_p2_m1",}, {"ru",}, function(locale, value) return "Модель XI" end),

		--[+ Quickdraw Stub Revolver - Быстровытаскиваемый стаб-револьвер +]-- руоф Скорострельный стаб-револьвер
	create_template("weapons_names_stubrevolver1_ext_ru", {"loc_weapon_family_stubrevolver_p1_m1",}, {"ru",}, function(locale, value) return "Быстровытаскиваемый стаб-револьвер" end),
	create_template("weapons_names_stubrevolver2_ext_ru", {"loc_weapon_family_stubrevolver_p1_m2",}, {"ru",}, function(locale, value) return "Быстровытаскиваемый стаб-револьвер" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_stubrevolver1_ext_ru", {"loc_weapon_pattern_stubrevolver_p1_m1",}, {"ru",}, function(locale, value) return "Зарона" end),
		-- create_template("weapons_patterns_stubrevolver2_ext_ru", {"loc_weapon_pattern_stubrevolver_p1_m2",}, {"ru",}, function(locale, value) return "Агрипинаа" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_stubrevolver1_ext_ru", {"loc_weapon_mark_stubrevolver_p1_m1",}, {"ru",}, function(locale, value) return "Модель IIa" end),
		create_template("weapons_marks_stubrevolver2_ext_ru", {"loc_weapon_mark_stubrevolver_p1_m2",}, {"ru",}, function(locale, value) return "Модель XIV" end),


	--[+ +ZEALOT - ИЗУВЕР+ +]--
		--[+ +MELEE - БЛИЖНИЙ БОЙ+ +]--

	--[+ Heavy Eviscerator - Тяжёлый эвисцератор +]-- -- Тяжелый эвисцератор
	create_template("weapons_names_2h_eviscerator1_ext_ru", {"loc_weapon_family_chainsword_2h_p1_m1",}, {"ru",}, function(locale, value) return "Тяжёлый эвисцератор" end),
	create_template("weapons_names_2h_eviscerator2_ext_ru", {"loc_weapon_family_chainsword_2h_p1_m2",}, {"ru",}, function(locale, value) return "Тяжёлый эвисцератор" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_2h_eviscerator1_ext_ru", {"loc_weapon_pattern_chainsword_2h_p1_m1",}, {"ru",}, function(locale, value) return "Тигрус" end),
		-- create_template("weapons_patterns_2h_eviscerator2_ext_ru", {"loc_weapon_pattern_chainsword_2h_p1_m2",}, {"ru",}, function(locale, value) return "Тигрус" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_2h_eviscerator1_ext_ru", {"loc_weapon_mark_chainsword_2h_p1_m1",}, {"ru",}, function(locale, value) return "Модель III" end),
		create_template("weapons_marks_2h_eviscerator2_ext_ru", {"loc_weapon_mark_chainsword_2h_p1_m2",}, {"ru",}, function(locale, value) return "Модель XV" end),

			--[+ Crusher - Дробитель +]--
	-- create_template("weapons_names_powermaul_2h_1_ext_ru", {"loc_weapon_family_powermaul_2h_p1_m1",}, {"ru",}, function(locale, value) return "Дробитель" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_powermaul_2h_1_ext_ru", {"loc_weapon_pattern_powermaul_2h_p1_m1",}, {"ru",}, function(locale, value) return "Индигнатус" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_powermaul_2h_1_ext_ru", {"loc_weapon_mark_powermaul_2h_p1_m1",}, {"ru",}, function(locale, value) return "Модель IVe" end),

			--[+ Relic Blade - Реликвийный клинок +]-- руоф Клинок реликвий
	create_template("weapons_names_powersword_2h_1_ext_ru", {"loc_weapon_family_powersword_2h_p1_m1",}, {"ru",}, function(locale, value) return "Реликвийный клинок" end),
	create_template("weapons_names_powersword_2h_2_ext_ru", {"loc_weapon_family_powersword_2h_p1_m2",}, {"ru",}, function(locale, value) return "Реликвийный клинок" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_powersword_2h_1_ext_ru", {"loc_weapon_pattern_powersword_2h_p1_m1",}, {"ru",}, function(locale, value) return "Муниторум" end),
		-- create_template("weapons_patterns_powersword_2h_2_ext_ru", {"loc_weapon_pattern_powersword_2h_p1_m2",}, {"ru",}, function(locale, value) return "Муниторум" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_powersword_2h_1_ext_ru", {"loc_weapon_mark_powersword_2h_p1_m1",}, {"ru",}, function(locale, value) return "Модель X" end),
		create_template("weapons_marks_powersword_2h_2_ext_ru", {"loc_weapon_mark_powersword_2h_p1_m2",}, {"ru",}, function(locale, value) return "Модель II" end),

			--[+ Thunder Hammer - Громовой молот +]--
	-- create_template("weapons_names_thunderhammer_2h_1_ext_ru", {"loc_weapon_family_thunderhammer_2h_p1_m1",}, {"ru",}, function(locale, value) return "Громовой молот" end),
	-- create_template("weapons_names_thunderhammer_2h_2_ext_ru", {"loc_weapon_family_thunderhammer_2h_p1_m2",}, {"ru",}, function(locale, value) return "Громовой молот" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_thunderhammer_2h_1_ext_ru", {"loc_weapon_pattern_thunderhammer_2h_p1_m1",}, {"ru",}, function(locale, value) return "Круцис" end),
		-- create_template("weapons_patterns_thunderhammer_2h_2_ext_ru", {"loc_weapon_pattern_thunderhammer_2h_p1_m2",}, {"ru",}, function(locale, value) return "Айронхельн" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_thunderhammer_2h_1_ext_ru", {"loc_weapon_mark_thunderhammer_2h_p1_m1",}, {"ru",}, function(locale, value) return "Модель II" end),
		create_template("weapons_marks_thunderhammer_2h_2_ext_ru", {"loc_weapon_mark_thunderhammer_2h_p1_m2",}, {"ru",}, function(locale, value) return "Модель IV" end),

		--[+ +RANGED - ДАЛЬНИЙ БОЙ+ +]--

			--[+ Spearhead Boltgun - Пронзающий болтер +]--
	-- create_template("weapons_names_bolter1_ext_ru", {"loc_weapon_family_bolter_p1_m1",}, {"ru",}, function(locale, value) return "Пронзающий болтер" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_bolter1_ext_ru", {"loc_weapon_pattern_bolter_p1_m1",}, {"ru",}, function(locale, value) return "Люк" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_bolter1_ext_ru", {"loc_weapon_mark_bolter_p1_m1",}, {"ru",}, function(locale, value) return "Модель IIb" end),

			--[+ Purgation Flamer - Огнемёт очищения +]-- руоф Огнемет чистки
	create_template("weapons_names_flamer1_ext_ru", {"loc_weapon_family_flamer_p1_m1",}, {"ru",}, function(locale, value) return "Огнемёт очищения" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_flamer1_ext_ru", {"loc_weapon_pattern_flamer_p1_m1",}, {"ru",}, function(locale, value) return "Артемия" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_flamer1_ext_ru", {"loc_weapon_mark_flamer_p1_m1",}, {"ru",}, function(locale, value) return "Модель III" end),


	--[+ +VETERAN - ВЕТЕРАН+ +]--
		--[+ +MELEE - БЛИЖНИЙ БОЙ+ +]--

			--[+ Sapper Shovel - Сапёрная лопата +]-- руоф Саперная лопатка
	create_template("weapons_names_combataxe1_3_ext_ru", {"loc_weapon_family_combataxe_p3_m1",}, {"ru",}, function(locale, value) return "Сапёрная лопата" end),
	create_template("weapons_names_combataxe2_3_ext_ru", {"loc_weapon_family_combataxe_p3_m2",}, {"ru",}, function(locale, value) return "Сапёрная лопата" end),
	create_template("weapons_names_combataxe3_3_ext_ru", {"loc_weapon_family_combataxe_p3_m3",}, {"ru",}, function(locale, value) return "Сапёрная лопата" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_combataxe1_3_ext_ru", {"loc_weapon_pattern_combataxe_p3_m1",}, {"ru",}, function(locale, value) return "Муниторум" end),
		-- create_template("weapons_patterns_combataxe2_3_ext_ru", {"loc_weapon_pattern_combataxe_p3_m2",}, {"ru",}, function(locale, value) return "Муниторум" end),
		-- create_template("weapons_patterns_combataxe3_3_ext_ru", {"loc_weapon_pattern_combataxe_p3_m3",}, {"ru",}, function(locale, value) return "Муниторум" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combataxe1_3_ext_ru", {"loc_weapon_mark_combataxe_p3_m1",}, {"ru",}, function(locale, value) return "Модель I" end),
		create_template("weapons_marks_combataxe2_3_ext_ru", {"loc_weapon_mark_combataxe_p3_m2",}, {"ru",}, function(locale, value) return "Модель III" end),
		create_template("weapons_marks_combataxe3_3_ext_ru", {"loc_weapon_mark_combataxe_p3_m3",}, {"ru",}, function(locale, value) return "Модель VII" end),

			--[+ Power Sword - Силовой меч +]--
	-- create_template("weapons_names_powersword1_ext_ru", {"loc_weapon_family_powersword_p1_m1",}, {"ru",}, function(locale, value) return "Силовой меч" end),
	-- create_template("weapons_names_powersword2_ext_ru", {"loc_weapon_family_powersword_p1_m2",}, {"ru",}, function(locale, value) return "Силовой меч" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_powersword1_ext_ru", {"loc_weapon_pattern_powersword_p1_m1",}, {"ru",}, function(locale, value) return "Скандар" end),
		-- create_template("weapons_patterns_powersword2_ext_ru", {"loc_weapon_pattern_powersword_p1_m2",}, {"ru",}, function(locale, value) return "Ахлис" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_powersword1_ext_ru", {"loc_weapon_mark_powersword_p1_m1",}, {"ru",}, function(locale, value) return "Модель III" end),
		create_template("weapons_marks_powersword2_ext_ru", {"loc_weapon_mark_powersword_p1_m2",}, {"ru",}, function(locale, value) return "Модель VI" end),

		--[+ +RANGED - ДАЛЬНИЙ БОЙ+ +]--

			--[+ Helbore Lasgun - Хельборовое лазружьё +]-- руоф Хелборский лазган
	create_template("weapons_names_lasgun1_4_ext_ru", {"loc_weapon_family_lasgun_p2_m1",}, {"ru",}, function(locale, value) return "Хельборовое лазружьё" end),
	create_template("weapons_names_lasgun2_4_ext_ru", {"loc_weapon_family_lasgun_p2_m2",}, {"ru",}, function(locale, value) return "Хельборовое лазружьё" end),
	create_template("weapons_names_lasgun3_4_ext_ru", {"loc_weapon_family_lasgun_p2_m3",}, {"ru",}, function(locale, value) return "Хельборовое лазружьё" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_lasgun1_4_ext_ru", {"loc_weapon_pattern_lasgun_p2_m1",}, {"ru",}, function(locale, value) return "Люций" end),
		-- create_template("weapons_patterns_lasgun2_4_ext_ru", {"loc_weapon_pattern_lasgun_p2_m2",}, {"ru",}, function(locale, value) return "Люций" end),
		-- create_template("weapons_patterns_lasgun3_4_ext_ru", {"loc_weapon_pattern_lasgun_p2_m3",}, {"ru",}, function(locale, value) return "Люций" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_lasgun1_4_ext_ru", {"loc_weapon_mark_lasgun_p2_m1",}, {"ru",}, function(locale, value) return "Модель IIIa" end),
		create_template("weapons_marks_lasgun2_4_ext_ru", {"loc_weapon_mark_lasgun_p2_m2",}, {"ru",}, function(locale, value) return "Модель V" end),
		create_template("weapons_marks_lasgun3_4_ext_ru", {"loc_weapon_mark_lasgun_p2_m3",}, {"ru",}, function(locale, value) return "Модель IV" end),

			--[+ Plasma Gun - Плазмомёт +]--
	-- create_template("weapons_names_plasmagun1_ext_ru", {"loc_weapon_family_plasmagun_p1_m1",}, {"ru",}, function(locale, value) return "Плазмомёт" end),
			--[+ Pattern - Паттерн +]--
		create_template("weapons_patterns_plasmagun1_ext_ru", {"loc_weapon_pattern_plasmagun_p1_m1",}, {"ru",}, function(locale, value) return "M35 Магнакор" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_plasmagun1_ext_ru", {"loc_weapon_mark_plasmagun_p1_m1",}, {"ru",}, function(locale, value) return "Модель II" end),


	--[+ +OGRYN - ОГРИН+ +]--
		--[+ +MELEE - БЛИЖНИЙ БОЙ+ +]--

			--[+ Latrine Shovel - Сортирная лопата +]-- руоф Малая саперная лопатка
	create_template("weapons_names_ogryn_club1_ext_ru", {"loc_weapon_family_ogryn_club_p1_m1",}, {"ru",}, function(locale, value) return "Сортирная лопата" end),
	create_template("weapons_names_ogryn_club2_ext_ru", {"loc_weapon_family_ogryn_club_p1_m2",}, {"ru",}, function(locale, value) return "Сортирная лопата" end),
	create_template("weapons_names_ogryn_club3_ext_ru", {"loc_weapon_family_ogryn_club_p1_m3",}, {"ru",}, function(locale, value) return "Сортирная лопата" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_club1_ext_ru", {"loc_weapon_pattern_ogryn_club_p1_m1",}, {"ru",}, function(locale, value) return "Дуболом " end),
		-- create_template("weapons_patterns_ogryn_club2_ext_ru", {"loc_weapon_pattern_ogryn_club_p1_m2",}, {"ru",}, function(locale, value) return "Дуболом " end),
		-- create_template("weapons_patterns_ogryn_club3_ext_ru", {"loc_weapon_pattern_ogryn_club_p1_m3",}, {"ru",}, function(locale, value) return "Дуболом " end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_club1_ext_ru", {"loc_weapon_mark_ogryn_club_p1_m1",}, {"ru",}, function(locale, value) return "Модель III" end),
		create_template("weapons_marks_ogryn_club2_ext_ru", {"loc_weapon_mark_ogryn_club_p1_m2",}, {"ru",}, function(locale, value) return "Модель XIX" end),
		create_template("weapons_marks_ogryn_club3_ext_ru", {"loc_weapon_mark_ogryn_club_p1_m3",}, {"ru",}, function(locale, value) return "Модель V" end),

			--[+ Bully Club - Дубина задиры +]-- руоф Палица задиры
	create_template("weapons_names_ogryn_club1_2_ext_ru", {"loc_weapon_family_ogryn_club_p2_m1",}, {"ru",}, function(locale, value) return "Дубина задиры" end),
	create_template("weapons_names_ogryn_club2_2_ext_ru", {"loc_weapon_family_ogryn_club_p2_m2",}, {"ru",}, function(locale, value) return "Дубина задиры" end),
	create_template("weapons_names_ogryn_club3_2_ext_ru", {"loc_weapon_family_ogryn_club_p2_m3",}, {"ru",}, function(locale, value) return "Дубина задиры" end),
			--[+ Pattern - Паттерн +]--
		create_template("weapons_patterns_ogryn_club1_2_ext_ru", {"loc_weapon_pattern_ogryn_club_p2_m1",}, {"ru",}, function(locale, value) return "«Особая от Бранта»" end), -- «Особ. верс. Бранта»
		-- create_template("weapons_patterns_ogryn_club2_2_ext_ru", {"loc_weapon_pattern_ogryn_club_p2_m2",}, {"ru",}, function(locale, value) return "«Гордость Бранта»" end), -- «Гордость Бранта»
		create_template("weapons_patterns_ogryn_club3_2_ext_ru", {"loc_weapon_pattern_ogryn_club_p2_m3",}, {"ru",}, function(locale, value) return "«Убивало от Бранта»" end), -- Дубина Бранта»
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_club1_2_ext_ru", {"loc_weapon_mark_ogryn_club_p2_m1",}, {"ru",}, function(locale, value) return "Модель I" end),
		create_template("weapons_marks_ogryn_club2_2_ext_ru", {"loc_weapon_mark_ogryn_club_p2_m2",}, {"ru",}, function(locale, value) return "Модель II" end),
		create_template("weapons_marks_ogryn_club3_2_ext_ru", {"loc_weapon_mark_ogryn_club_p2_m3",}, {"ru",}, function(locale, value) return "Модель IIIb" end),

			--[+ Cleaver - Тесак +]-- руоф Рубило
	create_template("weapons_names_ogryn_combatblade1_ext_ru", {"loc_weapon_family_ogryn_combatblade_p1_m1",}, {"ru",}, function(locale, value) return "Тесак" end),
	create_template("weapons_names_ogryn_combatblade2_ext_ru", {"loc_weapon_family_ogryn_combatblade_p1_m2",}, {"ru",}, function(locale, value) return "Тесак" end),
	create_template("weapons_names_ogryn_combatblade3_ext_ru", {"loc_weapon_family_ogryn_combatblade_p1_m3",}, {"ru",}, function(locale, value) return "Тесак" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_combatblade1_ext_ru", {"loc_weapon_pattern_ogryn_combatblade_p1_m1",}, {"ru",}, function(locale, value) return "Крурк" end),
		-- create_template("weapons_patterns_ogryn_combatblade2_ext_ru", {"loc_weapon_pattern_ogryn_combatblade_p1_m2",}, {"ru",}, function(locale, value) return "Мясник" end),
		-- create_template("weapons_patterns_ogryn_combatblade3_ext_ru", {"loc_weapon_pattern_ogryn_combatblade_p1_m3",}, {"ru",}, function(locale, value) return "Крурк" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_combatblade1_ext_ru", {"loc_weapon_mark_ogryn_combatblade_p1_m1",}, {"ru",}, function(locale, value) return "Модель VI" end),
		create_template("weapons_marks_ogryn_combatblade2_ext_ru", {"loc_weapon_mark_ogryn_combatblade_p1_m2",}, {"ru",}, function(locale, value) return "Модель III" end),
		create_template("weapons_marks_ogryn_combatblade3_ext_ru", {"loc_weapon_mark_ogryn_combatblade_p1_m3",}, {"ru",}, function(locale, value) return "Модель IV" end),

			--[+ Delver's Pickaxe - Кирка искателя +]-- руоф Кирка копателя
	create_template("weapons_names_ogryn_pickaxe_2h1_ext_ru", {"loc_weapon_family_ogryn_pickaxe_2h_p1_m1",}, {"ru",}, function(locale, value) return "Кирка искателя" end),
	create_template("weapons_names_ogryn_pickaxe_2h2_ext_ru", {"loc_weapon_family_ogryn_pickaxe_2h_p1_m2",}, {"ru",}, function(locale, value) return "Кирка искателя" end),
	create_template("weapons_names_ogryn_pickaxe_2h3_ext_ru", {"loc_weapon_family_ogryn_pickaxe_2h_p1_m3",}, {"ru",}, function(locale, value) return "Кирка искателя" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_pickaxe_2h1_ext_ru", {"loc_weapon_pattern_ogryn_pickaxe_2h_p1_m1",}, {"ru",}, function(locale, value) return "Бранкс" end),
		create_template("weapons_patterns_ogryn_pickaxe_2h2_ext_ru", {"loc_weapon_pattern_ogryn_pickaxe_2h_p1_m2",}, {"ru",}, function(locale, value) return "Боровийская" end), -- Боровианск.
		-- create_template("weapons_patterns_ogryn_pickaxe_2h3_ext_ru", {"loc_weapon_pattern_ogryn_pickaxe_2h_p1_m3",}, {"ru",}, function(locale, value) return "Карсолас" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_pickaxe_2h1_ext_ru", {"loc_weapon_mark_ogryn_pickaxe_2h_p1_m1",}, {"ru",}, function(locale, value) return "Модель Ia" end),
		create_template("weapons_marks_ogryn_pickaxe_2h2_ext_ru", {"loc_weapon_mark_ogryn_pickaxe_2h_p1_m2",}, {"ru",}, function(locale, value) return "Модель III" end),
		create_template("weapons_marks_ogryn_pickaxe_2h3_ext_ru", {"loc_weapon_mark_ogryn_pickaxe_2h_p1_m3",}, {"ru",}, function(locale, value) return "Модель II" end),

			--[+ Power Maul - Силовая булава +]--
	-- create_template("weapons_names_ogryn_powermaul1_ext_ru", {"loc_weapon_family_ogryn_powermaul_p1_m1",}, {"ru",}, function(locale, value) return "Силовая булава" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_powermaul1_ext_ru", {"loc_weapon_pattern_ogryn_powermaul_p1_m1",}, {"ru",}, function(locale, value) return "Ахлис" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_powermaul1_ext_ru", {"loc_weapon_mark_ogryn_powermaul_p1_m1",}, {"ru",}, function(locale, value) return "Модель I" end),

			--[+ Battle Maul & Slab Shield - Боевая булава и щит-плита +]-- руоф Боевая булава и щит верзилы
	create_template("weapons_names_ogryn_powermaul_slabshield1_ext_ru", {"loc_weapon_family_ogryn_powermaul_slabshield_p1_m1",}, {"ru",}, function(locale, value) return "Боевая булава и щит-плита" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_powermaul_slabshield1_ext_ru", {"loc_weapon_pattern_ogryn_powermaul_slabshield_p1_m1",}, {"ru",}, function(locale, value) return "Орокс" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_powermaul_slabshield1_ext_ru", {"loc_weapon_mark_ogryn_powermaul_slabshield_p1_m1",}, {"ru",}, function(locale, value) return "Модель II и III" end),

		--[+ +RANGED - ДАЛЬНИЙ БОЙ+ +]--

			--[+ Grenadier Gauntlet - Гренадёрская перчатка +]-- руоф Гренадерская перчатка
	create_template("weapons_names_ogryn_gauntlet1_ext_ru", {"loc_weapon_family_ogryn_gauntlet_p1_m1",}, {"ru",}, function(locale, value) return "Гренадёрская перчатка" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_gauntlet1_ext_ru", {"loc_weapon_pattern_ogryn_gauntlet_p1_m1",}, {"ru",}, function(locale, value) return "Бластум" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_gauntlet1_ext_ru", {"loc_weapon_mark_ogryn_gauntlet_p1_m1",}, {"ru",}, function(locale, value) return "Модель III" end),

			--[+ Twin-Linked Heavy Stubber - Спаренный тяжёлый пулемёт +]-- руоф Спаренный тяжелый пулемет
	create_template("weapons_names_ogryn_heavystubber1_ext_ru", {"loc_weapon_family_ogryn_heavystubber_p1_m1",}, {"ru",}, function(locale, value) return "Спаренный тяжёлый пулемёт" end),
	create_template("weapons_names_ogryn_heavystubber2_ext_ru", {"loc_weapon_family_ogryn_heavystubber_p1_m2",}, {"ru",}, function(locale, value) return "Спаренный тяжёлый пулемёт" end),
	create_template("weapons_names_ogryn_heavystubber3_ext_ru", {"loc_weapon_family_ogryn_heavystubber_p1_m3",}, {"ru",}, function(locale, value) return "Спаренный тяжёлый пулемёт" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_heavystubber1_ext_ru", {"loc_weapon_pattern_ogryn_heavystubber_p1_m1",}, {"ru",}, function(locale, value) return "Крурк" end),
		-- create_template("weapons_patterns_ogryn_heavystubber2_ext_ru", {"loc_weapon_pattern_ogryn_heavystubber_p1_m2",}, {"ru",}, function(locale, value) return "Горгонум" end),
		-- create_template("weapons_patterns_ogryn_heavystubber3_ext_ru", {"loc_weapon_pattern_ogryn_heavystubber_p1_m3",}, {"ru",}, function(locale, value) return "Ахлис" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_heavystubber1_ext_ru", {"loc_weapon_mark_ogryn_heavystubber_p1_m1",}, {"ru",}, function(locale, value) return "Модель V" end),
		create_template("weapons_marks_ogryn_heavystubber2_ext_ru", {"loc_weapon_mark_ogryn_heavystubber_p1_m2",}, {"ru",}, function(locale, value) return "Модель IV" end),
		create_template("weapons_marks_ogryn_heavystubber3_ext_ru", {"loc_weapon_mark_ogryn_heavystubber_p1_m3",}, {"ru",}, function(locale, value) return "Модель VII" end),

			--[+ Heavy Stubber - Тяжёлый пулемёт +]-- руоф Тяжелый пулемет
	create_template("weapons_names_ogryn_heavystubber1_2_ext_ru", {"loc_weapon_family_ogryn_heavystubber_p2_m1",}, {"ru",}, function(locale, value) return "Тяжёлый пулемёт" end),
	create_template("weapons_names_ogryn_heavystubber2_2_ext_ru", {"loc_weapon_family_ogryn_heavystubber_p2_m2",}, {"ru",}, function(locale, value) return "Тяжёлый пулемёт" end),
	create_template("weapons_names_ogryn_heavystubber3_2_ext_ru", {"loc_weapon_family_ogryn_heavystubber_p2_m3",}, {"ru",}, function(locale, value) return "Тяжёлый пулемёт" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_heavystubber1_2_ext_ru", {"loc_weapon_pattern_ogryn_heavystubber_p2_m1",}, {"ru",}, function(locale, value) return "Крурк" end),
		-- create_template("weapons_patterns_ogryn_heavystubber2_2_ext_ru", {"loc_weapon_pattern_ogryn_heavystubber_p2_m2",}, {"ru",}, function(locale, value) return "Горгонум" end),
		-- create_template("weapons_patterns_ogryn_heavystubber3_2_ext_ru", {"loc_weapon_pattern_ogryn_heavystubber_p2_m3",}, {"ru",}, function(locale, value) return "Ахлис" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_heavystubber1_2_ext_ru", {"loc_weapon_mark_ogryn_heavystubber_p2_m1",}, {"ru",}, function(locale, value) return "Модель IIa" end),
		create_template("weapons_marks_ogryn_heavystubber2_2_ext_ru", {"loc_weapon_mark_ogryn_heavystubber_p2_m2",}, {"ru",}, function(locale, value) return "Модель IIIa" end),
		create_template("weapons_marks_ogryn_heavystubber3_2_ext_ru", {"loc_weapon_mark_ogryn_heavystubber_p2_m3",}, {"ru",}, function(locale, value) return "Модель II" end),

			--[+ Ripper Gun - Дробовик-потрошитель +]--
	-- create_template("weapons_names_ogryn_rippergun1_ext_ru", {"loc_weapon_family_ogryn_rippergun_p1_m1",}, {"ru",}, function(locale, value) return "Дробовик-потрошитель" end),
	-- create_template("weapons_names_ogryn_rippergun2_ext_ru", {"loc_weapon_family_ogryn_rippergun_p1_m2",}, {"ru",}, function(locale, value) return "Дробовик-потрошитель" end),
	-- create_template("weapons_names_ogryn_rippergun3_ext_ru", {"loc_weapon_family_ogryn_rippergun_p1_m3",}, {"ru",}, function(locale, value) return "Дробовик-потрошитель" end),
			--[+ Pattern - Паттерн +]-- Врагострел
		create_template("weapons_patterns_ogryn_rippergun1_ext_ru", {"loc_weapon_pattern_ogryn_rippergun_p1_m1",}, {"ru",}, function(locale, value) return "Врагорвач" end),
		create_template("weapons_patterns_ogryn_rippergun2_ext_ru", {"loc_weapon_pattern_ogryn_rippergun_p1_m2",}, {"ru",}, function(locale, value) return "Врагорвач" end),
		create_template("weapons_patterns_ogryn_rippergun3_ext_ru", {"loc_weapon_pattern_ogryn_rippergun_p1_m3",}, {"ru",}, function(locale, value) return "Врагорвач" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_rippergun1_ext_ru", {"loc_weapon_mark_ogryn_rippergun_p1_m1",}, {"ru",}, function(locale, value) return "Модель II" end),
		create_template("weapons_marks_ogryn_rippergun2_ext_ru", {"loc_weapon_mark_ogryn_rippergun_p1_m2",}, {"ru",}, function(locale, value) return "Модель V" end),
		create_template("weapons_marks_ogryn_rippergun3_ext_ru", {"loc_weapon_mark_ogryn_rippergun_p1_m3",}, {"ru",}, function(locale, value) return "Модель VI" end),

			--[+ Kickback - Дробовик «Отбойник» +]-- руоф Отбойник
	create_template("weapons_names_ogryn_thumper1_ext_ru", {"loc_weapon_family_ogryn_thumper_p1_m1",}, {"ru",}, function(locale, value) return "Дробовик «Отбойник»" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_thumper1_ext_ru", {"loc_weapon_pattern_ogryn_thumper_p1_m1",}, {"ru",}, function(locale, value) return "Лоренц" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_thumper1_ext_ru", {"loc_weapon_mark_ogryn_thumper_p1_m1",}, {"ru",}, function(locale, value) return "Модель V" end),

			--[+ Rumbler - Гранатомёт «Громобой» +]-- руоф Рамблер
	create_template("weapons_names_ogryn_thumper2_ext_ru", {"loc_weapon_family_ogryn_thumper_p1_m2",}, {"ru",}, function(locale, value) return "Гранатомёт «Громобой»" end),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_thumper2_ext_ru", {"loc_weapon_pattern_ogryn_thumper_p1_m2",}, {"ru",}, function(locale, value) return "Лоренц" end),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_thumper2_ext_ru", {"loc_weapon_mark_ogryn_thumper_p1_m2",}, {"ru",}, function(locale, value) return "Модель VI" end),

}

--[+ Return the localization templates +]--
return localization_templates
