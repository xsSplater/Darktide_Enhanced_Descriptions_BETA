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
	--[+ Opportunist  +]--
	--[+ Russian- Оппортунист - руоф Приспособленец +]--
	create_template("trait_bespoke_000_ext_ru",
		{"loc_trait_bespoke_armor_penetration_against_staggered"}, {"ru"},
			loc_text( "Оппортунист")),
	--[+ Traditional Chinese - 機會主義者 +]--
	create_template("trait_bespoke_000_ext_tw",
		{"loc_trait_bespoke_armor_penetration_against_staggered"}, {"zh-tw"},
			loc_text("機會主義者")),

	--[+ Bloodletter - Кровопускатель +]-- -- руоф Кровопускание
	--[+ Russian +]--
	create_template("trait_bespoke_001_ext_ru",
		{"loc_trait_bespoke_bleed_on_activated_hit"}, {"ru"},
				loc_text("Кровопускатель")),
	--[+ Traditional Chinese - 放血者 +]--
	create_template("trait_bespoke_001_ext_tw",
		{"loc_trait_bespoke_bleed_on_activated_hit"}, {"zh-tw"},
				loc_text("放血者")),

	--[+ Bloodthirsty - Кровожадный +]-- -- руоф Жажда крови
	--[+ Russian +]--
	create_template("trait_bespoke_002_ext_ru",
		{"loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill"}, {"ru"},
			loc_text("Кровожадный")),
	--[+ Traditional Chinese - 嗜血 +]--
	create_template("trait_bespoke_002_ext_tw",
		{"loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill"}, {"zh-tw"},
			loc_text("嗜血")),

	--[+ Headtaker - Головорез +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_003_ext_ru",
		-- {"loc_trait_bespoke_increase_power_on_hit"}, {"ru"},
			-- loc_text("Головорез")),
	--[+ Traditional Chinese - 奪顱者 +]--
	create_template("trait_bespoke_003_ext_tw",
		{"loc_trait_bespoke_increase_power_on_hit"}, {"zh-tw"},
			loc_text("奪顱者")),

	--[+ Slaughterer - Мясник +]-- -- руоф Душегуб
	--[+ Russian +]--
	create_template("trait_bespoke_004_ext_ru",
		{"loc_trait_bespoke_increase_power_on_kill"}, {"ru"},
			loc_text("Мясник")),
	--[+ Traditional Chinese - 殺戮者 +]--
	create_template("trait_bespoke_004_ext_tw",
		{"loc_trait_bespoke_increase_power_on_kill"}, {"zh-tw"},
			loc_text("殺戮者")),

	--[+ Rev it up - Ускорься +]-- -- руоф Бодрость
	--[+ Russian +]--
	create_template("trait_bespoke_005_ext_ru",
		{"loc_trait_bespoke_movement_speed_on_activation"}, {"ru"},
			loc_text("Ускорься")),
	--[+ Traditional Chinese - 提速 +]--
	create_template("trait_bespoke_005_ext_tw",
		{"loc_trait_bespoke_movement_speed_on_activation"}, {"zh-tw"},
			loc_text("提速")),

	--[+ Thrust - Выпад +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_006_ext_ru",
		-- {"loc_trait_bespoke_power_bonus_based_on_charge_time"}, {"ru"},
			-- loc_text("Выпад")),
	--[+ Traditional Chinese - 推進 +]--
	create_template("trait_bespoke_006_ext_tw",
		{"loc_trait_bespoke_power_bonus_based_on_charge_time"}, {"zh-tw"},
			loc_text("推進")),

	--[+ Thunderous - Громовой удар +]-- -- руоф Словно раскаты грома?
	--[+ Russian +]--
	create_template("trait_bespoke_007_ext_ru",
		{"loc_trait_bespoke_targets_receive_rending_debuff"}, {"ru"},
			loc_text("Громовой удар")),
	--[+ Traditional Chinese - 雷鳴 +]--
	create_template("trait_bespoke_007_ext_tw",
		{"loc_trait_bespoke_targets_receive_rending_debuff"}, {"zh-tw"},
			loc_text("雷鳴")),

	--[+ Wrath - Гнев +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_008_ext_ru",
		-- {"loc_trait_bespoke_chained_hits_increases_cleave"}, {"ru"},
			-- loc_text("Гнев")),
	--[+ Traditional Chinese - 憤怒 +]--
	create_template("trait_bespoke_008_ext_tw",
		{"loc_trait_bespoke_chained_hits_increases_cleave"}, {"zh-tw"},
			loc_text("憤怒")),

	--[+ Shred - Кромсание +]-- -- руоф Расстрел?
	--[+ Russian +]--
	create_template("trait_bespoke_009_ext_ru",
		{"loc_trait_bespoke_chained_hits_increases_crit_chance"}, {"ru"},
			loc_text("Кромсание")),
	--[+ Traditional Chinese - 粉碎 +]--
	create_template("trait_bespoke_009_ext_tw",
		{"loc_trait_bespoke_chained_hits_increases_crit_chance"}, {"zh-tw"},
			loc_text("粉碎")),

	--[+ Savage Sweep - Дикий взмах +]-- -- руоф Дикость
	--[+ Russian +]--
	create_template("trait_bespoke_010_ext_ru",
		{"loc_trait_bespoke_increased_attack_cleave_on_multiple_hits"}, {"ru"},
			loc_text("Дикий взмах")),

	--[+ Rampage - Буйство +]--
	-- create_template("trait_bespoke_011_ext_ru",
		-- {"loc_trait_bespoke_increased_melee_damage_on_multiple_hits"}, {"ru"},
			-- loc_text("Буйство")),
	--[+ Traditional Chinese - 野蠻橫掃 +]--
	create_template("trait_bespoke_010_ext_tw",
		{"loc_trait_bespoke_increased_attack_cleave_on_multiple_hits"}, {"zh-tw"},
			loc_text("野蠻橫掃")),

	--[+ Devastating Strike - Разрушительный удар +]-- -- руоф Сокрушительный удар
	--[+ Russian +]--
	create_template("trait_bespoke_012_ext_ru",
		{"loc_trait_bespoke_infinite_melee_cleave_on_crit"}, {"ru"},
			loc_text("Разрушительный удар")),
	--[+ Traditional Chinese - 毀滅打擊 +]--
	create_template("trait_bespoke_012_ext_tw",
		{"loc_trait_bespoke_infinite_melee_cleave_on_crit"}, {"zh-tw"},
			loc_text("毀滅打擊")),

	--[+ Decimator - Дециматор +]--
	-- create_template("trait_bespoke_013_ext_ru",
		-- {"loc_trait_bespoke_chained_hits_increases_power_desc"}, {"ru"},
			-- loc_text("Дециматор")),
	--[+ Traditional Chinese - 屠戮者 +]--
	create_template("trait_bespoke_013_ext_tw",
		{"loc_trait_bespoke_chained_hits_increases_power_desc"}, {"zh-tw"},
			loc_text("屠戮者")),

	--[+ Brutal Momentum - Жестокий импульс +]-- -- руоф Суровый моментум
	--[+ Russian +]--
	create_template("trait_bespoke_014_ext_ru",
		{"loc_trait_bespoke_infinite_cleave_on_weakspot_kill"}, {"ru"},
			loc_text("Жестокий импульс")),
	--[+ Traditional Chinese - 野蠻攻勢 +]--
	create_template("trait_bespoke_014_ext_tw",
		{"loc_trait_bespoke_infinite_cleave_on_weakspot_kill"}, {"zh-tw"},
			loc_text("野蠻攻勢")),

	--[+ Limbsplitter - Расчленитель +]-- -- руоф Расщепитель
	--[+ Russian +]--
	create_template("trait_bespoke_015_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_first_attack"}, {"ru"},
			loc_text("Расчленитель")),
	--[+ Traditional Chinese - 斷肢者 +]--
	create_template("trait_bespoke_015_ext_tw",
		{"loc_trait_bespoke_power_bonus_on_first_attack"}, {"zh-tw"},
			loc_text("斷肢者")),

	--[+ All or Nothing +]--
	--[+ Russian - Всё или ничего - руоф Все или ничего +]--
	create_template("trait_bespoke_016_ext_ru",
		{"loc_trait_bespoke_power_bonus_scaled_on_stamina"}, {"ru"},
			loc_text("Всё или ничего")),
	--[+ Traditional Chinese - 孤注一擲 +]--
	create_template("trait_bespoke_016_ext_tw",
		{"loc_trait_bespoke_power_bonus_scaled_on_stamina"}, {"zh-tw"},
			loc_text("孤注一擲")),

	--[+ Decapitator - Обезглавливатель +]-- -- руоф Палач
	--[+ Russian +]--
	create_template("trait_bespoke_017_ext_ru",
		{"loc_trait_bespoke_stacking_rending_on_one_hit_kills"}, {"ru"},
			loc_text("Обезглавливатель")),
	--[+ Traditional Chinese - 斬首者 +]--
	create_template("trait_bespoke_017_ext_tw",
		{"loc_trait_bespoke_stacking_rending_on_one_hit_kills"}, {"zh-tw"},
			loc_text("斬首者")),

	--[+ Agile +]--
	--[+ Russian - Проворный - руоф Ловкий +]--
	create_template("trait_bespoke_018_ext_ru",
		{"loc_trait_bespoke_dodge_count_reset_on_weakspot_hit"}, {"ru"},
			loc_text("Проворный")),
	--[+ Traditional Chinese - 敏捷 +]--
	create_template("trait_bespoke_018_ext_tw",
		{"loc_trait_bespoke_dodge_count_reset_on_weakspot_hit"}, {"zh-tw"},
			loc_text("敏捷")),

	--[+ Slaughter Spree - Резня +]-- -- руоф  Убойная сила
	--[+ Russian +]--
	create_template("trait_bespoke_019_ext_ru",
		{"loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill"}, {"ru"},
			loc_text("Резня")),
	--[+ Traditional Chinese - 殺戮狂潮 +]--
	create_template("trait_bespoke_019_ext_tw",
		{"loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill"}, {"zh-tw"},
			loc_text("殺戮狂潮")),

	--[+ Relentless Strikes - Безжалостные удары +]-- -- руоф Безжалостность
	--[+ Russian +]--
	create_template("trait_bespoke_020_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_same_enemy_attacks"}, {"ru"},
			loc_text("Безжалостные удары")),
	--[+ Traditional Chinese - 持續打擊 +]--
	create_template("trait_bespoke_020_ext_tw",
		{"loc_trait_bespoke_power_bonus_on_same_enemy_attacks"}, {"zh-tw"},
			loc_text("持續打擊")),

	--[+ Flesh Tearer - Раздиратель плоти +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_021_ext_ru",
		-- {"loc_trait_bespoke_bleed_on_crit_melee"}, {"ru"},
			-- loc_text("Раздиратель плоти")),
	--[+ Traditional Chinese - 血肉撕裂者 +]--
	create_template("trait_bespoke_021_ext_ru",
		{"loc_trait_bespoke_bleed_on_crit_melee"}, {"zh-tw"},
			loc_text("血肉撕裂者")),

	--[+ Lacerate - Терзание +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_022_ext_ru",
		-- {"loc_trait_bespoke_bleed_on_non_weakspot_hit"}, {"ru"},
			-- loc_text("Терзание")),
	--[+ Traditional Chinese - 撕裂 +]--
	create_template("trait_bespoke_022_ext_tw",
		{"loc_trait_bespoke_bleed_on_non_weakspot_hit"}, {"zh-tw"},
			loc_text("撕裂")),

	--[+ Executor - Каратель +]-- -- руоф Экзекутор
	--[+ Russian +]--
	create_template("trait_bespoke_023_ext_ru",
		{"loc_trait_bespoke_chained_weakspot_hits_increases_power"}, {"ru"},
			loc_text("Каратель")),
	--[+ Traditional Chinese - 行刑者 +]--
	create_template("trait_bespoke_023_ext_tw",
		{"loc_trait_bespoke_chained_weakspot_hits_increases_power"}, {"zh-tw"},
			loc_text("行刑者")),

	--[+ Riposte - Ответный удар +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_024_ext_ru",
		-- {"loc_trait_bespoke_dodge_grants_crit_chance"}, {"ru"},
			-- loc_text("Ответный удар")),
	--[+ Traditional Chinese - 還擊 +]--
	create_template("trait_bespoke_024_ext_tw",
		{"loc_trait_bespoke_dodge_grants_crit_chance"}, {"zh-tw"},
			loc_text("還擊")),

	--[+ Precognition - Предвидение +]-- -- руоф Познание
	--[+ Russian +]--
	create_template("trait_bespoke_025_ext_ru",
		{"loc_trait_bespoke_dodge_grants_finesse_bonus"}, {"ru"},
			loc_text("Предвидение")),
	--[+ Traditional Chinese - 未卜先知 +]--
	create_template("trait_bespoke_025_ext_tw",
		{"loc_trait_bespoke_dodge_grants_finesse_bonus"}, {"zh-tw"},
			loc_text("未卜先知")),

	--[+ Haymaker - Жнец +]-- (*Косарь) -- руоф Коса
	--[+ Russian +]--
	create_template("trait_bespoke_026_ext_ru",
		{"loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance"}, {"ru"},
			loc_text("Жнец")),
	--[+ Traditional Chinese - 強力一擊 +]--
	create_template("trait_bespoke_026_ext_tw",
		{"loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance"}, {"zh-tw"},
			loc_text("強力一擊")),

	--[+ Smackdown - Сокрушение +]-- -- руоф Смятение
	--[+ Russian +]--
	create_template("trait_bespoke_027_ext_ru",
		{"loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy"}, {"ru"},
			loc_text("Сокрушение")),
	--[+ Traditional Chinese - 擊倒 +]--
	create_template("trait_bespoke_027_ext_tw",
		{"loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy"}, {"zh-tw"},
			loc_text("擊倒")),

	--[+ Mercy Killer - Милосердный убийца +]-- -- руоф Милосердие
	--[+ Russian +]--
	create_template("trait_bespoke_028_ext_ru",
		{"loc_trait_bespoke_increased_weakspot_damage_on_bleeding"}, {"ru"},
			loc_text("Милосердный убийца")),
	--[+ Traditional Chinese - 仁慈殺手 +]--
	create_template("trait_bespoke_028_ext_tw",
		{"loc_trait_bespoke_increased_weakspot_damage_on_bleeding"}, {"zh-tw"},
			loc_text("仁慈殺手")),

	--[+ Ruthless Backstab - Беспощадный удар в спину +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_029_ext_ru",
		-- {"loc_trait_bespoke_rending_on_backstabs"}, {"ru"},
			-- loc_text("Беспощадный удар в спину")),
	--[+ Traditional Chinese - 無情背刺 +]--
	create_template("trait_bespoke_029_ext_tw",
		{"loc_trait_bespoke_rending_on_backstabs"}, {"zh-tw"},
			loc_text("無情背刺")),

	--[+ Uncanny Strike - Жуткий удар +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_030_ext_ru",
		-- {"loc_trait_bespoke_stacking_rending_on_weakspot"}, {"ru"},
			-- loc_text("Жуткий удар")),
	--[+ Traditional Chinese - 詭異打擊 +]--
	create_template("trait_bespoke_030_ext_tw",
		{"loc_trait_bespoke_stacking_rending_on_weakspot"}, {"zh-tw"},
			loc_text("詭異打擊")),

	--[+ Trauma - Травма +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_031_ext_ru",
		-- {"loc_trait_bespoke_consecutive_hits_increases_stagger"}, {"ru"},
			-- loc_text("Травма")),
	--[+ Traditional Chinese - 創傷 +]--
	create_template("trait_bespoke_031_ext_tw",
		{"loc_trait_bespoke_consecutive_hits_increases_stagger"}, {"zh-tw"},
			loc_text("創傷")),

	--[+ Vicious Slice - Жестокий рарез +]-- -- руоф Жестокая нарезка
	--[+ Russian +]--
	create_template("trait_bespoke_032_ext_ru",
		{"loc_trait_bespoke_increase_stagger_per_hit_in_sweep"}, {"ru"},
			loc_text("Жестокий рарез")),
	--[+ Traditional Chinese - 凶狠切割 +]--
	create_template("trait_bespoke_032_ext_tw",
		{"loc_trait_bespoke_increase_stagger_per_hit_in_sweep"}, {"zh-tw"},
			loc_text("凶狠切割")),

	--[+ Hammerblow - Молотобой +]-- -- руоф Удар молотом
	--[+ Russian +]--
	create_template("trait_bespoke_033_ext_ru",
		{"loc_trait_bespoke_stacking_increase_impact_on_hit"}, {"ru"},
			loc_text("Молотобой")),
	--[+ Traditional Chinese - 錘擊 +]--
	create_template("trait_bespoke_033_ext_tw",
		{"loc_trait_bespoke_stacking_increase_impact_on_hit"}, {"zh-tw"},
			loc_text("錘擊")),

	--[+ Skullcrusher - Череподробитель +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_034_ext_ru",
		-- {"loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff"}, {"ru"},
			-- loc_text("Череподробитель")),
	--[+ Traditional Chinese - 粉碎者 +]--
	create_template("trait_bespoke_034_ext_tw",
		{"loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff"}, {"zh-tw"},
			loc_text("粉碎者")),

	--[+ Thunderstrike - Громобой +]-- -- руоф Гроза
	--[+ Russian +]--
	create_template("trait_bespoke_035_ext_ru",
		{"loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff"}, {"ru"},
			loc_text("Громобой")),
	--[+ Traditional Chinese - 雷霆打擊 +]--
	create_template("trait_bespoke_035_ext_tw",
		{"loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff"}, {"zh-tw"},
			loc_text("雷霆打擊")),

	--[+ Chained Deathblow - Цепочка смертельных ударов +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_036_ext_ru",
		-- {"loc_trait_bespoke_increased_crit_chance_on_weakspot_kill"}, {"ru"},
			-- loc_text("Цепочка смертельных ударов")),
	--[+ Traditional Chinese - 致命連擊 +]--
	create_template("trait_bespoke_036_ext_tw",
		{"loc_trait_bespoke_increased_crit_chance_on_weakspot_kill"}, {"zh-tw"},
			loc_text("致命連擊")),

	--[+ Deathblow - Смертельный удар +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_037_ext_ru",
		-- {"loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill"}, {"ru"},
			-- loc_text("Смертельный удар")),
	--[+ Traditional Chinese - 致命一擊 +]--
	create_template("trait_bespoke_037_ext_tw",
		{"loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill"}, {"zh-tw"},
			loc_text("致命一擊")),

	--[+ Perfect Strike - Безупречный удар +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_038_ext_ru",
		-- {"loc_trait_bespoke_pass_past_armor_on_crit_new"}, {"ru"},
			-- loc_text("Безупречный удар")),
	--[+ Traditional Chinese - 完美一擊 +]--
	create_template("trait_bespoke_038_ext_tw",
		{"loc_trait_bespoke_pass_past_armor_on_crit_new"}, {"zh-tw"},
			loc_text("完美一擊")),

	--[+ Bladed Momentum +]--
	--[+ Russian - Импульс лезвия - руоф Моментум лезвия +]--
	create_template("trait_bespoke_039_ext_ru",
		{"loc_trait_bespoke_stacking_rending_on_cleave"}, {"ru"},
			loc_text("Импульс лезвия")),
	--[+ Traditional Chinese - 利刃攻勢 +]--
	create_template("trait_bespoke_039_ext_tw",
		{"loc_trait_bespoke_stacking_rending_on_cleave"}, {"zh-tw"},
			loc_text("利刃攻勢")),

	--[+ Deflector - Отражатель +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_040_ext_ru",
		-- {"loc_trait_bespoke_can_block_ranged_desc"}, {"ru"},
			-- loc_text("Отражатель")),
	--[+ Traditional Chinese - 偏轉 +]--
	create_template("trait_bespoke_040_ext_tw",
		{"loc_trait_bespoke_can_block_ranged_desc"}, {"zh-tw"},
			loc_text("偏轉")),

	--[+ Exorcist - Экзорцист +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_041_ext_ru",
		-- {"loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge"}, {"ru"},
			-- loc_text("Экзорцист")),
	--[+ Traditional Chinese - 驅魔者 +]--
	create_template("trait_bespoke_041_ext_tw",
		{"loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge"}, {"zh-tw"},
			loc_text("驅魔者")),

	--[+ Superiority - Превосходство +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_042_ext_ru",
		-- {"loc_trait_bespoke_elite_kills_grants_stackable_power"}, {"ru"},
			-- loc_text("Превосходство")),
	--[+ Traditional Chinese - 優勢 +]--
	create_template("trait_bespoke_042_ext_tw",
		{"loc_trait_bespoke_elite_kills_grants_stackable_power"}, {"zh-tw"},
			loc_text("優勢")),

	--[+ Blazing Spirit - Пылающий дух +]--
	--[+ Russian +]--
		 create_template("trait_bespoke_043_ext_ru",
		{"loc_trait_bespoke_warp_burninating_on_crit"}, {"ru"},
			loc_text("Пылающий дух")),
	--[+ Traditional Chinese - 燃燒靈魂 +]--
	create_template("trait_bespoke_043_ext_tw",
		{"loc_trait_bespoke_warp_burninating_on_crit"}, {"zh-tw"},
			loc_text("燃燒靈魂")),

	--[+ Unstable Power - Нестабильная мощь +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_044_ext_ru",
		-- {"loc_trait_bespoke_warp_charge_power_bonus"}, {"ru"},
			-- loc_text("Нестабильная мощь")),
	--[+ Traditional Chinese - 不穩定能量 +]--
	create_template("trait_bespoke_044_ext_tw",
		{"loc_trait_bespoke_warp_charge_power_bonus"}, {"zh-tw"},
			loc_text("不穩定能量")),

	--[+ Lightning Reflexes - Молниеносные рефлексы +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_045_ext_ru",
		-- {"loc_trait_bespoke_block_has_chance_to_stun_with_cd"}, {"ru"},
			-- loc_text("Молниеносные рефлексы")),
	--[+ Traditional Chinese - 閃電反射 +]--
	create_template("trait_bespoke_045_ext_tw",
		{"loc_trait_bespoke_block_has_chance_to_stun_with_cd"}, {"zh-tw"},
			loc_text("閃電反射")),

	--[+ High Voltage - Высокое напряжение +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_046_ext_ru",
		-- {"loc_trait_bespoke_damage_bonus_vs_electrocuded"}, {"ru"},
			-- loc_text("Высокое напряжение")),
	--[+ Traditional Chinese - 高壓電 +]--
	create_template("trait_bespoke_046_ext_tw",
		{"loc_trait_bespoke_damage_bonus_vs_electrocuded"}, {"zh-tw"},
			loc_text("高壓電")),

	--[+ Falter - Дрожь +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_047_ext_ru",
		-- {"loc_trait_bespoke_negate_stagger_reduction_on_weakspot"}, {"ru"},
			-- loc_text("Дрожь")),
	--[+ Traditional Chinese - 踉蹌 +]--
	create_template("trait_bespoke_047_ext_tw",
		{"loc_trait_bespoke_negate_stagger_reduction_on_weakspot"}, {"zh-tw"},
			loc_text("踉蹌")),

	--[+ Overwhelming Force - Подавляющая сила +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_048_ext_ru",
		-- {"loc_trait_bespoke_staggering_hits_has_chance_to_stun"}, {"ru"},
			-- loc_text("Подавляющая сила")),
	--[+ Traditional Chinese - 壓倒性的武力 +]--
	create_template("trait_bespoke_048_ext_tw",
		{"loc_trait_bespoke_staggering_hits_has_chance_to_stun"}, {"zh-tw"},
			loc_text("壓倒性的武力")),

	--[+ Momentum - Моментум +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_049_ext_ru",
		-- {"loc_trait_bespoke_toughness_recovery_on_multiple_hits"}, {"ru"},
			-- loc_text("Моментум")),
	--[+ Traditional Chinese - 勢頭 +]--
	create_template("trait_bespoke_049_ext_tw",
		{"loc_trait_bespoke_toughness_recovery_on_multiple_hits"}, {"zh-tw"},
			loc_text("勢頭")),

	--[+ Shock & Awe / Shock and Awe - Шок и трепет +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_74_ext_ru",
		-- {"loc_trait_bespoke_hit_mass_consumption_reduction_on_kill"}, {"ru"},
			-- loc_text("Шок и трепет")),
	--[+ Traditional Chinese - 震懾 +]--
	create_template("trait_bespoke_74_ext_tw",
		{"loc_trait_bespoke_hit_mass_consumption_reduction_on_kill"}, {"zh-tw"},
			loc_text("震懾")),

	--[+ Take a Swing - Замах +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_050_ext_ru",
		-- {"loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies"}, {"ru"},
			-- loc_text("Замах")),
	--[+ Traditional Chinese - 揮拳出擊 +]--
	create_template("trait_bespoke_050_ext_tw",
		{"loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies"}, {"zh-tw"},
			loc_text("揮拳出擊")),

	--[+ Supercharge - Суперзаряд +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_051_ext_ru",
		-- {"loc_trait_bespoke_armor_rend_on_activated_attacks"}, {"ru"},
			-- loc_text("Суперзаряд")),
	--[+ Traditional Chinese - 超級充能 +]--
	create_template("trait_bespoke_051_ext_tw",
		{"loc_trait_bespoke_armor_rend_on_activated_attacks"}, {"zh-tw"},
			loc_text("超級充能")),

	--[+ Power Cycler - Циклер мощности +]-- -- руоф Цикл силы
	--[+ Russian +]--
	-- create_template("trait_bespoke_052_ext_ru",
		-- {"loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks"}, {"ru"},
			-- loc_text("Циклер мощности")),
	--[+ Traditional Chinese - 能量循環 +]--
	create_template("trait_bespoke_052_ext_tw",
		{"loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks"}, {"zh-tw"},
			loc_text("能量循環")),
			
	--[+ Sunder - Сокрушение +]-- -- руоф Сандер
	--[+ Russian +]--
	create_template("trait_bespoke_053_ext_ru",
		{"loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks"}, {"ru"},
			loc_text("Сокрушение")),
	--[+ Traditional Chinese - 破甲 +]--
	create_template("trait_bespoke_053_ext_tw",
		{"loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks"}, {"zh-tw"},
			loc_text("破甲")),


	--[+ Sucker Punch - Удар исподтишка +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_054_ext_ru",
		-- {"loc_trait_bespoke_increased_crit_chance_after_punch"}, {"ru"},
			-- loc_text("Удар исподтишка")),
	--[+ Traditional Chinese - 突然襲擊 +]--
	create_template("trait_bespoke_054_ext_tw",
		{"loc_trait_bespoke_increased_crit_chance_after_punch"}, {"zh-tw"},
			loc_text("突然襲擊")),

	--[+ Confident Strike - Уверенный удар +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_055_ext_ru",
		-- {"loc_trait_bespoke_toughness_recovery_on_chained_attacks"}, {"ru"},
			-- loc_text("Уверенный удар")),
	--[+ Traditional Chinese - 堅定打擊 +]--
	create_template("trait_bespoke_055_ext_tw",
		{"loc_trait_bespoke_toughness_recovery_on_chained_attacks"}, {"zh-tw"},
			loc_text("堅定打擊")),

	--[+ No Guts, No Glory - Нет смелости — нет славы +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_056_ext_ru",
		-- {"loc_trait_bespoke_toughness_regen_on_punching_elites"}, {"ru"},
			-- loc_text("Нет смелости — нет славы")),
	--[+ Traditional Chinese - 不入虎穴，焉得虎子 +]--
	create_template("trait_bespoke_056_ext_tw",
		{"loc_trait_bespoke_toughness_regen_on_punching_elites"}, {"zh-tw"},
			loc_text("不入虎穴，焉得虎子")),

	--[+ Bash - Удар +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_057_ext_ru",
		-- {"loc_trait_bespoke_crit_chance_on_push"}, {"ru"},
			-- loc_text("Удар")),
	--[+ Traditional Chinese - 猛撞 +]--
	create_template("trait_bespoke_057_ext_tw",
		{"loc_trait_bespoke_crit_chance_on_push"}, {"zh-tw"},
			loc_text("猛撞")),

	--[+ Tenderiser - Молот мясника +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_058_ext_ru",
		-- {"loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits"}, {"ru"},
			-- loc_text("Молот мясника")),
	--[+ Traditional Chinese - 肉槌 +]--
	create_template("trait_bespoke_058_ext_tw",
		{"loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits"}, {"zh-tw"},
			loc_text("肉槌")),

	--[+ Unstoppable Force - Неудержимая сила +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_059_ext_ru",
		-- {"loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack"}, {"ru"},
			-- loc_text("Неудержимая сила")),
	--[+ Traditional Chinese - 勢不可擋 +]--
	create_template("trait_bespoke_059_ext_tw",
		{"loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack"}, {"zh-tw"},
			loc_text("勢不可擋")),

	--[+ Torment - Истязание +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_060_ext_ru",
		-- {"loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"}, {"ru"},
			-- loc_text("Истязание")),
	--[+ Traditional Chinese - 凌遲 +]--
	create_template("trait_bespoke_060_ext_tw",
		{"loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"}, {"zh-tw"},
			loc_text("凌遲")),

	--[+ Slow and Steady - Медленно, но верно +]-- -- руоф Медленный и упорный
	--[+ Russian +]--
	create_template("trait_bespoke_061_ext_ru",
		{"loc_trait_bespoke_toughness_on_hit_based_on_charge_time"}, {"ru"},
			loc_text("Медленно, но верно")),
	--[+ Traditional Chinese - 緩慢而確實 +]--
	create_template("trait_bespoke_061_ext_tw",
		{"loc_talent_bespoke_toughness_on_hit_based_on_charge_time"}, {"zh-tw"},
			loc_text("緩慢而確實")),

	--[+ Power Surge - Энергетический заряд +]-- -- руоф Скачок напряжения
	--[+ Russian +]--
	create_template("trait_bespoke_062_ext_ru",
		{"loc_trait_bespoke_explosion_on_activated_attacks_on_armor"}, {"ru"},
			loc_text("Энергетический заряд")),
	--[+ Traditional Chinese - 能量湧動 +]--
	create_template("trait_bespoke_062_ext_tw",
		{"loc_trait_bespoke_explosion_on_activated_attacks_on_armor"}, {"zh-tw"},
			loc_text("能量湧動")),

	--[+ Last Guard - Последний страж +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_063_ext_ru",
		-- {"loc_trait_block_break_pushes"}, {"ru"},
			-- loc_text("Последний страж")),
	--[+ Traditional Chinese - 最後防線 +]--
	create_template("trait_bespoke_063_ext_tw",
		{"loc_trait_block_break_pushes"}, {"zh-tw"},
			loc_text("最後防線")),

	--[+ Offensive Defence - Атакующая защита +]-- -- руоф Активная оборона
	--[+ Russian +]--
	-- create_template("trait_bespoke_064_ext_ru",
		-- {"loc_trait_damage_bonus_on_block"}, {"ru"},
			-- loc_text("Атакующая защита")),
	--[+ Traditional Chinese - 反守為攻 +]--
	create_template("trait_bespoke_064_ext_tw",
		{"loc_trait_damage_bonus_on_block"}, {"zh-tw"},
			loc_text("反守為攻")),

	--[+ Murderous Tranquility - Убийственное спокойствие +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_065_ext_ru",
		-- {"loc_trait_bespoke_vent_warp_charge_on_multiple_hits"}, {"ru"},
			-- loc_text("Убийственное спокойствие")),
	--[+ Traditional Chinese - 兇殘之寧 +]--
	create_template("trait_bespoke_065_ext_tw",
		{"loc_trait_bespoke_vent_warp_charge_on_multiple_hits"}, {"zh-tw"},
			loc_text("兇殘之寧")),

	--[+ Warp Slice - Варп нарезка +]-- -- руоф Варп-удар
	--[+ Russian +]--
	create_template("trait_bespoke_066_ext_ru",
		{"loc_trait_bespoke_wind_slash_crits"}, {"ru"},
			loc_text("Варп нарезка")),
	--[+ Traditional Chinese - 亞空間斬擊 +]--
	create_template("trait_bespoke_066_ext_tw",
		{"loc_trait_bespoke_wind_slash_crits"}, {"zh-tw"},
			loc_text("亞空間斬擊")),

	--[+ Ranged - Дальний бой +]--
	--[+ Russian +]--
	--[+ Raking Fire - Огонь по тылам +]-- -- руоф Обстрел
	-- create_template("trait_bespoke_065_ext_ru",
		-- {"loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking"}, {"ru"},
			-- loc_text("Огонь по тылам")),
	--[+ Traditional Chinese - 掃射 +]--
	create_template("trait_bespoke_065_ext_tw",
		{"loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking"}, {"zh-tw"},
			loc_text("掃射")),

	--[+ Dumdum - Дум-дум +]-- -- руоф Дамдам
	--[+ Russian +]--
	create_template("trait_bespoke_066_ext_ru",
		{"loc_trait_bespoke_consecutive_hits_increases_close_damage"}, {"ru"},
			loc_text("Дум-дум")),
	--[+ Traditional Chinese - 達姆彈 +]--
	create_template("trait_bespoke_066_ext_tw",
		{"loc_trait_bespoke_consecutive_hits_increases_close_damage"}, {"zh-tw"},
			loc_text("達姆彈")),

	--[+ Hit & Run /  Hit and Run - Бей и беги +]--
	-- create_template("trait_bespoke_067_ext_ru",
		-- {"loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill"}, {"ru"},
			-- loc_text("Бей и беги")),
	--[+ Traditional Chinese - 游擊 +]--
	create_template("trait_bespoke_067_ext_tw",
		{"loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill"}, {"zh-tw"},
			loc_text("游擊")),

	--[+ Sustained Fire - Непрерывная стрельба +]-- -- руоф Непрерывный огонь
	--[+ Russian +]--
	create_template("trait_bespoke_068_ext_ru",
		{"loc_trait_bespoke_followup_shots_ranged_damage"}, {"ru"},
			loc_text("Непрерывная стрельба")),
	--[+ Traditional Chinese - 持續射擊 +]--
	create_template("trait_bespoke_068_ext_tw",
		{"loc_trait_bespoke_followup_shots_ranged_damage"}, {"zh-tw"},
			loc_text("持續射擊")),

	--[+ Punishing Salvo - Карательный залп +]--
	-- create_template("trait_bespoke_069_ext_ru",
		-- {"loc_trait_bespoke_followup_shots_ranged_weakspot_damage"}, {"ru"},
			-- loc_text("Карательный залп")),
	--[+ Traditional Chinese - 懲罰射擊 +]--
	create_template("trait_bespoke_069_ext_tw",
		{"loc_trait_bespoke_followup_shots_ranged_weakspot_damage"}, {"zh-tw"},
			loc_text("懲罰射擊")),

	--[+ Fire Frenzy - Неистовая стрельба +]-- -- руоф Огненное неистовство
	--[+ Russian +]--
	create_template("trait_bespoke_070_ext_ru",
		{"loc_trait_bespoke_increase_close_damage_on_close_kill"}, {"ru"},
			loc_text("Неистовая стрельба")),
	--[+ Traditional Chinese - 烈火熱焰 +]--
	create_template("trait_bespoke_070_ext_tw",
		{"loc_trait_bespoke_increase_close_damage_on_close_kill"}, {"zh-tw"},
			loc_text("烈火熱焰")),

	--[+ Deathspitter - Смертоплюй +]-- -- руоф Смертоносец
	--[+ Russian +]--
	create_template("trait_bespoke_071_ext_ru",
		{"loc_trait_bespoke_increase_power_on_close_kill"}, {"ru"},
			loc_text("Смертоплюй")),
	--[+ Traditional Chinese - 死亡噴吐 +]--
	create_template("trait_bespoke_071_ext_tw",
		{"loc_trait_bespoke_increase_power_on_close_kill"}, {"zh-tw"},
			loc_text("死亡噴吐")),

	--[+ Stripped Down - Сбросить лишнее +]-- -- руоф Срез
	--[+ Russian +]--
	create_template("trait_bespoke_072_ext_ru",
		{"loc_trait_bespoke_increased_sprint_speed"}, {"ru"},
			loc_text("Сбросить лишнее")),
	--[+ Traditional Chinese - 輕裝 +]--
	create_template("trait_bespoke_072_ext_tw",
		{"loc_trait_bespoke_increased_sprint_speed"}, {"zh-tw"},
			loc_text("輕裝")),

	--[+ Speedload - Быстрая перезарядка +]-- -- руоф Скоростная загрузка (facepalm)
	--[+ Russian +]--
	create_template("trait_bespoke_073_ext_ru",
		{"loc_trait_bespoke_reload_speed_on_slide"}, {"ru"},
			loc_text("Быстрая перезарядка")),
	--[+ Traditional Chinese - 快速裝彈 +]--
	create_template("trait_bespoke_073_ext_tw",
		{"loc_trait_bespoke_reload_speed_on_slide"}, {"zh-tw"},
			loc_text("快速裝彈")),

	--[+ Terrifying Barrage - Устрашающий обстрел +]-- -- руоф Устрашающий натиск
	--[+ Russian +]--
	create_template("trait_bespoke_074_ext_ru",
		{"loc_trait_bespoke_suppression_on_close_kill"}, {"ru"},
			loc_text("Устрашающий огонь")),
	--[+ Traditional Chinese - 恐怖阻擊 +]--
	create_template("trait_bespoke_074_ext_tw",
		{"loc_trait_bespoke_suppression_on_close_kill"}, {"zh-tw"},
			loc_text("恐怖阻擊")),

	--[+ Roaring Advance - Ревущее наступление +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_075_ext_ru",
		-- {"loc_trait_bespoke_movement_speed_on_continuous_fire"}, {"ru"},
			-- loc_text("Ревущее наступление")),
	--[+ Traditional Chinese - 咆哮突進 +]--
	create_template("trait_bespoke_075_ext_tw",
		{"loc_trait_bespoke_movement_speed_on_continuous_fire"}, {"zh-tw"},
			loc_text("咆哮突進")),

	--[+ Ceaseless Barrage - Непрерывный обстрел +]-- -- руоф Беспощадный натиск
	--[+ Russian +]--
	create_template("trait_bespoke_076_ext_ru",
		{"loc_trait_bespoke_suppression_on_continuous_fire"}, {"ru"},
			loc_text("Непрерывный огонь")),
	--[+ Traditional Chinese - 持續阻擊 +]--
	create_template("trait_bespoke_076_ext_tw",
		{"loc_trait_bespoke_suppression_on_continuous_fire"}, {"zh-tw"},
			loc_text("持續阻擊")),

	--[+ Inspiring Barrage - Вдохновляющий обстрел +]-- -- руоф Вдохновляющий натиск
	--[+ Russian +]--
	create_template("trait_bespoke_077_ext_ru",
		{"loc_trait_bespoke_toughness_on_continuous_fire"}, {"ru"},
			loc_text("Вдохновляющий обстрел")),
	--[+ Traditional Chinese - 振奮彈幕 +]--
	create_template("trait_bespoke_077_ext_tw",
		{"loc_trait_bespoke_toughness_on_continuous_fire"}, {"zh-tw"},
			loc_text("振奮彈幕")),

	--[+ Ghost - Призрак +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_078_ext_ru",
		-- {"loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot"}, {"ru"},
			-- loc_text("Призрак")),
	--[+ Traditional Chinese - 幽靈 +]--
	create_template("trait_bespoke_078_ext_tw",
		{"loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot"}, {"zh-tw"},
			loc_text("幽靈")),

	--[+ Surgical - Снайперская точность - +]-- -- руоф Зоркость
	--[+ Russian +]--
	create_template("trait_bespoke_079_ext_ru",
		{"loc_trait_bespoke_crit_chance_based_on_aim_time"}, {"ru"},
			loc_text("Снайперская точность")),
	--[+ Traditional Chinese - 精確打擊 +]--
	create_template("trait_bespoke_079_ext_tw",
		{"loc_trait_bespoke_crit_chance_based_on_aim_time"}, {"zh-tw"},
			loc_text("精確打擊")),

	--[+ Crucian Roulette - Круцианская рулетка +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_080_ext_ru",
		-- {"loc_trait_bespoke_crit_chance_based_on_ammo_left"}, {"ru"},
			-- loc_text("Круцианская рулетка")),
	--[+ Traditional Chinese - 克魯錫安輪盤 +]--
	create_template("trait_bespoke_080_ext_tw",
		{"loc_trait_bespoke_crit_chance_based_on_ammo_left"}, {"zh-tw"},
			loc_text("克魯錫安輪盤")),

	--[+ Deadly Accurate - Смертоностная точность +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_081_ext_ru",
		-- {"loc_trait_bespoke_crit_weakspot_finesse"}, {"ru"},
			-- loc_text("Смертоностная точность")),
	--[+ Traditional Chinese - 致命精準 +]--
	create_template("trait_bespoke_081_ext_tw",
		{"loc_trait_bespoke_crit_weakspot_finesse"}, {"zh-tw"},
			loc_text("致命精準")),

	--[+ No Respite - Без передышки +]-- -- руоф Нет отдыху
	--[+ Russian +]--
	create_template("trait_bespoke_082_ext_ru",
		{"loc_trait_bespoke_stagger_count_bonus_damage"}, {"ru"},
			loc_text("Без передышки")),
	--[+ Traditional Chinese - 刻不容緩 +]--
	create_template("trait_bespoke_082_ext_tw",
		{"loc_trait_bespoke_stagger_count_bonus_damage"}, {"zh-tw"},
			loc_text("刻不容緩")),

	--[+ Opening Salvo - Первый выстрел залпа +]-- -- руоф Открывающий залп
	--[+ Russian +]--
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
	--[+ Traditional Chinese - 開啟齊射 +]--
	create_template("trait_bespoke_083_ext_tw",
		{"loc_trait_bespoke_power_bonus_on_first_shot"}, {"zh-tw"},
			loc_text("開啟齊射")),

	--[+ Blaze Away - Стрельба без устали +]-- -- руоф Энтузиазм
	--[+ Russian +]--
	create_template("trait_bespoke_086_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_continuous_fire"}, {"ru"},
			loc_text("Стрельба без устали")),
	--[+ Traditional Chinese - 連續發射 +]--
	create_template("trait_bespoke_086_ext_tw",
		{"loc_trait_bespoke_power_bonus_on_continuous_fire"}, {"zh-tw"},
			loc_text("連續發射")),

	--[+ Powderburn - Пороховой ожог +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_087_ext_ru",
		-- {"loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills"}, {"ru"},
			-- loc_text("Пороховой ожог")),
	--[+ Traditional Chinese - 火藥灼傷 +]--
	create_template("trait_bespoke_087_ext_tw",
		{"loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills"}, {"zh-tw"},
			loc_text("火藥灼傷")),

	--[+ Cavalcade - Кавалькада +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_088_ext_ru",
		-- {"loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire"}, {"ru"},
			-- loc_text("Кавалькада")),
	--[+ Traditional Chinese - 接連不斷 +]--
	create_template("trait_bespoke_088_ext_tw",
		{"loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire"}, {"zh-tw"},
			loc_text("接連不斷")),

	--[+ Pinning Fire - Подавляющий огонь +]-- -- руоф Схватывающий огонь
	--[+ Russian +]--
	create_template("trait_bespoke_089_ext_ru",
		{"loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies"}, {"ru"},
			loc_text("Подавляющий огонь")),
	--[+ Traditional Chinese - 鉗制射擊 +]--
	create_template("trait_bespoke_089_ext_tw",
		{"loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies"}, {"zh-tw"},
			loc_text("鉗制射擊")),

	--[+ Run 'n' Gun (Run and Gun) - Стреляй и беги +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_090_ext_ru",
		-- {"loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats"}, {"ru"},
			-- loc_text("Стреляй и беги")),
	--[+ Traditional Chinese - 連跑帶打 +]--
	create_template("trait_bespoke_090_ext_tw",
		{"loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats"}, {"zh-tw"},
			loc_text("連跑帶打")),

	--[+ Puncture - Прокол +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_091_ext_ru",
		-- {"loc_trait_bespoke_bleed_on_ranged"}, {"ru"},
			-- loc_text("Прокол")),
	--[+ Traditional Chinese - 出血穿透 +]--
	create_template("trait_bespoke_091_ext_tw",
		{"loc_trait_bespoke_bleed_on_ranged"}, {"zh-tw"},
			loc_text("出血穿透")),

	--[+ Lethal Proximity - Смертельное сближение +]--
	--[+ Russian +]--
	create_template("trait_bespoke_092_ext_ru",
		{"loc_trait_bespoke_close_explosion"}, {"ru"},
			loc_text("Смертельное сближение")),
	--[+ Traditional Chinese - 致命零距離 +]--
	create_template("trait_bespoke_092_ext_tw",
		{"loc_trait_bespoke_close_explosion"}, {"zh-tw"},
			loc_text("致命零距離")),

	--[+ Point Blank - В упор +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_093_ext_ru",
		-- {"loc_trait_bespoke_crit_chance_bonus_on_melee_kills"}, {"ru"},
			-- loc_text("В упор")),
	--[+ Traditional Chinese - 近身平射 +]--
	create_template("trait_bespoke_093_ext_tw",
		{"loc_trait_bespoke_crit_chance_bonus_on_melee_kills"}, {"zh-tw"},
			loc_text("近身平射")),

	--[+ Execution - Казнь +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_094_ext_ru",
		-- {"loc_trait_bespoke_damage_vs_stagger"}, {"ru"},
			-- loc_text("Казнь")),
	--[+ Traditional Chinese - 處決 +]--
	create_template("trait_bespoke_094_ext_tw",
		{"loc_trait_bespoke_damage_vs_stagger"}, {"zh-tw"},
			loc_text("處決")),

	--[+ Gloryhunter - Охотник за славой +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_095_ext_ru",
		-- {"loc_trait_bespoke_toughness_on_elite_kills"}, {"ru"},
			-- loc_text("Охотник за славой")),
	--[+ Traditional Chinese - 榮耀獵手 +]--
	create_template("trait_bespoke_095_ext_tw",
		{"loc_trait_bespoke_toughness_on_elite_kills"}, {"zh-tw"},
			loc_text("榮耀獵手")),

	--[+ Surge - Энергетический всплеск +]-- -- руоф Импульс
	--[+ Russian +]--
	create_template("trait_bespoke_096_ext_ru",
		{"loc_trait_bespoke_double_shot_on_crit"}, {"ru"},
			loc_text("Энергетический всплеск")),
	--[+ Traditional Chinese - 湧動 +]--
	create_template("trait_bespoke_096_ext_tw",
		{"loc_trait_bespoke_double_shot_on_crit"}, {"zh-tw"},
			loc_text("湧動")),


	--[+ Warp Flurry - Варп-шквал +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_097_ext_ru",
		-- {"loc_trait_bespoke_faster_charge_on_chained_secondary_attacks"}, {"ru"},
			-- loc_text("Варп-шквал")),
	--[+ Traditional Chinese - 亞空間亂舞 +]--
	create_template("trait_bespoke_097_ext_tw",
		{"loc_trait_bespoke_faster_charge_on_chained_secondary_attacks"}, {"zh-tw"},
			loc_text("亞空間亂舞")),

	--[+ Warp Nexus - Связь с варпом +]-- -- руоф Варп-сектор
	--[+ Russian +]--
	create_template("trait_bespoke_098_ext_ru",
		{"loc_trait_bespoke_increased_crit_chance_scaled_on_peril"}, {"ru"},
			loc_text("Связь с варпом")),
	--[+ Traditional Chinese - 亞空間樞紐 +]--
	create_template("trait_bespoke_098_ext_tw",
		{"loc_trait_bespoke_increased_crit_chance_scaled_on_peril"}, {"zh-tw"},
			loc_text("亞空間樞紐")),

	--[+ Transfer Peril - Перемещение опасности +]-- -- руоф Перемещение угрозы
	--[+ Russian +]--
	create_template("trait_bespoke_099_ext_ru",
		{"loc_trait_bespoke_peril_vent_on_weakspot_hit"}, {"ru"},
			loc_text("Перемещение опасности")),
	--[+ Traditional Chinese - 轉移反噬 +]--
	create_template("trait_bespoke_099_ext_tw",
		{"loc_trait_bespoke_peril_vent_on_weakspot_hit"}, {"zh-tw"},
			loc_text("轉移反噬")),

	--[+ Rending Shockwave - Разрушительная волна +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_100_ext_ru",
		-- {"loc_trait_bespoke_rend_armor_on_aoe_charge"}, {"ru"},
			-- loc_text("Разрушительная волна")),
	--[+ Traditional Chinese - 撕扯震盪 +]--
	create_template("trait_bespoke_100_ext_tw",
		{"loc_trait_bespoke_rend_armor_on_aoe_charge"}, {"zh-tw"},
			loc_text("撕扯震盪")),

	--[+ Focused Channelling - Сосредоточенный призыв +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_101_ext_ru",
		-- {"loc_trait_bespoke_uninterruptable_while_charging_and_movement"}, {"ru"},
			-- loc_text("Сосредоточенный призыв")),
	--[+ Traditional Chinese - 專注引導 +]--
	create_template("trait_bespoke_101_ext_tw",
		{"loc_trait_bespoke_uninterruptable_while_charging_and_movement"}, {"zh-tw"},
			loc_text("專注引導")),

	--[+ Blazing Spirit - Пылающий дух - руоф Пламенный дух +]--
	--[+ Russian +]--
	create_template("trait_bespoke_102_ext_ru",
		{"loc_trait_bespoke_warpfire_burn_on_crit"}, {"ru"},
			loc_text("Пылающий дух")),
	--[+ Traditional Chinese - 燃燒靈魂 +]--
	create_template("trait_bespoke_102_ext_tw",
		{"loc_trait_bespoke_warpfire_burn_on_crit"}, {"zh-tw"},
			loc_text("燃燒靈魂")),

	--[+ Penetrating Flame - Проникающее пламя +]-- -- руоф Убойное пламя
	--[+ Russian +]--
	create_template("trait_bespoke_103_ext_ru",
		{"loc_trait_bespoke_armor_rending_from_dot_burning"}, {"ru"},
			loc_text("Проникающее пламя")),
	--[+ Traditional Chinese - 穿透火焰 +]--
	create_template("trait_bespoke_103_ext_tw",
		{"loc_trait_bespoke_armor_rending_from_dot_burning"}, {"zh-tw"},
			loc_text("穿透火焰")),

	--[+ Showstopper - Взрывной финал +]-- -- руоф Театральная пауза
	--[+ Russian +]--
	create_template("trait_bespoke_104_ext_ru",
		{"loc_trait_bespoke_chance_to_explode_elites_on_kill"}, {"ru"},
			loc_text("Взрывной финал")),
	--[+ Traditional Chinese - 嘆為觀止 +]--
	create_template("trait_bespoke_104_ext_tw",
		{"loc_trait_bespoke_chance_to_explode_elites_on_kill"}, {"zh-tw"},
			loc_text("嘆為觀止")),


	--[+ Infernus - Инфернус +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_105_ext_ru",
		-- {"loc_trait_bespoke_burninating_on_crit"}, {"ru"},
			-- loc_text("Инфернус")),
	--[+ Traditional Chinese - 煉獄 +]--
	create_template("trait_bespoke_105_ext_tw",
		{"loc_trait_bespoke_burninating_on_crit"}, {"zh-tw"},
			loc_text("煉獄")),

	--[+ Efficiency - Эффективность +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_106_ext_ru",
		-- {"loc_trait_bespoke_first_shot_ammo_cost_reduction"}, {"ru"},
			-- loc_text("Эффективность")),
	--[+ Traditional Chinese - 效率 +]--
	create_template("trait_bespoke_106_ext_tw",
		{"loc_trait_bespoke_first_shot_ammo_cost_reduction"}, {"zh-tw"},
			loc_text("效率")),

	--[+ Concentrated Fire - Сосредоточенный огонь +]-- -- руоф Интенсивный огонь
	--[+ Russian +]--
	create_template("trait_bespoke_107_ext_ru",
		{"loc_trait_bespoke_crit_chance_on_chained_weakspot_hits"}, {"ru"},
			loc_text("Сосредоточенный огонь")),
	--[+ Traditional Chinese - 集中火力 +]--
	create_template("trait_bespoke_107_ext_tw",
		{"loc_trait_bespoke_crit_chance_on_chained_weakspot_hits"}, {"zh-tw"},
			loc_text("集中火力")),

	--[+ Desperado - Сорвиголова +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_108_ext_ru",
		-- {"loc_trait_bespoke_crit_chance_on_successful_dodge"}, {"ru"},
			-- loc_text("Сорвиголова")),
	--[+ Traditional Chinese - 亡命之徒 +]--
	create_template("trait_bespoke_108_ext_tw",
		{"loc_trait_bespoke_crit_chance_on_successful_dodge"}, {"zh-tw"},
			loc_text("亡命之徒")),

	--[+ Reassuringly Accurate - Успокаивающая точность +]-- -- руоф Внушительная точность
	--[+ Russian +]--
	create_template("trait_bespoke_109_ext_ru",
		{"loc_trait_bespoke_toughness_on_crit_kills"}, {"ru"},
			loc_text("Успокаивающая точность")),
	--[+ Traditional Chinese - 慰藉精準 +]--
	create_template("trait_bespoke_109_ext_tw",
		{"loc_trait_bespoke_toughness_on_crit_kills"}, {"zh-tw"},
			loc_text("慰藉精準")),

	--[+ Flechette - Флешетта +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_110_ext_ru",
		-- {"loc_trait_bespoke_bleed_on_crit_ranged"}, {"ru"},
			-- loc_text("Флешетта")),
	--[+ Traditional Chinese - 飛鏢彈 +]--
	create_template("trait_bespoke_110_ext_tw",
		{"loc_trait_bespoke_bleed_on_crit_ranged"}, {"zh-tw"},
			loc_text("飛鏢彈")),

	--[+ Man-Stopper - Человекоостанавливатель +]-- -- руоф Усмирение
	--[+ Russian +]--
	create_template("trait_bespoke_111_ext_ru",
		{"loc_trait_bespoke_cleave_on_crit"}, {"ru"},
			loc_text("Человекоостанавливатель")),
	--[+ Traditional Chinese - 大口徑彈藥 +]--
	create_template("trait_bespoke_111_ext_tw",
		{"loc_trait_bespoke_cleave_on_crit"}, {"zh-tw"},
			loc_text("大口徑彈藥")),

	--[+ Scattershot - Выстрел дробью +]-- -- руоф Разброс
	--[+ Russian +]--
	create_template("trait_bespoke_112_ext_ru",
		{"loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot"}, {"ru"},
			loc_text("Выстрел дробью")),
	--[+ Traditional Chinese - 散彈 +]--
	create_template("trait_bespoke_112_ext_tw",
		{"loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot"}, {"zh-tw"},
			loc_text("散彈")),

	--[+ Full Bore - Полный калибр +]-- -- руоф Напор
	--[+ Russian +]--
	create_template("trait_bespoke_113_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all"}, {"ru"},
			loc_text("Полный калибр")),
	--[+ Traditional Chinese - 全孔射擊 +]--
	create_template("trait_bespoke_113_ext_tw",
		{"loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all"}, {"zh-tw"},
			loc_text("全孔射擊")),

	--[+ Both Barrels - Дуплет +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_114_ext_ru",
		-- {"loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill"}, {"ru"},
			-- loc_text("Дуплет")),
	--[+ Traditional Chinese - 雙管齊發 +]--
	create_template("trait_bespoke_114_ext_tw",
		{"loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill"}, {"zh-tw"},
			loc_text("雙管齊發")),

	--[+ Trickshooter - Меткий стрелок +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_115_ext_ru",
		-- {"loc_trait_bespoke_power_bonus_on_chained_weakspot_hits"}, {"ru"},
			-- loc_text("Меткий стрелок")),
	--[+ Traditional Chinese - 狡猾射手 +]--
	create_template("trait_bespoke_115_ext_tw",
		{"loc_trait_bespoke_power_bonus_on_chained_weakspot_hits"}, {"zh-tw"},
			loc_text("狡猾射手")),

	--[+ Hand-Cannon - Ручная пушка +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_116_ext_ru",
		-- {"loc_trait_bespoke_rending_on_crit"}, {"ru"},
			-- loc_text("Ручная пушка")),
	--[+ Traditional Chinese - 手銃 +]--
	create_template("trait_bespoke_116_ext_tw",
		{"loc_trait_bespoke_rending_on_crit"}, {"zh-tw"},
			loc_text("手銃")),

	--[+ Shattering Impact - Сокрушающий удар +]-- -- руоф Рассеивающий импульс
	--[+ Russian +]--
	create_template("trait_bespoke_117_ext_ru",
		{"loc_trait_bespoke_armor_rend_on_projectile_hit"}, {"ru"},
			loc_text("Сокрушающий удар")),
	--[+ Traditional Chinese - 破碎衝擊 +]--
	create_template("trait_bespoke_117_ext_tw",
		{"loc_trait_bespoke_armor_rend_on_projectile_hit"}, {"zh-tw"},
			loc_text("破碎衝擊")),

	--[+ Everlasting Flame - Неугасимое пламя +]-- -- руоф Бесконечное пламя
	--[+ Russian +]--
	create_template("trait_bespoke_118_ext_ru",
		{"loc_trait_bespoke_ammo_spent_from_reserve_on_crit"}, {"ru"},
			loc_text("Неугасимое пламя")),
	--[+ Traditional Chinese - 永燃烈焰 +]--
	create_template("trait_bespoke_118_ext_tw",
		{"loc_trait_bespoke_ammo_spent_from_reserve_on_crit"}, {"zh-tw"},
			loc_text("永燃烈焰")),

	--[+ Quickflame - Скорое пламя +]-- -- руоф Воспламенение
	--[+ Russian +]--
	create_template("trait_bespoke_119_ext_ru",
		{"loc_trait_bespoke_faster_reload_on_empty_clip"}, {"ru"},
			loc_text("Скорое пламя")),
	--[+ Traditional Chinese - 迅捷火焰 +]--
	create_template("trait_bespoke_119_ext_tw",
		{"loc_trait_bespoke_faster_reload_on_empty_clip"}, {"zh-tw"},
			loc_text("迅捷火焰")),

	--[+ Fan the Flames - Разжечь пламя +]-- -- руоф Раздувая пламя
	--[+ Russian +]--
	create_template("trait_bespoke_120_ext_ru",
		{"loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning"}, {"ru"},
			loc_text("Разжечь пламя")),
	--[+ Traditional Chinese - 煽風點火 +]--
	create_template("trait_bespoke_120_ext_tw",
		{"loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning"}, {"zh-tw"},
			loc_text("煽風點火")),

	--[+ Overpressure - Избыточное давление +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_121_ext_ru",
		-- {"loc_trait_bespoke_power_scales_with_clip_percentage"}, {"ru"},
			-- loc_text("Избыточное давление")),
	--[+ Traditional Chinese - 超壓 +]--
	create_template("trait_bespoke_121_ext_tw",
		{"loc_trait_bespoke_power_scales_with_clip_percentage"}, {"zh-tw"},
			loc_text("超壓")),

	--[+ Hot-Shot - Жгучий выстрел +]-- -- руоф В точку
	--[+ Russian +]--
	create_template("trait_bespoke_122_ext_ru",
		{"loc_trait_bespoke_cleave_on_weakspot_hits"}, {"ru"},
			loc_text("Жгучий выстрел")),
	--[+ Traditional Chinese - 激射 +]--
	create_template("trait_bespoke_122_ext_tw",
		{"loc_trait_bespoke_cleave_on_weakspot_hits"}, {"zh-tw"},
			loc_text("激射")),

	--[+ Weight of Fire - Мощь огня +]-- -- руоф Плотность огня
	--[+ Russian +]--
	create_template("trait_bespoke_123_ext_ru",
		{"loc_trait_bespoke_faster_charge_on_chained_attacks"}, {"ru"},
			loc_text("Мощь огня")),
	--[+ Traditional Chinese - 猛攻 +]--
	create_template("trait_bespoke_123_ext_tw",
		{"loc_trait_bespoke_faster_charge_on_chained_attacks"}, {"zh-tw"},
			loc_text("猛攻")),


	--[+ Armourbane - Бронебой +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_124_ext_ru",
		-- {"loc_trait_bespoke_rend_armor_on_charged_shots"}, {"ru"},
			-- loc_text("Бронебой")),
	--[+ Traditional Chinese - 護甲之禍 +]--
	create_template("trait_bespoke_124_ext_tw",
		{"loc_trait_bespoke_rend_armor_on_charged_shots"}, {"zh-tw"},
			loc_text("護甲之禍")),

	--[+ Power Blast - Мощный выстрел +]-- -- руоф Мощный взрыв
	--[+ Russian +]--
	create_template("trait_bespoke_125_ext_ru",
		{"loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time"}, {"ru"},
			loc_text("Мощный выстрел")),
	--[+ Traditional Chinese - 聚能爆發 +]--
	create_template("trait_bespoke_125_ext_tw",
		{"loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time"}, {"zh-tw"},
			loc_text("聚能爆發")),

	--[+ Gets Hot! - Критическая жара! +]-- -- руоф Становится жарко!
	--[+ Russian +]--
	create_template("trait_bespoke_126_ext_ru",
		{"loc_trait_bespoke_crit_chance_scaled_on_heat"}, {"ru"},
			loc_text("Критическая жара!")),
	--[+ Traditional Chinese - 燃起來! +]--
	create_template("trait_bespoke_126_ext_tw",
		{"loc_trait_bespoke_crit_chance_scaled_on_heat"}, {"zh-tw"},
			loc_text("燃起來!")),

	--[+ Volatile - Испарение +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_127_ext_ru",
		-- {"loc_trait_bespoke_lower_overheat_gives_faster_charge"}, {"ru"},
			-- loc_text("Испарение")),
	--[+ Traditional Chinese - 熱力震盪 +]--
	create_template("trait_bespoke_127_ext_tw",
		{"loc_trait_bespoke_lower_overheat_gives_faster_charge"}, {"zh-tw"},
			loc_text("熱力震盪")),

	--[+ Blaze Away - Стрельба без устали +]-- ALT --  -- руоф Энтузиазм
	--[+ Russian +]--
	create_template("trait_bespoke_128_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_continuous_fire_alternative"}, {"ru"},
			loc_text("Стрельба без устали")),
	--[+ Traditional Chinese - 連續發射 +]--
	create_template("trait_bespoke_128_ext_tw",
		{"loc_trait_bespoke_power_bonus_on_continuous_fire_alternative"}, {"zh-tw"},
			loc_text("連續發射")),

	--[+ Rising Heat - Нарастающий жар +]-- -- руоф Сильная жара
	--[+ Russian +]--
	create_template("trait_bespoke_129_ext_ru",
		{"loc_trait_bespoke_power_bonus_scaled_on_heat"}, {"ru"},
			loc_text("Нарастающий жар")),
	--[+ Traditional Chinese - 升溫 +]--
	create_template("trait_bespoke_129_ext_tw",
		{"loc_trait_bespoke_power_bonus_scaled_on_heat"}, {"zh-tw"},
			loc_text("升溫")),

	--[+ Optimised Cooling - Оптимизированное охлаждение +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_130_ext_ru",
		-- {"loc_trait_bespoke_reduced_heat_on_continuous"}, {"ru"},
			-- loc_text("Оптимизированное охлаждение")),
	--[+ Traditional Chinese - 優化冷卻 +]--
	create_template("trait_bespoke_130_ext_tw",
		{"loc_trait_bespoke_reduced_heat_on_continuous"}, {"zh-tw"},
			loc_text("優化冷卻")),

	--[+ Focused Cooling - Сфокусированное охлаждение +]-- -- руоф Сосредоточенное охлаждение
	--[+ Russian +]--
	create_template("trait_bespoke_131_ext_ru",
		{"loc_trait_bespoke_reduced_overheat_on_crits"}, {"ru"},
			loc_text("Сфокусированное охлаждение")),
	--[+ Traditional Chinese - 專注冷卻 +]--
	create_template("trait_bespoke_131_ext_tw",
		{"loc_trait_bespoke_reduced_overheat_on_crits"}, {"zh-tw"},
			loc_text("專注冷卻")),

	--[+ Gauntlet Momentum - Импульс перчатки +]-- -- руоф Перчатка моментума
	--[+ Russian +]--
	create_template("trait_bespoke_132_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_chained_melee"}, {"ru"},
			loc_text("Импульс перчатки")),
	--[+ Traditional Chinese - 交叉動量 +]--
	create_template("trait_bespoke_132_ext_tw",
		{"loc_trait_bespoke_power_bonus_on_chained_melee"}, {"zh-tw"},
			loc_text("交叉動量")),

	--[+ Pulverise - Измельчение +]-- -- руоф Пульверизация
	--[+ Russian +]--
	create_template("trait_bespoke_133_ext_ru",
		{"loc_trait_bespoke_crit_chance_on_melee_kill"}, {"ru"},
			loc_text("Измельчение")),
	--[+ Traditional Chinese - 粉碎 +]--
	create_template("trait_bespoke_133_ext_tw",
		{"loc_trait_bespoke_crit_chance_on_melee_kill"}, {"zh-tw"},
			loc_text("粉碎")),

	--[+ Disruptive - Разрывной эффект +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_134_ext_ru",
		-- {"loc_trait_bespoke_melee_power_bonus_after_explosion"}, {"ru"},
			-- loc_text("Разрывной эффект")),
	--[+ Traditional Chinese - 顛覆性力量 +]--
	create_template("trait_bespoke_134_ext_tw",
		{"loc_trait_bespoke_melee_power_bonus_after_explosion"}, {"zh-tw"},
			loc_text("顛覆性力量")),

	--[+ Explosive Offensive - Взрывное наступление +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_135_ext_ru",
		-- {"loc_trait_bespoke_power_bonus_after_weapon_special_multiple"}, {"ru"},
			-- loc_text("Взрывное наступление")),
	--[+ Traditional Chinese - 爆炸使我強大 +]--
	create_template("trait_bespoke_135_ext_tw",
		{"loc_trait_bespoke_power_bonus_after_weapon_special_multiple"}, {"zh-tw"},
			loc_text("爆炸使我強大")),

	--[+ Pinpointing target - Бомбардировка цели +]-- -- руоф Определение цели
	--[+ Russian +]--
	-- create_template("trait_bespoke_136_ext_ru",
		-- {"loc_trait_bespoke_power_bonus_based_on_charge_time_ranged"}, {"ru"},
			-- loc_text("Определение цели")),
	--[+ Traditional Chinese - 精確定位 +]--
	create_template("trait_bespoke_136_ext_tw",
		{"loc_trait_bespoke_power_bonus_based_on_charge_time_ranged"}, {"zh-tw"},
			loc_text("精確定位")),

	--[+ Charmed Reload - Зачарованная перезарядка +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_137_ext_ru",
		-- {"loc_trait_bespoke_ammo_refill_from_reserve_on_crit"}, {"ru"},
			-- loc_text("Зачарованная перезарядка")),
	--[+ Traditional Chinese - 魔力彈藥 +]--
	create_template("trait_bespoke_137_ext_tw",
		{"loc_trait_bespoke_ammo_refill_from_reserve_on_crit"}, {"zh-tw"},
			loc_text("魔力彈藥")),

	--[+ Overwhelming Fire - Подавляющий огонь +]-- -- руоф Огонь на поражение
	--[+ Russian +]--
	create_template("trait_bespoke_138_ext_ru",
		{"loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target"}, {"ru"},
			loc_text("Подавляющий огонь")),
	--[+ Traditional Chinese - 壓倒性火力 +]--
	create_template("trait_bespoke_138_ext_tw",
		{"loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target"}, {"zh-tw"},
			loc_text("壓倒性火力")),

	--[+ Can opener - Открывашка +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_139_ext_ru",
		-- {"loc_trait_bespoke_armor_rending_bayonette"}, {"ru"},
			-- loc_text("Открывашка")),
	--[+ Traditional Chinese - 開罐器 +]--
	create_template("trait_bespoke_139_ext_tw",
		{"loc_trait_bespoke_armor_rending_bayonette"}, {"zh-tw"},
			loc_text("開罐器")),

	--[+ Born in blood - Рождённый в крови +]-- -- руоф РождЕнный в крови
	--[+ Russian +]--
	-- create_template("trait_bespoke_140_ext_ru",
		-- {"loc_trait_bespoke_toughness_on_close_range_kills"}, {"ru"},
			-- loc_text("Рождённый в крови")),
	--[+ Traditional Chinese - 浴血而生 +]--
	create_template("trait_bespoke_140_ext_tw",
		{"loc_trait_bespoke_toughness_on_close_range_kills"}, {"zh-tw"},
			loc_text("浴血而生")),

	--[+ Pierce - Пробивание +]-- -- руоф Прокол
	--[+ Russian +]--
	-- create_template("trait_bespoke_141_ext_ru",
		-- {"loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger"}, {"ru"},
			-- loc_text("Прокол")),
	--[+ Traditional Chinese - 穿透 +]--
	create_template("trait_bespoke_141_ext_tw",
		{"loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger"}, {"zh-tw"},
			loc_text("穿透")),

	--[+ Punishing Fire - Карательный обстрел +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_142_ext_ru",
		-- {"loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave"}, {"ru"},
			-- loc_text("Карательный обстрел")),
	--[+ Traditional Chinese - 懲罰射擊 +]--
	create_template("trait_bespoke_142_ext_tw",
		{"loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave"}, {"zh-tw"},
			loc_text("懲罰射擊")),

	--[+ Inspiring Barrage - Вдохновляющий обстрел +]-- ALT -- руоф Вдохновляющий натиск
	--[+ Russian +]--
	create_template("trait_bespoke_143_ext_ru",
		{"loc_trait_bespoke_toughness_on_continuous_fire_alternative"}, {"ru"},
			loc_text("Вдохновляющий обстрел")),
	--[+ Traditional Chinese - 激勵彈幕 +]--
	create_template("trait_bespoke_143_ext_tw",
		{"loc_trait_bespoke_toughness_on_continuous_fire_alternative"}, {"zh-tw"},
			loc_text("激勵彈幕")),

	--[+ Expansive - Экспансивный +]-- -- руоф Расширение
	--[+ Russian +]--
	create_template("trait_bespoke_144_ext_ru",
		{"loc_trait_bespoke_weapon_special_power_bonus_after_one_shots"}, {"ru"},
			loc_text("Экспансивный")),
	--[+ Traditional Chinese - 擴展性 +]--
	create_template("trait_bespoke_144_ext_tw",
		{"loc_trait_bespoke_weapon_special_power_bonus_after_one_shots"}, {"zh-tw"},
			loc_text("擴展性")),

	--[+ Shrapnel - Шрапнель +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_145_ext_ru",
		-- {"loc_trait_bespoke_close_explosion_applies_bleed"}, {"ru"},
			-- loc_text("Шрапнель")),
	--[+ Traditional Chinese - 破片四射 +]--
	create_template("trait_bespoke_145_ext_tw",
		{"loc_trait_bespoke_close_explosion_applies_bleed"}, {"zh-tw"},
			loc_text("破片四射")),

	--[+ Blast Zone - Зона взрыва +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_146_ext_ru",
		-- {"loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire"}, {"ru"},
			-- loc_text("Зона взрыва")),
	--[+ Traditional Chinese - 狂轟猛炸 +]--
	create_template("trait_bespoke_146_ext_tw",
		{"loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire"}, {"zh-tw"},
			loc_text("狂轟猛炸")),


	--[+ Adhesive Charge - Липкий заряд +]-- -- руоф Цепной заряд
	--[+ Russian +]--
	create_template("trait_bespoke_147_ext_ru",
		{"loc_trait_bespoke_grenades_stick_to_monsters_and_damage"}, {"ru"},
			loc_text("Липкий заряд")),
	--[+ Traditional Chinese - 黏著炸藥 +]--
	create_template("trait_bespoke_147_ext_tw",
		{"loc_trait_bespoke_grenades_stick_to_monsters_and_damage"}, {"zh-tw"},
			loc_text("黏著炸藥")),

	--[+ Marksman's Reflex - Рефлекс стрелка +]--
	--[+ Russian +]--
	-- create_template("trait_bespoke_148_ext_ru",
		-- {"loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed"}, {"ru"},
			-- loc_text("Рефлекс стрелка")),
	--[+ Traditional Chinese - 迅雷反射 +]--
	create_template("trait_bespoke_148_ext_tw",
		{"loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed"}, {"zh-tw"},
			loc_text("迅雷反射")),

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
	--[+ Traditional Chinese - 暴擊機率增幅 +]-- +5%暴擊機率 -- 靈能者, 老兵
	create_template("talent_tree_oper_mod_006_tw",
		{"loc_talent_crit_chance_low"}, {"zh-tw"},
			loc_text("暴擊機率增幅")),

	--[+ Health Boost Low - Повышение Здоровья малое +]--
	create_template("talent_tree_oper_mod_005_l_en",
		{"loc_talent_health_low"}, {"en"},
			loc_text("Health Boost Low")), -- health:+5% -- Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_005_l_ru",
		{"loc_talent_health_low"}, {"ru"},
			loc_text("Повышение Здоровья малое")),
	--[+ Traditional Chinese - 生命增幅(小) +]-- +5%生命 -- 歐格林, 老兵
	create_template("talent_tree_oper_mod_005_l_tw",
		{"loc_talent_health_low"}, {"zh-tw"},
			loc_text("生命增幅(小)")),

	--[+ Health Boost Medium - Повышение Здоровья среднее +]--
	create_template("talent_tree_oper_mod_005_m_en",
		{"loc_talent_health_medium"}, {"en"},
			loc_text("Health Boost Medium")), -- health:+10% -- Psyker, Ogryn, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_005_m_ru",
		{"loc_talent_health_medium"}, {"ru"},
			loc_text("Повышение Здоровья среднее")),
	--[+ Traditional Chinese - 生命增幅(中) +]-- +10%生命 -- 靈能者, 歐格林, 狂信徒
	create_template("talent_tree_oper_mod_005_m_tw",
		{"loc_talent_health_medium"}, {"zh-tw"},
			loc_text("生命增幅(中)")),

	--[+ Heavy Melee Damage Boost Low - Повышение урона тяжёлых атак ближнего боя малое +]--
	create_template("talent_tree_oper_mod_014_l_en",
		{"loc_talent_melee_heavy_damage_low"}, {"en"},
			loc_text("Heavy Melee Damage Boost Low")), -- melee_heavy_damage:+5% -- Ogryn
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_014_l_ru",
		{"loc_talent_melee_heavy_damage_low"}, {"ru"},
			loc_text("Повышение урона тяжёлых атак ближнего боя малое")),
	--[+ Traditional Chinese - 重擊傷害增幅(小) +]-- +5%重擊傷害 -- 歐格林
	create_template("talent_tree_oper_mod_014_l_tw",
		{"loc_talent_melee_heavy_damage_low"}, {"zh-tw"},
			loc_text("重擊傷害增幅(小)")),

	--[+ Heavy Melee Damage Boost Medium - Повышение урона тяжёлых атак ближнего боя среднее +]--
	create_template("talent_tree_oper_mod_014_m_en",
		{"loc_talent_melee_heavy_damage_medium"}, {"en"},
			loc_text("Heavy Melee Damage Boost Medium")), -- melee_heavy_damage:+10% -- Ogryn
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_014_m_ru",
		{"loc_talent_melee_heavy_damage_medium"}, {"ru"},
			loc_text("Повышение урона тяжёлых атак ближнего боя среднее")),
	--[+ Traditional Chinese - 重擊傷害增幅(中) +]-- +10%重擊傷害 -- 歐格林
	create_template("talent_tree_oper_mod_014_m_tw",
		{"loc_talent_melee_heavy_damage_medium"}, {"zh-tw"},
			loc_text("重擊傷害增幅(中)")),

	--[+ Inspiring Presence - Вдохновляющее присутствие +]--
	-- create_template("talent_tree_oper_mod_003_en",
		-- {"loc_talent_coherency_regen_low"}, {"en"},
			-- loc_text("Inspiring Presence")), -- coherency_regen:+10% -- Veteran
	--[+ Russian +]--
	-- create_template("talent_tree_oper_mod_003_ru",
		-- {"loc_talent_coherency_regen_low"}, {"ru"},
			-- loc_text("Вдохновляющее присутствие")),
	--[+ Traditional Chinese - 鼓舞人心 +]-- -- +10%協同中的韌性恢復再生 -- 老兵
	create_template("talent_tree_oper_mod_003_tw",
		{"loc_talent_coherency_regen_low"}, {"zh-tw"},
			loc_text("鼓舞人心")),

	--[+ Melee Damage Boost Low - Повышение урона атак ближнего боя малое +]--
	create_template("talent_tree_oper_mod_008_en",
		{"loc_talent_melee_damage_boost_low"}, {"en"},
			loc_text("Melee Damage Boost Low")), -- melee_damage:+5% -- Ogryn, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_008_ru",
		{"loc_talent_melee_damage_boost_low"}, {"ru"},
			loc_text("Повышение урона атак ближнего боя малое")),
	--[+ Traditional Chinese - 近戰傷害增幅(小) +]-- +5%近戰傷害 -- 歐格林, 老兵, 狂信徒
	create_template("talent_tree_oper_mod_008_tw",
		{"loc_talent_melee_damage_boost_low"}, {"zh-tw"},
			loc_text("近戰傷害增幅(小)")),

	--[+ Melee Damage Boost Medium - Повышение урона атак ближнего боя среднее +]--
	create_template("talent_tree_oper_mod_008_1_en",
		{"loc_talent_melee_damage_boost_medium"}, {"en"},
			loc_text("Melee Damage Boost Medium")), -- melee_damage:+10% -- Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_008_1_ru",
		{"loc_talent_melee_damage_boost_medium"}, {"ru"},
			loc_text("Повышение урона атак ближнего боя среднее")),
	--[+ Traditional Chinese - 近戰傷害增幅(中) +]-- +10%近戰傷害 -- 老兵
	create_template("talent_tree_oper_mod_008_1_tw",
		{"loc_talent_melee_damage_boost_medium"}, {"zh-tw"},
			loc_text("近戰傷害增幅(中)")),

	--[+ Movement Speed Boost - Повышение скорости движения +]--
	-- create_template("talent_tree_oper_mod_007_en",
		-- {"loc_talent_movement_speed_low"}, {"en"},
			-- loc_text("Movement Speed Boost")), -- movement_speed:+5%. -- Psyker, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_007_en",{"loc_talent_movement_speed_low"}, {"ru"},
			loc_text("Повышение скорости движения")),
	--[+ Traditional Chinese - 移動速度增幅 +]-- -- +5%移動速度 -- 靈能者, 老兵, 狂信徒
	create_template("talent_tree_oper_mod_007_tw",
		{"loc_talent_movement_speed_low"}, {"zh-tw"},
			loc_text("移動速度增幅")),

	--[+ Peril Resistance - Сопротивление опасности +]--
	-- create_template("talent_tree_oper_mod_001_en",
		-- {"loc_talent_warp_charge_low"}, {"en"},
			-- loc_text("Peril Resistance")), -- warp_charge:-5% -- Psyker
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_001_en",{"loc_talent_warp_charge_low"}, {"ru"},
			loc_text("Сопротивление опасности")),
	--[+ Traditional Chinese - 反噬抗性 +]-- -- -5%反噬 -- 靈能者
	create_template("talent_tree_oper_mod_001_tw",
		{"loc_talent_warp_charge_low"}, {"zh-tw"},
			loc_text("反噬抗性")),

	--[+ Ranged Damage Boost Low - Повышение урона дальнего боя малое +]--
	create_template("talent_tree_oper_mod_004_en",
		{"loc_talent_ranged_damage_low"}, {"en"},
			loc_text("Ranged Damage Boost Low")), -- ranged_damage:+5% -- Psyker, Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_004_ru",
		{"loc_talent_ranged_damage_low"}, {"ru"},
			loc_text("Повышение урона дальнего боя малое")),
	--[+ Traditional Chinese - 遠程傷害增幅(小) +]-- +5%遠程傷害 -- 靈能者, 歐格林, 老兵
	create_template("talent_tree_oper_mod_004_tw",
		{"loc_talent_ranged_damage_low"}, {"zh-tw"},
			loc_text("遠程傷害增幅(小)")),

	--[+ Ranged Damage Boost Medium - Повышение урона дальнего боя среднее +]--
	create_template("talent_tree_oper_mod_004_en",
		{"loc_talent_ranged_damage_medium"}, {"en"},
			loc_text("Ranged Damage Boost Medium")), -- ranged_damage:+5% -- Psyker, Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_004_ru",
		{"loc_talent_ranged_damage_medium"}, {"ru"},
			loc_text("Повышение урона дальнего боя среднее")),
	--[+ Traditional Chinese - 遠程傷害增幅(中) +]-- -- +10%遠程傷害 -- 靈能者, 歐格林, 老兵
	create_template("talent_tree_oper_mod_004_tw",
		{"loc_talent_ranged_damage_medium"}, {"zh-tw"},
			loc_text("遠程傷害增幅(中)")),

	--[+ Reload Boost - Повышение скорости перезарядки +]--
	-- create_template("talent_tree_oper_mod_011_en",
		-- {"loc_talent_reload_speed_low"}, {"en"},
			-- loc_text("Reload Boost")), -- reload_speed: +5% -- Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_011_ru",
		{"loc_talent_reload_speed_low"}, {"ru"},
			loc_text("Повышение скорости перезарядки")),
	--[+ Traditional Chinese - 換彈速度增幅 +]-- -- +5%換彈速度提高 -- 歐格林, 老兵
	create_template("talent_tree_oper_mod_011_tw",
		{"loc_talent_reload_speed_low"}, {"zh-tw"},
			loc_text("換彈速度增幅")),

	--[+ Rending Boost - Повышение пробивания брони +]--
	-- create_template("talent_tree_oper_mod_013_en",
		-- {"loc_talent_armor_pen_low"}, {"en"},
			-- loc_text("Rending Boost")), -- rending: +5% -- Ogryn
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_013_ru",
		{"loc_talent_armor_pen_low"}, {"ru"},
			loc_text("Повышение пробивания брони")),
	--[+ Traditional Chinese - 撕裂增強 +]-- -- +5%撕裂 -- 歐格林
	create_template("talent_tree_oper_mod_013_tw",
		{"loc_talent_armor_pen_low"}, {"zh-tw"},
			loc_text("撕裂增強")),

	--[+ Stamina Boost - Повышение выносливости +]--
	-- create_template("talent_tree_oper_mod_009_en",
		-- {"loc_talent_stamina_low"}, {"en"},
			-- loc_text("Stamina Boost")), -- stamina: +1 -- Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_009_ru",
		{"loc_talent_stamina_low"}, {"ru"},
			loc_text("Повышение выносливости")),
	--[+ Traditional Chinese - 耐力增幅 +]-- -- +1耐力 -- 老兵, 狂信徒
	create_template("talent_tree_oper_mod_009_tw",
		{"loc_talent_stamina_low"}, {"zh-tw"},
			loc_text("耐力增幅")),

	--[+ Stamina Regeneration Boost - Повышение восстановления выносливости +]--
	-- create_template("talent_tree_oper_mod_012_en",
		-- {"loc_talent_stamina_regen_delay"}, {"en"},
			-- loc_text("Stamina Regeneration Boost")), -- duration: 0.25 -- Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_012_ru",
		{"loc_talent_stamina_regen_delay"}, {"ru"},
			loc_text("Повышение восстановления выносливости")),
	--[+ Traditional Chinese - 耐力恢復增幅 +]-- -- 0.25耐力恢復 -- 老兵
	create_template("talent_tree_oper_mod_012_tw",
		{"loc_talent_stamina_regen_delay"}, {"zh-tw"},
			loc_text("耐力恢復增幅")),

	--[+ Suppression Boost - Повышение подавления врагов +]--
	-- create_template("talent_tree_oper_mod_010_en",
		-- {"loc_talent_suppression_low"}, {"en"},
			-- loc_text("Suppression Boost")), -- suppression: +25% -- Ogryn, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_010_ru",
		{"loc_talent_suppression_low"}, {"ru"},
			loc_text("Повышение подавления")),
	--[+ Traditional Chinese - 壓制增幅 +]-- -- +25%壓制 -- 歐格林, 老兵, 狂信徒
	create_template("talent_tree_oper_mod_010_tw",
		{"loc_talent_suppression_low"}, {"zh-tw"},
			loc_text("壓制增幅")),

	--[+ Toughness Boost Low - Повышение стойкости малое +]--
	create_template("talent_tree_oper_mod_000_l_en",
		{"loc_talent_toughness_boost_low"}, {"en"},
			loc_text("Toughness Boost Low")), -- toughness: +15% -- Psyker, Ogryn, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_000_l_ru",
		{"loc_talent_toughness_boost_low"}, {"ru"},
			loc_text("Повышение стойкости малое")),
	--[+ Traditional Chinese - 韌性增幅(小) +]-- -- +15%韌性 -- 靈能者, 歐格林, 老兵, 狂信徒
	create_template("talent_tree_oper_mod_000_l_tw",
		{"loc_talent_toughness_boost_low"}, {"zh-tw"},
			loc_text("韌性增幅(小)")),

	--[+ Toughness Boost Medium - Повышение стойкости среднее +]--
	create_template("talent_tree_oper_mod_000_m_en",
		{"loc_talent_toughness_boost_medium"}, {"en"},
			loc_text("Toughness Boost Medium")), -- toughness:+25% -- Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_000_m_ru",
		{"loc_talent_toughness_boost_medium"}, {"ru"},
			loc_text("Повышение стойкости среднее")),
	--[+ Traditional Chinese - 韌性增幅(中) +]-- -- +25%韌性 -- 歐格林, 老兵
	create_template("talent_tree_oper_mod_000_m_tw",
		{"loc_talent_toughness_boost_medium"}, {"zh-tw"},
			loc_text("韌性增幅(中)")),

	--[+ Toughness Damage Reduction Low - Снижение урона стойкости малое +]--
	create_template("talent_tree_oper_mod_002_l_en",
		{"loc_talent_toughness_damage_reduction_low"}, {"en"},
			loc_text("Toughness Damage Reduction Low")), -- toughness:+5% -- Psyker, Veteran, Zealot
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_002_l_ru",
		{"loc_talent_toughness_damage_reduction_low"}, {"ru"},
			loc_text("Снижение урона стойкости малое")),
	--[+ Traditional Chinese - 韌性減傷(小) +]-- -- +5%韌性減傷 -- 靈能者, 老兵, 狂信徒
	create_template("talent_tree_oper_mod_002_l_tw",
		{"loc_talent_toughness_damage_reduction_low"}, {"zh-tw"},
			loc_text("韌性減傷(小)")),

	--[+ Toughness Damage Reduction Medium - Снижение урона стойкости среднее +]--
	create_template("talent_tree_oper_mod_002_m_en",{"loc_talent_toughness_damage_reduction_medium"}, {"en"},
			loc_text("Toughness Damage Reduction Medium")), -- toughness:+10% -- Ogryn, Veteran
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_002_m_en",{"loc_talent_toughness_damage_reduction_medium"}, {"ru"},
			loc_text("Снижение урона стойкости среднее")),
	--[+ Traditional Chinese - 韌性減傷(中) +]-- -- +10%韌性減傷 -- 歐格林, 老兵
	create_template("talent_tree_oper_mod_002_m_tw",
		{"loc_talent_toughness_damage_reduction_medium"}, {"zh-tw"},
			loc_text("韌性減傷(中)")),

--[+ ++PSYKER - ПСАЙКЕР - 靈能者 ++ +]--
--[+ +BLITZ - БЛИЦ - 閃擊 + +]--
	--[+ Blitz 0 - Brain Burst +]--
	--[+ Russian +]-- Взрыв мозга -- руоф Взрыв разума
	create_template("talent_tree_psy_blitz0_000_ru",
		{"loc_ability_psyker_smite"}, {"ru"},
			loc_text("Взрыв мозга")),
	--[+ Traditional Chinese - 顱腦爆裂 +]--
	create_template("talent_tree_psy_blitz0_000_tw",
		{"loc_ability_psyker_smite"}, {"zh-tw"},
			loc_text("顱腦爆裂")),

	--[+ Blitz 1 - Brain Rupture +]--
	--[+ Russian +]-- Разрыв мозга
	-- create_template("talent_tree_psy_blitz1_000_ru",
		-- {"loc_talent_psyker_brain_burst_improved"}, {"ru"},
			-- loc_text("Разрыв мозга")),
	--[+ Traditional Chinese - 顱腦崩裂 +]--
	create_template("talent_tree_psy_blitz1_000_tw",
		{"loc_talent_psyker_brain_burst_improved"}, {"zh-tw"},
			loc_text("顱腦崩裂")),

	--[+ Blitz 1-1 - Kinetic Resonance +]--
	--[+ Russian +]-- Кинетический резонанс
	-- create_template("talent_tree_psy_blitz1_001_ru",
		-- {"loc_talent_psyker_ability_increase_brain_burst_speed"}, {"ru"},
			-- loc_text("Кинетический резонанс")),
	--[+ Traditional Chinese - 動能共鳴 +]--
	create_template("talent_tree_psy_blitz1_001_tw",
		{"loc_talent_psyker_ability_increase_brain_burst_speed"}, {"zh-tw"},
			loc_text("動能共鳴")),

	--[+ Blitz 1-2 - Kinetic Flayer +]--
	--[+ Russian +]-- Кинетический живодёр -- руоф Кинетический истребитель
	create_template("talent_tree_psy_blitz1_002_ru",
		{"loc_talent_psyker_smite_on_hit"}, {"ru"},
			loc_text("Кинетический живодёр")),
	--[+ Traditional Chinese - 動能剝皮者 +]--
	create_template("talent_tree_psy_blitz1_002_tw",
		{"loc_talent_psyker_smite_on_hit"}, {"zh-tw"},
			loc_text("動能剝皮者")),

	--[+ Blitz 2 - Smite +]--
	--[+ Russian +]-- Сокрушение
	-- create_template("talent_tree_psy_blitz2_000_ru",
		-- {"loc_ability_psyker_chain_lightning"}, {"ru"},
			-- loc_text("Сокрушение")),
	--[+ Traditional Chinese - 懲戒 +]--
	create_template("talent_tree_psy_blitz2_000_tw",
		{"loc_ability_psyker_chain_lightning"}, {"zh-tw"},
			loc_text("懲戒")),

	--[+ Blitz 2-1 - Lightning Storm +]--
	--[+ Russian +]-- Гроза
	-- create_template("talent_tree_psy_blitz2_001_en",
		-- {"loc_talent_psyker_increased_chain_lightning_size"}, {"ru"},
			-- loc_text("Гроза")),
	--[+ Traditional Chinese - 閃電風暴 +]--
	create_template("talent_tree_psy_blitz2_001_tw",
		{"loc_talent_psyker_increased_chain_lightning_size"}, {"zh-tw"},
			loc_text("閃電風暴")),

	--[+ Blitz 2-2 - Enfeeble +]--
	--[+ Russian +]-- Ослабление
	-- create_template("talent_tree_psy_blitz2_002_ru",
		-- {"loc_talent_psyker_increased_chain_lightning_improved_target_buff"}, {"ru"},
			-- loc_text("Ослабление")),
	--[+ Traditional Chinese - 衰弱詛咒 +]--
	create_template("talent_tree_psy_blitz2_002_tw",
		{"loc_talent_psyker_increased_chain_lightning_improved_target_buff"}, {"zh-tw"},
			loc_text("衰弱詛咒")),

	--[+ Blitz 2-3 - Charged Strike +]--
	-- create_template("talent_tree_psy_blitz2_003_en",
		-- {"loc_talent_psyker_chain_lightning_heavy_attacks"}, {"en"},
			-- loc_text("Charged Strike")),
	--[+ Russian +]-- Заряженный удар
	-- create_template("talent_tree_psy_blitz2_003_ru",
		-- {"loc_talent_psyker_chain_lightning_heavy_attacks"}, {"ru"},
			-- loc_text("Заряженный удар")),
	--[+ Traditional Chinese - 蓄力打擊 +]--
	create_template("talent_tree_psy_blitz2_003_tw",
		{"loc_talent_psyker_chain_lightning_heavy_attacks"}, {"zh-tw"},
			loc_text("蓄力打擊")),

	--[+ Blitz 3 - Assail +]--
	-- create_template("talent_tree_psy_blitz3_000_en",
		-- {"loc_ability_psyker_blitz_throwing_knives"}, {"en"},
			-- loc_text("Assail")),
	--[+ Russian +]-- Нападение
	-- create_template("talent_tree_psy_blitz3_000_ru",
		-- {"loc_ability_psyker_blitz_throwing_knives"}, {"ru"},
			-- loc_text("Нападение")),
	--[+ Traditional Chinese - 靈能攻擊 +]--
	create_template("talent_tree_psy_blitz3_000_tw",
		{"loc_ability_psyker_blitz_throwing_knives"}, {"zh-tw"},
			loc_text("靈能攻擊")),

	--[+ Blitz 3-1 - Ethereal Shards +]--
	-- create_template("talent_tree_psy_blitz3_001_en",
		-- {"loc_talent_psyker_throwing_knives_pierce"}, {"en"},
			-- loc_text("Ethereal Shards")),
	--[+ Russian +]-- Эфирные осколки -- руоф Эфирные частицы
	create_template("talent_tree_psy_blitz3_001_ru",
		{"loc_talent_psyker_throwing_knives_pierce"}, {"ru"},
			loc_text("Эфирные осколки")),
	----[+ Traditional Chinese - 乙太碎片 +]--
	create_template("talent_tree_psy_blitz3_001_tw",
		{"loc_talent_psyker_throwing_knives_pierce"}, {"zh-tw"},
			loc_text("乙太碎片")),

	--[+ Blitz 3-2 - Quick Shards +]--
	-- create_template("talent_tree_psy_blitz3_002_en",
		-- {"loc_talent_psyker_throwing_knives_reduced_cooldown"}, {"en"},
			-- loc_text("Quick Shards")),
	--[+ Russian +]-- Быстрые осколки -- руоф Быстрые частицы
	create_template("talent_tree_psy_blitz3_002_ru",
		{"loc_talent_psyker_throwing_knives_reduced_cooldown"}, {"ru"},
			loc_text("Быстрые осколки")),
	--[+ Traditional Chinese - 迅捷碎片 +]--
	create_template("talent_tree_psy_blitz3_002_tw",
		{"loc_talent_psyker_throwing_knives_reduced_cooldown"}, {"zh-tw"},
			loc_text("迅捷碎片")),

--[+ +AURA - АУРА - 光環 + +]--
	--[+ Aura 0 - The Quickening +]--
	-- create_template("talent_tree_psy_aura0_000_en",
		-- {"loc_talent_psyker_aura_reduced_ability_cooldown"}, {"en"},
			-- loc_text("The Quickening")),
	--[+ Russian +]-- Ускорение
	-- create_template("talent_tree_psy_aura0_000_ru",
		-- {"loc_talent_psyker_aura_reduced_ability_cooldown"}, {"ru"},
			-- loc_text("Ускорение")),
	--[+ Traditional Chinese - 加速 +]--
	-- create_template("talent_tree_psy_aura0_000_tw",
		-- {"loc_talent_psyker_aura_reduced_ability_cooldown"}, {"zh-tw"},
			-- loc_text("加速")),

	--[+ Aura 1 - Kinetic Presence +]--
	-- create_template("talent_tree_psy_aura1_000_en",
		-- {"loc_talent_psyker_base_3"}, {"en"},
			-- loc_text("Kinetic Presence")),
	--[+ Russian +]-- Кинетическое присутствие
	-- create_template("talent_tree_psy_aura1_000_ru",
		-- {"loc_talent_psyker_base_3"}, {"ru"},
			-- loc_text("Кинетическое присутствие")),
	--[+ Traditional Chinese - 動能釋放 +]--
	-- create_template("talent_tree_psy_aura1_000_tw",
		-- {"loc_talent_psyker_base_3"}, {"zh-tw"},
			-- loc_text("動能釋放")),

	--[+ Aura 2 - Seer's Presence +]--
	-- create_template("talent_tree_psy_aura2_000_en",
		-- {"loc_talent_psyker_cooldown_aura_improved"}, {"en"},
			-- loc_text("Seer's Presence")),
	--[+ Russian +]-- Присутствие провидца
	-- create_template("talent_tree_psy_aura2_000_ru",
		-- {"loc_talent_psyker_cooldown_aura_improved"}, {"ru"},
			-- loc_text("Присутствие провидца")),
	--[+ Traditional Chinese - 先知之眼 +]--
	-- create_template("talent_tree_psy_aura2_000_tw",
		-- {"loc_talent_psyker_cooldown_aura_improved"}, {"zh-tw"},
			-- loc_text("先知之眼")),

	--[+ Aura 3 - Prescience +]--
	-- create_template("talent_tree_psy_aura3_000_en",
		-- {"loc_ability_psyker_gunslinger_aura"}, {"en"},
			-- loc_text("Prescience")),
	--[+ Russian +]-- Предвидение
	-- create_template("talent_tree_psy_aura3_000_ru",
		-- {"loc_ability_psyker_gunslinger_aura"}, {"ru"},
			-- loc_text("Предвидение")),
	--[+ Traditional Chinese - 預兆 +]--
	-- create_template("talent_tree_psy_aura3_000_tw",
		-- {"loc_ability_psyker_gunslinger_aura"}, {"zh-tw"},
			-- loc_text("預兆")),

--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ Ability 0 - Psykinetic's Wrath +]--
	--create_template("talent_tree_psy_abil0_000_en",
		-- {"loc_talent_psyker_2_combat"}, {"en"},
			-- loc_text("Psykinetic's Wrath")),
	--[+ Russian +]-- Гнев психокинетика -- руоф Психокинетический гнев
	create_template("talent_tree_psy_abil0_000_ru",
		{"loc_talent_psyker_2_combat"}, {"ru"},
			loc_text("Гнев психокинетика")),
	--[+ Traditional Chinese - 靈能學者之怒 +]--
	create_template("talent_tree_psy_abil0_000_tw",
		{"loc_talent_psyker_2_combat"}, {"zh-tw"},
			loc_text("靈能學者之怒")),

	--[+ Ability 1 - Venting Shriek +]--
	--create_template("talent_tree_psy_abil1_000_en",
		-- {"loc_talent_psyker_shout_vent_warp_charge"}, {"en"},
			-- loc_text("Venting Shriek")),
	--[+ Russian +]-- Сбрасывающий вопль -- руоф Вырвавшийся вопль
	create_template("talent_tree_psy_abil1_000_ru",
		{"loc_talent_psyker_shout_vent_warp_charge"}, {"ru"},
			loc_text("Сбрасывающий вопль")),
	--[+ Traditional Chinese - 靈能尖嘯 +]--
	create_template("talent_tree_psy_abil1_000_tw",
		{"loc_talent_psyker_shout_vent_warp_charge"}, {"zh-tw"},
			loc_text("靈能尖嘯")),

	--[+ Ability 1-1 - Becalming Eruption +]--
	-- create_template("talent_tree_psy_abil1_001_en",
		-- {"loc_talent_psyker_shout_reduces_warp_charge_generation"}, {"en"},
			-- loc_text("Becalming Eruption")),
	--[+ Russian +]-- Успокаивающее извержение -- руоф Затихающее извержение
	create_template("talent_tree_psy_abil1_001_ru",
		{"loc_talent_psyker_shout_reduces_warp_charge_generation"}, {"ru"},
			loc_text("Успокаивающее извержение")),
	--[+ Traditional Chinese - 平靜进發 +]--
	create_template("talent_tree_psy_abil1_001_tw",
		{"loc_talent_psyker_shout_reduces_warp_charge_generation"}, {"zh-tw"},
			loc_text("平靜进發")),

	--[+ Ability 1-2 - Warp Rupture +]--
	-- create_template("talent_tree_psy_abil1_002_en",
		-- {"loc_talent_psyker_shout_damage_per_warp_charge"}, {"en"},
			-- loc_text("Warp Rupture")),
	--[+ Russian +]-- Разрыв варпа -- руоф Варп-разрыв
	create_template("talent_tree_psy_abil1_002_en",
		{"loc_talent_psyker_shout_damage_per_warp_charge"}, {"ru"},
			loc_text("Разрыв варпа")),
	--[+ Traditional Chinese - 亞空間爆發 +]--
	create_template("talent_tree_psy_abil1_002_tw",
		{"loc_talent_psyker_shout_damage_per_warp_charge"}, {"zh-tw"},
			loc_text("亞空間爆發")),

	--[+ Ability 1-3 - Warp Creeping Flames +]--
	-- create_template("talent_tree_psy_abil1_003_en",
		-- {"loc_talent_psyker_warpfire_on_shout"}, {"en"},
			-- loc_text("Creeping Flames")),
	--[+ Russian +]-- Ползучее пламя -- руоф Раздувающееся пламя
	create_template("talent_tree_psy_abil1_003_ru",
		{"loc_talent_psyker_warpfire_on_shout"}, {"ru"},
			loc_text("Ползучее пламя")),
	--[+ Traditional Chinese - 蔓延火焰 +]--
	create_template("talent_tree_psy_abil1_003_tw",
		{"loc_talent_psyker_warpfire_on_shout"}, {"zh-tw"},
			loc_text("蔓延火焰")),

	--[+ Ability 2 - Telekine Shield +]--
	-- create_template("talent_tree_psy_abil2_000_en",
		-- {"loc_talent_psyker_combat_ability_shield"}, {"en"},
			-- loc_text("Telekine Shield")),
	--[+ Russian +]-- Телекинетический щит
	-- create_template("talent_tree_psy_abil2_000_ru",
		-- {"loc_talent_psyker_combat_ability_shield"}, {"ru"},
			-- loc_text("Телекинетический щит")),
	--[+ Traditional Chinese - 念力護盾 +]--
	-- create_template("talent_tree_psy_abil2_000_tw",
		-- {"loc_talent_psyker_combat_ability_shield"}, {"zh-tw"},
			-- loc_text("念力護盾")),

	--[+ Ability 2-1 - Bolstered Shield +]--
	-- create_template("talent_tree_psy_abil2_001_en",
		-- {"loc_talent_psyker_force_field_charges"}, {"en"},
			-- loc_text("Bolstered Shield")),
	--[+ Russian +]-- Усиленный щит
	-- create_template("talent_tree_psy_abil2_001_ru",
		-- {"loc_talent_psyker_force_field_charges"}, {"ru"},
			-- loc_text("Усиленный щит")),
	--[+ Traditional Chinese - 強化護盾 +]--
	-- create_template("talent_tree_psy_abil2_001_tw",
		-- {"loc_talent_psyker_force_field_charges"}, {"zh-tw"},
			-- loc_text("強化護盾")),

	--[+ Ability 2-2 - Enervating Threshold +]--
	-- create_template("talent_tree_psy_abil2_002_en",
		-- {"loc_talent_psyker_force_field_stun_increased"}, {"en"},
			-- loc_text("Enervating Threshold")),
	--[+ Russian +]-- Порог ослабления
	-- create_template("talent_tree_psy_abil2_002_ru",
		-- {"loc_talent_psyker_force_field_stun_increased"}, {"ru"},
			-- loc_text("Порог ослабления")),
	--[+ Traditional Chinese - 衰弱界線 +]--
	-- create_template("talent_tree_psy_abil2_002_tw",
		-- {"loc_talent_psyker_force_field_stun_increased"}, {"zh-tw"},
			-- loc_text("衰弱界線")),

	--[+ Ability 2-3 - Telekine Dome +]--
	-- create_template("talent_tree_psy_abil2_003_en",
		-- {"loc_talent_psyker_force_field_dome"}, {"en"},
			-- loc_text("Telekine Dome")),
	--[+ Russian +]-- Телекинический купол
	-- create_template("talent_tree_psy_abil2_003_ru",
		-- {"loc_talent_psyker_force_field_dome"}, {"ru"},
			-- loc_text("Телекинический купол")),
	--[+ Traditional Chinese - 念力穹頂 +]--
	-- create_template("talent_tree_psy_abil2_003_tw",
		-- {"loc_talent_psyker_force_field_dome"}, {"zh-tw"},
			-- loc_text("念力穹頂")),

	--[+ Ability 2-4 - Sanctuary +]--
	-- create_template("talent_tree_psy_abil2_004_en",
		-- {"loc_talent_psyker_force_field_grants_toughness"}, {"en"},
			-- loc_text("Sanctuary")),
	--[+ Russian +]-- Убежище -- руоф Святилище
	create_template("talent_tree_psy_abil2_004_ru",
		{"loc_talent_psyker_force_field_grants_toughness"}, {"ru"},
			loc_text("Убежище")),
	--[+ Traditional Chinese - 庇護所 +]--
	-- create_template("talent_tree_psy_abil2_004_tw",
		-- {"loc_talent_psyker_force_field_grants_toughness"}, {"zh-tw"},
			-- loc_text("庇護所")),

	--[+ Ability 3 - Scrier's Gaze +]--
	-- create_template("talent_tree_psy_abil3_000_en",
		-- {"loc_talent_psyker_combat_ability_overcharge_stance"}, {"en"},
			-- loc_text("Scrier's Gaze")),
	--[+ Russian +]-- Взор провидца -- руоф Взор Скрира
	create_template("talent_tree_psy_abil3_000_ru",
		{"loc_talent_psyker_combat_ability_overcharge_stance"}, {"ru"},
			loc_text("Взор провидца")),
	--[+ Traditional Chinese - 占卜者的注視 +]--
	-- create_template("talent_tree_psy_abil3_000_tw",
		-- {"loc_talent_psyker_combat_ability_overcharge_stance"}, {"zh-tw"},
			-- loc_text("占卜者的注視")),

	--[+ Ability 3-1 - Endurance +]--
	-- create_template("talent_tree_psy_abil3_001_en",
		-- {"loc_ability_psyker_overcharge_reduced_toughness_damage_taken"}, {"en"},
			-- loc_text("Endurance")),
	--[+ Russian +]-- Выносливость
	-- create_template("talent_tree_psy_abil3_001_ru",
		-- {"loc_ability_psyker_overcharge_reduced_toughness_damage_taken"}, {"ru"},
			-- loc_text("Выносливость")),
	--[+ Traditional Chinese - 堅韌 +]--
	-- create_template("talent_tree_psy_abil3_001_tw",
		-- {"loc_ability_psyker_overcharge_reduced_toughness_damage_taken"}, {"zh-tw"},
			-- loc_text("堅韌")),

	--[+ Ability 3-2 - Precognition +]--
	-- create_template("talent_tree_psy_abil3_002_en",
		-- {"loc_ability_psyker_overcharge_weakspot"}, {"en"},
			-- loc_text("Precognition")),
	--[+ Russian +]-- Предвидение -- руоф Познание
	create_template("talent_tree_psy_abil3_002_en",
		{"loc_ability_psyker_overcharge_weakspot"}, {"ru"},
			loc_text("Предвидение")),
	--[+ Traditional Chinese - 預知未來 +]--
	-- create_template("talent_tree_psy_abil3_002_tw",
		-- {"loc_ability_psyker_overcharge_weakspot"}, {"zh-tw"},
			-- loc_text("預知未來")),

	--[+ Ability 3-3 - Warp Speed +]--
	-- create_template("talent_tree_psy_abil3_003_en",
		-- {"loc_ability_psyker_overcharge_movement_speed"}, {"en"},
			-- loc_text("Warp Speed")),
	--[+ Russian +]-- Варп-скорость
	-- create_template("talent_tree_psy_abil3_003_ru",
		-- {"loc_ability_psyker_overcharge_movement_speed"}, {"ru"},
			-- loc_text("Варп-скорость")),
	--[+ Traditional Chinese - 亞空間加速 +]--
	-- create_template("talent_tree_psy_abil3_003_tw",
		-- {"loc_ability_psyker_overcharge_movement_speed"}, {"zh-tw"},
			-- loc_text("亞空間加速")),

	--[+ Ability 3-4 - Reality Anchor +]--
	-- create_template("talent_tree_psy_abil3_004_en",
		-- {"loc_ability_psyker_overcharge_reduced_warp_charge"}, {"en"},
			-- loc_text("Reality Anchor")),
	--[+ Russian +]-- Якорь реальности
	-- create_template("talent_tree_psy_abil3_004_ru",
		-- {"loc_ability_psyker_overcharge_reduced_warp_charge"}, {"ru"},
			-- loc_text("Якорь реальности")),
	--[+ Traditional Chinese - 現實錨點 +]--
	-- create_template("talent_tree_psy_abil3_004_tw",
		-- {"loc_ability_psyker_overcharge_reduced_warp_charge"}, {"zh-tw"},
			-- loc_text("現實錨點")),

	--[+ Ability 3-5 - Warp Unbound +]--
	-- create_template("talent_tree_psy_abil3_005_en",
		-- {"loc_talent_psyker_overcharge_infinite_casting"}, {"en"},
			-- loc_text("Warp Unbound")),
	--[+ Russian +]-- Высвобождение варпа -- руоф Искажение варпа
	create_template("talent_tree_psy_abil3_005_ru",
		{"loc_talent_psyker_overcharge_infinite_casting"}, {"ru"},
			loc_text("Высвобождение варпа")),
	--[+ Traditional Chinese - 亞空間突破 +]--
	-- create_template("talent_tree_psy_abil3_005_tw",
		-- {"loc_talent_psyker_overcharge_infinite_casting"}, {"zh-tw"},
			-- loc_text("亞空間突破")),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ ТАЛАНТЫ - 鑰石 + +]--

-- - Warp Siphon - 亞空間虹吸
-- - Inner Tranquility - 平心靜氣
-- - Essence Harvest - 吸精奪萃
-- - Empyrean Empowerment - 至天高之力
-- - In Fire Reborn - 涅槃
-- - Psychic Vampire - 靈能吸血鬼
-- - Warp Battery - 亞空間電池
-- - Empowered Psionics - 靈能強化
-- - Bio-Lodestone - 生物磁石
-- - Psychic Leeching - 吸血閃電
-- - Overpowering Souls - 吞靈強擊
-- - Charged Up - 充能完畢
-- - Disrupt Destiny - 擾動命運
-- - Perfectionism - 完美主義
-- - Purloin Providence - 盜竊天命
-- - Lingering Influence - 持久影響
-- - Cruel Fortune - 殘忍命運
	--[+ Keystone 1 - Warp Siphon +]--
	-- create_template("talent_tree_psy_keys1_000_en",
		-- {"loc_talent_psyker_souls"}, {"en"},
			-- loc_text("Warp Siphon")),
	--[+ Russian +]-- Переливание варпа -- руоф Варп-сифон
	create_template("talent_tree_psy_keys1_000_ru",
		{"loc_talent_psyker_souls"}, {"ru"},
			loc_text("Переливание варпа")),
	--[+ Traditional Chinese - 亞空間虹吸 +]--
	-- create_template("talent_tree_psy_keys1_000_tw",
		-- {"loc_talent_psyker_souls"}, {"zh-tw"},
			-- loc_text("亞空間虹吸")),

	--[+ Keystone 1-1 - Inner Tranquility +]--
	-- create_template("talent_tree_psy_keys1_001_en",
		-- {"loc_talent_psyker_reduced_warp_charge_cost_venting_speed"}, {"en"},
			-- loc_text("Inner Tranquility")),
	--[+ Russian +]-- Внутреннее спокойствие
	-- create_template("talent_tree_psy_keys1_001_ru",
		-- {"loc_talent_psyker_reduced_warp_charge_cost_venting_speed"}, {"ru"},
			-- loc_text("Внутреннее спокойствие")),
	--[+ Traditional Chinese - 平心靜氣 +]--
	-- create_template("talent_tree_psy_keys1_001_tw",
		-- {"loc_talent_psyker_reduced_warp_charge_cost_venting_speed"}, {"zh-tw"},
			-- loc_text("平心靜氣")),

	--[+ Keystone 1-2 - Essence Harvest +]--
	-- create_template("talent_tree_psy_keys1_002_en",
		-- {"loc_talent_psyker_toughness_regen_on_soul"}, {"en"},
			-- loc_text("Essence Harvest")),
	--[+ Russian +]-- Сбор сущностей -- руоф Сбор сущности
	create_template("talent_tree_psy_keys1_002_ru",
		{"loc_talent_psyker_toughness_regen_on_soul"}, {"ru"},
			loc_text("Сбор сущностей")),
	--[+ Traditional Chinese - 吸精奪萃 +]--
	-- create_template("talent_tree_psy_keys1_002_tw",
		-- {"loc_talent_psyker_toughness_regen_on_soul"}, {"zh-tw"},
			-- loc_text("吸精奪萃")),

	--[+ Keystone 1-3 - Empyrean Empowerment +]--
	-- create_template("talent_tree_psy_keys1_003_en",
		-- {"loc_talent_psyker_souls_increase_damage"}, {"en"},
			-- loc_text("Empyrean Empowerment")),
	--[+ Russian +]-- Эмпирейское усиление -- руоф Усиление влияния Эмпирея
	create_template("talent_tree_psy_keys1_003_ru",
		{"loc_talent_psyker_souls_increase_damage"}, {"ru"},
			loc_text("Эмпирейское усиление")),
	--[+ Traditional Chinese - 至天高之力 +]--
	-- create_template("talent_tree_psy_keys1_003_tw",
		-- {"loc_talent_psyker_souls_increase_damage"}, {"zh-tw"},
			-- loc_text("至天高之力")),

	--[+ Keystone 1-4 - In Fire Reborn +]--
	-- create_template("talent_tree_psy_keys1_004_en",
		-- {"loc_talent_psyker_warpfire_generates_souls"}, {"en"},
			-- loc_text("In Fire Reborn")),
	--[+ Russian +]-- Возрождение в огне -- руоф В огне восстану
	create_template("talent_tree_psy_keys1_004_ru",
		{"loc_talent_psyker_warpfire_generates_souls"}, {"ru"},
			loc_text("Возрождение в огне")),
	--[+ Traditional Chinese - 涅槃 +]--
	-- create_template("talent_tree_psy_keys1_004_tw",
		-- {"loc_talent_psyker_warpfire_generates_souls"}, {"zh-tw"},
			-- loc_text("涅槃")),

	--[+ Keystone 1-5 - Psychic Vampire +]--
	-- create_template("talent_tree_psy_keys1_005_en",
		-- {"loc_talent_psyker_souls_on_kill_coop"}, {"en"},
			-- loc_text("Psychic Vampire")),
	--[+ Russian +]-- Психический вампир
	-- create_template("talent_tree_psy_keys1_005_ru",
		-- {"loc_talent_psyker_souls_on_kill_coop"}, {"ru"},
			-- loc_text("Психический вампир")),
	--[+ Traditional Chinese - 靈能吸血鬼 +]--
	-- create_template("talent_tree_psy_keys1_005_tw",
		-- {"loc_talent_psyker_souls_on_kill_coop"}, {"zh-tw"},
			-- loc_text("靈能吸血鬼")),

	--[+ Keystone 1-6 - Warp Battery +]--
	-- create_template("talent_tree_psy_keys1_006_en",
		-- {"loc_talent_psyker_increased_souls"}, {"en"},
			-- loc_text("Warp Battery")),
	--[+ Russian +]-- Варп-аккумулятор
	-- create_template("talent_tree_psy_keys1_006_ru",
		-- {"loc_talent_psyker_increased_souls"}, {"ru"},
			-- loc_text("Варп-аккумулятор")),
	--[+ Traditional Chinese - 亞空間電池 +]--
	-- create_template("talent_tree_psy_keys1_006_tw",
		-- {"loc_talent_psyker_increased_souls"}, {"zh-tw"},
			-- loc_text("亞空間電池")),

	--[+ Keystone 2 - Empowered Psionics +]--
	-- create_template("talent_tree_psy_keys2_000_en",
		-- {"loc_talent_psyker_empowered_ability"}, {"en"},
			-- loc_text("Empowered Psionics")),
	--[+ Russian +]-- руоф Усиленные псионики
	-- create_template("talent_tree_psy_keys2_000_ru",
		-- {"loc_talent_psyker_empowered_ability"}, {"ru"},
			-- loc_text("Усиленные псионики")),
	--[+ Traditional Chinese - 靈能強化 +]--
	-- create_template("talent_tree_psy_keys2_000_tw",
		-- {"loc_talent_psyker_empowered_ability"}, {"zh-tw"},
			-- loc_text("靈能強化")),

	--[+ Keystone 2-1 - Bio-Lodestone +]--
	-- create_template("talent_tree_psy_keys2_001_en",
		-- {"loc_talent_psyker_increase_empower_chain_lighting_chance"}, {"en"},
			-- loc_text("Bio-Lodestone")),
	--[+ Russian +]-- Биопритяжение
	-- create_template("talent_tree_psy_keys2_001_ru",
		-- {"loc_talent_psyker_increase_empower_chain_lighting_chance"}, {"ru"},
			-- loc_text("Биопритяжение")),
	--[+ Traditional Chinese - 生物磁石 +]--
	-- create_template("talent_tree_psy_keys2_001_tw",
		-- {"loc_talent_psyker_increase_empower_chain_lighting_chance"}, {"zh-tw"},
			-- loc_text("生物磁石")),

	--[+ Keystone 2-2 - Psychic Leeching +]--
	-- create_template("talent_tree_psy_keys2_002_en",
		-- {"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies"}, {"en"},
			-- loc_text("Psychic Leeching")),
	--[+ Russian +]-- Психическое высасывание -- руоф Психическая пиявка
	create_template("talent_tree_psy_keys2_002_ru",
		{"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies"}, {"ru"},
			loc_text("Психическое высасывание")),
	--[+ Traditional Chinese - 吸血閃電 +]--
	-- create_template("talent_tree_psy_keys2_002_tw",
		-- {"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies"}, {"zh-tw"},
			-- loc_text("吸血閃電")),

   --[+ Keystone 2-3 - Overpowering Souls +]--
	-- create_template("talent_tree_psy_keys2_003_en",
		-- {"loc_talent_psyker_empowered_ability_on_elite_kills"}, {"en"},
			-- loc_text("Overpowering Souls")),
	--[+ Russian +]-- Могучие души
	-- create_template("talent_tree_psy_keys2_003_ru",
		-- {"loc_talent_psyker_empowered_ability_on_elite_kills"}, {"ru"},
			-- loc_text("Могучие души")),
	--[+ Traditional Chinese - 吞靈強擊 +]--
	-- create_template("talent_tree_psy_keys2_003_tw",
		-- {"loc_talent_psyker_empowered_ability_on_elite_kills"}, {"zh-tw"},
			-- loc_text("吞靈強擊")),

	--[+ Keystone 2-4 - Charged Up +]--
	-- create_template("talent_tree_psy_keys2_004_en",
		-- {"loc_talent_psyker_increased_empowered_chain_lightning_stacks"}, {"en"},
			-- loc_text("Charged Up")),
	--[+ Russian +]-- Заряженный -- руоф Зарядка
	create_template("talent_tree_psy_keys2_004_ru",
		{"loc_talent_psyker_increased_empowered_chain_lightning_stacks"}, {"ru"},
			loc_text("Заряженный")),
	--[+ Traditional Chinese - 充能完畢 +]--
	-- create_template("talent_tree_psy_keys2_004_tw",
		-- {"loc_talent_psyker_increased_empowered_chain_lightning_stacks"}, {"zh-tw"},
			-- loc_text("充能完畢")),

	--[+ Keystone 3 - Disrupt Destiny +]--
	-- create_template("talent_tree_psy_keys3_000_en",
		-- {"loc_talent_psyker_marked_enemies_passive"}, {"en"},
			-- loc_text("Disrupt Destiny")),
	--[+ Russian +]-- Прерывание судьбы -- руоф Разрушенная судьба
	create_template("talent_tree_psy_keys3_000_ru",
		{"loc_talent_psyker_marked_enemies_passive"}, {"ru"},
			loc_text("Прерывание судьбы")),
	--[+ Traditional Chinese - 擾動命運 +]--
	-- create_template("talent_tree_psy_keys3_000_tw",
		-- {"loc_talent_psyker_marked_enemies_passive"}, {"zh-tw"},
			-- loc_text("擾動命運")),

	--[+ Keystone 3-1 - Perfectionism +]--
	-- create_template("talent_tree_psy_keys3_001_en",
		-- {"loc_talent_psyker_mark_increased_max_stacks"}, {"en"},
			-- loc_text("Perfectionism")),
	--[+ Russian +]-- Перфекционизм
	-- create_template("talent_tree_psy_keys3_001_ru",
		-- {"loc_talent_psyker_mark_increased_max_stacks"}, {"ru"},
			-- loc_text("Перфекционизм")),
	--[+ Traditional Chinese - 完美主義 +]--
	-- create_template("talent_tree_psy_keys3_001_tw",
		-- {"loc_talent_psyker_mark_increased_max_stacks"}, {"zh-tw"},
			-- loc_text("完美主義")),

	--[+ Keystone 3-2 - Purloin Providence +]--
	-- create_template("talent_tree_psy_keys3_002_en",
		-- {"loc_talent_psyker_mark_kills_can_vent"}, {"en"},
			-- loc_text("Purloin Providence")),
	--[+ Russian +]-- Похищение провидения -- руоф Похищенное провидение
	create_template("talent_tree_psy_keys3_002_ru",
		{"loc_talent_psyker_mark_kills_can_vent"}, {"ru"},
			loc_text("Похищение провидения")),
	--[+ Traditional Chinese - 盜竊天命 +]--
	-- create_template("talent_tree_psy_keys3_002_tw",
		-- {"loc_talent_psyker_mark_kills_can_vent"}, {"zh-tw"},
			-- loc_text("盜竊天命")),

	--[+ Keystone 3-3 - Lingering Influence +]--
	-- create_template("talent_tree_psy_keys3_003_en",
		-- {"loc_talent_psyker_mark_increased_duration"}, {"en"},
			-- loc_text("Lingering Influence")),
	--[+ Russian +]-- Длительное влияние -- руоф Длящееся влияние
	create_template("talent_tree_psy_keys3_003_ru",
		{"loc_talent_psyker_mark_increased_duration"}, {"ru"},
			loc_text("Длительное влияние")),
	--[+ Traditional Chinese - 持久影響 +]--
	-- create_template("talent_tree_psy_keys3_003_tw",
		-- {"loc_talent_psyker_mark_increased_duration"}, {"zh-tw"},
			-- loc_text("持久影響")),

	--[+ Keystone 3-4 - Cruel Fortune +]--
	-- create_template("talent_tree_psy_keys3_004_en",
		-- {"loc_talent_psyker_mark_weakspot_stacks"}, {"en"},
			-- loc_text("Cruel Fortune")),
	--[+ Russian +]-- Жестокая судьба
	-- create_template("talent_tree_psy_keys3_004_ru",
		-- {"loc_talent_psyker_mark_weakspot_stacks"}, {"ru"},
			-- loc_text("Жестокая судьба")),
	--[+ Traditional Chinese - 殘忍命運 +]--
	-- create_template("talent_tree_psy_keys3_004_tw",
		-- {"loc_talent_psyker_mark_weakspot_stacks"}, {"zh-tw"},
			-- loc_text("殘忍命運")),

--[+ +PASSIVES - ПАССИВНЫЕ ТАЛАНТЫ+ +]--

-- - Soulstealer - 靈魂竊賊
-- - Mettle - 堅毅
-- - Quietude - 心如止水
-- - Warp Expenditure - 亞空間耗費
-- - Perilous Combustion 險惡燃燒
-- - Perfect Timing - 完美時機
-- - Battle Meditation - 戰鬥冥想
-- - Psykinetic's Aura - 靈能學者光環
-- - Malefic Momentum - 惡意攻勢
-- - Perilous Assault - 反噬突襲
-- - Lightning Speed - 迅雷之勢 
-- - Empyric Shock - 亞空間震波
-- - By Crack of Bone - 骨折後遺症
-- - Warp Splitting - 亞空間分裂
-- - Unlucky for Some - 倒楣蛋
-- - One with the Warp - 亞空間強化
-- - Empathic Evasion - 反射閃避
-- - Anticipation - 看破
-- - Puppet Master - 傀儡師
-- - Crystalline Will - 結晶意志
-- - Warp Rider - 亞空間騎士
-- - Kinetic Deflection - 動能偏斜
-- - Tranquility Through Slaughter - 殺無赦，心祥和
-- - Empyric Resolve - 亞空間意志
-- - Penetration of the Soul - 靈魂穿透
	--[+ Passive 1 - Soulstealer +]--
	-- create_template("talent_tree_psy_pas_001_en",
		-- {"loc_talent_psyker_toughness_on_warp_kill"}, {"en"},
			-- loc_text("Soulstealer")),
	--[+ Russian +]-- Похититель душ -- руоф Похититель души
	create_template("talent_tree_psy_pas_001_ru",
		{"loc_talent_psyker_toughness_on_warp_kill"}, {"ru"},
			loc_text("Похититель душ")),
	--[+ Traditional Chinese - 靈魂竊賊 +]--
	-- create_template("talent_tree_psy_pas_001_tw",
		-- {"loc_talent_psyker_toughness_on_warp_kill"}, {"zh-tw"},
			-- loc_text("靈魂竊賊")),

	--[+ Passive 2 - Mettle +]--
	-- create_template("talent_tree_psy_pas_002_en",
		-- {"loc_talent_psyker_crits_regen_tougness_and_movement_speed"}, {"en"},
			-- loc_text("Mettle")),
	--[+ Russian +]-- Ретивость
	-- create_template("talent_tree_psy_pas_002_ru",
		-- {"loc_talent_psyker_crits_regen_tougness_and_movement_speed"}, {"ru"},
			-- loc_text("Ретивость")),
	--[+ Traditional Chinese - 堅毅 +]--
	-- create_template("talent_tree_psy_pas_002_tw",
		-- {"loc_talent_psyker_crits_regen_tougness_and_movement_speed"}, {"zh-tw"},
			-- loc_text("堅毅")),

	--[+ Passive 3 - Quietude +]--
	-- create_template("talent_tree_psy_pas_003_en",
		-- {"loc_talent_psyker_toughness_from_vent"}, {"en"},
			-- loc_text("Quietude")),
	--[+ Russian +]-- Спокойствие -- руоф Тишина
	create_template("talent_tree_psy_pas_003_ru",
		{"loc_talent_psyker_toughness_from_vent"}, {"ru"},
			loc_text("Спокойствие")),
	--[+ Traditional Chinese - 心如止水 +]--
	-- create_template("talent_tree_psy_pas_003_tw",
		-- {"loc_talent_psyker_toughness_from_vent"}, {"zh-tw"},
			-- loc_text("心如止水")),

	--[+ Passive 4 - Warp Expenditure +]--
	-- create_template("talent_tree_psy_pas_004_en",
		-- {"loc_talent_psyker_warp_charge_generation_generates_toughness"}, {"en"},
			-- loc_text("Warp Expenditure")),
	--[+ Russian +]-- Затраты варпа -- руоф Варп-затраты
	create_template("talent_tree_psy_pas_004_ru",
		{"loc_talent_psyker_warp_charge_generation_generates_toughness"}, {"ru"},
			loc_text("Затраты варпа")),
	--[+ Traditional Chinese - 亞空間耗費 +]--
	-- create_template("talent_tree_psy_pas_004_tw",
		-- {"loc_talent_psyker_warp_charge_generation_generates_toughness"}, {"zh-tw"},
			-- loc_text("亞空間耗費")),

	--[+ Passive 5 - Perilous Combustion +]--
	-- create_template("talent_tree_psy_pas_005_en",
		-- {"loc_talent_psyker_elite_kills_add_warpfire"}, {"en"},
			-- loc_text("Perilous Combustion")),
	--[+ Russian +]-- Опасное возгорание -- руоф Пагубное воспламенение
	create_template("talent_tree_psy_pas_005_ru",
		{"loc_talent_psyker_elite_kills_add_warpfire"}, {"ru"},
			loc_text("Опасное возгорание")),
	--[+ Traditional Chinese - 險惡燃燒 +]--
	-- create_template("talent_tree_psy_pas_005_tw",
		-- {"loc_talent_psyker_elite_kills_add_warpfire"}, {"zh-tw"},
			-- loc_text("險惡燃燒")),

	--[+ Passive 6 - Perfect Timing +]--
	-- create_template("talent_tree_psy_pas_006_en",
		-- {"loc_talent_psyker_crits_empower_next_attack"}, {"en"},
			-- loc_text("Perfect Timing")),
	--[+ Russian +]-- Идеальный момент -- руоф Безупречное чувство времени
	create_template("talent_tree_psy_pas_006_ru",
		{"loc_talent_psyker_crits_empower_next_attack"}, {"ru"},
			loc_text("Идеальный момент")),
	--[+ Traditional Chinese - 完美時機 +]--
	-- create_template("talent_tree_psy_pas_006_tw",
		-- {"loc_talent_psyker_crits_empower_next_attack"}, {"zh-tw"},
			-- loc_text("完美時機")),

	--[+ Passive 7 - Battle Meditation +]--
	-- create_template("talent_tree_psy_pas_007_en",
		-- {"loc_talent_psyker_base_2"}, {"en"},
			-- loc_text("Battle Meditation")),
	--[+ Russian +]-- Боевая медитация
	-- create_template("talent_tree_psy_pas_007_ru",
		-- {"loc_talent_psyker_base_2"}, {"ru"},
			-- loc_text("Боевая медитация")),
	--[+ Traditional Chinese - 戰鬥冥想 +]--
	-- create_template("talent_tree_psy_pas_007_tw",
		-- {"loc_talent_psyker_base_2"}, {"zh-tw"},
			-- loc_text("戰鬥冥想")),

	--[+ Passive 8 - Wildfire +]--
	-- create_template("talent_tree_psy_pas_008_en",
		-- {"loc_talent_psyker_warpfire_spread"}, {"en"},
			-- loc_text("Wildfire")),
	--[+ Russian +]-- Некотролируемый пожар -- руоф Гремучая смесь
	create_template("talent_tree_psy_pas_008_ru",
		{"loc_talent_psyker_warpfire_spread"}, {"ru"},
			loc_text("Некотролируемый пожар")),
	--[+ Traditional Chinese - 野火 +]--
	-- create_template("talent_tree_psy_pas_008_tw",
		-- {"loc_talent_psyker_warpfire_spread"}, {"zh-tw"},
			-- loc_text("野火")),

	--[+ Passive 9 - Psykinetic's Aura +]--
	-- create_template("talent_tree_psy_pas_009_en",
		-- {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency"}, {"en"},
			-- loc_text("Psykinetic's Aura")),
	--[+ Russian +]-- Аура психокинетика
	-- create_template("talent_tree_psy_pas_009_ru",
		-- {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency"}, {"ru"},
			-- loc_text("Аура психокинетика")),
	--[+ Traditional Chinese - 靈能學者光環 +]--
	-- create_template("talent_tree_psy_pas_009_tw",
		-- {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency"}, {"zh-tw"},
			-- loc_text("靈能學者光環")),

	--[+ Passive 10 - Mind in Motion +]--
	-- create_template("talent_tree_psy_pas_010_en",
		-- {"loc_talent_psyker_venting_doesnt_slow"}, {"en"},
			-- loc_text("Mind in Motion")),
	--[+ Russian +]-- Разум в движении -- руоф Движущийся разум
	create_template("talent_tree_psy_pas_010_ru",
		{"loc_talent_psyker_venting_doesnt_slow"}, {"ru"},
			loc_text("Разум в движении")),
	--[+ Traditional Chinese - 靈能學者光環 +]--
	-- create_template("talent_tree_psy_pas_010_tw",
		-- {"loc_talent_psyker_venting_doesnt_slow"}, {"zh-tw"},
			-- loc_text("靈能學者光環")),

	--[+ Passive 11 - Malefic Momentum +]--
	-- create_template("talent_tree_psy_pas_011_en",
		-- {"loc_talent_psyker_kills_stack_other_weapon_damage"}, {"en"},
			-- loc_text("Malefic Momentum")),
	--[+ Russian +]-- Пагубный импульс -- руоф Пагубный моментум
	create_template("talent_tree_psy_pas_011_ru",
		{"loc_talent_psyker_kills_stack_other_weapon_damage"}, {"ru"},
			loc_text("Пагубный импульс")),
	--[+ Traditional Chinese - 惡意攻勢 +]--
	-- create_template("talent_tree_psy_pas_011_tw",
		-- {"loc_talent_psyker_kills_stack_other_weapon_damage"}, {"zh-tw"},
			-- loc_text("惡意攻勢")),

	--[+ Passive 12 - Channeled Force +]--
	-- create_template("talent_tree_psy_pas_012_en",
		-- {"loc_talent_psyker_force_staff_bonus"}, {"en"},
			-- loc_text("Channeled Force")),
	--[+ Russian +]-- Направленная сила
	-- create_template("talent_tree_psy_pas_012_ru",
		-- {"loc_talent_psyker_force_staff_bonus"}, {"ru"},
			-- loc_text("Направленная сила")),
	--[+ Traditional Chinese - 靈能強化 +]--
	-- create_template("talent_tree_psy_pas_012_tw",
		-- {"loc_talent_psyker_force_staff_bonus"}, {"zh-tw"},
			-- loc_text("靈能強化")),

	--[+ Passive 13 - Perilous Assault +]--
	-- create_template("talent_tree_psy_pas_013_en",
		-- {"loc_talent_psyker_force_staff_melee_attack_bonus"}, {"en"},
			-- loc_text("Perilous Assault")), 
	--[+ Russian +]--Рискованное нападение -- руоф Пагубное нападение
	create_template("talent_tree_psy_pas_013_ru",
		{"loc_talent_psyker_force_staff_melee_attack_bonus"}, {"ru"},
			loc_text("Рискованное нападение")),
	--[+ Traditional Chinese - 反噬突襲 +]--
	-- create_template("talent_tree_psy_pas_013_tw",
		-- {"loc_talent_psyker_force_staff_melee_attack_bonus"}, {"zh-tw"},
			-- loc_text("反噬突襲")),

	--[+ Passive 14 - Lightning Speed +]--
	-- create_template("talent_tree_psy_pas_014_en",
		-- {"loc_talent_psyker_melee_attack_speed"}, {"en"},
			-- loc_text("Lightning Speed")),
	--[+ Russian +]-- Молниеносная скорость
	-- create_template("talent_tree_psy_pas_014_ru",
		-- {"loc_talent_psyker_melee_attack_speed"}, {"ru"},
			-- loc_text("Молниеносная скорость")),
	--[+ Traditional Chinese - 迅雷之勢 +]--
	-- create_template("talent_tree_psy_pas_014_tw",
		-- {"loc_talent_psyker_melee_attack_speed"}, {"zh-tw"},
			-- loc_text("迅雷之勢")),

	--[+ Passive 15 - Souldrinker +]--
	-- create_template("talent_tree_psy_pas_015_en",
		-- {"loc_talent_psyker_nearby_soulblaze_reduced_damage"}, {"en"},
			-- loc_text("Souldrinker")),
	--[+ Russian +]-- Поглотитель душ -- руоф Поглощение душ
	create_template("talent_tree_psy_pas_015_ru",
		{"loc_talent_psyker_nearby_soulblaze_reduced_damage"}, {"ru"},
			loc_text("Поглотитель душ")),
	--[+ Traditional Chinese - 汲魂者 +]--
	-- create_template("talent_tree_psy_pas_015_tw",
		-- {"loc_talent_psyker_nearby_soulblaze_reduced_damage"}, {"zh-tw"},
			-- loc_text("汲魂者")),

	--[+ Passive 16 - Empyric Shock +]--
	-- create_template("talent_tree_psy_pas_016_en",
		-- {"loc_talent_psyker_force_staff_quick_attack_bonus"}, {"en"},
			-- loc_text("Empyric Shock")),
	--[+ Russian +]-- Эмпирический шок
	-- create_template("talent_tree_psy_pas_016_ru",
		-- {"loc_talent_psyker_force_staff_quick_attack_bonus"}, {"ru"},
			-- loc_text("Эмпирический шок")),
	--[+ Traditional Chinese - 亞空間震波 +]--
	-- create_template("talent_tree_psy_pas_016_tw",
		-- {"loc_talent_psyker_force_staff_quick_attack_bonus"}, {"zh-tw"},
			-- loc_text("亞空間震波")),

	--[+ Passive 17 - By Crack of Bone +]--
	-- create_template("talent_tree_psy_pas_017_en",
		-- {"loc_talent_psyker_melee_weaving"}, {"en"},
			-- loc_text("By Crack of Bone")),
	--[+ Russian +]-- Треск костей
	-- create_template("talent_tree_psy_pas_017_ru",
		-- {"loc_talent_psyker_melee_weaving"}, {"ru"},
			-- loc_text("Треск костей")),
	--[+ Traditional Chinese - 骨折後遺症 +]--
	-- create_template("talent_tree_psy_pas_017_tw",
		-- {"loc_talent_psyker_melee_weaving"}, {"zh-tw"},
			-- loc_text("骨折後遺症")),

	--[+ Passive 18 - Warp Splitting +]--
	-- create_template("talent_tree_psy_pas_018_en",
		-- {"loc_talent_psyker_cleave_from_peril"}, {"en"},
			-- loc_text("Warp Splitting")),
	--[+ Russian +]-- Расщепление варпа
	-- create_template("talent_tree_psy_pas_018_ru",
		-- {"loc_talent_psyker_cleave_from_peril"}, {"ru"},
			-- loc_text("Расщепление варпа")),
	--[+ Traditional Chinese - 亞空間分裂 +]--
	-- create_template("talent_tree_psy_pas_018_tw",
		-- {"loc_talent_psyker_cleave_from_peril"}, {"zh-tw"},
			-- loc_text("亞空間分裂")),

	--[+ Passive 19 - Unlucky for Some +]--
	-- create_template("talent_tree_psy_pas_019_en",
		-- {"loc_talent_psyker_restore_toughness_to_allies_when_ally_down"}, {"en"},
			-- loc_text("Unlucky for Some")),
	--[+ Russian +]-- Не везёт некоторым -- руоф Некоторым не повезло
	create_template("talent_tree_psy_pas_019_ru",
		{"loc_talent_psyker_restore_toughness_to_allies_when_ally_down"}, {"ru"},
			loc_text("Не везёт некоторым")),
	--[+ Traditional Chinese - 倒楣蛋 +]--
	-- create_template("talent_tree_psy_pas_019_tw",
		-- {"loc_talent_psyker_restore_toughness_to_allies_when_ally_down"}, {"zh-tw"},
			-- loc_text("倒楣蛋")),

	--[+ Passive 20 - One with the Warp +]--
	-- create_template("talent_tree_psy_pas_020_en",
		-- {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge"}, {"en"},
			-- loc_text("One with the Warp")),
	--[+ Russian +]-- Единство с варпом
	-- create_template("talent_tree_psy_pas_020_ru",
		-- {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge"}, {"ru"},
			-- loc_text("Единство с варпом")),
	--[+ Traditional Chinese - 亞空間強化 +]--
	-- create_template("talent_tree_psy_pas_020_tw",
		-- {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge"}, {"zh-tw"},
			-- loc_text("亞空間強化")),

	--[+ Passive 21 - Empathic Evasion +]--
	-- create_template("talent_tree_psy_pas_21_en",
		-- {"loc_talent_psyker_dodge_after_crits"}, {"en"},
			-- loc_text("Empathic Evasion")),
	--[+ Russian +]-- Эмпатическое уклонение
	-- create_template("talent_tree_psy_pas_21_ru",
		-- {"loc_talent_psyker_dodge_after_crits"}, {"ru"},
			-- loc_text("Эмпатическое уклонение")),
	--[+ Traditional Chinese - 反射閃避 +]--
	-- create_template("talent_tree_psy_pas_21_tw",
		-- {"loc_talent_psyker_dodge_after_crits"}, {"zh-tw"},
			-- loc_text("反射閃避")),

	--[+ Passive 22 - Anticipation +]--
	-- create_template("talent_tree_psy_pas_022_en",
		-- {"loc_talent_psyker_improved_dodge"}, {"en"},
			-- loc_text("Anticipation")),
	--[+ Russian +]-- Предвкушение
	-- create_template("talent_tree_psy_pas_022_ru",
		-- {"loc_talent_psyker_improved_dodge"}, {"ru"},
			-- loc_text("Предвкушение")),
	--[+ Traditional Chinese - 看破 +]--
	-- create_template("talent_tree_psy_pas_022_tw",
		-- {"loc_talent_psyker_improved_dodge"}, {"zh-tw"},
			-- loc_text("看破")),

	--[+ Passive 23 - Solidity +]--
	-- create_template("talent_tree_psy_pas_023_en",
		-- {"loc_talent_psyker_increased_vent_speed"}, {"en"},
			-- loc_text("Solidity")),
	--[+ Russian +]-- Устойчивость -- руоф Твердость
	create_template("talent_tree_psy_pas_023_ru",
		{"loc_talent_psyker_increased_vent_speed"}, {"ru"},
			loc_text("Устойчивость")),
	--[+ Traditional Chinese - 心如止水 +]--
	-- create_template("talent_tree_psy_pas_023_tw",
		-- {"loc_talent_psyker_increased_vent_speed"}, {"zh-tw"},
			-- loc_text("心如止水")),

	--[+ Passive 24 - Puppet Master +]--
	-- create_template("talent_tree_psy_pas_024_en",
		-- {"loc_talent_psyker_coherency_size_increase"}, {"en"},
			-- loc_text("Puppet Master")),
	--[+ Russian +]-- Кукловод
	-- create_template("talent_tree_psy_pas_024_en",
		-- {"loc_talent_psyker_coherency_size_increase"}, {"ru"},
			-- loc_text("Кукловод")),
	--[+ Traditional Chinese - 傀儡師 +]--
	-- create_template("talent_tree_psy_pas_024_tw",
		-- {"loc_talent_psyker_coherency_size_increase"}, {"zh-tw"},
			-- loc_text("傀儡師")),

	--[+ Passive 25 - Warp Rider +]--
	-- create_template("talent_tree_psy_pas_025_en",
		-- {"loc_talent_psyker_damage_based_on_warp_charge"}, {"en"},
			-- loc_text("Warp Rider")),
	--[+ Russian +]-- Всадник варпа -- руоф Наездник варпа
	create_template("talent_tree_psy_pas_025_ru",
		{"loc_talent_psyker_damage_based_on_warp_charge"}, {"ru"},
			loc_text("Всадник варпа")),
	--[+ Traditional Chinese - 亞空間騎士 +]--
	-- create_template("talent_tree_psy_pas_025_tw",
		-- {"loc_talent_psyker_damage_based_on_warp_charge"}, {"zh-tw"},
			-- loc_text("亞空間騎士")),

	--[+ Passive 26 - Crystalline Will +]--
	-- create_template("talent_tree_psy_pas_027_en",
		-- {"loc_talent_psyker_alternative_peril_explosion"}, {"en"},
			-- loc_text("Crystalline Will")),
	--[+ Russian +]-- Чистая воля
	-- create_template("talent_tree_psy_pas_027_ru",
		-- {"loc_talent_psyker_alternative_peril_explosion"}, {"ru"},
			-- loc_text("Чистая воля")),
	--[+ Traditional Chinese - 結晶意志 +]--
	-- create_template("talent_tree_psy_pas_027_tw",
		-- {"loc_talent_psyker_alternative_peril_explosion"}, {"zh-tw"},
			-- loc_text("結晶意志")),

	--[+ Passive 27 - Kinetic Deflection +]--
	-- create_template("talent_tree_psy_pas_027_en",
		-- {"loc_talent_psyker_block_costs_warp_charge"}, {"en"},
			-- loc_text("Kinetic Deflection")),
	--[+ Russian +]-- Кинетическое отклонение
	-- create_template("talent_tree_psy_pas_027_ru",
		-- {"loc_talent_psyker_block_costs_warp_charge"}, {"ru"},
			-- loc_text("Кинетическое отклонение")),
	--[+ Traditional Chinese - 動能偏斜 +]--
	-- create_template("talent_tree_psy_pas_027_tw",
		-- {"loc_talent_psyker_block_costs_warp_charge"}, {"zh-tw"},
			-- loc_text("動能偏斜")),

	--[+ Passive 28 - Tranquility Through Slaughter +]--
	-- create_template("talent_tree_psy_pas_028_en",
		-- {"loc_talent_psyker_ranged_crits_vent"}, {"en"},
			-- loc_text("Tranquility Through Slaughter")),
	--[+ Russian +]-- Спокойствие посредством убийств
	-- create_template("talent_tree_psy_pas_028_ru",
		-- {"loc_talent_psyker_ranged_crits_vent"}, {"ru"},
			-- loc_text("Спокойствие посредством убийств")),
	--[+ Traditional Chinese - 殺無赦，心祥和 +]--
	-- create_template("talent_tree_psy_pas_028_tw",
		-- {"loc_talent_psyker_ranged_crits_vent"}, {"zh-tw"},
			-- loc_text("殺無赦，心祥和")),

	--[+ Passive 29 - Empyric Resolve +]--
	-- create_template("talent_tree_psy_pas_029_en",
		-- {"loc_talent_psyker_warp_glass_cannon"}, {"en"},
			-- loc_text("Empyric Resolve")),
	--[+ Russian +]-- Эмпирическая решимость
	-- create_template("talent_tree_psy_pas_029_ru",
		-- {"loc_talent_psyker_warp_glass_cannon"}, {"ru"},
			-- loc_text("Эмпирическая решимость")),
	--[+ Traditional Chinese - 亞空間意志 +]--
	-- create_template("talent_tree_psy_pas_029_tw",
		-- {"loc_talent_psyker_warp_glass_cannon"}, {"zh-tw"},
			-- loc_text("亞空間意志")),

	--[+ Passive 30 - Penetration of the Soul +]--
	-- create_template("talent_tree_psy_pas_030_en",
		-- {"loc_talent_psyker_warp_attacks_rending"}, {"en"} function(locale, value) return "Penetration of the Soul")),
	--[+ Russian +]-- Проникновение в душу
	-- create_template("talent_tree_psy_pas_030_ru",
		-- {"loc_talent_psyker_warp_attacks_rending"}, {"en"} function(locale, value) return "Проникновение в душу")),
	--[+ Traditional Chinese - 靈魂穿透 +]--
	-- create_template("talent_tree_psy_pas_030_tw",
		-- {"loc_talent_psyker_warp_attacks_rending"}, {"zh-tw"} function(locale, value) return "靈魂穿透")),

	--[+ Passive 31 - True Aim +]--
	-- create_template("talent_tree_psy_pas_031_en",
		-- {"loc_talent_psyker_weakspot_grants_crit"}, {"en"},
			-- loc_text("True Aim")),
	--[+ Russian +]-- Верная цель
	-- create_template("talent_tree_psy_pas_031_ru",
		-- {"loc_talent_psyker_weakspot_grants_crit"}, {"ru"},
			-- loc_text("Верная цель")),
	--[+ Traditional Chinese - 精確瞄準 +]--
	-- create_template("talent_tree_psy_pas_031_tw",
		-- {"loc_talent_psyker_weakspot_grants_crit"}, {"zh-tw"},
			-- loc_text("精確瞄準")),

	--[+ Passive 32 - Surety of Arms +]--
	-- create_template("talent_tree_psy_pas_032_en",
		-- {"loc_talent_psyker_reload_speed_warp"}, {"en"},
			-- loc_text("Surety of Arms")),
	--[+ Russian +]-- Варп в залог -- руоф Верность оружия
	create_template("talent_tree_psy_pas_032_ru",
		{"loc_talent_psyker_reload_speed_warp"}, {"ru"},
			loc_text("Варп в залог")),
	--[+ Traditional Chinese - 武器在手，信心我有。 +]--
	-- create_template("talent_tree_psy_pas_032_tw",
		-- {"loc_talent_psyker_reload_speed_warp"}, {"zh-tw"},
			-- loc_text("武器在手，信心我有。")),

	--[+ Blitz 0 - Stun Grenade +]--
	-- create_template("talent_tree_zea_blitz0_000_en",
		-- {"loc_ability_shock_grenade"}, {"en"},
			-- loc_text("Stun Grenade")),
	--[+ Russian +]-- Оглушающая граната
	-- create_template("talent_tree_zea_blitz0_000_ru",
		-- {"loc_ability_shock_grenade"}, {"ru"},
			-- loc_text("Оглушающая граната")),
	--[+ Traditional Chinese - 眩暈手雷 +]--
	-- create_template("talent_tree_zea_blitz0_000_tw",
		-- {"loc_ability_shock_grenade"}, {"zh-tw"},
			-- loc_text("眩暈手雷")),

	--[+ Blitz 1 - Stunstorm Grenade +]--
	-- create_template("talent_tree_zea_blitz1_000_en",
		-- {"loc_zealot_improved_stun_grenade"}, {"en"},
			-- loc_text("Stunstorm Grenade")),
	--[+ Russian +]-- Оглушающе-штурмовая граната -- руоф Граната шквального оглушения
	create_template("talent_tree_zea_blitz1_000_en",
		{"loc_zealot_improved_stun_grenade"}, {"ru"},
			loc_text("Оглушающе-штурмовая граната")),
	--[+ Traditional Chinese - 眩暈風暴手雷 +]--
	-- create_template("talent_tree_zea_blitz1_000_tw",
		-- {"loc_zealot_improved_stun_grenade"}, {"zh-tw"},
			-- loc_text("眩暈風暴手雷")),

	--[+ Blitz 2 - Immolation Grenade +]--
	-- create_template("talent_tree_zea_blitz2_000_en",
		-- {"loc_talent_ability_fire_grenade"}, {"en"},
			-- loc_text("Immolation Grenade")),
	--[+ Russian +]-- Огненная граната -- руоф Жертвенная граната
	create_template("talent_tree_zea_blitz2_000_ru",
		{"loc_talent_ability_fire_grenade"}, {"ru"},
			loc_text("Огненная граната")),
	--[+ Traditional Chinese - 獻祭手雷 +]--
	-- create_template("talent_tree_zea_blitz2_000_tw",
		-- {"loc_talent_ability_fire_grenade"}, {"zh-tw"},
			-- loc_text("獻祭手雷")),

	--[+ Blitz 3 - Blades of Faith +]--
	-- create_template("talent_tree_zea_blitz3_000_en",
		-- {"loc_ability_zealot_throwing_knifes"}, {"en"},
			-- loc_text("Blades of Faith")),
	--[+ Russian +]-- Клинки веры
	-- create_template("talent_tree_zea_blitz3_000_ru",
		-- {"loc_ability_zealot_throwing_knifes"}, {"ru"},
			-- loc_text("Клинки веры")),
	--[+ Traditional Chinese - 信仰之刃 +]--
	-- create_template("talent_tree_zea_blitz3_000_tw",
		-- {"loc_ability_zealot_throwing_knifes"}, {"zh-tw"},
			-- loc_text("信仰之刃")),

--[+ +AURA+ +]--
	--[+ Aura 0 - The Emperors's Will +]--
	-- create_template("talent_tree_zea_aura0_000_en",
		-- {"loc_talent_zealot_2_base_3"}, {"en"},
			-- loc_text("The Emperors's Will")),
	--[+ Russian +]-- Воля Императора
	-- create_template("talent_tree_zea_aura0_000_ru",
		-- {"loc_talent_zealot_2_base_3"}, {"ru"},
			-- loc_text("Воля Императора")),
	--[+ Traditional Chinese - 帝皇之諭 +]--
	-- create_template("talent_tree_zea_aura0_000_tw",
		-- {"loc_talent_zealot_2_base_3"}, {"zh-tw"},
			-- loc_text("帝皇之諭")),

	--[+ Aura 1 - Benediction +]--
	-- create_template("talent_tree_zea_aura_001_en",
		-- {"loc_talent_zealot_aura_efficiency"}, {"en"},
			-- loc_text("Benediction")),
	--[+ Russian +]-- Благословение
	-- create_template("talent_tree_zea_aura_001_ru",
		-- {"loc_talent_zealot_aura_efficiency"}, {"ru"},
			-- loc_text("Благословение")),
	--[+ Traditional Chinese - 恩賜 +]--
	-- create_template("talent_tree_zea_aura_001_tw",
		-- {"loc_talent_zealot_aura_efficiency"}, {"zh-tw"},
			-- loc_text("恩賜")),

	--[+ Aura 2 - Beacon of Purity +]--
	-- create_template("talent_tree_zea_aura_002_en",
		-- {"loc_talent_zealot_corruption_healing_coherency_improved"}, {"en"},
			-- loc_text("Beacon of Purity")),
	--[+ Russian +]-- Маяк очищения -- руоф Маяк непорочности
	create_template("talent_tree_zea_aura_002_ru",
		{"loc_talent_zealot_corruption_healing_coherency_improved"}, {"ru"},
			loc_text("Маяк очищения")),
	--[+ Traditional Chinese - 純潔信標 +]--
	-- create_template("talent_tree_zea_aura_002_tw",
		-- {"loc_talent_zealot_corruption_healing_coherency_improved"}, {"zh-tw"},
			-- loc_text("純潔信標")),

	--[+ Aura 3 - Loner +]--
	-- create_template("talent_tree_zea_aura_003_en",
		-- {"loc_talent_zealot_always_in_coherency"}, {"en"},
			-- loc_text("Loner")),
	--[+ Russian +]-- Единоличник -- руоф Одиночка
	create_template("talent_tree_zea_aura_003_ru",
		{"loc_talent_zealot_always_in_coherency"}, {"ru"},
			loc_text("Единоличник")),
	--[+ Traditional Chinese - 孤狼 +]--
	-- create_template("talent_tree_zea_aura_003_tw",
		-- {"loc_talent_zealot_always_in_coherency"}, {"zh-tw"},
			-- loc_text("孤狼")),

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Chastise the Wicked +]--
	-- create_template("talent_tree_zea_abil0_000_en",
		-- {"loc_talent_zealot_2_combat"}, {"en"},
			-- loc_text("Chastise the Wicked")),
	--[+ Russian +]-- Кара для нечестивых
	-- create_template("talent_tree_zea_abil0_000_ru",
		-- {"loc_talent_zealot_2_combat"}, {"ru"},
			-- loc_text("Кара для нечестивых")),
	--[+ Traditional Chinese - 懲奸除惡 +]--
	-- create_template("talent_tree_zea_abil0_000_tw",
		-- {"loc_talent_zealot_2_combat"}, {"zh-tw"},
			-- loc_text("懲奸除惡")),

	--[+ Ability 1 - Fury of the Faithful +]--
	-- create_template("talent_tree_zea_abil1_000_en",
		-- {"loc_talent_maniac_attack_speed_after_dash"}, {"en"},
			-- loc_text("Fury of the Faithful")),
	--[+ Russian +]-- Ярость верующего -- руоф Ударный страх
	create_template("talent_tree_zea_abil1_000_ru",
		{"loc_talent_maniac_attack_speed_after_dash"}, {"ru"},
			loc_text("Ярость верующего")),
	--[+ Traditional Chinese - 有信者之怒 +]--
	-- create_template("talent_tree_zea_abil1_000_tw",
		-- {"loc_talent_maniac_attack_speed_after_dash"}, {"zh-tw"},
			-- loc_text("有信者之怒")),

	--[+ Ability 1-1 - Redoubled Zeal +]--
	-- create_template("talent_tree_zea_abil1_001_en",
		-- {"loc_talent_zealot_dash_has_more_charges"}, {"en"},
			-- loc_text("Redoubled Zeal")),
	--[+ Russian +]-- Удвоенное рвение
	-- create_template("talent_tree_zea_abil1_001_ru",
		-- {"loc_talent_zealot_dash_has_more_charges"}, {"ru"},
			-- loc_text("Удвоенное рвение")),
	--[+ Traditional Chinese - 倍增狂熱 +]--
	-- create_template("talent_tree_zea_abil1_001_tw",
		-- {"loc_talent_zealot_dash_has_more_charges"}, {"zh-tw"},
			-- loc_text("倍增狂熱")),

	--[+ Ability 1-2 - Invocation of Death +]--
	-- create_template("talent_tree_zea_abil1_002_en",
		-- {"loc_talent_maniac_cooldown_on_melee_crits"}, {"en"},
			-- loc_text("Invocation of Death")),
	--[+ Russian +]-- Призыв смерти
	-- create_template("talent_tree_zea_abil1_002_ru",
		-- {"loc_talent_maniac_cooldown_on_melee_crits"}, {"ru"},
			-- loc_text("Призыв смерти")),
	--[+ Traditional Chinese - 死亡禱文 +]--
	-- create_template("talent_tree_zea_abil1_002_tw",
		-- {"loc_talent_maniac_cooldown_on_melee_crits"}, {"zh-tw"},
			-- loc_text("死亡禱文")),

	--[+ Ability 2 - Chorus of Spiritual Fortitude +]--
	-- create_template("talent_tree_zea_abil2_000_en",
		-- {"loc_talent_zealot_bolstering_prayer"}, {"en"},
			-- loc_text("Chorus of Spiritual Fortitude")),
	--[+ Russian +]-- Хор духовной стойкости
	-- create_template("talent_tree_zea_abil2_000_ru",
		-- {"loc_talent_zealot_bolstering_prayer"}, {"ru"},
			-- loc_text("Хор духовной стойкости")),
	--[+ Traditional Chinese - 不屈靈魂合唱 +]--
	-- create_template("talent_tree_zea_abil2_000_tw",
		-- {"loc_talent_zealot_bolstering_prayer"}, {"zh-tw"},
			-- loc_text("不屈靈魂合唱")),

	--[+ Ability 2-1 - Holy Cause +]--
	-- create_template("talent_tree_zea_abil2_001_en",
		-- {"loc_talent_zealot_zealot_channel_grants_defensive_buff"}, {"en"},
			-- loc_text("Holy Cause")),
	--[+ Russian +]-- Святое дело
	-- create_template("talent_tree_zea_abil2_001_ru",
		-- {"loc_talent_zealot_zealot_channel_grants_defensive_buff"}, {"ru"},
			-- loc_text("Святое дело")),
	--[+ Traditional Chinese - 神聖事業 +]--
	-- create_template("talent_tree_zea_abil2_001_tw",
		-- {"loc_talent_zealot_zealot_channel_grants_defensive_buff"}, {"zh-tw"},
			-- loc_text("神聖事業")),

	--[+ Ability 2-2 - Banishing Light +]--
	-- create_template("talent_tree_zea_abil2_002_en",
		-- {"loc_talent_zealot_channel_staggers"}, {"en"},
			-- loc_text("Banishing Light")),
	--[+ Russian +]-- Изгоняющий свет
	-- create_template("talent_tree_zea_abil2_002_ru",
		-- {"loc_talent_zealot_channel_staggers"}, {"ru"},
			-- loc_text("Изгоняющий свет")),
	--[+ Traditional Chinese - 放逐之光 +]--
	-- create_template("talent_tree_zea_abil2_002_tw",
		-- {"loc_talent_zealot_channel_staggers"}, {"zh-tw"},
			-- loc_text("放逐之光")),

	--[+ Ability 2-3 - Ecclesiarch's Call +]--
	-- create_template("talent_tree_zea_abil2_003_en",
		-- {"loc_talent_zealot_zealot_channel_grants_offensive_buff"}, {"en"},
			-- loc_text("Ecclesiarch's Call")),
	--[+ Russian +]-- Призыв экклезиарха -- руоф Вызов экклезиарха
	create_template("talent_tree_zea_abil2_003_ru",
		{"loc_talent_zealot_zealot_channel_grants_offensive_buff"}, {"ru"},
			loc_text("Призыв экклезиарха")),
	--[+ Traditional Chinese - 教宗之喚 +]--
	-- create_template("talent_tree_zea_abil2_003_tw",
		-- {"loc_talent_zealot_zealot_channel_grants_offensive_buff"}, {"zh-tw"},
			-- loc_text("教宗之喚")),

	--[+ Ability 2-4 - Martyr's Purpose +]--
	-- create_template("talent_tree_zea_abil2_004_en",
		-- {"loc_talent_zealot_damage_taken_restores_cd"}, {"en"},
			-- loc_text("Martyr's Purpose")),
	--[+ Russian +]-- Предназначение мученика -- руоф Цель мученика
	create_template("talent_tree_zea_abil2_004_en",
		{"loc_talent_zealot_damage_taken_restores_cd"}, {"ru"},
			loc_text("Предназначение мученика")),
	--[+ Traditional Chinese - 殉道者之願 +]--
	-- create_template("talent_tree_zea_abil2_004_tw",
		-- {"loc_talent_zealot_damage_taken_restores_cd"}, {"zh-tw"},
			-- loc_text("殉道者之願")),

	--[+ Ability 3 - Shroudfield +]--
	-- create_template("talent_tree_zea_abil3_000_en",
		-- {"loc_ability_zealot_stealth"}, {"en"},
			-- loc_text("Shroudfield")),
	--[+ Russian +]-- Покров
	-- create_template("talent_tree_zea_abil3_000_ru",
		-- {"loc_ability_zealot_stealth"}, {"ru"},
			-- loc_text("Покров")),
	--[+ Traditional Chinese - 隱秘領域 +]--
	-- create_template("talent_tree_zea_abil3_000_tw",
		-- {"loc_ability_zealot_stealth"}, {"zh-tw"},
			-- loc_text("隱秘領域")),

	--[+ Ability 3-1 - Master-Crafted Shroudfield +]--
	-- create_template("talent_tree_zea_abil3_001_en",
		-- {"loc_talent_zealot_increased_stealth_duration"}, {"en"},
			-- loc_text("Master-Crafted Shroudfield")),
	--[+ Russian +]-- Мастерский покров -- Искусно изготовленный покров
	create_template("talent_tree_zea_abil3_001_ru",
		{"loc_talent_zealot_increased_stealth_duration"}, {"ru"},
			loc_text("Мастерский покров")),
	--[+ Traditional Chinese - 大師級隱秘領域 +]--
	-- create_template("talent_tree_zea_abil3_001_tw",
		-- {"loc_talent_zealot_increased_stealth_duration"}, {"zh-tw"},
			-- loc_text("大師級隱秘領域")),

	--[+ Ability 3-2 - Perfectionist +]--
	-- create_template("talent_tree_zea_abil3_002_en",
		-- {"loc_talent_zealot_stealth_increased_damage"}, {"en"},
			-- loc_text("Perfectionist")),
	--[+ Russian +]-- Перфекционист
	-- create_template("talent_tree_zea_abil3_002_ru",
		-- {"loc_talent_zealot_stealth_increased_damage"}, {"ru"},
			-- loc_text("Перфекционист")),
	--[+ Traditional Chinese - 完美主義者 +]--
	-- create_template("talent_tree_zea_abil3_002_tw",
		-- {"loc_talent_zealot_stealth_increased_damage"}, {"zh-tw"},
			-- loc_text("完美主義者")),

	--[+ Ability 3-3 - Invigorating Revelation +]--
	-- create_template("talent_tree_zea_abil3_003_en",
		-- {"loc_talent_zealot_leaving_stealth_restores_toughness"}, {"en"},
			-- loc_text("Invigorating Revelation")),
	--[+ Russian +]-- Оживляющее откровение -- руоф Подбадривающее откровение
	create_template("talent_tree_zea_abil3_003_ru",
		{"loc_talent_zealot_leaving_stealth_restores_toughness"}, {"ru"},
			loc_text("Оживляющее откровение")),
	--[+ Traditional Chinese - 振奮啟示 +]--
	-- create_template("talent_tree_zea_abil3_003_tw",
		-- {"loc_talent_zealot_leaving_stealth_restores_toughness"}, {"zh-tw"},
			-- loc_text("振奮啟示")),

	--[+ Ability 3-4 - Pious Cut-Throat +]--
	-- create_template("talent_tree_zea_abil3_004_en",
		-- {"loc_talent_zealot_backstab_kills_restore_cd"}, {"en"},
			-- loc_text("Pious Cut-Throat")),
	--[+ Russian +]-- Благочестивый головорез -- руоф Добродетельный головорез
	create_template("talent_tree_zea_abil3_004_ru",
		{"loc_talent_zealot_backstab_kills_restore_cd"}, {"ru"},
			loc_text("Благочестивый головорез")),
	--[+ Traditional Chinese - 虔誠刺客 +]--
	-- create_template("talent_tree_zea_abil3_004_tw",
		-- {"loc_talent_zealot_backstab_kills_restore_cd"}, {"zh-tw"},
			-- loc_text("虔誠刺客")),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ ТАЛАНТЫ+ +]--
	--[+ Keystone 1 - Blazing Piety +]--
	-- create_template("talent_tree_zea_keys1_000_en",
		-- {"loc_talent_zealot_fanatic_rage"}, {"en"},
			-- loc_text("Blazing Piety")),
	--[+ Russian +]-- Пылающая благочестивость -- руоф Пламенное благочестие
	create_template("talent_tree_zea_keys1_000_ru",
		{"loc_talent_zealot_fanatic_rage"}, {"ru"},
			loc_text("Пылающая благочестивость")),
	--[+ Traditional Chinese - 熾熱虔誠 +]--
	-- create_template("talent_tree_zea_keys1_000_tw",
		-- {"loc_talent_zealot_fanatic_rage"}, {"zh-tw"},
			-- loc_text("熾熱虔誠")),

	--[+ Keystone 1-1 - Stalwart +]--
	-- create_template("talent_tree_zea_keys1_001_en",
		-- {"loc_talent_zealot_fanatic_rage_toughness"}, {"en"},
			-- loc_text("Stalwart")),
	--[+ Russian +]-- Непоколебимый -- руоф Верный последователь
	create_template("talent_tree_zea_keys1_001_ru",
		{"loc_talent_zealot_fanatic_rage_toughness"}, {"ru"},
			loc_text("Непоколебимый")),
	--[+ Traditional Chinese - 忠誠 +]--
	-- create_template("talent_tree_zea_keys1_001_tw",
		-- {"loc_talent_zealot_fanatic_rage_toughness"}, {"zh-tw"},
			-- loc_text("忠誠")),

	--[+ Keystone 1-2 - Fury Rising +]--
	-- create_template("talent_tree_zea_keys1_002_en",
		-- {"loc_talent_zealot_fanatic_rage_crits"}, {"en"},
			-- loc_text("Fury Rising")),
	--[+ Russian +]-- Возрастание ярости -- руоф Подъем ярости
	create_template("talent_tree_zea_keys1_002_ru",
		{"loc_talent_zealot_fanatic_rage_crits"}, {"ru"},
			loc_text("Возрастание ярости")),
	--[+ Traditional Chinese - 怒火升騰 +]--
	-- create_template("talent_tree_zea_keys1_002_tw",
		-- {"loc_talent_zealot_fanatic_rage_crits"}, {"zh-tw"},
			-- loc_text("怒火升騰")),

	--[+ Keystone 1-3 - Infectious Zeal +]--
	-- create_template("talent_tree_zea_keys1_003_en",
		-- {"loc_talent_zealot_shared_fanatic_rage"}, {"en"},
			-- loc_text("Infectious Zeal")),
	--[+ Russian +]-- Заразительное рвение
	-- create_template("talent_tree_zea_keys1_003_ru",
		-- {"loc_talent_zealot_shared_fanatic_rage"}, {"ru"},
			-- loc_text("Заразительное рвение")),
	--[+ Traditional Chinese - 迅疾狂熱 +]--
	-- create_template("talent_tree_zea_keys1_003_tw",
		-- {"loc_talent_zealot_shared_fanatic_rage"}, {"zh-tw"},
			-- loc_text("迅疾狂熱")),

	--[+ Keystone 1-4 - Righteous Warrior +]--
	-- create_template("talent_tree_zea_keys1_004_en",
		-- {"loc_talent_zealot_fanatic_rage_improved"}, {"en"},
			-- loc_text("Righteous Warrior")),
	--[+ Russian +]-- Праведный воин
	-- create_template("talent_tree_zea_keys1_004_ru",
		-- {"loc_talent_zealot_fanatic_rage_improved"}, {"ru"},
			-- loc_text("Праведный воин")),
	--[+ Traditional Chinese - 正義勇士 +]--
	-- create_template("talent_tree_zea_keys1_004_tw",
		-- {"loc_talent_zealot_fanatic_rage_improved"}, {"zh-tw"},
			-- loc_text("正義勇士")),

	--[+ Keystone 2 - Martyrdom +]--
	-- create_template("talent_tree_zea_keys2_000_en",
		-- {"loc_talent_zealot_martyrdom"}, {"en"},
			-- loc_text("Martyrdom")),
	--[+ Russian +]-- Мученичество
	-- create_template("talent_tree_zea_keys2_000_en",
		-- {"loc_talent_zealot_martyrdom"}, {"ru"},
			-- loc_text("Мученичество")),
	--[+ Traditional Chinese - 殉道 +]--
	-- create_template("talent_tree_zea_keys2_000_tw",
		-- {"loc_talent_zealot_martyrdom"}, {"zh-tw"},
			-- loc_text("殉道")),

	--[+ Keystone 2-1 - I Shall Not Fall +]--
	-- create_template("talent_tree_zea_keys2_001_en",
		-- {"loc_talent_zealot_martyrdom_grants_toughness"}, {"en"},
			-- loc_text("I Shall Not Fall")),
	--[+ Russian +]-- Я не паду -- руоф Я не отступлю
	create_template("talent_tree_zea_keys2_001_ru",
		{"loc_talent_zealot_martyrdom_grants_toughness"}, {"ru"},
			loc_text("Я не паду")),
	--[+ Traditional Chinese - 不滅意志 +]--
	-- create_template("talent_tree_zea_keys2_001_tw",
		-- {"loc_talent_zealot_martyrdom_grants_toughness"}, {"zh-tw"},
			-- loc_text("不滅意志")),

	--[+ Keystone 2-2 - Maniac +]--
	-- create_template("talent_tree_zea_keys2_002_en",
		-- {"loc_talent_zealot_attack_speed_per_martyrdom"}, {"en"},
			-- loc_text("Maniac")),
	--[+ Russian +]-- Маньяк
	-- create_template("talent_tree_zea_keys2_002_ru",
		-- {"loc_talent_zealot_attack_speed_per_martyrdom"}, {"ru"},
			-- loc_text("Маньяк")),
	--[+ Traditional Chinese - 狂燥之心 +]--
	-- create_template("talent_tree_zea_keys2_002_tw",
		-- {"loc_talent_zealot_attack_speed_per_martyrdom"}, {"zh-tw"},
			-- loc_text("狂燥之心")),

	--[+ Keystone 3 - Inexorable Judgement +]--
	-- create_template("talent_tree_zea_keys3_000_en",
		-- {"loc_talent_zealot_quickness"}, {"en"},
			-- loc_text("Inexorable Judgement")),
	--[+ Russian +]-- Неумолимый приговор -- руоф Безжалостный приговор
	create_template("talent_tree_zea_keys3_000_ru",
		{"loc_talent_zealot_quickness"}, {"ru"},
			loc_text("Неумолимый приговор")),
	--[+ Traditional Chinese - 命定審判 +]--
	-- create_template("talent_tree_zea_keys3_000_tw",
		-- {"loc_talent_zealot_quickness"}, {"zh-tw"},
			-- loc_text("命定審判")),

	--[+ Keystone 3-1 - Retributor's Stance +]--
	-- create_template("talent_tree_zea_keys3_001_en",
		-- {"loc_talent_zealot_quickness_toughness_per_stack"}, {"en"},
			-- loc_text("Retributor's Stance")),
	--[+ Russian +]-- Стойка карателя
	-- create_template("talent_tree_zea_keys3_001_ru",
		-- {"loc_talent_zealot_quickness_toughness_per_stack"}, {"ru"},
			-- loc_text("Стойка карателя")),
	--[+ Traditional Chinese - 懲戒者姿態 +]--
	-- create_template("talent_tree_zea_keys3_001_tw",
		-- {"loc_talent_zealot_quickness_toughness_per_stack"}, {"zh-tw"},
			-- loc_text("懲戒者姿態")),

	--[+ Keystone 3-2 - Inebriate's Poise +]--
	-- create_template("talent_tree_zea_keys3_002_en",
		-- {"loc_talent_zealot_quickness_dodge_stacks"}, {"en"},
			-- loc_text("Inebriate's Poise")),
	--[+ Russian +]-- Грация пьяницы -- руоф Самообладание пьяницы
	create_template("talent_tree_zea_keys3_002_ru",
		{"loc_talent_zealot_quickness_dodge_stacks"}, {"ru"},
			loc_text("Грация пьяницы")),
	--[+ Traditional Chinese - 飄忽身形 +]--
	-- create_template("talent_tree_zea_keys3_002_tw",
		-- {"loc_talent_zealot_quickness_dodge_stacks"}, {"zh-tw"},
			-- loc_text("飄忽身形")),

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Disdain +]--
	-- create_template("talent_tree_zea_pas_001_en",
		-- {"loc_talent_zealot_3_tier_2_ability_1"}, {"en"},
			-- loc_text("Disdain")),
	--[+ Russian +]-- Презрение
	-- create_template("talent_tree_zea_pas_001_ru",
		-- {"loc_talent_zealot_3_tier_2_ability_1"}, {"ru"},
			-- loc_text("Презрение")),
	--[+ Traditional Chinese - 蔑視 +]--
	-- create_template("talent_tree_zea_pas_001_tw",
		-- {"loc_talent_zealot_3_tier_2_ability_1"}, {"zh-tw"},
			-- loc_text("蔑視")),

	--[+ Passive 2 - Backstabber +]--
	-- create_template("talent_tree_zea_pas_002_en",
		-- {"loc_talent_zealot_increased_backstab_damage"}, {"en"},
			-- loc_text("Backstabber")),
	--[+ Russian +]-- Бьющий в спину
	-- create_template("talent_tree_zea_pas_002_ru",
		-- {"loc_talent_zealot_increased_backstab_damage"}, {"ru"},
			-- loc_text("Бьющий в спину")),
	--[+ Traditional Chinese - 背刺者 +]--
	-- create_template("talent_tree_zea_pas_002_tw",
		-- {"loc_talent_zealot_increased_backstab_damage"}, {"zh-tw"},
			-- loc_text("背刺者")),

	--[+ Passive 3 - Anoint in Blood +]--
	-- create_template("talent_tree_zea_pas_003_en",
		-- {"loc_talent_zealot_ranged_damage_increased_to_close"}, {"en"},
			-- loc_text("Anoint in Blood")),
	--[+ Russian +]-- Помазанный кровью
	-- create_template("talent_tree_zea_pas_003_ru",
		-- {"loc_talent_zealot_ranged_damage_increased_to_close"}, {"ru"},
			-- loc_text("Помазанный кровью")),
	--[+ Traditional Chinese - 鮮血受膏 +]--
	-- create_template("talent_tree_zea_pas_003_tw",
		-- {"loc_talent_zealot_ranged_damage_increased_to_close"}, {"zh-tw"},
			-- loc_text("鮮血受膏")),

	--[+ Passive 4 - Scourge +]--
	-- create_template("talent_tree_zea_pas_004_en",
		-- {"loc_talent_zealot_bleed_melee_crit_chance"}, {"en"},
			-- loc_text("Scourge")),
	--[+ Russian +]-- Бичевание -- руоф Бич
	create_template("talent_tree_zea_pas_004_ru",
		{"loc_talent_zealot_bleed_melee_crit_chance"}, {"ru"},
			loc_text("Бичевание")),
	--[+ Traditional Chinese - 天災 +]--
	-- create_template("talent_tree_zea_pas_004_tw",
		-- {"loc_talent_zealot_bleed_melee_crit_chance"}, {"zh-tw"},
			-- loc_text("天災")),

	--[+ Passive 5 - Enemies Within, Enemies Without +]--
	-- create_template("talent_tree_zea_pas_005_en",
		-- {"loc_talent_zealot_toughness_regen_in_melee"}, {"en"},
			-- loc_text("Enemies Within, Enemies Without")),
	--[+ Russian +]-- Враги внутри, враги снаружи -- руоф Не дай ему уйти
	create_template("talent_tree_zea_pas_005_ru",
		{"loc_talent_zealot_toughness_regen_in_melee"}, {"ru"},
			loc_text("Враги внутри, враги снаружи")),
	--[+ Traditional Chinese - 內憂外患 +]--
	-- create_template("talent_tree_zea_pas_005_tw",
		-- {"loc_talent_zealot_toughness_regen_in_melee"}, {"zh-tw"},
			-- loc_text("內憂外患")),

	--[+ Passive 6 - Fortitude in Fellowship +]--
	-- create_template("talent_tree_zea_pas_006_en",
		-- {"loc_talent_zealot_increased_coherency_regen"}, {"en"},
			-- loc_text("Fortitude in Fellowship")),
	--[+ Russian +]-- Стойкость в товариществе -- руоф Стойкость в общении
	create_template("talent_tree_zea_pas_006_ru",
		{"loc_talent_zealot_increased_coherency_regen"}, {"ru"},
			loc_text("Стойкость в товариществе")),
	--[+ Traditional Chinese - 合抱成林 +]--
	-- create_template("talent_tree_zea_pas_006_tw",
		-- {"loc_talent_zealot_increased_coherency_regen"}, {"zh-tw"},
			-- loc_text("合抱成林")),

	--[+ Passive 7 - Purge the Unclean +]--
	-- create_template("talent_tree_zea_pas_007_en",
		-- {"loc_talent_zealot_3_passive_2"}, {"en"},
			-- loc_text("Purge the Unclean")),
	--[+ Russian +]-- Очищение нечестивых -- руоф Очищение нечистых
	create_template("talent_tree_zea_pas_007_ru",
		{"loc_talent_zealot_3_passive_2"}, {"ru"},
			loc_text("Очищение нечестивых")),
	--[+ Traditional Chinese - 淨化不潔 +]--
	-- create_template("talent_tree_zea_pas_007_tw",
		-- {"loc_talent_zealot_3_passive_2"}, {"zh-tw"},
			-- loc_text("淨化不潔")),

	--[+ Passive 8 - Blood Redemption +]--
	-- create_template("talent_tree_zea_pas_008_en",
		-- {"loc_talent_zealot_toughness_on_melee_kill"}, {"en"},
			-- loc_text("Blood Redemption")),
	--[+ Russian +]-- Искупление кровью -- руоф Кровавое искупление
	create_template("talent_tree_zea_pas_008_ru",
		{"loc_talent_zealot_toughness_on_melee_kill"}, {"ru"},
			loc_text("Искупление кровью")),
	--[+ Traditional Chinese - 鮮血救贖 +]--
	-- create_template("talent_tree_zea_pas_008_tw",
		-- {"loc_talent_zealot_toughness_on_melee_kill"}, {"zh-tw"},
			-- loc_text("鮮血救贖")),

	--[+ Passive 9 - Bleed for the Emperor +]--
	-- create_template("talent_tree_zea_pas_009_en",
		-- {"loc_talent_zealot_3_tier_3_ability_2"}, {"en"},
			-- loc_text("Bleed for the Emperor")),
	--[+ Russian +]-- Кровь за Императора -- руоф Кровь во имя Императора
	create_template("talent_tree_zea_pas_009_ru",
		{"loc_talent_zealot_3_tier_3_ability_2"}, {"ru"},
			loc_text("Кровь за Императора")),
	--[+ Traditional Chinese - 為了帝皇 +]--
	-- create_template("talent_tree_zea_pas_009_tw",
		-- {"loc_talent_zealot_3_tier_3_ability_2"}, {"zh-tw"},
			-- loc_text("為了帝皇")),

	--[+ Passive 10 - Vicious Offering +]--
	-- create_template("talent_tree_zea_pas_010_en",
		-- {"loc_talent_zealot_toughness_on_heavy_kills"}, {"en"},
			-- loc_text("Vicious Offering")),
	--[+ Russian +]-- Жертвоприношение -- руоф Порочное подношение
	create_template("talent_tree_zea_pas_010_ru",
		{"loc_talent_zealot_toughness_on_heavy_kills"}, {"ru"},
			loc_text("Жертвоприношение")),
	--[+ Traditional Chinese - 惡毒贈禮 +]--
	-- create_template("talent_tree_zea_pas_010_tw",
		-- {"loc_talent_zealot_toughness_on_heavy_kills"}, {"zh-tw"},
			-- loc_text("惡毒贈禮")),

	--[+ Passive 11 - The Voice of Terra +]--
	-- create_template("talent_tree_zea_pas_011_en",
		-- {"loc_talent_zealot_toughness_on_ranged_kill"}, {"en"},
			-- loc_text("The Voice of Terra")),
	--[+ Russian +]-- Голос Терры
	-- create_template("talent_tree_zea_pas_011_ru",
		-- {"loc_talent_zealot_toughness_on_ranged_kill"}, {"ru"},
			-- loc_text("Голос Терры")),
	--[+ Traditional Chinese - 泰拉之音 +]--
	-- create_template("talent_tree_zea_pas_011_tw",
		-- {"loc_talent_zealot_toughness_on_ranged_kill"}, {"zh-tw"},
			-- loc_text("泰拉之音")),

	--[+ Passive 12 - Restoring Faith +]--
	-- create_template("talent_tree_zea_pas_012_en",
		-- {"loc_talent_zealot_heal_damage_taken"}, {"en"},
			-- loc_text("Restoring Faith")),
	--[+ Russian +]-- Восстановление веры
	-- create_template("talent_tree_zea_pas_012_ru",
		-- {"loc_talent_zealot_heal_damage_taken"}, {"ru"},
			-- loc_text("Восстановление веры")),
	--[+ Traditional Chinese - 恢復信仰 +]--
	-- create_template("talent_tree_zea_pas_012_tw",
		-- {"loc_talent_zealot_heal_damage_taken"}, {"zh-tw"},
			-- loc_text("恢復信仰")),

	--[+ Passive 13 - Second Wind +]--
	-- create_template("talent_tree_zea_pas_013_en",
		-- {"loc_talent_zealot_toughness_on_dodge"}, {"en"},
			-- loc_text("Second Wind")),
	--[+ Russian +]-- Второе дыхание -- руоф Второй ветер
	create_template("talent_tree_zea_pas_013_en",
		{"loc_talent_zealot_toughness_on_dodge"}, {"ru"},
			loc_text("Второе дыхание")),
	--[+ Traditional Chinese - 精力復甦 +]--
	-- create_template("talent_tree_zea_pas_013_tw",
		-- {"loc_talent_zealot_toughness_on_dodge"}, {"zh-tw"},
			-- loc_text("精力復甦")),

	--[+ Passive 14 - Enduring Faith +]--
	-- create_template("talent_tree_zea_pas_014_en",
		-- {"loc_talent_zealot_toughness_melee_effectiveness"}, {"en"},
			-- loc_text("Enduring Faith")),
	--[+ Russian +]-- Непоколебимая вера
	-- create_template("talent_tree_zea_pas_014_en",
		-- {"loc_talent_zealot_toughness_melee_effectiveness"}, {"ru"},
			-- loc_text("Непоколебимая вера")),
	--[+ Traditional Chinese - 堅韌信仰 +]--
	-- create_template("talent_tree_zea_pas_014_tw",
		-- {"loc_talent_zealot_toughness_melee_effectiveness"}, {"zh-tw"},
			-- loc_text("堅韌信仰")),

	--[+ Passive 15 - The Emperor's Bullet +]--
	-- create_template("talent_tree_zea_pas_015_en",
		-- {"loc_talent_zealot_improved_melee_after_no_ammo"}, {"en"},
			-- loc_text("The Emperor's Bullet")),
	--[+ Russian +]-- Пуля Императора
	-- create_template("talent_tree_zea_pas_015_ru",
		-- {"loc_talent_zealot_improved_melee_after_no_ammo"}, {"ru"},
			-- loc_text("Пуля Императора")),
	--[+ Traditional Chinese - 帝皇之彈 +]--
	-- create_template("talent_tree_zea_pas_015_tw",
		-- {"loc_talent_zealot_improved_melee_after_no_ammo"}, {"zh-tw"},
			-- loc_text("帝皇之彈")),

	--[+ Passive 16 - Dance of Death +]--
	-- create_template("talent_tree_zea_pas_016_en",
		-- {"loc_talent_zealot_improved_spread_post_dodge"}, {"en"},
			-- loc_text("Dance of Death")),
	--[+ Russian +]-- Танец смерти
	-- create_template("talent_tree_zea_pas_016_en",
		-- {"loc_talent_zealot_improved_spread_post_dodge"}, {"ru"},
			-- loc_text("Танец смерти")),
	--[+ Traditional Chinese - 死亡之舞 +]--
	-- create_template("talent_tree_zea_pas_016_tw",
		-- {"loc_talent_zealot_improved_spread_post_dodge"}, {"zh-tw"},
			-- loc_text("死亡之舞")),

	--[+ Passive 17 - Duellist +]--
	-- create_template("talent_tree_zea_pas_017_en",
		-- {"loc_talent_zealot_increased_finesse_post_dodge"}, {"en"},
			-- loc_text("Duellist")),
	--[+ Russian +]-- Дуэлянт
	-- create_template("talent_tree_zea_pas_017_en",
		-- {"loc_talent_zealot_increased_finesse_post_dodge"}, {"ru"},
			-- loc_text("Дуэлянт")),
	--[+ Traditional Chinese - 決鬥者 +]--
	-- create_template("talent_tree_zea_pas_017_tw",
		-- {"loc_talent_zealot_increased_finesse_post_dodge"}, {"zh-tw"},
			-- loc_text("決鬥者")),

	--[+ Passive 18 - Until Death +]--
	-- create_template("talent_tree_zea_pas_018_en",
		-- {"loc_talent_zealot_resist_death"}, {"en"},
			-- loc_text("Until Death")),
	--[+ Russian +]-- До самой смерти
	-- create_template("talent_tree_zea_pas_018_en",
		-- {"loc_talent_zealot_resist_death"}, {"ru"},
			-- loc_text("До самой смерти")),
	--[+ Traditional Chinese - 死戰到底 +]--
	-- create_template("talent_tree_zea_pas_018_tw",
		-- {"loc_talent_zealot_resist_death"}, {"zh-tw"},
			-- loc_text("死戰到底")),

	--[+ Passive 19 - Unremitting +]--
	-- create_template("talent_tree_zea_pas_019_en",
		-- {"loc_talent_zealot_reduced_sprint_cost"}, {"en"},
			-- loc_text("Unremitting")),
	--[+ Russian +]-- Неустанный
	-- create_template("talent_tree_zea_pas_019_en",
		-- {"loc_talent_zealot_reduced_sprint_cost"}, {"ru"},
			-- loc_text("Неустанный")),
	--[+ Traditional Chinese - 堅持不懈 +]--
	-- create_template("talent_tree_zea_pas_019_tw",
		-- {"loc_talent_zealot_reduced_sprint_cost"}, {"zh-tw"},
			-- loc_text("堅持不懈")),

	--[+ Passive 20 - Shield of Contempt +]--
	-- create_template("talent_tree_zea_pas_020_en",
		-- {"loc_talent_zealot_3_tier_4_ability_3"}, {"en"},
			-- loc_text("Shield of Contempt")),
	--[+ Russian +]-- Щит презрения
	-- create_template("talent_tree_zea_pas_020_ru",
		-- {"loc_talent_zealot_3_tier_4_ability_3"}, {"ru"},
			-- loc_text("Щит презрения")),
	--[+ Traditional Chinese - 輕蔑之盾 +]--
	-- create_template("talent_tree_zea_pas_020_tw",
		-- {"loc_talent_zealot_3_tier_4_ability_3"}, {"zh-tw"},
			-- loc_text("輕蔑之盾")),

	--[+ Passive 21 - Thy Wrath be Swift +]--
	-- create_template("talent_tree_zea_pas_021_en",
		-- {"loc_talent_zealot_movement_speed_on_damaged"}, {"en"},
			-- loc_text("Thy Wrath be Swift")),
	--[+ Russian +]-- Твой гнев будет быстр -- руоф Скорое возмездие
	create_template("talent_tree_zea_pas_021_en",
		{"loc_talent_zealot_movement_speed_on_damaged"}, {"ru"},
			loc_text("Твой гнев будет быстр")),
	--[+ Traditional Chinese - 勃然大怒 +]--
	-- create_template("talent_tree_zea_pas_021_tw",
		-- {"loc_talent_zealot_movement_speed_on_damaged"}, {"zh-tw"},
			-- loc_text("勃然大怒")),

	--[+ Passive 22 - Good Balance +]--
	-- create_template("talent_tree_zea_pas_022_en",
		-- {"loc_talent_reduced_damage_after_dodge"}, {"en"},
			-- loc_text("Good Balance")),
	--[+ Russian +]-- Хороший баланс -- руоф Разумный баланс
	create_template("talent_tree_zea_pas_022_en",
		{"loc_talent_reduced_damage_after_dodge"}, {"ru"},
			loc_text("Хороший баланс")),
	--[+ Traditional Chinese - 四平八穩 +]--
	-- create_template("talent_tree_zea_pas_022_tw",
		-- {"loc_talent_reduced_damage_after_dodge"}, {"zh-tw"},
			-- loc_text("四平八穩")),

	--[+ Passive 23 - Desperation +]--
	-- create_template("talent_tree_zea_pas_023_en",
		-- {"loc_talent_zealot_increased_damage_on_low_stamina"}, {"en"},
			-- loc_text("Desperation")),
	--[+ Russian +]-- Отчаяние
	-- create_template("talent_tree_zea_pas_023_ru",
		-- {"loc_talent_zealot_increased_damage_on_low_stamina"}, {"ru"},
			-- loc_text("Отчаяние")),
	--[+ Traditional Chinese - 背水一戰 +]--
	-- create_template("talent_tree_zea_pas_023_tw",
		-- {"loc_talent_zealot_increased_damage_on_low_stamina"}, {"zh-tw"},
			-- loc_text("背水一戰")),

	--[+ Passive 24 - Holy Revenant +]--
	-- create_template("talent_tree_zea_pas_024_en",
		-- {"loc_talent_zealot_heal_during_resist_death"}, {"en"},
			-- loc_text("Holy Revenant")),
	--[+ Russian +]-- Святой призрак -- руоф Священный призрак
	create_template("talent_tree_zea_pas_024_ru",
		{"loc_talent_zealot_heal_during_resist_death"}, {"ru"},
			loc_text("Святой призрак")),
	--[+ Traditional Chinese - 吊命聖徒 +]--
	-- create_template("talent_tree_zea_pas_024_tw",
		-- {"loc_talent_zealot_he

	--[+ Passive 25 - Sainted Gunslinger +]--
	-- create_template("talent_tree_zea_pas_025_en",
		-- {"loc_talent_zealot_increased_reload_speed_on_melee_kills"}, {"en"},
			-- loc_text("Sainted Gunslinger")),
	--[+ Russian +]-- Святой стрелок -- руоф Святой быстрый стрелок
	create_template("talent_tree_zea_pas_025_ru",
		{"loc_talent_zealot_increased_reload_speed_on_melee_kills"}, {"ru"},
			loc_text("Святой стрелок")),
	--[+ Traditional Chinese - 封聖神射手 +]--
	-- create_template("talent_tree_zea_pas_025_tw",
		-- {"loc_talent_zealot_increased_reload_speed_on_melee_kills"}, {"zh-tw"},
			-- loc_text("封聖神射手")),

	--[+ Passive 26 - Hammer of Faith +]--
	-- create_template("talent_tree_zea_pas_026_en",
		-- {"loc_talent_zealot_3_tier_1_ability_1"}, {"en"},
			-- loc_text("Hammer of Faith")),
	--[+ Russian +]-- Молот веры
	-- create_template("talent_tree_zea_pas_026_ru",
		-- {"loc_talent_zealot_3_tier_1_ability_1"}, {"ru"},
			-- loc_text("Молот веры")),
	--[+ Traditional Chinese - 信仰之錘 +]--
	-- create_template("talent_tree_zea_pas_026_tw",
		-- {"loc_talent_zealot_3_tier_1_ability_1"}, {"zh-tw"},
			-- loc_text("信仰之錘")),

	--[+ Passive 27 - Grievous Wounds +]--
	-- create_template("talent_tree_zea_pas_027_en",
		-- {"loc_talent_zealot_increased_stagger_on_weakspot_melee"}, {"en"},
			-- loc_text("Grievous Wounds")),
	--[+ Russian +]-- Тяжёлые раны -- руоф Опасные раны
	create_template("talent_tree_zea_pas_027_ru",
		{"loc_talent_zealot_increased_stagger_on_weakspot_melee"}, {"ru"},
			loc_text("Тяжёлые раны")),
	--[+ Traditional Chinese - 重傷 +]--
	-- create_template("talent_tree_zea_pas_027_tw",
		-- {"loc_talent_zealot_increased_stagger_on_weakspot_melee"}, {"zh-tw"},
			-- loc_text("重傷")),

	--[+ Passive 28 - Ambuscade +]--
	-- create_template("talent_tree_zea_pas_028_en",
		-- {"loc_talent_zealot_increased_flanking_damage"}, {"en"},
			-- loc_text("Ambuscade")),
	--[+ Russian +]-- Засада
	-- create_template("talent_tree_zea_pas_028_ru",
		-- {"loc_talent_zealot_increased_flanking_damage"}, {"ru"},
			-- loc_text("Засада")),
	--[+ Traditional Chinese - 伏擊 +]--
	-- create_template("talent_tree_zea_pas_028_tw",
		-- {"loc_talent_zealot_increased_flanking_damage"}, {"zh-tw"},
			-- loc_text("伏擊")),

	--[+ Passive 29 - Punishment +]--
	-- create_template("talent_tree_zea_pas_029_en",
		-- {"loc_talent_zealot_multi_hits_increase_impact"}, {"en"},
			-- loc_text("Punishment")),
	--[+ Russian +]-- Наказание
	-- create_template("talent_tree_zea_pas_029_ru",
		-- {"loc_talent_zealot_multi_hits_increase_impact"}, {"ru"},
			-- loc_text("Наказание")),
	--[+ Traditional Chinese - 懲罰 +]--
	-- create_template("talent_tree_zea_pas_029_tw",
		-- {"loc_talent_zealot_multi_hits_increase_impact"}, {"zh-tw"},
			-- loc_text("懲罰")),

	--[+ Passive 30 - Faithful Frenzy +]--
	-- create_template("talent_tree_zea_pas_030_en",
		-- {"loc_talent_zealot_attack_speed"}, {"en"},
			-- loc_text("Faithful Frenzy")),
	--[+ Russian +]-- Правоверное неистовство -- руоф Верное безумие
	create_template("talent_tree_zea_pas_030_ru",
		{"loc_talent_zealot_attack_speed"}, {"ru"},
			loc_text("Правоверное неистовство")),
	--[+ Traditional Chinese - 信仰狂亂 +]--
	-- create_template("talent_tree_zea_pas_030_tw",
		-- {"loc_talent_zealot_attack_speed"}, {"zh-tw"},
			-- loc_text("信仰狂亂")),

	--[+ Passive 31 - Sustained Assault +]--
	-- create_template("talent_tree_zea_pas_031_en",
		-- {"loc_talent_zealot_increased_damage_stacks_on_hit"}, {"en"},
			-- loc_text("Sustained Assault")),
	--[+ Russian +]-- Непрерывное нападение -- руоф Непрерывный штурм
	create_template("talent_tree_zea_pas_031_ru",
		{"loc_talent_zealot_increased_damage_stacks_on_hit"}, {"ru"},
			loc_text("Непрерывное нападение")),
	--[+ Traditional Chinese - 持續突擊 +]--
	-- create_template("talent_tree_zea_pas_031_tw",
		-- {"loc_talent_zealot_increased_damage_stacks_on_hit"}, {"zh-tw"},
			-- loc_text("持續突擊")),

	--[+ Passive 32 - The Master's Retribution +]--
	-- create_template("talent_tree_zea_pas_032_en",
		-- {"loc_talent_zealot_3_tier_3_ability_1"}, {"en"},
			-- loc_text("The Master's Retribution")),
	--[+ Russian +]-- Возмездие Владыки
	-- create_template("talent_tree_zea_pas_032_ru",
		-- {"loc_talent_zealot_3_tier_3_ability_1"}, {"ru"},
			-- loc_text("Возмездие Владыки")),
	--[+ Traditional Chinese - 大師的反擊 +]--
	-- create_template("talent_tree_zea_pas_032_tw",

   --[+ Passive 33 - Faith's Fortitude +]--
	-- create_template("talent_tree_zea_pas_033_en",
		-- {"loc_talent_zealot_3_tier_1_ability_3"}, {"en"},
			-- loc_text("Faith's Fortitude")),
	--[+ Russian +]-- Стойкость веры
	-- create_template("talent_tree_zea_pas_033_ru",
		-- {"loc_talent_zealot_3_tier_1_ability_3"}, {"ru"},
			-- loc_text("Стойкость веры")),
	--[+ Traditional Chinese - 信仰的堅韌 +]--
	-- create_template("talent_tree_zea_pas_033_tw",
		-- {"loc_talent_zealot_3_tier_1_ability_3"}, {"zh-tw"},
			-- loc_text("信仰的堅韌")),

	--[+ Passive 34 - Swift Certainty +]--
	-- create_template("talent_tree_zea_pas_034_en",
		-- {"loc_talent_zealot_improved_sprint"}, {"en"},
			-- loc_text("Swift Certainty")),
	--[+ Russian +]-- Быстрая уверенность -- руоф Скорая определенность
	create_template("talent_tree_zea_pas_034_ru",
		{"loc_talent_zealot_improved_sprint"}, {"ru"},
			loc_text("Быстрая уверенность")),
	--[+ Traditional Chinese - 堅定迅捷 +]--
	-- create_template("talent_tree_zea_pas_034_tw",
		-- {"loc_talent_zealot_improved_sprint"}, {"zh-tw"},
			-- loc_text("堅定迅捷")),

--[+ ++VETERAN - ВЕТЕРАН - 老兵 ++ +]--
--[+ +BLITZ - БЛИЦ - 閃擊 + +]--
	--[+ Blitz 0 - Frag Grenade +]--
	-- create_template("talent_tree_vet_blitz_000_en",
		-- {"loc_ability_frag_grenade"}, {"en"},
			-- loc_text("Frag Grenade")),
	--[+ Russian +]-- Фраг-граната
	-- create_template("talent_tree_vet_blitz_000_ru",
		-- {"loc_ability_frag_grenade"}, {"ru"},
			-- loc_text("Фраг-граната")),
	--[+ Traditional Chinese - 碎片手雷 +]--
	-- create_template("talent_tree_vet_blitz_000_tw",
		-- {"loc_ability_frag_grenade"}, {"zh-tw"},
			-- loc_text("碎片手雷")),
	
	--[+ Blitz 1 - Shredder Frag Grenade +]--
	-- create_template("talent_tree_vet_blitz1_000_en",
		-- {"loc_talent_veteran_grenade_apply_bleed"}, {"en"},
			-- loc_text("Shredder Frag Grenade")),
	--[+ Russian +]-- Крошащая фраг-граната -- руоф Фраг-граната крошителя
	create_template("talent_tree_vet_blitz1_000_ru",
		{"loc_talent_veteran_grenade_apply_bleed"}, {"ru"},
			loc_text("Крошащая фраг-граната")),
	--[+ Traditional Chinese - 粉碎者破片手雷 +]--
	-- create_template("talent_tree_vet_blitz1_000_tw",
		-- {"loc_talent_veteran_grenade_apply_bleed"}, {"zh-tw"},
			-- loc_text("粉碎者破片手雷")),

	--[+ Blitz 2 - Krak Grenade +]--
	-- create_template("talent_tree_vet_blitz2_000_en",
		-- {"loc_talent_ability_krak_grenade"}, {"en"},
			-- loc_text("Krak Grenade")),
	--[+ Russian +]-- Крак-граната
	-- create_template("talent_tree_vet_blitz2_000_ru",
		-- {"loc_talent_ability_krak_grenade"}, {"ru"},
			-- loc_text("Крак-граната")),
	--[+ Traditional Chinese - 穿甲手雷 +]--
	-- create_template("talent_tree_vet_blitz2_000_tw",
		-- {"loc_talent_ability_krak_grenade"}, {"zh-tw"},
			-- loc_text("穿甲手雷")),

	--[+ Blitz 3 - Smoke Grenade +]--
	-- create_template("talent_tree_vet_blitz3_000_en",
		-- {"loc_ability_smoke_grenade"}, {"en"},
			-- loc_text("Smoke Grenade")),
	--[+ Russian +]-- Дымовая граната
	-- create_template("talent_tree_vet_blitz3_000_ru",
		-- {"loc_ability_smoke_grenade"}, {"ru"},
			-- loc_text("Дымовая граната")),
	--[+ Traditional Chinese - 煙霧手雷 +]--
	-- create_template("talent_tree_vet_blitz3_000_tw",
		-- {"loc_ability_smoke_grenade"}, {"zh-tw"},
			-- loc_text("煙霧手雷")),

--[+ +AURA+ +]--
	--[+ Aura 0 - Scavenger +]--
	-- create_template("talent_tree_vet_aura_000_en",
		-- {"loc_talent_veteran_elite_kills_grant_ammo_coop"}, {"en"},
			-- loc_text("Scavenger")),
	--[+ Russian +]-- Сборщик -- руоф Собиратель
	create_template("talent_tree_vet_aura_000_ru",
		{"loc_talent_veteran_elite_kills_grant_ammo_coop"}, {"ru"},
			loc_text("Сборщик")),
	--[+ Traditional Chinese - 拾荒者 +]--
	-- create_template("talent_tree_vet_aura_000_tw",
		-- {"loc_talent_veteran_elite_kills_grant_ammo_coop"}, {"zh-tw"},
			-- loc_text("拾荒者")),

	--[+ Aura 1 - Survivalist +]--
	-- create_template("talent_tree_vet_aura_001_en",
		-- {"loc_talent_veteran_elite_kills_grant_ammo_coop_improved"}, {"en"},
			-- loc_text("Survivalist")),
	--[+ Russian +]-- Выживальщик -- руоф Специалист по выживанию
	create_template("talent_tree_vet_aura_001_ru",
		{"loc_talent_veteran_elite_kills_grant_ammo_coop_improved"}, {"ru"},
			loc_text("Выживальщик")),
	--[+ Traditional Chinese - 生存專家 +]--
	-- create_template("talent_tree_vet_aura_001_tw",
		-- {"loc_talent_veteran_elite_kills_grant_ammo_coop_improved"}, {"zh-tw"},
			-- loc_text("生存專家")),

	--[+ Aura 2 - Fire Team +]--
	-- create_template("talent_tree_vet_aura_002_en",
		-- {"loc_talent_veteran_damage_coherency"}, {"en"},
			-- loc_text("Fire Team")),
	--[+ Russian +]-- Огневая группа
	-- create_template("talent_tree_vet_aura_002_ru",
		-- {"loc_talent_veteran_damage_coherency"}, {"ru"},
			-- loc_text("Огневая группа")),
	--[+ Traditional Chinese - 火力小分隊 +]--
	-- create_template("talent_tree_vet_aura_002_tw",
		-- {"loc_talent_veteran_damage_coherency"}, {"zh-tw"},
			-- loc_text("火力小分隊")),

	--[+ Aura 3 - Close and Kill +]--
	-- create_template("talent_tree_vet_aura_003_en",
		-- {"loc_talent_veteran_movement_speed_coherency"}, {"en"},
			-- loc_text("Close and Kill")),
	--[+ Russian +]-- Приблизиться и убить
	-- create_template("talent_tree_vet_aura_003_ru",
		-- {"loc_talent_veteran_movement_speed_coherency"}, {"ru"},
			-- loc_text("Приблизиться и убить")),
	--[+ Traditional Chinese - 抵近殺敵 +]--
	-- create_template("talent_tree_vet_aura_003_tw",
		-- {"loc_talent_veteran_movement_speed_coherency"}, {"zh-tw"},
			-- loc_text("抵近殺敵")),

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Volley Fire +]--
	-- create_template("talent_tree_vet_abil_000_en",
		-- {"loc_talent_veteran_2_combat_ability"}, {"en"},
			-- loc_text("Volley Fire")),
	--[+ Russian +]-- Залповый огонь
	-- create_template("talent_tree_vet_abil_000_ru",
		-- {"loc_talent_veteran_2_combat_ability"}, {"ru"},
			-- loc_text("Залповый огонь")),
	--[+ Traditional Chinese - 火力齊射 +]--
	-- create_template("talent_tree_vet_abil_000_tw",
		-- {"loc_talent_veteran_2_combat_ability"}, {"zh-tw"},
			-- loc_text("火力齊射")),

	--[+ Ability 1 - Executioner's Stance +]--
	-- create_template("talent_tree_vet_abil1_000_en",
		-- {"loc_talent_veteran_combat_ability_elite_and_special_outlines"}, {"en"},
			-- loc_text("Executioner's Stance")),
	--[+ Russian +]-- Стойка палача
	-- create_template("talent_tree_vet_abil1_000_ru",
		-- {"loc_talent_veteran_combat_ability_elite_and_special_outlines"}, {"ru"},
			-- loc_text("Стойка палача")),
	--[+ Traditional Chinese - 處決者姿態 +]--
	-- create_template("talent_tree_vet_abil1_000_tw",
		-- {"loc_talent_veteran_combat_ability_elite_and_special_outlines"}, {"zh-tw"},
			-- loc_text("處決者姿態")),

	--[+ Ability 1-1 - Enhanced Target Priority +]--
	-- create_template("talent_tree_vet_abil1_001_en",
		-- {"loc_talent_veteran_combat_ability_coherency_outlines"}, {"en"},
			-- loc_text("Enhanced Target Priority")),
	--[+ Russian +]-- Повышенный приоритет целей -- руоф Повышенный приоритет цели
	create_template("talent_tree_vet_abil1_001_ru",
		{"loc_talent_veteran_combat_ability_coherency_outlines"}, {"ru"},
			loc_text("Повышенный приоритет целей")),
	--[+ Traditional Chinese - 目標引導增強 +]--
	-- create_template("talent_tree_vet_abil1_001_tw",
		-- {"loc_talent_veteran_combat_ability_coherency_outlines"}, {"zh-tw"},
			-- loc_text("目標引導增強")),

	--[+ Ability 1-2 - Counter-Fire +]--
	-- create_template("talent_tree_vet_abil1_002_en",
		-- {"loc_talent_veteran_combat_ability_ranged_enemies_outlines"}, {"en"},
			-- loc_text("Counter-Fire")),
	--[+ Russian +]-- Ответный огонь
	-- create_template("talent_tree_vet_abil1_002_ru",
		-- {"loc_talent_veteran_combat_ability_ranged_enemies_outlines"}, {"ru"},
			-- loc_text("Ответный огонь")),
	--[+ Traditional Chinese - 火力反擊 +]--
	-- create_template("talent_tree_vet_abil1_002_tw",
		-- {"loc_talent_veteran_combat_ability_ranged_enemies_outlines"}, {"zh-tw"},
			-- loc_text("火力反擊")),

	--[+ Ability 1-3 - The Bigger they Are... +]--
	-- create_template("talent_tree_vet_abil1_003_en",
		-- {"loc_talent_ranger_volley_fire_big_game_hunter"}, {"en"},
			-- loc_text("The Bigger they Are...")),
	--[+ Russian +]-- Чем больше шкаф...
	-- create_template("talent_tree_vet_abil1_003_ru",
		-- {"loc_talent_ranger_volley_fire_big_game_hunter"}, {"ru"},
			-- loc_text("Чем больше шкаф...")),
	--[+ Traditional Chinese - 敵人越大... +]--
	-- create_template("talent_tree_vet_abil1_003_tw",
		-- {"loc_talent_ranger_volley_fire_big_game_hunter"}, {"zh-tw"},
			-- loc_text("敵人越大...")),

	--[+ Ability 1-4 - Marksman +]--
	-- create_template("talent_tree_vet_abil1_004_en",
		-- {"loc_talent_veteran_ability_marksman"}, {"en"},
			-- loc_text("Marksman")),
	--[+ Russian +]-- Меткий стрелок
	-- create_template("talent_tree_vet_abil1_004_ru",
		-- {"loc_talent_veteran_ability_marksman"}, {"ru"},
			-- loc_text("Меткий стрелок")),
	--[+ Traditional Chinese - 鷹眼 +]--
	-- create_template("talent_tree_vet_abil1_004_tw",
		-- {"loc_talent_veteran_ability_marksman"}, {"zh-tw"},
			-- loc_text("鷹眼")),

	--[+ Ability 2 - Voice of Command +]--
	-- create_template("talent_tree_vet_abil2_000_en",
		-- {"loc_talent_veteran_combat_ability_stagger_nearby_enemies"}, {"en"},
			-- loc_text("Voice of Command")),
	--[+ Russian +]-- Командный голос
	-- create_template("talent_tree_vet_abil2_000_ru",
		-- {"loc_talent_veteran_combat_ability_stagger_nearby_enemies"}, {"ru"},
			-- loc_text("Командный голос")),
	--[+ Traditional Chinese - 發號施令 +]--
	-- create_template("talent_tree_vet_abil2_000_tw",
		-- {"loc_talent_veteran_combat_ability_stagger_nearby_enemies"}, {"zh-tw"},
			-- loc_text("發號施令")),

	--[+ Ability 2-1 - Duty and Honour +]--
	-- create_template("talent_tree_vet_abil2_001_en",
		-- {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency"}, {"en"},
			-- loc_text("Duty and Honour")),
	--[+ Russian +]-- Долг и честь
	-- create_template("talent_tree_vet_abil2_001_ru",
		-- {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency"}, {"ru"},
			-- loc_text("Долг и честь")),
	--[+ Traditional Chinese - 責任與榮譽 +]--
	-- create_template("talent_tree_vet_abil2_001_tw",
		-- {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency"}, {"zh-tw"},
			-- loc_text("責任與榮譽")),

	--[+ Ability 2-2 - Only In Death Does Duty End +]--
	-- create_template("talent_tree_vet_abil2_002_en",
		-- {"loc_talent_veteran_combat_ability_revives"}, {"en"},
			-- loc_text("Only In Death Does Duty End")),
	--[+ Russian +]-- Только в смерти заканчивается долг -- руоф Лишь после смерти заканчивается служение долгу
	create_template("talent_tree_vet_abil2_002_ru",
		{"loc_talent_veteran_combat_ability_revives"}, {"ru"},
			loc_text("Только в смерти заканчивается долг")),
	--[+ Traditional Chinese - 只有死亡，職責才會終結 +]--
	-- create_template("talent_tree_vet_abil2_002_tw",
		-- {"loc_talent_veteran_combat_ability_revives"}, {"zh-tw"},
			-- loc_text("只有死亡，職責才會終結")),

	--[+ Ability 2-3 - For the Emperor! +]--
	-- create_template("talent_tree_vet_abil2_003_en",
		-- {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency"}, {"en"},
			-- loc_text("For the Emperor!")), За Императора! +]--
	--[+ Russian +]--
	-- create_template("talent_tree_vet_abil2_003_ru",
		-- {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency"}, {"ru"},
			-- loc_text("За Императора!")),
	--[+ Traditional Chinese - 為了皇帝！ +]--
	-- create_template("talent_tree_vet_abil2_003_tw",
		-- {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency"}, {"zh-tw"},
			-- loc_text("為了皇帝！")),

	--[+ Ability 3 - Infiltrate +]--
	-- create_template("talent_tree_vet_abil3_000_en",
		-- {"loc_talent_veteran_invisibility_on_combat_ability"}, {"en"},
			-- loc_text("Infiltrate")),
	--[+ Russian +]-- Проникновение
	-- create_template("talent_tree_vet_abil3_000_ru",
		-- {"loc_talent_veteran_invisibility_on_combat_ability"}, {"ru"},
			-- loc_text("Проникновение")),
	--[+ Traditional Chinese - 滲透 +]--
	-- create_template("talent_tree_vet_abil3_000_tw",
		-- {"loc_talent_veteran_invisibility_on_combat_ability"}, {"zh-tw"},
			-- loc_text("滲透")),

	--[+ Ability 3-1 - Low Profile +]--
	-- create_template("talent_tree_vet_abil3_001_en",
		-- {"loc_talent_veteran_reduced_threat_after_combat_ability"}, {"en"},
			-- loc_text("Low Profile")),
	--[+ Russian +]-- Незаметность -- руоф Сдержанность
	create_template("talent_tree_vet_abil3_001_ru",
		{"loc_talent_veteran_reduced_threat_after_combat_ability"}, {"ru"},
			loc_text("Незаметность")),
	--[+ Traditional Chinese - 低調 +]--
	-- create_template("talent_tree_vet_abil3_001_tw",
		-- {"loc_talent_veteran_reduced_threat_after_combat_ability"}, {"zh-tw"},
			-- loc_text("低調")),

	--[+ Ability 3-2 - Overwatch +]--
	-- create_template("talent_tree_vet_abil3_002_en",
		-- {"loc_talent_veteran_combat_ability_extra_charge"}, {"en"},
			-- loc_text("Overwatch")),
	--[+ Russian +]-- Наблюдение -- руоф Прикрытие
	create_template("talent_tree_vet_abil3_002_en",{"loc_talent_veteran_combat_ability_extra_charge"}, {"ru"},
			loc_text("Наблюдение")),
	--[+ Traditional Chinese - 掩護射擊 +]--
	-- create_template("talent_tree_vet_abil3_002_tw",
		-- {"loc_talent_veteran_combat_ability_extra_charge"}, {"zh-tw"},
			-- loc_text("掩護射擊")),

	--[+ Ability 3-3 - Hunter's Resolve +]--
	-- create_template("talent_tree_vet_abil3_003_en",
		-- {"loc_talent_veteran_toughness_bonus_leaving_invisibility"}, {"en"},
			-- loc_text("Hunter's Resolve")),
	--[+ Russian +]-- Упорство охотника
	-- create_template("talent_tree_vet_abil3_003_ru",
		-- {"loc_talent_veteran_toughness_bonus_leaving_invisibility"}, {"ru"},
			-- loc_text("Упорство охотника")),
	--[+ Traditional Chinese - 獵手決意 +]--
	-- create_template("talent_tree_vet_abil3_003_tw",
		-- {"loc_talent_veteran_toughness_bonus_leaving_invisibility"}, {"zh-tw"},
			-- loc_text("獵手決意")),

	--[+ Ability 3-4 - Surprise Attack +]--
	-- create_template("talent_tree_vet_abil3_004_en",
		-- {"loc_talent_veteran_damage_bonus_leaving_invisibility"}, {"en"},
			-- loc_text("Surprise Attack")),
	--[+ Russian +]-- Внезапная атака
	-- create_template("talent_tree_vet_abil3_004_ru",
		-- {"loc_talent_veteran_damage_bonus_leaving_invisibility"}, {"ru"},
			-- loc_text("Внезапная атака")),
	--[+ Traditional Chinese - 突襲 +]--
	-- create_template("talent_tree_vet_abil3_004_tw",
		-- {"loc_talent_veteran_damage_bonus_leaving_invisibility"}, {"zh-tw"},
			-- loc_text("突襲")),

	--[+ Ability 3-5 - Close Quarters Killzone +]--
	-- create_template("talent_tree_vet_abil3_005_en",
		-- {"loc_talent_veteran_ability_assault"}, {"en"},
			-- loc_text("Close Quarters Killzone")),
	--[+ Russian +]-- Зона ближнего боя -- руоф Зона поражения на ближней дистанции
	create_template("talent_tree_vet_abil3_005_ru",
		{"loc_talent_veteran_ability_assault"}, {"ru"},
			loc_text("Зона ближнего боя")),
	--[+ Traditional Chinese - 肉搏戰 +]--
	-- create_template("talent_tree_vet_abil3_005_tw",
		-- {"loc_talent_veteran_ability_assault"}, {"zh-tw"},
			-- loc_text("肉搏戰")),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ Keystone 1 - Marksman's Focus +]--
	-- create_template("talent_tree_vet_keys1_000_en",
		-- {"loc_talent_veteran_snipers_focus"}, {"en"},
			-- loc_text("Marksman's Focus")),
	--[+ Russian +]-- Концентрация снайпера
	-- create_template("talent_tree_vet_keys1_000_ru",
		-- {"loc_talent_veteran_snipers_focus"}, {"ru"},
			-- loc_text("Концентрация снайпера")),
	--[+ Traditional Chinese - 狙擊專注 +]--
	create_template("talent_tree_vet_keys1_000_tw",
		{"loc_talent_veteran_snipers_focus"}, {"zh-tw"},
			loc_text("狙擊專注")),

	--[+ Keystone 1-1 - Chink in their Armour +]--
	-- create_template("talent_tree_vet_keys1_001_en",
		-- {"loc_talent_veteran_snipers_focus_rending_bonus"}, {"en"},
			-- loc_text("Chink in their Armour")),
	--[+ Russian +]-- Щель в их броне -- руоф Щель в броне
	create_template("talent_tree_vet_keys1_001_ru",
		{"loc_talent_veteran_snipers_focus_rending_bonus"}, {"ru"},
			loc_text("Щель в их броне")),
	--[+ Traditional Chinese - 滲透盔甲 +]--
	create_template("talent_tree_vet_keys1_001_tw",
		{"loc_talent_veteran_snipers_focus_rending_bonus"}, {"zh-tw"},
			loc_text("滲透盔甲")),

	--[+ Keystone 1-2 - Tunnel Vision +]--
	-- create_template("talent_tree_vet_keys1_002_en",
		-- {"loc_talent_veteran_snipers_focus_toughness_bonus"}, {"en"},
			-- loc_text("Tunnel Vision")),
	--[+ Russian +]-- Тоннельное зрение
	-- create_template("talent_tree_vet_keys1_002_ru",
		-- {"loc_talent_veteran_snipers_focus_toughness_bonus"}, {"ru"},
			-- loc_text("Тоннельное зрение")),
	--[+ Traditional Chinese - 視野狹窄 +]--
	create_template("talent_tree_vet_keys1_002_tw",
		{"loc_talent_veteran_snipers_focus_toughness_bonus"}, {"zh-tw"},
			loc_text("視野狹窄")),

	--[+ Keystone 1-3 - Long Range Assassin +]--
	-- create_template("talent_tree_vet_keys1_003_en",
		-- {"loc_talent_veteran_snipers_focus_increased_stacks"}, {"en"},
			-- loc_text("Long Range Assassin")),
	--[+ Russian +]-- Дальнобойный ассасин
	-- create_template("talent_tree_vet_keys1_003_ru",
		-- {"loc_talent_veteran_snipers_focus_increased_stacks"}, {"ru"},
			-- loc_text("Дальнобойный ассасин")),
	--[+ Traditional Chinese - 遠程刺客 +]--
	create_template("talent_tree_vet_keys1_003_tw",
		{"loc_talent_veteran_snipers_focus_increased_stacks"}, {"zh-tw"},
			loc_text("遠程刺客")),

	--[+ Keystone 1-4 - Camouflage +]--
	-- create_template("talent_tree_vet_keys1_004_en",
		-- {"loc_talent_veteran_snipers_focus_stacks_on_still"}, {"en"},
			-- loc_text("Camouflage")),
	--[+ Russian +]-- Камуфляж
	-- create_template("talent_tree_vet_keys1_004_ru",
		-- {"loc_talent_veteran_snipers_focus_stacks_on_still"}, {"ru"},
			-- loc_text("Камуфляж")),
	--[+ Traditional Chinese - 偽裝 +]--
	create_template("talent_tree_vet_keys1_004_tw",
		{"loc_talent_veteran_snipers_focus_stacks_on_still"}, {"zh-tw"},
			loc_text("偽裝")),

	--[+ Keystone 2 - Focus Target! +]--
	-- create_template("talent_tree_vet_keys2_000_en",
		-- {"loc_talent_veteran_improved_tag"}, {"en"},
			-- loc_text("Focus Target!")),
	--[+ Russian +]-- Важная цель!
	-- create_template("talent_tree_vet_keys2_000_ru",
		-- {"loc_talent_veteran_improved_tag"}, {"ru"},
			-- loc_text("Важная цель!")),
	--[+ Traditional Chinese - 鎖定目標 +]--
	create_template("talent_tree_vet_keys2_000_tw",
		{"loc_talent_veteran_improved_tag"}, {"zh-tw"},
			loc_text("鎖定目標")),

	--[+ Keystone 2-1 - Target Down! +]--
	-- create_template("talent_tree_vet_keys2_001_en",
		-- {"loc_talent_veteran_improved_tag_dead_bonus"}, {"en"},
			-- loc_text("Target Down!")),
	--[+ Russian +]-- Цель поражена!
	-- create_template("talent_tree_vet_keys2_001_ru",
		-- {"loc_talent_veteran_improved_tag_dead_bonus"}, {"ru"},
			-- loc_text("Цель поражена!")),
	--[+ Traditional Chinese - 目標擊倒！ +]--
	create_template("talent_tree_vet_keys2_001_tw",
		{"loc_talent_veteran_improved_tag_dead_bonus"}, {"zh-tw"},
			loc_text("目標擊倒！")),

	--[+ Keystone 2-2 - Redirect Fire! +]--
	-- create_template("talent_tree_vet_keys2_002_en",
		-- {"loc_talent_veteran_improved_tag_dead_coherency_bonus"}, {"en"},
			-- loc_text("Redirect Fire!")),
	--[+ Russian +]-- Перевести огонь!
	-- create_template("talent_tree_vet_keys2_002_ru",
		-- {"loc_talent_veteran_improved_tag_dead_coherency_bonus"}, {"ru"},
			-- loc_text("Перевести огонь!")),
	--[+ Traditional Chinese - 轉移火力！ +]--
	create_template("talent_tree_vet_keys2_002_tw",
		{"loc_talent_veteran_improved_tag_dead_coherency_bonus"}, {"zh-tw"},
			loc_text("轉移火力！")),

	--[+ Keystone 2-3 - Focused Fire +]--
	-- create_template("talent_tree_vet_keys2_003_en",
		-- {"loc_talent_veteran_improved_tag_more_damage"}, {"en"},
			-- loc_text("Focused Fire")),
	--[+ Russian +]-- Сосредоточенный огонь
	-- create_template("talent_tree_vet_keys2_003_ru",
		-- {"loc_talent_veteran_improved_tag_more_damage"}, {"ru"},
			-- loc_text("Сосредоточенный огонь")),
	--[+ Traditional Chinese - 集中火力 +]--
	create_template("talent_tree_vet_keys2_003_tw",
		{"loc_talent_veteran_improved_tag_more_damage"}, {"zh-tw"},
			loc_text("集中火力")),

	--[+ Keystone 3 - Weapons Specialist +]--
	-- create_template("talent_tree_vet_keys3_000_en",
		-- {"loc_talent_veteran_weapon_switch"}, {"en"},
			-- loc_text("Weapons Specialist")),
	--[+ Russian +]-- Специалист по оружию -- руоф Специалист по вооружениям
	create_template("talent_tree_vet_keys3_000_ru",
		{"loc_talent_veteran_weapon_switch"}, {"ru"},
			loc_text("Специалист по оружию")),
	--[+ Traditional Chinese - 武器專家 +]--
	create_template("talent_tree_vet_keys3_000_tw",
		{"loc_talent_veteran_weapon_switch"}, {"zh-tw"},
			loc_text("武器專家")),

	--[+ Keystone 3-1 - Always Prepared +]--
	-- create_template("talent_tree_vet_keys3_001_en",
		-- {"loc_talent_veteran_weapon_switch_replenish_ammo"}, {"en"},
			-- loc_text("Always Prepared")),
	--[+ Russian +]-- Всегда готов
	-- create_template("talent_tree_vet_keys3_001_ru",
		-- {"loc_talent_veteran_weapon_switch_replenish_ammo"}, {"ru"},
			-- loc_text("Всегда готов")),
	--[+ Traditional Chinese - 有備無患 +]--
	create_template("talent_tree_vet_keys3_001_tw",
		{"loc_talent_veteran_weapon_switch_replenish_ammo"}, {"zh-tw"},
			loc_text("有備無患")),

	--[+ Keystone 3-2 - Invigorated +]--
	-- create_template("talent_tree_vet_keys3_002_en",
		-- {"loc_talent_veteran_weapon_switch_replenish_stamina"}, {"en"},
			-- loc_text("Invigorated")),
	--[+ Russian +]-- Ободрение
	-- create_template("talent_tree_vet_keys3_002_ru",
		-- {"loc_talent_veteran_weapon_switch_replenish_stamina"}, {"ru"},
			-- loc_text("Ободрение")),
	--[+ Traditional Chinese - 活力煥發 +]--
	create_template("talent_tree_vet_keys3_002_tw",
		{"loc_talent_veteran_weapon_switch_replenish_stamina"}, {"zh-tw"},
			loc_text("活力煥發")),

	--[+ Keystone 3-3 - On Your Toes +]--
	-- create_template("talent_tree_vet_keys3_003_en",
		-- {"loc_talent_veteran_weapon_switch_replenish_toughness"}, {"en"},
			-- loc_text("On Your Toes")),
	--[+ Russian +]-- Наготове
	-- create_template("talent_tree_vet_keys3_003_ru",
		-- {"loc_talent_veteran_weapon_switch_replenish_toughness"}, {"ru"},
			-- loc_text("Наготове")),
	--[+ Traditional Chinese - 時刻警覺 +]--
	create_template("talent_tree_vet_keys3_003_tw",
		{"loc_talent_veteran_weapon_switch_replenish_toughness"}, {"zh-tw"},
			loc_text("時刻警覺")),

	--[+ Keystone 3-4 - Fleeting Fire +]--
	-- create_template("talent_tree_vet_keys3_004_en",
		-- {"loc_talent_veteran_weapon_switch_reload_speed"}, {"en"},
			-- loc_text("Fleeting Fire")),
	--[+ Russian +]-- Беглый огонь
	-- create_template("talent_tree_vet_keys3_004_ru",
		-- {"loc_talent_veteran_weapon_switch_reload_speed"}, {"ru"},
			-- loc_text("Беглый огонь")),
	--[+ Traditional Chinese - 集火 +]--
	create_template("talent_tree_vet_keys3_004_tw",
		{"loc_talent_veteran_weapon_switch_reload_speed"}, {"zh-tw"},
			loc_text("集火")),

	--[+ Keystone 3-5 - Conditioning +]--
	-- create_template("talent_tree_vet_keys3_005_en",
		-- {"loc_talent_veteran_weapon_switch_stamina_reduction"}, {"en"},
			-- loc_text("Conditioning")),
	-- [+ Russian +]-- Подготовка
	-- create_template("talent_tree_vet_keys3_005_ru",
		-- {"loc_talent_veteran_weapon_switch_stamina_reduction"}, {"ru"},
			-- loc_text("Подготовка")),
	--[+ Traditional Chinese - 身體調節 +]--
	create_template("talent_tree_vet_keys3_005_tw",
		{"loc_talent_veteran_weapon_switch_stamina_reduction"}, {"zh-tw"},
			loc_text("身體調節")),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Longshot +]--
	-- create_template("talent_tree_vet_pas_001_en",
		-- {"loc_talent_veteran_increased_damage_based_on_range"}, {"en"},
			-- loc_text("Longshot")),
	--[+ Russian +]-- Дальний выстрел -- ruof Далекая перспектива
	create_template("talent_tree_vet_pas_001_ru",
		{"loc_talent_veteran_increased_damage_based_on_range"}, {"ru"},
			loc_text("Дальний выстрел")),
	--[+ Traditional Chinese - 遠射 +]--
	-- create_template("talent_tree_vet_pas_001_tw",
		-- {"loc_talent_veteran_increased_damage_based_on_range"}, {"zh-tw"},
			-- loc_text("遠射")),

	--[+ Passive 2 - Close Order Drill +]--
	-- create_template("talent_tree_vet_pas_002_en",
		-- {"loc_talent_veteran_toughness_damage_reduction_per_ally"}, {"en"},
			-- loc_text("Close Order Drill")),
	--[+ Russian +]-- Строевая подготовка
	-- create_template("talent_tree_vet_pas_002_ru",
		-- {"loc_talent_veteran_toughness_damage_reduction_per_ally"}, {"ru"},
			-- loc_text("Строевая подготовка")),
	--[+ Traditional Chinese - 密集隊形訓練 +]--
	-- create_template("talent_tree_vet_pas_002_tw",
		-- {"loc_talent_veteran_toughness_damage_reduction_per_ally"}, {"zh-tw"},
			-- loc_text("密集隊形訓練")),

	--[+ Passive 3 - One Motion +]--
	-- create_template("talent_tree_vet_pas_003_en",
		-- {"loc_talent_veteran_reduce_swap_time"}, {"en"},
			-- loc_text("One Motion")),
	--[+ Russian +]-- В одно движение -- руоф Одно движение
	create_template("talent_tree_vet_pas_003_ru",
		{"loc_talent_veteran_reduce_swap_time"}, {"ru"},
			loc_text("В одно движение")),
	--[+ Traditional Chinese - 行雲流水 +]--
	-- create_template("talent_tree_vet_pas_003_tw",
		-- {"loc_talent_veteran_reduce_swap_time"}, {"zh-tw"},
			-- loc_text("行雲流水")),

	--[+ Passive 4 - Exhilarating Takedown +]--
	-- create_template("talent_tree_vet_pas_004_en",
		-- {"loc_talent_veteran_toughness_on_weakspot_kill"}, {"en"},
			-- loc_text("Exhilarating Takedown")),
	--[+ Russian +]-- Подбадривающее убийство -- руоф Бодрящее сокрушение
	create_template("talent_tree_vet_pas_004_ru",
		{"loc_talent_veteran_toughness_on_weakspot_kill"}, {"ru"},
			loc_text("Подбадривающее убийство")),
	--[+ Traditional Chinese - 振奮擊倒 +]--
	-- create_template("talent_tree_vet_pas_004_tw",
		-- {"loc_talent_veteran_toughness_on_weakspot_kill"}, {"zh-tw"},
			-- loc_text("振奮擊倒")),

	--[+ Passive 5 - Volley Adept +]--
	-- create_template("talent_tree_vet_pas_005_en",
		-- {"loc_talent_veteran_reload_speed_on_elite_kill"}, {"en"},
			-- loc_text("Volley Adept")),
	--[+ Russian +]-- Умелый залп -- руоф Адепт залпа
	create_template("talent_tree_vet_pas_005_ru",
		{"loc_talent_veteran_reload_speed_on_elite_kill"}, {"ru"},
			loc_text("Умелый залп")),
	--[+ Traditional Chinese - 齊射能手 +]--
	-- create_template("talent_tree_vet_pas_005_tw",
		-- {"loc_talent_veteran_reload_speed_on_elite_kill"}, {"zh-tw"},
			-- loc_text("齊射能手")),

	--[+ Passive 6 - Charismatic +]--
	-- create_template("talent_tree_vet_pas_006_en",
		-- {"loc_talent_veteran_increased_aura_radius"}, {"en"},
			-- loc_text("Charismatic")),
	--[+ Russian +]-- Харизматичный -- руоф Обаятельный
	create_template("talent_tree_vet_pas_006_ru",
		{"loc_talent_veteran_increased_aura_radius"}, {"ru"},
			loc_text("Харизматичный")),
	--[+ Traditional Chinese - 超凡魅力 +]--
	-- create_template("talent_tree_vet_pas_006_tw",
		-- {"loc_talent_veteran_increased_aura_radius"}, {"zh-tw"},
			-- loc_text("超凡魅力")),

	--[+ Passive 7 - Confirmed Kill +]--
	-- create_template("talent_tree_vet_pas_007_en",
		-- {"loc_talent_veteran_toughness_on_elite_kill"}, {"en"},
			-- loc_text("Confirmed Kill")),
	--[+ Russian +]-- Подтверждённое убийство -- руоф Подтвержденное убийство
	create_template("talent_tree_vet_pas_007_ru",
		{"loc_talent_veteran_toughness_on_elite_kill"}, {"ru"},
			loc_text("Подтверждённое убийство")),
	--[+ Traditional Chinese - 擊殺紀錄 +]--
	-- create_template("talent_tree_vet_pas_007_tw",
		-- {"loc_talent_veteran_toughness_on_elite_kill"}, {"zh-tw"},
			-- loc_text("擊殺紀錄")),

	--[+ Passive 8 - Tactical Reload +]--
	-- create_template("talent_tree_vet_pas_008_en",
		-- {"loc_talent_ranger_reload_speed_empty_mag"}, {"en"},
			-- loc_text("Tactical Reload")),
	--[+ Russian +]-- Тактическая перезарядка
	-- create_template("talent_tree_vet_pas_008_ru",
		-- {"loc_talent_ranger_reload_speed_empty_mag"}, {"ru"},
			-- loc_text("Тактическая перезарядка")),
	--[+ Traditional Chinese - 戰術裝填 +]--
	-- create_template("talent_tree_vet_pas_008_tw",
		-- {"loc_talent_ranger_reload_speed_empty_mag"}, {"zh-tw"},
			-- loc_text("戰術裝填")),

	--[+ Passive 9 - Out for Blood +]--
	-- create_template("talent_tree_vet_pas_009_en",
		-- {"loc_talent_veteran_all_kills_replenish_toughness"}, {"en"},
			-- loc_text("Out for Blood")),
	--[+ Russian +]-- На тропе войны -- руоф В поисках крови
	create_template("talent_tree_vet_pas_009_ru",
		{"loc_talent_veteran_all_kills_replenish_toughness"}, {"ru"},
			loc_text("На тропе войны")),
	--[+ Traditional Chinese - 嗜血 +]--
	-- create_template("talent_tree_vet_pas_009_tw",
		-- {"loc_talent_veteran_all_kills_replenish_toughness"}, {"zh-tw"},
			-- loc_text("嗜血")),

	--[+ Passive 10 - Get Back in the Fight! +]--
	-- create_template("talent_tree_vet_pas_010_en",
		-- {"loc_talent_veteran_movement_speed_on_toughness_broken"}, {"en"},
			-- loc_text("Get Back in the Fight!")),
	--[+ Russian +]-- Возвращайся в бой! -- руоф Вернуться в бой!
	create_template("talent_tree_vet_pas_010_ru",
		{"loc_talent_veteran_movement_speed_on_toughness_broken"}, {"ru"},
			loc_text("Возвращайся в бой!")),
	--[+ Traditional Chinese - 重投戰鬥！ +]--
	-- create_template("talent_tree_vet_pas_010_tw",
		-- {"loc_talent_veteran_movement_speed_on_toughness_broken"}, {"zh-tw"},
			-- loc_text("重投戰鬥！")),

	--[+ Passive 11 - Catch a Breath +]--
	-- create_template("talent_tree_vet_pas_011_en",
		-- {"loc_talent_veteran_replenish_toughness_outside_melee"}, {"en"},
			-- loc_text("Catch a Breath")),
	--[+ Russian +]-- Переведи дух -- руоф Передышка
	create_template("talent_tree_vet_pas_011_ru",
		{"loc_talent_veteran_replenish_toughness_outside_melee"}, {"ru"},
			loc_text("Переведи дух")),
	--[+ Traditional Chinese - 喘息片刻 +]--
	-- create_template("talent_tree_vet_pas_011_tw",
		-- {"loc_talent_veteran_replenish_toughness_outside_melee"}, {"zh-tw"},
			-- loc_text("喘息片刻")),

	--[+ Passive 12 - Grenade Tinkerer +]--
	-- create_template("talent_tree_vet_pas_012_en",
		-- {"loc_talent_veteran_improved_grenades"}, {"en"},
			-- loc_text("Grenade Tinkerer")),
	--[+ Russian +]-- Гранатный мастер -- руоф Любитель гранат
	create_template("talent_tree_vet_pas_012_ru",
		{"loc_talent_veteran_improved_grenades"}, {"ru"},
			loc_text("Гранатный мастер")),
	--[+ Traditional Chinese - 手雷專家 +]--
	-- create_template("talent_tree_vet_pas_012_tw",
		-- {"loc_talent_veteran_improved_grenades"}, {"zh-tw"},
			-- loc_text("手雷專家")),

	--[+ Passive 13 - Covering Fire +]--
	-- create_template("talent_tree_vet_pas_013_en",
		-- {"loc_talent_veteran_replenish_toughness_and_boost_allies"}, {"en"},
			-- loc_text("Covering Fire")),
	--[+ Russian +]-- Прикрывающий огонь -- руоф Прикрытие огнем
	create_template("talent_tree_vet_pas_013_ru",
		{"loc_talent_veteran_replenish_toughness_and_boost_allies"}, {"ru"},
			loc_text("Прикрывающий огонь")),
	--[+ Traditional Chinese - 火力掩護 +]--
	-- create_template("talent_tree_vet_pas_013_tw",
		-- {"loc_talent_veteran_replenish_toughness_and_boost_allies"}, {"zh-tw"},
			-- loc_text("火力掩護")),

	--[+ Passive 14 - Serrated Blade +]--
	-- create_template("talent_tree_vet_pas_014_en",
		-- {"loc_talent_veteran_hits_cause_bleed"}, {"en"},
			-- loc_text("Serrated Blade")),
	--[+ Russian +]-- Зазубренный клинок -- руоф Зазубренное лезвие
	create_template("talent_tree_vet_pas_014_ru",
		{"loc_talent_veteran_hits_cause_bleed"}, {"ru"},
			loc_text("Зазубренный клинок")),
	--[+ Traditional Chinese - 鋸齒刀刃 +]--
	-- create_template("talent_tree_vet_pas_014_tw",
		-- {"loc_talent_veteran_hits_cause_bleed"}, {"zh-tw"},
			-- loc_text("鋸齒刀刃")),

	--[+ Passive 15 - Agile Engagement +]--
	-- create_template("talent_tree_vet_pas_015_en",
		-- {"loc_talent_veteran_kill_grants_damage_to_other_slot"}, {"en"},
			-- loc_text("Agile Engagement")),
	--[+ Russian +]-- Ловкое взаимодействие
	-- create_template("talent_tree_vet_pas_015_ru",
		-- {"loc_talent_veteran_kill_grants_damage_to_other_slot"}, {"ru"},
			-- loc_text("Ловкое взаимодействие")),
	--[+ Traditional Chinese - 靈活接敵 +]--
	-- create_template("talent_tree_vet_pas_015_tw",
		-- {"loc_talent_veteran_kill_grants_damage_to_other_slot"}, {"zh-tw"},
			-- loc_text("靈活接敵")),

	--[+ Passive 16 - Kill Zone +]--
	-- create_template("talent_tree_vet_pas_016_en",
		-- {"loc_talent_veteran_ranged_power_out_of_melee"}, {"en"},
			-- loc_text("Kill Zone")),
	--[+ Russian +]-- Зона поражение
	-- create_template("talent_tree_vet_pas_016_ru",
		-- {"loc_talent_veteran_ranged_power_out_of_melee"}, {"ru"},
			-- loc_text("Зона поражение")),
	--[+ Traditional Chinese - 殺戮地帶 +]--
	-- create_template("talent_tree_vet_pas_016_tw",
		-- {"loc_talent_veteran_ranged_power_out_of_melee"}, {"zh-tw"},
			-- loc_text("殺戮地帶")),

	--[+ Passive 17 - Opening Salvo +]--
	-- create_template("talent_tree_vet_pas_017_en",
		-- {"loc_talent_veteran_bonus_crit_chance_on_ammo"}, {"en"},
			-- loc_text("Opening Salvo")),
	--[+ Russian +]-- Открывающий залп
	-- create_template("talent_tree_vet_pas_017_ru",
		-- {"loc_talent_veteran_bonus_crit_chance_on_ammo"}, {"ru"},
			-- loc_text("Открывающий залп")),
	--[+ Traditional Chinese - 首輪齊射 +]--
	-- create_template("talent_tree_vet_pas_017_tw",
		-- {"loc_talent_veteran_bonus_crit_chance_on_ammo"}, {"zh-tw"},
			-- loc_text("首輪齊射")),

	--[+ Passive 18 - Field Improvisation +]--
	-- create_template("talent_tree_vet_pas_018_en",
		-- {"loc_talent_veteran_better_deployables"}, {"en"},
			-- loc_text("Field Improvisation")),
	--[+ Russian +]-- Полевая импровизация
	-- create_template("talent_tree_vet_pas_018_ru",
		-- {"loc_talent_veteran_better_deployables"}, {"ru"},
			-- loc_text("Полевая импровизация")),
	--[+ Traditional Chinese - 臨場發揮 +]--
	-- create_template("talent_tree_vet_pas_018_tw",
		-- {"loc_talent_veteran_better_deployables"}, {"zh-tw"},
			-- loc_text("臨場發揮")),

	--[+ Passive 19 - Twinned Blast +]--
	-- create_template("talent_tree_vet_pas_019_en",
		-- {"loc_talent_veteran_extra_grenade_throw_chance"}, {"en"},
			-- loc_text("Twinned Blast")),
	--[+ Russian +]-- Двойной взрыв -- Спаренный взрыв
	create_template("talent_tree_vet_pas_019_ru",
		{"loc_talent_veteran_extra_grenade_throw_chance"}, {"ru"},
			loc_text("Двойной взрыв")),
	--[+ Traditional Chinese - 雙響炮 +]--
	-- create_template("talent_tree_vet_pas_019_tw",
		-- {"loc_talent_veteran_extra_grenade_throw_chance"}, {"zh-tw"},
			-- loc_text("雙響炮")),

	--[+ Passive 20 - Demolition Stockpile +]--
	-- create_template("talent_tree_vet_pas_020_en",
		-- {"loc_talent_ranger_replenish_grenade"}, {"en"},
			-- loc_text("Demolition Stockpile")),
	--[+ Russian +]-- Склад взрывчатки
	-- create_template("talent_tree_vet_pas_020_ru",
		-- {"loc_talent_ranger_replenish_grenade"}, {"ru"},
			-- loc_text("Склад взрывчатки")),
	--[+ Traditional Chinese - 炸藥儲備 +]--
	-- create_template("talent_tree_vet_pas_020_tw",
		-- {"loc_talent_ranger_replenish_grenade"}, {"zh-tw"},
			-- loc_text("炸藥儲備")),

	--[+ Passive 21 - Grenadier +]--
	-- create_template("talent_tree_vet_pas_021_en",
		-- {"loc_talent_veteran_extra_grenade"}, {"en"},
			-- loc_text("Grenadier")),
	--[+ Russian +]-- Гренадёр -- руоф Гренадер
	create_template("talent_tree_vet_pas_021_ru",
		{"loc_talent_veteran_extra_grenade"}, {"ru"},
			loc_text("Гренадёр")),
	--[+ Traditional Chinese - 擲彈兵 +]--
	-- create_template("talent_tree_vet_pas_021_tw",
		-- {"loc_talent_veteran_extra_grenade"}, {"zh-tw"},
			-- loc_text("擲彈兵")),

	--[+ Passive 22 - Leave No One Behind +]--
	-- create_template("talent_tree_vet_pas_022_en",
		-- {"loc_talent_veteran_movement_speed_towards_downed"}, {"en"},
			-- loc_text("Leave No One Behind")),
	--[+ Russian +]-- Никого не оставлять позади
	-- create_template("talent_tree_vet_pas_022_ru",
		-- {"loc_talent_veteran_movement_speed_towards_downed"}, {"ru"},
			-- loc_text("Никого не оставлять позади")),
	--[+ Traditional Chinese - 不拋棄不放棄 +]--
	-- create_template("talent_tree_vet_pas_022_tw",
		-- {"loc_talent_veteran_movement_speed_towards_downed"}, {"zh-tw"},
			-- loc_text("不拋棄不放棄")),

	--[+ Passive 23 - Precision Strikes +]--
	-- create_template("talent_tree_vet_pas_023_en",
		-- {"loc_talent_veteran_increased_weakspot_damage"}, {"en"},
			-- loc_text("Precision Strikes")),
	--[+ Russian +]-- Точные удары
	-- create_template("talent_tree_vet_pas_023_ru",
		-- {"loc_talent_veteran_increased_weakspot_damage"}, {"ru"},
			-- loc_text("Точные удары")),
	--[+ Traditional Chinese - 精準打擊 +]--
	-- create_template("talent_tree_vet_pas_023_tw",
		-- {"loc_talent_veteran_increased_weakspot_damage"}, {"zh-tw"},
			-- loc_text("精準打擊")),

	--[+ Passive 24 - Determined +]--
	-- create_template("talent_tree_vet_pas_024_en",
		-- {"loc_talent_veteran_supression_immunity"}, {"en"},
			-- loc_text("Determined")),
	--[+ Russian +]-- Решительность
	-- create_template("talent_tree_vet_pas_024_ru",
		-- {"loc_talent_veteran_supression_immunity"}, {"ru"},
			-- loc_text("Решительность")),
	--[+ Traditional Chinese - 堅定不移 +]--
	-- create_template("talent_tree_vet_pas_024_tw",
		-- {"loc_talent_veteran_supression_immunity"}, {"zh-tw"},
			-- loc_text("堅定不移")),

	--[+ Passive 25 - Deadshot +]--
	-- create_template("talent_tree_vet_pas_025_en",
		-- {"loc_talent_ranged_ads_drains_stamina_boost"}, {"en"},
			-- loc_text("Deadshot")),
	--[+ Russian +]-- Смертельный выстрел
	-- create_template("talent_tree_vet_pas_025_ru",
		-- {"loc_talent_ranged_ads_drains_stamina_boost"}, {"ru"},
			-- loc_text("Смертельный выстрел")),
	--[+ Traditional Chinese - 死亡射手 +]--
	-- create_template("talent_tree_vet_pas_025_tw",
		-- {"loc_talent_ranged_ads_drains_stamina_boost"}, {"zh-tw"},
			-- loc_text("死亡射手")),

	--[+ Passive 26 - Born Leader +]--
	-- create_template("talent_tree_vet_pas_026_en",
		-- {"loc_talent_veteran_allies_share_toughness"}, {"en"},
			-- loc_text("Born Leader")),
	--[+ Russian +]-- Прирождённый лидер -- руоф Прирожденный лидер
	create_template("talent_tree_vet_pas_026_ru",
		{"loc_talent_veteran_allies_share_toughness"}, {"ru"},
			loc_text("Прирождённый лидер")),
	--[+ Traditional Chinese - 天生領袖 +]--
	-- create_template("talent_tree_vet_pas_026_tw",
		-- {"loc_talent_veteran_allies_share_toughness"}, {"zh-tw"},
			-- loc_text("天生領袖")),

	--[+ Passive 27 - Keep Their Heads Down! +]--
	-- create_template("talent_tree_vet_pas_027_en",
		-- {"loc_talent_veteran_increase_suppression"}, {"en"},
			-- loc_text("Keep Their Heads Down!")),
	--[+ Russian +]-- Не давай им поднять головы! -- руоф Пригнитесь!
	create_template("talent_tree_vet_pas_027_ru",
		{"loc_talent_veteran_increase_suppression"}, {"ru"},
			loc_text("Не давай им поднять головы!")),
	--[+ Traditional Chinese - 讓他們全趴下 +]--
	-- create_template("talent_tree_vet_pas_027_tw",
		-- {"loc_talent_veteran_increase_suppression"}, {"zh-tw"},
			-- loc_text("讓他們全趴下")),

	--[+ Passive 28 - Reciprocity +]--
	-- create_template("talent_tree_vet_pas_028_en",
		-- {"loc_talent_veteran_dodging_grants_crit"}, {"en"},
			-- loc_text("Reciprocity")),
	--[+ Russian +]-- Взаимообмен -- руоф Взаимная выгода
	create_template("talent_tree_vet_pas_028_ru",
		{"loc_talent_veteran_dodging_grants_crit"}, {"ru"},
			loc_text("Взаимообмен")),
	--[+ Traditional Chinese - 互惠互利 +]--
	-- create_template("talent_tree_vet_pas_028_tw",
		-- {"loc_talent_veteran_dodging_grants_crit"}, {"zh-tw"},
			-- loc_text("互惠互利")),

	--[+ Passive 29 - Duck and Dive +]--
	-- create_template("talent_tree_vet_pas_029_en",
		-- {"loc_talent_ranger_stamina_on_ranged_dodge"}, {"en"},
			-- loc_text("Duck and Dive")),
	--[+ Russian +]-- Пригнись и увернись -- руоф Голову в песок
	create_template("talent_tree_vet_pas_029_ru",
		{"loc_talent_ranger_stamina_on_ranged_dodge"}, {"ru"},
			loc_text("Пригнись и увернись")),
	--[+ Traditional Chinese - 靈活應對 +]--
	-- create_template("talent_tree_vet_pas_029_tw",
		-- {"loc_talent_ranger_stamina_on_ranged_dodge"}, {"zh-tw"},
			-- loc_text("靈活應對")),

	--[+ Passive 30 - Fully Loaded +]--
	-- create_template("talent_tree_vet_pas_030_en",
		-- {"loc_talent_veteran_ammo_increase"}, {"en"},
			-- loc_text("Fully Loaded")),
	--[+ Russian +]-- Полный запас -- руоф Полный заряд
	create_template("talent_tree_vet_pas_030_ru",
		{"loc_talent_veteran_ammo_increase"}, {"ru"},
			loc_text("Полный запас")),
	--[+ Traditional Chinese - 全副武裝 +]--
	-- create_template("talent_tree_vet_pas_030_tw",
		-- {"loc_talent_veteran_ammo_increase"}, {"zh-tw"},
			-- loc_text("全副武裝")),

	--[+ Passive 31 - Tactical Awareness +]--
	-- create_template("talent_tree_vet_pas_031_en",
		-- {"loc_talent_veteran_elite_kills_reduce_cooldown"}, {"en"},
			-- loc_text("Tactical Awareness")),
	--[+ Russian +]-- Тактическая осведомлённость -- руоф Тактическая осведомленность
	create_template("talent_tree_vet_pas_031_ru",
		{"loc_talent_veteran_elite_kills_reduce_cooldown"}, {"ru"},
			loc_text("Тактическая осведомлённость")),
	--[+ Traditional Chinese - 戰術意識 +]--
	-- create_template("talent_tree_vet_pas_031_tw",
		-- {"loc_talent_veteran_elite_kills_reduce_cooldown"}, {"zh-tw"},
			-- loc_text("戰術意識")),

	--[+ Passive 32 - Desperado +]--
	-- create_template("talent_tree_vet_pas_032_en",
		-- {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse"}, {"en"},
			-- loc_text("Desperado")),
	--[+ Russian +]-- Сорвиголова
	-- create_template("talent_tree_vet_pas_032_ru",
		-- {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse"}, {"ru"},
			-- loc_text("Сорвиголова")),
	--[+ Traditional Chinese - 亡命之徒 +]--
	-- create_template("talent_tree_vet_pas_032_tw",
		-- {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse"}, {"zh-tw"},
			-- loc_text("亡命之徒")),

	--[+ Passive 33 - Shock Trooper +]--
	-- create_template("talent_tree_vet_pas_033_en",
		-- {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit"}, {"en"},
			-- loc_text("Shock Trooper")),
	--[+ Russian +]-- Штурмовик
	-- create_template("talent_tree_vet_pas_033_ru",
		-- {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit"}, {"ru"},
			-- loc_text("Штурмовик")),
	--[+ Traditional Chinese - 突擊隊 +]--
	-- create_template("talent_tree_vet_pas_033_tw",
		-- {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit"}, {"zh-tw"},
			-- loc_text("突擊隊")),

	--[+ Passive 34 - Superiority Complex +]--
	-- create_template("talent_tree_vet_pas_034_en",
		-- {"loc_talent_veteran_increase_damage_vs_elites"}, {"en"},
			-- loc_text("Superiority Complex")),
	--[+ Russian +]-- Мания величия
	-- create_template("talent_tree_vet_pas_034_ru",
		-- {"loc_talent_veteran_increase_damage_vs_elites"}, {"ru"},
			-- loc_text("Мания величия")),
	--[+ Traditional Chinese - 優越情結 +]--
	-- create_template("talent_tree_vet_pas_034_tw",
		-- {"loc_talent_veteran_increase_damage_vs_elites"}, {"zh-tw"},
			-- loc_text("優越情結")),

	--[+ Passive 35 - Iron Will +]--
	-- create_template("talent_tree_vet_pas_035_en",
		-- {"loc_talent_veteran_block_break_gives_tdr"}, {"en"},
			-- loc_text("Iron Will")),
	--[+ Russian +]-- Железная воля
	-- create_template("talent_tree_vet_pas_035_ru",
		-- {"loc_talent_veteran_block_break_gives_tdr"}, {"ru"},
			-- loc_text("Железная воля")),
	--[+ Traditional Chinese - 鋼鐵意志 +]--
	-- create_template("talent_tree_vet_pas_035_tw",
		-- {"loc_talent_veteran_block_break_gives_tdr"}, {"zh-tw"},
			-- loc_text("鋼鐵意志")),

	--[+ Passive 36 - Demolition Team +]--
	-- create_template("talent_tree_vet_pas_036_en",
		-- {"loc_talent_ranger_grenade_on_elite_kills_coop"}, {"en"},
			-- loc_text("Demolition Team")),
	--[+ Russian +]-- Команда подрывников -- руоф Группа подрыва
	create_template("talent_tree_vet_pas_036_ru",
		{"loc_talent_ranger_grenade_on_elite_kills_coop"}, {"ru"},
			loc_text("Команда подрывников")),
	--[+ Traditional Chinese - 爆破小隊 +]--
	-- create_template("talent_tree_vet_pas_036_tw",
		-- {"loc_talent_ranger_grenade_on_elite_kills_coop"}, {"zh-tw"},
			-- loc_text("爆破小隊")),

	--[+ Passive 37 - Exploit Weakness +]--
	-- create_template("talent_tree_vet_pas_037_en",
		-- {"loc_talent_veteran_crits_rend"}, {"en"},
			-- loc_text("Exploit Weakness")),
	--[+ Russian +]-- Использование слабостей
	-- create_template("talent_tree_vet_pas_037_ru",
		-- {"loc_talent_veteran_crits_rend"}, {"ru"},
			-- loc_text("Использование слабостей")),
	--[+ Traditional Chinese - 趁火打劫 +]--
	-- create_template("talent_tree_vet_pas_037_tw",
		-- {"loc_talent_veteran_crits_rend"}, {"zh-tw"},
			-- loc_text("趁火打劫")),

	--[+ Passive 38 - Onslaught +]--
	-- create_template("talent_tree_vet_pas_038_en",
		-- {"loc_talent_veteran_continous_hits_apply_rending"}, {"en"},
			-- loc_text("Onslaught")),
	--[+ Russian +]-- Натиск
	-- create_template("talent_tree_vet_pas_038_en",
		-- {"loc_talent_veteran_continous_hits_apply_rending"}, {"ru"},
			-- loc_text("Натиск")),
	--[+ Traditional Chinese - 猛攻 +]--
	-- create_template("talent_tree_vet_pas_038_tw",
		-- {"loc_talent_veteran_continous_hits_apply_rending"}, {"zh-tw"},
			-- loc_text("猛攻")),

	--[+ Passive 39 - Trench Fighter Drill +]--
	-- create_template("talent_tree_vet_pas_039_en",
		-- {"loc_talent_veteran_attack_speed"}, {"en"},
			-- loc_text("Trench Fighter Drill")),
	--[+ Russian +]-- Окопные тренировки -- руоф Тренировка в окопах
	create_template("talent_tree_vet_pas_039_ru",
		{"loc_talent_veteran_attack_speed"}, {"ru"},
			loc_text("Окопные тренировки")),
	--[+ Traditional Chinese - 戰壕兵訓練 +]--
	-- create_template("talent_tree_vet_pas_039_tw",
		-- {"loc_talent_veteran_attack_speed"}, {"zh-tw"},
			-- loc_text("戰壕兵訓練")),

	--[+ Passive 40 - Skirmisher +]--
	-- create_template("talent_tree_vet_pas_040_en",
		-- {"loc_talent_veteran_damage_damage_after_sprinting"}, {"en"},
			-- loc_text("Skirmisher")),
	--[+ Russian +]-- Застрельщик
	-- create_template("talent_tree_vet_pas_040_ru",
		-- {"loc_talent_veteran_damage_damage_after_sprinting"}, {"ru"},
			-- loc_text("Застрельщик")),
	--[+ Traditional Chinese - 遊擊者 +]--
	-- create_template("talent_tree_vet_pas_040_tw",
		-- {"loc_talent_veteran_damage_damage_after_sprinting"}, {"zh-tw"},
			-- loc_text("遊擊者")),

	--[+ Passive 41 - Competitive Urge +]--
	-- create_template("talent_tree_vet_pas_041_en",
		-- {"loc_talent_veteran_ally_kills_increase_damage"}, {"en"},
			-- loc_text("Competitive Urge")),
	--[+ Russian +]-- Соревновательный инстинкт -- руоф Состязательный мотив
	create_template("talent_tree_vet_pas_041_ru",
		{"loc_talent_veteran_ally_kills_increase_damage"}, {"ru"},
			loc_text("Соревновательный инстинкт")),
	--[+ Traditional Chinese - 求勝心 +]--
	-- create_template("talent_tree_vet_pas_041_tw",
		-- {"loc_talent_veteran_ally_kills_increase_damage"}, {"zh-tw"},
			-- loc_text("求勝心")),

	--[+ Passive 42 - Rending Strikes +]--
	-- create_template("talent_tree_vet_pas_042_en",
		-- {"loc_talent_veteran_rending_bonus"}, {"en"},
			-- loc_text("Rending Strikes")),
	--[+ Russian +]-- Пробивающие удары -- руоф Разрушительные удары
	create_template("talent_tree_vet_pas_042_ru",
		{"loc_talent_veteran_rending_bonus"}, {"ru"},
			loc_text("Пробивающие удары")),
	--[+ Traditional Chinese - 裂擊 +]--
	-- create_template("talent_tree_vet_pas_042_tw",
		-- {"loc_talent_veteran_rending_bonus"}, {"zh-tw"},
			-- loc_text("裂擊")),

	--[+ Passive 43 - Bring it Down! +]--
	-- create_template("talent_tree_vet_pas_043_en",
		-- {"loc_talent_veteran_big_game_hunter"}, {"en"},
			-- loc_text("Bring it Down!")),
	--[+ Russian +]-- Убей их! -- руоф Убивай!
	create_template("talent_tree_vet_pas_043_ru",
		{"loc_talent_veteran_big_game_hunter"}, {"ru"},
			loc_text("Убей их!")),
	--[+ Traditional Chinese - 幹掉它! +]--
	-- create_template("talent_tree_vet_pas_043_tw",
		-- {"loc_talent_veteran_big_game_hunter"}, {"zh-tw"},
			-- loc_text("幹掉它!")),

--[+ ++OGRYN - ОГРИН - 歐格林 ++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ Blitz 0 - Big Box of Hurt +]--
	-- create_template("talent_tree_ogr_blitz0_000_en",
		-- {"loc_ability_ogryn_grenade_box"}, {"en"},
			-- loc_text("Big Box of Hurt")),
	--[+ Russian +]-- Большая коробка боли -- руоф Ящик, полный боли
	create_template("talent_tree_ogr_blitz0_000_ru",
		{"loc_ability_ogryn_grenade_box"}, {"ru"},
			loc_text("Большая коробка боли")),
	--[+ Traditional Chinese - 巨量傷害盒 +]--
	-- create_template("talent_tree_ogr_blitz0_000_tw",
		-- {"loc_ability_ogryn_grenade_box"}, {"zh-tw"},
			-- loc_text("巨量傷害盒")),

	--[+ Blitz 1 - Big Friendly Rock +]--
	-- create_template("talent_tree_ogr_blitz1_000_en",
		-- {"loc_ability_ogryn_friend_rock"}, {"en"},
			-- loc_text("Big Friendly Rock")),
	--[+ Russian +]-- Большой дружелюбный валун
	-- create_template("talent_tree_ogr_blitz1_000_ru",
		-- {"loc_ability_ogryn_friend_rock"}, {"ru"},
			-- loc_text("Большой дружелюбный валун")),
	--[+ Traditional Chinese - 投石問路 +]--
	-- create_template("talent_tree_ogr_blitz1_000_tw",
		-- {"loc_ability_ogryn_friend_rock"}, {"zh-tw"},
			-- loc_text("投石問路")),

	--[+ Blitz 2 - Bombs Away! +]--
	-- create_template("talent_tree_ogr_blitz2_000_en",
		-- {"loc_talent_bonebreaker_grenade_super_armor_explosion"}, {"en"},
			-- loc_text("Bombs Away!")),
	--[+ Russian +]-- Бросай бомбы! -- руоф Кидаю бомбу!
	create_template("talent_tree_ogr_blitz2_000_ru",
		{"loc_talent_bonebreaker_grenade_super_armor_explosion"}, {"ru"},
			loc_text("Бросай бомбы!")),
	--[+ Traditional Chinese - 投彈完畢! +]--
	-- create_template("talent_tree_ogr_blitz2_000_tw",
		-- {"loc_talent_bonebreaker_grenade_super_armor_explosion"}, {"zh-tw"},
			-- loc_text("投彈完畢!")),

	--[+ Blitz 3 - Frag Bomb +]--
	-- create_template("talent_tree_ogr_blitz3_000_en",
		-- {"loc_ability_ogryn_grenade_demolition"}, {"en"},
			-- loc_text("Frag Bomb")),
	--[+ Russian +]-- Фраг-бомба -- руоф Осколочная бомба
	create_template("talent_tree_ogr_blitz3_000_ru",
		{"loc_ability_ogryn_grenade_demolition"}, {"ru"},
			loc_text("Фраг-бомба")),
	--[+ Traditional Chinese - 破片炸彈 +]--
	-- create_template("talent_tree_ogr_blitz3_000_tw",
		-- {"loc_ability_ogryn_grenade_demolition"}, {"zh-tw"},
			-- loc_text("破片炸彈")),

--[+ +AURA - АУРА+ +]--
	--[+ Aura 0 - Intimidating Presence +]--
	-- create_template("talent_tree_ogr_aura0_000_en",
		-- {"loc_talent_ogryn_2_base_4"}, {"en"},
			-- loc_text("Intimidating Presence")),
	--[+ Russian +]-- Устрашающее присутствие -- руоф Пугающее присутствие
	create_template("talent_tree_ogr_aura0_000_ru",
		{"loc_talent_ogryn_2_base_4"}, {"ru"},
			loc_text("Устрашающее присутствие")),
	--[+ Traditional Chinese - 威嚇氣場 +]--
	-- create_template("talent_tree_ogr_aura0_000_tw",
		-- {"loc_talent_ogryn_2_base_4"}, {"zh-tw"},
			-- loc_text("威嚇氣場")),

	--[+ Aura 1 - Bonebreaker's Aura +]--
	-- create_template("talent_tree_ogr_aura1_000_en",
		-- {"loc_talent_damage_aura"}, {"en"},
			-- loc_text("Bonebreaker's Aura")),
	--[+ Russian +]-- Аура костолома
	-- create_template("talent_tree_ogr_aura1_000_ru",
		-- {"loc_talent_damage_aura"}, {"ru"},
			-- loc_text("Аура костолома")),
	--[+ Traditional Chinese - 破骨者之環 +]--
	-- create_template("talent_tree_ogr_aura1_000_tw",
		-- {"loc_talent_damage_aura"}, {"zh-tw"},
			-- loc_text("破骨者之環")),

	--[+ Aura 2 - Stay Close! +]--
	-- create_template("talent_tree_ogr_aura2_000_en",
		-- {"loc_talent_ogryn_toughness_regen_aura"}, {"en"},
			-- loc_text("Stay Close!")),
	--[+ Russian +]-- Держись рядом! -- руоф Не расходимся!
	create_template("talent_tree_ogr_aura2_000_ru",
		{"loc_talent_ogryn_toughness_regen_aura"}, {"ru"},
			loc_text("Держись рядом!")),
	--[+ Traditional Chinese - 跟緊我! +]--
	-- create_template("talent_tree_ogr_aura2_000_tw",
		-- {"loc_talent_ogryn_toughness_regen_aura"}, {"zh-tw"},
			-- loc_text("跟緊我!")),

	--[+ Aura 3 - Coward Culling +]--
	-- create_template("talent_tree_ogr_aura3_000_en",
		-- {"loc_talent_ogryn_damage_vs_suppressed"}, {"en"},
			-- loc_text("Coward Culling")),
	--[+ Russian +]-- Отсев трусливых -- руоф Трусливые отбросы
	create_template("talent_tree_ogr_aura3_000_ru",
		{"loc_talent_ogryn_damage_vs_suppressed"}, {"ru"},
			loc_text("Отсев трусливых")),
	--[+ Traditional Chinese - 優勝劣汰 +]--
	-- create_template("talent_tree_ogr_aura3_000_tw",
		-- {"loc_talent_ogryn_damage_vs_suppressed"}, {"zh-tw"},
			-- loc_text("優勝劣汰")),

--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
	--[+ Ability 0 - Bull Rush +]--
	-- create_template("talent_tree_ogr_abil0_000_en",
		-- {"loc_ability_ogryn_charge"}, {"en"},
			-- loc_text("Bull Rush")),
	--[+ Russian +]-- Рывок быка -- руоф Бычий натиск
	create_template("talent_tree_ogr_abil0_000_ru",
		{"loc_ability_ogryn_charge"}, {"ru"},
			loc_text("Рывок быка")),
	--[+ Traditional Chinese - 蠻牛衝撞 +]--
	-- create_template("talent_tree_ogr_abil0_000_tw",
		-- {"loc_ability_ogryn_charge"}, {"zh-tw"},
			-- loc_text("蠻牛衝撞")),

	--[+ Ability 1 - Indomitable +]--
	-- create_template("talent_tree_ogr_abil1_000_en",
		-- {"loc_talent_ogryn_bull_rush_distance"}, {"en"},
			-- loc_text("Indomitable")),
	--[+ Russian +]-- Неукротимый -- руоф Неукротимость
	create_template("talent_tree_ogr_abil1_000_ru",
		{"loc_talent_ogryn_bull_rush_distance"}, {"ru"},
			loc_text("Неукротимый")),
	--[+ Traditional Chinese - 不屈不撓 +]--
	-- create_template("talent_tree_ogr_abil1_000_tw",
		-- {"loc_talent_ogryn_bull_rush_distance"}, {"zh-tw"},
			-- loc_text("不屈不撓")),

	--[+ Ability 1-1 - Stomping Boots +]--
	-- create_template("talent_tree_ogr_abil1_001_en",
		-- {"loc_talent_ogryn_toughness_on_bull_rush"}, {"en"},
			-- loc_text("Stomping Boots")),
	--[+ Russian +]-- Топающие сапоги -- руоф Сокрушающий топот
	create_template("talent_tree_ogr_abil1_001_ru",
		{"loc_talent_ogryn_toughness_on_bull_rush"}, {"ru"},
			loc_text("Топающие сапоги")),
	--[+ Traditional Chinese - 跺殺之靴 +]--
	-- create_template("talent_tree_ogr_abil1_001_tw",
		-- {"loc_talent_ogryn_toughness_on_bull_rush"}, {"zh-tw"},
			-- loc_text("跺殺之靴")),

	--[+ Ability 1-2 - Trample +]--
	-- create_template("talent_tree_ogr_abil1_002_en",
		-- {"loc_talent_ogryn_ability_charge_trample"}, {"en"},
			-- loc_text("Trample")),
	--[+ Russian +]-- Топот -- руоф Топанье
	create_template("talent_tree_ogr_abil1_002_ru",
		{"loc_talent_ogryn_ability_charge_trample"}, {"ru"},
			loc_text("Топот")),
	--[+ Traditional Chinese - 踐踏 +]--
	-- create_template("talent_tree_ogr_abil1_002_tw",
		-- {"loc_talent_ogryn_ability_charge_trample"}, {"zh-tw"},
			-- loc_text("踐踏")),

	--[+ Ability 1-3 - Pulverise +]--
	-- create_template("talent_tree_ogr_abil1_003_en",
		-- {"loc_talent_ogryn_bleed_on_bull_rush"}, {"en"},
			-- loc_text("Pulverise")),
	--[+ Russian +]-- Разбрызгивание -- Крошилово
	create_template("talent_tree_ogr_abil1_003_ru",
		{"loc_talent_ogryn_bleed_on_bull_rush"}, {"ru"},
			loc_text("Разбрызгивание")),
	--[+ Traditional Chinese - 粉碎 +]--
	-- create_template("talent_tree_ogr_abil1_003_tw",
		-- {"loc_talent_ogryn_bleed_on_bull_rush"}, {"zh-tw"},
			-- loc_text("粉碎")),

	--[+ Ability 2 - Loyal Protector +]--
	-- create_template("talent_tree_ogr_abil2_000_en",
		-- {"loc_ability_ogryn_taunt_shout"}, {"en"},
			-- loc_text("Loyal Protector")),
	--[+ Russian +]-- Верный защитник
	-- create_template("talent_tree_ogr_abil2_000_ru",
		-- {"loc_ability_ogryn_taunt_shout"}, {"ru"},
			-- loc_text("Верный защитник")),
	--[+ Traditional Chinese - 忠誠守護者 +]--
	-- create_template("talent_tree_ogr_abil2_000_tw",
		-- {"loc_ability_ogryn_taunt_shout"}, {"zh-tw"},
			-- loc_text("忠誠守護者")),

	--[+ Ability 2-1 - Valuable Distraction +]--
	-- create_template("talent_tree_ogr_abil2_001_en",
		-- {"loc_talent_ogryn_taunt_damage_taken_increase"}, {"en"},
			-- loc_text("Valuable Distraction")),
	--[+ Russian +]-- Отвлекающий манёвр -- руоф Ценное отвлечение
	create_template("talent_tree_ogr_abil2_001_ru",
		{"loc_talent_ogryn_taunt_damage_taken_increase"}, {"ru"},
			loc_text("Отвлекающий манёвр")),
	--[+ Traditional Chinese - 重要干擾 +]--
	-- create_template("talent_tree_ogr_abil2_001_tw",
		-- {"loc_talent_ogryn_taunt_damage_taken_increase"}, {"zh-tw"},
			-- loc_text("重要干擾")),

	--[+ Ability 2-2 - Go Again +]--
	-- create_template("talent_tree_ogr_abil2_002_en",
		-- {"loc_talent_ogryn_taunt_stagger_cd"}, {"en"},
			-- loc_text("Go Again!")),
	--[+ Russian +]-- Давай по новой! -- Еще раз!
	create_template("talent_tree_ogr_abil2_002_ru",
		{"loc_talent_ogryn_taunt_stagger_cd"}, {"ru"},
			loc_text("Давай по новой!")),
	--[+ Traditional Chinese - 再來! +]--
	-- create_template("talent_tree_ogr_abil2_002_tw",
		-- {"loc_talent_ogryn_taunt_stagger_cd"}, {"zh-tw"},
			-- loc_text("再來!")),

	--[+ Ability 2-3 - Big Lungs +]--
	-- create_template("talent_tree_ogr_abil2_003_en",
		-- {"loc_talent_ogryn_taunt_radius_increase"}, {"en"},
			-- loc_text("Big Lungs")),
	--[+ Russian +]-- Громогласный -- руоф Мощные легкие
	create_template("talent_tree_ogr_abil2_003_ru",
		{"loc_talent_ogryn_taunt_radius_increase"}, {"ru"},
			loc_text("Громогласный")),
	--[+ Traditional Chinese - 強力肺活 +]--
	-- create_template("talent_tree_ogr_abil2_003_tw",
		-- {"loc_talent_ogryn_taunt_radius_increase"}, {"zh-tw"},
			-- loc_text("強力肺活")),

	--[+ Ability 3 - Point-Blank Barrage +]--
	-- create_template("talent_tree_ogr_abil3_000_en",
		-- {"loc_talent_ogryn_combat_ability_special_ammo"}, {"en"},
			-- loc_text("Point-Blank Barrage")),
	--[+ Russian +]-- Беспощадный обстрел в упор -- руоф Решительный натиск
	create_template("talent_tree_ogr_abil3_000_ru",
		{"loc_talent_ogryn_combat_ability_special_ammo"}, {"ru"},
			loc_text("Беспощадный обстрел в упор")),
	--[+ Traditional Chinese - 貼身火力 +]--
	-- create_template("talent_tree_ogr_abil3_000_tw",
		-- {"loc_talent_ogryn_combat_ability_special_ammo"}, {"zh-tw"},
			-- loc_text("貼身火力")),

	--[+ Ability 3-1 - Bullet Bravado +]--
	-- create_template("talent_tree_ogr_abil3_001_en",
		-- {"loc_talent_ogryn_special_ammo_toughness"}, {"en"},
			-- loc_text("Bullet Bravado")),
	--[+ Russian +]-- Бравада стрелка -- руоф Лихая пуля
	create_template("talent_tree_ogr_abil3_001_ru",
		{"loc_talent_ogryn_special_ammo_toughness"}, {"ru"},
			loc_text("Бравада стрелка")),
	--[+ Traditional Chinese - 壯膽子彈 +]--
	-- create_template("talent_tree_ogr_abil3_001_tw",
		-- {"loc_talent_ogryn_special_ammo_toughness"}, {"zh-tw"},
			-- loc_text("壯膽子彈")),

	--[+ Ability 3-2 - Hail of Fire +]--
	-- create_template("talent_tree_ogr_abil3_002_en",
		-- {"loc_talent_ogryn_special_ammo_armor_pen"}, {"en"},
			-- loc_text("Hail of Fire")),
	--[+ Russian +]-- Град огня -- руоф Слава пламени
	create_template("talent_tree_ogr_abil3_002_ru",
		{"loc_talent_ogryn_special_ammo_armor_pen"}, {"ru"},
			loc_text("Град огня")),
	--[+ Traditional Chinese - 槍林彈雨 +]--
	-- create_template("talent_tree_ogr_abil3_002_tw",
		-- {"loc_talent_ogryn_special_ammo_armor_pen"}, {"zh-tw"},
			-- loc_text("槍林彈雨")),

	--[+ Ability 3-3 - Light 'em Up +]--
	-- create_template("talent_tree_ogr_abil3_003_en",
		-- {"loc_talent_ogryn_special_ammo_fire_shots"}, {"en"},
			-- loc_text("Light 'em Up")),
	--[+ Russian +]-- Задай жару -- руоф Зададим жару
	create_template("talent_tree_ogr_abil3_003_ru",
		{"loc_talent_ogryn_special_ammo_fire_shots"}, {"ru"},
			loc_text("Задай жару")),
	--[+ Traditional Chinese - 集火射擊 +]--
	-- create_template("talent_tree_ogr_abil3_003_tw",
		-- {"loc_talent_ogryn_special_ammo_fire_shots"}, {"zh-tw"},
			-- loc_text("集火射擊")),

--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
	--[+ Keystone 1 - Heavy Hitter +]--
	-- create_template("talent_tree_ogr_keys1_000_en",
		-- {"loc_talent_ogryn_passive_heavy_hitter"}, {"en"},
			-- loc_text("Heavy Hitter")),
	--[+ Russian +]-- Тяжёлый нападающий -- руоф Тяжеловес
	create_template("talent_tree_ogr_keys1_000_ru",
		{"loc_talent_ogryn_passive_heavy_hitter"}, {"ru"},
			loc_text("Тяжёлый нападающий")),
	--[+ Traditional Chinese - 重拳出擊 +]--
	-- create_template("talent_tree_ogr_keys1_000_tw",
		-- {"loc_talent_ogryn_passive_heavy_hitter"}, {"zh-tw"},
			-- loc_text("重拳出擊")),

	--[+ Keystone 1-1 - Just Getting Started +]--
	-- create_template("talent_tree_ogr_keys1_001_en",
		-- {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed"}, {"en"},
			-- loc_text("Just Getting Started")),
	--[+ Russian +]-- Я только начал  -- руоф Лишь начало!
	create_template("talent_tree_ogr_keys1_001_ru",
		{"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed"}, {"ru"},
			loc_text("Я только начал")),
	--[+ Traditional Chinese - 熱身完畢 +]--
	-- create_template("talent_tree_ogr_keys1_001_tw",
		-- {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed"}, {"zh-tw"},
			-- loc_text("熱身完畢")),

	--[+ Keystone 1-2 - Unstoppable +]--
	-- create_template("talent_tree_ogr_keys1_002_en",
		-- {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness"}, {"en"},
			-- loc_text("Unstoppable")),
	--[+ Russian +]-- Неудержимый -- руоф Неудержимость
	create_template("talent_tree_ogr_keys1_002_ru",
		{"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness"}, {"ru"},
			loc_text("Неудержимый")),
	--[+ Traditional Chinese - 越戰越勇 +]--
	-- create_template("talent_tree_ogr_keys1_002_tw",
		-- {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness"}, {"zh-tw"},
			-- loc_text("越戰越勇")),

	--[+ Keystone 1-3 - Brutish Momentum +]--
	-- create_template("talent_tree_ogr_keys1_003_en",
		-- {"loc_talent_ogryn_heavy_hitter_light_attacks_refresh"}, {"en"},
			-- loc_text("Brutish Momentum")),
	--[+ Russian +]-- Брутальный моментум -- руоф Зверский моментум
	create_template("talent_tree_ogr_keys1_003_ru",
		{"loc_talent_ogryn_heavy_hitter_light_attacks_refresh"}, {"ru"},
			loc_text("Брутальный моментум")),
	--[+ Traditional Chinese - 兇蠻打擊 +]--
	-- create_template("talent_tree_ogr_keys1_003_tw",
		-- {"loc_talent_ogryn_heavy_hitter_light_attacks_refresh"}, {"zh-tw"},
			-- loc_text("兇蠻打擊")),

	--[+ Keystone 2 - Feel No Pain +]--
	-- create_template("talent_tree_ogr_keys2_000_en",
		-- {"loc_talent_ogryn_carapace_armor"}, {"en"},
			-- loc_text("Feel No Pain")),
	--[+ Russian +]-- Неболит
	-- create_template("talent_tree_ogr_keys2_000_ru",
		-- {"loc_talent_ogryn_carapace_armor"}, {"ru"},
			-- loc_text("Неболит")),
	--[+ Traditional Chinese - 麻木 +]--
	-- create_template("talent_tree_ogr_keys2_000_tw",
		-- {"loc_talent_ogryn_carapace_armor"}, {"zh-tw"},
			-- loc_text("麻木")),

	--[+ Keystone 2-1 - Pained Outburst +]--
	-- create_template("talent_tree_ogr_keys2_001_en",
		-- {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks"}, {"en"},
			-- loc_text("Pained Outburst")),
	-- [+ Russian +]-- Вспышка боли
	-- create_template("talent_tree_ogr_keys2_001_ru",
		-- {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks"}, {"ru"},
			-- loc_text("Вспышка боли")),
	--[+ Traditional Chinese - 痛楚爆發 +]--
	-- create_template("talent_tree_ogr_keys2_001_tw",
		-- {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks"}, {"zh-tw"},
			-- loc_text("痛楚爆發")),

	--[+ Keystone 2-2 - Strongest! +]--
	-- create_template("talent_tree_ogr_keys2_002_en",
		-- {"loc_talent_ogryn_carapace_armor_add_stack_on_push"}, {"en"},
			-- loc_text("Strongest!")),
	--[+ Russian +]-- Сильнейший!
	-- create_template("talent_tree_ogr_keys2_002_ru",
		-- {"loc_talent_ogryn_carapace_armor_add_stack_on_push"}, {"ru"},
			-- loc_text("Сильнейший!")),
	--[+ Traditional Chinese - 最強壯! +]--
	-- create_template("talent_tree_ogr_keys2_002_tw",
		-- {"loc_talent_ogryn_carapace_armor_add_stack_on_push"}, {"zh-tw"},
			-- loc_text("最強壯!")),

	--[+ Keystone 2-3 - Toughest! +]--
	-- create_template("talent_tree_ogr_keys2_003_en",
		-- {"loc_talent_ogryn_carapace_armor_more_toughness"}, {"en"},
			-- loc_text("Toughest!")),
	--[+ Russian +]-- Стойкий! -- руоф Самый выносливый!
	create_template("talent_tree_ogr_keys2_003_ru",
		{"loc_talent_ogryn_carapace_armor_more_toughness"}, {"ru"},
			loc_text("Стойкий!")),
	--[+ Traditional Chinese - 最堅韌! +]--
	-- create_template("talent_tree_ogr_keys2_003_tw",
		-- {"loc_talent_ogryn_carapace_armor_more_toughness"}, {"zh-tw"},
			-- loc_text("最堅韌!")),

	--[+ Keystone 3 - Burst Limiter Override +]--
	-- create_template("talent_tree_ogr_keys3_000_en",
		-- {"loc_talent_ogryn_chance_to_not_consume_ammo"}, {"en"},
			-- loc_text("Burst Limiter Override")),
	--[+ Russian +]-- Обход ограничителя очереди -- руоф Взлом ограничителя взрыва
	create_template("talent_tree_ogr_keys3_000_ru",
		{"loc_talent_ogryn_chance_to_not_consume_ammo"}, {"ru"},
			loc_text("Обход ограничителя очереди")),
	--[+ Traditional Chinese - 爆限超載 +]--
	-- create_template("talent_tree_ogr_keys3_000_tw",
		-- {"loc_talent_ogryn_chance_to_not_consume_ammo"}, {"zh-tw"},
			-- loc_text("爆限超載")),

	--[+ Keystone 3-1 - Maximum Firepower +]--
	-- create_template("talent_tree_ogr_keys3_001_en",
		-- {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction"}, {"en"},
			-- loc_text("Maximum Firepower")),
	--[+ Russian +]-- Максимальная огневая мощь
	-- create_template("talent_tree_ogr_keys3_001_ru",
		-- {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction"}, {"ru"},
			-- loc_text("Максимальная огневая мощь")),
	--[+ Traditional Chinese - 最大火力 +]--
	-- create_template("talent_tree_ogr_keys3_001_tw",
		-- {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction"}, {"zh-tw"},
			-- loc_text("最大火力")),

	--[+ Keystone 3-2 - Good Shootin' +]--
	-- create_template("talent_tree_ogr_keys3_002_en",
		-- {"loc_talent_ogryn_critical_leadbelcher"}, {"en"},
			-- loc_text("Good Shootin'")),
	--[+ Russian +]-- Хорошая стрельба -- руоф Хороший выстрел
	create_template("talent_tree_ogr_keys3_002_ru",
		{"loc_talent_ogryn_critical_leadbelcher"}, {"ru"},
			loc_text("Хорошая стрельба")),
	--[+ Traditional Chinese - 好槍法 +]--
	-- create_template("talent_tree_ogr_keys3_002_tw",
		-- {"loc_talent_ogryn_critical_leadbelcher"}, {"zh-tw"},
			-- loc_text("好槍法")),

	--[+ Keystone 3-3 - More Burst Limiter Overrides! +]--
	-- create_template("talent_tree_ogr_keys3_003_en",
		-- {"loc_talent_ogryn_increased_leadbelcher_chance"}, {"en"},
			-- loc_text("More Burst Limiter Overrides!")),
	--[+ Russian +]-- Ещё больший обход ограничителя очереди! -- руоф Больше взлома ограничителя взрыва!
	create_template("talent_tree_ogr_keys3_003_ru",
		{"loc_talent_ogryn_increased_leadbelcher_chance"}, {"ru"},
			loc_text("Ещё больший обход ограничителя очереди!")),
	--[+ Traditional Chinese - 爆限大超載! +]--
	-- create_template("talent_tree_ogr_keys3_003_tw",
		-- {"loc_talent_ogryn_increased_leadbelcher_chance"}, {"zh-tw"},
			-- loc_text("爆限大超載!")),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Furious +]--
	-- create_template("talent_tree_ogr_pas_001_en",
		-- {"loc_talent_ogryn_damage_per_enemy_hit_previous"}, {"en"},
			-- loc_text("Furious")),
	--[+ Russian +]-- Разъярённый -- руоф Разъяренный
	create_template("talent_tree_ogr_pas_001_ru",
		{"loc_talent_ogryn_damage_per_enemy_hit_previous"}, {"ru"},
			loc_text("Разъярённый")),
	--[+ Traditional Chinese - 怒不可遏 +]--
	-- create_template("talent_tree_ogr_pas_001_tw",
		-- {"loc_talent_ogryn_damage_per_enemy_hit_previous"}, {"zh-tw"},
			-- loc_text("怒不可遏")),

	--[+ Passive 2 - Reloaded and Ready +]--
	-- create_template("talent_tree_ogr_pas_002_en",
		-- {"loc_talent_ogryn_ranged_damage_on_reload"}, {"en"},
			-- loc_text("Reloaded and Ready")),
	--[+ Russian +]-- Перезаряжен и готов -- руоф Заряжен и готов
	create_template("talent_tree_ogr_pas_002_ru",
		{"loc_talent_ogryn_ranged_damage_on_reload"}, {"ru"},
			loc_text("Перезаряжен и готов")),
	--[+ Traditional Chinese - 換彈完畢 +]--
	-- create_template("talent_tree_ogr_pas_002_tw",
		-- {"loc_talent_ogryn_ranged_damage_on_reload"}, {"zh-tw"},
			-- loc_text("換彈完畢")),

	--[+ Passive 3 - The Best Defence +]--
	-- create_template("talent_tree_ogr_pas_003_en",
		-- {"loc_talent_ogryn_toughness_on_multiple"}, {"en"},
			-- loc_text("The Best Defence")),
	--[+ Russian +]-- Лучшая защита
	-- create_template("talent_tree_ogr_pas_003_ru",
		-- {"loc_talent_ogryn_toughness_on_multiple"}, {"ru"},
			-- loc_text("Лучшая защита")),
	--[+ Traditional Chinese - 最好的防禦 +]--
	-- create_template("talent_tree_ogr_pas_003_tw",
		-- {"loc_talent_ogryn_toughness_on_multiple"}, {"zh-tw"},
			-- loc_text("最好的防禦")),

	--[+ Passive 4 - Heavyweight +]--
	-- create_template("talent_tree_ogr_pas_004_en",
		-- {"loc_talent_ogryn_ogryn_fighter"}, {"en"},
			-- loc_text("Heavyweight")),
	--[+ Russian +]-- Тяжеловес
	-- create_template("talent_tree_ogr_pas_004_ru",
		-- {"loc_talent_ogryn_ogryn_fighter"}, {"ru"},
			-- loc_text("Тяжеловес")),
	--[+ Traditional Chinese - 重量級 +]--
	-- create_template("talent_tree_ogr_pas_004_tw",
		-- {"loc_talent_ogryn_ogryn_fighter"}, {"zh-tw"},
			-- loc_text("重量級")),

	--[+ Passive 5 - Steady Grip +]--
	-- create_template("talent_tree_ogr_pas_005_en",
		-- {"loc_talent_ogryn_toughness_regen_while_bracing"}, {"en"},
			-- loc_text("Steady Grip")),
	--[+ Russian +]-- Крепкий хват -- руоф Крепкая хватка
	create_template("talent_tree_ogr_pas_005_ru",
		{"loc_talent_ogryn_toughness_regen_while_bracing"}, {"ru"},
			loc_text("Крепкий хват")),
	--[+ Traditional Chinese - 穩固握持 +]--
	-- create_template("talent_tree_ogr_pas_005_tw",
		-- {"loc_talent_ogryn_toughness_regen_while_bracing"}, {"zh-tw"},
			-- loc_text("穩固握持")),

	--[+ Passive 6 - Smash 'Em! +]--
	-- create_template("talent_tree_ogr_pas_006_en",
		-- {"loc_talent_ogryn_toughness_on_single_heavy"}, {"en"},
			-- loc_text("Smash 'Em!")),
	--[+ Russian +]-- Круши их! -- руоф Вдарь им!
	create_template("talent_tree_ogr_pas_006_ru",
		{"loc_talent_ogryn_toughness_on_single_heavy"}, {"ru"},
			loc_text("Круши их!")),
	--[+ Traditional Chinese - 碾碎它們! +]--
	-- create_template("talent_tree_ogr_pas_006_tw",
		-- {"loc_talent_ogryn_toughness_on_single_heavy"}, {"zh-tw"},
			-- loc_text("碾碎它們!")),

	--[+ Passive 7 - Lynchpin +]--
	-- create_template("talent_tree_ogr_pas_007_en",
		-- {"loc_talent_ogryn_coherency_toughness_increase"}, {"en"},
			-- loc_text("Lynchpin")),
	--[+ Russian +]-- Опора -- руоф Переломный момент
	create_template("talent_tree_ogr_pas_007_en",
		{"loc_talent_ogryn_coherency_toughness_increase"}, {"ru"},
			loc_text("Опора")),
	--[+ Traditional Chinese - 關鍵人物 +]--
	-- create_template("talent_tree_ogr_pas_007_tw",
		-- {"loc_talent_ogryn_coherency_toughness_increase"}, {"zh-tw"},
			-- loc_text("關鍵人物")),

	--[+ Passive 8 - Slam +]--
	-- create_template("talent_tree_ogr_pas_008_en",
		-- {"loc_talent_ogryn_melee_stagger"}, {"en"},
			-- loc_text("Slam")),
	--[+ Russian +]-- Оплеуха -- руоф Хлопок
	create_template("talent_tree_ogr_pas_008_ru",
		{"loc_talent_ogryn_melee_stagger"}, {"ru"},
			loc_text("Оплеуха")),
	--[+ Traditional Chinese - 猛擊 +]--
	-- create_template("talent_tree_ogr_pas_008_tw",
		-- {"loc_talent_ogryn_melee_stagger"}, {"zh-tw"},
			-- loc_text("猛擊")),

	--[+ Passive 9 - Soften Them Up +]--
	-- create_template("talent_tree_ogr_pas_009_en",
		-- {"loc_talent_ogryn_targets_recieve_damage_increase_debuff"}, {"en"},
			-- loc_text("Soften Them Up")),
	--[+ Russian +]-- Ослабь их -- руоф Упокоить их
	create_template("talent_tree_ogr_pas_009_ru",
		{"loc_talent_ogryn_targets_recieve_damage_increase_debuff"}, {"ru"},
			loc_text("Ослабь их")),
	--[+ Traditional Chinese - 削弱敵人 +]--
	-- create_template("talent_tree_ogr_pas_009_tw",
		-- {"loc_talent_ogryn_targets_recieve_damage_increase_debuff"}, {"zh-tw"},
			-- loc_text("削弱敵人")),

	--[+ Passive 10 - Crunch! +]--
	-- create_template("talent_tree_ogr_pas_010_en",
		-- {"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger"}, {"en"},
			-- loc_text("Crunch!")),
	--[+ Russian +]-- Хрусь! -- руоф Хрясь!
	create_template("talent_tree_ogr_pas_010_en",
		{"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger"}, {"ru"},
			loc_text("Хрусь!")),
	--[+ Traditional Chinese - 嘎嘎! +]--
	-- create_template("talent_tree_ogr_pas_010_tw",
		-- {"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger"}, {"zh-tw"},
			-- loc_text("嘎嘎!")),

	--[+ Passive 11 - Batter +]--
	-- create_template("talent_tree_ogr_pas_011_en",
		-- {"loc_talent_ogryn_bleed_on_multiple_hit"}, {"en"},
			-- loc_text("Batter")),
	--[+ Russian +]-- Месиво
	create_template("talent_tree_ogr_pas_011_ru",
		{"loc_talent_ogryn_bleed_on_multiple_hit"}, {"ru"},
			loc_text("Месиво")),
	--[+ Traditional Chinese - 重毆 +]--
	-- create_template("talent_tree_ogr_pas_011_tw",
		-- {"loc_talent_ogryn_bleed_on_multiple_hit"}, {"zh-tw"},
			-- loc_text("重毆")),

	--[+ Passive 12 - Pacemaker +]--
	-- create_template("talent_tree_ogr_pas_012_en",
		-- {"loc_talent_ogryn_reload_speed_on_multiple_hits"}, {"en"},
			-- loc_text("Pacemaker")),
	--[+ Russian +]-- Задающий ритм -- руоф Водитель ритма
	create_template("talent_tree_ogr_pas_012_ru",
		{"loc_talent_ogryn_reload_speed_on_multiple_hits"}, {"ru"},
			loc_text("Задающий ритм")),
	--[+ Traditional Chinese - 領跑者 +]--
	-- create_template("talent_tree_ogr_pas_012_tw",
		-- {"loc_talent_ogryn_reload_speed_on_multiple_hits"}, {"zh-tw"},
			-- loc_text("領跑者")),

	--[+ Passive 13 - Ammo Stash +]--
	-- create_template("talent_tree_ogr_pas_013_en",
		-- {"loc_talent_ogryn_increased_ammo"}, {"en"},
			-- loc_text("Ammo Stash")),
	--[+ Russian +]-- Схрон патронов
	create_template("talent_tree_ogr_pas_013_ru",
		{"loc_talent_ogryn_increased_ammo"}, {"ru"},
			loc_text("Схрон патронов")),
	--[+ Traditional Chinese - 彈藥儲存包 +]--
	-- create_template("talent_tree_ogr_pas_013_tw",
		-- {"loc_talent_ogryn_increased_ammo"}, {"zh-tw"},
			-- loc_text("彈藥儲存包")),

	--[+ Passive 14 - Hard Knocks +]--
	-- create_template("talent_tree_ogr_pas_014_en",
		-- {"loc_talent_ogryn_big_bully_heavy_hits"}, {"en"},
			-- loc_text("Hard Knocks")),
	--[+ Russian +]-- Тяжёлые удары -- руоф Мощные удары
	create_template("talent_tree_ogr_pas_014_ru",
		{"loc_talent_ogryn_big_bully_heavy_hits"}, {"ru"},
			loc_text("Тяжёлые удары")),
	--[+ Traditional Chinese - 沉重打擊 +]--
	-- create_template("talent_tree_ogr_pas_014_tw",
		-- {"loc_talent_ogryn_big_bully_heavy_hits"}, {"zh-tw"},
			-- loc_text("沉重打擊")),

	--[+ Passive 15 - Too Stubborn to Die +]--
	-- create_template("talent_tree_ogr_pas_015_en",
		-- {"loc_talent_ogryn_toughness_gain_increase_on_low_health"}, {"en"},
			-- loc_text("Too Stubborn to Die")),
	--[+ Russian +]-- Слишком упёртый, чтобы умереть -- руоф Слишком упрям, чтобы умереть
	create_template("talent_tree_ogr_pas_015_ru",
		{"loc_talent_ogryn_toughness_gain_increase_on_low_health"}, {"ru"},
			loc_text("Слишком упёртый, чтобы умереть")),
	--[+ Traditional Chinese - 堅韌不屈 +]--
	-- create_template("talent_tree_ogr_pas_015_tw",
		-- {"loc_talent_ogryn_toughness_gain_increase_on_low_health"}, {"zh-tw"},
			-- loc_text("堅韌不屈")),

	--[+ Passive 16 - Delight in Destruction +]--
	-- create_template("talent_tree_ogr_pas_016_en",
		-- {"loc_talent_ogryn_damage_reduction_per_bleed"}, {"en"},
			-- loc_text("Delight in Destruction")),
	--[+ Russian +]-- Упоение в разрушении -- руоф Наслаждение разрушением
	create_template("talent_tree_ogr_pas_016_ru",
		{"loc_talent_ogryn_damage_reduction_per_bleed"}, {"ru"},
			loc_text("Упоение в разрушении")),
	--[+ Traditional Chinese - 毀滅之樂 +]--
	-- create_template("talent_tree_ogr_pas_016_tw",
		-- {"loc_talent_ogryn_damage_reduction_per_bleed"}, {"zh-tw"},
			-- loc_text("毀滅之樂")),

	--[+ Passive 17 - Attention Seeker +]--
	-- create_template("talent_tree_ogr_pas_017_en",
		-- {"loc_talent_ranged_enemies_taunt"}, {"en"},
			-- loc_text("Attention Seeker")),
	--[+ Russian +]-- Провокатор -- руоф Внимание искателя
	create_template("talent_tree_ogr_pas_017_ru",
		{"loc_talent_ranged_enemies_taunt"}, {"ru"},
			loc_text("Провокатор")),
	--[+ Traditional Chinese - 渴求關注 +]--
	-- create_template("talent_tree_ogr_pas_017_tw",
		-- {"loc_talent_ranged_enemies_taunt"}, {"zh-tw"},
			-- loc_text("渴求關注")),

	--[+ Passive 18 - Get Stuck In +]--
	-- create_template("talent_tree_ogr_pas_018_en",
		-- {"loc_talent_ogryn_bull_rush_movement_speed"}, {"en"},
			-- loc_text("Get Stuck In")),
	--[+ Russian +]-- Очертя голову
	create_template("talent_tree_ogr_pas_018_ru",
		{"loc_talent_ogryn_bull_rush_movement_speed"}, {"ru"},
			loc_text("Очертя голову")),
	--[+ Traditional Chinese - 全神貫注 +]--
	-- create_template("talent_tree_ogr_pas_018_tw",
		-- {"loc_talent_ogryn_bull_rush_movement_speed"}, {"zh-tw"},
			-- loc_text("全神貫注")),

	--[+ Passive 19 - Towering Presence +]--
	-- create_template("talent_tree_ogr_pas_019_en",
		-- {"loc_talent_ogryn_bigger_coherency_radius"}, {"en"},
			-- loc_text("Towering Presence")),
	--[+ Russian +]-- Величественное присутствие -- руоф Выдающееся присутствие
	create_template("talent_tree_ogr_pas_019_ru",
		{"loc_talent_ogryn_bigger_coherency_radius"}, {"ru"},
			loc_text("Величественное присутствие")),
	--[+ Traditional Chinese - 卓越氣場 +]--
	-- create_template("talent_tree_ogr_pas_019_tw",
		-- {"loc_talent_ogryn_bigger_coherency_radius"}, {"zh-tw"},
			-- loc_text("卓越氣場")),

	--[+ Passive 20 - Unstoppable Momentum +]--
	-- create_template("talent_tree_ogr_pas_020_en",
		-- {"loc_talent_ogryn_ranged_kill_grant_movement_speed"}, {"en"},
			-- loc_text("Unstoppable Momentum")),
	--[+ Russian +]-- Неудержимый моментум
	-- create_template("talent_tree_ogr_pas_020_ru",
		-- {"loc_talent_ogryn_ranged_kill_grant_movement_speed"}, {"ru"},
			-- loc_text("Неудержимый моментум")),
	--[+ Traditional Chinese - 勢不可擋 +]--
	-- create_template("talent_tree_ogr_pas_020_tw",
		-- {"loc_talent_ogryn_ranged_kill_grant_movement_speed"}, {"zh-tw"},
			-- loc_text("勢不可擋")),

	--[+ Passive 21 - No Stopping Me! +]--
	-- create_template("talent_tree_ogr_pas_021_en",
		-- {"loc_talent_ogryn_windup_is_uninterruptible"}, {"en"},
			-- loc_text("No Stopping Me!")),
	--[+ Russian +]-- Меня не остановить!
	-- create_template("talent_tree_ogr_pas_021_ru",
		-- {"loc_talent_ogryn_windup_is_uninterruptible"}, {"ru"},
			-- loc_text("Меня не остановить!")),
	--[+ Traditional Chinese - 誰敢攔我! +]--
	-- create_template("talent_tree_ogr_pas_021_tw",
		-- {"loc_talent_ogryn_windup_is_uninterruptible"}, {"zh-tw"},
			-- loc_text("誰敢攔我!")),

	--[+ Passive 22 - Dominate +]--
	-- create_template("talent_tree_ogr_pas_022_en",
		-- {"loc_talent_ogryn_rending_on_elite_kills"}, {"en"},
			-- loc_text("Dominate")),
	--[+ Russian +]-- Доминируй -- руоф Господство
	create_template("talent_tree_ogr_pas_022_ru",
		{"loc_talent_ogryn_rending_on_elite_kills"}, {"ru"},
			loc_text("Доминируй")),
	--[+ Traditional Chinese - 主宰 +]--
	-- create_template("talent_tree_ogr_pas_022_tw",
		-- {"loc_talent_ogryn_rending_on_elite_kills"}, {"zh-tw"},
			-- loc_text("主宰")),

	--[+ Passive 23 - Payback Time +]--
	-- create_template("talent_tree_ogr_pas_023_en",
		-- {"loc_talent_ogryn_revenge_damage"}, {"en"},
			-- loc_text("Payback Time")),
	--[+ Russian +]-- Время расплаты
	-- create_template("talent_tree_ogr_pas_023_ru",
		-- {"loc_talent_ogryn_revenge_damage"}, {"ru"},
			-- loc_text("Время расплаты")),
	--[+ Traditional Chinese - 報復時間 +]--
	-- create_template("talent_tree_ogr_pas_023_tw",
		-- {"loc_talent_ogryn_revenge_damage"}, {"zh-tw"},
			-- loc_text("報復時間")),

	--[+ Passive 24 - Bruiser +]--
	-- create_template("talent_tree_ogr_pas_024_en",
		-- {"loc_talent_ogryn_cooldown_on_elite_kills"}, {"en"},
			-- loc_text("Bruiser")),
	--[+ Russian +]-- Бугай
	create_template("talent_tree_ogr_pas_024_ru",
		{"loc_talent_ogryn_cooldown_on_elite_kills"}, {"ru"},
			loc_text("Бугай")),
	--[+ Traditional Chinese - 格鬥兵 +]--
	-- create_template("talent_tree_ogr_pas_024_tw",
		-- {"loc_talent_ogryn_cooldown_on_elite_kills"}, {"zh-tw"},
			-- loc_text("格鬥兵")),

	--[+ Passive 25 - Big Boom +]--
	-- create_template("talent_tree_ogr_pas_025_en",
		-- {"loc_talent_ogryn_increase_explosion_radius"}, {"en"},
			-- loc_text("Big Boom")),
	--[+ Russian +]-- Большой бабах
	-- create_template("talent_tree_ogr_pas_025_ru",
		-- {"loc_talent_ogryn_increase_explosion_radius"}, {"ru"},
			-- loc_text("Большой бабах")),
	--[+ Traditional Chinese - 大爆炸 +]--
	-- create_template("talent_tree_ogr_pas_025_tw",
		-- {"loc_talent_ogryn_increase_explosion_radius"}, {"zh-tw"},
			-- loc_text("大爆炸")),

	--[+ Passive 26 - Massacre +]--
	-- create_template("talent_tree_ogr_pas_026_en",
		-- {"loc_talent_ogryn_crit_chance_on_kill"}, {"en"},
			-- loc_text("Massacre")),
	--[+ Russian +]-- Резня
	-- create_template("talent_tree_ogr_pas_026_ru",
		-- {"loc_talent_ogryn_crit_chance_on_kill"}, {"ru"},
			-- loc_text("Резня")),
	--[+ Traditional Chinese - 屠殺 +]--
	-- create_template("talent_tree_ogr_pas_026_tw",
		-- {"loc_talent_ogryn_crit_chance_on_kill"}, {"zh-tw"},
			-- loc_text("屠殺")),

	--[+ Passive 27 - Implacable +]--
	-- create_template("talent_tree_ogr_pas_027_en",
		-- {"loc_talent_ogryn_windup_reduces_damage_taken"}, {"en"},
			-- loc_text("Implacable")),
	--[+ Russian +]-- Непоколебимый
	-- create_template("talent_tree_ogr_pas_027_ru",
		-- {"loc_talent_ogryn_windup_reduces_damage_taken"}, {"ru"},
			-- loc_text("Непоколебимый")),
	--[+ Traditional Chinese - 利刃出鞘 +]--
	-- create_template("talent_tree_ogr_pas_027_tw",
		-- {"loc_talent_ogryn_windup_reduces_damage_taken"}, {"zh-tw"},
			-- loc_text("利刃出鞘")),

	--[+ Passive 28 - No Pushover +]--
	-- create_template("talent_tree_ogr_pas_028_en",
		-- {"loc_talent_ogryn_blocking_reduces_push_cost"}, {"en"},
			-- loc_text("No Pushover")),
	--[+ Russian +]-- Не слабак
	-- create_template("talent_tree_ogr_pas_028_ru",
		-- {"loc_talent_ogryn_blocking_reduces_push_cost"}, {"ru"},
			-- loc_text("Не слабак")),
	--[+ Traditional Chinese - 睚眥必報 +]--
	-- create_template("talent_tree_ogr_pas_028_tw",
		-- {"loc_talent_ogryn_blocking_reduces_push_cost"}, {"zh-tw"},
			-- loc_text("睚眥必報")),

	--[+ Passive 29 - Won't Give In +]--
	-- create_template("talent_tree_ogr_pas_029_en",
		-- {"loc_talent_ogryn_tanky_with_downed_allies"}, {"en"},
			-- loc_text("Won't Give In")),
	--[+ Russian +]-- Не сдамся
	-- create_template("talent_tree_ogr_pas_029_ru",
		-- {"loc_talent_ogryn_tanky_with_downed_allies"}, {"ru"},
			-- loc_text("Не сдамся")),
	--[+ Traditional Chinese - 絕不屈服 +]--
	-- create_template("talent_tree_ogr_pas_029_tw",
		-- {"loc_talent_ogryn_tanky_with_downed_allies"}, {"zh-tw"},
			-- loc_text("絕不屈服")),

	--[+ Passive 30 - Mobile Emplacement +]--
	-- create_template("talent_tree_ogr_pas_030_en",
		-- {"loc_talent_ogryn_bracing_reduces_damage_taken"}, {"en"},
			-- loc_text("Mobile Emplacement")),
	--[+ Russian +]-- Мобильная огневая точка -- руоф Передвижной окоп
	create_template("talent_tree_ogr_pas_030_ru",
		{"loc_talent_ogryn_bracing_reduces_damage_taken"}, {"ru"},
			loc_text("Мобильная огневая точка")),
	--[+ Traditional Chinese - 機動部屬 +]--
	-- create_template("talent_tree_ogr_pas_030_tw",
		-- {"loc_talent_ogryn_bracing_reduces_damage_taken"}, {"zh-tw"},
			-- loc_text("機動部屬")),
}

--[+ Return the localization templates +]--
return localization_templates
