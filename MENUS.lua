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
COLORS_KWords_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/COLORS_KWords_fr") -- French

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

	--[+ MELK +]--
 -- HERE IS THE NUMBER HIGHLIGHT IN THE CONTRACTS MENU!
		--[+ Contracts +]-- Highlighted numbers
			--[+ Kill Х Monstrosities +]--
	create_template("contract_melk_task0_ext_en", {"loc_contracts_task_label_kill_bosses"}, {"en",}, function(locale, value) return "Kill "..COLORS_Numbers.countd_var_rgb.." Monstrosities" end),
	--[+ Russian +]--
	create_template("contract_melk_task0_ext_ru", {"loc_contracts_task_label_kill_bosses"}, {"ru",}, function(locale, value) return "Убить "..COLORS_Numbers.countd_var_rgb.." монстров" end),
			--[+ Collect Х kind +]--
	create_template("contract_melk_task1_ext_en", {"loc_contracts_task_label_collect_resources"}, {"en",}, function(locale, value) return "Collect "..COLORS_Numbers.counts_var_rgb.." {kind:%s}" end),
	--[+ Russian +]--
	create_template("contract_melk_task1_ext_ru", {"loc_contracts_task_label_collect_resources"}, {"ru",}, function(locale, value) return "{kind:%s}: собрать "..COLORS_Numbers.counts_var_rgb.." единиц" end),
			--[+ Kill Х enemy_type with weapon_type +]--
	create_template("contract_melk_task2_ext_en", {"loc_contracts_task_label_kill_minions"}, {"en",}, function(locale, value) return "Kill "..COLORS_Numbers.countd_var_rgb.." {enemy_type:%s} with {weapon_type:%s}" end),
	--[+ Russian +]--
	create_template("contract_melk_task2_ext_ru", {"loc_contracts_task_label_kill_minions"}, {"ru",}, function(locale, value) return "{weapon_type:%s}: убейте "..COLORS_Numbers.countd_var_rgb.." врагов типа {enemy_type:%s}" end),
			--[+ Complete Х missions +]--
	create_template("contract_melk_task3_ext_en", {"loc_contracts_task_label_complete_missions"}, {"en",}, function(locale, value) return "Complete "..COLORS_Numbers.countd_var_rgb.." missions" end),
	--[+ Russian +]--
	create_template("contract_melk_task3_ext_ru", {"loc_contracts_task_label_complete_missions"}, {"ru",}, function(locale, value) return "Завершите "..COLORS_Numbers.countd_var_rgb.." миссий" end),
			--[+ Complete Х missions with no player deaths +]--
	create_template("contract_melk_task4_ext_en", {"loc_contracts_task_label_complete_mission_no_death"}, {"en",}, function(locale, value) return "Complete "..COLORS_Numbers.countd_var_rgb.." missions with no player deaths" end),
	--[+ Russian +]--
	create_template("contract_melk_task4_ext_ru", {"loc_contracts_task_label_complete_mission_no_death"}, {"ru",}, function(locale, value) return "Завершите миссии без гибели союзников: "..COLORS_Numbers.countd_var_rgb end),
			--[+ Pick up Х kind +]--
	create_template("contract_melk_task5_ext_en", {"loc_contracts_task_label_collect_pickups"}, {"en",}, function(locale, value) return "Pick up "..COLORS_Numbers.counts_var_rgb.." {kind:%s}" end),
	--[+ Russian +]--
	create_template("contract_melk_task5_ext_ru", {"loc_contracts_task_label_collect_pickups"}, {"ru",}, function(locale, value) return "{kind:%s}: собрать "..COLORS_Numbers.counts_var_rgb.." штук" end),

		--[+ Menu +]--
	--[+ Russian +]--
	create_template("contract_melk_intro_decs_ext_ru", {"loc_contract_view_intro_description",}, {"ru",}, function(locale, value) return "Ну? Чего ты хочешь?" end),
	create_template("contract_melk_reward_label_ext_ru", {"loc_contracts_contract_reward_label",}, {"ru",}, function(locale, value) return "Награда за выполнение:" end),
	create_template("contract_melk_gen_goods_rand_rang_weap_ext_ru", {"loc_contracts_view_general_goods_random_ranged_weapon",}, {"ru",}, function(locale, value) return "Неизвестное оружие дальнего боя" end),
	create_template("contract_melk_gen_goods_rand_gadget_ext_ru", {"loc_contracts_view_general_goods_random_gadget_defensive",}, {"ru",}, function(locale, value) return "Неизвестная защитная реликвия" end),

		--[+ Task difficulty +]--
	--[+ Russian +]--
	create_template("contracts_melk_compl0_ext_ru", {"loc_contracts_contract_complexity_easy",}, {"ru",}, function(locale, value) return "Низкая" end),
	create_template("contracts_melk_compl1_ext_ru", {"loc_contracts_contract_complexity_medium",}, {"ru",}, function(locale, value) return "Средняя" end),
	create_template("contracts_melk_compl2_ext_ru", {"loc_contracts_contract_complexity_hard",}, {"ru",}, function(locale, value) return "Высокая" end),


	--[+ HADRON +]--
		--[+ Menu +]--
	--[+ Russian +]--
	create_template("hud_hadron_craft1_ext_ru", {"loc_crafting_error_no_consecrate"}, {"ru"}, function(locale, value) return "Максимальный уровень редкости!" end),
	create_template("hud_hadron_craft2_ext_ru", {"loc_crafting_error_max_power"}, {"ru"}, function(locale, value) return "Максимальный уровень силы!" end),
	create_template("hud_hadron_craft3_ext_ru", {"loc_mastery_crafting_sacrifice_weapon_title",}, {"ru",}, function(locale, value) return "Пожертвовать оружие" end), -- Жертвенное оружие


	--[+ ARSENAL +]--
		--[+ Menu +]--
	--[+ Russian +]--
	create_template("store_armoury_exchange_intro_decs_ext_ru", {"loc_credits_vendor_view_intro_description",}, {"ru",}, function(locale, value) return "Какая из моих скромных услуг вам требуется?" end),
	create_template("store_armoury_exchange_buy_ext_ru", {"loc_credits_vendor_view_option_buy",}, {"ru",}, function(locale, value) return "Запросы на оружие и реликвии" end),
	-- create_template("store_armoury_exchange_brunt_ext_ru", {"loc_credits_goods_vendor_title_text",}, {"ru",}, function(locale, value) return "Арсенал Бранта" end),
	create_template("store_armoury_exchange_brunt_decs_ext_ru", {"loc_credits_goods_vendor_description_text",}, {"ru",}, function(locale, value) return "Купите нечестивое оружие по вашему выбору." end),


	--[+ ++MAIN MENU++ +]--
		--[+ Кошель +]--
	--[+ Russian +]--
	create_template("main_menu_acc_wallet_ext_ru", {"loc_main_menu_account_wallet_title"}, {"ru"}, function(locale, value) return "Кошелёк аккаунта" end),
		--[+ Удар. группа +]--
	create_template("main_menu_acc_warband_ext_ru", {"loc_main_menu_warband_count", "loc_social_menu_roster_view_display_name"}, {"ru"}, function(locale, value) return "Ударная группа" end),
		--[+ Предыдущие задания +]--
	create_template("soc_menu_warband_prev_missions_ext_ru", {"loc_social_menu_roster_players_from_previous_missions"}, {"ru"}, function(locale, value) return "Прошлые игры" end),
		--[+ Миссии - Золотой уровень +]--
	create_template("hud_mission_board_header_auric_ext_ru", {"loc_mission_board_view_header_tertium_hive_auric"}, {"ru"}, function(locale, value) return "Улей Терциум - Операции золотого уровня" end),


	--[+ ++KILLFEED++ +]--
	--[+ Russian +]--
	create_template("hud_killfeed_ext_ru", {"loc_hud_combat_feed_kill_message"}, {"ru"}, function(locale, value) return "{killer:%s} убивает {victim:%s}" end),


	--[+ ++TREAT - СЛОЖНОСТЬ++ +]-- colored
		--[+ SEDITION - МЯТЕЖ +]--
	--[+ Russian +]--
	create_template("mission_board_danger_1_ext_ru", {"loc_mission_board_danger_lowest"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.sedition_rgb_ru end),
		-- [+ UPRISING - ВОССТАНИЕ +]--
	--[+ Russian +]--
	create_template("mission_board_danger_2_ext_ru", {"loc_mission_board_danger_low"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.uprising_rgb_ru end),
		-- [+ MALICE - ЗЛОБА +]--
	--[+ Russian +]--
	create_template("mission_board_danger_3_ext_ru", {"loc_mission_board_danger_medium"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.malice_rgb_ru end),
		-- [+ HERESY - ЕРЕСЬ +]--
	--[+ Russian +]--
	create_template("mission_board_danger_4_ext_ru", {"loc_mission_board_danger_high"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.heresy_rgb_ru end),
		-- [+ DAMNATION - ПРОКЛЯТИЕ +]--
	--[+ Russian +]--
	create_template("mission_board_danger_5_ext_ru", {"loc_mission_board_danger_highest"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.damnation_rgb_ru end),


	--[+ ++INVENTORY++ +]--
		-- [+ Curios - Реликвии +]-- руоф Диковинки
	--[+ Russian +]--
	create_template("hud_inventory_attachments_ext_ru", {"loc_inventory_loadout_group_attachments"}, {"ru"}, function(locale, value) return "Реликвии" end),
	create_template("hud_inventory_attachments1_ext_ru", {"loc_inventory_title_slot_attachment_1"}, {"ru"}, function(locale, value) return "Первая реликвия" end),
	create_template("hud_inventory_attachments2_ext_ru", {"loc_inventory_title_slot_attachment_2"}, {"ru"}, function(locale, value) return "Вторая реликвия" end),
	create_template("hud_inventory_attachments3_ext_ru", {"loc_inventory_title_slot_attachment_3"}, {"ru"}, function(locale, value) return "Третья реликвия" end),
		--[+ Снаряжение +]--
	--[+ Russian +]--
	create_template("hud_inventory_name_ext_ru", {"loc_inventory_view_display_name"}, {"ru"}, function(locale, value) return "Снаряжение" end),
		--[+ Ноги +]--
	--[+ Russian +]--
	create_template("hud_cosmetics_slot_lowerbody_ext_ru", {"loc_inventory_title_slot_gear_lowerbody"}, {"ru"}, function(locale, value) return "Ноги" end),
		--[+ Позы +]--
	--[+ Russian +]--
	create_template("hud_cosmetics_anim_ext_ru", {"loc_inventory_title_slot_animation_end_of_round"}, {"ru"}, function(locale, value) return "Позы" end),
		--[+ Редкость предметов +]--
	--[+ Russian +]--
	create_template("store_armoury_exchange_weap_rarity1_ext_ru", {"loc_item_weapon_rarity_1"}, {"ru"}, function(locale, value) return "Нечестивое" end), -- Белое
	create_template("store_armoury_exchange_weap_rarity2_ext_ru", {"loc_item_weapon_rarity_2"}, {"ru"}, function(locale, value) return "Очищенное" end), -- Зелёное
	create_template("store_armoury_exchange_weap_rarity3_ext_ru", {"loc_item_weapon_rarity_3"}, {"ru"}, function(locale, value) return "Помазанное" end), -- Синее
	create_template("store_armoury_exchange_weap_rarity4_ext_ru", {"loc_item_weapon_rarity_4"}, {"ru"}, function(locale, value) return "Возвышенное" end), -- Фиолетовое
	create_template("store_armoury_exchange_weap_rarity5_ext_ru", {"loc_item_weapon_rarity_5"}, {"ru"}, function(locale, value) return "Непостижимое" end), -- Рыжее
 	-- КРАСНОЕ НЕ ПАШЕТ ИЗ-ЗА МОДА?
	create_template("store_armoury_exchange_weap_rarity6_ext_ru", {"loc_item_weapon_rarity_6"}, {"ru"}, function(locale, value) return "Благородное" end), -- Красное

	--[+ ++WEAPON CARD - КАРТОЧКА ОРУЖИЯ++ +]--
		--[+ Оружие +]--
			--[+ Perk +]--
	--[+ Russian +]--
	create_template("inventory_weapon_perk_title_ext_ru", {"loc_item_type_perk"}, {"ru"}, function(locale, value) return "Характеристики" end), -- руоф Улучшение
	create_template("inventory_weapon_action_light_ext_ru", {"loc_weapon_action_title_light"}, {"ru"}, function(locale, value) return "Лёгкая атака" end), -- руоф Простая атака
	create_template("inventory_weapon_action_heavy_ext_ru", {"loc_weapon_action_title_heavy"}, {"ru"}, function(locale, value) return "Тяжёлая атака" end), -- руоф Мощная атака
	create_template("inventory_weapon_action_primary_ext_ru", {"loc_weapon_action_title_primary"}, {"ru"}, function(locale, value) return "Основная атака" end), -- руоф Основное действие - длинно и накладывается
	create_template("inventory_weapon_action_secondary_ext_ru", {"loc_weapon_action_title_secondary"}, {"ru"}, function(locale, value) return "Вторичная атака" end), -- Вторичное действие - длинно и накладывается -- руоф Дополнительное действие
	create_template("inventory_weapon_action_special_ext_ru",{"loc_weapon_action_title_special"}, {"ru"}, function(locale, value) return "Специальная атака" end),
	create_template("inventory_weapon_action_special_att_ext_ru", {"loc_weapon_special_special_attack"}, {"ru"}, function(locale, value) return "Специальная атака" end),
		--[+ Finesse - Ловкость +]-- руоф Точность
	create_template("inventory_weapon_stats_finesse_ext_ru", {"loc_stats_display_finesse_stat"}, {"ru"}, function(locale, value) return "Ловкость" end),
		--[+  - Размер пламени +]-- руоф Область распространения
	create_template("inventory_weapon_stats_flame_size_ext_ru", {"loc_stats_display_flame_size_stat"}, {"ru"}, function(locale, value) return "Размер пламени" end),
	-- create_template("inventory_melee_vet_high_cleave_ext_ru", {"loc_weapon_keyword_high_cleave"}, {"ru"}, function(locale, value) return "Рассечение" end),
	-- create_template("inventory_melee_vet_powersword_ext_ru", {"loc_weapon_keyword_power_weapon"}, {"ru"}, function(locale, value) return "Силовое оружие" end),
	-- create_template("inventory_range_vet_lasgun_ext_ru", {"loc_weapon_keyword_spray_n_pray"}, {"ru"}, function(locale, value) return "Непрерывная стрельба" end),
	create_template("inventory_weapon_stats_control_ext_ru", {"loc_stats_display_control_stat_melee"}, {"ru"}, function(locale, value) return "Сдерживание орд" end),
	create_template("inventory_weapon_stats_display_dodge_dist_ext_ru", {"loc_weapon_stats_display_dodge_distance"}, {"ru"}, function(locale, value) return "Дальность уклонения" end),


--[+ ++LOADING MESSAGES - СООБЩЕНИЯ ПРИ ЗАГРУЗКЕ++ +]--
	--[+ Reading data from disc - Чтение данных с диска +]--
	--[+ Russian +]--
	-- create_template("reading_data_ext_ru", {"loc_wait_reason_read_from_disk"}, {"ru"}, function(locale, value) return "Получение инквизиционных данных" end),
	create_template("reading_data_ext_ru", {"loc_wait_reason_read_from_disk"}, {"ru"}, function(locale, value) return "Попытка исправить ошибки 3001, 3013, 2014..." end),

	--[+ Dedicated Server - Выделенный сервер +]--
	--[+ Russian +]--
	create_template("dedicated_server_ext_ru", {"loc_wait_reason_dedicated_server"}, {"ru"}, function(locale, value) return "Выдаём рекаф и брикеты" end),
	-- create_template("dedicated_server_ext_ru", {"loc_wait_reason_dedicated_server"}, {"ru"}, function(locale, value) return "Попытка обновить магазин чаще, чем раз в две недели..." end),

	--[+ Waiting for other player(s) - Ожидание других игроков +]--
	--[+ Russian +]--
	-- create_template("other_players_ext_ru", {"loc_wait_reason_other_player"}, {"ru"}, function(locale, value) return "Добавление других оперативников к сеансу связи..." end),
	create_template("other_players_ext_ru", {"loc_wait_reason_other_player"}, {"ru"}, function(locale, value) return "Шлёпаем уборщицу за вырванные кабели..." end),

	--[+ Communicating with Fatshark backend - Взаимодействие с бэкэндом Fatshark +]--
	--[+ Russian +]--
	create_template("dedicated_server_ext_ru", {"loc_wait_reason_backend"}, {"ru"}, function(locale, value) return "Выходим из отпуска... уже скоро... T_T" end),

	--[+ Store - Магазин +]--
	--[+ Russian +]--
	create_template("store_ext_ru", {"loc_wait_reason_store"}, {"ru"}, function(locale, value) return "Попытка обновить магазин чаще, чем раз в две недели... Неудачно!" end),

	--[+ Platform Steam - Платформа Steam +]--
	--[+ Russian +]--
	create_template("steam_ext_ru", {"loc_wait_reason_platform_steam"}, {"ru"}, function(locale, value) return "Подключение к Steam" end),

	--[+ Platform Xbox - Платформа Xbox +]--
	--[+ Russian +]--
	create_template("xbox_ext_ru", {"loc_wait_reason_platform_xbox_live"}, {"ru"}, function(locale, value) return "Подключение к Коробокс" end),

	--[+ Platform PSN - Платформа PSN +]--
	--[+ Russian +]--
	create_template("psn_ext_ru", {"loc_wait_reason_platform_psn"}, {"ru"}, function(locale, value) return "Подключение к ПэЭсЭн" end),

}

--[+ Return the localization templates +]--
return localization_templates
