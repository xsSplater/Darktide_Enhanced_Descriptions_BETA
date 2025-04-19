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

--[+ ++WEAPON BLESSINGS++ +]--
	--[+ Melee +]--
	--[+ Opportunist - Оппортунист +]-- -- руоф Приспособленец
	create_template("trait_bespoke_000_ext_ru",
		{"loc_trait_bespoke_armor_penetration_against_staggered"}, {"ru"},
			loc_text( "Оппортунист")),

	--[+ Bloodletter - Кровопускатель +]-- -- руоф Кровопускание
	create_template("trait_bespoke_001_ext_ru",
		{"loc_trait_bespoke_bleed_on_activated_hit"}, {"ru"},
				loc_text("Кровопускатель")),

	--[+ Bloodthirsty - Кровожадный +]-- -- руоф Жажда крови
	create_template("trait_bespoke_002_ext_ru",
		{"loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill"}, {"ru"},
			loc_text("Кровожадный")),

	--[+ Headtaker - Головорез +]--
	-- create_template("trait_bespoke_003_ext_ru",
		-- {"loc_trait_bespoke_increase_power_on_hit"}, {"ru"},
			-- loc_text("Головорез")),

	--[+ Slaughterer - Мясник +]-- -- руоф Душегуб
	create_template("trait_bespoke_004_ext_ru",
		{"loc_trait_bespoke_increase_power_on_kill"}, {"ru"},
			loc_text("Мясник")),

	--[+ Rev it up - Ускорься +]-- -- руоф Бодрость
	create_template("trait_bespoke_005_ext_ru",
		{"loc_trait_bespoke_movement_speed_on_activation"}, {"ru"},
			loc_text("Ускорься")),

	--[+ Thrust - Выпад +]--
	-- create_template("trait_bespoke_006_ext_ru",
		-- {"loc_trait_bespoke_power_bonus_based_on_charge_time"}, {"ru"},
			-- loc_text("Выпад")),

	--[+ Thunderous - Громовой удар +]-- -- руоф Словно раскаты грома?
	create_template("trait_bespoke_007_ext_ru",
		{"loc_trait_bespoke_targets_receive_rending_debuff"}, {"ru"},
			loc_text("Громовой удар")),

	--[+ Wrath - Гнев +]--
	-- create_template("trait_bespoke_008_ext_ru",
		-- {"loc_trait_bespoke_chained_hits_increases_cleave"}, {"ru"},
			-- loc_text("Гнев")),

	--[+ Shred - Кромсание +]-- -- руоф Расстрел?
	create_template("trait_bespoke_009_ext_ru",
		{"loc_trait_bespoke_chained_hits_increases_crit_chance"}, {"ru"},
			loc_text("Кромсание")),

	--[+ Savage Sweep - Дикий взмах +]-- -- руоф Дикость
	create_template("trait_bespoke_010_ext_ru",
		{"loc_trait_bespoke_increased_attack_cleave_on_multiple_hits"}, {"ru"},
			loc_text("Дикий взмах")),

	--[+ Rampage - Буйство +]--
	-- create_template("trait_bespoke_011_ext_ru",
		-- {"loc_trait_bespoke_increased_melee_damage_on_multiple_hits"}, {"ru"},
			-- loc_text("Буйство")),

	--[+ Devastating Strike - Разрушительный удар +]-- -- руоф Сокрушительный удар
	create_template("trait_bespoke_012_ext_ru",
		{"loc_trait_bespoke_infinite_melee_cleave_on_crit"}, {"ru"},
			loc_text("Разрушительный удар")),

	--[+ Decimator - Дециматор +]--
	-- create_template("trait_bespoke_013_ext_ru",
		-- {"loc_trait_bespoke_chained_hits_increases_power_desc"}, {"ru"},
			-- loc_text("Дециматор")),

	--[+ Brutal Momentum - Жестокий импульс +]-- -- руоф Суровый моментум
	create_template("trait_bespoke_014_ext_ru",
		{"loc_trait_bespoke_infinite_cleave_on_weakspot_kill"}, {"ru"},
			loc_text("Жестокий импульс")),

	--[+ Limbsplitter - Расчленитель +]-- -- руоф Расщепитель
	create_template("trait_bespoke_015_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_first_attack"}, {"ru"},
			loc_text("Расчленитель")),

	--[+ All or Nothing - Всё или ничего +]-- -- руоф Все или ничего
	create_template("trait_bespoke_016_ext_ru",
		{"loc_trait_bespoke_power_bonus_scaled_on_stamina"}, {"ru"},
			loc_text("Всё или ничего")),

	--[+ Decapitator - Обезглавливатель +]-- -- руоф Палач
	create_template("trait_bespoke_017_ext_ru",
		{"loc_trait_bespoke_stacking_rending_on_one_hit_kills"}, {"ru"},
			loc_text("Обезглавливатель")),

	--[+ Agile - Проворный +]-- -- руоф Ловкий
	create_template("trait_bespoke_018_ext_ru",
		{"loc_trait_bespoke_dodge_count_reset_on_weakspot_hit"}, {"ru"},
			loc_text("Проворный")),

	--[+ Slaughter Spree - Резня +]-- -- руоф  Убойная сила
	create_template("trait_bespoke_019_ext_ru",
		{"loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill"}, {"ru"},
			loc_text("Резня")),

	--[+ Relentless Strikes - Безжалостные удары +]-- -- руоф Безжалостность
	create_template("trait_bespoke_020_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_same_enemy_attacks"}, {"ru"},
			loc_text("Безжалостные удары")),

	--[+ Flesh Tearer - Раздиратель плоти +]--
	-- create_template("trait_bespoke_021_ext_ru",
		-- {"loc_trait_bespoke_bleed_on_crit_melee"}, {"ru"},
			-- loc_text("Раздиратель плоти")),

	--[+ Lacerate - Терзание +]--
	-- create_template("trait_bespoke_022_ext_ru",
		-- {"loc_trait_bespoke_bleed_on_non_weakspot_hit"}, {"ru"},
			-- loc_text("Терзание")),

	--[+ Executor - Каратель +]-- -- руоф Экзекутор
	create_template("trait_bespoke_023_ext_ru",
		{"loc_trait_bespoke_chained_weakspot_hits_increases_power"}, {"ru"},
			loc_text("Каратель")),

	--[+ Riposte - Ответный удар +]--
	-- create_template("trait_bespoke_024_ext_ru",
		-- {"loc_trait_bespoke_dodge_grants_crit_chance"}, {"ru"},
			-- loc_text("Ответный удар")),

	--[+ Precognition - Предвидение +]-- -- руоф Познание
	create_template("trait_bespoke_025_ext_ru",
		{"loc_trait_bespoke_dodge_grants_finesse_bonus"}, {"ru"},
			loc_text("Предвидение")),

	--[+ Haymaker - Жнец +]-- (*Косарь) -- руоф Коса
	create_template("trait_bespoke_026_ext_ru",
		{"loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance"}, {"ru"},
			loc_text("Жнец")),

	--[+ Smackdown - Сокрушение +]-- -- руоф Смятение
	create_template("trait_bespoke_027_ext_ru",
		{"loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy"}, {"ru"},
			loc_text("Сокрушение")),

	--[+ Mercy Killer - Милосердный убийца +]-- -- руоф Милосердие
	create_template("trait_bespoke_028_ext_ru",
		{"loc_trait_bespoke_increased_weakspot_damage_on_bleeding"}, {"ru"},
			loc_text("Милосердный убийца")),

	--[+ Ruthless Backstab - Беспощадный удар в спину +]--
	-- create_template("trait_bespoke_029_ext_ru",
		-- {"loc_trait_bespoke_rending_on_backstabs"}, {"ru"},
			-- loc_text("Беспощадный удар в спину")),

	--[+ Uncanny Strike - Жуткий удар +]--
	-- create_template("trait_bespoke_030_ext_ru",
		-- {"loc_trait_bespoke_stacking_rending_on_weakspot"}, {"ru"},
			-- loc_text("Жуткий удар")),

	--[+ Trauma - Травма +]--
	-- create_template("trait_bespoke_031_ext_ru",
		-- {"loc_trait_bespoke_consecutive_hits_increases_stagger"}, {"ru"},
			-- loc_text("Травма")),

	--[+ Vicious Slice - Жестокий рарез +]-- -- руоф Жестокая нарезка
	create_template("trait_bespoke_032_ext_ru",
		{"loc_trait_bespoke_increase_stagger_per_hit_in_sweep"}, {"ru"},
			loc_text("Жестокий рарез")),

	--[+ Hammerblow - Молотобой +]-- -- руоф Удар молотом
	create_template("trait_bespoke_033_ext_ru",
		{"loc_trait_bespoke_stacking_increase_impact_on_hit"}, {"ru"},
			loc_text("Молотобой")),

	--[+ Skullcrusher - Череподробитель +]--
	-- create_template("trait_bespoke_034_ext_ru",
		-- {"loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff"}, {"ru"},
			-- loc_text("Череподробитель")),

	--[+ Thunderstrike - Громобой +]-- -- руоф Гроза
	create_template("trait_bespoke_035_ext_ru",
		{"loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff"}, {"ru"},
			loc_text("Громобой")),

	--[+ Chained Deathblow - Цепочка смертельных ударов +]--
	-- create_template("trait_bespoke_036_ext_ru",
		-- {"loc_trait_bespoke_increased_crit_chance_on_weakspot_kill"}, {"ru"},
			-- loc_text("Цепочка смертельных ударов")),

	--[+ Deathblow - Смертельный удар +]--
	-- create_template("trait_bespoke_037_ext_ru",
		-- {"loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill"}, {"ru"},
			-- loc_text("Смертельный удар")),

	--[+ Perfect Strike - Безупречный удар +]--
	-- create_template("trait_bespoke_038_ext_ru",
		-- {"loc_trait_bespoke_pass_past_armor_on_crit_new"}, {"ru"},
			-- loc_text("Безупречный удар")),

	--[+ Bladed Momentum - Лезвийный импульс +]-- -- руоф Моментум лезвия
	create_template("trait_bespoke_039_ext_ru",
		{"loc_trait_bespoke_stacking_rending_on_cleave"}, {"ru"},
			loc_text("Лезвийный импульс")),

	--[+ Deflector - Отражатель +]--
	-- create_template("trait_bespoke_040_ext_ru",
		-- {"loc_trait_bespoke_can_block_ranged_desc"}, {"ru"},
			-- loc_text("Отражатель")),

	--[+ Exorcist - Экзорцист +]--
	-- create_template("trait_bespoke_041_ext_ru",
		-- {"loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge"}, {"ru"},
			-- loc_text("Экзорцист")),

	--[+ Superiority - Превосходство +]--
	-- create_template("trait_bespoke_042_ext_ru",
		-- {"loc_trait_bespoke_elite_kills_grants_stackable_power"}, {"ru"},
			-- loc_text("Превосходство")),

	--[+ Blazing Spirit - Пылающий дух +]--
		 -- create_template("trait_bespoke_043_ext_ru",
		-- {"loc_trait_bespoke_warp_burninating_on_crit"}, {"ru"},
			-- loc_text("Пылающий дух")),

	--[+ Unstable Power - Нестабильная мощь +]--
	-- create_template("trait_bespoke_044_ext_ru",
		-- {"loc_trait_bespoke_warp_charge_power_bonus"}, {"ru"},
			-- loc_text("Нестабильная мощь")),

	--[+ Lightning Reflexes - Молниеносные рефлексы +]--
	-- create_template("trait_bespoke_045_ext_ru",
		-- {"loc_trait_bespoke_block_has_chance_to_stun_with_cd"}, {"ru"},
			-- loc_text("Молниеносные рефлексы")),

	--[+ High Voltage - Высокое напряжение +]--
	-- create_template("trait_bespoke_046_ext_ru",
		-- {"loc_trait_bespoke_damage_bonus_vs_electrocuded"}, {"ru"},
			-- loc_text("Высокое напряжение")),

	--[+ Falter - Дрожь +]--
	-- create_template("trait_bespoke_047_ext_ru",
		-- {"loc_trait_bespoke_negate_stagger_reduction_on_weakspot"}, {"ru"},
			-- loc_text("Дрожь")),

	--[+ Overwhelming Force - Подавляющая сила +]--
	-- create_template("trait_bespoke_048_ext_ru",
		-- {"loc_trait_bespoke_staggering_hits_has_chance_to_stun"}, {"ru"},
			-- loc_text("Подавляющая сила")),

	--[+ Momentum - Моментум +]--
	-- create_template("trait_bespoke_049_ext_ru",
		-- {"loc_trait_bespoke_toughness_recovery_on_multiple_hits"}, {"ru"},
			-- loc_text("Моментум")),

	--[+ Shock & Awe / Shock and Awe - Шок и трепет +]--
	-- create_template("trait_bespoke_74_ext_ru",
		-- {"loc_trait_bespoke_hit_mass_consumption_reduction_on_kill"}, {"ru"},
			-- loc_text("Шок и трепет")),

	--[+ Take a Swing - Замах +]--
	-- create_template("trait_bespoke_050_ext_ru",
		-- {"loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies"}, {"ru"},
			-- loc_text("Замах")),

	--[+ Supercharge - Суперзаряд +]--
	-- create_template("trait_bespoke_051_ext_ru",
		-- {"loc_trait_bespoke_armor_rend_on_activated_attacks"}, {"ru"},
			-- loc_text("Суперзаряд")),

	--[+ Power Cycler - Циклер мощности +]-- -- руоф Цикл силы
	-- create_template("trait_bespoke_052_ext_ru",
		-- {"loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks"}, {"ru"},
			-- loc_text("Циклер мощности")),

	--[+ Sunder - Сокрушение +]-- -- руоф Сандер
	create_template("trait_bespoke_053_ext_ru",
		{"loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks"}, {"ru"},
			loc_text("Сокрушение")),

	--[+ Sucker Punch - Удар исподтишка +]--
	-- create_template("trait_bespoke_054_ext_ru",
		-- {"loc_trait_bespoke_increased_crit_chance_after_punch"}, {"ru"},
			-- loc_text("Удар исподтишка")),

	--[+ Confident Strike - Уверенный удар +]--
	-- create_template("trait_bespoke_055_ext_ru",
		-- {"loc_trait_bespoke_toughness_recovery_on_chained_attacks"}, {"ru"},
			-- loc_text("Уверенный удар")),

	--[+ No Guts, No Glory - Нет смелости — нет славы +]--
	-- create_template("trait_bespoke_056_ext_ru",
		-- {"loc_trait_bespoke_toughness_regen_on_punching_elites"}, {"ru"},
			-- loc_text("Нет смелости — нет славы")),

	--[+ Bash - Удар +]--
	-- create_template("trait_bespoke_057_ext_ru",
		-- {"loc_trait_bespoke_crit_chance_on_push"}, {"ru"},
			-- loc_text("Удар")),

	--[+ Tenderiser - Молот мясника +]--
	-- create_template("trait_bespoke_058_ext_ru",
		-- {"loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits"}, {"ru"},
			-- loc_text("Молот мясника")),

	--[+ Unstoppable Force - Неудержимая сила +]--
	-- create_template("trait_bespoke_059_ext_ru",
		-- {"loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack"}, {"ru"},
			-- loc_text("Неудержимая сила")),

	--[+ Torment - Истязание +]--
	-- create_template("trait_bespoke_060_ext_ru",
		-- {"loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"}, {"ru"},
			-- loc_text("Истязание")),

	--[+ Slow and Steady - Медленно, но верно +]-- -- руоф Медленный и упорный
	create_template("trait_bespoke_061_ext_ru",
		{"loc_trait_bespoke_toughness_on_hit_based_on_charge_time"}, {"ru"},
			loc_text("Медленно, но верно")),

	--[+ Power Surge - Энергетический заряд +]-- -- руоф Скачок напряжения
	create_template("trait_bespoke_062_ext_ru",
		{"loc_trait_bespoke_explosion_on_activated_attacks_on_armor"}, {"ru"},
			loc_text("Энергетический заряд")),

	--[+ Last Guard - Последний страж +]--
	-- create_template("trait_bespoke_063_ext_ru",
		-- {"loc_trait_block_break_pushes"}, {"ru"},
			-- loc_text("Последний страж")),

	--[+ Offensive Defence - Атакующая защита +]-- -- руоф Активная оборона
	-- create_template("trait_bespoke_064_ext_ru",
		-- {"loc_trait_damage_bonus_on_block"}, {"ru"},
			-- loc_text("Атакующая защита")),

	--[+ Murderous Tranquility - Убийственное спокойствие +]--
	-- create_template("trait_bespoke_065_ext_ru",
		-- {"loc_trait_bespoke_vent_warp_charge_on_multiple_hits"}, {"ru"},
			-- loc_text("Убийственное спокойствие")),

	--[+ Warp Slice - Варп нарезка +]-- -- руоф Варп-удар
	create_template("trait_bespoke_066_ext_ru",
		{"loc_trait_bespoke_wind_slash_crits"}, {"ru"},
			loc_text("Варп нарезка")),

	--[+ Ranged - Дальний бой +]--
	--[+ Raking Fire - Огонь по тылам +]-- -- руоф Обстрел
	-- create_template("trait_bespoke_065_ext_ru",
		-- {"loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking"}, {"ru"},
			-- loc_text("Огонь по тылам")),

	--[+ Dumdum - Дум-дум +]-- -- руоф Дамдам
	create_template("trait_bespoke_066_ext_ru",
		{"loc_trait_bespoke_consecutive_hits_increases_close_damage"}, {"ru"},
			loc_text("Дум-дум")),

	--[+ Hit & Run /  Hit and Run - Бей и беги +]--
	-- create_template("trait_bespoke_067_ext_ru",
		-- {"loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill"}, {"ru"},
			-- loc_text("Бей и беги")),

	--[+ Sustained Fire - Непрерывная стрельба +]-- -- руоф Непрерывный огонь
	create_template("trait_bespoke_068_ext_ru",
		{"loc_trait_bespoke_followup_shots_ranged_damage"}, {"ru"},
			loc_text("Непрерывная стрельба")),

	--[+ Punishing Salvo - Карательный залп +]--
	-- create_template("trait_bespoke_069_ext_ru",
		-- {"loc_trait_bespoke_followup_shots_ranged_weakspot_damage"}, {"ru"},
			-- loc_text("Карательный залп")),

	--[+ Fire Frenzy - Неистовая стрельба +]-- -- руоф Огненное неистовство
	create_template("trait_bespoke_070_ext_ru",
		{"loc_trait_bespoke_increase_close_damage_on_close_kill"}, {"ru"},
			loc_text("Неистовая стрельба")),

	--[+ Deathspitter - Смертоплюй +]-- -- руоф Смертоносец
	create_template("trait_bespoke_071_ext_ru",
		{"loc_trait_bespoke_increase_power_on_close_kill"}, {"ru"},
			loc_text("Смертоплюй")),

	--[+ Stripped Down - Сбросить лишнее +]-- -- руоф Срез
	create_template("trait_bespoke_072_ext_ru",
		{"loc_trait_bespoke_increased_sprint_speed"}, {"ru"},
			loc_text("Сбросить лишнее")),

	--[+ Speedload - Быстрая перезарядка +]-- -- руоф Скоростная загрузка (facepalm)
	create_template("trait_bespoke_073_ext_ru",
		{"loc_trait_bespoke_reload_speed_on_slide"}, {"ru"},
			loc_text("Быстрая перезарядка")),

	--[+ Terrifying Barrage - Устрашающий обстрел +]-- -- руоф Устрашающий натиск
	create_template("trait_bespoke_074_ext_ru",
		{"loc_trait_bespoke_suppression_on_close_kill"}, {"ru"},
			loc_text("Устрашающий огонь")),

	--[+ Roaring Advance - Ревущее наступление +]--
	-- create_template("trait_bespoke_075_ext_ru",
		-- {"loc_trait_bespoke_movement_speed_on_continuous_fire"}, {"ru"},
			-- loc_text("Ревущее наступление")),

	--[+ Ceaseless Barrage - Непрерывный обстрел +]-- -- руоф Беспощадный натиск
	create_template("trait_bespoke_076_ext_ru",
		{"loc_trait_bespoke_suppression_on_continuous_fire"}, {"ru"},
			loc_text("Непрерывный огонь")),

	--[+ Inspiring Barrage - Вдохновляющий обстрел +]-- -- руоф Вдохновляющий натиск
	create_template("trait_bespoke_077_ext_ru",
		{"loc_trait_bespoke_toughness_on_continuous_fire"}, {"ru"},
			loc_text("Вдохновляющий обстрел")),

	--[+ Ghost - Призрак +]--
	-- create_template("trait_bespoke_078_ext_ru",
		-- {"loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot"}, {"ru"},
			-- loc_text("Призрак")),

	--[+ Surgical - Снайперская точность - +]-- -- руоф Зоркость
	create_template("trait_bespoke_079_ext_ru",
		{"loc_trait_bespoke_crit_chance_based_on_aim_time"}, {"ru"},
			loc_text("Снайперская точность")),

	--[+ Crucian Roulette - Круцианская рулетка +]--
	-- create_template("trait_bespoke_080_ext_ru",
		-- {"loc_trait_bespoke_crit_chance_based_on_ammo_left"}, {"ru"},
			-- loc_text("Круцианская рулетка")),

	--[+ Deadly Accurate - Смертоностная точность +]--
	-- create_template("trait_bespoke_081_ext_ru",
		-- {"loc_trait_bespoke_crit_weakspot_finesse"}, {"ru"},
			-- loc_text("Смертоностная точность")),

	--[+ No Respite - Без передышки +]-- -- руоф Нет отдыху
	create_template("trait_bespoke_082_ext_ru",
		{"loc_trait_bespoke_stagger_count_bonus_damage"}, {"ru"},
			loc_text("Без передышки")),

	--[+ Opening Salvo - Первый выстрел залпа +]-- -- руоф Открывающий залп
	create_template("trait_bespoke_083_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_first_shot"}, {"ru"},
			loc_text("Первый выстрел залпа")),

	--[+ Headhunter - Охотник за головами +]--
	-- create_template("trait_bespoke_084_ext_ru",
		-- {"loc_trait_bespoke_weakspot_stacking_crit_chance"}, {"ru"},
			-- loc_text("Охотник за головами")),

	--[+ Between the Eyes - Промеж глаз +]--
	-- create_template("trait_bespoke_085_ext_ru",
		-- {"loc_trait_bespoke_suppression_negation_on_weakspot"}, {"ru"},
			-- loc_text("Промеж глаз")),

	--[+ Blaze Away - Стрельба без устали +]-- -- руоф Энтузиазм
	create_template("trait_bespoke_086_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_continuous_fire"}, {"ru"},
			loc_text("Стрельба без устали")),

	--[+ Powderburn - Пороховой ожог +]--
	-- create_template("trait_bespoke_087_ext_ru",
		-- {"loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills"}, {"ru"},
			-- loc_text("Пороховой ожог")),

	--[+ Cavalcade - Кавалькада +]--
	-- create_template("trait_bespoke_088_ext_ru",
		-- {"loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire"}, {"ru"},
			-- loc_text("Кавалькада")),

	--[+ Pinning Fire - Подавляющий огонь +]-- -- руоф Схватывающий огонь
	create_template("trait_bespoke_089_ext_ru",
		{"loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies"}, {"ru"},
			loc_text("Подавляющий огонь")),

	--[+ Run 'n' Gun (Run and Gun) - Стреляй и беги +]--
	-- create_template("trait_bespoke_090_ext_ru",
		-- {"loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats"}, {"ru"},
			-- loc_text("Стреляй и беги")),

	--[+ Puncture - Прокол +]--
	-- create_template("trait_bespoke_091_ext_ru",
		-- {"loc_trait_bespoke_bleed_on_ranged"}, {"ru"},
			-- loc_text("Прокол")),

	--[+ Lethal Proximity - Смертельное сближение +]--
	create_template("trait_bespoke_092_ext_ru",
		{"loc_trait_bespoke_close_explosion"}, {"ru"},
			loc_text("Смертельное сближение")),

	--[+ Point Blank - В упор +]--
	-- create_template("trait_bespoke_093_ext_ru",
		-- {"loc_trait_bespoke_crit_chance_bonus_on_melee_kills"}, {"ru"},
			-- loc_text("В упор")),

	--[+ Execution - Казнь +]--
	-- create_template("trait_bespoke_094_ext_ru",
		-- {"loc_trait_bespoke_damage_vs_stagger"}, {"ru"},
			-- loc_text("Казнь")),

	--[+ Gloryhunter - Охотник за славой +]--
	-- create_template("trait_bespoke_095_ext_ru",
		-- {"loc_trait_bespoke_toughness_on_elite_kills"}, {"ru"},
			-- loc_text("Охотник за славой")),

	--[+ Surge - Энергетический всплеск +]-- -- руоф Импульс
	create_template("trait_bespoke_096_ext_ru",
		{"loc_trait_bespoke_double_shot_on_crit"}, {"ru"},
			loc_text("Энергетический всплеск")),

	--[+ Warp Flurry - Варп-шквал +]--
	-- create_template("trait_bespoke_097_ext_ru",
		-- {"loc_trait_bespoke_faster_charge_on_chained_secondary_attacks"}, {"ru"},
			-- loc_text("Варп-шквал")),

	--[+ Warp Nexus - Связь с варпом +]-- -- руоф Варп-сектор
	create_template("trait_bespoke_098_ext_ru",
		{"loc_trait_bespoke_increased_crit_chance_scaled_on_peril"}, {"ru"},
			loc_text("Связь с варпом")),

	--[+ Transfer Peril - Перемещение опасности +]-- -- руоф Перемещение угрозы
	create_template("trait_bespoke_099_ext_ru",
		{"loc_trait_bespoke_peril_vent_on_weakspot_hit"}, {"ru"},
			loc_text("Перемещение опасности")),

	--[+ Rending Shockwave - Разрушительная волна +]--
	-- create_template("trait_bespoke_100_ext_ru",
		-- {"loc_trait_bespoke_rend_armor_on_aoe_charge"}, {"ru"},
			-- loc_text("Разрушительная волна")),

	--[+ Focused Channelling - Сосредоточенный призыв +]--
	-- create_template("trait_bespoke_101_ext_ru",
		-- {"loc_trait_bespoke_uninterruptable_while_charging_and_movement"}, {"ru"},
			-- loc_text("Сосредоточенный призыв")),

	--[+ Blazing Spirit - Пылающий дух +]-- -- руоф Пламенный дух
	create_template("trait_bespoke_102_ext_ru",
		{"loc_trait_bespoke_warpfire_burn_on_crit"}, {"ru"},
			loc_text("Пылающий дух")),

	--[+ Penetrating Flame - Проникающее пламя +]-- -- руоф Убойное пламя
	create_template("trait_bespoke_103_ext_ru",
		{"loc_trait_bespoke_armor_rending_from_dot_burning"}, {"ru"},
			loc_text("Проникающее пламя")),

	--[+ Showstopper - Взрывной финал +]-- -- руоф Театральная пауза
	create_template("trait_bespoke_104_ext_ru",
		{"loc_trait_bespoke_chance_to_explode_elites_on_kill"}, {"ru"},
			loc_text("Взрывной финал")),

	--[+ Infernus - Инфернус +]--
	-- create_template("trait_bespoke_105_ext_ru",
		-- {"loc_trait_bespoke_burninating_on_crit"}, {"ru"},
			-- loc_text("Инфернус")),

	--[+ Efficiency - Эффективность +]--
	-- create_template("trait_bespoke_106_ext_ru",
		-- {"loc_trait_bespoke_first_shot_ammo_cost_reduction"}, {"ru"},
			-- loc_text("Эффективность")),

	--[+ Concentrated Fire - Сосредоточенный огонь +]-- -- руоф Интенсивный огонь
	create_template("trait_bespoke_107_ext_ru",
		{"loc_trait_bespoke_crit_chance_on_chained_weakspot_hits"}, {"ru"},
			loc_text("Сосредоточенный огонь")),

	--[+ Desperado - Сорвиголова +]--
	-- create_template("trait_bespoke_108_ext_ru",
		-- {"loc_trait_bespoke_crit_chance_on_successful_dodge"}, {"ru"},
			-- loc_text("Сорвиголова")),

	--[+ Reassuringly Accurate - Успокаивающая точность +]-- -- руоф Внушительная точность
	create_template("trait_bespoke_109_ext_ru",
		{"loc_trait_bespoke_toughness_on_crit_kills"}, {"ru"},
			loc_text("Успокаивающая точность")),

	--[+ Flechette - Флешетта +]--
	-- create_template("trait_bespoke_110_ext_ru",
		-- {"loc_trait_bespoke_bleed_on_crit_ranged"}, {"ru"},
			-- loc_text("Флешетта")),

	--[+ Man-Stopper - Человекоостанавливатель +]-- -- руоф Усмирение
	create_template("trait_bespoke_111_ext_ru",
		{"loc_trait_bespoke_cleave_on_crit"}, {"ru"},
			loc_text("Человекоостанавливатель")),

	--[+ Scattershot - Выстрел дробью +]-- -- руоф Разброс
	create_template("trait_bespoke_112_ext_ru",
		{"loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot"}, {"ru"},
			loc_text("Выстрел дробью")),

	--[+ Full Bore - Полный калибр +]-- -- руоф Напор
	create_template("trait_bespoke_113_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all"}, {"ru"},
			loc_text("Полный калибр")),

	--[+ Both Barrels - Дуплет +]--
	-- create_template("trait_bespoke_114_ext_ru",
		-- {"loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill"}, {"ru"},
			-- loc_text("Дуплет")),

	--[+ Trickshooter - Меткий стрелок +]--
	-- create_template("trait_bespoke_115_ext_ru",
		-- {"loc_trait_bespoke_power_bonus_on_chained_weakspot_hits"}, {"ru"},
			-- loc_text("Меткий стрелок")),

	--[+ Hand-Cannon - Ручная пушка +]--
	-- create_template("trait_bespoke_116_ext_ru",
		-- {"loc_trait_bespoke_rending_on_crit"}, {"ru"},
			-- loc_text("Ручная пушка")),

	--[+ Shattering Impact - Сокрушающий удар +]-- -- руоф Рассеивающий импульс
	create_template("trait_bespoke_117_ext_ru",
		{"loc_trait_bespoke_armor_rend_on_projectile_hit"}, {"ru"},
			loc_text("Сокрушающий удар")),

	--[+ Everlasting Flame - Неугасимое пламя +]-- -- руоф Бесконечное пламя
	create_template("trait_bespoke_118_ext_ru",
		{"loc_trait_bespoke_ammo_spent_from_reserve_on_crit"}, {"ru"},
			loc_text("Неугасимое пламя")),

	--[+ Quickflame - Скорое пламя +]-- -- руоф Воспламенение
	create_template("trait_bespoke_119_ext_ru",
		{"loc_trait_bespoke_faster_reload_on_empty_clip"}, {"ru"},
			loc_text("Скорое пламя")),

	--[+ Fan the Flames - Разжечь пламя +]-- -- руоф Раздувая пламя
	create_template("trait_bespoke_120_ext_ru",
		{"loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning"}, {"ru"},
			loc_text("Разжечь пламя")),

	--[+ Overpressure - Избыточное давление +]--
	-- create_template("trait_bespoke_121_ext_ru",
		-- {"loc_trait_bespoke_power_scales_with_clip_percentage"}, {"ru"},
			-- loc_text("Избыточное давление")),

	--[+ Hot-Shot - Жгучий выстрел +]-- -- руоф В точку
	create_template("trait_bespoke_122_ext_ru",
		{"loc_trait_bespoke_cleave_on_weakspot_hits"}, {"ru"},
			loc_text("Жгучий выстрел")),

	--[+ Weight of Fire - Мощь огня +]-- -- руоф Плотность огня
	create_template("trait_bespoke_123_ext_ru",
		{"loc_trait_bespoke_faster_charge_on_chained_attacks"}, {"ru"},
			loc_text("Мощь огня")),

	--[+ Armourbane - Бронебой +]--
	-- create_template("trait_bespoke_124_ext_ru",
		-- {"loc_trait_bespoke_rend_armor_on_charged_shots"}, {"ru"},
			-- loc_text("Бронебой")),

	--[+ Power Blast - Мощный выстрел +]-- -- руоф Мощный взрыв
	create_template("trait_bespoke_125_ext_ru",
		{"loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time"}, {"ru"},
			loc_text("Мощный выстрел")),

	--[+ Gets Hot! - Критическая жара! +]-- -- руоф Становится жарко!
	create_template("trait_bespoke_126_ext_ru",
		{"loc_trait_bespoke_crit_chance_scaled_on_heat"}, {"ru"},
			loc_text("Критическая жара!")),

	--[+ Volatile - Испарение +]--
	-- create_template("trait_bespoke_127_ext_ru",
		-- {"loc_trait_bespoke_lower_overheat_gives_faster_charge"}, {"ru"},
			-- loc_text("Испарение")),

	--[+ Blaze Away - Стрельба без устали +]-- ALT --  -- руоф Энтузиазм
	create_template("trait_bespoke_128_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_continuous_fire_alternative"}, {"ru"},
			loc_text("Стрельба без устали")),

	--[+ Rising Heat - Нарастающий жар +]-- -- руоф Сильная жара
	create_template("trait_bespoke_129_ext_ru",
		{"loc_trait_bespoke_power_bonus_scaled_on_heat"}, {"ru"},
			loc_text("Нарастающий жар")),

	--[+ Optimised Cooling - Оптимизированное охлаждение +]--
	-- create_template("trait_bespoke_130_ext_ru",
		-- {"loc_trait_bespoke_reduced_heat_on_continuous"}, {"ru"},
			-- loc_text("Оптимизированное охлаждение")),

	--[+ Focused Cooling - Сфокусированное охлаждение +]-- -- руоф Сосредоточенное охлаждение
	create_template("trait_bespoke_131_ext_ru",
		{"loc_trait_bespoke_reduced_overheat_on_crits"}, {"ru"},
			loc_text("Сфокусированное охлаждение")),

	--[+ Gauntlet Momentum - Импульс перчатки +]-- -- руоф Перчатка моментума
	create_template("trait_bespoke_132_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_chained_melee"}, {"ru"},
			loc_text("Импульс перчатки")),

	--[+ Pulverise - Измельчение +]-- -- руоф Пульверизация
	create_template("trait_bespoke_133_ext_ru",
		{"loc_trait_bespoke_crit_chance_on_melee_kill"}, {"ru"},
			loc_text("Измельчение")),

	--[+ Disruptive - Разрывной эффект +]--
	-- create_template("trait_bespoke_134_ext_ru",
		-- {"loc_trait_bespoke_melee_power_bonus_after_explosion"}, {"ru"},
			-- loc_text("Разрывной эффект")),

	--[+ Explosive Offensive - Взрывное наступление +]--
	-- create_template("trait_bespoke_135_ext_ru",
		-- {"loc_trait_bespoke_power_bonus_after_weapon_special_multiple"}, {"ru"},
			-- loc_text("Взрывное наступление")),

	--[+ Pinpointing target - Бомбардировка цели +]-- -- руоф Определение цели
	-- create_template("trait_bespoke_136_ext_ru",
		-- {"loc_trait_bespoke_power_bonus_based_on_charge_time_ranged"}, {"ru"},
			-- loc_text("Определение цели")),

	--[+ Charmed Reload - Зачарованная перезарядка +]--
	-- create_template("trait_bespoke_137_ext_ru",
		-- {"loc_trait_bespoke_ammo_refill_from_reserve_on_crit"}, {"ru"},
			-- loc_text("Зачарованная перезарядка")),

	--[+ Overwhelming Fire - Подавляющий огонь +]-- -- руоф Огонь на поражение
	create_template("trait_bespoke_138_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target"}, {"ru"},
			loc_text("Подавляющий огонь")),

	--[+ Can opener - Открывашка +]--
	-- create_template("trait_bespoke_139_ext_ru",
		-- {"loc_trait_bespoke_armor_rending_bayonette"}, {"ru"},
			-- loc_text("Открывашка")),

	--[+ Born in blood - Рождённый в крови +]-- -- руоф РождЕнный в крови
	-- create_template("trait_bespoke_140_ext_ru",
		-- {"loc_trait_bespoke_toughness_on_close_range_kills"}, {"ru"},
			-- loc_text("Рождённый в крови")),

	--[+ Pierce - Пробивание +]-- -- руоф Прокол
	-- create_template("trait_bespoke_141_ext_ru",
		-- {"loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger"}, {"ru"},
			-- loc_text("Прокол")),

	--[+ Punishing Fire - Карательный обстрел +]--
	-- create_template("trait_bespoke_142_ext_ru",
		-- {"loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave"}, {"ru"},
			-- loc_text("Карательный обстрел")),

	--[+ Inspiring Barrage - Вдохновляющий обстрел +]-- ALT -- руоф Вдохновляющий натиск
	create_template("trait_bespoke_143_ext_ru",
		{"loc_trait_bespoke_toughness_on_continuous_fire_alternative"}, {"ru"},
			loc_text("Вдохновляющий обстрел")),

	--[+ Expansive - Экспансивный +]-- -- руоф Расширение
	create_template("trait_bespoke_144_ext_ru",
		{"loc_trait_bespoke_weapon_special_power_bonus_after_one_shots"}, {"ru"},
			loc_text("Экспансивный")),

	--[+ Shrapnel - Шрапнель +]--
	-- create_template("trait_bespoke_145_ext_ru",
		-- {"loc_trait_bespoke_close_explosion_applies_bleed"}, {"ru"},
			-- loc_text("Шрапнель")),

	--[+ Blast Zone - Зона взрыва +]--
	-- create_template("trait_bespoke_146_ext_ru",
		-- {"loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire"}, {"ru"},
			-- loc_text("Зона взрыва")),

	--[+ Adhesive Charge - Липкий заряд +]-- -- руоф Цепной заряд
	create_template("trait_bespoke_147_ext_ru",
		{"loc_trait_bespoke_grenades_stick_to_monsters_and_damage"}, {"ru"},
			loc_text("Липкий заряд")),

	--[+ Marksman's Reflex - Рефлекс стрелка +]--
	-- create_template("trait_bespoke_148_ext_ru",
		-- {"loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed"}, {"ru"},
			-- loc_text("Рефлекс стрелка")),


--[+ ++TALENTS - ТАЛАНТЫ ++ +]--
--[+ +NODES - УЗЛЫ+ +]--
	--[+ Critical Chance Boost - Повышение шанса Критического удара +]-- Усиление вероятности крит. удара
	-- create_template("talent_tree_oper_mod_006_en",
		-- {"loc_talent_crit_chance_low"}, {"en"},
			-- loc_text("Critical Chance Boost")), -- crit_chance:+5% -- Psyker, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_006_ru",
		{"loc_talent_crit_chance_low"}, {"ru"},
			loc_text("Повышение шанса Критического удара")),

	--[+ Health Boost Low - Повышение Здоровья малое +]--
	create_template("talent_tree_oper_mod_005_l_en",
		{"loc_talent_health_low"}, {"en"},
			loc_text("Health Boost Low")), -- health:+5% -- Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_005_l_ru",
		{"loc_talent_health_low"}, {"ru"},
			loc_text("Повышение Здоровья малое")),

	--[+ Health Boost Medium - Повышение Здоровья среднее +]--
	create_template("talent_tree_oper_mod_005_m_en",
		{"loc_talent_health_medium"}, {"en"},
			loc_text("Health Boost Medium")), -- health:+10% -- Psyker, Ogryn, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_005_m_ru",
		{"loc_talent_health_medium"}, {"ru"},
			loc_text("Повышение Здоровья среднее")),

	--[+ Heavy Melee Damage Boost Low - Повышение урона тяжёлых атак ближнего боя малое +]--
	create_template("talent_tree_oper_mod_014_l_en",
		{"loc_talent_melee_heavy_damage_low"}, {"en"},
			loc_text("Heavy Melee Damage Boost Low")), -- melee_heavy_damage:+5% -- Ogryn
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_014_l_ru",
		{"loc_talent_melee_heavy_damage_low"}, {"ru"},
			loc_text("Повышение урона тяжёлых атак ближнего боя малое")),

	--[+ Heavy Melee Damage Boost Medium - Повышение урона тяжёлых атак ближнего боя среднее +]--
	create_template("talent_tree_oper_mod_014_m_en",
		{"loc_talent_melee_heavy_damage_medium"}, {"en"},
			loc_text("Heavy Melee Damage Boost Medium")), -- melee_heavy_damage:+10% -- Ogryn
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_014_m_ru",
		{"loc_talent_melee_heavy_damage_medium"}, {"ru"},
			loc_text("Повышение урона тяжёлых атак ближнего боя среднее")),

	--[+ Inspiring Presence - Вдохновляющее присутствие +]--
	-- create_template("talent_tree_oper_mod_003_en",
		-- {"loc_talent_coherency_regen_low"}, {"en"},
			-- loc_text("Inspiring Presence")), -- coherency_regen:+10% -- Veteran
	--[+ Russian +]--
	-- create_template("talent_tree_oper_mod_003_ru",
		-- {"loc_talent_coherency_regen_low"}, {"ru"},
			-- loc_text("Вдохновляющее присутствие")),

	--[+ Melee Damage Boost Low - Повышение урона атак ближнего боя малое +]--
	create_template("talent_tree_oper_mod_008_en",
		{"loc_talent_melee_damage_boost_low"}, {"en"},
			loc_text("Melee Damage Boost Low")), -- melee_damage:+5% -- Ogryn, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_008_ru",
		{"loc_talent_melee_damage_boost_low"}, {"ru"},
			loc_text("Повышение урона атак ближнего боя малое")),

	--[+ Melee Damage Boost Medium - Повышение урона атак ближнего боя среднее +]--
	create_template("talent_tree_oper_mod_008_1_en",
		{"loc_talent_melee_damage_boost_medium"}, {"en"},
			loc_text("Melee Damage Boost Medium")), -- melee_damage:+10% -- Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_008_1_ru",
		{"loc_talent_melee_damage_boost_medium"}, {"ru"},
			loc_text("Повышение урона атак ближнего боя среднее")),

	--[+ Movement Speed Boost - Повышение скорости движения +]--
	-- create_template("talent_tree_oper_mod_007_en",
		-- {"loc_talent_movement_speed_low"}, {"en"},
			-- loc_text("Movement Speed Boost")), -- movement_speed:+5%. -- Psyker, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_007_en",{"loc_talent_movement_speed_low"}, {"ru"},
			loc_text("Повышение скорости движения")),

	--[+ Peril Resistance - Сопротивление опасности +]--
	-- create_template("talent_tree_oper_mod_001_en",
		-- {"loc_talent_warp_charge_low"}, {"en"},
			-- loc_text("Peril Resistance")), -- warp_charge:-5% -- Psyker
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_001_en",{"loc_talent_warp_charge_low"}, {"ru"},
			loc_text("Сопротивление опасности")),

	--[+ Ranged Damage Boost Low - Повышение урона дальнего боя малое +]--
	create_template("talent_tree_oper_mod_004_en",
		{"loc_talent_ranged_damage_low"}, {"en"},
			loc_text("Ranged Damage Boost Low")), -- ranged_damage:+5% -- Psyker, Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_004_ru",
		{"loc_talent_ranged_damage_low"}, {"ru"},
			loc_text("Повышение урона дальнего боя малое")),

	--[+ Ranged Damage Boost Medium - Повышение урона дальнего боя среднее +]--
	create_template("talent_tree_oper_mod_004_en",
		{"loc_talent_ranged_damage_medium"}, {"en"},
			loc_text("Ranged Damage Boost Medium")), -- ranged_damage:+5% -- Psyker, Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_004_ru",
		{"loc_talent_ranged_damage_medium"}, {"ru"},
			loc_text("Повышение урона дальнего боя среднее")),

	--[+ Reload Boost - Повышение скорости перезарядки +]--
	-- create_template("talent_tree_oper_mod_011_en",
		-- {"loc_talent_reload_speed_low"}, {"en"},
			-- loc_text("Reload Boost")), -- reload_speed: +5% -- Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_011_ru",
		{"loc_talent_reload_speed_low"}, {"ru"},
			loc_text("Повышение скорости перезарядки")),

	--[+ Rending Boost - Повышение пробивания брони +]--
	-- create_template("talent_tree_oper_mod_013_en",
		-- {"loc_talent_armor_pen_low"}, {"en"},
			-- loc_text("Rending Boost")), -- rending: +5% -- Ogryn
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_013_ru",
		{"loc_talent_armor_pen_low"}, {"ru"},
			loc_text("Повышение пробивания брони")),

	--[+ Stamina Boost - Повышение выносливости +]--
	-- create_template("talent_tree_oper_mod_009_en",
		-- {"loc_talent_stamina_low"}, {"en"},
			-- loc_text("Stamina Boost")), -- stamina: +1 -- Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_009_ru",
		{"loc_talent_stamina_low"}, {"ru"},
			loc_text("Повышение выносливости")),

	--[+ Stamina Regeneration Boost - Повышение восстановления выносливости +]--
	-- create_template("talent_tree_oper_mod_012_en",
		-- {"loc_talent_stamina_regen_delay"}, {"en"},
			-- loc_text("Stamina Regeneration Boost")), -- duration: 0.25 -- Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_012_ru",
		{"loc_talent_stamina_regen_delay"}, {"ru"},
			loc_text("Повышение восстановления выносливости")),

	--[+ Suppression Boost - Повышение подавления врагов +]--
	-- create_template("talent_tree_oper_mod_010_en",
		-- {"loc_talent_suppression_low"}, {"en"},
			-- loc_text("Suppression Boost")), -- suppression: +25% -- Ogryn, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_010_ru",
		{"loc_talent_suppression_low"}, {"ru"},
			loc_text("Повышение подавления")),

	--[+ Toughness Boost Low - Повышение стойкости малое +]--
	create_template("talent_tree_oper_mod_000_l_en",
		{"loc_talent_toughness_boost_low"}, {"en"},
			loc_text("Toughness Boost Low")), -- toughness: +15% -- Psyker, Ogryn, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_000_l_ru",
		{"loc_talent_toughness_boost_low"}, {"ru"},
			loc_text("Повышение стойкости малое")),

	--[+ Toughness Boost Medium - Повышение стойкости среднее +]--
	create_template("talent_tree_oper_mod_000_m_en",
		{"loc_talent_toughness_boost_medium"}, {"en"},
			loc_text("Toughness Boost Medium")), -- toughness:+25% -- Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_000_m_ru",
		{"loc_talent_toughness_boost_medium"}, {"ru"},
			loc_text("Повышение стойкости среднее")),

	--[+ Toughness Damage Reduction Low - Снижение урона стойкости малое +]--
	create_template("talent_tree_oper_mod_002_l_en",
		{"loc_talent_toughness_damage_reduction_low"}, {"en"},
			loc_text("Toughness Damage Reduction Low")), -- toughness:+5% -- Psyker, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_002_l_ru",
		{"loc_talent_toughness_damage_reduction_low"}, {"ru"},
			loc_text("Снижение урона стойкости малое")),

	--[+ Toughness Damage Reduction Medium - Снижение урона стойкости среднее +]--
	create_template("talent_tree_oper_mod_002_m_en",{"loc_talent_toughness_damage_reduction_medium"}, {"en"},
			loc_text("Toughness Damage Reduction Medium")), -- toughness:+10% -- Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_002_m_en",{"loc_talent_toughness_damage_reduction_medium"}, {"ru"},
			loc_text("Снижение урона стойкости среднее")),


--[+ ++PSYKER - ПСАЙКЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ Blitz 0 - Brain Burst +]--
	--[+ Russian +]-- Взрыв мозга -- руоф Взрыв разума
	create_template("talent_tree_psy_blitz0_000_ru",
		{"loc_ability_psyker_smite"}, {"ru"},
			loc_text("Взрыв мозга")),

	--[+ Blitz 1 - Brain Rupture +]--
	--[+ Russian +]-- Разрыв мозга
	-- create_template("talent_tree_psy_blitz1_000_ru",
		-- {"loc_talent_psyker_brain_burst_improved"}, {"ru"},
			-- loc_text("Разрыв мозга")),

	--[+ Blitz 1-1 - Kinetic Resonance +]--
	--[+ Russian +]-- Кинетический резонанс
	-- create_template("talent_tree_psy_blitz1_001_ru",
		-- {"loc_talent_psyker_ability_increase_brain_burst_speed"}, {"ru"},
			-- loc_text("Кинетический резонанс")),

	--[+ Blitz 1-2 - Kinetic Flayer +]--
	--[+ Russian +]-- Кинетический живодёр -- руоф Кинетический истребитель
	create_template("talent_tree_psy_blitz1_002_ru",
		{"loc_talent_psyker_smite_on_hit"}, {"ru"},
			loc_text("Кинетический живодёр")),

	--[+ Blitz 2 - Smite +]--
	--[+ Russian +]-- Сокрушение
	-- create_template("talent_tree_psy_blitz2_000_ru",
		-- {"loc_ability_psyker_chain_lightning"}, {"ru"},
			-- loc_text("Сокрушение")),

	--[+ Blitz 2-1 - Lightning Storm +]--
	--[+ Russian +]-- Гроза
	-- create_template("talent_tree_psy_blitz2_001_en",
		-- {"loc_talent_psyker_increased_chain_lightning_size"}, {"ru"},
			-- loc_text("Гроза")),

	--[+ Blitz 2-2 - Enfeeble +]--
	--[+ Russian +]-- Ослабление
	-- create_template("talent_tree_psy_blitz2_002_ru",
		-- {"loc_talent_psyker_increased_chain_lightning_improved_target_buff"}, {"ru"},
			-- loc_text("Ослабление")),

	--[+ Blitz 2-3 - Charged Strike +]--
	-- create_template("talent_tree_psy_blitz2_003_en",
		-- {"loc_talent_psyker_chain_lightning_heavy_attacks"}, {"en"},
			-- loc_text("Charged Strike")),
	--[+ Russian +]-- Заряженный удар
	-- create_template("talent_tree_psy_blitz2_003_ru",
		-- {"loc_talent_psyker_chain_lightning_heavy_attacks"}, {"ru"},
			-- loc_text("Заряженный удар")),

	--[+ Blitz 3 - Assail +]--
	-- create_template("talent_tree_psy_blitz3_000_en",
		-- {"loc_ability_psyker_blitz_throwing_knives"}, {"en"},
			-- loc_text("Assail")),
	--[+ Russian +]-- Нападение
	-- create_template("talent_tree_psy_blitz3_000_ru",
		-- {"loc_ability_psyker_blitz_throwing_knives"}, {"ru"},
			-- loc_text("Нападение")),

	--[+ Blitz 3-1 - Ethereal Shards +]--
	-- create_template("talent_tree_psy_blitz3_001_en",
		-- {"loc_talent_psyker_throwing_knives_pierce"}, {"en"},
			-- loc_text("Ethereal Shards")),
	--[+ Russian +]-- Эфирные осколки -- руоф Эфирные частицы
	create_template("talent_tree_psy_blitz3_001_ru",
		{"loc_talent_psyker_throwing_knives_pierce"}, {"ru"},
			loc_text("Эфирные осколки")),

	--[+ Blitz 3-2 - Quick Shards +]--
	-- create_template("talent_tree_psy_blitz3_002_en",
		-- {"loc_talent_psyker_throwing_knives_reduced_cooldown"}, {"en"},
			-- loc_text("Quick Shards")),
	--[+ Russian +]-- Быстрые осколки -- руоф Быстрые частицы
	create_template("talent_tree_psy_blitz3_002_ru",
		{"loc_talent_psyker_throwing_knives_reduced_cooldown"}, {"ru"},
			loc_text("Быстрые осколки")),

--[+ +AURA - АУРА+ +]--
	--[+ Aura 0 - The Quickening +]--
	-- create_template("talent_tree_psy_aura0_000_en",
		-- {"loc_talent_psyker_aura_reduced_ability_cooldown"}, {"en"},
			-- loc_text("The Quickening")),
	--[+ Russian +]-- Ускорение
	-- create_template("talent_tree_psy_aura0_000_ru",
		-- {"loc_talent_psyker_aura_reduced_ability_cooldown"}, {"ru"},
			-- loc_text("Ускорение")),

	--[+ Aura 1 - Kinetic Presence +]--
	-- create_template("talent_tree_psy_aura1_000_en",
		-- {"loc_talent_psyker_base_3"}, {"en"},
			-- loc_text("Kinetic Presence")),
	--[+ Russian +]-- Кинетическое присутствие
	-- create_template("talent_tree_psy_aura1_000_ru",
		-- {"loc_talent_psyker_base_3"}, {"ru"},
			-- loc_text("Кинетическое присутствие")),

	--[+ Aura 2 - Seer's Presence +]--
	-- create_template("talent_tree_psy_aura2_000_en",
		-- {"loc_talent_psyker_cooldown_aura_improved"}, {"en"},
			-- loc_text("Seer's Presence")),
	--[+ Russian +]-- Присутствие провидца
	-- create_template("talent_tree_psy_aura2_000_ru",
		-- {"loc_talent_psyker_cooldown_aura_improved"}, {"ru"},
			-- loc_text("Присутствие провидца")),

	--[+ Aura 3 - Prescience +]--
	-- create_template("talent_tree_psy_aura3_000_en",
		-- {"loc_ability_psyker_gunslinger_aura"}, {"en"},
			-- loc_text("Prescience")),
	--[+ Russian +]-- Предвидение
	-- create_template("talent_tree_psy_aura3_000_ru",
		-- {"loc_ability_psyker_gunslinger_aura"}, {"ru"},
			-- loc_text("Предвидение")),

--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ Ability 0 - Psykinetic's Wrath +]--
	--create_template("talent_tree_psy_abil0_000_en",
		-- {"loc_talent_psyker_2_combat"}, {"en"},
			-- loc_text("Psykinetic's Wrath")),
	--[+ Russian +]-- Гнев психокинетика -- руоф Психокинетический гнев
	create_template("talent_tree_psy_abil0_000_ru",
		{"loc_talent_psyker_2_combat"}, {"ru"},
			loc_text("Гнев психокинетика")),

	--[+ Ability 1 - Venting Shriek +]--
	--create_template("talent_tree_psy_abil1_000_en",
		-- {"loc_talent_psyker_shout_vent_warp_charge"}, {"en"},
			-- loc_text("Venting Shriek")),
	--[+ Russian +]-- Сбрасывающий вопль -- руоф Вырвавшийся вопль
	create_template("talent_tree_psy_abil1_000_ru",
		{"loc_talent_psyker_shout_vent_warp_charge"}, {"ru"},
			loc_text("Сбрасывающий вопль")),

	--[+ Ability 1-1 - Becalming Eruption +]--
	-- create_template("talent_tree_psy_abil1_001_en",
		-- {"loc_talent_psyker_shout_reduces_warp_charge_generation"}, {"en"},
			-- loc_text("Becalming Eruption")),
	--[+ Russian +]-- Успокаивающее извержение -- руоф Затихающее извержение
	create_template("talent_tree_psy_abil1_001_ru",
		{"loc_talent_psyker_shout_reduces_warp_charge_generation"}, {"ru"},
			loc_text("Успокаивающее извержение")),

	--[+ Ability 1-2 - Warp Rupture +]--
	-- create_template("talent_tree_psy_abil1_002_en",
		-- {"loc_talent_psyker_shout_damage_per_warp_charge"}, {"en"},
			-- loc_text("Warp Rupture")),
	--[+ Russian +]-- Разрыв варпа -- руоф Варп-разрыв
	create_template("talent_tree_psy_abil1_002_en",
		{"loc_talent_psyker_shout_damage_per_warp_charge"}, {"ru"},
			loc_text("Разрыв варпа")),

	--[+ Ability 1-3 - Warp Creeping Flames +]--
	-- create_template("talent_tree_psy_abil1_003_en",
		-- {"loc_talent_psyker_warpfire_on_shout"}, {"en"},
			-- loc_text("Creeping Flames")),
	--[+ Russian +]-- Ползучее пламя -- руоф Раздувающееся пламя
	create_template("talent_tree_psy_abil1_003_ru",
		{"loc_talent_psyker_warpfire_on_shout"}, {"ru"},
			loc_text("Ползучее пламя")),

	--[+ Ability 2 - Telekine Shield +]--
	-- create_template("talent_tree_psy_abil2_000_en",
		-- {"loc_talent_psyker_combat_ability_shield"}, {"en"},
			-- loc_text("Telekine Shield")),
	--[+ Russian +]-- Телекинетический щит
	-- create_template("talent_tree_psy_abil2_000_ru",
		-- {"loc_talent_psyker_combat_ability_shield"}, {"ru"},
			-- loc_text("Телекинетический щит")),

	--[+ Ability 2-1 - Bolstered Shield +]--
	-- create_template("talent_tree_psy_abil2_001_en",
		-- {"loc_talent_psyker_force_field_charges"}, {"en"},
			-- loc_text("Bolstered Shield")),
	--[+ Russian +]-- Усиленный щит
	-- create_template("talent_tree_psy_abil2_001_ru",
		-- {"loc_talent_psyker_force_field_charges"}, {"ru"},
			-- loc_text("Усиленный щит")),

	--[+ Ability 2-2 - Enervating Threshold +]--
	-- create_template("talent_tree_psy_abil2_002_en",
		-- {"loc_talent_psyker_force_field_stun_increased"}, {"en"},
			-- loc_text("Enervating Threshold")),
	--[+ Russian +]-- Порог ослабления
	-- create_template("talent_tree_psy_abil2_002_ru",
		-- {"loc_talent_psyker_force_field_stun_increased"}, {"ru"},
			-- loc_text("Порог ослабления")),

	--[+ Ability 2-3 - Telekine Dome +]--
	-- create_template("talent_tree_psy_abil2_003_en",
		-- {"loc_talent_psyker_force_field_dome"}, {"en"},
			-- loc_text("Telekine Dome")),
	--[+ Russian +]-- Телекинический купол
	-- create_template("talent_tree_psy_abil2_003_ru",
		-- {"loc_talent_psyker_force_field_dome"}, {"ru"},
			-- loc_text("Телекинический купол")),

	--[+ Ability 2-4 - Sanctuary +]--
	-- create_template("talent_tree_psy_abil2_004_en",
		-- {"loc_talent_psyker_force_field_grants_toughness"}, {"en"},
			-- loc_text("Sanctuary")),
	--[+ Russian +]-- Убежище -- руоф Святилище
	create_template("talent_tree_psy_abil2_004_ru",
		{"loc_talent_psyker_force_field_grants_toughness"}, {"ru"},
			loc_text("Убежище")),

	--[+ Ability 3 - Scrier's Gaze +]--
	-- create_template("talent_tree_psy_abil3_000_en",
		-- {"loc_talent_psyker_combat_ability_overcharge_stance"}, {"en"},
			-- loc_text("Scrier's Gaze")),
	--[+ Russian +]-- Взор провидца -- руоф Взор Скрира
	create_template("talent_tree_psy_abil3_000_ru",
		{"loc_talent_psyker_combat_ability_overcharge_stance"}, {"ru"},
			loc_text("Взор провидца")),

	--[+ Ability 3-1 - Endurance +]--
	-- create_template("talent_tree_psy_abil3_001_en",
		-- {"loc_ability_psyker_overcharge_reduced_toughness_damage_taken"}, {"en"},
			-- loc_text("Endurance")),
	--[+ Russian +]-- Выносливость
	-- create_template("talent_tree_psy_abil3_001_ru",
		-- {"loc_ability_psyker_overcharge_reduced_toughness_damage_taken"}, {"ru"},
			-- loc_text("Выносливость")),

	--[+ Ability 3-2 - Precognition +]--
	-- create_template("talent_tree_psy_abil3_002_en",
		-- {"loc_ability_psyker_overcharge_weakspot"}, {"en"},
			-- loc_text("Precognition")),
	--[+ Russian +]-- Предвидение -- руоф Познание
	create_template("talent_tree_psy_abil3_002_en",
		{"loc_ability_psyker_overcharge_weakspot"}, {"ru"},
			loc_text("Предвидение")),

	--[+ Ability 3-3 - Warp Speed +]--
	-- create_template("talent_tree_psy_abil3_003_en",
		-- {"loc_ability_psyker_overcharge_movement_speed"}, {"en"},
			-- loc_text("Warp Speed")),
	--[+ Russian +]-- Варп-скорость
	-- create_template("talent_tree_psy_abil3_003_ru",
		-- {"loc_ability_psyker_overcharge_movement_speed"}, {"ru"},
			-- loc_text("Варп-скорость")),

	--[+ Ability 3-4 - Reality Anchor +]--
	-- create_template("talent_tree_psy_abil3_004_en",
		-- {"loc_ability_psyker_overcharge_reduced_warp_charge"}, {"en"},
			-- loc_text("Reality Anchor")),
	--[+ Russian +]-- Якорь реальности
	-- create_template("talent_tree_psy_abil3_004_ru",
		-- {"loc_ability_psyker_overcharge_reduced_warp_charge"}, {"ru"},
			-- loc_text("Якорь реальности")),

	--[+ Ability 3-5 - Warp Unbound +]--
	-- create_template("talent_tree_psy_abil3_005_en",
		-- {"loc_talent_psyker_overcharge_infinite_casting"}, {"en"},
			-- loc_text("Warp Unbound")),
	--[+ Russian +]-- Высвобождение варпа -- руоф Искажение варпа
	create_template("talent_tree_psy_abil3_005_ru",
		{"loc_talent_psyker_overcharge_infinite_casting"}, {"ru"},
			loc_text("Высвобождение варпа")),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ ТАЛАНТЫ+ +]--
	--[+ Keystone 1 - Warp Siphon +]--
	-- create_template("talent_tree_psy_keys1_000_en",
		-- {"loc_talent_psyker_souls"}, {"en"},
			-- loc_text("Warp Siphon")),
	--[+ Russian +]-- Переливание варпа -- руоф Варп-сифон
	create_template("talent_tree_psy_keys1_000_ru",
		{"loc_talent_psyker_souls"}, {"ru"},
			loc_text("Переливание варпа")),

	--[+ Keystone 1-1 - Inner Tranquility +]--
	-- create_template("talent_tree_psy_keys1_001_en",
		-- {"loc_talent_psyker_reduced_warp_charge_cost_venting_speed"}, {"en"},
			-- loc_text("Inner Tranquility")),
	--[+ Russian +]-- Внутреннее спокойствие
	-- create_template("talent_tree_psy_keys1_001_ru",
		-- {"loc_talent_psyker_reduced_warp_charge_cost_venting_speed"}, {"ru"},
			-- loc_text("Внутреннее спокойствие")),

	--[+ Keystone 1-2 - Essence Harvest +]--
	-- create_template("talent_tree_psy_keys1_002_en",
		-- {"loc_talent_psyker_toughness_regen_on_soul"}, {"en"},
			-- loc_text("Essence Harvest")),
	--[+ Russian +]-- Сбор сущностей -- руоф Сбор сущности
	create_template("talent_tree_psy_keys1_002_ru",
		{"loc_talent_psyker_toughness_regen_on_soul"}, {"ru"},
			loc_text("Сбор сущностей")),

	--[+ Keystone 1-3 - Empyrean Empowerment +]--
	-- create_template("talent_tree_psy_keys1_003_en",
		-- {"loc_talent_psyker_souls_increase_damage"}, {"en"},
			-- loc_text("Empyrean Empowerment")),
	--[+ Russian +]-- Эмпирейское усиление -- руоф Усиление влияния Эмпирея
	create_template("talent_tree_psy_keys1_003_ru",
		{"loc_talent_psyker_souls_increase_damage"}, {"ru"},
			loc_text("Эмпирейское усиление")),

	--[+ Keystone 1-4 - In Fire Reborn +]--
	-- create_template("talent_tree_psy_keys1_004_en",
		-- {"loc_talent_psyker_warpfire_generates_souls"}, {"en"},
			-- loc_text("In Fire Reborn")),
	--[+ Russian +]-- Возрождение в огне -- руоф В огне восстану
	create_template("talent_tree_psy_keys1_004_ru",
		{"loc_talent_psyker_warpfire_generates_souls"}, {"ru"},
			loc_text("Возрождение в огне")),

	--[+ Keystone 1-5 - Psychic Vampire +]--
	-- create_template("talent_tree_psy_keys1_005_en",
		-- {"loc_talent_psyker_souls_on_kill_coop"}, {"en"},
			-- loc_text("Psychic Vampire")),
	--[+ Russian +]-- Психический вампир
	-- create_template("talent_tree_psy_keys1_005_ru",
		-- {"loc_talent_psyker_souls_on_kill_coop"}, {"ru"},
			-- loc_text("Психический вампир")),

	--[+ Keystone 1-6 - Warp Battery +]--
	-- create_template("talent_tree_psy_keys1_006_en",
		-- {"loc_talent_psyker_increased_souls"}, {"en"},
			-- loc_text("Warp Battery")),
	--[+ Russian +]-- Варп-аккумулятор
	-- create_template("talent_tree_psy_keys1_006_ru",
		-- {"loc_talent_psyker_increased_souls"}, {"ru"},
			-- loc_text("Варп-аккумулятор")),

	--[+ Keystone 2 - Empowered Psionics +]--
	-- create_template("talent_tree_psy_keys2_000_en",
		-- {"loc_talent_psyker_empowered_ability"}, {"en"},
			-- loc_text("Empowered Psionics")),
	--[+ Russian +]-- руоф Усиленные псионики
	-- create_template("talent_tree_psy_keys2_000_ru",
		-- {"loc_talent_psyker_empowered_ability"}, {"ru"},
			-- loc_text("Усиленные псионики")),

	--[+ Keystone 2-1 - Bio-Lodestone +]--
	-- create_template("talent_tree_psy_keys2_001_en",
		-- {"loc_talent_psyker_increase_empower_chain_lighting_chance"}, {"en"},
			-- loc_text("Bio-Lodestone")),
	--[+ Russian +]-- Биопритяжение
	-- create_template("talent_tree_psy_keys2_001_ru",
		-- {"loc_talent_psyker_increase_empower_chain_lighting_chance"}, {"ru"},
			-- loc_text("Биопритяжение")),

	--[+ Keystone 2-2 - Psychic Leeching +]--
	-- create_template("talent_tree_psy_keys2_002_en",
		-- {"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies"}, {"en"},
			-- loc_text("Psychic Leeching")),
	--[+ Russian +]-- Психическое высасывание -- руоф Психическая пиявка
	create_template("talent_tree_psy_keys2_002_ru",
		{"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies"}, {"ru"},
			loc_text("Психическое высасывание")),

   --[+ Keystone 2-3 - Overpowering Souls +]--
	-- create_template("talent_tree_psy_keys2_003_en",
		-- {"loc_talent_psyker_empowered_ability_on_elite_kills"}, {"en"},
			-- loc_text("Overpowering Souls")),
	--[+ Russian +]-- Могучие души
	-- create_template("talent_tree_psy_keys2_003_ru",
		-- {"loc_talent_psyker_empowered_ability_on_elite_kills"}, {"ru"},
			-- loc_text("Могучие души")),

	--[+ Keystone 2-4 - Charged Up +]--
	-- create_template("talent_tree_psy_keys2_004_en",
		-- {"loc_talent_psyker_increased_empowered_chain_lightning_stacks"}, {"en"},
			-- loc_text("Charged Up")),
	--[+ Russian +]-- Заряженный -- руоф Зарядка
	create_template("talent_tree_psy_keys2_004_ru",
		{"loc_talent_psyker_increased_empowered_chain_lightning_stacks"}, {"ru"},
			loc_text("Заряженный")),

	--[+ Keystone 3 - Disrupt Destiny +]--
	-- create_template("talent_tree_psy_keys3_000_en",
		-- {"loc_talent_psyker_marked_enemies_passive"}, {"en"},
			-- loc_text("Disrupt Destiny")),
	--[+ Russian +]-- Прерывание судьбы -- руоф Разрушенная судьба
	create_template("talent_tree_psy_keys3_000_ru",
		{"loc_talent_psyker_marked_enemies_passive"}, {"ru"},
			loc_text("Прерывание судьбы")),

	--[+ Keystone 3-1 - Perfectionism +]--
	-- create_template("talent_tree_psy_keys3_001_en",
		-- {"loc_talent_psyker_mark_increased_max_stacks"}, {"en"},
			-- loc_text("Perfectionism")),
	--[+ Russian +]-- Перфекционизм
	-- create_template("talent_tree_psy_keys3_001_ru",
		-- {"loc_talent_psyker_mark_increased_max_stacks"}, {"ru"},
			-- loc_text("Перфекционизм")),

	--[+ Keystone 3-2 - Purloin Providence +]--
	-- create_template("talent_tree_psy_keys3_002_en",
		-- {"loc_talent_psyker_mark_kills_can_vent"}, {"en"},
			-- loc_text("Purloin Providence")),
	--[+ Russian +]-- Похищение провидения -- руоф Похищенное провидение
	create_template("talent_tree_psy_keys3_002_ru",
		{"loc_talent_psyker_mark_kills_can_vent"}, {"ru"},
			loc_text("Похищение провидения")),

	--[+ Keystone 3-3 - Lingering Influence +]--
	-- create_template("talent_tree_psy_keys3_003_en",
		-- {"loc_talent_psyker_mark_increased_duration"}, {"en"},
			-- loc_text("Lingering Influence")),
	--[+ Russian +]-- Длительное влияние -- руоф Длящееся влияние
	create_template("talent_tree_psy_keys3_003_ru",
		{"loc_talent_psyker_mark_increased_duration"}, {"ru"},
			loc_text("Длительное влияние")),

	--[+ Keystone 3-4 - Cruel Fortune +]--
	-- create_template("talent_tree_psy_keys3_004_en",
		-- {"loc_talent_psyker_mark_weakspot_stacks"}, {"en"},
			-- loc_text("Cruel Fortune")),
	--[+ Russian +]-- Жестокая судьба
	-- create_template("talent_tree_psy_keys3_004_ru",
		-- {"loc_talent_psyker_mark_weakspot_stacks"}, {"ru"},
			-- loc_text("Жестокая судьба")),

--[+ +PASSIVES - ПАССИВНЫЕ ТАЛАНТЫ+ +]--
	--[+ Passive 1 - Soulstealer +]--
	-- create_template("talent_tree_psy_pas_001_en",
		-- {"loc_talent_psyker_toughness_on_warp_kill"}, {"en"},
			-- loc_text("Soulstealer")),
	--[+ Russian +]-- Похититель душ -- руоф Похититель души
	create_template("talent_tree_psy_pas_001_ru",
		{"loc_talent_psyker_toughness_on_warp_kill"}, {"ru"},
			loc_text("Похититель душ")),

	--[+ Passive 2 - Mettle +]--
	-- create_template("talent_tree_psy_pas_002_en",
		-- {"loc_talent_psyker_crits_regen_tougness_and_movement_speed"}, {"en"},
			-- loc_text("Mettle")),
	--[+ Russian +]-- Ретивость
	-- create_template("talent_tree_psy_pas_002_ru",
		-- {"loc_talent_psyker_crits_regen_tougness_and_movement_speed"}, {"ru"},
			-- loc_text("Ретивость")),

	--[+ Passive 3 - Quietude +]--
	-- create_template("talent_tree_psy_pas_003_en",
		-- {"loc_talent_psyker_toughness_from_vent"}, {"en"},
			-- loc_text("Quietude")),
	--[+ Russian +]-- Спокойствие -- руоф Тишина
	create_template("talent_tree_psy_pas_003_ru",
		{"loc_talent_psyker_toughness_from_vent"}, {"ru"},
			loc_text("Спокойствие")),

	--[+ Passive 4 - Warp Expenditure +]--
	-- create_template("talent_tree_psy_pas_004_en",
		-- {"loc_talent_psyker_warp_charge_generation_generates_toughness"}, {"en"},
			-- loc_text("Warp Expenditure")),
	--[+ Russian +]-- Затраты варпа -- руоф Варп-затраты
	create_template("talent_tree_psy_pas_004_ru",
		{"loc_talent_psyker_warp_charge_generation_generates_toughness"}, {"ru"},
			loc_text("Затраты варпа")),

	--[+ Passive 5 - Perilous Combustion +]--
	-- create_template("talent_tree_psy_pas_005_en",
		-- {"loc_talent_psyker_elite_kills_add_warpfire"}, {"en"},
			-- loc_text("Perilous Combustion")),
	--[+ Russian +]-- Опасное возгорание -- руоф Пагубное воспламенение
	create_template("talent_tree_psy_pas_005_ru",
		{"loc_talent_psyker_elite_kills_add_warpfire"}, {"ru"},
			loc_text("Опасное возгорание")),

	--[+ Passive 6 - Perfect Timing +]--
	-- create_template("talent_tree_psy_pas_006_en",
		-- {"loc_talent_psyker_crits_empower_next_attack"}, {"en"},
			-- loc_text("Perfect Timing")),
	--[+ Russian +]-- Идеальный момент -- руоф Безупречное чувство времени
	create_template("talent_tree_psy_pas_006_ru",
		{"loc_talent_psyker_crits_empower_next_attack"}, {"ru"},
			loc_text("Идеальный момент")),

	--[+ Passive 7 - Battle Meditation +]--
	-- create_template("talent_tree_psy_pas_007_en",
		-- {"loc_talent_psyker_base_2"}, {"en"},
			-- loc_text("Battle Meditation")),
	--[+ Russian +]-- Боевая медитация
	-- create_template("talent_tree_psy_pas_007_ru",
		-- {"loc_talent_psyker_base_2"}, {"ru"},
			-- loc_text("Боевая медитация")),

	--[+ Passive 8 - Wildfire +]--
	-- create_template("talent_tree_psy_pas_008_en",
		-- {"loc_talent_psyker_warpfire_spread"}, {"en"},
			-- loc_text("Wildfire")),
	--[+ Russian +]-- Некотролируемый пожар -- руоф Гремучая смесь
	create_template("talent_tree_psy_pas_008_ru",
		{"loc_talent_psyker_warpfire_spread"}, {"ru"},
			loc_text("Некотролируемый пожар")),

	--[+ Passive 9 - Psykinetic's Aura +]--
	-- create_template("talent_tree_psy_pas_009_en",
		-- {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency"}, {"en"},
			-- loc_text("Psykinetic's Aura")),
	--[+ Russian +]-- Аура психокинетика
	-- create_template("talent_tree_psy_pas_009_ru",
		-- {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency"}, {"ru"},
			-- loc_text("Аура психокинетика")),

	--[+ Passive 10 - Mind in Motion +]--
	-- create_template("talent_tree_psy_pas_010_en",
		-- {"loc_talent_psyker_venting_doesnt_slow"}, {"en"},
			-- loc_text("Mind in Motion")),
	--[+ Russian +]-- Разум в движении -- руоф Движущийся разум
	create_template("talent_tree_psy_pas_010_ru",
		{"loc_talent_psyker_venting_doesnt_slow"}, {"ru"},
			loc_text("Разум в движении")),

	--[+ Passive 11 - Malefic Momentum +]--
	-- create_template("talent_tree_psy_pas_011_en",
		-- {"loc_talent_psyker_kills_stack_other_weapon_damage"}, {"en"},
			-- loc_text("Malefic Momentum")),
	--[+ Russian +]-- Пагубный импульс -- руоф Пагубный моментум
	create_template("talent_tree_psy_pas_011_ru",
		{"loc_talent_psyker_kills_stack_other_weapon_damage"}, {"ru"},
			loc_text("Пагубный импульс")),

	--[+ Passive 12 - Channeled Force +]--
	-- create_template("talent_tree_psy_pas_012_en",
		-- {"loc_talent_psyker_force_staff_bonus"}, {"en"},
			-- loc_text("Channeled Force")),
	--[+ Russian +]-- Направленная сила
	-- create_template("talent_tree_psy_pas_012_ru",
		-- {"loc_talent_psyker_force_staff_bonus"}, {"ru"},
			-- loc_text("Направленная сила")),

	--[+ Passive 13 - Perilous Assault +]--
	-- create_template("talent_tree_psy_pas_013_en",
		-- {"loc_talent_psyker_force_staff_melee_attack_bonus"}, {"en"},
			-- loc_text("Perilous Assault")), 
	--[+ Russian +]--Рискованное нападение -- руоф Пагубное нападение
	create_template("talent_tree_psy_pas_013_ru",
		{"loc_talent_psyker_force_staff_melee_attack_bonus"}, {"ru"},
			loc_text("Рискованное нападение")),

	--[+ Passive 14 - Lightning Speed +]--
	-- create_template("talent_tree_psy_pas_014_en",
		-- {"loc_talent_psyker_melee_attack_speed"}, {"en"},
			-- loc_text("Lightning Speed")),
	--[+ Russian +]-- Молниеносная скорость
	-- create_template("talent_tree_psy_pas_014_ru",
		-- {"loc_talent_psyker_melee_attack_speed"}, {"ru"},
			-- loc_text("Молниеносная скорость")),

	--[+ Passive 15 - Souldrinker +]--
	-- create_template("talent_tree_psy_pas_015_en",
		-- {"loc_talent_psyker_nearby_soulblaze_reduced_damage"}, {"en"},
			-- loc_text("Souldrinker")),
	--[+ Russian +]-- Поглотитель душ -- руоф Поглощение душ
	create_template("talent_tree_psy_pas_015_ru",
		{"loc_talent_psyker_nearby_soulblaze_reduced_damage"}, {"ru"},
			loc_text("Поглотитель душ")),

	--[+ Passive 16 - Empyric Shock +]--
	-- create_template("talent_tree_psy_pas_016_en",
		-- {"loc_talent_psyker_force_staff_quick_attack_bonus"}, {"en"},
			-- loc_text("Empyric Shock")),
	--[+ Russian +]-- Эмпирический шок
	-- create_template("talent_tree_psy_pas_016_ru",
		-- {"loc_talent_psyker_force_staff_quick_attack_bonus"}, {"ru"},
			-- loc_text("Эмпирический шок")),

	--[+ Passive 17 - By Crack of Bone +]--
	-- create_template("talent_tree_psy_pas_017_en",
		-- {"loc_talent_psyker_melee_weaving"}, {"en"},
			-- loc_text("By Crack of Bone")),
	--[+ Russian +]-- Треск костей
	-- create_template("talent_tree_psy_pas_017_ru",
		-- {"loc_talent_psyker_melee_weaving"}, {"ru"},
			-- loc_text("Треск костей")),

	--[+ Passive 18 - Warp Splitting +]--
	-- create_template("talent_tree_psy_pas_018_en",
		-- {"loc_talent_psyker_cleave_from_peril"}, {"en"},
			-- loc_text("Warp Splitting")),
	--[+ Russian +]-- Расщепление варпа
	-- create_template("talent_tree_psy_pas_018_ru",
		-- {"loc_talent_psyker_cleave_from_peril"}, {"ru"},
			-- loc_text("Расщепление варпа")),

	--[+ Passive 19 - Unlucky for Some +]--
	-- create_template("talent_tree_psy_pas_019_en",
		-- {"loc_talent_psyker_restore_toughness_to_allies_when_ally_down"}, {"en"},
			-- loc_text("Unlucky for Some")),
	--[+ Russian +]-- Не везёт некоторым -- руоф Некоторым не повезло
	create_template("talent_tree_psy_pas_019_ru",
		{"loc_talent_psyker_restore_toughness_to_allies_when_ally_down"}, {"ru"},
			loc_text("Не везёт некоторым")),

	--[+ Passive 20 - One with the Warp +]--
	-- create_template("talent_tree_psy_pas_020_en",
		-- {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge"}, {"en"},
			-- loc_text("One with the Warp")),
	--[+ Russian +]-- Единство с варпом
	-- create_template("talent_tree_psy_pas_020_ru",
		-- {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge"}, {"ru"},
			-- loc_text("Единство с варпом")),

	--[+ Passive 21 - Empathic Evasion +]--
	-- create_template("talent_tree_psy_pas_21_en",
		-- {"loc_talent_psyker_dodge_after_crits"}, {"en"},
			-- loc_text("Empathic Evasion")),
	--[+ Russian +]-- Эмпатическое уклонение
	-- create_template("talent_tree_psy_pas_21_ru",
		-- {"loc_talent_psyker_dodge_after_crits"}, {"ru"},
			-- loc_text("Эмпатическое уклонение")),

	--[+ Passive 22 - Anticipation +]--
	-- create_template("talent_tree_psy_pas_022_en",
		-- {"loc_talent_psyker_improved_dodge"}, {"en"},
			-- loc_text("Anticipation")),
	--[+ Russian +]-- Предвкушение
	-- create_template("talent_tree_psy_pas_022_ru",
		-- {"loc_talent_psyker_improved_dodge"}, {"ru"},
			-- loc_text("Предвкушение")),

	--[+ Passive 23 - Solidity +]--
	-- create_template("talent_tree_psy_pas_023_en",
		-- {"loc_talent_psyker_increased_vent_speed"}, {"en"},
			-- loc_text("Solidity")),
	--[+ Russian +]-- Устойчивость -- руоф Твердость
	create_template("talent_tree_psy_pas_023_ru",
		{"loc_talent_psyker_increased_vent_speed"}, {"ru"},
			loc_text("Устойчивость")),

	--[+ Passive 24 - Puppet Master +]--
	-- create_template("talent_tree_psy_pas_024_en",
		-- {"loc_talent_psyker_coherency_size_increase"}, {"en"},
			-- loc_text("Puppet Master")),
	--[+ Russian +]-- Кукловод
	-- create_template("talent_tree_psy_pas_024_en",
		-- {"loc_talent_psyker_coherency_size_increase"}, {"ru"},
			-- loc_text("Кукловод")),

	--[+ Passive 25 - Warp Rider +]--
	-- create_template("talent_tree_psy_pas_025_en",
		-- {"loc_talent_psyker_damage_based_on_warp_charge"}, {"en"},
			-- loc_text("Warp Rider")),
	--[+ Russian +]-- Всадник варпа -- руоф Наездник варпа
	create_template("talent_tree_psy_pas_025_ru",
		{"loc_talent_psyker_damage_based_on_warp_charge"}, {"ru"},
			loc_text("Всадник варпа")),

	--[+ Passive 26 - Crystalline Will +]--
	-- create_template("talent_tree_psy_pas_027_en",
		-- {"loc_talent_psyker_alternative_peril_explosion"}, {"en"},
			-- loc_text("Crystalline Will")),
	--[+ Russian +]-- Чистая воля
	-- create_template("talent_tree_psy_pas_027_ru",
		-- {"loc_talent_psyker_alternative_peril_explosion"}, {"ru"},
			-- loc_text("Чистая воля")),

	--[+ Passive 27 - Kinetic Deflection +]--
	-- create_template("talent_tree_psy_pas_027_en",
		-- {"loc_talent_psyker_block_costs_warp_charge"}, {"en"},
			-- loc_text("Kinetic Deflection")),
	--[+ Russian +]-- Кинетическое отклонение
	-- create_template("talent_tree_psy_pas_027_ru",
		-- {"loc_talent_psyker_block_costs_warp_charge"}, {"ru"},
			-- loc_text("Кинетическое отклонение")),

	--[+ Passive 28 - Tranquility Through Slaughter +]--
	-- create_template("talent_tree_psy_pas_028_en",
		-- {"loc_talent_psyker_ranged_crits_vent"}, {"en"},
			-- loc_text("Tranquility Through Slaughter")),
	--[+ Russian +]-- Спокойствие посредством убийств
	-- create_template("talent_tree_psy_pas_028_ru",
		-- {"loc_talent_psyker_ranged_crits_vent"}, {"ru"},
			-- loc_text("Спокойствие посредством убийств")),

	--[+ Passive 29 - Empyric Resolve +]--
	-- create_template("talent_tree_psy_pas_029_en",
		-- {"loc_talent_psyker_warp_glass_cannon"}, {"en"},
			-- loc_text("Empyric Resolve")),
	--[+ Russian +]-- Эмпирическая решимость
	-- create_template("talent_tree_psy_pas_029_ru",
		-- {"loc_talent_psyker_warp_glass_cannon"}, {"ru"},
			-- loc_text("Эмпирическая решимость")),

	--[+ Passive 30 - Penetration of the Soul +]--
	-- create_template("talent_tree_psy_pas_030_en",
		-- {"loc_talent_psyker_warp_attacks_rending"}, {"en"} function(locale, value) return "Penetration of the Soul")),
	--[+ Russian +]-- Проникновение в душу
	-- create_template("talent_tree_psy_pas_030_ru",
		-- {"loc_talent_psyker_warp_attacks_rending"}, {"en"} function(locale, value) return "Проникновение в душу")),

	--[+ Passive 31 - True Aim +]--
	-- create_template("talent_tree_psy_pas_031_en",
		-- {"loc_talent_psyker_weakspot_grants_crit"}, {"en"},
			-- loc_text("True Aim")),
	--[+ Russian +]-- Верная цель
	-- create_template("talent_tree_psy_pas_031_ru",
		-- {"loc_talent_psyker_weakspot_grants_crit"}, {"ru"},
			-- loc_text("Верная цель")),

	--[+ Passive 32 - Surety of Arms +]--
	-- create_template("talent_tree_psy_pas_032_en",
		-- {"loc_talent_psyker_reload_speed_warp"}, {"en"},
			-- loc_text("Surety of Arms")),
	--[+ Russian +]-- Варп в залог -- руоф Верность оружия
	create_template("talent_tree_psy_pas_032_ru",
		{"loc_talent_psyker_reload_speed_warp"}, {"ru"},
			loc_text("Варп в залог")),


--[+ ++ZEALOT - ИЗУВЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ Blitz 0 - Stun Grenade +]--
	-- create_template("talent_tree_zea_blitz0_000_en",
		-- {"loc_ability_shock_grenade"}, {"en"},
			-- loc_text("Stun Grenade")),
	--[+ Russian +]-- Оглушающая граната
	-- create_template("talent_tree_zea_blitz0_000_ru",
		-- {"loc_ability_shock_grenade"}, {"ru"},
			-- loc_text("Оглушающая граната")),

	--[+ Blitz 1 - Stunstorm Grenade +]--
	-- create_template("talent_tree_zea_blitz1_000_en",
		-- {"loc_zealot_improved_stun_grenade"}, {"en"},
			-- loc_text("Stunstorm Grenade")),
	--[+ Russian +]-- Оглушающе-штурмовая граната -- руоф Граната шквального оглушения
	create_template("talent_tree_zea_blitz1_000_en",
		{"loc_zealot_improved_stun_grenade"}, {"ru"},
			loc_text("Оглушающе-штурмовая граната")),

	--[+ Blitz 2 - Immolation Grenade +]--
	-- create_template("talent_tree_zea_blitz2_000_en",
		-- {"loc_talent_ability_fire_grenade"}, {"en"},
			-- loc_text("Immolation Grenade")),
	--[+ Russian +]-- Огненная граната -- руоф Жертвенная граната
	create_template("talent_tree_zea_blitz2_000_ru",
		{"loc_talent_ability_fire_grenade"}, {"ru"},
			loc_text("Огненная граната")),

	--[+ Blitz 3 - Blades of Faith +]--
	-- create_template("talent_tree_zea_blitz3_000_en",
		-- {"loc_ability_zealot_throwing_knifes"}, {"en"},
			-- loc_text("Blades of Faith")),
	--[+ Russian +]-- Клинки веры
	-- create_template("talent_tree_zea_blitz3_000_ru",
		-- {"loc_ability_zealot_throwing_knifes"}, {"ru"},
			-- loc_text("Клинки веры")),

--[+ +AURA+ +]--
	--[+ Aura 0 - The Emperors's Will +]--
	-- create_template("talent_tree_zea_aura0_000_en",
		-- {"loc_talent_zealot_2_base_3"}, {"en"},
			-- loc_text("The Emperors's Will")),
	--[+ Russian +]-- Воля Императора
	-- create_template("talent_tree_zea_aura0_000_ru",
		-- {"loc_talent_zealot_2_base_3"}, {"ru"},
			-- loc_text("Воля Императора")),

	--[+ Aura 1 - Benediction +]--
	-- create_template("talent_tree_zea_aura_001_en",
		-- {"loc_talent_zealot_aura_efficiency"}, {"en"},
			-- loc_text("Benediction")),
	--[+ Russian +]-- Благословение
	-- create_template("talent_tree_zea_aura_001_ru",
		-- {"loc_talent_zealot_aura_efficiency"}, {"ru"},
			-- loc_text("Благословение")),

	--[+ Aura 2 - Beacon of Purity +]--
	-- create_template("talent_tree_zea_aura_002_en",
		-- {"loc_talent_zealot_corruption_healing_coherency_improved"}, {"en"},
			-- loc_text("Beacon of Purity")),
	--[+ Russian +]-- Маяк очищения -- руоф Маяк непорочности
	create_template("talent_tree_zea_aura_002_ru",
		{"loc_talent_zealot_corruption_healing_coherency_improved"}, {"ru"},
			loc_text("Маяк очищения")),

	--[+ Aura 3 - Loner +]--
	-- create_template("talent_tree_zea_aura_003_en",
		-- {"loc_talent_zealot_always_in_coherency"}, {"en"},
			-- loc_text("Loner")),
	--[+ Russian +]-- Единоличник -- руоф Одиночка
	create_template("talent_tree_zea_aura_003_ru",
		{"loc_talent_zealot_always_in_coherency"}, {"ru"},
			loc_text("Единоличник")),

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Chastise the Wicked +]--
	-- create_template("talent_tree_zea_abil0_000_en",
		-- {"loc_talent_zealot_2_combat"}, {"en"},
			-- loc_text("Chastise the Wicked")),
	--[+ Russian +]-- Кара для нечестивых
	-- create_template("talent_tree_zea_abil0_000_ru",
		-- {"loc_talent_zealot_2_combat"}, {"ru"},
			-- loc_text("Кара для нечестивых")),

	--[+ Ability 1 - Fury of the Faithful +]--
	-- create_template("talent_tree_zea_abil1_000_en",
		-- {"loc_talent_maniac_attack_speed_after_dash"}, {"en"},
			-- loc_text("Fury of the Faithful")),
	--[+ Russian +]-- Ярость верующего -- руоф Ударный страх
	create_template("talent_tree_zea_abil1_000_ru",
		{"loc_talent_maniac_attack_speed_after_dash"}, {"ru"},
			loc_text("Ярость верующего")),

	--[+ Ability 1-1 - Redoubled Zeal +]--
	-- create_template("talent_tree_zea_abil1_001_en",
		-- {"loc_talent_zealot_dash_has_more_charges"}, {"en"},
			-- loc_text("Redoubled Zeal")),
	--[+ Russian +]-- Удвоенное рвение
	-- create_template("talent_tree_zea_abil1_001_ru",
		-- {"loc_talent_zealot_dash_has_more_charges"}, {"ru"},
			-- loc_text("Удвоенное рвение")),

	--[+ Ability 1-2 - Invocation of Death +]--
	-- create_template("talent_tree_zea_abil1_002_en",
		-- {"loc_talent_maniac_cooldown_on_melee_crits"}, {"en"},
			-- loc_text("Invocation of Death")),
	--[+ Russian +]-- Призыв смерти
	-- create_template("talent_tree_zea_abil1_002_ru",
		-- {"loc_talent_maniac_cooldown_on_melee_crits"}, {"ru"},
			-- loc_text("Призыв смерти")),

	--[+ Ability 2 - Chorus of Spiritual Fortitude +]--
	-- create_template("talent_tree_zea_abil2_000_en",
		-- {"loc_talent_zealot_bolstering_prayer"}, {"en"},
			-- loc_text("Chorus of Spiritual Fortitude")),
	--[+ Russian +]-- Хор духовной стойкости
	-- create_template("talent_tree_zea_abil2_000_ru",
		-- {"loc_talent_zealot_bolstering_prayer"}, {"ru"},
			-- loc_text("Хор духовной стойкости")),

	--[+ Ability 2-1 - Holy Cause +]--
	-- create_template("talent_tree_zea_abil2_001_en",
		-- {"loc_talent_zealot_zealot_channel_grants_defensive_buff"}, {"en"},
			-- loc_text("Holy Cause")),
	--[+ Russian +]-- Святое дело
	-- create_template("talent_tree_zea_abil2_001_ru",
		-- {"loc_talent_zealot_zealot_channel_grants_defensive_buff"}, {"ru"},
			-- loc_text("Святое дело")),

	--[+ Ability 2-2 - Banishing Light +]--
	-- create_template("talent_tree_zea_abil2_002_en",
		-- {"loc_talent_zealot_channel_staggers"}, {"en"},
			-- loc_text("Banishing Light")),
	--[+ Russian +]-- Изгоняющий свет
	-- create_template("talent_tree_zea_abil2_002_ru",
		-- {"loc_talent_zealot_channel_staggers"}, {"ru"},
			-- loc_text("Изгоняющий свет")),

	--[+ Ability 2-3 - Ecclesiarch's Call +]--
	-- create_template("talent_tree_zea_abil2_003_en",
		-- {"loc_talent_zealot_zealot_channel_grants_offensive_buff"}, {"en"},
			-- loc_text("Ecclesiarch's Call")),
	--[+ Russian +]-- Призыв экклезиарха -- руоф Вызов экклезиарха
	create_template("talent_tree_zea_abil2_003_ru",
		{"loc_talent_zealot_zealot_channel_grants_offensive_buff"}, {"ru"},
			loc_text("Призыв экклезиарха")),

	--[+ Ability 2-4 - Martyr's Purpose +]--
	-- create_template("talent_tree_zea_abil2_004_en",
		-- {"loc_talent_zealot_damage_taken_restores_cd"}, {"en"},
			-- loc_text("Martyr's Purpose")),
	--[+ Russian +]-- Предназначение мученика -- руоф Цель мученика
	create_template("talent_tree_zea_abil2_004_en",
		{"loc_talent_zealot_damage_taken_restores_cd"}, {"ru"},
			loc_text("Предназначение мученика")),

	--[+ Ability 3 - Shroudfield +]--
	-- create_template("talent_tree_zea_abil3_000_en",
		-- {"loc_ability_zealot_stealth"}, {"en"},
			-- loc_text("Shroudfield")),
	--[+ Russian +]-- Покров
	-- create_template("talent_tree_zea_abil3_000_ru",
		-- {"loc_ability_zealot_stealth"}, {"ru"},
			-- loc_text("Покров")),

	--[+ Ability 3-1 - Master-Crafted Shroudfield +]--
	-- create_template("talent_tree_zea_abil3_001_en",
		-- {"loc_talent_zealot_increased_stealth_duration"}, {"en"},
			-- loc_text("Master-Crafted Shroudfield")),
	--[+ Russian +]-- Мастерский покров -- Искусно изготовленный покров
	create_template("talent_tree_zea_abil3_001_ru",
		{"loc_talent_zealot_increased_stealth_duration"}, {"ru"},
			loc_text("Мастерский покров")),

	--[+ Ability 3-2 - Perfectionist +]--
	-- create_template("talent_tree_zea_abil3_002_en",
		-- {"loc_talent_zealot_stealth_increased_damage"}, {"en"},
			-- loc_text("Perfectionist")),
	--[+ Russian +]-- Перфекционист
	-- create_template("talent_tree_zea_abil3_002_ru",
		-- {"loc_talent_zealot_stealth_increased_damage"}, {"ru"},
			-- loc_text("Перфекционист")),

	--[+ Ability 3-3 - Invigorating Revelation +]--
	-- create_template("talent_tree_zea_abil3_003_en",
		-- {"loc_talent_zealot_leaving_stealth_restores_toughness"}, {"en"},
			-- loc_text("Invigorating Revelation")),
	--[+ Russian +]-- Оживляющее откровение -- руоф Подбадривающее откровение
	create_template("talent_tree_zea_abil3_003_ru",
		{"loc_talent_zealot_leaving_stealth_restores_toughness"}, {"ru"},
			loc_text("Оживляющее откровение")),

	--[+ Ability 3-4 - Pious Cut-Throat +]--
	-- create_template("talent_tree_zea_abil3_004_en",
		-- {"loc_talent_zealot_backstab_kills_restore_cd"}, {"en"},
			-- loc_text("Pious Cut-Throat")),
	--[+ Russian +]-- Благочестивый головорез -- руоф Добродетельный головорез
	create_template("talent_tree_zea_abil3_004_ru",
		{"loc_talent_zealot_backstab_kills_restore_cd"}, {"ru"},
			loc_text("Благочестивый головорез")),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ ТАЛАНТЫ+ +]--
	--[+ Keystone 1 - Blazing Piety +]--
	-- create_template("talent_tree_zea_keys1_000_en",
		-- {"loc_talent_zealot_fanatic_rage"}, {"en"},
			-- loc_text("Blazing Piety")),
	--[+ Russian +]-- Пылающая благочестивость -- руоф Пламенное благочестие
	create_template("talent_tree_zea_keys1_000_ru",
		{"loc_talent_zealot_fanatic_rage"}, {"ru"},
			loc_text("Пылающая благочестивость")),

	--[+ Keystone 1-1 - Stalwart +]--
	-- create_template("talent_tree_zea_keys1_001_en",
		-- {"loc_talent_zealot_fanatic_rage_toughness"}, {"en"},
			-- loc_text("Stalwart")),
	--[+ Russian +]-- Непоколебимый -- руоф Верный последователь
	create_template("talent_tree_zea_keys1_001_ru",
		{"loc_talent_zealot_fanatic_rage_toughness"}, {"ru"},
			loc_text("Непоколебимый")),

	--[+ Keystone 1-2 - Fury Rising +]--
	-- create_template("talent_tree_zea_keys1_002_en",
		-- {"loc_talent_zealot_fanatic_rage_crits"}, {"en"},
			-- loc_text("Fury Rising")),
	--[+ Russian +]-- Возрастание ярости -- руоф Подъем ярости
	create_template("talent_tree_zea_keys1_002_ru",
		{"loc_talent_zealot_fanatic_rage_crits"}, {"ru"},
			loc_text("Возрастание ярости")),

	--[+ Keystone 1-3 - Infectious Zeal +]--
	-- create_template("talent_tree_zea_keys1_003_en",
		-- {"loc_talent_zealot_shared_fanatic_rage"}, {"en"},
			-- loc_text("Infectious Zeal")),
	--[+ Russian +]-- Заразительное рвение
	-- create_template("talent_tree_zea_keys1_003_ru",
		-- {"loc_talent_zealot_shared_fanatic_rage"}, {"ru"},
			-- loc_text("Заразительное рвение")),

	--[+ Keystone 1-4 - Righteous Warrior +]--
	-- create_template("talent_tree_zea_keys1_004_en",
		-- {"loc_talent_zealot_fanatic_rage_improved"}, {"en"},
			-- loc_text("Righteous Warrior")),
	--[+ Russian +]-- Праведный воин
	-- create_template("talent_tree_zea_keys1_004_ru",
		-- {"loc_talent_zealot_fanatic_rage_improved"}, {"ru"},
			-- loc_text("Праведный воин")),

	--[+ Keystone 2 - Martyrdom +]--
	-- create_template("talent_tree_zea_keys2_000_en",
		-- {"loc_talent_zealot_martyrdom"}, {"en"},
			-- loc_text("Martyrdom")),
	--[+ Russian +]-- Мученичество
	-- create_template("talent_tree_zea_keys2_000_en",
		-- {"loc_talent_zealot_martyrdom"}, {"ru"},
			-- loc_text("Мученичество")),

	--[+ Keystone 2-1 - I Shall Not Fall +]--
	-- create_template("talent_tree_zea_keys2_001_en",
		-- {"loc_talent_zealot_martyrdom_grants_toughness"}, {"en"},
			-- loc_text("I Shall Not Fall")),
	--[+ Russian +]-- Я не паду -- руоф Я не отступлю
	create_template("talent_tree_zea_keys2_001_ru",
		{"loc_talent_zealot_martyrdom_grants_toughness"}, {"ru"},
			loc_text("Я не паду")),

	--[+ Keystone 2-2 - Maniac +]--
	-- create_template("talent_tree_zea_keys2_002_en",
		-- {"loc_talent_zealot_attack_speed_per_martyrdom"}, {"en"},
			-- loc_text("Maniac")),
	--[+ Russian +]-- Маньяк
	-- create_template("talent_tree_zea_keys2_002_ru",
		-- {"loc_talent_zealot_attack_speed_per_martyrdom"}, {"ru"},
			-- loc_text("Маньяк")),

	--[+ Keystone 3 - Inexorable Judgement +]--
	-- create_template("talent_tree_zea_keys3_000_en",
		-- {"loc_talent_zealot_quickness"}, {"en"},
			-- loc_text("Inexorable Judgement")),
	--[+ Russian +]-- Неумолимый приговор -- руоф Безжалостный приговор
	create_template("talent_tree_zea_keys3_000_ru",
		{"loc_talent_zealot_quickness"}, {"ru"},
			loc_text("Неумолимый приговор")),

	--[+ Keystone 3-1 - Retributor's Stance +]--
	-- create_template("talent_tree_zea_keys3_001_en",
		-- {"loc_talent_zealot_quickness_toughness_per_stack"}, {"en"},
			-- loc_text("Retributor's Stance")),
	--[+ Russian +]-- Стойка карателя
	-- create_template("talent_tree_zea_keys3_001_ru",
		-- {"loc_talent_zealot_quickness_toughness_per_stack"}, {"ru"},
			-- loc_text("Стойка карателя")),

	--[+ Keystone 3-2 - Inebriate's Poise +]--
	-- create_template("talent_tree_zea_keys3_002_en",
		-- {"loc_talent_zealot_quickness_dodge_stacks"}, {"en"},
			-- loc_text("Inebriate's Poise")),
	--[+ Russian +]-- Грация пьяницы -- руоф Самообладание пьяницы
	create_template("talent_tree_zea_keys3_002_ru",
		{"loc_talent_zealot_quickness_dodge_stacks"}, {"ru"},
			loc_text("Грация пьяницы")),

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Disdain +]--
	-- create_template("talent_tree_zea_pas_001_en",
		-- {"loc_talent_zealot_3_tier_2_ability_1"}, {"en"},
			-- loc_text("Disdain")),
	--[+ Russian +]-- Презрение
	-- create_template("talent_tree_zea_pas_001_ru",
		-- {"loc_talent_zealot_3_tier_2_ability_1"}, {"ru"},
			-- loc_text("Презрение")),

	--[+ Passive 2 - Backstabber +]--
	-- create_template("talent_tree_zea_pas_002_en",
		-- {"loc_talent_zealot_increased_backstab_damage"}, {"en"},
			-- loc_text("Backstabber")),
	--[+ Russian +]-- Бьющий в спину
	-- create_template("talent_tree_zea_pas_002_ru",
		-- {"loc_talent_zealot_increased_backstab_damage"}, {"ru"},
			-- loc_text("Бьющий в спину")),

	--[+ Passive 3 - Anoint in Blood +]--
	-- create_template("talent_tree_zea_pas_003_en",
		-- {"loc_talent_zealot_ranged_damage_increased_to_close"}, {"en"},
			-- loc_text("Anoint in Blood")),
	--[+ Russian +]-- Помазанный кровью
	-- create_template("talent_tree_zea_pas_003_ru",
		-- {"loc_talent_zealot_ranged_damage_increased_to_close"}, {"ru"},
			-- loc_text("Помазанный кровью")),

	--[+ Passive 4 - Scourge +]--
	-- create_template("talent_tree_zea_pas_004_en",
		-- {"loc_talent_zealot_bleed_melee_crit_chance"}, {"en"},
			-- loc_text("Scourge")),
	--[+ Russian +]-- Бичевание -- руоф Бич
	create_template("talent_tree_zea_pas_004_ru",
		{"loc_talent_zealot_bleed_melee_crit_chance"}, {"ru"},
			loc_text("Бичевание")),

	--[+ Passive 5 - Enemies Within, Enemies Without +]--
	-- create_template("talent_tree_zea_pas_005_en",
		-- {"loc_talent_zealot_toughness_regen_in_melee"}, {"en"},
			-- loc_text("Enemies Within, Enemies Without")),
	--[+ Russian +]-- Враги внутри, враги снаружи -- руоф Не дай ему уйти
	create_template("talent_tree_zea_pas_005_ru",
		{"loc_talent_zealot_toughness_regen_in_melee"}, {"ru"},
			loc_text("Враги внутри, враги снаружи")),

	--[+ Passive 6 - Fortitude in Fellowship +]--
	-- create_template("talent_tree_zea_pas_006_en",
		-- {"loc_talent_zealot_increased_coherency_regen"}, {"en"},
			-- loc_text("Fortitude in Fellowship")),
	--[+ Russian +]-- Стойкость в товариществе -- руоф Стойкость в общении
	create_template("talent_tree_zea_pas_006_ru",
		{"loc_talent_zealot_increased_coherency_regen"}, {"ru"},
			loc_text("Стойкость в товариществе")),

	--[+ Passive 7 - Purge the Unclean +]--
	-- create_template("talent_tree_zea_pas_007_en",
		-- {"loc_talent_zealot_3_passive_2"}, {"en"},
			-- loc_text("Purge the Unclean")),
	--[+ Russian +]-- Очищение нечестивых -- руоф Очищение нечистых
	create_template("talent_tree_zea_pas_007_ru",
		{"loc_talent_zealot_3_passive_2"}, {"ru"},
			loc_text("Очищение нечестивых")),

	--[+ Passive 8 - Blood Redemption +]--
	-- create_template("talent_tree_zea_pas_008_en",
		-- {"loc_talent_zealot_toughness_on_melee_kill"}, {"en"},
			-- loc_text("Blood Redemption")),
	--[+ Russian +]-- Искупление кровью -- руоф Кровавое искупление
	create_template("talent_tree_zea_pas_008_ru",
		{"loc_talent_zealot_toughness_on_melee_kill"}, {"ru"},
			loc_text("Искупление кровью")),

	--[+ Passive 9 - Bleed for the Emperor +]--
	-- create_template("talent_tree_zea_pas_009_en",
		-- {"loc_talent_zealot_3_tier_3_ability_2"}, {"en"},
			-- loc_text("Bleed for the Emperor")),
	--[+ Russian +]-- Кровь за Императора -- руоф Кровь во имя Императора
	create_template("talent_tree_zea_pas_009_ru",
		{"loc_talent_zealot_3_tier_3_ability_2"}, {"ru"},
			loc_text("Кровь за Императора")),

	--[+ Passive 10 - Vicious Offering +]--
	-- create_template("talent_tree_zea_pas_010_en",
		-- {"loc_talent_zealot_toughness_on_heavy_kills"}, {"en"},
			-- loc_text("Vicious Offering")),
	--[+ Russian +]-- Жертвоприношение -- руоф Порочное подношение
	create_template("talent_tree_zea_pas_010_ru",
		{"loc_talent_zealot_toughness_on_heavy_kills"}, {"ru"},
			loc_text("Жертвоприношение")),

	--[+ Passive 11 - The Voice of Terra +]--
	-- create_template("talent_tree_zea_pas_011_en",
		-- {"loc_talent_zealot_toughness_on_ranged_kill"}, {"en"},
			-- loc_text("The Voice of Terra")),
	--[+ Russian +]-- Голос Терры
	-- create_template("talent_tree_zea_pas_011_ru",
		-- {"loc_talent_zealot_toughness_on_ranged_kill"}, {"ru"},
			-- loc_text("Голос Терры")),

	--[+ Passive 12 - Restoring Faith +]--
	-- create_template("talent_tree_zea_pas_012_en",
		-- {"loc_talent_zealot_heal_damage_taken"}, {"en"},
			-- loc_text("Restoring Faith")),
	--[+ Russian +]-- Восстановление веры
	-- create_template("talent_tree_zea_pas_012_ru",
		-- {"loc_talent_zealot_heal_damage_taken"}, {"ru"},
			-- loc_text("Восстановление веры")),

	--[+ Passive 13 - Second Wind +]--
	-- create_template("talent_tree_zea_pas_013_en",
		-- {"loc_talent_zealot_toughness_on_dodge"}, {"en"},
			-- loc_text("Second Wind")),
	--[+ Russian +]-- Второе дыхание -- руоф Второй ветер
	create_template("talent_tree_zea_pas_013_en",
		{"loc_talent_zealot_toughness_on_dodge"}, {"ru"},
			loc_text("Второе дыхание")),

	--[+ Passive 14 - Enduring Faith +]--
	-- create_template("talent_tree_zea_pas_014_en",
		-- {"loc_talent_zealot_toughness_melee_effectiveness"}, {"en"},
			-- loc_text("Enduring Faith")),
	--[+ Russian +]-- Непоколебимая вера
	-- create_template("talent_tree_zea_pas_014_en",
		-- {"loc_talent_zealot_toughness_melee_effectiveness"}, {"ru"},
			-- loc_text("Непоколебимая вера")),

	--[+ Passive 15 - The Emperor's Bullet +]--
	-- create_template("talent_tree_zea_pas_015_en",
		-- {"loc_talent_zealot_improved_melee_after_no_ammo"}, {"en"},
			-- loc_text("The Emperor's Bullet")),
	--[+ Russian +]-- Пуля Императора
	-- create_template("talent_tree_zea_pas_015_ru",
		-- {"loc_talent_zealot_improved_melee_after_no_ammo"}, {"ru"},
			-- loc_text("Пуля Императора")),

	--[+ Passive 16 - Dance of Death +]--
	-- create_template("talent_tree_zea_pas_016_en",
		-- {"loc_talent_zealot_improved_spread_post_dodge"}, {"en"},
			-- loc_text("Dance of Death")),
	--[+ Russian +]-- Танец смерти
	-- create_template("talent_tree_zea_pas_016_en",
		-- {"loc_talent_zealot_improved_spread_post_dodge"}, {"ru"},
			-- loc_text("Танец смерти")),

	--[+ Passive 17 - Duellist +]--
	-- create_template("talent_tree_zea_pas_017_en",
		-- {"loc_talent_zealot_increased_finesse_post_dodge"}, {"en"},
			-- loc_text("Duellist")),
	--[+ Russian +]-- Дуэлянт
	-- create_template("talent_tree_zea_pas_017_en",
		-- {"loc_talent_zealot_increased_finesse_post_dodge"}, {"ru"},
			-- loc_text("Дуэлянт")),

	--[+ Passive 18 - Until Death +]--
	-- create_template("talent_tree_zea_pas_018_en",
		-- {"loc_talent_zealot_resist_death"}, {"en"},
			-- loc_text("Until Death")),
	--[+ Russian +]-- До самой смерти
	-- create_template("talent_tree_zea_pas_018_en",
		-- {"loc_talent_zealot_resist_death"}, {"ru"},
			-- loc_text("До самой смерти")),

	--[+ Passive 19 - Unremitting +]--
	-- create_template("talent_tree_zea_pas_019_en",
		-- {"loc_talent_zealot_reduced_sprint_cost"}, {"en"},
			-- loc_text("Unremitting")),
	--[+ Russian +]-- Неустанный
	-- create_template("talent_tree_zea_pas_019_en",
		-- {"loc_talent_zealot_reduced_sprint_cost"}, {"ru"},
			-- loc_text("Неустанный")),

	--[+ Passive 20 - Shield of Contempt +]--
	-- create_template("talent_tree_zea_pas_020_en",
		-- {"loc_talent_zealot_3_tier_4_ability_3"}, {"en"},
			-- loc_text("Shield of Contempt")),
	--[+ Russian +]-- Щит презрения
	-- create_template("talent_tree_zea_pas_020_ru",
		-- {"loc_talent_zealot_3_tier_4_ability_3"}, {"ru"},
			-- loc_text("Щит презрения")),

	--[+ Passive 21 - Thy Wrath be Swift +]--
	-- create_template("talent_tree_zea_pas_021_en",
		-- {"loc_talent_zealot_movement_speed_on_damaged"}, {"en"},
			-- loc_text("Thy Wrath be Swift")),
	--[+ Russian +]-- Твой гнев будет быстр -- руоф Скорое возмездие
	create_template("talent_tree_zea_pas_021_en",
		{"loc_talent_zealot_movement_speed_on_damaged"}, {"ru"},
			loc_text("Твой гнев будет быстр")),

	--[+ Passive 22 - Good Balance +]--
	-- create_template("talent_tree_zea_pas_022_en",
		-- {"loc_talent_reduced_damage_after_dodge"}, {"en"},
			-- loc_text("Good Balance")),
	--[+ Russian +]-- Хороший баланс -- руоф Разумный баланс
	create_template("talent_tree_zea_pas_022_en",
		{"loc_talent_reduced_damage_after_dodge"}, {"ru"},
			loc_text("Хороший баланс")),

	--[+ Passive 23 - Desperation +]--
	-- create_template("talent_tree_zea_pas_023_en",
		-- {"loc_talent_zealot_increased_damage_on_low_stamina"}, {"en"},
			-- loc_text("Desperation")),
	--[+ Russian +]-- Отчаяние
	-- create_template("talent_tree_zea_pas_023_ru",
		-- {"loc_talent_zealot_increased_damage_on_low_stamina"}, {"ru"},
			-- loc_text("Отчаяние")),

	--[+ Passive 24 - Holy Revenant +]--
	-- create_template("talent_tree_zea_pas_024_en",
		-- {"loc_talent_zealot_heal_during_resist_death"}, {"en"},
			-- loc_text("Holy Revenant")),
	--[+ Russian +]-- Святой призрак -- руоф Священный призрак
	create_template("talent_tree_zea_pas_024_ru",
		{"loc_talent_zealot_heal_during_resist_death"}, {"ru"},
			loc_text("Святой призрак")),

	--[+ Passive 25 - Sainted Gunslinger +]--
	-- create_template("talent_tree_zea_pas_025_en",
		-- {"loc_talent_zealot_increased_reload_speed_on_melee_kills"}, {"en"},
			-- loc_text("Sainted Gunslinger")),
	--[+ Russian +]-- Святой стрелок -- руоф Святой быстрый стрелок
	create_template("talent_tree_zea_pas_025_ru",
		{"loc_talent_zealot_increased_reload_speed_on_melee_kills"}, {"ru"},
			loc_text("Святой стрелок")),

	--[+ Passive 26 - Hammer of Faith +]--
	-- create_template("talent_tree_zea_pas_026_en",
		-- {"loc_talent_zealot_3_tier_1_ability_1"}, {"en"},
			-- loc_text("Hammer of Faith")),
	--[+ Russian +]-- Молот веры
	-- create_template("talent_tree_zea_pas_026_ru",
		-- {"loc_talent_zealot_3_tier_1_ability_1"}, {"ru"},
			-- loc_text("Молот веры")),

	--[+ Passive 27 - Grievous Wounds +]--
	-- create_template("talent_tree_zea_pas_027_en",
		-- {"loc_talent_zealot_increased_stagger_on_weakspot_melee"}, {"en"},
			-- loc_text("Grievous Wounds")),
	--[+ Russian +]-- Тяжёлые раны -- руоф Опасные раны
	create_template("talent_tree_zea_pas_027_ru",
		{"loc_talent_zealot_increased_stagger_on_weakspot_melee"}, {"ru"},
			loc_text("Тяжёлые раны")),

	--[+ Passive 28 - Ambuscade +]--
	-- create_template("talent_tree_zea_pas_028_en",
		-- {"loc_talent_zealot_increased_flanking_damage"}, {"en"},
			-- loc_text("Ambuscade")),
	--[+ Russian +]-- Засада
	-- create_template("talent_tree_zea_pas_028_ru",
		-- {"loc_talent_zealot_increased_flanking_damage"}, {"ru"},
			-- loc_text("Засада")),

	--[+ Passive 29 - Punishment +]--
	-- create_template("talent_tree_zea_pas_029_en",
		-- {"loc_talent_zealot_multi_hits_increase_impact"}, {"en"},
			-- loc_text("Punishment")),
	--[+ Russian +]-- Наказание
	-- create_template("talent_tree_zea_pas_029_ru",
		-- {"loc_talent_zealot_multi_hits_increase_impact"}, {"ru"},
			-- loc_text("Наказание")),

	--[+ Passive 30 - Faithful Frenzy +]--
	-- create_template("talent_tree_zea_pas_030_en",
		-- {"loc_talent_zealot_attack_speed"}, {"en"},
			-- loc_text("Faithful Frenzy")),
	--[+ Russian +]-- Правоверное неистовство -- руоф Верное безумие
	create_template("talent_tree_zea_pas_030_ru",
		{"loc_talent_zealot_attack_speed"}, {"ru"},
			loc_text("Правоверное неистовство")),

	--[+ Passive 31 - Sustained Assault +]--
	-- create_template("talent_tree_zea_pas_031_en",
		-- {"loc_talent_zealot_increased_damage_stacks_on_hit"}, {"en"},
			-- loc_text("Sustained Assault")),
	--[+ Russian +]-- Непрерывное нападение -- руоф Непрерывный штурм
	create_template("talent_tree_zea_pas_031_ru",
		{"loc_talent_zealot_increased_damage_stacks_on_hit"}, {"ru"},
			loc_text("Непрерывное нападение")),

	--[+ Passive 32 - The Master's Retribution +]--
	-- create_template("talent_tree_zea_pas_032_en",
		-- {"loc_talent_zealot_3_tier_3_ability_1"}, {"en"},
			-- loc_text("The Master's Retribution")),
	--[+ Russian +]-- Возмездие Владыки
	-- create_template("talent_tree_zea_pas_032_ru",
		-- {"loc_talent_zealot_3_tier_3_ability_1"}, {"ru"},
			-- loc_text("Возмездие Владыки")),

   --[+ Passive 33 - Faith's Fortitude +]--
	-- create_template("talent_tree_zea_pas_033_en",
		-- {"loc_talent_zealot_3_tier_1_ability_3"}, {"en"},
			-- loc_text("Faith's Fortitude")),
	--[+ Russian +]-- Стойкость веры
	-- create_template("talent_tree_zea_pas_033_ru",
		-- {"loc_talent_zealot_3_tier_1_ability_3"}, {"ru"},
			-- loc_text("Стойкость веры")),

	--[+ Passive 34 - Swift Certainty +]--
	-- create_template("talent_tree_zea_pas_034_en",
		-- {"loc_talent_zealot_improved_sprint"}, {"en"},
			-- loc_text("Swift Certainty")),
	--[+ Russian +]-- Быстрая уверенность -- руоф Скорая определенность
	create_template("talent_tree_zea_pas_034_ru",
		{"loc_talent_zealot_improved_sprint"}, {"ru"},
			loc_text("Быстрая уверенность")),


--[+ ++VETERAN - ВЕТЕРАН++ +]--
--[+ +BLITZ - БЛИЦ + +]--
	--[+ Blitz 0 - Frag Grenade +]--
	-- create_template("talent_tree_vet_blitz_000_en",
		-- {"loc_ability_frag_grenade"}, {"en"},
			-- loc_text("Frag Grenade")),
	--[+ Russian +]-- Фраг-граната
	-- create_template("talent_tree_vet_blitz_000_ru",
		-- {"loc_ability_frag_grenade"}, {"ru"},
			-- loc_text("Фраг-граната")),

	--[+ Blitz 1 - Shredder Frag Grenade +]--
	-- create_template("talent_tree_vet_blitz1_000_en",
		-- {"loc_talent_veteran_grenade_apply_bleed"}, {"en"},
			-- loc_text("Shredder Frag Grenade")),
	--[+ Russian +]-- Крошащая фраг-граната -- руоф Фраг-граната крошителя
	create_template("talent_tree_vet_blitz1_000_ru",
		{"loc_talent_veteran_grenade_apply_bleed"}, {"ru"},
			loc_text("Крошащая фраг-граната")),

	--[+ Blitz 2 - Krak Grenade +]--
	-- create_template("talent_tree_vet_blitz2_000_en",
		-- {"loc_talent_ability_krak_grenade"}, {"en"},
			-- loc_text("Krak Grenade")),
	--[+ Russian +]-- Крак-граната
	-- create_template("talent_tree_vet_blitz2_000_ru",
		-- {"loc_talent_ability_krak_grenade"}, {"ru"},
			-- loc_text("Крак-граната")),

	--[+ Blitz 3 - Smoke Grenade +]--
	-- create_template("talent_tree_vet_blitz3_000_en",
		-- {"loc_ability_smoke_grenade"}, {"en"},
			-- loc_text("Smoke Grenade")),
	--[+ Russian +]-- Дымовая граната
	-- create_template("talent_tree_vet_blitz3_000_ru",
		-- {"loc_ability_smoke_grenade"}, {"ru"},
			-- loc_text("Дымовая граната")),

--[+ +AURA+ +]--
	--[+ Aura 0 - Scavenger +]--
	-- create_template("talent_tree_vet_aura_000_en",
		-- {"loc_talent_veteran_elite_kills_grant_ammo_coop"}, {"en"},
			-- loc_text("Scavenger")),
	--[+ Russian +]-- Сборщик -- руоф Собиратель
	create_template("talent_tree_vet_aura_000_ru",
		{"loc_talent_veteran_elite_kills_grant_ammo_coop"}, {"ru"},
			loc_text("Сборщик")),

	--[+ Aura 1 - Survivalist +]--
	-- create_template("talent_tree_vet_aura_001_en",
		-- {"loc_talent_veteran_elite_kills_grant_ammo_coop_improved"}, {"en"},
			-- loc_text("Survivalist")),
	--[+ Russian +]-- Выживальщик -- руоф Специалист по выживанию
	create_template("talent_tree_vet_aura_001_ru",
		{"loc_talent_veteran_elite_kills_grant_ammo_coop_improved"}, {"ru"},
			loc_text("Выживальщик")),

	--[+ Aura 2 - Fire Team +]--
	-- create_template("talent_tree_vet_aura_002_en",
		-- {"loc_talent_veteran_damage_coherency"}, {"en"},
			-- loc_text("Fire Team")),
	--[+ Russian +]-- Огневая группа
	-- create_template("talent_tree_vet_aura_002_ru",
		-- {"loc_talent_veteran_damage_coherency"}, {"ru"},
			-- loc_text("Огневая группа")),

	--[+ Aura 3 - Close and Kill +]--
	-- create_template("talent_tree_vet_aura_003_en",
		-- {"loc_talent_veteran_movement_speed_coherency"}, {"en"},
			-- loc_text("Close and Kill")),
	--[+ Russian +]-- Приблизиться и убить
	-- create_template("talent_tree_vet_aura_003_ru",
		-- {"loc_talent_veteran_movement_speed_coherency"}, {"ru"},
			-- loc_text("Приблизиться и убить")),

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Volley Fire +]--
	-- create_template("talent_tree_vet_abil_000_en",
		-- {"loc_talent_veteran_2_combat_ability"}, {"en"},
			-- loc_text("Volley Fire")),
	--[+ Russian +]-- Залповый огонь
	-- create_template("talent_tree_vet_abil_000_ru",
		-- {"loc_talent_veteran_2_combat_ability"}, {"ru"},
			-- loc_text("Залповый огонь")),

	--[+ Ability 1 - Executioner's Stance +]--
	-- create_template("talent_tree_vet_abil1_000_en",
		-- {"loc_talent_veteran_combat_ability_elite_and_special_outlines"}, {"en"},
			-- loc_text("Executioner's Stance")),
	--[+ Russian +]-- Стойка палача
	-- create_template("talent_tree_vet_abil1_000_ru",
		-- {"loc_talent_veteran_combat_ability_elite_and_special_outlines"}, {"ru"},
			-- loc_text("Стойка палача")),

	--[+ Ability 1-1 - Enhanced Target Priority +]--
	-- create_template("talent_tree_vet_abil1_001_en",
		-- {"loc_talent_veteran_combat_ability_coherency_outlines"}, {"en"},
			-- loc_text("Enhanced Target Priority")),
	--[+ Russian +]-- Повышенный приоритет целей -- руоф Повышенный приоритет цели
	create_template("talent_tree_vet_abil1_001_ru",
		{"loc_talent_veteran_combat_ability_coherency_outlines"}, {"ru"},
			loc_text("Повышенный приоритет целей")),

	--[+ Ability 1-2 - Counter-Fire +]--
	-- create_template("talent_tree_vet_abil1_002_en",
		-- {"loc_talent_veteran_combat_ability_ranged_enemies_outlines"}, {"en"},
			-- loc_text("Counter-Fire")),
	--[+ Russian +]-- Ответный огонь
	-- create_template("talent_tree_vet_abil1_002_ru",
		-- {"loc_talent_veteran_combat_ability_ranged_enemies_outlines"}, {"ru"},
			-- loc_text("Ответный огонь")),

	--[+ Ability 1-3 - The Bigger they Are... +]--
	-- create_template("talent_tree_vet_abil1_003_en",
		-- {"loc_talent_ranger_volley_fire_big_game_hunter"}, {"en"},
			-- loc_text("The Bigger they Are...")),
	--[+ Russian +]-- Чем больше шкаф...
	-- create_template("talent_tree_vet_abil1_003_ru",
		-- {"loc_talent_ranger_volley_fire_big_game_hunter"}, {"ru"},
			-- loc_text("Чем больше шкаф...")),

	--[+ Ability 1-4 - Marksman +]--
	-- create_template("talent_tree_vet_abil1_004_en",
		-- {"loc_talent_veteran_ability_marksman"}, {"en"},
			-- loc_text("Marksman")),
	--[+ Russian +]-- Меткий стрелок
	-- create_template("talent_tree_vet_abil1_004_ru",
		-- {"loc_talent_veteran_ability_marksman"}, {"ru"},
			-- loc_text("Меткий стрелок")),

	--[+ Ability 2 - Voice of Command +]--
	-- create_template("talent_tree_vet_abil2_000_en",
		-- {"loc_talent_veteran_combat_ability_stagger_nearby_enemies"}, {"en"},
			-- loc_text("Voice of Command")),
	--[+ Russian +]-- Командный голос
	-- create_template("talent_tree_vet_abil2_000_ru",
		-- {"loc_talent_veteran_combat_ability_stagger_nearby_enemies"}, {"ru"},
			-- loc_text("Командный голос")),

	--[+ Ability 2-1 - Duty and Honour +]--
	-- create_template("talent_tree_vet_abil2_001_en",
		-- {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency"}, {"en"},
			-- loc_text("Duty and Honour")),
	--[+ Russian +]-- Долг и честь
	-- create_template("talent_tree_vet_abil2_001_ru",
		-- {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency"}, {"ru"},
			-- loc_text("Долг и честь")),

	--[+ Ability 2-2 - Only In Death Does Duty End +]--
	-- create_template("talent_tree_vet_abil2_002_en",
		-- {"loc_talent_veteran_combat_ability_revives"}, {"en"},
			-- loc_text("Only In Death Does Duty End")),
	--[+ Russian +]-- Только в смерти заканчивается долг -- руоф Лишь после смерти заканчивается служение долгу
	create_template("talent_tree_vet_abil2_002_ru",
		{"loc_talent_veteran_combat_ability_revives"}, {"ru"},
			loc_text("Только в смерти заканчивается долг")),

	--[+ Ability 2-3 - For the Emperor! +]--
	-- create_template("talent_tree_vet_abil2_003_en",
		-- {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency"}, {"en"},
			-- loc_text("For the Emperor!")), За Императора! +]--
	--[+ Russian +]--
	-- create_template("talent_tree_vet_abil2_003_ru",
		-- {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency"}, {"ru"},
			-- loc_text("За Императора!")),

	--[+ Ability 3 - Infiltrate +]--
	-- create_template("talent_tree_vet_abil3_000_en",
		-- {"loc_talent_veteran_invisibility_on_combat_ability"}, {"en"},
			-- loc_text("Infiltrate")),
	--[+ Russian +]-- Проникновение
	-- create_template("talent_tree_vet_abil3_000_ru",
		-- {"loc_talent_veteran_invisibility_on_combat_ability"}, {"ru"},
			-- loc_text("Проникновение")),

	--[+ Ability 3-1 - Low Profile +]--
	-- create_template("talent_tree_vet_abil3_001_en",
		-- {"loc_talent_veteran_reduced_threat_after_combat_ability"}, {"en"},
			-- loc_text("Low Profile")),
	--[+ Russian +]-- Незаметность -- руоф Сдержанность
	create_template("talent_tree_vet_abil3_001_ru",
		{"loc_talent_veteran_reduced_threat_after_combat_ability"}, {"ru"},
			loc_text("Незаметность")),

	--[+ Ability 3-2 - Overwatch +]--
	-- create_template("talent_tree_vet_abil3_002_en",
		-- {"loc_talent_veteran_combat_ability_extra_charge"}, {"en"},
			-- loc_text("Overwatch")),
	--[+ Russian +]-- Наблюдение -- руоф Прикрытие
	create_template("talent_tree_vet_abil3_002_en",{"loc_talent_veteran_combat_ability_extra_charge"}, {"ru"},
			loc_text("Наблюдение")),

	--[+ Ability 3-3 - Hunter's Resolve +]--
	-- create_template("talent_tree_vet_abil3_003_en",
		-- {"loc_talent_veteran_toughness_bonus_leaving_invisibility"}, {"en"},
			-- loc_text("Hunter's Resolve")),
	--[+ Russian +]-- Упорство охотника
	-- create_template("talent_tree_vet_abil3_003_ru",
		-- {"loc_talent_veteran_toughness_bonus_leaving_invisibility"}, {"ru"},
			-- loc_text("Упорство охотника")),

	--[+ Ability 3-4 - Surprise Attack +]--
	-- create_template("talent_tree_vet_abil3_004_en",
		-- {"loc_talent_veteran_damage_bonus_leaving_invisibility"}, {"en"},
			-- loc_text("Surprise Attack")),
	--[+ Russian +]-- Внезапная атака
	-- create_template("talent_tree_vet_abil3_004_ru",
		-- {"loc_talent_veteran_damage_bonus_leaving_invisibility"}, {"ru"},
			-- loc_text("Внезапная атака")),

	--[+ Ability 3-5 - Close Quarters Killzone +]--
	-- create_template("talent_tree_vet_abil3_005_en",
		-- {"loc_talent_veteran_ability_assault"}, {"en"},
			-- loc_text("Close Quarters Killzone")),
	--[+ Russian +]-- Зона ближнего боя -- руоф Зона поражения на ближней дистанции
	create_template("talent_tree_vet_abil3_005_ru",
		{"loc_talent_veteran_ability_assault"}, {"ru"},
			loc_text("Зона ближнего боя")),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ Keystone 1 - Marksman's Focus +]--
	-- create_template("talent_tree_vet_keys1_000_en",
		-- {"loc_talent_veteran_snipers_focus"}, {"en"},
			-- loc_text("Marksman's Focus")),
	--[+ Russian +]-- Концентрация снайпера
	-- create_template("talent_tree_vet_keys1_000_ru",
		-- {"loc_talent_veteran_snipers_focus"}, {"ru"},
			-- loc_text("Концентрация снайпера")),

	--[+ Keystone 1-1 - Chink in their Armour +]--
	-- create_template("talent_tree_vet_keys1_001_en",
		-- {"loc_talent_veteran_snipers_focus_rending_bonus"}, {"en"},
			-- loc_text("Chink in their Armour")),
	--[+ Russian +]-- Щель в их броне -- руоф Щель в броне
	create_template("talent_tree_vet_keys1_001_ru",
		{"loc_talent_veteran_snipers_focus_rending_bonus"}, {"ru"},
			loc_text("Щель в их броне")),

	--[+ Keystone 1-2 - Tunnel Vision +]--
	-- create_template("talent_tree_vet_keys1_002_en",
		-- {"loc_talent_veteran_snipers_focus_toughness_bonus"}, {"en"},
			-- loc_text("Tunnel Vision")),
	--[+ Russian +]-- Тоннельное зрение
	-- create_template("talent_tree_vet_keys1_002_ru",
		-- {"loc_talent_veteran_snipers_focus_toughness_bonus"}, {"ru"},
			-- loc_text("Тоннельное зрение")),

	--[+ Keystone 1-3 - Long Range Assassin +]--
	-- create_template("talent_tree_vet_keys1_003_en",
		-- {"loc_talent_veteran_snipers_focus_increased_stacks"}, {"en"},
			-- loc_text("Long Range Assassin")),
	--[+ Russian +]-- Дальнобойный ассасин
	-- create_template("talent_tree_vet_keys1_003_ru",
		-- {"loc_talent_veteran_snipers_focus_increased_stacks"}, {"ru"},
			-- loc_text("Дальнобойный ассасин")),

	--[+ Keystone 1-4 - Camouflage +]--
	-- create_template("talent_tree_vet_keys1_004_en",
		-- {"loc_talent_veteran_snipers_focus_stacks_on_still"}, {"en"},
			-- loc_text("Camouflage")),
	--[+ Russian +]-- Камуфляж
	-- create_template("talent_tree_vet_keys1_004_ru",
		-- {"loc_talent_veteran_snipers_focus_stacks_on_still"}, {"ru"},
			-- loc_text("Камуфляж")),

	--[+ Keystone 2 - Focus Target! +]--
	-- create_template("talent_tree_vet_keys2_000_en",
		-- {"loc_talent_veteran_improved_tag"}, {"en"},
			-- loc_text("Focus Target!")),
	--[+ Russian +]-- Важная цель!
	-- create_template("talent_tree_vet_keys2_000_ru",
		-- {"loc_talent_veteran_improved_tag"}, {"ru"},
			-- loc_text("Важная цель!")),

	--[+ Keystone 2-1 - Target Down! +]--
	-- create_template("talent_tree_vet_keys2_001_en",
		-- {"loc_talent_veteran_improved_tag_dead_bonus"}, {"en"},
			-- loc_text("Target Down!")),
	--[+ Russian +]-- Цель поражена!
	-- create_template("talent_tree_vet_keys2_001_ru",
		-- {"loc_talent_veteran_improved_tag_dead_bonus"}, {"ru"},
			-- loc_text("Цель поражена!")),

	--[+ Keystone 2-2 - Redirect Fire! +]--
	-- create_template("talent_tree_vet_keys2_002_en",
		-- {"loc_talent_veteran_improved_tag_dead_coherency_bonus"}, {"en"},
			-- loc_text("Redirect Fire!")),
	--[+ Russian +]-- Перевести огонь!
	-- create_template("talent_tree_vet_keys2_002_ru",
		-- {"loc_talent_veteran_improved_tag_dead_coherency_bonus"}, {"ru"},
			-- loc_text("Перевести огонь!")),

	--[+ Keystone 2-3 - Focused Fire +]--
	-- create_template("talent_tree_vet_keys2_003_en",
		-- {"loc_talent_veteran_improved_tag_more_damage"}, {"en"},
			-- loc_text("Focused Fire")),
	--[+ Russian +]-- Сосредоточенный огонь
	-- create_template("talent_tree_vet_keys2_003_ru",
		-- {"loc_talent_veteran_improved_tag_more_damage"}, {"ru"},
			-- loc_text("Сосредоточенный огонь")),

	--[+ Keystone 3 - Weapons Specialist +]--
	-- create_template("talent_tree_vet_keys3_000_en",
		-- {"loc_talent_veteran_weapon_switch"}, {"en"},
			-- loc_text("Weapons Specialist")),
	--[+ Russian +]-- Специалист по оружию -- руоф Специалист по вооружениям
	create_template("talent_tree_vet_keys3_000_ru",
		{"loc_talent_veteran_weapon_switch"}, {"ru"},
			loc_text("Специалист по оружию")),

	--[+ Keystone 3-1 - Always Prepared +]--
	-- create_template("talent_tree_vet_keys3_001_en",
		-- {"loc_talent_veteran_weapon_switch_replenish_ammo"}, {"en"},
			-- loc_text("Always Prepared")),
	--[+ Russian +]-- Всегда готов
	-- create_template("talent_tree_vet_keys3_001_ru",
		-- {"loc_talent_veteran_weapon_switch_replenish_ammo"}, {"ru"},
			-- loc_text("Всегда готов")),

	--[+ Keystone 3-2 - Invigorated +]--
	-- create_template("talent_tree_vet_keys3_002_en",
		-- {"loc_talent_veteran_weapon_switch_replenish_stamina"}, {"en"},
			-- loc_text("Invigorated")),
	--[+ Russian +]-- Ободрение
	-- create_template("talent_tree_vet_keys3_002_ru",
		-- {"loc_talent_veteran_weapon_switch_replenish_stamina"}, {"ru"},
			-- loc_text("Ободрение")),

	--[+ Keystone 3-3 - On Your Toes +]--
	-- create_template("talent_tree_vet_keys3_003_en",
		-- {"loc_talent_veteran_weapon_switch_replenish_toughness"}, {"en"},
			-- loc_text("On Your Toes")),
	--[+ Russian +]-- Наготове
	-- create_template("talent_tree_vet_keys3_003_ru",
		-- {"loc_talent_veteran_weapon_switch_replenish_toughness"}, {"ru"},
			-- loc_text("Наготове")),

	--[+ Keystone 3-4 - Fleeting Fire +]--
	-- create_template("talent_tree_vet_keys3_004_en",
		-- {"loc_talent_veteran_weapon_switch_reload_speed"}, {"en"},
			-- loc_text("Fleeting Fire")),
	--[+ Russian +]-- Беглый огонь
	-- create_template("talent_tree_vet_keys3_004_ru",
		-- {"loc_talent_veteran_weapon_switch_reload_speed"}, {"ru"},
			-- loc_text("Беглый огонь")),

	--[+ Keystone 3-5 - Conditioning +]--
	-- create_template("talent_tree_vet_keys3_005_en",
		-- {"loc_talent_veteran_weapon_switch_stamina_reduction"}, {"en"},
			-- loc_text("Conditioning")),
	-- [+ Russian +]-- Подготовка
	-- create_template("talent_tree_vet_keys3_005_ru",
		-- {"loc_talent_veteran_weapon_switch_stamina_reduction"}, {"ru"},
			-- loc_text("Подготовка")),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Longshot +]--
	-- create_template("talent_tree_vet_pas_001_en",
		-- {"loc_talent_veteran_increased_damage_based_on_range"}, {"en"},
			-- loc_text("Longshot")),
	--[+ Russian +]-- Дальний выстрел -- ruof Далекая перспектива
	create_template("talent_tree_vet_pas_001_ru",
		{"loc_talent_veteran_increased_damage_based_on_range"}, {"ru"},
			loc_text("Дальний выстрел")),

	--[+ Passive 2 - Close Order Drill +]--
	-- create_template("talent_tree_vet_pas_002_en",
		-- {"loc_talent_veteran_toughness_damage_reduction_per_ally"}, {"en"},
			-- loc_text("Close Order Drill")),
	--[+ Russian +]-- Строевая подготовка
	-- create_template("talent_tree_vet_pas_002_ru",
		-- {"loc_talent_veteran_toughness_damage_reduction_per_ally"}, {"ru"},
			-- loc_text("Строевая подготовка")),

	--[+ Passive 3 - One Motion +]--
	-- create_template("talent_tree_vet_pas_003_en",
		-- {"loc_talent_veteran_reduce_swap_time"}, {"en"},
			-- loc_text("One Motion")),
	--[+ Russian +]-- В одно движение -- руоф Одно движение
	create_template("talent_tree_vet_pas_003_ru",
		{"loc_talent_veteran_reduce_swap_time"}, {"ru"},
			loc_text("В одно движение")),

	--[+ Passive 4 - Exhilarating Takedown +]--
	-- create_template("talent_tree_vet_pas_004_en",
		-- {"loc_talent_veteran_toughness_on_weakspot_kill"}, {"en"},
			-- loc_text("Exhilarating Takedown")),
	--[+ Russian +]-- Подбадривающее убийство -- руоф Бодрящее сокрушение
	create_template("talent_tree_vet_pas_004_ru",
		{"loc_talent_veteran_toughness_on_weakspot_kill"}, {"ru"},
			loc_text("Подбадривающее убийство")),

	--[+ Passive 5 - Volley Adept +]--
	-- create_template("talent_tree_vet_pas_005_en",
		-- {"loc_talent_veteran_reload_speed_on_elite_kill"}, {"en"},
			-- loc_text("Volley Adept")),
	--[+ Russian +]-- Умелый залп -- руоф Адепт залпа
	create_template("talent_tree_vet_pas_005_ru",
		{"loc_talent_veteran_reload_speed_on_elite_kill"}, {"ru"},
			loc_text("Умелый залп")),

	--[+ Passive 6 - Charismatic +]--
	-- create_template("talent_tree_vet_pas_006_en",
		-- {"loc_talent_veteran_increased_aura_radius"}, {"en"},
			-- loc_text("Charismatic")),
	--[+ Russian +]-- Харизматичный -- руоф Обаятельный
	create_template("talent_tree_vet_pas_006_ru",
		{"loc_talent_veteran_increased_aura_radius"}, {"ru"},
			loc_text("Харизматичный")),

	--[+ Passive 7 - Confirmed Kill +]--
	-- create_template("talent_tree_vet_pas_007_en",
		-- {"loc_talent_veteran_toughness_on_elite_kill"}, {"en"},
			-- loc_text("Confirmed Kill")),
	--[+ Russian +]-- Подтверждённое убийство -- руоф Подтвержденное убийство
	create_template("talent_tree_vet_pas_007_ru",
		{"loc_talent_veteran_toughness_on_elite_kill"}, {"ru"},
			loc_text("Подтверждённое убийство")),

	--[+ Passive 8 - Tactical Reload +]--
	-- create_template("talent_tree_vet_pas_008_en",
		-- {"loc_talent_ranger_reload_speed_empty_mag"}, {"en"},
			-- loc_text("Tactical Reload")),
	--[+ Russian +]-- Тактическая перезарядка
	-- create_template("talent_tree_vet_pas_008_ru",
		-- {"loc_talent_ranger_reload_speed_empty_mag"}, {"ru"},
			-- loc_text("Тактическая перезарядка")),

	--[+ Passive 9 - Out for Blood +]--
	-- create_template("talent_tree_vet_pas_009_en",
		-- {"loc_talent_veteran_all_kills_replenish_toughness"}, {"en"},
			-- loc_text("Out for Blood")),
	--[+ Russian +]-- На тропе войны -- руоф В поисках крови
	create_template("talent_tree_vet_pas_009_ru",
		{"loc_talent_veteran_all_kills_replenish_toughness"}, {"ru"},
			loc_text("На тропе войны")),

	--[+ Passive 10 - Get Back in the Fight! +]--
	-- create_template("talent_tree_vet_pas_010_en",
		-- {"loc_talent_veteran_movement_speed_on_toughness_broken"}, {"en"},
			-- loc_text("Get Back in the Fight!")),
	--[+ Russian +]-- Возвращайся в бой! -- руоф Вернуться в бой!
	create_template("talent_tree_vet_pas_010_ru",
		{"loc_talent_veteran_movement_speed_on_toughness_broken"}, {"ru"},
			loc_text("Возвращайся в бой!")),

	--[+ Passive 11 - Catch a Breath +]--
	-- create_template("talent_tree_vet_pas_011_en",
		-- {"loc_talent_veteran_replenish_toughness_outside_melee"}, {"en"},
			-- loc_text("Catch a Breath")),
	--[+ Russian +]-- Переведи дух -- руоф Передышка
	create_template("talent_tree_vet_pas_011_ru",
		{"loc_talent_veteran_replenish_toughness_outside_melee"}, {"ru"},
			loc_text("Переведи дух")),

	--[+ Passive 12 - Grenade Tinkerer +]--
	-- create_template("talent_tree_vet_pas_012_en",
		-- {"loc_talent_veteran_improved_grenades"}, {"en"},
			-- loc_text("Grenade Tinkerer")),
	--[+ Russian +]-- Гранатный мастер -- руоф Любитель гранат
	create_template("talent_tree_vet_pas_012_ru",
		{"loc_talent_veteran_improved_grenades"}, {"ru"},
			loc_text("Гранатный мастер")),

	--[+ Passive 13 - Covering Fire +]--
	-- create_template("talent_tree_vet_pas_013_en",
		-- {"loc_talent_veteran_replenish_toughness_and_boost_allies"}, {"en"},
			-- loc_text("Covering Fire")),
	--[+ Russian +]-- Прикрывающий огонь -- руоф Прикрытие огнем
	create_template("talent_tree_vet_pas_013_ru",
		{"loc_talent_veteran_replenish_toughness_and_boost_allies"}, {"ru"},
			loc_text("Прикрывающий огонь")),

	--[+ Passive 14 - Serrated Blade +]--
	-- create_template("talent_tree_vet_pas_014_en",
		-- {"loc_talent_veteran_hits_cause_bleed"}, {"en"},
			-- loc_text("Serrated Blade")),
	--[+ Russian +]-- Зазубренный клинок -- руоф Зазубренное лезвие
	create_template("talent_tree_vet_pas_014_ru",
		{"loc_talent_veteran_hits_cause_bleed"}, {"ru"},
			loc_text("Зазубренный клинок")),

	--[+ Passive 15 - Agile Engagement +]--
	-- create_template("talent_tree_vet_pas_015_en",
		-- {"loc_talent_veteran_kill_grants_damage_to_other_slot"}, {"en"},
			-- loc_text("Agile Engagement")),
	--[+ Russian +]-- Ловкое взаимодействие
	-- create_template("talent_tree_vet_pas_015_ru",
		-- {"loc_talent_veteran_kill_grants_damage_to_other_slot"}, {"ru"},
			-- loc_text("Ловкое взаимодействие")),

	--[+ Passive 16 - Kill Zone +]--
	-- create_template("talent_tree_vet_pas_016_en",
		-- {"loc_talent_veteran_ranged_power_out_of_melee"}, {"en"},
			-- loc_text("Kill Zone")),
	--[+ Russian +]-- Зона поражение
	-- create_template("talent_tree_vet_pas_016_ru",
		-- {"loc_talent_veteran_ranged_power_out_of_melee"}, {"ru"},
			-- loc_text("Зона поражение")),

	--[+ Passive 17 - Opening Salvo +]--
	-- create_template("talent_tree_vet_pas_017_en",
		-- {"loc_talent_veteran_bonus_crit_chance_on_ammo"}, {"en"},
			-- loc_text("Opening Salvo")),
	--[+ Russian +]-- Открывающий залп
	-- create_template("talent_tree_vet_pas_017_ru",
		-- {"loc_talent_veteran_bonus_crit_chance_on_ammo"}, {"ru"},
			-- loc_text("Открывающий залп")),

	--[+ Passive 18 - Field Improvisation +]--
	-- create_template("talent_tree_vet_pas_018_en",
		-- {"loc_talent_veteran_better_deployables"}, {"en"},
			-- loc_text("Field Improvisation")),
	--[+ Russian +]-- Полевая импровизация
	-- create_template("talent_tree_vet_pas_018_ru",
		-- {"loc_talent_veteran_better_deployables"}, {"ru"},
			-- loc_text("Полевая импровизация")),

	--[+ Passive 19 - Twinned Blast +]--
	-- create_template("talent_tree_vet_pas_019_en",
		-- {"loc_talent_veteran_extra_grenade_throw_chance"}, {"en"},
			-- loc_text("Twinned Blast")),
	--[+ Russian +]-- Двойной взрыв -- Спаренный взрыв
	create_template("talent_tree_vet_pas_019_ru",
		{"loc_talent_veteran_extra_grenade_throw_chance"}, {"ru"},
			loc_text("Двойной взрыв")),

	--[+ Passive 20 - Demolition Stockpile +]--
	-- create_template("talent_tree_vet_pas_020_en",
		-- {"loc_talent_ranger_replenish_grenade"}, {"en"},
			-- loc_text("Demolition Stockpile")),
	--[+ Russian +]-- Склад взрывчатки
	-- create_template("talent_tree_vet_pas_020_ru",
		-- {"loc_talent_ranger_replenish_grenade"}, {"ru"},
			-- loc_text("Склад взрывчатки")),

	--[+ Passive 21 - Grenadier +]--
	-- create_template("talent_tree_vet_pas_021_en",
		-- {"loc_talent_veteran_extra_grenade"}, {"en"},
			-- loc_text("Grenadier")),
	--[+ Russian +]-- Гренадёр -- руоф Гренадер
	create_template("talent_tree_vet_pas_021_ru",
		{"loc_talent_veteran_extra_grenade"}, {"ru"},
			loc_text("Гренадёр")),

	--[+ Passive 22 - Leave No One Behind +]--
	-- create_template("talent_tree_vet_pas_022_en",
		-- {"loc_talent_veteran_movement_speed_towards_downed"}, {"en"},
			-- loc_text("Leave No One Behind")),
	--[+ Russian +]-- Никого не оставлять позади
	-- create_template("talent_tree_vet_pas_022_ru",
		-- {"loc_talent_veteran_movement_speed_towards_downed"}, {"ru"},
			-- loc_text("Никого не оставлять позади")),

	--[+ Passive 23 - Precision Strikes +]--
	-- create_template("talent_tree_vet_pas_023_en",
		-- {"loc_talent_veteran_increased_weakspot_damage"}, {"en"},
			-- loc_text("Precision Strikes")),
	--[+ Russian +]-- Точные удары
	-- create_template("talent_tree_vet_pas_023_ru",
		-- {"loc_talent_veteran_increased_weakspot_damage"}, {"ru"},
			-- loc_text("Точные удары")),

	--[+ Passive 24 - Determined +]--
	-- create_template("talent_tree_vet_pas_024_en",
		-- {"loc_talent_veteran_supression_immunity"}, {"en"},
			-- loc_text("Determined")),
	--[+ Russian +]-- Решительность
	-- create_template("talent_tree_vet_pas_024_ru",
		-- {"loc_talent_veteran_supression_immunity"}, {"ru"},
			-- loc_text("Решительность")),

	--[+ Passive 25 - Deadshot +]--
	-- create_template("talent_tree_vet_pas_025_en",
		-- {"loc_talent_ranged_ads_drains_stamina_boost"}, {"en"},
			-- loc_text("Deadshot")),
	--[+ Russian +]-- Смертельный выстрел
	-- create_template("talent_tree_vet_pas_025_ru",
		-- {"loc_talent_ranged_ads_drains_stamina_boost"}, {"ru"},
			-- loc_text("Смертельный выстрел")),

	--[+ Passive 26 - Born Leader +]--
	-- create_template("talent_tree_vet_pas_026_en",
		-- {"loc_talent_veteran_allies_share_toughness"}, {"en"},
			-- loc_text("Born Leader")),
	--[+ Russian +]-- Прирождённый лидер -- руоф Прирожденный лидер
	create_template("talent_tree_vet_pas_026_ru",
		{"loc_talent_veteran_allies_share_toughness"}, {"ru"},
			loc_text("Прирождённый лидер")),

	--[+ Passive 27 - Keep Their Heads Down! +]--
	-- create_template("talent_tree_vet_pas_027_en",
		-- {"loc_talent_veteran_increase_suppression"}, {"en"},
			-- loc_text("Keep Their Heads Down!")),
	--[+ Russian +]-- Не давай им поднять головы! -- руоф Пригнитесь!
	create_template("talent_tree_vet_pas_027_ru",
		{"loc_talent_veteran_increase_suppression"}, {"ru"},
			loc_text("Не давай им поднять головы!")),

	--[+ Passive 28 - Reciprocity +]--
	-- create_template("talent_tree_vet_pas_028_en",
		-- {"loc_talent_veteran_dodging_grants_crit"}, {"en"},
			-- loc_text("Reciprocity")),
	--[+ Russian +]-- Взаимообмен -- руоф Взаимная выгода
	create_template("talent_tree_vet_pas_028_ru",
		{"loc_talent_veteran_dodging_grants_crit"}, {"ru"},
			loc_text("Взаимообмен")),

	--[+ Passive 29 - Duck and Dive +]--
	-- create_template("talent_tree_vet_pas_029_en",
		-- {"loc_talent_ranger_stamina_on_ranged_dodge"}, {"en"},
			-- loc_text("Duck and Dive")),
	--[+ Russian +]-- Пригнись и увернись -- руоф Голову в песок
	create_template("talent_tree_vet_pas_029_ru",
		{"loc_talent_ranger_stamina_on_ranged_dodge"}, {"ru"},
			loc_text("Пригнись и увернись")),

	--[+ Passive 30 - Fully Loaded +]--
	-- create_template("talent_tree_vet_pas_030_en",
		-- {"loc_talent_veteran_ammo_increase"}, {"en"},
			-- loc_text("Fully Loaded")),
	--[+ Russian +]-- Полный запас -- руоф Полный заряд
	create_template("talent_tree_vet_pas_030_ru",
		{"loc_talent_veteran_ammo_increase"}, {"ru"},
			loc_text("Полный запас")),

	--[+ Passive 31 - Tactical Awareness +]--
	-- create_template("talent_tree_vet_pas_031_en",
		-- {"loc_talent_veteran_elite_kills_reduce_cooldown"}, {"en"},
			-- loc_text("Tactical Awareness")),
	--[+ Russian +]-- Тактическая осведомлённость -- руоф Тактическая осведомленность
	create_template("talent_tree_vet_pas_031_ru",
		{"loc_talent_veteran_elite_kills_reduce_cooldown"}, {"ru"},
			loc_text("Тактическая осведомлённость")),

	--[+ Passive 32 - Desperado +]--
	-- create_template("talent_tree_vet_pas_032_en",
		-- {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse"}, {"en"},
			-- loc_text("Desperado")),
	--[+ Russian +]-- Сорвиголова
	-- create_template("talent_tree_vet_pas_032_ru",
		-- {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse"}, {"ru"},
			-- loc_text("Сорвиголова")),

	--[+ Passive 33 - Shock Trooper +]--
	-- create_template("talent_tree_vet_pas_033_en",
		-- {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit"}, {"en"},
			-- loc_text("Shock Trooper")),
	--[+ Russian +]-- Штурмовик
	-- create_template("talent_tree_vet_pas_033_ru",
		-- {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit"}, {"ru"},
			-- loc_text("Штурмовик")),

	--[+ Passive 34 - Superiority Complex +]--
	-- create_template("talent_tree_vet_pas_034_en",
		-- {"loc_talent_veteran_increase_damage_vs_elites"}, {"en"},
			-- loc_text("Superiority Complex")),
	--[+ Russian +]-- Мания величия
	-- create_template("talent_tree_vet_pas_034_ru",
		-- {"loc_talent_veteran_increase_damage_vs_elites"}, {"ru"},
			-- loc_text("Мания величия")),

	--[+ Passive 35 - Iron Will +]--
	-- create_template("talent_tree_vet_pas_035_en",
		-- {"loc_talent_veteran_block_break_gives_tdr"}, {"en"},
			-- loc_text("Iron Will")),
	--[+ Russian +]-- Железная воля
	-- create_template("talent_tree_vet_pas_035_ru",
		-- {"loc_talent_veteran_block_break_gives_tdr"}, {"ru"},
			-- loc_text("Железная воля")),

	--[+ Passive 36 - Demolition Team +]--
	-- create_template("talent_tree_vet_pas_036_en",
		-- {"loc_talent_ranger_grenade_on_elite_kills_coop"}, {"en"},
			-- loc_text("Demolition Team")),
	--[+ Russian +]-- Команда подрывников -- руоф Группа подрыва
	create_template("talent_tree_vet_pas_036_ru",
		{"loc_talent_ranger_grenade_on_elite_kills_coop"}, {"ru"},
			loc_text("Команда подрывников")),

	--[+ Passive 37 - Exploit Weakness +]--
	-- create_template("talent_tree_vet_pas_037_en",
		-- {"loc_talent_veteran_crits_rend"}, {"en"},
			-- loc_text("Exploit Weakness")),
	--[+ Russian +]-- Использование слабостей
	-- create_template("talent_tree_vet_pas_037_ru",
		-- {"loc_talent_veteran_crits_rend"}, {"ru"},
			-- loc_text("Использование слабостей")),

	--[+ Passive 38 - Onslaught +]--
	-- create_template("talent_tree_vet_pas_038_en",
		-- {"loc_talent_veteran_continous_hits_apply_rending"}, {"en"},
			-- loc_text("Onslaught")),
	--[+ Russian +]-- Натиск
	-- create_template("talent_tree_vet_pas_038_en",
		-- {"loc_talent_veteran_continous_hits_apply_rending"}, {"ru"},
			-- loc_text("Натиск")),

	--[+ Passive 39 - Trench Fighter Drill +]--
	-- create_template("talent_tree_vet_pas_039_en",
		-- {"loc_talent_veteran_attack_speed"}, {"en"},
			-- loc_text("Trench Fighter Drill")),
	--[+ Russian +]-- Окопные тренировки -- руоф Тренировка в окопах
	create_template("talent_tree_vet_pas_039_ru",
		{"loc_talent_veteran_attack_speed"}, {"ru"},
			loc_text("Окопные тренировки")),

	--[+ Passive 40 - Skirmisher +]--
	-- create_template("talent_tree_vet_pas_040_en",
		-- {"loc_talent_veteran_damage_damage_after_sprinting"}, {"en"},
			-- loc_text("Skirmisher")),
	--[+ Russian +]-- Застрельщик
	-- create_template("talent_tree_vet_pas_040_ru",
		-- {"loc_talent_veteran_damage_damage_after_sprinting"}, {"ru"},
			-- loc_text("Застрельщик")),

	--[+ Passive 41 - Competitive Urge +]--
	-- create_template("talent_tree_vet_pas_041_en",
		-- {"loc_talent_veteran_ally_kills_increase_damage"}, {"en"},
			-- loc_text("Competitive Urge")),
	--[+ Russian +]-- Соревновательный инстинкт -- руоф Состязательный мотив
	create_template("talent_tree_vet_pas_041_ru",
		{"loc_talent_veteran_ally_kills_increase_damage"}, {"ru"},
			loc_text("Соревновательный инстинкт")),

	--[+ Passive 42 - Rending Strikes +]--
	-- create_template("talent_tree_vet_pas_042_en",
		-- {"loc_talent_veteran_rending_bonus"}, {"en"},
			-- loc_text("Rending Strikes")),
	--[+ Russian +]-- Пробивающие удары -- руоф Разрушительные удары
	create_template("talent_tree_vet_pas_042_ru",
		{"loc_talent_veteran_rending_bonus"}, {"ru"},
			loc_text("Пробивающие удары")),

	--[+ Passive 43 - Bring it Down! +]--
	-- create_template("talent_tree_vet_pas_043_en",
		-- {"loc_talent_veteran_big_game_hunter"}, {"en"},
			-- loc_text("Bring it Down!")),
	--[+ Russian +]-- Убей их! -- руоф Убивай!
	create_template("talent_tree_vet_pas_043_ru",
		{"loc_talent_veteran_big_game_hunter"}, {"ru"},
			loc_text("Убей их!")),

--[+ ++OGRYN - ОГРИН++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ Blitz 0 - Big Box of Hurt +]--
	-- create_template("talent_tree_ogr_blitz0_000_en",
		-- {"loc_ability_ogryn_grenade_box"}, {"en"},
			-- loc_text("Big Box of Hurt")),
	--[+ Russian +]-- Большая коробка боли -- руоф Ящик, полный боли
	create_template("talent_tree_ogr_blitz0_000_ru",
		{"loc_ability_ogryn_grenade_box"}, {"ru"},
			loc_text("Большая коробка боли")),

	--[+ Blitz 1 - Big Friendly Rock +]--
	-- create_template("talent_tree_ogr_blitz1_000_en",
		-- {"loc_ability_ogryn_friend_rock"}, {"en"},
			-- loc_text("Big Friendly Rock")),
	--[+ Russian +]-- Большой дружелюбный валун
	-- create_template("talent_tree_ogr_blitz1_000_ru",
		-- {"loc_ability_ogryn_friend_rock"}, {"ru"},
			-- loc_text("Большой дружелюбный валун")),

	--[+ Blitz 2 - Bombs Away! +]--
	-- create_template("talent_tree_ogr_blitz2_000_en",
		-- {"loc_talent_bonebreaker_grenade_super_armor_explosion"}, {"en"},
			-- loc_text("Bombs Away!")),
	--[+ Russian +]-- Бросай бомбы! -- руоф Кидаю бомбу!
	create_template("talent_tree_ogr_blitz2_000_ru",
		{"loc_talent_bonebreaker_grenade_super_armor_explosion"}, {"ru"},
			loc_text("Бросай бомбы!")),

	--[+ Blitz 3 - Frag Bomb +]--
	-- create_template("talent_tree_ogr_blitz3_000_en",
		-- {"loc_ability_ogryn_grenade_demolition"}, {"en"},
			-- loc_text("Frag Bomb")),
	--[+ Russian +]-- Фраг-бомба -- руоф Осколочная бомба
	create_template("talent_tree_ogr_blitz3_000_ru",
		{"loc_ability_ogryn_grenade_demolition"}, {"ru"},
			loc_text("Фраг-бомба")),

--[+ +AURA - АУРА+ +]--
	--[+ Aura 0 - Intimidating Presence +]--
	-- create_template("talent_tree_ogr_aura0_000_en",
		-- {"loc_talent_ogryn_2_base_4"}, {"en"},
			-- loc_text("Intimidating Presence")),
	--[+ Russian +]-- Устрашающее присутствие -- руоф Пугающее присутствие
	create_template("talent_tree_ogr_aura0_000_ru",
		{"loc_talent_ogryn_2_base_4"}, {"ru"},
			loc_text("Устрашающее присутствие")),

	--[+ Aura 1 - Bonebreaker's Aura +]--
	-- create_template("talent_tree_ogr_aura1_000_en",
		-- {"loc_talent_damage_aura"}, {"en"},
			-- loc_text("Bonebreaker's Aura")),
	--[+ Russian +]-- Аура костолома
	-- create_template("talent_tree_ogr_aura1_000_ru",
		-- {"loc_talent_damage_aura"}, {"ru"},
			-- loc_text("Аура костолома")),

	--[+ Aura 2 - Stay Close! +]--
	-- create_template("talent_tree_ogr_aura2_000_en",
		-- {"loc_talent_ogryn_toughness_regen_aura"}, {"en"},
			-- loc_text("Stay Close!")),
	--[+ Russian +]-- Держись рядом! -- руоф Не расходимся!
	create_template("talent_tree_ogr_aura2_000_ru",
		{"loc_talent_ogryn_toughness_regen_aura"}, {"ru"},
			loc_text("Держись рядом!")),

	--[+ Aura 3 - Coward Culling +]--
	-- create_template("talent_tree_ogr_aura3_000_en",
		-- {"loc_talent_ogryn_damage_vs_suppressed"}, {"en"},
			-- loc_text("Coward Culling")),
	--[+ Russian +]-- Отсев трусливых -- руоф Трусливые отбросы
	create_template("talent_tree_ogr_aura3_000_ru",
		{"loc_talent_ogryn_damage_vs_suppressed"}, {"ru"},
			loc_text("Отсев трусливых")),

--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
	--[+ Ability 0 - Bull Rush +]--
	-- create_template("talent_tree_ogr_abil0_000_en",
		-- {"loc_ability_ogryn_charge"}, {"en"},
			-- loc_text("Bull Rush")),
	--[+ Russian +]-- Рывок быка -- руоф Бычий натиск
	create_template("talent_tree_ogr_abil0_000_ru",
		{"loc_ability_ogryn_charge"}, {"ru"},
			loc_text("Рывок быка")),

	--[+ Ability 1 - Indomitable +]--
	-- create_template("talent_tree_ogr_abil1_000_en",
		-- {"loc_talent_ogryn_bull_rush_distance"}, {"en"},
			-- loc_text("Indomitable")),
	--[+ Russian +]-- Неукротимый -- руоф Неукротимость
	create_template("talent_tree_ogr_abil1_000_ru",
		{"loc_talent_ogryn_bull_rush_distance"}, {"ru"},
			loc_text("Неукротимый")),

	--[+ Ability 1-1 - Stomping Boots +]--
	-- create_template("talent_tree_ogr_abil1_001_en",
		-- {"loc_talent_ogryn_toughness_on_bull_rush"}, {"en"},
			-- loc_text("Stomping Boots")),
	--[+ Russian +]-- Топающие сапоги -- руоф Сокрушающий топот
	create_template("talent_tree_ogr_abil1_001_ru",
		{"loc_talent_ogryn_toughness_on_bull_rush"}, {"ru"},
			loc_text("Топающие сапоги")),

	--[+ Ability 1-2 - Trample +]--
	-- create_template("talent_tree_ogr_abil1_002_en",
		-- {"loc_talent_ogryn_ability_charge_trample"}, {"en"},
			-- loc_text("Trample")),
	--[+ Russian +]-- Топот -- руоф Топанье
	create_template("talent_tree_ogr_abil1_002_ru",
		{"loc_talent_ogryn_ability_charge_trample"}, {"ru"},
			loc_text("Топот")),

	--[+ Ability 1-3 - Pulverise +]--
	-- create_template("talent_tree_ogr_abil1_003_en",
		-- {"loc_talent_ogryn_bleed_on_bull_rush"}, {"en"},
			-- loc_text("Pulverise")),
	--[+ Russian +]-- Разбрызгивание -- Крошилово
	create_template("talent_tree_ogr_abil1_003_ru",
		{"loc_talent_ogryn_bleed_on_bull_rush"}, {"ru"},
			loc_text("Разбрызгивание")),

	--[+ Ability 2 - Loyal Protector +]--
	-- create_template("talent_tree_ogr_abil2_000_en",
		-- {"loc_ability_ogryn_taunt_shout"}, {"en"},
			-- loc_text("Loyal Protector")),
	--[+ Russian +]-- Верный защитник
	-- create_template("talent_tree_ogr_abil2_000_ru",
		-- {"loc_ability_ogryn_taunt_shout"}, {"ru"},
			-- loc_text("Верный защитник")),

	--[+ Ability 2-1 - Valuable Distraction +]--
	-- create_template("talent_tree_ogr_abil2_001_en",
		-- {"loc_talent_ogryn_taunt_damage_taken_increase"}, {"en"},
			-- loc_text("Valuable Distraction")),
	--[+ Russian +]-- Отвлекающий манёвр -- руоф Ценное отвлечение
	create_template("talent_tree_ogr_abil2_001_ru",
		{"loc_talent_ogryn_taunt_damage_taken_increase"}, {"ru"},
			loc_text("Отвлекающий манёвр")),

	--[+ Ability 2-2 - Go Again +]--
	-- create_template("talent_tree_ogr_abil2_002_en",
		-- {"loc_talent_ogryn_taunt_stagger_cd"}, {"en"},
			-- loc_text("Go Again!")),
	--[+ Russian +]-- Давай по новой! -- Еще раз!
	create_template("talent_tree_ogr_abil2_002_ru",
		{"loc_talent_ogryn_taunt_stagger_cd"}, {"ru"},
			loc_text("Давай по новой!")),

	--[+ Ability 2-3 - Big Lungs +]--
	-- create_template("talent_tree_ogr_abil2_003_en",
		-- {"loc_talent_ogryn_taunt_radius_increase"}, {"en"},
			-- loc_text("Big Lungs")),
	--[+ Russian +]-- Громогласный -- руоф Мощные легкие
	create_template("talent_tree_ogr_abil2_003_ru",
		{"loc_talent_ogryn_taunt_radius_increase"}, {"ru"},
			loc_text("Громогласный")),

	--[+ Ability 3 - Point-Blank Barrage +]--
	-- create_template("talent_tree_ogr_abil3_000_en",
		-- {"loc_talent_ogryn_combat_ability_special_ammo"}, {"en"},
			-- loc_text("Point-Blank Barrage")),
	--[+ Russian +]-- Беспощадный обстрел в упор -- руоф Решительный натиск
	create_template("talent_tree_ogr_abil3_000_ru",
		{"loc_talent_ogryn_combat_ability_special_ammo"}, {"ru"},
			loc_text("Беспощадный обстрел в упор")),

	--[+ Ability 3-1 - Bullet Bravado +]--
	-- create_template("talent_tree_ogr_abil3_001_en",
		-- {"loc_talent_ogryn_special_ammo_toughness"}, {"en"},
			-- loc_text("Bullet Bravado")),
	--[+ Russian +]-- Бравада стрелка -- руоф Лихая пуля
	create_template("talent_tree_ogr_abil3_001_ru",
		{"loc_talent_ogryn_special_ammo_toughness"}, {"ru"},
			loc_text("Бравада стрелка")),

	--[+ Ability 3-2 - Hail of Fire +]--
	-- create_template("talent_tree_ogr_abil3_002_en",
		-- {"loc_talent_ogryn_special_ammo_armor_pen"}, {"en"},
			-- loc_text("Hail of Fire")),
	--[+ Russian +]-- Град огня -- руоф Слава пламени
	create_template("talent_tree_ogr_abil3_002_ru",
		{"loc_talent_ogryn_special_ammo_armor_pen"}, {"ru"},
			loc_text("Град огня")),

	--[+ Ability 3-3 - Light 'em Up +]--
	-- create_template("talent_tree_ogr_abil3_003_en",
		-- {"loc_talent_ogryn_special_ammo_fire_shots"}, {"en"},
			-- loc_text("Light 'em Up")),
	--[+ Russian +]-- Задай жару -- руоф Зададим жару
	create_template("talent_tree_ogr_abil3_003_ru",
		{"loc_talent_ogryn_special_ammo_fire_shots"}, {"ru"},
			loc_text("Задай жару")),

--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
	--[+ Keystone 1 - Heavy Hitter +]--
	-- create_template("talent_tree_ogr_keys1_000_en",
		-- {"loc_talent_ogryn_passive_heavy_hitter"}, {"en"},
			-- loc_text("Heavy Hitter")),
	--[+ Russian +]-- Тяжёлый нападающий -- руоф Тяжеловес
	create_template("talent_tree_ogr_keys1_000_ru",
		{"loc_talent_ogryn_passive_heavy_hitter"}, {"ru"},
			loc_text("Тяжёлый нападающий")),

	--[+ Keystone 1-1 - Just Getting Started +]--
	-- create_template("talent_tree_ogr_keys1_001_en",
		-- {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed"}, {"en"},
			-- loc_text("Just Getting Started")),
	--[+ Russian +]-- Я только начал  -- руоф Лишь начало!
	create_template("talent_tree_ogr_keys1_001_ru",
		{"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed"}, {"ru"},
			loc_text("Я только начал")),

	--[+ Keystone 1-2 - Unstoppable +]--
	-- create_template("talent_tree_ogr_keys1_002_en",
		-- {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness"}, {"en"},
			-- loc_text("Unstoppable")),
	--[+ Russian +]-- Неудержимый -- руоф Неудержимость
	create_template("talent_tree_ogr_keys1_002_ru",
		{"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness"}, {"ru"},
			loc_text("Неудержимый")),

	--[+ Keystone 1-3 - Brutish Momentum +]--
	-- create_template("talent_tree_ogr_keys1_003_en",
		-- {"loc_talent_ogryn_heavy_hitter_light_attacks_refresh"}, {"en"},
			-- loc_text("Brutish Momentum")),
	--[+ Russian +]-- Брутальный моментум -- руоф Зверский моментум
	create_template("talent_tree_ogr_keys1_003_ru",
		{"loc_talent_ogryn_heavy_hitter_light_attacks_refresh"}, {"ru"},
			loc_text("Брутальный моментум")),

	--[+ Keystone 2 - Feel No Pain +]--
	-- create_template("talent_tree_ogr_keys2_000_en",
		-- {"loc_talent_ogryn_carapace_armor"}, {"en"},
			-- loc_text("Feel No Pain")),
	--[+ Russian +]-- Неболит
	-- create_template("talent_tree_ogr_keys2_000_ru",
		-- {"loc_talent_ogryn_carapace_armor"}, {"ru"},
			-- loc_text("Неболит")),

	--[+ Keystone 2-1 - Pained Outburst +]--
	-- create_template("talent_tree_ogr_keys2_001_en",
		-- {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks"}, {"en"},
			-- loc_text("Pained Outburst")),
	-- [+ Russian +]-- Вспышка боли
	-- create_template("talent_tree_ogr_keys2_001_ru",
		-- {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks"}, {"ru"},
			-- loc_text("Вспышка боли")),

	--[+ Keystone 2-2 - Strongest! +]--
	-- create_template("talent_tree_ogr_keys2_002_en",
		-- {"loc_talent_ogryn_carapace_armor_add_stack_on_push"}, {"en"},
			-- loc_text("Strongest!")),
	--[+ Russian +]-- Сильнейший!
	-- create_template("talent_tree_ogr_keys2_002_ru",
		-- {"loc_talent_ogryn_carapace_armor_add_stack_on_push"}, {"ru"},
			-- loc_text("Сильнейший!")),

	--[+ Keystone 2-3 - Toughest! +]--
	-- create_template("talent_tree_ogr_keys2_003_en",
		-- {"loc_talent_ogryn_carapace_armor_more_toughness"}, {"en"},
			-- loc_text("Toughest!")),
	--[+ Russian +]-- Стойкий! -- руоф Самый выносливый!
	create_template("talent_tree_ogr_keys2_003_ru",
		{"loc_talent_ogryn_carapace_armor_more_toughness"}, {"ru"},
			loc_text("Стойкий!")),

	--[+ Keystone 3 - Burst Limiter Override +]--
	-- create_template("talent_tree_ogr_keys3_000_en",
		-- {"loc_talent_ogryn_chance_to_not_consume_ammo"}, {"en"},
			-- loc_text("Burst Limiter Override")),
	--[+ Russian +]-- Обход ограничителя очереди -- руоф Взлом ограничителя взрыва
	create_template("talent_tree_ogr_keys3_000_ru",
		{"loc_talent_ogryn_chance_to_not_consume_ammo"}, {"ru"},
			loc_text("Обход ограничителя очереди")),

	--[+ Keystone 3-1 - Maximum Firepower +]--
	-- create_template("talent_tree_ogr_keys3_001_en",
		-- {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction"}, {"en"},
			-- loc_text("Maximum Firepower")),
	--[+ Russian +]-- Максимальная огневая мощь
	-- create_template("talent_tree_ogr_keys3_001_ru",
		-- {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction"}, {"ru"},
			-- loc_text("Максимальная огневая мощь")),

	--[+ Keystone 3-2 - Good Shootin' +]--
	-- create_template("talent_tree_ogr_keys3_002_en",
		-- {"loc_talent_ogryn_critical_leadbelcher"}, {"en"},
			-- loc_text("Good Shootin'")),
	--[+ Russian +]-- Хорошая стрельба -- руоф Хороший выстрел
	create_template("talent_tree_ogr_keys3_002_ru",
		{"loc_talent_ogryn_critical_leadbelcher"}, {"ru"},
			loc_text("Хорошая стрельба")),

	--[+ Keystone 3-3 - More Burst Limiter Overrides! +]--
	-- create_template("talent_tree_ogr_keys3_003_en",
		-- {"loc_talent_ogryn_increased_leadbelcher_chance"}, {"en"},
			-- loc_text("More Burst Limiter Overrides!")),
	--[+ Russian +]-- Ещё больший обход ограничителя очереди! -- руоф Больше взлома ограничителя взрыва!
	create_template("talent_tree_ogr_keys3_003_ru",
		{"loc_talent_ogryn_increased_leadbelcher_chance"}, {"ru"},
			loc_text("Ещё больший обход ограничителя очереди!")),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Furious +]--
	-- create_template("talent_tree_ogr_pas_001_en",
		-- {"loc_talent_ogryn_damage_per_enemy_hit_previous"}, {"en"},
			-- loc_text("Furious")),
	--[+ Russian +]-- Разъярённый -- руоф Разъяренный
	create_template("talent_tree_ogr_pas_001_ru",
		{"loc_talent_ogryn_damage_per_enemy_hit_previous"}, {"ru"},
			loc_text("Разъярённый")),

	--[+ Passive 2 - Reloaded and Ready +]--
	-- create_template("talent_tree_ogr_pas_002_en",
		-- {"loc_talent_ogryn_ranged_damage_on_reload"}, {"en"},
			-- loc_text("Reloaded and Ready")),
	--[+ Russian +]-- Перезаряжен и готов -- руоф Заряжен и готов
	create_template("talent_tree_ogr_pas_002_ru",
		{"loc_talent_ogryn_ranged_damage_on_reload"}, {"ru"},
			loc_text("Перезаряжен и готов")),

	--[+ Passive 3 - The Best Defence +]--
	-- create_template("talent_tree_ogr_pas_003_en",
		-- {"loc_talent_ogryn_toughness_on_multiple"}, {"en"},
			-- loc_text("The Best Defence")),
	--[+ Russian +]-- Лучшая защита
	-- create_template("talent_tree_ogr_pas_003_ru",
		-- {"loc_talent_ogryn_toughness_on_multiple"}, {"ru"},
			-- loc_text("Лучшая защита")),

	--[+ Passive 4 - Heavyweight +]--
	-- create_template("talent_tree_ogr_pas_004_en",
		-- {"loc_talent_ogryn_ogryn_fighter"}, {"en"},
			-- loc_text("Heavyweight")),
	--[+ Russian +]-- Тяжеловес
	-- create_template("talent_tree_ogr_pas_004_ru",
		-- {"loc_talent_ogryn_ogryn_fighter"}, {"ru"},
			-- loc_text("Тяжеловес")),

	--[+ Passive 5 - Steady Grip +]--
	-- create_template("talent_tree_ogr_pas_005_en",
		-- {"loc_talent_ogryn_toughness_regen_while_bracing"}, {"en"},
			-- loc_text("Steady Grip")),
	--[+ Russian +]-- Крепкий хват -- руоф Крепкая хватка
	create_template("talent_tree_ogr_pas_005_ru",
		{"loc_talent_ogryn_toughness_regen_while_bracing"}, {"ru"},
			loc_text("Крепкий хват")),

	--[+ Passive 6 - Smash 'Em! +]--
	-- create_template("talent_tree_ogr_pas_006_en",
		-- {"loc_talent_ogryn_toughness_on_single_heavy"}, {"en"},
			-- loc_text("Smash 'Em!")),
	--[+ Russian +]-- Круши их! -- руоф Вдарь им!
	create_template("talent_tree_ogr_pas_006_ru",
		{"loc_talent_ogryn_toughness_on_single_heavy"}, {"ru"},
			loc_text("Круши их!")),

	--[+ Passive 7 - Lynchpin +]--
	-- create_template("talent_tree_ogr_pas_007_en",
		-- {"loc_talent_ogryn_coherency_toughness_increase"}, {"en"},
			-- loc_text("Lynchpin")),
	--[+ Russian +]-- Опора -- руоф Переломный момент
	create_template("talent_tree_ogr_pas_007_en",
		{"loc_talent_ogryn_coherency_toughness_increase"}, {"ru"},
			loc_text("Опора")),

	--[+ Passive 8 - Slam +]--
	-- create_template("talent_tree_ogr_pas_008_en",
		-- {"loc_talent_ogryn_melee_stagger"}, {"en"},
			-- loc_text("Slam")),
	--[+ Russian +]-- Оплеуха -- руоф Хлопок
	create_template("talent_tree_ogr_pas_008_ru",
		{"loc_talent_ogryn_melee_stagger"}, {"ru"},
			loc_text("Оплеуха")),

	--[+ Passive 9 - Soften Them Up +]--
	-- create_template("talent_tree_ogr_pas_009_en",
		-- {"loc_talent_ogryn_targets_recieve_damage_increase_debuff"}, {"en"},
			-- loc_text("Soften Them Up")),
	--[+ Russian +]-- Ослабь их -- руоф Упокоить их
	create_template("talent_tree_ogr_pas_009_ru",
		{"loc_talent_ogryn_targets_recieve_damage_increase_debuff"}, {"ru"},
			loc_text("Ослабь их")),

	--[+ Passive 10 - Crunch! +]--
	-- create_template("talent_tree_ogr_pas_010_en",
		-- {"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger"}, {"en"},
			-- loc_text("Crunch!")),
	--[+ Russian +]-- Хрусь! -- руоф Хрясь!
	create_template("talent_tree_ogr_pas_010_en",
		{"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger"}, {"ru"},
			loc_text("Хрусь!")),

	--[+ Passive 11 - Batter +]--
	-- create_template("talent_tree_ogr_pas_011_en",
		-- {"loc_talent_ogryn_bleed_on_multiple_hit"}, {"en"},
			-- loc_text("Batter")),
	--[+ Russian +]-- Месиво
	create_template("talent_tree_ogr_pas_011_ru",
		{"loc_talent_ogryn_bleed_on_multiple_hit"}, {"ru"},
			loc_text("Месиво")),

	--[+ Passive 12 - Pacemaker +]--
	-- create_template("talent_tree_ogr_pas_012_en",
		-- {"loc_talent_ogryn_reload_speed_on_multiple_hits"}, {"en"},
			-- loc_text("Pacemaker")),
	--[+ Russian +]-- Задающий ритм -- руоф Водитель ритма
	create_template("talent_tree_ogr_pas_012_ru",
		{"loc_talent_ogryn_reload_speed_on_multiple_hits"}, {"ru"},
			loc_text("Задающий ритм")),

	--[+ Passive 13 - Ammo Stash +]--
	-- create_template("talent_tree_ogr_pas_013_en",
		-- {"loc_talent_ogryn_increased_ammo"}, {"en"},
			-- loc_text("Ammo Stash")),
	--[+ Russian +]-- Схрон патронов
	create_template("talent_tree_ogr_pas_013_ru",
		{"loc_talent_ogryn_increased_ammo"}, {"ru"},
			loc_text("Схрон патронов")),

	--[+ Passive 14 - Hard Knocks +]--
	-- create_template("talent_tree_ogr_pas_014_en",
		-- {"loc_talent_ogryn_big_bully_heavy_hits"}, {"en"},
			-- loc_text("Hard Knocks")),
	--[+ Russian +]-- Тяжёлые удары -- руоф Мощные удары
	create_template("talent_tree_ogr_pas_014_ru",
		{"loc_talent_ogryn_big_bully_heavy_hits"}, {"ru"},
			loc_text("Тяжёлые удары")),

	--[+ Passive 15 - Too Stubborn to Die +]--
	-- create_template("talent_tree_ogr_pas_015_en",
		-- {"loc_talent_ogryn_toughness_gain_increase_on_low_health"}, {"en"},
			-- loc_text("Too Stubborn to Die")),
	--[+ Russian +]-- Слишком упёртый, чтобы умереть -- руоф Слишком упрям, чтобы умереть
	create_template("talent_tree_ogr_pas_015_ru",
		{"loc_talent_ogryn_toughness_gain_increase_on_low_health"}, {"ru"},
			loc_text("Слишком упёртый, чтобы умереть")),

	--[+ Passive 16 - Delight in Destruction +]--
	-- create_template("talent_tree_ogr_pas_016_en",
		-- {"loc_talent_ogryn_damage_reduction_per_bleed"}, {"en"},
			-- loc_text("Delight in Destruction")),
	--[+ Russian +]-- Упоение в разрушении -- руоф Наслаждение разрушением
	create_template("talent_tree_ogr_pas_016_ru",
		{"loc_talent_ogryn_damage_reduction_per_bleed"}, {"ru"},
			loc_text("Упоение в разрушении")),

	--[+ Passive 17 - Attention Seeker +]--
	-- create_template("talent_tree_ogr_pas_017_en",
		-- {"loc_talent_ranged_enemies_taunt"}, {"en"},
			-- loc_text("Attention Seeker")),
	--[+ Russian +]-- Провокатор -- руоф Внимание искателя
	create_template("talent_tree_ogr_pas_017_ru",
		{"loc_talent_ranged_enemies_taunt"}, {"ru"},
			loc_text("Провокатор")),

	--[+ Passive 18 - Get Stuck In +]--
	-- create_template("talent_tree_ogr_pas_018_en",
		-- {"loc_talent_ogryn_bull_rush_movement_speed"}, {"en"},
			-- loc_text("Get Stuck In")),
	--[+ Russian +]-- Очертя голову
	create_template("talent_tree_ogr_pas_018_ru",
		{"loc_talent_ogryn_bull_rush_movement_speed"}, {"ru"},
			loc_text("Очертя голову")),

	--[+ Passive 19 - Towering Presence +]--
	-- create_template("talent_tree_ogr_pas_019_en",
		-- {"loc_talent_ogryn_bigger_coherency_radius"}, {"en"},
			-- loc_text("Towering Presence")),
	--[+ Russian +]-- Величественное присутствие -- руоф Выдающееся присутствие
	create_template("talent_tree_ogr_pas_019_ru",
		{"loc_talent_ogryn_bigger_coherency_radius"}, {"ru"},
			loc_text("Величественное присутствие")),

	--[+ Passive 20 - Unstoppable Momentum +]--
	-- create_template("talent_tree_ogr_pas_020_en",
		-- {"loc_talent_ogryn_ranged_kill_grant_movement_speed"}, {"en"},
			-- loc_text("Unstoppable Momentum")),
	--[+ Russian +]-- Неудержимый моментум
	-- create_template("talent_tree_ogr_pas_020_ru",
		-- {"loc_talent_ogryn_ranged_kill_grant_movement_speed"}, {"ru"},
			-- loc_text("Неудержимый моментум")),

	--[+ Passive 21 - No Stopping Me! +]--
	-- create_template("talent_tree_ogr_pas_021_en",
		-- {"loc_talent_ogryn_windup_is_uninterruptible"}, {"en"},
			-- loc_text("No Stopping Me!")),
	--[+ Russian +]-- Меня не остановить!
	-- create_template("talent_tree_ogr_pas_021_ru",
		-- {"loc_talent_ogryn_windup_is_uninterruptible"}, {"ru"},
			-- loc_text("Меня не остановить!")),

	--[+ Passive 22 - Dominate +]--
	-- create_template("talent_tree_ogr_pas_022_en",
		-- {"loc_talent_ogryn_rending_on_elite_kills"}, {"en"},
			-- loc_text("Dominate")),
	--[+ Russian +]-- Доминируй -- руоф Господство
	create_template("talent_tree_ogr_pas_022_ru",
		{"loc_talent_ogryn_rending_on_elite_kills"}, {"ru"},
			loc_text("Доминируй")),

	--[+ Passive 23 - Payback Time +]--
	-- create_template("talent_tree_ogr_pas_023_en",
		-- {"loc_talent_ogryn_revenge_damage"}, {"en"},
			-- loc_text("Payback Time")),
	--[+ Russian +]-- Время расплаты
	-- create_template("talent_tree_ogr_pas_023_ru",
		-- {"loc_talent_ogryn_revenge_damage"}, {"ru"},
			-- loc_text("Время расплаты")),

	--[+ Passive 24 - Bruiser +]--
	-- create_template("talent_tree_ogr_pas_024_en",
		-- {"loc_talent_ogryn_cooldown_on_elite_kills"}, {"en"},
			-- loc_text("Bruiser")),
	--[+ Russian +]-- Бугай
	create_template("talent_tree_ogr_pas_024_ru",
		{"loc_talent_ogryn_cooldown_on_elite_kills"}, {"ru"},
			loc_text("Бугай")),

	--[+ Passive 25 - Big Boom +]--
	-- create_template("talent_tree_ogr_pas_025_en",
		-- {"loc_talent_ogryn_increase_explosion_radius"}, {"en"},
			-- loc_text("Big Boom")),
	--[+ Russian +]-- Большой бабах
	-- create_template("talent_tree_ogr_pas_025_ru",
		-- {"loc_talent_ogryn_increase_explosion_radius"}, {"ru"},
			-- loc_text("Большой бабах")),

	--[+ Passive 26 - Massacre +]--
	-- create_template("talent_tree_ogr_pas_026_en",
		-- {"loc_talent_ogryn_crit_chance_on_kill"}, {"en"},
			-- loc_text("Massacre")),
	--[+ Russian +]-- Резня
	-- create_template("talent_tree_ogr_pas_026_ru",
		-- {"loc_talent_ogryn_crit_chance_on_kill"}, {"ru"},
			-- loc_text("Резня")),

	--[+ Passive 27 - Implacable +]--
	-- create_template("talent_tree_ogr_pas_027_en",
		-- {"loc_talent_ogryn_windup_reduces_damage_taken"}, {"en"},
			-- loc_text("Implacable")),
	--[+ Russian +]-- Непоколебимый
	-- create_template("talent_tree_ogr_pas_027_ru",
		-- {"loc_talent_ogryn_windup_reduces_damage_taken"}, {"ru"},
			-- loc_text("Непоколебимый")),

	--[+ Passive 28 - No Pushover +]--
	-- create_template("talent_tree_ogr_pas_028_en",
		-- {"loc_talent_ogryn_blocking_reduces_push_cost"}, {"en"},
			-- loc_text("No Pushover")),
	--[+ Russian +]-- Не слабак
	-- create_template("talent_tree_ogr_pas_028_ru",
		-- {"loc_talent_ogryn_blocking_reduces_push_cost"}, {"ru"},
			-- loc_text("Не слабак")),

	--[+ Passive 29 - Won't Give In +]--
	-- create_template("talent_tree_ogr_pas_029_en",
		-- {"loc_talent_ogryn_tanky_with_downed_allies"}, {"en"},
			-- loc_text("Won't Give In")),
	--[+ Russian +]-- Не сдамся
	-- create_template("talent_tree_ogr_pas_029_ru",
		-- {"loc_talent_ogryn_tanky_with_downed_allies"}, {"ru"},
			-- loc_text("Не сдамся")),

	--[+ Passive 30 - Mobile Emplacement +]--
	-- create_template("talent_tree_ogr_pas_030_en",
		-- {"loc_talent_ogryn_bracing_reduces_damage_taken"}, {"en"},
			-- loc_text("Mobile Emplacement")),
	--[+ Russian +]-- Мобильная огневая точка -- руоф Передвижной окоп
	create_template("talent_tree_ogr_pas_030_ru",
		{"loc_talent_ogryn_bracing_reduces_damage_taken"}, {"ru"},
			loc_text("Мобильная огневая точка")),

}

--[+ Return the localization templates +]--
return localization_templates
