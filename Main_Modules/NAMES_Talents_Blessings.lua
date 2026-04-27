---@diagnostic disable: undefined-global
-- FOR TRANSLATORS: If the in-game translation of a Talent or Blessing Name is correct in your localization, DO NOT DUPLICATE the line here. I only changed something in the Russian localization if I wasn't satisfied with the official translation, so I marked "ruof" for the official Russian translation and then wrote my correct version in the lines below. There's no need to burden the game with unnecessary duplicate data in the mod and burden yourself with unnecessary work.

local mod = get_mod("Enhanced_descriptions")

-- USING CACHED UTILITIES - ИСПОЛЬЗУЕМ КЭШИРОВАННЫЕ УТИЛИТЫ
local Utils = mod.get_utils()

-- IMPORTING ALL NECESSARY FUNCTIONS AND CONSTANTS - ИМПОРТ ВСЕХ НУЖНЫХ ФУНКЦИЙ И КОНСТАНТ
local create_template = Utils.create_template
local loc_text = Utils.loc_text
local CKWord = Utils.CKWord
local CNumb = Utils.CNumb
local CPhrs = Utils.CPhrs
local CNote = Utils.CNote
local Dot_nc = Utils.DOT_NC or "•"
local Dot_red = Utils.DOT_RED or "•"
local Dot_green = Utils.DOT_GREEN or "•"

-- Main localization data - Основные данные локализации
local names_talents_blessings_templates = {
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

--[+ ++WEAPON BLESSINGS++ +]--
	--[+ MELEE - БЛИЖНИЙ БОЙ -  +]--
		--[+ OPPORTUNIST +]-- ruof Приспособленец	20.04.2026
		-- Battle Maul and Shield, Chainaxes, Crowbar, Crusher, Eviscerators, Latrine Shovels, Power Maul, Shock Mauls, Shock Mauls and Shield
		["loc_trait_bespoke_armor_penetration_against_staggered"] = {
			ru = "Оппортунист",
			-- ["zh-tw"] = "機會主義者",
		},
		--[+ BLOODLETTER +]-- ruof Кровопускание	20.04.2026
		-- Chainaxes, Chainswords, Eviscerators
		["loc_trait_bespoke_bleed_on_activated_hit"] = {
			ru = "Кровопускатель",
			-- ["zh-tw"] = "放血者",
		},
		--[+ BLOODTHIRSTY +]-- ruof Жажда крови	20.04.2026
		-- Chainaxes, Chainswords, Eviscerators, Force Swords
		["loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill"] = {
			ru = "Кровожадный",
			-- ["zh-tw"] = "嗜血",
		},
		--[+ HEADTAKER +]-- ruof Головорез	20.04.2026
		-- Chainaxes, Combat Axes, Pickaxes, Tactical Axes, Thunder Hammers, Heavy Swords
		-- ["loc_trait_bespoke_increase_power_on_hit"] = {
			-- ["zh-tw"] = "奪顱者",
		-- },
		--[+ SLAUGHTERER +]-- ruof Душегуб	20.04.2026
		-- Chainaxes, Cleavers, Crusher, Force Swords, Pickaxes, Power Swords, Thunder Hammers
		-- ["loc_trait_bespoke_increase_power_on_kill"] = {
			-- ["zh-tw"] = "殺戮者",
		-- },
		--[+ REV IT UP +]-- ruof Бодрость	20.04.2026
		-- Chainaxes, Chainswords, Eviscerators
		["loc_trait_bespoke_movement_speed_on_activation"] = {
			ru = "Ускорься",
			-- ["zh-tw"] = "提速",
		},
		--[+ THRUST +]-- ruof Выпад	20.04.2026
		-- Bully Clubs, Chainaxes, Cleavers, Combat Axes, Crusher, Duelling Swords, Heavy Swords, Latrine Shovels, Pickaxes, Power Swords, Sapper Shovels, Shock Mauls, Thunder Hammers
		-- ["loc_trait_bespoke_power_bonus_based_on_charge_time"] = {
			-- ["zh-tw"] = "推進",
		-- },
		--[+ THUNDEROUS +]-- ruof Словно раскаты грома	20.04.2026
		-- Arbites Shock Maul, Bully Clubs, Chainaxes, Combat Axes, Crusher, Latrine Shovels, Pickaxes, Thunder Hammers
		["loc_trait_bespoke_targets_receive_rending_debuff"] = {
			ru = "Громобой",
			-- ["zh-tw"] = "雷鳴",
		},
		--[+ WRATH +]-- ruof Гнев	20.04.2026
		-- Bone Saw, Chainswords, Devil's Claw Swords, Eviscerators, Force Greatswords, Heavy Swords, Pickaxes, Power Falchions, Relic Blades, Power Swords
		-- ["loc_trait_bespoke_chained_hits_increases_cleave"] = {
			-- ["zh-tw"] = "憤怒",
		-- },
		--[+ SHRED +]-- ruof Расстрел	20.04.2026
		-- Bone Saw, Chainswords, Combat Axes, Devil's Claw Swords, Duelling Swords, Eviscerators, Force Greatswords, Force Swords, Tactical Axes
		["loc_trait_bespoke_chained_hits_increases_crit_chance"] = {
			ru = "Кромсание",
			-- ["zh-tw"] = "粉碎",
		},
		--[+ SAVAGE SWEEP +]-- ruof Дикость	20.04.2026
		-- Chainswords, Cleavers, Devil's Claw Swords, Eviscerators, Heavy Swords
		["loc_trait_bespoke_increased_attack_cleave_on_multiple_hits"] = {
			ru = "Дикий взмах",
		},
		--[+ RAMPAGE +]-- ruof Буйство	20.04.2026
		-- Chainswords, Devil's Claw Swords, Duelling Swords, Eviscerators, Heavy Swords, Power Swords, Relic Blades
		-- ["loc_trait_bespoke_increased_melee_damage_on_multiple_hits"] = {
			-- ["zh-tw"] = "野蠻橫掃",
		-- },
		--[+ DEVASTATING STRIKE +]-- ruof Сокрушительный удар	20.04.2026
		-- Chainswords, Cleavers, Devil's Claw Swords, Relic Blades
		-- ["loc_trait_bespoke_infinite_melee_cleave_on_crit"] = {
			-- ["zh-tw"] = "毀滅打擊",
		-- },
		--[+ DECIMATOR +]-- ruof Дециматор	20.04.2026
		-- Bone Saw, Combat Axes, Sapper Shovels, Tactical Axes
		-- ["loc_trait_bespoke_chained_hits_increases_power_desc"] = {
			-- ["zh-tw"] = "屠戮者",
		-- },
		--[+ BRUTAL MOMENTUM +]-- ruof Суровый моментум	20.04.2026
		-- Battle Maul and Shield, Combat Axes, Heavy Swords, Latrine Shovels, Power Maul, Power Swords, Tactical Axes
		["loc_trait_bespoke_infinite_cleave_on_weakspot_kill"] = {
			ru = "Жестокий моментум",
			-- ["zh-tw"] = "野蠻攻勢",
		},
		--[+ DEATHBLOW +]-- ruof Смертельный удар	20.04.2026
		-- Battle Maul and Shield, Combat Axes, Heavy Swords, Latrine Shovels, Power Maul, Power Swords, Tactical Axes
		-- ["loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill"] = {
			-- ["zh-tw"] = "致命一擊",
		-- },
		--[+ LIMBSPLITTER +]-- ruof Расщепитель	20.04.2026
		-- Bone Saw, Combat Axes, Crowbar, Pickaxes, Sapper Shovels, Tactical Axes
		["loc_trait_bespoke_power_bonus_on_first_attack"] = {
			ru = "Расчленитель",
			-- ["zh-tw"] = "斷肢者",
		},
		--[+ ALL OR NOTHING +]-- ruof Все или ничего	20.04.2026
		-- Arbites Shock Maul, Combat Axes, Crowbar, Pickaxes, Sapper Shovels, Shock Maul and Shield, Tactical Axesы
		["loc_trait_bespoke_power_bonus_scaled_on_stamina"] = {
			ru = "Всё или ничего",
			-- ["zh-tw"] = "孤注一擲",
		},
		--[+ DECAPITATOR +]-- ruof Палач	20.04.2026
		-- Bone Saw, Combat Axes, Power Falchions
		-- ["loc_trait_bespoke_stacking_rending_on_one_hit_kills"] = {
			-- ["zh-tw"] = "斬首者",
		-- },
		--[+ AGILE +]-- ruof Ловкий	20.04.2026
		-- Duelling Swords, Tactical Axes
		["loc_trait_bespoke_dodge_count_reset_on_weakspot_hit"] = {
			ru = "Проворный",
			-- ["zh-tw"] = "敏捷",
		},
		--[+ SLAUGHTER SPREE +]-- ruof Убойная сила	20.04.2026
		-- Tactical Axes
		["loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill"] = {
			ru = "Резня",
			-- ["zh-tw"] = "殺戮狂潮",
		},
		--[+ RELENTLESS STRIKES +]-- ruof Безжалостность	20.04.2026
		-- Arbites Shock Maul, Bone Saw, Duelling Swords, Tactical Axes
		["loc_trait_bespoke_power_bonus_on_same_enemy_attacks"] = {
			ru = "Безжалостные удары",
			-- ["zh-tw"] = "持續打擊",
		},
		--[+ FLESH TEARER +]-- ruof Раздиратель плоти	20.04.2026
		-- Combat Blades, Shivs
		-- ["loc_trait_bespoke_bleed_on_crit_melee"] = {
			-- ["zh-tw"] = "血肉撕裂者",
		-- },
		--[+ LACERATE +]-- ruof Терзание	20.04.2026
		-- Combat Blades, Shivs
		-- ["loc_trait_bespoke_bleed_on_non_weakspot_hit"] = {
			-- ["zh-tw"] = "撕裂",
		-- },
		--[+ EXECUTOR +]-- ruof Экзекутор	20.04.2026
		-- Combat Blades, Force Swords, Shivs
		["loc_trait_bespoke_chained_weakspot_hits_increases_power"] = {
			ru = "Каратель",
			-- ["zh-tw"] = "行刑者",
		},
		--[+ RIPOSTE +]-- ruof Ответный удар	20.04.2026
		-- Combat Blades, Duelling Swords, Force Greatswords, Force Swords, Shivs
		-- ["loc_trait_bespoke_dodge_grants_crit_chance"] = {
			-- ["zh-tw"] = "還擊",
		-- },
		--[+ PRECOGNITION +]-- ruof Познание	20.04.2026
		-- Combat Blades, Duelling Swords, Force Greatswords, Force Swords, Shivs
		["loc_trait_bespoke_dodge_grants_finesse_bonus"] = {
			ru = "Предвидение",
			-- ["zh-tw"] = "未卜先知",
		},
		--[+ HAYMAKER +]-- ruof Коса	20.04.2026
		-- Bully Clubs, Combat Blades, Shivs
		["loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance"] = {
			ru = "Жнец",
			-- ["zh-tw"] = "強力一擊",
		},
		--[+ SMACKDOWN +]-- ruof Смятение	20.04.2026
		-- Bully Clubs, Combat Blades
		["loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy"] = {
			ru = "Сокрушение",
			-- ["zh-tw"] = "擊倒",
		},
		--[+ MERCY KILLER +]-- ruof Милосердие	20.04.2026
		-- Combat Blades, Shivs
		["loc_trait_bespoke_increased_weakspot_damage_on_bleeding"] = {
			ru = "Милосердный убийца",
			-- ["zh-tw"] = "仁慈殺手",
		},
		--[+ RUTHLESS BACKSTAB +]-- ruof Беспощадный удар в спину	20.04.2026
		-- Combat Blades, Shivs
		-- ["loc_trait_bespoke_rending_on_backstabs"] = {
			-- ["zh-tw"] = "無情背刺",
		-- },
		--[+ UNCANNY STRIKE +]-- ruof Жуткий удар	20.04.2026
		-- Combat Blades, Duelling Swords, Force Swords, Sapper Shovels, Shivs
		-- ["loc_trait_bespoke_stacking_rending_on_weakspot"] = {
			-- ["zh-tw"] = "詭異打擊",
		-- },
		--[+ TRAUMA +]-- ruof Травма	20.04.2026
		-- Crusher, Devil's Claw Swords, Sapper Shovels, Thunder Hammers
		-- ["loc_trait_bespoke_consecutive_hits_increases_stagger"] = {
			-- ["zh-tw"] = "創傷",
		-- },
		--[+ VICIOUS SLICE +]-- ruof Жестокая нарезка	20.04.2026
		-- Devil's Claw Swords
		["loc_trait_bespoke_increase_stagger_per_hit_in_sweep"] = {
			ru = "Жестокий разрез",
			-- ["zh-tw"] = "凶狠切割",
		},
		--[+ HAMMERBLOW +]-- ruof Удар молотом	20.04.2026
		-- Arbites Shock Maul, Crusher, Devil's Claw Swords, Sapper Shovels, Shock Mauls, Shock Mauls and Shield, Thunder Hammers
		["loc_trait_bespoke_stacking_increase_impact_on_hit"] = {
			ru = "Молотобой",
			-- ["zh-tw"] = "錘擊",
		},
		--[+ SKULLCRUSHER +]-- ruof Череподробитель	20.04.2026
		-- Battle Maul and Shield, Bully Clubs, Crusher, Devil's Claw Swords, Latrine Shovels, Power Maul, Sapper Shovels, Shock Mauls, Thunder Hammers
		-- ["loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff"] = {
			-- ["zh-tw"] = "粉碎者",
		-- },
		--[+ THUNDERSTRIKE +]-- ruof Гроза	20.04.2026
		-- Battle Maul and Shield, Crusher, Devil's Claw Swords, Power Maul, Sapper Shovels, Thunder Hammers
		["loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff"] = {
			ru = "Удар грома",
			-- ["zh-tw"] = "雷霆打擊",
		},
		--[+ CHAINED DEATHBLOW +]-- ruof Цепочка смертельных ударов	20.04.2026
		-- Heavy Swords
		["loc_trait_bespoke_increased_crit_chance_on_weakspot_kill"] = {
			ru = "Цепь смертоносных ударов",
			-- ["zh-tw"] = "致命連擊",
		},
		--[+ PERFECT STRIKE +]-- ruof Безупречный удар	20.04.2026
		-- Battle Maul and Shield, Bully Clubs, Eviscerators, Heavy Swords, Latrine Shovels, Power Maul
		-- ["loc_trait_bespoke_pass_past_armor_on_crit_new"] = {
			-- ["zh-tw"] = "完美一擊",
		-- },
		--[+ BLADED MOMENTUM +]-- ruof Моментум лезвия	20.04.2026
		-- Heavy Swords
		["loc_trait_bespoke_stacking_rending_on_cleave"] = {
			ru = "Инерция клинка",
			-- ["zh-tw"] = "利刃攻勢",
		},
		--[+ DEFLECTOR +]-- ruof Отражатель	20.04.2026
		-- Force Greatswords, Force Swords
		-- ["loc_trait_bespoke_can_block_ranged_desc"] = {
			-- ["zh-tw"] = "偏轉",
		-- },
		--[+ MOMENTUM +]-- ruof Моментум	20.04.2026
		-- Bully Clubs, Cleavers, Eviscerators, Force Greatswords, Thunder Hammers
		-- ["loc_trait_bespoke_toughness_recovery_on_multiple_hits"] = {
			-- ["zh-tw"] = "勢頭",
		-- },
		--[+ MURDEROUS TRANQUILITY +]-- ruof Убийственное спокойствие	20.04.2026
		-- Force Greatswords
		-- ["loc_trait_bespoke_vent_warp_charge_on_multiple_hits"] = {
			-- ["zh-tw"] = "兇殘之寧",
		-- },
		--[+ BLAZING SPIRIT +]-- ruof Пламенный дух !MELEE!	20.04.2026
		-- Force Swords
		-- !!!FORCE GREATSWORD TEMPORARILY USES THE DESCRIPTION FROM THE RANGED BLESSING!!!
		-- Force Greatswords
		["loc_trait_bespoke_warp_burninating_on_crit"] = {
			ru = "Пылающий дух",
			-- ["zh-tw"] = "燃燒靈魂",
		},
		--[+ UNSTABLE POWER +]-- ruof Нестабильная мощь	20.04.2026
		-- Force Greatswords, Force Swords
		-- ["loc_trait_bespoke_warp_charge_power_bonus"] = {
			-- ["zh-tw"] = "不穩定能量",
		-- },
		--[+ WARP SLICE +]-- ruof Варп-удар	20.04.2026
		-- Force Greatswords
		["loc_trait_bespoke_wind_slash_crits"] = {
			ru = "Варп нарезка",
			-- ["zh-tw"] = "亞空間斬擊",
		},
		--[+ EXORCIST +]-- ruof Экзорцист	20.04.2026
		-- Force Swords
		-- ["loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge"] = {
			-- ["zh-tw"] = "驅魔者",
		-- },
		--[+ SUPERIORITY +]-- ruof Превосходство	20.04.2026
		-- Crowbar, Force Swords
		-- ["loc_trait_bespoke_elite_kills_grants_stackable_power"] = {
			-- ["zh-tw"] = "優勢",
		-- },
		--[+ LIGHTNING REFLEXES +]-- ruof Молниеносные рефлексы	20.04.2026
		-- Arbites Shock Maul, Shock Mauls, Shock Mauls and Shield
		-- ["loc_trait_bespoke_block_has_chance_to_stun_with_cd"] = {
			-- ["zh-tw"] = "閃電反射",
		-- },
		--[+ HIGH VOLTAGE +]-- ruof Высокое напряжение	20.04.2026
		-- Arbites Shock Maul, Shock Mauls, Shock Mauls and Shield
		-- ["loc_trait_bespoke_damage_bonus_vs_electrocuded"] = {
			-- ["zh-tw"] = "高壓電",
		-- },
		--[+ FALTER +]-- ruof Дрожь	20.04.2026
		-- Arbites Shock Maul, Shock Mauls
		-- ["loc_trait_bespoke_negate_stagger_reduction_on_weakspot"] = {
			-- ["zh-tw"] = "踉蹌",
		-- },
		--[+ OVERWHELMING FORCE +]-- ruof Подавляющая сила	20.04.2026
		-- Shock Mauls
		-- ["loc_trait_bespoke_staggering_hits_has_chance_to_stun"] = {
			-- ["zh-tw"] = "壓倒性的武力",
		-- },
		--[+ COUNTERATTACK +]-- ruof Контратака	20.04.2026
		-- Power Falchions, Relic Blade, Shock Mauls and Shield
		-- ["loc_attack_speed_on_perfect_block"] = {
		-- },
		--[+ CRANIAL GROUNDING +]-- ruof Черепное заземление	20.04.2026
		-- Power Falchions, Relic Blade
		-- ["loc_chained_weakspot_hits_increase_finesse_and_reduce_overheat"] = {
		-- },
		--[+ OVERLOAD +]-- ruof Перегрузка	20.04.2026
		-- Power Falchions, Relic Blade
		-- ["loc_explosion_on_overheat_lockout"] = {
		-- },
		--[+ ENERGY LEAKAGE +]-- ruof Утечка энергии	20.04.2026
		-- Power Falchions, Relic Blades
		-- ["loc_power_bonus_scaled_on_heat"] = {
		-- },
		--[+ HEATSINK +]-- ruof Теплоотвод	20.04.2026
		-- Power Falchions, Relic Blades
		-- ["loc_reduce_fixed_overheat_amount"] = {
		-- },
		--[+ SYPHON +]-- ruof Сифон	20.04.2026
		-- Relic Blade
		["loc_trait_bespoke_regain_toughness_on_multiple_hits_by_weapon_special"] = {
			ru = "Выкачивание",
		},
		--[+ ENERGY TRANSFER +]-- ruof Передача энергии	20.04.2026
		-- Power Falchions, Relic Blades
		-- ["loc_slower_heat_buildup_on_perfect_block"] = {
		-- },
		--[+ SHOCK & AWE / SHOCK AND AWE +]-- ruof Шок и трепет	20.04.2026
		-- Bone Saw, Thunder Hammers
		-- ["loc_trait_bespoke_hit_mass_consumption_reduction_on_kill"] = {
			-- ["zh-tw"] = "震懾",
		-- },
		--[+ TAKE A SWING +]-- ruof Замах	20.04.2026
		-- Crowbar, Sapper Shovels
		-- ["loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies"] = {
			-- ["zh-tw"] = "揮拳出擊",
		-- },
		--[+ SUPERCHARGE +]-- ruof Суперзаряд	20.04.2026
		-- Power Maul, Power Swords
		-- ["loc_trait_bespoke_armor_rend_on_activated_attacks"] = {
			-- ["zh-tw"] = "超級充能",
		-- },
		--[+ POWER CYCLER +]-- ruof Цикл силы	20.04.2026
		-- Power Swords
		["loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks"] = {
			ru = "Энергоцикл",
			-- ["zh-tw"] = "能量循環",
		},
		--[+ SUNDER +]-- ruof Сандер	20.04.2026
		-- Power Swords
		["loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks"] = {
			ru = "Рассечение",
			-- ["zh-tw"] = "破甲",
		},
		--[+ SUCKER PUNCH +]-- ruof Удар исподтишка	20.04.2026
		-- Latrine Shovels
		-- ["loc_trait_bespoke_increased_crit_chance_after_punch"] = {
			-- ["zh-tw"] = "突然襲擊",
		-- },
		--[+ CONFIDENT STRIKE +]-- ruof Уверенный удар	20.04.2026
		-- Arbites Shock Maul, Battle Maul and Shield, Bully Clubs, Cleavers, Latrine Shovels, Pickaxes, Power Maul, Shock Mauls and Shield
		-- ["loc_trait_bespoke_toughness_recovery_on_chained_attacks"] = {
			-- ["zh-tw"] = "堅定打擊",
		-- },
		--[+ NO GUTS, NO GLORY +]-- ruof Нет смелости — нет славы	20.04.2026
		-- Bully Clubs
		-- ["loc_trait_bespoke_toughness_regen_on_punching_elites"] = {
			-- ["zh-tw"] = "不入虎穴，焉得虎子",
		-- },
		--[+ BASH +]-- ruof Удар	20.04.2026
		-- Cleavers, Crowbar
		-- ["loc_trait_bespoke_crit_chance_on_push"] = {
			-- ["zh-tw"] = "猛撞",
		-- },
		--[+ TENDERISER +]-- ruof Молот мясника	20.04.2026
		-- Cleavers
		-- ["loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits"] = {
			-- ["zh-tw"] = "肉槌",
		-- },
		--[+ UNSTOPPABLE FORCE +]-- ruof Неудержимая сила	20.04.2026
		-- Cleavers, Crowbar
		-- ["loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack"] = {
			-- ["zh-tw"] = "勢不可擋",
		-- },
		--[+ TORMENT +]-- ruof Истязание	20.04.2026
		-- Pickaxes
		-- ["loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"] = {
			-- ["zh-tw"] = "凌遲",
		-- },
		--[+ SLOW AND STEADY +]-- ruof Медленный и упорный	20.04.2026
		-- Pickaxes
		["loc_trait_bespoke_toughness_on_hit_based_on_charge_time"] = {
			ru = "Медленно, но верно",
			-- ["zh-tw"] = "緩慢而確實",
		},
		--[+ POWER SURGE +]-- ruof Скачок напряжения	20.04.2026
		-- Power Maul
		["loc_trait_bespoke_explosion_on_activated_attacks_on_armor"] = {
			ru = "Энерговсплеск",
			-- ["zh-tw"] = "能量湧動",
		},
		--[+ LAST GUARD +]-- ruof Последний страж	20.04.2026
		-- Battle Maul and Shield, Shock Mauls and Shield
		-- ["loc_trait_block_break_pushes"] = {
			-- ["zh-tw"] = "最後防線",
		-- },
		--[+ OFFENSIVE DEFENCE +]-- ruof Активная оборона	20.04.2026
		-- Battle Maul and Shield, Shock Mauls and Shield
		["loc_trait_damage_bonus_on_block"] = {
			ru = "Атакующая оборона",
			-- ["zh-tw"] = "反守為攻",
		},
		--[+ CAN OPENER +]-- ruof Открывашка !MELEE!	20.04.2026
		-- Crowbar
		-- ["loc_trait_bespoke_armor_rending_bayonette_crowbar"] = {
		-- },
		--[+ REFINED LETHALITY +]-- ruof Отточеная смертоносность	20.04.2026
		-- Bone Saw
		-- ["loc_trait_bespoke_increased_weakspot_damage_against_toxin_status"] = {
		-- },


	--[+ RANGED - ДАЛЬНИЙ БОЙ - 远程武器 +]--
		--[+ RAKING FIRE +]-- ruof Обстрел	20.04.2026
		-- Flanking Damage (per tier)
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Infantry Autoguns, Laspistols
		["loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking"] = {
			ru = "Огонь по тылам",
			-- ["zh-tw"] = "掃射",
		},
		--[+ DUMDUM +]-- ruof Дамдам	20.04.2026
		-- Infantry Autoguns, Laspistols, Recon Lasguns
		["loc_trait_bespoke_consecutive_hits_increases_close_damage"] = {
			ru = "Дум-дум",
			-- ["zh-tw"] = "達姆彈",
		},
		--[+ HIT & RUN / HIT AND RUN +]-- ruof Бей и беги	20.04.2026
		-- Braced Autoguns, Combat Shotguns, Double-Barrel Shotgun, Dual Stub Pistols, Infantry Autoguns, Recon Lasguns
		-- ["loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill"] = {
			-- ["zh-tw"] = "游擊",
		-- },
		--[+ SUSTAINED FIRE +]-- ruof Непрерывный огонь	20.04.2026
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Electrokinetic Staff, Exterminator Shotguns, Helbore Lasguns, Infantry Autoguns, Recon Lasguns, Stub Revolvers, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_followup_shots_ranged_damage"] = {
			ru = "Непрерывная стрельба",
			-- ["zh-tw"] = "持續射擊",
		},
		--[+ PUNISHING SALVO +]-- ruof Карательный залп	20.04.2026
		-- Exterminator Shotguns, Infantry Autoguns, Recon Lasguns
		-- ["loc_trait_bespoke_followup_shots_ranged_weakspot_damage"] = {
			-- ["zh-tw"] = "懲罰射擊",
		-- },
		--[+ FIRE FRENZY +]-- ruof Огненное неистовство	20.04.2026
		-- Boltguns, Braced Autoguns, Combat Shotguns, Exterminator Shotguns, Twin-Linked Stubbers, Infantry Autoguns, Ripper Guns, Shotpistol and Shield
		["loc_trait_bespoke_increase_close_damage_on_close_kill"] = {
			ru = "Неистовая стрельба",
			-- ["zh-tw"] = "烈火熱焰",
		},
		--[+ DEATHSPITTER +]-- ruof Смертоносец	20.04.2026
		-- Braced Autoguns, Combat Shotguns, Exterminator Shotguns, Twin-Linked Stubbers, Infantry Autoguns, Recon Lasguns, Shotpistol and Shield, Double-Barrel Shotgun
		["loc_trait_bespoke_increase_power_on_close_kill"] = {
			ru = "Смертоплюй",
			-- ["zh-tw"] = "死亡噴吐",
		},
		--[+ STRIPPED DOWN +]-- ruof Срез	20.04.2026
		-- Braced Autoguns, Infantry Autoguns, Needle Pistols, Recon Lasguns
		["loc_trait_bespoke_increased_sprint_speed"] = {
			ru = "Сбросить лишнее",
			-- ["zh-tw"] = "輕裝",
		},
		--[+ SPEEDLOAD +]-- ruof Скоростная загрузка	20.04.2026
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Braced Autoguns, Infantry Autoguns, Double-Barrel Shotgun, Laspistols, Needle Pistols, Recon Lasguns, Shotpistol and Shield, Stub Revolvers
		["loc_trait_bespoke_reload_speed_on_slide"] = {
			ru = "Быстрая перезарядка",
			-- ["zh-tw"] = "快速裝彈",
		},
		--[+ TERRIFYING BARRAGE +]-- ruof Устрашающий натиск	20.04.2026
		-- Autopistol, Boltguns, Braced Autoguns, Combat Shotguns, Double-Barrel Shotgun, Dual Autopistols, Dual Stub Pistols, Electrokinetic Staff, Twin-Linked Stubbers, Infantry Autoguns, Inferno Staff, Kickback, Ripper Guns, Stub Revolvers, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_suppression_on_close_kill"] = {
			ru = "Ужасающий шквал",
			-- ["zh-tw"] = "恐怖阻擊",
		},
		--[+ ROARING ADVANCE +]-- ruof Ревущее наступление	20.04.2026
		-- Braced Autoguns, Twin-Linked Stubbers
		-- ["loc_trait_bespoke_movement_speed_on_continuous_fire"] = {
			-- ["zh-tw"] = "咆哮突進",
		-- },
		--[+ CEASELESS BARRAGE +]-- ruof Беспощадный натиск	20.04.2026
		-- Braced Autoguns, Twin-Linked Stubbers
		["loc_trait_bespoke_suppression_on_continuous_fire"] = {
			ru = "Бесконечный шквал",
			-- ["zh-tw"] = "持續阻擊",
		},
		--[+ INSPIRING BARRAGE +]-- ruof Вдохновляющий натиск	20.04.2026
		-- Autopistol, Boltguns, Braced Autoguns, Dual Autopistols, Flamer, Heavy Stubbers, Twin-Linked Stubbers, Ripper Guns
		["loc_trait_bespoke_toughness_on_continuous_fire"] = {
			ru = "Вдохновляющий шквал",
			-- ["zh-tw"] = "振奮彈幕",
		},
		--[+ GHOST +]-- ruof Призрак	20.04.2026
		-- Infantry Lasguns, Laspistols, Needle Pistols, Vigilant Autoguns
		-- ["loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot"] = {
			-- ["zh-tw"] = "幽靈",
		-- },
		--[+ SURGICAL +]-- ruof Зоркость	20.04.2026
		-- Boltguns, Heavy Stubbers, Kickback, Vigilant Autoguns, Bolt Pistols, Helbore Lasguns, Stub Revolvers
		["loc_trait_bespoke_crit_chance_based_on_aim_time"] = {
			ru = "Хирургическая точность",
			-- ["zh-tw"] = "精確打擊",
		},
		--[+ CRUCIAN ROULETTE +]-- ruof Круцианская рулетка	20.04.2026
		-- Dual Stub Pistols, Stub Revolvers, Vigilant Autoguns
		-- ["loc_trait_bespoke_crit_chance_based_on_ammo_left"] = {
			-- ["zh-tw"] = "克魯錫安輪盤",
		-- },
		--[+ DEADLY ACCURATE +]-- ruof Смертоностная точность	20.04.2026
		-- Bolt Pistols, Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns
		-- ["loc_trait_bespoke_crit_weakspot_finesse"] = {
			-- ["zh-tw"] = "致命精準",
		-- },
		--[+ NO RESPITE +]-- ruof Нет отдыху	20.04.2026
		-- Combat Shotguns, Helbore Lasguns, Infantry Lasguns, Shotpistol and Shield, Vigilant Autoguns
		["loc_trait_bespoke_stagger_count_bonus_damage"] = {
			ru = "Без передышки",
			-- ["zh-tw"] = "刻不容緩",
		},
		--[+ OPENING SALVO +]-- ruof Открывающий залп	20.04.2026
		-- Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns
		-- ["loc_trait_bespoke_power_bonus_on_first_shot"] = {
		-- },
		--[+ HEADHUNTER +]-- ruof Охотник за головами	20.04.2026
		-- Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns, Recon Lasguns
		-- ["loc_trait_bespoke_weakspot_stacking_crit_chance"] = {
		-- },
		--[+ BETWEEN THE EYES +]-- ruof Промеж глаз	20.04.2026
		-- Infantry Lasguns, Laspistols, Needle Pistols, Vigilant Autoguns
		-- ["loc_trait_bespoke_suppression_negation_on_weakspot"] = {
			-- ["zh-tw"] = "開啟齊射",
		-- },
		--[+ BLAZE AWAY +]-- ruof Энтузиазм	20.04.2026
		-- Autopistol, Dual Autopistols, Flamer, Heavy Stubbers, Twin-Linked Stubbers, Ripper Guns
		["loc_trait_bespoke_power_bonus_on_continuous_fire"] = {
			ru = "Стрельба без устали",
			-- ["zh-tw"] = "連續發射",
		},
		--[+ POWDERBURN +]-- ruof Пороховой ожог	20.04.2026
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Exterminator Shotguns
		-- ["loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills"] = {
			-- ["zh-tw"] = "火藥灼傷",
		-- },
		--[+ CAVALCADE +]-- ruof Кавалькада	20.04.2026
		-- Autopistol, Boltguns, Heavy Stubbers, Ripper Guns
		-- ["loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire"] = {
			-- ["zh-tw"] = "接連不斷",
		-- },
		--[+ PINNING FIRE +]-- ruof Схватывающий огонь	20.04.2026
		-- Autopistol, Boltguns, Dual Autopistols, Dual Stub Pistols, Heavy Stubbers
		["loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies"] = {
			ru = "Подавляющий огонь",
			-- ["zh-tw"] = "鉗制射擊",
		},
		--[+ RUN 'N' GUN - RUN AND GUN +]-- ruof Стреляй и беги	20.04.2026
		-- Bolt Pistols, Dual Autopistols, Dual Stub Pistols, Electrokinetic Staff, Inferno Staff, Kickback, Needle Pistols, Shotpistol and Shield, Stub Revolvers, Voidblast Staff, Voidstrike Staff, Double-Barrel Shotgun
		-- ["loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats"] = {
			-- ["zh-tw"] = "連跑帶打",
		-- },
		--[+ PUNCTURE +]-- ruof Прокол	20.04.2026
		-- Boltguns, Bolt Pistols
		-- ["loc_trait_bespoke_bleed_on_ranged"] = {
			-- ["zh-tw"] = "出血穿透",
		-- },
		--[+ LETHAL PROXIMITY +]-- ruof Смертельное сближение	20.04.2026
		-- Bolt Pistols
		-- ["loc_trait_bespoke_close_explosion"] = {
			-- ["zh-tw"] = "致命零距離",
		-- },
		--[+ POINT BLANK +]-- ruof В упор	20.04.2026
		-- Bolt Pistols, Needle Pistols, Stub Revolvers
		-- ["loc_trait_bespoke_crit_chance_bonus_on_melee_kills"] = {
			-- ["zh-tw"] = "近身平射",
		-- },
		--[+ EXECUTION +]-- ruof Казнь	20.04.2026
		-- Bolt Pistols, Exterminator Shotguns
		-- ["loc_trait_bespoke_damage_vs_stagger"] = {
			-- ["zh-tw"] = "處決",
		-- },
		--[+ GLORYHUNTER +]-- ruof Охотник за славой	20.04.2026
		-- Boltguns, Heavy Stubbers, Needle Pistols, Plasma Gun, Bolt Pistols, Stub Revolvers, Grenadier Gauntlet, Rumbler
		-- ["loc_trait_bespoke_toughness_on_elite_kills"] = {
			-- ["zh-tw"] = "榮耀獵手",
		-- },
		--[+ SURGE +]-- ruof Импульс	20.04.2026
		-- Electrokinetic Staff, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_double_shot_on_crit"] = {
			ru = "Всплеск",
			-- ["zh-tw"] = "湧動",
		},
		--[+ SURGE +]-- ruof Импульс !DOUBLE!	20.04.2026
		-- Electrokinetic Staff, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_double_shot_on_crit_and_crit_chance"] = {
			ru = "Всплеск",
			-- ["zh-tw"] = "湧動",
		},
		--[+ WARP FLURRY +]-- ruof Варп-шквал	20.04.2026
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff
		-- ["loc_trait_bespoke_faster_charge_on_chained_secondary_attacks"] = {
			-- ["zh-tw"] = "亞空間亂舞",
		-- },
		--[+ WARP NEXUS +]-- ruof Варп-сектор	20.04.2026
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_increased_crit_chance_scaled_on_peril"] = {
			ru = "Связь с варпом",
			-- ["zh-tw"] = "亞空間樞紐",
		},
		--[+ TRANSFER PERIL +]-- ruof Перемещение угрозы	20.04.2026
		-- Electrokinetic Staff, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_peril_vent_on_weakspot_hit"] = {
			ru = "Перемещение опасности",
			-- ["zh-tw"] = "轉移反噬",
		},
		--[+ RENDING SHOCKWAVE +]-- ruof Разрушительная волна	20.04.2026
		-- Voidblast Staff
		-- ["loc_trait_bespoke_rend_armor_on_aoe_charge"] = {
			-- ["zh-tw"] = "撕扯震盪",
		-- },
		--[+ FOCUSED CHANNELLING +]-- ruof Сосредоточенный призыв	20.04.2026
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff
		-- ["loc_trait_bespoke_uninterruptable_while_charging_and_movement"] = {
			-- ["zh-tw"] = "專注引導",
		-- },
		--[+ BLAZING SPIRIT +]-- ruof Пламенный дух	20.04.2026
		-- Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_warpfire_burn_on_crit"] = {
			ru = "Пылающий дух",
			-- ["zh-tw"] = "燃燒靈魂",
		},
		--[+ PENETRATING FLAME +]-- ruof Убойное пламя	20.04.2026
		-- Flamer, Inferno Staff
		["loc_trait_bespoke_armor_rending_from_dot_burning"] = {
			ru = "Проникающее пламя",
			-- ["zh-tw"] = "穿透火焰",
		},
		--[+ SHOWSTOPPER +]-- ruof Театральная пауза	20.04.2026
		-- Flamer, Inferno Staff
		["loc_trait_bespoke_chance_to_explode_elites_on_kill"] = {
			ru = "Взрывной финал",
			-- ["zh-tw"] = "嘆為觀止",
		},
		--[+ INFERNUS +]-- ruof Инфернус	20.04.2026
		-- Helbore Lasguns, Infantry Lasguns, Laspistols, Recon Lasguns
		-- ["loc_trait_bespoke_burninating_on_crit"] = {
			-- ["zh-tw"] = "煉獄",
		-- },
		--[+ EFFICIENCY +]-- ruof Эффективность	20.04.2026
		-- Infantry Lasguns
		-- ["loc_trait_bespoke_first_shot_ammo_cost_reduction"] = {
			-- ["zh-tw"] = "效率",
		-- },
		--[+ CONCENTRATED FIRE +]-- ruof Интенсивный огонь	20.04.2026
		-- Laspistols, Needle Pistols
		["loc_trait_bespoke_crit_chance_on_chained_weakspot_hits"] = {
			ru = "Сосредоточенный огонь",
			-- ["zh-tw"] = "集中火力",
		},
		--[+ DESPERADO +]-- ruof Сорвиголова	20.04.2026
		-- Dual Stub Pistols, Laspistols, Needle Pistols
		-- ["loc_trait_bespoke_crit_chance_on_successful_dodge"] = {
			-- ["zh-tw"] = "亡命之徒",
		-- },
		--[+ REASSURINGLY ACCURATE +]-- ruof Внушительная точность	20.04.2026
		-- Grenadier Gauntlet, Laspistols
		["loc_trait_bespoke_toughness_on_crit_kills"] = {
			ru = "Успокаивающая точность",
			-- ["zh-tw"] = "慰藉精準",
		},
		--[+ FLECHETTE +]-- ruof Флешетта	20.04.2026
		-- Combat Shotguns, Double-Barrel Shotgun, Ripper Guns
		-- ["loc_trait_bespoke_bleed_on_crit_ranged"] = {
			-- ["zh-tw"] = "飛鏢彈",
		-- },
		--[+ MAN-STOPPER +]-- ruof Усмирение	20.04.2026
		-- Combat Shotguns, Double-Barrel Shotgun, Shotpistol and Shield
		["loc_trait_bespoke_cleave_on_crit"] = {
			ru = "Тяжёлый боеприпас",
			-- ["zh-tw"] = "大口徑彈藥",
		},
		--[+ SCATTERSHOT +]-- ruof Разброс	20.04.2026
		-- Combat Shotguns, Double-Barrel Shotgun, Exterminator Shotguns, Shotpistol and Shield
		["loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot"] = {
			ru = "Картечь",
			-- ["zh-tw"] = "散彈",
		},
		--[+ FULL BORE +]-- ruof Напор	20.04.2026
		-- Combat Shotguns, Double-Barrel Shotgun, Exterminator Shotguns, Shotpistol and Shield, Kickback
		["loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all"] = {
			ru = "Полный калибр",
			-- ["zh-tw"] = "全孔射擊",
		},
		--[+ BOTH BARRELS +]-- ruof Дуплет	20.04.2026
		-- Double-Barrel Shotgun
		-- ["loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill"] = {
			-- ["zh-tw"] = "雙管齊發",
		-- },
		--[+ TRICKSHOOTER +]-- ruof Меткий стрелок	20.04.2026
		-- Stub Revolvers
		-- ["loc_trait_bespoke_power_bonus_on_chained_weakspot_hits"] = {
			-- ["zh-tw"] = "狡猾射手",
		-- },
		--[+ HAND-CANNON +]-- ruof Ручная пушка	20.04.2026
		-- Stub Revolvers
		-- ["loc_trait_bespoke_rending_on_crit"] = {
			-- ["zh-tw"] = "手銃",
		-- },
		--[+ SHATTERING IMPACT +]-- ruof Рассеивающий импульс	20.04.2026
		-- Boltguns, Grenadier Gauntlet, Plasma Gun, Rumbler
		["loc_trait_bespoke_armor_rend_on_projectile_hit"] = {
			ru = "Разрушительный удар",
			-- ["zh-tw"] = "破碎衝擊",
		},
		--[+ EVERLASTING FLAME +]-- ruof Бесконечное пламя	20.04.2026
		-- Flamer
		["loc_trait_bespoke_ammo_spent_from_reserve_on_crit"] = {
			ru = "Неугасимое пламя",
			-- ["zh-tw"] = "永燃烈焰",
		},
		--[+ QUICKFLAME +]-- ruof Воспламенение	20.04.2026
		-- Flamer
		["loc_trait_bespoke_faster_reload_on_empty_clip"] = {
			ru = "Скорое пламя",
			-- ["zh-tw"] = "迅捷火焰",
		},
		--[+ FAN THE FLAMES +]-- ruof Раздувая пламя	20.04.2026
		-- Flamer
		["loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning"] = {
			ru = "Раздуй пламя",
			-- ["zh-tw"] = "煽風點火",
		},
		--[+ OVERPRESSURE +]-- ruof Избыточное давление	20.04.2026
		-- Flamer
		-- ["loc_trait_bespoke_power_scales_with_clip_percentage"] = {
			-- ["zh-tw"] = "超壓",
		-- },
		--[+ HOT-SHOT +]-- ruof В точку	20.04.2026
		-- Helbore Lasguns, Needle Pistols
		["loc_trait_bespoke_cleave_on_weakspot_hits"] = {
			ru = "Прожигающий выстрел",
			-- ["zh-tw"] = "激射",
		},
		--[+ WEIGHT OF FIRE +]-- ruof Плотность огня	20.04.2026
		-- Helbore Lasguns
		-- ["loc_trait_bespoke_faster_charge_on_chained_attacks"] = {
			-- ["zh-tw"] = "猛攻",
		-- },
		--[+ ARMOURBANE +]-- ruof Бронебой	20.04.2026
		-- Helbore Lasguns
		-- ["loc_trait_bespoke_rend_armor_on_charged_shots"] = {
			-- ["zh-tw"] = "護甲之禍",
		-- },
		--[+ POWER BLAST +]-- ruof Мощный взрыв	20.04.2026
		-- Plasma Gun
		["loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time"] = {
			ru = "Энерговзрыв",
			-- ["zh-tw"] = "聚能爆發",
		},
		--[+ GETS HOT! +]-- ruof Становится жарко!	20.04.2026
		-- Plasma Gun
		["loc_trait_bespoke_crit_chance_scaled_on_heat"] = {
			ru = "Перегрев!",
			-- ["zh-tw"] = "燃起來!",
		},
		--[+ VOLATILE +]-- ruof Испарение	20.04.2026
		-- Plasma Gun
		["loc_trait_bespoke_lower_overheat_gives_faster_charge"] = {
			ru = "Нестабильность",
			-- ["zh-tw"] = "熱力震盪",
		},
		--[+ BLAZE AWAY +]-- ALT OGRYN ruof Энтузиазм	20.04.2026
		-- Grenadier Gauntlet, Inferno Staff, Plasma Gun, Kickback, Rumbler
		["loc_trait_bespoke_power_bonus_on_continuous_fire_alternative"] = {
			ru = "Стрельба без устали",
			-- ["zh-tw"] = "連續發射",
		},
		--[+ RISING HEAT +]-- ruof Сильная жара	20.04.2026
		-- Plasma Gun
		["loc_trait_bespoke_power_bonus_scaled_on_heat"] = {
			ru = "Нарастающий жар",
			-- ["zh-tw"] = "升溫",
		},
		--[+ OPTIMISED COOLING +]-- ruof Оптимизированное охлаждение	20.04.2026
		-- Plasma Gun
		-- ["loc_trait_bespoke_reduced_heat_on_continuous"] = {
			-- ["zh-tw"] = "優化冷卻",
		-- },
		--[+ FOCUSED COOLING +]-- ruof Сосредоточенное охлаждение	20.04.2026
		-- Plasma Gun
		-- ["loc_trait_bespoke_reduced_overheat_on_crits"] = {
			-- ["zh-tw"] = "專注冷卻",
		-- },
		--[+ GAUNTLET MOMENTUM +]-- ruof Перчатка моментума	20.04.2026
		-- Grenadier Gauntlet
		["loc_trait_bespoke_power_bonus_on_chained_melee"] = {
			ru = "Инерция перчатки",
			-- ["zh-tw"] = "交叉動量",
		},
		--[+ PULVERISE +]-- ruof Пульверизация	20.04.2026
		-- Grenadier Gauntlet
		["loc_trait_bespoke_crit_chance_on_melee_kill"] = {
			ru = "Измельчение",
			-- ["zh-tw"] = "粉碎",
		},
		--[+ DISRUPTIVE +]-- ruof Разрывной эффект	20.04.2026
		-- Grenadier Gauntlet
		-- ["loc_trait_bespoke_melee_power_bonus_after_explosion"] = {
			-- ["zh-tw"] = "顛覆性力量",
		-- },
		--[+ EXPLOSIVE OFFENSIVE +]-- ruof Взрывное наступление	20.04.2026
		-- Grenadier Gauntlet
		-- ["loc_trait_bespoke_power_bonus_after_weapon_special_multiple"] = {
			-- ["zh-tw"] = "爆炸使我強大",
		-- },
		--[+ PINPOINTING TARGET +]-- ruof Определение цели	20.04.2026
		-- Grenadier Gauntlet, Shotpistol and Shield
		-- ["loc_trait_bespoke_power_bonus_based_on_charge_time_ranged"] = {
			-- ["zh-tw"] = "精確定位",
		-- },
		--[+ CHARMED RELOAD +]-- ruof Зачарованная перезарядка	20.04.2026
		-- Twin-Linked Stubbers
		-- ["loc_trait_bespoke_ammo_refill_from_reserve_on_crit"] = {
			-- ["zh-tw"] = "魔力彈藥",
		-- },
		--[+ OVERWHELMING FIRE +]-- ruof Огонь на поражение	20.04.2026
		-- Heavy Stubbers, Twin-Linked Stubbers
		["loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target"] = {
			ru = "Подавляющий огонь",
			-- ["zh-tw"] = "壓倒性火力",
		},
		--[+ CAN OPENER +]-- ruof Открывашка	20.04.2026
		-- Ripper Guns
		-- ["loc_trait_bespoke_armor_rending_bayonette"] = {
			-- ["zh-tw"] = "開罐器",
		-- },
		--[+ BORN IN BLOOD +]-- ruof Рожденный в крови	20.04.2026
		-- Dual Stub Pistols, Exterminator Shotguns, Ripper Guns
		["loc_trait_bespoke_toughness_on_close_range_kills"] = {
			ru = "Рождённый в крови",
			-- ["zh-tw"] = "浴血而生",
		},
		--[+ PIERCE +]-- ruof Прокол	20.04.2026
		-- Kickback, Rumbler
		["loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger"] = {
			ru = "Пробивание",
			-- ["zh-tw"] = "穿透",
		},
		--[+ PUNISHING FIRE +]-- ruof Карательный обстрел	20.04.2026
		-- Kickback
		-- ["loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave"] = {
			-- ["zh-tw"] = "懲罰射擊",
		-- },
		--[+ INSPIRING BARRAGE +]-- ALT OGRYN ruof Вдохновляющий натиск	20.04.2026
		-- Kickback
		["loc_trait_bespoke_toughness_on_continuous_fire_alternative"] = {
			ru = "Вдохновляющий шквал",
			-- ["zh-tw"] = "激勵彈幕",
		},
		--[+ EXPANSIVE +]-- ruof Расширение	20.04.2026
		-- Kickback
		["loc_trait_bespoke_weapon_special_power_bonus_after_one_shots"] = {
			ru = "Экспансивный",
			-- ["zh-tw"] = "擴展性",
		},
		--[+ SHRAPNEL +]-- ruof Шрапнель	20.04.2026
		-- Rumbler
		-- ["loc_trait_bespoke_close_explosion_applies_bleed"] = {
			-- ["zh-tw"] = "破片四射",
		-- },
		--[+ BLAST ZONE +]-- ruof Зона взрыва	20.04.2026
		-- Rumbler
		-- ["loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire"] = {
			-- ["zh-tw"] = "狂轟猛炸",
		-- },
		--[+ ADHESIVE CHARGE +]-- ruof Цепной заряд	20.04.2026
		-- Rumbler
		["loc_trait_bespoke_grenades_stick_to_monsters_and_damage"] = {
			ru = "Липкий заряд",
			-- ["zh-tw"] = "黏著炸藥",
		},
		--[+ MARKSMAN'S REFLEX +]-- ruof Рефлекс стрелка	20.04.2026
		-- Rumbler
		-- ["loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed"] = {
			-- ["zh-tw"] = "迅雷反射",
		-- },


--[+ ++TALENTS - ТАЛАНТЫ ++ +]--
	--[+ +NODES - УЗЛЫ+ +]--
		--[+ Cleave Boost Medium +]-- ruof Усиление «Раскола»	20.04.2026
		-- Arbites 1
		["loc_talent_cleave_boost_medium"] = {
			ru = "Усиление рассечения",
		},
		--[+ Critical Chance Boost +]-- ruof Усиление вероятности крит. удара	20.04.2026
		-- Psyker 1, Scum 1
		["loc_talent_crit_chance_low"] = {
			ru = "Усиление шанса критического удара",
			-- ["zh-tw"] = "暴擊機率增幅",
		},
		--[+ Impact Boost +]-- ruof Усиление подчинения	20.04.2026
		-- Arbites 1
		["loc_talent_impact_boost_medium"] = {
			ru = "Усиление выведения из равновесия",
		},
		--[+ Melee Damage Boost Low - Medium +]-- ruof Усиление урона в ближнем бою	20.04.2026
		-- Psyker 1, Zealot 2, Ogryn 1, Arbites 1, Veteran 1, Scum 1
		["loc_talent_melee_damage_boost_medium"] = {
			ru = "Усиление урона ближнего боя",
			-- ["zh-tw"] = "重擊傷害增幅",
		},
		--[+ Movement Speed Boost +]-- ruof Усиление скорости передвижения	20.04.2026
		-- Psyker 1, Zealot 1, Veteran 1
		["loc_talent_movement_speed_low"] = {
			ru = "Усиление скорости движения",
			-- ["zh-tw"] = "移動速度增幅",
		},
		--[+ Peril Resistance Low +]-- ruof Сопротивление угрозе	20.04.2026
		-- Psyker 1
		["loc_talent_warp_charge_low"] = {
			ru = "Сопротивление опасности",
			-- ["zh-tw"] = "反噬抗性",
		},
		--[+ Ranged Damage Boost Medium +]-- ruof Усиление урона в дальнем бою	20.04.2026
		-- Psyker 1, Ogryn 1, Arbites 1, Veteran 1
		["loc_talent_ranged_damage_medium"] = {
			ru = "Усиление урона дальнего боя",
			-- ["zh-tw"] = "遠程傷害增幅",
		},
		--[+ Reload Boost Low +]-- ruof Усиление перезарядки	20.04.2026
		-- Ogryn 1
		["loc_talent_reload_speed_low"] = {
			ru = "Reload Boost Low",
			ru = "Усиление скорости перезарядки малое",
			-- ["zh-tw"] = "換彈速度增幅(小)",
		},
		--[+ Reload Boost Medium +]-- ruof Усиление перезарядки	20.04.2026
		-- Veteran 1
		["loc_talent_reload_speed_medium"] = {
			ru = "Reload Boost Medium",
			ru = "Усиление скорости перезарядки среднее",
			-- ["zh-tw"] = "換彈速度增幅(中)",
		},
		-- [+ Rending Boost Low +]-- ruof Усиление «Терзания»	20.04.2026
		-- Ogryn 1
		["loc_talent_armor_pen_low"] = {
			ru = "Усиление пробивания брони",
			-- ["zh-tw"] = "撕裂增強",
		},
		--[+ Stamina Boost Low +]-- ruof Усиление выносливости	20.04.2026
		-- Psyker 1, Veteran 1
		-- ["loc_talent_stamina_low"] = {
			-- ["zh-tw"] = "耐力增幅",
		-- },
		--[+ Stamina Regeneration Boost +]-- ruof Усиление восстановления выносливости	20.04.2026
		-- Veteran 1
		-- ["loc_talent_stamina_regen_delay"] = {
			-- ["zh-tw"] = "耐力恢復增幅",
		-- },
		--[+ Toughness Boost Low +]-- ruof Усиление стойкости	20.04.2026
		-- Ogryn 1, Veteran 1
		["loc_talent_toughness_boost_low"] = {
			en = "Toughness Boost Low",
			ru = "Усиление стойкости малое",
			-- ["zh-tw"] = "韌性增幅(小)",
		},
		--[+ Toughness Boost Medium +]-- ruof Усиление стойкости	20.04.2026
		-- Psyker 2, Zealot 1, Ogryn 2, Veteran 2, Scum 2
		["loc_talent_toughness_boost_medium"] = {
			en = "Toughness Boost Medium",
			ru = "Усиление стойкости среднее",
			-- ["zh-tw"] = "韌性增幅(中)",
		},
		--[+ Toughness Damage Reduction Low +]-- ruof Снижение урона стойкости	20.04.2026
		-- Psyker 1, Ogryn 1
		["loc_talent_toughness_damage_reduction_low"] = {
			en = "Toughness Damage Reduction Low",
			ru = "Снижение урона стойкости малое",
			-- ["zh-tw"] = "韌性減傷(小)",
		},
		--[+ Toughness Damage Reduction Medium +]-- ruof Снижение урона стойкости	20.04.2026
		-- Psyker 1, Zealot 1, Ogryn 1, Arbites 1, Veteran 1
		["loc_talent_toughness_damage_reduction_medium"] = {
			en = "Toughness Damage Reduction Medium",
			ru = "Снижение урона стойкости среднее",
			-- ["zh-tw"] = "韌性減傷(中)",
		},
		--[+ Potent Tox +]-- ruof Мощный токсин	20.04.2026
		-- Scum 1
		-- ["loc_talent_toxin_damage_boost"] = {
		-- },


--[+ ++PSYKER - ПСАЙКЕР - 靈能者 ++ +]--
	--[+ +BLITZ - БЛИЦ - 閃擊 + +]--
		--[+ BLITZ 0 - Brain Burst +]-- ruof Взрыв разума	20.04.2026
		["loc_ability_psyker_smite"] = {
			ru = "Взрыв мозга",
			-- ["zh-tw"] = "顱腦爆裂",
		},
		--[+ BLITZ 1 - Brain Rupture +]-- ruof Разрыв мозга	20.04.2026
		["loc_talent_psyker_brain_burst_improved"] = {
			["zh-tw"] = "顱腦崩裂",
		},
		--[+ BLITZ 1-1 - Kinetic Resonance +]-- ruof Кинетический резонанс	20.04.2026
		-- ["loc_talent_psyker_ability_increase_brain_burst_speed"] = {
			-- ["zh-tw"] = "動能共鳴",
		-- },
		--[+ BLITZ 1-2 - Kinetic Flayer +]-- ruof Кинетический истребитель	20.04.2026
		["loc_talent_psyker_smite_on_hit"] = {
			ru = "Кинетический живодёр",
			-- ["zh-tw"] = "動能剝皮者",
		},
		--[+ BLITZ 2 - Smite +]-- ruof Сокрушение	20.04.2026
		-- ["loc_ability_psyker_chain_lightning"] = {
			-- ["zh-tw"] = "懲戒",
		-- },
		--[+ BLITZ 2-1 - Charged Strike +]-- ruof Заряженный удар	20.04.2026
		-- ["loc_talent_psyker_chain_lightning_heavy_attacks"] = {
			-- ["zh-tw"] = "蓄力打擊",
		-- },
		--[+ BLITZ 2-2 - Enfeeble +]-- ruof Ослабление	20.04.2026
		-- ["loc_talent_psyker_increased_chain_lightning_improved_target_buff"] = {
			-- ["zh-tw"] = "衰弱詛咒",
		-- },
		--[+ BLITZ 3 - Assail +]-- ruof Нападение	20.04.2026
		-- ["loc_ability_psyker_blitz_throwing_knives"] = {
			-- ["zh-tw"] = "靈能攻擊",
		-- },
		--[+ BLITZ 3-1 - Ethereal Shards +]-- ruof Эфирные частицы	20.04.2026
		["loc_talent_psyker_throwing_knives_pierce"] = {
			ru = "Эфирные осколки",
			-- ["zh-tw"] = "乙太碎片",
		},
		--[+ BLITZ 3-2 - Quick Shards +]-- ruof Быстрые частицы	20.04.2026
		["loc_talent_psyker_throwing_knives_reduced_cooldown"] = {
			ru = "Быстрые осколки",
			-- ["zh-tw"] = "迅捷碎片",
		},
	--[+ +AURA - АУРА - 光環 + +]--
		--[+ AURA 0 - The Quickening +]-- ruof Ускорение	20.04.2026
		-- ["loc_talent_psyker_aura_reduced_ability_cooldown"] = {
			-- ["zh-tw"] = "加速",
		-- },
		--[+ AURA 1 - Kinetic Presence +]-- ruof Кинетическое присутствие	20.04.2026
		-- ["loc_talent_psyker_base_3"] = {
			-- ["zh-tw"] = "動能釋放",
		-- },
		--[+ AURA 2 - Seer's Presence +]-- ruof Присутствие провидца	20.04.2026
		-- ["loc_talent_psyker_cooldown_aura_improved"] = {
			-- ["zh-tw"] = "先知之眼",
		-- },
		--[+ AURA 3 - Prescience +]-- ruof Предвидение	20.04.2026
		-- ["loc_ability_psyker_gunslinger_aura"] = {
			-- ["zh-tw"] = "預兆",
		-- },
	--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
		--[+ ABILITY 0 - Psykinetic's Wrath +]-- ruof Психокинетический гнев	20.04.2026
		["loc_talent_psyker_2_combat"] = {
			ru = "Гнев психокинетика",
			-- ["zh-tw"] = "靈能學者之怒",
		},
		--[+ ABILITY 1 - Venting Shriek +]-- ruof Вырвавшийся вопль	20.04.2026
		["loc_talent_psyker_shout_vent_warp_charge"] = {
			ru = "Сбрасывающий вопль",
			-- ["zh-tw"] = "靈能尖嘯",
		},
		--[+ ABILITY 1-1 - Warp Rupture +]-- ruof Варп-разрыв	20.04.2026
		["loc_talent_psyker_shout_damage_per_warp_charge"] = {
			ru = "Разрыв варпа",
			-- ["zh-tw"] = "亞空間爆發",
		},
		--[+ ABILITY 1-2 - Becalming Eruption +]-- ruof Затихающее извержение	20.04.2026
		["loc_talent_psyker_shout_reduces_warp_charge_generation"] = {
			ru = "Успокаивающее извержение",
			-- ["zh-tw"] = "平靜进發",
		},
		--[+ ABILITY 1-3 - Warp Creeping Flames +]-- ruof Раздувающееся пламя	20.04.2026
		["loc_talent_psyker_warpfire_on_shout"] = {
			ru = "Ползучее пламя",
			-- ["zh-tw"] = "蔓延火焰",
		},
		--[+ ABILITY 2 - Telekine Shield +]-- ruof Телекинетический щит	20.04.2026
		-- ["loc_talent_psyker_combat_ability_shield"] = {
			-- ["zh-tw"] = "念力護盾",
		-- },
		--[+ ABILITY 2-1 - Bolstered Shield +]-- ruof Усиленный щит	20.04.2026
		-- ["loc_talent_psyker_force_field_charges"] = {
			-- ["zh-tw"] = "強化護盾",
		-- },
		--[+ ABILITY 2-2 - Enervating Threshold +]-- ruof Порог ослабления	20.04.2026
		-- ["loc_talent_psyker_force_field_stun_increased"] = {
			-- ["zh-tw"] = "衰弱界線",
		-- },
		--[+ ABILITY 2-3 - Telekine Dome +]-- ruof Телекинический купол	20.04.2026
		-- ["loc_talent_psyker_force_field_dome"] = {
			-- ["zh-tw"] = "念力穹頂",
		-- },
		--[+ ABILITY 2-4 - Sanctuary +]-- ruof Святилище	20.04.2026
		["loc_talent_psyker_force_field_grants_toughness"] = {
			ru = "Убежище",
			-- ["zh-tw"] = "庇護所",
		},
		--[+ ABILITY 3 - Scrier's Gaze +]-- ruof Взор Скрира	20.04.2026
		["loc_talent_psyker_combat_ability_overcharge_stance"] = {
			ru = "Взор провидца",
			-- ["zh-tw"] = "占卜者的注視",
		},
	--[+ ABILITY 3-1 - Precognition +]-- ruof Познание	20.04.2026
		["loc_ability_psyker_overcharge_weakspot"] = {
			ru = "Предвидение",
			-- ["zh-tw"] = "預知未來",
		},
		--[+ ABILITY 3-2 - Warp Speed +]-- ruof Варп-скорость	20.04.2026
		-- ["loc_ability_psyker_overcharge_movement_speed"] = {
			-- ["zh-tw"] = "亞空間加速",
		-- },
		--[+ ABILITY 3-3 - Reality Anchor +]-- ruof Якорь реальности	20.04.2026
		-- ["loc_ability_psyker_overcharge_reduced_warp_charge"] = {
			-- ["zh-tw"] = "現實錨點",
		-- },
		--[+ ABILITY 3-4 - Warp Unbound +]-- ruof Искажение варпа	20.04.2026
		["loc_talent_psyker_overcharge_infinite_casting"] = {
			ru = "Высвобождение варпа",
			-- ["zh-tw"] = "亞空間突破",
		},
	--[+ +KEYSTONES - КЛЮЧЕВЫЕ ТАЛАНТЫ - 鑰石+ +]--
		--[+ KEYSTONE 1 - Warp Siphon +]-- ruof Варп-сифон	20.04.2026
		["loc_talent_psyker_souls"] = {
			ru = "Переливание варпа",
			-- ["zh-tw"] = "亞空間虹吸",
		},
		--[+ KEYSTONE 1-1 - Inner Tranquility +]-- ruof Внутреннее спокойствие	20.04.2026
		-- ["loc_talent_psyker_reduced_warp_charge_cost_venting_speed"] = {
			-- ["zh-tw"] = "平心靜氣",
		-- },
		--[+ KEYSTONE 1-2 - Essence Harvest +]-- ruof Сбор сущности	20.04.2026
		["loc_talent_psyker_toughness_regen_on_soul"] = {
			ru = "Сбор сущностей",
			-- ["zh-tw"] = "吸精奪萃",
		},
		--[+ KEYSTONE 1-3 - Warp Battery +]-- ruof Варп-аккумулятор	20.04.2026
		-- ["loc_talent_psyker_increased_souls"] = {
			-- ["zh-tw"] = "亞空間電池",
		-- },
		--[+ KEYSTONE 1-4 - In Fire Reborn +]-- ruof В огне восстану	20.04.2026
		["loc_talent_psyker_warpfire_generates_souls"] = {
			ru = "Возрождение в огне",
			-- ["zh-tw"] = "涅槃",
		},
		--[+ KEYSTONE 1-5 - Psychic Vampire +]-- ruof Психический вампир	20.04.2026
		-- ["loc_talent_psyker_souls_on_kill_coop"] = {
			-- ["zh-tw"] = "靈能吸血鬼",
		-- },
		--[+ KEYSTONE 2 - Empowered Psionics +]-- ruof Усиленные псионики	20.04.2026
		-- ["loc_talent_psyker_empowered_ability"] = {
			-- ["zh-tw"] = "靈能強化",
		-- },
		--[+ KEYSTONE 2-1 - Bio-Lodestone +]-- ruof Биопритяжение	20.04.2026
		-- ["loc_talent_psyker_increase_empower_chain_lighting_chance"] = {
			-- ["zh-tw"] = "生物磁石",
		-- },
		--[+ KEYSTONE 2-2 - Psychic Leeching +]-- ruof Психическая пиявка	20.04.2026
		["loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies"] = {
			ru = "Психическое высасывание",
			-- ["zh-tw"] = "吸血閃電",
		},
		--[+ KEYSTONE 2-3 - Overpowering Souls +]-- ruof Могучие души	20.04.2026
		-- ["loc_talent_psyker_empowered_ability_on_elite_kills"] = {
			-- ["zh-tw"] = "吞靈強擊",
		-- },
		--[+ KEYSTONE 2-4 - Charged Up +]-- ruof Зарядка	20.04.2026
		["loc_talent_psyker_increased_empowered_chain_lightning_stacks"] = {
			ru = "Заряженный",
			-- ["zh-tw"] = "充能完畢",
		},
		--[+ KEYSTONE 3 - Disrupt Destiny +]-- ruof Разрушенная судьба	20.04.2026
		["loc_talent_psyker_marked_enemies_passive"] = {
			ru = "Прерывание судьбы",
			-- ["zh-tw"] = "擾動命運",
		},
		--[+ KEYSTONE 3-1 - Perfectionism +]-- ruof Перфекционизм	20.04.2026
		-- ["loc_talent_psyker_mark_increased_max_stacks"] = {
			-- ["zh-tw"] = "完美主義",
		-- },
		--[+ KEYSTONE 3-2 - Purloin Providence +]-- ruof Похищенное провидение	20.04.2026
		["loc_talent_psyker_mark_kills_can_vent"] = {
			ru = "Похищение провидения",
			-- ["zh-tw"] = "盜竊天命",
		},
		--[+ KEYSTONE 3-3 - Lingering Influence +]-- ruof Длящееся влияние	20.04.2026
		["loc_talent_psyker_mark_increased_duration"] = {
			ru = "Длительное влияние",
			-- ["zh-tw"] = "持久影響",
		},
		--[+ KEYSTONE 3-4 - Cruel Fortune +]-- ruof Жестокая судьба	20.04.2026
		-- ["loc_talent_psyker_mark_weakspot_stacks"] = {
			-- ["zh-tw"] = "殘忍命運",
		-- },
	--[+ +PASSIVES - ПАССИВНЫЕ ТАЛАНТЫ+ +]--
		--[+ PASSIVE 1 - Soulstealer +]-- ruof Похититель души	20.04.2026
		["loc_talent_psyker_toughness_on_warp_kill"] = {
			ru = "Похититель душ",
			-- ["zh-tw"] = "靈魂竊賊",
		},
		--[+ PASSIVE 2 - Mettle +]-- ruof Ретивость	20.04.2026
		-- ["loc_talent_psyker_crits_regen_tougness_and_movement_speed"] = {
			-- ["zh-tw"] = "堅毅",
		-- },
		--[+ PASSIVE 3 - Quietude +]-- ruof Тишина	20.04.2026
		["loc_talent_psyker_toughness_from_vent"] = {
			ru = "Спокойствие",
			-- ["zh-tw"] = "心如止水",
		},
		--[+ PASSIVE 4 - Warp Expenditure +]-- ruof Варп-затраты	20.04.2026
		["loc_talent_psyker_warp_charge_generation_generates_toughness"] = {
			ru = "Затраты варпа",
			-- ["zh-tw"] = "亞空間耗費",
		},
		--[+ PASSIVE 5 - Perilous Combustion +]-- ruof Пагубное воспламенение	20.04.2026
		["loc_talent_psyker_elite_kills_add_warpfire"] = {
			ru = "Опасное возгорание",
			-- ["zh-tw"] = "險惡燃燒",
		},
		--[+ PASSIVE 6 - Perfect Timing +]-- ruof Безупречное чувство времени	20.04.2026
		["loc_talent_psyker_crits_empower_next_attack"] = {
			ru = "Идеальный момент",
			-- ["zh-tw"] = "完美時機",
		},
		--[+ PASSIVE 7 - Battle Meditation +]-- ruof Боевая медитация	20.04.2026
		-- ["loc_talent_psyker_base_2"] = {
			-- ["zh-tw"] = "戰鬥冥想",
		-- },
		--[+ PASSIVE 8 - Wildfire +]-- ruof Гремучая смесь	20.04.2026
		["loc_talent_psyker_warpfire_spread"] = {
			ru = "Некотролируемый пожар",
			-- ["zh-tw"] = "野火",
		},
		--[+ PASSIVE 9 - Psykinetic's AURA +]-- ruof Аура психокинетика	20.04.2026
		-- ["loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency"] = {
			-- ["zh-tw"] = "靈能學者光環",
		-- },
		--[+ PASSIVE 10 - Mind in Motion +]-- ruof Движущийся разум	20.04.2026
		["loc_talent_psyker_venting_doesnt_slow"] = {
			ru = "Разум в движении",
			-- ["zh-tw"] = "靈能學者光環",
		},
		--[+ PASSIVE 11 - Malefic Momentum +]-- ruof Пагубный моментум	20.04.2026
		["loc_talent_psyker_kills_stack_other_weapon_damage"] = {
			ru = "Пагубный импульс",
			-- ["zh-tw"] = "惡意攻勢",
		},
		--[+ PASSIVE 12 - Channeled Force +]-- ruof Направленная сила	20.04.2026
		-- ["loc_talent_psyker_force_staff_bonus"] = {
			-- ["zh-tw"] = "靈能強化",
		-- },
		--[+ PASSIVE 13 - Perilous Assault +]-- ruof Пагубное нападение	20.04.2026
		-- ["loc_talent_psyker_force_staff_melee_attack_bonus"] = {
			-- ["zh-tw"] = "反噬突襲",
		-- },
		--[+ PASSIVE 14 - Lightning Speed +]-- ruof Молниеносная скорость	20.04.2026
		-- ["loc_talent_psyker_melee_attack_speed"] = {
			-- ["zh-tw"] = "迅雷之勢",
		-- },
		--[+ PASSIVE 15 - Souldrinker +]-- ruof Поглощение душ	20.04.2026
		["loc_talent_psyker_nearby_soulblaze_reduced_damage"] = {
			ru = "Поглотитель душ",
			-- ["zh-tw"] = "汲魂者",
		},
		--[+ PASSIVE 16 - Empyric Shock +]-- ruof Эмпирический шок	20.04.2026
		-- ["loc_talent_psyker_force_staff_quick_attack_bonus"] = {
			-- ["zh-tw"] = "亞空間震波",
		-- },
		--[+ PASSIVE 17 - By Crack of Bone +]-- ruof Треск костей	20.04.2026
		-- ["loc_talent_psyker_melee_weaving"] = {
			-- ["zh-tw"] = "骨折後遺症",
		-- },
		--[+ PASSIVE 18 - Warp Splitting +]-- ruof Расщепление варпа	20.04.2026
		-- ["loc_talent_psyker_cleave_from_peril"] = {
			-- ["zh-tw"] = "亞空間分裂",
		-- },
		--[+ PASSIVE 19 - Unlucky for Some +]-- ruof Некоторым не повезло	20.04.2026
		["loc_talent_psyker_restore_toughness_to_allies_when_ally_down"] = {
			ru = "Не везёт некоторым",
			-- ["zh-tw"] = "倒楣蛋",
		},
		--[+ PASSIVE 20 - One with the Warp +]-- ruof Единство с варпом	20.04.2026
		-- ["loc_talent_psyker_toughness_damage_reduction_from_warp_charge"] = {
			-- ["zh-tw"] = "亞空間強化",
		-- },
		--[+ PASSIVE 21 - Empathic Evasion +]-- ruof Эмпатическое уклонение	20.04.2026
		-- ["loc_talent_psyker_dodge_after_crits"] = {
			-- ["zh-tw"] = "反射閃避",
		-- },
		--[+ PASSIVE 22 - Anticipation +]-- ruof Предвкушение	20.04.2026
		-- ["loc_talent_psyker_improved_dodge"] = {
			-- ["zh-tw"] = "看破",
		-- },
		--[+ PASSIVE 23 - Solidity +]-- ruof Твердость	20.04.2026
		["loc_talent_psyker_increased_vent_speed"] = {
			ru = "Устойчивость",
			-- ["zh-tw"] = "心如止水",
		},
		--[+ PASSIVE 24 - Puppet Master +]-- ruof Кукловод	20.04.2026
		-- ["loc_talent_psyker_coherency_size_increase"] = {
			-- ["zh-tw"] = "傀儡師",
		-- },
		--[+ PASSIVE 25 - Warp Rider +]-- ruof Наездник варпа	20.04.2026
		["loc_talent_psyker_damage_based_on_warp_charge"] = {
			ru = "Всадник варпа",
			-- ["zh-tw"] = "亞空間騎士",
		},
		--[+ PASSIVE 26 - Crystalline Will +]-- ruof Чистая воля	20.04.2026
		-- ["loc_talent_psyker_alternative_peril_explosion"] = {
			-- ["zh-tw"] = "結晶意志",
		-- },
		-- [+ PASSIVE 27 - Kinetic Deflection +]-- ruof Кинетическое отклонение	20.04.2026
		-- ["loc_talent_psyker_block_costs_warp_charge"] = {
			-- ["zh-tw"] = "動能偏斜",
		-- },
		--[+ PASSIVE 28 - Tranquility Through Slaughter +]-- ruof Спокойствие посредством убийств	20.04.2026
		["loc_talent_psyker_ranged_crits_vent"] = {
			ru = "Успокоение через резню",
			-- ["zh-tw"] = "殺無赦，心祥和",
		},
		--[+ PASSIVE 29 - Empyric Resolve +]-- ruof Эмпирическая решимость	20.04.2026
		-- ["loc_talent_psyker_warp_glass_cannon"] = {
			-- ["zh-tw"] = "亞空間意志",
		-- },
		--[+ PASSIVE 30 - Penetration of the Soul +]-- ruof Проникновение в душу	20.04.2026
		-- ["loc_talent_psyker_warp_attacks_rending"] = {
			-- ["zh-tw"] = "靈魂穿透",
		-- },
		--[+ PASSIVE 31 - True Aim +]-- ruof Верная цель	20.04.2026
		-- ["loc_talent_psyker_weakspot_grants_crit"] = {
			-- ["zh-tw"] = "精確瞄準",
		-- },
		--[+ PASSIVE 32 - Surety of Arms +]-- ruof Верность оружия	20.04.2026
		["loc_talent_psyker_reload_speed_warp"] = {
			ru = "Варп в залог",
			-- ["zh-tw"] = "武器在手，信心我有。",
		},


--[+ ++ZEALOT - ИЗУВЕР++ +]--
	--[+ +BLITZ - БЛИЦ+ +]--
		--[+ BLITZ 0 - Stun Grenade +]-- ruof Оглушающая граната	20.04.2026
		-- ["loc_ability_shock_grenade"] = {
			-- ["zh-tw"] = "眩暈手雷",
		-- },
		--[+ BLITZ 1 - Stunstorm Grenade +]-- ruof Граната шквального оглушения	20.04.2026
		["loc_zealot_improved_stun_grenade"] = {
			ru = "Оглушающе-штурмовая граната",
			-- ["zh-tw"] = "眩暈風暴手雷",
		},
		--[+ BLITZ 2 - Immolation Grenade +]-- ruof Жертвенная граната	20.04.2026
		["loc_talent_ability_fire_grenade"] = {
			ru = "Огненная граната",
			-- ["zh-tw"] = "獻祭手雷",
		},
		--[+ BLITZ 3 - Blades of Faith +]-- ruof Клинки веры	20.04.2026
		-- ["loc_ability_zealot_throwing_knifes"] = {
			-- ["zh-tw"] = "信仰之刃",
		-- },
	--[+ +AURA+ +]--
		--[+ AURA 0 - The Emperors's Will +]-- ruof Воля Императора	20.04.2026
		-- ["loc_talent_zealot_2_base_3"] = {
			-- ["zh-tw"] = "帝皇之諭",
		-- },
		--[+ AURA 1 - Benediction +]-- ruof Благословение	20.04.2026
		-- ["loc_talent_zealot_aura_efficiency"] = {
			-- ["zh-tw"] = "恩賜",
		-- },
		--[+ AURA 2 - Beacon of Purity +]-- ruof Маяк непорочности	20.04.2026
		["loc_talent_zealot_corruption_healing_coherency_improved"] = {
			ru = "Маяк очищения",
			-- ["zh-tw"] = "純潔信標",
		},
		--[+ AURA 3 - Loner +]-- ruof Одиночка	20.04.2026
		["loc_talent_zealot_always_in_coherency"] = {
			ru = "Единоличник",
			-- ["zh-tw"] = "孤狼",
		},
	--[+ +ABILITIES+ +]--
		--[+ ABILITY 0 - Chastise the Wicked +]-- ruof Кара для нечестивых	20.04.2026
		-- ["loc_talent_zealot_2_combat"] = {
			-- ["zh-tw"] = "懲奸除惡",
		-- },
		--[+ ABILITY 1 - Fury of the Faithful +]-- ruof Ударный страх	20.04.2026
		["loc_talent_maniac_attack_speed_after_dash"] = {
			ru = "Ярость верующего",
			-- ["zh-tw"] = "有信者之怒",
		},
		--[+ ABILITY 1-1 - Redoubled Zeal +]-- ruof Удвоенное рвение	20.04.2026
		-- ["loc_talent_zealot_dash_has_more_charges"] = {
			-- ["zh-tw"] = "倍增狂熱",
		-- },
		--[+ ABILITY 1-2 - Invocation of Death +]-- ruof Призыв смерти	20.04.2026
		-- ["loc_talent_maniac_cooldown_on_melee_crits"] = {
			-- ["zh-tw"] = "死亡禱文",
		-- },
		--[+ ABILITY 2 - Chorus of Spiritual Fortitude +]-- ruof Хор духовной стойкости	20.04.2026
		-- ["loc_talent_zealot_bolstering_prayer"] = {
			-- ["zh-tw"] = "不屈靈魂合唱",
		-- },
		--[+ ABILITY 2-1 - Holy Cause +]-- ruof Святое дело	20.04.2026
		-- ["loc_talent_zealot_zealot_channel_grants_defensive_buff"] = {
			-- ["zh-tw"] = "神聖事業",
		-- },
		--[+ ABILITY 2-2 - Banishing Light +]-- ruof Изгоняющий свет	20.04.2026
		-- ["loc_talent_zealot_channel_staggers"] = {
			-- ["zh-tw"] = "放逐之光",
		-- },
		--[+ ABILITY 2-3 - Ecclesiarch's Call +]-- ruof Вызов экклезиарха	20.04.2026
		["loc_talent_zealot_zealot_channel_grants_offensive_buff"] = {
			ru = "Призыв экклезиарха",
			-- ["zh-tw"] = "教宗之喚",
		},
		--[+ ABILITY 2-4 - Martyr's Purpose +]-- ruof Цель мученика	20.04.2026
		["loc_talent_zealot_damage_taken_restores_cd"] = {
			ru = "Предназначение мученика",
			-- ["zh-tw"] = "殉道者之願",
		},
		--[+ ABILITY 3 - Shroudfield +]-- ruof Покров	20.04.2026
		-- ["loc_ability_zealot_stealth"] = {
			-- ["zh-tw"] = "隱秘領域",
		-- },
		--[+ ABILITY 3-1 - Master-Crafted Shroudfield +]-- ruof Искусно изготовленный покров	20.04.2026
		["loc_talent_zealot_increased_stealth_duration"] = {
			ru = "Мастерский покров",
			-- ["zh-tw"] = "大師級隱秘領域",
		},
		--[+ ABILITY 3-2 - Perfectionist +]-- ruof Перфекционист	20.04.2026
		-- ["loc_talent_zealot_stealth_increased_damage"] = {
			-- ["zh-tw"] = "完美主義者",
		-- },
		--[+ ABILITY 3-3 - Invigorating Revelation +]-- ruof Подбадривающее откровение	20.04.2026
		["loc_talent_zealot_leaving_stealth_restores_toughness"] = {
			ru = "Оживляющее откровение",
			-- ["zh-tw"] = "振奮啟示",
		},
		--[+ ABILITY 3-4 - Pious Cut-Throat +]-- ruof Добродетельный головорез	20.04.2026
		["loc_talent_zealot_backstab_kills_restore_cd"] = {
			ru = "Благочестивый головорез",
			-- ["zh-tw"] = "虔誠刺客",
		},
	--[+ +KEYSTONES - КЛЮЧЕВЫЕ ТАЛАНТЫ+ +]--
		--[+ KEYSTONE 1 - Blazing Piety +]-- ruof Пламенное благочестие	20.04.2026
		["loc_talent_zealot_fanatic_rage"] = {
			ru = "Пылающая благочестивость",
			-- ["zh-tw"] = "熾熱虔誠",
		},
		--[+ KEYSTONE 1-1 - Stalwart +]-- ruof Верный последователь	20.04.2026
		["loc_talent_zealot_fanatic_rage_toughness"] = {
			ru = "Непоколебимый",
			-- ["zh-tw"] = "忠誠",
		},
		--[+ KEYSTONE 1-2 - Fury Rising +]-- ruof Подъем ярости	20.04.2026
		["loc_talent_zealot_fanatic_rage_crits"] = {
			ru = "Возрастание ярости",
			-- ["zh-tw"] = "怒火升騰",
		},
		--[+ KEYSTONE 1-3 - Infectious Zeal +]-- ruof Заразительное рвение	20.04.2026
		-- ["loc_talent_zealot_shared_fanatic_rage"] = {
			-- ["zh-tw"] = "迅疾狂熱",
		-- },
		--[+ KEYSTONE 1-4 - Righteous Warrior +]-- ruof Праведный воин	20.04.2026
		-- ["loc_talent_zealot_fanatic_rage_improved"] = {
			-- ["zh-tw"] = "正義勇士",
		-- },
		--[+ KEYSTONE 2 - Martyrdom +]-- ruof Мученичество	20.04.2026
		-- ["loc_talent_zealot_martyrdom"] = {
			-- ["zh-tw"] = "殉道",
		-- },
		--[+ KEYSTONE 2-1 - I Shall Not Fall +]-- ruof Я не отступлю	20.04.2026
		["loc_talent_zealot_martyrdom_grants_toughness"] = {
			ru = "Я не паду",
			-- ["zh-tw"] = "不滅意志",
		},
		--[+ KEYSTONE 2-2 - Maniac +]-- ruof Маньяк	20.04.2026
		-- ["loc_talent_zealot_attack_speed_per_martyrdom"] = {
			-- ["zh-tw"] = "狂燥之心",
		-- },
		--[+ KEYSTONE 3 - Inexorable Judgement +]-- ruof Безжалостный приговор	20.04.2026
		["loc_talent_zealot_quickness"] = {
			ru = "Неумолимый приговор",
			-- ["zh-tw"] = "命定審判",
		},
		--[+ KEYSTONE 3-1 - Retributor's Stance +]-- ruof Стойка карателя	20.04.2026
		-- ["loc_talent_zealot_quickness_toughness_per_stack"] = {
			-- ["zh-tw"] = "懲戒者姿態",
		-- },
		--[+ KEYSTONE 3-2 - Inebriate's Poise +]-- ruof Самообладание пьяницы	20.04.2026
		["loc_talent_zealot_quickness_dodge_stacks"] = {
			ru = "Грация пьяницы",
			-- ["zh-tw"] = "飄忽身形",
		},
	--[+ +PASSIVES+ +]--
		--[+ PASSIVE 1 - Disdain +]-- ruof Презрение	20.04.2026
		-- ["loc_talent_zealot_3_tier_2_ability_1"] = {
			-- ["zh-tw"] = "蔑視",
		-- },
		--[+ PASSIVE 2 - Backstabber +]-- ruof Бьющий в спину	20.04.2026
		-- ["loc_talent_zealot_increased_backstab_damage"] = {
			-- ["zh-tw"] = "背刺者",
		-- },
		--[+ PASSIVE 3 - Anoint in Blood +]-- ruof Помазанный кровью	20.04.2026
		["loc_talent_zealot_ranged_damage_increased_to_close"] = {
			ru = "Помазанный кровью",
			-- ["zh-tw"] = "鮮血受膏",
		},
		--[+ PASSIVE 4 - Scourge +]-- ruof Бич	20.04.2026
		["loc_talent_zealot_bleed_melee_crit_chance"] = {
			ru = "Бичевание",
			-- ["zh-tw"] = "天災",
		},
		--[+ PASSIVE 5 - Enemies Within, Enemies Without +]-- ruof Не дай ему уйти	20.04.2026
		["loc_talent_zealot_toughness_regen_in_melee"] = {
			ru = "Враги внутри, враги снаружи",
			-- ["zh-tw"] = "內憂外患",
		},
		--[+ PASSIVE 6 - Fortitude in Fellowship +]-- ruof Стойкость в общении	20.04.2026
		["loc_talent_zealot_increased_coherency_regen"] = {
			ru = "Стойкость в товариществе",
			-- ["zh-tw"] = "合抱成林",
		},
		--[+ PASSIVE 7 - Purge the Unclean +]-- ruof Очищение нечистых	20.04.2026
		["loc_talent_zealot_3_passive_2"] = {
			ru = "Очищение нечестивых",
			-- ["zh-tw"] = "淨化不潔",
		},
		--[+ PASSIVE 8 - Blood Redemption +]-- ruof Кровавое искупление	20.04.2026
		-- ["loc_talent_zealot_toughness_on_melee_kill"] = {
			-- ru = "Искупление кровью",
			-- ["zh-tw"] = "鮮血救贖",
		-- },
		--[+ PASSIVE 9 - Bleed for the Emperor +]-- ruof Кровь во имя Императора	20.04.2026
		["loc_talent_zealot_3_tier_3_ability_2"] = {
			ru = "Кровь за Императора",
			-- ["zh-tw"] = "為了帝皇",
		},
		--[+ PASSIVE 10 - Vicious Offering +]-- ruof Порочное подношение	20.04.2026
		["loc_talent_zealot_toughness_on_heavy_kills"] = {
			ru = "Жертвоприношение",
			-- ["zh-tw"] = "惡毒贈禮",
		},
		--[+ PASSIVE 11 - The Voice of Terra +]-- ruof Голос Терры	20.04.2026
		-- ["loc_talent_zealot_toughness_on_ranged_kill"] = {
			-- ["zh-tw"] = "泰拉之音",
		-- },
		--[+ PASSIVE 12 - Restoring Faith +]-- ruof Восстановление веры	20.04.2026
		-- ["loc_talent_zealot_heal_damage_taken"] = {
			-- ["zh-tw"] = "恢復信仰",
		-- },
		--[+ PASSIVE 13 - Second Wind +]-- ruof Второй ветер	20.04.2026
		["loc_talent_zealot_toughness_on_dodge"] = {
			ru = "Второе дыхание",
			-- ["zh-tw"] = "精力復甦",
		},
		--[+ PASSIVE 14 - Enduring Faith +]-- ruof Непоколебимая вера	20.04.2026
		-- ["loc_talent_zealot_toughness_melee_effectiveness"] = {
			-- ["zh-tw"] = "堅韌信仰",
		-- },
		--[+ PASSIVE 15 - The Emperor's Bullet +]-- ruof Пуля Императора	20.04.2026
		-- ["loc_talent_zealot_improved_melee_after_no_ammo"] = {
			-- ["zh-tw"] = "帝皇之彈",
		-- },
		--[+ PASSIVE 16 - Dance of Death +]-- ruof Танец смерти	20.04.2026
		-- ["loc_talent_zealot_improved_spread_post_dodge"] = {
			-- ["zh-tw"] = "死亡之舞",
		-- },
		--[+ PASSIVE 17 - Duellist +]-- ruof Дуэлянт	20.04.2026
		-- ["loc_talent_zealot_increased_finesse_post_dodge"] = {
			-- ["zh-tw"] = "決鬥者",
		-- },
		--[+ PASSIVE 18 - Until Death +]-- ruof До самой смерти	20.04.2026
		-- ["loc_talent_zealot_resist_death"] = {
			-- ["zh-tw"] = "死戰到底",
		-- },
		--[+ PASSIVE 19 - Unremitting +]-- ruof Неустанный	20.04.2026
		-- ["loc_talent_zealot_reduced_sprint_cost"] = {
			-- ["zh-tw"] = "堅持不懈",
		-- },
		--[+ PASSIVE 20 - Shield of Contempt +]-- ruof Щит презрения	20.04.2026
		-- ["loc_talent_zealot_3_tier_4_ability_3"] = {
			-- ["zh-tw"] = "輕蔑之盾",
		-- },
		--[+ PASSIVE 21 - Thy Wrath be Swift +]-- ruof Скорое возмездие	20.04.2026
		["loc_talent_zealot_movement_speed_on_damaged"] = {
			ru = "Твой гнев будет быстр",
			-- ["zh-tw"] = "勃然大怒",
		},
		--[+ PASSIVE 22 - Good Balance +]-- ruof Разумный баланс	20.04.2026
		["loc_talent_reduced_damage_after_dodge"] = {
			ru = "Хороший баланс",
			-- ["zh-tw"] = "四平八穩",
		},
		--[+ PASSIVE 23 - Desperation +]-- ruof Отчаяние	20.04.2026
		-- ["loc_talent_zealot_increased_damage_on_low_stamina"] = {
			-- ["zh-tw"] = "背水一戰",
		-- },
		--[+ PASSIVE 24 - Holy Revenant +]-- ruof Священный призрак	20.04.2026
		["loc_talent_zealot_heal_during_resist_death"] = {
			ru = "Святой призрак",
			-- ["zh-tw"] = "吊命聖徒",
		},
		--[+ PASSIVE 25 - Sainted Gunslinger +]-- ruof Святой быстрый стрелок	20.04.2026
		["loc_talent_zealot_increased_reload_speed_on_melee_kills"] = {
			ru = "Святой стрелок",
			-- ["zh-tw"] = "封聖神射手",
		},
		--[+ PASSIVE 26 - Hammer of Faith +]-- ruof Молот веры	20.04.2026
		-- ["loc_talent_zealot_3_tier_1_ability_1"] = {
			-- ["zh-tw"] = "信仰之錘",
		-- },
		--[+ PASSIVE 27 - Grievous Wounds +]-- ruof Опасные раны	20.04.2026
		["loc_talent_zealot_increased_stagger_on_weakspot_melee"] = {
			ru = "Тяжёлые раны",
			-- ["zh-tw"] = "重傷",
		},
		--[+ PASSIVE 28 - Ambuscade +]-- ruof Засада	20.04.2026
		-- ["loc_talent_zealot_increased_flanking_damage"] = {
			-- ["zh-tw"] = "伏擊",
		-- },
		--[+ PASSIVE 29 - Punishment +]-- ruof Наказание	20.04.2026
		-- ["loc_talent_zealot_multi_hits_increase_impact"] = {
			-- ["zh-tw"] = "懲罰",
		-- },
		--[+ PASSIVE 30 - Faithful Frenzy +]-- ruof Верное безумие	20.04.2026
		["loc_talent_zealot_attack_speed"] = {
			ru = "Правоверное неистовство",
			-- ["zh-tw"] = "信仰狂亂",
		},
		--[+ PASSIVE 31 - Sustained Assault +]-- ruof Непрерывный штурм	20.04.2026
		["loc_talent_zealot_increased_damage_stacks_on_hit"] = {
			ru = "Непрерывное нападение",
			-- ["zh-tw"] = "持續突擊",
		},
		--[+ PASSIVE 32 - The Master's Retribution +]-- ruof Возмездие Владыки	20.04.2026
		-- ["loc_talent_zealot_3_tier_3_ability_1"] = {
			-- ["zh-tw"] = "大師的反擊",
		-- },
		--[+ PASSIVE 33 - Faith's Fortitude +]-- ruof Стойкость веры	20.04.2026
		-- ["loc_talent_zealot_3_tier_1_ability_3"] = {
			-- ["zh-tw"] = "信仰的堅韌",
		-- },
		--[+ PASSIVE 34 - Swift Certainty +]-- ruof Скорая определенность	20.04.2026
		["loc_talent_zealot_improved_sprint"] = {
			ru = "Быстрая уверенность",
			-- ["zh-tw"] = "堅定迅捷",
		},


--[+ ++VETERAN - ВЕТЕРАН - 老兵 ++ +]--
	--[+ +BLITZ - БЛИЦ - 閃擊 + +]--
		--[+ BLITZ 0 - Frag Grenade +]-- ruof Фраг-граната	20.04.2026
		-- ["loc_ability_frag_grenade"] = {
			-- ["zh-tw"] = "碎片手雷",
		-- },
		--[+ BLITZ 1 - Shredder Frag Grenade +]-- ruof Фраг-граната крошителя	20.04.2026
		["loc_talent_veteran_grenade_apply_bleed"] = {
			ru = "Крошащая фраг-граната",
			-- ["zh-tw"] = "粉碎者破片手雷",
		},
		--[+ BLITZ 2 - Krak Grenade +]-- ruof Крак-граната	20.04.2026
		-- ["loc_talent_ability_krak_grenade"] = {
			-- ["zh-tw"] = "穿甲手雷",
		-- },
		--[+ BLITZ 3 - Smoke Grenade +]-- ruof Дымовая граната	20.04.2026
		-- ["loc_ability_smoke_grenade"] = {
			-- ["zh-tw"] = "煙霧手雷",
		-- },
	--[+ +AURA+ +]--
		--[+ AURA 0 - Scavenger +]-- ruof Собиратель	20.04.2026
		["loc_talent_veteran_elite_kills_grant_ammo_coop"] = {
			ru = "Сборщик",
			-- ["zh-tw"] = "拾荒者",
		},
		--[+ AURA 1 - Survivalist +]-- ruof Специалист по выживанию	20.04.2026
		["loc_talent_veteran_elite_kills_grant_ammo_coop_improved"] = {
			ru = "Выживальщик",
			-- ["zh-tw"] = "生存專家",
		},
		--[+ AURA 2 - Fire Team +]-- ruof Огневая группа	20.04.2026
		-- ["loc_talent_veteran_damage_coherency"] = {
			-- ["zh-tw"] = "火力小分隊",
		-- },
		--[+ AURA 3 - Close and Kill +]-- ruof Приблизиться и убить	20.04.2026
		-- ["loc_talent_veteran_movement_speed_coherency"] = {
			-- ["zh-tw"] = "抵近殺敵",
		-- },
	--[+ +ABILITIES+ +]--
		--[+ ABILITY 0 - Volley Fire +]-- ruof Залповый огонь	20.04.2026
		-- ["loc_talent_veteran_2_combat_ability"] = {
			-- ["zh-tw"] = "火力齊射",
		-- },
		--[+ ABILITY 1 - Executioner's Stance +]-- ruof Стойка палача	20.04.2026
		-- ["loc_talent_veteran_combat_ability_elite_and_special_outlines"] = {
			-- ["zh-tw"] = "處決者姿態",
		-- },
		--[+ ABILITY 1-1 - Enhanced Target Priority +]-- ruof Повышенный приоритет цели	20.04.2026
		["loc_talent_veteran_combat_ability_coherency_outlines"] = {
			ru = "Повышенный приоритет целей",
			-- ["zh-tw"] = "目標引導增強",
		},
		--[+ ABILITY 1-2 - Counter-Fire +]-- ruof Ответный огонь	20.04.2026
		-- ["loc_talent_veteran_combat_ability_ranged_enemies_outlines"] = {
			-- ["zh-tw"] = "火力反擊",
		-- },
		--[+ ABILITY 1-3 - The Bigger they Are... +]-- ruof Чем больше шкаф...	20.04.2026
		-- ["loc_talent_ranger_volley_fire_big_game_hunter"] = {
			-- ["zh-tw"] = "敵人越大...",
		-- },
		--[+ ABILITY 1-4 - Marksman +]-- ruof Меткий стрелок	20.04.2026
		-- ["loc_talent_veteran_ability_marksman"] = {
			-- ["zh-tw"] = "鷹眼",
		-- },
		--[+ ABILITY 2 - Voice of Command +]-- ruof Командный голос	20.04.2026
		-- ["loc_talent_veteran_combat_ability_stagger_nearby_enemies"] = {
			-- ["zh-tw"] = "發號施令",
		-- },
		--[+ ABILITY 2-1 - Duty and Honour +]-- ruof Долг и честь	20.04.2026
		-- ["loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency"] = {
			-- ["zh-tw"] = "責任與榮譽",
		-- },
		--[+ ABILITY 2-2 - Only In Death Does Duty End +]-- ruof Лишь после смерти заканчивается служение долгу	20.04.2026
		["loc_talent_veteran_combat_ability_revives"] = {
			ru = "Только смертью заканчивается долг",
			-- ["zh-tw"] = "只有死亡，職責才會終結",
		},
		--[+ ABILITY 2-3 - For the Emperor! +]-- ruof За Императора!	20.04.2026
		-- ["loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency"] = {
			-- ["zh-tw"] = "為了皇帝！",
		-- },
		--[+ ABILITY 3 - Infiltrate +]-- ruof Проникновение	20.04.2026
		-- ["loc_talent_veteran_invisibility_on_combat_ability"] = {
			-- ["zh-tw"] = "滲透",
		-- },
		--[+ ABILITY 3-1 - Low Profile +]-- ruof Сдержанность	20.04.2026
		["loc_talent_veteran_reduced_threat_after_combat_ability"] = {
			ru = "Незаметность",
			-- ["zh-tw"] = "低調",
		},
		--[+ ABILITY 3-2 - Overwatch +]-- ruof Прикрытие	20.04.2026
		["loc_talent_veteran_combat_ability_extra_charge"] = {
			ru = "Наблюдение",
			-- ["zh-tw"] = "掩護射擊",
		},
		--[+ ABILITY 3-3 - Hunter's Resolve +]-- ruof Упорство охотника	20.04.2026
		-- ["loc_talent_veteran_toughness_bonus_leaving_invisibility"] = {
			-- ["zh-tw"] = "獵手決意",
		-- },
		--[+ ABILITY 3-4 - Surprise Attack +]-- ruof Внезапная атака	20.04.2026
		-- ["loc_talent_veteran_damage_bonus_leaving_invisibility"] = {
			-- ["zh-tw"] = "突襲",
		-- },
		--[+ ABILITY 3-5 - Close Quarters Killzone +]-- ruof Зона поражения на ближней дистанции	20.04.2026
		["loc_talent_veteran_ability_assault"] = {
			ru = "Зона ближнего боя",
			-- ["zh-tw"] = "肉搏戰",
		},
	--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
		--[+ KEYSTONE 1 - Marksman's Focus +]-- ruof Концентрация снайпера	20.04.2026
		-- ["loc_talent_veteran_snipers_focus"] = {
			-- ["zh-tw"] = "狙擊專注",
		-- },
		--[+ KEYSTONE 1-1 - Chink in their Armour +]-- ruof Щель в броне	20.04.2026
		["loc_talent_veteran_snipers_focus_rending_bonus"] = {
			ru = "Щель в их броне",
			-- ["zh-tw"] = "滲透盔甲",
		},
		--[+ KEYSTONE 1-2 - Tunnel Vision +]-- ruof Тоннельное зрение	20.04.2026
		-- ["loc_talent_veteran_snipers_focus_toughness_bonus"] = {
			-- ["zh-tw"] = "視野狹窄",
		-- },
		--[+ KEYSTONE 1-3 - Long Range Assassin +]-- ruof Дальнобойный ассасин	20.04.2026
		-- ["loc_talent_veteran_snipers_focus_increased_stacks"] = {
			-- ["zh-tw"] = "遠程刺客",
		-- },
		--[+ KEYSTONE 1-4 - Camouflage +]-- ruof Камуфляж	20.04.2026
		-- ["loc_talent_veteran_snipers_focus_stacks_on_still"] = {
			-- ["zh-tw"] = "偽裝",
		-- },
		--[+ KEYSTONE 2 - Focus Target! +]-- ruof Важная цель!	20.04.2026
		-- ["loc_talent_veteran_improved_tag"] = {
			-- ["zh-tw"] = "鎖定目標",
		-- },
		--[+ KEYSTONE 2-1 - Target Down! +]-- ruof Цель поражена!	20.04.2026
		-- ["loc_talent_veteran_improved_tag_dead_bonus"] = {
			-- ["zh-tw"] = "目標擊倒！",
		-- },
		--[+ KEYSTONE 2-2 - Redirect Fire! +]-- ruof Перевести огонь!	20.04.2026
		-- ["loc_talent_veteran_improved_tag_dead_coherency_bonus"] = {
			-- ["zh-tw"] = "轉移火力！",
		-- },
		--[+ KEYSTONE 2-3 - Focused Fire +]-- ruof Сосредоточенный огонь	20.04.2026
		-- ["loc_talent_veteran_improved_tag_more_damage"] = {
			-- ["zh-tw"] = "集中火力",
		-- },
		--[+ KEYSTONE 3 - Weapons Specialist +]-- ruof Специалист по вооружениям	20.04.2026
		["loc_talent_veteran_weapon_switch"] = {
			ru = "Специалист по оружию",
			-- ["zh-tw"] = "武器專家",
		},
		--[+ KEYSTONE 3-1 - Always Prepared +]-- ruof Всегда готов	20.04.2026
		-- ["loc_talent_veteran_weapon_switch_replenish_ammo"] = {
			-- ["zh-tw"] = "有備無患",
		-- },
		--[+ KEYSTONE 3-2 - Invigorated +]-- ruof Ободрение	20.04.2026
		-- ["loc_talent_veteran_weapon_switch_replenish_stamina"] = {
			-- ["zh-tw"] = "活力煥發",
		-- },
		--[+ KEYSTONE 3-3 - On Your Toes +]-- ruof Наготове	20.04.2026
		-- ["loc_talent_veteran_weapon_switch_replenish_toughness"] = {
			-- ["zh-tw"] = "時刻警覺",
		-- },
		--[+ KEYSTONE 3-4 - Fleeting Fire +]-- ruof Беглый огонь	20.04.2026
		-- ["loc_talent_veteran_weapon_switch_reload_speed"] = {
			-- ["zh-tw"] = "集火",
		-- },
		--[+ KEYSTONE 3-5 - Conditioning +]-- ruof Подготовка	20.04.2026
		["loc_talent_veteran_weapon_switch_stamina_reduction"] = {
			ru = "Кондиционирование",
			-- ["zh-tw"] = "身體調節",
		},
	--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
		--[+ PASSIVE 1 - Longshot +]-- ruof Далекая перспектива	20.04.2026
		["loc_talent_veteran_increased_damage_based_on_range"] = {
			ru = "Дальний выстрел",
			-- ["zh-tw"] = "遠射",
		},
		--[+ PASSIVE 2 - Close Order Drill +]-- ruof Строевая подготовка	20.04.2026
		-- ["loc_talent_veteran_toughness_damage_reduction_per_ally"] = {
			-- ["zh-tw"] = "密集隊形訓練",
		-- },
		--[+ PASSIVE 3 - One Motion +]-- ruof Одно движение	20.04.2026
		["loc_talent_veteran_reduce_swap_time"] = {
			ru = "В одно движение",
			-- ["zh-tw"] = "行雲流水",
		},
		--[+ PASSIVE 4 - Exhilarating Takedown +]-- ruof Бодрящее сокрушение	20.04.2026
		["loc_talent_veteran_toughness_on_weakspot_kill"] = {
			ru = "Подбадривающее убийство",
			-- ["zh-tw"] = "振奮擊倒",
		},
		--[+ PASSIVE 5 - Volley Adept +]-- ruof Адепт залпа	20.04.2026
		-- ["loc_talent_veteran_reload_speed_on_elite_kill"] = {
			-- ru = "Умелый залп",
			-- ["zh-tw"] = "齊射能手",
		-- },
		--[+ PASSIVE 6 - Charismatic +]-- ruof Обаятельный	20.04.2026
		["loc_talent_veteran_increased_aura_radius"] = {
			ru = "Харизматичный",
			-- ["zh-tw"] = "超凡魅力",
		},
		--[+ PASSIVE 7 - Confirmed Kill +]-- ruof Подтвержденное убийство	20.04.2026
		["loc_talent_veteran_toughness_on_elite_kill"] = {
			ru = "Подтверждённое убийство",
			-- ["zh-tw"] = "擊殺紀錄",
		},
		--[+ PASSIVE 8 - Tactical Reload +]-- ruof Тактическая перезарядка	20.04.2026
		["loc_talent_ranger_reload_speed_empty_mag"] = {
			ru = "Тактическая перезарядка",
			-- ["zh-tw"] = "戰術裝填",
		},
		--[+ PASSIVE 9 - Out for Blood +]-- ruof В поисках крови	20.04.2026
		["loc_talent_veteran_all_kills_replenish_toughness"] = {
			ru = "На тропе войны",
			-- ["zh-tw"] = "嗜血",
		},
		--[+ PASSIVE 10 - Get Back in the Fight! +]-- ruof Вернуться в бой!	20.04.2026
		["loc_talent_veteran_movement_speed_on_toughness_broken"] = {
			ru = "Возвращайся в бой!",
			-- ["zh-tw"] = "重投戰鬥！",
		},
		--[+ PASSIVE 11 - Catch a Breath +]-- ruof Передышка	20.04.2026
		["loc_talent_veteran_replenish_toughness_outside_melee"] = {
			ru = "Переведи дух",
			-- ["zh-tw"] = "喘息片刻",
		},
		--[+ PASSIVE 12 - Grenade Tinkerer +]-- ruof Любитель гранат	20.04.2026
		["loc_talent_veteran_improved_grenades"] = {
			ru = "Гранатный мастер",
			-- ["zh-tw"] = "手雷專家",
		},
		--[+ PASSIVE 13 - Covering Fire +]-- ruof Прикрытие огнем	20.04.2026
		["loc_talent_veteran_replenish_toughness_and_boost_allies"] = {
			ru = "Прикрывающий огонь",
			-- ["zh-tw"] = "火力掩護",
		},
		--[+ PASSIVE 14 - Serrated Blade +]-- ruof Зазубренное лезвие	20.04.2026
		["loc_talent_veteran_hits_cause_bleed"] = {
			ru = "Зазубренный клинок",
			-- ["zh-tw"] = "鋸齒刀刃",
		},
		--[+ PASSIVE 15 - Agile Engagement +]-- ruof Ловкое взаимодействие	20.04.2026
		["loc_talent_veteran_kill_grants_damage_to_other_slot"] = {
			ru = "Ловкое взаимодействие",
			-- ["zh-tw"] = "靈活接敵",
		},
		--[+ PASSIVE 16 - Kill Zone +]-- ruof Зона поражение	20.04.2026
		-- ["loc_talent_veteran_ranged_power_out_of_melee"] = {
			-- ["zh-tw"] = "殺戮地帶",
		-- },
		--[+ PASSIVE 17 - Opening Salvo +]-- ruof Открывающий залп	20.04.2026
		-- ["loc_talent_veteran_bonus_crit_chance_on_ammo"] = {
			-- ["zh-tw"] = "首輪齊射",
		-- },
		--[+ PASSIVE 18 - Field Improvisation +]-- ruof Полевая импровизация	20.04.2026
		-- ["loc_talent_veteran_better_deployables"] = {
			-- ["zh-tw"] = "臨場發揮",
		-- },
		--[+ PASSIVE 19 - Twinned Blast +]-- ruof Спаренный взрыв	20.04.2026
		["loc_talent_veteran_extra_grenade_throw_chance"] = {
			ru = "Двойной взрыв",
			-- ["zh-tw"] = "雙響炮",
		},
		--[+ PASSIVE 20 - Demolition Stockpile +]-- ruof Склад взрывчатки	20.04.2026
		-- ["loc_talent_ranger_replenish_grenade"] = {
			-- ["zh-tw"] = "炸藥儲備",
		-- },
		--[+ PASSIVE 21 - Grenadier +]-- ruof Гренадер	20.04.2026
		["loc_talent_veteran_extra_grenade"] = {
			ru = "Гренадёр",
			-- ["zh-tw"] = "擲彈兵",
		},
		--[+ PASSIVE 22 - Leave No One Behind +]-- ruof Никого не оставлять позади	20.04.2026
		-- ["loc_talent_veteran_movement_speed_towards_downed"] = {
			-- ["zh-tw"] = "不拋棄不放棄",
		-- },
		--[+ PASSIVE 23 - Precision Strikes +]-- ruof Точные удары	20.04.2026
		-- ["loc_talent_veteran_increased_weakspot_damage"] = {
			-- ["zh-tw"] = "精準打擊",
		-- },
		--[+ PASSIVE 24 - Determined +]-- ruof Решительность	20.04.2026
		-- ["loc_talent_veteran_supression_immunity"] = {
			-- ["zh-tw"] = "堅定不移",
		-- },
		--[+ PASSIVE 25 - Deadshot +]-- ruof Смертельный выстрел	20.04.2026
		-- ["loc_talent_ranged_ads_drains_stamina_boost"] = {
			-- ["zh-tw"] = "死亡射手",
		-- },
		--[+ PASSIVE 26 - Born Leader +]-- ruof Прирожденный лидер	20.04.2026
		["loc_talent_veteran_allies_share_toughness"] = {
			ru = "Прирождённый лидер",
			-- ["zh-tw"] = "天生領袖",
		},
		--[+ PASSIVE 27 - Keep Their Heads Down! +]-- ruof Пригнитесь!	20.04.2026
		["loc_talent_veteran_increase_suppression"] = {
			ru = "Не давай им поднять головы!",
			-- ["zh-tw"] = "讓他們全趴下",
		},
		--[+ PASSIVE 28 - Reciprocity +]-- ruof Взаимная выгода	20.04.2026
		["loc_talent_veteran_dodging_grants_crit"] = {
			ru = "Взаимообмен",
			-- ["zh-tw"] = "互惠互利",
		},
		--[+ PASSIVE 29 - Duck and Dive +]-- ruof Голову в песок	20.04.2026
		["loc_talent_ranger_stamina_on_ranged_dodge"] = {
			ru = "Пригнись и увернись",
			-- ["zh-tw"] = "靈活應對",
		},
		--[+ PASSIVE 30 - Fully Loaded +]-- ruof Полный заряд	20.04.2026
		["loc_talent_veteran_ammo_increase"] = {
			ru = "Полный запас",
			-- ["zh-tw"] = "全副武裝",
		},
		--[+ PASSIVE 31 - Tactical Awareness +]-- ruof Тактическая осведомленность	20.04.2026
		["loc_talent_veteran_elite_kills_reduce_cooldown"] = {
			ru = "Тактическая осведомлённость",
			-- ["zh-tw"] = "戰術意識",
		},
		--[+ PASSIVE 32 - Desperado +]-- ruof Сорвиголова	20.04.2026
		-- ["loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse"] = {
			-- ["zh-tw"] = "亡命之徒",
		-- },
		--[+ PASSIVE 33 - Shock Trooper +]-- ruof Штурмовик	20.04.2026
		-- ["loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit"] = {
			-- ["zh-tw"] = "突擊隊",
		-- },
		--[+ PASSIVE 34 - Superiority Complex +]-- ruof Мания величия	20.04.2026
		-- ["loc_talent_veteran_increase_damage_vs_elites"] = {
			-- ["zh-tw"] = "優越情結",
		-- },
		--[+ PASSIVE 35 - Iron Will +]-- ruof Железная воля	20.04.2026
		-- ["loc_talent_veteran_block_break_gives_tdr"] = {
			-- ["zh-tw"] = "鋼鐵意志",
		-- },
		--[+ PASSIVE 36 - Demolition Team +]-- ruof Группа подрыва	20.04.2026
		["loc_talent_ranger_grenade_on_elite_kills_coop"] = {
			ru = "Команда подрывников",
			-- ["zh-tw"] = "爆破小隊",
		},
		--[+ PASSIVE 37 - Exploit Weakness +]-- ruof Использование слабостей	20.04.2026
		-- ["loc_talent_veteran_crits_rend"] = {
			-- ["zh-tw"] = "趁火打劫",
		-- },
		--[+ PASSIVE 38 - Onslaught +]-- ruof Натиск	20.04.2026
		-- ["loc_talent_veteran_continous_hits_apply_rending"] = {
			-- ["zh-tw"] = "猛攻",
		-- },
		--[+ PASSIVE 39 - Trench Fighter Drill +]-- ruof Тренировка в окопах	20.04.2026
		["loc_talent_veteran_attack_speed"] = {
			ru = "Окопные тренировки",
			-- ["zh-tw"] = "戰壕兵訓練",
		},
		--[+ PASSIVE 40 - Skirmisher +]-- ruof Застрельщик	20.04.2026
		-- ["loc_talent_veteran_damage_damage_after_sprinting"] = {
			-- ["zh-tw"] = "遊擊者",
		-- },
		--[+ PASSIVE 41 - Competitive Urge +]-- ruof Состязательный мотив	20.04.2026
		["loc_talent_veteran_ally_kills_increase_damage"] = {
			ru = "Соревновательный инстинкт",
			-- ["zh-tw"] = "求勝心",
		},
		--[+ PASSIVE 42 - Rending Strikes +]-- ruof Разрушительные удары	20.04.2026
		["loc_talent_veteran_rending_bonus"] = {
			ru = "Пробивающие удары",
			-- ["zh-tw"] = "裂擊",
		},
		--[+ PASSIVE 43 - Bring it Down! +]-- ruof Убивай!	20.04.2026
		["loc_talent_veteran_big_game_hunter"] = {
			ru = "Убей их!",
			-- ["zh-tw"] = "幹掉它!",
		},


--[+ ++OGRYN - ОГРИН - 歐格林 ++ +]--
	--[+ +BLITZ - БЛИЦ+ +]--
		--[+ BLITZ 0 - Big Box of Hurt +]-- ruof Ящик, полный боли
		["loc_ability_ogryn_grenade_box"] = {
			ru = "Большая коробка боли",
			-- ["zh-tw"] = "巨量傷害盒",
		},
		--[+ BLITZ 1 - Big Friendly Rock +]-- ruof Большой дружелюбный валун
		-- ["loc_ability_ogryn_friend_rock"] = {
			-- ["zh-tw"] = "投石問路",
		-- },
		--[+ BLITZ 2 - Bombs Away! +]-- ruof Кидаю бомбу!
		["loc_talent_bonebreaker_grenade_super_armor_explosion"] = {
			ru = "Бросай бомбы!",
			-- ["zh-tw"] = "投彈完畢!",
		},
		--[+ BLITZ 3 - Frag Bomb +]-- ruof Осколочная бомба
		["loc_ability_ogryn_grenade_demolition"] = {
			ru = "Фраг-бомба",
			-- ["zh-tw"] = "破片炸彈",
		},
	--[+ +AURA - АУРА+ +]--
		--[+ AURA 0 - Intimidating Presence +]-- ruof Пугающее присутствие
		["loc_talent_ogryn_2_base_4"] = {
			ru = "Устрашающее присутствие",
			-- ["zh-tw"] = "威嚇氣場",
		},
		--[+ AURA 1 - Bonebreaker's AURA +]-- ruof Аура костолома
		-- ["loc_talent_damage_aura"] = {
			-- ["zh-tw"] = "破骨者之環",
		-- },
		--[+ AURA 2 - Stay Close! +]-- ruof Не расходимся!
		["loc_talent_ogryn_toughness_regen_aura"] = {
			ru = "Держись рядом!",
			-- ["zh-tw"] = "跟緊我!",
		},
		--[+ AURA 3 - Coward Culling +]-- ruof Трусливые отбросы
		["loc_talent_ogryn_damage_vs_suppressed"] = {
			ru = "Отсев трусливых",
			-- ["zh-tw"] = "優勝劣汰",
		},
	--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
		--[+ ABILITY 0 - Bull Rush +]-- ruof Бычий натиск
		["loc_ability_ogryn_charge"] = {
			ru = "Рывок быка",
			-- ["zh-tw"] = "蠻牛衝撞",
		},
		--[+ ABILITY 1 - Indomitable +]-- ruof Неукротимость
		["loc_talent_ogryn_bull_rush_distance"] = {
			ru = "Неукротимый",
			-- ["zh-tw"] = "不屈不撓",
		},
		--[+ ABILITY 1-1 - Stomping Boots +]-- ruof Сокрушающий топот
		["loc_talent_ogryn_toughness_on_bull_rush"] = {
			ru = "Топающие сапоги",
			-- ["zh-tw"] = "跺殺之靴",
		},
		--[+ ABILITY 1-2 - Trample +]-- ruof Топанье
		["loc_talent_ogryn_ability_charge_trample"] = {
			ru = "Топот",
			-- ["zh-tw"] = "踐踏",
		},
		--[+ ABILITY 1-3 - Pulverise +]-- ruof Крошилово
		["loc_talent_ogryn_bleed_on_bull_rush"] = {
			ru = "Разбрызгивание",
			-- ["zh-tw"] = "粉碎",
		},
		--[+ ABILITY 2 - Loyal Protector +]-- ruof Верный защитник
		-- ["loc_ability_ogryn_taunt_shout"] = {
			-- ["zh-tw"] = "忠誠守護者",
		-- },
		--[+ ABILITY 2-1 - Valuable Distraction +]-- ruof Ценное отвлечение
		["loc_talent_ogryn_taunt_damage_taken_increase"] = {
			ru = "Отвлекающий манёвр",
			-- ["zh-tw"] = "重要干擾",
		},
		--[+ ABILITY 2-2 - Go Again +]-- ruof Еще раз!
		["loc_talent_ogryn_taunt_stagger_cd"] = {
			ru = "Давай по новой!",
			-- ["zh-tw"] = "再來!",
		},
		--[+ ABILITY 2-3 - Big Lungs +]-- ruof Мощные легкие
		-- ["loc_talent_ogryn_taunt_radius_increase"] = {
			-- ["zh-tw"] = "強力肺活",
		-- },
		--[+ ABILITY 3 - Point-Blank Barrage +]-- ruof Решительный натиск
		["loc_talent_ogryn_combat_ability_special_ammo"] = {
			ru = "Беспощадный обстрел в упор",
			-- ["zh-tw"] = "貼身火力",
		},
		--[+ ABILITY 3-1 - Bullet Bravado +]-- ruof Лихая пуля
		["loc_talent_ogryn_special_ammo_toughness"] = {
			ru = "Бравада стрелка",
			-- ["zh-tw"] = "壯膽子彈",
		},
		--[+ ABILITY 3-2 - Hail of Fire +]-- ruof Слава пламени
		["loc_talent_ogryn_special_ammo_armor_pen"] = {
			ru = "Град огня",
			-- ["zh-tw"] = "槍林彈雨",
		},
		--[+ ABILITY 3-3 - Light 'em Up +]-- ruof Зададим жару
		["loc_talent_ogryn_special_ammo_fire_shots"] = {
			ru = "Задай жару",
			-- ["zh-tw"] = "集火射擊",
		},
	--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
		--[+ KEYSTONE 1 - Heavy Hitter +]-- ruof Тяжеловес
		["loc_talent_ogryn_passive_heavy_hitter"] = {
			ru = "Тяжёлый нападающий",
			-- ["zh-tw"] = "重拳出擊",
		},
		--[+ KEYSTONE 1-1 - Just Getting Started +]-- ruof Лишь начало!
		["loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed"] = {
			ru = "Я только начал",
			-- ["zh-tw"] = "熱身完畢",
		},
		--[+ KEYSTONE 1-2 - Unstoppable +]-- ruof Неудержимость
		["loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness"] = {
			ru = "Неудержимый",
			-- ["zh-tw"] = "越戰越勇",
		},
		--[+ KEYSTONE 1-3 - Brutish Momentum +]-- ruof Зверский моментум
		["loc_talent_ogryn_heavy_hitter_light_attacks_refresh"] = {
			ru = "Брутальный моментум",
			-- ["zh-tw"] = "兇蠻打擊",
		},
		--[+ KEYSTONE 2 - Feel No Pain +]-- ruof Неболит
		["loc_talent_ogryn_carapace_armor"] = {
			ru = "Неболит",
			-- ["zh-tw"] = "麻木",
		},
		--[+ KEYSTONE 2-1 - Pained Outburst +]-- ruof Вспышка боли
		-- ["loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks"] = {
			-- ["zh-tw"] = "痛楚爆發",
		-- },
		--[+ KEYSTONE 2-2 - Strongest! +]-- ruof Сильнейший!
		-- ["loc_talent_ogryn_carapace_armor_add_stack_on_push"] = {
			-- ["zh-tw"] = "最強壯!",
		-- },
		--[+ KEYSTONE 2-3 - Toughest! +]-- ruof Самый выносливый!
		["loc_talent_ogryn_carapace_armor_more_toughness"] = {
			ru = "Стойкий!",
			-- ["zh-tw"] = "最堅韌!",
		},
		--[+ KEYSTONE 3 - Burst Limiter Override +]-- ruof Взлом ограничителя взрыва
		["loc_talent_ogryn_chance_to_not_consume_ammo"] = {
			ru = "Обход ограничителя очереди",
			-- ["zh-tw"] = "爆限超載",
		},
		--[+ KEYSTONE 3-1 - Maximum Firepower +]-- ruof Максимальная огневая мощь
		-- ["loc_talent_ogryn_leadbelcher_grant_cooldown_reduction"] = {
			-- ["zh-tw"] = "最大火力",
		-- },
		--[+ KEYSTONE 3-2 - Good Shootin' +]-- ruof Хороший выстрел
		["loc_talent_ogryn_critical_leadbelcher"] = {
			ru = "Хорошая стрельба",
			-- ["zh-tw"] = "好槍法",
		},
		--[+ KEYSTONE 3-3 - More Burst Limiter Overrides! +]-- ruof Больше взлома ограничителя взрыва!
		["loc_talent_ogryn_increased_leadbelcher_chance"] = {
			ru = "Ещё больший обход ограничителя очереди!",
			-- ["zh-tw"] = "爆限大超載!",
		},
	--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
		--[+ PASSIVE 1 - Furious +]-- ruof Разъяренный
		["loc_talent_ogryn_damage_per_enemy_hit_previous"] = {
			ru = "Разъярённый",
			-- ["zh-tw"] = "怒不可遏",
		},
		--[+ PASSIVE 2 - Reloaded and Ready +]-- ruof Заряжен и готов
		["loc_talent_ogryn_ranged_damage_on_reload"] = {
			ru = "Перезаряжен и готов",
			-- ["zh-tw"] = "換彈完畢",
		},
		--[+ PASSIVE 3 - The Best Defence +]-- ruof Лучшая защита
		-- ["loc_talent_ogryn_toughness_on_multiple"] = {
			-- ["zh-tw"] = "最好的防禦",
		-- },
		--[+ PASSIVE 4 - Heavyweight +]-- ruof Тяжеловес
		-- ["loc_talent_ogryn_ogryn_fighter"] = {
			-- ["zh-tw"] = "重量級",
		-- },
		--[+ PASSIVE 5 - Steady Grip +]-- ruof Крепкая хватка
		["loc_talent_ogryn_toughness_regen_while_bracing"] = {
			ru = "Крепкий хват",
			-- ["zh-tw"] = "穩固握持",
		},
		--[+ PASSIVE 6 - Smash 'Em! +]-- ruof Вдарь им!
		["loc_talent_ogryn_toughness_on_single_heavy"] = {
			ru = "Круши их!",
			-- ["zh-tw"] = "碾碎它們!",
		},
		--[+ PASSIVE 7 - Lynchpin +]-- ruof Переломный момент
		["loc_talent_ogryn_coherency_toughness_increase"] = {
			ru = "Опора",
			-- ["zh-tw"] = "關鍵人物",
		},
		--[+ PASSIVE 8 - Slam +]-- ruof Хлопок
		["loc_talent_ogryn_melee_stagger"] = {
			ru = "Оплеуха",
			-- ["zh-tw"] = "猛擊",
		},
		--[+ PASSIVE 9 - Soften Them Up +]-- ruof Упокоить их
		["loc_talent_ogryn_targets_recieve_damage_increase_debuff"] = {
			ru = "Ослабь их",
			-- ["zh-tw"] = "削弱敵人",
		},
		--[+ PASSIVE 10 - Crunch! +]-- ruof Хрясь!
		["loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger"] = {
			ru = "Хрусь!",
			-- ["zh-tw"] = "嘎嘎!",
		},
		--[+ PASSIVE 11 - Batter +]-- ruof Месиво
		-- ["loc_talent_ogryn_bleed_on_multiple_hit"] = {
			-- ["zh-tw"] = "重毆",
		-- },
		--[+ PASSIVE 12 - Pacemaker +]-- ruof Водитель ритма
		["loc_talent_ogryn_reload_speed_on_multiple_hits"] = {
			ru = "Задающий ритм",
			-- ["zh-tw"] = "領跑者",
		},
		--[+ PASSIVE 13 - Ammo Stash +]-- ruof Схрон патронов
		-- ["loc_talent_ogryn_increased_ammo"] = {
			-- ["zh-tw"] = "彈藥儲存包",
		-- },
		--[+ PASSIVE 14 - Hard Knocks +]-- ruof Мощные удары
		["loc_talent_ogryn_big_bully_heavy_hits"] = {
			ru = "Тяжёлые удары",
			-- ["zh-tw"] = "沉重打擊",
		},
		--[+ PASSIVE 15 - Too Stubborn to Die +]-- ruof Слишком упрям, чтобы умереть
		["loc_talent_ogryn_toughness_gain_increase_on_low_health"] = {
			ru = "Слишком упёртый, чтобы умереть",
			-- ["zh-tw"] = "堅韌不屈",
		},
		--[+ PASSIVE 16 - Delight in Destruction +]-- ruof Наслаждение разрушением
		["loc_talent_ogryn_damage_reduction_per_bleed"] = {
			ru = "Упоение в разрушении",
			-- ["zh-tw"] = "毀滅之樂",
		},
		--[+ PASSIVE 17 - Attention Seeker +]-- ruof Внимание искателя
		["loc_talent_ranged_enemies_taunt"] = {
			ru = "Провокатор",
			-- ["zh-tw"] = "渴求關注",
		},
		--[+ PASSIVE 18 - Get Stuck In +]-- ruof Очертя голову
		-- ["loc_talent_ogryn_bull_rush_movement_speed"] = {
			-- ["zh-tw"] = "全神貫注",
		-- },
		--[+ PASSIVE 19 - Towering Presence +]-- ruof Выдающееся присутствие
		["loc_talent_ogryn_bigger_coherency_radius"] = {
			ru = "Величественное присутствие",
			-- ["zh-tw"] = "卓越氣場",
		},
		--[+ PASSIVE 20 - Unstoppable Momentum +]-- ruof Неудержимый моментум
		["loc_talent_ogryn_ranged_kill_grant_movement_speed"] = {
			ru = "Неудержимый импульс",
			["zh-tw"] = "勢不可擋",
		},
		--[+ PASSIVE 21 - No Stopping Me! +]-- ruof Меня не остановить!
		-- ["loc_talent_ogryn_windup_is_uninterruptible"] = {
			-- ["zh-tw"] = "誰敢攔我!",
		-- },
		--[+ PASSIVE 22 - Dominate +]-- ruof Господство
		["loc_talent_ogryn_rending_on_elite_kills"] = {
			ru = "Доминируй",
			-- ["zh-tw"] = "主宰",
		},
		--[+ PASSIVE 23 - Payback Time +]-- ruof Время расплаты
		-- ["loc_talent_ogryn_revenge_damage"] = {
			-- ["zh-tw"] = "報復時間",
		-- },
		--[+ PASSIVE 24 - Bruiser +]-- ruof Бугай
		-- ["loc_talent_ogryn_cooldown_on_elite_kills"] = {
			-- ["zh-tw"] = "格鬥兵",
		-- },
		--[+ PASSIVE 25 - Big Boom +]-- ruof Большой бабах
		-- ["loc_talent_ogryn_increase_explosion_radius"] = {
			-- ["zh-tw"] = "大爆炸",
		-- },
		--[+ PASSIVE 26 - Massacre +]-- ruof Резня
		-- ["loc_talent_ogryn_crit_chance_on_kill"] = {
			-- ["zh-tw"] = "屠殺",
		-- },
		--[+ PASSIVE 27 - Implacable +]-- ruof Непоколебимый
		-- ["loc_talent_ogryn_windup_reduces_damage_taken"] = {
			-- ["zh-tw"] = "利刃出鞘",
		-- },
		--[+ PASSIVE 28 - No Pushover +]-- ruof Не слабак
		-- ["loc_talent_ogryn_blocking_reduces_push_cost"] = {
			-- ["zh-tw"] = "睚眥必報",
		-- },
		--[+ PASSIVE 29 - Won't Give In +]-- ruof Не сдамся
		-- ["loc_talent_ogryn_tanky_with_downed_allies"] = {
			-- ["zh-tw"] = "絕不屈服",
		-- },
		-- [+ PASSIVE 30 - Mobile Emplacement +]-- ruof Передвижной окоп
		["loc_talent_ogryn_bracing_reduces_damage_taken"] = {
			ru = "Мобильная огневая точка",
			-- ["zh-tw"] = "機動部屬",
		},


--[+ ++ARBITES - АРБИТЕС++ +]--
	--[+ +BLITZ - БЛИЦ+ +]--
		--[+ BLITZ 0 - Arbites Grenade +]-- ruof Граната Арбитрес
		["loc_talent_ability_adamant_grenade"] = {
			ru = "Граната арбитрес",
		},
		--[+ BLITZ 1 - Remote Detonation +]-- ruof Дистанционный подрыв
		-- ["loc_talent_ability_detonate"] = {
		-- },
		--[+ BLITZ 2 - Voltaic Shock Mine +]-- ruof Электрошоковая мина
		["loc_talent_ability_shock_mine"] = {
			ru = "Вольтаическая шоковая мина",
		},
		--[+ BLITZ 3 - Arbites Grenade Improved +]-- ruof Граната Арбитрес
		["loc_talent_ability_adamant_grenade_improved"] = {
			ru = "Граната арбитрес",
		},
	--[+ +AURA - АУРА+ +]--
		--[+ AURA 0-1 - Part of the Squad +]-- ruof Часть отряда
		-- ["loc_talent_adamant_companion_coherency"] = {
		-- },
		--[+ AURA 2 - Ruthless Efficiency +]-- ruof Беспощадная эффективность
		-- ["loc_talent_adamant_wield_speed_aura"] = {
		-- },
		--[+ AURA 3 - Breaking Dissent +]-- ruof Преодоление разногласий
		["loc_talent_adamant_damage_vs_staggered_aura"] = {
			ru = "Подавление инакомыслия",
		},
	--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
		--[+ ABILITY 0, 2 - Nuncio-Aquila +]-- ruof Нунцио-аквила
		-- ["loc_talent_ability_area_buff_drone"] = {
		-- },
		--[+ ABILITY 1 - Castigator's Stance +]-- ruof Стойка бичевателя
		["loc_talent_adamant_stance_ability_name"] = {
			ru = "Стойка карателя",
		},
		--[+ ABILITY 1-1 - Blessed Armament +]-- ruof Благословенное орудие
		["loc_talent_adamant_stance_ranged_kills_transfer_ammo"] = {
			ru = "Благословенное вооружение",
		},
		--[+ ABILITY 1-2 - Writ of Execution +]-- ruof Ордер на казнь
		-- ["loc_talent_adamant_stance_elite_kills_stack_damage"] = {
		-- },
		--[+ ABILITY 1-3 - Bloodlust +]-- ruof Жажда крови
		-- ["loc_talent_adamant_stance_bloodlust"] = {
		-- },
		--[+ ABILITY 2-1 - Inspiring Recitation +]-- ruof Вдохновляющая декламация
		["loc_talent_adamant_drone_buff_talent"] = {
			ru = "Воодушевляющая проповедь",
		},
		--[+ ABILITY 2-2 - Fear of Justice +]-- ruof Страх правосудия
		["loc_talent_adamant_drone_debuff_talent"] = {
			ru = "Страх перед Правосудием",
		},
		--[+ ABILITY 3 - Break the Line +]-- ruof Прорыв фронта
		["loc_talent_adamant_charge_ability_name"] = {
			ru = "Прорыв строя",
		},
		--[+ ABILITY 3-1 - Commendation from Condemnation +]-- ruof Не наказали - значит, похвалили
		["loc_talent_adamant_charge_toughness_name"] = {
			ru = "Похвала за осуждение",
		},
		--[+ ABILITY 3-2 - Targeted Brutality +]-- ruof Направленная жестокость
		-- ["loc_talent_adamant_charge_cooldown_name"] = {
		-- },
		--[+ ABILITY 3-3 - Kill Order +]-- ruof Приказ убивать
		["loc_talent_adamant_dog_damage_after_ability"] = {
			ru = "Фас!",
		},
		--[+ ABILITY 3-4 - Engage +]-- ruof К бою
		["loc_talent_adamant_charge_longer_distance"] = {
			ru = "Дальний прорыв",
		},
	--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
		--[+ KEYSTONE 1 - Unleashed Brutality +]-- ruof Высвобожденнная жестокость
		-- ["loc_talent_adamant_cyber_mastiff_elites"] = {
		-- },
		--[+ KEYSTONE 2 - Lone Wolf +]-- ruof Одинокий волк
		-- ["loc_talent_adamant_disable_companion"] = {
		-- },
		--[+ KEYSTONE 3 - Go Get 'Em! +]-- ruof Взять их!
		-- ["loc_talent_adamant_cyber_mastiff_ranged"] = {
		-- },
		--[+ KEYSTONE 4 - Execution Order +]-- ruof Приказ казнить
		["loc_talent_adamant_exterminator"] = {
			ru = "Метка возмездия",
		},
		--[+ KEYSTONE 4-1 - Efficient Killer +]-- ruof Эффективный убийца
		-- ["loc_talent_adamant_exterminator_toughness"] = {
		-- },
		--[+ KEYSTONE 4-2 - Malocator +]-- ruof Малокатор
		-- ["loc_talent_adamant_exterminator_ability_cooldown"] = {
		-- },
		--[+ KEYSTONE 4-3 - No Lenience +]-- ruof Нетерпимость
		-- ["loc_talent_adamant_exterminator_stack_during_activation"] = {
		-- },
		-- [+ KEYSTONE 4-4 - Keeping Protocol +]-- ruof Поддержание протокола
		["loc_talent_execution_order_perma_buff"] = {
			ru = "Соблюдение протокола",
		},
		--[+ KEYSTONE 4-5 - Not Far Behind +]-- ruof Не так далеко позади
		["loc_talent_adamant_pinning_dog_bonus_moving_towards"] = {
			ru = "В зоне досягаемости",
		},
		--[+ KEYSTONE 5 - Terminus Warrant +]-- ruof Распоряжение «Терминус»
		["loc_talent_adamant_bullet_rain"] = {
			ru = "Ордер Терминус",
		},
		--[+ KEYSTONE 5-1 - Dispense Justice +]-- ruof Охват правосудия
		["loc_talent_adamant_bullet_rain_fire_rate"] = {
			ru = "Исполнение приговора",
		},
		--[+ KEYSTONE 5-2 - Obstinate +]-- ruof Упрямый
		["loc_talent_adamant_bullet_rain_tdr"] = {
			ru = "Непреклонный",
		},
		--[+ KEYSTONE 5-3 - Terminal Decree +]-- ruof Окончательное постановление
		["loc_talent_adamant_bullet_rain_toughness"] = {
			ru = "Последний приговор",
		},
		--[+ KEYSTONE 5-4 - Writ of Judgement +]-- ruof Судебное предписание
		["loc_talent_adamant_bullet_rain_ability"] = {
			ru = "Судебный ордер",
		},
		--[+ KEYSTONE 6 - Forceful +]-- ruof Напористый
		["loc_talent_adamant_forceful"] = {
			ru = "Неудержимый",
		},
		--[+ KEYSTONE 6-1 - Adamant Will +]-- ruof Адамантовая воля
		-- ["loc_talent_adamant_forceful_stamina_block_and_push_alt"] = {
		-- },
		--[+ KEYSTONE 6-2 - Will of the Lex +]-- ruof Воля Закона
		-- ["loc_talent_adamant_forceful_toughness_regen_per_stack_desc"] = {
		-- },
		--[+ KEYSTONE 6-3 - Targets Acquired +]-- ruof Цели обнаружены
		-- ["loc_talent_adamant_forceful_ranged"] = {
		-- },
		--[+ KEYSTONE 6-4 - Arbites Vigilant +]-- ruof Бдительность Арбитрес
		["loc_talent_adamant_forceful_refresh_on_ability"] = {
			ru = "Бдительный арбитрес",
		},
		--[+ KEYSTONE 6-5 - Judicial Force +]-- ruof Судебная сила
		["loc_talent_adamant_forceful_melee"] = {
			ru = "Сила Правосудия",
		},
	--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
		--[+ PASSIVE 1 - No Escape +]-- ruof Не сбежишь
		["loc_talent_adamant_elite_special_kills_offensive_boost"] = {
			ru = "Не уйдёшь",
		},
		--[+ PASSIVE 2 - Withering Fire +]-- ruof Изнуряющий огонь
		["loc_talent_adamant_damage_after_reloading"] = {
			ru = "Истребляющий огонь",
		},
		--[+ PASSIVE 3 - Hammer of Judgement +]-- ruof Молот правосудия
		["loc_talent_adamant_multiple_hits_attack_speed"] = {
			ru = "Молот Правосудия",
		},
		--[+ PASSIVE 4 - Razor-Jaw Augment +]-- ruof Аугментация челюстей: бритва
		["loc_talent_adamant_dog_pounces_bleed_nearby"] = {
			ru = "Аугментация челюсти-бритвы",
		},
		--[+ PASSIVE 5 - Target Neutralised +]-- ruof Цель нейтрализована
		-- ["loc_talent_adamant_elite_special_kills_replenish_toughness"] = {
		-- },
		--[+ PASSIVE 6 - Up Close +]-- ruof Лицом к лицу
		["loc_talent_adamant_close_kills_restore_toughness"] = {
			ru = "В упор",
		},
		--[+ PASSIVE 7 - Force of Will +]-- ruof Сила воли
		-- ["loc_talent_adamant_staggers_replenish_toughness"] = {
		-- },
		--[+ PASSIVE 8 - Retaliatory Force +]-- ruof Сила возмездия
		-- ["loc_talent_adamant_perfect_block_damage_boost"] = {
		-- },
		--[+ PASSIVE 9 - Man and Cyber-Mastiff +]-- ruof Человек и кибермастиф
		-- ["loc_talent_adamant_toughness_regen_near_companion"] = {
		-- },
		--[+ PASSIVE 10 - Walk It Off +]-- ruof Остынь
		["loc_talent_adamant_stamina_regens_toughness"] = {
			ru = "Заживёт по ходу",
		},
		--[+ PASSIVE 11 - Shield Plates +]-- ruof Пластинчатые щиты
		["loc_talent_adamant_shield_plates"] = {
			ru = "Щитовые пластины",
		},
		--[+ PASSIVE 12 - Arbitrator Armour +]-- ruof Броня Арбитратора
		["loc_talent_adamant_armor"] = {
			ru = "Броня арбитратора",
		},
		--[+ PASSIVE 13 - Voltaic Mandibles Augment +]-- ruof Аугментация челюстей: электрошок
		["loc_talent_adamant_dog_attacks_electrocute"] = {
			ru = "Аугментация вольтаические жвала",
		},
		--[+ PASSIVE 14 - Ammo Belt +]-- ruof Поясная разгрузка
		["loc_talent_adamant_ammo_belt"] = {
			ru = "Патронтаж",
		},
		--[+ PASSIVE 15 - Concussive +]-- ruof Сотрясение
		["loc_talent_adamant_melee_weakspot_hits_count_as_stagger"] = {
			ru = "Ошеломление",
		},
		--[+ PASSIVE 16 - Canine Morale +]-- ruof Собачий настрой
		["loc_talent_adamant_pinning_dog_kills_buff_allies"] = {
			ru = "Боевой настрой пса",
		},
		--[+ PASSIVE 17 - Imposing Force +]-- ruof Впечатляющая сила
		["loc_talent_adamant_damage_reduction_after_elite_kill"] = {
			ru = "Давящая мощь",
		},
		--[+ PASSIVE 18 - Suppression Force +]-- ruof Сила подавления
		-- ["loc_talent_adamant_staggered_enemies_deal_less_damage"] = {
		-- },
		--[+ PASSIVE 19 - Suppression Protocols +]-- ruof Протоколы подавления
		-- ["loc_talent_adamant_hitting_multiple_gives_tdr"] = {
		-- },
		--[+ PASSIVE 20 - Plasteel Plates +]-- ruof Пластины из пластали
		["loc_talent_adamant_plasteel_plates"] = {
			ru = "Пласталевые пластины",
		},
		--[+ PASSIVE 21 - Arbites Revelatum +]-- ruof Арбитрес Ревелатум
		-- ["loc_talent_adamant_dodge_grants_damage"] = {
		-- },
		--[+ PASSIVE 22 - Justified Measures +]-- ruof Оправданные меры
		-- ["loc_talent_adamant_stacking_damage"] = {
		-- },
		--[+ PASSIVE 23 - Hold the Line +]-- ruof Держать строй
		["loc_talent_adamant_staggers_reduce_damage_taken"] = {
			ru = "Держи строй",
		},
		--[+ PASSIVE 24 - Judicious Efficiency +]-- ruof Разумная эффективность
		["loc_talent_adamant_elite_special_kills_reload_speed"] = {
			ru = "Судейская эффективность",
		},
		--[+ PASSIVE 25 - Rapid Movement +]-- ruof Быстрое перемещение
		["loc_talent_adamant_sprinting_sliding"] = {
			ru = "Быстрые движения",
		},
		--[+ PASSIVE 26 - Rebreather +]-- ruof Противогаз
		["loc_talent_adamant_rebreather"] = {
			ru = "Ребризер",
		},
		--[+ PASSIVE 27 - Cower, Miscreants! +]-- ruof Трепещите, негодяи!
		-- ["loc_talent_adamant_damage_vs_suppressed"] = {
		-- },
		--[+ PASSIVE 28 - Target the Weak +]-- ruof Цель - слабаки
		-- ["loc_talent_adamant_staggered_enemies_take_more_damage"] = {
		-- },
		--[+ PASSIVE 29 - The Emperor's Fist +]-- ruof Кулак Императора
		-- ["loc_talent_adamant_first_melee_hit_increased_damage"] = {
		-- },
		--[+ PASSIVE 30 - Zealous Dedication +]-- ruof Фанатичная преданность
		-- ["loc_talent_adamant_crit_chance_on_kill"] = {
		-- },
		--[+ PASSIVE 31 - Street Smarts +]-- ruof Законы улицы
		["loc_talent_adamant_dodge_improvement"] = {
			ru = "Уличная хватка",
		},
		--[+ PASSIVE 32 - Drive them Back +]-- ruof Отбрось их
		["loc_talent_adamant_cleave_after_push"] = {
			ru = "Натиск",
		},
		--[+ PASSIVE 33 - Target Selection +]-- ruof Выбор цели
		["loc_talent_adamant_pinning_dog_elite_damage"] = {
			ru = "Выбор целей",
		},
		--[+ PASSIVE 34 - Soulguilt Scan +]-- ruof Поиск виновных душ
		-- ["loc_talent_adamant_stacking_weakspot_strength"] = {
		-- },
		--[+ PASSIVE 35 - Priority Endowment +]-- ruof Приоритетное снабжение
		-- ["loc_talent_adamant_clip_size"] = {
		-- },
		--[+ PASSIVE 36 - Target Priority +]-- ruof Приоритет целей
		-- ["loc_talent_adamant_increased_damage_to_high_health"] = {
		-- },
		--[+ PASSIVE 37 - Final Warning +]-- ruof Последнее предупреждение
		-- ["loc_talent_adamant_ranged_damage_on_melee_stagger"] = {
		-- },
		--[+ PASSIVE 38 - Weight of the Lex +]-- ruof Вес Закона
		-- ["loc_talent_adamant_heavy_attacks_increase_damage"] = {
		-- },
		--[+ PASSIVE 39 - Serrated Maw +]-- ruof Зазубренная пасть
		-- ["loc_talent_adamant_dog_applies_brittleness"] = {
		-- },
		--[+ PASSIVE 40 - Prosecution Blow +]-- ruof Обвиняющий удар
		["loc_talent_adamant_crits_rend"] = {
			ru = "Карающий удар",
		},
		--[+ PASSIVE 41 - March +]-- ruof Марш
		-- ["loc_talent_adamant_movement_speed_on_block"] = {
		-- },
		--[+ PASSIVE 42 - Monstrosity Hunter +]-- ruof Охота на чудовищ
		["loc_talent_adamant_monster_hunter"] = {
			ru = "Охотник на чудовищ",
		},
		--[+ PASSIVE 43 - Strike Down +]-- ruof Сбивающий удар
		["loc_talent_adamant_melee_attacks_on_staggered_rend"] = {
			ru = "Сокрушительный удар",
		},
		--[+ PASSIVE 44 - True Grit +]-- ruof Истинная выдержка
		["loc_talent_adamant_limit_dmg_taken_from_hits"] = {
			ru = "Настоящая закалка",
		},


--[+ ++HIVE SCUM - ОТРЕБЬЕ УЛЬЯ++ +]--
	--[+ +BLITZ - БЛИЦ+ +]--
		--[+ BLITZ 0 - Arbites Grenade +]-- ruof Граната Арбитрес
		-- ["loc_talent_ability_adamant_grenade"] = {
			-- ru = "Граната арбитрес",
		-- },
		--[+ BLITZ 1 - Remote Detonation +]-- ruof Дистанционный подрыв
		-- ["loc_talent_ability_detonate"] = {
		-- },
		--[+ BLITZ 2 - Voltaic Shock Mine +]-- ruof Электрошоковая мина
		-- ["loc_talent_ability_shock_mine"] = {
			-- ru = "Вольтаическая шоковая мина",
		-- },
		--[+ BLITZ 3 - Arbites Grenade Improved +]-- ruof Граната Арбитрес
		-- ["loc_talent_ability_adamant_grenade_improved"] = {
			-- ru = "Граната арбитрес",
		-- },
	--[+ +AURA - АУРА+ +]--
		--[+ AURA 0-1 - Part of the Squad +]-- ruof Часть отряда
		-- ["loc_talent_adamant_companion_coherency"] = {
		-- },
		--[+ AURA 2 - Ruthless Efficiency +]-- ruof Беспощадная эффективность
		-- ["loc_talent_adamant_wield_speed_aura"] = {
		-- },
		--[+ AURA 3 - Breaking Dissent +]-- ruof Преодоление разногласий
		-- ["loc_talent_adamant_damage_vs_staggered_aura"] = {
			-- ru = "Подавление инакомыслия",
		-- },
	--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
		--[+ ABILITY 0, 2 - Nuncio-Aquila +]-- ruof Нунцио-аквила
		-- ["loc_talent_ability_area_buff_drone"] = {
		-- },
		--[+ ABILITY 1 - Castigator's Stance +]-- ruof Стойка бичевателя
		-- ["loc_talent_adamant_stance_ability_name"] = {
			-- ru = "Стойка карателя",
		-- },
		--[+ ABILITY 1-1 - Blessed Armament +]-- ruof Благословенное орудие
		-- ["loc_talent_adamant_stance_ranged_kills_transfer_ammo"] = {
			-- ru = "Благословенное вооружение",
		-- },
		--[+ ABILITY 1-2 - Writ of Execution +]-- ruof Ордер на казнь
		-- ["loc_talent_adamant_stance_elite_kills_stack_damage"] = {
		-- },
		--[+ ABILITY 1-3 - Bloodlust +]-- ruof Жажда крови
		-- ["loc_talent_adamant_stance_bloodlust"] = {
		-- },
		--[+ ABILITY 2-1 - Inspiring Recitation +]-- ruof Вдохновляющая декламация
		-- ["loc_talent_adamant_drone_buff_talent"] = {
			-- ru = "Воодушевляющая проповедь",
		-- },
		--[+ ABILITY 2-2 - Fear of Justice +]-- ruof Страх правосудия
		-- ["loc_talent_adamant_drone_debuff_talent"] = {
			-- ru = "Страх перед Правосудием",
		-- },
		--[+ ABILITY 3 - Break the Line +]-- ruof Прорыв фронта
		-- ["loc_talent_adamant_charge_ability_name"] = {
			-- ru = "Прорыв строя",
		-- },
		--[+ ABILITY 3-1 - Commendation from Condemnation +]-- ruof Не наказали - значит, похвалили
		-- ["loc_talent_adamant_charge_toughness_name"] = {
			-- ru = "Похвала за осуждение",
		-- },
		--[+ ABILITY 3-2 - Targeted Brutality +]-- ruof Направленная жестокость
		-- ["loc_talent_adamant_charge_cooldown_name"] = {
		-- },
		--[+ ABILITY 3-3 - Kill Order +]-- ruof Приказ убивать
		-- ["loc_talent_adamant_dog_damage_after_ability"] = {
			-- ru = "Фас!",
		-- },
		--[+ ABILITY 3-4 - Engage +]-- ruof К бою
		-- ["loc_talent_adamant_charge_longer_distance"] = {
			-- ru = "Дальний прорыв",
		-- },
	--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
		--[+ KEYSTONE 1 - Unleashed Brutality +]-- ruof Высвобожденнная жестокость
		-- ["loc_talent_adamant_cyber_mastiff_elites"] = {
		-- },
		--[+ KEYSTONE 2 - Lone Wolf +]-- ruof Одинокий волк
		-- ["loc_talent_adamant_disable_companion"] = {
		-- },
		--[+ KEYSTONE 3 - Go Get 'Em! +]-- ruof Взять их!
		-- ["loc_talent_adamant_cyber_mastiff_ranged"] = {
		-- },
		--[+ KEYSTONE 4 - Execution Order +]-- ruof Приказ казнить
		-- ["loc_talent_adamant_exterminator"] = {
			-- ru = "Метка возмездия",
		-- },
		--[+ KEYSTONE 4-1 - Efficient Killer +]-- ruof Эффективный убийца
		-- ["loc_talent_adamant_exterminator_toughness"] = {
		-- },
		--[+ KEYSTONE 4-2 - Malocator +]-- ruof Малокатор
		-- ["loc_talent_adamant_exterminator_ability_cooldown"] = {
		-- },
		--[+ KEYSTONE 4-3 - No Lenience +]-- ruof Нетерпимость
		-- ["loc_talent_adamant_exterminator_stack_during_activation"] = {
		-- },
		-- [+ KEYSTONE 4-4 - Keeping Protocol +]-- ruof Поддержание протокола
		-- ["loc_talent_execution_order_perma_buff"] = {
			-- ru = "Соблюдение протокола",
		-- },
		--[+ KEYSTONE 4-5 - Not Far Behind +]-- ruof Не так далеко позади
		-- ["loc_talent_adamant_pinning_dog_bonus_moving_towards"] = {
			-- ru = "В зоне досягаемости",
		-- },
		--[+ KEYSTONE 5 - Terminus Warrant +]-- ruof Распоряжение «Терминус»
		-- ["loc_talent_adamant_bullet_rain"] = {
			-- ru = "Ордер Терминус",
		-- },
		--[+ KEYSTONE 5-1 - Dispense Justice +]-- ruof Охват правосудия
		-- ["loc_talent_adamant_bullet_rain_fire_rate"] = {
			-- ru = "Исполнение приговора",
		-- },
		--[+ KEYSTONE 5-2 - Obstinate +]-- ruof Упрямый
		-- ["loc_talent_adamant_bullet_rain_tdr"] = {
			-- ru = "Непреклонный",
		-- },
		--[+ KEYSTONE 5-3 - Terminal Decree +]-- ruof Окончательное постановление
		-- ["loc_talent_adamant_bullet_rain_toughness"] = {
			-- ru = "Последний приговор",
		-- },
		--[+ KEYSTONE 5-4 - Writ of Judgement +]-- ruof Судебное предписание
		-- ["loc_talent_adamant_bullet_rain_ability"] = {
			-- ru = "Судебный ордер",
		-- },
		--[+ KEYSTONE 6 - Forceful +]-- ruof Напористый
		-- ["loc_talent_adamant_forceful"] = {
			-- ru = "Неудержимый",
		-- },
		--[+ KEYSTONE 6-1 - Adamant Will +]-- ruof Адамантовая воля
		-- ["loc_talent_adamant_forceful_stamina_block_and_push_alt"] = {
		-- },
		--[+ KEYSTONE 6-2 - Will of the Lex +]-- ruof Воля Закона
		-- ["loc_talent_adamant_forceful_toughness_regen_per_stack_desc"] = {
		-- },
		--[+ KEYSTONE 6-3 - Targets Acquired +]-- ruof Цели обнаружены
		-- ["loc_talent_adamant_forceful_ranged"] = {
		-- },
		--[+ KEYSTONE 6-4 - Arbites Vigilant +]-- ruof Бдительность Арбитрес
		-- ["loc_talent_adamant_forceful_refresh_on_ability"] = {
			-- ru = "Бдительный арбитрес",
		-- },
		--[+ KEYSTONE 6-5 - Judicial Force +]-- ruof Судебная сила
		-- ["loc_talent_adamant_forceful_melee"] = {
			-- ru = "Сила Правосудия",
		-- },
	--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
		--[+ PASSIVE 1 - No Escape +]-- ruof Не сбежишь
		-- ["loc_talent_adamant_elite_special_kills_offensive_boost"] = {
			-- ru = "Не уйдёшь",
		-- },
		--[+ PASSIVE 2 - Withering Fire +]-- ruof Изнуряющий огонь
		-- ["loc_talent_adamant_damage_after_reloading"] = {
			-- ru = "Истребляющий огонь",
		-- },
		--[+ PASSIVE 3 - Hammer of Judgement +]-- ruof Молот правосудия
		-- ["loc_talent_adamant_multiple_hits_attack_speed"] = {
			-- ru = "Молот Правосудия",
		-- },
		--[+ PASSIVE 4 - Razor-Jaw Augment +]-- ruof Аугментация челюстей: бритва
		-- ["loc_talent_adamant_dog_pounces_bleed_nearby"] = {
			-- ru = "Аугментация челюсти-бритвы",
		-- },
		--[+ PASSIVE 5 - Target Neutralised +]-- ruof Цель нейтрализована
		-- ["loc_talent_adamant_elite_special_kills_replenish_toughness"] = {
		-- },
		--[+ PASSIVE 6 - Up Close +]-- ruof Лицом к лицу
		-- ["loc_talent_adamant_close_kills_restore_toughness"] = {
			-- ru = "В упор",
		-- },
		--[+ PASSIVE 7 - Force of Will +]-- ruof Сила воли
		-- ["loc_talent_adamant_staggers_replenish_toughness"] = {
		-- },
		--[+ PASSIVE 8 - Retaliatory Force +]-- ruof Сила возмездия
		-- ["loc_talent_adamant_perfect_block_damage_boost"] = {
		-- },
		--[+ PASSIVE 9 - Man and Cyber-Mastiff +]-- ruof Человек и кибермастиф
		-- ["loc_talent_adamant_toughness_regen_near_companion"] = {
		-- },
		--[+ PASSIVE 10 - Walk It Off +]-- ruof Остынь
		-- ["loc_talent_adamant_stamina_regens_toughness"] = {
			-- ru = "Заживёт по ходу",
		-- },
		--[+ PASSIVE 11 - Shield Plates +]-- ruof Пластинчатые щиты
		-- ["loc_talent_adamant_shield_plates"] = {
			-- ru = "Щитовые пластины",
		-- },
		--[+ PASSIVE 12 - Arbitrator Armour +]-- ruof Броня Арбитратора
		-- ["loc_talent_adamant_armor"] = {
			-- ru = "Броня арбитратора",
		-- },
		--[+ PASSIVE 13 - Voltaic Mandibles Augment +]-- ruof Аугментация челюстей: электрошок
		-- ["loc_talent_adamant_dog_attacks_electrocute"] = {
			-- ru = "Аугментация вольтаические жвала",
		-- },
		--[+ PASSIVE 14 - Ammo Belt +]-- ruof Поясная разгрузка
		-- ["loc_talent_adamant_ammo_belt"] = {
			-- ru = "Патронтаж",
		-- },
		--[+ PASSIVE 15 - Concussive +]-- ruof Сотрясение
		-- ["loc_talent_adamant_melee_weakspot_hits_count_as_stagger"] = {
			-- ru = "Ошеломление",
		-- },
		--[+ PASSIVE 16 - Canine Morale +]-- ruof Собачий настрой
		-- ["loc_talent_adamant_pinning_dog_kills_buff_allies"] = {
			-- ru = "Боевой настрой пса",
		-- },
		--[+ PASSIVE 17 - Imposing Force +]-- ruof Впечатляющая сила
		-- ["loc_talent_adamant_damage_reduction_after_elite_kill"] = {
			-- ru = "Давящая мощь",
		-- },
		--[+ PASSIVE 18 - Suppression Force +]-- ruof Сила подавления
		-- ["loc_talent_adamant_staggered_enemies_deal_less_damage"] = {
		-- },
		--[+ PASSIVE 19 - Suppression Protocols +]-- ruof Протоколы подавления
		-- ["loc_talent_adamant_hitting_multiple_gives_tdr"] = {
		-- },
		--[+ PASSIVE 20 - Plasteel Plates +]-- ruof Пластины из пластали
		-- ["loc_talent_adamant_plasteel_plates"] = {
			-- ru = "Пласталевые пластины",
		-- },
		--[+ PASSIVE 21 - Arbites Revelatum +]-- ruof Арбитрес Ревелатум
		-- ["loc_talent_adamant_dodge_grants_damage"] = {
		-- },
		--[+ PASSIVE 22 - Justified Measures +]-- ruof Оправданные меры
		-- ["loc_talent_adamant_stacking_damage"] = {
		-- },
		--[+ PASSIVE 23 - Hold the Line +]-- ruof Держать строй
		-- ["loc_talent_adamant_staggers_reduce_damage_taken"] = {
			-- ru = "Держи строй",
		-- },
		--[+ PASSIVE 24 - Judicious Efficiency +]-- ruof Разумная эффективность
		-- ["loc_talent_adamant_elite_special_kills_reload_speed"] = {
			-- ru = "Судейская эффективность",
		-- },
		--[+ PASSIVE 25 - Rapid Movement +]-- ruof Быстрое перемещение
		-- ["loc_talent_adamant_sprinting_sliding"] = {
			-- ru = "Быстрые движения",
		-- },
		--[+ PASSIVE 26 - Rebreather +]-- ruof Противогаз
		-- ["loc_talent_adamant_rebreather"] = {
			-- ru = "Ребризер",
		-- },
		--[+ PASSIVE 27 - Cower, Miscreants! +]-- ruof Трепещите, негодяи!
		-- ["loc_talent_adamant_damage_vs_suppressed"] = {
		-- },
		--[+ PASSIVE 28 - Target the Weak +]-- ruof Цель - слабаки
		-- ["loc_talent_adamant_staggered_enemies_take_more_damage"] = {
		-- },
		--[+ PASSIVE 29 - The Emperor's Fist +]-- ruof Кулак Императора
		-- ["loc_talent_adamant_first_melee_hit_increased_damage"] = {
		-- },
		--[+ PASSIVE 30 - Zealous Dedication +]-- ruof Фанатичная преданность
		-- ["loc_talent_adamant_crit_chance_on_kill"] = {
		-- },
		--[+ PASSIVE 31 - Street Smarts +]-- ruof Законы улицы
		-- ["loc_talent_adamant_dodge_improvement"] = {
			-- ru = "Уличная хватка",
		-- },
		--[+ PASSIVE 32 - Drive them Back +]-- ruof Отбрось их
		-- ["loc_talent_adamant_cleave_after_push"] = {
			-- ru = "Натиск",
		-- },
		--[+ PASSIVE 33 - Target Selection +]-- ruof Выбор цели
		-- ["loc_talent_adamant_pinning_dog_elite_damage"] = {
			-- ru = "Выбор целей",
		-- },
		--[+ PASSIVE 34 - Soulguilt Scan +]-- ruof Поиск виновных душ
		-- ["loc_talent_adamant_stacking_weakspot_strength"] = {
		-- },
		--[+ PASSIVE 35 - Priority Endowment +]-- ruof Приоритетное снабжение
		-- ["loc_talent_adamant_clip_size"] = {
		-- },
		--[+ PASSIVE 36 - Target Priority +]-- ruof Приоритет целей
		-- ["loc_talent_adamant_increased_damage_to_high_health"] = {
		-- },
		--[+ PASSIVE 37 - Final Warning +]-- ruof Последнее предупреждение
		-- ["loc_talent_adamant_ranged_damage_on_melee_stagger"] = {
		-- },
		--[+ PASSIVE 38 - Weight of the Lex +]-- ruof Вес Закона
		-- ["loc_talent_adamant_heavy_attacks_increase_damage"] = {
		-- },
		--[+ PASSIVE 39 - Serrated Maw +]-- ruof Зазубренная пасть
		-- ["loc_talent_adamant_dog_applies_brittleness"] = {
		-- },
		--[+ PASSIVE 40 - Prosecution Blow +]-- ruof Обвиняющий удар
		-- ["loc_talent_adamant_crits_rend"] = {
			-- ru = "Карающий удар",
		-- },
		--[+ PASSIVE 41 - March +]-- ruof Марш
		-- ["loc_talent_adamant_movement_speed_on_block"] = {
		-- },
		--[+ PASSIVE 42 - Monstrosity Hunter +]-- ruof Охота на чудовищ
		-- ["loc_talent_adamant_monster_hunter"] = {
			-- ru = "Охотник на чудовищ",
		-- },
		--[+ PASSIVE 43 - Strike Down +]-- ruof Сбивающий удар
		-- ["loc_talent_adamant_melee_attacks_on_staggered_rend"] = {
			-- ru = "Сокрушительный удар",
		-- },
		--[+ PASSIVE 44 - True Grit +]-- ruof Истинная выдержка
		-- ["loc_talent_adamant_limit_dmg_taken_from_hits"] = {
			-- ru = "Настоящая закалка",
		-- },
}

-- Automatic template creation - Автоматическое создание шаблонов
local localization_templates = {}
for loc_key, locales in pairs(names_talents_blessings_templates) do
	for locale, text in pairs(locales) do
		table.insert(localization_templates, create_template(
			loc_key,
			{loc_key},
			{locale},
			loc_text(text)
		))
	end
end

mod:info("NAMES_Talents_Blessings.lua loaded successfully")

return localization_templates
