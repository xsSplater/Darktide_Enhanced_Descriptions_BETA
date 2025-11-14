---@diagnostic disable: undefined-global
-- Version 4.0

local mod = get_mod("Enhanced_descriptions")

--[+ Function to create a localization template +]--
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end

--[+ Getting rid of repeating parts: function(locale, value) return ... end +]--
local function loc_text(text)
	return function(locale, value) 
		return text
	end
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


-- FOR TESTS ONLY!!!
-- create_template("weap_testum00", {"loc_talent_veteran_crits_rend_alt_description"}, {"en"}, function(locale, value) return string.gsub(value, "{", "(") end),
-- create_template("weap_testum01", {"loc_talent_adamant_pinning_dog_elite_damage_description"}, {"en"}, function(locale, value) return string.gsub(value, "{", "(") end),
-- FOR TESTS ONLY!!!


--[+ ++ВРАГИ - 敵人 ++ +]--
	--[+ ОРДА +]--
		--[+ Groaner - Ворчун +]--
		-- create_template("enemies_chaos_groaner_ext_ru",
			-- {"loc_breed_display_name_chaos_newly_infected"}, {"ru"},
				-- loc_text("Ворчун")),
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
		--[+ Traditional Chinese  +]--

	--[+ СПЕЦИАЛИСТЫ - 專家 +]--
		--[+ Poxburster - Чумной взрывник +]--
		--[+ Russian +]--
		create_template("enemies_chaos_poxwalker_bomber_ext_ru",
			{"loc_breed_display_name_chaos_poxwalker_bomber"}, {"ru"},
				loc_text("Чумной взрывник")),
		--[+ Traditional Chinese 瘟疫爆者 +]--
		create_template("enemies_chaos_poxwalker_bomber_ext_zh",
			{"loc_breed_display_name_chaos_poxwalker_bomber"}, {"zh-tw"},
				loc_text("瘟疫爆者")),

		--[+ Dreg Tox Flamer - Дрег Токс-огнемётчик +]--
		--[+ Russian +]--
		create_template("enemies_cultist_flamer_ext_ru",
			{"loc_breed_display_name_cultist_flamer"}, {"ru"},
				loc_text("Дрег Токс-огнемётчик")),
		--[+ Traditional Chinese 渣滓毒焰噴射者 +]--
		create_template("enemies_cultist_flamer_ext_zh",
			{"loc_breed_display_name_cultist_flamer"}, {"zh-tw"},
				loc_text("渣滓毒焰噴射者")),

		--[+ Dreg Tox Bomber - Дрег Токс-гренадёр +]--
		--[+ Russian +]--
		create_template("enemies_cultist_grenadier_ext_ru",
			{"loc_breed_display_name_cultist_grenadier"}, {"ru"},
				loc_text("Дрег Токс-гренадёр")),
		--[+ Traditional Chinese 渣滓劇毒轟炸者 +]--
		create_template("enemies_cultist_grenadier_ext_zh",
			{"loc_breed_display_name_cultist_grenadier"}, {"zh-tw"},
				loc_text("渣滓劇毒轟炸者")),

		--[+ Scab Flamer - Скаб-огнемётчик +]--
		--[+ Russian +]--
		create_template("enemies_renegade_flamer_ext_ru",
			{"loc_breed_display_name_renegade_flamer"}, {"ru"},
				loc_text("Скаб-огнемётчик")),
		--[+ Traditional Chinese 血痂噴火者 +]--
		create_template("enemies_renegade_flamer_ext_zh",
			{"loc_breed_display_name_renegade_flamer"}, {"zh-tw"},
				loc_text("血痂噴火者")),

		--[+ Scab Bomber - Скаб-гренадёр +]--
		--[+ Russian +]--
		create_template("enemies_renegade_grenadier_ext_ru",
			{"loc_breed_display_name_renegade_grenadier"}, {"ru"},
				loc_text("Скаб-гренадёр")),
		--[+ Traditional Chinese 血痂轟炸者 +]--
		create_template("enemies_renegade_grenadier_ext_zh",
			{"loc_breed_display_name_renegade_grenadier"}, {"zh-tw"},
				loc_text("血痂轟炸者")),

		--[+ Scab Trapper - Скаб-сеточник +]--
		--[+ Russian +]--
		create_template("enemies_renegade_netgunner_ext_ru",
			{"loc_breed_display_name_renegade_netgunner"}, {"ru"},
				loc_text("Скаб-сеточник")),
		--[+ Traditional Chinese 血痂陷阱兵 +]--
		create_template("enemies_renegade_netgunner_ext_zh",
			{"loc_breed_display_name_renegade_netgunner"}, {"zh-tw"},
				loc_text("血痂陷阱兵")),

	--[+ ЭЛИТА - 精英 +]--
		--[+ Dreg Shotgunner - Дрег-штурмовик +]--
		--[+ Russian +]--
		create_template("enemies_cultist_shocktrooper_ext_ru",
			{"loc_breed_display_name_cultist_shocktrooper"}, {"ru"},
				loc_text("Дрег-штурмовик")),
		--[+ Traditional Chinese 渣滓霰彈槍手 +]--
		create_template("enemies_cultist_shocktrooper_ext_zh",
			{"loc_breed_display_name_cultist_shocktrooper"}, {"zh-tw"},
				loc_text("渣滓霰彈槍手")),

		--[+ Dreg  - Дрег-пулемётчик +]--
		--[+ Russian +]--
		create_template("enemies_cultist_gunner_ext_ru",
			{"loc_breed_display_name_cultist_gunner"}, {"ru"},
				loc_text("Дрег-пулемётчик")),
		--[+ Traditional Chinese 渣滓砲手 +]--
		create_template("enemies_cultist_gunner_ext_zh",
			{"loc_breed_display_name_cultist_gunner"}, {"zh-tw"},
				loc_text("渣滓砲手")),

		--[+ Dreg  - Дрег-берсерк +]--
		--[+ Russian +]--
		create_template("enemies_cultist_berzerker_ext_ru",
			{"loc_breed_display_name_cultist_berzerker"}, {"ru"},
				loc_text("Дрег-берсерк")),
		--[+ Traditional Chinese 渣滓狂怒者 +]--
		create_template("enemies_cultist_berzerker_ext_zh",
			{"loc_breed_display_name_cultist_berzerker"}, {"zh-tw"},
				loc_text("渣滓狂怒者")),

		--[+ Scab Shotgunner - Скаб-штурмовик +]--
		--[+ Russian +]--
		create_template("enemies_renegade_shocktrooper_ext_ru",
			{"loc_breed_display_name_renegade_shocktrooper"}, {"ru"},
				loc_text("Скаб-штурмовик")),
		--[+ Traditional Chinese 血痂霰彈槍手 +]--
		create_template("enemies_renegade_shocktrooper_ext_zh",
			{"loc_breed_display_name_renegade_shocktrooper"}, {"zh-tw"},
				loc_text("血痂霰彈槍手")),

		--[+ Scab - Скаб-пулемётчик +]--
		--[+ Russian +]--
		create_template("enemies_renegade_gunner_ext_ru",
			{"loc_breed_display_name_renegade_gunner"}, {"ru"},
				loc_text("Скаб-пулемётчик")),
		--[+ Traditional Chinese 血痂砲手 +]--
		create_template("enemies_renegade_gunner_ext_zh",
			{"loc_breed_display_name_renegade_gunner"}, {"zh-tw"},
				loc_text("血痂砲手")),

		--[+ Scab - Скаб-берсерк +]--
		--[+ Russian +]--
		create_template("enemies_renegade_berzerker_ext_ru",
			{"loc_breed_display_name_renegade_berzerker"}, {"ru"},
				loc_text("Скаб-берсерк")),
		--[+ Traditional Chinese 血痂狂暴者 +]--
		create_template("enemies_renegade_berzerker_ext_zh",
			{"loc_breed_display_name_renegade_berzerker"}, {"zh-tw"},
				loc_text("血痂狂暴者")),

		--[+ Mauler - Скаб-разрубатель +]--
		--[+ Russian +]--
		create_template("enemies_renegade_executor_ext_ru",
			{"loc_breed_display_name_renegade_executor"}, {"ru"},
				loc_text("Скаб-разрубатель")),
		--[+ Traditional Chinese 血痂重錘兵 +]--
		create_template("enemies_renegade_executor_ext_zh",
			{"loc_breed_display_name_renegade_executor"}, {"zh-tw"},
				loc_text("血痂重錘兵")),

		--[+  - Крушила +]--
		--[+ Russian +]--
		create_template("enemies_chaos_ogryn_executor_ext_ru",
			{"loc_breed_display_name_chaos_ogryn_executor"}, {"ru"},
				loc_text("Крушила")),
		--[+ Traditional Chinese 碾壓者 +]--
		create_template("enemies_chaos_ogryn_executor_ext_zh",
			{"loc_breed_display_name_chaos_ogryn_executor"}, {"zh-tw"},
				loc_text("碾壓者")),

		--[+ Монстры +]--
		--[+ Russian - Зверь Нургла +]--
		create_template("enemies_chaos_beast_of_nurgle_ext_ru",
			{"loc_breed_display_name_chaos_beast_of_nurgle"}, {"ru"},
				loc_text("Зверь Нургла")),
		--[+ Traditional Chinese - 納垢巨獸 +]--
		create_template("enemies_chaos_beast_of_nurgle_ext_zh",
			{"loc_breed_display_name_chaos_beast_of_nurgle"}, {"zh-tw"},
				loc_text("納垢巨獸")),

	--[+ ++ТИПЫ ТЕЛ И БРОНИ++ +]--
		--[+ Заражённый +]--
		create_template("body_disgustingly_resilient_ext_ru",
			{"loc_weapon_stats_display_disgustingly_resilient"}, {"ru"},
				loc_text("Заражённый")),
		--[+ Traditional Chinese 感染者 +]--
		create_template("body_disgustingly_resilient_ext_zh",
			{"loc_weapon_stats_display_disgustingly_resilient"}, {"zh-tw"},
				loc_text("感染者")),

		--[+ Несгибаемый +]--
		create_template("body_resistant_ext_ru",
			{"loc_glossary_armour_type_resistant"}, {"ru"},
				loc_text("Несгибаемый")),
		--[+ Traditional Chinese 不屈 +]--
		create_template("body_resistant_ext_zh",
			{"loc_glossary_armour_type_resistant"}, {"zh-tw"},
				loc_text("不屈")),

		--[+ Небронированный +]--
		create_template("body_unarmoured_ext_ru",
			{"loc_weapon_stats_display_unarmored"}, {"ru"},
				loc_text("Небронированный")),
		--[+ Traditional Chinese 無甲 +]--
		create_template("body_unarmoured_ext_zh",
			{"loc_weapon_stats_display_unarmored"}, {"zh-tw"},
				loc_text("無甲")),

--[+ ++WEAPONS - ОРУЖИЕ++ +]--
	--[+ +PSYKER - ПСАЙКЕР+ +]--
		--[+ +MELEE - БЛИЖНИЙ БОЙ+ +]--

		--[+ Assault Chainaxe - Штурмовой пилотопор +]-- -- руоф Штурмовой цепной топор
			--[+ Russian +]
			create_template("weapons_names_chainaxe1_ext_ru",
				{"loc_weapon_family_chainaxe_p1_m1"}, {"ru"},
					loc_text("Штурмовой пилотопор")),
			--[+ Traditional Chinese +]--
			create_template("weapons_names_chainaxe1_ext_zh",
				{"loc_weapon_family_chainaxe_p1_m1"}, {"zh-tw"},
					loc_text("突擊鏈斧")),

			--[+ Russian +]
			create_template("weapons_names_chainaxe2_ext_ru",
				{"loc_weapon_family_chainaxe_p1_m2"}, {"ru"},
					loc_text("Штурмовой пилотопор")),
			--[+ Traditional Chinese +]--
			create_template("weapons_names_chainaxe2_ext_zh",
				{"loc_weapon_family_chainaxe_p1_m2"}, {"zh-tw"},
					loc_text("突擊鏈斧")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]	
			-- create_template("weapons_patterns_chainaxe1_ext_ru",
				-- {"loc_weapon_pattern_chainaxe_p1_m1"}, {"ru"},
					-- loc_text("Орестес")),
			--[+ Traditional Chinese +]--
			create_template("weapons_patterns_chainaxe1_ext_zh",
				{"loc_weapon_pattern_chainaxe_p1_m1"}, {"zh-tw"},
					loc_text("奧瑞斯特斯")),
				
			--[+ Russian +]	
			-- create_template("weapons_patterns_chainaxe2_ext_ru",
				-- {"loc_weapon_pattern_chainaxe_p1_m2"}, {"ru"},
					-- loc_text("Орестес")),
			--[+ Traditional Chinese +]--
			create_template("weapons_patterns_chainaxe2_ext_zh",
				{"loc_weapon_pattern_chainaxe_p1_m2"}, {"zh-tw"},
					loc_text("奧瑞斯特斯")),
			
			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]	
			create_template("weapons_marks_chainaxe1_ext_ru",
				{"loc_weapon_mark_chainaxe_p1_m1"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]-- color(120, 220, 255)
			create_template("weapons_marks_chainaxe1_ext_zh",
				{"loc_weapon_mark_chainaxe_p1_m1"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 4 型{#reset()}")),
			--[+ Russian +]	
			create_template("weapons_marks_chainaxe2_ext_ru",
				{"loc_weapon_mark_chainaxe_p1_m2"}, {"ru"},
					loc_text("Модель XII")),
			--[+ Traditional Chinese MK XII +]-- color(160, 140, 255)
			create_template("weapons_marks_chainaxe2_ext_zh",
				{"loc_weapon_mark_chainaxe_p1_m2"}, {"zh-tw"},
					loc_text("{#color(160, 140, 255)}MK 12 型{#reset()}")),

		--[+ Assault Chainsword - Штурмовой пиломеч +]-- -- руоф Штурмовой цепной меч
			--[+ Russian +]	
			create_template("weapons_names_chainsword1_ext_ru",
				{"loc_weapon_family_chainsword_p1_m1"}, {"ru"},
					loc_text("Штурмовой пиломеч")),
			--[+ Traditional Chinese 突擊鏈鋸劍 +]--
			create_template("weapons_names_chainsword1_ext_zh",
				{"loc_weapon_family_chainsword_p1_m1"}, {"zh-tw"},
					loc_text("突擊鏈鋸劍")),
			--[+ Russian +]	
			create_template("weapons_names_chainsword2_ext_ru",
				{"loc_weapon_family_chainsword_p1_m2"}, {"ru"},
					loc_text("Штурмовой пиломеч")),
			--[+ Traditional Chinese 突擊鏈鋸劍 +]--
			create_template("weapons_names_chainsword2_ext_zh",
				{"loc_weapon_family_chainsword_p1_m2"}, {"zh-tw"},
					loc_text("突擊鏈鋸劍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]	
			create_template("weapons_patterns_chainsword1_ext_ru",
				{"loc_weapon_pattern_chainsword_p1_m1"}, {"ru"},
					loc_text("Кадия")),
			--[+ Traditional Chinese 卡迪亞 +]--
			create_template("weapons_patterns_chainsword1_ext_zh",
				{"loc_weapon_pattern_chainsword_p1_m1"}, {"zh-tw"},
					loc_text("卡迪亞")),
			--[+ Russian +]	
			create_template("weapons_patterns_chainsword2_ext_ru",
				{"loc_weapon_pattern_chainsword_p1_m2"}, {"ru"},
					loc_text("Кадия")),
			--[+ Traditional Chinese 卡迪亞 +]--
			create_template("weapons_patterns_chainsword2_ext_zh",
				{"loc_weapon_pattern_chainsword_p1_m2"}, {"zh-tw"},
					loc_text("卡迪亞")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]	
			create_template("weapons_marks_chainsword1_ext_ru",
				{"loc_weapon_mark_chainsword_p1_m1"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]--
			create_template("weapons_marks_chainsword1_ext_zh",
				{"loc_weapon_mark_chainsword_p1_m1"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 4 型{#reset()}")),
			--[+ Russian +]	
			create_template("weapons_marks_chainsword2_ext_ru",
				{"loc_weapon_mark_chainsword_p1_m2"}, {"ru"},
					loc_text("Модель XIIIg")),
			--[+ Traditional Chinese MK XIIIg +]--
			create_template("weapons_marks_chainsword2_ext_zh",
				{"loc_weapon_mark_chainsword_p1_m2"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 13G 型{#reset()}")),

		--[+ Combat Axe - Боевой топор +]--
			--[+ Russian +]	
			-- create_template("weapons_names_combataxe1_ext_ru",
				-- {"loc_weapon_family_combataxe_p1_m1"}, {"ru"},
					-- loc_text("Боевой топор")),
			--[+ Traditional Chinese 戰鬥斧 +]--
			create_template("weapons_names_combataxe1_ext_zh",
				{"loc_weapon_family_combataxe_p1_m1"}, {"zh-tw"},
					loc_text("戰鬥斧")),
			--[+ Russian +]	
			-- create_template("weapons_names_combataxe2_ext_ru",
				-- {"loc_weapon_family_combataxe_p1_m2"}, {"ru"},
					-- loc_text("Боевой топор")),
			--[+ Traditional Chinese 戰鬥斧 +]--
			create_template("weapons_names_combataxe2_ext_zh",
				{"loc_weapon_family_combataxe_p1_m2"}, {"zh-tw"},
					loc_text("戰鬥斧")),
			--[+ Russian +]	
			-- create_template("weapons_names_combataxe3_ext_ru",
				-- {"loc_weapon_family_combataxe_p1_m3"}, {"ru"},
					-- loc_text("Боевой топор")),
			--[+ Traditional Chinese 戰鬥斧 +]--
			create_template("weapons_names_combataxe3_ext_zh",
				{"loc_weapon_family_combataxe_p1_m3"}, {"zh-tw"},
					loc_text("戰鬥斧")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]	
			-- create_template("weapons_patterns_combataxe1_ext_ru",
				-- {"loc_weapon_pattern_combataxe_p1_m1"}, {"ru"},
					-- loc_text("Рашад")),
			--[+ Traditional Chinese 拉沙德 +]--
			create_template("weapons_patterns_combataxe1_ext_zh",
				{"loc_weapon_pattern_combataxe_p1_m1"}, {"zh-tw"},
					loc_text("拉沙德")),

			--[+ Russian +]	
			-- create_template("weapons_patterns_combataxe2_ext_ru",
				-- {"loc_weapon_pattern_combataxe_p1_m2"}, {"ru"},
					-- loc_text("Антакс")),
			--[+ Traditional Chinese 安塔克斯 +]--
			create_template("weapons_patterns_combataxe2_ext_zh",
				{"loc_weapon_pattern_combataxe_p1_m2"}, {"zh-tw"},
					loc_text("安塔克斯")),

			--[+ Russian +]	
			-- create_template("weapons_patterns_combataxe3_ext_ru",
				-- {"loc_weapon_pattern_combataxe_p1_m3"}, {"ru"},
					-- loc_text("Ахлис")),
			--[+ Traditional Chinese 阿克利斯 +]--
			create_template("weapons_patterns_combataxe3_ext_zh",
				{"loc_weapon_pattern_combataxe_p1_m3"}, {"zh-tw"},
					loc_text("阿克利斯")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]	
			create_template("weapons_marks_combataxe1_ext_ru",
				{"loc_weapon_mark_combataxe_p1_m1"}, {"ru"},
					loc_text("Модель III")),
			--[+ Traditional Chinese MK III +]--
			create_template("weapons_marks_combataxe1_ext_zh",
				{"loc_weapon_mark_combataxe_p1_m1"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 3 型{#reset()}")),
			--[+ Russian +]	
			create_template("weapons_marks_combataxe2_ext_ru",
				{"loc_weapon_mark_combataxe_p1_m2"}, {"ru"},
					loc_text("Модель V")),
			--[+ Traditional Chinese MK V +]--
			create_template("weapons_marks_combataxe2_ext_zh",
				{"loc_weapon_mark_combataxe_p1_m2"}, {"zh-tw"},
					loc_text("{#color(224, 42, 7)}MK 5 型{#reset()}")),
			--[+ Russian +]	
			create_template("weapons_marks_combataxe3_ext_ru",
				{"loc_weapon_mark_combataxe_p1_m3"}, {"ru"},
					loc_text("Модель VIII")),
			--[+ Traditional Chinese MK VIII +]--
			create_template("weapons_marks_combataxe3_ext_zh",
				{"loc_weapon_mark_combataxe_p1_m3"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 8 型{#reset()}")),

		--[+ Tactical Axe - Тактический топор +]--
			--[+ Russian +]	
			-- create_template("weapons_names_combataxe1_2_ext_ru",
			-- 	{"loc_weapon_family_combataxe_p2_m1"}, {"ru"},
			-- 		loc_text("Тактический топор")),
			--[+ Traditional Chinese 戰術斧 +]--
			create_template("weapons_names_combataxe1_2_ext_zh",
				{"loc_weapon_family_combataxe_p2_m1"}, {"zh-tw"},
					loc_text("戰術斧")),
			--[+ Russian +]	
			-- create_template("weapons_names_combataxe2_2_ext_ru",
				-- {"loc_weapon_family_combataxe_p2_m2"}, {"ru"},
					-- loc_text("Тактический топор")),
			--[+ Traditional Chinese 戰術斧 +]--
			create_template("weapons_names_combataxe2_2_ext_zh",
				{"loc_weapon_family_combataxe_p2_m2"}, {"zh-tw"},
					loc_text("戰術斧")),
			--[+ Russian +]	
			-- create_template("weapons_names_combataxe3_2_ext_ru",
				-- {"loc_weapon_family_combataxe_p2_m3"}, {"ru"},
					-- loc_text("Тактический топор")),
			--[+ Traditional Chinese 戰術斧 +]--
			create_template("weapons_names_combataxe3_2_ext_zh",
				{"loc_weapon_family_combataxe_p2_m3"}, {"zh-tw"},
					loc_text("戰術斧")),

		--[+ Pattern - Паттерн +]--
			--[+ Russian +]	
			-- create_template("weapons_patterns_combataxe1_2_ext_ru",
				-- {"loc_weapon_pattern_combataxe_p2_m1"}, {"ru"},
					-- loc_text("Атрокс")),
			--[+ Traditional Chinese 埃托克斯 +]--
			create_template("weapons_patterns_combataxe1_2_ext_zh",
				{"loc_weapon_pattern_combataxe_p2_m1"}, {"zh-tw"},
					loc_text("埃托克斯")),
			--[+ Russian +]	
			-- create_template("weapons_patterns_combataxe2_2_ext_ru",
				-- {"loc_weapon_pattern_combataxe_p2_m2"}, {"ru"},
					-- loc_text("Атрокс")),
			--[+ Traditional Chinese 埃托克斯 +]--
			create_template("weapons_patterns_combataxe2_2_ext_zh",
				{"loc_weapon_pattern_combataxe_p2_m2"}, {"zh-tw"},
					loc_text("埃托克斯")),
			--[+ Russian +]	
			-- create_template("weapons_patterns_combataxe3_2_ext_ru",
				-- {"loc_weapon_pattern_combataxe_p2_m3"}, {"ru"},
					-- loc_text("Атрокс")),
			--[+ Traditional Chinese 埃托克斯 +]--
			create_template("weapons_patterns_combataxe3_2_ext_zh",
				{"loc_weapon_pattern_combataxe_p2_m3"}, {"zh-tw"},
					loc_text("埃托克斯")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]	
			create_template("weapons_marks_combataxe1_2_ext_ru",
				{"loc_weapon_mark_combataxe_p2_m1"}, {"ru"},
					loc_text("Модель II")),
			--[+ Traditional Chinese MK II +]--
			create_template("weapons_marks_combataxe1_2_ext_zh",
				{"loc_weapon_mark_combataxe_p2_m1"}, {"zh-tw"},
					loc_text("{#color(98, 211, 55)}MK 2 型{#reset()}")),
			--[+ Russian +]	
			create_template("weapons_marks_combataxe2_2_ext_ru",
				{"loc_weapon_mark_combataxe_p2_m2"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]--
			create_template("weapons_marks_combataxe2_2_ext_zh",
				{"loc_weapon_mark_combataxe_p2_m2"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 4 型{#reset()}")),
			--[+ Russian +]	
			create_template("weapons_marks_combataxe3_2_ext_ru",
				{"loc_weapon_mark_combataxe_p2_m3"}, {"ru"},
					loc_text("Модель VII")),
			--[+ Traditional Chinese MK VII +]--
			create_template("weapons_marks_combataxe3_2_ext_zh",
				{"loc_weapon_mark_combataxe_p2_m3"}, {"zh-tw"},
					loc_text("{#color(233, 165, 161)}MK 7 型{#reset()}")),

		--[+ Combat Blade - Боевой клинок +]--
			--[+ Russian +]	
			-- create_template("weapons_names_combatknife1_ext_ru",
				-- {"loc_weapon_family_combatknife_p1_m1"}, {"ru"},
					-- loc_text("Боевой клинок")),
			--[+ Traditional Chinese 戰刃 +]--
			create_template("weapons_names_combatknife1_ext_zh",
				{"loc_weapon_family_combatknife_p1_m1"}, {"zh-tw"},
					loc_text("戰刃")),
			--[+ Russian +]	
			-- create_template("weapons_names_combatknife2_ext_ru",
				-- {"loc_weapon_family_combatknife_p1_m2"}, {"ru"},
					-- loc_text("Боевой клинок")),
					--[+ Pattern - Паттерн +]-- руоф Катачанск.
			--[+ Traditional Chinese MK VII +]--
			create_template("weapons_names_combatknife2_ext_zh",
				{"loc_weapon_family_combatknife_p1_m2"}, {"zh-tw"},
					loc_text("戰刃")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]	
			create_template("weapons_patterns_combatknife1_ext_ru",
				{"loc_weapon_pattern_combatknife_p1_m1"}, {"ru"},
					loc_text("Катачан")),
			--[+ Traditional Chinese 卡塔昌 +]--
			create_template("weapons_patterns_combatknife1_ext_zh",
				{"loc_weapon_pattern_combatknife_p1_m1"}, {"zh-tw"},
					loc_text("卡塔昌")),
			--[+ Russian +]	
			create_template("weapons_patterns_combatknife2_ext_ru",
				{"loc_weapon_pattern_combatknife_p1_m2"}, {"ru"},
					loc_text("Катачан")),
			--[+ Traditional Chinese 卡塔昌 +]--
			create_template("weapons_patterns_combatknife2_ext_zh",
				{"loc_weapon_pattern_combatknife_p1_m2"}, {"zh-tw"},
					loc_text("卡塔昌")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]	
			create_template("weapons_marks_combatknife1_ext_ru",
				{"loc_weapon_mark_combatknife_p1_m1"}, {"ru"},
					loc_text("Модель III")),
			--[+ Traditional Chinese MK III +]--
			create_template("weapons_marks_combatknife1_ext_zh",
				{"loc_weapon_mark_combatknife_p1_m1"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 3 型{#reset()}")),
			--[+ Russian +]	
			create_template("weapons_marks_combatknife2_ext_ru",
				{"loc_weapon_mark_combatknife_p1_m2"}, {"ru"},
					loc_text("Модель VI")),
			--[+ Traditional Chinese MK VI +]--
			create_template("weapons_marks_combatknife2_ext_zh",
				{"loc_weapon_mark_combatknife_p1_m2"}, {"zh-tw"},
					loc_text("{#color(235, 186, 38)}MK 6 型{#reset()}")),

		--[+ "Devil's Claw" Sword - Меч «Дьявольский коготь» +]--
			--[+ Russian +]	
			-- create_template("weapons_names_combatsword1_ext_ru",
				-- {"loc_weapon_family_combatsword_p1_m1"}, {"ru"},
					-- loc_text("Меч «Дьявольский коготь»")),
			--[+ Traditional Chinese 『惡魔之爪』劍 +]--
			create_template("weapons_names_combatsword1_ext_zh",
				{"loc_weapon_family_combatsword_p1_m1"}, {"zh-tw"},
					loc_text("『惡魔之爪』劍")),
			--[+ Russian +]	
			-- create_template("weapons_names_combatsword2_ext_ru",
				-- {"loc_weapon_family_combatsword_p1_m2"}, {"ru"},
					-- loc_text("Меч «Дьявольский коготь»")),
			--[+ Traditional Chinese 『惡魔之爪』劍 +]--
			create_template("weapons_names_combatsword2_ext_zh",
				{"loc_weapon_family_combatsword_p1_m2"}, {"zh-tw"},
					loc_text("『惡魔之爪』劍")),
			--[+ Russian +]	
			-- create_template("weapons_names_combatsword3_ext_ru",
				-- {"loc_weapon_family_combatsword_p1_m3"}, {"ru"},
					-- loc_text("Меч «Дьявольский коготь»")),
			--[+ Traditional Chinese 『惡魔之爪』劍 +]--
			create_template("weapons_names_combatsword3_ext_zh",
				{"loc_weapon_family_combatsword_p1_m3"}, {"zh-tw"},
					loc_text("『惡魔之爪』劍")),

			--[+ Pattern - Паттерн +]-- руоф Катачанск.
			--[+ Russian +]	
			create_template("weapons_patterns_combatsword1_ext_ru",
				{"loc_weapon_pattern_combatsword_p1_m1"}, {"ru"},
					loc_text("Катачан")),
			--[+ Traditional Chinese 卡塔昌 +]--
			create_template("weapons_patterns_combatsword1_ext_zh",
				{"loc_weapon_pattern_combatsword_p1_m1"}, {"zh-tw"},
					loc_text("卡塔昌")),
			--[+ Russian +]	
			create_template("weapons_patterns_combatsword2_ext_ru",
				{"loc_weapon_pattern_combatsword_p1_m2"}, {"ru"},
					loc_text("Катачан")),
			--[+ Traditional Chinese 卡塔昌 +]--
			create_template("weapons_patterns_combatsword2_ext_zh",
				{"loc_weapon_pattern_combatsword_p1_m2"}, {"zh-tw"},
					loc_text("卡塔昌")),
			--[+ Russian +]	
			create_template("weapons_patterns_combatsword3_ext_ru",
				{"loc_weapon_pattern_combatsword_p1_m3"}, {"ru"},
					loc_text("Катачан")),
			--[+ Traditional Chinese 卡塔昌 +]--
			create_template("weapons_patterns_combatsword3_ext_zh",
				{"loc_weapon_pattern_combatsword_p1_m3"}, {"zh-tw"},
					loc_text("卡塔昌")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]	
			create_template("weapons_marks_combatsword1_ext_ru",
				{"loc_weapon_mark_combatsword_p1_m1"}, {"ru"},
					loc_text("Модель I")),
			--[+ Traditional Chinese MK I +]--
			create_template("weapons_marks_combatsword1_ext_zh",
				{"loc_weapon_mark_combatsword_p1_m1"}, {"zh-tw"},
					loc_text("{#color(197, 191, 38)}MK 1 型{#reset()}")),
			--[+ Russian +]	
			create_template("weapons_marks_combatsword2_ext_ru",
				{"loc_weapon_mark_combatsword_p1_m2"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]--
			create_template("weapons_marks_combatsword2_ext_zh",
				{"loc_weapon_mark_combatsword_p1_m2"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 4 型{#reset()}")),
			--[+ Russian +]	
			create_template("weapons_marks_combatsword3_ext_ru",
				{"loc_weapon_mark_combatsword_p1_m3"}, {"ru"},
					loc_text("Модель VII")),
			--[+ Traditional Chinese MK VII +]--
			create_template("weapons_marks_combatsword3_ext_zh",
				{"loc_weapon_mark_combatsword_p1_m3"}, {"zh-tw"},
					loc_text("{#color(233, 165, 161)}MK 7 型{#reset()}")),

		--[+ Heavy Sword - Тяжёлый меч +]-- руоф Тяжелый меч
			--[+ Russian +]	
			create_template("weapons_names_combatsword1_2_ext_ru",
				{"loc_weapon_family_combatsword_p2_m1"}, {"ru"},
					loc_text("Тяжёлый меч")),
			--[+ Traditional Chinese 重劍 +]--
			create_template("weapons_names_combatsword1_2_ext_zh",
				{"loc_weapon_family_combatsword_p2_m1"}, {"zh-tw"},
					loc_text("重劍")),
			--[+ Russian +]	
			create_template("weapons_names_combatsword2_2_ext_ru",
				{"loc_weapon_family_combatsword_p2_m2"}, {"ru"},
					loc_text("Тяжёлый меч")),
			--[+ Traditional Chinese 重劍 +]--
			create_template("weapons_names_combatsword2_2_ext_zh",
				{"loc_weapon_family_combatsword_p2_m2"}, {"zh-tw"},
					loc_text("重劍")),
			--[+ Russian +]	
			create_template("weapons_names_combatsword3_2_ext_ru",
				{"loc_weapon_family_combatsword_p2_m3"}, {"ru"},
					loc_text("Тяжёлый меч")),
			--[+ Traditional Chinese 重劍 +]--
			create_template("weapons_names_combatsword3_2_ext_zh",
				{"loc_weapon_family_combatsword_p2_m3"}, {"zh-tw"},
					loc_text("重劍")),
			--[+ Pattern - Паттерн +]-- руоф Тартолскай
			--[+ Russian +]	
			create_template("weapons_patterns_combatsword1_2_ext_ru",
				{"loc_weapon_pattern_combatsword_p2_m1"}, {"ru"},
					loc_text("Туртольский")),
			--[+ Traditional Chinese 圖妥斯基 +]--
			create_template("weapons_patterns_combatsword1_2_ext_zh",
				{"loc_weapon_pattern_combatsword_p2_m1"}, {"zh-tw"},
					loc_text("圖妥斯基")),
			--[+ Russian +]	
			create_template("weapons_patterns_combatsword2_2_ext_ru",
				{"loc_weapon_pattern_combatsword_p2_m2"}, {"ru"},
					loc_text("Туртольский")),
			--[+ Traditional Chinese 圖妥斯基 +]--
			create_template("weapons_patterns_combatsword2_2_ext_zh",
				{"loc_weapon_pattern_combatsword_p2_m2"}, {"zh-tw"},
					loc_text("圖妥斯基")),
			--[+ Russian +]	
			create_template("weapons_patterns_combatsword3_2_ext_ru",
				{"loc_weapon_pattern_combatsword_p2_m3"}, {"ru"},
					loc_text("Туртольский")),
			--[+ Traditional Chinese 圖妥斯基 +]--
			create_template("weapons_patterns_combatsword3_2_ext_zh",
				{"loc_weapon_pattern_combatsword_p2_m3"}, {"zh-tw"},
					loc_text("圖妥斯基")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]	
			create_template("weapons_marks_combatsword1_2_ext_ru",
				{"loc_weapon_mark_combatsword_p2_m1"}, {"ru"},
					loc_text("Модель VI")),
			--[+ Traditional Chinese MK VI +]--
			create_template("weapons_marks_combatsword1_2_ext_zh",
				{"loc_weapon_mark_combatsword_p2_m1"}, {"zh-tw"},
					loc_text("{#color(235, 186, 38)}MK 6 型{#reset()}")),
			--[+ Russian +]	
			create_template("weapons_marks_combatsword2_2_ext_ru",
				{"loc_weapon_mark_combatsword_p2_m2"}, {"ru"},
					loc_text("Модель VII")),
			--[+ Traditional Chinese MK VII +]--
			create_template("weapons_marks_combatsword2_2_ext_zh",
				{"loc_weapon_mark_combatsword_p2_m2"}, {"zh-tw"},
					loc_text("{#color(233, 165, 161)}MK 7 型{#reset()}")),
			--[+ Russian +]	
			create_template("weapons_marks_combatsword3_2_ext_ru",
				{"loc_weapon_mark_combatsword_p2_m3"}, {"ru"},
					loc_text("Модель IX")),
			--[+ Traditional Chinese MK IX +]--
			create_template("weapons_marks_combatsword3_2_ext_zh",
				{"loc_weapon_mark_combatsword_p2_m3"}, {"zh-tw"},
					loc_text("{#color(98, 211, 55)}MK 9 型{#reset()}")),

		--[+ Duelling Sword - Дуэльный меч +]--
			--[+ Russian +]	
			-- create_template("weapons_names_combatsword1_3_ext_ru",
				-- {"loc_weapon_family_combatsword_p3_m1"}, {"ru"},
					-- loc_text("Дуэльный меч")),
			--[+ Traditional Chinese 決鬥劍 +]--
			create_template("weapons_names_combatsword1_3_ext_zh",
				{"loc_weapon_family_combatsword_p3_m1"}, {"zh-tw"},
					loc_text("決鬥劍")),
			--[+ Russian +]	
			-- create_template("weapons_names_combatsword2_3_ext_ru",
				-- {"loc_weapon_family_combatsword_p3_m2"}, {"ru"},
					-- loc_text("Дуэльный меч")),
			--[+ Traditional Chinese 決鬥劍 +]--
			create_template("weapons_names_combatsword2_3_ext_zh",
				{"loc_weapon_family_combatsword_p3_m2"}, {"zh-tw"},
					loc_text("決鬥劍")),
			--[+ Russian +]	
			-- create_template("weapons_names_combatsword3_3_ext_ru",
				-- {"loc_weapon_family_combatsword_p3_m3"}, {"ru"},
					-- loc_text("Дуэльный меч")),
			--[+ Traditional Chinese 決鬥劍 +]--
			create_template("weapons_names_combatsword3_3_ext_zh",
				{"loc_weapon_family_combatsword_p3_m3"}, {"zh-tw"},
					loc_text("決鬥劍")),

			--[+ Pattern - Паттерн +]-- руоф Маккабианск.
			--[+ Russian +]	
			create_template("weapons_patterns_combatsword1_3_ext_ru",
				{"loc_weapon_pattern_combatsword_p3_m1"}, {"ru"},
					loc_text("Маккабиан")),
			--[+ Traditional Chinese 卡塔昌 +]--
			create_template("weapons_patterns_combatsword1_3_ext_zh",
				{"loc_weapon_pattern_combatsword_p3_m1"}, {"zh-tw"},
					loc_text("卡塔昌")),
			--[+ Russian +]	
			create_template("weapons_patterns_combatsword2_3_ext_ru",
				{"loc_weapon_pattern_combatsword_p3_m2"}, {"ru"},
					loc_text("Маккабиан")),
			--[+ Traditional Chinese 馬卡比安 +]--
			create_template("weapons_patterns_combatsword2_3_ext_zh",
				{"loc_weapon_pattern_combatsword_p3_m2"}, {"zh-tw"},
					loc_text("馬卡比安")),
			--[+ Russian +]	
			create_template("weapons_patterns_combatsword3_3_ext_ru",
				{"loc_weapon_pattern_combatsword_p3_m3"}, {"ru"},
					loc_text("Маккабиан")),
			--[+ Traditional Chinese 馬卡比安 +]--
			create_template("weapons_patterns_combatsword3_3_ext_zh",
				{"loc_weapon_pattern_combatsword_p3_m3"}, {"zh-tw"},
					loc_text("馬卡比安")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]	
			create_template("weapons_marks_combatsword1_3_ext_ru",
				{"loc_weapon_mark_combatsword_p3_m1"}, {"ru"},
					loc_text("Модель II")),
			--[+ Traditional Chinese MK II +]--
			create_template("weapons_marks_combatsword1_3_ext_zh",
				{"loc_weapon_mark_combatsword_p3_m1"}, {"zh-tw"},
					loc_text("{#color(98, 211, 55)}MK 2 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_combatsword2_3_ext_ru",
				{"loc_weapon_mark_combatsword_p3_m2"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]--
			create_template("weapons_marks_combatsword2_3_ext_zh",
				{"loc_weapon_mark_combatsword_p3_m2"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 4 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_combatsword3_3_ext_ru",
				{"loc_weapon_mark_combatsword_p3_m3"}, {"ru"},
					loc_text("Модель V")),
			--[+ Traditional Chinese MK V +]--
			create_template("weapons_marks_combatsword3_3_ext_zh",
				{"loc_weapon_mark_combatsword_p3_m3"}, {"zh-tw"},
					loc_text("{#color(224, 42, 7)}MK 5 型{#reset()}")),

		--[+ Blaze Force Greatsword - Пылающий психосиловой двуручный меч +]-- руоф Длинный пламенный психосиловой меч
			--[+ Russian +]
			create_template("weapons_names_forcesword_2h1_ext_ru",
				{"loc_weapon_family_forcesword_2h_p1_m1"}, {"ru"},
					loc_text("Пылающий психосиловой двуручный меч")),
			--[+ Traditional Chinese 烈焰力場巨劍 +]--
			-- Not used in zh-tw
			-- create_template("weapons_names_forcesword_2h1_ext_zh",
			-- 	{"loc_weapon_family_forcesword_2h_p1_m1"}, {"zh-tw"},
			-- 		loc_text("烈焰力場巨劍"))),
			--[+ Russian +]
			create_template("weapons_names_forcesword_2h2_ext_ru",
				{"loc_weapon_family_forcesword_2h_p1_m2"}, {"ru"},
					loc_text("Пылающий психосиловой двуручный меч")),
			--[+ Traditional Chinese 烈焰力場巨劍 +]--
			-- Not used in zh-tw
			-- create_template("weapons_names_forcesword_2h2_ext_zh",
			-- 	{"loc_weapon_family_forcesword_2h_p1_m2"}, {"zh-tw"},
			-- 		loc_text("烈焰力場巨劍"))),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_forcesword_2h1_ext_ru",
				-- {"loc_weapon_pattern_forcesword_2h_p1_m1"}, {"ru"},
					-- loc_text("Завет")),
			-- [+ Traditional Chinese 誓約 +]--
			create_template("weapons_patterns_forcesword_2h1_ext_zh",
				{"loc_weapon_pattern_forcesword_2h_p1_m1"}, {"zh-tw"},
					loc_text("誓約")),
			--[+ Russian +]
			-- create_template("weapons_patterns_forcesword_2h2_ext_ru",
				-- {"loc_weapon_pattern_forcesword_2h_p1_m2"}, {"ru"},
					-- loc_text("Завет")),
			--[+ Traditional Chinese 誓約 +]--
			create_template("weapons_patterns_forcesword_2h2_ext_zh",
				{"loc_weapon_pattern_forcesword_2h_p1_m2"}, {"zh-tw"},
					loc_text("誓約")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_forcesword_2h1_ext_ru",
				{"loc_weapon_mark_forcesword_2h_p1_m1"}, {"ru"},
					loc_text("Модель VI")),
			--[+ Traditional Chinese MK VI +]--
			create_template("weapons_marks_forcesword_2h1_ext_zh",
				{"loc_weapon_mark_forcesword_2h_p1_m1"}, {"zh-tw"},
					loc_text("{#color(235, 186, 38)}MK 6 型{#reset()}")),

			--[+ Russian +]
			create_template("weapons_marks_forcesword_2h2_ext_ru",
				{"loc_weapon_mark_forcesword_2h_p1_m2"}, {"ru"},
					loc_text("Модель VIII")),
			--[+ Traditional Chinese MK VIII +]--
			create_template("weapons_marks_forcesword_2h2_ext_zh",
				{"loc_weapon_mark_forcesword_2h_p1_m2"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 8 型{#reset()}")),

		--[+ Blaze Force Sword - Пылающий психосиловой меч +]-- руоф Пламенный психосиловой меч
			--[+ Russian +]	
			create_template("weapons_names_forcesword1_ext_ru",
				{"loc_weapon_family_forcesword_p1_m1"}, {"ru"},
					loc_text("Пылающий психосиловой меч")),
			--[+ Traditional Chinese 烈焰力場劍 +]--
			create_template("weapons_names_forcesword1_ext_zh",
				{"loc_weapon_family_forcesword_p1_m1"}, {"zh-tw"},
					loc_text("烈焰力場劍")),
			--[+ Russian +]
			create_template("weapons_names_forcesword2_ext_ru",
				{"loc_weapon_family_forcesword_p1_m2"}, {"ru"},
					loc_text("Пылающий психосиловой меч")),
			--[+ Traditional Chinese 烈焰力場劍 +]--
			create_template("weapons_names_forcesword2_ext_zh",
				{"loc_weapon_family_forcesword_p1_m2"}, {"zh-tw"},
					loc_text("烈焰力場劍")),
			--[+ Russian +]
			create_template("weapons_names_forcesword3_ext_ru",
				{"loc_weapon_family_forcesword_p1_m3"}, {"ru"},
					loc_text("Пылающий психосиловой меч")),
			--[+ Traditional Chinese 烈焰力場劍 +]--
			create_template("weapons_names_forcesword3_ext_zh",
				{"loc_weapon_family_forcesword_p1_m3"}, {"zh-tw"},
					loc_text("烈焰力場劍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_forcesword1_ext_ru",
				-- {"loc_weapon_pattern_forcesword_p1_m1"}, {"ru"},
					-- loc_text("Обскурус")),
			--[+ Traditional Chinese 朦朧 +]--
			create_template("weapons_patterns_forcesword1_ext_zh",
				{"loc_weapon_pattern_forcesword_p1_m1"}, {"zh-tw"},
					loc_text("朦朧")),
			--[+ Russian +]
			-- create_template("weapons_patterns_forcesword2_ext_ru",
				-- {"loc_weapon_pattern_forcesword_p1_m2"}, {"ru"},
					-- loc_text("Деймос")),
			--[+ Traditional Chinese 戴莫斯 +]--
			create_template("weapons_patterns_forcesword2_ext_zh",
				{"loc_weapon_pattern_forcesword_p1_m2"}, {"zh-tw"},
					loc_text("戴莫斯")),
			--[+ Russian +]
			-- create_template("weapons_patterns_forcesword3_ext_ru",
				-- {"loc_weapon_pattern_forcesword_p1_m3"}, {"ru"},
					-- loc_text("Иллиси")),
			--[+ Traditional Chinese 伊利斯 +]--
			create_template("weapons_patterns_forcesword3_ext_zh",
				{"loc_weapon_pattern_forcesword_p1_m3"}, {"zh-tw"},
					loc_text("伊利斯")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_forcesword1_ext_ru",
				{"loc_weapon_mark_forcesword_p1_m1"}, {"ru"},
					loc_text("Модель II")),
			--[+ Traditional Chinese MK II +]--
			create_template("weapons_marks_forcesword1_ext_zh",
				{"loc_weapon_mark_forcesword_p1_m1"}, {"zh-tw"},
					loc_text("{#color(98, 211, 55)}MK 2 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_forcesword2_ext_ru",
				{"loc_weapon_mark_forcesword_p1_m2"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]--
			create_template("weapons_marks_forcesword2_ext_zh",
				{"loc_weapon_mark_forcesword_p1_m2"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 4 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_forcesword3_ext_ru",
				{"loc_weapon_mark_forcesword_p1_m3"}, {"ru"},
					loc_text("Модель V")),
			--[+ Traditional Chinese MK V +]--
			create_template("weapons_marks_forcesword3_ext_zh",
				{"loc_weapon_mark_forcesword_p1_m3"}, {"zh-tw"},
					loc_text("{#color(224, 42, 7)}MK 5 型{#reset()}")),

		--[+ Shock Maul - Шоковая булава +]--
			--[+ Russian +]
			-- create_template("weapons_names_powermaul1_ext_ru",
				-- {"loc_weapon_family_powermaul_p1_m1"}, {"ru"},
					-- loc_text("Шоковая булава")),
			--[+ Traditional Chinese 電擊錘 +]--
			create_template("weapons_names_powermaul1_ext_zh",
				{"loc_weapon_family_powermaul_p1_m1"}, {"zh-tw"},
					loc_text("電擊錘")),
			--[+ Russian +]
			-- create_template("weapons_names_powermaul2_ext_ru",
				-- {"loc_weapon_family_powermaul_p1_m2"}, {"ru"},
					-- loc_text("Шоковая булава")),
					--[+ Pattern - Паттерн +]--
			--[+ Traditional Chinese 電擊錘 +]--
			create_template("weapons_names_powermaul2_ext_zh",
				{"loc_weapon_family_powermaul_p1_m2"}, {"zh-tw"},
					loc_text("電擊錘")),
					
			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_powermaul1_ext_ru",
				-- {"loc_weapon_pattern_powermaul_p1_m1"}, {"ru"},
					-- loc_text("Агни")),
			--[+ Traditional Chinese 阿格尼 +]--
			create_template("weapons_patterns_powermaul1_ext_zh",
				{"loc_weapon_pattern_powermaul_p1_m1"}, {"zh-tw"},
					loc_text("阿格尼")),
			-- create_template("weapons_patterns_powermaul2_ext_ru",
				-- {"loc_weapon_pattern_powermaul_p1_m2"}, {"ru"},
					-- loc_text("Муниторум")),
			--[+ Traditional Chinese 軍務部 +]--
			create_template("weapons_patterns_powermaul2_ext_zh",
				{"loc_weapon_pattern_powermaul_p1_m2"}, {"zh-tw"},
					loc_text("軍務部")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_powermaul1_ext_ru",
				{"loc_weapon_mark_powermaul_p1_m1"}, {"ru"},
					loc_text("Модель Ia")),
			--[+ Traditional Chinese MK Ia +]--
			create_template("weapons_marks_powermaul1_ext_zh",
				{"loc_weapon_mark_powermaul_p1_m1"}, {"zh-tw"},
					loc_text("{#color(212, 115, 211)}MK 1A 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_powermaul2_ext_ru",
				{"loc_weapon_mark_powermaul_p1_m2"}, {"ru"},
					loc_text("Модель III")),
			--[+ Traditional Chinese MK III +]--
			create_template("weapons_marks_powermaul2_ext_zh",
				{"loc_weapon_mark_powermaul_p1_m2"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 3 型{#reset()}")),

		--[+ +RANGED - ДАЛЬНИЙ БОЙ+ +]--

		--[+ Infantry Autogun - Пехотный автомат +]--
			--[+ Russian +]
			-- create_template("weapons_names_autogun1_ext_ru",
				-- {"loc_weapon_family_autogun_p1_m1"}, {"ru"},
					-- loc_text("Пехотный автомат")),
			--[+ Traditional Chinese 步兵自動步槍 +]--
			create_template("weapons_names_autogun1_ext_zh",
				{"loc_weapon_family_autogun_p1_m1"}, {"zh-tw"},
					loc_text("步兵自動步槍")),
			--[+ Russian +]
			-- create_template("weapons_names_autogun2_ext_ru",
				-- {"loc_weapon_family_autogun_p1_m2"}, {"ru"},
					-- loc_text("Пехотный автомат")),
			--[+ Traditional Chinese 步兵自動步槍 +]--
			create_template("weapons_names_autogun2_ext_zh",
				{"loc_weapon_family_autogun_p1_m2"}, {"zh-tw"},
					loc_text("步兵自動步槍")),
			--[+ Russian +]
			-- create_template("weapons_names_autogun3_ext_ru",
				-- {"loc_weapon_family_autogun_p1_m3"}, {"ru"},
					-- loc_text("Пехотный автомат")),
			--[+ Traditional Chinese 步兵自動步槍 +]--
			create_template("weapons_names_autogun3_ext_zh",
				{"loc_weapon_family_autogun_p1_m3"}, {"zh-tw"},
					loc_text("步兵自動步槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_autogun1_ext_ru",
				-- {"loc_weapon_pattern_autogun_p1_m1"}, {"ru"},
					-- loc_text("Агрипинаа")),
			--[+ Traditional Chinese 阿格里皮娜 +]--
			create_template("weapons_patterns_autogun1_ext_zh",
				{"loc_weapon_pattern_autogun_p1_m1"}, {"zh-tw"},
					loc_text("阿格里皮娜")),
			--[+ Russian +]
			-- create_template("weapons_patterns_autogun2_ext_ru",
				-- {"loc_weapon_pattern_autogun_p1_m2"}, {"ru"},
					-- loc_text("Вракс")),
			--[+ Traditional Chinese 瓦克斯 +]--
			create_template("weapons_patterns_autogun2_ext_zh",
				{"loc_weapon_pattern_autogun_p1_m2"}, {"zh-tw"},
					loc_text("弗拉克斯")),
			--[+ Russian +]
			-- create_template("weapons_patterns_autogun3_ext_ru",
				-- {"loc_weapon_pattern_autogun_p1_m3"}, {"ru"},
					-- loc_text("Колумнус")),
			--[+ Traditional Chinese 科倫努斯 +]--
			create_template("weapons_patterns_autogun3_ext_zh",
				{"loc_weapon_pattern_autogun_p1_m3"}, {"zh-tw"},
					loc_text("哥倫努")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_autogun1_ext_ru",
				{"loc_weapon_mark_autogun_p1_m1"}, {"ru"},
					loc_text("Модель I")),
			--[+ Traditional Chinese MK I +]--
			create_template("weapons_marks_autogun1_ext_zh",
				{"loc_weapon_mark_autogun_p1_m1"}, {"zh-tw"},
					loc_text("{#color(197, 191, 38)}MK 1 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_autogun2_ext_ru",
				{"loc_weapon_mark_autogun_p1_m2"}, {"ru"},
					loc_text("Модель V")),
			--[+ Traditional Chinese MK V +]--
			create_template("weapons_marks_autogun2_ext_zh",
				{"loc_weapon_mark_autogun_p1_m2"}, {"zh-tw"},
					loc_text("{#color(224, 42, 7)}MK 5 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_autogun3_ext_ru",
				{"loc_weapon_mark_autogun_p1_m3"}, {"ru"},
					loc_text("Модель VIII")),
			--[+ Traditional Chinese MK VIII +]--
			create_template("weapons_marks_autogun3_ext_zh",
				{"loc_weapon_mark_autogun_p1_m3"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 8 型{#reset()}")),

		--[+ Braced Autogun - Усиленный автомат +]--
			--[+ Russian +]
			-- create_template("weapons_names_autogun1_2_ext_ru",
				-- {"loc_weapon_family_autogun_p2_m1"}, {"ru"},
					-- loc_text("Усиленный автомат")),
			--[+ Traditional Chinese 槍托自動槍 +]--
			create_template("weapons_names_autogun1_2_ext_zh",
				{"loc_weapon_family_autogun_p2_m1"}, {"zh-tw"},
					loc_text("槍托自動槍")),
			--[+ Russian +]
			-- create_template("weapons_names_autogun2_2_ext_ru",
				-- {"loc_weapon_family_autogun_p2_m2"}, {"ru"},
					-- loc_text("Усиленный автомат")),
			--[+ Traditional Chinese 槍托自動槍 +]--
			create_template("weapons_names_autogun2_2_ext_zh",
				{"loc_weapon_family_autogun_p2_m2"}, {"zh-tw"},
					loc_text("槍托自動槍")),
			--[+ Russian +]
			-- create_template("weapons_names_autogun3_2_ext_ru",
				-- {"loc_weapon_family_autogun_p2_m3"}, {"ru"},
					-- loc_text("Усиленный автомат")),
			--[+ Traditional Chinese 槍托自動槍 +]--
			create_template("weapons_names_autogun3_2_ext_zh",
				{"loc_weapon_family_autogun_p2_m3"}, {"zh-tw"},
					loc_text("槍托自動槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_autogun1_2_ext_ru",
				-- {"loc_weapon_pattern_autogun_p2_m1"}, {"ru"},
					-- loc_text("Вракс")),
			--[+ Traditional Chinese 弗拉克斯 +]--
			create_template("weapons_patterns_autogun1_2_ext_zh",
				{"loc_weapon_pattern_autogun_p2_m1"}, {"zh-tw"},
					loc_text("弗拉克斯")),
			--[+ Russian +]
			-- create_template("weapons_patterns_autogun2_2_ext_ru",
				-- {"loc_weapon_pattern_autogun_p2_m2"}, {"ru"},
					-- loc_text("Грайя")),
			--[+ Traditional Chinese 格拉亞 +]--
			create_template("weapons_patterns_autogun2_2_ext_zh",
				{"loc_weapon_pattern_autogun_p2_m2"}, {"zh-tw"},
					loc_text("格拉亞")),
			--[+ Russian +]
			-- create_template("weapons_patterns_autogun3_2_ext_ru",
				-- {"loc_weapon_pattern_autogun_p2_m3"}, {"ru"},
					-- loc_text("Агрипинаа")),
			--[+ Traditional Chinese 阿格里皮娜 +]--
			create_template("weapons_patterns_autogun3_2_ext_zh",
				{"loc_weapon_pattern_autogun_p2_m3"}, {"zh-tw"},
					loc_text("阿格里皮娜")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_autogun1_2_ext_ru",
				{"loc_weapon_mark_autogun_p2_m1"}, {"ru"},
					loc_text("Модель II")),
			--[+ Traditional Chinese MK II +]--
			create_template("weapons_marks_autogun1_2_ext_zh",
				{"loc_weapon_mark_autogun_p2_m1"}, {"zh-tw"},
					loc_text("{#color(98, 211, 55)}MK 2 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_autogun2_2_ext_ru",
				{"loc_weapon_mark_autogun_p2_m2"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]--
			create_template("weapons_marks_autogun2_2_ext_zh",
				{"loc_weapon_mark_autogun_p2_m2"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 4 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_autogun3_2_ext_ru",
				{"loc_weapon_mark_autogun_p2_m3"}, {"ru"},
					loc_text("Модель VIII")),
			--[+ Traditional Chinese MK VIII +]--
			create_template("weapons_marks_autogun3_2_ext_zh",
				{"loc_weapon_mark_autogun_p2_m3"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 8 型{#reset()}")),

		--[+ Vigilant Autogun - Вигилянтский автомат +]-- руоф Автомат «Бдительность»
			--[+ Russian +]
			create_template("weapons_names_autogun1_ext_ru",
				{"loc_weapon_family_autogun_p3_m1"}, {"ru"},
					loc_text("Вигилянтский автомат")),
			--[+ Traditional Chinese 機動自動槍 +]--
			create_template("weapons_names_autogun1_ext_zh",
				{"loc_weapon_family_autogun_p3_m1"}, {"zh-tw"},
					loc_text("機動自動槍")),
			--[+ Russian +]
			create_template("weapons_names_autogun2_ext_ru",
				{"loc_weapon_family_autogun_p3_m2"}, {"ru"},
					loc_text("Вигилянтский автомат")),
			--[+ Traditional Chinese 機動自動槍 +]--
			create_template("weapons_names_autogun2_ext_zh",
				{"loc_weapon_family_autogun_p3_m2"}, {"zh-tw"},
					loc_text("機動自動槍")),
			--[+ Russian +]
			create_template("weapons_names_autogun3_ext_ru",
				{"loc_weapon_family_autogun_p3_m3"}, {"ru"},
					loc_text("Вигилянтский автомат")),
			--[+ Traditional Chinese 機動自動槍 +]--
			create_template("weapons_names_autogun3_ext_zh",
				{"loc_weapon_family_autogun_p3_m3"}, {"zh-tw"},
					loc_text("機動自動槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_autogun1_ext_ru",
				-- {"loc_weapon_pattern_autogun_p3_m1"}, {"ru"},
					-- loc_text("Колумнус")),
			--[+ Traditional Chinese 哥倫努 +]--
			create_template("weapons_patterns_autogun1_ext_zh",
				{"loc_weapon_pattern_autogun_p3_m1"}, {"zh-tw"},
					loc_text("哥倫努")),
			--[+ Russian +]
			-- create_template("weapons_patterns_autogun2_ext_ru",
				-- {"loc_weapon_pattern_autogun_p3_m2"}, {"ru"},
					-- loc_text("Грайя")),
			--[+ Traditional Chinese 格拉亞 +]--
			create_template("weapons_patterns_autogun2_ext_zh",
				{"loc_weapon_pattern_autogun_p3_m2"}, {"zh-tw"},
					loc_text("格拉亞")),
			--[+ Russian +]
			-- create_template("weapons_patterns_autogun3_ext_ru",
				-- {"loc_weapon_pattern_autogun_p3_m3"}, {"ru"},
					-- loc_text("Агрипинаа")),
			--[+ Traditional Chinese 阿格里皮娜 +]--
			create_template("weapons_patterns_autogun3_ext_zh",
				{"loc_weapon_pattern_autogun_p3_m3"}, {"zh-tw"},
					loc_text("阿格里皮娜")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_autogun1_ext_ru",
				{"loc_weapon_mark_autogun_p3_m1"}, {"ru"},
					loc_text("Модель III")),
			--[+ Traditional Chinese MK III +]--
			create_template("weapons_marks_autogun1_ext_zh",
				{"loc_weapon_mark_autogun_p3_m1"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 3 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_autogun2_ext_ru",
				{"loc_weapon_mark_autogun_p3_m2"}, {"ru"},
					loc_text("Модель VII")),
			--[+ Traditional Chinese MK VII +]--
			create_template("weapons_marks_autogun2_ext_zh",
				{"loc_weapon_mark_autogun_p3_m2"}, {"zh-tw"},
					loc_text("{#color(233, 165, 161)}MK 7 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_autogun3_ext_ru",
				{"loc_weapon_mark_autogun_p3_m3"}, {"ru"},
					loc_text("Модель IX")),
			--[+ Traditional Chinese MK IX +]--
			create_template("weapons_marks_autogun3_ext_zh",
				{"loc_weapon_mark_autogun_p3_m3"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 9 型{#reset()}")),

		--[+ Shredder Autopistol - Автопистолет-крошитель +]--
			--[+ Russian +]
			-- create_template("weapons_names_autopistol1_ext_ru",
				-- {"loc_weapon_family_autopistol_p1_m1"}, {"ru"},
					-- loc_text("Автопистолет-крошитель")),
			--[+ Traditional Chinese 撕裂者自動手槍 +]--
			create_template("weapons_names_autopistol1_ext_zh",
				{"loc_weapon_family_autopistol_p1_m1"}, {"zh-tw"},
					loc_text("撕裂者自動手槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_autopistol1_ext_ru",
			-- {"loc_weapon_pattern_autopistol_p1_m1"}, {"ru"},
				-- loc_text("Иус")),
			--[+ Traditional Chinese 尤斯 +]--
			create_template("weapons_patterns_autopistol1_ext_zh",
				{"loc_weapon_pattern_autopistol_p1_m1"}, {"zh-tw"},
					loc_text("尤斯")),
			
			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_autopistol1_ext_ru",
				{"loc_weapon_mark_autopistol_p1_m1"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]--
			create_template("weapons_marks_autopistol1_ext_zh",
				{"loc_weapon_mark_autopistol_p1_m1"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 4 型{#reset()}")),

		--[+ Bolt Pistol - Болт-пистолет +]--
			--[+ Russian +]
			-- create_template("weapons_names_boltpistol1_ext_ru",
				-- {"loc_weapon_family_boltpistol_p1_m1"}, {"ru"},
					-- loc_text("Болт-пистолет")),
			--[+ Traditional Chinese 爆彈手槍 +]--
			create_template("weapons_names_boltpistol1_ext_zh",
				{"loc_weapon_family_boltpistol_p1_m1"}, {"zh-tw"},
					loc_text("爆彈手槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_boltpistol1_ext_ru",
			-- {"loc_weapon_pattern_boltpistol_p1_m1"}, {"ru"},
				-- loc_text("Годвин-Бранкс")),
			--[+ Traditional Chinese 戈德溫-布蘭克斯 +]--
			create_template("weapons_patterns_boltpistol1_ext_zh",
				{"loc_weapon_pattern_boltpistol_p1_m1"}, {"zh-tw"},
					loc_text("戈德溫-布蘭克斯")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_boltpistol1_ext_ru",
				{"loc_weapon_mark_boltpistol_p1_m1"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]--
			create_template("weapons_marks_boltpistol1_ext_zh",
				{"loc_weapon_mark_boltpistol_p1_m1"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 4 型{#reset()}")),

		--[+ Voidblast Force Staff - Травматический психосиловой посох +]-- (Trauma) руоф Психосиловой посох взрывной пустоты
			--[+ Russian +]
			create_template("weapons_names_forcestaff1_ext_ru",
				{"loc_weapon_family_forcestaff_p1_m1"}, {"ru"},
					loc_text("Психосиловой посох Травмы")),
			--[+ Traditional Chinese 虛空爆破力場法杖 +]--
			create_template("weapons_names_forcestaff1_ext_zh",
				{"loc_weapon_family_forcestaff_p1_m1"}, {"zh-tw"},
					loc_text("虛空爆破力場法杖")),

			--[+ Pattern - Паттерн +]--
			-- create_template("weapons_patterns_forcestaff1_ext_ru",
				-- {"loc_weapon_pattern_forcestaff_p1_m1"}, {"ru"},
					-- loc_text("Эквинокс")),
			--[+ Traditional Chinese 陰陽 +]--
			create_template("weapons_patterns_forcestaff1_ext_zh",
				{"loc_weapon_pattern_forcestaff_p1_m1"}, {"zh-tw"},
					loc_text("陰陽")),

			--[+ MK - Модель +]-- --Мод.
			create_template("weapons_marks_forcestaff1_ext_ru",
				{"loc_weapon_mark_forcestaff_p1_m1"}, {"ru"},
					loc_text("Модель III")),
			--[+ Traditional Chinese MK III +]--
			create_template("weapons_marks_forcestaff1_ext_zh",
				{"loc_weapon_mark_forcestaff_p1_m1"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 3 型{#reset()}")),

		--[+ Inferno Force Staff - Психосиловой посох Инферно +]-- руоф Огневой психосиловой посох
			--[+ Russian +]
			create_template("weapons_names_forcestaff1_2_ext_ru",
				{"loc_weapon_family_forcestaff_p2_m1"}, {"ru"},
					loc_text("Психосиловой посох Инферно")),
			--[+ Traditional Chinese 烈焰力場法杖 +]--
			create_template("weapons_names_forcestaff1_2_ext_zh",
				{"loc_weapon_family_forcestaff_p2_m1"}, {"zh-tw"},
					loc_text("烈焰力場法杖")),

			--[+ Pattern - Паттерн +]-- руоф Рифтхевен
			--[+ Russian +]
			create_template("weapons_patterns_forcestaff1_2_ext_ru",
				{"loc_weapon_pattern_forcestaff_p2_m1"}, {"ru"},
					loc_text("Рифтхейвен")),
			--[+ Traditional Chinese 裂隙避難所 +]--
			create_template("weapons_patterns_forcestaff1_2_ext_zh",
				{"loc_weapon_pattern_forcestaff_p2_m1"}, {"zh-tw"},
					loc_text("裂隙避難所")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_forcestaff1_2_ext_ru",
				{"loc_weapon_mark_forcestaff_p2_m1"}, {"ru"},
					loc_text("Модель II")),
			--[+ Traditional Chinese MK II +]--
			create_template("weapons_marks_forcestaff1_2_ext_zh",
				{"loc_weapon_mark_forcestaff_p2_m1"}, {"zh-tw"},
					loc_text("{#color(98, 211, 55)}MK 2 型{#reset()}")),

		--[+ Electrokinetic Force Staff - Психосиловой посох Электрокинетик +]-- руоф Электрокинетический психосиловой посох
			--[+ Russian +]
			create_template("weapons_names_forcestaff1_3_ext_ru",
				{"loc_weapon_family_forcestaff_p3_m1"}, {"ru"},
					loc_text("Психосиловой посох Электрокинетик")),
			--[+ Traditional Chinese 電流力場法杖 +]--
			create_template("weapons_names_forcestaff1_3_ext_zh",
				{"loc_weapon_family_forcestaff_p3_m1"}, {"zh-tw"},
					loc_text("電流力場法杖")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_forcestaff1_3_ext_ru",
				-- {"loc_weapon_pattern_forcestaff_p3_m1"}, {"ru"},
					-- loc_text("Номанус")),
			--[+ Traditional Chinese 諾瑪努斯 +]--
			create_template("weapons_patterns_forcestaff1_3_ext_zh",
				{"loc_weapon_pattern_forcestaff_p3_m1"}, {"zh-tw"},
					loc_text("諾瑪努斯")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_forcestaff1_3_ext_ru",
				{"loc_weapon_mark_forcestaff_p3_m1"}, {"ru"},
					loc_text("Модель VI")),
			--[+ Traditional Chinese MK VI +]--
			create_template("weapons_marks_forcestaff1_3_ext_zh",
				{"loc_weapon_mark_forcestaff_p3_m1"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 6 型{#reset()}")),

		--[+ Voidstrike Force Staff - Психосиловой посох Пустоты +]-- руоф Психосиловой пустотный посох
			--[+ Russian +]
			create_template("weapons_names_forcestaff1_4_ext_ru",
				{"loc_weapon_family_forcestaff_p4_m1"}, {"ru"},
					loc_text("Психосиловой посох Пустоты")),
			--[+ Traditional Chinese 虛空打擊力場法杖 +]--
			create_template("weapons_names_forcestaff1_4_ext_zh",
				{"loc_weapon_family_forcestaff_p4_m1"}, {"zh-tw"},
					loc_text("虛空打擊力場法杖")),
					
			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_forcestaff1_4_ext_ru",
				-- {"loc_weapon_pattern_forcestaff_p4_m1"}, {"ru"},
					-- loc_text("Эквинокс")),
			--[+ Traditional Chinese 陰陽 +]--
			create_template("weapons_patterns_forcestaff1_4_ext_zh",
				{"loc_weapon_pattern_forcestaff_p4_m1"}, {"zh-tw"},
					loc_text("陰陽")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_forcestaff1_4_ext_ru",
				{"loc_weapon_mark_forcestaff_p4_m1"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]--
			create_template("weapons_marks_forcestaff1_4_ext_zh",
				{"loc_weapon_mark_forcestaff_p4_m1"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 4 型{#reset()}")),

		--[+ Infantry Lasgun - Лазвинтовка пехоты +]-- руоф Пехотный лазган
			--[+ Russian +]
			create_template("weapons_names_lasgun1_ext_ru",
				{"loc_weapon_family_lasgun_p1_m1"}, {"ru"},
					loc_text("Лазвинтовка пехоты")),
			--[+ Traditional Chinese 步兵雷射槍 +]--
			create_template("weapons_names_lasgun1_ext_zh",
				{"loc_weapon_family_lasgun_p1_m1"}, {"zh-tw"},
					loc_text("步兵雷射槍")),
			--[+ Russian +]
			create_template("weapons_names_lasgun2_ext_ru",
				{"loc_weapon_family_lasgun_p1_m2"}, {"ru"},
					loc_text("Лазвинтовка пехоты")),
			--[+ Traditional Chinese 步兵雷射槍 +]--
			create_template("weapons_names_lasgun2_ext_zh",
				{"loc_weapon_family_lasgun_p1_m2"}, {"zh-tw"},
					loc_text("步兵雷射槍")),
			--[+ Russian +]
			create_template("weapons_names_lasgun3_ext_ru",
				{"loc_weapon_family_lasgun_p1_m3"}, {"ru"},
					loc_text("Лазвинтовка пехоты")),
			--[+ Traditional Chinese 步兵雷射槍 +]--
			create_template("weapons_names_lasgun3_ext_zh",
				{"loc_weapon_family_lasgun_p1_m3"}, {"zh-tw"},
					loc_text("步兵雷射槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_lasgun1_ext_ru",
				-- {"loc_weapon_pattern_lasgun_p1_m1"}, {"ru"},
					-- loc_text("Кантраэль")),
			--[+ Traditional Chinese 卡特雷爾 +]--
			create_template("weapons_patterns_lasgun1_ext_zh",
				{"loc_weapon_pattern_lasgun_p1_m1"}, {"zh-tw"},
					loc_text("卡特雷爾")),
			--[+ Russian +]
			-- create_template("weapons_patterns_lasgun2_ext_ru",
				-- {"loc_weapon_pattern_lasgun_p1_m2"}, {"ru"},
					-- loc_text("Кантраэль")),
			--[+ Traditional Chinese 卡特雷爾 +]--
			create_template("weapons_patterns_lasgun2_ext_zh",
				{"loc_weapon_pattern_lasgun_p1_m2"}, {"zh-tw"},
					loc_text("卡特雷爾")),
			--[+ Russian +]
			-- create_template("weapons_patterns_lasgun3_ext_ru",
				-- {"loc_weapon_pattern_lasgun_p1_m3"}, {"ru"},
					-- loc_text("Кантраэль")),
			--[+ Traditional Chinese 卡特雷爾 +]--
			create_template("weapons_patterns_lasgun3_ext_zh",
				{"loc_weapon_pattern_lasgun_p1_m3"}, {"zh-tw"},
					loc_text("卡特雷爾")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_lasgun1_ext_ru",
				{"loc_weapon_mark_lasgun_p1_m1"}, {"ru"},
					loc_text("Модель VII")),
			--[+ Traditional Chinese MK VII +]--
			create_template("weapons_marks_lasgun1_ext_zh",
				{"loc_weapon_mark_lasgun_p1_m1"}, {"zh-tw"},
					loc_text("{#color(233, 165, 161)}MK 7 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_lasgun2_ext_ru",
				{"loc_weapon_mark_lasgun_p1_m2"}, {"ru"},
					loc_text("Модель IIb")),
			--[+ Traditional Chinese MK IIb +]--
			create_template("weapons_marks_lasgun2_ext_zh",
				{"loc_weapon_mark_lasgun_p1_m2"}, {"zh-tw"},
					loc_text("{#color(90, 233, 70)}MK 2B 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_lasgun3_ext_ru",
				{"loc_weapon_mark_lasgun_p1_m3"}, {"ru"},
					loc_text("Модель IX")),
			--[+ Traditional Chinese MK IX +]--
			create_template("weapons_marks_lasgun3_ext_zh",
				{"loc_weapon_mark_lasgun_p1_m3"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 9 型{#reset()}")),

		--[+ Recon Lasgun - Лазвинтовка разведки +]-- руоф Разведывательный лазган
			--[+ Russian +]
			create_template("weapons_names_lasgun1_3_ext_ru",
				{"loc_weapon_family_lasgun_p3_m1"}, {"ru"},
					loc_text("Лазвинтовка разведки")),
			--[+ Traditional Chinese 偵察雷射槍 +]--
			create_template("weapons_names_lasgun1_3_ext_zh",
				{"loc_weapon_family_lasgun_p3_m1"}, {"zh-tw"},
					loc_text("偵察雷射槍")),
			--[+ Russian +]
			create_template("weapons_names_lasgun2_3_ext_ru",
				{"loc_weapon_family_lasgun_p3_m2"}, {"ru"},
					loc_text("Лазвинтовка разведки")),
			--[+ Traditional Chinese 偵察雷射槍 +]--
			create_template("weapons_names_lasgun2_3_ext_zh",
				{"loc_weapon_family_lasgun_p3_m2"}, {"zh-tw"},
					loc_text("偵察雷射槍")),
			--[+ Russian +]
			create_template("weapons_names_lasgun3_3_ext_ru",
				{"loc_weapon_family_lasgun_p3_m3"}, {"ru"},
					loc_text("Лазвинтовка разведки")),
			--[+ Traditional Chinese 偵察雷射槍 +]--
			create_template("weapons_names_lasgun3_3_ext_zh",
				{"loc_weapon_family_lasgun_p3_m3"}, {"zh-tw"},
					loc_text("偵察雷射槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_lasgun1_3_ext_ru",
				-- {"loc_weapon_pattern_lasgun_p3_m1"}, {"ru"},
					-- loc_text("Аккатран")),
			--[+ Traditional Chinese 奧克塔蘭 +]--
			create_template("weapons_patterns_lasgun1_3_ext_zh",
				{"loc_weapon_pattern_lasgun_p3_m1"}, {"zh-tw"},
					loc_text("奧克塔蘭")),
			--[+ Russian +]
			-- create_template("weapons_patterns_lasgun2_3_ext_ru",
				-- {"loc_weapon_pattern_lasgun_p3_m2"}, {"ru"},
					-- loc_text("Аккатран")),
			--[+ Traditional Chinese 奧克塔蘭 +]--
			create_template("weapons_patterns_lasgun2_3_ext_zh",
				{"loc_weapon_pattern_lasgun_p3_m2"}, {"zh-tw"},
					loc_text("奧克塔蘭")),
			--[+ Russian +]
			-- create_template("weapons_patterns_lasgun3_3_ext_ru",
				-- {"loc_weapon_pattern_lasgun_p3_m3"}, {"ru"},
					-- loc_text("Аккатран")),
			--[+ Traditional Chinese 奧克塔蘭 +]--
			create_template("weapons_patterns_lasgun3_3_ext_zh",
				{"loc_weapon_pattern_lasgun_p3_m3"}, {"zh-tw"},
					loc_text("奧克塔蘭")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_lasgun1_3_ext_ru",
				{"loc_weapon_mark_lasgun_p3_m1"}, {"ru"},
					loc_text("Модель VIc")),
			--[+ Traditional Chinese MK VIc +]--
			create_template("weapons_marks_lasgun1_3_ext_zh",
				{"loc_weapon_mark_lasgun_p3_m1"}, {"zh-tw"},
					loc_text("{#color(175, 225, 125)}MK 6C 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_lasgun2_3_ext_ru",
				{"loc_weapon_mark_lasgun_p3_m2"}, {"ru"},
					loc_text("Модель XII")),
			--[+ Traditional Chinese MK XII +]--
			create_template("weapons_marks_lasgun2_3_ext_zh",
				{"loc_weapon_mark_lasgun_p3_m2"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 12 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_lasgun3_3_ext_ru",
				{"loc_weapon_mark_lasgun_p3_m3"}, {"ru"},
					loc_text("Модель XIV")),
			--[+ Traditional Chinese MK XIV +]--
			create_template("weapons_marks_lasgun3_3_ext_zh",
				{"loc_weapon_mark_lasgun_p3_m3"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK 14 型{#reset()}")),

		--[+ Heavy Laspistol - Тяжёлый лазпистолет +]-- руоф Тяжелый лазпистолет
			--[+ Russian +]
			create_template("weapons_names_laspistol1_ext_ru",
				{"loc_weapon_family_laspistol_p1_m1"}, {"ru"},
					loc_text("Тяжёлый лазпистолет")),
			--[+ Traditional Chinese 重型雷射手槍 +]--
			create_template("weapons_names_laspistol1_ext_zh",
				{"loc_weapon_family_laspistol_p1_m1"}, {"zh-tw"},
					loc_text("重型雷射手槍")),
			--[+ Russian +]
			create_template("weapons_names_laspistol3_ext_ru",
				{"loc_weapon_family_laspistol_p1_m3"}, {"ru"},
					loc_text("Тяжёлый лазпистолет")),
			--[+ Traditional Chinese 重型雷射手槍 +]--
			create_template("weapons_names_laspistol3_ext_zh",
				{"loc_weapon_family_laspistol_p1_m3"}, {"zh-tw"},
					loc_text("重型雷射手槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			create_template("weapons_patterns_laspistol1_ext_ru",
				{"loc_weapon_pattern_laspistol_p1_m1"}, {"ru"},
					loc_text("Аккатран РП")), -- Аккатран MG
			--[+ Traditional Chinese 奧克塔蘭MG +]--
			create_template("weapons_patterns_laspistol1_ext_zh",
				{"loc_weapon_pattern_laspistol_p1_m1"}, {"zh-tw"},
					loc_text("奧克塔蘭MG")),
			--[+ Russian +]
			-- create_template("weapons_patterns_laspistol3_ext_ru",
				-- {"loc_weapon_pattern_laspistol_p1_m3"}, {"ru"},
					-- loc_text("Кантраэль")),
			--[+ Traditional Chinese 卡特雷爾 +]--
			create_template("weapons_patterns_laspistol3_ext_zh",
				{"loc_weapon_pattern_laspistol_p1_m3"}, {"zh-tw"},
					loc_text("卡特雷爾")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_laspistol1_ext_ru",
				{"loc_weapon_mark_laspistol_p1_m1"}, {"ru"},
					loc_text("Модель II")),
			--[+ Traditional Chinese MK II +]--
			create_template("weapons_marks_laspistol1_ext_zh",
				{"loc_weapon_mark_laspistol_p1_m1"}, {"zh-tw"},
					loc_text("{#color(98, 211, 55)}MK 2 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_laspistol3_ext_ru",
				{"loc_weapon_mark_laspistol_p1_m3"}, {"ru"},
					loc_text("Модель X")),
			--[+ Traditional Chinese MK X +]--
			create_template("weapons_marks_laspistol3_ext_zh",
				{"loc_weapon_mark_laspistol_p1_m3"}, {"zh-tw"},
					loc_text("{#color(175, 100, 150)}MK 10 型{#reset()}")),

		--[+ Combat Shotgun - Боевой дробовик +]--
			--[+ Russian +]
			-- create_template("weapons_names_shotgun1_ext_ru",
				-- {"loc_weapon_family_shotgun_p1_m1"}, {"ru"},
					-- loc_text("Боевой дробовик")),
			--[+ Traditional Chinese 戰鬥霰彈槍 +]--
			create_template("weapons_names_shotgun1_ext_zh",
				{"loc_weapon_family_shotgun_p1_m1"}, {"zh-tw"},
					loc_text("戰鬥霰彈槍")),
			--[+ Russian +]
			-- create_template("weapons_names_shotgun2_ext_ru",
				-- {"loc_weapon_family_shotgun_p1_m2"}, {"ru"},
					-- loc_text("Боевой дробовик")),
			--[+ Traditional Chinese 戰鬥霰彈槍 +]--
			create_template("weapons_names_shotgun2_ext_zh",
				{"loc_weapon_family_shotgun_p1_m2"}, {"zh-tw"},
					loc_text("戰鬥霰彈槍")),
			--[+ Russian +]
			-- create_template("weapons_names_shotgun3_ext_ru",
				-- {"loc_weapon_family_shotgun_p1_m3"}, {"ru"},
					-- loc_text("Боевой дробовик")),
			--[+ Traditional Chinese 戰鬥霰彈槍 +]--
			create_template("weapons_names_shotgun3_ext_zh",
				{"loc_weapon_family_shotgun_p1_m3"}, {"zh-tw"},
					loc_text("戰鬥霰彈槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_shotgun1_ext_ru",
				-- {"loc_weapon_pattern_shotgun_p1_m1"}, {"ru"},
					-- loc_text("Зарона")),
			--[+ Traditional Chinese 扎羅娜 +]--
			create_template("weapons_patterns_shotgun1_ext_zh",
				{"loc_weapon_pattern_shotgun_p1_m1"}, {"zh-tw"},
					loc_text("扎羅娜")),
			--[+ Russian +]
			-- create_template("weapons_patterns_shotgun2_ext_ru",
				-- {"loc_weapon_pattern_shotgun_p1_m2"}, {"ru"},
					-- loc_text("Агрипинаа")),
			--[+ Traditional Chinese 阿格里皮娜 +]--
			create_template("weapons_patterns_shotgun2_ext_zh",
				{"loc_weapon_pattern_shotgun_p1_m2"}, {"zh-tw"},
					loc_text("阿格里皮娜")),
			--[+ Russian +]
			-- create_template("weapons_patterns_shotgun3_ext_ru",
				-- {"loc_weapon_pattern_shotgun_p1_m3"}, {"ru"},
					-- loc_text("Аккатран")),
			--[+ Traditional Chinese 奧克塔蘭 +]--
			create_template("weapons_patterns_shotgun3_ext_zh",
				{"loc_weapon_pattern_shotgun_p1_m3"}, {"zh-tw"},
					loc_text("奧克塔蘭")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_shotgun1_ext_ru",
				{"loc_weapon_mark_shotgun_p1_m1"}, {"ru"},
					loc_text("Модель VI")),
			--[+ Traditional Chinese MK VI +]--
			create_template("weapons_marks_shotgun1_ext_zh",
				{"loc_weapon_mark_shotgun_p1_m1"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 6 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_shotgun2_ext_ru",
				{"loc_weapon_mark_shotgun_p1_m2"}, {"ru"},
					loc_text("Модель VII")),
			--[+ Traditional Chinese MK VII +]--
			create_template("weapons_marks_shotgun2_ext_zh",
				{"loc_weapon_mark_shotgun_p1_m2"}, {"zh-tw"},
					loc_text("{#color(233, 165, 161)}MK 7 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_shotgun3_ext_ru",
				{"loc_weapon_mark_shotgun_p1_m3"}, {"ru"},
					loc_text("Модель IX")),
			--[+ Traditional Chinese MK IX +]--
			create_template("weapons_marks_shotgun3_ext_zh",
				{"loc_weapon_mark_shotgun_p1_m3"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 9 型{#reset()}")),

		--[+ Double-Barrelled Shotgun - Двухствольный дробовик +]--
			--[+ Russian +]
			-- create_template("weapons_names_shotgun1_2_ext_ru",
				-- {"loc_weapon_family_shotgun_p2_m1"}, {"ru"},
					-- loc_text("Двухствольный дробовик")),
			--[+ Traditional Chinese 雙管霰彈槍 +]--
			create_template("weapons_names_shotgun1_2_ext_zh",
				{"loc_weapon_family_shotgun_p2_m1"}, {"zh-tw"},
					loc_text("雙管霰彈槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_shotgun1_2_ext_ru",
			-- {"loc_weapon_pattern_shotgun_p2_m1"}, {"ru"},
				-- loc_text("Круцис")),
			--[+ Traditional Chinese 十字星 +]--
			create_template("weapons_patterns_shotgun1_2_ext_zh",
				{"loc_weapon_pattern_shotgun_p2_m1"}, {"zh-tw"},
					loc_text("十字星")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_shotgun1_2_ext_ru",
				{"loc_weapon_mark_shotgun_p2_m1"}, {"ru"},
					loc_text("Модель XI")),
			--[+ Traditional Chinese MK XI +]--
			create_template("weapons_marks_shotgun1_2_ext_zh",
				{"loc_weapon_mark_shotgun_p2_m1"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 11 型{#reset()}")),

		--[+ Quickdraw Stub Revolver - Быстровытаскиваемый стаб-револьвер +]-- руоф Скорострельный стаб-револьвер
			--[+ Russian +]
			create_template("weapons_names_stubrevolver1_ext_ru",
				{"loc_weapon_family_stubrevolver_p1_m1"}, {"ru"},
					loc_text("Быстровытаскиваемый стаб-револьвер")),
			--[+ Traditional Chinese 快拔左輪手槍 +]--
			create_template("weapons_names_stubrevolver1_ext_zh",
				{"loc_weapon_family_stubrevolver_p1_m1"}, {"zh-tw"},
					loc_text("快拔左輪手槍")),
			--[+ Russian +]
			create_template("weapons_names_stubrevolver2_ext_ru",
				{"loc_weapon_family_stubrevolver_p1_m2"}, {"ru"},
					loc_text("Быстровытаскиваемый стаб-револьвер")),
			--[+ Traditional Chinese 快拔左輪手槍 +]--
			create_template("weapons_names_stubrevolver2_ext_zh",
				{"loc_weapon_family_stubrevolver_p1_m2"}, {"zh-tw"},
					loc_text("快拔左輪手槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_stubrevolver1_ext_ru",
				-- {"loc_weapon_pattern_stubrevolver_p1_m1"}, {"ru"},
					-- loc_text("Зарона")),
			--[+ Traditional Chinese 紮羅娜 +]--
			create_template("weapons_patterns_stubrevolver1_ext_zh",
				{"loc_weapon_pattern_stubrevolver_p1_m1"}, {"zh-tw"},
					loc_text("扎羅娜")),
			--[+ Russian +]
			-- create_template("weapons_patterns_stubrevolver2_ext_ru",
				-- {"loc_weapon_pattern_stubrevolver_p1_m2"}, {"ru"},
					-- loc_text("Агрипинаа")),
			--[+ Traditional Chinese 阿格里皮娜 +]--
			create_template("weapons_patterns_stubrevolver2_ext_zh",
				{"loc_weapon_pattern_stubrevolver_p1_m2"}, {"zh-tw"},
					loc_text("阿格里皮娜")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_stubrevolver1_ext_ru",
				{"loc_weapon_mark_stubrevolver_p1_m1"}, {"ru"},
					loc_text("Модель IIa")),
			--[+ Traditional Chinese MK IIa +]--
			create_template("weapons_marks_stubrevolver1_ext_zh",
				{"loc_weapon_mark_stubrevolver_p1_m1"}, {"zh-tw"},
					loc_text("{#color(98, 211, 55)}MK 2A 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_stubrevolver2_ext_ru",
				{"loc_weapon_mark_stubrevolver_p1_m2"}, {"ru"},
					loc_text("Модель XIV")),
			--[+ Traditional Chinese MK XIV +]--
			create_template("weapons_marks_stubrevolver2_ext_zh",
				{"loc_weapon_mark_stubrevolver_p1_m2"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK 14 型{#reset()}")),

	--[+ +ZEALOT - ИЗУВЕР+ +]--
		--[+ +MELEE - БЛИЖНИЙ БОЙ+ +]--

		--[+ Heavy Eviscerator - Тяжёлый эвисцератор +]-- -- Тяжелый эвисцератор
			--[+ Russian +]
			create_template("weapons_names_2h_eviscerator1_ext_ru",
				{"loc_weapon_family_chainsword_2h_p1_m1"}, {"ru"},
					loc_text("Тяжёлый эвисцератор")),
			--[+ Traditional Chinese 重型開膛劍 +]--
			create_template("weapons_names_2h_eviscerator1_ext_zh",
				{"loc_weapon_family_chainsword_2h_p1_m1"}, {"zh-tw"},
					loc_text("重型開膛劍")),
			--[+ Russian +]
			create_template("weapons_names_2h_eviscerator2_ext_ru",
				{"loc_weapon_family_chainsword_2h_p1_m2"}, {"ru"},
					loc_text("Тяжёлый эвисцератор")),
			--[+ Traditional Chinese 重型開膛劍 +]--
			create_template("weapons_names_2h_eviscerator2_ext_zh",
				{"loc_weapon_family_chainsword_2h_p1_m2"}, {"zh-tw"},
					loc_text("重型開膛劍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_2h_eviscerator1_ext_ru",
				-- {"loc_weapon_pattern_chainsword_2h_p1_m1"}, {"ru"},
					-- loc_text("Тигрус")),
			--[+ Traditional Chinese 泰格魯斯 +]--
			create_template("weapons_patterns_2h_eviscerator1_ext_zh",
				{"loc_weapon_pattern_chainsword_2h_p1_m1"}, {"zh-tw"},
					loc_text("泰格魯斯")),
			--[+ Russian +]
			-- create_template("weapons_patterns_2h_eviscerator2_ext_ru",
				-- {"loc_weapon_pattern_chainsword_2h_p1_m2"}, {"ru"},
					-- loc_text("Тигрус")),
			--[+ Traditional Chinese 泰格魯斯 +]--
			create_template("weapons_patterns_2h_eviscerator2_ext_zh",
				{"loc_weapon_pattern_chainsword_2h_p1_m2"}, {"zh-tw"},
					loc_text("泰格魯斯")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_2h_eviscerator1_ext_ru",
				{"loc_weapon_mark_chainsword_2h_p1_m1"}, {"ru"},
					loc_text("Модель III")),
			--[+ Traditional Chinese MK III +]--
			create_template("weapons_marks_2h_eviscerator1_ext_zh",
				{"loc_weapon_mark_chainsword_2h_p1_m1"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 3 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_2h_eviscerator2_ext_ru",
				{"loc_weapon_mark_chainsword_2h_p1_m2"}, {"ru"},
					loc_text("Модель XV")),
			--[+ Traditional Chinese MK XV +]--
			create_template("weapons_marks_2h_eviscerator2_ext_zh",
				{"loc_weapon_mark_chainsword_2h_p1_m2"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK 15 型{#reset()}")),

		--[+ Crusher - Дробитель +]--
			--[+ Russian +]
			-- create_template("weapons_names_powermaul_2h_1_ext_ru",
				-- {"loc_weapon_family_powermaul_2h_p1_m1"}, {"ru"},
					-- loc_text("Дробитель")),
			--[+ Traditional Chinese 碾壓者 +]--
			create_template("weapons_names_powermaul_2h_1_ext_zh",
				{"loc_weapon_family_powermaul_2h_p1_m1"}, {"zh-tw"},
					loc_text("碾壓者")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_powermaul_2h_1_ext_ru",
				-- {"loc_weapon_pattern_powermaul_2h_p1_m1"}, {"ru"},
					-- loc_text("Индигнатус")),
			--[+ Traditional Chinese 憤怒 +]--
			create_template("weapons_patterns_powermaul_2h_1_ext_zh",
				{"loc_weapon_pattern_powermaul_2h_p1_m1"}, {"zh-tw"},
					loc_text("憤怒")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_powermaul_2h_1_ext_ru",
				{"loc_weapon_mark_powermaul_2h_p1_m1"}, {"ru"},
					loc_text("Модель IVe")),
			--[+ Traditional Chinese MK IVe +]--
			create_template("weapons_marks_powermaul_2h_1_ext_zh",
				{"loc_weapon_mark_powermaul_2h_p1_m1"}, {"zh-tw"},
					loc_text("{#color(120, 220, 255)}MK 4E 型{#reset()}")),

		--[+ Relic Blade - Реликвийный клинок +]-- руоф Клинок реликвий
			--[+ Russian +]
			create_template("weapons_names_powersword_2h_1_ext_ru",
				{"loc_weapon_family_powersword_2h_p1_m1"}, {"ru"},
					loc_text("Реликвийный клинок")),
			--[+ Traditional Chinese 上古神刃 +]--
			create_template("weapons_names_powersword_2h_1_ext_zh",
				{"loc_weapon_family_powersword_2h_p1_m1"}, {"zh-tw"},
					loc_text("上古神刃")),
			--[+ Russian +]
			create_template("weapons_names_powersword_2h_2_ext_ru",
				{"loc_weapon_family_powersword_2h_p1_m2"}, {"ru"},
					loc_text("Реликвийный клинок")),
			--[+ Traditional Chinese 上古神刃 +]--
			create_template("weapons_names_powersword_2h_2_ext_zh",
				{"loc_weapon_family_powersword_2h_p1_m2"}, {"zh-tw"},
					loc_text("上古神刃")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_powersword_2h_1_ext_ru",
				-- {"loc_weapon_pattern_powersword_2h_p1_m1"}, {"ru"},
					-- loc_text("Муниторум")),
			--[+ Traditional Chinese 軍務部 +]--
			create_template("weapons_patterns_powersword_2h_1_ext_zh",
				{"loc_weapon_pattern_powersword_2h_p1_m1"}, {"zh-tw"},
					loc_text("軍務部")),
			--[+ Russian +]
			-- create_template("weapons_patterns_powersword_2h_2_ext_ru",
				-- {"loc_weapon_pattern_powersword_2h_p1_m2"}, {"ru"},
					-- loc_text("Муниторум")),
			--[+ Traditional Chinese 軍務部 +]--
			create_template("weapons_patterns_powersword_2h_2_ext_zh",
				{"loc_weapon_pattern_powersword_2h_p1_m2"}, {"zh-tw"},
					loc_text("軍務部")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_powersword_2h_1_ext_ru",
				{"loc_weapon_mark_powersword_2h_p1_m1"}, {"ru"},
					loc_text("Модель X")),
			--[+ Traditional Chinese MK X +]--
			create_template("weapons_marks_powersword_2h_1_ext_zh",
				{"loc_weapon_mark_powersword_2h_p1_m1"}, {"zh-tw"},
					loc_text("{#color(175, 100, 150)}MK 10 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_powersword_2h_2_ext_ru",
				{"loc_weapon_mark_powersword_2h_p1_m2"}, {"ru"},
					loc_text("Модель II")),
			--[+ Traditional Chinese MK II +]--
			create_template("weapons_marks_powersword_2h_2_ext_zh",
				{"loc_weapon_mark_powersword_2h_p1_m2"}, {"zh-tw"},
					loc_text("{#color(98, 211, 55)}MK 2 型{#reset()}")),

		--[+ Thunder Hammer - Громовой молот +]--
			--[+ Russian +]
			-- create_template("weapons_names_thunderhammer_2h_1_ext_ru",
				-- {"loc_weapon_family_thunderhammer_2h_p1_m1"}, {"ru"},
					-- loc_text("Громовой молот")),
			--[+ Traditional Chinese 雷錘 +]--
			create_template("weapons_names_thunderhammer_2h_1_ext_zh",
				{"loc_weapon_family_thunderhammer_2h_p1_m1"}, {"zh-tw"},
					loc_text("雷錘")),
			--[+ Russian +]
			-- create_template("weapons_names_thunderhammer_2h_2_ext_ru",
				-- {"loc_weapon_family_thunderhammer_2h_p1_m2"}, {"ru"},
					-- loc_text("Громовой молот")),
			--[+ Traditional Chinese 雷錘 +]--
			create_template("weapons_names_thunderhammer_2h_2_ext_zh",
				{"loc_weapon_family_thunderhammer_2h_p1_m2"}, {"zh-tw"},
					loc_text("雷錘")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_thunderhammer_2h_1_ext_ru",
				-- {"loc_weapon_pattern_thunderhammer_2h_p1_m1"}, {"ru"},
					-- loc_text("Круцис")),
			--[+ Traditional Chinese 十字星 +]--
			create_template("weapons_patterns_thunderhammer_2h_1_ext_zh",
				{"loc_weapon_pattern_thunderhammer_2h_p1_m1"}, {"zh-tw"},
					loc_text("十字星")),
			--[+ Russian +]
			-- create_template("weapons_patterns_thunderhammer_2h_2_ext_ru",
				-- {"loc_weapon_pattern_thunderhammer_2h_p1_m2"}, {"ru"},
					-- loc_text("Айронхельн")),
			--[+ Traditional Chinese 鐵盔 +]--
			create_template("weapons_patterns_thunderhammer_2h_2_ext_zh",
				{"loc_weapon_pattern_thunderhammer_2h_p1_m2"}, {"zh-tw"},
					loc_text("鐵盔")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_thunderhammer_2h_1_ext_ru",
				{"loc_weapon_mark_thunderhammer_2h_p1_m1"}, {"ru"},
					loc_text("Модель II")),
			--[+ Traditional Chinese MK II +]--
			create_template("weapons_marks_thunderhammer_2h_1_ext_zh",
				{"loc_weapon_mark_thunderhammer_2h_p1_m1"}, {"zh-tw"},
					loc_text("{#color(98, 211, 55)}MK 2 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_thunderhammer_2h_2_ext_ru",
				{"loc_weapon_mark_thunderhammer_2h_p1_m2"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]--
			create_template("weapons_marks_thunderhammer_2h_2_ext_zh",
				{"loc_weapon_mark_thunderhammer_2h_p1_m2"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 4 型{#reset()}")),

		--[+ +RANGED - ДАЛЬНИЙ БОЙ+ +]--

		--[+ Spearhead Boltgun - Пронзающий болтер +]--
			--[+ Russian +]
			-- create_template("weapons_names_bolter1_ext_ru",
				-- {"loc_weapon_family_bolter_p1_m1"}, {"ru"},
					-- loc_text("Пронзающий болтер")),
			--[+ Traditional Chinese 矛頭暴矢槍 +]--
			create_template("weapons_names_bolter1_ext_zh",
				{"loc_weapon_family_bolter_p1_m1"}, {"zh-tw"},
					loc_text("矛頭暴矢槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_bolter1_ext_ru",
				-- {"loc_weapon_pattern_bolter_p1_m1"}, {"ru"},
					-- loc_text("Люк")),
			--[+ Traditional Chinese 洛克 +]--
			create_template("weapons_patterns_bolter1_ext_zh",
				{"loc_weapon_pattern_bolter_p1_m1"}, {"zh-tw"},
					loc_text("洛克")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_bolter1_ext_ru",
				{"loc_weapon_mark_bolter_p1_m1"}, {"ru"},
					loc_text("Модель IIb")),
			--[+ Traditional Chinese MK IIb +]--
			create_template("weapons_marks_bolter1_ext_zh",
				{"loc_weapon_mark_bolter_p1_m1"}, {"zh-tw"},
					loc_text("{#color(98, 211, 55)}MK 2B 型{#reset()}")),

		--[+ Purgation Flamer - Огнемёт очищения +]-- руоф Огнемет чистки
			--[+ Russian +]
			create_template("weapons_names_flamer1_ext_ru",
				{"loc_weapon_family_flamer_p1_m1"}, {"ru"},
					loc_text("Огнемёт очищения")),
			--[+ Traditional Chinese 淨化噴火器 +]--
			create_template("weapons_names_flamer1_ext_zh",
				{"loc_weapon_family_flamer_p1_m1"}, {"zh-tw"},
					loc_text("淨化噴火器")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_flamer1_ext_ru",
				-- {"loc_weapon_pattern_flamer_p1_m1"}, {"ru"},
					-- loc_text("Артемия")),
			--[+ Traditional Chinese 奧特米亞 +]--
			create_template("weapons_patterns_flamer1_ext_zh",
				{"loc_weapon_pattern_flamer_p1_m1"}, {"zh-tw"},
					loc_text("奧特米亞")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_flamer1_ext_ru",
				{"loc_weapon_mark_flamer_p1_m1"}, {"ru"},
					loc_text("Модель III")),
			--[+ Traditional Chinese MK III +]--
			create_template("weapons_marks_flamer1_ext_zh",
				{"loc_weapon_mark_flamer_p1_m1"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 3 型{#reset()}")),
	--[+ +VETERAN - ВЕТЕРАН+ +]--
		--[+ +MELEE - БЛИЖНИЙ БОЙ+ +]--

		--[+ Sapper Shovel - Сапёрная лопата +]-- руоф Саперная лопатка
			--[+ Russian +]
			create_template("weapons_names_combataxe1_3_ext_ru",
				{"loc_weapon_family_combataxe_p3_m1"}, {"ru"},
					loc_text("Сапёрная лопата")),
			--[+ Traditional Chinese 工兵鏟 +]--
			create_template("weapons_names_combataxe1_3_ext_zh",
				{"loc_weapon_family_combataxe_p3_m1"}, {"zh-tw"},
					loc_text("工兵鏟")),
			--[+ Russian +]
			create_template("weapons_names_combataxe2_3_ext_ru",
				{"loc_weapon_family_combataxe_p3_m2"}, {"ru"},
					loc_text("Сапёрная лопата")),
			--[+ Traditional Chinese 工兵鏟 +]--
			create_template("weapons_names_combataxe2_3_ext_zh",
				{"loc_weapon_family_combataxe_p3_m2"}, {"zh-tw"},
					loc_text("工兵鏟")),
			--[+ Russian +]
			create_template("weapons_names_combataxe3_3_ext_ru",
				{"loc_weapon_family_combataxe_p3_m3"}, {"ru"},
					loc_text("Сапёрная лопата")),
			--[+ Traditional Chinese 工兵鏟 +]--
			create_template("weapons_names_combataxe3_3_ext_zh",
				{"loc_weapon_family_combataxe_p3_m3"}, {"zh-tw"},
					loc_text("工兵鏟")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_combataxe1_3_ext_ru",
				-- {"loc_weapon_pattern_combataxe_p3_m1"}, {"ru"},
					-- loc_text("Муниторум")),
			--[+ Traditional Chinese 軍務部 +]--
			create_template("weapons_patterns_combataxe1_3_ext_zh",
				{"loc_weapon_pattern_combataxe_p3_m1"}, {"zh-tw"},
					loc_text("軍務部")),
			--[+ Russian +]
			-- create_template("weapons_patterns_combataxe2_3_ext_ru",
				-- {"loc_weapon_pattern_combataxe_p3_m2"}, {"ru"},
					-- loc_text("Муниторум")),
			--[+ Traditional Chinese 軍務部 +]--
			create_template("weapons_patterns_combataxe2_3_ext_zh",
				{"loc_weapon_pattern_combataxe_p3_m2"}, {"zh-tw"},
					loc_text("軍務部")),
			--[+ Russian +]
			-- create_template("weapons_patterns_combataxe3_3_ext_ru",
				-- {"loc_weapon_pattern_combataxe_p3_m3"}, {"ru"},
					-- loc_text("Муниторум")),
			--[+ Traditional Chinese 軍務部 +]--
			create_template("weapons_patterns_combataxe3_3_ext_zh",
				{"loc_weapon_pattern_combataxe_p3_m3"}, {"zh-tw"},
					loc_text("軍務部")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_combataxe1_3_ext_ru",
				{"loc_weapon_mark_combataxe_p3_m1"}, {"ru"},
					loc_text("Модель I")),
			--[+ Traditional Chinese MK I +]--
			create_template("weapons_marks_combataxe1_3_ext_zh",
				{"loc_weapon_mark_combataxe_p3_m1"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 1 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_combataxe2_3_ext_ru",
				{"loc_weapon_mark_combataxe_p3_m2"}, {"ru"},
					loc_text("Модель III")),
			--[+ Traditional Chinese MK III +]--
			create_template("weapons_marks_combataxe2_3_ext_zh",
				{"loc_weapon_mark_combataxe_p3_m2"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 3 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_combataxe3_3_ext_ru",
				{"loc_weapon_mark_combataxe_p3_m3"}, {"ru"},
					loc_text("Модель VII")),
			--[+ Traditional Chinese MK VII +]--
			create_template("weapons_marks_combataxe3_3_ext_zh",
				{"loc_weapon_mark_combataxe_p3_m3"}, {"zh-tw"},
					loc_text("{#color(233, 165, 161)}MK 7 型{#reset()}")),

		--[+ Power Sword - Силовой меч +]--
			--[+ Russian +]
			-- create_template("weapons_names_powersword1_ext_ru",
				-- {"loc_weapon_family_powersword_p1_m1"}, {"ru"},
					-- loc_text("Силовой меч")),
			--[+ Traditional Chinese 動力劍 +]--
			create_template("weapons_names_powersword1_ext_zh",
				{"loc_weapon_family_powersword_p1_m1"}, {"zh-tw"},
					loc_text("動力劍")),
			--[+ Russian +]
			-- create_template("weapons_names_powersword2_ext_ru",
				-- {"loc_weapon_family_powersword_p1_m2"}, {"ru"},
					-- loc_text("Силовой меч")),
			--[+ Traditional Chinese 動力劍 +]--
			create_template("weapons_names_powersword2_ext_zh",
				{"loc_weapon_family_powersword_p1_m2"}, {"zh-tw"},
					loc_text("動力劍")),
			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_powersword1_ext_ru",
				-- {"loc_weapon_pattern_powersword_p1_m1"}, {"ru"},
					-- loc_text("Скандар")),
			--[+ Traditional Chinese 斯干達 +]--
			create_template("weapons_patterns_powersword1_ext_zh",
				{"loc_weapon_pattern_powersword_p1_m1"}, {"zh-tw"},
					loc_text("斯干達")),
			--[+ Russian +]
			-- create_template("weapons_patterns_powersword2_ext_ru",
				-- {"loc_weapon_pattern_powersword_p1_m2"}, {"ru"},
					-- loc_text("Ахлис")),
			--[+ Traditional Chinese 阿克利斯 +]--
			create_template("weapons_patterns_powersword2_ext_zh",
				{"loc_weapon_pattern_powersword_p1_m2"}, {"zh-tw"},
					loc_text("阿克利斯")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_powersword1_ext_ru",
				{"loc_weapon_mark_powersword_p1_m1"}, {"ru"},
					loc_text("Модель III")),
			--[+ Traditional Chinese MK III +]--
			create_template("weapons_marks_powersword1_ext_zh",
				{"loc_weapon_mark_powersword_p1_m1"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 3 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_powersword2_ext_ru",
				{"loc_weapon_mark_powersword_p1_m2"}, {"ru"},
					loc_text("Модель VI")),
			--[+ Traditional Chinese MK VI +]--
			create_template("weapons_marks_powersword2_ext_zh",
				{"loc_weapon_mark_powersword_p1_m2"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK 6 型{#reset()}")),

		--[+ +RANGED - ДАЛЬНИЙ БОЙ+ +]--

		--[+ Helbore Lasgun - Хельборовое лазружьё +]-- руоф Хелборский лазган
			--[+ Russian +]
			create_template("weapons_names_lasgun1_4_ext_ru",
				{"loc_weapon_family_lasgun_p2_m1"}, {"ru"},
					loc_text("Хельборовое лазружьё")),
			--[+ Traditional Chinese 冥潮鐳射槍 +]--
			create_template("weapons_names_lasgun1_4_ext_zh",
				{"loc_weapon_family_lasgun_p2_m1"}, {"zh-tw"},
					loc_text("冥潮鐳射槍")),
			--[+ Russian +]
			create_template("weapons_names_lasgun2_4_ext_ru",
				{"loc_weapon_family_lasgun_p2_m2"}, {"ru"},
					loc_text("Хельборовое лазружьё")),
			--[+ Traditional Chinese 冥潮鐳射槍 +]--
			create_template("weapons_names_lasgun2_4_ext_zh",
				{"loc_weapon_family_lasgun_p2_m2"}, {"zh-tw"},
					loc_text("冥潮鐳射槍")),
			--[+ Russian +]
			create_template("weapons_names_lasgun3_4_ext_ru",
				{"loc_weapon_family_lasgun_p2_m3"}, {"ru"},
					loc_text("Хельборовое лазружьё")),
			--[+ Traditional Chinese 冥潮鐳射槍 +]--
			create_template("weapons_names_lasgun3_4_ext_zh",
				{"loc_weapon_family_lasgun_p2_m3"}, {"zh-tw"},
					loc_text("冥潮鐳射槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_lasgun1_4_ext_ru",
				-- {"loc_weapon_pattern_lasgun_p2_m1"}, {"ru"},
					-- loc_text("Люций")),
			--[+ Traditional Chinese 盧修斯 +]--
			create_template("weapons_patterns_lasgun1_4_ext_zh",
				{"loc_weapon_pattern_lasgun_p2_m1"}, {"zh-tw"},
					loc_text("盧修斯")),
			--[+ Russian +]
			-- create_template("weapons_patterns_lasgun2_4_ext_ru",
				-- {"loc_weapon_pattern_lasgun_p2_m2"}, {"ru"},
					-- loc_text("Люций")),
			--[+ Traditional Chinese 盧修斯 +]--
			create_template("weapons_patterns_lasgun2_4_ext_zh",
				{"loc_weapon_pattern_lasgun_p2_m2"}, {"zh-tw"},
					loc_text("盧修斯")),
			--[+ Russian +]
			-- create_template("weapons_patterns_lasgun3_4_ext_ru",
				-- {"loc_weapon_pattern_lasgun_p2_m3"}, {"ru"},
					-- loc_text("Люций")),
			--[+ Traditional Chinese 盧修斯 +]--
			create_template("weapons_patterns_lasgun3_4_ext_zh",
				{"loc_weapon_pattern_lasgun_p2_m3"}, {"zh-tw"},
					loc_text("盧修斯")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_lasgun1_4_ext_ru",
				{"loc_weapon_mark_lasgun_p2_m1"}, {"ru"},
					loc_text("Модель IIIa")),
			--[+ Traditional Chinese MK IIIa +]--
			create_template("weapons_marks_lasgun1_4_ext_zh",
				{"loc_weapon_mark_lasgun_p2_m1"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 3A 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_lasgun2_4_ext_ru",
				{"loc_weapon_mark_lasgun_p2_m2"}, {"ru"},
					loc_text("Модель V")),
			--[+ Traditional Chinese MK V +]--
			create_template("weapons_marks_lasgun2_4_ext_zh",
				{"loc_weapon_mark_lasgun_p2_m2"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK 5 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_lasgun3_4_ext_ru",
				{"loc_weapon_mark_lasgun_p2_m3"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]--
			create_template("weapons_marks_lasgun3_4_ext_zh",
				{"loc_weapon_mark_lasgun_p2_m3"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 4 型{#reset()}")),

			--[+ Plasma Gun - Плазмомёт +]--
			--[+ Russian +]
			-- create_template("weapons_names_plasmagun1_ext_ru",
				-- {"loc_weapon_family_plasmagun_p1_m1"}, {"ru"},
					-- loc_text("Плазмомёт")),
			--[+ Traditional Chinese 電漿槍 +]--
			create_template("weapons_names_plasmagun1_ext_zh",
				{"loc_weapon_family_plasmagun_p1_m1"}, {"zh-tw"},
					loc_text("電漿槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			create_template("weapons_patterns_plasmagun1_ext_ru",
				{"loc_weapon_pattern_plasmagun_p1_m1"}, {"ru"},
					loc_text("M35 Магнакор")),
			--[+ Traditional Chinese M35熔岩核心 +]--
			create_template("weapons_patterns_plasmagun1_ext_zh",
				{"loc_weapon_pattern_plasmagun_p1_m1"}, {"zh-tw"},
					loc_text("M35熔岩核心")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_plasmagun1_ext_ru",
				{"loc_weapon_mark_plasmagun_p1_m1"}, {"ru"},
					loc_text("Модель II")),
			--[+ Traditional Chinese MK II +]--
			create_template("weapons_marks_plasmagun1_ext_zh",
				{"loc_weapon_mark_plasmagun_p1_m1"}, {"zh-tw"},
					loc_text("{#color(98, 211, 55)}MK 2 型{#reset()}")),

	--[+ +OGRYN - ОГРИН+ +]--
		--[+ +MELEE - БЛИЖНИЙ БОЙ+ +]--

		--[+ Latrine Shovel - Сортирная лопата +]-- руоф Малая саперная лопатка
			--[+ Russian +]
			create_template("weapons_names_ogryn_club1_ext_ru",
				{"loc_weapon_family_ogryn_club_p1_m1"}, {"ru"},
					loc_text("Сортирная лопата")),
			--[+ Traditional Chinese 廁所鏟 +]--
			create_template("weapons_names_ogryn_club1_ext_zh",
				{"loc_weapon_family_ogryn_club_p1_m1"}, {"zh-tw"},
					loc_text("廁所鏟")),
			--[+ Russian +]
			create_template("weapons_names_ogryn_club2_ext_ru",
				{"loc_weapon_family_ogryn_club_p1_m2"}, {"ru"},
					loc_text("Сортирная лопата")),
			--[+ Traditional Chinese 廁所鏟 +]--
			create_template("weapons_names_ogryn_club2_ext_zh",
				{"loc_weapon_family_ogryn_club_p1_m2"}, {"zh-tw"},
					loc_text("廁所鏟")),
			--[+ Russian +]
			create_template("weapons_names_ogryn_club3_ext_ru",
				{"loc_weapon_family_ogryn_club_p1_m3"}, {"ru"},
					loc_text("Сортирная лопата")),
			--[+ Traditional Chinese 廁所鏟 +]--
			create_template("weapons_names_ogryn_club3_ext_zh",
				{"loc_weapon_family_ogryn_club_p1_m3"}, {"zh-tw"},
					loc_text("廁所鏟")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_club1_ext_ru",
				-- {"loc_weapon_pattern_ogryn_club_p1_m1"}, {"ru"},
					-- loc_text("Дуболом ")),
			--[+ Traditional Chinese 兇殘 +]--
			create_template("weapons_patterns_ogryn_club1_ext_zh",
				{"loc_weapon_pattern_ogryn_club_p1_m1"}, {"zh-tw"},
					loc_text("兇殘")),
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_club2_ext_ru",
				-- {"loc_weapon_pattern_ogryn_club_p1_m2"}, {"ru"},
					-- loc_text("Дуболом ")),
			--[+ Traditional Chinese 兇殘 +]--
			create_template("weapons_patterns_ogryn_club2_ext_zh",
				{"loc_weapon_pattern_ogryn_club_p1_m2"}, {"zh-tw"},
					loc_text("兇殘")),
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_club3_ext_ru",
				-- {"loc_weapon_pattern_ogryn_club_p1_m3"}, {"ru"},
					-- loc_text("Дуболом ")),
			--[+ Traditional Chinese 兇殘 +]--
			create_template("weapons_patterns_ogryn_club3_ext_zh",
				{"loc_weapon_pattern_ogryn_club_p1_m3"}, {"zh-tw"},
					loc_text("兇殘")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_ogryn_club1_ext_ru",
				{"loc_weapon_mark_ogryn_club_p1_m1"}, {"ru"},
					loc_text("Модель III")),
			--[+ Traditional Chinese MK III +]--
			create_template("weapons_marks_ogryn_club1_ext_zh",
				{"loc_weapon_mark_ogryn_club_p1_m1"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 3 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_club2_ext_ru",
				{"loc_weapon_mark_ogryn_club_p1_m2"}, {"ru"},
					loc_text("Модель XIX")),
			--[+ Traditional Chinese MK XIX +]--
			create_template("weapons_marks_ogryn_club2_ext_zh",
				{"loc_weapon_mark_ogryn_club_p1_m2"}, {"zh-tw"},
					loc_text("{#color(200, 100, 100)}MK 19 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_club3_ext_ru",
				{"loc_weapon_mark_ogryn_club_p1_m3"}, {"ru"},
					loc_text("Модель V")),
			--[+ Traditional Chinese MK V +]--
			create_template("weapons_marks_ogryn_club3_ext_zh",
				{"loc_weapon_mark_ogryn_club_p1_m3"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 5 型{#reset()}")),

		--[+ Bully Club - Дубина задиры +]-- руоф Палица задиры
			--[+ Russian +]
			create_template("weapons_names_ogryn_club1_2_ext_ru",
				{"loc_weapon_family_ogryn_club_p2_m1"}, {"ru"},
					loc_text("Дубина задиры")),
			--[+ Traditional Chinese 惡霸棍棒 +]--
			create_template("weapons_names_ogryn_club1_2_ext_zh",
				{"loc_weapon_family_ogryn_club_p2_m1"}, {"zh-tw"},
					loc_text("惡霸棍棒")),
			--[+ Russian +]
			create_template("weapons_names_ogryn_club2_2_ext_ru",
				{"loc_weapon_family_ogryn_club_p2_m2"}, {"ru"},
					loc_text("Дубина задиры")),
			--[+ Traditional Chinese 惡霸棍棒 +]--
			create_template("weapons_names_ogryn_club2_2_ext_zh",
				{"loc_weapon_family_ogryn_club_p2_m2"}, {"zh-tw"},
					loc_text("惡霸棍棒")),
			--[+ Russian +]
			create_template("weapons_names_ogryn_club3_2_ext_ru",
				{"loc_weapon_family_ogryn_club_p2_m3"}, {"ru"},
					loc_text("Дубина задиры")),
			--[+ Traditional Chinese 惡霸棍棒 +]--
			create_template("weapons_names_ogryn_club3_2_ext_zh",
				{"loc_weapon_family_ogryn_club_p2_m3"}, {"zh-tw"},
					loc_text("惡霸棍棒")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			create_template("weapons_patterns_ogryn_club1_2_ext_ru",
				{"loc_weapon_pattern_ogryn_club_p2_m1"}, {"ru"},
					loc_text("«Особая от Бранта»")), -- «Особ. верс. Бранта»
			--[+ Traditional Chinese 『布蘭特專用』 +]--
			create_template("weapons_patterns_ogryn_club1_2_ext_zh",
				{"loc_weapon_pattern_ogryn_club_p2_m1"}, {"zh-tw"},
					loc_text("『布蘭特專用』")),
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_club2_2_ext_ru",
				-- {"loc_weapon_pattern_ogryn_club_p2_m2"}, {"ru"},
					-- loc_text("«Гордость Бранта»")), -- «Гордость Бранта»
			--[+ Traditional Chinese 『布蘭特的得意之作』 +]--
			create_template("weapons_patterns_ogryn_club2_2_ext_zh",
				{"loc_weapon_pattern_ogryn_club_p2_m2"}, {"zh-tw"},
					loc_text("『布蘭特的得意之作』")),
			--[+ Russian +]
			create_template("weapons_patterns_ogryn_club3_2_ext_ru",
				{"loc_weapon_pattern_ogryn_club_p2_m3"}, {"ru"},
					loc_text("«Убивало от Бранта»")), -- Дубина Бранта»
			--[+ Traditional Chinese 『布蘭特猛擊』 +]--
			create_template("weapons_patterns_ogryn_club3_2_ext_zh",
				{"loc_weapon_pattern_ogryn_club_p2_m3"}, {"zh-tw"},
					loc_text("『布蘭特猛擊』")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_ogryn_club1_2_ext_ru",
				{"loc_weapon_mark_ogryn_club_p2_m1"}, {"ru"},
					loc_text("Модель I")),
			--[+ Traditional Chinese MK I +]--
			create_template("weapons_marks_ogryn_club1_2_ext_zh",
				{"loc_weapon_mark_ogryn_club_p2_m1"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 1 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_club2_2_ext_ru",
				{"loc_weapon_mark_ogryn_club_p2_m2"}, {"ru"},
					loc_text("Модель II")),
			--[+ Traditional Chinese MK II +]--
			create_template("weapons_marks_ogryn_club2_2_ext_zh",
				{"loc_weapon_mark_ogryn_club_p2_m2"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK 2 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_club3_2_ext_ru",
				{"loc_weapon_mark_ogryn_club_p2_m3"}, {"ru"},
					loc_text("Модель IIIb")),
			--[+ Traditional Chinese MK IIIb +]--
			create_template("weapons_marks_ogryn_club3_2_ext_zh",
				{"loc_weapon_mark_ogryn_club_p2_m3"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 3B 型{#reset()}")),

		--[+ Cleaver - Тесак +]-- руоф Рубило
			--[+ Russian +]
			create_template("weapons_names_ogryn_combatblade1_ext_ru",
				{"loc_weapon_family_ogryn_combatblade_p1_m1"}, {"ru"},
					loc_text("Тесак")),
			--[+ Traditional Chinese 砍刀 +]--
			create_template("weapons_names_ogryn_combatblade1_ext_zh",
				{"loc_weapon_family_ogryn_combatblade_p1_m1"}, {"zh-tw"},
					loc_text("砍刀")),
			--[+ Russian +]
			create_template("weapons_names_ogryn_combatblade2_ext_ru",
				{"loc_weapon_family_ogryn_combatblade_p1_m2"}, {"ru"},
					loc_text("Тесак")),
			--[+ Traditional Chinese 砍刀 +]--
			create_template("weapons_names_ogryn_combatblade2_ext_zh",
				{"loc_weapon_family_ogryn_combatblade_p1_m2"}, {"zh-tw"},
					loc_text("砍刀")),
			--[+ Russian +]
			create_template("weapons_names_ogryn_combatblade3_ext_ru",
				{"loc_weapon_family_ogryn_combatblade_p1_m3"}, {"ru"},
					loc_text("Тесак")),
			--[+ Traditional Chinese 砍刀 +]--
			create_template("weapons_names_ogryn_combatblade3_ext_zh",
				{"loc_weapon_family_ogryn_combatblade_p1_m3"}, {"zh-tw"},
					loc_text("砍刀")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_combatblade1_ext_ru",
				-- {"loc_weapon_pattern_ogryn_combatblade_p1_m1"}, {"ru"},
					-- loc_text("Крурк")),
			--[+ Traditional Chinese 克魯克 +]--
			create_template("weapons_patterns_ogryn_combatblade1_ext_zh",
				{"loc_weapon_pattern_ogryn_combatblade_p1_m1"}, {"zh-tw"},
					loc_text("克魯克")),
			-- create_template("weapons_patterns_ogryn_combatblade2_ext_ru",
				-- {"loc_weapon_pattern_ogryn_combatblade_p1_m2"}, {"ru"},
					-- loc_text("Мясник")),
			--[+ Traditional Chinese 蠻牛屠夫 +]--
			create_template("weapons_patterns_ogryn_combatblade2_ext_zh",
				{"loc_weapon_pattern_ogryn_combatblade_p1_m2"}, {"zh-tw"},
					loc_text("蠻牛屠夫")),
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_combatblade3_ext_ru",
				-- {"loc_weapon_pattern_ogryn_combatblade_p1_m3"}, {"ru"},
					-- loc_text("Крурк")),
			--[+ Traditional Chinese 克魯克 +]--
			create_template("weapons_patterns_ogryn_combatblade3_ext_zh",
				{"loc_weapon_pattern_ogryn_combatblade_p1_m3"}, {"zh-tw"},
					loc_text("克魯克")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_ogryn_combatblade1_ext_ru",
				{"loc_weapon_mark_ogryn_combatblade_p1_m1"}, {"ru"},
					loc_text("Модель VI")),
			--[+ Traditional Chinese MK VI +]--
			create_template("weapons_marks_ogryn_combatblade1_ext_zh",
				{"loc_weapon_mark_ogryn_combatblade_p1_m1"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK 6 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_combatblade2_ext_ru",
				{"loc_weapon_mark_ogryn_combatblade_p1_m2"}, {"ru"},
					loc_text("Модель III")),
			--[+ Traditional Chinese MK III +]--
			create_template("weapons_marks_ogryn_combatblade2_ext_zh",
				{"loc_weapon_mark_ogryn_combatblade_p1_m2"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 3 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_combatblade3_ext_ru",
				{"loc_weapon_mark_ogryn_combatblade_p1_m3"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]--
			create_template("weapons_marks_ogryn_combatblade3_ext_zh",
				{"loc_weapon_mark_ogryn_combatblade_p1_m3"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 4 型{#reset()}")),

		--[+ Delver's Pickaxe - Кирка искателя +]-- руоф Кирка копателя
			--[+ Russian +]
			create_template("weapons_names_ogryn_pickaxe_2h1_ext_ru",
				{"loc_weapon_family_ogryn_pickaxe_2h_p1_m1"}, {"ru"},
					loc_text("Кирка искателя")),
			--[+ Traditional Chinese 戴維爾戰鎬 +]--
			create_template("weapons_names_ogryn_pickaxe_2h1_ext_zh",
				{"loc_weapon_family_ogryn_pickaxe_2h_p1_m1"}, {"zh-tw"},
					loc_text("戴維爾戰鎬")),
			--[+ Russian +]
			create_template("weapons_names_ogryn_pickaxe_2h2_ext_ru",
				{"loc_weapon_family_ogryn_pickaxe_2h_p1_m2"}, {"ru"},
					loc_text("Кирка искателя")),
			--[+ Traditional Chinese 戴維爾戰鎬 +]--
			create_template("weapons_names_ogryn_pickaxe_2h2_ext_zh",
				{"loc_weapon_family_ogryn_pickaxe_2h_p1_m2"}, {"zh-tw"},
					loc_text("戴維爾戰鎬")),
			--[+ Russian +]
			create_template("weapons_names_ogryn_pickaxe_2h3_ext_ru",
				{"loc_weapon_family_ogryn_pickaxe_2h_p1_m3"}, {"ru"},
					loc_text("Кирка искателя")),
			--[+ Traditional Chinese 戴維爾戰鎬 +]--
			create_template("weapons_names_ogryn_pickaxe_2h3_ext_zh",
				{"loc_weapon_family_ogryn_pickaxe_2h_p1_m3"}, {"zh-tw"},
					loc_text("戴維爾戰鎬")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_pickaxe_2h1_ext_ru",
				-- {"loc_weapon_pattern_ogryn_pickaxe_2h_p1_m1"}, {"ru"},
					-- loc_text("Бранкс")),
			--[+ Traditional Chinese 布蘭克斯 +]--
			create_template("weapons_patterns_ogryn_pickaxe_2h1_ext_zh",
				{"loc_weapon_pattern_ogryn_pickaxe_2h_p1_m1"}, {"zh-tw"},
					loc_text("布蘭克斯")),
			--[+ Russian +]
			create_template("weapons_patterns_ogryn_pickaxe_2h2_ext_ru",
				{"loc_weapon_pattern_ogryn_pickaxe_2h_p1_m2"}, {"ru"},
					loc_text("Боровийская")), -- Боровианск.
			--[+ Traditional Chinese 博羅維安 +]--
			create_template("weapons_patterns_ogryn_pickaxe_2h2_ext_zh",
				{"loc_weapon_pattern_ogryn_pickaxe_2h_p1_m2"}, {"zh-tw"},
					loc_text("博羅維安")),
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_pickaxe_2h3_ext_ru",
				-- {"loc_weapon_pattern_ogryn_pickaxe_2h_p1_m3"}, {"ru"},
					-- loc_text("Карсолас")),
			--[+ Traditional Chinese 卡索拉斯 +]--
			create_template("weapons_patterns_ogryn_pickaxe_2h3_ext_zh",
				{"loc_weapon_pattern_ogryn_pickaxe_2h_p1_m3"}, {"zh-tw"},
					loc_text("卡索拉斯")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_ogryn_pickaxe_2h1_ext_ru",
				{"loc_weapon_mark_ogryn_pickaxe_2h_p1_m1"}, {"ru"},
					loc_text("Модель Ia")),
			--[+ Traditional Chinese MK Ia +]--
			create_template("weapons_marks_ogryn_pickaxe_2h1_ext_zh",
				{"loc_weapon_mark_ogryn_pickaxe_2h_p1_m1"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 1A 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_pickaxe_2h2_ext_ru",
				{"loc_weapon_mark_ogryn_pickaxe_2h_p1_m2"}, {"ru"},
					loc_text("Модель III")),
			--[+ Traditional Chinese MK III +]--
			create_template("weapons_marks_ogryn_pickaxe_2h2_ext_zh",
				{"loc_weapon_mark_ogryn_pickaxe_2h_p1_m2"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 3 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_pickaxe_2h3_ext_ru",
				{"loc_weapon_mark_ogryn_pickaxe_2h_p1_m3"}, {"ru"},
					loc_text("Модель II")),
			--[+ Traditional Chinese MK II +]--
			create_template("weapons_marks_ogryn_pickaxe_2h3_ext_zh",
				{"loc_weapon_mark_ogryn_pickaxe_2h_p1_m3"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK 2 型{#reset()}")),

		--[+ Power Maul - Силовая булава +]--
			--[+ Russian +]
			-- create_template("weapons_names_ogryn_powermaul1_ext_ru",
				-- {"loc_weapon_family_ogryn_powermaul_p1_m1"}, {"ru"},
					-- loc_text("Силовая булава")),
					--[+ Pattern - Паттерн +]--
			--[+ Traditional Chinese 動力錘 +]--
			create_template("weapons_names_ogryn_powermaul1_ext_zh",
				{"loc_weapon_family_ogryn_powermaul_p1_m1"}, {"zh-tw"},
					loc_text("動力錘")),
					
			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_powermaul1_ext_ru",
				-- {"loc_weapon_pattern_ogryn_powermaul_p1_m1"}, {"ru"},
					-- loc_text("Ахлис")),
			--[+ Traditional Chinese 阿克利斯 +]--
			create_template("weapons_patterns_ogryn_powermaul1_ext_zh",
				{"loc_weapon_pattern_ogryn_powermaul_p1_m1"}, {"zh-tw"},
					loc_text("阿克利斯")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_ogryn_powermaul1_ext_ru",
				{"loc_weapon_mark_ogryn_powermaul_p1_m1"}, {"ru"},
					loc_text("Модель I")),
			--[+ Traditional Chinese MK I +]--
			create_template("weapons_marks_ogryn_powermaul1_ext_zh",
				{"loc_weapon_mark_ogryn_powermaul_p1_m1"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 1 型{#reset()}")),

		--[+ Battle Maul & Slab Shield - Боевая булава и щит-плита +]-- руоф Боевая булава и щит верзилы
			--[+ Russian +]
			create_template("weapons_names_ogryn_powermaul_slabshield1_ext_ru",
				{"loc_weapon_family_ogryn_powermaul_slabshield_p1_m1"}, {"ru"},
					loc_text("Боевая булава и щит-плита")),
			--[+ Traditional Chinese 作戰大槌&板盾 +]--
			create_template("weapons_names_ogryn_powermaul_slabshield1_ext_zh",
				{"loc_weapon_family_ogryn_powermaul_slabshield_p1_m1"}, {"zh-tw"},
					loc_text("作戰大槌&板盾")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_powermaul_slabshield1_ext_ru",
				-- {"loc_weapon_pattern_ogryn_powermaul_slabshield_p1_m1"}, {"ru"},
					-- loc_text("Орокс")),
			--[+ Traditional Chinese 歐洛克斯 +]--
			create_template("weapons_patterns_ogryn_powermaul_slabshield1_ext_zh",
				{"loc_weapon_pattern_ogryn_powermaul_slabshield_p1_m1"}, {"zh-tw"},
					loc_text("歐洛克斯")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_ogryn_powermaul_slabshield1_ext_ru",
				{"loc_weapon_mark_ogryn_powermaul_slabshield_p1_m1"}, {"ru"},
					loc_text("Модель II и III")),
			--[+ Traditional Chinese MK II & III +]--
			create_template("weapons_marks_ogryn_powermaul_slabshield1_ext_zh",
				{"loc_weapon_mark_ogryn_powermaul_slabshield_p1_m1"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK II & III{#reset()}")),

		--[+ +RANGED - ДАЛЬНИЙ БОЙ+ +]--
		--[+ Grenadier Gauntlet - Гренадёрская перчатка +]-- руоф Гренадерская перчатка
			--[+ Russian +]
			create_template("weapons_names_ogryn_gauntlet1_ext_ru",
				{"loc_weapon_family_ogryn_gauntlet_p1_m1"}, {"ru"},
					loc_text("Гренадёрская перчатка")),
			--[+ Traditional Chinese 擲彈兵臂鎧 +]--
			create_template("weapons_names_ogryn_gauntlet1_ext_zh",
				{"loc_weapon_family_ogryn_gauntlet_p1_m1"}, {"zh-tw"},
					loc_text("擲彈兵臂鎧")),

			--[+ Pattern - Паттерн +]--
			-- create_template("weapons_patterns_ogryn_gauntlet1_ext_ru",
				-- {"loc_weapon_pattern_ogryn_gauntlet_p1_m1"}, {"ru"},
					-- loc_text("Бластум")),
			--[+ Traditional Chinese 布拉斯托姆 +]--
			create_template("weapons_patterns_ogryn_gauntlet1_ext_zh",
				{"loc_weapon_pattern_ogryn_gauntlet_p1_m1"}, {"zh-tw"},
					loc_text("布拉斯托姆")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_ogryn_gauntlet1_ext_ru",
				{"loc_weapon_mark_ogryn_gauntlet_p1_m1"}, {"ru"},
					loc_text("Модель III")),
			--[+ Traditional Chinese MK III +]--
			create_template("weapons_marks_ogryn_gauntlet1_ext_zh",
				{"loc_weapon_mark_ogryn_gauntlet_p1_m1"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 3 型{#reset()}")),

			--[+ Twin-Linked Heavy Stubber - Спаренный тяжёлый пулемёт +]-- руоф Спаренный тяжелый пулемет
			--[+ Russian +]
			create_template("weapons_names_ogryn_heavystubber1_ext_ru",
				{"loc_weapon_family_ogryn_heavystubber_p1_m1"}, {"ru"},
					loc_text("Спаренный тяжёлый пулемёт")),
			--[+ Traditional Chinese 雙鏈重型機槍 +]--
			create_template("weapons_names_ogryn_heavystubber1_ext_zh",
				{"loc_weapon_family_ogryn_heavystubber_p1_m1"}, {"zh-tw"},
					loc_text("雙鏈重型機槍")),
			--[+ Russian +]
			create_template("weapons_names_ogryn_heavystubber2_ext_ru",
				{"loc_weapon_family_ogryn_heavystubber_p1_m2"}, {"ru"},
					loc_text("Спаренный тяжёлый пулемёт")),
			--[+ Traditional Chinese 雙鏈重型機槍 +]--
			create_template("weapons_names_ogryn_heavystubber2_ext_zh",
				{"loc_weapon_family_ogryn_heavystubber_p1_m2"}, {"zh-tw"},
					loc_text("雙鏈重型機槍")),
			--[+ Russian +]
			create_template("weapons_names_ogryn_heavystubber3_ext_ru",
				{"loc_weapon_family_ogryn_heavystubber_p1_m3"}, {"ru"},
					loc_text("Спаренный тяжёлый пулемёт")),
			--[+ Traditional Chinese 雙鏈重型機槍 +]--
			create_template("weapons_names_ogryn_heavystubber3_ext_zh",
				{"loc_weapon_family_ogryn_heavystubber_p1_m3"}, {"zh-tw"},
					loc_text("雙鏈重型機槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_heavystubber1_ext_ru",
				-- {"loc_weapon_pattern_ogryn_heavystubber_p1_m1"}, {"ru"},
					-- loc_text("Крурк")),
			--[+ Traditional Chinese 克魯克 +]--
			create_template("weapons_patterns_ogryn_heavystubber1_ext_zh",
				{"loc_weapon_pattern_ogryn_heavystubber_p1_m1"}, {"zh-tw"},
					loc_text("克魯克")),
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_heavystubber2_ext_ru",
				-- {"loc_weapon_pattern_ogryn_heavystubber_p1_m2"}, {"ru"},
					-- loc_text("Горгонум")),
			--[+ Traditional Chinese 戈爾貢努姆 +]--
			create_template("weapons_patterns_ogryn_heavystubber2_ext_zh",
				{"loc_weapon_pattern_ogryn_heavystubber_p1_m2"}, {"zh-tw"},
					loc_text("戈爾貢努姆")),
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_heavystubber3_ext_ru",
				-- {"loc_weapon_pattern_ogryn_heavystubber_p1_m3"}, {"ru"},
					-- loc_text("Ахлис")),
			--[+ Traditional Chinese 阿克利斯 +]--
			create_template("weapons_patterns_ogryn_heavystubber3_ext_zh",
				{"loc_weapon_pattern_ogryn_heavystubber_p1_m3"}, {"zh-tw"},
					loc_text("阿克利斯")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_ogryn_heavystubber1_ext_ru",
				{"loc_weapon_mark_ogryn_heavystubber_p1_m1"}, {"ru"},
					loc_text("Модель V")),
			--[+ Traditional Chinese MK V +]--
			create_template("weapons_marks_ogryn_heavystubber1_ext_zh",
				{"loc_weapon_mark_ogryn_heavystubber_p1_m1"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK 5 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_heavystubber2_ext_ru",
				{"loc_weapon_mark_ogryn_heavystubber_p1_m2"}, {"ru"},
					loc_text("Модель IV")),
			--[+ Traditional Chinese MK IV +]--
			create_template("weapons_marks_ogryn_heavystubber2_ext_zh",
				{"loc_weapon_mark_ogryn_heavystubber_p1_m2"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 6 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_heavystubber3_ext_ru",
				{"loc_weapon_mark_ogryn_heavystubber_p1_m3"}, {"ru"},
					loc_text("Модель VII")),
			--[+ Traditional Chinese MK VII +]--
			create_template("weapons_marks_ogryn_heavystubber3_ext_zh",
				{"loc_weapon_mark_ogryn_heavystubber_p1_m3"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 7 型{#reset()}")),

			--[+ Heavy Stubber - Тяжёлый пулемёт +]-- руоф Тяжелый пулемет
			--[+ Russian +]
			create_template("weapons_names_ogryn_heavystubber1_2_ext_ru",
				{"loc_weapon_family_ogryn_heavystubber_p2_m1"}, {"ru"},
					loc_text("Тяжёлый пулемёт")),
			--[+ Traditional Chinese 重伐木槍 +]--
			create_template("weapons_names_ogryn_heavystubber1_2_ext_zh",
				{"loc_weapon_family_ogryn_heavystubber_p2_m1"}, {"zh-tw"},
					loc_text("重伐木槍")),
			--[+ Russian +]
			create_template("weapons_names_ogryn_heavystubber2_2_ext_ru",
				{"loc_weapon_family_ogryn_heavystubber_p2_m2"}, {"ru"},
					loc_text("Тяжёлый пулемёт")),
			--[+ Traditional Chinese 重伐木槍 +]--
			create_template("weapons_names_ogryn_heavystubber2_2_ext_zh",
				{"loc_weapon_family_ogryn_heavystubber_p2_m2"}, {"zh-tw"},
					loc_text("重伐木槍")),
			--[+ Russian +]
			create_template("weapons_names_ogryn_heavystubber3_2_ext_ru",
				{"loc_weapon_family_ogryn_heavystubber_p2_m3"}, {"ru"},
					loc_text("Тяжёлый пулемёт")),
			--[+ Traditional Chinese 重伐木槍 +]--
			create_template("weapons_names_ogryn_heavystubber3_2_ext_zh",
				{"loc_weapon_family_ogryn_heavystubber_p2_m3"}, {"zh-tw"},
					loc_text("重伐木槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_heavystubber1_2_ext_ru",
				-- {"loc_weapon_pattern_ogryn_heavystubber_p2_m1"}, {"ru"},
					-- loc_text("Крурк")),
			--[+ Traditional Chinese 克魯克 +]--
			create_template("weapons_patterns_ogryn_heavystubber1_2_ext_zh",
				{"loc_weapon_pattern_ogryn_heavystubber_p2_m1"}, {"zh-tw"},
					loc_text("克魯克")),
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_heavystubber2_2_ext_ru",
				-- {"loc_weapon_pattern_ogryn_heavystubber_p2_m2"}, {"ru"},
					-- loc_text("Горгонум")),
			--[+ Traditional Chinese 戈爾貢努姆 +]--
			create_template("weapons_patterns_ogryn_heavystubber2_2_ext_zh",
				{"loc_weapon_pattern_ogryn_heavystubber_p2_m2"}, {"zh-tw"},
					loc_text("戈爾貢努姆")),
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_heavystubber3_2_ext_ru",
				-- {"loc_weapon_pattern_ogryn_heavystubber_p2_m3"}, {"ru"},
					-- loc_text("Ахлис")),
			--[+ Traditional Chinese 阿克利斯 +]--
			create_template("weapons_patterns_ogryn_heavystubber3_2_ext_zh",
				{"loc_weapon_pattern_ogryn_heavystubber_p2_m3"}, {"zh-tw"},
					loc_text("阿克利斯")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_ogryn_heavystubber1_2_ext_ru",
				{"loc_weapon_mark_ogryn_heavystubber_p2_m1"}, {"ru"},
					loc_text("Модель IIa")),
			--[+ Traditional Chinese MK IIa +]--
			create_template("weapons_marks_ogryn_heavystubber1_2_ext_zh",
				{"loc_weapon_mark_ogryn_heavystubber_p2_m1"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK 2A 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_heavystubber2_2_ext_ru",
				{"loc_weapon_mark_ogryn_heavystubber_p2_m2"}, {"ru"},
					loc_text("Модель IIIa")),
			--[+ Traditional Chinese MK IIIa +]--
			create_template("weapons_marks_ogryn_heavystubber2_2_ext_zh",
				{"loc_weapon_mark_ogryn_heavystubber_p2_m2"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 3A 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_heavystubber3_2_ext_ru",
				{"loc_weapon_mark_ogryn_heavystubber_p2_m3"}, {"ru"},
					loc_text("Модель II")),
			--[+ Traditional Chinese MK II +]--
			create_template("weapons_marks_ogryn_heavystubber3_2_ext_zh",
				{"loc_weapon_mark_ogryn_heavystubber_p2_m3"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK II{#reset()}")),

			--[+ Ripper Gun - Дробовик-потрошитель +]--
			--[+ Russian +]
			-- create_template("weapons_names_ogryn_rippergun1_ext_ru",
				-- {"loc_weapon_family_ogryn_rippergun_p1_m1"}, {"ru"},
					-- loc_text("Дробовик-потрошитель")),
			--[+ Traditional Chinese 撕裂槍 +]--
			create_template("weapons_names_ogryn_rippergun1_ext_zh",
				{"loc_weapon_family_ogryn_rippergun_p1_m1"}, {"zh-tw"},
					loc_text("撕裂槍")),
			--[+ Russian +]
			-- create_template("weapons_names_ogryn_rippergun2_ext_ru",
				-- {"loc_weapon_family_ogryn_rippergun_p1_m2"}, {"ru"},
					-- loc_text("Дробовик-потрошитель")),
			--[+ Traditional Chinese 撕裂槍 +]--
			create_template("weapons_names_ogryn_rippergun2_ext_zh",
				{"loc_weapon_family_ogryn_rippergun_p1_m2"}, {"zh-tw"},
					loc_text("撕裂槍")),
			--[+ Russian +]
			-- create_template("weapons_names_ogryn_rippergun3_ext_ru",
				-- {"loc_weapon_family_ogryn_rippergun_p1_m3"}, {"ru"},
					-- loc_text("Дробовик-потрошитель")),
			--[+ Traditional Chinese 撕裂槍 +]--
			create_template("weapons_names_ogryn_rippergun3_ext_zh",
				{"loc_weapon_family_ogryn_rippergun_p1_m3"}, {"zh-tw"},
					loc_text("撕裂槍")),

			--[+ Pattern - Паттерн +]-- Врагострел
			--[+ Russian +]
			create_template("weapons_patterns_ogryn_rippergun1_ext_ru",
				{"loc_weapon_pattern_ogryn_rippergun_p1_m1"}, {"ru"},
					loc_text("Врагорвач")),
			--[+ Traditional Chinese 碎敵 +]--
			create_template("weapons_patterns_ogryn_rippergun1_ext_zh",
				{"loc_weapon_pattern_ogryn_rippergun_p1_m1"}, {"zh-tw"},
					loc_text("碎敵")),
			--[+ Russian +]
			create_template("weapons_patterns_ogryn_rippergun2_ext_ru",
				{"loc_weapon_pattern_ogryn_rippergun_p1_m2"}, {"ru"},
					loc_text("Врагорвач")),
			--[+ Traditional Chinese 碎敵 +]--
			create_template("weapons_patterns_ogryn_rippergun2_ext_zh",
				{"loc_weapon_pattern_ogryn_rippergun_p1_m2"}, {"zh-tw"},
					loc_text("碎敵")),
			--[+ Russian +]
			create_template("weapons_patterns_ogryn_rippergun3_ext_ru",
				{"loc_weapon_pattern_ogryn_rippergun_p1_m3"}, {"ru"},
					loc_text("Врагорвач")),
			--[+ Traditional Chinese 碎敵 +]--
			create_template("weapons_patterns_ogryn_rippergun3_ext_zh",
				{"loc_weapon_pattern_ogryn_rippergun_p1_m3"}, {"zh-tw"},
					loc_text("碎敵")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_ogryn_rippergun1_ext_ru",
				{"loc_weapon_mark_ogryn_rippergun_p1_m1"}, {"ru"},
					loc_text("Модель II")),
			--[+ Traditional Chinese MK II +]--
			create_template("weapons_marks_ogryn_rippergun1_ext_zh",
				{"loc_weapon_mark_ogryn_rippergun_p1_m1"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK 2 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_rippergun2_ext_ru",
				{"loc_weapon_mark_ogryn_rippergun_p1_m2"}, {"ru"},
					loc_text("Модель V")),
			--[+ Traditional Chinese MK V +]--
			create_template("weapons_marks_ogryn_rippergun2_ext_zh",
				{"loc_weapon_mark_ogryn_rippergun_p1_m2"}, {"zh-tw"},
					loc_text("{#color(255, 150, 200)}MK 5 型{#reset()}")),
			--[+ Russian +]
			create_template("weapons_marks_ogryn_rippergun3_ext_ru",
				{"loc_weapon_mark_ogryn_rippergun_p1_m3"}, {"ru"},
					loc_text("Модель VI")),
			--[+ Traditional Chinese MK VI +]--
			create_template("weapons_marks_ogryn_rippergun3_ext_zh",
				{"loc_weapon_mark_ogryn_rippergun_p1_m3"}, {"zh-tw"},
					loc_text("{#color(193, 115, 221)}MK 6 型{#reset()}")),

		--[+ Kickback - Дробовик «Отбойник» +]-- руоф Отбойник
			--[+ Russian +]
			create_template("weapons_names_ogryn_thumper1_ext_ru",
				{"loc_weapon_family_ogryn_thumper_p1_m1"}, {"ru"},
					loc_text("Дробовик «Отбойник»")),
			--[+ Traditional Chinese 反衝者 +]--
			create_template("weapons_names_ogryn_thumper1_ext_zh",
				{"loc_weapon_family_ogryn_thumper_p1_m1"}, {"zh-tw"},
					loc_text("反衝者")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_thumper1_ext_ru",
				-- {"loc_weapon_pattern_ogryn_thumper_p1_m1"}, {"ru"},
					-- loc_text("Лоренц")),
			--[+ Traditional Chinese 洛倫茲 +]--
			create_template("weapons_patterns_ogryn_thumper1_ext_zh",
				{"loc_weapon_pattern_ogryn_thumper_p1_m1"}, {"zh-tw"},
					loc_text("洛倫茲")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_ogryn_thumper1_ext_ru",
				{"loc_weapon_mark_ogryn_thumper_p1_m1"}, {"ru"},
					loc_text("Модель V")),
			--[+ Traditional Chinese MK V +]--
			create_template("weapons_marks_ogryn_thumper1_ext_zh",
				{"loc_weapon_mark_ogryn_thumper_p1_m1"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK 5 型{#reset()}")),

			--[+ Rumbler - Гранатомёт «Громобой» +]-- руоф Рамблер
			--[+ Russian +]
			create_template("weapons_names_ogryn_thumper2_ext_ru",
				{"loc_weapon_family_ogryn_thumper_p1_m2"}, {"ru"},
					loc_text("Гранатомёт «Громобой»")),
			--[+ Traditional Chinese 震盪槍 +]--
			create_template("weapons_names_ogryn_thumper2_ext_zh",
				{"loc_weapon_family_ogryn_thumper_p1_m2"}, {"zh-tw"},
					loc_text("震盪槍")),

			--[+ Pattern - Паттерн +]--
			--[+ Russian +]
			-- create_template("weapons_patterns_ogryn_thumper2_ext_ru",
				-- {"loc_weapon_pattern_ogryn_thumper_p1_m2"}, {"ru"},
					-- loc_text("Лоренц")),
			--[+ Traditional Chinese 洛倫茲 +]--
			create_template("weapons_patterns_ogryn_thumper2_ext_zh",
				{"loc_weapon_pattern_ogryn_thumper_p1_m2"}, {"zh-tw"},
					loc_text("洛倫茲")),

			--[+ MK - Модель +]-- --Мод.
			--[+ Russian +]
			create_template("weapons_marks_ogryn_thumper2_ext_ru",
				{"loc_weapon_mark_ogryn_thumper_p1_m2"}, {"ru"},
					loc_text("Модель VI")),
			--[+ Traditional Chinese MK VI +]--
			create_template("weapons_marks_ogryn_thumper2_ext_zh",
				{"loc_weapon_mark_ogryn_thumper_p1_m2"}, {"zh-tw"},
					loc_text("{#color(255, 100, 200)}MK 6 型{#reset()}")),
}

--[+ Return the localization templates +]--
return localization_templates
