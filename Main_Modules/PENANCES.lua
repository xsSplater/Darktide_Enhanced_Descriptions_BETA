---@diagnostic disable: undefined-global
-- Version 4.0

local mod = get_mod("Enhanced_descriptions")

local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

--[+ Loading colors of Keywords and Numbers +]--
local COLORS_Numbers = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_Numbers")
local COLORS_KWords = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords")

	--[+ French +]--
local COLORS_KWords_fr = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords_fr")
	--[+ Russian +]--
local COLORS_KWords_ru = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords_ru")
	--[+ Traditional Chinese +]--
local COLORS_KWords_tw = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords_tw")
	--[+ Simplified Chinese +]--
local COLORS_KWords_zh_cn = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords_zh_cn")


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

local Dot_red = "{#color(255, 35, 5)}•{#reset()}"
local Dot_nc = "•"
local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

--[+ +FREQUENTLY REPEATED PHRASES+ +]--
local PHRS = {
	--[+ +Russian - ЧАСТО ПОВТОРЯЕМЫЕ ФРАЗЫ+ +]--
	cmpl_1_mssn_sedition_ru = "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.sedition_rgb_ru.." или выше.",
	cmpl_1_mssn_uprising_ru = "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.uprising_rgb_ru.." или выше.",
	cmpl_1_mssn_malice_ru = "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше.",
	cmpl_1_mssn_heresy_ru = "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше.",
	cmpl_1_mssn_damnation_ru = "Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше.",
	--[+ Traditional Chinese +]--
	cmpl_1_mssn_sedition_tw = "完成『"..COLORS_KWords_tw.sedition_rgb_tw.."』或更高難度的任務 "..COLORS_Numbers.target_rgb.." 次。",
	cmpl_1_mssn_uprising_tw = "完成『"..COLORS_KWords_tw.uprising_rgb_tw.."』或更高難度的任務 "..COLORS_Numbers.target_rgb.." 次。",
	cmpl_1_mssn_malice_tw = "完成『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度的任務 "..COLORS_Numbers.target_rgb.." 次。",
	cmpl_1_mssn_heresy_tw = "完成『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度的任務 "..COLORS_Numbers.target_rgb.." 次。",
	cmpl_1_mssn_damnation_tw = "完成『"..COLORS_KWords_tw.damnation_rgb_tw.."』或更高難度的任務 "..COLORS_Numbers.target_rgb.." 次。",
}


local penances_localizations = {
-- TEMPLATE
	-- ["loc_code"] = {
		-- en = "",
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },


--[+ ++PENANCES - ИСКУПЛЕНИЯ++ +]--
	--[+ Lowerbody +]--
	-- ["loc_item_type_gear_lowerbody"] = {
		-- en = "Lower body",
		-- ru = "Ноги", -- руоф Нижняя часть тела
		-- fr = "",
		-- ["zh-tw"] = "下半身",
		-- ["zh-cn"] = "被动",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	--[+ Private Game +]--
	-- ["loc_private_tag_name1"] = {
		-- en = "",
		-- ru = "Закрытая игра", -- Закрытая игра
		-- fr = "",
		-- ["zh-tw"] = "私人遊戲",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	--[+ Penance can only be completed in a private game +]--
	-- ["loc_private_tag_description"] = {
		-- en = "",
		-- ru = "Искупление может быть выполнено только в закрытой игре. Закрытую игру можно создать только в компании с минимум ещё одним игроком.", -- Искупление может быть выполнено только в закрытой игре
		-- fr = "",
		-- ["zh-tw"] = "\n該苦修限定在私人遊戲完成！\n注意：私人遊戲需要另一名玩家共同組隊。",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
--[+ ++MISSIONS TYPES - ТИПЫ МИССИЙ++ +]--
	-- ["loc_mission_type_01_name"] = {
		-- en = "",
		-- ru = "Налёт",
		-- fr = "",
		-- ["zh-tw"] = "突襲",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	-- ["loc_mission_type_02_name"] = {
		-- en = "",
		-- ru = "Убийство",
		-- fr = "",
		-- ["zh-tw"] = "刺殺",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	-- ["loc_mission_type_03_name"] = {
		-- en = "",
		-- ru = "Расследование",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	-- ["loc_mission_type_04_name"] = {
		-- en = "",
		-- ru = "Диверсия",
		-- fr = "",
		-- ["zh-tw"] = "擾亂",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	-- ["loc_mission_type_05_name"] = {
		-- en = "",
		-- ru = "Атака",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	-- ["loc_mission_type_06_name"] = {
		-- en = "",
		-- ru = "Шпионаж",
		-- fr = "",
		-- ["zh-tw"] = "諜報",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	-- ["loc_mission_type_07_name"] = {
		-- en = "",
		-- ru = "Ремонт",
		-- fr = "",
		-- ["zh-tw"] = "修復",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },

	-- ["loc_code"] = {
		-- en = "",
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },

	-- ["loc_code"] = {
		-- en = "",
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },

	-- ["loc_code"] = {
		-- en = "",
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },

	-- ["loc_code"] = {
		-- en = "",
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },

	-- ["loc_code"] = {
		-- en = "",
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },

	-- ["loc_code"] = {
		-- en = "",
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },

	-- ["loc_code"] = {
		-- en = "",
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },

	-- ["loc_code"] = {
		-- en = "",
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },

	-- ["loc_code"] = {
		-- en = "",
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },



-- --[+ ++ACCOUNT - УЧЁТНАЯ ЗАПИСЬ++ +]--
	-- --[+ Account - Учётная запись +]-- -- руоф Учетная запись
	-- --[+ Russian +]--
	-- create_template("ach_acc_0_ext_ru",
		-- {"loc_achievement_category_account_label"}, {"ru"},
			-- loc_text("Учётная запись")),
	-- --[+ Traditional Chinese 帳戶 +]--
	-- create_template("ach_acc_0_ext_tw",
		-- {"loc_achievement_category_account_label"}, {"zh-tw"},
			-- loc_text("帳戶")),

	-- --[+ Two's Company - Двое – компания... +]-- -- руоф А двое лучше
	-- --[+ Russian +]--
	-- create_template("ach_acc_1_1_ext_ru",
		-- {"loc_achievement_multi_class_1_name"}, {"ru"},
			-- loc_text("Двое – компания...")),
	-- --[+ Traditional Chinese - 雙人搭檔 +]--
	-- create_template("ach_acc_1_1_ext_tw",
		-- {"loc_achievement_multi_class_1_name"}, {"zh-tw"},
			-- loc_text("雙人搭檔")),

	-- --[+ Like a four-leaf clover - Как четырёхлистный клевер +]-- -- Фантастическая четверка
	-- --[+ Russian +]--
	-- create_template("ach_acc_1_ext_ru",
		-- {"loc_achievement_multi_class_2_name"}, {"ru"},
			-- loc_text("Как четырёхлистный клевер")),
	-- --[+ Traditional Chinese - 四葉草式幸運 +]--
	-- create_template("ach_acc_1_ext_tw",
		-- {"loc_achievement_multi_class_2_name"}, {"zh-tw"},
			-- loc_text("四葉草式幸運")),

	-- --[+ Reach Trust Level 30 with 1-4 classes. +]-- -- Получить уровень доверия 30 следующими классами: 1-4.
	-- create_template("ach_acc_1_ext_desc_en",
		-- {"loc_achievement_multi_class_x_description"}, {"en"},
			-- loc_text("Reach Trust Level "..COLORS_Numbers.n_30_rgb.." with "..COLORS_Numbers.target_rgb.." classes.")),
	-- --[+ Russian +]--
	-- create_template("ach_acc_1_ext_desc_ru",
		-- {"loc_achievement_multi_class_x_description"}, {"ru"},
			-- loc_text("Достигните "..COLORS_Numbers.n_30_rgb.." уровня доверия "..COLORS_Numbers.target_rgb.." классами.")),
	-- --[+ Traditional Chinese +]--
	-- -- 將x個職業的信任等級提升至xx級。
	-- create_template("ach_acc_1_ext_desc_tw",
		-- {"loc_achievement_multi_class_x_description"}, {"zh-tw"},
			-- loc_text("將 "..COLORS_Numbers.target_rgb.." 個職業，都達到信任等級 "..COLORS_Numbers.n_30_rgb.." 。")),

	-- --[+ Circles of Trust - Круги доверия (1-6) +]-- -- руоф Круг доверия (1-6)
	-- --[+ Russian +]--
	-- create_template("ach_acc_7_1_ext_ru",
		-- {"loc_achievement_path_of_trust_1_name"}, {"ru"},
			-- loc_text("Круги доверия (1)")),
	-- --[+ Traditional Chinese 互信團體 (1) +]--
	-- create_template("ach_acc_7_1_ext_tw",
		-- {"loc_achievement_path_of_trust_1_name"}, {"zh-tw"},
			-- loc_text("互信團體 (1)")),

	-- --[+ Russian +]--
	-- create_template("ach_acc_7_2_ext_ru",
		-- {"loc_achievement_path_of_trust_2_name"}, {"ru"},
			-- loc_text("Круги доверия (2)")),
	-- --[+ Traditional Chinese 互信團體 (2) +]--
	-- create_template("ach_acc_7_2_ext_tw",
		-- {"loc_achievement_path_of_trust_2_name"}, {"zh-tw"},
			-- loc_text("互信團體 (2)")),

	-- --[+ Russian +]--
	-- create_template("ach_acc_7_3_ext_ru",
		-- {"loc_achievement_path_of_trust_3_name"}, {"ru"},
			-- loc_text("Круги доверия (3)")),
	-- --[+ Traditional Chinese 互信團體 (3) +]--
	-- create_template("ach_acc_7_3_ext_tw",
		-- {"loc_achievement_path_of_trust_3_name"}, {"zh-tw"},
			-- loc_text("互信團體 (3)")),

	-- --[+ Russian +]--
	-- create_template("ach_acc_7_4_ext_ru",
		-- {"loc_achievement_path_of_trust_4_name"}, {"ru"},
			-- loc_text("Круги доверия (4)")),
	-- --[+ Traditional Chinese 互信團體 (4) +]--
	-- create_template("ach_acc_7_4_ext_tw",
		-- {"loc_achievement_path_of_trust_4_name"}, {"zh-tw"},
			-- loc_text("互信團體 (4)")),

	-- --[+ Russian +]--
	-- create_template("ach_acc_7_5_ext_ru",
		-- {"loc_achievement_path_of_trust_5_name"}, {"ru"},
			-- loc_text("Круги доверия (5)")),
	-- --[+ Traditional Chinese 互信團體 (5) +]--
	-- create_template("ach_acc_7_5_ext_tw",
		-- {"loc_achievement_path_of_trust_5_name"}, {"zh-tw"},
			-- loc_text("互信團體 (5)")),

	-- --[+ Russian +]--
	-- create_template("ach_acc_7_6_ext_ru",
		-- {"loc_achievement_path_of_trust_6_name"}, {"ru"},
			-- loc_text("Круги доверия (6)")),
	-- --[+ Traditional Chinese 互信團體 (6) +]--
	-- create_template("ach_acc_7_6_ext_tw",
		-- {"loc_achievement_path_of_trust_6_name"}, {"zh-tw"},
			-- loc_text("互信團體 (6)")),

	-- --[+ Complete Path of Trust chapter 6. +]-- -- руоф Пройти главы Пути веры: {target}.
	-- create_template("ach_acc_7_ext_desc_en",
		-- {"loc_achievement_path_of_trust_x_description"}, {"en"},
			-- loc_text("Complete Path of Trust chapter "..COLORS_Numbers.target_rgb..".")),
	-- --[+ Russian +]--
	-- create_template("ach_acc_7_ext_desc_ru",
		-- {"loc_achievement_path_of_trust_x_description"}, {"ru"},
			-- loc_text("Завершить "..COLORS_Numbers.target_rgb.." главу «Пути доверия».")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成信任之路章節x。
	-- create_template("ach_acc_7_ext_desc_tw",
		-- {"loc_achievement_path_of_trust_x_description"}, {"zh-tw"},
			-- loc_text("完成第 "..COLORS_Numbers.target_rgb.." 章的互信團體。")),

	-- --[+ Don't Let Me Down, Criminal -  +]-- -- руоф Не подведите меня, преступники
	-- --[+ Russian +]--
	-- create_template("ach_acc_2_ext_ru",
		-- {"loc_achievement_prologue_name"}, {"ru"},
			-- loc_text("Не подведи меня, преступник")),
	-- --[+ Traditional Chinese 別讓我失望，罪犯 +]--
	-- create_template("ach_acc_2_ext_tw",
		-- {"loc_achievement_prologue_name"}, {"zh-tw"},
			-- loc_text("別讓我失望，罪犯")),

	-- --[+ Complete the Prologue. +]-- -- руоф Закончить пролог.
	-- create_template("ach_acc_2_ext_desc_en",
		-- {"loc_achievement_prologue_description"}, {"en"},
			-- loc_text("Complete the "..COLORS_KWords.Prologue_p_rgb..".")),
	-- --[+ Russian +]--
	-- -- create_template("ach_acc_2_ext_desc_ru",
		-- -- {"loc_achievement_prologue_description"}, {"ru"},
			-- -- loc_text("Пройти "..COLORS_KWords_ru.Prologue_p_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成序章
	-- create_template("ach_acc_2_ext_desc_tw",
		-- {"loc_achievement_prologue_description"}, {"zh-tw"},
			-- loc_text("完成 "..COLORS_KWords_tw.Prologue_p_rgb_tw.."。")),

	-- --[+ Unconsidered Trifles +]-- -- руоф Непродуманные мелочи
	-- --[+ Russian +]--
	-- create_template("ach_acc_4_ext_ru",
		-- {"loc_achievement_unlock_gadgets_name"}, {"ru"},
			-- loc_text("Неучтённые мелочи")),
	-- --[+ Traditional Chinese 小零碎 +]--
	-- create_template("ach_acc_4_ext_tw",
		-- {"loc_achievement_unlock_gadgets_name"}, {"zh-tw"},
			-- loc_text("小零碎")),

	-- --[+ Unlock your first Curio slot. -  +]-- -- руоф Открыть вашу первую ячейку для устройства.
	-- create_template("ach_acc_4_ext_desc_en",
		-- {"loc_achievement_unlock_gadgets_description"}, {"en"},
			-- loc_text("Unlock your first "..COLORS_KWords.Curio_p_rgb.." slot.")),
	-- --[+ Russian +]--
	-- create_template("ach_acc_4_ext_desc_ru",
		-- {"loc_achievement_unlock_gadgets_description"}, {"ru"},
			-- loc_text("Разблокируйте вашу первую ячейку "..COLORS_KWords_ru.Curio_p_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 解鎖你的首個珍品欄。
	-- create_template("ach_acc_4_ext_desc_tw",
		-- {"loc_achievement_unlock_gadgets_description"}, {"zh-tw"},
			-- loc_text("解鎖第一個 "..COLORS_KWords_tw.Curio_p_rgb_tw.." 。")),

	-- --[+ Call to Arms -  +]-- -- руоф К оружию!
	-- --[+ Russian +]--
	-- create_template("ach_acc_3_ext_ru",
		-- {"loc_achievement_basic_training_name"}, {"ru"},
			-- loc_text("Призыв к оружию")),
	-- --[+ Traditional Chinese - 戰爭召喚 +]--
	-- create_template("ach_acc_3_ext_tw",
		-- {"loc_achievement_basic_training_name"}, {"zh-tw"},
			-- loc_text("戰爭召喚")),

	-- --[+ Complete Basic Training. +]-- -- руоф Завершите базовое обучение.
	-- create_template("ach_acc_3_ext_desc_en",
		-- {"loc_achievement_basic_training_description"}, {"en"},
			-- loc_text("Complete "..COLORS_KWords.Base_tut_p_rgb..".")),
	-- --[+ Russian +]--
	-- create_template("ach_acc_3_ext_desc_ru",
		-- {"loc_achievement_basic_training_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_KWords_ru.Base_tut_p_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成基礎訓練
	-- create_template("ach_acc_3_ext_desc_tw",
		-- {"loc_achievement_basic_training_description"}, {"zh-tw"},
			-- loc_text("完成 "..COLORS_KWords_tw.Psykhanium_p_rgb_tw.." 的 "..COLORS_KWords_tw.Base_tut_p_rgb_tw.."。")),

	-- --[+ Well met, Whippersnapper -  +]-- -- руоф Какая приятная встреча, молокосос
	-- --[+ Russian +]--
	-- create_template("ach_acc_5_ext_ru",
		-- {"loc_achievement_unlock_contracts_name"}, {"ru"},
			-- loc_text("Рад встрече, молокосос")),
	-- --[+ Traditional Chinese - 幸會，狂妄的小子 +]--
	-- create_template("ach_acc_5_ext_tw",
		-- {"loc_achievement_unlock_contracts_name"}, {"zh-tw"},
			-- loc_text("幸會，狂妄的小子")),

	-- --[+ Unlock access to Sire Melk's Requisitorium. -  +]-- -- руоф Получить доступ к реквизиториуму сира Мелка.
	-- create_template("ach_acc_5_ext_desc_en",
		-- {"loc_achievement_unlock_contracts_description"}, {"en"},
			-- loc_text("Unlock access to "..COLORS_KWords.Sir_melk_p_rgb..".")),
	-- --[+ Russian +]--
	-- create_template("ach_acc_5_ext_desc_ru",
		-- {"loc_achievement_unlock_contracts_description"}, {"ru"},
			-- loc_text("Разблокируйте доступ в "..COLORS_KWords_ru.Sir_melk_p_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 解鎖通往梅爾克領主的必備品店的權限。
	-- create_template("ach_acc_5_ext_desc_tw",
		-- {"loc_achievement_unlock_contracts_description"}, {"zh-tw"},
			-- loc_text("解鎖 "..COLORS_KWords_tw.Sir_melk_p_rgb_tw.." 。")),

	-- --[+ Hail the Omnissiah! - Слава Омниссии! +]--
	-- --[+ Russian +]--
	-- -- create_template("ach_acc_6_ext_ru",
		-- -- {"loc_achievement_unlock_crafting_name"}, {"ru"},
			-- -- loc_text("Слава Омниссии!")),
	-- --[+ Traditional Chinese - 歐姆尼賽亞萬歲！ +]--
	-- create_template("ach_acc_6_ext_tw",
		-- {"loc_achievement_unlock_crafting_name"}, {"zh-tw"},
			-- loc_text("歐姆尼賽亞萬歲！")),

	-- --[+ Unlock access to the Shrine of the Omnissiah. -  +]-- руоф Откройте доступ к святилищу Омниссии.
	-- create_template("ach_acc_6_ext_desc_en",
		-- {"loc_achievement_unlock_crafting_description"}, {"en"},
			-- loc_text("Unlock access to the "..COLORS_KWords.Omnissia_p_rgb..".")),
	-- --[+ Russian +]--
	-- create_template("ach_acc_6_ext_desc_ru",
		-- {"loc_achievement_unlock_crafting_description"}, {"ru"},
			-- loc_text("Разблокируйте доступ в "..COLORS_KWords_ru.Omnissia_p_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 解鎖歐姆尼賽亞神龕。
	-- create_template("ach_acc_6_ext_desc_tw",
		-- {"loc_achievement_unlock_crafting_description"}, {"zh-tw"},
			-- loc_text("解鎖 "..COLORS_KWords_tw.Omnissia_p_rgb_tw.." 。")),

-- --[+ ++CLASSES - КЛАССЫ++ +]--
	-- --[+ +VETERAN - ВЕТЕРАН +]--
	-- create_template("ach_class_vet_0_ext_en",
		-- {"loc_class_veteran_title"}, {"en"},
			-- loc_text(COLORS_KWords.cls_vet_rgb)),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_0_ext_ru",
		-- {"loc_class_veteran_title"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_vet_rgb_ru)),
	-- --[+ Traditional Chinese 老兵 +]--
	-- create_template("ach_class_vet_0_ext_tw",
		-- {"loc_class_veteran_title"}, {"zh-tw"},
			-- loc_text(COLORS_KWords_tw.cls_vet_rgb_tw)),

-- --[+ ПРОГРЕСС +]--
	-- --[+ Stay Accurate - Будь точным +]-- -- руоф Держи прицел
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_7_ext_ru",
		-- {"loc_achievement_veteran_2_easy_1_name"}, {"ru"},
			-- loc_text("Будь точным")),
	-- --[+ Traditional Chinese 保持精準 +]--
	-- create_template("ach_class_vet_7_ext_tw",
		-- {"loc_achievement_veteran_2_easy_1_name"}, {"zh-tw"},
			-- loc_text("保持精準")),

	-- --[+ Kill 350 enemies with ranged weakspot hits. +]-- -- руоф Убейте врагов (350) попаданиями по слабым местам с дальнего расстояния.
	-- -- create_template("ach_class_vet_7_ext_desc_en",
		-- -- {"loc_achievement_veteran_2_easy_1_description"}, {"en"},
			-- -- loc_text("Kill "..COLORS_Numbers.target_rgb.." enemies with ranged "..COLORS_KWords.Weakspothits_rgb.."."..TALENTS_Enh_desc_penances.ED_Headshot_rgb)),
	-- --[+ Russian +]--
	-- -- create_template("ach_class_vet_7_ext_desc_ru",
		-- -- {"loc_achievement_veteran_2_easy_1_description"}, {"ru"},
			-- -- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов в "..COLORS_KWords_ru.Weakspot_rgb_ru.." из дальнобойного оружия."..TALENTS_Enh_desc_penances_ru.ED_Headshot_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 使用遠端弱點攻擊擊殺350個敵人
	-- -- create_template("ach_class_vet_7_ext_desc_tw",
		-- -- {"loc_achievement_veteran_2_easy_1_description"}, {"zh-tw"},
			-- -- loc_text("使用遠程武器 "..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." "..COLORS_Numbers.target_rgb.." 名敵人。"..TALENTS_Enh_desc_penances_tw.ED_Headshot_rgb_tw)),

	-- --[+ On Target (1) +]-- -- руоф Держи прицел
	-- --[+ Russian +]--
	-- -- create_template("ach_class_vet_14_ext_ru",
		-- -- {"loc_achievement_group_class_veteran_2_1_name"}, {"ru"},
			-- -- loc_text("В прицеле (1-3)")),
	-- --[+ Traditional Chinese 使命必達 (1) +]--
	-- create_template("ach_class_vet_14_ext_tw",
		-- {"loc_achievement_group_class_veteran_2_1_name"}, {"zh-tw"},
			-- loc_text("使命必達 (1)")),

	-- --[+ On Target (2) +]--
	-- --[+ Traditional Chinese 使命必達 (2) +]--
	-- create_template("ach_class_vet_15_ext_tw",
		-- {"loc_achievement_group_class_veteran_2_2_name"}, {"zh-tw"},
			-- loc_text("使命必達 (2)")),

	-- --[+ On Target (3) +]--
	-- --[+ Traditional Chinese 使命必達 (3) +]--
	-- create_template("ach_class_vet_16_ext_tw",
		-- {"loc_achievement_group_class_veteran_2_3_name"}, {"zh-tw"},
			-- loc_text("使命必達 (3)")),


	-- --[+ For The Emperor (1-3) +]-- -- руоф За императора (1-3)
	-- --[+ Russian +]--
	-- -- ВЕТЕРАН, ИЗУВЕР, ПСАЙКЕР, ОГРИН !!!
	-- -- create_template("ach_red_vet_8_ext_ru",
		-- -- {"loc_group_class_challenges_veteran_2_1-3_name", "loc_group_class_challenges_zealot_2_1-3_name", "loc_group_class_challenges_psyker_2_1-3_name", "loc_group_class_challenges_ogryn_2_1-3_name"}, {"ru"},
			-- -- loc_text("За императора (1-3)")),
	-- --[+ Traditional Chinese 為了皇帝(1-3) +]--
	-- -- create_template("ach_red_vet_8_ext_tw",
		-- -- {"loc_group_class_challenges_veteran_2_1-3_name", "loc_group_class_challenges_zealot_2_1-3_name", "loc_group_class_challenges_psyker_2_1-3_name", "loc_group_class_challenges_ogryn_2_1-3_name"}, {"zh-tw"},
			-- -- loc_text("為了皇帝 (1-3)")),

	-- --[+ Promotion Material (1) +]-- -- руоф Материалы пропаганды (1)
	-- --[+ Russian +]--
	-- -- ВЕТЕРАН, ИЗУВЕР, ПСАЙКЕР, ОГРИН !!!
	-- create_template("ach_class_vet_9_ext_ru",
		-- {"loc_group_veteran_2_rank_4_difficulty_3_name", "loc_group_zealot_2_rank_4_difficulty_3_name", "loc_group_psyker_2_rank_4_difficulty_3_name", "loc_group_ogryn_2_rank_4_difficulty_3_name"}, {"ru"},
			-- loc_text("Задания для продвижения (1)")),
	-- --[+ Traditional Chinese 樹立榜樣 (1) +]--
	-- create_template("ach_class_vet_9_ext_tw",
		-- {"loc_group_veteran_2_rank_4_difficulty_3_name", "loc_group_zealot_2_rank_4_difficulty_3_name", "loc_group_psyker_2_rank_4_difficulty_3_name", "loc_group_ogryn_2_rank_4_difficulty_3_name"}, {"zh-tw"},
			-- loc_text("樹立榜樣 (1)")),

	-- --[+ Promotion Material (2) +]-- -- руоф Материалы пропаганды (2)
	-- --[+ Russian +]--
	-- -- ВЕТЕРАН, ИЗУВЕР, ПСАЙКЕР, ОГРИН !!!
	-- create_template("ach_class_vet_10_ext_ru",
		-- {"loc_group_veteran_2_rank_5_difficulty_4_name", "loc_group_zealot_2_rank_5_difficulty_4_name", "loc_group_psyker_2_rank_5_difficulty_4_name", "loc_group_ogryn_2_rank_5_difficulty_4_name"}, {"ru"},
			-- loc_text("Задания для продвижения (2)")),
	-- --[+ Traditional Chinese 樹立榜樣 (2) +]--
	-- create_template("ach_class_vet_10_ext_tw",
		-- {"loc_group_veteran_2_rank_5_difficulty_4_name", "loc_group_zealot_2_rank_5_difficulty_4_name", "loc_group_psyker_2_rank_5_difficulty_4_name", "loc_group_ogryn_2_rank_5_difficulty_4_name"}, {"zh-tw"},
			-- loc_text("樹立榜樣 (2)")),

	-- --[+ First Steps (1-2) +]-- руоф Первые шаги (1-2)
	-- --[+ Russian +]--
	-- -- ВЕТЕРАН, ИЗУВЕР, ПСАЙКЕР, ОГРИН !!!
	-- -- create_template("ach_class_vet_5_ext_ru",
		-- -- {"loc_group_veteran_2_rank_1-2_difficulty_1-2_name", "loc_group_zealot_2_rank_1_difficulty_1-2_name", "loc_group_psyker_2_rank_1_difficulty_1-2_name", "loc_group_ogryn_2_rank_1_difficulty_1-2_name"}, {"ru"},
			-- -- loc_text("Первые шаги (1-2)")),
	-- --[+ Traditional Chinese 首要步驟 (1-2) +]--
	-- -- create_template("ach_class_vet_5_ext_tw",
		-- -- {"loc_group_veteran_2_rank_1-2_difficulty_1-2_name", "loc_group_zealot_2_rank_1_difficulty_1-2_name", "loc_group_psyker_2_rank_1_difficulty_1-2_name", "loc_group_ogryn_2_rank_1_difficulty_1-2_name"}, {"zh-tw"},
			-- -- loc_text("首要步驟 (1-2)")),

	-- --[+ Complete the following Penances as the Veteran. +]-- -- руоф Выполнить следующие искупления за Ветерана.
	-- create_template("ach_class_vet_14_ext_desc_en",
		-- {"loc_achievement_group_class_veteran_2_description", "loc_group_class_challenges_veteran_2_x_description", "loc_group_veteran_2_rank_4_difficulty_3_description", "loc_group_veteran_2_rank_5_difficulty_4_description", "loc_group_veteran_2_rank_1_difficulty_1_description", "loc_group_veteran_2_rank_2_difficulty_2_description"}, {"en"},
			-- loc_text("Complete the following Penances as the "..COLORS_KWords.cls_vet_rgb..".")),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_14_ext_desc_ru",
		-- {"loc_achievement_group_class_veteran_2_description", "loc_group_class_challenges_veteran_2_x_description", "loc_group_veteran_2_rank_4_difficulty_3_description", "loc_group_veteran_2_rank_5_difficulty_4_description", "loc_group_veteran_2_rank_1_difficulty_1_description", "loc_group_veteran_2_rank_2_difficulty_2_description"}, {"ru"},
			-- loc_text("Завершите следующие Искупления "..COLORS_KWords_ru.cls_vet2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用老兵完成以下苦修。
	-- create_template("ach_class_vet_14_ext_desc_tw",
		-- {"loc_achievement_group_class_veteran_2_description", "loc_group_class_challenges_veteran_2_x_description", "loc_group_veteran_2_rank_4_difficulty_3_description", "loc_group_veteran_2_rank_5_difficulty_4_description", "loc_group_veteran_2_rank_1_difficulty_1_description", "loc_group_veteran_2_rank_2_difficulty_2_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_vet_rgb_tw.." 完成以下苦修。")),

	-- --[+ Veteran Master of War +]-- -- руоф Ветеран — знаток войны
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_141_ext_ru",
		-- {"loc_achievement_class_meta_name"}, {"ru"},
			-- loc_text("{class_name} — мастер войны")),
	-- --[+ Traditional Chinese - 戰爭大師 +]--
	-- create_template("ach_class_vet_141_ext_tw",
		-- {"loc_achievement_class_meta_name"}, {"zh-tw"},
			-- loc_text("{class_name} 戰爭大師")),

	-- --[+ Complete 5 out of the following Penances. +]-- -- руоф Выполните часть (5) из следующих искуплений.
	-- create_template("ach_class_vet_14_ext_desc_en",
		-- {"loc_achievement_class_meta_description"}, {"en"},
			-- loc_text("Complete "..COLORS_Numbers.target_rgb.." out of the following Penances.")),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_14_ext_desc_ru",
		-- {"loc_achievement_class_meta_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." следующих Искуплений.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成以下任意x個苦修。
	-- create_template("ach_class_vet_14_ext_desc_tw",
		-- {"loc_achievement_class_meta_description"}, {"zh-tw"},
			-- loc_text("完成以下任意 "..COLORS_Numbers.target_rgb.." 個苦修。")),

	-- --[+ Vantage Point +]-- -- руоф Точка обзора
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_3_1_ext_ru",
		-- {"loc_achievement_missions_veteran_2_objective_1_name"}, {"ru"},
			-- loc_text("Выгодная позиция")),
	-- --[+ Traditional Chinese 有利地形 (1) +]--
	-- create_template("ach_class_vet_3_1_ext_tw",
		-- {"loc_achievement_missions_veteran_2_objective_1_name"}, {"zh-tw"},
			-- loc_text("有利地形 (1)")),

	-- --[+ As a Veteran, complete at least one Mission of each type. +]-- -- руоф Выполнить Ветераном по меньшей мере одно задание каждого типа.
	-- create_template("ach_class_vet_3_1_ext_desc_en",
		-- {"loc_achievement_missions_veteran_2_objective_1_description"}, {"en"},
			-- loc_text("As a "..COLORS_KWords.cls_vet_rgb..", complete at least one Mission of each type..")),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_3_1_ext_desc_ru",
		-- {"loc_achievement_missions_veteran_2_objective_1_description"}, {"ru"},
			-- loc_text("Завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_vet2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用老兵，完成每種類型的任務至少一項。
	-- create_template("ach_class_vet_3_1_ext_desc_tw",
		-- {"loc_achievement_missions_veteran_2_objective_1_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_vet_rgb_tw.."，完成以下任務 "..COLORS_Numbers.n_1_rgb.." 次。")),

	-- --[+ Vantage Point (2) +]-- -- руоф Точка обзора (2)
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_3_2_ext_ru",
		-- {"loc_achievement_missions_veteran_2_objective_2_name"}, {"ru"},
			-- loc_text("Выгодная позиция (2)")),
	-- --[+ Traditional Chinese 有利地形 (2) +]--
	-- create_template("ach_class_vet_3_2_ext_tw",
		-- {"loc_achievement_missions_veteran_2_objective_2_name"}, {"zh-tw"},
			-- loc_text("有利地形 (2)")),

	-- --[+ As a Veteran, complete a Mission of each type on Uprising Threat or higher. +]-- -- руоф Выполнить Ветераном по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
	-- create_template("ach_class_vet_3_2_ext_desc_en",
		-- {"loc_achievement_missions_veteran_2_objective_2_description"}, {"en"},
			-- loc_text("As a "..COLORS_KWords.cls_vet_rgb..", complete a Mission of each type on "..COLORS_KWords.malice_rgb.." Threat or higher.")),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_3_2_ext_desc_ru",
		-- {"loc_achievement_missions_veteran_2_objective_2_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_vet2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下，使用老兵完成每種類型的任務至少一項。
	-- create_template("ach_class_vet_3_2_ext_desc_tw",
		-- {"loc_achievement_missions_veteran_2_objective_2_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_vet_rgb_tw.." ，\n在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，完成以下任務 "..COLORS_Numbers.n_3_rgb.." 次。")),

	-- --[+ Vantage Point (3) +]-- -- руоф Точка обзора (3)
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_3_3_ext_ru",
		-- {"loc_achievement_missions_veteran_2_objective_3_name"}, {"ru"},
			-- loc_text("Выгодная позиция (3)")),
	-- --[+ Traditional Chinese 有利地形 (3) +]--
	-- create_template("ach_class_vet_3_3_ext_tw",
		-- {"loc_achievement_missions_veteran_2_objective_3_name"}, {"zh-tw"},
			-- loc_text("有利地形 (3)")),

	-- --[+ As a Veteran, complete a Mission of each type on Heresy Threat or higher. +]-- -- руоф Выполнить Ветераном по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.
	-- create_template("ach_class_vet_3_3_ext_desc_en",
		-- {"loc_achievement_missions_veteran_2_objective_3_description"}, {"en"},
			-- loc_text("As a "..COLORS_KWords.cls_vet_rgb..", complete a Mission of each type on "..COLORS_KWords.heresy_rgb.." Threat or higher.")),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_3_3_ext_desc_ru",
		-- {"loc_achievement_missions_veteran_2_objective_3_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_vet2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下，使用老兵完成每種類型的任務至少一項。
	-- create_template("ach_class_vet_3_3_ext_desc_tw",
		-- {"loc_achievement_missions_veteran_2_objective_3_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_vet_rgb_tw.." ，\n在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度下，完成以下任務 "..COLORS_Numbers.n_4_rgb.." 次。")),

	-- --[+ Fire Down Range +]-- -- руоф Заградительный огонь
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_12_ext_ru",
		-- {"loc_achievement_veteran_2_medium_2_name"}, {"ru"},
			-- loc_text("Дистанция ведения стрельбы")),
	-- --[+ Traditional Chinese 順風射擊 +]--
	-- create_template("ach_class_vet_12_ext_tw",
		-- {"loc_achievement_veteran_2_medium_2_name"}, {"zh-tw"},
			-- loc_text("順風射擊")),

	-- --[+ On Malice Threat or higher, kill 100 enemies that are over 30 meters away. +]-- -- руоф При угрозе «Злоба» или выше убейте врагов (100) на расстоянии дальше 30 м.
	-- create_template("ach_class_vet_12_ext_desc_en",
		-- {"loc_achievement_veteran_2_medium_2_description"}, {"en"},
			-- loc_text("On "..COLORS_KWords.malice_rgb.." Threat or higher, kill "..COLORS_Numbers.target_rgb.." enemies that are over "..COLORS_Numbers.dist_rgb.." meters away.")),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_12_ext_desc_ru",
		-- {"loc_achievement_veteran_2_medium_2_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов, находящихся на расстоянии более "..COLORS_Numbers.dist_rgb.." метров от вас.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下，擊殺100個離你30公尺之外的敵人。
	-- create_template("ach_class_vet_12_ext_desc_tw",
		-- {"loc_achievement_veteran_2_medium_2_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，\n擊殺 "..COLORS_Numbers.target_rgb.." 名距離 "..COLORS_Numbers.dist_rgb.." 公尺以上的敵人。")),

	-- --[+ Prove Your Worth (1-5) +]--
	-- --[+ Russian +]--
	-- -- create_template("ach_class_vet_4_ext_ru",
		-- -- {"loc_missions_veteran_2_easy_difficulty_5_name"}, {"ru"},
			-- -- loc_text("Докажи, чего стоишь (1-5)")),
	-- --[+ Traditional Chinese 證明你的價值 (1-5) +]--
	-- -- create_template("ach_class_vet_4_ext_tw",
		-- -- {"loc_missions_veteran_2_easy_difficulty_5_name"}, {"zh-tw"},
			-- -- loc_text("證明你的價值 (1-5)")),

	-- --[+ Complete 1 Missions on Sedition Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Мятеж» или выше.
	-- -- create_template("ach_class_vet_4_1_ext_desc_en",
		-- -- {"loc_missions_veteran_2_easy_difficulty_1_description"}, {"en"},
			-- -- loc_text(complete_1_mission_on_sedition_threat)),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_4_1_ext_desc_ru",
		-- {"loc_missions_veteran_2_easy_difficulty_1_description"}, {"ru"},
			-- loc_text(PHRS.cmpl_1_mssn_sedition_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在騷亂威脅度或更高難度下完成1個任務
	-- create_template("ach_class_vet_4_1_ext_desc_tw",
		-- {"loc_missions_veteran_2_easy_difficulty_1_description"}, {"zh-tw"},
			-- loc_text(PHRS.cmpl_1_mssn_sedition_tw)),

	-- --[+ Complete 1 Missions on Uprising Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Восстание» или выше.
	-- -- create_template("ach_class_vet_4_2_ext_desc_en",
		-- -- {"loc_missions_veteran_2_easy_difficulty_2_description"}, {"en"},
			-- -- loc_text(complete_1_mission_on_uprising_threat)),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_4_2_ext_desc_ru",
		-- {"loc_missions_veteran_2_easy_difficulty_2_description"}, {"ru"},
			-- loc_text(PHRS.cmpl_1_mssn_uprising_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在起義威脅度或更高難度下完成1個任務
	-- create_template("ach_class_vet_4_2_ext_desc_tw",
		-- {"loc_missions_veteran_2_easy_difficulty_2_description"}, {"zh-tw"},
			-- loc_text(PHRS.cmpl_1_mssn_uprising_tw)),

	-- --[+ Complete 1 Missions on Malice Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Злоба» или выше.
	-- -- create_template("ach_class_vet_4_3_ext_desc_en",
		-- -- {"loc_missions_veteran_2_easy_difficulty_3_description"}, {"en"},
			-- -- loc_text(complete_1_mission_on_malice_threat)),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_4_3_ext_desc_ru",
		-- {"loc_missions_veteran_2_easy_difficulty_3_description"}, {"ru"},
			-- loc_text(PHRS.cmpl_1_mssn_malice_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下完成1個任務
	-- create_template("ach_class_vet_4_3_ext_desc_tw",
		-- {"loc_missions_veteran_2_easy_difficulty_3_description"}, {"zh-tw"},
			-- loc_text(PHRS.cmpl_1_mssn_malice_tw)),

	-- --[+ Complete 1 Missions on Heresy Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Ересь» или выше.
	-- -- create_template("ach_class_vet_4_4_ext_desc_en",
		-- -- {"loc_missions_veteran_2_easy_difficulty_4_description"}, {"en"},
			-- -- loc_text(complete_1_mission_on_heresy_threat)),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_4_4_ext_desc_ru",
		-- {"loc_missions_veteran_2_easy_difficulty_4_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下完成1個任務
	-- create_template("ach_class_vet_4_4_ext_desc_tw",
		-- {"loc_missions_veteran_2_easy_difficulty_4_description"}, {"zh-tw"},
			-- loc_text(PHRS.cmpl_1_mssn_heresy_tw)),

	-- --[+ Complete 1 Missions on Damnation Threat or higher. +]-- -- руоф Выполните задания (1) при угрозе «Проклятие» или выше.
	-- -- create_template("ach_class_vet_4_5_ext_desc_en",
		-- -- {"loc_missions_veteran_2_easy_difficulty_5_description"}, {"en"},
			-- -- loc_text(complete_1_mission_on_damnation_threat)),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_4_5_ext_desc_ru",
		-- {"loc_achievement_complete_missions_difficulty_5_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在詛咒威脅度或更高難度下完成1個任務
	-- -- create_template("ach_class_vet_4_5_ext_desc_tw",
		-- -- {"loc_missions_veteran_2_easy_difficulty_5_description"}, {"zh-tw"},
			-- -- loc_text(PHRS.cmpl_1_mssn_damnation_tw)),

	-- --[+ Through The Mud (1-6) +]-- -- руоф Из грязи (1-6)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_vet_2_ext_ru",
		-- -- {"loc_achievement_missions_veteran_2_1_name"}, {"ru"},
			-- -- loc_text("Из грязи в князи (1)")),
	-- --[+ Traditional Chinese 穿越泥沼 (1) +]--
	-- -- create_template("ach_class_vet_2_ext_tw",
		-- -- {"loc_achievement_missions_veteran_2_1_name"}, {"zh-tw"},
			-- -- loc_text("穿越泥沼 (1)")),

	-- --[+ Complete 100 Missions as a Veteran. +]-- -- руоф Выполнить Ветераном задания: 100.
	-- create_template("ach_class_vet_2_ext_desc_en",
		-- {"loc_achievement_missions_veteran_2_x_description"}, {"en"},
			-- loc_text("Complete "..COLORS_Numbers.target_rgb.." Missions as a "..COLORS_KWords.cls_vet_rgb..".")),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_2_ext_desc_ru",
		-- {"loc_achievement_missions_veteran_2_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий "..COLORS_KWords_ru.cls_vet2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用老兵完成xx項任務
	-- create_template("ach_class_vet_2_ext_desc_tw",
		-- {"loc_achievement_missions_veteran_2_x_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_vet_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 次任務。")),

	-- --[+ On Overwatch - На чеку +]-- -- руоф Под прикрытием
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_5_ext_ru",
		-- {"loc_achievement_veteran_2_no_melee_damage_taken_name"}, {"ru"},
			-- loc_text("На чеку")),
	-- --[+ Traditional Chinese 掩護射擊 +]--
	-- create_template("ach_red_vet_5_ext_tw",
		-- {"loc_achievement_veteran_2_no_melee_damage_taken_name"}, {"zh-tw"},
			-- loc_text("掩護射擊")),

	-- --[+ Complete a full Mission on Malice Threat or higher without taking any melee damage. +]-- -- руоф При угрозе «Злоба» или выше полностью завершите задание, не получив урона в ближнем бою.
	-- -- create_template("ach_red_vet_5_ext_desc_en",
		-- -- {"loc_achievement_veteran_2_no_melee_damage_taken_description"}, {"en"},
			-- -- loc_text("Complete a full Mission on "..COLORS_KWords.malice_rgb.." Threat or higher without taking any melee "..COLORS_KWords.Damage_rgb.."."..TALENTS_Enh_desc_penances.ED_No_dmg_taken_corrupt_rgb)),
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_5_ext_desc_ru",
		-- -- {"loc_achievement_veteran_2_no_melee_damage_taken_description"}, {"ru"},
			-- -- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, завершите полностью миссию без получения урона в ближнем бою."..TALENTS_Enh_desc_penances_ru.ED_No_dmg_taken_corrupt_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡毒或更高威脅度下，
	-- -- 在不承受任何近戰傷害的情況下完成1次完整的任務。
	-- -- create_template("ach_red_vet_5_ext_desc_tw",
		-- -- {"loc_achievement_veteran_2_no_melee_damage_taken_description"}, {"zh-tw"},
			-- -- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，\n完成一次任務且不受到近戰傷害。"..TALENTS_Enh_desc_penances_tw.ED_No_dmg_taken_corrupt_rgb_tw)),

	-- --[+ One In the Chamber +]-- -- руоф Последний патрон
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_4_ext_ru",
		-- {"loc_achievement_veteran_2_kills_with_last_round_in_mag_name"}, {"ru"},
			-- loc_text("Последний в обойме")),
	-- --[+ Traditional Chinese 最後一發 +]--
	-- create_template("ach_red_vet_4_ext_tw",
		-- {"loc_achievement_veteran_2_kills_with_last_round_in_mag_name"}, {"zh-tw"},
			-- loc_text("最後一發")),

	-- --[+ Kill 8 enemies with the last round in your clip during a single Mission on Malice Threat or higher. +]-- -- руоф При угрозе «Злоба» или выше убейте врагов (8) последним боеприпасом в магазине за одно задание.
	-- create_template("ach_red_vet_4_ext_desc_en",
		-- {"loc_achievement_veteran_2_kills_with_last_round_in_mag_description"}, {"en"},
			-- loc_text("Kill "..COLORS_Numbers.target_rgb.." enemies with the last round in your clip during a single Mission on "..COLORS_KWords.malice_rgb.." Threat or higher.")),
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_4_ext_desc_ru",
		-- {"loc_achievement_veteran_2_kills_with_last_round_in_mag_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов последним патроном в обойме в течение одной миссии на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 以惡毒或以上威脅度，
	-- -- 在1次任務中用彈夾中的最後1發子彈殺死8名敵人。
	-- create_template("ach_red_vet_4_ext_desc_tw",
		-- {"loc_achievement_veteran_2_kills_with_last_round_in_mag_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，\n使用最後一發子彈擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Make Every Shot Count - Сделай каждый выстрел важным +]-- -- руоф Стрельба наверняка
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_7_ext_ru",
		-- {"loc_achievement_veteran_2_no_missed_shots_empty_ammo_name"}, {"ru"},
			-- loc_text("Сделай каждый выстрел важным")),
	-- --[+ Traditional Chinese 彈無虛發 +]--
	-- create_template("ach_red_vet_7_ext_tw",
		-- {"loc_achievement_veteran_2_no_missed_shots_empty_ammo_name"}, {"zh-tw"},
			-- loc_text("彈無虛發*")),

	-- --[+ Complete a Mission on Heresy Threat or higher with no Ammo remaining, and 90% accuracy. +]-- -- руоф При угрозе «Ересь» или выше завершите задание с меткостью 90%, потратив все боеприпасы.
	-- -- create_template("ach_red_vet_7_ext_desc_en",
		-- -- {"loc_achievement_veteran_2_no_missed_shots_empty_ammo_description"}, {"en"},
			-- -- loc_text("Complete a Mission on "..COLORS_KWords.heresy_rgb.." Threat or higher with no Ammo remaining, and "..COLORS_Numbers.target_rgb..COLORS_Numbers.pc_rgb.." accuracy."..TALENTS_Enh_desc_penances.ED_No_missed_shots_rgb)),
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_7_ext_desc_ru",
		-- -- {"loc_achievement_veteran_2_no_missed_shots_empty_ammo_description"}, {"ru"},
			-- -- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите миссию с точностью "..COLORS_Numbers.target_rgb..COLORS_Numbers.pc_rgb.." и потратив все боеприпасы."..TALENTS_Enh_desc_penances_ru.ED_No_missed_shots_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 以異教徒或以上威脅度完成任務，
	-- -- 用光所有彈藥，並且保持90的精準度。
	-- -- create_template("ach_red_vet_7_ext_desc_tw",
		-- -- {"loc_achievement_veteran_2_no_missed_shots_empty_ammo_description"}, {"zh-tw"},
			-- -- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度下，\n命中率在 "..COLORS_Numbers.target_rgb..COLORS_Numbers.pc_rgb.." 以上，且撤離時無任何備彈"..TALENTS_Enh_desc_penances_tw.ED_No_missed_shots_rgb_tw)),

	-- --[+ Fight the Good Fight (1-5) +]--
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_1_ext_ru",
		-- -- {"loc_missions_veteran_2_medium_difficulty_1-5_name"}, {"ru"},
			-- -- loc_text("Сражайся достойно (1-5)")),
	-- --[+ Traditional Chinese 為正義而戰 (1-5) +]--
	-- -- create_template("ach_red_vet_1_ext_tw",
		-- -- {"loc_missions_veteran_2_medium_difficulty_1-5_name"}, {"zh-tw"},
			-- -- loc_text("為正義而戰 (1-5)")),

	-- --[+ Complete 5 Missions on Sedition Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Мятеж» или выше.
	-- create_template("ach_red_vet_1_1_ext_desc_en",
		-- {"loc_missions_veteran_2_medium_difficulty_1_description"}, {"en"},
			-- loc_text("Complete "..COLORS_Numbers.target_rgb.." Missions on "..COLORS_KWords.sedition_rgb.." Threat or higher.")),
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_1_1_ext_desc_ru",
		-- {"loc_missions_veteran_2_medium_difficulty_1_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.sedition_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在騷亂威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_vet_1_1_ext_desc_tw",
		-- {"loc_missions_veteran_2_medium_difficulty_1_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.sedition_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_vet2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Uprising Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Восстание» или выше.
	-- create_template("ach_red_vet_1_2_ext_desc_en",
		-- {"loc_missions_veteran_2_medium_difficulty_2_description"}, {"en"},
			-- loc_text("Complete "..COLORS_Numbers.target_rgb.." Missions on "..COLORS_KWords.uprising_rgb.." Threat or higher.")),
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_1_2_ext_desc_ru",
		-- {"loc_missions_veteran_2_medium_difficulty_2_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.uprising_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在起意威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_vet_1_2_ext_desc_tw",
		-- {"loc_missions_veteran_2_medium_difficulty_2_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.uprising_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_vet2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Malice Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Злоба» или выше.
	-- create_template("ach_red_vet_1_3_ext_desc_en",
		-- {"loc_missions_veteran_2_medium_difficulty_3_description"}, {"en"},
			-- loc_text("Complete "..COLORS_Numbers.target_rgb.." Missions on "..COLORS_KWords.malice_rgb.." Threat or higher.")),
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_1_3_ext_desc_ru",  {"loc_missions_veteran_2_medium_difficulty_3_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_vet_1_3_ext_desc_tw",
		-- {"loc_missions_veteran_2_medium_difficulty_3_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_vet2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Heresy Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Ересь» или выше.
	-- create_template("ach_red_vet_1_4_ext_desc_en",
		-- {"loc_missions_veteran_2_medium_difficulty_4_description"}, {"en"},
			-- loc_text("Complete "..COLORS_Numbers.target_rgb.." Missions on "..COLORS_KWords.heresy_rgb.." Threat or higher.")),
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_1_4_ext_desc_ru",
		-- {"loc_missions_veteran_2_medium_difficulty_4_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_vet_1_4_ext_desc_tw",
		-- {"loc_missions_veteran_2_medium_difficulty_4_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_vet2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Damnation Threat or higher. +]-- -- руоф Выполните задания (5) при угрозе «Проклятие» или выше.
	-- create_template("ach_red_vet_1_5_ext_desc_en",
		-- {"loc_missions_veteran_2_medium_difficulty_5_description"}, {"en"},
			-- loc_text("Complete "..COLORS_Numbers.target_rgb.." Missions on "..COLORS_KWords.damnation_rgb.." Threat or higher.")),
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_1_5_ext_desc_ru",
		-- {"loc_missions_veteran_2_medium_difficulty_5_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在詛咒威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_vet_1_5_ext_desc_tw",
		-- {"loc_missions_veteran_2_medium_difficulty_5_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.damnation_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_vet2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ I Love the Militarum! (1-6) +]--
	-- --[+ Russian +]--
	-- -- create_template("ach_class_vet_1_ext_ru",
		-- -- {"loc_achievement_rank_veteran_2_1_name"}, {"ru"},
			-- --loc_text("Я люблю Милитарум! (1-6)")),
	-- --[+ Traditional Chinese 我愛星界軍 (1-6) +]--
	-- -- create_template("ach_class_vet_1_ext_tw",
		-- -- {"loc_achievement_rank_veteran_2_1_name"}, {"zh-tw"},
			-- --loc_text("我愛星界軍 (1-6)")),

	-- --[+ Reach Trust Level 30 as a Veteran. +]-- -- руоф Заслужить уровень доверия 30, играя за Ветерана.
	-- create_template("ach_class_vet_1_ext_desc_en",
		-- {"loc_achievement_rank_veteran_2_x_description"}, {"en"},
			-- loc_text("Reach Trust Level "..COLORS_Numbers.target_rgb.." as a "..COLORS_KWords.cls_vet_rgb..".")),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_1_ext_desc_ru",
		-- {"loc_achievement_rank_veteran_2_x_description"}, {"ru"},
			-- loc_text("Достигните "..COLORS_Numbers.target_rgb.." уровня доверия "..COLORS_KWords_ru.cls_vet2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用老兵達到信任等級xx。
	-- create_template("ach_class_vet_1_ext_desc_tw",
		-- {"loc_achievement_rank_veteran_2_x_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_vet_rgb_tw.." 達到信任等級 "..COLORS_Numbers.target_rgb.." 。")),

-- --[+ СПОСОБНОСТИ - 技能 +]--
	-- --[+ Adept Assassin - Адепт-ассасин +]-- -- руоф Искусный убийца
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_3_ext_ru",
		-- {"loc_achievement_veteran_weapon_switch_passive_keystone_kills_name"}, {"ru"},
			-- loc_text("Адепт-ассасин")),
	-- --[+ Traditional Chinese 老練刺客 +]--
	-- create_template("ach_red_vet_3_ext_tw",
		-- {"loc_achievement_veteran_weapon_switch_passive_keystone_kills_name"}, {"zh-tw"},
			-- loc_text("老練刺客")),

	-- --[+ Kill 250 Specialist or Elites with critical weakspot hits while Weapons Specialist is active. +]-- -- руоф Убейте особых или элитных врагов (250) с помощью критических ударов по слабым местам, пока действует «Мастер оружия».
	-- -- create_template("ach_red_vet_3_ext_desc_en",
		-- -- {"loc_achievement_veteran_weapon_switch_passive_keystone_kills_description"}, {"en"},
			-- -- loc_text("Kill "..COLORS_Numbers.target_rgb.." Specialist or Elites with "..COLORS_KWords.Crit_rgb.." "..COLORS_KWords.Weakspothits_rgb.." "..COLORS_KWords.weapspec_rgb.." is active."..TALENTS_Enh_desc_penances.ED_Headshot_rgb)),
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_3_ext_desc_ru",
		-- -- {"loc_achievement_veteran_weapon_switch_passive_keystone_kills_description"}, {"ru"},
			-- -- loc_text("Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью критических ударов в "..COLORS_KWords_ru.Weakspot_rgb_ru..", пока действует ключевой талант "..COLORS_KWords_ru.weapspec_rgb_ru.."."..TALENTS_Enh_desc_penances_ru.ED_Headshot_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在武器專家效果啟動時，
	-- -- 使用暴擊弱點命中擊殺250名專家或精英
	-- -- create_template("ach_red_vet_3_ext_desc_tw",
		-- -- {"loc_achievement_veteran_weapon_switch_passive_keystone_kills_description"}, {"zh-tw"},
			-- -- loc_text("在 "..COLORS_KWords_tw.KeyStone_i_p_rgb_tw.."『"..COLORS_KWords_tw.weapspec_rgb_tw.."』時，\n使用 "..COLORS_KWords_tw.Crit_hits_rgb_tw.." 加上 "..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." "..COLORS_Numbers.target_rgb.." 名精英或專家敵人。" .. TALENTS_Enh_desc_penances_tw.ED_Headshot_rgb_tw)),

	-- --[+ Stay Alert +]-- -- руоф Будь начеку
	-- --[+ Russian +]--
	-- -- create_template("ach_class_vet_11_ext_ru",
		-- -- {"loc_achievement_veteran_2_medium_1_name"}, {"ru"},
			-- -- loc_text("Будь внимательным")),
	-- --[+ Traditional Chinese 保持警惕 +]--
	-- -- create_template("ach_class_vet_11_ext_tw",
		-- -- {"loc_achievement_veteran_2_medium_1_name"}, {"zh-tw"},
			-- -- loc_text("保持警惕")),

	-- --[+ On Malice Threat or higher, kill 150 enemies that have been marked by Volley Fire. +]-- -- руоф При угрозе «Злоба» или выше убейте врагов (150), отмеченных «Залповым огнем».
	-- create_template("ach_class_vet_11_ext_desc_en",
		-- {"loc_achievement_veteran_2_medium_1_description"}, {"en"},
			-- loc_text("On "..COLORS_KWords.malice_rgb.." Threat or higher, kill "..COLORS_Numbers.target_rgb.." enemies that have been marked by "..COLORS_KWords.volley_fire_rgb.." or "..COLORS_KWords.exec_stan_rgb..".")),
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_11_ext_desc_ru",
		-- {"loc_achievement_veteran_2_medium_1_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов, отмеченных способностями "..COLORS_KWords_ru.volley_fire_rgb_ru.." или "..COLORS_KWords_ru.exec_stan_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡毒或更高威脅度下，
	-- -- 擊殺150個被處決者姿態標記的敵人
	-- create_template("ach_class_vet_11_ext_desc_tw",
		-- {"loc_achievement_veteran_2_medium_1_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，擊殺 "..COLORS_Numbers.target_rgb.." 名，\n被 "..COLORS_KWords_tw.AbilityModifiers_p_rgb_tw.."『"..COLORS_KWords_tw.volley_fire_rgb_tw.."』或『"..COLORS_KWords_tw.executioner_stance_rgb_tw.."』標記的敵人。")),

	-- --[+ Be Methodical - Будь методичным +]-- -- руоф Будь собран
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_13_ext_ru",
		-- {"loc_achievement_veteran_2_hard_2_name"}, {"ru"},
			-- loc_text("Будь методичным")),
	-- --[+ Traditional Chinese 有條不紊 +]--
	-- create_template("ach_class_vet_13_ext_tw",
		-- {"loc_achievement_veteran_2_hard_2_name"}, {"zh-tw"},
			-- loc_text("有條不紊")),

	-- --[+ On Heresy Threat or higher, keep Volley Fire active for over 20 seconds 5 times. +]-- -- руоф При угрозе «Ересь» или выше примените «Залповый огонь» в течение 20 с 5 р.
	-- -- create_template("ach_class_vet_13_ext_desc_en",
		-- -- {"loc_achievement_veteran_2_hard_2_description"}, {"en"},
			-- -- loc_text("On "..COLORS_KWords.heresy_rgb.." Threat or higher, keep "..COLORS_KWords.exec_stan_rgb.." active for over "..COLORS_Numbers.time_rgb.." seconds "..COLORS_Numbers.target_rgb.." times."..TALENTS_Enh_desc_penances.ED_On_heresy_volley_rgb)),
	-- --[+ Russian +]--
	-- -- create_template("ach_class_vet_13_ext_desc_ru",
		-- -- {"loc_achievement_veteran_2_hard_2_description"}, {"ru"},
			-- -- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, поддерживайте способность "..COLORS_KWords_ru.exec_stan_rgb_ru.." активной в течение "..COLORS_Numbers.time_rgb.." секунд. Выполните это задание "..COLORS_Numbers.target_rgb.." раз."..TALENTS_Enh_desc_penances_ru.ED_On_heresy_volley_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下，
	-- -- 使火力齊射的啟動時間超過20秒，需要達成5次。
	-- -- create_template("ach_class_vet_13_ext_desc_tw",
		-- -- {"loc_achievement_veteran_2_hard_2_description"}, {"zh-tw"},
			-- -- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，\n啟動 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.executioner_stance_rgb_tw.."』持續 "..COLORS_Numbers.time_rgb.." 秒以上。\n完成此苦修需達成 "..COLORS_Numbers.target_rgb.." 次。" .. TALENTS_Enh_desc_penances_tw.ED_On_heresy_volley_rgb_tw)),

	-- --[+ Stand up and Fight! +]-- -- руоф Встань и сражайся!
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_13_ext_ru",
		-- {"loc_achievement_veteran_voice_of_command_toughness_given_name"}, {"ru"},
			-- loc_text("Встань и сражайся!")),
	-- --[+ Traditional Chinese 站起來繼續戰鬥！ +]--
	-- create_template("ach_class_vet_13_ext_tw",
		-- {"loc_achievement_veteran_voice_of_command_toughness_given_name"}, {"zh-tw"},
			-- loc_text("站起來繼續戰鬥！")),

	-- --[+ Restore 7500 Toughness to yourself using Voice of Command. +]-- -- руоф Восстановите себе 7500 стойкости с помощью «Командного голоса».
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_13_ext_desc_ru",
		-- {"loc_achievement_veteran_voice_of_command_toughness_given_description"}, {"ru"},
			-- loc_text("Восстановите себе "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." с помощью способности "..COLORS_KWords_ru.voiceoc_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用命令戰吼恢復自身7500點韌性。
	-- create_template("ach_class_vet_13_ext_desc_tw",
		-- {"loc_achievement_veteran_voice_of_command_toughness_given_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.voiceoc_rgb_tw.."』恢復自身 "..COLORS_Numbers.target_rgb.." 點 "..COLORS_KWords_tw.Toughness_rgb_tw.."。")),

	-- --[+ Sweep and Clear +]--
	-- --[+ Russian +]--
	-- -- create_template("ach_class_vet_13_ext_ru",
		-- -- {"loc_achievement_veteran_team_damage_amplified_name"}, {"ru"},
			-- -- loc_text("Выявить и зачистить")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_class_vet_13_ext_tw",
		-- -- {"loc_achievement_veteran_team_damage_amplified_name"}, {"zh-tw"},
			-- -- loc_text("全面掃蕩")),

	-- --[+ Kill 7500 enemies while affected by Fire Team. Kills made by any affected team member also count. +]-- -- руоф Убейте врагов (7500), находясь под действием «Огневой поддержки». Убийства, совершенные любым членом команды под действием эффекта, тоже учитываются.
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_13_ext_desc_ru",
		-- {"loc_achievement_veteran_team_damage_amplified_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов, находясь под действием ауры "..COLORS_KWords_ru.firetim_rgb_ru..". Убийства, совершённые любым членом команды, находящимся под действием вашей ауры, также учитываются.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在火力小分隊效果啟動時擊殺7500名敵人。
	-- -- 由獲得效果的小隊成員造成的擊殺也算。
	-- create_template("ach_class_vet_13_ext_desc_tw",
		-- {"loc_achievement_veteran_team_damage_amplified_description"}, {"zh-tw"},
			-- loc_text("在 "..COLORS_KWords_tw.Aura_p_rgb_tw.."『"..COLORS_KWords_tw.firetim_rgb_tw.."』的影響下，擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。\n"..COLORS_KWords_tw.Aura_i_p_rgb_tw.." 的隊友擊殺也會計算。")),

	-- --[+ Armourbane +]-- -- руоф Бронебой
	-- --[+ Russian +]--
	-- -- create_template("ach_class_vet_8_ext_ru",
		-- -- {"loc_achievement_veteran_krak_grenade_kills_name"}, {"ru"},
			-- -- loc_text("Губитель брони")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_class_vet_8_ext_tw",
		-- -- {"loc_achievement_veteran_krak_grenade_kills_name"}, {"zh-tw"},
			-- -- loc_text("護甲之災")),

	-- --[+ Kill 500 armoured enemies using krak grenades. +]-- -- руоф Убейте врагов с бронёй (500) с помощью крак-гранат.
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_8_ext_desc_ru",
		-- {"loc_achievement_veteran_krak_grenade_kills_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." бронированных врагов, используя "..COLORS_KWords_ru.krak_gr_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用穿甲手榴彈擊殺500名護甲敵人
	-- create_template("ach_class_vet_8_ext_desc_tw",
		-- {"loc_achievement_veteran_krak_grenade_kills_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.krak_gr_rgb_tw.."』擊殺 "..COLORS_Numbers.target_rgb.." 名護甲敵人。")),

	-- --[+ Keep it Tight +]-- -- руоф Держать в секрете
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_3_ext_ru",
		-- {"loc_achievement_veteran_team_movement_amplifed_name"}, {"ru"},
			-- loc_text("Держитесь вместе")),
	-- --[+ Traditional Chinese 保持陣型 +]--
	-- create_template("ach_red_vet_3_ext_tw",
		-- {"loc_achievement_veteran_team_movement_amplifed_name"}, {"zh-tw"},
			-- loc_text("保持陣型.")),

	-- --[+ Move a total of 10000 meters in coherency with your team members while under the effect of Close and Kill. +]-- -- руоф Переместитесь с членами команды под действием «Сплоченности» суммарно на 10000 м, пока действует эффект «Приблизиться и убить».
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_3_ext_desc_ru",
		-- {"loc_achievement_veteran_team_movement_amplifed_description"}, {"ru"},
			-- loc_text("Переместитесь на "..COLORS_Numbers.target_rgb.." метров под действием ауры "..COLORS_KWords_ru.closenkill_rgb_ru..", находясь под действием "..COLORS_KWords_ru.Coherency_rgb_ru.." с членами вашей команды.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在抵近殺敵效果啟動時，與隊友一起移動10000公尺。
	-- create_template("ach_red_vet_3_ext_desc_tw",
		-- {"loc_achievement_veteran_team_movement_amplifed_description"}, {"zh-tw"},
			-- loc_text("在與隊友保持 "..COLORS_KWords_tw.Coherency_rgb_tw.." 時，\n於 "..COLORS_KWords_tw.Aura_p_rgb_tw.."『"..COLORS_KWords_tw.closenkill_rgb_tw.."』效果期間內，\n移動距離達 "..COLORS_Numbers.target_rgb.." 公尺。")),

	-- --[+ Long Bomb +]-- -- руоф Длинный пас
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_3_ext_ru",
		-- -- {"loc_achievement_veteran_2_unbounced_grenade_kills_name"}, {"ru"},
			-- --loc_text("Дальний бросок")),
	-- --[+ Traditional Chinese 遠擲炸彈 +]--
	-- -- create_template("ach_red_vet_3_ext_tw",
		-- -- {"loc_achievement_veteran_2_unbounced_grenade_kills_name"}, {"zh-tw"},
			-- --loc_text("遠擲炸彈")),

	-- --[+ Hit 5 enemies with a Frag Grenade without it bouncing. +]-- -- руоф Убейте врагов (5) фраг-гранатой так, чтобы она не отскакивала.
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_3_ext_desc_ru",
		-- -- {"loc_achievement_veteran_2_unbounced_grenade_kills_description"}, {"ru"},
			-- -- loc_text("Поразите взрывом "..COLORS_KWords_ru.frag_gr_rgb_ru.." "..COLORS_Numbers.target_rgb.." врагов так, чтобы граната ни разу не отскочила от земли."..TALENTS_Enh_desc_penances_ru.ED_Long_bomb_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 使用碎片手雷殺死5名敵人，且手雷沒有落地彈起。
	-- -- create_template("ach_red_vet_3_ext_desc_tw",
		-- -- {"loc_achievement_veteran_2_unbounced_grenade_kills_description"}, {"zh-tw"},
			-- -- loc_text("使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.frag_gr_rgb_tw.."』擊殺 "..COLORS_Numbers.target_rgb.." 名敵人，且手榴彈在引爆前不得碰觸地面。" .. TALENTS_Enh_desc_penances_tw.ED_Long_bomb_rgb_tw)),


	-- --[+ Smoke Screen +]--
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_3_ext_ru",
		-- -- {"loc_achievement_veteran_smoke_grenade_engulfed_name"}, {"ru"},
			-- -- loc_text("Дымовая завеса")),
	-- --[+ Traditional Chinese 煙幕 +]--
	-- -- create_template("ach_red_vet_3_ext_tw",
		-- -- {"loc_achievement_veteran_smoke_grenade_engulfed_name"}, {"zh-tw"},
			-- -- loc_text("煙幕")),

	-- --[+ Engulf 2000 enemies in smoke using the Smoke Grenade. +]-- -- руоф Окутайте дымом врагов (2000) с помощью дымовой гранаты.
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_3_ext_desc_ru",
		-- {"loc_achievement_veteran_smoke_grenade_engulfed_description"}, {"ru"},
			-- loc_text("Окутайте дымом "..COLORS_Numbers.target_rgb.." врагов с помощью "..COLORS_KWords_ru.smok_gr_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用煙霧彈干擾2000名敵人。
	-- create_template("ach_red_vet_3_ext_desc_tw",
		-- {"loc_achievement_veteran_smoke_grenade_engulfed_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.smok_gr_rgb_tw.."』使 "..COLORS_Numbers.target_rgb.." 名敵人陷入煙霧之中。")),

	-- --[+ Deadeye +]-- руоф Меткий глаз
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_6_ext_ru",
		-- -- {"loc_achievement_veteran_2_elite_weakspot_kills_during_volley_fire_alternate_fire_name"}, {"ru"},
			-- -- loc_text("Меткий глаз")),
	-- --[+ Traditional Chinese 神射手 +]--
	-- -- create_template("ach_red_vet_6_ext_tw",
		-- -- {"loc_achievement_veteran_2_elite_weakspot_kills_during_volley_fire_alternate_fire_name"}, {"zh-tw"},
			-- -- loc_text("神射手")),

	-- --[+ On Heresy Threat or higher, during a single use of Volley Fire, kill 5 highlighted enemies with Weak Spot hits whilst using a weapon's Secondary Action. +]-- -- руоф При угрозе «Ересь» или выше за однократное применение «Залпового огня»  убейте выделенных врагов (5) попаданием в слабое место, используя дополнительное действие оружия.
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_6_ext_desc_ru",
		-- -- {"loc_achievement_veteran_2_elite_weakspot_kills_during_volley_fire_alternate_fire_description"}, {"ru"},
			-- -- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, на протяжении одного использования способностей "..COLORS_KWords_ru.volley_fire_rgb_ru.." или "..COLORS_KWords_ru.exec_stan_rgb_ru..", убейте прицельными выстрелами "..COLORS_Numbers.target_rgb.." подсвеченных врагов в "..COLORS_KWords_ru.Weakspot_rgb_ru.."."..TALENTS_Enh_desc_penances_ru.ED_Headshot_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 以異教徒或以上威脅度，僅用1次火力齊射，
	-- -- 以武器的次要動作擊中5名高亮的敵人的弱點，將其急殺。
	-- -- create_template("ach_red_vet_6_ext_desc_tw",
		-- -- {"loc_achievement_veteran_2_elite_weakspot_kills_during_volley_fire_alternate_fire_description"}, {"zh-tw"},
			-- -- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，\n在單次 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.volley_fire_rgb_tw.."』或『"..COLORS_KWords_tw.executioner_stance_rgb_tw.."』期間，\n使用瞄準射擊 "..COLORS_KWords_tw.Weakspothits_rgb_tw.." ，擊殺 "..COLORS_Numbers.target_rgb.." 名被標記的敵人。" .. TALENTS_Enh_desc_penances_tw.ED_Headshot_rgb_tw)),

	-- --[+ Unseen Predator +]-- руоф Невидимый хищник
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_3_ext_ru",
		-- -- {"loc_achievement_veteran_infiltrate_supress_name"}, {"ru"},
			-- -- loc_text("Невидимый хищник")),
	-- --[+ Traditional Chinese 隱形獵手 +]--
	-- -- create_template("ach_red_vet_3_ext_tw",
		-- -- {"loc_achievement_veteran_infiltrate_supress_name"}, {"zh-tw"},
			-- -- loc_text("隱形獵手")),

	-- --[+ Suppress 750 enemies using Infiltrate. +]-- -- руоф Подавите врагов (750) с помощью «Проникновения».
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_3_ext_desc_ru",
		-- -- {"loc_achievement_veteran_infiltrate_supress_description"}, {"ru"},
			-- -- loc_text("Подавите врагов "..COLORS_Numbers.target_rgb.." с помощью способности "..COLORS_KWords_ru.infiltr_rgb_ru.."."..TALENTS_Enh_desc_penances_ru.ED_Unseen_predator_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 使用滲透既能壓制750名敵人。
	-- -- create_template("ach_red_vet_3_ext_desc_tw",
		-- -- {"loc_achievement_veteran_infiltrate_supress_description"}, {"zh-tw"},
			-- -- loc_text("使用 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.infiltr_rgb_tw.."』壓制 "..COLORS_Numbers.target_rgb.." 名敵人。" .. TALENTS_Enh_desc_penances_tw.ED_Unseen_predator_rgb_tw)),

	-- --[+ Marked For Death - Отмеченные на смерть +]-- -- руоф Отмечены смертью
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_2_ext_ru",
		-- {"loc_achievement_veteran_2_weakspot_hits_during_volley_fire_alternate_fire_name"}, {"ru"},
			-- loc_text("Отмеченные на смерть")),
	-- --[+ Traditional Chinese 死亡標記 +]--
	-- create_template("ach_red_vet_2_ext_tw",
		-- {"loc_achievement_veteran_2_weakspot_hits_during_volley_fire_alternate_fire_name"}, {"zh-tw"},
			-- loc_text("死亡標記")),

	-- --[+ During a single use of Volley Fire, hit enemy Weak Spot 4 times using a weapon's Secondary Action, without missing a shot. +]-- -- руоф За однократное применение «Залпового огня» поразите слабые места врагов (4) дополнительным действием оружия, не промахнувшись.
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_2_ext_desc_ru",
		-- -- {"loc_achievement_veteran_2_weakspot_hits_during_volley_fire_alternate_fire_description"}, {"ru"},
			-- -- loc_text("За одно использование способностей "..COLORS_KWords_ru.volley_fire_rgb_ru.." или "..COLORS_KWords_ru.exec_stan_rgb_ru.." поразите "..COLORS_Numbers.target_rgb.." врагов прицельными выстрелами в "..COLORS_KWords_ru.Weakspot_rgb_ru.." ни разу не промахнувшись. {#color(177, 144, 0)}+++ - Стреляйте врагам в голову. +++{#reset()}"..TALENTS_Enh_desc_penances_ru.ED_Headshot_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在單次火力騎射期間使用武器的次要動作命中敵人的弱點4次，且不打偏1發子彈。
	-- -- create_template("ach_red_vet_2_ext_desc_tw",
		-- -- {"loc_achievement_veteran_2_weakspot_hits_during_volley_fire_alternate_fire_description"}, {"zh-tw"},
			-- -- loc_text("於單次 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.volley_fire_rgb_tw.."』或『"..COLORS_KWords_tw.executioner_stance_rgb_tw.."』期間，\n使用瞄準射擊連續命中 "..COLORS_Numbers.target_rgb.." 名敵人的 "..COLORS_KWords_tw.Weakspot_rgb_tw.."，且不得中斷。" .. TALENTS_Enh_desc_penances_tw.ED_Headshot_rgb_tw)),

	-- --[+ Resupply Allies +]-- -- руоф Поделись с ближним
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_8_ext_ru",
		-- {"loc_achievement_veteran_2_easy_2_name"}, {"ru"},
			-- loc_text("Пополните припасы союзников")),
	-- --[+ Traditional Chinese 補給盟友 +]--
	-- create_template("ach_class_vet_8_ext_tw",
		-- {"loc_achievement_veteran_2_easy_2_name"}, {"zh-tw"},
			-- loc_text("補給盟友")),

	-- --[+ Replenish 5000 total ammunition to allies using Scavenger. +]-- -- руоф Пополните 5000 ед. боеприпасов союзникам при помощи «Собирателя».
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_8_ext_desc_ru",
		-- {"loc_achievement_veteran_2_easy_2_description"}, {"ru"},
			-- loc_text("Восстановите "..COLORS_Numbers.target_rgb.." единиц боеприпасов союзникам с помощью талантов "..COLORS_KWords_ru.scavenger_rgb_ru.." или "..COLORS_KWords_ru.survivalist_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用清道夫為盟友恢復5000總彈藥量。
	-- create_template("ach_class_vet_8_ext_desc_tw",
		-- {"loc_achievement_veteran_2_easy_2_description"}, {"zh-tw"},
			-- loc_text("透過 "..COLORS_KWords_tw.Aura_p_rgb_tw.."『"..COLORS_KWords_tw.scavenger_rgb_tw.."』或『"..COLORS_KWords_tw.survivalist_rgb_tw.."』，\n為隊友恢復 "..COLORS_Numbers.target_rgb.." 發彈藥。")),

	-- --[+ Find your Targets +]-- -- руоф Поиск целей
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_12_ext_ru",
		-- {"loc_achievement_veteran_2_hard_1_name"}, {"ru"},
			-- loc_text("Найди свои цели")),
	-- --[+ Traditional Chinese 尋找目標 +]--
	-- create_template("ach_class_vet_12_ext_tw",
		-- {"loc_achievement_veteran_2_hard_1_name"}, {"zh-tw"},
			-- loc_text("尋找目標")),

	-- --[+ On Heresy Threat or higher, kill 2 Elite or Specialist enemies during a single Volley Fire, 50 times. +]-- -- руоф При угрозе «Ересь» или выше убейте элитных врагов или специалистов (2) за одно применение «Залпового огня» 50 р.
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_12_ext_desc_ru",
		-- {"loc_achievement_veteran_2_hard_1_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, убейте "..COLORS_Numbers.num_enemies_rgb.." элитных врагов или специалистов во время непрерывного действия способностей "..COLORS_KWords_ru.volley_fire_rgb_ru.." или "..COLORS_KWords_ru.exec_stan_rgb_ru ..". Выполните это задание "..COLORS_Numbers.target_rgb.." раз.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下，
	-- -- 在單次火力齊射期中擊殺2個精英或專家敵人，需要達成50次。
	-- create_template("ach_class_vet_12_ext_desc_tw",
		-- {"loc_achievement_veteran_2_hard_1_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，\n於單次 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.volley_fire_rgb_tw.."』或『"..COLORS_KWords_tw.executioner_stance_rgb_tw.."』期間，\n擊殺 "..COLORS_Numbers.num_enemies_rgb.." 名精英或專家敵人。此任務共需達成 "..COLORS_Numbers.target_rgb.." 次。")),

	-- --[+ Killshot Ready +]--
	-- --[+ Russian +]--
	-- -- create_template("ach_class_vet_8_ext_ru",
		-- -- {"loc_achievement_veteran_enemies_killed_with_max_focus_fire_name"}, {"ru"},
			-- --loc_text("Смертельный выстрел готов")),
	-- --[+ Traditional Chinese 射殺預備 +]--
	-- -- create_template("ach_class_vet_8_ext_tw",
		-- -- {"loc_achievement_veteran_enemies_killed_with_max_focus_fire_name"}, {"zh-tw"},
			-- --loc_text("射殺預備")),

	-- --[+ Kill 2500 enemies while at 10 stacks of Marksman's focus or more. +]-- -- руоф Убейте врагов (2500), имея не менее 10 зарядов «Концентрации снайпера».
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_8_ext_desc_ru",
		-- {"loc_achievement_veteran_enemies_killed_with_max_focus_fire_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов, имея не менее "..COLORS_Numbers.n_10_rgb.." зарядов "..COLORS_KWords_ru.Focus_rgb_ru.." от ключевого таланта "..COLORS_KWords_ru.snipcon_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在疊加10曾獲更多層鷹眼聚焦時，擊殺2500名敵人。
	-- create_template("ach_class_vet_8_ext_desc_tw",
		-- {"loc_achievement_veteran_enemies_killed_with_max_focus_fire_description"}, {"zh-tw"},
			-- loc_text("在累積至少 "..COLORS_Numbers.n_10_rgb.." 層 "..COLORS_KWords_tw.KeyStone_p_rgb_tw.."『"..COLORS_KWords_tw.snipcon_rgb_tw.."』的 "..COLORS_KWords_tw.Focus_rgb_tw.." 時，\n擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Focus Soldier! +]-- -- руоф Солдат в прицеле!
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_8_ext_ru",
		-- {"loc_achievement_veteran_kills_with_improved_tag_name"}, {"ru"},
			-- loc_text("Прицелься, солдат!")),
	-- --[+ Traditional Chinese 士兵，鎖定目標! +]--
	-- -- create_template("ach_class_vet_8_ext_tw",
		-- -- {"loc_achievement_veteran_kills_with_improved_tag_name"}, {"zh-tw"},
			-- -- loc_text("士兵，鎖定目標!")),

	-- --[+ Kill 500 enemies tagged by Focus Target! +]-- -- руоф Убейте врагов (500), отмеченных эффектом «В прицеле!».
	-- --[+ Russian +]--
	-- create_template("ach_class_vet_8_ext_desc_ru",
		-- {"loc_achievement_veteran_kills_with_improved_tag_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов, отмеченных с помощью ключевого таланта "..COLORS_KWords_ru.fcs_trg_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊殺500名被「鎖定目標！」標記的敵人
	-- create_template("ach_class_vet_8_ext_desc_tw",
		-- {"loc_achievement_veteran_kills_with_improved_tag_description"}, {"zh-tw"},
			-- loc_text("擊殺 "..COLORS_Numbers.target_rgb.." 名被 "..COLORS_KWords_tw.KeyStone_p_rgb_tw.."『"..COLORS_KWords_tw.fcs_trg_rgb_tw.."』標記的敵人。")),

-- --[+ +ZEALOT - ИЗУВЕР+ +]--
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_0_ext_ru",
		-- {"loc_class_zealot_title"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_zea_rgb_ru)),
	-- --[+ Traditional Chinese 狂信徒 +]--
	-- create_template("ach_class_zea_0_ext_tw",
		-- {"loc_class_zealot_title"}, {"zh-tw"},
			-- loc_text(COLORS_KWords_tw.cls_zea_rgb_tw)),

-- --[+ ПРОГРЕСС - 進度 +]--
	-- --[+ Prove Your Worth (1-5) - Докажите, чего стоите (1-5) +]-- -- руоф Докажи, чего стоишь (1-5)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_4_ext_ru",
		-- -- {"loc_missions_zealot_2_easy_difficulty_1-5_name"}, {"ru"},
			-- -- loc_text("Докажите, чего стоите (1-5)")),
	-- --[+ Traditional Chinese 證明你的價值 +]--
	-- -- create_template("ach_class_zea_4_ext_tw",
		-- -- {"loc_missions_zealot_2_easy_difficulty_1-5_name"}, {"zh-tw"},
			-- -- loc_text("證明你的價值 (1-5)")),

	-- --[+ Complete 1 Missions on Sedition Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Мятеж» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_4_1_ext_desc_ru",
		-- {"loc_missions_zealot_2_easy_difficulty_1_description"}, {"ru"},
			-- loc_text(PHRS.cmpl_1_mssn_sedition_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在騷亂威脅度或更高難度下完成1個任務
	-- create_template("ach_class_zea_4_1_ext_desc_tw",
		-- {"loc_missions_zealot_2_easy_difficulty_1_description"}, {"zh-tw"},
			-- loc_text(PHRS.cmpl_1_mssn_sedition_tw)),

	-- --[+ Complete 1 Missions on Uprising Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Восстание» или выше.
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_4_2_ext_desc_ru",
		-- -- {"loc_missions_zealot_2_easy_difficulty_2_description"}, {"ru"},
			-- -- loc_text(PHRS.cmpl_1_mssn_uprising_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在起義威脅度或更高難度下完成1個任務
	-- -- create_template("ach_class_zea_4_2_ext_desc_tw",
		-- -- {"loc_missions_zealot_2_easy_difficulty_2_description"}, {"zh-tw"},
			-- -- loc_text(PHRS.cmpl_1_mssn_uprising_tw)),

	-- --[+ Complete 1 Missions on Malice Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Злоба» или выше.
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_4_3_ext_desc_ru",
		-- -- {"loc_missions_zealot_2_easy_difficulty_3_description"}, {"ru"},
			-- -- loc_text(PHRS.cmpl_1_mssn_malice_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下完成1個任務
	-- -- create_template("ach_class_vet_4_3_ext_desc_tw",
		-- -- {"loc_missions_zealot_2_easy_difficulty_3_description"}, {"zh-tw"},
			-- -- loc_text(PHRS.cmpl_1_mssn_malice_tw)),

	-- --[+ Complete 1 Missions on Heresy Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Ересь» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_4_4_ext_desc_ru",
		-- {"loc_missions_zealot_2_easy_difficulty_4_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下完成1個任務
	-- -- create_template("ach_class_zea_4_4_ext_desc_tw",
		-- -- {"loc_missions_zealot_2_easy_difficulty_4_description"}, {"zh-tw"},
			-- -- loc_text(PHRS.cmpl_1_mssn_heresy_tw)),

	-- --[+ Complete 1 Missions on Damnation Threat or higher. -  +]-- -- руоф Выполните задания (1) при угрозе «Проклятие» или выше.
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_4_5_ext_desc_ru",
		-- -- {"loc_missions_zealot_2_easy_difficulty_5_description"}, {"ru"},
			-- -- loc_text(PHRS.cmpl_1_mssn_damnation_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在詛咒威脅度或更高難度下完成1個任務
	-- -- create_template("ach_class_zea_4_5_ext_desc_tw",
		-- -- {"loc_missions_zealot_2_easy_difficulty_5_description"}, {"zh-tw"},
			-- -- loc_text(PHRS.cmpl_1_mssn_damnation_tw)),

	-- --[+ Sainted Path (1-3) - Путь святого (1-3) +]-- руоф Священный путь (1-3)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_14_ext_ru",
		-- -- {"loc_achievement_group_class_zealot_2_1-3_name"}, {"ru"},
			-- -- loc_text("Путь святого (1-3)")),
	-- --[+ Traditional Chinese 朝聖之路 (1-3) +]--
	-- -- create_template("ach_class_zea_14_ext_tw",
		-- -- {"loc_achievement_group_class_zealot_2_1-3_name"}, {"zh-tw"},
			-- -- loc_text("朝聖之路 (1-3)")),

	-- --[+ Complete the following Penances as the Zealot -  +]-- -- руоф Выполнить следующие искупления за Изувера.
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_9_ext_desc_ru",
		-- {"loc_group_zealot_2_rank_4_difficulty_3_description", "loc_group_zealot_2_rank_5_difficulty_4_description", "loc_group_zealot_2_rank_1_difficulty_1_description", "loc_group_zealot_2_rank_2_difficulty_2_description", "loc_achievement_group_class_zealot_2_description", "loc_group_class_challenges_zealot_2_x_description"}, {"ru"},
			-- loc_text("Завершите следующие Искупления "..COLORS_KWords_ru.cls_zea2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用狂信徒完成以下苦修
	-- create_template("ach_class_zea_9_ext_desc_tw",
		-- {"loc_group_zealot_2_rank_4_difficulty_3_description", "loc_group_zealot_2_rank_5_difficulty_4_description", "loc_group_zealot_2_rank_1_difficulty_1_description", "loc_group_zealot_2_rank_2_difficulty_2_description", "loc_achievement_group_class_zealot_2_description", "loc_group_class_challenges_zealot_2_x_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_zea2_rgb_tw.." 完成以下苦修。")),

	-- --[+ Master Your Tools -  +]-- -- руоф Знай свое дело
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_12_ext_ru",
		-- {"loc_achievement_zealot_2_hard_1_name"}, {"ru"},
			-- loc_text("Знай своё дело")),
	-- --[+ Traditional Chinese 掌握工具 +]--
	-- create_template("ach_class_zea_12_ext_tw",
		-- {"loc_achievement_zealot_2_hard_1_name"}, {"zh-tw"},
			-- loc_text("掌握工具")),

	-- --[+ On Heresy Threat or higher, kill 75 Elite or Specialist enemies with Powered Melee Attacks (Chain or Power weapons). -  +]-- -- руоф При угрозе «Ересь» или выше убейте элитных врагов или специалистов (75) усиленными атаками в ближнем бою (цепным или психосиловым оружием).
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_12_ext_desc_ru",
		-- {"loc_achievement_zealot_2_hard_1_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов в ближнем бою специальными атаками цепного или силового оружия.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下，使用動力近戰攻擊（鏈鋸或動力武器）擊殺75名精英或專家敵人。
	-- create_template("ach_class_zea_12_ext_desc_tw",
		-- {"loc_achievement_zealot_2_hard_1_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，\n使用特殊攻擊（鏈鋸系列、上古神刃），\n擊殺 "..COLORS_Numbers.target_rgb.." 名精英或專家敵人。")),

	-- --[+ Doomseeker (1-5) -  +]-- -- руоф Искатель судьбы (1-5)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_2_ext_ru",
		-- -- {"loc_achievement_missions_zealot_2_1-5_name"}, {"ru"},
			-- --loc_text("Искатель судьбы (1-5)")),
	-- --[+ Traditional Chinese 尋求毀滅者 +]--
	-- -- create_template("ach_class_zea_2_ext_tw",
		-- -- {"loc_achievement_missions_zealot_2_1-5_name"}, {"zh-tw"},
			-- --loc_text("尋求毀滅者 (1-5)")),

	-- --[+ Complete 100 Missions as a Zealot. -  +]-- -- Выполнить Изувером задания: 100.
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_2_ext_desc_ru",
		-- {"loc_achievement_missions_zealot_2_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий "..COLORS_KWords_ru.cls_zea2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用狂信徒完成xx項任務
	-- create_template("ach_class_zea_2_ext_desc_tw",
		-- {"loc_achievement_missions_zealot_2_x_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_zea2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Maniacal Laughter (6) -  +]-- -- руоф Маниакальный смех (6)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_1_ext_ru",
		-- -- {"loc_achievement_rank_zealot_2_6_name"}, {"ru"},
			-- --loc_text("Маниакальный смех (6)")),
	-- --[+ Traditional Chinese 瘋狂的笑聲 +]--

	-- --[+ Reach Trust Level 30 as a Zealot. -  +]-- -- руоф Заслужить уровень доверия 30, играя за Изувера.
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_1_ext_desc_ru",
		-- {"loc_achievement_rank_zealot_2_x_description"}, {"ru"},
			-- loc_text("Достигните "..COLORS_Numbers.target_rgb.." уровня доверия "..COLORS_KWords_ru.cls_zea2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用狂信徒達到信任等級xx
	-- create_template("ach_class_zea_1_ext_desc_tw",
		-- {"loc_achievement_rank_zealot_2_x_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_zea2_rgb_tw.." 達到信任等級 "..COLORS_Numbers.target_rgb.." 。")),

	-- --[+ Just A Flesh Wound - Просто царапина +]--
	-- --[+ Russian +]--
	-- -- create_template("ach_red_zea_7_ext_ru",
		-- -- {"loc_achievement_zealot_2_health_on_last_segment_enough_during_mission_name"}, {"ru"},
			-- -- loc_text("Просто царапина")),
	-- --[+ Traditional Chinese 只是皮外傷 +]--
	-- create_template("ach_red_zea_7_ext_tw",
		-- {"loc_achievement_zealot_2_health_on_last_segment_enough_during_mission_name"}, {"zh-tw"},
			-- loc_text("只是皮外傷")),

	-- --[+ Complete a full mission on Heresy Threat or higher in under 20 minutes, with less than a Wound's worth of Health remaining for 75% of the time. (Private Game: Penance can only be completed in a private game) - +]--
	-- --[+ Russian +]--
	-- create_template("ach_red_zea_7_ext_desc_ru",
		-- {"loc_achievement_zealot_2_health_on_last_segment_enough_during_mission_description"}, {"ru"},
			-- loc_text("Завершите полностью миссию на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, менее чем за "..COLORS_Numbers.time_wind_rgb.." минут, при этом "..COLORS_Numbers.health_pc_rgb.." времени у вас должно быть не более одного сегмента "..COLORS_KWords_ru.Wound_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端或更高威脅度下，在20分鐘內完成1次完整任務，且在75的時間內聲明職不能高於1個生命段。
	-- create_template("ach_red_zea_7_ext_desc_tw",
		-- {"loc_achievement_zealot_2_health_on_last_segment_enough_during_mission_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，在 "..COLORS_Numbers.time_wind_rgb.." 分鐘內完成整場任務，\n且其中 "..COLORS_Numbers.health_pc_rgb.." 的時間，只有一格 "..COLORS_KWords_tw.Health_rgb_tw.."。\n")),

	-- --[+ Up Close and Personal - С близкого расстояния +]--
	-- --[+ Russian +]--
	-- -- create_template("ach_red_zea_5_ext_ru",
		-- -- {"loc_achievement_zealot_2_not_use_ranged_attacks_name"}, {"ru"},
			-- -- loc_text("С близкого расстояния")),
	-- --[+ Traditional Chinese 零距離接觸 +]--
	-- create_template("ach_red_zea_5_ext_tw",
		-- {"loc_achievement_zealot_2_not_use_ranged_attacks_name"}, {"zh-tw"},
			-- loc_text("零距離接觸")),

	-- --[+ Complete a full Mission on Malice Threat or higher without firing a shot. -  +]-- -- При угрозе «Злоба» или выше полностью завершите задание, не сделав ни одного выстрела.
	-- --[+ Russian +]--
	-- create_template("ach_red_zea_5_ext_desc_ru",
		-- {"loc_achievement_zealot_2_not_use_ranged_attacks_description"}, {"ru"},
			-- loc_text("Завершите полностью миссию на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, не сделав ни одного выстрела.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端或更高威脅度下，在1槍不開的情況下完成1個完整任務。
	-- create_template("ach_red_zea_5_ext_desc_tw",
		-- {"loc_achievement_zealot_2_not_use_ranged_attacks_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，\n全程參與任務且不使用任何遠程攻擊。")),

	-- --[+ Fight the Good Fight (1-5) - Сражайтесь достойно (1-5) +]-- руоф Сражайся достойно (1-5)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_zea_1_ext_ru",
		-- -- {"loc_missions_zealot_2_medium_difficulty_1-5_name"}, {"ru"},
			-- -- loc_text("Сражайтесь достойно (1-5)")),
	-- --[+ Traditional Chinese 為正義而戰 +]--
	-- -- create_template("ach_red_zea_1_ext_tw",
		-- -- {"loc_missions_zealot_2_medium_difficulty_1-5_name"}, {"zh-tw"},
			-- -- loc_text("為正義而戰 (1-5)")),

	-- --[+ Complete 5 Missions on Sedition Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Мятеж» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_zea_1_1_ext_desc_ru",
		-- {"loc_missions_zealot_2_medium_difficulty_1_description"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_zea2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.sedition_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在騷亂威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_zea_1_1_ext_desc_tw",
		-- {"loc_missions_zealot_2_medium_difficulty_1_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.sedition_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_zea2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Uprising Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Восстание» или выше.
	-- --[+ Russian +]--	
	-- create_template("ach_red_zea_1_2_ext_desc_ru",
		-- {"loc_missions_zealot_2_medium_difficulty_2_description"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_zea2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.uprising_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在起義威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_zea_1_2_ext_desc_tw",
		-- {"loc_missions_zealot_2_medium_difficulty_2_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.uprising_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_zea2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Malice Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Злоба» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_zea_1_3_ext_desc_ru",
		-- {"loc_missions_zealot_2_medium_difficulty_3_description"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_zea2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_zea_1_3_ext_desc_tw",
		-- {"loc_missions_zealot_2_medium_difficulty_3_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_zea2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Heresy Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Ересь» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_zea_1_4_ext_desc_ru",
		-- {"loc_missions_zealot_2_medium_difficulty_4_description"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_zea2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_zea_1_4_ext_desc_tw",
		-- {"loc_missions_zealot_2_medium_difficulty_4_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_zea2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Damnation Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Проклятие» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_zea_1_5_ext_desc_ru",
		-- {"loc_missions_zealot_2_medium_difficulty_5_description"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_zea2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在詛咒威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_zea_1_5_ext_desc_tw",
		-- {"loc_missions_zealot_2_medium_difficulty_5_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.damnation_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_zea2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Find Their Weakness - Найди их слабости +]-- руоф Узнай их слабости
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_11_ext_ru",
		-- {"loc_achievement_zealot_2_medium_1_name"}, {"ru"},
			-- loc_text("Найди их слабости")),
	-- --[+ Traditional Chinese 洞悉弱點 +]--
	-- create_template("ach_class_zea_11_ext_tw",
		-- {"loc_achievement_zealot_2_medium_1_name"}, {"zh-tw"},
			-- loc_text("洞悉弱點")),

	-- --[+ On Malice Threat or higher, kill 75 Stunned enemies with Critical Hits. +]-- руоф При угрозе «Злоба» или выше убейте оглушенных врагов (75) критическими ударами.
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_11_ext_desc_ru",
		-- {"loc_achievement_zealot_2_medium_1_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Staggered_rgb_ru.." врагов "..COLORS_KWords_ru.Crit_hits_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下，使用致命一擊擊殺75個被眩暈的敵人
	-- create_template("ach_class_zea_11_ext_desc_tw",
		-- {"loc_achievement_zealot_2_medium_1_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，\n使用 "..COLORS_KWords_tw.Crit_k_rgb_tw.." 共 "..COLORS_Numbers.target_rgb.." 名處於 "..COLORS_KWords_tw.Staggered_rgb_tw.." 的敵人。")),

	-- --[+ Praise the God-Emperor! (1-3) +]-- руоф Хвала Богу-Императору! (1-3)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_3_ext_ru",
		-- -- {"loc_achievement_missions_zealot_2_objective_1-3_name"}, {"ru"},
			-- --loc_text("Хвала Богу-Императору! (1-3)")),
	-- --[+ Traditional Chinese 讚頌神皇！ +]--
	-- -- create_template("ach_class_zea_3_ext_tw",
		-- -- {"loc_achievement_missions_zealot_2_objective_1-3_name"}, {"zh-tw"},
			-- --loc_text("讚頌神皇！ (1-3)")),

	-- --[+ As a Zealot, complete a Mission of each type. +]-- руоф Выполнить Изувером по меньшей мере одно задание каждого типа.
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_3_1_ext_desc_ru",
		-- {"loc_achievement_missions_zealot_2_objective_1_description"}, {"ru"},
			-- loc_text("Завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_zea2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用狂信徒，完成每種類型的任務至少一項。
	-- create_template("ach_class_zea_3_1_ext_desc_tw",
		-- {"loc_achievement_missions_zealot_2_objective_1_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_zea2_rgb_tw.."，完成以下任務 "..COLORS_Numbers.n_1_rgb.." 次。")),

	-- --[+ As a Zealot, complete a Mission of each type on Malice Threat or higher. +]-- руоф Выполнить Изувером по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_3_3_ext_desc_ru",
		-- {"loc_achievement_missions_zealot_2_objective_2_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_zea2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下，使用狂信徒完成每種類型的任務至少一項。
	-- create_template("ach_class_zea_3_3_ext_desc_tw",
		-- {"loc_achievement_missions_zealot_2_objective_2_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_zea2_rgb_tw.." ，\n在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，完成以下任務 "..COLORS_Numbers.n_3_rgb.." 次。")),

	-- --[+ As a Zealot, complete a Mission of each type on Heresy Threat or higher. +]-- руоф Выполнить Изувером по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_3_4_ext_desc_ru",
		-- {"loc_achievement_missions_zealot_2_objective_3_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_zea2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下，使用狂信徒完成每種類型的任務至少一項。
	-- create_template("ach_class_zea_3_4_ext_desc_tw",
		-- {"loc_achievement_missions_zealot_2_objective_3_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_zea2_rgb_tw.." ，\n在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度下，完成以下任務 "..COLORS_Numbers.n_4_rgb.." 次。")),

-- --[+ +СПОСОБНОСТИ+ +]--
	-- --[+ Blessed be Thine Aim +]-- -- руоф Благословен будь твой прицел
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_7_ext_ru",
		-- -- {"loc_achievement_zealot_elite_or_special_kills_with_blade_of_faith_name"}, {"ru"},
			-- --loc_text("Благословен будь твой прицел")),
	-- --[+ Traditional Chinese 聖佑汝之瞄準 +]--
	-- create_template("ach_class_zea_7_ext_tw",
		-- {"loc_achievement_zealot_elite_or_special_kills_with_blade_of_faith_name"}, {"zh-tw"},
			-- loc_text("聖佑汝之瞄準")),

	-- --[+ Kill 500 Specialist and Elites using Blades of Faith. +]-- -- руоф Убейте особых и элитных врагов (500) с помощью «Клинков веры».
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_7_ext_desc_ru",
		-- -- {"loc_achievement_zealot_elite_or_special_kills_with_blade_of_faith_description"}, {"ru"},
			-- -- loc_text("Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов используя "..COLORS_KWords_ru.klinvery_rgb_ru.."."..TALENTS_Enh_desc_penances_ru.ED_Blessed_be_thine_aim_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 使用信仰之刃急殺500名專家或精英。
	-- -- create_template("ach_class_zea_7_ext_desc_tw",
		-- -- {"loc_achievement_zealot_elite_or_special_kills_with_blade_of_faith_description"}, {"zh-tw"},
			-- -- loc_text("使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.klinvery_rgb_tw.."』擊殺 "..COLORS_Numbers.target_rgb.." 名精英或特殊敵人。" .. TALENTS_Enh_desc_penances_tw.ED_Blessed_be_thine_aim_rgb_tw)),

	-- --[+ Behind Enemy Lines +]-- -- руоф В тылу врага
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_8_ext_ru",
		-- -- {"loc_achievement_zealot_aura_backstab_kills_while_alone_name"}, {"ru"},
			-- -- loc_text("В тылу врага")),
	-- --[+ Traditional Chinese 深入敵後 +]--
	-- create_template("ach_class_zea_8_ext_tw",
		-- {"loc_achievement_zealot_aura_backstab_kills_while_alone_name"}, {"zh-tw"},
			-- loc_text("深入敵後")),

	-- --[+ Kill 200 Ranged enemies with backstab, while not in Coherency while under the effect of the Loner ability. +]-- -- руоф Убейте врагов дальнего боя (200) ударом в спину, не находясь под действием «Сплоченности».
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_8_ext_desc_ru",
		-- {"loc_achievement_zealot_aura_backstab_kills_while_alone_description"}, {"ru"},
			-- loc_text("Убейте ударом в спину "..COLORS_Numbers.target_rgb.." врагов с дальнобойным оружием под эффектом ауры "..COLORS_KWords_ru.loner_rgb_ru..", пока вы не находитесь под действием "..COLORS_KWords_ru.Coherency_rgb_ru.." с другими союзниками.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在沒有協同中沒有的情況下，使用背刺急殺200名遠程敵人。
	-- create_template("ach_class_zea_8_ext_desc_tw",
		-- {"loc_achievement_zealot_aura_backstab_kills_while_alone_description"}, {"zh-tw"},
			-- loc_text("處於 "..COLORS_KWords_tw.Aura_p_rgb_tw.."『"..COLORS_KWords_tw.Coherency_rgb_tw.."』狀態且未受到『"..COLORS_KWords_tw.loner_rgb_tw.."』光環時，\n背刺擊殺 "..COLORS_Numbers.target_rgb.." 名遠程武器敵人。")),

	-- --[+ Inspiring Oratory - Вдохновляющая речь +]--
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_8_ext_ru",
		-- -- {"loc_achievement_zealot_team_toughness_restored_with_chorus_name"}, {"ru"},
			-- -- loc_text("Вдохновляющая речь")),
	-- --[+ Traditional Chinese 激勵演說 +]--
	-- create_template("ach_class_zea_8_ext_tw",
		-- {"loc_achievement_zealot_team_toughness_restored_with_chorus_name"}, {"zh-tw"},
			-- loc_text("激勵演說")),

	-- --[+ Restore 7500 toughness to other players using Chorus of Spir_I_tual Fortitude. +]-- -- руоф Восстановите другим игрокам 7500 стойкости с помощью «Хор духовной стойкости».
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_8_ext_desc_ru",
		-- {"loc_achievement_zealot_team_toughness_restored_with_chorus_description"}, {"ru"},
			-- loc_text("Восстановите другим игрокам "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." с помощью способности "..COLORS_KWords_ru.chorusosf_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用不區靈魂聖歌恢復其他玩家7500點韌性
	-- create_template("ach_class_zea_8_ext_desc_tw",
		-- {"loc_achievement_zealot_team_toughness_restored_with_chorus_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.chorusosf_rgb_tw.."』，\n恢復隊友共計 "..COLORS_Numbers.target_rgb.." 點 "..COLORS_KWords_tw.Toughness_rgb_tw.."。")),

	-- --[+ Trust in the Emperor +]-- руоф Верьте в Императора
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_8_ext_ru",
		-- {"loc_achievement_zealot_aura_corruption_healed_name"}, {"ru"},
			-- loc_text("Верь в Императора")),
	-- --[+ Traditional Chinese 相信帝皇 +]--
	-- create_template("ach_class_zea_8_ext_tw",
		-- {"loc_achievement_zealot_aura_corruption_healed_name"}, {"zh-tw"},
			-- loc_text("相信帝皇")),

	-- --[+ Heal 5000 Corruption Damage to allies in coherency under the effect of Beacon of Purity. +]-- -- руоф Исцелите урон скверной союзникам под воздействием «Сплоченности» (5000), находясь под действием «Маяка непорочности».
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_8_ext_desc_ru",
		-- {"loc_achievement_zealot_aura_corruption_healed_description"}, {"ru"},
			-- loc_text("Исцелите "..COLORS_Numbers.target_rgb.." урона от "..COLORS_KWords_ru.Corruption_i_rgb_ru.." союзникам под действием "..COLORS_KWords_ru.Coherency_rgb_ru.." с помощью эффекта ауры "..COLORS_KWords_ru.beaconop_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用純潔信標的效果治療協同中盟友5000點腐敗傷害。
	-- create_template("ach_class_zea_8_ext_desc_tw",
		-- {"loc_achievement_zealot_aura_corruption_healed_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Aura_p_rgb_tw.."『"..COLORS_KWords_tw.beaconop_rgb_tw.."』，並處於『"..COLORS_KWords_tw.Coherency_rgb_tw.."』狀態下，\n幫隊友恢復 "..COLORS_Numbers.target_rgb.." 點『"..COLORS_KWords_tw.Corruption_i_rgb_tw.."』。")),

	-- --[+ Stay Strong +]-- руоф Будь сильным
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_8_ext_ru",
		-- {"loc_achievement_zealot_2_easy_2_name"}, {"ru"},
			-- loc_text("Держись")),
	-- --[+ Traditional Chinese 保持堅強 +]--
	-- create_template("ach_class_zea_8_ext_tw",
		-- {"loc_achievement_zealot_2_easy_2_name"}, {"zh-tw"},
			-- loc_text("保持堅強")),

	-- --[+ Replenish 7500 Toughness using Chastise the Wicked. +]-- -- руоф Восстановите стойкость «Карой для нечестивых» 7500 р.
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_8_ext_desc_ru",
		-- {"loc_achievement_zealot_2_easy_2_description"}, {"ru"},
			-- loc_text("Восстановите "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru..", используя способности "..COLORS_KWords_ru.chast_wckd_rgb_ru.." или "..COLORS_KWords_ru.fury_faithful_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用懲戒邪惡後恢復7500點韌性。
	-- create_template("ach_class_zea_8_	ext_desc_tw",
		-- {"loc_achievement_zealot_2_easy_2_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.chastise_wicked_rgb_tw.."』或『"..COLORS_KWords_tw.fury_faithful_rgb_tw.."』恢復 "..COLORS_Numbers.target_rgb.." 點 "..COLORS_KWords_tw.Toughness_rgb_tw.."。")),

	-- --[+ There is Nothing But the Abyss... +]-- руоф Есть только бездна...
	-- --[+ Russian +]--
	-- -- create_template("ach_red_zea_6_ext_ru",
		-- -- {"loc_achievement_zealot_2_healed_up_after_resisting_death_name"}, {"ru"},
			-- --loc_text("Есть только бездна...")),
	-- --[+ Traditional Chinese 唯有深淵...... +]--
	-- create_template("ach_red_zea_6_ext_tw",
		-- {"loc_achievement_zealot_2_healed_up_after_resisting_death_name"}, {"zh-tw"},
			-- loc_text("唯有深淵......")),

	-- --[+ On Heresy threat or higher, heal to 25% Health with life gained solely from the Holy Revenant Talent. +]-- -- руоф При угрозе «Ересь» или выше восстановите 25% здоровья исключительно за счет таланта «Святой призрак».
	-- --[+ Russian +]--
	-- create_template("ach_red_zea_6_ext_desc_ru",
		-- {"loc_achievement_zealot_2_healed_up_after_resisting_death_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, вылечите до "..COLORS_Numbers.target_rgb..COLORS_Numbers.pc_rgb.." "..COLORS_KWords_ru.Wound_rgb_ru.." за счёт жизни, полученной исключительно от таланта "..COLORS_KWords_ru.holy_revenant_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- --在異端威脅度或更高難度下，使用神聖亡魂天賦恢復25生命值。
	-- create_template("ach_red_zea_6_ext_desc_tw",
		-- {"loc_achievement_zealot_2_healed_up_after_resisting_death_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，\n透過 "..COLORS_KWords_tw.Passive_p_rgb_tw.."『"..COLORS_KWords_tw.holy_revenant_rgb_tw.."』回血，將『"..COLORS_KWords_tw.Health_rgb_tw.."』恢復至 "..COLORS_Numbers.target_rgb..COLORS_Numbers.pc_rgb.."。")),

	-- --[+ Test of Faith +]-- руоф Испытание веры
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_7_ext_ru",
		-- -- {"loc_achievement_zealot_aura_toughness_damage_reduced_name"}, {"ru"},
			-- --loc_text("Испытание веры")),
	-- --[+ Traditional Chinese 信仰之試 +]--
	-- create_template("ach_class_zea_7_ext_tw",
		-- {"loc_achievement_zealot_aura_toughness_damage_reduced_name"}, {"zh-tw"},
			-- loc_text("信仰之試")),

	-- --[+ Reduce a total of 1500 Toughness Damage to allies in coherency under the effect of Benediction. +]-- -- руоф Снизьте урон стойкости союзникам под воздействием «Сплоченности» (суммарно 1500), находясь под действием «Благословения».
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_7_ext_desc_ru",
		-- {"loc_achievement_zealot_aura_toughness_damage_reduced_description"}, {"ru"},
			-- loc_text("Снизьте в общей сложности "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_dmg_rgb_ru.." союзников, находящихся под действием "..COLORS_KWords_ru.Coherency_rgb_ru..", с помощью ауры "..COLORS_KWords_ru.benedict_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 僅用恩賜效果減少協同中的盟友1500點韌性傷害
	-- create_template("ach_class_zea_7_ext_desc_tw",
		-- {"loc_achievement_zealot_aura_toughness_damage_reduced_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Aura_p_rgb_tw.."『"..COLORS_KWords_tw.benedict_rgb_tw.."』光環，\n與隊友處於『"..COLORS_KWords_tw.Coherency_rgb_tw.."』時，減少『"..COLORS_KWords_tw.Toughness_dmg_rgb_tw.."』共 "..COLORS_Numbers.target_rgb.." 點。")),

	-- --[+ Channel Your Rage +]-- руоф Направь свою ярость
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_12_ext_ru",
		-- -- {"loc_achievement_zealot_2_medium_2_name"}, {"ru"},
			-- -- loc_text("Направь свою ярость")),
	-- --[+ Traditional Chinese 引導憤怒 +]--
	-- create_template("ach_class_zea_12_ext_tw",
		-- {"loc_achievement_zealot_2_medium_2_name"}, {"zh-tw"},
			-- loc_text("引導憤怒")),

	-- --[+ On Malice Threat or higher, kill 1000 enemies with Melee Attacks whilst at at least 3 stacks of Martydom. +]-- -- руоф При угрозе «Злоба» или выше убейте врагов (1000) в ближнем бою, сохраняя не менее 3 ед. заряда «Мученичества».
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_12_ext_desc_ru",
		-- {"loc_achievement_zealot_2_medium_2_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов в ближнем бою, пока у вас есть хотя бы "..COLORS_Numbers.n_3_rgb.." заряда "..COLORS_KWords_ru.martydom_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下，在疊加至少3層殉道的情況下使用近戰攻擊擊殺1000個敵人。
	-- create_template("ach_class_zea_12_ext_desc_tw",
		-- {"loc_achievement_zealot_2_medium_2_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，\n於自身擁有 "..COLORS_Numbers.n_3_rgb.." 層以上 "..COLORS_KWords_tw.KeyStone_p_rgb_tw.."『"..COLORS_KWords_tw.martydom_rgb_tw.."』時，\n以近戰擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Have Faith +]-- руоф Не теряй веру
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_13_ext_ru",
		-- {"loc_achievement_zealot_2_hard_2_name"}, {"ru"},
			-- loc_text("Верь")),
	-- --[+ Traditional Chinese 心懷信仰 +]--
	-- create_template("ach_class_zea_13_ext_tw",
		-- {"loc_achievement_zealot_2_hard_2_name"}, {"zh-tw"},
			-- loc_text("心懷信仰")),

	-- --[+ On Heresy Threat or higher, using Chastise the Wicked, dash towards a targeted enemy that is wielding a ranged weapon, 40 times. +]-- руоф Используя «Кару для нечестивых», сделайте рывок в сторону противника с дистанционным оружием при угрозе «Ересь» и выше 40 р.
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_13_ext_desc_ru",
		-- {"loc_achievement_zealot_2_hard_2_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, используя способности "..COLORS_KWords_ru.chast_wckd_rgb_ru.." или "..COLORS_KWords_ru.fury_faithful_rgb_ru ..", сделайте рывок к врагу у которого в руках дальнобойное оружие. Выполните это задание "..COLORS_Numbers.target_rgb.." раз.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下，使用懲戒邪惡，衝向正在使用遠程武器敵人40次。
	-- create_template("ach_class_zea_13_ext_desc_tw",
		-- {"loc_achievement_zealot_2_hard_2_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，\n使用 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.chastise_wicked_rgb_tw.."』或『"..COLORS_KWords_tw.fury_faithful_rgb_tw.."』，\n衝刺靠近正在拿遠程武器的敵人旁，共需完成 "..COLORS_Numbers.target_rgb.." 次。")),

	-- --[+ Unseen Assassin +]-- руоф Незримый убийца
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_7_ext_ru",
		-- -- {"loc_achievement_zealot_elite_or_special_kills_with_shroudfield_name"}, {"ru"},
			-- -- loc_text("Незримый убийца")),
	-- --[+ Traditional Chinese 隱形刺客 +]--
	-- create_template("ach_class_zea_7_ext_tw",
		-- {"loc_achievement_zealot_elite_or_special_kills_with_shroudfield_name"}, {"zh-tw"},
			-- loc_text("隱形刺客")),

	-- --[+ Kill 150 Specialists or Elites by backstabbing them while using Shroudfield. +]-- руоф Убейте особых или элитных врагов (150) ответным ударом с помощью «Покрова».
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_7_ext_desc_ru",
		-- {"loc_achievement_zealot_elite_or_special_kills_with_shroudfield_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов ударом в спину под действием способности "..COLORS_KWords_ru.shroudf_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用隱密領域背刺急殺150專家或精英
	-- create_template("ach_class_zea_7_ext_desc_tw",
		-- {"loc_achievement_zealot_elite_or_special_kills_with_shroudfield_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.shroudf_rgb_tw.."』技能期間，\n以背刺擊殺 "..COLORS_Numbers.target_rgb.." 名精英或專家敵人。")),

	-- --[+ Purging Flames +]-- руоф Очищающее пламя
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_7_ext_ru",
		-- -- {"loc_achievement_zealot_kills_with_fire_grenade_name"}, {"ru"},
			-- -- loc_text("Очищающее пламя")),
	-- --[+ Traditional Chinese 淨化烈焰 +]--
	-- create_template("ach_class_zea_7_ext_tw",
		-- {"loc_achievement_zealot_kills_with_fire_grenade_name"}, {"zh-tw"},
			-- loc_text("淨化烈焰")),

	-- --[+ Burn 2000 enemies using the Immolation Grenade. +]-- руоф Сожгите врагов (2000) с помощью «Жертвенной гранаты».
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_7_ext_desc_ru",
		-- {"loc_achievement_zealot_kills_with_fire_grenade_description"}, {"ru"},
			-- loc_text("Сожгите "..COLORS_Numbers.target_rgb.." врагов с помощью "..COLORS_KWords_ru.fire_gren_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用獻祭手榴彈燒死2000名敵人
	-- create_template("ach_class_zea_7_ext_desc_tw",
		-- {"loc_achievement_zealot_kills_with_fire_grenade_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.fire_gren_rgb_tw.."』燒死 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Buying Time +]-- руоф Передышка
	-- --[+ Russian +]--
	-- -- create_template("ach_red_zea_2_ext_ru",
		-- -- {"loc_achievement_zealot_2_stagger_sniper_with_grenade_distance_name"}, {"ru"},
			-- -- loc_text("Выиграй время")),
	-- --[+ Traditional Chinese 爭取時間 +]--
	-- create_template("ach_red_zea_2_ext_tw",
		-- {"loc_achievement_zealot_2_stagger_sniper_with_grenade_distance_name"}, {"zh-tw"},
			-- loc_text("爭取時間")),

	-- --[+ Using a Stun Grenade, hit an enemy sniper more than 40 metres away. +]-- руоф Поразите вражеского снайпера на расстоянии более 40 м, используя оглушающую гранату.
	-- --[+ Russian +]--
	-- -- create_template("ach_red_zea_2_ext_desc_ru",
		-- -- {"loc_achievement_zealot_2_stagger_sniper_with_grenade_distance_description"}, {"ru"},
			-- -- loc_text("Используя "..COLORS_KWords_ru.shock_gren1_rgb_ru.." или "..COLORS_KWords_ru.shock_gren0_rgb_ru..", поразите вражеского снайпера на расстоянии более "..COLORS_Numbers.target_rgb.." метров."..TALENTS_Enh_desc_penances_ru.ED_Buying_time_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 使用眩暈手雷，集中40米外的敵方狙擊手。
	-- -- create_template("ach_red_zea_2_ext_desc_tw",
		-- -- {"loc_achievement_zealot_2_stagger_sniper_with_grenade_distance_description"}, {"zh-tw"},
			-- -- loc_text("使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.shock_gren1_rgb_tw.."』或『"..COLORS_KWords_tw.shock_gren0_rgb_tw.."』，\n擊中距離超過 "..COLORS_Numbers.target_rgb.." 公尺的敵方狙擊手。" .. TALENTS_Enh_desc_penances_tw.ED_Buying_time_rgb_tw)),

	-- --[+ Righteous Anger +]-- руоф Праведный гнев
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_7_ext_ru",
		-- -- {"loc_achievement_zealot_elite_or_special_kills_during_fanatic_rage_name"}, {"ru"},
			-- -- loc_text("Праведный гнев")),
	-- --[+ Traditional Chinese 正義之怒 +]--
	-- create_template("ach_class_zea_7_ext_tw",
		-- {"loc_achievement_zealot_elite_or_special_kills_during_fanatic_rage_name"}, {"zh-tw"},
			-- loc_text("正義之怒")),

	-- --[+ Kill 2000 enemies while in Fury. +]-- руоф Убейте врагов (2000), находясь под действием «Ярости».
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_7_ext_desc_ru",
		-- {"loc_achievement_zealot_elite_or_special_kills_during_fanatic_rage_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов, находясь под действием эффекта "..COLORS_KWords_ru.fanrage_rgb_ru.." от ключевого таланта "..COLORS_KWords_ru.blazingp_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在狂怒狀態下擊殺2000名敵人
	-- create_template("ach_class_zea_7_ext_desc_tw",
		-- {"loc_achievement_zealot_elite_or_special_kills_during_fanatic_rage_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.fanrage_rgb_tw.."』發動期間，\n擊殺 "..COLORS_Numbers.target_rgb.." 名敵人，\n該效果來自 "..COLORS_KWords_tw.KeyStone_p_rgb_tw.."『"..COLORS_KWords_tw.blazingp_rgb_tw.."』。")),

	-- --[+ Abhor the Mutant +]-- руоф Презирай Мутантов
	-- --[+ Russian +]--
	-- create_template("ach_red_zea_3_ext_ru",
		-- {"loc_achievement_zelot_2_kill_mutant_charger_with_melee_while_dashing_name"}, {"ru"},
			-- loc_text("Презри мутанта")),
	-- --[+ Traditional Chinese 憎恨變種人 +]--
	-- create_template("ach_red_zea_3_ext_tw",
		-- {"loc_achievement_zelot_2_kill_mutant_charger_with_melee_while_dashing_name"}, {"zh-tw"},
			-- loc_text("憎恨變種人")),

	-- --[+ While Dashing with Chastise The Wicked, kill a Mutant with a Melee Attack. +]-- руоф Убейте мутанта атакой в ближнем бою во время рывка, пока действует «Кара для нечестивых».
	-- --[+ Russian +]--
	-- create_template("ach_red_zea_3_ext_desc_ru",
		-- {"loc_achievement_zelot_2_kill_mutant_charger_with_melee_while_dashing_description"}, {"ru"},
			-- loc_text("Во время рывка с помощью способностей "..COLORS_KWords_ru.chast_wckd_rgb_ru.." или "..COLORS_KWords_ru.fury_faithful_rgb_ru.." убейте Мутанта атакой ближнего боя.")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用懲戒邪惡的衝刺期間，使用近戰攻擊擊殺1個變種人。
	-- create_template("ach_red_zea_3_ext_desc_tw",
		-- {"loc_achievement_zelot_2_kill_mutant_charger_with_melee_while_dashing_description"}, {"zh-tw"},
			-- loc_text("在 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.chastise_wicked_rgb_tw.."』或『"..COLORS_KWords_tw.fury_faithful_rgb_tw.."』發動時，\n以近戰攻擊擊殺一個變種人。")),

	-- --[+ Control Crowds +]-- руоф Сдерживание толпы
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_7_ext_ru",
		-- {"loc_achievement_zealot_2_easy_1_name"}, {"ru"},
			-- loc_text("Управление толпой")),
	-- --[+ Traditional Chinese 群體控制 +]--
	-- create_template("ach_class_zea_7_ext_tw",
		-- {"loc_achievement_zealot_2_easy_1_name"}, {"zh-tw"},
			-- loc_text("群體控制")),

	-- --[+ Stun 1500 enemies using Stun Grenades. +]-- руоф Оглушите врагов (1500) оглушающими гранатами.
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_7_ext_desc_ru",
		-- {"loc_achievement_zealot_2_easy_1_description"}, {"ru"},
			-- loc_text("Оглушите "..COLORS_Numbers.target_rgb.." врагов, используя "..COLORS_KWords_ru.shock_gren1_rgb_ru.." или "..COLORS_KWords_ru.shock_gren0_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用眩暈手雷眩暈1500個敵人
	-- create_template("ach_class_zea_7_ext_desc_tw",
		-- {"loc_achievement_zealot_2_easy_1_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.shock_gren1_rgb_tw.."』或『"..COLORS_KWords_tw.shock_gren0_rgb_tw.."』，\n暈眩 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Lethal Pursuit +]-- руоф Смертоносное преследование
	-- --[+ Russian +]--
	-- -- create_template("ach_class_zea_7_ext_ru",
		-- -- {"loc_achievement_zealot_kills_during_movement_keystone_activated_name"}, {"ru"},
			-- -- loc_text("Смертоносное преследование")),
	-- --[+ Traditional Chinese 致命追緝 +]--
	-- create_template("ach_class_zea_7_ext_tw",
		-- {"loc_achievement_zealot_kills_during_movement_keystone_activated_name"}, {"zh-tw"},
			-- loc_text("致命追緝")),

	-- --[+ Kill 250 Specialist and Elite enemies while at 15 stacks of Inexorable Judgement or above. +]-- руоф Убейте особых и элитных врагов (250), имея не менее 15 зарядов «Безжалостного приговора».
	-- --[+ Russian +]--
	-- create_template("ach_class_zea_7_ext_desc_ru",
		-- {"loc_achievement_zealot_kills_during_movement_keystone_activated_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов, имея не менее "..COLORS_Numbers.n_15_rgb.." зарядов "..COLORS_KWords_ru.momentum_rgb_ru.." от ключевого таланта "..COLORS_KWords_ru.inexor_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在疊加15層或更多層命定審判時，擊殺250名專家和精英。
	-- create_template("ach_class_zea_7_ext_desc_tw",
		-- {"loc_achievement_zealot_kills_during_movement_keystone_activated_description"}, {"zh-tw"},
			-- loc_text("擁有 "..COLORS_Numbers.n_15_rgb.." 層『"..COLORS_KWords_tw.momentum_rgb_tw.."』時，擊殺 "..COLORS_Numbers.target_rgb.." 名精英或專家敵人，\n來源為"..COLORS_KWords_tw.KeyStone_p_rgb_tw.."『"..COLORS_KWords_tw.inexor_rgb_tw.."』。")),

	-- --[+ Shocking Stuff +]-- руоф Шокирующая штучка
	-- --[+ Russian +]--
	-- -- create_template("ach_red_zea_4_ext_ru",
		-- -- {"loc_achievement_zealot_2_kills_of_shocked_enemies_last_15_name"}, {"ru"},
			-- -- loc_text("Шокирующие штуки")),
	-- --[+ Traditional Chinese 震撼之擊 +]--
	-- create_template("ach_red_zea_4_ext_tw",
		-- {"loc_achievement_zealot_2_kills_of_shocked_enemies_last_15_name"}, {"zh-tw"},
			-- loc_text("震撼之擊")),

	-- --[+ On Malice Threat or higher, kill 40 enemies stunned by your grenades, within 10s. +]-- руоф При угрозе «Злоба» или выше убейте врагов (40), оглушенных вашими гранатами, за 10 с.
	-- --[+ Russian +]--
	-- create_template("ach_red_zea_4_ext_desc_ru",{"loc_achievement_zealot_2_kills_of_shocked_enemies_last_15_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов, оглушённых вашими гранатами, в течение "..COLORS_Numbers.time_wind_rgb.." секунд.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端或更高威脅度下，在10秒內擊殺40個被你手雷眩暈的敵人。
	-- create_template("ach_red_zea_4_ext_desc_tw",
		-- {"loc_achievement_zealot_2_kills_of_shocked_enemies_last_15_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，於 "..COLORS_Numbers.time_wind_rgb.." 秒內擊殺 "..COLORS_Numbers.target_rgb.." 名，\n被 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.shock_gren0_rgb_tw.."』、『"..COLORS_KWords_tw.shock_gren1_rgb_tw.."』"..COLORS_KWords_tw.Staggers_rgb_tw.." 的敵人。")),

-- --[+ ++PSYKER - ПСАЙКЕР++ +]--
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_0_ext_ru",
		-- {"loc_class_psyker_title"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_psy_rgb_ru)),
	-- --[+ Traditional Chinese 靈能者 +]--
	-- create_template("ach_class_psy_0_ext_tw",
		-- {"loc_class_psyker_title"}, {"zh-tw"},
			-- loc_text(COLORS_KWords_tw.cls_psy_rgb_tw)),

-- --[+ ++PROGRESS - ПРОГРЕСС++ +]--
	-- --[+ Prove Your Worth (1-5) +]-- руоф Докажи, чего стоишь (1-5)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_4_ext_ru",
		-- -- {"loc_missions_psyker_2_easy_difficulty_1-5_name"}, {"ru"},
			-- --loc_text("Докажите, чего стоите (1-5)")),
	-- --[+ Traditional Chinese 證明你的價值 (1-5) +]--
	-- -- create_template("ach_class_psy_4_ext_tw",
		-- -- {"loc_missions_psyker_2_easy_difficulty_1-5_name"}, {"zh-tw"},
			-- --loc_text("證明你的價值 (1-5)")),

	-- --[+ Complete 1 Missions on Sedition Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Мятеж» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_4_1_ext_desc_ru",
		-- {"loc_missions_psyker_2_easy_difficulty_1_description"}, {"ru"},
			-- loc_text(PHRS.cmpl_1_mssn_sedition_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在騷亂威脅度或更高難度下完成1個任務
	-- create_template("ach_class_psy_4_1_ext_desc_tw",
		-- {"loc_missions_psyker_2_easy_difficulty_1_description"}, {"zh-tw"},
			-- loc_text(PHRS.cmpl_1_mssn_sedition_tw)),

	-- --[+ Complete 1 Missions on Uprising Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Восстание» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_4_2_ext_desc_ru",
		-- {"loc_missions_psyker_2_easy_difficulty_2_description"}, {"ru"},
			-- loc_text(PHRS.cmpl_1_mssn_uprising_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在起義威脅度或更高難度下完成1個任務
	-- create_template("ach_class_psy_4_2_ext_desc_tw",
		-- {"loc_missions_psyker_2_easy_difficulty_2_description"}, {"zh-tw"},
			-- loc_text(PHRS.cmpl_1_mssn_uprising_tw)),

	-- --[+ Complete 1 Missions on Malice Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Злоба» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_4_3_ext_desc_ru",
		-- {"loc_missions_psyker_2_easy_difficulty_3_description"}, {"ru"},
			-- loc_text(PHRS.cmpl_1_mssn_malice_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下完成1個任務
	-- create_template("ach_class_psy_4_3_ext_desc_tw",
		-- {"loc_missions_psyker_2_easy_difficulty_3_description"}, {"zh-tw"},
			-- loc_text(PHRS.cmpl_1_mssn_malice_tw)),

	-- --[+ Complete 1 Missions on Heresy Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Ересь» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_4_4_ext_desc_ru",
		-- {"loc_missions_psyker_2_easy_difficulty_4_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下完成1個任務
	-- create_template("ach_class_psy_4_4_ext_desc_tw",
		-- {"loc_missions_psyker_2_easy_difficulty_4_description"}, {"zh-tw"},
			-- loc_text(PHRS.cmpl_1_mssn_heresy_tw)),

	-- --[+ Complete 1 Missions on Damnation Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Проклятие» или выше.
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_4_5_ext_desc_ru",
		-- -- {"loc_missions_psyker_2_easy_difficulty_5_description"}, {"ru"},
			-- -- loc_text(PHRS.cmpl_1_mssn_damnation_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在詛咒威脅度或更高難度下完成1個任務
	-- -- create_template("ach_class_psy_4_5_ext_desc_tw",
		-- -- {"loc_missions_psyker_2_easy_difficulty_5_description"}, {"zh-tw"},
			-- -- loc_text(PHRS.cmpl_1_mssn_damnation_tw)),

	-- --[+ Kinetic Killer (1-3) +]-- руоф Кинетический убийца (1-3)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_14_ext_ru",
		-- -- {"loc_achievement_group_class_psyker_2_1-3_name"}, {"ru"},
			-- --loc_text("Кинетический убийца (1-3)")),
	-- --[+ Traditional Chinese 靈能殺手 (1-3) +]--
	-- -- create_template("ach_class_psy_14_ext_tw",
		-- -- {"loc_achievement_group_class_psyker_2_1-3_name"}, {"zh-tw"},
			-- --loc_text("靈能殺手 (1-3)")),

	-- --[+ Complete the following Penances as the Psyker. +]-- руоф Выполните следующие искупления за Псайкера.
	-- --[+ Russian +]--
	-- create_template("ach_red_psy_8_ext_desc_ru",
		-- {"loc_group_class_challenges_psyker_2_x_description", "loc_achievement_group_class_psyker_2_description", "loc_group_psyker_2_rank_4_difficulty_3_description", "loc_group_psyker_2_rank_5_difficulty_4_description", "loc_group_psyker_2_rank_1_difficulty_1_description","loc_group_psyker_2_rank_2_difficulty_2_description"}, {"ru"},
			-- loc_text("Завершите следующие Искупления "..COLORS_KWords_ru.cls_psy2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用靈能者完成以下苦修
	-- create_template("ach_red_psy_8_ext_desc_tw",
		-- {"loc_group_psyker_2_rank_4_difficulty_3_description", "loc_group_psyker_2_rank_5_difficulty_4_description", "loc_group_psyker_2_rank_1_difficulty_1_description", "loc_group_psyker_2_rank_2_difficulty_2_description", "loc_achievement_group_class_psyker_2_description", "loc_group_class_challenges_psyker_2_x_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_psy2_rgb_tw.." 完成以下苦修。")),

	-- --[+ Unleash the Warp - Высвободи варп +]-- руоф Извергни варп
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_12_ext_ru",
		-- {"loc_achievement_psyker_2_medium_2_name"}, {"ru"},
			-- loc_text("Высвободи варп")),
	-- --[+ Traditional Chinese 亞空間釋放 +]--
	-- create_template("ach_class_psy_12_ext_tw",
		-- {"loc_achievement_psyker_2_medium_2_name"}, {"zh-tw"},
			-- loc_text("亞空間釋放")),

	-- --[+ On Malice Threat or higher, kill 2500 enemies with Warp attacks. +]-- руоф При угрозе «Злоба» или выше убейте врагов (2500) варп-атаками.
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_12_ext_desc_ru",
		-- -- {"loc_achievement_psyker_2_medium_2_description"}, {"ru"},
			-- -- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." врагов варп-атаками."..TALENTS_Enh_desc_penances_ru.ED_Unleash_warp_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下，使用亞空間攻擊擊殺2500個敵人。
	-- -- create_template("ach_class_psy_12_ext_desc_tw",
		-- -- {"loc_achievement_psyker_2_medium_2_description"}, {"zh-tw"},
			-- -- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，\n使用 "..COLORS_KWords_tw.Damagewrp_a_rgb_tw.." 擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。"..TALENTS_Enh_desc_penances_tw.ED_Unleash_warp_rgb_tw)),

	-- --[+ Keep Your Distance +]-- руоф Не подходи близко
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_13_ext_ru",
		-- {"loc_achievement_psyker_2_hard_2_name"}, {"ru"},
			-- loc_text("Держи дистанцию")),
	-- --[+ Traditional Chinese 保持距離 +]--
	-- create_template("ach_class_psy_13_ext_tw",
		-- {"loc_achievement_psyker_2_hard_2_name"}, {"zh-tw"},
			-- loc_text("保持距離")),

	-- --[+ On Heresy Threat or higher, complete 3 full Missions without being hit in melee by an Elite enemy. +]-- руоф При угрозе «Ересь» или выше полностью выполните задание 3 р., чтобы элитный враг ни разу не попал по вам в ближнем бою.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_13_ext_desc_ru",
		-- {"loc_achievement_psyker_2_hard_2_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите полностью "..COLORS_Numbers.target_rgb.." миссии без получения ударов в ближнем бою от элитных врагов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下，不被精英敵人近戰命中的情況下完成3個任務。
	-- create_template("ach_class_psy_13_ext_desc_tw",
		-- {"loc_achievement_psyker_2_hard_2_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，\n完成 "..COLORS_Numbers.target_rgb.." 場任務，且未曾被精英敵人以近戰攻擊命中。")),

	-- --[+ Cliffhanger +]-- руоф Не подходи близко
	-- --[+ Russian +]--
	-- create_template("ach_red_psy_3_ext_ru",
		-- {"loc_achievement_psyker_2_edge_kills_last_2_sec_name"}, {"ru"},
			-- loc_text("Неожиданный поворот")),
	-- --[+ Traditional Chinese 懸崖邊緣 +]--
	-- create_template("ach_red_psy_3_ext_tw",
		-- {"loc_achievement_psyker_2_edge_kills_last_2_sec_name"}, {"zh-tw"},
			-- loc_text("懸崖邊緣")),

	-- --[+ Kill 7 enemies within 2s by knocking them off a ledge. +]-- руоф Убейте врагов (7) за 2 с., сбросив их с уступа.
	-- --[+ Russian +]--
	-- -- create_template("ach_red_psy_3_ext_desc_ru",
		-- -- {"loc_achievement_psyker_2_edge_kills_last_2_sec_description"}, {"ru"},
			-- -- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов в течение "..COLORS_Numbers.time_wind_rgb.." секунд, сбросив их с уступа."..TALENTS_Enh_desc_penances_ru.ED_Cliffhanger_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在2秒內透過將敵人從邊緣擊落擊殺7名敵人。
	-- -- create_template("ach_red_psy_3_ext_desc_tw",
		-- -- {"loc_achievement_psyker_2_edge_kills_last_2_sec_description"}, {"zh-tw"},
			-- -- loc_text("在 "..COLORS_Numbers.time_wind_rgb.." 秒內，將 "..COLORS_Numbers.target_rgb.." 名敵人推落邊緣擊殺。" .. TALENTS_Enh_desc_penances_tw.ED_Cliffhanger_rgb_tw)),

	-- --[+ Lifeleech (1-5) +]-- руоф Похититель жизни (1-5)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_2_ext_ru",
		-- -- {"loc_achievement_missions_psyker_2_1-5_name"}, {"ru"},
			-- --loc_text("Похититель жизни (1-5)")),
	-- --[+ Traditional Chinese 生命榨取 +]--
	-- -- create_template("ach_class_psy_2_ext_tw",
		-- -- {"loc_achievement_missions_psyker_2_1-5_name"}, {"zh-tw"},
			-- --loc_text("生命榨取 (1-5)")),

	-- --[+ Complete 100 Missions as a Psyker. +]-- руоф Выполнить Псайкером задания: 100.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_2_ext_desc_ru",
		-- {"loc_achievement_missions_psyker_2_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий "..COLORS_KWords_ru.cls_psy2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用靈能者完成xx項任務。
	-- create_template("ach_class_psy_2_ext_desc_tw",
		-- {"loc_achievement_missions_psyker_2_x_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_psy2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Touch the Void (1-3) +]-- руоф Прикоснись к пустоте (1-3)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_3_ext_ru",
		-- -- {"loc_achievement_missions_psyker_2_objective_1-3_name"}, {"ru"},
			-- --loc_text("Коснись Пустоты (1-3)")),
	-- --[+ Traditional Chinese 觸碰虛空 +]--
	-- -- create_template("ach_class_psy_3_ext_tw",
		-- -- {"loc_achievement_missions_psyker_2_objective_1-3_name"}, {"zh-tw"},
			-- --loc_text("觸碰虛空 (1-3)")),

	-- --[+ As a Psyker, complete a Mission of each type. +]-- руоф Выполнить Псайкером по меньшей мере одно задание каждого типа.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_3_1_ext_desc_ru",
		-- {"loc_achievement_missions_psyker_2_objective_1_description"}, {"ru"},
			-- loc_text("Завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_psy2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用靈能者，完成每種類型的任務至少一項。
	-- create_template("ach_class_psy_3_1_ext_desc_tw",
		-- {"loc_achievement_missions_psyker_2_objective_1_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_psy2_rgb_tw.."，完成以下任務 "..COLORS_Numbers.n_1_rgb.." 次。")),

	-- --[+ As a Psyker, complete a Mission of each type on Malice Threat or higher. +]-- руоф Выполнить Псайкером по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_3_2_ext_desc_ru",
		-- {"loc_achievement_missions_psyker_2_objective_2_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_psy2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下，使用靈能者完成每種類型的任務至少一項。
	-- create_template("ach_class_psy_3_2_ext_desc_tw",
		-- {"loc_achievement_missions_psyker_2_objective_2_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_psy2_rgb_tw.." ，\n在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，完成以下任務 "..COLORS_Numbers.n_3_rgb.." 次。")),

	-- --[+ As a Psyker, complete a Mission of each type on Heresy Threat or higher. +]-- руоф Выполнить Псайкером по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_3_3_ext_desc_ru",
		-- {"loc_achievement_missions_psyker_2_objective_3_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_psy2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下，使用靈能者完成每種類型的任務至少一項。
	-- create_template("ach_class_psy_3_3_ext_desc_tw",
		-- {"loc_achievement_missions_psyker_2_objective_3_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_psy2_rgb_tw.." ，\n在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度下，完成以下任務 "..COLORS_Numbers.n_3_rgb.." 次。")),

	-- --[+ Mind over Matter (1-6) +]-- руоф Разум превыше материи (1-6)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_1_ext_ru",
		-- -- {"loc_achievement_rank_psyker_2_1-6_name"}, {"ru"},
			-- --loc_text("Разум превыше материи (1-6)")),
	-- --[+ Traditional Chinese 心勝於物 (1-6) +]--
	-- -- create_template("ach_class_psy_1_ext_tw",
		-- -- {"loc_achievement_rank_psyker_2_1-6_name"}, {"zh-tw"},
			-- --loc_text("心勝於物 (1-6)")),

	-- --[+ Reach Trust Level 30 as a Psyker. +]-- руоф Заслужить уровень доверия 30, играя за Псайкера.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_1_ext_desc_ru",
		-- {"loc_achievement_rank_psyker_2_x_description"}, {"ru"},
			-- loc_text("Достигните "..COLORS_Numbers.target_rgb.." уровня доверия "..COLORS_KWords_ru.cls_psy2_rgb_ru..".")),
	-- -- [+ Traditional Chinese +]--
	-- -- 使用靈能者達到信任等級xx
	-- create_template("ach_class_psy_1_ext_desc_tw",
		-- {"loc_achievement_rank_psyker_2_x_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_psy2_rgb_tw.." 達到信任等級 "..COLORS_Numbers.target_rgb.." 。")),

	-- --[+ Fight the Good Fight (1-5) +]-- руоф Сражайся достойно (1-5)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_psy_1_ext_ru",
		-- -- {"loc_missions_psyker_2_medium_difficulty_1-5_name"}, {"ru"},
			-- -- loc_text("Сражайтесь достойно (1-5)")),
	-- --[+ Traditional Chinese 為了正義而戰 +]--
	-- -- create_template("ach_red_psy_1_ext_tw",
		-- -- {"loc_missions_psyker_2_medium_difficulty_1-5_name"}, {"zh-tw"},
			-- -- loc_text("為了正義而戰 (1-5)")),

	-- --[+ Complete 5 Missions on Sedition Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Мятеж» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_psy_1_1_ext_desc_ru",
		-- {"loc_missions_psyker_2_medium_difficulty_1_description"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_psy2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.sedition_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在騷亂威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_psy_1_1_ext_desc_tw",
		-- {"loc_missions_psyker_2_medium_difficulty_1_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.sedition_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_psy2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Uprising Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Восстание» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_psy_1_2_ext_desc_ru",
		-- {"loc_missions_psyker_2_medium_difficulty_2_description"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_psy2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.uprising_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在起義威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_psy_1_2_ext_desc_tw",
		-- {"loc_missions_psyker_2_medium_difficulty_2_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.uprising_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_psy2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Malice Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Злоба» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_psy_1_3_ext_desc_ru",
		-- {"loc_missions_psyker_2_medium_difficulty_3_description"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_psy2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_psy_1_3_ext_desc_tw",
		-- {"loc_missions_psyker_2_medium_difficulty_3_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_psy2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Heresy Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Ересь» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_psy_1_4_ext_desc_ru",
		-- {"loc_missions_psyker_2_medium_difficulty_4_description"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_psy2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_psy_1_4_ext_desc_tw",
		-- {"loc_missions_psyker_2_medium_difficulty_4_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_psy2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Damnation Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Проклятие» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_psy_1_5_ext_desc_ru",
		-- {"loc_missions_psyker_2_medium_difficulty_5_description"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_psy2_rgb_ru.." завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在詛咒威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_psy_1_5_ext_desc_tw",
		-- {"loc_missions_psyker_2_medium_difficulty_5_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.damnation_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_psy2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

-- --[+ +СПОСОБНОСТИ+ +]--
	-- --[+ Charged with Purpose +]-- руоф Заряженные целью
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_7_ext_ru",
		-- -- {"loc_achievement_psyker_threshold_kills_reached_with_grenade_chain_name"}, {"ru"},
			-- --loc_text("Заряженные целью")),
	-- --[+ Traditional Chinese 壓倒性的存在 +]--
	-- create_template("ach_class_psy_7_ext_tw",
		-- {"loc_achievement_psyker_threshold_kills_reached_with_grenade_chain_name"}, {"zh-tw"},
			-- loc_text("壓倒性的存在")),

	-- --[+ Kill 2500 enemies stunned by your Smite. Kills made by your Smite. Kills made by your team members also count. +]-- руоф Убейте врагов (2500), оглушенных вашим «Сокрушением». Убийства, совершенные членами команды, тоже учитываются.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_desc_ru",
		-- {"loc_achievement_psyker_threshold_kills_reached_with_grenade_chain_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов, оглушённых вашим блицом "..COLORS_KWords_ru.smite_rgb_ru..". Убийства, совершённые членами вашей команды, также учитываются.")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊殺2500名受你懲戒眩暈的敵人。由小隊成員造成的擊殺也算。
	-- create_template("ach_class_psy_7_ext_desc_tw",
		-- {"loc_achievement_psyker_threshold_kills_reached_with_grenade_chain_description"}, {"zh-tw"},
			-- loc_text("擊殺 "..COLORS_Numbers.target_rgb.." 名被 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.smite_rgb_tw.."』"..COLORS_KWords_tw.Staggers_rgb_tw.." 的敵人。\n由隊友擊殺的也會計算。")),

	-- --[+ Defy Fate +]-- руоф Брось вызов судьбе
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_7_ext_ru",
		-- -- {"loc_achievement_psyker_time_at_max_unnatural_name"}, {"ru"},
			-- -- loc_text("Брось вызов судьбе")),
	-- --[+ Traditional Chinese 抵抗命運 +]--
	-- create_template("ach_class_psy_7_ext_tw",
		-- {"loc_achievement_psyker_time_at_max_unnatural_name"}, {"zh-tw"},
			-- loc_text("抵抗命運")),

	-- --[+ Maintain 15 stacks or more of Disrupt Destiny for a total of 1800 seconds. +]-- руоф Удерживайте не менее 15 зарядов «Разрушенной судьбы» на протяжении 1800 с.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_desc_ru",
		-- {"loc_achievement_psyker_time_at_max_unnatural_description"}, {"ru"},
			-- loc_text("Поддерживайте не менее "..COLORS_Numbers.n_15_rgb.." зарядов "..COLORS_KWords_ru.Precision_rgb_ru.." от ключевого таланта "..COLORS_KWords_ru.disrdest_rgb_ru.." на протяжении "..COLORS_Numbers.n_30_rgb.." минут.")), -- 1800 секунд ("..COLORS_Numbers.target_rgb.." секунд)
	-- --[+ Traditional Chinese +]--
	-- -- 維持15層或更多層擾動命運至少1800秒。
	-- create_template("ach_class_psy_7_ext_desc_tw",
		-- {"loc_achievement_psyker_time_at_max_unnatural_description"}, {"zh-tw"},
			-- loc_text("在 "..COLORS_KWords_tw.KeyStone_p_rgb_tw.."『"..COLORS_KWords_tw.disrdest_rgb_tw.."』效果下，\n維持至少 "..COLORS_Numbers.n_15_rgb.." 層『"..COLORS_KWords_tw.Precision_rgb_tw.."』狀態，累積達 "..COLORS_Numbers.n_30_rgb.." 分鐘。")),

	-- --[+ Warp Battery +]-- руоф Варп-аккумулятор
	-- --[+ Russian +]--
	-- -- create_template("ach_red_psy_4_ext_ru",
		-- -- {"loc_achievement_psyker_2_stay_at_max_souls_for_duration_name"}, {"ru"},
			-- -- loc_text("Варп-аккумулятор")),
	-- --[+ Traditional Chinese 亞空間電池 +]--
	-- create_template("ach_red_psy_4_ext_tw",
		-- {"loc_achievement_psyker_2_stay_at_max_souls_for_duration_name"}, {"zh-tw"},
			-- loc_text("亞空間電池")),

	-- --[+ While on Malice Threat or higher, in a single session maintain maximum Warp Charges for 120s. +]-- руоф При угрозе «Злоба» или выше в режиме одиночной игры поддерживайте максимум варп-зарядов в течение 120 с.
	-- --[+ Russian +]--
	-- -- create_template("ach_red_psy_4_ext_desc_ru",
		-- -- {"loc_achievement_psyker_2_stay_at_max_souls_for_duration_description"}, {"ru"},
			-- -- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, в течение одной миссии сохраняйте максимальное количество зарядов варпа в течение "..COLORS_Numbers.target_rgb.." секунд."..TALENTS_Enh_desc_penances_ru.ED_Warp_battery_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下，單個任務分段內保持最大亞空間充能120秒。
	-- -- create_template("ach_red_psy_4_ext_desc_tw",
		-- -- {"loc_achievement_psyker_2_stay_at_max_souls_for_duration_description"}, {"zh-tw"},
			-- -- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，於單場任務中持續維持最高層數亞空間充能 "..COLORS_Numbers.target_rgb.." 秒。" .. TALENTS_Enh_desc_penances_tw.ED_Warp_battery_rgb_tw)),

	-- --[+ Pick n' Mix +]-- руоф Выбирай и смешивай
	-- --[+ Russian +]--
	-- -- create_template("ach_red_psy_6_ext_ru",
		-- -- {"loc_achievement_psyker_2_elite_or_special_kills_with_smite_last_10_sec_name"}, {"ru"},
			-- -- loc_text("Выбирай и смешивай")),
	-- --[+ Traditional Chinese 每樣來點 +]--
	-- create_template("ach_red_psy_6_ext_tw",
		-- {"loc_achievement_psyker_2_elite_or_special_kills_with_smite_last_10_sec_name"}, {"zh-tw"},
			-- loc_text("每樣來點")),

	-- --[+ While on Heresy Threat or higher, use Brain Burst to kill 4 different Elite or Specialist enemies within 12s. +]-- руоф При угрозе «Ересь» или выше используйте «Взрыв разума», чтобы убить различных врагов (4) ранга элита или специалист за 12 с.
	-- --[+ Russian +]--
	-- -- create_template("ach_red_psy_6_ext_desc_ru",
		-- -- {"loc_achievement_psyker_2_elite_or_special_kills_with_smite_last_10_sec_description"}, {"ru"},
			-- -- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, используйте блиц "..COLORS_KWords_ru.bburst0_rgb_ru..", чтобы убить "..COLORS_Numbers.target_rgb.." разных элитных врагов или специалистов в течение "..COLORS_Numbers.time_wind_rgb.." секунд."..TALENTS_Enh_desc_penances_ru.ED_Pick_n_mix_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下，在12米內使用大腦爆裂擊殺4個不同的精英或專家敵人。
	-- -- create_template("ach_red_psy_6_ext_desc_tw",
		-- -- {"loc_achievement_psyker_2_elite_or_special_kills_with_smite_last_10_sec_description"}, {"zh-tw"},
			-- -- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.bburst0_rgb_tw.."』，\n在 "..COLORS_Numbers.time_wind_rgb.." 秒內擊殺 "..COLORS_Numbers.target_rgb.." 種不同的精英或專家敵人。" .. TALENTS_Enh_desc_penances_tw.ED_Pick_n_mix_rgb_tw)),

	-- --[+ Mind's Aegis +]-- руоф Защита разума
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_ru",
		-- {"loc_achievement_psyker_damage_blocked_with_shield_name"}, {"ru"},
			-- loc_text("Эгида разума")),
	-- --[+ Traditional Chinese 心靈之盾 +]--
	-- create_template("ach_class_psy_7_ext_tw",
		-- {"loc_achievement_psyker_damage_blocked_with_shield_name"}, {"zh-tw"},
			-- loc_text("心靈之盾")),

	-- --[+ Absorb 150000 Damage with Telekine Shield. +]-- руоф Поглотите урон (150000) с помощью «Телекинетического щита».
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_desc_ru",
		-- {"loc_achievement_psyker_damage_blocked_with_shield_description"}, {"ru"},
			-- loc_text("Поглотите "..COLORS_Numbers.target_rgb.." урона с помощью способности "..COLORS_KWords_ru.telekshii_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用念力護頓吸收150000點傷害。
	-- create_template("ach_class_psy_7_ext_desc_tw",
		-- {"loc_achievement_psyker_damage_blocked_with_shield_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.telekshii_rgb_tw.."』防護 "..COLORS_Numbers.target_rgb.." 點傷害。")),

	-- --[+ Skilled in Psykhana +]-- руоф Знаток Псайканы
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_7_ext_ru",
		-- -- {"loc_achievement_psyker_kills_with_empowered_abilites_name"}, {"ru"},
			-- -- loc_text("Знаток Псайканы")),
	-- --[+ Traditional Chinese 熟練靈能 +]--
	-- create_template("ach_class_psy_7_ext_tw",
		-- {"loc_achievement_psyker_kills_with_empowered_abilites_name"}, {"zh-tw"},
			-- loc_text("熟練靈能")),

	-- --[+ Kill 250 Specialists or Elites using abilities empowered by Empowered Psionics. +]-- руоф Убейте особых или элитных врагов (250) с помощью способностей, улучшенных «Усиленными псиониками».
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_desc_ru",
		-- {"loc_achievement_psyker_kills_with_empowered_abilites_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью способностей, усиленных ключевым талантом "..COLORS_KWords_ru.empsionics_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用以靈能強化提升過的技能擊殺250名專家或精英。
	-- create_template("ach_class_psy_7_ext_desc_tw",
		-- {"loc_achievement_psyker_kills_with_empowered_abilites_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.KeyStone_p_rgb_tw.."『"..COLORS_KWords_tw.empsionics_rgb_tw.."』後的能力，\n擊殺 "..COLORS_Numbers.target_rgb.." 名精英或專家敵人。")),

	-- --[+ Not Even Close +]-- руоф Как бы не так
	-- --[+ Russian +]--
	-- -- create_template("ach_red_psy_2_ext_ru",
		-- -- {"loc_achievement_psyker_2_smite_hound_mid_leap_name"}, {"ru"},
			-- -- loc_text("Как бы не так")),
	-- --[+ Traditional Chinese 差的遠 +]--
	-- create_template("ach_red_psy_2_ext_tw",
		-- {"loc_achievement_psyker_2_smite_hound_mid_leap_name"}, {"zh-tw"},
			-- loc_text("差的遠")),

	-- --[+ Kill a pouncing Pox Hound with Brain Burst. +]-- руоф Убейте с помощью «Взрыва разума» Чумную Гончую, когда она набрасывается на вас.
	-- --[+ Russian +]--
	-- create_template("ach_red_psy_2_ext_desc_ru",
		-- {"loc_achievement_psyker_2_smite_hound_mid_leap_description"}, {"ru"},
			-- loc_text("Убейте, прыгнувшую Чумную гончую, с помощью блица "..COLORS_KWords_ru.bburst0_rgb_ru.." или "..COLORS_KWords_ru.bburst1_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用顱腦爆裂殺死1之猛撲而來的瘟疫獵犬
	-- create_template("ach_red_psy_2_ext_desc_tw",
		-- {"loc_achievement_psyker_2_smite_hound_mid_leap_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.bburst0_rgb_tw.."』或『"..COLORS_KWords_tw.bburst1_rgb_tw.."』，\n擊殺猛撲中的瘟疫獵犬。")),

	-- --[+ Mind Lance - Копьё разума +]-- руоф Копье разума
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_ru",
		-- {"loc_achievement_psyker_elite_or_special_kills_with_assail_name"}, {"ru"},
			-- loc_text("Копьё разума")),
	-- --[+ Traditional Chinese 心靈之槍 +]--
	-- create_template("ach_class_psy_7_ext_tw",
		-- {"loc_achievement_psyker_elite_or_special_kills_with_assail_name"}, {"zh-tw"},
			-- loc_text("心靈之槍")),

	-- --[+ Kill 250 Specialists and Elites using Assail. +]-- руоф Убейте особых или элитных врагов (250) с помощью «Нападения».
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_desc_ru",
		-- {"loc_achievement_psyker_elite_or_special_kills_with_assail_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью блица "..COLORS_KWords_ru.assail_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用靈能攻擊擊殺250名專家或精英。
	-- create_template("ach_class_psy_7_ext_desc_tw",
		-- {"loc_achievement_psyker_elite_or_special_kills_with_assail_description"}, {"zh-tw"},
			-- loc_text("使用『"..COLORS_KWords_tw.assail_rgb_tw.."』擊殺 "..COLORS_Numbers.target_rgb.." 名精英或專家敵人。")),

	-- --[+ Malleus Monstronum +]-- руоф Маллеус Монстронум
	-- --[+ Russian +]--
	-- -- create_template("ach_red_psy_7_ext_ru",
		-- -- {"loc_achievement_psyker_2_kill_boss_solo_with_smite_name"}, {"ru"},
			-- -- loc_text("Маллеус Монстронум")),
	-- --[+ Traditional Chinese 憎惡之錘 +]--
	-- create_template("ach_red_psy_7_ext_tw",
		-- {"loc_achievement_psyker_2_kill_boss_solo_with_smite_name"}, {"zh-tw"},
			-- loc_text("憎惡之錘")),

	-- --[+ While on Heresy Threat or higher kill a Monstrosity after damaging 50% of its health with your Brain Burst. (Private Game: Penance can only be completed in a private game) +]-- руоф При угрозе «Ересь» или выше снесите чудовищу 50% здоровья «Взрывом разума», а затем убейте его.
	-- --[+ Russian +]--
	-- create_template("ach_red_psy_7_ext_desc_ru",
		-- {"loc_achievement_psyker_2_kill_boss_solo_with_smite_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, убейте Монстра после того, как вы нанесли ему не менее "..COLORS_Numbers.pc_50_rgb.." урона здоровью с помощью блица "..COLORS_KWords_ru.bburst0_rgb_ru.." или "..COLORS_KWords_ru.bburst1_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端或更高威脅度下，使用大腦爆裂對1頭巨獸造成其生命值50的傷害後將其擊殺
	-- create_template("ach_red_psy_7_ext_desc_tw",
		-- {"loc_achievement_psyker_2_kill_boss_solo_with_smite_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，\n使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.bburst0_rgb_tw.."』或『"..COLORS_KWords_tw.bburst1_rgb_tw.."』，\n對巨獸造成不少於 "..COLORS_Numbers.pc_50_rgb.." 的生命值傷害，並將其擊殺。")),

	-- --[+ Perilous Focus +]-- руоф Пагубная концентрация
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_ru",
		-- {"loc_achievement_psyker_kills_during_overcharge_stance_name"}, {"ru"},
			-- loc_text("Угрожающая концентрация")),
	-- --[+ Traditional Chinese 險惡聚焦 +]--
	-- create_template("ach_class_psy_7_ext_tw",
		-- {"loc_achievement_psyker_kills_during_overcharge_stance_name"}, {"zh-tw"},
			-- loc_text("險惡聚焦")),

	-- --[+ Kill 40 enemies under the effects of a single Scrier's Gaze activation. +]-- руоф Убейте врагов (40), находясь под действием одного заряда «Взора Скрира».
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_desc_ru",
		-- {"loc_achievement_psyker_kills_during_overcharge_stance_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов, находясь под эффектом способности "..COLORS_KWords_ru.scriersgaze_rgb_ru..", в течение однократного её применения.")),
	-- --[+ Traditional Chinese +]--
	-- -- 於同一次賽爾凝視效果期間，擊殺40名敵人。
	-- create_template("ach_class_psy_7_ext_desc_tw",
		-- {"loc_achievement_psyker_kills_during_overcharge_stance_description"}, {"zh-tw"},
			-- loc_text("單次 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.scriersgaze_rgb_tw.."』期間，擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Overwhelming Presence +]-- руоф Подавляющее присутствие
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_7_ext_ru",
		-- -- {"loc_achievement_psyker_team_elite_aura_kills_name"}, {"ru"},
			-- -- loc_text("Подавляющее присутствие")),
	-- --[+ Traditional Chinese 壓倒性的存在 +]--
	-- create_template("ach_class_psy_7_ext_tw",
		-- {"loc_achievement_psyker_team_elite_aura_kills_name"}, {"zh-tw"},
			-- loc_text("壓倒性的存在")),

	-- --[+ Kill 2500 Elite or Specialist enemies while under the effect of Kinetic Presence. Kill made by any affected team member also count. +]-- руоф Убейте особых или элитных врагов (2500), находясь под действием «Кинетического присутствия». Убийства, совершенные любым членом команды под действием эффекта, тоже учитываются.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_desc_ru",
		-- {"loc_achievement_psyker_team_elite_aura_kills_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов, находясь под действием ауры "..COLORS_KWords_ru.kinetpres_rgb_ru..". Убийства, совершённые любым членом команды, находящимся под действием эффекта ауры, тоже учитываются.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在動能釋放效果啟動時擊殺2500名精英或專家敵人。由獲得效果的小隊成員造成的擊殺也算。
	-- create_template("ach_class_psy_7_ext_desc_tw",
		-- {"loc_achievement_psyker_team_elite_aura_kills_description"}, {"zh-tw"},
			-- loc_text("處於 "..COLORS_KWords_tw.Aura_p_rgb_tw.."『"..COLORS_KWords_tw.kinetpres_rgb_tw.."』期間，\n擊殺 "..COLORS_Numbers.target_rgb.." 名精英或專家敵人。\n隊友在此光環下的擊殺也會計算。")),

	-- --[+ Power Up +]-- руоф Полный заряд
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_11_ext_ru",
		-- -- {"loc_achievement_psyker_2_medium_1_name"}, {"ru"},
			-- -- loc_text("Полный заряд")),
	-- --[+ Traditional Chinese 能量提升 +]--
	-- create_template("ach_class_psy_11_ext_tw",
		-- {"loc_achievement_psyker_2_medium_1_name"}, {"zh-tw"},
			-- loc_text("能量提升")),

	-- --[+ On Malice Threat or higher, kill 100 Elite or Specialist enemies with Brain Burst while at maximum Warp Charges. +]-- руоф При угрозе «Злоба» или выше убейте элитных врагов или специалистов (100) «Взрывом разума» с максимальным количеством варп-зарядов.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_11_ext_desc_ru",
		-- {"loc_achievement_psyker_2_medium_1_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью блица "..COLORS_KWords_ru.bburst0_rgb_ru.." или "..COLORS_KWords_ru.bburst1_rgb_ru.." пока у вас максимальное количество варп-зарядов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下，再亞空間充能層數達到最高後，使用顱腦爆裂擊殺100名精英或專家敵人。
	-- create_template("ach_class_psy_11_ext_desc_tw",
		-- {"loc_achievement_psyker_2_medium_1_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，\n當自身亞空間充能達最大時，\n使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.bburst0_rgb_tw.."』或『"..COLORS_KWords_tw.bburst1_rgb_tw.."』，\n擊殺 "..COLORS_Numbers.target_rgb.." 名精英或專家敵人。")),

	-- --[+ Prioritise Targets +]-- руоф Приоритетные цели
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_7_ext_ru",
		-- -- {"loc_achievement_psyker_2_easy_1_name"}, {"ru"},
			-- -- loc_text("Приоритетные цели")),
	-- --[+ Traditional Chinese 優先目標 +]--
	-- create_template("ach_class_psy_7_ext_tw",
		-- {"loc_achievement_psyker_2_easy_1_name"}, {"zh-tw"},
			-- loc_text("優先目標")),

	-- --[+ Kill 200 Elite or Specialist enemies with Brain Burst. +]-- руоф Убейте элитных врагов или специалистов (200) «Взрывом разума».
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_desc_ru",
		-- {"loc_achievement_psyker_2_easy_1_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью блица "..COLORS_KWords_ru.bburst0_rgb_ru.." или "..COLORS_KWords_ru.bburst1_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用顱腦爆裂擊殺200名精英或專家敵人。
	-- create_template("ach_class_psy_7_ext_desc_tw",
		-- {"loc_achievement_psyker_2_easy_1_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.bburst0_rgb_tw.."』或『"..COLORS_KWords_tw.bburst1_rgb_tw.."』，\n擊殺 "..COLORS_Numbers.target_rgb.." 名精英或專家敵人。")),

	-- --[+ Shoot Fast +]-- руоф Стреляй от бедра
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_12_ext_ru",
		-- {"loc_achievement_psyker_2_hard_1_name"}, {"ru"},
			-- loc_text("Стреляй быстро")),
	-- --[+ Traditional Chinese 快槍手 +]--
	-- create_template("ach_class_psy_12_ext_tw",
		-- {"loc_achievement_psyker_2_hard_1_name"}, {"zh-tw"},
			-- loc_text("快槍手")),

	-- --[+ On Heresy Threat or higher, kill 25 Pox Hounds, Mutants or Scab Trappers using Brain Burst before they incapacitate you or an ally. +]-- руоф При угрозе «Ересь» или выше убейте Чумных гончих, Мутантов или Скабов-Ловушечников (25) «Взрывом разума», пока они не успели обезвредить вас или союзника.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_12_ext_desc_ru",
		-- {"loc_achievement_psyker_2_hard_1_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." Чумных гончих, Мутантов или Ловушечников, используя "..COLORS_KWords_ru.bburst0_rgb_ru.." или "..COLORS_KWords_ru.bburst1_rgb_ru.." до того как они вывели из строя вас или союзника.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下，在瘟疫獵犬、變種人、或血痂陷阱兵使你或你的盟友無法行動前，擊殺25個此類敵人。
	-- create_template("ach_class_psy_12_ext_desc_tw",
		-- {"loc_achievement_psyker_2_hard_1_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，\n使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.bburst0_rgb_tw.."』或『"..COLORS_KWords_tw.bburst1_rgb_tw.."』，\n在瘟疫獵犬、突變者或陷阱兵使你或隊友癱瘓前，\n擊殺他們，共計 "..COLORS_Numbers.target_rgb.." 次。")),

	-- --[+ Lucky BLow +]-- руоф Счастливый удар
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_ru",
		-- {"loc_achievement_psyker_team_critical_hits_name"}, {"ru"},
			-- loc_text("Удачный удар")),
	-- --[+ Traditional Chinese 幸運一擊 +]--
	-- create_template("ach_class_psy_7_ext_tw",
		-- {"loc_achievement_psyker_team_critical_hits_name"}, {"zh-tw"},
			-- loc_text("幸運一擊")),

	-- --[+ Critically strike 7500 enemies while under the effects of Prescience. Critical strikes made by any affected team member also count. +]-- руоф Нанесите врагам критические удары (7500), находясь под действием «Предвидения». Критические удары любого члена команды под действием эффекта тоже учитываются.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_desc_ru",
		-- {"loc_achievement_psyker_team_critical_hits_description"}, {"ru"},
			-- loc_text("Нанесите врагам "..COLORS_Numbers.target_rgb.." критических ударов, находясь под действием ауры "..COLORS_KWords_ru.prescience_rgb_ru..". Критические удары любого члена команды, находящегося под действием эффекта ауры, тоже учитываются.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在預兆效果啟動時報及7500名敵人。由獲得效果的小隊成員造成的暴擊也算。
	-- create_template("ach_class_psy_7_ext_desc_tw",
		-- {"loc_achievement_psyker_team_critical_hits_description"}, {"zh-tw"},
			-- loc_text("在 "..COLORS_KWords_tw.Aura_p_rgb_tw.."『"..COLORS_KWords_tw.prescience_rgb_tw.."』期間，對敵人造成 "..COLORS_Numbers.target_rgb.." 次致命一擊。\n隊友在此光環下造成的致命一擊也會計算。")),

	-- --[+ Blessed by Fate +]-- руоф Хранимый судьбой
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_8_ext_ru",
		-- {"loc_achievement_psyker_2_easy_2_name"}, {"ru"},
			-- loc_text("Благословенный судьбой")),
	-- --[+ Traditional Chinese 命運保佑 +]--
	-- create_template("ach_class_psy_8_ext_tw",
		-- {"loc_achievement_psyker_2_easy_2_name"}, {"zh-tw"},
			-- loc_text("命運保佑")),

	-- --[+ Use Psykinetic's Wrath to survive Perils of the Warp 50 times. +]-- руоф Воспользуйтесь «Психокинетическим гневом» 50 р., чтобы не погибнуть от угозы варпа.
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_8_ext_desc_ru",
		-- {"loc_achievement_psyker_2_easy_2_description"}, {"ru"},
			-- loc_text("Используйте "..COLORS_Numbers.target_rgb.." раз способность "..COLORS_KWords_ru.psy_wrath_rgb_ru.." или "..COLORS_KWords_ru.psy_wrath2_rgb_ru..", чтобы избежать самоподрыва от превышения "..COLORS_Numbers.pc_100_rgb.." уровня "..COLORS_KWords_ru.Peril_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用靈能學者之怒在亞空間反噬中倖存50次。
	-- create_template("ach_class_psy_8_ext_desc_tw",
		-- {"loc_achievement_psyker_2_easy_2_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.psy_wrath_rgb_tw.."』或『"..COLORS_KWords_tw.psy_wrath2_rgb_tw.."』技能，\n成功避免因『"..COLORS_KWords_tw.Peril_rgb_tw.."』超過『"..COLORS_Numbers.pc_100_rgb.."』而引發靈能爆炸。")),

	-- --[+ Empyric Recovery +]-- руоф Эмпирическое восстановление
	-- --[+ Russian +]--
	-- -- create_template("ach_class_psy_7_ext_ru",
		-- -- {"loc_achievement_psyker_team_cooldown_reduced_name"}, {"ru"},
			-- -- loc_text("Эмпирическое восстановление")),
	-- --[+ Traditional Chinese 經驗恢復 +]--
	-- create_template("ach_class_psy_7_ext_tw",
		-- {"loc_achievement_psyker_team_cooldown_reduced_name"}, {"zh-tw"},
			-- loc_text("經驗恢復")),

	-- --[+ Restore you or your allies' abilities a total of 2000 seconds faster, while under the effects of Seer's Presence. +]-- руоф Восстановите способности свои или союзников суммарно на 2000 с. быстрее, находясь под действием «Присутствия провидца».
	-- --[+ Russian +]--
	-- create_template("ach_class_psy_7_ext_desc_ru",
		-- {"loc_achievement_psyker_team_cooldown_reduced_description"}, {"ru"},
			-- loc_text("Сократите, суммарно на "..COLORS_Numbers.target_rgb.." секунд, время восстановления способностей себе или вашим союзникам с помощью эффекта ауры "..COLORS_KWords_ru.seerspres_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用先知之眼效果加快自身或盟友的技能恢復時間2000秒。
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_class_psy_7_ext_desc_tw",
		-- {"loc_achievement_psyker_team_cooldown_reduced_description"}, {"zh-tw"},
			-- loc_text("透過 "..COLORS_KWords_tw.Aura_p_rgb_tw.."『"..COLORS_KWords_tw.seerspres_rgb_tw.."』效果，\n為自己或隊友縮短技能冷卻時間達 "..COLORS_Numbers.target_rgb.." 秒。")),

	-- --[+ Going Out With a Bang +]-- руоф Эффектный выход
	-- --[+ Russian +]--
	-- create_template("ach_red_psy_5_ext_ru",
		-- {"loc_achievement_psyker_2_perils_of_the_warp_elite_kills_name"}, {"ru"},
			-- loc_text("Взрывной финал")),
	-- --[+ Traditional Chinese 赫然死亡 +]--
	-- create_template("ach_red_psy_5_ext_tw",
		-- {"loc_achievement_psyker_2_perils_of_the_warp_elite_kills_name"}, {"zh-tw"},
			-- loc_text("赫然死亡")),
	
	-- --[+ While on Malice Threat or higher, kill 1 elite enemies with a single Perils of the Warp explosion. +]-- руоф При угрозе «Злоба» или выше убейте элитных врагов (1) за однократное применение угрозы от взрыва варпа.
	-- --[+ Russian +]--
	-- create_template("ach_red_psy_5_ext_desc_ru",
		-- {"loc_achievement_psyker_2_perils_of_the_warp_elite_kills_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.target_rgb.." элитного врага самоподрывом псайкера от превышения "..COLORS_Numbers.pc_100_rgb.." уровня "..COLORS_KWords_ru.Peril_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下，使用亞空間反噬殺死1個精英敵人。
	-- create_template("ach_red_psy_5_ext_desc_tw",
		-- {"loc_achievement_psyker_2_perils_of_the_warp_elite_kills_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，\n利用因『"..COLORS_KWords_tw.Peril_rgb_tw.."』超過『"..COLORS_Numbers.pc_100_rgb.."』而引發的靈能爆炸，\n擊殺 "..COLORS_Numbers.target_rgb.." 名精英敵人。")),

	-- --[+ ++OGRYN - ОГРИН++ +]--
		-- create_template("ach_class_ogr_0_ext_ru",
		-- {"loc_class_ogryn_title"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.cls_ogr_rgb_ru)),
		-- create_template("ach_class_ogr_0_ext_tw",
		-- {"loc_class_ogryn_title"}, {"zh-tw"},
			-- loc_text(COLORS_KWords_tw.cls_ogr_rgb_tw)),

	-- --[+ ПРОГРЕСС +]--
	-- --[+ Beat-em-Up (1-3) +]-- руоф Всех порву/Бей их всех (1-3)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_3_ext_ru",
		-- -- {"loc_achievement_missions_ogryn_2_objective_3_name"}, {"ru"},
			-- -- loc_text("Избей-их-всех (1-3)")),
	-- --[+ Traditional Chinese 揍扁他們 +]--
	-- -- create_template("ach_class_ogr_3_ext_tw",
		-- -- {"loc_achievement_missions_ogryn_2_objective_3_name"}, {"zh-tw"},
			-- -- loc_text("揍扁他們 (1-3)")),

	-- --[+ As a Ogryn, complete a Mission of each type. +]-- руоф Выполнить Огрином по меньшей мере одно задание каждого типа.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_3_1_ext_desc_ru",
		-- {"loc_achievement_missions_ogryn_2_objective_1_description"}, {"ru"},
			-- loc_text("Завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_ogr2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用歐格林，完成每種類型的任務至少一項。
	-- create_template("ach_class_ogr_3_1_ext_desc_tw",
		-- {"loc_achievement_missions_ogryn_2_objective_1_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_ogr2_rgb_tw.."，完成以下任務 "..COLORS_Numbers.n_1_rgb.." 次。")),

	-- --[+ As a Ogryn, complete a Mission of each type on Malice Threat or higher. +]-- руоф Выполнить Огрином по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_3_3_ext_desc_ru",
		-- {"loc_achievement_missions_ogryn_2_objective_2_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_ogr2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下，使用狂信徒完成每種類型的任務至少一項。
	-- create_template("ach_class_ogr_3_3_ext_desc_tw",
		-- {"loc_achievement_missions_ogryn_2_objective_2_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_ogr2_rgb_tw.." ，\n在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，完成以下任務 "..COLORS_Numbers.n_3_rgb.." 次。")),

	-- --[+ As a Ogryn, complete a Mission of each type on Heresy Threat or higher. +]-- руоф Выполнить Огрином по меньшей мере одно задание каждого типа.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_3_4_ext_desc_ru",
		-- {"loc_achievement_missions_ogryn_2_objective_3_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите по одной миссии каждого типа "..COLORS_KWords_ru.cls_ogr2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下，使用狂信徒完成每種類型的任務至少一項。
	-- create_template("ach_class_ogr_3_4_ext_desc_tw",
		-- {"loc_achievement_missions_ogryn_2_objective_3_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_ogr2_rgb_tw.." ，\n在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度下，完成以下任務 "..COLORS_Numbers.n_4_rgb.." 次。")),

	-- --[+ Keep Them Grounded +]-- руоф Вали их!
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_8_ext_ru",
		-- -- {"loc_achievement_ogryn_2_easy_2_name"}, {"ru"},
			-- -- loc_text("Вали их!")),
	-- --[+ Traditional Chinese 全部打倒 +]--
	-- create_template("ach_class_ogr_8_ext_tw",
		-- {"loc_achievement_ogryn_2_easy_2_name"}, {"zh-tw"},
			-- loc_text("全部打倒")),

	-- --[+ Knock Down 5000 enemies. +]-- руоф Сбейте с ног врагов 5000 р.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_8_ext_desc_ru",
		-- {"loc_achievement_ogryn_2_easy_2_description"}, {"ru"},
			-- loc_text("Сбейте с ног "..COLORS_Numbers.target_rgb.." врагов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊倒5000個敵人。
	-- create_template("ach_class_ogr_8_ext_desc_tw",
		-- {"loc_achievement_ogryn_2_easy_2_description"}, {"zh-tw"},
			-- loc_text("擊倒 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Keep Your Friends Close +]-- руоф Держи друзей близко
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_12_ext_ru",
		-- -- {"loc_achievement_ogryn_2_hard_1_name"}, {"ru"},
			-- -- loc_text("Держи друзей близко")),
	-- --[+ Traditional Chinese 與朋友保持親密 +]--
	-- create_template("ach_class_ogr_12_ext_tw",
		-- {"loc_achievement_ogryn_2_hard_1_name"}, {"zh-tw"},
			-- loc_text("與朋友保持親密")),

	-- --[+ On Heresy Threat or higher, complete 3 full Missions without any allies being Knocked Down or Incapacitated for longer than 10 seconds, and without any allies dying. +]-- руоф При угрозе «Ересь» или выше полностью выполните задание 3 р., чтобы ни один союзник не умер и не был сбит с ног или небоестрособен дольше 10 с.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_12_ext_desc_ru",
		-- {"loc_achievement_ogryn_2_hard_1_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, завершите полностью "..COLORS_Numbers.target_rgb.." миссии так, чтобы никто из союзников не был выведен из строя или сбит с ног более "..COLORS_Numbers.time_rgb.." секунд и чтобы никто из союзников не был убит.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下，在沒有盟友被擊倒或無法行動超過30秒，且沒有盟友死亡的情況下完成3個完整任務。
	-- create_template("ach_class_ogr_12_ext_desc_tw",
		-- {"loc_achievement_ogryn_2_hard_1_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，完整完成 "..COLORS_Numbers.target_rgb.." 場任務，\n且期間無任何隊友陣亡，或被擊倒超過 "..COLORS_Numbers.time_rgb.." 秒。")),

	-- --[+ Prove Your Worth (1-5) +]-- руоф Докажи, чего стоишь (1-5)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_4_ext_ru",
		-- -- {"loc_missions_ogryn_2_easy_difficulty_1-5_name"}, {"ru"},
			-- -- loc_text("Докажи, чего стоишь (1-5)")),
	-- --[+ Traditional Chinese 證明你的價值 +]--
	-- -- create_template("ach_class_ogr_4_ext_tw",
		-- -- {"loc_missions_ogryn_2_easy_difficulty_1-5_name"}, {"zh-tw"},
			-- -- loc_text("證明你的價值 (1-5)")),

	-- --[+ Complete 1 Missions on Sedition Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Мятеж» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_4_1_ext_desc_ru",
		-- {"loc_missions_ogryn_2_easy_difficulty_1_description"}, {"ru"},
			-- loc_text(PHRS.cmpl_1_mssn_sedition_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在騷亂威脅度或更高難度下完成1個任務
	-- create_template("ach_class_ogr_4_1_ext_desc_tw",
		-- {"loc_missions_ogryn_2_easy_difficulty_1_description"}, {"zh-tw"},
			-- loc_text(PHRS.cmpl_1_mssn_sedition_tw)),

	-- --[+ Complete 1 Missions on Uprising Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Восстание» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_4_2_ext_desc_ru",
		-- {"loc_missions_ogryn_2_easy_difficulty_2_description"}, {"ru"},
			-- loc_text(PHRS.cmpl_1_mssn_uprising_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在起義威脅度或更高難度下完成1個任務
	-- create_template("ach_class_ogr_4_2_ext_desc_tw",
		-- {"loc_missions_ogryn_2_easy_difficulty_2_description"}, {"zh-tw"},
			-- loc_text(PHRS.cmpl_1_mssn_uprising_tw)),

	-- --[+ Complete 1 Missions on Malice Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Злоба» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_4_3_ext_desc_ru",
		-- {"loc_missions_ogryn_2_easy_difficulty_3_description"}, {"ru"},
			-- loc_text(PHRS.cmpl_1_mssn_malice_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下完成1個任務
	-- create_template("ach_class_ogr_4_3_ext_desc_tw",
		-- {"loc_missions_ogryn_2_easy_difficulty_3_description"}, {"zh-tw"},
			-- loc_text(PHRS.cmpl_1_mssn_malice_tw)), 

	-- --[+ Complete 1 Missions on Heresy Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Ересь» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_4_4_ext_desc_ru",
		-- {"loc_missions_ogryn_2_easy_difficulty_4_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссию на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下完成1個任務
	-- create_template("ach_class_ogr_4_4_ext_desc_tw",
		-- {"loc_missions_ogryn_2_easy_difficulty_4_description"}, {"zh-tw"},
			-- loc_text(PHRS.cmpl_1_mssn_heresy_tw)),

	-- --[+ Complete 1 Missions on Damnation Threat or higher. +]-- руоф Выполните задания (1) при угрозе «Проклятие» или выше.
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_4_5_ext_desc_ru",
		-- -- {"loc_missions_ogryn_2_easy_difficulty_5_description"}, {"ru"},
			-- -- loc_text(PHRS.cmpl_1_mssn_damnation_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在詛咒威脅度或更高難度下完成1個任務
	-- -- create_template("ach_class_ogr_4_5_ext_desc_tw",
		-- -- {"loc_missions_ogryn_2_easy_difficulty_5_description"}, {"zh-tw"},
			-- -- loc_text(PHRS.cmpl_1_mssn_damnation_tw)),

	-- --[+ Friends Will be Friends +]-- руоф Друзья останутся друзьями
	-- --[+ Russian +]--
	-- -- create_template("ach_red_ogr_4_ext_ru",
		-- -- {"loc_achievement_ogryn_2_win_with_coherency_all_alive_units_name"}, {"ru"},
			-- -- loc_text("Друзья останутся друзьями")),
	-- --[+ Traditional Chinese 朋友永遠是朋友 +]--
	-- create_template("ach_red_ogr_4_ext_tw",
		-- {"loc_achievement_ogryn_2_win_with_coherency_all_alive_units_name"}, {"zh-tw"},
			-- loc_text("朋友永遠是朋友")),

	-- --[+ Stay in Conherency with a living teammate at all times during a full Mission on Malice Threat or higher. +]-- руоф При угрозе «Злоба» или выше постоянно оставайтесь под эффектом «Сплоченность» с живым товарищем по команде во время задания.
	-- --[+ Russian +]--
	-- create_template("ach_red_ogr_4_ext_desc_ru",
		-- {"loc_achievement_ogryn_2_win_with_coherency_all_alive_units_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, всегда оставайтесь под действием "..COLORS_KWords_ru.Coherency_rgb_ru.." с живым союзником на всём протяжении миссии.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下，在1次完整任務期間與1位存活的隊友始終保持協同。
	-- create_template("ach_red_ogr_4_ext_desc_tw",
		-- {"loc_achievement_ogryn_2_win_with_coherency_all_alive_units_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，\n整場任務期間始終與至少一名存活隊友保持在『"..COLORS_KWords_tw.Coherency_rgb_tw.."』範圍內。")),

	-- --[+ Bone 'ead (1-3) +]-- руоф Костяная башка (1-3)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_14_ext_ru",
		-- -- {"loc_achievement_group_class_ogryn_2_1-3_name"}, {"ru"},
			-- -- loc_text("Костагаловый (1-3)")),
	-- --[+ Traditional Chinese 骨頭骨腦 (1-3) +]--

	-- --[+ Complete the following Penances as the Ogryn. +]-- руоф Выполните следующие искупления за Огрина.
	-- --[+ Russian +]--
	-- create_template("ach_red_ogr_8_ext_desc_ru",
		-- {"loc_group_class_challenges_ogryn_2_x_description", "loc_achievement_group_class_ogryn_2_description", "loc_group_ogryn_2_rank_4_difficulty_3_description", "loc_group_ogryn_2_rank_5_difficulty_4_description", "loc_group_ogryn_2_rank_1_difficulty_1_description", "loc_group_ogryn_2_rank_2_difficulty_2_description"}, {"ru"},
			-- loc_text("Завершите следующие Искупления "..COLORS_KWords_ru.cls_ogr2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用歐格林完成以下苦修。
	-- create_template("ach_class_ogr_14_ext_desc_tw",
		-- {"loc_achievement_group_class_ogryn_2_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_ogr2_rgb_tw.." 完成以下苦修。")),

	-- --[+ Got a Bone to Pick (1) +]-- руоф Крепкий орешек (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_1_ext_ru",
		-- -- {"loc_achievement_rank_ogryn_2_1_name"}, {"ru"},
			-- -- loc_text("Мститель (1)")),
	-- --[+ Traditional Chinese 撿塊骨頭 +]--
	-- create_template("ach_class_ogr_1_ext_tw",
		-- {"loc_achievement_rank_ogryn_2_1_name"}, {"zh-tw"},
			-- loc_text("撿塊骨頭 (1)")),

	-- --[+ Got a Bone to Pick (2) +]-- руоф Крепкий орешек (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_1_ext_ru",
		-- -- {"loc_achievement_rank_ogryn_2_2_name"}, {"ru"},
			-- -- loc_text("Мститель (2)")),
	-- --[+ Traditional Chinese 撿塊骨頭 +]--
	-- create_template("ach_class_ogr_1_ext_tw",
		-- {"loc_achievement_rank_ogryn_2_2_name"}, {"zh-tw"},
			-- loc_text("撿塊骨頭 (2)")),

	-- --[+ Got a Bone to Pick (3) +]-- руоф Крепкий орешек (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_1_ext_ru",
		-- -- {"loc_achievement_rank_ogryn_2_3_name"}, {"ru"},
			-- -- loc_text("Мститель (3)")),
	-- --[+ Traditional Chinese 撿塊骨頭 +]--
	-- create_template("ach_class_ogr_1_ext_tw",
		-- {"loc_achievement_rank_ogryn_2_3_name"}, {"zh-tw"},
			-- loc_text("撿塊骨頭 (3)")),
			
	-- --[+ Got a Bone to Pick (4) +]-- руоф Крепкий орешек (4)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_1_ext_ru",
		-- -- {"loc_achievement_rank_ogryn_2_4_name"}, {"ru"},
			-- -- loc_text("Мститель (4)")),
	-- --[+ Traditional Chinese 撿塊骨頭 +]--
	-- create_template("ach_class_ogr_1_ext_tw",
		-- {"loc_achievement_rank_ogryn_2_4_name"}, {"zh-tw"},
			-- loc_text("撿塊骨頭 (4)")),
	
	-- --[+ Got a Bone to Pick (5) +]-- руоф Крепкий орешек (5)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_1_ext_ru",
		-- -- {"loc_achievement_rank_ogryn_2_5_name"}, {"ru"},
			-- -- loc_text("Мститель (5)")),
	-- --[+ Traditional Chinese 撿塊骨頭 +]--
	-- create_template("ach_class_ogr_1_ext_tw",
		-- {"loc_achievement_rank_ogryn_2_5_name"}, {"zh-tw"},
			-- loc_text("撿塊骨頭 (5)")),

	-- --[+ Got a Bone to Pick (6) +]-- руоф Крепкий орешек (6)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_1_ext_ru",
		-- -- {"loc_achievement_rank_ogryn_2_6_name"}, {"ru"},
			-- -- loc_text("Мститель (6)")),
	-- --[+ Traditional Chinese 撿塊骨頭 +]--
	-- create_template("ach_class_ogr_1_ext_tw",
		-- {"loc_achievement_rank_ogryn_2_6_name"}, {"zh-tw"},
			-- loc_text("撿塊骨頭 (6)")),

		-- --[+ Reach Trust Level 30 as a Ogryn. +]-- руоф Получить уровень доверия 30, играя за Огрина.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_1_ext_desc_ru",
		-- {"loc_achievement_rank_ogryn_2_x_description"}, {"ru"},
			-- loc_text("Достигните "..COLORS_Numbers.target_rgb.." уровня доверия "..COLORS_KWords_ru.cls_ogr2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用歐格林達到信任等級xx。
	-- create_template("ach_class_ogr_1_ext_desc_tw",
		-- {"loc_achievement_rank_ogryn_2_x_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_ogr2_rgb_tw.." 達到信任等級 "..COLORS_Numbers.target_rgb.." 。")),

	-- --[+ Built Like a Tank (1) +]-- руоф Настоящий танк (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_2_ext_ru",
		-- -- {"loc_achievement_missions_ogryn_2_1_name"}, {"ru"},
			-- -- loc_text("Крепкий как танк (1)")),
	-- --[+ Traditional Chinese 如坦克一般 (1) +]--
	-- create_template("ach_class_ogr_2_ext_tw",
		-- {"loc_achievement_missions_ogryn_2_1_name"}, {"zh-tw"},
			-- loc_text("如坦克一般 (1)")),

	-- --[+ Built Like a Tank (2) +]-- руоф Настоящий танк (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_2_ext_ru",
		-- -- {"loc_achievement_missions_ogryn_2_2_name"}, {"ru"},
			-- -- loc_text("Крепкий как танк (2)")),
	-- --[+ Traditional Chinese 如坦克一般 (2) +]--
	-- create_template("ach_class_ogr_2_ext_tw",
		-- {"loc_achievement_missions_ogryn_2_2_name"}, {"zh-tw"},
			-- loc_text("如坦克一般 (2)")),

	-- --[+ Built Like a Tank (3) +]-- руоф Настоящий танк (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_2_ext_ru",
		-- -- {"loc_achievement_missions_ogryn_2_3_name"}, {"ru"},
			-- -- loc_text("Крепкий как танк (3)")),
	-- --[+ Traditional Chinese 如坦克一般 (3) +]--
	-- create_template("ach_class_ogr_2_ext_tw",
		-- {"loc_achievement_missions_ogryn_2_3_name"}, {"zh-tw"},
			-- loc_text("如坦克一般 (3)")),

	-- --[+ Built Like a Tank (4) +]-- руоф Настоящий танк (4)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_2_ext_ru",
		-- -- {"loc_achievement_missions_ogryn_2_4_name"}, {"ru"},
			-- -- loc_text("Крепкий как танк (4)")),
	-- --[+ Traditional Chinese 如坦克一般 (4) +]--
	-- create_template("ach_class_ogr_2_ext_tw",
		-- {"loc_achievement_missions_ogryn_2_4_name"}, {"zh-tw"},
			-- loc_text("如坦克一般 (4)")),

	-- --[+ Built Like a Tank (5) +]-- руоф Настоящий танк (5)
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_2_ext_ru",
		-- -- {"loc_achievement_missions_ogryn_2_5_name"}, {"ru"},
			-- -- loc_text("Крепкий как танк (5)")),
	-- --[+ Traditional Chinese 如坦克一般 (5) +]--
	-- create_template("ach_class_ogr_2_ext_tw",
		-- {"loc_achievement_missions_ogryn_2_5_name"}, {"zh-tw"},
			-- loc_text("如坦克一般 (5)")),

	-- --[+ Complete 100 Missions as a Ogryn. +]-- руоф Выполнить Огрином задания: 100.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_2_ext_desc_ru",
		-- {"loc_achievement_missions_ogryn_2_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий "..COLORS_KWords_ru.cls_ogr2_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用歐格林完成xx個任務。
	-- create_template("ach_class_ogr_2_ext_desc_tw",
		-- {"loc_achievement_missions_ogryn_2_x_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.cls_ogr2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Cleave Them Down +]-- руоф Порви их!
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_12_ext_ru",
		-- -- {"loc_achievement_ogryn_2_medium_2_name"}, {"ru"},
			-- -- loc_text("Рассеки их")),
	-- --[+ Traditional Chinese 砍翻他們 +]--
	-- create_template("ach_class_ogr_12_ext_tw",
		-- {"loc_achievement_ogryn_2_medium_2_name"}, {"zh-tw"},
			-- loc_text("砍翻他們")),

	-- --[+ On Malice Threat or higher, kill 2 enemies with a single Melee Attack 250 times. +]-- руоф При угрозе «Злоба» или выше 250 р. убейте врагов (2) одной атакой ближнего бой.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_12_ext_desc_ru",
		-- {"loc_achievement_ogryn_2_medium_2_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, убейте "..COLORS_Numbers.amount_var_rgb.." врагов одной атакой ближнего боя "..COLORS_Numbers.target_rgb.." раз.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意或更高難度下，使用一次近戰攻擊擊殺2個敵，需要達成250次。
	-- create_template("ach_class_ogr_12_ext_desc_tw",
		-- {"loc_achievement_ogryn_2_medium_2_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，\n單次近戰攻擊擊殺 "..COLORS_Numbers.amount_var_rgb.." 名敵人，共達成 "..COLORS_Numbers.target_rgb.." 次。")),

	-- --[+ Help Everyone +]-- руоф Спаси всех
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_7_ext_ru",
		-- {"loc_achievement_ogryn_2_easy_1_name"}, {"ru"},
			-- loc_text("Помогай всем")),
	-- --[+ Traditional Chinese 樂於助人 +]--
	-- create_template("ach_class_ogr_7_ext_tw",
		-- {"loc_achievement_ogryn_2_easy_1_name"}, {"zh-tw"},
			-- loc_text("樂於助人")),

	-- --[+ Revive or Assist 40 Knocked Down or Incapacitated allies. +]-- руоф Воскресите небоеспособных союзников или помогите союзникам, сбитым с ног, 40 р.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_7_ext_desc_ru",
		-- {"loc_achievement_ogryn_2_easy_1_description"}, {"ru"},
			-- loc_text("Возродите или поднимите "..COLORS_Numbers.target_rgb..", выведенных из строя или сбитых с ног, союзников.")),
	-- --[+ Traditional Chinese +]--
	-- -- 復活或協助40個被擊倒或無法行動的盟友。
	-- create_template("ach_class_ogr_7_ext_desc_tw",
		-- {"loc_achievement_ogryn_2_easy_1_description"}, {"zh-tw"},
			-- loc_text("救起或復活 "..COLORS_Numbers.target_rgb.." 名被擊倒或癱瘓的隊友。")),

	-- --[+ Fight the Good Fight (1) +]-- руоф Сражайся достойно (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_ogr_1_ext_ru",
		-- -- {"loc_missions_ogryn_2_medium_difficulty_1_name"}, {"ru"},
			-- -- loc_text("Сражайся достойно (1)")),
	-- --[+ Traditional Chinese 為正義而戰 (1) +]--
	-- create_template("ach_red_ogr_1_ext_tw",
		-- {"loc_missions_ogryn_2_medium_difficulty_1_name"}, {"zh-tw"},
			-- loc_text("為正義而戰 (1)")),

	-- --[+ Fight the Good Fight (2) +]-- руоф Сражайся достойно (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_ogr_1_ext_ru",
		-- -- {"loc_missions_ogryn_2_medium_difficulty_2_name"}, {"ru"},
			-- -- loc_text("Сражайся достойно (2)")),
	-- --[+ Traditional Chinese 為正義而戰 (2) +]--
	-- create_template("ach_red_ogr_1_ext_tw",
		-- {"loc_missions_ogryn_2_medium_difficulty_2_name"}, {"zh-tw"},
			-- loc_text("為正義而戰 (2)")),
	
	-- --[+ Fight the Good Fight (3) +]-- руоф Сражайся достойно (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_ogr_1_ext_ru",
		-- -- {"loc_missions_ogryn_2_medium_difficulty_3_name"}, {"ru"},
			-- -- loc_text("Сражайся достойно (3)")),
	-- --[+ Traditional Chinese 為正義而戰 (3) +]--
	-- create_template("ach_red_ogr_1_ext_tw",
		-- {"loc_missions_ogryn_2_medium_difficulty_3_name"}, {"zh-tw"},
			-- loc_text("為正義而戰 (3)")),

	-- --[+ Fight the Good Fight (4) +]-- руоф Сражайся достойно (4)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_ogr_1_ext_ru",	
		-- -- {"loc_missions_ogryn_2_medium_difficulty_4_name"}, {"ru"},
			-- -- loc_text("Сражайся достойно (4)")),
	-- --[+ Traditional Chinese 為正義而戰 (4) +]--
	-- create_template("ach_red_ogr_1_ext_tw",
		-- {"loc_missions_ogryn_2_medium_difficulty_4_name"}, {"zh-tw"},
			-- loc_text("為正義而戰 (4)")),

	-- ----[+ Fight the Good Fight (5) +]-- руоф Сражайся достойно (5)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_ogr_1_ext_ru",
		-- -- {"loc_missions_ogryn_2_medium_difficulty_5_name"}, {"ru"},
			-- -- loc_text("Сражайся достойно (5)")),
	-- --[+ Traditional Chinese 為正義而戰 (5) +]--
	-- create_template("ach_red_ogr_1_ext_tw",
		-- {"loc_missions_ogryn_2_medium_difficulty_5_name"}, {"zh-tw"},
			-- loc_text("為正義而戰 (5)")),

	-- --[+ Complete 5 Missions on Sedition Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Мятеж» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_ogr_1_1_ext_desc_ru",
		-- {"loc_missions_ogryn_2_medium_difficulty_1_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.sedition_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在騷亂威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_ogr_1_1_ext_desc_tw",
		-- {"loc_missions_ogryn_2_medium_difficulty_1_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.sedition_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_ogr2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Uprising Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Восстание» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_ogr_1_2_ext_desc_ru",
		-- {"loc_missions_ogryn_2_medium_difficulty_2_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.uprising_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在起義威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_ogr_1_2_ext_desc_tw",
		-- {"loc_missions_ogryn_2_medium_difficulty_2_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.uprising_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_ogr2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Malice Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Злоба» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_ogr_1_3_ext_desc_ru",
		-- {"loc_missions_ogryn_2_medium_difficulty_3_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_ogr_1_3_ext_desc_tw",
		-- {"loc_missions_ogryn_2_medium_difficulty_3_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_ogr2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Heresy Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Ересь» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_ogr_1_4_ext_desc_ru",
		-- {"loc_missions_ogryn_2_medium_difficulty_4_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_ogr_1_4_ext_desc_tw",
		-- {"loc_missions_ogryn_2_medium_difficulty_4_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_ogr2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ Complete 5 Missions on Damnation Threat or higher. +]-- руоф Выполните задания (5) при угрозе «Проклятие» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_red_ogr_1_5_ext_desc_ru",
		-- {"loc_missions_ogryn_2_medium_difficulty_5_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在詛咒威脅度或更高難度下完成5個任務。
	-- create_template("ach_red_ogr_1_5_ext_desc_tw",
		-- {"loc_missions_ogryn_2_medium_difficulty_5_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.damnation_rgb_tw.."』或更高難度下，使用 "..COLORS_KWords_tw.cls_ogr2_rgb_tw.." 完成 "..COLORS_Numbers.target_rgb.." 項任務。")),

	-- --[+ +СПОСОБНОСТИ+ +]--
		-- --[+ Munitorum's Favour +]-- руоф Благосклонность Муниторума
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_11_ext_ru",
		-- -- {"loc_achievement_ogryn_leadbelcher_free_shot_name"}, {"ru"},
			-- -- loc_text("Благосклонность Муниторума")),
	-- --[+ Traditional Chinese 軍務部的恩賜 +]--
	-- create_template("ach_class_ogr_11_ext_tw",
		-- {"loc_achievement_ogryn_leadbelcher_free_shot_name"}, {"zh-tw"},
			-- loc_text("軍務部的恩賜")),

	-- --[+ Shoot 4500 free rounds of ammo, courtesy of the Burst Limiter Override. +]-- руоф Стреляйте бесплатными боеприпасами (4500) благодаря «Взлому отсечки очереди».
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_desc_ru",
		-- {"loc_achievement_ogryn_leadbelcher_free_shot_description"}, {"ru"},
			-- loc_text("Отстреляйте "..COLORS_Numbers.target_rgb.." бесплатных патронов, полученных с помощью ключевого таланта "..COLORS_KWords_ru.burstlimo_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在爆限超載的效果下自由射擊4500發彈藥。
	-- create_template("ach_class_ogr_11_ext_desc_tw",
		-- {"loc_achievement_ogryn_leadbelcher_free_shot_description"}, {"zh-tw"},
			-- loc_text("射出 "..COLORS_Numbers.target_rgb.." 發由 "..COLORS_KWords_tw.KeyStone_p_rgb_tw.."『"..COLORS_KWords_tw.burstlimo_rgb_tw.."』所獲得的免費子彈。")),

	-- --[+ Be Your Best +]-- руоф Будь лучшим
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_13_ext_ru",
		-- -- {"loc_achievement_ogryn_2_hard_2_name"}, {"ru"},
			-- -- loc_text("Будь лучшим")),
	-- --[+ Traditional Chinese 盡力而為 +]--
	-- create_template("ach_class_ogr_13_ext_tw",
		-- {"loc_achievement_ogryn_2_hard_2_name"}, {"zh-tw"},
			-- loc_text("盡力而為")),

	-- --[+ On Heresy Threat or higher, hit 4 consecutive Elite or Specialist enemies with Big Boxes of Hurt, without missing. Do this 5 times. +]-- руоф При угрозе «Ересь» или выше попадите по элитным врагам или специалистам х4 подряд «Ящиком, полным боли", ни разу не промахиваясь. Повторите 5 р.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_13_ext_desc_ru",
		-- {"loc_achievement_ogryn_2_hard_2_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, попадите не промахиваясь последовательно по "..COLORS_Numbers.amount_var_rgb.." элитным врагам или специалистам, используя блиц "..COLORS_KWords_ru.big_box_rgb_ru.." или "..COLORS_KWords_ru.big_box2_rgb_ru..". Повторите это задание "..COLORS_Numbers.target_rgb.." раз.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端威脅度或更高難度下，使用大炸藥箱連續擊中4名精英或專家敵人，中途不能打空。累積完成5次。
	-- create_template("ach_class_ogr_13_ext_desc_tw",
		-- {"loc_achievement_ogryn_2_hard_2_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.big_box_rgb_tw.."』或『"..COLORS_KWords_tw.big_box2_rgb_tw.."』，\n連續成功命中 "..COLORS_Numbers.amount_var_rgb.." 名精英或專家敵人。需達成 "..COLORS_Numbers.target_rgb.." 次。")),

	-- --[+ Loyal Protector +]-- руоф Верный защитник
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_11_ext_ru",
		-- -- {"loc_achievement_ogryn_team_toughness_restored_aura_name"}, {"ru"},
			-- -- loc_text("Верный защитник")),
	-- --[+ Traditional Chinese 忠誠守衛 +]--
	-- create_template("ach_class_ogr_11_ext_tw",
		-- {"loc_achievement_ogryn_team_toughness_restored_aura_name"}, {"zh-tw"},
			-- loc_text("忠誠守衛")),

	-- --[+ Restore a total of 15000 Toughness to you or allies in coherency with Stay Close. +]-- руоф Восстановите стойкость свою или союзников под действием «Сплоченности» (суммарно 15000) с помощью «Держись рядом».
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_desc_ru",
		-- {"loc_achievement_ogryn_team_toughness_restored_aura_description"}, {"ru"},
			-- loc_text("Восстановите суммарно "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." себе или союзникам, находящимся под действием "..COLORS_KWords_ru.Coherency_rgb_ru..", с помощью эффекта ауры "..COLORS_KWords_ru.stayclose_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用相互靠近恢復自身或協同中盟友總計15000點韌性。
	-- create_template("ach_class_ogr_11_ext_desc_tw",
		-- {"loc_achievement_ogryn_team_toughness_restored_aura_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.KeyStone_p_rgb_tw.."『"..COLORS_KWords_tw.stayclose_rgb_tw.."』效果，\n為自己或處於『"..COLORS_KWords_tw.Coherency_rgb_tw.."』範圍內的隊友，\n恢復累計 "..COLORS_Numbers.target_rgb.." 點『"..COLORS_KWords_tw.Toughness_rgb_tw.."』。")),

	-- --[+ Pick on Someone Your Own Size +]-- руоф Выбирай по размеру
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_ru",
		-- {"loc_achievement_ogryn_taunt_shout_hit_name"}, {"ru"},
			-- loc_text("Выбери кого-то своего размера")),
	-- --[+ Traditional Chinese 別欺負弱小 +]--
	-- create_template("ach_class_ogr_11_ext_tw",
		-- {"loc_achievement_ogryn_taunt_shout_hit_name"}, {"zh-tw"},
			-- loc_text("別欺負弱小")),

	-- --[+ Taunt 1000 Specialist or Elite enemies using Loyal Protector. +]-- руоф Спровоцируйте особых или элитных врагов (1000) с помощью «Верного защитника».
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_desc_ru",
		-- {"loc_achievement_ogryn_taunt_shout_hit_description"}, {"ru"},
			-- loc_text("Спровоцируйте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью способности "..COLORS_KWords_ru.loyalprot_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用忠誠守衛嘲諷1000名專家或精英
	-- create_template("ach_class_ogr_11_ext_desc_tw",
		-- {"loc_achievement_ogryn_taunt_shout_hit_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.loyalprot_rgb_tw.."』嘲諷，\n吸引 "..COLORS_Numbers.target_rgb.." 名精英或專家敵人。")),

	-- --[+ Gone Bowling +]-- руоф Играю в боулинг
	-- --[+ Russian +]--
	-- -- create_template("ach_red_ogr_5_ext_ru",
		-- -- {"loc_achievement_ogryn_2_bull_rushed_100_enemies_name"}, {"ru"},
			-- -- loc_text("Играю в боулинг")),
	-- --[+ Traditional Chinese 全中 +]--
	-- create_template("ach_red_ogr_5_ext_tw",
		-- {"loc_achievement_ogryn_2_bull_rushed_100_enemies_name"}, {"zh-tw"},
			-- loc_text("全中")),

	-- --[+ Knock down 60 enemies with a single Bull Rush on Malice Threat or higher. +]-- руоф При угрозе «Злоба» или выше сбейте с ног одним зарядом «Бычьего натиска» врагов: 60.
	-- --[+ Russian +]--
	-- create_template("ach_red_ogr_5_ext_desc_ru",
		-- {"loc_achievement_ogryn_2_bull_rushed_100_enemies_description"}, {"ru"},
			-- loc_text("Сбейте "..COLORS_Numbers.target_rgb.." врагов за одно использование способности "..COLORS_KWords_ru.bull_rush_rgb_ru.." или "..COLORS_KWords_ru.bull_rush4_rgb_ru.." на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡毒或以上威脅度，用1次蠻牛衝撞擊倒60名敵人。
	-- create_template("ach_red_ogr_5_ext_desc_tw",
		-- {"loc_achievement_ogryn_2_bull_rushed_100_enemies_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，\n使用 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.bull_rush_rgb_tw.."』或『"..COLORS_KWords_tw.bull_rush4_rgb_tw.."』，\n單次衝鋒擊倒 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Don't Stop Me Now! +]-- руоф Меня не остановить!
	-- --[+ Russian +]--
	-- -- create_template("ach_red_ogr_6_ext_ru",
		-- -- {"loc_achievement_ogryn_2_bull_rushed_70_within_25_seconds_name"}, {"ru"},
			-- -- loc_text("Меня не остановить!")),
	-- --[+ Traditional Chinese 別讓我停下 +]--
	-- create_template("ach_red_ogr_6_ext_tw",
		-- {"loc_achievement_ogryn_2_bull_rushed_70_within_25_seconds_name"}, {"zh-tw"},
			-- loc_text("別讓我停下")),

	-- --[+ Move 40 metres with Bull Rush in under 20s on Heresy Threat or higher. (Private Game: Penance can only be completed in a private game) +]-- руоф При угрозе «Ересь» или выше переместитесь на 40 м с помощью «Бычьего натиска» менее чем за 20 с.
	-- --[+ Russian +]--
	-- -- create_template("ach_red_ogr_6_ext_desc_ru",
		-- -- {"loc_achievement_ogryn_2_bull_rushed_70_within_25_seconds_description"}, {"ru"},
			-- -- loc_text("Переместитесь на "..COLORS_Numbers.target_rgb.." метров с помощью способности "..COLORS_KWords_ru.bull_rush_rgb_ru.." или "..COLORS_KWords_ru.bull_rush4_rgb_ru.." в течение "..COLORS_Numbers.time_wind_rgb.." секунд на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше."..TALENTS_Enh_desc_penances_ru.ED_Dont_stop_me_now_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 在異端或更高威脅度下，在20秒內使用蠻牛衝撞移動40公尺。
	-- -- create_template("ach_red_ogr_6_ext_desc_tw",
		-- -- {"loc_achievement_ogryn_2_bull_rushed_70_within_25_seconds_description"}, {"zh-tw"},
			-- -- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，\n於 "..COLORS_Numbers.time_wind_rgb.." 秒內，使用 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.bull_rush_rgb_tw.."』或『"..COLORS_KWords_tw.bull_rush4_rgb_tw.."』技能移動累計 "..COLORS_Numbers.target_rgb.." 公尺。" ..TALENTS_Enh_desc_penances_tw.ED_Dont_stop_me_now_rgb_tw)),

	-- --[+ Can't Catch Me! +]-- руоф Меня не поймать
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_ru",
		-- {"loc_achievement_ogryn_ogryn_feel_no_pain_kills_at_max_name"}, {"ru"},
			-- loc_text("Меня не поймать!")),
	-- --[+ Traditional Chinese 抓不到我！ +]--
	-- create_template("ach_class_ogr_11_ext_tw",
		-- {"loc_achievement_ogryn_ogryn_feel_no_pain_kills_at_max_name"}, {"zh-tw"},
			-- loc_text("抓不到我！")),

	-- --[+ Kill 2500 enemies while at 7 stacks or higher of Feel No Pain. +]-- руоф Убейте врагов (2500), сохраняя не менее 7 ед. заряда «Неболита».
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_desc_ru",
		-- {"loc_achievement_ogryn_feel_no_pain_kills_at_max_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов, имея не менее "..COLORS_Numbers.n_7_rgb.." зарядов ключевого таланта "..COLORS_KWords_ru.feelnop_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在疊加了7或以上層數的麻木時擊殺2500名敵人。
	-- create_template("ach_class_ogr_11_ext_desc_tw",
		-- {"loc_achievement_ogryn_feel_no_pain_kills_at_max_description"}, {"zh-tw"},
			-- loc_text("在擁有不少於 "..COLORS_Numbers.n_7_rgb.." 層"..COLORS_KWords_tw.KeyStone_p_rgb_tw.."『"..COLORS_KWords_tw.feelnop_rgb_tw.."』效果時，擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Eat This! +]-- руоф Получи!
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_ru",
		-- {"loc_achievement_ogryn_grenade_rock_elites_or_specialists_name"}, {"ru"},
			-- loc_text("На, подавись!")),
	-- --[+ Traditional Chinese 嚐嚐這個！ +]--
	-- create_template("ach_class_ogr_11_ext_tw",
		-- {"loc_achievement_ogryn_grenade_rock_elites_or_specialists_name"}, {"zh-tw"},
			-- loc_text("嚐嚐這個！")),

	-- --[+ Kill 75 Specialists or Elites with the Big Friendly Rock. +]-- руоф Убейте особых или элитных врагов (75) с помощью «Большого дружелюбного валуна».
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_desc_ru",
		-- {"loc_achievement_ogryn_grenade_rock_elites_or_specialists_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." элитных врагов или специалистов с помощью блица "..COLORS_KWords_ru.bigfriendro_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用投石問路擊殺75名專家或精英。
	-- create_template("ach_class_ogr_11_ext_desc_tw",
		-- {"loc_achievement_ogryn_grenade_rock_elites_or_specialists_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.bigfriendro_rgb_tw.."』擊殺 "..COLORS_Numbers.target_rgb.." 名精英或專家敵人。")),

	-- --[+ Pile On +]-- руоф Навались
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_11_ext_ru",
		-- -- {"loc_achievement_ogryn_team_heavy_aura_kills_name"}, {"ru"},
			-- -- loc_text("Навались")),
	-- --[+ Traditional Chinese 堆起來 +]--
	-- create_template("ach_class_ogr_11_ext_tw",
		-- {"loc_achievement_ogryn_team_heavy_aura_kills_name"}, {"zh-tw"},
			-- loc_text("堆起來")),

	-- --[+ Kill 5000 enemies with Heavy Attacks while under the effect of Bonebreaker's Aura. Heavy Attack kills made by your team members also count. +]-- руоф Убейте врагов (5000) мощными атаками, находясь под действием «Ауры костолома». Если члены команды убивают мощными атаками, это тоже учитывается.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_desc_ru",
		-- {"loc_achievement_ogryn_team_heavy_aura_kills_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов заряженными атаками, находясь под действием ауры "..COLORS_KWords_ru.bonebraura_rgb_ru..". Убийства заряженными атаками, совершённые членами команды также засчитываются.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在碎骨者光環效果啟動時使用重攻擊擊殺5000名敵人。由小隊成員造成的重攻擊擊殺也算。
	-- create_template("ach_class_ogr_11_ext_desc_tw",
		-- {"loc_achievement_ogryn_team_heavy_aura_kills_description"}, {"zh-tw"},
			-- loc_text("在 "..COLORS_KWords_tw.Aura_p_rgb_tw.."『"..COLORS_KWords_tw.bonebraura_rgb_tw.."』效果內，\n以蓄力攻擊擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。\n隊友的蓄力擊殺也會計算。")),

	-- --[+ Sustained Fire +]-- руоф Непрерывный огонь
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_ru",
		-- {"loc_achievement_ogryn_kills_during_max_stacks_heavy_hitter_name"}, {"ru"},
			-- loc_text("Непрерывные удары")),
	-- --[+ Traditional Chinese 猛攻 +]--
	-- create_template("ach_class_ogr_11_ext_tw",
		-- {"loc_achievement_ogryn_kills_during_max_stacks_heavy_hitter_name"}, {"zh-tw"},
			-- loc_text("猛攻")),

	-- --[+ Kill 5000 enemies with heavy attacks, while maintaining 5 stacks of Heavy Hitter. +]-- руоф Убейте врагов (5000) мощными атаками, удерживая 5 зарядов «Тяжеловеса».
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_desc_ru",
		-- {"loc_achievement_ogryn_kills_during_max_stacks_heavy_hitter_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов заряженными атаками, удерживая "..COLORS_Numbers.n_5_rgb.." зарядов ключевого таланта "..COLORS_KWords_ru.heavyhitter_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在重拳出擊層數疊滿時，使用重擊擊殺5000名敵人。
	-- create_template("ach_class_ogr_11_ext_desc_tw",
		-- {"loc_achievement_ogryn_kills_during_max_stacks_heavy_hitter_new_description"}, {"zh-tw"},
			-- loc_text("維持 "..COLORS_KWords_tw.KeyStone_p_rgb_tw.."『"..COLORS_KWords_tw.heavyhitter_rgb_tw.."』達到 "..COLORS_Numbers.n_5_rgb.." 層時，\n使用重擊擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Clear the Path +]-- руоф Расчисти путь
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_11_ext_ru",
		-- -- {"loc_achievement_ogryn_2_medium_1_name"}, {"ru"},
			-- -- loc_text("Расчисти путь")),
	-- --[+ Traditional Chinese 掃清道路 +]--
	-- create_template("ach_class_ogr_11_ext_tw",
		-- {"loc_achievement_ogryn_2_medium_1_name"}, {"zh-tw"},
			-- loc_text("掃清道路")),

	-- --[+ On Malice Threat or higher, knock down 3 Ranged enemies using Bull Rush, 25 times. +]-- руоф При угрозе «Злоба» или выше сбейте с ног врагов (3) с дистанционной атакой с помощью «Бычьего натиска» 25 р.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_desc_ru",
		-- {"loc_achievement_ogryn_2_medium_1_description"}, {"ru"},
			-- loc_text("На сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше, "..COLORS_Numbers.target_rgb.." раз сбейте с ног "..COLORS_Numbers.num_enemies_rgb.." врагов с дальнобойным оружием, используя способность "..COLORS_KWords_ru.bull_rush_rgb_ru.." или "..COLORS_KWords_ru.bull_rush4_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高難度下，使用蠻牛沖撞擊倒3個遠程敵人25次。
	-- create_template("ach_class_ogr_11_ext_desc_tw",
		-- {"loc_achievement_ogryn_2_medium_1_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，\n使用 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.bull_rush_rgb_tw.."』或『"..COLORS_KWords_tw.bull_rush4_rgb_tw.."』，\n擊倒 "..COLORS_Numbers.num_enemies_rgb.." 名持遠程武器的敵人 "..COLORS_Numbers.target_rgb.." 次。")),

	-- --[+ Crowd Control +]-- руоф Сдерживание толпы
	-- --[+ Russian +]--
	-- -- create_template("ach_class_ogr_11_ext_ru",
		-- -- {"loc_achievement_ogryn_grenade_frag_group_of_enemies_name"}, {"ru"},
			-- -- loc_text("Сдерживание толпы")),
	-- --[+ Traditional Chinese 群體控制 +]--
	-- create_template("ach_class_ogr_11_ext_tw",
		-- {"loc_achievement_ogryn_grenade_frag_group_of_enemies_name"}, {"zh-tw"},
			-- loc_text("群體控制")),

	-- --[+ With one Frag Bomb kill 25 enemies, 25 times. +]-- руоф Убейте врагов (25) одной «Осколочной бомбой» 25 р.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_desc_ru",
		-- {"loc_achievement_ogryn_grenade_frag_group_of_enemies_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.amount_var_rgb.." врагов одной осколочной гранатой от блица "..COLORS_KWords_ru.fragbomb_rgb_ru..". Повторите это задание "..COLORS_Numbers.target_rgb.." раз.")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用一顆破片炸彈擊殺25名敵人25次。
	-- create_template("ach_class_ogr_11_ext_desc_tw",
		-- {"loc_achievement_ogryn_grenade_frag_group_of_enemies_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.fragbomb_rgb_tw.."』，單次擊殺 "..COLORS_Numbers.amount_var_rgb.." 名敵人。\n共需達成 "..COLORS_Numbers.target_rgb.." 次。")),

	-- --[+ Spray and Pray (To the Emperor) +]-- руоф Стреляй и восхваляй (Императора)
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_ru",
		-- {"loc_achievement_ogryn_kills_during_barrage_threshold_name"}, {"ru"},
			-- loc_text("Стреляй и молись (Императору)")),
	-- --[+ Traditional Chinese 掃射，然後向帝皇祈禱吧 +]--
	-- create_template("ach_class_ogr_11_ext_tw",
		-- {"loc_achievement_ogryn_kills_during_barrage_threshold_name"}, {"zh-tw"},
			-- loc_text("掃射，然後向帝皇祈禱吧")),

	-- --[+ Kill 25 enemies, 50 times, during a single activation of Point-Blank Barrage. +]-- руоф Убейте врагов (25) 50 р. во время однократной активации «Решительного натиска».
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_desc_ru",
		-- {"loc_achievement_ogryn_kills_during_barrage_threshold_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.amount_var_rgb.." врагов за однократное применение способности "..COLORS_KWords_ru.pbbarrage_rgb_ru..". Повторите это задание "..COLORS_Numbers.target_rgb.." раз.")),
	-- --[+ Traditional Chinese +]--
	-- -- 於同一次貼身火力效果期間，擊殺25名敵人50次。
	-- create_template("ach_class_ogr_11_ext_desc_tw",
		-- {"loc_achievement_ogryn_kills_during_barrage_threshold_description"}, {"zh-tw"},
			-- loc_text("使用 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.pbbarrage_rgb_tw.."』一次擊殺 "..COLORS_Numbers.amount_var_rgb.." 名敵人。\n完成此目標共需達成 "..COLORS_Numbers.target_rgb.." 次。")),

	-- --[+ You Can't Hide from Us! +]-- руоф От нас не спрятаться!
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_ru",
		-- {"loc_achievement_ogryn_team_suppressed_aura_kills_name"}, {"ru"},
			-- loc_text("Тебе от нас не спрятаться!")),
	-- --[+ Traditional Chinese 你躲不掉的！ +]--
	-- create_template("ach_class_ogr_11_ext_tw",
		-- {"loc_achievement_ogryn_team_suppressed_aura_kills_name"}, {"zh-tw"},
			-- loc_text("你躲不掉的！")),

	-- --[+ Kill 7500 suppressed enemies while under the effect of Coward Culling. Kills made by any affected team member also count. +]-- руоф Убейте ослабленных врагов (7500), находясь под действием «Трусливые отбросы». Убийства, совершенные любым членом команды под действием эффекта, тоже учитываются.
	-- --[+ Russian +]--
	-- create_template("ach_class_ogr_11_ext_desc_ru",
		-- {"loc_achievement_ogryn_team_suppressed_aura_kills_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." подавленных врагов, находясь под эффектом ауры "..COLORS_KWords_ru.cowculaura_rgb_ru..". Убийства, совершённые любым членом команды под действием эффекта ауры, также учитываются.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在優勝劣汰效果啟動時擊殺7500名被壓制的敵人。由獲得效果的小隊成員造成的擊殺也算。
	-- create_template("ach_class_ogr_11_ext_desc_tw",
		-- {"loc_achievement_ogryn_team_suppressed_aura_kills_description"}, {"zh-tw"},
			-- loc_text("在 "..COLORS_KWords_tw.Aura_p_rgb_tw.."『"..COLORS_KWords_tw.cowculaura_rgb_tw.."』效果內，擊殺 "..COLORS_Numbers.target_rgb.." 名被壓制的敵人。\n隊友在光環下所造成的擊殺同樣會被計算。")),

	-- --[+ Something In Your Eye - У тебя что-то в глазу +]-- руоф Нечто в твоих глазах
	-- --[+ Russian +]--
	-- create_template("ach_red_ogr_3_ext_ru",
		-- {"loc_achievement_ogryn_2_killed_corruptor_with_grenade_impact_name"}, {"ru"},
			-- loc_text("У тебя что-то в глазу")),
	-- --[+ Traditional Chinese 你眼睛裡有東西 +]--
	-- create_template("ach_red_ogr_3_ext_tw",
		-- {"loc_achievement_ogryn_2_killed_corruptor_with_grenade_impact_name"}, {"zh-tw"},
			-- loc_text("你眼睛裡有東西")),

	-- --[+ Kill a Corruptor by hitting it in the eye with your grenade box. +]-- руоф Убейте осквернителя, попав ему в глаз гранатой.
	-- --[+ Russian +]--
	-- -- create_template("ach_red_ogr_3_ext_desc_ru",
		-- -- {"loc_achievement_ogryn_2_killed_corruptor_with_grenade_impact_description"}, {"ru"},
			-- -- loc_text("Убейте Осквернителя, попав ему ящиком с гранатами в глаз."..TALENTS_Enh_desc_penances_ru.ED_Something_in_your_eye_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 使用手雷擊中腐蝕者的眼睛來殺死它。
	-- -- create_template("ach_red_ogr_3_ext_desc_tw",
		-- -- {"loc_achievement_ogryn_2_killed_corruptor_with_grenade_impact_description"}, {"zh-tw"},
			-- -- loc_text("用 "..COLORS_KWords_tw.Blitz_p_rgb_tw.."『"..COLORS_KWords_tw.big_box_rgb_tw.."』直接擊中腐蝕者眼睛將其擊殺。" ..TALENTS_Enh_desc_penances_tw.ED_Something_in_your_eye_rgb_tw)),

	-- --[+ Heavyweight Champion +]-- руоф Чемпион-тяжеловес
	-- --[+ Russian +]--
	-- -- create_template("ach_red_ogr_7_ext_ru",
		-- -- {"loc_achievement_ogryn_2_bull_rushed_4_ogryns_name"}, {"ru"},
			-- -- loc_text("Чемпион-тяжеловес")),
	-- --[+ Traditional Chinese 重量級冠軍 +]--
	-- create_template("ach_red_ogr_7_ext_tw",
		-- {"loc_achievement_ogryn_2_bull_rushed_4_ogryns_name"}, {"zh-tw"},
			-- loc_text("重量級冠軍")),

	-- --[+ On Heresy Threat or higher, knock down 4 enemy Ogryns (Bulwarks, Crushers, Plague Ogryns, and/or Reapers) with a single Bull Rush charge. +]-- руоф При угрозе «Ересь» или выше сбейте с ног одним зарядом «Бычьего натиска» вражеских Огринов (Бастион, Дробитель, Чумной Огрин и/или Жнец): 4.
	-- --[+ Russian +]--
	-- -- create_template("ach_red_ogr_7_ext_desc_ru",
		-- -- {"loc_achievement_ogryn_2_bull_rushed_4_ogryns_description"}, {"ru"},
			-- -- loc_text("На сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше, сбейте с ног "..COLORS_Numbers.target_rgb.." любых вражеских огрина одним зарядом способности  "..COLORS_KWords_ru.bull_rush_rgb_ru.." или "..COLORS_KWords_ru.bull_rush4_rgb_ru..". Огринами являются: Бастион, Дробитель, Жнец и Чумной огрин."..TALENTS_Enh_desc_penances_ru.ED_Heavyweight_champion_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 以異教徒或以上威脅度，用1次蠻牛衝撞擊倒4個歐格林敵人（堡壘、粉碎者、瘟疫歐格林和/或收割者）。
	-- -- create_template("ach_red_ogr_7_ext_desc_tw",
		-- -- {"loc_achievement_ogryn_2_bull_rushed_4_ogryns_description"}, {"zh-tw"},
			-- -- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度中，\n使用 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.bull_rush_rgb_tw.."』或『"..COLORS_KWords_tw.bull_rush4_rgb_tw.."』，\n單次衝鋒擊倒 "..COLORS_Numbers.target_rgb.." 名敵方歐格林。\n歐格林敵人包含：堡壘、粉碎者、收割者與瘟疫歐格林。" ..TALENTS_Enh_desc_penances_tw.ED_Heavyweight_champion_rgb_tw)),

	-- --[+ I'm in Charge - Я главный +]-- руоф Я главнее
	-- --[+ Russian +]--
	-- create_template("ach_red_ogr_2_ext_ru",
		-- {"loc_achievement_ogryn_2_bull_rushed_charging_ogryn_name"}, {"ru"},
			-- loc_text("Я главный")),
	-- --[+ Traditional Chinese 對衝 +]--
	-- create_template("ach_red_ogr_2_ext_tw",
		-- {"loc_achievement_ogryn_2_bull_rushed_charging_ogryn_name"}, {"zh-tw"},
			-- loc_text("對衝")),

	-- --[+ Use Bull Rush to interrupt a Plague Ogryn's charge. +]-- руоф Используйте «Бычий натиск», чтобы прервать рывок Чумного Огрина.
	-- --[+ Russian +]--
	-- -- create_template("ach_red_ogr_2_ext_desc_ru",
		-- -- {"loc_achievement_ogryn_2_bull_rushed_charging_ogryn_description"}, {"ru"},
			-- -- loc_text("Используйте способность "..COLORS_KWords_ru.bull_rush_rgb_ru.." или "..COLORS_KWords_ru.bull_rush4_rgb_ru..", чтобы прервать рывок Чумного Огрина."..TALENTS_Enh_desc_penances_ru.ED_Im_in_charge_rgb_ru)),
	-- --[+ Traditional Chinese +]--
	-- -- 使用蠻牛衝撞來中斷瘟疫歐格林的衝鋒。
	-- -- create_template("ach_red_ogr_2_ext_desc_tw",
		-- -- {"loc_achievement_ogryn_2_bull_rushed_charging_ogryn_description"}, {"zh-tw"},
			-- -- loc_text("用 "..COLORS_KWords_tw.Ability_p_rgb_tw.."『"..COLORS_KWords_tw.bull_rush_rgb_tw.."』或『"..COLORS_KWords_tw.bull_rush4_rgb_tw.."』，\n中斷瘟疫歐格林的衝鋒。" ..TALENTS_Enh_desc_penances_tw.ED_Im_in_charge_rgb_tw)),

	-- --[+ +TACTICAL - ТАКТИЧЕСКИЕ - 戰術 + +]--
		-- --[+ OFFENSIVE - АТАКА +]--
		-- --[+ Offensive +]-- руоф Наступление
	-- --[+ Russian +]--
	-- create_template("ach_off_0_ext_ru",
		-- {"loc_achievement_category_offensive_label"}, {"ru"},
			-- loc_text("Атака")),
	-- --[+ Traditional Chinese 攻擊 +]--
	-- create_template("ach_off_0_ext_tw",
		-- {"loc_achievement_category_offensive_label"}, {"zh-tw"},
			-- loc_text("攻擊")),

	-- --[+  +]-- руоф Враг моего врага - мой друг
	-- --[+ Russian +]--
	-- -- create_template("ach_off_1_ext_ru",
		-- -- {"loc_achievement_enemies_killed_by_poxburster_name"}, {"ru"},
			-- -- loc_text("Враг моего врага - мой друг")),
	-- create_template("ach_off_1_ext_tw",
		-- {"loc_achievement_enemies_killed_by_poxburster_name"}, {"zh-tw"},
			-- loc_text("敵人的敵人即朋友")),

	-- --[+  +]-- руоф Убейте врагов (10), уничтожив рядом с ними чумного Взрывуна.
	-- --[+ Russian +]--
	-- create_template("ach_off_1_ext_desc_ru",
		-- {"loc_achievement_enemies_killed_by_poxburster_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов, уничтожив рядом с ними Чумного взрывника.")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用瘟疫爆者的爆炸即鯊100名敵人。
	-- create_template("ach_off_1_ext_desc_tw",
		-- {"loc_achievement_enemies_killed_by_poxburster_description"}, {"zh-tw"},
			-- loc_text("引爆瘟疫爆者以擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Flyswatter +]-- руоф Мухобойка
	-- --[+ Russian +]--
	-- -- create_template("ach_off_5_ext_ru",
		-- -- {"loc_achievement_enemies_climbing_name"}, {"ru"},
			-- -- loc_text("Мухобойка")),
	-- --[+ Traditional Chinese 蒼蠅拍 +]--
	-- create_template("ach_off_5_ext_tw",
		-- {"loc_achievement_enemies_climbing_name"}, {"zh-tw"},
			-- loc_text("蒼蠅拍")),

	-- --[+ Kill 50 climbing enemies. +]-- руоф Убить карабкающихся врагов: 50.
	-- --[+ Russian +]--
	-- create_template("ach_off_5_ext_desc_ru",
		-- {"loc_achievement_enemies_climbing_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов, карабкающихся наверх.")),
	-- --[+ Traditional Chinese +]--
	-- -- 殺死50名攀爬的敵人。
	-- create_template("ach_off_5_ext_desc_tw",
		-- {"loc_achievement_enemies_climbing_description"}, {"zh-tw"},
			-- loc_text("擊殺 "..COLORS_Numbers.target_rgb.." 名正在攀爬中的敵人。")),

	-- --[+  +]-- руоф На примете 
	-- --[+ Russian +]--
	-- -- create_template("ach_off_1_ext_ru",
		-- -- {"loc_achievement_enemies_killed_by_barrels_name"}, {"ru"},
			-- -- loc_text("На примете")),
	-- --[+ Traditional Chinese 狀態意識 +]--
	-- create_template("ach_off_1_ext_tw",
		-- {"loc_achievement_enemies_killed_by_barrels_name"}, {"zh-tw"},
			-- loc_text("狀態意識")),

	-- --[+ Kill 500000 enemies in total. +]-- руоф Убейте врагов (100) с помощью взрывных бочек.
	-- --[+ Russian +]--
	-- create_template("ach_off_1_ext_desc_ru",
		-- {"loc_achievement_enemies_killed_by_barrels_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов с помощью взрывных бочек.")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用爆炸統擊殺xx名敵人。
	-- create_template("ach_off_1_ext_desc_tw",
		-- {"loc_achievement_enemies_killed_by_barrels_description"}, {"zh-tw"},
			-- loc_text("利用爆炸桶擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Attack, Attack, Attack! +]-- руоф Нападай, нападай!
	-- --[+ Russian +]--
	-- create_template("ach_off_7_ext_ru",
		-- {"loc_achievement_group_offence_name"}, {"ru"},
			-- loc_text("Атакуй, атакуй, атакуй!")),
	-- --[+ Traditional Chinese 攻擊，攻擊，攻擊！ +]--
	-- create_template("ach_off_7_ext_tw",
		-- {"loc_achievement_group_offence_name"}, {"zh-tw"},
			-- loc_text("攻擊, 攻擊, 攻擊!")),

	-- --[+ Complete the following Offence Penances. +]-- руоф Выполните следующие искупления с атакой.
	-- --[+ Russian +]--
	-- create_template("ach_off_7_ext_desc_ru",
		-- {"loc_achievement_group_offence_description"}, {"ru"},
			-- loc_text("Завершите следующие Искупления атаки.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成下列攻擊苦修。
	-- create_template("ach_off_7_ext_desc_tw",
		-- {"loc_achievement_group_offence_description"}, {"zh-tw"},
			-- loc_text("完成以下攻擊型苦修任務。")),

	-- -- !! Duplicate? loc_achievement_enemies_killed_by_barrels_name --
		-- --[+  +]-- руоф Не время для ран
	-- --[+ Russian +]--
	-- -- create_template("ach_off_1_ext_ru",
		-- -- {"loc_achievement_enemies_killed_by_barrels_name"}, {"ru"},
			-- -- loc_text("Не время для ран")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_off_1_ext_tw",
		-- -- {"loc_achievement_enemies_killed_by_barrels_name"}, {"zh-tw"},
			-- -- loc_text("狀態意識")),

		-- --[+  +]-- руоф Действуя сообща, выполните задание при угрозе «Ересь» или выше так, чтобы всех вас не сбили с ног более 5 р.
	-- --[+ Russian +]--
	-- -- create_template("ach_off_1_ext_desc_ru",
		-- -- {"loc_achievement_enemies_killed_by_barrels_description"}, {"ru"},
			-- -- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов с помощью взрывных бочек.")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用爆炸統擊殺xx名敵人。
	-- -- create_template("ach_off_1_ext_desc_tw",
		-- -- {"loc_achievement_enemies_killed_by_barrels_description"}, {"zh-tw"},
			-- -- loc_text("利用爆炸桶擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。")),
	-- -- !! Duplicate? loc_achievement_enemies_killed_by_barrels_name, loc_achievement_enemies_killed_by_barrels_description --

	-- --[+ Frenzied Killer (1-3) +]-- руоф Неистовый убийца (1-3)
	-- --[+ Russian +]--
	-- -- create_template("ach_off_4_ext_ru",
		-- -- {"loc_achievement_fast_enemies_1-3_name"}, {"ru"},
			-- -- loc_text("Бешеный убийца (1-3)")),
	-- --[+ Traditional Chinese 狂熱殺手 +]--
	-- create_template("ach_off_4_ext_tw",
		-- {"loc_achievement_fast_enemies_1-3_name"}, {"zh-tw"},
			-- loc_text("狂熱殺手 (1-3)")),

	-- --[+ Kill 120 enemies in 30s. +]-- руоф Убить врагов: 60 за 30 с.
	-- --[+ Russian +]--
	-- create_template("ach_off_4_ext_desc_ru",
		-- {"loc_achievement_fast_enemies_x_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов за "..COLORS_Numbers.time_wind_rgb.." секунд.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在30秒內擊殺xx名敵人。
	-- create_template("ach_off_4_ext_desc_tw",
		-- {"loc_achievement_fast_enemies_x_description"}, {"zh-tw"},
			-- loc_text("在 "..COLORS_Numbers.time_wind_rgb.." 秒內擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Purge the Heretic (1-5) +]-- руоф Очистить еретиков (1-5)
	-- --[+ Russian +]--
	-- -- create_template("ach_off_1_ext_ru",
		-- -- {"loc_achievement_enemies_1-5_name"}, {"ru"},
			-- -- loc_text("Очистить еретиков (1-5)")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_off_1_ext_tw",
		-- -- {"loc_achievement_enemies_1-5_name"}, {"zh-tw"},
			-- -- loc_text("淨化異端 (1-5)")),

	-- --[+ Kill 500000 enemies in total. +]-- руоф Убить всего врагов: 500000.
	-- --[+ Russian +]--
	-- create_template("ach_off_1_ext_desc_ru",
		-- {"loc_achievement_enemies_x_description"}, {"ru"},
			-- loc_text("Убейте в сумме "..COLORS_Numbers.target_rgb.." врагов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 總共殺死xx0000名敵人。
	-- create_template("ach_off_1_ext_desc_tw",
		-- {"loc_achievement_enemies_x_description"}, {"zh-tw"},
			-- loc_text("累計擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Dodge This (1) +]-- руоф Попробуй увернись (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_off_6_ext_ru",
		-- -- {"loc_achievement_fast_headshot_1_name"}, {"ru"},
			-- -- loc_text("Увернись от этого (1)")),
	-- --[+ Traditional Chinese 躲得開嗎 +]--
	-- create_template("ach_off_6_ext_tw",
		-- {"loc_achievement_fast_headshot_1_name"}, {"zh-tw"},
			-- loc_text("躲得開嗎 (1)")),

	-- --[+ Dodge This (2) +]-- руоф Попробуй увернись (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_off_6_ext_ru",
		-- -- {"loc_achievement_fast_headshot_2_name"}, {"ru"},
			-- -- loc_text("Увернись от этого (2)")),
	-- --[+ Traditional Chinese 躲得開嗎 +]--
	-- create_template("ach_off_6_ext_tw",
		-- {"loc_achievement_fast_headshot_2_name"}, {"zh-tw"},
			-- loc_text("躲得開嗎 (2)")),
	
	-- --[+ Dodge This (3) +]-- руоф Попробуй увернись (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_off_6_ext_ru",
		-- -- {"loc_achievement_fast_headshot_3_name"}, {"ru"},
			-- -- loc_text("Увернись от этого (3)")),
	-- --[+ Traditional Chinese 躲得開嗎 +]--
	-- create_template("ach_off_6_ext_tw",
		-- {"loc_achievement_fast_headshot_3_name"}, {"zh-tw"},
			-- loc_text("躲得開嗎 (3)")),

	-- --[+ Kill 15 enemies with Headshots within 10s. +]-- руоф Убить врагов выстрелами в голову: 15 за 10 с.
	-- --[+ Russian +]--
	-- create_template("ach_off_6_ext_desc_ru",
		-- {"loc_achievement_fast_headshot_x_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов выстрелами в голову в течение "..COLORS_Numbers.n_10_rgb.." секунд.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在10秒內擊殺xx名敵人。
	-- create_template("ach_off_6_ext_desc_tw",
		-- {"loc_achievement_fast_headshot_x_description"}, {"zh-tw"},
			-- loc_text("在 "..COLORS_Numbers.n_10_rgb.." 秒內以爆頭擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ Time to Die (1) +]-- руоф Пора умирать (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_off_3_ext_ru",
		-- -- {"loc_achievement_boss_fast_1_name"}, {"ru"},
			-- -- loc_text("Время умирать (1)")),
	-- --[+ Traditional Chinese 死亡將至 +]--
	-- create_template("ach_off_3_ext_tw",
		-- {"loc_achievement_boss_fast_1_name"}, {"zh-tw"},
			-- loc_text("死亡將至 (1)")),

	-- --[+ Time to Die (2) +]-- руоф Пора умирать (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_off_3_ext_ru",
		-- -- {"loc_achievement_boss_fast_2_name"}, {"ru"},
			-- -- loc_text("Время умирать (2)")),
	-- --[+ Traditional Chinese 死亡將至 +]--
	-- create_template("ach_off_3_ext_tw",
		-- {"loc_achievement_boss_fast_2_name"}, {"zh-tw"},
			-- loc_text("死亡將至 (2)")),

	-- --[+ Time to Die (3) +]-- руоф Пора умирать (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_off_3_ext_ru",
		-- -- {"loc_achievement_boss_fast_3_name"}, {"ru"},
			-- -- loc_text("Время умирать (3)")),
	-- --[+ Traditional Chinese 死亡將至 +]--
	-- create_template("ach_off_3_ext_tw",
		-- {"loc_achievement_boss_fast_3_name"}, {"zh-tw"},
			-- loc_text("死亡將至 (3)")),

	-- --[+ Kill a Monstrosity in 5s or less. +]-- руоф Убить чудовище за 5 с или меньше.
	-- --[+ Russian +]--
	-- create_template("ach_off_3_ext_desc_ru",
		-- {"loc_achievement_boss_fast_x_description"}, {"ru"},
			-- loc_text("Убейте Монстра за "..COLORS_Numbers.target_rgb.." секунд или меньше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在x秒內擊殺一隻巨獸。
	-- create_template("ach_off_3_ext_desc_tw",
		-- {"loc_achievement_boss_fast_x_description"}, {"zh-tw"},
			-- loc_text("在 "..COLORS_Numbers.target_rgb.." 秒內擊殺一隻巨獸。")),

	-- --[+ Serial Killer +]-- руоф Серийный убийца
	-- --[+ Russian +]--
	-- -- create_template("ach_off_2_ext_ru",
		-- -- {"loc_achievement_consecutive_headshots_name"}, {"ru"},
			-- -- loc_text("Серийный убийца")),
	-- --[+ Traditional Chinese 連環殺手 +]--
	-- create_template("ach_off_2_ext_tw",
		-- {"loc_achievement_consecutive_headshots_name"}, {"zh-tw"},
			-- loc_text("連環殺手")),

	-- --[+ Kill 20 consecutive enemies with headshots. +]-- руоф Последовательно убейте выстрелами в голову врагов (20).
	-- --[+ Russian +]--
	-- create_template("ach_off_2_ext_desc_ru",
		-- {"loc_achievement_consecutive_headshots_description"}, {"ru"},
			-- loc_text("Совершите "..COLORS_Numbers.target_rgb.." последовательных убийств выстрелами врагам в голову.")),
	-- --[+ Traditional Chinese +]--
	-- -- 連續爆頭殺死20名敵人
	-- create_template("ach_off_2_ext_desc_tw",
		-- {"loc_achievement_consecutive_headshots_description"}, {"zh-tw"},
			-- loc_text("連續爆頭擊殺 "..COLORS_Numbers.target_rgb.." 名敵人。")),

	-- --[+ +DEFENSIVE - ЗАЩИТА - 防禦 + +]--
		-- --[+ Defensive +]-- руоф Оборона
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_0_ext_ru",
		-- {"loc_achievement_category_defensive_label"}, {"ru"},
			-- loc_text("Защита")),
	-- --[+ Traditional Chinese 防禦 +]--
	-- create_template("ach_red_vet_0_ext_tw",
		-- {"loc_achievement_category_defensive_label"}, {"zh-tw"},
			-- loc_text("防禦")),

	-- --[+ Flawless Execution (1) +]-- руоф Безупречная казнь (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_3_ext_ru",
		-- -- {"loc_achievement_flawless_mission_1_name"}, {"ru"},
			-- -- loc_text("Безупречное исполнение (1)")),
	-- --[+ Traditional Chinese 完美處決 (1) +]--
	-- create_template("ach_red_vet_3_ext_tw",
		-- {"loc_achievement_flawless_mission_1_name"}, {"zh-tw"},
			-- loc_text("完美處決（1）")),

	-- --[+ Flawless Execution (2) +]-- руоф Безупречная казнь (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_3_ext_ru",
		-- -- {"loc_achievement_flawless_mission_2_name"}, {"ru"},
			-- -- loc_text("Безупречное исполнение (2)")),
	-- --[+ Traditional Chinese 完美處決 (2) +]--
	-- create_template("ach_red_vet_3_ext_tw",
		-- {"loc_achievement_flawless_mission_2_name"}, {"zh-tw"},
			-- loc_text("完美處決（2）")),

	-- --[+ Flawless Execution (3) +]-- руоф Безупречная казнь (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_3_ext_ru",
		-- -- {"loc_achievement_flawless_mission_3_name"}, {"ru"},
			-- -- loc_text("Безупречное исполнение (3)")),
	-- --[+ Traditional Chinese 完美處決 (3) +]--
	-- create_template("ach_red_vet_3_ext_tw",
		-- {"loc_achievement_flawless_mission_3_name"}, {"zh-tw"},
			-- loc_text("完美處決（3）")),

	-- --[+ Complete 10 missions in a row without being downed on Malice Threat or higher. +]-- руоф При угрозе «Злоба» или выше выполнить несколько заданий подряд (15) так, чтобы никто в группе не был сбит с ног.
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_3_ext_desc_ru",
		-- {"loc_achievement_flawless_mission_x_description"}, {"ru"},
			-- loc_text("Выполните "..COLORS_Numbers.target_rgb.." миссий подряд, не будучи ни разу сбитым с ног, на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡毒或更高難度下，在不被擊倒的情況下連續完成x個任務。
	-- create_template("ach_red_vet_3_ext_desc_tw",
		-- {"loc_achievement_flawless_mission_x_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度中，連續完成 "..COLORS_Numbers.target_rgb.." 場任務且期間未曾被擊倒。")),

	-- --[+ Case for the Defence +]-- руоф Версия защиты
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_8_ext_ru",
		-- {"loc_achievement_group_defence_name"}, {"ru"},
			-- loc_text("Дело в пользу защиты")),
	-- --[+ Traditional Chinese 防禦典型 +]--
	-- create_template("ach_red_vet_8_ext_tw",
		-- {"loc_achievement_group_defence_name"}, {"zh-tw"},
			-- loc_text("防禦典型")),

	-- --[+ Complete the following Defence Penances. +]-- руоф Выполните следующие искупления с обороной.
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_8_ext_desc_ru",
		-- {"loc_achievement_group_defence_description"}, {"ru"},
			-- loc_text("Завершите следующие Искупления защиты.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成下列防禦苦修任務。
	-- create_template("ach_red_vet_8_ext_desc_tw",
		-- {"loc_achievement_group_defence_description"}, {"zh-tw"},
			-- loc_text("完成以下防禦型苦修任務。")),

	-- --[+ Zigging and Zagging +]-- руоф Вертись волчком
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_4_ext_ru",
		-- {"loc_achievement_total_sprint_dodges_name"}, {"ru"},
			-- loc_text("Уворачиваться и уклоняться")),
	-- --[+ Traditional Chinese 閃電走位 +]--
	-- create_template("ach_red_vet_4_ext_tw",
		-- {"loc_achievement_total_sprint_dodges_name"}, {"zh-tw"},
			-- loc_text("閃電走位")),

	-- --[+ Dodge a total of 99 shots by sprinting. +]-- руоф При помощи бега уклониться от выстрелов: 99.
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_4_ext_desc_ru",
		-- {"loc_achievement_total_sprint_dodges_description"}, {"ru"},
			-- loc_text("Уклонитесь от "..COLORS_Numbers.target_rgb.." выстрелов с помощью бега.")),
	-- --[+ Traditional Chinese +]--
	-- -- 通過衝刺總共閃避99次攻擊。
	-- create_template("ach_red_vet_4_ext_desc_tw",
		-- {"loc_achievement_total_sprint_dodges_description"}, {"zh-tw"},
			-- loc_text("透過衝刺閃避 "..COLORS_Numbers.target_rgb.." 發射攻擊。")),

	-- --[+ The Emperor Protects (1) +]-- руоф Император защищает (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_1_ext_ru",
		-- -- {"loc_achievement_fast_blocks_1_name"}, {"ru"},
			-- -- loc_text("Император защищает (1)")),
	-- --[+ Traditional Chinese 帝皇的護佑 (1) +]--
	-- create_template("ach_red_vet_1_ext_tw",
		-- {"loc_achievement_fast_blocks_1_name"}, {"zh-tw"},
			-- loc_text("帝皇的護佑 (1)")),
	
	-- --[+ The Emperor Protects (2) +]-- руоф Император защищает (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_1_ext_ru",
		-- -- {"loc_achievement_fast_blocks_2_name"}, {"ru"},
			-- -- loc_text("Император защищает (2)")),
	-- --[+ Traditional Chinese 帝皇的護佑 (2) +]--
	-- create_template("ach_red_vet_1_ext_tw",
		-- {"loc_achievement_fast_blocks_2_name"}, {"zh-tw"},
			-- loc_text("帝皇的護佑 (2)")),

	-- --[+ The Emperor Protects (3) +]-- руоф Император защищает (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_1_ext_ru",
		-- -- {"loc_achievement_fast_blocks_3_name"}, {"ru"},
			-- -- loc_text("Император защищает (3)")),
	-- --[+ Traditional Chinese 帝皇的護佑 (3) +]--
	-- create_template("ach_red_vet_1_ext_tw",
		-- {"loc_achievement_fast_blocks_3_name"}, {"zh-tw"},
			-- loc_text("帝皇的護佑 (3)")),

	-- --[+ Block 900 damage in 10s. +]-- руоф Блокировать 900 ед. урона в течение 10 с.
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_1_ext_desc_ru",
		-- {"loc_achievement_fast_blocks_x_description"}, {"ru"},
			-- loc_text("Заблокируйте "..COLORS_Numbers.target_rgb.." единиц урона за "..COLORS_Numbers.time_wind_rgb.." секунд.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在xx秒內格檔xxx點傷害值。
	-- create_template("ach_red_vet_1_ext_desc_tw",
		-- {"loc_achievement_fast_blocks_x_description"}, {"zh-tw"},
			-- loc_text("在 "..COLORS_Numbers.time_wind_rgb.." 秒內格擋 "..COLORS_Numbers.target_rgb.." 傷害。")),

	-- --[+ Untouchable +]-- руоф Неприкасаемый
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_7_ext_ru",
		-- -- {"loc_achievement_mission_no_damage_name"}, {"ru"},
			-- -- loc_text("Неприкасаемый")),
	-- --[+ Traditional Chinese 不可觸碰 +]--
	-- create_template("ach_red_vet_7_ext_tw",
		-- {"loc_achievement_mission_no_damage_name"}, {"zh-tw"},
			-- loc_text("不可觸碰")),

	-- --[+ Complete a Mission without taking any Health damage. +]-- руоф Выполнить задание, не получив урона.
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_7_ext_desc_ru",
		-- {"loc_achievement_mission_no_damage_description"}, {"ru"},
			-- loc_text("Завершите миссию, не получив урона "..COLORS_KWords_ru.Health_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成1個任務而不受到任何生命值傷害。
	-- create_template("ach_red_vet_7_ext_desc_tw",
		-- {"loc_achievement_mission_no_damage_description"}, {"zh-tw"},
			-- loc_text("在未受到任何『"..COLORS_KWords_tw.Health_rgb_tw.."』傷害的情況下完成一場任務。")),

	-- --[+ Preternatural Dodge (1) +]-- руоф Сверхъестественное уклонение (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_2_ext_ru",
		-- -- {"loc_achievement_consecutive_dodge_1_name"}, {"ru"},
			-- -- loc_text("Сверхъестественное уклонение (1)")),
	-- --[+ Traditional Chinese 超現實閃避 (1) +]--
	-- create_template("ach_red_vet_2_ext_tw",
		-- {"loc_achievement_consecutive_dodge_1_name"}, {"zh-tw"},
			-- loc_text("超現實閃避 (1)")),
	
	-- --[+ Preternatural Dodge (2) +]-- руоф Сверхъестественное уклонение (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_2_ext_ru",
		-- -- {"loc_achievement_consecutive_dodge_2_name"}, {"ru"},
			-- -- loc_text("Сверхъестественное уклонение (2)")),
	-- --[+ Traditional Chinese 超現實閃避 (2) +]--
	-- create_template("ach_red_vet_2_ext_tw",
		-- {"loc_achievement_consecutive_dodge_2_name"}, {"zh-tw"},
			-- loc_text("超現實閃避 (2)")),
	
	-- --[+ Preternatural Dodge (3) +]-- руоф Сверхъестественное уклонение (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_2_ext_ru",
		-- -- {"loc_achievement_consecutive_dodge_3_name"}, {"ru"},
			-- -- loc_text("Сверхъестественное уклонение (3)")),
	-- --[+ Traditional Chinese 超現實閃避 (3) +]--
	-- create_template("ach_red_vet_2_ext_tw",
		-- {"loc_achievement_consecutive_dodge_3_name"}, {"zh-tw"},
			-- loc_text("超現實閃避 (3)")),

	-- --[+ Dodge 20 attacks without taking damage. +]-- руоф Уклониться от ударов без получения урона: 20.
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_2_ext_desc_ru",
		-- {"loc_achievement_consecutive_dodge_x_description"}, {"ru"},
			-- loc_text("Уклонитесь от "..COLORS_Numbers.target_rgb.." атак, не получив урона.")),
	-- --[+ Traditional Chinese +]--
	-- -- 閃避xx次攻擊而不受傷害。
	-- create_template("ach_red_vet_2_ext_desc_tw",
		-- {"loc_achievement_consecutive_dodge_x_description"}, {"zh-tw"},
			-- loc_text("連續閃避 "..COLORS_Numbers.target_rgb.." 次攻擊且不受到任何傷害。")),

	-- --[+ Violent Tendencies +]-- руоф Склонность к жестокости
	-- --[+ Russian +]--
	-- -- create_template("ach_red_vet_6_ext_ru",
		-- -- {"loc_achievement_melee_toughness_name"}, {"ru"},
			-- -- loc_text("Склонность к жестокости")),
	-- --[+ Traditional Chinese 暴力傾向 +]--
	-- create_template("ach_red_vet_6_ext_tw",
		-- {"loc_achievement_melee_toughness_name"}, {"zh-tw"},
			-- loc_text("暴力傾向")),

	-- --[+ Regenerate 40000 Toughness from melee kills. +]-- руоф С помощью убийств в ближнем бою восстановить стойкость: 40000.
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_6_ext_desc_ru",
		-- {"loc_achievement_melee_toughness_description"}, {"ru"},
			-- loc_text("Восстановите "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." от убийств в ближнем бою.")),
	-- --[+ Traditional Chinese +]--
	-- -- 從近戰擊殺中回復40000點韌性。
	-- create_template("ach_red_vet_6_ext_desc_tw",
		-- {"loc_achievement_melee_toughness_description"}, {"zh-tw"},
			-- loc_text("透過近戰擊殺恢復 "..COLORS_Numbers.target_rgb.." 點『"..COLORS_KWords_tw.Toughness_rgb_tw.."』。")),

	-- --[+ Figure Four +]-- руоф Ускользнул
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_5_ext_ru",
		-- {"loc_achievement_slide_dodge_name"}, {"ru"},
			-- loc_text("Выход в ноги")),
	-- --[+ Traditional Chinese 四字固 +]--
	-- create_template("ach_red_vet_5_ext_tw",
		-- {"loc_achievement_slide_dodge_name"}, {"zh-tw"},
			-- loc_text("四字固")),

	-- --[+ Use your Slide to avoid an enemy attack. +]-- руоф Использовать «Скольжение» для уклонения от атаки врага.
	-- --[+ Russian +]--
	-- create_template("ach_red_vet_5_ext_desc_ru",
		-- {"loc_achievement_slide_dodge_description"}, {"ru"},
			-- loc_text("Используйте подкат, чтобы избежать атаки врага.")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用滑步躲開1名敵人的攻擊。
	-- create_template("ach_red_vet_5_ext_desc_tw",
		-- {"loc_achievement_slide_dodge_description"}, {"zh-tw"},
			-- loc_text("使用滑行動作閃避一次敵方攻擊。")),

	-- --[+ +TEAM - КОМАНДА - 小隊 + +]--
		-- --[+ Team +]-- руоф Команда
	-- --[+ Russian +]--
	-- -- create_template("ach_tea_0_ext_ru",
		-- -- {"loc_achievement_category_teamplay_label"}, {"ru"},
			-- -- loc_text("Команда")),
	-- --[+ Traditional Chinese 小隊 +]--
	-- create_template("ach_tea_0_ext_tw",
		-- {"loc_achievement_category_teamplay_label"}, {"zh-tw"},
			-- loc_text("小隊")),

	-- --[+ War's Not Over (1-5) +]-- руоф Война не окончена (1-5)
	-- --[+ Russian +]--
	-- -- create_template("ach_tea_1_ext_ru",
		-- -- {"loc_achievement_revive_1-5_name"}, {"ru"},
			-- -- loc_text("Война не окончена (1-5)")),
	-- --[+ Traditional Chinese 戰爭未完 (1-5) +]--
	-- create_template("ach_tea_1_ext_tw",
		-- {"loc_achievement_revive_1-5_name"}, {"zh-tw"},
			-- loc_text("戰爭未完 (1-5)")),

	-- --[+ Rescue a total of 500 Operatives. +]-- руоф Спасти оперативников: 500.
	-- --[+ Russian +]--
	-- create_template("ach_tea_1_ext_desc_ru",
		-- {"loc_achievement_revive_x_description"}, {"ru"},
			-- loc_text("Спасите в общей сложности "..COLORS_Numbers.target_rgb.." оперативников.")),
	-- --[+ Traditional Chinese +]--
	-- -- 拯救總共xx名幹員。
	-- create_template("ach_tea_1_ext_desc_tw",
		-- {"loc_achievement_revive_x_description"}, {"zh-tw"},
			-- loc_text("累計救援 "..COLORS_Numbers.target_rgb.." 位幹員。")),

	-- --[+ Discipline & Teamwork (1-5) +]-- руоф Дисциплина и командная работа (1-5)
	-- --[+ Russian +]--
	-- -- create_template("ach_tea_6_ext_ru",
		-- -- {"loc_achievement_deployables_1-5_name"}, {"ru"},
			-- -- loc_text("Дисциплина и командная работа (1-5)")),
	-- --[+ Traditional Chinese 紀律和協作 +]--
	-- -- create_template("ach_tea_6_ext_tw",
	-- -- 	{"loc_achievement_deployables_1-5_name"}, {"zh-tw"},
	-- -- 		loc_text("紀律和協作 (1-5)")),

	-- --[+ Share 500 ammo or health packs. +]-- руоф Поделиться боеприпасами или аптечкой: 500.
	-- --[+ Russian +]--
	-- create_template("ach_tea_6_ext_desc_ru",
		-- {"loc_achievement_deployables_x_description"}, {"ru"},
			-- loc_text("Поделитесь "..COLORS_Numbers.target_rgb.." раз ящиками с боеприпасами или медикаментами.")),
	-- --[+ Traditional Chinese +]--
	-- -- 分享xxx次彈藥或醫療包。
	-- create_template("ach_tea_6_ext_desc_tw",
		-- {"loc_achievement_deployables_x_description"}, {"zh-tw"},
			-- loc_text("分享彈藥箱或醫療箱共計 "..COLORS_Numbers.target_rgb.." 次。")),

	-- --[+ Good Samaritan +]-- руоф Добрый самаритянин
	-- --[+ Russian +]--
	-- -- create_template("ach_tea_7_ext_ru",
		-- -- {"loc_achievement_group_cooperation_name"}, {"ru"},
			-- -- loc_text("Добрый самаритянин")),
	-- --[+ Traditional Chinese 樂善好施 +]--
	-- create_template("ach_tea_7_ext_tw",
		-- {"loc_achievement_group_cooperation_name"}, {"zh-tw"},
			-- loc_text("樂善好施")),

	-- --[+ Complete the following Team Penances. +]-- руоф Выполнить следующие командные искупления.
	-- --[+ Russian +]--
	-- create_template("ach_tea_7_ext_desc_ru",
		-- {"loc_achievement_group_cooperation_description"}, {"ru"},
			-- loc_text("Завершите следующие Искупления команды.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成下列小隊相關苦修。
	-- create_template("ach_tea_7_ext_desc_tw",
		-- {"loc_achievement_group_cooperation_description"}, {"zh-tw"},
			-- loc_text("完成下列小隊相關苦修。")),

	-- --[+ Buddy Up +]-- руоф Закадычные друзья
	-- --[+ Russian +]--
	-- create_template("ach_tea_4_ext_ru",
		-- {"loc_achievement_coherency_toughness_name"}, {"ru"},
			-- loc_text("Сотрудничество")),
	-- --[+ Traditional Chinese 救友扶傷 +]--
	-- create_template("ach_tea_4_ext_tw",
		-- {"loc_achievement_coherency_toughness_name"}, {"zh-tw"},
			-- loc_text("救友扶傷")),

	-- --[+ Replenish 2000 Toughness from Coherency. +]-- руоф С помощью «Сплоченности» восстановить стойкость: 2000.
	-- --[+ Russian +]--
	-- create_template("ach_tea_4_ext_desc_ru",
		-- {"loc_achievement_coherency_toughness_description"}, {"ru"},
			-- loc_text("Восстановите "..COLORS_Numbers.target_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." под действием "..COLORS_KWords_ru.Coherency_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 通過協同補充2000點韌性。
	-- create_template("ach_tea_4_ext_desc_tw",
		-- {"loc_achievement_coherency_toughness_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.Coherency_rgb_tw.."』狀態下，恢復 "..COLORS_Numbers.target_rgb.." 點『"..COLORS_KWords_tw.Toughness_rgb_tw.."』。")),

	-- --[+ Dream Team +]-- руоф Закадычные друзья
	-- --[+ Russian +]--
	-- create_template("ach_tea_3_ext_ru",
		-- {"loc_achievement_flawless_team_name"}, {"ru",},
			-- loc_text("Команда мечты")),
	-- --[+ Traditional Chinese 最佳陣容 +]--
	-- create_template("ach_tea_3_ext_tw",
		-- {"loc_achievement_flawless_team_name"}, {"zh-tw"},
			-- loc_text("最佳陣容")),

	-- --[+ Complete 100 missions without anyone being downed. +]-- руоф Завершите 100 заданий так, чтобы никто в группе не был сбит с ног.
	-- --[+ Russian +]--
	-- create_template("ach_tea_3_ext_desc_ru",
		-- {"loc_achievement_flawless_team_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий так, чтобы никого из команды не сбили с ног.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在全員不被擊倒的情況下完成100項任務。
	-- create_template("ach_tea_3_ext_desc_tw",
		-- {"loc_achievement_flawless_team_description"}, {"zh-tw"},
			-- loc_text("完成 "..COLORS_Numbers.target_rgb.." 場任務，且隊伍中無任何成員被擊倒。")),

	-- --[+ Leave No One Behind +]-- руоф Никого не оставляйте позади
	-- --[+ Russian +]--
	-- create_template("ach_tea_5_ext_ru",
		-- {"loc_achievement_revive_all_namе"}, {"ru"},
			-- loc_text("Никого не бросать")),
	-- --[+ Traditional Chinese 不拋棄不放棄 +]--
	-- create_template("ach_tea_5_ext_tw",
		-- {"loc_achievement_revive_all_namе"}, {"zh-tw"},
			-- loc_text("不拋棄不放棄")),

	-- -- [+ Complete a single mission after Rescuing 3 different Operatives at least once from captivity. +]-- руоф Завершите одно задание, вызволив из плена различных оперативников (3) хотя бы один раз.
	-- --[+ Russian +]--
	-- create_template("ach_tea_5_ext_desc_ru",
		-- {"loc_achievement_revive_all_description"}, {"ru"},
			-- loc_text("Завершите одну миссию, освободив из плена "..COLORS_Numbers.target_rgb.." разных оперативников хотя бы по разу.")),
	-- --[+ Traditional Chinese +]--
	-- -- 拯救3個不同的被俘幹員後完成1個任務。
	-- create_template("ach_tea_5_ext_desc_tw",
		-- {"loc_achievement_revive_all_description"}, {"zh-tw"},
			-- loc_text("在單場任務中，至少各救出一次共 "..COLORS_Numbers.target_rgb.." 位不同的隊友。")),

	-- --[+ Up and at 'Em! (1) +]-- руоф Подъем! (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_tea_2_ext_ru",
		-- -- {"loc_achievement_assists_1_name"}, {"ru"},
			-- -- loc_text("Поднимайся и вперёд! (1)")),
	-- --[+ Traditional Chinese 起來幹活 (1-) +]--
	-- create_template("ach_tea_2_ext_tw",
		-- {"loc_achievement_assists_1_name"}, {"zh-tw"},
			-- loc_text("起來幹活！ (1)")),

	-- --[+ Up and at 'Em! (2) +]-- руоф Подъем! (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_tea_2_ext_ru",
		-- -- {"loc_achievement_assists_2_name"}, {"ru"},
			-- -- loc_text("Поднимайся и вперёд! (2)")),
	-- --[+ Traditional Chinese 起來幹活！ (2) +]--
	-- create_template("ach_tea_2_ext_tw",
		-- {"loc_achievement_assists_2_name"}, {"zh-tw"},
			-- loc_text("起來幹活！ (2)")),

	-- --[+ Up and at 'Em! (3) +]-- руоф Подъем! (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_tea_2_ext_ru",
		-- -- {"loc_achievement_assists_3_name"}, {"ru"},
			-- -- loc_text("Поднимайся и вперёд! (3)")),
	-- --[+ Traditional Chinese 起來幹活！ (3) +]--
	-- create_template("ach_tea_2_ext_tw",
		-- {"loc_achievement_assists_3_name"}, {"zh-tw"},
			-- loc_text("起來幹活！ (3)")),

	-- --[+ Up and at 'Em! (4) +]-- руоф Подъем! (4)
	-- --[+ Russian +]--
	-- -- create_template("ach_tea_2_ext_ru",
		-- -- {"loc_achievement_assists_4_name"}, {"ru"},
			-- -- loc_text("Поднимайся и вперёд! (4)")),
	-- --[+ Traditional Chinese 起來幹活！ (4) +]--
	-- create_template("ach_tea_2_ext_tw",
		-- {"loc_achievement_assists_4_name"}, {"zh-tw"},
			-- loc_text("起來幹活！ (4)")),

	-- --[+ Up and at 'Em! (5) +]-- руоф Подъем! (5)
	-- --[+ Russian +]--
	-- -- create_template("ach_tea_2_ext_ru",
		-- -- {"loc_achievement_assists_5_name"}, {"ru"},
			-- -- loc_text("Поднимайся и вперёд! (5)")),
	-- --[+ Traditional Chinese 起來幹活！ (5) +]--
	-- create_template("ach_tea_2_ext_tw",
		-- {"loc_achievement_assists_5_name"}, {"zh-tw"},
			-- loc_text("起來幹活！ (5)")),

	-- --[+ Help 1000 downed Operatives back up. +]-- руоф Помочь подняться поваленным оперативникам: 1000.
	-- --[+ Russian +]--
	-- create_template("ach_tea_2_ext_desc_ru",
		-- {"loc_achievement_assists_x_description"}, {"ru"},
			-- loc_text("Помогите "..COLORS_Numbers.target_rgb.." сбитым с ног оперативникам вернуться в бой.")),
	-- --[+ Traditional Chinese +]--
	-- -- 幫助xx00名被擊倒的幹員站起來。
	-- create_template("ach_tea_2_ext_desc_tw",
		-- {"loc_achievement_assists_x_description"}, {"zh-tw"},
			-- loc_text("協助 "..COLORS_Numbers.target_rgb.." 位被擊倒的隊友重返戰場。")),

	-- --[+ +HERETICS - ЕРЕТИКИ - 異端 + +]--
		-- --[+ Heretics +]-- руоф Еретические
	-- --[+ Russian +]--
	-- create_template("ach_her_0_ext_ru",
		-- {"loc_achievement_category_enemies_label"}, {"ru"},
			-- loc_text("Еретики")),
	-- --[+ Traditional Chinese 異端 +]--
	-- create_template("ach_her_0_ext_tw",
		-- {"loc_achievement_category_enemies_label"}, {"zh-tw"},
			-- loc_text("異端")),

	-- --[+ Heretics +]-- руоф Барабанная дробь
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_shotgunner_spread_dodged_name"}, {"ru"},
			-- -- loc_text("Барабанная дробь")),
	-- --[+ Traditional Chinese 霰彈槍 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_shotgunner_spread_dodged_name"}, {"zh-tw"},
			-- loc_text("霰彈槍")),

	-- --[+  +]-- руоф Увернитесь от разброса из дробовика (50). [По 1 за каждого отброса с дробовиком]
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_shotgunner_spread_dodged_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 躲掉50次霰彈槍攻擊。[每個渣滓或血痂霰彈手只能算一次]
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_shotgunner_spread_dodged_description"}, {"zh-tw"},
			-- loc_text("躲掉 "..COLORS_Numbers.target_rgb.." 名霰彈槍敵人，每名只計算1次。")),

	-- --[+ Lex Vigilant +]-- руоф Бдительность Закона
	-- --[+ Russian +]--
	-- create_template("ach_her_9_ext_ru",
		-- {"loc_achievement_all_cultist_elites_killed_name"}, {"ru"},
			-- loc_text("Закон Неусыпный")),
	-- --[+ Traditional Chinese 法律的警示 +]--
	-- create_template("ach_her_9_ext_tw",
		-- {"loc_achievement_all_cultist_elites_killed_name"}, {"zh-tw"},
			-- loc_text("法律的警示")),

	-- --[+ Kill 10 of each Dreg elite. +]-- руоф Убейте элитных отбросов (по 10 каждого вида).
	-- --[+ Russian +]--
	-- create_template("ach_her_9_ext_desc_ru",
		-- {"loc_achievement_all_cultist_elites_killed_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов каждого типа из элитных дрегов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊殺每種渣滓精英各10名。
	-- create_template("ach_her_9_ext_desc_tw",
		-- {"loc_achievement_all_cultist_elites_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺每種『渣滓』精英各 "..COLORS_Numbers.target_rgb.." 名。")),

	-- --[+  +]-- руоф Бойся топора
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_crusher_overhead_smash_dodged_name"}, {"ru"},
			-- -- loc_text("Бойся топора")),
	-- --[+ Traditional Chinese 不為魚肉 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_crusher_overhead_smash_dodged_name"}, {"zh-tw"},
			-- loc_text("不為魚肉")),

	-- --[+ Kill 10 of each Dreg elite. +]-- руоф Увернитесь от рубящих ударов огринов-дробителей 50 р. [Считается только одно уклонение за каждого огрина-дробителя]
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_crusher_overhead_smash_dodged_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 躲避50次歐格林輾壓者的過頭斬擊。[每個歐格林輾壓者只能算一次]
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_crusher_overhead_smash_dodged_description"}, {"zh-tw"},
			-- loc_text("躲避 "..COLORS_Numbers.target_rgb.." 名輾壓者的重鎚攻擊，每名只計算1次。")),

	-- --[+  +]-- руоф Будь здоров
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_team_team_chaos_beast_of_nurgle_slain_no_corruption_name"}, {"ru"},
			-- -- loc_text("Будь здоров")),
	-- --[+ Traditional Chinese 早日康復 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_team_team_chaos_beast_of_nurgle_slain_no_corruption_name"}, {"zh-tw"},
			-- loc_text("早日康復")),

	-- --[+  +]-- руоф Убейте тварь Нургла так, чтобы ни один член команды не пострадал от ее гниющей рвоты.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在沒有任何小隊成員被納垢巨獸的腐敗嘔吐擊中的情況下擊殺一隻納垢巨獸。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description"}, {"zh-tw"},
			-- loc_text("在沒有任何小隊成員被納垢巨獸的腐敗嘔吐擊中的情況下擊殺  "..COLORS_Numbers.target_rgb.." 隻納垢巨獸。")),

	-- --[+ Blowout +]-- руоф Взрывной успех
	-- --[+ Russian +]--
	-- -- create_template("ach_her_5_ext_ru",
		-- -- {"loc_achievement_melee_renegade_name"}, {"ru"},
			-- -- loc_text("Взрыв")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_5_ext_tw",
		-- {"loc_achievement_melee_renegade_name"}, {"zh-tw"},
			-- loc_text("爆發")),

	-- --[+ Kill 10 Bombers with melee attacks. +]-- руоф Убить взрывунов в ближнем бою: 10.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_5_ext_desc_ru",
		-- -- {"loc_achievement_melee_renegade_description"}, {"ru"},
			-- -- loc_text("Убейте "..COLORS_Numbers.target_rgb.." Чумных взрывников атаками ближнего боя.")),
	-- --[+ Traditional Chinese +]--
	-- -- 利用近戰攻擊擊殺10名轟炸者。 -- Need to check if this is correct.
	-- create_template("ach_her_5_ext_desc_tw",
		-- {"loc_achievement_melee_renegade_description"}, {"zh-tw"},
			-- loc_text("使用近戰攻擊擊殺 "..COLORS_Numbers.target_rgb.." 隻瘟疫爆者。")),

	-- --[+  +]-- руоф Задуем свечи
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_team_team_chaos_beast_of_nurgle_slain_no_corruption_name"}, {"ru"},
			-- -- loc_text("Задуем свечи")),
	-- --[+ Traditional Chinese 熄滅蠟燭 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_team_team_chaos_beast_of_nurgle_slain_no_corruption_name"}, {"zh-tw"},
			-- loc_text("熄滅蠟燭")),

	-- -- !!Duplicate loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description --
		-- --[+  +]-- руоф Убейте огнеметчиков из числа скабов и отбросов (50) до того, как они используют свои способности.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_her_1_ext_desc_tw",
		-- -- {"loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description"}, {"zh-tw"},
			-- -- loc_text("在沒有任何小隊成員被納垢巨獸的腐敗嘔吐擊中的情況下擊殺  "..COLORS_Numbers.target_rgb.." 隻納垢巨獸。")),
	-- -- !!Duplicate loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description --

	-- --[+ Bullying the Bully +]-- руоф Запугивание задиры
	-- --[+ Russian +]--
	-- create_template("ach_her_18_ext_ru",
		-- {"loc_achievement_ogryn_gunner_melee_name"}, {"ru"},
			-- loc_text("Задирание задиры")),
	-- --[+ Traditional Chinese 恃強凌強 +]--
	-- create_template("ach_her_18_ext_tw",
		-- {"loc_achievement_ogryn_gunner_melee_name"}, {"zh-tw"},
			-- loc_text("恃強凌強")),

	-- --[+ Kill 10 Reapers in melee. +]-- руоф Убейте Жнеца (10) в ближнем бою.
	-- --[+ Russian +]--
	-- create_template("ach_her_18_ext_desc_ru",
		-- {"loc_achievement_ogryn_gunner_melee_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." Жнецов в ближнем бою.")),
	-- --[+ Traditional Chinese +]--
	-- -- 近戰殺死10名收割者。
	-- create_template("ach_her_18_ext_desc_tw",
		-- {"loc_achievement_ogryn_gunner_melee_description"}, {"zh-tw"},
			-- loc_text("使用近戰攻擊擊殺 "..COLORS_Numbers.target_rgb.." 名收割者。")),

	-- --[+ Cull the Traitors +]-- руоф Избавиться от предателей
	-- --[+ Russian +]--
	-- create_template("ach_her_7_ext_ru",
		-- {"loc_achievement_group_enemies_renegades_name"}, {"ru"},
			-- loc_text("Уничтожьте предателей")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_7_ext_tw",
		-- {"loc_achievement_group_enemies_renegades_name"}, {"zh-tw"},
			-- loc_text("剷除叛徒")),

	-- --[+ Complete the following Scab Penances. +]-- руоф Выполнить следующие скаб-искупления.
	-- --[+ Russian +]--
	-- create_template("ach_her_7_ext_desc_ru",
		-- {"loc_achievement_group_enemies_renegades_description"}, {"ru"},
			-- loc_text("Завершите следующие Искупления, связанные со скабами.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成下列『血痂』相關苦修。
	-- -- Not used in the zh-tw
	-- create_template("ach_her_7_ext_desc_tw",
		-- {"loc_achievement_group_enemies_renegades_description"}, {"zh-tw"},
			-- loc_text("完成下列『血痂』相關苦修。")),

	-- --[+ Banishment +]-- руоф Изгнание
	-- --[+ Russian +]--
	-- -- create_template("ach_her_16_ext_ru",
		-- -- {"loc_achievement_all_chaos_killed_name"}, {"ru"},
			-- -- loc_text("Изгнание")),
	-- --[+ Traditional Chinese 敢盡殺絕 +]--
	-- create_template("ach_her_16_ext_tw",
		-- {"loc_achievement_all_chaos_killed_name"}, {"zh-tw"},
			-- loc_text("敢盡殺絕")),

	-- --[+ Kill every type of Terror. +]-- руоф Убейте все виды ужасов.
	-- --[+ Russian +]--
	-- create_template("ach_her_16_ext_desc_ru",
		-- {"loc_achievement_all_chaos_killed_description"}, {"ru"},
			-- loc_text("Убейте врагов каждого типа из Ужасов хаоса.")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊殺全種族恐魔。
	-- create_template("ach_her_16_ext_desc_tw",
		-- {"loc_achievement_all_chaos_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺所有類型的『混沌恐懼體』敵人各 "..COLORS_Numbers.target_rgb.." 次。")),

	-- --[+ Banisher +]-- руоф Изгоняющий демонов
	-- --[+ Russian +]--
	-- create_template("ach_her_19_ext_ru",
		-- {"loc_achievement_banish_daemonhost_name"}, {"ru"},
			-- loc_text("Изгоняющий")),
	-- --[+ Traditional Chinese 放逐者 +]--
	-- create_template("ach_her_19_ext_tw",
		-- {"loc_achievement_banish_daemonhost_name"}, {"zh-tw"},
			-- loc_text("放逐者")),

	-- --[+ Banish a Daemonhost. +]-- руоф Изгоните демонхоста.
	-- --[+ Russian +]--
	-- create_template("ach_her_19_ext_desc_ru",{"loc_achievement_banish_daemonhost_description"}, {"ru"},
			-- loc_text("Изгоните Демонхоста.")),
	-- --[+ Traditional Chinese +]--
	-- -- 放逐一個惡魔宿主。
	-- create_template("ach_her_19_ext_desc_tw",
		-- {"loc_achievement_banish_daemonhost_description"}, {"zh-tw"},
			-- loc_text("殺死 "..COLORS_Numbers.target_rgb.." 個惡魔宿主。")),

	-- --[+  +]-- руоф К бою готов!
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_training_grounds_fully_unlocked_name"}, {"ru"},
			-- -- loc_text("К бою готов!")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_training_grounds_fully_unlocked_name"}, {"zh-tw"},
			-- loc_text("準備開打！")),

	-- --[+  +]-- руоф Полностью разблокируйте тренировочную площадку.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_training_grounds_fully_unlocked_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完整解鎖訓練場。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_training_grounds_fully_unlocked_description"}, {"zh-tw"},
			-- loc_text("完整解鎖訓練場。")),

	-- --[+  +]-- руоф Как ты подкрался?
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_bulwark_backstab_damage_inflicted_name"}, {"ru"},
			-- -- loc_text("Как ты подкрался?")),
	-- --[+ Traditional Chinese 意外一擊 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_bulwark_backstab_damage_inflicted_name"}, {"zh-tw"},
			-- loc_text("意外一擊")),

	-- --[+  +]-- руоф Нанесите урон (25000) огрину-бастиону ударом в спину.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_bulwark_backstab_damage_inflicted_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用背刺對歐格林堡壘造成25000點傷害
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_bulwark_backstab_damage_inflicted_description"}, {"zh-tw"},
			-- loc_text("使用背刺對歐格林堡壘造成 "..COLORS_Numbers.target_rgb.." 點傷害")),

	-- --[+ Traitorous Collective +]-- руоф Коллектив предателей
	-- --[+ Russian +]--
	-- -- create_template("ach_her_3_ext_ru",
		-- -- {"loc_achievement_all_renegades_killed_name"}, {"ru"},
			-- -- loc_text("Коллектив предателей")),
	-- --[+ Traditional Chinese 叛軍集團 +]--
	-- create_template("ach_her_3_ext_tw",
		-- {"loc_achievement_all_renegades_killed_name"}, {"zh-tw"},
			-- loc_text("叛軍集團")),

	-- --[+ Kill every type Scab enemy. +]-- руоф Убейте все виды врагов-Скабов.
	-- --[+ Russian +]--
	-- create_template("ach_her_3_ext_desc_ru",
		-- {"loc_achievement_all_renegades_killed_description"}, {"ru"},
			-- loc_text("Убейте врагов Скабов каждого типа.")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_3_ext_desc_tw",
		-- {"loc_achievement_all_renegades_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺所有類型的『血痂』敵人各 "..COLORS_Numbers.target_rgb.." 次。")),

	-- --[+ Nightmare Patrol +]-- руоф Кошмарный патруль
	-- --[+ Russian +]--
	-- -- create_template("ach_her_14_ext_ru",
		-- -- {"loc_achievement_all_chaos_specials_killed_name"}, {"ru"},
			-- -- loc_text("Кошмарный патруль")),
	-- --[+ Traditional Chinese 夢魘巡查隊 +]--
	-- create_template("ach_her_14_ext_tw",
		-- {"loc_achievement_all_chaos_specials_killed_name"}, {"zh-tw"},
			-- loc_text("夢魘巡查隊")),

	-- --[+ Kill 10 of each type of Terror Specialist. +]-- руоф Убейте специалистов из числа Ужасов: 10 каждого типа.
	-- --[+ Russian +]--
	-- create_template("ach_her_14_ext_desc_ru",
		-- {"loc_achievement_all_chaos_specials_killed_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов Ужасов хаоса.")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊殺10個每種類型的恐魔專家。
	-- create_template("ach_her_14_ext_desc_tw",
		-- {"loc_achievement_all_chaos_specials_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺每種『混沌恐懼體』專家敵人各 "..COLORS_Numbers.target_rgb.." 名。")),

	-- --[+  +]-- руоф Как ты подкрался?
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_team_chaos_spawned_killed_no_players_grabbed_name"}, {"ru"},
			-- -- loc_text("Как ты подкрался?")),
	-- --[+ Traditional Chinese 怪物驅散 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_team_chaos_spawned_killed_no_players_grabbed_name"}, {"zh-tw"},
			-- loc_text("怪物驅散")),

	-- --[+  +]-- руоф Убейте отродье Хаоса так, чтобы не схватили ни одного члена команды.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_team_chaos_spawned_killed_no_players_grabbed_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在沒有任何小隊成員被渾沌魔物抓住的情況下擊殺一隻渾沌魔物。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_team_chaos_spawned_killed_no_players_grabbed_description"}, {"zh-tw"},
			-- loc_text("在沒有任何小隊成員被渾沌魔物抓住的情況下擊殺 "..COLORS_Numbers.target_rgb.." 隻渾沌魔物。")),

	-- --[+  +]-- руоф Не попасться в сети
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_trapper_net_dodged_name"}, {"ru"},
			-- -- loc_text("Не попасться в сети")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_trapper_net_dodged_name"}, {"zh-tw"},
			-- loc_text("漏網之魚")),

	-- --[+  +]-- руоф Увернитесь от сетей ловушечника (50). [По 1 за каждого ловушечника]
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_trapper_net_dodged_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 躲避50次陷阱兵的網子。[每個陷阱兵只能算一次]	
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_trapper_net_dodged_description"}, {"zh-tw"},
			-- loc_text("躲避 "..COLORS_Numbers.target_rgb.." 名陷阱兵的網子，每名只計算1次。")),

	-- --[+  +]-- руоф Обезвреживатель
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_grenadier_killed_before_attack_occured_name"}, {"ru"},
			-- -- loc_text("Обезвреживатель")),
	-- --[+ Traditional Chinese +]--
	-- -- Not used in the zh-tw
	-- -- create_template("ach_her_1_ext_tw",
		-- -- {"loc_achievement_grenadier_killed_before_attack_occured_name"}, {"zh-tw"},
			-- -- loc_text("拆彈專家")),

	-- --[+  +]-- руоф Убейте гренадеров из числа скабов и отбросов (50) до того, как они используют свои способности.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_grenadier_killed_before_attack_occured_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- Not used in the zh-tw

	-- --[+  +]-- руоф Отвали от меня!
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_pox_hounds_pushed_name"}, {"ru"},
			-- -- loc_text("Отвали от меня!")),
	-- --[+ Traditional Chinese 滾遠一點！ +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_pox_hounds_pushed_name"}, {"zh-tw"},
			-- loc_text("滾遠一點！")),

	-- --[+  +]-- руоф Подбросьте чумных гончих (50) в воздух. [По 1 за каждую гончую]
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_pox_hounds_pushed_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在半空中推開50隻瘟疫獵犬。[每隻獵犬只能算一次]
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_pox_hounds_pushed_description"}, {"zh-tw"},
			-- loc_text("推開 "..COLORS_Numbers.target_rgb.." 隻瘟疫獵犬，每隻只計算1次。")),

	-- --[+ Dreg Hunter (1) +]-- руоф Охотник на отбросов (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_11_ext_ru",
		-- -- {"loc_achievement_kill_cultists_1_name"}, {"ru"},
			-- -- loc_text("Охотник на дрегов (1)")),
	-- --[+ Traditional Chinese 渣滓獵手 (1) +]--
	-- create_template("ach_her_11_ext_tw",
		-- {"loc_achievement_kill_cultists_1_name"}, {"zh-tw"},
			-- loc_text("渣滓獵手 (1)")),
	
	-- --[+ Dreg Hunter (2) +]-- руоф Охотник на отбросов (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_11_ext_ru",
		-- -- {"loc_achievement_kill_cultists_2_name"}, {"ru"},
			-- -- loc_text("Охотник на дрегов (2)")),
	-- --[+ Traditional Chinese 渣滓獵手 (2) +]--
	-- create_template("ach_her_11_ext_tw",
		-- {"loc_achievement_kill_cultists_2_name"}, {"zh-tw"},
			-- loc_text("渣滓獵手 (2)")),

	-- --[+ Dreg Hunter (3) +]-- руоф Охотник на отбросов (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_11_ext_ru",
		-- -- {"loc_achievement_kill_cultists_3_name"}, {"ru"},
			-- -- loc_text("Охотник на дрегов (3)")),
	-- --[+ Traditional Chinese 渣滓獵手 (3) +]--
	-- create_template("ach_her_11_ext_tw",
		-- {"loc_achievement_kill_cultists_3_name"}, {"zh-tw"},
			-- loc_text("渣滓獵手 (3)")),

	-- --[+ Dreg Hunter (4) +]-- руоф Охотник на отбросов (4)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_11_ext_ru",
		-- -- {"loc_achievement_kill_cultists_4_name"}, {"ru"},
			-- -- loc_text("Охотник на дрегов (4)")),
	-- --[+ Traditional Chinese 渣滓獵手 (4) +]--
	-- create_template("ach_her_11_ext_tw",
		-- {"loc_achievement_kill_cultists_4_name"}, {"zh-tw"},
			-- loc_text("渣滓獵手 (4)")),

	-- --[+ Dreg Hunter (5) +]-- руоф Охотник на отбросов (5)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_11_ext_ru",
		-- -- {"loc_achievement_kill_cultists_5_name"}, {"ru"},
			-- -- loc_text("Охотник на дрегов (5)")),
	-- --[+ Traditional Chinese 渣滓獵手 (5) +]--
	-- create_template("ach_her_11_ext_tw",
		-- {"loc_achievement_kill_cultists_5_name"}, {"zh-tw"},
			-- loc_text("渣滓獵手 (5)")),


	-- --[+ Kill 25000 Dregs. +]-- руоф Убить отбросов: 25000.
	-- --[+ Russian +]--
	-- create_template("ach_her_11_ext_desc_ru",
		-- {"loc_achievement_kill_cultists_x_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." дрегов.")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_11_ext_desc_tw",
		-- {"loc_achievement_kill_cultists_x_description"}, {"zh-tw"},
			-- loc_text("擊殺 "..COLORS_Numbers.target_rgb.." 名『渣滓』敵人。")),

	-- --[+ Purge the Heretics +]-- руоф Очистить еретиков
	-- --[+ Russian +]--
	-- create_template("ach_her_13_ext_ru",
		-- {"loc_achievement_group_enemies_cultists_name"}, {"ru"},
			-- loc_text("Очисти еретиков")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_13_ext_tw",
		-- {"loc_achievement_group_enemies_cultists_name"}, {"zh-tw"},
			-- loc_text("淨化異端")),

	-- --[+ Complete the following Dreg Penances. +]-- руоф Выполнить следующие искупления отбросов.
	-- --[+ Russian +]--
	-- create_template("ach_her_13_ext_desc_ru",
		-- {"loc_achievement_group_enemies_cultists_description"}, {"ru"},
			-- loc_text("Завершите следующие Искупления, связанные с дрегами.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成下列渣滓相關苦修。
	-- create_template("ach_her_13_ext_desc_tw",
		-- {"loc_achievement_group_enemies_cultists_description"}, {"zh-tw"},
			-- loc_text("完成下列『渣滓』相關苦修。")),

	-- --[+ Cleanse the Taint +]-- руоф Очистить порчу
	-- --[+ Russian +]--
	-- create_template("ach_her_20_ext_ru",
		-- {"loc_achievement_group_enemies_chaos_name"}, {"ru"},
			-- loc_text("Очисти порчу")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_20_ext_tw",
		-- {"loc_achievement_group_enemies_chaos_name"}, {"zh-tw"},
			-- loc_text("除污去穢")),
 
	-- --[+ Complete the following Terror Penances. +]-- руоф Выполнить следующие ужасные искупления.
	-- --[+ Russian +]--
	-- create_template("ach_her_20_ext_desc_ru",
		-- {"loc_achievement_group_enemies_chaos_description"}, {"ru"},
			-- loc_text("Завершите следующие Искупления, связанные с Ужасами варпа.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成下列恐魔相關苦修。
	-- create_template("ach_her_20_ext_desc_tw",
		-- {"loc_achievement_group_enemies_chaos_description"}, {"zh-tw"},
			-- loc_text("完成下列『恐魔』相關苦修。")),

	-- --[+ Renegade Master +]-- руоф Повелитель-отступник
	-- --[+ Russian +]--
	-- create_template("ach_her_1_ext_ru",
		-- {"loc_achievement_all_renegade_specials_killed_name"}, {"ru"},
			-- loc_text("Мастер-отступник")),
	-- --[+ Traditional Chinese 叛軍主宰 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_all_renegade_specials_killed_name"}, {"zh-tw"},
			-- loc_text("叛軍主宰")),

	-- --[+ Kill 10 of each Scab Specialist enemy. +]-- руоф Убейте Скабов-специалистов (по 10 каждого вида).
	-- --[+ Russian +]--
	-- create_template("ach_her_1_ext_desc_ru",
		-- {"loc_achievement_all_renegade_specials_killed_description"}, {"ru"},
			-- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из скабов-специалистов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 殺死每種血痂專家敵人各10名。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_all_renegade_specials_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺每種『血痂』專家敵人各 "..COLORS_Numbers.target_rgb.." 名。")),

	-- --[+ Decapitation Protocol +]-- руоф Протокол обезглавливания
	-- --[+ Russian +]--
	-- -- create_template("ach_her_12_ext_ru",
		-- -- {"loc_achievement_cultiss_berzerker_head_name"}, {"ru"},
			-- -- loc_text("Протокол обезглавливания")),
	-- --[+ Traditional Chinese +]--
	-- -- Not used in the zh-tw
	-- create_template("ach_her_12_ext_tw",
		-- {"loc_achievement_cultiss_berzerker_head_name"}, {"zh-tw"},
			-- loc_text("斬首協議")),

	-- --[+ Kill 10 Dreg Ragers with Headshots. +]-- руоф Убейте отброса-буйного (10) выстрелом в голову.
	-- --[+ Russian +]--
	-- create_template("ach_her_12_ext_desc_ru",
		-- {"loc_achievement_cultist_berzerker_head_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." дрегов Берсерков в голову.")),
	-- --[+ Traditional Chinese +]--
	-- -- 爆頭殺死10名渣滓暴怒者。
	-- create_template("ach_her_12_ext_desc_tw",
		-- {"loc_achievement_cultist_berzerker_head_description"}, {"zh-tw"},
			-- loc_text("使用爆頭擊殺 "..COLORS_Numbers.target_rgb.." 名渣滓狂怒者。")),

	-- --[+ Purification Protocol +]-- руоф Протокол очищения
	-- --[+ Russian +]--
	-- -- create_template("ach_her_15_ext_ru",
		-- -- {"loc_achievement_all_chaos_elites_killed_name"}, {"ru"},
			-- -- loc_text("Протокол очищения")),
	-- --[+ Traditional Chinese 淨化協議 +]--
	-- create_template("ach_her_15_ext_tw",
		-- {"loc_achievement_all_chaos_elites_killed_name"}, {"zh-tw"},
			-- loc_text("淨化協議")),

	-- --[+ Kill 10 Elite Terrors. +]-- руоф Убейте элитных врагов из числа Ужасов: 10.
	-- --[+ Russian +]--
	-- create_template("ach_her_15_ext_desc_ru",
		-- {"loc_achievement_all_chaos_elites_killed_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов каждого типа из элиты Ужасов хаоса.")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊殺10個精英恐魔。
	-- create_template("ach_her_15_ext_desc_tw",
		-- {"loc_achievement_all_chaos_elites_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺每種『混沌恐懼體』精英敵人各 "..COLORS_Numbers.target_rgb.." 名。")),

	-- --[+  +]-- руоф Прыткие пятки
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_mutant_charge_dodged_name"}, {"ru"},
			-- -- loc_text("Прыткие пятки")),
	-- --[+ Traditional Chinese 快腳 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_mutant_charge_dodged_name"}, {"zh-tw"},
			-- loc_text("快腳")),

	-- --[+  +]-- руоф Увернитесь от атак мутантов (50). [По 1 за каждого мутанта]
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_mutant_charge_dodged_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")), -- ???????????
	-- --[+ Traditional Chinese +]--
	-- -- 躲避50次變種人衝鋒。[每個突擊變種人只能算一次]
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_mutant_charge_dodged_description"}, {"zh-tw"},
			-- loc_text("躲避 "..COLORS_Numbers.target_rgb.." 名變種人的衝鋒，每名只計算1次。")),

	-- --[+  +]-- руоф Решающий рывок
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_cultist_gunner_shot_dodged_name"}, {"ru"},
			-- -- loc_text("Решающий рывок")),
	-- --[+ Traditional Chinese 快跑 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_cultist_gunner_shot_dodged_name"}, {"zh-tw"},
			-- loc_text("快跑")),

	-- --[+  +]-- руоф Увернитесь от выстрелов пулеметчика (500) во время бега.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_cultist_gunner_shot_dodged_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 衝刺時躲掉500次槍手射擊。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_cultist_gunner_shot_dodged_description"}, {"zh-tw"},
			-- loc_text("衝刺時躲掉 "..COLORS_Numbers.target_rgb.." 次槍手射擊。")),

	-- --[+ Scab Picker (1) +]-- руоф Сборщик скабов (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_4_ext_ru",
		-- -- {"loc_achievement_kill_renegades_1-5_name"}, {"ru"},
			-- -- loc_text("Сборщик скабов (1)")),
	-- --[+ Traditional Chinese 血痂採集者 (1) +]--
	-- create_template("ach_her_4_ext_tw",
		-- {"loc_achievement_kill_renegades_1_name"}, {"zh-tw"},
			-- loc_text("血痂採集者 (1-)")),
	
	-- --[+ Scab Picker (2) +]-- руоф Сборщик скабов (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_4_ext_ru",
		-- -- {"loc_achievement_kill_renegades_1-5_name"}, {"ru"},
			-- -- loc_text("Сборщик скабов (2)")),
	-- --[+ Traditional Chinese 血痂採集者 (2) +]--
	-- create_template("ach_her_4_ext_tw",
		-- {"loc_achievement_kill_renegades_2_name"}, {"zh-tw"},
			-- loc_text("血痂採集者 (2)")),
	
	-- --[+ Scab Picker (3) +]-- руоф Сборщик скабов (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_4_ext_ru",
		-- -- {"loc_achievement_kill_renegades_1-5_name"}, {"ru"},
			-- -- loc_text("Сборщик скабов (3)")),
	-- --[+ Traditional Chinese 血痂採集者 (3) +]--
	-- create_template("ach_her_4_ext_tw",
		-- {"loc_achievement_kill_renegades_3_name"}, {"zh-tw"},
			-- loc_text("血痂採集者 (3)")),

	-- --[+ Scab Picker (4) +]-- руоф Сборщик скабов (4)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_4_ext_ru",
		-- -- {"loc_achievement_kill_renegades_1-5_name"}, {"ru"},
			-- -- loc_text("Сборщик скабов (4)")),
	-- --[+ Traditional Chinese 血痂採集者 (4) +]--
	-- create_template("ach_her_4_ext_tw",
		-- {"loc_achievement_kill_renegades_4_name"}, {"zh-tw"},
			-- loc_text("血痂採集者 (4)")),

	-- --[+ Scab Picker (5) +]-- руоф Сборщик скабов (5)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_4_ext_ru",
		-- -- {"loc_achievement_kill_renegades_1-5_name"}, {"ru"},
			-- -- loc_text("Сборщик скабов (5)")),
	-- --[+ Traditional Chinese 血痂採集者 (5) +]--
	-- create_template("ach_her_4_ext_tw",
		-- {"loc_achievement_kill_renegades_5_name"}, {"zh-tw"},
			-- loc_text("血痂採集者 (5)")),

	-- --[+ Kill 25000 Scabs. +]-- руоф Убить Скабов: 12500.
	-- --[+ Russian +]--
	-- create_template("ach_her_4_ext_desc_ru",{"loc_achievement_kill_renegades_x_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 殺死xxx00名血痂敵人。
	-- create_template("ach_her_4_ext_desc_tw",
		-- {"loc_achievement_kill_renegades_x_description"}, {"zh-tw"},
			-- loc_text("擊殺 "..COLORS_Numbers.target_rgb.." 名『血痂』敵人。")),

	-- --[+  +]-- руоф Сейчас рванет!
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_team_poxburster_damage_avoided_name"}, {"ru"},
			-- -- loc_text("Сейчас рванёт!")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_team_poxburster_damage_avoided_name"}, {"zh-tw"},
			-- loc_text("要爆炸了！")),

	-- --[+  +]-- руоф Убейте чумных взрывунов (50), чтобы ни вы, ни члены команды не получили урона.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_team_poxburster_damage_avoided_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊殺50名瘟疫爆者，且自己和隊友都沒受到傷害。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_team_poxburster_damage_avoided_description"}, {"zh-tw"},
			-- loc_text("擊殺 "..COLORS_Numbers.target_rgb.." 名瘟疫爆者，且自己和隊友都沒受到傷害。")),

	-- --[+ Elitist +]-- руоф Сторонник элиты
	-- --[+ Russian +]--
	-- create_template("ach_her_2_ext_ru",
		-- {"loc_achievement_all_renegade_elites_killed_name"}, {"ru"},
			-- loc_text("Элитарист")),
	-- --[+ Traditional Chinese 精英主義者 +]--
	-- create_template("ach_her_2_ext_tw",
		-- {"loc_achievement_all_renegade_elites_killed_name"}, {"zh-tw"},
			-- loc_text("精英主義者")),

	-- --[+ Kill 10 of each Scab elite enemy. +]-- руоф Убейте элитных Скабов (по 10 каждого вида).
	-- --[+ Russian +]--
	-- create_template("ach_her_2_ext_desc_ru",
		-- {"loc_achievement_all_renegade_elites_killed_description"}, {"ru"},
			-- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из элитных скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 殺死每種血痂精英敵人各10名。
	-- create_template("ach_her_2_ext_desc_tw",
		-- {"loc_achievement_all_renegade_elites_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺每種『血痂』精英敵人各 "..COLORS_Numbers.target_rgb.." 名。")),

	-- --[+  +]-- руоф Танец смерти
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_team_poxburster_damage_avoided_name"}, {"ru"},
			-- -- loc_text("Танец смерти")),
	-- -- [+ Traditional Chinese +]--
	-- -- Not used in the zh-tw
	-- -- create_template("ach_her_1_ext_tw",
		-- -- {"loc_achievement_team_poxburster_damage_avoided_name"}, {"zh-tw"},
			-- -- loc_text("死亡之舞")),

	-- --[+  +]-- руоф Увернитесь от ударов палача (50). [По 1 за каждого палача]
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_team_poxburster_damage_avoided_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 躲避50次重鎚兵的攻擊。[每個重鎚兵只能算一次]
	-- -- Not used in the zh-tw!
	-- -- create_template("ach_her_1_ext_desc_tw",
		-- -- {"loc_achievement_team_poxburster_damage_avoided_description"}, {"zh-tw"},
			-- -- loc_text("躲避 "..COLORS_Numbers.target_rgb.." 名重鎚兵的攻擊，每名只計算1次。")),

	-- --[+ Lex Triumphant +]-- руоф Торжество Закона
	-- --[+ Russian +]--
	-- create_template("ach_her_8_ext_ru",
		-- {"loc_achievement_all_cultist_specials_killed_name"}, {"ru"},
			-- loc_text("Закон Торжествующий")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_8_ext_tw",
		-- {"loc_achievement_all_cultist_specials_killed_name"}, {"zh-tw"},
			-- loc_text("法律的凱旋")),

	-- --[+ Kill 10 of each Dreg Specialist. +]-- руоф Убейте отбросов-специалистов (по 10 каждого вида).
	-- --[+ Russian +]--
	-- create_template("ach_her_8_ext_desc_ru",
		-- {"loc_achievement_all_cultist_specials_killed_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов дрегов.")),
	-- --[+ Traditional Chinese +]--
	-- --擊殺每種渣滓專家各10名。
	-- create_template("ach_her_8_ext_desc_tw",
		-- {"loc_achievement_all_cultist_specials_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺每種『渣滓』專家敵人各 "..COLORS_Numbers.target_rgb.." 名。")),

	-- --[+ Hard Labour +]-- руоф Тяжелый труд
	-- --[+ Russian +]--
	-- create_template("ach_her_6_ext_ru",
		-- {"loc_achievement_executor_non_headshot_name"}, {"ru"},
			-- loc_text("Тяжёлый труд")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_6_ext_tw",
		-- {"loc_achievement_executor_non_headshot_name"}, {"zh-tw"},
			-- loc_text("苦工")),

	-- --[+ Kill 10 Scab Maulers without using Headshots. +]-- руоф Убейте Скаба-Палача (10), не используя выстрел в голову.
	-- --[+ Russian +]--
	-- create_template("ach_her_6_ext_desc_ru",
		-- {"loc_achievement_executor_non_headshot_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." Разрубателей без попаданий по голове.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在不爆頭的情況下殺死10名血痂重鎚者。
	-- create_template("ach_her_6_ext_desc_tw",
		-- {"loc_achievement_executor_non_headshot_description"}, {"zh-tw"},
			-- loc_text("在不爆頭的情況下擊殺 "..COLORS_Numbers.target_rgb.." 名『血痂』重鎚者。")),

	-- --[+  +]-- руоф Хорошие рефлексы
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_sniper_dodged_name"}, {"ru"},
			-- -- loc_text("Хорошие рефлексы")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_sniper_dodged_name"}, {"zh-tw"},
			-- loc_text("高超反射")),

	-- --[+  +]-- руоф Увернитесь от выстрелов снайпера (50). [По 1 за каждого снайпера]
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_sniper_dodged_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 躲避50次狙擊手的射擊。[每個狙擊手只能算一次]
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_sniper_dodged_description"}, {"zh-tw"},
			-- loc_text("躲避 "..COLORS_Numbers.target_rgb.." 名狙擊手的射擊，每名只計算1次。")),

	-- --[+ Purgator (1) +]-- руоф Чистильщик (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_17_ext_ru",
		-- -- {"loc_achievement_kill_chaos_1_name"}, {"ru"},
			-- -- loc_text("Очиститель (1)")),
	-- --[+ Traditional Chinese 滌罪者 (1) +]--
	-- create_template("ach_her_17_ext_tw",
		-- {"loc_achievement_kill_chaos_1_name"}, {"zh-tw"},
			-- loc_text("滌罪者 (1)")),

	-- --[+ Purgator (2) +]-- руоф Чистильщик (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_17_ext_ru",
		-- -- {"loc_achievement_kill_chaos_2_name"}, {"ru"},
			-- -- loc_text("Очиститель (2)")),
	-- --[+ Traditional Chinese 滌罪者 (2) +]--
	-- create_template("ach_her_17_ext_tw",
		-- {"loc_achievement_kill_chaos_2_name"}, {"zh-tw"},
			-- loc_text("滌罪者 (2)")),

	-- --[+ Purgator (3) +]-- руоф Чистильщик (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_17_ext_ru",
		-- -- {"loc_achievement_kill_chaos_3_name"}, {"ru"},
			-- -- loc_text("Очиститель (3)")),
	-- --[+ Traditional Chinese 滌罪者 (3) +]--
	-- create_template("ach_her_17_ext_tw",
		-- {"loc_achievement_kill_chaos_3_name"}, {"zh-tw"},
			-- loc_text("滌罪者 (3)")),

	-- --[+ Purgator (4) +]-- руоф Чистильщик (4)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_17_ext_ru",
		-- -- {"loc_achievement_kill_chaos_4_name"}, {"ru"},
			-- -- loc_text("Очиститель (4)")),
	-- --[+ Traditional Chinese 滌罪者 (4) +]--
	-- create_template("ach_her_17_ext_tw",
		-- {"loc_achievement_kill_chaos_4_name"}, {"zh-tw"},
			-- loc_text("滌罪者 (4)")),
	
	-- --[+ Purgator (5) +]-- руоф Чистильщик (5)
	-- --[+ Russian +]--
	-- -- create_template("ach_her_17_ext_ru",
		-- -- {"loc_achievement_kill_chaos_5_name"}, {"ru"},
			-- -- loc_text("Очиститель (5)")),
	-- --[+ Traditional Chinese 滌罪者 (5) +]--
	-- create_template("ach_her_17_ext_tw",
		-- {"loc_achievement_kill_chaos_5_name"}, {"zh-tw"},
			-- loc_text("滌罪者 (5)")),

	-- --[+ Kill 25000 Poxwalkers and other Terrors of the warp. +]-- руоф Убить чумных ходоков и других врагов из числа Ужасов варпа: 15000.
	-- --[+ Russian +]--
	-- create_template("ach_her_17_ext_desc_ru",
		-- {"loc_achievement_kill_chaos_x_description"}, {"ru"},
			-- loc_text("Убейте "..COLORS_Numbers.target_rgb.." Чумных ходоков и других Ужасов варпа.")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊殺xx000個瘟疫行者和其他亞空間恐魔。
	-- create_template("ach_her_17_ext_desc_tw",
		-- {"loc_achievement_kill_chaos_x_description"}, {"zh-tw"},
			-- loc_text("擊殺 "..COLORS_Numbers.target_rgb.." 名瘟疫行者和其他亞空間恐魔。")),

	-- --[+ Dreg Cleanser +]-- руоф Чистильщик отбросов
	-- --[+ Russian +]--
	-- create_template("ach_her_10_ext_ru",
		-- {"loc_achievement_all_cultists_killed_name"}, {"ru"},
			-- loc_text("Чистильщик дрегов")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_10_ext_tw",
		-- {"loc_achievement_all_cultists_killed_name"}, {"zh-tw"},
			-- loc_text("渣滓清潔師")),

	-- --[+ Kill every type of Dreg. +]-- руоф Убейте все виды отбросов.
	-- --[+ Russian +]--
	-- create_template("ach_her_10_ext_desc_ru",
		-- {"loc_achievement_all_cultists_killed_description"}, {"ru"},
			-- loc_text("Убейте врагов каждого типа из дрегов.")),
	-- --[+ Traditional Chinese +]--
	-- --擊殺每種類型的渣滓。
	-- create_template("ach_her_10_ext_desc_tw",
		-- {"loc_achievement_all_cultists_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺每種類型的『渣滓』敵人。")),

	-- --[+  +]-- руоф Это всё, на что ты способен?
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_ogryn_gunner_shot_dodged_name"}, {"ru"},
			-- -- loc_text("Это всё, на что ты способен?")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_ogryn_gunner_shot_dodged_name"}, {"zh-tw"},
			-- loc_text("這就是你的極限了？")),

	-- --[+  +]-- руоф Увернитесь от атак огрина-жнеца (500) во время бега.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_ogryn_gunner_shot_dodged_description"}, {"ru"},
			-- -- loc_text("Убейте по "..COLORS_Numbers.target_rgb.." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 衝次時躲掉500次歐格林收割者射擊。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_ogryn_gunner_shot_dodged_description"}, {"zh-tw"},
			-- loc_text("衝刺時躲掉 "..COLORS_Numbers.target_rgb.." 次歐格林收割者射擊。")),

	-- --[+ +MISSIONS - МИССИИ - 任務 + +]--
		-- --[+ Missions +]-- руоф Задания
	-- --[+ Russian +]--
	-- create_template("ach_mis_0_ext_ru",
		-- {"loc_achievement_category_missions_label"}, {"ru"},
			-- loc_text("Миссии")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_mis_0_ext_tw",
		-- {"loc_achievement_category_missions_label"}, {"zh-tw"},
			-- loc_text("任務")),

	-- --[+ General Missions +]-- руоф Обычные задания
	-- --[+ Russian +]--
	-- create_template("ach_mis_00_ext_ru",
		-- {"loc_achievement_subcategory_missions_general_label"}, {"ru"},
			-- loc_text("Основные миссии")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_mis_00_ext_tw",
		-- {"loc_achievement_subcategory_missions_general_label"}, {"zh-tw"},
			-- loc_text("常規任務")),

	-- --[+  +]-- руоф Архивариус
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_ru",
		-- -- {"loc_achievement_type_1_mission_5_name"}, {"ru"},
			-- -- loc_text("Архивариус")),
	-- --[+ Traditional Chinese +]--
	-- -- Not used in the zh-tw
	-- -- create_template("ach_mis_1_ext_tw",
	-- -- 	{"loc_achievement_type_1_mission_5_name"}, {"zh-tw"},
	-- -- 		loc_text("突擊派對 (5)")),

	-- --[+ Complete 250 Raid missions. +]-- руоф Восстановите писания из заданий: 100.
	-- --[+ Russian +]--
	-- create_template("ach_mis_1_ext_desc_ru",
		-- {"loc_achievement_type_1_mission_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий налётов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成100次突襲任務。
	-- create_template("ach_mis_1_ext_desc_tw",
		-- {"loc_achievement_type_1_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..COLORS_Numbers.target_rgb.." 次突襲任務。")),

	-- --[+ Atoman Auxilia (1-4) +]-- руоф Ауксилии Атомы (1-4)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_8_ext_ru",
		-- -- {"loc_achievement_missions_1-4_name"}, {"ru"},
			-- -- loc_text("Ауксилии Атомы (1-4)")),
	-- --[+ Traditional Chinese +]--
	-- -- Not used in the zh-tw
	-- -- create_template("ach_mis_8_ext_tw",
		-- -- {"loc_achievement_missions_1-4_name"}, {"zh-tw"},
			-- -- loc_text("亞托瑪輔助軍")),
 
	-- --[+ Complete 1000 Missions. +]-- руоф Выполнить задания: 500.
	-- --[+ Russian +]--
	-- create_template("ach_mis_8_ext_desc_ru",
		-- {"loc_achievement_missions_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx00次任務。
	-- create_template("ach_mis_8_ext_desc_tw",
		-- {"loc_achievement_missions_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..COLORS_Numbers.target_rgb.." 次任務。")),


	-- --[+ Auspex Drill (1) +]-- руоф Ауспекс-тренировка (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_9_ext_ru",
		-- -- {"loc_achievement_scan_1_name"}, {"ru",},
			-- -- loc_text("Ауспекс взлом (1)")),
	-- --[+ Traditional Chinese 鳥卜儀訓練 (1) +]--
	-- create_template("ach_mis_9_ext_tw",
		-- {"loc_achievement_scan_1_name"}, {"zh-tw"},
			-- loc_text("鳥卜儀訓練 (1)")),
	
	-- --[+ Auspex Drill (2) +]-- руоф Ауспекс-тренировка (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_9_ext_ru",
		-- -- {"loc_achievement_scan_2_name"}, {"ru",},
			-- -- loc_text("Ауспекс взлом (2)")),
	-- --[+ Traditional Chinese 鳥卜儀訓練 (2) +]--
	-- create_template("ach_mis_9_ext_tw",
		-- {"loc_achievement_scan_2_name"}, {"zh-tw"},
			-- loc_text("鳥卜儀訓練 (2)")),

	-- --[+ Auspex Drill (3) +]-- руоф Ауспекс-тренировка (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_9_ext_ru",
		-- -- {"loc_achievement_scan_3_name"}, {"ru",},
			-- -- loc_text("Ауспекс взлом (3)")),
	-- --[+ Traditional Chinese 鳥卜儀訓練 (3) +]--
	-- create_template("ach_mis_9_ext_tw",
		-- {"loc_achievement_scan_3_name"}, {"zh-tw"},
			-- loc_text("鳥卜儀訓練 (3)")),

	-- --[+ Auspex Drill (4) +]-- руоф Ауспекс-тренировка (4)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_9_ext_ru",
		-- -- {"loc_achievement_scan_4_name"}, {"ru",},
			-- -- loc_text("Ауспекс взлом (4)")),
	-- --[+ Traditional Chinese 鳥卜儀訓練 (4) +]--
	-- create_template("ach_mis_9_ext_tw",
		-- {"loc_achievement_scan_4_name"}, {"zh-tw"},
			-- loc_text("鳥卜儀訓練 (4)")),

	-- --[+ Auspex Drill (5) +]-- руоф Ауспекс-тренировка (5)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_9_ext_ru",
		-- -- {"loc_achievement_scan_5_name"}, {"ru",},
			-- -- loc_text("Ауспекс взлом (5)")),
	-- --[+ Traditional Chinese 鳥卜儀訓練 (5) +]--
	-- create_template("ach_mis_9_ext_tw",
		-- {"loc_achievement_scan_5_name"}, {"zh-tw"},
			-- loc_text("鳥卜儀訓練 (5)")),

	-- --[+ Scan 200 Auspex targets. +]-- руоф Просканировать целей ауспекса: 200.
	-- --[+ Russian +]--
	-- create_template("ach_mis_9_ext_desc_ru",
		-- {"loc_achievement_scan_x_description"}, {"ru"},
			-- loc_text("Просканируйте "..COLORS_Numbers.target_rgb.." целей ауспекса.")),
	-- --[+ Traditional Chinese +]--
	-- -- 掃描200名占卜者。
	-- create_template("ach_mis_9_ext_desc_tw",
		-- {"loc_achievement_scan_x_description"}, {"zh-tw"},
			-- loc_text("掃描 "..COLORS_Numbers.target_rgb.." 個鳥卜儀目標。")),

	-- --[+ Flawless interrogator +]-- руоф Безупречный опросчик
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_11_ext_ru",
		-- -- {"loc_achievement_hack_perfect_name"}, {"ru",},
			-- -- loc_text("Безупречный опросчик")),
	-- --[+ Traditional Chinese 完美審訊者 +]--
	-- create_template("ach_mis_11_ext_tw",
		-- {"loc_achievement_hack_perfect_name"}, {"zh-tw"},
			-- loc_text("完美審訊者")),

	-- --[+ Complete a Data Interrogation without an incorrect auspex entry. +]-- руоф Завершите опрос данных без выбора неправильной записи ауспекса.
	-- --[+ Russian +]--
	-- create_template("ach_mis_11_ext_desc_ru",
		-- {"loc_achievement_hack_perfect_description"}, {"ru"},
			-- loc_text("Завершите опрос данных без выбора неправильной записи в ауспексе.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在使用卜測儀輸入並且沒有出現錯誤的情況下完成1次數據查詢。
	-- create_template("ach_mis_11_ext_desc_tw",
		-- {"loc_achievement_hack_perfect_description"}, {"zh-tw"},
			-- loc_text("在沒有輸入錯誤的情況下完成"..COLORS_Numbers.target_rgb.."次數據查詢。")),

	-- --[+ +Становление легенды+ +]--
		-- --[+ The Legend Grows? +]-- руоф Становление легенды:\nНовобранец Инквизиции
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_13_ext_ru",
		-- -- {"loc_achievement_mission_difficulty_objectives_1_name"}, {"ru"},
			-- -- loc_text("Становление легенды:\nНовобранец Инквизиции")),
	-- --[+ Traditional Chinese 審判庭的新手 +]--
	-- create_template("ach_mis_13_ext_tw",
		-- {"loc_achievement_mission_difficulty_objectives_1_name"}, {"zh-tw"},
			-- loc_text("審判庭的新手")),

	-- --[+ Complete each mission type on Sedition Threat or higher. +]-- руоф Выполнить по меньшей мере одно задание каждого типа при угрозе «Мятеж» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_mis_13_1_ext_desc_ru",
		-- {"loc_achievement_mission_difficulty_objectives_1_description"}, {"ru"},
			-- loc_text("Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.sedition_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在騷亂威脅度或更高級別下完成全部任務類型。
	-- create_template("ach_mis_13_1_ext_desc_tw",
		-- {"loc_achievement_mission_difficulty_objectives_1_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.sedition_rgb_tw.."』或更高難度下，完成每種任務類型。")),

	-- --[+ The Legend Grows? +]-- руоф Становление легенды:\nВетеран Инквизиции
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_13_ext_ru",
		-- -- {"loc_achievement_mission_difficulty_objectives_2_name"}, {"ru"},
			-- -- loc_text("Становление легенды:\nВетеран Инквизиции")),
	-- --[+ Traditional Chinese - 審判庭的老兵 +]--
	-- create_template("ach_mis_13_ext_tw",
		-- {"loc_achievement_mission_difficulty_objectives_2_name"}, {"zh-tw"},
			-- loc_text("審判庭的老兵")),

	-- --[+ Complete each mission type on Uprising Threat or higher. +]-- руоф Выполнить по меньшей мере одно задание каждого типа при угрозе «Восстание» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_mis_13_1_ext_desc_ru",
		-- {"loc_achievement_mission_difficulty_objectives_2_description"}, {"ru"},
			-- loc_text("Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.uprising_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在起義威脅度或更高級別下完成全部任務類型。
	-- create_template("ach_mis_13_1_ext_desc_tw",
		-- {"loc_achievement_mission_difficulty_objectives_2_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.uprising_rgb_tw.."』或更高難度下，完成每種任務類型。")),

	-- --[+ The Legend Grows? +]-- руоф Становление легенды:\nЭталон Инквизиции
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_13_ext_ru",
		-- -- {"loc_achievement_mission_difficulty_objectives_3_name"}, {"ru"},
			-- -- loc_text("Становление легенды:\nЭталон Инквизиции")),
	-- --[+ Traditional Chinese - 審判庭的模範 +]--
	-- create_template("ach_mis_13_ext_tw",
		-- {"loc_achievement_mission_difficulty_objectives_3_name"}, {"zh-tw"},
			-- loc_text("審判庭的模範")),

	-- --[+ Complete each mission type on Malice Threat or higher. +]-- руоф Выполнить по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_mis_13_1_ext_desc_ru",
		-- {"loc_achievement_mission_difficulty_objectives_3_description"}, {"ru"},
			-- loc_text("Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.malice_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高級別下完成全部任務類型。
	-- create_template("ach_mis_13_1_ext_desc_tw",
		-- {"loc_achievement_mission_difficulty_objectives_3_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.malice_rgb_tw.."』或更高難度下，完成每種任務類型。")),

	-- --[+ The Legend Grows? +]-- руоф Становление легенды:\nЛегенда Инквизиции
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_13_ext_ru",
		-- -- {"loc_achievement_mission_difficulty_objectives_4_name"}, {"ru"},
			-- -- loc_text("Становление легенды:\nЛегенда Инквизиции")),
	-- --[+ Traditional Chinese - 審判庭的傳奇 +]--
	-- create_template("ach_mis_13_ext_tw",
		-- {"loc_achievement_mission_difficulty_objectives_4_name"}, {"zh-tw"},
			-- loc_text("審判庭的傳奇")),

	-- --[+ Complete each mission type on Heresy Threat or higher. +]-- руоф Выполнить по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_mis_13_1_ext_desc_ru",
		-- {"loc_achievement_mission_difficulty_objectives_4_description"}, {"ru"},
			-- loc_text("Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.heresy_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在叛亂威脅度或更高級別下完成全部任務類型。
	-- create_template("ach_mis_13_1_ext_desc_tw",
		-- {"loc_achievement_mission_difficulty_objectives_4_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.heresy_rgb_tw.."』或更高難度下，完成每種任務類型。")),

		-- -- I think this is redundant?; the penance only ranges from 1 to 4. 
		-- --[+ The Legend Grows? +]-- руоф Становление легенды
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_13_ext_ru",
		-- -- {"loc_achievement_mission_difficulty_objectives_5_name"}, {"ru"},
			-- -- loc_text("Становление легенды")),
	-- --[+ Traditional Chinese - 審判庭的傳奇 +]--

	-- --[+ Complete each mission type on Damnation Threat or higher. +]-- руоф Выполнить по меньшей мере одно задание каждого типа при угрозе «Проклятие» или выше.
	-- --[+ Russian +]--
	-- create_template("ach_mis_13_1_ext_desc_ru",
		-- {"loc_achievement_mission_difficulty_objectives_5_description"}, {"ru"},
			-- loc_text("Завершите каждый тип миссий на сложности "..COLORS_KWords_ru.damnation_rgb_ru.." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_mis_13_1_ext_desc_tw",
		-- -- {"loc_achievement_mission_difficulty_objectives_5_description"}, {"zh-tw"},
			-- -- loc_text("在『"..COLORS_KWords_tw.damnation_rgb_tw.."』或更高難度下，完成每種任務類型。")),

	-- --[+ +Налёты+ +]--
	-- --[+ Raiding Party (1) +]-- руоф Вечеринка налетчиков (1)
	-- --[+ Russian +]--
	-- create_template("ach_mis_1_ext_ru",
		-- {"loc_achievement_type_1_mission_1_name"}, {"ru"},
			-- loc_text("Группа налётчиков (1)")),
	-- --[+ Traditional Chinese 突擊派對 (1) +]--
	-- create_template("ach_mis_1_ext_tw",
		-- {"loc_achievement_type_1_mission_1_name"}, {"zh-tw"},
			-- loc_text("突擊派對 (1)")),

	-- --[+ Raiding Party (2) +]-- руоф Вечеринка налетчиков (2)
	-- --[+ Russian +]--
	-- create_template("ach_mis_1_ext_ru",
		-- {"loc_achievement_type_1_mission_2_name"}, {"ru"},
			-- loc_text("Группа налётчиков (2)")),
	-- --[+ Traditional Chinese 突擊派對 (2) +]--
	-- create_template("ach_mis_1_ext_tw",
		-- {"loc_achievement_type_1_mission_2_name"}, {"zh-tw"},
			-- loc_text("突擊派對 (2)")),

	-- --[+ Raiding Party (3) +]-- руоф Вечеринка налетчиков (3)
	-- --[+ Russian +]--
	-- create_template("ach_mis_1_ext_ru",
		-- {"loc_achievement_type_1_mission_3_name"}, {"ru"},
			-- loc_text("Группа налётчиков (3)")),
	-- --[+ Traditional Chinese 突擊派對 (3) +]--
	-- create_template("ach_mis_1_ext_tw",
		-- {"loc_achievement_type_1_mission_3_name"}, {"zh-tw"},
			-- loc_text("突擊派對 (3)")),

	-- --[+ Raiding Party (4) +]-- руоф Вечеринка налетчиков (4)
	-- --[+ Russian +]--
	-- create_template("ach_mis_1_ext_ru",
		-- {"loc_achievement_type_1_mission_4_name"}, {"ru"},
			-- loc_text("Группа налётчиков (4)")),
	-- --[+ Traditional Chinese 突擊派對 (4) +]--
	-- create_template("ach_mis_1_ext_tw",
		-- {"loc_achievement_type_1_mission_4_name"}, {"zh-tw"},
			-- loc_text("突擊派對 (4)")),

	-- --[+ Raiding Party (5) +]-- руоф Вечеринка налетчиков (5)
	-- --[+ Russian +]--
	-- create_template("ach_mis_1_ext_ru",
		-- {"loc_achievement_type_1_mission_5_name"}, {"ru"},
			-- loc_text("Группа налётчиков (5)")),
	-- --[+ Traditional Chinese 突擊派對 (5) +]--
	-- create_template("ach_mis_1_ext_tw",
		-- {"loc_achievement_type_1_mission_5_name"}, {"zh-tw"},
			-- loc_text("突擊派對 (5)")),

	-- --[+ Complete 250 Raid missions. +]-- руоф Выполните задания типа «Налет»: 100.
	-- --[+ Russian +]--
	-- create_template("ach_mis_1_ext_desc_ru",
		-- {"loc_achievement_type_1_mission_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." налётов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次突襲任務。
	-- create_template("ach_mis_1_ext_desc_tw",
		-- {"loc_achievement_type_1_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..COLORS_Numbers.target_rgb.." 次突襲任務。")),

	-- --[+ +Расследования+ +]--
	-- --[+ No Stone Unturned (1) +]-- руоф Всё вверх дном (1)
	-- --[+ Russian +]--
	-- create_template("ach_mis_3_ext_ru",
		-- {"loc_achievement_type_3_mission_1_name"}, {"ru"},
			-- loc_text("Заглянуть под каждый камень (1)")),
	-- --[+ Traditional Chinese 不留死角 (1) +]--
	-- create_template("ach_mis_3_ext_tw",
		-- {"loc_achievement_type_3_mission_1_name"}, {"zh-tw"},
			-- loc_text("不留死角 (1)")),

	-- --[+ No Stone Unturned (2) +]-- руоф Всё вверх дном (2)
	-- --[+ Russian +]--
	-- create_template("ach_mis_3_ext_ru",
		-- {"loc_achievement_type_3_mission_2_name"}, {"ru"},
			-- loc_text("Заглянуть под каждый камень (2)")),
	-- --[+ Traditional Chinese 不留死角 (2) +]--
	-- create_template("ach_mis_3_ext_tw",
		-- {"loc_achievement_type_3_mission_2_name"}, {"zh-tw"},
			-- loc_text("不留死角 (2)")),

	-- --[+ No Stone Unturned (3) +]-- руоф Всё вверх дном (3)
	-- --[+ Russian +]--
	-- create_template("ach_mis_3_ext_ru",
		-- {"loc_achievement_type_3_mission_3_name"}, {"ru"},
			-- loc_text("Заглянуть под каждый камень (3)")),
	-- --[+ Traditional Chinese 不留死角 (3) +]--
	-- create_template("ach_mis_3_ext_tw",
		-- {"loc_achievement_type_3_mission_3_name"}, {"zh-tw"},
			-- loc_text("不留死角 (3)")),

	-- --[+ No Stone Unturned (4) +]-- руоф Всё вверх дном (4)
	-- --[+ Russian +]--
	-- create_template("ach_mis_3_ext_ru",
		-- {"loc_achievement_type_3_mission_4_name"}, {"ru"},
			-- loc_text("Заглянуть под каждый камень (4)")),
	-- --[+ Traditional Chinese 不留死角 (4) +]--
	-- create_template("ach_mis_3_ext_tw",
		-- {"loc_achievement_type_3_mission_4_name"}, {"zh-tw"},
			-- loc_text("不留死角 (4)")),

	-- --[+ No Stone Unturned (5) +]-- руоф Всё вверх дном (5)
	-- --[+ Russian +]--
	-- create_template("ach_mis_3_ext_ru",
		-- {"loc_achievement_type_3_mission_5_name"}, {"ru"},
			-- loc_text("Заглянуть под каждый камень (5)")),
	-- --[+ Traditional Chinese 不留死角 (5) +]--

	-- --[+ Complete 100 Investigation missions. +]-- руоф Завершите задания типа «Расследования»: 100.
	-- --[+ Russian +]--
	-- create_template("ach_mis_3_ext_desc_ru",
		-- {"loc_achievement_type_3_mission_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." расследований.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次調查任務。
	-- create_template("ach_mis_3_ext_desc_tw",
		-- {"loc_achievement_type_3_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..COLORS_Numbers.target_rgb.." 次調查任務。")),

	-- --[+ +Диверсии+ +]--
	-- --[+ Disruptive Behavior (1) +]-- руоф Диверсант - звучит гордо (1)
	-- --[+ Russian +]--
	-- create_template("ach_mis_4_ext_ru",
		-- {"loc_achievement_type_4_mission_1_name"}, {"ru"},
			-- loc_text("Деструктивное поведение (1)")),
	-- --[+ Traditional Chinese 搗亂行為 (1) +]--
	-- create_template("ach_mis_4_ext_tw",
		-- {"loc_achievement_type_4_mission_1_name"}, {"zh-tw"},
			-- loc_text("搗亂行為 (1)")),

	-- --[+ Disruptive Behavior (2) +]-- руоф Диверсант - звучит гордо (2)
	-- --[+ Russian +]--
	-- create_template("ach_mis_4_ext_ru",
		-- {"loc_achievement_type_4_mission_2_name"}, {"ru"},
			-- loc_text("Деструктивное поведение (2)")),
	-- --[+ Traditional Chinese 搗亂行為 (2) +]--
	-- create_template("ach_mis_4_ext_tw",
		-- {"loc_achievement_type_4_mission_2_name"}, {"zh-tw"},
			-- loc_text("搗亂行為 (2)")),

	-- --[+ Disruptive Behavior (3) +]-- руоф Диверсант - звучит гордо (3)
	-- --[+ Russian +]--
	-- create_template("ach_mis_4_ext_ru",
		-- {"loc_achievement_type_4_mission_3_name"}, {"ru"},
			-- loc_text("Деструктивное поведение (3)")),
	-- --[+ Traditional Chinese 搗亂行為 (3) +]--
	-- create_template("ach_mis_4_ext_tw",
		-- {"loc_achievement_type_4_mission_3_name"}, {"zh-tw"},
			-- loc_text("搗亂行為 (3)")),

	-- --[+ Disruptive Behavior (4) +]-- руоф Диверсант - звучит гордо (4)
	-- --[+ Russian +]--
	-- create_template("ach_mis_4_ext_ru",
		-- {"loc_achievement_type_4_mission_4_name"}, {"ru"},
			-- loc_text("Деструктивное поведение (4)")),
	-- --[+ Traditional Chinese 搗亂行為 (4) +]--
	-- create_template("ach_mis_4_ext_tw",
		-- {"loc_achievement_type_4_mission_4_name"}, {"zh-tw"},
			-- loc_text("搗亂行為 (4)")),

	-- --[+ Disruptive Behavior (5) +]-- руоф Диверсант - звучит гордо (5)
	-- --[+ Russian +]--
	-- create_template("ach_mis_4_ext_ru",
		-- {"loc_achievement_type_4_mission_5_name"}, {"ru"},
			-- loc_text("Деструктивное поведение (5)")),
	-- --[+ Traditional Chinese 搗亂行為 (5) +]--
	-- create_template("ach_mis_4_ext_tw",
		-- {"loc_achievement_type_4_mission_5_name"}, {"zh-tw"},
			-- loc_text("搗亂行為 (5)")),

	-- --[+ Complete 150 Disruption missions. +]-- руоф Завершить задания типа «Диверсия»: 100.
	-- --[+ Russian +]--
	-- create_template("ach_mis_4_ext_desc_ru",
		-- {"loc_achievement_type_4_mission_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." диверсий.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次擾亂任務。
	-- create_template("ach_mis_4_ext_desc_tw",
		-- {"loc_achievement_type_4_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..COLORS_Numbers.target_rgb.." 次擾亂任務。")),

	-- --[+ +Ликвидации+ +]--
	-- --[+ Seek, Locate, Destroy (1) +]-- руоф Ищите, находите, уничтожайте (1)
	-- --[+ Russian +]--
	-- create_template("ach_mis_2_ext_ru",
		-- {"loc_achievement_type_2_mission_1_name"}, {"ru"},
			-- loc_text("Искать, найти, ликвидировать (1)")),
	-- --[+ Traditional Chinese 尋找、定位、摧毀 (1) +]--
	-- create_template("ach_mis_2_ext_tw",
		-- {"loc_achievement_type_2_mission_1_name"}, {"zh-tw"},
			-- loc_text("尋找、定位、摧毀 (1)")),

	-- --[+ Seek, Locate, Destroy (2) +]-- руоф Ищите, находите, уничтожайте (2)
	-- --[+ Russian +]--
	-- create_template("ach_mis_2_ext_ru",
		-- {"loc_achievement_type_2_mission_2_name"}, {"ru"},
			-- loc_text("Искать, найти, ликвидировать (2)")),
	-- --[+ Traditional Chinese 尋找、定位、摧毀 (2) +]--
	-- create_template("ach_mis_2_ext_tw",
		-- {"loc_achievement_type_2_mission_2_name"}, {"zh-tw"},
			-- loc_text("尋找、定位、摧毀 (2)")),

	-- --[+ Seek, Locate, Destroy (3) +]-- руоф Ищите, находите, уничтожайте (3)
	-- --[+ Russian +]--
	-- create_template("ach_mis_2_ext_ru",
		-- {"loc_achievement_type_2_mission_3_name"}, {"ru"},
			-- loc_text("Искать, найти, ликвидировать (3)")),
	-- --[+ Traditional Chinese 尋找、定位、摧毀 (3) +]--
	-- create_template("ach_mis_2_ext_tw",
		-- {"loc_achievement_type_2_mission_3_name"}, {"zh-tw"},
			-- loc_text("尋找、定位、摧毀 (3)")),

	-- --[+ Seek, Locate, Destroy (4) +]-- руоф Ищите, находите, уничтожайте (4)
	-- --[+ Russian +]--
	-- create_template("ach_mis_2_ext_ru",
		-- {"loc_achievement_type_2_mission_4_name"}, {"ru"},
			-- loc_text("Искать, найти, ликвидировать (4)")),
	-- --[+ Traditional Chinese 尋找、定位、摧毀 (4) +]--
	-- create_template("ach_mis_2_ext_tw",
		-- {"loc_achievement_type_2_mission_4_name"}, {"zh-tw"},
			-- loc_text("尋找、定位、摧毀 (4)")),

	-- --[+ Seek, Locate, Destroy (5) +]-- руоф Ищите, находите, уничтожайте (5)
	-- --[+ Russian +]--
	-- create_template("ach_mis_2_ext_ru",
		-- {"loc_achievement_type_2_mission_5_name"}, {"ru"},
			-- loc_text("Искать, найти, ликвидировать (5)")),
	-- --[+ Traditional Chinese 尋找、定位、摧毀 (4) +]--
	-- create_template("ach_mis_2_ext_tw",
		-- {"loc_achievement_type_2_mission_5_name"}, {"zh-tw"},
			-- loc_text("尋找、定位、摧毀 (5)")),

	-- --[+ Complete 200 Assassination missions. +]-- руоф Выполнить заданий на убийство: 100.
	-- --[+ Russian +]--
	-- create_template("ach_mis_2_ext_desc_ru",
		-- {"loc_achievement_type_2_mission_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." ликвидаций.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx個刺殺任務。
	-- create_template("ach_mis_2_ext_desc_tw",
		-- {"loc_achievement_type_2_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..COLORS_Numbers.target_rgb.." 次刺殺任務。")),

	-- --[+ +Шпионаж+ +]--
	-- --[+ Master of Intrique (1) +]-- руоф Мастер интриги (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_6_ext_ru",
		-- -- {"loc_achievement_type_6_mission_1_name"}, {"ru"},
			-- -- loc_text("Мастер интриг (1)")),
	-- --[+ Traditional Chinese 陰謀大師 (1) +]--
	-- create_template("ach_mis_6_ext_tw",
		-- {"loc_achievement_type_6_mission_1_name"}, {"zh-tw"},
			-- loc_text("陰謀大師 (1)")),

	-- --[+ Master of Intrique (2) +]-- руоф Мастер интриги (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_6_ext_ru",
		-- --{"loc_achievement_type_6_mission_2_name"}, {"ru"},
			-- -- loc_text("Мастер интриг (2)")),
	-- --[+ Traditional Chinese 陰謀大師 (2) +]--
	-- create_template("ach_mis_6_ext_tw",
		-- {"loc_achievement_type_6_mission_2_name"}, {"zh-tw"},
			-- loc_text("陰謀大師 (2)")),

	-- --[+ Master of Intrique (3) +]-- руоф Мастер интриги (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_6_ext_ru",
		-- -- {"loc_achievement_type_6_mission_3_name"}, {"ru"},
			-- -- loc_text("Мастер интриг (3)")),
	-- --[+ Traditional Chinese 陰謀大師 (3) +]--
	-- create_template("ach_mis_6_ext_tw",
		-- {"loc_achievement_type_6_mission_3_name"}, {"zh-tw"},
			-- loc_text("陰謀大師 (3)")),

	-- --[+ Master of Intrique (4) +]-- руоф Мастер интриги (4)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_6_ext_ru",
		-- -- {"loc_achievement_type_6_mission_4_name"}, {"ru"},
			-- -- loc_text("Мастер интриг (4)")),
	-- --[+ Traditional Chinese 陰謀大師 (4) +]--
	-- create_template("ach_mis_6_ext_tw",
		-- {"loc_achievement_type_6_mission_4_name"}, {"zh-tw"},
			-- loc_text("陰謀大師 (4)")),

	-- --[+ Master of Intrique (5) +]-- руоф Мастер интриги (5)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_6_ext_ru",
		-- -- {"loc_achievement_type_6_mission_5_name"}, {"ru"},
			-- -- loc_text("Мастер интриг (5)")),
	-- --[+ Traditional Chinese 陰謀大師 (5) +]--
	-- create_template("ach_mis_6_ext_tw",
		-- {"loc_achievement_type_6_mission_5_name"}, {"zh-tw"},
			-- loc_text("陰謀大師 (5)")),

	-- --[+ Complete 150 Espionage missions. +]-- руоф Завершите задания типа «Шпионаж»: 100.
	-- --[+ Russian +]--
	-- create_template("ach_mis_6_ext_desc_ru",
		-- {"loc_achievement_type_6_mission_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." шпионских миссий.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次破壞任務。
	-- create_template("ach_mis_6_ext_desc_tw",
		-- {"loc_achievement_type_6_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..COLORS_Numbers.target_rgb.." 次破壞任務。")),

	-- --[+ Mission Improbable +]-- руоф Задание невыполнимо
	-- --[+ Russian +]--
	-- create_template("ach_mis_14_ext_ru",
		-- {"loc_achievement_group_missions_name"}, {"ru"},
			-- loc_text("Миссия невыполнима")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_mis_14_ext_tw",
		-- {"loc_achievement_group_missions_name"}, {"zh-tw"},
			-- loc_text("不可能的任務")),

	-- --[+ Complete the following Mission Penances. +]-- руоф Выполните следующие искупления с заданиями.
	-- --[+ Russian +]--
	-- create_template("ach_mis_14_ext_desc_ru",
		-- {"loc_achievement_group_missions_description"}, {"ru"},
			-- loc_text("Завершите следующие Искупления, связанные с миссиями.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成下列任務苦修。
	-- create_template("ach_mis_14_ext_desc_tw",
		-- {"loc_achievement_group_missions_description"}, {"zh-tw"},
			-- loc_text("完成以下任務苦修。")),

	-- --[+  +]-- руоф Задержи дыхание (1-3)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_ru",
		-- -- {"loc_achievement_mission_tox_gas_x_name"}, {"ru"},
			-- -- loc_text("Задержи дыхание (1-3)")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_mis_1_ext_tw",
		-- -- {"loc_achievement_mission_tox_gas_x_name"}, {"zh-tw"},
			-- -- loc_text("屏住呼吸 (1-3)")),

	-- --[+  +]-- руоф Завершите задание с обстоятельством «чумной газ» 50 р.
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_desc_ru",
		-- -- {"loc_achievement_mission_tox_gas_x_description"}, {"ru"},
			-- -- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий налётов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在瘟疫毒氣情境下完成x個任務
	-- create_template("ach_mis_1_ext_desc_tw",
		-- {"loc_achievement_mission_tox_gas_x_description"}, {"zh-tw"},
			-- loc_text("在瘟疫毒氣情境下，完成 "..COLORS_Numbers.target_rgb.." 次任務。")),

	-- --[+  +]-- руоф Запретные тексты (1-5)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_ru",
		-- -- {"loc_achievement_mission_grimoire_recovery_name"}, {"ru"},
			-- -- loc_text("Запретные тексты (1-5)")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_mis_1_ext_tw",
		-- -- {"loc_achievement_mission_grimoire_recovery_name"}, {"zh-tw"},
			-- -- loc_text("禁忌文本 (1-5)")),

	-- --[+  +]-- руоф Соберите и извлеките гримуары (75).
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_desc_ru",
		-- -- {"loc_achievement_mission_grimoire_recovery_description"}, {"ru"},
			-- -- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий налётов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 收集並回收xx本法術書。
	-- create_template("ach_mis_1_ext_desc_tw",
		-- {"loc_achievement_mission_grimoire_recovery_description"}, {"zh-tw"},
			-- loc_text("收集並回收 "..COLORS_Numbers.target_rgb.." 本法術書。")),

	-- --[+  +]-- руоф Искатель
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_ru",
		-- -- {"loc_achievement_amount_of_chests_opened_name"}, {"ru"},
			-- -- loc_text("Искатель")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_mis_1_ext_tw",
		-- {"loc_achievement_amount_of_chests_opened_name"}, {"zh-tw"},
			-- loc_text("尋寶者")),

	-- --[+  +]-- руоф Откройте сундуки: 2500. Сундуки, открытые членами команды, тоже учитываются.
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_desc_ru",
		-- -- {"loc_achievement_amount_of_chests_opened_description"}, {"ru"},
			-- -- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий налётов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 打開xx個寶箱。盟友打開的也算。
	-- create_template("ach_mis_1_ext_desc_tw",
		-- {"loc_achievement_amount_of_chests_opened_description"}, {"zh-tw"},
			-- loc_text("打開 "..COLORS_Numbers.target_rgb.." 個寶箱。盟友打開的也算。")),

	-- --[+ The Machine Whisperer +]-- руоф Заклинатель машин
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_10_ext_ru",
		-- -- {"loc_achievement_hack_5_name"}, {"ru"},
			-- -- loc_text("Опросчик (1-5)")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_mis_10_ext_tw",
	-- -- 	{"loc_achievement_hack_5_name"}, {"zh-tw"},
	-- -- 		loc_text("機械低語者 (1-5)")),

	-- --[+ Complete 200 successful data-interrogations. +]-- руоф Выполнить успешных опросов: 200.
	-- --[+ Russian +]--
	-- create_template("ach_mis_10_ext_desc_ru",
		-- {"loc_achievement_hack_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." успешных опросов данных.")),
	-- --[+ Traditional Chinese +]--
	-- -- 成功完成xx次數據詢問。
	-- create_template("ach_mis_10_ext_desc_tw",
		-- {"loc_achievement_hack_x_description"}, {"zh-tw"},
			-- loc_text("成功完成 "..COLORS_Numbers.target_rgb.." 次數據詢問。")),

	-- --[+ Strike Force (1) +]-- руоф Ударная группа (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis__ext_ru",
		-- -- {"loc_achievement_type_5_mission_1_name"}, {"ru"},
			-- -- loc_text("Ударная группа (4)")),
	-- --[+ Traditional Chinese 打擊力量 (1) +]--
	-- create_template("ach_mis_5_ext_tw",
		-- {"loc_achievement_type_5_mission_1_name"}, {"zh-tw"},
			-- loc_text("打擊力量 (1)")),

	-- --[+ Strike Force (2) +]-- руоф Ударная группа (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_5_ext_ru",
		-- -- {"loc_achievement_type_5_mission_2_name"}, {"ru"},
			-- -- loc_text("Ударная группа (2)")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_mis_5_ext_tw",
		-- {"loc_achievement_type_5_mission_2_name"}, {"zh-tw"},
			-- loc_text("打擊力量 (2)")),

	-- --[+ Strike Force (3) +]-- руоф Ударная группа (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_5_ext_ru",
		-- -- {"loc_achievement_type_5_mission_3_name"}, {"ru"},
			-- -- loc_text("Ударная группа (3)")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_mis_5_ext_tw",
		-- {"loc_achievement_type_5_mission_3_name"}, {"zh-tw"},
			-- loc_text("打擊力量 (3)")),

	-- --[+ Strike Force (4) +]-- руоф Ударная группа (4)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_5_ext_ru",
		-- -- {"loc_achievement_type_5_mission_4_name"}, {"ru"},
			-- -- loc_text("Ударная группа (4)")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_mis_5_ext_tw",
		-- {"loc_achievement_type_5_mission_4_name"}, {"zh-tw"},
			-- loc_text("打擊力量 (4)")),

	-- --[+ Strike Force (5) +]-- руоф Ударная группа (5)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_5_ext_ru",
		-- -- {"loc_achievement_type_5_mission_5_name"}, {"ru"},
			-- -- loc_text("Ударная группа (5)")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_mis_5_ext_tw",
		-- {"loc_achievement_type_5_mission_5_name"}, {"zh-tw"},
			-- loc_text("打擊力量 (5)")),

	-- --[+ Complete 200 Strike missions. +]-- руоф Завершите задания типа «Удар»: 200.
	-- --[+ Russian +]--
	-- create_template("ach_mis_5_ext_desc_ru",
		-- {"loc_achievement_type_5_mission_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." ударных миссий.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次打擊任務。
	-- create_template("ach_mis_5_ext_desc_tw",
		-- {"loc_achievement_type_5_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..COLORS_Numbers.target_rgb.." 次打擊任務。")),

	-- --[+ Omnissiah's Hand (1) +]-- руоф Рука Омниссии (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_7_ext_ru",
		-- -- {"loc_achievement_type_7_mission_2_name"}, {"ru"},
			-- -- loc_text("Рука Омниссии (2)")),
	-- --[+ Traditional Chinese 歐姆尼賽亞之手 (1) +]--
	-- create_template("ach_mis_7_ext_tw",
		-- {"loc_achievement_type_7_mission_1_name"}, {"zh-tw"},
			-- loc_text("歐姆尼賽亞之手 (1)")),

	-- --[+ Omnissiah's Hand (2) +]-- руоф Рука Омниссии (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_7_ext_ru",
		-- -- {"loc_achievement_type_7_mission_2_name"}, {"ru"},
			-- -- loc_text("Рука Омниссии (2)")),
	-- --[+ Traditional Chinese 歐姆尼賽亞之手 (2) +]--
	-- create_template("ach_mis_7_ext_tw",
		-- {"loc_achievement_type_7_mission_2_name"}, {"zh-tw"},
			-- loc_text("歐姆尼賽亞之手 (2)")),
		
	-- --[+ Omnissiah's Hand (3) +]-- руоф Рука Омниссии (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_7_ext_ru",
		-- -- {"loc_achievement_type_7_mission_3_name"}, {"ru"},
			-- -- loc_text("Рука Омниссии (3)")),
	-- --[+ Traditional Chinese 歐姆尼賽亞之手 (3) +]--
	-- create_template("ach_mis_7_ext_tw",
		-- {"loc_achievement_type_7_mission_3_name"}, {"zh-tw"},
			-- loc_text("歐姆尼賽亞之手 (3)")),

	-- --[+ Omnissiah's Hand (4) +]-- руоф Рука Омниссии (4)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_7_ext_ru",
		-- -- {"loc_achievement_type_7_mission_4_name"}, {"ru"},
			-- -- loc_text("Рука Омниссии (4)")),
	-- --[+ Traditional Chinese 歐姆尼賽亞之手 (4) +]--
	-- create_template("ach_mis_7_ext_tw",
		-- {"loc_achievement_type_7_mission_4_name"}, {"zh-tw"},
			-- loc_text("歐姆尼賽亞之手 (4)")),

	-- --[+ Omnissiah's Hand (5) +]-- руоф Рука Омниссии (5)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_7_ext_ru",
		-- -- {"loc_achievement_type_7_mission_5_name"}, {"ru"},
			-- -- loc_text("Рука Омниссии (5)")),
	-- --[+ Traditional Chinese 歐姆尼賽亞之手 (5) +]--
	-- create_template("ach_mis_7_ext_tw",
		-- {"loc_achievement_type_7_mission_5_name"}, {"zh-tw"},
			-- loc_text("歐姆尼賽亞之手 (5)")),

	-- --[+ Complete 100 Repair missions. +]-- руоф Завершите задания типа «Ремонт»: 100.
	-- --[+ Russian +]--
	-- create_template("ach_mis_7_ext_desc_ru",
		-- {"loc_achievement_type_7_mission_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." ремонтных миссий.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次修理任務。
	-- create_template("ach_mis_7_ext_desc_tw",
		-- {"loc_achievement_type_7_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..COLORS_Numbers.target_rgb.." 次修理任務。")),

	-- --[+ Adapt to the Environment (1) +]-- руоф Приспособление к среде (1)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_12_ext_ru",
		-- -- {"loc_achievement_mission_circumstace_1_name"}, {"ru"},
			-- -- loc_text("Адаптируйтесь к окружающей среде (1)")),
	-- --[+ Traditional Chinese 適應環境 (1) +]--
	-- create_template("ach_mis_12_ext_tw",
		-- {"loc_achievement_mission_circumstace_1_name"}, {"zh-tw"},
			-- loc_text("適應環境 (1)")),

	-- --[+ Adapt to the Environment (2) +]-- руоф Приспособление к среде (2)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_12_ext_ru",
		-- -- {"loc_achievement_mission_circumstace_2_name"}, {"ru"},
			-- -- loc_text("Адаптируйтесь к окружающей среде (2)")),
	-- --[+ Traditional Chinese 適應環境 (2) +]--
	-- create_template("ach_mis_12_ext_tw",
		-- {"loc_achievement_mission_circumstace_2_name"}, {"zh-tw"},
			-- loc_text("適應環境 (2)")),

	-- --[+ Adapt to the Environment (3) +]-- руоф Приспособление к среде (3)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_12_ext_ru",
		-- -- {"loc_achievement_mission_circumstace_3_name"}, {"ru"},
			-- -- loc_text("Адаптируйтесь к окружающей среде (3)")),
	-- --[+ Traditional Chinese 適應環境 (3) +]--
	-- create_template("ach_mis_12_ext_tw",
		-- {"loc_achievement_mission_circumstace_3_name"}, {"zh-tw"},
			-- loc_text("適應環境 (3)")),

	-- --[+ Adapt to the Environment (4) +]-- руоф Приспособление к среде (4)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_12_ext_ru",
		-- -- {"loc_achievement_mission_circumstace_4_name"}, {"ru"},
			-- -- loc_text("Адаптируйтесь к окружающей среде (4)")),
	-- --[+ Traditional Chinese 適應環境 (4) +]--
	-- create_template("ach_mis_12_ext_tw",
		-- {"loc_achievement_mission_circumstace_4_name"}, {"zh-tw"},
			-- loc_text("適應環境 (4)")),

	-- --[+ Adapt to the Environment (5) +]-- руоф Приспособление к среде (5)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_12_ext_ru",
		-- -- {"loc_achievement_mission_circumstace_5_name"}, {"ru"},
			-- -- loc_text("Адаптируйтесь к окружающей среде (5)")),
	-- --[+ Traditional Chinese 適應環境 (5) +]--
	-- create_template("ach_mis_12_ext_tw",
		-- {"loc_achievement_mission_circumstace_5_name"}, {"zh-tw"},
			-- loc_text("適應環境 (5)")),

	-- --[+ Complete 500 Special Condition Missions. +]-- руоф Завершите задания с особыми обстоятельствами: 500.
	-- --[+ Russian +]--
	-- create_template("ach_mis_12_ext_desc_ru",
		-- {"loc_achievement_mission_circumstace_x_description"}, {"ru"},
			-- loc_text("Завершите "..COLORS_Numbers.target_rgb.." миссий со специальными условиями.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次特殊情境任務。
	-- create_template("ach_mis_12_ext_desc_tw",
		-- {"loc_achievement_mission_circumstace_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..COLORS_Numbers.target_rgb.." 次特殊情境任務。")),

	-- --[+ + En - RU - 探索 + +]--
	-- --[+ The Orthus Offensive +]-- руоф Ортусское наступление
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_000_ext_ru",
		-- -- {"loc_achievement_subcategory_twins_mission_label"}, {"ru"},
			-- -- loc_text("Ортусское наступление")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_mis_000_ext_tw",
		-- {"loc_achievement_subcategory_twins_mission_label"}, {"zh-tw"},
			-- loc_text("歐特魯斯攻勢")),

	-- --[+ Two Birds with One Stone +]-- руоф Двух зайцев одним выстрелом
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_15_ext_ru",
		-- -- {"loc_achievement_mission_twins_win_name"}, {"ru"},
			-- -- loc_text("Двух птичек одним камнем")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_mis_15_ext_tw",
		-- {"loc_achievement_mission_twins_win_name"}, {"zh-tw"},
			-- loc_text("一石二鳥")),

	-- --[+ Defeat the Karnak Twins during The Orthus Offensive on any Threat. +]-- руоф Победить близнецов Карнак во время «Ортусского наступления» на любом уровне угрозы.
	-- --[+ Russian +]--
	-- create_template("ach_mis_15_ext_desc_ru",
		-- {"loc_achievement_mission_twins_win_description"}, {"ru"},
			-- loc_text("Победить близнецов Карнак во время Ортусского наступления на любой сложности.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在任意威脅度下，在雙頭犬攻勢期間擊敗卡納克雙子。
	-- create_template("ach_mis_15_ext_desc_tw",
		-- {"loc_achievement_mission_twins_win_description"}, {"zh-tw"},
			-- loc_text("在任意威脅度下，\n在雙頭犬攻勢任務中擊敗卡納克雙子。")),

	-- --[+ Two Birds with One Stone (Extremis) +]-- руоф Двух зайцев одним выстрелом (экстремис)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_16_ext_ru",
		-- -- {"loc_achievement_difficult_mission_twins_win_name"}, {"ru"},
			-- -- loc_text("Двух птичек одним камнем (Экстремис)")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_mis_16_ext_tw",
		-- {"loc_achievement_difficult_mission_twins_win_name"}, {"zh-tw"},
			-- loc_text("一石二鳥 (終極版)")),

	-- --[+ Defeat the Karnak Twins during The Orthus Offensive on Damnation Threat Level. +]-- руоф Победить близнецов Карнак во время «Ортусского наступления» при угрозе «Проклятие».
	-- --[+ Russian +]--
	-- create_template("ach_mis_16_ext_desc_ru",
		-- {"loc_achievement_difficult_mission_twins_win_description"}, {"ru"},
			-- loc_text("Победить близнецов Карнак во время Ортусского наступления на сложности "..COLORS_KWords_ru.damnation_rgb_ru..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在詛咒威脅度下，在雙頭犬攻勢期間擊敗卡納克雙子。
	-- create_template("ach_mis_16_ext_desc_tw",
		-- {"loc_achievement_difficult_mission_twins_win_description"}, {"zh-tw"},
			-- loc_text("在『"..COLORS_KWords_tw.damnation_rgb_tw.."』威脅度下，\n在雙頭犬攻勢任務中擊敗卡納克雙子。")),

	--[+ +REDACTED - ДАННЫЕ ИЗЪЯТЫ+ +]--
	--[+ Redacted +]-- руоф Данные изъяты
	-- create_template("ach_red_0_ext_ru",
		-- {"loc_achievement_category_class_challenges_label"}, {"ru"},
			-- loc_text("Данные изъяты")),
	--[+ Traditional Chinese +]--
}

--[+ Automatically create templates from the new structure +]--
local localization_templates = {}
for loc_key, locales in pairs(penances_localizations) do
	for locale, text in pairs(locales) do
		table.insert(localization_templates, {
			loc_keys = {loc_key},
			locales = {locale},
			handle_func = loc_text(text)
		})
	end
end

mod:info("PENANCES.lua loaded successfully")

return localization_templates
