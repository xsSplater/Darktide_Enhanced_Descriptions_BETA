---@diagnostic disable: undefined-global

-- local mod = get_mod("Enhanced_descriptions")

--[+ Function to create a localization template +]--
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end

--[+ Getting rid of repeating parts: function(locale, value) return ... end +]--
local function loc_text(text)
	return function(locale, value) return text end
end

--[+ Define localization templates +]--
local localization_templates = {
-- Duplicate the line and translate. For example:
	-- create_template("weap_bb0_ext_en",
		-- {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"en"},
			-- loc_text(COLORS_Numbers.p_dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies")),
	-- create_template("weap_bb0_ext_YOURLANGUAGE",
		-- {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"YOURLANGUAGE"},
			-- loc_text(COLORS_Numbers.p_dmg_var_rgb.." к "..COLORS_KWords.Damage_rgb_YOURLANGUAGE.." против врагов в противоосколочной броне.")), <- Don't forget the comma at the end!

-- Make changes to this file only if you need them!

--[+ ++ВРАГИ++ +]--
	--[+ Орда +]--
		--[+ Groaner - Ворчун +]--
	create_template("enemies_chaos_groaner_ext_ru",
		{"loc_breed_display_name_chaos_newly_infected"}, {"ru"},
			loc_text("Ворчун")),
		--[+ Dreg Bruiser - Дрег-громила +]--
	create_template("enemies_cultist_melee_ext_ru",
		{"loc_breed_display_name_cultist_melee"}, {"ru"},
			loc_text("Дрег-громила")),
		--[+ Dreg Stalker - Дрег-охотник +]--
	create_template("enemies_cultist_assault_ext_ru",
		{"loc_breed_display_name_cultist_assault"}, {"ru"},
			loc_text("Дрег-охотник")),
		--[+ Scab Bruiser - Скаб-громила +]--
	create_template("enemies_renegade_melee_ext_ru",
		{"loc_breed_display_name_renegade_melee"}, {"ru"},
			loc_text("Скаб-громила")),
		--[+ Poxwalker mutated - Чумной ходок мутировавший слабый +]--
	create_template("enemies_chaos_poxwalker_mut_less_ext_ru",
		{"loc_breed_display_name_chaos_lesser_mutated_poxwalker"}, {"ru"},
			loc_text("Чумной ходок мутировавший слабый")),
		--[+ Poxwalker mutated - Чумной ходок слабый мутировавший +]--
	create_template("enemies_chaos_poxwalker_mut_ext_ru",
		{"loc_breed_display_name_chaos_mutated_poxwalker"}, {"ru"},
			loc_text("Чумной ходок мутировавший")),
	--[+ Специалисты +]--
		--[+ Poxburster - Чумной взрывник +]--
	create_template("enemies_chaos_poxwalker_bomber_ext_ru",
		{"loc_breed_display_name_chaos_poxwalker_bomber"}, {"ru"},
			loc_text("Чумной взрывник")),
		--[+ Dreg Tox Flamer - Дрег Токс-огнемётчик +]--
	create_template("enemies_cultist_flamer_ext_ru",
		{"loc_breed_display_name_cultist_flamer"}, {"ru"},
			loc_text("Дрег Токс-огнемётчик")),
		--[+ Dreg Tox Bomber - Дрег Токс-гренадёр +]--
	create_template("enemies_cultist_grenadier_ext_ru",
		{"loc_breed_display_name_cultist_grenadier"}, {"ru"},
			loc_text("Дрег Токс-гренадёр")),
		--[+ Scab Flamer - Скаб-огнемётчик +]--
	create_template("enemies_renegade_flamer_ext_ru",
		{"loc_breed_display_name_renegade_flamer"}, {"ru"},
			loc_text("Скаб-огнемётчик")),
		--[+ Scab Bomber - Скаб-гренадёр +]--
	create_template("enemies_renegade_grenadier_ext_ru",
		{"loc_breed_display_name_renegade_grenadier"}, {"ru"},
			loc_text("Скаб-гренадёр")),
		--[+ Scab Trapper - Скаб-ловец +]--
	create_template("enemies_renegade_netgunner_ext_ru",
		{"loc_breed_display_name_renegade_netgunner"}, {"ru"},
			loc_text("Скаб-ловец")),
	--[+ Элита +]--
		--[+ Dreg Shotgunner - Дрег-штурмовик +]--
	create_template("enemies_cultist_shocktrooper_ext_ru",
		{"loc_breed_display_name_cultist_shocktrooper"}, {"ru"},
			loc_text("Дрег-штурмовик")),
		--[+ Dreg  - Дрег-пулемётчик +]--
	create_template("enemies_cultist_gunner_ext_ru",
		{"loc_breed_display_name_cultist_gunner"}, {"ru"},
			loc_text("Дрег-пулемётчик")),
		--[+ Dreg  - Дрег-берсерк +]--
	create_template("enemies_cultist_berzerker_ext_ru",
		{"loc_breed_display_name_cultist_berzerker"}, {"ru"},
			loc_text("Дрег-берсерк")),
		--[+ Scab Shotgunner - Скаб-штурмовик +]--
	create_template("enemies_renegade_shocktrooper_ext_ru",
		{"loc_breed_display_name_renegade_shocktrooper"}, {"ru"},
			loc_text("Скаб-штурмовик")),
		--[+ Scab - Скаб-пулемётчик +]--
	create_template("enemies_renegade_gunner_ext_ru",
		{"loc_breed_display_name_renegade_gunner"}, {"ru"},
			loc_text("Скаб-пулемётчик")),
		--[+ Scab - Скаб-берсерк +]--
	create_template("enemies_renegade_berzerker_ext_ru",
		{"loc_breed_display_name_renegade_berzerker"}, {"ru"},
			loc_text("Скаб-берсерк")),
		--[+ Mauler - Скаб-разрубатель +]--
	create_template("enemies_renegade_executor_ext_ru",
		{"loc_breed_display_name_renegade_executor"}, {"ru"},
			loc_text("Скаб-разрубатель")),
		--[+  - Крушила +]--
	create_template("enemies_chaos_ogryn_executor_ext_ru",
		{"loc_breed_display_name_chaos_ogryn_executor"}, {"ru"},
			loc_text("Крушила")),
	--[+ Монстры +]--
		--[+  - Зверь Нургла +]--
	create_template("enemies_chaos_beast_of_nurgle_ext_ru",
		{"loc_breed_display_name_chaos_beast_of_nurgle"}, {"ru"},
			loc_text("Зверь Нургла")),
--[+ ++ТИПЫ ТЕЛ И БРОНИ++ +]--
		--[+ Заражённый +]--
	create_template("body_disgustingly_resilient_ext_ru",
		{"loc_weapon_stats_display_disgustingly_resilient"}, {"ru"},
			loc_text("Заражённый")),
		--[+ Несгибаемый +]--
	create_template("body_resistant_ext_ru",
		{"loc_glossary_armour_type_resistant"}, {"ru"},
			loc_text("Несгибаемый")),
		--[+ Небронированный +]--
	create_template("body_unarmoured_ext_ru",
		{"loc_weapon_stats_display_unarmored"}, {"ru"},
			loc_text("Небронированный")),


--[+ ++WEAPONS - ОРУЖИЕ++ +]--
	--[+ +PSYKER - ПСАЙКЕР+ +]--
		--[+ +MELEE - БЛИЖНИЙ БОЙ+ +]--

		--[+ Assault Chainaxe - Штурмовой пилотопор +]-- -- руоф Штурмовой цепной топор
	create_template("weapons_names_chainaxe1_ext_ru",
		{"loc_weapon_family_chainaxe_p1_m1"}, {"ru"},
			loc_text("Штурмовой пилотопор")),
	create_template("weapons_names_chainaxe2_ext_ru",
		{"loc_weapon_family_chainaxe_p1_m2"}, {"ru"},
			loc_text("Штурмовой пилотопор")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_chainaxe1_ext_ru",
			-- {"loc_weapon_pattern_chainaxe_p1_m1"}, {"ru"},
				-- loc_text("Орестес")),
		-- create_template("weapons_patterns_chainaxe2_ext_ru",
			-- {"loc_weapon_pattern_chainaxe_p1_m2"}, {"ru"},
				-- loc_text("Орестес")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_chainaxe1_ext_ru",
			{"loc_weapon_mark_chainaxe_p1_m1"}, {"ru"},
				loc_text("Модель IV")),
		create_template("weapons_marks_chainaxe2_ext_ru",
			{"loc_weapon_mark_chainaxe_p1_m2"}, {"ru"},
				loc_text("Модель XII")),

		--[+ Assault Chainsword - Штурмовой пиломеч +]-- -- руоф Штурмовой цепной меч
	create_template("weapons_names_chainsword1_ext_ru",
		{"loc_weapon_family_chainsword_p1_m1"}, {"ru"},
			loc_text("Штурмовой пиломеч")),
	create_template("weapons_names_chainsword2_ext_ru",
		{"loc_weapon_family_chainsword_p1_m2"}, {"ru"},
			loc_text("Штурмовой пиломеч")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_chainsword1_ext_ru",
			-- {"loc_weapon_pattern_chainsword_p1_m1"}, {"ru"},
				-- loc_text("Кадия")),
		-- create_template("weapons_patterns_chainsword2_ext_ru",
			-- {"loc_weapon_pattern_chainsword_p1_m2"}, {"ru"},
				-- loc_text("Кадия")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_chainsword1_ext_ru",
			{"loc_weapon_mark_chainsword_p1_m1"}, {"ru"},
				loc_text("Модель IV")),
		create_template("weapons_marks_chainsword2_ext_ru",
			{"loc_weapon_mark_chainsword_p1_m2"}, {"ru"},
				loc_text("Модель XIIIg")),

		--[+ Combat Axe - Боевой топор +]--
	-- create_template("weapons_names_combataxe1_ext_ru",
		-- {"loc_weapon_family_combataxe_p1_m1"}, {"ru"},
			-- loc_text("Боевой топор")),
	-- create_template("weapons_names_combataxe2_ext_ru",
		-- {"loc_weapon_family_combataxe_p1_m2"}, {"ru"},
			-- loc_text("Боевой топор")),
	-- create_template("weapons_names_combataxe3_ext_ru",
		-- {"loc_weapon_family_combataxe_p1_m3"}, {"ru"},
			-- loc_text("Боевой топор")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_combataxe1_ext_ru",
			-- {"loc_weapon_pattern_combataxe_p1_m1"}, {"ru"},
				-- loc_text("Рашад")),
		-- create_template("weapons_patterns_combataxe2_ext_ru",
			-- {"loc_weapon_pattern_combataxe_p1_m2"}, {"ru"},
				-- loc_text("Антакс")),
		-- create_template("weapons_patterns_combataxe3_ext_ru",
			-- {"loc_weapon_pattern_combataxe_p1_m3"}, {"ru"},
				-- loc_text("Ахлис")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combataxe1_ext_ru",
			{"loc_weapon_mark_combataxe_p1_m1"}, {"ru"},
				loc_text("Модель III")),
		create_template("weapons_marks_combataxe2_ext_ru",
			{"loc_weapon_mark_combataxe_p1_m2"}, {"ru"},
				loc_text("Модель V")),
		create_template("weapons_marks_combataxe3_ext_ru",
			{"loc_weapon_mark_combataxe_p1_m3"}, {"ru"},
				loc_text("Модель VIII")),

		--[+ Tactical Axe - Тактический топор +]--
	-- create_template("weapons_names_combataxe1_2_ext_ru",
		-- {"loc_weapon_family_combataxe_p2_m1"}, {"ru"},
			-- loc_text("Тактический топор")),
	-- create_template("weapons_names_combataxe2_2_ext_ru",
		-- {"loc_weapon_family_combataxe_p2_m2"}, {"ru"},
			-- loc_text("Тактический топор")),
	-- create_template("weapons_names_combataxe3_2_ext_ru",
		-- {"loc_weapon_family_combataxe_p2_m3"}, {"ru"},
			-- loc_text("Тактический топор")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_combataxe1_2_ext_ru",
			-- {"loc_weapon_pattern_combataxe_p2_m1"}, {"ru"},
				-- loc_text("Атрокс")),
		-- create_template("weapons_patterns_combataxe2_2_ext_ru",
			-- {"loc_weapon_pattern_combataxe_p2_m2"}, {"ru"},
				-- loc_text("Атрокс")),
		-- create_template("weapons_patterns_combataxe3_2_ext_ru",
			-- {"loc_weapon_pattern_combataxe_p2_m3"}, {"ru"},
				-- loc_text("Атрокс")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combataxe1_2_ext_ru",
			{"loc_weapon_mark_combataxe_p2_m1"}, {"ru"},
				loc_text("Модель II")),
		create_template("weapons_marks_combataxe2_2_ext_ru",
			{"loc_weapon_mark_combataxe_p2_m2"}, {"ru"},
				loc_text("Модель IV")),
		create_template("weapons_marks_combataxe3_2_ext_ru",
			{"loc_weapon_mark_combataxe_p2_m3"}, {"ru"},
				loc_text("Модель VII")),

		--[+ Combat Blade - Боевой клинок +]--
	-- create_template("weapons_names_combatknife1_ext_ru",
		-- {"loc_weapon_family_combatknife_p1_m1"}, {"ru"},
			-- loc_text("Боевой клинок")),
	-- create_template("weapons_names_combatknife2_ext_ru",
		-- {"loc_weapon_family_combatknife_p1_m2"}, {"ru"},
			-- loc_text("Боевой клинок")),
			--[+ Pattern - Паттерн +]-- руоф Катачанск.
		create_template("weapons_patterns_combatknife1_ext_ru",
			{"loc_weapon_pattern_combatknife_p1_m1"}, {"ru"},
				loc_text("Катачан")),
		create_template("weapons_patterns_combatknife2_ext_ru",
			{"loc_weapon_pattern_combatknife_p1_m2"}, {"ru"},
				loc_text("Катачан")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combatknife1_ext_ru",
			{"loc_weapon_mark_combatknife_p1_m1"}, {"ru"},
				loc_text("Модель III")),
		create_template("weapons_marks_combatknife2_ext_ru",
			{"loc_weapon_mark_combatknife_p1_m2"}, {"ru"},
				loc_text("Модель VI")),

		--[+ "Devil's Claw" Sword - Меч «Дьявольский коготь» +]--
	-- create_template("weapons_names_combatsword1_ext_ru",
		-- {"loc_weapon_family_combatsword_p1_m1"}, {"ru"},
			-- loc_text("Меч «Дьявольский коготь»")),
	-- create_template("weapons_names_combatsword2_ext_ru",
		-- {"loc_weapon_family_combatsword_p1_m2"}, {"ru"},
			-- loc_text("Меч «Дьявольский коготь»")),
	-- create_template("weapons_names_combatsword3_ext_ru",
		-- {"loc_weapon_family_combatsword_p1_m3"}, {"ru"},
			-- loc_text("Меч «Дьявольский коготь»")),
			--[+ Pattern - Паттерн +]-- руоф Катачанск.
		create_template("weapons_patterns_combatsword1_ext_ru",
			{"loc_weapon_pattern_combatsword_p1_m1"}, {"ru"},
				loc_text("Катачан")),
		create_template("weapons_patterns_combatsword2_ext_ru",
			{"loc_weapon_pattern_combatsword_p1_m2"}, {"ru"},
				loc_text("Катачан")),
		create_template("weapons_patterns_combatsword3_ext_ru",
			{"loc_weapon_pattern_combatsword_p1_m3"}, {"ru"},
				loc_text("Катачан")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combatsword1_ext_ru",
			{"loc_weapon_mark_combatsword_p1_m1"}, {"ru"},
				loc_text("Модель I")),
		create_template("weapons_marks_combatsword2_ext_ru",
			{"loc_weapon_mark_combatsword_p1_m2"}, {"ru"},
				loc_text("Модель IV")),
		create_template("weapons_marks_combatsword3_ext_ru",
			{"loc_weapon_mark_combatsword_p1_m3"}, {"ru"},
				loc_text("Модель VII")),

		--[+ Heavy Sword - Тяжёлый меч +]-- руоф Тяжелый меч
	create_template("weapons_names_combatsword1_2_ext_ru",
		{"loc_weapon_family_combatsword_p2_m1"}, {"ru"},
			loc_text("Тяжёлый меч")),
	create_template("weapons_names_combatsword2_2_ext_ru",
		{"loc_weapon_family_combatsword_p2_m2"}, {"ru"},
			loc_text("Тяжёлый меч")),
	create_template("weapons_names_combatsword3_2_ext_ru",
		{"loc_weapon_family_combatsword_p2_m3"}, {"ru"},
			loc_text("Тяжёлый меч")),
			--[+ Pattern - Паттерн +]-- руоф Тартолскай
		create_template("weapons_patterns_combatsword1_2_ext_ru",
			{"loc_weapon_pattern_combatsword_p2_m1"}, {"ru"},
				loc_text("Туртольский")),
		create_template("weapons_patterns_combatsword2_2_ext_ru",
			{"loc_weapon_pattern_combatsword_p2_m2"}, {"ru"},
				loc_text("Туртольский")),
		create_template("weapons_patterns_combatsword3_2_ext_ru",
			{"loc_weapon_pattern_combatsword_p2_m3"}, {"ru"},
				loc_text("Туртольский")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combatsword1_2_ext_ru",
			{"loc_weapon_mark_combatsword_p2_m1"}, {"ru"},
				loc_text("Модель VI")),
		create_template("weapons_marks_combatsword2_2_ext_ru",
			{"loc_weapon_mark_combatsword_p2_m2"}, {"ru"},
				loc_text("Модель VII")),
		create_template("weapons_marks_combatsword3_2_ext_ru",
			{"loc_weapon_mark_combatsword_p2_m3"}, {"ru"},
				loc_text("Модель IX")),

		--[+ Duelling Sword - Дуэльный меч +]--
	-- create_template("weapons_names_combatsword1_3_ext_ru",
		-- {"loc_weapon_family_combatsword_p3_m1"}, {"ru"},
			-- loc_text("Дуэльный меч")),
	-- create_template("weapons_names_combatsword2_3_ext_ru",
		-- {"loc_weapon_family_combatsword_p3_m2"}, {"ru"},
			-- loc_text("Дуэльный меч")),
	-- create_template("weapons_names_combatsword3_3_ext_ru",
		-- {"loc_weapon_family_combatsword_p3_m3"}, {"ru"},
			-- loc_text("Дуэльный меч")),
			--[+ Pattern - Паттерн +]-- руоф Маккабианск.
		create_template("weapons_patterns_combatsword1_3_ext_ru",
			{"loc_weapon_pattern_combatsword_p3_m1"}, {"ru"},
				loc_text("Маккабиан")),
		create_template("weapons_patterns_combatsword2_3_ext_ru",
			{"loc_weapon_pattern_combatsword_p3_m2"}, {"ru"},
				loc_text("Маккабиан")),
		create_template("weapons_patterns_combatsword3_3_ext_ru",
			{"loc_weapon_pattern_combatsword_p3_m3"}, {"ru"},
				loc_text("Маккабиан")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combatsword1_3_ext_ru",
			{"loc_weapon_mark_combatsword_p3_m1"}, {"ru"},
				loc_text("Модель II")),
		create_template("weapons_marks_combatsword2_3_ext_ru",
			{"loc_weapon_mark_combatsword_p3_m2"}, {"ru"},
				loc_text("Модель IV")),
		create_template("weapons_marks_combatsword3_3_ext_ru",
			{"loc_weapon_mark_combatsword_p3_m3"}, {"ru"},
				loc_text("Модель V")),

		--[+ Blaze Force Greatsword - Пылающий психосиловой двуручный меч +]-- руоф Длинный пламенный психосиловой меч
	create_template("weapons_names_forcesword_2h1_ext_ru",
		{"loc_weapon_family_forcesword_2h_p1_m1"}, {"ru"},
			loc_text("Пылающий психосиловой двуручный меч")),
	create_template("weapons_names_forcesword_2h2_ext_ru",
		{"loc_weapon_family_forcesword_2h_p1_m2"}, {"ru"},
			loc_text("Пылающий психосиловой двуручный меч")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_forcesword_2h1_ext_ru",
			-- {"loc_weapon_pattern_forcesword_2h_p1_m1"}, {"ru"},
				-- loc_text("Завет")),
		-- create_template("weapons_patterns_forcesword_2h2_ext_ru",
			-- {"loc_weapon_pattern_forcesword_2h_p1_m2"}, {"ru"},
				-- loc_text("Завет")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_forcesword_2h1_ext_ru",
			{"loc_weapon_mark_forcesword_2h_p1_m1"}, {"ru"},
				loc_text("Модель VI")),
		create_template("weapons_marks_forcesword_2h2_ext_ru",
			{"loc_weapon_mark_forcesword_2h_p1_m2"}, {"ru"},
				loc_text("Модель VIII")),

		--[+ Blaze Force Sword - Пылающий психосиловой меч +]-- руоф Пламенный психосиловой меч
	create_template("weapons_names_forcesword1_ext_ru",
		{"loc_weapon_family_forcesword_p1_m1"}, {"ru"},
			loc_text("Пылающий психосиловой меч")),
	create_template("weapons_names_forcesword2_ext_ru",
		{"loc_weapon_family_forcesword_p1_m2"}, {"ru"},
			loc_text("Пылающий психосиловой меч")),
	create_template("weapons_names_forcesword3_ext_ru",
		{"loc_weapon_family_forcesword_p1_m3"}, {"ru"},
			loc_text("Пылающий психосиловой меч")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_forcesword1_ext_ru",
			-- {"loc_weapon_pattern_forcesword_p1_m1"}, {"ru"},
				-- loc_text("Обскурус")),
		-- create_template("weapons_patterns_forcesword2_ext_ru",
			-- {"loc_weapon_pattern_forcesword_p1_m2"}, {"ru"},
				-- loc_text("Деймос")),
		-- create_template("weapons_patterns_forcesword3_ext_ru",
			-- {"loc_weapon_pattern_forcesword_p1_m3"}, {"ru"},
				-- loc_text("Иллиси")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_forcesword1_ext_ru",
			{"loc_weapon_mark_forcesword_p1_m1"}, {"ru"},
				loc_text("Модель II")),
		create_template("weapons_marks_forcesword2_ext_ru",
			{"loc_weapon_mark_forcesword_p1_m2"}, {"ru"},
				loc_text("Модель IV")),
		create_template("weapons_marks_forcesword3_ext_ru",
			{"loc_weapon_mark_forcesword_p1_m3"}, {"ru"},
				loc_text("Модель V")),

		--[+ Shock Maul - Шоковая булава +]--
	-- create_template("weapons_names_powermaul1_ext_ru",
		-- {"loc_weapon_family_powermaul_p1_m1"}, {"ru"},
			-- loc_text("Шоковая булава")),
	-- create_template("weapons_names_powermaul2_ext_ru",
		-- {"loc_weapon_family_powermaul_p1_m2"}, {"ru"},
			-- loc_text("Шоковая булава")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_powermaul1_ext_ru",
			-- {"loc_weapon_pattern_powermaul_p1_m1"}, {"ru"},
				-- loc_text("Агни")),
		-- create_template("weapons_patterns_powermaul2_ext_ru",
			-- {"loc_weapon_pattern_powermaul_p1_m2"}, {"ru"},
				-- loc_text("Муниторум")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_powermaul1_ext_ru",
			{"loc_weapon_mark_powermaul_p1_m1"}, {"ru"},
				loc_text("Модель Ia")),
		create_template("weapons_marks_powermaul2_ext_ru",
			{"loc_weapon_mark_powermaul_p1_m2"}, {"ru"},
				loc_text("Модель III")),

		--[+ +RANGED - ДАЛЬНИЙ БОЙ+ +]--

		--[+ Infantry Autogun - Пехотный автомат +]--
	-- create_template("weapons_names_autogun1_ext_ru",
		-- {"loc_weapon_family_autogun_p1_m1"}, {"ru"},
			-- loc_text("Пехотный автомат")),
	-- create_template("weapons_names_autogun2_ext_ru",
		-- {"loc_weapon_family_autogun_p1_m2"}, {"ru"},
			-- loc_text("Пехотный автомат")),
	-- create_template("weapons_names_autogun3_ext_ru",
		-- {"loc_weapon_family_autogun_p1_m3"}, {"ru"},
			-- loc_text("Пехотный автомат")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_autogun1_ext_ru",
			-- {"loc_weapon_pattern_autogun_p1_m1"}, {"ru"},
				-- loc_text("Агрипинаа")),
		-- create_template("weapons_patterns_autogun2_ext_ru",
			-- {"loc_weapon_pattern_autogun_p1_m2"}, {"ru"},
				-- loc_text("Вракс")),
		-- create_template("weapons_patterns_autogun3_ext_ru",
			-- {"loc_weapon_pattern_autogun_p1_m3"}, {"ru"},
				-- loc_text("Колумнус")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_autogun1_ext_ru",
			{"loc_weapon_mark_autogun_p1_m1"}, {"ru"},
				loc_text("Модель I")),
		create_template("weapons_marks_autogun2_ext_ru",
			{"loc_weapon_mark_autogun_p1_m2"}, {"ru"},
				loc_text("Модель V")),
		create_template("weapons_marks_autogun3_ext_ru",
			{"loc_weapon_mark_autogun_p1_m3"}, {"ru"},
				loc_text("Модель VIII")),

		--[+ Braced Autogun - Усиленный автомат +]--
	-- create_template("weapons_names_autogun1_2_ext_ru",
		-- {"loc_weapon_family_autogun_p2_m1"}, {"ru"},
			-- loc_text("Усиленный автомат")),
	-- create_template("weapons_names_autogun2_2_ext_ru",
		-- {"loc_weapon_family_autogun_p2_m2"}, {"ru"},
			-- loc_text("Усиленный автомат")),
	-- create_template("weapons_names_autogun3_2_ext_ru",
		-- {"loc_weapon_family_autogun_p2_m3"}, {"ru"},
			-- loc_text("Усиленный автомат")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_autogun1_2_ext_ru",
			-- {"loc_weapon_pattern_autogun_p2_m1"}, {"ru"},
				-- loc_text("Вракс")),
		-- create_template("weapons_patterns_autogun2_2_ext_ru",
			-- {"loc_weapon_pattern_autogun_p2_m2"}, {"ru"},
				-- loc_text("Грайя")),
		-- create_template("weapons_patterns_autogun3_2_ext_ru",
			-- {"loc_weapon_pattern_autogun_p2_m3"}, {"ru"},
				-- loc_text("Агрипинаа")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_autogun1_2_ext_ru",
			{"loc_weapon_mark_autogun_p2_m1"}, {"ru"},
				loc_text("Модель II")),
		create_template("weapons_marks_autogun2_2_ext_ru",
			{"loc_weapon_mark_autogun_p2_m2"}, {"ru"},
				loc_text("Модель IV")),
		create_template("weapons_marks_autogun3_2_ext_ru",
			{"loc_weapon_mark_autogun_p2_m3"}, {"ru"},
				loc_text("Модель VIII")),

		--[+ Vigilant Autogun - Вигилянтский автомат +]-- руоф Автомат «Бдительность»
	create_template("weapons_names_autogun1_ext_ru",
		{"loc_weapon_family_autogun_p3_m1"}, {"ru"},
			loc_text("Вигилянтский автомат")),
	create_template("weapons_names_autogun2_ext_ru",
		{"loc_weapon_family_autogun_p3_m2"}, {"ru"},
			loc_text("Вигилянтский автомат")),
	create_template("weapons_names_autogun3_ext_ru",
		{"loc_weapon_family_autogun_p3_m3"}, {"ru"},
			loc_text("Вигилянтский автомат")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_autogun1_ext_ru",
			-- {"loc_weapon_pattern_autogun_p3_m1"}, {"ru"},
				-- loc_text("Колумнус")),
		-- create_template("weapons_patterns_autogun2_ext_ru",
			-- {"loc_weapon_pattern_autogun_p3_m2"}, {"ru"},
				-- loc_text("Грайя")),
		-- create_template("weapons_patterns_autogun3_ext_ru",
			-- {"loc_weapon_pattern_autogun_p3_m3"}, {"ru"},
				-- loc_text("Агрипинаа")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_autogun1_ext_ru",
			{"loc_weapon_mark_autogun_p3_m1"}, {"ru"},
				loc_text("Модель III")),
		create_template("weapons_marks_autogun2_ext_ru",
			{"loc_weapon_mark_autogun_p3_m2"}, {"ru"},
				loc_text("Модель VII")),
		create_template("weapons_marks_autogun3_ext_ru",
			{"loc_weapon_mark_autogun_p3_m3"}, {"ru"},
				loc_text("Модель IX")),

		--[+ Shredder Autopistol - Автопистолет-крошитель +]--
	-- create_template("weapons_names_autopistol1_ext_ru",
		-- {"loc_weapon_family_autopistol_p1_m1"}, {"ru"},
			-- loc_text("Автопистолет-крошитель")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_autopistol1_ext_ru",
		-- {"loc_weapon_pattern_autopistol_p1_m1"}, {"ru"},
			-- loc_text("Иус")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_autopistol1_ext_ru",
			{"loc_weapon_mark_autopistol_p1_m1"}, {"ru"},
				loc_text("Модель IV")),

		--[+ Bolt Pistol - Болт-пистолет +]--
	-- create_template("weapons_names_boltpistol1_ext_ru",
		-- {"loc_weapon_family_boltpistol_p1_m1"}, {"ru"},
			-- loc_text("Болт-пистолет")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_boltpistol1_ext_ru",
		-- {"loc_weapon_pattern_boltpistol_p1_m1"}, {"ru"},
			-- loc_text("Годвин-Бранкс")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_boltpistol1_ext_ru",
			{"loc_weapon_mark_boltpistol_p1_m1"}, {"ru"},
				loc_text("Модель IV")),

		--[+ Voidblast Force Staff - Травматический психосиловой посох +]-- (Trauma) руоф Психосиловой посох взрывной пустоты
	create_template("weapons_names_forcestaff1_ext_ru",
		{"loc_weapon_family_forcestaff_p1_m1"}, {"ru"},
			loc_text("Психосиловой посох Травмы")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_forcestaff1_ext_ru",
			-- {"loc_weapon_pattern_forcestaff_p1_m1"}, {"ru"},
				-- loc_text("Эквинокс")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_forcestaff1_ext_ru",
			{"loc_weapon_mark_forcestaff_p1_m1"}, {"ru"},
				loc_text("Модель III")),

		--[+ Inferno Force Staff - Психосиловой посох Инферно +]-- руоф Огневой психосиловой посох
	create_template("weapons_names_forcestaff1_2_ext_ru",
		{"loc_weapon_family_forcestaff_p2_m1"}, {"ru"},
			loc_text("Психосиловой посох Инферно")),
			--[+ Pattern - Паттерн +]-- руоф Рифтхевен
		create_template("weapons_patterns_forcestaff1_2_ext_ru",
			{"loc_weapon_pattern_forcestaff_p2_m1"}, {"ru"},
				loc_text("Рифтхейвен")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_forcestaff1_2_ext_ru",
			{"loc_weapon_mark_forcestaff_p2_m1"}, {"ru"},
				loc_text("Модель II")),

		--[+ Electrokinetic Force Staff - Психосиловой посох Электрокинетик +]-- руоф Электрокинетический психосиловой посох
	create_template("weapons_names_forcestaff1_3_ext_ru",
		{"loc_weapon_family_forcestaff_p3_m1"}, {"ru"},
			loc_text("Психосиловой посох Электрокинетик")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_forcestaff1_3_ext_ru",
			-- {"loc_weapon_pattern_forcestaff_p3_m1"}, {"ru"},
				-- loc_text("Номанус")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_forcestaff1_3_ext_ru",
			{"loc_weapon_mark_forcestaff_p3_m1"}, {"ru"},
				loc_text("Модель VI")),

		--[+ Voidstrike Force Staff - Психосиловой посох Пустоты +]-- руоф Психосиловой пустотный посох
	create_template("weapons_names_forcestaff1_4_ext_ru",
		{"loc_weapon_family_forcestaff_p4_m1"}, {"ru"},
			loc_text("Психосиловой посох Пустоты")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_forcestaff1_4_ext_ru",
			-- {"loc_weapon_pattern_forcestaff_p4_m1"}, {"ru"},
				-- loc_text("Эквинокс")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_forcestaff1_4_ext_ru",
			{"loc_weapon_mark_forcestaff_p4_m1"}, {"ru"},
				loc_text("Модель IV")),

		--[+ Infantry Lasgun - Лазвинтовка пехоты +]-- руоф Пехотный лазган
	create_template("weapons_names_lasgun1_ext_ru",
		{"loc_weapon_family_lasgun_p1_m1"}, {"ru"},
			loc_text("Лазвинтовка пехоты")),
	create_template("weapons_names_lasgun2_ext_ru",
		{"loc_weapon_family_lasgun_p1_m2"}, {"ru"},
			loc_text("Лазвинтовка пехоты")),
	create_template("weapons_names_lasgun3_ext_ru",
		{"loc_weapon_family_lasgun_p1_m3"}, {"ru"},
			loc_text("Лазвинтовка пехоты")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_lasgun1_ext_ru",
			-- {"loc_weapon_pattern_lasgun_p1_m1"}, {"ru"},
				-- loc_text("Кантраэль")),
		-- create_template("weapons_patterns_lasgun2_ext_ru",
			-- {"loc_weapon_pattern_lasgun_p1_m2"}, {"ru"},
				-- loc_text("Кантраэль")),
		-- create_template("weapons_patterns_lasgun3_ext_ru",
			-- {"loc_weapon_pattern_lasgun_p1_m3"}, {"ru"},
				-- loc_text("Кантраэль")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_lasgun1_ext_ru",
			{"loc_weapon_mark_lasgun_p1_m1"}, {"ru"},
				loc_text("Модель VII")),
		create_template("weapons_marks_lasgun2_ext_ru",
			{"loc_weapon_mark_lasgun_p1_m2"}, {"ru"},
				loc_text("Модель IIb")),
		create_template("weapons_marks_lasgun3_ext_ru",
			{"loc_weapon_mark_lasgun_p1_m3"}, {"ru"},
				loc_text("Модель IX")),

		--[+ Recon Lasgun - Лазвинтовка разведки +]-- руоф Разведывательный лазган
	create_template("weapons_names_lasgun1_3_ext_ru",
		{"loc_weapon_family_lasgun_p3_m1"}, {"ru"},
			loc_text("Лазвинтовка разведки")),
	create_template("weapons_names_lasgun2_3_ext_ru",
		{"loc_weapon_family_lasgun_p3_m2"}, {"ru"},
			loc_text("Лазвинтовка разведки")),
	create_template("weapons_names_lasgun3_3_ext_ru",
		{"loc_weapon_family_lasgun_p3_m3"}, {"ru"},
			loc_text("Лазвинтовка разведки")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_lasgun1_3_ext_ru",
			-- {"loc_weapon_pattern_lasgun_p3_m1"}, {"ru"},
				-- loc_text("Аккатран")),
		-- create_template("weapons_patterns_lasgun2_3_ext_ru",
			-- {"loc_weapon_pattern_lasgun_p3_m2"}, {"ru"},
				-- loc_text("Аккатран")),
		-- create_template("weapons_patterns_lasgun3_3_ext_ru",
			-- {"loc_weapon_pattern_lasgun_p3_m3"}, {"ru"},
				-- loc_text("Аккатран")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_lasgun1_3_ext_ru",
			{"loc_weapon_mark_lasgun_p3_m1"}, {"ru"},
				loc_text("Модель VIc")),
		create_template("weapons_marks_lasgun2_3_ext_ru",
			{"loc_weapon_mark_lasgun_p3_m2"}, {"ru"},
				loc_text("Модель XII")),
		create_template("weapons_marks_lasgun3_3_ext_ru",
			{"loc_weapon_mark_lasgun_p3_m3"}, {"ru"},
				loc_text("Модель XIV")),

		--[+ Heavy Laspistol - Тяжёлый лазпистолет +]-- руоф Тяжелый лазпистолет
	create_template("weapons_names_laspistol1_ext_ru",
		{"loc_weapon_family_laspistol_p1_m1"}, {"ru"},
			loc_text("Тяжёлый лазпистолет")),
	create_template("weapons_names_laspistol3_ext_ru",
		{"loc_weapon_family_laspistol_p1_m3"}, {"ru"},
			loc_text("Тяжёлый лазпистолет")),
			--[+ Pattern - Паттерн +]--
		create_template("weapons_patterns_laspistol1_ext_ru",
			{"loc_weapon_pattern_laspistol_p1_m1"}, {"ru"},
				loc_text("Аккатран РП")), -- Аккатран MG
		-- create_template("weapons_patterns_laspistol3_ext_ru",
			-- {"loc_weapon_pattern_laspistol_p1_m3"}, {"ru"},
				-- loc_text("Кантраэль")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_laspistol1_ext_ru",
			{"loc_weapon_mark_laspistol_p1_m1"}, {"ru"},
				loc_text("Модель II")),
		create_template("weapons_marks_laspistol3_ext_ru",
			{"loc_weapon_mark_laspistol_p1_m3"}, {"ru"},
				loc_text("Модель X")),

		--[+ Combat Shotgun - Боевой дробовик +]--
	-- create_template("weapons_names_shotgun1_ext_ru",
		-- {"loc_weapon_family_shotgun_p1_m1"}, {"ru"},
			-- loc_text("Боевой дробовик")),
	-- create_template("weapons_names_shotgun2_ext_ru",
		-- {"loc_weapon_family_shotgun_p1_m2"}, {"ru"},
			-- loc_text("Боевой дробовик")),
	-- create_template("weapons_names_shotgun3_ext_ru",
		-- {"loc_weapon_family_shotgun_p1_m3"}, {"ru"},
			-- loc_text("Боевой дробовик")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_shotgun1_ext_ru",
			-- {"loc_weapon_pattern_shotgun_p1_m1"}, {"ru"},
				-- loc_text("Зарона")),
		-- create_template("weapons_patterns_shotgun2_ext_ru",
			-- {"loc_weapon_pattern_shotgun_p1_m2"}, {"ru"},
				-- loc_text("Агрипинаа")),
		-- create_template("weapons_patterns_shotgun3_ext_ru",
			-- {"loc_weapon_pattern_shotgun_p1_m3"}, {"ru"},
				-- loc_text("Аккатран")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_shotgun1_ext_ru",
			{"loc_weapon_mark_shotgun_p1_m1"}, {"ru"},
				loc_text("Модель VI")),
		create_template("weapons_marks_shotgun2_ext_ru",
			{"loc_weapon_mark_shotgun_p1_m2"}, {"ru"},
				loc_text("Модель VII")),
		create_template("weapons_marks_shotgun3_ext_ru",
			{"loc_weapon_mark_shotgun_p1_m3"}, {"ru"},
				loc_text("Модель IX")),

		--[+ Double-Barrelled Shotgun - Двухствольный дробовик +]--
	-- create_template("weapons_names_shotgun1_2_ext_ru",
		-- {"loc_weapon_family_shotgun_p2_m1"}, {"ru"},
			-- loc_text("Двухствольный дробовик")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_shotgun1_2_ext_ru",
		-- {"loc_weapon_pattern_shotgun_p2_m1"}, {"ru"},
			-- loc_text("Круцис")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_shotgun1_2_ext_ru",
			{"loc_weapon_mark_shotgun_p2_m1"}, {"ru"},
				loc_text("Модель XI")),

		--[+ Quickdraw Stub Revolver - Быстровытаскиваемый стаб-револьвер +]-- руоф Скорострельный стаб-револьвер
	create_template("weapons_names_stubrevolver1_ext_ru",
		{"loc_weapon_family_stubrevolver_p1_m1"}, {"ru"},
			loc_text("Быстровытаскиваемый стаб-револьвер")),
	create_template("weapons_names_stubrevolver2_ext_ru",
		{"loc_weapon_family_stubrevolver_p1_m2"}, {"ru"},
			loc_text("Быстровытаскиваемый стаб-револьвер")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_stubrevolver1_ext_ru",
			-- {"loc_weapon_pattern_stubrevolver_p1_m1"}, {"ru"},
				-- loc_text("Зарона")),
		-- create_template("weapons_patterns_stubrevolver2_ext_ru",
			-- {"loc_weapon_pattern_stubrevolver_p1_m2"}, {"ru"},
				-- loc_text("Агрипинаа")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_stubrevolver1_ext_ru",
			{"loc_weapon_mark_stubrevolver_p1_m1"}, {"ru"},
				loc_text("Модель IIa")),
		create_template("weapons_marks_stubrevolver2_ext_ru",
			{"loc_weapon_mark_stubrevolver_p1_m2"}, {"ru"},
				loc_text("Модель XIV")),


	--[+ +ZEALOT - ИЗУВЕР+ +]--
		--[+ +MELEE - БЛИЖНИЙ БОЙ+ +]--

	--[+ Heavy Eviscerator - Тяжёлый эвисцератор +]-- -- Тяжелый эвисцератор
	create_template("weapons_names_2h_eviscerator1_ext_ru",
		{"loc_weapon_family_chainsword_2h_p1_m1"}, {"ru"},
			loc_text("Тяжёлый эвисцератор")),
	create_template("weapons_names_2h_eviscerator2_ext_ru",
		{"loc_weapon_family_chainsword_2h_p1_m2"}, {"ru"},
			loc_text("Тяжёлый эвисцератор")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_2h_eviscerator1_ext_ru",
			-- {"loc_weapon_pattern_chainsword_2h_p1_m1"}, {"ru"},
				-- loc_text("Тигрус")),
		-- create_template("weapons_patterns_2h_eviscerator2_ext_ru",
			-- {"loc_weapon_pattern_chainsword_2h_p1_m2"}, {"ru"},
				-- loc_text("Тигрус")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_2h_eviscerator1_ext_ru",
			{"loc_weapon_mark_chainsword_2h_p1_m1"}, {"ru"},
				loc_text("Модель III")),
		create_template("weapons_marks_2h_eviscerator2_ext_ru",
			{"loc_weapon_mark_chainsword_2h_p1_m2"}, {"ru"},
				loc_text("Модель XV")),

			--[+ Crusher - Дробитель +]--
	-- create_template("weapons_names_powermaul_2h_1_ext_ru",
		-- {"loc_weapon_family_powermaul_2h_p1_m1"}, {"ru"},
			-- loc_text("Дробитель")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_powermaul_2h_1_ext_ru",
			-- {"loc_weapon_pattern_powermaul_2h_p1_m1"}, {"ru"},
				-- loc_text("Индигнатус")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_powermaul_2h_1_ext_ru",
			{"loc_weapon_mark_powermaul_2h_p1_m1"}, {"ru"},
				loc_text("Модель IVe")),

			--[+ Relic Blade - Реликвийный клинок +]-- руоф Клинок реликвий
	create_template("weapons_names_powersword_2h_1_ext_ru",
		{"loc_weapon_family_powersword_2h_p1_m1"}, {"ru"},
			loc_text("Реликвийный клинок")),
	create_template("weapons_names_powersword_2h_2_ext_ru",
		{"loc_weapon_family_powersword_2h_p1_m2"}, {"ru"},
			loc_text("Реликвийный клинок")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_powersword_2h_1_ext_ru",
			-- {"loc_weapon_pattern_powersword_2h_p1_m1"}, {"ru"},
				-- loc_text("Муниторум")),
		-- create_template("weapons_patterns_powersword_2h_2_ext_ru",
			-- {"loc_weapon_pattern_powersword_2h_p1_m2"}, {"ru"},
				-- loc_text("Муниторум")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_powersword_2h_1_ext_ru",
			{"loc_weapon_mark_powersword_2h_p1_m1"}, {"ru"},
				loc_text("Модель X")),
		create_template("weapons_marks_powersword_2h_2_ext_ru",
			{"loc_weapon_mark_powersword_2h_p1_m2"}, {"ru"},
				loc_text("Модель II")),

			--[+ Thunder Hammer - Громовой молот +]--
	-- create_template("weapons_names_thunderhammer_2h_1_ext_ru",
		-- {"loc_weapon_family_thunderhammer_2h_p1_m1"}, {"ru"},
			-- loc_text("Громовой молот")),
	-- create_template("weapons_names_thunderhammer_2h_2_ext_ru",
		-- {"loc_weapon_family_thunderhammer_2h_p1_m2"}, {"ru"},
			-- loc_text("Громовой молот")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_thunderhammer_2h_1_ext_ru",
			-- {"loc_weapon_pattern_thunderhammer_2h_p1_m1"}, {"ru"},
				-- loc_text("Круцис")),
		-- create_template("weapons_patterns_thunderhammer_2h_2_ext_ru",
			-- {"loc_weapon_pattern_thunderhammer_2h_p1_m2"}, {"ru"},
				-- loc_text("Айронхельн")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_thunderhammer_2h_1_ext_ru",
			{"loc_weapon_mark_thunderhammer_2h_p1_m1"}, {"ru"},
				loc_text("Модель II")),
		create_template("weapons_marks_thunderhammer_2h_2_ext_ru",
			{"loc_weapon_mark_thunderhammer_2h_p1_m2"}, {"ru"},
				loc_text("Модель IV")),

		--[+ +RANGED - ДАЛЬНИЙ БОЙ+ +]--

			--[+ Spearhead Boltgun - Пронзающий болтер +]--
	-- create_template("weapons_names_bolter1_ext_ru",
		-- {"loc_weapon_family_bolter_p1_m1"}, {"ru"},
			-- loc_text("Пронзающий болтер")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_bolter1_ext_ru",
			-- {"loc_weapon_pattern_bolter_p1_m1"}, {"ru"},
				-- loc_text("Люк")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_bolter1_ext_ru",
			{"loc_weapon_mark_bolter_p1_m1"}, {"ru"},
				loc_text("Модель IIb")),

			--[+ Purgation Flamer - Огнемёт очищения +]-- руоф Огнемет чистки
	create_template("weapons_names_flamer1_ext_ru",
		{"loc_weapon_family_flamer_p1_m1"}, {"ru"},
			loc_text("Огнемёт очищения")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_flamer1_ext_ru",
			-- {"loc_weapon_pattern_flamer_p1_m1"}, {"ru"},
				-- loc_text("Артемия")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_flamer1_ext_ru",
			{"loc_weapon_mark_flamer_p1_m1"}, {"ru"},
				loc_text("Модель III")),


	--[+ +VETERAN - ВЕТЕРАН+ +]--
		--[+ +MELEE - БЛИЖНИЙ БОЙ+ +]--

			--[+ Sapper Shovel - Сапёрная лопата +]-- руоф Саперная лопатка
	create_template("weapons_names_combataxe1_3_ext_ru",
		{"loc_weapon_family_combataxe_p3_m1"}, {"ru"},
			loc_text("Сапёрная лопата")),
	create_template("weapons_names_combataxe2_3_ext_ru",
		{"loc_weapon_family_combataxe_p3_m2"}, {"ru"},
			loc_text("Сапёрная лопата")),
	create_template("weapons_names_combataxe3_3_ext_ru",
		{"loc_weapon_family_combataxe_p3_m3"}, {"ru"},
			loc_text("Сапёрная лопата")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_combataxe1_3_ext_ru",
			-- {"loc_weapon_pattern_combataxe_p3_m1"}, {"ru"},
				-- loc_text("Муниторум")),
		-- create_template("weapons_patterns_combataxe2_3_ext_ru",
			-- {"loc_weapon_pattern_combataxe_p3_m2"}, {"ru"},
				-- loc_text("Муниторум")),
		-- create_template("weapons_patterns_combataxe3_3_ext_ru",
			-- {"loc_weapon_pattern_combataxe_p3_m3"}, {"ru"},
				-- loc_text("Муниторум")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_combataxe1_3_ext_ru",
			{"loc_weapon_mark_combataxe_p3_m1"}, {"ru"},
				loc_text("Модель I")),
		create_template("weapons_marks_combataxe2_3_ext_ru",
			{"loc_weapon_mark_combataxe_p3_m2"}, {"ru"},
				loc_text("Модель III")),
		create_template("weapons_marks_combataxe3_3_ext_ru",
			{"loc_weapon_mark_combataxe_p3_m3"}, {"ru"},
				loc_text("Модель VII")),

			--[+ Power Sword - Силовой меч +]--
	-- create_template("weapons_names_powersword1_ext_ru",
		-- {"loc_weapon_family_powersword_p1_m1"}, {"ru"},
			-- loc_text("Силовой меч")),
	-- create_template("weapons_names_powersword2_ext_ru",
		-- {"loc_weapon_family_powersword_p1_m2"}, {"ru"},
			-- loc_text("Силовой меч")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_powersword1_ext_ru",
			-- {"loc_weapon_pattern_powersword_p1_m1"}, {"ru"},
				-- loc_text("Скандар")),
		-- create_template("weapons_patterns_powersword2_ext_ru",
			-- {"loc_weapon_pattern_powersword_p1_m2"}, {"ru"},
				-- loc_text("Ахлис")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_powersword1_ext_ru",
			{"loc_weapon_mark_powersword_p1_m1"}, {"ru"},
				loc_text("Модель III")),
		create_template("weapons_marks_powersword2_ext_ru",
			{"loc_weapon_mark_powersword_p1_m2"}, {"ru"},
				loc_text("Модель VI")),

		--[+ +RANGED - ДАЛЬНИЙ БОЙ+ +]--

			--[+ Helbore Lasgun - Хельборовое лазружьё +]-- руоф Хелборский лазган
	create_template("weapons_names_lasgun1_4_ext_ru",
		{"loc_weapon_family_lasgun_p2_m1"}, {"ru"},
			loc_text("Хельборовое лазружьё")),
	create_template("weapons_names_lasgun2_4_ext_ru",
		{"loc_weapon_family_lasgun_p2_m2"}, {"ru"},
			loc_text("Хельборовое лазружьё")),
	create_template("weapons_names_lasgun3_4_ext_ru",
		{"loc_weapon_family_lasgun_p2_m3"}, {"ru"},
			loc_text("Хельборовое лазружьё")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_lasgun1_4_ext_ru",
			-- {"loc_weapon_pattern_lasgun_p2_m1"}, {"ru"},
				-- loc_text("Люций")),
		-- create_template("weapons_patterns_lasgun2_4_ext_ru",
			-- {"loc_weapon_pattern_lasgun_p2_m2"}, {"ru"},
				-- loc_text("Люций")),
		-- create_template("weapons_patterns_lasgun3_4_ext_ru",
			-- {"loc_weapon_pattern_lasgun_p2_m3"}, {"ru"},
				-- loc_text("Люций")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_lasgun1_4_ext_ru",
			{"loc_weapon_mark_lasgun_p2_m1"}, {"ru"},
				loc_text("Модель IIIa")),
		create_template("weapons_marks_lasgun2_4_ext_ru",
			{"loc_weapon_mark_lasgun_p2_m2"}, {"ru"},
				loc_text("Модель V")),
		create_template("weapons_marks_lasgun3_4_ext_ru",
			{"loc_weapon_mark_lasgun_p2_m3"}, {"ru"},
				loc_text("Модель IV")),

			--[+ Plasma Gun - Плазмомёт +]--
	-- create_template("weapons_names_plasmagun1_ext_ru",
		-- {"loc_weapon_family_plasmagun_p1_m1"}, {"ru"},
			-- loc_text("Плазмомёт")),
			--[+ Pattern - Паттерн +]--
		create_template("weapons_patterns_plasmagun1_ext_ru",
			{"loc_weapon_pattern_plasmagun_p1_m1"}, {"ru"},
				loc_text("M35 Магнакор")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_plasmagun1_ext_ru",
			{"loc_weapon_mark_plasmagun_p1_m1"}, {"ru"},
				loc_text("Модель II")),


	--[+ +OGRYN - ОГРИН+ +]--
		--[+ +MELEE - БЛИЖНИЙ БОЙ+ +]--

			--[+ Latrine Shovel - Сортирная лопата +]-- руоф Малая саперная лопатка
	create_template("weapons_names_ogryn_club1_ext_ru",
		{"loc_weapon_family_ogryn_club_p1_m1"}, {"ru"},
			loc_text("Сортирная лопата")),
	create_template("weapons_names_ogryn_club2_ext_ru",
		{"loc_weapon_family_ogryn_club_p1_m2"}, {"ru"},
			loc_text("Сортирная лопата")),
	create_template("weapons_names_ogryn_club3_ext_ru",
		{"loc_weapon_family_ogryn_club_p1_m3"}, {"ru"},
			loc_text("Сортирная лопата")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_club1_ext_ru",
			-- {"loc_weapon_pattern_ogryn_club_p1_m1"}, {"ru"},
				-- loc_text("Дуболом ")),
		-- create_template("weapons_patterns_ogryn_club2_ext_ru",
			-- {"loc_weapon_pattern_ogryn_club_p1_m2"}, {"ru"},
				-- loc_text("Дуболом ")),
		-- create_template("weapons_patterns_ogryn_club3_ext_ru",
			-- {"loc_weapon_pattern_ogryn_club_p1_m3"}, {"ru"},
				-- loc_text("Дуболом ")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_club1_ext_ru",
			{"loc_weapon_mark_ogryn_club_p1_m1"}, {"ru"},
				loc_text("Модель III")),
		create_template("weapons_marks_ogryn_club2_ext_ru",
			{"loc_weapon_mark_ogryn_club_p1_m2"}, {"ru"},
				loc_text("Модель XIX")),
		create_template("weapons_marks_ogryn_club3_ext_ru",
			{"loc_weapon_mark_ogryn_club_p1_m3"}, {"ru"},
				loc_text("Модель V")),

			--[+ Bully Club - Дубина задиры +]-- руоф Палица задиры
	create_template("weapons_names_ogryn_club1_2_ext_ru",
		{"loc_weapon_family_ogryn_club_p2_m1"}, {"ru"},
			loc_text("Дубина задиры")),
	create_template("weapons_names_ogryn_club2_2_ext_ru",
		{"loc_weapon_family_ogryn_club_p2_m2"}, {"ru"},
			loc_text("Дубина задиры")),
	create_template("weapons_names_ogryn_club3_2_ext_ru",
		{"loc_weapon_family_ogryn_club_p2_m3"}, {"ru"},
			loc_text("Дубина задиры")),
			--[+ Pattern - Паттерн +]--
		create_template("weapons_patterns_ogryn_club1_2_ext_ru",
			{"loc_weapon_pattern_ogryn_club_p2_m1"}, {"ru"},
				loc_text("«Особая от Бранта»")), -- «Особ. верс. Бранта»
		-- create_template("weapons_patterns_ogryn_club2_2_ext_ru",
			-- {"loc_weapon_pattern_ogryn_club_p2_m2"}, {"ru"},
				-- loc_text("«Гордость Бранта»")), -- «Гордость Бранта»
		create_template("weapons_patterns_ogryn_club3_2_ext_ru",
			{"loc_weapon_pattern_ogryn_club_p2_m3"}, {"ru"},
				loc_text("«Убивало от Бранта»")), -- Дубина Бранта»
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_club1_2_ext_ru",
			{"loc_weapon_mark_ogryn_club_p2_m1"}, {"ru"},
				loc_text("Модель I")),
		create_template("weapons_marks_ogryn_club2_2_ext_ru",
			{"loc_weapon_mark_ogryn_club_p2_m2"}, {"ru"},
				loc_text("Модель II")),
		create_template("weapons_marks_ogryn_club3_2_ext_ru",
			{"loc_weapon_mark_ogryn_club_p2_m3"}, {"ru"},
				loc_text("Модель IIIb")),

			--[+ Cleaver - Тесак +]-- руоф Рубило
	create_template("weapons_names_ogryn_combatblade1_ext_ru",
		{"loc_weapon_family_ogryn_combatblade_p1_m1"}, {"ru"},
			loc_text("Тесак")),
	create_template("weapons_names_ogryn_combatblade2_ext_ru",
		{"loc_weapon_family_ogryn_combatblade_p1_m2"}, {"ru"},
			loc_text("Тесак")),
	create_template("weapons_names_ogryn_combatblade3_ext_ru",
		{"loc_weapon_family_ogryn_combatblade_p1_m3"}, {"ru"},
			loc_text("Тесак")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_combatblade1_ext_ru",
			-- {"loc_weapon_pattern_ogryn_combatblade_p1_m1"}, {"ru"},
				-- loc_text("Крурк")),
		-- create_template("weapons_patterns_ogryn_combatblade2_ext_ru",
			-- {"loc_weapon_pattern_ogryn_combatblade_p1_m2"}, {"ru"},
				-- loc_text("Мясник")),
		-- create_template("weapons_patterns_ogryn_combatblade3_ext_ru",
			-- {"loc_weapon_pattern_ogryn_combatblade_p1_m3"}, {"ru"},
				-- loc_text("Крурк")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_combatblade1_ext_ru",
			{"loc_weapon_mark_ogryn_combatblade_p1_m1"}, {"ru"},
				loc_text("Модель VI")),
		create_template("weapons_marks_ogryn_combatblade2_ext_ru",
			{"loc_weapon_mark_ogryn_combatblade_p1_m2"}, {"ru"},
				loc_text("Модель III")),
		create_template("weapons_marks_ogryn_combatblade3_ext_ru",
			{"loc_weapon_mark_ogryn_combatblade_p1_m3"}, {"ru"},
				loc_text("Модель IV")),

			--[+ Delver's Pickaxe - Кирка искателя +]-- руоф Кирка копателя
	create_template("weapons_names_ogryn_pickaxe_2h1_ext_ru",
		{"loc_weapon_family_ogryn_pickaxe_2h_p1_m1"}, {"ru"},
			loc_text("Кирка искателя")),
	create_template("weapons_names_ogryn_pickaxe_2h2_ext_ru",
		{"loc_weapon_family_ogryn_pickaxe_2h_p1_m2"}, {"ru"},
			loc_text("Кирка искателя")),
	create_template("weapons_names_ogryn_pickaxe_2h3_ext_ru",
		{"loc_weapon_family_ogryn_pickaxe_2h_p1_m3"}, {"ru"},
			loc_text("Кирка искателя")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_pickaxe_2h1_ext_ru",
			-- {"loc_weapon_pattern_ogryn_pickaxe_2h_p1_m1"}, {"ru"},
				-- loc_text("Бранкс")),
		create_template("weapons_patterns_ogryn_pickaxe_2h2_ext_ru",
			{"loc_weapon_pattern_ogryn_pickaxe_2h_p1_m2"}, {"ru"},
				loc_text("Боровийская")), -- Боровианск.
		-- create_template("weapons_patterns_ogryn_pickaxe_2h3_ext_ru",
			-- {"loc_weapon_pattern_ogryn_pickaxe_2h_p1_m3"}, {"ru"},
				-- loc_text("Карсолас")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_pickaxe_2h1_ext_ru",
			{"loc_weapon_mark_ogryn_pickaxe_2h_p1_m1"}, {"ru"},
				loc_text("Модель Ia")),
		create_template("weapons_marks_ogryn_pickaxe_2h2_ext_ru",
			{"loc_weapon_mark_ogryn_pickaxe_2h_p1_m2"}, {"ru"},
				loc_text("Модель III")),
		create_template("weapons_marks_ogryn_pickaxe_2h3_ext_ru",
			{"loc_weapon_mark_ogryn_pickaxe_2h_p1_m3"}, {"ru"},
				loc_text("Модель II")),

			--[+ Power Maul - Силовая булава +]--
	-- create_template("weapons_names_ogryn_powermaul1_ext_ru",
		-- {"loc_weapon_family_ogryn_powermaul_p1_m1"}, {"ru"},
			-- loc_text("Силовая булава")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_powermaul1_ext_ru",
			-- {"loc_weapon_pattern_ogryn_powermaul_p1_m1"}, {"ru"},
				-- loc_text("Ахлис")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_powermaul1_ext_ru",
			{"loc_weapon_mark_ogryn_powermaul_p1_m1"}, {"ru"},
				loc_text("Модель I")),

			--[+ Battle Maul & Slab Shield - Боевая булава и щит-плита +]-- руоф Боевая булава и щит верзилы
	create_template("weapons_names_ogryn_powermaul_slabshield1_ext_ru",
		{"loc_weapon_family_ogryn_powermaul_slabshield_p1_m1"}, {"ru"},
			loc_text("Боевая булава и щит-плита")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_powermaul_slabshield1_ext_ru",
			-- {"loc_weapon_pattern_ogryn_powermaul_slabshield_p1_m1"}, {"ru"},
				-- loc_text("Орокс")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_powermaul_slabshield1_ext_ru",
			{"loc_weapon_mark_ogryn_powermaul_slabshield_p1_m1"}, {"ru"},
				loc_text("Модель II и III")),

		--[+ +RANGED - ДАЛЬНИЙ БОЙ+ +]--

			--[+ Grenadier Gauntlet - Гренадёрская перчатка +]-- руоф Гренадерская перчатка
	create_template("weapons_names_ogryn_gauntlet1_ext_ru",
		{"loc_weapon_family_ogryn_gauntlet_p1_m1"}, {"ru"},
			loc_text("Гренадёрская перчатка")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_gauntlet1_ext_ru",
			-- {"loc_weapon_pattern_ogryn_gauntlet_p1_m1"}, {"ru"},
				-- loc_text("Бластум")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_gauntlet1_ext_ru",
			{"loc_weapon_mark_ogryn_gauntlet_p1_m1"}, {"ru"},
				loc_text("Модель III")),

			--[+ Twin-Linked Heavy Stubber - Спаренный тяжёлый пулемёт +]-- руоф Спаренный тяжелый пулемет
	create_template("weapons_names_ogryn_heavystubber1_ext_ru",
		{"loc_weapon_family_ogryn_heavystubber_p1_m1"}, {"ru"},
			loc_text("Спаренный тяжёлый пулемёт")),
	create_template("weapons_names_ogryn_heavystubber2_ext_ru",
		{"loc_weapon_family_ogryn_heavystubber_p1_m2"}, {"ru"},
			loc_text("Спаренный тяжёлый пулемёт")),
	create_template("weapons_names_ogryn_heavystubber3_ext_ru",
		{"loc_weapon_family_ogryn_heavystubber_p1_m3"}, {"ru"},
			loc_text("Спаренный тяжёлый пулемёт")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_heavystubber1_ext_ru",
			-- {"loc_weapon_pattern_ogryn_heavystubber_p1_m1"}, {"ru"},
				-- loc_text("Крурк")),
		-- create_template("weapons_patterns_ogryn_heavystubber2_ext_ru",
			-- {"loc_weapon_pattern_ogryn_heavystubber_p1_m2"}, {"ru"},
				-- loc_text("Горгонум")),
		-- create_template("weapons_patterns_ogryn_heavystubber3_ext_ru",
			-- {"loc_weapon_pattern_ogryn_heavystubber_p1_m3"}, {"ru"},
				-- loc_text("Ахлис")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_heavystubber1_ext_ru",
			{"loc_weapon_mark_ogryn_heavystubber_p1_m1"}, {"ru"},
				loc_text("Модель V")),
		create_template("weapons_marks_ogryn_heavystubber2_ext_ru",
			{"loc_weapon_mark_ogryn_heavystubber_p1_m2"}, {"ru"},
				loc_text("Модель IV")),
		create_template("weapons_marks_ogryn_heavystubber3_ext_ru",
			{"loc_weapon_mark_ogryn_heavystubber_p1_m3"}, {"ru"},
				loc_text("Модель VII")),

			--[+ Heavy Stubber - Тяжёлый пулемёт +]-- руоф Тяжелый пулемет
	create_template("weapons_names_ogryn_heavystubber1_2_ext_ru",
		{"loc_weapon_family_ogryn_heavystubber_p2_m1"}, {"ru"},
			loc_text("Тяжёлый пулемёт")),
	create_template("weapons_names_ogryn_heavystubber2_2_ext_ru",
		{"loc_weapon_family_ogryn_heavystubber_p2_m2"}, {"ru"},
			loc_text("Тяжёлый пулемёт")),
	create_template("weapons_names_ogryn_heavystubber3_2_ext_ru",
		{"loc_weapon_family_ogryn_heavystubber_p2_m3"}, {"ru"},
			loc_text("Тяжёлый пулемёт")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_heavystubber1_2_ext_ru",
			-- {"loc_weapon_pattern_ogryn_heavystubber_p2_m1"}, {"ru"},
				-- loc_text("Крурк")),
		-- create_template("weapons_patterns_ogryn_heavystubber2_2_ext_ru",
			-- {"loc_weapon_pattern_ogryn_heavystubber_p2_m2"}, {"ru"},
				-- loc_text("Горгонум")),
		-- create_template("weapons_patterns_ogryn_heavystubber3_2_ext_ru",
			-- {"loc_weapon_pattern_ogryn_heavystubber_p2_m3"}, {"ru"},
				-- loc_text("Ахлис")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_heavystubber1_2_ext_ru",
			{"loc_weapon_mark_ogryn_heavystubber_p2_m1"}, {"ru"},
				loc_text("Модель IIa")),
		create_template("weapons_marks_ogryn_heavystubber2_2_ext_ru",
			{"loc_weapon_mark_ogryn_heavystubber_p2_m2"}, {"ru"},
				loc_text("Модель IIIa")),
		create_template("weapons_marks_ogryn_heavystubber3_2_ext_ru",
			{"loc_weapon_mark_ogryn_heavystubber_p2_m3"}, {"ru"},
				loc_text("Модель II")),

			--[+ Ripper Gun - Дробовик-потрошитель +]--
	-- create_template("weapons_names_ogryn_rippergun1_ext_ru",
		-- {"loc_weapon_family_ogryn_rippergun_p1_m1"}, {"ru"},
			-- loc_text("Дробовик-потрошитель")),
	-- create_template("weapons_names_ogryn_rippergun2_ext_ru",
		-- {"loc_weapon_family_ogryn_rippergun_p1_m2"}, {"ru"},
			-- loc_text("Дробовик-потрошитель")),
	-- create_template("weapons_names_ogryn_rippergun3_ext_ru",
		-- {"loc_weapon_family_ogryn_rippergun_p1_m3"}, {"ru"},
			-- loc_text("Дробовик-потрошитель")),
			--[+ Pattern - Паттерн +]-- Врагострел
		create_template("weapons_patterns_ogryn_rippergun1_ext_ru",
			{"loc_weapon_pattern_ogryn_rippergun_p1_m1"}, {"ru"},
				loc_text("Врагорвач")),
		create_template("weapons_patterns_ogryn_rippergun2_ext_ru",
			{"loc_weapon_pattern_ogryn_rippergun_p1_m2"}, {"ru"},
				loc_text("Врагорвач")),
		create_template("weapons_patterns_ogryn_rippergun3_ext_ru",
			{"loc_weapon_pattern_ogryn_rippergun_p1_m3"}, {"ru"},
				loc_text("Врагорвач")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_rippergun1_ext_ru",
			{"loc_weapon_mark_ogryn_rippergun_p1_m1"}, {"ru"},
				loc_text("Модель II")),
		create_template("weapons_marks_ogryn_rippergun2_ext_ru",
			{"loc_weapon_mark_ogryn_rippergun_p1_m2"}, {"ru"},
				loc_text("Модель V")),
		create_template("weapons_marks_ogryn_rippergun3_ext_ru",
			{"loc_weapon_mark_ogryn_rippergun_p1_m3"}, {"ru"},
				loc_text("Модель VI")),

			--[+ Kickback - Дробовик «Отбойник» +]-- руоф Отбойник
	create_template("weapons_names_ogryn_thumper1_ext_ru",
		{"loc_weapon_family_ogryn_thumper_p1_m1"}, {"ru"},
			loc_text("Дробовик «Отбойник»")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_thumper1_ext_ru",
			-- {"loc_weapon_pattern_ogryn_thumper_p1_m1"}, {"ru"},
				-- loc_text("Лоренц")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_thumper1_ext_ru",
			{"loc_weapon_mark_ogryn_thumper_p1_m1"}, {"ru"},
				loc_text("Модель V")),

			--[+ Rumbler - Гранатомёт «Громобой» +]-- руоф Рамблер
	create_template("weapons_names_ogryn_thumper2_ext_ru",
		{"loc_weapon_family_ogryn_thumper_p1_m2"}, {"ru"},
			loc_text("Гранатомёт «Громобой»")),
			--[+ Pattern - Паттерн +]--
		-- create_template("weapons_patterns_ogryn_thumper2_ext_ru",
			-- {"loc_weapon_pattern_ogryn_thumper_p1_m2"}, {"ru"},
				-- loc_text("Лоренц")),
			--[+ MK - Модель +]-- --Мод.
		create_template("weapons_marks_ogryn_thumper2_ext_ru",
			{"loc_weapon_mark_ogryn_thumper_p1_m2"}, {"ru"},
				loc_text("Модель VI")),

}

--[+ Return the localization templates +]--
return localization_templates
