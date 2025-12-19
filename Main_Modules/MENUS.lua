---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")

-- Загружаем утилиты
local Utils
local success, result = pcall(function()
	return mod:io_dofile("Enhanced_descriptions/Enhanced_descriptions_utils")
end)

if success and result then
	Utils = result
	mod:info("Utils loaded successfully")
else
	mod:error("Failed to load utils: %s", tostring(result))
	Utils = {
		CKWord = function(fallback, key) return fallback end,
		CNumb = function(fallback, key) return fallback end,
		CPhrs = function(key) return "" end,
		CNote = function(key) return "" end,
		create_template = function(id, loc_keys, locales, handle_func)
			return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
		end,
		loc_text = function(text)
			if type(text) == "table" then
				return function(locale) return text[locale] or text["en"] or "" end
			end
			return function() return text end 
		end,
		DOT_RED = "•",
		DOT_NC = "•",
		DOT_GREEN = "•",
	}
end

-- ИМПОРТ ВСЕХ НУЖНЫХ ФУНКЦИЙ И КОНСТАНТ
local create_template = Utils.create_template
local loc_text = Utils.loc_text
local CKWord = Utils.CKWord
local CNumb = Utils.CNumb
local CPhrs = Utils.CPhrs
local CNote = Utils.CNote
local Dot_nc = Utils.DOT_NC or "•"
local Dot_red = Utils.DOT_RED or "•"
local Dot_green = Utils.DOT_GREEN or "•"

-- Основные данные локализации
local menus_templates = {
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

	--[+ Plasteel +]--
	-- ["loc_currency_name_plasteel"] = {
		-- en = "Plasteel",
		-- ru = "Пласталь",
	-- },
	--[+  +]--
	-- ["loc_pickup_large_metal"] = {
		-- en = "",
		-- ru = "Балшой пиластал",
	-- },
	--[+  +]--
	-- ["loc_pickup_small_metal"] = {
		-- en = "",
		-- ru = "Малой пиластал",
	-- },
	--[+ Diamantine +]--
	-- ["loc_currency_name_diamantine"] = {
		-- en = "Diamantine",
		-- ru = "Диамантин",
	-- },
	--[+  +]--
	-- ["loc_pickup_large_platinum"] = {
		-- en = "",
		-- ru = "Балшой дьямантин",
	-- },
	--[+  +]--
	-- ["loc_pickup_small_platinum"] = {
		-- en = "",
		-- ru = "Малой дьямантин",
	-- },

--[+ ++MELK - 梅爾克 - 梅尔克大人的采购店++ +]--
--[+ +Contracts - 合約 - 合同+ +]-- Highlighted numbers
	--[+ Pick up Х kind +]--
	["loc_contracts_task_label_collect_pickups"] = {
		en = "Pick up "..CNumb("{count:%s}", "counts_var_rgb").." {kind:%s}",
		ru = "{kind:%s}: собрать "..CNumb("{count:%s}", "counts_var_rgb").." штук",
		["zh-tw"] = "撿起 "..CNumb("{count:%s}", "counts_var_rgb").." {kind:%s}", -- 撿起[x]本[聖典/法術書]
		["zh-cn"] = "拾取 "..CNumb("{count:%s}", "counts_var_rgb").." 本{kind:%s}", -- 拾取 X 本 kind
	},
	--[+ Kill Х Monstrosities +]--
	["loc_contracts_task_label_kill_bosses"] = {
		en = "Kill "..CNumb("{count:%d}", "countd_var_rgb").." Monstrosities",
		ru = "Убить "..CNumb("{count:%d}", "countd_var_rgb").." монстров", -- Убить 4 монстров
		["zh-tw"] = "擊殺 "..CNumb("{count:%d}", "countd_var_rgb").." 巨獸(畸形怪獸)", -- 擊殺巨獸
		["zh-cn"] = "击杀 "..CNumb("{count:%d}", "countd_var_rgb").." 个怪物", -- 击杀 X 怪物
	},
	--[+ Collect Х kind +]--
	["loc_contracts_task_label_collect_resources"] = {
		en = "Collect "..CNumb("{count:%s}", "counts_var_rgb").." {kind:%s}",
		ru = "{kind:%s}: собрать "..CNumb("{count:%s}", "counts_var_rgb").." единиц", -- Пласталь/Диамантин: собрать 200/750 единиц
		["zh-tw"] = "收集 "..CNumb("{count:%s}", "counts_var_rgb").." {kind:%s}", -- 蒐集[x]數量
		["zh-cn"] = "收集 "..CNumb("{count:%d}", "countd_var_rgb").." {kind:%s}", -- 收集 X 资源
	},
	--[+ Kill Х enemy_type with weapon_type +]--
	["loc_contracts_task_label_kill_minions"] = {
		en = "Kill "..CNumb("{count:%d}", "countd_var_rgb").." {enemy_type:%s} with {weapon_type:%s}",
		ru = "{weapon_type:%s}: убейте "..CNumb("{count:%d}", "countd_var_rgb").." врагов типа {enemy_type:%s}",
		["zh-tw"] = "使用 {weapon_type:%s} 擊殺 "..CNumb("{count:%d}", "countd_var_rgb").." {enemy_type:%s}", -- 使用[遠/近]擊殺[x][血痂/渣仔]
		["zh-cn"] = "用{weapon_type:%s}杀死 "..CNumb("{count:%d}", "countd_var_rgb").." 个{enemy_type:%s}", -- 用 weapon_type 杀死 X enemy_type
	},
	--[+ Complete Х missions +]--
	["loc_contracts_task_label_complete_missions"] = {
		en = "Complete "..CNumb("{count:%d}", "countd_var_rgb").." missions",
		ru = "Завершите "..CNumb("{count:%d}", "countd_var_rgb").." миссий",
		["zh-tw"] = "完成 "..CNumb("{count:%d}", "countd_var_rgb").." 任務", -- 完成[x]場任務
		["zh-cn"] = "完成 "..CNumb("{count:%d}", "countd_var_rgb").." 个任务", -- 完成 X 任务
	},
	--[+ Complete Х missions with no player deaths +]--
	["loc_contracts_task_label_complete_mission_no_death"] = {
		en = "Complete "..CNumb("{count:%d}", "countd_var_rgb").." missions with no player deaths",
		ru = "Завершите миссии без гибели союзников: "..CNumb("{count:%d}", "countd_var_rgb"),
		["zh-tw"] = "完成 "..CNumb("{count:%d}", "countd_var_rgb").." 任務，且無玩家死亡", -- 完成[x]場任務，並且無人死亡
		["zh-cn"] = "完成 "..CNumb("{count:%d}", "countd_var_rgb").." 任务且没有玩家死亡", -- 完成 X 任务且没有玩家死亡
	},
	--[+ Melk's Intro +]--
	["loc_contract_view_intro_description"] = {
		-- en = "Well? What is it you want?",
		ru = "Ну? Чего ты хочешь?",
		["zh-tw"] = "好吧，你想要什麼?", -- 好吧，你想要什麼?
		["zh-cn"] = "嗯？你有什么需要？", -- 梅尔克介绍语
	},
	--[+ Melk's Intro Title +]--
	["loc_contract_view_intro_title"] = {
		-- en = "Sire Melk's Requisitorium",
		ru = "Мелк",
		["zh-tw"] = "梅爾克領主", -- 梅爾克領主的必備品店
		-- ["zh-cn"] = "梅尔克大人的采购店", -- 梅尔克大人的采购店
	},
	--[+ Melk's Option For Check Contracts +]--
	["loc_contract_view_option_contracts"] = {
		-- en = "View Contracts",
		-- ru = "Смотреть контракты", -- Показать контракты?
		["zh-tw"] = "查看合約",
		["zh-cn"] = "查看合同",
	},
	--[+ Contracts' Reward +]--
	["loc_contracts_contract_reward_label"] = {
		-- en = "Contract completion reward:",
		ru = "Награда за выполнение:",
		["zh-tw"] = "獎勵", -- 獎勵
		-- ["zh-cn"] = "奖励", -- 奖励
	},
	--[+ Task difficulty +]--
	["loc_contracts_contract_complexity_easy"] = {
		-- en = "Low",
		ru = "Низкая",
		["zh-tw"] = "簡單",
		["zh-cn"] = "低", -- 低
	},
	["loc_contracts_contract_complexity_medium"] = {
		-- en = "Medium",
		ru = "Средняя",
		["zh-tw"] = "普通",
		["zh-cn"] = "中", -- 中
	},
	["loc_contracts_contract_complexity_hard"] = {
		-- en = "High",
		ru = "Высокая",
		["zh-tw"] = "困難",
		["zh-cn"] = "高", -- 高
	},
	--[+ Mystery Acquisitions +]--
	["loc_contracts_view_general_goods_random_melee_weapon"] = {
		-- en = "Unknown Melee Weapon",
		ru = "Неизвестное оружие ближнего боя",
		["zh-tw"] = "未知的近戰武器", -- 未知的近戰武器
	},
	["loc_contracts_view_general_goods_random_ranged_weapon"] = {
		-- en = "Unknown Ranged Weapon",
		ru = "Неизвестное оружие дальнего боя",
		["zh-tw"] = "未知的遠程武器", -- 未知的遠程武器
	},
	["loc_contracts_view_general_goods_random_gadget_defensive"] = {
		-- en = "Unknown Defensive Curio",
		ru = "Неизвестная защитная реликвия",
		["zh-tw"] = "未知的珍品", -- 未知的防禦性珍品
		["zh-cn"] = "未知的珍品", -- 未知的珍品
	},
	--[+ New Contracts Notification Message +]--
	["loc_notification_new_contract"] = {
		-- en = "New weekly contracts are available", --???
		-- ru = ,
		-- ["zh-tw"] = ,
		["zh-cn"] = "新的每周合同可用", -- 新的每周合同可用
	},

--[+ +HADRON - 欧姆尼塞亚神龛+ +]--
	--[+ Max Rarity reached! +]
	["loc_crafting_error_no_consecrate"] = {
		en = "Max Rarity reached!",
		-- ru = "Достигнут максимум редкости!",
		["zh-tw"] = "以聖化至最高稀有度!", -- 已達最高稀有度。
		-- ["zh-cn"] = "已达到最高稀有度。",
	},
	--[+ Max Power reached! +]--
	["loc_crafting_error_max_power"] = {
		en = "Max Power reached!",
		-- ru = "Достигнут максимум силы!",
		["zh-tw"] = "以強化至最高等級!",  -- 已達最高升級級別。
		["zh-cn"] = "已达到最高等级。",
	},
	--[+ Sacrifice Weapons +]--
	["loc_mastery_crafting_sacrifice_weapon_title"] = {
		-- en = "Sacrifice Weapons",
		ru = "Пожертвовать оружие", -- руоф Жертвенное оружие
		-- ["zh-tw"] = ,
		["zh-tw"] = "獻祭武器", -- 獻祭武器
		["zh-cn"] = "犧牲武器",
	},

--[+ ARSENAL - 军械交易所 +]--
	--[+ Which of my humble services... +]--
	["loc_credits_vendor_view_intro_description"] = {
		-- en = "Which of my humble services do you require?",
		ru = "Какая из моих скромных услуг вам требуется?",
		["zh-tw"] = "您需要我為您提供甚麼服務?", -- 您需要我為您提供甚麼服務?
	},
	--[+ Requisition Weapons & Curios +]--
	["loc_credits_vendor_view_option_buy"] = {
		en = "Requisition Weapons and Curios", -- Requisition Weapons & Curios
		ru = "Запросы на оружие и реликвии",
		["zh-tw"] = "購買武器和珍品", 			-- 武器&珍品申請單
		["zh-cn"] = "武器与珍品采购店", -- 武器与珍品采购店
	},
	--[+ Brunt's Armoury +]--
	-- ["loc_credits_goods_vendor_title_text"] = {
		-- en = "Brunt's Armoury",
		-- ru = "Арсенал Бранта",
		-- ["zh-tw"] = ,
	-- },
	--[+ Acquire a profane weapon... +]--
	["loc_credits_goods_vendor_description_text"] = {
		-- en = "Acquire a profane weapon of your choosing.",
		ru = "Купите нечестивое оружие по вашему выбору.",
		["zh-tw"] = "獲得一件你選擇的武器，只會是褻瀆級(白武)。", -- 獲得一件你選定的褻瀆武器。
		["zh-cn"] = "获得一件你选择的武器（亵渎级）。",
	},

--[+ ++MAIN MENU++ +]--
	--[+ Account Wallet +]--
	["loc_main_menu_account_wallet_title"] = {
		-- en = "Account Wallet",
		ru = "Кошелёк аккаунта",
		["zh-tw"] = "帳號錢包", -- 錢包
	},
	--[+ Strike Team +]--
	["loc_main_menu_warband_count"] = {
		-- en = "Strike Team",
		ru = "Ударная группа",
		["zh-tw"] = "突擊小隊", -- 打擊小隊
	},
	["loc_social_menu_roster_view_display_name"] = {
		-- en = "Strike Team",
		ru = "Ударная группа",
		["zh-tw"] = "突擊小隊", -- 打擊小隊
	},
	--[+ Previous Missions +]--
	["loc_social_menu_roster_players_from_previous_missions"] = {
		-- en = "Previous Missions",
		-- ru = , -- руоф Предыдущие задания
		["zh-tw"] = "歷史任務", -- 歷史任務
	},
--[+ +MISSIONS MENU++]
	--[+  +]--
	-- [""] = {
		-- en = ,
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
--[+ +HAVOC - 浩劫+ +]--
	--[+ Havoc Title +]--
	["loc_havoc_name"] = {
		-- en = "Havoc",
		ru = "Хавок", -- руоф Верная смерть
		["zh-tw"] = "浩劫", -- 浩劫UI左上
	},
	--[+ Havoc Rewards +]--
	["loc_havoc_reset_rewards"] = {
		-- en = "Havoc Rewards",
		ru = "Награды Хавока", -- Награды Верной смерти
		["zh-tw"] = "浩劫獎勵", -- 浩劫獎勵
	},
	--[+ Havoc Require +]--
	["loc_havoc_reward_objective_order"] = {
		-- en = "Complete a Havoc Assignment",
		ru = "Выполнить задание Хавока",
		["zh-tw"] = "完成任一場劫任務", -- 完成任一浩劫任務
	},

--[+ ++KILLFEED++ +]--
	["loc_hud_combat_feed_kill_message"] = {
		-- en = "{killer:%s} killed {victim:%s}",
		ru = "{killer:%s} убивает {victim:%s}",
		["zh-tw"] = "{killer:%s} 擊殺 {victim:%s}",
	},

--[+ +TREAT - СЛОЖНОСТЬ - 威胁度等级+ +]--
	--[+ SEDITION +]--
	-- ["loc_mission_board_danger_lowest"] = {
		-- en = COLORS_KWords.sedition_rgb, -- Green -- ui_green_light
		-- ru = COLORS_KWords_ru.sedition_rgb_ru, -- Мятеж
		-- ["zh-tw"] = COLORS_KWords_tw.sedition_rgb_tw, -- 暴動
		-- ["zh-cn"] = COLORS_KWords_zh_cn.sedition_rgb_zh_cn, -- 煽动
	-- },
	-- [+ UPRISING +]--
	["loc_mission_board_danger_low"] = {
		en = CKWord("Uprising", "uprising_rgb"), -- Light blue -- ui_difficulty_1
		ru = CKWord("Восстание", "uprising_rgb_ru"), -- Восстание
		-- ["zh-tw"] = CKWord("起義", "uprising_rgb_tw"), -- 起義
		-- ["zh-cn"] = CKWord("起义", "uprising_rgb_zh_cn"), -- 起义
	},
	-- [+ MALICE +]--
	["loc_mission_board_danger_medium"] = {
		en = CKWord("Malice", "malice_rgb"), -- Light green -- ui_difficulty_2
		ru = CKWord("Злоба", "malice_rgb_ru"), -- Злоба
		-- ["zh-tw"] = CKWord("惡毒", "malice_rgb_tw"), -- 惡毒
		-- ["zh-cn"] = CKWord("憎恶", "malice_rgb_zh_cn"), -- 憎恶
	},
	-- [+ HERESY +]--
	["loc_mission_board_danger_high"] = {
		en = CKWord("Heresy", "heresy_rgb"), -- Yellow -- ui_difficulty_3
		ru = CKWord("Ересь", "heresy_rgb_ru"), -- Ересь
		-- ["zh-tw"] = CKWord("異端", "heresy_rgb_tw"), -- 異端
		-- ["zh-cn"] = CKWord("异端", "heresy_rgb_zh_cn"), -- 异端
	},
	-- [+ DAMNATION +]--
	["loc_mission_board_danger_highest"] = {
		en = CKWord("Damnation", "damnation_rgb"), -- Orange -- ui_difficulty_4
		ru = CKWord("Проклятие", "damnation_rgb_ru"), -- Проклятие
		-- ["zh-tw"] = CKWord("詛咒", "damnation_rgb_tw"), -- 詛咒
		-- ["zh-cn"] = CKWord("诅咒", "damnation_rgb_zh_cn"), -- 诅咒
	},
	-- [+ AURIC +]--
	["loc_group_finder_difficulty_auric"] = {
		en = CKWord("Auric", "auric_rgb"), -- Red -- ui_difficulty_5
		ru = CKWord("Золото", "auric_rgb_ru"), -- Золото
		-- ["zh-tw"] = CKWord("詛咒", "auric_rgb_tw"), -- 詛咒
		-- ["zh-cn"] = CKWord("诅咒", "auric_rgb_zh_cn"), -- 诅咒
	},

--[+ ++INVENTORY++ +]--
	-- [+ Curios - 珍品 +]--
	["loc_inventory_loadout_group_attachments"] = {
		-- en = Curios,
		ru = "Реликвии", -- руоф Диковинки
		["zh-tw"] = "珍品", -- 角色畫面
		["zh-cn"] = "珍品", -- 珍品
	},
	["loc_inventory_title_slot_attachment_1"] = {
		-- en = "First Curio",
		ru = "Первая реликвия",
		["zh-tw"] = "第一件珍品", -- 珍品 槽位 1
		["zh-cn"] = "第一件珍品", -- 珍品 槽位 1
	},
	["loc_inventory_title_slot_attachment_2"] = {
		-- en = "Second Curio",
		ru = "Вторая реликвия",
		["zh-tw"] = "第二件珍品", -- 珍品 槽位 2
		["zh-cn"] = "第二件珍品", -- 珍品 槽位 2
	},
	["loc_inventory_title_slot_attachment_3"] = {
		-- en = "Third Curio",
		ru = "Третья реликвия",
		["zh-tw"] = "第三件珍品", -- 珍品 槽位 3
		["zh-cn"] = "第三件珍品", -- 珍品 槽位 3
	},
	["loc_inventory_view_display_name"] = {
		-- en = "Loadout",
		ru = "Снаряжение",
		["zh-tw"] = "裝備", -- 裝備配置
		["zh-cn"] = "装备", -- 装备
	},
	--[+ Cosmetic slots +]--
	["loc_inventory_title_slot_gear_lowerbody"] = {
		-- en = "Lower body",
		ru = "Ноги",
		["zh-tw"] = "下半身", -- 下身 
	},
	["loc_inventory_title_slot_animation_end_of_round"] = {
		-- en = "Stances",
		-- ru = "Позы",
		["zh-tw"] = "姿勢", -- 姿勢
		["zh-cn"] = "结算动作", -- 结算动作
	},

	--[+ Rarity - Редкость предметов +]--
	["loc_item_weapon_rarity_1"] = {
		-- en = "Profane",
		ru = "Нечестивое", -- Белое
		["zh-tw"] = "褻瀆", -- 白色
		["zh-cn"] = "亵渎", -- 白
	},
	["loc_item_weapon_rarity_2"] = {
		-- en = "Redeemed",
		ru = "Очищенное", -- Зелёное
		["zh-tw"] = "救贖", -- 綠色
		["zh-cn"] = "救赎", -- 绿
	},
	["loc_item_weapon_rarity_3"] = {
		-- en = "Anoited",
		ru = "Помазанное", -- Синее
		["zh-tw"] = "受膏", -- 藍色
		["zh-cn"] = "圣膏", -- 蓝
	},
	["loc_item_weapon_rarity_4"] = {
		-- en = "Exalted",
		ru = "Возвышенное", -- Фиолетовое
		["zh-tw"] = "崇高", -- 紫色
		["zh-cn"] = "超然", -- 紫
	},
	["loc_item_weapon_rarity_5"] = {
		-- en = "Transcendent",
		ru = "Непостижимое", -- Рыжее
		["zh-tw"] = "卓越", -- 橙色
		["zh-cn"] = "超然", -- 金
	},
	["loc_item_weapon_rarity_6"] = {
		-- en = ,
		ru = "Благородное", -- Красное
		["zh-tw"] = "神化", -- 紅色
		["zh-cn"] = "神圣", -- 红
	},

--[+ ++WEAPON CARD - КАРТОЧКА ОРУЖИЯ++ +]--
--[+ +Weapon - Оружие+ +]--
	["loc_inventory_menu_favorite_item"] = {
		en = "Favourite",
		ru = "Избранное", -- руоф Добавить в избранное
		["zh-tw"] = "最愛",
		["zh-cn"] = "已收藏", -- 收藏物品
	},
	["loc_item_type_perk"] = {
		-- en = "Perk",
		ru = "Характеристики", -- руоф Улучшение
		["zh-tw"] = "附加屬性", -- 附加屬性
	},
	["loc_weapon_action_title_light"] = {
		-- en = "Light Attack",
		ru = "Лёгкая атака", -- руоф Простая атака
		["zh-tw"] = "輕攻擊", -- 輕攻擊
	},
	["loc_weapon_action_title_heavy"] = {
		-- en = "Heavy Attack",
		ru = "Тяжёлая атака", -- руоф Мощная атака
		["zh-tw"] = "重攻擊", -- 重攻擊
	},
	["loc_weapon_action_title_primary"] = {
		-- en = "Primary Action",
		ru = "Основная атака", -- руоф Основное действие -- длинно и накладывается
		["zh-tw"] = "主要攻擊", -- 主要攻擊(杖)
	},
	["loc_weapon_action_title_secondary"] = {
		-- en = "Secondary Action",
		ru = "Вторичная атака", -- руоф Дополнительное действие -- длинно и накладывается
		["zh-tw"] = "次要攻擊", -- 次要攻擊(杖)
	},
	-- ["loc_weapon_action_title_special"] = {
		-- en = "Special Attack", --???
		-- ru = "Специальная атака",
		-- ["zh-tw"] = "特殊攻擊", -- 特殊攻擊(遠程)
	-- },
	["loc_weapon_special_special_attack"] = {
		-- en = Special Melee Attack,
		ru = "Специальная атака",
		["zh-tw"] = "特殊攻擊", -- 特殊功能(近戰)
	},

	["loc_stats_display_mobility_stat"] = { -- Mobility is marked red because it's usually the worst stat. It's also convenient for me to buy weapons that way.
		en = "{#color(255, 35, 5)}Mobility{#reset()}",
		ru = "{#color(255, 35, 5)}Мобильность{#reset()}", -- руоф 
		-- ["zh-tw"] = "", -- 
		-- ["zh-cn"] = "", -- 
	},

	["loc_stats_display_finesse_stat"] = {
		-- en = "Finesse",
		ru = "Ловкость", -- руоф Точность
		["zh-tw"] = "技巧", -- 技巧
		["zh-cn"] = "灵巧", -- 灵巧
	},
	["loc_stats_display_flame_size_stat"] = {
		-- en = "Cloud Radius",
		ru = "Размер пламени", -- руоф Область распространения
		["zh-tw"] = "火焰範圍", -- 火焰範圍
	},
	["loc_stats_display_control_stat_melee"] = {
		-- en = "Crowd Control",
		ru = "Сдерживание орд",
		["zh-tw"] = "群體控制", -- 群體控制
	},
	["loc_weapon_stats_display_dodge_distance"] = {
		-- en = ,
		ru = "Дальность уклонения",
		["zh-tw"] = "閃避距離", -- 閃避距離
	},
	-- ["loc_weapon_keyword_high_cleave"] = {
		-- en = "Cleaving Strike",
		-- ru = "Рассечение",
		-- ["zh-tw"] = ,
	-- },
	-- ["loc_weapon_keyword_power_weapon"] = {
		-- en = "Power Weapon",
		-- ru = "Силовое оружие",
		-- ["zh-tw"] = ,
	-- },
	-- ["loc_weapon_keyword_spray_n_pray"] = {
		-- en = "Torrent",
		-- ru = "Непрерывная стрельба",
		-- ["zh-tw"] = ,
	-- },

-- JUST FOR FUN --
--[+ ++LOADING MESSAGES - СООБЩЕНИЯ ПРИ ЗАГРУЗКЕ++ +]--
	--[+ Reading data from disc +]--
	["loc_wait_reason_read_from_disk"] = {
		-- en = ,
		ru = "Попытка исправить ошибки 3001, 3013, 2014... Неудачно!", -- Чтение данных с диска -- Получение инквизиционных данных
		["zh-tw"] = "正在從硬碟讀取資料", -- 嘗試修正錯誤 3001, 3013, 2014...
	},
	--[+ Dedicated Server +]--
	["loc_wait_reason_dedicated_server"] = {
		-- en = ,
		ru = "Выдаём рекаф и брикеты", -- Выделенный сервер
		["zh-tw"] = "正在載入著色器或模組包",
	},
	--[+ Waiting for other player(s) +]--
	["loc_wait_reason_other_player"] = {
		-- en = ,
		ru = "Шлёпаем уборщицу за вырванные кабели...", -- Ожидание других игроков -- Добавление других оперативников к сеансу связи...
		["zh-tw"] = "正在等待其他玩家加入...",
	},
	--[+ Communicating with Fatshark backend +]--
	["loc_wait_reason_backend"] = {
		-- en = ,
		ru = "Пытаемся сшить связь, потому что она порвалась...", -- Взаимодействие с бэкэндом Fatshark
		["zh-tw"] = "正在與Fatshark伺服器進行連線... T_T",
	},
	--[+ Store +]--
	["loc_wait_reason_store"] = {
		-- en = ,
		ru = "Попытка установить обновление магазина чаще, чем раз в две недели... Критический провал!", -- Магазин
		["zh-tw"] = "正在更新商店...",
	},
	--[+ Platform Steam - Платформа Steam +]--
	["loc_wait_reason_platform_steam"] = {
		-- en = ,
		-- ru = "Подключение к Steam",
		["zh-tw"] = "正在連接Steam...",
	},
	--[+ Platform Xbox +]--
	["loc_wait_reason_platform_xbox_live"] = {
		-- en = ,
		-- ru = "Подключение к Коробокс", -- Платформа Xbox
		["zh-tw"] = "正在連接Xbox...",
	},
	--[+ Platform PSN +]--
	["loc_wait_reason_platform_psn"] = {
		-- en = ,
		-- ru = "Подключение к ПэЭсЭн", -- Платформа PSN
		["zh-tw"] = "正在連接PSN...",
	},
}

-- Автоматическое создание шаблонов
local localization_templates = {}
for loc_key, locales in pairs(menus_templates) do
	for locale, text in pairs(locales) do
		table.insert(localization_templates, create_template(
			loc_key,
			{loc_key},
			{locale},
			loc_text(text)
		))
	end
end

mod:info("MENUS.lua loaded successfully")

return localization_templates
