---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

--[+ Loading colors of Keywords and Numbers +]--
COLORS_Numbers = mod:io_dofile("Enhanced_descriptions/COLORS_Numbers")
-- All Numbers are taken from this file by adding to the value "COLORS_Numbers.".
-- For example, in the game the Damage value is taken from the variable {damage:%s}, which in the file "COLORS_Numbers.lua" is replaced by dmg_var_rgb and to add the highlighted number to the text, we write the damage number to the text as "..COLORS_Numbers.dmg_var_rgb..".

COLORS_KWords = mod:io_dofile("Enhanced_descriptions/Loc_EN/COLORS_KWords")
-- All Keywords are taken from this file by adding to the value "COLORS_KWords_ru.".
-- For example, in the file "COLORS_KWords_ru.lua" the word Damage is replaced by Damage_rgb and to add the highlighted word to the text we write it as "..COLORS_KWords_ru.Damage_rgb.".
-- COLORS_KW_Penances = mod:io_dofile("Enhanced_descriptions/Loc_EN/COLORS_KW_Penances")

	--[+ Translations +]-- Add a line with a file of Keywords translated into your language.
--[+ French +]--
COLORS_KWords_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/COLORS_KWords_fr") -- French
-- COLORS_KW_Penances_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/COLORS_KW_Penances_fr")
--[+ Russian +]--
COLORS_KWords_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/COLORS_KWords_ru")
COLORS_KW_Penances_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/COLORS_KW_Penances_ru")

--[+ Function to create a localization template +]--
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end

--[+ Define localization templates +]--
local localization_templates = {
	-- Duplicate the line and translate. For example:
	--		create_template("weap_bb0_ext_en", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies" end),
	--		create_template("weap_bb0_ext_YOURLANGUAGE", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"YOURLANGUAGE"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." к "..COLORS_KWords.Damage_rgb_YOURLANGUAGE.." против врагов в противоосколочной броне." end), <- Don't forget the comma at the end!

--[+ ++PENANCES - ИСКУПЛЕНИЯ++ +]--
	--[+ Lowerbody +]-- Нижняя часть тела
	create_template("lowerbody_gear_ext_desc_ru", {"loc_item_type_gear_lowerbody"}, {"ru"}, function(locale, value) return "Ноги" end),
	--[+ Private Game - Закрытая игра +]--
	-- create_template("private_tag_ext_ru", {"loc_private_tag_name1"}, {"ru"}, function(locale, value) return "Закрытая игра" end),
	--[+ Penance can only be completed in a private game +]-- Искупление может быть выполнено только в закрытой игре
	create_template("private_tag_ext_desc_ru", {"loc_private_tag_description"}, {"ru"}, function(locale, value) return "Искупление может быть выполнено только в закрытой игре! Закрытую игру можно создать только в компании с минимум ещё одним игроком." end),

--[+ ++MISSIONS TYPES - ТИПЫ МИССИЙ++ +]--
	create_template("mission_type_1_ext_ru", {"loc_mission_type_01_name"}, {"ru"}, function(locale, value) return "Налёт" end),
	-- create_template("mission_type_2_ext_ru", {"loc_mission_type_02_name"}, {"ru"}, function(locale, value) return "Убийство" end),
	-- create_template("mission_type_3_ext_ru", {"loc_mission_type_03_name"}, {"ru"}, function(locale, value) return "Расследование" end),
	-- create_template("mission_type_4_ext_ru", {"loc_mission_type_04_name"}, {"ru"}, function(locale, value) return "Диверсия" end),
	-- create_template("mission_type_5_ext_ru", {"loc_mission_type_05_name"}, {"ru"}, function(locale, value) return "Атака" end),
	-- create_template("mission_type_6_ext_ru", {"loc_mission_type_06_name"}, {"ru"}, function(locale, value) return "Шпионаж" end),
	create_template("mission_type_7_ext_ru", {"loc_mission_type_07_name"}, {"ru"}, function(locale, value) return "Ремонт" end),

--[+ ++ACCOUNT - УЧЁТНАЯ ЗАПИСЬ++ +]--
	--[+ Account - Учётная запись +]-- -- руоф Учетная запись
	create_template("ach_acc_0_ext_ru", {"loc_achievement_category_account_label"}, {"ru"}, function(locale, value) return "Учётная запись" end),
		--[+ Two's Company - Двое – компания... +]-- -- руоф А двое лучше
		create_template("ach_acc_1_1_ext_ru", {"loc_achievement_multi_class_1_name"}, {"ru"}, function(locale, value) return "Двое – компания..." end),
	--[+ Like a four-leaf clover - Как четырёхлистный клевер +]-- -- Фантастическая четверка
	create_template("ach_acc_1_ext_ru", {"loc_achievement_multi_class_2_name",}, {"ru",}, function(locale, value) return "Как четырёхлистный клевер" end),
		--[+ Reach Trust Level 30 with 1-4 classes. -  +]-- -- Получить уровень доверия 30 следующими классами: 1-4.
		create_template("ach_acc_1_ext_desc_ru", {"loc_achievement_multi_class_x_description"}, {"ru"}, function(locale, value) return "Достигните "..COLORS_Numbers.n_30_rgb.." уровня доверия "..COLORS_Numbers.target_rgb.." классами." end),
	--[+ Circles of Trust - Круги доверия (1-6) +]-- -- руоф Круг доверия (1-6)
	create_template("ach_acc_7_1_ext_ru", {"loc_achievement_path_of_trust_1_name"}, {"ru"}, function(locale, value) return "Круги доверия (1)" end),
	create_template("ach_acc_7_2_ext_ru", {"loc_achievement_path_of_trust_2_name"}, {"ru"}, function(locale, value) return "Круги доверия (2)" end),
	create_template("ach_acc_7_3_ext_ru", {"loc_achievement_path_of_trust_3_name"}, {"ru"}, function(locale, value) return "Круги доверия (3)" end),
	create_template("ach_acc_7_4_ext_ru", {"loc_achievement_path_of_trust_4_name"}, {"ru"}, function(locale, value) return "Круги доверия (4)" end),
	create_template("ach_acc_7_5_ext_ru", {"loc_achievement_path_of_trust_5_name"}, {"ru"}, function(locale, value) return "Круги доверия (5)" end),
	create_template("ach_acc_7_6_ext_ru", {"loc_achievement_path_of_trust_6_name"}, {"ru"}, function(locale, value) return "Круги доверия (6)" end),
		--[+ Complete Path of Trust chapter 6 -  +]-- -- руоф Пройти главы Пути веры: {target}.
		create_template("ach_acc_7_ext_desc_ru", {"loc_achievement_path_of_trust_x_description"}, {"ru"}, function(locale, value) return "Завершить "..COLORS_Numbers.target_rgb.." главу «Пути доверия»." end),
	--[+ Don't Let Me Down, Criminal -  +]-- -- руоф Не подведите меня, преступники
	create_template("ach_acc_2_ext_ru", {"loc_achievement_prologue_name"}, {"ru"}, function(locale, value) return "Не подведи меня, преступник" end),
		--[+ Complete the Prologue. -  +]-- -- руоф Закончить пролог.
		create_template("ach_acc_2_ext_desc_ru", {"loc_achievement_prologue_description"}, {"ru"}, function(locale, value) return "Пройти {#color(255, 255, 140)}Пролог{#reset()}." end),
	--[+ Unconsidered Trifles -  +]-- -- руоф Непродуманные мелочи
	create_template("ach_acc_4_ext_ru", {"loc_achievement_unlock_gadgets_name"}, {"ru"}, function(locale, value) return "Неучтённые мелочи" end),
		--[+ Unlock your first Curio slot. -  +]-- -- руоф Открыть вашу первую ячейку для устройства.
		create_template("ach_acc_4_ext_desc_ru", {"loc_achievement_unlock_gadgets_description"}, {"ru"}, function(locale, value) return "Разблокируйте вашу первую ячейку {#color(255, 255, 140)}Реликвий{#reset()}." end),
	--[+ Call to Arms -  +]-- -- руоф К оружию!
	create_template("ach_acc_3_ext_ru", {"loc_achievement_basic_training_name"}, {"ru"}, function(locale, value) return "Призыв к оружию" end),
		--[+ Complete Basic Training. -  +]-- -- руоф Завершите базовое обучение.
		create_template("ach_acc_3_ext_desc_ru", {"loc_achievement_basic_training_description"}, {"ru"}, function(locale, value) return "Пройти {#color(255, 255, 140)}Базовое обучение{#reset()}." end),
	--[+ Well met, Whippersnapper -  +]-- -- руоф Какая приятная встреча, молокосос
	create_template("ach_acc_5_ext_ru", {"loc_achievement_unlock_contracts_name"}, {"ru"}, function(locale, value) return "Рад встрече, молокосос" end),
		--[+ Unlock access to Sire Melk's Requisitorium. -  +]-- -- руоф Получить доступ к реквизиториуму сира Мелка.
		create_template("ach_acc_5_ext_desc_ru", {"loc_achievement_unlock_contracts_description"}, {"ru"}, function(locale, value) return "Разблокируйте доступ в {#color(255, 255, 140)}Реквизиториум сира Мелка{#reset()}." end),
	--[+ Hail the Omnissiah! - Слава Омниссии! +]--
	-- create_template("ach_acc_6_ext_ru", {"loc_achievement_unlock_crafting_name"}, {"ru"}, function(locale, value) return "Слава Омниссии!" end),
		--[+ Unlock access to the Shrine of the Omnissiah. -  +]-- руоф Откройте доступ к святилищу Омниссии.
		create_template("ach_acc_6_ext_desc_ru", {"loc_achievement_unlock_crafting_description"}, {"ru"}, function(locale, value) return "Разблокируйте доступ в {#color(255, 255, 140)}Святилище Омниссии{#reset()}." end),

--[+ ++CLASSES - КЛАССЫ++ +]--
	--[+ +VETERAN - ВЕТЕРАН+ +]--
	create_template("ach_class_vet_0_ext_ru", {"loc_class_veteran_title"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_vet_rgb end),
	--[+ ПРОГРЕСС +]--
		--[+ Stay Accurate +]-- -- руоф Держи прицел
		create_template("ach_class_vet_7_ext_ru", {"loc_achievement_veteran_2_easy_1_name"}, {"ru"}, function(locale, value) return "Будь точным" end),
			--[+ Kill 350 enemies with ranged weakspot hits. +]-- -- руоф Убейте врагов (350) попаданиями по слабым местам с дальнего расстояния.
			create_template("ach_class_vet_7_ext_desc_ru", {"loc_achievement_veteran_2_easy_1_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов в "..COLORS_KWords_ru.Weakspot_rgb_ru.." из дальнобойного оружия. {#color(177, 144, 0)}+++ - Стреляйте врагам в голову. +++{#reset()}" end),
		--[+ On Target (1-3) +]-- -- руоф Держи прицел
		-- create_template("ach_class_vet_14_ext_ru", {"loc_achievement_group_class_veteran_2_1_name"}, {"ru"}, function(locale, value) return "В прицеле (1-3)" end),
			--[+ Complete the following Penances as the Veteran. +]-- -- руоф Выполнить следующие искупления за Ветерана.
			create_template("ach_class_vet_14_ext_desc_ru", {"loc_achievement_group_class_veteran_2_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя "..COLORS_KWords_ru.cls_vet2_rgb.."." end),
		--[+ Veteran Master of War +]-- -- руоф Ветеран — знаток войны
		create_template("ach_class_vet_141_ext_ru", {"loc_achievement_class_meta_name"}, {"ru"}, function(locale, value) return "{class_name} — мастер войны" end),
			--[+ Complete 5 out of the following Penances. +]-- -- руоф Выполните часть (5) из следующих искуплений.
			create_template("ach_class_vet_14_ext_desc_ru", {"loc_achievement_class_meta_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." следующих Искуплений." end),
		--[+ Vantage Point +]-- -- руоф Точка обзора
		create_template("ach_class_vet_3_1_ext_ru", {"loc_achievement_missions_veteran_2_objective_1_name"}, {"ru"}, function(locale, value) return "Выгодная позиция" end),
			--[+ As a Veteran, complete at least one Mission of each type. +]-- -- руоф Выполнить Ветераном по меньшей мере одно задание каждого типа.
			create_template("ach_class_vet_3_1_ext_desc_ru", {"loc_achievement_missions_veteran_2_objective_1_description"}, {"ru"}, function(locale, value) return "Завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_vet2_rgb.."." end),
		--[+ Vantage Point (2) +]-- -- руоф Точка обзора (2)
		create_template("ach_class_vet_3_2_ext_ru", {"loc_achievement_missions_veteran_2_objective_2_name"}, {"ru"}, function(locale, value) return "Выгодная позиция (2)" end),
			--[+ As a Veteran, complete a Mission of each type on Uprising Threat or higher. +]-- -- руоф Выполнить Ветераном по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
			create_template("ach_class_vet_3_2_ext_desc_ru", {"loc_achievement_missions_veteran_2_objective_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_vet2_rgb.."." end),
		--[+ Vantage Point (3) +]-- -- руоф Точка обзора (3)
		create_template("ach_class_vet_3_3_ext_ru", {"loc_achievement_missions_veteran_2_objective_3_name"}, {"ru"}, function(locale, value) return "Выгодная позиция (3)" end),
			--[+ As a Veteran, complete a Mission of each type on Malice Threat or higher. +]-- -- руоф Выполнить Ветераном по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.
			create_template("ach_class_vet_3_3_ext_desc_ru", {"loc_achievement_missions_veteran_2_objective_3_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_vet2_rgb.."." end),
		--[+ Fire Down Range +]-- -- руоф Заградительный огонь
		create_template("ach_class_vet_12_ext_ru", {"loc_achievement_veteran_2_medium_2_name"}, {"ru"}, function(locale, value) return "Дистанция ведения стрельбы" end),
			--[+ On Malice Threat or higher, kill 100 enemies that are over 30 meters away. +]-- -- руоф При угрозе «Злоба» или выше убейте врагов (100) на расстоянии дальше 30 м.
			create_template("ach_class_vet_12_ext_desc_ru", {"loc_achievement_veteran_2_medium_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов, находящихся на расстоянии более "..COLORS_Numbers.dist_rgb.." метров от вас." end),
		--[+ Prove Your Worth (1-5) +]--
		-- create_template("ach_class_vet_4_ext_ru", {"loc_missions_veteran_2_easy_difficulty_5_name"}, {"ru"}, function(locale, value) return "Докажи, чего стоишь (1-5)" end),
			--[+ Complete 1 Missions on Sedition Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Мятеж» или выше.
			create_template("ach_class_vet_4_1_ext_desc_ru", {"loc_missions_veteran_2_easy_difficulty_1_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.sedition_rgb.." или выше." end),
			--[+ Complete 1 Missions on Uprising Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Восстание» или выше.
			create_template("ach_class_vet_4_2_ext_desc_ru", {"loc_missions_veteran_2_easy_difficulty_2_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.uprising_rgb.." или выше." end),
			--[+ Complete 1 Missions on Malice Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Злоба» или выше.
			create_template("ach_class_vet_4_3_ext_desc_ru", {"loc_missions_veteran_2_easy_difficulty_3_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.malice_rgb.." или выше." end),
			--[+ Complete 1 Missions on Heresy Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Ересь» или выше.
			create_template("ach_class_vet_4_4_ext_desc_ru", {"loc_missions_veteran_2_easy_difficulty_4_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.heresy_rgb.." или выше." end),
			--[+ Complete 1 Missions on Damnation Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Проклятие» или выше.
			create_template("ach_class_vet_4_5_ext_desc_ru", {"loc_missions_veteran_2_easy_difficulty_5_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.damnation_rgb.." или выше." end),
		--[+ For The Emperor (1-3) +]--
		-- create_template("ach_red_vet_8_ext_ru", {"loc_group_class_challenges_veteran_2_1-3_name"}, {"ru"}, function(locale, value) return "За императора (1-3)" end),
			--[+ Complete the following Penances as the Veteran +]-- -- руоф Выполнить следующие искупления за Ветерана.
			create_template("ach_red_vet_8_ext_desc_ru", {"loc_group_class_challenges_veteran_2_x_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления "..COLORS_KWords_ru.cls_vet2_rgb.."." end),
		--[+ Promotion Material (1) +]-- -- руоф Материалы пропаганды (1)
		create_template("ach_class_vet_9_ext_ru", {"loc_group_veteran_2_rank_4_difficulty_3_name"}, {"ru"}, function(locale, value) return "Задания для продвижения (1)" end),
			--[+ Complete the following Penances as the Veteran +]-- -- руоф Выполнить следующие искупления за Ветерана.
			create_template("ach_class_vet_9_ext_desc_ru", {"loc_group_veteran_2_rank_4_difficulty_3_description"}, {"ru"}, function(locale, value) return "Играя "..COLORS_KWords_ru.cls_vet2_rgb..", завершите следующие Искупления." end),
		--[+ Promotion Material (2) +]-- -- руоф Материалы пропаганды (2)
		create_template("ach_class_vet_10_ext_ru", {"loc_group_veteran_2_rank_5_difficulty_4_name"}, {"ru"}, function(locale, value) return "Задания для продвижения (2)" end),
			--[+ Complete the following Penances as the Veteran +]-- -- руоф Выполнить следующие искупления за Ветерана.
			create_template("ach_class_vet_10_ext_desc_ru", {"loc_group_veteran_2_rank_5_difficulty_4_description"}, {"ru"}, function(locale, value) return "Играя "..COLORS_KWords_ru.cls_vet2_rgb..", завершите следующие Искупления." end),
		--[+ Through The Mud (1-6) +]-- -- руоф Из грязи (1-6)
		-- create_template("ach_class_vet_2_ext_ru", {"loc_achievement_missions_veteran_2_1_name"}, {"ru"}, function(locale, value) return "Из грязи в князи (1)" end),
			--[+ Complete 100 Missions as a Veteran. +]-- -- руоф Выполнить Ветераном задания: 100.
			create_template("ach_class_vet_2_ext_desc_ru", {"loc_achievement_missions_veteran_2_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий "..COLORS_KWords_ru.cls_vet2_rgb.."." end),
		--[+ On Overwatch +]-- -- руоф Под прикрытием
		create_template("ach_red_vet_5_ext_ru", {"loc_achievement_veteran_2_no_melee_damage_taken_name"}, {"ru"}, function(locale, value) return "На чеку" end),
			--[+ Complete a full Mission on Malice Threat or higher without taking any melee damage. +]-- -- руоф При угрозе «Злоба» или выше полностью завершите задание, не получив урона в ближнем бою.
			create_template("ach_red_vet_5_ext_desc_ru", {"loc_achievement_veteran_2_no_melee_damage_taken_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, завершите полностью миссию без получения урона в ближнем бою. {#color(177, 144, 0)}+++ - Берегитесь любых источников порчи!\n- Боссы, гончие и гримуары накладывают порчу. +++{#reset()}" end),
		--[+ First Steps (1-2) +]--
		-- create_template("ach_class_vet_5_ext_ru", {"loc_group_veteran_2_rank_1-2_difficulty_1-2_name"}, {"ru"}, function(locale, value) return "Первые шаги (1-2)" end),
			--[+ Complete the following Penances as the Veteran +]-- -- руоф Выполнить следующие искупления за Ветерана.
			create_template("ach_class_vet_5_ext_desc_ru", {"loc_group_veteran_2_rank_1_difficulty_1_description"}, {"ru"}, function(locale, value) return "Играя "..COLORS_KWords_ru.cls_vet2_rgb..", завершите следующие Искупления." end),
			--[+ Complete the following Penances as the Veteran +]-- -- руоф Выполнить следующие искупления за Ветерана.
			create_template("ach_class_vet_6_ext_desc_ru", {"loc_group_veteran_2_rank_2_difficulty_2_description"}, {"ru"}, function(locale, value) return "Играя "..COLORS_KWords_ru.cls_vet2_rgb..", завершите следующие Искупления." end),
		--[+ One In the Chamber +]-- -- руоф Последний патрон
		create_template("ach_red_vet_4_ext_ru", {"loc_achievement_veteran_2_kills_with_last_round_in_mag_name"}, {"ru"}, function(locale, value) return "Последний в обойме" end),
			--[+ Kill 8 enemies with the last round in your clip during a single Mission on Malice Threat or higher. +]-- -- руоф При угрозе «Злоба» или выше убейте врагов (8) последним боеприпасом в магазине за одно задание.
			create_template("ach_red_vet_4_ext_desc_ru", {"loc_achievement_veteran_2_kills_with_last_round_in_mag_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов последним патроном в обойме в течение одной миссии на сложности "..COLORS_KWords_ru.malice_rgb.." или выше." end),
		--[+ Make Every Shot Count +]-- -- руоф Стрельба наверняка
		create_template("ach_red_vet_7_ext_ru", {"loc_achievement_veteran_2_no_missed_shots_empty_ammo_name"}, {"ru"}, function(locale, value) return "Сделай каждый выстрел важным" end),
			--[+ Complete a Mission on Heresy Threat or higher with no Ammo remaining, and 90% accuracy. +]-- -- руоф При угрозе «Ересь» или выше завершите задание с меткостью 90%, потратив все боеприпасы.
			create_template("ach_red_vet_7_ext_desc_ru", {"loc_achievement_veteran_2_no_missed_shots_empty_ammo_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, завершите миссию с точностью "..COLORS_Numbers.target_rgb..COLORS_Numbers.pc_rgb.." и потратив все боеприпасы. {#color(177, 144, 0)}+++ - Не берите Ауры на пополнение патронов.\n- Можно либо аккуратно стрелять, либо взять оружие с малым количеством патронов, потом отстрелять боезапас и пройти остаток миссии с оружием ближнего боя.\n- Пополнение патронов не учитывается, после того как вы в первый раз всё отстреляли, если вы не начнёте стрелять снова. +++{#reset()}" end),
		--[+ Fight the Good Fight (1-5) +]--
		-- create_template("ach_red_vet_1_ext_ru", {"loc_missions_veteran_2_medium_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Сражайся достойно (1-5)" end),
			--[+ Complete 5 Missions on Sedition Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Мятеж» или выше.
			create_template("ach_red_vet_1_1_ext_desc_ru", {"loc_missions_veteran_2_medium_difficulty_1_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_vet2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.sedition_rgb.." или выше." end),
			--[+ Complete 5 Missions on Uprising Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Восстание» или выше.
			create_template("ach_red_vet_1_2_ext_desc_ru", {"loc_missions_veteran_2_medium_difficulty_2_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_vet2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.uprising_rgb.." или выше." end),
			--[+ Complete 5 Missions on Malice Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Злоба» или выше.
			create_template("ach_red_vet_1_3_ext_desc_ru",  {"loc_missions_veteran_2_medium_difficulty_3_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_vet2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.malice_rgb.." или выше." end),
			--[+ Complete 5 Missions on Heresy Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Ересь» или выше.
			create_template("ach_red_vet_1_4_ext_desc_ru", {"loc_missions_veteran_2_medium_difficulty_4_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_vet2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.heresy_rgb.." или выше." end),
			--[+ Complete 5 Missions on Damnation Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Проклятие» или выше.
			create_template("ach_red_vet_1_5_ext_desc_ru", {"loc_missions_veteran_2_medium_difficulty_5_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_vet2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.damnation_rgb.." или выше." end),
		--[+ I Love the Militarum! (1-6) +]--
		-- create_template("ach_class_vet_1_ext_ru", {"loc_achievement_rank_veteran_2_1_name"}, {"ru"}, function(locale, value) return "Я люблю Милитарум! (1-6)" end),
			--[+ Reach Trust Level 30 as a Veteran. +]-- -- руоф Заслужить уровень доверия 30, играя за Ветерана.
			create_template("ach_class_vet_1_ext_desc_ru", {"loc_achievement_rank_veteran_2_x_description"}, {"ru"}, function(locale, value) return "Достигните "..COLORS_Numbers.target_rgb.." уровня доверия "..COLORS_KWords_ru.cls_vet2_rgb.."." end),
	--[+ СПОСОБНОСТИ +]--
		--[+ Adept Assassin +]-- -- руоф Искусный убийца
		create_template("ach_red_vet_3_ext_ru", {"loc_achievement_veteran_weapon_switch_passive_keystone_kills_name"}, {"ru"}, function(locale, value) return "Адепт-ассасин" end),
			--[+ Kill 250 Specialist or Elites with critical weakspot hits while Weapons Specialist is active. +]-- -- руоф Убейте особых или элитных врагов (250) с помощью критических ударов по слабым местам, пока действует «Мастер оружия».
			create_template("ach_red_vet_3_ext_desc_ru", {"loc_achievement_veteran_weapon_switch_passive_keystone_kills_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью критических ударов в "..COLORS_KWords_ru.Weakspot_rgb_ru..", пока действует ключевой талант "..COLORS_KW_Penances_ru.weapspec_rgb..". {#color(177, 144, 0)}+++ - Стреляйте врагам в голову. +++{#reset()}" end),
		--[+ Stay Alert +]-- -- руоф Будь начеку
		-- create_template("ach_class_vet_11_ext_ru", {"loc_achievement_veteran_2_medium_1_name"}, {"ru"}, function(locale, value) return "Будь внимательным" end),
			--[+ On Malice Threat or higher, kill 150 enemies that have been marked by Volley Fire. +]-- -- руоф При угрозе «Злоба» или выше убейте врагов (150), отмеченных «Залповым огнем».
			create_template("ach_class_vet_11_ext_desc_ru", {"loc_achievement_veteran_2_medium_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов, отмеченных способностями "..COLORS_KW_Penances_ru.volley_fire_rgb.." или "..COLORS_KW_Penances_ru.executioner_stance_rgb .."." end),
		--[+ Be Methodical +]-- -- руоф Будь собран
		create_template("ach_class_vet_13_ext_ru", {"loc_achievement_veteran_2_hard_2_name"}, {"ru"}, function(locale, value) return "Будь методичным" end),
			--[+ On Heresy Threat or higher, keep Volley Fire active for over 20 seconds 5 times. +]-- -- руоф При угрозе «Ересь» или выше примените «Залповый огонь» в течение 20 с 5 р.
			create_template("ach_class_vet_13_ext_desc_ru", {"loc_achievement_veteran_2_hard_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, поддерживайте способность "..COLORS_KW_Penances_ru.executioner_stance_rgb.." активной в течение "..COLORS_Numbers.time_rgb.." секунд. Выполните это задание "..COLORS_Numbers.target_rgb.." раз. {#color(177, 144, 0)}+++ - Используйте модификаторы «Безжалостный» и «Ответный огонь» способности «Стойка палача» для продления действия способности и подсвечивания большего количества врагов. +++{#reset()}" end),
		--[+ Stand up and Fight! +]-- -- руоф Встань и сражайся!
		create_template("ach_class_vet_13_ext_ru", {"loc_achievement_veteran_voice_of_command_toughness_given_name"}, {"ru"}, function(locale, value) return "Встань и сражайся!" end),
			--[+ Restore 7500 Toughness to yourself using Voice of Command. +]-- -- руоф Восстановите себе 7500 стойкости с помощью «Командного голоса».
			create_template("ach_class_vet_13_ext_desc_ru", {"loc_achievement_veteran_voice_of_command_toughness_given_description"}, {"ru"}, function(locale, value) return "Восстановите себе "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb.." с помощью способности "..COLORS_KW_Penances_ru.voiceoc_rgb.."." end),
		--[+ Sweep and Clear +]--
		-- create_template("ach_class_vet_13_ext_ru", {"loc_achievement_veteran_team_damage_amplified_name"}, {"ru"}, function(locale, value) return "Выявить и зачистить" end),
			--[+ Kill 7500 enemies while affected by Fire Team. Kills made by any affected team member also count. +]-- -- руоф Убейте врагов (7500), находясь под действием «Огневой поддержки». Убийства, совершенные любым членом команды под действием эффекта, тоже учитываются.
			create_template("ach_class_vet_13_ext_desc_ru", {"loc_achievement_veteran_team_damage_amplified_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, находясь под действием ауры "..COLORS_KW_Penances_ru.firetim_rgb..". Убийства, совершённые любым членом команды, находящимся под действием вашей ауры, также учитываются." end),
		--[+ Armourbane +]-- -- руоф Бронебой
		-- create_template("ach_class_vet_8_ext_ru", {"loc_achievement_veteran_krak_grenade_kills_name"}, {"ru"}, function(locale, value) return "Губитель брони" end),
			--[+ Kill 500 armoured enemies using krak grenades. +]-- -- руоф Убейте врагов с бронёй (500) с помощью крак-гранат.
			create_template("ach_class_vet_8_ext_desc_ru", {"loc_achievement_veteran_krak_grenade_kills_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." бронированных врагов, используя "..COLORS_KW_Penances_ru.krak_gr_rgb.."." end),
		--[+ Keep it Tight +]-- -- руоф Держать в секрете
		create_template("ach_red_vet_3_ext_ru", {"loc_achievement_veteran_team_movement_amplifed_name"}, {"ru"}, function(locale, value) return "Держитесь вместе" end),
			--[+ Move a total of 10000 meters in coherency with your team members while under the effect of Close and Kill. +]-- -- руоф Переместитесь с членами команды под действием «Сплоченности» суммарно на 10000 м, пока действует эффект «Приблизиться и убить».
			create_template("ach_red_vet_3_ext_desc_ru", {"loc_achievement_veteran_team_movement_amplifed_description"}, {"ru"}, function(locale, value) return "Переместитесь на "..COLORS_Numbers.target_rgb.." метров под действием ауры "..COLORS_KW_Penances_ru.closenkill_rgb..", находясь под действием сплоченности с членами вашей команды." end),
		--[+ Long Bomb +]-- -- руоф Длинный пас
		-- create_template("ach_red_vet_3_ext_ru", {"loc_achievement_veteran_2_unbounced_grenade_kills_name"}, {"ru"}, function(locale, value) return "Дальний бросок" end),
			--[+ Hit 5 enemies with a Frag Grenade without it bouncing. +]-- -- руоф Убейте врагов (5) фраг-гранатой так, чтобы она не отскакивала.
			create_template("ach_red_vet_3_ext_desc_ru", {"loc_achievement_veteran_2_unbounced_grenade_kills_description"}, {"ru"}, function(locale, value) return "Поразите взрывом "..COLORS_KW_Penances_ru.frag_gr_rgb.." "..COLORS_Numbers.target_rgb.." врагов так, чтобы граната ни разу не отскочила от земли. {#color(177, 144, 0)}+++ - Бросайте Фраг-гранату с расстояния примерно 50 метров под углом около 30° вверх так, чтобы она взорвалась над головами группы врагов.\n- Метка поможет определить расстояние.\n- Лучше выполнять на картах с большой видимостью и высокими потолками. +++{#reset()}" end),
		--[+ Smoke Screen +]--
		-- create_template("ach_red_vet_3_ext_ru", {"loc_achievement_veteran_smoke_grenade_engulfed_name"}, {"ru"}, function(locale, value) return "Дымовая завеса" end),
			--[+ Engulf 2000 enemies in smoke using the Smoke Grenade. +]-- -- руоф Окутайте дымом врагов (2000) с помощью дымовой гранаты.
			create_template("ach_red_vet_3_ext_desc_ru", {"loc_achievement_veteran_smoke_grenade_engulfed_description"}, {"ru"}, function(locale, value) return "Окутайте дымом "..COLORS_Numbers.target_rgb.." врагов с помощью "..COLORS_KW_Penances_ru.smok_gr_rgb.."." end),
		--[+ Deadeye +]--
		-- create_template("ach_red_vet_6_ext_ru", {"loc_achievement_veteran_2_elite_weakspot_kills_during_volley_fire_alternate_fire_name"}, {"ru"}, function(locale, value) return "Меткий глаз" end),
			--[+ On Heresy Threat or higher, during a single use of Volley Fire, kill 5 highlighted enemies with Weak Spot hits whilst using a weapon's Secondary Action. +]-- -- руоф При угрозе «Ересь» или выше за однократное применение «Залпового огня»  убейте выделенных врагов (5) попаданием в слабое место, используя дополнительное действие оружия.
			create_template("ach_red_vet_6_ext_desc_ru", {"loc_achievement_veteran_2_elite_weakspot_kills_during_volley_fire_alternate_fire_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, на протяжении одного использования способностей "..COLORS_KW_Penances_ru.volley_fire_rgb.." или "..COLORS_KW_Penances_ru.executioner_stance_rgb..", убейте прицельными выстрелами "..COLORS_Numbers.target_rgb.." подсвеченных врагов в "..COLORS_KWords_ru.Weakspot_rgb_ru..". {#color(177, 144, 0)}+++ - Cтреляйте врагам в голову. +++{#reset()}" end),
		--[+ Unseen Predator +]--
		-- create_template("ach_red_vet_3_ext_ru", {"loc_achievement_veteran_infiltrate_supress_name"}, {"ru"}, function(locale, value) return "Невидимый хищник" end),
			--[+ Suppress 750 enemies using Infiltrate. +]-- -- руоф Подавите врагов (750) с помощью «Проникновения».
			create_template("ach_red_vet_3_ext_desc_ru", {"loc_achievement_veteran_infiltrate_supress_description"}, {"ru"}, function(locale, value) return "Подавите врагов "..COLORS_Numbers.target_rgb.." с помощью способности "..COLORS_KW_Penances_ru.infiltr_rgb..". {#color(177, 144, 0)}+++ - Эффект подавления врагов наступает после выхода из режима Скрытности. +++{#reset()}" end),
		--[+ Marked For Death +]-- -- руоф Отмечены смертью
		create_template("ach_red_vet_2_ext_ru", {"loc_achievement_veteran_2_weakspot_hits_during_volley_fire_alternate_fire_name"}, {"ru"}, function(locale, value) return "Отмеченные на смерть" end),
			--[+ During a single use of Volley Fire, hit enemy Weak Spot 4 times using a weapon's Secondary Action, without missing a shot. +]-- -- руоф За однократное применение «Залпового огня» поразите слабые места врагов (4) дополнительным действием оружия, не промахнувшись.
			create_template("ach_red_vet_2_ext_desc_ru", {"loc_achievement_veteran_2_weakspot_hits_during_volley_fire_alternate_fire_description"}, {"ru"}, function(locale, value) return "За одно использование способностей "..COLORS_KW_Penances_ru.volley_fire_rgb.." или "..COLORS_KW_Penances_ru.executioner_stance_rgb.." поразите "..COLORS_Numbers.target_rgb.." врагов прицельными выстрелами в "..COLORS_KWords_ru.Weakspot_rgb_ru.." ни разу не промахнувшись. {#color(177, 144, 0)}+++ - Стреляйте врагам в голову. +++{#reset()}" end),
		--[+ Resupply Allies +]-- -- руоф Поделись с ближним
		create_template("ach_class_vet_8_ext_ru", {"loc_achievement_veteran_2_easy_2_name"}, {"ru"}, function(locale, value) return "Пополните припасы союзников" end),
			--[+ Replenish 5000 total ammunition to allies using Scavenger. +]-- -- руоф Пополните 5000 ед. боеприпасов союзникам при помощи «Собирателя».
			create_template("ach_class_vet_8_ext_desc_ru", {"loc_achievement_veteran_2_easy_2_description"}, {"ru"}, function(locale, value) return "Восстановите "..COLORS_Numbers.target_rgb.." единиц боеприпасов союзникам с помощью талантов "..COLORS_KW_Penances_ru.scavenger_rgb.." или "..COLORS_KW_Penances_ru.survivalist_rgb.."." end),
		--[+ Find your Targets +]-- -- руоф Поиск целей
		create_template("ach_class_vet_12_ext_ru", {"loc_achievement_veteran_2_hard_1_name"}, {"ru"}, function(locale, value) return "Найди свои цели" end),
			--[+ On Heresy Threat or higher, kill 2 Elite or Specialist enemies during a single Volley Fire, 50 times. +]-- -- руоф При угрозе «Ересь» или выше убейте элитных врагов или специалистов (2) за одно применение «Залпового огня» 50 р.
			create_template("ach_class_vet_12_ext_desc_ru", {"loc_achievement_veteran_2_hard_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, убейте "..COLORS_Numbers.num_enemies_rgb.." элитных врагов или специалистов во время непрерывного действия способностей "..COLORS_KW_Penances_ru.volley_fire_rgb.." или "..COLORS_KW_Penances_ru.executioner_stance_rgb ..". Выполните это задание "..COLORS_Numbers.target_rgb.." раз." end),
		--[+ Killshot Ready +]--
		-- create_template("ach_class_vet_8_ext_ru", {"loc_achievement_veteran_enemies_killed_with_max_focus_fire_name"}, {"ru"}, function(locale, value) return "Смертельный выстрел готов" end),
			--[+ Kill 2500 enemies while at 10 stacks of Marksman's focus or more. +]-- -- руоф Убейте врагов (2500), имея не менее 10 зарядов «Концентрации снайпера».
			create_template("ach_class_vet_8_ext_desc_ru", {"loc_achievement_veteran_enemies_killed_with_max_focus_fire_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, имея не менее "..COLORS_Numbers.n_10_rgb.." зарядов "..COLORS_KWords_ru.Focus_rgb.." от ключевого таланта "..COLORS_KW_Penances_ru.snipcon_rgb.."." end),
		--[+ Focus Soldier! +]-- -- руоф Солдат в прицеле!
		create_template("ach_class_vet_8_ext_ru", {"loc_achievement_veteran_kills_with_improved_tag_name"}, {"ru"}, function(locale, value) return "Прицелься, солдат!" end),
			--[+ Kill 500 enemies tagged by Focus Target! +]-- -- руоф Убейте врагов (500), отмеченных эффектом «В прицеле!».
			create_template("ach_class_vet_8_ext_desc_ru", {"loc_achievement_veteran_kills_with_improved_tag_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, отмеченных с помощью ключевого таланта "..COLORS_KW_Penances_ru.fcs_trg_rgb.."." end),

	--[+ +ZEALOT - ИЗУВЕР+ +]--
	-- create_template("ach_class_zea_0_ext_ru", {"loc_class_zealot_title"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_zea_rgb end), -- Изувер
	--[+ ПРОГРЕСС +]--
		--[+ Prove Your Worth (1-5) - Докажите, чего стоите (1-5) +]-- -- руоф Докажи, чего стоишь (1-5)
		-- create_template("ach_class_zea_4_ext_ru", {"loc_missions_zealot_2_easy_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Докажите, чего стоите (1-5)" end),
			--[+ Complete 1 Missions on Sedition Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Мятеж» или выше.
			-- create_template("ach_class_zea_4_1_ext_desc_ru", {"loc_missions_zealot_2_easy_difficulty_1_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.sedition_rgb.." или выше." end),
			--[+ Complete 1 Missions on Uprising Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Восстание» или выше.
			-- create_template("ach_class_zea_4_2_ext_desc_ru", {"loc_missions_zealot_2_easy_difficulty_2_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.uprising_rgb.." или выше." end),
			--[+ Complete 1 Missions on Malice Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Злоба» или выше.
			-- create_template("ach_class_zea_4_3_ext_desc_ru", {"loc_missions_zealot_2_easy_difficulty_3_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.malice_rgb.." или выше." end),
			--[+ Complete 1 Missions on Heresy Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Ересь» или выше.
			-- create_template("ach_class_zea_4_4_ext_desc_ru", {"loc_missions_zealot_2_easy_difficulty_4_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.heresy_rgb.." или выше." end),
			--[+ Complete 1 Missions on Damnation Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Проклятие» или выше.
			-- create_template("ach_class_zea_4_5_ext_desc_ru", {"loc_missions_zealot_2_easy_difficulty_5_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.damnation_rgb.." или выше." end),
		--[+ For The Emperor (1-3) -  +]-- -- руоф За императора (1-3)
		-- create_template("ach_red_zea_8_ext_ru", {"loc_group_class_challenges_zealot_2_1-3_name"}, {"ru"}, function(locale, value) return "За императора (1-3)" end),
			--[+ Complete the following Penances as the Zealot. -  +]-- -- руоф Выполните следующие искупления за Изувера.
			-- create_template("ach_red_zea_8_ext_desc_ru", {"loc_group_class_challenges_zealot_2_x_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления "..cls_zea2_rgb.."." end),
		--[+ Master Your Tools -  +]-- -- руоф Знай своё дело
		-- create_template("ach_class_zea_12_ext_ru", {"loc_achievement_zealot_2_hard_1_name"}, {"ru"}, function(locale, value) return "Знай своё дело" end),
			--[+ On Heresy Threat or higher, kill 75 Elite or Specialist enemies with Powered Melee Attacks (Chain or Power weapons). -  +]-- -- руоф При угрозе «Ересь» или выше убейте элитных врагов или специалистов (75) усиленными атаками в ближнем бою (цепным или психосиловым оружием).
			-- create_template("ach_class_zea_12_ext_desc_ru", {"loc_achievement_zealot_2_hard_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов в ближнем бою специальными атаками цепного или силового оружия." end),
		--[+ Doomseeker (1-5) -  +]-- -- руоф Искатель судьбы (1-5)
		-- create_template("ach_class_zea_2_ext_ru", {"loc_achievement_missions_zealot_2_1-5_name"}, {"ru"}, function(locale, value) return "Искатель судьбы (1-5)" end),
			--[+ Complete 100 Missions as a Zealot. -  +]-- -- Выполнить Изувером задания: 100.
			-- create_template("ach_class_zea_2_ext_desc_ru", {"loc_achievement_missions_zealot_2_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий "..cls_zea2_rgb.."." end),
		--[+ Maniacal Laughter (6) -  +]-- -- руоф Маниакальный смех (6)
		-- create_template("ach_class_zea_1_ext_ru", {"loc_achievement_rank_zealot_2_6_name"}, {"ru"}, function(locale, value) return "Маниакальный смех (6)" end),
			--[+ Reach Trust Level 30 as a Zealot. -  +]-- -- руоф Заслужить уровень доверия 30, играя за Изувера.
			-- create_template("ach_class_zea_1_ext_desc_ru", {"loc_achievement_rank_zealot_2_x_description"}, {"ru"}, function(locale, value) return "Достигните "..COLORS_Numbers.target_rgb.." уровня доверия ".. cls_zea2_rgb.."." end),
		--[+ Promotion Material (1) -  +]-- -- руоф Материалы пропаганды (1)
		-- create_template("ach_class_zea_9_ext_ru", {"loc_group_zealot_2_rank_4_difficulty_3_name"}, {"ru"}, function(locale, value) return "Задания для продвижения (1)" end),
		--[+ Promotion Material (2) -  +]-- -- руоф Материалы пропаганды (2)
		-- create_template("ach_class_zea_10_ext_ru", {"loc_group_zealot_2_rank_5_difficulty_4_name"}, {"ru"}, function(locale, value) return "Задания для продвижения (2)" end),
			--[+ Complete the following Penances as the Zealot -  +]-- -- руоф Выполнить следующие искупления за Изувера.
			-- create_template("ach_class_zea_9_ext_desc_ru", {"loc_group_zealot_2_rank_4_difficulty_3_description, loc_group_zealot_2_rank_5_difficulty_4_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя ".. cls_zea2_rgb.."." end),
	-- create_template("ach_class_zea_5_ext_ru", -- First Steps (1)
	-- loc_keys = {"loc_group_zealot_2_rank_1_difficulty_1_name"}, {"ru"}, function(locale, value) return "Первые шаги (1)" end),
	-- create_template("ach_class_zea_5_ext_desc_ru", -- Complete the following Penances as the Zealot
-- 	loc_keys = {"loc_group_zealot_2_rank_1_difficulty_1_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя ".. cls_zea2_rgb.."." end), -- Выполните следующие искупления за Изувера.
	-- create_template("ach_class_zea_6_ext_ru", -- First Steps (2)
	-- loc_keys = {"loc_group_zealot_2_rank_2_difficulty_2_name"}, {"ru"}, function(locale, value) return "Первые шаги (2)" end),
	-- create_template("ach_class_zea_6_ext_desc_ru", -- Complete the following Penances as the Zealot
-- 	loc_keys = {"loc_group_zealot_2_rank_2_difficulty_2_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя ".. cls_zea2_rgb.."." end), -- Выполните следующие искупления за Изувера.
	-- create_template("ach_red_zea_7_ext_ru", -- Just A Flesh Wound
	-- loc_keys = {"loc_achievement_zealot_2_health_on_last_segment_enough_during_mission_name"}, {"ru"}, function(locale, value) return "Просто царапина" end),
	-- create_template("ach_red_zea_7_ext_desc_ru", -- Complete a full mission on Heresy Threat or higher in under 20 minutes, with less than a Wound's worth of Health remaining for 75% of the time. (Private Game: Penance can only be completed in a private game)
-- 	loc_keys = {"loc_achievement_zealot_2_health_on_last_segment_enough_during_mission_description"}, {"ru"}, function(locale, value) return "Завершите полностью миссию на сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, менее чем за "..COLORS_Numbers.time_wind_rgb.." минут, при этом "..COLORS_Numbers.health_pc_rgb.." времени у вас должно быть не более одного сегмента "..COLORS_KWords_ru.Wound_rgb.."." end), -- При угрозе «Ересь» или выше полностью завершите задание менее чем за 20 мин., при этом в 75% времени у вас должно быть менее одного сегмента здоровья. 
	-- create_template("ach_red_zea_5_ext_ru", -- Up Close and Personal
	-- loc_keys = {"loc_achievement_zealot_2_not_use_ranged_attacks_name"}, {"ru"}, function(locale, value) return "С близкого расстояния" end),
	-- create_template("ach_red_zea_5_ext_desc_ru", -- Complete a full Mission on Malice Threat or higher without firing a shot.
-- 	loc_keys = {"loc_achievement_zealot_2_not_use_ranged_attacks_description"}, {"ru"}, function(locale, value) return "Завершите полностью миссию на сложности "..COLORS_KWords_ru.malice_rgb.." или выше, не сделав ни одного выстрела." end), -- При угрозе «Злоба» или выше полностью завершите задание, не сделав ни одного выстрела.
	-- create_template("ach_class_zea_14_ext_ru", -- Sainted Path (1-3)
	-- loc_keys = {"loc_achievement_group_class_zealot_2_1-3_name"}, {"ru"}, function(locale, value) return "Путь святого (1-3)" end), -- Священный путь (1-3)
	-- create_template("ach_class_zea_14_ext_desc_ru", -- Complete the Following Penances as the Zealot.
-- 	loc_keys = {"loc_achievement_group_class_zealot_2_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя ".. cls_zea2_rgb.."." end), -- Выполнить следующие искупления за Изувера.
	-- create_template("ach_red_zea_1_ext_ru", -- Fight the Good Fight (1-5)
	-- loc_keys = {"loc_missions_zealot_2_medium_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Сражайтесь достойно (1-5)" end), -- Сражайся достойно (1-5)
	-- create_template("ach_red_zea_1_1_ext_desc_ru", -- Complete 5 Missions on Sedition Threat or higher.
-- 	loc_keys = {"loc_missions_zealot_2_medium_difficulty_1_description"}, {"ru"}, function(locale, value) return cls_zea2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.sedition_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Мятеж» или выше.
	-- create_template("ach_red_zea_1_2_ext_desc_ru", -- Complete 5 Missions on Uprising Threat or higher.
-- 	loc_keys = {"loc_missions_zealot_2_medium_difficulty_2_description"}, {"ru"}, function(locale, value) return cls_zea2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.uprising_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Восстание» или выше.
	-- create_template("ach_red_zea_1_3_ext_desc_ru", -- Complete 5 Missions on Malice Threat or higher.
-- 	loc_keys = {"loc_missions_zealot_2_medium_difficulty_3_description"}, {"ru"}, function(locale, value) return cls_zea2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.malice_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Злоба» или выше.
	-- create_template("ach_red_zea_1_4_ext_desc_ru", -- Complete 5 Missions on Heresy Threat or higher.
-- 	loc_keys = {"loc_missions_zealot_2_medium_difficulty_4_description"}, {"ru"}, function(locale, value) return cls_zea2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.heresy_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Ересь» или выше.
	-- create_template("ach_red_zea_1_5_ext_desc_ru", -- Complete 5 Missions on Damnation Threat or higher.
-- 	loc_keys = {"loc_missions_zealot_2_medium_difficulty_5_description"}, {"ru"}, function(locale, value) return cls_zea2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.damnation_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Проклятие» или выше.
	-- create_template("ach_class_zea_11_ext_ru", -- Find Their Weakness
-- 	loc_keys = {"loc_achievement_zealot_2_medium_1_name"}, {"ru"}, function(locale, value) return "Найди их слабости" end), -- Узнай их слабости
	-- create_template("ach_class_zea_11_ext_desc_ru", -- On Malice Threat or higher, kill 75 Stunned enemies with Critical Hits.
-- 	loc_keys = {"loc_achievement_zealot_2_medium_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, убейте "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Staggered_rgb.." врагов "..COLORS_KWords_ru.Crit_hits_rgb.."." end), -- При угрозе «Злоба» или выше убейте оглушенных врагов (75) критическими ударами.
	-- create_template("ach_class_zea_3_ext_ru", -- Praise the God-Emperor! (1-3)
	-- loc_keys = {"loc_achievement_missions_zealot_2_objective_1-3_name"}, {"ru"}, function(locale, value) return "Хвала Богу-Императору! (1-3)" end),
	-- create_template("ach_class_zea_3_1_ext_desc_ru", -- As a Zealot, complete a Mission of each type.
-- 	loc_keys = {"loc_achievement_missions_zealot_2_objective_1_description"}, {"ru"}, function(locale, value) return "Завершите по одной миссии каждого типа "..cls_zea2_rgb.."." end), -- Выполнить Изувером по меньшей мере одно задание каждого типа.
	-- create_template("ach_class_zea_3_3_ext_desc_ru", -- As a Zealot, complete a Mission of each type on Malice Threat or higher.
-- 	loc_keys = {"loc_achievement_missions_zealot_2_objective_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, завершите по одной миссии каждого типа "..cls_zea2_rgb.."." end), -- Выполнить Изувером по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
	-- create_template("ach_class_zea_3_4_ext_desc_ru", -- As a Zealot, complete a Mission of each type on Heresy Threat or higher.
-- 	loc_keys = {"loc_achievement_missions_zealot_2_objective_3_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, завершите по одной миссии каждого типа "..cls_zea2_rgb.."." end), -- Выполнить Изувером по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.
-- --------------------------------------------------------------СПОСОБНОСТИ
	-- create_template("ach_class_zea_7_ext_ru", -- Blessed be Thine Aim
-- 	loc_keys = {"loc_achievement_zealot_elite_or_special_kills_with_blade_of_faith_name"}, {"ru"}, function(locale, value) return "Благословенна будь твоя меткость" end), -- Благословен будь твой прицел
	-- create_template("ach_class_zea_7_ext_desc_ru", -- Kill 500 Specialist and Elites using Blades of Faith.
-- 	loc_keys = {"loc_achievement_zealot_elite_or_special_kills_with_blade_of_faith_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов используя "..klinvery_rgb..". {#color(177, 144, 0)}+++ - Клинки убивают в голову всех врагов, кроме огринов, берсерков, палачей и монстров. +++{#reset()}" end), -- Убейте особых и элитных врагов (500) с помощью «Клинков веры».
	-- create_template("ach_class_zea_8_ext_ru", -- Behind Enemy Lines
	-- loc_keys = {"loc_achievement_zealot_aura_backstab_kills_while_alone_name"}, {"ru"}, function(locale, value) return "В тылу врага" end), -- В тылу врага
	-- create_template("ach_class_zea_8_ext_desc_ru", -- Kill 200 Ranged enemies with backstab, while not in Coherency while under the effect of the Loner ability.
-- 	loc_keys = {"loc_achievement_zealot_aura_backstab_kills_while_alone_description"}, {"ru"}, function(locale, value) return "Убейте ударом в спину "..COLORS_Numbers.target_rgb.." врагов с дальнобойным оружием под эффектом ауры "..loner_rgb..", пока вы не находитесь под действием сплоченности с другими союзниками." end), -- Убейте врагов дальнего боя (200) ударом в спину, не находясь под действием «Сплоченности».
	-- create_template("ach_class_zea_8_ext_ru", -- Inspiring Oratory
	-- loc_keys = {"loc_achievement_zealot_team_toughness_restored_with_chorus_name"}, {"ru"}, function(locale, value) return "Вдохновляющая речь" end), -- Вдохновляющая речь
	-- create_template("ach_class_zea_8_ext_desc_ru", -- Restore 7500 toughness to other players using Chorus of Spir_I_tual Fortitude.
-- 	loc_keys = {"loc_achievement_zealot_team_toughness_restored_with_chorus_description"}, {"ru"}, function(locale, value) return "Восстановите другим игрокам "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb.." с помощью способности "..chorusosf_rgb.."." end), -- Восстановите другим игрокам 7500 стойкости с помощью «Хор духовной стойкости»
	-- create_template("ach_class_zea_8_ext_ru", -- Trust in the Emperor
-- 	loc_keys = {"loc_achievement_zealot_aura_corruption_healed_name"}, {"ru"}, function(locale, value) return "Верь в Императора" end), -- Верьте в Императора
	-- create_template("ach_class_zea_8_ext_desc_ru", -- Heal 5000 Corruption Damage to allies in coherency under the effect of Beacon of Purity.
-- 	loc_keys = {"loc_achievement_zealot_aura_corruption_healed_description"}, {"ru"}, function(locale, value) return "Исцелите "..COLORS_Numbers.target_rgb.." урона от {#color(186, 85, 211)}порчи{#reset()} союзникам под действием сплоченности с помощью эффекта ауры "..beaconop_rgb.."." end), -- Исцелите урон скверной союзникам под воздействием «Сплоченности» (5000), находясь под действием «Маяка непорочности».
	-- create_template("ach_class_zea_8_ext_ru", -- Stay Strong
-- 	loc_keys = {"loc_achievement_zealot_2_easy_2_name"}, {"ru"}, function(locale, value) return "Держись" end), -- Будь сильным
	-- create_template("ach_class_zea_8_ext_desc_ru", -- Replenish 7500 Toughness using Chastise the Wicked.
-- 	loc_keys = {"loc_achievement_zealot_2_easy_2_description"}, {"ru"}, function(locale, value) return "Восстановите "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb..", используя способности "..chastise_wicked_rgb.." или "..fury_faithful_rgb.."." end), -- Восстановите стойкость «Карой для нечестивых» 7500 р.
	-- create_template("ach_red_zea_6_ext_ru", -- There is Nothing But the Abyss ...
-- 	loc_keys = {"loc_achievement_zealot_2_healed_up_after_resisting_death_name"}, {"ru"}, function(locale, value) return "Здесь нет ничего кроме Бездны..." end), -- Есть только бездна...
	-- create_template("ach_red_zea_6_ext_desc_ru", -- On Heresy threat or higher, heal to 25% Health with life gained solely from the Holy Revenant Talent.
-- 	loc_keys = {"loc_achievement_zealot_2_healed_up_after_resisting_death_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, вылечите до "..COLORS_Numbers.target_rgb.."{#color(255, 255, 140)}%{#reset()} "..COLORS_KWords_ru.Wound_rgb.." за счёт жизни, полученной исключительно от таланта "..holy_revenant_rgb.."." end), -- При угрозе «Ересь» или выше восстановите 25% здоровья исключительно за счет таланта «Святой призрак».
	-- create_template("ach_class_zea_7_ext_ru", -- Test of Faith
	-- loc_keys = {"loc_achievement_zealot_aura_toughness_damage_reduced_name"}, {"ru"}, function(locale, value) return "Испытание веры" end), -- Испытание веры
	-- create_template("ach_class_zea_7_ext_desc_ru", -- Reduce a total of 1500 Toughness Damage to allies in coherency under the effect of Benediction.
-- 	loc_keys = {"loc_achievement_zealot_aura_toughness_damage_reduced_description"}, {"ru"}, function(locale, value) return "Снизьте в общей сложности "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_dmg_red_rgb.." союзников, находящимся под действием сплоченности, с помощью ауры "..benedict_rgb.."." end), -- Снизьте урон стойкости союзникам под воздействием «Сплоченности» (суммарно 1500), находясь под действием «Благословения».
	-- create_template("ach_class_zea_12_ext_ru", -- Channel Your Rage
	-- loc_keys = {"loc_achievement_zealot_2_medium_2_name"}, {"ru"}, function(locale, value) return "Направь свою ярость" end),
	-- create_template("ach_class_zea_12_ext_desc_ru", -- On Malice Threat or higher, kill 1000 enemies with Melee Attacks whilst at at least 3 stacks of Martydom.
-- 	loc_keys = {"loc_achievement_zealot_2_medium_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов в ближнем бою, пока у вас есть хотя бы {#color(255, 255, 140)}3{#reset()} заряда "..martydom_rgb.."." end), -- При угрозе «Злоба» или выше убейте врагов (1000) в ближнем бою, сохраняя не менее 3 ед. заряда «Мученичества».
	-- create_template("ach_class_zea_13_ext_ru", -- Have Faith
-- 	loc_keys = {"loc_achievement_zealot_2_hard_2_name"}, {"ru"}, function(locale, value) return "Верь" end), -- Не теряй веру
	-- create_template("ach_class_zea_13_ext_desc_ru", -- On Heresy Threat or higher, using Chastise the Wicked, dash towards a targeted enemy that is wielding a ranged weapon, 40 times.
-- 	loc_keys = {"loc_achievement_zealot_2_hard_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, используя способности "..chastise_wicked_rgb.." или "..fury_faithful_rgb ..", сделайте рывок к врагу у которого в руках дальнобойное оружие. Выполните это задание "..COLORS_Numbers.target_rgb.." раз." end), -- Используя «Кару для нечестивых», сделайте рывок в сторону противника с дистанционным оружием при угрозе «Ересь» и выше 40 р.
	-- create_template("ach_class_zea_7_ext_ru", -- Unseen Assassin
	-- loc_keys = {"loc_achievement_zealot_elite_or_special_kills_with_shroudfield_name"}, {"ru"}, function(locale, value) return "Незримый убийца" end), -- Незримый убийца
	-- create_template("ach_class_zea_7_ext_desc_ru", -- Kill 150 Specialists or Elites by backstabbing them while using Shroudfield.
-- 	loc_keys = {"loc_achievement_zealot_elite_or_special_kills_with_shroudfield_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов ударом в спину под действием способности "..shroudf_rgb.."." end), -- Убейте особых или элитных врагов (150) ответным ударом с помощью «Покрова».
	-- create_template("ach_class_zea_7_ext_ru", -- Purging Flames
	-- loc_keys = {"loc_achievement_zealot_kills_with_fire_grenade_name"}, {"ru"}, function(locale, value) return "Очищающее пламя" end), -- Очищающее пламя
	-- create_template("ach_class_zea_7_ext_desc_ru", -- Burn 2000 enemies using the Immolation Grenade
-- 	loc_keys = {"loc_achievement_zealot_kills_with_fire_grenade_description"}, {"ru"}, function(locale, value) return "Сожгите "..COLORS_Numbers.target_rgb.." врагов с помощью "..fire_gren_rgb.."." end), -- Сожгите врагов (2000) с помощью «Жертвенной гранаты».
	-- create_template("ach_red_zea_2_ext_ru", -- Buying Time
-- 	loc_keys = {"loc_achievement_zealot_2_stagger_sniper_with_grenade_distance_name"}, {"ru"}, function(locale, value) return "Выиграй время" end), -- Передышка
	-- create_template("ach_red_zea_2_ext_desc_ru", -- Using a Stun Grenade, hit an enemy sniper more than 40 metres away.
-- 	loc_keys = {"loc_achievement_zealot_2_stagger_sniper_with_grenade_distance_description"}, {"ru"}, function(locale, value) return "Используя "..shock_gren1_rgb.." или "..shock_gren0_rgb..", поразите вражеского снайпера на расстоянии более "..COLORS_Numbers.target_rgb.." метров. {#color(177, 144, 0)}+++ - Не обязательно попадать в снайпера. Достаточно, чтобы граната просто взорвалась над ним. +++{#reset()}" end), -- Поразите вражеского снайпера на расстоянии более 40 м, используя оглушающую гранату.
	-- create_template("ach_class_zea_7_ext_ru", -- Righteous Anger
	-- loc_keys = {"loc_achievement_zealot_elite_or_special_kills_during_fanatic_rage_name"}, {"ru"}, function(locale, value) return "Праведный гнев" end), -- Праведный гнев
	-- create_template("ach_class_zea_7_ext_desc_ru", -- Kill 2000 enemies while in Fury.
-- 	loc_keys = {"loc_achievement_zealot_elite_or_special_kills_during_fanatic_rage_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, находясь под действием эффекта "..fanrage_rgb.." от ключевого таланта "..blazingp_rgb.."." end), -- Убейте врагов (2000), находясь под действием «Ярости».
	-- create_template("ach_red_zea_3_ext_ru", -- Abhor the Mutant
-- 	loc_keys = {"loc_achievement_zelot_2_kill_mutant_charger_with_melee_while_dashing_name"}, {"ru"}, function(locale, value) return "Презри Мутанта" end), -- Презирай Мутантов
	-- create_template("ach_red_zea_3_ext_desc_ru", -- While Dashing with Chastise The Wicked, kill a Mutant with a Melee Attack.
-- 	loc_keys = {"loc_achievement_zelot_2_kill_mutant_charger_with_melee_while_dashing_description"}, {"ru"}, function(locale, value) return "Во время рывка с помощью способностей "..chastise_wicked_rgb.." или "..fury_faithful_rgb.." убейте Мутанта атакой ближнего боя." end), -- Убейте мутанта атакой в ближнем бою во время рывка, пока действует «Кара для нечестивых».
	-- create_template("ach_class_zea_7_ext_ru", -- Control Crowds
-- 	loc_keys = {"loc_achievement_zealot_2_easy_1_name"}, {"ru"}, function(locale, value) return "Сдерживание толп" end), -- Сдерживание толпы
	-- create_template("ach_class_zea_7_ext_desc_ru", -- Stun 1500 enemies using Stun Grenades.
-- 	loc_keys = {"loc_achievement_zealot_2_easy_1_description"}, {"ru"}, function(locale, value) return "Оглушите "..COLORS_Numbers.target_rgb.." врагов, используя "..shock_gren2_rgb.." или "..shock_gren_rgb.."." end), -- Оглушите врагов (1500) оглушающими гранатами.
	-- create_template("ach_class_zea_7_ext_ru", -- Lethal Pursuit
	-- loc_keys = {"loc_achievement_zealot_kills_during_movement_keystone_activated_name"}, {"ru"}, function(locale, value) return "Смертоносное преследование" end), -- Смертоносное преследование
	-- create_template("ach_class_zea_7_ext_desc_ru", -- Kill 250 Specialist and Elite enemies while at 15 stacks of Inexorable Judgement or above.
-- 	loc_keys = {"loc_achievement_zealot_kills_during_movement_keystone_activated_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов, имея не менее {#color(255, 255, 140)}15{#reset()} зарядов "..momentum_rgb.." от ключевого таланта "..inexor_rgb.."." end), -- Убейте особых и элитных врагов (250), имея не менее 15 зарядов «Безжалостного приговора».
	-- create_template("ach_red_zea_4_ext_ru", -- Shocking Stuff
	-- loc_keys = {"loc_achievement_zealot_2_kills_of_shocked_enemies_last_15_name"}, {"ru"}, function(locale, value) return "Шокирующие штуки" end), -- Шокирующая штучка
	-- create_template("ach_red_zea_4_ext_desc_ru", -- On Malice Threat or higher, kill 40 enemies stunned by your grenades, within 10s.
	-- loc_keys = {"loc_achievement_zealot_2_kills_of_shocked_enemies_last_15_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов, оглушённых вашими гранатами, в течение "..COLORS_Numbers.time_wind_rgb.." секунд." end), -- При угрозе «Злоба» или выше убейте врагов (40), оглушенных вашими гранатами, за 10 с.

-- ==============================================================PSYKER - ПСАЙКЕР
	-- create_template("ach_class_psy_0_ext_ru", -- Psyker
-- 	loc_keys = {"loc_class_psyker_title"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_psy_rgb end),
-- --------------------------------------------------------------ПРОГРЕСС
	-- create_template("ach_class_psy_4_ext_ru", -- Prove Your Worth (1-5)
	-- loc_keys = {"loc_missions_psyker_2_easy_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Докажите, чего стоите (1-5)" end), -- Докажи, чего стоишь (1-5)
	-- create_template("ach_class_psy_4_1_ext_desc_ru", -- Complete 1 Missions on Sedition Threat or higher.
-- 	loc_keys = {"loc_missions_psyker_2_easy_difficulty_1_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.sedition_rgb.." или выше." end), -- Выполните задания (1) при угрозе «Мятеж» или выше.
	-- create_template("ach_class_psy_4_2_ext_desc_ru", -- Complete 1 Missions on Uprising Threat or higher.
-- 	loc_keys = {"loc_missions_psyker_2_easy_difficulty_2_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.uprising_rgb.." или выше." end), -- Выполните задания (1) при угрозе «Восстание» или выше.
	-- create_template("ach_class_psy_4_3_ext_desc_ru", -- Complete 1 Missions on Malice Threat or higher.
-- 	loc_keys = {"loc_missions_psyker_2_easy_difficulty_3_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.malice_rgb.." или выше." end), -- Выполните задания (1) при угрозе «Злоба» или выше.
	-- create_template("ach_class_psy_4_4_ext_desc_ru", -- Complete 1 Missions on Heresy Threat or higher.
-- 	loc_keys = {"loc_missions_psyker_2_easy_difficulty_4_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.heresy_rgb.." или выше." end), -- Выполните задания (1) при угрозе «Ересь» или выше.
	-- create_template("ach_class_psy_4_5_ext_desc_ru", -- Complete 1 Missions on Damnation Threat or higher.
-- 	loc_keys = {"loc_missions_psyker_2_easy_difficulty_5_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.damnation_rgb.." или выше." end), -- Выполните задания (1) при угрозе «Проклятие» или выше.
	-- create_template("ach_red_psy_8_ext_ru", -- For The Emperor (1-3)
	-- loc_keys = {"loc_group_class_challenges_psyker_2_1-3_name"}, {"ru"}, function(locale, value) return "За императора (1-3)" end),
	-- create_template("ach_red_psy_8_ext_desc_ru", -- Complete the following Penances as the Psyker
-- 	loc_keys = {"loc_group_class_challenges_psyker_2_x_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления "..cls_psy2_rgb.."." end), -- Выполните следующие искупления за Псайкера.
	-- create_template("ach_class_psy_12_ext_ru", -- Unleash the Warp
-- 	loc_keys = {"loc_achievement_psyker_2_medium_2_name"}, {"ru"}, function(locale, value) return "Высвободи варп" end), -- Извергни варп
	-- create_template("ach_class_psy_12_ext_desc_ru", -- On Malice Threat or higher, kill 2500 enemies with Warp attacks.
-- 	loc_keys = {"loc_achievement_psyker_2_medium_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов варп-атаками. {#color(177, 144, 0)}+++ - Учитываются варп-атаки из любого источника: основные и дополнительный атаки посохами, специальные атаки психосиловыми мечами, атаки Взрывными талантами и Горение души. +++{#reset()}" end), -- При угрозе «Злоба» или выше убейте врагов (2500) варп-атаками.
	-- create_template("ach_class_psy_14_ext_ru", -- Kinetic Killer (1-3)
	-- loc_keys = {"loc_achievement_group_class_psyker_2_1-3_name"}, {"ru"}, function(locale, value) return "Кинетический убийца (1-3)" end),
	-- create_template("ach_class_psy_14_ext_desc_ru", -- Complete the Following Penances as the Psyker.
-- 	loc_keys = {"loc_achievement_group_class_psyker_2_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя ".. cls_psy2_rgb.."." end), -- Выполнить следующие искупления за Псайкера.
	-- create_template("ach_class_psy_9_ext_ru", -- Promotion Material (1)
-- 	loc_keys = {"loc_group_psyker_2_rank_4_difficulty_3_name"}, {"ru"}, function(locale, value) return "Задания для продвижения (1)" end), -- Материалы пропаганды (1)
	-- create_template("ach_class_psy_9_ext_desc_ru", -- Complete the following Penances as the Psyker
-- 	loc_keys = {"loc_group_psyker_2_rank_4_difficulty_3_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя ".. cls_psy2_rgb.."." end), -- Выполнить следующие искупления за Псайкера.
	-- create_template("ach_class_psy_10_ext_ru", -- Promotion Material (2)
-- 	loc_keys = {"loc_group_psyker_2_rank_5_difficulty_4_name"}, {"ru"}, function(locale, value) return "Задания для продвижения (2)" end), -- Материалы пропаганды (2)
	-- create_template("ach_class_psy_10_ext_desc_ru", -- Complete the following Penances as the Psyker
-- 	loc_keys = {"loc_group_psyker_2_rank_5_difficulty_4_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя ".. cls_psy2_rgb.."." end), -- Выполнить следующие искупления за Псайкера.
	-- create_template("ach_class_psy_13_ext_ru", -- Keep Your Distance
	-- loc_keys = {"loc_achievement_psyker_2_hard_2_name"}, {"ru"}, function(locale, value) return "Держи дистанцию" end), -- Не подходи близко
	-- create_template("ach_class_psy_13_ext_desc_ru", -- On Heresy Threat or higher, complete 3 full Missions without being hit in melee by an Elite enemy.
-- 	loc_keys = {"loc_achievement_psyker_2_hard_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, завершите полностью "..COLORS_Numbers.target_rgb.." миссии без получения ударов в ближнем бою от элитных врагов." end), -- При угрозе «Ересь» или выше полностью выполните задание 3 р., чтобы элитный враг ни разу не попал по вам в ближнем бою.
	-- create_template("ach_red_psy_3_ext_ru", -- Cliffhanger
	-- loc_keys = {"loc_achievement_psyker_2_edge_kills_last_2_sec_name"}, {"ru"}, function(locale, value) return "Неожиданный поворот" end),
	-- create_template("ach_red_psy_3_ext_desc_ru", -- Kill 7 enemies within 2s by knocking them off a ledge.
-- 	loc_keys = {"loc_achievement_psyker_2_edge_kills_last_2_sec_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов в течение "..COLORS_Numbers.time_wind_rgb.." секунд, сбросив их с уступа. {#color(177, 144, 0)}+++ - Чтобы выполнить это Искупление используйте способность «Психокинетический гнев» или «Вырвавшийся вопль». +++{#reset()}" end), -- Убейте врагов (7) за 2 с., сбросив их с уступа.
	-- create_template("ach_class_psy_5_ext_ru", -- First Steps (1)
	-- loc_keys = {"loc_group_psyker_2_rank_1_difficulty_1_name"}, {"ru"}, function(locale, value) return "Первые шаги (1)" end),
	-- create_template("ach_class_psy_5_ext_desc_ru", -- Complete the following Penances as the Psyker
-- 	loc_keys = {"loc_group_psyker_2_rank_1_difficulty_1_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя ".. cls_psy2_rgb.."." end), -- Выполните следующие искупления за Псайкера.
	-- create_template("ach_class_psy_6_ext_ru", -- First Steps (2)
	-- loc_keys = {"loc_group_psyker_2_rank_2_difficulty_2_name"}, {"ru"}, function(locale, value) return "Первые шаги (2)" end),
	-- create_template("ach_class_psy_6_ext_desc_ru", -- Complete the following Penances as the Psyker
-- 	loc_keys = {"loc_group_psyker_2_rank_2_difficulty_2_description",},
-- 	locales = {"ru",}, handle_func = function(locale, value)
	-- return "Завершите следующие Искупления, играя ".. cls_psy2_rgb.."." end), -- Выполните следующие искупления за Псайкера.
	-- create_template("ach_class_psy_2_ext_ru", -- Lifeleech (1-5)
	-- loc_keys = {"loc_achievement_missions_psyker_2_1-5_name"}, {"ru"}, function(locale, value) return "Похититель жизни (1-5)" end),
	-- create_template("ach_class_psy_2_ext_desc_ru", -- Complete 100 Missions as a Psyker.
-- 	loc_keys = {"loc_achievement_missions_psyker_2_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий "..cls_psy2_rgb.."." end), -- Выполнить Псайкером задания: 100.
	-- create_template("ach_class_psy_3_ext_ru", -- Touch the Void (1-3)
	-- loc_keys = {"loc_achievement_missions_psyker_2_objective_1-3_name"}, {"ru"}, function(locale, value) return "Коснись Пустоты (1-3)" end), -- Прикоснись к пустоте (1-3)
	-- create_template("ach_class_psy_3_1_ext_desc_ru", -- As a Psyker, complete a Mission of each type.
-- 	loc_keys = {"loc_achievement_missions_psyker_2_objective_1_description"}, {"ru"}, function(locale, value) return "Завершите по одной миссии каждого типа "..cls_psy2_rgb.."." end), -- Выполнить Псайкером по меньшей мере одно задание каждого типа.
	-- create_template("ach_class_psy_3_2_ext_desc_ru", -- As a Psyker, complete a Mission of each type on Malice Threat or higher.
-- 	loc_keys = {"loc_achievement_missions_psyker_2_objective_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, завершите по одной миссии каждого типа "..cls_psy2_rgb.."." end), -- Выполнить Псайкером по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
	-- create_template("ach_class_psy_3_3_ext_desc_ru", -- As a Psyker, complete a Mission of each type on Heresy Threat or higher.
-- 	loc_keys = {"loc_achievement_missions_psyker_2_objective_3_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, завершите по одной миссии каждого типа "..cls_psy2_rgb.."." end), -- Выполнить Псайкером по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.
	-- create_template("ach_class_psy_1_ext_ru", -- Mind over Matter (1-6)
	-- loc_keys = {"loc_achievement_rank_psyker_2_1-6_name"}, {"ru"}, function(locale, value) return "Разум превыше материи (1-6)" end),
	-- create_template("ach_class_psy_1_ext_desc_ru", -- Reach Trust Level 30 as a Psyker.
-- 	loc_keys = {"loc_achievement_rank_psyker_2_x_description"}, {"ru"}, function(locale, value) return "Достигните "..COLORS_Numbers.target_rgb.." уровня доверия ".. cls_psy2_rgb.."." end), -- Заслужить уровень доверия 30, играя за Псайкера.
	-- create_template("ach_red_psy_1_ext_ru", -- Fight the Good Fight (1-5)
	-- loc_keys = {"loc_missions_psyker_2_medium_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Сражайтесь достойно (1-5)" end), -- Сражайся достойно (1-5)
	-- create_template("ach_red_psy_1_1_ext_desc_ru", -- Complete 5 Missions on Sedition Threat or higher.
-- 	loc_keys = {"loc_missions_psyker_2_medium_difficulty_1_description"}, {"ru"}, function(locale, value) return cls_psy2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.sedition_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Мятеж» или выше.
	-- create_template("ach_red_psy_1_2_ext_desc_ru", -- Complete 5 Missions on Uprising Threat or higher.
-- 	loc_keys = {"loc_missions_psyker_2_medium_difficulty_2_description"}, {"ru"}, function(locale, value) return cls_psy2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.uprising_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Восстание» или выше.
	-- create_template("ach_red_psy_1_3_ext_desc_ru", -- Complete 5 Missions on Malice Threat or higher.
-- 	loc_keys = {"loc_missions_psyker_2_medium_difficulty_3_description"}, {"ru"}, function(locale, value) return cls_psy2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.malice_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Злоба» или выше.
	-- create_template("ach_red_psy_1_4_ext_desc_ru", -- Complete 5 Missions on Heresy Threat or higher.
-- 	loc_keys = {"loc_missions_psyker_2_medium_difficulty_4_description"}, {"ru"}, function(locale, value) return cls_psy2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.heresy_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Ересь» или выше.
	-- create_template("ach_red_psy_1_5_ext_desc_ru", -- Complete 5 Missions on Damnation Threat or higher.
-- 	loc_keys = {"loc_missions_psyker_2_medium_difficulty_5_description"}, {"ru"}, function(locale, value) return cls_psy2_rgb.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.damnation_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Проклятие» или выше.
-- -- --------------------------------------------------------------СПОСОБНОСТИ
-- 	-- create_template("ach_class_psy_7_ext_ru", -- Charged with Purpose
-- 	loc_keys = {"loc_achievement_psyker_threshold_kills_reached_with_grenade_chain_name"}, {"ru"}, function(locale, value) return "Заряженные целью" end),
	-- create_template("ach_class_psy_7_ext_desc_ru", -- Kill 2500 enemies stunned by your Smite. Kills made by your Smite. Kills made by your team members also count.
-- 	loc_keys = {"loc_achievement_psyker_threshold_kills_reached_with_grenade_chain_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, оглушённых вашим взрывным талантом "..smite_rgb..". Убийства, совершённые членами вашей команды, также учитываются." end), -- Убейте врагов (2500), оглушенных вашим «Сокрушением». Убийства, совершенные членами команды, тоже учитываются.
	-- create_template("ach_class_psy_7_ext_ru", -- Defy Fate
	-- loc_keys = {"loc_achievement_psyker_time_at_max_unnatural_name"}, {"ru"}, function(locale, value) return "Брось вызов судьбе" end),
	-- create_template("ach_class_psy_7_ext_desc_ru", -- Maintain 15 stacks or more of Disrupt Destiny for a total of 1800 seconds.
-- 	loc_keys = {"loc_achievement_psyker_time_at_max_unnatural_description"}, {"ru"}, function(locale, value) return "Поддерживайте не менее {#color(255, 255, 140)}15{#reset()} зарядов "..COLORS_KWords_ru.Precision_rgb.." от ключевого таланта "..disrdest_rgb.." на протяжении "..COLORS_Numbers.target_rgb.." секунд." end), -- Удерживайте не менее 15 зарядов «Разрушенной судьбы» на протяжении 1800 с.
	-- create_template("ach_red_psy_4_ext_ru", -- Warp Battery
	-- loc_keys = {"loc_achievement_psyker_2_stay_at_max_souls_for_duration_name"}, {"ru"}, function(locale, value) return "Варп-аккумулятор" end),
	-- create_template("ach_red_psy_4_ext_desc_ru", -- While on Malice Threat or higher, in a single session maintain maximum Warp Charges for 120s.
-- 	loc_keys = {"loc_achievement_psyker_2_stay_at_max_souls_for_duration_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, в течение одной миссии сохраняйте максимальное количество зарядов варпа в течение "..COLORS_Numbers.target_rgb.." секунд. {#color(177, 144, 0)}+++ - При выполнении {#reset()}{#color(255, 35, 5)}НЕ ПРИМЕНЯЙТЕ СПОСОБНОСТИ!{#reset()}{#color(177, 144, 0)}\n- Чтобы эффективнее продлевать действие варп-зарядов, используйте модификатор «Психический вампир» или «В огне восстану», если вы используете огненный посох, таланты и/или пассивки, накладывающие «Горение души», а также очень поможет модификатор «Кинетический истребитель». +++{#reset()}" end), -- При угрозе «Злоба» или выше в режиме одиночной игры поддерживайте максимум варп-зарядов в течение 120 с.
	-- create_template("ach_red_psy_6_ext_ru", -- Pick n' Mix
	-- loc_keys = {"loc_achievement_psyker_2_elite_or_special_kills_with_smite_last_10_sec_name"}, {"ru"}, function(locale, value) return "Выбирай и смешивай" end),
	-- create_template("ach_red_psy_6_ext_desc_ru", -- While on Heresy Threat or higher, use Brain Burst to kill 4 different Elite or Specialist enemies within 12s.
-- 	loc_keys = {"loc_achievement_psyker_2_elite_or_special_kills_with_smite_last_10_sec_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, используйте взрывной талант "..bburst0_rgb..", чтобы убить "..COLORS_Numbers.target_rgb.." разных элитных врагов или специалистов в течение "..COLORS_Numbers.time_wind_rgb.." секунд. {#color(177, 144, 0)}+++ - Лучше использовать улучшенную версию - «Разрыв мозга» с модификатором «Кинетический резонанс», который ускоряет на 75% зарядку взрывного таланта. +++{#reset()}" end), -- При угрозе «Ересь» или выше используйте «Взрыв разума», чтобы убить различных врагов (4) ранга элита или специалист за 12 с.
	-- create_template("ach_class_psy_7_ext_ru", -- Mind's Aegis
-- 	loc_keys = {"loc_achievement_psyker_damage_blocked_with_shield_name"}, {"ru"}, function(locale, value) return "Эгида разума" end), -- Защита разума
	-- create_template("ach_class_psy_7_ext_desc_ru", -- Absorb 150000 Damage with Telekine Shield.
-- 	loc_keys = {"loc_achievement_psyker_damage_blocked_with_shield_description"}, {"ru"}, function(locale, value) return "Поглотите "..COLORS_Numbers.target_rgb.." урона с помощью способности "..telekshii_rgb.."." end), -- Поглотите урон (150000) с помощью «Телекинетического щита».
	-- create_template("ach_class_psy_7_ext_ru", -- Skilled in Psykhana
	-- loc_keys = {"loc_achievement_psyker_kills_with_empowered_abilites_name"}, {"ru"}, function(locale, value) return "Знаток Псайканы" end),
	-- create_template("ach_class_psy_7_ext_desc_ru", -- Kill 250 Specialists or Elites using abilities empowered by Empowered Psionics.
-- 	loc_keys = {"loc_achievement_psyker_kills_with_empowered_abilites_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью способностей, усиленных ключевым талантом "..empsionics_rgb.."." end), -- Убейте особых или элитных врагов (250) с помощью способностей, улучшенных «Усиленными псиониками».
	-- create_template("ach_red_psy_2_ext_ru", -- Not Even Close
	-- loc_keys = {"loc_achievement_psyker_2_smite_hound_mid_leap_name"}, {"ru"}, function(locale, value) return "Как бы не так" end),
	-- create_template("ach_red_psy_2_ext_desc_ru", -- Kill a pouncing Pox Hound with Brain Burst.
-- 	loc_keys = {"loc_achievement_psyker_2_smite_hound_mid_leap_description"}, {"ru"}, function(locale, value) return "Убейте, прыгнувшую Чумную гончую, с помощью "..bburst_rgb.." или "..bburst2_rgb.."." end), -- Убейте с помощью «Взрыва разума» Чумную Гончую, когда она набрасывается на вас.
	-- create_template("ach_class_psy_7_ext_ru", -- Mind Lance
-- 	loc_keys = {"loc_achievement_psyker_elite_or_special_kills_with_assail_name"}, {"ru"}, function(locale, value) return "Копьё разума" end), -- Копье разума
	-- create_template("ach_class_psy_7_ext_desc_ru", -- Kill 250 Specialists and Elites using Assail.
-- 	loc_keys = {"loc_achievement_psyker_elite_or_special_kills_with_assail_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью взрывного таланта "..assail_rgb.."." end), -- Убейте особых или элитных врагов (250) с помощью «Нападения».
	-- create_template("ach_red_psy_7_ext_ru", -- Malleus Monstronum
	-- loc_keys = {"loc_achievement_psyker_2_kill_boss_solo_with_smite_name"}, {"ru"}, function(locale, value) return "Маллеус Монстронум" end),
	-- create_template("ach_red_psy_7_ext_desc_ru", -- While on Heresy Threat or higher kill a Monstrosity after damaging 50% of its health with your Brain Burst. (Private Game: Penance can only be completed in a private game)
-- 	loc_keys = {"loc_achievement_psyker_2_kill_boss_solo_with_smite_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, убейте Монстра после того, как вы нанесли ему не менее {#color(255, 255, 140)}50%{#reset()} урона здоровью с помощью взрывного таланта "..bburst_rgb.." или "..bburst2_rgb.."." end), -- При угрозе «Ересь» или выше снесите чудовищу 50% здоровья «Взрывом разума», а затем убейте его.
	-- create_template("ach_class_psy_7_ext_ru", -- Perilous Focus
-- 	loc_keys = {"loc_achievement_psyker_kills_during_overcharge_stance_name"}, {"ru"}, function(locale, value) return "Угрожающая концентрация" end), -- Пагубная концентрация
	-- create_template("ach_class_psy_7_ext_desc_ru", -- Kill 40 enemies under the effects of a single Scrier's Gaze activation.
-- 	loc_keys = {"loc_achievement_psyker_kills_during_overcharge_stance_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, находясь под эффектом способности "..scriersgaze_rgb..", в течение однократного её применения." end), -- Убейте врагов (40), находясь под действием одного заряда «Взора Скрира».
	-- create_template("ach_class_psy_7_ext_ru", -- Overwhelming Presence
	-- loc_keys = {"loc_achievement_psyker_team_elite_aura_kills_name"}, {"ru"}, function(locale, value) return "Подавляющее присутствие" end),
	-- create_template("ach_class_psy_7_ext_desc_ru", -- Kill 2500 Elite or Specialist enemies while under the effect of Kinetic Presence. Kill made by any affected team member also count.
-- 	loc_keys = {"loc_achievement_psyker_team_elite_aura_kills_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов, находясь под действием ауры "..kinetpres_rgb..". Убийства, совершённые любым членом команды, находящимся под действием эффекта ауры, тоже учитываются." end), -- Убейте особых или элитных врагов (2500), находясь под действием «Кинетического присутствия». Убийства, совершенные любым членом команды под действием эффекта, тоже учитываются.
	-- create_template("ach_class_psy_11_ext_ru", -- Power Up
	-- loc_keys = {"loc_achievement_psyker_2_medium_1_name"}, {"ru"}, function(locale, value) return "Полный заряд" end),
	-- create_template("ach_class_psy_11_ext_desc_ru", -- On Malice Threat or higher, kill 100 Elite or Specialist enemies with Brain Burst while at maximum Warp Charges.
-- 	loc_keys = {"loc_achievement_psyker_2_medium_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью "..bburst_rgb.." или "..bburst2_rgb.." пока у вас максимальное количество варп-зарядов." end), -- При угрозе «Злоба» или выше убейте элитных врагов или специалистов (100) «Взрывом разума» с максимальным количеством варп-зарядов.
	-- create_template("ach_class_psy_7_ext_ru", -- Prioritise Targets
	-- loc_keys = {"loc_achievement_psyker_2_easy_1_name"}, {"ru"}, function(locale, value) return "Приоритетные цели" end),
	-- create_template("ach_class_psy_7_ext_desc_ru", -- Kill 200 Elite or Specialist enemies with Brain Burst.
-- 	loc_keys = {"loc_achievement_psyker_2_easy_1_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью "..bburst_rgb.." или "..bburst2_rgb.."." end), -- Убейте элитных врагов или специалистов (200) «Взрывом разума».
	-- create_template("ach_class_psy_12_ext_ru", -- Shoot Fast
-- 	loc_keys = {"loc_achievement_psyker_2_hard_1_name"}, {"ru"}, function(locale, value) return "Стреляй быстро" end), -- Стреляй от бедра
	-- create_template("ach_class_psy_12_ext_desc_ru", -- On Heresy Threat or higher, kill 25 Pox Hounds, Mutants or Scab Trappers using Brain Burst before they incapacitate you or an ally.
-- 	loc_keys = {"loc_achievement_psyker_2_hard_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, убейте "..COLORS_Numbers.target_rgb.." Чумных гончих, Мутантов или Ловушечников, используя "..bburst0_rgb.." или "..bburst1_rgb.." до того как они вывели из строя вас или союзника." end), -- При угрозе «Ересь» или выше убейте Чумных гончих, Мутантов или Скабов-Ловушечников (25) «Взрывом разума», пока они не успели обезвредить вас или союзника.
	-- create_template("ach_class_psy_7_ext_ru", -- Lucky BLow
-- 	loc_keys = {"loc_achievement_psyker_team_critical_hits_name"}, {"ru"}, function(locale, value) return "Удачный удар" end), -- Счастливый удар
	-- create_template("ach_class_psy_7_ext_desc_ru", -- Critically strike 7500 enemies while under the effects of Prescience. Critical strikes made by any affected team member also count.
-- 	loc_keys = {"loc_achievement_psyker_team_critical_hits_description"}, {"ru"}, function(locale, value) return "Нанесите врагам "..COLORS_Numbers.target_rgb.." критических ударов, находясь под действием ауры "..prescience_rgb..". Критические удары любого члена команды, находящегося под действием эффекта ауры, тоже учитываются." end), -- Нанесите врагам критические удары (7500), находясь под действием «Предвидения». Критические удары любого члена команды под действием эффекта тоже учитываются.
	-- create_template("ach_class_psy_8_ext_ru", -- Blessed by Fate
-- 	loc_keys = {"loc_achievement_psyker_2_easy_2_name"}, {"ru"}, function(locale, value) return "Благословенный судьбой" end), -- Хранимый судьбой
	-- create_template("ach_class_psy_8_ext_desc_ru", -- Use Psykinetic's Wrath to survive Perils of the Warp 50 times.
-- 	loc_keys = {"loc_achievement_psyker_2_easy_2_description"}, {"ru"}, function(locale, value) return "Используйте "..COLORS_Numbers.target_rgb.." раз способность "..psy_wrath_rgb.." или "..psy_wrath2_rgb..", чтобы избежать самоподрыва от превышения {#color(255, 35, 5)}100%{#reset()} уровня {#color(160, 82, 45)}Угрозы{#reset()}." end), -- Воспользуйтесь «Психокинетическим гневом» 50 р., чтобы не погибнуть от угозы варпа.
	-- create_template("ach_class_psy_7_ext_ru", -- Empyric Recovery
	-- loc_keys = {"loc_achievement_psyker_team_cooldown_reduced_name"}, {"ru"}, function(locale, value) return "Эмпирическое восстановление" end),
	-- create_template("ach_class_psy_7_ext_desc_ru", -- Restore you or your allies' abilities a total of 2000 seconds faster, while under the effects of Seer's Presence.
-- 	loc_keys = {"loc_achievement_psyker_team_cooldown_reduced_description"}, {"ru"}, function(locale, value) return "Сократите, суммарно на "..COLORS_Numbers.target_rgb.." секунд, время восстановления способностей себе или вашим союзникам с помощью эффекта ауры "..seerspres_rgb.."." end), -- Восстановите способности свои или союзников суммарно на 2000 с. быстрее, находясь под действием «Присутствия провидца».
	-- create_template("ach_red_psy_5_ext_ru", -- Going Out With a Bang
-- 	loc_keys = {"loc_achievement_psyker_2_perils_of_the_warp_elite_kills_name"}, {"ru"}, function(locale, value) return "Взрывной финал" end), -- Эффектный выход
	-- create_template("ach_red_psy_5_ext_desc_ru", -- While on Malice Threat or higher, kill 1 elite enemies with a single Perils of the Warp explosion.
-- 	loc_keys = {"loc_achievement_psyker_2_perils_of_the_warp_elite_kills_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, убейте "..COLORS_Numbers.target_rgb.." элитного врага самоподрывом псайкера от превышения {#color(255, 35, 5)}100%{#reset()} уровня {#color(160, 82, 45)}Угрозы{#reset()}." end), -- При угрозе «Злоба» или выше убейте элитных врагов (1) за однократное применение угрозы от взрыва варпа.

-- ==============================================================OGRYN - ОГРИН
	-- create_template("ach_class_ogr_0_ext_ru", -- Ogryn
-- 	loc_keys = {"loc_class_ogryn_title"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_ogr_rgb end),
-- --------------------------------------------------------------ПРОГРЕСС
	-- create_template("ach_class_ogr_3_ext_ru", -- Beat-em-Up (1-3)
	-- loc_keys = {"loc_achievement_missions_ogryn_2_objective_3_name"}, {"ru"}, function(locale, value) return "Избей-их-всех (1-3)" end), -- Всех порву/Бей их всех (2-3)
	-- create_template("ach_class_ogr_3_1_ext_desc_ru", -- As a Ogryn, complete a Mission of each type.
-- 	loc_keys = {"loc_achievement_missions_ogryn_2_objective_1_description"}, {"ru"}, function(locale, value) return "Завершите по одной миссии каждого типа "..cls_ogr2_rgb.."." end), -- Выполнить Огрином по меньшей мере одно задание каждого типа.
	-- create_template("ach_class_ogr_3_3_ext_desc_ru", -- As a Ogryn, complete a Mission of each type on Malice Threat or higher.
-- 	loc_keys = {"loc_achievement_missions_ogryn_2_objective_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, завершите по одной миссии каждого типа "..cls_ogr2_rgb.."." end), -- Выполнить Огрином по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
	-- create_template("ach_class_ogr_3_4_ext_desc_ru", -- As a Ogryn, complete a Mission of each type on Heresy Threat or higher.
	-- loc_keys = {"loc_achievement_missions_ogryn_2_objective_3_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, завершите по одной миссии каждого типа "..cls_ogr2_rgb.."." end), -- Выполнить Огрином по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.
	-- create_template("ach_class_ogr_8_ext_ru", -- Keep Them Grounded
	-- loc_keys = {"loc_achievement_ogryn_2_easy_2_name"}, {"ru"}, function(locale, value) return "Вали их!" end),
	-- create_template("ach_class_ogr_8_ext_desc_ru", -- Knock Down 5000 enemies.
-- 	loc_keys = {"loc_achievement_ogryn_2_easy_2_description"}, {"ru"}, function(locale, value) return "Сбейте с ног "..COLORS_Numbers.target_rgb.." врагов." end), -- Сбейте с ног врагов 5000 р.
	-- create_template("ach_class_ogr_12_ext_ru", -- Keep Your Friends Close
	-- loc_keys = {"loc_achievement_ogryn_2_hard_1_name"}, {"ru"}, function(locale, value) return "Держи друзей близко" end),
	-- create_template("ach_class_ogr_12_ext_desc_ru", -- On Heresy Threat or higher, complete 3 full Missions without any allies being Knocked Down or Incapacitated for longer than 10 seconds, and without any allies dying.
-- 	loc_keys = {"loc_achievement_ogryn_2_hard_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, завершите полностью "..COLORS_Numbers.target_rgb.." миссии так, чтобы никто из союзников не был выведен из строя или сбит с ног более "..COLORS_Numbers.time_rgb.." секунд и чтобы никто из союзников не был убит." end), -- При угрозе «Ересь» или выше полностью выполните задание 3 р., чтобы ни один союзник не умер и не был сбит с ног или небоестрособен дольше 10 с.
	-- create_template("ach_class_ogr_4_ext_ru", -- Prove Your Worth (1-5)
	-- loc_keys = {"loc_missions_ogryn_2_easy_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Докажи, чего стоишь (1-5)" end),
	-- create_template("ach_class_ogr_4_1_ext_desc_ru", -- Complete 1 Missions on Sedition Threat or higher.
-- 	loc_keys = {"loc_missions_ogryn_2_easy_difficulty_1_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.sedition_rgb.." или выше." end), -- Выполните задания (1) при угрозе «Мятеж» или выше.
	-- create_template("ach_class_ogr_4_2_ext_desc_ru", -- Complete 1 Missions on Uprising Threat or higher.
-- 	loc_keys = {"loc_missions_ogryn_2_easy_difficulty_2_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.uprising_rgb.." или выше." end), -- Выполните задания (1) при угрозе «Восстание» или выше.
	-- create_template("ach_class_ogr_4_3_ext_desc_ru", -- Complete 1 Missions on Malice Threat or higher.
-- 	loc_keys = {"loc_missions_ogryn_2_easy_difficulty_3_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.malice_rgb.." или выше." end), -- Выполните задания (1) при угрозе «Злоба» или выше.
	-- create_template("ach_class_ogr_4_4_ext_desc_ru", -- Complete 1 Missions on Heresy Threat or higher.
-- 	loc_keys = {"loc_missions_ogryn_2_easy_difficulty_4_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.heresy_rgb.." или выше." end), -- Выполните задания (1) при угрозе «Ересь» или выше.
	-- create_template("ach_class_ogr_4_5_ext_desc_ru", -- Complete 1 Missions on Damnation Threat or higher.
-- 	loc_keys = {"loc_missions_ogryn_2_easy_difficulty_5_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.damnation_rgb.." или выше." end), -- Выполните задания (1) при угрозе «Проклятие» или выше.
	-- create_template("ach_red_ogr_4_ext_ru", -- Friends Will be Friends
	-- loc_keys = {"loc_achievement_ogryn_2_win_with_coherency_all_alive_units_name"}, {"ru"}, function(locale, value) return "Друзья останутся друзьями" end),
	-- create_template("ach_red_ogr_4_ext_desc_ru", -- Stay in Conherency with a living teammate at all times during a full Mission on Malice Threat or higher.
-- 	loc_keys = {"loc_achievement_ogryn_2_win_with_coherency_all_alive_units_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, всегда оставайтесь под действием сплочённости с живым союзником на всём протяжении миссии." end), -- При угрозе «Злоба» или выше постоянно оставайтесь под эффектом «Сплоченность» с живым товарищем по команде во время задания.
	-- create_template("ach_red_ogr_8_ext_ru", -- For The Emperor (1-3)
	-- loc_keys = {"loc_group_class_challenges_ogryn_2_1-3_name"}, {"ru"}, function(locale, value) return "За Императора (1-3)" end),
	-- create_template("ach_red_ogr_8_ext_desc_ru", -- Complete the following Penances as the Ogryn
-- 	loc_keys = {"loc_group_class_challenges_ogryn_2_x_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления "..cls_ogr2_rgb.."." end), -- Выполните следующие искупления за Огрина
	-- create_template("ach_class_ogr_14_ext_ru", -- Bone 'ead (1-3)
	-- loc_keys = {"loc_achievement_group_class_ogryn_2_1-3_name"}, {"ru"}, function(locale, value) return "Костагаловый (1-3)" end), -- Костяная башка (1-3)
	-- create_template("ach_class_ogr_14_ext_desc_ru", -- Complete the Following Penances as the Ogryn.
-- 	loc_keys = {"loc_achievement_group_class_ogryn_2_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя ".. cls_ogr2_rgb.."." end), -- Выполните следующие искупления за Огрина
	-- create_template("ach_class_ogr_1_ext_ru", -- Got a Bone to Pick (1-6)
	-- loc_keys = {"loc_achievement_rank_ogryn_2_6_name"}, {"ru"}, function(locale, value) return "Мститель (1-6)" end), -- Крепкий орешек (1-6)
	-- create_template("ach_class_ogr_1_ext_desc_ru", -- Reach Trust Level 30 as a Ogryn.
-- 	loc_keys = {"loc_achievement_rank_ogryn_2_x_description"}, {"ru"}, function(locale, value) return "Достигните "..COLORS_Numbers.target_rgb.." уровня доверия ".. cls_ogr2_rgb.."." end), -- Получить уровень доверия 30, играя за Огрина
	-- create_template("ach_class_ogr_9_ext_ru", -- Promotion Material (1)
-- 	loc_keys = {"loc_group_ogryn_2_rank_4_difficulty_3_name"}, {"ru"}, function(locale, value) return "Задания для продвижения (1)" end), -- Материалы пропаганды (1)
	-- create_template("ach_class_ogr_9_ext_desc_ru", -- Complete the following Penances as the Ogryn
-- 	loc_keys = {"loc_group_ogryn_2_rank_4_difficulty_3_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя ".. cls_ogr2_rgb.."." end), -- Выполните следующие искупления за Огрина.
	-- create_template("ach_class_ogr_10_ext_ru", -- Promotion Material (2)
-- 	loc_keys = {"loc_group_ogryn_2_rank_5_difficulty_4_name"}, {"ru"}, function(locale, value) return "Задания для продвижения (2)" end), -- Материалы пропаганды (2)
	-- create_template("ach_class_ogr_10_ext_desc_ru", -- Complete the following Penances as the Ogryn
-- 	loc_keys = {"loc_group_ogryn_2_rank_5_difficulty_4_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя ".. cls_ogr2_rgb.."." end), -- Выполните следующие искупления за Огрина.
	-- create_template("ach_class_ogr_2_ext_ru", -- Built Like a Tank (1-5)
	-- loc_keys = {"loc_achievement_missions_ogryn_2_1-5_name"}, {"ru"}, function(locale, value) return "Крепкий как танк (1-5)" end), -- Настоящий танк (1-5)
	-- create_template("ach_class_ogr_2_ext_desc_ru", -- Complete 100 Missions as a Ogryn.
-- 	loc_keys = {"loc_achievement_missions_ogryn_2_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий "..cls_ogr2_rgb.."." end), -- Выполнить Огрином задания: 100.
	-- create_template("ach_class_ogr_5_ext_ru", -- First Steps (1)
	-- loc_keys = {"loc_group_ogryn_2_rank_1_difficulty_1_name"}, {"ru"}, function(locale, value) return "Первые шаги (1)" end),
	-- create_template("ach_class_ogr_5_ext_desc_ru", -- Complete the following Penances as the Ogryn
-- 	loc_keys = {"loc_group_ogryn_2_rank_1_difficulty_1_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя ".. cls_ogr2_rgb.."." end), -- Выполните следующие искупления за Огрина.
	-- create_template("ach_class_ogr_6_ext_ru", -- First Steps (2)
	-- loc_keys = {"loc_group_ogryn_2_rank_2_difficulty_2_name"}, {"ru"}, function(locale, value) return "Первые шаги (2)" end),
	-- create_template("ach_class_ogr_6_ext_desc_ru", -- Complete the following Penances as the Ogryn
-- 	loc_keys = {"loc_group_ogryn_2_rank_2_difficulty_2_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, играя ".. cls_ogr2_rgb.."." end), -- Выполните следующие искупления за Огрина.
	-- create_template("ach_class_ogr_12_ext_ru", -- Cleave Them Down
	-- loc_keys = {"loc_achievement_ogryn_2_medium_2_name"}, {"ru"}, function(locale, value) return "Рассеки их" end), -- Порви их!
	-- create_template("ach_class_ogr_12_ext_desc_ru", -- On Malice Threat or higher, kill 2 enemies with a single Melee Attack 250 times.
-- 	loc_keys = {"loc_achievement_ogryn_2_medium_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, убейте "..COLORS_Numbers.amount_rgb.." врагов одной атакой ближнего боя "..COLORS_Numbers.target_rgb.." раз." end), -- При угрозе «Злоба» или выше 250 р. убейте врагов (2) одной атакой ближнего бой.
	-- create_template("ach_class_ogr_7_ext_ru", -- Help Everyone
-- 	loc_keys = {"loc_achievement_ogryn_2_easy_1_name"}, {"ru"}, function(locale, value) return "Помогай всем" end), -- Спаси всех
	-- create_template("ach_class_ogr_7_ext_desc_ru", -- Revive or Assist 40 Knocked Down or Incapacitated allies.
-- 	loc_keys = {"loc_achievement_ogryn_2_easy_1_description"}, {"ru"}, function(locale, value) return "Возродите или поднимите "..COLORS_Numbers.target_rgb..", выведенных из строя или сбитых с ног, союзников." end), -- Воскресите небоеспособных союзников или помогите союзникам, сбитым с ног, 40 р.
	-- create_template("ach_red_ogr_1_ext_ru", -- Fight the Good Fight (1-5)
	-- loc_keys = {"loc_missions_ogryn_2_medium_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Сражайся достойно (1-5)" end),
	-- create_template("ach_red_ogr_1_1_ext_desc_ru", -- Complete 5 Missions on Sedition Threat or higher.
-- 	loc_keys = {"loc_missions_ogryn_2_medium_difficulty_1_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.sedition_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Мятеж» или выше.
	-- create_template("ach_red_ogr_1_2_ext_desc_ru", -- Complete 5 Missions on Uprising Threat or higher.
-- 	loc_keys = {"loc_missions_ogryn_2_medium_difficulty_2_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.uprising_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Восстание» или выше.
	-- create_template("ach_red_ogr_1_3_ext_desc_ru", -- Complete 5 Missions on Malice Threat or higher.
-- 	loc_keys = {"loc_missions_ogryn_2_medium_difficulty_3_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.malice_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Злоба» или выше.
	-- create_template("ach_red_ogr_1_4_ext_desc_ru", -- Complete 5 Missions on Heresy Threat or higher.
-- 	loc_keys = {"loc_missions_ogryn_2_medium_difficulty_4_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.heresy_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Ересь» или выше.
	-- create_template("ach_red_ogr_1_5_ext_desc_ru", -- Complete 5 Missions on Damnation Threat or higher.
-- 	loc_keys = {"loc_missions_ogryn_2_medium_difficulty_5_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.damnation_rgb.." или выше." end), -- Выполните задания (5) при угрозе «Проклятие» или выше.
-- --------------------------------------------------------------СПОСОБНОСТИ
	-- create_template("ach_class_ogr_11_ext_ru", -- Munitorum's Favour
	-- loc_keys = {"loc_achievement_ogryn_leadbelcher_free_shot_name"}, {"ru"}, function(locale, value) return "Благосклонность Муниторума" end),
	-- create_template("ach_class_ogr_11_ext_desc_ru", -- Shoot 4500 free rounds of ammo, courtesy of the Burst Limiter Override.
-- 	loc_keys = {"loc_achievement_ogryn_leadbelcher_free_shot_description"}, {"ru"}, function(locale, value) return "Отстреляйте "..COLORS_Numbers.target_rgb.." бесплатных патронов, полученных с помощью ключевого таланта "..burstlimo_rgb.."." end), -- Стреляйте бесплатными боеприпасами (4500) благодаря «Взлому отсечки очереди».
	-- create_template("ach_class_ogr_13_ext_ru", -- Be Your Best
	-- loc_keys = {"loc_achievement_ogryn_2_hard_2_name"}, {"ru"}, function(locale, value) return "Будь лучшим" end),
	-- create_template("ach_class_ogr_13_ext_desc_ru", -- On Heresy Threat or higher, hit 4 consecutive Elite or Specialist enemies with Big Boxes of Hurt, without missing. Do this 5 times.
	-- loc_keys = {"loc_achievement_ogryn_2_hard_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, попадите не промахиваясь последовательно по "..COLORS_Numbers.amount_rgb.." элитным врагам или специалистам, используя взрывной талант "..big_box_rgb.." или "..big_box2_rgb..". Повторите это задание "..COLORS_Numbers.target_rgb.." раз." end), -- При угрозе «Ересь» или выше попадите по элитным врагам или специалистам х4 подряд «Ящиком, полным боли", ни разу не промахиваясь. Повторите 5 р.
	-- create_template("ach_class_ogr_11_ext_ru", -- Loyal Protector
	-- loc_keys = {"loc_achievement_ogryn_team_toughness_restored_aura_name"}, {"ru"}, function(locale, value) return "Верный защитник" end),
	-- create_template("ach_class_ogr_11_ext_desc_ru", -- Restore a total of 15000 Toughness to you or allies in coherency with Stay Close.
	-- loc_keys = {"loc_achievement_ogryn_team_toughness_restored_aura_description"}, {"ru"}, function(locale, value) return "Восстановите суммарно "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb.." себе или союзникам, находящимся под действием сплоченности, с помощью эффекта ауры "..stayclose_rgb.."." end), -- Восстановите стойкость свою или союзников под действием «Сплоченности» (суммарно 15000) с помощью «Держись рядом».
	-- create_template("ach_class_ogr_11_ext_ru", -- Pick on Someone Your Own Size
-- 	loc_keys = {"loc_achievement_ogryn_taunt_shout_hit_name"}, {"ru"}, function(locale, value) return "Выбери кого-то своего размера" end), -- Выбирай по размеру
	-- create_template("ach_class_ogr_11_ext_desc_ru", -- Taunt 1000 Specialist or Elite enemies using Loyal Protector
-- 	loc_keys = {"loc_achievement_ogryn_taunt_shout_hit_description"}, {"ru"}, function(locale, value) return "Спровоцируйте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью способности "..loyalprot_rgb.."." end), -- Спровоцируйте особых или элитных врагов (1000) с помощью «Верного защитника».
	-- create_template("ach_red_ogr_5_ext_ru", -- Gone Bowling
	-- loc_keys = {"loc_achievement_ogryn_2_bull_rushed_100_enemies_name"}, {"ru"}, function(locale, value) return "Играю в боулинг" end),
	-- create_template("ach_red_ogr_5_ext_desc_ru", -- Knock down 60 enemies with a single Bull Rush on Malice Threat or higher.
-- 	loc_keys = {"loc_achievement_ogryn_2_bull_rushed_100_enemies_description"}, {"ru"}, function(locale, value) return "Сбейте "..COLORS_Numbers.target_rgb.." врагов за одно использование способности "..bull_rush_rgb.." или "..bull_rush4_rgb.." на сложности "..COLORS_KWords_ru.malice_rgb.." или выше." end), -- При угрозе «Злоба» или выше сбейте с ног одним зарядом «Бычьего натиска» врагов: 60.
	-- create_template("ach_red_ogr_6_ext_ru", -- Don't Stop Me Now!
	-- loc_keys = {"loc_achievement_ogryn_2_bull_rushed_70_within_25_seconds_name"}, {"ru"}, function(locale, value) return "Меня не остановить!" end),
	-- create_template("ach_red_ogr_6_ext_desc_ru", -- Move 40 metres with Bull Rush in under 20s on Heresy Threat or higher. (Private Game: Penance can only be completed in a private game)
-- 	loc_keys = {"loc_achievement_ogryn_2_bull_rushed_70_within_25_seconds_description"}, {"ru"}, function(locale, value) return "Переместитесь на "..COLORS_Numbers.target_rgb.." метров с помощью способности "..bull_rush_rgb.." или "..bull_rush4_rgb.." в течение "..COLORS_Numbers.time_wind_rgb.." секунд на сложности "..COLORS_KWords_ru.heresy_rgb.." или выше. {#color(177, 144, 0)}+++ - Самый простой способ: применить стимулятор Концентрации(жёлтый), потом применить способность «Неукротимость», пробежать 20 полных метров, способность быстро откатится и можно бежать дальше вперёд или назад.\n- Не нажимайте кнопку [S](назад) или ПКМ(блок)! +++{#reset()}" end), -- При угрозе «Ересь» или выше переместитесь на 40 м с помощью «Бычьего натиска» менее чем за 20 с.
	-- create_template("ach_class_ogr_11_ext_ru", -- Can't Catch Me!
-- 	loc_keys = {"loc_achievement_ogryn_ogryn_feel_no_pain_kills_at_max_name"}, {"ru"}, function(locale, value) return "Меня не поймать!" end), -- Меня не поймать
	-- create_template("ach_class_ogr_11_ext_desc_ru", -- Kill 2500 enemies while at 7 stacks or higher of Feel No Pain.
-- 	loc_keys = {"loc_achievement_ogryn_feel_no_pain_kills_at_max_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, имея не менее {#color(255, 255, 140)}7{#reset()} зарядов ключевого таланта "..feelnop_rgb.."." end), -- Убейте врагов (2500), сохраняя не менее 7 ед. заряда «Неболита».
	-- create_template("ach_class_ogr_11_ext_ru", -- Eat This!
-- 	loc_keys = {"loc_achievement_ogryn_grenade_rock_elites_or_specialists_name"}, {"ru"}, function(locale, value) return "На, подавись!" end), -- Получи!
	-- create_template("ach_class_ogr_11_ext_desc_ru", -- Kill 75 Specialists or Elites with the Big Friendly Rock.
-- 	loc_keys = {"loc_achievement_ogryn_grenade_rock_elites_or_specialists_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью взрывного таланта "..bigfriendro_rgb.."." end), -- Убейте особых или элитных врагов (75) с помощью «Большого дружелюбного валуна».
	-- create_template("ach_class_ogr_11_ext_ru", -- Pile On
	-- loc_keys = {"loc_achievement_ogryn_team_heavy_aura_kills_name"}, {"ru"}, function(locale, value) return "Навались" end),
	-- create_template("ach_class_ogr_11_ext_desc_ru", -- Kill 5000 enemies with Heavy Attacks while under the effect of Bonebreaker's Aura. Heavy Attack kills made by your team members also count.
-- 	loc_keys = {"loc_achievement_ogryn_team_heavy_aura_kills_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов заряженными атаками, находясь под действием ауры "..bonebraura_rgb..". Убийства заряженными атаками, совершённые членами команды также засчитываются." end), -- Убейте врагов (5000) мощными атаками, находясь под действием «Ауры костолома». Если члены команды убивают мощными атаками, это тоже учитывается.
	-- create_template("ach_class_ogr_11_ext_ru", -- Sustained Fire
-- 	loc_keys = {"loc_achievement_ogryn_kills_during_max_stacks_heavy_hitter_name"}, {"ru"}, function(locale, value) return "Непрерывные удары" end), -- Непрерывный огонь
	-- create_template("ach_class_ogr_11_ext_desc_ru", -- Kill 5000 enemies with heavy attacks, while maintaining 5 stacks of Heavy Hitter.
-- 	loc_keys = {"loc_achievement_ogryn_kills_during_max_stacks_heavy_hitter_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов заряженными атаками, удерживая {#color(255, 255, 140)}5{#reset()} зарядов ключевого таланта "..heavyhitter_rgb.."." end), -- Убейте врагов (5000) мощными атаками, удерживая 5 зарядов «Тяжеловеса».
	-- create_template("ach_class_ogr_11_ext_ru", -- Clear the Path
	-- loc_keys = {"loc_achievement_ogryn_2_medium_1_name"}, {"ru"}, function(locale, value) return "Расчисти путь" end),
	-- create_template("ach_class_ogr_11_ext_desc_ru", -- On Malice Threat or higher, knock down 3 Ranged enemies using Bull Rush, 25 times.
	-- loc_keys = {"loc_achievement_ogryn_2_medium_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb.." или выше, "..COLORS_Numbers.target_rgb.." раз сбейте с ног "..COLORS_Numbers.num_enemies_rgb.." врагов с дальнобойным оружием, используя способность "..bull_rush_rgb.." или "..bull_rush4_rgb.."." end), -- При угрозе «Злоба» или выше сбейте с ног врагов (3) с дистанционной атакой с помощью «Бычьего натиска» 25 р.
	-- create_template("ach_class_ogr_11_ext_ru", -- Crowd Control
	-- loc_keys = {"loc_achievement_ogryn_grenade_frag_group_of_enemies_name"}, {"ru"}, function(locale, value) return "Сдерживание толпы" end),
	-- create_template("ach_class_ogr_11_ext_desc_ru", -- With one Frag Bomb kill 25 enemies, 25 times.
-- 	loc_keys = {"loc_achievement_ogryn_grenade_frag_group_of_enemies_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.amount_rgb.." врагов одной осколочной гранатой взрывного таланта "..fragbomb_rgb..". Повторите это задание "..COLORS_Numbers.target_rgb.." раз." end), -- Убейте врагов (25) одной «Осколочной бомбой» 25 р.
	-- create_template("ach_class_ogr_11_ext_ru", -- Spray and Pray (To the Emperor)
-- 	loc_keys = {"loc_achievement_ogryn_kills_during_barrage_threshold_name"}, {"ru"}, function(locale, value) return "Стреляй и молись (Императору)" end), -- Стреляй и восхваляй (Императора)
	-- create_template("ach_class_ogr_11_ext_desc_ru", -- Kill 25 enemies, 50 times, during a single activation of Point-Blank Barrage.
	-- loc_keys = {"loc_achievement_ogryn_kills_during_barrage_threshold_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.amount_rgb.." врагов за однократное применение способности "..pbbarrage_rgb..". Повторите это задание "..COLORS_Numbers.target_rgb.." раз." end), -- Убейте врагов (25) 50 р. во время однократной активации «Решительного натиска».
	-- create_template("ach_class_ogr_11_ext_ru", -- You Can't Hide from Us!
-- 	loc_keys = {"loc_achievement_ogryn_team_suppressed_aura_kills_name"}, {"ru"}, function(locale, value) return "Тебе от нас не спрятаться!" end), -- От нас не спрятаться!
	-- create_template("ach_class_ogr_11_ext_desc_ru", -- Kill 7500 suppressed enemies while under the effect of Coward Culling. Kills made by any affected team member also count.
-- 	loc_keys = {"loc_achievement_ogryn_team_suppressed_aura_kills_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." подавленных врагов, находясь под эффектом ауры "..cowculaura_rgb..". Убийства, совершённые любым членом команды под действием эффекта ауры, также учитываются." end), -- Убейте ослабленных врагов (7500), находясь под действием «Трусливые отбросы». Убийства, совершенные любым членом команды под действием эффекта, тоже учитываются.
	-- create_template("ach_red_ogr_3_ext_ru", -- Something In Your Eye
-- 	loc_keys = {"loc_achievement_ogryn_2_killed_corruptor_with_grenade_impact_name"}, {"ru"}, function(locale, value) return "У тебя что-то в глазу" end), -- Нечто в твоих глазах
	-- create_template("ach_red_ogr_3_ext_desc_ru", -- Kill a Corruptor by hitting it in the eye with your grenade box.
	-- loc_keys = {"loc_achievement_ogryn_2_killed_corruptor_with_grenade_impact_description"}, {"ru"}, function(locale, value) return "Убейте Осквернителя, попав ему ящиком с гранатами в глаз. {#color(177, 144, 0)}+++ - Срабатывает обычно только с начальным «Ящиком, полным боли», но иногда багуется и срабатывает с улучшенным ящиком «Кидаю бомбу!»(в т.ч. не убивая Осквернителя).\n- Осквернитель - это хаотический нарост с глазом в центре. На миссиях вы сначала будете сбивать три его щупальца, чтобы Осквернитель открыл свой глаз. +++{#reset()}" end), -- Убейте осквернителя, попав ему в глаз гранатой.
	-- create_template("ach_red_ogr_7_ext_ru", -- Heavyweight Champion
	-- loc_keys = {"loc_achievement_ogryn_2_bull_rushed_4_ogryns_name"}, {"ru"}, function(locale, value) return "Чемпион-тяжеловес" end),
	-- create_template("ach_red_ogr_7_ext_desc_ru", -- On Heresy Threat or higher, knock down 4 enemy Ogryns (Bulwarks, Crushers, Plague Ogryns, and/or Reapers) with a single Bull Rush charge.
	-- loc_keys = {"loc_achievement_ogryn_2_bull_rushed_4_ogryns_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb.." или выше, сбейте с ног "..COLORS_Numbers.target_rgb.." любых вражеских огрина одним зарядом способности  "..bull_rush_rgb.." или "..bull_rush4_rgb..". Огринами являются: Бастион, Дробитель, Жнец и Чумной огрин. {#color(177, 144, 0)}+++ - Огрины могут быть в любых вариациях, главное, чтобы не менее 4 в группе.\n- Учитывайте, что Чумной огрин останавливает движение. +++{#reset()}" end), -- При угрозе «Ересь» или выше сбейте с ног одним зарядом «Бычьего натиска» вражеских Огринов (Бастион, Дробитель, Чумной Огрин и/или Жнец): 4.
	-- create_template("ach_red_ogr_2_ext_ru", -- I'm in Charge
	-- loc_keys = {"loc_achievement_ogryn_2_bull_rushed_charging_ogryn_name"}, {"ru"}, function(locale, value) return "Я главнее" end),
	-- create_template("ach_red_ogr_2_ext_desc_ru", -- Use Bull Rush to interrupt a Plague Ogryn's charge.
-- 	loc_keys = {"loc_achievement_ogryn_2_bull_rushed_charging_ogryn_description"}, {"ru"}, function(locale, value) return "Используйте способность "..bull_rush_rgb.." или "..bull_rush4_rgb..", чтобы прервать рывок Чумного Огрина. {#color(177, 144, 0)}+++ - Примените способность, когда Чумной Огрин побежит на вас или на союзника.\n- Перед рывком Чумной Огрин сначала кричит, потом пригибается и бежит. +++{#reset()}" end), -- Используйте «Бычий натиск», чтобы прервать рывок Чумного Огрина.




-- ==============================================================TACTICAL - ТАКТИЧЕСКИЕ
-- ==============================================================OFFENSIVE - АТАКА
	-- create_template("ach_off_0_ext_ru", -- Offensive
-- 	loc_keys = {"loc_achievement_category_offensive_label"}, {"ru"}, function(locale, value) return "Атака" end), -- Наступление

	-- create_template("ach_off_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_enemies_killed_by_poxburster_name"}, {"ru"}, function(locale, value) return "Враг моего врага - мой друг" end), -- Враг моего врага - мой друг
	-- create_template("ach_off_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_enemies_killed_by_poxburster_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, уничтожив рядом с ними Чумного камикадзе." end), -- Убейте врагов (10), уничтожив рядом с ними чумного Взрывуна.

	-- create_template("ach_off_5_ext_ru", -- Flyswatter
-- 	loc_keys = {"loc_achievement_enemies_climbing_name"}, {"ru"}, function(locale, value) return "Мухобойка" end),
	-- create_template("ach_off_5_ext_desc_ru", -- Kill 50 climbing enemies.
-- 	loc_keys = {"loc_achievement_enemies_climbing_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, карабкающихся наверх." end), -- Убить карабкающихся врагов: 50.

	-- create_template("ach_off_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_enemies_killed_by_barrels_name"}, {"ru"}, function(locale, value) return "На примете" end), -- На примете
	-- create_template("ach_off_1_ext_desc_ru", -- Kill 500000 enemies in total.
	-- loc_keys = {"loc_achievement_enemies_killed_by_barrels_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов с помощью взрывных бочек." end), -- Убейте врагов (100) с помощью взрывных бочек.

	-- create_template("ach_off_7_ext_ru", -- Attack, Attack, Attack!
-- 	loc_keys = {"loc_achievement_group_offence_name"}, {"ru"}, function(locale, value) return "Атакуй, атакуй, атакуй!" end), -- Нападай, нападай!
	-- create_template("ach_off_7_ext_desc_ru", -- Complete the following Offence Penances.
-- 	loc_keys = {"loc_achievement_group_offence_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления атаки." end), -- Выполните следующие искупления с атакой.

	-- create_template("ach_off_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_enemies_killed_by_barrels_name"}, {"ru"}, function(locale, value) return "Не время для ран" end), -- Не время для ран
	-- create_template("ach_off_1_ext_desc_ru", -- 
	-- loc_keys = {"loc_achievement_enemies_killed_by_barrels_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов с помощью взрывных бочек." end), -- Действуя сообща, выполните задание при угрозе «Ересь» или выше так, чтобы всех вас не сбили с ног более 5 р.

	-- create_template("ach_off_4_ext_ru", -- Frenzied Killer (1-3)
	-- loc_keys = {"loc_achievement_fast_enemies_1-3_name"}, {"ru"}, function(locale, value) return "Бешеный убийца (1-3)" end), -- Неистовый убийца (1-3)
	-- create_template("ach_off_4_ext_desc_ru", -- Kill 120 enemies in 30s.
-- 	loc_keys = {"loc_achievement_fast_enemies_x_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов за "..COLORS_Numbers.time_wind_rgb.." секунд." end), -- Убить врагов: 60 за 30 с.
	-- create_template("ach_off_1_ext_ru", -- Purge the Heretic (1-5)
	-- loc_keys = {"loc_achievement_enemies_1-5_name"}, {"ru"}, function(locale, value) return "Очистить еретиков (1-5)" end),
	-- create_template("ach_off_1_ext_desc_ru", -- Kill 500000 enemies in total.
-- 	loc_keys = {"loc_achievement_enemies_x_description"}, {"ru"}, function(locale, value) return "Убейте в сумме "..COLORS_Numbers.target_rgb.." врагов." end), -- Убить всего врагов: 500000.
	-- create_template("ach_off_6_ext_ru", -- Dodge This (1-3)
	-- loc_keys = {"loc_achievement_fast_headshot_1-3_name"}, {"ru"}, function(locale, value) return "Увернись от этого (1-3)" end), -- Попробуй увернись (1-3)
	-- create_template("ach_off_6_ext_desc_ru", -- Kill 15 enemies with Headshots within 10s.
-- 	loc_keys = {"loc_achievement_fast_headshot_x_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов выстрелами в голову в течение {#color(255, 255, 140)}10{#reset()} секунд." end), -- Убить врагов выстрелами в голову: 15 за 10 с.
	-- create_template("ach_off_3_ext_ru", -- Time to Die (1-3)
	-- loc_keys = {"loc_achievement_boss_fast_1-3_name"}, {"ru"}, function(locale, value) return "Время умирать (1-3)" end), -- Пора умирать (1-3)
	-- create_template("ach_off_3_ext_desc_ru", -- Kill a Monstrosity in 5s or less.
-- 	loc_keys = {"loc_achievement_boss_fast_x_description"}, {"ru"}, function(locale, value) return "Убейте Монстра за "..COLORS_Numbers.target_rgb.." секунд или меньше." end), -- Убить чудовище за 5 с или меньше.
	-- create_template("ach_off_2_ext_ru", -- Serial Killer
	-- loc_keys = {"loc_achievement_consecutive_headshots_name"}, {"ru"}, function(locale, value) return "Серийный убийца" end),
	-- create_template("ach_off_2_ext_desc_ru", -- Kill 20 consecutive enemies with headshots.
-- 	loc_keys = {"loc_achievement_consecutive_headshots_description"}, {"ru"}, function(locale, value) return "Совершите "..COLORS_Numbers.target_rgb.." последовательных убийств выстрелами врагам в голову." end), -- Последовательно убейте выстрелами в голову врагов (20).

-- ==============================================================DEFENSIVE - ЗАЩИТА
	-- create_template("ach_red_vet_0_ext_ru", -- Defensive
-- 	loc_keys = {"loc_achievement_category_defensive_label"}, {"ru"}, function(locale, value) return "Защита" end), -- Оборона

	-- create_template("ach_red_vet_3_ext_ru", -- Flawless Execution (1-3)
	-- loc_keys = {"loc_achievement_flawless_mission_1-3_name"}, {"ru"}, function(locale, value) return "Безупречное исполнение (1-3)" end), -- Безупречная казнь (1-3)
	-- create_template("ach_red_vet_3_ext_desc_ru", -- Complete 10 missions in a row without being downed on Malice Threat or higher.
-- 	loc_keys = {"loc_achievement_flawless_mission_x_description"}, {"ru"}, function(locale, value) return "Выполните "..COLORS_Numbers.target_rgb.." миссий подряд, не будучи ни разу сбитым с ног, на сложности "..COLORS_KWords_ru.malice_rgb.." или выше." end), -- При угрозе «Злоба» или выше выполнить несколько заданий подряд (15) так, чтобы никто в группе не был сбит с ног.
	-- create_template("ach_red_vet_8_ext_ru", -- Case for the Defence
-- 	loc_keys = {"loc_achievement_group_defence_name"}, {"ru"}, function(locale, value) return "Дело в пользу защиты" end), -- Версия защиты
	-- create_template("ach_red_vet_8_ext_desc_ru", -- Complete the following Defence Penances.
-- 	loc_keys = {"loc_achievement_group_defence_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления защиты." end), -- Выполните следующие искупления с обороной.
	-- create_template("ach_red_vet_4_ext_ru", -- Zigging and Zagging
-- 	loc_keys = {"loc_achievement_total_sprint_dodges_name"}, {"ru"}, function(locale, value) return "Уворачиваться и уклоняться" end), -- Вертись волчком
	-- create_template("ach_red_vet_4_ext_desc_ru", -- Dodge a total of 99 shots by sprinting.
-- 	loc_keys = {"loc_achievement_total_sprint_dodges_description"}, {"ru"}, function(locale, value) return "Уклонитесь от "..COLORS_Numbers.target_rgb.." выстрелов с помощью бега." end), -- При помощи бега уклониться от выстрелов: 99.
	-- create_template("ach_red_vet_1_ext_ru", -- The Emperor Protects (1-3)
	-- loc_keys = {"loc_achievement_fast_blocks_1-3_name"}, {"ru"}, function(locale, value) return "Император защищает (1-3)" end),
	-- create_template("ach_red_vet_1_ext_desc_ru", -- Block 900 damage in 10s.
-- 	loc_keys = {"loc_achievement_fast_blocks_x_description"}, {"ru"}, function(locale, value) return "Заблокируйте "..COLORS_Numbers.target_rgb.." единиц урона за "..COLORS_Numbers.time_wind_rgb.." секунд." end), -- Блокировать 900 ед. урона в течение 10 с.
	-- create_template("ach_red_vet_7_ext_ru", -- Untouchable
	-- loc_keys = {"loc_achievement_mission_no_damage_name"}, {"ru"}, function(locale, value) return "Неприкасаемый" end),
	-- create_template("ach_red_vet_7_ext_desc_ru", -- Complete a Mission without taking any Health damage.
-- 	loc_keys = {"loc_achievement_mission_no_damage_description"}, {"ru"}, function(locale, value) return "Завершите миссию, не получив урона "..COLORS_KWords_ru.Health_rgb.."." end), -- Выполнить задание, не получив урона.
	-- create_template("ach_red_vet_2_ext_ru", -- Preternatural Dodge (1-3)
	-- loc_keys = {"loc_achievement_consecutive_dodge_1-3_name"}, {"ru"}, function(locale, value) return "Сверхъестественное уклонение (1-3)" end),
	-- create_template("ach_red_vet_2_ext_desc_ru", -- Dodge 20 attacks without taking damage.
-- 	loc_keys = {"loc_achievement_consecutive_dodge_x_description"}, {"ru"}, function(locale, value) return "Уклонитесь от "..COLORS_Numbers.target_rgb.." атак, не получив урона." end), -- Уклониться от ударов без получения урона: 20.
	-- create_template("ach_red_vet_6_ext_ru", -- Violent Tendencies
	-- loc_keys = {"loc_achievement_melee_toughness_name"}, {"ru"}, function(locale, value) return "Склонность к жестокости" end),
	-- create_template("ach_red_vet_6_ext_desc_ru", -- Regenerate 40000 Toughness from melee kills.
-- 	loc_keys = {"loc_achievement_melee_toughness_description"}, {"ru"}, function(locale, value) return "Восстановите "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb.." от убийств в ближнем бою." end), -- С помощью убийств в ближнем бою восстановить стойкость: 40000.
	-- create_template("ach_red_vet_5_ext_ru", -- Figure Four
-- 	loc_keys = {"loc_achievement_slide_dodge_name"}, {"ru"}, function(locale, value) return "Выход в ноги" end), -- Ускользнул
	-- create_template("ach_red_vet_5_ext_desc_ru", -- Use your Slide to avoid an enemy attack.
-- 	loc_keys = {"loc_achievement_slide_dodge_description"}, {"ru"}, function(locale, value) return "Используйте подкат, чтобы избежать атаки врага." end), -- Использовать «Скольжение» для уклонения от атаки врага.

-- ==============================================================TEAM - КОМАНДА
	-- create_template("ach_tea_0_ext_ru", -- Team
	-- loc_keys = {"loc_achievement_category_teamplay_label"}, {"ru"}, function(locale, value) return "Команда" end),


	-- create_template("ach_tea_1_ext_ru", -- War's Not Over (1-5)
	-- loc_keys = {"loc_achievement_revive_1-5_name"}, {"ru"}, function(locale, value) return "Война не окончена (1-5)" end),
	-- create_template("ach_tea_1_ext_desc_ru", -- Rescue a total of 500 Operatives.
-- 	loc_keys = {"loc_achievement_revive_x_description"}, {"ru"}, function(locale, value) return "Спасите в общей сложности "..COLORS_Numbers.target_rgb.." оперативников." end), -- Спасти оперативников: 500.
	-- create_template("ach_tea_6_ext_ru", -- Discipline & Teamwork (1-5)
	-- loc_keys = {"loc_achievement_deployables_1-5_name"}, {"ru"}, function(locale, value) return "Дисциплина и командная работа (1-5)" end),
	-- create_template("ach_tea_6_ext_desc_ru", -- Share 500 ammo or health packs.
-- 	loc_keys = {"loc_achievement_deployables_x_description"}, {"ru"}, function(locale, value) return "Поделитесь "..COLORS_Numbers.target_rgb.." раз боеприпасами или медикаментами." end), -- Поделиться боеприпасами или аптечкой: 500.
	-- create_template("ach_tea_7_ext_ru", -- Good Samaritan
	-- loc_keys = {"loc_achievement_group_cooperation_name"}, {"ru"}, function(locale, value) return "Добрый самаритянин" end),
	-- create_template("ach_tea_7_ext_desc_ru", -- Complete the following Team Penances.
-- 	loc_keys = {"loc_achievement_group_cooperation_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления команды." end), -- Выполнить следующие командные искупления.
	-- create_template("ach_tea_4_ext_ru", -- Buddy Up
	-- loc_keys = {"loc_achievement_coherency_toughness_name"}, {"ru"}, function(locale, value) return "Сотрудничество" end), -- Закадычные друзья
	-- create_template("ach_tea_4_ext_desc_ru", -- Replenish 2000 Toughness from Coherency.
-- 	loc_keys = {"loc_achievement_coherency_toughness_description"}, {"ru"}, function(locale, value) return "Восстановите "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb.." под действием Сплочённости." end), -- С помощью «Сплоченности» восстановить стойкость: 2000.
-- 	-- create_template("ach_tea_3_ext_ru", -- Dream Team
-- 	-- loc_keys = {"loc_achievement_flawless_team_name",},
-- 	-- locales = {"ru",}, handle_func = function(locale, value)
-- 	-- return "Команда мечты" end),
	-- create_template("ach_tea_3_ext_desc_ru", -- Complete 100 missions without anyone being downed.
-- 	loc_keys = {"loc_achievement_flawless_team_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий так, чтобы никого из вас не сбили с ног." end), -- Завершите 100 заданий так, чтобы никто в группе не был сбит с ног.
	-- create_template("ach_tea_5_ext_ru", -- Leave No One Behind
-- 	loc_keys = {"loc_achievement_revive_all_namе"}, {"ru"}, function(locale, value) return "Никого не бросать" end), -- Никого не оставляйте позади
	-- create_template("ach_tea_5_ext_desc_ru", -- Complete a single mission after Rescuing 3 different Operatives at least once from captivity.
	-- loc_keys = {"loc_achievement_revive_all_description"}, {"ru"}, function(locale, value) return "Завершите одну миссию, освободив из плена "..COLORS_Numbers.target_rgb.." разных оперативников хотя бы по разу." end), -- Завершите одно задание, вызволив из плена различных оперативников (3) хотя бы один раз.
	-- create_template("ach_tea_2_ext_ru", -- Up and at 'Em! (1-5)
	-- loc_keys = {"loc_achievement_assists_1-5_name"}, {"ru"}, function(locale, value) return "Поднимайся и вперёд! (1-5)" end), -- Подъем! (1-5)
	-- create_template("ach_tea_2_ext_desc_ru", -- Help 1000 downed Operatives back up.
-- 	loc_keys = {"loc_achievement_assists_x_description"}, {"ru"}, function(locale, value) return "Помогите "..COLORS_Numbers.target_rgb.." сбитым с ног оперативникам вернуться в бой." end), -- Помочь подняться поваленным оперативникам: 1000.

-- ==============================================================HERETICS - ЕРЕТИКИ
	-- create_template("ach_her_0_ext_ru", -- Heretics
-- 	loc_keys = {"loc_achievement_category_enemies_label"}, {"ru"}, function(locale, value) return "Еретики" end), -- Еретические

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_shotgunner_spread_dodged_name"}, {"ru"}, function(locale, value) return "Барабанная дробь" end), -- Барабанная дробь
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_shotgunner_spread_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Увернитесь от разброса из дробовика (50). [По 1 за каждого отброса с дробовиком]

	-- create_template("ach_her_9_ext_ru", -- Lex Vigilant
-- 	loc_keys = {"loc_achievement_all_cultist_elites_killed_name"}, {"ru"}, function(locale, value) return "Закон Неусыпный" end), -- Бдительность Закона
	-- create_template("ach_her_9_ext_desc_ru", -- Kill 10 of each Dreg elite.
-- 	loc_keys = {"loc_achievement_all_cultist_elites_killed_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов каждого типа из элитных дрегов." end), -- Убейте элитных отбросов (по 10 каждого вида).

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_crusher_overhead_smash_dodged_name"}, {"ru"}, function(locale, value) return "Бойся топора" end), -- Бойся топора
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_crusher_overhead_smash_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Увернитесь от рубящих ударов огринов-дробителей 50 р. [Считается только одно уклонение за каждого огрина-дробителя]

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_team_team_chaos_beast_of_nurgle_slain_no_corruption_name"}, {"ru"}, function(locale, value) return "Будь здоров" end), -- Будь здоров
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Убейте тварь Нургла так, чтобы ни один член команды не пострадал от ее гниющей рвоты.

	-- create_template("ach_her_5_ext_ru", -- Blowout
-- 	loc_keys = {"loc_achievement_melee_renegade_name"}, {"ru"}, function(locale, value) return "Взрыв" end), -- Взрывной успех
	-- create_template("ach_her_5_ext_desc_ru", -- Kill 10 Bombers with melee attacks.
-- 	loc_keys = {"loc_achievement_melee_renegade_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." Чумных камикадзе атаками ближнего боя." end), -- Убить взрывунов в ближнем бою: 10.

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_team_team_chaos_beast_of_nurgle_slain_no_corruption_name"}, {"ru"}, function(locale, value) return "Задуем свечи" end), -- Задуем свечи
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Убейте огнеметчиков из числа скабов и отбросов (50) до того, как они используют свои способности.

	-- create_template("ach_her_18_ext_ru", -- Bullying the Bully
-- 	loc_keys = {"loc_achievement_ogryn_gunner_melee_name"}, {"ru"}, function(locale, value) return "Быкуй на быка" end), -- Запугивание задиры
	-- create_template("ach_her_18_ext_desc_ru", -- Kill 10 Reapers in melee.
-- 	loc_keys = {"loc_achievement_ogryn_gunner_melee_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." Жнецов в ближнем бою." end), -- Убейте Жнеца (10) в ближнем бою.

	-- create_template("ach_her_7_ext_ru", -- Cull the Traitors
-- 	loc_keys = {"loc_achievement_group_enemies_renegades_name"}, {"ru"}, function(locale, value) return "Уничтожьте предателей" end), -- Избавиться от предателей
	-- create_template("ach_her_7_ext_desc_ru", -- Complete the following Scab Penances.
-- 	loc_keys = {"loc_achievement_group_enemies_renegades_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, связанные со скабами." end), -- Выполнить следующие скаб-искупления.
	-- create_template("ach_her_16_ext_ru", -- Banishment
	-- loc_keys = {"loc_achievement_all_chaos_killed_name"}, {"ru"}, function(locale, value) return "Изгнание" end),
	-- create_template("ach_her_16_ext_desc_ru", -- Kill every type of Terror.
-- 	loc_keys = {"loc_achievement_all_chaos_killed_description"}, {"ru"}, function(locale, value) return "Убейте врагов каждого типа из Ужасов хаоса." end), -- Убейте все виды ужасов.
	-- create_template("ach_her_19_ext_ru", -- Banisher
	-- loc_keys = {"loc_achievement_banish_daemonhost_name"}, {"ru"}, function(locale, value) return "Изгоняющий" end), -- Изгоняющий демонов
	-- create_template("ach_her_19_ext_desc_ru", -- Banish a Daemonhost.
-- 	loc_keys = {"loc_achievement_banish_daemonhost_description"}, {"ru"}, function(locale, value) return "Изгоните Демонхоста." end), -- Изгоните демонхоста.

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_training_grounds_fully_unlocked_name"}, {"ru"}, function(locale, value) return "К бою готов!" end), -- К бою готов!
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_training_grounds_fully_unlocked_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Полностью разблокируйте тренировочную площадку.

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_bulwark_backstab_damage_inflicted_name"}, {"ru"}, function(locale, value) return "Как ты подкрался?" end), -- Как ты подкрался?
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_bulwark_backstab_damage_inflicted_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Нанесите урон (25000) огрину-бастиону ударом в спину.

	-- create_template("ach_her_3_ext_ru", -- Traitorous Collective
	-- loc_keys = {"loc_achievement_all_renegades_killed_name"}, {"ru"}, function(locale, value) return "Коллектив предателей" end),
	-- create_template("ach_her_3_ext_desc_ru", -- Kill every type Scab enemy.
-- 	loc_keys = {"loc_achievement_all_renegades_killed_description"}, {"ru"}, function(locale, value) return "Убейте врагов Скабов каждого типа." end), -- Убейте все виды врагов-Скабов.
	-- create_template("ach_her_14_ext_ru", -- Nightmare Patrol
	-- loc_keys = {"loc_achievement_all_chaos_specials_killed_name"}, {"ru"}, function(locale, value) return "Кошмарный патруль" end),
	-- create_template("ach_her_14_ext_desc_ru", -- Kill 10 of each type of Terror Specialist.
-- 	loc_keys = {"loc_achievement_all_chaos_specials_killed_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов Ужасов хаоса." end), -- Убейте специалистов из числа Ужасов: 10 каждого типа.

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_team_chaos_spawned_killed_no_players_grabbed_name"}, {"ru"}, function(locale, value) return "Как ты подкрался?" end), -- Как ты подкрался?
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_team_chaos_spawned_killed_no_players_grabbed_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Убейте отродье Хаоса так, чтобы не схватили ни одного члена команды.

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_trapper_net_dodged_name"}, {"ru"}, function(locale, value) return "Не попасться в сети" end), -- Не попасться в сети
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_trapper_net_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Увернитесь от сетей ловушечника (50). [По 1 за каждого ловушечника]

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_grenadier_killed_before_attack_occured_name"}, {"ru"}, function(locale, value) return "Обезвреживатель" end), -- Обезвреживатель
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_grenadier_killed_before_attack_occured_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Убейте гренадеров из числа скабов и отбросов (50) до того, как они используют свои способности.

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_pox_hounds_pushed_name"}, {"ru"}, function(locale, value) return "Отвали от меня!" end), -- Отвали от меня!
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_pox_hounds_pushed_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Подбросьте чумных гончих (50) в воздух. [По 1 за каждую гончую]

	-- create_template("ach_her_11_ext_ru", -- Dreg Hunter (1-5)
	-- loc_keys = {"loc_achievement_kill_cultists_1-5_name"}, {"ru"}, function(locale, value) return "Охотник на дрегов (1-5)" end), -- Охотник на отбросов (1-5)
	-- create_template("ach_her_11_ext_desc_ru", -- Kill 25000 Dregs.
-- 	loc_keys = {"loc_achievement_kill_cultists_x_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." дрегов." end), -- Убить отбросов: 25000.
	-- create_template("ach_her_13_ext_ru", -- Purge the Heretics
	-- loc_keys = {"loc_achievement_group_enemies_cultists_name"}, {"ru"}, function(locale, value) return "Очистить еретиков" end),
	-- create_template("ach_her_13_ext_desc_ru", -- Complete the following Dreg Penances.
-- 	loc_keys = {"loc_achievement_group_enemies_cultists_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, связанные с дрегами." end), -- Выполнить следующие искупления отбросов.
	-- create_template("ach_her_20_ext_ru", -- Cleanse the Taint
	-- loc_keys = {"loc_achievement_group_enemies_chaos_name"}, {"ru"}, function(locale, value) return "Очистить порчу" end), 
	-- create_template("ach_her_20_ext_desc_ru", -- Complete the following Terror Penances.
-- 	loc_keys = {"loc_achievement_group_enemies_chaos_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, связанные с Ужасами варпа." end), -- Выполнить следующие ужасные искупления.
	-- create_template("ach_her_1_ext_ru", -- Renegade Master
	-- loc_keys = {"loc_achievement_all_renegade_specials_killed_name"}, {"ru"}, function(locale, value) return "Мастер-отступник" end), -- Повелитель-отступник
	-- create_template("ach_her_1_ext_desc_ru", -- Kill 10 of each Scab Specialist enemy.
-- 	loc_keys = {"loc_achievement_all_renegade_specials_killed_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из скабов-специалистов." end), -- Убейте Скабов-специалистов (по 10 каждого вида).
	-- create_template("ach_her_12_ext_ru", -- Decapitation Protocol
	-- loc_keys = {"loc_achievement_cultiss_berzerker_head_name"}, {"ru"}, function(locale, value) return "Протокол обезглавливания" end),
	-- create_template("ach_her_12_ext_desc_ru", -- Kill 10 Dreg Ragers with Headshots.
-- 	loc_keys = {"loc_achievement_cultist_berzerker_head_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." дрегов Берсерков в голову." end), -- Убейте отброса-буйного (10) выстрелом в голову.
	-- create_template("ach_her_15_ext_ru", -- Purification Protocol
	-- loc_keys = {"loc_achievement_all_chaos_elites_killed_name"}, {"ru"}, function(locale, value) return "Протокол очистки" end), -- Протокол очищения
	-- create_template("ach_her_15_ext_desc_ru", -- Kill 10 Elite Terrors.
-- 	loc_keys = {"loc_achievement_all_chaos_elites_killed_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов каждого типа из элиты Ужасов хаоса." end), -- Убейте элитных врагов из числа Ужасов: 10.

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_mutant_charge_dodged_name"}, {"ru"}, function(locale, value) return "Прыткие пятки" end), -- Прыткие пятки
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_mutant_charge_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Увернитесь от атак мутантов (50). [По 1 за каждого мутанта]

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_cultist_gunner_shot_dodged_name"}, {"ru"}, function(locale, value) return "Решающий рывок" end), -- Решающий рывок
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_cultist_gunner_shot_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Увернитесь от выстрелов пулеметчика (500) во время бега.

	-- create_template("ach_her_4_ext_ru", -- Scab Picker (1-5)
	-- loc_keys = {"loc_achievement_kill_renegades_1-5_name"}, {"ru"}, function(locale, value) return "Сборщик скабов (1-5)" end),
	-- create_template("ach_her_4_ext_desc_ru", -- Kill 25000 Scabs.
-- 	loc_keys = {"loc_achievement_kill_renegades_x_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." скабов." end), -- Убить Скабов: 12500.

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_team_poxburster_damage_avoided_name"}, {"ru"}, function(locale, value) return "Сейчас рванет!" end), -- Сейчас рванет!
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_team_poxburster_damage_avoided_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Убейте чумных взрывунов (50), чтобы ни вы, ни члены команды не получили урона.

	-- create_template("ach_her_2_ext_ru", -- Elitist
-- 	loc_keys = {"loc_achievement_all_renegade_elites_killed_name"}, {"ru"}, function(locale, value) return "Элитарист" end), -- Сторонник элиты
	-- create_template("ach_her_2_ext_desc_ru", -- Kill 10 of each Scab elite enemy.
-- 	loc_keys = {"loc_achievement_all_renegade_elites_killed_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из элитных скабов." end), -- Убейте элитных Скабов (по 10 каждого вида).

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_team_poxburster_damage_avoided_name"}, {"ru"}, function(locale, value) return "Танец смерти" end), -- Танец смерти
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_team_poxburster_damage_avoided_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Увернитесь от ударов палача (50). [По 1 за каждого палача]

	-- create_template("ach_her_8_ext_ru", -- Lex Triumphant
-- 	loc_keys = {"loc_achievement_all_cultist_specials_killed_name"}, {"ru"}, function(locale, value) return "Закон Торжествующий" end), -- Торжество Закона
	-- create_template("ach_her_8_ext_desc_ru", -- Kill 10 of each Dreg Specialist.
-- 	loc_keys = {"loc_achievement_all_cultist_specials_killed_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов дрегов." end), -- Убейте отбросов-специалистов (по 10 каждого вида).
	-- create_template("ach_her_6_ext_ru", -- Hard Labour
-- 	loc_keys = {"loc_achievement_executor_non_headshot_name"}, {"ru"}, function(locale, value) return "Тяжёлый труд" end), -- Тяжелый труд
	-- create_template("ach_her_6_ext_desc_ru", -- Kill 10 Scab Maulers without using Headshots.
-- 	loc_keys = {"loc_achievement_executor_non_headshot_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." Палачей без попаданий по голове." end), -- Убейте Скаба-Палача (10), не используя выстрел в голову.

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_sniper_dodged_name"}, {"ru"}, function(locale, value) return "Хорошие рефлексы" end), -- Хорошие рефлексы
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_sniper_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Увернитесь от выстрелов снайпера (50). [По 1 за каждого снайпера]

	-- create_template("ach_her_17_ext_ru", -- Purgator (1-5)
	-- loc_keys = {"loc_achievement_kill_chaos_1-5_name"}, {"ru"}, function(locale, value) return "Очиститель (1-5)" end), -- Чистильщик (1-5)
	-- create_template("ach_her_17_ext_desc_ru", -- Kill 25000 Poxwalkers and other Terrors of the warp.
-- 	loc_keys = {"loc_achievement_kill_chaos_x_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." Чумных ходоков и других Ужасов варпа." end), -- Убить чумных ходоков и других врагов из числа Ужасов варпа: 15000.
	-- create_template("ach_her_10_ext_ru", -- Dreg Cleanser
-- 	loc_keys = {"loc_achievement_all_cultists_killed_name"}, {"ru"}, function(locale, value) return "Чистильщик дрегов" end), -- Чистильщик отбросов
	-- create_template("ach_her_10_ext_desc_ru", -- Kill every type of Dreg.
-- 	loc_keys = {"loc_achievement_all_cultists_killed_description"}, {"ru"}, function(locale, value) return "Убейте врагов каждого типа из дрегов." end), -- Убейте все виды отбросов.

	-- create_template("ach_her_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_ogryn_gunner_shot_dodged_name"}, {"ru"}, function(locale, value) return "Это всё, на что ты способен?" end), -- Это всё, на что ты способен?
	-- create_template("ach_her_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_ogryn_gunner_shot_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- Увернитесь от атак огрина-жнеца (500) во время бега.

-- ==============================================================MISSIONS - МИССИИ
	-- create_template("ach_mis_0_ext_ru", -- Missions
-- 	loc_keys = {"loc_achievement_category_missions_label"}, {"ru"}, function(locale, value) return "Миссии" end), -- Задания

	-- create_template("ach_mis_00_ext_ru", -- General Missions
-- 	loc_keys = {"loc_achievement_subcategory_missions_general_label"}, {"ru"}, function(locale, value) return "Основные миссии" end), -- Обычные задания

	-- create_template("ach_mis_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_type_1_mission_5_name"}, {"ru"}, function(locale, value) return "Архивариус" end), -- Архивариус
	-- create_template("ach_mis_1_ext_desc_ru", -- Complete 250 Raid missions.
	-- loc_keys = {"loc_achievement_type_1_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий налётов." end), -- Восстановите писания из заданий: 100.

	-- create_template("ach_mis_8_ext_ru", -- Atoman Auxilia (1-4)
	-- loc_keys = {"loc_achievement_missions_1-4_name"}, {"ru"}, function(locale, value) return "Ауксилии Атомы (1-4)" end), 
	-- create_template("ach_mis_8_ext_desc_ru", -- Complete 1000 Missions.
-- 	loc_keys = {"loc_achievement_missions_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий." end), -- Выполнить задания: 500.
-- 	-- create_template("ach_mis_9_ext_ru", -- Auspex Drill (1-5)
-- 	-- loc_keys = {"loc_achievement_scan_1-5_name",},
-- 	-- locales = {"ru",}, handle_func = function(locale, value)
-- 	-- return "Ауспекс взлом (1-5)" end), -- Ауспекс-тренировка (1-5)
	-- create_template("ach_mis_9_ext_desc_ru", -- Scan 200 Auspex targets.
-- 	loc_keys = {"loc_achievement_scan_x_description"}, {"ru"}, function(locale, value) return "Просканируйте "..COLORS_Numbers.target_rgb.." целей для ауспекса." end), -- Просканировать целей ауспекса: 200.
-- 	-- create_template("ach_mis_11_ext_ru", -- Flawless interrogator
-- 	-- loc_keys = {"loc_achievement_hack_perfect_name",},
-- 	-- locales = {"ru",}, handle_func = function(locale, value)
-- 	-- return "Безупречный опросчик" end),
	-- create_template("ach_mis_11_ext_desc_ru", -- Complete a Data Interrogation without an incorrect auspex entry.
-- 	loc_keys = {"loc_achievement_hack_perfect_description"}, {"ru"}, function(locale, value) return "Завершите опрос данных без выбора неправильной записи в ауспексе." end), -- Завершите опрос данных без выбора неправильной записи ауспекса.

-- --------------------------------------------------------------Становление легенды
	-- create_template("ach_mis_13_ext_ru", -- The Legend Grows?
-- 	loc_keys = {"loc_achievement_mission_difficulty_objectives_1_name"}, {"ru"}, function(locale, value) return "Становление легенды:\nНовобранец Инквизиции" end),
	-- create_template("ach_mis_13_1_ext_desc_ru", -- Complete each mission type on Sedition Threat or higher.
-- 	loc_keys = {"loc_achievement_mission_difficulty_objectives_1_description"}, {"ru"}, function(locale, value) return "Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.sedition_rgb.." или выше." end), -- Выполнить по меньшей мере одно задание каждого типа при угрозе «Мятеж» или выше.

	-- create_template("ach_mis_13_ext_ru", -- The Legend Grows?
-- 	loc_keys = {"loc_achievement_mission_difficulty_objectives_2_name"}, {"ru"}, function(locale, value) return "Становление легенды:\nВетеран Инквизиции" end),
	-- create_template("ach_mis_13_1_ext_desc_ru", -- Complete each mission type on Sedition Threat or higher.
-- 	loc_keys = {"loc_achievement_mission_difficulty_objectives_2_description"}, {"ru"}, function(locale, value) return "Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.uprising_rgb.." или выше." end), -- Выполнить по меньшей мере одно задание каждого типа при угрозе «Восстание» или выше.

	-- create_template("ach_mis_13_ext_ru", -- The Legend Grows?
-- 	loc_keys = {"loc_achievement_mission_difficulty_objectives_3_name"}, {"ru"}, function(locale, value) return "Становление легенды:\nЭталон Инквизиции" end),
	-- create_template("ach_mis_13_1_ext_desc_ru", -- Complete each mission type on Sedition Threat or higher.
-- 	loc_keys = {"loc_achievement_mission_difficulty_objectives_3_description"}, {"ru"}, function(locale, value) return "Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.malice_rgb.." или выше." end), -- Выполнить по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.

	-- create_template("ach_mis_13_ext_ru", -- The Legend Grows?
-- 	loc_keys = {"loc_achievement_mission_difficulty_objectives_4_name"}, {"ru"}, function(locale, value) return "Становление легенды:\nЛегенда Инквизиции" end),
	-- create_template("ach_mis_13_1_ext_desc_ru", -- Complete each mission type on Sedition Threat or higher.
-- 	loc_keys = {"loc_achievement_mission_difficulty_objectives_4_description"}, {"ru"}, function(locale, value) return "Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.heresy_rgb.." или выше." end), -- Выполнить по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.

	-- create_template("ach_mis_13_ext_ru", -- The Legend Grows?
-- 	loc_keys = {"loc_achievement_mission_difficulty_objectives_5_name"}, {"ru"}, function(locale, value) return "Становление легенды" end),
	-- create_template("ach_mis_13_1_ext_desc_ru", -- Complete each mission type on Sedition Threat or higher.
-- 	loc_keys = {"loc_achievement_mission_difficulty_objectives_5_description"}, {"ru"}, function(locale, value) return "Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.damnation_rgb.." или выше." end), -- Выполнить по меньшей мере одно задание каждого типа при угрозе «Проклятие» или выше.


-- --------------------------------------------------------------Налёты
	-- create_template("ach_mis_1_ext_ru", -- Raiding Party (1)
-- 	loc_keys = {"loc_achievement_type_1_mission_1_name"}, {"ru"}, function(locale, value) return "Группа налётчиков (1)" end), -- Вечеринка налетчиков (1)
	-- create_template("ach_mis_1_ext_ru", -- Raiding Party (2)
-- 	loc_keys = {"loc_achievement_type_1_mission_2_name"}, {"ru"}, function(locale, value) return "Группа налётчиков (2)" end), -- Вечеринка налетчиков (2)
	-- create_template("ach_mis_1_ext_ru", -- Raiding Party (3)
-- 	loc_keys = {"loc_achievement_type_1_mission_3_name"}, {"ru"}, function(locale, value) return "Группа налётчиков (3)" end), -- Вечеринка налетчиков (3)
	-- create_template("ach_mis_1_ext_ru", -- Raiding Party (4)
-- 	loc_keys = {"loc_achievement_type_1_mission_4_name"}, {"ru"}, function(locale, value) return "Группа налётчиков (4)" end), -- Вечеринка налетчиков (4)
	-- create_template("ach_mis_1_ext_ru", -- Raiding Party (5)
-- 	loc_keys = {"loc_achievement_type_1_mission_5_name"}, {"ru"}, function(locale, value) return "Группа налётчиков (5)" end), -- Вечеринка налетчиков (5)
	-- create_template("ach_mis_1_ext_desc_ru", -- Complete 250 Raid missions.
-- 	loc_keys = {"loc_achievement_type_1_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." налётов." end), -- Выполните задания типа «Налет»: 100.
-- --------------------------------------------------------------Расследования
	-- create_template("ach_mis_3_ext_ru", -- No Stone Unturned (1)
-- 	loc_keys = {"loc_achievement_type_3_mission_1_name"}, {"ru"}, function(locale, value) return "Заглянуть под каждый камень (1)" end), -- Всё вверх дном (1)
	-- create_template("ach_mis_3_ext_ru", -- No Stone Unturned (2)
-- 	loc_keys = {"loc_achievement_type_3_mission_2_name"}, {"ru"}, function(locale, value) return "Заглянуть под каждый камень (2)" end), -- Всё вверх дном (2)
	-- create_template("ach_mis_3_ext_ru", -- No Stone Unturned (3)
-- 	loc_keys = {"loc_achievement_type_3_mission_3_name"}, {"ru"}, function(locale, value) return "Заглянуть под каждый камень (3)" end), -- Всё вверх дном (3)
	-- create_template("ach_mis_3_ext_ru", -- No Stone Unturned (4)
-- 	loc_keys = {"loc_achievement_type_3_mission_4_name"}, {"ru"}, function(locale, value) return "Заглянуть под каждый камень (4)" end), -- Всё вверх дном (4)
	-- create_template("ach_mis_3_ext_ru", -- No Stone Unturned (5)
-- 	loc_keys = {"loc_achievement_type_3_mission_5_name"}, {"ru"}, function(locale, value) return "Заглянуть под каждый камень (5)" end), -- Всё вверх дном (5)
	-- create_template("ach_mis_3_ext_desc_ru", -- Complete 100 Investigation missions.
-- 	loc_keys = {"loc_achievement_type_3_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." расследований." end), -- Завершите задания типа «Расследования»: 100.
-- --------------------------------------------------------------Диверсии
	-- create_template("ach_mis_4_ext_ru", -- Disruptive Behavior (1)
-- 	loc_keys = {"loc_achievement_type_4_mission_1_name"}, {"ru"}, function(locale, value) return "Деструктивное поведение (1)" end), -- Диверсант - звучит гордо (1)
	-- create_template("ach_mis_4_ext_ru", -- Disruptive Behavior (2)
-- 	loc_keys = {"loc_achievement_type_4_mission_2_name"}, {"ru"}, function(locale, value) return "Деструктивное поведение (2)" end), -- Диверсант - звучит гордо (2)
	-- create_template("ach_mis_4_ext_ru", -- Disruptive Behavior (3)
-- 	loc_keys = {"loc_achievement_type_4_mission_3_name"}, {"ru"}, function(locale, value) return "Деструктивное поведение (3)" end), -- Диверсант - звучит гордо (3)
	-- create_template("ach_mis_4_ext_ru", -- Disruptive Behavior (4)
-- 	loc_keys = {"loc_achievement_type_4_mission_4_name"}, {"ru"}, function(locale, value) return "Деструктивное поведение (4)" end), -- Диверсант - звучит гордо (4)
	-- create_template("ach_mis_4_ext_ru", -- Disruptive Behavior (5)
-- 	loc_keys = {"loc_achievement_type_4_mission_5_name"}, {"ru"}, function(locale, value) return "Деструктивное поведение (5)" end), -- Диверсант - звучит гордо (5)
	-- create_template("ach_mis_4_ext_desc_ru", -- Complete 150 Disruption missions.
-- 	loc_keys = {"loc_achievement_type_4_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." диверсий." end), -- Завершить задания типа «Диверсия»: 100.
-- --------------------------------------------------------------Ликвидации
	-- create_template("ach_mis_2_ext_ru", -- Seek, Locate, Destroy (1)
-- 	loc_keys = {"loc_achievement_type_2_mission_1_name"}, {"ru"}, function(locale, value) return "Искать, найти, ликвидировать (1)" end), -- Ищите, находите, уничтожайте (1)
	-- create_template("ach_mis_2_ext_ru", -- Seek, Locate, Destroy (2)
-- 	loc_keys = {"loc_achievement_type_2_mission_2_name"}, {"ru"}, function(locale, value) return "Искать, найти, ликвидировать (2)" end), -- Ищите, находите, уничтожайте (2)
	-- create_template("ach_mis_2_ext_ru", -- Seek, Locate, Destroy (3)
-- 	loc_keys = {"loc_achievement_type_2_mission_3_name"}, {"ru"}, function(locale, value) return "Искать, найти, ликвидировать (3)" end), -- Ищите, находите, уничтожайте (3)
	-- create_template("ach_mis_2_ext_ru", -- Seek, Locate, Destroy (4)
-- 	loc_keys = {"loc_achievement_type_2_mission_4_name"}, {"ru"}, function(locale, value) return "Искать, найти, ликвидировать (4)" end), -- Ищите, находите, уничтожайте (4)
	-- create_template("ach_mis_2_ext_ru", -- Seek, Locate, Destroy (5)
-- 	loc_keys = {"loc_achievement_type_2_mission_5_name"}, {"ru"}, function(locale, value) return "Искать, найти, ликвидировать (5)" end), -- Ищите, находите, уничтожайте (5)
	-- create_template("ach_mis_2_ext_desc_ru", -- Complete 200 Assassination missions.
-- 	loc_keys = {"loc_achievement_type_2_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." ликвидаций." end), -- Выполнить заданий на убийство: 100.
-- --------------------------------------------------------------Шпионаж
	-- create_template("ach_mis_6_ext_ru", -- Master of Intrique (1-5)
	-- loc_keys = {"loc_achievement_type_6_mission_1-5_name"}, {"ru"}, function(locale, value) return "Мастер интриг (1-5)" end), -- Мастер интриги (1-5)
	-- create_template("ach_mis_6_ext_desc_ru", -- Complete 150 Espionage missions.
-- 	loc_keys = {"loc_achievement_type_6_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." шпионских миссий." end), -- Завершите задания типа «Шпионаж»: 100.

	-- create_template("ach_mis_14_ext_ru", -- Mission Improbable
-- 	loc_keys = {"loc_achievement_group_missions_name"}, {"ru"}, function(locale, value) return "Миссия невыполнима" end), -- Задание невыполнимо
	-- create_template("ach_mis_14_ext_desc_ru", -- Complete the following Mission Penances.
-- 	loc_keys = {"loc_achievement_group_missions_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, связанные с миссиями." end), -- Выполните следующие искупления с заданиями.

	-- create_template("ach_mis_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_mission_tox_gas_x_name"}, {"ru"}, function(locale, value) return "Задержи дыхание (1-3)" end), -- Задержи дыхание (1-3)
	-- create_template("ach_mis_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_mission_tox_gas_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий налётов." end), -- Завершите задание с обстоятельством «чумной газ» 50 р.

	-- create_template("ach_mis_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_mission_grimoire_recovery_name"}, {"ru"}, function(locale, value) return "Запретные тексты (1-5)" end), -- Запретные тексты (1-5)
	-- create_template("ach_mis_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_mission_grimoire_recovery_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий налётов." end), -- Соберите и извлеките гримуары (75).

	-- create_template("ach_mis_1_ext_ru", -- 
	-- loc_keys = {"loc_achievement_amount_of_chests_opened_name"}, {"ru"}, function(locale, value) return "Искатель" end), -- Искатель
	-- create_template("ach_mis_1_ext_desc_ru", -- .
	-- loc_keys = {"loc_achievement_amount_of_chests_opened_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий налётов." end), -- Откройте сундуки: 2500. Сундуки, открытые членами команды, тоже учитываются.

	-- create_template("ach_mis_10_ext_ru", --  -- The Machine Whisperer
	-- loc_keys = {"loc_achievement_hack_5_name"}, {"ru"}, function(locale, value) return "Опросчик (1-5)" end), -- Заклинатель машин
	-- create_template("ach_mis_10_ext_desc_ru", -- Complete 200 successful data-interrogations.
	-- loc_keys = {"loc_achievement_hack_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." успешных опросов данных." end), -- Выполнить успешных опросов: 200.





	-- create_template("ach_mis_5_ext_ru", -- Strike Force (4)
	-- loc_keys = {"loc_achievement_type_5_mission_4_name"}, {"ru"}, function(locale, value) return "Ударная сила (4)" end), -- Ударная группа (4)
	-- create_template("ach_mis_5_ext_desc_ru", -- Complete 200 Strike missions.
	-- loc_keys = {"loc_achievement_type_5_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." ударных миссий." end), -- Завершите задания типа «Удар»: 200.
	-- create_template("ach_mis_7_ext_ru", -- Omnissiah's Hand (2)
	-- loc_keys = {"loc_achievement_type_7_mission_2_name"}, {"ru"}, function(locale, value) return "Рука Омниссии (2)" end),
	-- create_template("ach_mis_7_ext_desc_ru", -- Complete 100 Repair missions.
	-- loc_keys = {"loc_achievement_type_7_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." ремонтных миссий." end), -- Завершите задания типа «Ремонт»: 100.
	-- create_template("ach_mis_12_ext_ru", -- Adapt to the Environment (5)
	-- loc_keys = {"loc_achievement_mission_circumstace_5_name"}, {"ru"}, function(locale, value) return "Адаптируйтесь к окружающей среде (5)" end), -- Приспособление к среде (5)
	-- create_template("ach_mis_12_ext_desc_ru", -- Complete 500 Special Condition Missions.
	-- loc_keys = {"loc_achievement_mission_circumstace_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий со специальными условиями." end), -- Завершите задания с особыми обстоятельствами: 500.



	-- create_template("ach_mis_000_ext_ru", -- The Orthus Offensive
	-- loc_keys = {"loc_achievement_subcategory_twins_mission_label"}, {"ru"}, function(locale, value) return "Ортусское наступление" end),

	-- create_template("ach_mis_15_ext_ru", -- Two Birds with One Stone
	-- loc_keys = {"loc_achievement_mission_twins_win_name"}, {"ru"}, function(locale, value) return "Двух птичек одним камнем" end), -- Двух зайцев одним выстрелом
	-- create_template("ach_mis_15_ext_desc_ru", -- Defeat the Karnak Twins during The Orthus Offensive on any Threat.
	-- loc_keys = {"loc_achievement_mission_twins_win_description"}, {"ru"}, function(locale, value) return "Победить близнецов Карнак во время Ортусского наступления на любой сложности." end), -- Победить близнецов Карнак во время «Ортусского наступления» на любом уровне угрозы.
	-- create_template("ach_mis_16_ext_ru", -- Two Birds with One Stone (Extremis)
	-- loc_keys = {"loc_achievement_difficult_mission_twins_win_name"}, {"ru"}, function(locale, value) return "Двух птичек одним камнем (Экстремис)" end), -- Двух зайцев одним выстрелом (экстремис)
	-- create_template("ach_mis_16_ext_desc_ru", -- Defeat the Karnak Twins during The Orthus Offensive on Damnation Threat Level.
	-- loc_keys = {"loc_achievement_difficult_mission_twins_win_description"}, {"ru"}, function(locale, value) return "Победить близнецов Карнак во время Ортусского наступления на сложности "..COLORS_KWords_ru.damnation_rgb.."." end), -- Победить близнецов Карнак во время «Ортусского наступления» при угрозе «Проклятие».



-- ==============================================================REDACTED - ДАННЫЕ ИЗЪЯТЫ
	-- create_template("ach_red_0_ext_ru", -- Redacted
	-- loc_keys = {"loc_achievement_category_class_challenges_label"}, {"ru"}, function(locale, value) return "Данные изъяты" end),




}

--[+ Return the localization templates +]--
return localization_templates
