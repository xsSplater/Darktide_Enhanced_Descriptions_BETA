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
COLORS_KW_Penances = mod:io_dofile("Enhanced_descriptions/Loc_EN/COLORS_KW_Penances")

	--[+ Translations +]-- Add a line with a file of Keywords translated into your language.
--[+ French +]--
COLORS_KWords_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/COLORS_KWords_fr") -- French
-- COLORS_KW_Penances_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/COLORS_KW_Penances_fr")
--[+ Russian +]--
COLORS_KWords_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/COLORS_KWords_ru")
COLORS_KW_Penances_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/COLORS_KW_Penances_ru")

--[+ Traditional Chinese +]--
COLORS_KWords_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/COLORS_KWords_tw")
COLORS_KW_Penances_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/COLORS_KW_Penances_tw")
TALENTS_Enh_desc_penances_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/TALENTS_Enh_desc_penances_tw")

--[+ Function to create a localization template +]--
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end


--[+ Russian +]--
local complete_1_mission_on_sedition_threat_ru = "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.sedition_rgb_ru.." или выше."
--[+ Traditional Chinese +]--
local complete_1_mission_on_sedition_threat_tw = "完成『"..COLORS_KWords_tw.sedition_rgb_tw.."』或更高難度的任務 "..COLORS_Numbers.target_rgb.." 次。"

--[+ Russian +]--
local complete_1_mission_on_uprising_threat_ru = "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.uprising_rgb_ru.." или выше."
--[+ Traditional Chinese +]--
local complete_1_mission_on_uprising_threat_tw = "完成『"..COLORS_KWords_tw.uprising_rgb_tw.."』或更高難度的任務 "..COLORS_Numbers.target_rgb.." 次。"

--[+ Russian +]--
local complete_1_mission_on_malice_threat_ru = "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше."
--[+ Traditional Chinese +]--
local complete_1_mission_on_malice_threat_tw = "完成『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度的任務 "..COLORS_Numbers.target_rgb.." 次。"

--[+ Russian +]--
local complete_1_mission_on_heresy_threat_ru = "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше."
--[+ Traditional Chinese +]--
local complete_1_mission_on_heresy_threat_tw = "完成『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度的任務 "..COLORS_Numbers.target_rgb.." 次。"

--[+ Russian +]--
local complete_1_mission_on_damnation_threat_ru = "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше."
--[+ Traditional Chinese +]--
local complete_1_mission_on_damnation_threat_tw = "完成『"..COLORS_KWords_tw.damnation_rgb_tw.."』或更高難度的任務 "..COLORS_Numbers.target_rgb.." 次。"

--[+ Define localization templates +]--
local localization_templates = {
	-- Duplicate the line and translate. For example:
	--		create_template("weap_bb0_ext_en", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies" end),
	--		create_template("weap_bb0_ext_YOURLANGUAGE", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"YOURLANGUAGE"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." к "..COLORS_KWords.Damage_rgb_YOURLANGUAGE.." против врагов в противоосколочной броне." end), <- Don't forget the comma at the end!

--[+ ++PENANCES - ИСКУПЛЕНИЯ++ +]--
	--[+ Lowerbody +]-- Нижняя часть тела
	--[+ Russian +]--
	create_template("lowerbody_gear_ext_desc_ru", {"loc_item_type_gear_lowerbody"}, {"ru"}, function(locale, value) return "Ноги" end),
	--[+ Traditional Chinese +]--
	create_template("lowerbody_gear_ext_desc_tw", {"loc_item_type_gear_lowerbody"}, {"zh-tw"}, function(locale, value) return "下半身" end),

	--[+ Private Game - Закрытая игра +]--
	--[+ Russian +]--
	-- create_template("private_tag_ext_ru", {"loc_private_tag_name1"}, {"ru"}, function(locale, value) return "Закрытая игра" end),
	--[+ Traditional Chinese +]--
	-- create_template("private_tag_ext_tw", {"loc_private_tag_name1"}, {"zh-tw"}, function(locale, value) return "私人遊戲" end),

	--[+ Penance can only be completed in a private game +]-- Искупление может быть выполнено только в закрытой игре
	--[+ Russian +]--
	create_template("private_tag_ext_desc_ru", {"loc_private_tag_description"}, {"ru"}, function(locale, value) return "Искупление может быть выполнено только в закрытой игре! Закрытую игру можно создать только в компании с минимум ещё одним игроком." end),
	--[+ Traditional Chinese +]--
	create_template("private_tag_ext_desc_tw", {"loc_private_tag_description"}, {"zh-tw"}, function(locale, value) return "\n該苦修限定在私人遊戲完成！\n注意：私人遊戲需要另一名玩家共同組隊。" end),

--[+ ++MISSIONS TYPES - ТИПЫ МИССИЙ++ +]--
	--[+ Russian +]--
	create_template("mission_type_1_ext_ru", {"loc_mission_type_01_name"}, {"ru"}, function(locale, value) return "Налёт" end),
	--[+ Traditional Chinese +]--
	create_template("mission_type_1_ext_tw", {"loc_mission_type_01_name"}, {"zh-tw"}, function(locale, value) return "突襲" end),

	--[+ Russian +]--
	-- create_template("mission_type_2_ext_ru", {"loc_mission_type_02_name"}, {"ru"}, function(locale, value) return "Убийство" end),
	--[+ Traditional Chinese +]--
	-- create_template("mission_type_2_ext_tw", {"loc_mission_type_02_name"}, {"zh-tw"}, function(locale, value) return "刺殺" end),

	--[+ Russian +]--
	-- create_template("mission_type_3_ext_ru", {"loc_mission_type_03_name"}, {"ru"}, function(locale, value) return "Расследование" end),
	--[+ Traditional Chinese +]--
	-- create_template("mission_type_3_ext_tw", {"loc_mission_type_03_name"}, {"zh-tw"}, function(locale, value) return "調查" end),

	--[+ Russian +]--
	-- create_template("mission_type_4_ext_ru", {"loc_mission_type_04_name"}, {"ru"}, function(locale, value) return "Диверсия" end),
	--[+ Traditional Chinese +]--
	-- create_template("mission_type_4_ext_tw", {"loc_mission_type_04_name"}, {"zh-tw"}, function(locale, value) return "擾亂" end),

	--[+ Russian +]--
	-- create_template("mission_type_5_ext_ru", {"loc_mission_type_05_name"}, {"ru"}, function(locale, value) return "Атака" end),
	--[+ Traditional Chinese +]--
	-- create_template("mission_type_5_ext_tw", {"loc_mission_type_05_name"}, {"zh-tw"}, function(locale, value) return "打擊" end),

	--[+ Russian +]--
	-- create_template("mission_type_6_ext_ru", {"loc_mission_type_06_name"}, {"ru"}, function(locale, value) return "Шпионаж" end),
	--[+ Traditional Chinese +]--
	-- create_template("mission_type_6_ext_tw", {"loc_mission_type_06_name"}, {"zh-tw"}, function(locale, value) return "諜報" end),

	--[+ Russian +]--
	create_template("mission_type_7_ext_ru", {"loc_mission_type_07_name"}, {"ru"}, function(locale, value) return "Ремонт" end),
	--[+ Traditional Chinese +]--
	create_template("mission_type_7_ext_tw", {"loc_mission_type_07_name"}, {"zh-tw"}, function(locale, value) return "修復" end),

--[+ ++ACCOUNT - УЧЁТНАЯ ЗАПИСЬ++ +]--
	--[+ Account - Учётная запись +]-- -- руоф Учетная запись
		--[+ Russian +]--
		create_template("ach_acc_0_ext_ru", {"loc_achievement_category_account_label"}, {"ru"}, function(locale, value) return "Учётная запись" end),
		--[+ Traditional Chinese 帳戶 +]--
		create_template("ach_acc_0_ext_tw", {"loc_achievement_category_account_label"}, {"zh-tw"}, function(locale, value) return "帳戶" end),

		--[+ Two's Company - Двое – компания... +]-- -- руоф А двое лучше
			--[+ Russian +]--
			create_template("ach_acc_1_1_ext_ru", {"loc_achievement_multi_class_1_name"}, {"ru"}, function(locale, value) return "Двое – компания..." end),
			--[+ Traditional Chinese - 雙人搭檔 +]--
			create_template("ach_acc_1_1_ext_tw", {"loc_achievement_multi_class_1_name"}, {"zh-tw"}, function(locale, value) return "雙人搭檔" end),

		--[+ Like a four-leaf clover - Как четырёхлистный клевер +]-- -- Фантастическая четверка
			--[+ Russian +]--
			create_template("ach_acc_1_ext_ru", {"loc_achievement_multi_class_2_name",}, {"ru",}, function(locale, value) return "Как четырёхлистный клевер" end),
			--[+ Traditional Chinese - 四葉草式幸運 +]--
			create_template("ach_acc_1_ext_tw", {"loc_achievement_multi_class_2_name"}, {"zh-tw"}, function(locale, value) return "四葉草式幸運" end),

		--[+ Reach Trust Level 30 with 1-4 classes. +]-- -- Получить уровень доверия 30 следующими классами: 1-4.
			create_template("ach_acc_1_ext_desc_en", {"loc_achievement_multi_class_x_description"}, {"en"}, function(locale, value) return "Reach Trust Level "..COLORS_Numbers.n_30_rgb.." with "..COLORS_Numbers.target_rgb.." classes." end),
			--[+ Russian +]--
			create_template("ach_acc_1_ext_desc_ru", {"loc_achievement_multi_class_x_description"}, {"ru"}, function(locale, value) return "Достигните "..COLORS_Numbers.n_30_rgb.." уровня доверия "..COLORS_Numbers.target_rgb.." классами." end),
			--[+ Traditional Chinese +]--
			-- 將x個職業的信任等級提升至xx級。
			create_template("ach_acc_1_ext_desc_tw", {"loc_achievement_multi_class_x_description"}, {"zh-tw"}, function(locale, value) return "將 "..COLORS_Numbers.target_rgb.." 個職業，都達到信任等級 "..COLORS_Numbers.n_30_rgb.." 。" end),

		--[+ Circles of Trust - Круги доверия (1-6) +]-- -- руоф Круг доверия (1-6)
			--[+ Russian +]--
			create_template("ach_acc_7_1_ext_ru", {"loc_achievement_path_of_trust_1_name"}, {"ru"}, function(locale, value) return "Круги доверия (1)" end),
			--[+ Traditional Chinese 互信團體 (1) +]--
			create_template("ach_acc_7_1_ext_tw", {"loc_achievement_path_of_trust_1_name"}, {"zh-tw"}, function(locale, value) return "互信團體 (1)" end),

			--[+ Russian +]--
			create_template("ach_acc_7_2_ext_ru", {"loc_achievement_path_of_trust_2_name"}, {"ru"}, function(locale, value) return "Круги доверия (2)" end),
			--[+ Traditional Chinese 互信團體 (2) +]--
			create_template("ach_acc_7_2_ext_tw", {"loc_achievement_path_of_trust_2_name"}, {"zh-tw"}, function(locale, value) return "互信團體 (2)" end),

			--[+ Russian +]--
			create_template("ach_acc_7_3_ext_ru", {"loc_achievement_path_of_trust_3_name"}, {"ru"}, function(locale, value) return "Круги доверия (3)" end),
			--[+ Traditional Chinese 互信團體 (3) +]--
			create_template("ach_acc_7_3_ext_tw", {"loc_achievement_path_of_trust_3_name"}, {"zh-tw"}, function(locale, value) return "互信團體 (3)" end),

			--[+ Russian +]--
			create_template("ach_acc_7_4_ext_ru", {"loc_achievement_path_of_trust_4_name"}, {"ru"}, function(locale, value) return "Круги доверия (4)" end),
			--[+ Traditional Chinese 互信團體 (4) +]--
			create_template("ach_acc_7_4_ext_tw", {"loc_achievement_path_of_trust_4_name"}, {"zh-tw"}, function(locale, value) return "互信團體 (4)" end),

			--[+ Russian +]--
			create_template("ach_acc_7_5_ext_ru", {"loc_achievement_path_of_trust_5_name"}, {"ru"}, function(locale, value) return "Круги доверия (5)" end),
			--[+ Traditional Chinese 互信團體 (5) +]--
			create_template("ach_acc_7_5_ext_tw", {"loc_achievement_path_of_trust_5_name"}, {"zh-tw"}, function(locale, value) return "互信團體 (5)" end),

			--[+ Russian +]--
			create_template("ach_acc_7_6_ext_ru", {"loc_achievement_path_of_trust_6_name"}, {"ru"}, function(locale, value) return "Круги доверия (6)" end),
			--[+ Traditional Chinese 互信團體 (6) +]--
			create_template("ach_acc_7_6_ext_tw", {"loc_achievement_path_of_trust_6_name"}, {"zh-tw"}, function(locale, value) return "互信團體 (6)" end),

		--[+ Complete Path of Trust chapter 6. +]-- -- руоф Пройти главы Пути веры: {target}.
			create_template("ach_acc_7_ext_desc_en", {"loc_achievement_path_of_trust_x_description"}, {"en"}, function(locale, value) return "Complete Path of Trust chapter "..COLORS_Numbers.target_rgb.."." end),
			--[+ Russian +]--
			create_template("ach_acc_7_ext_desc_ru", {"loc_achievement_path_of_trust_x_description"}, {"ru"}, function(locale, value) return "Завершить "..COLORS_Numbers.target_rgb.." главу «Пути доверия»." end),
			--[+ Traditional Chinese +]--
			-- 完成信任之路章節x。
			create_template("ach_acc_7_ext_desc_tw", {"loc_achievement_path_of_trust_x_description"}, {"zh-tw"}, function(locale, value) return "完成第 "..COLORS_Numbers.target_rgb.." 章的互信團體。" end),

		--[+ Don't Let Me Down, Criminal -  +]-- -- руоф Не подведите меня, преступники
			--[+ Russian +]--
			create_template("ach_acc_2_ext_ru", {"loc_achievement_prologue_name"}, {"ru"}, function(locale, value) return "Не подведи меня, преступник" end),
			--[+ Traditional Chinese 別讓我失望，罪犯 +]--
			create_template("ach_acc_2_ext_tw", {"loc_achievement_prologue_name"}, {"zh-tw"}, function(locale, value) return "別讓我失望，罪犯" end),

		--[+ Complete the Prologue. +]-- -- руоф Закончить пролог.
			create_template("ach_acc_2_ext_desc_en", {"loc_achievement_prologue_description"}, {"en"}, function(locale, value) return "Complete the "..COLORS_KW_Penances.Prologue_p_rgb.."." end),
			--[+ Russian +]--
			create_template("ach_acc_2_ext_desc_ru", {"loc_achievement_prologue_description"}, {"ru"}, function(locale, value) return "Пройти "..COLORS_KW_Penances_ru.Prolog_p_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 完成序章
			create_template("ach_acc_2_ext_desc_tw", {"loc_achievement_prologue_description"}, {"zh-tw"}, function(locale, value) return "完成 "..COLORS_KW_Penances_tw.Prologue_p_rgb.."。" end),

		--[+ Unconsidered Trifles +]-- -- руоф Непродуманные мелочи
			--[+ Russian +]--
			create_template("ach_acc_4_ext_ru", {"loc_achievement_unlock_gadgets_name"}, {"ru"}, function(locale, value) return "Неучтённые мелочи" end),
			--[+ Traditional Chinese 小零碎 +]--
			create_template("ach_acc_4_ext_tw", {"loc_achievement_unlock_gadgets_name"}, {"zh-tw"}, function(locale, value) return "小零碎" end),

		--[+ Unlock your first Curio slot. -  +]-- -- руоф Открыть вашу первую ячейку для устройства.
			create_template("ach_acc_4_ext_desc_en", {"loc_achievement_unlock_gadgets_description"}, {"en"}, function(locale, value) return "Unlock your first "..COLORS_KW_Penances.Curio_p_rgb.." slot." end),
			--[+ Russian +]--
			create_template("ach_acc_4_ext_desc_ru", {"loc_achievement_unlock_gadgets_description"}, {"ru"}, function(locale, value) return "Разблокируйте вашу первую ячейку "..COLORS_KW_Penances_ru.Curio_p_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 解鎖你的首個珍品欄。
			create_template("ach_acc_4_ext_desc_tw", {"loc_achievement_unlock_gadgets_description"}, {"zh-tw"}, function(locale, value) return "解鎖第一個 "..COLORS_KW_Penances_tw.Curio_p_rgb.." 。" end),

		--[+ Call to Arms -  +]-- -- руоф К оружию!
			--[+ Russian +]--
			create_template("ach_acc_3_ext_ru", {"loc_achievement_basic_training_name"}, {"ru"}, function(locale, value) return "Призыв к оружию" end),
			--[+ Traditional Chinese - 戰爭召喚 +]--
			create_template("ach_acc_3_ext_tw", {"loc_achievement_basic_training_name"}, {"zh-tw"}, function(locale, value) return "戰爭召喚" end),

		--[+ Complete Basic Training. +]-- -- руоф Завершите базовое обучение.
			create_template("ach_acc_3_ext_desc_en", {"loc_achievement_basic_training_description"}, {"en"}, function(locale, value) return "Complete "..COLORS_KW_Penances.Base_tut_p_rgb.."." end),
			--[+ Russian +]--
			create_template("ach_acc_3_ext_desc_ru", {"loc_achievement_basic_training_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_KW_Penances_ru.Base_tut_p_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 完成基礎訓練
			create_template("ach_acc_3_ext_desc_tw", {"loc_achievement_basic_training_description"}, {"zh-tw"}, function(locale, value) return "完成 "..COLORS_KW_Penances_tw.Psykhanium_p_rgb.." 的 "..COLORS_KW_Penances_tw.Base_tut_p_rgb.."。" end),

		--[+ Well met, Whippersnapper -  +]-- -- руоф Какая приятная встреча, молокосос
			--[+ Russian +]--
			create_template("ach_acc_5_ext_ru", {"loc_achievement_unlock_contracts_name"}, {"ru"}, function(locale, value) return "Рад встрече, молокосос" end),
			--[+ Traditional Chinese - 幸會，狂妄的小子 +]--
			create_template("ach_acc_5_ext_tw", {"loc_achievement_unlock_contracts_name"}, {"zh-tw"}, function(locale, value) return "幸會，狂妄的小子" end),

		--[+ Unlock access to Sire Melk's Requisitorium. -  +]-- -- руоф Получить доступ к реквизиториуму сира Мелка.
			create_template("ach_acc_5_ext_desc_en", {"loc_achievement_unlock_contracts_description"}, {"en"}, function(locale, value) return "Unlock access to "..COLORS_KW_Penances.Sir_melk_p_rgb.."." end),
			--[+ Russian +]--
			create_template("ach_acc_5_ext_desc_ru", {"loc_achievement_unlock_contracts_description"}, {"ru"}, function(locale, value) return "Разблокируйте доступ в "..COLORS_KW_Penances_ru.Sir_melk_p_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 解鎖通往梅爾克領主的必備品店的權限。
			create_template("ach_acc_5_ext_desc_tw", {"loc_achievement_unlock_contracts_description"}, {"zh-tw"}, function(locale, value) return "解鎖 "..COLORS_KW_Penances_tw.Sir_melk_p_rgb.." 。" end),

		--[+ Hail the Omnissiah! - Слава Омниссии! +]--
			--[+ Russian +]--
			-- create_template("ach_acc_6_ext_ru", {"loc_achievement_unlock_crafting_name"}, {"ru"}, function(locale, value) return "Слава Омниссии!" end),
			--[+ Traditional Chinese - 歐姆尼賽亞萬歲！ +]--
			create_template("ach_acc_6_ext_tw", {"loc_achievement_unlock_crafting_name"}, {"zh-tw"}, function(locale, value) return "歐姆尼賽亞萬歲！" end),

		--[+ Unlock access to the Shrine of the Omnissiah. -  +]-- руоф Откройте доступ к святилищу Омниссии.
			create_template("ach_acc_6_ext_desc_en", {"loc_achievement_unlock_crafting_description"}, {"en"}, function(locale, value) return "Unlock access to the "..COLORS_KW_Penances.Omnissia_p_rgb.."." end),
			--[+ Russian +]--
			create_template("ach_acc_6_ext_desc_ru", {"loc_achievement_unlock_crafting_description"}, {"ru"}, function(locale, value) return "Разблокируйте доступ в "..COLORS_KW_Penances_ru.Omnissia_p_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 解鎖歐姆尼賽亞神龕。
			create_template("ach_acc_6_ext_desc_tw", {"loc_achievement_unlock_crafting_description"}, {"zh-tw"}, function(locale, value) return "解鎖 "..COLORS_KW_Penances_tw.Omnissia_p_rgb.." 。" end),

--[+ ++CLASSES - КЛАССЫ++ +]--
	--[+ +VETERAN - ВЕТЕРАН +]--
	create_template("ach_class_vet_0_ext_en", {"loc_class_veteran_title"}, {"en"}, function(locale, value) return COLORS_KWords.cls_vet_rgb end),
	--[+ Russian +]--
	create_template("ach_class_vet_0_ext_ru", {"loc_class_veteran_title"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_vet_rgb_ru end),
	--[+ Traditional Chinese 老兵 +]--
	create_template("ach_class_vet_0_ext_tw", {"loc_class_veteran_title"}, {"zh-tw"}, function(locale, value) return COLORS_KWords_tw.cls_vet_rgb_tw end),

	--[+ ПРОГРЕСС +]--
	--[+ Stay Accurate - Будь точным +]-- -- руоф Держи прицел
		--[+ Russian +]--
		create_template("ach_class_vet_7_ext_ru", {"loc_achievement_veteran_2_easy_1_name"}, {"ru"}, function(locale, value) return "Будь точным" end),
		--[+ Traditional Chinese 保持精準 +]--
		create_template("ach_class_vet_7_ext_tw", {"loc_achievement_veteran_2_easy_1_name"}, {"zh-tw"}, function(locale, value) return "保持精準" end),

		--[+ Kill 350 enemies with ranged weakspot hits. +]-- -- руоф Убейте врагов (350) попаданиями по слабым местам с дальнего расстояния.
			create_template("ach_class_vet_7_ext_desc_en", {"loc_achievement_veteran_2_easy_1_description"}, {"en"}, function(locale, value) return "Kill "..COLORS_Numbers.target_rgb.." enemies with ranged "..COLORS_KWords.Weakspothits_rgb.."."..TALENTS_Enh_desc_penances.ED_Headshot_rgb end),
			--[+ Russian +]--
			create_template("ach_class_vet_7_ext_desc_ru", {"loc_achievement_veteran_2_easy_1_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов в "..COLORS_KWords_ru.Weakspot_rgb_ru.." из дальнобойного оружия."..TALENTS_Enh_desc_penances_ru.ED_Headshot_rgb_ru end),
			--[+ Traditional Chinese +]--
			-- 使用遠端弱點攻擊擊殺350個敵人
			create_template("ach_class_vet_7_ext_desc_tw", {"loc_achievement_veteran_2_easy_1_description"}, {"zh-tw"}, function(locale, value) return "使用遠程武器 "..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." "..COLORS_Numbers.target_rgb.." 名敵人。"..TALENTS_Enh_desc_penances_tw.ED_Headshot_rgb end),

		--[+ On Target (1) +]-- -- руоф Держи прицел
			--[+ Russian +]--
			-- create_template("ach_class_vet_14_ext_ru", {"loc_achievement_group_class_veteran_2_1_name"}, {"ru"}, function(locale, value) return "В прицеле (1-3)" end),
			--[+ Traditional Chinese 使命必達 (1) +]--
			create_template("ach_class_vet_14_ext_tw", {"loc_achievement_group_class_veteran_2_1_name"}, {"zh-tw"}, function(locale, value) return "使命必達 (1)" end),

		--[+ On Target (2) +]--
			--[+ Traditional Chinese 使命必達 (2) +]--
			create_template("ach_class_vet_15_ext_tw", {"loc_achievement_group_class_veteran_2_2_name"}, {"zh-tw"}, function(locale, value) return "使命必達 (2)" end),

		--[+ On Target (3) +]--
			--[+ Traditional Chinese 使命必達 (3) +]--
			create_template("ach_class_vet_16_ext_tw", {"loc_achievement_group_class_veteran_2_3_name"}, {"zh-tw"}, function(locale, value) return "使命必達 (3)" end),


		--[+ For The Emperor (1-3) +]-- -- руоф За императора (1-3)
			--[+ Russian +]--
			-- ВЕТЕРАН, ИЗУВЕР, ПСАЙКЕР, ОГРИН !!!
			-- create_template("ach_red_vet_8_ext_ru", {"loc_group_class_challenges_veteran_2_1-3_name", "loc_group_class_challenges_zealot_2_1-3_name", "loc_group_class_challenges_psyker_2_1-3_name", "loc_group_class_challenges_ogryn_2_1-3_name"}, {"ru"}, function(locale, value) return "За императора (1-3)" end),
			--[+ Traditional Chinese 為了皇帝(1-3) +]--
			-- create_template("ach_red_vet_8_ext_tw", {"loc_group_class_challenges_veteran_2_1-3_name", "loc_group_class_challenges_zealot_2_1-3_name", "loc_group_class_challenges_psyker_2_1-3_name", "loc_group_class_challenges_ogryn_2_1-3_name"}, {"zh-tw"}, function(locale, value) return "為了皇帝 (1-3)" end),

		--[+ Promotion Material (1) +]-- -- руоф Материалы пропаганды (1)
			--[+ Russian +]--
			-- ВЕТЕРАН, ИЗУВЕР, ПСАЙКЕР, ОГРИН !!!
			create_template("ach_class_vet_9_ext_ru", {"loc_group_veteran_2_rank_4_difficulty_3_name", "loc_group_zealot_2_rank_4_difficulty_3_name", "loc_group_psyker_2_rank_4_difficulty_3_name", "loc_group_ogryn_2_rank_4_difficulty_3_name"}, {"ru"}, function(locale, value) return "Задания для продвижения (1)" end),
			--[+ Traditional Chinese 樹立榜樣 (1) +]--
			create_template("ach_class_vet_9_ext_tw", {"loc_group_veteran_2_rank_4_difficulty_3_name", "loc_group_zealot_2_rank_4_difficulty_3_name", "loc_group_psyker_2_rank_4_difficulty_3_name", "loc_group_ogryn_2_rank_4_difficulty_3_name"}, {"zh-tw"}, function(locale, value) return "樹立榜樣 (1)" end),

		--[+ Promotion Material (2) +]-- -- руоф Материалы пропаганды (2)
			--[+ Russian +]--
			-- ВЕТЕРАН, ИЗУВЕР, ПСАЙКЕР, ОГРИН !!!
			create_template("ach_class_vet_10_ext_ru", {"loc_group_veteran_2_rank_5_difficulty_4_name", "loc_group_zealot_2_rank_5_difficulty_4_name", "loc_group_psyker_2_rank_5_difficulty_4_name", "loc_group_ogryn_2_rank_5_difficulty_4_name"}, {"ru"}, function(locale, value) return "Задания для продвижения (2)" end),
			--[+ Traditional Chinese 樹立榜樣 (2) +]--
			create_template("ach_class_vet_10_ext_tw", {"loc_group_veteran_2_rank_5_difficulty_4_name", "loc_group_zealot_2_rank_5_difficulty_4_name", "loc_group_psyker_2_rank_5_difficulty_4_name", "loc_group_ogryn_2_rank_5_difficulty_4_name"}, {"zh-tw"}, function(locale, value) return "樹立榜樣 (2)" end),

		--[+ First Steps (1-2) +]-- руоф Первые шаги (1-2)
			--[+ Russian +]--
			-- ВЕТЕРАН, ИЗУВЕР, ПСАЙКЕР, ОГРИН !!!
			-- create_template("ach_class_vet_5_ext_ru", {"loc_group_veteran_2_rank_1-2_difficulty_1-2_name", "loc_group_zealot_2_rank_1_difficulty_1-2_name", "loc_group_psyker_2_rank_1_difficulty_1-2_name", "loc_group_ogryn_2_rank_1_difficulty_1-2_name"}, {"ru"}, function(locale, value) return "Первые шаги (1-2)" end),
			--[+ Traditional Chinese 首要步驟 (1-2) +]--
			-- create_template("ach_class_vet_5_ext_tw", {"loc_group_veteran_2_rank_1-2_difficulty_1-2_name", "loc_group_zealot_2_rank_1_difficulty_1-2_name", "loc_group_psyker_2_rank_1_difficulty_1-2_name", "loc_group_ogryn_2_rank_1_difficulty_1-2_name"}, {"zh-tw"}, function(locale, value) return "首要步驟 (1-2)" end),

		--[+ Complete the following Penances as the Veteran. +]-- -- руоф Выполнить следующие искупления за Ветерана.
			create_template("ach_class_vet_14_ext_desc_en", {"loc_achievement_group_class_veteran_2_description", "loc_group_class_challenges_veteran_2_x_description", "loc_group_veteran_2_rank_4_difficulty_3_description", "loc_group_veteran_2_rank_5_difficulty_4_description", "loc_group_veteran_2_rank_1_difficulty_1_description", "loc_group_veteran_2_rank_2_difficulty_2_description"}, {"en"}, function(locale, value) return "Complete the following Penances as the "..COLORS_KWords.cls_vet_rgb.."." end),
			--[+ Russian +]--
			create_template("ach_class_vet_14_ext_desc_ru", {"loc_achievement_group_class_veteran_2_description", "loc_group_class_challenges_veteran_2_x_description", "loc_group_veteran_2_rank_4_difficulty_3_description", "loc_group_veteran_2_rank_5_difficulty_4_description", "loc_group_veteran_2_rank_1_difficulty_1_description", "loc_group_veteran_2_rank_2_difficulty_2_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления "..COLORS_KWords_ru.cls_vet2_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 使用老兵完成以下苦修。
			create_template("ach_class_vet_14_ext_desc_tw", {"loc_achievement_group_class_veteran_2_description", "loc_group_class_challenges_veteran_2_x_description", "loc_group_veteran_2_rank_4_difficulty_3_description", "loc_group_veteran_2_rank_5_difficulty_4_description", "loc_group_veteran_2_rank_1_difficulty_1_description", "loc_group_veteran_2_rank_2_difficulty_2_description"}, {"zh-tw"}, function(locale, value) return "使用 "..COLORS_KWords_tw.cls_vet_rgb_tw.." 完成以下苦修。" end),

		--[+ Veteran Master of War +]-- -- руоф Ветеран — знаток войны
			--[+ Russian +]--
			create_template("ach_class_vet_141_ext_ru", {"loc_achievement_class_meta_name"}, {"ru"}, function(locale, value) return "{class_name} — мастер войны" end),
			--[+ Traditional Chinese - 戰爭大師 +]--
			create_template("ach_class_vet_141_ext_tw", {"loc_achievement_class_meta_name"}, {"zh-tw"}, function(locale, value) return "{class_name} 戰爭大師" end),
			
		--[+ Complete 5 out of the following Penances. +]-- -- руоф Выполните часть (5) из следующих искуплений.
			create_template("ach_class_vet_14_ext_desc_en", {"loc_achievement_class_meta_description"}, {"en"}, function(locale, value) return "Complete "..COLORS_Numbers.target_rgb.." out of the following Penances." end),
			--[+ Russian +]--
			create_template("ach_class_vet_14_ext_desc_ru", {"loc_achievement_class_meta_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." следующих Искуплений." end),
			--[+ Traditional Chinese +]--
			-- 完成以下任意x個苦修。
			create_template("ach_class_vet_14_ext_desc_tw", {"loc_achievement_class_meta_description"}, {"zh-tw"}, function(locale, value) return "完成以下任意 "..COLORS_Numbers.target_rgb.." 個苦修。" end),

		--[+ Vantage Point +]-- -- руоф Точка обзора
			--[+ Russian +]--
			create_template("ach_class_vet_3_1_ext_ru", {"loc_achievement_missions_veteran_2_objective_1_name"}, {"ru"}, function(locale, value) return "Выгодная позиция" end),
			--[+ Traditional Chinese 有利地形 (1) +]--
			create_template("ach_class_vet_3_1_ext_tw", {"loc_achievement_missions_veteran_2_objective_1_name"}, {"zh-tw"}, function(locale, value) return "有利地形 (1)" end),

		--[+ As a Veteran, complete at least one Mission of each type. +]-- -- руоф Выполнить Ветераном по меньшей мере одно задание каждого типа.
			create_template("ach_class_vet_3_1_ext_desc_en", {"loc_achievement_missions_veteran_2_objective_1_description"}, {"en"}, function(locale, value) return "As a "..COLORS_KWords.cls_vet_rgb..", complete at least one Mission of each type.." end),
			--[+ Russian +]--
			create_template("ach_class_vet_3_1_ext_desc_ru", {"loc_achievement_missions_veteran_2_objective_1_description"}, {"ru"}, function(locale, value) return "Завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_vet2_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 使用老兵，完成每種類型的任務至少一項。
			create_template("ach_class_vet_3_1_ext_desc_tw", {"loc_achievement_missions_veteran_2_objective_1_description"}, {"zh-tw"}, function(locale, value) return "使用 "..COLORS_KWords_tw.cls_vet_rgb_tw.."，完成以下任務 "..COLORS_Numbers.n_1_rgb.." 次。" end),

		--[+ Vantage Point (2) +]-- -- руоф Точка обзора (2)
			--[+ Russian +]--
			create_template("ach_class_vet_3_2_ext_ru", {"loc_achievement_missions_veteran_2_objective_2_name"}, {"ru"}, function(locale, value) return "Выгодная позиция (2)" end),
			--[+ Traditional Chinese 有利地形 (2) +]--
			create_template("ach_class_vet_3_2_ext_tw", {"loc_achievement_missions_veteran_2_objective_2_name"}, {"zh-tw"}, function(locale, value) return "有利地形 (2)" end),

		--[+ As a Veteran, complete a Mission of each type on Uprising Threat or higher. +]-- -- руоф Выполнить Ветераном по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
			create_template("ach_class_vet_3_2_ext_desc_en", {"loc_achievement_missions_veteran_2_objective_2_description"}, {"en"}, function(locale, value) return "As a "..COLORS_KWords.cls_vet_rgb..", complete a Mission of each type on "..COLORS_KWords.malice_rgb.." Threat or higher." end),
			--[+ Russian +]--
			create_template("ach_class_vet_3_2_ext_desc_ru", {"loc_achievement_missions_veteran_2_objective_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_vet2_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 在惡意威脅度或更高難度下，使用老兵完成每種類型的任務至少一項。
			create_template("ach_class_vet_3_2_ext_desc_tw", {"loc_achievement_missions_veteran_2_objective_2_description"}, {"zh-tw"}, function(locale, value) return "使用 "..COLORS_KWords_tw.cls_vet_rgb_tw.." ，\n在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，完成以下任務 "..COLORS_Numbers.n_3_rgb.." 次。" end),

		--[+ Vantage Point (3) +]-- -- руоф Точка обзора (3)
			--[+ Russian +]--
			create_template("ach_class_vet_3_3_ext_ru", {"loc_achievement_missions_veteran_2_objective_3_name"}, {"ru"}, function(locale, value) return "Выгодная позиция (3)" end),
			--[+ Traditional Chinese 有利地形 (3) +]--
			create_template("ach_class_vet_3_3_ext_tw", {"loc_achievement_missions_veteran_2_objective_3_name"}, {"zh-tw"}, function(locale, value) return "有利地形 (3)" end),

		--[+ As a Veteran, complete a Mission of each type on Heresy Threat or higher. +]-- -- руоф Выполнить Ветераном по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.
			create_template("ach_class_vet_3_3_ext_desc_en", {"loc_achievement_missions_veteran_2_objective_3_description"}, {"en"}, function(locale, value) return "As a "..COLORS_KWords.cls_vet_rgb..", complete a Mission of each type on "..COLORS_KWords.heresy_rgb.." Threat or higher." end),
			--[+ Russian +]--
			create_template("ach_class_vet_3_3_ext_desc_ru", {"loc_achievement_missions_veteran_2_objective_3_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_vet2_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 在異端威脅度或更高難度下，使用老兵完成每種類型的任務至少一項。
			create_template("ach_class_vet_3_3_ext_desc_tw", {"loc_achievement_missions_veteran_2_objective_3_description"}, {"zh-tw"}, function(locale, value) return "使用 "..COLORS_KWords_tw.cls_vet_rgb_tw.." ，在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度下，\n完成以下任務 "..COLORS_Numbers.n_4_rgb.." 次。" end),

		--[+ Fire Down Range +]-- -- руоф Заградительный огонь
			--[+ Russian +]--
			create_template("ach_class_vet_12_ext_ru", {"loc_achievement_veteran_2_medium_2_name"}, {"ru"}, function(locale, value) return "Дистанция ведения стрельбы" end),
			--[+ Traditional Chinese 順風射擊 +]--
			create_template("ach_class_vet_12_ext_tw", {"loc_achievement_veteran_2_medium_2_name"}, {"zh-tw"}, function(locale, value) return "順風射擊" end),

		--[+ On Malice Threat or higher, kill 100 enemies that are over 30 meters away. +]-- -- руоф При угрозе «Злоба» или выше убейте врагов (100) на расстоянии дальше 30 м.
			create_template("ach_class_vet_12_ext_desc_en", {"loc_achievement_veteran_2_medium_2_description"}, {"en"}, function(locale, value) return "On "..COLORS_KWords.malice_rgb.." Threat or higher, kill "..COLORS_Numbers.target_rgb.." enemies that are over "..COLORS_Numbers.dist_rgb.." meters away." end),
			--[+ Russian +]--
			create_template("ach_class_vet_12_ext_desc_ru", {"loc_achievement_veteran_2_medium_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов, находящихся на расстоянии более "..COLORS_Numbers.dist_rgb.." метров от вас." end),
			--[+ Traditional Chinese +]--
			-- 在惡意威脅度或更高難度下，擊殺100個離你30公尺之外的敵人。
			create_template("ach_class_vet_12_ext_desc_tw", {"loc_achievement_veteran_2_medium_2_description"}, {"zh-tw"}, function(locale, value) return "在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，\n擊殺 "..COLORS_Numbers.target_rgb.." 名距離 "..COLORS_Numbers.dist_rgb.." 公尺以上的敵人。" end),

		--[+ Prove Your Worth (1-5) +]--
			--[+ Russian +]--
			-- create_template("ach_class_vet_4_ext_ru", {"loc_missions_veteran_2_easy_difficulty_5_name"}, {"ru"}, function(locale, value) return "Докажи, чего стоишь (1-5)" end),
			--[+ Traditional Chinese 證明你的價值 (1-5) +]--
			-- create_template("ach_class_vet_4_ext_tw", {"loc_missions_veteran_2_easy_difficulty_5_name"}, {"zh-tw"}, function(locale, value) return "證明你的價值 (1-5)" end),

		--[+ Complete 1 Missions on Sedition Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Мятеж» или выше.
			-- create_template("ach_class_vet_4_1_ext_desc_en", {"loc_missions_veteran_2_easy_difficulty_1_description"}, {"en"}, function(locale, value) return complete_1_mission_on_sedition_threat end),
			--[+ Russian +]--
			create_template("ach_class_vet_4_1_ext_desc_ru", {"loc_missions_veteran_2_easy_difficulty_1_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_sedition_threat_ru end),
			--[+ Traditional Chinese +]--
			-- 在騷亂威脅度或更高難度下完成1個任務
			create_template("ach_class_vet_4_1_ext_desc_tw", {"loc_missions_veteran_2_easy_difficulty_1_description"}, {"zh-tw"}, function(locale, value) return complete_1_mission_on_sedition_threat_tw end),

		--[+ Complete 1 Missions on Uprising Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Восстание» или выше.
			-- create_template("ach_class_vet_4_2_ext_desc_en", {"loc_missions_veteran_2_easy_difficulty_2_description"}, {"en"}, function(locale, value) return complete_1_mission_on_uprising_threat end),
			--[+ Russian +]--
			create_template("ach_class_vet_4_2_ext_desc_ru", {"loc_missions_veteran_2_easy_difficulty_2_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_uprising_threat_ru end),
			--[+ Traditional Chinese +]--
			-- 在起義威脅度或更高難度下完成1個任務
			create_template("ach_class_vet_4_2_ext_desc_tw", {"loc_missions_veteran_2_easy_difficulty_2_description"}, {"zh-tw"}, function(locale, value) return complete_1_mission_on_uprising_threat_tw end),

		--[+ Complete 1 Missions on Malice Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Злоба» или выше.
			-- create_template("ach_class_vet_4_3_ext_desc_en", {"loc_missions_veteran_2_easy_difficulty_3_description"}, {"en"}, function(locale, value) return complete_1_mission_on_malice_threat end),
			--[+ Russian +]--
			create_template("ach_class_vet_4_3_ext_desc_ru", {"loc_missions_veteran_2_easy_difficulty_3_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_malice_threat_ru end),
			--[+ Traditional Chinese +]--
			-- 在惡意威脅度或更高難度下完成1個任務
			create_template("ach_class_vet_4_3_ext_desc_tw", {"loc_missions_veteran_2_easy_difficulty_3_description"}, {"zh-tw"}, function(locale, value) return complete_1_mission_on_malice_threat_tw end),

		--[+ Complete 1 Missions on Heresy Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Ересь» или выше.
			-- create_template("ach_class_vet_4_4_ext_desc_en", {"loc_missions_veteran_2_easy_difficulty_4_description"}, {"en"}, function(locale, value) return complete_1_mission_on_heresy_threat end),
			--[+ Russian +]--
			create_template("ach_class_vet_4_4_ext_desc_ru", {"loc_missions_veteran_2_easy_difficulty_4_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_heresy_threat_ru end),
			--[+ Traditional Chinese +]--
			-- 在異端威脅度或更高難度下完成1個任務
			create_template("ach_class_vet_4_4_ext_desc_tw", {"loc_missions_veteran_2_easy_difficulty_4_description"}, {"zh-tw"}, function(locale, value) return complete_1_mission_on_heresy_threat_tw end),

		--[+ Complete 1 Missions on Damnation Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Проклятие» или выше.
			-- create_template("ach_class_vet_4_5_ext_desc_en", {"loc_missions_veteran_2_easy_difficulty_5_description"}, {"en"}, function(locale, value) return complete_1_mission_on_damnation_threat end),
			--[+ Russian +]--
			create_template("ach_class_vet_4_5_ext_desc_ru", {"loc_missions_veteran_2_easy_difficulty_5_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_damnation_threat_ru end),
			--[+ Traditional Chinese +]--
			-- 在詛咒威脅度或更高難度下完成1個任務
			create_template("ach_class_vet_4_5_ext_desc_tw", {"loc_missions_veteran_2_easy_difficulty_5_description"}, {"zh-tw"}, function(locale, value) return complete_1_mission_on_damnation_threat_tw end),

		--[+ Through The Mud (1-6) +]-- -- руоф Из грязи (1-6)
			--[+ Russian +]--
			-- create_template("ach_class_vet_2_ext_ru", {"loc_achievement_missions_veteran_2_1_name"}, {"ru"}, function(locale, value) return "Из грязи в князи (1)" end),
			--[+ Traditional Chinese 穿越泥沼 (1) +]--
			-- create_template("ach_class_vet_2_ext_tw", {"loc_achievement_missions_veteran_2_1_name"}, {"zh-tw"}, function(locale, value) return "穿越泥沼 (1)" end),

		--[+ Complete 100 Missions as a Veteran. +]-- -- руоф Выполнить Ветераном задания: 100.
			create_template("ach_class_vet_2_ext_desc_en", {"loc_achievement_missions_veteran_2_x_description"}, {"en"}, function(locale, value) return "Complete "..COLORS_Numbers.target_rgb.." Missions as a "..COLORS_KWords.cls_vet_rgb.."." end),
			--[+ Russian +]--
			create_template("ach_class_vet_2_ext_desc_ru", {"loc_achievement_missions_veteran_2_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий "..COLORS_KWords_ru.cls_vet2_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 使用老兵完成xx項任務
			create_template("ach_class_vet_2_ext_desc_tw", {"loc_achievement_missions_veteran_2_x_description"}, {"zh-tw"}, function(locale, value) return "使用 "..COLORS_KWords_tw.cls_vet_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 次任務。" end),

		--[+ On Overwatch - На чеку +]-- -- руоф Под прикрытием
			--[+ Russian +]--
			create_template("ach_red_vet_5_ext_ru", {"loc_achievement_veteran_2_no_melee_damage_taken_name"}, {"ru"}, function(locale, value) return "На чеку" end),
			--[+ Traditional Chinese 掩護射擊 +]--
			create_template("ach_red_vet_5_ext_tw", {"loc_achievement_veteran_2_no_melee_damage_taken_name"}, {"zh-tw"}, function(locale, value) return "掩護射擊" end),

		--[+ Complete a full Mission on Malice Threat or higher without taking any melee damage. +]-- -- руоф При угрозе «Злоба» или выше полностью завершите задание, не получив урона в ближнем бою.
			create_template("ach_red_vet_5_ext_desc_en", {"loc_achievement_veteran_2_no_melee_damage_taken_description"}, {"en"}, function(locale, value) return "Complete a full Mission on "..COLORS_KWords.malice_rgb.." Threat or higher without taking any melee "..COLORS_KWords.Damage_rgb.."."..TALENTS_Enh_desc_penances.ED_No_dmg_taken_corrupt_rgb end),
			--[+ Russian +]--
			create_template("ach_red_vet_5_ext_desc_ru", {"loc_achievement_veteran_2_no_melee_damage_taken_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, завершите полностью миссию без получения урона в ближнем бою."..TALENTS_Enh_desc_penances_ru.ED_No_dmg_taken_corrupt_rgb_ru end),
			--[+ Traditional Chinese +]--
			-- 在惡毒或更高威脅度下，
			-- 在不承受任何近戰傷害的情況下完成1次完整的任務。
			create_template("ach_red_vet_5_ext_desc_tw", {"loc_achievement_veteran_2_no_melee_damage_taken_description"}, {"zh-tw"}, function(locale, value) return "在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，\n完成一次任務且不受到近戰傷害。"..TALENTS_Enh_desc_penances_tw.ED_No_dmg_taken_corrupt_rgb end),

		--[+ One In the Chamber +]-- -- руоф Последний патрон
			--[+ Russian +]--
			create_template("ach_red_vet_4_ext_ru", {"loc_achievement_veteran_2_kills_with_last_round_in_mag_name"}, {"ru"}, function(locale, value) return "Последний в обойме" end),
			--[+ Traditional Chinese 最後一發 +]--
			create_template("ach_red_vet_4_ext_tw", {"loc_achievement_veteran_2_kills_with_last_round_in_mag_name"}, {"zh-tw"}, function(locale, value) return "最後一發" end),

		--[+ Kill 8 enemies with the last round in your clip during a single Mission on Malice Threat or higher. +]-- -- руоф При угрозе «Злоба» или выше убейте врагов (8) последним боеприпасом в магазине за одно задание.
			create_template("ach_red_vet_4_ext_desc_en", {"loc_achievement_veteran_2_kills_with_last_round_in_mag_description"}, {"en"}, function(locale, value) return "Kill "..COLORS_Numbers.target_rgb.." enemies with the last round in your clip during a single Mission on "..COLORS_KWords.malice_rgb.." Threat or higher." end),
			--[+ Russian +]--
			create_template("ach_red_vet_4_ext_desc_ru", {"loc_achievement_veteran_2_kills_with_last_round_in_mag_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов последним патроном в обойме в течение одной миссии на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше." end),
			--[+ Traditional Chinese +]--
			-- 以惡毒或以上威脅度，
			-- 在1次任務中用彈夾中的最後1發子彈殺死8名敵人。
			create_template("ach_red_vet_4_ext_desc_tw", {"loc_achievement_veteran_2_kills_with_last_round_in_mag_description"}, {"zh-tw"}, function(locale, value) return "在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，\n使用最後一發子彈擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。" end),

		--[+ Make Every Shot Count - Сделай каждый выстрел важным +]-- -- руоф Стрельба наверняка
			--[+ Russian +]--
			create_template("ach_red_vet_7_ext_ru", {"loc_achievement_veteran_2_no_missed_shots_empty_ammo_name"}, {"ru"}, function(locale, value) return "Сделай каждый выстрел важным" end),
			--[+ Traditional Chinese 彈無虛發 +]--
			create_template("ach_red_vet_7_ext_tw", {"loc_achievement_veteran_2_no_missed_shots_empty_ammo_name"}, {"zh-tw"}, function(locale, value) return "彈無虛發*" end),

			--[+ Complete a Mission on Heresy Threat or higher with no Ammo remaining, and 90% accuracy. +]-- -- руоф При угрозе «Ересь» или выше завершите задание с меткостью 90%, потратив все боеприпасы.
			create_template("ach_red_vet_7_ext_desc_en", {"loc_achievement_veteran_2_no_missed_shots_empty_ammo_description"}, {"en"}, function(locale, value) return "Complete a Mission on "..COLORS_KWords.heresy_rgb.." Threat or higher with no Ammo remaining, and "..COLORS_Numbers.target_rgb..COLORS_Numbers.pc_rgb.." accuracy."..TALENTS_Enh_desc_penances.ED_No_missed_shots_rgb end),
			--[+ Russian +]--
			create_template("ach_red_vet_7_ext_desc_ru", {"loc_achievement_veteran_2_no_missed_shots_empty_ammo_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите миссию с точностью "..COLORS_Numbers.target_rgb..COLORS_Numbers.pc_rgb.." и потратив все боеприпасы."..TALENTS_Enh_desc_penances_ru.ED_No_missed_shots_rgb_ru end),
			--[+ Traditional Chinese +]--
			-- 以異教徒或以上威脅度完成任務，
			-- 用光所有彈藥，並且保持90的精準度。
			create_template("ach_red_vet_7_ext_desc_tw", {"loc_achievement_veteran_2_no_missed_shots_empty_ammo_description"}, {"zh-tw"}, function(locale, value) return "在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度下，\n命中率在 "..COLORS_Numbers.target_rgb..COLORS_Numbers.pc_rgb.." 以上，且撤離時無任何備彈"..TALENTS_Enh_desc_penances_tw.ED_No_missed_shots_rgb end),

		--[+ Fight the Good Fight (1-5) +]--
			--[+ Russian +]--
			-- create_template("ach_red_vet_1_ext_ru", {"loc_missions_veteran_2_medium_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Сражайся достойно (1-5)" end),
			--[+ Traditional Chinese 為正義而戰 (1-5) +]--
			-- create_template("ach_red_vet_1_ext_tw", {"loc_missions_veteran_2_medium_difficulty_1-5_name"}, {"zh-tw"}, function(locale, value) return "為正義而戰 (1-5)" end),

			--[+ Complete 5 Missions on Sedition Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Мятеж» или выше.
			create_template("ach_red_vet_1_1_ext_desc_en", {"loc_missions_veteran_2_medium_difficulty_1_description"}, {"en"}, function(locale, value) return "Complete "..COLORS_Numbers.target_rgb.." Missions on "..COLORS_KWords.sedition_rgb.." Threat or higher." end),
			--[+ Russian +]--
			create_template("ach_red_vet_1_1_ext_desc_ru", {"loc_missions_veteran_2_medium_difficulty_1_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.sedition_rgb_ru.." или выше." end),
			--[+ Traditional Chinese +]--
			-- 在騷亂威脅度或更高難度下完成5個任務。
			create_template("ach_red_vet_1_1_ext_desc_tw", {"loc_missions_veteran_2_medium_difficulty_1_description"}, {"zh-tw"}, function(locale, value) return "在『"..COLORS_KWords_tw.sedition_rgb_tw.."』或更高難度下，完成 "..COLORS_Numbers.target_rgb.." 次任務。" end),

			--[+ Complete 5 Missions on Uprising Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Восстание» или выше.
			create_template("ach_red_vet_1_2_ext_desc_en", {"loc_missions_veteran_2_medium_difficulty_2_description"}, {"en"}, function(locale, value) return "Complete "..COLORS_Numbers.target_rgb.." Missions on "..COLORS_KWords.uprising_rgb.." Threat or higher." end),
			--[+ Russian +]--
			create_template("ach_red_vet_1_2_ext_desc_ru", {"loc_missions_veteran_2_medium_difficulty_2_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.uprising_rgb_ru.." или выше." end),
			--[+ Traditional Chinese +]--
			-- 在起意威脅度或更高難度下完成5個任務。
			create_template("ach_red_vet_1_2_ext_desc_tw", {"loc_missions_veteran_2_medium_difficulty_2_description"}, {"zh-tw"}, function(locale, value) return "在『"..COLORS_KWords_tw.uprising_rgb_tw.."』或更高難度下，完成 "..COLORS_Numbers.target_rgb.." 次任務。" end),

			--[+ Complete 5 Missions on Malice Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Злоба» или выше.
			create_template("ach_red_vet_1_3_ext_desc_en",  {"loc_missions_veteran_2_medium_difficulty_3_description"}, {"en"}, function(locale, value) return "Complete "..COLORS_Numbers.target_rgb.." Missions on "..COLORS_KWords.malice_rgb.." Threat or higher." end),
			--[+ Russian +]--
			create_template("ach_red_vet_1_3_ext_desc_ru",  {"loc_missions_veteran_2_medium_difficulty_3_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше." end),
			--[+ Traditional Chinese +]--
			-- 在惡意威脅度或更高難度下完成5個任務。
			create_template("ach_red_vet_1_3_ext_desc_tw", {"loc_missions_veteran_2_medium_difficulty_3_description"}, {"zh-tw"}, function(locale, value) return "在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，完成 "..COLORS_Numbers.target_rgb.." 次任務。" end),

			--[+ Complete 5 Missions on Heresy Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Ересь» или выше.
			create_template("ach_red_vet_1_4_ext_desc_en", {"loc_missions_veteran_2_medium_difficulty_4_description"}, {"en"}, function(locale, value) return "Complete "..COLORS_Numbers.target_rgb.." Missions on "..COLORS_KWords.heresy_rgb.." Threat or higher." end),
			--[+ Russian +]--
			create_template("ach_red_vet_1_4_ext_desc_ru", {"loc_missions_veteran_2_medium_difficulty_4_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше." end),
			--[+ Traditional Chinese +]--
			-- 在異端威脅度或更高難度下完成5個任務。
			create_template("ach_red_vet_1_4_ext_desc_tw", {"loc_missions_veteran_2_medium_difficulty_4_description"}, {"zh-tw"}, function(locale, value) return "在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度下，完成 "..COLORS_Numbers.target_rgb.." 次任務。" end),

			--[+ Complete 5 Missions on Damnation Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Проклятие» или выше.
			create_template("ach_red_vet_1_5_ext_desc_en", {"loc_missions_veteran_2_medium_difficulty_5_description"}, {"en"}, function(locale, value) return "Complete "..COLORS_Numbers.target_rgb.." Missions on "..COLORS_KWords.damnation_rgb.." Threat or higher." end),
			--[+ Russian +]--
			create_template("ach_red_vet_1_5_ext_desc_ru", {"loc_missions_veteran_2_medium_difficulty_5_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше." end),
			--[+ Traditional Chinese +]--
			-- 在詛咒威脅度或更高難度下完成5個任務。
			create_template("ach_red_vet_1_5_ext_desc_tw", {"loc_missions_veteran_2_medium_difficulty_5_description"}, {"zh-tw"}, function(locale, value) return "在『"..COLORS_KWords_tw.damnation_rgb_tw.."』或更高難度下，完成 "..COLORS_Numbers.target_rgb.." 次任務。" end),

		--[+ I Love the Militarum! (1-6) +]--
			--[+ Russian +]--
			-- create_template("ach_class_vet_1_ext_ru", {"loc_achievement_rank_veteran_2_1_name"}, {"ru"}, function(locale, value) return "Я люблю Милитарум! (1-6)" end),
			--[+ Traditional Chinese 我愛星界軍 (1-6) +]--
			-- create_template("ach_class_vet_1_ext_tw", {"loc_achievement_rank_veteran_2_1_name"}, {"zh-tw"}, function(locale, value) return "我愛星界軍 (1-6)" end),

			--[+ Reach Trust Level 30 as a Veteran. +]-- -- руоф Заслужить уровень доверия 30, играя за Ветерана.
			create_template("ach_class_vet_1_ext_desc_en", {"loc_achievement_rank_veteran_2_x_description"}, {"en"}, function(locale, value) return "Reach Trust Level "..COLORS_Numbers.target_rgb.." as a "..COLORS_KWords.cls_vet_rgb.."." end),
			--[+ Russian +]--
			create_template("ach_class_vet_1_ext_desc_ru", {"loc_achievement_rank_veteran_2_x_description"}, {"ru"}, function(locale, value) return "Достигните "..COLORS_Numbers.target_rgb.." уровня доверия "..COLORS_KWords_ru.cls_vet2_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 使用老兵達到信任等級xx。
			create_template("ach_class_vet_1_ext_desc_tw", {"loc_achievement_rank_veteran_2_x_description"}, {"zh-tw"}, function(locale, value) return "使用 "..COLORS_KWords_tw.cls_vet_rgb_tw.." 達到信任等級 "..COLORS_Numbers.target_rgb.." 。" end),

	--[+ СПОСОБНОСТИ - 技能 +]--
		--[+ Adept Assassin - Адепт-ассасин +]-- -- руоф Искусный убийца
			--[+ Russian +]--
			create_template("ach_red_vet_3_ext_ru", {"loc_achievement_veteran_weapon_switch_passive_keystone_kills_name"}, {"ru"}, function(locale, value) return "Адепт-ассасин" end),
			--[+ Traditional Chinese 老練刺客 +]--
			create_template("ach_red_vet_3_ext_tw", {"loc_achievement_veteran_weapon_switch_passive_keystone_kills_name"}, {"zh-tw"}, function(locale, value) return "老練刺客" end),

			--[+ Kill 250 Specialist or Elites with critical weakspot hits while Weapons Specialist is active. +]-- -- руоф Убейте особых или элитных врагов (250) с помощью критических ударов по слабым местам, пока действует «Мастер оружия».
			create_template("ach_red_vet_3_ext_desc_en", {"loc_achievement_veteran_weapon_switch_passive_keystone_kills_description"}, {"en"}, function(locale, value) return "Kill "..COLORS_Numbers.target_rgb.." Specialist or Elites with "..COLORS_KWords.Crit_rgb.." "..COLORS_KWords.Weakspothits_rgb.." "..COLORS_KW_Penances.weapspec_rgb.." is active."..TALENTS_Enh_desc_penances.ED_Headshot_rgb end),
			--[+ Russian +]--
			create_template("ach_red_vet_3_ext_desc_ru", {"loc_achievement_veteran_weapon_switch_passive_keystone_kills_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью критических ударов в "..COLORS_KWords_ru.Weakspot_rgb_ru..", пока действует ключевой талант "..COLORS_KW_Penances_ru.weapspec_rgb_ru.."."..TALENTS_Enh_desc_penances_ru.ED_Headshot_rgb_ru end),
			--[+ Traditional Chinese +]--
			-- 在武器專家效果啟動時，
			-- 使用暴擊弱點命中擊殺250名專家或精英
			create_template("ach_red_vet_3_ext_desc_tw", {"loc_achievement_veteran_weapon_switch_passive_keystone_kills_description"}, {"zh-tw"}, function(locale, value) return "在 "..COLORS_KW_Penances_tw.KeyStone_i_p_rgb.."『"..COLORS_KW_Penances_tw.weapspec_rgb.."』時，\n使用 "..COLORS_KWords_tw.Crit_hits_rgb_tw.." 加上 "..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." "..COLORS_Numbers.target_rgb.." 名菁英或專家敵人。" .. TALENTS_Enh_desc_penances_tw.ED_Headshot_rgb end),

		--[+ Stay Alert +]-- -- руоф Будь начеку
			--[+ Russian +]--
			-- create_template("ach_class_vet_11_ext_ru", {"loc_achievement_veteran_2_medium_1_name"}, {"ru"}, function(locale, value) return "Будь внимательным" end),
			--[+ Traditional Chinese 保持警惕 +]--
			-- create_template("ach_class_vet_11_ext_tw", {"loc_achievement_veteran_2_medium_1_name"}, {"zh-tw"}, function(locale, value) return "保持警惕" end),

			--[+ On Malice Threat or higher, kill 150 enemies that have been marked by Volley Fire. +]-- -- руоф При угрозе «Злоба» или выше убейте врагов (150), отмеченных «Залповым огнем».
			create_template("ach_class_vet_11_ext_desc_en", {"loc_achievement_veteran_2_medium_1_description"}, {"en"}, function(locale, value) return "On "..COLORS_KWords.malice_rgb.." Threat or higher, kill "..COLORS_Numbers.target_rgb.." enemies that have been marked by "..COLORS_KW_Penances.volley_fire_rgb.." or "..COLORS_KW_Penances.executioner_stance_rgb.."." end),
			--[+ Russian +]--
			create_template("ach_class_vet_11_ext_desc_ru", {"loc_achievement_veteran_2_medium_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов, отмеченных способностями "..COLORS_KW_Penances_ru.volley_fire_rgb_ru.." или "..COLORS_KW_Penances_ru.executioner_stance_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 在惡毒或更高威脅度下，
			-- 擊殺150個被處決者姿態標記的敵人
			create_template("ach_class_vet_11_ext_desc_tw", {"loc_achievement_veteran_2_medium_1_description"}, {"zh-tw"}, function(locale, value) return "在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，擊殺 "..COLORS_Numbers.target_rgb.." 名，\n被 "..COLORS_KW_Penances_tw.AbilityModifiers_p_rgb.."『"..COLORS_KW_Penances_tw.volley_fire_rgb.."』或『"..COLORS_KW_Penances_tw.executioner_stance_rgb.."』標記的敵人。" end),

		--[+ Be Methodical - Будь методичным +]-- -- руоф Будь собран
			--[+ Russian +]--
			create_template("ach_class_vet_13_ext_ru", {"loc_achievement_veteran_2_hard_2_name"}, {"ru"}, function(locale, value) return "Будь методичным" end),
			--[+ Traditional Chinese 有條不紊 +]--
			create_template("ach_class_vet_13_ext_tw", {"loc_achievement_veteran_2_hard_2_name"}, {"zh-tw"}, function(locale, value) return "有條不紊" end),

			--[+ On Heresy Threat or higher, keep Volley Fire active for over 20 seconds 5 times. +]-- -- руоф При угрозе «Ересь» или выше примените «Залповый огонь» в течение 20 с 5 р.
			create_template("ach_class_vet_13_ext_desc_en", {"loc_achievement_veteran_2_hard_2_description"}, {"en"}, function(locale, value) return "On "..COLORS_KWords.heresy_rgb.." Threat or higher, keep "..COLORS_KW_Penances.executioner_stance_rgb.." active for over "..COLORS_Numbers.time_rgb.." seconds "..COLORS_Numbers.target_rgb.." times."..TALENTS_Enh_desc_penances.ED_On_heresy_volley_rgb end),
			--[+ Russian +]--
			create_template("ach_class_vet_13_ext_desc_ru", {"loc_achievement_veteran_2_hard_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, поддерживайте способность "..COLORS_KW_Penances_ru.executioner_stance_rgb_ru.." активной в течение "..COLORS_Numbers.time_rgb.." секунд. Выполните это задание "..COLORS_Numbers.target_rgb.." раз."..TALENTS_Enh_desc_penances_ru.ED_On_heresy_volley_rgb_ru end),
			--[+ Traditional Chinese +]--
			-- 在異端威脅度或更高難度下，
			-- 使火力齊射的啟動時間超過20秒，需要達成5次。
			create_template("ach_class_vet_13_ext_desc_tw", {"loc_achievement_veteran_2_hard_2_description"}, {"zh-tw"}, function(locale, value) return "在 "..COLORS_KWords_tw.heresy_rgb_tw.." 或更高難度中，\n啟動 "..COLORS_KW_Penances_tw.Ability_p_rgb.."『"..COLORS_KW_Penances_tw.executioner_stance_rgb.."』持續 "..COLORS_Numbers.time_rgb.." 秒以上。\n完成此苦修需達成 "..COLORS_Numbers.target_rgb.." 次。" .. TALENTS_Enh_desc_penances_tw.ED_On_heresy_volley_rgb end),			

		--[+ Stand up and Fight! +]-- -- руоф Встань и сражайся!
			--[+ Russian +]--
			create_template("ach_class_vet_13_ext_ru", {"loc_achievement_veteran_voice_of_command_toughness_given_name"}, {"ru"}, function(locale, value) return "Встань и сражайся!" end),
			--[+ Traditional Chinese 站起來繼續戰鬥！ +]--
			create_template("ach_class_vet_13_ext_tw", {"loc_achievement_veteran_voice_of_command_toughness_given_name"}, {"zh-tw"}, function(locale, value) return "站起來繼續戰鬥！" end),

			--[+ Restore 7500 Toughness to yourself using Voice of Command. +]-- -- руоф Восстановите себе 7500 стойкости с помощью «Командного голоса».
			--[+ Russian +]--
			create_template("ach_class_vet_13_ext_desc_ru", {"loc_achievement_veteran_voice_of_command_toughness_given_description"}, {"ru"}, function(locale, value) return "Восстановите себе "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." с помощью способности "..COLORS_KW_Penances_ru.voiceoc_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 使用命令戰吼恢復自身7500點韌性。
			create_template("ach_class_vet_13_ext_desc_tw", {"loc_achievement_veteran_voice_of_command_toughness_given_description"}, {"zh-tw"}, function(locale, value) return "使用 "..COLORS_KW_Penances_tw.Ability_p_rgb.."『"..COLORS_KW_Penances_tw.voiceoc_rgb.."』恢復自身 "..COLORS_Numbers.target_rgb.." 點 "..COLORS_KWords_tw.Toughness_rgb_tw.."。" end),


		--[+ Sweep and Clear +]--
			--[+ Russian +]--
			-- create_template("ach_class_vet_13_ext_ru", {"loc_achievement_veteran_team_damage_amplified_name"}, {"ru"}, function(locale, value) return "Выявить и зачистить" end),
			--[+ Traditional Chinese +]--
			-- create_template("ach_class_vet_13_ext_tw", {"loc_achievement_veteran_team_damage_amplified_name"}, {"zh-tw"}, function(locale, value) return "全面掃蕩" end),

			--[+ Kill 7500 enemies while affected by Fire Team. Kills made by any affected team member also count. +]-- -- руоф Убейте врагов (7500), находясь под действием «Огневой поддержки». Убийства, совершенные любым членом команды под действием эффекта, тоже учитываются.
		--[+ Kill 7500 enemies while affected by Fire Team. Kills made by any affected team member also count. +]--
			--[+ Russian +]--
			create_template("ach_class_vet_13_ext_desc_ru", {"loc_achievement_veteran_team_damage_amplified_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, находясь под действием ауры "..COLORS_KW_Penances_ru.firetim_rgb_ru..". Убийства, совершённые любым членом команды, находящимся под действием вашей ауры, также учитываются." end),
			--[+ Traditional Chinese +]--
			-- 在火力小分隊效果啟動時擊殺7500名敵人。
			-- 由獲得效果的小隊成員造成的擊殺也算。
			create_template("ach_class_vet_13_ext_desc_tw", {"loc_achievement_veteran_team_damage_amplified_description"}, {"zh-tw"}, function(locale, value) return "在 "..COLORS_KW_Penances_tw.Aura_p_rgb.."『"..COLORS_KW_Penances_tw.firetim_rgb.."』的影響下，擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。\n"..COLORS_KW_Penances_tw.Aura_i_p_rgb.." 的隊友擊殺也會計算。" end),

		--[+ Armourbane +]-- -- руоф Бронебой
		--[+ Armourbane +]--
			--[+ Russian +]--
			-- create_template("ach_class_vet_8_ext_ru", {"loc_achievement_veteran_krak_grenade_kills_name"}, {"ru"}, function(locale, value) return "Губитель брони" end),
			--[+ Traditional Chinese +]--
			-- create_template("ach_class_vet_8_ext_tw", {"loc_achievement_veteran_krak_grenade_kills_name"}, {"zh-tw"}, function(locale, value) return "護甲之災" end),

			--[+ Kill 500 armoured enemies using krak grenades. +]-- -- руоф Убейте врагов с бронёй (500) с помощью крак-гранат.
		--[+ Kill 500 armoured enemies using krak grenades. +]--
			--[+ Russian +]--
			create_template("ach_class_vet_8_ext_desc_ru", {"loc_achievement_veteran_krak_grenade_kills_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." бронированных врагов, используя "..COLORS_KW_Penances_ru.krak_gr_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 使用穿甲手榴彈擊殺500名護甲敵人
			create_template("ach_class_vet_8_ext_desc_tw", {"loc_achievement_veteran_krak_grenade_kills_description"}, {"zh-tw"}, function(locale, value) return "使用 "..COLORS_KW_Penances_tw.Blitz_p_rgb.."『"..COLORS_KW_Penances_tw.krak_gr_rgb.."』擊殺 "..COLORS_Numbers.target_rgb.." 名護甲敵人。" end),

		--[+ Keep it Tight +]-- -- руоф Держать в секрете
			--[+ Russian +]--
			create_template("ach_red_vet_3_ext_ru", {"loc_achievement_veteran_team_movement_amplifed_name"}, {"ru"}, function(locale, value) return "Держитесь вместе" end),
			--[+ Traditional Chinese 保持陣型 +]--
			create_template("ach_red_vet_3_ext_tw", {"loc_achievement_veteran_team_movement_amplifed_name"}, {"zh-tw"}, function(locale, value) return "保持陣型." end),

		--[+ Move a total of 10000 meters in coherency with your team members while under the effect of Close and Kill. +]-- -- руоф Переместитесь с членами команды под действием «Сплоченности» суммарно на 10000 м, пока действует эффект «Приблизиться и убить».
			--[+ Russian +]--
			create_template("ach_red_vet_3_ext_desc_ru", {"loc_achievement_veteran_team_movement_amplifed_description"}, {"ru"}, function(locale, value) return "Переместитесь на "..COLORS_Numbers.target_rgb.." метров под действием ауры "..COLORS_KW_Penances_ru.closenkill_rgb_ru..", находясь под действием "..COLORS_KWords_ru.Coherency_rgb_ru.." с членами вашей команды." end),
			--[+ Traditional Chinese +]--
			-- 在抵近殺敵效果啟動時，與隊友一起移動10000公尺。
			create_template("ach_red_vet_3_ext_desc_tw", {"loc_achievement_veteran_team_movement_amplifed_description"}, {"zh-tw"}, function(locale, value) return "在與隊友保持 "..COLORS_KWords_tw.Coherency_rgb_tw.." 時，\n於 "..COLORS_KW_Penances_tw.Aura_p_rgb.."『"..COLORS_KW_Penances_tw.closenkill_rgb.."』效果期間內，\n移動距離達 "..COLORS_Numbers.target_rgb.." 公尺。" end),

		--[+ Long Bomb +]-- -- руоф Длинный пас
			--[+ Russian +]--
			-- create_template("ach_red_vet_3_ext_ru", {"loc_achievement_veteran_2_unbounced_grenade_kills_name"}, {"ru"}, function(locale, value) return "Дальний бросок" end),
			--[+ Traditional Chinese 遠擲炸彈 +]--
			-- create_template("ach_red_vet_3_ext_tw", {"loc_achievement_veteran_2_unbounced_grenade_kills_name"}, {"zh-tw"}, function(locale, value) return "遠擲炸彈" end),

		--[+ Hit 5 enemies with a Frag Grenade without it bouncing. +]-- -- руоф Убейте врагов (5) фраг-гранатой так, чтобы она не отскакивала.
			--[+ Russian +]--
			create_template("ach_red_vet_3_ext_desc_ru", {"loc_achievement_veteran_2_unbounced_grenade_kills_description"}, {"ru"}, function(locale, value) return "Поразите взрывом "..COLORS_KW_Penances_ru.frag_gr_rgb_ru.." "..COLORS_Numbers.target_rgb.." врагов так, чтобы граната ни разу не отскочила от земли."..TALENTS_Enh_desc_penances_ru.ED_Long_bomb_rgb_ru end),
			--[+ Traditional Chinese +]--
			-- 使用碎片手雷殺死5名敵人，且手雷沒有落地彈起。
			create_template("ach_red_vet_3_ext_desc_tw", {"loc_achievement_veteran_2_unbounced_grenade_kills_description"}, {"zh-tw"}, function(locale, value) return "使用 "..COLORS_KW_Penances_tw.Blitz_p_rgb.."『"..COLORS_KW_Penances_tw.frag_gr_rgb.."』擊殺 "..COLORS_Numbers.target_rgb.." 名敵人，且手榴彈在引爆前不得碰觸地面。" .. TALENTS_Enh_desc_penances_tw.ED_Long_bomb_rgb end),


		--[+ Smoke Screen +]--
			--[+ Russian +]--
			-- create_template("ach_red_vet_3_ext_ru", {"loc_achievement_veteran_smoke_grenade_engulfed_name"}, {"ru"}, function(locale, value) return "Дымовая завеса" end),
			--[+ Traditional Chinese 煙幕 +]--
			-- create_template("ach_red_vet_3_ext_tw", {"loc_achievement_veteran_smoke_grenade_engulfed_name"}, {"zh-tw"}, function(locale, value) return "煙幕" end),

		--[+ Engulf 2000 enemies in smoke using the Smoke Grenade. +]-- -- руоф Окутайте дымом врагов (2000) с помощью дымовой гранаты.
			--[+ Russian +]--
			create_template("ach_red_vet_3_ext_desc_ru", {"loc_achievement_veteran_smoke_grenade_engulfed_description"}, {"ru"}, function(locale, value) return "Окутайте дымом "..COLORS_Numbers.target_rgb.." врагов с помощью "..COLORS_KW_Penances_ru.smok_gr_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 使用煙霧彈干擾2000名敵人。
			create_template("ach_red_vet_3_ext_desc_tw", {"loc_achievement_veteran_smoke_grenade_engulfed_description"}, {"zh-tw"}, function(locale, value) return "使用 "..COLORS_KW_Penances_tw.Blitz_p_rgb.."『"..COLORS_KW_Penances_tw.smok_gr_rgb.."』使 "..COLORS_Numbers.target_rgb.." 名敵人陷入煙霧之中。" end),


		--[+ Deadeye +]-- руоф Меткий глаз
			--[+ Russian +]--
			-- create_template("ach_red_vet_6_ext_ru", {"loc_achievement_veteran_2_elite_weakspot_kills_during_volley_fire_alternate_fire_name"}, {"ru"}, function(locale, value) return "Меткий глаз" end),
			--[+ Traditional Chinese 神射手 +]--
			-- create_template("ach_red_vet_6_ext_tw", {"loc_achievement_veteran_2_elite_weakspot_kills_during_volley_fire_alternate_fire_name"}, {"zh-tw"}, function(locale, value) return "神射手" end),

		--[+ On Heresy Threat or higher, during a single use of Volley Fire, kill 5 highlighted enemies with Weak Spot hits whilst using a weapon's Secondary Action. +]-- -- руоф При угрозе «Ересь» или выше за однократное применение «Залпового огня»  убейте выделенных врагов (5) попаданием в слабое место, используя дополнительное действие оружия.
			--[+ Russian +]--
			create_template("ach_red_vet_6_ext_desc_ru", {"loc_achievement_veteran_2_elite_weakspot_kills_during_volley_fire_alternate_fire_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, на протяжении одного использования способностей "..COLORS_KW_Penances_ru.volley_fire_rgb_ru.." или "..COLORS_KW_Penances_ru.executioner_stance_rgb_ru..", убейте прицельными выстрелами "..COLORS_Numbers.target_rgb.." подсвеченных врагов в "..COLORS_KWords_ru.Weakspot_rgb_ru.."."..TALENTS_Enh_desc_penances_ru.ED_Headshot_rgb_ru end),
			--[+ Traditional Chinese +]--
			-- 以異教徒或以上威脅度，僅用1次火力齊射，
			-- 以武器的次要動作擊中5名高亮的敵人的弱點，將其急殺。
			create_template("ach_red_vet_6_ext_desc_tw", {"loc_achievement_veteran_2_elite_weakspot_kills_during_volley_fire_alternate_fire_description"}, {"zh-tw"}, function(locale, value) return "在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，\n在單次 "..COLORS_KW_Penances_tw.Ability_p_rgb.."『"..COLORS_KW_Penances_tw.volley_fire_rgb.."』或『"..COLORS_KW_Penances_tw.executioner_stance_rgb.."』期間，\n使用瞄準射擊 "..COLORS_KWords_tw.Weakspothits_rgb_tw.." ，擊殺 "..COLORS_Numbers.target_rgb.." 名被標記的敵人。" .. TALENTS_Enh_desc_penances_tw.ED_Headshot_rgb end),

		--[+ Unseen Predator +]-- руоф Невидимый хищник
			--[+ Russian +]--
			-- create_template("ach_red_vet_3_ext_ru", {"loc_achievement_veteran_infiltrate_supress_name"}, {"ru"}, function(locale, value) return "Невидимый хищник" end),
			--[+ Traditional Chinese 隱形獵手 +]--
			-- create_template("ach_red_vet_3_ext_tw", {"loc_achievement_veteran_infiltrate_supress_name"}, {"zh-tw"}, function(locale, value) return "隱形獵手" end),

		--[+ Suppress 750 enemies using Infiltrate. +]-- -- руоф Подавите врагов (750) с помощью «Проникновения».
			--[+ Russian +]--
			create_template("ach_red_vet_3_ext_desc_ru", {"loc_achievement_veteran_infiltrate_supress_description"}, {"ru"}, function(locale, value) return "Подавите врагов "..COLORS_Numbers.target_rgb.." с помощью способности "..COLORS_KW_Penances_ru.infiltr_rgb_ru.."."..TALENTS_Enh_desc_penances_ru.ED_Unseen_predator_rgb_ru end),
			--[+ Traditional Chinese +]--
			-- 使用滲透既能壓制750名敵人。
			create_template("ach_red_vet_3_ext_desc_tw", {"loc_achievement_veteran_infiltrate_supress_description"}, {"zh-tw"}, function(locale, value) return "使用 "..COLORS_KW_Penances_tw.Ability_p_rgb.."『"..COLORS_KW_Penances_tw.infiltr_rgb.."』壓制 "..COLORS_Numbers.target_rgb.." 名敵人。" .. TALENTS_Enh_desc_penances_tw.ED_Unseen_predator_rgb end),

		--[+ Marked For Death - Отмеченные на смерть +]-- -- руоф Отмечены смертью
			--[+ Russian +]--
			create_template("ach_red_vet_2_ext_ru", {"loc_achievement_veteran_2_weakspot_hits_during_volley_fire_alternate_fire_name"}, {"ru"}, function(locale, value) return "Отмеченные на смерть" end),
			--[+ Traditional Chinese 死亡標記 +]--
			create_template("ach_red_vet_2_ext_tw", {"loc_achievement_veteran_2_weakspot_hits_during_volley_fire_alternate_fire_name"}, {"zh-tw"}, function(locale, value) return "死亡標記" end),

		--[+ During a single use of Volley Fire, hit enemy Weak Spot 4 times using a weapon's Secondary Action, without missing a shot. +]-- -- руоф За однократное применение «Залпового огня» поразите слабые места врагов (4) дополнительным действием оружия, не промахнувшись.
			--[+ Russian +]--
			create_template("ach_red_vet_2_ext_desc_ru", {"loc_achievement_veteran_2_weakspot_hits_during_volley_fire_alternate_fire_description"}, {"ru"}, function(locale, value) return "За одно использование способностей "..COLORS_KW_Penances_ru.volley_fire_rgb_ru.." или "..COLORS_KW_Penances_ru.executioner_stance_rgb_ru.." поразите "..COLORS_Numbers.target_rgb.." врагов прицельными выстрелами в "..COLORS_KWords_ru.Weakspot_rgb_ru.." ни разу не промахнувшись. {#color(177, 144, 0)}+++ - Стреляйте врагам в голову. +++{#reset()}"..TALENTS_Enh_desc_penances_ru.ED_Headshot_rgb_ru end),
			--[+ Traditional Chinese +]--
			-- 在單次火力騎射期間使用武器的次要動作命中敵人的弱點4次，且不打偏1發子彈。
			create_template("ach_red_vet_2_ext_desc_tw", {"loc_achievement_veteran_2_weakspot_hits_during_volley_fire_alternate_fire_description"}, {"zh-tw"}, function(locale, value) return "於單次 "..COLORS_KW_Penances_tw.Ability_p_rgb.."『"..COLORS_KW_Penances_tw.volley_fire_rgb.."』或『"..COLORS_KW_Penances_tw.executioner_stance_rgb.."』期間，\n使用瞄準射擊連續命中 "..COLORS_Numbers.target_rgb.." 名敵人的 "..COLORS_KWords_tw.Weakspot_rgb_tw.."，且不得中斷。" .. TALENTS_Enh_desc_penances_tw.ED_Headshot_rgb end),

		--[+ Resupply Allies +]-- -- руоф Поделись с ближним
			--[+ Russian +]--
			create_template("ach_class_vet_8_ext_ru", {"loc_achievement_veteran_2_easy_2_name"}, {"ru"}, function(locale, value) return "Пополните припасы союзников" end),
			--[+ Traditional Chinese 補給盟友 +]--
			create_template("ach_class_vet_8_ext_tw", {"loc_achievement_veteran_2_easy_2_name"}, {"zh-tw"}, function(locale, value) return "補給盟友" end),

		--[+ Replenish 5000 total ammunition to allies using Scavenger. +]-- -- руоф Пополните 5000 ед. боеприпасов союзникам при помощи «Собирателя».
			--[+ Russian +]--
			create_template("ach_class_vet_8_ext_desc_ru", {"loc_achievement_veteran_2_easy_2_description"}, {"ru"}, function(locale, value) return "Восстановите "..COLORS_Numbers.target_rgb.." единиц боеприпасов союзникам с помощью талантов "..COLORS_KW_Penances_ru.scavenger_rgb_ru.." или "..COLORS_KW_Penances_ru.survivalist_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 使用清道夫為盟友恢復5000總彈藥量。
			create_template("ach_class_vet_8_ext_desc_tw", {"loc_achievement_veteran_2_easy_2_description"}, {"zh-tw"}, function(locale, value) return "透過 "..COLORS_KW_Penances_tw.Aura_p_rgb.."『"..COLORS_KW_Penances_tw.scavenger_rgb.."』或『"..COLORS_KW_Penances_tw.survivalist_rgb.."』，\n為隊友恢復 "..COLORS_Numbers.target_rgb.." 發彈藥。" end),

		--[+ Find your Targets +]-- -- руоф Поиск целей
			--[+ Russian +]--
			create_template("ach_class_vet_12_ext_ru", {"loc_achievement_veteran_2_hard_1_name"}, {"ru"}, function(locale, value) return "Найди свои цели" end),
			--[+ Traditional Chinese 尋找目標 +]--
			create_template("ach_class_vet_12_ext_tw", {"loc_achievement_veteran_2_hard_1_name"}, {"zh-tw"}, function(locale, value) return "尋找目標" end),

		--[+ On Heresy Threat or higher, kill 2 Elite or Specialist enemies during a single Volley Fire, 50 times. +]-- -- руоф При угрозе «Ересь» или выше убейте элитных врагов или специалистов (2) за одно применение «Залпового огня» 50 р.
			--[+ Russian +]--
			create_template("ach_class_vet_12_ext_desc_ru", {"loc_achievement_veteran_2_hard_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, убейте "..COLORS_Numbers.num_enemies_rgb.." элитных врагов или специалистов во время непрерывного действия способностей "..COLORS_KW_Penances_ru.volley_fire_rgb_ru.." или "..COLORS_KW_Penances_ru.executioner_stance_rgb_ru ..". Выполните это задание "..COLORS_Numbers.target_rgb.." раз." end),
			--[+ Traditional Chinese +]--
			-- 在異端威脅度或更高難度下，
			-- 在單次火力齊射期中擊殺2個精英或專家敵人，需要達成50次。
			create_template("ach_class_vet_12_ext_desc_tw", {"loc_achievement_veteran_2_hard_1_description"}, {"zh-tw"}, function(locale, value) return "在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，\n於單次 "..COLORS_KW_Penances_tw.Ability_p_rgb.."『"..COLORS_KW_Penances_tw.volley_fire_rgb.."』或『"..COLORS_KW_Penances_tw.executioner_stance_rgb.."』期間，\n擊殺 "..COLORS_Numbers.num_enemies_rgb.." 名精英或專家敵人。此任務共需達成 "..COLORS_Numbers.target_rgb.." 次。" end),

		--[+ Killshot Ready +]--
			--[+ Russian +]--
			-- create_template("ach_class_vet_8_ext_ru", {"loc_achievement_veteran_enemies_killed_with_max_focus_fire_name"}, {"ru"}, function(locale, value) return "Смертельный выстрел готов" end),
			--[+ Traditional Chinese 射殺預備 +]--
			-- create_template("ach_class_vet_8_ext_tw", {"loc_achievement_veteran_enemies_killed_with_max_focus_fire_name"}, {"zh-tw"}, function(locale, value) return "射殺預備" end),

		--[+ Kill 2500 enemies while at 10 stacks of Marksman's focus or more. +]-- -- руоф Убейте врагов (2500), имея не менее 10 зарядов «Концентрации снайпера».
			--[+ Russian +]--
			create_template("ach_class_vet_8_ext_desc_ru", {"loc_achievement_veteran_enemies_killed_with_max_focus_fire_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, имея не менее "..COLORS_Numbers.n_10_rgb.." зарядов "..COLORS_KWords_ru.Focus_rgb_ru.." от ключевого таланта "..COLORS_KW_Penances_ru.snipcon_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 在疊加10曾獲更多層鷹眼聚焦時，擊殺2500名敵人。
			create_template("ach_class_vet_8_ext_desc_tw", {"loc_achievement_veteran_enemies_killed_with_max_focus_fire_description"}, {"zh-tw"}, function(locale, value) return "在累積至少 "..COLORS_Numbers.n_10_rgb.." 層 "..COLORS_KW_Penances_tw.KeyStone_p_rgb.."『"..COLORS_KW_Penances_tw.snipcon_rgb.."』的 "..COLORS_KWords_tw.Focus_rgb_tw.." 時，\n擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。" end),

		--[+ Focus Soldier! +]-- -- руоф Солдат в прицеле!
			--[+ Russian +]--
			create_template("ach_class_vet_8_ext_ru", {"loc_achievement_veteran_kills_with_improved_tag_name"}, {"ru"}, function(locale, value) return "Прицелься, солдат!" end),
			--[+ Traditional Chinese 士兵，鎖定目標! +]--
			-- create_template("ach_class_vet_8_ext_tw", {"loc_achievement_veteran_kills_with_improved_tag_name"}, {"zh-tw"}, function(locale, value) return "士兵，鎖定目標!" end),

		--[+ Kill 500 enemies tagged by Focus Target! +]-- -- руоф Убейте врагов (500), отмеченных эффектом «В прицеле!».
			--[+ Russian +]--
			create_template("ach_class_vet_8_ext_desc_ru", {"loc_achievement_veteran_kills_with_improved_tag_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, отмеченных с помощью ключевого таланта "..COLORS_KW_Penances_ru.fcs_trg_rgb_ru.."." end),
			--[+ Traditional Chinese +]--
			-- 擊殺500名被「鎖定目標！」標記的敵人
			create_template("ach_class_vet_8_ext_desc_tw", {"loc_achievement_veteran_kills_with_improved_tag_description"}, {"zh-tw"}, function(locale, value) return "擊殺 "..COLORS_Numbers.target_rgb.." 名被 "..COLORS_KW_Penances_tw.KeyStone_p_rgb.."『"..COLORS_KW_Penances_tw.fcs_trg_rgb.."』標記的敵人。" end),


	--[+ +ZEALOT - ИЗУВЕР+ +]--
	--[+ Russian +]--
	create_template("ach_class_zea_0_ext_ru", {"loc_class_zealot_title"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_zea_rgb_ru end),

	--[+ ПРОГРЕСС +]--
		--[+ Prove Your Worth (1-5) - Докажите, чего стоите (1-5) +]-- -- руоф Докажи, чего стоишь (1-5)
	--[+ Russian +]--
		-- create_template("ach_class_zea_4_ext_ru", {"loc_missions_zealot_2_easy_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Докажите, чего стоите (1-5)" end),

			--[+ Complete 1 Missions on Sedition Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Мятеж» или выше.
	--[+ Russian +]--
			create_template("ach_class_zea_4_1_ext_desc_ru", {"loc_missions_zealot_2_easy_difficulty_1_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_sedition_threat_ru end),

			--[+ Complete 1 Missions on Uprising Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Восстание» или выше.
	--[+ Russian +]--
			create_template("ach_class_zea_4_2_ext_desc_ru", {"loc_missions_zealot_2_easy_difficulty_2_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_uprising_threat_ru end),

			--[+ Complete 1 Missions on Malice Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Злоба» или выше.
	--[+ Russian +]--
			create_template("ach_class_zea_4_3_ext_desc_ru", {"loc_missions_zealot_2_easy_difficulty_3_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_malice_threat_ru end),

			--[+ Complete 1 Missions on Heresy Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Ересь» или выше.
	--[+ Russian +]--
			create_template("ach_class_zea_4_4_ext_desc_ru", {"loc_missions_zealot_2_easy_difficulty_4_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_heresy_threat_ru end),

			--[+ Complete 1 Missions on Damnation Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Проклятие» или выше.
	--[+ Russian +]--
			create_template("ach_class_zea_4_5_ext_desc_ru", {"loc_missions_zealot_2_easy_difficulty_5_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_damnation_threat_ru end),

		--[+ Sainted Path (1-3) - Путь святого (1-3) +]-- руоф Священный путь (1-3)
	--[+ Russian +]--
		-- create_template("ach_class_zea_14_ext_ru", {"loc_achievement_group_class_zealot_2_1-3_name"}, {"ru"}, function(locale, value) return "Путь святого (1-3)" end),

			--[+ Complete the following Penances as the Zealot -  +]-- -- руоф Выполнить следующие искупления за Изувера.
	--[+ Russian +]--
			create_template("ach_class_zea_9_ext_desc_ru", {"loc_group_zealot_2_rank_4_difficulty_3_description", "loc_group_zealot_2_rank_5_difficulty_4_description", "loc_group_zealot_2_rank_1_difficulty_1_description", "loc_group_zealot_2_rank_2_difficulty_2_description", "loc_achievement_group_class_zealot_2_description", "loc_group_class_challenges_zealot_2_x_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления "..COLORS_KWords_ru.cls_zea2_rgb_ru.."." end),

		--[+ Master Your Tools -  +]-- -- руоф Знай свое дело
	--[+ Russian +]--
		create_template("ach_class_zea_12_ext_ru", {"loc_achievement_zealot_2_hard_1_name"}, {"ru"}, function(locale, value) return "Знай своё дело" end),

			--[+ On Heresy Threat or higher, kill 75 Elite or Specialist enemies with Powered Melee Attacks (Chain or Power weapons). -  +]-- -- руоф При угрозе «Ересь» или выше убейте элитных врагов или специалистов (75) усиленными атаками в ближнем бою (цепным или психосиловым оружием).
	--[+ Russian +]--
			create_template("ach_class_zea_12_ext_desc_ru", {"loc_achievement_zealot_2_hard_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов в ближнем бою специальными атаками цепного или силового оружия." end),

		--[+ Doomseeker (1-5) -  +]-- -- руоф Искатель судьбы (1-5)
	--[+ Russian +]--
		-- create_template("ach_class_zea_2_ext_ru", {"loc_achievement_missions_zealot_2_1-5_name"}, {"ru"}, function(locale, value) return "Искатель судьбы (1-5)" end),

			--[+ Complete 100 Missions as a Zealot. -  +]-- -- Выполнить Изувером задания: 100.
	--[+ Russian +]--
			create_template("ach_class_zea_2_ext_desc_ru", {"loc_achievement_missions_zealot_2_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий "..COLORS_KWords_ru.cls_zea2_rgb_ru.."." end),

		--[+ Maniacal Laughter (6) -  +]-- -- руоф Маниакальный смех (6)
	--[+ Russian +]--
		-- create_template("ach_class_zea_1_ext_ru", {"loc_achievement_rank_zealot_2_6_name"}, {"ru"}, function(locale, value) return "Маниакальный смех (6)" end),

			--[+ Reach Trust Level 30 as a Zealot. -  +]-- -- руоф Заслужить уровень доверия 30, играя за Изувера.
	--[+ Russian +]--
			create_template("ach_class_zea_1_ext_desc_ru", {"loc_achievement_rank_zealot_2_x_description"}, {"ru"}, function(locale, value) return "Достигните "..COLORS_Numbers.target_rgb.." уровня доверия "..COLORS_KWords_ru.cls_zea2_rgb_ru.."." end),

		--[+ Just A Flesh Wound - Просто царапина +]--
	--[+ Russian +]--
		-- create_template("ach_red_zea_7_ext_ru", {"loc_achievement_zealot_2_health_on_last_segment_enough_during_mission_name"}, {"ru"}, function(locale, value) return "Просто царапина" end),

			--[+ Complete a full mission on Heresy Threat or higher in under 20 minutes, with less than a Wound's worth of Health remaining for 75% of the time. (Private Game: Penance can only be completed in a private game) - +]--
	--[+ Russian +]--
			create_template("ach_red_zea_7_ext_desc_ru", {"loc_achievement_zealot_2_health_on_last_segment_enough_during_mission_description"}, {"ru"}, function(locale, value) return "Завершите полностью миссию на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, менее чем за "..COLORS_Numbers.time_wind_rgb.." минут, при этом "..COLORS_Numbers.health_pc_rgb.." времени у вас должно быть не более одного сегмента "..COLORS_KWords_ru.Wound_rgb_ru.."." end),

		--[+ Up Close and Personal - С близкого расстояния +]--
	--[+ Russian +]--
		-- create_template("ach_red_zea_5_ext_ru", {"loc_achievement_zealot_2_not_use_ranged_attacks_name"}, {"ru"}, function(locale, value) return "С близкого расстояния" end),

			--[+ Complete a full Mission on Malice Threat or higher without firing a shot. -  +]-- -- При угрозе «Злоба» или выше полностью завершите задание, не сделав ни одного выстрела.
	--[+ Russian +]--
			create_template("ach_red_zea_5_ext_desc_ru", {"loc_achievement_zealot_2_not_use_ranged_attacks_description"}, {"ru"}, function(locale, value) return "Завершите полностью миссию на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, не сделав ни одного выстрела." end),

		--[+ Fight the Good Fight (1-5) - Сражайтесь достойно (1-5) +]-- руоф Сражайся достойно (1-5)
	--[+ Russian +]--
		-- create_template("ach_red_zea_1_ext_ru", {"loc_missions_zealot_2_medium_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Сражайтесь достойно (1-5)" end),

			--[+ Complete 5 Missions on Sedition Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Мятеж» или выше.
	--[+ Russian +]--
			create_template("ach_red_zea_1_1_ext_desc_ru", {"loc_missions_zealot_2_medium_difficulty_1_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_zea2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.sedition_rgb_ru.." или выше." end),

			--[+ Complete 5 Missions on Uprising Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Восстание» или выше.
	--[+ Russian +]--
			create_template("ach_red_zea_1_2_ext_desc_ru", {"loc_missions_zealot_2_medium_difficulty_2_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_zea2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.uprising_rgb_ru.." или выше." end),

			--[+ Complete 5 Missions on Malice Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Злоба» или выше.
	--[+ Russian +]--
			create_template("ach_red_zea_1_3_ext_desc_ru", {"loc_missions_zealot_2_medium_difficulty_3_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_zea2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше." end),

			--[+ Complete 5 Missions on Heresy Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Ересь» или выше.
	--[+ Russian +]--
			create_template("ach_red_zea_1_4_ext_desc_ru", {"loc_missions_zealot_2_medium_difficulty_4_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_zea2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше." end),

			--[+ Complete 5 Missions on Damnation Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Проклятие» или выше.
	--[+ Russian +]--
			create_template("ach_red_zea_1_5_ext_desc_ru", {"loc_missions_zealot_2_medium_difficulty_5_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_zea2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше." end),

		--[+ Find Their Weakness - Найди их слабости +]-- руоф Узнай их слабости
	--[+ Russian +]--
		create_template("ach_class_zea_11_ext_ru", {"loc_achievement_zealot_2_medium_1_name"}, {"ru"}, function(locale, value) return "Найди их слабости" end),

			--[+ On Malice Threat or higher, kill 75 Stunned enemies with Critical Hits. +]-- руоф При угрозе «Злоба» или выше убейте оглушенных врагов (75) критическими ударами.
	--[+ Russian +]--
			create_template("ach_class_zea_11_ext_desc_ru", {"loc_achievement_zealot_2_medium_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Staggered_rgb_ru.." врагов "..COLORS_KWords_ru.Crit_hits_rgb_ru.."." end),

		--[+ Praise the God-Emperor! (1-3) +]-- руоф Хвала Богу-Императору! (1-3)
	--[+ Russian +]--
		-- create_template("ach_class_zea_3_ext_ru", {"loc_achievement_missions_zealot_2_objective_1-3_name"}, {"ru"}, function(locale, value) return "Хвала Богу-Императору! (1-3)" end),

			--[+ As a Zealot, complete a Mission of each type. +]-- руоф Выполнить Изувером по меньшей мере одно задание каждого типа.
	--[+ Russian +]--
			create_template("ach_class_zea_3_1_ext_desc_ru", {"loc_achievement_missions_zealot_2_objective_1_description"}, {"ru"}, function(locale, value) return "Завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_zea2_rgb_ru.."." end),

			--[+ As a Zealot, complete a Mission of each type on Malice Threat or higher. +]-- руоф Выполнить Изувером по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
	--[+ Russian +]--
			create_template("ach_class_zea_3_3_ext_desc_ru", {"loc_achievement_missions_zealot_2_objective_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_zea2_rgb_ru.."." end),

			--[+ As a Zealot, complete a Mission of each type on Heresy Threat or higher. +]-- руоф Выполнить Изувером по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.
	--[+ Russian +]--
			create_template("ach_class_zea_3_4_ext_desc_ru", {"loc_achievement_missions_zealot_2_objective_3_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_zea2_rgb_ru.."." end),

	--[+ +СПОСОБНОСТИ+ +]--
		--[+ Blessed be Thine Aim +]-- -- руоф Благословен будь твой прицел
	--[+ Russian +]--
		-- create_template("ach_class_zea_7_ext_ru", {"loc_achievement_zealot_elite_or_special_kills_with_blade_of_faith_name"}, {"ru"}, function(locale, value) return "Благословен будь твой прицел" end),

			--[+ Kill 500 Specialist and Elites using Blades of Faith. +]-- -- руоф Убейте особых и элитных врагов (500) с помощью «Клинков веры».
	--[+ Russian +]--
			create_template("ach_class_zea_7_ext_desc_ru", {"loc_achievement_zealot_elite_or_special_kills_with_blade_of_faith_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов используя "..COLORS_KW_Penances_ru.klinvery_rgb_ru.."."..TALENTS_Enh_desc_penances_ru.ED_Blessed_be_thine_aim_rgb_ru end),

		--[+ Behind Enemy Lines +]-- -- руоф В тылу врага
	--[+ Russian +]--
		-- create_template("ach_class_zea_8_ext_ru", {"loc_achievement_zealot_aura_backstab_kills_while_alone_name"}, {"ru"}, function(locale, value) return "В тылу врага" end),

			--[+ Kill 200 Ranged enemies with backstab, while not in Coherency while under the effect of the Loner ability. +]-- -- руоф Убейте врагов дальнего боя (200) ударом в спину, не находясь под действием «Сплоченности».
	--[+ Russian +]--
			create_template("ach_class_zea_8_ext_desc_ru", {"loc_achievement_zealot_aura_backstab_kills_while_alone_description"}, {"ru"}, function(locale, value) return "Убейте ударом в спину "..COLORS_Numbers.target_rgb.." врагов с дальнобойным оружием под эффектом ауры "..COLORS_KW_Penances_ru.loner_rgb_ru..", пока вы не находитесь под действием "..COLORS_KWords_ru.Coherency_rgb_ru.." с другими союзниками." end),

		--[+ Inspiring Oratory - Вдохновляющая речь +]--
	--[+ Russian +]--
		-- create_template("ach_class_zea_8_ext_ru", {"loc_achievement_zealot_team_toughness_restored_with_chorus_name"}, {"ru"}, function(locale, value) return "Вдохновляющая речь" end),

			--[+ Restore 7500 toughness to other players using Chorus of Spir_I_tual Fortitude. +]-- -- руоф Восстановите другим игрокам 7500 стойкости с помощью «Хор духовной стойкости».
	--[+ Russian +]--
			create_template("ach_class_zea_8_ext_desc_ru", {"loc_achievement_zealot_team_toughness_restored_with_chorus_description"}, {"ru"}, function(locale, value) return "Восстановите другим игрокам "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." с помощью способности "..COLORS_KW_Penances_ru.chorusosf_rgb_ru.."." end),

		--[+ Trust in the Emperor +]-- руоф Верьте в Императора
	--[+ Russian +]--
		create_template("ach_class_zea_8_ext_ru", {"loc_achievement_zealot_aura_corruption_healed_name"}, {"ru"}, function(locale, value) return "Верь в Императора" end),

			--[+ Heal 5000 Corruption Damage to allies in coherency under the effect of Beacon of Purity. +]-- -- руоф Исцелите урон скверной союзникам под воздействием «Сплоченности» (5000), находясь под действием «Маяка непорочности».
	--[+ Russian +]--
			create_template("ach_class_zea_8_ext_desc_ru", {"loc_achievement_zealot_aura_corruption_healed_description"}, {"ru"}, function(locale, value) return "Исцелите "..COLORS_Numbers.target_rgb.." урона от "..COLORS_KWords_ru.Corruption_i_rgb_ru.." союзникам под действием "..COLORS_KWords_ru.Coherency_rgb_ru.." с помощью эффекта ауры "..COLORS_KW_Penances_ru.beaconop_rgb_ru.."." end),

		--[+ Stay Strong +]-- руоф Будь сильным
	--[+ Russian +]--
		create_template("ach_class_zea_8_ext_ru", {"loc_achievement_zealot_2_easy_2_name"}, {"ru"}, function(locale, value) return "Держись" end),

			--[+ Replenish 7500 Toughness using Chastise the Wicked. +]-- -- руоф Восстановите стойкость «Карой для нечестивых» 7500 р.
	--[+ Russian +]--
			create_template("ach_class_zea_8_ext_desc_ru", {"loc_achievement_zealot_2_easy_2_description"}, {"ru"}, function(locale, value) return "Восстановите "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru..", используя способности "..COLORS_KW_Penances_ru.chastise_wicked_rgb_ru.." или "..COLORS_KW_Penances_ru.fury_faithful_rgb_ru.."." end),

		--[+ There is Nothing But the Abyss... +]-- руоф Есть только бездна...
	--[+ Russian +]--
		-- create_template("ach_red_zea_6_ext_ru", {"loc_achievement_zealot_2_healed_up_after_resisting_death_name"}, {"ru"}, function(locale, value) return "Есть только бездна..." end),

			--[+ On Heresy threat or higher, heal to 25% Health with life gained solely from the Holy Revenant Talent. +]-- -- руоф При угрозе «Ересь» или выше восстановите 25% здоровья исключительно за счет таланта «Святой призрак».
	--[+ Russian +]--
			create_template("ach_red_zea_6_ext_desc_ru", {"loc_achievement_zealot_2_healed_up_after_resisting_death_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, вылечите до "..COLORS_Numbers.target_rgb..COLORS_Numbers.pc_rgb.." "..COLORS_KWords_ru.Wound_rgb_ru.." за счёт жизни, полученной исключительно от таланта "..COLORS_KW_Penances_ru.holy_revenant_rgb_ru.."." end),

		--[+ Test of Faith +]-- руоф Испытание веры
	--[+ Russian +]--
		-- create_template("ach_class_zea_7_ext_ru", {"loc_achievement_zealot_aura_toughness_damage_reduced_name"}, {"ru"}, function(locale, value) return "Испытание веры" end),

			--[+ Reduce a total of 1500 Toughness Damage to allies in coherency under the effect of Benediction. +]-- -- руоф Снизьте урон стойкости союзникам под воздействием «Сплоченности» (суммарно 1500), находясь под действием «Благословения».
	--[+ Russian +]--
			create_template("ach_class_zea_7_ext_desc_ru", {"loc_achievement_zealot_aura_toughness_damage_reduced_description"}, {"ru"}, function(locale, value) return "Снизьте в общей сложности "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_dmg_rgb_ru.." союзников, находящихся под действием "..COLORS_KWords_ru.Coherency_rgb_ru..", с помощью ауры "..COLORS_KW_Penances_ru.benedict_rgb_ru.."." end),

		--[+ Channel Your Rage +]-- руоф Направь свою ярость
	--[+ Russian +]--
		-- create_template("ach_class_zea_12_ext_ru", {"loc_achievement_zealot_2_medium_2_name"}, {"ru"}, function(locale, value) return "Направь свою ярость" end),

			--[+ On Malice Threat or higher, kill 1000 enemies with Melee Attacks whilst at at least 3 stacks of Martydom. +]-- -- руоф При угрозе «Злоба» или выше убейте врагов (1000) в ближнем бою, сохраняя не менее 3 ед. заряда «Мученичества».
	--[+ Russian +]--
			create_template("ach_class_zea_12_ext_desc_ru", {"loc_achievement_zealot_2_medium_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов в ближнем бою, пока у вас есть хотя бы "..COLORS_Numbers.n_3_rgb.." заряда "..COLORS_KW_Penances_ru.martydom_rgb_ru.."." end),

		--[+ Have Faith +]-- руоф Не теряй веру
	--[+ Russian +]--
		create_template("ach_class_zea_13_ext_ru", {"loc_achievement_zealot_2_hard_2_name"}, {"ru"}, function(locale, value) return "Верь" end),

			--[+ On Heresy Threat or higher, using Chastise the Wicked, dash towards a targeted enemy that is wielding a ranged weapon, 40 times. +]-- руоф Используя «Кару для нечестивых», сделайте рывок в сторону противника с дистанционным оружием при угрозе «Ересь» и выше 40 р.
	--[+ Russian +]--
			create_template("ach_class_zea_13_ext_desc_ru", {"loc_achievement_zealot_2_hard_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, используя способности "..COLORS_KW_Penances_ru.chastise_wicked_rgb_ru.." или "..COLORS_KW_Penances_ru.fury_faithful_rgb_ru ..", сделайте рывок к врагу у которого в руках дальнобойное оружие. Выполните это задание "..COLORS_Numbers.target_rgb.." раз." end),

		--[+ Unseen Assassin +]-- руоф Незримый убийца
	--[+ Russian +]--
		-- create_template("ach_class_zea_7_ext_ru", {"loc_achievement_zealot_elite_or_special_kills_with_shroudfield_name"}, {"ru"}, function(locale, value) return "Незримый убийца" end),

			--[+ Kill 150 Specialists or Elites by backstabbing them while using Shroudfield. +]-- руоф Убейте особых или элитных врагов (150) ответным ударом с помощью «Покрова».
	--[+ Russian +]--
			create_template("ach_class_zea_7_ext_desc_ru", {"loc_achievement_zealot_elite_or_special_kills_with_shroudfield_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов ударом в спину под действием способности "..COLORS_KW_Penances_ru.shroudf_rgb_ru.."." end),

		--[+ Purging Flames +]-- руоф Очищающее пламя
	--[+ Russian +]--
		-- create_template("ach_class_zea_7_ext_ru", {"loc_achievement_zealot_kills_with_fire_grenade_name"}, {"ru"}, function(locale, value) return "Очищающее пламя" end),

			--[+ Burn 2000 enemies using the Immolation Grenade. +]-- руоф Сожгите врагов (2000) с помощью «Жертвенной гранаты».
	--[+ Russian +]--
			create_template("ach_class_zea_7_ext_desc_ru", {"loc_achievement_zealot_kills_with_fire_grenade_description"}, {"ru"}, function(locale, value) return "Сожгите "..COLORS_Numbers.target_rgb.." врагов с помощью "..COLORS_KW_Penances_ru.fire_gren_rgb_ru.."." end),

		--[+ Buying Time +]-- руоф Передышка
	--[+ Russian +]--
		-- create_template("ach_red_zea_2_ext_ru", {"loc_achievement_zealot_2_stagger_sniper_with_grenade_distance_name"}, {"ru"}, function(locale, value) return "Выиграй время" end),

			--[+ Using a Stun Grenade, hit an enemy sniper more than 40 metres away. +]-- руоф Поразите вражеского снайпера на расстоянии более 40 м, используя оглушающую гранату.
	--[+ Russian +]--
			create_template("ach_red_zea_2_ext_desc_ru", {"loc_achievement_zealot_2_stagger_sniper_with_grenade_distance_description"}, {"ru"}, function(locale, value) return "Используя "..COLORS_KW_Penances_ru.shock_gren1_rgb_ru.." или "..COLORS_KW_Penances_ru.shock_gren0_rgb_ru..", поразите вражеского снайпера на расстоянии более "..COLORS_Numbers.target_rgb.." метров."..TALENTS_Enh_desc_penances_ru.ED_Buying_time_rgb_ru end),

		--[+ Righteous Anger +]-- руоф Праведный гнев
	--[+ Russian +]--
		-- create_template("ach_class_zea_7_ext_ru", {"loc_achievement_zealot_elite_or_special_kills_during_fanatic_rage_name"}, {"ru"}, function(locale, value) return "Праведный гнев" end),

			--[+ Kill 2000 enemies while in Fury. +]-- руоф Убейте врагов (2000), находясь под действием «Ярости».
	--[+ Russian +]--
			create_template("ach_class_zea_7_ext_desc_ru", {"loc_achievement_zealot_elite_or_special_kills_during_fanatic_rage_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, находясь под действием эффекта "..COLORS_KW_Penances_ru.fanrage_rgb_ru.." от ключевого таланта "..COLORS_KW_Penances_ru.blazingp_rgb_ru.."." end),

		--[+ Abhor the Mutant +]-- руоф Презирай Мутантов
	--[+ Russian +]--
		create_template("ach_red_zea_3_ext_ru", {"loc_achievement_zelot_2_kill_mutant_charger_with_melee_while_dashing_name"}, {"ru"}, function(locale, value) return "Презри мутанта" end),

			--[+ While Dashing with Chastise The Wicked, kill a Mutant with a Melee Attack. +]-- руоф Убейте мутанта атакой в ближнем бою во время рывка, пока действует «Кара для нечестивых».
	--[+ Russian +]--
			create_template("ach_red_zea_3_ext_desc_ru", {"loc_achievement_zelot_2_kill_mutant_charger_with_melee_while_dashing_description"}, {"ru"}, function(locale, value) return "Во время рывка с помощью способностей "..COLORS_KW_Penances_ru.chastise_wicked_rgb_ru.." или "..COLORS_KW_Penances_ru.fury_faithful_rgb_ru.." убейте Мутанта атакой ближнего боя." end),

		--[+ Control Crowds +]-- руоф Сдерживание толпы
	--[+ Russian +]--
		create_template("ach_class_zea_7_ext_ru", {"loc_achievement_zealot_2_easy_1_name"}, {"ru"}, function(locale, value) return "Управление толпой" end),

			--[+ Stun 1500 enemies using Stun Grenades. +]-- руоф Оглушите врагов (1500) оглушающими гранатами.
	--[+ Russian +]--
			create_template("ach_class_zea_7_ext_desc_ru", {"loc_achievement_zealot_2_easy_1_description"}, {"ru"}, function(locale, value) return "Оглушите "..COLORS_Numbers.target_rgb.." врагов, используя "..COLORS_KW_Penances_ru.shock_gren1_rgb_ru.." или "..COLORS_KW_Penances_ru.shock_gren0_rgb_ru.."." end),

		--[+ Lethal Pursuit +]-- руоф Смертоносное преследование
	--[+ Russian +]--
		-- create_template("ach_class_zea_7_ext_ru", {"loc_achievement_zealot_kills_during_movement_keystone_activated_name"}, {"ru"}, function(locale, value) return "Смертоносное преследование" end),

			--[+ Kill 250 Specialist and Elite enemies while at 15 stacks of Inexorable Judgement or above. +]-- руоф Убейте особых и элитных врагов (250), имея не менее 15 зарядов «Безжалостного приговора».
	--[+ Russian +]--
			create_template("ach_class_zea_7_ext_desc_ru", {"loc_achievement_zealot_kills_during_movement_keystone_activated_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов, имея не менее "..COLORS_Numbers.n_15_rgb.." зарядов "..COLORS_KW_Penances_ru.momentum_rgb_ru.." от ключевого таланта "..COLORS_KW_Penances_ru.inexor_rgb_ru.."." end),

		--[+ Shocking Stuff +]-- руоф Шокирующая штучка
	--[+ Russian +]--
		-- create_template("ach_red_zea_4_ext_ru", {"loc_achievement_zealot_2_kills_of_shocked_enemies_last_15_name"}, {"ru"}, function(locale, value) return "Шокирующие штуки" end),

			--[+ On Malice Threat or higher, kill 40 enemies stunned by your grenades, within 10s. +]-- руоф При угрозе «Злоба» или выше убейте врагов (40), оглушенных вашими гранатами, за 10 с.
	--[+ Russian +]--
			create_template("ach_red_zea_4_ext_desc_ru",{"loc_achievement_zealot_2_kills_of_shocked_enemies_last_15_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов, оглушённых вашими гранатами, в течение "..COLORS_Numbers.time_wind_rgb.." секунд." end),

		--[+ ++PSYKER - ПСАЙКЕР++ +]--
	create_template("ach_class_psy_0_ext_ru", {"loc_class_psyker_title"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_psy_rgb_ru end),

		--[+ ++PROGRESS - ПРОГРЕСС++ +]--
		--[+ Prove Your Worth (1-5) +]-- руоф Докажи, чего стоишь (1-5)
	--[+ Russian +]--
		-- create_template("ach_class_psy_4_ext_ru", {"loc_missions_psyker_2_easy_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Докажите, чего стоите (1-5)" end),

			--[+ Complete 1 Missions on Sedition Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Мятеж» или выше.
	--[+ Russian +]--
			create_template("ach_class_psy_4_1_ext_desc_ru", {"loc_missions_psyker_2_easy_difficulty_1_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_sedition_threat_ru end),

			--[+ Complete 1 Missions on Uprising Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Восстание» или выше.
	--[+ Russian +]--
			create_template("ach_class_psy_4_2_ext_desc_ru", {"loc_missions_psyker_2_easy_difficulty_2_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_uprising_threat_ru end),

			--[+ Complete 1 Missions on Malice Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Злоба» или выше.
	--[+ Russian +]--
			create_template("ach_class_psy_4_3_ext_desc_ru", {"loc_missions_psyker_2_easy_difficulty_3_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_malice_threat_ru end),

			--[+ Complete 1 Missions on Heresy Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Ересь» или выше.
	--[+ Russian +]--
			create_template("ach_class_psy_4_4_ext_desc_ru", {"loc_missions_psyker_2_easy_difficulty_4_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_heresy_threat_ru end),

			--[+ Complete 1 Missions on Damnation Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Проклятие» или выше.
	--[+ Russian +]--
			create_template("ach_class_psy_4_5_ext_desc_ru", {"loc_missions_psyker_2_easy_difficulty_5_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_damnation_threat_ru end),

		--[+ Kinetic Killer (1-3) +]-- руоф Кинетический убийца (1-3)
	--[+ Russian +]--
		-- create_template("ach_class_psy_14_ext_ru", {"loc_achievement_group_class_psyker_2_1-3_name"}, {"ru"}, function(locale, value) return "Кинетический убийца (1-3)" end),

			--[+ Complete the following Penances as the Psyker. +]-- руоф Выполните следующие искупления за Псайкера.
	--[+ Russian +]--
			create_template("ach_red_psy_8_ext_desc_ru", {"loc_group_class_challenges_psyker_2_x_description", "loc_achievement_group_class_psyker_2_description", "loc_group_psyker_2_rank_4_difficulty_3_description", "loc_group_psyker_2_rank_5_difficulty_4_description", "loc_group_psyker_2_rank_1_difficulty_1_description","loc_group_psyker_2_rank_2_difficulty_2_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления "..COLORS_KWords_ru.cls_psy2_rgb_ru.."." end),

		--[+ Unleash the Warp - Высвободи варп +]-- руоф Извергни варп
	--[+ Russian +]--
		create_template("ach_class_psy_12_ext_ru", {"loc_achievement_psyker_2_medium_2_name"}, {"ru"}, function(locale, value) return "Высвободи варп" end),

			--[+ On Malice Threat or higher, kill 2500 enemies with Warp attacks. +]-- руоф При угрозе «Злоба» или выше убейте врагов (2500) варп-атаками.
	--[+ Russian +]--
			create_template("ach_class_psy_12_ext_desc_ru", {"loc_achievement_psyker_2_medium_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов варп-атаками."..TALENTS_Enh_desc_penances_ru.ED_Unleash_warp_rgb_ru end),

		--[+ Keep Your Distance +]-- руоф Не подходи близко
	--[+ Russian +]--
		create_template("ach_class_psy_13_ext_ru", {"loc_achievement_psyker_2_hard_2_name"}, {"ru"}, function(locale, value) return "Держи дистанцию" end),

			--[+ On Heresy Threat or higher, complete 3 full Missions without being hit in melee by an Elite enemy. +]-- руоф При угрозе «Ересь» или выше полностью выполните задание 3 р., чтобы элитный враг ни разу не попал по вам в ближнем бою.
	--[+ Russian +]--
			create_template("ach_class_psy_13_ext_desc_ru", {"loc_achievement_psyker_2_hard_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите полностью "..COLORS_Numbers.target_rgb.." миссии без получения ударов в ближнем бою от элитных врагов." end),

		--[+ Cliffhanger +]-- руоф Не подходи близко
	--[+ Russian +]--
		create_template("ach_red_psy_3_ext_ru", {"loc_achievement_psyker_2_edge_kills_last_2_sec_name"}, {"ru"}, function(locale, value) return "Неожиданный поворот" end),

			--[+ Kill 7 enemies within 2s by knocking them off a ledge. +]-- руоф Убейте врагов (7) за 2 с., сбросив их с уступа.
	--[+ Russian +]--
			create_template("ach_red_psy_3_ext_desc_ru", {"loc_achievement_psyker_2_edge_kills_last_2_sec_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов в течение "..COLORS_Numbers.time_wind_rgb.." секунд, сбросив их с уступа."..TALENTS_Enh_desc_penances_ru.ED_Cliffhanger_rgb_ru end),

		--[+ Lifeleech (1-5) +]-- руоф Похититель жизни (1-5)
	--[+ Russian +]--
		-- create_template("ach_class_psy_2_ext_ru", {"loc_achievement_missions_psyker_2_1-5_name"}, {"ru"}, function(locale, value) return "Похититель жизни (1-5)" end),

			--[+ Complete 100 Missions as a Psyker. +]-- руоф Выполнить Псайкером задания: 100.
	--[+ Russian +]--
			create_template("ach_class_psy_2_ext_desc_ru", {"loc_achievement_missions_psyker_2_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий "..COLORS_KWords_ru.cls_psy2_rgb_ru.."." end),

		--[+ Touch the Void (1-3) +]-- руоф Прикоснись к пустоте (1-3)
	--[+ Russian +]--
		-- create_template("ach_class_psy_3_ext_ru", {"loc_achievement_missions_psyker_2_objective_1-3_name"}, {"ru"}, function(locale, value) return "Коснись Пустоты (1-3)" end),

			--[+ As a Psyker, complete a Mission of each type. +]-- руоф Выполнить Псайкером по меньшей мере одно задание каждого типа.
	--[+ Russian +]--
			create_template("ach_class_psy_3_1_ext_desc_ru", {"loc_achievement_missions_psyker_2_objective_1_description"}, {"ru"}, function(locale, value) return "Завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_psy2_rgb_ru.."." end),

			--[+ As a Psyker, complete a Mission of each type on Malice Threat or higher. +]-- руоф Выполнить Псайкером по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
	--[+ Russian +]--
			create_template("ach_class_psy_3_2_ext_desc_ru", {"loc_achievement_missions_psyker_2_objective_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_psy2_rgb_ru.."." end),

			--[+ As a Psyker, complete a Mission of each type on Heresy Threat or higher. +]-- руоф Выполнить Псайкером по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.
	--[+ Russian +]--
			create_template("ach_class_psy_3_3_ext_desc_ru", {"loc_achievement_missions_psyker_2_objective_3_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_psy2_rgb_ru.."." end),

		--[+ Mind over Matter (1-6) +]-- руоф Разум превыше материи (1-6)
	--[+ Russian +]--
		-- create_template("ach_class_psy_1_ext_ru", {"loc_achievement_rank_psyker_2_1-6_name"}, {"ru"}, function(locale, value) return "Разум превыше материи (1-6)" end),

			--[+ Reach Trust Level 30 as a Psyker. +]-- руоф Заслужить уровень доверия 30, играя за Псайкера.
	--[+ Russian +]--
			create_template("ach_class_psy_1_ext_desc_ru", {"loc_achievement_rank_psyker_2_x_description"}, {"ru"}, function(locale, value) return "Достигните "..COLORS_Numbers.target_rgb.." уровня доверия "..COLORS_KWords_ru.cls_psy2_rgb_ru.."." end),

		--[+ Fight the Good Fight (1-5) +]-- руоф Сражайся достойно (1-5)
	--[+ Russian +]--
		-- create_template("ach_red_psy_1_ext_ru", {"loc_missions_psyker_2_medium_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Сражайтесь достойно (1-5)" end),

			--[+ Complete 5 Missions on Sedition Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Мятеж» или выше.
	--[+ Russian +]--
			create_template("ach_red_psy_1_1_ext_desc_ru", {"loc_missions_psyker_2_medium_difficulty_1_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_psy2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.sedition_rgb_ru.." или выше." end),

			--[+ Complete 5 Missions on Uprising Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Восстание» или выше.
	--[+ Russian +]--
			create_template("ach_red_psy_1_2_ext_desc_ru", {"loc_missions_psyker_2_medium_difficulty_2_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_psy2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.uprising_rgb_ru.." или выше." end),

			--[+ Complete 5 Missions on Malice Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Злоба» или выше.
	--[+ Russian +]--
			create_template("ach_red_psy_1_3_ext_desc_ru", {"loc_missions_psyker_2_medium_difficulty_3_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_psy2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше." end),

			--[+ Complete 5 Missions on Heresy Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Ересь» или выше.
	--[+ Russian +]--
			create_template("ach_red_psy_1_4_ext_desc_ru", {"loc_missions_psyker_2_medium_difficulty_4_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_psy2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше." end),

			--[+ Complete 5 Missions on Damnation Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Проклятие» или выше.
	--[+ Russian +]--
			create_template("ach_red_psy_1_5_ext_desc_ru", {"loc_missions_psyker_2_medium_difficulty_5_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_psy2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше." end),

	--[+ +СПОСОБНОСТИ+ +]--
		--[+ Charged with Purpose +]-- руоф Заряженные целью
	--[+ Russian +]--
		-- create_template("ach_class_psy_7_ext_ru", {"loc_achievement_psyker_threshold_kills_reached_with_grenade_chain_name"}, {"ru"}, function(locale, value) return "Заряженные целью" end),

			--[+ Kill 2500 enemies stunned by your Smite. Kills made by your Smite. Kills made by your team members also count. +]-- руоф Убейте врагов (2500), оглушенных вашим «Сокрушением». Убийства, совершенные членами команды, тоже учитываются.
	--[+ Russian +]--
			create_template("ach_class_psy_7_ext_desc_ru", {"loc_achievement_psyker_threshold_kills_reached_with_grenade_chain_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, оглушённых вашим блицом "..COLORS_KW_Penances_ru.smite_rgb_ru..". Убийства, совершённые членами вашей команды, также учитываются." end),

		--[+ Defy Fate +]-- руоф Брось вызов судьбе
	--[+ Russian +]--
		-- create_template("ach_class_psy_7_ext_ru", {"loc_achievement_psyker_time_at_max_unnatural_name"}, {"ru"}, function(locale, value) return "Брось вызов судьбе" end),

			--[+ Maintain 15 stacks or more of Disrupt Destiny for a total of 1800 seconds. +]-- руоф Удерживайте не менее 15 зарядов «Разрушенной судьбы» на протяжении 1800 с.
	--[+ Russian +]--
			create_template("ach_class_psy_7_ext_desc_ru", {"loc_achievement_psyker_time_at_max_unnatural_description"}, {"ru"}, function(locale, value) return "Поддерживайте не менее "..COLORS_Numbers.n_15_rgb.." зарядов "..COLORS_KWords_ru.Precision_rgb_ru.." от ключевого таланта "..COLORS_KW_Penances_ru.disrdest_rgb_ru.." на протяжении "..COLORS_Numbers.n_30_rgb.." минут." end), -- 1800 секунд ("..COLORS_Numbers.target_rgb.." секунд)

		--[+ Warp Battery +]-- руоф Варп-аккумулятор
	--[+ Russian +]--
		-- create_template("ach_red_psy_4_ext_ru", {"loc_achievement_psyker_2_stay_at_max_souls_for_duration_name"}, {"ru"}, function(locale, value) return "Варп-аккумулятор" end),

			--[+ While on Malice Threat or higher, in a single session maintain maximum Warp Charges for 120s. +]-- руоф При угрозе «Злоба» или выше в режиме одиночной игры поддерживайте максимум варп-зарядов в течение 120 с.
	--[+ Russian +]--
			create_template("ach_red_psy_4_ext_desc_ru", {"loc_achievement_psyker_2_stay_at_max_souls_for_duration_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, в течение одной миссии сохраняйте максимальное количество зарядов варпа в течение "..COLORS_Numbers.target_rgb.." секунд."..TALENTS_Enh_desc_penances_ru.ED_Warp_battery_rgb_ru end),

		--[+ Pick n' Mix +]-- руоф Выбирай и смешивай
	--[+ Russian +]--
		-- create_template("ach_red_psy_6_ext_ru", {"loc_achievement_psyker_2_elite_or_special_kills_with_smite_last_10_sec_name"}, {"ru"}, function(locale, value) return "Выбирай и смешивай" end),

			--[+ While on Heresy Threat or higher, use Brain Burst to kill 4 different Elite or Specialist enemies within 12s. +]-- руоф При угрозе «Ересь» или выше используйте «Взрыв разума», чтобы убить различных врагов (4) ранга элита или специалист за 12 с.
	--[+ Russian +]--
			create_template("ach_red_psy_6_ext_desc_ru", {"loc_achievement_psyker_2_elite_or_special_kills_with_smite_last_10_sec_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, используйте блиц "..COLORS_KW_Penances_ru.bburst0_rgb_ru..", чтобы убить "..COLORS_Numbers.target_rgb.." разных элитных врагов или специалистов в течение "..COLORS_Numbers.time_wind_rgb.." секунд."..TALENTS_Enh_desc_penances_ru.ED_Pick_n_mix_rgb_ru end),

		--[+ Mind's Aegis +]-- руоф Защита разума
	--[+ Russian +]--
		create_template("ach_class_psy_7_ext_ru", {"loc_achievement_psyker_damage_blocked_with_shield_name"}, {"ru"}, function(locale, value) return "Эгида разума" end),

			--[+ Absorb 150000 Damage with Telekine Shield. +]-- руоф Поглотите урон (150000) с помощью «Телекинетического щита».
	--[+ Russian +]--
			create_template("ach_class_psy_7_ext_desc_ru", {"loc_achievement_psyker_damage_blocked_with_shield_description"}, {"ru"}, function(locale, value) return "Поглотите "..COLORS_Numbers.target_rgb.." урона с помощью способности "..COLORS_KW_Penances_ru.telekshii_rgb_ru.."." end),

		--[+ Skilled in Psykhana +]-- руоф Знаток Псайканы
	--[+ Russian +]--
		-- create_template("ach_class_psy_7_ext_ru", {"loc_achievement_psyker_kills_with_empowered_abilites_name"}, {"ru"}, function(locale, value) return "Знаток Псайканы" end),

			--[+ Kill 250 Specialists or Elites using abilities empowered by Empowered Psionics. +]-- руоф Убейте особых или элитных врагов (250) с помощью способностей, улучшенных «Усиленными псиониками».
	--[+ Russian +]--
			create_template("ach_class_psy_7_ext_desc_ru", {"loc_achievement_psyker_kills_with_empowered_abilites_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью способностей, усиленных ключевым талантом "..COLORS_KW_Penances_ru.empsionics_rgb_ru.."." end),

		--[+ Not Even Close +]-- руоф Как бы не так
	--[+ Russian +]--
		-- create_template("ach_red_psy_2_ext_ru", {"loc_achievement_psyker_2_smite_hound_mid_leap_name"}, {"ru"}, function(locale, value) return "Как бы не так" end),

			--[+ Kill a pouncing Pox Hound with Brain Burst. +]-- руоф Убейте с помощью «Взрыва разума» Чумную Гончую, когда она набрасывается на вас.
	--[+ Russian +]--
			create_template("ach_red_psy_2_ext_desc_ru", {"loc_achievement_psyker_2_smite_hound_mid_leap_description"}, {"ru"}, function(locale, value) return "Убейте, прыгнувшую Чумную гончую, с помощью блица "..COLORS_KW_Penances_ru.bburst0_rgb_ru.." или "..COLORS_KW_Penances_ru.bburst1_rgb_ru.."." end),

		--[+ Mind Lance - Копьё разума +]-- руоф Копье разума
	--[+ Russian +]--
		create_template("ach_class_psy_7_ext_ru", {"loc_achievement_psyker_elite_or_special_kills_with_assail_name"}, {"ru"}, function(locale, value) return "Копьё разума" end),

			--[+ Kill 250 Specialists and Elites using Assail. +]-- руоф Убейте особых или элитных врагов (250) с помощью «Нападения».
	--[+ Russian +]--
			create_template("ach_class_psy_7_ext_desc_ru", {"loc_achievement_psyker_elite_or_special_kills_with_assail_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью блица "..COLORS_KW_Penances_ru.assail_rgb_ru.."." end),

		--[+ Malleus Monstronum +]-- руоф Маллеус Монстронум
	--[+ Russian +]--
		-- create_template("ach_red_psy_7_ext_ru", {"loc_achievement_psyker_2_kill_boss_solo_with_smite_name"}, {"ru"}, function(locale, value) return "Маллеус Монстронум" end),

			--[+ While on Heresy Threat or higher kill a Monstrosity after damaging 50% of its health with your Brain Burst. (Private Game: Penance can only be completed in a private game) +]-- руоф При угрозе «Ересь» или выше снесите чудовищу 50% здоровья «Взрывом разума», а затем убейте его.
	--[+ Russian +]--
			create_template("ach_red_psy_7_ext_desc_ru", {"loc_achievement_psyker_2_kill_boss_solo_with_smite_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, убейте Монстра после того, как вы нанесли ему не менее "..COLORS_Numbers.pc_50_rgb.." урона здоровью с помощью блица "..COLORS_KW_Penances_ru.bburst0_rgb_ru.." или "..COLORS_KW_Penances_ru.bburst1_rgb_ru.."." end),

		--[+ Perilous Focus +]-- руоф Пагубная концентрация
	--[+ Russian +]--
		create_template("ach_class_psy_7_ext_ru", {"loc_achievement_psyker_kills_during_overcharge_stance_name"}, {"ru"}, function(locale, value) return "Угрожающая концентрация" end),

			--[+ Kill 40 enemies under the effects of a single Scrier's Gaze activation. +]-- руоф Убейте врагов (40), находясь под действием одного заряда «Взора Скрира».
	--[+ Russian +]--
			create_template("ach_class_psy_7_ext_desc_ru", {"loc_achievement_psyker_kills_during_overcharge_stance_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, находясь под эффектом способности "..COLORS_KW_Penances_ru.scriersgaze_rgb_ru..", в течение однократного её применения." end),

		--[+ Overwhelming Presence +]-- руоф Подавляющее присутствие
	--[+ Russian +]--
		-- create_template("ach_class_psy_7_ext_ru", {"loc_achievement_psyker_team_elite_aura_kills_name"}, {"ru"}, function(locale, value) return "Подавляющее присутствие" end),

			--[+ Kill 2500 Elite or Specialist enemies while under the effect of Kinetic Presence. Kill made by any affected team member also count. +]-- руоф Убейте особых или элитных врагов (2500), находясь под действием «Кинетического присутствия». Убийства, совершенные любым членом команды под действием эффекта, тоже учитываются.
	--[+ Russian +]--
			create_template("ach_class_psy_7_ext_desc_ru", {"loc_achievement_psyker_team_elite_aura_kills_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов, находясь под действием ауры "..COLORS_KW_Penances_ru.kinetpres_rgb_ru..". Убийства, совершённые любым членом команды, находящимся под действием эффекта ауры, тоже учитываются." end),

		--[+ Power Up +]-- руоф Полный заряд
	--[+ Russian +]--
		-- create_template("ach_class_psy_11_ext_ru", {"loc_achievement_psyker_2_medium_1_name"}, {"ru"}, function(locale, value) return "Полный заряд" end),

			--[+ On Malice Threat or higher, kill 100 Elite or Specialist enemies with Brain Burst while at maximum Warp Charges. +]-- руоф При угрозе «Злоба» или выше убейте элитных врагов или специалистов (100) «Взрывом разума» с максимальным количеством варп-зарядов.
	--[+ Russian +]--
			create_template("ach_class_psy_11_ext_desc_ru", {"loc_achievement_psyker_2_medium_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью блица "..COLORS_KW_Penances_ru.bburst0_rgb_ru.." или "..COLORS_KW_Penances_ru.bburst1_rgb_ru.." пока у вас максимальное количество варп-зарядов." end),

		--[+ Prioritise Targets +]-- руоф Приоритетные цели
	--[+ Russian +]--
		-- create_template("ach_class_psy_7_ext_ru", {"loc_achievement_psyker_2_easy_1_name"}, {"ru"}, function(locale, value) return "Приоритетные цели" end),

			--[+ Kill 200 Elite or Specialist enemies with Brain Burst. +]-- руоф Убейте элитных врагов или специалистов (200) «Взрывом разума».
	--[+ Russian +]--
			create_template("ach_class_psy_7_ext_desc_ru", {"loc_achievement_psyker_2_easy_1_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью блица "..COLORS_KW_Penances_ru.bburst0_rgb_ru.." или "..COLORS_KW_Penances_ru.bburst1_rgb_ru.."." end),

		--[+ Shoot Fast +]-- руоф Стреляй от бедра
	--[+ Russian +]--
		create_template("ach_class_psy_12_ext_ru", {"loc_achievement_psyker_2_hard_1_name"}, {"ru"}, function(locale, value) return "Стреляй быстро" end),

			--[+ On Heresy Threat or higher, kill 25 Pox Hounds, Mutants or Scab Trappers using Brain Burst before they incapacitate you or an ally. +]-- руоф При угрозе «Ересь» или выше убейте Чумных гончих, Мутантов или Скабов-Ловушечников (25) «Взрывом разума», пока они не успели обезвредить вас или союзника.
	--[+ Russian +]--
			create_template("ach_class_psy_12_ext_desc_ru", {"loc_achievement_psyker_2_hard_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." Чумных гончих, Мутантов или Ловушечников, используя "..COLORS_KW_Penances_ru.bburst0_rgb_ru.." или "..COLORS_KW_Penances_ru.bburst1_rgb_ru.." до того как они вывели из строя вас или союзника." end),

		--[+ Lucky BLow +]-- руоф Счастливый удар
	--[+ Russian +]--
		create_template("ach_class_psy_7_ext_ru", {"loc_achievement_psyker_team_critical_hits_name"}, {"ru"}, function(locale, value) return "Удачный удар" end),

			--[+ Critically strike 7500 enemies while under the effects of Prescience. Critical strikes made by any affected team member also count. +]-- руоф Нанесите врагам критические удары (7500), находясь под действием «Предвидения». Критические удары любого члена команды под действием эффекта тоже учитываются.
	--[+ Russian +]--
			create_template("ach_class_psy_7_ext_desc_ru", {"loc_achievement_psyker_team_critical_hits_description"}, {"ru"}, function(locale, value) return "Нанесите врагам "..COLORS_Numbers.target_rgb.." критических ударов, находясь под действием ауры "..COLORS_KW_Penances_ru.prescience_rgb_ru..". Критические удары любого члена команды, находящегося под действием эффекта ауры, тоже учитываются." end),

		--[+ Blessed by Fate +]-- руоф Хранимый судьбой
	--[+ Russian +]--
		create_template("ach_class_psy_8_ext_ru", {"loc_achievement_psyker_2_easy_2_name"}, {"ru"}, function(locale, value) return "Благословенный судьбой" end),

			--[+ Use Psykinetic's Wrath to survive Perils of the Warp 50 times. +]-- руоф Воспользуйтесь «Психокинетическим гневом» 50 р., чтобы не погибнуть от угозы варпа.
	--[+ Russian +]--
			create_template("ach_class_psy_8_ext_desc_ru", {"loc_achievement_psyker_2_easy_2_description"}, {"ru"}, function(locale, value) return "Используйте "..COLORS_Numbers.target_rgb.." раз способность "..COLORS_KW_Penances_ru.psy_wrath_rgb_ru.." или "..COLORS_KW_Penances_ru.psy_wrath2_rgb_ru..", чтобы избежать самоподрыва от превышения "..COLORS_Numbers.pc_100_rgb.." уровня "..COLORS_KWords_ru.Peril_rgb_ru.."." end),

		--[+ Empyric Recovery +]-- руоф Эмпирическое восстановление
	--[+ Russian +]--
		-- create_template("ach_class_psy_7_ext_ru", {"loc_achievement_psyker_team_cooldown_reduced_name"}, {"ru"}, function(locale, value) return "Эмпирическое восстановление" end),

			--[+ Restore you or your allies' abilities a total of 2000 seconds faster, while under the effects of Seer's Presence. +]-- руоф Восстановите способности свои или союзников суммарно на 2000 с. быстрее, находясь под действием «Присутствия провидца».
	--[+ Russian +]--
			create_template("ach_class_psy_7_ext_desc_ru", {"loc_achievement_psyker_team_cooldown_reduced_description"}, {"ru"}, function(locale, value) return "Сократите, суммарно на "..COLORS_Numbers.target_rgb.." секунд, время восстановления способностей себе или вашим союзникам с помощью эффекта ауры "..COLORS_KW_Penances_ru.seerspres_rgb_ru.."." end),

		--[+ Going Out With a Bang +]-- руоф Эффектный выход
	--[+ Russian +]--
		create_template("ach_red_psy_5_ext_ru", {"loc_achievement_psyker_2_perils_of_the_warp_elite_kills_name"}, {"ru"}, function(locale, value) return "Взрывной финал" end),

			--[+ While on Malice Threat or higher, kill 1 elite enemies with a single Perils of the Warp explosion. +]-- руоф При угрозе «Злоба» или выше убейте элитных врагов (1) за однократное применение угрозы от взрыва варпа.
	--[+ Russian +]--
			create_template("ach_red_psy_5_ext_desc_ru", {"loc_achievement_psyker_2_perils_of_the_warp_elite_kills_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." элитного врага самоподрывом псайкера от превышения "..COLORS_Numbers.pc_100_rgb.." уровня "..COLORS_KWords_ru.Peril_rgb_ru.."." end),

	--[+ ++OGRYN - ОГРИН++ +]--
	create_template("ach_class_ogr_0_ext_ru", {"loc_class_ogryn_title"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.cls_ogr_rgb_ru end),

	--[+ ПРОГРЕСС +]--
		--[+ Beat-em-Up (1-3) +]-- руоф Всех порву/Бей их всех (1-3)
	--[+ Russian +]--
		-- create_template("ach_class_ogr_3_ext_ru", {"loc_achievement_missions_ogryn_2_objective_3_name"}, {"ru"}, function(locale, value) return "Избей-их-всех (1-3)" end),

			--[+ As a Ogryn, complete a Mission of each type. +]-- руоф Выполнить Огрином по меньшей мере одно задание каждого типа.
	--[+ Russian +]--
			create_template("ach_class_ogr_3_1_ext_desc_ru", {"loc_achievement_missions_ogryn_2_objective_1_description"}, {"ru"}, function(locale, value) return "Завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_ogr2_rgb_ru.."." end),

			--[+ As a Ogryn, complete a Mission of each type on Malice Threat or higher. +]-- руоф Выполнить Огрином по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
	--[+ Russian +]--
			create_template("ach_class_ogr_3_3_ext_desc_ru", {"loc_achievement_missions_ogryn_2_objective_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_ogr2_rgb_ru.."." end),

			--[+ As a Ogryn, complete a Mission of each type on Heresy Threat or higher. +]-- руоф Выполнить Огрином по меньшей мере одно задание каждого типа.
	--[+ Russian +]--
			create_template("ach_class_ogr_3_4_ext_desc_ru", {"loc_achievement_missions_ogryn_2_objective_3_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_ogr2_rgb_ru.."." end),

		--[+ Keep Them Grounded +]-- руоф Вали их!
	--[+ Russian +]--
		-- create_template("ach_class_ogr_8_ext_ru", {"loc_achievement_ogryn_2_easy_2_name"}, {"ru"}, function(locale, value) return "Вали их!" end),

			--[+ Knock Down 5000 enemies. +]-- руоф Сбейте с ног врагов 5000 р.
	--[+ Russian +]--
			create_template("ach_class_ogr_8_ext_desc_ru", {"loc_achievement_ogryn_2_easy_2_description"}, {"ru"}, function(locale, value) return "Сбейте с ног "..COLORS_Numbers.target_rgb.." врагов." end),

		--[+ Keep Your Friends Close +]-- руоф Держи друзей близко
	--[+ Russian +]--
		-- create_template("ach_class_ogr_12_ext_ru", {"loc_achievement_ogryn_2_hard_1_name"}, {"ru"}, function(locale, value) return "Держи друзей близко" end),

			--[+ On Heresy Threat or higher, complete 3 full Missions without any allies being Knocked Down or Incapacitated for longer than 10 seconds, and without any allies dying. +]-- руоф При угрозе «Ересь» или выше полностью выполните задание 3 р., чтобы ни один союзник не умер и не был сбит с ног или небоестрособен дольше 10 с.
	--[+ Russian +]--
			create_template("ach_class_ogr_12_ext_desc_ru", {"loc_achievement_ogryn_2_hard_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите полностью "..COLORS_Numbers.target_rgb.." миссии так, чтобы никто из союзников не был выведен из строя или сбит с ног более "..COLORS_Numbers.time_rgb.." секунд и чтобы никто из союзников не был убит." end),

		--[+ Prove Your Worth (1-5) +]-- руоф Докажи, чего стоишь (1-5)
	--[+ Russian +]--
		-- create_template("ach_class_ogr_4_ext_ru", {"loc_missions_ogryn_2_easy_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Докажи, чего стоишь (1-5)" end),

			--[+ Complete 1 Missions on Sedition Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Мятеж» или выше.
	--[+ Russian +]--
			create_template("ach_class_ogr_4_1_ext_desc_ru", {"loc_missions_ogryn_2_easy_difficulty_1_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_sedition_threat_ru end),

			--[+ Complete 1 Missions on Uprising Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Восстание» или выше.
	--[+ Russian +]--
			create_template("ach_class_ogr_4_2_ext_desc_ru", {"loc_missions_ogryn_2_easy_difficulty_2_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_uprising_threat_ru end),

			--[+ Complete 1 Missions on Malice Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Злоба» или выше.
	--[+ Russian +]--
			create_template("ach_class_ogr_4_3_ext_desc_ru", {"loc_missions_ogryn_2_easy_difficulty_3_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_malice_threat_ru end),

			--[+ Complete 1 Missions on Heresy Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Ересь» или выше.
	--[+ Russian +]--
			create_template("ach_class_ogr_4_4_ext_desc_ru", {"loc_missions_ogryn_2_easy_difficulty_4_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_heresy_threat_ru end),

			--[+ Complete 1 Missions on Damnation Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Проклятие» или выше.
	--[+ Russian +]--
			create_template("ach_class_ogr_4_5_ext_desc_ru", {"loc_missions_ogryn_2_easy_difficulty_5_description"}, {"ru"}, function(locale, value) return complete_1_mission_on_damnation_threat_ru end),

		--[+ Friends Will be Friends +]-- руоф Друзья останутся друзьями
	--[+ Russian +]--
		-- create_template("ach_red_ogr_4_ext_ru", {"loc_achievement_ogryn_2_win_with_coherency_all_alive_units_name"}, {"ru"}, function(locale, value) return "Друзья останутся друзьями" end),

			--[+ Stay in Conherency with a living teammate at all times during a full Mission on Malice Threat or higher. +]-- руоф При угрозе «Злоба» или выше постоянно оставайтесь под эффектом «Сплоченность» с живым товарищем по команде во время задания.
	--[+ Russian +]--
			create_template("ach_red_ogr_4_ext_desc_ru", {"loc_achievement_ogryn_2_win_with_coherency_all_alive_units_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, всегда оставайтесь под действием "..COLORS_KWords_ru.Coherency_rgb_ru.." с живым союзником на всём протяжении миссии." end),

		--[+ Bone 'ead (1-3) +]-- руоф Костяная башка (1-3)
	--[+ Russian +]--
		-- create_template("ach_class_ogr_14_ext_ru", {"loc_achievement_group_class_ogryn_2_1-3_name"}, {"ru"}, function(locale, value) return "Костагаловый (1-3)" end),

			--[+ Complete the following Penances as the Ogryn. +]-- руоф Выполните следующие искупления за Огрина.
	--[+ Russian +]--
			create_template("ach_red_ogr_8_ext_desc_ru", {"loc_group_class_challenges_ogryn_2_x_description", "loc_achievement_group_class_ogryn_2_description", "loc_group_ogryn_2_rank_4_difficulty_3_description", "loc_group_ogryn_2_rank_5_difficulty_4_description", "loc_group_ogryn_2_rank_1_difficulty_1_description", "loc_group_ogryn_2_rank_2_difficulty_2_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления "..COLORS_KWords_ru.cls_ogr2_rgb_ru.."." end),

		--[+ Got a Bone to Pick (1-6) +]-- руоф Крепкий орешек (1-6)
	--[+ Russian +]--
		-- create_template("ach_class_ogr_1_ext_ru", {"loc_achievement_rank_ogryn_2_6_name"}, {"ru"}, function(locale, value) return "Мститель (1-6)" end),

			--[+ Reach Trust Level 30 as a Ogryn. +]-- руоф Получить уровень доверия 30, играя за Огрина.
	--[+ Russian +]--
			create_template("ach_class_ogr_1_ext_desc_ru", {"loc_achievement_rank_ogryn_2_x_description"}, {"ru"}, function(locale, value) return "Достигните "..COLORS_Numbers.target_rgb.." уровня доверия "..COLORS_KWords_ru.cls_ogr2_rgb_ru.."." end),

		--[+ Built Like a Tank (1-5) +]-- руоф Настоящий танк (1-5)
	--[+ Russian +]--
		-- create_template("ach_class_ogr_2_ext_ru", {"loc_achievement_missions_ogryn_2_1-5_name"}, {"ru"}, function(locale, value) return "Крепкий как танк (1-5)" end),

			--[+ Complete 100 Missions as a Ogryn. +]-- руоф Выполнить Огрином задания: 100.
	--[+ Russian +]--
			create_template("ach_class_ogr_2_ext_desc_ru", {"loc_achievement_missions_ogryn_2_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий "..COLORS_KWords_ru.cls_ogr2_rgb_ru.."." end),

		--[+ Cleave Them Down +]-- руоф Порви их!
	--[+ Russian +]--
		-- create_template("ach_class_ogr_12_ext_ru", {"loc_achievement_ogryn_2_medium_2_name"}, {"ru"}, function(locale, value) return "Рассеки их" end),

			--[+ On Malice Threat or higher, kill 2 enemies with a single Melee Attack 250 times. +]-- руоф При угрозе «Злоба» или выше 250 р. убейте врагов (2) одной атакой ближнего бой.
	--[+ Russian +]--
			create_template("ach_class_ogr_12_ext_desc_ru", {"loc_achievement_ogryn_2_medium_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.amount_var_rgb.." врагов одной атакой ближнего боя "..COLORS_Numbers.target_rgb.." раз." end),

		--[+ Help Everyone +]-- руоф Спаси всех
	--[+ Russian +]--
		create_template("ach_class_ogr_7_ext_ru", {"loc_achievement_ogryn_2_easy_1_name"}, {"ru"}, function(locale, value) return "Помогай всем" end),

			--[+ Revive or Assist 40 Knocked Down or Incapacitated allies. +]-- руоф Воскресите небоеспособных союзников или помогите союзникам, сбитым с ног, 40 р.
	--[+ Russian +]--
			create_template("ach_class_ogr_7_ext_desc_ru", {"loc_achievement_ogryn_2_easy_1_description"}, {"ru"}, function(locale, value) return "Возродите или поднимите "..COLORS_Numbers.target_rgb..", выведенных из строя или сбитых с ног, союзников." end),

		--[+ Fight the Good Fight (1-5) +]-- руоф Сражайся достойно (1-5)
	--[+ Russian +]--
		-- create_template("ach_red_ogr_1_ext_ru", {"loc_missions_ogryn_2_medium_difficulty_1-5_name"}, {"ru"}, function(locale, value) return "Сражайся достойно (1-5)" end),

			--[+ Complete 5 Missions on Sedition Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Мятеж» или выше.
	--[+ Russian +]--
			create_template("ach_red_ogr_1_1_ext_desc_ru", {"loc_missions_ogryn_2_medium_difficulty_1_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.sedition_rgb_ru.." или выше." end),

			--[+ Complete 5 Missions on Uprising Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Восстание» или выше.
	--[+ Russian +]--
			create_template("ach_red_ogr_1_2_ext_desc_ru", {"loc_missions_ogryn_2_medium_difficulty_2_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.uprising_rgb_ru.." или выше." end),

			--[+ Complete 5 Missions on Malice Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Злоба» или выше.
	--[+ Russian +]--
			create_template("ach_red_ogr_1_3_ext_desc_ru", {"loc_missions_ogryn_2_medium_difficulty_3_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше." end),

			--[+ Complete 5 Missions on Heresy Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Ересь» или выше.
	--[+ Russian +]--
			create_template("ach_red_ogr_1_4_ext_desc_ru", {"loc_missions_ogryn_2_medium_difficulty_4_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше." end),

			--[+ Complete 5 Missions on Damnation Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Проклятие» или выше.
	--[+ Russian +]--
			create_template("ach_red_ogr_1_5_ext_desc_ru", {"loc_missions_ogryn_2_medium_difficulty_5_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше." end),

	--[+ +СПОСОБНОСТИ+ +]--
		--[+ Munitorum's Favour +]-- руоф Благосклонность Муниторума
	--[+ Russian +]--
		-- create_template("ach_class_ogr_11_ext_ru", {"loc_achievement_ogryn_leadbelcher_free_shot_name"}, {"ru"}, function(locale, value) return "Благосклонность Муниторума" end),

			--[+ Shoot 4500 free rounds of ammo, courtesy of the Burst Limiter Override. +]-- руоф Стреляйте бесплатными боеприпасами (4500) благодаря «Взлому отсечки очереди».
	--[+ Russian +]--
			create_template("ach_class_ogr_11_ext_desc_ru", {"loc_achievement_ogryn_leadbelcher_free_shot_description"}, {"ru"}, function(locale, value) return "Отстреляйте "..COLORS_Numbers.target_rgb.." бесплатных патронов, полученных с помощью ключевого таланта "..COLORS_KW_Penances_ru.burstlimo_rgb_ru.."." end),

		--[+ Be Your Best +]-- руоф Будь лучшим
	--[+ Russian +]--
		-- create_template("ach_class_ogr_13_ext_ru", {"loc_achievement_ogryn_2_hard_2_name"}, {"ru"}, function(locale, value) return "Будь лучшим" end),

			--[+ On Heresy Threat or higher, hit 4 consecutive Elite or Specialist enemies with Big Boxes of Hurt, without missing. Do this 5 times. +]-- руоф При угрозе «Ересь» или выше попадите по элитным врагам или специалистам х4 подряд «Ящиком, полным боли", ни разу не промахиваясь. Повторите 5 р.
	--[+ Russian +]--
			create_template("ach_class_ogr_13_ext_desc_ru", {"loc_achievement_ogryn_2_hard_2_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, попадите не промахиваясь последовательно по "..COLORS_Numbers.amount_var_rgb.." элитным врагам или специалистам, используя блиц "..COLORS_KW_Penances_ru.big_box_rgb_ru.." или "..COLORS_KW_Penances_ru.big_box2_rgb_ru..". Повторите это задание "..COLORS_Numbers.target_rgb.." раз." end),

		--[+ Loyal Protector +]-- руоф Верный защитник
	--[+ Russian +]--
		-- create_template("ach_class_ogr_11_ext_ru", {"loc_achievement_ogryn_team_toughness_restored_aura_name"}, {"ru"}, function(locale, value) return "Верный защитник" end),

			--[+ Restore a total of 15000 Toughness to you or allies in coherency with Stay Close. +]-- руоф Восстановите стойкость свою или союзников под действием «Сплоченности» (суммарно 15000) с помощью «Держись рядом».
	--[+ Russian +]--
			create_template("ach_class_ogr_11_ext_desc_ru", {"loc_achievement_ogryn_team_toughness_restored_aura_description"}, {"ru"}, function(locale, value) return "Восстановите суммарно "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." себе или союзникам, находящимся под действием "..COLORS_KWords_ru.Coherency_rgb_ru..", с помощью эффекта ауры "..COLORS_KW_Penances_ru.stayclose_rgb_ru.."." end),

		--[+ Pick on Someone Your Own Size +]-- руоф Выбирай по размеру
	--[+ Russian +]--
		create_template("ach_class_ogr_11_ext_ru", {"loc_achievement_ogryn_taunt_shout_hit_name"}, {"ru"}, function(locale, value) return "Выбери кого-то своего размера" end),

			--[+ Taunt 1000 Specialist or Elite enemies using Loyal Protector. +]-- руоф Спровоцируйте особых или элитных врагов (1000) с помощью «Верного защитника».
	--[+ Russian +]--
			create_template("ach_class_ogr_11_ext_desc_ru", {"loc_achievement_ogryn_taunt_shout_hit_description"}, {"ru"}, function(locale, value) return "Спровоцируйте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью способности "..COLORS_KW_Penances_ru.loyalprot_rgb_ru.."." end),

		--[+ Gone Bowling +]-- руоф Играю в боулинг
	--[+ Russian +]--
		-- create_template("ach_red_ogr_5_ext_ru", {"loc_achievement_ogryn_2_bull_rushed_100_enemies_name"}, {"ru"}, function(locale, value) return "Играю в боулинг" end),

			--[+ Knock down 60 enemies with a single Bull Rush on Malice Threat or higher. +]-- руоф При угрозе «Злоба» или выше сбейте с ног одним зарядом «Бычьего натиска» врагов: 60.
	--[+ Russian +]--
			create_template("ach_red_ogr_5_ext_desc_ru", {"loc_achievement_ogryn_2_bull_rushed_100_enemies_description"}, {"ru"}, function(locale, value) return "Сбейте "..COLORS_Numbers.target_rgb.." врагов за одно использование способности "..COLORS_KW_Penances_ru.bull_rush_rgb_ru.." или "..COLORS_KW_Penances_ru.bull_rush4_rgb_ru.." на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше." end),

		--[+ Don't Stop Me Now! +]-- руоф Меня не остановить!
	--[+ Russian +]--
		-- create_template("ach_red_ogr_6_ext_ru", {"loc_achievement_ogryn_2_bull_rushed_70_within_25_seconds_name"}, {"ru"}, function(locale, value) return "Меня не остановить!" end),

			--[+ Move 40 metres with Bull Rush in under 20s on Heresy Threat or higher. (Private Game: Penance can only be completed in a private game) +]-- руоф При угрозе «Ересь» или выше переместитесь на 40 м с помощью «Бычьего натиска» менее чем за 20 с.
	--[+ Russian +]--
			create_template("ach_red_ogr_6_ext_desc_ru", {"loc_achievement_ogryn_2_bull_rushed_70_within_25_seconds_description"}, {"ru"}, function(locale, value) return "Переместитесь на "..COLORS_Numbers.target_rgb.." метров с помощью способности "..COLORS_KW_Penances_ru.bull_rush_rgb_ru.." или "..COLORS_KW_Penances_ru.bull_rush4_rgb_ru.." в течение "..COLORS_Numbers.time_wind_rgb.." секунд на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше."..TALENTS_Enh_desc_penances_ru.ED_Dont_stop_me_now_rgb_ru end),

		--[+ Can't Catch Me! +]-- руоф Меня не поймать
	--[+ Russian +]--
		create_template("ach_class_ogr_11_ext_ru", {"loc_achievement_ogryn_ogryn_feel_no_pain_kills_at_max_name"}, {"ru"}, function(locale, value) return "Меня не поймать!" end),

			--[+ Kill 2500 enemies while at 7 stacks or higher of Feel No Pain. +]-- руоф Убейте врагов (2500), сохраняя не менее 7 ед. заряда «Неболита».
	--[+ Russian +]--
			create_template("ach_class_ogr_11_ext_desc_ru", {"loc_achievement_ogryn_feel_no_pain_kills_at_max_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, имея не менее "..COLORS_Numbers.n_7_rgb.." зарядов ключевого таланта "..COLORS_KW_Penances_ru.feelnop_rgb_ru.."." end),

		--[+ Eat This! +]-- руоф Получи!
	--[+ Russian +]--
		create_template("ach_class_ogr_11_ext_ru", {"loc_achievement_ogryn_grenade_rock_elites_or_specialists_name"}, {"ru"}, function(locale, value) return "На, подавись!" end),

			--[+ Kill 75 Specialists or Elites with the Big Friendly Rock. +]-- руоф Убейте особых или элитных врагов (75) с помощью «Большого дружелюбного валуна».
	--[+ Russian +]--
			create_template("ach_class_ogr_11_ext_desc_ru", {"loc_achievement_ogryn_grenade_rock_elites_or_specialists_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью блица "..COLORS_KW_Penances_ru.bigfriendro_rgb_ru.."." end),

		--[+ Pile On +]-- руоф Навались
	--[+ Russian +]--
		-- create_template("ach_class_ogr_11_ext_ru", {"loc_achievement_ogryn_team_heavy_aura_kills_name"}, {"ru"}, function(locale, value) return "Навались" end),

			--[+ Kill 5000 enemies with Heavy Attacks while under the effect of Bonebreaker's Aura. Heavy Attack kills made by your team members also count. +]-- руоф Убейте врагов (5000) мощными атаками, находясь под действием «Ауры костолома». Если члены команды убивают мощными атаками, это тоже учитывается.
	--[+ Russian +]--
			create_template("ach_class_ogr_11_ext_desc_ru", {"loc_achievement_ogryn_team_heavy_aura_kills_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов заряженными атаками, находясь под действием ауры "..COLORS_KW_Penances_ru.bonebraura_rgb_ru..". Убийства заряженными атаками, совершённые членами команды также засчитываются." end),

		--[+ Sustained Fire +]-- руоф Непрерывный огонь
	--[+ Russian +]--
		create_template("ach_class_ogr_11_ext_ru", {"loc_achievement_ogryn_kills_during_max_stacks_heavy_hitter_name"}, {"ru"}, function(locale, value) return "Непрерывные удары" end),

			--[+ Kill 5000 enemies with heavy attacks, while maintaining 5 stacks of Heavy Hitter. +]-- руоф Убейте врагов (5000) мощными атаками, удерживая 5 зарядов «Тяжеловеса».
	--[+ Russian +]--
			create_template("ach_class_ogr_11_ext_desc_ru", {"loc_achievement_ogryn_kills_during_max_stacks_heavy_hitter_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов заряженными атаками, удерживая "..COLORS_Numbers.n_5_rgb.." зарядов ключевого таланта "..COLORS_KW_Penances_ru.heavyhitter_rgb_ru.."." end),

		--[+ Clear the Path +]-- руоф Расчисти путь
	--[+ Russian +]--
		-- create_template("ach_class_ogr_11_ext_ru", {"loc_achievement_ogryn_2_medium_1_name"}, {"ru"}, function(locale, value) return "Расчисти путь" end),

			--[+ On Malice Threat or higher, knock down 3 Ranged enemies using Bull Rush, 25 times. +]-- руоф При угрозе «Злоба» или выше сбейте с ног врагов (3) с дистанционной атакой с помощью «Бычьего натиска» 25 р.
	--[+ Russian +]--
			create_template("ach_class_ogr_11_ext_desc_ru", {"loc_achievement_ogryn_2_medium_1_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, "..COLORS_Numbers.target_rgb.." раз сбейте с ног "..COLORS_Numbers.num_enemies_rgb.." врагов с дальнобойным оружием, используя способность "..COLORS_KW_Penances_ru.bull_rush_rgb_ru.." или "..COLORS_KW_Penances_ru.bull_rush4_rgb_ru.."." end),

		--[+ Crowd Control +]-- руоф Сдерживание толпы
	--[+ Russian +]--
		-- create_template("ach_class_ogr_11_ext_ru", {"loc_achievement_ogryn_grenade_frag_group_of_enemies_name"}, {"ru"}, function(locale, value) return "Сдерживание толпы" end),

			--[+ With one Frag Bomb kill 25 enemies, 25 times. +]-- руоф Убейте врагов (25) одной «Осколочной бомбой» 25 р.
	--[+ Russian +]--
			create_template("ach_class_ogr_11_ext_desc_ru", {"loc_achievement_ogryn_grenade_frag_group_of_enemies_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.amount_var_rgb.." врагов одной осколочной гранатой от блица "..COLORS_KW_Penances_ru.fragbomb_rgb_ru..". Повторите это задание "..COLORS_Numbers.target_rgb.." раз." end),

		--[+ Spray and Pray (To the Emperor) +]-- руоф Стреляй и восхваляй (Императора)
	--[+ Russian +]--
		create_template("ach_class_ogr_11_ext_ru", {"loc_achievement_ogryn_kills_during_barrage_threshold_name"}, {"ru"}, function(locale, value) return "Стреляй и молись (Императору)" end),

			--[+ Kill 25 enemies, 50 times, during a single activation of Point-Blank Barrage. +]-- руоф Убейте врагов (25) 50 р. во время однократной активации «Решительного натиска».
	--[+ Russian +]--
			create_template("ach_class_ogr_11_ext_desc_ru", {"loc_achievement_ogryn_kills_during_barrage_threshold_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.amount_var_rgb.." врагов за однократное применение способности "..COLORS_KW_Penances_ru.pbbarrage_rgb_ru..". Повторите это задание "..COLORS_Numbers.target_rgb.." раз." end),

		--[+ You Can't Hide from Us! +]-- руоф От нас не спрятаться!
	--[+ Russian +]--
		create_template("ach_class_ogr_11_ext_ru", {"loc_achievement_ogryn_team_suppressed_aura_kills_name"}, {"ru"}, function(locale, value) return "Тебе от нас не спрятаться!" end),

			--[+ Kill 7500 suppressed enemies while under the effect of Coward Culling. Kills made by any affected team member also count. +]-- руоф Убейте ослабленных врагов (7500), находясь под действием «Трусливые отбросы». Убийства, совершенные любым членом команды под действием эффекта, тоже учитываются.
	--[+ Russian +]--
			create_template("ach_class_ogr_11_ext_desc_ru", {"loc_achievement_ogryn_team_suppressed_aura_kills_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." подавленных врагов, находясь под эффектом ауры "..COLORS_KW_Penances_ru.cowculaura_rgb_ru..". Убийства, совершённые любым членом команды под действием эффекта ауры, также учитываются." end),

		--[+ Something In Your Eye - У тебя что-то в глазу +]-- руоф Нечто в твоих глазах
	--[+ Russian +]--
		create_template("ach_red_ogr_3_ext_ru", {"loc_achievement_ogryn_2_killed_corruptor_with_grenade_impact_name"}, {"ru"}, function(locale, value) return "У тебя что-то в глазу" end),

			--[+ Kill a Corruptor by hitting it in the eye with your grenade box. +]-- руоф Убейте осквернителя, попав ему в глаз гранатой.
	--[+ Russian +]--
			create_template("ach_red_ogr_3_ext_desc_ru", {"loc_achievement_ogryn_2_killed_corruptor_with_grenade_impact_description"}, {"ru"}, function(locale, value) return "Убейте Осквернителя, попав ему ящиком с гранатами в глаз."..TALENTS_Enh_desc_penances_ru.ED_Something_in_your_eye_rgb_ru end),

		--[+ Heavyweight Champion +]-- руоф Чемпион-тяжеловес
	--[+ Russian +]--
		-- create_template("ach_red_ogr_7_ext_ru", {"loc_achievement_ogryn_2_bull_rushed_4_ogryns_name"}, {"ru"}, function(locale, value) return "Чемпион-тяжеловес" end),

			--[+ On Heresy Threat or higher, knock down 4 enemy Ogryns (Bulwarks, Crushers, Plague Ogryns, and/or Reapers) with a single Bull Rush charge. +]-- руоф При угрозе «Ересь» или выше сбейте с ног одним зарядом «Бычьего натиска» вражеских Огринов (Бастион, Дробитель, Чумной Огрин и/или Жнец): 4.
	--[+ Russian +]--
			create_template("ach_red_ogr_7_ext_desc_ru", {"loc_achievement_ogryn_2_bull_rushed_4_ogryns_description"}, {"ru"}, function(locale, value) return "На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, сбейте с ног "..COLORS_Numbers.target_rgb.." любых вражеских огрина одним зарядом способности  "..COLORS_KW_Penances_ru.bull_rush_rgb_ru.." или "..COLORS_KW_Penances_ru.bull_rush4_rgb_ru..". Огринами являются: Бастион, Дробитель, Жнец и Чумной огрин."..TALENTS_Enh_desc_penances_ru.ED_Heavyweight_champion_rgb_ru end),

		--[+ I'm in Charge - Я главный +]-- руоф Я главнее
	--[+ Russian +]--
		create_template("ach_red_ogr_2_ext_ru", {"loc_achievement_ogryn_2_bull_rushed_charging_ogryn_name"}, {"ru"}, function(locale, value) return "Я главный" end),

			--[+ Use Bull Rush to interrupt a Plague Ogryn's charge. +]-- руоф Используйте «Бычий натиск», чтобы прервать рывок Чумного Огрина.
	--[+ Russian +]--
			create_template("ach_red_ogr_2_ext_desc_ru", {"loc_achievement_ogryn_2_bull_rushed_charging_ogryn_description"}, {"ru"}, function(locale, value) return "Используйте способность "..COLORS_KW_Penances_ru.bull_rush_rgb_ru.." или "..COLORS_KW_Penances_ru.bull_rush4_rgb_ru..", чтобы прервать рывок Чумного Огрина."..TALENTS_Enh_desc_penances_ru.ED_Im_in_charge_rgb_ru end),


	--[+ +TACTICAL - ТАКТИЧЕСКИЕ+ +]--
		--[+ OFFENSIVE - АТАКА +]--
		--[+ Offensive +]-- руоф Наступление
	--[+ Russian +]--
		create_template("ach_off_0_ext_ru", {"loc_achievement_category_offensive_label"}, {"ru"}, function(locale, value) return "Атака" end),

		--[+  +]-- руоф Враг моего врага - мой друг
	--[+ Russian +]--
		-- create_template("ach_off_1_ext_ru", {"loc_achievement_enemies_killed_by_poxburster_name"}, {"ru"}, function(locale, value) return "Враг моего врага - мой друг" end),

			--[+  +]-- руоф Убейте врагов (10), уничтожив рядом с ними чумного Взрывуна.
	--[+ Russian +]--
			create_template("ach_off_1_ext_desc_ru", {"loc_achievement_enemies_killed_by_poxburster_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, уничтожив рядом с ними Чумного взрывника." end),

		--[+ Flyswatter +]-- руоф Мухобойка
	--[+ Russian +]--
		-- create_template("ach_off_5_ext_ru", {"loc_achievement_enemies_climbing_name"}, {"ru"}, function(locale, value) return "Мухобойка" end),

			--[+ Kill 50 climbing enemies. +]-- руоф Убить карабкающихся врагов: 50.
	--[+ Russian +]--
			create_template("ach_off_5_ext_desc_ru", {"loc_achievement_enemies_climbing_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов, карабкающихся наверх." end),

		--[+  +]-- руоф На примете
	--[+ Russian +]--
		-- create_template("ach_off_1_ext_ru", {"loc_achievement_enemies_killed_by_barrels_name"}, {"ru"}, function(locale, value) return "На примете" end),

			--[+ Kill 500000 enemies in total. +]-- руоф Убейте врагов (100) с помощью взрывных бочек.
	--[+ Russian +]--
			create_template("ach_off_1_ext_desc_ru", {"loc_achievement_enemies_killed_by_barrels_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов с помощью взрывных бочек." end),

		--[+ Attack, Attack, Attack! +]-- руоф Нападай, нападай!
	--[+ Russian +]--
		create_template("ach_off_7_ext_ru", {"loc_achievement_group_offence_name"}, {"ru"}, function(locale, value) return "Атакуй, атакуй, атакуй!" end),

			--[+ Complete the following Offence Penances. +]-- руоф Выполните следующие искупления с атакой.
	--[+ Russian +]--
			create_template("ach_off_7_ext_desc_ru", {"loc_achievement_group_offence_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления атаки." end),

		--[+  +]-- руоф Не время для ран
	--[+ Russian +]--
		-- create_template("ach_off_1_ext_ru", {"loc_achievement_enemies_killed_by_barrels_name"}, {"ru"}, function(locale, value) return "Не время для ран" end),

			--[+  +]-- руоф Действуя сообща, выполните задание при угрозе «Ересь» или выше так, чтобы всех вас не сбили с ног более 5 р.
	--[+ Russian +]--
			-- create_template("ach_off_1_ext_desc_ru", {"loc_achievement_enemies_killed_by_barrels_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов с помощью взрывных бочек." end),

		--[+ Frenzied Killer (1-3) +]-- руоф Неистовый убийца (1-3)
	--[+ Russian +]--
		-- create_template("ach_off_4_ext_ru", {"loc_achievement_fast_enemies_1-3_name"}, {"ru"}, function(locale, value) return "Бешеный убийца (1-3)" end),

			--[+ Kill 120 enemies in 30s. +]-- руоф Убить врагов: 60 за 30 с.
	--[+ Russian +]--
			create_template("ach_off_4_ext_desc_ru", {"loc_achievement_fast_enemies_x_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов за "..COLORS_Numbers.time_wind_rgb.." секунд." end),

		--[+ Purge the Heretic (1-5) +]-- руоф Очистить еретиков (1-5)
	--[+ Russian +]--
		-- create_template("ach_off_1_ext_ru", {"loc_achievement_enemies_1-5_name"}, {"ru"}, function(locale, value) return "Очистить еретиков (1-5)" end),

			--[+ Kill 500000 enemies in total. +]-- руоф Убить всего врагов: 500000.
	--[+ Russian +]--
			create_template("ach_off_1_ext_desc_ru", {"loc_achievement_enemies_x_description"}, {"ru"}, function(locale, value) return "Убейте в сумме "..COLORS_Numbers.target_rgb.." врагов." end),

		--[+ Dodge This (1-3) +]-- руоф Попробуй увернись (1-3)
	--[+ Russian +]--
		-- create_template("ach_off_6_ext_ru", {"loc_achievement_fast_headshot_1-3_name"}, {"ru"}, function(locale, value) return "Увернись от этого (1-3)" end),

			--[+ Kill 15 enemies with Headshots within 10s. +]-- руоф Убить врагов выстрелами в голову: 15 за 10 с.
	--[+ Russian +]--
			create_template("ach_off_6_ext_desc_ru", {"loc_achievement_fast_headshot_x_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов выстрелами в голову в течение "..COLORS_Numbers.n_10_rgb.." секунд." end),

		--[+ Time to Die (1-3) +]-- руоф Пора умирать (1-3)
	--[+ Russian +]--
		-- create_template("ach_off_3_ext_ru", {"loc_achievement_boss_fast_1-3_name"}, {"ru"}, function(locale, value) return "Время умирать (1-3)" end),

			--[+ Kill a Monstrosity in 5s or less. +]-- руоф Убить чудовище за 5 с или меньше.
	--[+ Russian +]--
			create_template("ach_off_3_ext_desc_ru", {"loc_achievement_boss_fast_x_description"}, {"ru"}, function(locale, value) return "Убейте Монстра за "..COLORS_Numbers.target_rgb.." секунд или меньше." end),

		--[+ Serial Killer +]-- руоф Серийный убийца
	--[+ Russian +]--
		-- create_template("ach_off_2_ext_ru", {"loc_achievement_consecutive_headshots_name"}, {"ru"}, function(locale, value) return "Серийный убийца" end),

			--[+ Kill 20 consecutive enemies with headshots. +]-- руоф Последовательно убейте выстрелами в голову врагов (20).
	--[+ Russian +]--
			create_template("ach_off_2_ext_desc_ru", {"loc_achievement_consecutive_headshots_description"}, {"ru"}, function(locale, value) return "Совершите "..COLORS_Numbers.target_rgb.." последовательных убийств выстрелами врагам в голову." end),

		--[+ +DEFENSIVE - ЗАЩИТА+ +]--
		--[+ Defensive +]-- руоф Оборона
	--[+ Russian +]--
		create_template("ach_red_vet_0_ext_ru", {"loc_achievement_category_defensive_label"}, {"ru"}, function(locale, value) return "Защита" end),

		--[+ Flawless Execution (1-3) +]-- руоф Безупречная казнь (1-3)
	--[+ Russian +]--
		-- create_template("ach_red_vet_3_ext_ru", {"loc_achievement_flawless_mission_1-3_name"}, {"ru"}, function(locale, value) return "Безупречное исполнение (1-3)" end),

			--[+ Complete 10 missions in a row without being downed on Malice Threat or higher. +]-- руоф При угрозе «Злоба» или выше выполнить несколько заданий подряд (15) так, чтобы никто в группе не был сбит с ног.
	--[+ Russian +]--
			create_template("ach_red_vet_3_ext_desc_ru", {"loc_achievement_flawless_mission_x_description"}, {"ru"}, function(locale, value) return "Выполните "..COLORS_Numbers.target_rgb.." миссий подряд, не будучи ни разу сбитым с ног, на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше." end),

		--[+ Case for the Defence +]-- руоф Версия защиты
	--[+ Russian +]--
		create_template("ach_red_vet_8_ext_ru", {"loc_achievement_group_defence_name"}, {"ru"}, function(locale, value) return "Дело в пользу защиты" end),

			--[+ Complete the following Defence Penances. +]-- руоф Выполните следующие искупления с обороной.
	--[+ Russian +]--
			create_template("ach_red_vet_8_ext_desc_ru", {"loc_achievement_group_defence_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления защиты." end),

		--[+ Zigging and Zagging +]-- руоф Вертись волчком
	--[+ Russian +]--
		create_template("ach_red_vet_4_ext_ru", {"loc_achievement_total_sprint_dodges_name"}, {"ru"}, function(locale, value) return "Уворачиваться и уклоняться" end),

			--[+ Dodge a total of 99 shots by sprinting. +]-- руоф При помощи бега уклониться от выстрелов: 99.
	--[+ Russian +]--
			create_template("ach_red_vet_4_ext_desc_ru", {"loc_achievement_total_sprint_dodges_description"}, {"ru"}, function(locale, value) return "Уклонитесь от "..COLORS_Numbers.target_rgb.." выстрелов с помощью бега." end),

		--[+ The Emperor Protects (1-3) +]-- руоф Император защищает (1-3)
	--[+ Russian +]--
		-- create_template("ach_red_vet_1_ext_ru", {"loc_achievement_fast_blocks_1-3_name"}, {"ru"}, function(locale, value) return "Император защищает (1-3)" end),

			--[+ Block 900 damage in 10s. +]-- руоф Блокировать 900 ед. урона в течение 10 с.
	--[+ Russian +]--
			create_template("ach_red_vet_1_ext_desc_ru", {"loc_achievement_fast_blocks_x_description"}, {"ru"}, function(locale, value) return "Заблокируйте "..COLORS_Numbers.target_rgb.." единиц урона за "..COLORS_Numbers.time_wind_rgb.." секунд." end),

		--[+ Untouchable +]-- руоф Неприкасаемый
	--[+ Russian +]--
		-- create_template("ach_red_vet_7_ext_ru", {"loc_achievement_mission_no_damage_name"}, {"ru"}, function(locale, value) return "Неприкасаемый" end),

			--[+ Complete a Mission without taking any Health damage. +]-- руоф Выполнить задание, не получив урона.
	--[+ Russian +]--
			create_template("ach_red_vet_7_ext_desc_ru", {"loc_achievement_mission_no_damage_description"}, {"ru"}, function(locale, value) return "Завершите миссию, не получив урона "..COLORS_KWords_ru.Health_rgb_ru.."." end),

		--[+ Preternatural Dodge (1-3) +]-- руоф Сверхъестественное уклонение (1-3)
	--[+ Russian +]--
		-- create_template("ach_red_vet_2_ext_ru", {"loc_achievement_consecutive_dodge_1-3_name"}, {"ru"}, function(locale, value) return "Сверхъестественное уклонение (1-3)" end),

			--[+ Dodge 20 attacks without taking damage. +]-- руоф Уклониться от ударов без получения урона: 20.
	--[+ Russian +]--
			create_template("ach_red_vet_2_ext_desc_ru", {"loc_achievement_consecutive_dodge_x_description"}, {"ru"}, function(locale, value) return "Уклонитесь от "..COLORS_Numbers.target_rgb.." атак, не получив урона." end),

		--[+ Violent Tendencies +]-- руоф Склонность к жестокости
	--[+ Russian +]--
		-- create_template("ach_red_vet_6_ext_ru", {"loc_achievement_melee_toughness_name"}, {"ru"}, function(locale, value) return "Склонность к жестокости" end),

			--[+ Regenerate 40000 Toughness from melee kills. +]-- руоф С помощью убийств в ближнем бою восстановить стойкость: 40000.
	--[+ Russian +]--
			create_template("ach_red_vet_6_ext_desc_ru", {"loc_achievement_melee_toughness_description"}, {"ru"}, function(locale, value) return "Восстановите "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." от убийств в ближнем бою." end),

		--[+ Figure Four +]-- руоф Ускользнул
	--[+ Russian +]--
		create_template("ach_red_vet_5_ext_ru", {"loc_achievement_slide_dodge_name"}, {"ru"}, function(locale, value) return "Выход в ноги" end),

			--[+ Use your Slide to avoid an enemy attack. +]-- руоф Использовать «Скольжение» для уклонения от атаки врага.
	--[+ Russian +]--
			create_template("ach_red_vet_5_ext_desc_ru", {"loc_achievement_slide_dodge_description"}, {"ru"}, function(locale, value) return "Используйте подкат, чтобы избежать атаки врага." end),

	--[+ +TEAM - КОМАНДА+ +]--
		--[+ Team +]-- руоф Команда
	--[+ Russian +]--
		-- create_template("ach_tea_0_ext_ru", {"loc_achievement_category_teamplay_label"}, {"ru"}, function(locale, value) return "Команда" end),

		--[+ War's Not Over (1-5) +]-- руоф Война не окончена (1-5)
	--[+ Russian +]--
		-- create_template("ach_tea_1_ext_ru", {"loc_achievement_revive_1-5_name"}, {"ru"}, function(locale, value) return "Война не окончена (1-5)" end),

			--[+ Rescue a total of 500 Operatives. +]-- руоф Спасти оперативников: 500.
	--[+ Russian +]--
			create_template("ach_tea_1_ext_desc_ru", {"loc_achievement_revive_x_description"}, {"ru"}, function(locale, value) return "Спасите в общей сложности "..COLORS_Numbers.target_rgb.." оперативников." end),

		--[+ Discipline & Teamwork (1-5) +]-- руоф Дисциплина и командная работа (1-5)
	--[+ Russian +]--
		-- create_template("ach_tea_6_ext_ru", {"loc_achievement_deployables_1-5_name"}, {"ru"}, function(locale, value) return "Дисциплина и командная работа (1-5)" end),

			--[+ Share 500 ammo or health packs. +]-- руоф Поделиться боеприпасами или аптечкой: 500.
	--[+ Russian +]--
			create_template("ach_tea_6_ext_desc_ru", {"loc_achievement_deployables_x_description"}, {"ru"}, function(locale, value) return "Поделитесь "..COLORS_Numbers.target_rgb.." раз ящиками с боеприпасами или медикаментами." end),

		--[+ Good Samaritan +]-- руоф Добрый самаритянин
	--[+ Russian +]--
		-- create_template("ach_tea_7_ext_ru", {"loc_achievement_group_cooperation_name"}, {"ru"}, function(locale, value) return "Добрый самаритянин" end),

			--[+ Complete the following Team Penances. +]-- руоф Выполнить следующие командные искупления.
	--[+ Russian +]--
			create_template("ach_tea_7_ext_desc_ru", {"loc_achievement_group_cooperation_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления команды." end),

		--[+ Buddy Up +]-- руоф Закадычные друзья
	--[+ Russian +]--
		create_template("ach_tea_4_ext_ru", {"loc_achievement_coherency_toughness_name"}, {"ru"}, function(locale, value) return "Сотрудничество" end),

			--[+ Replenish 2000 Toughness from Coherency. +]-- руоф С помощью «Сплоченности» восстановить стойкость: 2000.
	--[+ Russian +]--
			create_template("ach_tea_4_ext_desc_ru", {"loc_achievement_coherency_toughness_description"}, {"ru"}, function(locale, value) return "Восстановите "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." под действием "..COLORS_KWords_ru.Coherency_rgb_ru.."." end),

		--[+ Dream Team +]-- руоф Закадычные друзья
	--[+ Russian +]--
		create_template("ach_tea_3_ext_ru",{"loc_achievement_flawless_team_name"}, {"ru",}, function(locale, value) return "Команда мечты" end),

			--[+ Complete 100 missions without anyone being downed. +]-- руоф Завершите 100 заданий так, чтобы никто в группе не был сбит с ног.
	--[+ Russian +]--
			create_template("ach_tea_3_ext_desc_ru", {"loc_achievement_flawless_team_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий так, чтобы никого из команды не сбили с ног." end),

		--[+ Leave No One Behind +]-- руоф Никого не оставляйте позади
	--[+ Russian +]--
		create_template("ach_tea_5_ext_ru", {"loc_achievement_revive_all_namе"}, {"ru"}, function(locale, value) return "Никого не бросать" end),

			-- [+ Complete a single mission after Rescuing 3 different Operatives at least once from captivity. +]-- руоф Завершите одно задание, вызволив из плена различных оперативников (3) хотя бы один раз.
	--[+ Russian +]--
			create_template("ach_tea_5_ext_desc_ru", {"loc_achievement_revive_all_description"}, {"ru"}, function(locale, value) return "Завершите одну миссию, освободив из плена "..COLORS_Numbers.target_rgb.." разных оперативников хотя бы по разу." end),

		--[+ Up and at 'Em! (1-5) +]-- руоф Подъем! (1-5)
	--[+ Russian +]--
		-- create_template("ach_tea_2_ext_ru", {"loc_achievement_assists_1-5_name"}, {"ru"}, function(locale, value) return "Поднимайся и вперёд! (1-5)" end),

			--[+ Help 1000 downed Operatives back up. +]-- руоф Помочь подняться поваленным оперативникам: 1000.
	--[+ Russian +]--
			create_template("ach_tea_2_ext_desc_ru", {"loc_achievement_assists_x_description"}, {"ru"}, function(locale, value) return "Помогите "..COLORS_Numbers.target_rgb.." сбитым с ног оперативникам вернуться в бой." end),

		--[+ +HERETICS - ЕРЕТИКИ+ +]--
		--[+ Heretics +]-- руоф Еретические
	--[+ Russian +]--
		create_template("ach_her_0_ext_ru", {"loc_achievement_category_enemies_label"}, {"ru"}, function(locale, value) return "Еретики" end),

		--[+ Heretics +]-- руоф Барабанная дробь
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_shotgunner_spread_dodged_name"}, {"ru"}, function(locale, value) return "Барабанная дробь" end),

			--[+  +]-- руоф Увернитесь от разброса из дробовика (50). [По 1 за каждого отброса с дробовиком]
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_shotgunner_spread_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+ Lex Vigilant +]-- руоф Бдительность Закона
	--[+ Russian +]--
		create_template("ach_her_9_ext_ru", {"loc_achievement_all_cultist_elites_killed_name"}, {"ru"}, function(locale, value) return "Закон Неусыпный" end),

			--[+ Kill 10 of each Dreg elite. +]-- руоф Убейте элитных отбросов (по 10 каждого вида).
	--[+ Russian +]--
			create_template("ach_her_9_ext_desc_ru", {"loc_achievement_all_cultist_elites_killed_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов каждого типа из элитных дрегов." end),

		--[+  +]-- руоф Бойся топора
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_crusher_overhead_smash_dodged_name"}, {"ru"}, function(locale, value) return "Бойся топора" end),

			--[+ Kill 10 of each Dreg elite. +]-- руоф Увернитесь от рубящих ударов огринов-дробителей 50 р. [Считается только одно уклонение за каждого огрина-дробителя]
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_crusher_overhead_smash_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+  +]-- руоф Будь здоров
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_team_team_chaos_beast_of_nurgle_slain_no_corruption_name"}, {"ru"}, function(locale, value) return "Будь здоров" end),

			--[+  +]-- руоф Убейте тварь Нургла так, чтобы ни один член команды не пострадал от ее гниющей рвоты.
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+ Blowout +]-- руоф Взрывной успех
	--[+ Russian +]--
		-- create_template("ach_her_5_ext_ru", {"loc_achievement_melee_renegade_name"}, {"ru"}, function(locale, value) return "Взрыв" end),

			--[+ Kill 10 Bombers with melee attacks. +]-- руоф Убить взрывунов в ближнем бою: 10.
	--[+ Russian +]--
			-- create_template("ach_her_5_ext_desc_ru", {"loc_achievement_melee_renegade_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." Чумных взрывников атаками ближнего боя." end),

		--[+  +]-- руоф Задуем свечи
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_team_team_chaos_beast_of_nurgle_slain_no_corruption_name"}, {"ru"}, function(locale, value) return "Задуем свечи" end),

			--[+  +]-- руоф Убейте огнеметчиков из числа скабов и отбросов (50) до того, как они используют свои способности.
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+ Bullying the Bully +]-- руоф Запугивание задиры
	--[+ Russian +]--
		create_template("ach_her_18_ext_ru", {"loc_achievement_ogryn_gunner_melee_name"}, {"ru"}, function(locale, value) return "Задирание задиры" end),

			--[+ Kill 10 Reapers in melee. +]-- руоф Убейте Жнеца (10) в ближнем бою.
	--[+ Russian +]--
			create_template("ach_her_18_ext_desc_ru", {"loc_achievement_ogryn_gunner_melee_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." Жнецов в ближнем бою." end),

		--[+ Cull the Traitors +]-- руоф Избавиться от предателей
	--[+ Russian +]--
		create_template("ach_her_7_ext_ru", {"loc_achievement_group_enemies_renegades_name"}, {"ru"}, function(locale, value) return "Уничтожьте предателей" end),

			--[+ Complete the following Scab Penances. +]-- руоф Выполнить следующие скаб-искупления.
	--[+ Russian +]--
			create_template("ach_her_7_ext_desc_ru", {"loc_achievement_group_enemies_renegades_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, связанные со скабами." end),

		--[+ Banishment +]-- руоф Изгнание
	--[+ Russian +]--
		-- create_template("ach_her_16_ext_ru", {"loc_achievement_all_chaos_killed_name"}, {"ru"}, function(locale, value) return "Изгнание" end),

			--[+ Kill every type of Terror. +]-- руоф Убейте все виды ужасов.
	--[+ Russian +]--
			create_template("ach_her_16_ext_desc_ru", {"loc_achievement_all_chaos_killed_description"}, {"ru"}, function(locale, value) return "Убейте врагов каждого типа из Ужасов хаоса." end),

		--[+ Banisher +]-- руоф Изгоняющий демонов
	--[+ Russian +]--
		create_template("ach_her_19_ext_ru", {"loc_achievement_banish_daemonhost_name"}, {"ru"}, function(locale, value) return "Изгоняющий" end),

			--[+ Banish a Daemonhost. +]-- руоф Изгоните демонхоста.
	--[+ Russian +]--
			create_template("ach_her_19_ext_desc_ru",{"loc_achievement_banish_daemonhost_description"}, {"ru"}, function(locale, value) return "Изгоните Демонхоста." end),

		--[+  +]-- руоф К бою готов!
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_training_grounds_fully_unlocked_name"}, {"ru"}, function(locale, value) return "К бою готов!" end),

			--[+  +]-- руоф Полностью разблокируйте тренировочную площадку.
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_training_grounds_fully_unlocked_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+  +]-- руоф Как ты подкрался?
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_bulwark_backstab_damage_inflicted_name"}, {"ru"}, function(locale, value) return "Как ты подкрался?" end),

			--[+  +]-- руоф Нанесите урон (25000) огрину-бастиону ударом в спину.
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_bulwark_backstab_damage_inflicted_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+ Traitorous Collective +]-- руоф Коллектив предателей
	--[+ Russian +]--
		-- create_template("ach_her_3_ext_ru", {"loc_achievement_all_renegades_killed_name"}, {"ru"}, function(locale, value) return "Коллектив предателей" end),

			--[+ Kill every type Scab enemy. +]-- руоф Убейте все виды врагов-Скабов.
	--[+ Russian +]--
			create_template("ach_her_3_ext_desc_ru", {"loc_achievement_all_renegades_killed_description"}, {"ru"}, function(locale, value) return "Убейте врагов Скабов каждого типа." end),

		--[+ Nightmare Patrol +]-- руоф Кошмарный патруль
	--[+ Russian +]--
		-- create_template("ach_her_14_ext_ru", {"loc_achievement_all_chaos_specials_killed_name"}, {"ru"}, function(locale, value) return "Кошмарный патруль" end),

			--[+ Kill 10 of each type of Terror Specialist. +]-- руоф Убейте специалистов из числа Ужасов: 10 каждого типа.
	--[+ Russian +]--
			create_template("ach_her_14_ext_desc_ru", {"loc_achievement_all_chaos_specials_killed_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов Ужасов хаоса." end),

		--[+  +]-- руоф Как ты подкрался?
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_team_chaos_spawned_killed_no_players_grabbed_name"}, {"ru"}, function(locale, value) return "Как ты подкрался?" end),

			--[+  +]-- руоф Убейте отродье Хаоса так, чтобы не схватили ни одного члена команды.
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_team_chaos_spawned_killed_no_players_grabbed_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+  +]-- руоф Не попасться в сети
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_trapper_net_dodged_name"}, {"ru"}, function(locale, value) return "Не попасться в сети" end),

			--[+  +]-- руоф Увернитесь от сетей ловушечника (50). [По 1 за каждого ловушечника]
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_trapper_net_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+  +]-- руоф Обезвреживатель
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_grenadier_killed_before_attack_occured_name"}, {"ru"}, function(locale, value) return "Обезвреживатель" end),

			--[+  +]-- руоф Убейте гренадеров из числа скабов и отбросов (50) до того, как они используют свои способности.
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_grenadier_killed_before_attack_occured_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+  +]-- руоф Отвали от меня!
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_pox_hounds_pushed_name"}, {"ru"}, function(locale, value) return "Отвали от меня!" end),

			--[+  +]-- руоф Подбросьте чумных гончих (50) в воздух. [По 1 за каждую гончую]
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_pox_hounds_pushed_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+ Dreg Hunter (1-5) +]-- руоф Охотник на отбросов (1-5)
	--[+ Russian +]--
		-- create_template("ach_her_11_ext_ru", {"loc_achievement_kill_cultists_1-5_name"}, {"ru"}, function(locale, value) return "Охотник на дрегов (1-5)" end),

			--[+ Kill 25000 Dregs. +]-- руоф Убить отбросов: 25000.
	--[+ Russian +]--
			create_template("ach_her_11_ext_desc_ru", {"loc_achievement_kill_cultists_x_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." дрегов." end),

		--[+ Purge the Heretics +]-- руоф Очистить еретиков
	--[+ Russian +]--
		create_template("ach_her_13_ext_ru", {"loc_achievement_group_enemies_cultists_name"}, {"ru"}, function(locale, value) return "Очисти еретиков" end),

			--[+ Complete the following Dreg Penances. +]-- руоф Выполнить следующие искупления отбросов.
	--[+ Russian +]--
			create_template("ach_her_13_ext_desc_ru", {"loc_achievement_group_enemies_cultists_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, связанные с дрегами." end),

		--[+ Cleanse the Taint +]-- руоф Очистить порчу
	--[+ Russian +]--
		create_template("ach_her_20_ext_ru", {"loc_achievement_group_enemies_chaos_name"}, {"ru"}, function(locale, value) return "Очисти порчу" end),
 
			--[+ Complete the following Terror Penances. +]-- руоф Выполнить следующие ужасные искупления.
	--[+ Russian +]--
			create_template("ach_her_20_ext_desc_ru", {"loc_achievement_group_enemies_chaos_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, связанные с Ужасами варпа." end),

		--[+ Renegade Master +]-- руоф Повелитель-отступник
	--[+ Russian +]--
		create_template("ach_her_1_ext_ru", {"loc_achievement_all_renegade_specials_killed_name"}, {"ru"}, function(locale, value) return "Мастер-отступник" end),

			--[+ Kill 10 of each Scab Specialist enemy. +]-- руоф Убейте Скабов-специалистов (по 10 каждого вида).
	--[+ Russian +]--
			create_template("ach_her_1_ext_desc_ru", {"loc_achievement_all_renegade_specials_killed_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из скабов-специалистов." end),

		--[+ Decapitation Protocol +]-- руоф Протокол обезглавливания
	--[+ Russian +]--
		-- create_template("ach_her_12_ext_ru", {"loc_achievement_cultiss_berzerker_head_name"}, {"ru"}, function(locale, value) return "Протокол обезглавливания" end),

			--[+ Kill 10 Dreg Ragers with Headshots. +]-- руоф Убейте отброса-буйного (10) выстрелом в голову.
	--[+ Russian +]--
			create_template("ach_her_12_ext_desc_ru", {"loc_achievement_cultist_berzerker_head_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." дрегов Берсерков в голову." end),

		--[+ Purification Protocol +]-- руоф Протокол очищения
	--[+ Russian +]--
		-- create_template("ach_her_15_ext_ru", {"loc_achievement_all_chaos_elites_killed_name"}, {"ru"}, function(locale, value) return "Протокол очищения" end),

			--[+ Kill 10 Elite Terrors. +]-- руоф Убейте элитных врагов из числа Ужасов: 10.
	--[+ Russian +]--
			create_template("ach_her_15_ext_desc_ru", {"loc_achievement_all_chaos_elites_killed_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов каждого типа из элиты Ужасов хаоса." end),

		--[+  +]-- руоф Прыткие пятки
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_mutant_charge_dodged_name"}, {"ru"}, function(locale, value) return "Прыткие пятки" end),

			--[+  +]-- руоф Увернитесь от атак мутантов (50). [По 1 за каждого мутанта]
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru",{"loc_achievement_mutant_charge_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end), -- ???????????

		--[+  +]-- руоф Решающий рывок
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_cultist_gunner_shot_dodged_name"}, {"ru"}, function(locale, value) return "Решающий рывок" end),

			--[+  +]-- руоф Увернитесь от выстрелов пулеметчика (500) во время бега.
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_cultist_gunner_shot_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+ Scab Picker (1-5) +]-- руоф Сборщик скабов (1-5)
	--[+ Russian +]--
		-- create_template("ach_her_4_ext_ru", {"loc_achievement_kill_renegades_1-5_name"}, {"ru"}, function(locale, value) return "Сборщик скабов (1-5)" end),

			--[+ Kill 25000 Scabs. +]-- руоф Убить Скабов: 12500.
	--[+ Russian +]--
			create_template("ach_her_4_ext_desc_ru",{"loc_achievement_kill_renegades_x_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." скабов." end),

		--[+  +]-- руоф Сейчас рванет!
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru",{"loc_achievement_team_poxburster_damage_avoided_name"}, {"ru"}, function(locale, value) return "Сейчас рванёт!" end),

			--[+  +]-- руоф Убейте чумных взрывунов (50), чтобы ни вы, ни члены команды не получили урона.
	-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_team_poxburster_damage_avoided_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+ Elitist +]-- руоф Сторонник элиты
	create_template("ach_her_2_ext_ru", {"loc_achievement_all_renegade_elites_killed_name"}, {"ru"}, function(locale, value) return "Элитарист" end),

			--[+ Kill 10 of each Scab elite enemy. +]-- руоф Убейте элитных Скабов (по 10 каждого вида).
	--[+ Russian +]--
			create_template("ach_her_2_ext_desc_ru", {"loc_achievement_all_renegade_elites_killed_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из элитных скабов." end),

		--[+  +]-- руоф Танец смерти
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_team_poxburster_damage_avoided_name"}, {"ru"}, function(locale, value) return "Танец смерти" end),

			--[+  +]-- руоф Увернитесь от ударов палача (50). [По 1 за каждого палача]
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_team_poxburster_damage_avoided_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+ Lex Triumphant +]-- руоф Торжество Закона
	--[+ Russian +]--
		create_template("ach_her_8_ext_ru", {"loc_achievement_all_cultist_specials_killed_name"}, {"ru"}, function(locale, value) return "Закон Торжествующий" end),

			--[+ Kill 10 of each Dreg Specialist. +]-- руоф Убейте отбросов-специалистов (по 10 каждого вида).
	--[+ Russian +]--
			create_template("ach_her_8_ext_desc_ru", {"loc_achievement_all_cultist_specials_killed_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов дрегов." end),

		--[+ Hard Labour +]-- руоф Тяжелый труд
	--[+ Russian +]--
		create_template("ach_her_6_ext_ru", {"loc_achievement_executor_non_headshot_name"}, {"ru"}, function(locale, value) return "Тяжёлый труд" end),

			--[+ Kill 10 Scab Maulers without using Headshots. +]-- руоф Убейте Скаба-Палача (10), не используя выстрел в голову.
	--[+ Russian +]--
			create_template("ach_her_6_ext_desc_ru", {"loc_achievement_executor_non_headshot_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." Разрубателей без попаданий по голове." end),

		--[+  +]-- руоф Хорошие рефлексы
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_sniper_dodged_name"}, {"ru"}, function(locale, value) return "Хорошие рефлексы" end),

			--[+  +]-- руоф Увернитесь от выстрелов снайпера (50). [По 1 за каждого снайпера]
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_sniper_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

		--[+ Purgator (1-5) +]-- руоф Чистильщик (1-5)
	--[+ Russian +]--
		-- create_template("ach_her_17_ext_ru", {"loc_achievement_kill_chaos_1-5_name"}, {"ru"}, function(locale, value) return "Очиститель (1-5)" end),

			--[+ Kill 25000 Poxwalkers and other Terrors of the warp. +]-- руоф Убить чумных ходоков и других врагов из числа Ужасов варпа: 15000.
	--[+ Russian +]--
			create_template("ach_her_17_ext_desc_ru", {"loc_achievement_kill_chaos_x_description"}, {"ru"}, function(locale, value) return "Убейте "..COLORS_Numbers.target_rgb.." Чумных ходоков и других Ужасов варпа." end),

		--[+ Dreg Cleanser +]-- руоф Чистильщик отбросов
	--[+ Russian +]--
		create_template("ach_her_10_ext_ru", {"loc_achievement_all_cultists_killed_name"}, {"ru"}, function(locale, value) return "Чистильщик дрегов" end),

			--[+ Kill every type of Dreg. +]-- руоф Убейте все виды отбросов.
	--[+ Russian +]--
			create_template("ach_her_10_ext_desc_ru", {"loc_achievement_all_cultists_killed_description"}, {"ru"}, function(locale, value) return "Убейте врагов каждого типа из дрегов." end),

		--[+  +]-- руоф Это всё, на что ты способен?
	--[+ Russian +]--
		-- create_template("ach_her_1_ext_ru", {"loc_achievement_ogryn_gunner_shot_dodged_name"}, {"ru"}, function(locale, value) return "Это всё, на что ты способен?" end),

			--[+  +]-- руоф Увернитесь от атак огрина-жнеца (500) во время бега.
	--[+ Russian +]--
			-- create_template("ach_her_1_ext_desc_ru", {"loc_achievement_ogryn_gunner_shot_dodged_description"}, {"ru"}, function(locale, value) return "Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов." end),

	--[+ +MISSIONS - МИССИИ+ +]--
		--[+ Missions +]-- руоф Задания
	--[+ Russian +]--
		create_template("ach_mis_0_ext_ru", {"loc_achievement_category_missions_label"}, {"ru"}, function(locale, value) return "Миссии" end),

		--[+ General Missions +]-- руоф Обычные задания
	--[+ Russian +]--
		create_template("ach_mis_00_ext_ru", {"loc_achievement_subcategory_missions_general_label"}, {"ru"}, function(locale, value) return "Основные миссии" end),

		--[+  +]-- руоф Архивариус
	--[+ Russian +]--
		-- create_template("ach_mis_1_ext_ru", {"loc_achievement_type_1_mission_5_name"}, {"ru"}, function(locale, value) return "Архивариус" end),

			--[+ Complete 250 Raid missions. +]-- руоф Восстановите писания из заданий: 100.
	--[+ Russian +]--
			create_template("ach_mis_1_ext_desc_ru", {"loc_achievement_type_1_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий налётов." end),

		--[+ Atoman Auxilia (1-4) +]-- руоф Ауксилии Атомы (1-4)
	--[+ Russian +]--
		-- create_template("ach_mis_8_ext_ru", {"loc_achievement_missions_1-4_name"}, {"ru"}, function(locale, value) return "Ауксилии Атомы (1-4)" end),
 
			--[+ Complete 1000 Missions. +]-- руоф Выполнить задания: 500.
	--[+ Russian +]--
			create_template("ach_mis_8_ext_desc_ru", {"loc_achievement_missions_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий." end),

		--[+ Auspex Drill (1-5) +]-- руоф Ауспекс-тренировка (1-5)
	--[+ Russian +]--
		-- create_template("ach_mis_9_ext_ru", {"loc_achievement_scan_1-5_name"}, {"ru",}, handle_func = function(locale, value) return "Ауспекс взлом (1-5)" end),

			--[+ Scan 200 Auspex targets. +]-- руоф Просканировать целей ауспекса: 200.
	--[+ Russian +]--
			create_template("ach_mis_9_ext_desc_ru", {"loc_achievement_scan_x_description"}, {"ru"}, function(locale, value) return "Просканируйте "..COLORS_Numbers.target_rgb.." целей ауспекса." end),

		--[+ Flawless interrogator +]-- руоф Безупречный опросчик
	--[+ Russian +]--
		-- create_template("ach_mis_11_ext_ru", {"loc_achievement_hack_perfect_name"}, {"ru",}, handle_func = function(locale, value) return "Безупречный опросчик" end),

			--[+ Complete a Data Interrogation without an incorrect auspex entry. +]-- руоф Завершите опрос данных без выбора неправильной записи ауспекса.
	--[+ Russian +]--
			create_template("ach_mis_11_ext_desc_ru", {"loc_achievement_hack_perfect_description"}, {"ru"}, function(locale, value) return "Завершите опрос данных без выбора неправильной записи в ауспексе." end),

	--[+ +Становление легенды+ +]--
		--[+ The Legend Grows? +]-- руоф Становление легенды:\nНовобранец Инквизиции
	--[+ Russian +]--
		-- create_template("ach_mis_13_ext_ru", {"loc_achievement_mission_difficulty_objectives_1_name"}, {"ru"}, function(locale, value) return "Становление легенды:\nНовобранец Инквизиции" end),

			--[+ Complete each mission type on Sedition Threat or higher. +]-- руоф Выполнить по меньшей мере одно задание каждого типа при угрозе «Мятеж» или выше.
	--[+ Russian +]--
			create_template("ach_mis_13_1_ext_desc_ru", {"loc_achievement_mission_difficulty_objectives_1_description"}, {"ru"}, function(locale, value) return "Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.sedition_rgb_ru.." или выше." end),

		--[+ The Legend Grows? +]-- руоф Становление легенды:\nВетеран Инквизиции
	--[+ Russian +]--
		-- create_template("ach_mis_13_ext_ru", {"loc_achievement_mission_difficulty_objectives_2_name"}, {"ru"}, function(locale, value) return "Становление легенды:\nВетеран Инквизиции" end),

			--[+ Complete each mission type on Uprising Threat or higher. +]-- руоф Выполнить по меньшей мере одно задание каждого типа при угрозе «Восстание» или выше.
	--[+ Russian +]--
			create_template("ach_mis_13_1_ext_desc_ru", {"loc_achievement_mission_difficulty_objectives_2_description"}, {"ru"}, function(locale, value) return "Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.uprising_rgb_ru.." или выше." end),

		--[+ The Legend Grows? +]-- руоф Становление легенды:\nЭталон Инквизиции
	--[+ Russian +]--
		-- create_template("ach_mis_13_ext_ru",  {"loc_achievement_mission_difficulty_objectives_3_name"}, {"ru"}, function(locale, value) return "Становление легенды:\nЭталон Инквизиции" end),

			--[+ Complete each mission type on Malice Threat or higher. +]-- руоф Выполнить по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
	--[+ Russian +]--
			create_template("ach_mis_13_1_ext_desc_ru", {"loc_achievement_mission_difficulty_objectives_3_description"}, {"ru"}, function(locale, value) return "Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше." end),

		--[+ The Legend Grows? +]-- руоф Становление легенды:\nЛегенда Инквизиции
	--[+ Russian +]--
		-- create_template("ach_mis_13_ext_ru", {"loc_achievement_mission_difficulty_objectives_4_name"}, {"ru"}, function(locale, value) return "Становление легенды:\nЛегенда Инквизиции" end),

			--[+ Complete each mission type on Heresy Threat or higher. +]-- руоф Выполнить по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.
	--[+ Russian +]--
			create_template("ach_mis_13_1_ext_desc_ru", {"loc_achievement_mission_difficulty_objectives_4_description"}, {"ru"}, function(locale, value) return "Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше." end),

		--[+ The Legend Grows? +]-- руоф Становление легенды
	--[+ Russian +]--
		-- create_template("ach_mis_13_ext_ru", {"loc_achievement_mission_difficulty_objectives_5_name"}, {"ru"}, function(locale, value) return "Становление легенды" end),

			--[+ Complete each mission type on Damnation Threat or higher. +]-- руоф Выполнить по меньшей мере одно задание каждого типа при угрозе «Проклятие» или выше.
	--[+ Russian +]--
			create_template("ach_mis_13_1_ext_desc_ru", {"loc_achievement_mission_difficulty_objectives_5_description"}, {"ru"}, function(locale, value) return "Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше." end),

	--[+ +Налёты+ +]--
		--[+ Raiding Party (1) +]-- руоф Вечеринка налетчиков (1)
	--[+ Russian +]--
		create_template("ach_mis_1_ext_ru", {"loc_achievement_type_1_mission_1_name"}, {"ru"}, function(locale, value) return "Группа налётчиков (1)" end),

		--[+ Raiding Party (2) +]-- руоф Вечеринка налетчиков (2)
	--[+ Russian +]--
		create_template("ach_mis_1_ext_ru", {"loc_achievement_type_1_mission_2_name"}, {"ru"}, function(locale, value) return "Группа налётчиков (2)" end),

		--[+ Raiding Party (3) +]-- руоф Вечеринка налетчиков (3)
	--[+ Russian +]--
		create_template("ach_mis_1_ext_ru", {"loc_achievement_type_1_mission_3_name"}, {"ru"}, function(locale, value) return "Группа налётчиков (3)" end),

		--[+ Raiding Party (4) +]-- руоф Вечеринка налетчиков (4)
	--[+ Russian +]--
		create_template("ach_mis_1_ext_ru", {"loc_achievement_type_1_mission_4_name"}, {"ru"}, function(locale, value) return "Группа налётчиков (4)" end),

		--[+ Raiding Party (5) +]-- руоф Вечеринка налетчиков (5)
	--[+ Russian +]--
		create_template("ach_mis_1_ext_ru", {"loc_achievement_type_1_mission_5_name"}, {"ru"}, function(locale, value) return "Группа налётчиков (5)" end),

			--[+ Complete 250 Raid missions. +]-- руоф Выполните задания типа «Налет»: 100.
	--[+ Russian +]--
			create_template("ach_mis_1_ext_desc_ru", {"loc_achievement_type_1_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." налётов." end),

	--[+ +Расследования+ +]--
		--[+ No Stone Unturned (1) +]-- руоф Всё вверх дном (1)
	--[+ Russian +]--
		create_template("ach_mis_3_ext_ru", {"loc_achievement_type_3_mission_1_name"}, {"ru"}, function(locale, value) return "Заглянуть под каждый камень (1)" end),

		--[+ No Stone Unturned (2) +]-- руоф Всё вверх дном (2)
	--[+ Russian +]--
		create_template("ach_mis_3_ext_ru", {"loc_achievement_type_3_mission_2_name"}, {"ru"}, function(locale, value) return "Заглянуть под каждый камень (2)" end),

		--[+ No Stone Unturned (3) +]-- руоф Всё вверх дном (3)
	--[+ Russian +]--
		create_template("ach_mis_3_ext_ru", {"loc_achievement_type_3_mission_3_name"}, {"ru"}, function(locale, value) return "Заглянуть под каждый камень (3)" end),

		--[+ No Stone Unturned (4) +]-- руоф Всё вверх дном (4)
	--[+ Russian +]--
		create_template("ach_mis_3_ext_ru", {"loc_achievement_type_3_mission_4_name"}, {"ru"}, function(locale, value) return "Заглянуть под каждый камень (4)" end),

		--[+ No Stone Unturned (5) +]-- руоф Всё вверх дном (5)
	--[+ Russian +]--
		create_template("ach_mis_3_ext_ru", {"loc_achievement_type_3_mission_5_name"}, {"ru"}, function(locale, value) return "Заглянуть под каждый камень (5)" end),

			--[+ Complete 100 Investigation missions. +]-- руоф Завершите задания типа «Расследования»: 100.
	--[+ Russian +]--
			create_template("ach_mis_3_ext_desc_ru", {"loc_achievement_type_3_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." расследований." end),

	--[+ +Диверсии+ +]--
		--[+ Disruptive Behavior (1) +]-- руоф Диверсант - звучит гордо (1)
	--[+ Russian +]--
		create_template("ach_mis_4_ext_ru", {"loc_achievement_type_4_mission_1_name"}, {"ru"}, function(locale, value) return "Деструктивное поведение (1)" end),

		--[+ Disruptive Behavior (2) +]-- руоф Диверсант - звучит гордо (2)
	--[+ Russian +]--
		create_template("ach_mis_4_ext_ru", {"loc_achievement_type_4_mission_2_name"}, {"ru"}, function(locale, value) return "Деструктивное поведение (2)" end),

		--[+ Disruptive Behavior (3) +]-- руоф Диверсант - звучит гордо (3)
	--[+ Russian +]--
		create_template("ach_mis_4_ext_ru", {"loc_achievement_type_4_mission_3_name"}, {"ru"}, function(locale, value) return "Деструктивное поведение (3)" end),

		--[+ Disruptive Behavior (4) +]-- руоф Диверсант - звучит гордо (4)
	--[+ Russian +]--
		create_template("ach_mis_4_ext_ru", {"loc_achievement_type_4_mission_4_name"}, {"ru"}, function(locale, value) return "Деструктивное поведение (4)" end),

		--[+ Disruptive Behavior (5) +]-- руоф Диверсант - звучит гордо (5)
	--[+ Russian +]--
		create_template("ach_mis_4_ext_ru", {"loc_achievement_type_4_mission_5_name"}, {"ru"}, function(locale, value) return "Деструктивное поведение (5)" end),

			--[+ Complete 150 Disruption missions. +]-- руоф Завершить задания типа «Диверсия»: 100.
	--[+ Russian +]--
			create_template("ach_mis_4_ext_desc_ru", {"loc_achievement_type_4_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." диверсий." end),

	--[+ +Ликвидации+ +]--
		--[+ Seek, Locate, Destroy (1) +]-- руоф Ищите, находите, уничтожайте (1)
	--[+ Russian +]--
		create_template("ach_mis_2_ext_ru", {"loc_achievement_type_2_mission_1_name"}, {"ru"}, function(locale, value) return "Искать, найти, ликвидировать (1)" end),

		--[+ Seek, Locate, Destroy (2) +]-- руоф Ищите, находите, уничтожайте (2)
	--[+ Russian +]--
		create_template("ach_mis_2_ext_ru", {"loc_achievement_type_2_mission_2_name"}, {"ru"}, function(locale, value) return "Искать, найти, ликвидировать (2)" end),

		--[+ Seek, Locate, Destroy (3) +]-- руоф Ищите, находите, уничтожайте (3)
	--[+ Russian +]--
		create_template("ach_mis_2_ext_ru", {"loc_achievement_type_2_mission_3_name"}, {"ru"}, function(locale, value) return "Искать, найти, ликвидировать (3)" end),

		--[+ Seek, Locate, Destroy (4) +]-- руоф Ищите, находите, уничтожайте (4)
	--[+ Russian +]--
		create_template("ach_mis_2_ext_ru", {"loc_achievement_type_2_mission_4_name"}, {"ru"}, function(locale, value) return "Искать, найти, ликвидировать (4)" end),

		--[+ Seek, Locate, Destroy (5) +]-- руоф Ищите, находите, уничтожайте (5)
	--[+ Russian +]--
		create_template("ach_mis_2_ext_ru", {"loc_achievement_type_2_mission_5_name"}, {"ru"}, function(locale, value) return "Искать, найти, ликвидировать (5)" end),

			--[+ Complete 200 Assassination missions. +]-- руоф Выполнить заданий на убийство: 100.
	--[+ Russian +]--
			create_template("ach_mis_2_ext_desc_ru", {"loc_achievement_type_2_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." ликвидаций." end),

	--[+ +Шпионаж+ +]--
		--[+ Master of Intrique (1-5) +]-- руоф Мастер интриги (1-5)
	--[+ Russian +]--
		-- create_template("ach_mis_6_ext_ru", {"loc_achievement_type_6_mission_1-5_name"}, {"ru"}, function(locale, value) return "Мастер интриг (1-5)" end),

			--[+ Complete 150 Espionage missions. +]-- руоф Завершите задания типа «Шпионаж»: 100.
	--[+ Russian +]--
			create_template("ach_mis_6_ext_desc_ru", {"loc_achievement_type_6_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." шпионских миссий." end),

		--[+ Mission Improbable +]-- руоф Задание невыполнимо
	--[+ Russian +]--
		create_template("ach_mis_14_ext_ru", {"loc_achievement_group_missions_name"}, {"ru"}, function(locale, value) return "Миссия невыполнима" end),

			--[+ Complete the following Mission Penances. +]-- руоф Выполните следующие искупления с заданиями.
	--[+ Russian +]--
			create_template("ach_mis_14_ext_desc_ru", {"loc_achievement_group_missions_description"}, {"ru"}, function(locale, value) return "Завершите следующие Искупления, связанные с миссиями." end),

		--[+  +]-- руоф Задержи дыхание (1-3)
	--[+ Russian +]--
		-- create_template("ach_mis_1_ext_ru", {"loc_achievement_mission_tox_gas_x_name"}, {"ru"}, function(locale, value) return "Задержи дыхание (1-3)" end),

			--[+  +]-- руоф Завершите задание с обстоятельством «чумной газ» 50 р.
	--[+ Russian +]--
			-- create_template("ach_mis_1_ext_desc_ru", {"loc_achievement_mission_tox_gas_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий налётов." end),

		--[+  +]-- руоф Запретные тексты (1-5)
	--[+ Russian +]--
		-- create_template("ach_mis_1_ext_ru", {"loc_achievement_mission_grimoire_recovery_name"}, {"ru"}, function(locale, value) return "Запретные тексты (1-5)" end),

			--[+  +]-- руоф Соберите и извлеките гримуары (75).
	--[+ Russian +]--
			-- create_template("ach_mis_1_ext_desc_ru", {"loc_achievement_mission_grimoire_recovery_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий налётов." end),

		--[+  +]-- руоф Искатель
	--[+ Russian +]--
		-- create_template("ach_mis_1_ext_ru", {"loc_achievement_amount_of_chests_opened_name"}, {"ru"}, function(locale, value) return "Искатель" end),

			--[+  +]-- руоф Откройте сундуки: 2500. Сундуки, открытые членами команды, тоже учитываются.
	--[+ Russian +]--
			-- create_template("ach_mis_1_ext_desc_ru", {"loc_achievement_amount_of_chests_opened_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий налётов." end),

		--[+ The Machine Whisperer +]-- руоф Заклинатель машин
	--[+ Russian +]--
		-- create_template("ach_mis_10_ext_ru", {"loc_achievement_hack_5_name"}, {"ru"}, function(locale, value) return "Опросчик (1-5)" end),

			--[+ Complete 200 successful data-interrogations. +]-- руоф Выполнить успешных опросов: 200.
	--[+ Russian +]--
			create_template("ach_mis_10_ext_desc_ru", {"loc_achievement_hack_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." успешных опросов данных." end),

		--[+ Strike Force (4) +]-- руоф Ударная группа (4)
	--[+ Russian +]--
		-- create_template("ach_mis_5_ext_ru", {"loc_achievement_type_5_mission_4_name"}, {"ru"}, function(locale, value) return "Ударная группа (4)" end),

			--[+ Complete 200 Strike missions. +]-- руоф Завершите задания типа «Удар»: 200.
	--[+ Russian +]--
			create_template("ach_mis_5_ext_desc_ru", {"loc_achievement_type_5_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." ударных миссий." end),

		--[+ Omnissiah's Hand (2) +]-- руоф Рука Омниссии (2)
	--[+ Russian +]--
		-- create_template("ach_mis_7_ext_ru", {"loc_achievement_type_7_mission_2_name"}, {"ru"}, function(locale, value) return "Рука Омниссии (2)" end),

			--[+ Complete 100 Repair missions. +]-- руоф Завершите задания типа «Ремонт»: 100.
	--[+ Russian +]--
			create_template("ach_mis_7_ext_desc_ru", {"loc_achievement_type_7_mission_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." ремонтных миссий." end),

		--[+ Adapt to the Environment (5) +]-- руоф Приспособление к среде (5)
	--[+ Russian +]--
		-- create_template("ach_mis_12_ext_ru", {"loc_achievement_mission_circumstace_5_name"}, {"ru"}, function(locale, value) return "Адаптируйтесь к окружающей среде (5)" end),

			--[+ Complete 500 Special Condition Missions. +]-- руоф Завершите задания с особыми обстоятельствами: 500.
	--[+ Russian +]--
			create_template("ach_mis_12_ext_desc_ru", {"loc_achievement_mission_circumstace_x_description"}, {"ru"}, function(locale, value) return "Завершите "..COLORS_Numbers.target_rgb.." миссий со специальными условиями." end),

		--[+ The Orthus Offensive +]-- руоф Ортусское наступление
	--[+ Russian +]--
		-- create_template("ach_mis_000_ext_ru", {"loc_achievement_subcategory_twins_mission_label"}, {"ru"}, function(locale, value) return "Ортусское наступление" end),

		--[+ Two Birds with One Stone +]-- руоф Двух зайцев одним выстрелом
	--[+ Russian +]--
		-- create_template("ach_mis_15_ext_ru", {"loc_achievement_mission_twins_win_name"}, {"ru"}, function(locale, value) return "Двух птичек одним камнем" end),

			--[+ Defeat the Karnak Twins during The Orthus Offensive on any Threat. +]-- руоф Победить близнецов Карнак во время «Ортусского наступления» на любом уровне угрозы.
	--[+ Russian +]--
			create_template("ach_mis_15_ext_desc_ru", {"loc_achievement_mission_twins_win_description"}, {"ru"}, function(locale, value) return "Победить близнецов Карнак во время Ортусского наступления на любой сложности." end),

		--[+ Two Birds with One Stone (Extremis) +]-- руоф Двух зайцев одним выстрелом (экстремис)
	--[+ Russian +]--
		-- create_template("ach_mis_16_ext_ru", {"loc_achievement_difficult_mission_twins_win_name"}, {"ru"}, function(locale, value) return "Двух птичек одним камнем (Экстремис)" end),

			--[+ Defeat the Karnak Twins during The Orthus Offensive on Damnation Threat Level. +]-- руоф Победить близнецов Карнак во время «Ортусского наступления» при угрозе «Проклятие».
	--[+ Russian +]--
			create_template("ach_mis_16_ext_desc_ru", {"loc_achievement_difficult_mission_twins_win_description"}, {"ru"}, function(locale, value) return "Победить близнецов Карнак во время Ортусского наступления на сложности "..COLORS_KWords_ru.damnation_rgb_ru.."." end),

	--[+ +REDACTED - ДАННЫЕ ИЗЪЯТЫ+ +]--
		--[+ Redacted +]-- руоф Данные изъяты
	-- create_template("ach_red_0_ext_ru", {"loc_achievement_category_class_challenges_label"}, {"ru"}, function(locale, value) return "Данные изъяты" end),

}

--[+ Return the localization templates +]--
return localization_templates
