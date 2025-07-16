---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")

--[+ Loading colors of Keywords and Numbers +]--
COLORS_Numbers = mod:io_dofile("Enhanced_descriptions/COLORS_Numbers")
-- All numbers are taken from this file by adding to the value "COLORS_Numbers."
-- For example, in the game the Damage value is taken from the variable {damage:%s}, which in the file "COLORS_Numbers.lua" is replaced by dmg_var_rgb and to add the highlighted number to the text, we write the damage number to the text as "..COLORS_Numbers.dmg_var_rgb.."

COLORS_KWords = mod:io_dofile("Enhanced_descriptions/Loc_EN/COLORS_KWords")
-- All Keywords are taken from this file by adding to the value "COLORS_KWords.".
-- For example, in the file "COLORS_KWords.lua" the word Damage is replaced by Damage_rgb and to add the highlighted word to the text we write it as "..COLORS_KWords.Damage_rgb.".

--[+ Translations +]-- Add a line with a file of Keywords translated into your language.
	--[+ French +]--
-- COLORS_KWords_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/COLORS_KWords_fr")
	--[+ Russian +]--
COLORS_KWords_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/COLORS_KWords_ru")
	--[+ Traditional Chinese +]--
COLORS_KWords_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/COLORS_KWords_tw")
COLORS_KWords2_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/COLORS_KWords2_tw")
	--[+ Simplified Chinese +]--
COLORS_KWords_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/COLORS_KWords_zh_cn")

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
				-- loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies")),
		-- create_template("weap_bb0_ext_YOURLANGUAGE",
			-- {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"YOURLANGUAGE"},
				-- loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords.Damage_rgb_YOURLANGUAGE.." против врагов в противоосколочной броне.")), <- Don't forget the comma at the end!

-- Make changes to this file only if you need them!

	create_template("settings_light_quality_ext_ru",
		{"loc_setting_light_quality_mouseover"}, {"en"},
		loc_text("Предустановка для настроек качества света и теней. Повышают нагрузку на ОЗУ и на графический процессор.{#color(255, 54, 54)}\n\nНастройка ниже «Средней» даёт МЕРЦАНИЕ ТЕКСТУР!{#reset()}")),

--[+ MELK - 梅爾克 - 梅尔克大人的采购店 +]--
	-- HERE IS THE NUMBER HIGHLIGHT IN THE CONTRACTS MENU!

	--[+ Contracts - 合約 - 合同 +]-- Highlighted numbers

	--[+ Kill Х Monstrosities +]--
	create_template("contract_melk_task0_ext_en",
		{"loc_contracts_task_label_kill_bosses"}, {"en"},
			loc_text("Kill "..COLORS_Numbers.countd_var_rgb.." Monstrosities")),
	--[+ Russian +]--
	create_template("contract_melk_task0_ext_ru",
		{"loc_contracts_task_label_kill_bosses"}, {"ru"},
			loc_text("Убить "..COLORS_Numbers.countd_var_rgb.." монстров")),
	--[+ 擊殺巨獸 - Traditional Chinese +]--
	create_template("contract_melk_task0_ext_tw",
		{"loc_contracts_task_label_kill_bosses"}, {"zh-tw"},
			loc_text("擊殺 "..COLORS_Numbers.countd_var_rgb.." 巨獸(畸形怪獸)")),
	--[+ Simplified Chinese - 击杀 X 怪物 +]--
	create_template("contract_melk_task0_ext_tw",
		{"loc_contracts_task_label_kill_bosses"}, {"zh-cn"},
			loc_text("击杀 "..COLORS_Numbers.countd_var_rgb.." 个怪物")),

	--[+ Collect Х kind +]--
	create_template("contract_melk_task1_ext_en",
		{"loc_contracts_task_label_collect_resources"}, {"en"},
			loc_text("Collect "..COLORS_Numbers.counts_var_rgb.." {kind:%s}")),
	--[+ Russian +]--
	create_template("contract_melk_task1_ext_ru",
		{"loc_contracts_task_label_collect_resources"}, {"ru"},
			loc_text("{kind:%s}: собрать "..COLORS_Numbers.counts_var_rgb.." единиц")),
	--[+ - 蒐集[x]數量 - Traditional Chinese +]--
	create_template("contract_melk_task1_ext_tw",
		{"loc_contracts_task_label_collect_resources"}, {"zh-tw"},
			loc_text("收集 "..COLORS_Numbers.counts_var_rgb.." {kind:%s}")),
	--[+ Simplified Chinese - 收集 X 资源 +]--
	create_template("contract_melk_task1_ext_zh_cn",
		{"loc_contracts_task_label_collect_resources"}, {"zh-cn"},
			loc_text("收集 "..COLORS_Numbers.countd_var_rgb.." {kind:%s}")),

	--[+ Kill Х enemy_type with weapon_type +]--
	create_template("contract_melk_task2_ext_en",
		{"loc_contracts_task_label_kill_minions"}, {"en"},
			loc_text("Kill "..COLORS_Numbers.countd_var_rgb.." {enemy_type:%s} with {weapon_type:%s}")),
	--[+ Russian +]--
	create_template("contract_melk_task2_ext_ru",
		{"loc_contracts_task_label_kill_minions"}, {"ru"},
			loc_text("{weapon_type:%s}: убейте "..COLORS_Numbers.countd_var_rgb.." врагов типа {enemy_type:%s}")),
	--[+ 使用[遠/近]擊殺[x][血痂/渣仔] - Traditional Chinese +]--
	create_template("contract_melk_task2_ext_tw",
		{"loc_contracts_task_label_kill_minions"}, {"zh-tw"},
			loc_text("使用 {weapon_type:%s} 擊殺 "..COLORS_Numbers.countd_var_rgb.." {enemy_type:%s}")),
	--[+ Simplified Chinese - 用 weapon_type 杀死 X enemy_type +]--
	create_template("contract_melk_task2_ext_zh_cn",
		{"loc_contracts_task_label_kill_minions"}, {"zh-cn"},
			loc_text("用{weapon_type:%s}杀死 "..COLORS_Numbers.countd_var_rgb.." 个{enemy_type:%s}")),

	--[+ Complete Х missions +]--
	create_template("contract_melk_task3_ext_en",
		{"loc_contracts_task_label_complete_missions"}, {"en"},
			loc_text("Complete "..COLORS_Numbers.countd_var_rgb.." missions")),
	--[+ Russian +]--
	create_template("contract_melk_task3_ext_ru",
		{"loc_contracts_task_label_complete_missions"}, {"ru"},
			loc_text("Завершите "..COLORS_Numbers.countd_var_rgb.." миссий")),
	--[+ 完成[x]場任務 - Traditional Chinese +]--
	create_template("contract_melk_task3_ext_tw",
		{"loc_contracts_task_label_complete_missions"}, {"zh-tw"},
			loc_text("完成 "..COLORS_Numbers.countd_var_rgb.." 任務")),
	--[+ Simplified Chinese - 完成 X 任务 +]--
	create_template("contract_melk_task3_ext_zh_cn",
		{"loc_contracts_task_label_complete_missions"}, {"zh-cn"},
			loc_text("完成 "..COLORS_Numbers.countd_var_rgb.." 个任务")),

	--[+ Complete Х missions with no player deaths +]--
	create_template("contract_melk_task4_ext_en",
		{"loc_contracts_task_label_complete_mission_no_death"}, {"en"},
			loc_text("Complete "..COLORS_Numbers.countd_var_rgb.." missions with no player deaths")),
	--[+ Russian +]--
	create_template("contract_melk_task4_ext_ru",
		{"loc_contracts_task_label_complete_mission_no_death"}, {"ru"},
			loc_text("Завершите миссии без гибели союзников: "..COLORS_Numbers.countd_var_rgb)),
	--[+ 完成[x]場任務，並且無人死亡 - Traditional Chinese +]--
	create_template("contract_melk_task4_ext_tw",
		{"loc_contracts_task_label_complete_mission_no_death"}, {"zh-tw"},
			loc_text("完成 "..COLORS_Numbers.countd_var_rgb.." 任務，且無玩家死亡")),
	--[+ Simplified Chinese - 完成 X 任务且没有玩家死亡 +]--
	create_template("contract_melk_task4_ext_zh_cn",
		{"loc_contracts_task_label_complete_mission_no_death"}, {"zh-cn"},
			loc_text("完成 "..COLORS_Numbers.countd_var_rgb.." 任务且没有玩家死亡")),
	

	--[+ Pick up Х kind +]--
	create_template("contract_melk_task5_ext_en",
		{"loc_contracts_task_label_collect_pickups"}, {"en"},
			loc_text("Pick up "..COLORS_Numbers.counts_var_rgb.." {kind:%s}")),
	--[+ Russian +]--
	create_template("contract_melk_task5_ext_ru",
		{"loc_contracts_task_label_collect_pickups"}, {"ru"},
			loc_text("{kind:%s}: собрать "..COLORS_Numbers.counts_var_rgb.." штук")),
	--[+ 撿起[x]本[聖典/法術書] - Traditional Chinese +]--
	create_template("contract_melk_task5_ext_tw",
		{"loc_contracts_task_label_collect_pickups"}, {"zh-tw"},
			loc_text("撿起 "..COLORS_Numbers.counts_var_rgb.." {kind:%s}")),
	--[+ Simplified Chinese - 拾取 X 本 kind +]--
	create_template("contract_melk_task5_ext_zh_cn",
		{"loc_contracts_task_label_collect_pickups"}, {"zh-cn"},
			loc_text("拾取 "..COLORS_Numbers.counts_var_rgb.." 本{kind:%s}")),

	--[+ Menu - 選單 +]--

	--[+ Melk's Intro +]
	--[+ Russian +]--
	create_template("contract_melk_intro_decs_ext_ru",
		{"loc_contract_view_intro_description"}, {"ru"},
			loc_text("Ну? Чего ты хочешь?")),
	--[+ 好吧，你想要什麼? - Traditional Chinese +]--
	create_template("contract_melk_intro_decs_ext_tw",
		{"loc_contract_view_intro_description"}, {"zh-tw"},
			loc_text("好吧，你想要什麼?")),
	--[+ Simplified Chinese - 梅尔克介绍语 +]--
	create_template("contract_melk_intro_decs_ext_zh_cn",
		{"loc_contract_view_intro_description"}, {"zh-cn"},
			loc_text("嗯？你有什么需要？")),

	--[+ Melk's Intro Title +]--
	--[+ Russian +]--
	create_template("contract_melk_intro_ext_ru",
		{"loc_contract_view_intro_title"}, {"ru"},
			loc_text("Мелк")),
	--[+ 梅爾克 - Traditional Chinese +]--
	create_template("contract_melk_intro_ext_tw",
		{"loc_contract_view_intro_title"}, {"zh-tw"},
			loc_text("梅爾克")),
	--[+ Simplified Chinese - 梅尔克大人的采购店 +]--
	--create_template("contract_melk_intro_ext_zh_cn",
	--	{"loc_contract_view_intro_title"}, {"zh-cn"},
	--		loc_text("梅尔克大人的采购店")),

	--[+ Melk's Option For Check Contracts +]
	--[+ Simplified Chinese - 查看合同 +]--
	create_template("contracts_melk_opt_contracts_ext_zh_cn",
		{"loc_contract_view_option_contracts"}, {"zh-cn"},
			loc_text("查看合同")),

	--[+ Contracts' Stats +]

	--[+ Contracts' Reward +]
	--[+ Russian +]--
	create_template("contract_melk_reward_label_ext_ru",
		{"loc_contracts_contract_reward_label"}, {"ru"},
			loc_text("Награда за выполнение:")),
	--[+ 獎勵 - Traditional Chinese +]--
	create_template("contract_melk_reward_label_ext_tw",
		{"loc_contracts_contract_reward_label"}, {"zh-tw"},
			loc_text("獎勵")), -- Not sure where to use it.
	--[+ Simplified Chinese - 奖励 +]--
	--create_template("contract_melk_reward_label_ext_zh_cn",
	--	{"loc_contracts_contract_reward_label"}, {"zh-cn"},
	--		loc_text("奖励")),

	--[+ Task difficulty +]--
	--[+ Russian +]--
	create_template("contracts_melk_compl0_ext_ru",
		{"loc_contracts_contract_complexity_easy"}, {"ru"},
			loc_text("Низкая")),
	--[+ Traditional Chinese +]--
	create_template("contracts_melk_compl0_ext_tw",
		{"loc_contracts_contract_complexity_easy"}, {"zh-tw"},
			loc_text("簡單")),
	--[+ Simplified Chinese - 低 +]--
	create_template("contracts_melk_compl0_ext_zh_cn",
		{"loc_contracts_contract_complexity_easy"}, {"zh-cn"},
		loc_text("低")),

	--[+ Russian +]--
	create_template("contracts_melk_compl1_ext_ru",
		{"loc_contracts_contract_complexity_medium"}, {"ru"},
			loc_text("Средняя")),
	--[+ Traditional Chinese +]--
	create_template("contracts_melk_compl1_ext_tw",
		{"loc_contracts_contract_complexity_medium"}, {"zh-tw"},
			loc_text("普通")),	
	--[+ Simplified Chinese - 中 +]--
	create_template("contracts_melk_compl1_ext_zh_cn",
		{"loc_contracts_contract_complexity_medium"}, {"zh-cn"},
			loc_text("中")),

	--[+ Russian +]--
	create_template("contracts_melk_compl2_ext_ru",
		{"loc_contracts_contract_complexity_hard"}, {"ru"},
			loc_text("Высокая")),
	--[+ Traditional Chinese +]--
	create_template("contracts_melk_compl2_ext_tw",
		{"loc_contracts_contract_complexity_hard"}, {"zh-tw"},
			loc_text("困難")),
	--[+ Simplified Chinese - 高 +]--
	create_template("contracts_melk_compl2_ext_zh_cn",
		{"loc_contracts_contract_complexity_hard"}, {"zh-cn"},
			loc_text("高")),

	--[+ Random Items +]--
	--[+ Russian +]--
	create_template("contract_melk_gen_goods_rand_rang_weap_ext_ru",
		{"loc_contracts_view_general_goods_random_ranged_weapon"}, {"ru"},
			loc_text("Неизвестное оружие дальнего боя")),
	--[+ 未知的遠程武器 - Traditional Chinese +]--
	create_template("contract_melk_gen_goods_rand_rang_weap_ext_tw",
		{"loc_contracts_view_general_goods_random_ranged_weapon"}, {"zh-tw"},
			loc_text("未知的遠程武器")),

	--[+ Russian +]--
	create_template("contract_melk_gen_goods_rand_gadget_ext_ru",
		{"loc_contracts_view_general_goods_random_gadget_defensive"}, {"ru"},
			loc_text("Неизвестная защитная реликвия")),
	--[+ 未知的防禦性聖物 - Traditional Chinese +]--
	create_template("contract_melk_gen_goods_rand_gadget_ext_tw",
		{"loc_contracts_view_general_goods_random_gadget_defensive"}, {"zh-tw"},
			loc_text("未知的防禦性聖物")),
	--[+ Simplified Chinese - 未知的珍品 +]--
	create_template("contract_melk_gen_goods_rand_gadget_ext_zh_cn",
		{"loc_contracts_view_general_goods_random_gadget_defensive"}, {"zh-cn"},
			loc_text("未知的珍品")),

	--[+ New Contract Notification Message +]--
	--[+ Simplified Chinese - 新的每周合同可用 +]--
	create_template("notification_new_contract_ext_zh_cn",
		{"loc_notification_new_contract"}, {"zh-cn"},
			loc_text("新的每周合同可用")),

--[+ HADRON - 欧姆尼塞亚神龛 +]--
	--[+ Menu +]--
	
	--[+ Max Rarity Level +]
	--[+ Russian +]--
	create_template("hud_hadron_craft1_ext_ru",
		{"loc_crafting_error_no_consecrate"}, {"ru"},
			loc_text("Максимальный уровень редкости!")),
	--[+ Traditional Chinese +]--
	create_template("hud_hadron_craft1_ext_tw",
		{"loc_crafting_error_no_consecrate"}, {"zh-tw"},
			loc_text("以聖化至最高稀有度!")),
	--[+ Simplified Chinese +]--
	--create_template("hud_hadron_craft1_ext_zh_cn",
	--	{"loc_crafting_error_no_consecrate"}, {"zh-cn"},
	--		loc_text("已达到最高稀有度。")),

	--[+ Max Power Level +]--
	--[+ Russian +]--
	create_template("hud_hadron_craft2_ext_ru",
		{"loc_crafting_error_max_power"}, {"ru"},
			loc_text("Максимальный уровень силы!")),
	--[+ Traditional Chinese +]--
	create_template("hud_hadron_craft2_ext_tw",
		{"loc_crafting_error_max_power"}, {"zh-tw"},
			loc_text("以強化至最高等級!")),
	--[+ Simplified Chinese +]--
	create_template("hud_hadron_craft2_ext_zh_cn",
		{"loc_crafting_error_max_power"}, {"zh-cn"},
			loc_text("已达到最高等级。")),

	--[+ Sacrifice Weapon +]--
	--[+ Russian +]--
	create_template("hud_hadron_craft3_ext_ru",
		{"loc_mastery_crafting_sacrifice_weapon_title"}, {"ru"},
			loc_text("Пожертвовать оружие")), -- Жертвенное оружие
	--[+ Simplified Chinese +]--
	create_template("hud_hadron_craft3_ext_tw",
		{"loc_mastery_crafting_sacrifice_weapon_title"}, {"zh-tw"},
			loc_text("犧牲武器")), -- Жертвенное оружие


--[+ ARSENAL - 军械交易所 +]--
	--[+ Menu +]--

	--[+ Arsenal's Intro +]--
	--[+ Russian +]--
	create_template("store_armoury_exchange_intro_decs_ext_ru",
		{"loc_credits_vendor_view_intro_description"}, {"ru"},
			loc_text("Какая из моих скромных услуг вам требуется?")),
	--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_intro_decs_ext_tw",
		{"loc_credits_vendor_view_intro_description"}, {"zh-tw"},
			loc_text("你想要我為你提供甚麼服務")),

	--[+ Arsenal's Option For Buying +]--
	--[+ Russian +]--
	create_template("store_armoury_exchange_buy_ext_ru",
		{"loc_credits_vendor_view_option_buy"}, {"ru"},
			loc_text("Запросы на оружие и реликвии")),
	--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_buy_ext_tw",
		{"loc_credits_vendor_view_option_buy"}, {"zh-tw"},
			loc_text("購買武器和珍品")),
	--[+ Simplified Chinese - 武器与珍品采购店 +]--
	create_template("store_armoury_exchange_buy_ext_zh_cn",
		{"loc_credits_vendor_view_option_buy"}, {"zh-cn"},
			loc_text("武器与珍品采购店")),

	--[+ Arsenal's Option For Certain Buying +]--
	--[+ Russian +]--
	-- create_template("store_armoury_exchange_brunt_ext_ru",
		-- {"loc_credits_goods_vendor_title_text"}, {"ru"},
			-- loc_text("Арсенал Бранта")),
	
	--[+ Certain Buying Description +]--
	--[+ Russian +]--
	create_template("store_armoury_exchange_brunt_decs_ext_ru",
		{"loc_credits_goods_vendor_description_text"}, {"ru"},
			loc_text("Купите нечестивое оружие по вашему выбору.")),
	--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_brunt_decs_ext_tw",
		{"loc_credits_goods_vendor_description_text"}, {"zh-tw"},
			loc_text("獲得一件你選擇的武器，只會是褻瀆級(白武)。")),

	--[+ Simplified Chinese +]--
	create_template("store_armoury_exchange_brunt_decs_ext_zh_cn",
		{"loc_credits_goods_vendor_description_text"}, {"zh-cn"},
			loc_text("获得一件你选择的武器（亵渎级）。")),


--[+ ++MAIN MENU++ +]--

	--[+ Wallet +]--
	--[+ Russian +]--
	create_template("main_menu_acc_wallet_ext_ru",
		{"loc_main_menu_account_wallet_title"}, {"ru"},
			loc_text("Кошелёк аккаунта")),
	--[+ 錢包 - Traditional Chinese +]--
	create_template("main_menu_acc_wallet_ext_tw",
		{"loc_main_menu_account_wallet_title"}, {"zh-tw"},
			loc_text("帳號錢包")),

	--[+ Strike Team +]--
	--[+ Russian - Удар. группа +]--
	create_template("main_menu_acc_warband_ext_ru",
		{"loc_main_menu_warband_count", "loc_social_menu_roster_view_display_name"}, {"ru"},
			loc_text("Ударная группа")),
	--[+ 突擊小隊 - Traditional Chinese +]--
	create_template("main_menu_acc_warband_ext_tw",
		{"loc_main_menu_warband_count", "loc_social_menu_roster_view_display_name"}, {"zh-tw"},
			loc_text("突擊小隊")),

	--[+ Soical's Menu +]--

	--[+ Previous Tasks +]--
	--[+ Russian - Предыдущие задания +]--
	create_template("soc_menu_warband_prev_missions_ext_ru",
		{"loc_social_menu_roster_players_from_previous_missions"}, {"ru"},
			loc_text("Прошлые игры")),
	--[+ 歷史任務 - Traditional Chinese +]--
	create_template("soc_menu_warband_prev_missions_ext_tw",
		{"loc_social_menu_roster_players_from_previous_missions"}, {"zh-tw"},
			loc_text("歷史任務")),

	--[+ Missions' Menu +]

	--[+ Gold Level Missions' title +]--
	--[+ Russian - Миссии - Золотой уровень +]--
	-- create_template("hud_mission_board_header_auric_ext_ru",
		-- {"loc_mission_board_view_header_tertium_hive_auric"}, {"ru"},
			-- loc_text("Улей Терциум - Операции золотого уровня")),
	--[+ 奧里克任務 - Traditional Chinese +]--
	-- create_template("hud_mission_board_header_auric_ext_tw",
		-- {"loc_mission_board_view_header_tertium_hive_auric"}, {"zh-tw"},
			-- loc_text("奧里克任務")),

--[+ HAVOC - Хаос - 浩劫 +]-- руоф Верная смерть
	--[+ Havoc Title +]--
	--[+ Russian +]--
	create_template("havoc_name_ext_ru",
		{"loc_havoc_name"}, {"ru"},
			loc_text("Хавок")),
	--[+ 浩劫 - Traditional Chinese +]--
	create_template("havoc_name_ext_tw",
		{"loc_havoc_name"}, {"zh-tw"},
			loc_text("浩劫")), -- 浩劫UI左上

	--[+ Havoc Reward +]--
	--[+ Russian +]--
	create_template("havoc_reset_rewards_ext_ru",
		{"loc_havoc_reset_rewards"}, {"ru"},
			loc_text("Награды Хавока")),
	--[+ 浩劫獎勵 - Traditional Chinese +]--
	create_template("havoc_reset_rewards_ext_tw",
		{"loc_havoc_reset_rewards"}, {"zh-tw"},
			loc_text("浩劫獎勵")),

	--[+ Havoc Require +]--
	--[+ Russian +]--
	create_template("havoc_rewards_obj_order_ext_ru",
		{"loc_havoc_reward_objective_order"}, {"ru"},
			loc_text("Выполнить задание Хавока")),
	--[+ 完成任一浩劫任務 - Traditional Chinese +]--
	create_template("havoc_rewards_obj_order_ext_tw",
		{"loc_havoc_reward_objective_order"}, {"zh-tw"},
			loc_text("完成任一浩劫任務")),

--[+ ++KILLFEED++ +]--
	--[+ Russian +]--
	create_template("hud_killfeed_ext_ru",
		{"loc_hud_combat_feed_kill_message"}, {"ru"},
			loc_text("{killer:%s} убивает {victim:%s}")),
	--[+ Traditional Chinese +]--
	create_template("hud_killfeed_ext_tw",
		{"loc_hud_combat_feed_kill_message"}, {"zh-tw"},
			loc_text("{killer:%s} 擊殺 {victim:%s}")),


--[+ ++TREAT - СЛОЖНОСТЬ - 威胁度等级++ +]-- colored 着色
	--[+ SEDITION +]--
	create_template("mission_board_danger_1_ext_en",
		{"loc_mission_board_danger_lowest"}, {"en"},
			loc_text(COLORS_KWords.sedition_rgb)),
	--[+ Russian - Мятеж +]--
	create_template("mission_board_danger_1_ext_ru",
		{"loc_mission_board_danger_lowest"}, {"ru"},
			loc_text(COLORS_KWords_ru.sedition_rgb_ru)),
	--[+ Traditional Chinese - 暴動 +]--
	create_template("mission_board_danger_1_ext_tw",
		{"loc_mission_board_danger_lowest"}, {"zh-tw"},
			loc_text(COLORS_KWords2_tw.sedition_rgb_tw)),
	--[+ Simplified Chinese - 煽动 +]--
	create_template("mission_board_danger_1_ext_zh_cn",
		{"loc_mission_board_danger_lowest"}, {"zh-cn"},
			loc_text(COLORS_KWords_zh_cn.sedition_rgb_zh_cn)),

	-- [+ UPRISING +]--
	create_template("mission_board_danger_2_ext_en",
		{"loc_mission_board_danger_low"}, {"en"},
			loc_text(COLORS_KWords.uprising_rgb)),
	--[+ Russian - Восстание +]--
	create_template("mission_board_danger_2_ext_ru",
		{"loc_mission_board_danger_low"}, {"ru"},
			loc_text(COLORS_KWords_ru.uprising_rgb_ru)),
	--[+ Traditional Chinese - 起義 +]--
	create_template("mission_board_danger_2_ext_tw",
		{"loc_mission_board_danger_low"}, {"zh-tw"},
			loc_text(COLORS_KWords2_tw.uprising_rgb_tw)),
	--[+ Simplified Chinese - 起义 +]--
	create_template("mission_board_danger_2_ext_zh_cn",
		{"loc_mission_board_danger_low"}, {"zh-cn"},
			loc_text(COLORS_KWords_zh_cn.uprising_rgb_zh_cn)),

	-- [+ MALICE +]--
	create_template("mission_board_danger_3_ext_en",
		{"loc_mission_board_danger_medium"}, {"en"},
			loc_text(COLORS_KWords.malice_rgb)),
	--[+ Russian - Злоба +]--
	create_template("mission_board_danger_3_ext_ru",
		{"loc_mission_board_danger_medium"}, {"ru"},
			loc_text(COLORS_KWords_ru.malice_rgb_ru)),
	--[+ Traditional Chinese - 惡毒 +]--
	create_template("mission_board_danger_3_ext_tw",
		{"loc_mission_board_danger_medium"}, {"zh-tw"},
			loc_text(COLORS_KWords2_tw.malice_rgb_tw)),
	--[+ Simplified Chinese - 憎恶 +]--
	create_template("mission_board_danger_3_ext_zh_cn",
		{"loc_mission_board_danger_medium"}, {"zh-cn"},
			loc_text(COLORS_KWords_zh_cn.malice_rgb_zh_cn)),

	-- [+ HERESY +]--
	create_template("mission_board_danger_4_ext_en",
		{"loc_mission_board_danger_high"}, {"en"},
			loc_text(COLORS_KWords.heresy_rgb)),
	--[+ Russian - Ересь +]--
	create_template("mission_board_danger_4_ext_ru",
		{"loc_mission_board_danger_high"}, {"ru"},
			loc_text(COLORS_KWords_ru.heresy_rgb_ru)),
	--[+ Traditional Chinese - 異端 +]--
	create_template("mission_board_danger_4_ext_tw",
		{"loc_mission_board_danger_high"}, {"zh-tw"},
			loc_text(COLORS_KWords2_tw.heresy_rgb_tw)),
	--[+ Simplified Chinese - 异端 +]--
	create_template("mission_board_danger_4_ext_zh_cn",
		{"loc_mission_board_danger_high"}, {"zh-cn"},
			loc_text(COLORS_KWords_zh_cn.heresy_rgb_zh_cn)),

	-- [+ DAMNATION +]--
	create_template("mission_board_danger_5_ext_en",
		{"loc_mission_board_danger_highest"}, {"en"},
			loc_text(COLORS_KWords.damnation_rgb)),
	--[+ Russian - Проклятие +]--
	create_template("mission_board_danger_5_ext_ru",
		{"loc_mission_board_danger_highest"}, {"ru"},
			loc_text(COLORS_KWords_ru.damnation_rgb_ru)),
	--[+ Traditional Chinese - 詛咒 +]--
	create_template("mission_board_danger_5_ext_tw",
		{"loc_mission_board_danger_highest"}, {"zh-tw"},
			loc_text(COLORS_KWords2_tw.damnation_rgb_tw)),
	--[+ Simplified Chinese - 诅咒 +]--
	create_template("mission_board_danger_5_ext_zh_cn",
		{"loc_mission_board_danger_highest"}, {"zh-cn"},
			loc_text(COLORS_KWords_zh_cn.damnation_rgb_zh_cn)),

	-- [+ AURIC +]--
	create_template("mission_board_danger_6_ext_en",
		{"loc_group_finder_difficulty_auric"}, {"en"},
			loc_text(COLORS_KWords.auric_rgb)),
	--[+ Russian - Золото +]--
	-- create_template("mission_board_danger_6_ext_ru",
		-- {"loc_group_finder_difficulty_auric"}, {"ru"},
			-- loc_text(COLORS_KWords_ru.auric_rgb_ru)),
	--[+  詛咒 - Traditional Chinese +]--
	-- create_template("mission_board_danger_6_ext_tw",
		-- {"loc_group_finder_difficulty_auric"}, {"zh-tw"},
			-- loc_text(COLORS_KWords2_tw.auric_rgb_tw)),
	--[+ Simplified Chinese - 诅咒 +]--
	-- create_template("mission_board_danger_6_ext_zh_cn",
		-- {"loc_group_finder_difficulty_auric"}, {"zh-cn"},
			-- loc_text(COLORS_KWords_zh_cn.auric_rgb_zh_cn)),


--[+ ++INVENTORY++ +]--
	-- [+ Curios - Реликвии - 珍品 +]-- руоф Диковинки
	--[+ Russian +]--
	create_template("hud_inventory_attachments_ext_ru",
		{"loc_inventory_loadout_group_attachments"}, {"ru"},
			loc_text("Реликвии")),
	--[+ 珍品 - Traditional Chinese +]--
	create_template("hud_inventory_attachments_ext_tw",
		{"loc_inventory_loadout_group_attachments"}, {"zh-tw"},
			loc_text("珍品")), -- 角色畫面
	--[+ Simplified Chinese - 珍品 +]--
	create_template("hud_inventory_attachments_ext_zh_cn",
		{"loc_inventory_loadout_group_attachments"}, {"zh-cn"},
			loc_text("珍品")),

	--[+ First Curios +]
	--[+ Russian +]--
	create_template("hud_inventory_attachments1_ext_ru",
		{"loc_inventory_title_slot_attachment_1"}, {"ru"},
			loc_text("Первая реликвия")),
	--[+ 珍品 - Traditional Chinese +]--
	create_template("hud_inventory_attachments1_ext_tw",
		{"loc_inventory_title_slot_attachment_1"}, {"zh-tw"},
			loc_text("珍品")),
	--[+ Simplified Chinese - 珍品 槽位 1 +]--
	create_template("hud_inventory_attachments_ext_zh_cn",
		{"loc_inventory_title_slot_attachment_1"}, {"zh-cn"},
			loc_text("第一件珍品")),

	--[+ Second Curios +]
	--[+ Russian +]--
	create_template("hud_inventory_attachments2_ext_ru",
		{"loc_inventory_title_slot_attachment_2"}, {"ru"},
			loc_text("Вторая реликвия")),
	--[+ 珍品 - Traditional Chinese +]--
	create_template("hud_inventory_attachments2_ext_tw",
		{"loc_inventory_title_slot_attachment_2"}, {"zh-tw"},
			loc_text("珍品")),
	--[+ Simplified Chinese - 珍品 槽位 2 +]--
	create_template("hud_inventory_attachments_ext_zh_cn",
		{"loc_inventory_title_slot_attachment_2"}, {"zh-cn"},
			loc_text("第二件珍品")),

	--[+ Third Curios +]
	--[+ Russian +]--
	create_template("hud_inventory_attachments3_ext_ru",
		{"loc_inventory_title_slot_attachment_3"}, {"ru"},
			loc_text("Третья реликвия")),
	--[+ 珍品 - 庫存 - Traditional Chinese +]--
	create_template("hud_inventory_attachments3_ext_tw",
		{"loc_inventory_title_slot_attachment_3"}, {"zh-tw"},
			loc_text("珍品 - 庫存")),
	--[+ Simplified Chinese - 珍品 槽位 3 +]--
	create_template("hud_inventory_attachments_ext_zh_cn",
		{"loc_inventory_title_slot_attachment_3"}, {"zh-cn"},
			loc_text("第三件珍品")),

	--[+ Equipment Page Title +]--
	--[+ Russian - Снаряжение +]--
	create_template("hud_inventory_name_ext_ru",
		{"loc_inventory_view_display_name"}, {"ru"},
			loc_text("Снаряжение")),
	--[+ 裝備 - Traditional Chinese +]--
	create_template("hud_inventory_name_ext_tw",
		{"loc_inventory_view_display_name"}, {"zh-tw"},
			loc_text("裝備")),
	--[+ Simplified Chinese - 装备 +]--
	create_template("hud_inventory_name_ext_zh_cn",
		{"loc_inventory_view_display_name"}, {"zh-cn"},
			loc_text("装备")),

	--[+ Cosmetics Slot +]--

	--[+ Legs +]--
	--[+ Russian - Ноги +]--
	create_template("hud_cosmetics_slot_lowerbody_ext_ru",
		{"loc_inventory_title_slot_gear_lowerbody"}, {"ru"},
			loc_text("Ноги")),
	--[+ 腿部 - Traditional Chinese +]--
	create_template("hud_cosmetics_slot_lowerbody_ext_tw",
		{"loc_inventory_title_slot_gear_lowerbody"}, {"zh-tw"},
			loc_text("下半身")),

	--[+ Poses End of Round +]--
	--[+ Russian - Позы +]--
	create_template("hud_cosmetics_anim_ext_ru",
		{"loc_inventory_title_slot_animation_end_of_round"}, {"ru"},
			loc_text("Позы")),
	--[+ 姿勢 - Traditional Chinese +]--
	create_template("hud_cosmetics_anim_ext_tw",
		{"loc_inventory_title_slot_animation_end_of_round"}, {"zh-tw"},
			loc_text("姿勢")),
	--[+ Simplified Chinese - 结算动作 +]--
	create_template("hud_cosmetics_anim_ext_zh_cn",
		{"loc_inventory_title_slot_animation_end_of_round"}, {"zh-cn"},
			loc_text("结算动作")),

	--[+ Rarity +]--
	--[+ Russian - Редкость предметов +]--
	create_template("store_armoury_exchange_weap_rarity1_ext_ru",
		{"loc_item_weapon_rarity_1"}, {"ru"},
			loc_text("Нечестивое")), -- Белое
	--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_weap_rarity1_ext_tw",
		{"loc_item_weapon_rarity_1"}, {"zh-tw"},
			loc_text("褻瀆")), -- 白色
	--[+ Simplified Chinese +]--
	create_template("store_armoury_exchange_weap_rarity1_ext_zh_cn",
		{"loc_item_weapon_rarity_1"}, {"zh-cn"},
			loc_text("亵渎")), -- 白

	--[+ Russian +]--
	create_template("store_armoury_exchange_weap_rarity2_ext_ru",
		{"loc_item_weapon_rarity_2"}, {"ru"},
			loc_text("Очищенное")), -- Зелёное
	--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_weap_rarity2_ext_tw",
		{"loc_item_weapon_rarity_2"}, {"zh-tw"},
			loc_text("救贖")), -- 綠色
	--[+ Simplified Chinese +]--
	create_template("store_armoury_exchange_weap_rarity2_ext_zh_cn",
		{"loc_item_weapon_rarity_2"}, {"zh-cn"},
			loc_text("救赎")), -- 绿
			
	--[+ Russian +]--
	create_template("store_armoury_exchange_weap_rarity3_ext_ru",
		{"loc_item_weapon_rarity_3"}, {"ru"},
			loc_text("Помазанное")), -- Синее
	--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_weap_rarity3_ext_tw",
		{"loc_item_weapon_rarity_3"}, {"zh-tw"},
			loc_text("受膏")), -- 藍色
	--[+ Simplified Chinese +]--
	create_template("store_armoury_exchange_weap_rarity3_ext_zh_cn",
		{"loc_item_weapon_rarity_3"}, {"zh-cn"},
			loc_text("圣膏")), -- 蓝

	--[+ Russian +]--
	create_template("store_armoury_exchange_weap_rarity4_ext_ru",
		{"loc_item_weapon_rarity_4"}, {"ru"},
			loc_text("Возвышенное")), -- Фиолетовое
	--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_weap_rarity4_ext_tw",
		{"loc_item_weapon_rarity_4"}, {"zh-tw"},
			loc_text("崇高")), -- 紫色
	--[+ Simplified Chinese +]--
	create_template("store_armoury_exchange_weap_rarity4_ext_zh_cn",
		{"loc_item_weapon_rarity_4"}, {"zh-cn"},
			loc_text("超然")), -- 紫

	--[+ Russian +]--
	create_template("store_armoury_exchange_weap_rarity5_ext_ru",
		{"loc_item_weapon_rarity_5"}, {"ru"},
			loc_text("Непостижимое")), -- Рыжее
	--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_weap_rarity5_ext_tw",
		{"loc_item_weapon_rarity_5"}, {"zh-tw"},
			loc_text("卓越")), -- 橙色
	--[+ Simplified Chinese +]--
	create_template("store_armoury_exchange_weap_rarity5_ext_zh_cn",
		{"loc_item_weapon_rarity_5"}, {"zh-cn"},
			loc_text("超然")), -- 金

	--[+ Russian +]--
		-- КРАСНОЕ НЕ ПАШЕТ ИЗ-ЗА МОДА?
	create_template("store_armoury_exchange_weap_rarity6_ext_ru",
		{"loc_item_weapon_rarity_6"}, {"ru"},
			loc_text("Благородное")), -- Красное
	--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_weap_rarity6_ext_tw",
		{"loc_item_weapon_rarity_6"}, {"zh-tw"},
			loc_text("神化")), -- 紅色
	--[+ Simplified Chinese +]--
	create_template("store_armoury_exchange_weap_rarity6_ext_zh_cn",
		{"loc_item_weapon_rarity_6"}, {"zh-cn"},
			loc_text("神圣")), -- 红

--[+ ++WEAPON CARD - КАРТОЧКА ОРУЖИЯ++ +]--
	--[+ Weapon - Оружие +]--
	--[+ Favorite +]--
	--[+ Russian +]--
	create_template("inventory_weapon_perk_title_ext_ru",
		{"loc_inventory_menu_favorite_item"}, {"ru"},
			loc_text("Избранное")), -- руоф Добавить в избранное
	--[+ Traditional Chinese +]--
	create_template("inventory_weapon_perk_title_ext_tw",
		{"loc_inventory_menu_favorite_item"}, {"zh-tw"},
			loc_text("最愛")),
	--[+ Simplified Chinese - 收藏物品 +]--
	create_template("inventory_weapon_perk_title_ext_zh_cn",
		{"loc_inventory_menu_favorite_item"}, {"zh-cn"},
			loc_text("已收藏")),

	--[+ Perk +]--
	--[+ Russian +]--
	create_template("inventory_weapon_perk_title_ext_ru",
		{"loc_item_type_perk"}, {"ru"},
			loc_text("Характеристики")), -- руоф Улучшение
	--[+ 附加屬性 - Traditional Chinese +]--
	create_template("inventory_weapon_perk_title_ext_tw",
		{"loc_item_type_perk"}, {"zh-tw"},
			loc_text("附加屬性")), -- 

	--[+ Russian +]--
	create_template("inventory_weapon_action_light_ext_ru",
		{"loc_weapon_action_title_light"}, {"ru"},
			loc_text("Лёгкая атака")), -- руоф Простая атака
	--[+ 輕攻擊 - Traditional Chinese +]--
	create_template("inventory_weapon_action_light_ext_tw",
		{"loc_weapon_action_title_light"}, {"zh-tw"},
			loc_text("輕攻擊")),

	--[+ Russian +]--
	create_template("inventory_weapon_action_heavy_ext_ru",
		{"loc_weapon_action_title_heavy"}, {"ru"},
			loc_text("Тяжёлая атака")), -- руоф Мощная атака
	--[+ 重攻擊 - Traditional Chinese +]--
	create_template("inventory_weapon_action_heavy_ext_tw",
		{"loc_weapon_action_title_heavy"}, {"zh-tw"},
			loc_text("重攻擊")),

	--[+ Russian +]--
	create_template("inventory_weapon_action_primary_ext_ru",
		{"loc_weapon_action_title_primary"}, {"ru"},
			loc_text("Основная атака")), -- руоф Основное действие - длинно и накладывается
	--[+ 主要攻擊(杖) - Traditional Chinese +]--
	create_template("inventory_weapon_action_primary_ext_tw",
		{"loc_weapon_action_title_primary"}, {"zh-tw"},
			loc_text("主要攻擊")),

	--[+ Russian +]--
	create_template("inventory_weapon_action_secondary_ext_ru",
		{"loc_weapon_action_title_secondary"}, {"ru"},
			loc_text("Вторичная атака")), -- Вторичное действие - длинно и накладывается -- руоф Дополнительное действие
	--[+ 次要攻擊(杖) - Traditional Chinese +]--
	create_template("inventory_weapon_action_secondary_ext_tw",
		{"loc_weapon_action_title_secondary"}, {"zh-tw"},
			loc_text("次要攻擊")),

	--[+ Russian +]--
	create_template("inventory_weapon_action_special_ext_ru",{"loc_weapon_action_title_special"}, {"ru"},
			loc_text("Специальная атака")),
	--[+ 特殊攻擊(遠程) - Traditional Chinese +]--
	create_template("inventory_weapon_action_special_ext_tw",
		{"loc_weapon_action_title_special"}, {"zh-tw"},
			loc_text("特殊攻擊")),

	--[+ Russian +]--
	create_template("inventory_weapon_action_special_att_ext_ru",
		{"loc_weapon_special_special_attack"}, {"ru"},
			loc_text("Специальная атака")),
	--[+ 特殊攻擊(近戰) - Traditional Chinese +]--
	create_template("inventory_weapon_action_special_att_ext_tw",
		{"loc_weapon_special_special_attack"}, {"zh-tw"},
			loc_text("特殊攻擊")),

	--[+ Finesse - Ловкость +]-- руоф Точность
	--[+ Russian +]--
	create_template("inventory_weapon_stats_finesse_ext_ru",
		{"loc_stats_display_finesse_stat"}, {"ru"},
			loc_text("Ловкость")),
		--[+ 技巧 - Traditional Chinese +]--
	create_template("inventory_weapon_stats_finesse_ext_tw",
		{"loc_stats_display_finesse_stat"}, {"zh-tw"},
			loc_text("技巧")),
		--[+ Simplified Chinese - 灵巧 +]--
	create_template("inventory_weapon_stats_finesse_ext_zh_cn",
		{"loc_stats_display_finesse_stat"}, {"zh-cn"},
			loc_text("灵巧")),

	--[+  - Размер пламени +]-- руоф Область распространения
	--[+ Russian +]--
	create_template("inventory_weapon_stats_flame_size_ext_ru",
		{"loc_stats_display_flame_size_stat"}, {"ru"},
			loc_text("Размер пламени")),
	--[+ 火焰範圍 - Traditional Chinese +]--	
	create_template("inventory_weapon_stats_flame_size_ext_tw",
		{"loc_stats_display_flame_size_stat"}, {"zh-tw"},
			loc_text("火焰範圍")),

	-- create_template("inventory_melee_vet_high_cleave_ext_ru",
		-- {"loc_weapon_keyword_high_cleave"}, {"ru"},
			-- loc_text("Рассечение")),

	-- create_template("inventory_melee_vet_powersword_ext_ru",
		-- {"loc_weapon_keyword_power_weapon"}, {"ru"},
			-- loc_text("Силовое оружие")),

	-- create_template("inventory_range_vet_lasgun_ext_ru",
		-- {"loc_weapon_keyword_spray_n_pray"}, {"ru"},
			-- loc_text("Непрерывная стрельба")),

	--[+ Russian +]--
	create_template("inventory_weapon_stats_control_ext_ru",
		{"loc_stats_display_control_stat_melee"}, {"ru"},
			loc_text("Сдерживание орд")),
	--[+ 群體控制 - Traditional Chinese +]--
	create_template("inventory_weapon_stats_control_ext_tw",
		{"loc_stats_display_control_stat_melee"}, {"zh-tw"},
			loc_text("群體控制")),

	--[+ Russian +]--
	create_template("inventory_weapon_stats_display_dodge_dist_ext_ru",
		{"loc_weapon_stats_display_dodge_distance"}, {"ru"},
			loc_text("Дальность уклонения")),
	--[+ 閃避距離 - Traditional Chinese +]--
	create_template("inventory_weapon_stats_display_dodge_dist_ext_tw",
		{"loc_weapon_stats_display_dodge_distance"}, {"zh-tw"},
			loc_text("閃避距離")),

-- JUST FOR FUN --
--[+ ++LOADING MESSAGES - СООБЩЕНИЯ ПРИ ЗАГРУЗКЕ++ +]--
	--[+ Reading data from disc - Чтение данных с диска +]--
	--[+ Russian +]--
	-- create_template("reading_data_ext_ru",
		-- {"loc_wait_reason_read_from_disk"}, {"ru"},
			-- loc_text("Получение инквизиционных данных")),
	create_template("reading_data_ext_ru",
		{"loc_wait_reason_read_from_disk"}, {"ru"},
			loc_text("Попытка исправить ошибки 3001, 3013, 2014...")),
	--[+ Traditional Chinese +]--
	create_template("reading_data_ext_tw",
		{"loc_wait_reason_read_from_disk"}, {"zh-tw"},
			loc_text("正在從硬碟讀取資料")), -- 嘗試修正錯誤 3001, 3013, 2014...

	--[+ Dedicated Server - Выделенный сервер +]--
	--[+ Russian +]--
	create_template("dedicated_server_ext_ru",
		{"loc_wait_reason_dedicated_server"}, {"ru"},
			loc_text("Выдаём рекаф и брикеты")),
	--[+ Traditional Chinese +]--
	create_template("dedicated_server_ext_tw",
		{"loc_wait_reason_dedicated_server"}, {"zh-tw"},
			loc_text("正在載入著色器或模組包")),
	-- create_template("dedicated_server_ext_ru",
		-- {"loc_wait_reason_dedicated_server"}, {"ru"},
			-- loc_text("Попытка обновить магазин чаще, чем раз в две недели...")),

	--[+ Waiting for other player(s) - Ожидание других игроков +]--
	--[+ Russian +]--
	-- create_template("other_players_ext_ru",
		-- {"loc_wait_reason_other_player"}, {"ru"},
			-- loc_text("Добавление других оперативников к сеансу связи...")),
	create_template("other_players_ext_ru",
		{"loc_wait_reason_other_player"}, {"ru"},
			loc_text("Шлёпаем уборщицу за вырванные кабели...")),
	--[+ Traditional Chinese +]--
	create_template("other_players_ext_tw",
		{"loc_wait_reason_other_player"}, {"zh-tw"},
			loc_text("正在等待其他玩家加入...")),

	--[+ Communicating with Fatshark backend - Взаимодействие с бэкэндом Fatshark +]--
	--[+ Russian +]--
	create_template("dedicated_server_ext_ru",
		{"loc_wait_reason_backend"}, {"ru"},
			loc_text("Мы сшиваем связь, потому что она порвалась...")),
	--[+ Traditional Chinese +]--
	create_template("dedicated_server_ext_tw",
		{"loc_wait_reason_backend"}, {"zh-tw"},
			loc_text("正在與Fatshark伺服器進行連線... T_T")),

	--[+ Store - Магазин +]--
	--[+ Russian +]--
	create_template("store_ext_ru",
		{"loc_wait_reason_store"}, {"ru"},
			loc_text("Попытка обновить магазин чаще, чем раз в две недели... Неудачно!")),
	--[+ Traditional Chinese +]--
	create_template("store_ext_tw",
		{"loc_wait_reason_store"}, {"zh-tw"},
			loc_text("正在更新商店...")),

	--[+ Platform Steam - Платформа Steam +]--
	--[+ Russian +]--
	create_template("steam_ext_ru",
		{"loc_wait_reason_platform_steam"}, {"ru"},
			loc_text("Подключение к Steam")),
	--[+ Traditional Chinese +]--
	create_template("steam_ext_tw",
		{"loc_wait_reason_platform_steam"}, {"zh-tw"},
			loc_text("正在連接Steam...")),

	--[+ Platform Xbox - Платформа Xbox +]--
	--[+ Russian +]--
	create_template("xbox_ext_ru",
		{"loc_wait_reason_platform_xbox_live"}, {"ru"},
			loc_text("Подключение к Коробокс")),
	--[+ Traditional Chinese +]--
	create_template("xbox_ext_tw",
		{"loc_wait_reason_platform_xbox_live"}, {"zh-tw"},
			loc_text("正在連接Xbox...")),

	--[+ Platform PSN - Платформа PSN +]--
	--[+ Russian +]--
	create_template("psn_ext_ru",
		{"loc_wait_reason_platform_psn"}, {"ru"},
			loc_text("Подключение к ПэЭсЭн")),
	--[+ Traditional Chinese +]--
	create_template("psn_ext_tw",
		{"loc_wait_reason_platform_psn"}, {"zh-tw"},
			loc_text("正在連接PSN...")),

}

--[+ Return the localization templates +]--
return localization_templates