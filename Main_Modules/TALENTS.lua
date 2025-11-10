---@diagnostic disable: undefined-global
-- Version 4.0
-- Thanks to kuli and his Steam guides: https://steamcommunity.com/id/kulii/myworkshopfiles/?section=guides&appid=1361210

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

local Dot_red = "{#color(255, 35, 5)}•{#reset()}"
local Dot_nc = "•"
local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

--[+ +FREQUENTLY REPEATED PHRASES+ +]--
local PHRS = {
	Can_appl_thr_shlds = ""..Dot_green.." Can be applied through shields.",
	Can_be_refr = ""..Dot_green.." Can be refreshed during active duration. ",
	-- Can_be_refr_drop_1 = ""..Dot_green.." Stacks can be refreshed during active duration, and are dropped one by one.",
	Can_proc_mult = ""..Dot_green.." Can proc multiple times per swing when "..COLORS_KWords.Cleaving_rgb..".\n",
	-- Gen_mult_stacks_n_refr = ""..Dot_green.." Can generate multiple Stacks per swing and refresh during active duration. ",
	Refr_dur_stappl = ""..Dot_green.." Refreshes duration on Stack application. ",
	Doesnt_Stack_Psy_Aura = ""..Dot_red.." This effect does not Stack with the same Aura from another "..COLORS_KWords.cls_psy_rgb..".",
	Doesnt_Stack_Psy_eff = ""..Dot_red.." This effect does not Stack with the same debuff from another "..COLORS_KWords.cls_psy_rgb..".",
	Cant_appl_thr_shlds = ""..Dot_red.." Can't apply through shields.",
	Cant_Crit = ""..Dot_red.." Cannot "..COLORS_KWords.Crit_rgb..".\n",
	Carap_cant_cleave = ""..Dot_red.." Carapace armor cannot be "..COLORS_KWords.Cleaved_rgb.." by default.",
	Dont_intw_coher_toughn = ""..Dot_red.." Does not interact with "..COLORS_KWords.Coherency_rgb.." "..COLORS_KWords.Toughness_rgb..".",

--[+ +Russian - ЧАСТО ПОВТОРЯЕМЫЕ ФРАЗЫ+ +]--
	Can_appl_thr_shlds_ru = ""..Dot_green.." Накладывается через щиты.",
	Can_be_refr_ru = ""..Dot_green.." Обновляется во время действия. ",
	-- Can_be_refr_drop_1_ru = ""..Dot_green.." Заряды обновляются во время действия и сбрасываются по одному. ",
	Can_proc_mult_ru = ""..Dot_green.." Может срабатывать несколько раз за удар при "..COLORS_KWords_ru.Cleavi_rgb_ru.." нескольких врагов.\n",
	-- Gen_mult_stacks_n_refr_ru = ""..Dot_green.." Может дать несколько зарядов за удар и обновиться во время действия. ",
	Refr_dur_stappl_ru = ""..Dot_green.." Длительность обновляется при наложении заряда. ",
	Doesnt_Stack_Psy_Aura_ru = ""..Dot_red.." Не суммируется с эффектом такой же ауры другого "..COLORS_KWords_ru.cls_psya_rgb_ru..".",
	Doesnt_Stack_Psy_eff_ru = ""..Dot_red.." Не суммируется с таким же ослаблением от другого псайкера.",
	Cant_appl_thr_shlds_ru = ""..Dot_red.." Не накладывается через щиты.",
	Cant_Crit_ru = ""..Dot_red.." Не наносит "..COLORS_KWords_ru.Crit0_rgb_ru..".\n",
	Carap_cant_clv_ru = ""..Dot_red.." Панцирная броня не "..COLORS_KWords_ru.Cleavaetsa_rgb_ru..".",
	Carap_cant_cleave_ru = ""..Dot_red.." Панцирная броня не "..COLORS_KWords_ru.Cleaving_etsa_rgb_ru..".",
	Dont_intw_coher_toughn_ru = ""..Dot_red.." Не влияет на "..COLORS_KWords_ru.Tghnss_rgb_ru.." от "..COLORS_KWords_ru.Coherency_rgb_ru..".",
}

--[+ +NOTES+ +]--
local NTS = {
	-- Brtl_note_rgb = ""..Dot_green.." "..COLORS_KWords.Brittleness_rgb.." increases the team's "..COLORS_KWords.Damage_rgb.." to the enemy.",
	Fns_note_rgb = ""..Dot_green.." "..COLORS_KWords.Finesse_rgb.." increases "..COLORS_KWords.Weakspot_rgb.." and "..COLORS_KWords.Critical_rgb.." "..COLORS_KWords.Damage_rgb..".",
	Impact_note_rgb = ""..Dot_green.." "..COLORS_KWords.Impact_rgb.." increases the effectiveness of "..COLORS_KWords.Stagger_rgb.." on enemies.",
	-- Pwr_note_rgb = ""..Dot_green.." "..COLORS_KWords.Strength_rgb.." increases "..COLORS_KWords.Damage_rgb..", "..COLORS_KWords.Stagger_rgb.." and "..COLORS_KWords.Cleave_rgb..".",
	Rend_note_rgb = ""..Dot_green.." "..COLORS_KWords.Rending_rgb.." increases your own "..COLORS_KWords.Damage_rgb..".",
--[+ +Russian - ПРИМЕЧАНИЯ+ +]--
	-- Brtl_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Brttlns_rgb_ru.." повышает "..COLORS_KWords_ru.Dmg_rgb_ru.." команды по врагу.",
	Fns_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Fnss_rgb_ru.." повышает "..COLORS_KWords_ru.Crit_dmg_r_rgb_ru.." и "..COLORS_KWords_ru.Weakspotv_dmg_rgb_ru..".",
	Impact_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Impact0_rgb_ru.." увеличивает эффективность "..COLORS_KWords_ru.Staggering_rgb_ru.." врагов.",
	-- Pwr_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Pwr_rgb_ru.." повышает "..COLORS_KWords_ru.Dmg_rgb_ru..", "..COLORS_KWords_ru.Stagger_rgb_ru.." и "..COLORS_KWords_ru.Cleaving_rgb_ru..".",
	Rend_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Rndg_rgb_ru.." повышает ваш "..COLORS_KWords_ru.Dmg_rgb_ru..".",
}


local talent_localizations = {
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

--[+ ++TALENT TREE++ +]--
--[+ +MAIN+ +]--
	--[+ Passive +]--	01.11.2025
	["loc_glossary_talent_default"] = {
		-- en = "Passive",
		ru = "Пассивный", -- руоф Пассив.
		-- fr = "Passif",
		["zh-tw"] = "被動",
		-- ["zh-cn"] = "被动",
		-- de = "Passiv",
		-- it = "Passivo",
		-- ja = "パッシブ",
		-- ko = "패시브",
		-- pl = "Pasywna",
		-- ["pt-br"] = "Passivo",
		-- es = "Pasivo",
	},
	--[+ Blitz +]--	01.11.2025
	["loc_glossary_term_tactical"] = {
		-- en = "Blitz",
		-- ru = "Блиц",
		-- fr = "",
		["zh-tw"] = "閃擊",
		-- ["zh-cn"] = "闪击",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Aura +]--	01.11.2025
	["loc_glossary_term_aura"] = {
		-- en = "Aura",
		-- ru = "Аура",
		-- fr = "",
		["zh-tw"] = "光環",
		-- ["zh-cn"] = "光环",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Ability +]--	01.11.2025
	["loc_glossary_term_class_ability"] = {
		-- en = "Ability",
		-- ru = "Способность",
		-- fr = "",
		["zh-tw"] = "戰鬥技能",
		-- ["zh-cn"] = "能力",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Keystone +]--	01.11.2025
	["loc_glossary_talent_keystone"] = {
		-- en = "Keystone",
		-- ru = "Ключевой талант",
		-- fr = "",
		["zh-tw"] = "鑰石",
		-- ["zh-cn"] = "楔石",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ (Lock) Locked +]--	01.11.2025
	["loc_talent_mechanic_locked"] = {
		-- en = "Locked",
		ru = "Закрыт", -- руоф Заблокир.
		-- fr = "",
		["zh-tw"] = "已鎖定",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ [LMB] Activate +]--	01.11.2025
	["loc_talent_menu_tooltip_button_hint_first_level"] = {
		-- en = "Activate",
		ru = "Включить", -- руоф Актив.
		-- fr = "",
		["zh-tw"] = "啟用-",
		-- ["zh-cn"] = "激活",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ [RMB] Deactivate +]--	01.11.2025
	["loc_talent_menu_tooltip_button_hint_remove_level_first"] = {
		-- en = "Deactivate",
		-- ru = "Отключить",
		-- fr = "",
		["zh-tw"] = "停用-",
		["zh-cn"] = "撤销",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ [V] View full build +]--	01.11.2025
	["loc_alias_talent_builder_view_hotkey_summary"] = {
		-- en = "View full build",
		ru = "Посмотреть весь билд",
		-- fr = "",
		["zh-tw"] = "查看全部天賦",
		["zh-cn"] = "查看完整构筑",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Full build +]--	01.11.2025
	["loc_alias_talent_builder_view_popup_title_summary"] = {
		-- en = "Full build",
		ru = "Весь билд",
		-- fr = "",
		["zh-tw"] = "全部天賦",
		["zh-cn"] = "完整构筑",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

--[+ +MODIFIERS+ +]--
	--[+ Operative Modifier +]--	01.11.2025
	["loc_glossary_talent_stat"] = {
		-- en = "Operative Modifier",
		-- ru = "Модификатор оперативника",
		-- fr = "",
		["zh-tw"] = "幹員修改器",
		-- ["zh-cn"] = "特工修正",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Ability Modifier +]--	01.11.2025
	["loc_glossary_talent_ability_modifier"] = {
		-- en = "Ability Modifier",
		-- ru = "Модификатор способности",
		-- fr = "",
		["zh-tw"] = "技能修改器",
		-- ["zh-cn"] = "能力修正",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Keystone Modifier +]--	01.11.2025
	["loc_glossary_talent_keystone_modifier"] = {
		-- en = "Keystone Modifier",
		ru = "Модификатор ключевого таланта", -- руоф Модификатор краеугольного камня
		-- fr = "",
		["zh-tw"] = "鑰石修改器",
		-- ["zh-cn"] = "楔石修正",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

--[+ +Selecting this...+ +]--
	--[+ ...Blitz locks all other Blitzes. +]--	01.11.2025
	["loc_talent_mechanic_exclusive_tactical"] = {
		-- en = "Selecting this Blitz locks all other Blitzes.",
		ru = "Выбор этого Блица закрывает все остальные Блицы.", -- руоф Выбор этой Блиц-способности блокирует все остальные Блицы.
		-- fr = "",
		["zh-tw"] = "一旦選擇此閃擊，其餘閃擊將被鎖定。", -- 選擇此閃擊技能後將導致其他閃擊技能不可用。
		-- ["zh-cn"] = "锁定闪击",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ...Aura locks all other Auras. +]--	01.11.2025
	["loc_talent_mechanic_exclusive_aura"] = {
		-- en = "Selecting this Aura locks all other Auras.",
		ru = "Выбор этой Ауры закрывает все остальные Ауры.", -- руоф Выбор этой Ауры блокирует все остальные Ауры.
		-- fr = "",
		["zh-tw"] = "一旦選擇此光環，其餘光環將被鎖定。", -- 選擇此光環後將導致其他光環不可用。
		-- ["zh-cn"] = "锁定光环",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ...Ability locks all other Abilities. +]--	01.11.2025
	["loc_talent_mechanic_exclusive_ability"] = {
		-- en = "Selecting this Ability locks all other Abilities.",
		ru = "Выбор этой Способности закрывает все остальные Способности.", -- руоф Выбор этой способности блокирует все остальные способности.
		-- fr = "",
		["zh-tw"] = "一旦選擇此技能，其餘技能將被鎖定。", -- 選擇此技能後將導致其他技能不可用。
		-- ["zh-cn"] = "锁定能力",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ...Talent locks all other Talents. +]--	01.11.2025
	["loc_talent_mechanic_mutually_exclusive"] = {
		-- en = "Selecting this Talent locks all other Talents.",
		ru = "Выбор этого Таланта закрывает другие Таланты.", -- руоф Этот талант блокирует некоторые другие таланты.
		-- fr = "",
		["zh-tw"] = "一旦選擇此天賦，其餘天賦將被鎖定。", -- 選擇此天賦後將導致其他天賦不可用。
		-- ["zh-cn"] = "锁定天赋",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ...Keystone locks all other Keystones. +]--	01.11.2025
	["loc_talent_mechanic_exclusive_keystone"] = {
		-- en = "Selecting this Keystone locks all other Keystones.",
		ru = "Выбор этого Ключевого таланта закрывает все остальные Ключевые таланты.", -- руоф Выбор этого краеугольного камня блокирует все остальные краеугольное камни.
		-- fr = "",
		["zh-tw"] = "一旦選擇此鑰石，其餘鑰石將被鎖定。", -- 選擇此鑰石後將導致其他鑰石不可用。
		-- ["zh-cn"] = "锁定楔石",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

--[+ +NODES - УЗЛЫ+ +]--
	--[+ Cleave Boost Medium +]-- Arbites 1	01.11.2025
	["loc_talent_cleave_boost_medium_desc"] = { -- cleave: +25%
		en = Dot_green.." {cleave:%s} "..COLORS_KWords.Cleave_rgb..".",
		ru = Dot_green.." {cleave:%s} к "..COLORS_KWords_ru.Cleave_rgb_ru.." нескольких врагов за удар.", -- Повышение рассечения среднее
		fr = "{cleave:%s} "..COLORS_KWords_fr.Cleave_rgb_fr..".",
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
	--[+ Critical Chance Boost +]-- Psyker 1	01.11.2025
	["loc_talent_crit_chance_low_desc"] = { -- crit_chance:+5%
		en = Dot_green.." {crit_chance:%s} "..COLORS_KWords.Crit_hit_chance_rgb..".",
		ru = Dot_green.." {crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru..".", -- Повышение шанса критического удара
		fr = "{crit_chance:%s} de "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr..".",
		["zh-tw"] = "{crit_chance:%s} "..COLORS_KWords_tw.Crit_hit_chance_rgb_tw.."。", -- 暴擊機率增幅
		["zh-cn"] = "{crit_chance:%s} "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。", -- 暴击几率强化
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Impact Boost +]-- Arbites 1	01.11.2025
	["loc_talent_impact_boost_medium_desc"] = { -- impact: +5%
		en = Dot_green.." {impact:%s} "..COLORS_KWords.Impact_rgb..". "
			..NTS.Impact_note_rgb,
		ru = Dot_green.." {impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." врагов. "
				..NTS.Impact_note_rgb_ru, -- Повышение выведения из равновесия среднее -- руоф Усиление подчинения
		fr = "{impact:%s} "..COLORS_KWords_fr.Impact_rgb_fr..".",
		["zh-tw"] = "{impact:%s} "..COLORS_KWords_tw.Impact_rgb_tw.."。",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Melee Damage Boost Medium +]-- Psyker 1, Zealot 2, Ogryn 1, Arbites 1, Veteran 1	01.11.2025
	["loc_talent_melee_damage_boost_medium_desc"] = { -- melee_damage: +10%
		en = Dot_green.." {melee_damage:%s} Melee "..COLORS_KWords.Damage_rgb..".",
		ru = Dot_green.." {melee_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя.", -- Повышение урона ближнего боя
		fr = "{melee_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée.",
		["zh-tw"] = "{melee_damage:%s} "..COLORS_KWords_tw.Damage_melee_rgb_tw.."。", -- 近戰傷害增幅(中)
		["zh-cn"] = "{melee_damage:%s} 近战"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。", -- 近战伤害强化 中
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Movement Speed Boost +]-- Psyker 1, Zealot 1, Veteran 1	01.11.2025
	["loc_talent_movement_speed_low_desc"] = { -- movement_speed:+5%
		en = Dot_green.." {movement_speed:%s} Movement Speed.",
		ru = Dot_green.." {movement_speed:%s} к скорости движения.",
		fr = "{movement_speed:%s} de Vitesse de déplacement.",
		["zh-tw"] = "{movement_speed:%s} 移動速度提升。", -- 移動速度增幅
		["zh-cn"] = "{movement_speed:%s} 移动速度。", -- 移动速度强化
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
-- !!! Removed ".00". Fix in the Enhanced_Descriptions.lua file !!! --
	--[+ Peril Resistance Low +]-- Psyker 1	01.11.2025
	["loc_talent_warp_charge_low_desc"] = { -- warp_charge: -10.00%
		en = Dot_green.." {warp_charge:%s} "..COLORS_KWords.Peril_rgb.." Generation.",
		ru = Dot_green.." {warp_charge:%s} к набору "..COLORS_KWords_ru.Peril_rgb_ru..".", -- Сопротивление опасности малое
		fr = "{warp_charge:%s} de Génération de "..COLORS_KWords_fr.Peril_rgb_fr.." .",
		["zh-tw"] = "{warp_charge:%s} "..COLORS_KWords_tw.Peril_rgb_tw.."。", -- 反噬抗性
		["zh-cn"] = "{warp_charge:%s} "..COLORS_KWords_zh_cn.Peril_rgb_zh_cn.."产生。", -- 危机值抗性
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Ranged Damage Boost Medium +]-- Psyker 1, Ogryn 1, Arbites 1, Veteran 1	01.11.2025
	["loc_talent_ranged_damage_medium_desc"] = { -- ranged_damage: +5%
		en = Dot_green.." {ranged_damage:%s} Ranged "..COLORS_KWords.Damage_rgb..".",
		ru = Dot_green.." {ranged_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." дальнего боя.", -- Повышение урона дальнего боя среднее
		fr = "{ranged_damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." de distance.",
		["zh-tw"] = "{ranged_damage:%s} "..COLORS_KWords_tw.Damage_ranged_rgb_tw.."。", -- 遠程傷害增幅(中)
		["zh-cn"] = "{ranged_damage:%s} 远程"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。", -- 远程伤害强化 中
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Reload Boost Low +]-- Ogryn 1	01.11.2025
	["loc_talent_reload_speed_low_desc"] = { -- reload_speed: +5%
		en = Dot_green.." {reload_speed:%s} Reload Speed.\n"
			.."\n"
			..Dot_nc.." This also increases the speed of the loading special action of Combat Shotguns.",
		ru = Dot_green.." {reload_speed:%s} к скорости перезарядки.\n"
			.."\n"
			..Dot_nc.." Этот талант также увеличивает скорость перезарядки специальных патронов для боевых дробовиков.", -- Повышение скорости перезарядки малое
		-- fr = "{reload_speed:%s} de vitesse de rechargement.",
		-- ["zh-tw"] = "{reload_speed:%s} 換彈速度增幅。", -- 換彈速度增幅
		-- ["zh-cn"] = "{reload_speed:%s} 装弹速度。", -- 装弹强化
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Reload Boost Medium +]-- Veteran 1	01.11.2025
	["loc_talent_reload_speed_medium_desc"] = { -- reload_speed: +10%
		en = Dot_green.." {reload_speed:%s} Reload Speed.\n"
			.."\n"
			..Dot_nc.." This also increases the speed of the loading special action of Combat Shotguns.",
		ru = Dot_green.." {reload_speed:%s} к скорости перезарядки.\n"
			.."\n"
			..Dot_nc.." Этот талант также увеличивает скорость перезарядки специальных патронов для боевых дробовиков.", -- Повышение скорости перезарядки среднее -- руоф Усиление перезарядки
		-- fr = "{reload_speed:%s} de vitesse de rechargement.",
		-- ["zh-tw"] = "{reload_speed:%s} 換彈速度增幅。", -- 換彈速度增幅
		-- ["zh-cn"] = "{reload_speed:%s} 装弹速度。", -- 装弹强化
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Rending Boost Low +]-- Ogryn 1	31.10.2025
	["loc_talent_armor_pen_low_desc"] = { -- rending: +5%
		en = Dot_green.." {rending:%s} "..COLORS_KWords.Rending_rgb..".\n"
				.."\n"
				..NTS.Rend_note_rgb,
		ru = Dot_green.." {rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." брони.\n"
				.."\n"
				..NTS.Rend_note_rgb_ru, -- Повышение пробивания брони малое -- руоф Усиление «Терзания»
		-- fr = "{rending:%s} de "..COLORS_KWords_fr.Rending_rgb_fr..".",
		-- ["zh-tw"] = "{rending:%s} "..COLORS_KWords_tw.Rending_rgb_tw.."。", -- 撕裂增幅
		-- ["zh-cn"] = "{rending:%s} "..COLORS_KWords_zh_cn.Rending_rgb_zh_cn.."。", -- 撕裂强化
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Stamina Boost Low +]-- Veteran 1	01.11.2025
	["loc_talent_stamina_low_desc"] = { -- stamina: +1
		en = Dot_green.." {stamina:%s} "..COLORS_KWords.Stamina_rgb..".",
		ru = Dot_green.." {stamina:%s} к "..COLORS_KWords_ru.Stamina_rgb_ru..".", -- Повышение выносливости малое -- руоф Усиление выносливости
		fr = "{stamina:%s} "..COLORS_KWords_fr.Stamina_rgb_fr..".",
		["zh-tw"] = "{stamina:%s} "..COLORS_KWords_tw.Stamina_rgb_tw.."。", -- 耐力增幅
		["zh-cn"] = "{stamina:%s} "..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."。", -- 体力强化
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Stamina Regeneration Boost +]-- Veteran 1	01.11.2025
	["loc_talent_stamina_regen_delay_desc"] = { -- duration: 0.25
		en = Dot_green.." {duration:%s} seconds "..COLORS_KWords.Stamina_rgb.." Regeneration Delay Reduction.",
		ru = Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{duration:%s} секунд от задержки восстановления "..COLORS_KWords_ru.Stamina_rgb_ru..".", -- Повышение восстановления выносливости -- руоф Усиление восстановления выносливости
		fr = "{duration:%s} secondes de réduction du délai de régénération d'"..COLORS_KWords_fr.Stamina_rgb_fr..".",
		["zh-tw"] = "{duration:%s} 秒 "..COLORS_KWords_tw.Stamina_rgb_tw.." 再生延遲減少。", -- 耐力恢復增幅
		["zh-cn"] = COLORS_Numbers.n_minus_rgb.."{duration:%s} 秒"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."回复延迟。", -- 体力回复强化
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Toughness Boost Low +]-- Ogryn 1, Veteran 1	01.11.2025
	["loc_talent_toughness_boost_low_desc"] = { -- toughness: +15%
		en = Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb..".",
		ru = Dot_green.." {toughness:%s} к "..COLORS_KWords_ru.Toughness_rgb_ru..".", -- Повышение стойкости малое -- руоф Усиление стойкости
		fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr..".",
		["zh-tw"] = "{toughness:%s} "..COLORS_KWords_tw.Toughness_rgb_tw.."。", -- 韌性增幅(小)
		["zh-cn"] = "{toughness:%s} "..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."。", -- 韧性强化 低
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Toughness Boost Medium +]-- Psyker 2, Zealot 1, Ogryn 2, Veteran 2	01.11.2025
	["loc_talent_toughness_boost_medium_desc"] = { -- toughness: +25%
		en = Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb..".",
		ru = Dot_green.." {toughness:%s} к "..COLORS_KWords_ru.Toughness_rgb_ru..".", -- Повышение стойкости среднее -- руоф Усиление стойкости
		fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr..".",
		["zh-tw"] = "{toughness:%s} "..COLORS_KWords_tw.Toughness_rgb_tw.."。", -- 韌性增幅(中)
		["zh-cn"] = "{toughness:%s} "..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."。", -- 韧性强化 中
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Toughness Damage Reduction Low +]-- Psyker 1, Ogryn 1	01.11.2025
	["loc_talent_toughness_damage_reduction_low_desc"] = {-- toughness: +5%
		en = Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_dmg_red_rgb..".",
		ru = Dot_green.." {toughness:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru..".", -- Снижение урона стойкости малое -- руоф Снижение урона стойкости
		fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr..".",
		["zh-tw"] = "{toughness:%s} "..COLORS_KWords_tw.Toughness_dmg_red_rgb_tw.."。", -- 韌性減傷增幅(小)
		["zh-cn"] = "{toughness:%s} "..COLORS_KWords_zh_cn.Toughness_dmg_red_u_rgb_zh_cn.."。", -- 韧性伤害减免 低
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Toughness Damage Reduction Medium +]-- Psyker 1, Zealot 1, Ogryn 1, Arbites 1, Veteran 1
	["loc_talent_toughness_damage_reduction_medium_desc"] = { -- toughness: +10%
		en = Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_dmg_red_rgb..".",
		ru = Dot_green.." {toughness:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru..".", -- Снижение урона стойкости среднее
		fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr..".",
		["zh-tw"] = "{toughness:%s} "..COLORS_KWords_tw.Toughness_dmg_red_rgb_tw.."。", -- 韌性減傷增幅(中)
		["zh-cn"] = "{toughness:%s} "..COLORS_KWords_zh_cn.Toughness_dmg_red_u_rgb_zh_cn.."。", -- 韧性伤害减免 中
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
}

-- Temporary division of Talents into 5 modules by classes
local psyker_talents = mod:io_dofile("Enhanced_descriptions/Main_Modules/TALENTS_Psyker")
local zealot_talents = mod:io_dofile("Enhanced_descriptions/Main_Modules/TALENTS_Zealot")
local veteran_talents = mod:io_dofile("Enhanced_descriptions/Main_Modules/TALENTS_Veteran")
local ogryn_talents = mod:io_dofile("Enhanced_descriptions/Main_Modules/TALENTS_Ogryn")
local arbites_talents = mod:io_dofile("Enhanced_descriptions/Main_Modules/TALENTS_Arbites")

-- Unification of all localizations
for key, value in pairs(psyker_talents) do
	talent_localizations[key] = value
end
for key, value in pairs(zealot_talents) do
	talent_localizations[key] = value
end
for key, value in pairs(veteran_talents) do
	talent_localizations[key] = value
end
for key, value in pairs(ogryn_talents) do
	talent_localizations[key] = value
end
for key, value in pairs(arbites_talents) do
	talent_localizations[key] = value
end


--[+ Automatically create templates from the new structure +]--
local localization_templates = {}
for loc_key, locales in pairs(talent_localizations) do
	for locale, text in pairs(locales) do
		table.insert(localization_templates, {
			loc_keys = {loc_key},
			locales = {locale},
			handle_func = loc_text(text)
		})
	end
end

-- mod:notify("TALENTS.lua loaded successfully")

return localization_templates
