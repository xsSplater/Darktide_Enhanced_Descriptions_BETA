---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")

-- ИСПОЛЬЗУЕМ КЭШИРОВАННЫЕ УТИЛИТЫ
local Utils = mod.get_utils()

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
	["loc_item_type_gear_lowerbody"] = {
		ru = "Ноги", -- руоф Нижняя часть тела
		["zh-tw"] = "下半身",
		["zh-cn"] = "被动",
	},
	--[+ Private Game +]-- руоф Закрытая игра
	["loc_private_tag_name"] = {
		["zh-tw"] = "私人遊戲",
	},
		--[+ Penance can only be completed in a private game +]-- руоф Искупление может быть выполнено только в закрытой игре
		["loc_private_tag_description"] = {
			ru = "Искупление может быть выполнено только в закрытой игре. Закрытую игру можно создать только в компании с минимум ещё одним игроком.",
			["zh-tw"] = "\n"
				.."該苦修限定在私人遊戲完成！\n"
				.."注意：私人遊戲需要另一名玩家共同組隊。",
		},

--[+ ++MISSIONS TYPES - ТИПЫ МИССИЙ++ +]--
	["loc_mission_type_01_name"] = {
		-- en = "Raid",
		ru = "Налёт",
		["zh-tw"] = "突襲",
	},
	["loc_mission_type_02_name"] = {
		-- en = "Assassination",
		["zh-tw"] = "刺殺",
	},
	-- ["loc_mission_type_03_name"] = {
		-- en = "Investigation",
	-- },
	["loc_mission_type_04_name"] = {
		-- en = "Disruption",
		["zh-tw"] = "擾亂",
	},
	-- ["loc_mission_type_05_name"] = {
		-- en = "Strike",
	-- },
	["loc_mission_type_06_name"] = {
		-- en = "Espionage",
		["zh-tw"] = "諜報",
	},
	["loc_mission_type_07_name"] = {
		-- en = "Repair",
		ru = "Ремонт",
		["zh-tw"] = "修復",
	},


--[+ ++ACCOUNT - УЧЁТНАЯ ЗАПИСЬ - 帳戶++ +]--
	--[+ Account +]-- руоф Учетная запись
	["loc_achievement_category_account_label"] = {
		ru = "Учётная запись",
		["zh-tw"] = "帳戶",
	},
	--[+ Two's Company +]-- руоф А двое лучше
	["loc_achievement_multi_class_1_name"] = {
		ru = "Двое – компания...",
		["zh-tw"] = "雙人搭檔",
	},
	--[+ Like a four-leaf clover +]-- руоф Фантастическая четверка
	["loc_achievement_multi_class_2_name"] = {
		ru = "Как четырёхлистный клевер",
		["zh-tw"] = "四葉草式幸運",
	},
		--[+ Reach Trust Level 30 with 1-4 classes. +]-- руоф Получить уровень доверия 30 следующими классами: 1-4.
		["loc_achievement_multi_class_x_description"] = {
			en = "Reach Trust Level "..CNumb("30", "n_30_rgb").." with "..CNumb("{target}", "target_rgb").." classes.",
			ru = "Достигните "..CNumb("30", "n_30_rgb").." уровня доверия "..CNumb("{target}", "target_rgb").." классами.",
			["zh-tw"] = "將 "..CNumb("{target}", "target_rgb").." 個職業，都達到信任等級 "..CNumb("30", "n_30_rgb").." 。",
		},
	--[+ Don't Let Me Down, Criminal +]-- руоф Не подведите меня, преступники
	["loc_achievement_prologue_name"] = {
		ru = "Не подведи меня, преступник",
		["zh-tw"] = "別讓我失望，罪犯",
	},
		--[+ Complete the Prologue. +]-- руоф Закончить пролог.
		["loc_achievement_prologue_description"] = {
			en = "Complete the "..CKWord("Prologue", "Prologue_p_rgb")..".",
			ru = "Пройдите "..CKWord("Пролог", "Prologue_p_rgb_ru")..".",
			["zh-tw"] = "完成 "..CKWord("Prologue", "Prologue_p_rgb_tw").."。",
		},
	--[+ Call to Arms +]-- руоф К оружию!
	["loc_achievement_basic_training_name"] = {
		ru = "Призыв к оружию",
		["zh-tw"] = "戰爭召喚",
	},
		--[+ Complete Basic Training. +]-- руоф Завершите базовое обучение.
		["loc_achievement_basic_training_description"] = {
			en = "Complete the "..CKWord("Basic Tutorial", "Base_tut_p_rgb")..".",
			ru = "Пройдите "..CKWord("Базовое обучение", "Base_tut_p_rgb_ru")..".",
			-- ["zh-tw"] = "完成 "..CKWord("", "Psykhanium_p_rgb_tw").." 的 "..CKWord("", "Base_tut_p_rgb_tw").."。",
		},
	--[+ Unconsidered Trifles +]-- руоф Непродуманные мелочи
	["loc_achievement_unlock_gadgets_name"] = {
		ru = "Неучтённые мелочи",
		["zh-tw"] = "小零碎",
	},
		--[+ Unlock your first Curio slot. +]-- руоф Открыть вашу первую ячейку для диковинки.
		["loc_achievement_unlock_gadgets_description"] = {
			en = "Unlock your first "..CKWord("Curio", "Curio_p_rgb").." slot.",
			ru = "Разблокируйте вашу первую ячейку "..CKWord("Реликвий", "Curio_p_rgb_ru")..".",
			["zh-tw"] = "解鎖第一個 "..CKWord("珍品", "Curio_p_rgb_tw").." 。",
		},
	--[+ Well met, Whippersnapper +]-- руоф Какая приятная встреча, молокосос
	["loc_achievement_unlock_contracts_name"] = {
		ru = "Рад встрече, молокосос",
		["zh-tw"] = "幸會，狂妄的小子",
	},
		--[+ Unlock access to Sire Melk's Requisitorium. +]-- руоф Получить доступ к реквизиториуму сира Мелка.
		["loc_achievement_unlock_contracts_description"] = {
			en = "Unlock access to "..CKWord("Sire Melk's Requisitorium", "Sir_melk_p_rgb")..".",
			ru = "Разблокируйте доступ в "..CKWord("Реквизиториум сира Мелка", "Sir_melk_p_rgb_ru")..".",
			["zh-tw"] = "解鎖 "..CKWord("梅爾克領主的必備品店", "Sir_melk_p_rgb_tw").." 。",
		},
	--[+ Hail the Omnissiah! - Слава Омниссии! +]--
	["loc_achievement_unlock_crafting_name"] = {
		["zh-tw"] = "歐姆尼賽亞萬歲！",
	},
		--[+ Unlock access to the Shrine of the Omnissiah. +]-- руоф Откройте доступ к святилищу Омниссии.
		["loc_achievement_unlock_crafting_description"] = {
			en = "Unlock access to the "..CKWord("Shrine of the Omnissiah", "Omnissia_p_rgb")..".",
			ru = "Разблокируйте доступ в "..CKWord("Святилище Омниссии", "Omnissia_p_rgb_ru")..".",
			["zh-tw"] = "解鎖 "..CKWord("歐姆尼賽亞的神龕", "Omnissia_p_rgb_tw").." 。",
		},
	--[+ Circle of Trust (1-6) +]-- руоф Круг доверия (1-6)
	-- ["loc_achievement_path_of_trust_x_name"] = {
		-- ["zh-tw"] = "互信團體 ({tier})",
	-- },
	--[+ Complete Path of Trust chapter 6. +]-- руоф Пройти главы Пути веры: {target}.
		["loc_achievement_path_of_trust_x_description"] = {
			en = "Complete "..CKWord("Path of Trust", "PthOTrst_p_rgb").." chapter "..CNumb("{target}", "target_rgb")..".",
			ru = "Пройдите "..CNumb("{target}", "target_rgb").." главу "..CKWord("Пути доверия", "PthOTrst_p_rgb_ru")..".",
			["zh-tw"] = "完成第 "..CNumb("{target}", "target_rgb").." 章的互信團體。",
		},


--[+ ++CLASSES - КЛАССЫ++ +]--
	--[+ +VETERAN - ВЕТЕРАН +]--
	["loc_class_veteran_title"] = {
		en = CKWord("Veteran", "cls_vet_rgb"),
		ru = CKWord("Ветеран", "cls_vet_rgb_ru"),
		["zh-tw"] = CKWord("老兵", "cls_vet_rgb_tw"),
	},
		--[+ PROGRESSION - ПРОГРЕСС - 進度 +]--
	--[+ I Love the Militarum! (1-6) +]-- руоф Я люблю Милитарум! (1-6) -- 我愛星界軍 (1-6)
		--[+ Reach Trust Level __ as a Veteran. +]-- руоф Заслужить уровень доверия __, играя за Ветерана.
		["loc_achievement_rank_veteran_2_x_description"] = {
			en = "Reach Trust Level "..CNumb("{target}", "target_rgb").." as a "..CKWord("Veteran", "cls_vet_rgb")..".",
			ru = "Достигните "..CNumb("{target}", "target_rgb").." уровня доверия "..CKWord("Ветераном", "cls_vet2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("老兵", "cls_vet_rgb_tw").." 達到信任等級 "..CNumb("{target}", "target_rgb").." 。",
		},
	--[+ Through The Mud (1-5) +]-- руоф Из грязи (1-5) -- 穿越泥沼 (1-5)
		--[+ Complete 100 Missions as a Veteran. +]-- руоф Выполнить Ветераном задания: 100.
		["loc_achievement_missions_veteran_2_x_description"] = {
			en = "Complete "..CNumb("{target}", "target_rgb").." Missions as a "..CKWord("Veteran", "cls_vet_rgb")..".",
			ru = "Пройдите "..CNumb("{target}", "target_rgb").." миссий "..CKWord("Ветераном", "cls_vet2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("老兵", "cls_vet_rgb_tw").." 完成 "..CNumb("{target}", "target_rgb").." 次任務。",
		},
	--[+ Vantage Point +]-- руоф Точка обзора
	["loc_achievement_missions_veteran_2_objective_1_name"] = {
		en = "Vantage Point (1)",
		ru = "Выгодная позиция (1)",
		["zh-tw"] = "有利地形 (1)",
	},
		--[+ As a Veteran, complete at least one Mission of each type. +]-- руоф Выполнить Ветераном по меньшей мере одно задание каждого типа.
		["loc_achievement_missions_veteran_2_objective_1_description"] = {
			en = "As a "..CKWord("Veteran", "cls_vet_rgb")..", complete at least "..CNumb("1", "n_1_rgb").." Mission of each type.",
			ru = "Пройдите "..CKWord("Ветераном", "cls_vet2_rgb_ru").." как минимум "..CNumb("1", "n_1_rgb").." миссию каждого типа.",
			["zh-tw"] = "使用 "..CKWord("老兵", "cls_vet_rgb_tw").."，完成以下任務 "..CNumb("1", "n_1_rgb").." 次。",
		},
	--[+ Vantage Point (2) +]-- руоф Точка обзора (2)
	["loc_achievement_missions_veteran_2_objective_2_name"] = {
		ru = "Выгодная позиция (2)",
		["zh-tw"] = "有利地形 (2)",
	},
		--[+ As a Veteran, complete a Mission of each type on Malice Threat or higher. +]--
		["loc_achievement_missions_veteran_2_objective_2_description"] = {
			en = "As a "..CKWord("Veteran", "cls_vet_rgb")..", complete "..CNumb("1", "n_1_rgb").." Mission of each type on "..CKWord("Malice", "malice_rgb").." Threat or higher.",
			ru = "Пройдите "..CKWord("Ветераном", "cls_vet2_rgb_ru").." "..CNumb("1", "n_1_rgb").." миссию каждого типа на сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше.",
		},
	--[+ Vantage Point (3) +]-- руоф Точка обзора (3)
	["loc_achievement_missions_veteran_2_objective_3_name"] = {
		ru = "Выгодная позиция (3)",
		["zh-tw"] = "有利地形 (3)",
	},
		--[+ As a Veteran, complete a Mission of each type on Heresy Threat or higher. +]--
		["loc_achievement_missions_veteran_2_objective_3_description"] = {
			en = "As a "..CKWord("Veteran", "cls_vet_rgb")..", complete "..CNumb("1", "n_1_rgb").." Mission of each type on "..CKWord("Heresy", "heresy_rgb").." Threat or higher.",
			ru = "Пройдите "..CKWord("Ветераном", "cls_vet2_rgb_ru").." "..CNumb("1", "n_1_rgb").." миссию каждого типа на сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше.",
		},
	--[+ Prove Your Worth (1-5) +]-- руоф Докажи, чего стоишь (1-5) -- 證明你的價值 (1-5)
	--[+ Fight the Good Fight (1-5) +]-- руоф Сражайся достойно (1-5) -- 為正義而戰 (1-5)
		--[+ Complete _ Missions on Sedition Threat or higher. +]-- руоф Выполните задания (_) при угрозе «Мятеж» или выше.
		["loc_achievement_complete_missions_difficulty_1_description"] = {
			en = "Complete "..CNumb("{target}", "target_rgb").." Missions at any Threat Level.",
			ru = "Пройдите "..CNumb("{target}", "target_rgb").." миссий на любом уровне сложности.",
		},
		--[+ Complete _ Missions on Uprising Threat or higher. +]-- руоф Выполните задания (_) при угрозе «Восстание» или выше.
		["loc_achievement_complete_missions_difficulty_2_description"] = {
			en = "Complete "..CNumb("{target}", "target_rgb").." Missions on "..CKWord("Uprising", "uprising_rgb").." Threat or higher.",
			ru = "Пройдите "..CNumb("{target}", "target_rgb").." миссий на уровне сложности "..CKWord("Восстание", "uprising_rgb_ru").." или выше.",
		},
		--[+ Complete _ Missions on Malice Threat or higher. +]-- руоф Выполните задания (_) при угрозе «Злоба» или выше.
		["loc_achievement_complete_missions_difficulty_3_description"] = {
			en = "Complete "..CNumb("{target}", "target_rgb").." Missions on "..CKWord("Malice", "malice_rgb").." Threat or higher.",
			ru = "Пройдите "..CNumb("{target}", "target_rgb").." миссий на уровне сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше.",
		},
		--[+ Complete _ Missions on Heresy Threat or higher. +]-- руоф Выполните задания (_) при угрозе «Ересь» или выше.
		["loc_achievement_complete_missions_difficulty_4_description"] = {
			en = "Complete "..CNumb("{target}", "target_rgb").." Missions on "..CKWord("Heresy", "heresy_rgb").." Threat or higher.",
			ru = "Пройдите "..CNumb("{target}", "target_rgb").." миссий на уровне сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше.",
		},
		--[+ Complete _ Missions on Damnation Threat or higher. +]-- руоф Выполните задания (_) при угрозе «Проклятие» или выше.
		["loc_achievement_complete_missions_difficulty_5_description"] = {
			en = "Complete "..CNumb("{target}", "target_rgb").." Missions on "..CKWord("Damnation", "damnation_rgb").." Threat or higher.",
			ru = "Пройдите "..CNumb("{target}", "target_rgb").." миссий на уровне сложности "..CKWord("Проклятие", "damnation_rgb_ru").." или выше.",
		},
	--[+ First Steps (1-2) +]-- руоф Первые шаги (1-2) -- 首要步驟 (1-2)
	--[+ Promotion Material (1) +]-- руоф Материалы пропаганды (1)
	["loc_achievement_group_rank_4_difficulty_3_name"] = {
		ru = "Задания для продвижения (1)",
		["zh-tw"] = "樹立榜樣 (1)",
	},
	--[+ Promotion Material (2) +]-- руоф Материалы пропаганды (2)
	["loc_achievement_group_rank_5_difficulty_4_name"] = {
		ru = "Задания для продвижения (2)",
		["zh-tw"] = "樹立榜樣 (2)",
	},
	--[+ For The Emperor (1-3) +]-- руоф За императора (1-3) -- 為了皇帝 (1-3)
		--[+ Complete the following Penances as the Veteran. +]-- руоф Выполнить следующие искупления за Ветерана.
		["loc_achievement_group_veteran_2_description"] = {
			en = "Complete the following Penances as the "..CKWord("Veteran", "cls_vet_rgb")..".",
			ru = "Выполните следующие Искупления "..CKWord("Ветераном", "cls_vet2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("老兵", "cls_vet_rgb_tw").." 完成以下苦修。",
		},
	--[+ Stay Accurate +]-- руоф Держи прицел
	["loc_achievement_veteran_2_easy_1_name"] = {
		ru = "Будь точным",
		["zh-tw"] = "保持精準",
	},
	--[+ Kill 350 enemies with ranged weakspot hits. +]-- руоф Убейте врагов (350) попаданиями по слабым местам с дальнего расстояния.
	["loc_achievement_veteran_2_easy_1_description"] = {
		en = "Kill "..CNumb("{target}", "target_rgb").." enemies with Ranged "..CKWord("Weakspot Hits", "Weakspothits_rgb")..".\n"
			..CNote("Weaksp_note"),
		ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." из дальнобойного оружия.\n"
			..CNote("Weaksp_note"),
		["zh-tw"] = "使用遠程武器 "..CKWord("遠程弱點傷害", "Weakspot_r_dmg_rgb_tw").." "..CNumb("{target}", "target_rgb").." 名敵人。",
	},
	--[+ Fire Down Range +]-- -- руоф Заградительный огонь
	["loc_achievement_veteran_2_medium_2_name"] = {
		ru = "Дистанция ведения стрельбы",
		["zh-tw"] = "順風射擊",
	},
	--[+ On Malice Threat or higher, kill 100 ranged enemies that are over 30 meters away. +]-- руоф При угрозе «Злоба» или выше убейте врагов (100) на расстоянии дальше 30 м.
	["loc_achievement_veteran_2_medium_2_description"] = {
		en = "On "..CKWord("Malice", "malice_rgb").." Threat or higher, kill "..CNumb("{target}", "target_rgb").." ranged enemies that are over "..CNumb("{distance}", "dist_rgb").." meters away.",
		ru = "На сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, убейте "..CNumb("{target}", "target_rgb").." врагов-стрелков, находящихся на расстоянии более "..CNumb("{distance}", "dist_rgb").." метров от вас.",
		["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度下，\n"
			.."擊殺 "..CNumb("{target}", "target_rgb").." 名距離 "..CNumb("{distance}", "dist_rgb").." 公尺以上的敵人。",
	},
	--[+ On Target (1-3) +]-- руоф Держи прицел (1-3) -- 使命必達 (1-3)
		--[+ Complete the following Penances as the Veteran. +]-- руоф Выполнить следующие искупления за Ветерана.
		["loc_achievement_group_class_veteran_2_description"] = {
			en = "Complete the following Penances as the "..CKWord("Veteran", "cls_vet_rgb")..".",
			ru = "Выполните следующие Искупления "..CKWord("Ветераном", "cls_vet2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("老兵", "cls_vet_rgb_tw").." 完成以下苦修。",
		},
	--[+ One In the Chamber +]-- руоф Последний патрон
	["loc_achievement_veteran_2_kills_with_last_round_in_mag_name"] = {
		ru = "Последний в обойме",
		["zh-tw"] = "最後一發",
	},
		--[+ Kill 8 enemies with the last round in your clip during a single Mission on Malice Threat or higher. +]-- руоф При угрозе «Злоба» или выше убейте врагов (8) последним боеприпасом в магазине за одно задание.
		["loc_achievement_veteran_2_kills_with_last_round_in_mag_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies with the last round in your clip during a single Mission on "..CKWord("Malice", "malice_rgb").." Threat or higher.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов последним патроном в обойме в течение одной миссии на сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше.",
			["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度下，\n"
				.."使用最後一發子彈擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。",
		},
	--[+ On Overwatch +]-- руоф Под прикрытием
	["loc_achievement_veteran_2_no_melee_damage_taken_name"] = {
		ru = "На чеку",
		["zh-tw"] = "掩護射擊",
	},
		--[+ Complete a full Mission on Malice Threat or higher without taking any melee damage. +]-- руоф При угрозе «Злоба» или выше полностью завершите задание, не получив урона в ближнем бою.
		["loc_achievement_veteran_2_no_melee_damage_taken_description"] = {
			en = "Complete a full Mission on "..CKWord("Malice", "malice_rgb").." Threat or higher without taking any Melee "..CKWord("Damage", "Damage_rgb")..".",
			ru = "На сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, пройдите полностью миссию без получения "..CKWord("урона", "urona_rgb_ru").." в ближнем бою.",
			-- ["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度下，\n"
				-- .."完成一次任務且不受到近戰傷害。",
		},
	--[+ Make Every Shot Count +]-- руоф Стрельба наверняка
	["loc_achievement_veteran_2_no_missed_shots_empty_ammo_name"] = {
		["zh-tw"] = "彈無虛發",
	},
		--[+ Complete a Mission on Heresy Threat or higher with no Ammo remaining, and 90% accuracy. +]-- руоф При угрозе «Ересь» или выше завершите задание с меткостью 90%, потратив все боеприпасы.
		["loc_achievement_veteran_2_no_missed_shots_empty_ammo_description"] = {
			en = "Complete a Mission on "..CKWord("Heresy", "heresy_rgb").." Threat or higher with no Ammo remaining, and "..CNumb("{target}", "target_rgb")..CNumb("%", "pc_rgb").." accuracy.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, пройдите миссию с точностью в "..CNumb("{target}", "target_rgb")..CNumb("%", "pc_rgb").." и потратив все боеприпасы.",
			["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度下，\n"
				.."命中率在 "..CNumb("{target}", "target_rgb")..CNumb("%", "pc_rgb").." 以上，且撤離時無任何備彈",
		},
	--[+ Veteran Master of War +]-- руоф Ветеран — знаток войны
	["loc_achievement_class_meta_name"] = {
		-- en = "{class_name} Master of War",
		ru = "{class_name} — Повелитель войны",
		["zh-tw"] = "{class_name} 戰爭大師",
	},
		--[+ Complete 5 out of the following Penances. +]-- руоф Выполните часть (5) из следующих искуплений.
		["loc_achievement_class_meta_description"] = {
			en = "Complete "..CNumb("{target}", "target_rgb").." out of the following Penances.",
			ru = "Выполните "..CNumb("{target}", "target_rgb").." следующих Искуплений.",
			["zh-tw"] = "完成以下任意 "..CNumb("{target}", "target_rgb").." 個苦修。",
		},

		--[+ ABILITIES - СПОСОБНОСТИ - 技能 +]--
	--[+ Resupply Allies +]-- руоф Поделись с ближним
	["loc_achievement_veteran_2_easy_2_name"] = {
		ru = "Пополните припасы союзников",
		["zh-tw"] = "補給盟友",
	},
		--[+ Replenish 5000 total ammunition to allies using Scavenger or Survivalist. +]-- руоф Пополните 5000 ед. боеприпасов союзникам при помощи «Собирателя»...
		["loc_achievement_veteran_2_easy_2_fix_description"] = {
			en = "Replenish "..CNumb("{target}", "target_rgb").." total ammunition to Allies using "..CKWord("Scavenger", "scavenger_rgb").." or "..CKWord("Survivalist", "survivalist_rgb").." Aura.",
			ru = "Восстановите "..CNumb("{target}", "target_rgb").." боеприпасов союзникам с помощью аур "..CKWord("Сборщик", "scavenger_rgb_ru").." или "..CKWord("Выживальщик", "survivalist_rgb_ru")..".",
			-- ["zh-tw"] = "透過 "..CKWord("", "Aura_p_rgb_tw").."『"..CKWord("", "scavenger_rgb_tw").."』或『"..CKWord("", "survivalist_rgb_tw").."』，\n"
				-- .."為隊友恢復 "..CNumb("{target}", "target_rgb").." 發彈藥。",
		},
	--[+ Unseen Predator +]-- руоф Невидимый хищник
	["loc_achievement_veteran_infiltrate_supress_name"] = {
		["zh-tw"] = "隱形獵手",
	},
		-- [+ Suppress 750 enemies using Infiltrate. +]-- руоф Подавите врагов (750) с помощью «Проникновения».
		["loc_achievement_veteran_infiltrate_supress_description"] = {
			en = "Suppress "..CNumb("{target}", "target_rgb").." enemies using "..CKWord("Infiltrate", "infiltr_rgb").." Ability.",
			ru = "Подавите "..CNumb("{target}", "target_rgb").." врагов с помощью способности "..CKWord("Проникновение", "infiltr_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("滲透", "infiltr_rgb_tw").."』壓制 "..CNumb("{target}", "target_rgb").." 名敵人。",
		},
	--[+ Stand up and Fight! +]-- руоф Встань и сражайся!
	["loc_achievement_veteran_voice_of_command_toughness_given_name"] = {
		["zh-tw"] = "站起來繼續戰鬥！",
	},
		--[+ Restore 7500 Toughness to yourself using Voice of Command. +]-- руоф Восстановите себе 7500 стойкости с помощью «Командного голоса».
		["loc_achievement_veteran_voice_of_command_toughness_given_description"] = {
			en = "Restore "..CNumb("{target}", "target_rgb").." "..CKWord("Toughness", "Toughness_rgb").." to yourself using "..CKWord("Voice of Command", "voiceoc_rgb").." Ability.",
			ru = "Восстановите себе "..CNumb("{target}", "target_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." с помощью способности "..CKWord("Командный голос", "voiceoc_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "voiceoc_rgb_tw").."』恢復自身 "..CNumb("{target}", "target_rgb").." 點 "..CKWord("", "Toughness_rgb_tw").."。",
		},
	--[+ Killshot Ready +]--
	["loc_achievement_veteran_enemies_killed_with_max_focus_fire_name"] = {
		ru = "Смертельный выстрел готов",
		["zh-tw"] = "射殺預備",
	},
		--[+ Kill 2500 enemies while at 10 stacks of Marksman's focus or more. +]-- руоф Убейте врагов (2500), имея не менее 10 зарядов «Концентрации снайпера».
		["loc_achievement_veteran_enemies_killed_with_max_focus_fire_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies while at "..CNumb("10", "n_10_rgb").." Stacks of "..CKWord("Marksman's Focus", "snipcon_rgb").." Keystone or more.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов, имея не менее "..CNumb("10", "n_10_rgb").." зарядов ключевого таланта "..CKWord("", "snipcon_rgb_ru")..".",
			-- ["zh-tw"] = "在累積至少 "..COLORS_Numbers.n_10_rgb").." 層 "..CKWord("", "KeyStone_p_rgb_tw").."『"..CKWord("", "snipcon_rgb_tw").."』的 "..CKWord("", "Focus_rgb_tw").." 時，\n"
				-- .."擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。",
		},
	--[+ Armourbane +]-- руоф Бронебой
	["loc_achievement_veteran_krak_grenade_kills_name"] = {
		["zh-tw"] = "護甲之災",
	},
		--[+ Kill 500 armoured enemies using krak grenades. +]-- руоф Убейте врагов с бронёй (500) с помощью крак-гранат.
		["loc_achievement_veteran_krak_grenade_kills_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." armoured enemies using "..CKWord("Krak Grenade", "krak_gr_rgb")..".",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." бронированных врагов, используя "..CKWord("Крак-гранату", "krak_gr_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "krak_gr_rgb_tw").."』擊殺 "..CNumb("{target}", "target_rgb").." 名護甲敵人。",
		},
	--[+ Smoke Screen +]--
	["loc_achievement_veteran_smoke_grenade_engulfed_name"] = {
		ru = "Дымовая завеса",
		["zh-tw"] = "煙幕",
	},
		--[+ Engulf 2000 enemies in smoke using the Smoke Grenade. +]-- руоф Окутайте дымом врагов (2000) с помощью дымовой гранаты.
		["loc_achievement_veteran_smoke_grenade_engulfed_description"] = {
			en = "Engulf "..CNumb("{target}", "target_rgb").." enemies in smoke using the "..CKWord("Smoke Grenade", "smok_gr_rgb")..".",
			ru = "Окутайте дымом "..CNumb("{target}", "target_rgb").." врагов с помощью "..CKWord("Дымовой гранаты", "smok_gr_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "smok_gr_rgb_tw").."』使 "..CNumb("{target}", "target_rgb").." 名敵人陷入煙霧之中。",
		},
	--[+ Focus Soldier! +]-- руоф Солдат в прицеле!
	["loc_achievement_veteran_kills_with_improved_tag_name"] = {
		ru = "Прицелься, солдат!",
		["zh-tw"] = "士兵，鎖定目標!",
	},
		--[+ Kill 500 enemies tagged by Focus Target! +]-- руоф Убейте врагов (500), отмеченных эффектом «В прицеле!».
		["loc_achievement_veteran_kills_with_improved_tag_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies tagged by "..CKWord("Focus Target!", "fcs_trg_rgb").." Keystone.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов, отмеченных с помощью ключевого таланта "..CKWord("Важная цель!", "fcs_trg_rgb_ru"),
			-- ["zh-tw"] = "擊殺 "..CNumb("{target}", "target_rgb").." 名被 "..CKWord("", "KeyStone_p_rgb_tw").."『"..CKWord("", "fcs_trg_rgb_tw").."』標記的敵人。",
		},
	--[+ Adept Assassin +]-- руоф Искусный убийца
	["loc_achievement_veteran_weapon_switch_passive_keystone_kills_name"] = {
		ru = "Адепт-ассасин",
		["zh-tw"] = "老練刺客",
	},
		--[+ Kill 250 Specialist or Elites with critical weakspot hits while Weapons Specialist is active. +]-- руоф Убейте особых или элитных врагов (250) с помощью критических ударов по слабым местам, пока действует «Мастер оружия».
		["loc_achievement_veteran_weapon_switch_passive_keystone_kills_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." Specialist or Elites with "..CKWord("Critical", "Critical_rgb").." "..CKWord("Weakspot Hits", "Weakspothits_rgb").." while "..CKWord("Weapons Specialist", "weapspec_rgb").." Keystone is active.\n"
			..CNote("Weaksp_note"),
			ru = "Убейте "..CNumb("{target}", "target_rgb").." элитных врагов или специалистов с помощью "..CKWord("критических", "kritickih_rgb_ru").." попаданий в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..", пока действует ключевой талант "..CKWord("Специалист по оружию", "weapspec_rgb_ru")..".\n"
			..CNote("Weaksp_note"),
			-- ["zh-tw"] = "在 "..CKWord("", "KeyStone_i_p_rgb_tw").."『"..CKWord("", "weapspec_rgb_tw").."』時，\n"
				-- .."使用 "..CKWord("", "Crit_hits_rgb_tw").." 加上 "..CKWord("", "Weakspot_k_dmg_rgb_tw").." "..CNumb("{target}", "target_rgb").." 名精英或專家敵人。",
		},
	--[+ Sweep and Clear +]--
	["loc_achievement_veteran_team_damage_amplified_name"] = {
		ru = "Выявить и зачистить",
		["zh-tw"] = "全面掃蕩",
	},
		--[+ Kill 7500 enemies while affected by Fire Team. Kills made by any affected team member also count. +]-- руоф Убейте врагов (7500), находясь под действием «Огневой поддержки». Убийства, совершенные любым членом команды под действием эффекта, тоже учитываются.
		["loc_achievement_veteran_team_damage_amplified_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies while affected by "..CKWord("Fire Team", "firetim_rgb").." Aura. Kills made by any affected team member also count.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов, находясь под действием ауры "..CKWord("Боевая группа", "firetim_rgb_ru")..". Убийства членами команды под вашей аурой также учитываются.",
			-- ["zh-tw"] = "在 "..CKWord("", "Aura_p_rgb_tw").."『"..CKWord("", "firetim_rgb_tw").."』的影響下，擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。\n"
				-- ..""..CKWord("", "Aura_i_p_rgb_tw").." 的隊友擊殺也會計算。",
		},
	--[+ Keep it Tight +]-- руоф Держать в секрете
	["loc_achievement_veteran_team_movement_amplifed_name"] = {
		ru = "Держитесь вместе",
		["zh-tw"] = "保持陣型.",
	},
		--[+ Move a total of 10000 meters in coherency with your team members while under the effect of Close and Kill. +]-- руоф Переместитесь с членами команды под действием «Сплоченности» суммарно на 10000 м, пока действует эффект «Приблизиться и убить».
		["loc_achievement_veteran_team_movement_amplifed_description"] = {
			en = "Move a total of "..CNumb("{target}", "target_rgb").." meters in "..CKWord("Coherency", "Coherency_rgb").." with your team members while under the effect of "..CKWord("Close and Kill", "closenkill_rgb").." Aura.",
			ru = "Переместитесь на "..CNumb("{target}", "target_rgb").." метров в "..CKWord("сплочённости", "splochennosti_rgb_ru").." с членами вашей команды под действием ауры "..CKWord("Приблизиться и убить", "closenkill_rgb_ru")..".",
			-- ["zh-tw"] = "在與隊友保持 "..CKWord("", "Coherency_rgb_tw").." 時，\n"
				-- .."於 "..CKWord("", "Aura_p_rgb_tw").."『"..CKWord("", "closenkill_rgb_tw").."』效果期間內，\n"
				-- .."移動距離達 "..CNumb("{target}", "target_rgb").." 公尺。",
		},
	--[+ Stay Alert +]-- руоф Будь начеку
	["loc_achievement_veteran_2_medium_1_name"] = {
		["zh-tw"] = "保持警惕",
	},
		--[+ On Malice Threat or higher, kill 150 enemies that have been marked by Executioner's Stance. +]-- руоф При угрозе «Злоба» или выше убейте врагов (150), отмеченных...
		["loc_achievement_veteran_2_medium_1_description"] = {
			en = "On "..CKWord("Malice", "malice_rgb").." Threat or higher, kill "..CNumb("{target}", "target_rgb").." enemies that have been marked by "..CKWord("Executioner's Stance", "exec_stan_rgb").." Ability.",
			ru = "На сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, убейте "..CNumb("{target}", "target_rgb").." врагов, отмеченных способностью "..CKWord("Стойка палача", "exec_stan_rgb_ru")..".",
			-- ["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，擊殺 "..CNumb("{target}", "target_rgb").." 名，\n"
				-- .."被 "..CKWord("", "AbilityModifiers_p_rgb_tw").."『"..CKWord("", "volley_fire_rgb_tw").."』或『"..CKWord("", "executioner_stance_rgb_tw").."』標記的敵人。",
		},
	--[+ Find your Targets +]-- руоф Поиск целей
	["loc_achievement_veteran_2_hard_1_name"] = {
		ru = "Найди свои цели",
		["zh-tw"] = "尋找目標",
	},
		--[+ On Heresy Threat or higher, kill 2 Elite or Specialist enemies during a single Volley Fire or Executioner's Stance, 50 times. +]-- руоф При угрозе «Ересь» или выше убейте элитных врагов или специалистов (2) за одно применение «Залпового огня» 50 р.
		["loc_achievement_veteran_2_hard_1_fix_description"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb_ru").." Threat or higher, kill "..CNumb("{num_enemies}", "num_enemies_rgb").." Elite or Specialist enemies during a single "..CKWord("Volley Fire", "volley_fire_rgb").." or "..CKWord("Executioner's Stance", "exec_stan_rgb").." Ability, "..CNumb("{target}", "target_rgb").." times.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, убейте "..CNumb("{target}", "num_enemies_rgb").." элитных врага или специалиста во время непрерывного действия способностей "..CKWord("Залповый огонь", "volley_fire_rgb_ru").." или "..CKWord("Стойка палача", "exec_stan_rgb_ru")..". Выполните это задание "..CNumb("{target}", "target_rgb").." раз.",
			-- ["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，\n"
				-- .."於單次 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "volley_fire_rgb_tw").."』或『"..CKWord("", "executioner_stance_rgb_tw").."』期間，\n"
				-- .."擊殺 "..CNumb("{target}", "num_enemies_rgb").." 名精英或專家敵人。此任務共需達成 "..CNumb("{target}", "target_rgb").." 次。",
		},
	--[+ Be Methodical +]-- руоф Будь собран
	["loc_achievement_veteran_2_hard_2_name"] = {
		ru = "Будь методичным",
		["zh-tw"] = "有條不紊",
	},
		--[+ On Heresy Threat or higher, keep Volley Fire or Executioner's Stance active for over 20 seconds 5 times. +]-- руоф При угрозе «Ересь» или выше примените «Залповый огонь» в течение 20 с 5 р.
		["loc_achievement_veteran_2_hard_2_fix_description"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, keep "..CKWord("Volley Fire", "volley_fire_rgb").." or "..CKWord("Executioner's Stance", "exec_stan_rgb").." Ability active for over "..CNumb("{time}", "time_rgb").." seconds, "..CNumb("{target}", "target_rgb").." times.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, поддерживайте способность "..CKWord("Залповый огонь", "volley_fire_rgb_ru").." или "..CKWord("Стойка палача", "exec_stan_rgb_ru").." активной в течение "..CNumb("{time}", "time_rgb").." секунд. Выполните это задание "..CNumb("{target}", "target_rgb").." раз.",
			-- ["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，\n"
				-- .."啟動 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "executioner_stance_rgb_tw").."』持續 "..CNumb("{time}", "time_rgb").." 秒以上。\n"
				-- .."完成此苦修需達成 "..CNumb("{target}", "target_rgb").." 次。",
		},
	--[+ Marked For Death +]-- руоф Отмечены смертью
	["loc_achievement_veteran_2_weakspot_hits_during_volley_fire_alternate_fire_name"] = {
		ru = "Отмечены на смерть",
		["zh-tw"] = "死亡標記",
	},
		--[+ During a single use of Volley Fire or Executioner's Stance, hit enemy Weak Spots 4 times using a weapon's Secondary Action, without missing a shot. +]-- руоф За однократное применение «Залпового огня» поразите слабые места врагов (4) дополнительным действием оружия, не промахнувшись.
		["loc_achievement_veteran_2_weakspot_hits_during_volley_fire_alternate_fire_fix_description"] = {
			en = "During a single use of "..CKWord("Volley Fire", "volley_fire_rgb").." or "..CKWord("Executioner's Stance", "exec_stan_rgb").." Ability, hit enemy "..CKWord("Weakspots", "Weakspots_rgb").." "..CNumb("{target}", "target_rgb").." times while Aiming without missing a shot.\n"
			..CNote("Weaksp_note"),
			ru = "За одно использование способностей "..CKWord("Залповый огонь", "volley_fire_rgb_ru").." или "..CKWord("Стойка палача", "exec_stan_rgb_ru").." поразите "..CNumb("{target}", "target_rgb").." врага прицельными выстрелами в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." не промахиваясь.\n"
			..CNote("Weaksp_note"),
			-- ["zh-tw"] = "於單次 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "volley_fire_rgb_tw").."』或『"..CKWord("", "executioner_stance_rgb_tw").."』期間，\n"
				-- .."使用瞄準射擊連續命中 "..CNumb("{target}", "target_rgb").." 名敵人的 "..CKWord("", "Weakspot_rgb_tw").."，且不得中斷。",
		},
	--[+ Long Bomb +]-- руоф Длинный пас
	["loc_achievement_veteran_2_unbounced_grenade_kills_name"] = {
		-- ru = "Дальний бросок",
		["zh-tw"] = "遠擲炸彈",
	},
		--[+ Hit 5 enemies with a Frag Grenade or Shredder Frag Grenade without it bouncing. +]-- руоф Убейте врагов (5) фраг-гранатой или ... так, чтобы она не отскакивала.
		["loc_achievement_veteran_2_unbounced_grenade_kills_fix_description"] = {
			en = "Hit "..CNumb("{target}", "target_rgb").." enemies with a "..CKWord("Frag Grenade", "frag_gr_rgb").." or "..CKWord("Shredder Frag Grenade", "shfrag_gr_rgb").." without it bouncing.",
			ru = "Поразите "..CNumb("{target}", "target_rgb").." врагов взрывом "..CKWord("Фраг-гранаты", "frag_gr_rgb_ru").." или "..CKWord("Крошащей фраг-гранаты", "shfrag_gr_rgb_ru").." так, чтобы граната не коснулась земли.",
			-- ["zh-tw"] = "使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "frag_gr_rgb_tw").."』擊殺 "..CNumb("{target}", "target_rgb").." 名敵人，且手榴彈在引爆前不得碰觸地面。",
		},
	--[+ Deadeye +]-- руоф Меткий глаз
	["loc_achievement_veteran_2_elite_weakspot_kills_during_volley_fire_alternate_fire_name"] = {
		["zh-tw"] = "神射手",
	},
		--[+ On Heresy Threat or higher, during a single use of Volley Fire or Executioner's Stance, kill 5 highlighted enemies with Weak Spot hits whilst using a weapon's Secondary Action. +]-- руоф При угрозе «Ересь» или выше за однократное применение «Залпового огня»  убейте выделенных врагов (5) попаданием в слабое место, используя дополнительное действие оружия.
		["loc_achievement_veteran_2_elite_weakspot_kills_during_volley_fire_alternate_fire_fix_description"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, during a single use of "..CKWord("Volley Fire", "volley_fire_rgb").." or "..CKWord("Executioner's Stance", "exec_stan_rgb").." Ability, kill "..CNumb("{target}", "target_rgb").." highlighted enemies with "..CKWord("Weakspot Hits", "Weakspothits_rgb").." while using a weapon's Secondary Action.\n"
			..CNote("Weaksp_note"),
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, на протяжении одного использования способностей "..CKWord("Залповый огонь", "volley_fire_rgb_ru").." или "..CKWord("Стойка палача", "exec_stan_rgb_ru")..", убейте прицельными выстрелами "..CNumb("{target}", "target_rgb").." подсвеченных врагов в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".\n"
			..CNote("Weaksp_note"),
			-- ["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，\n"
				-- .."在單次 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "volley_fire_rgb_tw").."』或『"..CKWord("", "executioner_stance_rgb_tw").."』期間，\n"
				-- .."使用瞄準射擊 "..CKWord("", "Weakspothits_rgb_tw").." ，擊殺 "..CNumb("{target}", "target_rgb").." 名被標記的敵人。",
		},


--[+ +ZEALOT - ИЗУВЕР+ +]--
	["loc_class_zealot_title"] = {
		en = CKWord("Zealot", "cls_zea_rgb"),
		ru = CKWord("Изувер", "cls_zea_rgb_ru"),
		["zh-tw"] = CKWord("狂信徒", "cls_zea_rgb_tw"),
	},
		--[+ PROGRESSION - ПРОГРЕСС - 進度 +]--
	--[+ Maniacal Laughter (1-6) +]-- руоф Маниакальный смех (1-6) -- 瘋狂的笑聲
		--[+ Reach Trust Level 30 as a Zealot. +]-- руоф Заслужить уровень доверия 30, играя за Изувера.
		["loc_achievement_rank_zealot_2_x_description"] = {
			en = "Reach Trust Level "..CNumb("{target}", "target_rgb").." as a "..CKWord("Zealot", "cls_zea_rgb")..".",
			ru = "Достигните "..CNumb("{target}", "target_rgb").." уровня доверия "..CKWord("Изувером", "cls_zea2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("狂信徒", "cls_zea_rgb_tw").." 達到信任等級 "..CNumb("{target}", "target_rgb").." 。",
		},
	--[+ Doomseeker (1-5) +]-- руоф Искатель судьбы (1-5) -- 尋求毀滅者 (1-5)
		--[+ Complete 100 Missions as a Zealot. +]-- руоф Выполнить Изувером задания: 100.
		["loc_achievement_missions_zealot_2_x_description"] = {
			en = "Complete "..CNumb("{target}", "target_rgb").." Missions as a "..CKWord("Zealot", "cls_zea_rgb")..".",
			ru = "Пройдите "..CNumb("{target}", "target_rgb").." миссий "..CKWord("Изувером", "cls_zea2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("狂信徒", "cls_zea_rgb_tw").." 完成 "..CNumb("{target}", "target_rgb").." 項任務。",
		},
	--[+ Praise the God-Emperor! (1-3) +]-- руоф Хвала Богу-Императору! (1-3) -- 讚頌神皇！ (1-3)
		--[+ As a Zealot, complete at least one Mission of each type. +]-- руоф Выполнить Изувером по меньшей мере одно задание каждого типа.
		["loc_achievement_missions_zealot_2_objective_1_description"] = {
			en = "As a "..CKWord("Zealot", "cls_zea_rgb")..", complete at least "..CNumb("1", "n_1_rgb").." Mission of each type.",
			ru = "Пройдите "..CKWord("Изувером", "cls_zea2_rgb_ru").." как минимум "..CNumb("1", "n_1_rgb").." миссию каждого типа.",
		},
		--[+ As a Zealot, complete a Mission of each type on Malice Threat or higher. +]--
		["loc_achievement_missions_zealot_2_objective_2_description"] = {
			en = "As a "..CKWord("Zealot", "cls_zea_rgb")..", complete "..CNumb("1", "n_1_rgb").." Mission of each type on "..CKWord("Malice", "malice_rgb").." Threat or higher.",
			ru = "Пройдите "..CKWord("Изувером", "cls_zea2_rgb_ru").." "..CNumb("1", "n_1_rgb").." миссию каждого типа на сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше.",
		},
		--[+ As a Zealot, complete a Mission of each type on Heresy Threat or higher. +]--
		["loc_achievement_missions_zealot_2_objective_3_description"] = {
			en = "As a "..CKWord("Zealot", "cls_zea_rgb")..", complete "..CNumb("1", "n_1_rgb").." Mission of each type on "..CKWord("Heresy", "heresy_rgb").." Threat or higher.",
			ru = "Пройдите "..CKWord("Изувером", "cls_zea2_rgb_ru").." "..CNumb("1", "n_1_rgb").." миссию каждого типа на сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше.",
		},
	--[+ Prove Your Worth (1-5) +]-- руоф Докажи, чего стоишь (1-5) -- 證明你的價值 (1-5)
	--[+ Fight the Good Fight (1-5) +]-- руоф Сражайся достойно (1-5) -- 為正義而戰 (1-5)
	--[+ First Steps (1-2) +]-- руоф Первые шаги (1-2) -- 首要步驟 (1-2)
	--[+ Promotion Material (1-2) +]-- руоф Материалы пропаганды (1-2) -- 樹立榜樣 (1-2)
	--[+ For The Emperor (1-3) +]-- руоф За императора (1-3) -- 為了皇帝 (1-3)
		--[+ Complete the following Penances as the Zealot. +]-- руоф Выполнить следующие искупления за Изувера.
		["loc_achievement_group_zealot_2_description"] = {
			en = "Complete the following Penances as the "..CKWord("Zealot", "cls_zea_rgb")..".",
			ru = "Выполните следующие Искупления "..CKWord("Изувером", "cls_zea2_rgb_ru")..".",
		},
	--[+ Find Their Weakness +]-- руоф Узнай их слабости
	["loc_achievement_zealot_2_medium_1_name"] = {
		ru = "Найди их слабости",
		["zh-tw"] = "洞悉弱點",
	},
		--[+ On Malice Threat or higher, kill 75 Stunned enemies with Critical Hits. +]-- руоф При угрозе «Злоба» или выше убейте оглушенных врагов (75) критическими ударами.
		["loc_achievement_zealot_2_medium_1_description"] = {
			en = "On "..CKWord("Malice", "malice_rgb").." Threat or higher, kill "..CNumb("{target}", "target_rgb").." "..CKWord("Stunned", "Stunned_rgb").." enemies with "..CKWord("Critical Hits", "Crit_hits_rgb")..".",
			ru = "На сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, убейте "..CNumb("{target}", "target_rgb").." "..CKWord("ошеломлённых", "oshelomlennyh_rgb_ru").." врагов "..CKWord("критическими ударами", "krit_udarami_rgb_ru")..".",
			-- ["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，\n"
				-- .."使用 "..CKWord("", "Crit_k_rgb_tw").." 共 "..CNumb("{target}", "target_rgb").." 名處於 "..CKWord("", "Staggered_rgb_tw").." 的敵人。",
		},
	--[+ Master Your Tools +]-- руоф Знай свое дело
	["loc_achievement_zealot_2_hard_1_name"] = {
		ru = "Знай своё дело",
		["zh-tw"] = "掌握工具",
	},
		--[+ On Heresy Threat or higher, kill 75 Elite or Specialist enemies with Powered Melee Attacks (Chain or Power weapons). +]-- руоф При угрозе «Ересь» или выше убейте элитных врагов или специалистов (75) усиленными атаками в ближнем бою (цепным или психосиловым оружием).
		["loc_achievement_zealot_2_hard_1_description"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, kill "..CNumb("{target}", "target_rgb").." Elite or Specialist enemies with Powered Melee Attacks using a Chain or Power weapons.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, убейте "..CNumb("{target}", "target_rgb").." элитных врагов или специалистов в ближнем бою специальными атаками цепного или силового оружия.",
			-- ["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，\n"
				-- .."使用特殊攻擊（鏈鋸系列、上古神刃），\n"
				-- .."擊殺 "..CNumb("{target}", "target_rgb").." 名精英或專家敵人。",
		},
	--[+ Sainted Path (1-3) +]-- руоф Священный путь (1-3) -- 朝聖之路 (1-3)
		--[+ Complete the following Penances as the Zealot. +]-- руоф Выполнить следующие искупления за Изувера.
		["loc_achievement_group_class_zealot_2_description"] = {
			en = "Complete the following Penances as the "..CKWord("Zealot", "cls_zea_rgb")..".",
			ru = "Выполните следующие Искупления "..CKWord("Изувером", "cls_zea2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("狂信徒", "cls_zea_rgb_tw").." 完成以下苦修。",
		},
	--[+ Up Close and Personal +]-- руоф С близкого расстояния
	["loc_achievement_zealot_2_not_use_ranged_attacks_name"] = {
		ru = "Лицом к лицу",
		["zh-tw"] = "零距離接觸",
	},
		--[+ Complete a full Mission on Malice Threat or higher without firing a shot. +]-- руоф При угрозе «Злоба» или выше полностью завершите задание, не сделав ни одного выстрела.
		["loc_achievement_zealot_2_not_use_ranged_attacks_description"] = {
			en = "Complete a full Mission on "..CKWord("Malice", "malice_rgb").." Threat or higher without firing a shot.",
			ru = "Пройдите полностью миссию на сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, не сделав ни одного выстрела.",
			["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，\n"
				.."全程參與任務且不使用任何遠程攻擊。",
		},
	--[+ Just A Flesh Wound +]-- руоф Просто царапина -- 只是皮外傷
		--[+ Complete a full mission on Heresy Threat or higher in under 20 minutes, with less than a Wound's worth of Health remaining for 75% of the time. +]--
		["loc_achievement_zealot_2_health_on_last_segment_enough_during_mission_description"] = {
			en = "Complete a full mission on "..CKWord("Heresy", "heresy_rgb").." Threat or higher in under "..CNumb("{time_window}", "time_wind_rgb").." minutes, with less than a "..CKWord("Wound", "Wound_rgb")..CNumb("'s", "n__s_rgb").." worth of "..CKWord("Health", "Health_rgb").." remaining for "..CNumb("{health}%", "health_pc_rgb").." of the time.",
			ru = "Пройдите полностью миссию на сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, менее чем за "..CNumb("{time_window}", "time_wind_rgb").." минут, при этом "..CNumb("{health}%", "health_pc_rgb").." времени у вас должно быть не более одного сегмента "..CKWord("здоровья", "zdorovia_rgb_ru")..".",
			["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，在 "..CNumb("{time_window}", "time_wind_rgb").." 分鐘內完成整場任務，\n"
				.."且其中 "..CNumb("{health}%", "health_pc_rgb").." 的時間，只有一格 "..CKWord("最大生命", "Health_rgb_tw").."。", --??? \n
		},
	--[+ Zealot Master of War +]-- руоф Изувер — знаток войны

		--[+ ABILITIES - СПОСОБНОСТИ - 技能 +]--
	--[+ Control Crowds +]-- руоф Сдерживание толпы
	["loc_achievement_zealot_2_easy_1_name"] = {
		ru = "Контроль толп",
		["zh-tw"] = "群體控制",
	},
		--[+ Stun 1500 enemies using Stun Grenades or Stunstorm Grenades. +]-- руоф Оглушите врагов (1500) оглушающими гранатами.
		["loc_achievement_zealot_2_easy_1_fix_description"] = {
			en = CKWord("Stun", "Stun_rgb").." "..CNumb("{target}", "target_rgb").." enemies using "..CKWord("Stun Grenades", "shock_grens1_rgb").." or "..CKWord("Stunstorm Grenades", "shock_grens_rgb")..".",
			ru = CKWord("Оглушите", "Oglushite_rgb_ru").." "..CNumb("{target}", "target_rgb").." врагов, используя "..CKWord("Оглушающую гранату", "shock_gren1_rgb_ru").." или "..CKWord("Оглушающе-штурмовую гранату", "shock_gren0_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "shock_gren1_rgb_tw").."』或『"..CKWord("", "shock_gren0_rgb_tw").."』，\n"
				-- .."暈眩 "..CNumb("{target}", "target_rgb").." 名敵人。",
		},
	--[+ Stay Strong +]-- руоф Будь сильным
	["loc_achievement_zealot_2_easy_2_name"] = {
		["zh-tw"] = "保持堅強",
	},
		--[+ Replenish 7500 Toughness using Chastise the Wicked or Fury of the Faithful. +]-- руоф Восстановите стойкость «Карой для нечестивых» 7500 р.
		["loc_achievement_zealot_2_easy_2_fix_description"] = {
			en = "Replenish "..CNumb("{target}", "target_rgb").." "..CKWord("Toughness", "Toughness_rgb").." using "..CKWord("Chastise the Wicked", "chast_wckd_rgb").." or "..CKWord("Fury of the Faithful", "fury_faithful_rgb").." Ability.",
			ru = "Восстановите "..CNumb("{target}", "target_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru")..", используя способности "..CKWord("Кара нечестивых", "chast_wckd_rgb_ru").." или "..CKWord("Ярость верующего", "fury_faithful_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "chastise_wicked_rgb_tw").."』或『"..CKWord("", "fury_faithful_rgb_tw").."』恢復 "..CNumb("{target}", "target_rgb").." 點 "..CKWord("", "Toughness_rgb_tw").."。",
		},
	--[+ Unseen Assassin +]-- руоф Незримый убийца
	["loc_achievement_zealot_elite_or_special_kills_with_shroudfield_name"] = {
		["zh-tw"] = "隱形刺客",
	},
		--[+ Kill 150 Specialists or Elites by backstabbing them while using Shroudfield. +]-- руоф Убейте особых или элитных врагов (150) ответным ударом с помощью «Покрова».
		["loc_achievement_zealot_elite_or_special_kills_with_shroudfield_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." Specialists or Elites by backstabbing them while using "..CKWord("Shroudfield", "shroudf_rgb").." Ability.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." элитных врагов или специалистов ударом в спину под действием способности "..CKWord("Покров", "shroudf_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "shroudf_rgb_tw").."』技能期間，\n"
				-- .."以背刺擊殺 "..CNumb("{target}", "target_rgb").." 名精英或專家敵人。",
		},
	--[+ Inspiring Oratory +]-- руоф Вдохновляющая речь
	["loc_achievement_zealot_team_toughness_restored_with_chorus_name"] = {
		["zh-tw"] = "激勵演說",
	},
		--[+ Restore 7500 toughness to other players using Chorus of Spir_I_tual Fortitude. +]-- руоф Восстановите другим игрокам 7500 стойкости с помощью «Хор духовной стойкости».
		["loc_achievement_zealot_team_toughness_restored_with_chorus_description"] = {
			en = "Restore "..CNumb("{target}", "target_rgb").." "..CKWord("Toughness", "Toughness_rgb").." to other players using "..CKWord("Chorus of Spiritual Fortitude", "chorusosf_rgb").." Ability.",
			ru = "Восстановите другим игрокам "..CNumb("{target}", "target_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." с помощью способности "..CKWord("Хор духовной стойкости", "chorusosf_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "chorusosf_rgb_tw").."』，\n"
					-- .."恢復隊友共計 "..CNumb("{target}", "target_rgb").." 點 "..CKWord("", "Toughness_rgb_tw").."。",
		},
	--[+ Righteous Anger +]-- руоф Праведный гнев
	["loc_achievement_zealot_elite_or_special_kills_during_fanatic_rage_name"] = {
		["zh-tw"] = "正義之怒",
	},
		--[+ Kill 2000 enemies while in Fury. +]-- руоф Убейте врагов (2000), находясь под действием «Ярости».
		["loc_achievement_zealot_elite_or_special_kills_during_fanatic_rage_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies while you under the effect of "..CKWord("Fury", "fanrage_rgb").." from the "..CKWord("Blazing Piety", "blazingp_rgb").." Keystone.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов, находясь под действием эффекта "..CKWord("Ярость", "fanrage_rgb_ru").." от ключевого таланта "..CKWord("Пылающая благочестивость", "blazingp_rgb_ru")..".",
			-- ["zh-tw"] = "在『"..CKWord("", "fanrage_rgb_tw").."』發動期間，\n"
				-- .."擊殺 "..CNumb("{target}", "target_rgb").." 名敵人，\n"
				-- .."該效果來自 "..CKWord("", "KeyStone_p_rgb_tw").."『"..CKWord("", "blazingp_rgb_tw").."』。",
		},
	--[+ Lethal Pursuit +]-- руоф Смертоносное преследование
	["loc_achievement_zealot_kills_during_movement_keystone_activated_name"] = {
		["zh-tw"] = "致命追緝",
	},
	--[+ Kill 250 Specialist and Elite enemies while at 15 stacks of Inexorable Judgement or above. +]-- руоф Убейте особых и элитных врагов (250), имея не менее 15 зарядов «Безжалостного приговора».
	["loc_achievement_zealot_kills_during_movement_keystone_activated_description"] = {
		en = "Kill "..CNumb("{target}", "target_rgb").." Specialist and Elite enemies while at "..CNumb("15", "n_15_rgb").." or more "..CKWord("Momentum", "Momentum_rgb").." Stacks from "..CKWord("Inexorable Judgement", "inexor_rgb").." Keystone.",
		ru = "Убейте "..CNumb("{target}", "target_rgb").." элитных врагов или специалистов, имея не менее "..CNumb("15", "n_15_rgb").." зарядов "..CKWord("Моментума", "Momentum_rgb_ru").." от ключевого таланта "..CKWord("Неумолимый приговор", "inexor_rgb_ru")..".",
		-- ["zh-tw"] = "擁有 "..CNumb("15", "n_15_rgb").." 層『"..CKWord("", "momentum_rgb_tw").."』時，擊殺 "..CNumb("{target}", "target_rgb").." 名精英或專家敵人，\n"
			-- .."來源為"..CKWord("", "KeyStone_p_rgb_tw").."『"..CKWord("", "inexor_rgb_tw").."』。",
	},
	--[+ Blessed be Thine Aim +]-- руоф Благословен будь твой прицел
	["loc_achievement_zealot_elite_or_special_kills_with_blade_of_faith_name"] = {
		ru = "Да будет благословенна цель твоя",
		["zh-tw"] = "聖佑汝之瞄準",
	},
	--[+ Kill 500 Specialist and Elites using Blades of Faith. +]-- руоф Убейте особых и элитных врагов (500) с помощью «Клинков веры».
	["loc_achievement_zealot_elite_or_special_kills_with_blade_of_faith_description"] = {
		en = "Kill "..CNumb("{target}", "target_rgb").." Specialist and Elites using "..CKWord("Blades of Faith", "klinvery_rgb").." Blitz.",
		ru = "Убейте "..CNumb("{target}", "target_rgb").." элитных врагов или специалистов используя блиц "..CKWord("Клинки веры", "klinvery_rgb_ru")..".",
		-- ["zh-tw"] = "使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "klinvery_rgb_tw").."』擊殺 "..CNumb("{target}", "target_rgb").." 名精英或特殊敵人。",
	},
	--[+ Purging Flames +]-- руоф Очищающее пламя
	["loc_achievement_zealot_kills_with_fire_grenade_name"] = {
		["zh-tw"] = "淨化烈焰",
	},
		--[+ Burn 2000 enemies using the Immolation Grenade. +]-- руоф Сожгите врагов (2000) с помощью «Жертвенной гранаты».
		["loc_achievement_zealot_kills_with_fire_grenade_description"] = {
			en = "Burn "..CNumb("{target}", "target_rgb").." enemies using the "..CKWord("Immolation Grenade", "fire_gren_rgb")..".",
			ru = "Сожгите "..CNumb("{target}", "target_rgb").." врагов с помощью "..CKWord("Сжигающей гранаты", "fire_gren_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "fire_gren_rgb_tw").."』燒死 "..CNumb("{target}", "target_rgb").." 名敵人。",
		},
	--[+ Behind Enemy Lines +]-- руоф В тылу врага
	["loc_achievement_zealot_aura_backstab_kills_while_alone_name"] = {
		["zh-tw"] = "深入敵後",
	},
		--[+ Kill 7500 enemies while under the effect of Zealous. Kills made by allies in coherency with you also count. +]--
		["loc_achievement_zealot_aura_stamina_kills_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies while under the effect of "..CKWord("Zealous", "zealous_rgb").." Aura. Kills made by Allies in "..CKWord("Coherency", "Coherency_rgb").." with you also count.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов  под эффектом ауры "..CKWord("Ревностный", "zealous_rgb_ru")..". Убийства союзников, находящихся под действием "..CKWord("сплочённости", "splochennosti_rgb_ru").." с вами, тоже учитываются.",
			-- ["zh-tw"] = "處於 "..CKWord("", "Aura_p_rgb_tw").."『"..CKWord("", "Coherency_rgb_tw").."』狀態且未受到『"..CKWord("", "loner_rgb_tw").."』光環時，\n"
				-- .."背刺擊殺 "..CNumb("{target}", "target_rgb").." 名遠程武器敵人。",
		},
	--[+ Test of Faith +]-- руоф Испытание веры
	["loc_achievement_zealot_aura_toughness_damage_reduced_name"] = {
		["zh-tw"] = "信仰之試",
	},
		--[+ Reduce a total of 1500 Toughness Damage to allies in coherency under the effect of Benediction. +]-- руоф Снизьте урон стойкости союзникам под воздействием «Сплоченности» (суммарно 1500), находясь под действием «Благословения».
		["loc_achievement_zealot_aura_toughness_damage_reduced_description"] = {
			en = "Reduce a total of "..CNumb("{target}", "target_rgb").." "..CKWord("Toughness Damage", "Tghns_dmg_rgb").." to Allies in "..CKWord("Coherency", "Coherency_rgb").." under the effect of "..CKWord("Benediction", "benedict_rgb").." Aura.",
			ru = "Снизьте в общей сложности "..CNumb("{target}", "target_rgb").." "..CKWord("урона стойкости", "stoikosti_urona_rgb_ru").." союзников, находящихся под действием "..CKWord("сплочённости", "splochennosti_rgb_ru")..", с помощью ауры "..CKWord("Благословение", "benedict_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Aura_p_rgb_tw").."『"..CKWord("", "benedict_rgb_tw").."』光環，\n"
				-- .."與隊友處於『"..CKWord("", "Coherency_rgb_tw").."』時，減少『"..CKWord("", "Toughness_dmg_rgb_tw").."』共 "..CNumb("{target}", "target_rgb").." 點。",
		},
	--[+ Trust in the Emperor +]-- руоф Верьте в Императора
	["loc_achievement_zealot_aura_corruption_healed_name"] = {
		ru = "Верь в Императора",
		["zh-tw"] = "相信帝皇",
	},
		--[+ Heal 5000 Corruption Damage to allies in coherency under the effect of Beacon of Purity. +]-- руоф Исцелите урон скверной союзникам под воздействием «Сплоченности» (5000), находясь под действием «Маяка непорочности».
		["loc_achievement_zealot_aura_corruption_healed_description"] = {
			en = "Heal "..CNumb("{target}", "target_rgb").." "..CKWord("Corruption Damage", "Corruptdmg_rgb").." to Allies in "..CKWord("Coherency", "Coherency_rgb").." under the effect of "..CKWord("Beacon of Purity", "beaconop_rgb").." Aura.",
			ru = "Исцелите "..CNumb("{target}", "target_rgb").." "..CKWord("урона от порчи", "porchi_urona_rgb_ru").." союзникам под действием "..CKWord("сплочённости", "splochennosti_rgb_ru").." с помощью эффекта ауры "..CKWord("Маяк очищения", "beaconop_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Aura_p_rgb_tw").."『"..CKWord("", "beaconop_rgb_tw").."』，並處於『"..CKWord("", "Coherency_rgb_tw").."』狀態下，\n"
				-- .."幫隊友恢復 "..CNumb("{target}", "target_rgb").." 點『"..CKWord("", "Corruption_i_rgb_tw").."』。",
		},
	--[+ Channel Your Rage +]-- руоф Направь свою ярость
	["loc_achievement_zealot_2_medium_2_name"] = {
		["zh-tw"] = "引導憤怒",
	},
		--[+ On Malice Threat or higher, kill 1000 enemies with Melee Attacks whilst at at least 3 stacks of Martydom. +]-- руоф При угрозе «Злоба» или выше убейте врагов (1000) в ближнем бою, сохраняя не менее 3 ед. заряда «Мученичества».
		["loc_achievement_zealot_2_medium_2_description"] = {
			en = "On "..CKWord("Malice", "malice_rgb").." Threat or higher, kill "..CNumb("{target}", "target_rgb").." enemies with Melee Attacks while having at least "..CNumb("3", "n_3_rgb").." Stacks of "..CKWord("Martydom", "martydom_rgb").." Keystone.",
			ru = "На сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, убейте "..CNumb("{target}", "target_rgb").." врагов в ближнем бою, пока у вас есть хотя бы "..CNumb("3", "n_3_rgb").." заряда "..CKWord("Мученичества", "martydom_rgb_ru")..".",
			-- ["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，\n"
				-- .."於自身擁有 "..CNumb("3", "n_3_rgb").." 層以上 "..CKWord("", "KeyStone_p_rgb_tw").."『"..CKWord("", "martydom_rgb_tw").."』時，\n"
				-- .."以近戰擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。",
		},
	--[+ Have Faith +]-- руоф Не теряй веру
	["loc_achievement_zealot_2_hard_2_name"] = {
		ru = "Веруй",
		["zh-tw"] = "心懷信仰",
	},
		--[+ On Heresy Threat or higher, using Chastise the Wicked or Fury of the Faithful, dash towards a targeted enemy that is wielding a ranged weapon, 40 times. +]-- руоф Используя «Кару для нечестивых», сделайте рывок в сторону противника с дистанционным оружием при угрозе «Ересь» и выше 40 р.
		["loc_achievement_zealot_2_hard_2_fix_description"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, using "..CKWord("Chastise the Wicked", "chast_wckd_rgb").." or "..CKWord("Fury of the Faithful", "fury_faithful_rgb").." Ability, dash towards a targeted enemy that is wielding a Ranged weapon, "..CNumb("{target}", "target_rgb").." times.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, используя способности "..CKWord("Пылающая благочестивость", "chast_wckd_rgb_ru").." или "..CKWord("Ярость верующего", "fury_faithful_rgb_ru")..", сделайте рывок к врагу у которого в руках дальнобойное оружие. Выполните это задание "..CNumb("{target}", "target_rgb").." раз.",
			-- ["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，\n"
				-- .."使用 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "chastise_wicked_rgb_tw").."』或『"..CKWord("", "fury_faithful_rgb_tw").."』，\n"
				-- .."衝刺靠近正在拿遠程武器的敵人旁，共需完成 "..CNumb("{target}", "target_rgb").." 次。",
		},
	--[+ Buying Time +]-- руоф Передышка
	["loc_achievement_zealot_2_stagger_sniper_with_grenade_distance_name"] = {
		["zh-tw"] = "爭取時間",
	},
		--[+ Using a Stun Grenade or Stunstorm Grenades, hit an enemy sniper more than 40 metres away. +]-- руоф Поразите вражеского снайпера на расстоянии более 40 м, используя оглушающую гранату.
		["loc_achievement_zealot_2_stagger_sniper_with_grenade_distance_fix_description"] = {
			en = "Using a "..CKWord("Stun Grenades", "shock_grens1_rgb").." or "..CKWord("Stunstorm Grenades", "shock_grens_rgb")..", hit an enemy sniper more than "..CNumb("{target}", "target_rgb").." meters away.",
			ru = "Используя "..CKWord("Оглушающую гранату", "shock_gren1_rgb_ru").." или "..CKWord("Оглушающе-штурмовую гранату", "shock_gren0_rgb_ru")..", поразите вражеского снайпера на расстоянии более "..CNumb("{target}", "target_rgb").." метров.",
			-- ["zh-tw"] = "使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "shock_gren1_rgb_tw").."』或『"..CKWord("", "shock_gren0_rgb_tw").."』，\n"
				-- .."擊中距離超過 "..CNumb("{target}", "target_rgb").." 公尺的敵方狙擊手。",
		},
	--[+ Abhor the Mutant +]-- руоф Презирай Мутантов
	["loc_achievement_zelot_2_kill_mutant_charger_with_melee_while_dashing_name"] = {
		ru = "Презри мутанта",
		["zh-tw"] = "憎恨變種人",
	},
		--[+ While Dashing with Chastise The Wicked or Fury of the Faithful, kill a Mutant with a Melee Attack. +]-- руоф Убейте мутанта атакой в ближнем бою во время рывка, пока действует «Кара для нечестивых».
		["loc_achievement_zealot_2_kill_mutant_charger_with_melee_while_dashing_fix_description"] = {
			en = "While Dashing with "..CKWord("Chastise the Wicked", "chast_wckd_rgb").." or "..CKWord("Fury of the Faithful", "fury_faithful_rgb").." Ability, kill a Mutant with a Melee Attack.",
			ru = "Во время рывка, с помощью способностей "..CKWord("Пылающая благочестивость", "chast_wckd_rgb_ru").." или "..CKWord("Ярость верующего", "fury_faithful_rgb_ru")..", убейте Мутанта атакой ближнего боя.",
			-- ["zh-tw"] = "在 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "chastise_wicked_rgb_tw").."』或『"..CKWord("", "fury_faithful_rgb_tw").."』發動時，\n"
				-- .."以近戰攻擊擊殺一個變種人。",
		},
	--[+ Shocking Stuff +]-- руоф Шокирующая штучка
	["loc_achievement_zealot_2_kills_of_shocked_enemies_last_15_name"] = {
		["zh-tw"] = "震撼之擊",
	},
		--[+ On Malice Threat or higher, kill 40 enemies stunned by your grenades, within 10s. +]-- руоф При угрозе «Злоба» или выше убейте врагов (40), оглушенных вашими гранатами, за 10 с.
		["loc_achievement_zealot_2_kills_of_shocked_enemies_last_15_fix_description"] = {
			en = "On "..CKWord("Malice", "malice_rgb").." Threat or higher, Kill "..CNumb("{target}", "target_rgb").." enemies "..CKWord("Stunned", "Stunned_rgb").." by your grenades, within "..CNumb("{time_window}", "time_wind_rgb").." seconds.",
			ru = "На сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, убейте "..CNumb("{target}", "target_rgb").." врагов, "..CKWord("оглушённых", "oglushennyh_rgb_ru").." вашими гранатами, в течение "..CNumb("{time_window}", "time_wind_rgb").." секунд.",
			-- ["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，於 "..CNumb("{time_window}", "time_wind_rgb").." 秒內擊殺 "..CNumb("{target}", "target_rgb").." 名，\n"
				-- .."被 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "shock_gren0_rgb_tw").."』、『"..CKWord("", "shock_gren1_rgb_tw").."』"..CKWord("", "Staggers_rgb_tw").." 的敵人。",
		},
	--[+ There is Nothing But the Abyss... +]-- руоф Есть только бездна...
	["loc_achievement_zealot_2_healed_up_after_resisting_death_name"] = {
		ru = "Нет ничего, кроме Бездны...",
		["zh-tw"] = "唯有深淵......",
	},
		--[+ On Heresy threat or higher, heal to 25 Health with life gained solely from the Holy Revenant Talent. +]-- руоф При угрозе «Ересь» или выше восстановите 25% здоровья исключительно за счет таланта «Святой призрак».
		["loc_achievement_zealot_2_healed_up_after_resisting_death_description"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." threat or higher, heal to "..CNumb("{target}", "target_rgb")..CNumb("%", "pc_rgb").." "..CKWord("Health", "Health_rgb").." with life gained solely from the "..CKWord("Holy Revenant", "holy_revenant_rgb").." Passive talent.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, вылечите до "..CNumb("{target}", "target_rgb")..CNumb("%", "pc_rgb").." "..CKWord("здоровья", "zdorovia_rgb_ru").." за счёт жизни, полученной исключительно от пассивного таланта "..CKWord("Святой призрак", "holy_revenant_rgb_ru")..".",
			-- ["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，\n"
				-- .."透過 "..CKWord("", "Passive_p_rgb_tw").."『"..CKWord("", "holy_revenant_rgb_tw").."』回血，將『"..CKWord("", "Health_rgb_tw").."』恢復至 "..CNumb("{target}", "target_rgb")..CNumb("%", "pc_rgb").."。",
		},


-- --[+ ++PSYKER - ПСАЙКЕР++ +]--
	["loc_class_psyker_title"] = {
		en = CKWord("Psyker", "cls_psy_rgb"),
		ru = CKWord("Псайкер", "cls_psy_rgb_ru"),
		["zh-tw"] = CKWord("靈能者", "cls_psy_rgb_tw"),
	},
		--[+ PROGRESSION - ПРОГРЕСС - 進度 +]--
	--[+ Mind over Matter (1-6) +]-- руоф Разум превыше материи (1-6) -- 心勝於物 (1-6)
		--[+ Reach Trust Level _ as a Psyker. +]-- руоф Заслужить уровень доверия _, играя за Псайкера.
	["loc_achievement_rank_psyker_2_x_description"] = {
		en = "Reach Trust Level "..CNumb("{target}", "target_rgb").." as a "..CKWord("Psyker", "cls_psy_rgb")..".",
		ru = "Достигните "..CNumb("{target}", "target_rgb").." уровня доверия "..CKWord("Псайкером", "cls_psy2_rgb_ru")..".",
		["zh-tw"] = "使用 "..CKWord("靈能者", "cls_psy_rgb_tw").." 達到信任等級 "..CNumb("{target}", "target_rgb").." 。",
	},
	--[+ Lifeleech (1-5) +]-- руоф Похититель жизни (1-5) -- 生命榨取 (1-5)
		--[+ Complete _ Missions as a Psyker. +]-- руоф Выполнить Псайкером задания: _.
		["loc_achievement_missions_psyker_2_x_description"] = {
			en = "Complete "..CNumb("{target}", "target_rgb").." Missions as a "..CKWord("Psyker", "cls_psy_rgb")..".",
			ru = "Пройдите "..CNumb("{target}", "target_rgb").." миссий "..CKWord("Псайкером", "cls_psy2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("靈能者", "cls_psy_rgb_tw").." 完成 "..CNumb("{target}", "target_rgb").." 項任務。",
		},
	--[+ Touch the Void (1-3) +]-- руоф Прикоснись к пустоте (1-3) -- 觸碰虛空 (1-3)
		--[+ As a Psyker, complete at least one Mission of each type. +]-- руоф Выполнить Псайкером по меньшей мере одно задание каждого типа.
		["loc_achievement_missions_psyker_2_objective_1_description"] = {
			en = "As a "..CKWord("Psyker", "cls_psy_rgb")..", complete at least "..CNumb("1", "n_1_rgb").." Mission of each type.",
			ru = "Пройдите "..CKWord("Псайкером", "cls_psy2_rgb_ru").." как минимум "..CNumb("1", "n_1_rgb").." миссию каждого типа.",
			["zh-tw"] = "使用 "..CKWord("靈能者", "cls_psy_rgb_tw").."，完成以下任務 "..CNumb("1", "n_1_rgb").." 次。",
		},
		--[+ As a Psyker, complete a Mission of each type on Malice Threat or higher. +]-- руоф Выполнить Псайкером по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
		["loc_achievement_missions_psyker_2_objective_2_description"] = {
			en = "As a "..CKWord("Psyker", "cls_psy_rgb")..", complete "..CNumb("1", "n_1_rgb").." Mission of each type on "..CKWord("Malice", "malice_rgb").." Threat or higher.",
			ru = "Пройдите "..CKWord("Псайкером", "cls_psy2_rgb_ru").." "..CNumb("1", "n_1_rgb").." миссию каждого типа на сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше.",
		},
		--[+ As a Psyker, complete a Mission of each type on Heresy Threat or higher. +]-- руоф Выполнить Псайкером по меньшей мере одно задание каждого типа при угрозе «Ересь» или выше.
		["loc_achievement_missions_psyker_2_objective_3_description"] = {
			en = "As a "..CKWord("Psyker", "cls_psy_rgb")..", complete "..CNumb("1", "n_1_rgb").." Mission of each type on "..CKWord("Heresy", "heresy_rgb").." Threat or higher.",
			ru = "Пройдите "..CKWord("Псайкером", "cls_psy2_rgb_ru").." "..CNumb("1", "n_1_rgb").." миссию каждого типа на сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше.",
		},
	--[+ Prove Your Worth (1-5) +]-- руоф Докажи, чего стоишь (1-5) -- 證明你的價值 (1-5)
	--[+ Fight the Good Fight (1-5) +]-- руоф Сражайся достойно (1-5) -- 為正義而戰 (1-5)
	--[+ First Steps (1-2) +]-- руоф Первые шаги (1-2) -- 首要步驟 (1-2)
	--[+ Promotion Material (1) +]-- руоф Материалы пропаганды (1)
	--[+ For The Emperor (1-3) +]-- руоф За императора (1-3) -- 為了皇帝 (1-3)
		--[+ Complete the following Penances as the Psyker. +]-- руоф Выполнить следующие искупления за Псайкера.
		["loc_achievement_group_psyker_2_description"] = {
			en = "Complete the following Penances as the "..CKWord("Psyker", "cls_psy_rgb")..".",
			ru = "Выполните следующие Искупления "..CKWord("Псайкером", "cls_psy2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("靈能者", "cls_psy_rgb_tw").." 完成以下苦修。",
		},
	--[+ Unleash the Warp - Высвободи варп +]-- руоф Извергни варп
	["loc_achievement_psyker_2_medium_2_name"] = {
		ru = "Высвободи варп",
		["zh-tw"] = "亞空間釋放",
	},
		--[+ On Malice Threat or higher, kill 2500 enemies with Warp attacks. +]-- руоф При угрозе «Злоба» или выше убейте врагов (2500) варп-атаками.
		["loc_achievement_psyker_2_medium_2_description"] = {
			en = "On "..CKWord("Malice", "malice_rgb").." Threat or higher, kill "..CNumb("{target}", "target_rgb").." enemies with Warp attacks.",
			ru = "На сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, убейте "..CNumb("{target}", "target_rgb").." врагов варп-атаками.",
			["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，\n"
				.."使用 "..CKWord("亞空間傷害", "Damagewrp_a_rgb_tw").." 擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。",
		},
	--[+ Keep Your Distance +]-- руоф Не подходи близко
	["loc_achievement_psyker_2_hard_2_name"] = {
		ru = "Держи дистанцию",
		["zh-tw"] = "保持距離",
	},
		--[+ On Heresy Threat or higher, complete 3 full Missions without being hit in melee by an Elite enemy. +]-- руоф При угрозе «Ересь» или выше полностью выполните задание 3 р., чтобы элитный враг ни разу не попал по вам в ближнем бою.
		["loc_achievement_psyker_2_hard_2_description"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, complete "..CNumb("{target}", "target_rgb").." full Missions without being hit in melee by an Elite enemy.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, пройдите полностью "..CNumb("{target}", "target_rgb").." миссии без получения ударов в ближнем бою от элитных врагов.",
			["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，\n"
				.."完成 "..CNumb("{target}", "target_rgb").." 場任務，且未曾被精英敵人以近戰攻擊命中。",
		},
	--[+ Kinetic Killer (1-3) +]-- руоф Кинетический убийца (1-3) -- 靈能殺手 (1-3)
		--[+ Complete the following Penances as the Psyker. +]-- руоф Выполните следующие искупления за Псайкера.
		["loc_achievement_group_class_psyker_2_description"] = {
			en = "Complete the following Penances as the "..CKWord("Psyker", "cls_psy_rgb")..".",
			ru = "Выполните следующие Искупления "..CKWord("Псайкером", "cls_psy2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("靈能者", "cls_psy_rgb_tw").." 完成以下苦修。",
		},
	--[+ Cliffhanger +]-- руоф Не подходи близко
	["loc_achievement_psyker_2_edge_kills_last_2_sec_name"] = {
		ru = "Неожиданный поворот",
		["zh-tw"] = "懸崖邊緣",
	},
		--[+ Kill 7 enemies within 2s by knocking them off a ledge. +]-- руоф Убейте врагов (7) за 2 с., сбросив их с уступа.
		["loc_achievement_psyker_2_edge_kills_last_2_sec_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies within "..CNumb("{time_window}", "time_wind_rgb").." seconds by knocking them off a ledge.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов в течение "..CNumb("{time_window}", "time_wind_rgb").." секунд, сбросив их с уступа.",
			["zh-tw"] = "在 "..CNumb("{time_window}", "time_wind_rgb").." 秒內，將 "..CNumb("{target}", "target_rgb").." 名敵人推落邊緣擊殺。",
		},
	--[+ Psyker Master of War +]-- руоф Псайкер — знаток войны

		--[+ ABILITIES - СПОСОБНОСТИ - 技能 +]--
	--[+ Prioritise Targets +]-- руоф Приоритетные цели -- 優先目標
		--[+ Kill 200 Elite or Specialist enemies with Brain Burst or Brain Rupture. +]-- руоф Убейте элитных врагов или специалистов (200) «Взрывом разума».
			["loc_achievement_psyker_2_easy_1_fix_description"] = {
				en = "Kill "..CNumb("{target}", "target_rgb").." Elite or Specialist enemies with "..CKWord("Brain Burst", "Brain_burst_rgb").." or "..CKWord("Brain Rupture", "Brain_rupture_rgb").." Blitz.",
				ru = "Убейте "..CNumb("{target}", "target_rgb").." элитных врагов или специалистов с помощью блица "..CKWord("Взрыв мозга", "bburst0_rgb_ru").." или "..CKWord("Разрыв мозга", "bburst1_rgb_ru")..".",
				-- ["zh-tw"] = "使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "bburst0_rgb_tw").."』或『"..CKWord("", "bburst1_rgb_tw").."』，\n"
					-- .."擊殺 "..CNumb("{target}", "target_rgb").." 名精英或專家敵人。",
			},
	--[+ Blessed by Fate +]-- руоф Хранимый судьбой
	["loc_achievement_psyker_2_easy_2_name"] = {
		ru = "Благословен судьбой",
		["zh-tw"] = "命運保佑",
	},
		--[+ Use Psykinetic's Wrath or Venting Shriek to survive Perils of the Warp 50 times. +]-- руоф Воспользуйтесь «Психокинетическим гневом» 50 р., чтобы не погибнуть от угозы варпа.
		["loc_achievement_psyker_2_easy_2_tweaked_description"] = {
			en = "Use "..CKWord("Psykinetic's Wrath", "psy_wrath_rgb").." or "..CKWord("Venting Shriek", "psy_wrath2_rgb").." Ability to survive "..CKWord("Perils of the Warp", "PerilsozWarp_rgb").." "..CNumb("{target}", "target_rgb").." times.",
			ru = "Используйте "..CNumb("{target}", "target_rgb").." раз способность "..CKWord("Гнев психокинетика", "psy_wrath_rgb_ru").." или "..CKWord("Сбрасывающий вопль", "psy_wrath2_rgb_ru")..", чтобы избежать самоподрыва от "..CKWord("Опасностей варпа", "Opasnostei_warpa_rgb_ru").." при превышении "..CNumb("100%", "pc_100_rgb").." уровня "..CKWord("опасности", "opasnosti_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "psy_wrath_rgb_tw").."』或『"..CKWord("", "psy_wrath2_rgb_tw").."』技能，\n"
					-- .."成功避免因『"..CKWord("", "Peril_rgb_tw").."』超過『"..CNumb("100%", "pc_100_rgb").."』而引發靈能爆炸。",
		},
	--[+ Power Up +]-- руоф Полный заряд -- 能量提升
	["loc_achievement_psyker_2_medium_1_name"] = {
		ru = "Пик мощи",
		["zh-tw"] = "能量提升",
	},
		--[+ On Malice Threat or higher, kill 100 Elite or Specialist enemies with Brain Burst or Brain Rupture while at maximum Warp Charges. +]-- руоф При угрозе «Злоба» или выше убейте элитных врагов или специалистов (100) «Взрывом разума» с максимальным количеством варп-зарядов.
		["loc_achievement_psyker_2_medium_1_fix_description"] = {
			en = "On "..CKWord("Malice", "malice_rgb").." Threat or higher, kill "..CNumb("{target}", "target_rgb").." Elite or Specialist enemies with "..CKWord("Brain Burst", "Brain_burst_rgb").." or "..CKWord("Brain Rupture", "Brain_rupture_rgb").." Blitz while at maximum Warp Charges.",
			ru = "На сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, убейте "..CNumb("{target}", "target_rgb").." элитных врагов или специалистов с помощью блица "..CKWord("Взрыв мозга", "bburst0_rgb_ru").." или "..CKWord("Разрыв мозга", "bburst1_rgb_ru").." пока у вас максимальное количество варп-зарядов.",
			-- ["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，\n"
					-- .."當自身亞空間充能達最大時，\n"
					-- .."使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "bburst0_rgb_tw").."』或『"..CKWord("", "bburst1_rgb_tw").."』，\n"
					-- .."擊殺 "..CNumb("{target}", "target_rgb").." 名精英或專家敵人。",
		},
	--[+ Shoot Fast +]-- руоф Стреляй от бедра
	["loc_achievement_psyker_2_hard_1_name"] = {
		ru = "Бей быстро",
		["zh-tw"] = "快槍手",
	},
		--[+ On Heresy Threat or higher, kill 25 Pox Hounds, Mutants or Scab Trappers using Brain Burst or Brain Rupture before they incapacitate you or an ally. +]-- руоф При угрозе «Ересь» или выше убейте Чумных гончих, Мутантов или Скабов-Ловушечников (25) «Взрывом разума», пока они не успели обезвредить вас или союзника.
		["loc_achievement_psyker_2_hard_1_fix_description"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, kill "..CNumb("{target}", "target_rgb").." Pox Hounds, Mutants or Scab Trappers using "..CKWord("Brain Burst", "Brain_burst_rgb").." or "..CKWord("Brain Rupture", "Brain_rupture_rgb").." Blitz before they incapacitate you or an Ally.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, убейте "..CNumb("{target}", "target_rgb").." Чумных гончих, Мутантов или Ловушечников, используя блиц "..CKWord("Взрыв мозга", "bburst0_rgb_ru").." или "..CKWord("Разрыв мозга", "bburst1_rgb_ru").." до того как они вывели из строя вас или союзника.",
			-- ["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，\n"
					-- .."使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "bburst0_rgb_tw").."』或『"..CKWord("", "bburst1_rgb_tw").."』，\n"
					-- .."在瘟疫獵犬、突變者或陷阱兵使你或隊友癱瘓前，\n"
					-- .."擊殺他們，共計 "..CNumb("{target}", "target_rgb").." 次。",
		},
	--[+ Mind Lance - Копьё разума +]-- руоф Копье разума
	["loc_achievement_psyker_elite_or_special_kills_with_assail_name"] = {
		ru = "Копьё разума",
		["zh-tw"] = "心靈之槍",
	},
		--[+ Kill 250 Specialists and Elites using Assail. +]-- руоф Убейте особых или элитных врагов (250) с помощью «Нападения».
		["loc_achievement_psyker_elite_or_special_kills_with_assail_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." Specialists and Elites using "..CKWord("Assail", "Assail_rgb")..".",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." элитных врагов или специалистов с помощью блица "..CKWord("Нападение", "Assail_rgb_ru")..".",
			["zh-tw"] = "使用『"..CKWord("攻擊", "assail_rgb_tw").."』擊殺 "..CNumb("{target}", "target_rgb").." 名精英或專家敵人。",
		},
	--[+ Perilous Focus +]-- руоф Пагубная концентрация
		--[+ Kill 40 enemies under the effects of a single Scrier's Gaze activation. +]-- руоф Убейте врагов (40), находясь под действием одного заряда «Взора Скрира».
		["loc_achievement_psyker_kills_during_overcharge_stance_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies under the effects of a single "..CKWord("Scrier's Gaze", "Scriers_gaze_rgb").." activation.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов, находясь под эффектом способности "..CKWord("Взор провидца", "Scriers_gaze_rgb_ru")..", в течение однократного её применения.",
			-- ["zh-tw"] = "單次 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "scriersgaze_rgb_tw").."』期間，擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。", -- 於同一次賽爾凝視效果期間，擊殺40名敵人。
		},
	--[+ Skilled in Psykhana +]-- руоф Знаток Псайканы -- 熟練靈能
		--[+ Kill 250 Specialists or Elites using abilities empowered by Empowered Psionics. +]-- руоф Убейте особых или элитных врагов (250) с помощью способностей, улучшенных «Усиленными псиониками».
		["loc_achievement_psyker_kills_with_empowered_abilites_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." Specialists or Elites using Abilities empowered by "..CKWord("Empowered Psionics", "empsionics_rgb").." Keystone.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." элитных врагов или специалистов с помощью способностей, усиленных ключевым талантом "..CKWord("Усиленные псионики", "empsionics_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "KeyStone_p_rgb_tw").."『"..CKWord("", "empsionics_rgb_tw").."』後的能力，\n"
					-- .."擊殺 "..CNumb("{target}", "target_rgb").." 名精英或專家敵人。",
		},
	--[+ Defy Fate +]-- руоф Брось вызов судьбе -- 抵抗命運
		--[+ Maintain 15 stacks or more of Disrupt Destiny for a total of 1800 seconds. +]-- руоф Удерживайте не менее 15 зарядов «Разрушенной судьбы» на протяжении 1800 с.
		["loc_achievement_psyker_time_at_max_unnatural_description"] = {
			en = "Maintain at least "..CNumb("15", "n_15_rgb").." "..CKWord("Precision", "Precision_rgb").." Stacks from "..CKWord("Disrupt Destiny", "disrdest_rgb").." Keystone for "..CNumb("30", "n_30_rgb").." minutes ("..CNumb("{target}", "target_rgb").." seconds).",
			ru = "Поддерживайте не менее "..CNumb("15", "n_15_rgb").." зарядов "..CKWord("меткости", "Precision_rgb_ru").." от ключевого таланта "..CKWord("Прерывание судьбы", "disrdest_rgb_ru").." на протяжении "..CNumb("30", "n_30_rgb").." минут ("..CNumb("{target}", "target_rgb").." секунд).", -- 1800 секунд ("..CNumb("{target}", "target_rgb").." секунд)
			-- ["zh-tw"] = "在 "..CKWord("", "KeyStone_p_rgb_tw").."『"..CKWord("", "disrdest_rgb_tw").."』效果下，\n"
					-- .."維持至少 "..CNumb("15", "n_15_rgb").." 層『"..CKWord("", "Precision_rgb_tw").."』狀態，累積達 "..CNumb("30", "n_30_rgb").." 分鐘。",
		},
	--[+ Mind's Aegis +]-- руоф Защита разума
	["loc_achievement_psyker_damage_blocked_with_shield_name"] = {
		ru = "Эгида разума",
		["zh-tw"] = "心靈之盾",
	},
		--[+ Absorb 150000 Damage with Telekine Shield. +]-- руоф Поглотите урон (150000) с помощью «Телекинетического щита».
		["loc_achievement_psyker_damage_blocked_with_shield_description"] = {
			en = "Absorb "..CNumb("{target}", "target_rgb").." "..CKWord("Damage", "Damage_rgb").." with "..CKWord("Telekine Shield", "telekshii_rgb").." Ability.",
			ru = "Поглотите "..CNumb("{target}", "target_rgb").." урона с помощью способности "..CKWord("Телекинетический щит", "telekshii_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "telekshii_rgb_tw").."』防護 "..CNumb("{target}", "target_rgb").." 點傷害。",
		},
	--[+ Overwhelming Presence +]-- руоф Подавляющее присутствие -- 壓倒性的存在
		--[+ Kill 2500 Elite or Specialist enemies while under the effect of Kinetic Presence. Kill made by any affected team member also count. +]-- руоф Убейте особых или элитных врагов (2500), находясь под действием «Кинетического присутствия». Убийства, совершенные любым членом команды под действием эффекта, тоже учитываются.
		["loc_achievement_psyker_team_elite_aura_kills_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." Elite or Specialist enemies while under the effect of "..CKWord("Kinetic Presence", "kinetpres_rgb").." Aura. Kill made by any affected team member also count.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." элитных врагов или специалистов, находясь под действием ауры "..CKWord("", "kinetpres_rgb_ru")..". Убийства, совершённые любым членом команды, находящимся под действием эффекта ауры, тоже учитываются.",
			-- ["zh-tw"] = "處於 "..CKWord("", "Aura_p_rgb_tw").."『"..CKWord("", "kinetpres_rgb_tw").."』期間，\n"
					-- .."擊殺 "..CNumb("{target}", "target_rgb").." 名精英或專家敵人。\n"
					-- .."隊友在此光環下的擊殺也會計算。",
		},
	--[+ Empyric Recovery +]-- руоф Эмпирическое восстановление
	["loc_achievement_psyker_team_cooldown_reduced_name"] = {
		ru = "Эмпирейское восстановление",
		["zh-tw"] = "經驗恢復",
	},
		--[+ Restore you or your allies' abilities a total of 2000 seconds faster, while under the effects of Seer's Presence. +]-- руоф Восстановите способности свои или союзников суммарно на 2000 с. быстрее, находясь под действием «Присутствия провидца».
		["loc_achievement_psyker_team_cooldown_reduced_description"] = {
			en = "Restore you or your Allies' Abilities a total of "..CNumb("{target}", "target_rgb").." seconds faster, while under the effects of "..CKWord("Seer's Presence", "seerspres_rgb").." Aura.",
			ru = "Сократите, суммарно на "..CNumb("{target}", "target_rgb").." секунд, время восстановления способностей себе или вашим союзникам с помощью эффекта ауры "..CKWord("Присутствие провидца", "seerspres_rgb_ru")..".",
			-- ["zh-tw"] = "透過 "..CKWord("", "Aura_p_rgb_tw").."『"..CKWord("", "seerspres_rgb_tw").."』效果，\n"
					-- .."為自己或隊友縮短技能冷卻時間達 "..CNumb("{target}", "target_rgb").." 秒。",
		},
	--[+ Lucky BLow +]-- руоф Счастливый удар -- 幸運一擊
		--[+ Critically strike 7500 enemies while under the effects of Prescience. Critical strikes made by any affected team member also count. +]-- руоф Нанесите врагам критические удары (7500), находясь под действием «Предвидения». Критические удары любого члена команды под действием эффекта тоже учитываются.
		["loc_achievement_psyker_team_critical_hits_description"] = {
			en = CKWord("Critically strike", "Crtcll_strk_rgb").." "..CNumb("{target}", "target_rgb").." enemies while under the effects of "..CKWord("Prescience", "prescience_rgb").." Aura. "..CKWord("Critical strikes", "Crit_strikes_rgb").." made by any affected team member also count.",
			ru = "Нанесите врагам "..CNumb("{target}", "target_rgb").." "..CKWord("критических ударов", "krit_udarov_rgb_ru")..", находясь под действием ауры "..CKWord("Предвидение", "prescience_rgb_ru")..". "..CKWord("Критические удары", "Krit_udary_rgb_ru").." любого члена команды, находящегося под действием эффекта ауры, тоже учитываются.",
			-- ["zh-tw"] = "在 "..CKWord("", "Aura_p_rgb_tw").."『"..CKWord("", "prescience_rgb_tw").."』期間，對敵人造成 "..CNumb("{target}", "target_rgb").." 次致命一擊。\n"
					-- .."隊友在此光環下造成的致命一擊也會計算。",
		},
	--[+ Charged with Purpose +]-- руоф Заряженные целью -- 壓倒性的存在
		--[+ Kill 2500 enemies stunned by your Smite. Kills made by your team members also count. +]-- руоф Убейте врагов (2500), оглушенных вашим «Сокрушением». Убийства, совершенные членами команды, тоже учитываются.
		["loc_achievement_psyker_threshold_kills_reached_with_grenade_chain_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies "..CKWord("Stunned", "Stunned_rgb").." by your "..CKWord("Smite", "Smite_rgb").." Blitz. Kills made by your team members also count.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов, "..CKWord("оглушённых", "oglushennyh_rgb_ru").." вашим блицом "..CKWord("Сокрушение", "smite_rgb_ru")..". Убийства, совершённые членами вашей команды, также учитываются.",
			-- ["zh-tw"] = "擊殺 "..CNumb("{target}", "target_rgb").." 名被 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "smite_rgb_tw").."』"..CKWord("", "Staggers_rgb_tw").." 的敵人。\n"
					-- .."由隊友擊殺的也會計算。",
		},
	--[+ Not Even Close +]-- руоф Как бы не так -- 差的遠
		--[+ Kill a pouncing Pox Hound with Brain Burst or Brain Rupture. +]-- руоф Убейте с помощью «Взрыва разума» Чумную Гончую, когда она набрасывается на вас.
		["loc_achievement_psyker_2_smite_hound_mid_leap_fix_description"] = {
			en = "Kill a pouncing Pox Hound with "..CKWord("Brain Burst", "Brain_burst_rgb").." or "..CKWord("Brain Rupture", "Brain_rupture_rgb").." Blitz.",
			ru = "Убейте, прыгнувшую Чумную гончую, с помощью блица "..CKWord("Взрыв мозга", "bburst0_rgb_ru").." или "..CKWord("Разрыв мозга", "bburst1_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "bburst0_rgb_tw").."』或『"..CKWord("", "bburst1_rgb_tw").."』，\n"
					-- .."擊殺猛撲中的瘟疫獵犬。",
		},
	--[+ Warp Battery +]-- руоф Варп-аккумулятор -- 亞空間電池
		--[+ While on Malice Threat or higher, in a single session maintain maximum Warp Charges for 120s. +]-- руоф При угрозе «Злоба» или выше в режиме одиночной игры поддерживайте максимум варп-зарядов в течение 120 с.
		["loc_achievement_psyker_2_stay_at_max_souls_for_duration_description"] = {
			en = "While on "..CKWord("Malice", "malice_rgb").." Threat or higher, in a single session maintain maximum Warp Charges for "..CNumb("{target}", "target_rgb").." seconds.",
			ru = "На сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, в течение одной миссии сохраняйте максимальное количество зарядов варпа в течение "..CNumb("{target}", "target_rgb").." секунд.",
			["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，於單場任務中持續維持最高層數亞空間充能 "..CNumb("{target}", "target_rgb").." 秒。",
		},
	--[+ Going Out With a Bang +]-- руоф Эффектный выход
	["loc_achievement_psyker_2_perils_of_the_warp_elite_kills_name"] = {
		ru = "Взрывной финал",
		["zh-tw"] = "赫然死亡",
	},
		--[+ While on Malice Threat or higher, kill 1 elite enemies with a single Perils of the Warp explosion. +]-- руоф При угрозе «Злоба» или выше убейте элитных врагов (1) за однократное применение угрозы от взрыва варпа.
		["loc_achievement_psyker_2_perils_of_the_warp_elite_kills_description"] = {
			en = "While on "..CKWord("Malice", "malice_rgb").." Threat or higher, kill "..CNumb("{target}", "target_rgb").." elite enemies with a single "..CKWord("Perils of the Warp", "PerilsozWarp_rgb").." explosion.",
			ru = "На сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, убейте "..CNumb("{target}", "target_rgb").." элитного врага с помощью самоподрыва от "..CKWord("Опасностей варпа", "Opasnostei_warpa_rgb_ru").." при превышении "..CNumb("100%", "pc_100_rgb").." уровня "..CKWord("опасности", "opasnosti_rgb_ru")..".",
			-- ["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，\n"
					-- .."利用因『"..CKWord("", "Peril_rgb_tw").."』超過『"..CNumb("100%", "pc_100_rgb").."』而引發的靈能爆炸，\n"
					-- .."擊殺 "..CNumb("{target}", "target_rgb").." 名精英敵人。",
		},
	--[+ Pick n' Mix +]-- руоф Выбирай и смешивай -- 每樣來點
		--[+ While on Heresy Threat or higher, use Brain Burst to kill 4 different Elite or Specialist enemies within 12s. +]-- руоф При угрозе «Ересь» или выше используйте «Взрыв разума», чтобы убить различных врагов (4) ранга элита или специалист за 12 с.
		["loc_achievement_psyker_2_elite_or_special_kills_with_smite_last_10_sec_description_rework"] = {
			en = "While on "..CKWord("Heresy", "heresy_rgb").." Threat or higher, use "..CKWord("Brain Burst", "Brain_burst_rgb").." Blitz to kill "..CNumb("{target}", "target_rgb").." different Elite or Specialist enemies within "..CNumb("{time_window}", "time_wind_rgb").." seconds.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, используйте блиц "..CKWord("Взрыв мозга", "bburst0_rgb_ru")..", чтобы убить "..CNumb("{target}", "target_rgb").." разных элитных врагов или специалистов в течение "..CNumb("{time_window}", "time_wind_rgb").." секунд.",
			-- ["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "bburst0_rgb_tw").."』，\n"
					-- .."在 "..CNumb("{time_window}", "time_wind_rgb").." 秒內擊殺 "..CNumb("{target}", "target_rgb").." 種不同的精英或專家敵人。",
		},
	--[+ Malleus Monstronum +]-- руоф Маллеус Монстронум -- 憎惡之錘
		--[+ On Heresy Threat or higher, kill a Monstrosity after damaging 50% of its health with your Brain Burst or Brain Rupture. +]--
		["loc_achievement_psyker_2_kill_boss_solo_with_smite_fix_description"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, kill a Monstrosity after damaging "..CNumb("50%", "pc_50_rgb").." of its "..CKWord("Health", "Health_rgb").." with your "..CKWord("Brain Burst", "Brain_burst_rgb").." or "..CKWord("Brain Rupture", "Brain_rupture_rgb").." Blitz.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, убейте Монстра после того, как вы нанесли ему не менее "..CNumb("50%", "pc_50_rgb").." урона "..CKWord("здоровью", "zdoroviu_rgb_ru").." с помощью блица "..CKWord("Взрыв мозга", "bburst0_rgb_ru").." или "..CKWord("Разрыв мозга", "bburst1_rgb_ru")..".",
			-- ["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，\n"
					-- .."使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "bburst0_rgb_tw").."』或『"..CKWord("", "bburst1_rgb_tw").."』，\n"
					-- .."對巨獸造成不少於 "..CNumb("50%", "pc_50_rgb").." 的生命值傷害，並將其擊殺。",
		},


	--[+ ++OGRYN - ОГРИН++ +]--
	["loc_class_ogryn_title"] = {
		en = CKWord("Ogryn", "cls_ogr_rgb"),
		ru = CKWord("Огрин", "cls_ogr_rgb_ru"),
		["zh-tw"] = CKWord("歐格林", "cls_ogr_rgb_ru"),
	},
		--[+ PROGRESSION - ПРОГРЕСС - 進度 +]--
	--[+ Got a Bone to Pick (1-6) +]-- руоф Крепкий орешек (1-6)
	["loc_achievement_rank_ogryn_2_x_name"] = {
		ru = "Кость в горле ({tier})",
		["zh-tw"] = "撿塊骨頭 ({tier})",
	},
		--[+ Reach Trust Level 30 as a Ogryn. +]-- руоф Получить уровень доверия 30, играя за Огрина.
		["loc_achievement_rank_ogryn_2_x_description"] = {
			en = "Reach Trust Level "..CNumb("{target}", "target_rgb").." as a "..CKWord("Ogryn", "cls_ogr_rgb")..".",
			ru = "Достигните "..CNumb("{target}", "target_rgb").." уровня доверия "..CKWord("Огрином", "cls_ogr2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("歐格林", "cls_ogr2_rgb_tw").." 達到信任等級 "..CNumb("{target}", "target_rgb").." 。",
		},
	--[+ Built Like a Tank (1) +]-- руоф Настоящий танк (1) -- 如坦克一般 (1)
	["loc_achievement_missions_ogryn_2_x_name"] = {
		ru = "Крепкий как танк ({tier})",
		["zh-tw"] = "如坦克一般 ({tier})",
	},
		--[+ Complete 100 Missions as a Ogryn. +]-- руоф Выполнить Огрином задания: 100.
		["loc_achievement_missions_ogryn_2_x_description"] = {
			en = "Complete "..CNumb("{target}", "target_rgb").." Missions as a "..CKWord("Ogryn", "cls_ogr_rgb")..".",
			ru = "Пройдите "..CNumb("{target}", "target_rgb").." миссий "..CKWord("Огрином", "cls_ogr2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("歐格林", "cls_ogr2_rgb_tw").." 完成 "..CNumb("{target}", "target_rgb").." 項任務。",
		},
	--[+ Beat-em-Up (1) +]-- руоф Всех порву/Бей их всех (1) -- 揍扁他們 (1)
	["loc_achievement_missions_ogryn_2_objective_1_name"] = {
		en = "Beat-em-Up (1)",
		ru = "Месилово (1)",
		["zh-tw"] = "揍扁他們 (1)",
	},
		--[+ As a Ogryn, complete a Mission of each type. +]-- руоф Выполнить Огрином по меньшей мере одно задание каждого типа.
		["loc_achievement_missions_ogryn_2_objective_1_description"] = {
			en = "As a "..CKWord("Ogryn", "cls_ogr_rgb")..", complete at least "..CNumb("1", "n_1_rgb").." Mission of each type.",
			ru = "Пройдите "..CKWord("Огрином", "cls_ogr2_rgb_ru").." как минимум "..CNumb("1", "n_1_rgb").." миссию каждого типа.",
		},
	--[+ Beat-em-Up (2) +]-- руоф Всех порву/Бей их всех (2) -- 揍扁他們 (2)
	["loc_achievement_missions_ogryn_2_objective_2_name"] = {
		ru = "Месилово (2)",
		["zh-tw"] = "揍扁他們 (2)",
	},
		--[+ As a Ogryn, complete a Mission of each type on Malice Threat or higher. +]-- руоф Выполнить Огрином по меньшей мере одно задание каждого типа при угрозе «Злоба» или выше.
		["loc_achievement_missions_ogryn_2_objective_2_description"] = {
			en = "As a "..CKWord("Ogryn", "cls_ogr_rgb")..", complete "..CNumb("1", "n_1_rgb").." Mission of each type on "..CKWord("Malice", "malice_rgb").." Threat or higher.",
			ru = "Пройдите "..CKWord("Огрином", "cls_ogr2_rgb_ru").." "..CNumb("1", "n_1_rgb").." миссию каждого типа на сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше.",
		},
	--[+ Beat-em-Up (3) +]-- руоф Всех порву/Бей их всех (3) -- 揍扁他們 (3)
	["loc_achievement_missions_ogryn_2_objective_3_name"] = {
		ru = "Месилово (3)",
		["zh-tw"] = "揍扁他們 (3)",
	},
		--[+ As a Ogryn, complete a Mission of each type on Heresy Threat or higher. +]-- руоф Выполнить Огрином по меньшей мере одно задание каждого типа.
		["loc_achievement_missions_ogryn_2_objective_3_description"] = {
			en = "As a "..CKWord("Ogryn", "cls_ogr_rgb")..", complete "..CNumb("1", "n_1_rgb").." Mission of each type on "..CKWord("Heresy", "heresy_rgb").." Threat or higher.",
			ru = "Пройдите "..CKWord("Огрином", "cls_ogr2_rgb_ru").." "..CNumb("1", "n_1_rgb").." миссию каждого типа на сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше.",
		},
	--[+ Prove Your Worth (1-5) +]-- руоф Докажи, чего стоишь (1-5) -- 證明你的價值 (1-5)
	--[+ Fight the Good Fight (1-5) +]-- руоф Сражайся достойно (1-5) -- 為正義而戰 (1-5)
	--[+ First Steps (1-2) +]-- руоф Первые шаги (1-2) -- 首要步驟 (1-2)
	--[+ Promotion Material (1-2) +]-- руоф Материалы пропаганды (1-2) -- 樹立榜樣 (1-2)
	--[+ For The Emperor (1-3) +]-- руоф За императора (1-3) -- 為了皇帝 (1-3)
		--[+ Complete the following Penances as the Zealot. +]-- руоф Выполнить следующие искупления за Изувера.
		["loc_achievement_group_ogryn_2_description"] = {
			en = "Complete the following Penances as the "..CKWord("Ogryn", "cls_ogr_rgb")..".",
			ru = "Выполните следующие Искупления "..CKWord("Огрином", "cls_ogr2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("歐格林", "cls_ogr2_rgb_tw").." 達到信任等級 "..CNumb("{target}", "target_rgb").." 。",
		},
	--[+ Help Everyone +]-- руоф Спаси всех
	["loc_achievement_ogryn_2_easy_1_name"] = {
		ru = "Помогай всем",
		["zh-tw"] = "樂於助人",
	},
		--[+ Revive or Assist 40 Knocked Down or Incapacitated allies. +]-- руоф Воскресите небоеспособных союзников или помогите союзникам, сбитым с ног, 40 р.
		["loc_achievement_ogryn_2_easy_1_description"] = {
			en = "Revive or Assist "..CNumb("{target}", "target_rgb").." Knocked Down or Incapacitated Allies.",
			ru = "Возродите или поднимите "..CNumb("{target}", "target_rgb")..", выведенных из строя или сбитых с ног, союзников.",
			["zh-tw"] = "救起或復活 "..CNumb("{target}", "target_rgb").." 名被擊倒或癱瘓的隊友。",
		},
	--[+ Keep Them Grounded +]-- руоф Вали их!
	["loc_achievement_ogryn_2_easy_2_name"] = {
		ru = "Не давай им встать",
		["zh-tw"] = "全部打倒",
	},
		--[+ Knock Down 5000 enemies. +]-- руоф Сбейте с ног врагов 5000 р.
		["loc_achievement_ogryn_2_easy_2_description"] = {
			en = "Knock Down "..CNumb("{target}", "target_rgb").." enemies.",
			ru = "Сбейте с ног "..CNumb("{target}", "target_rgb").." врагов.",
			["zh-tw"] = "擊倒 "..CNumb("{target}", "target_rgb").." 名敵人。",
		},
	--[+ Cleave Them Down +]-- руоф Порви их!
	["loc_achievement_ogryn_2_medium_2_name"] = {
		ru = "Кромсай их",
		["zh-tw"] = "砍翻他們",
	},
		--[+ On Malice Threat or higher, kill 2 enemies with a single Melee Attack 250 times. +]-- руоф При угрозе «Злоба» или выше 250 р. убейте врагов (2) одной атакой ближнего бой.
		["loc_achievement_ogryn_2_medium_2_description"] = {
			en = "On "..CKWord("Malice", "malice_rgb").." Threat or higher, kill "..CNumb("{amount}", "amount_var_rgb").." enemies with a single Melee Attack, "..CNumb("{target}", "target_rgb").." times.",
			ru = "На сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, убейте "..CNumb("{amount}", "amount_var_rgb").." врагов одной атакой ближнего боя "..CNumb("{target}", "target_rgb").." раз.",
			["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，\n"
			.."單次近戰攻擊擊殺 "..CNumb("{amount}", "amount_var_rgb").." 名敵人，共達成 "..CNumb("{target}", "target_rgb").." 次。",
		},
	--[+ Keep Your Friends Close +]-- руоф Держи друзей близко
		--[+ On Heresy Threat or higher, complete 3 full Missions without any allies being Knocked Down or Incapacitated for longer than 10 seconds, and without any allies dying. +]-- руоф При угрозе «Ересь» или выше полностью выполните задание 3 р., чтобы ни один союзник не умер и не был сбит с ног или небоестрособен дольше 10 с.
		["loc_achievement_ogryn_2_hard_1_description"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, complete "..CNumb("{target}", "target_rgb").." full Missions without any Allies being Knocked Down or Incapacitated for longer than "..CNumb("{time}", "time_rgb").." seconds, and without any Allies dying.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, завершите полностью "..CNumb("{target}", "target_rgb").." миссии так, чтобы никто из союзников не был выведен из строя или сбит с ног более "..CNumb("{time}", "time_rgb").." секунд и чтобы никто из союзников не был убит.",
			["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，完整完成 "..CNumb("{target}", "target_rgb").." 場任務，\n且期間無任何隊友陣亡，或被擊倒超過 "..CNumb("{time}", "time_rgb").." 秒。",
		},
	--[+ Bone 'ead (1) +]-- руоф Костяная башка (1)
	["loc_achievement_group_class_ogryn_2_1_name"] = {
		ru = "Башковитый (1)",
		["zh-tw"] = "骨頭骨腦 (1)",
	},
	--[+ Bone 'ead (2) +]-- руоф Костяная башка (2)
	["loc_achievement_group_class_ogryn_2_2_name"] = {
		ru = "Башковитый (2)",
		["zh-tw"] = "骨頭骨腦 (2)",
	},
	--[+ Bone 'ead (3) +]-- руоф Костяная башка (3)
	["loc_achievement_group_class_ogryn_2_3_name"] = {
		ru = "Башковитый (3)",
		["zh-tw"] = "骨頭骨腦 (3)",
	},
		--[+ Complete the following Penances as the Ogryn. +]-- руоф Выполните следующие искупления за Огрина.
		["loc_achievement_group_class_ogryn_2_description"] = {
			en = "Complete the following Penances as the "..CKWord("Ogryn", "cls_ogr_rgb")..".",
			ru = "Выполните следующие Искупления "..CKWord("Огрином", "cls_ogr2_rgb_ru")..".",
		},
	--[+ Friends Will be Friends +]-- руоф Друзья останутся друзьями -- 朋友永遠是朋友
		--[+ Stay in Conherency with a living teammate at all times during a full Mission on Malice Threat or higher. +]-- руоф При угрозе «Злоба» или выше постоянно оставайтесь под эффектом «Сплоченность» с живым товарищем по команде во время задания.
		["loc_achievement_ogryn_2_win_with_coherency_all_alive_units_description"] = {
			en = "On "..CKWord("Malice", "malice_rgb").." Threat or higher, stay in "..CKWord("Conherency", "Coherency_rgb").." with a living teammate at all times during a full Mission.",
			ru = "На сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, всегда оставайтесь под действием "..CKWord("сплочённости", "splochennosti_rgb_ru").." с живым союзником на всём протяжении миссии.",
			-- ["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，\n"
				-- .."整場任務期間始終與至少一名存活隊友保持在『"..CKWord("", "Coherency_rgb_tw").."』範圍內。",
		},
		--[+ ABILITIES - СПОСОБНОСТИ - 技能 +]--
	--[+ Clear the Path +]-- руоф Расчисти путь -- 掃清道路
		--[+ On Malice Threat or higher, knock down 3 Ranged enemies using Bull Rush or Indomitable, 25 times. +]-- руоф При угрозе «Злоба» или выше сбейте с ног врагов (3) с дистанционной атакой с помощью «Бычьего натиска» 25 р.
		["loc_achievement_ogryn_2_medium_1_fix_description"] = {
			en = "On "..CKWord("Malice", "malice_rgb").." Threat or higher, knock down "..CNumb("{num_enemies}", "num_enemies_rgb").." Ranged enemies using "..CKWord("Bull Rush", "bull_rush_rgb").." or "..CKWord("Indomitable", "bull_rush4_rgb").." Ability, "..CNumb("{target}", "target_rgb").." times.",
			ru = "На сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше, "..CNumb("{target}", "target_rgb").." раз сбейте с ног "..CNumb("{num_enemies}", "num_enemies_rgb").." врагов с дальнобойным оружием, используя способность "..CKWord("Рывок быка", "bull_rush_rgb_ru").." или "..CKWord("Неукротимый", "bull_rush4_rgb_ru")..".",
			-- ["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，\n"
				-- .."使用 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "bull_rush_rgb_tw").."』或『"..CKWord("", "bull_rush4_rgb_tw").."』，\n"
				-- .."擊倒 "..CNumb("{num_enemies}", "num_enemies_rgb").." 名持遠程武器的敵人 "..CNumb("{target}", "target_rgb").." 次。",
		},
	--[+ Be Your Best +]-- руоф Будь лучшим -- 盡力而為
		--[+ On Heresy Threat or higher, hit 4 consecutive Elite or Specialist enemies with Big Boxes of Hurt or Bombs Away, without missing. Do this 5 times. +]-- руоф При угрозе «Ересь» или выше попадите по элитным врагам или специалистам х4 подряд «Ящиком, полным боли", ни разу не промахиваясь. Повторите 5 р.
		["loc_achievement_ogryn_2_hard_2_fix_description"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, hit "..CNumb("{amount}", "amount_var_rgb").." consecutive Elite or Specialist enemies with "..CKWord("Big Boxes of Hurt", "big_box_rgb").." or "..CKWord("Bombs Away!", "big_box2_rgb").." Blitz, without missing. Do this "..CNumb("{target}", "target_rgb").." times.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, попадите не промахиваясь последовательно по "..CNumb("{amount}", "amount_var_rgb").." элитным врагам или специалистам, используя блиц "..CKWord("Большая коробка боли", "big_box_rgb_ru").." или "..CKWord("Бросай бомбы!", "big_box2_rgb_ru")..". Повторите это задание "..CNumb("{target}", "target_rgb").." раз.",
			-- ["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "big_box_rgb_tw").."』或『"..CKWord("", "big_box2_rgb_tw").."』，\n"
				-- .."連續成功命中 "..CNumb("{amount}", "amount_var_rgb").." 名精英或專家敵人。需達成 "..CNumb("{target}", "target_rgb").." 次。",
		},
	--[+ Pick on Someone Your Own Size +]-- руоф Выбирай по размеру
	["loc_achievement_ogryn_taunt_shout_hit_name"] = {
		ru = "Выбери кого-то своего размера",
		["zh-tw"] = "別欺負弱小",
	},
		--[+ Taunt 1000 Specialist or Elite enemies using Loyal Protector. +]-- руоф Спровоцируйте особых или элитных врагов (1000) с помощью «Верного защитника».
		["loc_achievement_ogryn_taunt_shout_hit_description"] = {
			en = "Taunt "..CNumb("{target}", "target_rgb").." Specialist or Elite enemies using "..CKWord("Loyal Protector", "loyalprot_rgb").." Ability.",
			ru = "Спровоцируйте "..CNumb("{target}", "target_rgb").." элитных врагов или специалистов с помощью способности "..CKWord("Верный защитник", "loyalprot_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "loyalprot_rgb_tw").."』嘲諷，\n"
				-- .."吸引 "..CNumb("{target}", "target_rgb").." 名精英或專家敵人。",
		},
	--[+ Eat This! +]-- руоф Получи!
	["loc_achievement_ogryn_grenade_rock_elites_or_specialists_name"] = {
		-- en = "",
		ru = "На, подавись!",
		["zh-tw"] = "嚐嚐這個！",
	},
		--[+ Kill 75 Specialists or Elites with the Big Friendly Rock. +]-- руоф Убейте особых или элитных врагов (75) с помощью «Большого дружелюбного валуна».
		["loc_achievement_ogryn_grenade_rock_elites_or_specialists_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." Specialists or Elites with the "..CKWord("Big Friendly Rock", "bigfriendro_rgb")..".",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." элитных врагов или специалистов с помощью блица "..CKWord("", "bigfriendro_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "bigfriendro_rgb_tw").."』擊殺 "..CNumb("{target}", "target_rgb").." 名精英或專家敵人。",
		},
	--[+ Crowd Control +]-- руоф Сдерживание толпы
	["loc_achievement_ogryn_grenade_frag_group_of_enemies_name"] = {
		ru = "Сдерживание толп",
		["zh-tw"] = "群體控制",
	},
		--[+ With one Frag Bomb kill 25 enemies, 25 times. +]-- руоф Убейте врагов (25) одной «Осколочной бомбой» 25 р.
		["loc_achievement_ogryn_grenade_frag_group_of_enemies_description"] = {
			en = "With one "..CKWord("Frag Bomb", "fragbomb_rgb").." kill "..CNumb("{amount}", "amount_var_rgb").." enemies, "..CNumb("{target}", "target_rgb").." times.",
			ru = "Убейте "..CNumb("{amount}", "amount_var_rgb").." врагов одной осколочной гранатой от блица "..CKWord("Фраг-бомба", "fragbomb_rgb_ru")..". Повторите это задание "..CNumb("{target}", "target_rgb").." раз.",
			-- ["zh-tw"] = "使用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "fragbomb_rgb_tw").."』，單次擊殺 "..CNumb("{amount}", "amount_var_rgb").." 名敵人。\n"
				-- .."共需達成 "..CNumb("{target}", "target_rgb").." 次。",
		},
	--[+ Onslaught +]-- руоф Сдерживание толпы
	-- ["loc_achievement_ogryn_grenade_frag_group_of_enemies_name"] = {
		-- ru = "Натиск",
	-- },
		--[+ Kill 5000 enemies with heavy attacks, while at Max Stacks of Heavy Hitter. +]--
		["loc_achievement_ogryn_kills_during_max_stacks_heavy_hitter_new_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies with Heavy Attacks, while at Max Stacks of "..CKWord("Heavy Hitter", "heavyhitter_rgb").." Keystone.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов заряженными атаками, удерживая "..CNumb("5", "n_5_rgb").." зарядов ключевого таланта "..CKWord("Тяжёлый нападающий", "heavyhitter_rgb_ru")..".",
			-- ["zh-tw"] = "維持 "..CKWord("", "KeyStone_p_rgb_tw").."『"..CKWord("", "heavyhitter_rgb_tw").."』達到 "..CNumb("5", "n_5_rgb").." 層時，\n"
				-- .."使用重擊擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。",
		},
	--[+ Spray and Pray (To the Emperor) +]-- руоф Стреляй и восхваляй (Императора)
	["loc_achievement_ogryn_kills_during_barrage_threshold_name"] = {
		-- en = "",
		ru = "Стреляй и молись (Императору)",
		["zh-tw"] = "掃射，然後向帝皇祈禱吧",
	},
		--[+ Kill 25 enemies, 50 times, during a single activation of Point-Blank Barrage. +]-- руоф Убейте врагов (25) 50 р. во время однократной активации «Решительного натиска».
		["loc_achievement_ogryn_kills_during_barrage_threshold_description"] = {
			en = "Kill "..CNumb("{amount}", "amount_var_rgb").." enemies during a single activation of "..CKWord("Point-Blank Barrage", "pbbarrage_rgb").." Ability, "..CNumb("{target}", "target_rgb").." times.",
			ru = "Убейте "..CNumb("{amount}", "amount_var_rgb").." врагов за однократное применение способности "..CKWord("Беспощадный обстрел в упор", "pbbarrage_rgb_ru")..". Повторите это задание "..CNumb("{target}", "target_rgb").." раз.",
			-- ["zh-tw"] = "使用 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "pbbarrage_rgb_tw").."』一次擊殺 "..CNumb("{amount}", "amount_var_rgb").." 名敵人。\n"
				-- .."完成此目標共需達成 "..CNumb("{target}", "target_rgb").." 次。",
		},
	--[+ Can't Catch Me! +]-- руоф Меня не поймать
	["loc_achievement_ogryn_ogryn_feel_no_pain_kills_at_max_name"] = {
		ru = "Меня не поймать!",
		["zh-tw"] = "抓不到我！",
	},
		--[+ Kill 2500 enemies while at 7 stacks or higher of Feel No Pain. +]-- руоф Убейте врагов (2500), сохраняя не менее 7 ед. заряда «Неболита».
		["loc_achievement_ogryn_feel_no_pain_kills_at_max_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies while at "..CNumb("7", "n_7_rgb").." Stacks or higher of "..CKWord("Feel No Pain", "feelnop_rgb").." Keystone.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов, имея не менее "..CNumb("7", "n_7_rgb").." зарядов ключевого таланта "..CKWord("Неболит", "feelnop_rgb_ru")..".",
			-- ["zh-tw"] = "在擁有不少於 "..CNumb("7", "n_7_rgb").." 層"..CKWord("", "KeyStone_p_rgb_tw").."『"..CKWord("", "feelnop_rgb_tw").."』效果時，擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。",
		},
	--[+ Munitorum's Favour +]-- руоф Благосклонность Муниторума -- 軍務部的恩賜
		--[+ Shoot 4500 free rounds of ammo, courtesy of the Burst Limiter Override. +]-- руоф Стреляйте бесплатными боеприпасами (4500) благодаря «Взлому отсечки очереди».
		["loc_achievement_ogryn_leadbelcher_free_shot_description"] = {
			en = "Shoot "..CNumb("{target}", "target_rgb").." free rounds of Ammo, courtesy of the "..CKWord("Burst Limiter Override", "burstlimo_rgb").." Keystone.",
			ru = "Отстреляйте "..CNumb("{target}", "target_rgb").." бесплатных патронов, полученных с помощью ключевого таланта "..CKWord("Обход ограничителя очереди", "burstlimo_rgb_ru")..".",
			-- ["zh-tw"] = "射出 "..CNumb("{target}", "target_rgb").." 發由 "..CKWord("", "KeyStone_p_rgb_tw").."『"..CKWord("", "burstlimo_rgb_tw").."』所獲得的免費子彈。",
		},
	--[+ Pile On +]-- руоф Навались -- 堆起來
		--[+ Kill 5000 enemies with Heavy Attacks while under the effect of Bonebreaker's Aura. Heavy Attack kills made by your team members also count. +]-- руоф Убейте врагов (5000) мощными атаками, находясь под действием «Ауры костолома». Если члены команды убивают мощными атаками, это тоже учитывается.
		["loc_achievement_ogryn_team_heavy_aura_kills_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies with Heavy Attacks while under the effect of "..CKWord("Bonebreaker's Aura", "bonebraura_rgb")..". Heavy Attack kills made by your team members also count.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов заряженными атаками, находясь под действием ауры "..CKWord("", "bonebraura_rgb_ru")..". Убийства заряженными атаками, совершённые членами команды также учитываются.",
			-- ["zh-tw"] = "在 "..CKWord("", "Aura_p_rgb_tw").."『"..CKWord("", "bonebraura_rgb_tw").."』效果內，\n"
				-- .."以蓄力攻擊擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。\n"
				-- .."隊友的蓄力擊殺也會計算。",
		},
	--[+ You Can't Hide from Us! +]-- руоф От нас не спрятаться!
	["loc_achievement_ogryn_team_suppressed_aura_kills_name"] = {
		ru = "Тебе от нас не спрятаться!",
		["zh-tw"] = "你躲不掉的！",
	},
		--[+ Kill 7500 suppressed enemies while under the effect of Coward Culling. Kills made by any affected team member also count. +]-- руоф Убейте ослабленных врагов (7500), находясь под действием «Трусливые отбросы». Убийства, совершенные любым членом команды под действием эффекта, тоже учитываются.
		["loc_achievement_ogryn_team_suppressed_aura_kills_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." Suppressed enemies while under the effect of "..CKWord("Coward Culling", "cowculaura_rgb")..". Kills made by any affected team member also count.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." подавленных врагов, находясь под эффектом ауры "..CKWord("Отсев трусливых", "cowculaura_rgb_ru")..". Убийства, совершённые любым членом команды под действием эффекта ауры, также учитываются.",
			-- ["zh-tw"] = "在 "..CKWord("", "Aura_p_rgb_tw").."『"..CKWord("", "cowculaura_rgb_tw").."』效果內，擊殺 "..CNumb("{target}", "target_rgb").." 名被壓制的敵人。\n"
				-- .."隊友在光環下所造成的擊殺同樣會被計算。",
		},
	--[+ Loyal Protector +]-- руоф Верный защитник -- 忠誠守衛
		--[+ Restore a total of 15000 Toughness to you or allies in coherency with Stay Close. +]-- руоф Восстановите стойкость свою или союзников под действием «Сплоченности» (суммарно 15000) с помощью «Держись рядом».
		["loc_achievement_ogryn_team_toughness_restored_aura_description"] = {
			en = "Restore a total of "..CNumb("{target}", "target_rgb").." "..CKWord("Toughness", "Toughness_rgb").." to you or Allies in "..CKWord("Coherency", "Coherency_rgb").." with "..CKWord("Stay Close!", "stayclose_rgb").." Aura.",
			ru = "Восстановите суммарно "..CNumb("{target}", "target_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." себе или союзникам, находящимся под действием "..CKWord("сплочённости", "splochennosti_rgb_ru")..", с помощью эффекта ауры "..CKWord("Держись рядом!", "stayclose_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("", "KeyStone_p_rgb_tw").."『"..CKWord("", "stayclose_rgb_tw").."』效果，\n"
				-- .."為自己或處於『"..CKWord("", "Coherency_rgb_tw").."』範圍內的隊友，\n"
				-- .."恢復累計 "..CNumb("{target}", "target_rgb").." 點『"..CKWord("", "Toughness_rgb_tw").."』。",
		},
	--[+ I'm in Charge +]-- руоф Я главнее
	["loc_achievement_ogryn_2_bull_rushed_charging_ogryn_name"] = {
		ru = "Я главный",
		["zh-tw"] = "對衝",
	},
		--[+ Use Bull Rush or Indomitable to interrupt a Plague Ogryn's charge. +]-- руоф Используйте «Бычий натиск», чтобы прервать рывок Чумного Огрина.
		["loc_achievement_ogryn_2_bull_rushed_charging_ogryn_fix_description"] = {
			en = "Use "..CKWord("Bull Rush", "bull_rush_rgb").." or "..CKWord("Indomitable", "bull_rush4_rgb").." Ability to interrupt a Plague Ogryn's charge.",
			ru = "Используйте способность "..CKWord("Рывок быка", "bull_rush_rgb_ru").." или "..CKWord("Неукротимый", "bull_rush4_rgb_ru")..", чтобы прервать рывок Чумного Огрина.",
			-- ["zh-tw"] = "用 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "bull_rush_rgb_tw").."』或『"..CKWord("", "bull_rush4_rgb_tw").."』，\n"
				-- .."中斷瘟疫歐格林的衝鋒。",
		},
	--[+ Something In Your Eye +]-- руоф Нечто в твоих глазах
	["loc_achievement_ogryn_2_killed_corruptor_with_grenade_impact_name"] = {
		ru = "У тебя что-то в глазу",
		["zh-tw"] = "你眼睛裡有東西",
	},
		--[+ Kill a Corruptor by hitting it in the eye with your grenade box. +]-- руоф Убейте осквернителя, попав ему в глаз гранатой.
		["loc_achievement_ogryn_2_killed_corruptor_with_grenade_impact_description"] = {
			en = "Kill a Corruptor by hitting it in the eye with grenade box from "..CKWord("Big Boxes of Hurt", "big_box_rgb").." or "..CKWord("Bombs Away!", "big_box2_rgb").." Blitz.",
			ru = "Убейте Осквернителя, попав ему в глаз ящиком блица "..CKWord("Большая коробка боли", "big_box_rgb_ru").." или "..CKWord("Бросай бомбы!", "big_box2_rgb_ru")..".",
			-- ["zh-tw"] = "用 "..CKWord("", "Blitz_p_rgb_tw").."『"..CKWord("", "big_box_rgb_tw").."』直接擊中腐蝕者眼睛將其擊殺。",
		},
	--[+ Gone Bowling +]-- руоф Играю в боулинг
	["loc_achievement_ogryn_2_bull_rushed_100_enemies_name"] = {
		ru = "Разметал как кегли",
		["zh-tw"] = "全中",
	},
		--[+ Knock down 60 enemies with a single Bull Rush or Indomitable on Malice Threat or higher. +]-- руоф При угрозе «Злоба» или выше сбейте с ног одним зарядом «Бычьего натиска» врагов: 60.
		["loc_achievement_ogryn_2_bull_rushed_100_enemies_fix_description"] = {
			en = "Knock down "..CNumb("{target}", "target_rgb").." enemies with a single "..CKWord("Bull Rush", "bull_rush_rgb").." or "..CKWord("Indomitable", "bull_rush4_rgb").." Ability on "..CKWord("Malice", "malice_rgb").." Threat or higher.",
			ru = "Сбейте "..CNumb("{target}", "target_rgb").." врагов за одно использование способности "..CKWord("Рывок быка", "bull_rush_rgb_ru").." или "..CKWord("Неукротимый", "bull_rush4_rgb_ru").." на сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше.",
			-- ["zh-tw"] = "在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，\n"
				-- .."使用 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "bull_rush_rgb_tw").."』或『"..CKWord("", "bull_rush4_rgb_tw").."』，\n"
				-- .."單次衝鋒擊倒 "..CNumb("{target}", "target_rgb").." 名敵人。",
		},
	-- --[+ Don't Stop Me Now! +]-- руоф Меня не остановить!
	["loc_achievement_ogryn_2_bull_rushed_70_within_25_seconds_name"] = {
		ru = "Не останавливай меня!",
		["zh-tw"] = "別讓我停下",
	},
		--[+ Move 40 metres with Bull Rush or Indomitable in under 20s on Heresy Threat or higher. +]-- руоф При угрозе «Ересь» или выше переместитесь на 40 м с помощью «Бычьего натиска» менее чем за 20 с.
		["loc_achievement_ogryn_2_bull_rushed_70_within_25_seconds_fix_description"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, move "..CNumb("{target}", "target_rgb").." metres with "..CKWord("Bull Rush", "bull_rush_rgb").." or "..CKWord("Indomitable", "bull_rush4_rgb").." Ability in under "..CNumb("{time_window}", "time_wind_rgb").." seconds.",
			ru = "Переместитесь на "..CNumb("{target}", "target_rgb").." метров с помощью способности "..CKWord("Рывок быка", "bull_rush_rgb_ru").." или "..CKWord("Неукротимый", "bull_rush4_rgb_ru").." в течение "..CNumb("{time_window}", "time_wind_rgb").." секунд на сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше.",
			-- ["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，\n"
				-- .."於 "..CNumb("{time_window}", "time_wind_rgb").." 秒內，使用 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "bull_rush_rgb_tw").."』或『"..CKWord("", "bull_rush4_rgb_tw").."』技能移動累計 "..CNumb("{target}", "target_rgb").." 公尺。",
		},
	--[+ Heavyweight Champion +]-- руоф Чемпион-тяжеловес -- 重量級冠軍
		--[+ On Heresy Threat or higher, knock down 4 enemy Ogryns (Bulwarks, Crushers, Plague Ogryns, and/or Reapers) with a single Bull Rush or Indomitable charge. +]-- руоф При угрозе «Ересь» или выше сбейте с ног одним зарядом «Бычьего натиска» вражеских Огринов (Бастион, Дробитель, Чумной Огрин и/или Жнец): 4.
		["loc_achievement_ogryn_2_bull_rushed_4_ogryns_fix_description"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, knock down "..CNumb("{target}", "target_rgb").." enemy Ogryns with a single "..CKWord("Bull Rush", "bull_rush_rgb").." or "..CKWord("Indomitable", "bull_rush4_rgb").." Ability charge. The Ogryns are: Bulwark, Crusher, Reaper, Pack Master, and Plague Ogryn.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, сбейте с ног "..CNumb("{target}", "target_rgb").." любых вражеских огрина одним зарядом способности "..CKWord("Рывок быка", "bull_rush_rgb_ru").." или "..CKWord("Неукротимый", "bull_rush4_rgb_ru")..". Огринами являются: Бастион, Дробитель, Жнец, Загонщик и Чумной огрин.",
			-- ["zh-tw"] = "在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度中，\n使用 "..CKWord("", "Ability_p_rgb_tw").."『"..CKWord("", "bull_rush_rgb_tw").."』或『"..CKWord("", "bull_rush4_rgb_tw").."』，\n單次衝鋒擊倒 "..CNumb("{target}", "target_rgb").." 名敵方歐格林。\n歐格林敵人包含：堡壘、粉碎者、收割者與瘟疫歐格林。",
		},


	--[+ +ARBITRATOR - АРБИТРАТОР+ +]--
	["loc_class_adamant_title"] = {
		en = CKWord("Arbitrator", "cls_arb_rgb"),
		ru = CKWord("Арбитратор", "cls_arb_rgb_ru"),
	},
		--[+ PROGRESSION - ПРОГРЕСС - 進度 +]--
	--[+ By the Lex, I am Witness! (1-6) +]-- руоф Именем Закона, я свидетель! (1-6)
	-- ["loc_achievement_rank_adamant_2_x_name"] = {
		-- ru = "Именем Закона, я свидетель! ({tier})",
	-- },
		--[+ Reach Trust Level __ as a Arbitrator. +]-- руоф Заслужить уровень доверия __, играя за Арбитратора.
		["loc_achievement_rank_adamant_2_x_description"] = {
			en = "Reach Trust Level "..CNumb("{target}", "target_rgb").." as a "..CKWord("Arbitrator", "cls_arb_rgb")..".",
			ru = "Достигните "..CNumb("{target}", "target_rgb").." уровня доверия "..CKWord("Арбитратором", "cls_arb2_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("仲裁官", "cls_arb_rgb_tw").." 達到信任等級 "..CNumb("{target}", "target_rgb").." 。",
		},
	--[+ Enforcer of the Lex (1-5) +]-- руоф  (1-5)
	-- ["loc_achievement_missions_adamant_2_x_name"] = {
		-- ru = "Блюститель Закона ({tier})",
	-- },
		--[+ Complete 100 Missions as a Arbitrator. +]-- руоф Выполнить Арбитратором задания: 100.
		["loc_achievement_missions_adamant_2_x_description"] = {
			en = "Complete "..CNumb("{target}", "target_rgb").." Missions as a "..CKWord("Arbitrator", "cls_arb_rgb")..".",
			ru = "Пройдите "..CNumb("{target}", "target_rgb").." миссий "..CKWord("Арбитратором", "cls_arb2_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("仲裁官", "cls_arb_rgb_tw").." 完成 "..CNumb("{target}", "target_rgb").." 次任務。",
		},
	--[+ Diligent Patrol +]-- руоф 
	["loc_achievement_missions_adamant_2_objective_1_name"] = {
		en = "Diligent Patrol (1)",
		ru = "Бдительный дозор (1)",
	},
		--[+ As a Arbitrator, complete at least one Mission of each type. +]-- руоф Выполнить Арбитратором по меньшей мере одно задание каждого типа.
		["loc_achievement_missions_adamant_2_objective_1_description"] = {
			en = "As a "..CKWord("Arbitrator", "cls_arb_rgb")..", complete at least "..CNumb("1", "n_1_rgb").." Mission of each type.",
			ru = "Пройдите "..CKWord("Арбитратором", "cls_arb2_rgb_ru").." как минимум "..CNumb("1", "n_1_rgb").." миссию каждого типа.",
			-- ["zh-tw"] = "使用 "..CKWord("仲裁官", "cls_arb_rgb_tw").."完成以下任務 "..CNumb("1", "n_1_rgb").." 次。",
		},
	--[+ Diligent Patrol (2) +]-- руоф  (2)
	["loc_achievement_missions_adamant_2_objective_2_name"] = {
		ru = "Бдительный дозор (2)",
	},
		--[+ As a Arbitrator, complete a Mission of each type on Malice Threat or higher. +]--
		["loc_achievement_missions_adamant_2_objective_2_description"] = {
			en = "As a "..CKWord("Arbitrator", "cls_arb_rgb")..", complete "..CNumb("1", "n_1_rgb").." Mission of each type on "..CKWord("Malice", "malice_rgb").." Threat or higher.",
			ru = "Пройдите "..CKWord("Арбитратором", "cls_arb2_rgb_ru").." "..CNumb("1", "n_1_rgb").." миссию каждого типа на сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше.",
		},
	--[+ Diligent Patrol (3) +]-- руоф  (3)
	["loc_achievement_missions_adamant_2_objective_3_name"] = {
		ru = "Бдительный дозор (3)",
	},
		--[+ As a Arbitrator, complete a Mission of each type on Heresy Threat or higher. +]--
		["loc_achievement_missions_adamant_2_objective_3_description"] = {
			en = "As a "..CKWord("Arbitrator", "cls_arb_rgb")..", complete "..CNumb("1", "n_1_rgb").." Mission of each type on "..CKWord("Heresy", "heresy_rgb").." Threat or higher.",
			ru = "Пройдите "..CKWord("Арбитратором", "cls_arb2_rgb_ru").." "..CNumb("1", "n_1_rgb").." миссию каждого типа на сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше.",
		},
	--[+ Prove Your Worth (1-5) +]-- руоф Докажи, чего стоишь (1-5) -- 證明你的價值 (1-5)
	--[+ Fight the Good Fight (1-5) +]-- руоф Сражайся достойно (1-5) -- 為正義而戰 (1-5)
	--[+ First Steps (1-2) +]-- руоф Первые шаги (1-2) -- 首要步驟 (1-2)
	--[+ Promotion Material (1) +]-- руоф Материалы пропаганды (1)
	--[+ For The Emperor (1-3) +]-- руоф За императора (1-3) -- 為了皇帝 (1-3)
	--[+ Oathbound (1-3) +]-- руоф Связанный клятвой (1-3)
		--[+ Complete the following Penances as the Arbitrator. +]-- руоф Выполнить следующие искупления за Арбитратора.
		["loc_achievement_group_adamant_2_description"] = {
			en = "Complete the following Penances as the "..CKWord("Arbitrator", "cls_arb_rgb")..".",
			ru = "Выполните следующие Искупления "..CKWord("Арбитратором", "cls_arb2_rgb_ru")..".",
			-- ["zh-tw"] = "使用 "..CKWord("老兵", "cls_arb_rgb_tw").." 完成以下苦修。",
		},
	--[+ Targeted Kills +]-- руоф 
	-- ["loc_achievement_adamant_hunt_snipers"] = {
		-- ru = "Целевые убийства",
	-- },
		--[+ Have your Cyber-Mastiff Pounce on 50 Bombers, Snipers, and Trappers. +]-- руоф 
		["loc_achievement_adamant_hunt_snipers_desc"] = {
			en = "Have your Cyber-Mastiff Pounce on "..CNumb("{amount:%s}", "amountp_var_rgb").." Bombers, Snipers, and Trappers.",
			ru = "Заставьте вашего кибермастифа наброситься на "..CNumb("{amount:%s}", "amountp_var_rgb").." гренадёров, снайперов или ловушечников.",
		},
	--[+ Guard Command +]-- руоф 
	-- ["loc_achievement_adamant_knock_chargers"] = {
		-- ru = "Охраняй!",
	-- },
		--[+ Have your Cyber-Mastiff Knock Away 50 Mutants and Poxbusters. Counts once per Enemy. +]-- руоф 
		["loc_achievement_adamant_knock_chargers_desc"] = {
			en = "Have your Cyber-Mastiff Knock Away "..CNumb("{amount:%s}", "amountp_var_rgb").." Mutants and Poxbusters. Counts once per Enemy.",
			ru = "Заставьте вашего кибермастифа сбить с ног "..CNumb("{amount:%s}", "amountp_var_rgb").." мутантов и поскбастеров. Засчитывается один раз за врага.",
		},
	--[+ Shoot'em When They're Down +]-- руоф 
	-- ["loc_achievement_adamant_kill_pounced_enemies"] = {
		-- ru = "Стреляй в них пока они лежат",
	-- },
		--[+ Kill 750 enemies pounced by your Cyber-Mastiff. +]-- руоф 
		["loc_achievement_adamant_kill_pounced_enemies_desc"] = {
			en = "Kill "..CNumb("{amount:%s}", "amountp_var_rgb").." enemies pounced by your Cyber-Mastiff.",
			ru = "Уничтожьте "..CNumb("{amount:%s}", "amountp_var_rgb").." врагов, на которых набросился ваш кибермастифа.",
		},
	--[+ Voltaic Persecution +]-- руоф 
	-- ["loc_achievement_adamant_kill_electrocuted"] = {
		-- ru = "Вольтаическое преследование",
	-- },
		--[+ Kill 500 Electrocuted enemies. +]-- руоф 
		["loc_achievement_adamant_kill_electrocuted_desc"] = {
			en = "Kill "..CNumb("{amount:%s}", "amountp_var_rgb").." Electrocuted enemies.",
			ru = "Убейте "..CNumb("{amount:%s}", "amountp_var_rgb").." врагов, поражённых электрошоком.",
		},
	--[+ Loyal Companion +]-- руоф 
	-- ["loc_achievement_adamant_saved_from_dog"] = {
		-- ru = "Верный компаньон",
	-- },
		--[+ Get Rescued from a Pox Hound that has pounced on you, by your Cyber-Mastiff. +]-- руоф 
		-- ["loc_achievement_adamant_saved_from_dog_desc"] = {
			-- en = "Get Rescued from a Pox Hound that has pounced on you, by your Cyber-Mastiff.",
			-- ru = "Спаситесь от напавшей на вас Чумной гончей с помощью вашего кибермастифа.",
		-- },
	--[+ Good Killing Machine +]-- руоф 
	-- ["loc_achievement_adamant_pet_dog"] = {
		-- ru = "Хорошая машина для убийств",
	-- },
		--[+ Pet your Cyber-Mastiff. +]-- руоф 
		-- ["loc_achievement_adamant_pet_dog_desc"] = {
			-- en = "Pet your Cyber-Mastiff.",
			-- ru = "Погладьте своего кибермастифа.",
		-- },
	--[+ The Lex Defiant +]-- руоф 
	-- ["loc_achievement_adamant_block_enemies"] = {
		-- ru = "Закон Непокорный",
	-- },
		--[+ Block Damage from 250 unique enemies. +]-- руоф 
		["loc_achievement_adamant_block_enemies_desc"] = {
			en = "Block "..CKWord("Damage", "Damage_rgb").." from "..CNumb("{amount:%s}", "amountp_var_rgb").." unique enemies.",
			ru = "Заблокируйте "..CKWord("урон", "uron_rgb_ru").." от "..CNumb("{amount:%s}", "amountp_var_rgb").." уникальных врагов.",
		},
	--[+ Arbitrator Master of War +]-- руоф Арбитратор — знаток войны

		--[+ ABILITIES - СПОСОБНОСТИ - 技能 +]--
	--[+ Handing Out the Emperor's Judgement +]-- руоф 
	-- ["loc_achievement_adamant_team_staggered_enemies_aura_kills_name"] = {
		-- ru = "Вынесение императорского приговора",
	-- },
		--[+ Kill 5000 staggered enemies while under the effect of Breaking Dissent. Kill made by allies in coherency with you also count. +]-- руоф 
		["loc_achievement_adamant_team_staggered_enemies_aura_kills_description"] = {
			en = "Kill "..CNumb("{target:%s}", "target_rgb").." "..CKWord("Staggered", "Staggered_rgb").." enemies while under the effect of "..CKWord("Breaking Dissent", "BreaknDissent_rgb").." Aura. Kill made by Allies in "..CKWord("Coherency", "Coherency_rgb").." with you also count.",
			ru = "Убейте "..CNumb("{target:%s}", "target_rgb").." "..CKWord("оглушённых", "oglushennyh_rgb_ru").." врагов, находящихся под действием ауры "..CKWord("Уничтожение инакомыслия", "BreaknDissent_rgb_ru")..". Убийства, совершённые союзниками в "..CKWord("сплочённости", "splochennosti_rgb_ru").." с вами, также учитываются.",
		},
	--[+ Efficient Execution +]-- руоф 
	-- ["loc_achievement_adamant_team_wield_speed_aura_kills_name"] = {
		-- ru = "Эффективное исполнение",
	-- },
		--[+ Kill 7500 enemies while under the effect of Ruthless Efficiency. Kills made by allies in coherency with you also count. +]-- руоф 
		["loc_achievement_adamant_team_wield_speed_aura_kills_description"] = {
			en = "Kill "..CNumb("{target:%s}", "target_rgb").." enemies while under the effect of "..CKWord("Ruthless Efficiency", "RuthlEffcy_rgb").." Aura. Kill made by Allies in "..CKWord("Coherency", "Coherency_rgb").." with you also count.",
			ru = "Убейте "..CNumb("{target:%s}", "target_rgb").." врагов, находясь под действием ауры "..CKWord("Безжалостная эффективность", "RuthlEffcy_rgb_ru")..". Убийства, совершённые союзниками в "..CKWord("сплочённости", "splochennosti_rgb_ru").." с вами, также учитываются.",
		},
	--[+ Well Oiled Killteam +]-- руоф 
	-- ["loc_achievement_adamant_team_companion_in_coherency_kills_name"] = {
		-- ru = "Хорошо отлаженная команда убийц",
	-- },
		--[+ With Part of the Squad Aura active, kill 2500 enemies while in coherency with Cyber-Mastiff. Kills made by allies in coherency with your Cyber-Mastiff also count. +]-- руоф 
		["loc_achievement_adamant_team_companion_in_coherency_kills_description"] = {
			en = "Kill "..CNumb("{target:%s}", "target_rgb").." enemies while in "..CKWord("Coherency", "Coherency_rgb").." with Cyber-Mastiff under the effect of "..CKWord("Part of the Squad", "PartozSquad_rgb").." Aura. Kills made by Allies in "..CKWord("Coherency", "Coherency_rgb").." with your Cyber-Mastiff also count.",
			ru = "Убейте "..CNumb("{target:%s}", "target_rgb").." врагов, находясь под действием ауры "..CKWord("Часть отряда", "PartozSquad_rgb_ru")..". Убийства, совершённые союзниками в "..CKWord("сплочённости", "splochennosti_rgb_ru").." с вашим кибермастифом, также учитываются.",
		},
	--[+ Voltaic Restraint +]-- руоф 
	-- ["loc_achievement_adamant_time_enemies_electrocuted_by_shockmine_name"] = {
		-- ru = "Вольтаическое ограничение",
	-- },
		--[+ Stun enemies using the Voltaic Shock Mine for a total duration of 5000 seconds. +]-- руоф 
		["loc_achievement_adamant_time_enemies_electrocuted_by_shockmine_description"] = {
			en = CKWord("Stun", "Stun_rgb").." enemies using the "..CKWord("Voltaic Shock Mine", "Electro_mine_rgb").." Blitz for a total duration of "..CNumb("{target:%s}", "target_rgb").." seconds.",
			ru = CKWord("Оглушите", "Oglushite_rgb_ru").." врагов используя блиц "..CKWord("Вольтаическая шоковая мина", "Electro_mine0_rgb_ru").." в общей сложности на "..CNumb("{target:%s}", "target_rgb").." секунд.",
		},
	--[+ Suppression Protocols +]-- руоф 
	-- ["loc_achievement_adamant_enemies_affected_by_buff_drone_name"] = {
		-- ru = "Протоколы подавления",
	-- },
		--[+ Debuff 2500 enemies using the Nuncio Aquila. +]-- руоф 
		["loc_achievement_adamant_enemies_affected_by_buff_drone_description"] = {
			en = "Debuff "..CNumb("{target:%s}", "target_rgb").." enemies using the "..CKWord("Nuncio Aquila", "Nuncio_aquila_rgb").." Ability.",
			ru = "Ослабьте "..CNumb("{target:%s}", "target_rgb").." врагов с помощью способности "..CKWord("Нунцио-аквила", "Nuncio_aquila_rgb_ru")..".",
		},
	--[+ Fortifying Command +]-- руоф 
	-- ["loc_achievement_adamant_time_allies_buffed_by_buff_drone_name"] = {
		-- ru = "Укрепление командования",
	-- },
		--[+ Buff allies using the Nuncio Aquila for a total duration of 10000 seconds. +]-- руоф 
		["loc_achievement_adamant_time_allies_buffed_by_buff_drone_description"] = {
			en = "Buff Allies using the "..CKWord("Nuncio Aquila", "Nuncio_aquila_rgb").." Ability for a total duration of "..CNumb("{target:%s}", "target_rgb").." seconds.",
			ru = "Усильте союзников с помощью способности "..CKWord("Нунцио-аквила", "Nuncio_aquila_rgb_ru").." в общей сложности на "..CNumb("{target:%s}", "target_rgb").." секунд.",
		},
	--[+ Sanction Redactus +]-- руоф 
	-- ["loc_achievement_adamant_kill_during_stance"] = {
		-- ru = "Санкция Редактус",
	-- },
		--[+ Kill 250 enemies during Castigator's Stance. +]-- руоф 
		["loc_achievement_adamant_kill_during_stance_desc"] = {
			en = "Kill "..CNumb("{target:%s}", "target_rgb").." enemies during "..CKWord("Castigator's Stance", "CastigatorSt_rgb").." Ability.",
			ru = "Убейте "..CNumb("{target:%s}", "target_rgb").." врагов во время действия способности "..CKWord("Стойка карателя", "CastigatorSt_rgb_ru")..".",
		},
	--[+ Street Brawler +]-- руоф 
	-- ["loc_achievement_adamant_stagger_elites_with_bash"] = {
		-- ru = "Уличный боец",
	-- },
		--[+ Stagger 500 Elite or Specialist Enemies using Break the Line. +]-- руоф 
		["loc_achievement_adamant_stagger_elites_with_bash_desc"] = {
			en = CKWord("Stagger", "Stagger_rgb").." "..CNumb("{target:%s}", "target_rgb").." Elite or Specialist Enemies using "..CKWord("Break the Line", "BreakZLine_rgb").." Ability.",
			ru = CKWord("Оглушите", "Oglushite_rgb_ru").." "..CNumb("{target:%s}", "target_rgb").." элитных врагов или специалистов с помощью способности "..CKWord("Прорыв строя", "BreakZLine_rgb_ru")..".",
		},
	--[+ Abomination Protocols +]-- руоф 
	-- ["loc_achievement_adamant_stagger_monster_detonation"] = {
		-- ru = "Протоколы мерзостей",
	-- },
		--[+ Stagger a Monstrosity using Remote Detonation, 50 times. +]-- руоф 
		["loc_achievement_adamant_stagger_monster_detonation_desc"] = {
			en = CKWord("Stagger", "Stagger_rgb").." a Monstrosity using "..CKWord("Remote Detonation", "RemoteDeton_rgb").." Blitz, "..CNumb("{target:%s}", "target_rgb").." times.",
			ru = CKWord("Оглушите", "Oglushite_rgb_ru").." чудовище с помощью блица "..CKWord("Дистанционный подрыв", "RemoteDeton_rgb_ru")..". Выполните это задание "..CNumb("{target:%s}", "target_rgb").." раз.",
		},
	--[+ Efficient Demolition +]-- руоф 
	-- ["loc_achievement_adamant_kill_cluster_with_grenade"] = {
		-- ru = "Эффективный подрыв",
	-- },
		--[+ Kill 3 enemies with a single Arbites Grenade, 50 times. +]-- руоф 
		["loc_achievement_adamant_kill_cluster_with_grenade_desc"] = {
			en = "Kill "..CNumb("{target:%s}", "target_rgb").." enemies with a single "..CKWord("Arbites Grenade", "Arbites_gren_rgb")..", "..CNumb("{target:%s}", "target_rgb").." times.",
			ru = "Убейте "..CNumb("{target:%s}", "target_rgb").." врагов одной "..CKWord("Гранатой арбитрес", "Arbites_grenoi_rgb_ru")..". Выполните это задание "..CNumb("{target:%s}", "target_rgb").." раз.",
		},
	--[+ Justice Dispensed +]-- руоф 
	-- ["loc_achievement_adamant_kill_marked_enemies"] = {
		-- ru = "Высвобождение правосудия",
	-- },
		--[+ On Heresy Threat or higher, Kill 750 enemies marked by Execution Order. +]-- руоф 
		["loc_achievement_adamant_kill_marked_enemies_desc"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, Kill "..CNumb("{target}", "target_rgb").." enemies marked by "..CKWord("Execution Order", "ExecutOrder_rgb").." Keystone.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, убейте "..CNumb("{target}", "target_rgb").." врагов, отмеченных ключевым талантом "..CKWord("Приказ на казнь", "ExecutOrder_rgb_ru")..".",
		},
	--[+ Castigator's Arrest +]-- руоф 
	-- ["loc_achievement_adamant_kill_with_melee"] = {
		-- ru = "Арест кастигатора",
	-- },
		--[+ On Heresy Threat or higher, Kill 2000 enemies with Melee Attacks while using Terminus Warrant. +]-- руоф 
		["loc_achievement_adamant_kill_with_melee_desc"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, Kill "..CNumb("{target}", "target_rgb").." enemies with Melee Attacks while using "..CKWord("Terminus Warrant", "TerminusWarr_rgb").." Keystone.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, убейте "..CNumb("{target}", "target_rgb").." врагов в ближнем бою с помощью ключевого таланта "..CKWord("Ордер Терминус", "TerminusWarr_rgb_ru")..".",
		},
	--[+ Arbites Gunner +]-- руоф 
	-- ["loc_achievement_adamant_kill_with_ranged"] = {
		-- ru = "Пулемётчик Арбитрес",
	-- },
		--[+ On Heresy Threat or higher, Kill 2000 enemies with Ranged Attacks while using Terminus Warrant. +]-- руоф 
		["loc_achievement_adamant_kill_with_ranged_desc"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, Kill "..CNumb("{target}", "target_rgb").." enemies with Ranged Attacks while using "..CKWord("Terminus Warrant", "TerminusWarr_rgb").." Keystone.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, убейте "..CNumb("{target}", "target_rgb").." врагов в дальнем бою с помощью ключевого таланта "..CKWord("Ордер Терминус", "TerminusWarr_rgb_ru")..".",
		},
	--[+ Full Force of the Lex +]-- руоф 
	-- ["loc_achievement_adamant_time_in_forceful"] = {
		-- ru = "Полная мощь Закона",
	-- },
		--[+ On Heresy Threat or higher, spend 3500s with Forceful active. +]-- руоф 
		["loc_achievement_adamant_time_in_forceful_desc"] = {
			en = "On "..CKWord("Heresy", "heresy_rgb").." Threat or higher, spend "..CNumb("{target}", "target_rgb").." seconds with "..CKWord("Forceful", "Forceful_rgb").." Keystone active.",
			ru = "На сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше, проведите "..CNumb("{target}", "target_rgb").." секунд с активным ключевым талантом "..CKWord("Неудержимый", "Forceful_rgb_ru")..".",
		},


	--[+ +HIVE SCUM - ОТРЕБЬЕ УЛЬЯ+ +]--
	["loc_class_broker_title"] = {
		en = CKWord("Hive scum", "cls_scm_rgb"),
		ru = CKWord("Отребье улья", "cls_scm_rgb_ru"),
	},
		--[+ PROGRESSION - ПРОГРЕСС - 進度 +]--
	--[+ Trusted Cartel Member (1-6) +]-- руоф  (1-6)
	-- ["loc_achievement_rank_broker_2_x_name"] = {
		-- ru = "Доверенный член картеля ({tier})",
	-- },
		--[+ Reach Trust Level __ as a Hive Scum. +]-- руоф Заслужить уровень доверия __, играя за .
		["loc_achievement_rank_broker_2_x_description"] = {
			en = "Reach Trust Level "..CNumb("{target}", "target_rgb").." as a "..CKWord("Hive Scum", "cls_scm_rgb")..".",
			ru = "Достигните "..CNumb("{target}", "target_rgb").." уровня доверия "..CKWord("Отребьем улья", "cls_scm2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("蜂巢渣滓", "cls_scm_rgb_tw").." 達到信任等級 "..CNumb("{target}", "target_rgb").." 。",
		},
	--[+ Conclave's Will (1-5) +]-- руоф  (1-5)
	-- ["loc_achievement_missions_broker_2_x_name"] = {
		-- ru = "Воля Конклава ({tier})",
	-- },
		--[+ Complete 100 Missions as a Arbitrator. +]-- руоф Выполнить Арбитратором задания: 100.
		["loc_achievement_missions_broker_2_x_description"] = {
			en = "Complete "..CNumb("{target}", "target_rgb").." Missions as a "..CKWord("Hive Scum", "cls_scm_rgb")..".",
			ru = "Пройдите "..CNumb("{target}", "target_rgb").." миссий "..CKWord("Отребьем улья", "cls_scm2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("蜂巢渣滓", "cls_scm_rgb_tw").." 完成 "..CNumb("{target}", "target_rgb").." 次任務。",
		},
	--[+ Savvy Operator +]-- руоф 
	-- ["loc_achievement_missions_broker_2_objective_1_name"] = {
		-- en = "Savvy Operator (1)",
		-- ru = "Опытный оператор (1)",
	-- },
		--[+ As a Arbitrator, complete at least one Mission of each type. +]-- руоф Выполнить Арбитратором по меньшей мере одно задание каждого типа.
		["loc_achievement_missions_broker_2_objective_1_description"] = {
			en = "As a "..CKWord("Hive Scum", "cls_scm_rgb")..", complete at least "..CNumb("1", "n_1_rgb").." Mission of each type.",
			ru = "Пройдите "..CKWord("Отребьем улья", "cls_scm2_rgb_ru").." как минимум "..CNumb("1", "n_1_rgb").." миссию каждого типа.",
			["zh-tw"] = "使用 "..CKWord("蜂巢渣滓", "cls_scm_rgb_tw").." 完成以下任務 "..CNumb("1", "n_1_rgb").." 次。",
		},
	--[+ Savvy Operator (2) +]-- руоф  (2)
	-- ["loc_achievement_missions_broker_2_objective_2_name"] = {
		-- ru = "Опытный оператор (2)",
	-- },
		--[+ As a Arbitrator, complete a Mission of each type on Malice Threat or higher. +]--
		["loc_achievement_missions_broker_2_objective_2_description"] = {
			en = "As a "..CKWord("Hive Scum", "cls_scm_rgb")..", complete "..CNumb("1", "n_1_rgb").." Mission of each type on "..CKWord("Malice", "malice_rgb").." Threat or higher.",
			ru = "Пройдите "..CKWord("Отребьем улья", "cls_scm2_rgb_ru").." "..CNumb("1", "n_1_rgb").." миссию каждого типа на сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше.",
		},
	--[+ Savvy Operator (3) +]-- руоф  (3)
	-- ["loc_achievement_missions_broker_2_objective_3_name"] = {
		-- ru = "Опытный оператор (3)",
	-- },
		--[+ As a Arbitrator, complete a Mission of each type on Heresy Threat or higher. +]--
		["loc_achievement_missions_broker_2_objective_3_description"] = {
			en = "As a "..CKWord("Hive Scum", "cls_scm_rgb")..", complete "..CNumb("1", "n_1_rgb").." Mission of each type on "..CKWord("Heresy", "heresy_rgb").." Threat or higher.",
			ru = "Пройдите "..CKWord("Отребьем улья", "cls_scm2_rgb_ru").." "..CNumb("1", "n_1_rgb").." миссию каждого типа на сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше.",
		},
	--[+ Prove Your Worth (1-5) +]-- руоф Докажи, чего стоишь (1-5) -- 證明你的價值 (1-5)
	--[+ Fight the Good Fight (1-5) +]-- руоф Сражайся достойно (1-5) -- 為正義而戰 (1-5)
	--[+ First Steps (1-2) +]-- руоф Первые шаги (1-2) -- 首要步驟 (1-2)
	--[+ Promotion Material (1) +]-- руоф Материалы пропаганды (1)
	--[+ For The Emperor (1-3) +]-- руоф За императора (1-3) -- 為了皇帝 (1-3)
	--[+ Hive Scum +]-- руоф Отребье улья
	--[+ Hive Blooded +]-- руоф 
	--[+ Hive Protector +]-- руоф 
		--[+ Complete the following Penances as the Arbitrator. +]-- руоф Выполнить следующие искупления за Арбитратора.
		["loc_achievement_group_broker_2_description"] = {
			en = "Complete the following Penances as the "..CKWord("Hive Scum", "cls_scm_rgb")..".",
			ru = "Выполните следующие Искупления "..CKWord("Отребьем улья", "cls_scm2_rgb_ru")..".",
			["zh-tw"] = "使用 "..CKWord("蜂巢渣滓", "cls_scm_rgb_tw").." 完成以下苦修。",
		},
	--[+ Hive Scum Master of War +]-- руоф 

		--[+ ABILITIES - СПОСОБНОСТИ - 技能 +]--
	--[+ Generous +]-- руоф 
	-- ["loc_achievement_broker_gunslinger_aura_name"] = {
		-- ru = "Щедрый",
	-- },
		--[+ Share 3500 amount of ammo using Gunslinger. Ammo shared by allies in coherency also count. +]-- руоф 
		["loc_achievement_broker_gunslinger_aura_description"] = {
			en = "Share "..CNumb("{target}", "target_rgb").." amount of Ammo using "..CKWord("Gunslinger", "Gunslinger_rgb").." Aura. Ammo shared by Allies in "..CKWord("Coherency", "Coherency_rgb").." also count.",
			ru = "Раздайте "..CNumb("{target}", "target_rgb").." патронов, используя ауру "..CKWord("Стрелок", "Gunslinger_rgb_ru")..". Патроны, которыми делятся союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru")..", также учитываются.",
		},
	--[+ Brawler +]-- руоф 
	-- ["loc_achievement_broker_ruffian_aura_name"] = {
		-- ru = "Драчун",
	-- },
		--[+ Kill 5000 enemies in melee while under the effects of Ruffian. Kills by allies in coherency also count. +]-- руоф 
		["loc_achievement_broker_ruffian_aura_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies in Melee while under the effects of "..CKWord("Ruffian", "Ruffian_rgb").." Aura. Kills made by Allies in "..CKWord("Coherency", "Coherency_rgb").." also count.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов в ближнем бою под действием ауры "..CKWord("Хулиган", "Ruffian_rgb_ru")..". Убийства, совершённые союзниками в "..CKWord("сплочённости", "splochennosti_rgb_ru")..", также учитываются.",
		},
	--[+ Shooter +]-- руоф 
	-- ["loc_achievement_broker_anarchist_aura_name"] = {
		-- ru = "Стрелок",
	-- },
		--[+ Perform 1200 Critical Strikes while under the effect of Anarchist. Critical Strikes performed by allies in coherency also count. +]-- руоф 
		["loc_achievement_broker_anarchist_aura_alt_description"] = {
			en = "Perform "..CNumb("{target}", "target_rgb").." "..CKWord("Critical strikes", "Crit_strikes_rgb").." while under the effect of "..CKWord("Anarchist", "Anarchist_rgb").." Aura. "..CKWord("Critical strikes", "Crit_strikes_rgb").." performed by Allies in "..CKWord("Coherency", "Coherency_rgb").." also count.",
			ru = "Нанесите "..CNumb("{target}", "target_rgb").." "..CKWord("критических ударов", "krit_udarov_rgb_ru")..", находясь под действием ауры "..CKWord("Анархист", "Anarchist_rgb_ru")..". "..CKWord("Критические удары", "Krit_udary_rgb_ru")..", нанесённые союзниками в "..CKWord("сплочённости", "splochennosti_rgb_ru")..", также учитываются.",
		},
	--[+ Blinding! +]-- руоф 
	-- ["loc_achievement_broker_enemies_hit_by_flash_grenade_name"] = {
		-- ru = "Ослепление!",
	-- },
	--[+ Played a Blinder +]-- руоф 
	-- ["loc_achievement_broker_enemies_hit_by_flash_grenade_2_name"] = {
		-- ru = "Ослепительная игра",
	-- },
		--[+ Stagger 3 enemies 50 times with a Blinder. +]-- руоф 
		["loc_achievement_broker_enemies_hit_by_flash_grenade_description"] = {
			en = CKWord("Stagger", "Stagger_rgb").." "..CNumb("{enemy_count}", "enemy_count_rgb").." enemies with a "..CKWord("Blinder", "Blinder_rgb").." Blitz, "..CNumb("{target}", "target_rgb").." times.",
			ru = CKWord("Оглушите", "Oglushite_rgb_ru").." "..CNumb("{enemy_count}", "enemy_count_rgb").." врагов "..CNumb("{target}", "target_rgb").." раз с помощью блица "..CKWord("Ослепитель", "Blinder_rgb_ru")..".",
		},
	--[+ Bring the Boom +]-- руоф 
	-- ["loc_achievement_broker_enemies_killed_by_missile_launcher_name"] = {
		-- ru = "Притащи Бабах",
	-- },
	--[+ Boom Brought +]-- руоф 
	-- ["loc_achievement_broker_enemies_killed_by_missile_launcher_2_name"] = {
		-- ru = "Притащил Бабах",
	-- },
		--[+ Kill 45 Elites/Monstrosities with the Boom Bringer. +]-- руоф 
		["loc_achievement_broker_enemies_killed_by_missile_launcher_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." Elites or Monstrosities with the "..CKWord("Boom Bringer", "BoomBringer_rgb").." Blitz.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." элитных противников или чудовищ с помощью блица "..CKWord("Бабахер", "BoomBringer_rgb_ru")..".",
		},
	--[+ Choke on This +]-- руоф 
	-- ["loc_achievement_broker_enemies_affected_by_chem_bomb_name"] = {
		-- ru = "На, подавись!",
	-- },
	--[+ 'Ave it! +]-- руоф 
	-- ["loc_achievement_broker_enemies_affected_by_chem_bomb_2_name"] = {
		-- ru = "Получи!",
	-- },
		--[+ Affect 400 unique enemies with a Chem Grenade. +]-- руоф 
		["loc_achievement_broker_enemies_affected_by_chem_bomb_description"] = {
			en = "Affect "..CNumb("{target}", "target_rgb").." unique enemies with a "..CKWord("Chem Grenade", "ChemGrenade_rgb").." Blitz.",
			ru = "Воздействуйте на "..CNumb("{target}", "target_rgb").." уникальных врагов блицом "..CKWord("Хим-граната", "ChemGrenade_rgb_ru")..".",
		},
	--[+ Gun For Hire +]-- руоф 
	-- ["loc_achievement_broker_enemies_killed_with_focus_mode_name"] = {
		-- ru = "Наёмник",
	-- },
		--[+ Kill 1000 enemies while Desperado is active. +]-- руоф 
		["loc_achievement_broker_enemies_killed_with_focus_mode_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies while "..CKWord("Desperado", "Desperad_rgb").." Ability is active.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов пока активна способность "..CKWord("Безбашенный", "Desperad_rgb_ru")..".",
		},
	--[+ Nimble +]-- руоф 
	-- ["loc_achievement_broker_attacks_dodged_in_focus_mode_name"] = {
		-- ru = "Ловкач",
	-- },
		--[+ Dodge 750 attacks while Desperado is active. +]-- руоф 
		["loc_achievement_broker_attacks_dodged_in_focus_mode_description"] = {
			en = "Dodge "..CNumb("{target}", "target_rgb").." attacks while "..CKWord("Desperado", "Desperad_rgb").." Ability is active.",
			ru = "Уклонитесь от "..CNumb("{target}", "target_rgb").." атак, пока активна способность "..CKWord("Безбашенный", "Desperad_rgb_ru")..".",
		},
	--[+ Hive Streets of Rage +]-- руоф 
	-- ["loc_achievement_broker_deal_damage_in_punk_rage_name"] = {
		-- ru = "Улицы Ярости Улья",
	-- },
		--[+ Deal 60000 damage while Rampage! is active. +]-- руоф 
		["loc_achievement_broker_deal_damage_in_punk_rage_description"] = {
			en = "Deal "..CNumb("{target}", "target_rgb").." "..CKWord("Damage", "Damage_rgb").." while "..CKWord("Rampage!", "Rampag_rgb").." Ability is active.",
			ru = "Нанесите "..CNumb("{target}", "target_rgb").." "..CKWord("урона", "urona_rgb_ru").." пока активна способность "..CKWord("Ярость!", "Rampag_rgb_ru"),
		},
	--[+ Rampager +]-- руоф 
	-- ["loc_achievement_broker_stay_in_punk_rage_name"] = {
		-- ru = "Буйный",
	-- },
		--[+ Spend 900 seconds with Rampage! active. +]-- руоф 
		["loc_achievement_broker_stay_in_punk_rage_description"] = {
			en = "Spend "..CNumb("{target}", "target_rgb").." seconds with "..CKWord("Rampage!", "Rampag_rgb").." Ability is active.",
			ru = "Проведите "..CNumb("{target}", "target_rgb").." секунд пока активна способность "..CKWord("Ярость!", "Rampag_rgb_ru"),
		},
	--[+ Street Doctor +]-- руоф 
	-- ["loc_achievement_broker_deploy_stimm_field_name"] = {
		-- ru = "Уличный доктор",
	-- },
		--[+ Deploy the Stimm Supply 45 times. +]-- руоф 
		["loc_achievement_broker_deploy_stimm_field_description"] = {
			en = "Deploy the "..CKWord("Stimm Supply", "StimmSupply_rgb").." Ability "..CNumb("{target}", "target_rgb").." times.",
			ru = "Разверните способность "..CKWord("Стим-поддержка", "StimmSupply_rgb_ru").." "..CNumb("{target}", "target_rgb").." раз.",
		},
	--[+ Shared Benefits +]-- руоф 
	-- ["loc_achievement_broker_buff_allies_chem_field_name"] = {
		-- ru = "Разделённая выгода",
	-- },
		--[+ Buff allies for 2400 seconds with Stimm Supply. +]-- руоф 
		["loc_achievement_broker_buff_allies_chem_field_description"] = {
			en = "Buff Allies for "..CNumb("{target}", "target_rgb").." seconds with "..CKWord("Stimm Supply", "StimmSupply_rgb").." Ability.",
			ru = "Усильте союзников на "..CNumb("{target}", "target_rgb").." секунд с помощью способности "..CKWord("Стим-поддержка", "StimmSupply_rgb_ru")..".",
		},
	--[+ Raptor's Eye +]-- руоф 
	-- ["loc_achievement_broker_gunslinger_keystone_a_name"] = {
		-- ru = "Взгляд хищника",
	-- },
		--[+ Gain 150 stacks of Vulture's Mark. +]-- руоф 
		["loc_achievement_broker_gunslinger_keystone_a_description"] = {
			en = "Gain "..CNumb("{target}", "target_rgb").." Stacks of "..CKWord("Vulture's Mark", "VulturesMark_rgb").." Keystone.",
			ru = "Получите "..CNumb("{target}", "target_rgb").." зарядов ключевого таланта "..CKWord("Метка стервятника", "VulturesMark_rgb_ru")..".",
		},
	--[+ Raptor's Strike +]-- руоф 
	-- ["loc_achievement_broker_gunslinger_keystone_b_name"] = {
		-- ru = "Удар хищника",
	-- },
		--[+ Gain 300 stacks of Vulture's Mark. +]-- руоф 
		["loc_achievement_broker_gunslinger_keystone_b_description"] = {
			en = "Gain "..CNumb("{target}", "target_rgb").." Stacks of "..CKWord("Vulture's Mark", "VulturesMark_rgb").." Keystone.",
			ru = "Получите "..CNumb("{target}", "target_rgb").." зарядов ключевого таланта "..CKWord("Метка стервятника", "VulturesMark_rgb_ru")..".",
		},
	--[+ What a Rush! +]-- руоф 
	-- ["loc_achievement_broker_ruffian_keystone_a_name"] = {
		-- ru = "",
	-- },
		--[+ Proc Adrenaline Frenzy 80 times. +]-- руоф 
		["loc_achievement_broker_ruffian_keystone_a_description"] = {
			en = "Trigger the "..CKWord("Adrenaline", "Adren_rgb").." effect from "..CKWord("Adrenaline Frenzy", "AdrenFrenz_rgb").." Keystone "..CNumb("{target}", "target_rgb").." times.",
			ru = "Активируйте "..CNumb("{target}", "target_rgb").." раз эффект "..CKWord("Адреналина", "Adren_rgb_ru").." от ключевого таланта "..CKWord("Адреналиновое безумие", "AdrenFrenz_rgb_ru")..".",
		},
	--[+ Battle Focussed +]-- руоф 
	-- ["loc_achievement_broker_ruffian_keystone_b_name"] = {
		-- ru = "Боевая сосредоточенность",
	-- },
		--[+ Proc Adrenaline Frenzy 160 times. +]-- руоф 
		["loc_achievement_broker_ruffian_keystone_b_description"] = {
			en = "Trigger the "..CKWord("Adrenaline", "Adren_rgb").." effect from "..CKWord("Adrenaline Frenzy", "AdrenFrenz_rgb").." Keystone "..CNumb("{target}", "target_rgb").." times.",
			ru = "Активируйте "..CNumb("{target}", "target_rgb").." раз эффект "..CKWord("Адреналина", "Adren_rgb_ru").." от ключевого таланта "..CKWord("Адреналиновое безумие", "AdrenFrenz_rgb_ru")..".",
		},
	--[+ Stimmed +]-- руоф 
	-- ["loc_achievement_broker_anarchist_keystone_a_name"] = {
		-- ru = "",
	-- },
		--[+ Remain at full stacks of Chemical Dependency for 1000s. +]-- руоф 
		["loc_achievement_broker_anarchist_keystone_a_description"] = {
			en = "Remain at full Stacks of "..CKWord("Chemical Dependency", "ChemDepend_rgb").." Keystone for "..CNumb("{target}", "target_rgb").." seconds.",
			ru = "Поддерживайте полный заряд ключевого таланта "..CKWord("Хим-зависимость", "ChemDepend_rgb_ru").." в течение "..CNumb("{target}", "target_rgb").." секунд.",
		},
	--[+ Alchemist +]-- руоф 
	-- ["loc_achievement_broker_anarchist_keystone_b_name"] = {
		-- ru = "Алхимик",
	-- },
		--[+ Remain at full stacks of Chemical Dependency for 2000s. +]-- руоф 
		["loc_achievement_broker_anarchist_keystone_b_description"] = {
			en = "Remain at full Stacks of "..CKWord("Chemical Dependency", "ChemDepend_rgb").." Keystone for "..CNumb("{target}", "target_rgb").." seconds.",
			ru = "Поддерживайте полный заряд ключевого таланта "..CKWord("Хим-зависимость", "ChemDepend_rgb_ru").." в течение "..CNumb("{target}", "target_rgb").." секунд.",
		},
	--[+ Speedster +]-- руоф 
	-- ["loc_achievement_broker_stimm_celerity_potency_name"] = {
		-- ru = "Быстрый",
	-- },
		--[+ Gain 3000% total attack speed with at least 50% Viscosity allocated in the Cartel Special. +]-- руоф 
		["loc_achievement_broker_stimm_celerity_potency_description"] = {
			en = "Gain "..CNumb("{target}", "target_rgb")..CNumb("%", "pc_rgb").." total Attack Speed with at least "..CNumb("{viscosity_target}", "viscosity_target_rgb")..CNumb("%", "pc_rgb").." "..CKWord("Viscosity", "Viscosity_rgb").." allocated in the "..CKWord("Cartel Special Stimm", "Cartel_Stimm_rgb")..".",
			ru = "Получите в общей сложности "..CNumb("{target}", "target_rgb")..CNumb("%", "pc_rgb").." к скорости атаки с минимум "..CNumb("{viscosity_target}", "viscosity_target_rgb")..CNumb("%", "pc_rgb").." "..CKWord("Вязкость", "Viscosity_rgb_ru")..", выбранной для "..CKWord("Особого стима Картеля", "Cartel_Stimm_rgb_ru")..".",
		},
	--[+ Clinical Assassin +]-- руоф 
	-- ["loc_achievement_broker_stimm_hit_weakspots_name"] = {
		-- ru = "Клинический убийца",
	-- },
		--[+ Hit weakspots while Cartel Special is active 2000 times. +]-- руоф 
		["loc_achievement_broker_stimm_hit_weakspots_description"] = {
			en = "Hit "..CKWord("Weakspots", "Weakspots_rgb").." while "..CKWord("Cartel Special Stimm", "Cartel_Stimm_rgb").." is active "..CNumb("{target}", "target_rgb").." times.",
			ru = "Попадите "..CNumb("{target}", "target_rgb").." раз в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." пока активен "..CKWord("Особый стим Картеля", "Cartel_Stim_rgb_ru")..".",
		},
	--[+ Pugilist +]-- руоф 
	-- ["loc_achievement_broker_stimm_combat_potency_name"] = {
		-- ru = "Борец",
	-- },
		--[+ Gain 2000% total strength with at least 50% Viscosity allocated in the Cartel Special. +]-- руоф 
		["loc_achievement_broker_stimm_combat_potency_description"] = {
			en = "Gain "..CNumb("{target}", "target_rgb")..CNumb("%", "pc_rgb").." total "..CKWord("Strength", "Strength_rgb").." with at least "..CNumb("{viscosity_target}", "viscosity_target_rgb")..CNumb("%", "pc_rgb").." "..CKWord("Viscosity", "Viscosity_rgb").." allocated in the "..CKWord("Cartel Special Stimm", "Cartel_Stimm_rgb")..".",
			ru = "Получите в общей сложности "..CNumb("{target}", "target_rgb")..CNumb("%", "pc_rgb").." к "..CKWord("силе", "sile_rgb_ru").." с минимум "..CNumb("{viscosity_target}", "viscosity_target_rgb")..CNumb("%", "pc_rgb").." "..CKWord("Вязкость", "Viscosity_rgb_ru")..", выбранной для "..CKWord("Особого стима Картеля", "Cartel_Stimm_rgb_ru")..".",
		},
	--[+ Brutal Bludgeons +]-- руоф 
	-- ["loc_achievement_broker_stimm_heavy_attack_kills_name"] = {
		-- ru = "Жестокое избиение",
	-- },
		--[+ Kill enemies with heavy attacks while Cartel Special is active, 650 times. +]-- руоф 
		["loc_achievement_broker_stimm_heavy_attack_kills_description"] = {
			en = "Kill enemies with Heavy Attacks while "..CKWord("Cartel Special Stimm", "Cartel_Stimm_rgb").." is active, "..CNumb("{target}", "target_rgb").." times.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов тяжёлыми атаками пока активен "..CKWord("Особый стим Картеля", "Cartel_Stim_rgb_ru")..".",
		},
	--[+ Enhanced +]-- руоф 
	-- ["loc_achievement_broker_stimm_durability_potency_name"] = {
		-- ru = "Улучшенный",
	-- },
		--[+ Replenish 1500 total Toughness with at least 50% Viscosity allocated in the Cartel Special. +]-- руоф 
		["loc_achievement_broker_stimm_durability_potency_description"] = {
			en = "Replenish "..CNumb("{target}", "target_rgb").." total "..CKWord("Toughness", "Toughness_rgb").." with at least "..CNumb("{viscosity_target}", "viscosity_target_rgb")..CNumb("%", "pc_rgb").." "..CKWord("Viscosity", "Viscosity_rgb").." allocated in the "..CKWord("Cartel Special Stimm", "Cartel_Stimm_rgb")..".",
			ru = "Восстановите в общей сложности "..CNumb("{target}", "target_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." с минимум "..CNumb("{viscosity_target}", "viscosity_target_rgb")..CNumb("%", "pc_rgb").." "..CKWord("Вязкость", "Viscosity_rgb_ru")..", выбранной для "..CKWord("Особого стима Картеля", "Cartel_Stimm_rgb_ru")..".",
		},
	--[+ Toxic Shock +]-- руоф 
	-- ["loc_achievement_broker_stimm_apply_toxin_name"] = {
		-- ru = "Токсический шок",
	-- },
		--[+ Apply stacks of Chem Toxin while Cartel Special is active, 1500 times. +]-- руоф 
		["loc_achievement_broker_stimm_apply_toxin_description"] = {
			en = "Apply Stacks of "..CKWord("Chem Toxin", "Chem_Tox_rgb").." while "..CKWord("Cartel Special Stimm", "Cartel_Stimm_rgb").." is active, "..CNumb("{target}", "target_rgb").." times.",
			ru = "Наложите на врагов "..CNumb("{target}", "target_rgb").." зарядов "..CKWord("Хим-токсина", "Chem_Toxa_rgb_ru").." пока активен "..CKWord("Особый стим Картеля", "Cartel_Stim_rgb_ru")..".",
		},


--[+ +TACTICAL - ТАКТИЧЕСКИЕ - 戰術 + +]--
	--[+ OFFENSIVE - АТАКА +]-- руоф Наступление
	["loc_achievement_category_offensive_label"] = {
		ru = "Атака",
		["zh-tw"] = "攻擊",
	},

	--[+ Situational Awarness +]-- руоф На примете
	-- ["loc_achievement_enemies_killed_by_barrels_name"] = {
		-- ru = "Ситуационная осведомленность",
	-- },
		--[+ Kill __ enemies by blowing up explosive barrels. +]-- руоф Убейте врагов (__) с помощью взрывных бочек.
		["loc_achievement_enemies_killed_by_barrels_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies by blowing up Explosive barrels.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов с помощью подрыва взрывных бочек.",
			-- ["zh-tw"] = "利用爆炸桶擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。",
		},
	--[+ The Enemy of my Enemy is my Friend +]-- руоф Враг моего врага - мой друг
	["loc_achievement_enemies_killed_by_poxburster_name"] = {
		["zh-tw"] = "敵人的敵人即朋友",
	},
		--[+ Kill 10 enemies by having a Poxbuster explode next to them. +]-- руоф Убейте врагов (10), уничтожив рядом с ними чумного Взрывуна.
		["loc_achievement_enemies_killed_by_poxburster_description"] = {
			en = "Kill "..CNumb("{target}", "target_rgb").." enemies by having a Poxbuster explode next to them.",
			ru = "Убейте "..CNumb("{target}", "target_rgb").." врагов, взорвав рядом с ними Чумного взрывника.",
			-- ["zh-tw"] = "引爆瘟疫爆者以擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。",
		},
	--[+ No time to Bleed +]--
	-- ["loc_code"] = {
		-- en = "",
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
		--[+ As a team complete a mission on Heresy Threat or +]--
		-- ["loc_code"] = {
			-- en = "",
			-- ru = "",
			-- ["zh-tw"] = "",
		-- },







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
			-- loc_text("Убейте "..CNumb("{target}", "target_rgb").." врагов, карабкающихся наверх.")),
	-- --[+ Traditional Chinese +]--
	-- -- 殺死50名攀爬的敵人。
	-- create_template("ach_off_5_ext_desc_tw",
		-- {"loc_achievement_enemies_climbing_description"}, {"zh-tw"},
			-- loc_text("擊殺 "..CNumb("{target}", "target_rgb").." 名正在攀爬中的敵人。")),

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
		-- --[+	 +]-- руоф Не время для ран
	-- --[+ Russian +]--
	-- -- create_template("ach_off_1_ext_ru",
		-- -- {"loc_achievement_enemies_killed_by_barrels_name"}, {"ru"},
			-- -- loc_text("Не время для ран")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_off_1_ext_tw",
		-- -- {"loc_achievement_enemies_killed_by_barrels_name"}, {"zh-tw"},
			-- -- loc_text("狀態意識")),

		-- --[+	 +]-- руоф Действуя сообща, выполните задание при угрозе «Ересь» или выше так, чтобы всех вас не сбили с ног более 5 р.
	-- --[+ Russian +]--
	-- -- create_template("ach_off_1_ext_desc_ru",
		-- -- {"loc_achievement_enemies_killed_by_barrels_description"}, {"ru"},
			-- -- loc_text("Убейте "..CNumb("{target}", "target_rgb").." врагов с помощью взрывных бочек.")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用爆炸統擊殺xx名敵人。
	-- -- create_template("ach_off_1_ext_desc_tw",
		-- -- {"loc_achievement_enemies_killed_by_barrels_description"}, {"zh-tw"},
			-- -- loc_text("利用爆炸桶擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。")),
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
			-- loc_text("Убейте "..CNumb("{target}", "target_rgb").." врагов за "..CNumb("{time_window}", "time_wind_rgb").." секунд.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在30秒內擊殺xx名敵人。
	-- create_template("ach_off_4_ext_desc_tw",
		-- {"loc_achievement_fast_enemies_x_description"}, {"zh-tw"},
			-- loc_text("在 "..CNumb("{time_window}", "time_wind_rgb").." 秒內擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。")),

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
			-- loc_text("Убейте в сумме "..CNumb("{target}", "target_rgb").." врагов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 總共殺死xx0000名敵人。
	-- create_template("ach_off_1_ext_desc_tw",
		-- {"loc_achievement_enemies_x_description"}, {"zh-tw"},
			-- loc_text("累計擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。")),

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
			-- loc_text("Убейте "..CNumb("{target}", "target_rgb").." врагов выстрелами в голову в течение "..COLORS_Numbers.n_10_rgb").." секунд.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在10秒內擊殺xx名敵人。
	-- create_template("ach_off_6_ext_desc_tw",
		-- {"loc_achievement_fast_headshot_x_description"}, {"zh-tw"},
			-- loc_text("在 "..COLORS_Numbers.n_10_rgb").." 秒內以爆頭擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。")),

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
			-- loc_text("Убейте Монстра за "..CNumb("{target}", "target_rgb").." секунд или меньше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在x秒內擊殺一隻巨獸。
	-- create_template("ach_off_3_ext_desc_tw",
		-- {"loc_achievement_boss_fast_x_description"}, {"zh-tw"},
			-- loc_text("在 "..CNumb("{target}", "target_rgb").." 秒內擊殺一隻巨獸。")),

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
			-- loc_text("Совершите "..CNumb("{target}", "target_rgb").." последовательных убийств выстрелами врагам в голову.")),
	-- --[+ Traditional Chinese +]--
	-- -- 連續爆頭殺死20名敵人
	-- create_template("ach_off_2_ext_desc_tw",
		-- {"loc_achievement_consecutive_headshots_description"}, {"zh-tw"},
			-- loc_text("連續爆頭擊殺 "..CNumb("{target}", "target_rgb").." 名敵人。")),

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
			-- loc_text("Выполните "..CNumb("{target}", "target_rgb").." миссий подряд, не будучи ни разу сбитым с ног, на сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡毒或更高難度下，在不被擊倒的情況下連續完成x個任務。
	-- create_template("ach_red_vet_3_ext_desc_tw",
		-- {"loc_achievement_flawless_mission_x_description"}, {"zh-tw"},
			-- loc_text("在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度中，連續完成 "..CNumb("{target}", "target_rgb").." 場任務且期間未曾被擊倒。")),

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
			-- loc_text("Уклонитесь от "..CNumb("{target}", "target_rgb").." выстрелов с помощью бега.")),
	-- --[+ Traditional Chinese +]--
	-- -- 通過衝刺總共閃避99次攻擊。
	-- create_template("ach_red_vet_4_ext_desc_tw",
		-- {"loc_achievement_total_sprint_dodges_description"}, {"zh-tw"},
			-- loc_text("透過衝刺閃避 "..CNumb("{target}", "target_rgb").." 發射攻擊。")),

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
			-- loc_text("Заблокируйте "..CNumb("{target}", "target_rgb").." единиц урона за "..CNumb("{time_window}", "time_wind_rgb").." секунд.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在xx秒內格檔xxx點傷害值。
	-- create_template("ach_red_vet_1_ext_desc_tw",
		-- {"loc_achievement_fast_blocks_x_description"}, {"zh-tw"},
			-- loc_text("在 "..CNumb("{time_window}", "time_wind_rgb").." 秒內格擋 "..CNumb("{target}", "target_rgb").." 傷害。")),

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
			-- loc_text("Завершите миссию, не получив урона "..CKWord("", "Health_rgb_ru")..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成1個任務而不受到任何生命值傷害。
	-- create_template("ach_red_vet_7_ext_desc_tw",
		-- {"loc_achievement_mission_no_damage_description"}, {"zh-tw"},
			-- loc_text("在未受到任何『"..CKWord("", "Health_rgb_tw").."』傷害的情況下完成一場任務。")),

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
			-- loc_text("Уклонитесь от "..CNumb("{target}", "target_rgb").." атак, не получив урона.")),
	-- --[+ Traditional Chinese +]--
	-- -- 閃避xx次攻擊而不受傷害。
	-- create_template("ach_red_vet_2_ext_desc_tw",
		-- {"loc_achievement_consecutive_dodge_x_description"}, {"zh-tw"},
			-- loc_text("連續閃避 "..CNumb("{target}", "target_rgb").." 次攻擊且不受到任何傷害。")),

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
			-- loc_text("Восстановите "..CNumb("{target}", "target_rgb").." "..CKWord("", "Toughness_rgb_ru").." от убийств в ближнем бою.")),
	-- --[+ Traditional Chinese +]--
	-- -- 從近戰擊殺中回復40000點韌性。
	-- create_template("ach_red_vet_6_ext_desc_tw",
		-- {"loc_achievement_melee_toughness_description"}, {"zh-tw"},
			-- loc_text("透過近戰擊殺恢復 "..CNumb("{target}", "target_rgb").." 點『"..CKWord("", "Toughness_rgb_tw").."』。")),

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
			-- loc_text("Спасите в общей сложности "..CNumb("{target}", "target_rgb").." оперативников.")),
	-- --[+ Traditional Chinese +]--
	-- -- 拯救總共xx名幹員。
	-- create_template("ach_tea_1_ext_desc_tw",
		-- {"loc_achievement_revive_x_description"}, {"zh-tw"},
			-- loc_text("累計救援 "..CNumb("{target}", "target_rgb").." 位幹員。")),

	-- --[+ Discipline & Teamwork (1-5) +]-- руоф Дисциплина и командная работа (1-5)
	-- --[+ Russian +]--
	-- -- create_template("ach_tea_6_ext_ru",
		-- -- {"loc_achievement_deployables_1-5_name"}, {"ru"},
			-- -- loc_text("Дисциплина и командная работа (1-5)")),
	-- --[+ Traditional Chinese 紀律和協作 +]--
	-- -- create_template("ach_tea_6_ext_tw",
	-- --	{"loc_achievement_deployables_1-5_name"}, {"zh-tw"},
	-- --		loc_text("紀律和協作 (1-5)")),

	-- --[+ Share 500 ammo or health packs. +]-- руоф Поделиться боеприпасами или аптечкой: 500.
	-- --[+ Russian +]--
	-- create_template("ach_tea_6_ext_desc_ru",
		-- {"loc_achievement_deployables_x_description"}, {"ru"},
			-- loc_text("Поделитесь "..CNumb("{target}", "target_rgb").." раз ящиками с боеприпасами или медикаментами.")),
	-- --[+ Traditional Chinese +]--
	-- -- 分享xxx次彈藥或醫療包。
	-- create_template("ach_tea_6_ext_desc_tw",
		-- {"loc_achievement_deployables_x_description"}, {"zh-tw"},
			-- loc_text("分享彈藥箱或醫療箱共計 "..CNumb("{target}", "target_rgb").." 次。")),

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
			-- loc_text("Восстановите "..CNumb("{target}", "target_rgb").." "..CKWord("", "Toughness_rgb_ru").." под действием "..CKWord("", "Coherency_rgb_ru")..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 通過協同補充2000點韌性。
	-- create_template("ach_tea_4_ext_desc_tw",
		-- {"loc_achievement_coherency_toughness_description"}, {"zh-tw"},
			-- loc_text("在『"..CKWord("", "Coherency_rgb_tw").."』狀態下，恢復 "..CNumb("{target}", "target_rgb").." 點『"..CKWord("", "Toughness_rgb_tw").."』。")),

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
			-- loc_text("Завершите "..CNumb("{target}", "target_rgb").." миссий так, чтобы никого из команды не сбили с ног.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在全員不被擊倒的情況下完成100項任務。
	-- create_template("ach_tea_3_ext_desc_tw",
		-- {"loc_achievement_flawless_team_description"}, {"zh-tw"},
			-- loc_text("完成 "..CNumb("{target}", "target_rgb").." 場任務，且隊伍中無任何成員被擊倒。")),

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
			-- loc_text("Завершите одну миссию, освободив из плена "..CNumb("{target}", "target_rgb").." разных оперативников хотя бы по разу.")),
	-- --[+ Traditional Chinese +]--
	-- -- 拯救3個不同的被俘幹員後完成1個任務。
	-- create_template("ach_tea_5_ext_desc_tw",
		-- {"loc_achievement_revive_all_description"}, {"zh-tw"},
			-- loc_text("在單場任務中，至少各救出一次共 "..CNumb("{target}", "target_rgb").." 位不同的隊友。")),

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
			-- loc_text("Помогите "..CNumb("{target}", "target_rgb").." сбитым с ног оперативникам вернуться в бой.")),
	-- --[+ Traditional Chinese +]--
	-- -- 幫助xx00名被擊倒的幹員站起來。
	-- create_template("ach_tea_2_ext_desc_tw",
		-- {"loc_achievement_assists_x_description"}, {"zh-tw"},
			-- loc_text("協助 "..CNumb("{target}", "target_rgb").." 位被擊倒的隊友重返戰場。")),

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

	-- --[+	 +]-- руоф Увернитесь от разброса из дробовика (50). [По 1 за каждого отброса с дробовиком]
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_shotgunner_spread_dodged_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 躲掉50次霰彈槍攻擊。[每個渣滓或血痂霰彈手只能算一次]
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_shotgunner_spread_dodged_description"}, {"zh-tw"},
			-- loc_text("躲掉 "..CNumb("{target}", "target_rgb").." 名霰彈槍敵人，每名只計算1次。")),

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
			-- loc_text("Убейте "..CNumb("{target}", "target_rgb").." врагов каждого типа из элитных дрегов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊殺每種渣滓精英各10名。
	-- create_template("ach_her_9_ext_desc_tw",
		-- {"loc_achievement_all_cultist_elites_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺每種『渣滓』精英各 "..CNumb("{target}", "target_rgb").." 名。")),

	-- --[+	 +]-- руоф Бойся топора
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
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 躲避50次歐格林輾壓者的過頭斬擊。[每個歐格林輾壓者只能算一次]
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_crusher_overhead_smash_dodged_description"}, {"zh-tw"},
			-- loc_text("躲避 "..CNumb("{target}", "target_rgb").." 名輾壓者的重鎚攻擊，每名只計算1次。")),

	-- --[+	 +]-- руоф Будь здоров
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_team_team_chaos_beast_of_nurgle_slain_no_corruption_name"}, {"ru"},
			-- -- loc_text("Будь здоров")),
	-- --[+ Traditional Chinese 早日康復 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_team_team_chaos_beast_of_nurgle_slain_no_corruption_name"}, {"zh-tw"},
			-- loc_text("早日康復")),

	-- --[+	 +]-- руоф Убейте тварь Нургла так, чтобы ни один член команды не пострадал от ее гниющей рвоты.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在沒有任何小隊成員被納垢巨獸的腐敗嘔吐擊中的情況下擊殺一隻納垢巨獸。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description"}, {"zh-tw"},
			-- loc_text("在沒有任何小隊成員被納垢巨獸的腐敗嘔吐擊中的情況下擊殺  "..CNumb("{target}", "target_rgb").." 隻納垢巨獸。")),

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
			-- -- loc_text("Убейте "..CNumb("{target}", "target_rgb").." Чумных взрывников атаками ближнего боя.")),
	-- --[+ Traditional Chinese +]--
	-- -- 利用近戰攻擊擊殺10名轟炸者。 -- Need to check if this is correct.
	-- create_template("ach_her_5_ext_desc_tw",
		-- {"loc_achievement_melee_renegade_description"}, {"zh-tw"},
			-- loc_text("使用近戰攻擊擊殺 "..CNumb("{target}", "target_rgb").." 隻瘟疫爆者。")),

	-- --[+	 +]-- руоф Задуем свечи
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_team_team_chaos_beast_of_nurgle_slain_no_corruption_name"}, {"ru"},
			-- -- loc_text("Задуем свечи")),
	-- --[+ Traditional Chinese 熄滅蠟燭 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_team_team_chaos_beast_of_nurgle_slain_no_corruption_name"}, {"zh-tw"},
			-- loc_text("熄滅蠟燭")),

	-- -- !!Duplicate loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description --
		-- --[+	 +]-- руоф Убейте огнеметчиков из числа скабов и отбросов (50) до того, как они используют свои способности.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_her_1_ext_desc_tw",
		-- -- {"loc_achievement_team_chaos_beast_of_nurgle_slain_no_corruption_description"}, {"zh-tw"},
			-- -- loc_text("在沒有任何小隊成員被納垢巨獸的腐敗嘔吐擊中的情況下擊殺	 "..CNumb("{target}", "target_rgb").." 隻納垢巨獸。")),
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
			-- loc_text("Убейте "..CNumb("{target}", "target_rgb").." Жнецов в ближнем бою.")),
	-- --[+ Traditional Chinese +]--
	-- -- 近戰殺死10名收割者。
	-- create_template("ach_her_18_ext_desc_tw",
		-- {"loc_achievement_ogryn_gunner_melee_description"}, {"zh-tw"},
			-- loc_text("使用近戰攻擊擊殺 "..CNumb("{target}", "target_rgb").." 名收割者。")),

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
			-- loc_text("擊殺所有類型的『混沌恐懼體』敵人各 "..CNumb("{target}", "target_rgb").." 次。")),

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
			-- loc_text("殺死 "..CNumb("{target}", "target_rgb").." 個惡魔宿主。")),

	-- --[+	 +]-- руоф К бою готов!
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_training_grounds_fully_unlocked_name"}, {"ru"},
			-- -- loc_text("К бою готов!")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_training_grounds_fully_unlocked_name"}, {"zh-tw"},
			-- loc_text("準備開打！")),

	-- --[+	 +]-- руоф Полностью разблокируйте тренировочную площадку.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_training_grounds_fully_unlocked_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完整解鎖訓練場。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_training_grounds_fully_unlocked_description"}, {"zh-tw"},
			-- loc_text("完整解鎖訓練場。")),

	-- --[+	 +]-- руоф Как ты подкрался?
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_bulwark_backstab_damage_inflicted_name"}, {"ru"},
			-- -- loc_text("Как ты подкрался?")),
	-- --[+ Traditional Chinese 意外一擊 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_bulwark_backstab_damage_inflicted_name"}, {"zh-tw"},
			-- loc_text("意外一擊")),

	-- --[+	 +]-- руоф Нанесите урон (25000) огрину-бастиону ударом в спину.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_bulwark_backstab_damage_inflicted_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 使用背刺對歐格林堡壘造成25000點傷害
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_bulwark_backstab_damage_inflicted_description"}, {"zh-tw"},
			-- loc_text("使用背刺對歐格林堡壘造成 "..CNumb("{target}", "target_rgb").." 點傷害")),

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
			-- loc_text("擊殺所有類型的『血痂』敵人各 "..CNumb("{target}", "target_rgb").." 次。")),

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
			-- loc_text("Убейте "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов Ужасов хаоса.")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊殺10個每種類型的恐魔專家。
	-- create_template("ach_her_14_ext_desc_tw",
		-- {"loc_achievement_all_chaos_specials_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺每種『混沌恐懼體』專家敵人各 "..CNumb("{target}", "target_rgb").." 名。")),

	-- --[+	 +]-- руоф Как ты подкрался?
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_team_chaos_spawned_killed_no_players_grabbed_name"}, {"ru"},
			-- -- loc_text("Как ты подкрался?")),
	-- --[+ Traditional Chinese 怪物驅散 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_team_chaos_spawned_killed_no_players_grabbed_name"}, {"zh-tw"},
			-- loc_text("怪物驅散")),

	-- --[+	 +]-- руоф Убейте отродье Хаоса так, чтобы не схватили ни одного члена команды.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_team_chaos_spawned_killed_no_players_grabbed_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在沒有任何小隊成員被渾沌魔物抓住的情況下擊殺一隻渾沌魔物。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_team_chaos_spawned_killed_no_players_grabbed_description"}, {"zh-tw"},
			-- loc_text("在沒有任何小隊成員被渾沌魔物抓住的情況下擊殺 "..CNumb("{target}", "target_rgb").." 隻渾沌魔物。")),

	-- --[+	 +]-- руоф Не попасться в сети
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_trapper_net_dodged_name"}, {"ru"},
			-- -- loc_text("Не попасться в сети")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_trapper_net_dodged_name"}, {"zh-tw"},
			-- loc_text("漏網之魚")),

	-- --[+	 +]-- руоф Увернитесь от сетей ловушечника (50). [По 1 за каждого ловушечника]
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_trapper_net_dodged_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 躲避50次陷阱兵的網子。[每個陷阱兵只能算一次]	
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_trapper_net_dodged_description"}, {"zh-tw"},
			-- loc_text("躲避 "..CNumb("{target}", "target_rgb").." 名陷阱兵的網子，每名只計算1次。")),

	-- --[+	 +]-- руоф Обезвреживатель
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_grenadier_killed_before_attack_occured_name"}, {"ru"},
			-- -- loc_text("Обезвреживатель")),
	-- --[+ Traditional Chinese +]--
	-- -- Not used in the zh-tw
	-- -- create_template("ach_her_1_ext_tw",
		-- -- {"loc_achievement_grenadier_killed_before_attack_occured_name"}, {"zh-tw"},
			-- -- loc_text("拆彈專家")),

	-- --[+	 +]-- руоф Убейте гренадеров из числа скабов и отбросов (50) до того, как они используют свои способности.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_grenadier_killed_before_attack_occured_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- Not used in the zh-tw

	-- --[+	 +]-- руоф Отвали от меня!
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_pox_hounds_pushed_name"}, {"ru"},
			-- -- loc_text("Отвали от меня!")),
	-- --[+ Traditional Chinese 滾遠一點！ +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_pox_hounds_pushed_name"}, {"zh-tw"},
			-- loc_text("滾遠一點！")),

	-- --[+	 +]-- руоф Подбросьте чумных гончих (50) в воздух. [По 1 за каждую гончую]
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_pox_hounds_pushed_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在半空中推開50隻瘟疫獵犬。[每隻獵犬只能算一次]
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_pox_hounds_pushed_description"}, {"zh-tw"},
			-- loc_text("推開 "..CNumb("{target}", "target_rgb").." 隻瘟疫獵犬，每隻只計算1次。")),

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
			-- loc_text("Убейте "..CNumb("{target}", "target_rgb").." дрегов.")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_11_ext_desc_tw",
		-- {"loc_achievement_kill_cultists_x_description"}, {"zh-tw"},
			-- loc_text("擊殺 "..CNumb("{target}", "target_rgb").." 名『渣滓』敵人。")),

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
			-- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из скабов-специалистов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 殺死每種血痂專家敵人各10名。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_all_renegade_specials_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺每種『血痂』專家敵人各 "..CNumb("{target}", "target_rgb").." 名。")),

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
			-- loc_text("Убейте "..CNumb("{target}", "target_rgb").." дрегов Берсерков в голову.")),
	-- --[+ Traditional Chinese +]--
	-- -- 爆頭殺死10名渣滓暴怒者。
	-- create_template("ach_her_12_ext_desc_tw",
		-- {"loc_achievement_cultist_berzerker_head_description"}, {"zh-tw"},
			-- loc_text("使用爆頭擊殺 "..CNumb("{target}", "target_rgb").." 名渣滓狂怒者。")),

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
			-- loc_text("Убейте "..CNumb("{target}", "target_rgb").." врагов каждого типа из элиты Ужасов хаоса.")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊殺10個精英恐魔。
	-- create_template("ach_her_15_ext_desc_tw",
		-- {"loc_achievement_all_chaos_elites_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺每種『混沌恐懼體』精英敵人各 "..CNumb("{target}", "target_rgb").." 名。")),

	-- --[+	 +]-- руоф Прыткие пятки
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_mutant_charge_dodged_name"}, {"ru"},
			-- -- loc_text("Прыткие пятки")),
	-- --[+ Traditional Chinese 快腳 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_mutant_charge_dodged_name"}, {"zh-tw"},
			-- loc_text("快腳")),

	-- --[+	 +]-- руоф Увернитесь от атак мутантов (50). [По 1 за каждого мутанта]
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_mutant_charge_dodged_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")), -- ???????????
	-- --[+ Traditional Chinese +]--
	-- -- 躲避50次變種人衝鋒。[每個突擊變種人只能算一次]
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_mutant_charge_dodged_description"}, {"zh-tw"},
			-- loc_text("躲避 "..CNumb("{target}", "target_rgb").." 名變種人的衝鋒，每名只計算1次。")),

	-- --[+	 +]-- руоф Решающий рывок
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_cultist_gunner_shot_dodged_name"}, {"ru"},
			-- -- loc_text("Решающий рывок")),
	-- --[+ Traditional Chinese 快跑 +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_cultist_gunner_shot_dodged_name"}, {"zh-tw"},
			-- loc_text("快跑")),

	-- --[+	 +]-- руоф Увернитесь от выстрелов пулеметчика (500) во время бега.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_cultist_gunner_shot_dodged_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 衝刺時躲掉500次槍手射擊。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_cultist_gunner_shot_dodged_description"}, {"zh-tw"},
			-- loc_text("衝刺時躲掉 "..CNumb("{target}", "target_rgb").." 次槍手射擊。")),

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
			-- loc_text("Убейте "..CNumb("{target}", "target_rgb").." скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 殺死xxx00名血痂敵人。
	-- create_template("ach_her_4_ext_desc_tw",
		-- {"loc_achievement_kill_renegades_x_description"}, {"zh-tw"},
			-- loc_text("擊殺 "..CNumb("{target}", "target_rgb").." 名『血痂』敵人。")),

	-- --[+	 +]-- руоф Сейчас рванет!
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_team_poxburster_damage_avoided_name"}, {"ru"},
			-- -- loc_text("Сейчас рванёт!")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_team_poxburster_damage_avoided_name"}, {"zh-tw"},
			-- loc_text("要爆炸了！")),

	-- --[+	 +]-- руоф Убейте чумных взрывунов (50), чтобы ни вы, ни члены команды не получили урона.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_team_poxburster_damage_avoided_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊殺50名瘟疫爆者，且自己和隊友都沒受到傷害。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_team_poxburster_damage_avoided_description"}, {"zh-tw"},
			-- loc_text("擊殺 "..CNumb("{target}", "target_rgb").." 名瘟疫爆者，且自己和隊友都沒受到傷害。")),

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
			-- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из элитных скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 殺死每種血痂精英敵人各10名。
	-- create_template("ach_her_2_ext_desc_tw",
		-- {"loc_achievement_all_renegade_elites_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺每種『血痂』精英敵人各 "..CNumb("{target}", "target_rgb").." 名。")),

	-- --[+	 +]-- руоф Танец смерти
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_team_poxburster_damage_avoided_name"}, {"ru"},
			-- -- loc_text("Танец смерти")),
	-- -- [+ Traditional Chinese +]--
	-- -- Not used in the zh-tw
	-- -- create_template("ach_her_1_ext_tw",
		-- -- {"loc_achievement_team_poxburster_damage_avoided_name"}, {"zh-tw"},
			-- -- loc_text("死亡之舞")),

	-- --[+	 +]-- руоф Увернитесь от ударов палача (50). [По 1 за каждого палача]
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_team_poxburster_damage_avoided_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 躲避50次重鎚兵的攻擊。[每個重鎚兵只能算一次]
	-- -- Not used in the zh-tw!
	-- -- create_template("ach_her_1_ext_desc_tw",
		-- -- {"loc_achievement_team_poxburster_damage_avoided_description"}, {"zh-tw"},
			-- -- loc_text("躲避 "..CNumb("{target}", "target_rgb").." 名重鎚兵的攻擊，每名只計算1次。")),

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
			-- loc_text("Убейте "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов дрегов.")),
	-- --[+ Traditional Chinese +]--
	-- --擊殺每種渣滓專家各10名。
	-- create_template("ach_her_8_ext_desc_tw",
		-- {"loc_achievement_all_cultist_specials_killed_description"}, {"zh-tw"},
			-- loc_text("擊殺每種『渣滓』專家敵人各 "..CNumb("{target}", "target_rgb").." 名。")),

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
			-- loc_text("Убейте "..CNumb("{target}", "target_rgb").." Разрубателей без попаданий по голове.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在不爆頭的情況下殺死10名血痂重鎚者。
	-- create_template("ach_her_6_ext_desc_tw",
		-- {"loc_achievement_executor_non_headshot_description"}, {"zh-tw"},
			-- loc_text("在不爆頭的情況下擊殺 "..CNumb("{target}", "target_rgb").." 名『血痂』重鎚者。")),

	-- --[+	 +]-- руоф Хорошие рефлексы
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_sniper_dodged_name"}, {"ru"},
			-- -- loc_text("Хорошие рефлексы")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_sniper_dodged_name"}, {"zh-tw"},
			-- loc_text("高超反射")),

	-- --[+	 +]-- руоф Увернитесь от выстрелов снайпера (50). [По 1 за каждого снайпера]
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_sniper_dodged_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 躲避50次狙擊手的射擊。[每個狙擊手只能算一次]
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_sniper_dodged_description"}, {"zh-tw"},
			-- loc_text("躲避 "..CNumb("{target}", "target_rgb").." 名狙擊手的射擊，每名只計算1次。")),

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
			-- loc_text("Убейте "..CNumb("{target}", "target_rgb").." Чумных ходоков и других Ужасов варпа.")),
	-- --[+ Traditional Chinese +]--
	-- -- 擊殺xx000個瘟疫行者和其他亞空間恐魔。
	-- create_template("ach_her_17_ext_desc_tw",
		-- {"loc_achievement_kill_chaos_x_description"}, {"zh-tw"},
			-- loc_text("擊殺 "..CNumb("{target}", "target_rgb").." 名瘟疫行者和其他亞空間恐魔。")),

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

	-- --[+	 +]-- руоф Это всё, на что ты способен?
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_ru",
		-- -- {"loc_achievement_ogryn_gunner_shot_dodged_name"}, {"ru"},
			-- -- loc_text("Это всё, на что ты способен?")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_her_1_ext_tw",
		-- {"loc_achievement_ogryn_gunner_shot_dodged_name"}, {"zh-tw"},
			-- loc_text("這就是你的極限了？")),

	-- --[+	 +]-- руоф Увернитесь от атак огрина-жнеца (500) во время бега.
	-- --[+ Russian +]--
	-- -- create_template("ach_her_1_ext_desc_ru",
		-- -- {"loc_achievement_ogryn_gunner_shot_dodged_description"}, {"ru"},
			-- -- loc_text("Убейте по "..CNumb("{target}", "target_rgb").." врагов каждого типа из специалистов скабов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 衝次時躲掉500次歐格林收割者射擊。
	-- create_template("ach_her_1_ext_desc_tw",
		-- {"loc_achievement_ogryn_gunner_shot_dodged_description"}, {"zh-tw"},
			-- loc_text("衝刺時躲掉 "..CNumb("{target}", "target_rgb").." 次歐格林收割者射擊。")),

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

	-- --[+	 +]-- руоф Архивариус
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_ru",
		-- -- {"loc_achievement_type_1_mission_5_name"}, {"ru"},
			-- -- loc_text("Архивариус")),
	-- --[+ Traditional Chinese +]--
	-- -- Not used in the zh-tw
	-- -- create_template("ach_mis_1_ext_tw",
	-- --	{"loc_achievement_type_1_mission_5_name"}, {"zh-tw"},
	-- --		loc_text("突擊派對 (5)")),

	-- --[+ Complete 250 Raid missions. +]-- руоф Восстановите писания из заданий: 100.
	-- --[+ Russian +]--
	-- create_template("ach_mis_1_ext_desc_ru",
		-- {"loc_achievement_type_1_mission_x_description"}, {"ru"},
			-- loc_text("Завершите "..CNumb("{target}", "target_rgb").." миссий налётов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成100次突襲任務。
	-- create_template("ach_mis_1_ext_desc_tw",
		-- {"loc_achievement_type_1_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..CNumb("{target}", "target_rgb").." 次突襲任務。")),

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
			-- loc_text("Завершите "..CNumb("{target}", "target_rgb").." миссий.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx00次任務。
	-- create_template("ach_mis_8_ext_desc_tw",
		-- {"loc_achievement_missions_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..CNumb("{target}", "target_rgb").." 次任務。")),


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
			-- loc_text("Просканируйте "..CNumb("{target}", "target_rgb").." целей ауспекса.")),
	-- --[+ Traditional Chinese +]--
	-- -- 掃描200名占卜者。
	-- create_template("ach_mis_9_ext_desc_tw",
		-- {"loc_achievement_scan_x_description"}, {"zh-tw"},
			-- loc_text("掃描 "..CNumb("{target}", "target_rgb").." 個鳥卜儀目標。")),

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
			-- loc_text("在沒有輸入錯誤的情況下完成"..CNumb("{target}", "target_rgb").."次數據查詢。")),

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
			-- loc_text("Завершите каждый тип миссий на сложности "..CKWord("", "sedition_rgb_ru").." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在騷亂威脅度或更高級別下完成全部任務類型。
	-- create_template("ach_mis_13_1_ext_desc_tw",
		-- {"loc_achievement_mission_difficulty_objectives_1_description"}, {"zh-tw"},
			-- loc_text("在『"..CKWord("", "sedition_rgb_tw").."』或更高難度下，完成每種任務類型。")),

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
			-- loc_text("Завершите каждый тип миссий на сложности "..CKWord("", "uprising_rgb_ru").." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在起義威脅度或更高級別下完成全部任務類型。
	-- create_template("ach_mis_13_1_ext_desc_tw",
		-- {"loc_achievement_mission_difficulty_objectives_2_description"}, {"zh-tw"},
			-- loc_text("在『"..CKWord("", "uprising_rgb_tw").."』或更高難度下，完成每種任務類型。")),

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
			-- loc_text("Завершите каждый тип миссий на сложности "..CKWord("Злоба", "malice_rgb_ru").." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在惡意威脅度或更高級別下完成全部任務類型。
	-- create_template("ach_mis_13_1_ext_desc_tw",
		-- {"loc_achievement_mission_difficulty_objectives_3_description"}, {"zh-tw"},
			-- loc_text("在『"..CKWord("惡毒", "malice_rgb_tw").."』或更高難度下，完成每種任務類型。")),

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
			-- loc_text("Завершите каждый тип миссий на сложности "..CKWord("Ересь", "heresy_rgb_ru").." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在叛亂威脅度或更高級別下完成全部任務類型。
	-- create_template("ach_mis_13_1_ext_desc_tw",
		-- {"loc_achievement_mission_difficulty_objectives_4_description"}, {"zh-tw"},
			-- loc_text("在『"..CKWord("異端", "heresy_rgb_tw").."』或更高難度下，完成每種任務類型。")),

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
			-- loc_text("Завершите каждый тип миссий на сложности "..CKWord("", "damnation_rgb_ru").." или выше.")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_mis_13_1_ext_desc_tw",
		-- -- {"loc_achievement_mission_difficulty_objectives_5_description"}, {"zh-tw"},
			-- -- loc_text("在『"..CKWord("", "damnation_rgb_tw").."』或更高難度下，完成每種任務類型。")),

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
			-- loc_text("Завершите "..CNumb("{target}", "target_rgb").." налётов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次突襲任務。
	-- create_template("ach_mis_1_ext_desc_tw",
		-- {"loc_achievement_type_1_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..CNumb("{target}", "target_rgb").." 次突襲任務。")),

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
			-- loc_text("Завершите "..CNumb("{target}", "target_rgb").." расследований.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次調查任務。
	-- create_template("ach_mis_3_ext_desc_tw",
		-- {"loc_achievement_type_3_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..CNumb("{target}", "target_rgb").." 次調查任務。")),

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
			-- loc_text("Завершите "..CNumb("{target}", "target_rgb").." диверсий.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次擾亂任務。
	-- create_template("ach_mis_4_ext_desc_tw",
		-- {"loc_achievement_type_4_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..CNumb("{target}", "target_rgb").." 次擾亂任務。")),

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
			-- loc_text("Завершите "..CNumb("{target}", "target_rgb").." ликвидаций.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx個刺殺任務。
	-- create_template("ach_mis_2_ext_desc_tw",
		-- {"loc_achievement_type_2_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..CNumb("{target}", "target_rgb").." 次刺殺任務。")),

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
			-- loc_text("Завершите "..CNumb("{target}", "target_rgb").." шпионских миссий.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次破壞任務。
	-- create_template("ach_mis_6_ext_desc_tw",
		-- {"loc_achievement_type_6_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..CNumb("{target}", "target_rgb").." 次破壞任務。")),

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

	-- --[+	 +]-- руоф Задержи дыхание (1-3)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_ru",
		-- -- {"loc_achievement_mission_tox_gas_x_name"}, {"ru"},
			-- -- loc_text("Задержи дыхание (1-3)")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_mis_1_ext_tw",
		-- -- {"loc_achievement_mission_tox_gas_x_name"}, {"zh-tw"},
			-- -- loc_text("屏住呼吸 (1-3)")),

	-- --[+	 +]-- руоф Завершите задание с обстоятельством «чумной газ» 50 р.
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_desc_ru",
		-- -- {"loc_achievement_mission_tox_gas_x_description"}, {"ru"},
			-- -- loc_text("Завершите "..CNumb("{target}", "target_rgb").." миссий налётов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 在瘟疫毒氣情境下完成x個任務
	-- create_template("ach_mis_1_ext_desc_tw",
		-- {"loc_achievement_mission_tox_gas_x_description"}, {"zh-tw"},
			-- loc_text("在瘟疫毒氣情境下，完成 "..CNumb("{target}", "target_rgb").." 次任務。")),

	-- --[+	 +]-- руоф Запретные тексты (1-5)
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_ru",
		-- -- {"loc_achievement_mission_grimoire_recovery_name"}, {"ru"},
			-- -- loc_text("Запретные тексты (1-5)")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_mis_1_ext_tw",
		-- -- {"loc_achievement_mission_grimoire_recovery_name"}, {"zh-tw"},
			-- -- loc_text("禁忌文本 (1-5)")),

	-- --[+	 +]-- руоф Соберите и извлеките гримуары (75).
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_desc_ru",
		-- -- {"loc_achievement_mission_grimoire_recovery_description"}, {"ru"},
			-- -- loc_text("Завершите "..CNumb("{target}", "target_rgb").." миссий налётов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 收集並回收xx本法術書。
	-- create_template("ach_mis_1_ext_desc_tw",
		-- {"loc_achievement_mission_grimoire_recovery_description"}, {"zh-tw"},
			-- loc_text("收集並回收 "..CNumb("{target}", "target_rgb").." 本法術書。")),

	-- --[+	 +]-- руоф Искатель
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_ru",
		-- -- {"loc_achievement_amount_of_chests_opened_name"}, {"ru"},
			-- -- loc_text("Искатель")),
	-- --[+ Traditional Chinese +]--
	-- create_template("ach_mis_1_ext_tw",
		-- {"loc_achievement_amount_of_chests_opened_name"}, {"zh-tw"},
			-- loc_text("尋寶者")),

	-- --[+	 +]-- руоф Откройте сундуки: 2500. Сундуки, открытые членами команды, тоже учитываются.
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_1_ext_desc_ru",
		-- -- {"loc_achievement_amount_of_chests_opened_description"}, {"ru"},
			-- -- loc_text("Завершите "..CNumb("{target}", "target_rgb").." миссий налётов.")),
	-- --[+ Traditional Chinese +]--
	-- -- 打開xx個寶箱。盟友打開的也算。
	-- create_template("ach_mis_1_ext_desc_tw",
		-- {"loc_achievement_amount_of_chests_opened_description"}, {"zh-tw"},
			-- loc_text("打開 "..CNumb("{target}", "target_rgb").." 個寶箱。盟友打開的也算。")),

	-- --[+ The Machine Whisperer +]-- руоф Заклинатель машин
	-- --[+ Russian +]--
	-- -- create_template("ach_mis_10_ext_ru",
		-- -- {"loc_achievement_hack_5_name"}, {"ru"},
			-- -- loc_text("Опросчик (1-5)")),
	-- --[+ Traditional Chinese +]--
	-- -- create_template("ach_mis_10_ext_tw",
	-- --	{"loc_achievement_hack_5_name"}, {"zh-tw"},
	-- --		loc_text("機械低語者 (1-5)")),

	-- --[+ Complete 200 successful data-interrogations. +]-- руоф Выполнить успешных опросов: 200.
	-- --[+ Russian +]--
	-- create_template("ach_mis_10_ext_desc_ru",
		-- {"loc_achievement_hack_x_description"}, {"ru"},
			-- loc_text("Завершите "..CNumb("{target}", "target_rgb").." успешных опросов данных.")),
	-- --[+ Traditional Chinese +]--
	-- -- 成功完成xx次數據詢問。
	-- create_template("ach_mis_10_ext_desc_tw",
		-- {"loc_achievement_hack_x_description"}, {"zh-tw"},
			-- loc_text("成功完成 "..CNumb("{target}", "target_rgb").." 次數據詢問。")),

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
			-- loc_text("Завершите "..CNumb("{target}", "target_rgb").." ударных миссий.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次打擊任務。
	-- create_template("ach_mis_5_ext_desc_tw",
		-- {"loc_achievement_type_5_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..CNumb("{target}", "target_rgb").." 次打擊任務。")),

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
			-- loc_text("Завершите "..CNumb("{target}", "target_rgb").." ремонтных миссий.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次修理任務。
	-- create_template("ach_mis_7_ext_desc_tw",
		-- {"loc_achievement_type_7_mission_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..CNumb("{target}", "target_rgb").." 次修理任務。")),

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
			-- loc_text("Завершите "..CNumb("{target}", "target_rgb").." миссий со специальными условиями.")),
	-- --[+ Traditional Chinese +]--
	-- -- 完成xx次特殊情境任務。
	-- create_template("ach_mis_12_ext_desc_tw",
		-- {"loc_achievement_mission_circumstace_x_description"}, {"zh-tw"},
			-- loc_text("完成 "..CNumb("{target}", "target_rgb").." 次特殊情境任務。")),

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
			-- loc_text("Победить близнецов Карнак во время Ортусского наступления на сложности "..CKWord("", "damnation_rgb_ru")..".")),
	-- --[+ Traditional Chinese +]--
	-- -- 在詛咒威脅度下，在雙頭犬攻勢期間擊敗卡納克雙子。
	-- create_template("ach_mis_16_ext_desc_tw",
		-- {"loc_achievement_difficult_mission_twins_win_description"}, {"zh-tw"},
			-- loc_text("在『"..CKWord("", "damnation_rgb_tw").."』威脅度下，\n在雙頭犬攻勢任務中擊敗卡納克雙子。")),

	--[+ +REDACTED - ДАННЫЕ ИЗЪЯТЫ+ +]--
	--[+ Redacted +]-- руоф Данные изъяты
	-- create_template("ach_red_0_ext_ru",
		-- {"loc_achievement_category_class_challenges_label"}, {"ru"},
			-- loc_text("Данные изъяты")),
	--[+ Traditional Chinese +]--
}

-- Автоматическое создание шаблонов
local localization_templates = {}
for loc_key, locales in pairs(penances_localizations) do
	for locale, text in pairs(locales) do
		table.insert(localization_templates, create_template(
			loc_key,
			{loc_key},
			{locale},
			loc_text(text)
		))
	end
end

return localization_templates
