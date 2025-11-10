---@diagnostic disable: undefined-global
-- Version 4.0

local mod = get_mod("Enhanced_descriptions")

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
	--[+  +]--
	-- ["loc_pickup_large_metal"] = {
		-- en = "",
		-- ru = "Балшой пиластал",
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
	--[+  +]--
	-- ["loc_pickup_small_metal"] = {
		-- en = "",
		-- ru = "Малой пиластал",
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
	--[+ Diamantine +]--
	-- ["loc_currency_name_diamantine"] = {
		-- en = "Diamantine",
		-- ru = "Диамантин",
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
	--[+  +]--
	-- ["loc_pickup_large_platinum"] = {
		-- en = "",
		-- ru = "Балшой дьямантин",
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
	--[+  +]--
	-- ["loc_pickup_small_platinum"] = {
		-- en = "",
		-- ru = "Малой дьямантин",
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

--[+ ++MELK - 梅爾克 - 梅尔克大人的采购店++ +]--
--[+ +Contracts - 合約 - 合同+ +]-- Highlighted numbers
	--[+ Kill Х Monstrosities +]--
	["loc_contracts_task_label_kill_bosses"] = {
		en = "Kill "..COLORS_Numbers.countd_var_rgb.." Monstrosities",
		ru = "Убить "..COLORS_Numbers.countd_var_rgb.." монстров", -- Убить 4 монстров
		-- fr = "",
		["zh-tw"] = "擊殺 "..COLORS_Numbers.countd_var_rgb.." 巨獸(畸形怪獸)", -- 擊殺巨獸
		["zh-cn"] = "击杀 "..COLORS_Numbers.countd_var_rgb.." 个怪物", -- 击杀 X 怪物
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Collect Х kind +]--
	["loc_contracts_task_label_collect_resources"] = {
		en = "Collect "..COLORS_Numbers.counts_var_rgb.." {kind:%s}",
		ru = "{kind:%s}: собрать "..COLORS_Numbers.counts_var_rgb.." единиц", -- Пласталь/Диамантин: собрать 200/750 единиц
		-- fr = "",
		["zh-tw"] = "收集 "..COLORS_Numbers.counts_var_rgb.." {kind:%s}", -- 蒐集[x]數量
		["zh-cn"] = "收集 "..COLORS_Numbers.countd_var_rgb.." {kind:%s}", -- 收集 X 资源
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Kill Х enemy_type with weapon_type +]--
	["loc_contracts_task_label_kill_minions"] = {
		en = "Kill "..COLORS_Numbers.countd_var_rgb.." {enemy_type:%s} with {weapon_type:%s}",
		ru = "{weapon_type:%s}: убейте "..COLORS_Numbers.countd_var_rgb.." врагов типа {enemy_type:%s}",
		-- fr = "",
		["zh-tw"] = "使用 {weapon_type:%s} 擊殺 "..COLORS_Numbers.countd_var_rgb.." {enemy_type:%s}", -- 使用[遠/近]擊殺[x][血痂/渣仔]
		["zh-cn"] = "用{weapon_type:%s}杀死 "..COLORS_Numbers.countd_var_rgb.." 个{enemy_type:%s}", -- 用 weapon_type 杀死 X enemy_type
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Complete Х missions +]--
	["loc_contracts_task_label_complete_missions"] = {
		en = "Complete "..COLORS_Numbers.countd_var_rgb.." missions",
		ru = "Завершите "..COLORS_Numbers.countd_var_rgb.." миссий",
		-- fr = "",
		["zh-tw"] = "完成 "..COLORS_Numbers.countd_var_rgb.." 任務", -- 完成[x]場任務
		["zh-cn"] = "完成 "..COLORS_Numbers.countd_var_rgb.." 个任务", -- 完成 X 任务
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Complete Х missions with no player deaths +]--
	["loc_contracts_task_label_complete_mission_no_death"] = {
		en = "Complete "..COLORS_Numbers.countd_var_rgb.." missions with no player deaths",
		ru = "Завершите миссии без гибели союзников: "..COLORS_Numbers.countd_var_rgb,
		-- fr = "",
		["zh-tw"] = "完成 "..COLORS_Numbers.countd_var_rgb.." 任務，且無玩家死亡", -- 完成[x]場任務，並且無人死亡
		["zh-cn"] = "完成 "..COLORS_Numbers.countd_var_rgb.." 任务且没有玩家死亡", -- 完成 X 任务且没有玩家死亡
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Pick up Х kind +]--
	["loc_contracts_task_label_collect_pickups"] = {
		en = "Pick up "..COLORS_Numbers.counts_var_rgb.." {kind:%s}",
		ru = "{kind:%s}: собрать "..COLORS_Numbers.counts_var_rgb.." штук",
		-- fr = "",
		["zh-tw"] = "撿起 "..COLORS_Numbers.counts_var_rgb.." {kind:%s}", -- 撿起[x]本[聖典/法術書]
		["zh-cn"] = "拾取 "..COLORS_Numbers.counts_var_rgb.." 本{kind:%s}", -- 拾取 X 本 kind
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Melk's Intro +]--
	["loc_contract_view_intro_description"] = {
		-- en = "Well? What is it you want?",
		ru = "Ну? Чего ты хочешь?",
		-- fr = "",
		["zh-tw"] = "好吧，你想要什麼?", -- 好吧，你想要什麼?
		["zh-cn"] = "嗯？你有什么需要？", -- 梅尔克介绍语
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Melk's Intro Title +]--
	["loc_contract_view_intro_title"] = {
		-- en = "Sire Melk's Requisitorium",
		ru = "Мелк",
		-- fr = "",
		["zh-tw"] = "梅爾克", -- 梅爾克
		-- ["zh-cn"] = "梅尔克大人的采购店", -- 梅尔克大人的采购店
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Melk's Option For Check Contracts +]--
	["loc_contract_view_option_contracts"] = {
		-- en = "View Contracts",
		-- ru = "Смотреть контракты", -- Показать контракты?
		-- fr = "",
		-- ["zh-tw"] = ,
		["zh-cn"] = "查看合同",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Contracts' Reward +]--
	["loc_contracts_contract_reward_label"] = {
		-- en = "Contract completion reward:",
		ru = "Награда за выполнение:",
		-- fr = "",
		["zh-tw"] = "獎勵", -- 獎勵
		-- ["zh-cn"] = "奖励", -- 奖励
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Task difficulty +]--
	["loc_contracts_contract_complexity_easy"] = {
		-- en = "Low",
		ru = "Низкая",
		-- fr = "",
		["zh-tw"] = "簡單",
		["zh-cn"] = "低", -- 低
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_contracts_contract_complexity_medium"] = {
		-- en = "Medium",
		ru = "Средняя",
		-- fr = "",
		["zh-tw"] = "普通",
		["zh-cn"] = "中", -- 中
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_contracts_contract_complexity_hard"] = {
		-- en = "High",
		ru = "Высокая",
		-- fr = "",
		["zh-tw"] = "困難",
		["zh-cn"] = "高", -- 高
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Mystery Acquisitions +]--
	["loc_contracts_view_general_goods_random_melee_weapon"] = {
		-- en = "Unknown Melee Weapon",
		ru = "Неизвестное оружие ближнего боя",
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
	},
	["loc_contracts_view_general_goods_random_ranged_weapon"] = {
		-- en = "Unknown Ranged Weapon",
		ru = "Неизвестное оружие дальнего боя",
		-- fr = "",
		["zh-tw"] = "未知的遠程武器", -- 未知的遠程武器
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_contracts_view_general_goods_random_gadget_defensive"] = {
		-- en = "Unknown Defensive Curio",
		ru = "Неизвестная защитная реликвия",
		-- fr = "",
		["zh-tw"] = "未知的防禦性聖物", -- 未知的防禦性聖物
		["zh-cn"] = "未知的珍品", -- 未知的珍品
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ New Contracts Notification Message +]--
	["loc_notification_new_contract"] = {
		-- en = "New weekly contracts are available", --???
		-- ru = ,
		-- fr = "",
		-- ["zh-tw"] = ,
		["zh-cn"] = "新的每周合同可用", -- 新的每周合同可用
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

--[+ +HADRON - 欧姆尼塞亚神龛+ +]--
	--[+ Max Rarity reached! +]
	["loc_crafting_error_no_consecrate"] = {
		en = "Max Rarity reached!",
		-- ru = "Достигнут максимум редкости!",
		-- fr = "",
		["zh-tw"] = "以聖化至最高稀有度!",
		-- ["zh-cn"] = "已达到最高稀有度。",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Max Power reached! +]--
	["loc_crafting_error_max_power"] = {
		en = "Max Power reached!",
		-- ru = "Достигнут максимум силы!",
		-- fr = "",
		["zh-tw"] = "以強化至最高等級!",
		["zh-cn"] = "已达到最高等级。",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Sacrifice Weapons +]--
	["loc_mastery_crafting_sacrifice_weapon_title"] = {
		-- en = "Sacrifice Weapons",
		ru = "Пожертвовать оружие", -- руоф Жертвенное оружие
		-- fr = "",
		-- ["zh-tw"] = ,
		["zh-cn"] = "犧牲武器",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

--[+ ARSENAL - 军械交易所 +]--
	--[+ Which of my humble services... +]--
	["loc_credits_vendor_view_intro_description"] = {
		-- en = "Which of my humble services do you require?",
		ru = "Какая из моих скромных услуг вам требуется?",
		-- fr = "",
		["zh-tw"] = "你想要我為你提供甚麼服務",
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Requisition Weapons & Curios +]--
	["loc_credits_vendor_view_option_buy"] = {
		en = "Requisition Weapons and Curios", -- Requisition Weapons & Curios
		ru = "Запросы на оружие и реликвии",
		-- fr = "",
		["zh-tw"] = "購買武器和珍品",
		["zh-cn"] = "武器与珍品采购店", -- 武器与珍品采购店
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Brunt's Armoury +]--
	-- ["loc_credits_goods_vendor_title_text"] = {
		-- en = "Brunt's Armoury",
		-- ru = "Арсенал Бранта",
		-- fr = "",
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	--[+ Acquire a profane weapon... +]--
	["loc_credits_goods_vendor_description_text"] = {
		-- en = "Acquire a profane weapon of your choosing.",
		ru = "Купите нечестивое оружие по вашему выбору.",
		-- fr = "",
		["zh-tw"] = "獲得一件你選擇的武器，只會是褻瀆級(白武)。",
		["zh-cn"] = "获得一件你选择的武器（亵渎级）。",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

--[+ ++MAIN MENU++ +]--
	--[+ Account Wallet +]--
	["loc_main_menu_account_wallet_title"] = {
		-- en = "Account Wallet",
		ru = "Кошелёк аккаунта",
		-- fr = "",
		["zh-tw"] = "帳號錢包", -- 錢包
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Strike Team +]--
	["loc_main_menu_warband_count"] = {
		-- en = "Strike Team",
		ru = "Ударная группа",
		-- fr = "",
		["zh-tw"] = "突擊小隊", -- 突擊小隊
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_social_menu_roster_view_display_name"] = {
		-- en = "Strike Team",
		ru = "Ударная группа",
		-- fr = "",
		["zh-tw"] = "突擊小隊", -- 突擊小隊
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Previous Missions +]--
	["loc_social_menu_roster_players_from_previous_missions"] = {
		-- en = "Previous Missions",
		-- ru = , -- руоф Предыдущие задания
		-- fr = "",
		["zh-tw"] = "歷史任務", -- 歷史任務
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
--[+ +MISSIONS MENU++]
	--[+  +]--
	-- [""] = {
		-- en = ,
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
--[+ +HAVOC - 浩劫+ +]--
	--[+ Havoc Title +]--
	["loc_havoc_name"] = {
		-- en = "Havoc",
		ru = "Хавок", -- руоф Верная смерть
		-- fr = "",
		["zh-tw"] = "浩劫", -- 浩劫UI左上
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Havoc Rewards +]--
	["loc_havoc_reset_rewards"] = {
		-- en = "Havoc Rewards",
		ru = "Награды Хавока", -- Награды Верной смерти
		-- fr = "",
		["zh-tw"] = "浩劫獎勵", -- 浩劫獎勵
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Havoc Require +]--
	["loc_havoc_reward_objective_order"] = {
		-- en = "Complete a Havoc Assignment",
		ru = "Выполнить задание Хавока",
		-- fr = "",
		["zh-tw"] = "完成任一浩劫任務", -- 完成任一浩劫任務
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

--[+ ++KILLFEED++ +]--
	["loc_hud_combat_feed_kill_message"] = {
		-- en = "{killer:%s} killed {victim:%s}",
		ru = "{killer:%s} убивает {victim:%s}",
		-- fr = "",
		["zh-tw"] = "{killer:%s} 擊殺 {victim:%s}",
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

--[+ +TREAT - СЛОЖНОСТЬ - 威胁度等级+ +]-- colored 着色
	--[+ SEDITION +]--
	-- ["loc_mission_board_danger_lowest"] = {
		-- en = COLORS_KWords.sedition_rgb, -- Green -- ui_green_light
		-- ru = COLORS_KWords_ru.sedition_rgb_ru, -- Мятеж
		-- fr = "",
		-- ["zh-tw"] = COLORS_KWords_tw.sedition_rgb_tw, -- 暴動
		-- ["zh-cn"] = COLORS_KWords_zh_cn.sedition_rgb_zh_cn, -- 煽动
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	-- [+ UPRISING +]--
	["loc_mission_board_danger_low"] = {
		en = COLORS_KWords.uprising_rgb, -- Light blue -- ui_difficulty_1
		ru = COLORS_KWords_ru.uprising_rgb_ru, -- Восстание
		-- fr = "",
		["zh-tw"] = COLORS_KWords_tw.uprising_rgb_tw, -- 起義
		["zh-cn"] = COLORS_KWords_zh_cn.uprising_rgb_zh_cn, -- 起义
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	-- [+ MALICE +]--
	["loc_mission_board_danger_medium"] = {
		en = COLORS_KWords.malice_rgb, -- Light green -- ui_difficulty_2
		ru = COLORS_KWords_ru.malice_rgb_ru, -- Злоба
		-- fr = "",
		["zh-tw"] = COLORS_KWords_tw.malice_rgb_tw, -- 惡毒
		["zh-cn"] = COLORS_KWords_zh_cn.malice_rgb_zh_cn, -- 憎恶
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	-- [+ HERESY +]--
	["loc_mission_board_danger_high"] = {
		en = COLORS_KWords.heresy_rgb, -- Yellow -- ui_difficulty_3
		ru = COLORS_KWords_ru.heresy_rgb_ru, -- Ересь
		-- fr = "",
		["zh-tw"] = COLORS_KWords_tw.heresy_rgb_tw, -- 異端
		["zh-cn"] = COLORS_KWords_zh_cn.heresy_rgb_zh_cn, -- 异端
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	-- [+ DAMNATION +]--
	["loc_mission_board_danger_highest"] = {
		en = COLORS_KWords.damnation_rgb, -- Orange -- ui_difficulty_4
		ru = COLORS_KWords_ru.damnation_rgb_ru, -- Проклятие
		-- fr = "",
		["zh-tw"] = COLORS_KWords_tw.damnation_rgb_tw, -- 詛咒
		["zh-cn"] = COLORS_KWords_zh_cn.damnation_rgb_zh_cn, -- 诅咒
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	-- [+ AURIC +]--
	["loc_group_finder_difficulty_auric"] = {
		en = COLORS_KWords.auric_rgb, -- Red -- ui_difficulty_5
		ru = COLORS_KWords_ru.auric_rgb_ru, -- Золото
		-- fr = "",
		-- ["zh-tw"] = COLORS_KWords_tw.auric_rgb_tw, -- 詛咒
		-- ["zh-cn"] = COLORS_KWords_zh_cn.auric_rgb_zh_cn, -- 诅咒
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

--[+ ++INVENTORY++ +]--
	-- [+ Curios - 珍品 +]--
	["loc_inventory_loadout_group_attachments"] = {
		-- en = Curios,
		ru = "Реликвии", -- руоф Диковинки
		-- fr = "",
		["zh-tw"] = "珍品", -- 角色畫面
		["zh-cn"] = "珍品", -- 珍品
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_inventory_title_slot_attachment_1"] = {
		-- en = "First Curio",
		ru = "Первая реликвия",
		-- fr = "",
		["zh-tw"] = "珍品", -- 珍品
		["zh-cn"] = "第一件珍品", -- 珍品 槽位 1
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_inventory_title_slot_attachment_2"] = {
		-- en = "Second Curio",
		ru = "Вторая реликвия",
		-- fr = "",
		["zh-tw"] = "珍品", -- 珍品
		["zh-cn"] = "第二件珍品", -- 珍品 槽位 2
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_inventory_title_slot_attachment_3"] = {
		-- en = "Third Curio",
		ru = "Третья реликвия",
		-- fr = "",
		["zh-tw"] = "珍品 - 庫存", -- 珍品 - 庫存
		["zh-cn"] = "第三件珍品", -- 珍品 槽位 3
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_inventory_view_display_name"] = {
		-- en = "Loadout",
		ru = "Снаряжение",
		-- fr = "",
		["zh-tw"] = "裝備", -- 裝備
		["zh-cn"] = "装备", -- 装备
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Cosmetic slots +]--
	["loc_inventory_title_slot_gear_lowerbody"] = {
		-- en = "Lower body",
		ru = "Ноги",
		-- fr = "",
		["zh-tw"] = "下半身", -- 腿部 
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_inventory_title_slot_animation_end_of_round"] = {
		-- en = "Stances",
		-- ru = "Позы",
		-- fr = "",
		["zh-tw"] = "姿勢", -- 姿勢
		["zh-cn"] = "结算动作", -- 结算动作
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

	--[+ Rarity - Редкость предметов +]--
	["loc_item_weapon_rarity_1"] = {
		-- en = "Profane",
		ru = "Нечестивое", -- Белое
		-- fr = "",
		["zh-tw"] = "褻瀆", -- 白色
		["zh-cn"] = "亵渎", -- 白
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_item_weapon_rarity_2"] = {
		-- en = "Redeemed",
		ru = "Очищенное", -- Зелёное
		-- fr = "",
		["zh-tw"] = "救贖", -- 綠色
		["zh-cn"] = "救赎", -- 绿
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_item_weapon_rarity_3"] = {
		-- en = "Anoited",
		ru = "Помазанное", -- Синее
		-- fr = "",
		["zh-tw"] = "受膏", -- 藍色
		["zh-cn"] = "圣膏", -- 蓝
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_item_weapon_rarity_4"] = {
		-- en = "Exalted",
		ru = "Возвышенное", -- Фиолетовое
		-- fr = "",
		["zh-tw"] = "崇高", -- 紫色
		["zh-cn"] = "超然", -- 紫
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_item_weapon_rarity_5"] = {
		-- en = "Transcendent",
		ru = "Непостижимое", -- Рыжее
		-- fr = "",
		["zh-tw"] = "卓越", -- 橙色
		["zh-cn"] = "超然", -- 金
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_item_weapon_rarity_6"] = {
		-- en = ,
		ru = "Благородное", -- Красное
		-- fr = "",
		["zh-tw"] = "神化", -- 紅色
		["zh-cn"] = "神圣", -- 红
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

--[+ ++WEAPON CARD - КАРТОЧКА ОРУЖИЯ++ +]--
--[+ +Weapon - Оружие+ +]--
	["loc_inventory_menu_favorite_item"] = {
		-- en = "Favourite",
		ru = "Избранное", -- руоф Добавить в избранное
		-- fr = "",
		["zh-tw"] = "最愛",
		["zh-cn"] = "已收藏", -- 收藏物品
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_item_type_perk"] = {
		-- en = "Perk",
		ru = "Характеристики", -- руоф Улучшение
		-- fr = "",
		["zh-tw"] = "附加屬性", -- 附加屬性
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_weapon_action_title_light"] = {
		-- en = "Light Attack",
		ru = "Лёгкая атака", -- руоф Простая атака
		-- fr = "",
		["zh-tw"] = "輕攻擊", -- 輕攻擊
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_weapon_action_title_heavy"] = {
		-- en = "Heavy Attack",
		ru = "Тяжёлая атака", -- руоф Мощная атака
		-- fr = "",
		["zh-tw"] = "重攻擊", -- 重攻擊
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_weapon_action_title_primary"] = {
		-- en = "Primary Action",
		ru = "Основная атака", -- руоф Основное действие -- длинно и накладывается
		-- fr = "",
		["zh-tw"] = "主要攻擊", -- 主要攻擊(杖)
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_weapon_action_title_secondary"] = {
		-- en = "Secondary Action",
		ru = "Вторичная атака", -- руоф Дополнительное действие -- длинно и накладывается
		-- fr = "",
		["zh-tw"] = "次要攻擊", -- 次要攻擊(杖)
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	-- ["loc_weapon_action_title_special"] = {
		-- en = "Special Attack", --???
		-- ru = "Специальная атака",
		-- fr = "",
		-- ["zh-tw"] = "特殊攻擊", -- 特殊攻擊(遠程)
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	["loc_weapon_special_special_attack"] = {
		-- en = Special Melee Attack,
		ru = "Специальная атака",
		-- fr = "",
		["zh-tw"] = "特殊攻擊", -- 特殊攻擊(近戰)
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

	["loc_stats_display_finesse_stat"] = {
		-- en = "Finesse",
		ru = "Ловкость", -- руоф Точность
		-- fr = "",
		["zh-tw"] = "技巧", -- 技巧
		["zh-cn"] = "灵巧", -- 灵巧
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_stats_display_flame_size_stat"] = {
		-- en = "Cloud Radius",
		ru = "Размер пламени", -- руоф Область распространения
		-- fr = "",
		["zh-tw"] = "火焰範圍", -- 火焰範圍
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_stats_display_control_stat_melee"] = {
		-- en = "Crowd Control",
		ru = "Сдерживание орд",
		-- fr = "",
		["zh-tw"] = "群體控制", -- 群體控制
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	["loc_weapon_stats_display_dodge_distance"] = {
		-- en = ,
		ru = "Дальность уклонения",
		-- fr = "",
		["zh-tw"] = "閃避距離", -- 閃避距離
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	-- ["loc_weapon_keyword_high_cleave"] = {
		-- en = "Cleaving Strike",
		-- ru = "Рассечение",
		-- fr = "",
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	-- ["loc_weapon_keyword_power_weapon"] = {
		-- en = "Power Weapon",
		-- ru = "Силовое оружие",
		-- fr = "",
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	-- ["loc_weapon_keyword_spray_n_pray"] = {
		-- en = "Torrent",
		-- ru = "Непрерывная стрельба",
		-- fr = "",
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },

-- JUST FOR FUN --
--[+ ++LOADING MESSAGES - СООБЩЕНИЯ ПРИ ЗАГРУЗКЕ++ +]--
	--[+ Reading data from disc +]--
	["loc_wait_reason_read_from_disk"] = {
		-- en = ,
		ru = "Попытка исправить ошибки 3001, 3013, 2014... Неудачно!", -- Чтение данных с диска -- Получение инквизиционных данных
		-- fr = "",
		["zh-tw"] = "正在從硬碟讀取資料", -- 嘗試修正錯誤 3001, 3013, 2014...
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Dedicated Server +]--
	["loc_wait_reason_dedicated_server"] = {
		-- en = ,
		ru = "Выдаём рекаф и брикеты", -- Выделенный сервер
		-- fr = "",
		["zh-tw"] = "正在載入著色器或模組包",
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Waiting for other player(s) +]--
	["loc_wait_reason_other_player"] = {
		-- en = ,
		ru = "Шлёпаем уборщицу за вырванные кабели...", -- Ожидание других игроков -- Добавление других оперативников к сеансу связи...
		-- fr = "",
		["zh-tw"] = "正在等待其他玩家加入...",
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Communicating with Fatshark backend +]--
	["loc_wait_reason_backend"] = {
		-- en = ,
		ru = "Пытаемся сшить связь, потому что она порвалась...", -- Взаимодействие с бэкэндом Fatshark
		-- fr = "",
		["zh-tw"] = "正在與Fatshark伺服器進行連線... T_T",
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Store +]--
	["loc_wait_reason_store"] = {
		-- en = ,
		ru = "Попытка установить обновленние магазина чаще, чем раз в две недели... Неудачно!", -- Магазин
		-- fr = "",
		["zh-tw"] = "正在更新商店...",
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Platform Steam - Платформа Steam +]--
	["loc_wait_reason_platform_steam"] = {
		-- en = ,
		-- ru = "Подключение к Steam",
		-- fr = "",
		["zh-tw"] = "正在連接Steam...",
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Platform Xbox +]--
	["loc_wait_reason_platform_xbox_live"] = {
		-- en = ,
		-- ru = "Подключение к Коробокс", -- Платформа Xbox
		-- fr = "",
		["zh-tw"] = "正在連接Xbox...",
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Platform PSN +]--
	["loc_wait_reason_platform_psn"] = {
		-- en = ,
		-- ru = "Подключение к ПэЭсЭн", -- Платформа PSN
		-- fr = "",
		["zh-tw"] = "正在連接PSN...",
		-- ["zh-cn"] = ,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
}


--[+ Automatically create templates from the new structure +]--
local localization_templates = {}
for loc_key, locales in pairs(menus_templates) do
	for locale, text in pairs(locales) do
		table.insert(localization_templates, {
			loc_keys = {loc_key},
			locales = {locale},
			handle_func = loc_text(text)
		})
	end
end

mod:info("MENUS.lua loaded successfully")

return localization_templates
