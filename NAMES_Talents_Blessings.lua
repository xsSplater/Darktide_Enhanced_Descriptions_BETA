---@diagnostic disable: undefined-global

-- local mod = get_mod("Enhanced_descriptions")

--[+ Function to create a localization template +]--
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end

--[+ Define localization templates +]--
local localization_templates = {
	-- Duplicate the line and translate. For example:
	-- create_template("weap_bb0_ext_en", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies" end),
	-- create_template("weap_bb0_ext_YOURLANGUAGE", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"YOURLANGUAGE"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." к "..COLORS_KWords.Damage_rgb_YOURLANGUAGE.." против врагов в противоосколочной броне." end), <- Don't forget the comma at the end!

-- Make changes to this file only if you need them!

--[+ ++WEAPON BLESSINGS++ +]--
	--[+ Melee +]--
	--[+ Opportunist - Оппортунист +]-- -- руоф Приспособленец
	create_template("trait_bespoke_000_ext_ru", {"loc_trait_bespoke_armor_penetration_against_staggered"}, {"ru"}, function(locale, value) return "Оппортунист" end),

	--[+ Bloodletter - Кровопускатель +]-- -- руоф Кровопускание
	create_template("trait_bespoke_001_ext_ru", {"loc_trait_bespoke_bleed_on_activated_hit"}, {"ru"}, function(locale, value) return "Кровопускатель" end),

	--[+ Bloodthirsty - Кровожадный +]-- -- руоф Жажда крови
	create_template("trait_bespoke_002_ext_ru", {"loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill"}, {"ru"}, function(locale, value) return "Кровожадный" end),

	--[+ Headtaker - Головорез +]--
	-- create_template("trait_bespoke_003_ext_ru", {"loc_trait_bespoke_increase_power_on_hit"}, {"ru"}, function(locale, value) return "Головорез" end),

	--[+ Slaughterer - Мясник +]-- -- руоф Душегуб
	create_template("trait_bespoke_004_ext_ru", {"loc_trait_bespoke_increase_power_on_kill"}, {"ru"}, function(locale, value) return "Мясник" end),

	--[+ Rev it up - Ускорься +]-- -- руоф Бодрость
	create_template("trait_bespoke_005_ext_ru", {"loc_trait_bespoke_movement_speed_on_activation"}, {"ru"}, function(locale, value) return "Ускорься" end),

	--[+ Thrust - Выпад +]--
	-- create_template("trait_bespoke_006_ext_ru", {"loc_trait_bespoke_power_bonus_based_on_charge_time"}, {"ru"}, function(locale, value) return "Выпад" end),

	--[+ Thunderous - Громовой удар +]-- -- руоф Словно раскаты грома?
	create_template("trait_bespoke_007_ext_ru", {"loc_trait_bespoke_targets_receive_rending_debuff"}, {"ru"}, function(locale, value) return "Громовой удар" end),

	--[+ Wrath - Гнев +]--
	-- create_template("trait_bespoke_008_ext_ru", {"loc_trait_bespoke_chained_hits_increases_cleave"}, {"ru"}, function(locale, value) return "Гнев" end),

	--[+ Shred - Кромсание +]-- -- руоф Расстрел?
	create_template("trait_bespoke_009_ext_ru", {"loc_trait_bespoke_chained_hits_increases_crit_chance"}, {"ru"}, function(locale, value) return "Кромсание" end),

	--[+ Savage Sweep - Дикий взмах +]-- -- руоф Дикость
	create_template("trait_bespoke_010_ext_ru", {"loc_trait_bespoke_increased_attack_cleave_on_multiple_hits"}, {"ru"}, function(locale, value) return "Дикий взмах" end),

	--[+ Rampage - Буйство +]--
	-- create_template("trait_bespoke_011_ext_ru", {"loc_trait_bespoke_increased_melee_damage_on_multiple_hits"}, {"ru"}, function(locale, value) return "Буйство" end),

	--[+ Devastating Strike - Разрушительный удар +]-- -- руоф Сокрушительный удар
	create_template("trait_bespoke_012_ext_ru", {"loc_trait_bespoke_infinite_melee_cleave_on_crit"}, {"ru"}, function(locale, value) return "Разрушительный удар" end),

	--[+ Decimator - Дециматор +]--
	-- create_template("trait_bespoke_013_ext_ru", {"loc_trait_bespoke_chained_hits_increases_power_desc"}, {"ru"}, function(locale, value) return "Дециматор" end),

	--[+ Brutal Momentum - Жестокий импульс +]-- -- руоф Суровый моментум
	create_template("trait_bespoke_014_ext_ru", {"loc_trait_bespoke_infinite_cleave_on_weakspot_kill"}, {"ru"}, function(locale, value) return "Жестокий импульс" end),

	--[+ Limbsplitter - Расчленитель +]-- -- руоф Расщепитель
	create_template("trait_bespoke_015_ext_ru", {"loc_trait_bespoke_power_bonus_on_first_attack"}, {"ru"}, function(locale, value) return "Расчленитель" end),

	--[+ All or Nothing - Всё или ничего +]-- -- руоф Все или ничего
	create_template("trait_bespoke_016_ext_ru", {"loc_trait_bespoke_power_bonus_scaled_on_stamina"}, {"ru"}, function(locale, value) return "Всё или ничего" end),

	--[+ Decapitator - Обезглавливатель +]-- -- руоф Палач
	create_template("trait_bespoke_017_ext_ru", {"loc_trait_bespoke_stacking_rending_on_one_hit_kills"}, {"ru"}, function(locale, value) return "Обезглавливатель" end),

	--[+ Agile - Проворный +]-- -- руоф Ловкий
	create_template("trait_bespoke_018_ext_ru", {"loc_trait_bespoke_dodge_count_reset_on_weakspot_hit"}, {"ru"}, function(locale, value) return "Проворный" end),

	--[+ Slaughter Spree - Резня +]-- -- руоф  Убойная сила
	create_template("trait_bespoke_019_ext_ru", {"loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill"}, {"ru"}, function(locale, value) return "Резня" end),

	--[+ Relentless Strikes - Безжалостные удары +]-- -- руоф Безжалостность
	create_template("trait_bespoke_020_ext_ru", {"loc_trait_bespoke_power_bonus_on_same_enemy_attacks"}, {"ru"}, function(locale, value) return "Безжалостные удары" end),

	--[+ Flesh Tearer - Раздиратель плоти +]--
	-- create_template("trait_bespoke_021_ext_ru", {"loc_trait_bespoke_bleed_on_crit_melee"}, {"ru"}, function(locale, value) return "Раздиратель плоти" end),

	--[+ Lacerate - Терзание +]--
	-- create_template("trait_bespoke_022_ext_ru", {"loc_trait_bespoke_bleed_on_non_weakspot_hit"}, {"ru"}, function(locale, value) return "Терзание" end),

	--[+ Executor - Каратель +]-- -- руоф Экзекутор
	create_template("trait_bespoke_023_ext_ru", {"loc_trait_bespoke_chained_weakspot_hits_increases_power"}, {"ru"}, function(locale, value) return "Каратель" end),

	--[+ Riposte - Ответный удар +]--
	-- create_template("trait_bespoke_024_ext_ru", {"loc_trait_bespoke_dodge_grants_crit_chance"}, {"ru"}, function(locale, value) return "Ответный удар" end),

	--[+ Precognition - Предвидение +]-- -- руоф Познание
	create_template("trait_bespoke_025_ext_ru", {"loc_trait_bespoke_dodge_grants_finesse_bonus"}, {"ru"}, function(locale, value) return "Предвидение" end),

	--[+ Haymaker - Жнец +]-- (*Косарь) -- руоф Коса
	create_template("trait_bespoke_026_ext_ru", {"loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance"}, {"ru"}, function(locale, value) return "Жнец" end),

	--[+ Smackdown - Сокрушение +]-- -- руоф Смятение
	create_template("trait_bespoke_027_ext_ru", {"loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy"}, {"ru"}, function(locale, value) return "Сокрушение" end),

	--[+ Mercy Killer - Милосердный убийца +]-- -- руоф Милосердие
	create_template("trait_bespoke_028_ext_ru", {"loc_trait_bespoke_increased_weakspot_damage_on_bleeding"}, {"ru"}, function(locale, value) return "Милосердный убийца" end),

	--[+ Ruthless Backstab - Беспощадный удар в спину +]--
	-- create_template("trait_bespoke_029_ext_ru", {"loc_trait_bespoke_rending_on_backstabs"}, {"ru"}, function(locale, value) return "Беспощадный удар в спину" end),

	--[+ Uncanny Strike - Жуткий удар +]--
	-- create_template("trait_bespoke_030_ext_ru", {"loc_trait_bespoke_stacking_rending_on_weakspot"}, {"ru"}, function(locale, value) return "Жуткий удар" end),

	--[+ Trauma - Травма +]--
	-- create_template("trait_bespoke_031_ext_ru", {"loc_trait_bespoke_consecutive_hits_increases_stagger"}, {"ru"}, function(locale, value) return "Травма" end),

	--[+ Vicious Slice - Жестокий рарез +]-- -- руоф Жестокая нарезка
	create_template("trait_bespoke_032_ext_ru", {"loc_trait_bespoke_increase_stagger_per_hit_in_sweep"}, {"ru"}, function(locale, value) return "Жестокий рарез" end),

	--[+ Hammerblow - Молотобой +]-- -- руоф Удар молотом
	create_template("trait_bespoke_033_ext_ru", {"loc_trait_bespoke_stacking_increase_impact_on_hit"}, {"ru"}, function(locale, value) return "Молотобой" end),

	--[+ Skullcrusher - Череподробитель +]--
	-- create_template("trait_bespoke_034_ext_ru", {"loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff"}, {"ru"}, function(locale, value) return "Череподробитель" end),

	--[+ Thunderstrike - Громобой +]-- -- руоф Гроза
	create_template("trait_bespoke_035_ext_ru", {"loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff"}, {"ru"}, function(locale, value) return "Громобой" end),

	--[+ Chained Deathblow - Цепочка смертельных ударов +]--
	-- create_template("trait_bespoke_036_ext_ru", {"loc_trait_bespoke_increased_crit_chance_on_weakspot_kill"}, {"ru"}, function(locale, value) return "Цепочка смертельных ударов" end),

	--[+ Deathblow - Смертельный удар +]--
	-- create_template("trait_bespoke_037_ext_ru", {"loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill"}, {"ru"}, function(locale, value) return "Смертельный удар" end),

	--[+ Perfect Strike - Безупречный удар +]--
	-- create_template("trait_bespoke_038_ext_ru", {"loc_trait_bespoke_pass_past_armor_on_crit_new"}, {"ru"}, function(locale, value) return "Безупречный удар" end),

	--[+ Bladed Momentum - Лезвийный импульс +]-- -- руоф Моментум лезвия
	create_template("trait_bespoke_039_ext_ru", {"loc_trait_bespoke_stacking_rending_on_cleave"}, {"ru"}, function(locale, value) return "Лезвийный импульс" end),

	--[+ Deflector - Отражатель +]--
	-- create_template("trait_bespoke_040_ext_ru", {"loc_trait_bespoke_can_block_ranged_desc"}, {"ru"}, function(locale, value) return "Отражатель" end),

	--[+ Exorcist - Экзорцист +]--
	-- create_template("trait_bespoke_041_ext_ru", {"loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge"}, {"ru"}, function(locale, value) return "Экзорцист" end),

	--[+ Superiority - Превосходство +]--
	-- create_template("trait_bespoke_042_ext_ru", {"loc_trait_bespoke_elite_kills_grants_stackable_power"}, {"ru"}, function(locale, value) return "Превосходство" end),

	--[+ Blazing Spirit - Пылающий дух +]--
		 -- create_template("trait_bespoke_043_ext_ru", {"loc_trait_bespoke_warp_burninating_on_crit"}, {"ru"}, function(locale, value) return "Пылающий дух" end),

	--[+ Unstable Power - Нестабильная мощь +]--
	-- create_template("trait_bespoke_044_ext_ru", {"loc_trait_bespoke_warp_charge_power_bonus"}, {"ru"}, function(locale, value) return "Нестабильная мощь" end),

	--[+ Lightning Reflexes - Молниеносные рефлексы +]--
	-- create_template("trait_bespoke_045_ext_ru", {"loc_trait_bespoke_block_has_chance_to_stun_with_cd"}, {"ru"}, function(locale, value) return "Молниеносные рефлексы" end),

	--[+ High Voltage - Высокое напряжение +]--
	-- create_template("trait_bespoke_046_ext_ru", {"loc_trait_bespoke_damage_bonus_vs_electrocuded"}, {"ru"}, function(locale, value) return "Высокое напряжение" end),

	--[+ Falter - Дрожь +]--
	-- create_template("trait_bespoke_047_ext_ru", {"loc_trait_bespoke_negate_stagger_reduction_on_weakspot"}, {"ru"}, function(locale, value) return "Дрожь" end),

	--[+ Overwhelming Force - Подавляющая сила +]--
	-- create_template("trait_bespoke_048_ext_ru", {"loc_trait_bespoke_staggering_hits_has_chance_to_stun"}, {"ru"}, function(locale, value) return "Подавляющая сила" end),

	--[+ Momentum - Моментум +]--
	-- create_template("trait_bespoke_049_ext_ru", {"loc_trait_bespoke_toughness_recovery_on_multiple_hits"}, {"ru"}, function(locale, value) return "Моментум" end),

	--[+ Shock & Awe / Shock and Awe - Шок и трепет +]--
	-- create_template("trait_bespoke_74_ext_ru", {"loc_trait_bespoke_hit_mass_consumption_reduction_on_kill"}, {"ru"}, function(locale, value) return "Шок и трепет" end),

	--[+ Take a Swing - Замах +]--
	-- create_template("trait_bespoke_050_ext_ru", {"loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies"}, {"ru"}, function(locale, value) return "Замах" end),

	--[+ Supercharge - Суперзаряд +]--
	-- create_template("trait_bespoke_051_ext_ru", {"loc_trait_bespoke_armor_rend_on_activated_attacks"}, {"ru"}, function(locale, value) return "Суперзаряд" end),

	--[+ Power Cycler - Циклер мощности +]-- -- руоф Цикл силы
	-- create_template("trait_bespoke_052_ext_ru", {"loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks"}, {"ru"}, function(locale, value) return "Циклер мощности" end),

	--[+ Sunder - Сокрушение +]-- -- руоф Сандер
	create_template("trait_bespoke_053_ext_ru", {"loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks"}, {"ru"}, function(locale, value) return "Сокрушение" end),

	--[+ Sucker Punch - Удар исподтишка +]--
	-- create_template("trait_bespoke_054_ext_ru", {"loc_trait_bespoke_increased_crit_chance_after_punch"}, {"ru"}, function(locale, value) return "Удар исподтишка" end),

	--[+ Confident Strike - Уверенный удар +]--
	-- create_template("trait_bespoke_055_ext_ru", {"loc_trait_bespoke_toughness_recovery_on_chained_attacks"}, {"ru"}, function(locale, value) return "Уверенный удар" end),

	--[+ No Guts, No Glory - Нет смелости — нет славы +]--
	-- create_template("trait_bespoke_056_ext_ru", {"loc_trait_bespoke_toughness_regen_on_punching_elites"}, {"ru"}, function(locale, value) return "Нет смелости — нет славы" end),

	--[+ Bash - Удар +]--
	-- create_template("trait_bespoke_057_ext_ru", {"loc_trait_bespoke_crit_chance_on_push"}, {"ru"}, function(locale, value) return "Удар" end),

	--[+ Tenderiser - Молот мясника +]--
	-- create_template("trait_bespoke_058_ext_ru", {"loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits"}, {"ru"}, function(locale, value) return "Молот мясника" end),

	--[+ Unstoppable Force - Неудержимая сила +]--
	-- create_template("trait_bespoke_059_ext_ru", {"loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack"}, {"ru"}, function(locale, value) return "Неудержимая сила" end),

	--[+ Torment - Истязание +]--
	-- create_template("trait_bespoke_060_ext_ru", {"loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"}, {"ru"}, function(locale, value) return "Истязание" end),

	--[+ Slow and Steady - Медленно, но верно +]-- -- руоф Медленный и упорный
	create_template("trait_bespoke_061_ext_ru", {"loc_trait_bespoke_toughness_on_hit_based_on_charge_time"}, {"ru"}, function(locale, value) return "Медленно, но верно" end),

	--[+ Power Surge - Энергетический заряд +]-- -- руоф Скачок напряжения
	create_template("trait_bespoke_062_ext_ru", {"loc_trait_bespoke_explosion_on_activated_attacks_on_armor"}, {"ru"}, function(locale, value) return "Энергетический заряд" end),

	--[+ Last Guard - Последний страж +]--
	-- create_template("trait_bespoke_063_ext_ru", {"loc_trait_block_break_pushes"}, {"ru"}, function(locale, value) return "Последний страж" end),

	--[+ Offensive Defence - Атакующая защита +]-- -- руоф Активная оборона
	-- create_template("trait_bespoke_064_ext_ru", {"loc_trait_damage_bonus_on_block"}, {"ru"}, function(locale, value) return "Атакующая защита" end),

	--[+ Murderous Tranquility - Убийственное спокойствие +]--
	-- create_template("trait_bespoke_065_ext_ru", {"loc_trait_bespoke_vent_warp_charge_on_multiple_hits"}, {"ru"}, function(locale, value) return "Убийственное спокойствие" end),

	--[+ Warp Slice - Варп нарезка +]-- -- руоф Варп-удар
	create_template("trait_bespoke_066_ext_ru", {"loc_trait_bespoke_wind_slash_crits"}, {"ru"}, function(locale, value) return "Варп нарезка" end),

	--[+ Ranged - Дальний бой +]--
	--[+ Raking Fire - Огонь по тылам +]-- -- руоф Обстрел
	-- create_template("trait_bespoke_065_ext_ru", {"loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking"}, {"ru"}, function(locale, value) return "Огонь по тылам" end),

	--[+ Dumdum - Дум-дум +]-- -- руоф Дамдам
	create_template("trait_bespoke_066_ext_ru", {"loc_trait_bespoke_consecutive_hits_increases_close_damage"}, {"ru"}, function(locale, value) return "Дум-дум" end),

	--[+ Hit & Run /  Hit and Run - Бей и беги +]--
	-- create_template("trait_bespoke_067_ext_ru", {"loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill"}, {"ru"}, function(locale, value) return "Бей и беги" end),

	--[+ Sustained Fire - Непрерывная стрельба +]-- -- руоф Непрерывный огонь
	create_template("trait_bespoke_068_ext_ru", {"loc_trait_bespoke_followup_shots_ranged_damage"}, {"ru"}, function(locale, value) return "Непрерывная стрельба" end),

	--[+ Punishing Salvo - Карательный залп +]--
	-- create_template("trait_bespoke_069_ext_ru", {"loc_trait_bespoke_followup_shots_ranged_weakspot_damage"}, {"ru"}, function(locale, value) return "Карательный залп" end),

	--[+ Fire Frenzy - Неистовая стрельба +]-- -- руоф Огненное неистовство
	create_template("trait_bespoke_070_ext_ru", {"loc_trait_bespoke_increase_close_damage_on_close_kill"}, {"ru"}, function(locale, value) return "Неистовая стрельба" end),

	--[+ Deathspitter - Смертоплюй +]-- -- руоф Смертоносец
	create_template("trait_bespoke_071_ext_ru", {"loc_trait_bespoke_increase_power_on_close_kill"}, {"ru"}, function(locale, value) return "Смертоплюй" end),

	--[+ Stripped Down - Сбросить лишнее +]-- -- руоф Срез
	create_template("trait_bespoke_072_ext_ru", {"loc_trait_bespoke_increased_sprint_speed"}, {"ru"}, function(locale, value) return "Сбросить лишнее" end),

	--[+ Speedload - Быстрая перезарядка +]-- -- руоф Скоростная загрузка (facepalm)
	create_template("trait_bespoke_073_ext_ru", {"loc_trait_bespoke_reload_speed_on_slide"}, {"ru"}, function(locale, value) return "Быстрая перезарядка" end),

	--[+ Terrifying Barrage - Устрашающий обстрел +]-- -- руоф Устрашающий натиск
	create_template("trait_bespoke_074_ext_ru", {"loc_trait_bespoke_suppression_on_close_kill"}, {"ru"}, function(locale, value) return "Устрашающий огонь" end),

	--[+ Roaring Advance - Ревущее наступление +]--
	-- create_template("trait_bespoke_075_ext_ru", {"loc_trait_bespoke_movement_speed_on_continuous_fire"}, {"ru"}, function(locale, value) return "Ревущее наступление" end),

	--[+ Ceaseless Barrage - Непрерывный обстрел +]-- -- руоф Беспощадный натиск
	create_template("trait_bespoke_076_ext_ru", {"loc_trait_bespoke_suppression_on_continuous_fire"}, {"ru"}, function(locale, value) return "Непрерывный огонь" end),

	--[+ Inspiring Barrage - Вдохновляющий обстрел +]-- -- руоф Вдохновляющий натиск
	create_template("trait_bespoke_077_ext_ru", {"loc_trait_bespoke_toughness_on_continuous_fire"}, {"ru"}, function(locale, value) return "Вдохновляющий обстрел" end),

	--[+ Ghost - Призрак +]--
	-- create_template("trait_bespoke_078_ext_ru", {"loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot"}, {"ru"}, function(locale, value) return "Призрак" end),

	--[+ Surgical - Снайперская точность - +]-- -- руоф Зоркость
	create_template("trait_bespoke_079_ext_ru", {"loc_trait_bespoke_crit_chance_based_on_aim_time"}, {"ru"}, function(locale, value) return "Снайперская точность" end),

	--[+ Crucian Roulette - Круцианская рулетка +]--
	-- create_template("trait_bespoke_080_ext_ru", {"loc_trait_bespoke_crit_chance_based_on_ammo_left"}, {"ru"}, function(locale, value) return "Круцианская рулетка" end),

	--[+ Deadly Accurate - Смертоностная точность +]--
	-- create_template("trait_bespoke_081_ext_ru", {"loc_trait_bespoke_crit_weakspot_finesse"}, {"ru"}, function(locale, value) return "Смертоностная точность" end),

	--[+ No Respite - Без передышки +]-- -- руоф Нет отдыху
	create_template("trait_bespoke_082_ext_ru", {"loc_trait_bespoke_stagger_count_bonus_damage"}, {"ru"}, function(locale, value) return "Без передышки" end),

	--[+ Opening Salvo - Первый выстрел залпа +]-- -- руоф Открывающий залп
	create_template("trait_bespoke_083_ext_ru", {"loc_trait_bespoke_power_bonus_on_first_shot"}, {"ru"}, function(locale, value) return "Первый выстрел залпа" end),

	--[+ Headhunter - Охотник за головами +]--
	-- create_template("trait_bespoke_084_ext_ru", {"loc_trait_bespoke_weakspot_stacking_crit_chance"}, {"ru"}, function(locale, value) return "Охотник за головами" end),

	--[+ Between the Eyes - Промеж глаз +]--
	-- create_template("trait_bespoke_085_ext_ru", {"loc_trait_bespoke_suppression_negation_on_weakspot"}, {"ru"}, function(locale, value) return "Промеж глаз" end),

	--[+ Blaze Away - Стрельба без устали +]-- -- руоф Энтузиазм
	create_template("trait_bespoke_086_ext_ru", {"loc_trait_bespoke_power_bonus_on_continuous_fire"}, {"ru"}, function(locale, value) return "Стрельба без устали" end),

	--[+ Powderburn - Пороховой ожог +]--
	-- create_template("trait_bespoke_087_ext_ru", {"loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills"}, {"ru"}, function(locale, value) return "Пороховой ожог" end),

	--[+ Cavalcade - Кавалькада +]--
	-- create_template("trait_bespoke_088_ext_ru", {"loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire"}, {"ru"}, function(locale, value) return "Кавалькада" end),

	--[+ Pinning Fire - Подавляющий огонь +]-- -- руоф Схватывающий огонь
	create_template("trait_bespoke_089_ext_ru", {"loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies"}, {"ru"}, function(locale, value) return "Подавляющий огонь" end),

	--[+ Run 'n' Gun (Run and Gun) - Стреляй и беги +]--
	-- create_template("trait_bespoke_090_ext_ru", {"loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats"}, {"ru"}, function(locale, value) return "Стреляй и беги" end),

	--[+ Puncture - Прокол +]--
	-- create_template("trait_bespoke_091_ext_ru", {"loc_trait_bespoke_bleed_on_ranged"}, {"ru"}, function(locale, value) return "Прокол" end),

	--[+ Lethal Proximity - Смертельное сближение +]--
	create_template("trait_bespoke_092_ext_ru", {"loc_trait_bespoke_close_explosion"}, {"ru"}, function(locale, value) return "Смертельное сближение" end),

	--[+ Point Blank - В упор +]--
	-- create_template("trait_bespoke_093_ext_ru", {"loc_trait_bespoke_crit_chance_bonus_on_melee_kills"}, {"ru"}, function(locale, value) return "В упор" end),

	--[+ Execution - Казнь +]--
	-- create_template("trait_bespoke_094_ext_ru", {"loc_trait_bespoke_damage_vs_stagger"}, {"ru"}, function(locale, value) return "Казнь" end),

	--[+ Gloryhunter - Охотник за славой +]--
	-- create_template("trait_bespoke_095_ext_ru", {"loc_trait_bespoke_toughness_on_elite_kills"}, {"ru"}, function(locale, value) return "Охотник за славой" end),

	--[+ Surge - Энергетический всплеск +]-- -- руоф Импульс
	create_template("trait_bespoke_096_ext_ru", {"loc_trait_bespoke_double_shot_on_crit"}, {"ru"}, function(locale, value) return "Энергетический всплеск" end),

	--[+ Warp Flurry - Варп-шквал +]--
	-- create_template("trait_bespoke_097_ext_ru", {"loc_trait_bespoke_faster_charge_on_chained_secondary_attacks"}, {"ru"}, function(locale, value) return "Варп-шквал" end),

	--[+ Warp Nexus - Связь с варпом +]-- -- руоф Варп-сектор
	create_template("trait_bespoke_098_ext_ru", {"loc_trait_bespoke_increased_crit_chance_scaled_on_peril"}, {"ru"}, function(locale, value) return "Связь с варпом" end),

	--[+ Transfer Peril - Перемещение опасности +]-- -- руоф Перемещение угрозы
	create_template("trait_bespoke_099_ext_ru", {"loc_trait_bespoke_peril_vent_on_weakspot_hit"}, {"ru"}, function(locale, value) return "Перемещение опасности" end),

	--[+ Rending Shockwave - Разрушительная волна +]--
	-- create_template("trait_bespoke_100_ext_ru", {"loc_trait_bespoke_rend_armor_on_aoe_charge"}, {"ru"}, function(locale, value) return "Разрушительная волна" end),

	--[+ Focused Channelling - Сосредоточенный призыв +]--
	-- create_template("trait_bespoke_101_ext_ru", {"loc_trait_bespoke_uninterruptable_while_charging_and_movement"}, {"ru"}, function(locale, value) return "Сосредоточенный призыв" end),

	--[+ Blazing Spirit - Пылающий дух +]-- -- руоф Пламенный дух
	create_template("trait_bespoke_102_ext_ru", {"loc_trait_bespoke_warpfire_burn_on_crit"}, {"ru"}, function(locale, value) return "Пылающий дух" end),

	--[+ Penetrating Flame - Проникающее пламя +]-- -- руоф Убойное пламя
	create_template("trait_bespoke_103_ext_ru", {"loc_trait_bespoke_armor_rending_from_dot_burning"}, {"ru"}, function(locale, value) return "Проникающее пламя" end),

	--[+ Showstopper - Взрывной финал +]-- -- руоф Театральная пауза
	create_template("trait_bespoke_104_ext_ru", {"loc_trait_bespoke_chance_to_explode_elites_on_kill"}, {"ru"}, function(locale, value) return "Взрывной финал" end),

	--[+ Infernus - Инфернус +]--
	-- create_template("trait_bespoke_105_ext_ru", {"loc_trait_bespoke_burninating_on_crit"}, {"ru"}, function(locale, value) return "Инфернус" end),

	--[+ Efficiency - Эффективность +]--
	-- create_template("trait_bespoke_106_ext_ru", {"loc_trait_bespoke_first_shot_ammo_cost_reduction"}, {"ru"}, function(locale, value) return "Эффективность" end),

	--[+ Concentrated Fire - Сосредоточенный огонь +]-- -- руоф Интенсивный огонь
	create_template("trait_bespoke_107_ext_ru", {"loc_trait_bespoke_crit_chance_on_chained_weakspot_hits"}, {"ru"}, function(locale, value) return "Сосредоточенный огонь" end),

	--[+ Desperado - Сорвиголова +]--
	-- create_template("trait_bespoke_108_ext_ru", {"loc_trait_bespoke_crit_chance_on_successful_dodge"}, {"ru"}, function(locale, value) return "Сорвиголова" end),

	--[+ Reassuringly Accurate - Успокаивающая точность +]-- -- руоф Внушительная точность
	create_template("trait_bespoke_109_ext_ru", {"loc_trait_bespoke_toughness_on_crit_kills"}, {"ru"}, function(locale, value) return "Успокаивающая точность" end),

	--[+ Flechette - Флешетта +]--
	-- create_template("trait_bespoke_110_ext_ru", {"loc_trait_bespoke_bleed_on_crit_ranged"}, {"ru"}, function(locale, value) return "Флешетта" end),

	--[+ Man-Stopper - Человекоостанавливатель +]-- -- руоф Усмирение
	create_template("trait_bespoke_111_ext_ru", {"loc_trait_bespoke_cleave_on_crit"}, {"ru"}, function(locale, value) return "Человекоостанавливатель" end),

	--[+ Scattershot - Выстрел дробью +]-- -- руоф Разброс
	create_template("trait_bespoke_112_ext_ru", {"loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot"}, {"ru"}, function(locale, value) return "Выстрел дробью" end),

	--[+ Full Bore - Полный калибр +]-- -- руоф Напор
	create_template("trait_bespoke_113_ext_ru", {"loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all"}, {"ru"}, function(locale, value) return "Полный калибр" end),

	--[+ Both Barrels - Дуплет +]--
	-- create_template("trait_bespoke_114_ext_ru", {"loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill"}, {"ru"}, function(locale, value) return "Дуплет" end),

	--[+ Trickshooter - Меткий стрелок +]--
	-- create_template("trait_bespoke_115_ext_ru", {"loc_trait_bespoke_power_bonus_on_chained_weakspot_hits"}, {"ru"}, function(locale, value) return "Меткий стрелок" end),

	--[+ Hand-Cannon - Ручная пушка +]--
	-- create_template("trait_bespoke_116_ext_ru", {"loc_trait_bespoke_rending_on_crit"}, {"ru"}, function(locale, value) return "Ручная пушка" end),

	--[+ Shattering Impact - Сокрушающий удар +]-- -- руоф Рассеивающий импульс
	create_template("trait_bespoke_117_ext_ru", {"loc_trait_bespoke_armor_rend_on_projectile_hit"}, {"ru"}, function(locale, value) return "Сокрушающий удар" end),

	--[+ Everlasting Flame - Неугасимое пламя +]-- -- руоф Бесконечное пламя
	create_template("trait_bespoke_118_ext_ru", {"loc_trait_bespoke_ammo_spent_from_reserve_on_crit"}, {"ru"}, function(locale, value) return "Неугасимое пламя" end),

	--[+ Quickflame - Скорое пламя +]-- -- руоф Воспламенение
	create_template("trait_bespoke_119_ext_ru", {"loc_trait_bespoke_faster_reload_on_empty_clip"}, {"ru"}, function(locale, value) return "Скорое пламя" end),

	--[+ Fan the Flames - Разжечь пламя +]-- -- руоф Раздувая пламя
	create_template("trait_bespoke_120_ext_ru", {"loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning"}, {"ru"}, function(locale, value) return "Разжечь пламя" end),

	--[+ Overpressure - Избыточное давление +]--
	-- create_template("trait_bespoke_121_ext_ru", {"loc_trait_bespoke_power_scales_with_clip_percentage"}, {"ru"}, function(locale, value) return "Избыточное давление" end),

	--[+ Hot-Shot - Жгучий выстрел +]-- -- руоф В точку
	create_template("trait_bespoke_122_ext_ru", {"loc_trait_bespoke_cleave_on_weakspot_hits"}, {"ru"}, function(locale, value) return "Жгучий выстрел" end),

	--[+ Weight of Fire - Мощь огня +]-- -- руоф Плотность огня
	create_template("trait_bespoke_123_ext_ru", {"loc_trait_bespoke_faster_charge_on_chained_attacks"}, {"ru"}, function(locale, value) return "Мощь огня" end),

	--[+ Armourbane - Бронебой +]--
	-- create_template("trait_bespoke_124_ext_ru", {"loc_trait_bespoke_rend_armor_on_charged_shots"}, {"ru"}, function(locale, value) return "Бронебой" end),

	--[+ Power Blast - Мощный выстрел +]-- -- руоф Мощный взрыв
	create_template("trait_bespoke_125_ext_ru", {"loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time"}, {"ru"}, function(locale, value) return "Мощный выстрел" end),

	--[+ Gets Hot! - Критическая жара! +]-- -- руоф Становится жарко!
	create_template("trait_bespoke_126_ext_ru", {"loc_trait_bespoke_crit_chance_scaled_on_heat"}, {"ru"}, function(locale, value) return "Критическая жара!" end),

	--[+ Volatile - Испарение +]--
	-- create_template("trait_bespoke_127_ext_ru", {"loc_trait_bespoke_lower_overheat_gives_faster_charge"}, {"ru"}, function(locale, value) return "Испарение" end),

	--[+ Blaze Away - Стрельба без устали +]-- ALT --  -- руоф Энтузиазм
	create_template("trait_bespoke_128_ext_ru", {"loc_trait_bespoke_power_bonus_on_continuous_fire_alternative"}, {"ru"}, function(locale, value) return "Стрельба без устали" end),

	--[+ Rising Heat - Нарастающий жар +]-- -- руоф Сильная жара
	create_template("trait_bespoke_129_ext_ru", {"loc_trait_bespoke_power_bonus_scaled_on_heat"}, {"ru"}, function(locale, value) return "Нарастающий жар" end),

	--[+ Optimised Cooling - Оптимизированное охлаждение +]--
	-- create_template("trait_bespoke_130_ext_ru", {"loc_trait_bespoke_reduced_heat_on_continuous"}, {"ru"}, function(locale, value) return "Оптимизированное охлаждение" end),

	--[+ Focused Cooling - Сфокусированное охлаждение +]-- -- руоф Сосредоточенное охлаждение
	create_template("trait_bespoke_131_ext_ru", {"loc_trait_bespoke_reduced_overheat_on_crits"}, {"ru"}, function(locale, value) return "Сфокусированное охлаждение" end),

	--[+ Gauntlet Momentum - Импульс перчатки +]-- -- руоф Перчатка моментума
	create_template("trait_bespoke_132_ext_ru", {"loc_trait_bespoke_power_bonus_on_chained_melee"}, {"ru"}, function(locale, value) return "Импульс перчатки" end),

	--[+ Pulverise - Измельчение +]-- -- руоф Пульверизация
	create_template("trait_bespoke_133_ext_ru", {"loc_trait_bespoke_crit_chance_on_melee_kill"}, {"ru"}, function(locale, value) return "Измельчение" end),

	--[+ Disruptive - Разрывной эффект +]--
	-- create_template("trait_bespoke_134_ext_ru", {"loc_trait_bespoke_melee_power_bonus_after_explosion"}, {"ru"}, function(locale, value) return "Разрывной эффект" end),

	--[+ Explosive Offensive - Взрывное наступление +]--
	-- create_template("trait_bespoke_135_ext_ru", {"loc_trait_bespoke_power_bonus_after_weapon_special_multiple"}, {"ru"}, function(locale, value) return "Взрывное наступление" end),

	--[+ Pinpointing target - Бомбардировка цели +]-- -- руоф Определение цели
	-- create_template("trait_bespoke_136_ext_ru", {"loc_trait_bespoke_power_bonus_based_on_charge_time_ranged"}, {"ru"}, function(locale, value) return "Определение цели" end),

	--[+ Charmed Reload - Зачарованная перезарядка +]--
	-- create_template("trait_bespoke_137_ext_ru", {"loc_trait_bespoke_ammo_refill_from_reserve_on_crit"}, {"ru"}, function(locale, value) return "Зачарованная перезарядка" end),

	--[+ Overwhelming Fire - Подавляющий огонь +]-- -- руоф Огонь на поражение
	create_template("trait_bespoke_138_ext_ru", {"loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target"}, {"ru"}, function(locale, value) return "Подавляющий огонь" end),

	--[+ Can opener - Открывашка +]--
	-- create_template("trait_bespoke_139_ext_ru", {"loc_trait_bespoke_armor_rending_bayonette"}, {"ru"}, function(locale, value) return "Открывашка" end),

	--[+ Born in blood - Рождённый в крови +]-- -- руоф РождЕнный в крови
	-- create_template("trait_bespoke_140_ext_ru", {"loc_trait_bespoke_toughness_on_close_range_kills"}, {"ru"}, function(locale, value) return "Рождённый в крови" end),

	--[+ Pierce - Пробивание +]-- -- руоф Прокол
	-- create_template("trait_bespoke_141_ext_ru", {"loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger"}, {"ru"}, function(locale, value) return "Прокол" end),

	--[+ Punishing Fire - Карательный обстрел +]--
	-- create_template("trait_bespoke_142_ext_ru", {"loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave"}, {"ru"}, function(locale, value) return "Карательный обстрел" end),

	--[+ Inspiring Barrage - Вдохновляющий обстрел +]-- ALT -- руоф Вдохновляющий натиск
	create_template("trait_bespoke_143_ext_ru", {"loc_trait_bespoke_toughness_on_continuous_fire_alternative"}, {"ru"}, function(locale, value) return "Вдохновляющий обстрел" end),

	--[+ Expansive - Экспансивный +]-- -- руоф Расширение
	create_template("trait_bespoke_144_ext_ru", {"loc_trait_bespoke_weapon_special_power_bonus_after_one_shots"}, {"ru"}, function(locale, value) return "Экспансивный" end),

	--[+ Shrapnel - Шрапнель +]--
	-- create_template("trait_bespoke_145_ext_ru", {"loc_trait_bespoke_close_explosion_applies_bleed"}, {"ru"}, function(locale, value) return "Шрапнель" end),

	--[+ Blast Zone - Зона взрыва +]--
	-- create_template("trait_bespoke_146_ext_ru", {"loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire"}, {"ru"}, function(locale, value) return "Зона взрыва" end),

	--[+ Adhesive Charge - Липкий заряд +]-- -- руоф Цепной заряд
	create_template("trait_bespoke_147_ext_ru", {"loc_trait_bespoke_grenades_stick_to_monsters_and_damage"}, {"ru"}, function(locale, value) return "Липкий заряд" end),

	--[+ Marksman's Reflex - Рефлекс стрелка +]--
	-- create_template("trait_bespoke_148_ext_ru", {"loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed"}, {"ru"}, function(locale, value) return "Рефлекс стрелка" end),


--[+ ++TALENTS - ТАЛАНТЫ ++ +]--
--[+ +NODES - УЗЛЫ+ +]--
	--[+ Critical Chance Boost - Повышение шанса Критического удара +]-- Усиление вероятности крит. удара
	-- create_template("talent_tree_oper_mod_006_en", {"loc_talent_crit_chance_low"}, {"en"}, function(locale, value) return "Critical Chance Boost" end), -- crit_chance:+5% -- Psyker, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_006_ru", {"loc_talent_crit_chance_low"}, {"ru"}, function(locale, value) return "Повышение шанса Критического удара" end),

	--[+ Health Boost Low - Повышение Здоровья малое +]--
	create_template("talent_tree_oper_mod_005_l_en", {"loc_talent_health_low"}, {"en"}, function(locale, value) return "Health Boost Low" end), -- health:+5% -- Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_005_l_ru", {"loc_talent_health_low"}, {"ru"}, function(locale, value) return "Повышение Здоровья малое" end),

	--[+ Health Boost Medium - Повышение Здоровья среднее +]--
	create_template("talent_tree_oper_mod_005_m_en", {"loc_talent_health_medium"}, {"en"}, function(locale, value) return "Health Boost Medium" end), -- health:+10% -- Psyker, Ogryn, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_005_m_ru", {"loc_talent_health_medium"}, {"ru"}, function(locale, value) return "Повышение Здоровья среднее" end),

	--[+ Heavy Melee Damage Boost Low - Повышение урона тяжёлых атак ближнего боя малое +]--
	create_template("talent_tree_oper_mod_014_l_en", {"loc_talent_melee_heavy_damage_low"}, {"en"}, function(locale, value) return "Heavy Melee Damage Boost Low" end), -- melee_heavy_damage:+5% -- Ogryn
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_014_l_ru", {"loc_talent_melee_heavy_damage_low"}, {"ru"}, function(locale, value) return "Повышение урона тяжёлых атак ближнего боя малое" end),

	--[+ Heavy Melee Damage Boost Medium - Повышение урона тяжёлых атак ближнего боя среднее +]--
	create_template("talent_tree_oper_mod_014_m_en", {"loc_talent_melee_heavy_damage_medium"}, {"en"}, function(locale, value) return "Heavy Melee Damage Boost Medium" end), -- melee_heavy_damage:+10% -- Ogryn
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_014_m_ru", {"loc_talent_melee_heavy_damage_medium"}, {"ru"}, function(locale, value) return "Повышение урона тяжёлых атак ближнего боя среднее" end),

	--[+ Inspiring Presence - Вдохновляющее присутствие +]--
	-- create_template("talent_tree_oper_mod_003_en", {"loc_talent_coherency_regen_low"}, {"en"}, function(locale, value) return "Inspiring Presence" end), -- coherency_regen:+10% -- Veteran
	--[+ Russian +]--
	-- create_template("talent_tree_oper_mod_003_ru", {"loc_talent_coherency_regen_low"}, {"ru"}, function(locale, value) return "Вдохновляющее присутствие" end),

	--[+ Melee Damage Boost Low - Повышение урона атак ближнего боя малое +]--
	create_template("talent_tree_oper_mod_008_en", {"loc_talent_melee_damage_boost_low"}, {"en"}, function(locale, value) return "Melee Damage Boost Low" end), -- melee_damage:+5% -- Ogryn, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_008_ru", {"loc_talent_melee_damage_boost_low"}, {"ru"}, function(locale, value) return "Повышение урона атак ближнего боя малое" end),

	--[+ Melee Damage Boost Medium - Повышение урона атак ближнего боя среднее +]--
	create_template("talent_tree_oper_mod_008_1_en", {"loc_talent_melee_damage_boost_medium"}, {"en"}, function(locale, value) return "Melee Damage Boost Medium" end), -- melee_damage:+10% -- Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_008_1_ru", {"loc_talent_melee_damage_boost_medium"}, {"ru"}, function(locale, value) return "Повышение урона атак ближнего боя среднее" end),

	--[+ Movement Speed Boost - Повышение скорости движения +]--
	-- create_template("talent_tree_oper_mod_007_en",{"loc_talent_movement_speed_low"}, {"en"}, function(locale, value) return "Movement Speed Boost" end), -- movement_speed:+5%. -- Psyker, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_007_en",{"loc_talent_movement_speed_low"}, {"ru"}, function(locale, value) return "Повышение скорости движения" end),

	--[+ Peril Resistance - Сопротивление опасности +]--
	-- create_template("talent_tree_oper_mod_001_en",{"loc_talent_warp_charge_low"}, {"en"}, function(locale, value) return "Peril Resistance" end), -- warp_charge:-5% -- Psyker
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_001_en",{"loc_talent_warp_charge_low"}, {"ru"}, function(locale, value) return "Сопротивление опасности" end),

	--[+ Ranged Damage Boost Low - Повышение урона дальнего боя малое +]--
	create_template("talent_tree_oper_mod_004_en", {"loc_talent_ranged_damage_low"}, {"en"}, function(locale, value) return "Ranged Damage Boost Low" end), -- ranged_damage:+5% -- Psyker, Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_004_ru", {"loc_talent_ranged_damage_low"}, {"ru"}, function(locale, value) return "Повышение урона дальнего боя малое" end),

	--[+ Ranged Damage Boost Medium - Повышение урона дальнего боя среднее +]--
	create_template("talent_tree_oper_mod_004_en", {"loc_talent_ranged_damage_medium"}, {"en"}, function(locale, value) return "Ranged Damage Boost Medium" end), -- ranged_damage:+5% -- Psyker, Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_004_ru", {"loc_talent_ranged_damage_medium"}, {"ru"}, function(locale, value) return "Повышение урона дальнего боя среднее" end),

	--[+ Reload Boost - Повышение скорости перезарядки +]--
	-- create_template("talent_tree_oper_mod_011_en", {"loc_talent_reload_speed_low"}, {"en"}, function(locale, value) return "Reload Boost" end), -- reload_speed: +5% -- Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_011_ru", {"loc_talent_reload_speed_low"}, {"ru"}, function(locale, value) return "Повышение скорости перезарядки" end),

	--[+ Rending Boost - Повышение пробивания брони +]--
	-- create_template("talent_tree_oper_mod_013_en", {"loc_talent_armor_pen_low"}, {"en"}, function(locale, value) return "Rending Boost" end), -- rending: +5% -- Ogryn
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_013_ru", {"loc_talent_armor_pen_low"}, {"ru"}, function(locale, value) return "Повышение пробивания брони" end),

	--[+ Stamina Boost - Повышение выносливости +]--
	-- create_template("talent_tree_oper_mod_009_en", {"loc_talent_stamina_low"}, {"en"}, function(locale, value) return "Stamina Boost" end), -- stamina: +1 -- Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_009_ru", {"loc_talent_stamina_low"}, {"ru"}, function(locale, value) return "Повышение выносливости" end),

	--[+ Stamina Regeneration Boost - Повышение восстановления выносливости +]--
	-- create_template("talent_tree_oper_mod_012_en", {"loc_talent_stamina_regen_delay"}, {"en"}, function(locale, value) return "Stamina Regeneration Boost" end), -- duration: 0.25 -- Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_012_ru", {"loc_talent_stamina_regen_delay"}, {"ru"}, function(locale, value) return "Повышение восстановления выносливости" end),

	--[+ Suppression Boost - Повышение подавления врагов +]--
	-- create_template("talent_tree_oper_mod_010_en", {"loc_talent_suppression_low"}, {"en"}, function(locale, value) return "Suppression Boost" end), -- suppression: +25% -- Ogryn, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_010_ru", {"loc_talent_suppression_low"}, {"ru"}, function(locale, value) return "Повышение подавления" end),

	--[+ Toughness Boost Low - Повышение стойкости малое +]--
	create_template("talent_tree_oper_mod_000_l_en", {"loc_talent_toughness_boost_low"}, {"en"}, function(locale, value) return "Toughness Boost Low" end), -- toughness: +15% -- Psyker, Ogryn, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_000_l_ru", {"loc_talent_toughness_boost_low"}, {"ru"}, function(locale, value) return "Повышение стойкости малое" end),

	--[+ Toughness Boost Medium - Повышение стойкости среднее +]--
	create_template("talent_tree_oper_mod_000_m_en", {"loc_talent_toughness_boost_medium"}, {"en"}, function(locale, value) return "Toughness Boost Medium" end), -- toughness:+25% -- Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_000_m_ru", {"loc_talent_toughness_boost_medium"}, {"ru"}, function(locale, value) return "Повышение стойкости среднее" end),

	--[+ Toughness Damage Reduction Low - Снижение урона стойкости малое +]--
	create_template("talent_tree_oper_mod_002_l_en", {"loc_talent_toughness_damage_reduction_low"}, {"en"}, function(locale, value) return "Toughness Damage Reduction Low" end), -- toughness:+5% -- Psyker, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_002_l_ru", {"loc_talent_toughness_damage_reduction_low"}, {"ru"}, function(locale, value) return "Снижение урона стойкости малое" end),

	--[+ Toughness Damage Reduction Medium - Снижение урона стойкости среднее +]--
	create_template("talent_tree_oper_mod_002_m_en",{"loc_talent_toughness_damage_reduction_medium"}, {"en"}, function(locale, value) return "Toughness Damage Reduction Medium" end), -- toughness:+10% -- Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_002_m_en",{"loc_talent_toughness_damage_reduction_medium"}, {"ru"}, function(locale, value) return "Снижение урона стойкости среднее" end),


--[+ ++PSYKER - ПСАЙКЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ Blitz 0 - Brain Burst +]--
	--[+ Russian +]-- Взрыв мозга -- руоф Взрыв разума
	create_template("talent_tree_psy_blitz0_000_ru", {"loc_ability_psyker_smite"}, {"ru"}, function(locale, value) return "Взрыв мозга" end),

	--[+ Blitz 1 - Brain Rupture +]--
	--[+ Russian +]-- Разрыв мозга
	-- create_template("talent_tree_psy_blitz1_000_ru", {"loc_talent_psyker_brain_burst_improved"}, {"ru"}, function(locale, value) return "Разрыв мозга" end),

	--[+ Blitz 1-1 - Kinetic Resonance +]--
	--[+ Russian +]-- Кинетический резонанс
	-- create_template("talent_tree_psy_blitz1_001_ru", {"loc_talent_psyker_ability_increase_brain_burst_speed"}, {"ru"}, function(locale, value) return "Кинетический резонанс" end),

	--[+ Blitz 1-2 - Kinetic Flayer +]--
	--[+ Russian +]-- Кинетический живодёр -- руоф Кинетический истребитель
	create_template("talent_tree_psy_blitz1_002_ru", {"loc_talent_psyker_smite_on_hit"}, {"ru"}, function(locale, value) return "Кинетический живодёр" end),

	--[+ Blitz 2 - Smite +]--
	--[+ Russian +]-- Сокрушение
	-- create_template("talent_tree_psy_blitz2_000_ru", {"loc_ability_psyker_chain_lightning"}, {"ru"}, function(locale, value) return "Сокрушение" end),

	--[+ Blitz 2-1 - Lightning Storm +]--
	--[+ Russian +]-- Гроза
	-- create_template("talent_tree_psy_blitz2_001_en",{"loc_talent_psyker_increased_chain_lightning_size"}, {"ru"}, function(locale, value) return "Гроза" end),

	--[+ Blitz 2-2 - Enfeeble +]--
	--[+ Russian +]-- Ослабление
	-- create_template("talent_tree_psy_blitz2_002_ru", {"loc_talent_psyker_increased_chain_lightning_improved_target_buff"}, {"ru"}, function(locale, value) return "Ослабление" end),

	--[+ Blitz 2-3 - Charged Strike +]--
	-- create_template("talent_tree_psy_blitz2_003_en", {"loc_talent_psyker_chain_lightning_heavy_attacks"}, {"en"}, function(locale, value) return "Charged Strike" end),
	--[+ Russian +]-- Заряженный удар
	-- create_template("talent_tree_psy_blitz2_003_ru", {"loc_talent_psyker_chain_lightning_heavy_attacks"}, {"ru"}, function(locale, value) return "Заряженный удар" end),

	--[+ Blitz 3 - Assail +]--
	-- create_template("talent_tree_psy_blitz3_000_en", {"loc_ability_psyker_blitz_throwing_knives"}, {"en"}, function(locale, value) return "Assail" end),
	--[+ Russian +]-- Нападение
	-- create_template("talent_tree_psy_blitz3_000_ru", {"loc_ability_psyker_blitz_throwing_knives"}, {"ru"}, function(locale, value) return "Нападение" end),

	--[+ Blitz 3-1 - Ethereal Shards +]--
	-- create_template("talent_tree_psy_blitz3_001_en", {"loc_talent_psyker_throwing_knives_pierce"}, {"en"}, function(locale, value) return "Ethereal Shards" end),
	--[+ Russian +]-- Эфирные осколки -- руоф Эфирные частицы
	create_template("talent_tree_psy_blitz3_001_ru", {"loc_talent_psyker_throwing_knives_pierce"}, {"ru"}, function(locale, value) return "Эфирные осколки" end),

	--[+ Blitz 3-2 - Quick Shards +]--
	-- create_template("talent_tree_psy_blitz3_002_en", {"loc_talent_psyker_throwing_knives_reduced_cooldown"}, {"en"}, function(locale, value) return "Quick Shards" end),
	--[+ Russian +]-- Быстрые осколки -- руоф Быстрые частицы
	create_template("talent_tree_psy_blitz3_002_ru", {"loc_talent_psyker_throwing_knives_reduced_cooldown"}, {"ru"}, function(locale, value) return "Быстрые осколки" end),

--[+ +AURA - АУРА+ +]--
	--[+ Aura 0 - The Quickening +]--
	-- create_template("talent_tree_psy_aura0_000_en", {"loc_talent_psyker_aura_reduced_ability_cooldown"}, {"en"}, function(locale, value) return "The Quickening" end),
	--[+ Russian +]-- Ускорение
	-- create_template("talent_tree_psy_aura0_000_ru", {"loc_talent_psyker_aura_reduced_ability_cooldown"}, {"ru"}, function(locale, value) return "Ускорение" end),

	--[+ Aura 1 - Kinetic Presence +]--
	-- create_template("talent_tree_psy_aura1_000_en", {"loc_talent_psyker_base_3"}, {"en"}, function(locale, value) return "Kinetic Presence" end),
	--[+ Russian +]-- Кинетическое присутствие
	-- create_template("talent_tree_psy_aura1_000_ru", {"loc_talent_psyker_base_3"}, {"ru"}, function(locale, value) return "Кинетическое присутствие" end),

	--[+ Aura 2 - Seer's Presence +]--
	-- create_template("talent_tree_psy_aura2_000_en", {"loc_talent_psyker_cooldown_aura_improved"}, {"en"}, function(locale, value) return "Seer's Presence" end),
	--[+ Russian +]-- Присутствие провидца
	-- create_template("talent_tree_psy_aura2_000_ru", {"loc_talent_psyker_cooldown_aura_improved"}, {"ru"}, function(locale, value) return "Присутствие провидца" end),

	--[+ Aura 3 - Prescience +]--
	-- create_template("talent_tree_psy_aura3_000_en", {"loc_ability_psyker_gunslinger_aura"}, {"en"}, function(locale, value) return "Prescience" end),
	--[+ Russian +]-- Предвидение
	-- create_template("talent_tree_psy_aura3_000_ru", {"loc_ability_psyker_gunslinger_aura"}, {"ru"}, function(locale, value) return "Предвидение" end),

--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ Ability 0 - Psykinetic's Wrath +]--
	--create_template("talent_tree_psy_abil0_000_en", {"loc_talent_psyker_2_combat"}, {"en"}, function(locale, value) return "Psykinetic's Wrath" end),
	--[+ Russian +]-- Гнев психокинетика -- руоф Психокинетический гнев
	create_template("talent_tree_psy_abil0_000_ru", {"loc_talent_psyker_2_combat"}, {"ru"}, function(locale, value) return "Гнев психокинетика" end),

	--[+ Ability 1 - Venting Shriek +]--
	--create_template("talent_tree_psy_abil1_000_en", {"loc_talent_psyker_shout_vent_warp_charge"}, {"en"}, function(locale, value) return "Venting Shriek" end),
	--[+ Russian +]-- Сбрасывающий вопль -- руоф Вырвавшийся вопль
	create_template("talent_tree_psy_abil1_000_ru", {"loc_talent_psyker_shout_vent_warp_charge"}, {"ru"}, function(locale, value) return "Сбрасывающий вопль" end),

	--[+ Ability 1-1 - Becalming Eruption +]--
	-- create_template("talent_tree_psy_abil1_001_en", {"loc_talent_psyker_shout_reduces_warp_charge_generation"}, {"en"}, function(locale, value) return "Becalming Eruption" end),
	--[+ Russian +]-- Успокаивающее извержение -- руоф Затихающее извержение
	create_template("talent_tree_psy_abil1_001_ru", {"loc_talent_psyker_shout_reduces_warp_charge_generation"}, {"ru"}, function(locale, value) return "Успокаивающее извержение" end),

	--[+ Ability 1-2 - Warp Rupture +]--
	-- create_template("talent_tree_psy_abil1_002_en", {"loc_talent_psyker_shout_damage_per_warp_charge"}, {"en"}, function(locale, value) return "Warp Rupture" end),
	--[+ Russian +]-- Разрыв варпа -- руоф Варп-разрыв
	create_template("talent_tree_psy_abil1_002_en", {"loc_talent_psyker_shout_damage_per_warp_charge"}, {"ru"}, function(locale, value) return "Разрыв варпа" end),

	--[+ Ability 1-3 - Warp Creeping Flames +]--
	-- create_template("talent_tree_psy_abil1_003_en", {"loc_talent_psyker_warpfire_on_shout"}, {"en"}, function(locale, value) return "Creeping Flames" end),
	--[+ Russian +]-- Ползучее пламя -- руоф Раздувающееся пламя
	create_template("talent_tree_psy_abil1_003_ru", {"loc_talent_psyker_warpfire_on_shout"}, {"ru"}, function(locale, value) return "Ползучее пламя" end),

	--[+ Ability 2 - Telekine Shield +]--
	-- create_template("talent_tree_psy_abil2_000_en", {"loc_talent_psyker_combat_ability_shield"}, {"en"}, function(locale, value) return "Telekine Shield" end),
	--[+ Russian +]-- Телекинетический щит
	-- create_template("talent_tree_psy_abil2_000_ru", {"loc_talent_psyker_combat_ability_shield"}, {"ru"}, function(locale, value) return "Телекинетический щит" end),

	--[+ Ability 2-1 - Bolstered Shield +]--
	-- create_template("talent_tree_psy_abil2_001_en", {"loc_talent_psyker_force_field_charges"}, {"en"}, function(locale, value) return "Bolstered Shield" end),
	--[+ Russian +]-- Усиленный щит
	-- create_template("talent_tree_psy_abil2_001_ru", {"loc_talent_psyker_force_field_charges"}, {"ru"}, function(locale, value) return "Усиленный щит" end),

	--[+ Ability 2-2 - Enervating Threshold +]--
	-- create_template("talent_tree_psy_abil2_002_en", {"loc_talent_psyker_force_field_stun_increased"}, {"en"}, function(locale, value) return "Enervating Threshold" end),
	--[+ Russian +]-- Порог ослабления
	-- create_template("talent_tree_psy_abil2_002_ru", {"loc_talent_psyker_force_field_stun_increased"}, {"ru"}, function(locale, value) return "Порог ослабления" end),

	--[+ Ability 2-3 - Telekine Dome +]--
	-- create_template("talent_tree_psy_abil2_003_en", {"loc_talent_psyker_force_field_dome"}, {"en"}, function(locale, value) return "Telekine Dome" end),
	--[+ Russian +]-- Телекинический купол
	-- create_template("talent_tree_psy_abil2_003_ru", {"loc_talent_psyker_force_field_dome"}, {"ru"}, function(locale, value) return "Телекинический купол" end),

	--[+ Ability 2-4 - Sanctuary +]--
	-- create_template("talent_tree_psy_abil2_004_en", {"loc_talent_psyker_force_field_grants_toughness"}, {"en"}, function(locale, value) return "Sanctuary" end),
	--[+ Russian +]-- Убежище -- руоф Святилище
	create_template("talent_tree_psy_abil2_004_ru", {"loc_talent_psyker_force_field_grants_toughness"}, {"ru"}, function(locale, value) return "Убежище" end),

	--[+ Ability 3 - Scrier's Gaze +]--
	-- create_template("talent_tree_psy_abil3_000_en", {"loc_talent_psyker_combat_ability_overcharge_stance"}, {"en"}, function(locale, value) return "Scrier's Gaze" end),
	--[+ Russian +]-- Взор провидца -- руоф Взор Скрира
	create_template("talent_tree_psy_abil3_000_ru", {"loc_talent_psyker_combat_ability_overcharge_stance"}, {"ru"}, function(locale, value) return "Взор провидца" end),

	--[+ Ability 3-1 - Endurance +]--
	-- create_template("talent_tree_psy_abil3_001_en", {"loc_ability_psyker_overcharge_reduced_toughness_damage_taken"}, {"en"}, function(locale, value) return "Endurance" end),
	--[+ Russian +]-- Выносливость
	-- create_template("talent_tree_psy_abil3_001_ru", {"loc_ability_psyker_overcharge_reduced_toughness_damage_taken"}, {"ru"}, function(locale, value) return "Выносливость" end),

	--[+ Ability 3-2 - Precognition +]--
	-- create_template("talent_tree_psy_abil3_002_en", -- Precognition {"loc_ability_psyker_overcharge_weakspot"}, {"en"}, function(locale, value) return "Precognition" end),
	--[+ Russian +]-- Предвидение -- руоф Познание
	create_template("talent_tree_psy_abil3_002_en", {"loc_ability_psyker_overcharge_weakspot"}, {"ru"}, function(locale, value) return "Предвидение" end),

	--[+ Ability 3-3 - Warp Speed +]--
	-- create_template("talent_tree_psy_abil3_003_en", {"loc_ability_psyker_overcharge_movement_speed"}, {"en"}, function(locale, value) return "Warp Speed" end),
	--[+ Russian +]-- Варп-скорость
	-- create_template("talent_tree_psy_abil3_003_ru", {"loc_ability_psyker_overcharge_movement_speed"}, {"ru"}, function(locale, value) return "Варп-скорость" end),

	--[+ Ability 3-4 - Reality Anchor +]--
	-- create_template("talent_tree_psy_abil3_004_en", {"loc_ability_psyker_overcharge_reduced_warp_charge"}, {"en"}, function(locale, value) return "Reality Anchor" end),
	--[+ Russian +]-- Якорь реальности
	-- create_template("talent_tree_psy_abil3_004_ru", {"loc_ability_psyker_overcharge_reduced_warp_charge"}, {"ru"}, function(locale, value) return "Якорь реальности" end),

	--[+ Ability 3-5 - Warp Unbound +]--
	-- create_template("talent_tree_psy_abil3_005_en", {"loc_talent_psyker_overcharge_infinite_casting"}, {"en"}, function(locale, value) return "Warp Unbound" end),
	--[+ Russian +]-- Высвобождение варпа -- руоф Искажение варпа
	create_template("talent_tree_psy_abil3_005_ru", {"loc_talent_psyker_overcharge_infinite_casting"}, {"ru"}, function(locale, value) return "Высвобождение варпа" end),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ ТАЛАНТЫ+ +]--
	--[+ Keystone 1 - Warp Siphon +]--
	-- create_template("talent_tree_psy_keys1_000_en", {"loc_talent_psyker_souls"}, {"en"}, function(locale, value) return "Warp Siphon" end),
	--[+ Russian +]-- Переливание варпа -- руоф Варп-сифон
	create_template("talent_tree_psy_keys1_000_ru", {"loc_talent_psyker_souls"}, {"ru"}, function(locale, value) return "Переливание варпа" end),

	--[+ Keystone 1-1 - Inner Tranquility +]--
	-- create_template("talent_tree_psy_keys1_001_en", {"loc_talent_psyker_reduced_warp_charge_cost_venting_speed"}, {"en"}, function(locale, value) return "Inner Tranquility" end),
	--[+ Russian +]-- Внутреннее спокойствие
	-- create_template("talent_tree_psy_keys1_001_ru", {"loc_talent_psyker_reduced_warp_charge_cost_venting_speed"}, {"ru"}, function(locale, value) return "Внутреннее спокойствие" end),

	--[+ Keystone 1-2 - Essence Harvest +]--
	-- create_template("talent_tree_psy_keys1_002_en", {"loc_talent_psyker_toughness_regen_on_soul"}, {"en"}, function(locale, value) return "Essence Harvest" end),
	--[+ Russian +]-- Сбор сущностей -- руоф Сбор сущности
	create_template("talent_tree_psy_keys1_002_ru", {"loc_talent_psyker_toughness_regen_on_soul"}, {"ru"}, function(locale, value) return "Сбор сущностей" end),

	--[+ Keystone 1-3 - Empyrean Empowerment +]--
	-- create_template("talent_tree_psy_keys1_003_en", {"loc_talent_psyker_souls_increase_damage"}, {"en"}, function(locale, value) return "Empyrean Empowerment" end),
	--[+ Russian +]-- Эмпирейское усиление -- руоф Усиление влияния Эмпирея
	create_template("talent_tree_psy_keys1_003_ru", {"loc_talent_psyker_souls_increase_damage"}, {"ru"}, function(locale, value) return "Эмпирейское усиление" end),

	--[+ Keystone 1-4 - In Fire Reborn +]--
	-- create_template("talent_tree_psy_keys1_004_en", {"loc_talent_psyker_warpfire_generates_souls"}, {"en"}, function(locale, value) return "In Fire Reborn" end),
	--[+ Russian +]-- Возрождение в огне -- руоф В огне восстану
	create_template("talent_tree_psy_keys1_004_ru", {"loc_talent_psyker_warpfire_generates_souls"}, {"ru"}, function(locale, value) return "Возрождение в огне" end),

	--[+ Keystone 1-5 - Psychic Vampire +]--
	-- create_template("talent_tree_psy_keys1_005_en", {"loc_talent_psyker_souls_on_kill_coop"}, {"en"}, function(locale, value) return "Psychic Vampire" end), Психический вампир +]--
	--[+ Russian +]--
	-- create_template("talent_tree_psy_keys1_005_ru", {"loc_talent_psyker_souls_on_kill_coop"}, {"ru"}, function(locale, value) return "Психический вампир" end),

	--[+ Keystone 1-6 - Warp Battery +]--
	-- create_template("talent_tree_psy_keys1_006_en", {"loc_talent_psyker_increased_souls"}, {"en"}, function(locale, value) return "Warp Battery" end),
	--[+ Russian +]-- Варп-аккумулятор
	-- create_template("talent_tree_psy_keys1_006_ru", {"loc_talent_psyker_increased_souls"}, {"ru"}, function(locale, value) return "Варп-аккумулятор" end),

	--[+ Keystone 2 - Empowered Psionics +]--
	-- create_template("talent_tree_psy_keys2_000_en", {"loc_talent_psyker_empowered_ability"}, {"en"}, function(locale, value) return "Empowered Psionics" end),
	--[+ Russian +]-- руоф Усиленные псионики
	-- create_template("talent_tree_psy_keys2_000_ru", {"loc_talent_psyker_empowered_ability"}, {"ru"}, function(locale, value) return "Усиленные псионики" end),

	--[+ Keystone 2-1 - Bio-Lodestone +]--
	-- create_template("talent_tree_psy_keys2_001_en", {"loc_talent_psyker_increase_empower_chain_lighting_chance"}, {"en"}, function(locale, value) return "Bio-Lodestone" end),
	--[+ Russian +]-- Биопритяжение
	-- create_template("talent_tree_psy_keys2_001_ru", {"loc_talent_psyker_increase_empower_chain_lighting_chance"}, {"ru"}, function(locale, value) return "Биопритяжение" end),

	--[+ Keystone 2-2 - Psychic Leeching +]--
	-- create_template("talent_tree_psy_keys2_002_en", {"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies"}, {"en"}, function(locale, value) return "Psychic Leeching" end),
	--[+ Russian +]-- Психическое высасывание -- руоф Психическая пиявка
	create_template("talent_tree_psy_keys2_002_ru", {"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies"}, {"ru"}, function(locale, value) return "Психическое высасывание" end),

   --[+ Keystone 2-3 - Overpowering Souls +]--
	-- create_template("talent_tree_psy_keys2_003_en", {"loc_talent_psyker_empowered_ability_on_elite_kills"}, {"en"}, function(locale, value) return "Overpowering Souls" end),
	--[+ Russian +]-- Могучие души
	-- create_template("talent_tree_psy_keys2_003_ru", {"loc_talent_psyker_empowered_ability_on_elite_kills"}, {"ru"}, function(locale, value) return "Могучие души" end),

	--[+ Keystone 2-4 - Charged Up +]--
	-- create_template("talent_tree_psy_keys2_004_en", {"loc_talent_psyker_increased_empowered_chain_lightning_stacks"}, {"en"}, function(locale, value) return "Charged Up" end),
	--[+ Russian +]-- Заряженный -- руоф Зарядка
	create_template("talent_tree_psy_keys2_004_ru", {"loc_talent_psyker_increased_empowered_chain_lightning_stacks"}, {"ru"}, function(locale, value) return "Заряженный" end),

	--[+ Keystone 3 - Disrupt Destiny +]--
	-- create_template("talent_tree_psy_keys3_000_en", {"loc_talent_psyker_marked_enemies_passive"}, {"en"}, function(locale, value) return "Disrupt Destiny" end),
	--[+ Russian +]-- Прерывание судьбы -- руоф Разрушенная судьба
	create_template("talent_tree_psy_keys3_000_ru", {"loc_talent_psyker_marked_enemies_passive"}, {"ru"}, function(locale, value) return "Прерывание судьбы" end),

	--[+ Keystone 3-1 - Perfectionism +]--
	-- create_template("talent_tree_psy_keys3_001_en", {"loc_talent_psyker_mark_increased_max_stacks"}, {"en"}, function(locale, value) return "Perfectionism" end),
	--[+ Russian +]-- Перфекционизм
	-- create_template("talent_tree_psy_keys3_001_ru", {"loc_talent_psyker_mark_increased_max_stacks"}, {"ru"}, function(locale, value) return "Перфекционизм" end),

	--[+ Keystone 3-2 - Purloin Providence +]--
	-- create_template("talent_tree_psy_keys3_002_en", {"loc_talent_psyker_mark_kills_can_vent"}, {"en"}, function(locale, value) return "Purloin Providence" end),
	--[+ Russian +]-- Похищение провидения -- руоф Похищенное провидение
	create_template("talent_tree_psy_keys3_002_ru", {"loc_talent_psyker_mark_kills_can_vent"}, {"ru"}, function(locale, value) return "Похищение провидения" end),

	--[+ Keystone 3-3 - Lingering Influence +]--
	-- create_template("talent_tree_psy_keys3_003_en", {"loc_talent_psyker_mark_increased_duration"}, {"en"}, function(locale, value) return "Lingering Influence" end),
	--[+ Russian +]-- Длительное влияние -- руоф Длящееся влияние
	create_template("talent_tree_psy_keys3_003_ru", {"loc_talent_psyker_mark_increased_duration"}, {"ru"}, function(locale, value) return "Длительное влияние" end),

	--[+ Keystone 3-4 - Cruel Fortune +]--
	-- create_template("talent_tree_psy_keys3_004_en", {"loc_talent_psyker_mark_weakspot_stacks"}, {"en"}, function(locale, value) return "Cruel Fortune" end),
	--[+ Russian +]-- Жестокая судьба
	-- create_template("talent_tree_psy_keys3_004_ru", {"loc_talent_psyker_mark_weakspot_stacks"}, {"ru"}, function(locale, value) return "Жестокая судьба" end),

--[+ +PASSIVES - ПАССИВНЫЕ ТАЛАНТЫ+ +]--
	--[+ Passive 1 - Soulstealer +]--
	-- create_template("talent_tree_psy_pas_001_en", {"loc_talent_psyker_toughness_on_warp_kill"}, {"en"}, function(locale, value) return "Soulstealer" end),
	--[+ Russian +]-- Похититель душ -- руоф Похититель души
	create_template("talent_tree_psy_pas_001_ru", {"loc_talent_psyker_toughness_on_warp_kill"}, {"ru"}, function(locale, value) return "Похититель душ" end),

	--[+ Passive 2 - Mettle +]--
	-- create_template("talent_tree_psy_pas_002_en", {"loc_talent_psyker_crits_regen_tougness_and_movement_speed"}, {"en"}, function(locale, value) return "Mettle" end),
	--[+ Russian +]-- Ретивость
	-- create_template("talent_tree_psy_pas_002_ru", {"loc_talent_psyker_crits_regen_tougness_and_movement_speed"}, {"ru"}, function(locale, value) return "Ретивость" end),

	--[+ Passive 3 - Quietude +]--
	-- create_template("talent_tree_psy_pas_003_en", {"loc_talent_psyker_toughness_from_vent"}, {"en"}, function(locale, value) return "Quietude" end),
	--[+ Russian +]-- Спокойствие -- руоф Тишина
	create_template("talent_tree_psy_pas_003_ru", {"loc_talent_psyker_toughness_from_vent"}, {"ru"}, function(locale, value) return "Спокойствие" end),

	--[+ Passive 4 - Warp Expenditure +]--
	-- create_template("talent_tree_psy_pas_004_en", {"loc_talent_psyker_warp_charge_generation_generates_toughness"}, {"en"}, function(locale, value) return "Warp Expenditure" end),
	--[+ Russian +]-- Затраты варпа -- руоф Варп-затраты
	create_template("talent_tree_psy_pas_004_ru", {"loc_talent_psyker_warp_charge_generation_generates_toughness"}, {"ru"}, function(locale, value) return "Затраты варпа" end),

	--[+ Passive 5 - Perilous Combustion +]--
	-- create_template("talent_tree_psy_pas_005_en", {"loc_talent_psyker_elite_kills_add_warpfire"}, {"en"}, function(locale, value) return "Perilous Combustion" end),
	--[+ Russian +]-- Опасное возгорание -- руоф Пагубное воспламенение
	create_template("talent_tree_psy_pas_005_ru", {"loc_talent_psyker_elite_kills_add_warpfire"}, {"ru"}, function(locale, value) return "Опасное возгорание" end),

	--[+ Passive 6 - Perfect Timing +]--
	-- create_template("talent_tree_psy_pas_006_en", {"loc_talent_psyker_crits_empower_next_attack"}, {"en"}, function(locale, value) return "Perfect Timing" end),
	--[+ Russian +]-- Идеальный момент -- руоф Безупречное чувство времени
	create_template("talent_tree_psy_pas_006_ru", {"loc_talent_psyker_crits_empower_next_attack"}, {"ru"}, function(locale, value) return "Идеальный момент" end),

	--[+ Passive 7 - Battle Meditation +]--
	-- create_template("talent_tree_psy_pas_007_en", {"loc_talent_psyker_base_2"}, {"en"}, function(locale, value) return "Battle Meditation" end),
	--[+ Russian +]-- Боевая медитация
	-- create_template("talent_tree_psy_pas_007_ru", {"loc_talent_psyker_base_2"}, {"ru"}, function(locale, value) return "Боевая медитация" end),

	--[+ Passive 8 - Wildfire +]--
	-- create_template("talent_tree_psy_pas_008_en", {"loc_talent_psyker_warpfire_spread"}, {"en"}, function(locale, value) return "Wildfire" end),
	--[+ Russian +]-- Некотролируемый пожар -- руоф Гремучая смесь
	create_template("talent_tree_psy_pas_008_ru", {"loc_talent_psyker_warpfire_spread"}, {"ru"}, function(locale, value) return "Некотролируемый пожар" end),

	--[+ Passive 9 - Psykinetic's Aura +]--
	-- create_template("talent_tree_psy_pas_009_en", {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency"}, {"en"}, function(locale, value) return "Psykinetic's Aura" end),
	--[+ Russian +]-- Аура психокинетика
	-- create_template("talent_tree_psy_pas_009_ru", {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency"}, {"ru"}, function(locale, value) return "Аура психокинетика" end),

	--[+ Passive 10 - Mind in Motion +]--
	-- create_template("talent_tree_psy_pas_010_en", {"loc_talent_psyker_venting_doesnt_slow"}, {"en"}, function(locale, value) return "Mind in Motion" end),
	--[+ Russian +]-- Разум в движении -- руоф Движущийся разум
	create_template("talent_tree_psy_pas_010_ru", {"loc_talent_psyker_venting_doesnt_slow"}, {"ru"}, function(locale, value) return "Разум в движении" end),

	--[+ Passive 11 - Malefic Momentum +]--
	-- create_template("talent_tree_psy_pas_011_en", {"loc_talent_psyker_kills_stack_other_weapon_damage"}, {"en"}, function(locale, value) return "Malefic Momentum" end),
	--[+ Russian +]-- Пагубный импульс -- руоф Пагубный моментум
	create_template("talent_tree_psy_pas_011_ru", {"loc_talent_psyker_kills_stack_other_weapon_damage"}, {"ru"}, function(locale, value) return "Пагубный импульс" end),

	--[+ Passive 12 - Channeled Force +]--
	-- create_template("talent_tree_psy_pas_012_en", {"loc_talent_psyker_force_staff_bonus"}, {"en"}, function(locale, value) return "Channeled Force" end),
	--[+ Russian +]-- Направленная сила
	-- create_template("talent_tree_psy_pas_012_ru", {"loc_talent_psyker_force_staff_bonus"}, {"ru"}, function(locale, value) return "Направленная сила" end),

	--[+ Passive 13 - Perilous Assault +]--
	-- create_template("talent_tree_psy_pas_013_en", {"loc_talent_psyker_force_staff_melee_attack_bonus"}, {"en"}, function(locale, value) return "Perilous Assault" end), 
	--[+ Russian +]--Рискованное нападение -- руоф Пагубное нападение
	create_template("talent_tree_psy_pas_013_ru", {"loc_talent_psyker_force_staff_melee_attack_bonus"}, {"ru"}, function(locale, value) return "Рискованное нападение" end),

	--[+ Passive 14 - Lightning Speed +]--
	-- create_template("talent_tree_psy_pas_014_en", {"loc_talent_psyker_melee_attack_speed"}, {"en"}, function(locale, value) return "Lightning Speed" end),
	--[+ Russian +]-- Молниеносная скорость
	-- create_template("talent_tree_psy_pas_014_ru", {"loc_talent_psyker_melee_attack_speed"}, {"ru"}, function(locale, value) return "Молниеносная скорость" end),

	--[+ Passive 15 - Souldrinker +]--
	-- create_template("talent_tree_psy_pas_015_en", {"loc_talent_psyker_nearby_soulblaze_reduced_damage"}, {"en"}, function(locale, value) return "Souldrinker" end),
	--[+ Russian +]-- Поглотитель душ -- руоф Поглощение душ
	create_template("talent_tree_psy_pas_015_ru", {"loc_talent_psyker_nearby_soulblaze_reduced_damage"}, {"ru"}, function(locale, value) return "Поглотитель душ" end),

	--[+ Passive 16 - Empyric Shock +]--
	-- create_template("talent_tree_psy_pas_016_en", {"loc_talent_psyker_force_staff_quick_attack_bonus"}, {"en"}, function(locale, value) return "Empyric Shock" end),
	--[+ Russian +]-- Эмпирический шок
	-- create_template("talent_tree_psy_pas_016_ru", {"loc_talent_psyker_force_staff_quick_attack_bonus"}, {"ru"}, function(locale, value) return "Эмпирический шок" end),

	--[+ Passive 17 - By Crack of Bone +]--
	-- create_template("talent_tree_psy_pas_017_en", {"loc_talent_psyker_melee_weaving"}, {"en"}, function(locale, value) return "By Crack of Bone" end),
	--[+ Russian +]-- Треск костей
	-- create_template("talent_tree_psy_pas_017_ru", {"loc_talent_psyker_melee_weaving"}, {"ru"}, function(locale, value) return "Треск костей" end),

	--[+ Passive 18 - Warp Splitting +]--
	-- create_template("talent_tree_psy_pas_018_en", {"loc_talent_psyker_cleave_from_peril"}, {"en"}, function(locale, value) return "Warp Splitting" end),
	--[+ Russian +]-- Расщепление варпа
	-- create_template("talent_tree_psy_pas_018_ru", {"loc_talent_psyker_cleave_from_peril"}, {"ru"}, function(locale, value) return "Расщепление варпа" end),

	--[+ Passive 19 - Unlucky for Some +]--
	-- create_template("talent_tree_psy_pas_019_en", {"loc_talent_psyker_restore_toughness_to_allies_when_ally_down"}, {"en"}, function(locale, value) return "Unlucky for Some" end),
	--[+ Russian +]-- Не везёт некоторым -- руоф Некоторым не повезло
	create_template("talent_tree_psy_pas_019_ru", {"loc_talent_psyker_restore_toughness_to_allies_when_ally_down"}, {"ru"}, function(locale, value) return "Не везёт некоторым" end),

	--[+ Passive 20 - One with the Warp +]--
	-- create_template("talent_tree_psy_pas_020_en", {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge"}, {"en"}, function(locale, value) return "One with the Warp" end),
	--[+ Russian +]-- Единство с варпом
	-- create_template("talent_tree_psy_pas_020_ru", {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge"}, {"ru"}, function(locale, value) return "Единство с варпом" end),

	--[+ Passive 21 - Empathic Evasion +]--
	-- create_template("talent_tree_psy_pas_21_en", {"loc_talent_psyker_dodge_after_crits"}, {"en"}, function(locale, value) return "Empathic Evasion" end),
	--[+ Russian +]-- Эмпатическое уклонение
	-- create_template("talent_tree_psy_pas_21_ru", {"loc_talent_psyker_dodge_after_crits"}, {"ru"}, function(locale, value) return "Эмпатическое уклонение" end),

	--[+ Passive 22 - Anticipation +]--
	-- create_template("talent_tree_psy_pas_022_en", {"loc_talent_psyker_improved_dodge"}, {"en"}, function(locale, value) return "Anticipation" end),
	--[+ Russian +]-- Предвкушение
	-- create_template("talent_tree_psy_pas_022_ru", {"loc_talent_psyker_improved_dodge"}, {"ru"}, function(locale, value) return "Предвкушение" end),

	--[+ Passive 23 - Solidity +]--
	-- create_template("talent_tree_psy_pas_023_en", {"loc_talent_psyker_increased_vent_speed"}, {"en"}, function(locale, value) return "Solidity" end),
	--[+ Russian +]-- Устойчивость -- руоф Твердость
	create_template("talent_tree_psy_pas_023_ru", {"loc_talent_psyker_increased_vent_speed"}, {"ru"}, function(locale, value) return "Устойчивость" end),

	--[+ Passive 24 - Puppet Master +]--
	-- create_template("talent_tree_psy_pas_024_en", -- Puppet Master 16 {"loc_talent_psyker_coherency_size_increase"}, {"en"}, function(locale, value) return "Puppet Master" end),
	--[+ Russian +]-- Кукловод
	-- create_template("talent_tree_psy_pas_024_en", {"loc_talent_psyker_coherency_size_increase"}, {"ru"}, function(locale, value) return "Кукловод" end),

	--[+ Passive 25 - Warp Rider +]--
	-- create_template("talent_tree_psy_pas_025_en", {"loc_talent_psyker_damage_based_on_warp_charge"}, {"en"}, function(locale, value) return "Warp Rider" end),
	--[+ Russian +]-- Всадник варпа -- руоф Наездник варпа
	create_template("talent_tree_psy_pas_025_ru", {"loc_talent_psyker_damage_based_on_warp_charge"}, {"ru"}, function(locale, value) return "Всадник варпа" end),

	--[+ Passive 26 - Crystalline Will +]--
	-- create_template("talent_tree_psy_pas_027_en", {"loc_talent_psyker_alternative_peril_explosion"}, {"en"}, function(locale, value) return "Crystalline Will" end),
	--[+ Russian +]-- Чистая воля
	-- create_template("talent_tree_psy_pas_027_ru", {"loc_talent_psyker_alternative_peril_explosion"}, {"ru"}, function(locale, value) return "Чистая воля" end),

	--[+ Passive 27 - Kinetic Deflection +]--
	-- create_template("talent_tree_psy_pas_027_en", {"loc_talent_psyker_block_costs_warp_charge"}, {"en"}, function(locale, value) return "Kinetic Deflection" end),
	--[+ Russian +]-- Кинетическое отклонение
	-- create_template("talent_tree_psy_pas_027_ru", {"loc_talent_psyker_block_costs_warp_charge"}, {"ru"}, function(locale, value) return "Кинетическое отклонение" end),

	--[+ Passive 28 - Tranquility Through Slaughter +]--
	-- create_template("talent_tree_psy_pas_028_en", {"loc_talent_psyker_ranged_crits_vent"}, {"en"}, function(locale, value) return "Tranquility Through Slaughter" end),
	--[+ Russian +]-- Спокойствие посредством убийств
	-- create_template("talent_tree_psy_pas_028_ru", {"loc_talent_psyker_ranged_crits_vent"}, {"ru"}, function(locale, value) return "Спокойствие посредством убийств" end),

	--[+ Passive 29 - Empyric Resolve +]--
	-- create_template("talent_tree_psy_pas_029_en", {"loc_talent_psyker_warp_glass_cannon"}, {"en"}, function(locale, value) return "Empyric Resolve" end),
	--[+ Russian +]-- Эмпирическая решимость
	-- create_template("talent_tree_psy_pas_029_ru", {"loc_talent_psyker_warp_glass_cannon"}, {"ru"}, function(locale, value) return "Эмпирическая решимость" end),

	--[+ Passive 30 - Penetration of the Soul +]--
	-- create_template("talent_tree_psy_pas_030_en", {"loc_talent_psyker_warp_attacks_rending"}, {"en"} function(locale, value) return "Penetration of the Soul" end),
	--[+ Russian +]-- Проникновение в душу
	-- create_template("talent_tree_psy_pas_030_ru", {"loc_talent_psyker_warp_attacks_rending"}, {"en"} function(locale, value) return "Проникновение в душу" end),

	--[+ Passive 31 - True Aim +]--
	-- create_template("talent_tree_psy_pas_031_en", {"loc_talent_psyker_weakspot_grants_crit"}, {"en"}, function(locale, value) return "True Aim" end),
	--[+ Russian +]-- Верная цель
	-- create_template("talent_tree_psy_pas_031_ru", {"loc_talent_psyker_weakspot_grants_crit"}, {"ru"}, function(locale, value) return "Верная цель" end),

	--[+ Passive 32 - Surety of Arms +]--
	-- create_template("talent_tree_psy_pas_032_en", {"loc_talent_psyker_reload_speed_warp"}, {"en"}, function(locale, value) return "Surety of Arms" end),
	--[+ Russian +]-- Варп в залог -- руоф Верность оружия
	create_template("talent_tree_psy_pas_032_ru", {"loc_talent_psyker_reload_speed_warp"}, {"ru"}, function(locale, value) return "Варп в залог" end),


--[+ ++ZEALOT - ИЗУВЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ Blitz 0 - Stun Grenade +]--
	-- create_template("talent_tree_zea_blitz0_000_en", {"loc_ability_shock_grenade"}, {"en"}, function(locale, value) return "Stun Grenade" end),
	--[+ Russian +]-- Оглушающая граната
	-- create_template("talent_tree_zea_blitz0_000_ru", {"loc_ability_shock_grenade"}, {"ru"}, function(locale, value) return "Оглушающая граната" end),

	--[+ Blitz 1 - Stunstorm Grenade +]--
	-- create_template("talent_tree_zea_blitz1_000_en", {"loc_zealot_improved_stun_grenade"}, {"en"}, function(locale, value) return "Stunstorm Grenade" end),
	--[+ Russian +]-- Оглушающе-штурмовая граната -- руоф Граната шквального оглушения
	create_template("talent_tree_zea_blitz1_000_en", {"loc_zealot_improved_stun_grenade"}, {"ru"}, function(locale, value) return "Оглушающе-штурмовая граната" end),

	--[+ Blitz 2 - Immolation Grenade +]--
	-- create_template("talent_tree_zea_blitz2_000_en", {"loc_talent_ability_fire_grenade"}, {"en"}, function(locale, value) return "Immolation Grenade" end),
	--[+ Russian +]-- Огненная граната -- руоф Жертвенная граната
	create_template("talent_tree_zea_blitz2_000_ru", {"loc_talent_ability_fire_grenade"}, {"ru"}, function(locale, value) return "Огненная граната" end),

	--[+ Blitz 3 - Blades of Faith +]--
	-- create_template("talent_tree_zea_blitz3_000_en", {"loc_ability_zealot_throwing_knifes"}, {"en"}, function(locale, value) return "Blades of Faith" end),
	--[+ Russian +]-- Клинки веры
	-- create_template("talent_tree_zea_blitz3_000_ru", {"loc_ability_zealot_throwing_knifes"}, {"ru"}, function(locale, value) return "Клинки веры" end),

--[+ +AURA+ +]--
	--[+ Aura 0 - The Emperors's Will +]--
	-- create_template("talent_tree_zea_aura0_000_en", {"loc_talent_zealot_2_base_3"}, {"en"}, function(locale, value) return "The Emperors's Will" end),
	--[+ Russian +]-- Воля Императора
	-- create_template("talent_tree_zea_aura0_000_ru", {"loc_talent_zealot_2_base_3"}, {"ru"}, function(locale, value) return "Воля Императора" end),

	--[+ Aura 1 - Benediction +]--
	-- create_template("talent_tree_zea_aura_001_en", {"loc_talent_zealot_aura_efficiency"}, {"en"}, function(locale, value) return "Benediction" end),
	--[+ Russian +]-- Благословение
	-- create_template("talent_tree_zea_aura_001_ru", {"loc_talent_zealot_aura_efficiency"}, {"ru"}, function(locale, value) return "Благословение" end),

	--[+ Aura 2 - Beacon of Purity +]--
	-- create_template("talent_tree_zea_aura_002_en", {"loc_talent_zealot_corruption_healing_coherency_improved"}, {"en"}, function(locale, value) return "Beacon of Purity" end),
	--[+ Russian +]-- Маяк очищения -- руоф Маяк непорочности
	create_template("talent_tree_zea_aura_002_ru", {"loc_talent_zealot_corruption_healing_coherency_improved"}, {"ru"}, function(locale, value) return "Маяк очищения" end),

	--[+ Aura 3 - Loner +]--
	-- create_template("talent_tree_zea_aura_003_en", {"loc_talent_zealot_always_in_coherency"}, {"en"}, function(locale, value) return "Loner" end),
	--[+ Russian +]-- Единоличник -- руоф Одиночка
	create_template("talent_tree_zea_aura_003_ru", {"loc_talent_zealot_always_in_coherency"}, {"ru"}, function(locale, value) return "Единоличник" end),

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Chastise the Wicked +]--
	-- create_template("talent_tree_zea_abil0_000_en", {"loc_talent_zealot_2_combat"}, {"en"}, function(locale, value) return "Chastise the Wicked" end),
	--[+ Russian +]-- Кара для нечестивых
	-- create_template("talent_tree_zea_abil0_000_ru", {"loc_talent_zealot_2_combat"}, {"ru"}, function(locale, value) return "Кара для нечестивых" end),

	--[+ Ability 1 - Fury of the Faithful +]--
	-- create_template("talent_tree_zea_abil1_000_en", {"loc_talent_maniac_attack_speed_after_dash"}, {"en"}, function(locale, value) return "Fury of the Faithful" end),
	--[+ Russian +]-- Ярость верующего -- руоф Ударный страх
	create_template("talent_tree_zea_abil1_000_ru", {"loc_talent_maniac_attack_speed_after_dash"}, {"ru"}, function(locale, value) return "Ярость верующего" end),

	--[+ Ability 1-1 - Redoubled Zeal +]--
	-- create_template("talent_tree_zea_abil1_001_en", {"loc_talent_zealot_dash_has_more_charges"}, {"en"}, function(locale, value) return "Redoubled Zeal" end),
	--[+ Russian +]-- Удвоенное рвение
	-- create_template("talent_tree_zea_abil1_001_ru", {"loc_talent_zealot_dash_has_more_charges"}, {"ru"}, function(locale, value) return "Удвоенное рвение" end),

	--[+ Ability 1-2 - Invocation of Death +]--
	-- create_template("talent_tree_zea_abil1_002_en", {"loc_talent_maniac_cooldown_on_melee_crits"}, {"en"}, function(locale, value) return "Invocation of Death" end),
	--[+ Russian +]-- Призыв смерти
	-- create_template("talent_tree_zea_abil1_002_ru", {"loc_talent_maniac_cooldown_on_melee_crits"}, {"ru"}, function(locale, value) return "Призыв смерти" end),

	--[+ Ability 2 - Chorus of Spiritual Fortitude +]--
	-- create_template("talent_tree_zea_abil2_000_en", {"loc_talent_zealot_bolstering_prayer"}, {"en"}, function(locale, value) return "Chorus of Spiritual Fortitude" end),
	--[+ Russian +]-- Хор духовной стойкости
	-- create_template("talent_tree_zea_abil2_000_ru", {"loc_talent_zealot_bolstering_prayer"}, {"ru"}, function(locale, value) return "Хор духовной стойкости" end),

	--[+ Ability 2-1 - Holy Cause +]--
	-- create_template("talent_tree_zea_abil2_001_en", {"loc_talent_zealot_zealot_channel_grants_defensive_buff"}, {"en"}, function(locale, value) return "Holy Cause" end),
	--[+ Russian +]-- Святое дело
	-- create_template("talent_tree_zea_abil2_001_ru", {"loc_talent_zealot_zealot_channel_grants_defensive_buff"}, {"ru"}, function(locale, value) return "Святое дело" end),

	--[+ Ability 2-2 - Banishing Light +]--
	-- create_template("talent_tree_zea_abil2_002_en", {"loc_talent_zealot_channel_staggers"}, {"en"}, function(locale, value) return "Banishing Light" end),
	--[+ Russian +]-- Изгоняющий свет
	-- create_template("talent_tree_zea_abil2_002_ru", {"loc_talent_zealot_channel_staggers"}, {"ru"}, function(locale, value) return "Изгоняющий свет" end),

	--[+ Ability 2-3 - Ecclesiarch's Call +]--
	-- create_template("talent_tree_zea_abil2_003_en", {"loc_talent_zealot_zealot_channel_grants_offensive_buff"}, {"en"}, function(locale, value) return "Ecclesiarch's Call" end),
	--[+ Russian +]-- Призыв экклезиарха -- руоф Вызов экклезиарха
	create_template("talent_tree_zea_abil2_003_ru", {"loc_talent_zealot_zealot_channel_grants_offensive_buff"}, {"ru"}, function(locale, value) return "Призыв экклезиарха" end),

	--[+ Ability 2-4 - Martyr's Purpose +]--
	-- create_template("talent_tree_zea_abil2_004_en", -- {"loc_talent_zealot_damage_taken_restores_cd"}, {"en"}, function(locale, value) return "Martyr's Purpose" end),
	--[+ Russian +]-- Предназначение мученика -- руоф Цель мученика
	create_template("talent_tree_zea_abil2_004_en", {"loc_talent_zealot_damage_taken_restores_cd"}, {"ru"}, function(locale, value) return "Предназначение мученика" end),

	--[+ Ability 3 - Shroudfield +]--
	-- create_template("talent_tree_zea_abil3_000_en", {"loc_ability_zealot_stealth"}, {"en"}, function(locale, value) return "Shroudfield" end),
	--[+ Russian +]-- Покров
	-- create_template("talent_tree_zea_abil3_000_ru", {"loc_ability_zealot_stealth"}, {"ru"}, function(locale, value) return "Покров" end),

	--[+ Ability 3-1 - Master-Crafted Shroudfield +]--
	-- create_template("talent_tree_zea_abil3_001_en", {"loc_talent_zealot_increased_stealth_duration"}, {"en"}, function(locale, value) return "Master-Crafted Shroudfield" end),
	--[+ Russian +]-- Мастерский покров -- Искусно изготовленный покров
	create_template("talent_tree_zea_abil3_001_ru", {"loc_talent_zealot_increased_stealth_duration"}, {"ru"}, function(locale, value) return "Мастерский покров" end),

	--[+ Ability 3-2 - Perfectionist +]--
	-- create_template("talent_tree_zea_abil3_002_en", {"loc_talent_zealot_stealth_increased_damage"}, {"en"}, function(locale, value) return "Perfectionist" end),
	--[+ Russian +]-- Перфекционист
	-- create_template("talent_tree_zea_abil3_002_ru", {"loc_talent_zealot_stealth_increased_damage"}, {"ru"}, function(locale, value) return "Перфекционист" end),

	--[+ Ability 3-3 - Invigorating Revelation +]--
	-- create_template("talent_tree_zea_abil3_003_en", {"loc_talent_zealot_leaving_stealth_restores_toughness"}, {"en"}, function(locale, value) return "Invigorating Revelation" end),
	--[+ Russian +]-- Оживляющее откровение -- руоф Подбадривающее откровение
	create_template("talent_tree_zea_abil3_003_ru", {"loc_talent_zealot_leaving_stealth_restores_toughness"}, {"ru"}, function(locale, value) return "Оживляющее откровение" end),

	--[+ Ability 3-4 - Pious Cut-Throat +]--
	-- create_template("talent_tree_zea_abil3_004_en", {"loc_talent_zealot_backstab_kills_restore_cd"}, {"en"}, function(locale, value) return "Pious Cut-Throat" end),
	--[+ Russian +]-- Благочестивый головорез -- руоф Добродетельный головорез
	create_template("talent_tree_zea_abil3_004_ru", {"loc_talent_zealot_backstab_kills_restore_cd"}, {"ru"}, function(locale, value) return "Благочестивый головорез" end),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ ТАЛАНТЫ+ +]--
	--[+ Keystone 1 - Blazing Piety +]--
	-- create_template("talent_tree_zea_keys1_000_en", {"loc_talent_zealot_fanatic_rage"}, {"en"}, function(locale, value) return "Blazing Piety" end),
	--[+ Russian +]-- Пылающая благочестивость -- руоф Пламенное благочестие
	create_template("talent_tree_zea_keys1_000_ru", {"loc_talent_zealot_fanatic_rage"}, {"ru"}, function(locale, value) return "Пылающая благочестивость" end),

	--[+ Keystone 1-1 - Stalwart +]--
	-- create_template("talent_tree_zea_keys1_001_en", {"loc_talent_zealot_fanatic_rage_toughness"}, {"en"}, function(locale, value) return "Stalwart" end),
	--[+ Russian +]-- Непоколебимый -- руоф Верный последователь
	create_template("talent_tree_zea_keys1_001_ru", {"loc_talent_zealot_fanatic_rage_toughness"}, {"ru"}, function(locale, value) return "Непоколебимый" end),

	--[+ Keystone 1-2 - Fury Rising +]--
	-- create_template("talent_tree_zea_keys1_002_en", {"loc_talent_zealot_fanatic_rage_crits"}, {"en"}, function(locale, value) return "Fury Rising" end),
	--[+ Russian +]-- Возрастание ярости -- руоф Подъем ярости
	create_template("talent_tree_zea_keys1_002_ru", {"loc_talent_zealot_fanatic_rage_crits"}, {"ru"}, function(locale, value) return "Возрастание ярости" end),

	--[+ Keystone 1-3 - Infectious Zeal +]--
	-- create_template("talent_tree_zea_keys1_003_en", {"loc_talent_zealot_shared_fanatic_rage"}, {"en"}, function(locale, value) return "Infectious Zeal" end),
	--[+ Russian +]-- Заразительное рвение
	-- create_template("talent_tree_zea_keys1_003_ru", {"loc_talent_zealot_shared_fanatic_rage"}, {"ru"}, function(locale, value) return "Заразительное рвение" end),

	--[+ Keystone 1-4 - Righteous Warrior +]--
	-- create_template("talent_tree_zea_keys1_004_en", {"loc_talent_zealot_fanatic_rage_improved"}, {"en"}, function(locale, value) return "Righteous Warrior" end),
	--[+ Russian +]-- Праведный воин
	-- create_template("talent_tree_zea_keys1_004_ru", {"loc_talent_zealot_fanatic_rage_improved"}, {"ru"}, function(locale, value) return "Праведный воин" end),

	--[+ Keystone 2 - Martyrdom +]--
	-- create_template("talent_tree_zea_keys2_000_en", -- Martyrdom {"loc_talent_zealot_martyrdom"}, {"en"}, function(locale, value) return "Martyrdom" end),
	--[+ Russian +]-- Мученичество
	-- create_template("talent_tree_zea_keys2_000_en", {"loc_talent_zealot_martyrdom"}, {"ru"}, function(locale, value) return "Мученичество" end),

	--[+ Keystone 2-1 - I Shall Not Fall +]--
	-- create_template("talent_tree_zea_keys2_001_en", {"loc_talent_zealot_martyrdom_grants_toughness"}, {"en"}, function(locale, value) return "I Shall Not Fall" end),
	--[+ Russian +]-- Я не паду -- руоф Я не отступлю
	create_template("talent_tree_zea_keys2_001_ru", {"loc_talent_zealot_martyrdom_grants_toughness"}, {"ru"}, function(locale, value) return "Я не паду" end),

	--[+ Keystone 2-2 - Maniac +]--
	-- create_template("talent_tree_zea_keys2_002_en", {"loc_talent_zealot_attack_speed_per_martyrdom"}, {"en"}, function(locale, value) return "Maniac" end),
	--[+ Russian +]-- Маньяк
	-- create_template("talent_tree_zea_keys2_002_ru", {"loc_talent_zealot_attack_speed_per_martyrdom"}, {"ru"}, function(locale, value) return "Маньяк" end),

	--[+ Keystone 3 - Inexorable Judgement +]--
	-- create_template("talent_tree_zea_keys3_000_en", {"loc_talent_zealot_quickness"}, {"en"}, function(locale, value) return "Inexorable Judgement" end),
	--[+ Russian +]-- Неумолимый приговор -- руоф Безжалостный приговор
	create_template("talent_tree_zea_keys3_000_ru", {"loc_talent_zealot_quickness"}, {"ru"}, function(locale, value) return "Неумолимый приговор" end),

	--[+ Keystone 3-1 - Retributor's Stance +]--
	-- create_template("talent_tree_zea_keys3_001_en", {"loc_talent_zealot_quickness_toughness_per_stack"}, {"en"}, function(locale, value) return "Retributor's Stance" end),
	--[+ Russian +]-- Стойка карателя
	-- create_template("talent_tree_zea_keys3_001_ru", {"loc_talent_zealot_quickness_toughness_per_stack"}, {"ru"}, function(locale, value) return "Стойка карателя" end),

	--[+ Keystone 3-2 - Inebriate's Poise +]--
	-- create_template("talent_tree_zea_keys3_002_en", {"loc_talent_zealot_quickness_dodge_stacks"}, {"en"}, function(locale, value) return "Inebriate's Poise" end),
	--[+ Russian +]-- Грация пьяницы -- руоф Самообладание пьяницы
	create_template("talent_tree_zea_keys3_002_ru", {"loc_talent_zealot_quickness_dodge_stacks"}, {"ru"}, function(locale, value) return "Грация пьяницы" end),

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Disdain +]--
	-- create_template("talent_tree_zea_pas_001_en", {"loc_talent_zealot_3_tier_2_ability_1"}, {"en"}, function(locale, value) return "Disdain" end),
	--[+ Russian +]-- Презрение
	-- create_template("talent_tree_zea_pas_001_ru", {"loc_talent_zealot_3_tier_2_ability_1"}, {"ru"}, function(locale, value) return "Презрение" end),

	--[+ Passive 2 - Backstabber +]--
	-- create_template("talent_tree_zea_pas_002_en", {"loc_talent_zealot_increased_backstab_damage"}, {"en"}, function(locale, value) return "Backstabber" end),
	--[+ Russian +]-- Бьющий в спину
	-- create_template("talent_tree_zea_pas_002_ru", {"loc_talent_zealot_increased_backstab_damage"}, {"ru"}, function(locale, value) return "Бьющий в спину" end),

	--[+ Passive 3 - Anoint in Blood +]--
	-- create_template("talent_tree_zea_pas_003_en", {"loc_talent_zealot_ranged_damage_increased_to_close"}, {"en"}, function(locale, value) return "Anoint in Blood" end),
	--[+ Russian +]-- Помазанный кровью
	-- create_template("talent_tree_zea_pas_003_ru", {"loc_talent_zealot_ranged_damage_increased_to_close"}, {"ru"}, function(locale, value) return "Помазанный кровью" end),

	--[+ Passive 4 - Scourge +]--
	-- create_template("talent_tree_zea_pas_004_en", {"loc_talent_zealot_bleed_melee_crit_chance"}, {"en"}, function(locale, value) return "Scourge" end),
	--[+ Russian +]-- Бичевание -- руоф Бич
	create_template("talent_tree_zea_pas_004_ru", {"loc_talent_zealot_bleed_melee_crit_chance"}, {"ru"}, function(locale, value) return "Бичевание" end),

	--[+ Passive 5 - Enemies Within, Enemies Without +]--
	-- create_template("talent_tree_zea_pas_005_en", {"loc_talent_zealot_toughness_regen_in_melee"}, {"en"}, function(locale, value) return "Enemies Within, Enemies Without" end),
	--[+ Russian +]-- Враги внутри, враги снаружи -- руоф Не дай ему уйти
	create_template("talent_tree_zea_pas_005_ru", {"loc_talent_zealot_toughness_regen_in_melee"}, {"ru"}, function(locale, value) return "Враги внутри, враги снаружи" end),

	--[+ Passive 6 - Fortitude in Fellowship +]--
	-- create_template("talent_tree_zea_pas_006_en", {"loc_talent_zealot_increased_coherency_regen"}, {"en"}, function(locale, value) return "Fortitude in Fellowship" end),
	--[+ Russian +]-- Стойкость в товариществе -- руоф Стойкость в общении
	create_template("talent_tree_zea_pas_006_ru", {"loc_talent_zealot_increased_coherency_regen"}, {"ru"}, function(locale, value) return "Стойкость в товариществе" end),

	--[+ Passive 7 - Purge the Unclean +]--
	-- create_template("talent_tree_zea_pas_007_en", {"loc_talent_zealot_3_passive_2"}, {"en"}, function(locale, value) return "Purge the Unclean" end),
	--[+ Russian +]-- Очищение нечестивых -- руоф Очищение нечистых
	create_template("talent_tree_zea_pas_007_ru", {"loc_talent_zealot_3_passive_2"}, {"ru"}, function(locale, value) return "Очищение нечестивых" end),

	--[+ Passive 8 - Blood Redemption +]--
	-- create_template("talent_tree_zea_pas_008_en", {"loc_talent_zealot_toughness_on_melee_kill"}, {"en"}, function(locale, value) return "Blood Redemption" end),
	--[+ Russian +]-- Искупление кровью -- руоф Кровавое искупление
	create_template("talent_tree_zea_pas_008_ru", {"loc_talent_zealot_toughness_on_melee_kill"}, {"ru"}, function(locale, value) return "Искупление кровью" end),

	--[+ Passive 9 - Bleed for the Emperor +]--
	-- create_template("talent_tree_zea_pas_009_en", {"loc_talent_zealot_3_tier_3_ability_2"}, {"en"}, function(locale, value) return "Bleed for the Emperor" end),
	--[+ Russian +]-- Кровь за Императора -- руоф Кровь во имя Императора
	create_template("talent_tree_zea_pas_009_ru", {"loc_talent_zealot_3_tier_3_ability_2"}, {"ru"}, function(locale, value) return "Кровь за Императора" end),

	--[+ Passive 10 - Vicious Offering +]--
	-- create_template("talent_tree_zea_pas_010_en", {"loc_talent_zealot_toughness_on_heavy_kills"}, {"en"}, function(locale, value) return "Vicious Offering" end),
	--[+ Russian +]-- Жертвоприношение -- руоф Порочное подношение
	create_template("talent_tree_zea_pas_010_ru", {"loc_talent_zealot_toughness_on_heavy_kills"}, {"ru"}, function(locale, value) return "Жертвоприношение" end),

	--[+ Passive 11 - The Voice of Terra +]--
	-- create_template("talent_tree_zea_pas_011_en", {"loc_talent_zealot_toughness_on_ranged_kill"}, {"en"}, function(locale, value) return "The Voice of Terra" end),
	--[+ Russian +]-- Голос Терры
	-- create_template("talent_tree_zea_pas_011_ru", {"loc_talent_zealot_toughness_on_ranged_kill"}, {"ru"}, function(locale, value) return "Голос Терры" end),

	--[+ Passive 12 - Restoring Faith +]--
	-- create_template("talent_tree_zea_pas_012_en", {"loc_talent_zealot_heal_damage_taken"}, {"en"}, function(locale, value) return "Restoring Faith" end),
	--[+ Russian +]-- Восстановление веры
	-- create_template("talent_tree_zea_pas_012_ru", {"loc_talent_zealot_heal_damage_taken"}, {"ru"}, function(locale, value) return "Восстановление веры" end),

	--[+ Passive 13 - Second Wind +]--
	-- create_template("talent_tree_zea_pas_013_en",   {"loc_talent_zealot_toughness_on_dodge"}, {"en"}, function(locale, value) return "Second Wind" end),
	--[+ Russian +]-- Второе дыхание -- руоф Второй ветер
	create_template("talent_tree_zea_pas_013_en",   {"loc_talent_zealot_toughness_on_dodge"}, {"ru"}, function(locale, value) return "Второе дыхание" end),

	--[+ Passive 14 - Enduring Faith +]--
	-- create_template("talent_tree_zea_pas_014_en",   {"loc_talent_zealot_toughness_melee_effectiveness"}, {"en"}, function(locale, value) return "Enduring Faith" end),
	--[+ Russian +]-- Непоколебимая вера
	-- create_template("talent_tree_zea_pas_014_en",   {"loc_talent_zealot_toughness_melee_effectiveness"}, {"ru"}, function(locale, value) return "Непоколебимая вера" end),

	--[+ Passive 15 - The Emperor's Bullet +]--
	-- create_template("talent_tree_zea_pas_015_en", {"loc_talent_zealot_improved_melee_after_no_ammo"}, {"en"}, function(locale, value) return "The Emperor's Bullet" end),
	--[+ Russian +]-- Пуля Императора
	-- create_template("talent_tree_zea_pas_015_ru", {"loc_talent_zealot_improved_melee_after_no_ammo"}, {"ru"}, function(locale, value) return "Пуля Императора" end),

	--[+ Passive 16 - Dance of Death +]--
	-- create_template("talent_tree_zea_pas_016_en",   {"loc_talent_zealot_improved_spread_post_dodge"}, {"en"}, function(locale, value) return "Dance of Death" end),
	--[+ Russian +]-- Танец смерти
	-- create_template("talent_tree_zea_pas_016_en",   {"loc_talent_zealot_improved_spread_post_dodge"}, {"ru"}, function(locale, value) return "Танец смерти" end),

	--[+ Passive 17 - Duellist +]--
	-- create_template("talent_tree_zea_pas_017_en",   {"loc_talent_zealot_increased_finesse_post_dodge"}, {"en"}, function(locale, value) return "Duellist" end),
	--[+ Russian +]-- Дуэлянт
	-- create_template("talent_tree_zea_pas_017_en",   {"loc_talent_zealot_increased_finesse_post_dodge"}, {"ru"}, function(locale, value) return "Дуэлянт" end),

	--[+ Passive 18 - Until Death +]--
	-- create_template("talent_tree_zea_pas_018_en",  {"loc_talent_zealot_resist_death"}, {"en"}, function(locale, value) return "Until Death" end),
	--[+ Russian +]-- До самой смерти
	-- create_template("talent_tree_zea_pas_018_en",  {"loc_talent_zealot_resist_death"}, {"ru"}, function(locale, value) return "До самой смерти" end),

	--[+ Passive 19 - Unremitting +]--
	-- create_template("talent_tree_zea_pas_019_en",   {"loc_talent_zealot_reduced_sprint_cost"}, {"en"}, function(locale, value) return "Unremitting" end),
	--[+ Russian +]-- Неустанный
	-- create_template("talent_tree_zea_pas_019_en",   {"loc_talent_zealot_reduced_sprint_cost"}, {"ru"}, function(locale, value) return "Неустанный" end),

	--[+ Passive 20 - Shield of Contempt +]--
	-- create_template("talent_tree_zea_pas_020_en", {"loc_talent_zealot_3_tier_4_ability_3"}, {"en"}, function(locale, value) return "Shield of Contempt" end),
	--[+ Russian +]-- Щит презрения
	-- create_template("talent_tree_zea_pas_020_ru", {"loc_talent_zealot_3_tier_4_ability_3"}, {"ru"}, function(locale, value) return "Щит презрения" end),

	--[+ Passive 21 - Thy Wrath be Swift +]--
	-- create_template("talent_tree_zea_pas_021_en",  {"loc_talent_zealot_movement_speed_on_damaged"}, {"en"}, function(locale, value) return "Thy Wrath be Swift" end),
	--[+ Russian +]-- Твой гнев будет быстр -- руоф Скорое возмездие
	create_template("talent_tree_zea_pas_021_en",  {"loc_talent_zealot_movement_speed_on_damaged"}, {"ru"}, function(locale, value) return "Твой гнев будет быстр" end),

	--[+ Passive 22 - Good Balance +]--
	-- create_template("talent_tree_zea_pas_022_en", {"loc_talent_reduced_damage_after_dodge"}, {"en"}, function(locale, value) return "Good Balance" end),
	--[+ Russian +]-- Хороший баланс -- руоф Разумный баланс
	create_template("talent_tree_zea_pas_022_en",  {"loc_talent_reduced_damage_after_dodge"}, {"ru"}, function(locale, value) return "Хороший баланс" end),

	--[+ Passive 23 - Desperation +]--
	-- create_template("talent_tree_zea_pas_023_en", {"loc_talent_zealot_increased_damage_on_low_stamina"}, {"en"}, function(locale, value) return "Desperation" end),
	--[+ Russian +]-- Отчаяние
	-- create_template("talent_tree_zea_pas_023_ru", {"loc_talent_zealot_increased_damage_on_low_stamina"}, {"ru"}, function(locale, value) return "Отчаяние" end),

	--[+ Passive 24 - Holy Revenant +]--
	-- create_template("talent_tree_zea_pas_024_en", {"loc_talent_zealot_heal_during_resist_death"}, {"en"}, function(locale, value) return "Holy Revenant" end),
	--[+ Russian +]-- Святой призрак -- руоф Священный призрак
	create_template("talent_tree_zea_pas_024_ru", {"loc_talent_zealot_heal_during_resist_death"}, {"ru"}, function(locale, value) return "Святой призрак" end),

	--[+ Passive 25 - Sainted Gunslinger +]--
	-- create_template("talent_tree_zea_pas_025_en", {"loc_talent_zealot_increased_reload_speed_on_melee_kills"}, {"en"}, function(locale, value) return "Sainted Gunslinger" end),
	--[+ Russian +]-- Святой стрелок -- руоф Святой быстрый стрелок
	create_template("talent_tree_zea_pas_025_ru", {"loc_talent_zealot_increased_reload_speed_on_melee_kills"}, {"ru"}, function(locale, value) return "Святой стрелок" end),

	--[+ Passive 26 - Hammer of Faith +]--
	-- create_template("talent_tree_zea_pas_026_en", {"loc_talent_zealot_3_tier_1_ability_1"}, {"en"}, function(locale, value) return "Hammer of Faith" end),
	--[+ Russian +]-- Молот веры
	-- create_template("talent_tree_zea_pas_026_ru", {"loc_talent_zealot_3_tier_1_ability_1"}, {"ru"}, function(locale, value) return "Молот веры" end),

	--[+ Passive 27 - Grievous Wounds +]--
	-- create_template("talent_tree_zea_pas_027_en", {"loc_talent_zealot_increased_stagger_on_weakspot_melee"}, {"en"}, function(locale, value) return "Grievous Wounds" end),
	--[+ Russian +]-- Тяжёлые раны -- руоф Опасные раны
	create_template("talent_tree_zea_pas_027_ru", {"loc_talent_zealot_increased_stagger_on_weakspot_melee"}, {"ru"}, function(locale, value) return "Тяжёлые раны" end),

	--[+ Passive 28 - Ambuscade +]--
	-- create_template("talent_tree_zea_pas_028_en", {"loc_talent_zealot_increased_flanking_damage"}, {"en"}, function(locale, value) return "Ambuscade" end),
	--[+ Russian +]-- Засада
	-- create_template("talent_tree_zea_pas_028_ru", {"loc_talent_zealot_increased_flanking_damage"}, {"ru"}, function(locale, value) return "Засада" end),

	--[+ Passive 29 - Punishment +]--
	-- create_template("talent_tree_zea_pas_029_en", {"loc_talent_zealot_multi_hits_increase_impact"}, {"en"}, function(locale, value) return "Punishment" end),
	--[+ Russian +]-- Наказание
	-- create_template("talent_tree_zea_pas_029_ru", {"loc_talent_zealot_multi_hits_increase_impact"}, {"ru"}, function(locale, value) return "Наказание" end),

	--[+ Passive 30 - Faithful Frenzy +]--
	-- create_template("talent_tree_zea_pas_030_en", {"loc_talent_zealot_attack_speed"}, {"en"}, function(locale, value) return "Faithful Frenzy" end),
	--[+ Russian +]-- Правоверное неистовство -- руоф Верное безумие
	create_template("talent_tree_zea_pas_030_ru", {"loc_talent_zealot_attack_speed"}, {"ru"}, function(locale, value) return "Правоверное неистовство" end),

	--[+ Passive 31 - Sustained Assault +]--
	-- create_template("talent_tree_zea_pas_031_en", {"loc_talent_zealot_increased_damage_stacks_on_hit"}, {"en"}, function(locale, value) return "Sustained Assault" end),
	--[+ Russian +]-- Непрерывное нападение -- руоф Непрерывный штурм
	create_template("talent_tree_zea_pas_031_ru", {"loc_talent_zealot_increased_damage_stacks_on_hit"}, {"ru"}, function(locale, value) return "Непрерывное нападение" end),

	--[+ Passive 32 - The Master's Retribution +]--
	-- create_template("talent_tree_zea_pas_032_en", {"loc_talent_zealot_3_tier_3_ability_1"}, {"en"}, function(locale, value) return "The Master's Retribution" end),
	--[+ Russian +]-- Возмездие Владыки
	-- create_template("talent_tree_zea_pas_032_ru", {"loc_talent_zealot_3_tier_3_ability_1"}, {"ru"}, function(locale, value) return "Возмездие Владыки" end),

   --[+ Passive 33 - Faith's Fortitude +]--
	-- create_template("talent_tree_zea_pas_033_en", {"loc_talent_zealot_3_tier_1_ability_3"}, {"en"}, function(locale, value) return "Faith's Fortitude" end),
	--[+ Russian +]-- Стойкость веры
	-- create_template("talent_tree_zea_pas_033_ru", {"loc_talent_zealot_3_tier_1_ability_3"}, {"ru"}, function(locale, value) return "Стойкость веры" end),

	--[+ Passive 34 - Swift Certainty +]--
	-- create_template("talent_tree_zea_pas_034_en", {"loc_talent_zealot_improved_sprint"}, {"en"}, function(locale, value) return "Swift Certainty" end),
	--[+ Russian +]-- Быстрая уверенность -- руоф Скорая определенность
	create_template("talent_tree_zea_pas_034_ru", {"loc_talent_zealot_improved_sprint"}, {"ru"}, function(locale, value) return "Быстрая уверенность" end),


--[+ ++VETERAN - ВЕТЕРАН++ +]--
--[+ +BLITZ - БЛИЦ + +]--
	--[+ Blitz 0 - Frag Grenade +]--
	-- create_template("talent_tree_vet_blitz_000_en", {"loc_ability_frag_grenade"}, {"en"}, function(locale, value) return "Frag Grenade" end),
	--[+ Russian +]-- Фраг-граната
	-- create_template("talent_tree_vet_blitz_000_ru", {"loc_ability_frag_grenade"}, {"ru"}, function(locale, value) return "Фраг-граната" end),

	--[+ Blitz 1 - Shredder Frag Grenade +]--
	-- create_template("talent_tree_vet_blitz1_000_en", {"loc_talent_veteran_grenade_apply_bleed"}, {"en"}, function(locale, value) return "Shredder Frag Grenade" end),
	--[+ Russian +]-- Крошащая фраг-граната -- руоф Фраг-граната крошителя
	create_template("talent_tree_vet_blitz1_000_ru", {"loc_talent_veteran_grenade_apply_bleed"}, {"ru"}, function(locale, value) return "Крошащая фраг-граната" end),

	--[+ Blitz 2 - Krak Grenade +]--
	-- create_template("talent_tree_vet_blitz2_000_en", {"loc_talent_ability_krak_grenade"}, {"en"}, function(locale, value) return "Krak Grenade" end),
	--[+ Russian +]-- Крак-граната
	-- create_template("talent_tree_vet_blitz2_000_ru", {"loc_talent_ability_krak_grenade"}, {"ru"}, function(locale, value) return "Крак-граната" end),

	--[+ Blitz 3 - Smoke Grenade +]--
	-- create_template("talent_tree_vet_blitz3_000_en", {"loc_ability_smoke_grenade"}, {"en"}, function(locale, value) return "Smoke Grenade" end),
	--[+ Russian +]-- Дымовая граната
	-- create_template("talent_tree_vet_blitz3_000_ru", {"loc_ability_smoke_grenade"}, {"ru"}, function(locale, value) return "Дымовая граната" end),

--[+ +AURA+ +]--
	--[+ Aura 0 - Scavenger +]--
	-- create_template("talent_tree_vet_aura_000_en", {"loc_talent_veteran_elite_kills_grant_ammo_coop"}, {"en"}, function(locale, value) return "Scavenger" end),
	--[+ Russian +]-- Сборщик -- руоф Собиратель
	create_template("talent_tree_vet_aura_000_ru", {"loc_talent_veteran_elite_kills_grant_ammo_coop"}, {"ru"}, function(locale, value) return "Сборщик" end),

	--[+ Aura 1 - Survivalist +]--
	-- create_template("talent_tree_vet_aura_001_en", {"loc_talent_veteran_elite_kills_grant_ammo_coop_improved"}, {"en"}, function(locale, value) return "Survivalist" end),
	--[+ Russian +]-- Выживальщик -- руоф Специалист по выживанию
	create_template("talent_tree_vet_aura_001_ru", {"loc_talent_veteran_elite_kills_grant_ammo_coop_improved"}, {"ru"}, function(locale, value) return "Выживальщик" end),

	--[+ Aura 2 - Fire Team +]--
	-- create_template("talent_tree_vet_aura_002_en", {"loc_talent_veteran_damage_coherency"}, {"en"}, function(locale, value) return "Fire Team" end),
	--[+ Russian +]-- Огневая группа
	-- create_template("talent_tree_vet_aura_002_ru", {"loc_talent_veteran_damage_coherency"}, {"ru"}, function(locale, value) return "Огневая группа" end),

	--[+ Aura 3 - Close and Kill +]--
	-- create_template("talent_tree_vet_aura_003_en", {"loc_talent_veteran_movement_speed_coherency"}, {"en"}, function(locale, value) return "Close and Kill" end),
	--[+ Russian +]-- Приблизиться и убить
	-- create_template("talent_tree_vet_aura_003_ru", {"loc_talent_veteran_movement_speed_coherency"}, {"ru"}, function(locale, value) return "Приблизиться и убить" end),

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Volley Fire +]--
	-- create_template("talent_tree_vet_abil_000_en", {"loc_talent_veteran_2_combat_ability"}, {"en"}, function(locale, value) return "Volley Fire" end),
	--[+ Russian +]-- Залповый огонь
	-- create_template("talent_tree_vet_abil_000_ru", {"loc_talent_veteran_2_combat_ability"}, {"ru"}, function(locale, value) return "Залповый огонь" end),

	--[+ Ability 1 - Executioner's Stance +]--
	-- create_template("talent_tree_vet_abil1_000_en", {"loc_talent_veteran_combat_ability_elite_and_special_outlines"}, {"en"}, function(locale, value) return "Executioner's Stance" end),
	--[+ Russian +]-- Стойка палача
	-- create_template("talent_tree_vet_abil1_000_ru", {"loc_talent_veteran_combat_ability_elite_and_special_outlines"}, {"ru"}, function(locale, value) return "Стойка палача" end),

	--[+ Ability 1-1 - Enhanced Target Priority +]--
	-- create_template("talent_tree_vet_abil1_001_en", {"loc_talent_veteran_combat_ability_coherency_outlines"}, {"en"}, function(locale, value) return "Enhanced Target Priority" end),
	--[+ Russian +]-- Повышенный приоритет целей -- руоф Повышенный приоритет цели
	create_template("talent_tree_vet_abil1_001_ru", {"loc_talent_veteran_combat_ability_coherency_outlines"}, {"ru"}, function(locale, value) return "Повышенный приоритет целей" end),

	--[+ Ability 1-2 - Counter-Fire +]--
	-- create_template("talent_tree_vet_abil1_002_en", {"loc_talent_veteran_combat_ability_ranged_enemies_outlines"}, {"en"}, function(locale, value) return "Counter-Fire" end),
	--[+ Russian +]-- Ответный огонь
	-- create_template("talent_tree_vet_abil1_002_ru", {"loc_talent_veteran_combat_ability_ranged_enemies_outlines"}, {"ru"}, function(locale, value) return "Ответный огонь" end),

	--[+ Ability 1-3 - The Bigger they Are... +]--
	-- create_template("talent_tree_vet_abil1_003_en", {"loc_talent_ranger_volley_fire_big_game_hunter"}, {"en"}, function(locale, value) return "The Bigger they Are..." end),
	--[+ Russian +]-- Чем больше шкаф...
	-- create_template("talent_tree_vet_abil1_003_ru", {"loc_talent_ranger_volley_fire_big_game_hunter"}, {"ru"}, function(locale, value) return "Чем больше шкаф..." end),

	--[+ Ability 1-4 - Marksman +]--
	-- create_template("talent_tree_vet_abil1_004_en", {"loc_talent_veteran_ability_marksman"}, {"en"}, function(locale, value) return "Marksman" end),
	--[+ Russian +]-- Меткий стрелок
	-- create_template("talent_tree_vet_abil1_004_ru", {"loc_talent_veteran_ability_marksman"}, {"ru"}, function(locale, value) return "Меткий стрелок" end),

	--[+ Ability 2 - Voice of Command +]--
	-- create_template("talent_tree_vet_abil2_000_en", {"loc_talent_veteran_combat_ability_stagger_nearby_enemies"}, {"en"}, function(locale, value) return "Voice of Command" end),
	--[+ Russian +]-- Командный голос
	-- create_template("talent_tree_vet_abil2_000_ru", {"loc_talent_veteran_combat_ability_stagger_nearby_enemies"}, {"ru"}, function(locale, value) return "Командный голос" end),

	--[+ Ability 2-1 - Duty and Honour +]--
	-- create_template("talent_tree_vet_abil2_001_en", {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency"}, {"en"}, function(locale, value) return "Duty and Honour" end),
	--[+ Russian +]-- Долг и честь
	-- create_template("talent_tree_vet_abil2_001_ru", {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency"}, {"ru"}, function(locale, value) return "Долг и честь" end),

	--[+ Ability 2-2 - Only In Death Does Duty End +]--
	-- create_template("talent_tree_vet_abil2_002_en", {"loc_talent_veteran_combat_ability_revives"}, {"en"}, function(locale, value) return "Only In Death Does Duty End" end),
	--[+ Russian +]-- Только в смерти заканчивается долг -- руоф Лишь после смерти заканчивается служение долгу
	create_template("talent_tree_vet_abil2_002_ru", {"loc_talent_veteran_combat_ability_revives"}, {"ru"}, function(locale, value) return "Только в смерти заканчивается долг" end),

	--[+ Ability 2-3 - For the Emperor! +]--
	-- create_template("talent_tree_vet_abil2_003_en", {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency"}, {"en"}, function(locale, value) return "For the Emperor!" end), За Императора! +]--
	--[+ Russian +]--
	-- create_template("talent_tree_vet_abil2_003_ru", {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency"}, {"ru"}, function(locale, value) return "За Императора!" end),

	--[+ Ability 3 - Infiltrate +]--
	-- create_template("talent_tree_vet_abil3_000_en", {"loc_talent_veteran_invisibility_on_combat_ability"}, {"en"}, function(locale, value) return "Infiltrate" end),
	--[+ Russian +]-- Проникновение
	-- create_template("talent_tree_vet_abil3_000_ru", {"loc_talent_veteran_invisibility_on_combat_ability"}, {"ru"}, function(locale, value) return "Проникновение" end),

	--[+ Ability 3-1 - Low Profile +]--
	-- create_template("talent_tree_vet_abil3_001_en", {"loc_talent_veteran_reduced_threat_after_combat_ability"}, {"en"}, function(locale, value) return "Low Profile" end),
	--[+ Russian +]-- Незаметность -- руоф Сдержанность
	create_template("talent_tree_vet_abil3_001_ru", {"loc_talent_veteran_reduced_threat_after_combat_ability"}, {"ru"}, function(locale, value) return "Незаметность" end),

	--[+ Ability 3-2 - Overwatch +]--
	-- create_template("talent_tree_vet_abil3_002_en",{"loc_talent_veteran_combat_ability_extra_charge"}, {"en"}, function(locale, value) return "Overwatch" end),
	--[+ Russian +]-- Наблюдение -- руоф Прикрытие
	create_template("talent_tree_vet_abil3_002_en",{"loc_talent_veteran_combat_ability_extra_charge"}, {"ru"}, function(locale, value) return "Наблюдение" end),

	--[+ Ability 3-3 - Hunter's Resolve +]--
	-- create_template("talent_tree_vet_abil3_003_en", {"loc_talent_veteran_toughness_bonus_leaving_invisibility"}, {"en"}, function(locale, value) return "Hunter's Resolve" end),
	--[+ Russian +]-- Упорство охотника
	-- create_template("talent_tree_vet_abil3_003_ru", {"loc_talent_veteran_toughness_bonus_leaving_invisibility"}, {"ru"}, function(locale, value) return "Упорство охотника" end),

	--[+ Ability 3-4 - Surprise Attack +]--
	-- create_template("talent_tree_vet_abil3_004_en", {"loc_talent_veteran_damage_bonus_leaving_invisibility"}, {"en"}, function(locale, value) return "Surprise Attack" end),
	--[+ Russian +]-- Внезапная атака
	-- create_template("talent_tree_vet_abil3_004_ru", {"loc_talent_veteran_damage_bonus_leaving_invisibility"}, {"ru"}, function(locale, value) return "Внезапная атака" end),

	--[+ Ability 3-5 - Close Quarters Killzone +]--
	-- create_template("talent_tree_vet_abil3_005_en", {"loc_talent_veteran_ability_assault"}, {"en"}, function(locale, value) return "Close Quarters Killzone" end),
	--[+ Russian +]-- Зона ближнего боя -- руоф Зона поражения на ближней дистанции
	create_template("talent_tree_vet_abil3_005_ru", {"loc_talent_veteran_ability_assault"}, {"ru"}, function(locale, value) return "Зона ближнего боя" end),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ Keystone 1 - Marksman's Focus +]--
	-- create_template("talent_tree_vet_keys1_000_en", {"loc_talent_veteran_snipers_focus"}, {"en"}, function(locale, value) return "Marksman's Focus" end),
	--[+ Russian +]-- Концентрация снайпера
	-- create_template("talent_tree_vet_keys1_000_ru", {"loc_talent_veteran_snipers_focus"}, {"ru"}, function(locale, value) return "Концентрация снайпера" end),

	--[+ Keystone 1-1 - Chink in their Armour +]--
	-- create_template("talent_tree_vet_keys1_001_en", {"loc_talent_veteran_snipers_focus_rending_bonus"}, {"en"}, function(locale, value) return "Chink in their Armour" end),
	--[+ Russian +]-- Щель в их броне -- руоф Щель в броне
	create_template("talent_tree_vet_keys1_001_ru", {"loc_talent_veteran_snipers_focus_rending_bonus"}, {"ru"}, function(locale, value) return "Щель в их броне" end),

	--[+ Keystone 1-2 - Tunnel Vision +]--
	-- create_template("talent_tree_vet_keys1_002_en", {"loc_talent_veteran_snipers_focus_toughness_bonus"}, {"en"}, function(locale, value) return "Tunnel Vision" end),
	--[+ Russian +]-- Тоннельное зрение
	-- create_template("talent_tree_vet_keys1_002_ru", {"loc_talent_veteran_snipers_focus_toughness_bonus"}, {"ru"}, function(locale, value) return "Тоннельное зрение" end),

	--[+ Keystone 1-3 - Long Range Assassin +]--
	-- create_template("talent_tree_vet_keys1_003_en", {"loc_talent_veteran_snipers_focus_increased_stacks"}, {"en"}, function(locale, value) return "Long Range Assassin" end),
	--[+ Russian +]-- Дальнобойный ассасин
	-- create_template("talent_tree_vet_keys1_003_ru", {"loc_talent_veteran_snipers_focus_increased_stacks"}, {"ru"}, function(locale, value) return "Дальнобойный ассасин" end),

	--[+ Keystone 1-4 - Camouflage +]--
	-- create_template("talent_tree_vet_keys1_004_en", {"loc_talent_veteran_snipers_focus_stacks_on_still"}, {"en"}, function(locale, value) return "Camouflage" end),
	--[+ Russian +]-- Камуфляж
	-- create_template("talent_tree_vet_keys1_004_ru", {"loc_talent_veteran_snipers_focus_stacks_on_still"}, {"ru"}, function(locale, value) return "Камуфляж" end),

	--[+ Keystone 2 - Focus Target! +]--
	-- create_template("talent_tree_vet_keys2_000_en", {"loc_talent_veteran_improved_tag"}, {"en"}, function(locale, value) return "Focus Target!" end),
	--[+ Russian +]-- Важная цель!
	-- create_template("talent_tree_vet_keys2_000_ru", {"loc_talent_veteran_improved_tag"}, {"ru"}, function(locale, value) return "Важная цель!" end),

	--[+ Keystone 2-1 - Target Down! +]--
	-- create_template("talent_tree_vet_keys2_001_en", {"loc_talent_veteran_improved_tag_dead_bonus"}, {"en"}, function(locale, value) return "Target Down!" end),
	--[+ Russian +]-- Цель поражена!
	-- create_template("talent_tree_vet_keys2_001_ru", {"loc_talent_veteran_improved_tag_dead_bonus"}, {"ru"}, function(locale, value) return "Цель поражена!" end),

	--[+ Keystone 2-2 - Redirect Fire! +]--
	-- create_template("talent_tree_vet_keys2_002_en", {"loc_talent_veteran_improved_tag_dead_coherency_bonus"}, {"en"}, function(locale, value) return "Redirect Fire!" end),
	--[+ Russian +]-- Перевести огонь!
	-- create_template("talent_tree_vet_keys2_002_ru", {"loc_talent_veteran_improved_tag_dead_coherency_bonus"}, {"ru"}, function(locale, value) return "Перевести огонь!" end),

	--[+ Keystone 2-3 - Focused Fire +]--
	-- create_template("talent_tree_vet_keys2_003_en", {"loc_talent_veteran_improved_tag_more_damage"}, {"en"}, function(locale, value) return "Focused Fire" end),
	--[+ Russian +]-- Сосредоточенный огонь
	-- create_template("talent_tree_vet_keys2_003_ru", {"loc_talent_veteran_improved_tag_more_damage"}, {"ru"}, function(locale, value) return "Сосредоточенный огонь" end),

	--[+ Keystone 3 - Weapons Specialist +]--
	-- create_template("talent_tree_vet_keys3_000_en", {"loc_talent_veteran_weapon_switch"}, {"en"}, function(locale, value) return "Weapons Specialist" end),
	--[+ Russian +]-- Специалист по оружию -- руоф Специалист по вооружениям
	create_template("talent_tree_vet_keys3_000_ru", {"loc_talent_veteran_weapon_switch"}, {"ru"}, function(locale, value) return "Специалист по оружию" end),

	--[+ Keystone 3-1 - Always Prepared +]--
	-- create_template("talent_tree_vet_keys3_001_en", {"loc_talent_veteran_weapon_switch_replenish_ammo"}, {"en"}, function(locale, value) return "Always Prepared" end),
	--[+ Russian +]-- Всегда готов
	-- create_template("talent_tree_vet_keys3_001_ru", {"loc_talent_veteran_weapon_switch_replenish_ammo"}, {"ru"}, function(locale, value) return "Всегда готов" end),

	--[+ Keystone 3-2 - Invigorated +]--
	-- create_template("talent_tree_vet_keys3_002_en", {"loc_talent_veteran_weapon_switch_replenish_stamina"}, {"en"}, function(locale, value) return "Invigorated" end),
	--[+ Russian +]-- Ободрение
	-- create_template("talent_tree_vet_keys3_002_ru", {"loc_talent_veteran_weapon_switch_replenish_stamina"}, {"ru"}, function(locale, value) return "Ободрение" end),

	--[+ Keystone 3-3 - On Your Toes +]--
	-- create_template("talent_tree_vet_keys3_003_en", {"loc_talent_veteran_weapon_switch_replenish_toughness"}, {"en"}, function(locale, value) return "On Your Toes" end),
	--[+ Russian +]-- Наготове
	-- create_template("talent_tree_vet_keys3_003_ru", {"loc_talent_veteran_weapon_switch_replenish_toughness"}, {"ru"}, function(locale, value) return "Наготове" end),

	--[+ Keystone 3-4 - Fleeting Fire +]--
	-- create_template("talent_tree_vet_keys3_004_en", {"loc_talent_veteran_weapon_switch_reload_speed"}, {"en"}, function(locale, value) return "Fleeting Fire" end),
	--[+ Russian +]-- Беглый огонь
	-- create_template("talent_tree_vet_keys3_004_ru", {"loc_talent_veteran_weapon_switch_reload_speed"}, {"ru"}, function(locale, value) return "Беглый огонь" end),

	--[+ Keystone 3-5 - Conditioning +]--
	-- create_template("talent_tree_vet_keys3_005_en", {"loc_talent_veteran_weapon_switch_stamina_reduction"}, {"en"}, function(locale, value) return "Conditioning" end),
	--[+ Russian +]-- Подготовка
	-- create_template("talent_tree_vet_keys3_005_ru", {"loc_talent_veteran_weapon_switch_stamina_reduction"}, {"ru"}, function(locale, value) return "Подготовка" end),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Longshot +]--
	-- create_template("talent_tree_vet_pas_001_en", {"loc_talent_veteran_increased_damage_based_on_range"}, {"en"}, function(locale, value) return "Longshot" end),
	--[+ Russian +]-- Дальний выстрел -- ruof Далекая перспектива
	create_template("talent_tree_vet_pas_001_ru", {"loc_talent_veteran_increased_damage_based_on_range"}, {"ru"}, function(locale, value) return "Дальний выстрел" end),

	--[+ Passive 2 - Close Order Drill +]--
	-- create_template("talent_tree_vet_pas_002_en", {"loc_talent_veteran_toughness_damage_reduction_per_ally"}, {"en"}, function(locale, value) return "Close Order Drill" end),
	--[+ Russian +]-- Строевая подготовка
	-- create_template("talent_tree_vet_pas_002_ru", {"loc_talent_veteran_toughness_damage_reduction_per_ally"}, {"ru"}, function(locale, value) return "Строевая подготовка" end),

	--[+ Passive 3 - One Motion +]--
	-- create_template("talent_tree_vet_pas_003_en", {"loc_talent_veteran_reduce_swap_time"}, {"en"}, function(locale, value) return "One Motion" end),
	--[+ Russian +]-- В одно движение -- руоф Одно движение
	create_template("talent_tree_vet_pas_003_ru", {"loc_talent_veteran_reduce_swap_time"}, {"ru"}, function(locale, value) return "В одно движение" end),

	--[+ Passive 4 - Exhilarating Takedown +]--
	-- create_template("talent_tree_vet_pas_004_en", {"loc_talent_veteran_toughness_on_weakspot_kill"}, {"en"}, function(locale, value) return "Exhilarating Takedown" end),
	--[+ Russian +]-- Подбадривающее убийство -- руоф Бодрящее сокрушение
	create_template("talent_tree_vet_pas_004_ru", {"loc_talent_veteran_toughness_on_weakspot_kill"}, {"ru"}, function(locale, value) return "Подбадривающее убийство" end),

	--[+ Passive 5 - Volley Adept +]--
	-- create_template("talent_tree_vet_pas_005_en", {"loc_talent_veteran_reload_speed_on_elite_kill"}, {"en"}, function(locale, value) return "Volley Adept" end),
	--[+ Russian +]-- Умелый залп -- руоф Адепт залпа
	create_template("talent_tree_vet_pas_005_ru", {"loc_talent_veteran_reload_speed_on_elite_kill"}, {"ru"}, function(locale, value) return "Умелый залп" end),

	--[+ Passive 6 - Charismatic +]--
	-- create_template("talent_tree_vet_pas_006_en", {"loc_talent_veteran_increased_aura_radius"}, {"en"}, function(locale, value) return "Charismatic" end),
	--[+ Russian +]-- Харизматичный -- руоф Обаятельный
	create_template("talent_tree_vet_pas_006_ru", {"loc_talent_veteran_increased_aura_radius"}, {"ru"}, function(locale, value) return "Харизматичный" end),

	--[+ Passive 7 - Confirmed Kill +]--
	-- create_template("talent_tree_vet_pas_007_en", {"loc_talent_veteran_toughness_on_elite_kill"}, {"en"}, function(locale, value) return "Confirmed Kill" end),
	--[+ Russian +]-- Подтверждённое убийство -- руоф Подтвержденное убийство
	create_template("talent_tree_vet_pas_007_ru", {"loc_talent_veteran_toughness_on_elite_kill"}, {"ru"}, function(locale, value) return "Подтверждённое убийство" end),

	--[+ Passive 8 - Tactical Reload +]--
	-- create_template("talent_tree_vet_pas_008_en", {"loc_talent_ranger_reload_speed_empty_mag"}, {"en"}, function(locale, value) return "Tactical Reload" end),
	--[+ Russian +]-- Тактическая перезарядка
	-- create_template("talent_tree_vet_pas_008_ru", {"loc_talent_ranger_reload_speed_empty_mag"}, {"ru"}, function(locale, value) return "Тактическая перезарядка" end),

	--[+ Passive 9 - Out for Blood +]--
	-- create_template("talent_tree_vet_pas_009_en", {"loc_talent_veteran_all_kills_replenish_toughness"}, {"en"}, function(locale, value) return "Out for Blood" end),
	--[+ Russian +]-- На тропе войны -- руоф В поисках крови
	create_template("talent_tree_vet_pas_009_ru", {"loc_talent_veteran_all_kills_replenish_toughness"}, {"ru"}, function(locale, value) return "На тропе войны" end),

	--[+ Passive 10 - Get Back in the Fight! +]--
	-- create_template("talent_tree_vet_pas_010_en", {"loc_talent_veteran_movement_speed_on_toughness_broken"}, {"en"}, function(locale, value) return "Get Back in the Fight!" end),
	--[+ Russian +]-- Возвращайся в бой! -- руоф Вернуться в бой!
	create_template("talent_tree_vet_pas_010_ru", {"loc_talent_veteran_movement_speed_on_toughness_broken"}, {"ru"}, function(locale, value) return "Возвращайся в бой!" end),

	--[+ Passive 11 - Catch a Breath +]--
	-- create_template("talent_tree_vet_pas_011_en", {"loc_talent_veteran_replenish_toughness_outside_melee"}, {"en"}, function(locale, value) return "Catch a Breath" end),
	--[+ Russian +]-- Переведи дух -- руоф Передышка
	create_template("talent_tree_vet_pas_011_ru", {"loc_talent_veteran_replenish_toughness_outside_melee"}, {"ru"}, function(locale, value) return "Переведи дух" end),

	--[+ Passive 12 - Grenade Tinkerer +]--
	-- create_template("talent_tree_vet_pas_012_en", {"loc_talent_veteran_improved_grenades"}, {"en"}, function(locale, value) return "Grenade Tinkerer" end),
	--[+ Russian +]-- Гранатный мастер -- руоф Любитель гранат
	create_template("talent_tree_vet_pas_012_ru", {"loc_talent_veteran_improved_grenades"}, {"ru"}, function(locale, value) return "Гранатный мастер" end),

	--[+ Passive 13 - Covering Fire +]--
	-- create_template("talent_tree_vet_pas_013_en", {"loc_talent_veteran_replenish_toughness_and_boost_allies"}, {"en"}, function(locale, value) return "Covering Fire" end),
	--[+ Russian +]-- Прикрывающий огонь -- руоф Прикрытие огнем
	create_template("talent_tree_vet_pas_013_ru", {"loc_talent_veteran_replenish_toughness_and_boost_allies"}, {"ru"}, function(locale, value) return "Прикрывающий огонь" end),

	--[+ Passive 14 - Serrated Blade +]--
	-- create_template("talent_tree_vet_pas_014_en", {"loc_talent_veteran_hits_cause_bleed"}, {"en"}, function(locale, value) return "Serrated Blade" end),
	--[+ Russian +]-- Зазубренный клинок -- руоф Зазубренное лезвие
	create_template("talent_tree_vet_pas_014_ru", {"loc_talent_veteran_hits_cause_bleed"}, {"ru"}, function(locale, value) return "Зазубренный клинок" end),

	--[+ Passive 15 - Agile Engagement +]--
	-- create_template("talent_tree_vet_pas_015_en", {"loc_talent_veteran_kill_grants_damage_to_other_slot"}, {"en"}, function(locale, value) return "Agile Engagement" end),
	--[+ Russian +]-- Ловкое взаимодействие
	-- create_template("talent_tree_vet_pas_015_ru", {"loc_talent_veteran_kill_grants_damage_to_other_slot"}, {"ru"}, function(locale, value) return "Ловкое взаимодействие" end),

	--[+ Passive 16 - Kill Zone +]--
	-- create_template("talent_tree_vet_pas_016_en", {"loc_talent_veteran_ranged_power_out_of_melee"}, {"en"}, function(locale, value) return "Kill Zone" end),
	--[+ Russian +]-- Зона поражение
	-- create_template("talent_tree_vet_pas_016_ru", {"loc_talent_veteran_ranged_power_out_of_melee"}, {"ru"}, function(locale, value) return "Зона поражение" end),

	--[+ Passive 17 - Opening Salvo +]--
	-- create_template("talent_tree_vet_pas_017_en", {"loc_talent_veteran_bonus_crit_chance_on_ammo"}, {"en"}, function(locale, value) return "Opening Salvo" end),
	--[+ Russian +]-- Открывающий залп
	-- create_template("talent_tree_vet_pas_017_ru", {"loc_talent_veteran_bonus_crit_chance_on_ammo"}, {"ru"}, function(locale, value) return "Открывающий залп" end),

	--[+ Passive 18 - Field Improvisation +]--
	-- create_template("talent_tree_vet_pas_018_en", {"loc_talent_veteran_better_deployables"}, {"en"}, function(locale, value) return "Field Improvisation" end),
	--[+ Russian +]-- Полевая импровизация
	-- create_template("talent_tree_vet_pas_018_ru", {"loc_talent_veteran_better_deployables"}, {"ru"}, function(locale, value) return "Полевая импровизация" end),

	--[+ Passive 19 - Twinned Blast +]--
	-- create_template("talent_tree_vet_pas_019_en", {"loc_talent_veteran_extra_grenade_throw_chance"}, {"en"}, function(locale, value) return "Twinned Blast" end),
	--[+ Russian +]-- Двойной взрыв -- Спаренный взрыв
	create_template("talent_tree_vet_pas_019_ru", {"loc_talent_veteran_extra_grenade_throw_chance"}, {"ru"}, function(locale, value) return "Двойной взрыв" end),

	--[+ Passive 20 - Demolition Stockpile +]--
	-- create_template("talent_tree_vet_pas_020_en", {"loc_talent_ranger_replenish_grenade"}, {"en"}, function(locale, value) return "Demolition Stockpile" end),
	--[+ Russian +]-- Склад взрывчатки
	-- create_template("talent_tree_vet_pas_020_ru", {"loc_talent_ranger_replenish_grenade"}, {"ru"}, function(locale, value) return "Склад взрывчатки" end),

	--[+ Passive 21 - Grenadier +]--
	-- create_template("talent_tree_vet_pas_021_en", {"loc_talent_veteran_extra_grenade"}, {"en"}, function(locale, value) return "Grenadier" end),
	--[+ Russian +]-- Гренадёр -- руоф Гренадер
	create_template("talent_tree_vet_pas_021_ru", {"loc_talent_veteran_extra_grenade"}, {"ru"}, function(locale, value) return "Гренадёр" end),

	--[+ Passive 22 - Leave No One Behind +]--
	-- create_template("talent_tree_vet_pas_022_en", {"loc_talent_veteran_movement_speed_towards_downed"}, {"en"}, function(locale, value) return "Leave No One Behind" end),
	--[+ Russian +]-- Никого не оставлять позади
	-- create_template("talent_tree_vet_pas_022_ru", {"loc_talent_veteran_movement_speed_towards_downed"}, {"ru"}, function(locale, value) return "Никого не оставлять позади" end),

	--[+ Passive 23 - Precision Strikes +]--
	-- create_template("talent_tree_vet_pas_023_en", {"loc_talent_veteran_increased_weakspot_damage"}, {"en"}, function(locale, value) return "Precision Strikes" end),
	--[+ Russian +]-- Точные удары
	-- create_template("talent_tree_vet_pas_023_ru", {"loc_talent_veteran_increased_weakspot_damage"}, {"ru"}, function(locale, value) return "Точные удары" end),

	--[+ Passive 24 - Determined +]--
	-- create_template("talent_tree_vet_pas_024_en", {"loc_talent_veteran_supression_immunity"}, {"en"}, function(locale, value) return "Determined" end),
	--[+ Russian +]-- Решительность
	-- create_template("talent_tree_vet_pas_024_ru", {"loc_talent_veteran_supression_immunity"}, {"ru"}, function(locale, value) return "Решительность" end),

	--[+ Passive 25 - Deadshot +]--
	-- create_template("talent_tree_vet_pas_025_en", {"loc_talent_ranged_ads_drains_stamina_boost"}, {"en"}, function(locale, value) return "Deadshot" end),
	--[+ Russian +]-- Смертельный выстрел
	-- create_template("talent_tree_vet_pas_025_ru", {"loc_talent_ranged_ads_drains_stamina_boost"}, {"ru"}, function(locale, value) return "Смертельный выстрел" end),

	--[+ Passive 26 - Born Leader +]--
	-- create_template("talent_tree_vet_pas_026_en", {"loc_talent_veteran_allies_share_toughness"}, {"en"}, function(locale, value) return "Born Leader" end),
	--[+ Russian +]-- Прирождённый лидер -- руоф Прирожденный лидер
	create_template("talent_tree_vet_pas_026_ru", {"loc_talent_veteran_allies_share_toughness"}, {"ru"}, function(locale, value) return "Прирождённый лидер" end),

	--[+ Passive 27 - Keep Their Heads Down! +]--
	-- create_template("talent_tree_vet_pas_027_en", {"loc_talent_veteran_increase_suppression"}, {"en"}, function(locale, value) return "Keep Their Heads Down!" end),
	--[+ Russian +]-- Не давай им поднять головы! -- руоф Пригнитесь!
	create_template("talent_tree_vet_pas_027_ru", {"loc_talent_veteran_increase_suppression"}, {"ru"}, function(locale, value) return "Не давай им поднять головы!" end),

	--[+ Passive 28 - Reciprocity +]--
	-- create_template("talent_tree_vet_pas_028_en", {"loc_talent_veteran_dodging_grants_crit"}, {"en"}, function(locale, value) return "Reciprocity" end),
	--[+ Russian +]-- Взаимообмен -- руоф Взаимная выгода
	create_template("talent_tree_vet_pas_028_ru", {"loc_talent_veteran_dodging_grants_crit"}, {"ru"}, function(locale, value) return "Взаимообмен" end),

	--[+ Passive 29 - Duck and Dive +]--
	-- create_template("talent_tree_vet_pas_029_en", {"loc_talent_ranger_stamina_on_ranged_dodge"}, {"en"}, function(locale, value) return "Duck and Dive" end),
	--[+ Russian +]-- Пригнись и увернись -- руоф Голову в песок
	create_template("talent_tree_vet_pas_029_ru", {"loc_talent_ranger_stamina_on_ranged_dodge"}, {"ru"}, function(locale, value) return "Пригнись и увернись" end),

	--[+ Passive 30 - Fully Loaded +]--
	-- create_template("talent_tree_vet_pas_030_en", {"loc_talent_veteran_ammo_increase"}, {"en"}, function(locale, value) return "Fully Loaded" end),
	--[+ Russian +]-- Полный запас -- руоф Полный заряд
	create_template("talent_tree_vet_pas_030_ru", {"loc_talent_veteran_ammo_increase"}, {"ru"}, function(locale, value) return "Полный запас" end),

	--[+ Passive 31 - Tactical Awareness +]--
	-- create_template("talent_tree_vet_pas_031_en", {"loc_talent_veteran_elite_kills_reduce_cooldown"}, {"en"}, function(locale, value) return "Tactical Awareness" end),
	--[+ Russian +]-- Тактическая осведомлённость -- руоф Тактическая осведомленность
	create_template("talent_tree_vet_pas_031_ru", {"loc_talent_veteran_elite_kills_reduce_cooldown"}, {"ru"}, function(locale, value) return "Тактическая осведомлённость" end),

	--[+ Passive 32 - Desperado +]--
	-- create_template("talent_tree_vet_pas_032_en", {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse"}, {"en"}, function(locale, value) return "Desperado" end),
	--[+ Russian +]-- Сорвиголова
	-- create_template("talent_tree_vet_pas_032_ru", {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse"}, {"ru"}, function(locale, value) return "Сорвиголова" end),

	--[+ Passive 33 - Shock Trooper +]--
	-- create_template("talent_tree_vet_pas_033_en", {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit"}, {"en"}, function(locale, value) return "Shock Trooper" end),
	--[+ Russian +]-- Штурмовик
	-- create_template("talent_tree_vet_pas_033_ru", {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit"}, {"ru"}, function(locale, value) return "Штурмовик" end),

	--[+ Passive 34 - Superiority Complex +]--
	-- create_template("talent_tree_vet_pas_034_en", {"loc_talent_veteran_increase_damage_vs_elites"}, {"en"}, function(locale, value) return "Superiority Complex" end),
	--[+ Russian +]-- Мания величия
	-- create_template("talent_tree_vet_pas_034_ru", {"loc_talent_veteran_increase_damage_vs_elites"}, {"ru"}, function(locale, value) return "Мания величия" end),

	--[+ Passive 35 - Iron Will +]--
	-- create_template("talent_tree_vet_pas_035_en", {"loc_talent_veteran_block_break_gives_tdr"}, {"en"}, function(locale, value) return "Iron Will" end),
	--[+ Russian +]-- Железная воля
	-- create_template("talent_tree_vet_pas_035_ru", {"loc_talent_veteran_block_break_gives_tdr"}, {"ru"}, function(locale, value) return "Железная воля" end),

	--[+ Passive 36 - Demolition Team +]--
	-- create_template("talent_tree_vet_pas_036_en", {"loc_talent_ranger_grenade_on_elite_kills_coop"}, {"en"}, function(locale, value) return "Demolition Team" end),
	--[+ Russian +]-- Команда подрывников -- руоф Группа подрыва
	create_template("talent_tree_vet_pas_036_ru", {"loc_talent_ranger_grenade_on_elite_kills_coop"}, {"ru"}, function(locale, value) return "Команда подрывников" end),

	--[+ Passive 37 - Exploit Weakness +]--
	-- create_template("talent_tree_vet_pas_037_en", {"loc_talent_veteran_crits_rend"}, {"en"}, function(locale, value) return "Exploit Weakness" end),
	--[+ Russian +]-- Использование слабостей
	-- create_template("talent_tree_vet_pas_037_ru", {"loc_talent_veteran_crits_rend"}, {"ru"}, function(locale, value) return "Использование слабостей" end),

	--[+ Passive 38 - Onslaught +]--
	-- create_template("talent_tree_vet_pas_038_en", --  {"loc_talent_veteran_continous_hits_apply_rending"}, {"en"}, function(locale, value) return "Onslaught" end),
	--[+ Russian +]-- Натиск
	-- create_template("talent_tree_vet_pas_038_en", {"loc_talent_veteran_continous_hits_apply_rending"}, {"ru"}, function(locale, value) return "Натиск" end),

	--[+ Passive 39 - Trench Fighter Drill +]--
	-- create_template("talent_tree_vet_pas_039_en", {"loc_talent_veteran_attack_speed"}, {"en"}, function(locale, value) return "Trench Fighter Drill" end),
	--[+ Russian +]-- Окопные тренировки -- руоф Тренировка в окопах
	create_template("talent_tree_vet_pas_039_ru", {"loc_talent_veteran_attack_speed"}, {"ru"}, function(locale, value) return "Окопные тренировки" end),

	--[+ Passive 40 - Skirmisher +]--
	-- create_template("talent_tree_vet_pas_040_en", {"loc_talent_veteran_damage_damage_after_sprinting"}, {"en"}, function(locale, value) return "Skirmisher" end),
	--[+ Russian +]-- Застрельщик
	-- create_template("talent_tree_vet_pas_040_ru", {"loc_talent_veteran_damage_damage_after_sprinting"}, {"ru"}, function(locale, value) return "Застрельщик" end),

	--[+ Passive 41 - Competitive Urge +]--
	-- create_template("talent_tree_vet_pas_041_en", {"loc_talent_veteran_ally_kills_increase_damage"}, {"en"}, function(locale, value) return "Competitive Urge" end),
	--[+ Russian +]-- Соревновательный инстинкт -- руоф Состязательный мотив
	create_template("talent_tree_vet_pas_041_ru", {"loc_talent_veteran_ally_kills_increase_damage"}, {"ru"}, function(locale, value) return "Соревновательный инстинкт" end),

	--[+ Passive 42 - Rending Strikes +]--
	-- create_template("talent_tree_vet_pas_042_en", {"loc_talent_veteran_rending_bonus"}, {"en"}, function(locale, value) return "Rending Strikes" end),
	--[+ Russian +]-- Пробивающие удары -- руоф Разрушительные удары
	create_template("talent_tree_vet_pas_042_ru", {"loc_talent_veteran_rending_bonus"}, {"ru"}, function(locale, value) return "Пробивающие удары" end),

	--[+ Passive 43 - Bring it Down! +]--
	-- create_template("talent_tree_vet_pas_043_en", {"loc_talent_veteran_big_game_hunter"}, {"en"}, function(locale, value) return "Bring it Down!" end),
	--[+ Russian +]-- Убей их! -- руоф Убивай!
	create_template("talent_tree_vet_pas_043_ru", {"loc_talent_veteran_big_game_hunter"}, {"ru"}, function(locale, value) return "Убей их!" end),

--[+ ++OGRYN - ОГРИН++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ Blitz 0 - Big Box of Hurt +]--
	-- create_template("talent_tree_ogr_blitz0_000_en", {"loc_ability_ogryn_grenade_box"}, {"en"}, function(locale, value) return "Big Box of Hurt" end),
	--[+ Russian +]-- Большая коробка боли -- руоф Ящик, полный боли
	create_template("talent_tree_ogr_blitz0_000_ru", {"loc_ability_ogryn_grenade_box"}, {"ru"}, function(locale, value) return "Большая коробка боли" end),

	--[+ Blitz 1 - Big Friendly Rock +]--
	-- create_template("talent_tree_ogr_blitz1_000_en", {"loc_ability_ogryn_friend_rock"}, {"en"}, function(locale, value) return "Big Friendly Rock" end),
	--[+ Russian +]-- Большой дружелюбный валун
	-- create_template("talent_tree_ogr_blitz1_000_ru", {"loc_ability_ogryn_friend_rock"}, {"ru"}, function(locale, value) return "Большой дружелюбный валун" end),

	--[+ Blitz 2 - Bombs Away! +]--
	-- create_template("talent_tree_ogr_blitz2_000_en", {"loc_talent_bonebreaker_grenade_super_armor_explosion"}, {"en"}, function(locale, value) return "Bombs Away!" end),
	--[+ Russian +]-- Бросай бомбы! -- руоф Кидаю бомбу!
	create_template("talent_tree_ogr_blitz2_000_ru", {"loc_talent_bonebreaker_grenade_super_armor_explosion"}, {"ru"}, function(locale, value) return "Бросай бомбы!" end),

	--[+ Blitz 3 - Frag Bomb +]--
	-- create_template("talent_tree_ogr_blitz3_000_en", {"loc_ability_ogryn_grenade_demolition"}, {"en"}, function(locale, value) return "Frag Bomb" end),
	--[+ Russian +]-- Фраг-бомба -- руоф Осколочная бомба
	create_template("talent_tree_ogr_blitz3_000_ru", {"loc_ability_ogryn_grenade_demolition"}, {"ru"}, function(locale, value) return "Фраг-бомба" end),

--[+ +AURA - АУРА+ +]--
	--[+ Aura 0 - Intimidating Presence +]--
	-- create_template("talent_tree_ogr_aura0_000_en", {"loc_talent_ogryn_2_base_4"}, {"en"}, function(locale, value) return "Intimidating Presence" end),
	--[+ Russian +]-- Устрашающее присутствие -- руоф Пугающее присутствие
	create_template("talent_tree_ogr_aura0_000_ru", {"loc_talent_ogryn_2_base_4"}, {"ru"}, function(locale, value) return "Устрашающее присутствие" end),

	--[+ Aura 1 - Bonebreaker's Aura +]--
	-- create_template("talent_tree_ogr_aura1_000_en", {"loc_talent_damage_aura"}, {"en"}, function(locale, value) return "Bonebreaker's Aura" end),
	--[+ Russian +]-- Аура костолома
	-- create_template("talent_tree_ogr_aura1_000_ru", {"loc_talent_damage_aura"}, {"ru"}, function(locale, value) return "Аура костолома" end),

	--[+ Aura 2 - Stay Close! +]--
	-- create_template("talent_tree_ogr_aura2_000_en", {"loc_talent_ogryn_toughness_regen_aura"}, {"en"}, function(locale, value) return "Stay Close!" end),
	--[+ Russian +]-- Держись рядом! -- руоф Не расходимся!
	create_template("talent_tree_ogr_aura2_000_ru", {"loc_talent_ogryn_toughness_regen_aura"}, {"ru"}, function(locale, value) return "Держись рядом!" end),

	--[+ Aura 3 - Coward Culling +]--
	-- create_template("talent_tree_ogr_aura3_000_en", {"loc_talent_ogryn_damage_vs_suppressed"}, {"en"}, function(locale, value) return "Coward Culling" end),
	--[+ Russian +]-- Отсев трусливых -- руоф Трусливые отбросы
	create_template("talent_tree_ogr_aura3_000_ru", {"loc_talent_ogryn_damage_vs_suppressed"}, {"ru"}, function(locale, value) return "Отсев трусливых" end),

--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
	--[+ Ability 0 - Bull Rush +]--
	-- create_template("talent_tree_ogr_abil0_000_en", {"loc_ability_ogryn_charge"}, {"en"}, function(locale, value) return "Bull Rush" end),
	--[+ Russian +]-- Рывок быка -- руоф Бычий натиск
	create_template("talent_tree_ogr_abil0_000_ru", {"loc_ability_ogryn_charge"}, {"ru"}, function(locale, value) return "Рывок быка" end),

	--[+ Ability 1 - Indomitable +]--
	-- create_template("talent_tree_ogr_abil1_000_en", {"loc_talent_ogryn_bull_rush_distance"}, {"en"}, function(locale, value) return "Indomitable" end),
	--[+ Russian +]-- Неукротимый -- руоф Неукротимость
	create_template("talent_tree_ogr_abil1_000_ru", {"loc_talent_ogryn_bull_rush_distance"}, {"ru"}, function(locale, value) return "Неукротимый" end),

	--[+ Ability 1-1 - Stomping Boots +]--
	-- create_template("talent_tree_ogr_abil1_001_en", {"loc_talent_ogryn_toughness_on_bull_rush"}, {"en"}, function(locale, value) return "Stomping Boots" end),
	--[+ Russian +]-- Топающие сапоги -- руоф Сокрушающий топот
	create_template("talent_tree_ogr_abil1_001_ru", {"loc_talent_ogryn_toughness_on_bull_rush"}, {"ru"}, function(locale, value) return "Топающие сапоги" end),

	--[+ Ability 1-2 - Trample +]--
	-- create_template("talent_tree_ogr_abil1_002_en", {"loc_talent_ogryn_ability_charge_trample"}, {"en"}, function(locale, value) return "Trample" end),
	--[+ Russian +]-- Топот -- руоф Топанье
	create_template("talent_tree_ogr_abil1_002_ru", {"loc_talent_ogryn_ability_charge_trample"}, {"ru"}, function(locale, value) return "Топот" end),

	--[+ Ability 1-3 - Pulverise +]--
	-- create_template("talent_tree_ogr_abil1_003_en", {"loc_talent_ogryn_bleed_on_bull_rush"}, {"en"}, function(locale, value) return "Pulverise" end),
	--[+ Russian +]-- Разбрызгивание -- Крошилово
	create_template("talent_tree_ogr_abil1_003_ru", {"loc_talent_ogryn_bleed_on_bull_rush"}, {"ru"}, function(locale, value) return "Разбрызгивание" end),

	--[+ Ability 2 - Loyal Protector +]--
	-- create_template("talent_tree_ogr_abil2_000_en", {"loc_ability_ogryn_taunt_shout"}, {"en"}, function(locale, value) return "Loyal Protector" end),
	--[+ Russian +]-- Верный защитник
	-- create_template("talent_tree_ogr_abil2_000_ru", {"loc_ability_ogryn_taunt_shout"}, {"ru"}, function(locale, value) return "Верный защитник" end),

	--[+ Ability 2-1 - Valuable Distraction +]--
	-- create_template("talent_tree_ogr_abil2_001_en", {"loc_talent_ogryn_taunt_damage_taken_increase"}, {"en"}, function(locale, value) return "Valuable Distraction" end),
	--[+ Russian +]-- Отвлекающий манёвр -- руоф Ценное отвлечение
	create_template("talent_tree_ogr_abil2_001_ru", {"loc_talent_ogryn_taunt_damage_taken_increase"}, {"ru"}, function(locale, value) return "Отвлекающий манёвр" end),

	--[+ Ability 2-2 - Go Again +]--
	-- create_template("talent_tree_ogr_abil2_002_en", {"loc_talent_ogryn_taunt_stagger_cd"}, {"en"}, function(locale, value) return "Go Again!" end),
	--[+ Russian +]-- Давай по новой! -- Еще раз!
	create_template("talent_tree_ogr_abil2_002_ru", {"loc_talent_ogryn_taunt_stagger_cd"}, {"ru"}, function(locale, value) return "Давай по новой!" end),

	--[+ Ability 2-3 - Big Lungs +]--
	-- create_template("talent_tree_ogr_abil2_003_en", {"loc_talent_ogryn_taunt_radius_increase"}, {"en"}, function(locale, value) return "Big Lungs" end),
	--[+ Russian +]-- Громогласный -- руоф Мощные легкие
	create_template("talent_tree_ogr_abil2_003_ru", {"loc_talent_ogryn_taunt_radius_increase"}, {"ru"}, function(locale, value) return "Громогласный" end),

	--[+ Ability 3 - Point-Blank Barrage +]--
	-- create_template("talent_tree_ogr_abil3_000_en", {"loc_talent_ogryn_combat_ability_special_ammo"}, {"en"}, function(locale, value) return "Point-Blank Barrage" end),
	--[+ Russian +]-- Беспощадный обстрел в упор -- руоф Решительный натиск
	create_template("talent_tree_ogr_abil3_000_ru", {"loc_talent_ogryn_combat_ability_special_ammo"}, {"ru"}, function(locale, value) return "Беспощадный обстрел в упор" end),

	--[+ Ability 3-1 - Bullet Bravado +]--
	-- create_template("talent_tree_ogr_abil3_001_en", {"loc_talent_ogryn_special_ammo_toughness"}, {"en"}, function(locale, value) return "Bullet Bravado" end),
	--[+ Russian +]-- Бравада стрелка -- руоф Лихая пуля
	create_template("talent_tree_ogr_abil3_001_ru", {"loc_talent_ogryn_special_ammo_toughness"}, {"ru"}, function(locale, value) return "Бравада стрелка" end),

	--[+ Ability 3-2 - Hail of Fire +]--
	-- create_template("talent_tree_ogr_abil3_002_en", {"loc_talent_ogryn_special_ammo_armor_pen"}, {"en"}, function(locale, value) return "Hail of Fire" end),
	--[+ Russian +]-- Град огня -- руоф Слава пламени
	create_template("talent_tree_ogr_abil3_002_ru", {"loc_talent_ogryn_special_ammo_armor_pen"}, {"ru"}, function(locale, value) return "Град огня" end),

	--[+ Ability 3-3 - Light 'em Up +]--
	-- create_template("talent_tree_ogr_abil3_003_en", {"loc_talent_ogryn_special_ammo_fire_shots"}, {"en"}, function(locale, value) return "Light 'em Up" end),
	--[+ Russian +]-- Задай жару -- руоф Зададим жару
	create_template("talent_tree_ogr_abil3_003_ru", {"loc_talent_ogryn_special_ammo_fire_shots"}, {"ru"}, function(locale, value) return "Задай жару" end),

--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
	--[+ Keystone 1 - Heavy Hitter +]--
	-- create_template("talent_tree_ogr_keys1_000_en", {"loc_talent_ogryn_passive_heavy_hitter"}, {"en"}, function(locale, value) return "Heavy Hitter" end),
	--[+ Russian +]-- Тяжёлый нападающий -- руоф Тяжеловес
	create_template("talent_tree_ogr_keys1_000_ru", {"loc_talent_ogryn_passive_heavy_hitter"}, {"ru"}, function(locale, value) return "Тяжёлый нападающий" end),

	--[+ Keystone 1-1 - Just Getting Started +]--
	-- create_template("talent_tree_ogr_keys1_001_en", {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed"}, {"en"}, function(locale, value) return "Just Getting Started" end),
	--[+ Russian +]-- Я только начал  -- руоф Лишь начало!
	create_template("talent_tree_ogr_keys1_001_ru", {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed"}, {"ru"}, function(locale, value) return "Я только начал" end),

	--[+ Keystone 1-2 - Unstoppable +]--
	-- create_template("talent_tree_ogr_keys1_002_en", {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness"}, {"en"}, function(locale, value) return "Unstoppable" end),
	--[+ Russian +]-- Неудержимый -- руоф Неудержимость
	create_template("talent_tree_ogr_keys1_002_ru", {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness"}, {"ru"}, function(locale, value) return "Неудержимый" end),

	--[+ Keystone 1-3 - Brutish Momentum +]--
	-- create_template("talent_tree_ogr_keys1_003_en", {"loc_talent_ogryn_heavy_hitter_light_attacks_refresh"}, {"en"}, function(locale, value) return "Brutish Momentum" end),
	--[+ Russian +]-- Брутальный моментум -- руоф Зверский моментум
	create_template("talent_tree_ogr_keys1_003_ru", {"loc_talent_ogryn_heavy_hitter_light_attacks_refresh"}, {"ru"}, function(locale, value) return "Брутальный моментум" end),

	--[+ Keystone 2 - Feel No Pain +]--
	-- create_template("talent_tree_ogr_keys2_000_en", {"loc_talent_ogryn_carapace_armor"}, {"en"}, function(locale, value) return "Feel No Pain" end),
	--[+ Russian +]-- Неболит
	-- create_template("talent_tree_ogr_keys2_000_ru", {"loc_talent_ogryn_carapace_armor"}, {"ru"}, function(locale, value) return "Неболит" end),

	--[+ Keystone 2-1 - Pained Outburst +]--
	-- create_template("talent_tree_ogr_keys2_001_en", {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks"}, {"en"}, function(locale, value) return "Pained Outburst" end),
	--[+ Russian +]-- Вспышка боли
	-- create_template("talent_tree_ogr_keys2_001_ru", {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks"}, {"ru"}, function(locale, value) return "Вспышка боли" end),

	--[+ Keystone 2-2 - Strongest! +]--
	-- create_template("talent_tree_ogr_keys2_002_en", {"loc_talent_ogryn_carapace_armor_add_stack_on_push"}, {"en"}, function(locale, value) return "Strongest!" end),
	--[+ Russian +]-- Сильнейший!
	-- create_template("talent_tree_ogr_keys2_002_ru", {"loc_talent_ogryn_carapace_armor_add_stack_on_push"}, {"ru"}, function(locale, value) return "Сильнейший!" end),

	--[+ Keystone 2-3 - Toughest! +]--
	-- create_template("talent_tree_ogr_keys2_003_en", {"loc_talent_ogryn_carapace_armor_more_toughness"}, {"en"}, function(locale, value) return "Toughest!" end),
	--[+ Russian +]-- Стойкий! -- руоф Самый выносливый!
	create_template("talent_tree_ogr_keys2_003_ru", {"loc_talent_ogryn_carapace_armor_more_toughness"}, {"ru"}, function(locale, value) return "Стойкий!" end),

	--[+ Keystone 3 - Burst Limiter Override +]--
	-- create_template("talent_tree_ogr_keys3_000_en", {"loc_talent_ogryn_chance_to_not_consume_ammo"}, {"en"}, function(locale, value) return "Burst Limiter Override" end),
	--[+ Russian +]-- Обход ограничителя очереди -- руоф Взлом ограничителя взрыва
	create_template("talent_tree_ogr_keys3_000_ru", {"loc_talent_ogryn_chance_to_not_consume_ammo"}, {"ru"}, function(locale, value) return "Обход ограничителя очереди" end),

	--[+ Keystone 3-1 - Maximum Firepower +]--
	-- create_template("talent_tree_ogr_keys3_001_en", {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction"}, {"en"}, function(locale, value) return "Maximum Firepower" end),
	--[+ Russian +]-- Максимальная огневая мощь
	-- create_template("talent_tree_ogr_keys3_001_ru", {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction"}, {"ru"}, function(locale, value) return "Максимальная огневая мощь" end),

	--[+ Keystone 3-2 - Good Shootin' +]--
	-- create_template("talent_tree_ogr_keys3_002_en", {"loc_talent_ogryn_critical_leadbelcher"}, {"en"}, function(locale, value) return "Good Shootin'" end),
	--[+ Russian +]-- Хорошая стрельба -- руоф Хороший выстрел
	create_template("talent_tree_ogr_keys3_002_ru", {"loc_talent_ogryn_critical_leadbelcher"}, {"ru"}, function(locale, value) return "Хорошая стрельба" end),

	--[+ Keystone 3-3 - More Burst Limiter Overrides! +]--
	-- create_template("talent_tree_ogr_keys3_003_en", {"loc_talent_ogryn_increased_leadbelcher_chance"}, {"en"}, function(locale, value) return "More Burst Limiter Overrides!" end),
	--[+ Russian +]-- Ещё больший обход ограничителя очереди! -- руоф Больше взлома ограничителя взрыва!
	create_template("talent_tree_ogr_keys3_003_ru", {"loc_talent_ogryn_increased_leadbelcher_chance"}, {"ru"}, function(locale, value) return "Ещё больший обход ограничителя очереди!" end),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Furious +]--
	-- create_template("talent_tree_ogr_pas_001_en", {"loc_talent_ogryn_damage_per_enemy_hit_previous"}, {"en"}, function(locale, value) return "Furious" end),
	--[+ Russian +]-- Разъярённый -- руоф Разъяренный
	create_template("talent_tree_ogr_pas_001_ru", {"loc_talent_ogryn_damage_per_enemy_hit_previous"}, {"ru"}, function(locale, value) return "Разъярённый" end),

	--[+ Passive 2 - Reloaded and Ready +]--
	-- create_template("talent_tree_ogr_pas_002_en", {"loc_talent_ogryn_ranged_damage_on_reload"}, {"en"}, function(locale, value) return "Reloaded and Ready" end),
	--[+ Russian +]-- Перезаряжен и готов -- руоф Заряжен и готов
	create_template("talent_tree_ogr_pas_002_ru", {"loc_talent_ogryn_ranged_damage_on_reload"}, {"ru"}, function(locale, value) return "Перезаряжен и готов" end),

	--[+ Passive 3 - The Best Defence +]--
	-- create_template("talent_tree_ogr_pas_003_en", {"loc_talent_ogryn_toughness_on_multiple"}, {"en"}, function(locale, value) return "The Best Defence" end),
	--[+ Russian +]-- Лучшая защита
	-- create_template("talent_tree_ogr_pas_003_ru", {"loc_talent_ogryn_toughness_on_multiple"}, {"ru"}, function(locale, value) return "Лучшая защита" end),

	--[+ Passive 4 - Heavyweight +]--
	-- create_template("talent_tree_ogr_pas_004_en", {"loc_talent_ogryn_ogryn_fighter"}, {"en"}, function(locale, value) return "Heavyweight" end),
	--[+ Russian +]-- Тяжеловес
	-- create_template("talent_tree_ogr_pas_004_ru", {"loc_talent_ogryn_ogryn_fighter"}, {"ru"}, function(locale, value) return "Тяжеловес" end),

	--[+ Passive 5 - Steady Grip +]--
	-- create_template("talent_tree_ogr_pas_005_en", {"loc_talent_ogryn_toughness_regen_while_bracing"}, {"en"}, function(locale, value) return "Steady Grip" end),
	--[+ Russian +]-- Крепкий хват -- руоф Крепкая хватка
	create_template("talent_tree_ogr_pas_005_ru", {"loc_talent_ogryn_toughness_regen_while_bracing"}, {"ru"}, function(locale, value) return "Крепкий хват" end),

	--[+ Passive 6 - Smash 'Em! +]--
	-- create_template("talent_tree_ogr_pas_006_en", {"loc_talent_ogryn_toughness_on_single_heavy"}, {"en"}, function(locale, value) return "Smash 'Em!" end),
	--[+ Russian +]-- Круши их! -- руоф Вдарь им!
	create_template("talent_tree_ogr_pas_006_ru", {"loc_talent_ogryn_toughness_on_single_heavy"}, {"ru"}, function(locale, value) return "Круши их!" end),

	--[+ Passive 7 - Lynchpin +]--
	-- create_template("talent_tree_ogr_pas_007_en", --  {"loc_talent_ogryn_coherency_toughness_increase"}, {"en"}, function(locale, value) return "Lynchpin" end),
	--[+ Russian +]-- Опора -- руоф Переломный момент
	create_template("talent_tree_ogr_pas_007_en", {"loc_talent_ogryn_coherency_toughness_increase"}, {"ru"}, function(locale, value) return "Опора" end),

	--[+ Passive 8 - Slam +]--
	-- create_template("talent_tree_ogr_pas_008_en", {"loc_talent_ogryn_melee_stagger"}, {"en"}, function(locale, value) return "Slam" end),
	--[+ Russian +]-- Оплеуха -- руоф Хлопок
	create_template("talent_tree_ogr_pas_008_ru", {"loc_talent_ogryn_melee_stagger"}, {"ru"}, function(locale, value) return "Оплеуха" end),

	--[+ Passive 9 - Soften Them Up +]--
	-- create_template("talent_tree_ogr_pas_009_en", {"loc_talent_ogryn_targets_recieve_damage_increase_debuff"}, {"en"}, function(locale, value) return "Soften Them Up" end),
	--[+ Russian +]-- Ослабь их -- руоф Упокоить их
	create_template("talent_tree_ogr_pas_009_ru", {"loc_talent_ogryn_targets_recieve_damage_increase_debuff"}, {"ru"}, function(locale, value) return "Ослабь их" end),

	--[+ Passive 10 - Crunch! +]--
	-- create_template("talent_tree_ogr_pas_010_en", --   {"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger"}, {"en"}, function(locale, value) return "Crunch!" end),
	--[+ Russian +]-- Хрусь! -- руоф Хрясь!
	create_template("talent_tree_ogr_pas_010_en", {"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger"}, {"ru"}, function(locale, value) return "Хрусь!" end),

	--[+ Passive 11 - Batter +]--
	-- create_template("talent_tree_ogr_pas_011_en", {"loc_talent_ogryn_bleed_on_multiple_hit"}, {"en"}, function(locale, value) return "Batter" end),
	--[+ Russian +]-- Месиво
	create_template("talent_tree_ogr_pas_011_ru", {"loc_talent_ogryn_bleed_on_multiple_hit"}, {"ru"}, function(locale, value) return "Месиво" end),

	--[+ Passive 12 - Pacemaker +]--
	-- create_template("talent_tree_ogr_pas_012_en", {"loc_talent_ogryn_reload_speed_on_multiple_hits"}, {"en"}, function(locale, value) return "Pacemaker" end),
	--[+ Russian +]-- Задающий ритм -- руоф Водитель ритма
	create_template("talent_tree_ogr_pas_012_ru", {"loc_talent_ogryn_reload_speed_on_multiple_hits"}, {"ru"}, function(locale, value) return "Задающий ритм" end),

	--[+ Passive 13 - Ammo Stash +]--
	-- create_template("talent_tree_ogr_pas_013_en", {"loc_talent_ogryn_increased_ammo"}, {"en"}, function(locale, value) return "Ammo Stash" end),
	--[+ Russian +]-- Схрон патронов
	create_template("talent_tree_ogr_pas_013_ru", {"loc_talent_ogryn_increased_ammo"}, {"ru"}, function(locale, value) return "Схрон патронов" end),

	--[+ Passive 14 - Hard Knocks +]--
	-- create_template("talent_tree_ogr_pas_014_en", {"loc_talent_ogryn_big_bully_heavy_hits"}, {"en"}, function(locale, value) return "Hard Knocks" end),
	--[+ Russian +]-- Тяжёлые удары -- руоф Мощные удары
	create_template("talent_tree_ogr_pas_014_ru", {"loc_talent_ogryn_big_bully_heavy_hits"}, {"ru"}, function(locale, value) return "Тяжёлые удары" end),

	--[+ Passive 15 - Too Stubborn to Die +]--
	-- create_template("talent_tree_ogr_pas_015_en", {"loc_talent_ogryn_toughness_gain_increase_on_low_health"}, {"en"}, function(locale, value) return "Too Stubborn to Die" end),
	--[+ Russian +]-- Слишком упёртый, чтобы умереть -- руоф Слишком упрям, чтобы умереть
	create_template("talent_tree_ogr_pas_015_ru", {"loc_talent_ogryn_toughness_gain_increase_on_low_health"}, {"ru"}, function(locale, value) return "Слишком упёртый, чтобы умереть" end),

	--[+ Passive 16 - Delight in Destruction +]--
	-- create_template("talent_tree_ogr_pas_016_en", {"loc_talent_ogryn_damage_reduction_per_bleed"}, {"en"}, function(locale, value) return "Delight in Destruction" end),
	--[+ Russian +]-- Упоение в разрушении -- руоф Наслаждение разрушением
	create_template("talent_tree_ogr_pas_016_ru", {"loc_talent_ogryn_damage_reduction_per_bleed"}, {"ru"}, function(locale, value) return "Упоение в разрушении" end),

	--[+ Passive 17 - Attention Seeker +]--
	-- create_template("talent_tree_ogr_pas_017_en", {"loc_talent_ranged_enemies_taunt"}, {"en"}, function(locale, value) return "Attention Seeker" end),
	--[+ Russian +]-- Провокатор -- руоф Внимание искателя
	create_template("talent_tree_ogr_pas_017_ru", {"loc_talent_ranged_enemies_taunt"}, {"ru"}, function(locale, value) return "Провокатор" end),

	--[+ Passive 18 - Get Stuck In +]--
	-- create_template("talent_tree_ogr_pas_018_en", {"loc_talent_ogryn_bull_rush_movement_speed"}, {"en"}, function(locale, value) return "Get Stuck In" end),
	--[+ Russian +]-- Очертя голову
	create_template("talent_tree_ogr_pas_018_ru", {"loc_talent_ogryn_bull_rush_movement_speed"}, {"ru"}, function(locale, value) return "Очертя голову" end),

	--[+ Passive 19 - Towering Presence +]--
	-- create_template("talent_tree_ogr_pas_019_en", {"loc_talent_ogryn_bigger_coherency_radius"}, {"en"}, function(locale, value) return "Towering Presence" end),
	--[+ Russian +]-- Величественное присутствие -- руоф Выдающееся присутствие
	create_template("talent_tree_ogr_pas_019_ru", {"loc_talent_ogryn_bigger_coherency_radius"}, {"ru"}, function(locale, value) return "Величественное присутствие" end),

	--[+ Passive 20 - Unstoppable Momentum +]--
	-- create_template("talent_tree_ogr_pas_020_en", {"loc_talent_ogryn_ranged_kill_grant_movement_speed"}, {"en"}, function(locale, value) return "Unstoppable Momentum" end),
	--[+ Russian +]-- Неудержимый моментум
	-- create_template("talent_tree_ogr_pas_020_ru", {"loc_talent_ogryn_ranged_kill_grant_movement_speed"}, {"ru"}, function(locale, value) return "Неудержимый моментум" end),

	--[+ Passive 21 - No Stopping Me! +]--
	-- create_template("talent_tree_ogr_pas_021_en", {"loc_talent_ogryn_windup_is_uninterruptible"}, {"en"}, function(locale, value) return "No Stopping Me!" end),
	--[+ Russian +]-- Меня не остановить!
	-- create_template("talent_tree_ogr_pas_021_ru", {"loc_talent_ogryn_windup_is_uninterruptible"}, {"ru"}, function(locale, value) return "Меня не остановить!" end),

	--[+ Passive 22 - Dominate +]--
	-- create_template("talent_tree_ogr_pas_022_en", {"loc_talent_ogryn_rending_on_elite_kills"}, {"en"}, function(locale, value) return "Dominate" end),
	--[+ Russian +]-- Доминируй -- руоф Господство
	create_template("talent_tree_ogr_pas_022_ru", {"loc_talent_ogryn_rending_on_elite_kills"}, {"ru"}, function(locale, value) return "Доминируй" end),

	--[+ Passive 23 - Payback Time +]--
	-- create_template("talent_tree_ogr_pas_023_en", {"loc_talent_ogryn_revenge_damage"}, {"en"}, function(locale, value) return "Payback Time" end),
	--[+ Russian +]-- Время расплаты
	-- create_template("talent_tree_ogr_pas_023_ru", {"loc_talent_ogryn_revenge_damage"}, {"ru"}, function(locale, value) return "Время расплаты" end),

	--[+ Passive 24 - Bruiser +]--
	-- create_template("talent_tree_ogr_pas_024_en", {"loc_talent_ogryn_cooldown_on_elite_kills"}, {"en"}, function(locale, value) return "Bruiser" end),
	--[+ Russian +]-- Бугай
	create_template("talent_tree_ogr_pas_024_ru", {"loc_talent_ogryn_cooldown_on_elite_kills"}, {"ru"}, function(locale, value) return "Бугай" end),

	--[+ Passive 25 - Big Boom +]--
	-- create_template("talent_tree_ogr_pas_025_en", {"loc_talent_ogryn_increase_explosion_radius"}, {"en"}, function(locale, value) return "Big Boom" end),
	--[+ Russian +]-- Большой бабах
	-- create_template("talent_tree_ogr_pas_025_ru", {"loc_talent_ogryn_increase_explosion_radius"}, {"ru"}, function(locale, value) return "Большой бабах" end),

	--[+ Passive 26 - Massacre +]--
	-- create_template("talent_tree_ogr_pas_026_en", {"loc_talent_ogryn_crit_chance_on_kill"}, {"en"}, function(locale, value) return "Massacre" end),
	--[+ Russian +]-- Резня
	-- create_template("talent_tree_ogr_pas_026_ru", {"loc_talent_ogryn_crit_chance_on_kill"}, {"ru"}, function(locale, value) return "Резня" end),

	--[+ Passive 27 - Implacable +]--
	-- create_template("talent_tree_ogr_pas_027_en", {"loc_talent_ogryn_windup_reduces_damage_taken"}, {"en"}, function(locale, value) return "Implacable" end),
	--[+ Russian +]-- Непоколебимый
	-- create_template("talent_tree_ogr_pas_027_ru", {"loc_talent_ogryn_windup_reduces_damage_taken"}, {"ru"}, function(locale, value) return "Непоколебимый" end),

	--[+ Passive 28 - No Pushover +]--
	-- create_template("talent_tree_ogr_pas_028_en", {"loc_talent_ogryn_blocking_reduces_push_cost"}, {"en"}, function(locale, value) return "No Pushover" end),
	--[+ Russian +]-- Не слабак
	-- create_template("talent_tree_ogr_pas_028_ru", {"loc_talent_ogryn_blocking_reduces_push_cost"}, {"ru"}, function(locale, value) return "Не слабак" end),

	--[+ Passive 29 - Won't Give In +]--
	-- create_template("talent_tree_ogr_pas_029_en", {"loc_talent_ogryn_tanky_with_downed_allies"}, {"en"}, function(locale, value) return "Won't Give In" end),
	--[+ Russian +]-- Не сдамся
	-- create_template("talent_tree_ogr_pas_029_ru", {"loc_talent_ogryn_tanky_with_downed_allies"}, {"ru"}, function(locale, value) return "Не сдамся" end),

	--[+ Passive 30 - Mobile Emplacement +]--
	-- create_template("talent_tree_ogr_pas_030_en", {"loc_talent_ogryn_bracing_reduces_damage_taken"}, {"en"}, function(locale, value) return "Mobile Emplacement" end),
	--[+ Russian +]-- Мобильная огневая точка -- руоф Передвижной окоп
	create_template("talent_tree_ogr_pas_030_ru", {"loc_talent_ogryn_bracing_reduces_damage_taken"}, {"ru"}, function(locale, value) return "Мобильная огневая точка" end),

}

--[+ Return the localization templates +]--
return localization_templates
