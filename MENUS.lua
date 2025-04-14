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
	--[+ Simplified Chinese +]--
-- COLORS_KWords_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/COLORS_KWords_zh_cn")

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

--[+ MELK - 梅爾克 +]--
	-- HERE IS THE NUMBER HIGHLIGHT IN THE CONTRACTS MENU!
	--[+ Contracts - 合約 +]-- Highlighted numbers
	
	--[+ Kill Х Monstrosities +]--
	create_template("contract_melk_task0_ext_en", {"loc_contracts_task_label_kill_bosses"}, {"en",}, function(locale, value) return "Kill "..COLORS_Numbers.countd_var_rgb.." Monstrosities" end),
		--[+ Russian +]--
	create_template("contract_melk_task0_ext_ru", {"loc_contracts_task_label_kill_bosses"}, {"ru",}, function(locale, value) return "Убить "..COLORS_Numbers.countd_var_rgb.." монстров" end),
		--[+ 擊殺巨獸 - Traditional Chinese +]--
	create_template("contract_melk_task0_ext_tw", {"loc_contracts_task_label_kill_bosses"}, {"zh-tw",}, function(locale, value) return "擊殺 "..COLORS_Numbers.countd_var_rgb.." 巨獸(畸形怪獸)" end),

	--[+ Collect Х kind +]--
	create_template("contract_melk_task1_ext_en", {"loc_contracts_task_label_collect_resources"}, {"en",}, function(locale, value) return "Collect "..COLORS_Numbers.counts_var_rgb.." {kind:%s}" end),
		--[+ Russian +]--
	create_template("contract_melk_task1_ext_ru", {"loc_contracts_task_label_collect_resources"}, {"ru",}, function(locale, value) return "{kind:%s}: собрать "..COLORS_Numbers.counts_var_rgb.." единиц" end),
		--[+ - 蒐集[x]數量 - Traditional Chinese +]--
	create_template("contract_melk_task1_ext_tw", {"loc_contracts_task_label_collect_resources"}, {"zh-tw",}, function(locale, value) return "收集 "..COLORS_Numbers.counts_var_rgb.." {kind:%s}" end),
	
	--[+ Kill Х enemy_type with weapon_type +]--
	create_template("contract_melk_task2_ext_en", {"loc_contracts_task_label_kill_minions"}, {"en",}, function(locale, value) return "Kill "..COLORS_Numbers.countd_var_rgb.." {enemy_type:%s} with {weapon_type:%s}" end),
		--[+ Russian +]--
	create_template("contract_melk_task2_ext_ru", {"loc_contracts_task_label_kill_minions"}, {"ru",}, function(locale, value) return "{weapon_type:%s}: убейте "..COLORS_Numbers.countd_var_rgb.." врагов типа {enemy_type:%s}" end),
		--[+ 使用[遠/近]擊殺[x][血痂/渣仔] - Traditional Chinese +]--
	create_template("contract_melk_task2_ext_tw", {"loc_contracts_task_label_kill_minions"}, {"zh-tw",}, function(locale, value) return "使用 {weapon_type:%s} 擊殺 "..COLORS_Numbers.countd_var_rgb.." {enemy_type:%s}" end),

	--[+ Complete Х missions +]--
	create_template("contract_melk_task3_ext_en", {"loc_contracts_task_label_complete_missions"}, {"en",}, function(locale, value) return "Complete "..COLORS_Numbers.countd_var_rgb.." missions" end),
		--[+ Russian +]--
	create_template("contract_melk_task3_ext_ru", {"loc_contracts_task_label_complete_missions"}, {"ru",}, function(locale, value) return "Завершите "..COLORS_Numbers.countd_var_rgb.." миссий" end),
		--[+ 完成[x]場任務 - Traditional Chinese +]--
	create_template("contract_melk_task3_ext_tw", {"loc_contracts_task_label_complete_missions"}, {"zh-tw",}, function(locale, value) return "完成 "..COLORS_Numbers.countd_var_rgb.." 任務" end),

	--[+ Complete Х missions with no player deaths +]--
	create_template("contract_melk_task4_ext_en", {"loc_contracts_task_label_complete_mission_no_death"}, {"en",}, function(locale, value) return "Complete "..COLORS_Numbers.countd_var_rgb.." missions with no player deaths" end),
		--[+ Russian +]--
	create_template("contract_melk_task4_ext_ru", {"loc_contracts_task_label_complete_mission_no_death"}, {"ru",}, function(locale, value) return "Завершите миссии без гибели союзников: "..COLORS_Numbers.countd_var_rgb end),
		--[+ 完成[x]場任務，並且無人死亡 - Traditional Chinese +]--
	create_template("contract_melk_task4_ext_tw", {"loc_contracts_task_label_complete_mission_no_death"}, {"zh-tw",}, function(locale, value) return "完成 "..COLORS_Numbers.countd_var_rgb.." 任務，且無玩家死亡" end),

	--[+ Pick up Х kind +]--
	create_template("contract_melk_task5_ext_en", {"loc_contracts_task_label_collect_pickups"}, {"en",}, function(locale, value) return "Pick up "..COLORS_Numbers.counts_var_rgb.." {kind:%s}" end),
		--[+ Russian +]--
	create_template("contract_melk_task5_ext_ru", {"loc_contracts_task_label_collect_pickups"}, {"ru",}, function(locale, value) return "{kind:%s}: собрать "..COLORS_Numbers.counts_var_rgb.." штук" end),
		--[+ 撿起[x]本[聖典/法術書] - Traditional Chinese +]--
	create_template("contract_melk_task5_ext_tw", {"loc_contracts_task_label_collect_pickups"}, {"zh-tw",}, function(locale, value) return "撿起 "..COLORS_Numbers.counts_var_rgb.." {kind:%s}" end),

	--[+ Menu - 選單 +]--
		--[+ Russian +]--
	create_template("contract_melk_intro_decs_ext_ru", {"loc_contract_view_intro_description",}, {"ru",}, function(locale, value) return "Ну? Чего ты хочешь?" end),
		--[+ 好吧，你想要什麼? - Traditional Chinese +]--
	create_template("contract_melk_intro_decs_ext_tw", {"loc_contract_view_intro_description",}, {"zh-tw",}, function(locale, value) return "好吧，你想要什麼?" end),

		--[+ Russian +]--
	create_template("contract_melk_intro_ext_ru", {"loc_contract_view_intro_title",}, {"ru",}, function(locale, value) return "Мелк" end),
		--[+ 梅爾克 - Traditional Chinese +]--
	create_template("contract_melk_intro_ext_tw", {"loc_contract_view_intro_title",}, {"zh-tw",}, function(locale, value) return "梅爾克" end),

		--[+ Russian +]--
	create_template("contract_melk_reward_label_ext_ru", {"loc_contracts_contract_reward_label",}, {"ru",}, function(locale, value) return "Награда за выполнение:" end),
		--[+ 獎勵 - Traditional Chinese +]--
	create_template("contract_melk_reward_label_ext_tw", {"loc_contracts_contract_reward_label",}, {"zh-tw",}, function(locale, value) return "獎勵" end), -- Not sure where to use it.

		--[+ Russian +]--
	create_template("contract_melk_gen_goods_rand_rang_weap_ext_ru", {"loc_contracts_view_general_goods_random_ranged_weapon",}, {"ru",}, function(locale, value) return "Неизвестное оружие дальнего боя" end),
		--[+ 未知的遠程武器 - Traditional Chinese +]--
	create_template("contract_melk_gen_goods_rand_rang_weap_ext_tw", {"loc_contracts_view_general_goods_random_ranged_weapon",}, {"zh-tw",}, function(locale, value) return "未知的遠程武器" end),

		--[+ Russian +]--
	create_template("contract_melk_gen_goods_rand_gadget_ext_ru", {"loc_contracts_view_general_goods_random_gadget_defensive",}, {"ru",}, function(locale, value) return "Неизвестная защитная реликвия" end),
		--[+ 未知的防禦性聖物 - Traditional Chinese +]--
	create_template("contract_melk_gen_goods_rand_gadget_ext_tw", {"loc_contracts_view_general_goods_random_gadget_defensive",}, {"zh-tw",}, function(locale, value) return "未知的防禦性聖物" end),


	--[+ Task difficulty +]--
		--[+ Russian +]--
	create_template("contracts_melk_compl0_ext_ru", {"loc_contracts_contract_complexity_easy",}, {"ru",}, function(locale, value) return "Низкая" end),
		--[+ Traditional Chinese +]--
	create_template("contracts_melk_compl0_ext_tw", {"loc_contracts_contract_complexity_easy",}, {"zh-tw",}, function(locale, value) return "簡單" end),

		--[+ Russian +]--
	create_template("contracts_melk_compl1_ext_ru", {"loc_contracts_contract_complexity_medium",}, {"ru",}, function(locale, value) return "Средняя" end),
		--[+ Traditional Chinese +]--
	create_template("contracts_melk_compl1_ext_tw", {"loc_contracts_contract_complexity_medium",}, {"zh-tw",}, function(locale, value) return "普通" end),	

		--[+ Russian +]--
	create_template("contracts_melk_compl2_ext_ru", {"loc_contracts_contract_complexity_hard",}, {"ru",}, function(locale, value) return "Высокая" end),
		--[+ Traditional Chinese +]--
	create_template("contracts_melk_compl2_ext_tw", {"loc_contracts_contract_complexity_hard",}, {"zh-tw",}, function(locale, value) return "困難" end),


--[+ HADRON +]--
	--[+ Menu +]--

		--[+ Russian +]--
	create_template("hud_hadron_craft1_ext_ru", {"loc_crafting_error_no_consecrate"}, {"ru"}, function(locale, value) return "Максимальный уровень редкости!" end),
		--[+ Traditional Chinese +]--
	create_template("hud_hadron_craft1_ext_tw", {"loc_crafting_error_no_consecrate"}, {"zh-tw"}, function(locale, value) return "以聖化至最高稀有度!" end),
	
		--[+ Russian +]--
	create_template("hud_hadron_craft2_ext_ru", {"loc_crafting_error_max_power"}, {"ru"}, function(locale, value) return "Максимальный уровень силы!" end),
		--[+ Traditional Chinese +]--
	create_template("hud_hadron_craft2_ext_tw", {"loc_crafting_error_max_power"}, {"zh-tw"}, function(locale, value) return "以強化至最高等級!" end),
	
		--[+ Russian +]--
	create_template("hud_hadron_craft3_ext_ru", {"loc_mastery_crafting_sacrifice_weapon_title",}, {"ru",}, function(locale, value) return "Пожертвовать оружие" end), -- Жертвенное оружие
		--[+ Traditional Chinese +]--
	create_template("hud_hadron_craft3_ext_tw", {"loc_mastery_crafting_sacrifice_weapon_title",}, {"zh-tw",}, function(locale, value) return "犧牲武器" end), -- Жертвенное оружие


--[+ ARSENAL +]--
	--[+ Menu +]--
		--[+ Russian +]--
	create_template("store_armoury_exchange_intro_decs_ext_ru", {"loc_credits_vendor_view_intro_description",}, {"ru",}, function(locale, value) return "Какая из моих скромных услуг вам требуется?" end),
		--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_intro_decs_ext_tw", {"loc_credits_vendor_view_intro_description",}, {"zh-tw",}, function(locale, value) return "你想要我為你提供甚麼服務" end),

		--[+ Russian +]--
	create_template("store_armoury_exchange_buy_ext_ru", {"loc_credits_vendor_view_option_buy",}, {"ru",}, function(locale, value) return "Запросы на оружие и реликвии" end),
		--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_buy_ext_tw", {"loc_credits_vendor_view_option_buy",}, {"zh-tw",}, function(locale, value) return "購買武器和珍品" end),
	
	--[+ Russian +]--
	-- create_template("store_armoury_exchange_brunt_ext_ru", {"loc_credits_goods_vendor_title_text",}, {"ru",}, function(locale, value) return "Арсенал Бранта" end),
	
		--[+ Russian +]--
	create_template("store_armoury_exchange_brunt_decs_ext_ru", {"loc_credits_goods_vendor_description_text",}, {"ru",}, function(locale, value) return "Купите нечестивое оружие по вашему выбору." end),
		--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_brunt_decs_ext_tw", {"loc_credits_goods_vendor_description_text",}, {"zh-tw",}, function(locale, value) return "獲得一件你選擇的武器，只會是褻瀆級(白武)。" end),


--[+ ++MAIN MENU++ +]--
	--[+ Russian +]--
	--[+ Кошель +]--
	create_template("main_menu_acc_wallet_ext_ru", {"loc_main_menu_account_wallet_title"}, {"ru"}, function(locale, value) return "Кошелёк аккаунта" end),
	--[+ 錢包 - Traditional Chinese +]--
	create_template("main_menu_acc_wallet_ext_tw", {"loc_main_menu_account_wallet_title"}, {"zh-tw"}, function(locale, value) return "帳號錢包" end),

	--[+ Удар. группа +]--
	create_template("main_menu_acc_warband_ext_ru", {"loc_main_menu_warband_count", "loc_social_menu_roster_view_display_name"}, {"ru"}, function(locale, value) return "Ударная группа" end),
	--[+ 群組 - Traditional Chinese +]--
	create_template("main_menu_acc_warband_ext_tw", {"loc_main_menu_warband_count", "loc_social_menu_roster_view_display_name"}, {"zh-tw"}, function(locale, value) return "群組" end),

	--[+ Предыдущие задания +]--
	create_template("soc_menu_warband_prev_missions_ext_ru", {"loc_social_menu_roster_players_from_previous_missions"}, {"ru"}, function(locale, value) return "Прошлые игры" end),
	--[+ 歷史任務 - Traditional Chinese +]--
	create_template("soc_menu_warband_prev_missions_ext_tw", {"loc_social_menu_roster_players_from_previous_missions"}, {"zh-tw"}, function(locale, value) return "歷史任務" end),

	--[+ Миссии - Золотой уровень +]--
	create_template("hud_mission_board_header_auric_ext_ru", {"loc_mission_board_view_header_tertium_hive_auric"}, {"ru"}, function(locale, value) return "Улей Терциум - Операции золотого уровня" end),
	--[+ 奧里克任務 - Traditional Chinese +]--
	create_template("hud_mission_board_header_auric_ext_tw", {"loc_mission_board_view_header_tertium_hive_auric"}, {"zh-tw"}, function(locale, value) return "奧里克任務" end),

--[+ HAVOC - Хаос +]-- руоф Верная смерть
	--[+ Russian +]--
	create_template("havoc_name_ext_ru", {"loc_havoc_name"}, {"ru"}, function(locale, value) return "Хаос" end),
	--[+ 浩劫 - Traditional Chinese +]--
	create_template("havoc_name_ext_tw", {"loc_havoc_name"}, {"zh-tw"}, function(locale, value) return "浩劫" end), -- 浩劫UI左上

	--[+ Russian +]--
	create_template("havoc_reset_rewards_ext_ru", {"loc_havoc_reset_rewards"}, {"ru"}, function(locale, value) return "Награды режима Хаос" end),
	--[+ 浩劫獎勵 - Traditional Chinese +]--
	create_template("havoc_reset_rewards_ext_tw", {"loc_havoc_reset_rewards"}, {"zh-tw"}, function(locale, value) return "浩劫獎勵" end),

	--[+ Russian +]--
	create_template("havoc_rewards_obj_order_ext_ru", {"loc_havoc_reward_objective_order"}, {"ru"}, function(locale, value) return "Выполнить задание режима Хаос" end),
	--[+ 完成任一浩劫任務 - Traditional Chinese +]--
	create_template("havoc_rewards_obj_order_ext_tw", {"loc_havoc_reward_objective_order"}, {"zh-tw"}, function(locale, value) return "完成任一浩劫任務" end),

--[+ ++KILLFEED++ +]--
	--[+ Russian +]--
	create_template("hud_killfeed_ext_ru", {"loc_hud_combat_feed_kill_message"}, {"ru"}, function(locale, value) return "{killer:%s} убивает {victim:%s}" end),
	--[+ Traditional Chinese +]--
	create_template("hud_killfeed_ext_tw", {"loc_hud_combat_feed_kill_message"}, {"zh-tw"}, function(locale, value) return "{killer:%s} 擊殺 {victim:%s}" end),

--[+ ++TREAT - СЛОЖНОСТЬ++ +]-- colored
	--[+ SEDITION - МЯТЕЖ +]--
	create_template("mission_board_danger_1_ext_en", {"loc_mission_board_danger_lowest"}, {"en"}, function(locale, value) return COLORS_KWords.sedition_rgb end),
		--[+ Russian +]--
	create_template("mission_board_danger_1_ext_ru", {"loc_mission_board_danger_lowest"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.sedition_rgb_ru end),
		--[+  暴動 - Traditional Chinese +]--
	create_template("mission_board_danger_1_ext_tw", {"loc_mission_board_danger_lowest"}, {"zh-tw"}, function(locale, value) return COLORS_KWords_tw.sedition_rgb_tw end),


	-- [+ UPRISING - ВОССТАНИЕ +]--
	create_template("mission_board_danger_2_ext_en", {"loc_mission_board_danger_low"}, {"en"}, function(locale, value) return COLORS_KWords.uprising_rgb end),
		--[+ Russian +]--
	create_template("mission_board_danger_2_ext_ru", {"loc_mission_board_danger_low"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.uprising_rgb_ru end),
		--[+  起義 - Traditional Chinese +]--
	create_template("mission_board_danger_2_ext_tw", {"loc_mission_board_danger_low"}, {"zh-tw"}, function(locale, value) return COLORS_KWords_tw.uprising_rgb_tw end),

	-- [+ MALICE - ЗЛОБА +]--
	create_template("mission_board_danger_3_ext_en", {"loc_mission_board_danger_medium"}, {"en"}, function(locale, value) return COLORS_KWords.malice_rgb end),
		--[+ Russian +]--
	create_template("mission_board_danger_3_ext_ru", {"loc_mission_board_danger_medium"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.malice_rgb_ru end),
		--[+  惡毒 - Traditional Chinese +]--
	create_template("mission_board_danger_3_ext_tw", {"loc_mission_board_danger_medium"}, {"zh-tw"}, function(locale, value) return COLORS_KWords_tw.malice_rgb_tw end),

	-- [+ HERESY - ЕРЕСЬ +]--
	create_template("mission_board_danger_4_ext_en", {"loc_mission_board_danger_high"}, {"en"}, function(locale, value) return COLORS_KWords.heresy_rgb end),
		--[+ Russian +]--
	create_template("mission_board_danger_4_ext_ru", {"loc_mission_board_danger_high"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.heresy_rgb_ru end),
		--[+  異端 - Traditional Chinese +]--
	create_template("mission_board_danger_4_ext_tw", {"loc_mission_board_danger_high"}, {"zh-tw"}, function(locale, value) return COLORS_KWords_tw.heresy_rgb_tw end),

	-- [+ DAMNATION - ПРОКЛЯТИЕ +]--
	create_template("mission_board_danger_5_ext_en", {"loc_mission_board_danger_highest"}, {"en"}, function(locale, value) return COLORS_KWords.damnation_rgb end),
		--[+ Russian +]--
	create_template("mission_board_danger_5_ext_ru", {"loc_mission_board_danger_highest"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.damnation_rgb_ru end),
		--[+  詛咒 - Traditional Chinese +]--
	create_template("mission_board_danger_5_ext_tw", {"loc_mission_board_danger_highest"}, {"zh-tw"}, function(locale, value) return COLORS_KWords_tw.damnation_rgb_tw end),


--[+ ++INVENTORY++ +]--
	-- [+ Curios - Реликвии +]-- руоф Диковинки
		--[+ Russian +]--
	create_template("hud_inventory_attachments_ext_ru", {"loc_inventory_loadout_group_attachments"}, {"ru"}, function(locale, value) return "Реликвии" end),
		--[+ 珍品 - Traditional Chinese +]--
	create_template("hud_inventory_attachments_ext_tw", {"loc_inventory_loadout_group_attachments"}, {"zh-tw"}, function(locale, value) return "珍品" end), -- 角色畫面

		--[+ Russian +]--
	create_template("hud_inventory_attachments1_ext_ru", {"loc_inventory_title_slot_attachment_1"}, {"ru"}, function(locale, value) return "Первая реликвия" end),
		--[+ 珍品 - Traditional Chinese +]--
	create_template("hud_inventory_attachments1_ext_tw", {"loc_inventory_title_slot_attachment_1"}, {"zh-tw"}, function(locale, value) return "珍品" end),

		--[+ Russian +]--
	create_template("hud_inventory_attachments2_ext_ru", {"loc_inventory_title_slot_attachment_2"}, {"ru"}, function(locale, value) return "Вторая реликвия" end),
		--[+ 珍品 - Traditional Chinese +]--
	create_template("hud_inventory_attachments2_ext_tw", {"loc_inventory_title_slot_attachment_2"}, {"zh-tw"}, function(locale, value) return "珍品" end),

		--[+ Russian +]--
	create_template("hud_inventory_attachments3_ext_ru", {"loc_inventory_title_slot_attachment_3"}, {"ru"}, function(locale, value) return "Третья реликвия" end),
		--[+ 珍品 - 庫存 - Traditional Chinese +]--
	create_template("hud_inventory_attachments3_ext_tw", {"loc_inventory_title_slot_attachment_3"}, {"zh-tw"}, function(locale, value) return "珍品 - 庫存" end),

	--[+ Снаряжение +]--
		--[+ Russian +]--
	create_template("hud_inventory_name_ext_ru", {"loc_inventory_view_display_name"}, {"ru"}, function(locale, value) return "Снаряжение" end),
		--[+ 裝備 - Traditional Chinese +]--
	create_template("hud_inventory_name_ext_tw", {"loc_inventory_view_display_name"}, {"zh-tw"}, function(locale, value) return "裝備" end),


	--[+ Ноги +]--
		--[+ Russian +]--
	create_template("hud_cosmetics_slot_lowerbody_ext_ru", {"loc_inventory_title_slot_gear_lowerbody"}, {"ru"}, function(locale, value) return "Ноги" end),
		--[+ 腿部 - Traditional Chinese +]--
	create_template("hud_cosmetics_slot_lowerbody_ext_tw", {"loc_inventory_title_slot_gear_lowerbody"}, {"zh-tw"}, function(locale, value) return "下半身" end),

	--[+ Позы +]--
		--[+ Russian +]--
	create_template("hud_cosmetics_anim_ext_ru", {"loc_inventory_title_slot_animation_end_of_round"}, {"ru"}, function(locale, value) return "Позы" end),
		--[+ 姿勢 - Traditional Chinese +]--
	create_template("hud_cosmetics_anim_ext_tw", {"loc_inventory_title_slot_animation_end_of_round"}, {"zh-tw"}, function(locale, value) return "姿勢" end),

	--[+ Редкость предметов +]--
		--[+ Russian +]--
	create_template("store_armoury_exchange_weap_rarity1_ext_ru", {"loc_item_weapon_rarity_1"}, {"ru"}, function(locale, value) return "Нечестивое" end), -- Белое
		--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_weap_rarity1_ext_tw", {"loc_item_weapon_rarity_1"}, {"zh-tw"}, function(locale, value) return "褻瀆" end), -- 白色
		--[+ Russian +]--
	create_template("store_armoury_exchange_weap_rarity2_ext_ru", {"loc_item_weapon_rarity_2"}, {"ru"}, function(locale, value) return "Очищенное" end), -- Зелёное
		--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_weap_rarity2_ext_tw", {"loc_item_weapon_rarity_2"}, {"zh-tw"}, function(locale, value) return "救贖" end), -- 綠色
		--[+ Russian +]--
	create_template("store_armoury_exchange_weap_rarity3_ext_ru", {"loc_item_weapon_rarity_3"}, {"ru"}, function(locale, value) return "Помазанное" end), -- Синее
		--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_weap_rarity3_ext_tw", {"loc_item_weapon_rarity_3"}, {"zh-tw"}, function(locale, value) return "受膏" end), -- 藍色
		--[+ Russian +]--
	create_template("store_armoury_exchange_weap_rarity4_ext_ru", {"loc_item_weapon_rarity_4"}, {"ru"}, function(locale, value) return "Возвышенное" end), -- Фиолетовое
		--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_weap_rarity4_ext_tw", {"loc_item_weapon_rarity_4"}, {"zh-tw"}, function(locale, value) return "崇高" end), -- 紫色
		--[+ Russian +]--
	create_template("store_armoury_exchange_weap_rarity5_ext_ru", {"loc_item_weapon_rarity_5"}, {"ru"}, function(locale, value) return "Непостижимое" end), -- Рыжее
		--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_weap_rarity5_ext_tw", {"loc_item_weapon_rarity_5"}, {"zh-tw"}, function(locale, value) return "卓越" end), -- 橙色
		--[+ Russian +]--
 		-- КРАСНОЕ НЕ ПАШЕТ ИЗ-ЗА МОДА?
	create_template("store_armoury_exchange_weap_rarity6_ext_ru", {"loc_item_weapon_rarity_6"}, {"ru"}, function(locale, value) return "Благородное" end), -- Красное
		--[+ Traditional Chinese +]--
	create_template("store_armoury_exchange_weap_rarity6_ext_tw", {"loc_item_weapon_rarity_6"}, {"zh-tw"}, function(locale, value) return "神化" end), -- 紅色

--[+ ++WEAPON CARD - КАРТОЧКА ОРУЖИЯ++ +]--
	--[+ Weapon - Оружие +]--
		--[+ Favorite +]--
			--[+ Russian +]--
	create_template("inventory_weapon_perk_title_ext_ru", {"loc_inventory_menu_favorite_item"}, {"ru"}, function(locale, value) return "Избранное" end), -- руоф Добавить в избранное
			--[+ Traditional Chinese +]--
	create_template("inventory_weapon_perk_title_ext_tw", {"loc_inventory_menu_favorite_item"}, {"zh-tw"}, function(locale, value) return "最愛" end),

		--[+ Perk +]--
			--[+ Russian +]--
	create_template("inventory_weapon_perk_title_ext_ru", {"loc_item_type_perk"}, {"ru"}, function(locale, value) return "Характеристики" end), -- руоф Улучшение
			--[+ 附加屬性 - Traditional Chinese +]--
	create_template("inventory_weapon_perk_title_ext_tw", {"loc_item_type_perk"}, {"zh-tw"}, function(locale, value) return "附加屬性" end), -- 

			--[+ Russian +]--
	create_template("inventory_weapon_action_light_ext_ru", {"loc_weapon_action_title_light"}, {"ru"}, function(locale, value) return "Лёгкая атака" end), -- руоф Простая атака
			--[+ 輕攻擊 - Traditional Chinese +]--
	create_template("inventory_weapon_action_light_ext_tw", {"loc_weapon_action_title_light"}, {"zh-tw"}, function(locale, value) return "輕攻擊" end),

			--[+ Russian +]--
	create_template("inventory_weapon_action_heavy_ext_ru", {"loc_weapon_action_title_heavy"}, {"ru"}, function(locale, value) return "Тяжёлая атака" end), -- руоф Мощная атака
			--[+ 重攻擊 - Traditional Chinese +]--
	create_template("inventory_weapon_action_heavy_ext_tw", {"loc_weapon_action_title_heavy"}, {"zh-tw"}, function(locale, value) return "重攻擊" end),

			--[+ Russian +]--
	create_template("inventory_weapon_action_primary_ext_ru", {"loc_weapon_action_title_primary"}, {"ru"}, function(locale, value) return "Основная атака" end), -- руоф Основное действие - длинно и накладывается
			--[+ 主要攻擊(杖) - Traditional Chinese +]--
	create_template("inventory_weapon_action_primary_ext_tw", {"loc_weapon_action_title_primary"}, {"zh-tw"}, function(locale, value) return "主要攻擊" end),
			--[+ Russian +]--
	create_template("inventory_weapon_action_secondary_ext_ru", {"loc_weapon_action_title_secondary"}, {"ru"}, function(locale, value) return "Вторичная атака" end), -- Вторичное действие - длинно и накладывается -- руоф Дополнительное действие
			--[+ 次要攻擊(杖) - Traditional Chinese +]--
	create_template("inventory_weapon_action_secondary_ext_tw", {"loc_weapon_action_title_secondary"}, {"zh-tw"}, function(locale, value) return "次要攻擊" end),
			--[+ Russian +]--
	create_template("inventory_weapon_action_special_ext_ru",{"loc_weapon_action_title_special"}, {"ru"}, function(locale, value) return "Специальная атака" end),
			--[+ 特殊攻擊(遠程) - Traditional Chinese +]--
	create_template("inventory_weapon_action_special_ext_tw", {"loc_weapon_action_title_special"}, {"zh-tw"}, function(locale, value) return "特殊攻擊" end),
			--[+ Russian +]--
	create_template("inventory_weapon_action_special_att_ext_ru", {"loc_weapon_special_special_attack"}, {"ru"}, function(locale, value) return "Специальная атака" end),
			--[+ 特殊攻擊(近戰) - Traditional Chinese +]--
	create_template("inventory_weapon_action_special_att_ext_tw", {"loc_weapon_special_special_attack"}, {"zh-tw"}, function(locale, value) return "特殊攻擊" end),

		--[+ Finesse - Ловкость +]-- руоф Точность
			--[+ Russian +]--
	create_template("inventory_weapon_stats_finesse_ext_ru", {"loc_stats_display_finesse_stat"}, {"ru"}, function(locale, value) return "Ловкость" end),
			--[+ 技巧 - Traditional Chinese +]--
	create_template("inventory_weapon_stats_finesse_ext_tw", {"loc_stats_display_finesse_stat"}, {"zh-tw"}, function(locale, value) return "技巧" end),

		--[+  - Размер пламени +]-- руоф Область распространения
			--[+ Russian +]--
	create_template("inventory_weapon_stats_flame_size_ext_ru", {"loc_stats_display_flame_size_stat"}, {"ru"}, function(locale, value) return "Размер пламени" end),
			--[+ 火焰範圍 - Traditional Chinese +]--	
	create_template("inventory_weapon_stats_flame_size_ext_tw", {"loc_stats_display_flame_size_stat"}, {"zh-tw"}, function(locale, value) return "火焰範圍" end),

	-- create_template("inventory_melee_vet_high_cleave_ext_ru", {"loc_weapon_keyword_high_cleave"}, {"ru"}, function(locale, value) return "Рассечение" end),
	-- create_template("inventory_melee_vet_powersword_ext_ru", {"loc_weapon_keyword_power_weapon"}, {"ru"}, function(locale, value) return "Силовое оружие" end),
	-- create_template("inventory_range_vet_lasgun_ext_ru", {"loc_weapon_keyword_spray_n_pray"}, {"ru"}, function(locale, value) return "Непрерывная стрельба" end),
			--[+ Russian +]--
	create_template("inventory_weapon_stats_control_ext_ru", {"loc_stats_display_control_stat_melee"}, {"ru"}, function(locale, value) return "Сдерживание орд" end),
			--[+ 群體控制 - Traditional Chinese +]--
	create_template("inventory_weapon_stats_control_ext_tw", {"loc_stats_display_control_stat_melee"}, {"zh-tw"}, function(locale, value) return "群體控制" end),
			--[+ Russian +]--
	create_template("inventory_weapon_stats_display_dodge_dist_ext_ru", {"loc_weapon_stats_display_dodge_distance"}, {"ru"}, function(locale, value) return "Дальность уклонения" end),
			--[+ 閃避距離 - Traditional Chinese +]--
	create_template("inventory_weapon_stats_display_dodge_dist_ext_tw", {"loc_weapon_stats_display_dodge_distance"}, {"zh-tw"}, function(locale, value) return "閃避距離" end),

-- JUST FOR FUN --
--[+ ++LOADING MESSAGES - СООБЩЕНИЯ ПРИ ЗАГРУЗКЕ++ +]--
	--[+ Reading data from disc - Чтение данных с диска +]--
		--[+ Russian +]--
	-- create_template("reading_data_ext_ru", {"loc_wait_reason_read_from_disk"}, {"ru"}, function(locale, value) return "Получение инквизиционных данных" end),
	create_template("reading_data_ext_ru", {"loc_wait_reason_read_from_disk"}, {"ru"}, function(locale, value) return "Попытка исправить ошибки 3001, 3013, 2014..." end),
		--[+ Traditional Chinese +]--
	create_template("reading_data_ext_tw", {"loc_wait_reason_read_from_disk"}, {"zh-tw"}, function(locale, value) return "正在從硬碟讀取資料" end), -- 嘗試修正錯誤 3001, 3013, 2014...

	--[+ Dedicated Server - Выделенный сервер +]--
		--[+ Russian +]--
	create_template("dedicated_server_ext_ru", {"loc_wait_reason_dedicated_server"}, {"ru"}, function(locale, value) return "Выдаём рекаф и брикеты" end),
		--[+ Traditional Chinese +]--
	create_template("dedicated_server_ext_tw", {"loc_wait_reason_dedicated_server"}, {"zh-tw"}, function(locale, value) return "正在載入著色器或模組包" end),
	-- create_template("dedicated_server_ext_ru", {"loc_wait_reason_dedicated_server"}, {"ru"}, function(locale, value) return "Попытка обновить магазин чаще, чем раз в две недели..." end),

	--[+ Waiting for other player(s) - Ожидание других игроков +]--
		--[+ Russian +]--
	-- create_template("other_players_ext_ru", {"loc_wait_reason_other_player"}, {"ru"}, function(locale, value) return "Добавление других оперативников к сеансу связи..." end),
	create_template("other_players_ext_ru", {"loc_wait_reason_other_player"}, {"ru"}, function(locale, value) return "Шлёпаем уборщицу за вырванные кабели..." end),
		--[+ Traditional Chinese +]--
	create_template("other_players_ext_tw", {"loc_wait_reason_other_player"}, {"zh-tw"}, function(locale, value) return "正在等待其他玩家加入..." end),

	--[+ Communicating with Fatshark backend - Взаимодействие с бэкэндом Fatshark +]--
		--[+ Russian +]--
	create_template("dedicated_server_ext_ru", {"loc_wait_reason_backend"}, {"ru"}, function(locale, value) return "Мы сшиваем связь, потому что она порвалась..." end),
		--[+ Traditional Chinese +]--
	create_template("dedicated_server_ext_tw", {"loc_wait_reason_backend"}, {"zh-tw"}, function(locale, value) return "正在與Fatshark伺服器進行連線... T_T" end),

	--[+ Store - Магазин +]--
		--[+ Russian +]--
	create_template("store_ext_ru", {"loc_wait_reason_store"}, {"ru"}, function(locale, value) return "Попытка обновить магазин чаще, чем раз в две недели... Неудачно!" end),
		--[+ Traditional Chinese +]--
	create_template("store_ext_tw", {"loc_wait_reason_store"}, {"zh-tw"}, function(locale, value) return "正在更新商店..." end),

	--[+ Platform Steam - Платформа Steam +]--
		--[+ Russian +]--
	create_template("steam_ext_ru", {"loc_wait_reason_platform_steam"}, {"ru"}, function(locale, value) return "Подключение к Steam" end),
		--[+ Traditional Chinese +]--
	create_template("steam_ext_tw", {"loc_wait_reason_platform_steam"}, {"zh-tw"}, function(locale, value) return "正在連接Steam..." end),

	--[+ Platform Xbox - Платформа Xbox +]--
		--[+ Russian +]--
	create_template("xbox_ext_ru", {"loc_wait_reason_platform_xbox_live"}, {"ru"}, function(locale, value) return "Подключение к Коробокс" end),
		--[+ Traditional Chinese +]--
	create_template("xbox_ext_tw", {"loc_wait_reason_platform_xbox_live"}, {"zh-tw"}, function(locale, value) return "正在連接Xbox..." end),

	--[+ Platform PSN - Платформа PSN +]--
		--[+ Russian +]--
	create_template("psn_ext_ru", {"loc_wait_reason_platform_psn"}, {"ru"}, function(locale, value) return "Подключение к ПэЭсЭн" end),
		--[+ Traditional Chinese +]--
	create_template("psn_ext_tw", {"loc_wait_reason_platform_psn"}, {"zh-tw"}, function(locale, value) return "正在連接PSN..." end),

}

--[+ Return the localization templates +]--
return localization_templates
