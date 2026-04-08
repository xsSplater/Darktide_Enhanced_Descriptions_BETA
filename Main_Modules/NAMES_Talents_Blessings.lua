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
		--[+ OPPORTUNIST +]-- руоф Приспособленец	08.04.2026
		-- Battle Maul and Shield, Chainaxes, Crowbar, Crusher, Eviscerators, Latrine Shovels, Power Maul, Shock Mauls, Shock Mauls and Shield
		["loc_trait_bespoke_armor_penetration_against_staggered"] = {
			ru = "Оппортунист",
			["zh-tw"] = "機會主義者",
		},
		--[+ BLOODLETTER +]-- руоф Кровопускание	08.04.2026
		-- Chainaxes, Chainswords, Eviscerators
		["loc_trait_bespoke_bleed_on_activated_hit"] = {
			ru = "Кровопускатель",
			["zh-tw"] = "放血者",
		},
		--[+ BLOODTHIRSTY +]-- руоф Жажда крови	08.04.2026
		-- Chainaxes, Chainswords, Eviscerators, Force Swords
		["loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill"] = {
			ru = "Кровожадный",
			["zh-tw"] = "嗜血",
		},
		--[+ HEADTAKER +]-- руоф Головорез	08.04.2026
		-- Chainaxes, Combat Axes, Pickaxes, Tactical Axes, Thunder Hammers, Heavy Swords
		["loc_trait_bespoke_increase_power_on_hit"] = {
			["zh-tw"] = "奪顱者",
		},
		--[+ SLAUGHTERER +]-- руоф Душегуб	08.04.2026
		-- Chainaxes, Cleavers, Crusher, Force Swords, Pickaxes, Power Swords, Thunder Hammers
		["loc_trait_bespoke_increase_power_on_kill"] = {
			["zh-tw"] = "殺戮者",
		},
		--[+ REV IT UP +]-- руоф Бодрость	08.04.2026
		-- Chainaxes, Chainswords, Eviscerators
		["loc_trait_bespoke_movement_speed_on_activation"] = {
			ru = "Ускорься",
			["zh-tw"] = "提速",
		},
		--[+ THRUST +]-- руоф Выпад	08.04.2026
		-- Bully Clubs, Chainaxes, Cleavers, Combat Axes, Crusher, Duelling Swords, Heavy Swords, Latrine Shovels, Pickaxes, Power Swords, Sapper Shovels, Shock Mauls, Thunder Hammers
		["loc_code"] = {
			["zh-tw"] = "推進",
		},
		--[+ THUNDEROUS +]-- руоф Словно раскаты грома	08.04.2026
		-- Arbites Shock Maul, Bully Clubs, Chainaxes, Combat Axes, Crusher, Latrine Shovels, Pickaxes, Thunder Hammers
		["loc_trait_bespoke_targets_receive_rending_debuff"] = {
			ru = "Громобой",
			["zh-tw"] = "雷鳴",
		},
		--[+ WRATH +]-- руоф Гнев	08.04.2026
		-- Bone Saw, Chainswords, Devil's Claw Swords, Eviscerators, Force Greatswords, Heavy Swords, Pickaxes, Power Falchions, Relic Blades, Power Swords
		["loc_trait_bespoke_chained_hits_increases_cleave"] = {
			["zh-tw"] = "憤怒",
		},
		--[+ SHRED +]-- руоф Расстрел	08.04.2026
		-- Bone Saw, Chainswords, Combat Axes, Devil's Claw Swords, Duelling Swords, Eviscerators, Force Greatswords, Force Swords, Tactical Axes
		["loc_trait_bespoke_chained_hits_increases_crit_chance"] = {
			ru = "Кромсание",
			["zh-tw"] = "粉碎",
		},
		--[+ SAVAGE SWEEP +]-- руоф Дикость	08.04.2026
		-- Chainswords, Cleavers, Devil's Claw Swords, Eviscerators, Heavy Swords
		["loc_trait_bespoke_increased_attack_cleave_on_multiple_hits"] = {
			ru = "Дикий взмах",
		},
		--[+ RAMPAGE +]-- руоф Буйство	08.04.2026
		-- Chainswords, Devil's Claw Swords, Duelling Swords, Eviscerators, Heavy Swords, Power Swords, Relic Blades
		["loc_trait_bespoke_increased_melee_damage_on_multiple_hits"] = {
			["zh-tw"] = "野蠻橫掃",
		},
		--[+ DEVASTATING STRIKE +]-- руоф Сокрушительный удар	08.04.2026
		-- Chainswords, Cleavers, Devil's Claw Swords, Relic Blades
		["loc_trait_bespoke_infinite_melee_cleave_on_crit"] = {
			["zh-tw"] = "毀滅打擊",
		},
		--[+ DECIMATOR +]-- руоф Дециматор	08.04.2026
		-- Bone Saw, Combat Axes, Sapper Shovels, Tactical Axes
		["loc_trait_bespoke_chained_hits_increases_power_desc"] = {
			["zh-tw"] = "屠戮者",
		},
		--[+ BRUTAL MOMENTUM +]-- руоф Суровый моментум	08.04.2026
		-- Battle Maul and Shield, Combat Axes, Heavy Swords, Latrine Shovels, Power Maul, Power Swords, Tactical Axes
		["loc_trait_bespoke_infinite_cleave_on_weakspot_kill"] = {
			ru = "Жестокий моментум",
			["zh-tw"] = "野蠻攻勢",
		},
		--[+ DEATHBLOW +]-- руоф Смертельный удар	08.04.2026
		-- Battle Maul and Shield, Combat Axes, Heavy Swords, Latrine Shovels, Power Maul, Power Swords, Tactical Axes
		["loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill"] = {
			["zh-tw"] = "致命一擊",
		},
		--[+ LIMBSPLITTER +]-- руоф Расщепитель	08.04.2026
		-- Bone Saw, Combat Axes, Crowbar, Pickaxes, Sapper Shovels, Tactical Axes
		["loc_trait_bespoke_power_bonus_on_first_attack"] = {
			ru = "Расчленитель",
			["zh-tw"] = "斷肢者",
		},
		--[+ ALL OR NOTHING +]-- руоф Все или ничего	08.04.2026
		-- Arbites Shock Maul, Combat Axes, Crowbar, Pickaxes, Sapper Shovels, Shock Maul and Shield, Tactical Axesы
		["loc_trait_bespoke_power_bonus_scaled_on_stamina"] = {
			ru = "Всё или ничего",
			["zh-tw"] = "孤注一擲",
		},
		--[+ DECAPITATOR +]-- руоф Палач	08.04.2026
		-- Bone Saw, Combat Axes, Power Falchions
		["loc_trait_bespoke_stacking_rending_on_one_hit_kills"] = {
			["zh-tw"] = "斬首者",
		},
		--[+ AGILE +]-- руоф Ловкий	08.04.2026
		-- Duelling Swords, Tactical Axes
		["loc_trait_bespoke_dodge_count_reset_on_weakspot_hit"] = {
			ru = "Проворный",
			["zh-tw"] = "敏捷",
		},
		--[+ SLAUGHTER SPREE +]-- руоф Убойная сила	08.04.2026
		-- Tactical Axes
		["loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill"] = {
			ru = "Резня",
			["zh-tw"] = "殺戮狂潮",
		},
		--[+ RELENTLESS STRIKES +]-- руоф Безжалостность	08.04.2026
		-- Arbites Shock Maul, Bone Saw, Duelling Swords, Tactical Axes
		["loc_trait_bespoke_power_bonus_on_same_enemy_attacks"] = {
			ru = "Безжалостные удары",
			["zh-tw"] = "持續打擊",
		},
		--[+ FLESH TEARER +]-- руоф Раздиратель плоти	08.04.2026
		-- Combat Blades, Shivs
		["loc_trait_bespoke_bleed_on_crit_melee"] = {
			["zh-tw"] = "血肉撕裂者",
		},
		--[+ LACERATE +]-- руоф Терзание	08.04.2026
		-- Combat Blades, Shivs
		["loc_trait_bespoke_bleed_on_non_weakspot_hit"] = {
			["zh-tw"] = "撕裂",
		},
		--[+ EXECUTOR +]-- руоф Экзекутор	08.04.2026
		-- Combat Blades, Force Swords, Shivs
		["loc_trait_bespoke_chained_weakspot_hits_increases_power"] = {
			ru = "Каратель",
			["zh-tw"] = "行刑者",
		},
		--[+ RIPOSTE +]-- руоф Ответный удар	08.04.2026
		-- Combat Blades, Duelling Swords, Force Greatswords, Force Swords, Shivs
		["loc_trait_bespoke_dodge_grants_crit_chance"] = {
			["zh-tw"] = "還擊",
		},
		--[+ PRECOGNITION +]-- руоф Познание	08.04.2026
		-- Combat Blades, Duelling Swords, Force Greatswords, Force Swords, Shivs
		["loc_trait_bespoke_dodge_grants_finesse_bonus"] = {
			ru = "Предвидение",
			["zh-tw"] = "未卜先知",
		},
		--[+ HAYMAKER +]-- руоф Коса	08.04.2026
		-- Bully Clubs, Combat Blades, Shivs
		["loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance"] = {
			ru = "Жнец",
			["zh-tw"] = "強力一擊",
		},
		--[+ SMACKDOWN +]-- руоф Смятение	08.04.2026
		-- Bully Clubs, Combat Blades
		["loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy"] = {
			ru = "Сокрушение",
			["zh-tw"] = "擊倒",
		},
		--[+ MERCY KILLER +]-- руоф Милосердие	08.04.2026
		-- Combat Blades, Shivs
		["loc_trait_bespoke_increased_weakspot_damage_on_bleeding"] = {
			ru = "Милосердный убийца",
			["zh-tw"] = "仁慈殺手",
		},
		--[+ RUTHLESS BACKSTAB +]-- руоф Беспощадный удар в спину	08.04.2026
		-- Combat Blades, Shivs
		["loc_trait_bespoke_rending_on_backstabs"] = {
			["zh-tw"] = "無情背刺",
		},
		--[+ UNCANNY STRIKE +]-- руоф Жуткий удар	08.04.2026
		-- Combat Blades, Duelling Swords, Force Swords, Sapper Shovels, Shivs
		["loc_trait_bespoke_stacking_rending_on_weakspot"] = {
			["zh-tw"] = "詭異打擊",
		},
		--[+ TRAUMA +]-- руоф Травма	08.04.2026
		-- Crusher, Devil's Claw Swords, Sapper Shovels, Thunder Hammers
		["loc_trait_bespoke_consecutive_hits_increases_stagger"] = {
			["zh-tw"] = "創傷",
		},
		--[+ VICIOUS SLICE +]-- руоф Жестокая нарезка	08.04.2026
		-- Devil's Claw Swords
		["loc_trait_bespoke_increase_stagger_per_hit_in_sweep"] = {
			ru = "Жестокий разрез",
			["zh-tw"] = "凶狠切割",
		},
		--[+ HAMMERBLOW +]-- руоф Удар молотом	08.04.2026
		-- Arbites Shock Maul, Crusher, Devil's Claw Swords, Sapper Shovels, Shock Mauls, Shock Mauls and Shield, Thunder Hammers
		["loc_trait_bespoke_stacking_increase_impact_on_hit"] = {
			ru = "Молотобой",
			["zh-tw"] = "錘擊",
		},
		--[+ SKULLCRUSHER +]-- руоф Череподробитель	08.04.2026
		-- Battle Maul and Shield, Bully Clubs, Crusher, Devil's Claw Swords, Latrine Shovels, Power Maul, Sapper Shovels, Shock Mauls, Thunder Hammers
		["loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff"] = {
			["zh-tw"] = "粉碎者",
		},
		--[+ THUNDERSTRIKE +]-- руоф Гроза	08.04.2026
		-- Battle Maul and Shield, Crusher, Devil's Claw Swords, Power Maul, Sapper Shovels, Thunder Hammers
		["loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff"] = {
			ru = "Удар грома",
			["zh-tw"] = "雷霆打擊",
		},
		--[+ CHAINED DEATHBLOW +]-- руоф Цепочка смертельных ударов	08.04.2026
		-- Heavy Swords
		["loc_trait_bespoke_increased_crit_chance_on_weakspot_kill"] = {
			ru = "Цепь смертоносных ударов",
			["zh-tw"] = "致命連擊",
		},
		--[+ PERFECT STRIKE +]-- руоф Безупречный удар	08.04.2026
		-- Battle Maul and Shield, Bully Clubs, Eviscerators, Heavy Swords, Latrine Shovels, Power Maul
		["loc_trait_bespoke_pass_past_armor_on_crit_new"] = {
			["zh-tw"] = "完美一擊",
		},
		--[+ BLADED MOMENTUM +]-- руоф Моментум лезвия	08.04.2026
		-- Heavy Swords
		["loc_trait_bespoke_stacking_rending_on_cleave"] = {
			ru = "Инерция клинка",
			["zh-tw"] = "利刃攻勢",
		},
		--[+ DEFLECTOR +]-- руоф Отражатель	08.04.2026
		-- Force Greatswords, Force Swords
		["loc_trait_bespoke_can_block_ranged_desc"] = {
			["zh-tw"] = "偏轉",
		},
		--[+ MOMENTUM +]-- руоф Моментум	08.04.2026
		-- Bully Clubs, Cleavers, Eviscerators, Force Greatswords, Thunder Hammers
		["loc_trait_bespoke_toughness_recovery_on_multiple_hits"] = {
			["zh-tw"] = "勢頭",
		},
		--[+ MURDEROUS TRANQUILITY +]-- руоф Убийственное спокойствие	08.04.2026
		-- Force Greatswords
		["loc_trait_bespoke_vent_warp_charge_on_multiple_hits"] = {
			["zh-tw"] = "兇殘之寧",
		},
		--[+ BLAZING SPIRIT +]-- руоф Пламенный дух !MELEE!	08.04.2026
		-- Force Swords
		-- !!!FORCE GREATSWORD TEMPORARILY USES THE DESCRIPTION FROM THE RANGED BLESSING!!!
		-- Force Greatswords
		["loc_trait_bespoke_warp_burninating_on_crit"] = {
			ru = "Пылающий дух",
			["zh-tw"] = "燃燒靈魂",
		},
		--[+ UNSTABLE POWER +]-- руоф Нестабильная мощь	08.04.2026
		-- Force Greatswords, Force Swords
		["loc_trait_bespoke_warp_charge_power_bonus"] = {
			["zh-tw"] = "不穩定能量",
		},
		--[+ WARP SLICE +]-- руоф Варп-удар	08.04.2026
		-- Force Greatswords
		["loc_trait_bespoke_wind_slash_crits"] = {
			ru = "Варп нарезка",
			["zh-tw"] = "亞空間斬擊",
		},
		--[+ EXORCIST +]-- руоф Экзорцист	08.04.2026
		-- Force Swords
		["loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge"] = {
			["zh-tw"] = "驅魔者",
		},
		--[+ SUPERIORITY +]-- руоф Превосходство	08.04.2026
		-- Crowbar, Force Swords
		["loc_trait_bespoke_elite_kills_grants_stackable_power"] = {
			["zh-tw"] = "優勢",
		},
		--[+ LIGHTNING REFLEXES +]-- руоф Молниеносные рефлексы	08.04.2026
		-- Arbites Shock Maul, Shock Mauls, Shock Mauls and Shield
		["loc_trait_bespoke_block_has_chance_to_stun_with_cd"] = {
			["zh-tw"] = "閃電反射",
		},
		--[+ HIGH VOLTAGE +]-- руоф Высокое напряжение	08.04.2026
		-- Arbites Shock Maul, Shock Mauls, Shock Mauls and Shield
		["loc_trait_bespoke_damage_bonus_vs_electrocuded"] = {
			["zh-tw"] = "高壓電",
		},
		--[+ FALTER +]-- руоф Дрожь	08.04.2026
		-- Arbites Shock Maul, Shock Mauls
		["loc_trait_bespoke_negate_stagger_reduction_on_weakspot"] = {
			["zh-tw"] = "踉蹌",
		},
		--[+ OVERWHELMING FORCE +]-- руоф Подавляющая сила	08.04.2026
		-- Shock Mauls
		["loc_trait_bespoke_staggering_hits_has_chance_to_stun"] = {
			["zh-tw"] = "壓倒性的武力",
		},
		--[+ COUNTERATTACK +]-- руоф Контратака	08.04.2026
		-- Power Falchions, Relic Blade, Shock Mauls and Shield
		-- ["loc_attack_speed_on_perfect_block"] = {
		-- },
		--[+ CRANIAL GROUNDING +]-- руоф Черепное заземление	08.04.2026
		-- Power Falchions, Relic Blade
		-- ["loc_chained_weakspot_hits_increase_finesse_and_reduce_overheat"] = {
		-- },
		--[+ OVERLOAD +]-- руоф Перегрузка	08.04.2026
		-- Power Falchions, Relic Blade
		-- ["loc_explosion_on_overheat_lockout"] = {
		-- },
		--[+ ENERGY LEAKAGE +]-- руоф Утечка энергии	08.04.2026
		-- Power Falchions, Relic Blades
		-- ["loc_power_bonus_scaled_on_heat"] = {
		-- },
		--[+ HEATSINK +]-- руоф Теплоотвод	08.04.2026
		-- Power Falchions, Relic Blades
		-- ["loc_reduce_fixed_overheat_amount"] = {
		-- },
		--[+ SYPHON +]-- руоф Сифон	08.04.2026
		-- Relic Blade
		["loc_trait_bespoke_regain_toughness_on_multiple_hits_by_weapon_special"] = {
			ru = "Высасывание",
		},
		--[+ ENERGY TRANSFER +]-- руоф Передача энергии	08.04.2026
		-- Power Falchions, Relic Blades
		-- ["loc_slower_heat_buildup_on_perfect_block"] = {
		-- },
		--[+ SHOCK & AWE / SHOCK AND AWE +]-- руоф Шок и трепет	08.04.2026
		-- Bone Saw, Thunder Hammers
		["loc_trait_bespoke_hit_mass_consumption_reduction_on_kill"] = {
			["zh-tw"] = "震懾",
		},
		--[+ TAKE A SWING +]-- руоф Замах	08.04.2026
		-- Crowbar, Sapper Shovels
		["loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies"] = {
			["zh-tw"] = "揮拳出擊",
		},
		--[+ SUPERCHARGE +]-- руоф Суперзаряд	08.04.2026
		-- Power Maul, Power Swords
		["loc_trait_bespoke_armor_rend_on_activated_attacks"] = {
			["zh-tw"] = "超級充能",
		},
		--[+ POWER CYCLER +]-- руоф Цикл силы	08.04.2026
		-- Power Swords
		["loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks"] = {
			ru = "Энергоцикл",
			["zh-tw"] = "能量循環",
		},
		--[+ SUNDER +]-- руоф Сандер	08.04.2026
		-- Power Swords
		["loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks"] = {
			ru = "Рассечение",
			["zh-tw"] = "破甲",
		},
		--[+ SUCKER PUNCH +]-- руоф Удар исподтишка	08.04.2026
		-- Latrine Shovels
		["loc_trait_bespoke_increased_crit_chance_after_punch"] = {
			["zh-tw"] = "突然襲擊",
		},
		--[+ CONFIDENT STRIKE +]-- руоф Уверенный удар	08.04.2026
		-- Arbites Shock Maul, Battle Maul and Shield, Bully Clubs, Cleavers, Latrine Shovels, Pickaxes, Power Maul, Shock Mauls and Shield
		["loc_trait_bespoke_toughness_recovery_on_chained_attacks"] = {
			["zh-tw"] = "堅定打擊",
		},
		--[+ NO GUTS, NO GLORY +]-- руоф Нет смелости — нет славы	08.04.2026
		-- Bully Clubs
		["loc_trait_bespoke_toughness_regen_on_punching_elites"] = {
			["zh-tw"] = "不入虎穴，焉得虎子",
		},
		--[+ BASH +]-- руоф Удар	08.04.2026
		-- Cleavers, Crowbar
		["loc_trait_bespoke_crit_chance_on_push"] = {
			["zh-tw"] = "猛撞",
		},
		--[+ TENDERISER +]-- руоф Молот мясника	08.04.2026
		-- Cleavers
		["loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits"] = {
			["zh-tw"] = "肉槌",
		},
		--[+ UNSTOPPABLE FORCE +]-- руоф Неудержимая сила	08.04.2026
		-- Cleavers, Crowbar
		["loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack"] = {
			["zh-tw"] = "勢不可擋",
		},
		--[+ TORMENT +]-- руоф Истязание	08.04.2026
		-- Pickaxes
		["loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"] = {
			["zh-tw"] = "凌遲",
		},
		--[+ SLOW AND STEADY +]-- руоф Медленный и упорный	08.04.2026
		-- Pickaxes
		["loc_trait_bespoke_toughness_on_hit_based_on_charge_time"] = {
			ru = "Медленно, но верно",
			["zh-tw"] = "緩慢而確實",
		},
		--[+ POWER SURGE +]-- руоф Скачок напряжения	08.04.2026
		-- Power Maul
		["loc_trait_bespoke_explosion_on_activated_attacks_on_armor"] = {
			ru = "Энерговсплеск",
			["zh-tw"] = "能量湧動",
		},
		--[+ LAST GUARD +]-- руоф Последний страж	08.04.2026
		-- Battle Maul and Shield, Shock Mauls and Shield
		["loc_trait_block_break_pushes"] = {
			["zh-tw"] = "最後防線",
		},
		--[+ OFFENSIVE DEFENCE +]-- руоф Активная оборона	08.04.2026
		-- Battle Maul and Shield, Shock Mauls and Shield
		["loc_trait_damage_bonus_on_block"] = {
			ru = "Атакующая оборона",
			["zh-tw"] = "反守為攻",
		},
		--[+ CAN OPENER +]-- руоф Открывашка !MELEE!	08.04.2026
		-- Crowbar
		-- ["loc_trait_bespoke_armor_rending_bayonette_crowbar"] = {
		-- },
		--[+ REFINED LETHALITY +]-- руоф Отточеная смертоносность	08.04.2026
		-- Bone Saw
		-- ["loc_trait_bespoke_increased_weakspot_damage_against_toxin_status"] = {
		-- },


	--[+ RANGED - ДАЛЬНИЙ БОЙ - 远程武器 +]--
		--[+ RAKING FIRE +]-- руоф Обстрел	08.04.2026
		-- Flanking Damage (per tier)
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Infantry Autoguns, Laspistols
		["loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking"] = {
			ru = "Огонь по тылам",
			["zh-tw"] = "掃射",
		},
		--[+ DUMDUM +]-- руоф Дамдам	08.04.2026
		-- Infantry Autoguns, Laspistols, Recon Lasguns
		["loc_trait_bespoke_consecutive_hits_increases_close_damage"] = {
			ru = "Дум-дум",
			["zh-tw"] = "達姆彈",
		},
		--[+ HIT & RUN / HIT AND RUN +]-- руоф Бей и беги	08.04.2026
		-- Braced Autoguns, Combat Shotguns, Double-Barrel Shotgun, Dual Stub Pistols, Infantry Autoguns, Recon Lasguns
		["loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill"] = {
			["zh-tw"] = "游擊",
		},
		--[+ SUSTAINED FIRE +]-- руоф Непрерывный огонь	08.04.2026
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Electrokinetic Staff, Exterminator Shotguns, Helbore Lasguns, Infantry Autoguns, Recon Lasguns, Stub Revolvers, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_followup_shots_ranged_damage"] = {
			ru = "Непрерывная стрельба",
			["zh-tw"] = "持續射擊",
		},
		--[+ PUNISHING SALVO +]-- руоф Карательный залп	08.04.2026
		-- Exterminator Shotguns, Infantry Autoguns, Recon Lasguns
		["loc_trait_bespoke_followup_shots_ranged_weakspot_damage"] = {
			["zh-tw"] = "懲罰射擊",
		},
		--[+ FIRE FRENZY +]-- руоф Огненное неистовство	08.04.2026
		-- Boltguns, Braced Autoguns, Combat Shotguns, Exterminator Shotguns, Twin-Linked Stubbers, Infantry Autoguns, Ripper Guns, Shotpistol and Shield
		["loc_trait_bespoke_increase_close_damage_on_close_kill"] = {
			ru = "Неистовая стрельба",
			["zh-tw"] = "烈火熱焰",
		},
		--[+ DEATHSPITTER +]-- руоф Смертоносец	08.04.2026
		-- Braced Autoguns, Combat Shotguns, Exterminator Shotguns, Twin-Linked Stubbers, Infantry Autoguns, Recon Lasguns, Shotpistol and Shield, Double-Barrel Shotgun
		["loc_trait_bespoke_increase_power_on_close_kill"] = {
			ru = "Смертоплюй",
			["zh-tw"] = "死亡噴吐",
		},
		--[+ STRIPPED DOWN +]-- руоф Срез	08.04.2026
		-- Braced Autoguns, Infantry Autoguns, Needle Pistols, Recon Lasguns
		["loc_trait_bespoke_increased_sprint_speed"] = {
			ru = "Сбросить лишнее",
			["zh-tw"] = "輕裝",
		},
		--[+ SPEEDLOAD +]-- руоф Скоростная загрузка	08.04.2026
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Braced Autoguns, Infantry Autoguns, Double-Barrel Shotgun, Laspistols, Needle Pistols, Recon Lasguns, Shotpistol and Shield, Stub Revolvers
		["loc_trait_bespoke_reload_speed_on_slide"] = {
			ru = "Быстрая перезарядка",
			["zh-tw"] = "快速裝彈",
		},
		--[+ TERRIFYING BARRAGE +]-- руоф Устрашающий натиск	08.04.2026
		-- Autopistol, Boltguns, Braced Autoguns, Combat Shotguns, Double-Barrel Shotgun, Dual Autopistols, Dual Stub Pistols, Electrokinetic Staff, Twin-Linked Stubbers, Infantry Autoguns, Inferno Staff, Kickback, Ripper Guns, Stub Revolvers, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_suppression_on_close_kill"] = {
			ru = "Ужасающий шквал",
			["zh-tw"] = "恐怖阻擊",
		},
		--[+ ROARING ADVANCE +]-- руоф Ревущее наступление	08.04.2026
		-- Braced Autoguns, Twin-Linked Stubbers
		["loc_trait_bespoke_movement_speed_on_continuous_fire"] = {
			["zh-tw"] = "咆哮突進",
		},
		--[+ CEASELESS BARRAGE +]-- руоф Беспощадный натиск	08.04.2026
		-- Braced Autoguns, Twin-Linked Stubbers
		["loc_trait_bespoke_suppression_on_continuous_fire"] = {
			ru = "Бесконечный шквал",
			["zh-tw"] = "持續阻擊",
		},
		--[+ INSPIRING BARRAGE +]-- руоф Вдохновляющий натиск	08.04.2026
		-- Autopistol, Boltguns, Braced Autoguns, Dual Autopistols, Flamer, Heavy Stubbers, Twin-Linked Stubbers, Ripper Guns
		["loc_trait_bespoke_toughness_on_continuous_fire"] = {
			ru = "Вдохновляющий шквал",
			["zh-tw"] = "振奮彈幕",
		},
		--[+ GHOST +]-- руоф Призрак	08.04.2026
		-- Infantry Lasguns, Laspistols, Needle Pistols, Vigilant Autoguns
		["loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot"] = {
			["zh-tw"] = "幽靈",
		},
		--[+ SURGICAL +]-- руоф Зоркость	08.04.2026
		-- Boltguns, Heavy Stubbers, Kickback, Vigilant Autoguns, Bolt Pistols, Helbore Lasguns, Stub Revolvers
		["loc_trait_bespoke_crit_chance_based_on_aim_time"] = {
			ru = "Хирургическая точность",
			["zh-tw"] = "精確打擊",
		},
		--[+ CRUCIAN ROULETTE +]-- руоф Круцианская рулетка	08.04.2026
		-- Dual Stub Pistols, Stub Revolvers, Vigilant Autoguns
		["loc_trait_bespoke_crit_chance_based_on_ammo_left"] = {
			["zh-tw"] = "克魯錫安輪盤",
		},
		--[+ DEADLY ACCURATE +]-- руоф Смертоностная точность	08.04.2026
		-- Bolt Pistols, Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns
		["loc_trait_bespoke_crit_weakspot_finesse"] = {
			["zh-tw"] = "致命精準",
		},
		--[+ NO RESPITE +]-- руоф Нет отдыху	08.04.2026
		-- Combat Shotguns, Helbore Lasguns, Infantry Lasguns, Shotpistol and Shield, Vigilant Autoguns
		["loc_trait_bespoke_stagger_count_bonus_damage"] = {
			ru = "Без передышки",
			["zh-tw"] = "刻不容緩",
		},
		--[+ OPENING SALVO +]-- руоф Открывающий залп	08.04.2026
		-- Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns
		-- ["loc_trait_bespoke_power_bonus_on_first_shot"] = {
		-- },
		--[+ HEADHUNTER +]-- руоф Охотник за головами	08.04.2026
		-- Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns, Recon Lasguns
		-- ["loc_trait_bespoke_weakspot_stacking_crit_chance"] = {
		-- },
		--[+ BETWEEN THE EYES +]-- руоф Промеж глаз	08.04.2026
		-- Infantry Lasguns, Laspistols, Needle Pistols, Vigilant Autoguns
		["loc_trait_bespoke_suppression_negation_on_weakspot"] = {
			["zh-tw"] = "開啟齊射",
		},
		--[+ BLAZE AWAY +]-- руоф Энтузиазм	08.04.2026
		-- Autopistol, Dual Autopistols, Flamer, Heavy Stubbers, Twin-Linked Stubbers, Ripper Guns
		["loc_trait_bespoke_power_bonus_on_continuous_fire"] = {
			ru = "Стрельба без устали",
			["zh-tw"] = "連續發射",
		},
		--[+ POWDERBURN +]-- руоф Пороховой ожог	08.04.2026
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Exterminator Shotguns
		["loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills"] = {
			["zh-tw"] = "火藥灼傷",
		},
		--[+ CAVALCADE +]-- руоф Кавалькада	08.04.2026
		-- Autopistol, Boltguns, Heavy Stubbers, Ripper Guns
		["loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire"] = {
			["zh-tw"] = "接連不斷",
		},
		--[+ PINNING FIRE +]-- руоф Схватывающий огонь	08.04.2026
		-- Autopistol, Boltguns, Dual Autopistols, Dual Stub Pistols, Heavy Stubbers
		["loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies"] = {
			ru = "Подавляющий огонь",
			["zh-tw"] = "鉗制射擊",
		},
		--[+ RUN 'N' GUN - RUN AND GUN +]-- руоф Стреляй и беги	08.04.2026
		-- Bolt Pistols, Dual Autopistols, Dual Stub Pistols, Electrokinetic Staff, Inferno Staff, Kickback, Needle Pistols, Shotpistol and Shield, Stub Revolvers, Voidblast Staff, Voidstrike Staff, Double-Barrel Shotgun
		["loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats"] = {
			["zh-tw"] = "連跑帶打",
		},
		--[+ PUNCTURE +]-- руоф Прокол	08.04.2026
		-- Boltguns, Bolt Pistols
		["loc_trait_bespoke_bleed_on_ranged"] = {
			["zh-tw"] = "出血穿透",
		},
		--[+ LETHAL PROXIMITY +]-- руоф Смертельное сближение	08.04.2026
		-- Bolt Pistols
		["loc_trait_bespoke_close_explosion"] = {
			["zh-tw"] = "致命零距離",
		},
		--[+ POINT BLANK +]-- руоф В упор	08.04.2026
		-- Bolt Pistols, Needle Pistols, Stub Revolvers
		["loc_trait_bespoke_crit_chance_bonus_on_melee_kills"] = {
			["zh-tw"] = "近身平射",
		},
		--[+ EXECUTION +]-- руоф Казнь	08.04.2026
		-- Bolt Pistols, Exterminator Shotguns
		["loc_trait_bespoke_damage_vs_stagger"] = {
			["zh-tw"] = "處決",
		},
		--[+ GLORYHUNTER +]-- руоф Охотник за славой	08.04.2026
		-- Boltguns, Heavy Stubbers, Needle Pistols, Plasma Gun, Bolt Pistols, Stub Revolvers, Grenadier Gauntlet, Rumbler
		["loc_trait_bespoke_toughness_on_elite_kills"] = {
			["zh-tw"] = "榮耀獵手",
		},
		--[+ SURGE +]-- руоф Импульс	08.04.2026
		-- Electrokinetic Staff, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_double_shot_on_crit"] = {
			ru = "Всплеск",
			["zh-tw"] = "湧動",
		},
		--[+ SURGE +]-- руоф Импульс !DOUBLE!	08.04.2026
		-- Electrokinetic Staff, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_double_shot_on_crit_and_crit_chance"] = {
			ru = "Всплеск",
			["zh-tw"] = "湧動",
		},
		--[+ WARP FLURRY +]-- руоф Варп-шквал	08.04.2026
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_faster_charge_on_chained_secondary_attacks"] = {
			["zh-tw"] = "亞空間亂舞",
		},
		--[+ WARP NEXUS +]-- руоф Варп-сектор	08.04.2026
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_increased_crit_chance_scaled_on_peril"] = {
			ru = "Связь с варпом",
			["zh-tw"] = "亞空間樞紐",
		},
		--[+ TRANSFER PERIL +]-- руоф Перемещение угрозы	08.04.2026
		-- Electrokinetic Staff, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_peril_vent_on_weakspot_hit"] = {
			ru = "Перемещение опасности",
			["zh-tw"] = "轉移反噬",
		},
		--[+ RENDING SHOCKWAVE +]-- руоф Разрушительная волна	08.04.2026
		-- Voidblast Staff
		["loc_trait_bespoke_rend_armor_on_aoe_charge"] = {
			["zh-tw"] = "撕扯震盪",
		},
		--[+ FOCUSED CHANNELLING +]-- руоф Сосредоточенный призыв	08.04.2026
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_uninterruptable_while_charging_and_movement"] = {
			["zh-tw"] = "專注引導",
		},
		--[+ BLAZING SPIRIT +]-- руоф Пламенный дух	08.04.2026
		-- Voidblast Staff, Voidstrike Staff
		["loc_trait_bespoke_warpfire_burn_on_crit"] = {
			ru = "Пылающий дух",
			["zh-tw"] = "燃燒靈魂",
		},
		--[+ PENETRATING FLAME +]-- руоф Убойное пламя	08.04.2026
		-- Flamer, Inferno Staff
		["loc_trait_bespoke_armor_rending_from_dot_burning"] = {
			ru = "Проникающее пламя",
			["zh-tw"] = "穿透火焰",
		},
		--[+ SHOWSTOPPER +]-- руоф Театральная пауза	08.04.2026
		-- Flamer, Inferno Staff
		["loc_trait_bespoke_chance_to_explode_elites_on_kill"] = {
			ru = "Взрывной финал",
			["zh-tw"] = "嘆為觀止",
		},
		--[+ INFERNUS +]-- руоф Инфернус	08.04.2026
		-- Helbore Lasguns, Infantry Lasguns, Laspistols, Recon Lasguns
		["loc_trait_bespoke_burninating_on_crit"] = {
			["zh-tw"] = "煉獄",
		},
		--[+ EFFICIENCY +]-- руоф Эффективность	08.04.2026
		-- Infantry Lasguns
		["loc_trait_bespoke_first_shot_ammo_cost_reduction"] = {
			["zh-tw"] = "效率",
		},
		--[+ CONCENTRATED FIRE +]-- руоф Интенсивный огонь	08.04.2026
		-- Laspistols, Needle Pistols
		["loc_trait_bespoke_crit_chance_on_chained_weakspot_hits"] = {
			ru = "Сосредоточенный огонь",
			["zh-tw"] = "集中火力",
		},
		--[+ DESPERADO +]-- руоф Сорвиголова	08.04.2026
		-- Dual Stub Pistols, Laspistols, Needle Pistols
		["loc_trait_bespoke_crit_chance_on_successful_dodge"] = {
			["zh-tw"] = "亡命之徒",
		},
		--[+ REASSURINGLY ACCURATE +]-- руоф Внушительная точность	08.04.2026
		-- Grenadier Gauntlet, Laspistols
		["loc_trait_bespoke_toughness_on_crit_kills"] = {
			ru = "Успокаивающая точность",
			["zh-tw"] = "慰藉精準",
		},
		--[+ FLECHETTE +]-- руоф Флешетта	08.04.2026
		-- Combat Shotguns, Double-Barrel Shotgun, Ripper Guns
		["loc_trait_bespoke_bleed_on_crit_ranged"] = {
			["zh-tw"] = "飛鏢彈",
		},
		--[+ MAN-STOPPER +]-- руоф Усмирение	08.04.2026
		-- Combat Shotguns, Double-Barrel Shotgun, Shotpistol and Shield
		["loc_trait_bespoke_cleave_on_crit"] = {
			ru = "Тяжёлый боеприпас",
			["zh-tw"] = "大口徑彈藥",
		},
		--[+ SCATTERSHOT +]-- руоф Разброс	08.04.2026
		-- Combat Shotguns, Double-Barrel Shotgun, Exterminator Shotguns, Shotpistol and Shield
		["loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot"] = {
			ru = "Картечь",
			["zh-tw"] = "散彈",
		},
		--[+ FULL BORE +]-- руоф Напор	08.04.2026
		-- Combat Shotguns, Double-Barrel Shotgun, Exterminator Shotguns, Shotpistol and Shield, Kickback
		["loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all"] = {
			ru = "Полный калибр",
			["zh-tw"] = "全孔射擊",
		},
		--[+ BOTH BARRELS +]-- руоф Дуплет	08.04.2026
		-- Double-Barrel Shotgun
		["loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill"] = {
			["zh-tw"] = "雙管齊發",
		},
		--[+ TRICKSHOOTER +]-- руоф Меткий стрелок	08.04.2026
		-- Stub Revolvers
		["loc_trait_bespoke_power_bonus_on_chained_weakspot_hits"] = {
			["zh-tw"] = "狡猾射手",
		},
		--[+ HAND-CANNON +]-- руоф Ручная пушка	08.04.2026
		-- Stub Revolvers
		["loc_trait_bespoke_rending_on_crit"] = {
			["zh-tw"] = "手銃",
		},
		--[+ SHATTERING IMPACT +]-- руоф Рассеивающий импульс	08.04.2026
		-- Boltguns, Grenadier Gauntlet, Plasma Gun, Rumbler
		["loc_trait_bespoke_armor_rend_on_projectile_hit"] = {
			ru = "Разрушительный удар",
			["zh-tw"] = "破碎衝擊",
		},
		--[+ EVERLASTING FLAME +]-- руоф Бесконечное пламя	08.04.2026
		-- Flamer
		["loc_trait_bespoke_ammo_spent_from_reserve_on_crit"] = {
			ru = "Неугасимое пламя",
			["zh-tw"] = "永燃烈焰",
		},
		--[+ QUICKFLAME +]-- руоф Воспламенение	08.04.2026
		-- Flamer
		["loc_trait_bespoke_faster_reload_on_empty_clip"] = {
			ru = "Скорое пламя",
			["zh-tw"] = "迅捷火焰",
		},
		--[+ FAN THE FLAMES +]-- руоф Раздувая пламя	08.04.2026
		-- Flamer
		["loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning"] = {
			ru = "Раздуй пламя",
			["zh-tw"] = "煽風點火",
		},
		--[+ OVERPRESSURE +]-- руоф Избыточное давление	08.04.2026
		-- Flamer
		["loc_trait_bespoke_power_scales_with_clip_percentage"] = {
			["zh-tw"] = "超壓",
		},
		--[+ HOT-SHOT +]-- руоф В точку	08.04.2026
		-- Helbore Lasguns, Needle Pistols
		["loc_trait_bespoke_cleave_on_weakspot_hits"] = {
			ru = "Прожигающий выстрел",
			["zh-tw"] = "激射",
		},
		--[+ WEIGHT OF FIRE +]-- руоф Плотность огня	08.04.2026
		-- Helbore Lasguns
		["loc_trait_bespoke_faster_charge_on_chained_attacks"] = {
			["zh-tw"] = "猛攻",
		},
		--[+ ARMOURBANE +]-- руоф Бронебой	08.04.2026
		-- Helbore Lasguns
		["loc_trait_bespoke_rend_armor_on_charged_shots"] = {
			["zh-tw"] = "護甲之禍",
		},
		--[+ POWER BLAST +]-- руоф Мощный взрыв	08.04.2026
		-- Plasma Gun
		["loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time"] = {
			ru = "Энерговзрыв",
			["zh-tw"] = "聚能爆發",
		},
		--[+ GETS HOT! +]-- руоф Становится жарко!	08.04.2026
		-- Plasma Gun
		["loc_trait_bespoke_crit_chance_scaled_on_heat"] = {
			ru = "Перегрев!",
			["zh-tw"] = "燃起來!",
		},
		--[+ VOLATILE +]-- руоф Испарение	08.04.2026
		-- Plasma Gun
		["loc_trait_bespoke_lower_overheat_gives_faster_charge"] = {
			ru = "Нестабильность",
			["zh-tw"] = "熱力震盪",
		},
		--[+ BLAZE AWAY +]-- ALT OGRYN руоф Энтузиазм	08.04.2026
		-- Grenadier Gauntlet, Inferno Staff, Plasma Gun, Kickback, Rumbler
		["loc_trait_bespoke_power_bonus_on_continuous_fire_alternative"] = {
			ru = "Стрельба без устали",
			["zh-tw"] = "連續發射",
		},
		--[+ RISING HEAT +]-- руоф Сильная жара	08.04.2026
		-- Plasma Gun
		["loc_trait_bespoke_power_bonus_scaled_on_heat"] = {
			ru = "Нарастающий жар",
			["zh-tw"] = "升溫",
		},
		--[+ OPTIMISED COOLING +]-- руоф Оптимизированное охлаждение	08.04.2026
		-- Plasma Gun
		["loc_trait_bespoke_reduced_heat_on_continuous"] = {
			["zh-tw"] = "優化冷卻",
		},
		--[+ FOCUSED COOLING +]-- руоф Сосредоточенное охлаждение	08.04.2026
		-- Plasma Gun
		["loc_trait_bespoke_reduced_overheat_on_crits"] = {
			["zh-tw"] = "專注冷卻",
		},
		--[+ GAUNTLET MOMENTUM +]-- руоф Перчатка моментума	08.04.2026
		-- Grenadier Gauntlet
		["loc_trait_bespoke_power_bonus_on_chained_melee"] = {
			ru = "Инерция перчатки",
			["zh-tw"] = "交叉動量",
		},
		--[+ PULVERISE +]-- руоф Пульверизация	08.04.2026
		-- Grenadier Gauntlet
		["loc_trait_bespoke_crit_chance_on_melee_kill"] = {
			ru = "Измельчение",
			["zh-tw"] = "粉碎",
		},
		--[+ DISRUPTIVE +]-- руоф Разрывной эффект	08.04.2026
		-- Grenadier Gauntlet
		["loc_trait_bespoke_melee_power_bonus_after_explosion"] = {
			["zh-tw"] = "顛覆性力量",
		},
		--[+ EXPLOSIVE OFFENSIVE +]-- руоф Взрывное наступление	08.04.2026
		-- Grenadier Gauntlet
		["loc_trait_bespoke_power_bonus_after_weapon_special_multiple"] = {
			["zh-tw"] = "爆炸使我強大",
		},
		--[+ PINPOINTING TARGET +]-- руоф Определение цели	08.04.2026
		-- Grenadier Gauntlet, Shotpistol and Shield
		["loc_trait_bespoke_power_bonus_based_on_charge_time_ranged"] = {
			["zh-tw"] = "精確定位",
		},
		--[+ CHARMED RELOAD +]-- руоф Зачарованная перезарядка	08.04.2026
		-- Twin-Linked Stubbers
		["loc_trait_bespoke_ammo_refill_from_reserve_on_crit"] = {
			["zh-tw"] = "魔力彈藥",
		},
		--[+ OVERWHELMING FIRE +]-- руоф Огонь на поражение	08.04.2026
		-- Heavy Stubbers, Twin-Linked Stubbers
		["loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target"] = {
			ru = "Подавляющий огонь",
			["zh-tw"] = "壓倒性火力",
		},
		--[+ CAN OPENER +]-- руоф Открывашка	08.04.2026
		-- Ripper Guns
		["loc_trait_bespoke_armor_rending_bayonette"] = {
			["zh-tw"] = "開罐器",
		},
		--[+ BORN IN BLOOD +]-- руоф Рожденный в крови	08.04.2026
		-- Dual Stub Pistols, Exterminator Shotguns, Ripper Guns
		["loc_trait_bespoke_toughness_on_close_range_kills"] = {
			ru = "Рождённый в крови",
			["zh-tw"] = "浴血而生",
		},
		--[+ PIERCE +]-- руоф Прокол	08.04.2026
		-- Kickback, Rumbler
		["loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger"] = {
			ru = "Пробивание",
			["zh-tw"] = "穿透",
		},
		--[+ PUNISHING FIRE +]-- руоф Карательный обстрел	08.04.2026
		-- Kickback
		["loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave"] = {
			["zh-tw"] = "懲罰射擊",
		},
		--[+ INSPIRING BARRAGE +]-- ALT OGRYN руоф Вдохновляющий натиск	08.04.2026
		-- Kickback
		["loc_trait_bespoke_toughness_on_continuous_fire_alternative"] = {
			ru = "Вдохновляющий шквал",
			["zh-tw"] = "激勵彈幕",
		},
		--[+ EXPANSIVE +]-- руоф Расширение	08.04.2026
		-- Kickback
		["loc_trait_bespoke_weapon_special_power_bonus_after_one_shots"] = {
			ru = "Экспансивный",
			["zh-tw"] = "擴展性",
		},
		--[+ SHRAPNEL +]-- руоф Шрапнель	08.04.2026
		-- Rumbler
		["loc_trait_bespoke_close_explosion_applies_bleed"] = {
			["zh-tw"] = "破片四射",
		},
		--[+ BLAST ZONE +]-- руоф Зона взрыва	08.04.2026
		-- Rumbler
		["loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire"] = {
			["zh-tw"] = "狂轟猛炸",
		},
		--[+ ADHESIVE CHARGE +]-- руоф Цепной заряд	08.04.2026
		-- Rumbler
		["loc_trait_bespoke_grenades_stick_to_monsters_and_damage"] = {
			ru = "Липкий заряд",
			["zh-tw"] = "黏著炸藥",
		},
		--[+ MARKSMAN'S REFLEX +]-- руоф Рефлекс стрелка	08.04.2026
		-- Rumbler
		["loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed"] = {
			["zh-tw"] = "迅雷反射",
		},


--[+ ++TALENTS - ТАЛАНТЫ ++ +]--
	--[+ +NODES - УЗЛЫ+ +]--
		--[+ Cleave Boost Medium +]-- руоф Усиление «Раскола»	08.04.2026
		-- Arbites 1
		["loc_talent_cleave_boost_medium"] = {
			en = "Cleave Boost Medium",
			ru = "Усиление рассечения среднее",
		},
		--[+ Critical Chance Boost +]-- руоф Усиление вероятности крит. удара	08.04.2026
		-- Psyker 1, Scum 1
		["loc_talent_crit_chance_low"] = {
			en = "Critical Chance Boost",
			ru = "Усиление шанса критического удара",
			["zh-tw"] = "暴擊機率增幅",
		},
		--[+ Impact Boost +]-- руоф Усиление подчинения	08.04.2026
		-- Arbites 1
		["loc_talent_impact_boost_medium"] = {
			en = "Impact Boost",
			ru = "Усиление выведения из равновесия",
		},
		--[+ Melee Damage Boost Low - Medium +]-- руоф Усиление урона в ближнем бою	08.04.2026
		-- Psyker 1, Zealot 2, Ogryn 1, Arbites 1, Veteran 1, Scum 1
		["loc_talent_melee_damage_boost_medium"] = {
			ru = "Усиление урона ближнего боя",
			-- ["zh-tw"] = "重擊傷害增幅",
		},
		--[+ Movement Speed Boost +]-- руоф Усиление скорости передвижения	08.04.2026
		-- Psyker 1, Zealot 1, Veteran 1
		["loc_talent_movement_speed_low"] = {
			ru = "Усиление скорости движения",
			["zh-tw"] = "移動速度增幅",
		},
		--[+ Peril Resistance Low +]-- руоф Сопротивление угрозе	08.04.2026
		-- Psyker 1
		["loc_talent_warp_charge_low"] = {
			ru = "Сопротивление опасности",
			["zh-tw"] = "反噬抗性",
		},
		--[+ Ranged Damage Boost Medium +]-- руоф Усиление урона в дальнем бою	08.04.2026
		-- Psyker 1, Ogryn 1, Arbites 1, Veteran 1
		["loc_talent_ranged_damage_medium"] = {
			ru = "Усиление урона дальнего боя",
			-- ["zh-tw"] = "遠程傷害增幅",
		},
		--[+ Reload Boost Low +]-- руоф Усиление перезарядки	08.04.2026
		-- Ogryn 1
		["loc_talent_reload_speed_low"] = {
			ru = "Reload Boost Low",
			ru = "Усиление скорости перезарядки малое",
			["zh-tw"] = "換彈速度增幅(小)",
		},
		--[+ Reload Boost Medium +]-- руоф Усиление перезарядки	08.04.2026
		-- Veteran 1
		["loc_talent_reload_speed_medium"] = {
			ru = "Reload Boost Medium",
			ru = "Усиление скорости перезарядки среднее",
			["zh-tw"] = "換彈速度增幅(中)",
		},
		--[+ Rending Boost Low +]-- руоф Усиление «Терзания»	08.04.2026
		-- Ogryn 1
		["loc_talent_armor_pen_low"] = {
			ru = "Усиление пробивания брони",
			["zh-tw"] = "撕裂增強",
		},
		--[+ Stamina Boost Low +]-- руоф Усиление выносливости	08.04.2026
		-- Psyker 1, Veteran 1
		["loc_talent_stamina_low"] = {
			["zh-tw"] = "耐力增幅",
		},
		--[+ Stamina Regeneration Boost +]-- руоф Усиление восстановления выносливости	08.04.2026
		-- Veteran 1
		["loc_talent_stamina_regen_delay"] = {
			["zh-tw"] = "耐力恢復增幅",
		},
		--[+ Toughness Boost Low +]-- руоф Усиление стойкости	08.04.2026
		-- Ogryn 1, Veteran 1
		["loc_talent_toughness_boost_low"] = {
			en = "Toughness Boost Low",
			ru = "Усиление стойкости малое",
			["zh-tw"] = "韌性增幅(小)",
		},
		--[+ Toughness Boost Medium +]-- руоф Усиление стойкости	08.04.2026
		-- Psyker 2, Zealot 1, Ogryn 2, Veteran 2, Scum 2
		["loc_talent_toughness_boost_medium"] = {
			en = "Toughness Boost Medium",
			ru = "Усиление стойкости среднее",
			["zh-tw"] = "韌性增幅(中)",
		},
		--[+ Toughness Damage Reduction Low +]-- руоф Снижение урона стойкости	08.04.2026
		-- Psyker 1, Ogryn 1
		["loc_talent_toughness_damage_reduction_low"] = {
			en = "Toughness Damage Reduction Low",
			ru = "Снижение урона стойкости малое",
			["zh-tw"] = "韌性減傷(小)",
		},
		--[+ Toughness Damage Reduction Medium +]-- руоф Снижение урона стойкости	08.04.2026
		-- Psyker 1, Zealot 1, Ogryn 1, Arbites 1, Veteran 1
		["loc_talent_toughness_damage_reduction_medium"] = {
			en = "Toughness Damage Reduction Medium",
			ru = "Снижение урона стойкости среднее",
			["zh-tw"] = "韌性減傷(中)",
		},
		--[+ Potent Tox +]-- руоф Мощный токсин	08.04.2026
		-- Scum 1
		-- ["loc_talent_toxin_damage_boost"] = {
		-- },


--[+ ++PSYKER - ПСАЙКЕР - 靈能者 ++ +]--
	--[+ +BLITZ - БЛИЦ - 閃擊 + +]--
		--[+ BLITZ 0 - Brain Burst +]-- руоф Взрыв разума	08.04.2026
		["loc_ability_psyker_smite"] = {
			ru = "Взрыв мозга",
			["zh-tw"] = "顱腦爆裂",
		},
		--[+ BLITZ 1 - Brain Rupture +]-- руоф Разрыв мозга	08.04.2026
		["loc_talent_psyker_brain_burst_improved"] = {
			["zh-tw"] = "顱腦崩裂",
		},
		--[+ BLITZ 1-1 - Kinetic Resonance +]-- руоф Кинетический резонанс	08.04.2026
		["loc_talent_psyker_ability_increase_brain_burst_speed"] = {
			["zh-tw"] = "動能共鳴",
		},
		--[+ BLITZ 1-2 - Kinetic Flayer +]-- руоф Кинетический истребитель	08.04.2026
		["loc_talent_psyker_smite_on_hit"] = {
			ru = "Кинетический живодёр",
			["zh-tw"] = "動能剝皮者",
		},
		--[+ BLITZ 2 - Smite +]-- руоф Сокрушение	08.04.2026
		["loc_ability_psyker_chain_lightning"] = {
			["zh-tw"] = "懲戒",
		},
		--[+ BLITZ 2-1 - Charged Strike +]-- руоф Заряженный удар	08.04.2026
		["loc_talent_psyker_chain_lightning_heavy_attacks"] = {
			["zh-tw"] = "蓄力打擊",
		},
		--[+ BLITZ 2-2 - Enfeeble +]-- руоф Ослабление	08.04.2026
		["loc_talent_psyker_increased_chain_lightning_improved_target_buff"] = {
			["zh-tw"] = "衰弱詛咒",
		},
		--[+ BLITZ 3 - Assail +]-- руоф Нападение	08.04.2026
		["loc_ability_psyker_blitz_throwing_knives"] = {
			["zh-tw"] = "靈能攻擊",
		},
		--[+ BLITZ 3-1 - Ethereal Shards +]-- руоф Эфирные частицы	08.04.2026
		["loc_talent_psyker_throwing_knives_pierce"] = {
			ru = "Эфирные осколки",
			["zh-tw"] = "乙太碎片",
		},
		--[+ BLITZ 3-2 - Quick Shards +]-- руоф Быстрые частицы	08.04.2026
		["loc_talent_psyker_throwing_knives_reduced_cooldown"] = {
			ru = "Быстрые осколки",
			["zh-tw"] = "迅捷碎片",
		},
	--[+ +AURA - АУРА - 光環 + +]--
		--[+ AURA 0 - The Quickening +]-- руоф Ускорение	08.04.2026
		["loc_talent_psyker_aura_reduced_ability_cooldown"] = {
			["zh-tw"] = "加速",
		},
		--[+ AURA 1 - Kinetic Presence +]-- руоф Кинетическое присутствие	08.04.2026
		["loc_talent_psyker_base_3"] = {
			["zh-tw"] = "動能釋放",
		},
		--[+ AURA 2 - Seer's Presence +]-- руоф Присутствие провидца	08.04.2026
		["loc_talent_psyker_cooldown_aura_improved"] = {
			["zh-tw"] = "先知之眼",
		},
		--[+ AURA 3 - Prescience +]-- руоф Предвидение	08.04.2026
		["loc_ability_psyker_gunslinger_aura"] = {
			["zh-tw"] = "預兆",
		},
	--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
		--[+ ABILITY 0 - Psykinetic's Wrath +]-- руоф Психокинетический гнев	08.04.2026
		["loc_talent_psyker_2_combat"] = {
			ru = "Гнев психокинетика",
			["zh-tw"] = "靈能學者之怒",
		},
		--[+ ABILITY 1 - Venting Shriek +]-- руоф Вырвавшийся вопль	08.04.2026
		["loc_talent_psyker_shout_vent_warp_charge"] = {
			ru = "Сбрасывающий вопль",
			["zh-tw"] = "靈能尖嘯",
		},
		--[+ ABILITY 1-1 - Warp Rupture +]-- руоф Варп-разрыв	08.04.2026
		["loc_talent_psyker_shout_damage_per_warp_charge"] = {
			ru = "Разрыв варпа",
			["zh-tw"] = "亞空間爆發",
		},
		--[+ ABILITY 1-2 - Becalming Eruption +]-- руоф Затихающее извержение	08.04.2026
		["loc_talent_psyker_shout_reduces_warp_charge_generation"] = {
			ru = "Успокаивающее извержение",
			["zh-tw"] = "平靜进發",
		},
		--[+ ABILITY 1-3 - Warp Creeping Flames +]-- руоф Раздувающееся пламя	08.04.2026
		["loc_talent_psyker_warpfire_on_shout"] = {
			ru = "Ползучее пламя",
			["zh-tw"] = "蔓延火焰",
		},
		--[+ ABILITY 2 - Telekine Shield +]-- руоф Телекинетический щит	08.04.2026
		["loc_talent_psyker_combat_ability_shield"] = {
			["zh-tw"] = "念力護盾",
		},
		--[+ ABILITY 2-1 - Bolstered Shield +]-- руоф Усиленный щит	08.04.2026
		["loc_talent_psyker_force_field_charges"] = {
			["zh-tw"] = "強化護盾",
		},
		--[+ ABILITY 2-2 - Enervating Threshold +]-- руоф Порог ослабления	08.04.2026
		["loc_talent_psyker_force_field_stun_increased"] = {
			["zh-tw"] = "衰弱界線",
		},
		--[+ ABILITY 2-3 - Telekine Dome +]-- руоф Телекинический купол	08.04.2026
		["loc_talent_psyker_force_field_dome"] = {
			["zh-tw"] = "念力穹頂",
		},
		--[+ ABILITY 2-4 - Sanctuary +]-- руоф Святилище	08.04.2026
		["loc_talent_psyker_force_field_grants_toughness"] = {
			ru = "Убежище",
			["zh-tw"] = "庇護所",
		},
		--[+ ABILITY 3 - Scrier's Gaze +]-- руоф Взор Скрира	08.04.2026
		["loc_talent_psyker_combat_ability_overcharge_stance"] = {
			ru = "Взор провидца",
			["zh-tw"] = "占卜者的注視",
		},
	--[+ ABILITY 3-1 - Precognition +]-- руоф Познание	08.04.2026
		["loc_ability_psyker_overcharge_weakspot"] = {
			ru = "Предвидение",
			["zh-tw"] = "預知未來",
		},
		--[+ ABILITY 3-2 - Warp Speed +]-- руоф Варп-скорость	08.04.2026
		["loc_ability_psyker_overcharge_movement_speed"] = {
			["zh-tw"] = "亞空間加速",
		},
		--[+ ABILITY 3-3 - Reality Anchor +]-- руоф Якорь реальности	08.04.2026
		["loc_ability_psyker_overcharge_reduced_warp_charge"] = {
			["zh-tw"] = "現實錨點",
		},
		--[+ ABILITY 3-4 - Warp Unbound +]-- руоф Искажение варпа	08.04.2026
		["loc_talent_psyker_overcharge_infinite_casting"] = {
			ru = "Высвобождение варпа",
			["zh-tw"] = "亞空間突破",
		},
	--[+ +KEYSTONES - КЛЮЧЕВЫЕ ТАЛАНТЫ - 鑰石+ +]--
		--[+ KEYSTONE 1 - Warp Siphon +]-- руоф Варп-сифон	08.04.2026
		["loc_talent_psyker_souls"] = {
			ru = "Переливание варпа",
			["zh-tw"] = "亞空間虹吸",
		},
		--[+ KEYSTONE 1-1 - Inner Tranquility +]-- руоф Внутреннее спокойствие	08.04.2026
		["loc_talent_psyker_reduced_warp_charge_cost_venting_speed"] = {
			["zh-tw"] = "平心靜氣",
		},
		--[+ KEYSTONE 1-2 - Essence Harvest +]-- руоф Сбор сущности	08.04.2026
		["loc_talent_psyker_toughness_regen_on_soul"] = {
			ru = "Сбор сущностей",
			["zh-tw"] = "吸精奪萃",
		},
		--[+ KEYSTONE 1-3 - Warp Battery +]-- руоф Варп-аккумулятор	08.04.2026
		["loc_talent_psyker_increased_souls"] = {
			["zh-tw"] = "亞空間電池",
		},
		--[+ KEYSTONE 1-4 - In Fire Reborn +]-- руоф В огне восстану	08.04.2026
		["loc_talent_psyker_warpfire_generates_souls"] = {
			ru = "Возрождение в огне",
			["zh-tw"] = "涅槃",
		},
		--[+ KEYSTONE 1-5 - Psychic Vampire +]-- руоф Психический вампир	08.04.2026
		["loc_talent_psyker_souls_on_kill_coop"] = {
			["zh-tw"] = "靈能吸血鬼",
		},
		--[+ KEYSTONE 2 - Empowered Psionics +]-- руоф Усиленные псионики	08.04.2026
		["loc_talent_psyker_empowered_ability"] = {
			["zh-tw"] = "靈能強化",
		},
		--[+ KEYSTONE 2-1 - Bio-Lodestone +]-- руоф Биопритяжение	08.04.2026
		["loc_talent_psyker_increase_empower_chain_lighting_chance"] = {
			["zh-tw"] = "生物磁石",
		},
		--[+ KEYSTONE 2-2 - Psychic Leeching +]-- руоф Психическая пиявка	08.04.2026
		["loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies"] = {
			ru = "Психическое высасывание",
			["zh-tw"] = "吸血閃電",
		},
		--[+ KEYSTONE 2-3 - Overpowering Souls +]-- руоф Могучие души	08.04.2026
		["loc_talent_psyker_empowered_ability_on_elite_kills"] = {
			["zh-tw"] = "吞靈強擊",
		},
		--[+ KEYSTONE 2-4 - Charged Up +]-- руоф Зарядка	08.04.2026
		["loc_talent_psyker_increased_empowered_chain_lightning_stacks"] = {
			ru = "Заряженный",
			["zh-tw"] = "充能完畢",
		},


		-- ["loc_code"] = {
			-- ru = "",
			-- ["zh-tw"] = "",
		-- },

		-- ["loc_code"] = {
			-- en = "",
			-- ru = "",
			-- ["zh-tw"] = "",
		-- },


--[[
		--[+ KEYSTONE 3 - Disrupt Destiny +]--
		-- create_template("talent_tree_psy_keys3_000_en",
			-- {"loc_talent_psyker_marked_enemies_passive"}, {"en"},
				-- loc_text("Disrupt Destiny")),
		--[+ Russian +]-- Прерывание судьбы -- руоф Разрушенная судьба
		create_template("talent_tree_psy_keys3_000_ru",
			{"loc_talent_psyker_marked_enemies_passive"}, {"ru"},
				loc_text("Прерывание судьбы")),
		--[+ Traditional Chinese - 擾動命運 +]--
		-- create_template("talent_tree_psy_keys3_000_tw",
			-- {"loc_talent_psyker_marked_enemies_passive"}, {"zh-tw"},
				-- loc_text("擾動命運")),

		--[+ KEYSTONE 3-1 - Perfectionism +]--
		-- create_template("talent_tree_psy_keys3_001_en",
			-- {"loc_talent_psyker_mark_increased_max_stacks"}, {"en"},
				-- loc_text("Perfectionism")),
		--[+ Russian +]-- Перфекционизм
		-- create_template("talent_tree_psy_keys3_001_ru",
			-- {"loc_talent_psyker_mark_increased_max_stacks"}, {"ru"},
				-- loc_text("Перфекционизм")),
		--[+ Traditional Chinese - 完美主義 +]--
		-- create_template("talent_tree_psy_keys3_001_tw",
			-- {"loc_talent_psyker_mark_increased_max_stacks"}, {"zh-tw"},
				-- loc_text("完美主義")),

		--[+ KEYSTONE 3-2 - Purloin Providence +]--
		-- create_template("talent_tree_psy_keys3_002_en",
			-- {"loc_talent_psyker_mark_kills_can_vent"}, {"en"},
				-- loc_text("Purloin Providence")),
		--[+ Russian +]-- Похищение провидения -- руоф Похищенное провидение
		create_template("talent_tree_psy_keys3_002_ru",
			{"loc_talent_psyker_mark_kills_can_vent"}, {"ru"},
				loc_text("Похищение провидения")),
		--[+ Traditional Chinese - 盜竊天命 +]--
		-- create_template("talent_tree_psy_keys3_002_tw",
			-- {"loc_talent_psyker_mark_kills_can_vent"}, {"zh-tw"},
				-- loc_text("盜竊天命")),

		--[+ KEYSTONE 3-3 - Lingering Influence +]--
		-- create_template("talent_tree_psy_keys3_003_en",
			-- {"loc_talent_psyker_mark_increased_duration"}, {"en"},
				-- loc_text("Lingering Influence")),
		--[+ Russian +]-- Длительное влияние -- руоф Длящееся влияние
		create_template("talent_tree_psy_keys3_003_ru",
			{"loc_talent_psyker_mark_increased_duration"}, {"ru"},
				loc_text("Длительное влияние")),
		--[+ Traditional Chinese - 持久影響 +]--
		-- create_template("talent_tree_psy_keys3_003_tw",
			-- {"loc_talent_psyker_mark_increased_duration"}, {"zh-tw"},
				-- loc_text("持久影響")),

		--[+ KEYSTONE 3-4 - Cruel Fortune +]--
		-- create_template("talent_tree_psy_keys3_004_en",
			-- {"loc_talent_psyker_mark_weakspot_stacks"}, {"en"},
				-- loc_text("Cruel Fortune")),
		--[+ Russian +]-- Жестокая судьба
		-- create_template("talent_tree_psy_keys3_004_ru",
			-- {"loc_talent_psyker_mark_weakspot_stacks"}, {"ru"},
				-- loc_text("Жестокая судьба")),
		--[+ Traditional Chinese - 殘忍命運 +]--
		-- create_template("talent_tree_psy_keys3_004_tw",
			-- {"loc_talent_psyker_mark_weakspot_stacks"}, {"zh-tw"},
				-- loc_text("殘忍命運")),

	--[+ +PASSIVES - ПАССИВНЫЕ ТАЛАНТЫ+ +]--

	-- - Soulstealer - 靈魂竊賊
	-- - Mettle - 堅毅
	-- - Quietude - 心如止水
	-- - Warp Expenditure - 亞空間耗費
	-- - Perilous Combustion 險惡燃燒
	-- - Perfect Timing - 完美時機
	-- - Battle Meditation - 戰鬥冥想
	-- - Psykinetic's AURA - 靈能學者光環
	-- - Malefic Momentum - 惡意攻勢
	-- - Perilous Assault - 反噬突襲
	-- - Lightning Speed - 迅雷之勢 
	-- - Empyric Shock - 亞空間震波
	-- - By Crack of Bone - 骨折後遺症
	-- - Warp Splitting - 亞空間分裂
	-- - Unlucky for Some - 倒楣蛋
	-- - One with the Warp - 亞空間強化
	-- - Empathic Evasion - 反射閃避
	-- - Anticipation - 看破
	-- - Puppet Master - 傀儡師
	-- - Crystalline Will - 結晶意志
	-- - Warp Rider - 亞空間騎士
	-- - Kinetic Deflection - 動能偏斜
	-- - Tranquility Through Slaughter - 殺無赦，心祥和
	-- - Empyric Resolve - 亞空間意志
	-- - Penetration of the Soul - 靈魂穿透
		--[+ PASSIVE 1 - Soulstealer +]--
		-- create_template("talent_tree_psy_pas_001_en",
			-- {"loc_talent_psyker_toughness_on_warp_kill"}, {"en"},
				-- loc_text("Soulstealer")),
		--[+ Russian +]-- Похититель душ -- руоф Похититель души
		create_template("talent_tree_psy_pas_001_ru",
			{"loc_talent_psyker_toughness_on_warp_kill"}, {"ru"},
				loc_text("Похититель душ")),
		--[+ Traditional Chinese - 靈魂竊賊 +]--
		-- create_template("talent_tree_psy_pas_001_tw",
			-- {"loc_talent_psyker_toughness_on_warp_kill"}, {"zh-tw"},
				-- loc_text("靈魂竊賊")),

		--[+ PASSIVE 2 - Mettle +]--
		-- create_template("talent_tree_psy_pas_002_en",
			-- {"loc_talent_psyker_crits_regen_tougness_and_movement_speed"}, {"en"},
				-- loc_text("Mettle")),
		--[+ Russian +]-- Ретивость
		-- create_template("talent_tree_psy_pas_002_ru",
			-- {"loc_talent_psyker_crits_regen_tougness_and_movement_speed"}, {"ru"},
				-- loc_text("Ретивость")),
		--[+ Traditional Chinese - 堅毅 +]--
		-- create_template("talent_tree_psy_pas_002_tw",
			-- {"loc_talent_psyker_crits_regen_tougness_and_movement_speed"}, {"zh-tw"},
				-- loc_text("堅毅")),

		--[+ PASSIVE 3 - Quietude +]--
		-- create_template("talent_tree_psy_pas_003_en",
			-- {"loc_talent_psyker_toughness_from_vent"}, {"en"},
				-- loc_text("Quietude")),
		--[+ Russian +]-- Спокойствие -- руоф Тишина
		create_template("talent_tree_psy_pas_003_ru",
			{"loc_talent_psyker_toughness_from_vent"}, {"ru"},
				loc_text("Спокойствие")),
		--[+ Traditional Chinese - 心如止水 +]--
		-- create_template("talent_tree_psy_pas_003_tw",
			-- {"loc_talent_psyker_toughness_from_vent"}, {"zh-tw"},
				-- loc_text("心如止水")),

		--[+ PASSIVE 4 - Warp Expenditure +]--
		-- create_template("talent_tree_psy_pas_004_en",
			-- {"loc_talent_psyker_warp_charge_generation_generates_toughness"}, {"en"},
				-- loc_text("Warp Expenditure")),
		--[+ Russian +]-- Затраты варпа -- руоф Варп-затраты
		create_template("talent_tree_psy_pas_004_ru",
			{"loc_talent_psyker_warp_charge_generation_generates_toughness"}, {"ru"},
				loc_text("Затраты варпа")),
		--[+ Traditional Chinese - 亞空間耗費 +]--
		-- create_template("talent_tree_psy_pas_004_tw",
			-- {"loc_talent_psyker_warp_charge_generation_generates_toughness"}, {"zh-tw"},
				-- loc_text("亞空間耗費")),

		--[+ PASSIVE 5 - Perilous Combustion +]--
		-- create_template("talent_tree_psy_pas_005_en",
			-- {"loc_talent_psyker_elite_kills_add_warpfire"}, {"en"},
				-- loc_text("Perilous Combustion")),
		--[+ Russian +]-- Опасное возгорание -- руоф Пагубное воспламенение
		create_template("talent_tree_psy_pas_005_ru",
			{"loc_talent_psyker_elite_kills_add_warpfire"}, {"ru"},
				loc_text("Опасное возгорание")),
		--[+ Traditional Chinese - 險惡燃燒 +]--
		-- create_template("talent_tree_psy_pas_005_tw",
			-- {"loc_talent_psyker_elite_kills_add_warpfire"}, {"zh-tw"},
				-- loc_text("險惡燃燒")),

		--[+ PASSIVE 6 - Perfect Timing +]--
		-- create_template("talent_tree_psy_pas_006_en",
			-- {"loc_talent_psyker_crits_empower_next_attack"}, {"en"},
				-- loc_text("Perfect Timing")),
		--[+ Russian +]-- Идеальный момент -- руоф Безупречное чувство времени
		create_template("talent_tree_psy_pas_006_ru",
			{"loc_talent_psyker_crits_empower_next_attack"}, {"ru"},
				loc_text("Идеальный момент")),
		--[+ Traditional Chinese - 完美時機 +]--
		-- create_template("talent_tree_psy_pas_006_tw",
			-- {"loc_talent_psyker_crits_empower_next_attack"}, {"zh-tw"},
				-- loc_text("完美時機")),

		--[+ PASSIVE 7 - Battle Meditation +]--
		-- create_template("talent_tree_psy_pas_007_en",
			-- {"loc_talent_psyker_base_2"}, {"en"},
				-- loc_text("Battle Meditation")),
		--[+ Russian +]-- Боевая медитация
		-- create_template("talent_tree_psy_pas_007_ru",
			-- {"loc_talent_psyker_base_2"}, {"ru"},
				-- loc_text("Боевая медитация")),
		--[+ Traditional Chinese - 戰鬥冥想 +]--
		-- create_template("talent_tree_psy_pas_007_tw",
			-- {"loc_talent_psyker_base_2"}, {"zh-tw"},
				-- loc_text("戰鬥冥想")),

		--[+ PASSIVE 8 - Wildfire +]--
		-- create_template("talent_tree_psy_pas_008_en",
			-- {"loc_talent_psyker_warpfire_spread"}, {"en"},
				-- loc_text("Wildfire")),
		--[+ Russian +]-- Некотролируемый пожар -- руоф Гремучая смесь
		create_template("talent_tree_psy_pas_008_ru",
			{"loc_talent_psyker_warpfire_spread"}, {"ru"},
				loc_text("Некотролируемый пожар")),
		--[+ Traditional Chinese - 野火 +]--
		-- create_template("talent_tree_psy_pas_008_tw",
			-- {"loc_talent_psyker_warpfire_spread"}, {"zh-tw"},
				-- loc_text("野火")),

		--[+ PASSIVE 9 - Psykinetic's AURA +]--
		-- create_template("talent_tree_psy_pas_009_en",
			-- {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency"}, {"en"},
				-- loc_text("Psykinetic's AURA")),
		--[+ Russian +]-- Аура психокинетика
		-- create_template("talent_tree_psy_pas_009_ru",
			-- {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency"}, {"ru"},
				-- loc_text("Аура психокинетика")),
		--[+ Traditional Chinese - 靈能學者光環 +]--
		-- create_template("talent_tree_psy_pas_009_tw",
			-- {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency"}, {"zh-tw"},
				-- loc_text("靈能學者光環")),

		--[+ PASSIVE 10 - Mind in Motion +]--
		-- create_template("talent_tree_psy_pas_010_en",
			-- {"loc_talent_psyker_venting_doesnt_slow"}, {"en"},
				-- loc_text("Mind in Motion")),
		--[+ Russian +]-- Разум в движении -- руоф Движущийся разум
		create_template("talent_tree_psy_pas_010_ru",
			{"loc_talent_psyker_venting_doesnt_slow"}, {"ru"},
				loc_text("Разум в движении")),
		--[+ Traditional Chinese - 靈能學者光環 +]--
		-- create_template("talent_tree_psy_pas_010_tw",
			-- {"loc_talent_psyker_venting_doesnt_slow"}, {"zh-tw"},
				-- loc_text("靈能學者光環")),

		--[+ PASSIVE 11 - Malefic Momentum +]--
		-- create_template("talent_tree_psy_pas_011_en",
			-- {"loc_talent_psyker_kills_stack_other_weapon_damage"}, {"en"},
				-- loc_text("Malefic Momentum")),
		--[+ Russian +]-- Пагубный импульс -- руоф Пагубный моментум
		create_template("talent_tree_psy_pas_011_ru",
			{"loc_talent_psyker_kills_stack_other_weapon_damage"}, {"ru"},
				loc_text("Пагубный импульс")),
		--[+ Traditional Chinese - 惡意攻勢 +]--
		-- create_template("talent_tree_psy_pas_011_tw",
			-- {"loc_talent_psyker_kills_stack_other_weapon_damage"}, {"zh-tw"},
				-- loc_text("惡意攻勢")),

		--[+ PASSIVE 12 - Channeled Force +]--
		-- create_template("talent_tree_psy_pas_012_en",
			-- {"loc_talent_psyker_force_staff_bonus"}, {"en"},
				-- loc_text("Channeled Force")),
		--[+ Russian +]-- Направленная сила
		-- create_template("talent_tree_psy_pas_012_ru",
			-- {"loc_talent_psyker_force_staff_bonus"}, {"ru"},
				-- loc_text("Направленная сила")),
		--[+ Traditional Chinese - 靈能強化 +]--
		-- create_template("talent_tree_psy_pas_012_tw",
			-- {"loc_talent_psyker_force_staff_bonus"}, {"zh-tw"},
				-- loc_text("靈能強化")),

		--[+ PASSIVE 13 - Perilous Assault +]--
		-- create_template("talent_tree_psy_pas_013_en",
			-- {"loc_talent_psyker_force_staff_melee_attack_bonus"}, {"en"},
				-- loc_text("Perilous Assault")), 
		--[+ Russian +]--Рискованное нападение -- руоф Пагубное нападение
		create_template("talent_tree_psy_pas_013_ru",
			{"loc_talent_psyker_force_staff_melee_attack_bonus"}, {"ru"},
				loc_text("Рискованное нападение")),
		--[+ Traditional Chinese - 反噬突襲 +]--
		-- create_template("talent_tree_psy_pas_013_tw",
			-- {"loc_talent_psyker_force_staff_melee_attack_bonus"}, {"zh-tw"},
				-- loc_text("反噬突襲")),

		--[+ PASSIVE 14 - Lightning Speed +]--
		-- create_template("talent_tree_psy_pas_014_en",
			-- {"loc_talent_psyker_melee_attack_speed"}, {"en"},
				-- loc_text("Lightning Speed")),
		--[+ Russian +]-- Молниеносная скорость
		-- create_template("talent_tree_psy_pas_014_ru",
			-- {"loc_talent_psyker_melee_attack_speed"}, {"ru"},
				-- loc_text("Молниеносная скорость")),
		--[+ Traditional Chinese - 迅雷之勢 +]--
		-- create_template("talent_tree_psy_pas_014_tw",
			-- {"loc_talent_psyker_melee_attack_speed"}, {"zh-tw"},
				-- loc_text("迅雷之勢")),

		--[+ PASSIVE 15 - Souldrinker +]--
		-- create_template("talent_tree_psy_pas_015_en",
			-- {"loc_talent_psyker_nearby_soulblaze_reduced_damage"}, {"en"},
				-- loc_text("Souldrinker")),
		--[+ Russian +]-- Поглотитель душ -- руоф Поглощение душ
		create_template("talent_tree_psy_pas_015_ru",
			{"loc_talent_psyker_nearby_soulblaze_reduced_damage"}, {"ru"},
				loc_text("Поглотитель душ")),
		--[+ Traditional Chinese - 汲魂者 +]--
		-- create_template("talent_tree_psy_pas_015_tw",
			-- {"loc_talent_psyker_nearby_soulblaze_reduced_damage"}, {"zh-tw"},
				-- loc_text("汲魂者")),

		--[+ PASSIVE 16 - Empyric Shock +]--
		-- create_template("talent_tree_psy_pas_016_en",
			-- {"loc_talent_psyker_force_staff_quick_attack_bonus"}, {"en"},
				-- loc_text("Empyric Shock")),
		--[+ Russian +]-- Эмпирический шок
		-- create_template("talent_tree_psy_pas_016_ru",
			-- {"loc_talent_psyker_force_staff_quick_attack_bonus"}, {"ru"},
				-- loc_text("Эмпирический шок")),
		--[+ Traditional Chinese - 亞空間震波 +]--
		-- create_template("talent_tree_psy_pas_016_tw",
			-- {"loc_talent_psyker_force_staff_quick_attack_bonus"}, {"zh-tw"},
				-- loc_text("亞空間震波")),

		--[+ PASSIVE 17 - By Crack of Bone +]--
		-- create_template("talent_tree_psy_pas_017_en",
			-- {"loc_talent_psyker_melee_weaving"}, {"en"},
				-- loc_text("By Crack of Bone")),
		--[+ Russian +]-- Треск костей
		-- create_template("talent_tree_psy_pas_017_ru",
			-- {"loc_talent_psyker_melee_weaving"}, {"ru"},
				-- loc_text("Треск костей")),
		--[+ Traditional Chinese - 骨折後遺症 +]--
		-- create_template("talent_tree_psy_pas_017_tw",
			-- {"loc_talent_psyker_melee_weaving"}, {"zh-tw"},
				-- loc_text("骨折後遺症")),

		--[+ PASSIVE 18 - Warp Splitting +]--
		-- create_template("talent_tree_psy_pas_018_en",
			-- {"loc_talent_psyker_cleave_from_peril"}, {"en"},
				-- loc_text("Warp Splitting")),
		--[+ Russian +]-- Расщепление варпа
		-- create_template("talent_tree_psy_pas_018_ru",
			-- {"loc_talent_psyker_cleave_from_peril"}, {"ru"},
				-- loc_text("Расщепление варпа")),
		--[+ Traditional Chinese - 亞空間分裂 +]--
		-- create_template("talent_tree_psy_pas_018_tw",
			-- {"loc_talent_psyker_cleave_from_peril"}, {"zh-tw"},
				-- loc_text("亞空間分裂")),

		--[+ PASSIVE 19 - Unlucky for Some +]--
		-- create_template("talent_tree_psy_pas_019_en",
			-- {"loc_talent_psyker_restore_toughness_to_allies_when_ally_down"}, {"en"},
				-- loc_text("Unlucky for Some")),
		--[+ Russian +]-- Не везёт некоторым -- руоф Некоторым не повезло
		create_template("talent_tree_psy_pas_019_ru",
			{"loc_talent_psyker_restore_toughness_to_allies_when_ally_down"}, {"ru"},
				loc_text("Не везёт некоторым")),
		--[+ Traditional Chinese - 倒楣蛋 +]--
		-- create_template("talent_tree_psy_pas_019_tw",
			-- {"loc_talent_psyker_restore_toughness_to_allies_when_ally_down"}, {"zh-tw"},
				-- loc_text("倒楣蛋")),

		--[+ PASSIVE 20 - One with the Warp +]--
		-- create_template("talent_tree_psy_pas_020_en",
			-- {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge"}, {"en"},
				-- loc_text("One with the Warp")),
		--[+ Russian +]-- Единство с варпом
		-- create_template("talent_tree_psy_pas_020_ru",
			-- {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge"}, {"ru"},
				-- loc_text("Единство с варпом")),
		--[+ Traditional Chinese - 亞空間強化 +]--
		-- create_template("talent_tree_psy_pas_020_tw",
			-- {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge"}, {"zh-tw"},
				-- loc_text("亞空間強化")),

		--[+ PASSIVE 21 - Empathic Evasion +]--
		-- create_template("talent_tree_psy_pas_21_en",
			-- {"loc_talent_psyker_dodge_after_crits"}, {"en"},
				-- loc_text("Empathic Evasion")),
		--[+ Russian +]-- Эмпатическое уклонение
		-- create_template("talent_tree_psy_pas_21_ru",
			-- {"loc_talent_psyker_dodge_after_crits"}, {"ru"},
				-- loc_text("Эмпатическое уклонение")),
		--[+ Traditional Chinese - 反射閃避 +]--
		-- create_template("talent_tree_psy_pas_21_tw",
			-- {"loc_talent_psyker_dodge_after_crits"}, {"zh-tw"},
				-- loc_text("反射閃避")),

		--[+ PASSIVE 22 - Anticipation +]--
		-- create_template("talent_tree_psy_pas_022_en",
			-- {"loc_talent_psyker_improved_dodge"}, {"en"},
				-- loc_text("Anticipation")),
		--[+ Russian +]-- Предвкушение
		-- create_template("talent_tree_psy_pas_022_ru",
			-- {"loc_talent_psyker_improved_dodge"}, {"ru"},
				-- loc_text("Предвкушение")),
		--[+ Traditional Chinese - 看破 +]--
		-- create_template("talent_tree_psy_pas_022_tw",
			-- {"loc_talent_psyker_improved_dodge"}, {"zh-tw"},
				-- loc_text("看破")),

		--[+ PASSIVE 23 - Solidity +]--
		-- create_template("talent_tree_psy_pas_023_en",
			-- {"loc_talent_psyker_increased_vent_speed"}, {"en"},
				-- loc_text("Solidity")),
		--[+ Russian +]-- Устойчивость -- руоф Твердость
		create_template("talent_tree_psy_pas_023_ru",
			{"loc_talent_psyker_increased_vent_speed"}, {"ru"},
				loc_text("Устойчивость")),
		--[+ Traditional Chinese - 心如止水 +]--
		-- create_template("talent_tree_psy_pas_023_tw",
			-- {"loc_talent_psyker_increased_vent_speed"}, {"zh-tw"},
				-- loc_text("心如止水")),

		--[+ PASSIVE 24 - Puppet Master +]--
		-- create_template("talent_tree_psy_pas_024_en",
			-- {"loc_talent_psyker_coherency_size_increase"}, {"en"},
				-- loc_text("Puppet Master")),
		--[+ Russian +]-- Кукловод
		-- create_template("talent_tree_psy_pas_024_en",
			-- {"loc_talent_psyker_coherency_size_increase"}, {"ru"},
				-- loc_text("Кукловод")),
		--[+ Traditional Chinese - 傀儡師 +]--
		-- create_template("talent_tree_psy_pas_024_tw",
			-- {"loc_talent_psyker_coherency_size_increase"}, {"zh-tw"},
				-- loc_text("傀儡師")),

		--[+ PASSIVE 25 - Warp Rider +]--
		-- create_template("talent_tree_psy_pas_025_en",
			-- {"loc_talent_psyker_damage_based_on_warp_charge"}, {"en"},
				-- loc_text("Warp Rider")),
		--[+ Russian +]-- Всадник варпа -- руоф Наездник варпа
		create_template("talent_tree_psy_pas_025_ru",
			{"loc_talent_psyker_damage_based_on_warp_charge"}, {"ru"},
				loc_text("Всадник варпа")),
		--[+ Traditional Chinese - 亞空間騎士 +]--
		-- create_template("talent_tree_psy_pas_025_tw",
			-- {"loc_talent_psyker_damage_based_on_warp_charge"}, {"zh-tw"},
				-- loc_text("亞空間騎士")),

		--[+ PASSIVE 26 - Crystalline Will +]--
		-- create_template("talent_tree_psy_pas_027_en",
			-- {"loc_talent_psyker_alternative_peril_explosion"}, {"en"},
				-- loc_text("Crystalline Will")),
		--[+ Russian +]-- Чистая воля
		-- create_template("talent_tree_psy_pas_027_ru",
			-- {"loc_talent_psyker_alternative_peril_explosion"}, {"ru"},
				-- loc_text("Чистая воля")),
		--[+ Traditional Chinese - 結晶意志 +]--
		-- create_template("talent_tree_psy_pas_027_tw",
			-- {"loc_talent_psyker_alternative_peril_explosion"}, {"zh-tw"},
				-- loc_text("結晶意志")),

		--[+ PASSIVE 27 - Kinetic Deflection +]--
		-- create_template("talent_tree_psy_pas_027_en",
			-- {"loc_talent_psyker_block_costs_warp_charge"}, {"en"},
				-- loc_text("Kinetic Deflection")),
		--[+ Russian +]-- Кинетическое отклонение
		-- create_template("talent_tree_psy_pas_027_ru",
			-- {"loc_talent_psyker_block_costs_warp_charge"}, {"ru"},
				-- loc_text("Кинетическое отклонение")),
		--[+ Traditional Chinese - 動能偏斜 +]--
		-- create_template("talent_tree_psy_pas_027_tw",
			-- {"loc_talent_psyker_block_costs_warp_charge"}, {"zh-tw"},
				-- loc_text("動能偏斜")),

		--[+ PASSIVE 28 - Tranquility Through Slaughter +]--
		-- create_template("talent_tree_psy_pas_028_en",
			-- {"loc_talent_psyker_ranged_crits_vent"}, {"en"},
				-- loc_text("Tranquility Through Slaughter")),
		--[+ Russian +]-- Спокойствие посредством убийств
		-- create_template("talent_tree_psy_pas_028_ru",
			-- {"loc_talent_psyker_ranged_crits_vent"}, {"ru"},
				-- loc_text("Спокойствие посредством убийств")),
		--[+ Traditional Chinese - 殺無赦，心祥和 +]--
		-- create_template("talent_tree_psy_pas_028_tw",
			-- {"loc_talent_psyker_ranged_crits_vent"}, {"zh-tw"},
				-- loc_text("殺無赦，心祥和")),

		--[+ PASSIVE 29 - Empyric Resolve +]--
		-- create_template("talent_tree_psy_pas_029_en",
			-- {"loc_talent_psyker_warp_glass_cannon"}, {"en"},
				-- loc_text("Empyric Resolve")),
		--[+ Russian +]-- Эмпирическая решимость
		-- create_template("talent_tree_psy_pas_029_ru",
			-- {"loc_talent_psyker_warp_glass_cannon"}, {"ru"},
				-- loc_text("Эмпирическая решимость")),
		--[+ Traditional Chinese - 亞空間意志 +]--
		-- create_template("talent_tree_psy_pas_029_tw",
			-- {"loc_talent_psyker_warp_glass_cannon"}, {"zh-tw"},
				-- loc_text("亞空間意志")),

		--[+ PASSIVE 30 - Penetration of the Soul +]--
		-- create_template("talent_tree_psy_pas_030_en",
			-- {"loc_talent_psyker_warp_attacks_rending"}, {"en"} function(locale, value) return "Penetration of the Soul")),
		--[+ Russian +]-- Проникновение в душу
		-- create_template("talent_tree_psy_pas_030_ru",
			-- {"loc_talent_psyker_warp_attacks_rending"}, {"en"} function(locale, value) return "Проникновение в душу")),
		--[+ Traditional Chinese - 靈魂穿透 +]--
		-- create_template("talent_tree_psy_pas_030_tw",
			-- {"loc_talent_psyker_warp_attacks_rending"}, {"zh-tw"} function(locale, value) return "靈魂穿透")),

		--[+ PASSIVE 31 - True Aim +]--
		-- create_template("talent_tree_psy_pas_031_en",
			-- {"loc_talent_psyker_weakspot_grants_crit"}, {"en"},
				-- loc_text("True Aim")),
		--[+ Russian +]-- Верная цель
		-- create_template("talent_tree_psy_pas_031_ru",
			-- {"loc_talent_psyker_weakspot_grants_crit"}, {"ru"},
				-- loc_text("Верная цель")),
		--[+ Traditional Chinese - 精確瞄準 +]--
		-- create_template("talent_tree_psy_pas_031_tw",
			-- {"loc_talent_psyker_weakspot_grants_crit"}, {"zh-tw"},
				-- loc_text("精確瞄準")),

		--[+ PASSIVE 32 - Surety of Arms +]--
		-- create_template("talent_tree_psy_pas_032_en",
			-- {"loc_talent_psyker_reload_speed_warp"}, {"en"},
				-- loc_text("Surety of Arms")),
		--[+ Russian +]-- Варп в залог -- руоф Верность оружия
		create_template("talent_tree_psy_pas_032_ru",
			{"loc_talent_psyker_reload_speed_warp"}, {"ru"},
				loc_text("Варп в залог")),
		--[+ Traditional Chinese - 武器在手，信心我有。 +]--
		-- create_template("talent_tree_psy_pas_032_tw",
			-- {"loc_talent_psyker_reload_speed_warp"}, {"zh-tw"},
				-- loc_text("武器在手，信心我有。")),



--[+ ++ZEALOT - ИЗУВЕР++ +]--
	--[+ +BLITZ - БЛИЦ+ +]--
		--[+ BLITZ 0 - Stun Grenade +]--
		-- create_template("talent_tree_zea_blitz0_000_en",
			-- {"loc_ability_shock_grenade"}, {"en"},
				-- loc_text("Stun Grenade")),
		--[+ Russian +]-- Оглушающая граната
		-- create_template("talent_tree_zea_blitz0_000_ru",
			-- {"loc_ability_shock_grenade"}, {"ru"},
				-- loc_text("Оглушающая граната")),
		--[+ Traditional Chinese - 眩暈手雷 +]--
		-- create_template("talent_tree_zea_blitz0_000_tw",
			-- {"loc_ability_shock_grenade"}, {"zh-tw"},
				-- loc_text("眩暈手雷")),

		--[+ BLITZ 1 - Stunstorm Grenade +]--
		-- create_template("talent_tree_zea_blitz1_000_en",
			-- {"loc_zealot_improved_stun_grenade"}, {"en"},
				-- loc_text("Stunstorm Grenade")),
		--[+ Russian +]-- Оглушающе-штурмовая граната -- руоф Граната шквального оглушения
		create_template("talent_tree_zea_blitz1_000_en",
			{"loc_zealot_improved_stun_grenade"}, {"ru"},
				loc_text("Оглушающе-штурмовая граната")),
		--[+ Traditional Chinese - 眩暈風暴手雷 +]--
		-- create_template("talent_tree_zea_blitz1_000_tw",
			-- {"loc_zealot_improved_stun_grenade"}, {"zh-tw"},
				-- loc_text("眩暈風暴手雷")),

		--[+ BLITZ 2 - Immolation Grenade +]--
		-- create_template("talent_tree_zea_blitz2_000_en",
			-- {"loc_talent_ability_fire_grenade"}, {"en"},
				-- loc_text("Immolation Grenade")),
		--[+ Russian +]-- Огненная граната -- руоф Жертвенная граната
		create_template("talent_tree_zea_blitz2_000_ru",
			{"loc_talent_ability_fire_grenade"}, {"ru"},
				loc_text("Огненная граната")),
		--[+ Traditional Chinese - 獻祭手雷 +]--
		-- create_template("talent_tree_zea_blitz2_000_tw",
			-- {"loc_talent_ability_fire_grenade"}, {"zh-tw"},
				-- loc_text("獻祭手雷")),

		--[+ BLITZ 3 - Blades of Faith +]--
		-- create_template("talent_tree_zea_blitz3_000_en",
			-- {"loc_ability_zealot_throwing_knifes"}, {"en"},
				-- loc_text("Blades of Faith")),
		--[+ Russian +]-- Клинки веры
		-- create_template("talent_tree_zea_blitz3_000_ru",
			-- {"loc_ability_zealot_throwing_knifes"}, {"ru"},
				-- loc_text("Клинки веры")),
		--[+ Traditional Chinese - 信仰之刃 +]--
		-- create_template("talent_tree_zea_blitz3_000_tw",
			-- {"loc_ability_zealot_throwing_knifes"}, {"zh-tw"},
				-- loc_text("信仰之刃")),

	--[+ +AURA+ +]--
		--[+ AURA 0 - The Emperors's Will +]--
		-- create_template("talent_tree_zea_aura0_000_en",
			-- {"loc_talent_zealot_2_base_3"}, {"en"},
				-- loc_text("The Emperors's Will")),
		--[+ Russian +]-- Воля Императора
		-- create_template("talent_tree_zea_aura0_000_ru",
			-- {"loc_talent_zealot_2_base_3"}, {"ru"},
				-- loc_text("Воля Императора")),
		--[+ Traditional Chinese - 帝皇之諭 +]--
		-- create_template("talent_tree_zea_aura0_000_tw",
			-- {"loc_talent_zealot_2_base_3"}, {"zh-tw"},
				-- loc_text("帝皇之諭")),

		--[+ AURA 1 - Benediction +]--
		-- create_template("talent_tree_zea_aura_001_en",
			-- {"loc_talent_zealot_aura_efficiency"}, {"en"},
				-- loc_text("Benediction")),
		--[+ Russian +]-- Благословение
		-- create_template("talent_tree_zea_aura_001_ru",
			-- {"loc_talent_zealot_aura_efficiency"}, {"ru"},
				-- loc_text("Благословение")),
		--[+ Traditional Chinese - 恩賜 +]--
		-- create_template("talent_tree_zea_aura_001_tw",
			-- {"loc_talent_zealot_aura_efficiency"}, {"zh-tw"},
				-- loc_text("恩賜")),

		--[+ AURA 2 - Beacon of Purity +]--
		-- create_template("talent_tree_zea_aura_002_en",
			-- {"loc_talent_zealot_corruption_healing_coherency_improved"}, {"en"},
				-- loc_text("Beacon of Purity")),
		--[+ Russian +]-- Маяк очищения -- руоф Маяк непорочности
		create_template("talent_tree_zea_aura_002_ru",
			{"loc_talent_zealot_corruption_healing_coherency_improved"}, {"ru"},
				loc_text("Маяк очищения")),
		--[+ Traditional Chinese - 純潔信標 +]--
		-- create_template("talent_tree_zea_aura_002_tw",
			-- {"loc_talent_zealot_corruption_healing_coherency_improved"}, {"zh-tw"},
				-- loc_text("純潔信標")),

		--[+ AURA 3 - Loner +]--
		-- create_template("talent_tree_zea_aura_003_en",
			-- {"loc_talent_zealot_always_in_coherency"}, {"en"},
				-- loc_text("Loner")),
		--[+ Russian +]-- Единоличник -- руоф Одиночка
		create_template("talent_tree_zea_aura_003_ru",
			{"loc_talent_zealot_always_in_coherency"}, {"ru"},
				loc_text("Единоличник")),
		--[+ Traditional Chinese - 孤狼 +]--
		-- create_template("talent_tree_zea_aura_003_tw",
			-- {"loc_talent_zealot_always_in_coherency"}, {"zh-tw"},
				-- loc_text("孤狼")),

	--[+ +ABILITIES+ +]--
		--[+ ABILITY 0 - Chastise the Wicked +]--
		-- create_template("talent_tree_zea_abil0_000_en",
			-- {"loc_talent_zealot_2_combat"}, {"en"},
				-- loc_text("Chastise the Wicked")),
		--[+ Russian +]-- Кара для нечестивых
		-- create_template("talent_tree_zea_abil0_000_ru",
			-- {"loc_talent_zealot_2_combat"}, {"ru"},
				-- loc_text("Кара для нечестивых")),
		--[+ Traditional Chinese - 懲奸除惡 +]--
		-- create_template("talent_tree_zea_abil0_000_tw",
			-- {"loc_talent_zealot_2_combat"}, {"zh-tw"},
				-- loc_text("懲奸除惡")),

		--[+ ABILITY 1 - Fury of the Faithful +]--
		-- create_template("talent_tree_zea_abil1_000_en",
			-- {"loc_talent_maniac_attack_speed_after_dash"}, {"en"},
				-- loc_text("Fury of the Faithful")),
		--[+ Russian +]-- Ярость верующего -- руоф Ударный страх
		create_template("talent_tree_zea_abil1_000_ru",
			{"loc_talent_maniac_attack_speed_after_dash"}, {"ru"},
				loc_text("Ярость верующего")),
		--[+ Traditional Chinese - 有信者之怒 +]--
		-- create_template("talent_tree_zea_abil1_000_tw",
			-- {"loc_talent_maniac_attack_speed_after_dash"}, {"zh-tw"},
				-- loc_text("有信者之怒")),

		--[+ ABILITY 1-1 - Redoubled Zeal +]--
		-- create_template("talent_tree_zea_abil1_001_en",
			-- {"loc_talent_zealot_dash_has_more_charges"}, {"en"},
				-- loc_text("Redoubled Zeal")),
		--[+ Russian +]-- Удвоенное рвение
		-- create_template("talent_tree_zea_abil1_001_ru",
			-- {"loc_talent_zealot_dash_has_more_charges"}, {"ru"},
				-- loc_text("Удвоенное рвение")),
		--[+ Traditional Chinese - 倍增狂熱 +]--
		-- create_template("talent_tree_zea_abil1_001_tw",
			-- {"loc_talent_zealot_dash_has_more_charges"}, {"zh-tw"},
				-- loc_text("倍增狂熱")),

		--[+ ABILITY 1-2 - Invocation of Death +]--
		-- create_template("talent_tree_zea_abil1_002_en",
			-- {"loc_talent_maniac_cooldown_on_melee_crits"}, {"en"},
				-- loc_text("Invocation of Death")),
		--[+ Russian +]-- Призыв смерти
		-- create_template("talent_tree_zea_abil1_002_ru",
			-- {"loc_talent_maniac_cooldown_on_melee_crits"}, {"ru"},
				-- loc_text("Призыв смерти")),
		--[+ Traditional Chinese - 死亡禱文 +]--
		-- create_template("talent_tree_zea_abil1_002_tw",
			-- {"loc_talent_maniac_cooldown_on_melee_crits"}, {"zh-tw"},
				-- loc_text("死亡禱文")),

		--[+ ABILITY 2 - Chorus of Spiritual Fortitude +]--
		-- create_template("talent_tree_zea_abil2_000_en",
			-- {"loc_talent_zealot_bolstering_prayer"}, {"en"},
				-- loc_text("Chorus of Spiritual Fortitude")),
		--[+ Russian +]-- Хор духовной стойкости
		-- create_template("talent_tree_zea_abil2_000_ru",
			-- {"loc_talent_zealot_bolstering_prayer"}, {"ru"},
				-- loc_text("Хор духовной стойкости")),
		--[+ Traditional Chinese - 不屈靈魂合唱 +]--
		-- create_template("talent_tree_zea_abil2_000_tw",
			-- {"loc_talent_zealot_bolstering_prayer"}, {"zh-tw"},
				-- loc_text("不屈靈魂合唱")),

		--[+ ABILITY 2-1 - Holy Cause +]--
		-- create_template("talent_tree_zea_abil2_001_en",
			-- {"loc_talent_zealot_zealot_channel_grants_defensive_buff"}, {"en"},
				-- loc_text("Holy Cause")),
		--[+ Russian +]-- Святое дело
		-- create_template("talent_tree_zea_abil2_001_ru",
			-- {"loc_talent_zealot_zealot_channel_grants_defensive_buff"}, {"ru"},
				-- loc_text("Святое дело")),
		--[+ Traditional Chinese - 神聖事業 +]--
		-- create_template("talent_tree_zea_abil2_001_tw",
			-- {"loc_talent_zealot_zealot_channel_grants_defensive_buff"}, {"zh-tw"},
				-- loc_text("神聖事業")),

		--[+ ABILITY 2-2 - Banishing Light +]--
		-- create_template("talent_tree_zea_abil2_002_en",
			-- {"loc_talent_zealot_channel_staggers"}, {"en"},
				-- loc_text("Banishing Light")),
		--[+ Russian +]-- Изгоняющий свет
		-- create_template("talent_tree_zea_abil2_002_ru",
			-- {"loc_talent_zealot_channel_staggers"}, {"ru"},
				-- loc_text("Изгоняющий свет")),
		--[+ Traditional Chinese - 放逐之光 +]--
		-- create_template("talent_tree_zea_abil2_002_tw",
			-- {"loc_talent_zealot_channel_staggers"}, {"zh-tw"},
				-- loc_text("放逐之光")),

		--[+ ABILITY 2-3 - Ecclesiarch's Call +]--
		-- create_template("talent_tree_zea_abil2_003_en",
			-- {"loc_talent_zealot_zealot_channel_grants_offensive_buff"}, {"en"},
				-- loc_text("Ecclesiarch's Call")),
		--[+ Russian +]-- Призыв экклезиарха -- руоф Вызов экклезиарха
		create_template("talent_tree_zea_abil2_003_ru",
			{"loc_talent_zealot_zealot_channel_grants_offensive_buff"}, {"ru"},
				loc_text("Призыв экклезиарха")),
		--[+ Traditional Chinese - 教宗之喚 +]--
		-- create_template("talent_tree_zea_abil2_003_tw",
			-- {"loc_talent_zealot_zealot_channel_grants_offensive_buff"}, {"zh-tw"},
				-- loc_text("教宗之喚")),

		--[+ ABILITY 2-4 - Martyr's Purpose +]--
		-- create_template("talent_tree_zea_abil2_004_en",
			-- {"loc_talent_zealot_damage_taken_restores_cd"}, {"en"},
				-- loc_text("Martyr's Purpose")),
		--[+ Russian +]-- Предназначение мученика -- руоф Цель мученика
		create_template("talent_tree_zea_abil2_004_en",
			{"loc_talent_zealot_damage_taken_restores_cd"}, {"ru"},
				loc_text("Предназначение мученика")),
		--[+ Traditional Chinese - 殉道者之願 +]--
		-- create_template("talent_tree_zea_abil2_004_tw",
			-- {"loc_talent_zealot_damage_taken_restores_cd"}, {"zh-tw"},
				-- loc_text("殉道者之願")),

		--[+ ABILITY 3 - Shroudfield +]--
		-- create_template("talent_tree_zea_abil3_000_en",
			-- {"loc_ability_zealot_stealth"}, {"en"},
				-- loc_text("Shroudfield")),
		--[+ Russian +]-- Покров
		-- create_template("talent_tree_zea_abil3_000_ru",
			-- {"loc_ability_zealot_stealth"}, {"ru"},
				-- loc_text("Покров")),
		--[+ Traditional Chinese - 隱秘領域 +]--
		-- create_template("talent_tree_zea_abil3_000_tw",
			-- {"loc_ability_zealot_stealth"}, {"zh-tw"},
				-- loc_text("隱秘領域")),

		--[+ ABILITY 3-1 - Master-Crafted Shroudfield +]--
		-- create_template("talent_tree_zea_abil3_001_en",
			-- {"loc_talent_zealot_increased_stealth_duration"}, {"en"},
				-- loc_text("Master-Crafted Shroudfield")),
		--[+ Russian +]-- Мастерский покров -- Искусно изготовленный покров
		create_template("talent_tree_zea_abil3_001_ru",
			{"loc_talent_zealot_increased_stealth_duration"}, {"ru"},
				loc_text("Мастерский покров")),
		--[+ Traditional Chinese - 大師級隱秘領域 +]--
		-- create_template("talent_tree_zea_abil3_001_tw",
			-- {"loc_talent_zealot_increased_stealth_duration"}, {"zh-tw"},
				-- loc_text("大師級隱秘領域")),

		--[+ ABILITY 3-2 - Perfectionist +]--
		-- create_template("talent_tree_zea_abil3_002_en",
			-- {"loc_talent_zealot_stealth_increased_damage"}, {"en"},
				-- loc_text("Perfectionist")),
		--[+ Russian +]-- Перфекционист
		-- create_template("talent_tree_zea_abil3_002_ru",
			-- {"loc_talent_zealot_stealth_increased_damage"}, {"ru"},
				-- loc_text("Перфекционист")),
		--[+ Traditional Chinese - 完美主義者 +]--
		-- create_template("talent_tree_zea_abil3_002_tw",
			-- {"loc_talent_zealot_stealth_increased_damage"}, {"zh-tw"},
				-- loc_text("完美主義者")),

		--[+ ABILITY 3-3 - Invigorating Revelation +]--
		-- create_template("talent_tree_zea_abil3_003_en",
			-- {"loc_talent_zealot_leaving_stealth_restores_toughness"}, {"en"},
				-- loc_text("Invigorating Revelation")),
		--[+ Russian +]-- Оживляющее откровение -- руоф Подбадривающее откровение
		create_template("talent_tree_zea_abil3_003_ru",
			{"loc_talent_zealot_leaving_stealth_restores_toughness"}, {"ru"},
				loc_text("Оживляющее откровение")),
		--[+ Traditional Chinese - 振奮啟示 +]--
		-- create_template("talent_tree_zea_abil3_003_tw",
			-- {"loc_talent_zealot_leaving_stealth_restores_toughness"}, {"zh-tw"},
				-- loc_text("振奮啟示")),

		--[+ ABILITY 3-4 - Pious Cut-Throat +]--
		-- create_template("talent_tree_zea_abil3_004_en",
			-- {"loc_talent_zealot_backstab_kills_restore_cd"}, {"en"},
				-- loc_text("Pious Cut-Throat")),
		--[+ Russian +]-- Благочестивый головорез -- руоф Добродетельный головорез
		create_template("talent_tree_zea_abil3_004_ru",
			{"loc_talent_zealot_backstab_kills_restore_cd"}, {"ru"},
				loc_text("Благочестивый головорез")),
		--[+ Traditional Chinese - 虔誠刺客 +]--
		-- create_template("talent_tree_zea_abil3_004_tw",
			-- {"loc_talent_zealot_backstab_kills_restore_cd"}, {"zh-tw"},
				-- loc_text("虔誠刺客")),

	--[+ +KEYSTONES - КЛЮЧЕВЫЕ ТАЛАНТЫ+ +]--
		--[+ KEYSTONE 1 - Blazing Piety +]--
		-- create_template("talent_tree_zea_keys1_000_en",
			-- {"loc_talent_zealot_fanatic_rage"}, {"en"},
				-- loc_text("Blazing Piety")),
		--[+ Russian +]-- Пылающая благочестивость -- руоф Пламенное благочестие
		create_template("talent_tree_zea_keys1_000_ru",
			{"loc_talent_zealot_fanatic_rage"}, {"ru"},
				loc_text("Пылающая благочестивость")),
		--[+ Traditional Chinese - 熾熱虔誠 +]--
		-- create_template("talent_tree_zea_keys1_000_tw",
			-- {"loc_talent_zealot_fanatic_rage"}, {"zh-tw"},
				-- loc_text("熾熱虔誠")),

		--[+ KEYSTONE 1-1 - Stalwart +]--
		-- create_template("talent_tree_zea_keys1_001_en",
			-- {"loc_talent_zealot_fanatic_rage_toughness"}, {"en"},
				-- loc_text("Stalwart")),
		--[+ Russian +]-- Непоколебимый -- руоф Верный последователь
		create_template("talent_tree_zea_keys1_001_ru",
			{"loc_talent_zealot_fanatic_rage_toughness"}, {"ru"},
				loc_text("Непоколебимый")),
		--[+ Traditional Chinese - 忠誠 +]--
		-- create_template("talent_tree_zea_keys1_001_tw",
			-- {"loc_talent_zealot_fanatic_rage_toughness"}, {"zh-tw"},
				-- loc_text("忠誠")),

		--[+ KEYSTONE 1-2 - Fury Rising +]--
		-- create_template("talent_tree_zea_keys1_002_en",
			-- {"loc_talent_zealot_fanatic_rage_crits"}, {"en"},
				-- loc_text("Fury Rising")),
		--[+ Russian +]-- Возрастание ярости -- руоф Подъем ярости
		create_template("talent_tree_zea_keys1_002_ru",
			{"loc_talent_zealot_fanatic_rage_crits"}, {"ru"},
				loc_text("Возрастание ярости")),
		--[+ Traditional Chinese - 怒火升騰 +]--
		-- create_template("talent_tree_zea_keys1_002_tw",
			-- {"loc_talent_zealot_fanatic_rage_crits"}, {"zh-tw"},
				-- loc_text("怒火升騰")),

		--[+ KEYSTONE 1-3 - Infectious Zeal +]--
		-- create_template("talent_tree_zea_keys1_003_en",
			-- {"loc_talent_zealot_shared_fanatic_rage"}, {"en"},
				-- loc_text("Infectious Zeal")),
		--[+ Russian +]-- Заразительное рвение
		-- create_template("talent_tree_zea_keys1_003_ru",
			-- {"loc_talent_zealot_shared_fanatic_rage"}, {"ru"},
				-- loc_text("Заразительное рвение")),
		--[+ Traditional Chinese - 迅疾狂熱 +]--
		-- create_template("talent_tree_zea_keys1_003_tw",
			-- {"loc_talent_zealot_shared_fanatic_rage"}, {"zh-tw"},
				-- loc_text("迅疾狂熱")),

		--[+ KEYSTONE 1-4 - Righteous Warrior +]--
		-- create_template("talent_tree_zea_keys1_004_en",
			-- {"loc_talent_zealot_fanatic_rage_improved"}, {"en"},
				-- loc_text("Righteous Warrior")),
		--[+ Russian +]-- Праведный воин
		-- create_template("talent_tree_zea_keys1_004_ru",
			-- {"loc_talent_zealot_fanatic_rage_improved"}, {"ru"},
				-- loc_text("Праведный воин")),
		--[+ Traditional Chinese - 正義勇士 +]--
		-- create_template("talent_tree_zea_keys1_004_tw",
			-- {"loc_talent_zealot_fanatic_rage_improved"}, {"zh-tw"},
				-- loc_text("正義勇士")),

		--[+ KEYSTONE 2 - Martyrdom +]--
		-- create_template("talent_tree_zea_keys2_000_en",
			-- {"loc_talent_zealot_martyrdom"}, {"en"},
				-- loc_text("Martyrdom")),
		--[+ Russian +]-- Мученичество
		-- create_template("talent_tree_zea_keys2_000_en",
			-- {"loc_talent_zealot_martyrdom"}, {"ru"},
				-- loc_text("Мученичество")),
		--[+ Traditional Chinese - 殉道 +]--
		-- create_template("talent_tree_zea_keys2_000_tw",
			-- {"loc_talent_zealot_martyrdom"}, {"zh-tw"},
				-- loc_text("殉道")),

		--[+ KEYSTONE 2-1 - I Shall Not Fall +]--
		-- create_template("talent_tree_zea_keys2_001_en",
			-- {"loc_talent_zealot_martyrdom_grants_toughness"}, {"en"},
				-- loc_text("I Shall Not Fall")),
		--[+ Russian +]-- Я не паду -- руоф Я не отступлю
		create_template("talent_tree_zea_keys2_001_ru",
			{"loc_talent_zealot_martyrdom_grants_toughness"}, {"ru"},
				loc_text("Я не паду")),
		--[+ Traditional Chinese - 不滅意志 +]--
		-- create_template("talent_tree_zea_keys2_001_tw",
			-- {"loc_talent_zealot_martyrdom_grants_toughness"}, {"zh-tw"},
				-- loc_text("不滅意志")),

		--[+ KEYSTONE 2-2 - Maniac +]--
		-- create_template("talent_tree_zea_keys2_002_en",
			-- {"loc_talent_zealot_attack_speed_per_martyrdom"}, {"en"},
				-- loc_text("Maniac")),
		--[+ Russian +]-- Маньяк
		-- create_template("talent_tree_zea_keys2_002_ru",
			-- {"loc_talent_zealot_attack_speed_per_martyrdom"}, {"ru"},
				-- loc_text("Маньяк")),
		--[+ Traditional Chinese - 狂燥之心 +]--
		-- create_template("talent_tree_zea_keys2_002_tw",
			-- {"loc_talent_zealot_attack_speed_per_martyrdom"}, {"zh-tw"},
				-- loc_text("狂燥之心")),

		--[+ KEYSTONE 3 - Inexorable Judgement +]--
		-- create_template("talent_tree_zea_keys3_000_en",
			-- {"loc_talent_zealot_quickness"}, {"en"},
				-- loc_text("Inexorable Judgement")),
		--[+ Russian +]-- Неумолимый приговор -- руоф Безжалостный приговор
		create_template("talent_tree_zea_keys3_000_ru",
			{"loc_talent_zealot_quickness"}, {"ru"},
				loc_text("Неумолимый приговор")),
		--[+ Traditional Chinese - 命定審判 +]--
		-- create_template("talent_tree_zea_keys3_000_tw",
			-- {"loc_talent_zealot_quickness"}, {"zh-tw"},
				-- loc_text("命定審判")),

		--[+ KEYSTONE 3-1 - Retributor's Stance +]--
		-- create_template("talent_tree_zea_keys3_001_en",
			-- {"loc_talent_zealot_quickness_toughness_per_stack"}, {"en"},
				-- loc_text("Retributor's Stance")),
		--[+ Russian +]-- Стойка карателя
		-- create_template("talent_tree_zea_keys3_001_ru",
			-- {"loc_talent_zealot_quickness_toughness_per_stack"}, {"ru"},
				-- loc_text("Стойка карателя")),
		--[+ Traditional Chinese - 懲戒者姿態 +]--
		-- create_template("talent_tree_zea_keys3_001_tw",
			-- {"loc_talent_zealot_quickness_toughness_per_stack"}, {"zh-tw"},
				-- loc_text("懲戒者姿態")),

		--[+ KEYSTONE 3-2 - Inebriate's Poise +]--
		-- create_template("talent_tree_zea_keys3_002_en",
			-- {"loc_talent_zealot_quickness_dodge_stacks"}, {"en"},
				-- loc_text("Inebriate's Poise")),
		--[+ Russian +]-- Грация пьяницы -- руоф Самообладание пьяницы
		create_template("talent_tree_zea_keys3_002_ru",
			{"loc_talent_zealot_quickness_dodge_stacks"}, {"ru"},
				loc_text("Грация пьяницы")),
		--[+ Traditional Chinese - 飄忽身形 +]--
		-- create_template("talent_tree_zea_keys3_002_tw",
			-- {"loc_talent_zealot_quickness_dodge_stacks"}, {"zh-tw"},
				-- loc_text("飄忽身形")),

	--[+ +PASSIVES+ +]--
		--[+ PASSIVE 1 - Disdain +]--
		-- create_template("talent_tree_zea_pas_001_en",
			-- {"loc_talent_zealot_3_tier_2_ability_1"}, {"en"},
				-- loc_text("Disdain")),
		--[+ Russian +]-- Презрение
		-- create_template("talent_tree_zea_pas_001_ru",
			-- {"loc_talent_zealot_3_tier_2_ability_1"}, {"ru"},
				-- loc_text("Презрение")),
		--[+ Traditional Chinese - 蔑視 +]--
		-- create_template("talent_tree_zea_pas_001_tw",
			-- {"loc_talent_zealot_3_tier_2_ability_1"}, {"zh-tw"},
				-- loc_text("蔑視")),

		--[+ PASSIVE 2 - Backstabber +]--
		-- create_template("talent_tree_zea_pas_002_en",
			-- {"loc_talent_zealot_increased_backstab_damage"}, {"en"},
				-- loc_text("Backstabber")),
		--[+ Russian +]-- Бьющий в спину
		-- create_template("talent_tree_zea_pas_002_ru",
			-- {"loc_talent_zealot_increased_backstab_damage"}, {"ru"},
				-- loc_text("Бьющий в спину")),
		--[+ Traditional Chinese - 背刺者 +]--
		-- create_template("talent_tree_zea_pas_002_tw",
			-- {"loc_talent_zealot_increased_backstab_damage"}, {"zh-tw"},
				-- loc_text("背刺者")),

		--[+ PASSIVE 3 - Anoint in Blood +]--
		-- create_template("talent_tree_zea_pas_003_en",
			-- {"loc_talent_zealot_ranged_damage_increased_to_close"}, {"en"},
				-- loc_text("Anoint in Blood")),
		--[+ Russian +]-- Помазанный кровью
		-- create_template("talent_tree_zea_pas_003_ru",
			-- {"loc_talent_zealot_ranged_damage_increased_to_close"}, {"ru"},
				-- loc_text("Помазанный кровью")),
		--[+ Traditional Chinese - 鮮血受膏 +]--
		-- create_template("talent_tree_zea_pas_003_tw",
			-- {"loc_talent_zealot_ranged_damage_increased_to_close"}, {"zh-tw"},
				-- loc_text("鮮血受膏")),

		--[+ PASSIVE 4 - Scourge +]--
		-- create_template("talent_tree_zea_pas_004_en",
			-- {"loc_talent_zealot_bleed_melee_crit_chance"}, {"en"},
				-- loc_text("Scourge")),
		--[+ Russian +]-- Бичевание -- руоф Бич
		create_template("talent_tree_zea_pas_004_ru",
			{"loc_talent_zealot_bleed_melee_crit_chance"}, {"ru"},
				loc_text("Бичевание")),
		--[+ Traditional Chinese - 天災 +]--
		-- create_template("talent_tree_zea_pas_004_tw",
			-- {"loc_talent_zealot_bleed_melee_crit_chance"}, {"zh-tw"},
				-- loc_text("天災")),

		--[+ PASSIVE 5 - Enemies Within, Enemies Without +]--
		-- create_template("talent_tree_zea_pas_005_en",
			-- {"loc_talent_zealot_toughness_regen_in_melee"}, {"en"},
				-- loc_text("Enemies Within, Enemies Without")),
		--[+ Russian +]-- Враги внутри, враги снаружи -- руоф Не дай ему уйти
		create_template("talent_tree_zea_pas_005_ru",
			{"loc_talent_zealot_toughness_regen_in_melee"}, {"ru"},
				loc_text("Враги внутри, враги снаружи")),
		--[+ Traditional Chinese - 內憂外患 +]--
		-- create_template("talent_tree_zea_pas_005_tw",
			-- {"loc_talent_zealot_toughness_regen_in_melee"}, {"zh-tw"},
				-- loc_text("內憂外患")),

		--[+ PASSIVE 6 - Fortitude in Fellowship +]--
		-- create_template("talent_tree_zea_pas_006_en",
			-- {"loc_talent_zealot_increased_coherency_regen"}, {"en"},
				-- loc_text("Fortitude in Fellowship")),
		--[+ Russian +]-- Стойкость в товариществе -- руоф Стойкость в общении
		create_template("talent_tree_zea_pas_006_ru",
			{"loc_talent_zealot_increased_coherency_regen"}, {"ru"},
				loc_text("Стойкость в товариществе")),
		--[+ Traditional Chinese - 合抱成林 +]--
		-- create_template("talent_tree_zea_pas_006_tw",
			-- {"loc_talent_zealot_increased_coherency_regen"}, {"zh-tw"},
				-- loc_text("合抱成林")),

		--[+ PASSIVE 7 - Purge the Unclean +]--
		-- create_template("talent_tree_zea_pas_007_en",
			-- {"loc_talent_zealot_3_passive_2"}, {"en"},
				-- loc_text("Purge the Unclean")),
		--[+ Russian +]-- Очищение нечестивых -- руоф Очищение нечистых
		create_template("talent_tree_zea_pas_007_ru",
			{"loc_talent_zealot_3_passive_2"}, {"ru"},
				loc_text("Очищение нечестивых")),
		--[+ Traditional Chinese - 淨化不潔 +]--
		-- create_template("talent_tree_zea_pas_007_tw",
			-- {"loc_talent_zealot_3_passive_2"}, {"zh-tw"},
				-- loc_text("淨化不潔")),

		--[+ PASSIVE 8 - Blood Redemption +]--
		-- create_template("talent_tree_zea_pas_008_en",
			-- {"loc_talent_zealot_toughness_on_melee_kill"}, {"en"},
				-- loc_text("Blood Redemption")),
		--[+ Russian +]-- Искупление кровью -- руоф Кровавое искупление
		create_template("talent_tree_zea_pas_008_ru",
			{"loc_talent_zealot_toughness_on_melee_kill"}, {"ru"},
				loc_text("Искупление кровью")),
		--[+ Traditional Chinese - 鮮血救贖 +]--
		-- create_template("talent_tree_zea_pas_008_tw",
			-- {"loc_talent_zealot_toughness_on_melee_kill"}, {"zh-tw"},
				-- loc_text("鮮血救贖")),

		--[+ PASSIVE 9 - Bleed for the Emperor +]--
		-- create_template("talent_tree_zea_pas_009_en",
			-- {"loc_talent_zealot_3_tier_3_ability_2"}, {"en"},
				-- loc_text("Bleed for the Emperor")),
		--[+ Russian +]-- Кровь за Императора -- руоф Кровь во имя Императора
		create_template("talent_tree_zea_pas_009_ru",
			{"loc_talent_zealot_3_tier_3_ability_2"}, {"ru"},
				loc_text("Кровь за Императора")),
		--[+ Traditional Chinese - 為了帝皇 +]--
		-- create_template("talent_tree_zea_pas_009_tw",
			-- {"loc_talent_zealot_3_tier_3_ability_2"}, {"zh-tw"},
				-- loc_text("為了帝皇")),

		--[+ PASSIVE 10 - Vicious Offering +]--
		-- create_template("talent_tree_zea_pas_010_en",
			-- {"loc_talent_zealot_toughness_on_heavy_kills"}, {"en"},
				-- loc_text("Vicious Offering")),
		--[+ Russian +]-- Жертвоприношение -- руоф Порочное подношение
		create_template("talent_tree_zea_pas_010_ru",
			{"loc_talent_zealot_toughness_on_heavy_kills"}, {"ru"},
				loc_text("Жертвоприношение")),
		--[+ Traditional Chinese - 惡毒贈禮 +]--
		-- create_template("talent_tree_zea_pas_010_tw",
			-- {"loc_talent_zealot_toughness_on_heavy_kills"}, {"zh-tw"},
				-- loc_text("惡毒贈禮")),

		--[+ PASSIVE 11 - The Voice of Terra +]--
		-- create_template("talent_tree_zea_pas_011_en",
			-- {"loc_talent_zealot_toughness_on_ranged_kill"}, {"en"},
				-- loc_text("The Voice of Terra")),
		--[+ Russian +]-- Голос Терры
		-- create_template("talent_tree_zea_pas_011_ru",
			-- {"loc_talent_zealot_toughness_on_ranged_kill"}, {"ru"},
				-- loc_text("Голос Терры")),
		--[+ Traditional Chinese - 泰拉之音 +]--
		-- create_template("talent_tree_zea_pas_011_tw",
			-- {"loc_talent_zealot_toughness_on_ranged_kill"}, {"zh-tw"},
				-- loc_text("泰拉之音")),

		--[+ PASSIVE 12 - Restoring Faith +]--
		-- create_template("talent_tree_zea_pas_012_en",
			-- {"loc_talent_zealot_heal_damage_taken"}, {"en"},
				-- loc_text("Restoring Faith")),
		--[+ Russian +]-- Восстановление веры
		-- create_template("talent_tree_zea_pas_012_ru",
			-- {"loc_talent_zealot_heal_damage_taken"}, {"ru"},
				-- loc_text("Восстановление веры")),
		--[+ Traditional Chinese - 恢復信仰 +]--
		-- create_template("talent_tree_zea_pas_012_tw",
			-- {"loc_talent_zealot_heal_damage_taken"}, {"zh-tw"},
				-- loc_text("恢復信仰")),

		--[+ PASSIVE 13 - Second Wind +]--
		-- create_template("talent_tree_zea_pas_013_en",
			-- {"loc_talent_zealot_toughness_on_dodge"}, {"en"},
				-- loc_text("Second Wind")),
		--[+ Russian +]-- Второе дыхание -- руоф Второй ветер
		create_template("talent_tree_zea_pas_013_en",
			{"loc_talent_zealot_toughness_on_dodge"}, {"ru"},
				loc_text("Второе дыхание")),
		--[+ Traditional Chinese - 精力復甦 +]--
		-- create_template("talent_tree_zea_pas_013_tw",
			-- {"loc_talent_zealot_toughness_on_dodge"}, {"zh-tw"},
				-- loc_text("精力復甦")),

		--[+ PASSIVE 14 - Enduring Faith +]--
		-- create_template("talent_tree_zea_pas_014_en",
			-- {"loc_talent_zealot_toughness_melee_effectiveness"}, {"en"},
				-- loc_text("Enduring Faith")),
		--[+ Russian +]-- Непоколебимая вера
		-- create_template("talent_tree_zea_pas_014_en",
			-- {"loc_talent_zealot_toughness_melee_effectiveness"}, {"ru"},
				-- loc_text("Непоколебимая вера")),
		--[+ Traditional Chinese - 堅韌信仰 +]--
		-- create_template("talent_tree_zea_pas_014_tw",
			-- {"loc_talent_zealot_toughness_melee_effectiveness"}, {"zh-tw"},
				-- loc_text("堅韌信仰")),

		--[+ PASSIVE 15 - The Emperor's Bullet +]--
		-- create_template("talent_tree_zea_pas_015_en",
			-- {"loc_talent_zealot_improved_melee_after_no_ammo"}, {"en"},
				-- loc_text("The Emperor's Bullet")),
		--[+ Russian +]-- Пуля Императора
		-- create_template("talent_tree_zea_pas_015_ru",
			-- {"loc_talent_zealot_improved_melee_after_no_ammo"}, {"ru"},
				-- loc_text("Пуля Императора")),
		--[+ Traditional Chinese - 帝皇之彈 +]--
		-- create_template("talent_tree_zea_pas_015_tw",
			-- {"loc_talent_zealot_improved_melee_after_no_ammo"}, {"zh-tw"},
				-- loc_text("帝皇之彈")),

		--[+ PASSIVE 16 - Dance of Death +]--
		-- create_template("talent_tree_zea_pas_016_en",
			-- {"loc_talent_zealot_improved_spread_post_dodge"}, {"en"},
				-- loc_text("Dance of Death")),
		--[+ Russian +]-- Танец смерти
		-- create_template("talent_tree_zea_pas_016_en",
			-- {"loc_talent_zealot_improved_spread_post_dodge"}, {"ru"},
				-- loc_text("Танец смерти")),
		--[+ Traditional Chinese - 死亡之舞 +]--
		-- create_template("talent_tree_zea_pas_016_tw",
			-- {"loc_talent_zealot_improved_spread_post_dodge"}, {"zh-tw"},
				-- loc_text("死亡之舞")),

		--[+ PASSIVE 17 - Duellist +]--
		-- create_template("talent_tree_zea_pas_017_en",
			-- {"loc_talent_zealot_increased_finesse_post_dodge"}, {"en"},
				-- loc_text("Duellist")),
		--[+ Russian +]-- Дуэлянт
		-- create_template("talent_tree_zea_pas_017_en",
			-- {"loc_talent_zealot_increased_finesse_post_dodge"}, {"ru"},
				-- loc_text("Дуэлянт")),
		--[+ Traditional Chinese - 決鬥者 +]--
		-- create_template("talent_tree_zea_pas_017_tw",
			-- {"loc_talent_zealot_increased_finesse_post_dodge"}, {"zh-tw"},
				-- loc_text("決鬥者")),

		--[+ PASSIVE 18 - Until Death +]--
		-- create_template("talent_tree_zea_pas_018_en",
			-- {"loc_talent_zealot_resist_death"}, {"en"},
				-- loc_text("Until Death")),
		--[+ Russian +]-- До самой смерти
		-- create_template("talent_tree_zea_pas_018_en",
			-- {"loc_talent_zealot_resist_death"}, {"ru"},
				-- loc_text("До самой смерти")),
		--[+ Traditional Chinese - 死戰到底 +]--
		-- create_template("talent_tree_zea_pas_018_tw",
			-- {"loc_talent_zealot_resist_death"}, {"zh-tw"},
				-- loc_text("死戰到底")),

		--[+ PASSIVE 19 - Unremitting +]--
		-- create_template("talent_tree_zea_pas_019_en",
			-- {"loc_talent_zealot_reduced_sprint_cost"}, {"en"},
				-- loc_text("Unremitting")),
		--[+ Russian +]-- Неустанный
		-- create_template("talent_tree_zea_pas_019_en",
			-- {"loc_talent_zealot_reduced_sprint_cost"}, {"ru"},
				-- loc_text("Неустанный")),
		--[+ Traditional Chinese - 堅持不懈 +]--
		-- create_template("talent_tree_zea_pas_019_tw",
			-- {"loc_talent_zealot_reduced_sprint_cost"}, {"zh-tw"},
				-- loc_text("堅持不懈")),

		--[+ PASSIVE 20 - Shield of Contempt +]--
		-- create_template("talent_tree_zea_pas_020_en",
			-- {"loc_talent_zealot_3_tier_4_ability_3"}, {"en"},
				-- loc_text("Shield of Contempt")),
		--[+ Russian +]-- Щит презрения
		-- create_template("talent_tree_zea_pas_020_ru",
			-- {"loc_talent_zealot_3_tier_4_ability_3"}, {"ru"},
				-- loc_text("Щит презрения")),
		--[+ Traditional Chinese - 輕蔑之盾 +]--
		-- create_template("talent_tree_zea_pas_020_tw",
			-- {"loc_talent_zealot_3_tier_4_ability_3"}, {"zh-tw"},
				-- loc_text("輕蔑之盾")),

		--[+ PASSIVE 21 - Thy Wrath be Swift +]--
		-- create_template("talent_tree_zea_pas_021_en",
			-- {"loc_talent_zealot_movement_speed_on_damaged"}, {"en"},
				-- loc_text("Thy Wrath be Swift")),
		--[+ Russian +]-- Твой гнев будет быстр -- руоф Скорое возмездие
		create_template("talent_tree_zea_pas_021_en",
			{"loc_talent_zealot_movement_speed_on_damaged"}, {"ru"},
				loc_text("Твой гнев будет быстр")),
		--[+ Traditional Chinese - 勃然大怒 +]--
		-- create_template("talent_tree_zea_pas_021_tw",
			-- {"loc_talent_zealot_movement_speed_on_damaged"}, {"zh-tw"},
				-- loc_text("勃然大怒")),

		--[+ PASSIVE 22 - Good Balance +]--
		-- create_template("talent_tree_zea_pas_022_en",
			-- {"loc_talent_reduced_damage_after_dodge"}, {"en"},
				-- loc_text("Good Balance")),
		--[+ Russian +]-- Хороший баланс -- руоф Разумный баланс
		create_template("talent_tree_zea_pas_022_en",
			{"loc_talent_reduced_damage_after_dodge"}, {"ru"},
				loc_text("Хороший баланс")),
		--[+ Traditional Chinese - 四平八穩 +]--
		-- create_template("talent_tree_zea_pas_022_tw",
			-- {"loc_talent_reduced_damage_after_dodge"}, {"zh-tw"},
				-- loc_text("四平八穩")),

		--[+ PASSIVE 23 - Desperation +]--
		-- create_template("talent_tree_zea_pas_023_en",
			-- {"loc_talent_zealot_increased_damage_on_low_stamina"}, {"en"},
				-- loc_text("Desperation")),
		--[+ Russian +]-- Отчаяние
		-- create_template("talent_tree_zea_pas_023_ru",
			-- {"loc_talent_zealot_increased_damage_on_low_stamina"}, {"ru"},
				-- loc_text("Отчаяние")),
		--[+ Traditional Chinese - 背水一戰 +]--
		-- create_template("talent_tree_zea_pas_023_tw",
			-- {"loc_talent_zealot_increased_damage_on_low_stamina"}, {"zh-tw"},
				-- loc_text("背水一戰")),

		--[+ PASSIVE 24 - Holy Revenant +]--
		-- create_template("talent_tree_zea_pas_024_en",
			-- {"loc_talent_zealot_heal_during_resist_death"}, {"en"},
				-- loc_text("Holy Revenant")),
		--[+ Russian +]-- Святой призрак -- руоф Священный призрак
		create_template("talent_tree_zea_pas_024_ru",
			{"loc_talent_zealot_heal_during_resist_death"}, {"ru"},
				loc_text("Святой призрак")),
		--[+ Traditional Chinese - 吊命聖徒 +]--
		-- create_template("talent_tree_zea_pas_024_tw",
			-- {"loc_talent_zealot_he

		--[+ PASSIVE 25 - Sainted Gunslinger +]--
		-- create_template("talent_tree_zea_pas_025_en",
			-- {"loc_talent_zealot_increased_reload_speed_on_melee_kills"}, {"en"},
				-- loc_text("Sainted Gunslinger")),
		--[+ Russian +]-- Святой стрелок -- руоф Святой быстрый стрелок
		create_template("talent_tree_zea_pas_025_ru",
			{"loc_talent_zealot_increased_reload_speed_on_melee_kills"}, {"ru"},
				loc_text("Святой стрелок")),
		--[+ Traditional Chinese - 封聖神射手 +]--
		-- create_template("talent_tree_zea_pas_025_tw",
			-- {"loc_talent_zealot_increased_reload_speed_on_melee_kills"}, {"zh-tw"},
				-- loc_text("封聖神射手")),

		--[+ PASSIVE 26 - Hammer of Faith +]--
		-- create_template("talent_tree_zea_pas_026_en",
			-- {"loc_talent_zealot_3_tier_1_ability_1"}, {"en"},
				-- loc_text("Hammer of Faith")),
		--[+ Russian +]-- Молот веры
		-- create_template("talent_tree_zea_pas_026_ru",
			-- {"loc_talent_zealot_3_tier_1_ability_1"}, {"ru"},
				-- loc_text("Молот веры")),
		--[+ Traditional Chinese - 信仰之錘 +]--
		-- create_template("talent_tree_zea_pas_026_tw",
			-- {"loc_talent_zealot_3_tier_1_ability_1"}, {"zh-tw"},
				-- loc_text("信仰之錘")),

		--[+ PASSIVE 27 - Grievous Wounds +]--
		-- create_template("talent_tree_zea_pas_027_en",
			-- {"loc_talent_zealot_increased_stagger_on_weakspot_melee"}, {"en"},
				-- loc_text("Grievous Wounds")),
		--[+ Russian +]-- Тяжёлые раны -- руоф Опасные раны
		create_template("talent_tree_zea_pas_027_ru",
			{"loc_talent_zealot_increased_stagger_on_weakspot_melee"}, {"ru"},
				loc_text("Тяжёлые раны")),
		--[+ Traditional Chinese - 重傷 +]--
		-- create_template("talent_tree_zea_pas_027_tw",
			-- {"loc_talent_zealot_increased_stagger_on_weakspot_melee"}, {"zh-tw"},
				-- loc_text("重傷")),

		--[+ PASSIVE 28 - Ambuscade +]--
		-- create_template("talent_tree_zea_pas_028_en",
			-- {"loc_talent_zealot_increased_flanking_damage"}, {"en"},
				-- loc_text("Ambuscade")),
		--[+ Russian +]-- Засада
		-- create_template("talent_tree_zea_pas_028_ru",
			-- {"loc_talent_zealot_increased_flanking_damage"}, {"ru"},
				-- loc_text("Засада")),
		--[+ Traditional Chinese - 伏擊 +]--
		-- create_template("talent_tree_zea_pas_028_tw",
			-- {"loc_talent_zealot_increased_flanking_damage"}, {"zh-tw"},
				-- loc_text("伏擊")),

		--[+ PASSIVE 29 - Punishment +]--
		-- create_template("talent_tree_zea_pas_029_en",
			-- {"loc_talent_zealot_multi_hits_increase_impact"}, {"en"},
				-- loc_text("Punishment")),
		--[+ Russian +]-- Наказание
		-- create_template("talent_tree_zea_pas_029_ru",
			-- {"loc_talent_zealot_multi_hits_increase_impact"}, {"ru"},
				-- loc_text("Наказание")),
		--[+ Traditional Chinese - 懲罰 +]--
		-- create_template("talent_tree_zea_pas_029_tw",
			-- {"loc_talent_zealot_multi_hits_increase_impact"}, {"zh-tw"},
				-- loc_text("懲罰")),

		--[+ PASSIVE 30 - Faithful Frenzy +]--
		-- create_template("talent_tree_zea_pas_030_en",
			-- {"loc_talent_zealot_attack_speed"}, {"en"},
				-- loc_text("Faithful Frenzy")),
		--[+ Russian +]-- Правоверное неистовство -- руоф Верное безумие
		create_template("talent_tree_zea_pas_030_ru",
			{"loc_talent_zealot_attack_speed"}, {"ru"},
				loc_text("Правоверное неистовство")),
		--[+ Traditional Chinese - 信仰狂亂 +]--
		-- create_template("talent_tree_zea_pas_030_tw",
			-- {"loc_talent_zealot_attack_speed"}, {"zh-tw"},
				-- loc_text("信仰狂亂")),

		--[+ PASSIVE 31 - Sustained Assault +]--
		-- create_template("talent_tree_zea_pas_031_en",
			-- {"loc_talent_zealot_increased_damage_stacks_on_hit"}, {"en"},
				-- loc_text("Sustained Assault")),
		--[+ Russian +]-- Непрерывное нападение -- руоф Непрерывный штурм
		create_template("talent_tree_zea_pas_031_ru",
			{"loc_talent_zealot_increased_damage_stacks_on_hit"}, {"ru"},
				loc_text("Непрерывное нападение")),
		--[+ Traditional Chinese - 持續突擊 +]--
		-- create_template("talent_tree_zea_pas_031_tw",
			-- {"loc_talent_zealot_increased_damage_stacks_on_hit"}, {"zh-tw"},
				-- loc_text("持續突擊")),

		--[+ PASSIVE 32 - The Master's Retribution +]--
		-- create_template("talent_tree_zea_pas_032_en",
			-- {"loc_talent_zealot_3_tier_3_ability_1"}, {"en"},
				-- loc_text("The Master's Retribution")),
		--[+ Russian +]-- Возмездие Владыки
		-- create_template("talent_tree_zea_pas_032_ru",
			-- {"loc_talent_zealot_3_tier_3_ability_1"}, {"ru"},
				-- loc_text("Возмездие Владыки")),
		--[+ Traditional Chinese - 大師的反擊 +]--
		-- create_template("talent_tree_zea_pas_032_tw",

	   --[+ PASSIVE 33 - Faith's Fortitude +]--
		-- create_template("talent_tree_zea_pas_033_en",
			-- {"loc_talent_zealot_3_tier_1_ability_3"}, {"en"},
				-- loc_text("Faith's Fortitude")),
		--[+ Russian +]-- Стойкость веры
		-- create_template("talent_tree_zea_pas_033_ru",
			-- {"loc_talent_zealot_3_tier_1_ability_3"}, {"ru"},
				-- loc_text("Стойкость веры")),
		--[+ Traditional Chinese - 信仰的堅韌 +]--
		-- create_template("talent_tree_zea_pas_033_tw",
			-- {"loc_talent_zealot_3_tier_1_ability_3"}, {"zh-tw"},
				-- loc_text("信仰的堅韌")),

		--[+ PASSIVE 34 - Swift Certainty +]--
		-- create_template("talent_tree_zea_pas_034_en",
			-- {"loc_talent_zealot_improved_sprint"}, {"en"},
				-- loc_text("Swift Certainty")),
		--[+ Russian +]-- Быстрая уверенность -- руоф Скорая определенность
		create_template("talent_tree_zea_pas_034_ru",
			{"loc_talent_zealot_improved_sprint"}, {"ru"},
				loc_text("Быстрая уверенность")),
		--[+ Traditional Chinese - 堅定迅捷 +]--
		-- create_template("talent_tree_zea_pas_034_tw",
			-- {"loc_talent_zealot_improved_sprint"}, {"zh-tw"},
				-- loc_text("堅定迅捷")),




--[+ ++VETERAN - ВЕТЕРАН - 老兵 ++ +]--
	--[+ +BLITZ - БЛИЦ - 閃擊 + +]--
		--[+ BLITZ 0 - Frag Grenade +]--
		-- create_template("talent_tree_vet_blitz_000_en",
			-- {"loc_ability_frag_grenade"}, {"en"},
				-- loc_text("Frag Grenade")),
		--[+ Russian +]-- Фраг-граната
		-- create_template("talent_tree_vet_blitz_000_ru",
			-- {"loc_ability_frag_grenade"}, {"ru"},
				-- loc_text("Фраг-граната")),
		--[+ Traditional Chinese - 碎片手雷 +]--
		-- create_template("talent_tree_vet_blitz_000_tw",
			-- {"loc_ability_frag_grenade"}, {"zh-tw"},
				-- loc_text("碎片手雷")),
		
		--[+ BLITZ 1 - Shredder Frag Grenade +]--
		-- create_template("talent_tree_vet_blitz1_000_en",
			-- {"loc_talent_veteran_grenade_apply_bleed"}, {"en"},
				-- loc_text("Shredder Frag Grenade")),
		--[+ Russian +]-- Крошащая фраг-граната -- руоф Фраг-граната крошителя
		create_template("talent_tree_vet_blitz1_000_ru",
			{"loc_talent_veteran_grenade_apply_bleed"}, {"ru"},
				loc_text("Крошащая фраг-граната")),
		--[+ Traditional Chinese - 粉碎者破片手雷 +]--
		-- create_template("talent_tree_vet_blitz1_000_tw",
			-- {"loc_talent_veteran_grenade_apply_bleed"}, {"zh-tw"},
				-- loc_text("粉碎者破片手雷")),

		--[+ BLITZ 2 - Krak Grenade +]--
		-- create_template("talent_tree_vet_blitz2_000_en",
			-- {"loc_talent_ability_krak_grenade"}, {"en"},
				-- loc_text("Krak Grenade")),
		--[+ Russian +]-- Крак-граната
		-- create_template("talent_tree_vet_blitz2_000_ru",
			-- {"loc_talent_ability_krak_grenade"}, {"ru"},
				-- loc_text("Крак-граната")),
		--[+ Traditional Chinese - 穿甲手雷 +]--
		-- create_template("talent_tree_vet_blitz2_000_tw",
			-- {"loc_talent_ability_krak_grenade"}, {"zh-tw"},
				-- loc_text("穿甲手雷")),

		--[+ BLITZ 3 - Smoke Grenade +]--
		-- create_template("talent_tree_vet_blitz3_000_en",
			-- {"loc_ability_smoke_grenade"}, {"en"},
				-- loc_text("Smoke Grenade")),
		--[+ Russian +]-- Дымовая граната
		-- create_template("talent_tree_vet_blitz3_000_ru",
			-- {"loc_ability_smoke_grenade"}, {"ru"},
				-- loc_text("Дымовая граната")),
		--[+ Traditional Chinese - 煙霧手雷 +]--
		-- create_template("talent_tree_vet_blitz3_000_tw",
			-- {"loc_ability_smoke_grenade"}, {"zh-tw"},
				-- loc_text("煙霧手雷")),

	--[+ +AURA+ +]--
		--[+ AURA 0 - Scavenger +]--
		-- create_template("talent_tree_vet_aura_000_en",
			-- {"loc_talent_veteran_elite_kills_grant_ammo_coop"}, {"en"},
				-- loc_text("Scavenger")),
		--[+ Russian +]-- Сборщик -- руоф Собиратель
		create_template("talent_tree_vet_aura_000_ru",
			{"loc_talent_veteran_elite_kills_grant_ammo_coop"}, {"ru"},
				loc_text("Сборщик")),
		--[+ Traditional Chinese - 拾荒者 +]--
		-- create_template("talent_tree_vet_aura_000_tw",
			-- {"loc_talent_veteran_elite_kills_grant_ammo_coop"}, {"zh-tw"},
				-- loc_text("拾荒者")),

		--[+ AURA 1 - Survivalist +]--
		-- create_template("talent_tree_vet_aura_001_en",
			-- {"loc_talent_veteran_elite_kills_grant_ammo_coop_improved"}, {"en"},
				-- loc_text("Survivalist")),
		--[+ Russian +]-- Выживальщик -- руоф Специалист по выживанию
		create_template("talent_tree_vet_aura_001_ru",
			{"loc_talent_veteran_elite_kills_grant_ammo_coop_improved"}, {"ru"},
				loc_text("Выживальщик")),
		--[+ Traditional Chinese - 生存專家 +]--
		-- create_template("talent_tree_vet_aura_001_tw",
			-- {"loc_talent_veteran_elite_kills_grant_ammo_coop_improved"}, {"zh-tw"},
				-- loc_text("生存專家")),

		--[+ AURA 2 - Fire Team +]--
		-- create_template("talent_tree_vet_aura_002_en",
			-- {"loc_talent_veteran_damage_coherency"}, {"en"},
				-- loc_text("Fire Team")),
		--[+ Russian +]-- Огневая группа
		-- create_template("talent_tree_vet_aura_002_ru",
			-- {"loc_talent_veteran_damage_coherency"}, {"ru"},
				-- loc_text("Огневая группа")),
		--[+ Traditional Chinese - 火力小分隊 +]--
		-- create_template("talent_tree_vet_aura_002_tw",
			-- {"loc_talent_veteran_damage_coherency"}, {"zh-tw"},
				-- loc_text("火力小分隊")),

		--[+ AURA 3 - Close and Kill +]--
		-- create_template("talent_tree_vet_aura_003_en",
			-- {"loc_talent_veteran_movement_speed_coherency"}, {"en"},
				-- loc_text("Close and Kill")),
		--[+ Russian +]-- Приблизиться и убить
		-- create_template("talent_tree_vet_aura_003_ru",
			-- {"loc_talent_veteran_movement_speed_coherency"}, {"ru"},
				-- loc_text("Приблизиться и убить")),
		--[+ Traditional Chinese - 抵近殺敵 +]--
		-- create_template("talent_tree_vet_aura_003_tw",
			-- {"loc_talent_veteran_movement_speed_coherency"}, {"zh-tw"},
				-- loc_text("抵近殺敵")),

	--[+ +ABILITIES+ +]--
		--[+ ABILITY 0 - Volley Fire +]--
		-- create_template("talent_tree_vet_abil_000_en",
			-- {"loc_talent_veteran_2_combat_ability"}, {"en"},
				-- loc_text("Volley Fire")),
		--[+ Russian +]-- Залповый огонь
		-- create_template("talent_tree_vet_abil_000_ru",
			-- {"loc_talent_veteran_2_combat_ability"}, {"ru"},
				-- loc_text("Залповый огонь")),
		--[+ Traditional Chinese - 火力齊射 +]--
		-- create_template("talent_tree_vet_abil_000_tw",
			-- {"loc_talent_veteran_2_combat_ability"}, {"zh-tw"},
				-- loc_text("火力齊射")),

		--[+ ABILITY 1 - Executioner's Stance +]--
		-- create_template("talent_tree_vet_abil1_000_en",
			-- {"loc_talent_veteran_combat_ability_elite_and_special_outlines"}, {"en"},
				-- loc_text("Executioner's Stance")),
		--[+ Russian +]-- Стойка палача
		-- create_template("talent_tree_vet_abil1_000_ru",
			-- {"loc_talent_veteran_combat_ability_elite_and_special_outlines"}, {"ru"},
				-- loc_text("Стойка палача")),
		--[+ Traditional Chinese - 處決者姿態 +]--
		-- create_template("talent_tree_vet_abil1_000_tw",
			-- {"loc_talent_veteran_combat_ability_elite_and_special_outlines"}, {"zh-tw"},
				-- loc_text("處決者姿態")),

		--[+ ABILITY 1-1 - Enhanced Target Priority +]--
		-- create_template("talent_tree_vet_abil1_001_en",
			-- {"loc_talent_veteran_combat_ability_coherency_outlines"}, {"en"},
				-- loc_text("Enhanced Target Priority")),
		--[+ Russian +]-- Повышенный приоритет целей -- руоф Повышенный приоритет цели
		create_template("talent_tree_vet_abil1_001_ru",
			{"loc_talent_veteran_combat_ability_coherency_outlines"}, {"ru"},
				loc_text("Повышенный приоритет целей")),
		--[+ Traditional Chinese - 目標引導增強 +]--
		-- create_template("talent_tree_vet_abil1_001_tw",
			-- {"loc_talent_veteran_combat_ability_coherency_outlines"}, {"zh-tw"},
				-- loc_text("目標引導增強")),

		--[+ ABILITY 1-2 - Counter-Fire +]--
		-- create_template("talent_tree_vet_abil1_002_en",
			-- {"loc_talent_veteran_combat_ability_ranged_enemies_outlines"}, {"en"},
				-- loc_text("Counter-Fire")),
		--[+ Russian +]-- Ответный огонь
		-- create_template("talent_tree_vet_abil1_002_ru",
			-- {"loc_talent_veteran_combat_ability_ranged_enemies_outlines"}, {"ru"},
				-- loc_text("Ответный огонь")),
		--[+ Traditional Chinese - 火力反擊 +]--
		-- create_template("talent_tree_vet_abil1_002_tw",
			-- {"loc_talent_veteran_combat_ability_ranged_enemies_outlines"}, {"zh-tw"},
				-- loc_text("火力反擊")),

		--[+ ABILITY 1-3 - The Bigger they Are... +]--
		-- create_template("talent_tree_vet_abil1_003_en",
			-- {"loc_talent_ranger_volley_fire_big_game_hunter"}, {"en"},
				-- loc_text("The Bigger they Are...")),
		--[+ Russian +]-- Чем больше шкаф...
		-- create_template("talent_tree_vet_abil1_003_ru",
			-- {"loc_talent_ranger_volley_fire_big_game_hunter"}, {"ru"},
				-- loc_text("Чем больше шкаф...")),
		--[+ Traditional Chinese - 敵人越大... +]--
		-- create_template("talent_tree_vet_abil1_003_tw",
			-- {"loc_talent_ranger_volley_fire_big_game_hunter"}, {"zh-tw"},
				-- loc_text("敵人越大...")),

		--[+ ABILITY 1-4 - Marksman +]--
		-- create_template("talent_tree_vet_abil1_004_en",
			-- {"loc_talent_veteran_ability_marksman"}, {"en"},
				-- loc_text("Marksman")),
		--[+ Russian +]-- Меткий стрелок
		-- create_template("talent_tree_vet_abil1_004_ru",
			-- {"loc_talent_veteran_ability_marksman"}, {"ru"},
				-- loc_text("Меткий стрелок")),
		--[+ Traditional Chinese - 鷹眼 +]--
		-- create_template("talent_tree_vet_abil1_004_tw",
			-- {"loc_talent_veteran_ability_marksman"}, {"zh-tw"},
				-- loc_text("鷹眼")),

		--[+ ABILITY 2 - Voice of Command +]--
		-- create_template("talent_tree_vet_abil2_000_en",
			-- {"loc_talent_veteran_combat_ability_stagger_nearby_enemies"}, {"en"},
				-- loc_text("Voice of Command")),
		--[+ Russian +]-- Командный голос
		-- create_template("talent_tree_vet_abil2_000_ru",
			-- {"loc_talent_veteran_combat_ability_stagger_nearby_enemies"}, {"ru"},
				-- loc_text("Командный голос")),
		--[+ Traditional Chinese - 發號施令 +]--
		-- create_template("talent_tree_vet_abil2_000_tw",
			-- {"loc_talent_veteran_combat_ability_stagger_nearby_enemies"}, {"zh-tw"},
				-- loc_text("發號施令")),

		--[+ ABILITY 2-1 - Duty and Honour +]--
		-- create_template("talent_tree_vet_abil2_001_en",
			-- {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency"}, {"en"},
				-- loc_text("Duty and Honour")),
		--[+ Russian +]-- Долг и честь
		-- create_template("talent_tree_vet_abil2_001_ru",
			-- {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency"}, {"ru"},
				-- loc_text("Долг и честь")),
		--[+ Traditional Chinese - 責任與榮譽 +]--
		-- create_template("talent_tree_vet_abil2_001_tw",
			-- {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency"}, {"zh-tw"},
				-- loc_text("責任與榮譽")),

		--[+ ABILITY 2-2 - Only In Death Does Duty End +]--
		-- create_template("talent_tree_vet_abil2_002_en",
			-- {"loc_talent_veteran_combat_ability_revives"}, {"en"},
				-- loc_text("Only In Death Does Duty End")),
		--[+ Russian +]-- Только в смерти заканчивается долг -- руоф Лишь после смерти заканчивается служение долгу
		create_template("talent_tree_vet_abil2_002_ru",
			{"loc_talent_veteran_combat_ability_revives"}, {"ru"},
				loc_text("Только в смерти заканчивается долг")),
		--[+ Traditional Chinese - 只有死亡，職責才會終結 +]--
		-- create_template("talent_tree_vet_abil2_002_tw",
			-- {"loc_talent_veteran_combat_ability_revives"}, {"zh-tw"},
				-- loc_text("只有死亡，職責才會終結")),

		--[+ ABILITY 2-3 - For the Emperor! +]--
		-- create_template("talent_tree_vet_abil2_003_en",
			-- {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency"}, {"en"},
				-- loc_text("For the Emperor!")), За Императора! +]--
		--[+ Russian +]--
		-- create_template("talent_tree_vet_abil2_003_ru",
			-- {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency"}, {"ru"},
				-- loc_text("За Императора!")),
		--[+ Traditional Chinese - 為了皇帝！ +]--
		-- create_template("talent_tree_vet_abil2_003_tw",
			-- {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency"}, {"zh-tw"},
				-- loc_text("為了皇帝！")),

		--[+ ABILITY 3 - Infiltrate +]--
		-- create_template("talent_tree_vet_abil3_000_en",
			-- {"loc_talent_veteran_invisibility_on_combat_ability"}, {"en"},
				-- loc_text("Infiltrate")),
		--[+ Russian +]-- Проникновение
		-- create_template("talent_tree_vet_abil3_000_ru",
			-- {"loc_talent_veteran_invisibility_on_combat_ability"}, {"ru"},
				-- loc_text("Проникновение")),
		--[+ Traditional Chinese - 滲透 +]--
		-- create_template("talent_tree_vet_abil3_000_tw",
			-- {"loc_talent_veteran_invisibility_on_combat_ability"}, {"zh-tw"},
				-- loc_text("滲透")),

		--[+ ABILITY 3-1 - Low Profile +]--
		-- create_template("talent_tree_vet_abil3_001_en",
			-- {"loc_talent_veteran_reduced_threat_after_combat_ability"}, {"en"},
				-- loc_text("Low Profile")),
		--[+ Russian +]-- Незаметность -- руоф Сдержанность
		create_template("talent_tree_vet_abil3_001_ru",
			{"loc_talent_veteran_reduced_threat_after_combat_ability"}, {"ru"},
				loc_text("Незаметность")),
		--[+ Traditional Chinese - 低調 +]--
		-- create_template("talent_tree_vet_abil3_001_tw",
			-- {"loc_talent_veteran_reduced_threat_after_combat_ability"}, {"zh-tw"},
				-- loc_text("低調")),

		--[+ ABILITY 3-2 - Overwatch +]--
		-- create_template("talent_tree_vet_abil3_002_en",
			-- {"loc_talent_veteran_combat_ability_extra_charge"}, {"en"},
				-- loc_text("Overwatch")),
		--[+ Russian +]-- Наблюдение -- руоф Прикрытие
		create_template("talent_tree_vet_abil3_002_en",{"loc_talent_veteran_combat_ability_extra_charge"}, {"ru"},
				loc_text("Наблюдение")),
		--[+ Traditional Chinese - 掩護射擊 +]--
		-- create_template("talent_tree_vet_abil3_002_tw",
			-- {"loc_talent_veteran_combat_ability_extra_charge"}, {"zh-tw"},
				-- loc_text("掩護射擊")),

		--[+ ABILITY 3-3 - Hunter's Resolve +]--
		-- create_template("talent_tree_vet_abil3_003_en",
			-- {"loc_talent_veteran_toughness_bonus_leaving_invisibility"}, {"en"},
				-- loc_text("Hunter's Resolve")),
		--[+ Russian +]-- Упорство охотника
		-- create_template("talent_tree_vet_abil3_003_ru",
			-- {"loc_talent_veteran_toughness_bonus_leaving_invisibility"}, {"ru"},
				-- loc_text("Упорство охотника")),
		--[+ Traditional Chinese - 獵手決意 +]--
		-- create_template("talent_tree_vet_abil3_003_tw",
			-- {"loc_talent_veteran_toughness_bonus_leaving_invisibility"}, {"zh-tw"},
				-- loc_text("獵手決意")),

		--[+ ABILITY 3-4 - Surprise Attack +]--
		-- create_template("talent_tree_vet_abil3_004_en",
			-- {"loc_talent_veteran_damage_bonus_leaving_invisibility"}, {"en"},
				-- loc_text("Surprise Attack")),
		--[+ Russian +]-- Внезапная атака
		-- create_template("talent_tree_vet_abil3_004_ru",
			-- {"loc_talent_veteran_damage_bonus_leaving_invisibility"}, {"ru"},
				-- loc_text("Внезапная атака")),
		--[+ Traditional Chinese - 突襲 +]--
		-- create_template("talent_tree_vet_abil3_004_tw",
			-- {"loc_talent_veteran_damage_bonus_leaving_invisibility"}, {"zh-tw"},
				-- loc_text("突襲")),

		--[+ ABILITY 3-5 - Close Quarters Killzone +]--
		-- create_template("talent_tree_vet_abil3_005_en",
			-- {"loc_talent_veteran_ability_assault"}, {"en"},
				-- loc_text("Close Quarters Killzone")),
		--[+ Russian +]-- Зона ближнего боя -- руоф Зона поражения на ближней дистанции
		create_template("talent_tree_vet_abil3_005_ru",
			{"loc_talent_veteran_ability_assault"}, {"ru"},
				loc_text("Зона ближнего боя")),
		--[+ Traditional Chinese - 肉搏戰 +]--
		-- create_template("talent_tree_vet_abil3_005_tw",
			-- {"loc_talent_veteran_ability_assault"}, {"zh-tw"},
				-- loc_text("肉搏戰")),

	--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
		--[+ KEYSTONE 1 - Marksman's Focus +]--
		-- create_template("talent_tree_vet_keys1_000_en",
			-- {"loc_talent_veteran_snipers_focus"}, {"en"},
				-- loc_text("Marksman's Focus")),
		--[+ Russian +]-- Концентрация снайпера
		-- create_template("talent_tree_vet_keys1_000_ru",
			-- {"loc_talent_veteran_snipers_focus"}, {"ru"},
				-- loc_text("Концентрация снайпера")),
		--[+ Traditional Chinese - 狙擊專注 +]--
		create_template("talent_tree_vet_keys1_000_tw",
			{"loc_talent_veteran_snipers_focus"}, {"zh-tw"},
				loc_text("狙擊專注")),

		--[+ KEYSTONE 1-1 - Chink in their Armour +]--
		-- create_template("talent_tree_vet_keys1_001_en",
			-- {"loc_talent_veteran_snipers_focus_rending_bonus"}, {"en"},
				-- loc_text("Chink in their Armour")),
		--[+ Russian +]-- Щель в их броне -- руоф Щель в броне
		create_template("talent_tree_vet_keys1_001_ru",
			{"loc_talent_veteran_snipers_focus_rending_bonus"}, {"ru"},
				loc_text("Щель в их броне")),
		--[+ Traditional Chinese - 滲透盔甲 +]--
		create_template("talent_tree_vet_keys1_001_tw",
			{"loc_talent_veteran_snipers_focus_rending_bonus"}, {"zh-tw"},
				loc_text("滲透盔甲")),

		--[+ KEYSTONE 1-2 - Tunnel Vision +]--
		-- create_template("talent_tree_vet_keys1_002_en",
			-- {"loc_talent_veteran_snipers_focus_toughness_bonus"}, {"en"},
				-- loc_text("Tunnel Vision")),
		--[+ Russian +]-- Тоннельное зрение
		-- create_template("talent_tree_vet_keys1_002_ru",
			-- {"loc_talent_veteran_snipers_focus_toughness_bonus"}, {"ru"},
				-- loc_text("Тоннельное зрение")),
		--[+ Traditional Chinese - 視野狹窄 +]--
		create_template("talent_tree_vet_keys1_002_tw",
			{"loc_talent_veteran_snipers_focus_toughness_bonus"}, {"zh-tw"},
				loc_text("視野狹窄")),

		--[+ KEYSTONE 1-3 - Long Range Assassin +]--
		-- create_template("talent_tree_vet_keys1_003_en",
			-- {"loc_talent_veteran_snipers_focus_increased_stacks"}, {"en"},
				-- loc_text("Long Range Assassin")),
		--[+ Russian +]-- Дальнобойный ассасин
		-- create_template("talent_tree_vet_keys1_003_ru",
			-- {"loc_talent_veteran_snipers_focus_increased_stacks"}, {"ru"},
				-- loc_text("Дальнобойный ассасин")),
		--[+ Traditional Chinese - 遠程刺客 +]--
		create_template("talent_tree_vet_keys1_003_tw",
			{"loc_talent_veteran_snipers_focus_increased_stacks"}, {"zh-tw"},
				loc_text("遠程刺客")),

		--[+ KEYSTONE 1-4 - Camouflage +]--
		-- create_template("talent_tree_vet_keys1_004_en",
			-- {"loc_talent_veteran_snipers_focus_stacks_on_still"}, {"en"},
				-- loc_text("Camouflage")),
		--[+ Russian +]-- Камуфляж
		-- create_template("talent_tree_vet_keys1_004_ru",
			-- {"loc_talent_veteran_snipers_focus_stacks_on_still"}, {"ru"},
				-- loc_text("Камуфляж")),
		--[+ Traditional Chinese - 偽裝 +]--
		create_template("talent_tree_vet_keys1_004_tw",
			{"loc_talent_veteran_snipers_focus_stacks_on_still"}, {"zh-tw"},
				loc_text("偽裝")),

		--[+ KEYSTONE 2 - Focus Target! +]--
		-- create_template("talent_tree_vet_keys2_000_en",
			-- {"loc_talent_veteran_improved_tag"}, {"en"},
				-- loc_text("Focus Target!")),
		--[+ Russian +]-- Важная цель!
		-- create_template("talent_tree_vet_keys2_000_ru",
			-- {"loc_talent_veteran_improved_tag"}, {"ru"},
				-- loc_text("Важная цель!")),
		--[+ Traditional Chinese - 鎖定目標 +]--
		create_template("talent_tree_vet_keys2_000_tw",
			{"loc_talent_veteran_improved_tag"}, {"zh-tw"},
				loc_text("鎖定目標")),

		--[+ KEYSTONE 2-1 - Target Down! +]--
		-- create_template("talent_tree_vet_keys2_001_en",
			-- {"loc_talent_veteran_improved_tag_dead_bonus"}, {"en"},
				-- loc_text("Target Down!")),
		--[+ Russian +]-- Цель поражена!
		-- create_template("talent_tree_vet_keys2_001_ru",
			-- {"loc_talent_veteran_improved_tag_dead_bonus"}, {"ru"},
				-- loc_text("Цель поражена!")),
		--[+ Traditional Chinese - 目標擊倒！ +]--
		create_template("talent_tree_vet_keys2_001_tw",
			{"loc_talent_veteran_improved_tag_dead_bonus"}, {"zh-tw"},
				loc_text("目標擊倒！")),

		--[+ KEYSTONE 2-2 - Redirect Fire! +]--
		-- create_template("talent_tree_vet_keys2_002_en",
			-- {"loc_talent_veteran_improved_tag_dead_coherency_bonus"}, {"en"},
				-- loc_text("Redirect Fire!")),
		--[+ Russian +]-- Перевести огонь!
		-- create_template("talent_tree_vet_keys2_002_ru",
			-- {"loc_talent_veteran_improved_tag_dead_coherency_bonus"}, {"ru"},
				-- loc_text("Перевести огонь!")),
		--[+ Traditional Chinese - 轉移火力！ +]--
		create_template("talent_tree_vet_keys2_002_tw",
			{"loc_talent_veteran_improved_tag_dead_coherency_bonus"}, {"zh-tw"},
				loc_text("轉移火力！")),

		--[+ KEYSTONE 2-3 - Focused Fire +]--
		-- create_template("talent_tree_vet_keys2_003_en",
			-- {"loc_talent_veteran_improved_tag_more_damage"}, {"en"},
				-- loc_text("Focused Fire")),
		--[+ Russian +]-- Сосредоточенный огонь
		-- create_template("talent_tree_vet_keys2_003_ru",
			-- {"loc_talent_veteran_improved_tag_more_damage"}, {"ru"},
				-- loc_text("Сосредоточенный огонь")),
		--[+ Traditional Chinese - 集中火力 +]--
		create_template("talent_tree_vet_keys2_003_tw",
			{"loc_talent_veteran_improved_tag_more_damage"}, {"zh-tw"},
				loc_text("集中火力")),

		--[+ KEYSTONE 3 - Weapons Specialist +]--
		-- create_template("talent_tree_vet_keys3_000_en",
			-- {"loc_talent_veteran_weapon_switch"}, {"en"},
				-- loc_text("Weapons Specialist")),
		--[+ Russian +]-- Специалист по оружию -- руоф Специалист по вооружениям
		create_template("talent_tree_vet_keys3_000_ru",
			{"loc_talent_veteran_weapon_switch"}, {"ru"},
				loc_text("Специалист по оружию")),
		--[+ Traditional Chinese - 武器專家 +]--
		create_template("talent_tree_vet_keys3_000_tw",
			{"loc_talent_veteran_weapon_switch"}, {"zh-tw"},
				loc_text("武器專家")),

		--[+ KEYSTONE 3-1 - Always Prepared +]--
		-- create_template("talent_tree_vet_keys3_001_en",
			-- {"loc_talent_veteran_weapon_switch_replenish_ammo"}, {"en"},
				-- loc_text("Always Prepared")),
		--[+ Russian +]-- Всегда готов
		-- create_template("talent_tree_vet_keys3_001_ru",
			-- {"loc_talent_veteran_weapon_switch_replenish_ammo"}, {"ru"},
				-- loc_text("Всегда готов")),
		--[+ Traditional Chinese - 有備無患 +]--
		create_template("talent_tree_vet_keys3_001_tw",
			{"loc_talent_veteran_weapon_switch_replenish_ammo"}, {"zh-tw"},
				loc_text("有備無患")),

		--[+ KEYSTONE 3-2 - Invigorated +]--
		-- create_template("talent_tree_vet_keys3_002_en",
			-- {"loc_talent_veteran_weapon_switch_replenish_stamina"}, {"en"},
				-- loc_text("Invigorated")),
		--[+ Russian +]-- Ободрение
		-- create_template("talent_tree_vet_keys3_002_ru",
			-- {"loc_talent_veteran_weapon_switch_replenish_stamina"}, {"ru"},
				-- loc_text("Ободрение")),
		--[+ Traditional Chinese - 活力煥發 +]--
		create_template("talent_tree_vet_keys3_002_tw",
			{"loc_talent_veteran_weapon_switch_replenish_stamina"}, {"zh-tw"},
				loc_text("活力煥發")),

		--[+ KEYSTONE 3-3 - On Your Toes +]--
		-- create_template("talent_tree_vet_keys3_003_en",
			-- {"loc_talent_veteran_weapon_switch_replenish_toughness"}, {"en"},
				-- loc_text("On Your Toes")),
		--[+ Russian +]-- Наготове
		-- create_template("talent_tree_vet_keys3_003_ru",
			-- {"loc_talent_veteran_weapon_switch_replenish_toughness"}, {"ru"},
				-- loc_text("Наготове")),
		--[+ Traditional Chinese - 時刻警覺 +]--
		create_template("talent_tree_vet_keys3_003_tw",
			{"loc_talent_veteran_weapon_switch_replenish_toughness"}, {"zh-tw"},
				loc_text("時刻警覺")),

		--[+ KEYSTONE 3-4 - Fleeting Fire +]--
		-- create_template("talent_tree_vet_keys3_004_en",
			-- {"loc_talent_veteran_weapon_switch_reload_speed"}, {"en"},
				-- loc_text("Fleeting Fire")),
		--[+ Russian +]-- Беглый огонь
		-- create_template("talent_tree_vet_keys3_004_ru",
			-- {"loc_talent_veteran_weapon_switch_reload_speed"}, {"ru"},
				-- loc_text("Беглый огонь")),
		--[+ Traditional Chinese - 集火 +]--
		create_template("talent_tree_vet_keys3_004_tw",
			{"loc_talent_veteran_weapon_switch_reload_speed"}, {"zh-tw"},
				loc_text("集火")),

		--[+ KEYSTONE 3-5 - Conditioning +]--
		-- create_template("talent_tree_vet_keys3_005_en",
			-- {"loc_talent_veteran_weapon_switch_stamina_reduction"}, {"en"},
				-- loc_text("Conditioning")),
		-- [+ Russian +]-- Подготовка
		-- create_template("talent_tree_vet_keys3_005_ru",
			-- {"loc_talent_veteran_weapon_switch_stamina_reduction"}, {"ru"},
				-- loc_text("Подготовка")),
		--[+ Traditional Chinese - 身體調節 +]--
		create_template("talent_tree_vet_keys3_005_tw",
			{"loc_talent_veteran_weapon_switch_stamina_reduction"}, {"zh-tw"},
				loc_text("身體調節")),

	--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
		--[+ PASSIVE 1 - Longshot +]--
		-- create_template("talent_tree_vet_pas_001_en",
			-- {"loc_talent_veteran_increased_damage_based_on_range"}, {"en"},
				-- loc_text("Longshot")),
		--[+ Russian +]-- Дальний выстрел -- ruof Далекая перспектива
		create_template("talent_tree_vet_pas_001_ru",
			{"loc_talent_veteran_increased_damage_based_on_range"}, {"ru"},
				loc_text("Дальний выстрел")),
		--[+ Traditional Chinese - 遠射 +]--
		-- create_template("talent_tree_vet_pas_001_tw",
			-- {"loc_talent_veteran_increased_damage_based_on_range"}, {"zh-tw"},
				-- loc_text("遠射")),

		--[+ PASSIVE 2 - Close Order Drill +]--
		-- create_template("talent_tree_vet_pas_002_en",
			-- {"loc_talent_veteran_toughness_damage_reduction_per_ally"}, {"en"},
				-- loc_text("Close Order Drill")),
		--[+ Russian +]-- Строевая подготовка
		-- create_template("talent_tree_vet_pas_002_ru",
			-- {"loc_talent_veteran_toughness_damage_reduction_per_ally"}, {"ru"},
				-- loc_text("Строевая подготовка")),
		--[+ Traditional Chinese - 密集隊形訓練 +]--
		-- create_template("talent_tree_vet_pas_002_tw",
			-- {"loc_talent_veteran_toughness_damage_reduction_per_ally"}, {"zh-tw"},
				-- loc_text("密集隊形訓練")),

		--[+ PASSIVE 3 - One Motion +]--
		-- create_template("talent_tree_vet_pas_003_en",
			-- {"loc_talent_veteran_reduce_swap_time"}, {"en"},
				-- loc_text("One Motion")),
		--[+ Russian +]-- В одно движение -- руоф Одно движение
		create_template("talent_tree_vet_pas_003_ru",
			{"loc_talent_veteran_reduce_swap_time"}, {"ru"},
				loc_text("В одно движение")),
		--[+ Traditional Chinese - 行雲流水 +]--
		-- create_template("talent_tree_vet_pas_003_tw",
			-- {"loc_talent_veteran_reduce_swap_time"}, {"zh-tw"},
				-- loc_text("行雲流水")),

		--[+ PASSIVE 4 - Exhilarating Takedown +]--
		-- create_template("talent_tree_vet_pas_004_en",
			-- {"loc_talent_veteran_toughness_on_weakspot_kill"}, {"en"},
				-- loc_text("Exhilarating Takedown")),
		--[+ Russian +]-- Подбадривающее убийство -- руоф Бодрящее сокрушение
		create_template("talent_tree_vet_pas_004_ru",
			{"loc_talent_veteran_toughness_on_weakspot_kill"}, {"ru"},
				loc_text("Подбадривающее убийство")),
		--[+ Traditional Chinese - 振奮擊倒 +]--
		-- create_template("talent_tree_vet_pas_004_tw",
			-- {"loc_talent_veteran_toughness_on_weakspot_kill"}, {"zh-tw"},
				-- loc_text("振奮擊倒")),

		--[+ PASSIVE 5 - Volley Adept +]--
		-- create_template("talent_tree_vet_pas_005_en",
			-- {"loc_talent_veteran_reload_speed_on_elite_kill"}, {"en"},
				-- loc_text("Volley Adept")),
		--[+ Russian +]-- Умелый залп -- руоф Адепт залпа
		create_template("talent_tree_vet_pas_005_ru",
			{"loc_talent_veteran_reload_speed_on_elite_kill"}, {"ru"},
				loc_text("Умелый залп")),
		--[+ Traditional Chinese - 齊射能手 +]--
		-- create_template("talent_tree_vet_pas_005_tw",
			-- {"loc_talent_veteran_reload_speed_on_elite_kill"}, {"zh-tw"},
				-- loc_text("齊射能手")),

		--[+ PASSIVE 6 - Charismatic +]--
		-- create_template("talent_tree_vet_pas_006_en",
			-- {"loc_talent_veteran_increased_aura_radius"}, {"en"},
				-- loc_text("Charismatic")),
		--[+ Russian +]-- Харизматичный -- руоф Обаятельный
		create_template("talent_tree_vet_pas_006_ru",
			{"loc_talent_veteran_increased_aura_radius"}, {"ru"},
				loc_text("Харизматичный")),
		--[+ Traditional Chinese - 超凡魅力 +]--
		-- create_template("talent_tree_vet_pas_006_tw",
			-- {"loc_talent_veteran_increased_aura_radius"}, {"zh-tw"},
				-- loc_text("超凡魅力")),

		--[+ PASSIVE 7 - Confirmed Kill +]--
		-- create_template("talent_tree_vet_pas_007_en",
			-- {"loc_talent_veteran_toughness_on_elite_kill"}, {"en"},
				-- loc_text("Confirmed Kill")),
		--[+ Russian +]-- Подтверждённое убийство -- руоф Подтвержденное убийство
		create_template("talent_tree_vet_pas_007_ru",
			{"loc_talent_veteran_toughness_on_elite_kill"}, {"ru"},
				loc_text("Подтверждённое убийство")),
		--[+ Traditional Chinese - 擊殺紀錄 +]--
		-- create_template("talent_tree_vet_pas_007_tw",
			-- {"loc_talent_veteran_toughness_on_elite_kill"}, {"zh-tw"},
				-- loc_text("擊殺紀錄")),

		--[+ PASSIVE 8 - Tactical Reload +]--
		-- create_template("talent_tree_vet_pas_008_en",
			-- {"loc_talent_ranger_reload_speed_empty_mag"}, {"en"},
				-- loc_text("Tactical Reload")),
		--[+ Russian +]-- Тактическая перезарядка
		-- create_template("talent_tree_vet_pas_008_ru",
			-- {"loc_talent_ranger_reload_speed_empty_mag"}, {"ru"},
				-- loc_text("Тактическая перезарядка")),
		--[+ Traditional Chinese - 戰術裝填 +]--
		-- create_template("talent_tree_vet_pas_008_tw",
			-- {"loc_talent_ranger_reload_speed_empty_mag"}, {"zh-tw"},
				-- loc_text("戰術裝填")),

		--[+ PASSIVE 9 - Out for Blood +]--
		-- create_template("talent_tree_vet_pas_009_en",
			-- {"loc_talent_veteran_all_kills_replenish_toughness"}, {"en"},
				-- loc_text("Out for Blood")),
		--[+ Russian +]-- На тропе войны -- руоф В поисках крови
		create_template("talent_tree_vet_pas_009_ru",
			{"loc_talent_veteran_all_kills_replenish_toughness"}, {"ru"},
				loc_text("На тропе войны")),
		--[+ Traditional Chinese - 嗜血 +]--
		-- create_template("talent_tree_vet_pas_009_tw",
			-- {"loc_talent_veteran_all_kills_replenish_toughness"}, {"zh-tw"},
				-- loc_text("嗜血")),

		--[+ PASSIVE 10 - Get Back in the Fight! +]--
		-- create_template("talent_tree_vet_pas_010_en",
			-- {"loc_talent_veteran_movement_speed_on_toughness_broken"}, {"en"},
				-- loc_text("Get Back in the Fight!")),
		--[+ Russian +]-- Возвращайся в бой! -- руоф Вернуться в бой!
		create_template("talent_tree_vet_pas_010_ru",
			{"loc_talent_veteran_movement_speed_on_toughness_broken"}, {"ru"},
				loc_text("Возвращайся в бой!")),
		--[+ Traditional Chinese - 重投戰鬥！ +]--
		-- create_template("talent_tree_vet_pas_010_tw",
			-- {"loc_talent_veteran_movement_speed_on_toughness_broken"}, {"zh-tw"},
				-- loc_text("重投戰鬥！")),

		--[+ PASSIVE 11 - Catch a Breath +]--
		-- create_template("talent_tree_vet_pas_011_en",
			-- {"loc_talent_veteran_replenish_toughness_outside_melee"}, {"en"},
				-- loc_text("Catch a Breath")),
		--[+ Russian +]-- Переведи дух -- руоф Передышка
		create_template("talent_tree_vet_pas_011_ru",
			{"loc_talent_veteran_replenish_toughness_outside_melee"}, {"ru"},
				loc_text("Переведи дух")),
		--[+ Traditional Chinese - 喘息片刻 +]--
		-- create_template("talent_tree_vet_pas_011_tw",
			-- {"loc_talent_veteran_replenish_toughness_outside_melee"}, {"zh-tw"},
				-- loc_text("喘息片刻")),

		--[+ PASSIVE 12 - Grenade Tinkerer +]--
		-- create_template("talent_tree_vet_pas_012_en",
			-- {"loc_talent_veteran_improved_grenades"}, {"en"},
				-- loc_text("Grenade Tinkerer")),
		--[+ Russian +]-- Гранатный мастер -- руоф Любитель гранат
		create_template("talent_tree_vet_pas_012_ru",
			{"loc_talent_veteran_improved_grenades"}, {"ru"},
				loc_text("Гранатный мастер")),
		--[+ Traditional Chinese - 手雷專家 +]--
		-- create_template("talent_tree_vet_pas_012_tw",
			-- {"loc_talent_veteran_improved_grenades"}, {"zh-tw"},
				-- loc_text("手雷專家")),

		--[+ PASSIVE 13 - Covering Fire +]--
		-- create_template("talent_tree_vet_pas_013_en",
			-- {"loc_talent_veteran_replenish_toughness_and_boost_allies"}, {"en"},
				-- loc_text("Covering Fire")),
		--[+ Russian +]-- Прикрывающий огонь -- руоф Прикрытие огнем
		create_template("talent_tree_vet_pas_013_ru",
			{"loc_talent_veteran_replenish_toughness_and_boost_allies"}, {"ru"},
				loc_text("Прикрывающий огонь")),
		--[+ Traditional Chinese - 火力掩護 +]--
		-- create_template("talent_tree_vet_pas_013_tw",
			-- {"loc_talent_veteran_replenish_toughness_and_boost_allies"}, {"zh-tw"},
				-- loc_text("火力掩護")),

		--[+ PASSIVE 14 - Serrated Blade +]--
		-- create_template("talent_tree_vet_pas_014_en",
			-- {"loc_talent_veteran_hits_cause_bleed"}, {"en"},
				-- loc_text("Serrated Blade")),
		--[+ Russian +]-- Зазубренный клинок -- руоф Зазубренное лезвие
		create_template("talent_tree_vet_pas_014_ru",
			{"loc_talent_veteran_hits_cause_bleed"}, {"ru"},
				loc_text("Зазубренный клинок")),
		--[+ Traditional Chinese - 鋸齒刀刃 +]--
		-- create_template("talent_tree_vet_pas_014_tw",
			-- {"loc_talent_veteran_hits_cause_bleed"}, {"zh-tw"},
				-- loc_text("鋸齒刀刃")),

		--[+ PASSIVE 15 - Agile Engagement +]--
		-- create_template("talent_tree_vet_pas_015_en",
			-- {"loc_talent_veteran_kill_grants_damage_to_other_slot"}, {"en"},
				-- loc_text("Agile Engagement")),
		--[+ Russian +]-- Ловкое взаимодействие
		-- create_template("talent_tree_vet_pas_015_ru",
			-- {"loc_talent_veteran_kill_grants_damage_to_other_slot"}, {"ru"},
				-- loc_text("Ловкое взаимодействие")),
		--[+ Traditional Chinese - 靈活接敵 +]--
		-- create_template("talent_tree_vet_pas_015_tw",
			-- {"loc_talent_veteran_kill_grants_damage_to_other_slot"}, {"zh-tw"},
				-- loc_text("靈活接敵")),

		--[+ PASSIVE 16 - Kill Zone +]--
		-- create_template("talent_tree_vet_pas_016_en",
			-- {"loc_talent_veteran_ranged_power_out_of_melee"}, {"en"},
				-- loc_text("Kill Zone")),
		--[+ Russian +]-- Зона поражение
		-- create_template("talent_tree_vet_pas_016_ru",
			-- {"loc_talent_veteran_ranged_power_out_of_melee"}, {"ru"},
				-- loc_text("Зона поражение")),
		--[+ Traditional Chinese - 殺戮地帶 +]--
		-- create_template("talent_tree_vet_pas_016_tw",
			-- {"loc_talent_veteran_ranged_power_out_of_melee"}, {"zh-tw"},
				-- loc_text("殺戮地帶")),

		--[+ PASSIVE 17 - Opening Salvo +]--
		-- create_template("talent_tree_vet_pas_017_en",
			-- {"loc_talent_veteran_bonus_crit_chance_on_ammo"}, {"en"},
				-- loc_text("Opening Salvo")),
		--[+ Russian +]-- Открывающий залп
		-- create_template("talent_tree_vet_pas_017_ru",
			-- {"loc_talent_veteran_bonus_crit_chance_on_ammo"}, {"ru"},
				-- loc_text("Открывающий залп")),
		--[+ Traditional Chinese - 首輪齊射 +]--
		-- create_template("talent_tree_vet_pas_017_tw",
			-- {"loc_talent_veteran_bonus_crit_chance_on_ammo"}, {"zh-tw"},
				-- loc_text("首輪齊射")),

		--[+ PASSIVE 18 - Field Improvisation +]--
		-- create_template("talent_tree_vet_pas_018_en",
			-- {"loc_talent_veteran_better_deployables"}, {"en"},
				-- loc_text("Field Improvisation")),
		--[+ Russian +]-- Полевая импровизация
		-- create_template("talent_tree_vet_pas_018_ru",
			-- {"loc_talent_veteran_better_deployables"}, {"ru"},
				-- loc_text("Полевая импровизация")),
		--[+ Traditional Chinese - 臨場發揮 +]--
		-- create_template("talent_tree_vet_pas_018_tw",
			-- {"loc_talent_veteran_better_deployables"}, {"zh-tw"},
				-- loc_text("臨場發揮")),

		--[+ PASSIVE 19 - Twinned Blast +]--
		-- create_template("talent_tree_vet_pas_019_en",
			-- {"loc_talent_veteran_extra_grenade_throw_chance"}, {"en"},
				-- loc_text("Twinned Blast")),
		--[+ Russian +]-- Двойной взрыв -- Спаренный взрыв
		create_template("talent_tree_vet_pas_019_ru",
			{"loc_talent_veteran_extra_grenade_throw_chance"}, {"ru"},
				loc_text("Двойной взрыв")),
		--[+ Traditional Chinese - 雙響炮 +]--
		-- create_template("talent_tree_vet_pas_019_tw",
			-- {"loc_talent_veteran_extra_grenade_throw_chance"}, {"zh-tw"},
				-- loc_text("雙響炮")),

		--[+ PASSIVE 20 - Demolition Stockpile +]--
		-- create_template("talent_tree_vet_pas_020_en",
			-- {"loc_talent_ranger_replenish_grenade"}, {"en"},
				-- loc_text("Demolition Stockpile")),
		--[+ Russian +]-- Склад взрывчатки
		-- create_template("talent_tree_vet_pas_020_ru",
			-- {"loc_talent_ranger_replenish_grenade"}, {"ru"},
				-- loc_text("Склад взрывчатки")),
		--[+ Traditional Chinese - 炸藥儲備 +]--
		-- create_template("talent_tree_vet_pas_020_tw",
			-- {"loc_talent_ranger_replenish_grenade"}, {"zh-tw"},
				-- loc_text("炸藥儲備")),

		--[+ PASSIVE 21 - Grenadier +]--
		-- create_template("talent_tree_vet_pas_021_en",
			-- {"loc_talent_veteran_extra_grenade"}, {"en"},
				-- loc_text("Grenadier")),
		--[+ Russian +]-- Гренадёр -- руоф Гренадер
		create_template("talent_tree_vet_pas_021_ru",
			{"loc_talent_veteran_extra_grenade"}, {"ru"},
				loc_text("Гренадёр")),
		--[+ Traditional Chinese - 擲彈兵 +]--
		-- create_template("talent_tree_vet_pas_021_tw",
			-- {"loc_talent_veteran_extra_grenade"}, {"zh-tw"},
				-- loc_text("擲彈兵")),

		--[+ PASSIVE 22 - Leave No One Behind +]--
		-- create_template("talent_tree_vet_pas_022_en",
			-- {"loc_talent_veteran_movement_speed_towards_downed"}, {"en"},
				-- loc_text("Leave No One Behind")),
		--[+ Russian +]-- Никого не оставлять позади
		-- create_template("talent_tree_vet_pas_022_ru",
			-- {"loc_talent_veteran_movement_speed_towards_downed"}, {"ru"},
				-- loc_text("Никого не оставлять позади")),
		--[+ Traditional Chinese - 不拋棄不放棄 +]--
		-- create_template("talent_tree_vet_pas_022_tw",
			-- {"loc_talent_veteran_movement_speed_towards_downed"}, {"zh-tw"},
				-- loc_text("不拋棄不放棄")),

		--[+ PASSIVE 23 - Precision Strikes +]--
		-- create_template("talent_tree_vet_pas_023_en",
			-- {"loc_talent_veteran_increased_weakspot_damage"}, {"en"},
				-- loc_text("Precision Strikes")),
		--[+ Russian +]-- Точные удары
		-- create_template("talent_tree_vet_pas_023_ru",
			-- {"loc_talent_veteran_increased_weakspot_damage"}, {"ru"},
				-- loc_text("Точные удары")),
		--[+ Traditional Chinese - 精準打擊 +]--
		-- create_template("talent_tree_vet_pas_023_tw",
			-- {"loc_talent_veteran_increased_weakspot_damage"}, {"zh-tw"},
				-- loc_text("精準打擊")),

		--[+ PASSIVE 24 - Determined +]--
		-- create_template("talent_tree_vet_pas_024_en",
			-- {"loc_talent_veteran_supression_immunity"}, {"en"},
				-- loc_text("Determined")),
		--[+ Russian +]-- Решительность
		-- create_template("talent_tree_vet_pas_024_ru",
			-- {"loc_talent_veteran_supression_immunity"}, {"ru"},
				-- loc_text("Решительность")),
		--[+ Traditional Chinese - 堅定不移 +]--
		-- create_template("talent_tree_vet_pas_024_tw",
			-- {"loc_talent_veteran_supression_immunity"}, {"zh-tw"},
				-- loc_text("堅定不移")),

		--[+ PASSIVE 25 - Deadshot +]--
		-- create_template("talent_tree_vet_pas_025_en",
			-- {"loc_talent_ranged_ads_drains_stamina_boost"}, {"en"},
				-- loc_text("Deadshot")),
		--[+ Russian +]-- Смертельный выстрел
		-- create_template("talent_tree_vet_pas_025_ru",
			-- {"loc_talent_ranged_ads_drains_stamina_boost"}, {"ru"},
				-- loc_text("Смертельный выстрел")),
		--[+ Traditional Chinese - 死亡射手 +]--
		-- create_template("talent_tree_vet_pas_025_tw",
			-- {"loc_talent_ranged_ads_drains_stamina_boost"}, {"zh-tw"},
				-- loc_text("死亡射手")),

		--[+ PASSIVE 26 - Born Leader +]--
		-- create_template("talent_tree_vet_pas_026_en",
			-- {"loc_talent_veteran_allies_share_toughness"}, {"en"},
				-- loc_text("Born Leader")),
		--[+ Russian +]-- Прирождённый лидер -- руоф Прирожденный лидер
		create_template("talent_tree_vet_pas_026_ru",
			{"loc_talent_veteran_allies_share_toughness"}, {"ru"},
				loc_text("Прирождённый лидер")),
		--[+ Traditional Chinese - 天生領袖 +]--
		-- create_template("talent_tree_vet_pas_026_tw",
			-- {"loc_talent_veteran_allies_share_toughness"}, {"zh-tw"},
				-- loc_text("天生領袖")),

		--[+ PASSIVE 27 - Keep Their Heads Down! +]--
		-- create_template("talent_tree_vet_pas_027_en",
			-- {"loc_talent_veteran_increase_suppression"}, {"en"},
				-- loc_text("Keep Their Heads Down!")),
		--[+ Russian +]-- Не давай им поднять головы! -- руоф Пригнитесь!
		create_template("talent_tree_vet_pas_027_ru",
			{"loc_talent_veteran_increase_suppression"}, {"ru"},
				loc_text("Не давай им поднять головы!")),
		--[+ Traditional Chinese - 讓他們全趴下 +]--
		-- create_template("talent_tree_vet_pas_027_tw",
			-- {"loc_talent_veteran_increase_suppression"}, {"zh-tw"},
				-- loc_text("讓他們全趴下")),

		--[+ PASSIVE 28 - Reciprocity +]--
		-- create_template("talent_tree_vet_pas_028_en",
			-- {"loc_talent_veteran_dodging_grants_crit"}, {"en"},
				-- loc_text("Reciprocity")),
		--[+ Russian +]-- Взаимообмен -- руоф Взаимная выгода
		create_template("talent_tree_vet_pas_028_ru",
			{"loc_talent_veteran_dodging_grants_crit"}, {"ru"},
				loc_text("Взаимообмен")),
		--[+ Traditional Chinese - 互惠互利 +]--
		-- create_template("talent_tree_vet_pas_028_tw",
			-- {"loc_talent_veteran_dodging_grants_crit"}, {"zh-tw"},
				-- loc_text("互惠互利")),

		--[+ PASSIVE 29 - Duck and Dive +]--
		-- create_template("talent_tree_vet_pas_029_en",
			-- {"loc_talent_ranger_stamina_on_ranged_dodge"}, {"en"},
				-- loc_text("Duck and Dive")),
		--[+ Russian +]-- Пригнись и увернись -- руоф Голову в песок
		create_template("talent_tree_vet_pas_029_ru",
			{"loc_talent_ranger_stamina_on_ranged_dodge"}, {"ru"},
				loc_text("Пригнись и увернись")),
		--[+ Traditional Chinese - 靈活應對 +]--
		-- create_template("talent_tree_vet_pas_029_tw",
			-- {"loc_talent_ranger_stamina_on_ranged_dodge"}, {"zh-tw"},
				-- loc_text("靈活應對")),

		--[+ PASSIVE 30 - Fully Loaded +]--
		-- create_template("talent_tree_vet_pas_030_en",
			-- {"loc_talent_veteran_ammo_increase"}, {"en"},
				-- loc_text("Fully Loaded")),
		--[+ Russian +]-- Полный запас -- руоф Полный заряд
		create_template("talent_tree_vet_pas_030_ru",
			{"loc_talent_veteran_ammo_increase"}, {"ru"},
				loc_text("Полный запас")),
		--[+ Traditional Chinese - 全副武裝 +]--
		-- create_template("talent_tree_vet_pas_030_tw",
			-- {"loc_talent_veteran_ammo_increase"}, {"zh-tw"},
				-- loc_text("全副武裝")),

		--[+ PASSIVE 31 - Tactical Awareness +]--
		-- create_template("talent_tree_vet_pas_031_en",
			-- {"loc_talent_veteran_elite_kills_reduce_cooldown"}, {"en"},
				-- loc_text("Tactical Awareness")),
		--[+ Russian +]-- Тактическая осведомлённость -- руоф Тактическая осведомленность
		create_template("talent_tree_vet_pas_031_ru",
			{"loc_talent_veteran_elite_kills_reduce_cooldown"}, {"ru"},
				loc_text("Тактическая осведомлённость")),
		--[+ Traditional Chinese - 戰術意識 +]--
		-- create_template("talent_tree_vet_pas_031_tw",
			-- {"loc_talent_veteran_elite_kills_reduce_cooldown"}, {"zh-tw"},
				-- loc_text("戰術意識")),

		--[+ PASSIVE 32 - Desperado +]--
		-- create_template("talent_tree_vet_pas_032_en",
			-- {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse"}, {"en"},
				-- loc_text("Desperado")),
		--[+ Russian +]-- Сорвиголова
		-- create_template("talent_tree_vet_pas_032_ru",
			-- {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse"}, {"ru"},
				-- loc_text("Сорвиголова")),
		--[+ Traditional Chinese - 亡命之徒 +]--
		-- create_template("talent_tree_vet_pas_032_tw",
			-- {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse"}, {"zh-tw"},
				-- loc_text("亡命之徒")),

		--[+ PASSIVE 33 - Shock Trooper +]--
		-- create_template("talent_tree_vet_pas_033_en",
			-- {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit"}, {"en"},
				-- loc_text("Shock Trooper")),
		--[+ Russian +]-- Штурмовик
		-- create_template("talent_tree_vet_pas_033_ru",
			-- {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit"}, {"ru"},
				-- loc_text("Штурмовик")),
		--[+ Traditional Chinese - 突擊隊 +]--
		-- create_template("talent_tree_vet_pas_033_tw",
			-- {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit"}, {"zh-tw"},
				-- loc_text("突擊隊")),

		--[+ PASSIVE 34 - Superiority Complex +]--
		-- create_template("talent_tree_vet_pas_034_en",
			-- {"loc_talent_veteran_increase_damage_vs_elites"}, {"en"},
				-- loc_text("Superiority Complex")),
		--[+ Russian +]-- Мания величия
		-- create_template("talent_tree_vet_pas_034_ru",
			-- {"loc_talent_veteran_increase_damage_vs_elites"}, {"ru"},
				-- loc_text("Мания величия")),
		--[+ Traditional Chinese - 優越情結 +]--
		-- create_template("talent_tree_vet_pas_034_tw",
			-- {"loc_talent_veteran_increase_damage_vs_elites"}, {"zh-tw"},
				-- loc_text("優越情結")),

		--[+ PASSIVE 35 - Iron Will +]--
		-- create_template("talent_tree_vet_pas_035_en",
			-- {"loc_talent_veteran_block_break_gives_tdr"}, {"en"},
				-- loc_text("Iron Will")),
		--[+ Russian +]-- Железная воля
		-- create_template("talent_tree_vet_pas_035_ru",
			-- {"loc_talent_veteran_block_break_gives_tdr"}, {"ru"},
				-- loc_text("Железная воля")),
		--[+ Traditional Chinese - 鋼鐵意志 +]--
		-- create_template("talent_tree_vet_pas_035_tw",
			-- {"loc_talent_veteran_block_break_gives_tdr"}, {"zh-tw"},
				-- loc_text("鋼鐵意志")),

		--[+ PASSIVE 36 - Demolition Team +]--
		-- create_template("talent_tree_vet_pas_036_en",
			-- {"loc_talent_ranger_grenade_on_elite_kills_coop"}, {"en"},
				-- loc_text("Demolition Team")),
		--[+ Russian +]-- Команда подрывников -- руоф Группа подрыва
		create_template("talent_tree_vet_pas_036_ru",
			{"loc_talent_ranger_grenade_on_elite_kills_coop"}, {"ru"},
				loc_text("Команда подрывников")),
		--[+ Traditional Chinese - 爆破小隊 +]--
		-- create_template("talent_tree_vet_pas_036_tw",
			-- {"loc_talent_ranger_grenade_on_elite_kills_coop"}, {"zh-tw"},
				-- loc_text("爆破小隊")),

		--[+ PASSIVE 37 - Exploit Weakness +]--
		-- create_template("talent_tree_vet_pas_037_en",
			-- {"loc_talent_veteran_crits_rend"}, {"en"},
				-- loc_text("Exploit Weakness")),
		--[+ Russian +]-- Использование слабостей
		-- create_template("talent_tree_vet_pas_037_ru",
			-- {"loc_talent_veteran_crits_rend"}, {"ru"},
				-- loc_text("Использование слабостей")),
		--[+ Traditional Chinese - 趁火打劫 +]--
		-- create_template("talent_tree_vet_pas_037_tw",
			-- {"loc_talent_veteran_crits_rend"}, {"zh-tw"},
				-- loc_text("趁火打劫")),

		--[+ PASSIVE 38 - Onslaught +]--
		-- create_template("talent_tree_vet_pas_038_en",
			-- {"loc_talent_veteran_continous_hits_apply_rending"}, {"en"},
				-- loc_text("Onslaught")),
		--[+ Russian +]-- Натиск
		-- create_template("talent_tree_vet_pas_038_en",
			-- {"loc_talent_veteran_continous_hits_apply_rending"}, {"ru"},
				-- loc_text("Натиск")),
		--[+ Traditional Chinese - 猛攻 +]--
		-- create_template("talent_tree_vet_pas_038_tw",
			-- {"loc_talent_veteran_continous_hits_apply_rending"}, {"zh-tw"},
				-- loc_text("猛攻")),

		--[+ PASSIVE 39 - Trench Fighter Drill +]--
		-- create_template("talent_tree_vet_pas_039_en",
			-- {"loc_talent_veteran_attack_speed"}, {"en"},
				-- loc_text("Trench Fighter Drill")),
		--[+ Russian +]-- Окопные тренировки -- руоф Тренировка в окопах
		create_template("talent_tree_vet_pas_039_ru",
			{"loc_talent_veteran_attack_speed"}, {"ru"},
				loc_text("Окопные тренировки")),
		--[+ Traditional Chinese - 戰壕兵訓練 +]--
		-- create_template("talent_tree_vet_pas_039_tw",
			-- {"loc_talent_veteran_attack_speed"}, {"zh-tw"},
				-- loc_text("戰壕兵訓練")),

		--[+ PASSIVE 40 - Skirmisher +]--
		-- create_template("talent_tree_vet_pas_040_en",
			-- {"loc_talent_veteran_damage_damage_after_sprinting"}, {"en"},
				-- loc_text("Skirmisher")),
		--[+ Russian +]-- Застрельщик
		-- create_template("talent_tree_vet_pas_040_ru",
			-- {"loc_talent_veteran_damage_damage_after_sprinting"}, {"ru"},
				-- loc_text("Застрельщик")),
		--[+ Traditional Chinese - 遊擊者 +]--
		-- create_template("talent_tree_vet_pas_040_tw",
			-- {"loc_talent_veteran_damage_damage_after_sprinting"}, {"zh-tw"},
				-- loc_text("遊擊者")),

		--[+ PASSIVE 41 - Competitive Urge +]--
		-- create_template("talent_tree_vet_pas_041_en",
			-- {"loc_talent_veteran_ally_kills_increase_damage"}, {"en"},
				-- loc_text("Competitive Urge")),
		--[+ Russian +]-- Соревновательный инстинкт -- руоф Состязательный мотив
		create_template("talent_tree_vet_pas_041_ru",
			{"loc_talent_veteran_ally_kills_increase_damage"}, {"ru"},
				loc_text("Соревновательный инстинкт")),
		--[+ Traditional Chinese - 求勝心 +]--
		-- create_template("talent_tree_vet_pas_041_tw",
			-- {"loc_talent_veteran_ally_kills_increase_damage"}, {"zh-tw"},
				-- loc_text("求勝心")),

		--[+ PASSIVE 42 - Rending Strikes +]--
		-- create_template("talent_tree_vet_pas_042_en",
			-- {"loc_talent_veteran_rending_bonus"}, {"en"},
				-- loc_text("Rending Strikes")),
		--[+ Russian +]-- Пробивающие удары -- руоф Разрушительные удары
		create_template("talent_tree_vet_pas_042_ru",
			{"loc_talent_veteran_rending_bonus"}, {"ru"},
				loc_text("Пробивающие удары")),
		--[+ Traditional Chinese - 裂擊 +]--
		-- create_template("talent_tree_vet_pas_042_tw",
			-- {"loc_talent_veteran_rending_bonus"}, {"zh-tw"},
				-- loc_text("裂擊")),

		--[+ PASSIVE 43 - Bring it Down! +]--
		-- create_template("talent_tree_vet_pas_043_en",
			-- {"loc_talent_veteran_big_game_hunter"}, {"en"},
				-- loc_text("Bring it Down!")),
		--[+ Russian +]-- Убей их! -- руоф Убивай!
		create_template("talent_tree_vet_pas_043_ru",
			{"loc_talent_veteran_big_game_hunter"}, {"ru"},
				loc_text("Убей их!")),
		--[+ Traditional Chinese - 幹掉它! +]--
		-- create_template("talent_tree_vet_pas_043_tw",
			-- {"loc_talent_veteran_big_game_hunter"}, {"zh-tw"},
				-- loc_text("幹掉它!")),




--[+ ++OGRYN - ОГРИН - 歐格林 ++ +]--
	--[+ +BLITZ - БЛИЦ+ +]--
		--[+ BLITZ 0 - Big Box of Hurt +]--
		-- create_template("talent_tree_ogr_blitz0_000_en",
			-- {"loc_ability_ogryn_grenade_box"}, {"en"},
				-- loc_text("Big Box of Hurt")),
		--[+ Russian +]-- Большая коробка боли -- руоф Ящик, полный боли
		create_template("talent_tree_ogr_blitz0_000_ru",
			{"loc_ability_ogryn_grenade_box"}, {"ru"},
				loc_text("Большая коробка боли")),
		--[+ Traditional Chinese - 巨量傷害盒 +]--
		-- create_template("talent_tree_ogr_blitz0_000_tw",
			-- {"loc_ability_ogryn_grenade_box"}, {"zh-tw"},
				-- loc_text("巨量傷害盒")),

		--[+ BLITZ 1 - Big Friendly Rock +]--
		-- create_template("talent_tree_ogr_blitz1_000_en",
			-- {"loc_ability_ogryn_friend_rock"}, {"en"},
				-- loc_text("Big Friendly Rock")),
		--[+ Russian +]-- Большой дружелюбный валун
		-- create_template("talent_tree_ogr_blitz1_000_ru",
			-- {"loc_ability_ogryn_friend_rock"}, {"ru"},
				-- loc_text("Большой дружелюбный валун")),
		--[+ Traditional Chinese - 投石問路 +]--
		-- create_template("talent_tree_ogr_blitz1_000_tw",
			-- {"loc_ability_ogryn_friend_rock"}, {"zh-tw"},
				-- loc_text("投石問路")),

		--[+ BLITZ 2 - Bombs Away! +]--
		-- create_template("talent_tree_ogr_blitz2_000_en",
			-- {"loc_talent_bonebreaker_grenade_super_armor_explosion"}, {"en"},
				-- loc_text("Bombs Away!")),
		--[+ Russian +]-- Бросай бомбы! -- руоф Кидаю бомбу!
		create_template("talent_tree_ogr_blitz2_000_ru",
			{"loc_talent_bonebreaker_grenade_super_armor_explosion"}, {"ru"},
				loc_text("Бросай бомбы!")),
		--[+ Traditional Chinese - 投彈完畢! +]--
		-- create_template("talent_tree_ogr_blitz2_000_tw",
			-- {"loc_talent_bonebreaker_grenade_super_armor_explosion"}, {"zh-tw"},
				-- loc_text("投彈完畢!")),

		--[+ BLITZ 3 - Frag Bomb +]--
		-- create_template("talent_tree_ogr_blitz3_000_en",
			-- {"loc_ability_ogryn_grenade_demolition"}, {"en"},
				-- loc_text("Frag Bomb")),
		--[+ Russian +]-- Фраг-бомба -- руоф Осколочная бомба
		create_template("talent_tree_ogr_blitz3_000_ru",
			{"loc_ability_ogryn_grenade_demolition"}, {"ru"},
				loc_text("Фраг-бомба")),
		--[+ Traditional Chinese - 破片炸彈 +]--
		-- create_template("talent_tree_ogr_blitz3_000_tw",
			-- {"loc_ability_ogryn_grenade_demolition"}, {"zh-tw"},
				-- loc_text("破片炸彈")),

	--[+ +AURA - АУРА+ +]--
		--[+ AURA 0 - Intimidating Presence +]--
		-- create_template("talent_tree_ogr_aura0_000_en",
			-- {"loc_talent_ogryn_2_base_4"}, {"en"},
				-- loc_text("Intimidating Presence")),
		--[+ Russian +]-- Устрашающее присутствие -- руоф Пугающее присутствие
		create_template("talent_tree_ogr_aura0_000_ru",
			{"loc_talent_ogryn_2_base_4"}, {"ru"},
				loc_text("Устрашающее присутствие")),
		--[+ Traditional Chinese - 威嚇氣場 +]--
		-- create_template("talent_tree_ogr_aura0_000_tw",
			-- {"loc_talent_ogryn_2_base_4"}, {"zh-tw"},
				-- loc_text("威嚇氣場")),

		--[+ AURA 1 - Bonebreaker's AURA +]--
		-- create_template("talent_tree_ogr_aura1_000_en",
			-- {"loc_talent_damage_aura"}, {"en"},
				-- loc_text("Bonebreaker's AURA")),
		--[+ Russian +]-- Аура костолома
		-- create_template("talent_tree_ogr_aura1_000_ru",
			-- {"loc_talent_damage_aura"}, {"ru"},
				-- loc_text("Аура костолома")),
		--[+ Traditional Chinese - 破骨者之環 +]--
		-- create_template("talent_tree_ogr_aura1_000_tw",
			-- {"loc_talent_damage_aura"}, {"zh-tw"},
				-- loc_text("破骨者之環")),

		--[+ AURA 2 - Stay Close! +]--
		-- create_template("talent_tree_ogr_aura2_000_en",
			-- {"loc_talent_ogryn_toughness_regen_aura"}, {"en"},
				-- loc_text("Stay Close!")),
		--[+ Russian +]-- Держись рядом! -- руоф Не расходимся!
		create_template("talent_tree_ogr_aura2_000_ru",
			{"loc_talent_ogryn_toughness_regen_aura"}, {"ru"},
				loc_text("Держись рядом!")),
		--[+ Traditional Chinese - 跟緊我! +]--
		-- create_template("talent_tree_ogr_aura2_000_tw",
			-- {"loc_talent_ogryn_toughness_regen_aura"}, {"zh-tw"},
				-- loc_text("跟緊我!")),

		--[+ AURA 3 - Coward Culling +]--
		-- create_template("talent_tree_ogr_aura3_000_en",
			-- {"loc_talent_ogryn_damage_vs_suppressed"}, {"en"},
				-- loc_text("Coward Culling")),
		--[+ Russian +]-- Отсев трусливых -- руоф Трусливые отбросы
		create_template("talent_tree_ogr_aura3_000_ru",
			{"loc_talent_ogryn_damage_vs_suppressed"}, {"ru"},
				loc_text("Отсев трусливых")),
		--[+ Traditional Chinese - 優勝劣汰 +]--
		-- create_template("talent_tree_ogr_aura3_000_tw",
			-- {"loc_talent_ogryn_damage_vs_suppressed"}, {"zh-tw"},
				-- loc_text("優勝劣汰")),

	--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
		--[+ ABILITY 0 - Bull Rush +]--
		-- create_template("talent_tree_ogr_abil0_000_en",
			-- {"loc_ability_ogryn_charge"}, {"en"},
				-- loc_text("Bull Rush")),
		--[+ Russian +]-- Рывок быка -- руоф Бычий натиск
		create_template("talent_tree_ogr_abil0_000_ru",
			{"loc_ability_ogryn_charge"}, {"ru"},
				loc_text("Рывок быка")),
		--[+ Traditional Chinese - 蠻牛衝撞 +]--
		-- create_template("talent_tree_ogr_abil0_000_tw",
			-- {"loc_ability_ogryn_charge"}, {"zh-tw"},
				-- loc_text("蠻牛衝撞")),

		--[+ ABILITY 1 - Indomitable +]--
		-- create_template("talent_tree_ogr_abil1_000_en",
			-- {"loc_talent_ogryn_bull_rush_distance"}, {"en"},
				-- loc_text("Indomitable")),
		--[+ Russian +]-- Неукротимый -- руоф Неукротимость
		create_template("talent_tree_ogr_abil1_000_ru",
			{"loc_talent_ogryn_bull_rush_distance"}, {"ru"},
				loc_text("Неукротимый")),
		--[+ Traditional Chinese - 不屈不撓 +]--
		-- create_template("talent_tree_ogr_abil1_000_tw",
			-- {"loc_talent_ogryn_bull_rush_distance"}, {"zh-tw"},
				-- loc_text("不屈不撓")),

		--[+ ABILITY 1-1 - Stomping Boots +]--
		-- create_template("talent_tree_ogr_abil1_001_en",
			-- {"loc_talent_ogryn_toughness_on_bull_rush"}, {"en"},
				-- loc_text("Stomping Boots")),
		--[+ Russian +]-- Топающие сапоги -- руоф Сокрушающий топот
		create_template("talent_tree_ogr_abil1_001_ru",
			{"loc_talent_ogryn_toughness_on_bull_rush"}, {"ru"},
				loc_text("Топающие сапоги")),
		--[+ Traditional Chinese - 跺殺之靴 +]--
		-- create_template("talent_tree_ogr_abil1_001_tw",
			-- {"loc_talent_ogryn_toughness_on_bull_rush"}, {"zh-tw"},
				-- loc_text("跺殺之靴")),

		--[+ ABILITY 1-2 - Trample +]--
		-- create_template("talent_tree_ogr_abil1_002_en",
			-- {"loc_talent_ogryn_ability_charge_trample"}, {"en"},
				-- loc_text("Trample")),
		--[+ Russian +]-- Топот -- руоф Топанье
		create_template("talent_tree_ogr_abil1_002_ru",
			{"loc_talent_ogryn_ability_charge_trample"}, {"ru"},
				loc_text("Топот")),
		--[+ Traditional Chinese - 踐踏 +]--
		-- create_template("talent_tree_ogr_abil1_002_tw",
			-- {"loc_talent_ogryn_ability_charge_trample"}, {"zh-tw"},
				-- loc_text("踐踏")),

		--[+ ABILITY 1-3 - Pulverise +]--
		-- create_template("talent_tree_ogr_abil1_003_en",
			-- {"loc_talent_ogryn_bleed_on_bull_rush"}, {"en"},
				-- loc_text("Pulverise")),
		--[+ Russian +]-- Разбрызгивание -- Крошилово
		create_template("talent_tree_ogr_abil1_003_ru",
			{"loc_talent_ogryn_bleed_on_bull_rush"}, {"ru"},
				loc_text("Разбрызгивание")),
		--[+ Traditional Chinese - 粉碎 +]--
		-- create_template("talent_tree_ogr_abil1_003_tw",
			-- {"loc_talent_ogryn_bleed_on_bull_rush"}, {"zh-tw"},
				-- loc_text("粉碎")),

		--[+ ABILITY 2 - Loyal Protector +]--
		-- create_template("talent_tree_ogr_abil2_000_en",
			-- {"loc_ability_ogryn_taunt_shout"}, {"en"},
				-- loc_text("Loyal Protector")),
		--[+ Russian +]-- Верный защитник
		-- create_template("talent_tree_ogr_abil2_000_ru",
			-- {"loc_ability_ogryn_taunt_shout"}, {"ru"},
				-- loc_text("Верный защитник")),
		--[+ Traditional Chinese - 忠誠守護者 +]--
		-- create_template("talent_tree_ogr_abil2_000_tw",
			-- {"loc_ability_ogryn_taunt_shout"}, {"zh-tw"},
				-- loc_text("忠誠守護者")),

		--[+ ABILITY 2-1 - Valuable Distraction +]--
		-- create_template("talent_tree_ogr_abil2_001_en",
			-- {"loc_talent_ogryn_taunt_damage_taken_increase"}, {"en"},
				-- loc_text("Valuable Distraction")),
		--[+ Russian +]-- Отвлекающий манёвр -- руоф Ценное отвлечение
		create_template("talent_tree_ogr_abil2_001_ru",
			{"loc_talent_ogryn_taunt_damage_taken_increase"}, {"ru"},
				loc_text("Отвлекающий манёвр")),
		--[+ Traditional Chinese - 重要干擾 +]--
		-- create_template("talent_tree_ogr_abil2_001_tw",
			-- {"loc_talent_ogryn_taunt_damage_taken_increase"}, {"zh-tw"},
				-- loc_text("重要干擾")),

		--[+ ABILITY 2-2 - Go Again +]--
		-- create_template("talent_tree_ogr_abil2_002_en",
			-- {"loc_talent_ogryn_taunt_stagger_cd"}, {"en"},
				-- loc_text("Go Again!")),
		--[+ Russian +]-- Давай по новой! -- Еще раз!
		create_template("talent_tree_ogr_abil2_002_ru",
			{"loc_talent_ogryn_taunt_stagger_cd"}, {"ru"},
				loc_text("Давай по новой!")),
		--[+ Traditional Chinese - 再來! +]--
		-- create_template("talent_tree_ogr_abil2_002_tw",
			-- {"loc_talent_ogryn_taunt_stagger_cd"}, {"zh-tw"},
				-- loc_text("再來!")),

		--[+ ABILITY 2-3 - Big Lungs +]--
		-- create_template("talent_tree_ogr_abil2_003_en",
			-- {"loc_talent_ogryn_taunt_radius_increase"}, {"en"},
				-- loc_text("Big Lungs")),
		--[+ Russian +]-- Громогласный -- руоф Мощные легкие
		create_template("talent_tree_ogr_abil2_003_ru",
			{"loc_talent_ogryn_taunt_radius_increase"}, {"ru"},
				loc_text("Громогласный")),
		--[+ Traditional Chinese - 強力肺活 +]--
		-- create_template("talent_tree_ogr_abil2_003_tw",
			-- {"loc_talent_ogryn_taunt_radius_increase"}, {"zh-tw"},
				-- loc_text("強力肺活")),

		--[+ ABILITY 3 - Point-Blank Barrage +]--
		-- create_template("talent_tree_ogr_abil3_000_en",
			-- {"loc_talent_ogryn_combat_ability_special_ammo"}, {"en"},
				-- loc_text("Point-Blank Barrage")),
		--[+ Russian +]-- Беспощадный обстрел в упор -- руоф Решительный натиск
		create_template("talent_tree_ogr_abil3_000_ru",
			{"loc_talent_ogryn_combat_ability_special_ammo"}, {"ru"},
				loc_text("Беспощадный обстрел в упор")),
		--[+ Traditional Chinese - 貼身火力 +]--
		-- create_template("talent_tree_ogr_abil3_000_tw",
			-- {"loc_talent_ogryn_combat_ability_special_ammo"}, {"zh-tw"},
				-- loc_text("貼身火力")),

		--[+ ABILITY 3-1 - Bullet Bravado +]--
		-- create_template("talent_tree_ogr_abil3_001_en",
			-- {"loc_talent_ogryn_special_ammo_toughness"}, {"en"},
				-- loc_text("Bullet Bravado")),
		--[+ Russian +]-- Бравада стрелка -- руоф Лихая пуля
		create_template("talent_tree_ogr_abil3_001_ru",
			{"loc_talent_ogryn_special_ammo_toughness"}, {"ru"},
				loc_text("Бравада стрелка")),
		--[+ Traditional Chinese - 壯膽子彈 +]--
		-- create_template("talent_tree_ogr_abil3_001_tw",
			-- {"loc_talent_ogryn_special_ammo_toughness"}, {"zh-tw"},
				-- loc_text("壯膽子彈")),

		--[+ ABILITY 3-2 - Hail of Fire +]--
		-- create_template("talent_tree_ogr_abil3_002_en",
			-- {"loc_talent_ogryn_special_ammo_armor_pen"}, {"en"},
				-- loc_text("Hail of Fire")),
		--[+ Russian +]-- Град огня -- руоф Слава пламени
		create_template("talent_tree_ogr_abil3_002_ru",
			{"loc_talent_ogryn_special_ammo_armor_pen"}, {"ru"},
				loc_text("Град огня")),
		--[+ Traditional Chinese - 槍林彈雨 +]--
		-- create_template("talent_tree_ogr_abil3_002_tw",
			-- {"loc_talent_ogryn_special_ammo_armor_pen"}, {"zh-tw"},
				-- loc_text("槍林彈雨")),

		--[+ ABILITY 3-3 - Light 'em Up +]--
		-- create_template("talent_tree_ogr_abil3_003_en",
			-- {"loc_talent_ogryn_special_ammo_fire_shots"}, {"en"},
				-- loc_text("Light 'em Up")),
		--[+ Russian +]-- Задай жару -- руоф Зададим жару
		create_template("talent_tree_ogr_abil3_003_ru",
			{"loc_talent_ogryn_special_ammo_fire_shots"}, {"ru"},
				loc_text("Задай жару")),
		--[+ Traditional Chinese - 集火射擊 +]--
		-- create_template("talent_tree_ogr_abil3_003_tw",
			-- {"loc_talent_ogryn_special_ammo_fire_shots"}, {"zh-tw"},
				-- loc_text("集火射擊")),

	--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
		--[+ KEYSTONE 1 - Heavy Hitter +]--
		-- create_template("talent_tree_ogr_keys1_000_en",
			-- {"loc_talent_ogryn_passive_heavy_hitter"}, {"en"},
				-- loc_text("Heavy Hitter")),
		--[+ Russian +]-- Тяжёлый нападающий -- руоф Тяжеловес
		create_template("talent_tree_ogr_keys1_000_ru",
			{"loc_talent_ogryn_passive_heavy_hitter"}, {"ru"},
				loc_text("Тяжёлый нападающий")),
		--[+ Traditional Chinese - 重拳出擊 +]--
		-- create_template("talent_tree_ogr_keys1_000_tw",
			-- {"loc_talent_ogryn_passive_heavy_hitter"}, {"zh-tw"},
				-- loc_text("重拳出擊")),

		--[+ KEYSTONE 1-1 - Just Getting Started +]--
		-- create_template("talent_tree_ogr_keys1_001_en",
			-- {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed"}, {"en"},
				-- loc_text("Just Getting Started")),
		--[+ Russian +]-- Я только начал  -- руоф Лишь начало!
		create_template("talent_tree_ogr_keys1_001_ru",
			{"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed"}, {"ru"},
				loc_text("Я только начал")),
		--[+ Traditional Chinese - 熱身完畢 +]--
		-- create_template("talent_tree_ogr_keys1_001_tw",
			-- {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed"}, {"zh-tw"},
				-- loc_text("熱身完畢")),

		--[+ KEYSTONE 1-2 - Unstoppable +]--
		-- create_template("talent_tree_ogr_keys1_002_en",
			-- {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness"}, {"en"},
				-- loc_text("Unstoppable")),
		--[+ Russian +]-- Неудержимый -- руоф Неудержимость
		create_template("talent_tree_ogr_keys1_002_ru",
			{"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness"}, {"ru"},
				loc_text("Неудержимый")),
		--[+ Traditional Chinese - 越戰越勇 +]--
		-- create_template("talent_tree_ogr_keys1_002_tw",
			-- {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness"}, {"zh-tw"},
				-- loc_text("越戰越勇")),

		--[+ KEYSTONE 1-3 - Brutish Momentum +]--
		-- create_template("talent_tree_ogr_keys1_003_en",
			-- {"loc_talent_ogryn_heavy_hitter_light_attacks_refresh"}, {"en"},
				-- loc_text("Brutish Momentum")),
		--[+ Russian +]-- Брутальный моментум -- руоф Зверский моментум
		create_template("talent_tree_ogr_keys1_003_ru",
			{"loc_talent_ogryn_heavy_hitter_light_attacks_refresh"}, {"ru"},
				loc_text("Брутальный моментум")),
		--[+ Traditional Chinese - 兇蠻打擊 +]--
		-- create_template("talent_tree_ogr_keys1_003_tw",
			-- {"loc_talent_ogryn_heavy_hitter_light_attacks_refresh"}, {"zh-tw"},
				-- loc_text("兇蠻打擊")),

		--[+ KEYSTONE 2 - Feel No Pain +]--
		-- create_template("talent_tree_ogr_keys2_000_en",
			-- {"loc_talent_ogryn_carapace_armor"}, {"en"},
				-- loc_text("Feel No Pain")),
		--[+ Russian +]-- Неболит
		-- create_template("talent_tree_ogr_keys2_000_ru",
			-- {"loc_talent_ogryn_carapace_armor"}, {"ru"},
				-- loc_text("Неболит")),
		--[+ Traditional Chinese - 麻木 +]--
		-- create_template("talent_tree_ogr_keys2_000_tw",
			-- {"loc_talent_ogryn_carapace_armor"}, {"zh-tw"},
				-- loc_text("麻木")),

		--[+ KEYSTONE 2-1 - Pained Outburst +]--
		-- create_template("talent_tree_ogr_keys2_001_en",
			-- {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks"}, {"en"},
				-- loc_text("Pained Outburst")),
		-- [+ Russian +]-- Вспышка боли
		-- create_template("talent_tree_ogr_keys2_001_ru",
			-- {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks"}, {"ru"},
				-- loc_text("Вспышка боли")),
		--[+ Traditional Chinese - 痛楚爆發 +]--
		-- create_template("talent_tree_ogr_keys2_001_tw",
			-- {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks"}, {"zh-tw"},
				-- loc_text("痛楚爆發")),

		--[+ KEYSTONE 2-2 - Strongest! +]--
		-- create_template("talent_tree_ogr_keys2_002_en",
			-- {"loc_talent_ogryn_carapace_armor_add_stack_on_push"}, {"en"},
				-- loc_text("Strongest!")),
		--[+ Russian +]-- Сильнейший!
		-- create_template("talent_tree_ogr_keys2_002_ru",
			-- {"loc_talent_ogryn_carapace_armor_add_stack_on_push"}, {"ru"},
				-- loc_text("Сильнейший!")),
		--[+ Traditional Chinese - 最強壯! +]--
		-- create_template("talent_tree_ogr_keys2_002_tw",
			-- {"loc_talent_ogryn_carapace_armor_add_stack_on_push"}, {"zh-tw"},
				-- loc_text("最強壯!")),

		--[+ KEYSTONE 2-3 - Toughest! +]--
		-- create_template("talent_tree_ogr_keys2_003_en",
			-- {"loc_talent_ogryn_carapace_armor_more_toughness"}, {"en"},
				-- loc_text("Toughest!")),
		--[+ Russian +]-- Стойкий! -- руоф Самый выносливый!
		create_template("talent_tree_ogr_keys2_003_ru",
			{"loc_talent_ogryn_carapace_armor_more_toughness"}, {"ru"},
				loc_text("Стойкий!")),
		--[+ Traditional Chinese - 最堅韌! +]--
		-- create_template("talent_tree_ogr_keys2_003_tw",
			-- {"loc_talent_ogryn_carapace_armor_more_toughness"}, {"zh-tw"},
				-- loc_text("最堅韌!")),

		--[+ KEYSTONE 3 - Burst Limiter Override +]--
		-- create_template("talent_tree_ogr_keys3_000_en",
			-- {"loc_talent_ogryn_chance_to_not_consume_ammo"}, {"en"},
				-- loc_text("Burst Limiter Override")),
		--[+ Russian +]-- Обход ограничителя очереди -- руоф Взлом ограничителя взрыва
		create_template("talent_tree_ogr_keys3_000_ru",
			{"loc_talent_ogryn_chance_to_not_consume_ammo"}, {"ru"},
				loc_text("Обход ограничителя очереди")),
		--[+ Traditional Chinese - 爆限超載 +]--
		-- create_template("talent_tree_ogr_keys3_000_tw",
			-- {"loc_talent_ogryn_chance_to_not_consume_ammo"}, {"zh-tw"},
				-- loc_text("爆限超載")),

		--[+ KEYSTONE 3-1 - Maximum Firepower +]--
		-- create_template("talent_tree_ogr_keys3_001_en",
			-- {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction"}, {"en"},
				-- loc_text("Maximum Firepower")),
		--[+ Russian +]-- Максимальная огневая мощь
		-- create_template("talent_tree_ogr_keys3_001_ru",
			-- {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction"}, {"ru"},
				-- loc_text("Максимальная огневая мощь")),
		--[+ Traditional Chinese - 最大火力 +]--
		-- create_template("talent_tree_ogr_keys3_001_tw",
			-- {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction"}, {"zh-tw"},
				-- loc_text("最大火力")),

		--[+ KEYSTONE 3-2 - Good Shootin' +]--
		-- create_template("talent_tree_ogr_keys3_002_en",
			-- {"loc_talent_ogryn_critical_leadbelcher"}, {"en"},
				-- loc_text("Good Shootin'")),
		--[+ Russian +]-- Хорошая стрельба -- руоф Хороший выстрел
		create_template("talent_tree_ogr_keys3_002_ru",
			{"loc_talent_ogryn_critical_leadbelcher"}, {"ru"},
				loc_text("Хорошая стрельба")),
		--[+ Traditional Chinese - 好槍法 +]--
		-- create_template("talent_tree_ogr_keys3_002_tw",
			-- {"loc_talent_ogryn_critical_leadbelcher"}, {"zh-tw"},
				-- loc_text("好槍法")),

		--[+ KEYSTONE 3-3 - More Burst Limiter Overrides! +]--
		-- create_template("talent_tree_ogr_keys3_003_en",
			-- {"loc_talent_ogryn_increased_leadbelcher_chance"}, {"en"},
				-- loc_text("More Burst Limiter Overrides!")),
		--[+ Russian +]-- Ещё больший обход ограничителя очереди! -- руоф Больше взлома ограничителя взрыва!
		create_template("talent_tree_ogr_keys3_003_ru",
			{"loc_talent_ogryn_increased_leadbelcher_chance"}, {"ru"},
				loc_text("Ещё больший обход ограничителя очереди!")),
		--[+ Traditional Chinese - 爆限大超載! +]--
		-- create_template("talent_tree_ogr_keys3_003_tw",
			-- {"loc_talent_ogryn_increased_leadbelcher_chance"}, {"zh-tw"},
				-- loc_text("爆限大超載!")),

	--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
		--[+ PASSIVE 1 - Furious +]--
		-- create_template("talent_tree_ogr_pas_001_en",
			-- {"loc_talent_ogryn_damage_per_enemy_hit_previous"}, {"en"},
				-- loc_text("Furious")),
		--[+ Russian +]-- Разъярённый -- руоф Разъяренный
		create_template("talent_tree_ogr_pas_001_ru",
			{"loc_talent_ogryn_damage_per_enemy_hit_previous"}, {"ru"},
				loc_text("Разъярённый")),
		--[+ Traditional Chinese - 怒不可遏 +]--
		-- create_template("talent_tree_ogr_pas_001_tw",
			-- {"loc_talent_ogryn_damage_per_enemy_hit_previous"}, {"zh-tw"},
				-- loc_text("怒不可遏")),

		--[+ PASSIVE 2 - Reloaded and Ready +]--
		-- create_template("talent_tree_ogr_pas_002_en",
			-- {"loc_talent_ogryn_ranged_damage_on_reload"}, {"en"},
				-- loc_text("Reloaded and Ready")),
		--[+ Russian +]-- Перезаряжен и готов -- руоф Заряжен и готов
		create_template("talent_tree_ogr_pas_002_ru",
			{"loc_talent_ogryn_ranged_damage_on_reload"}, {"ru"},
				loc_text("Перезаряжен и готов")),
		--[+ Traditional Chinese - 換彈完畢 +]--
		-- create_template("talent_tree_ogr_pas_002_tw",
			-- {"loc_talent_ogryn_ranged_damage_on_reload"}, {"zh-tw"},
				-- loc_text("換彈完畢")),

		--[+ PASSIVE 3 - The Best Defence +]--
		-- create_template("talent_tree_ogr_pas_003_en",
			-- {"loc_talent_ogryn_toughness_on_multiple"}, {"en"},
				-- loc_text("The Best Defence")),
		--[+ Russian +]-- Лучшая защита
		-- create_template("talent_tree_ogr_pas_003_ru",
			-- {"loc_talent_ogryn_toughness_on_multiple"}, {"ru"},
				-- loc_text("Лучшая защита")),
		--[+ Traditional Chinese - 最好的防禦 +]--
		-- create_template("talent_tree_ogr_pas_003_tw",
			-- {"loc_talent_ogryn_toughness_on_multiple"}, {"zh-tw"},
				-- loc_text("最好的防禦")),

		--[+ PASSIVE 4 - Heavyweight +]--
		-- create_template("talent_tree_ogr_pas_004_en",
			-- {"loc_talent_ogryn_ogryn_fighter"}, {"en"},
				-- loc_text("Heavyweight")),
		--[+ Russian +]-- Тяжеловес
		-- create_template("talent_tree_ogr_pas_004_ru",
			-- {"loc_talent_ogryn_ogryn_fighter"}, {"ru"},
				-- loc_text("Тяжеловес")),
		--[+ Traditional Chinese - 重量級 +]--
		-- create_template("talent_tree_ogr_pas_004_tw",
			-- {"loc_talent_ogryn_ogryn_fighter"}, {"zh-tw"},
				-- loc_text("重量級")),

		--[+ PASSIVE 5 - Steady Grip +]--
		-- create_template("talent_tree_ogr_pas_005_en",
			-- {"loc_talent_ogryn_toughness_regen_while_bracing"}, {"en"},
				-- loc_text("Steady Grip")),
		--[+ Russian +]-- Крепкий хват -- руоф Крепкая хватка
		create_template("talent_tree_ogr_pas_005_ru",
			{"loc_talent_ogryn_toughness_regen_while_bracing"}, {"ru"},
				loc_text("Крепкий хват")),
		--[+ Traditional Chinese - 穩固握持 +]--
		-- create_template("talent_tree_ogr_pas_005_tw",
			-- {"loc_talent_ogryn_toughness_regen_while_bracing"}, {"zh-tw"},
				-- loc_text("穩固握持")),

		--[+ PASSIVE 6 - Smash 'Em! +]--
		-- create_template("talent_tree_ogr_pas_006_en",
			-- {"loc_talent_ogryn_toughness_on_single_heavy"}, {"en"},
				-- loc_text("Smash 'Em!")),
		--[+ Russian +]-- Круши их! -- руоф Вдарь им!
		create_template("talent_tree_ogr_pas_006_ru",
			{"loc_talent_ogryn_toughness_on_single_heavy"}, {"ru"},
				loc_text("Круши их!")),
		--[+ Traditional Chinese - 碾碎它們! +]--
		-- create_template("talent_tree_ogr_pas_006_tw",
			-- {"loc_talent_ogryn_toughness_on_single_heavy"}, {"zh-tw"},
				-- loc_text("碾碎它們!")),

		--[+ PASSIVE 7 - Lynchpin +]--
		-- create_template("talent_tree_ogr_pas_007_en",
			-- {"loc_talent_ogryn_coherency_toughness_increase"}, {"en"},
				-- loc_text("Lynchpin")),
		--[+ Russian +]-- Опора -- руоф Переломный момент
		create_template("talent_tree_ogr_pas_007_en",
			{"loc_talent_ogryn_coherency_toughness_increase"}, {"ru"},
				loc_text("Опора")),
		--[+ Traditional Chinese - 關鍵人物 +]--
		-- create_template("talent_tree_ogr_pas_007_tw",
			-- {"loc_talent_ogryn_coherency_toughness_increase"}, {"zh-tw"},
				-- loc_text("關鍵人物")),

		--[+ PASSIVE 8 - Slam +]--
		-- create_template("talent_tree_ogr_pas_008_en",
			-- {"loc_talent_ogryn_melee_stagger"}, {"en"},
				-- loc_text("Slam")),
		--[+ Russian +]-- Оплеуха -- руоф Хлопок
		create_template("talent_tree_ogr_pas_008_ru",
			{"loc_talent_ogryn_melee_stagger"}, {"ru"},
				loc_text("Оплеуха")),
		--[+ Traditional Chinese - 猛擊 +]--
		-- create_template("talent_tree_ogr_pas_008_tw",
			-- {"loc_talent_ogryn_melee_stagger"}, {"zh-tw"},
				-- loc_text("猛擊")),

		--[+ PASSIVE 9 - Soften Them Up +]--
		-- create_template("talent_tree_ogr_pas_009_en",
			-- {"loc_talent_ogryn_targets_recieve_damage_increase_debuff"}, {"en"},
				-- loc_text("Soften Them Up")),
		--[+ Russian +]-- Ослабь их -- руоф Упокоить их
		create_template("talent_tree_ogr_pas_009_ru",
			{"loc_talent_ogryn_targets_recieve_damage_increase_debuff"}, {"ru"},
				loc_text("Ослабь их")),
		--[+ Traditional Chinese - 削弱敵人 +]--
		-- create_template("talent_tree_ogr_pas_009_tw",
			-- {"loc_talent_ogryn_targets_recieve_damage_increase_debuff"}, {"zh-tw"},
				-- loc_text("削弱敵人")),

		--[+ PASSIVE 10 - Crunch! +]--
		-- create_template("talent_tree_ogr_pas_010_en",
			-- {"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger"}, {"en"},
				-- loc_text("Crunch!")),
		--[+ Russian +]-- Хрусь! -- руоф Хрясь!
		create_template("talent_tree_ogr_pas_010_en",
			{"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger"}, {"ru"},
				loc_text("Хрусь!")),
		--[+ Traditional Chinese - 嘎嘎! +]--
		-- create_template("talent_tree_ogr_pas_010_tw",
			-- {"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger"}, {"zh-tw"},
				-- loc_text("嘎嘎!")),

		--[+ PASSIVE 11 - Batter +]--
		-- create_template("talent_tree_ogr_pas_011_en",
			-- {"loc_talent_ogryn_bleed_on_multiple_hit"}, {"en"},
				-- loc_text("Batter")),
		--[+ Russian +]-- Месиво
		create_template("talent_tree_ogr_pas_011_ru",
			{"loc_talent_ogryn_bleed_on_multiple_hit"}, {"ru"},
				loc_text("Месиво")),
		--[+ Traditional Chinese - 重毆 +]--
		-- create_template("talent_tree_ogr_pas_011_tw",
			-- {"loc_talent_ogryn_bleed_on_multiple_hit"}, {"zh-tw"},
				-- loc_text("重毆")),

		--[+ PASSIVE 12 - Pacemaker +]--
		-- create_template("talent_tree_ogr_pas_012_en",
			-- {"loc_talent_ogryn_reload_speed_on_multiple_hits"}, {"en"},
				-- loc_text("Pacemaker")),
		--[+ Russian +]-- Задающий ритм -- руоф Водитель ритма
		create_template("talent_tree_ogr_pas_012_ru",
			{"loc_talent_ogryn_reload_speed_on_multiple_hits"}, {"ru"},
				loc_text("Задающий ритм")),
		--[+ Traditional Chinese - 領跑者 +]--
		-- create_template("talent_tree_ogr_pas_012_tw",
			-- {"loc_talent_ogryn_reload_speed_on_multiple_hits"}, {"zh-tw"},
				-- loc_text("領跑者")),

		--[+ PASSIVE 13 - Ammo Stash +]--
		-- create_template("talent_tree_ogr_pas_013_en",
			-- {"loc_talent_ogryn_increased_ammo"}, {"en"},
				-- loc_text("Ammo Stash")),
		--[+ Russian +]-- Схрон патронов
		create_template("talent_tree_ogr_pas_013_ru",
			{"loc_talent_ogryn_increased_ammo"}, {"ru"},
				loc_text("Схрон патронов")),
		--[+ Traditional Chinese - 彈藥儲存包 +]--
		-- create_template("talent_tree_ogr_pas_013_tw",
			-- {"loc_talent_ogryn_increased_ammo"}, {"zh-tw"},
				-- loc_text("彈藥儲存包")),

		--[+ PASSIVE 14 - Hard Knocks +]--
		-- create_template("talent_tree_ogr_pas_014_en",
			-- {"loc_talent_ogryn_big_bully_heavy_hits"}, {"en"},
				-- loc_text("Hard Knocks")),
		--[+ Russian +]-- Тяжёлые удары -- руоф Мощные удары
		create_template("talent_tree_ogr_pas_014_ru",
			{"loc_talent_ogryn_big_bully_heavy_hits"}, {"ru"},
				loc_text("Тяжёлые удары")),
		--[+ Traditional Chinese - 沉重打擊 +]--
		-- create_template("talent_tree_ogr_pas_014_tw",
			-- {"loc_talent_ogryn_big_bully_heavy_hits"}, {"zh-tw"},
				-- loc_text("沉重打擊")),

		--[+ PASSIVE 15 - Too Stubborn to Die +]--
		-- create_template("talent_tree_ogr_pas_015_en",
			-- {"loc_talent_ogryn_toughness_gain_increase_on_low_health"}, {"en"},
				-- loc_text("Too Stubborn to Die")),
		--[+ Russian +]-- Слишком упёртый, чтобы умереть -- руоф Слишком упрям, чтобы умереть
		create_template("talent_tree_ogr_pas_015_ru",
			{"loc_talent_ogryn_toughness_gain_increase_on_low_health"}, {"ru"},
				loc_text("Слишком упёртый, чтобы умереть")),
		--[+ Traditional Chinese - 堅韌不屈 +]--
		-- create_template("talent_tree_ogr_pas_015_tw",
			-- {"loc_talent_ogryn_toughness_gain_increase_on_low_health"}, {"zh-tw"},
				-- loc_text("堅韌不屈")),

		--[+ PASSIVE 16 - Delight in Destruction +]--
		-- create_template("talent_tree_ogr_pas_016_en",
			-- {"loc_talent_ogryn_damage_reduction_per_bleed"}, {"en"},
				-- loc_text("Delight in Destruction")),
		--[+ Russian +]-- Упоение в разрушении -- руоф Наслаждение разрушением
		create_template("talent_tree_ogr_pas_016_ru",
			{"loc_talent_ogryn_damage_reduction_per_bleed"}, {"ru"},
				loc_text("Упоение в разрушении")),
		--[+ Traditional Chinese - 毀滅之樂 +]--
		-- create_template("talent_tree_ogr_pas_016_tw",
			-- {"loc_talent_ogryn_damage_reduction_per_bleed"}, {"zh-tw"},
				-- loc_text("毀滅之樂")),

		--[+ PASSIVE 17 - Attention Seeker +]--
		-- create_template("talent_tree_ogr_pas_017_en",
			-- {"loc_talent_ranged_enemies_taunt"}, {"en"},
				-- loc_text("Attention Seeker")),
		--[+ Russian +]-- Провокатор -- руоф Внимание искателя
		create_template("talent_tree_ogr_pas_017_ru",
			{"loc_talent_ranged_enemies_taunt"}, {"ru"},
				loc_text("Провокатор")),
		--[+ Traditional Chinese - 渴求關注 +]--
		-- create_template("talent_tree_ogr_pas_017_tw",
			-- {"loc_talent_ranged_enemies_taunt"}, {"zh-tw"},
				-- loc_text("渴求關注")),

		--[+ PASSIVE 18 - Get Stuck In +]--
		-- create_template("talent_tree_ogr_pas_018_en",
			-- {"loc_talent_ogryn_bull_rush_movement_speed"}, {"en"},
				-- loc_text("Get Stuck In")),
		--[+ Russian +]-- Очертя голову
		create_template("talent_tree_ogr_pas_018_ru",
			{"loc_talent_ogryn_bull_rush_movement_speed"}, {"ru"},
				loc_text("Очертя голову")),
		--[+ Traditional Chinese - 全神貫注 +]--
		-- create_template("talent_tree_ogr_pas_018_tw",
			-- {"loc_talent_ogryn_bull_rush_movement_speed"}, {"zh-tw"},
				-- loc_text("全神貫注")),

		--[+ PASSIVE 19 - Towering Presence +]--
		-- create_template("talent_tree_ogr_pas_019_en",
			-- {"loc_talent_ogryn_bigger_coherency_radius"}, {"en"},
				-- loc_text("Towering Presence")),
		--[+ Russian +]-- Величественное присутствие -- руоф Выдающееся присутствие
		create_template("talent_tree_ogr_pas_019_ru",
			{"loc_talent_ogryn_bigger_coherency_radius"}, {"ru"},
				loc_text("Величественное присутствие")),
		--[+ Traditional Chinese - 卓越氣場 +]--
		-- create_template("talent_tree_ogr_pas_019_tw",
			-- {"loc_talent_ogryn_bigger_coherency_radius"}, {"zh-tw"},
				-- loc_text("卓越氣場")),

		--[+ PASSIVE 20 - Unstoppable Momentum +]--
		-- create_template("talent_tree_ogr_pas_020_en",
			-- {"loc_talent_ogryn_ranged_kill_grant_movement_speed"}, {"en"},
				-- loc_text("Unstoppable Momentum")),
		--[+ Russian +]-- Неудержимый моментум
		-- create_template("talent_tree_ogr_pas_020_ru",
			-- {"loc_talent_ogryn_ranged_kill_grant_movement_speed"}, {"ru"},
				-- loc_text("Неудержимый моментум")),
		--[+ Traditional Chinese - 勢不可擋 +]--
		-- create_template("talent_tree_ogr_pas_020_tw",
			-- {"loc_talent_ogryn_ranged_kill_grant_movement_speed"}, {"zh-tw"},
				-- loc_text("勢不可擋")),

		--[+ PASSIVE 21 - No Stopping Me! +]--
		-- create_template("talent_tree_ogr_pas_021_en",
			-- {"loc_talent_ogryn_windup_is_uninterruptible"}, {"en"},
				-- loc_text("No Stopping Me!")),
		--[+ Russian +]-- Меня не остановить!
		-- create_template("talent_tree_ogr_pas_021_ru",
			-- {"loc_talent_ogryn_windup_is_uninterruptible"}, {"ru"},
				-- loc_text("Меня не остановить!")),
		--[+ Traditional Chinese - 誰敢攔我! +]--
		-- create_template("talent_tree_ogr_pas_021_tw",
			-- {"loc_talent_ogryn_windup_is_uninterruptible"}, {"zh-tw"},
				-- loc_text("誰敢攔我!")),

		--[+ PASSIVE 22 - Dominate +]--
		-- create_template("talent_tree_ogr_pas_022_en",
			-- {"loc_talent_ogryn_rending_on_elite_kills"}, {"en"},
				-- loc_text("Dominate")),
		--[+ Russian +]-- Доминируй -- руоф Господство
		create_template("talent_tree_ogr_pas_022_ru",
			{"loc_talent_ogryn_rending_on_elite_kills"}, {"ru"},
				loc_text("Доминируй")),
		--[+ Traditional Chinese - 主宰 +]--
		-- create_template("talent_tree_ogr_pas_022_tw",
			-- {"loc_talent_ogryn_rending_on_elite_kills"}, {"zh-tw"},
				-- loc_text("主宰")),

		--[+ PASSIVE 23 - Payback Time +]--
		-- create_template("talent_tree_ogr_pas_023_en",
			-- {"loc_talent_ogryn_revenge_damage"}, {"en"},
				-- loc_text("Payback Time")),
		--[+ Russian +]-- Время расплаты
		-- create_template("talent_tree_ogr_pas_023_ru",
			-- {"loc_talent_ogryn_revenge_damage"}, {"ru"},
				-- loc_text("Время расплаты")),
		--[+ Traditional Chinese - 報復時間 +]--
		-- create_template("talent_tree_ogr_pas_023_tw",
			-- {"loc_talent_ogryn_revenge_damage"}, {"zh-tw"},
				-- loc_text("報復時間")),

		--[+ PASSIVE 24 - Bruiser +]--
		-- create_template("talent_tree_ogr_pas_024_en",
			-- {"loc_talent_ogryn_cooldown_on_elite_kills"}, {"en"},
				-- loc_text("Bruiser")),
		--[+ Russian +]-- Бугай
		create_template("talent_tree_ogr_pas_024_ru",
			{"loc_talent_ogryn_cooldown_on_elite_kills"}, {"ru"},
				loc_text("Бугай")),
		--[+ Traditional Chinese - 格鬥兵 +]--
		-- create_template("talent_tree_ogr_pas_024_tw",
			-- {"loc_talent_ogryn_cooldown_on_elite_kills"}, {"zh-tw"},
				-- loc_text("格鬥兵")),

		--[+ PASSIVE 25 - Big Boom +]--
		-- create_template("talent_tree_ogr_pas_025_en",
			-- {"loc_talent_ogryn_increase_explosion_radius"}, {"en"},
				-- loc_text("Big Boom")),
		--[+ Russian +]-- Большой бабах
		-- create_template("talent_tree_ogr_pas_025_ru",
			-- {"loc_talent_ogryn_increase_explosion_radius"}, {"ru"},
				-- loc_text("Большой бабах")),
		--[+ Traditional Chinese - 大爆炸 +]--
		-- create_template("talent_tree_ogr_pas_025_tw",
			-- {"loc_talent_ogryn_increase_explosion_radius"}, {"zh-tw"},
				-- loc_text("大爆炸")),

		--[+ PASSIVE 26 - Massacre +]--
		-- create_template("talent_tree_ogr_pas_026_en",
			-- {"loc_talent_ogryn_crit_chance_on_kill"}, {"en"},
				-- loc_text("Massacre")),
		--[+ Russian +]-- Резня
		-- create_template("talent_tree_ogr_pas_026_ru",
			-- {"loc_talent_ogryn_crit_chance_on_kill"}, {"ru"},
				-- loc_text("Резня")),
		--[+ Traditional Chinese - 屠殺 +]--
		-- create_template("talent_tree_ogr_pas_026_tw",
			-- {"loc_talent_ogryn_crit_chance_on_kill"}, {"zh-tw"},
				-- loc_text("屠殺")),

		--[+ PASSIVE 27 - Implacable +]--
		-- create_template("talent_tree_ogr_pas_027_en",
			-- {"loc_talent_ogryn_windup_reduces_damage_taken"}, {"en"},
				-- loc_text("Implacable")),
		--[+ Russian +]-- Непоколебимый
		-- create_template("talent_tree_ogr_pas_027_ru",
			-- {"loc_talent_ogryn_windup_reduces_damage_taken"}, {"ru"},
				-- loc_text("Непоколебимый")),
		--[+ Traditional Chinese - 利刃出鞘 +]--
		-- create_template("talent_tree_ogr_pas_027_tw",
			-- {"loc_talent_ogryn_windup_reduces_damage_taken"}, {"zh-tw"},
				-- loc_text("利刃出鞘")),

		--[+ PASSIVE 28 - No Pushover +]--
		-- create_template("talent_tree_ogr_pas_028_en",
			-- {"loc_talent_ogryn_blocking_reduces_push_cost"}, {"en"},
				-- loc_text("No Pushover")),
		--[+ Russian +]-- Не слабак
		-- create_template("talent_tree_ogr_pas_028_ru",
			-- {"loc_talent_ogryn_blocking_reduces_push_cost"}, {"ru"},
				-- loc_text("Не слабак")),
		--[+ Traditional Chinese - 睚眥必報 +]--
		-- create_template("talent_tree_ogr_pas_028_tw",
			-- {"loc_talent_ogryn_blocking_reduces_push_cost"}, {"zh-tw"},
				-- loc_text("睚眥必報")),

		--[+ PASSIVE 29 - Won't Give In +]--
		-- create_template("talent_tree_ogr_pas_029_en",
			-- {"loc_talent_ogryn_tanky_with_downed_allies"}, {"en"},
				-- loc_text("Won't Give In")),
		--[+ Russian +]-- Не сдамся
		-- create_template("talent_tree_ogr_pas_029_ru",
			-- {"loc_talent_ogryn_tanky_with_downed_allies"}, {"ru"},
				-- loc_text("Не сдамся")),
		--[+ Traditional Chinese - 絕不屈服 +]--
		-- create_template("talent_tree_ogr_pas_029_tw",
			-- {"loc_talent_ogryn_tanky_with_downed_allies"}, {"zh-tw"},
				-- loc_text("絕不屈服")),

		--[+ PASSIVE 30 - Mobile Emplacement +]--
		-- create_template("talent_tree_ogr_pas_030_en",
			-- {"loc_talent_ogryn_bracing_reduces_damage_taken"}, {"en"},
				-- loc_text("Mobile Emplacement")),
		--[+ Russian +]-- Мобильная огневая точка -- руоф Передвижной окоп
		create_template("talent_tree_ogr_pas_030_ru",
			{"loc_talent_ogryn_bracing_reduces_damage_taken"}, {"ru"},
				loc_text("Мобильная огневая точка")),
		--[+ Traditional Chinese - 機動部屬 +]--
		-- create_template("talent_tree_ogr_pas_030_tw",
			-- {"loc_talent_ogryn_bracing_reduces_damage_taken"}, {"zh-tw"},
				-- loc_text("機動部屬")),




--[+ ++ARBITES - АРБИТЕС++ +]--
	--[+ +BLITZ - БЛИЦ+ +]--
		--[+ BLITZ 0 - Arbites Grenade +]--
		-- create_template("talent_tree_arb_blitz0_000_en",
			-- {"loc_talent_ability_adamant_grenade"}, {"en"},
				-- loc_text("Arbites Grenade")),
		--[+ Russian - Граната арбитрес +]-- руоф Граната Арбитрес
		create_template("talent_tree_arb_blitz0_000_ru",
			{"loc_talent_ability_adamant_grenade"}, {"ru"},
				loc_text("Граната арбитрес")),

		--[+ BLITZ 1 - Remote Detonation +]--
		-- create_template("talent_tree_arb_blitz1_000_en",
			-- {"loc_talent_ability_detonate"}, {"en"},
				-- loc_text("Remote Detonation")),
		--[+ Russian - Дистанционный подрыв +]--
		-- create_template("talent_tree_arb_blitz1_000_ru",
			-- {"loc_talent_ability_detonate"}, {"ru"},
				-- loc_text("Дистанционный подрыв")),

		--[+ BLITZ 2 - Voltaic Shock Mine +]--
		-- create_template("talent_tree_arb_blitz2_000_en",
			-- {"loc_talent_ability_shock_mine"}, {"en"},
				-- loc_text("Voltaic Shock Mine")),
		--[+ Russian - Вольтаическая шоковая мина +]-- руоф Электрошоковая мина
		create_template("talent_tree_arb_blitz2_000_ru",
			{"loc_talent_ability_shock_mine"}, {"ru"},
				loc_text("Вольтаическая шоковая мина")),

		--[+ BLITZ 3 - Arbites Grenade +]--
		-- create_template("talent_tree_arb_blitz3_000_en",
			-- {"loc_talent_ability_adamant_grenade_improved"}, {"en"},
				-- loc_text("Arbites Grenade")),
		--[+ Russian - Граната арбитрес +]-- руоф Граната Арбитрес
		create_template("talent_tree_arb_blitz3_000_ru",
			{"loc_talent_ability_adamant_grenade_improved"}, {"ru"},
				loc_text("Граната арбитрес")),

	--[+ +AURA - АУРА+ +]--
		--[+ AURA 0-1 - Part of the Squad +]--
		-- create_template("talent_tree_arb_aura0-1_000_en",
			-- {"loc_talent_adamant_companion_coherency"}, {"en"},
				-- loc_text("Part of the Squad")),
		--[+ Russian - Часть отряда +]--
		-- create_template("talent_tree_arb_aura0-1_000_ru",
			-- {"loc_talent_adamant_companion_coherency"}, {"ru"},
				-- loc_text("Часть отряда")),

		--[+ AURA 2 - Ruthless Efficiency +]--
		-- create_template("talent_tree_arb_aura2_000_en",
			-- {"loc_talent_adamant_wield_speed_aura"}, {"en"},
				-- loc_text("Ruthless Efficiency")),
		--[+ Russian - Беспощадная эффективность +]-- руоф Беспощадная сила???
		create_template("talent_tree_arb_aura2_000_ru",
			{"loc_talent_adamant_wield_speed_aura"}, {"ru"},
				loc_text("Беспощадная эффективность")),

		--[+ AURA 3 - Breaking Dissent +]--
		-- create_template("talent_tree_arb_aura3_000_en",
			-- {"loc_talent_adamant_damage_vs_staggered_aura"}, {"en"},
				-- loc_text("Breaking Dissent")),
		--[+ Russian - Подавление инакомыслия +]-- руоф Преодоление разногласий
		create_template("talent_tree_arb_aura3_000_ru",
			{"loc_talent_adamant_damage_vs_staggered_aura"}, {"ru"},
				loc_text("Подавление инакомыслия")),

	--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
		--[+ ABILITY 0, 2 - Nuncio-Aquila +]--
		-- create_template("talent_tree_arb_abil0_abil2_000_en",
			-- {"loc_talent_ability_area_buff_drone"}, {"en"},
				-- loc_text("Nuncio-Aquila")),
		--[+ Russian - Нунцио-аквила +]--
		-- create_template("talent_tree_arb_abil0_abil2_000_ru",
			-- {"loc_talent_ability_area_buff_drone"}, {"ru"},
				-- loc_text("Нунцио-аквила")),

		--[+ ABILITY 1 - Castigator's Stance +]--
		-- create_template("talent_tree_arb_abil1_000_en",
			-- {"loc_talent_adamant_stance_ability_name"}, {"en"},
				-- loc_text("Castigator's Stance")),
		--[+ Russian - Стойка карателя +]-- руоф Стойка бичевателя
		create_template("talent_tree_arb_abil1_000_ru",
			{"loc_talent_adamant_stance_ability_name"}, {"ru"},
				loc_text("Стойка карателя")),

		--[+ ABILITY 1-1 - Blessed Armament +]--
		-- create_template("talent_tree_arb_abil1_001_en",
			-- {"loc_talent_adamant_stance_ranged_kills_transfer_ammo"}, {"en"},
				-- loc_text("Blessed Armament")),
		--[+ Russian - Благословенное вооружение +]-- руоф Благословенное орудие
		-- create_template("talent_tree_arb_abil1_001_ru",
			-- {"loc_talent_adamant_stance_ranged_kills_transfer_ammo"}, {"ru"},
				-- loc_text("Благословенное вооружение")),

		--[+ ABILITY 1-2 - Writ of Execution +]--
		-- create_template("talent_tree_arb_abil1_002_en",
			-- {"loc_talent_adamant_stance_elite_kills_stack_damage"}, {"en"},
				-- loc_text("Writ of Execution")),
		--[+ Russian - Ордер на казнь +]--
		-- create_template("talent_tree_arb_abil1_002_ru",
			-- {"loc_talent_adamant_stance_elite_kills_stack_damage"}, {"ru"},
				-- loc_text("Ордер на казнь")),

		--[+ ABILITY 1-3 - Bloodlust +]--
		-- create_template("talent_tree_arb_abil1_003_en",
			-- {"loc_talent_adamant_stance_bloodlust"}, {"en"},
				-- loc_text("Bloodlust")),
		--[+ Russian - Жажда крови +]--
		-- create_template("talent_tree_arb_abil1_003_ru",
			-- {"loc_talent_adamant_stance_bloodlust"}, {"ru"},
				-- loc_text("Жажда крови")),

		--[+ ABILITY 2-1 - Inspiring Recitation +]--
		-- create_template("talent_tree_arb_abil2_001_en",
			-- {"loc_talent_adamant_drone_buff_talent"}, {"en"},
				-- loc_text("Inspiring Recitation")),
		--[+ Russian - Воодушевляющая проповедь +]-- руоф Вдохновляющая декламация
		create_template("talent_tree_arb_abil2_001_ru",
			{"loc_talent_adamant_drone_buff_talent"}, {"ru"},
				loc_text("Воодушевляющая проповедь")),

		--[+ ABILITY 2-2 - Fear of Justice +]--
		-- create_template("talent_tree_arb_abil2_002_en",
			-- {"loc_talent_adamant_drone_debuff_talent"}, {"en"},
				-- loc_text("Fear of Justice")),
		--[+ Russian - Страх перед Правосудием +]-- руоф Страх правосудия
		create_template("talent_tree_arb_abil2_002_ru",
			{"loc_talent_adamant_drone_debuff_talent"}, {"ru"},
				loc_text("Страх перед Правосудием")),

		--[+ ABILITY 3 - Break the Line +]--
		-- create_template("talent_tree_arb_abil3_000_en",
			-- {"loc_talent_adamant_charge_ability_name"}, {"en"},
				-- loc_text("Break the Line")),
		--[+ Russian - Прорыв строя +]-- руоф Прорыв фронта
		create_template("talent_tree_arb_abil3_000_ru",
			{"loc_talent_adamant_charge_ability_name"}, {"ru"},
				loc_text("Прорыв строя")),

		--[+ ABILITY 3-1 - Commendation from Condemnation +]--
		-- create_template("talent_tree_arb_abil3_001_en",
			-- {"loc_talent_adamant_charge_toughness_name"}, {"en"},
				-- loc_text("Commendation from Condemnation")),
		--[+ Russian - Похвала за осуждение +]-- руоф Не наказали - значит, похвалили???
		create_template("talent_tree_arb_abil3_001_ru",
			{"loc_talent_adamant_charge_toughness_name"}, {"ru"},
				loc_text("Похвала за осуждение")),

		--[+ ABILITY 3-2 - Targeted Brutality +]--
		-- create_template("talent_tree_arb_abil3_002_en",
			-- {"loc_talent_adamant_charge_cooldown_name"}, {"en"},
				-- loc_text("Targeted Brutality")),
		--[+ Russian - Направленная жестокость +]--
		-- create_template("talent_tree_arb_abil3_002_ru",
			-- {"loc_talent_adamant_charge_cooldown_name"}, {"ru"},
				-- loc_text("Направленная жестокость")),

		--[+ ABILITY 3-3 - Kill Order +]--
		-- create_template("talent_tree_arb_abil3_003_en",
			-- {"loc_talent_adamant_dog_damage_after_ability"}, {"en"},
				-- loc_text("Kill Order")),
		--[+ Russian - Фас! +]-- руоф Приказ убивать
		create_template("talent_tree_arb_abil3_003_ru",
			{"loc_talent_adamant_dog_damage_after_ability"}, {"ru"},
				loc_text("Фас!")),

		--[+ ABILITY 3-4 - Engage +]--
		-- create_template("talent_tree_arb_abil3_004_en",
			-- {"loc_talent_adamant_charge_longer_distance"}, {"en"},
				-- loc_text("Engage")),
		--[+ Russian - Дальний прорыв +]-- руоф К бою
		create_template("talent_tree_arb_abil3_004_ru",
			{"loc_talent_adamant_charge_longer_distance"}, {"ru"},
				loc_text("Дальний прорыв")),

	--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
		--[+ KEYSTONE 1 - Unleashed Brutality +]--
		-- create_template("talent_tree_arb_keys1_000_en",
			-- {"loc_talent_adamant_cyber_mastiff_elites"}, {"en"},
				-- loc_text("Unleashed Brutality")),
		--[+ Russian - Высвобожденнная жестокость +]--
		-- create_template("talent_tree_arb_keys1_000_ru",
			-- {"loc_talent_adamant_cyber_mastiff_elites"}, {"ru"},
				-- loc_text("Высвобожденнная жестокость")),

		--[+ KEYSTONE 2 - Lone Wolf +]--
		-- create_template("talent_tree_arb_keys2_000_en",
			-- {"loc_talent_adamant_disable_companion"}, {"en"},
				-- loc_text("Lone Wolf")),
		--[+ Russian - Одинокий волк +]--
		-- create_template("talent_tree_arb_keys2_000_ru",
			-- {"loc_talent_adamant_disable_companion"}, {"ru"},
				-- loc_text("Одинокий волк")),

		--[+ KEYSTONE 3 - Go Get 'Em! +]--
		-- create_template("talent_tree_arb_keys3_000_en",
			-- {"loc_talent_adamant_cyber_mastiff_ranged"}, {"en"},
				-- loc_text("Go Get 'Em!")),
		--[+ Russian - Взять их! +]--
		-- create_template("talent_tree_arb_keys3_000_ru",
			-- {"loc_talent_adamant_cyber_mastiff_ranged"}, {"ru"},
				-- loc_text("Взять их!")),

		--[+ KEYSTONE 4 - Execution Order +]--
		-- create_template("talent_tree_arb_keys4_000_en",
			-- {"loc_talent_adamant_exterminator"}, {"en"},
				-- loc_text("Execution Order")),
		--[+ Russian - Метка возмездия +]-- Приказ казнить
		create_template("talent_tree_arb_keys4_000_ru",
			{"loc_talent_adamant_exterminator"}, {"ru"},
				loc_text("Метка возмездия")),

		--[+ KEYSTONE 4-1 - Efficient Killer +]--
		-- create_template("talent_tree_arb_keys4_001_en",
			-- {"loc_talent_adamant_exterminator_toughness"}, {"en"},
				-- loc_text("Efficient Killer")),
		--[+ Russian - Эффективный убийца +]--
		-- create_template("talent_tree_arb_keys4_001_ru",
			-- {"loc_talent_adamant_exterminator_toughness"}, {"ru"},
				-- loc_text("Эффективный убийца")),

		--[+ KEYSTONE 4-2 - Malocator +]--
		-- create_template("talent_tree_arb_keys4_002_en",
			-- {"loc_talent_adamant_exterminator_ability_cooldown"}, {"en"},
				-- loc_text("Malocator")),
		--[+ Russian - Малокатор +]--
		-- create_template("talent_tree_arb_keys4_002_ru",
			-- {"loc_talent_adamant_exterminator_ability_cooldown"}, {"ru"},
				-- loc_text("Малокатор")),

		--[+ KEYSTONE 4-3 - No Lenience +]--
		-- create_template("talent_tree_arb_keys4_003_en",
			-- {"loc_talent_adamant_exterminator_stack_during_activation"}, {"en"},
				-- loc_text("No Lenience")),
		--[+ Russian - Нетерпимость +]--
		-- create_template("talent_tree_arb_keys4_003_ru",
			-- {"loc_talent_adamant_exterminator_stack_during_activation"}, {"ru"},
				-- loc_text("Нетерпимость")),

		--[+ KEYSTONE 4-4 - Keeping Protocol +]--
		-- create_template("talent_tree_arb_keys4_004_en",
			-- {"loc_talent_execution_order_perma_buff"}, {"en"},
				-- loc_text("Keeping Protocol")),
		--[+ Russian - Соблюдение протокола +]-- руоф Поддердание протокола
		create_template("talent_tree_arb_keys4_004_ru",
			{"loc_talent_execution_order_perma_buff"}, {"ru"},
				loc_text("Соблюдение протокола")),

		--[+ KEYSTONE 4-5 - Not Far Behind +]--
		-- create_template("talent_tree_arb_keys4_005_en",
			-- {"loc_talent_adamant_pinning_dog_bonus_moving_towards"}, {"en"},
				-- loc_text("Not Far Behind")),
		--[+ Russian - В зоне досягаемости +]-- руоф Не так далеко позади
		create_template("talent_tree_arb_keys4_005_ru",
			{"loc_talent_adamant_pinning_dog_bonus_moving_towards"}, {"ru"},
				loc_text("В зоне досягаемости")),

		--[+ KEYSTONE 5 - Terminus Warrant +]--
		-- create_template("talent_tree_arb_keys5_000_en",
			-- {"loc_talent_adamant_bullet_rain"}, {"en"},
				-- loc_text("Terminus Warrant")),
		--[+ Russian - Ордер Терминус +]-- руоф Распоряжение «Терминус»
		create_template("talent_tree_arb_keys5_000_ru",
			{"loc_talent_adamant_bullet_rain"}, {"ru"},
				loc_text("Ордер Терминус")),

		--[+ KEYSTONE 5-1 - Dispense Justice +]--
		-- create_template("talent_tree_arb_keys5_001_en",
			-- {"loc_talent_adamant_bullet_rain_fire_rate"}, {"en"},
				-- loc_text("Dispense Justice")),
		--[+ Russian - Исполнение приговора +]-- руоф Охват правосудия
		create_template("talent_tree_arb_keys5_001_ru",
			{"loc_talent_adamant_bullet_rain_fire_rate"}, {"ru"},
				loc_text("Исполнение приговора")),

		--[+ KEYSTONE 5-2 - Obstinate +]--
		-- create_template("talent_tree_arb_keys5_002_en",
			-- {"loc_talent_adamant_bullet_rain_tdr"}, {"en"},
				-- loc_text("Obstinate")),
		--[+ Russian - Непреклонный +]-- руоф Упрямый
		create_template("talent_tree_arb_keys5_002_ru",
			{"loc_talent_adamant_bullet_rain_tdr"}, {"ru"},
				loc_text("Непреклонный")),

		--[+ KEYSTONE 5-3 - Terminal Decree +]--
		-- create_template("talent_tree_arb_keys5_003_en",
			-- {"loc_talent_adamant_bullet_rain_toughness"}, {"en"},
				-- loc_text("Terminal Decree")),
		--[+ Russian - Последний приговор +]-- руоф Окончательное постановление
		create_template("talent_tree_arb_keys5_003_ru",
			{"loc_talent_adamant_bullet_rain_toughness"}, {"ru"},
				loc_text("Последний приговор")),

		--[+ KEYSTONE 5-4 - Writ of Judgement +]--
		-- create_template("talent_tree_arb_keys5_004_en",
			-- {"loc_talent_adamant_bullet_rain_ability"}, {"en"},
				-- loc_text("Writ of Judgement")),
		--[+ Russian - Судебный ордер +]-- руоф Судебное предписание
		create_template("talent_tree_arb_keys5_004_ru",
			{"loc_talent_adamant_bullet_rain_ability"}, {"ru"},
				loc_text("Судебный ордер")),

		--[+ KEYSTONE 6 - Forceful +]--
		-- create_template("talent_tree_arb_keys6_000_en",
			-- {"loc_talent_adamant_forceful"}, {"en"},
				-- loc_text("Forceful")),
		--[+ Russian - Неудержимый +]-- руоф Напористый
		create_template("talent_tree_arb_keys6_000_ru",
			{"loc_talent_adamant_forceful"}, {"ru"},
				loc_text("Неудержимый")),

		--[+ KEYSTONE 6-1 - Adamant Will +]--
		-- create_template("talent_tree_arb_keys6_001_en",
			-- {"loc_talent_adamant_forceful_stamina_block_and_push_alt"}, {"en"},
				-- loc_text("Adamant Will")),
		--[+ Russian - Адамантовая воля +]--
		-- create_template("talent_tree_arb_keys6_001_ru",
			-- {"loc_talent_adamant_forceful_stamina_block_and_push_alt"}, {"ru"},
				-- loc_text("Адамантовая воля")),

		--[+ KEYSTONE 6-2 - Will of the Lex +]--
		-- create_template("talent_tree_arb_keys6_002_en",
			-- {"loc_talent_adamant_forceful_toughness_regen_per_stack_desc"}, {"en"},
				-- loc_text("Will of the Lex")),
		--[+ Russian - Воля Закона +]--
		-- create_template("talent_tree_arb_keys6_002_ru",
			-- {"loc_talent_adamant_forceful_toughness_regen_per_stack_desc"}, {"ru"},
				-- loc_text("Воля Закона")),

		--[+ KEYSTONE 6-3 - Targets Acquired +]--
		-- create_template("talent_tree_arb_keys6_003_en",
			-- {"loc_talent_adamant_forceful_ranged"}, {"en"},
				-- loc_text("Targets Acquired")),
		--[+ Russian - Цели обнаружены +]--
		-- create_template("talent_tree_arb_keys6_003_ru",
			-- {"loc_talent_adamant_forceful_ranged"}, {"ru"},
				-- loc_text("Цели обнаружены")),

		--[+ KEYSTONE 6-4 - Arbites Vigilant +]--
		-- create_template("talent_tree_arb_keys6_004_en",
			-- {"loc_talent_adamant_forceful_refresh_on_ability"}, {"en"},
				-- loc_text("Arbites Vigilant")),
		--[+ Russian - Бдительный арбитрес +]-- руоф Бдительность Арбитрес
		create_template("talent_tree_arb_keys6_004_ru",
			{"loc_talent_adamant_forceful_refresh_on_ability"}, {"ru"},
				loc_text("Бдительный арбитрес")),

		--[+ KEYSTONE 6-5 - Judicial Force +]--
		-- create_template("talent_tree_arb_keys6_005_en",
			-- {"loc_talent_adamant_forceful_melee"}, {"en"},
				-- loc_text("Judicial Force")),
		--[+ Russian - Сила правосудия +]-- руоф Судебная сила
		create_template("talent_tree_arb_keys6_005_ru",
			{"loc_talent_adamant_forceful_melee"}, {"ru"},
				loc_text("Сила правосудия")),

	--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
		--[+ PASSIVE 1 - No Escape +]--
		-- create_template("talent_tree_arb_pas_001_en",
			-- {"loc_talent_adamant_elite_special_kills_offensive_boost"}, {"en"},
				-- loc_text("No Escape")),
		--[+ Russian - Не уйдёшь +]-- руоф Не сбежишь
		create_template("talent_tree_arb_pas_001_ru",
			{"loc_talent_adamant_elite_special_kills_offensive_boost"}, {"ru"},
				loc_text("Не уйдёшь")),

		--[+ PASSIVE 2 - Withering Fire +]--
		-- create_template("talent_tree_arb_pas_002_en",
			-- {"loc_talent_adamant_damage_after_reloading"}, {"en"},
				-- loc_text("Withering Fire")),
		--[+ Russian - Истребляющий огонь +]-- Изнуряющий огонь
		-- create_template("talent_tree_arb_pas_002_ru",
			-- {"loc_talent_adamant_damage_after_reloading"}, {"ru"},
				-- loc_text("Истребляющий огонь")),

		--[+ PASSIVE 3 - Hammer of Judgement +]--
		-- create_template("talent_tree_arb_pas_003_en",
			-- {"loc_talent_adamant_multiple_hits_attack_speed"}, {"en"},
				-- loc_text("Hammer of Judgement")),
		--[+ Russian - Молот Правосудия +]-- руоф Молот правосудия
		-- create_template("talent_tree_arb_pas_003_ru",
			-- {"loc_talent_adamant_multiple_hits_attack_speed"}, {"ru"},
				-- loc_text("Молот Правосудия")),

		--[+ PASSIVE 4 - Razor-Jaw Augment +]--
		-- create_template("talent_tree_arb_pas_004_en",
			-- {"loc_talent_adamant_dog_pounces_bleed_nearby"}, {"en"},
				-- loc_text("Razor-Jaw Augment")),
		--[+ Russian - Аугментация челюсти-бритвы +]-- руоф Аугментация челюстей: бритва
		-- create_template("talent_tree_arb_pas_004_ru",
			-- {"loc_talent_adamant_dog_pounces_bleed_nearby"}, {"ru"},
				-- loc_text("Аугментация челюсти-бритвы")),

		--[+ PASSIVE 5 - Target Neutralised +]--
		-- create_template("talent_tree_arb_pas_005_en",
			-- {"loc_talent_adamant_elite_special_kills_replenish_toughness"}, {"en"},
				-- loc_text("Target Neutralised")),
		--[+ Russian - Цель уничтожена +]-- руоф Цель нейтрализована
		-- create_template("talent_tree_arb_pas_005_ru",
			-- {"loc_talent_adamant_elite_special_kills_replenish_toughness"}, {"ru"},
				-- loc_text("Цель уничтожена")),

		--[+ PASSIVE 6 - Up Close +]--
		-- create_template("talent_tree_arb_pas_006_en",
			-- {"loc_talent_adamant_close_kills_restore_toughness"}, {"en"},
				-- loc_text("Up Close")),
		--[+ Russian - В упор +]-- руоф Лицом к лицу
		-- create_template("talent_tree_arb_pas_006_ru",
			-- {"loc_talent_adamant_close_kills_restore_toughness"}, {"ru"},
				-- loc_text("В упор")),

		--[+ PASSIVE 7 - Force of Will +]--
		-- create_template("talent_tree_arb_pas_007_en",
			-- {"loc_talent_adamant_staggers_replenish_toughness"}, {"en"},
				-- loc_text("Force of Will")),
		--[+ Russian - Сила воли +]--
		-- create_template("talent_tree_arb_pas_007_ru",
			-- {"loc_talent_adamant_staggers_replenish_toughness"}, {"ru"},
				-- loc_text("Сила воли")),

		--[+ PASSIVE 8 - Retaliatory Force +]--
		-- create_template("talent_tree_arb_pas_008_en",
			-- {"loc_talent_adamant_perfect_block_damage_boost"}, {"en"},
				-- loc_text("Retaliatory Force")),
		--[+ Russian - Сила возмездия +]--
		-- create_template("talent_tree_arb_pas_008_ru",
			-- {"loc_talent_adamant_perfect_block_damage_boost"}, {"ru"},
				-- loc_text("Сила возмездия")),

		--[+ PASSIVE 9 - Man and Cyber-Mastiff +]--
		-- create_template("talent_tree_arb_pas_009_en",
			-- {"loc_talent_adamant_toughness_regen_near_companion"}, {"en"},
				-- loc_text("Man and Cyber-Mastiff")),
		--[+ Russian - Человек и кибермастиф +]--
		-- create_template("talent_tree_arb_pas_009_ru",
			-- {"loc_talent_adamant_toughness_regen_near_companion"}, {"ru"},
				-- loc_text("еловек и кибермастиф")),

		--[+ PASSIVE 10 - Walk It Off +]--
		-- create_template("talent_tree_arb_pas_010_en",
			-- {"loc_talent_adamant_stamina_regens_toughness"}, {"en"},
				-- loc_text("Walk It Off")),
		--[+ Russian - Заживёт на ходу +]-- руоф Остынь
		-- create_template("talent_tree_arb_pas_010_ru",
			-- {"loc_talent_adamant_stamina_regens_toughness"}, {"ru"},
				-- loc_text("Заживёт на ходу")),

		--[+ PASSIVE 11 - Shield Plates +]--
		-- create_template("talent_tree_arb_pas_011_en",
			-- {"loc_talent_adamant_shield_plates"}, {"en"},
				-- loc_text("Shield Plates")),
		--[+ Russian - Щитовые пластины +]-- руоф Пластинчатые щиты
		-- create_template("talent_tree_arb_pas_011_ru",
			-- {"loc_talent_adamant_shield_plates"}, {"ru"},
				-- loc_text("Щитовые пластины")),

		--[+ PASSIVE 12 - Arbitrator Armour +]--
		-- create_template("talent_tree_arb_pas_012_en",
			-- {"loc_talent_adamant_armor"}, {"en"},
				-- loc_text("Arbitrator Armour")),
		--[+ Russian - Броня арбитратора +]-- руоф Броня Арбитратора
		-- create_template("talent_tree_arb_pas_012_ru",
			-- {"loc_talent_adamant_armor"}, {"ru"},
				-- loc_text("Броня арбитратора")),

		--[+ PASSIVE 13 - Voltaic Mandibles Augment +]--
		-- create_template("talent_tree_arb_pas_013_en",
			-- {"loc_talent_adamant_dog_attacks_electrocute"}, {"en"},
				-- loc_text("Voltaic Mandibles Augment")),
		--[+ Russian - Аугментация Вольтаические жвала +]-- руоф Аугментация челюстей: электрошок
		-- create_template("talent_tree_arb_pas_013_ru",
			-- {"loc_talent_adamant_dog_attacks_electrocute"}, {"ru"},
				-- loc_text("Аугментация Вольтаические жвала")),

		--[+ PASSIVE 14 - Ammo Belt +]--
		-- create_template("talent_tree_arb_pas_014_en",
			-- {"loc_talent_adamant_ammo_belt"}, {"en"},
				-- loc_text("Ammo Belt")),
		--[+ Russian - Патронтаж +]-- руоф Поясная разгрузка
		-- create_template("talent_tree_arb_pas_014_ru",
			-- {"loc_talent_adamant_ammo_belt"}, {"ru"},
				-- loc_text("Патронтаж")),

		--[+ PASSIVE 15 - Concussive +]--
		-- create_template("talent_tree_arb_pas_015_en",
			-- {"loc_talent_adamant_melee_weakspot_hits_count_as_stagger"}, {"en"},
				-- loc_text("Concussive")),
		--[+ Russian - Ошеломление +]-- руоф Сотрясение
		-- create_template("talent_tree_arb_pas_015_ru",
			-- {"loc_talent_adamant_melee_weakspot_hits_count_as_stagger"}, {"ru"},
				-- loc_text("Ошеломление")),

		--[+ PASSIVE 16 - Canine Morale +]--
		-- create_template("talent_tree_arb_pas_016_en",
			-- {"loc_talent_adamant_pinning_dog_kills_buff_allies"}, {"en"},
				-- loc_text("Canine Morale")),
		--[+ Russian - Боевой настрой пса +]-- руоф Собачий настрой
		-- create_template("talent_tree_arb_pas_016_ru",
			-- {"loc_talent_adamant_pinning_dog_kills_buff_allies"}, {"ru"},
				-- loc_text("Боевой настрой пса")),

		--[+ PASSIVE 17 - Imposing Force +]--
		-- create_template("talent_tree_arb_pas_017_en",
			-- {"loc_talent_adamant_damage_reduction_after_elite_kill"}, {"en"},
				-- loc_text("Imposing Force")),
		--[+ Russian - Давящая мощь +]-- руоф Впечатляющая сила
		-- create_template("talent_tree_arb_pas_017_ru",
			-- {"loc_talent_adamant_damage_reduction_after_elite_kill"}, {"ru"},
				-- loc_text("Давящая мощь")),

		--[+ PASSIVE 18 - Suppression Force +]--
		-- create_template("talent_tree_arb_pas_018_en",
			-- {"loc_talent_adamant_staggered_enemies_deal_less_damage"}, {"en"},
				-- loc_text("Suppression Force")),
		--[+ Russian - Сила подавления +]--
		-- create_template("talent_tree_arb_pas_018_ru",
			-- {"loc_talent_adamant_staggered_enemies_deal_less_damage"}, {"ru"},
				-- loc_text("Сила подавления")),

		--[+ PASSIVE 19 - Suppression Protocols +]--
		-- create_template("talent_tree_arb_pas_019_en",
			-- {"loc_talent_adamant_hitting_multiple_gives_tdr"}, {"en"},
				-- loc_text("Suppression Protocols")),
		--[+ Russian - Протоколы подавления +]--
		-- create_template("talent_tree_arb_pas_019_ru",
			-- {"loc_talent_adamant_hitting_multiple_gives_tdr"}, {"ru"},
				-- loc_text("Протоколы подавления")),

		--[+ PASSIVE 20 - Plasteel Plates +]--
		-- create_template("talent_tree_arb_pas_020_en",
			-- {"loc_talent_adamant_plasteel_plates"}, {"en"},
				-- loc_text("Plasteel Plates")),
		--[+ Russian - Пласталевые пластины +]-- руоф Пластины из пластали
		-- create_template("talent_tree_arb_pas_020_ru",
			-- {"loc_talent_adamant_plasteel_plates"}, {"ru"},
				-- loc_text("Пласталевые пластины")),

		--[+ PASSIVE 21 - Arbites Revelatum +]--
		-- create_template("talent_tree_arb_pas_021_en",
			-- {"loc_talent_adamant_dodge_grants_damage"}, {"en"},
				-- loc_text("Arbites Revelatum")),
		--[+ Russian - Арбитрес Ревелатум +]--
		-- create_template("talent_tree_arb_pas_021_ru",
			-- {"loc_talent_adamant_dodge_grants_damage"}, {"ru"},
				-- loc_text("Арбитрес Ревелатум")),

		--[+ PASSIVE 22 - Justified Measures +]--
		-- create_template("talent_tree_arb_pas_022_en",
			-- {"loc_talent_adamant_stacking_damage"}, {"en"},
				-- loc_text("Justified Measures")),
		--[+ Russian - Оправданные меры +]--
		-- create_template("talent_tree_arb_pas_022_ru",
			-- {"loc_talent_adamant_stacking_damage"}, {"ru"},
				-- loc_text("Оправданные меры")),

		--[+ PASSIVE 23 - Hold the Line +]--
		-- create_template("talent_tree_arb_pas_023_en",
			-- {"loc_talent_adamant_staggers_reduce_damage_taken"}, {"en"},
				-- loc_text("Hold the Line")),
		--[+ Russian - Держи строй +]-- руоф Держать строй
		-- create_template("talent_tree_arb_pas_023_ru",
			-- {"loc_talent_adamant_staggers_reduce_damage_taken"}, {"ru"},
				-- loc_text("Держи строй")),

		--[+ PASSIVE 24 - Judicious Efficiency +]--
		-- create_template("talent_tree_arb_pas_024_en",
			-- {"loc_talent_adamant_elite_special_kills_reload_speed"}, {"en"},
				-- loc_text("Judicious Efficiency")),
		--[+ Russian - Судейская эффективность +]-- руоф Разумная эффективность
		-- create_template("talent_tree_arb_pas_024_ru",
			-- {"loc_talent_adamant_elite_special_kills_reload_speed"}, {"ru"},
				-- loc_text("Судейская эффективность")),

		--[+ PASSIVE 25 - Rapid Movement +]--
		-- create_template("talent_tree_arb_pas_025_en",
			-- {"loc_talent_adamant_sprinting_sliding"}, {"en"},
				-- loc_text("Rapid Movement")),
		--[+ Russian - Быстрые движения +]-- руоф Быстрое перемещение
		-- create_template("talent_tree_arb_pas_025_ru",
			-- {"loc_talent_adamant_sprinting_sliding"}, {"ru"},
				-- loc_text("Быстрые движения")),

		--[+ PASSIVE 26 - Rebreather +]--
		-- create_template("talent_tree_arb_pas_026_en",
			-- {"loc_talent_adamant_rebreather"}, {"en"},
				-- loc_text("Rebreather")),
		--[+ Russian - Ребризер +]-- руоф Противогаз
		-- create_template("talent_tree_arb_pas_026_ru",
			-- {"loc_talent_adamant_rebreather"}, {"ru"},
				-- loc_text("Ребризер")),

		--[+ PASSIVE 27 - Cower, Miscreants! +]--
		-- create_template("talent_tree_arb_pas_027_en",
			-- {"loc_talent_adamant_damage_vs_suppressed"}, {"en"},
				-- loc_text("Cower, Miscreants!")),
		--[+ Russian - Трепещите, негодяи! +]--
		-- create_template("talent_tree_arb_pas_027_ru",
			-- {"loc_talent_adamant_damage_vs_suppressed"}, {"ru"},
				-- loc_text("Трепещите, негодяи!")),

		--[+ PASSIVE 28 - Target the Weak +]-- DOUBLE!
		-- create_template("talent_tree_arb_pas_028_en",
			-- {"loc_talent_adamant_staggered_enemies_take_more_damage"}, {"en"},
				-- loc_text("Target the Weak")),
		--[+ Russian - Цель - слабаки +]--
		-- create_template("talent_tree_arb_pas_028_ru",
			-- {"loc_talent_adamant_staggered_enemies_take_more_damage"}, {"ru"},
				-- loc_text("Цель - слабаки")),

		--[+ PASSIVE 29 - The Emperor's Fist +]--
		-- create_template("talent_tree_arb_pas_029_en",
			-- {"loc_talent_adamant_first_melee_hit_increased_damage"}, {"en"},
				-- loc_text("The Emperor's Fist")),
		--[+ Russian - Кулак Императора +]--
		-- create_template("talent_tree_arb_pas_029_ru",
			-- {"loc_talent_adamant_first_melee_hit_increased_damage"}, {"ru"},
				-- loc_text("Кулак Императора")),

		--[+ PASSIVE 30 - Zealous Dedication +]--
		-- create_template("talent_tree_arb_pas_030_en",
			-- {"loc_talent_adamant_crit_chance_on_kill"}, {"en"},
				-- loc_text("Zealous Dedication")),
		--[+ Russian - Фанатичная преданность +]--
		-- create_template("talent_tree_arb_pas_030_ru",
			-- {"loc_talent_adamant_crit_chance_on_kill"}, {"ru"},
				-- loc_text("Фанатичная преданность")),

		--[+ PASSIVE 31 - Street Smarts +]--
		-- create_template("talent_tree_arb_pas_031_en",
			-- {"loc_talent_adamant_dodge_improvement"}, {"en"},
				-- loc_text("Street Smarts")),
		--[+ Russian - Уличная хватка +]-- руоф Законы улицы
		-- create_template("talent_tree_arb_pas_031_ru",
			-- {"loc_talent_adamant_dodge_improvement"}, {"ru"},
				-- loc_text("Уличная хватка")),

		--[+ PASSIVE 32 - Drive them Back +]--
		-- create_template("talent_tree_arb_pas_032_en",
			-- {"loc_talent_adamant_cleave_after_push"}, {"en"},
				-- loc_text("Drive them Back")),
		--[+ Russian - Натиск +]-- руоф Отбрось их
		-- create_template("talent_tree_arb_pas_032_ru",
			-- {"loc_talent_adamant_cleave_after_push"}, {"ru"},
				-- loc_text("Натиск")),

		--[+ PASSIVE 33 - Target Selection +]--
		-- create_template("talent_tree_arb_pas_033_en",
			-- {"loc_talent_adamant_pinning_dog_elite_damage"}, {"en"},
				-- loc_text("Target Selection")),
		--[+ Russian - Выбор целей +]-- руоф Выбор цели
		-- create_template("talent_tree_arb_pas_033_ru",
			-- {"loc_talent_adamant_pinning_dog_elite_damage"}, {"ru"},
				-- loc_text("Выбор целей")),

		--[+ PASSIVE 34 - Soulguilt Scan +]--
		-- create_template("talent_tree_arb_pas_034_en",
			-- {"loc_talent_adamant_stacking_weakspot_strength"}, {"en"},
				-- loc_text("Soulguilt Scan")),
		--[+ Russian - Поиск виновных душ +]--
		-- create_template("talent_tree_arb_pas_034_ru",
			-- {"loc_talent_adamant_stacking_weakspot_strength"}, {"ru"},
				-- loc_text("Поиск виновных душ")),

		--[+ PASSIVE 35 - Priority Endowment +]--
		-- create_template("talent_tree_arb_pas_035_en",
			-- {"loc_talent_adamant_clip_size"}, {"en"},
				-- loc_text("Priority Endowment")),
		--[+ Russian - Приоритетное снабжение +]--
		-- create_template("talent_tree_arb_pas_035_ru",
			-- {"loc_talent_adamant_clip_size"}, {"ru"},
				-- loc_text("Приоритетное снабжение")),

		--[+ PASSIVE 36 - Target Priority +]--
		-- create_template("talent_tree_arb_pas_036_en",
			-- {"loc_talent_adamant_increased_damage_to_high_health"}, {"en"},
				-- loc_text("Target Priority")),
		--[+ Russian - Приоритет целей +]--
		-- create_template("talent_tree_arb_pas_036_ru",
			-- {"loc_talent_adamant_increased_damage_to_high_health"}, {"ru"},
				-- loc_text("Приоритет целей")),

		--[+ PASSIVE 37 - Final Warning +]--
		-- create_template("talent_tree_arb_pas_037_en",
			-- {"loc_talent_adamant_ranged_damage_on_melee_stagger"}, {"en"},
				-- loc_text("Final Warning")),
		--[+ Russian - Последнее предупреждение +]--
		-- create_template("talent_tree_arb_pas_037_ru",
			-- {"loc_talent_adamant_ranged_damage_on_melee_stagger"}, {"ru"},
				-- loc_text("Последнее предупреждение")),

		--[+ PASSIVE 38 - Weight of the Lex +]--
		-- create_template("talent_tree_arb_pas_038_en",
			-- {"loc_talent_adamant_heavy_attacks_increase_damage"}, {"en"},
				-- loc_text("Weight of the Lex")),
		--[+ Russian - Вес Закона +]--
		-- create_template("talent_tree_arb_pas_038_ru",
			-- {"loc_talent_adamant_heavy_attacks_increase_damage"}, {"ru"},
				-- loc_text("Вес Закона")),

		--[+ PASSIVE 39 - Serrated Maw +]--
		-- create_template("talent_tree_arb_pas_039_en",
			-- {"loc_talent_adamant_dog_applies_brittleness"}, {"en"},
				-- loc_text("Serrated Maw")),
		--[+ Russian - Зазубренная пасть +]--
		-- create_template("talent_tree_arb_pas_039_ru",
			-- {"loc_talent_adamant_dog_applies_brittleness"}, {"ru"},
				-- loc_text("Зазубренная пасть")),

		--[+ PASSIVE 40 - Prosecution Blow +]--
		-- create_template("talent_tree_arb_pas_040_en",
			-- {"loc_talent_adamant_crits_rend"}, {"en"},
				-- loc_text("Prosecution Blow")),
		--[+ Russian - Карающий удар +]-- руоф Обвиняющий удар
		-- create_template("talent_tree_arb_pas_040_ru",
			-- {"loc_talent_adamant_crits_rend"}, {"ru"},
				-- loc_text("Карающий удар")),

		--[+ PASSIVE 41 - March +]--
		-- create_template("talent_tree_arb_pas_041_en",
			-- {"loc_talent_adamant_movement_speed_on_block"}, {"en"},
				-- loc_text("March")),
		--[+ Russian - Марш +]--
		-- create_template("talent_tree_arb_pas_041_ru",
			-- {"loc_talent_adamant_movement_speed_on_block"}, {"ru"},
				-- loc_text("Марш")),

		--[+ PASSIVE 42 - Monstrosity Hunter +]--
		-- create_template("talent_tree_arb_pas_042_en",
			-- {"loc_talent_adamant_monster_hunter"}, {"en"},
				-- loc_text("Monstrosity Hunter")),
		--[+ Russian - Охотник на монстров +]-- руоф Охота на чудовищ
		-- create_template("talent_tree_arb_pas_042_ru",
			-- {"loc_talent_adamant_monster_hunter"}, {"ru"},
				-- loc_text("Охотник на монстров")),

		--[+ PASSIVE 43 - Strike Down +]--
		-- create_template("talent_tree_arb_pas_043_en",
			-- {"loc_talent_adamant_melee_attacks_on_staggered_rend"}, {"en"},
				-- loc_text("Strike Down")),
		--[+ Russian - Сокрушительный удар +]-- руоф Сбивающий удар
		-- create_template("talent_tree_arb_pas_043_ru",
			-- {"loc_talent_adamant_melee_attacks_on_staggered_rend"}, {"ru"},
				-- loc_text("Сокрушительный удар")),

		--[+ PASSIVE 44 - True Grit +]--
		-- create_template("talent_tree_arb_pas_044_en",
			-- {"loc_talent_adamant_limit_dmg_taken_from_hits"}, {"en"},
				-- loc_text("True Grit")),
		--[+ Russian - Настоящая закалка +]-- руоф Истинная выдержка
		-- create_template("talent_tree_arb_pas_044_ru",
			-- {"loc_talent_adamant_limit_dmg_taken_from_hits"}, {"ru"},
				-- loc_text("Настоящая закалка")),
--]]
}

-- Автоматическое создание шаблонов
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


