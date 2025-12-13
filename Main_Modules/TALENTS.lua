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
		--[+ Passive +]--	08.12.2025
		["loc_glossary_talent_default"] = {
			-- en = "Passive",
			ru = "Пассивный", -- руоф Пассив.
			-- fr = "Passif",
			-- ["zh-tw"] = "被動",
			-- ["zh-cn"] = "被动",
			-- de = "Passiv",
			-- it = "Passivo",
			-- ja = "パッシブ",
			-- ko = "패시브",
			-- pl = "Pasywna",
			-- ["pt-br"] = "Passivo",
			-- es = "Pasivo",
		},
		--[+ Blitz +]--	08.12.2025
		-- ["loc_glossary_term_tactical"] = {
			-- en = "Blitz",
			-- ru = "Блиц",
			-- ["zh-tw"] = "閃擊",
			-- ["zh-cn"] = "闪击",
		-- },
		--[+ Aura +]--	08.12.2025
		-- ["loc_glossary_term_aura"] = {
			-- en = "Aura",
			-- ru = "Аура",
			-- ["zh-tw"] = "光環",
			-- ["zh-cn"] = "光环",
		-- },
		--[+ Ability +]--	08.12.2025
		-- ["loc_glossary_term_class_ability"] = {
			-- en = "Ability",
			-- ru = "Способность",
			-- ["zh-tw"] = "戰鬥技能",
			-- ["zh-cn"] = "能力",
		-- },
		--[+ Keystone +]--	08.12.2025
		-- ["loc_glossary_talent_keystone"] = {
			-- en = "Keystone",
			-- ru = "Ключевой талант",
			-- ["zh-tw"] = "鑰石",
			-- ["zh-cn"] = "楔石",
		-- },
		--[+ (Lock) Locked +]--	08.12.2025
		["loc_talent_mechanic_locked"] = {
			-- en = "Locked",
			ru = "Закрыт", -- руоф Заблокир.
			-- ["zh-tw"] = "已鎖定",
			-- ["zh-cn"] = "",
		},
		--[+ [LMB] Activate +]--	08.12.2025
		["loc_talent_menu_tooltip_button_hint_first_level"] = {
			-- en = "Activate",
			ru = "Выбрать", -- руоф Актив.
			-- ["zh-tw"] = "啟用-",
			-- ["zh-cn"] = "激活",
		},
		--[+ [RMB] Deactivate +]--	08.12.2025
		["loc_talent_menu_tooltip_button_hint_remove_level_first"] = {
			-- en = "Deactivate",
			ru = "Убрать", -- руоф Отключить
			-- ["zh-tw"] = "停用-",
			-- ["zh-cn"] = "撤销",
		},
		--[+ [V] View full build +]--	08.12.2025
		["loc_alias_talent_builder_view_hotkey_summary"] = {
			-- en = "1View full build",
			ru = "Посмотреть весь билд", -- руоф Осмотреть полную сборку
			-- ["zh-tw"] = "查看全部天賦",
			-- ["zh-cn"] = "查看完整构筑",
		},
		--[+ Full build +]--	01.11.2025
		["loc_alias_talent_builder_view_popup_title_summary"] = {
			-- en = "Full build",
			ru = "Весь билд",
			-- ["zh-tw"] = "全部天賦",
			-- ["zh-cn"] = "完整构筑",
		},

	--[+ +MODIFIERS+ +]--
		--[+ Operative Modifier +]--	08.12.2025
		-- ["loc_glossary_talent_stat"] = {
			-- en = "Operative Modifier",
			-- ru = "Модификатор оперативника",
			-- ["zh-tw"] = "幹員修改器",
			-- ["zh-cn"] = "特工修正",
		-- },
		--[+ Ability Modifier +]--	08.12.2025
		-- ["loc_glossary_talent_ability_modifier"] = {
			-- en = "Ability Modifier",
			-- ru = "Модификатор способности",
			-- ["zh-tw"] = "技能修改器",
			-- ["zh-cn"] = "能力修正",
		-- },
		--[+ Keystone Modifier +]--	08.12.2025
		["loc_glossary_talent_keystone_modifier"] = {
			-- en = "Keystone Modifier",
			ru = "Модификатор ключевого таланта", -- руоф Модификатор краеугольного камня
			-- ["zh-tw"] = "鑰石修改器",
			-- ["zh-cn"] = "楔石修正",
		},

	--[+ +SELECTING THIS...+ +]--
		--[+ ...Blitz locks all other Blitzes. +]--	08.12.2025
		["loc_talent_mechanic_exclusive_tactical"] = {
			-- en = "Selecting this Blitz locks all other Blitzes.",
			ru = "Выбор этого Блица закроет другие Блицы.", -- руоф Выбор этой Блиц-способности блокирует все остальные Блицы.
			-- ["zh-tw"] = "一旦選擇此閃擊，其餘閃擊將被鎖定。", -- 選擇此閃擊技能後將導致其他閃擊技能不可用。
			-- ["zh-cn"] = "锁定闪击",
		},
		--[+ ...Aura locks all other Auras. +]--	08.12.2025
		["loc_talent_mechanic_exclusive_aura"] = {
			-- en = "Selecting this Aura locks all other Auras.",
			ru = "Выбор этой Ауры закроет другие Ауры.", -- руоф Выбор этой ауры блокирует все остальные ауры.
			-- ["zh-tw"] = "一旦選擇此光環，其餘光環將被鎖定。", -- 選擇此光環後將導致其他光環不可用。
			-- ["zh-cn"] = "锁定光环",
		},
		--[+ ...Ability locks all other Abilities. +]--	08.12.2025
		["loc_talent_mechanic_exclusive_ability"] = {
			-- en = "Selecting this Ability locks all other Abilities.",
			ru = "Выбор этой Способности закроет другие Способности.", -- руоф Выбор этой способности блокирует все остальные способности.
			-- ["zh-tw"] = "一旦選擇此技能，其餘技能將被鎖定。", -- 選擇此技能後將導致其他技能不可用。
			-- ["zh-cn"] = "锁定能力",
		},
		--[+ ...Talent locks all other Talents. +]--	08.12.2025
		["loc_talent_mechanic_mutually_exclusive"] = {
			-- en = "Selecting this Talent locks all other Talents.",
			ru = "Выбор этого модификатора закроет другие модификаторы.", -- руоф Этот талант блокирует некоторые другие таланты.
			-- ["zh-tw"] = "一旦選擇此天賦，其餘天賦將被鎖定。", -- 選擇此天賦後將導致其他天賦不可用。
			-- ["zh-cn"] = "锁定天赋",
		},
		--[+ ...Keystone locks all other Keystones. +]--	08.12.2025
		["loc_talent_mechanic_exclusive_keystone"] = {
			-- en = "Selecting this Keystone locks all other Keystones.",
			ru = "Выбор этого Ключевого таланта закроет другие Ключевые таланты.", -- руоф Выбор этого краеугольного камня блокирует все остальные краеугольное камни.
			-- ["zh-tw"] = "一旦選擇此鑰石，其餘鑰石將被鎖定。", -- 選擇此鑰石後將導致其他鑰石不可用。
			-- ["zh-cn"] = "锁定楔石",
		},

	--[+ +NODES - УЗЛЫ+ +]--
		--[+ Cleave Boost Medium +]--	08.12.2025
		-- Arbites 1
		["loc_talent_cleave_boost_medium_desc"] = { -- cleave: +25%
			en = Dot_green.." {cleave:%s} "..CKWord("Cleave", "Cleave_rgb")..".\n"
				.."\n"
				..CPhrs("Carap_cant_cleave"),
			ru = Dot_green.." {cleave:%s} к "..CKWord("рассечению", "rassecheniu_rgb_ru").." нескольких врагов за удар.\n"
				.."\n"
				..CPhrs("Carap_cant_clv"), -- руоф Усиление «Раскола»
		},
		--[+ Critical Chance Boost +]--	08.12.2025
		-- Psyker 1, Scum 1
		["loc_talent_crit_chance_low_desc"] = { -- crit_chance:+5%
			en = Dot_green.." {crit_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb")..".",
			ru = Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..".", -- руоф Усиление вероятности крит. удара
			-- fr = "{crit_chance:%s} de "..COLORS_KWords_fr.Crt_hit_chnc_rgb_fr..".",
			-- ["zh-tw"] = "{crit_chance:%s} "..COLORS_KWords_tw.Crt_hit_chnc_rgb_tw.."。", -- 暴擊機率增幅
			-- ["zh-cn"] = "{crit_chance:%s} "..COLORS_KWords_zh_cn.Crt_chnc_rgb_zh_cn.."。", -- 暴击几率强化
		},
		--[+ Impact Boost +]--	08.12.2025
		-- Arbites 1
		["loc_talent_impact_boost_medium_desc"] = { -- impact: +25%
			en = Dot_green.." {impact:%s} "..CKWord("Impact", "Impact_rgb")..".\n"
				.."\n"
				..CNote("Impact_note"),
			ru = Dot_green.." {impact:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." врагов.\n"
				.."\n"
				..CNote("Impact_note"), -- руоф Усиление подчинения
			-- fr = "{impact:%s} "..COLORS_KWords_fr.Impact_rgb_fr..".",
			-- ["zh-tw"] = "{impact:%s} "..COLORS_KWords_tw.Impact_rgb_tw.."。",
		},
		--[+ Melee Damage Boost Low - Medium +]--	08.12.2025
		-- Psyker 1, Zealot 2, Ogryn 1, Arbites 1, Veteran 1, Scum 1
		["loc_talent_melee_damage_boost_medium_desc"] = { -- melee_damage: +10%-+15%
			en = Dot_green.." {melee_damage:%s} Melee "..CKWord("Damage", "Damage_rgb")..".",
			ru = Dot_green.." {melee_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя.", -- руоф Усиление урона в ближнем бою
			-- fr = "{melee_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée.",
			-- ["zh-tw"] = "{melee_damage:%s} "..COLORS_KWords_tw.Damage_melee_rgb_tw.."。", -- 近戰傷害增幅(中)
			-- ["zh-cn"] = "{melee_damage:%s} 近战"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。", -- 近战伤害强化 中
		},
		--[+ Movement Speed Boost +]--	08.12.2025
		-- Psyker 1, Zealot 1, Veteran 1
		["loc_talent_movement_speed_low_desc"] = { -- movement_speed: +5%
			en = Dot_green.." {movement_speed:%s} Movement Speed.",
			ru = Dot_green.." {movement_speed:%s} к скорости движения.", -- руоф Усиление скорости передвижения
			-- fr = "{movement_speed:%s} de Vitesse de déplacement.",
			-- ["zh-tw"] = "{movement_speed:%s} 移動速度提升。", -- 移動速度增幅
			-- ["zh-cn"] = "{movement_speed:%s} 移动速度。", -- 移动速度强化
		},
	-- !!! Removed ".00". Fix in the Enhanced_Descriptions.lua file !!! --
		--[+ Peril Resistance Low +]--	08.12.2025
		-- Psyker 1
		["loc_talent_warp_charge_low_desc"] = { -- warp_charge: -10.00%
			en = Dot_green.." {warp_charge:%s} "..CKWord("Peril", "Peril_rgb").." Generation.",
			ru = Dot_green.." {warp_charge:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..".",-- руоф Сопротивление угрозе
			-- fr = "{warp_charge:%s} de Génération de "..COLORS_KWords_fr.Peril_rgb_fr.." .",
			-- ["zh-tw"] = "{warp_charge:%s} "..COLORS_KWords_tw.Peril_rgb_tw.."。", -- 反噬抗性
			-- ["zh-cn"] = "{warp_charge:%s} "..COLORS_KWords_zh_cn.Peril_rgb_zh_cn.."产生。", -- 危机值抗性
		},
		--[+ Ranged Damage Boost Medium +]--	08.12.2025
		-- Psyker 1, Ogryn 1, Arbites 1, Veteran 1
		["loc_talent_ranged_damage_medium_desc"] = { -- ranged_damage: +10%
			en = Dot_green.." {ranged_damage:%s} Ranged "..CKWord("Damage", "Damage_rgb")..".",
			ru = Dot_green.." {ranged_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." дальнего боя.", -- руоф Усиление урона в дальнем бою
			-- fr = "{ranged_damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." de distance.",
			-- ["zh-tw"] = "{ranged_damage:%s} "..COLORS_KWords_tw.Damage_ranged_rgb_tw.."。", -- 遠程傷害增幅(中)
			-- ["zh-cn"] = "{ranged_damage:%s} 远程"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。", -- 远程伤害强化 中
		},
		--[+ Reload Boost Low +]--	08.12.2025
		-- Ogryn 1
		["loc_talent_reload_speed_low_desc"] = { -- reload_speed: +5%
			en = Dot_green.." {reload_speed:%s} Reload Speed.\n"
				.."\n"
				..Dot_nc.." This also increases the speed of the loading special action of Combat Shotguns.",
			ru = Dot_green.." {reload_speed:%s} к скорости перезарядки.\n"
				.."\n"
				..Dot_nc.." Этот талант также увеличивает скорость перезарядки специальных патронов для боевых дробовиков.", -- руоф Усиление перезарядки
			-- fr = "{reload_speed:%s} de vitesse de rechargement.",
			-- ["zh-tw"] = "{reload_speed:%s} 換彈速度增幅。", -- 換彈速度增幅
			-- ["zh-cn"] = "{reload_speed:%s} 装弹速度。", -- 装弹强化
		},
		--[+ Reload Boost Medium +]--	08.12.2025
		-- Veteran 1
		["loc_talent_reload_speed_medium_desc"] = { -- reload_speed: +10%
			en = Dot_green.." {reload_speed:%s} Reload Speed.\n"
				.."\n"
				..Dot_nc.." This also increases the speed of the loading special action of Combat Shotguns.",
			ru = Dot_green.." {reload_speed:%s} к скорости перезарядки.\n"
				.."\n"
				..Dot_nc.." Этот талант также увеличивает скорость перезарядки специальных патронов для боевых дробовиков.", -- руоф Усиление перезарядки
			-- fr = "{reload_speed:%s} de vitesse de rechargement.",
			-- ["zh-tw"] = "{reload_speed:%s} 換彈速度增幅。", -- 換彈速度增幅
			-- ["zh-cn"] = "{reload_speed:%s} 装弹速度。", -- 装弹强化
		},
		--[+ Rending Boost Low +]--	08.12.2025
		-- Ogryn 1
		["loc_talent_armor_pen_low_desc"] = { -- rending: +5%
			en = Dot_green.." {rending:%s} "..CKWord("Rending", "Rending_rgb")..".\n"
					.."\n"
					..CNote("Rend_note"),
			ru = Dot_green.." {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони.\n"
					.."\n"
					..CNote("Rend_note"), -- руоф Усиление «Терзания»
			-- fr = "{rending:%s} de "..COLORS_KWords_fr.Rending_rgb_fr..".",
			-- ["zh-tw"] = "{rending:%s} "..COLORS_KWords_tw.Rending_rgb_tw.."。", -- 撕裂增幅
			-- ["zh-cn"] = "{rending:%s} "..COLORS_KWords_zh_cn.Rending_rgb_zh_cn.."。", -- 撕裂强化
		},
		--[+ Stamina Boost Low +]--	08.12.2025
		-- Psyker 1, Veteran 1
		["loc_talent_stamina_low_desc"] = { -- stamina: +1
			en = Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..".",
			ru = Dot_green.." {stamina:%s} к "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".", -- руоф Усиление выносливости
			-- fr = "{stamina:%s} "..COLORS_KWords_fr.Stamina_rgb_fr..".",
			-- ["zh-tw"] = "{stamina:%s} "..COLORS_KWords_tw.Stamina_rgb_tw.."。", -- 耐力增幅
			-- ["zh-cn"] = "{stamina:%s} "..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."。", -- 体力强化
		},
		--[+ Stamina Regeneration Boost +]--	08.12.2025
		-- Veteran 1
		["loc_talent_stamina_regen_delay_desc"] = { -- duration: 0.25
			en = Dot_green.." {duration:%s} seconds "..CKWord("Stamina", "Stamina_rgb").." Regeneration Delay Reduction.",
			ru = Dot_green.." На {duration:%s} секунд меньше задержка восстановления "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".", -- руоф Усиление восстановления выносливости
			-- fr = "{duration:%s} secondes de réduction du délai de régénération d'"..COLORS_KWords_fr.Stamina_rgb_fr..".",
			-- ["zh-tw"] = "{duration:%s} 秒 "..COLORS_KWords_tw.Stamina_rgb_tw.." 再生延遲減少。", -- 耐力恢復增幅
			-- ["zh-cn"] = CNumb("-", "n_minus_rgb").."{duration:%s} 秒"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."回复延迟。", -- 体力回复强化
		},
		--[+ Toughness Boost Low +]--	08.12.2025
		-- Ogryn 1, Veteran 1
		["loc_talent_toughness_boost_low_desc"] = { -- toughness: +15
			en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".",
			ru = Dot_green.." {toughness:%s} к "..CKWord("стойкости", "stoikosti_rgb_ru")..".", -- руоф Усиление стойкости
			-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr..".",
			-- ["zh-tw"] = "{toughness:%s} "..COLORS_KWords_tw.Toughness_rgb_tw.."。", -- 韌性增幅(小)
			-- ["zh-cn"] = "{toughness:%s} "..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."。", -- 韧性强化 低
		},
		--[+ Toughness Boost Medium +]--	08.12.2025
		-- Psyker 2, Zealot 1, Ogryn 2, Veteran 2, Scum 2
		["loc_talent_toughness_boost_medium_desc"] = { -- toughness: +25
			en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".",
			ru = Dot_green.." {toughness:%s} к "..CKWord("стойкости", "stoikosti_rgb_ru")..".", -- руоф Усиление стойкости
			-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr..".",
			-- ["zh-tw"] = "{toughness:%s} "..COLORS_KWords_tw.Toughness_rgb_tw.."。", -- 韌性增幅(中)
			-- ["zh-cn"] = "{toughness:%s} "..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."。", -- 韧性强化 中
		},
		--[+ Toughness Damage Reduction Low +]--	08.12.2025
		-- Psyker 1, Ogryn 1
		["loc_talent_toughness_damage_reduction_low_desc"] = { -- toughness: +5%
			en = Dot_green.." {toughness:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".",
			ru = Dot_green.." {toughness:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".", -- руоф Снижение урона стойкости
			-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Tghns_dmg_red_rgb_fr..".",
			-- ["zh-tw"] = "{toughness:%s} "..COLORS_KWords_tw.Tghns_dmg_red_rgb_tw.."。", -- 韌性減傷增幅(小)
			-- ["zh-cn"] = "{toughness:%s} "..COLORS_KWords_zh_cn.Tghns_dmg_red_u_rgb_zh_cn.."。", -- 韧性伤害减免 低
		},
		--[+ Toughness Damage Reduction Medium +]--	08.12.2025
		-- Psyker 1, Zealot 1, Ogryn 1, Arbites 1, Veteran 1
		["loc_talent_toughness_damage_reduction_medium_desc"] = { -- toughness: +10%
			en = Dot_green.." {toughness:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".",
			ru = Dot_green.." {toughness:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".", -- Снижение урона стойкости среднее
			-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Tghns_dmg_red_rgb_fr..".",
			-- ["zh-tw"] = "{toughness:%s} "..COLORS_KWords_tw.Tghns_dmg_red_rgb_tw.."。", -- 韌性減傷增幅(中)
			-- ["zh-cn"] = "{toughness:%s} "..COLORS_KWords_zh_cn.Tghns_dmg_red_u_rgb_zh_cn.."。", -- 韧性伤害减免 中
		},
		--[+ Potent Tox +]--	08.12.2025
		-- Scum 1
		["loc_talent_toxin_damage_boost_desc"] = { -- toughness: +10%
			en = Dot_green.." {power:%s} "..CKWord("Chem Toxin", "Chem_Tox_rgb").." power.",
			ru = Dot_green.." {power:%s} к мощности "..CKWord("Хим-токсина", "Chem_Toxa_rgb_ru")..".", -- Мощный токсин
		},


--[+ ++PSYKER - ПСАЙКЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Brain Burst +]--	08.12.2025
	["loc_ability_psyker_smite_description_new"] = { -- &->and, +colors
		en = "Charge up psychic power and release it to deal high "..CKWord("Damage", "Damage_rgb").." to a single enemy.\n"
			.."\n"
			..Dot_green.." Effective against Flak and Carapace.\n"
			..Dot_green.." High "..CKWord("Damage", "Damage_rgb").." to Maniac and Unyielding.\n"
			..Dot_green.." Always scores a "..CKWord("Weakspot Hit", "Weakspothit_rgb")..".\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			.."Casting with "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb").." or higher will trigger a self-explosion!",
		ru = "Зарядите психическую мощь и высвободите её, чтобы нанести высокий "..CKWord("урон", "uron_rgb_ru").." одному врагу.\n" -- Взрыв мозга -- руоф Взрыв разума
			.."\n"
			..Dot_green.." Эффективно против врагов в противоосколочной и панцирной броне.\n"
			..Dot_green.." Высокий "..CKWord("урон", "uron_rgb_ru").." по маньякам и несгибаемым врагам.\n"
			..Dot_green.." Всегда бьёт в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Вы можете взорваться!{#reset()}\n"
			.."Не используйте если уровень "..CKWord("опасности", "opasnosti_rgb_ru").." "..CNumb("97%", "pc_97_rgb").." или выше!",
	},
	--[+ BLITZ 1 - Brain Rupture +]--	08.12.2025
	["loc_talent_psyker_brain_burst_improved_description"] = { -- talent_old: Brain Burst, damage: +50%, &->and, +colors
		en = "Charge up your psychic power and release it to deal immense "..CKWord("Damage", "Damage_rgb").." to a Single Enemy.\n"
			..Dot_green.." An augmented version of {talent_old:%s} that deals {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			..Dot_green.." Effective against Flak and Carapace.\n"
			..Dot_green.." High "..CKWord("Damage", "Damage_rgb").." to Maniac and Unyielding.\n"
			..Dot_green.." Always scores a "..CKWord("Weakspot Hit", "Weakspothit_rgb").."..\n"
			..Dot_green.." Charging the main attack to "..CNumb("50%", "pc_50_rgb").." lightly "..CKWord("Staggers", "Staggers_rgb").." the target.\n"
			..Dot_green.." On impact, "..CKWord("Staggers", "Staggers_rgb").." almost all enemies.\n"
			..Dot_red.." Cannot "..CKWord("Stagger", "Stagger_rgb").." Mutants, Ogryns, Monstrosities or enemies with active Void shield.\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			..Dot_red.." Casting with "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb").." or higher will trigger a self-explosion!",
		ru = "Зарядите свою психическую мощь и высвободите её, чтобы нанести огромный "..CKWord("урон", "uron_rgb_ru").." одному врагу.\n" -- Разрыв мозга
			..Dot_green.." Это улучшенная версия таланта {talent_old:%s}, наносящая {damage:%s} "..CKWord("урона", "urona_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." Эффективно против врагов в противоосколочной и панцирной броне.\n"
			..Dot_green.." Высокий "..CKWord("урон", "uron_rgb_ru").." по маньякам и несгибаемым врагам.\n"
			..Dot_green.." Всегда бьёт в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".\n"
			..Dot_green.." На уровне заряда "..CNumb("50%", "pc_50_rgb").." основная атака слегка "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." цель.\n"
			..Dot_red.." Не "..CKWord("ошеломляет", "oshelomlaet_rgb_ru")..": мутантов, огринов, чудовищ и врагов с активным пустотным щитом.\n"
			..Dot_green.." При полном заряде "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." всех врагов, кроме мутантов, чудовищ и врагов с активным пустотным щитом.\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Внимание!{#reset()}\n"
			..Dot_red.." Не используйте при уровне "..CKWord("опасности", "opasnosti_rgb_ru").." "..CNumb("97%", "pc_97_rgb").." или выше иначе вы взорвётесь!",
	},
	--[+ BLITZ 1-1 - Kinetic Resonance +]--	08.12.2025
	["loc_talent_psyker_ability_increase_brain_burst_speed_desc"] = { -- talent_name: Brain Rupture, smite_attack_speed: +75%, warp_charge_cost: 50%, duration: 10, s->seconds, +colors
		en = "Using your "..CKWord("Combat Ability", "Cmbt_abil_rgb").." buffs your {talent_name:%s} for {duration:%s} seconds:\n"
			..Dot_green.." {smite_attack_speed:%s} charge speed,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} "..CKWord("Peril", "Peril_rgb").." generation.\n"
			.."\n"
			..Dot_nc.." Affects both Primary and Secondary attacks.",
		ru = "При использовании вашей "..CKWord("боевой способности", "Cmbt_abil_rgb_ru").." усиливается ваш {talent_name:%s} на {duration:%s} секунд:\n" -- Кинетический резонанс
			..Dot_green.." {smite_attack_speed:%s} к скорости заряжания,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Влияет как на основную, так и на дополнительную атаку.",
	},
	--[+ BLITZ 1-2 - Kinetic Flayer +]--	08.12.2025
	["loc_talent_psyker_smite_on_hit_special_elite_desc"] = { -- smite_chance: 10%, talent_name: Brain Rupture, time: 15, s->seconds, +colors
		en = "Attacks vs Specials, Elites and Monstrosities, have a {smite_chance:%s} chance on Hit to inflict {talent_name:%s}.\n"
			..Dot_nc.." Cooldown {time:%s} seconds.",
		ru = "При атаке специалистов, элитных врагов или чудовищ, есть {smite_chance:%s} шанс на срабатывание блица {talent_name:%s}.\n" -- Кинетический живодёр -- руоф Кинетический истребитель
			..Dot_nc.." Восстановление {time:%s} секунд.",
	},
	--[+ BLITZ 2 - Smite +]--	08.12.2025
	["loc_ability_psyker_chain_lightning_description"] = { -- +colors
		en = "Unleash a torrent of chain bio-lightning that arcs between enemies, dealing low "..CKWord("Electrocuting", "Electrcuting_rgb").." "..CKWord("Damage", "Damage_rgb").." over time and inflicting high "..CKWord("Stagger", "Stagger_rgb")..".\n"
			.."The secondary charged attack deals increased "..CKWord("Damage", "Damage_rgb").." and jumps faster.\n"
			.."\n"
			..Dot_nc.." Max range: "..CNumb("16", "n_16_rgb").." meters.\n"
			..Dot_nc.." Only targets torso hitzone.\n"
			..CPhrs("Cant_Crit")
			..Dot_red.." Average armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Low "..CKWord("Damage", "Damage_rgb").." to Carapace.\n"
			..Dot_red.." Cannot "..CKWord("Stagger", "Stagger_rgb").." Monstrosities or enemies with an active Void shield.\n"
			.."\n"
			..Dot_nc.." Forces a brief Quelling action upon reaching "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..", removing ~"..CNumb("8.5%", "pc_8_5_rgb").." "..CKWord("Peril", "Peril_rgb")..". If released below "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..", it pushes enemies back.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			..Dot_red.." Do not use a Primary attack while channeling a Secondary attack at "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..", or you will self-explode.",
		ru = "Вы выпускаете поток цепной биомолнии, которая медленно распространяется между врагами, нанося им низкий "..CKWord("урон", "uron_rgb_ru").." "..CKWord("электрошоком", "elektroshokom_rgb_ru").." с течением времени и высокое "..CKWord("ошеломление", "oshelomlenie_rgb_ru")..".\n" -- Сокрушение
			.."Вторичная заряженная атака наносит повышенный "..CKWord("урон", "uron_rgb_ru").." при высвобождении, а также быстрее распространяется.\n"
			.."\n"
			..Dot_nc.." Дальность: "..CNumb("16", "n_16_rgb").." метров.\n"
			..Dot_nc.." Бьёт только в зону туловища.\n"
			..Dot_nc.." При "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." запускается автоматическое подавление ~"..CNumb("8.5%", "pc_8_5_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..". Если отпустить атаку при уровне "..CKWord("опасности", "opasnosti_rgb_ru").." ниже "..CNumb("100%", "pc_100_rgb")..", врагов отбросит назад.\n"
			..CPhrs("Cant_Crit")
			..Dot_red.." Средний "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.\n"
			..Dot_red.." Не "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." чудовищ и врагов с активным пустотным щитом.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Внимание!{#reset()}\n"
			..Dot_red.." Не используйте основную атаку пока держите дополнительную при "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." или вы взорвётесь.",
	},
	--[+ BLITZ 2-1 - Charged Strike +]--	08.12.2025
	["loc_talent_psyker_chain_lightning_damage_heavy_attacks_desc"] = { -- +colors
		en = "Your Heavy Melee Attacks "..CKWord("Electrocute", "Electrocute_rgb").." enemies, damaging them over time.\n"
			.."\n"
			..Dot_nc.." Deals up to "..CNumb("64", "n_64_rgb").." base "..CKWord("Damage", "Damage_rgb").." per tick at max charge.\n"
			..Dot_nc.." The "..CKWord("Damage", "Damage_rgb").." window lasts up to "..CNumb("2", "n_2_rgb").." seconds.\n"
			..Dot_nc.." The "..CKWord("Electrocuted", "Electrocuted_rgb").." state persists for "..CNumb("2", "n_2_rgb").." seconds after the last "..CKWord("Damage", "Damage_rgb").." tick.\n"
			.."\n"
			..Dot_green.." With "..CKWord("Enfeeble", "Enfeeble_rgb").." selected, "..CKWord("Electrocution", "Electrocution_rgb").." deals "..CKWord("Damage", "Damage_rgb").." twice as long and reaches max charge faster.",
		ru = "Ваши тяжёлые атаки ближнего боя накладывают на врагов эффект "..CKWord("электрошока", "elektroshoka_rgb_ru")..", наносящий им "..CKWord("урон", "uron_rgb_ru")..".\n" -- Заряженный удар
			.."\n"
			..Dot_nc.." Наносит до "..CNumb("64", "n_64_rgb").." единиц базового "..CKWord("урона", "urona_rgb_ru").." за срабатывание при максимальном уровне заряда.\n"
			..Dot_nc.." Окно "..CKWord("урона", "urona_rgb_ru").." длится "..CNumb("2", "n_2_rgb").." секунды.\n"
			..Dot_nc.." Эффект "..CKWord("электрошока", "elektroshoka_rgb_ru").." длится "..CNumb("2", "n_2_rgb").." секунды после последнего нанесения "..CKWord("урона", "urona_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." При выбранном модификаторе "..CKWord("Ослабление", "Enfeeble_rgb_ru")..", эффект "..CKWord("электрошока", "elektroshoka_rgb_ru").." наносит "..CKWord("урон", "uron_rgb_ru").." вдвое дольше и достигает максимального заряда быстрее.",
	},
	--[+ BLITZ 2-2 - Enfeeble +]--	08.12.2025
	["loc_talent_psyker_chain_lightning_improved_target_buff_alt_description"] = { -- damage: +10%, talent_name: Smite, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." Taken from all sources for enemies under your {talent_name:%s}'s "..CKWord("Electrocution", "Electrocution_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." от всех источников, получаемому врагами, которые находятся по действием "..CKWord("электрошока", "elektroshoka_rgb_ru").." таланта {talent_name:%s}.\n" -- Ослабление
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
	},
	--[+ BLITZ 3 - Assail +]--	08.12.2025
	["loc_ability_psyker_blitz_throwing_knives_description"] = { -- +colors
		en = "Primary attack:\n"
			..Dot_nc.." Throw swift, homing projectiles that track the nearest enemy for "..CNumb("2.5", "n_2_5_rgb").." seconds.\n"
			..Dot_nc.." Deals "..CNumb("225", "n_225_rgb").." Base "..CKWord("Damage", "Damage_rgb").." to the first target and costs "..CNumb("10%", "pc_10_rgb").." "..CKWord("Peril", "Peril_rgb")..".\n"
			.."\n"
			.."Secondary attack:\n"
			..Dot_nc.." Launch a homing projectile that flies for "..CNumb("3", "n_3_rgb").." seconds, striking all enemies within a "..CNumb("50", "n_50_rgb").."-meter radius.\n"
			..Dot_nc.." Deals "..CNumb("380", "n_380_rgb").." Base "..CKWord("Damage", "Damage_rgb").." and costs "..CNumb("25%", "pc_25_rgb").." "..CKWord("Peril", "Peril_rgb")..".\n"
			.."\n"
			..Dot_green.." Can "..CKWord("Crit", "Crit_rgb")..".\n"
			..Dot_nc.." Costs "..CNumb("1", "n_1_rgb").." ammo.\n"
			..Dot_nc.." Regenerates "..CNumb("1", "n_1_rgb").." ammo every "..CNumb("3", "n_3_rgb").." seconds.\n"
			..Dot_red.." Very low "..CKWord("Damage", "Damage_rgb").." to Carapace.\n"
			..Dot_red.." Low "..CKWord("Damage", "Damage_rgb").." to Unyielding.\n"
			..Dot_red.." Cannot "..CKWord("Cleave", "Cleave_rgb").." through Carapace armor by default.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			..Dot_red.." Do not use at "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..", or you will self-explode.",
		ru = "Основная атака:\n" -- Нападение
			..Dot_nc.." Вы бросаете быстрые самонаводящиеся снаряды, которые отслеживают ближайших врагов в течение "..CNumb("2.5", "n_2_5_rgb").." секунд.\n"
			..Dot_nc.." Наносит "..CNumb("225", "n_225_rgb").." базового "..CKWord("урона", "urona_rgb_ru").." первой цели и стоит "..CNumb("10%", "pc_10_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			.."\n"
			.."Вторичная атака:\n"
			..Dot_nc.." Запускает самонаводящийся снаряд, который летит в течение "..CNumb("3", "n_3_rgb").." секунд, поражая врагов в радиусе "..CNumb("50", "n_50_rgb").." метров.\n"
			..Dot_nc.." Наносит "..CNumb("380", "n_380_rgb").." базового "..CKWord("урона", "urona_rgb_ru").." и стоит "..CNumb("25%", "pc_25_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." Наносит "..CKWord("критические удары", "krit_udary_rgb_ru")..".\n"
			..Dot_nc.." Тратит "..CNumb("1", "n_1_rgb").." заряд.\n"
			..Dot_nc.." "..CNumb("1", "n_1_rgb").." заряд восстанавливается каждые "..CNumb("3", "n_3_rgb").." секунды.\n"
			..Dot_red.." Наносит очень низкий "..CKWord("урон", "uron_rgb_ru").." по панцирной броне и низкий "..CKWord("урон", "uron_rgb_ru").." по несгибаемым врагам.\n"
			..Dot_red.." Не "..CKWord("простреливает", "prostrelivaet_rgb_ru").." врагов в панцирной броне.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Внимание!{#reset()}\n"
			..Dot_red.." Не используйте при "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." иначе вы взорвётесь.",
	},
	--[+ BLITZ 3-1 - Ethereal Shards +]--	08.12.2025
	["loc_talent_psyker_throwing_knives_pierce_description"] = { -- talent_name: Assail, +colors
		en = Dot_green.." {talent_name:%s} projectiles now pierce through additional targets.",
		ru = Dot_green.." Снаряды теперь пробивают дополнительные цели.", -- Эфирные осколки -- руоф Эфирные частицы
	},
	--[+ BLITZ 3-2 - Quick Shards +]--	08.12.2025
	["loc_talent_psyker_throwing_knives_cast_speed_description"] = { -- talent_name: Assail, recharge: 30%
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} {talent_name:%s} charge replenish speed.\n"
			.."\n"
			..Dot_nc.." Reduces projectile recharge time from "..CNumb("3", "n_3_rgb").." to "..CNumb("2.1", "n_2_1_rgb").." seconds per projectile.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} к скорости восстановления зарядов.\n" -- Быстрые осколки -- руоф Быстрые частицы
			.."\n"
			..Dot_nc.." Сокращает время восстановления снарядов с "..CNumb("3", "n_3_rgb").." до "..CNumb("2.1", "n_2_1_rgb").." секунд на снаряд.",
	},
--[+ +AURA - АУРЫ+ +]--
	--[+ AURA 0 - The Quickening +]--	08.12.2025
	["loc_talent_psyker_aura_reduced_ability_cooldown_description"] = { -- cooldown_reduction: +7.5%, +colors
		en = Dot_green.." {cooldown_reduction:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb").." Reduction for you and allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ru = Dot_green.." {cooldown_reduction:%s} к сокращению "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Ускорение
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
	},
	--[+ AURA 1 - Kinetic Presence +]--	08.12.2025
	["loc_talent_psyker_base_3_description"] = { -- damage: +7.5%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." against Elite Enemies for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." против элитных врагов для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Кинетическое присутствие
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
	},
	--[+ AURA 2 - Seer's Presence +]--	08.12.2025
	["loc_talent_psyker_cooldown_aura_improved_description"] = { -- cooldown_reduction: +10%, talent_name: The Quickening, +colors
		en = Dot_green.." {cooldown_reduction:%s} "..CKWord("Cooldown", "Cd_rgb").." Reduction on Abilities for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			..Dot_green.." An augmented version of {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ru = Dot_green.." {cooldown_reduction:%s} к сокращению "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Присутствие провидца
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
	},
	--[+ AURA 3 - Prescience +]--	08.12.2025
	["loc_ability_psyker_gunslinger_aura_description"] = { -- critical_strike_chance: +5%, +colors
		en = Dot_green.." {critical_strike_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..Dot_nc.." Applies to all attacks that can "..CKWord("Crit", "Crit_rgb")..".\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ru = Dot_green.." {critical_strike_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Предвидение
			.."\n"
			..Dot_nc.." Применяется ко всем атакам, наносящим "..CKWord("критический урон", "krit_uron_rgb_ru")..".\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
	},
--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ ABILITY 0 - Psykinetic's Wrath +]--	08.12.2025
	["loc_talent_psyker_shout_ability_description"] = { -- warpcharge_vent: 10%, cooldown: 30, s->seconds, +colors
		en = "Quells {warpcharge_vent:%s} "..CKWord("Peril", "Peril_rgb").." while releasing a cone-shaped shout that "..CKWord("Staggers", "Staggers_rgb").." enemies in front of you.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Can be used to prevent the "..CKWord("Psyker", "cls_psy_rgb").." from exploding.\n"
			..Dot_nc.." The Warp wave travels through walls and spreads up to "..CNumb("30", "n_30_rgb").." meters, allowing you to "..CKWord("Stun", "Stun_rgb").." a Pox Hound attacking an ally through obstacles.\n"
			..Dot_nc.." "..CKWord("Stuns", "Stuns_rgb").." enemies within a "..CNumb("5", "n_5_rgb").."-meter radius in front of you.",
		ru = "Вы подавляете {warpcharge_vent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." одновременно испуская конусообразный крик, который "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." врагов перед вами.\n" -- Гнев психокинетика -- руоф Психокинетический гнев
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Может использоваться для предотвращения самоподрыва.\n"
			..Dot_nc.." Враги в "..CNumb("5", "n_5_rgb").."-метровом радиусе перед вами "..CKWord("ошеломляются", "oshelomlautsa_rgb_ru")..".\n"
			..Dot_nc.." Волна варпа проходит сквозь стены и распространяется на расстояние до "..CNumb("30", "n_30_rgb").." метров, позволяя вам "..CKWord("ошеломить", "oshelomit_rgb_ru").." сквозь препятствия Гончую, атакующую союзника.",
	},
	--[+ ABILITY 1 - Venting Shriek +]--	08.12.2025
	["loc_talent_psyker_shout_vent_warp_charge_description"] = { -- warpcharge_vent: 50%, cooldown: 30, talent_name: Psykinetic's Wrath, s->seconds, +colors
		en = "Quells {warpcharge_vent:%s} "..CKWord("Peril", "Peril_rgb").." while releasing a cone-shaped shout that "..CKWord("Staggers", "Staggers_rgb").." enemies in front of you.\n"
			..Dot_green.." An augmented version of {talent_name:%s}.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Can be used to prevent the "..CKWord("Psyker", "cls_psy_rgb").." from exploding.\n"
			..Dot_nc.." The Warp wave travels through walls and spreads up to "..CNumb("30", "n_30_rgb").." meters, allowing you to "..CKWord("Stun", "Stun_rgb").." a Pox Hound attacking an ally through obstacles.\n"
			..Dot_nc.." "..CKWord("Stuns", "Stuns_rgb").." enemies within a "..CNumb("5", "n_5_rgb").."-meter radius in front of you.\n"
			..Dot_nc.." Always targets Torso hitzone.",
		ru = "Вы подавляете {warpcharge_vent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." одновременно испуская конусообразный крик, который "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." врагов перед вами.\n" -- Сбрасывающий вопль -- руоф Вырвавшийся вопль
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Может использоваться для предотвращения самоподрыва.\n"
			..Dot_nc.." Враги в "..CNumb("5", "n_5_rgb").."-метровом радиусе перед вами "..CKWord("ошеломляются", "oshelomlautsa_rgb_ru")..".\n"
			..Dot_nc.." Волна варпа проходит сквозь стены и распространяется на расстояние до "..CNumb("30", "n_30_rgb").." метров, позволяя вам "..CKWord("ошеломить", "oshelomit_rgb_ru").." сквозь препятствия Гончую, атакующую союзника.\n"
			..Dot_nc.." Всегда поражает в зону торса.",
	},
	--[+ ABILITY 1-1 - Warp Rupture +]--	08.12.2025
	["loc_talent_psyker_discharge_damage_debuff_description"] = { -- talent_name: Venting Shriek, damage_reduction: 10%, damage_taken: 10%, duration: 8, +colors
		en = "{talent_name:%s} applies a debuff to Enemies for {duration:%s} seconds:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Dealt,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} "..CKWord("Damage", "Damage_rgb").." Taken.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		ru = "{talent_name:%s} накладывает ослабление на врагов на {duration:%s} секунд:\n" -- Разрыв варпа -- руоф Варп-разрыв
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} к наносимому "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} к получаемому "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
	},
	--[+ ABILITY 1-2 - Becalming Eruption +]--	13.11.2025
	["loc_talent_psyker_shout_reduces_warp_charge_generation_description"] = { -- talent_name: Venting Shriek, warp_generation: 1%, max_stacks: 25->25%, duration: 5, s->seconds, +colors
		en = Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} "..CKWord("Peril", "Peril_rgb").." Generation for each Enemy hit by {talent_name:%s}.\n"
				..Dot_nc.." Up to "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CKWord("%", "pc_rgb").." "..CKWord("Peril", "Peril_rgb").." Generation.\n"
				..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru").." за каждого врага поражённого вашим талантом {talent_name:%s}.\n" -- Успокаивающее извержение -- руоф Затихающее извержение
				..Dot_nc.." До "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CKWord("%", "pc_rgb").." к набору "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
				..Dot_nc.." Длится {duration:%s} секунд.",
	},
-- !!! Removed " -". Fix in the Enhanced_Descriptions.lua file !!! --
	--[+ ABILITY 1-3 - Creeping Flames +]--	08.12.2025
	["loc_talent_psyker_warpfire_on_shout_desc"] = { -- talent_name: Venting Shriek, min_stacks: 1 -, warpfire_stacks: 6, Stack(s)->Stacks, +colors
		en = "{talent_name:%s} applies {min_stacks:%s} - {warpfire_stacks:%s} Stacks of "..CKWord("Soulblaze", "Soulblaze_rgb").." to targets Hit based on your current "..CKWord("Peril", "Peril_rgb")..".\n"
			.."_______________________________\n"
			..CKWord("Soulblaze", "Soulblaze_rgb")..":   "..CNumb("1", "n_1_rgb").." |    "..CNumb("2", "n_2_rgb").." |     "..CNumb("3", "n_3_rgb").." |      "..CNumb("4", "n_4_rgb").." |     "..CNumb("5", "n_5_rgb").." |     "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("Peril", "Peril_rgb").." ("..CKWord("%", "pc_rgb").."):     "..CNumb("0", "n_0_rgb").." | "..CKWord("~17", "n__17_rgb").." | "..CKWord("~33", "n__33_rgb").." | "..CKWord("~50", "n__50_rgb").." | "..CKWord("~67", "n__67_rgb").." | "..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." Lasts "..CNumb("8", "n_8_rgb").." seconds.\n"
			..Dot_nc.." Ticks every "..CNumb("0.75", "n_075_rgb").." seconds.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Very high armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Very low armor "..CKWord("Damage", "Damage_rgb").." to Carapace.",
		ru = "{talent_name:%s} накладывает от "..CNumb("1", "n_1_rgb").." до {warpfire_stacks:%s} зарядов "..CKWord("горения души", "gorenia_dushi_rgb_ru").." на поражённые цели в зависимости от текущего процента "..CKWord("опасности", "opasnosti_rgb_ru")..":\n" -- Ползучее пламя -- руоф Раздувающееся пламя
			.."_______________________________\n"
			.."Заряды:              "..CNumb("1", "n_1_rgb").."|    "..CNumb("2", "n_2_rgb").."|    "..CNumb("3", "n_3_rgb").."|    "..CNumb("4", "n_4_rgb").."|    "..CNumb("5", "n_5_rgb").."|     "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("Опасность", "Opasnost_rgb_ru").."("..CKWord("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."|"..CKWord("~17", "n__17_rgb").."|"..CKWord("~33", "n__33_rgb").."|"..CKWord("~50", "n__50_rgb").."|"..CKWord("~67", "n__67_rgb").."|"..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." Срабатывает раз в "..CNumb("0.75", "n_075_rgb").." секунды.\n"
			..Dot_nc.." Длится "..CNumb("8", "n_8_rgb").." секунд.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Большой "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.",
	},
	--[+ ABILITY 2 - Telekine Shield +]--	08.12.2025
	["loc_talent_psyker_combat_ability_shield_description"] = { -- duration: 17.5, cooldown: 40, s->seconds
		en = "Spawns a {talent_name:%s} that blocking incoming enemy ranged attacks while allowing you and your allies to fire through it.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Shield Health: 20.\n"
			..Dot_green.." Blocks:\n"
			.."   "..Dot_green.." Ranged hit scan attacks,\n"
			.."   "..Dot_green.." Projectiles (Bomber grenades),\n"
			.."   "..Dot_green.." Trapper's nets,\n"
			.."   "..Dot_green.." Flamethrower direct hits.\n"
			..Dot_red.." Does Not Block:\n"
			.."   "..Dot_red.." Ground fire patches,\n"
			.."   "..Dot_red.." Toxic gas clouds,\n"
			.."   "..Dot_red.." Poxburster explosions.\n"
			.."\n"
			..Dot_nc.." Hold the ability button to preview placement. Cancel by blocking.",
		ru = "Вы создаёте {talent_name:%s}, который блокирует вражеские дальние атаки, позволяя вам и вашим союзникам стрелять сквозь него.\n" -- Телекинетический щит
			..Dot_nc.." Длится {duration:%s} секунды.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Здоровье щита: 20.\n"
			..Dot_green.." Блокирует:\n"
			.."   "..Dot_green.." Дальнобойные выстрелы,\n"
			.."   "..Dot_green.." Снаряды (гранаты Гренадёра),\n"
			.."   "..Dot_green.." Сетки Ловушечника,\n"
			.."   "..Dot_green.." Прямые попадания огнемёта.\n"
			..Dot_red.." Не блокирует:\n"
			.."   "..Dot_red.." Наземные пятна огня,\n"
			.."   "..Dot_red.." Облака токсичного газа,\n"
			.."   "..Dot_red.." Подрыв взрывника.\n"
			.."\n"
			..Dot_nc.." Удерживание кнопки активации способности показывает место размещения. Отменяется блоком.",
	},
	--[+ ABILITY 2-1 - Bolstered Shield +]--	08.12.2025
	["loc_talent_psyker_force_field_charges_cooldown_description"] = { -- talent_name: Telekine Shield, max_charges: 2, cooldown: 35, +colors
		en = Dot_green.." {talent_name:%s} now holds up to {max_charges:%s} charges.\n"
			..Dot_green.." Cooldown decreased to {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." The second charge's "..CKWord("Cooldown", "Cd_rgb").." starts once the first one is ready.",
		ru = Dot_green.." {talent_name:%s} теперь имеет {max_charges:%s} заряда.\n" -- Усиленный щит
			..Dot_green.." Время "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." снижено на {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Время восстановления второго заряда начинается после готовности первого.",
	},
	--[+ ABILITY 2-2 - Enervating Threshold +]--	08.12.2025
	["loc_talent_psyker_force_field_stun_increased_new_description"] = { -- ability: Telekine Shield, proc_chance: 20%, special_proc_chance: 100%, +colors
		en = "{ability:%s} has a {proc_chance:%s} chance to "..CKWord("Electrocute", "Electrocute_rgb").." enemies that pass through it. Specialists and Monstrosities have a {special_proc_chance:%s} chance to get "..CKWord("Electrocuted", "Electrocuted_rgb").." but also damage the {ability:%s}.\n"
			.."\n"
			..Dot_green.." Deals "..CNumb("250", "n_250_rgb").." Base "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_green.." Can "..CKWord("Stagger", "Stagger_rgb").." all enemies except Monstrosities and enemies with active Void shield.\n"
			..Dot_nc.." The "..CKWord("Electrocution", "Electrocution_rgb").." is always applied to Specialists and Monstrosities on contact.\n"
			..Dot_red.." Very low armor "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}BUG{#reset()}\n"
			.."Specialists and Monstrosities only deal "..CNumb("1", "n_1_rgb").." "..CKWord("Damage", "Damage_rgb").." to the shield upon contact, instead of the intended "..CNumb("8", "n_8_rgb")..".",
		ru = "Враги, проходящие сквозь {ability:%s}, с {proc_chance:%s} шансом могут быть поражены "..CKWord("электрошоком", "elektroshokom_rgb_ru")..".\n" -- Порог ослабления
			.."Щит всегда поражает "..CKWord("электрошоком", "elektroshokom_rgb_ru").." специалистов, но при этом повреждается при контакте с ними.\n"
			.."\n"
			..Dot_green.." Наносит "..CNumb("250", "n_250_rgb").." базового "..CKWord("урона", "urona_rgb_ru")..".\n"
			..Dot_green.." Может "..CKWord("ошеломить", "oshelomit_rgb_ru").." всех врагов исключая чудовищ и врагов с активным пустотным щитом.\n"
			..Dot_nc.." "..CKWord("Ошеломление", "Oshelomlenie_rgb_ru").." всегда применяется к специалистам и чудовищам при контакте.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по броне.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}СЛОМАНО{#reset()}\n"
			.."Специалисты и чудовища наносят щиту при контакте только "..CNumb("1", "n_1_rgb").." "..CKWord("урона", "urona_rgb_ru").." вместо задуманных "..CNumb("8", "n_8_rgb")..".",
	},
	--[+ ABILITY 2-3 - Telekine Dome +]--	08.12.2025
	["loc_talent_psyker_force_field_dome_new_desc"] = { -- talent_name: Telekine Shield, duration: 25, s->seconds
		en = "{talent_name:%s} now forms a spherical shield.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Sphere radius: "..CNumb("6", "n_6_rgb").." meters.\n"
			..Dot_nc.." Protects from enemy attacks from all angles.",
		ru = "{talent_name:%s} теперь формирует сферу.\n" -- Телекинетический купол
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Радиус сферы: "..CNumb("6", "n_6_rgb").." метров.\n"
			..Dot_nc.." Защищает от атак со всех сторон.",
	},
	--[+ ABILITY 2-4 - Sanctuary +]--	08.12.2025
	["loc_talent_psyker_force_field_grants_toughness_desc"] = { -- talent_name: Telekine Shield, toughness: 10%, toughness_damage_reduction: +50%, duration: 5, s->seconds, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." per second replenishes for Allies inside your {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for {duration:%s} seconds for allies inside your {talent_name:%s} when it dissipates.\n"
			.."\n"
			..Dot_green.." This effects Stack if multiple spheres overlap.",
		ru = Dot_green.." {toughness:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду для союзников внутри купола вашего щита.\n" -- Убежище -- руоф Святилище
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." на {duration:%s} секунд для союзников, находящихся внутри купола вашего щита, после его рассеивания.\n"
			.."\n"
			..Dot_green.." Эффект суммируется, если перекрываются несколько сфер.",
	},
	--[+ ABILITY 3 - Scrier's Gaze +]--	08.12.2025
	["loc_talent_psyker_combat_ability_overcharge_stance_improved_description"] = { -- duration: 10, base_damage: +10%, weakspot_damage: +10%, crit_chance: +20%, max_peril: 100%, cooldown: 25, damage_per_stack: +1%, vent: 50%, tdr: +20%, toughness: 2.5%, max_damage: +30%, s->seconds, +colors
		en = "You enter "..CKWord("Scrier Gaze", "Scrier_gaze_rgb")..", Quell {vent:%s} "..CKWord("Peril", "Peril_rgb").." and gain:\n"
			..Dot_green.." {base_damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Chance", "Crit_chance_rgb")..",\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..",\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." per second,\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..",\n"
			..Dot_green.." Suppression Immunity.\n"
			.."\n"
			.."For every second in "..CKWord("Scrier Gaze", "Scrier_gaze_rgb").." you gain Stacks:\n"
			..Dot_green.." {damage_per_stack:%s} "..CKWord("Damage", "Damage_rgb")..", up to {max_damage:%s}. This effect lingers for {duration:%s} seconds after leaving "..CKWord("Scrier Gaze", "Scrier_gaze_rgb")..".\n"
			.."\n"
			.."While in "..CKWord("Scrier Gaze", "Scrier_gaze_rgb").." you build up "..CKWord("Peril", "Peril_rgb")..". Build-up is temporarily slowed down by enemy Kills.\n"
			.."At {max_peril:%s} "..CKWord("Peril", "Peril_rgb").." Ability ends.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.",
		ru = "Активировав "..CKWord("Взор провидца", "Scriers_gaze_rgb_ru")..", вы сбрасываете {vent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." и получаете:\n" -- Взор провидца -- руоф Взор Скрира
			..Dot_green.." {base_damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..",\n"
			..Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..",\n"
			..Dot_green.." {toughness:%s} к "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду,\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru")..",\n"
			..Dot_green.." иммунитет к подавлению.\n"
			.."\n"
			.."За каждую секунду пока действует "..CKWord("Взор провидца", "Scriers_gaze_rgb_ru").." вы получаете заряды:\n"
			..Dot_green.." {damage_per_stack:%s} к "..CKWord("урону", "uronu_rgb_ru")..", вплоть до максимальных {max_damage:%s}. Этот эффект продлевается на {duration:%s} секунд после того как "..CKWord("Взор провидца", "Scriers_gaze_rgb_ru").." заканчивает своё действие.\n"
			.."\n"
			.."Пока действует "..CKWord("Взор провидца", "Scriers_gaze_rgb_ru").." вы набираете "..CKWord("опасность", "opasnost_rgb_ru")..". Набор "..CKWord("опасности", "opasnosti_rgb_ru").." временно замедляется при убийстве врагов.\n"
			.."При {max_peril:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." способность выключается.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.",
	},
	--[+ ABILITY 3-1 - Precognition +]--	08.12.2025
	["loc_ability_psyker_overcharge_weakspot_description"] = { -- second: 1, talent_name: Scrier's Gaze, finesse_damage_per_stack: +1%, max_finesse_damage: +30%, duration: 10, s->seconds, +colors
		en = CKWord("Weakspot", "Weakspot_rgb").." kills generate {second:%s} additional Stack while {talent_name:%s} overcharging.\n"
			..Dot_green.." Can proc multiple times per attack when "..CKWord("Cleaving", "Cleaving_rgb")..".\n"
			.."\n"
			.."For each second spent in {talent_name:%s}, you now also gain:\n"
			..Dot_green.." {finesse_damage_per_stack:%s} "..CKWord("Finesse Damage", "Finesse_dmg_rgb")..", up to {max_finesse_damage:%s} Max, which lingers for {duration:%s} seconds after leaving {talent_name:%s}.\n"
			.."\n"
			..CNote("Fns_note"),
		ru = "Пока действует {talent_name:%s}, убийства в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." добавляют {second:%s} заряд.\n" -- Предвидение -- руоф Познание
			..Dot_green.." Может срабатывать несколько раз за атаку, если "..CKWord("рассекает", "rassekaet_rgb_ru").." несколько врагов.\n"
			.."\n"
			.."За каждую секунду, проведённую по действием способности, вы теперь также получаете:\n"
			..Dot_green.." {finesse_damage_per_stack:%s} к "..CKWord("урону от ловкости", "lovkosti_uron_rgb_ru")..", до максимум {max_finesse_damage:%s}. Эффект продлевается на {duration:%s} секунд после действия способности {talent_name:%s}.",
	},
	--[+ ABILITY 3-2 - Warp Speed +]--	08.12.2025
	["loc_ability_psyker_overcharge_movement_speed_description"] = { -- talent_name: Scrier's Gaze, movement_speed: +20%
		en = "While {talent_name:%s} overcharging:\n"
			..Dot_green.." {movement_speed:%s} Movement Speed.\n"
			.."\n"
			..Dot_red.." Doesn't linger after overcharging phase.",
		ru = "Пока действует {talent_name:%s} вы получаете:\n" -- Варп-скорость
			..Dot_green.." {movement_speed:%s} к скорости движения.\n"
			.."\n"
			..Dot_red.." Не продлевается после окончания действия способности.",
	},
	--[+ ABILITY 3-3 - Reality Anchor +]--	08.12.2025
	["loc_ability_psyker_overcharge_reduced_warp_charge_vent_speed_description"] = { -- talent_name: Scrier's Gaze, warp_charge: -20%, venting: , +colors
		en = "While {talent_name:%s} overcharging:\n"
			..Dot_green.." {warp_charge:%s} "..CKWord("Peril", "Peril_rgb").." Generated,\n"
			..Dot_green.." {venting:%s} Active Quelling.\n"
			.."\n"
			..Dot_red.." Doesn't linger after overcharging phase.",
		ru = "Пока действует {talent_name:%s} вы получаете:\n" -- Якорь реальности
			..Dot_green.." {warp_charge:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..",\n"
			..Dot_green.." {venting:%s} к подавлению  "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			.."\n"
			..Dot_red.." Не продлевается после окончания действия способности.",
	},
	--[+ ABILITY 3-4 - Warp Unbound +]--	08.12.2025
	["loc_talent_psyker_overcharge_infinite_casting_desc"] = { -- talent_name: Scrier's Gaze
		en = "{talent_name:%s} now also prevents overloading from "..CKWord("Perils of the Warp", "PerilsozWarp_rgb")..", during its lingering effect.\n"
			.."\n"
			..Dot_nc.." After overcharging has ended, allows "..CKWord("Psyker", "cls_psy_rgb").." to execute "..CKWord("Peril", "Peril_rgb").."-generating actions while at "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb").." for "..CNumb("10", "n_10_rgb").." seconds without triggering the self-explosion.\n"
			.."\n"
			..Dot_nc.." When "..CNumb("10", "n_10_rgb").." seconds duration ends, {talent_name:%s} base grace period still applies, providing another "..CNumb("1.5", "n_1_5_rgb").." seconds of the same effect.",
		ru = "{talent_name:%s} также предотвращает перегрев от "..CKWord("Опасностей варпа", "Opasnostei_warpa_rgb_ru").." в течение "..CNumb("10", "n_10_rgb").." секунд после окончания действия способности.\n" -- Высвобождение варпа -- руоф Искажение варпа
			.."\n"
			..Dot_nc.." В течение этого времени вы можете выполнять действия, генерирующие "..CKWord("опасность", "opasnost_rgb_ru")..", не вызывая самоподрыва даже при "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			..Dot_nc.." Этот модификатор имеет скрытый эффект: по истечении "..CNumb("10", "n_10_rgb").." секунд вы получите ещё "..CNumb("1.5", "n_1_5_rgb").." секунды этого же эффекта.",
	},
--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ KEYSTONE 1 - Warp Siphon +]--	08.12.2025
	["loc_talent_psyker_souls_new_desc"] = { -- duration: 25, stack: 4, damage: +4, cooldown_reduction: 7.5%, time(s)->times, +colors
		en = "Killing an Elite or Specialist Enemy gains you a Warp Charge for {duration:%s} seconds.\n"
			..Dot_green.." {damage:%s} Base "..CKWord("Damage", "Damage_rgb").." per Stack.\n"
			..Dot_nc.." Stack {stack:%s} times.\n"
			.."\n"
			.."Your next "..CKWord("Combat Ability", "Cmbt_abil_rgb").." spends all available Warp Charges to reduce the cooldown of that "..CKWord("Combat Ability", "Cmbt_abil_rgb").." by {cooldown_reduction:%s} per Warp Charge.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "Убийство элитного врага или специалиста даёт вам варп-заряд на {duration:%s} секунд.\n" -- Переливание варпа -- руоф Варп-сифон
			..Dot_green.." {damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru").." за заряд.\n"
			..Dot_nc.." Суммируется {stack:%s} раза.\n"
			.."\n"
			.."Следующая применённая "..CKWord("боевая способность", "boeva_sposobnost_rgb_ru").." потратит все доступные варп-заряды и уменьшит время "..CKWord("восстановления", "vosstanovlenia_rgb_ru").." на {cooldown_reduction:%s} за каждый варп-заряд.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ KEYSTONE 1-1 - Inner Tranquility +]--	08.12.2025
	["loc_talent_psyker_reduced_warp_charge_cost_venting_speed_desc"] = { -- warp_charge_amount: -6%, +colors
		en = Dot_green.." {warp_charge_amount:%s} "..CKWord("Peril", "Peril_rgb").." Generation Reduction for each Warp Charge.",
		ru = Dot_green.." {warp_charge_amount:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru").." за каждый варп-заряд.", -- Внутреннее спокойствие
	},
	--[+ KEYSTONE 1-2 - Essence Harvest +]--	08.12.2025
	["loc_talent_psyker_toughness_regen_on_soul_desc"] = { -- toughness: 30%, time: 5, s->seconds, +colors
		en = Dot_green.." "..CNumb("6%", "pc_6_rgb").." "..CKWord("Toughness", "Toughness_rgb").." is replenished per second for {time:%s} seconds after gaining Warp Charge, up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."\n"
			..Dot_green.." Can be refreshed during active duration.\n"
			..Dot_nc.." Doesn't increase the amount of "..CKWord("Toughness", "Toughness_rgb").." replenished.",
		ru = Dot_green.." "..CNumb("6%", "pc_6_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду восстанавливается в течение {time:%s} секунд после получения варп-заряда, вплоть до максимальных {toughness:%s}.\n" -- Сбор сущностей -- руоф Сбор сущности
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_nc.." Не увеличивает количество восстанавливаемой "..CKWord("стойкости", "stoikosti_rgb_ru")..".",
	},
	--[+ KEYSTONE 1-3 - Warp Battery +]--	08.12.2025
	["loc_talent_psyker_increased_souls_desc"] = { -- soul_amount: 6
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." Maximum Warp Charges. Increased from "..CNumb("4", "n_4_rgb").." to {soul_amount:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." к максимуму варп-зарядов. Увеличивается с "..CNumb("4", "n_4_rgb").." до {soul_amount:%s} варп-зарядов.", -- Варп-аккумулятор
	},
	--[+ KEYSTONE 1-4 - In Fire Reborn +]--	08.12.2025
	["loc_talent_psyker_warpfire_generates_souls_desc"] = { -- chance: 10%, +colors
		en = Dot_green.." {chance:%s} chance to gain a Warp Charge when you or an Ally kill an enemy who is currently affected by "..CKWord("Soulblaze", "Soulblaze_rgb")..".\n"
			.."\n"
			..Dot_nc.." This effect has no range limit and benefits all "..CKWord("Psykers", "cls_psys_rgb").." who have this Talent equipped.",
		ru = Dot_green.." {chance:%s} шанс получить варп-заряд, когда вы или ваш союзник убиваете врага, на которого в данный момент действует эффект "..CKWord("горения души", "gorenia_dushi_rgb_ru")..".\n" -- Возрождение в огне -- руоф В огне восстану
			.."\n"
			..Dot_green.." Эффект не имеет ограничения по дальности.\n"
			..Dot_green.." Этот эффект влияет на всех "..CKWord("псайкеров", "cls_psyov_rgb").." у которых выбран этот талант.",
	},
	--[+ KEYSTONE 1-5 - Psychic Vampire +]--	08.12.2025
	["loc_talent_psyker_souls_on_kill_coop_desc"] = { -- soul_chance: 4%
		en = Dot_green.." {soul_chance:%s} chance to gain a Warp Charge whenever you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." kills an enemy.\n"
			.."\n"
			..Dot_nc.." This Talent's effect is shared with all allied "..CKWord("Psykers", "cls_psys_rgb").." in "..CKWord("Coherency", "Coherency_rgb").." who also have it.",
		ru = Dot_green.." {soul_chance:%s} шанс получить варп-заряд, когда вы или ваш союзник в "..CKWord("сплочённости", "splochennosti_rgb_ru").." убиваете врага.\n" -- Психический вампир
			.."\n"
			..Dot_green.." Этот эффект влияет на всех "..CKWord("псайкеров", "cls_psyov_rgb").." у которых выбран этот талант.",
	},
	--[+ KEYSTONE 2 - Empowered Psionics +]--	08.12.2025
	["loc_talent_psyker_empowered_ability_description"] = { -- chance: 7.5%, blitz_one: Brain Rupture, smite_cost: 100%, smite_attack_speed: 50%, smite_damage: +50%, blitz_two: Smite, chain_lightning_damage: +200%, chain_lightning_jump_time_multiplier: 50%, blitz_three: Assail, throwing_knives_cost: 100%, throwing_knives_old_damage: 100, throwing_knives_new_damage: 150, +colors
		en = "Kills have a {chance:%s} chance to Empower your next Blitz.\n"
			.."\n"
			.."Empowered {blitz_one:%s}:\n"
			..Dot_green.." {smite_damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {smite_cost:%s} "..CKWord("Peril", "Peril_rgb").." Cost Reduction,\n"
			..Dot_green.." {smite_attack_speed:%s} Cast time Reduction.\n"
			.."\n"
			.."Empowered {blitz_two:%s}:\n"
			..Dot_green.." {chain_lightning_damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} faster spread between Enemies.\n"
			.."\n"
			.."Empowered {blitz_three:%s}:\n"
			..Dot_green.." {throwing_knives_cost:%s} "..CKWord("Peril", "Peril_rgb").." Cost Reduction,\n"
			..Dot_green.." "..CKWord("Damage", "Damage_rgb").." increase from {throwing_knives_old_damage:%s} to {throwing_knives_new_damage:%s}.\n"
			..Dot_green.." Does not consume any charges.\n"
			..Dot_green.." Allows casting at "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..".",
		ru = "Убийства имеют {chance:%s} шанс усилить ваш следующий блиц.\n" -- Усиленные псионики
			.."\n"
			.."Усиленный {blitz_one:%s}:\n"
			..Dot_green.." {smite_damage:%s} к "..CKWord("урон", "uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{smite_cost:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{smite_attack_speed:%s} к времени заряжания.\n"
			.."\n"
			.."Усиленное {blitz_two:%s}:\n"
			..Dot_green.." {chain_lightning_damage:%s} к "..CKWord("урон", "uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{chain_lightning_jump_time_multiplier:%s} к скорости распространения между врагами.\n"
			.."\n"
			.."Усиленное {blitz_three:%s}:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{throwing_knives_cost:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..",\n"
			..Dot_green.." С {throwing_knives_old_damage:%s} до {throwing_knives_new_damage:%s} увеличивается "..CKWord("урон", "uron_rgb_ru")..".\n"
			..Dot_green.." Не тратит снаряды.\n"
			..Dot_green.." Можно использовать даже при "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".",
	},
	--[+ KEYSTONE 2-1 - Bio-Lodestone +]--	08.12.2025
	["loc_talent_psyker_increase_empower_chain_lighting_chance_description"] = { -- talent_name: Empowered Psionics, proc_chance_before: 7.5%, proc_chance_after: 12.5%
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." chance to gain {talent_name:%s} on Kill. Increased from {proc_chance_before:%s} to {proc_chance_after:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." к шансу получить заряд таланта {talent_name:%s} при убийстве. Увеличивается с {proc_chance_before:%s} до {proc_chance_after:%s}.", -- Биопритяжение
	},
	--[+ KEYSTONE 2-2 - Psychic Leeching +]--	08.12.2025
	["loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies_description"] = { -- talent_name: Empowered Psionics, toughness: 15%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes for you and Allies in "..CKWord("Coherency", "Coherency_rgb").." on using your Blitz while {talent_name:%s} is active.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восполняется для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru").." при использовании вашего блица, пока активны {talent_name:%s}.", -- Психическое высасывание -- руоф Психическая пиявка
	},
	--[+ KEYSTONE 2-3 - Overpowering Souls +]--	08.12.2025
	["loc_talent_psyker_empowered_ability_on_elite_kills_description"] = { -- talent_name: Empowered Psionics
		en = Dot_green.." Guaranteed chance to gain {talent_name:%s} on Elite Kills.",
		ru = Dot_green.." Вы гарантированно получаете заряд таланта {talent_name:%s} при убийстве элитного врага.", -- Могучие души
	},
	--[+ KEYSTONE 2-4 - Charged Up +]--	08.12.2025
	["loc_talent_psyker_increased_empowered_chain_lightning_stacks_description"] = { -- max_stacks: 3, talent_name: Empowered Psionics
		en = Dot_green.." You can now hold up to {max_stacks:%s} Stacks of {talent_name:%s}.",
		ru = Dot_green.." Вы теперь можете набирать до {max_stacks:%s} зарядов таланта {talent_name:%s}.", -- Заряженный -- руоф Зарядка
	},
	--[+ KEYSTONE 3 - Disrupt Destiny +]--	08.12.2025
	["loc_talent_psyker_marked_enemies_passive_updated_desc"] = { -- radius: 40, toughness: 10%, move_speed: +20%, move_speed_duration: 2.5, bonus_duration 4, base_damage: +1%, crit_damage: +2%, weakspot_damage: +2.5%, bonus_stacks: 15 -- m->meters, s->seconds, +colors
		en = "Every second, Enemies within {radius:%s} meters have a chance of being "..CKWord("Marked", "Psy_Mark_rgb")..".\n"
			.."\n"
			.."On Killing a "..CKWord("Marked", "Psy_Mark_rgb").." Enemy:\n"
			..Dot_green.." "..CNumb("10", "n_10_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restored per second, up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {move_speed_duration:%s} seconds,\n"
			..Dot_green.." {move_speed:%s} Movement Speed is granted for {move_speed_duration:%s} seconds,\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." Stack of "..CKWord("Precision", "Precision_rgb").." is added for {bonus_duration} seconds.\n"
			.."\n"
			.."Each "..CKWord("Precision", "Precision_rgb").." Stack grants:\n"
			..Dot_green.." {base_damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {crit_damage:%s} "..CKWord("Critical Damage", "Crit_dmg_r_rgb").." and\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..".\n"
			.."\n"
			..CKWord("Precision", "Precision_rgb").." Bonus Stacks {bonus_stacks:%s} times and when the duration ends, one Stack is removed and the duration is refreshed.\n"
			.."\n"
			..Dot_green.." Dealing "..CKWord("Damage", "Damage_rgb").." to "..CKWord("Marked", "Psy_Mark_rgb").." enemies refreshes the Talent's duration.\n"
			..Dot_nc.." Valid targets are: Bruisers, Ritualist, Stalkers, Scab Shooter, Ragers, Gunners, Shotgunners, Plasma Gunner, and Mauler.",
		ru = "Каждую секунду враги в радиусе {radius:%s} метров могут быть "..CKWord("отмечены", "Psy_Mark_rgb_ru")..".\n" -- Прерывание судьбы -- руоф Разрушенная судьба
			.."\n"
			.."При убийстве "..CKWord("отмеченного", "Psy_Mark_ogo_rgb_ru").." врага вы получаете:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." за {move_speed_duration:%s} секунды,\n"
			..Dot_green.." {move_speed:%s} к скорости передвижения на {move_speed_duration:%s} секунды и\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." заряд "..CKWord("меткости", "Precision_rgb_ru").." на {bonus_duration} секунд.\n"
			.."\n"
			.."Каждый заряд "..CKWord("меткости", "Precision_rgb_ru").." даёт:\n"
			..Dot_green.." {base_damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {crit_damage:%s} к "..CKWord("критическому урону", "krit_uronu_rgb_ru").." и\n"
			..Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..".\n"
			.."\n"
			.."Заряды "..CKWord("меткости", "Precision_rgb_ru").." накапливаются до {bonus_stacks:%s} раз. Раз в {bonus_duration} секунд снимается "..CNumb("1", "n_1_rgb").." заряд, а длительность оставшихся зарядов обновляется.\n"
			.."\n"
			..Dot_green.." Нанесение "..CKWord("урона", "urona_rgb_ru").." "..CKWord("отмеченным", "Psy_Mark_ym_rgb_ru").." врагам обновляет длительность зарядов.\n"
			..Dot_nc.." Допустимые цели: Громила, Ритуалист, Охотник, Скаб-стрелок, Берсерк, Пулемётчик, Скаб с дробовиком, Плазмомётчик и Палач.",
	},
	--[+ KEYSTONE 3-1 - Perfectionism +]--	08.12.2025
	["loc_talent_psyker_mark_increased_max_stacks_description"] = { -- stacks_previous: 15, stacks_after: 25, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." to Maximum "..CKWord("Precision", "Precision_rgb").." Bonus Stacks. Increased from {stacks_previous:%s} to {stacks_after:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." к максимуму зарядов "..CKWord("меткости", "Precision_rgb_ru")..". Увеличивается с {stacks_previous:%s} до {stacks_after:%s}.", -- Перфекционизм
	},
	--[+ KEYSTONE 3-2 - Purloin Providence +]--	08.12.2025
	["loc_talent_psyker_mark_kills_can_vent_description"] = { -- talent_name: Disrupt Destiny, chance: 20%, warp_charge_percentage: 15%, +colors
		en = Dot_green.." {chance:%s} chance to instantly Quell {warp_charge_percentage:%s} of your "..CKWord("Peril", "Peril_rgb").." on killing enemies "..CKWord("Marked", "Psy_Mark_rgb").." {talent_name:%s}.",
		ru = Dot_green.." {chance:%s} шанс, что вы моментально подавите {warp_charge_percentage:%s} вашей "..CKWord("опасности", "opasnosti_rgb_ru").." при убийстве врага, "..CKWord("отмеченного", "Psy_Mark_ogo_rgb_ru").." талантом {talent_name:%s}.", -- Похищение провидения -- руоф Похищенное провидение
	},
	--[+ KEYSTONE 3-3 - Lingering Influence +]--	08.12.2025
	["loc_talent_psyker_mark_increased_duration_description"] = { -- talent_name: Disrupt Destiny, duration_previous: 15, duration_after: 10, s->seconds
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." seconds to the duration of "..CKWord("Precision", "Precision_rgb").." Stacks. Increased from {duration_previous:%s} to {duration_after:%s} seconds.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." секунд к длительности зарядов "..CKWord("меткости", "Precision_rgb_ru")..". Увеличивается с {duration_previous:%s} до {duration_after:%s} секунд.", -- Длительное влияние -- руоф Длящееся влияние
	},
	--[+ KEYSTONE 3-4 - Cruel Fortune +]--	08.12.2025
	["loc_talent_psyker_mark_weakspot_stacks_description"] = { -- stacks: 2 talent_name: Disrupt Destiny, +colors
		en = Dot_green.." "..CKWord("Weakspot", "Weakspot_rgb").." Kills grant {stacks:%s} additional Stacks of {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Procs on Melee, Ranged, "..CKWord("Assail", "Assail_rgb").." or "..CKWord("Brain Rupture", "Brain_rupture_rgb").." attacks.",
		ru = Dot_green.." Убийства в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." дают {stacks:%s} дополнительных заряда таланта {talent_name:%s}.\n" -- Жестокая судьба
			.."\n"
			..Dot_nc.." Срабатывает от атак ближнего и дальнего боя, от блица "..CKWord("Нападение", "Assail_rgb_ru").." и "..CKWord("Разрыв мозга", "Brain_rupture_rgb_ru")..".",
	},
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Soulstealer +]--	08.12.2025
	["loc_talent_psyker_toughness_on_warp_kill_desc"] = { -- toughness: 7.5%., +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes on Warp Attack Kill.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при убийстве врага варп-атакой.", -- Похититель душ -- руоф Похититель души
	},
	--[+ Passive 2 - Mettle +]--	08.12.2025
	["loc_talent_psyker_crits_regen_toughness_speed_description"] = { -- toughness: 10%, movement_speed: +5%, seconds: 4, stacks: 3, s->seconds, +colors
		en = Dot_green.." "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restored per second on "..CKWord("Critical Hits", "Crit_hits_rgb")..", up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {seconds:%s} seconds.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} Movement Speed for {seconds:%s} seconds on "..CKWord("Critical Hits", "Crit_hits_rgb")..".\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			..Dot_green.." Can generate multiple Stacks per "..CKWord("Critical Attack", "Crit_Attk_rgb").." when "..CKWord("Cleaving", "Cleaving_rgb")..".\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается в секунду при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..", вплоть до {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." за {seconds:%s} секунды.\n" -- Ретивость
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} к скорости движения на {seconds:%s} секунды при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..".\n"
			..Dot_nc.." Суммируется {stacks:%s} раза.\n"
			..Dot_green.." Можно получить несколько зарядов за "..CKWord("критический удар", "krit_udar_rgb_ru").." при пробивании нескольких врагов.\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 3 - Quietude +]--	08.12.2025
	["loc_talent_psyker_toughness_from_vent_and_gen_desc"] = { -- toughness: 5%, warp_charge: 10%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes for each {warp_charge:%s} of "..CKWord("Peril", "Peril_rgb").." Quelled or Generated.",
		ru = "{toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается за каждые {warp_charge:%s} подавленной и набранной "..CKWord("опасности", "opasnosti_rgb_ru")..".", -- Спокойствие -- руоф Тишина
	},
	--[+ Passive 4 - Warp Expenditure +]--	08.12.2025
	["loc_talent_psyker_toughness_on_melee_description"] = { -- toughness: 15%, duration: 3, instant_toughness: 2.5%, +colors
		en = Dot_green.." "..CNumb("5", "pc_5_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restored per second on Melee "..CKWord("Weakspot", "Weakspot_rgb").." Kills, up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {duration:%s} seconds.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." restores instantly on successful Melee Attacks.\n"
			..Dot_red.." Procs once per Attack regardless of how many enemies have been hit.",
		ru = Dot_green.." "..CNumb("5", "pc_5_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается в секунду при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." в ближнем бою, вплоть до {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." за {duration:%s} секунды.\n" -- Затраты варпа -- руоф Варп-затраты
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается моментально при успешной атаке в ближнем бою.\n"
			..Dot_red.." Срабатывает один раз за атаку, независимо от количества поражённых врагов.",
	},
	--[+ Passive 5 - Perilous Combustion +]--	08.12.2025
	["loc_talent_psyker_elite_and_special_kills_add_warpfire_desc"] = { -- stacks: 3, stack(s)->Stacks, +colors
		en = "Killing an Elite or a Specialist applies {stacks:%s} Stacks of "..CKWord("Soulblaze", "Soulblaze_rgb").." to all enemies within a "..CNumb("4", "n_4_rgb").."-meter radius. Up to "..CNumb("31", "n_31_rgb").." Stacks on a target.\n"
			.."\n"
			..Dot_nc.." Lasts "..CNumb("8", "n_8_rgb").." seconds.\n"
			..Dot_nc.." Ticks every "..CNumb("0.75", "n_075_rgb").." seconds.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Does proc on Elites or Specials killed by "..CKWord("Soulblaze", "Soulblaze_rgb")..", "..CKWord("Burn", "Burn_rgb").." or "..CKWord("Bleed", "Bleed_rgb").." ticks.\n"
			..Dot_green.." Very high armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Very low armor "..CKWord("Damage", "Damage_rgb").." to Carapace.",
		ru = "Убийство элитного врага или специалиста накладывает {stacks:%s} заряда "..CKWord("горения души", "gorenia_dushi_rgb_ru").." на всех врагов в радиусе "..CNumb("4", "n_4_rgb").." метров от убитого. До "..CNumb("31", "n_31_rgb").." заряда на цель.\n" -- Опасное возгорание -- руоф Пагубное воспламенение
			.."\n"
			..Dot_nc.." Длится "..CNumb("8", "n_8_rgb").." секунд.\n"
			..Dot_nc.." Срабатывает каждые "..CNumb("0.75", "n_075_rgb").." секунды.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Может сработать при убийстве элитного врага или специалиста с помощью "..CKWord("горения души", "gorenia_dushi_rgb_ru")..", "..CKWord("горения", "gorenia_rgb_ru").." или "..CKWord("кровотечения", "krovotechenia_rgb_ru")..".\n"
			..Dot_green.." Большой "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.",
	},
	--[+ Passive 6 - Battle Meditation +]--	08.12.2025
	["loc_talent_psyker_quell_on_kill_and_reduction_desc"] = { -- warp_charge_reduction: 10%, chance: 10%, warp_charge_percent: 10%, +colors
		en = Dot_green.." {warp_charge_reduction:%s} "..CKWord("Peril", "Peril_rgb").." Generation.\n"
			.."\n"
			..Dot_green.." {chance:%s} chance to Quell {warp_charge_percent:%s} "..CKWord("Peril", "Peril_rgb").." on Kill.",
		ru = Dot_green.." {warp_charge_reduction:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Боевая медитация
			.."\n"
			..Dot_green.." {chance:%s} шанс подавить {warp_charge_percent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." при убийстве.",
	},
	--[+ Passive 7 - Perfect Timing +]--	08.12.2025
	["loc_talent_psyker_damage_on_crit_stacking_desc"] = { -- damage: +3%, duration: 10, stacks: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds on "..CKWord("Critical Attack", "Crit_Attk_rgb")..".\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Generates "..CNumb("1", "n_1_rgb").." stack per "..CKWord("Critical Attack", "Crit_Attk_rgb").." regardless of how many enemies have been hit.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..".\n" -- Идеальный момент -- руоф Безупречное чувство времени
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Даёт "..CNumb("1", "n_1_rgb").." заряд за "..CKWord("критический удар", "krit_udar_rgb_ru")..", независимо от количества поражённых целей.",
	},
	--[+ Passive 8 - Channeled Force +]--	08.12.2025
	["loc_talent_psyker_force_staff_both_bonus_desc"] = { -- damage: +20%, time: 5, secondary_damage: +10%, secondary_time: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." to Force Staff's Primary Attacks after Fully Charged Force Staff Secondary Attacks.\n"
			..Dot_nc.." Lasts {time:%s} seconds.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} "..CKWord("Damage", "Damage_rgb").." to Force Staff's Secondary Attacks after Force Staff Primary Attack.\n"
			..Dot_nc.." Lasts {secondary_time:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." For Inferno Staff, both of this Talent's buffs only increase the "..CKWord("Damage", "Damage_rgb").." of the flame direct hit, "..CKWord("Soulblaze", "Soulblaze_rgb").." damage is unaffected.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." для основной атаки психосилового посоха после полностью заряженной вторичной атаки.\n" -- Направленная сила
			..Dot_nc.." Длится {time:%s} секунд.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." для вторичной атаки психосилового посоха после основной атаки.\n"
			..Dot_nc.." Длится {secondary_time:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Для посоха Инферно, оба усиления увеличивают только "..CKWord("урон", "uron_rgb_ru").." от прямых попаданий огнём, урон от "..CKWord("горения души", "gorenia_dushi_rgb_ru").." не затрагивается.",
	},
	--[+ Passive 9 - Mind in Motion +]--	08.12.2025
	["loc_talent_psyker_no_movement_penalty_quell_reload_desc"] = { -- +colors
		en = "Your Movement Speed is not reduced while Quelling "..CKWord("Peril", "Peril_rgb").." or Reloading.\n"
			.."\n"
			..Dot_red.." Does not interact with movement speed buffs.",
		ru = "Ваша скорость передвижения не снижается во время подавления "..CKWord("опасности", "opasnosti_rgb_ru").." или перезарядки оружия.\n" -- Разум в движении -- руоф Движущийся разум
			.."\n"
			..Dot_red.." Не взаимодействует с усилениями скорости передвижения.",
	},
	--[+ Passive 10 - Souldrinker +]--	08.12.2025
	["loc_talent_psyker_killing_enemy_with_warpfire_boosts_duration_desc"] = { -- toughness: 15%, crit_chance: 5%, duration: 5, s->seconds, +colors
		en = "Killing an enemy with "..CKWord("Soulblaze", "Soulblaze_rgb").." grants the following for {duration:%s} seconds:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb")..",\n"
			..Dot_green.." "..CNumb("3%", "pc_3_rgb").." "..CKWord("Toughness", "Toughness_rgb").." per second, up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." total.\n"
			.."\n"
			..Dot_green.." Can be refreshed during active duration.\n"
			..Dot_green.." This Talent's effects have no range limit and can be procced at any distance to the dying enemy.",
		ru = "Убийство врага с помощью "..CKWord("горения души", "gorenia_dushi_rgb_ru").." даёт на {duration:%s} секунд:\n" -- Поглотитель душ -- руоф Поглощение душ
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("3%", "pc_3_rgb").." восстановления "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду, вплоть до {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_green.." Эффект этого таланта не имеет ограничений по дальности и может применяться на любом расстоянии от умирающего врага.",
	},
	--[+ Passive 11 - Malefic Momentum +]--	08.12.2025
	["loc_talent_psyker_kills_stack_other_weapon_damage_both_description"] = { -- warp_damage/non_warp_damage: +4%, duration: 8, stacks: 5, s->seconds, +colors
		en = Dot_green.." {warp_damage:%s} "..CKWord("Damage", "Damage_rgb").." to Warp Attacks for {duration:%s} seconds after a non-Warp based Kill.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} "..CKWord("Damage", "Damage_rgb").." to non-Warp Attacks for {duration:%s} seconds after a Warp based Kill.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." {warp_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." варп-атак на {duration:%s} секунд после убийства не варп-атакой.\n" -- Пагубный импульс -- руоф Пагубный моментум
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." не варп-атак на {duration:%s} секунд после убийства варп-атакой.\n"
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 12 - Lightning Speed +]--	08.12.2025
	["loc_talent_psyker_melee_attack_speed_desc"] = { -- melee_attack_speed: 10%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} Attack Speed.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} к скорости атак.", -- Молниеносная скорость
	},
	--[+ Passive 13 - Empyric Shock +]--	08.12.2025
	["loc_talent_psyker_force_staff_quick_attack_bonus_desc"] = { -- damage_taken: 6%, max_stacks: 5, duration: 10, s->seconds, +colors
		en = Dot_green.." {damage_taken:%s} "..CKWord("Warp-Damage", "Damagewrp_rgb").." Taken by victims of your Force Staff’s Primary Attack.\n"
			..Dot_nc.." Max Stacks {max_stacks:%s}.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
		ru = Dot_green.." {damage_taken:%s} к "..CKWord("варп-урону", "uronu_warp_rgb_ru")..", получаемому врагами, от ваших основных атак психосиловых посохов.\n" -- Эмпирический шок
			..Dot_nc.." Максимум {max_stacks:%s} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
	},
	--[+ Passive 14 - Wildfire +]--	08.12.2025
	["loc_talent_psyker_warpfire_spread_desc"] = { -- stacks: 4, +colors
		en = "When an Enemy dies while affected by your "..CKWord("Soulblaze", "Soulblaze_rgb")..", nearby Enemies each gain up to {stacks:%s} Stacks of "..CKWord("Soulblaze", "Soulblaze_rgb")..". They cannot gain more Stacks than the dying Enemy had.\n"
			.."\n"
			..Dot_nc.." The amount of "..CKWord("Soulblaze", "Soulblaze_rgb").." Stacks that spread depends on the amount of "..CKWord("Soulblaze", "Soulblaze_rgb").." Stacks on the dying enemy:\n"
			.."_______________________________\n"
			.."Stacks:      "..CNumb("1", "n_1_rgb").."|         "..CNumb("2", "n_2_rgb").."|        "..CNumb("3", "n_3_rgb").."|         "..CNumb("4", "n_4_rgb").."|        >"..CNumb("4", "n_4_rgb").."\n"
			.."Spreads:  "..CNumb("0", "n_0_rgb").."|         "..CNumb("2", "n_2_rgb").."|        "..CNumb("3", "n_3_rgb").."|         "..CNumb("4", "n_4_rgb").."|          "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." Targets do not receive "..CKWord("Soulblaze", "Soulblaze_rgb").." Stacks caused by the Talent if they already have "..CNumb("4", "n_4_rgb").." Stacks or more on them.\n"
			..Dot_nc.." Daemonhosts are not valid targets.",
		ru = "Когда умирает враг, находящийся под действием вашего "..CKWord("горения души", "gorenia_dushi_rgb_ru")..", все ближайшие враги также получают до {stacks:%s} зарядов "..CKWord("горения души", "gorenia_dushi_rgb_ru")..". Они не могут получить больше зарядов, чем было у умирающего врага.\n" -- Неконтролируемый пожар -- руоф Гремучая смесь
			.."\n"
			..Dot_nc.." Количество распространяемых зарядов "..CKWord("горения души", "gorenia_dushi_rgb_ru").." зависит от количества зарядов на умирающем враге:\n"
			.."_______________________________\n"
			.."Заряды на враге:   "..CNumb("1", "n_1_rgb").."|     "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|     "..CNumb("4", "n_4_rgb").."|   >"..CNumb("4", "n_4_rgb").."\n"
			.."Распространения: "..CNumb("0", "n_0_rgb").."|     "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|     "..CNumb("4", "n_4_rgb").."|     "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." Цели не получают заряды "..CKWord("горения души", "gorenia_dushi_rgb_ru")..", если на них уже наложено {stacks:%s} заряда или более.\n"
			..Dot_green.." Не накладывается на демонхостов.",
	},
	--[+ Passive 15 - Warp Splitting +]--	08.12.2025
	["loc_talent_psyker_cleave_from_peril_desc"] = { -- max_cleave: +100%, +colors
		en = Dot_green.." Up to {max_cleave:%s} "..CKWord("Cleave", "Cleave_rgb")..", based on "..CKWord("Peril", "Peril_rgb")..".\n"
			.."\n"
			..CPhrs("Carap_cant_cleave"),
		ru = Dot_green.." До {max_cleave:%s} к "..CKWord("рассечению", "rassecheniu_rgb_ru")..", в зависимости от уровня "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Расщепление варпа
			.."\n"
			..CPhrs("Carap_cant_clv"),
	},
	--[+ Passive 16 - By Crack of Bone +]--	08.12.2025
	["loc_talent_psyker_melee_weaving_desc"] = { -- vent: 10%, warp_generation: 20%, duration: 4, s->seconds, +colors
		en = Dot_green.." {vent:%s} "..CKWord("Peril", "Peril_rgb").." Quelled on Melee "..CKWord("Weakspot", "Weakspot_rgb").." kills.\n"
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} "..CKWord("Peril", "Peril_rgb").." Generation for {duration:%s} seconds on Melee "..CKWord("Weakspot", "Weakspot_rgb").." kills.\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." {vent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." подавляется при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." в ближнем бою.\n" -- Треск костей
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru").." на {duration:%s} секунды при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." в ближнем бою.\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 17 - Immaterial Focus +]--	08.12.2025
	["loc_talent_psyker_damage_resistance_stun_immunity_desc"] = { -- dr: +10%, duration: 4, s->seconds, +colors
		en = Dot_green.." {dr:%s} "..CKWord("Damage", "Damage_rgb").." Resistance.\n"
			.."\n"
			.."While at or above "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb").." and for {duration:%s} seconds after dropping below "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb")..", grants Immunity to "..CKWord("Stuns", "Stuns_rgb").." from both Melee and Ranged Attacks.\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." {dr:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".\n" -- Нематериальная концентрация
			.."\n"
			.."При "..CNumb("97%", "pc_97_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." или более и на {duration:%s} секунды после снижения уровня "..CKWord("опасности", "opasnosti_rgb_ru").." ниже "..CNumb("97%", "pc_97_rgb")..", вы получаете иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." от атак ближнего и дальнего боя.\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 18 - Psykinetic's Aura +]--	08.12.2025
	["loc_talent_psyker_cooldown_on_allied_elite_kills_desc"] = { -- cooldown: 100%, time: 3, +colors
		en = Dot_green.." {cooldown:%s} "..CKWord("Cooldown", "Cd_rgb").." Regeneration for {time:%s} seconds when you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." kills an Elite or Specialist enemy.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." На {cooldown:%s} сокращается время "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." в течение {time:%s} секунд, если вы или ваш союзник в "..CKWord("сплочённости", "splochennosti_rgb_ru").." убиваете элитного врага или специалиста.\n" -- Аура психокинетика
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 19 - Empathic Evasion +]--	08.12.2025
	["loc_talent_psyker_dodge_after_crits_description"] = { -- duration: 1, s->second, +colors
		en = Dot_green.." A "..CKWord("Critical Hit", "Crit_hit_rgb").." makes you count as Dodging against Ranged Attacks for {duration:%s} second.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "При "..CKWord("критическом ударе", "krit_udare_rgb_ru").." вы переходите в режим уклонения от дальнобойных атак на {duration:%s} секунду.\n" -- Эмпатическое уклонение
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 20 - One with the Warp +]--	08.12.2025
	["loc_talent_psyker_toughness_damage_reduction_from_warp_charge_desc"] = { -- min_damage: +10%, max_damage: +33%, +colors
		en = Dot_green.." {min_damage:%s} to {max_damage:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." based on your current "..CKWord("Peril", "Peril_rgb")..".\n"
			.."\n"
			..Dot_green.." Always grants a minimum of {min_damage:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." regardless of current "..CKWord("Peril", "Peril_rgb").." amount and scales linearly:\n"
			.."_______________________________\n"
			..CKWord("Peril", "Peril_rgb")..":       "..CNumb("0", "n_0_rgb").."|   "..CNumb("20", "n_20_rgb").."|  "..CNumb("40", "n_40_rgb").."|   "..CNumb("50", "n_50_rgb").."|   "..CNumb("60", "n_60_rgb").."|   "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("TDR", "TDR_rgb").."("..CKWord("%", "pc_rgb").."): "..CNumb("10", "n_10_rgb").."| "..CKWord("~15", "n__15_rgb").."| "..CKWord("~19", "n__19_rgb").."| "..CKWord("~22", "n__22_rgb").."| "..CKWord("~24", "n__24_rgb").."| "..CKWord("~28", "n__28_rgb").."|   "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
		ru = Dot_green.." От {min_damage:%s} до {max_damage:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." в зависимости от вашего текущего уровня "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Единство с варпом
			.."\n"
			..Dot_green.." Всегда даёт минимум {min_damage:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." независимо от текущего уровня "..CKWord("опасности", "opasnosti_rgb_ru").." и увеличивается линейно:\n"
			.."_______________________________\n"
			..CKWord("Опасность", "Opasnost_rgb_ru").."("..CKWord("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."|  "..CNumb("40", "n_40_rgb").."|   "..CNumb("60", "n_60_rgb").."|   "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("СУС", "TDR_rgb_ru").."("..CKWord("%", "pc_rgb").."):           "..CNumb("10", "n_10_rgb").."| "..CKWord("~15", "n__15_rgb").."| "..CKWord("~19", "n__19_rgb").."| "..CKWord("~24", "n__24_rgb").."| "..CKWord("~28", "n__28_rgb").."|   "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
	},
	--[+ Passive 21 - Just a Dream +]--	08.12.2025
	["loc_talent_psyker_damage_to_peril_conversion_desc"] = { -- percent: 25%, +colors
		en = Dot_green.." {percent:%s} of "..CKWord("Damage", "Damage_rgb").." Taken is converted into "..CKWord("Peril", "Peril_rgb")..", while below "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb")..".",
		ru = Dot_green.." {percent:%s} получаемого "..CKWord("урона", "urona_rgb_ru").." преобразуется в "..CKWord("опасность", "opasnost_rgb_ru")..", пока ваш уровень "..CKWord("опасности", "opasnosti_rgb_ru").." ниже "..CNumb("97%", "pc_97_rgb")..".", -- Лишь сон -- руоф Просто грезы
	},
	--[+ Passive 22 - Anticipation +]--	08.12.2025
	["loc_talent_psyker_improved_dodge_description"] = { -- dodge_linger_time: +50%, extra_consecutive_dodges: 1
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} Effective Dodges.\n"
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} Dodge duration.\n"
			..Dot_nc.." Increases from "..CNumb("0.2", "n_02_rgb").." to "..CNumb("0.3", "n_03_rgb").." seconds.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} к количеству эффективных уклонений.\n" -- Предвкушение
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} к длительности уклонений.\n"
			..Dot_nc.." Длительность увеличивается с "..CNumb("0.2", "n_02_rgb").." до "..CNumb("0.3", "n_03_rgb").." секунды.",
	},
	--[+ Passive 23 - Solidity +]--	08.12.2025
	["loc_talent_psyker_increased_vent_speed_description"] = { -- vent_speed: 30%
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} Quell Speed.\n"
			.."\n"
			..Dot_nc.." Applies only to Active Quelling, Passive Quelling is unaffected.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} к скорости подавления "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Устойчивость -- руоф Твердость
			.."\n"
			..Dot_nc.." Применяется только к активному подавлению, пассивное подавление не затрагивается.",
	},
	--[+ Passive 24 - Puppet Master +]--	08.12.2025
	["loc_talent_psyker_coherency_size_increase_description"] = { -- radius_modifier: 50%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} Radius for your "..CKWord("Coherency", "Coherency_rgb").." Aura.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} к радиусу вашей ауры "..CKWord("сплочённости", "splochennosti_rgb_ru")..".", -- Кукловод
	},
	--[+ Passive 25 - Vulnerable Minds +]--	08.12.2025
	["loc_talent_psyker_damage_vs_ogryns_and_monsters_desc"] = { -- damage: +20%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." vs Ogryns and Monstrosities.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." огринам и чудовищам.", -- Уязвимые разумы -- руоф Уязвимые сознания
	},
	--[+ Passive 26 - Warp Rider +]--	08.12.2025
	["loc_talent_psyker_damage_based_on_warp_charge_desc"] = { -- max_damage: +20%, +colors
		en = Dot_green.." Deal up to {max_damage:%s} "..CKWord("Damage", "Damage_rgb")..", based on your current "..CKWord("Peril", "Peril_rgb")..":\n"
			.."_______________________________\n"
			..CKWord("Peril", "Peril_rgb").."("..CKWord("%", "pc_rgb").."):         "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("50", "n_50_rgb").."| "..CNumb("60", "n_60_rgb").."|  "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Damage", "Damage_rgb").."("..CKWord("%", "pc_rgb").."):  "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("10", "n_10_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|   "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		ru = Dot_green.." До {max_damage:%s} к "..CKWord("урон", "uronu_rgb_ru")..", в зависимости от вашего уровня "..CKWord("опасности", "opasnosti_rgb_ru")..":\n" -- Всадник варпа -- руоф Наездник варпа
			.."_______________________________\n"
			..CKWord("Опасность", "Opasnost_rgb_ru").."("..CKWord("%", "pc_rgb").."):    "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."|  "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Урон", "Uron_rgb_ru").."("..CKWord("%", "pc_rgb").."):               "..CNumb("0", "n_0_rgb").."|   "..CNumb("4", "n_4_rgb").."|    "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|   "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
	},
	--[+ Passive 27 - True Aim +]--	08.12.2025
	["loc_talent_psyker_weakspot_grants_crit_once_description"] = { -- weakspot_hits: 5, +colors
		en = Dot_green.." Landing {weakspot_hits:%s} "..CKWord("Weakspot Hits", "Weakspothits_rgb").." grants your next Ranged Attack a guaranteed "..CKWord("Critical", "Critical_rgb")..".\n"
			.."\n"
			..Dot_nc.." "..CKWord("Weakspot", "Weakspot_rgb").." Stacks last until consumed.\n"
			..Dot_nc.." Can only trigger once per Attack.\n"
			..Dot_red.." Shooting air consumes the guaranteed "..CKWord("Crit", "Crit_rgb")..".",
		ru = Dot_green.." Попадания {weakspot_hits:%s} раз в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." гарантированно делают вашу следующую дальнобойную атаку "..CKWord("критическим выстрелом", "krit_vystrelom_rgb_ru")..".\n" -- Верная цель
			.."\n"
			..Dot_nc.." Заряды попаданий в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." держатся до первого "..CKWord("критического выстрела", "krit_vystrela_rgb_ru")..".\n"
			..Dot_nc.." Срабатывает только раз за атаку.\n"
			..Dot_red.." Выстрел в воздух тратит "..CKWord("критический выстрел", "krit_vystrel_rgb_ru")..".",
	},
	--[+ Passive 28 - Kinetic Deflection +]--	08.12.2025
	["loc_talent_psyker_block_costs_warp_charge_desc"] = { -- warp_charge_block_cost: 25%, +colors
		en = Dot_green.." While below "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb")..",	 Blocking an attack causes you to gain "..CKWord("Peril", "Peril_rgb").." instead of losing "..CKWord("Stamina", "Stamina_rgb")..".\n"
			.."\n"
			..Dot_nc.." Gained "..CKWord("Peril", "Peril_rgb").." is {warp_charge_block_cost:%s} of the blocked attack's "..CKWord("Stamina", "Stamina_rgb").." cost.",
		ru = "Пока уровень "..CKWord("опасности", "opasnosti_rgb_ru").." ниже "..CNumb("97%", "pc_97_rgb")..", блокирование атак приводит к повышению уровня "..CKWord("опасности", "opasnosti_rgb_ru").." вместо потери "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n" -- Кинетическое отклонение
			.."\n"
			..Dot_nc.." Получаемый уровень "..CKWord("опасности", "opasnosti_rgb_ru").." составляет {warp_charge_block_cost:%s} от стоимости "..CKWord("выносливости", "vynoslivosti_rgb_ru")..", затрачиваемой на обычное блокирование.",
	},
	--[+ Passive 29 - Empyric Resolve +]--	08.12.2025
	["loc_talent_psyker_warp_glass_cannon_desc"] = { -- peril_reduction: -40%, toughness_reduction: -30%, +colors
		en = Dot_green.." {peril_reduction:%s} "..CKWord("Peril", "Peril_rgb").." Generation.\n"
			.."\n"
			..Dot_red.." {toughness_reduction:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenished.\n"
			..CPhrs("Dont_intw_coher_toughn").." Only affects Melee kills and Talents.",
		ru = Dot_green.." {peril_reduction:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Эмпирическая решимость
			.."\n"
			..Dot_red.." {toughness_reduction:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			..CPhrs("Dont_intw_coher_toughn").." Влияет только на получение "..CKWord("стойкости", "stoikosti_rgb_ru").." от убийств и талантов.",
	},
	--[+ Passive 30 - Penetration of the Soul +]--	08.12.2025
	["loc_talent_psyker_warp_attacks_rending_alt_desc"] = { -- rending: +10%, threshold: 75%, +colors
		en = Dot_green.." Up to {rending:%s} "..CKWord("Rending", "Rending_rgb").." on Warp-Attacks, based on "..CKWord("Peril", "Peril_rgb")..":\n"
			.."_______________________________\n"
			..CKWord("Peril", "Peril_rgb").."("..CKWord("%", "pc_rgb").."):          "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("50", "n_50_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Rending", "Rending_rgb").."("..CKWord("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("10", "n_10_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
		ru = Dot_green.." До {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони для варп-атак, в зависимости от уровне "..CKWord("опасности", "opasnosti_rgb_ru")..":\n" -- Проникновение в душу
			.."_______________________________\n"
			..CKWord("Опасность", "Opasnost_rgb_ru").."("..CKWord("%", "pc_rgb").."):      "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Пробивание", "Probivanie_rgb_ru").."("..CKWord("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."|   "..CNumb("4", "n_4_rgb").."|    "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
	},
	--[+ Passive 31 - Crystalline Will +]--	08.12.2025
	["loc_talent_psyker_alternative_peril_explosion_new_desc"] = { -- overload_damage: +100%, overload_radius: +25%, +colors
		en = Dot_green.." {overload_damage:%s} Overload Explosion "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {overload_radius:%s} Overload Explosion Radius.\n"
			.."\n"
			..Dot_green.." Overloading through "..CKWord("Perils of the Warp", "PerilsozWarp").." no longer knocks you down, but you lose "..CNumb("1", "n_1_rgb").." "..CKWord("Health", "Health_rgb").." segment from "..CKWord("Corruption Damage", "Corruptdmg_rgb")..".\n"
			..Dot_green.." If the explosion kills an Elite enemy, you don't take any "..CKWord("Corruption Damage", "Corruptdmg_rgb")..".",
		ru = "Взрыв от перегрузки, после набора "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..", получает:\n" -- Чистая воля
			..Dot_green.." {overload_damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {overload_radius:%s} к радиусу.\n"
			.."\n"
			..Dot_green.." Взрыв от перегрузки "..CKWord("Опасностей варпа", "Opasnostei_warpa_rgb_ru").." больше не выводит вас из строя, но забирает "..CNumb("1", "n_1_rgb").." сегмент "..CKWord("здоровья", "zdorovia_rgb_ru")..", нанося вам "..CKWord("урон от порчи", "porchi_uron_rgb_ru")..".\n"
			..Dot_green.." Если взрыв убьёт элитного врага, вы не получите "..CKWord("урон от порчи", "porchi_uron_rgb_ru")..".",
	},
	--[+ Passive 32 - Warp Ghost +]--	08.12.2025
	["loc_talent_psyker_stat_mix_desc"] = { -- peril_reduction: -80%, stamina: +2, toughness_replenish: +25%, +colors
		en = Dot_green.." {peril_reduction:%s} Passive quelling.\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment.\n"
			..CPhrs("Dont_intw_coher_toughn").." Only affects Melee kills and Talents.",
		ru = Dot_green.." {peril_reduction:%s} к пассивному подавлению "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Призрак варпа
			.."\n"
			..Dot_green.." {stamina:%s} к "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			..CPhrs("Dont_intw_coher_toughn_ru").." Влияет только на получение "..CKWord("стойкости", "stoikosti_rgb_ru").." от убийств и талантов.",
	},
	--[+ Passive 33 - Tranquility Through Slaughter +]--	08.12.2025
	["loc_talent_psyker_ranged_crits_vent_desc"] = { -- percent: 4%, +colors
		en = Dot_green.." {percent:%s} "..CKWord("Peril", "Peril_rgb").." is quelled on Non-Warp Ranged "..CKWord("Critical Hits", "Crit_hits_rgb")..".\n"
			.."\n"
			..Dot_green.." Procs when hitting Shields.\n"
			..Dot_red.." Procs only Once per shot regardless of how many enemies have been hit.",
		ru = Dot_green.." {percent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." подавляется при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru").." не из варп источника.\n" -- Успокоение через резню -- руоф Спокойствие посредством убийств
			.."\n"
			..Dot_green.." Срабатывает при попадании в щиты.\n"
			..Dot_red.." Срабатывает только раз за выстрел, независимо от количества поражённых целей.",
	},
	--[+ Passive 34 - Surety of Arms +]--	08.12.2025
	["loc_talent_psyker_reload_speed_warp_desc"] = { -- reload_speed: 25%, threshold: 75%, warp_charge: 25%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} Reload Speed while below {threshold:%s} "..CKWord("Peril", "Peril_rgb")..".\n"
			..Dot_red.." On Reload, generate up to {warp_charge:%s} "..CKWord("Peril", "Peril_rgb").." based on the Percentage of the Clip Restored.\n"
			.."\n"
			..Dot_red.." Reloading an Empty clip generates the max amount of {warp_charge:%s} "..CKWord("Peril", "Peril_rgb")..".",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} к скорости перезарядки оружия пока ваш уровень "..CKWord("опасности", "opasnosti_rgb_ru").." ниже {threshold:%s}.\n" -- Варп в залог -- руоф Верность оружия
			..Dot_red.." При перезарядке сгенерирует до {warp_charge:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." в зависимости от процентного соотношения восстановленных патронов в магазине.\n"
			.."\n"
			..Dot_red.." Если патроны кончились, перезарядка сгенерирует вам {warp_charge:%s} "..CKWord("опасности", "opasnosti_rgb_ru")..".",
	},


--[+ ++VETERAN - ВЕТЕРАН++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Frag Grenade +]--	08.12.2025
	["loc_ability_frag_grenade_description"] = { -- +colors
		en = CKWord("Fragmentation Grenade", "Fragm_gren_rgb").." that explodes after "..CNumb("1.7", "n_1_7_rgb").." seconds.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb").." epicenter: "..CNumb("500", "n_500_rgb")..".\n"
			..Dot_green.." Deals high "..CKWord("Stagger", "Stagger_rgb").." against all enemies including Monstrosities.\n"
			..Dot_nc.." Max explosion radius: "..CNumb("10", "n_10_rgb").." meters.\n"
			..Dot_nc.." Average armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Very low armor "..CKWord("Damage", "Damage_rgb").." to Carapace.",
		ru = "Вы бросаете "..CKWord("Fragmentation Grenade", "Fragm_gren_rgb")..", которая взрывается через "..CNumb("1.7", "n_1_7_rgb").." секунд.\n" -- Фраг-граната
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru").." в эпицентре: "..CNumb("500", "n_500_rgb")..".\n"
			..Dot_green.." Сильно "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." всех врагов, включая чудовищ.\n"
			..Dot_nc.." Радиус взрыва: "..CNumb("10", "n_10_rgb").." метров.\n"
			..Dot_nc.." Средний "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.",
	},
	--[+ BLITZ 1 - Shredder Frag Grenade +]--	08.12.2025
	["loc_talent_veteran_grenade_apply_bleed_desc"] = { -- stacks: 6, talent_name: Frag Grenade, +colors
		en = "Throw a "..CKWord("Frag Grenade", "Frag_gren_rgb").." that explodes after "..CNumb("1.7", "n_1_7_rgb").." seconds. Applies {stacks:%s} Stacks of "..CKWord("Bleed", "Bleed_rgb").." to all Enemies Hit, causing "..CKWord("Damage", "Damage_rgb").." over time.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb").." epicenter: "..CNumb("500", "n_500_rgb")..".\n"
			..Dot_green.." Deals high "..CKWord("Stagger", "Stagger_rgb").." against all enemies including Monstrosities.\n"
			..Dot_nc.." Max explosion radius: "..CNumb("10", "n_10_rgb").." meters.\n"
			..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Max "..CKWord("Bleed", "Bleed_rgb").." Stacks.\n"
			..Dot_nc.." Average armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Very low armor "..CKWord("Damage", "Damage_rgb").." to Carapace.",
		ru = "Вы бросаете "..CKWord("Фраг-гранату", "Frag_gren_rgb_ru")..", которая взрывается после "..CNumb("1.7", "n_1_7_rgb").." секунды. Накладывает {stacks:%s} зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." на всех поражённых взрывом врагов, нанося "..CKWord("урон", "uron_rgb_ru").." с течением времени.\n" -- Крошащая фраг-граната -- руоф Фраг-граната крошителя
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru").." в эпицентре: "..CNumb("500", "n_500_rgb")..".\n"
			..Dot_green.." Сильно "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." всех врагов, включая чудовищ.\n"
			..Dot_nc.." Радиус взрыва: "..CNumb("10", "n_10_rgb").." метров.\n"
			..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru")..".\n"
			..Dot_nc.." Средний "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.",
	},
	--[+ BLITZ 2 - Krak Grenade +]--	08.12.2025
	["loc_talent_ability_krak_grenade_desc"] = { -- +colors
		en = "Throw a grenade that explodes after "..CNumb("1", "n_1_rgb").." second and deals devastating "..CKWord("Damage", "Damage_rgb")..". Sticks to Flak Armoured, Carapace Armoured and Unyielding Enemies.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb").." epicenter: "..CNumb("2400", "n_2400_rgb")..".\n"
			..Dot_green.." Good armor "..CKWord("Damage", "Damage_rgb").." inside epicenter.\n"
			..Dot_green.." Very high armor "..CKWord("Damage", "Damage_rgb").." to Carapace, Flak, Unyielding inside epicenter.\n"
			..Dot_green.." Deals high "..CKWord("Stagger", "Stagger_rgb").." against all enemies including Monstrosities.\n"
			..Dot_nc.." Max explosion radius: "..CNumb("5", "n_5_rgb").." meters.",
		ru = "Вы бросаете гранату, которая взрывается после "..CNumb("1", "n_1_rgb").." секунды и наносит разрушительный "..CKWord("урон", "uron_rgb_ru")..". Граната прилипает к панцирной и противоосколочной броне, а также к несгибаемым врагам.\n" -- Крак-граната
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru").." в эпицентре: "..CNumb("2400", "n_2400_rgb")..".\n"
			..Dot_green.." Хороший "..CKWord("урон", "uron_rgb_ru").." по броне в эпицентре.\n"
			..Dot_green.." Очень высокий "..CKWord("урон", "uron_rgb_ru").." по панцирной, противоосколочной броне и несгибаемым врагам в эпицентре.\n"
			..Dot_green.." Сильно "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." всех врагов, включая чудовищ.\n"
			..Dot_nc.." Радиус взрыва: "..CNumb("5", "n_5_rgb").." метров.",
	},
	--[+ BLITZ 3 - Smoke Grenade +]--	08.12.2025
	["loc_ability_smoke_grenade_description"] = { -- duration: 15, +colors
		en = "Throw a grenade that explodes after "..CNumb("1.5", "n_1_5_rgb").." seconds and creates a lingering Smoke cloud for {duration:%s} seconds. The cloud blocks line of sight for most enemies and reduces the sight range of enemies inside it.\n"
			.."\n"
			..Dot_nc.." Smoke cloud effect radius: "..CNumb("5.5", "n_5_5_rgb").." meters.\n"
			..Dot_red.." Has no effect on Bombers, Mutants, and Poxbursters.",
		ru = "Вы бросаете гранату, которая взрывается через "..CNumb("1.5", "n_1_5_rgb").." секунды и создаёт облако дыма на {duration:%s} секунд. Дым блокирует линию обзора большинства врагов и снижает расстояние обзора врагов внутри него.\n" -- Дымовая граната
			.."\n"
			..Dot_nc.." Радиус облака дыма: "..CNumb("5.5", "n_5_5_rgb").." метра.\n"
			..Dot_red.." Не действует на гренадёров, мутантов и взрывников.",
	},
--[+ +AURA - АУРА+ +]--
	--[+ AURA 0 - Scavenger +]--	08.12.2025
	["loc_talent_veteran_elite_kills_grant_ammo_coop_cd_desc"] = { -- ammo: 0.75%, cooldown: 5
		en = Dot_green.." {ammo:%s} Ammo replenishes for you and Allies in "..CKWord("Coherency", "Coherency_rgb").." whenever any of you Kill an Elite or Specialist Enemy. This can occur once every {cooldown:%s} seconds.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		ru = Dot_green.." {ammo:%s} боеприпасов пополняется для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..", когда кто-либо из вас убивает элитного врага или специалиста. Срабатывает раз в {cooldown:%s} секунд.\n" -- Сборщик -- руоф Собиратель
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
	},
	--[+ AURA 1 - Survivalist +]--	08.12.2025
	["loc_talent_veteran_elite_kills_grant_ammo_coop_improved_cd_desc"] = { -- ammo_2: 1%, cooldown: 5, talent_name: Scavenger
		en = Dot_green.." {ammo_2:%s} Ammo replenishes for you and Allies in "..CKWord("Coherency", "Coherency_rgb").." whenever any of you Kill an Elite or Specialist Enemy. This can occur once every {cooldown:%s} seconds.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		ru = Dot_green.." {ammo_2:%s} боеприпасов пополняется для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..", когда кто-либо из вас убивает элитного врага или специалиста. Срабатывает раз в {cooldown:%s} секунд.\n" -- Выживальщик -- руоф Специалист по выживанию
			..Dot_green.." Это улучшенная версия ауры {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
	},
	--[+ AURA 2 - Fire Team +]--	08.12.2025
	["loc_talent_veteran_damage_coherency_desc"] = { -- damage: +7.5%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Огневая группа
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
	},
	--[+ AURA 3 - Close and Kill +]--	08.12.2025
	["loc_talent_veteran_movement_speed_coherency_desc"] = { -- movement_speed: +5%
		en = Dot_green.." {movement_speed:%s} Movement Speed for your and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		ru = Dot_green.." {movement_speed:%s} к скорости движения для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Приблизиться и убить
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
	},
--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ ABILITY 0 - Volley Fire +]--	08.12.2025
	["loc_ability_veteran_base_ability_desc"] = { -- duration: 5, damage: +25%, weakspot_damage: +25%, cooldown: 30, &->and, s->seconds, +colors
		en = "You enter "..CKWord("Ranged Stance", "Rangd_stnc_rgb").." for {duration:%s} seconds, instantly equip your Ranged weapon and gain:\n"
			..Dot_green.." {damage:%s} Ranged "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {weakspot_damage:%s} Ranged "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("50%", "pc_50_rgb").." Ranged "..CKWord("Stagger", "Stagger_rgb").." strength,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." Weapon Sway,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." Spread,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." Recoil,\n"
			..Dot_green.." Suppression Immunity.\n"
			.."\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_green.." Killing an outlined enemy refreshes "..CKWord("Ranged Stance", "Rangd_stnc_rgb").."'s active duration by {duration:%s} seconds.",
		ru = "Вы входите в "..CKWord("Стойку дальнего боя", "Rangd_stnc_rgb_ru").." на {duration:%s} секунд, мгновенно экипируете своё оружие дальнего боя и улучшаете навык его владения, получая:\n" -- Залповый огонь
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("50%", "pc_50_rgb").." к силе "..CKWord("ошеломления", "oshelomlenia_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." к раскачиванию,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." к разбросу,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." к отдаче, а также\n"
			..Dot_green.." иммунитет к подавлению.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n", -- ..Dot_green.." Убийство отмеченного врага обновляет длительность стойки на {duration:%s} секунд.",
	},
	--[+ ABILITY 1 - Executioner's Stance +]--	08.12.2025
	["loc_talent_veteran_ranged_stance_toughness_description"] = { -- duration: 5, damage: +25%, weakspot_damage: +25%, toughness: 10%, refresh_duration: 5, cooldown: 30, old_talent_name: Volley Fire, s->seconds, +colors
		en = "You enter "..CKWord("Ranged Stance", "Rangd_stnc_rgb").." for {duration:%s} seconds, instantly equip your Ranged weapon and gain:\n"
			..Dot_green.." {damage:%s} Ranged "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {weakspot_damage:%s} Ranged "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("100%", "pc_100_rgb").." Ranged "..CKWord("Stagger", "Stagger_rgb").." strength,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." Weapon Sway,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." Spread,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." Recoil,\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes per second,\n"
			..Dot_green.." Suppression Immunity.\n"
			.."\n"
			..Dot_green.." This is an augmented version of {old_talent_name:%s}.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Human-sized Elite and Specialist Enemies within "..CNumb("50", "n_50_rgb").." meters of the "..CKWord("Veteran", "cls_vet_rgb").." are highlighted for {duration:%s} seconds.\n"
			..Dot_nc.." Killing an outlined enemy refreshes "..CKWord("Ranged Stance", "Rangd_stnc_rgb").."'s active duration by {refresh_duration:%s} seconds. This also refreshes the duration of outlines on enemies for "..CKWord("Veteran", "cls_vet_rgb")..".\n"
			..Dot_red.." Outlines are only visible to "..CKWord("Veteran", "cls_vet_rgb")..".",
		ru = "Вы входите в "..CKWord("Стойку дальнего боя", "Rangd_stnc_rgb_ru").." на {duration:%s} секунд, мгновенно экипируете своё оружие дальнего боя и улучшаете навык его владения, получая:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n" -- Стойка палача
			..Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("100%", "pc_100_rgb").." к силе "..CKWord("ошеломления", "oshelomlenia_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." к раскачиванию оружия,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." к разбросу,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." к отдаче,\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается в секунду,\n"
			..Dot_green.." Иммунитет к подавлению.\n"
			.."\n"
			..Dot_green.." Это улучшенная версия способности {old_talent_name:%s}.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Элитные враги человеческого роста и специалисты в пределах "..CNumb("50", "n_50_rgb").." метров от "..CKWord("Ветерана", "cls_veta_rgb_ru").." подсвечиваются на {duration:%s} секунд.\n"
			..Dot_nc.." Убийство отмеченного врага обновляет длительность стойки на {refresh_duration:%s} секунд. Это также обновляет длительность отметки на врагах для "..CKWord("Ветерана", "cls_veta_rgb_ru")..".\n"
			..Dot_red.." Отметка видна только "..CKWord("Ветерану", "cls_vetu_rgb_ru")..".",
	},
	--[+ ABILITY 1-1 - Enhanced Target Priority +]--	08.12.2025
	["loc_talent_veteran_combat_ability_coherency_outlines_description"] = { -- talent_name: Executioner's Stance, duration: 5, &->and, s->seconds
		en = Dot_green.." {talent_name:%s} now outlines all Specials and human-sized Elites for Allies in "..CKWord("Coherency", "Coherency_rgb").." for {duration:%s} seconds.",
		ru = Dot_green.." {talent_name:%s} теперь также отмечает всех элитных врагов человеческого роста и специалистов для ваших союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru").." на {duration:%s} секунд.", -- Повышенный приоритет целей -- руоф Повышенный приоритет цели
	},
	--[+ ABILITY 1-2 - Counter-Fire +]--	08.12.2025
	["loc_talent_veteran_combat_ability_ranged_enemies_outlines_description"] = { -- talent_name: Executioner's Stance
		en = Dot_green.." {talent_name:%s} now outlines Scab/Dreg Stalkers and Scab Shooters, additionally to all human-sized Elites and Specials.",
		ru = Dot_green.." {talent_name:%s} теперь также отмечает и других дальнобойных врагов: скабов-охотников, дрегов-охотников и скабов-стрелков, в дополнение к элитным врагам человеческого роста и специалистам.", -- Ответный огонь
	},
	--[+ ABILITY 1-3 - The Bigger they Are... +]--	08.12.2025
	["loc_talent_veteran_combat_ability_ogryn_outlines_damage_description"] = { -- talent_name: Executioner's Stance, duration: 8
		en = Dot_green.." {talent_name:%s} now outlines Bulwarks, Crushers and Reapers, Captains, and Monstrosity Enemies, additionally to all human-sized Elites and Specials.\n"
			.."\n"
			..Dot_green.." Duration increased to {duration:%s} seconds.",
		ru = Dot_green.." {talent_name:%s} теперь также отмечает бастионов, крушителей, жнецов, капитанов и чудовищ, в дополнение к элитным врагам человеческого роста и специалистам.\n" -- Чем больше шкаф...
			.."\n"
			..Dot_green.." Длительность увеличена до {duration:%s} секунд.",
	},
	--[+ ABILITY 1-4 - Marksman +]--	08.12.2025
	["loc_talent_veteran_ability_marksman_desc"] = { -- duration: 10, power: +20%, talent_name: Infiltrate, s->seconds, +colors
		en = "{power:%s} "..CKWord("Strength", "Strength_rgb").." to "..CKWord("Weakspot Hits", "Weakspothits_rgb").." for {duration:%s} seconds on "..CKWord("Combat Ability", "Cmbt_abil_rgb").." use.\n"
			.."\n"
			..Dot_nc.." When using {talent_name:%s}, this is applied after leaving "..CKWord("Stealth", "Stealth_rgb")..".\n"
			.."\n"
			..CNote("Pwr_note"),
		ru = "{power:%s} к "..CKWord("силе", "sile_rgb_ru").." атак в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." на {duration:%s} секунд при активации "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".\n" -- Меткий стрелок
			.."\n"
			..Dot_nc.." При использовании способности {talent_name:%s}, этот талант начинает действовать только после выхода из "..CKWord("Скрытности", "Stealth_rgb_ru")..".\n"
			.."\n"
			..CNote("Pwr_note"),
	},
	--[+ ABILITY 2 - Voice of Command +]--	08.12.2025
	["loc_talent_veteran_combat_ability_stagger_nearby_enemies_description"] = { -- range: 9, cooldown: 30, &->and, m->meters, s->seconds, +colors
		en = Dot_green.." "..CNumb("100%", "pc_100_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restored on activation.\n"
			..Dot_green.." "..CKWord("Staggers", "Staggers_rgb").." all Enemies within {range:%s} meters.\n"
			..Dot_nc.." Base Cooldown {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Holding the ability button shows shout range. Cancel by blocking.\n"
			..Dot_red.." Cannot "..CKWord("Stagger", "Stagger_rgb").." already "..CKWord("Staggered", "Staggered_rgb").." enemies and enemies with an active Void shield.\n",
		ru = Dot_green.." "..CNumb("100%", "pc_100_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при активации.\n" -- Командный голос
			..Dot_green.." "..CKWord("Ошеломляет", "Oshelomlaet_rgb_ru").." всех врагов в радиусе {range:%s} метров.\n"
			..Dot_nc.." Восстановливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Удерживание кнопки активации способности показывает радиус действия. Отменяется блоком.\n"
			..Dot_red.." Не может "..CKWord("ошеломить", "oshelomit_rgb_ru").." уже "..CKWord("ошеломлённых", "oshelomlennyh_rgb_ru").." врагов и врагов с активным пустотным щитом.\n",
	},
	--[+ ABILITY 2-1 - Duty and Honour +]--	08.12.2025
	["loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency_description"] = { -- talent_name: Voice of Command, toughness: +50, duration: 10, s->seconds, +colors
		en = "{talent_name:%s} now also grants to you and Allies in "..CKWord("Coherency", "Coherency_rgb")..":\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." for {duration:%s} seconds.\n"
			.."\n"
			..Dot_green.." Can be replenished by Melee kills, respective Talents, and Weapon Blessings.\n"
			..Dot_nc.." It acts as a 'second' "..CKWord("Toughness", "Toughness_rgb").." bar.\n"
			..Dot_nc.." This can exceed your Maximum "..CKWord("Toughness", "Toughness_rgb")..".",
		ru = "{talent_name:%s} теперь также даёт вам и союзникам в "..CKWord("сплочённости", "splochennosti_rgb_ru")..":\n" -- Долг и честь
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." на {duration:%s} секунд.\n"
			.."\n"
			..Dot_green.." Эта "..CKWord("стойкость", "stoikost_rgb_ru").." может быть восстанавлена убийствами в ближнем бою, соответствующими талантами и благословениями оружия.\n"
			..Dot_nc.." Действует как дополнительная полоска "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			..Dot_nc.." Может превысить ваш максимальный уровень "..CKWord("стойкости", "stoikosti_rgb_ru")..".",
	},
	--[+ ABILITY 2-2 - Only In Death Does Duty End +]--	08.12.2025
	["loc_talent_veteran_combat_ability_revives_description"] = { -- talent_name: Voice of Command, range: 33%, ability_cooldown: 50%, &->and, +colors
		en = Dot_green.." {talent_name:%s} revives Knocked Down Allies within its radius.\n"
			..Dot_red.." "..CNumb("-", "n_minus_rgb").."{range:%s} radius, down to "..CNumb("6", "n_6_rgb").." meters.\n"
			..Dot_red.." "..CNumb("+", "n_plus_rgb").."{ability_cooldown:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb")..", up to "..CNumb("45", "n_45_rgb").." seconds.",
		ru = Dot_green.." {talent_name:%s} поднимает сбитых с ног союзников в радиусе действия.\n" -- Лишь со смертью заканчивается долг -- руоф Лишь после смерти заканчивается служение долгу
			..Dot_red.." "..CNumb("-", "n_minus_rgb").."{range:%s} радиус действия, уменьшается до "..CNumb("6", "n_6_rgb").." метров.\n"
			..Dot_red.." "..CNumb("+", "n_plus_rgb").."{ability_cooldown:%s} к времени "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru")..", увеличивается до "..CNumb("45", "n_45_rgb").." секунд.",
	},
	--[+ ABILITY 3 - Infiltrate +]--	08.12.2025
	["loc_talent_veteran_invisibility_on_combat_ability_damage_desc"] = { -- duration: 8, movement_speed: +25%, damage_duration: 5, damage: +30%, cooldown: 45, s->seconds, +colors
		en = "You enter "..CKWord("Stealth", "Stealth_rgb").." for {duration:%s} seconds and gain:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {movement_speed:%s} Movement Speed,\n"
			..Dot_green.." Full "..CKWord("Toughness", "Toughness_rgb").." Restoration.\n"
			.."\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			..Dot_green.." The "..CKWord("Damage", "Damage_rgb").." bonus lingers for an additional {damage_duration:%s} seconds after "..CKWord("Stealth", "Stealth_rgb").." ends.\n"
			..Dot_green.." Exiting "..CKWord("Stealth", "Stealth_rgb").." Suppresses nearby Enemies.\n"
			..Dot_red.." Attacking ends "..CKWord("Stealth", "Stealth_rgb")..".",
		ru = "Вы входите в режим "..CKWord("Скрытности", "Stealth_rgb_ru").." на {duration:%s} секунд и получаете:\n" -- Проникновение
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {movement_speed:%s} к скорости движения и\n"
			..Dot_green.." полное восстановление "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			..Dot_green.." Бонус к "..CKWord("урону", "uronu_rgb_ru").." продлевается на {damage_duration:%s} секунд после окончания действия "..CKWord("Скрытности", "Stealth_rgb_ru")..".\n"
			..Dot_green.." Выход из "..CKWord("Скрытности", "Stealth_rgb_ru").." подавляет ближайших врагов.\n"
			..Dot_red.." Любые атаки заставляют вас выйти из "..CKWord("Скрытности", "Stealth_rgb_ru")..".",
	},
	--[+ ABILITY 3-1 - Overwatch +]--	08.12.2025
	["loc_talent_veteran_combat_ability_extra_charge_description"] = { -- charges: +1, ability_cooldown: +33%
		en = Dot_green.." {charges:%s} "..CKWord("Combat Ability", "Cmbt_abil_rgb").." charge.\n"
			..Dot_red.." {ability_cooldown:%s} "..CKWord("Cooldown", "Cd_rgb")..", up to "..CKWord("~60", "n__60_rgb").." seconds.\n"
			.."\n"
			..Dot_nc.." The "..CKWord("Cooldown", "Cd_rgb").." of the Second charge only starts after the First charge finished its "..CKWord("Cooldown", "Cd_rgb")..".",
		ru = Dot_green.." {charges:%s} заряд "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".\n" -- Наблюдение -- руоф Прикрытие
			..Dot_red.." {ability_cooldown:%s} к времени восстановления, увеличивается до "..CKWord("~60", "n__60_rgb").." секунд.\n"
			.."\n"
			..Dot_nc.." Восстановление второго заряда начинается только после завершения восстановления первого заряда.",
	},
	--[+ ABILITY 3-2 - Hunter's Resolve +]--	08.12.2025
	["loc_talent_veteran_toughness_bonus_leaving_invisibility_desc"] = { -- talent_name: Infiltrate, tdr: +50%, duration: 10, s->seconds, +colors
		en = Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for {duration:%s} seconds upon leaving "..CKWord("Stealth", "Stealth_rgb")..".",
		ru = Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." на {duration:%s} секунд после выхода из "..CKWord("Скрытности", "Stealth_rgb_ru")..".", -- Упорство охотника
	},
	--[+ ABILITY 3-3 - Low Profile +]--	08.12.2025
	["loc_talent_veteran_reduced_threat_after_stealth_desc"] = { -- threat_multiplier: -90%, duration: 10, s->seconds, +colors
		en = Dot_green.." {threat_multiplier:%s} Threat for {duration:%s} seconds on leaving "..CKWord("Stealth", "Stealth_rgb")..".",
		ru = Dot_green.." {threat_multiplier:%s} к угрозе на {duration:%s} секунд после выхода из "..CKWord("Скрытности", "Stealth_rgb_ru")..".", -- Незаметность -- руоф Сдержанность
	},
	--[+ ABILITY 3-4 - Close Quarters Killzone +]--	08.12.2025
	["loc_talent_veteran_ability_assault_desc"] = { -- power: +15%, duration: 10, talent_name: Infiltrate, s->seconds, +colors
		en = Dot_green.." {power:%s} "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds to enemies within "..CNumb("12.5", "n_12_5_rgb").." meters on "..CKWord("Combat Ability", "Cmbt_abil_rgb").." use.\n"
			.."Beyond "..CNumb("12.5", "n_12_5_rgb").." meters, the "..CKWord("Damage", "Damage_rgb").." buff decreases linearly until it loses its effect at "..CNumb("30", "n_30_rgb").." meters:\n"
			.."_______________________________\n"
			.."Distance ("..CKWord("m", "n_meter_rgb")..")   "..CNumb("1", "n_1_rgb").." | "..CNumb("12.5", "n_12_5_rgb").." |   "..CNumb("15", "n_15_rgb").." | "..CNumb("20", "n_20_rgb").." | "..CNumb("25", "n_25_rgb").." | "..CNumb("30", "n_30_rgb").."\n"
			..CKWord("Damage", "Damage_rgb").." ("..CKWord("%", "pc_rgb").."): "..CNumb("15", "n_15_rgb").." |    "..CNumb("15", "n_15_rgb").." | "..CKWord("~13", "n__13_rgb").." |  "..CKWord("~9", "n__9_rgb").." | "..CKWord("~4", "n__4_rgb").." |   "..CNumb("0", "n_0_rgb").."\n"
			.."_______________________________\n"
			..Dot_green.." This also increases the "..CKWord("Damage", "Damage_rgb").." of explosions and DoTs as long as Veteran stays within "..CNumb("30", "n_30_rgb").." meters to the enemy.\n"
			.."\n"
			..Dot_nc.." When using {talent_name:%s}, this begins on leaving "..CKWord("Stealth", "Stealth_rgb")..".",
		ru = Dot_green.." {power:%s} к "..CKWord("урону", "uronu_rgb_ru").." на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров на {duration:%s} секунд после применения "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".\n" -- Зона ближнего боя -- руоф Зона поражения на ближней дистанции
			.."\n"
			.."За пределами "..CNumb("12.5", "n_12_5_rgb").." метров, "..CKWord("урон", "uron_rgb_ru").." уменьшается линейно, пока не теряет свой эффект на "..CNumb("30", "n_30_rgb").." метрах:\n"
			.."_______________________________\n"
			.."Дистанция:   "..CNumb("1", "n_1_rgb").." | "..CNumb("12.5", "n_12_5_rgb").." |   "..CNumb("15", "n_15_rgb").." |  "..CNumb("20", "n_20_rgb").." | "..CNumb("25", "n_25_rgb").." | "..CNumb("30", "n_30_rgb").."\n"
			..CKWord("Урон", "Uron_rgb_ru").." ("..CKWord("%", "pc_rgb").."):     "..CNumb("15", "n_15_rgb").." |     "..CNumb("15", "n_15_rgb").." | "..CKWord("~13", "n__13_rgb").." |  "..CKWord("~9", "n__9_rgb").." | "..CKWord("~4", "n__4_rgb").." |   "..CNumb("0", "n_0_rgb").."\n"
			.."_______________________________\n"
			..Dot_green.." Это также увеличивает "..CKWord("урон", "uron_rgb_ru").." от взрывов и количество "..CKWord("урона", "urona_rgb_ru").." со временем, пока "..CKWord("Ветеран", "cls_vet_rgb_ru").." находится в пределах "..CNumb("30", "n_30_rgb").." метров от врага.\n"
			.."\n"
			..Dot_nc.." При использовании способности {talent_name:%s}, этот талант начинает действовать только после выхода из "..CKWord("Скрытности", "Stealth_rgb_ru")..".",
	},
--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ KEYSTONE 1 - Marksman's Focus +]--	08.12.2025
	["loc_talent_veteran_snipers_focus_duration_desc"] = { -- stacks: 3, max_stacks: 10, duration: 5, power: +7.5%, reload_speed: +1%, stack(s)->stacks, s->second/seconds, +colors, +note
		en = "Ranged "..CKWord("Weakspot", "Weakspot_rgb").." kills grant {stacks:%s} Stacks of "..CKWord("Focus", "Focus_rgb")..".\n"
			.."\n"
			..CPhrs("Can_proc_mult")
			..Dot_nc.." Up to {max_stacks} Max Stacks.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Stacks are refreshed on "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". and decay one at a time.\n"
			.."\n"
			.."Each Stack of "..CKWord("Focus", "Focus_rgb").." grants:\n"
			..Dot_green.." {power:%s} Ranged "..CKWord("Finesse", "Finesse_rgb").." strength,\n"
			..Dot_green.." {reload_speed:%s} Reload Speed.\n"
			.."\n"
			..CPhrs("Fns_note"),
		ru = "Убийства выстрелами в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." дают {stacks:%s} заряда "..CKWord("Концентрации", "Focus_rgb_ru")..".\n" -- Концентрация снайпера
			.."\n"
			..CPhrs("Can_proc_mult_str")
			..Dot_nc.." Максимум {max_stacks} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			..Dot_nc.." Заряды обновляются при попадании в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru").." и сбрасываются по одному.\n"
			.."\n"
			.."Каждый заряд "..CKWord("Концентрации", "Focus_rgb_ru").." даёт:\n"
			..Dot_green.." {reload_speed:%s} к скорости перезарядки,\n"
			..Dot_green.." {power:%s} к усилению "..CKWord("ловкости", "lovkosti_rgb_ru").." для дальнобойных атак.\n"
			.."\n"
			..CPhrs("Fns_note"),
	},
	--[+ KEYSTONE 1-1 - Chink in their Armour +]--	08.12.2025
	["loc_talent_veteran_snipers_focus_rending_bonus_description"] = { -- rending: +10%, stacks: 10, +colors, +note
		en = Dot_green.." {rending:%s} "..CKWord("Rending", "Rending_rgb").." when at, or over, {stacks:%s} Stacks of "..CKWord("Focus", "Focus_rgb")..".\n"
			.."\n"
			..CPhrs("Rend_note"),
		ru = Dot_green.." {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони, когда у вас {stacks:%s} или более зарядов "..CKWord("Концентрации", "Focus_rgb_ru")..".\n" -- Щель в их броне -- руоф Щель в броне
			.."\n"
			..CPhrs("Rend_note"),
	},
	--[+ KEYSTONE 1-2 - Tunnel Vision +]--	08.12.2025
	["loc_talent_veteran_snipers_focus_stamina_bonus_desc"] = { -- toughness_replenish_multiplier: +5%, stamina: 10%, +colors
		en = Dot_green.." {toughness_replenish_multiplier:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment per "..CKWord("Focus", "Focus_rgb").." Stack.\n"
			..CPhrs("Dont_intw_coher_toughn").."\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb").." restored on "..CKWord("Weakspot", "Weakspot_rgb").." kills.\n"
			..CPhrs("Can_proc_mult"),
		ru = Dot_green.." {toughness_replenish_multiplier:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru").." за каждый заряд "..CKWord("Концентрации", "Focus_rgb_ru")..".\n" -- Тоннельное зрение
			..CPhrs("Dont_intw_coher_toughn_ru").."\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru").." восстанавливается при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".\n"
			..CPhrs("Can_proc_mult"),
	},
	--[+ KEYSTONE 1-3 - Long Range Assassin +]--	08.12.2025
	["loc_talent_veteran_snipers_focus_increased_stacks_description"] = { -- stacks: 10, new_stacks: 15, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." Maximum "..CKWord("Focus", "Focus_rgb").." Stacks. Increased from {stacks:%s} to {new_stacks:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." к максимуму зарядов "..CKWord("Концентрации", "Focus_rgb_ru")..". Увеличивается с {stacks:%s} до {new_stacks:%s}.", -- Дальнобойный ассасин
	},
	--[+ KEYSTONE 2 - Focus Target! +]--	08.12.2025
	["loc_talent_veteran_improved_tag_description"] = { -- time: 1.5, max_stacks: 5, damage: +5%, s->seconds, +colors
		en = "Gain "..CNumb("1", "n_1_rgb").." Stack of "..CKWord("Focus Target", "Focus_Target_rgb").." every {time:%s} seconds.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			.."Tagging an Enemy applies all "..CKWord("Focus Target", "Focus_Target_rgb").." Stacks to them and resets your Stacks to "..CNumb("1", "n_1_rgb")..".\n"
			..Dot_nc.." Enemies tagged with this Talent are highlighted Yellow.\n"
			.."\n"
			.."Per Stack, enemy takes:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..", up to "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb").." "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Lasts "..CNumb("25", "n_25_rgb").." seconds.",
		ru = "Вы получаете "..CNumb("1", "n_1_rgb").." заряд "..CKWord("Важной цели", "Focus_Target_rgb_ru").." каждые {time:%s} секунды.\n" -- Важная цель!
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			.."\n"
			.."Отметка врага применяет все заряды "..CKWord("Важной цели", "Focus_Target_rgb_ru").." к нему и сбрасывает ваши заряды до "..CNumb("1", "n_1_rgb")..".\n"
			..Dot_nc.." Враги, отмеченные этим талантом, подсвечиваются жёлтым цветом.\n"
			.."\n"
			.."За каждый заряд враг получает:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..", до "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb")..".\n"
			..Dot_nc.." Длится "..CNumb("25", "n_25_rgb").." секунд.",
	},
	--[+ KEYSTONE 2-1 - Target Down! +]--	08.12.2025
	["loc_talent_veteran_improved_tag_dead_bonus_description"] = { -- toughness: 5%, stamina: 5%, +colors
		en = "When an enemy tagged with "..CKWord("Focus Target", "Focus_Target_rgb").." dies, you and Allies in "..CKWord("Coherency", "Coherency_rgb").." restore per Stack:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." and\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..".",
		ru = "Когда враг, отмеченный как "..CKWord("Важная цель", "Focus_Targt_rgb_ru")..", умирает, вы и союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." восстанавливаете за каждый заряд:\n" -- Цель поражена!
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." и\n"
			..Dot_green.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".",
	},
	--[+ KEYSTONE 2-2 - Redirect Fire! +]--	08.12.2025
	["loc_talent_veteran_improved_tag_dead_coherency_bonus_description"] = { -- damage: +2.5%, duration: 10, s->seconds, +colors
		en = "When an enemy tagged with "..CKWord("Focus Target", "Focus_Target_rgb").." dies, you and Allies in "..CKWord("Coherency", "Coherency_rgb").." gain per Stack:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "Когда враг, отмеченный как "..CKWord("Важная цель", "Focus_Targt_rgb_ru")..", умирает, вы и союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получаете за каждый заряд:\n" -- Перевести огонь!
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.",
	},
	--[+ KEYSTONE 2-3 - Focused Fire +]--	08.12.2025
	["loc_talent_veteran_improved_tag_more_damage_description"] = { -- max_stacks: 6, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." Maximum "..CKWord("Focus Target", "Focus_Target_rgb").." Stacks. Increased from "..CNumb("4", "n_4_rgb").." to {max_stacks:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." к максимуму зарядов "..CKWord("Важной цели", "Focus_Target_rgb_ru")..". Увеличивается с "..CNumb("4", "n_4_rgb").." до {max_stacks:%s}.", -- Сосредоточенный огонь
	},
	--[+ KEYSTONE 3 - Weapons Specialist +]--	08.12.2025
	["loc_talent_veteran_weapon_switch_new_description"] = { -- ranged_stacks: 10, melee_stacks: 1, ranged_attack_speed: +2%, reload_speed: 2%, ranged_crit_chance: +33%, ranged_duration: 5, melee_attack_speed: +15%, dodge_modifier: 10%, melee_duration: 10, s->seconds, +colors
		en = "Gain "..CKWord("Ranged Specialist", "Rangedspec_rgb").." on Melee kills.\n"
			..Dot_nc.." Stacks {ranged_stacks:%s} times.\n"
			.."\n"
			.."Gain "..CKWord("Melee Specialist", "Meleespec_rgb").." on Ranged kill.\n"
			..Dot_nc.." Stacks {melee_stacks:%s} times.\n"
			.."\n"
			.."When you wield your Ranged weapon, you activate your "..CKWord("Ranged Specialist", "Rangedspec_rgb").." effect, to gain per Stack:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} Reload Speed, up to "..CNumb("20%", "pc_20_rgb")..",\n"
			..Dot_green.." {ranged_attack_speed:%s} Ranged Attack Speed, up to "..CNumb("20%", "pc_20_rgb")..",\n"
			..Dot_green.." {ranged_crit_chance:%s} Ranged "..CKWord("Critical Hit", "Crit_hit_rgb").." Chance on your next shot. Guaranteed "..CKWord("Crit", "Crit_rgb").." at "..CNumb("3", "n_3_rgb").." Stacks.\n"
			..Dot_nc.." Lasts {ranged_duration:%s} seconds.\n"
			.."\n"
			.."When you wield your Melee weapon, you activate your "..CKWord("Melee Specialist", "Meleespec_rgb").." effect, to gain:\n"
			..Dot_green.." {melee_attack_speed:%s} Melee Attack Speed,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} Dodge Speed,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} Dodge Distance.\n"
			..Dot_nc.." Lasts {melee_duration:%s} seconds.",
		ru = "Вы получаете заряды "..CKWord("Специалиста-стрелка", "Rangedspec_rgb_ru").." за убийства в ближнем бою.\n" -- Специалист по оружию -- руоф Специалист по вооружениям
			..Dot_nc.." Суммируется до {ranged_stacks:%s} раз.\n"
			.."\n"
			.."Вы получаете заряд "..CKWord("Специалиста-рукопашника", "Meleespec_rgb_ru").." за убийство в дальнем бою.\n"
			..Dot_nc.." Суммируется {melee_stacks:%s} раз.\n"
			.."\n"
			.."Когда вы берёте в руки оружие дальнего боя, вы активируете эффект "..CKWord("Специалиста-стрелка", "Rangedspec_rgb_ru").." и получаете за каждый заряд:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} к скорости перезарядки, до максимум "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb")..",\n"
			..Dot_green.." {ranged_attack_speed:%s} к скорострельности, до максимум "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb")..",\n"
			..Dot_green.." {ranged_crit_chance:%s} к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." для вашего следующего выстрела. Гарантированный "..CKWord("критический выстрел", "krit_vystrel_rgb_ru").." при "..CNumb("3", "n_3_rgb").." зарядах.\n"
			..Dot_nc.." Длится {ranged_duration:%s} секунд.\n"
			.."\n"
			.."Когда вы берёте в руки оружие ближнего боя, вы активируете эффект "..CKWord("Специалиста-рукопашника", "Meleespec_rgb_ru").." и получаете:\n"
			..Dot_green.." {melee_attack_speed:%s} к скорости атаки,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} к скорости уклонений,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} к дистанции уклонений.\n"
			..Dot_nc.." Длится {melee_duration:%s} секунд.",
	},
	--[+ KEYSTONE 3-1 - Always Prepared +]--	08.12.2025
	["loc_talent_veteran_weapon_switch_replenish_ammo_description"] = { -- ammo: 3.3%, +colors
		en = "On activation, "..CKWord("Ranged Specialist", "Rangedspec_rgb").." restores from Reserves per Stack:\n"
			..Dot_green.." {ammo:%s} of your missing Clip ammo, up to "..CNumb("33%", "pc_33_rgb")..".\n"
			..Dot_nc.." Rounded up.",
		ru = "При активации "..CKWord("Специалиста-стрелка", "Rangedspec_rgb_ru").." вы заряжаете в ваш магазин из резерва за каждый заряд:\n" -- Всегда готов
			..Dot_green.." {ammo:%s} недостающих патронов, до максимальных "..CNumb("33%", "pc_33_rgb")..".\n"
			..Dot_nc.." Округляется в большую сторону.",
	},
	--[+ KEYSTONE 3-2 - Invigorated +]--	08.12.2025
	["loc_talent_veteran_weapon_switch_replenish_stamina_new_description"] = { -- stamina: 20%, stamina_reduction: 25%, +colors
		en = "On activation, "..CKWord("Melee Specialist", "Meleespec_rgb").." grants you for {duration:%s} seconds:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{stamina:%s} Maximum "..CKWord("Stamina", "Stamina_rgb")..",\n"
			..Dot_green.." {stamina_reduction:%s} "..CKWord("Stamina", "Stamina_rgb").." Cost Reduction.",
		ru = "При активации "..CKWord("Специалиста-рукопашника", "Meleespec_rgb_ru").." даёт вам на {duration:%s} секунды:\n" -- Ободрение
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{stamina:%s} к максимуму "..CKWord("выносливости", "vynoslivosti_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{stamina_reduction:%s} от затрат "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".",
	},
	--[+ KEYSTONE 3-3 - On Your Toes +]--	08.12.2025
	["loc_talent_veteran_weapon_switch_replenish_toughness_description"] = { -- toughness: 20%, cooldown: 3, s->seconds, +colors
		en = "Activating "..CKWord("Melee Specialist", "Meleespec_rgb").." or "..CKWord("Ranged Specialist", "Rangedspec_rgb").." replenishes:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds each.",
		ru = "Активация "..CKWord("Специалиста-рукопашника", "Meleespec_rgb_ru").." или "..CKWord("Специалиста-стрелка", "Rangedspec_rgb_ru").." восполняет:\n" -- Наготове
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунды каждый.",
	},
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Exhilarating Takedown +]--	08.12.2025
	["loc_talent_veteran_toughness_on_weakspot_kill_alt_desc"] = { -- toughness: 15%, toughness_damage_reduction: +10%, duration: 8, stacks: 3, s->seconds, +colors
		en = "On Ranged "..CKWord("Weakspot", "Weakspot_rgb").." Kill, you gain:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..",\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..CPhrs("Can_proc_mult")
			..CPhrs("Can_be_refr_drop_1"),
		ru = "При убийстве в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." из дальнобойного оружия вы получаете на {duration:%s} секунд:\n" -- Подбадривающее убийство -- руоф Бодрящее сокрушение
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..",\n"
			..Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			..Dot_nc.." Суммируется {stacks:%s} раза.\n"
			.."\n"
			..CPhrs("Can_proc_mult_str")
			..CPhrs("Can_be_refr_drop_1"),
	},
	--[+ Passive 2 - Confirmed Kill +]--	08.12.2025
	["loc_talent_veteran_toughness_on_elite_kill_desc"] = { -- toughness: 10%, toughness_over_time: 20%, duration: 10, s->seconds, +colors
		en = "On Elite or Specialist Kill:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." restored instantly,\n"
			..Dot_green.." "..CNumb("2%", "pc_2_rgb").." "..CKWord("Toughness", "Toughness_rgb").." per second, up to {toughness_over_time:%s} over {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_proc_mult"),
		ru = "При убийстве элитного врага или специалиста:\n" -- Подтверждённое убийство -- руоф Подтвержденное убийство
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается мгновенно и ещё\n"
			..Dot_green.." "..CNumb("2%", "pc_2_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду, вплоть до {toughness_over_time:%s} в течение {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_proc_mult"),
	},
	--[+ Passive 3 - Out for Blood +]--	08.12.2025
	["loc_talent_veteran_all_kills_replenish_toughness_description"] = { -- toughness: 5%, +colors
		en = Dot_green.." {toughness:%s} of Maximum "..CKWord("Toughness", "Toughness_rgb").." replenished on any Kill.\n"
			.."\n"
			..Dot_green.." Procs on Melee and Ranged kills as well as on kills from explosions and DoTs.",
		ru = Dot_green.." {toughness:%s} максимальной "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при любом убийстве.\n" -- На тропе войны -- руоф В поисках крови
			.."\n"
			..Dot_green.." Срабатывает при убийствах в ближнем и дальнем бою, а также при убийствах от взрывов и эффектов наносящих урон с течением времени.",
	},
	--[+ Passive 4 - Volley Adept +]--	08.12.2025
	["loc_talent_veteran_reload_speed_on_elite_kill_desc"] = { -- reload_speed: +30%, &->and
		en = Dot_green.." {reload_speed:%s} Reload Speed on Elite and Specialist Enemy Kill.\n"
			.."\n"
			..Dot_nc.." Consumed on Reload.\n"
			..Dot_nc.." This also increases the speed of the loading special action of Combat Shotguns.",
		ru = Dot_green.." {reload_speed:%s} к скорости перезарядки при убийстве элитных врагов или специалистов.\n" -- Умелый залп -- руоф Адепт залпа
			.."\n"
			..Dot_nc.." Расходуется при перезарядке.\n"
			..Dot_nc.." Этот талант также увеличивает скорость перезарядки специальных патронов для боевых дробовиков.",
	},
	--[+ Passive 5 - Longshot +]--	08.12.2025
	["loc_talent_veteran_increased_damage_based_on_range_new_desc"] = { -- ranged_damage: +20%, ranged_close: 12.5, max_ranged_damage: +25%, ranged_far: 30, +colors
		en = Dot_green.." {ranged_damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." at a distance within {ranged_close:%s} meters.\n"
			.."\n"
			.."Against targets beyond {ranged_close:%s} meters, Ranged "..CKWord("Damage", "Damage_rgb").." increases linearly up to {max_ranged_damage:%s} at {ranged_far:%s} meters:\n"
			.."_______________________________\n"
			.."Distance ("..CKWord("m", "n_meter_rgb").."):   "..CNumb("1", "n_1_rgb").."| {ranged_close:%s}|   "..CNumb("15", "n_15_rgb").."|  "..CNumb("20", "n_20_rgb").."|   "..CNumb("25", "n_25_rgb").."| "..CNumb("30", "n_30_rgb")..CNumb("+", "n_plus_rgb").."\n"
			..CKWord("Damage", "Damage_rgb").." ("..CKWord("%", "pc_rgb").."):  "..CNumb("10", "n_10_rgb").."|    "..CNumb("10", "n_10_rgb").."| "..CKWord("~12", "n__12_rgb").."| "..CKWord("~16", "n__16_rgb").."| "..CKWord("~20", "n__20_rgb").."| "..CNumb("25", "n_25_rgb").."\n"
			.."_______________________________\n",
		ru = Dot_green.." {ranged_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." в дальнем бою на расстоянии до {ranged_close:%s} метров.\n" -- Дальнобойный выстрел -- руоф Далекая перспектива
			.."\n"
			.."Против целей за пределами {ranged_close:%s} метров, "..CKWord("урон", "uron_rgb_ru").." в дальнем бою увеличивается линейно до {max_ranged_damage:%s} на {ranged_far:%s} метрах:\n"
			.."_______________________________\n"
			.."Дистанция("..CKWord("м", "n_metr_rgb").."): "..CNumb("1", "n_1_rgb").."| {ranged_close:%s}|  "..CNumb("15", "n_15_rgb").."|   "..CNumb("20", "n_20_rgb").."|  "..CNumb("25", "n_25_rgb").."|  "..CNumb("30", "n_30_rgb")..CNumb("+", "n_plus_rgb").."\n"
			..CKWord("Урон", "Uron_rgb_ru").." ("..CKWord("%", "pc_rgb").."):        "..CNumb("10", "n_10_rgb").."|    "..CNumb("10", "n_10_rgb").."| "..CKWord("~12", "n__12_rgb").."| "..CKWord("~16", "n__16_rgb").."| "..CKWord("~20", "n__20_rgb").."|  "..CNumb("25", "n_25_rgb").."\n"
			.."_______________________________\n",
	},
	--[+ Passive 6 - Covering Fire +]--	08.12.2025
	["loc_talent_veteran_replenish_toughness_and_boost_allies_desc"] = { -- radius: 8, toughness: 15%, base_damage: +15%, duration: 6, &->and s->seconds, +colors
		en = "When you Kill an Enemy with a Ranged Attack, Allies within {radius:%s} meters of the target gain:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..",\n"
			..Dot_green.." {base_damage:%s} to all Base "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "Когда вы убиваете врага из оружия дальнего боя, союзники в радиусе {radius:%s} метров от цели получают:\n" -- Прикрывающий огонь -- руоф Прикрытие огнем
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." и\n"
			..Dot_green.." {base_damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 7 - One Motion +]--	08.12.2025
	["loc_talent_veteran_reduce_swap_time_desc"] = { -- swap_speed: +50%
		en = Dot_green.." {swap_speed} Swap Speed.\n"
			.."\n"
			..Dot_nc.." This Reduces the time of wielding actions when Swapping item slots (Weapons, Grenades, Stimms, Medpacks, Ammo crates, Books, etc).",
		ru = Dot_green.." {swap_speed} к скорости смены оружия и предметов.\n" -- В одно движение -- руоф Одно движение
			.."\n"
			..Dot_nc.." Этот талант сокращает время затрачиваемое на смену слотов предметов (оружие, гранаты, стимуляторы, аптечки, ящики с боеприпасами, книги и т.д.).",
	},
	--[+ Passive 8 - Tactical Reload +]--	08.12.2025
	["loc_talent_veteran_reload_speed_non_empty_mag_desc"] = { -- reload_speed: +25%
		en = Dot_green.." {reload_speed:%s} Reload Speed if your Weapon contains Ammo.\n"
			.."\n"
			..Dot_nc.." This also increases the speed of the loading special action of Combat Shotguns.",
		ru = Dot_green.." {reload_speed:%s} к скорости перезарядки, если в магазине остались патроны.\n" -- Тактическая перезарядка
			.."\n"
			..Dot_nc.." Этот талант также увеличивает скорость перезарядки специальных патронов для боевых дробовиков.",
	},
	--[+ Passive 9 - Close Order Drill +]--	08.12.2025
	["loc_talent_veteran_toughness_damage_reduction_per_ally_description"] = { -- toughness: +33%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("11%", "pc_11_rgb").." "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." per Ally in "..CKWord("Coherency", "Coherency_rgb")..". Stacks up to {toughness:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("11%", "pc_11_rgb").." к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." за каждого союзника в "..CKWord("сплочённости", "splochennosti_rgb_ru")..". Суммируется до {toughness:%s}.", -- Строевая подготовка
	},
	--[+ Passive 10 - Superiority Complex +]--	08.12.2025
	["loc_talent_veteran_increase_damage_vs_elites_desc"] = { -- damage: +15%, +colors
		en = Dot_green.." {damage:%s} Base "..CKWord("Damage", "Damage_rgb").." to Elite Enemies.",
		ru = Dot_green.." {damage:%s} к базовому "..CKWord("урон", "uronu_rgb_ru").." по элитным врагам.", -- Мания величия
	},
	--[+ Passive 11 - Iron Will +]--	08.12.2025
	["loc_talent_veteran_tdr_on_high_toughness_desc"] = { -- toughness_damage_reduction: +50%, toughness_percent: 75%, +colors
		en = Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." if above {toughness_percent:%s} "..CKWord("Toughness", "Toughness_rgb")..".",
		ru = Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru")..", если ваш уровень "..CKWord("стойкости", "stoikosti_rgb_ru").." выше {toughness_percent:%s}.", -- Железная воля
	},
	--[+ Passive 12 - Trench Fighter Drill +]--	08.12.2025
	["loc_talent_veteran_attack_speed_description"] = { -- melee_attack_speed: +10%
		en = Dot_green.." {melee_attack_speed:%s} Melee Attack Speed.",
		ru = Dot_green.." {melee_attack_speed:%s} к скорости атак ближнего боя.", -- Отработка окопного боя -- руоф Тренировка в окопах
	},
	--[+ Passive 13 - Field Improvisation +]--	08.12.2025
	["loc_talent_veteran_better_deployables_description"] = { -- damage_heal: +100%, toughness: 1%, &->and, +colors
		en = "Medi-Packs provide:\n"
			..Dot_green.." {damage_heal:%s} Healing Speed,\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." per second,\n"
			..Dot_green.." Cleanse "..CKWord("Corruption", "Corruption_rgb").." up to the next "..CKWord("Wound", "Wound_rgb")..".\n"
			.."\n"
			..Dot_green.." Ammo Crates also restore Grenades.",
		ru = "Медпаки дают:\n" -- Полевая импровизация
			..Dot_green.." {damage_heal:%s} к скорости лечения,\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду и\n"
			..Dot_green.." очищают "..CKWord("порчу", "porchu_rgb_ru").." вплоть до следующей "..CKWord("раны", "rany_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." Ящики с боеприпасами также восстанавливают гранаты.",
	},
	--[+ Passive 14 - Get Back in the Fight! +]--	08.12.2025
	["loc_talent_veteran_movement_bonus_on_toughness_broken_desc"] = { -- duration: 6, stamina_percent: +50%, cooldown: 30, &->and, s->seconds, +colors
		en = "When your "..CKWord("Toughness", "Toughness_rgb").." is broken, you gain:\n"
			..Dot_green.." "..CKWord("Stun", "Stun_rgb").." Immunity for {duration:%s} seconds,\n"
			..Dot_green.." Slow Immunity for {duration:%s} seconds,\n"
			..Dot_green.." {stamina_percent:%s} Maximum "..CKWord("Stamina", "Stamina_rgb")..".\n"
			.."\n"
			..Dot_nc.." Cooldown {cooldown:%s} seconds.",
		ru = "Когда ваша "..CKWord("стойкости", "stoikosti_rgb_ru").." пробита, вы получаете:\n" -- Возвращайся в бой! -- руоф Вернуться в бой!
			..Dot_green.." Иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." и\n"
			..Dot_green.." Иммунитет к замедлению на {duration:%s} секунд, а также восстанавливаете\n"
			..Dot_green.." {stamina_percent:%s} максимальной "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Восстановление {cooldown:%s} секунд.",
	},
	--[+ Passive 15 - Opening Salvo +]--	08.12.2025
	["loc_talent_veteran_bonus_crit_chance_on_ammo_desc"] = { -- ammo: 20%, crit_chance: +10%, +colors
		en = Dot_green.." {crit_chance:%s} Ranged "..CKWord("Critical Hit", "Crit_hit_rgb").." Chance for the first {ammo:%s} of Ammo after a Reload.",
		ru = Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." для первых {ammo:%s} патронов после перезарядки.", -- Открывающий залп
	},

-- !!! DOUBLE! ZEALOT - Passive 28 - Ambuscade !!!
	--[+ Passive 16 - Covert Operative +]--	08.12.2025 -- Секретный агент -- руоф Тайный оперативник
	-- ["loc_talent_zealot_increased_flanking_damage_description"] = { -- damage: +30%, +colors },

	--[+ Passive 17 - Serrated Blade +]--	08.12.2025
	["loc_talent_veteran_hits_cause_bleed_desc"] = { -- stacks: 2 -- Stack(s)->Stacks, +colors
		en = "{stacks:%s} Stacks of "..CKWord("Bleed", "Bleed_rgb").." to the target on Melee Hit.\n"
			..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Stacks.\n"
			..Dot_nc.." Lasts "..CNumb("1.5", "n_1_5_rgb").." seconds.\n"
			..Dot_nc.." Ticks every "..CNumb("0.5", "n_05_rgb").." seconds.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Above average armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Low armor "..CKWord("Damage", "Damage_rgb").." to Carapace.\n"
			..CPhrs("Cant_appl_thr_shlds"),
		ru = "{stacks:%s} заряда "..CKWord("кровотечения", "krovotechenia_rgb_ru").." получает цель при ударе в ближнем бою.\n" -- Зазубренный клинок -- руоф Зазубренное лезвие
			..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов максимум.\n"
			..Dot_nc.." Длится "..CNumb("1.5", "n_1_5_rgb").." секунды.\n"
			..Dot_nc.." Срабатывает каждые "..CNumb("0.5", "n_05_rgb").." секунды.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Выше среднего "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Низкий "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.\n"
			..CPhrs("Cant_appl_thr_shlds"),
	},
	--[+ Passive 18 - Catch a Breath +]--	08.12.2025
	["loc_talent_veteran_replenish_toughness_outside_melee_hit_desc"] = { -- toughness: 5%, range: 8, m->meters, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished per second when not targeted by Melee Attacks for {duration:%s} seconds.\n"
			.."\n"
			..Dot_nc.." This Talent goes on Cooldown for "..CNumb("5", "n_5_rgb").." seconds after Blocking or receiving Melee damage.\n"
			..CPhrs("Dont_intw_coher_toughn"),
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду восстанавливается, если по вам не попадали атаками ближнего боя более {duration:%s} секунд.\n" -- Переведи дух -- руоф Передышка
			.."\n"
			..Dot_nc.." Этот талант уходит на восстановление на "..CNumb("5", "n_5_rgb").." секунд после блокирования атаки или получения урона в ближнем бою.\n"
			..CPhrs("Dont_intw_coher_toughn"),
	},
	--[+ Passive 19 - Grenadier +]--	08.12.2025
	["loc_talent_veteran_extra_grenade_and_throw_chance_description"] = { -- ammo: 1,  20%, Grenade(s)->Grenade
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{ammo:%s} extra Grenade.\n"
			.."\n"
			..Dot_green.." {chance:%s} chance to throw an additional Grenade. Consumes only "..CNumb("1", "n_1_rgb").." Grenade.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{ammo:%s} дополнительная граната.\n" -- Гренадёр -- руоф Гренадер
			.."\n"
			..Dot_green.." {chance:%s} шанс бросить дополнительную гранату, потратив только "..CNumb("1", "n_1_rgb").." гранату.",
	},
	--[+ Passive 20 - Demolition Stockpile +]--	08.12.2025
	["loc_talent_veteran_replenish_grenade_desc"] = { -- amount: 1, time: 60, Grenade(s)->Grenade, s->seconds
		en = Dot_green.." {amount:%s} Grenade Replenished every {time:%s} seconds.",
		ru = Dot_green.." {amount:%s} граната выдаётся вам каждые {time:%s} секунд.", -- Склад взрывчатки
	},
	--[+ Passive 21 - Grenade Tinkerer +]--	08.12.2025
	["loc_talent_veteran_improved_grenades_desc"] = { -- krak_grenade: Krak Grenade, krak: +75%, frag_grenade: Frag Grenade, frag_damage: +25%, smoke_grenade: Smoke Grenade, smoke: +100%, &->and, +colors
		en = "{krak_grenade:%s}:\n"
			..Dot_green.." {krak:%s} explosion "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			.."{frag_grenade:%s}:\n"
			..Dot_green.." {frag_damage:%s} explosion "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {frag_damage:%s} Radius.\n"
			..Dot_red.." Does not affect "..CKWord("Bleeds", "Bleeds_rgb").." applied by the explosion.\n"
			.."\n"
			.."{smoke_grenade:%s}:\n"
			..Dot_green.." {smoke:%s} Duration. Increased from "..CNumb("15", "n_15_rgb").." to "..CNumb("30", "n_30_rgb").." seconds.",
		ru = "{krak_grenade:%s}:\n" -- Гранатный мастер -- руоф Любитель гранат
			..Dot_green.." {krak:%s} к "..CKWord("урону", "uronu_rgb_ru").." от взрыва.\n"
			.."\n"
			.."{frag_grenade:%s}:\n"
			..Dot_green.." {frag_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." от взрыва,\n"
			..Dot_green.." {frag_damage:%s} к радиусу.\n"
			..Dot_red.." Не влияет на "..CKWord("кровотечение", "krovotechenie_rgb_ru")..", наложенное взрывом.\n"
			.."\n"
			.."{smoke_grenade:%s}:\n"
			..Dot_green.." {smoke:%s} к длительности. Длительность увеличена с "..CNumb("15", "n_15_rgb").." до "..CNumb("30", "n_30_rgb").." секунд.",
	},
	--[+ Passive 22 - Precision Strikes +]--	08.12.2025
	["loc_talent_veteran_increased_weakspot_damage_desc"] = { -- damage: +30%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." of Melee and Ranged attacks.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." для атак ближнего и дальнего боя.", -- Точные удары
	},
	--[+ Passive 23 - Deadshot +]--	08.12.2025
	["loc_talent_veteran_ads_drains_stamina_boost_desc"] = { -- crit_chance: +25%, sway_reduction: +60%, stamina: 0.75, stamina_per_shot: 0.1, &->and, +colors
		en = "While Aiming with "..CKWord("Stamina", "Stamina_rgb").." above "..CNumb("0", "n_0_rgb").." you gain:\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Chance", "Crit_chance_rgb")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{sway_reduction:%s} Weapon Sway,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("19%", "pc_19_rgb").." Spread,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("12%", "pc_12_rgb").." Recoil.\n"
			.."Aiming also drains "..CKWord("Stamina", "Stamina_rgb")..":\n"
			..Dot_red.." {stamina:%s} per second,\n"
			..Dot_red.." {stamina_per_shot:%s} per shot.\n"
			.."\n"
			..Dot_red.." This talent has no effect on Plasma Gun.",
		ru = "Пока вы целитесь и ваш уровень "..CKWord("выносливости", "vynoslivosti_rgb_ru").." выше "..CNumb("0", "n_0_rgb")..", вы получаете:\n" -- Смертельный выстрел
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{sway_reduction:%s} к раскачиванию прицела,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("19%", "pc_19_rgb").." к разбросу,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("12%", "pc_12_rgb").." к отдаче.\n"
			.."Прицеливание при этом расходует "..CKWord("выносливость", "vynoslivost_rgb_ru")..":\n"
			..Dot_red.." {stamina:%s} в секунду и\n"
			..Dot_red.." {stamina_per_shot:%s} за каждый выстрел.\n"
			.."\n"
			..Dot_red.." Этот талант не действует на плазмомёт.",
	},
	--[+ Passive 24 - Born Leader +]--	08.12.2025
	["loc_talent_veteran_allies_share_toughness_coherency_increase_description"] = { -- radius: +50%, toughness: 20%, +colors
		en = Dot_green.." {radius:%s} "..CKWord("Coherency", "Coherency_rgb").." radius.\n"
			.."\n"
			..Dot_green.." {toughness:%s} of any "..CKWord("Toughness", "Toughness_rgb").." you replenish is also granted to Allies in "..CKWord("Coherency", "Coherency_rgb")..".",
		ru = Dot_green.." {radius:%s} к радиусу "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Прирождённый лидер -- руоф Прирожденный лидер
			.."\n"
			..Dot_green.." {toughness:%s} от любой "..CKWord("стойкости", "stoikosti_rgb_ru")..", восстанавливаемой вами, восстанавливается союзникам в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".",
	},
	--[+ Passive 25 - Leave No One Behind +]--	08.12.2025
	["loc_talent_veteran_movement_speed_towards_downed_description"] = { -- revive_speed: +20%, movement_speed: +20%, damage_reduction: +33%, duration: 5, &->and, s->seconds, +colors
		en = "When moving towards a Knocked Down or Incapacitated Ally, you gain:\n"
			..Dot_green.." {revive_speed:%s} Assist Speed,\n"
			..Dot_green.." {revive_speed:%s} Revive Speed,\n"
			..Dot_green.." {movement_speed:%s} Movement Speed, and\n"
			..Dot_green.." "..CKWord("Stun", "Stun_rgb").." Immunity.\n"
			.."\n"
			.."Whenever you Revive a Knocked Down Ally, they receive for {duration:%s} seconds:\n"
			..Dot_green.." {damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Reduction.",
		ru = "При движении к сбитому с ног или выведенному из строя союзнику вы получаете:\n" -- Своих не бросаем -- руоф Никого не оставляйте позади
			..Dot_green.." {revive_speed:%s} к скорости поднятия,\n"
			..Dot_green.." {revive_speed:%s} к скорости возрождения,\n"
			..Dot_green.." {movement_speed:%s} к скорости движения, а также\n"
			..Dot_green.." иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru")..".\n"
			.."\n"
			.."Каждый раз, когда вы возрождаете сбитого с ног союзника, он получает на {duration:%s} секунд:\n"
			..Dot_green.." {damage_reduction:%s} к снижению "..CKWord("урона", "urona_rgb_ru")..".",
	},
	--[+ Passive 26 - Demolition Team +]--	08.12.2025
	["loc_talent_veteran_grenade_on_elite_kills_coop_desc"] = { -- chance: 5%
		en = Dot_green.." {chance:%s} chance to replenish a Grenade when you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." kills an Elite or Specialist Enemy.\n"
			.."\n"
			..Dot_green.." Procs regardless of whether you are in "..CKWord("Coherency", "Coherency_rgb").." with Allies or not.",
		ru = Dot_green.." {chance:%s} шанс восстановить гранату, когда вы или ваш союзник убиваете элитного врага или специалиста.\n" -- Команда подрывников -- руоф Группа подрыва
			.."\n"
			..Dot_green.." Срабатывает независимо от того, находитесь ли вы в "..CKWord("сплочённости", "splochennosti_rgb_ru").." с союзниками или нет.",
	},
	--[+ Passive 27 - Reciprocity +]--	08.12.2025
	["loc_talent_veteran_dodging_grants_crit_description"] = { -- crit_chance: +5%, duration: 8, stacks: 5, s->seconds, +colors
		en = Dot_green.." {crit_chance:%s} "..CKWord("Critical Hit", "Crit_hit_rgb").." Chance for {duration:%s} seconds on successful Dodge.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			.." Ineffective against:\n"
			.."   "..Dot_red.." Gunner/Reaper/Sniper shots,\n"
			.."   "..Dot_red.." Pox Hound leap,\n"
			.."   "..Dot_red.." Trapper net,\n"
			.."   "..Dot_red.." Mutant grab.",
		ru = Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на {duration:%s} секунд при успешном уклонении.\n" -- Взаимообмен -- руоф Взаимная выгода
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			.." Не работает против:\n"
			.."   "..Dot_red.." Прыжка заражённой гончей,\n"
			.."   "..Dot_red.." Сети скаба-сеточника,\n"
			.."   "..Dot_red.." Захвата мутанта,\n"
			.."   "..Dot_red.." Выстрелов пулемётчика, жнеца и снайпера.",
	},
	--[+ Passive 28 - Duck and Dive +]--	08.12.2025
	["loc_talent_veteran_stamina_on_ranged_dodge_desc"] = { -- stamina: +30%
		en = Dot_green.." {stamina:%s} of Max "..CKWord("Stamina", "Stamina_rgb").." on avoiding Ranged Attacks by Dodging, Sprinting or Sliding.\n"
			.."\n"
			..Dot_nc.." Requires more than "..CNumb("0", "n_0_rgb").." "..CKWord("Stamina", "Stamina_rgb")..".\n"
			..Dot_nc.." Has an internal Cooldown of "..CNumb("3", "n_3_rgb").." seconds.",
		ru = Dot_green.." {stamina:%s} к максимальной "..CKWord("выносливости", "vynoslivosti_rgb_ru").." вы получаете при избегании дальнобойных атак с помощью уклонений, бега или скольжения.\n" -- Пригнись и увернись -- руоф Голову в песок
			.."\n"
			..Dot_nc.." Должно быть больше "..CNumb("0", "n_0_rgb").." "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n"
			..Dot_nc.." Имеет скрытое "..CNumb("3", "n_3_rgb").."-секундное восстановление.",
	},
	--[+ Passive 29 - Fully Loaded +]--	08.12.2025
	["loc_talent_veteran_ammo_increase_desc"] = { -- ammo: +25%
		en = Dot_green.." {ammo:%s} Maximum Ammo in reserve.\n"
			.."\n"
			..Dot_nc.." Rounds down.",
		ru = Dot_green.." {ammo:%s} к максимуму боеприпасов в резерве.\n" -- Полный запас -- руоф Полный заряд
			.."\n"
			..Dot_nc.." Округляется в меньшую сторону.",
	},
	--[+ Passive 30 - Tactical Awareness +]--	08.12.2025
	["loc_talent_veteran_elite_kills_reduce_cooldown_alt_desc"] = { -- regen: +100%, duration: 6, s->seconds, +colors
		en = "On Specialist Kill:\n"
			..Dot_green.." {regen:%s} "..CKWord("Combat Ability", "Cmbt_abil_rgb").." Cooldown Regeneration for {duration:%s} seconds.",
		ru = "При убийстве специалиста:\n" -- Тактическая осведомлённость -- руоф Тактическая осведомленность
			..Dot_green.." {regen:%s} к восстановлению "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." на {duration:%s} секунд.",
	},
	--[+ Passive 31 - Desperado +]--	08.12.2025
	["loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse_desc"] = { -- crit_chance: +10%, finesse: +25%, &->and, +colors
		en = Dot_green.." {crit_chance:%s} Melee "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb")..".\n"
			..Dot_green.." {finesse:%s} Melee "..CKWord("Finesse", "Finesse_rgb").." Bonus.\n"
			.."\n"
			..CPhrs("Fns_note"),
		ru = Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." в ближнем бою.\n" -- Сорвиголова
			..Dot_green.." {finesse:%s} к усилению "..CKWord("ловкости", "lovkosti_rgb_ru").." в ближнем бою.\n"
			.."\n"
			..CPhrs("Fns_note"),
	},
	--[+ Passive 32 - Keep Their Heads Down! +]--	08.12.2025
	["loc_talent_veteran_increase_suppression_desc"] = { -- suppression: +75%
		en = Dot_green.." {suppression:%s} Ranged Attack Suppression.",
		ru = Dot_green.." {suppression:%s} к подавлению врагов выстрелами.", -- Не давай им поднять головы! -- руоф Пригнитесь!
	},
	--[+ Passive 33 - Competitive Urge +]--	08.12.2025
	["loc_talent_veteran_ally_kills_increase_damage_description"] = { -- proc_chance: 2.5%, damage: +20%, melee_impact: +20%, suppression: +20%, duration: 8, &->and, s->seconds, +colors
		en = "Whenever an Ally kills an Enemy you have a {proc_chance:%s} chance to gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} Base "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {melee_impact:%s} Melee "..CKWord("Impact", "Impact_rgb")..",\n"
			..Dot_green.." {suppression:%s} Suppression dealt.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Impact_note"),
		ru = "Каждый раз, когда союзник убивает врага, у вас есть {proc_chance:%s} шанс получить на {duration:%s} секунд:\n" -- Состязательный мотив
			..Dot_green.." {damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {suppression:%s} к подавлению врагов.\n"
			..Dot_green.." {melee_impact:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." в ближнем бою,\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Impact_note"),
	},
	--[+ Passive 34 - Rending Strikes +]--	08.12.2025
	["loc_talent_veteran_rending_bonus_desc"] = { -- rending_multiplier: +10%, +colors
		en = Dot_green.." {rending_multiplier:%s} "..CKWord("Rending", "Rending_rgb").." to all weapons.\n"
			.."\n"
			..CNote("Rend_note"),
		ru = Dot_green.." {rending_multiplier:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони для всего оружия.\n" -- Пробивающие удары -- руоф Разрушительные удары
			.."\n"
			..CNote("Rend_note"),
	},
	--[+ Passive 35 - Agile Engagement +]--	08.12.2025
	["loc_talent_veteran_kill_grants_damage_to_other_slot_desc"] = { -- damage: +25%, duration: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." on killing an enemy with a Melee attack.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..Dot_green.." {damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." on killing an enemy with a Ranged attack.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." в дальнем бою при убийстве врага атакой ближнего боя.\n" -- Проворное наступление -- руоф Ловкое взаимодействие
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." в ближнем бою при убийстве врага атакой дальнего боя.\n"
			..Dot_nc.." Длится {duration:%s} секунд.",
	},
	--[+ Passive 36 - Skirmisher +]--	08.12.2025
	["loc_talent_veteran_damage_damage_after_sprinting_or_sliding_desc"] = { -- base_damage: +6.25%, duration: 10, stacks: 4, s->seconds, +colors
		en = Dot_green.." {base_damage:%s} to all Base "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds after Sprinting or Sliding.\n"
			..Dot_nc.." Stacks {stacks:%s} times.",
		ru = Dot_green.." {base_damage:%s} ко всему базовому "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд после бега или скольжения.\n" -- Застрельщик
			..Dot_nc.." Суммируется до {stacks:%s} раз.",
	},
	--[+ Passive 37 - Shock Trooper +]--	08.12.2025
	["loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit_desc"] = { -- +colors
		en = Dot_green.." "..CKWord("Critical Shots", "Crit_shots_rgb").." with Las-weapons consume no Ammo.",
		ru = Dot_green.." "..CKWord("Критические выстрелы", "Krit_vystrely_rgb_ru").." из лазерного оружия не потребляют боеприпасы.", -- Штурмовик
	},
	--[+ Passive 38 - Kill Zone +]--	08.12.2025
	["loc_talent_veteran_ranged_power_out_of_melee_new_desc"] = { -- ranged_damage: +20%, radius: 8, m->meters, +colors
		en = "{ranged_damage:%s} Base Ranged "..CKWord("Damage", "Damage_rgb").." when you have avoided Melee Attacks for {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." This Talent goes on Cooldown for {cooldown:%s} seconds after Blocking or receiving Melee damage.\n",
		ru = "{ranged_damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru").." в дальнем бою, если вы избегали атак ближнего боя более {cooldown:%s} секунд.\n" -- Зона поражения
			.."\n"
			..Dot_nc.." Этот талант уходит на восстановление на {cooldown:%s} секунд после блокирования атаки или получения урона в ближнем бою.\n",
	},

-- !!! DOUBLE! ARBITES - Passive 35 - Priority Endowment !!!
	--[+ Passive 39 - Lock and Load +]--	08.12.2025 -- Оружие к бою 
	-- ["loc_talent_adamant_clip_size_alt_desc"] = { -- clip_size: +25% },

	--[+ Passive 40 - Bring it Down! +]--	08.12.2025
	["loc_talent_veteran_big_game_hunter_description"] = { -- damage: +20%, &->and, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." to Ogryns and Monstrosities.\n"
			.."\n"
			..Dot_red.." Does not buff "..CKWord("Damage", "Damage_rgb").." against Captains/Twins.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." по огринам и чудовищам.\n" -- Убей их! -- руоф Убивай!
			.."\n"
			..Dot_red.." Не усиливает "..CKWord("урон", "uron_rgb_ru").." против капитанов и близнецов.",
	},
	--[+ Passive 41 - Onslaught +]--	08.12.2025
	["loc_talent_veteran_continous_hits_apply_rending_description"] = { -- rending_multiplier: 2.5%, duration: 5, max_stacks: 16, +colors
		en = "On continuous hits to a Single target:\n"
			..Dot_green.." {rending_multiplier:%s} "..CKWord("Brittleness", "Brittleness_rgb").." for {duration:%s} seconds.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Brtl_note"),
		ru = "При повторных атаках по одной цели на неё накладывается:\n" -- Натиск
			..Dot_green.." {rending_multiplier:%s} "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони на {duration:%s} секунд.\n"
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Brtl_note"),
	},
	--[+ Passive 42 - Exploit Weakness +]--	08.12.2025
	["loc_talent_veteran_crits_rend_alt_description"] = { -- damage: 20%, duration: 6, s->seconds, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds on Melee "..CKWord("Critical Hits", "Crit_hits_rgb")..".",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд при "..CKWord("критическом ударе", "krit_udare_rgb_ru").." атакой ближнего боя.", -- Использование слабостей
	},


--[+ ++ZEALOT - ИЗУВЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Stun Grenade +]--	13.12.2025
	["loc_ability_shock_grenade_description"] = { -- +colors
		en = "Throw a "..CKWord("Stun Grenade", "Stun_gren_rgb").." that explodes after "..CNumb("1.5", "n_1_5_rgb").." seconds and "..CKWord("Electrocutes", "Electrocutes_rgb").." all Enemies within its blast radius.\n"
			..Dot_nc.." Explosion radius: "..CNumb("8", "n_8_rgb").." meters.\n"
			..Dot_nc.." Lasts "..CNumb("8", "n_8_rgb").." seconds.\n"
			.."\n"
			..Dot_green.." "..CKWord("Staggers", "Staggers_rgb").." all Enemies in range except Mutants, Poxburster, Monstrosities and Captains/Twins.\n"
			..Dot_green.." Ignores Bulwark shields.\n"
			..CPhrs("Can_be_refr"),
		ru = "Вы бросаете "..CKWord("Оглушающую гранату", "Oglush_granatu_rgb_ru")..", которая взрывается через "..CNumb("1.5", "n_1_5_rgb").." секунды и поражает "..CKWord("электрошоком", "elektroshokom_rgb_ru").." всех врагов в радиусе поражения.\n" -- Оглушающая граната
			..Dot_nc.." Радиус поражения: "..CNumb("8", "n_8_rgb").." метров.\n"
			..Dot_nc.." Длится "..CNumb("8", "n_8_rgb").." секунд.\n"
			.."\n"
			..Dot_green.." "..CKWord("Ошеломляет", "Oshelomlaet_rgb_ru").." всех врагов кроме мутантов, взрывунов, чудовищ, капитанов и близнецов.\n"
			..Dot_green.." Игнорирует щиты бастионов.\n"
			..CPhrs("Can_be_refr"),
		-- fr = "Lancez une "..CKWord("Grenade étourdissante", "Stun_gren_rgb_fr").." qui vas "..CKWord("Électrocute", "Electrocute_rgb_fr").." et "..CKWord("Étourdit", "Stun_rgb_fr").." tous les ennemis dans son rayon d'explosion.",
		-- ["zh-tw"] = "投擲一顆 "..CKWord("眩暈手雷", "Stun_gren_rgb_tw").. "，\n"
			-- .."範圍內的敵人陷入 "..CKWord("電擊", "Electrocuted_rgb_tw").." 與 "..CKWord("致眩", "Staggers_e_rgb_tw").." 。", -- 眩暈手雷 -- 投擲一枚眩暈手雷，電擊爆炸範圍內敵人並致眩。
	},
	--[+ BLITZ 1 - Stunstorm Grenade +]--	13.12.2025
	["loc_zealot_improved_stun_grenade_desc"] = { -- talent_name: Stun Grenade, radius: +50%, +colors
		en = "Throw a "..CKWord("Stun Grenade", "Stun_gren_rgb").." that explodes after "..CNumb("1.5", "n_1_5_rgb").." seconds and "..CKWord("Electrocutes", "Electrocutes_rgb").." all Enemies within its blast radius.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s} with "..CNumb("+", "n_plus_rgb").."{radius:%s} blast radius.\n"
			..Dot_nc.." Explosion radius: "..CNumb("12", "n_12_rgb").." meters.\n"
			..Dot_nc.." Lasts "..CNumb("8", "n_8_rgb").." seconds.\n"
			.."\n"
			..Dot_green.." "..CKWord("Staggers", "Staggers_rgb").." all Enemies in range except Mutants, Poxburster, Monstrosities and Captains/Twins.\n"
			..Dot_green.." Ignores Bulwark shields.\n"
			..CPhrs("Can_be_refr"),
		ru = "Вы бросаете "..CKWord("Оглушающую гранату", "Oglush_granatu_rgb_ru")..", которая взрывается через "..CNumb("1.5", "n_1_5_rgb").." секунды и поражает "..CKWord("электрошоком", "elektroshokom_rgb_ru").." всех врагов в радиусе поражения.\n" -- Оглушающе-штурмовая граната -- руоф Граната шквального оглушения
			..Dot_green.." Это улучшенная версия блица {talent_name:%s} с увеличенным на {radius:%s} радиусом взрыва.\n"
			..Dot_nc.." Радиус поражения: "..CNumb("12", "n_12_rgb").." метров.\n"
			..Dot_nc.." Длится "..CNumb("8", "n_8_rgb").." секунд.\n"
			.."\n"
			..Dot_green.." "..CKWord("Ошеломляет", "Oshelomlaet_rgb_ru").." всех врагов кроме мутантов, взрывунов, чудовищ, капитанов и близнецов.\n"
			..Dot_green.." Игнорирует щиты бастионов.\n"
			..CPhrs("Can_be_refr"),
		-- fr = "Lancez une "..CKWord("Grenade étourdissante", "Stun_gren_rgb_fr").." qui vas "..CKWord("Électrocute", "Electrocute_rgb_fr").." et "..CKWord("Étourdit", "Stun_rgb_fr").." tous les ennemis dans sa portée.\n\nCeci est une version augmentée de {talent_name:%s} avec un rayon d'explosion de {radius:%s}.",
		-- ["zh-tw"] = "投擲一顆 "..CKWord("眩暈手雷", "Stun_gren_rgb_tw").." ，\n"
			-- .."範圍內的敵人陷入 "..CKWord("電擊", "Electrocuted_rgb_tw").." 與 "..CKWord("致眩", "Staggers_e_rgb_tw").." 。"
			-- .."。\n\n這是 {talent_name:%s} 天賦的強化版本，\n"
			-- .."爆炸半徑增加 {radius:%s}。", -- 眩暈風暴手雷 -- 投擲一枚手雷，使爆炸範圍內的所有敵人眩暈。\n\n該天賦是{talent_name:%s}的增強版，擁有{radius:%s}爆炸範圍。
	},
	--[+ BLITZ 2 - Immolation Grenade +]--	13.12.2025
	["loc_talent_ability_fire_grenade_desc"] = { -- +colors
		en = "Throw a grenade that explodes after "..CNumb("1.7", "n_1_7_rgb").." seconds. It leaves a layer of flaming liquid that "..CKWord("Burning", "Burning_rgb").." and "..CKWord("Staggering", "Staggering_rgb").." enemies, and barring their path.\n"
			..Dot_nc.." Lasts "..CNumb("15", "n_15_rgb").." seconds.\n"
			..Dot_nc.." Replenishes all grenades per grenade pickup.\n"
			.."\n"
			..CPhrs("Can_appl_thr_shlds").."\n"
			..Dot_green.." Very high "..CKWord("Damage", "Damage_rgb").." to Unyielding.\n"
			..Dot_green.." High "..CKWord("Damage", "Damage_rgb").." to Unarmoured, Infested, Maniac.\n"
			..Dot_red.." Very low "..CKWord("Damage", "Damage_rgb").." to Carapace.",
		ru = "Вы бросаете гранату, которая взрывается через "..CNumb("1.7", "n_1_7_rgb").." секунды и оставляет слой "..CKWord("горящей", "goriaschej_rgb_ru").." жидкости. Жидкость преграждает путь врагам, а также "..CKWord("сжигающей", "sjigauschei_rgb_ru").." и "..CKWord("ошеломляющей", "oshelomlauschej_rgb_ru").." их.\n" -- !!! Испепеляющая граната -- руоф Жертвенная граната
			..Dot_nc.." Длится "..CNumb("15", "n_15_rgb").." секунд.\n"
			..Dot_nc.." Весь запас пополняется при подборе гранат.\n"
			.."\n"
			..CPhrs("Can_appl_thr_shlds").."\n"
			..Dot_green.." Очень высокий "..CKWord("урон", "Damage_rgb_ru").." несгибаемым.\n"
			..Dot_green.." Высокий "..CKWord("урон", "Damage_rgb_ru").." небронированным, заражённым и маньякам.\n"
			..Dot_red.." Низкий "..CKWord("урон", "Damage_rgb_ru").." врагам в панцирной броне.",
	},
	--[+ BLITZ 3 - Blades of Faith +]--	13.12.2025
	["loc_ability_zealot_throwing_knifes_desc"] = { -- +colors
		en = "Quickly throw a consecrated knife to deal High "..CKWord("Damage", "Damage_rgb").." to a Single Enemy.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb")..": "..CNumb("585", "n_585_rgb")..".\n"
			..Dot_green.." High "..CKWord("Damage", "Damage_rgb").." to Maniac and Infested.\n"
			..Dot_green.." Can "..CKWord("Cleave", "Cleave_rgb").." "..CNumb("1", "n_1_rgb").." Groaner, Poxwalker, Scab/Dreg Stalker or Scab Shooter.\n"
			..Dot_red.." Deals no "..CKWord("Damage", "Damage_rgb").." to Carapace except on "..CKWord("Weakspots", "Weakspots_rgb")..".\n"
			.."\n"
			..Dot_nc.." Knives replenish:\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("1", "n_1_rgb").." - Elite or Specialist Melee kill.\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." - Small ammo pickup.\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("6", "n_6_rgb").." - Large ammo pickup.\n"
			.."    "..Dot_nc.." Full refill - Ammo crate.",
		ru = "Вы быстро бросаете освящённый нож, наносящий "..CKWord("урон", "uron_rgb_ru").." врагу.\n" -- Клинки веры
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru")..": "..CNumb("585", "n_585_rgb")..".\n"
			..Dot_green.." Высокий "..CKWord("урон", "uron_rgb_ru").." заражённым и маньякам.\n"
			..Dot_green.." Может "..CKWord("пробить", "probit_rgb_ru").." "..CNumb("1", "n_1_rgb").." ворчуна, ходока, охотника или скаба-стрелка.\n"
			..Dot_red.." Не наносит "..CKWord("урон", "uron_rgb_ru").." врагам в панцирной броне, если попадает не попадает в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Пополнение ножей:\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("1", "n_1_rgb").." - за убийство элитного врага или специалиста в ближнем бою.\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." - подбор малой сумки патронов.\n"
			.."    "..Dot_nc.." "..CNumb("+", "n_plus_rgb")..CNumb("6", "n_6_rgb").." - подбор большой сумки патронов.\n"
			.."    "..Dot_nc.." Все ножи - из ящика с патронами.",
		-- fr = "Lancez un couteau consacré pour infliger de gros "..CKWord("Dégâts", "Damage_rgb_fr").." à un seul ennemi.",
		-- ["zh-tw"] = "投擲 {talent_name:%s}，對單一敵人 "..CKWord("高傷害", "Dmg_h2_rgb_tw").." 。\n"
			-- .."\n"
			-- .."- 快速投擲。\n"
			-- .."- 大多敵人"..CKWord("高傷害", "Dmg_h2_rgb_tw").."，對重甲傷害極低。\n"
			-- .."\n"
			-- .."- 擊殺菁英或專家可回復"..CNumb("1", "n_1_rgb").."把匕首，\n"
			-- .."- 小型彈藥包回復"..CNumb("2", "n_2_rgb").."把。\n"
			-- .."- 大型彈藥包回復"..CNumb("6", "n_6_rgb").."把。\n"
			-- .."- 彈藥箱回復全部匕首。", -- 信仰之刃 --擲出一把聖化小刀，可對單體敵人造成高額傷害。這把小刀對大多數敵人效果拔群，但對護甲堅固的敵人威力較弱。\n\n-快速投擲\n-近戰擊殺精英和專家敵人可補充一把小刀\n-使用彈藥箱可補充小刀
	},
--[+ +AURA - АУРЫ+ +]--
	--[+ AURA 0 - The Emperors's Will +]--	13.12.2025
	["loc_talent_zealot_aura_toughness_damage_coherency_desc"] = { -- damage_reduction: +7.5%, +colors
		en = Dot_green.." {damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura"),
		ru = Dot_green.." {damage_reduction:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Воля Императора
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura"),
		-- fr = "{damage_reduction:%s} de "..CKWord("Réduction des dégâts sur l'Endurance", "Tghns_dmg_red_rgb_fr").." pour vous et les alliés en syntonie."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_0_n_1_rgb_fr,
		-- ["zh-tw"] = "與"..CKWord("協同", "Coherencing_rgb_tw").."盟友 {damage_reduction:%s} "..CKWord("韌性減傷", "Toughness_dmg_red_u_rgb_tw").."。" ..TALENTS_Enh_desc_tw.ED_ZEA_Aura_0_n_1_rgb_tw, -- 帝皇之諭 -- 你和協同中的盟友{damage_reduction:%s}韌性減傷。
	},
	--[+ AURA 1 - Benediction +]--	13.12.2025
	["loc_talent_zealot_toughness_aura_efficiency_desc"] = { -- damage_reduction: +15%, talent_name: The Emperor's Will, +colors
		en = Dot_green.." {damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			..Dot_green.." This is an augmented version of the base Aura, {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura"),
		ru = Dot_green.." {damage_reduction:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Благословение
			..Dot_green.." Это улучшенная версия базовой ауры - {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura"),
		-- fr = "{damage_reduction:%s} de "..CKWord("Réduction des dégâts sur l'Endurance", "Tghns_dmg_red_rgb_fr").." pour vous et les alliés en syntonie.\n\nCeci est une version augmentée de l'Aura de base - {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_0_n_1_rgb_fr,
		-- ["zh-tw"] = "與"..CKWord("協同", "Coherencing_rgb_tw").."盟友 {damage_reduction:%s} "..CKWord("韌性減傷", "Toughness_dmg_red_u_rgb_tw").."。\n\n"
			-- .."這是基礎光環 {talent_name:%s} 的強化版本。" ..TALENTS_Enh_desc_tw.ED_ZEA_Aura_0_n_1_rgb_tw, -- 恩賜 --你和協同中的盟友{damage_reduction:%s}韌性減傷。\n\n該天賦是{talent_name:%s}的增強版。
	},
	--[+ AURA 2 - Beacon of Purity +]--	13.12.2025
	["loc_talent_zealot_corruption_healing_coherency_improved_desc"] = { -- corruption: 1.5, interval: 1, s->second, +colors
		en = Dot_green.." {corruption:%s} "..CKWord("Corruption", "Corruption_rgb").." Heal from the current "..CKWord("Wound", "Wound_rgb").." per second for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..Dot_nc.." Negates Grimoire's passive "..CKWord("Corruption", "Corruption_rgb")..", but not the initial "..CNumb("40", "n_40_rgb").." "..CKWord("Corruption", "Corruption_rgb").." from it.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura").."\n",
		ru = Dot_green.." {corruption:%s} "..CKWord("порчи", "porchi_rgb_ru").." исцеляется в секунду для текущей "..CKWord("раны", "rany_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Маяк очищения -- руоф Маяк непорочности
			.."\n"
			..Dot_nc.." Полностью гасит пассивный набор "..CKWord("порчи", "porchi_rgb_ru").." от гримуара, но изначальные "..CNumb("40", "n_40_rgb").." единиц "..CKWord("порчи", "porchi_rgb_ru").." от взятия гримуара всё равно применяются.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_Aura").."\n",
		-- fr = "Soigne {corruption:%s} de "..CKWord("Corruption", "Corruption_rgb_fr").." de la blessure actuelle pour vous et les alliés en syntonie toutes les {interval:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_2_rgb_fr,
		-- ["zh-tw"] = "與 "..CKWord("協同", "Coherencing_rgb_tw").." 的盟友，\n"
			-- .."- 每秒淨化當前 "..CKWord("傷勢", "Wound_y_rgb_tw").." 的 "..CKWord("腐敗", "Corruption_i_rgb_tw").." {corruption:%s} 點。"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Aura_2_rgb_tw, -- 純潔信標 -- 每{interval:%s}秒為你和協同中的盟友淨化當前傷勢下{corruption:%s}腐敗。
	},
	--[+ AURA 3 - Zealous +]--	13.12.2025
	["loc_talent_zealot_stamina_cost_multiplier_aura_description"] = { -- stamina_cost_multiplier: -15%, +colors
		en = Dot_green.." {stamina_cost_multiplier:%s} "..CKWord("Stamina", "Stamina_rgb").." Cost for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..Dot_nc.." Includes "..CKWord("Stamina", "Stamina_rgb").." drain by Blocking, Pushing, Sprinting, Jumping while Sprinting, Dodge-cancelling sticky attacks.",
		ru = Dot_green.." {stamina_cost_multiplier:%s} к снижению затрат "..CKWord("выносливости", "vynoslivosti_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Ревностный -- руоф Рвение
			.."\n"
			..Dot_nc.." Включает затраты "..CKWord("выносливости", "vynoslivosti_rgb_ru").." на блокирование, отталкивание, бег, прыжки во время бега и отмену атак уворотами.",
		-- fr = "Le Fanatique compte comme étant en syntonie avec un allié, ce qui permet le taux le plus bas de régénération de "..CKWord("Endurance", "Toughness_rgb_fr").." en syntonie de "..CNumb("3.75", "n_3_75_rgb").." de "..CKWord("Endurance", "Toughness_rgb_fr").." par seconde."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_3_rgb_fr,
		-- ["zh-tw"] = "系統默認身旁至少有"..CNumb("1", "n_1_rgb").."名玩家。\n"
			-- .."\n"
			-- .."-"..CKWord("韌性恢復", "Toughness_rs_rgb_tw").." 從 "..CNumb("0", "n_0_rgb").." 提升至每秒 "..CNumb("3.75", "n_3_75_rgb").." 。"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Aura_3_rgb_tw, -- 孤狼 --你始終被視作擁有至少{coherency_min_stack:%s}層協同。
	},
--[+ +ABILITIES - СПОСОБНОСТИ+ +]--	13.12.2025
	--[+ ABILITY 0 - Chastise the Wicked +]--
	["loc_talent_zealot_2_combat_description_new"] = { -- toughness: 50%, damage: 25%, cooldown: 30, s->seconds, +colors
		en = "Dash forward and replenish:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."Your next Melee Hit is a guaranteed "..CKWord("Critical Hit", "Crit_hit_rgb").." and deals:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("Damage", "Damage_rgb").." for "..CNumb("3", "n_3_rgb").." seconds.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_green.." Grants immunity to "..CKWord("Toughness", "Toughness_rgb").." "..CKWord("Damage", "Damage_rgb").." and you Dodge all attacks while dashing.\n"
			..Dot_green.." Applies a light "..CKWord("Stagger", "Stagger_rgb").." on impact in a "..CNumb("3", "n_3_rgb").." meters radius.\n"
			.."\n"
			..Dot_nc.." Dash Range:\n"
			.."    "..Dot_nc.." Base: "..CNumb("7", "n_7_rgb").." meters.\n"
			.."    "..Dot_nc.." Aimed: up to "..CNumb("21", "n_21_rgb").." meters.",
		ru = "Вы делаете рывок вперёд и восстанавливаете:\n" -- Кара для нечестивых
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."Ваш следующий удар ближнего боя будет гарантированно "..CKWord("критическим", "kritom_rgb_ru").." и наносит:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("урона", "urona_rgb_ru").." в течение "..CNumb("3", "n_3_rgb").." секунд.\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_green.." Во время рывка вы получаете иммунитет к "..CKWord("урону", "uronu_rgb_ru").." "..CKWord("стойкости", "stoikosti_rgb_ru").." и уклонение от всех атак.\n"
			..Dot_green.." Накладывает малое "..CKWord("ошеломление", "oshelomlenie_rgb_ru").." на врагов при столкновении в радиусе "..CNumb("3", "n_3_rgb").." метров.\n",
			-- .."\n"
			-- ..Dot_nc.." Расстояние рывка при нажатии кнопки способности:\n"
			-- .."    "..Dot_nc.." быстром: "..CNumb("7", "n_7_rgb").." метров.\n"
			-- .."    "..Dot_nc.." зажатии: до "..CNumb("21", "n_21_rgb").." метра.",
		-- fr = "Effectuez une ruée vers l'avant, régénérez {toughness:%s} "..CKWord("Endurance", "Toughness_rgb_fr")..". Votre prochaine attaque de mêlée gagne {damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." et est un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." garanti.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_0_rgb_fr,
		-- ["zh-tw"] = "向前方衝鋒並恢復 "..CNumb("50", "n_50_rgb").." 點 "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			-- .."\n"
			-- .."- "..CNumb("3", "n_3_rgb")..CNumb("s", "n_second_rgb").." 內首次攻擊 "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."\n"
			-- .."--必定 "..CKWord("暴擊", "Crit_hit_udom_rgb_tw").. " 。\n"
			-- .."\n"
			-- .."- 冷卻時間：{cooldown:%s} 秒。" ..TALENTS_Enh_desc_tw.ED_ZEA_Ability_0_rgb_tw, -- 懲奸除惡 -- 向前猛衝，恢復{toughness%s}韌性。你的下一次近戰攻擊命中時造成的傷害{damage%s}且必定暴擊。\n\n基礎冷卻時間：{cooldown:%s}秒。
	},
	--[+ ABILITY 1 - Fury of the Faithful +]--	13.12.2025
	["loc_talent_zealot_attack_speed_after_dash_new_desc"] = { -- toughness: 50%, attack_speed: +20%, time: 10, damage: +25%, cooldown: 30, talent_name: Chastise the Wicked, &->and, s->seconds, +colors
		en = "Dash forward and replenish:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."Also gain:\n"
			..Dot_green.." {attack_speed:%s} Attack Speed for {time:%s} seconds.\n"
			.."\n"
			.."Your next Melee Hit is a guaranteed "..CKWord("Critical Hit", "Crit_hit_rgb").." and gains:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." "..CNumb("100%", "pc_100_rgb").." "..CKWord("Rending", "Rending_rgb")..".\n"
			.."\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Grants immunity to "..CKWord("Toughness", "Toughness_rgb").." "..CKWord("Damage", "Damage_rgb").." and you Dodge all attacks while dashing.\n"
			.."\n"
			..Dot_nc.." Dash Range:\n"
			.."    "..Dot_nc.." Base: "..CNumb("7", "n_7_rgb").." meters.\n"
			.."    "..Dot_nc.." Aimed: up to "..CNumb("21", "n_21_rgb").." meters.\n"
			..Dot_nc.." You can't change direction, but you can cancel the dash with Block or Back buttons.\n"
			..Dot_red.." Cannot be activated while jumping or falling.\n"
			..Dot_red.." You can be stopped by Unyielding, Carapace, Monstrosities, as well as the Void shields.",
		ru = "Вы делаете рывок вперёд и восстанавливаете:\n" -- Ярость верующего -- руоф Ударный страх
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."Также вы получаете:\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки на {time:%s} секунд.\n"
			.."\n"
			.."Ваш следующий удар ближнего боя будет гарантированно "..CKWord("критическим", "kritom_rgb_ru").." и получает:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." "..CNumb("100%", "pc_100_rgb").." к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони.\n"
			.."\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Во время рывка вы получаете иммунитет к "..CKWord("урону", "uronu_rgb_ru").." "..CKWord("стойкости", "stoikosti_rgb_ru").." и уклонение от всех атак.\n"
			.."\n"
			..Dot_nc.." Расстояние рывка при нажатии кнопки способности:\n"
			.."    "..Dot_nc.." быстром: "..CNumb("7", "n_7_rgb").." метров.\n"
			.."    "..Dot_nc.." зажатии: до "..CNumb("21", "n_21_rgb").." метра.\n"
			..Dot_nc.." Вы не можете сменить направление рывка, но можете прервать рывок блоком или нажав кнопку движения назад.\n"
			..Dot_red.." Не активируется во время прыжка или падения.\n"
			..Dot_red.." Рывок прервётся при столкновении с несгибаемыми врагами, врагами в панцирной броне, с чудовищами и с пустотным щитом.",
		-- fr = "Effectuez une ruée vers l'avant, régénérez {toughness:%s} "..CKWord("Endurance", "Toughness_rgb_fr").." et gagne {attack_speed:%s} de vitesse d'attaque pendant {time:%s} secondes. Votre prochaine attaque de mêlée gagne {damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." et est un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." garanti.\nTemps de recharge de base : {cooldown:%s} secondes.\nCeci est une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_1_rgb_fr,
		-- ["zh-tw"] = "向前方衝鋒並恢復 "..CNumb("50", "n_50_rgb").." 點"..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			-- .."\n"
			-- .."- "..CNumb("3", "n_3_rgb")..CNumb("s", "n_second_rgb").." 內首次攻擊 {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."\n"
			-- .."--必定 "..CKWord("暴擊", "Crit_hit_udom_rgb_tw").. " 。\n"
			-- .."\n"
			-- .."- {attack_speed:%s} 攻擊速度加成，持續 {time:%s} 秒。\n"
			-- .."- 冷卻時間：{cooldown:%s} 秒。"
			-- .."\n\n這是 {talent_name:%s} 能力的強化版本。" ..TALENTS_Enh_desc_tw.ED_ZEA_Ability_1_rgb_tw, -- 有信者之怒 --向前猛衝，恢復{toughness:%s}韌性，同時獲得{attack_speed:%s}攻擊速度，持續{time:%s}秒。下一次近戰攻擊命中時，附加{damage:%s}傷害，且必定暴擊。\n\n基礎冷卻時間：{cooldown:%s}秒。\n\n該天賦是{talent_name:%s}的增強版。
	},
	--[+ ABILITY 1-1 - Unrelenting Fury +]--	13.12.2025
	["loc_talent_zealot_fotf_refund_cooldown_desc"] = { -- duration: 5, talent_name: Fury of the Faithful, cooldown: +20%, s->seconds, +colors
		en = "Killing an Elite or Specialist within {duration:%s} seconds of using {talent_name:%s} restores:\n"
			..Dot_green.." {cooldown:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb")..".\n"
			.."\n"
			..Dot_nc.." Maximum once per use.",
		ru = "Убийство элитного врага или специалиста в течение {duration:%s} после применения способности {talent_name:%s} восстанавливает:\n"
			..Dot_green.." {cooldown:%s} "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Максимум одно восстановление за применение.", -- руоф Неумолимая ярость
	},
	--[+ ABILITY 1-2 - Redoubled Zeal +]--	13.12.2025
	["loc_talent_zealot_dash_has_more_charges_desc"] = { -- talent_name: Fury of the Faithful, charges: 2
		en = Dot_green.." {talent_name:%s} now has {charges:%s} charges.",
		ru = Dot_green.." Способность {talent_name:%s} получает {charges:%s} заряд.", -- руоф Удвоенное рвение
	},
	--[+ ABILITY 2 - Chorus of Spiritual Fortitude +]--	13.12.2025
	["loc_talent_zealot_bolstering_prayer_variant_two_description"] = { -- interval: 0.8, toughness: 45%, flat_toughness: +20, max_toughness: +100, cooldown: 60, s->seconds, +colors
		en = "Wield a "..CKWord("Holy relic", "Holy_relic_rgb").." that releases a pulse of energy "..CNumb("7", "n_7_rgb").." times every {interval:%s} seconds.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			..Dot_nc.." Radius: "..CNumb("10", "n_10_rgb").." meters.\n"
			..Dot_nc.." Can be canceled by blocking, sprinting, swapping weapons, or by pressing the ability button again.\n"
			.."\n"
			.."Each pulse grants the "..CKWord("Zealot", "cls_zea_rgb").." and Allies in "..CKWord("Coherency", "Coherency_rgb").." for "..CNumb("1.5", "n_1_5_rgb").." seconds:\n"
			..Dot_green.." Invulnerability and\n"
			..Dot_green.." Immunity to "..CKWord("Stuns", "Stuns_rgb").." from both Melee and Ranged attacks.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			.."While below "..CNumb("100%", "pc_100_rgb").." "..CKWord("Toughness", "Toughness_rgb")..", the "..CKWord("Zealot", "cls_zea_rgb").." and Allies gain:\n"
			..Dot_green.." "..CNumb("20%", "pc_20_rgb").." "..CKWord("Toughness", "Toughness_rgb").." instantly and\n"
			..Dot_green.." "..CNumb("25%", "pc_25_rgb").." "..CKWord("Toughness", "Toughness_rgb").." over the next second.\n"
			-- .."\n"
			.."If at full "..CKWord("Toughness", "Toughness_rgb")..", adds:\n"
			..Dot_green.." {flat_toughness:%s} maximum "..CKWord("Toughness", "Tghnss_gold_rgb")..", up to {max_toughness:%s}.\n"
			-- .."\n"
			..Dot_nc.." Bonus "..CKWord("Toughness", "Tghnss_gold_rgb").." acts as a 'second' bar and can be replenished by melee kills, respective talents, and weapon blessings.\n"
			..Dot_nc.." Lasts "..CNumb("10", "n_10_rgb").." seconds.\n"
			.."\n"
			.."Each pulse while channeling:\n"
			..Dot_green.." Suppresses all suppressible enemies.\n"
			..Dot_green.." "..CKWord("Staggers", "Staggers_rgb").." all enemies.\n"
			..Dot_nc.." Monstrosities/Captains: pulses "..CNumb("1", "n_1_rgb")..", "..CNumb("3", "n_3_rgb")..", "..CNumb("5", "n_5_rgb")..", "..CNumb("7", "n_7_rgb")..".\n"
			-- .."Can be suppressed: Armored Groaner, Groaner, Dreg Gunner, Dreg Stalker, Radio Operator, Reaper, Scab Gunner, Scab Shooter, Scab Stalker.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
		ru = "Вы берёте в руки "..CKWord("Священную реликвию", "Sv_relikviu_rgb_ru")..", которая испускает "..CNumb("7", "n_7_rgb").." волн энергии каждые {interval:%s} секунд.\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			..Dot_nc.." Радиус: "..CNumb("10", "n_10_rgb").." метров.\n"
			-- ..Dot_nc.." Можно отменить блокированием, использованием бега, сменой оружия или повторным нажатием кнопки способности.\n"
			-- .."\n"
			.."Каждая волна даёт вам и союзникам в "..CKWord("сплочённости", "splochennosti_rgb_ru").." на "..CNumb("1.5", "n_1_5_rgb").." секунды:\n"
			..Dot_green.." Неуязвимость и\n"
			..Dot_green.." Иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." от атак.\n" -- ближнего и дальнего боя
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			.."Если у вас меньше "..CNumb("100%", "pc_100_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru")..", вы восстанавливаете:\n" -- и союзников
			..Dot_green.." "..CNumb("20%", "pc_20_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." мгновенно и\n"
			..Dot_green.." "..CNumb("25%", "pc_25_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." в течение следующей секунды.\n"
			-- .."\n"
			.."Если у вас и союзников "..CKWord("стойкость", "stoikost_rgb_ru").." заполнена, вам добавляется:\n"
			..Dot_green.." {flat_toughness:%s} максимальной "..CKWord("стойкости", "stojkosti_zolot_rgb_ru")..", вплоть до {max_toughness:%s}.\n"
			-- .."\n"
			..Dot_nc.." Золотая "..CKWord("стойкость", "stojkost_zolot_rgb_ru").." работает как вторая полоска и заполняется от убийств в ближнем бою, талантов и благословений оружия.\n"
			..Dot_nc.." Длится "..CNumb("10", "n_10_rgb").." секунд.\n"
			.."\n"
			-- .."Каждая волна:\n"
			..Dot_green.." Подавляются всех враги, которых можно подавить.\n"
			..Dot_green.." "..CKWord("Ошеломляются", "Oshelomlautsa_rgb_ru").." всех врагов.\n"
			..Dot_nc.." чудовища и капитаны ошеломляются на "..CNumb("1", "n_1_rgb")..", "..CNumb("3", "n_3_rgb")..", "..CNumb("5", "n_5_rgb")..", "..CNumb("7", "n_7_rgb").." волнах.\n"
			-- .."Can be suppressed: Armored Groaner, Groaner, Dreg Gunner, Dreg Stalker, Radio Operator, Reaper, Scab Gunner, Scab Shooter, Scab Stalker.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"), -- Хор духовной стойкости
		-- fr = "Utilisez une relique sacrée qui libère des pulsations énérgetiques "..CNumb("7", "n_7_rgb").." fois toutes les {interval:%s} secondes.\nChaque pulsation accorde au Fanatique et aux alliés en syntonie une immunité aux "..CKWord("Étourdissements", "Stuns_rgb_fr").." des attaques de mêlée et de distance et une invulnérabilité de "..CNumb("1.5", "n_1_5_rgb").." secondes.\nChaque pulsation régénère {toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." pour les alliés en syntonie. Si l'allié est à toute ça "..CKWord("Endurance", "Toughness_rgb_fr")..", il gagne à la place {flat_toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." maximale (jaune) jusqu'à un total de {max_toughness:%s}.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_rgb_fr,
		-- ["zh-tw"] = "揮舞聖物幫助 "..CKWord("協同", "Coherencing_rgb_tw").." 隊友恢復 "..CKWord("韌性", "Toughness_rgb_tw").." ，\n"
			-- .."並暫時突破 "..CKWord("韌性上限", "Toughness_m_rgb_tw").." 上限。\n"
			-- .."\n"
			-- .."- 每 {interval:%s} 秒產生1次能量脈衝，共 "..CNumb("7", "n_7_rgb").." 次。\n"
			-- .."\n"
			-- .."- 下列效果需在"..CKWord("協同", "Coherencing_rgb_tw").."才會生效：\n"
			-- .."- 脈衝免疫近戰與遠程攻擊的 "..CKWord("暈眩", "Stagger_rgb_tw").."。\n"
			-- .."- 每波脈衝會恢復 "..CNumb("45", "n_45_rgb").." 點 "..CKWord("韌性", "Toughness_rgb_tw").."。\n"
			-- .."- "..CNumb("1.5", "n_1_5_rgb").." 秒內無法被擊殺。\n"
			-- .."- "..CKWord("韌性", "Toughness_rgb_tw").." 已滿時 {flat_toughness:%s} 點黃色 "..CKWord("韌性上限", "Toughness_m_rgb_tw").."。\n"
			-- .."- "..CKWord("韌性上限", "Toughness_m_rgb_tw").."".." 最多 {max_toughness:%s}，持續 "..CNumb("10", "n_10_rgb").." 秒。\n"
			-- .."- 冷卻時間：{cooldown:%s} 秒。"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Ability_2_rgb_tw, -- 不屈靈魂合唱 --運用一件每{interval:%s}秒釋放一次能量脈衝的聖物。引導時，協同中的盟友獲得眩暈免疫和無敵。\n\n每次脈衝為協同中的盟友恢復{toughness:%s}韌性。若盟友韌性值已滿，則會提高{flat_toughness:%s}最大韌性值，最多提高{max_toughness}。\n\n基礎冷卻時間：{cooldown:%s}秒。
	},
	--[+ ABILITY 2-1 - Holy Cause +]--	13.12.2025
	["loc_talent_zealot_zealot_channel_grants_defensive_buff_desc"] = { -- stacks: 5, toughness: +30%, duration: 10, s->seconds, +colors
		en = "After channeling {stacks:%s} pulses, grants to you and Allies in "..CKWord("Coherency", "Coherency_rgb")..":\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
		ru = "После {stacks:%s} волны вы с союзниками в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получите:\n" -- Святое дело
			..Dot_green.." {toughness:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
		-- fr = "Après avoir canalisé {stacks:%s} pulsations, accorde {toughness:%s} de "..CKWord("Réduction des dégâts sur l'Endurance", "Tghns_dmg_red_rgb_fr").." à vous et aux alliés en syntonie. Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_1_rgb_fr,
		-- ["zh-tw"] = "第 {stacks:%s} 次之後的脈衝，\n"
			-- .."可以 {toughness:%s} 的"..CKWord("韌性減傷", "Toughness_dmg_red_u_rgb_tw").."。\n"
			-- .."\n"
			-- .."- "..CKWord("協同", "Coherencing_rgb_tw").." 的隊友才有 "..CKWord("韌性減傷", "Toughness_dmg_red_u_rgb_tw").."。\n"
			-- .."- 上限 "..CNumb("1", "n_1_rgb").." 層，持續 {duration:%s} 秒。"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Ability_2_1_rgb_tw, -- 神聖事業 --為你和協同中的盟友貫注所有{stacks:%s}層脈衝，賦予{toughness:%s}韌性減傷，持續{duration:%s}秒。
	},
	--[+ ABILITY 2-2 - Ecclesiarch's Call +]--	13.12.2025
	["loc_talent_zealot_zealot_channel_grants_offensive_buff_desc"] = { -- stacks: 5, damage: +20%, duration: 10, s->seconds, +colors
		en = "After channeling {stacks:%s} pulses, grants to you and Allies in "..CKWord("Coherency", "Coherency_rgb")..":\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
		ru = "После {stacks:%s} волны вы с союзниками в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получите:\n" -- Призыв экклезиарха -- руоф Вызов экклезиарха
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Zea_abil"),
		-- fr = "Après avoir canalisé {stacks:%s} pulsations, accorde {damage:%s} "..CKWord("Dégâts", "Damage_rgb_fr").." à vous et aux alliés en syntonie. Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_3_rgb_fr,
		-- ["zh-tw"] = "第 {stacks:%s} 次之後的脈衝， {damage:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			-- .."\n"
			-- .."- "..CKWord("協同", "Coherencing_rgb_tw").." 的隊友才有 "..CKWord("傷害", "Damage_rgb_tw").." 加成。\n"
			-- .."- 上限 "..CNumb("1", "n_1_rgb").." 層，持續 {duration:%s} 秒。"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Ability_2_3_rgb_tw, -- 教宗之喚 --為你和協同中的盟友貫注所有{stacks:%s}層脈衝，提高{damage:%s}傷害，持續{duration:%s}秒。
	},
	--[+ ABILITY 3 - Shroudfield +]--	13.12.2025
	["loc_ability_zealot_stealth_rending_description"] = { -- duration: 3, movement_speed: +20%, backstab_damage: +100%, finesse_damage: +100%, crit_chance: +100%, cooldown: 30, s->seconds, &->and, +colors
		en = "You enter "..CKWord("Stealth", "Stealth_rgb").." for {duration:%s} seconds and gain:\n"
			..Dot_green.." {movement_speed:%s} Movement Speed,\n"
			..Dot_green.." {backstab_damage:%s} Backstab "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {finesse_damage:%s} "..CKWord("Finesse Damage", "Finesse_dmg_rgb")..",\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Chance", "Crit_chance_rgb").." and\n"
			..Dot_green.." {rending:%s} Melee "..CKWord("Rending", "Rending_rgb")..".\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			.."Attacking makes you leave "..CKWord("Stealth", "Stealth_rgb")..".",
		ru = "Вы входите в режим "..CKWord("Скрытности", "Stealth_rgb_ru").." на {duration:%s} секунды и получаете:\n" -- Покров
			..Dot_green.." {movement_speed:%s} к скорости движения,\n"
			..Dot_green.." {backstab_damage:%s} "..CKWord("урону", "uronu_rgb_ru").." атак в спину,\n"
			..Dot_green.." {finesse_damage:%s} к "..CKWord("урону от ловкости", "lovkosti_uron_rgb_ru")..",\n"
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..",\n"
			..Dot_green.." {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони в ближнем бою.\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			.."\n"
			.."При атаке вы выходите из режима "..CKWord("Скрытности", "Stealth_rgb_ru")..".",
		-- fr = "Vous passez en "..CKWord("Furtivité", "Stealth_rgb_fr").." pendant {duration:%s} secondes et gagnez {movement_speed:%s} de Vitesse de Déplacement.\nVotre prochaine attaque de Mélée gagne:\n{backstab_damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." dans le dos,\n{finesse_damage:%s} de "..CKWord("Dégâts de finesse", "Finesse_dmg_rgb_fr").." et\n{crit_chance:%s} "..CKWord("Chances de coup critique", "Crit_chance_rgb_fr")..".\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_rgb_fr,
		-- ["zh-tw"] = "進入"..CKWord("隱形", "Stealth_rgb_tw").."狀態，獲得以下增益：\n"
			-- .."- {movement_speed:%s} 的移動速度加成。\n"
			-- .."- "..CKWord("背刺傷害", "Dmg_bs_rgb_tw").." {backstab_damage:%s} 。\n"
			-- .."- "..CKWord("靈巧傷害", "Finesse_dmg_rgb_tw").." {finesse_damage:%s} 。\n"
			-- .."- "..CKWord("暴擊機率", "Crt_chance_rgb_tw").." {crit_chance:%s} 。\n"
			-- .."- 冷卻時間：{cooldown:%s} 秒。"
			-- .."\n"
			-- .."- 持續{duration:%s} 秒。"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Ability_3_rgb_tw, -- 隱秘領域 --進入潛行狀態{duration:%s}秒。潛行期間獲得{movement_speed:%s}移動速度，{backstab_damage:%s}背刺傷害，{finesse_damage:%s}靈巧傷害和{crit_chance:%s}暴擊幾率。\n\n基礎冷卻時間：{cooldown:%s}秒。
	},
	--[+ ABILITY 3-1 - Master-Crafted Shroudfield +]--	13.12.2025
	["loc_talent_zealot_stealth_duration_threat_damage_desc"] = { -- talent_name: Shroudfield, duration: 2, buff_duration: 5, threat: -75%, damage: 50%, s->seconds, +colors
		en = Dot_green.." {talent_name:%s} duration increased by {duration:%s} seconds.\n"
			.."\n"
			.."Upon leaving "..CKWord("Stealth", "Stealth_rgb")..", gain for {buff_duration:%s} seconds:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} Backstab "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {threat:%s} Threat.",
		ru = Dot_green.." Длительность действия способности {talent_name:%s} увеличивается на {duration:%s} секунды.\n" -- Мастерский покров -- руоф Искусно изготовленный покров
			.."\n"
			.."При выходе из "..CKWord("Скрытности", "Stealth_rgb_ru")..", вы получаете на {buff_duration:%s} секунд:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." атак в спину и\n"
			..Dot_green.." {threat:%s} к вероятности стать целью врага.",
		-- fr = "La durée de la "..CKWord("Furtivité", "Stealth_rgb_fr").." est augmentée de "..CNumb("3", "n_3_rgb").." à {duration_2:%s} secondes.",
		-- ["zh-tw"] = CKWord("隱形", "Stealth_rgb_tw").."的持續時間從 "..CNumb("3", "n_3_rgb").." 秒延長至 {duration_2:%s} 秒。", -- 潛行持續時間增至{duration_2:%s}秒。
	},
	--[+ ABILITY 3-2 - Invigorating Revelation +]--	13.12.2025
	["loc_talent_zealot_stealth_toughness_dr_desc"] = { -- toughness: 40%, time: 5, damage: +20%, time: 5, s->seconds, +colors
		en = "{talent_name:%s} replenishes:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."\n"
			.."Upon leaving "..CKWord("Stealth", "Stealth_rgb")..", gain for {duration:%s} seconds:\n"
			..Dot_green.." {dr:%s} "..CKWord("Damage", "Damage_rgb").." Resistance.",
		ru = "{talent_name:%s} восстанавливает:\n" -- Оживляющее откровение -- руоф Подбадривающее откровение
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			.."При выходе из "..CKWord("Скрытности", "Stealth_rgb_ru")..", вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {dr:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".",
		-- fr = "Vous récuperez {toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." en {time:%s} secondes à la sortie de la "..CKWord("Furtivité", "Stealth_rgb_fr")..". Vous gagnez aussi une réduction des "..CKWord("Dégâts", "Damage_rgb_fr").." de {damage:%s} pendant {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_3_rgb_fr,
		-- ["zh-tw"] = "脫離 "..CKWord("隱形", "Stealth_rgb_tw").." 後觸發以下效果：\n"
			-- .."- 在 {time:%s} 秒內恢復 "..CKWord("韌性上限", "Toughness_m_rgb_tw").." 的 {toughness:%s} 。\n"
			-- .."- {damage:%s} "..CKWord("韌性傷害減免", "Tghns_dmg_red_rgb_tw").."，持續 {time:%s} 秒。"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Ability_3_3_rgb_tw, -- 振奮啟示 --脫離潛行後，{talent_name:%s}提供{tdr%s}韌性減傷，持續{duration%s}秒。
	},
	--[+ ABILITY 3-3 - Perfectionist +]--	13.12.2025
	["loc_talent_zealot_stealth_cooldown_regeneration_desc"] = { -- talent_name: Shroudfield, damage: +50%, damage_2: +50%, cooldown: 25%, &->and, +colors
		en = "Restore "..CKWord("Ability Cooldown", "Ability_cd_rgb").." on "..CKWord("Stealth", "Stealth_rgb").." Kill:\n"
			..Dot_green.." {monster:%s} - Beast of Nurgle, Chaos Spawn, Daemonhosts, Plague Ogryn,\n"
			..Dot_green.." {ogryn:%s} - Bulwark, Crusher, Reaper,\n"
			..Dot_green.." {other:%s} - others.",
		ru = "При убийстве в режиме "..CKWord("Скрытности", "Stealth_rgb_ru").." вы сокращаете время "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." на:\n"
			..Dot_green.." {monster:%s} - при убийстве чудовищ: Зверя Нургла, Отродья Хаоса, Демонхоста или Чумного огрина,\n"
			..Dot_green.." {ogryn:%s} - при убийстве огринов: Бастиона, Дробителя или Жнеца,\n"
			..Dot_green.." {other:%s} - при убийстве других врагов.",
			--"{talent_name:%s} даёт дополнительно:\n{damage_2:%s} к "..CKWord("урону", "uronu_rgb_ru").." при ударе в спину и\n{damage:%s} к "..CKWord("урону от ловкости", "lovkosti_uron_rgb_ru")..", но\nна {cooldown:%s} увеличивается время "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").."."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_3_2_rgb"), -- Перфекционист
		-- fr = "{talent_name:%s} octroie:\n{damage_2:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." dans le dos et\n{damage:%s} de "..CKWord("Dégâts de finesse", "Finesse_dmg_rgb_fr")..", mais augmente le "..CKWord("Temps de recharge de capacité", "Combat_ability_cd_rgb_fr").." de {cooldown:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_2_rgb_fr,
		-- ["zh-tw"] = "{talent_name:%s} 額外提供：\n"
			-- .."\n"
			-- .."- "..CKWord("背刺傷害", "Dmg_bs_rgb_tw").." {damage_2:%s}。\n"
			-- .."- "..CKWord("靈巧傷害", "Finesse_dmg_rgb_tw").." {damage:%s} 。\n"
			-- .."- 技能冷卻時間增加 {cooldown:%s}。\n"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Ability_3_2_rgb_tw, -- 完美主義者 -- {talent_name:%s}賦予額外{damage:%s}靈巧傷害和{damage_2:%s}背刺傷害，但技能冷卻時間增加{cooldown:%s}。
	},
--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ KEYSTONE 1 - Blazing Piety +]--	13.12.2025
	["loc_talent_zealot_fanatic_rage_crit_desc"] = { -- crit_chance: +15%, duration: 8, max_stacks: 25, radius: 25, m->meters, s->seconds, +colors
		en = "When {max_stacks:%s} enemies have died within {radius:%s} meters, you enter "..CKWord("Fury", "Fury_rgb").." and gain for {duration:%s} seconds:\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb")..".\n"
			.."\n"
			..CKWord("Critical Hits", "Crit_hits_rgb").." also count up towards triggering "..CKWord("Fury", "Fury_rgb")..".",
		ru = "Когда {max_stacks:%s} врагов погибает в радиусе {radius:%s} метров, вы входите в режим "..CKWord("Ярости", "Fury_i_rgb_ru").." и получаете на {duration:%s} секунд:\n" -- Пылающая благочестивость -- руоф Пламенное благочестие
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..".\n"
			.."\n"
			..CKWord("Критические удары", "Krit_udary_rgb_ru").." также засчитываются для активации "..CKWord("Ярости", "Fury_i_rgb_ru")..".",
		-- fr = "Quand {max_stacks:%s} ennemis meurent dans un rayon de {radius:%s} mètres autour de vous, vous entrez en "..CKWord("Fureur", "Fury_rgb_fr").." et obtenez {crit_chance:%s} "..CKWord("Chances de coup critique", "Crt_hit_chnc_rgb_fr").." pendant {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_rgb_fr,
		-- ["zh-tw"] = "{radius:%s} "..CKWord("m", "n_meter_rgb").." 內擊殺 {max_stacks:%s} 名敵人，\n"
			-- .."獲得以下效果：\n"
			-- .."- 進入"..CKWord("狂暴", "Fury_i_rgb_tw").."狀態。\n"
			-- .."- {crit_chance:%s} "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，持續 {duration:%s} 秒。\n"
			-- .."- 擊殺敵人可延長 "..CKWord("狂暴", "Fury_i_rgb_tw").." 的持續時間。"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_1_rgb_tw, -- 熾熱虔誠 --狂怒時獲得{crit_chance:%s}暴擊幾率，持續{duration:%s}秒。{radius:%s}公尺範圍內有{max_stacks:%s}個敵人死亡時觸發狂怒。
	},
	--[+ KEYSTONE 1-1 - Infectious Zeal +]--	13.12.2025
	["loc_talent_zealot_shared_fanatic_rage_new_desc"] = { -- crit_chance: +10%, talent_name: Blazing Piety, +colors
		en = "While {talent_name:%s} is active, Allies in "..CKWord("Coherency", "Coherency_rgb").." have:\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb")..".",
		ru = "Пока активно {talent_name:%s}, союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получают:\n" -- Заразительное рвение 
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..".",
		-- fr = CNumb("10%", "pc_10_rgb").." de "..CKWord("Chances de coup critique", "Crit_chance_rgb_fr").." est conféré aux alliés en syntonie lorsque vous atteignez "..CNumb("25", "n_25_rgb").." cumuls de "..CKWord("Fureur", "Fury_rgb_fr")..". "..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_3_rgb_fr,
		-- ["zh-tw"] = CNumb("25", "n_25_rgb").." 層 "..CKWord("狂暴", "Fury_i_rgb_tw").." 時， "..CKWord("協同", "Coherencing_rgb_tw").." 隊友獲得：\n"
			-- .."- "..CKWord("暴擊機率", "Crit_chance_rgb_tw").." "..CNumb("+", "n_plus_rgb")..CNumb("10%", "pc_10_rgb").." 。"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_1_3_rgb_tw, -- 迅疾狂熱 -- {talent_name:%s}賦予協同中的盟友{crit_chance:%s}暴擊幾率。
	},
	--[+ KEYSTONE 1-2 - Righteous Warrior +]--	13.12.2025
	["loc_talent_zealot_fanatic_rage_improved_desc"] = { -- crit_chance: +10%, talent_name: Blazing Piety, +colors
		en = Dot_green.." {crit_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb").." from {talent_name:%s}.",
		ru = Dot_green.." {crit_chance:%s} "..CKWord("шанса критического удара", "sha_krit_udara_rgb_ru").." дополнительно для таланта {talent_name:%s}.", -- Праведный воин
		-- fr = "{crit_chance:%s} de "..CKWord("Chances de coup critique", "Crt_hit_chnc_rgb_fr").." grâce à {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_4_rgb_fr,
		-- ["zh-tw"] = "{talent_name:%s} 額外賦予 {crit_chance:%s} "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."。" ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_1_4_rgb_tw, -- 正義勇士 -- {talent_name:%s}賦予協同中的盟友{crit_chance:%s}暴擊幾率。
	},
	--[+ KEYSTONE 1-3 - Stalwart +]--	13.12.2025
	["loc_talent_zealot_fanatic_rage_toughness_replenish_desc"] = { -- toughness: 50%, toughness_damage_reduction: +25%, toughness_small: 2%, +colors
		en = "Triggering "..CKWord("Fury", "Fury_rgb").." replenishes:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."\n"
			.."While "..CKWord("Fury", "Fury_rgb").." is active:\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..",\n"
			..Dot_green.." {toughness_small:%s} "..CKWord("Toughness", "Toughness_rgb").." per second.",
		ru = "Активация "..CKWord("Ярости", "Fury_i_rgb_ru").." восстанавливает:\n" -- Непоколебимый -- руоф Верный последователь
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			.."Пока активна "..CKWord("Ярость", "Fury_rgb_ru").." вы получаете:\n"
			..Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..",\n"
			..Dot_green.." {toughness_small:%s} восстановления "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду.",
		-- fr = "{toughness:%s} "..CKWord("Endurance", "Toughness_rgb_fr").." est régénérée en déclenchant la "..CKWord("Fureur", "Fury_rgb_fr")..". De plus, pendant que la "..CKWord("Fureur", "Fury_rgb_fr").." est active, vous avez gagnez {toughness_damage_reduction:%s} de "..CKWord("Réduction des dégâts sur l'Endurance", "Tghns_dmg_red_rgb_fr").."."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_1_rgb_fr,
		-- ["zh-tw"] = "進入 "..CKWord("狂暴", "Fury_rgb_tw").." 時獲得以下效果：\n"
			-- .."- 立即恢復 {toughness:%s} "..CKWord("韌性", "Toughness_rgb_tw").." 。\n"	
			-- .."- 持續時間內 {toughness_damage_reduction:%s} "..CKWord("韌性減傷", "Toughness_dmg_red_u_rgb_tw").." 。\n" 
			-- .."- 擊殺敵人額外恢復 "..CKWord("韌性", "Toughness_rgb_tw").." "..CNumb("2%", "pc_2_rgb").." 。"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_1_1_rgb_tw, -- 死忠 --觸發狂怒技能恢復{toughness:%s}韌性。狂怒技能啟動狀態下，每一個死亡的敵人會為你回復{toughness_small:%s}韌性。
	},
	--[+ KEYSTONE 1-4 - Invocation of Death +]--	13.12.2025
	["loc_talent_maniac_cooldown_on_melee_crits_buff_desc"] = { -- cooldown_regen: +100%, duration: 3, +colors
		en = Dot_green.." {cooldown_regen:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb").." Regeneration for {duration:%s} seconds on Melee "..CKWord("Critical Hits", "Crit_hits_rgb")..".",
		ru = Dot_green.." {cooldown_regen:%s} к скорости восстановления "..CKWord("боевой способности", "boeva_sposobnost_rgb_ru").." на {duration:%s} секунды при "..CKWord("критических ударах", "krit_udary_rgb_ru").." в ближнем бою.", -- 
	},
	--[+ KEYSTONE 2 - Martyrdom +]--	13.12.2025
	["loc_talent_zealot_martyrdom_desc"] = { -- damage: +10%, max_wounds: 5, +colors
		en = Dot_green.." {damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." for each missing "..CKWord("Wound", "Wound_rgb")..", up to a Maximum {max_wounds:%s} missing "..CKWord("Wounds", "Wounds_rgb")..".",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя за каждую потерянную "..CKWord("рану", "ranu_rgb_ru")..", максимум до {max_wounds:%s} потерянных "..CKWord("ран", "ran_rgb_ru")..".", -- Мученичество
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." de mêlée pour chaque "..CKWord("Blessure", "Wound_rgb_fr").." manquante, jusqu'à un maximum de {max_wounds:%s} "..CKWord("Blessures", "Wounds_rgb_fr").." manquantes."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_rgb_fr,
		-- ["zh-tw"] = "每失去一格 "..CKWord("傷勢", "Wound_u_rgb_tw").." 獲得：\n"
			-- .."-  {damage:%s}  "..CKWord("近戰傷害", "Damage_melee_rgb_tw").." ，上限 {max_wounds:%s} 層。"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_2_rgb_tw, -- 殉道 -- 每個缺損的傷口使你獲得{damage:%s}近戰傷害，最多計算{max_wounds:%s}個缺損傷口。
	},
	--[+ KEYSTONE 2-1 - I Shall Not Fall +]--	13.12.2025
	["loc_talent_zealot_martyrdom_grants_toughness_upd_desc"] = { -- talent_name: Martyrdom, toughness_damage_reduction: +7.5%, +colors
		en = Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." per Stack of {talent_name:%s}.",
		ru = Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru").." за каждый заряд таланта {talent_name:%s}.", -- Я не паду -- руоф Я не отступлю
		-- fr = "{toughness_damage_reduction:%s} de "..CKWord("Réduction des dégâts sur l'Endurance", "Tghns_dmg_red_rgb_fr").." par "..CKWord("Blessure", "Wound_rgb_fr").." manquante."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_1_rgb_fr,
		-- ["zh-tw"] = "每失去一格 "..CKWord("傷勢", "Wound_u_rgb_tw").." {talent_name:%s} 提供：\n"
			-- .."- {toughness_damage_reduction:%s} "..CKWord("韌性減傷", "Toughness_dmg_red_u_rgb_tw").."。"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_2_1_rgb_tw, -- 不滅意志 --根據傷口治癒數量，{talent_name:%s}將提供{toughness_damage_reduction:%s}韌性減傷效果。
	},
	--[+ KEYSTONE 2-2 - On the Brink +]--	13.12.2025
	["loc_talent_zealot_corruption_resistance_stacking_desc"] = { -- talent_name: Martyrdom, corruption_resistance: +10%, +colors
		en = Dot_green.." {corruption_resistance:%s} "..CKWord("Corruption", "Corruption_rgb").." Resistance per Stack of {talent_name:%s}.",
		ru = Dot_green.." {corruption_resistance:%s} к сопротивлению "..CKWord("порче", "porche_rgb_ru").." за каждый заряд таланта {talent_name:%s}.", -- 
	},
	--[+ KEYSTONE 2-3 - Maniac +]--	13.12.2025
	["loc_talent_zealot_attack_speed_per_martyrdom_upd_desc"] = { -- talent_name: Martyrdom, attack_speed: +6%, +colors
		en = Dot_green.." {attack_speed:%s} Attack Speed per Stack of {talent_name:%s}.",
		ru = Dot_green.." {attack_speed:%s} к скорости атаки за каждый заряд таланта {talent_name:%s}.", -- Маньяк
		-- fr = "{attack_speed:%s} Vitesse d'attaque de mêlée par "..CKWord("Blessure", "Wound_rgb_fr").." manquante."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_2_rgb_fr,
		-- ["zh-tw"] = "每失去一格 "..CKWord("傷勢", "Wound_u_rgb_tw").." {talent_name:%s} 提供：\n"
			-- .."- {attack_speed:%s} 攻擊速度。" ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_2_2_rgb_tw, -- 狂燥之心 --{talent_name:%s}還會使每個缺損傷口為你獲得{attack_speed:%s}攻擊速度。
	},
	--[+ KEYSTONE 2-4 - Restorative Verses +]--	13.12.2025
	["loc_talent_zealot_martyrdom_toughness_modifier_upd_desc"] = { -- talent_name: Martyrdom, toughness_modifier: 5%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{toughness_modifier:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment per Stack of {talent_name:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{toughness_modifier:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru").." за каждый заряд таланта {talent_name:%s}.", -- Маньяк
		-- fr = "{attack_speed:%s} Vitesse d'attaque de mêlée par "..CKWord("Blessure", "Wound_rgb_fr").." manquante."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_2_rgb_fr,
		-- ["zh-tw"] = "每失去一格 "..CKWord("傷勢", "Wound_u_rgb_tw").." {talent_name:%s} 提供：\n"
			-- .."- {attack_speed:%s} 攻擊速度。" ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_2_2_rgb_tw, -- 狂燥之心 --{talent_name:%s}還會使每個缺損傷口為你獲得{attack_speed:%s}攻擊速度。
	},
	--[+ KEYSTONE 2-5 - Martyr's Purpose +]--	13.12.2025
	["loc_talent_zealot_damage_taken_restores_cd_new_description"] = { -- talent_name: Martyrdom, cooldown_regen: +50%, current_health: 25%, +colors
		en = "Up to {cooldown_regen:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb").." Regeneration based on Missing "..CKWord("Health", "Health_rgb")..". Max reached at {current_health:%s} current "..CKWord("Health", "Health_rgb")..".",
		ru = "До {cooldown_regen:%s} к скорости восстановления "..CKWord("боевой способности", "boeva_sposobnost_rgb_ru").." в зависимости от потерянного "..CKWord("здоровья", "zdorovia_rgb_ru")..". Максимум достигается при {current_health:%s} текущего "..CKWord("здоровья", "zdorovia_rgb_ru")..".",
	},
	--[+ KEYSTONE 3 - Inexorable Judgement +]--	13.12.2025
	["loc_talent_zealot_quickness_desc"] = { -- max_stacks: 20, melee_attack_speed: +1%, ranged_attack_speed: +1%, damage_modifier: +1%, duration: 6, +colors, note
		en = "Moving grants you "..CKWord("Momentum", "Momentum_rgb")..".\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			.."When you Hit an Enemy, spend all "..CKWord("Momentum", "Momentum_rgb").." and gain per Stack for {duration:%s} seconds:\n"
			..Dot_green.." {damage_modifier:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {melee_attack_speed:%s} Melee Attack Speed,\n"
			..Dot_green.." {ranged_attack_speed:%s} Ranged Attack Speed.",
		ru = "Движение даёт вам заряды "..CKWord("Моментума", "Momentum_rgb_ru")..".\n" -- Неумолимый приговор -- руоф Безжалостностный приговор
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			.."\n"
			.."При попадании по врагу вы тратите все заряды "..CKWord("Моментума", "Momentum_rgb_ru").." и за каждый заряд получаете на {duration:%s} секунд:\n"
			..Dot_green.." {damage_modifier:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {melee_attack_speed:%s} к скорости атаки ближнего боя,\n"
			..Dot_green.." {ranged_attack_speed:%s} к скорости атаки дальнего боя.",
		-- fr = "Vos déplacement vous octroient "..CKWord("Élan", "Momentum_rgb_fr")..". Se cumule {max_stacks:%s} fois.\nLorsque vous touchez un ennemi, dépensez tout les cumuls de "..CKWord("Élan", "Momentum_rgb_fr").." et gagnez par cumul pendant {duration:%s} secondes:\n{damage_modifier:%s} de "..CKWord("Dégâts", "Damage_rgb_fr")..",\n{melee_attack_speed:%s} Vitesse d'attaque de mêlée,\n{ranged_attack_speed:%s} Vitesse d'attaque à distance."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_rgb_fr,
		-- ["zh-tw"] = "移動時會獲得 "..CKWord("動能", "Momentum_rgb_tw").."。\n"
			-- .."- 上限 {max_stacks:%s} 層。\n"
			-- .."- 命中敵人將消耗全部 "..CKWord("動能", "Momentum_rgb_tw").." 每層提供：\n"
			-- .."-- {damage_modifier:%s} "..CKWord("傷害", "Damage_rgb_tw").."。\n"
			-- .."-- {melee_attack_speed:%s} 近戰攻擊速度。\n"
			-- .."-- {ranged_attack_speed:%s} 遠程攻擊速度。\n"
			-- .."-- 持續時間：{duration:%s} 秒。"
			-- ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_3_rgb_tw, -- 命定審判 --移動積累勢能（可疊加{max_stacks:%s}層）。\n\n命中後，消耗所有勢能，每層賦予{melee_attack_speed:%s}近戰攻擊速度，{ranged_attack_speed:%s}遠端攻擊速度和{damage_modifier:%s}傷害，持續{duration:%s}秒。
	},
	--[+ KEYSTONE 3-1 - Retributor's Stance +]--	13.12.2025
	["loc_talent_zealot_momentum_toughness_replenish_desc"] = { -- toughness: 0.4%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." is replenished per spent Stack of "..CKWord("Momentum", "Momentum_rgb").." during its Duration.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается за каждый потраченный заряд "..CKWord("Моментума", "Momentum_rgb_ru").." во время его действия.", -- Стойка карателя
		-- fr = "{toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." est régénérée pour chaque cumul de "..CKWord("Élan", "Momentum_rgb_fr").." dépensé."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_1_rgb_fr,
		-- ["zh-tw"] = "每消耗一層 "..CKWord("動能", "Momentum_rgb_tw").." 恢復 {toughness:%s} "..CKWord("韌性上限", "Toughness_m_rgb_tw").."。"..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_3_1_rgb_tw, -- 懲戒者姿態 --每消耗一層勢能恢復{toughness:%s}韌性。
	},
	--[+ KEYSTONE 3-2 - Inebriate's Poise +]--	13.12.2025
	["loc_talent_zealot_quickness_dodge_stacks_desc"] = { -- stacks: 3, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{stacks:%s} Stacks of "..CKWord("Momentum", "Momentum_rgb").." on a successful Dodge.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{stacks:%s} заряда "..CKWord("Моментума", "Momentum_rgb_ru").." при успешном уклонении.", -- Грация пьяницы -- руоф Самообладание пьяницы
		-- fr = "Gagnez {stacks:%s} cumuls de "..CKWord("Élan", "Momentum_rgb_fr").." après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_2_rgb_fr,
		-- ["zh-tw"] = "成功閃避時，獲得 {stacks:%s} 層 "..CKWord("動能", "Momentum_rgb_tw").." 。" ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_3_2_rgb_tw, -- 飄忽身形 -- 成功閃避積累{stacks:%s}層勢能。
	},
	--[+ KEYSTONE 3-3 - Eternal +]--	13.12.2025
	["loc_talent_zealot_quickness_increased_duration_desc"] = { -- duration: 10, +colors
		en = Dot_green.." Duration of {talent_name:%s} increased to {duration:%s} seconds.",
		ru = Dot_green.." Длительность таланта {talent_name:%s} увеличена до {duration:%s} секунд.", -- руоф Вечный
		-- fr = "Gagnez {stacks:%s} cumuls de "..CKWord("Élan", "Momentum_rgb_fr").." après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_2_rgb_fr,
		-- ["zh-tw"] = "成功閃避時，獲得 {stacks:%s} 層 "..CKWord("動能", "Momentum_rgb_tw").." 。" ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_3_2_rgb_tw, -- 飄忽身形 -- 成功閃避積累{stacks:%s}層勢能。
	},
	--[+ KEYSTONE 3-4 - Pious Cut-Throat +]--	13.12.2025
	["loc_talent_zealot_cooldown_on_backstab_weakspot_desc"] = { -- cooldown: +75%, duration: 2, +colors
		en = Dot_green.." {cooldown:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb").." Regeneration for {duration:%s} seconds after a Melee Backstab or Melee "..CKWord("Weakspot Hit", "Weakspothit_rgb")..".",
		ru = Dot_green.." {cooldown:%s} к скорости восстановления "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." на {duration:%s} секунды после удара в спину или попадания в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru").." в ближнем бою.", -- руоф Добродетельный головорез
	},
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Anoint in Blood +]--	13.12.2025
	["loc_talent_zealot_ranged_damage_increased_to_close_desc"] = { -- damage: +25%, +colors
		en = "Up to {damage:%s} Base Ranged "..CKWord("Damage", "Damage_rgb")..", reduced the further you are from the target.",
		ru = "До {damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru").." дальнего боя, уменьшается по мере удаления от цели.", -- Помазанный кровью
		-- fr = "Jusqu'à {damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." à distance , réduits plus vous êtes éloigné de la cible."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_3_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 2 - Disdain +]--	13.12.2025
	["loc_talent_zealot_3_tier_2_ability_1_description"] = { -- damage: +5%, max_stacks: 5, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." for every Second Melee Attack you make for each enemy Hit by your previous Melee Attack.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." за каждую вторую атаку ближнего боя за каждого врага, поражённого вашей предыдущей атакой ближнего боя.\n" -- Презрение
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.",
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." pour chaque deuxième attaque de mêlée que vous effectuez pour chaque ennemi touché par votre précédente attaque de mêlée. Se cumule jusqu'à {max_stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_1_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 3 - Backstabber +]--	13.12.2025
	["loc_talent_zealot_backstab_flanking_damage_all_desc"] = { -- damage: +25%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." on Backstab and Flanking Hits.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." при ударах в спину и с фланга.", -- Бьющий в спину
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." sur les coups dans le dos en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_2_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 4 - The Voice of Terra +]--	13.12.2025
	["loc_talent_zealot_toughness_on_ranged_kill_desc"] = { -- toughness: 4%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished on Ranged Kill.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при убийстве дальнобойной атакой.", -- Голос Терры
		-- fr = "{toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." régénérée lors d'une élimination à distance."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_11_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 5 - Enemies Within, Enemies Without +]--	13.12.2025
	["loc_talent_zealot_toughness_near_enemies_desc"] = { -- toughness: +2.5%, range: 5, more_toughness: +1%, monster_count: 5, max: +7.5%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished per second while within {range:%s} meters range of an Enemy.\n"
			..Dot_green.." {more_toughness:%s} per addition Enemy. Monstrosities count as {monster_count:%s}. Up to {max:%s}.\n"
			.."_______________________________\n"
			.."Enemies:              "..CNumb("1", "n_1_rgb").."|     "..CNumb("2", "n_2_rgb").."|    "..CNumb("3", "n_3_rgb").."|     "..CNumb("4", "n_4_rgb").."|    "..CNumb("5", "n_5_rgb").."|  >"..CNumb("5", "n_5_rgb").."\n"
			..CKWord("Toughness", "Toughness_rgb").."("..CKWord("%", "pc_rgb").."): "..CNumb("2.5", "n_2_5_rgb").."| "..CNumb("3.5", "n_3_5_rgb").."| "..CNumb("4.5", "n_4_5_rgb").."| "..CNumb("5.5", "n_5_5_rgb").."| "..CNumb("6.5", "n_6_5_rgb").."| "..CNumb("7.5", "n_7_5_rgb").."\n"
			.."_______________________________",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду восстанавливается, пока враг находится в радиусе {range:%s} метров.\n" -- Враги внутри, враги снаружи -- руоф Не дай ему уйти
			..Dot_green.." {more_toughness:%s} за каждого дополнительного врага. Чудовища считаются за {monster_count:%s}. До {max:%s}.\n"
			.."_______________________________\n"
			.."Враги:                  "..CNumb("1", "n_1_rgb").."|    "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|    "..CNumb("4", "n_4_rgb").."|     "..CNumb("5", "n_5_rgb").."| >"..CNumb("5", "n_5_rgb").."\n"
			..CKWord("Стойкость", "Stoikost_rgb_ru").."("..CKWord("%", "pc_rgb").."): "..CNumb("2.5", "n_2_5_rgb").."| "..CNumb("3.5", "n_3_5_rgb").."| "..CNumb("4.5", "n_4_5_rgb").."| "..CNumb("5.5", "n_5_5_rgb").."| "..CNumb("6.5", "n_6_5_rgb").."| "..CNumb("7.5", "n_7_5_rgb").."\n"
			.."_______________________________",
		-- fr = "{toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." par seconde lorsque vous êtes à moins de {range:%s} mètres d'au moins {num_enemies:%s} ennemis."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_5_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 6 - Blood Redemption +]--	13.12.2025
	["loc_talent_zealot_toughness_on_melee_kill_desc"] = { -- toughness: +100%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment on Melee Kill.",
		ru = Dot_green.." {toughness:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru").." при убийстве в ближнем бою.", -- Искупление кровью -- руоф Кровавое искупление
		-- fr = "{toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." lors d'une élimination en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_8_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 7 - Second Wind +]--	13.12.2025
	["loc_talent_zealot_toughness_on_dodge_desc"] = { -- toughness: 15%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished on a Successful Dodge.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при успешном уклонении.", -- Второе дыхание -- руоф Второй ветер
		-- fr = "{toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." lors d'une Esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_13_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 8 - Vicious Offering +]--	13.12.2025
	["loc_talent_zealot_toughness_on_heavy_kills_desc"] = { -- toughness: 10%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished on Heavy Attack Kill.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при убийстве тяжёлой атакой.", -- Жертвоприношение -- руоф Порочное подношение
		-- fr = "{toughness:%s} de "..CKWord("Endurance", "Toughness_rgb_fr").." lors d'une élimination en mêlée avec une attaque puissante ."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_10_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 9 - Purge the Unclean +]--	13.12.2025
	["loc_talent_zealot_3_passive_2_description"] = { -- damage: +20%, &->and, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." against Infested and Unyielding Enemies.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." против заражённых и несгибаемых врагов.", -- Очищение нечестивых -- руоф Очищение нечистых
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." contre les ennemis infestés et implacable."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_7_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 10 - Duellist +]--	13.12.2025
	["loc_talent_zealot_duelist_new_desc"] = { -- damage: +50%, duration: 3, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Finesse Damage", "Finesse_dmg_rgb").." for {duration:%s} seconds on successful Dodge.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону от ловкости", "lovkosti_uron_rgb_ru").." на {duration:%s} секунды при успешном уклонении.", -- Дуэлянт
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." de "..CKWord("Point faible", "Weakspot_rgb_fr").." et de "..CKWord("Coup critique", "Crit_hit_rgb_fr").."  pendant {duration:%s} secondes après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_17_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 11 - Until Death +]--	13.12.2025
	["loc_talent_zealot_resist_death_desc"] = { -- active_duration: 5, cooldown_duration: 120, s->seconds, +colors
		en = "Fatal "..CKWord("Damage", "Damage_rgb").." instead grants you Invulnerability for {active_duration:%s} seconds. Occurs every {cooldown_duration:%s} seconds.",
		ru = "Смертельный "..CKWord("урон", "uron_rgb_ru").." вместо этого даёт вам неуязвимость на {active_duration:%s} секунд. Срабатывает раз в {cooldown_duration:%s} секунд.", -- До самой смерти
		-- fr = "Les "..CKWord("Dégâts", "Damage_rgb_fr").." mortels vous accordent à la place l'invulnérabilité pendant {active_duration:%s} secondes. Se produit toutes les {cooldown_duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_18_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 12 - Sustained Assault +]--	13.12.2025
	["loc_talent_zealot_increased_damage_stacks_on_hit_desc"] = { -- damage: +4%, time: 5, amount: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." for {time:%s} seconds on Hitting an Enemy with a Melee Attack.\n"
			..Dot_nc.." Stacks {amount:%s} times.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя на {time:%s} секунд при попадании по врагу атакой ближнего боя.\n" -- Непрерывное нападение -- руоф Непрерывный штурм
			..Dot_nc.." Суммируется до {amount:%s} раз.",
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." de mêlée pendant {time:%s} secondes après avoir touché un ennemi avec une attaque de mêlée. Cumulable jusqu'à {amount:%s} fois."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_31_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 13 - Holy Revenant +]--	13.12.2025
	["loc_talent_zealot_heal_during_resist_death_clamped_desc"] = { -- talent_name: Until Death, max_health: 25%, melee_multiplier: 3, +colors
		en = "When {talent_name:%s} ends, you regain "..CKWord("Health", "Health_rgb").." based on the "..CKWord("Damage", "Damage_rgb").." you dealt during {talent_name:%s}, to a Maximum of {max_health:%s} Max "..CKWord("Health", "Health_rgb")..".\n"
			.."Melee "..CKWord("Damage", "Damage_rgb").." dealt Heals for {melee_multiplier:%s} times that amount.",
		ru = "Когда действие таланта {talent_name:%s} заканчивается, вы восстанавливаете "..CKWord("здоровье", "zdorovie_rgb_ru").." в зависимости от нанесённого "..CKWord("урона", "urona_rgb_ru").." во время действия таланта {talent_name:%s}, максимум до {max_health:%s} максимального "..CKWord("здоровья", "zdorovia_rgb_ru")..".\n" -- Святой призрак -- руоф Священный призрак
			..CKWord("Урон", "Uron_rgb_ru").." в ближнем бою восстанавливает в {melee_multiplier:%s} раза больше "..CKWord("здоровья", "zdorovia_rgb_ru")..".",
		-- fr = "Lorsque {talent_name:%s} se termine, vous récupérez de la "..CKWord("Santé", "Health_rgb_fr").." en fonction des "..CKWord("Dégâts", "Damage_rgb_fr").." que vous avez infligés pendant {talent_name:%s}, jusqu'à {max_health:%s} de la "..CKWord("Santé", "Health_rgb_fr").." maximum. Les "..CKWord("Dégâts", "Damage_rgb_fr").." de mêlée guérissent pour {melee_multiplier:%s} fois ce montant."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_24_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 14 - Thy Wrath be Swift +]--	13.12.2025
	["loc_talent_zealot_movement_speed_on_damaged_desc"] = { -- movement_speed: +15%, time: 2, s->seconds, +colors
		en = Dot_green.." {movement_speed:%s} Movement Speed for {time:%s} seconds on taking "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_green.." Enemy Melee Attacks cannot "..CKWord("Stun", "Stun_rgb").." you.",
		ru = Dot_green.." {movement_speed:%s} к скорости движения на {time:%s} секунды при получении "..CKWord("урона", "urona_rgb_ru")..".\n" -- Да будет Твой гнев быстр -- руоф Скорое возмездие
			..Dot_green.." Вражеские атаки ближнего боя не могут "..CKWord("оглушить", "oglushit_rgb_ru").." вас.",
		-- fr = "{movement_speed:%s} Vitesse de déplacement pendant {time:%s} secondes après avoir subi des "..CKWord("Dégâts", "Damage_rgb_fr")..". Les attaques de mêlée ennemies ne peuvent pas vous "..CKWord("Étourdissent", "Stun_rgb_fr").."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_21_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 15 - Desperation +]--	13.12.2025
	["loc_talent_zealot_damage_based_on_stamina_desc"] = { -- damage: +20%, s->seconds, +colors
		en = "Up to {damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." based on missing "..CKWord("Stamina", "Stamina_rgb")..":\n"
			.."_______________________________\n"
			..CKWord("Stamina", "Stamina_rgb").."("..CKWord("%", "pc_rgb").."):   "..CNumb("100", "n_100_rgb").."|  "..CNumb("80", "n_80_rgb").."|  "..CNumb("60", "n_60_rgb").."|  "..CNumb("40", "n_40_rgb").."|  "..CNumb("20", "n_20_rgb").."|    "..CNumb("0", "n_0_rgb").."\n"
			..CKWord("Damage", "Damage_rgb").."("..CKWord("%", "pc_rgb").."):       "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|    "..CNumb("8", "n_8_rgb").."|   "..CNumb("12", "n_12_rgb").."|   "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		ru = "До {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя в зависимости от потерянной "..CKWord("выносливости", "vynoslivosti_rgb_ru")..":\n" -- Отчаяние
			.."_______________________________\n"
			..CKWord("Выносливость", "Vynoslivost_rgb_ru")..": "..CNumb("100", "n_100_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("20", "n_20_rgb").."|   "..CNumb("0", "n_0_rgb").."\n"
			..CKWord("Урон", "Uron_rgb_ru").."("..CKWord("%", "pc_rgb").."):                  "..CNumb("0", "n_0_rgb").."|   "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."| "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		-- fr = "{damage:%s} de "..CKWord("Dégâts", "Damage_rgb_fr").." de mêlée pendant {duration:%s} secondes lorsque "..CKWord("Endurance", "Stamina_rgb_fr").." est épuisée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_23_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 16 - Punishment +]--	13.12.2025
	["loc_talent_zealot_multi_hits_increase_impact_desc"] = { -- min_hits: 3, impact_modifier: +8%, time: 8, max_stacks: 5, s->seconds, +colors
		en = Dot_green.." {impact_modifier:%s} "..CKWord("Impact", "Impact_rgb").." strength for {time:%s} seconds on Melee Attacks hitting at least {min_hits:%s} Enemies.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			..Dot_nc.." At Max Stacks gain Uninterruptible.",
		ru = Dot_green.." {impact_modifier:%s} к силе "..CKWord("выведения из равновесия", "vyveda_ravnovesia_rgb_ru").." на {time:%s} секунд при атаках ближнего боя, попадающих хотя бы по {min_hits:%s} врагам.\n"
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			..Dot_nc.." При максимуме зарядов вы получаете Непрерываемость.", -- Наказание
		-- fr = "Les attaques de mêlée qui touchent au moins {min_hits:%s} ennemis augmentent l'"..CKWord("Impact", "Impact_rgb_fr").." de {impact_modifier:%s} pendant {time:%s} secondes. Cumulable jusqu'à {max_stacks:%s} fois. Au maximum de cumuls, gagnez Inarrêtable."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_29_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 17 - Against the Odds +]--	13.12.2025
	["loc_talent_zealot_offensive_vs_many_desc"] = { -- num_enemies: 2, range: 5, damage: +2%, cleave: +10%, stacks: 5, s->seconds, +colors
		en = "For every {num_enemies:%s} enemies within {range:%s} meters, gain:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {cleave:%s} "..CKWord("Cleave", "Cleave_rgb")..".\n"
			..Dot_nc.." Stacks {stacks:%s} times.",
		ru = "За каждые {num_enemies:%s} врага в радиусе {range:%s} метров, получаете:\n" -- Вопреки всему
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." {cleave:%s} к "..CKWord("рассечению", "rassecheniu_rgb_ru")..".\n"
			..Dot_nc.." Суммируется до {stacks:%s} раз.",
	},
	--[+ Passive 18 - Shield of Contempt +]--	13.12.2025
	["loc_talent_zealot_3_tier_4_ability_3_description"] = { -- damage_reduction: +60%, duration: 4, cooldown: 8, s->seconds, +colors
		en = "When you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." takes "..CKWord("Damage", "Damage_rgb")..", they gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Reduction.\n"
			.."Triggers every {cooldown:%s} seconds.",
		ru = "Если вы или союзник в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получаете "..CKWord("урон", "uron_rgb_ru")..", то на {duration:%s} секунды вам даётся:\n" -- Щит презрения
			..Dot_green.." {damage_reduction:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."Срабатывает раз в {cooldown:%s} секунд.",
	},
	--[+ Passive 19 - Unseen Blade +]--	13.12.2025
	["loc_talent_zealot_damage_vs_nonthreat_desc"] = { -- damage: +15%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." vs Enemies not targeting you.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." против врагов, которые не атакуют вас.", -- руоф Невидимый клинок
	},
	--[+ Passive 20 - Out of Pocket +]--	13.12.2025
	["loc_talent_zealot_reload_from_backstab_desc"] = { -- ammo: +5%, stacks: 5
		en = "Melee Backstab Kills replenish {ammo:%s} of your Missing Ammo from your Reserve when swapping to your Ranged Weapon.\n"
			..Dot_nc.." Stacks {stacks:%s} times.",
		ru = "Убийства в спину восстанавливают {ammo:%s} недостающих патронов из вашего резерва при переключении на дальнобойное оружие.\n"
			..Dot_nc.." Суммируется до {stacks:%s} раз.", -- руоф За свой счет
	},
	--[+ Passive 21 - Faithful Frenzy +]--	13.12.2025
	["loc_talent_zealot_attack_speed_desc"] = { -- attack_speed: +10%
		en = Dot_green.." {attack_speed:%s} Melee Attack Speed.",
		ru = Dot_green.." {attack_speed:%s} к скорости атаки ближнего боя.", -- Правоверное неистовство -- руоф Верное безумие
		-- fr = "{attack_speed:%s} Vitesse d'attaque en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_30_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 22 - Providence +]--	13.12.2025
	["loc_talent_zealot_revive_speed_desc"] = { -- revive_speed: +25%, duration: 5, movement_speed: +10%, tdr: 15%
		en = Dot_green.." {revive_speed:%s} Revive Speed.\n"
			.."\n"
			.."Allies you Assist or Revive get for {duration:%s} seconds:\n"
			..Dot_green.." {movement_speed:%s} Movement Speed and\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".",
		ru = Dot_green.." {revive_speed:%s} к скорости оживления.\n"
			.."\n"
			.."Союзники, которых вы поднимаете или оживляете, получают на {duration:%s} секунд:\n"
			..Dot_green.." {movement_speed:%s} к скорости движения и\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".", -- Правоверное неистовство -- руоф Верное безумие
		-- fr = "{attack_speed:%s} Vitesse d'attaque en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_30_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 23 - Good Balance +]--	13.12.2025
	["loc_talent_reduced_damage_after_dodge_description"] = { -- damage: +25%, duration: 2.5, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." Reduction for {duration:%s} seconds after a successful Dodge.",
		ru = Dot_green.." {damage:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд после успешного уклонения.", -- Хороший баланс -- руоф Разумный баланс
		-- fr = "{damage:%s} Réduction des "..CKWord("Dégâts", "Damage_rgb_fr").." pendant {duration:%s} secondes après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_22_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 24 - Impassible +]--	13.12.2025
	["loc_talent_zealot_block_dodging_desc"] = { -- linger_time: 2, block_cost: +25%, cooldown: 8, dodges: 3, s->seconds, +colors
		en = "While Dodging and for {linger_time:%s} seconds afterwards you gain:\n"
			..Dot_green.." {block_cost:%s} Block Cost Reduction.\n"
			..Dot_nc.." Internal Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			.."Perfect Blocking an Attack restores {dodges:%s} Dodges.",
		ru = "Во время уклонения и на {linger_time:%s} секунды после вы получаете:\n" -- руоф Бесстрастный
			..Dot_green.." {block_cost:%s} к снижению стоимости блокирования.\n"
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.\n"
			.."\n"
			.."Идеальный блок атаки восстанавливает {dodges:%s} уклонения.",
	},
	--[+ Passive 25 - Retaliatory Defence +]--	13.12.2025
	["loc_talent_zealot_stamina_on_block_break_alt_desc"] = { -- stamina: 50%, cooldown: 12, s->seconds, +colors
		en = "On Block Break, you are no longer "..CKWord("Stunned", "Stunned_rgb").." and instead restore {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..".\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = "При пробивании блока вы не "..CKWord("оглушаетесь", "oglushaetes_rgb_ru")..", а вместо этого восстанавливаете {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n" -- руоф Активная оборона
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.",
	},
	--[+ Passive 25 - Abolish Blasphemers +]--	13.12.2025
	["loc_talent_zealot_damage_vs_elites_desc"] = { -- damage: +15%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." vs Elites.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." против элитных врагов.", -- руоф Ликвидируй богохульников
	},
	--[+ Passive 26 - The Master's Retribution +]--	13.12.2025
	["loc_talent_zealot_3_tier_3_ability_1_description"] = { -- cooldown: 8, s->seconds
		en = "Knock back the Attacker on taking a Melee Hit.\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = "При получении удара в ближнем бою вы отбрасываете атакующего врага.\n" -- Возмездие Владыки
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.",
		-- fr = "Repousse l'attaquant après avoir reçu un coup de mêlée. Temps de recharge : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_32_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 27 - Dance of Death +]--	13.12.2025
	["loc_talent_zealot_improved_spread_post_dodge_desc"] = { -- spread: -75%, recoil: -50%, duration: 3, s->seconds, +colors
		en = "On successful Dodge you gain for {duration:%s} seconds:\n"
			..Dot_green.." {spread:%s} Spread and\n"
			..Dot_green.." {recoil:%s} Recoil.",
		ru = "При успешном уклонении вы получаете на {duration:%s} секунд:\n" -- Танец смерти
			..Dot_green.." {spread:%s} к снижению разброса и\n"
			..Dot_green.." {recoil:%s} к снижению отдачи.",
		-- fr = "{spread:%s} de dispersion et {recoil:%s} de recul pendant {duration:%s} secondes après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_16_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 28 - Grievous Wounds +]--	13.12.2025
	["loc_talent_zealot_increased_stagger_on_weakspot_melee_description"] = { -- impact_modifier: +50%, +colors
		en = Dot_green.." {impact_modifier:%s} "..CKWord("Stagger", "Stagger_rgb").." on Melee "..CKWord("Weakspot Hits", "Weakspothits_rgb")..".",
		ru = Dot_green.." {impact_modifier:%s} к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." при попаданиях в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." в ближнем бою.", -- Тяжёлые раны -- руоф Опасные раны
		-- fr = "{impact_modifier:%s} de "..CKWord("Étourdissement", "Stagger_rgb_fr").." sur les attaques de mêlée sur "..CKWord("Coups aux points faibles", "Weakspothits_rgb_fr").."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_27_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 29 - Scourge +]--	13.12.2025
	["loc_talent_zealot_bleed_melee_crit_chance_desc"] = { -- crit_chance: +10%, duration: 3, max_stacks: 3, s->seconds, +colors
		en = "Melee "..CKWord("Critical Hits", "Crit_hits_rgb").." apply "..CKWord("Bleed", "Bleed_rgb")..", causing "..CKWord("Damage", "Damage_rgb").." over time. Up to "..CNumb("16", "n_16_rgb").." Max "..CKWord("Bleed", "Bleed_rgb").." Stacks on a target.\n"
			.."\n"
			.."Melee Hits on "..CKWord("Bleeding", "Bleeding_rgb").." Enemies grant for {duration:%s} seconds:\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Chance", "Crit_chance_rgb")..".\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.",
		ru = CKWord("Критические удары", "Krit_udary_rgb_ru").." в ближнем бою накладывают "..CKWord("кровотечение", "krovotechenie_rgb_ru")..", наносящее "..CKWord("урон", "uron_rgb_ru").." со временем. До максимум "..CNumb("16", "n_16_rgb").." зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." на цели.\n"
			.."\n"
			.."Удары ближнего боя по врагам с "..CKWord("кровотечением", "krovotecheniem_rgb_ru").." дают на {duration:%s} секунды:\n"
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..".\n"
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.", -- Бичевание -- руоф Бич
		-- fr = "Les coups "..CKWord("Critiques", "Crit_hits_rgb_fr").." en mêlée appliquent "..CKWord("Saignement", "Bleed_rgb_fr")..", causant des "..CKWord("Dégâts", "Damage_rgb_fr").." au fil du temps.\nLes coups en mêlée sur les ennemis qui "..CKWord("Saignent", "Bleeding_rgb_fr").." octroient {crit_chance:%s} "..CKWord("Chances de coup critique", "Crit_chance_rgb_fr").." pendant {duration:%s} secondes. Se cumule jusqu'à {max_stacks:%s} fois. Jusqu'à "..CNumb("16", "n_16_rgb").." cumuls de saignement max sur une cible."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_4_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 30 - Enduring Faith +]--	13.12.2025
	["loc_talent_zealot_toughness_melee_effectiveness_desc"] = { -- toughness_damage_reduction: +50%, time: 4, s->seconds, +colors
		en = Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for {time:%s} seconds on "..CKWord("Critical Hit", "Crit_hit_rgb")..".",
		ru = Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru").." на {time:%s} секунды при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..".", -- Непоколебимая вера
		-- fr = "{toughness_damage_reduction:%s} de "..CKWord("Réduction des dégâts sur l'Endurance", "Tghns_dmg_red_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." pendant {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_14_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 31 - Punish Impiety +]--	13.12.2025
	["loc_talent_zealot_push_attacks_attack_speed_desc"] = { -- attack_speed: +10%, duration: 5, s->seconds
		en = Dot_green.." {attack_speed:%s} Melee Attack Speed for {duration:%s} seconds on push followup attacks.",
		ru = Dot_green.." {attack_speed:%s} к скорости атаки ближнего боя на {duration:%s} секунд при атаках после отталкивания.", -- руоф Карай нечестивых
	},
	--[+ Passive 32 - Bleed for the Emperor +]--	13.12.2025
	["loc_talent_zealot_3_tier_3_ability_2_description"] = { -- damage_reduction: 40%, +colors
		en = Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." that would take your "..CKWord("Health", "Health_rgb").." to the next "..CKWord("Wound", "Wound_rgb")..".",
		ru = Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} к "..CKWord("урону", "uronu_rgb_ru")..", который привёл бы к потере "..CKWord("здоровья", "zdorovia_rgb_ru").." до следующей "..CKWord("раны", "rany_rgb_ru")..".", -- Кровь за Императора -- руоф Кровь во имя Императора
		-- fr = "Les "..CKWord("Dégâts", "Damage_rgb_fr").." qui réduirait votre "..CKWord("Santé", "Health_rgb_fr").." à la prochaine "..CKWord("Blessure", "Wound_rgb_fr").." sont réduit de {damage_reduction:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_9_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 33 - Time to Kill +]--	13.12.2025
	["loc_talent_zealot_backstab_periodic_damage_desc"] = { -- damage: +50%, cooldown: 8, +colors
		en = Dot_green.." {damage:%s} Melee Backstab "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." при ударе в спину в ближнем бою.\n" -- руоф Время убивать
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.",
	},
	--[+ Passive 34 - Hubris +]--	13.12.2025
	["loc_talent_zealot_weakspot_damage_reduction_desc"] = { -- damage_resistance: +15%, duration: 4, +colors
		en = Dot_green.." {damage_resistance:%s} "..CKWord("Damage", "Damage_rgb").." Resistance after "..CKWord("Weakspot", "Weakspot_rgb").." Kill.\n"
			..Dot_nc.." Lasts: {duration:%s} seconds.",
		ru = Dot_green.." {damage_resistance:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." после убийства в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".\n" -- руоф Гордыня
			..Dot_nc.." Длится: {duration:%s} секунд.",
	},
	--[+ Passive 35 - Blinded by Blood +]--	13.12.2025
	["loc_talent_zealot_bled_enemies_take_more_damage_desc"] = { -- damage_taken: +15%, duration: 5, +colors
		en = "Attacks that apply "..CKWord("Bleed", "Bleed_rgb").." also debuff enemy for {duration:%s} seconds:\n"
			..Dot_green.." {damage_taken:%s} "..CKWord("Damage", "Damage_rgb").." Taken.",
		ru = "Атаки, накладывающие "..CKWord("кровотечение", "krovotechenie_rgb_ru").." на врага, также ослабляют его на {duration:%s} секунд:\n" -- руоф Ослеплённый кровью
			..Dot_green.." {damage_taken:%s} к получаемому "..CKWord("урону", "uronu_rgb_ru")..".",
	},
	--[+ Passive 36 - Prime Target +]--	13.12.2025
	["loc_talent_zealot_elite_kills_empowers_desc"] = { -- damage: 10%, toughness: 15%, duration: 5, +colors
		en = "After Elite Kill you gain:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {duration:%s} seconds.",
		ru = "После убийства элитного врага вы получаете:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в течение {duration:%s} секунд.", -- Главная цель -- руоф Первостепенная цель
	},
	--[+ Passive 37 - No Respite +]--	13.12.2025
	["loc_talent_zealot_melee_crits_restore_stamina_desc"] = { -- stamina: 10%, cooldown: 1, +colors
		en = Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb").." replenished on Melee "..CKWord("Critical Hit", "Crit_hit_rgb")..".\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = Dot_green.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru").." восстанавливается при "..CKWord("критическом ударе", "krit_udare_rgb_ru").." в ближнем бою.\n" -- Без передышки
			..Dot_nc.." Восстановление: {cooldown:%s} секунда.",
	},
	--[+ Passive 38 - Unfaltering +]--	13.12.2025
	["loc_talent_zealot_uninterruptible_no_slow_heavies_desc"] = {
		en = Dot_green.." Become Uninterruptible while charging Melee Attacks.\n"
			.."\n"
			..Dot_green.." Remove Heavy Melee Attack Movement Speed penalties.",
		ru = Dot_green.." Вы становитесь Непрерываемым во время заряжания атак ближнего боя.\n" -- руоф Непреклонный
			.."\n"
			..Dot_green.." Убираются штрафы к скорости движения при тяжёлых атаках ближнего боя.",
	},
	--[+ Passive 39 - Faith's Fortitude +]--	13.12.2025
	["loc_talent_zealot_3_tier_1_ability_3_description"] = { -- health_segment: +2
		en = "{health_segment:%s} "..CKWord("Wounds", "Wounds_rgb")..".",
		ru = "{health_segment:%s} "..CKWord("раны", "rany_rgb_ru")..".", -- Стойкость веры
		-- fr = "{health_segment:%s} "..CKWord("Blessures", "Wounds_rgb_fr").."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_33_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 40 - Restoring Faith +]--	13.12.2025
	["loc_talent_zealot_heal_damage_taken_desc"] = { -- damage_reduction: 20%, time: 4, s->seconds, +colors
		en = "On taking "..CKWord("Damage", "Damage_rgb")..", heal {damage_reduction:%s} of that "..CKWord("Damage", "Damage_rgb")..". Occurs over {time:%s} seconds.",
		ru = "При получении "..CKWord("урона", "urona_rgb_ru")..", вы восстановите {damage_reduction:%s} от этого "..CKWord("урона", "urona_rgb_ru").." в виде "..CKWord("здоровья", "zdorovia_rgb_ru").." в течение {time:%s} секунд.", -- Восстановление веры
		-- fr = "Lorsque vous subissez des "..CKWord("Dégâts", "Damage_rgb_fr")..", récuperez de la "..CKWord("Santé", "Health_rgb_fr").." à hauteur de {damage_reduction:%s} de ces "..CKWord("Dégâts", "Damage_rgb_fr")..". Se produit sur {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_12_rgb_fr,
		-- ["zh-tw"] = "",
	},
	--[+ Passive 41 - Behind the Lines +]--	13.12.2025
	["loc_talent_zealot_suppress_on_backstab_kill_desc"] = { -- range: 8, cooldown: 5
		en = "Heavy Melee Backstab Kills suppress enemies within {range:%s} meters.\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.",
		ru = "Убийства тяжёлой атакой в спину подавляют врагов в радиусе {range:%s} метров.\n" -- руоф В тылу врага
			..Dot_nc.." Восстановление: {cooldown:%s} секунд.",
	},
	--[+ Passive 42 - Relentless Fervor +]--	13.12.2025
	["loc_talent_zealot_sprint_improvements_alt_desc"] = { -- sprint_speed: +10%, sprint_cost: -10%, duration: 1
		en = Dot_green.." {sprint_speed:%s} Sprint Speed and\n"
			..Dot_green.." {sprint_cost:%s} Sprint Cost.\n"
			.."\n"
			.."Sprinting for {duration:%s} second grants:\n"
			..Dot_green.." Slowdown Immunity.",
		ru = Dot_green.." {sprint_speed:%s} к скорости бега и\n" -- Безжалостная страсть
			..Dot_green.." {sprint_cost:%s} к стоимости бега.\n"
			.."\n"
			.."Бег в течение {duration:%s} секунды даёт:\n"
			..Dot_green.." Иммунитет к замедлению.",
	},
	--[+ Passive 43 - Riposte +]--	13.12.2025
	["loc_talent_zealot_stacking_melee_damage_after_dodge_desc"] = { -- damage: +3%, stacks: 5, duration: 8
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." after Successful Dodge.\n"
			..Dot_nc.." Stacking: {stacks:%s} times.\n"
			..Dot_nc.." Lasts: {duration:%s} seconds.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." после успешного уклонения.\n" -- Ответный удар
			..Dot_nc.." Суммируется: до {stacks:%s} раз.\n"
			..Dot_nc.." Длится: {duration:%s} секунд.",
	},


--[+ ++OGRYN - ОГРИН++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Big Box of Hurt +]--
	-- ["loc_ability_ogryn_grenade_box_description"] = { -- +colors
		-- en = "Throw a box of Grenades with great strength and enthusiasm for High "..CKWord("Damage", "Damage_rgb").." against a Single Enemy.\n"
			-- .."Slightly increased "..CKWord("Damage", "Damage_rgb").." vs Unyielding and very low "..CKWord("Damage", "Damage_rgb").." vs Carapace armor.\n"
			-- .."Replenishes all boxes per Grenade pickup."
			-- ..TALENTS_Enh_desc2.ED_OGR_Blitz_0_rgb,
		-- ru = "Вы бросаете коробку гранат с огромной силой и энтузиазмом, чтобы нанести высокий "..CKWord("урон", "uronu_rgb_ru").." одному врагу.\nНемного увеличен "..CKWord("урон", "uronu_rgb_ru").." против несгибаемых врагов и очень низкий "..CKWord("урон", "uronu_rgb_ru").." против панцирной брони.\nПополняет все ящики при подборе гранат."..TALENTS_Enh_desc2_ru.ED_OGR_Blitz_0_rgb"), -- Большая коробка боли -- руоф Ящик, полный боли
		-- fr = "Lancer une boîte de grenades avec une grande force et enthousiasme pour des "..COLORS_KWords_fr.Damage_rgb_fr.." élevés  contre un seul ennemi."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_0_rgb_fr,
		-- ["zh-tw"] = "投擲一個手榴彈箱攻擊單一敵人。\n"
			-- .."\n"
			-- ..Dot_green.." 對不屈敵人造成稍高 "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"
			-- ..Dot_red.." 對裝甲敵人造成非常低 "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"
			-- ..Dot_nc.." 撿拾手榴彈時補滿所有彈箱。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Blitz_0_rgb_tw, -- 巨量傷害盒 --激情地奮力投出手雷箱，對單一敵人造成大量傷害。
	-- },
	--[+ BLITZ 1 - Big Friendly Rock +]--
	-- ["loc_ability_ogryn_friend_rock_desc"] = { -- recharge: 45, max_charges: 4, s->seconds
		-- en = "Toss a Big rock or hunk of junk at a Single Enemy. You pick up a new rock every {recharge:%s} seconds and can hold up to {max_charges:%s} rocks at a time.\n"
			-- .."Slightly increased "..CKWord("Damage", "Damage_rgb").." vs Maniac and very low "..CKWord("Damage", "Damage_rgb").." vs Carapace. Extra "..CKWord("Finesse", "Finesse_rgb").." boost against Unyielding.\n"
			-- .."Ogryn cannot pick up Grenade ammo."
			-- ..TALENTS_Enh_desc2.ED_OGR_Blitz_1_rgb,
		-- ru = "Вы бросаете большой камень или обломок бетона в одного врага. Вы подбираете новый камень каждые {recharge:%s} секунд и можете иметь при себе до {max_charges:%s} камней одновременно.\nСлегка увеличен "..CKWord("урон", "uronu_rgb_ru").." против маньяков и очень низкий "..CKWord("урон", "uronu_rgb_ru").." против панцирной брони. Дополнительное усиление от "..CKWord("ловкости", "lovkosti_rgb_ru").." против несгибаемых.\nОгрин не может подбирать гранаты."..TALENTS_Enh_desc2_ru.ED_OGR_Blitz_1_rgb"), -- Большой дружелюбный валун
		-- fr = "Lancer un gros caillou à un seul ennemi. Vous ramassez un nouveau caillou tous les {recharge:%s} secondes et pouvez en tenir jusqu'à {max_charges:%s} à la fois.\n"..COLORS_KWords_fr.Damage_rgb_fr.." légèrement augmenter contre les Maniaques et très faible "..COLORS_KWords_fr.Damage_rgb_fr.." contre ceux en armure Carapace. Bonus de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr.." contre les Implacable\nL'Ogryn ne peux plus ramasser de caisse de grenade."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_1_rgb_fr,
		-- ["zh-tw"] = "投擲巨石 攻擊單一敵人。\n"
			-- ..Dot_nc.." 每 {recharge:%s} 秒獲得一顆新石頭。\n"
			-- ..Dot_nc.." 最多可持有 {max_charges:%s} 顆。\n"
			-- ..Dot_green.." 對狂暴敵人造成 "..COLORS_KWords_tw.Damage_h_rgb_tw.."。\n"
			-- ..Dot_red.." 對裝甲敵人造成非常低 "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"
			-- ..Dot_green.." 對不屈敵人額外強化 "..COLORS_KWords_tw.Finesse_rgb_tw.." 效果。\n"
			-- ..Dot_red.." 歐格林無法撿拾手榴彈。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Blitz_1_rgb_tw, -- 投石問路 -- 向單個敵人投擲一塊巨石或一大塊垃圾。對甲殼護甲和不屈敵人的效果減弱。你每{recharge:%s}秒撿起一塊新岩石，一次可同時舉起{max_charges:%s}塊岩石。
	-- },
	--[+ BLITZ 1-1 - That One Didn't Count +]--
	-- ["loc_talent_ogryn_replenish_rock_on_miss_desc"] = { -- +colors
		-- en = "{talent_name:%s} Replenishes a Charge if you hit a "..CKWord("Weak Spot", "Weak_spot_rgb").." or hit no enemies. Cooldown "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." seconds.",
		-- ru = "{talent_name:%s} восстанавливает заряд, если вы попали в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru").." или не попали ни в кого. Восстановление "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." секунд.", -- Этот не считается -- руоф 
		-- fr = "{talent_name:%s} rend un caillou si vous touchez un "..COLORS_KWords_fr.Weakspot_rgb_fr.." ou si vous ne touchez aucun ennemi. Temps de rechargement "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." secondes", -- Ca ne comtpe pas
		-- ["zh-tw"] = "{talent_name:%s} 若 "..COLORS_KWords_tw.Weakspothits_rgb_tw.." 或未命中敵人，\n\n"
			-- ..Dot_green.." 將恢復一個使用次數。\n"
			-- ..Dot_nc.." 冷卻為 "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." 秒。", -- 那下不算! -- 命中弱點或未命中任何敵人時，{talent_name:%s}將恢復一次充能。冷卻時間{cooldown_duration:%s}秒。
	-- },
	--[+ BLITZ 2 - Frag Bomb +]--
	-- ["loc_ability_ogryn_grenade_demolition_desc"] = { -- radius: 16, m->meters, +colors
		-- en = "Throw an Ogryn-sized (the only proper kind!) "..CKWord("Frag Grenade", "Frag_gren_rgb").." with a {radius:%s} meters blast radius, dealing increased "..CKWord("Damage", "Damage_rgb").." at the center.\n"
			-- .."Fuse time: 2 seconds.\n"
			-- .."Very high armor "..CKWord("Damage", "Damage_rgb").." vs Flak, Maniac, Unyielding.\n"
			-- .."Deals high "..CKWord("Stagger", "Stagger_rgb").." against all enemies including Monstrosities, Captains/Twins (only without void shield).\n"
			-- .."Instakill all enemies with an explosion except: Maulers, Crushers, Bulwarks and Monstrosities."
			-- ..TALENTS_Enh_desc2.ED_OGR_Blitz_2_rgb,
		-- ru = "Вы бросаете огринского размера "..CKWord("Фраг-гранату", "Frag_gren_rgb_ru").." с радиусом взрыва до {radius:%s} метров, наносящую увеличенный "..CKWord("урон", "uronu_rgb_ru").." в центре."..TALENTS_Enh_desc2_ru.ED_OGR_Blitz_2_rgb"), -- Фраг-бомба -- руоф Осколочная бомба
		-- fr = "Lancer une "..COLORS_KWords_fr.Frag_gren_rgb_fr.." de taille Ogryn (la seule taille appropriée !) avec un rayon d'explosion de {radius:%s} mètres, infligeant des "..COLORS_KWords_fr.Damage_rgb_fr.." accrus au centre."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_2_rgb_fr,
		-- ["zh-tw"] = "投擲一顆歐格林專用 "..COLORS_KWords_tw.Frag_gren_rgb_tw.."。\n"
			-- ..Dot_green.." 爆炸半徑最大為 {radius:%s} 公尺。\n"
			-- ..Dot_green.." 中心區域造成更高 "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Blitz_2_rgb_tw, -- 破片炸彈 -- 投擲一枚歐格林尺寸（唯一完美的尺寸！）的破片手雷，爆炸範圍{radius:%s}公尺，爆心造成更高傷害。
	-- },
	--[+ BLITZ 3 - Bombs Away! +]--
	-- ["loc_talent_bonebreaker_grenade_super_armor_explosion_desc"] = { -- num_grenades: 6, talent_name: Big Box of Hurt, +colors
		-- en = "Throw a box of Grenades with great strength and enthusiasm to deal High "..CKWord("Damage", "Damage_rgb").." to a Single Enemy.\n"
			-- .."Hitting an Enemy causes the box to break open, releasing {num_grenades:%s} grenades around the target.\n"
			-- .."This is an augmented version of {talent_name:%s}."
			-- ..TALENTS_Enh_desc2.ED_OGR_Blitz_3_rgb,
		-- ru = "Вы бросаете коробку гранат с огромной силой и энтузиазмом, чтобы нанести высокий "..CKWord("урон", "uronu_rgb_ru").." одному врагу.\nПри попадании по врагу ящик разбивается, разбрасывая вокруг цели {num_grenades:%s} гранат.\nЭто улучшенная версия таланта {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Blitz_3_rgb"), -- Бросай бомбы! -- руоф Кидаю бомбу!
		-- fr = "Lancer une boîte de grenades avec une grande force et enthousiasme pour infliger des "..COLORS_KWords_fr.Damage_rgb_fr.." élevés à un seul ennemi.\nToucher un ennemi provoque l'ouverture de la boîte, libérant {num_grenades:%s} grenades autour de la cible.\nIl s'agit d'une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_3_rgb_fr,
		-- ["zh-tw"] = "投擲一個手榴彈箱攻擊單一敵人。\n"
			-- ..Dot_green.." 命中敵人後向四周拋出 {num_grenades:%s} 顆手榴彈。\n\n"
			-- .."此為 {talent_name:%s} 的強化版本。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Blitz_3_rgb_tw, -- 投彈完畢! -- 激情地奮力投出手雷箱，對單個敵人造成大量傷害。\n\n手雷箱擊中敵人即破壞，{num_grenades:%s}個即將爆炸的手雷散落於目標周圍。\n\n該天賦是{talent_name%s}的增強版。
	-- },
--[+ +AURA - АУРА+ +]--
	--[+ AURA 0 - Intimidating Presence +]--
	-- ["loc_talent_ogryn_2_base_4_description_new"] = { -- damage: +7.5%, +colors
		-- en = "{damage:%s} Heavy Melee Attack "..CKWord("Damage", "Damage_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb").."."
			-- ..TALENTS_Enh_desc2.ED_OGR_Aura_0_rgb,
		-- ru = "{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." тяжёлых атак ближнего боя для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru").."."..TALENTS_Enh_desc2_ru.ED_OGR_Aura_0_rgb"), -- Устрашающее присутствие -- руоф Пугающее присутствие
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." des attaques de mêlée puissantes pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_0_rgb_fr,
		-- ["zh-tw"] = "你與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友，\n\n"
			-- ..Dot_green.." {damage:%s} "..COLORS_KWords_tw.Damage_s_rgb_tw.." 。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Aura_0_rgb_tw, -- 威嚇氣場 
	-- },
	--[+ AURA 1 - Bonebreaker's Aura +]--
	-- ["loc_talent_damage_aura_improved_new"] = { -- damage: +10%, talent_name: Intimidating Presence, +colors
		-- en = "{damage:%s} Melee Attack "..CKWord("Damage", "Damage_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			-- .."\n"
			-- .."This is an augmented version of {talent_name:%s}."
			-- ..TALENTS_Enh_desc2.ED_OGR_Aura_1_rgb,
		-- ru = "{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." тяжёлых атак ближнего боя для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n\nЭто улучшенная версия ауры {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Aura_1_rgb"), -- Аура костолома
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." des attaques de mêlée pour vous et les alliés en syntonie.\n\nCeci est une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_1_rgb_fr,
		-- ["zh-tw"] = "你與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友，\n"
			-- ..Dot_green.." {damage:%s} "..COLORS_KWords_tw.Damage_s_rgb_tw.." 。\n\n"
			-- ..Dot_nc.." 此為 {talent_name:%s} 的強化版。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Aura_1_rgb_tw, -- 破骨者之環 --你和協同中的盟友的近戰攻擊傷害提高{damage:%s}。\n\n該天賦是{talent_name:%s}的強化版。
	-- },
	--[+ AURA 2 - Stay Close! +]--
	-- ["loc_talent_ogryn_toughness_regen_aura_desc"] = { -- toughness_regen_rate_modifier: +25%, +colors
		-- en = "{toughness_regen_rate_modifier:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment for you and Allies in "..CKWord("Coherency", "Coherency_rgb").."."
			-- ..TALENTS_Enh_desc2.ED_OGR_Aura_2_rgb,
		-- ru = "{toughness_regen_rate_modifier:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восполняется для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru").."."..TALENTS_Enh_desc2_ru.ED_OGR_Aura_2_rgb"), -- Будь рядом! -- руоф Не расходимся!
		-- fr = "{toughness_regen_rate_modifier:%s} de Régénération de la "..COLORS_KWords_fr.Toughness_rgb_fr.." pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_2_rgb_fr,
		-- ["zh-tw"] = "你與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友，\n"
			-- ..Dot_green.." {toughness_regen_rate_modifier:%s} "..COLORS_KWords_tw.Toughness_rs_rgb_tw.."。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Aura_2_rgb_tw, -- 跟緊我! 
	-- },
	--[+ AURA 3 - Coward Culling +]--
	-- ["loc_talent_ogryn_damage_vs_suppressed_new_desc"] = { -- damage:+20%, +colors
		-- en = "{suppression:%s} Suppression dealt.\n"
			-- .."{damage:%s} "..CKWord("Damage", "Damage_rgb").." against Suppressed Enemies for you and Allies in "..CKWord("Coherency", "Coherency_rgb").."."
			-- ..TALENTS_Enh_desc2.ED_OGR_Aura_3_rgb,
		-- ru = "{suppression:%s} к подавлению врагов.\n{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." по подавленным врагам для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru").."."..TALENTS_Enh_desc2_ru.ED_OGR_Aura_3_rgb"), -- Отсев трусливых -- руоф Трусливые отбросы
		-- fr = "{suppression:%s} de Suppression infligé.\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemis sous suppression pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_3_rgb_fr,
		-- ["zh-tw"] = "你與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友，\n"
			-- ..Dot_green.." 提升 {suppression:%s} 壓制效果。\n"
			-- ..Dot_green.." 對被壓制敵人增加 {damage:%s} "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_OGR_Aura_3_rgb_tw, -- 優勝劣汰 -- 你和協同中的盟友對被壓制的敵人造成的傷害增加{damage:%s}。
	-- },
--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
	--[+ ABILITY 0 - Bull Rush +]--
	-- ["loc_ability_ogryn_charge_description_new"] = { -- attack_speed: +25%, move_speed: +25%, duration: 5, cooldown: 30, s->seconds, +colors
		-- en = "Charge forward with great force, knocking back enemies and "..CKWord("Staggering", "Staggering_rgb").." them. Gain {attack_speed:%s} Attack Speed and {move_speed:%s} Movement Speed for {duration:%s} seconds. Charge is stopped on collision with Carapace Armoured Enemies, Unyielding Enemies and Monstrosities.\n"
			-- .."\n"
			-- .."Base Cooldown: {cooldown:%s} seconds."
			-- ..TALENTS_Enh_desc2.ED_OGR_Ability_0_rgb,
		-- ru = "Вы совершаете рывок вперёд, с огромной силой отбрасывая врагов и накладывая на них "..CKWord("ошеломление", "oshelomlenie_rgb_ru")..". Вы получаете {attack_speed:%s} к скорости атаки и {move_speed:%s} к скорости движения на {duration:%s} секунд. Рывок прекращается при столкновении с врагами в панцирной броне, несгибаемыми врагами или чудовищами.\n\nВосстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_0_rgb"), -- Рывок быка -- руоф Бычий натиск
		-- fr = "Chargez vers l'avant avec une grande force, repoussant les ennemis et les faisant "..COLORS_KWords_fr.Staggering_rgb_fr..". Gagnez {attack_speed:%s} de vitesse d'attaque et {move_speed:%s} de vitesse de déplacement pendant {duration:%s} secondes. La charge est arrêtée en cas de collision avec des ennemis en armure carapace, implacables et des monstruosités.\n\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_0_rgb_fr,
	-- },
	--[+ ABILITY 1 - Indomitable +]--
	-- ["loc_talent_ogryn_bull_rush_distance_desc"] = { -- attack_speed: +25%, move_speed: +25%, duration: 5, cooldown: 30, talent_name: Bull Rush, distance: 100%, s->seconds, +colors
		-- en = "Charge forward with great force, knocking back Enemies and "..CKWord("Staggering", "Staggering_rgb").." them. Gain {attack_speed:%s} Attack Speed and {move_speed:%s} Movement Speed for {duration:%s} seconds. Charge is stopped only on collision with Monstrosities.\n"
			-- .."Base Cooldown: {cooldown:%s} seconds.\n"
			-- .."This is an augmented version of {talent_name:%s} with an increased charge distance of {distance:%s}."
			-- ..TALENTS_Enh_desc2.ED_OGR_Ability_1_rgb,
		-- ru = "Вы совершаете рывок вперёд, с огромной силой отбрасывая врагов и накладывая на них "..CKWord("ошеломление", "oshelomlenie_rgb_ru")..". Вы получаете {attack_speed:%s} к скорости атаки и {move_speed:%s} к скорости движения на {duration:%s} секунд. Рывок прекращается только при столкновении с чудовищами.\n\nВосстанавливается {cooldown:%s} секунд.\nЭто улучшенная версия способности {talent_name:%s} с увеличенным на {distance:%s} расстоянием рывка."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_1_rgb"), -- Неукротимый -- руоф Неукротимость
		-- fr = "Chargez vers l'avant avec une grande force, repoussant les ennemis et les faisant "..COLORS_KWords_fr.Staggering_rgb_fr..". Gagnez {attack_speed:%s} de vitesse d'attaque et {move_speed:%s} de vitesse de déplacement pendant {duration:%s} secondes. La charge est arrêtée uniquement en cas de collision avec des monstruosités.\nTemps de recharge de base : {cooldown:%s} secondes.\nCeci est une version augmentée de {talent_name:%s} avec une distance de charge accrue de {distance:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_rgb_fr,
	-- },
	--[+ ABILITY 1-1 - Stomping Boots +]--
	-- ["loc_talent_ogryn_toughness_on_bull_rush_desc"] = { -- toughness: +10%, ability: Indomitable, +colors
		-- en = ("{toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes per Enemy Hit with {ability:%s}."
			-- ..TALENTS_Enh_desc2.ED_OGR_Ability_1_1_rgb,
		-- ru = "{toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается за каждого врага задетого способностью {ability:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_1_1_rgb"), -- Топающие сапоги -- руоф Сокрушающий топот
		-- fr = "{toughness:%s} de la "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère par ennemi touché avec {ability:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_1_rgb_fr,
	-- },
	--[+ ABILITY 1-2 - Trample +]--
	-- ["loc_talent_ogryn_ability_charge_trample_desc"] = { -- talent_name: Bull Rush, damage: +2%, duration: 8, stack: 25, s->seconds, +colors
		-- en = "For each Enemy hit by {talent_name:%s} you gain a Stack of "..CKWord("Trample", "Trample_rgb").." which increases Base "..CKWord("Damage", "Damage_rgb").." by {damage:%s} for {duration:%s} seconds. Max Stacks {stack:%s}."
			-- ..TALENTS_Enh_desc2.ED_OGR_Ability_1_2_rgb,
		-- ru = "За каждого врага, задетого способностью {talent_name:%s}, вы получаете заряд "..CKWord("Топота", "Trample_rgb_ru")..", который даёт {damage:%s} базового "..CKWord("урона", "uronu_rgb_ru").." на {duration:%s} секунд. Максимум {stack:%s} зарядов."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_1_2_rgb"), -- Топот -- руоф Топанье
		-- fr = "Pour chaque ennemi touché par {talent_name:%s}, vous gagnez un cumul de "..COLORS_KWords_fr.Trample_rgb_fr.." qui augmente les "..COLORS_KWords_fr.Damage_rgb_fr.." de base de {damage:%s} pendant {duration:%s} secondes. Jusqu'à {stack:%s} cumuls."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_2_rgb_fr,
	-- },
	--[+ ABILITY 1-3 - Pulverise +]--
	-- ["loc_talent_ogryn_bleed_on_bull_rush_desc"] = { -- stacks: 5, ability: Indomitable, +colors
		-- en = "{stacks:%s} Stacks of "..CKWord("Bleed", "Bleed_rgb").." are applied to enemies hit by {ability:%s}."
			-- ..TALENTS_Enh_desc2.ED_OGR_Ability_1_3_rgb,
		-- ru = "{stacks:%s} зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." накладывается на врагов, которых задела способность {ability:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_1_3_rgb"), -- Разбрызгивание -- Крошилово
		-- fr = "{stacks:%s} cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." sont appliqués aux ennemis touchés par {ability:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_3_rgb_fr,
	-- },
	--[+ ABILITY 2 - Loyal Protector +]--
	-- ["loc_ability_ogryn_taunt_shout_new_desc"] = { -- radius: 12, duration: 15, first_pulse: 3, second_pulse: 6, cooldown: 45, m->meters, s->seconds
		-- en = "Taunt Enemies within {radius:%s} meters, making them Attack only you for {duration:%s} seconds. The effect repeats after {first_pulse:%s} seconds, and after {second_pulse:%s} seconds.\n"
			-- .."\n"
			-- .."Base Cooldown: {cooldown:%s} seconds."
			-- ..TALENTS_Enh_desc2.ED_OGR_Ability_2_rgb,
		-- ru = "Вы кричите, провоцируя врагов в радиусе {radius:%s} метров и заставляя их атаковать только вас в течение {duration:%s} секунд. Эффект повторяется через {first_pulse:%s} секунды и через {second_pulse:%s} секунд.\n"
			-- .."\n"
			-- .."Восстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_2_rgb"), -- Верный защитник
		-- fr = "Provoque les ennemis dans un rayon de {radius:%s} mètres, les obligeant à ne s'attaquer qu'à vous pendant {duration:%s} secondes. L'effet se repète après {first_pulse:%s} secondes, et une seconde fois après {second_pulse:%s} secondes.\n\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_2_rgb_fr, -- Protecteur Loyal
	-- },
	--[+ ABILITY 2-1 - Valuable Distraction +]--
	-- ["loc_talent_ogryn_taunt_damage_taken_increase_description"] = { -- talent_name: Loyal Protector, base_damage: +25%, +colors
		-- en = "{base_damage:%s} Base "..CKWord("Damage", "Damage_rgb").." taken from all sources by enemies affected by {talent_name:%s} for "..CNumb("15", "n_15_rgb").." seconds."
			-- ..TALENTS_Enh_desc2.ED_OGR_Ability_2_1_rgb,
		-- ru = "{base_damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru").." из любого источника всем врагам, которых спровоцировала способность {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_2_1_rgb"), -- Отвлекающий манёвр -- руоф Ценное отвлечение
		-- fr = "{base_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." provenant de toutes les sources pour les ennemis affectés par {talent_name:%s} pendant "..CNumb("15", "n_15_rgb").." secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_2_1_rgb_fr,
	-- },
	--[+ ABILITY 2-2 - No Pain! +]--
	-- ["loc_talent_ogryn_taunt_restore_toughness_new_desc"] = { -- tougness: 2.5%, talent_name: Loyal Protector, +colors
		-- en = "{tougness:%s} "..CKWord("Toughness", "Toughness_rgb").." is replenished by {talent_name:%s} and its repeat effects. Plus an additional {toughness_per_hit:%s} "..CKWord("Toughness", "Toughness_rgb").." every "..CNumb("1", "n_1_rgb").." second per enemy for {duration:%s} seconds, up to {max:%s}."
			-- ..TALENTS_Enh_desc2.ED_OGR_Ability_2_2_rgb,
		-- ru = "{tougness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восполняется способностью {talent_name:%s} и его повторяющимися эффектами. Плюс дополнительная {toughness_per_hit:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." каждую "..CNumb("1", "n_1_rgb").." секунду за врага в течение {duration:%s} секунд, до {max:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_2_2_rgb"), -- Боли нет!
		-- fr = "Régénere {tougness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par {talent_name:%s} et ses répétitions. Plus {toughness_per_hit:%s} "..COLORS_KWords_fr.Toughness_rgb_fr.." toute les "..CNumb("1", "n_1_rgb").." second par ennemi pendant {duration:%s} secondes, jusqu'à {max:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_2_2_rgb_fr, -- Sans douleur!
	-- },
	--[+ ABILITY 2-3 - Go again! +]--
	-- ["loc_talent_ogryn_taunt_stagger_cd_description"] = { -- talent_name: Loyal Protector, radius: 50%, +colors
		-- en = CKWord("Staggering", "Staggering_rgb").." an Enemy replenishes {cooldown_reduction:%s} "..CKWord("Cooldown", "Cd_rgb").." of your {talent_name:%s}."
			-- ..TALENTS_Enh_desc2.ED_OGR_Ability_2_3_rgb,
		-- ru = CKWord("Ошеломление", "Oshelomlenie_rgb_ru").." врага восполняет {cooldown_reduction:%s} "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_2_3_rgb"), -- Давай по новой!
		-- fr = "Faire "..COLORS_KWords_fr.Staggering_rgb_fr.." un ennemi régénère {cooldown_reduction:%s} du "..COLORS_KWords_fr.Cd_rgb_fr.." de votre {talent_name:%s}.", -- Encore une fois! --..TALENTS_Enh_desc2.ED_OGR_Ability_2_3_rgb_fr
	-- },
	--[+ ABILITY 3 - Point-Blank Barrage +]--
	-- ["loc_talent_ogryn_combat_ability_special_ammo_new_desc"] = { -- ranged_attack_speed: +25%, reload_speed: +70%, duration: 10, cooldown: 80, s->seconds
		-- en = "Swaps to and reloads your Ranged Weapon.\n"
			-- .."For the next {duration:%s} seconds you have:\n"
			-- .."{damage:%s} Close Range "..CKWord("Damage", "Damage_rgb")..",\n"
			-- .."{ranged_attack_speed:%s} Rate of Fire,\n"
			-- .."{reload_speed:%s} Reload Speed and\n"
			-- ..CNumb("-", "n_minus_rgb").."{reduced_move_penalty:%s} to Braced Movement Speed penalties.\n"
			-- .."\n"
			-- .."Base Cooldown {cooldown:%s} seconds."
			-- ..TALENTS_Enh_desc2.ED_OGR_Ability_3_rgb,
		-- ru = "Вы переключаетесь на оружие дальнего боя и перезаряжаете его. Вы получаете на {duration:%s} секунд:\n{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." на ближней дистанции,\n{ranged_attack_speed:%s} к скорострельности,\n{reload_speed:%s} к скорости перезарядки и\n"..CNumb("-", "n_minus_rgb").."{reduced_move_penalty:%s} к штрафу скорости движения при прицеливании.\nВосстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_3_rgb"), -- Беспощадный обстрел в упор -- руоф Решительный натиск
		-- fr = "Échange et recharge votre arme à distance. Pendant les {duration:%s} secondes suivantes, vous avez une vitesse de tir de {ranged_attack_speed:%s}, une vitesse de recharge de {reload_speed:%s}, des pénalités de vitesse de déplacement réduites de {reduced_move_penalty:%s}, et vous gagnez {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à courte portée.\nTemps de recharge de base {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_rgb_fr, -- Barrage à bout portant
	-- },
	--[+ ABILITY 3-1 - Bullet Bravado +]--
	-- ["loc_talent_ogryn_special_ammo_toughness_on_shot_and_reload_desc"] = { -- ability: Point-Blank Barrage, toughness: +2%, toughness_reload: +10%, +colors
		-- en = "{toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes for every Shot Fired and {toughness_reload:%s} "..CKWord("Toughness", "Toughness_rgb").." on each Reload while {ability:%s} is active."
			-- ..TALENTS_Enh_desc2.ED_OGR_Ability_3_1_rgb,
		-- ru = "{toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается за каждый сделанный выстрел и ещё {toughness_reload:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." за каждую перезарядку во время действия способности {ability:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_3_1_rgb"), -- Бравада стрелка -- руоф Лихая пуля
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère à chaque tir et {toughness_reload:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." à chaque rechargement pendant que {ability:%s} est actif."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_1_rgb_fr, -- Bravade de la balle
	-- },
	--[+ ABILITY 3-2 - Hail of Fire +]--
	-- ["loc_talent_ogryn_special_ammo_armor_pen_new_desc"] = { 
		-- en = "{rending_multiplier:%s} "..CKWord("Rending", "Rending_rgb").." and {damage:%s} "..CKWord("Damage", "Damage_rgb").." to your Ranged Attacks while {ability:%s} is active."
			-- ..TALENTS_Enh_desc2.ED_OGR_Ability_3_2_rgb,
		-- ru = "{rending_multiplier:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." и {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." для ваших выстрелов во время действия способности {ability:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_3_2_rgb"), -- Град огня -- руоф Слава пламени
		-- fr = "{rending_multiplier:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." et {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à vos attaques à distance pendant que {ability:%s} est actif."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_2_rgb_fr,
	-- },
	--[+ ABILITY 3-3 - Light 'em Up +]--
	-- ["loc_talent_ogryn_special_ammo_fire_shots_new_desc"] = { -- stacks: 2, ability: Point-Blank Barrage, +colors
		-- en = CNumb("+", "n_plus_rgb").."{stacks:%s} Stacks of "..CKWord("Burn", "Burn_rgb").." are applied on Ranged Attacks while {ability:%s} is active. Max Stacks {max_stacks:%s}."
			-- ..TALENTS_Enh_desc2.ED_OGR_Ability_3_3_rgb,
		-- ru = CNumb("+", "n_plus_rgb").."{stacks:%s} заряда "..CKWord("горения", "gorenia_rgb_ru").." накладывают ваши выстрелы во время действия способности {ability:%s}. Максимум {max_stacks:%s} зарядов."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_3_3_rgb"), -- Задай жару -- руоф Зададим жару
		-- fr = "Les attaques à distance appliquent {stacks:%s} cumuls de "..COLORS_KWords_fr.Burn_rgb_fr.." pendant que {ability:%s} est actif. Jusqu'à un maximum de {max_stacks:%s} cumuls."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_3_rgb_fr, -- Allumez-les!
	-- },
--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
	--[+ KEYSTONE 1 - Heavy Hitter +]--
	-- ["loc_talent_ogryn_passive_heavy_hitter_new_desc"] = { -- damage: +5%, duration: 7.5, stacks: 5, s->seconds, +colors
		-- en = "{damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds on Melee Attack Hit. Stacks {stacks:%s} times. Gain {heavy_stacks:%s} Stacks on Heavy Attack Hit."
			-- ..TALENTS_Enh_desc2.ED_OGR_Keystone_1_rgb,
		-- ru = "{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя на {duration:%s} секунды при нанесении ударов в ближнем бою. Суммируется {stacks:%s} раз. Даёт {heavy_stacks:%s} заряда при тяжёлых ударах."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_rgb"), -- Тяжёлый нападающий -- руоф Тяжеловес
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée pendant {duration:%s} secondes lors d'une attaque réussie. Se cumuls {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_rgb_fr, -- Frappe lourde
	-- },
	--[+ KEYSTONE 1-1 - Don't Feel a Thing +]--
	-- ["loc_talent_ogryn_passive_heavy_hitter_tdr_desc"] = { -- talent_name: Heavy Hitter, stacks: 5, attack_speed: +10%
		-- en = "{toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for each Stack, also granted by {talent_name:%s}.",
		-- ru = "{toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." за каждый заряд даётся талантом {talent_name:%s}.", -- Не чувствую ничего
		-- fr = "{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Tghns_dmg_red_rgb_fr.." par cumuls de {talent_name:%s}.", -- Rien senti
	-- },
	--[+ KEYSTONE 1-2 - Just Getting Started +]--
	-- ["loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed_description"] = { -- talent_name: Heavy Hitter, stacks: 5, attack_speed: +10%
		-- en = "{attack_speed:%s} Attack Speed while {talent_name:%s} is at {stacks:%s} Stacks."
			-- ..TALENTS_Enh_desc2.ED_OGR_Keystone_1_2_rgb,
		-- ru = "{attack_speed:%s} к скорости атаки пока у вас {stacks:%s} зарядов таланта {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_2_rgb"), -- Я только начал -- руоф Лишь начало!
		-- fr = "{attack_speed:%s} Vitesse d'attaque tant que {talent_name:%s} est à {stacks:%s} cumuls."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_2_rgb_fr, -- Rien que le début
	-- },
	--[+ KEYSTONE 1-3 - Unstoppable +]--
	-- ["loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness_new_description"] = { -- talent_name: Heavy Hitter, stacks: 5, toughness_melee_replenish: +100%, +colors
		-- en = "{melee_toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished from Melee Kills for each Stack, also granted by {talent_name:%s}."
			-- ..TALENTS_Enh_desc2.ED_OGR_Keystone_1_3_rgb,
		-- ru = "{melee_toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается от убийств в ближнем бою за каждый заряд даётся талантом {talent_name:%s}.", -- Неудержимый -- руоф Неудержимость
		-- fr = "{melee_toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." régénérée par les éliminations en mêlée par cumuls de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_3_rgb_fr, -- Instoppable
	-- },
	--[+ KEYSTONE 1-4 - Great Cleaver +]--
	-- ["loc_talent_ogryn_passive_heavy_hitter_cleave_desc"] = { -- talent_name: Heavy Hitter
		-- en = "{cleave:%s} "..CKWord("Cleave", "Cleave_rgb").." for each Stack, also granted by {talent_name:%s}.",
		-- ru = "{cleave:%s} к "..CKWord("рассечению", "rassecheniu_rgb_ru").." за каждый заряд даётся талантом {talent_name:%s}.", -- Брутальный моментум -- руоф Зверский моментум
		-- fr = "{cleave:%s} de "..COLORS_KWords_fr.Cleave_rgb_fr.." par cumul de {talent_name:%s}.", -- Fouet de guerre
	-- },
	--[+ KEYSTONE 1-5 - Impactful +]--
	-- ["loc_talent_ogryn_passive_heavy_hitter_stagger_desc"] = { 
		-- en = "{impact:%s} "..CKWord("Impact", "Impact_rgb").." for each Stack, also granted by {talent_name:%s}.",
		-- ru = "{impact:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." врагов за каждый заряд даётся талантом {talent_name:%s}.", -- Брутальный моментум -- руоф Зверский моментум
		-- fr = "{impact:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.."par cumul de {talent_name:%s}.", -- Impactant
	-- },
	--[+ KEYSTONE 2 - Feel No Pain +]--
	-- ["loc_talent_ogryn_carapace_armor_any_damage_desc"] = { -- stacks: 10, toughness_regen: +2.5%, damage_reduction: +2.5%, duration: 3, s->seconds, +colors
		-- en = "You are blessed with {stacks:%s} Stacks of "..CKWord("Feel No Pain", "Feel_no_pain_rgb")..". Each Stack grants:\n"
			-- .."{toughness_regen:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment and\n"
			-- .."{damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Reduction.\n"
			-- .."Taking "..CKWord("Damage", "Damage_rgb").." removes one Stack. Stacks are restored every {duration:%s} seconds."
			-- ..TALENTS_Enh_desc2.ED_OGR_Keystone_2_rgb,
		-- ru = "Вам даровано {stacks:%s} зарядов "..CKWord("Неболита", "Feel_no_pain_rgb_ru")..". Каждый заряд даёт:\n{toughness_regen:%s} восполнения "..CKWord("стойкости", "stoikosti_rgb_ru").." и\n{damage_reduction:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".\nПолучение "..CKWord("урона", "uronu_rgb_ru").." снимает один заряд. Заряды восстанавливаются каждые {duration:%s} секунды."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_2_rgb"), -- Неболит
		-- fr = "Vous recevez {stacks:%s} cumuls de "..COLORS_KWords_fr.Feel_no_pain_rgb_fr..". Chaque cumul accorde :\n{toughness_regen:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." et\n{damage_reduction:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr..".\nPrendre des "..COLORS_KWords_fr.Damage_rgb_fr.." retire un cumul. Les cumuls sont restaurées toutes les {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_rgb_fr,
	-- },
	--[+ KEYSTONE 2-1 - Pained Outburst +]--
	-- ["loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks_new_desc"] = { -- talent_name: Feel No Pain, toughness_replenish: +20%, cooldown: 30, s->seconds, +colors
		-- en = "{toughness_replenish:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished when {talent_name:%s} reaches {stacks:%s} Stacks or below. It also creates an explosion that deals No "..CKWord("Damage", "Damage_rgb").." but "..CKWord("Staggers", "Staggers_rgb").." surrounding enemies.\n"
			-- .."\n"
			-- .."This effect can occur once every {cooldown:%s} seconds."
			-- ..TALENTS_Enh_desc2.ED_OGR_Keystone_2_1_rgb,
		-- ru = "{toughness_replenish:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается, если заряды таланта {talent_name:%s} достигают {stacks:%s} зарядов или меньше. Обнуление зарядов также создаёт взрыв, который не наносит "..CKWord("урона", "uronu_rgb_ru")..", но "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." врагов вокруг.\n\nЭтот эффект может срабатывать раз в {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_2_1_rgb"), -- Вспышка боли
		-- fr = "{toughness_replenish:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." régénérée quand {talent_name:%s} atteint {stacks:%s} cumul ou moins. Cela crée aussi une explosion qui ne cause pas de dégâts mais fait "..COLORS_KWords_fr.Staggering_rgb_fr.." les ennemis environnants.\n\nCet effet peut se produire une fois toutes les {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_1_rgb_fr, -- Éclat de douleur
	-- },
	--[+ KEYSTONE 2-2 - Strongest! +]--
	-- ["loc_talent_ogryn_carapace_armor_add_stack_on_push_desc"] = { -- talent_name: Feel No Pain
		-- en = CNumb("1", "n_1_rgb").." Stack of {talent_name:%s} is restored by Pushing enemies."
			-- ..TALENTS_Enh_desc2.ED_OGR_Keystone_2_2_rgb,
		-- ru = CNumb("1", "n_1_rgb").." заряд таланта {talent_name:%s} восстанавливается при отталкивании врагов."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_2_2_rgb"), -- Сильнейший!
		-- fr = CNumb("1", "n_1_rgb").." cumul de {talent_name:%s} est restaurée en poussant les ennemis."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_2_rgb_fr, -- Le plus fort!
	-- },
	--[+ KEYSTONE 2-3 - Toughest! +]--
	-- ["loc_talent_ogryn_carapace_armor_more_toughness_desc"] = { -- talent_name: Feel No Pain, toughness_regen: +2.5%, +colors
		-- en = "{toughness_regen:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishment per stack is granted by {talent_name:%s}."
			-- ..TALENTS_Enh_desc2.ED_OGR_Keystone_2_3_rgb,
		-- ru = "{toughness_regen:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается за каждый заряд таланта {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_2_3_rgb"), -- Стойкий! -- руоф Самый выносливый!
		-- fr = "{toughness_regen:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." par cumul est accordée par {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_3_rgb_fr, -- Le plus résistant!
	-- },
	--[+ KEYSTONE 3 - Burst Limiter Override +]--
	-- ["loc_talent_ogryn_blo_new_alt_desc"] = { -- proc_chance: 8%, +colors
		-- en = "{proc_chance:%s} chance of triggering "..CKWord("Lucky Bullet", "Lucky_bullet_rgb").." and not consuming Ammo when making Ranged Attacks.\n"
			-- .."\n"
			-- .."In addition, gain {ranged_damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." on Ranged Kills. Max Stacks {stacks:%s}. Lasts {duration:%s} seconds."
			-- ..TALENTS_Enh_desc2.ED_OGR_Keystone_3_rgb,
		-- ru = "{proc_chance:%s} шанс получить "..CKWord("Счастливую пулю", "Lucky_bullet_rgb_ru").." и не потратить боеприпас при выстреле.\n\nТакже вы получаете {ranged_damage:%s} к дальнобойному "..CKWord("урону", "uronu_rgb_ru").." при дальнобойных убийствах. Максимум {stacks:%s} зарядов. Длится {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_3_rgb"), -- Обход ограничителя очереди -- руоф Взлом ограничителя взрыва
		-- fr = "{proc_chance:%s} de chance de déclencher "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." et de ne pas consommer de munitions lors des attaques à distance.\n\nDe plus, vous gagnez {ranged_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance lors d'une élimination à distance. Se cumuls {stacks:%s} fois. Dure {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_rgb_fr, -- Obstruction du limiteur de tir
	-- },
	--[+ KEYSTONE 3-1 - Back Off! +]--
	-- ["loc_talent_ogryn_blo_melee_desc"] = { -- cooldown_reduction: +200%, duration: 2, s->seconds, +colors
		-- en = "{chance:%s} chance to trigger "..CKWord("Lucky Bullet", "Lucky_bullet_rgb").." on next Shot when killing an enemy with a Melee Attack. Stacks {stacks:%s} times.",
		-- ru = "{chance:%s} шанс активировать "..CKWord("Счастливую пулю", "Lucky_bullet_rgb_ru").." для вашего следующего выстрела после убийства врага в ближнем бою. Суммируется {stacks:%s} раз.", -- Максимальная огневая мощь
		-- fr = "{chance:%s} de chance de déclancher une "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." lors de votre prochain tir lors d'une élimination en mélée. Se cumuls {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_1_rgb_fr, -- Reculez!
	-- },
	--[+ KEYSTONE 3-2 - Maximum Firepower +]--
	-- ["loc_talent_ogryn_leadbelcher_grant_cooldown_reduction_desc"] = { -- cooldown_reduction: +200%, duration: 2, s->seconds, +colors
		-- en = "{cooldown_reduction:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb").." Reduction for {duration:%s} seconds when "..CKWord("Lucky Bullet", "Lucky_bullet_rgb").." triggers."
			-- ..TALENTS_Enh_desc2.ED_OGR_Keystone_3_2_rgb,
		-- ru = "{cooldown_reduction:%s} к сокращению времени "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." на  {duration:%s} секунды, когда вы получаете "..CKWord("Счастливую пулю", "Lucky_bullet_rgb_ru").."."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_3_2_rgb"), -- Максимальная огневая мощь
		-- fr = "{cooldown_reduction:%s} de "..COLORS_KWords_fr.Ability_cd_rgb_fr.." pendant {duration:%s} secondes lorsque "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." est déclenché."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_2_rgb_fr, -- Maximale puissance de feu
	-- },
	--[+ KEYSTONE 3-3 - Good Shootin' +]--
	-- ["loc_talent_ogryn_critical_leadbelcher_desc"] = { -- +colors
		-- en = "The shot that triggers "..CKWord("Lucky Bullet", "Lucky_bullet_rgb").." is a guaranteed "..CKWord("Critical", "Critical_rgb").." (if it Hits).",
		-- ru = "Выстрел активировавший "..CKWord("Счастливую пулю", "Lucky_bullet_rgb_ru").." гарантированно будет "..CKWord("критическим выстрелом", "krit_vystrelom_rgb_ru").." (если попадёт).", -- Хорошая стрельба -- руоф Хороший выстрел
		-- fr = "Le tir qui déclenche "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." est un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." garanti (s'il touche).", -- Bonne visée
	-- },
	--[+ KEYSTONE 3-4 - Heat of Battle +]--
	-- ["loc_talent_ogryn_blo_fire_rate_desc"] = { -- proc_chance: 12%, +colors
		-- en = "{fire_rate:%s} Fire Rate per Stack, also granted by {talent_name:%s}.",
		-- ru = "{fire_rate:%s} к скорострельности за каждый заряд даётся талантом {talent_name:%s}.", -- Горячка боя
		-- fr = "{fire_rate:%s} de vitesse de tir par cumul de {talent_name:%s}.", -- Chaleur de la bataille
	-- },
	--[+ KEYSTONE 3-5 - More Burst Limiter Overrides! +]--
	-- ["loc_talent_ogryn_blo_ally_ranged_buffs_desc"] = { -- proc_chance: 12%, +colors
		-- en = "{ranged_damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." to you and Allies in "..CKWord("Coherency", "Coherency_rgb").." on "..CKWord("Lucky Bullet", "Lucky_bullet_rgb")..". Lasts {duration:%s} seconds.",
		-- ru = "{ranged_damage:%s} к дальнобойному "..CKWord("урону", "uronu_rgb_ru").." для вас и ваших союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..", когда вы получаете "..CKWord("Счастливую пулю", "Lucky_bullet_rgb_ru")..". Длится {duration:%s} секунд.", -- Ещё больший обход ограничителя очереди! -- руоф Больше взлома ограничителя взрыва!
		-- fr = "{ranged_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance pour vous et vos alliés en syntonie lors d'une "..COLORS_KWords_fr.Lucky_bullet_rgb_fr..". Dure {duration:%s} secondes..", -- Encore plus de contournement du limiteur de tir!
	-- },
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Lynchpin +]--
	-- ["loc_talent_ogryn_coherency_toughness_increase_desc"] = { -- toughness_multiplier: +50%, +colors
		-- en = "{toughness_multiplier:%s} "..CKWord("Toughness", "Toughness_rgb").." replenish while in "..CKWord("Coherency", "Coherency_rgb")..".",
		-- ru = "{toughness_multiplier:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается пока вы в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".", -- Опора -- руоф Переломный момент
		-- fr = "{toughness_multiplier:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_7_rgb_fr, -- Opérateur
	-- },
	--[+ Passive 2 - Heavyweight +]--
	-- ["loc_talent_ogryn_ogryn_fighter_desc"] = { -- damage: +30%, damage_reduction: +30%, +colors
		-- en = "{damage:%s} "..CKWord("Damage", "Damage_rgb").." against Bulwarks, Crushers, Plague Ogryns and Reapers. Also receive {damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Reduction against the same.",
		-- ru = "{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." бастионам, жнецам, крушителям и чумным огринам. Также вы получаете {damage_reduction:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." от них.", -- Тяжеловес
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les Remparts, Broyeurs, Ogryns de la Peste et Fauchers. Vous recevez également {damage_reduction:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les mêmes ennemis.", -- Poid Lourd
	-- },
	--[+ Passive 3 - Steady Grip +]--
	-- ["loc_talent_ogryn_toughness_regen_while_bracing_desc"] = { -- toughness_regen: +3%, +colors
		-- en = "{toughness_regen:%s} "..CKWord("Toughness", "Toughness_rgb").." Regeneration while bracing your Ranged weapon.",
		-- ru = "{toughness_regen:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается пока вы целитесь из дальнобойного оружия.", -- Крепкий хват -- руоф Крепкая хватка
		-- fr = "{toughness_regen:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors de la mis en joue de votre arme à distance.", -- Poigne ferme
	-- },
	--[+ Passive 4 - Smash 'Em! +]--
	-- ["loc_talent_ogryn_toughness_on_single_heavy_new_desc"] = { -- toughness: 20%, +colors
		-- en = "{toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes after hitting a single Enemy with a Melee Attack. Increased to {heavy_toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." if it is a Heavy Attack.",
		-- ru = "{toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается после попадания по одному врагу тяжёлой атакой ближнего боя. Увеличивается до {heavy_toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..", если вы ударили тяжёлой атакой.", -- Круши их! -- руоф Вдарь им!
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère après avoir frappé un seul ennemi avec une attaque de mêlée et {heavy_toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." si c'est une attaque de mélée puissante.", -- Ecrabouille les
	-- },
	--[+ Passive 5 - The Best Defence +]--
	-- ["loc_talent_ogryn_toughness_on_multiple_new_desc"] = { -- toughness: 20%, +colors
		-- en = "{toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes after hitting multiple Enemies with a single Melee Attack. Increased to {heavy_toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." if it is a Heavy Attack.",
		-- ru = "{toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при нанесении удара по нескольким врагам одной тяжёлой атакой ближнего боя. Увеличивается до {heavy_toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..", если вы ударили тяжёлой атакой.", -- Лучшая защита
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère après avoir touché plusieurs ennemis avec une seule attaque de mêlée et {heavy_toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." si c'est une attaque de mélée puissante.", -- La meilleure défense
	-- },
	--[+ Passive 6 - Furious +]--
	-- ["loc_talent_ogryn_damage_per_enemy_hit_previous_new_desc"] = { -- damage: +2.5%, +colors
		-- en = "You gain "..CNumb("1", "n_1_rgb").." Stack of {damage:%s} "..CKWord("Damage", "Damage_rgb").." for each enemy Hit during a Single Melee Attack. Up to "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." "..CKWord("Damage", "Damage_rgb").." at "..CNumb("10", "n_10_rgb").." Stacks. Calculated separately for each Attack.",
		-- ru = "Вы получаете "..CNumb("1", "n_1_rgb").." заряд {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." за каждого поражённого врага в течение одной атаки ближнего боя. До "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." при "..CNumb("10", "n_10_rgb").." зарядах. Рассчитывается отдельно для каждой атаки.", -- Разъярённый -- руоф Разъяренный
		-- fr = "Vous gagnez "..CNumb("1", "n_1_rgb").." cumul de {damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." par ennemis touchez durant une attaque de mélée unique. Jusqu'à "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." de "..COLORS_KWords_fr.Damage_rgb_fr.." à "..CNumb("10", "n_10_rgb").." cumuls. calculer séparement pour chaque attaque.", -- Furieux
	-- },
	--[+ Passive 7 - Towering Presence +]--
	-- ["loc_talent_ogryn_bigger_coherency_radius_desc"] = { -- radius: +50%
		-- en = "{radius:%s} "..CKWord("Coherency", "Coherency_rgb").." radius.",
		-- ru = "{radius:%s} к радиусу "..CKWord("сплочённости", "splochennosti_rgb_ru")..".", -- Живая башня -- Величественное присутствие -- руоф Выдающееся присутствие
		-- fr = "{radius:%s} de rayon de syntonie.",
	-- },
	--[+ Passive 8 - Soften Them Up +]--
	-- ["loc_talent_ogryn_targets_recieve_damage_increase_debuff_new_desc"] = { -- damage: +15%, duration: 5, +colors
		-- en = "{damage:%s} "..CKWord("Damage", "Damage_rgb").." taken by Enemies for {duration:%s} seconds after receiving "..CKWord("Damage", "Damage_rgb").." from your Melee Attacks.",
		-- ru = "{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." получаемому врагами в течение {duration:%s} секунд после получения "..CKWord("урона", "uronu_rgb_ru").." от ваших атак ближнего боя.", -- Ослабь их -- руоф Упокоить их
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes est subit par les ennemis que vous frappez.",
	-- },
	--[+ Passive 9 - Payback Time +]--
	-- ["loc_talent_ogryn_revenge_damage_new_desc"] = { -- damage: +20%, duration: 5, s->seconds, +colors
		-- en = "{damage:%s} "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds on taking or blocking a Melee hit, and on successfully Dodging enemy Melee or Ranged attacks (except Gunners, Reaper, Sniper), and Disabler attacks (Pox Hound jump, Trapper net, Mutant grab).",
		-- ru = "{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд при получении или блокировании удара в ближнем бою, при успешном уклонении от атак противника в ближнем или дальнем бою (кроме атак Пулемётчиков, Жнецов и Снайперов), а также атак обездвиживающих врагов (прыжок Гончей, сетка Ловца, захват Мутанта).", -- Время расплаты
		-- fr = "Vous gagnez {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." durant {duration:%s} secondes en subbisant ou en bloquant une attaque de mélée, ainsi qu'une esquive réussie d'une attaque de mélée ou d'une attaque à distance (sauf Mitrailleurs, Faucheurs, Snipers), et les attaques des spéciaux (saut de cerbère, filet de trappeuse, Mutant).",
	-- },
	--[+ Passive 10 - Pumped Up +]--
	-- ["loc_talent_ogryn_damage_reduction_on_high_stamina_desc"] = { -- damage_taken: +15%, stamina: 75%, +colors
		-- en = "{damage_taken:%s} "..CKWord("Health", "Health_rgb").." and "..CKWord("Toughness", "Toughness_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance while above {stamina:%s} max "..CKWord("Stamina", "Stamina_rgb")..".",
		-- ru = "{damage_taken:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." "..CKWord("стойкости", "stoikosti_rgb_ru").." и "..CKWord("здоровью", "zdoroviu_rgb_ru").." пока ваш уровень "..CKWord("выносливости", "vynoslivosti_rgb_ru").." выше {stamina:%s}.", -- Качок
		-- fr = "{damage_taken:%s} Résistance au "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Health_rgb_fr.." et de "..COLORS_KWords_fr.Toughness_rgb_fr.."  en étant au dessus de {stamina:%s} max "..CKWord("Stamina", "Stamina_rgb")..".", -- Gonflé
	-- },
	--[+ Passive 11 - Focused Fighter +]--
	-- ["loc_talent_ogryn_melee_attacks_give_mtdr_desc"] = { -- : +4%, : 5, +colors
		-- en = "{reduction:%s} "..CKWord("Damage", "Damage_rgb").." Resistance from Melee Attacks after your Successful Melee Attack. You gain "..CNumb("1", "n_1_rgb").." Stack per swing, Up to {stacks:%s}. Stacks are removed upon taking "..CKWord("Damage", "Damage_rgb").." from a Melee Attack.",
		-- ru = "{reduction:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." от атак ближнего боя после успешной вашей атаки ближнего боя. Вы получаете "..CNumb("1", "n_1_rgb").." заряд за удар, вплоть до {stacks:%s}. Заряды сбрасываются при получении "..CKWord("урона", "uronu_rgb_ru").." от атак ближнего боя.", -- Сосредоточенный боец
		-- fr = "{reduction:%s} Réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." des attaques de mélée lors d'une attaque de mélée réussie.Vous gagnez "..CNumb("1", "n_1_rgb").." cumul par coup, Jusqu'à {stacks:%s}. Les cumuls sont retirés lorsque vous subissez des "..COLORS_KWords_fr.Damage_rgb_fr.." d'une attaque de mélée.",
	-- },
	--[+ Passive 12 - Strongman +]--
	-- ["loc_talent_ogryn_damage_reduction_after_elite_kill_desc"] = { -- : +10%, : 5, +colors
		-- en = "{damage_reduction:%s} "..CKWord("Health", "Health_rgb").." and "..CKWord("Toughness", "Toughness_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance on Elite or Special Kill. Lasts {duration:%s} seconds.",
		-- ru = "{damage_reduction:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." "..CKWord("стойкости", "stoikosti_rgb_ru").." и "..CKWord("здоровью", "zdoroviu_rgb_ru").." после убийства элитного врага или специалиста. Длится {duration:%s} секунд.", -- Силач
		-- fr = "{damage_reduction:%s} Réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Health_rgb_fr.." et de "..COLORS_KWords_fr.Toughness_rgb_fr.."  lors d'une élimination d'élite ou de spécialiste. Pendant {duration:%s} secondes.",
	-- },
	--[+ Passive 13 - Can't Hit Me...Again - Can't Hit Me... Again +]--
	-- ["loc_talent_ogryn_ranged_damage_immunity_desc"] = { -- : +10%, : 5, +colors
		-- en = "{resistance:%s} "..CKWord("Health", "Health_rgb").." and "..CKWord("Toughness", "Toughness_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance vs Ranged for {duration:%s} seconds after getting hit by a Ranged Attack (including hits by Beast of Nurgle vomit, Flamers' direct fire, and Bombers' grenade direct impact). Cooldown {cooldown:%s} seconds.",
		-- ru = "{resistance:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." "..CKWord("стойкости", "stoikosti_rgb_ru").." и "..CKWord("здоровью", "zdoroviu_rgb_ru").." против атак дальнего боя в течение {duration:%s} секунд после попадания вражеского снаряда в вас (включая попадание рвоты Зверя Нургла, а также прямые попадания огнём Огнемётчика и гранатой Гренадёра). Восстановление {cooldown:%s} секунды.", -- Попробуй попади... снова
		-- fr = "{resistance:%s} de Résistance au "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Health_rgb_fr.." et de "..COLORS_KWords_fr.Toughness_rgb_fr.." à distance pendant {duration:%s} secondes après avoir été touchez par une attaque à distance (incluant le vomit de la bête de Nurgle, le feu direct des incendiaires, et l'impact directe des grenades des grenadiers). Temps de recharge {cooldown:%s} secondes.",
	-- },
	--[+ Passive 14 - Keep Shooting +]--
	-- ["loc_talent_ogryn_reload_speed_on_empty_desc"] = { -- : +10%, : 5, +colors
		-- en = "{reload_speed:%s} Reload Speed when reloading an Empty Clip.",
		-- ru = "{reload_speed:%s} к скорости перезарядки при перезарядке пустого магазина.", -- Продолжай стрелять
		-- fr = "{reload_speed:%s} de vitesse de rechargement si le chargeur est vide.",
	-- },
	--[+ Passive 15 - Beat Them Back +]--
	-- ["loc_talent_ogryn_melee_damage_after_heavy_desc"] = { -- : +10%, : 5, +colors
		-- en = "{melee_damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." on Successful Heavy Melee Attack. Lasts {duration:%s} seconds.",
		-- ru = "{melee_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя при успешной тяжёлой атаке ближнего боя. Длится {duration:%s} секунд.", -- Дай им отпор -- руоф Дай сдачи
		-- fr = "{melee_damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée lors d'une attaque puissante de mélée réussie. Dure pendant {duration:%s} secondes.",
	-- },
	--[+ Passive 16 - Strike True +]--
	-- ["loc_talent_ogryn_weakspot_damage_desc"] = { -- : +10%, : 5, +colors
		-- en = "{damage:%s} Melee "..CKWord("Weak Spot", "Weak_spot_rgb").." "..CKWord("Strength", "Strength_rgb").."."..CNote("Pwr_note"),
		-- ru = "{damage:%s} к  "..CKWord("силе", "sile_rgb_ru").." атак ближнего боя при попадании в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").."."..CNote("Pwr_note"), -- Меткий удар
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Strength_rgb_fr.." de mélée lors d'un coup en mélée sur un "..COLORS_KWords_fr.Weakspothit_rgb_fr.."."..COLORS_KWords_fr.Pwr_note_fr, -- Coup au but
	-- },
	--[+ Passive 17 - Slam +]--
	-- ["loc_talent_ogryn_melee_stagger_new_desc"] = { -- stagger: +25%, +colors
		-- en = "{stagger:%s} "..CKWord("Impact", "Impact_rgb").." bonus on Melee Attacks. {stamina:%s} "..CKWord("Stamina", "Stamina_rgb").." replenished when "..CKWord("Staggering", "Staggering_rgb").." an enemy with a Melee Attack. Cooldown {cooldown:%s} second.",
		-- ru = "{stagger:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." врагов от атак ближнего боя.\n{stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru").." восполняется при "..CKWord("ошеломлении", "oshelomlenii_rgb_ru").." врага атакой ближнего боя. Восстановление {cooldown:%s} секунда.", -- Сокрушение -- руоф Хлопок
		-- fr = "{stagger:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.." bonus sur les attaques de mêlée. {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." est régénérée lorsque vous faites "..COLORS_KWords_fr.Staggering_rgb_fr.." un ennemie avec une attaque de mélée. Temps de recharge : {cooldown:%s} seconde.",
	-- },
	--[+ Passive 18 - Ammo Stash +]--
	-- ["loc_talent_ogryn_increased_ammo_desc"] = { -- max_ammo: +25%
		-- en = "{max_ammo:%s} to your Maximum Ammo reserve, rounds down.",
		-- ru = "{max_ammo:%s} к максимальному количеству боеприпасов в резерве. Округляется в меньшую сторону.", -- Схрон патронов
		-- fr = "Augmente votre réserve de munitions maximale de {max_ammo:%s}, arrondi à l'inférieur.",
	-- },
	--[+ Passive 19 - Big Boom +]--
	-- ["loc_talent_ogryn_increase_explosion_radius_desc"] = { -- explosion_radius: +27.5%
		-- en = "{explosion_radius:%s} to the radius of any explosions you cause.",
		-- ru = "{explosion_radius:%s} к радиусу любых взрывов, вызванных вами.", -- Большой бабах
		-- fr = "Augmentez le rayon de vos explosion de {explosion_radius:%s} peu importe la source.", -- Baboom
	-- },
	--[+ Passive 20 - Crunch! +]--
	-- ["loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger_new_desc"] = { -- damage: +40%, stagger: +40%, &->and, +colors
		-- en = "Based on charge time, your charged Melee Attack gains:\n"
			-- .."{damage:%s} "..CKWord("Damage", "Damage_rgb").." and\n"
			-- .."{stagger:%s} "..CKWord("Impact", "Impact_rgb")..".",
		-- ru = "В зависимости от времени заряжания, ваша заряженная атака ближнего боя получает прибавку:\n{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n{stagger:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru")..".", -- Хрусь! -- руоф Хрясь!
		-- fr = "En fonction du temps de charge de votre attaque vous gagnez :\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." bonus et\n{stagger:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.." bonus."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_10_rgb_fr,
	-- },
	--[+ Passive 21 - Batter +]--
	-- ["loc_talent_ogryn_heavy_bleeds_new_desc"] = { -- stacks: +4, +colors
		-- en = "Inflict {stacks:%s} Stacks of "..CKWord("Bleed", "Bleed_rgb").." on Melee Hit. Increased to {heavy_stacks:%s} on Heavy Melee Hit. Up to "..CNumb("16", "n_16_rgb").." Max "..CKWord("Bleed", "Bleed_rgb").." Stacks on a target.",
		-- ru = "{stacks:%s} заряда "..CKWord("кровотечения", "krovotechenia_rgb_ru").." накладывается на врага атаками ближнего боя. Увеличивается до {heavy_stacks:%s} при тяжёлом ударе ближнего боя. Вплоть до "..CNumb("16", "n_16_rgb").." зарядов на цель.", -- Месиво
		-- fr = "Inflige {stacks:%s} cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." sur une attaque de mêlée. Et {heavy_stacks:%s} cumuls sur une attaque puissante. Jusqu'à "..CNumb("16", "n_16_rgb").." cumuls maximum de "..COLORS_KWords_fr.Bleed_rgb_fr.." sur une cible.",
	-- },
	--[+ Passive 22 - Brutish Strength +]--
	-- ["loc_talent_ogryn_pushing_applies_brittlenes_desc"] = { -- stacks: +4, +colors
		-- en = "{stacks:%s} Stacks of "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." applied to enemies on Push. Up to "..CNumb("40%", "pc_40_rgb").." Max at "..CNumb("16", "n_16_rgb").." Stacks.",
		-- ru = "{stacks:%s} заряда "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." применяется к врагам при отталкивании. До максимум "..CNumb("40%", "pc_40_rgb").." при "..CNumb("16", "n_16_rgb").." зарядах.", -- Грубая сила
		-- fr = "{stacks:%s} cumuls de "..CNumb("2.5%", "pc_2_5_rgb").." de "..COLORS_KWords_fr.Brittleness_rgb_fr.." appliqués lors d'une poussée. Jusqu'à "..CNumb("40%", "pc_40_rgb").." Max à "..CNumb("16", "n_16_rgb").." cumuls.",
	-- },
	--[+ Passive 23 - For the Lil'Uns +]--
	-- ["loc_talent_ogryn_protect_allies_desc"] = { -- stacks: +4, +colors
		-- en = "{power:%s} "..CKWord("Strength", "Strength_rgb").." and {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for {duration:%s} seconds when an Ally's "..CKWord("Toughness", "Toughness_rgb").." breaks. Cooldown {cooldown:%s} seconds.\n"
			-- .."\n"
			-- .."{revive_speed:%s} Revive Speed and "..CKWord("Stun", "Stun_rgb").." Immunity for {duration:%s} seconds when an Ally is Knocked Down.",
		-- ru = , -- За малых
		-- fr = "{power:%s} de "..COLORS_KWords_fr.Strength_rgb_fr.." et {toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Tghns_dmg_red_rgb_fr.." pendant {duration:%s} secondes quand la "..COLORS_KWords_fr.Toughness_rgb_fr.." d'un allié se brise. Temps de recharge : {cooldown:%s} secondes.\n\n{revive_speed:%s} de vitesse de réanimation et l'immunité à l'"..COLORS_KWords_fr.Stuns_rgb_fr.." pendant {duration:%s} secondes quand un allié tombe à terre.", -- Pour les microbes
	-- },
	--[+ Passive 24 - Concentrate +]--
	-- ["loc_talent_ogryn_drain_stamina_for_handling_desc"] = { -- stacks: +4, +colors
		-- en = "While bracing your Ranged Weapon you gain:\n"
			-- .."{sway_reduction:%s} Sway Reduction,\n"
			-- .."{spread_reduction:%s} Spread Reduction and\n"
			-- .."{recoil_reduction:%s} Recoil Reduction,\n"
			-- .."but lose {stamina:%s} "..CKWord("Stamina", "Stamina_rgb").." per second.",
		-- ru = "{sway_reduction:%s} к уменьшению раскачивания,\n{spread_reduction:%s} к уменьшению разброса и\n{recoil_reduction:%s} к уменьшению отдачи при прицеливании из оружия дальнего боя, но при этом теряется {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru").." в секунду.", -- Сосредоточься
		-- fr = "Lors de la mis en joue de votre arme à distance vous gagnez:\n{sway_reduction:%s} de réduction du balancement ,\n{spread_reduction:%s} de réduction du dispercement et\n{recoil_reduction:%s} de réduction du recul,\nMaisvous perdez {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." par seconde.", -- Concentration
	-- },
	--[+ Passive 25 - Fire Away +]--
	-- ["loc_talent_ogryn_explosions_burn_close_desc"] = { -- stacks: +4, +colors
		-- en = "{stacks:%s} Stack of "..CKWord("Burn", "Burn_rgb").." applied by your explosions.\n"
			-- .."{more_stacks:%s} Stacks if targets are inside the explosion epicenter.\n"
			-- .."Up to {max_stacks:%s} Max "..CKWord("Burn", "Burn_rgb").." Stacks on a target.",
		-- ru = "{stacks:%s} заряд "..CKWord("горения", "gorenia_rgb_ru").." накладывается вашими взрывами.\n{more_stacks:%s} заряда, если враг находится в эпицентре взрыва. Максимум {max_stacks:%s} зарядов "..CKWord("горения", "gorenia_rgb_ru")..".", -- Поджиг
		-- fr = "{stacks:%s} cumul de "..COLORS_KWords_fr.Burn_rgb_fr.." est appliqué à vos explosions.\n{more_stacks:%s} cumuls ci la cible est dans l'épicentre de l'explosion.\nJusqu'à {max_stacks:%s} cumuls de "..COLORS_KWords_fr.Burn_rgb_fr.." maximum sur une cible.", -- Flamboiment
	-- },
	--[+ Passive 26 - Simple Minded +]--
	-- ["loc_talent_ogryn_corruption_resistance_desc"] = { -- stacks: +4, +colors
		-- en = "{resistance:%s} "..CKWord("Corruption", "Corruption_rgb").." Resistance.\n"
			-- .."Reduces "..CKWord("Corruption Damage", "Corruptdmg_rgb").." taken by any enemy source, including Poxburster explosion, toxic gas, Poxwalker Melee attacks, Pox Hound pounce, Beast of Nurgle vomit/slime/consumed, Daemonhost, grimoires, etc.",
		-- ru = "{resistance:%s} сопротивления "..CKWord("порче", "porche_rgb_ru")..".\nУменьшает "..CKWord("урон от порчи", "porchi_uron_rgb_ru")..", получаемый от любого вражеского источника, включая взрыв Чумного взрывника, токсичный газ, атаки Чумного ходока в ближнем бою, нападение Чумной гончей, рвоту/слизь/проглатывание Зверя Нургла, атаки Демонхоста, гримуары и т.д.", -- Простота ума
		-- fr = "{resistance:%s} de résistance à la "..COLORS_KWords_fr.Corruption_rgb_fr..".\nréduit les "..COLORS_KWords_fr.Corruptdmg_rgb_fr.." subit de toute les sources:  explosion des crache-peste, gaz toxique, attaque de mélée des scrofuleux, morsures des cerbère, le vomit/résidu/avalement de la bête de Nurgle, Hôte Daemoniaque, grimoires, etc.",
	-- },
	--[+ Passive 27 - Unbreakable +]--
	-- ["loc_talent_ogryn_block_all_attacks_variant_desc"] = { -- stacks: +4, +colors
		-- en = "{damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." for "..CNumb("5", "n_5_rgb").." seconds on Perfect Block. Your Perfect Blocks can block all Melee Attacks.",
		-- ru = "{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." в ближнем бою на "..CNumb("5", "n_5_rgb").." секунд при идеальном блоке. Ваши идеальные блоки могут блокировать все атаки ближнего боя.", -- Непробиваемый
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée pendant "..CNumb("5", "n_5_rgb").." secondes lors d'un blocage parfait. Vos blocage parfait peuvent bloquer toute les attaques de mélées.",
	-- },
	--[+ Passive 28 - Too Stubborn to Die +]--
	-- ["loc_talent_ogryn_toughness_gain_increase_on_low_health_desc"] = { -- toughness_multiplier: +100%, health: 33%, +colors
		-- en = "{toughness_multiplier:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment while below {health:%s} "..CKWord("Health", "Health_rgb")..".",
		-- ru = "{toughness_multiplier:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru")..", если ваш уровень "..CKWord("здоровья", "zdorovia_rgb_ru").." опустился ниже {health:%s}.", -- Слишком упёртый, чтобы умереть -- руоф Слишком упрям, чтобы умереть
		-- fr = "{toughness_multiplier:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." Récupération en dessous de {health:%s} de "..COLORS_KWords_fr.Health_rgb_fr..".", -- Trop têtu pour mourir
	-- },
	--[+ Passive 29 - Frenzied Blows +]--
	-- ["loc_talent_ogryn_stacking_attack_speed_desc"] = { -- stacks: +4, +colors
		-- en = "{attack_speed:%s} Melee Attack Speed on Chained Hit for {duration:%s} seconds. Stacks {stacks:%s} times. Generates "..CNumb("1", "n_1_rgb").." Stack per swing. Can be refreshed during active duration.",
		-- ru = "{attack_speed:%s} к скорости атаки в ближнем бою при серии ударов на {duration:%s} секунд. Суммируется {stacks:%s} раз. Генерирует "..CNumb("1", "n_1_rgb").." заряд за удар. Может обновляться во время действия.", -- Яростные удары
		-- fr = "{attack_speed:%s} de vitesse d'attaque de mélée lors de coup en chaîne pendant {duration:%s} secondes. Se cumuls {stacks:%s} fois. Génère "..CNumb("1", "n_1_rgb").." cumul par coup. La durée est rafraichie une fois le mumuls maximal atteint.",
	-- },
	--[+ Passive 30 - Attention Seeker +]--
	-- ["loc_talent_ranged_enemies_taunt_description"] = { -- duration: 8, s->seconds
		-- en = "Blocking or Pushing Enemies Taunts them for {duration:%s} seconds.",
		-- ru = "Блокирование любых атак или отталкивание врагов провоцирует их атаковать вас в ближнем бою в течение {duration:%s} секунд.", -- Провокатор -- руоф Внимание искателя
		-- fr = "Bloquer ou Pousser les ennemies les provoquent pendant {duration:%s} secondes.", -- Chercher l'attention
	-- },
	--[+ Passive 31 - Bruiser +]--
	-- ["loc_talent_ogryn_cooldown_on_elite_kills_new_desc"] = { 
		-- en = "{cooldown_regen:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb").." Regeneration for {duration:%s} seconds after you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." kill an Elite Enemy.",
		-- ru = "На {cooldown_regen:%s} сокращается время "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." в течение {duration:%s} секунд, если вы или союзник в "..CKWord("сплочённости", "splochennosti_rgb_ru").." убиваете элитного врага.", -- Бугай
		-- fr = "+{cooldown_regen:%s} de régénération du "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." pendant {duration:%s} secondes quand vous ou un allié en syntonie effectués une élimination d'élite.", -- Cogneure
	-- },
	--[+ Passive 32 - Pacemaker +]--
	-- ["loc_talent_ogryn_reload_speed_on_multiple_hits_new_desc"] = { -- multi_hit: 5, reload_speed: +25%, duration: 5, s->seconds
		-- en = "{reload_speed:%s} Reload Speed on your next Reload when hitting {multi_hit:%s} or more Enemies with a single Attack.",
		-- ru = "{reload_speed:%s} к скорости вашей следующей перезарядки, если вы ударили за раз {multi_hit:%s} или более врагов.", -- Задающий ритм -- руоф Водитель ритма
		-- fr = "{reload_speed:%s} Vitesse de rechargement pendant {duration:%s} secondes en touchant {multi_hit:%s} ennemis ou plus avec une seule attaque.", -- Stimulateur
	-- },
	--[+ Passive 33 - Unstoppable Momentum +]--
	-- ["loc_talent_ogryn_ranged_kill_grant_movement_speed_desc"] = { -- movement_speed: +20%, duration: 2, s->seconds
		-- en = "{movement_speed:%s} Movement Speed for {duration:%s} seconds on Ranged Kill.",
		-- ru = "{movement_speed:%s} к скорости движения на {duration:%s} секунды при убийствах из дальнобойного оружия.", -- Неудержимый моментум
		-- fr = "{movement_speed:%s} de vitesse de déplacement pendant {duration:%s} secondes sur une élimination à distance.", -- Élan inarétable
	-- },
	--[+ Passive 34 - Delight in Destruction +]--
	-- ["loc_talent_ogryn_damage_reduction_per_bleed_desc"] = { -- damage_reduction: +8%, max_stacks: 6, +colors
		-- en = "{damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Resistance per "..CKWord("Bleeding", "Bleeding_rgb").." Enemy in Melee range. Stacks {max_stacks:%s} times. Up to "..CNumb("32%", "pc_32_rgb")..".",
		-- ru = "{damage_reduction:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." за каждого врага с зарядами "..CKWord("кровотечения", "krovotechenia_rgb_ru").." на расстоянии атаки ближнего боя. Суммируется {max_stacks:%s} раза. Вплоть до "..CNumb("32%", "pc_32_rgb").." сопротивления.", -- Упоение в разрушении -- руоф Наслаждение разрушением
		-- fr = "{damage_reduction:%s} de résistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." par ennemi qui "..COLORS_KWords_fr.Bleeding_rgb_fr.." à portée de mêlée. Se cumule jusqu'à {max_stacks:%s} fois. Jusqu'à "..CNumb("32%", "pc_32_rgb")..".", -- Joie dans la destruction
	-- },
	--[+ Passive 35 - Dedicated Practice +]--
	-- ["loc_talent_ogryn_wield_speed_increase_desc"] = { -- stacks: +4, +colors
		-- en = "{wield_speed:%s} Weapon Swap Speed.",
		-- ru = "{wield_speed:%s} к скорости смены оружия.", -- Упорные тренировки
	-- },
	--[+ Passive 36 - Mobile Emplacement +]--
	-- ["loc_talent_ogryn_bracing_reduces_damage_taken_desc"] = { -- damage_taken_multiplier: -20.00%, +colors
		-- en = "You take {damage_taken_multiplier:%s} reduced "..CKWord("Damage", "Damage_rgb").." while bracing a Ranged Weapon.",
		-- ru = "Вы получаете на {damage_taken_multiplier:%s} меньше "..CKWord("урона", "uronu_rgb_ru").." пока целитесь из дальнобойного оружия.", -- Мобильная огневая точка -- руоф Передвижной окоп
		-- fr = "Vous réduisez les "..COLORS_KWords_fr.Damage_rgb_fr.." de {damage_taken_multiplier:%s} en utilisant une arme à distance.",
	-- },
	--[+ Passive 37 - Implacable +]--
	-- ["loc_talent_ogryn_windup_reduces_damage_taken_desc"] = { -- damage_taken_multiplier: +15%, +colors
		-- en = "{damage_taken_multiplier:%s} "..CKWord("Damage", "Damage_rgb").." Reduction while charging Melee Attacks.",
		-- ru = "{damage_taken_multiplier:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." пока вы заряжаете атаки ближнего боя.", -- Непоколебимый
		-- fr = "{damage_taken_multiplier:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant le chargement des attaques de mêlée.",
	-- },
	--[+ Passive 38 - Dominate +]--
	-- ["loc_talent_ogryn_rending_on_elite_kills_desc"] = { -- rending_multiplier: +10%, duration: 10, s->seconds, +colors
		-- en = "{rending_multiplier:%s} "..CKWord("Rending", "Rending_rgb").." for {duration:%s} seconds on Elite kill.",
		-- ru = "{rending_multiplier:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." на {duration:%s} секунд после убийства элитного врага.", -- Доминируй -- руоф Господство
		-- fr = "{rending_multiplier:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." pendant {duration:%s} secondes après une élimination d'élite.",
	-- },
	--[+ Passive 39 - No Pushover +]--
	-- ["loc_talent_ogryn_empowered_pushes_desc"] = { -- push_impact_modifier: 250%, cooldown: 8, s->seconds, +colors
		-- en = "{push_impact_modifier:%s} "..CKWord("Stagger", "Stagger_rgb").." for your pushes. Can only trigger once every {cooldown:%s} seconds.",
		-- ru = "{push_impact_modifier:%s} к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." врагов, которых вы отталкиваете. Может сработать только раз в {cooldown:%s} секунд.", -- Не слабак
		-- fr = "{push_impact_modifier:%s} de "..COLORS_KWords_fr.Stagger_rgb_fr.." pour vos poussées. Peut se déclencher une fois toutes les {cooldown:%s} secondes.",
	-- },
	--[+ Passive 40 - Get Stuck In +]--
	-- ["loc_talent_ogryn_ability_movement_speed_desc"] = { -- movement_speed: +20%, time: 4 -- &->and, s->seconds, +colors
		-- en = "Activating your "..CKWord("Combat Ability", "Cmbt_abil_rgb").." grants you and Allies in "..CKWord("Coherency", "Coherency_rgb").." for {time:%s} seconds:\n"
			-- .."{movement_speed:%s} Movement Speed,\n"
			-- ..CKWord("Stuns", "Stuns_rgb").." and Suppression Immunity.",
		-- ru = "При активации вашей "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." вы и союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получаете на {time:%s} секунды:\n{movement_speed:%s} к скорости движения и\nиммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." и подавлению.", -- Очертя голову
		-- fr = "En activant votre "..COLORS_KWords_fr.Cmbt_abil_rgb_fr..", vous et vos alliés en syntonie gagnez {movement_speed:%s} de vitesse de déplacement et êtes également immunisés contre les "..COLORS_KWords_fr.Stuns_rgb_fr.." et la suppression pendant {time:%s} secondes.",
	-- },
	--[+ Passive 41 - Reloaded and Ready +]--
	-- ["loc_talent_ogryn_ranged_damage_on_reload_desc"] = { -- damage :+15%, duration: 8, s->seconds, +colors
		-- en = "{damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds on Reload.",
		-- ru = "{damage:%s} к дальнобойному "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд после перезарядки оружия.", -- К бою готов! -- Перезаряжен и готов -- руоф Заряжен и готов
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance pendant {duration:%s} secondes lors du rechargement.",
	-- },
	--[+ Passive 42 - Massacre +]--
	-- ["loc_talent_ogryn_crit_chance_on_kill_desc"] = { -- crit_chance: +1%, duration: 6, max_stacks: 8, s->seconds, +colors
		-- en = "{crit_chance:%s} "..CKWord("Critical Chance", "Crit_chance_rgb").." for {duration:%s} seconds is granted by killing an enemy. Stacks {max_stacks:%s} times.",
		-- ru = "{crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на {duration:%s} секунд даётся за убийство врага. Суммируется {max_stacks:%s} раз.", -- Резня
		-- fr = "{crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant {duration:%s} secondes en tuant un ennemi. Se cumul jusqu'à {max_stacks:%s} fois.",
	-- },
	--[+ Passive 43 - No Stopping Me! +]--
	-- ["loc_talent_ogryn_windup_is_uninterruptible_unslowed_desc"] = { 
		-- en = "Become Uninterruptible while charging Heavy Melee Attacks. Remove {reduced_move_penalty:%s} of Heavy Melee Attack Movement Speed penalties.",
		-- ru = "Вас невозможно прервать, когда вы заряжаете тяжёлые атаки ближнего боя. Убирается {reduced_move_penalty:%s} штрафа к скорости передвижения при тяжёлых атаках ближнего боя.", -- Меня не остановить!
		-- fr = "Devenez Inarrêtable pendant le chargement des attaques puissantes de mêlée. Réduit {reduced_move_penalty:%s} des pénalités de vitesse de déplacement des attaques de mélées puissantes.", -- Rien peut m'arreter
	-- },
	--[+ Passive 44 - Bash and Blast +]--
	-- ["loc_talent_ogryn_melee_improves_ranged_desc"] = { -- stacks: +4, +colors
		-- en = "{damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." on Melee Kill. Lasts {duration:%s} seconds. Max Stacks {max_stacks:%s}.",
		-- ru = "{damage:%s} к дистанционному "..CKWord("урону", "uronu_rgb_ru").." при убийстве в ближнем бою. Длится {duration:%s} секунд. Максимальное количество зарядов {max_stacks:%s}.", -- Удар-выстрел
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance lors d'une élimination en mélée. Pendant {duration:%s} secondes. Cumuls maximuml : {max_stacks:%s}.", -- Pluie de coups
	-- },
	--[+ Passive 45 - Hard Knocks +]--
	["loc_talent_ogryn_big_bully_heavy_hits_new_desc"] = { -- damage: +1%, stacks: 25, duration: 10, s->seconds, +colors
		en = "Enemies "..CKWord("Staggered", "Staggered_rgb").." by your Melee Attacks receive for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} Melee "..CKWord("Damage", "Damage_rgb")..".",
		ru = "Враги "..CKWord("ошеломлённые", "oshelomlennye_rgb_ru").." вашими атаками ближнего боя получают в течение {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." в ближнем бою.", -- Тяжёлые удары -- руоф Мощные удары
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." subit pendant {duration:%s} secondes par les ennemies qui "..COLORS_KWords_fr.Staggered_rgb_fr.." à cause de vos attaques de mélées.", -- Coup dur
	},
	--[+ Passive 46 - No Hurting Friends! +]--
	-- ["loc_talent_ogryn_damage_taken_by_all_increases_strength_tdr_desc"] = { -- stacks: +4, +colors
		-- en = "{strength:%s} "..CKWord("Strength", "Strength_rgb").." on "..CKWord("Damage", "Damage_rgb").." Taken by you or Allies in "..CKWord("Coherency", "Coherency_rgb")..". {stacks:%s} Max Stacks. Lasts {duration:%s} seconds. {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." on Max Stacks.",
		-- ru = "{strength:%s} к "..CKWord("силе", "sile_rgb_ru").." при получении "..CKWord("урона", "uronu_rgb_ru").." вами или союзниками в "..CKWord("сплочённости", "splochennosti_rgb_ru")..". Максимум {stacks:%s} зарядов. Длится {duration:%s} секунд. {tdr:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." при максимуме зарядов.", -- За друзей порву!
		-- fr = "{strength:%s} de "..COLORS_KWords_fr.Strength_rgb_fr.." lors de "..COLORS_KWords_fr.Damage_rgb_fr.." subit par vous ou des alliés en syntonie. {stacks:%s} cumuls maximum. Pendant {duration:%s} secondes. {tdr:%s} de "..COLORS_KWords_fr.Tghns_dmg_red_rgb_fr.." en étant au cumul maximal.",
	-- },
	--[+ Passive 47 - Won't Give In +]--
	-- ["loc_talent_ogryn_tanky_with_downed_allies_desc"] = { -- damage_taken: +20%, range: 20, +colors
		-- en = "{damage_taken:%s} "..CKWord("Damage", "Damage_rgb").." Reduction for each Knocked Down or Incapacitated Ally within {range:%s} meters.",
		-- ru = "{damage_taken:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." за каждого сбитого с ног или выведенного и строя союзника в радиусе {range:%s} метров.", -- Не сдамся
		-- fr = "{damage_taken:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." pour chaque allié à terre или incapacité dans un rayon de {range:%s} mètres.",
	-- },
	--[+ Passive 48 - Spray and Slay +]--
	-- ["loc_talent_ogryn_ranged_improves_melee_desc"] = { -- stacks: +4, +colors
		-- en = "{damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." and {attack_speed:%s} Melee Attack Speed for {duration:%s} seconds after emptying your Clip.",
		-- ru = "{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя и {attack_speed:%s} к скорости атаки ближнего боя в течение {duration:%s} секунд после опустошения вашего магазина.", -- Отстрелял - добил -- Отстрелял - порубил
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée et {attack_speed:%s} de vitesse d'attaque de mélée pendant {duration:%s} secondes после avoir vidé votre chargeur.", -- Canardage
	-- },
	--[+ Passive 49 - Lucky Streak +]--
	-- ["loc_talent_ogryn_crit_damage_increase_desc"] = { -- stacks: +4, +colors
		-- en = "{crit_damage:%s} "..CKWord("Critical Hit Damage", "Crit_hit_color_rgb").." of both Melee and Ranged attacks.",
		-- ru = "{crit_damage:%s} к "..CKWord("урону критического удара", "krit_udara_uron_rgb_ru").." для атак ближнего и дальнего боя.", -- Месиво
		-- fr = "{crit_damage:%s} de "..COLORS_KWords_fr.Crit_dmg_r_rgb_fr.." sur vos attaques de mélées et de distances.", -- Coup chanceux
	-- },


--[+ ++ARBITES - АРБИТЕС++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Arbites Grenade +]--
	["loc_talent_ability_adamant_grenade_description"] = { -- charges: 4, +colors
		en = "Throw an "..CKWord("Arbites Grenade", "Arbites_gren_rgb").." that explodes after a short delay.\n"
			..Dot_nc.." {charges:%s} Max Grenades.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb").." epicenter: "..CNumb("1500", "n_1500_rgb")..".\n"
			..Dot_green.." "..CKWord("Staggers", "Staggers_rgb").." all enemies except Mutants and enemies with an active Void shield.\n"
			..Dot_nc.." Max explosion radius: "..CNumb("10", "n_10_rgb").." meters.\n"
			..Dot_nc.." Above average armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Very low "..CKWord("Damage", "Damage_rgb").." to Carapace.",
		ru = "Вы бросаете "..CKWord("Гранату арбитрес", "Arbites_gren_rgb_ru")..", которая взрывается после короткой задержки.\n" -- Граната арбитрес -- руоф Граната Арбитрес
			..Dot_nc.." Максимум {charges:%s} гранаты.\n"
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru").." в эпицентре: "..CNumb("1500", "n_1500_rgb")..".\n"
			..Dot_green.." "..CKWord("Ошеломляет", "Oshelomlaet_rgb_ru").." всех врагов кроме мутантов и врагов с активным пустотным щитом.\n"
			..Dot_nc.." Максимальный радиус взрыва: "..CNumb("10", "n_10_rgb").." метров.\n"
			..Dot_nc.." Средний "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.",
	},
	--[+ BLITZ 1 - Remote Detonation +]--
	["loc_talent_ability_detonate_description"] = { -- max_charges: 3, cooldown: 50, s->seconds, +colors
		en = "Cause an Explosion at your Cyber-Mastiff's Location. "..CKWord("Staggering", "Staggering_rgb").." and "..CKWord("Electrocuting", "Electrcuting_rgb").." nearby Enemies.\n"
			..Dot_nc.." {max_charges:%s} Charges.\n"
			..Dot_nc.." Cooldown {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb").." epicenter: "..CNumb("600", "n_600_rgb")..".\n"
			..Dot_green.." Forces a light "..CKWord("Stagger", "Stagger_rgb").." on all enemies within radius for "..CNumb("2.5", "n_2_5_rgb").." seconds.\n"
			..Dot_nc.." Max explosion radius: "..CNumb("4", "n_4_rgb").." meters.\n"
			..Dot_nc.." Above average armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Very low "..CKWord("Damage", "Damage_rgb").." to Carapace.\n"
			.."\n"
			..Dot_red.." Arbitrator cannot pick up grenade Ammo.",
		ru = "Создаёт взрыв в месте нахождения вашего кибермастифа, "..CKWord("ошеломляя", "oshelomlaa_rgb_ru").." и поражает "..CKWord("электрошоком", "elektroshokom_rgb_ru").." ближайших врагов.\n"
			..Dot_nc.." {max_charges:%s} заряда.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru").." в эпицентре: "..CNumb("600", "n_600_rgb")..".\n"
			..Dot_green.." Наносит лёгкое "..CKWord("ошеломление", "oshelomlenie_rgb_ru").." всем врагам в радиусе на "..CNumb("2.5", "n_2_5_rgb").." секунды.\n"
			..Dot_nc.." Максимальный радиус взрыва: "..CNumb("4", "n_4_rgb").." метра.\n"
			..Dot_nc.." Высокий "..CKWord("урон", "uron_rgb_ru").." по броне.\n"
			..Dot_red.." Очень низкий "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.\n"
			.."\n"
			..Dot_red.." Арбитратор не может подбирать гранаты.", -- Дистанционный подрыв
	},
	--[+ BLITZ 2 - Voltaic Shock Mine +]--
	["loc_talent_ability_shock_mine_description"] = { -- talent_name: Voltaic Shock Min, duration: 15, range: 3, s->seconds, m->meters, +colors
		en = "Throw a {talent_name:%s} that activates as it lands.\n"
			.."For {duration:%s} seconds it will "..CKWord("Electrocute", "Electrocute_rgb").." all enemies within {range:%s} meters.",
		ru = "Вы бросаете "..CKWord("Вольтаическую шоковую мину", "Electro_mine_rgb_ru")..", которая активируется при приземлении.\n"
			.."В течение {duration:%s} секунд она будет поражать "..CKWord("электрошоком", "elektroshokom_rgb_ru").." всех врагов в радиусе {range:%s} метров.", -- Вольтаическая шоковая мина
	},
	--[+ BLITZ 3 - Arbites Grenade +]--
	["loc_talent_ability_adamant_grenade_improved_description"] = { -- talent_name: Arbites Grenade, charges: 4
		en = "Throw an {talent_name:%s} that explodes after a short delay.\n"
			..Dot_nc.." {charges:%s} Max Grenades.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.",
		ru = "Вы бросаете "..CKWord("Гранату арбитрес", "Arbites_gren_rgb_ru")..", которая взрывается после короткой задержки.\n"
			..Dot_nc.." Максимум {charges:%s} гранаты.\n"
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.",  -- Граната арбитрес -- руоф Граната Арбитрес
	},
--[+ +AURA - АУРА+ +]--
	--[+ AURA 0 - Part of the Squad +]--
	["loc_talent_adamant_companion_coherency_desc"] = { 
		en = "Your Cyber-Mastiff counts towards unit "..CKWord("Coherency", "Coherency_rgb")..".",
		ru = "Ваш кибермастиф учитывается как союзник под действием "..CKWord("сплочённости", "splochennosti_rgb_ru")..".", -- Часть отряда
	},
	--[+ AURA 1 - Part of the Squad +]--
	["loc_talent_adamant_companion_coherency_alt_desc"] = { -- tdr: +7.5%, +colors
		en = Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			.."Your Cyber-Mastiff counts towards unit "..CKWord("Coherency", "Coherency_rgb")..".",
		ru = Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n"
			.."\n"
			.."Ваш кибермастиф учитывается как союзник под действием "..CKWord("сплочённости", "splochennosti_rgb_ru")..".", -- Часть отряда
	},
	--[+ AURA 2 - Ruthless Efficiency +]--
	["loc_talent_adamant_reload_speed_aura_desc"] = { -- reload_speed: +7.5%, +colors
		en = Dot_green.." {reload_speed:%s} Reload Speed for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".",
		ru = Dot_green.." {reload_speed:%s} к скорости перезарядки для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".", -- Беспощадная эффективность -- руоф Беспощадная сила
	},
	--[+ AURA 3 - Breaking Dissent +]--
	["loc_talent_adamant_damage_vs_staggered_aura_alt_desc"] = { -- damage_vs_stagger: +10%, +colors
		en = Dot_green.." {damage_vs_stagger:%s} "..CKWord("Damage", "Damage_rgb").." vs "..CKWord("Staggered", "Staggered_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".",
		ru = Dot_green.." {damage_vs_stagger:%s} к "..CKWord("урону", "uronu_rgb_ru").." по "..CKWord("ошеломлённым", "oshelomlennym_rgb_ru").." врагам для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".", -- Подавление инакомыслия -- руоф Преодоление разногласий
	},
--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
	--[+ ABILITY 0 - Nuncio-Aquila +]--
	["loc_talent_adamant_ability_nuncio_base_desc"] = { -- range: 7.5, toughness: 5%, damage_taken: +15%, duration: 20, cooldown: 60, m->meters, s->seconds, +colors
		en = "Deploy a {talent_name:%s} in a target direction that buffs Allies and debuffs Enemies within {range:%s} meters.\n"
			.."\n"
			.."Allies:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." per second.\n"
			.."\n"
			.."Enemies:\n"
			..Dot_green.." {damage_taken:%s} "..CKWord("Damage", "Damage_rgb").." Taken.\n"
			.."\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Cooldown {cooldown:%s} seconds.",
		ru = "Вы развёртываете "..CKWord("Нунцио-аквилу", "Nuncio_akvilu_rgb_ru").." в выбранном направлении, усиливая союзников и ослабляя врагов в радиусе {range:%s} метров.\n"
			.."\n"
			.."Усиление союзников:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается в секунду.\n"
			.."\n"
			.."Ослабления врагов:\n"
			..Dot_green.." {damage_taken:%s} к получаемому "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.", -- Нунцио-аквила
	},
	--[+ ABILITY 1 - Castigator's Stance +]--
	["loc_talent_adamant_stance_ability_alt_description"] = { -- talent_name: Castigator's Stance, duration: 10, movement_speed: +15%, damage_taken: +80%, movement_reduction: 100%, cooldown: 45, s->seconds, +colors
		en = "Enter the {talent_name:%s} for {duration:%s} seconds, during which you have:\n"
			..Dot_green.." {movement_speed:%s} Movement Speed,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_taken:%s} "..CKWord("Damage", "Damage_rgb").." Taken,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{movement_reduction:%s} Movement Speed Penalty from Actions, but you cannot Sprint.\n"
			..Dot_green.." On activation you replenish all "..CKWord("Toughness", "Toughness_rgb")..".\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.",
		ru = "Вы входите в "..CKWord("Стойку бичевателя", "Stojku_bicha_rgb_ru").." на {duration:%s} секунд, во время которой вы получаете:\n"
			..Dot_green.." {movement_speed:%s} к скорости движения,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_taken:%s} к получаемому "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{movement_reduction:%s} штрафа скорости движения от действий, но вы не можете бегать.\n"
			..Dot_green.." При активации восстанавливается вся "..CKWord("стойкость", "stoikost_rgb_ru")..".\n"
			..Dot_nc.." Базовое восстановление: {cooldown:%s} секунд.", -- Стойка карателя -- руоф Стойка бичевателя
	},
	--[+ ABILITY 1-1 - Blessed Armament +]--
	["loc_talent_adamant_stance_ranged_kills_transfer_ammo_desc"] = { -- stance_name: Castigator's Stance, ammo: 10%, cooldown: 1.5, s->seconds
		en = "During {stance_name:%s}, ranged kills replenish:\n"
			..Dot_green.." Up to {ammo:%s} of the total Ammo in your Clip from Reserve.\n"
			..Dot_green.." Rounded Up.\n"
			..Dot_nc.." Cooldown {cooldown:%s} seconds.",
		ru = "Во время действия таланта {stance_name:%s} убийства дальнобойными атаками восстанавливают:\n"
			..Dot_green.." До {ammo:%s} общего количества боеприпасов в магазине из резерва.\n"
			..Dot_green.." Округляется в большую сторону.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунды.", -- Благословенное вооружение -- руоф Благословенное орудие
	},
	--[+ ABILITY 1-2 - Writ of Execution +]--
	["loc_talent_adamant_stance_elite_kills_stack_damage_desc"] = { -- stance_name: Castigator's Stance, damage: +5%, duration: 10, stacks: 10, s->seconds, +colors
		en = "During {stance_name:%s}, each Elite or Specialist Kill grants:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." {stacks:%s} Max Stacks.\n"
			..Dot_nc.." Lasting {duration:%s} seconds.",
		ru = "Во время действия таланта {stance_name:%s} каждое убийство элитного врага или специалиста даёт:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			..Dot_nc.." Максимум {stacks:%s} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Ордер на казнь
	},
	--[+ ABILITY 1-3 - Bloodlust +]--
	["loc_talent_adamant_stance_bloodlust_desc"] = { -- stance_name: Castigator's Stance, damage: +75%, +colors
		en = "During {stance_name:%s} your Cyber-Mastiff has:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".",
		ru = "Во время действия таланта {stance_name:%s} ваш кибермастиф получает:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".", -- Жажда крови
	},
	--[+ ABILITY 2 - Nuncio-Aquila +]--
	["loc_talent_ability_area_buff_drone_ct_description"] = { -- range: 7.5, toughness: 7.5%, suppression: +30%, impact: +30%, recoil: -25%, damage_taken: +15%, duration: 20, cooldown: 60, nuncio_name: Nuncio-Aquila, m->meters, s->seconds, +colors
		en = "Deploy a {nuncio_name:%s} in a target direction that buffs Allies and debuffs Enemies within {range:%s} meters.\n"
			.."\n"
			.."Allies:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." per second,\n"
			..Dot_green.." {suppression:%s} Suppression Dealt,\n"
			..Dot_green.." {impact:%s} "..CKWord("Impact", "Impact_rgb")..",\n"
			..Dot_green.." {recoil:%s} Recoil,\n"
			..Dot_green.." Slowdown Immunity,\n"
			..Dot_green.." Suppression Immunity,\n"
			..Dot_green.." Immunity to interruption during Alternate Fire.\n"
			.."\n"
			.."Enemies:\n"
			..Dot_green.." {damage_taken:%s} "..CKWord("Damage", "Damage_rgb").." Taken.\n"
			.."\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.\n"
			..Dot_green.." This is an augmented version of {nuncio_name:%s}.",
		ru = "Вы развёртываете "..CKWord("Нунцио-аквилу", "Nuncio_akvilu_rgb_ru").." в выбранном направлении, усиливая союзников и ослабляя врагов в радиусе {range:%s} метров.\n"
			.."\n"
			.."Усиления союзников:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается в секунду,\n"
			..Dot_green.." {suppression:%s} к подавлению врагов,\n"
			..Dot_green.." {impact:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru")..",\n"
			..Dot_green.." {recoil:%s} к отдаче оружия,\n"
			..Dot_green.." Иммунитет к замедлению,\n"
			..Dot_green.." Иммунитет к подавлению,\n"
			..Dot_green.." Иммунитет к прерыванию во время прицельного огня.\n"
			.."\n"
			.."Ослабления врагов:\n"
			..Dot_green.." {damage_taken:%s} к получаемому "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			..Dot_green.." Это улучшенная версия способности {nuncio_name:%s}.", -- Нунцио-аквила
	},
	--[+ ABILITY 2-1 - Inspiring Recitation +]--
	["loc_talent_adamant_drone_buff_talent_alt_desc"] = { -- tdr: 30%, revive_speed: 30%, attack_speed: 10%, +colors
		en ="Affected Allies also gain:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{revive_speed:%s} Revive Speed, and\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{attack_speed:%s} Attack Speed." ,
		ru = "Затронутые союзники также получают:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{revive_speed:%s} к скорости оживления и\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{attack_speed:%s} к скорости атаки.", -- Воодушевляющая проповедь -- руоф Вдохновляющая декламация
	},
	--[+ ABILITY 2-2 - Fear of Justice +]--
	["loc_talent_adamant_drone_debuff_talent_desc"] = { -- attack_speed_reduction: 50%, damage_reduction: 25%, +colors
		en = "Affected enemies also gain debuffs to their Melee Attacks:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{attack_speed_reduction:%s} time between attacks.",
		ru = "Затронутые враги также получают ослабления для их атак ближнего боя:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{attack_speed_reduction:%s} к увеличению времени между атаками.", -- Страх перед Правосудием -- руоф Страх правосудия
	},
	--[+ ABILITY 3 - Break the Line +]--
	["loc_ability_adamant_charge_blocking_desc"] = { -- damage: +25%, stagger: +50%, duration: 6, cooldown: 20, s->seconds, +colors
		en = "Charge forward and Bash, causing high "..CKWord("Stagger", "Stagger_rgb").." to enemies in front of you, and gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {stagger:%s} "..CKWord("Impact", "Impact_rgb")..".\n"
			.."\n"
			..Dot_green.." During the Bash you count as Blocking.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.",
		ru = "Вы делаете рывок вперёд и наносите удар, сильно "..CKWord("ошеломляющий", "oshelomlauschij_rgb_ru").." врагов перед вами, и получаете на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {stagger:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." Во время рывка вы находитесь в состоянии блокирования.\n"
			..Dot_nc.." Базовое восстановление: {cooldown:%s} секунд.", -- Прорыв строя -- руоф Прорыв фронта
	},
	--[+ ABILITY 3-1 - Commendation from Condemnation +]--
	["loc_talent_adamant_charge_toughness_alt_description"] = { -- toughness: 20%, stamina: 15%, toughness_max: 100%, stamina_max: 75%, +colors
		en = "For each Elite, Specialist, or Monstrosity hit you replenish:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." and\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..".\n"
			.."Up to {toughness_max:%s} "..CKWord("Toughness", "Toughness_rgb").." and {stamina_max:%s} "..CKWord("Stamina", "Stamina_rgb")..".",
		ru = "За каждого элитного врага, специалиста или чудовища, поражённого рывком, восстанавливается:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." и\n"
			..Dot_green.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n"
			.."Вплоть до {toughness_max:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." и {stamina_max:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".", -- Похвала за осуждение -- руоф Не наказали - значит, похвалили???
	},
	--[+ ABILITY 3-2 - Targeted Brutality +]--
	["loc_talent_adamant_charge_cooldown_alt_description"] = { -- cooldown: 0.5, cooldown_elite: 5, max_cooldown: 5, s->seconds, +colors
		en = "At charge end, reduce "..CKWord("Cooldown", "Cd_rgb").." of your "..CKWord("Break the Line", "BreakZLine_rgb").." per hit during charge:\n"
			..Dot_green.." {cooldown_elite:%s} second per Elite/Specialist/Monstrosity,\n"
			..Dot_green.." {cooldown:%s} seconds per other enemy.\n"
			..Dot_nc.." Max reduction: {max_cooldown} seconds.",
		ru = "После рывка, сокращается время "..CKWord("восстановления", "vosstanovlenia_rgb_ru").." вашего "..CKWord("Прорыва вражеского строя", "BreakZLine_rgb_ru").." на:\n" -- Направленная жестокость
			..Dot_green.." {cooldown_elite:%s} секунду за каждого, поражённого рывком, элитного врага, специалиста или чудовища,\n"
			..Dot_green.." {cooldown:%s} секунды за каждого, поражённого рывком, обычного врага.\n"
			..Dot_nc.." Максимум {max_cooldown:%s} секунд за рывок.",
	},
	--[+ ABILITY 3-3 - Kill Order +]--
	["loc_talent_adamant_dog_damage_after_ability_desc"] = { -- companion_damage: +50%, duration: 12, s->seconds, +colors
		en = "After using your "..CKWord("Combat Ability", "Cmbt_abil_rgb").." your Cyber Mastiff gain for {duration:%s} seconds:\n"
			..Dot_green.." {companion_damage:%s} "..CKWord("Damage", "Damage_rgb")..".",
		ru = "После использования вашей "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." ваш кибермастиф получает на {duration:%s} секунд:\n"
			..Dot_green.." {companion_damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".", -- Фас! -- руоф Приказ убивать
	},
	--[+ ABILITY 3-4 - Engage +]--
	["loc_talent_adamant_charge_longer_distance_desc"] = { -- charge_ability_name: Break the Line, distance: 7.5, m->meters
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{distance:%s} meters to the distance of {charge_ability_name:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{distance:%s} метров к расстоянию способности {charge_ability_name:%s}.", -- Дальний прорыв -- руоф К бою
	},
--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
	--[+ KEYSTONE 1 - Unleashed Brutality +]--
	["loc_talent_adamant_cyber_mastiff_elites_desc"] = { -- damage: +25%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." to Elite and Specialist Enemies dealt by your Cyber-Mastiff.\n"
			.."\n"
			.."Elite and Specialist Enemies become its Primary targets.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." элитным врагам и специалистам для вашего кибермастифа.\n"
			.."\n"
			.."Элитные враги и специалисты становятся его приоритетными целями.", -- Высвобожденнная жестокость
	},
	--[+ KEYSTONE 2 - Lone Wolf +]--
	["loc_talent_adamant_disable_companion_replenish_split_desc"] = { -- tdr: +15%, attack_speed: +10%, damage: +10%, time: 60, s->seconds, +colors
		en = "You are no longer accompanied by your Cyber-Mastiff, but gain:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {attack_speed:%s} Attack Speed,\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			.."\n"
			.."Blitz Ability:\n"
			..Dot_green.." {charges:%s} max charge.\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." charge replenished every:\n"
			.."    "..Dot_green.." {grenade_time:%s} seconds - {grenade_blitz_name:%s},\n"
			.."    "..Dot_green.." {time_shock_mine:%s} seconds - {shock_mine_name:%s}.",
		ru = "Вам больше не помогает кибермастиф, но вы получаете:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки,\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "snu_ur_stoikosti_rgb_ru")..".\n"
			.."\n"
			.."Усиление Блица:\n"
			..Dot_green.." {charges:%s} заряд.\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." заряд восстанавливается каждые:\n"
			.."    "..Dot_green.." {grenade_time:%s} секунд - {grenade_blitz_name:%s},\n"
			.."    "..Dot_green.." {time_shock_mine:%s} секунд - {shock_mine_name:%s}.", -- Одинокий волк
	},
	--[+ KEYSTONE 3 - Go Get 'Em! +]--
	["loc_talent_adamant_cyber_mastiff_ranged_desc"] = { -- !damage!: +50%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." to Ranged Enemies dealt by your Cyber-Mastiff.\n"
			.."\n"
			.."Ranged Enemies become its Primary targets.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." дальнобойным врагам для вашего кибермастифа.\n"
			.."\n"
			.."Дальнобойные враги становятся его приоритетными целями.", -- Взять их!
	},
	--[+ KEYSTONE 4 - Execution Order +]--
	["loc_talent_execution_order_description"] = { -- toughness: 15%, dog_damage: +150%, time: 8, damage: +10%, attack_speed: +10%, s->seconds, +colors
		en = "Periodically mark Elites, Specialists and Bosses for Mercy Sanction. Killing a "..CKWord("Marked Enemy", "Markedenemy_rgb").." replenishes:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."\n"
			.."Your Cyber-Mastiff gains for {time:%s} seconds after attacking a "..CKWord("Marked Enemy", "Markedenemy_rgb")..":\n"
			..Dot_green.." {dog_damage:%s} Cyber-Mastiff "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			.."You gain for {time:%s} seconds after killing a "..CKWord("Marked Enemy", "Markedenemy_rgb")..":\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {attack_speed:%s} Attack Speed.",
		ru = "Периодически вы помечаете элитных врагов, специалистов и боссов для Санкции милосердия. Убийство "..CKWord("Отмеченного врага", "Markedenemy_rgb_ru").." восстанавливает:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			.."Ваш кибермастиф получает на {time:%s} секунд после атаки "..CKWord("Отмеченного врага", "Markedenemy_rgb_ru")..":\n"
			..Dot_green.." {dog_damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			.."Вы получаете на {time:%s} секунд после убийства "..CKWord("Отмеченного врага", "Markedenemy_rgb_ru")..":\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки.", -- Метка возмездия -- Приказ казнить
	},
	--[+ KEYSTONE 4-1 - Efficient Killer +]--
	["loc_talent_execution_order_crit_description"] = { -- crit_chance: +10%, crit_damage: +25%, time: 8, s->seconds, +colors
		en = "On killing a "..CKWord("Marked Enemy", "Markedenemy_rgb")..", you gain:\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Crit Chance", "Crt_chance_rgb").." and\n"
			..Dot_green.." {crit_damage:%s} "..CKWord("Crit Damage", "Crt_dmg_r_rgb")..".\n"
			..Dot_nc.." Lasts {time:%s} seconds.",
		ru = "При убийстве "..CKWord("Отмеченного врага", "Markedenemy_rgb_ru").." вы получаете:\n"
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." и\n"
			..Dot_green.." {crit_damage:%s} к "..CKWord("критическому урону", "krit_uronu_rgb_ru")..".\n"
			..Dot_nc.." Длится {time:%s} секунд.", -- Эффективный убийца
	},
	--[+ KEYSTONE 4-2 - Malocator +]--
	["loc_talent_execution_order_cdr_on_kill_description"] = { -- regen: +50%, time: 8, s->seconds, +colors
		en = Dot_green.." {regen:%s} "..CKWord("Cooldown", "Cd_rgb").." Regeneration for {time:%s} seconds after killing a "..CKWord("Marked Enemy", "Markedenemy_rgb")..".",
		ru = Dot_green.." {regen:%s} к "..CKWord("восстановлению способности", "vost_sposobnosti_rgb_ru").." на {time:%s} секунд после убийства "..CKWord("Отмеченного врага", "Markedenemy_rgb_ru")..".", -- Малокатор
	},
	--[+ KEYSTONE 4-3 - No Lenience +]--
	["loc_talent_execution_order_command_applies_brittleness_description"] = { -- rending: +10%, time: 8, s->seconds, +colors
		en = Dot_green.." {rending:%s} "..CKWord("Rending", "Rending_rgb").." for {time:%s} seconds after killing a "..CKWord("Marked Enemy", "Markedenemy_rgb")..".",
		ru = Dot_green.." {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони на {time:%s} секунд после убийства "..CKWord("Отмеченного врага", "Markedenemy_rgb_ru")..".", -- Нетерпимость
	},
	--[+ KEYSTONE 4-4 - Keeping Protocol +]--
	["loc_talent_execution_order_perma_buff_new_description"] = { -- damage: +1%, damage_red: +1%, max_stacks: 30, +colors
		en = "Killing a "..CKWord("Marked Enemy", "Markedenemy_rgb").." grants:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." vs Monstrosities and\n"
			..Dot_green.." {damage_red:%s} "..CKWord("Damage", "Damage_rgb").." Resistance vs Monstrosities.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			..Dot_nc.." Lasts until the end of the Mission.",
		ru = "Убийство "..CKWord("Отмеченного врага", "Markedenemy_rgb_ru").." даёт:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." чудовищам и\n"
			..Dot_green.." {damage_red:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." от чудовищ.\n"
			..Dot_nc.." Максимум {max_stacks:%s} зарядов.\n"
			..Dot_nc.." Длится до конца миссии.", -- Соблюдение протокола -- руоф Поддердание протокола
	},
	--[+ KEYSTONE 4-5 - Not Far Behind +]--
	["loc_talent_adamant_pinning_dog_bonus_moving_towards_description"] = { -- movement_speed: +10%, damage: +10%, time: 5, s->seconds, +colors
		en = "After Pounce you gain for {time:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {movement_speed:%s} Movement Speed.",
		ru = "После нападения вашего кибермастифа на врага вы получаете на {time:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." {movement_speed:%s} к скорости движения.", -- В зоне досягаемости -- руоф Не так далеко позади
	},
	--[+ KEYSTONE 5 - Terminus Warrant +]--
	["loc_talent_adamant_terminus_warrant_shortened_alt_desc"] = { -- max_stacks: 30, melee_remove: 1, melee_damage: +15%, melee_impact: +25%, ranged_remove: 1, ranged_damage: +15%, ranged_cleave: +50%, suppression: +50%, +colors
		en = "Ranged Attacks grant Stacks of "..CKWord("Melee Justice", "Meleejust_rgb").." for each Enemy Hit, up to {max_stacks:%s}.\n"
			.."Melee Hits remove {melee_remove:%s} Stack.\n"
			.."While you have Stacks of "..CKWord("Melee Justice", "Meleejust_rgb")..", gain:\n"
			..Dot_green.." {melee_damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {melee_impact:%s} Melee "..CKWord("Impact", "Impact_rgb")..".\n"
			.."\n"
			.."Melee Hits grant Stacks of "..CKWord("Ranged Justice", "Rangedjust_rgb")..", up to {max_stacks:%s}.\n"
			.."Ranged Attacks remove {ranged_remove:%s} Stack for each Enemy Hit.\n"
			.."While you have Stacks of "..CKWord("Ranged Justice", "Rangedjust_rgb")..", gain:\n"
			..Dot_green.." {ranged_damage:%s} Ranged "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {ranged_cleave:%s} Ranged "..CKWord("Cleave", "Cleave_rgb").." and\n"
			..Dot_green.." {suppression:%s} Suppression.",
		ru = "Дальнобойные атаки дают заряды "..CKWord("Судьи-рукопашника", "Meleejust_rgb_ru").." за каждого поражённого врага, до {max_stacks:%s} зарядов.\n"
			.."Удары ближнего боя снимают {melee_remove:%s} заряд.\n"
			.."Пока у вас есть заряды "..CKWord("Судьи-рукопашника", "Meleejust_rgb_ru")..", вы получаете:\n"
			..Dot_green.." {melee_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя и\n"
			..Dot_green.." {melee_impact:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." в ближнем бою.\n"
			.."\n"
			.."Удары ближнего боя дают заряды "..CKWord("Судьи-стрелка", "Rangedjust_rgb_ru")..", до {max_stacks:%s} зарядов.\n"
			.."Дальнобойные атаки снимают {ranged_remove:%s} заряд за каждого поражённого врага.\n"
			.."Пока у вас есть заряды "..CKWord("Судьи-стрелка", "Rangedjust_rgb_ru")..", вы получаете:\n"
			..Dot_green.." {ranged_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." дальнего боя,\n"
			..Dot_green.." {ranged_cleave:%s} к "..CKWord("прострелу", "prostrelu_rgb_ru").." врагов и\n"
			..Dot_green.." {suppression:%s} к подавлению.", -- Ордер Терминус -- руоф Распоряжение «Терминус»
	},
	--[+ KEYSTONE 5-1 - Dispense Justice +]--
	["loc_talent_adamant_terminus_warrant_ranged_alt_desc"] = { -- reload_speed: +20%, +colors
		en = "While you have Stacks of "..CKWord("Ranged Justice", "Rangedjust_rgb").." you gain:\n"
			..Dot_green.." {reload_speed:%s} Reload Speed.",
		ru = "Пока у вас есть заряды "..CKWord("Судьи-стрелка", "Rangedjust_rgb_ru")..", вы получаете:\n"
			..Dot_green.." {reload_speed:%s} к скорости перезарядки.", -- Исполнение приговора -- руоф Охват правосудия
	},
	--[+ KEYSTONE 5-2 - Obstinate +]--
	["loc_talent_adamant_terminus_warrant_upgrade_alt_desc"] = { -- swap_stacks: 15, melee_attack_speed: +15%, fire_rate: +15%, +colors
		en = "Swapping to your Melee Weapon while you have {swap_stacks:%s} "..CKWord("Melee Justice", "Meleejust_rgb").." Stacks or more, grants you:\n"
			..Dot_green.." {melee_attack_speed:%s} Melee Attack Speed until you run out of Stacks, or swap to your Ranged Weapon.\n"
			.."\n"
			.."Swapping to your Ranged Weapon while you have {swap_stacks:%s} "..CKWord("Ranged Justice", "Rangedjust_rgb").." Stacks or more, grants you:\n"
			..Dot_green.." {fire_rate:%s} Fire Rate until you run out of Stacks, or swap to your Melee Weapon.",
		ru = "Переключение на оружие ближнего боя пока у вас есть как минимум {swap_stacks:%s} зарядов "..CKWord("Судьи-рукопашника", "Meleejust_rgb_ru")..", даёт вам:\n"
			..Dot_green.." {melee_attack_speed:%s} к скорости атак ближнего боя пока заряды не кончатся или пока вы не переключитесь на дальнобойное оружие.\n"
			.."\n"
			.."Переключение на оружие дальнего боя пока у вас есть как минимум {swap_stacks:%s} зарядов "..CKWord("Судьи-стрелка", "Rangedjust_rgb_ru")..", даёт вам:\n"
			..Dot_green.." {fire_rate:%s} к скорострельности пока заряды не кончатся или пока вы не переключитесь на оружие ближнего боя.", -- Непреклонный -- руоф Упрямый
	},
	--[+ KEYSTONE 5-3 - Terminal Decree +]--
	["loc_talent_adamant_terminus_warrant_toughness_desc"] = { -- melee_toughness: +100%, toughness: 25%, +colors
		en = "While you have stacks of "..CKWord("Melee Justice", "Meleejust_rgb")..", you gain additional:\n"
			..Dot_green.." {melee_toughness:%s} Melee "..CKWord("Toughness", "Toughness_rgb").." Regeneration.\n"
			.."\n"
			.."Allies in "..CKWord("Coherency", "Coherency_rgb").." replenish:\n"
			..Dot_green.." {toughness:%s} of any "..CKWord("Toughness", "Toughness_rgb").." that you replenish.",
		ru = "Пока у вас есть заряды "..CKWord("Судьи-рукопашника", "Meleejust_rgb_ru")..", вы дополнительно получаете:\n"
			..Dot_green.." {melee_toughness:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru").." в ближнем бою.\n"
			.."\n"
			.."Союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." восстанавливают:\n"
			..Dot_green.." {toughness:%s} любой "..CKWord("стойкости", "stoikosti_rgb_ru")..", восстановленной вами.", -- Последний приговор -- руоф Окончательное постановление
	},
	--[+ KEYSTONE 5-4 - Writ of Judgement +]--
	["loc_talent_adamant_terminus_warrant_improved_alt_desc"] = { -- talent_max_stacks: 30, melee_rending: +15%, crit_damage: +25%, weakspot_damage: +25%, +colors
		en = "Swapping to your Melee Weapon while at {talent_max_stacks:%s} "..CKWord("Melee Justice", "Meleejust_rgb").." Stacks grants you:\n"
			..Dot_green.." {melee_rending:%s} Melee "..CKWord("Rending", "Rending_rgb").." until you run out of Stacks, or swap to your Ranged Weapon.\n"
			.."\n"
			.."Swapping to your Ranged Weapon while at {talent_max_stacks:%s} "..CKWord("Ranged Justice", "Rangedjust_rgb").." Stacks grants you:\n"
			..Dot_green.." {crit_damage:%s} "..CKWord("Critical Strike Damage", "Crit_strike_dmg_rgb").." and\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." until you run out of Stacks, or swap to your Melee Weapon.",
		ru = "Переключение на оружие ближнего боя пока у вас есть {talent_max_stacks:%s} зарядов "..CKWord("Судьи-рукопашника", "Meleejust_rgb_ru")..", даёт вам:\n"
			..Dot_green.." {melee_rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони в ближнем бою пока заряды не кончатся или пока вы не переключитесь на дальнобойное оружие.\n"
			.."\n"
			.."Переключение на оружие дальнего боя пока у вас есть {talent_max_stacks:%s} зарядов "..CKWord("Судьи-стрелка", "Rangedjust_rgb_ru")..", даёт вам:\n"
			..Dot_green.." {crit_damage:%s} к "..CKWord("критическому урону", "krit_uronu_rgb_ru").." и\n"
			..Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." пока заряды не кончатся или пока вы не переключитесь на оружие ближнего боя.", -- Судебный ордер -- руоф Судебное предписание
	},
	--[+ KEYSTONE 6 - Forceful +]--
	["loc_talent_adamant_forceful_base_alt_desc"] = { -- forceful_name: Forceful, duration: 5, stacks: 10, impact: +5%, dr: +2.5%, s->seconds, +colors
		en = CKWord("Staggering", "Staggering_rgb").." Hits and Blocked Attacks grant Stacks of "..CKWord("Forceful", "Forceful_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			.."Each Stack gives:\n"
			..Dot_green.." {impact:%s} "..CKWord("Impact", "Impact_rgb").." and\n"
			..Dot_green.." {dr:%s} "..CKWord("Damage", "Damage_rgb").." Resistance.\n"
			.."\n"
			..Dot_red.." Remove Stack on "..CKWord("Damage", "Damage_rgb").." taken.",
		ru = CKWord("Ошеломляющие", "Oshelomlauschie_rgb_ru").." удары и заблокированные атаки дают заряды "..CKWord("Неудержимости", "Forceful_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			..Dot_nc.." Складывается до {stacks:%s} раз.\n"
			.."\n"
			.."Каждый заряд даёт:\n"
			..Dot_green.." {impact:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." и\n"
			..Dot_green.." {dr:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..Dot_red.." Заряды снимаются при получении "..CKWord("урона", "urona_rgb_ru")..".", -- Неудержимый -- руоф Напористый
	},
	--[+ KEYSTONE 6-1 - Adamant Will +]--
	["loc_talent_adamant_forceful_stun_immune_and_block_all_linger_desc"] = { -- duration: 3, s->seconds, +colors
		en = "While having "..CNumb("10", "n_10_rgb").." Stacks of "..CKWord("Forceful", "Forceful_rgb").." and for {duration:%s} seconds after dropping below "..CNumb("10", "n_10_rgb").." Stacks you gain:\n"
			..Dot_green.." "..CKWord("Stun", "Stun_rgb").." Immunity and\n"
			..Dot_green.." Perfect blocks can block All Attacks.",
		ru = "Пока у вас "..CNumb("10", "n_10_rgb").." зарядов "..CKWord("Неудержимости", "Forceful_rgb_ru").." и на {duration:%s} секунды после того, как количество зарядов упадёт ниже "..CNumb("10", "n_10_rgb")..", вы получаете:\n"
			..Dot_green.." Иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru")..",\n"
			..Dot_green.." Идеальные блоки могут блокировать все атаки.", -- Адамантовая воля
	},
	--[+ KEYSTONE 6-2 - Will of the Lex +]--
	["loc_talent_adamant_forceful_toughness_regen_per_stack_desc"] = { -- toughness: +0.5%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished each second per "..CKWord("Forceful", "Forceful_rgb").." Stack.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается каждую секунду за заряд "..CKWord("Неудержимости", "Forceful_rgb_ru")..".",
	},
	--[+ KEYSTONE 6-3 - Targets Acquired +]--
	["loc_talent_adamant_forceful_melee_alt_desc"] = { -- duration: 3, attack_speed: +10%, cleave: +50%, s->seconds, +colors
		en = "While having "..CNumb("10", "n_10_rgb").." Stacks of "..CKWord("Forceful", "Forceful_rgb").." and for {duration:%s} seconds after dropping below "..CNumb("10", "n_10_rgb").." Stacks you gain:\n"
			..Dot_green.." {attack_speed:%s} Attack Speed and\n"
			..Dot_green.." {cleave:%s} "..CKWord("Cleave", "Cleave_rgb")..".",
		ru = "Пока у вас "..CNumb("10", "n_10_rgb").." зарядов "..CKWord("Неудержимости", "Forceful_rgb_ru").." и на {duration:%s} секунды после того, как количество зарядов упадёт ниже "..CNumb("10", "n_10_rgb")..", вы получаете:\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки и\n"
			..Dot_green.." {cleave:%s} к "..CKWord("рассечению", "rassecheniu_rgb_ru").." врагов.", -- Цели обнаружены
	},
	--[+ KEYSTONE 6-4 - Arbites Vigilant +]--
	["loc_talent_adamant_forceful_ability_damage"] = { -- strength: +2.5%, duration: 10, s->seconds, +colors
		en = "On "..CKWord("Combat Ability", "Cmbt_abil_rgb").." use, you spend all Stacks and gain per Stack:\n"
			..Dot_green.." {strength:%s} "..CKWord("Strength", "Strength_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "При использовании "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." вы тратите все заряды и получаете за каждый из них:\n"
			..Dot_green.." {strength:%s} к "..CKWord("силе", "sile_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Бдительный Арбитрес -- руоф Бдительность Арбитрес
	},
	--[+ KEYSTONE 6-5 - Judicial Force +]--
	["loc_talent_adamant_forceful_stagger_on_low_high_desc"] = { -- low_stacks: 0, high_stacks: 10, cooldown: 5, s->seconds, +colors
		en = CKWord("Stagger", "Stagger_rgb").." nearby Enemies upon reaching {low_stacks:%s} Stacks or {high_stacks:%s} Stacks of "..CKWord("Forceful", "Forceful_rgb")..".\n"
			..Dot_nc.." Cooldown {cooldown:%s} seconds.\n"
			..Dot_nc.." Cooldown is separate for {low_stacks:%s} Stacks and for {high_stacks:%s} Stacks.",
		ru = "Вы "..CKWord("ошеломляете", "oshelomlaete_rgb_ru").." ближайших врагов при достижении вами {low_stacks:%s} или {high_stacks:%s} зарядов "..CKWord("Неудержимости", "Forceful_rgb_ru")..".\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			..Dot_nc.." Восстановление раздельное для {low_stacks:%s} зарядов и для {high_stacks:%s} зарядов.", -- Сила правосудия -- руоф Судебная сила
	},
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - No Escape +]--
	["loc_talent_adamant_elite_special_kills_offensive_boost_alt_desc"] = { -- damage: +10%, movement_speed: +10%, duration: 4, s->seconds, +colors
		en = "On Elite or Specialist Kill, gain:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {movement_speed:%s} Movement Speed.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "После убийства элитного врага или специалиста, вы получаете:\n" -- Не уйдёшь -- руоф Не сбежишь
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." {movement_speed:%s} к скорости движения.\n"
			..Dot_nc.." Длится {duration:%s} секунды.",
	},
	--[+ Passive 2 - Withering Fire +]--
	["loc_talent_adamant_damage_after_reloading_desc"] = { -- damage: +15%, duration: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds after Reloading.",
		ru = Dot_green.." {damage:%s} к дальнобойному "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд после перезарядки.", -- Истребляющий огонь -- Изнуряющий огонь
	},
	--[+ Passive 3 - Hammer of Judgement +]--
	["loc_talent_adamant_multiple_hits_attack_speed_desc"] = { -- melee_attack_speed: +10%, duration: 3, hits: 3, s->seconds
		en = Dot_green.." {melee_attack_speed:%s} Melee Attack Speed for {duration:%s} seconds on hitting {hits:%s} or more enemies with a Melee Attack.",
		ru = Dot_green.." {melee_attack_speed:%s} к скорости атак ближнего боя на {duration:%s} секунды при попадании по {hits:%s} или более врагам атакой ближнего боя.", -- Молот Правосудия -- руоф Молот правосудия
	},
	--[+ Passive 4 - Razor-Jaw Augment +]--
	["loc_talent_adamant_dog_pounces_bleed_nearby_desc"] = { -- stacks: 8, +colors
		en = Dot_green.." {stacks:%s} Stacks of "..CKWord("Bleed", "Bleed_rgb").." applied to Enemies knocked away by your Cyber Mastiff's Pounce.",
		ru = Dot_green.." {stacks:%s} зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." применяется к врагам, опрокинутым вашим кибермастифом.", -- Аугментация челюсти-бритвы -- руоф Аугментация челюстей: бритва
	},
	--[+ Passive 5 - Target Neutralised +]--
	["loc_talent_adamant_elite_special_kills_replenish_toughness_desc"] = { -- instant_toughness: 10%, toughness: 10%, duration: 4, s->seconds, +colors
		en = "On Elite or Specialist Kill you replenish:\n"
			..Dot_green.." {instant_toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." instantly and\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {duration:%s} seconds.",
		ru = "При убийстве элитного врага или специалиста вы восстанавливаете:\n"
			..Dot_green.." {instant_toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." мгновенно и\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в течение {duration:%s} секунд.", -- Цель уничтожена -- руоф Цель нейтрализована
	},
	--[+ Passive 6 - Up Close +]--
	["loc_talent_adamant_close_kills_restore_toughness_desc"] = { -- toughness: 5%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished after killing enemy within "..CNumb("12.5", "n_12_5_rgb").." meters.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при убийстве на дистанции до "..CNumb("12.5", "n_12_5_rgb").." метров.", -- В упор -- руоф Лицом к лицу
	},
	--[+ Passive 7 - Force of Will +]--
	["loc_talent_adamant_staggers_replenish_toughness_melee_desc"] = { -- toughness: 10%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished on "..CKWord("Staggering", "Staggering_rgb").." Melee Attack.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при "..CKWord("ошеломлении", "oshelomlenii_rgb_ru").." врага атакой ближнего боя.", -- Сила воли
	},
	--[+ Passive 8 - Retaliatory Force +]--
	["loc_talent_adamant_perfect_block_damage_boost_alt_desc"] = { -- block_cost: 15%, damage: +15%, attack_speed: +15%, duration: 8, s->seconds, +colors
		en = Dot_green.." "..CNumb("-", "n_minus_rgb").."{block_cost:%s} Block Cost.\n"
			.."\n"
			.."On Perfect Block you gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {attack_speed:%s} Attack Speed.",
		ru = Dot_green.." "..CNumb("-", "n_minus_rgb").."{block_cost:%s} затрат "..CKWord("выносливости", "vynoslivosti_rgb_ru").." на блок.\n" -- Сила возмездия
			.."\n"
			.."При идеальном блокировании вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." и\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки.",
	},
	--[+ Passive 9 - Man and Cyber-Mastiff +]--
	["loc_talent_adamant_toughness_regen_near_companion_desc"] = { -- toughness: 5%, range: 8, m->meters, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished per second while Cyber-Mastiff is within {range:%s} meters of you.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается в секунду пока ваш кибермастиф в пределах {range:%s} метров от вас.", -- Человек и кибермастиф
	},
	--[+ Passive 10 - Walk It Off +]--
	["loc_talent_adamant_stamina_spent_replenish_toughness_desc"] = { -- stamina: 1, toughness: 15%, duration: 3, s->seconds, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished over {duration:%s} seconds per {stamina:%s} "..CKWord("Stamina", "Stamina_rgb").." spent.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается за {duration:%s} секунды за каждую единицу потраченной "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".", -- Заживёт на ходу -- руоф Остынь --{stamina:%s}
	},
	--[+ Passive 11 - Shield Plates +]--
	["loc_talent_adamant_shield_plates_alt_desc"] = { -- toughness: 15%, duration: 3, perfect_toughness: 10%, cooldown: 1, s->second, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished over {duration:%s} seconds on successful Block.\n"
			.."\n"
			..Dot_green.." {perfect_toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." instantly replenished on Perfect Block.\n"
			.."\n"
			..Dot_nc.." Cooldown {cooldown:%s} second.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается за {duration:%s} секунды при успешном блоке.\n"
			.."\n"
			..Dot_green.." {perfect_toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." мгновенно восполняется при идеальном блоке.\n"
			.."\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунду.", -- Щитовые пластины -- руоф Пластинчатые щиты
	},
	--[+ Passive 12 - Arbitrator Armour +]--
	["loc_talent_adamant_armor_desc"] = { -- toughness: +25, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".", -- Броня арбитратора -- руоф Броня Арбитратора
	},
	--[+ Passive 13 - Voltaic Mandibles Augment +]--
	["loc_talent_adamant_dog_attacks_electrocute_desc"] = { -- duration: 5, s->seconds, +colors
		en = "Your Cyber-Mastiff "..CKWord("Electrocutes", "Electrocutes_rgb").." Enemies it attacks for {duration:%s} seconds.",
		ru = "Ваш кибермастиф поражает "..CKWord("электрошоком", "elektroshokom_rgb_ru").." врагов на {duration:%s} секунд при атаке.", -- Аугментация Вольтаические жвала -- руоф Аугментация челюстей: электрошок
	},
	--[+ Passive 14 - Ammo Belt +]--
	["loc_talent_adamant_ammo_belt_desc"] = { -- ammo: +25%
		en = Dot_green.." {ammo:%s} Ammo Capacity.",
		ru = Dot_green.." {ammo:%s} к боезапасу.", -- Патронтаж -- руоф Поясная разгрузка
	},
	--[+ Passive 15 - Concussive +]--
	["loc_talent_adamant_melee_weakspot_hits_count_as_stagger_desc"] = { -- duration: 4, s->seconds, +colors
		en = "Melee "..CKWord("Weakspot Hits", "Weakspothits_rgb").." make the Enemy count as "..CKWord("Staggered", "Staggered_rgb").." for {duration:%s} seconds.",
		ru = "Попадания в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." в ближнем бою "..CKWord("ошеломляют", "oshelomlaut_rgb_ru").." врагов на {duration:%s} секунды.", -- Ошеломление -- руоф Сотрясение
	},
	--[+ Passive 16 - Canine Morale +]--
	["loc_talent_adamant_pinning_dog_kills_buff_allies_description"] = { -- tdr: +20%, toughness: +10%, duration: 5, s->seconds, +colors
		en = "Killing Pounced Targets grants for you and Allies in "..CKWord("Coherency", "Coherency_rgb").." for {duration:%s} seconds:\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..",\n"
			..Dot_green.." "..CNumb("2%", "pc_2_rgb").." "..CKWord("Toughness", "Toughness_rgb").." per second, up to {toughness:%s}.",
		ru = "Убийство врага, прижатого кибермастифом к земле, даёт вам и союзникам в "..CKWord("сплочённости", "splochennosti_rgb_ru").." на {duration:%s} секунд:\n" -- Боевой настрой пса -- руоф Собачий настрой
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." и\n"
			..Dot_green.." "..CNumb("2%", "pc_2_rgb").." восстановления "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду, вплоть до {toughness:%s}.",
	},
	--[+ Passive 17 - Imposing Force +]--
	["loc_talent_adamant_damage_reduction_after_elite_kill_desc"] = { -- damage_reduction: +25%, duration: 5, s->seconds, +colors
		en = Dot_green.." {damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Resistance for {duration:%s} seconds after Elite or Specialist Kill.",
		ru = Dot_green.." {damage_reduction:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд после убийства элитного врага или специалиста.", -- Давящая мощь -- руоф Впечатляющая сила
	},
	--[+ Passive 18 - Suppression Force +]--
	["loc_talent_adamant_staggered_enemies_deal_less_damage_desc"] = { -- damage: -20%, duration: 5, s->seconds, +colors
		en = "Enemies "..CKWord("Staggered", "Staggered_rgb").." by Melee Attacks, Pushes, and direct impacts of "..CKWord("Break the Line", "BreakZLine_rgb").." deal:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "Враги, "..CKWord("ошеломлённые", "oshelomlennye_rgb_ru").." вами с помощью атак ближнего боя, толчков или прямых столкновений способности "..CKWord("Прорыв вражеского строя", "BreakZLined_rgb_ru")..", наносят:\n"
			..Dot_green.." {damage:%s} "..CKWord("урона", "urona_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Сила подавления
	},
	--[+ Passive 19 - Suppression Protocols +]--
	["loc_talent_adamant_hitting_multiple_gives_tdr_desc"] = { -- hits: 3, tdr: +20%, duration: 5, s->seconds, +colors
		en = "Hitting {hits:%s} or more enemies with an Attack grants you for {duration:%s} seconds:\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".",
		ru = "После попадания атакой по {hits:%s} или более врагам даёт вам на {duration:%s} секунд:\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru")..".", -- Протоколы подавления
	},
	--[+ Passive 20 - Plasteel Plates +]--
	["loc_talent_adamant_plasteel_plates_desc"] = { -- toughness: +25, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".", -- Пласталевые пластины -- руоф Пластины из пластали
	},
	--[+ Passive 21 - Arbites Revelatum +]--
	["loc_talent_adamant_dodge_grants_damage_desc"] = { -- damage: 15%, duration: 5, s->seconds, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds after Successful Dodge.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд при успешном уклонении.", -- Арбитрес Ревелатум
	},
	--[+ Passive 22 - Justified Measures +]--
	["loc_talent_adamant_stacking_damage_desc"] = { -- damage: +3%, stacks: 5, duration: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." on Successful Attack.\n"
			..Dot_nc.." {stacks:%s} Max Stacks.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." при успешной атаке.\n"
			..Dot_nc.." Максимум {stacks:%s} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Оправданные меры
	},
	--[+ Passive 23 - Hold the Line +]--
	["loc_talent_adamant_staggers_reduce_damage_taken_alt_desc"] = { -- normal_stacks: 1, damage_taken_multiplier: +3%, max_stacks: 5, duration: 8, ogryn_stacks: 5, +colors
		en = CKWord("Staggering", "Staggering_rgb").." an Enemy grants {normal_stacks:%s} Stack of {damage_taken_multiplier:%s} "..CKWord("Damage", "Damage_rgb").." Resistance, on the next Melee hit taken.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..CKWord("Staggering", "Staggering_rgb").." Non-Human Sized Enemies grants {ogryn_stacks:%s} Stacks.",
		ru = CKWord("Ошеломление", "Oshelomlenie_rgb_ru").." врага даёт {normal_stacks:%s} заряд {damage_taken_multiplier:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru").." для следующего полученного удара в ближнем бою.\n"
			..Dot_nc.." Суммируется {max_stacks:%s} раз.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..CKWord("Ошеломление", "Oshelomlenie_rgb_ru").." врагов больше человеческого роста даёт {ogryn_stacks:%s} зарядов.", -- Держи строй -- руоф Держать строй
	},
	--[+ Passive 24 - Judicious Efficiency +]--
	["loc_talent_adamant_elite_special_kills_reload_speed_desc"] = { -- reload_speed: 20%
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} Reload Speed on next reload after Elite or Specialist Kill.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} к скорости следующей перезарядки после убийства элитного врага или специалиста.", -- Судейская эффективность -- руоф Разумная эффективность
	},
	--[+ Passive 25 - Rapid Movement +]--
	["loc_talent_adamant_sprinting_sliding_description"] = { -- speed: +5%, duration: 5, stamina: +5%, cd: 0.75, s->seconds, +colors
		en = Dot_green.." {speed:%s} Sprint Speed for {duration:%s} seconds after Sliding.\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb").." on Kill.\n"
			..Dot_nc.." Cooldown {cd:%s} seconds.",
		ru = Dot_green.." {speed:%s} к скорости бега на {duration:%s} секунд после подката.\n"
			.."\n"
			..Dot_green.." {stamina:%s} к "..CKWord("выносливости", "vynoslivosti_rgb_ru").." после убийства врага.\n"
			..Dot_nc.." Восстанавливается {cd:%s} секунды.", -- Быстрые движения -- руоф Быстрое перемещение
	},
	--[+ Passive 26 - Rebreather +]--
	["loc_talent_adamant_rebreather_desc"] = { -- corruption: +20%, toxic_reduction: +75%, +colors
		en = Dot_green.." {corruption:%s} "..CKWord("Corruption", "Corruption_rgb").." Resistance and\n"
			..Dot_green.." {toxic_reduction:%s} Reduced "..CKWord("Damage", "Damage_rgb").." taken from Toxic Gas.",
		ru = Dot_green.." {corruption:%s} к сопротивлению "..CKWord("порче", "porche_rgb_ru").." и\n"
			..Dot_green.." {toxic_reduction:%s} к снижению "..CKWord("урона", "urona_rgb_ru")..", получаемого от токсичного газа.", -- Ребризер -- руоф Противогаз
	},
	--[+ Passive 27 - Cower, Miscreants! +]--
	["loc_talent_adamant_damage_vs_suppressed_desc"] = { -- damage_vs_suppressed: +25%, +colors
		en = Dot_green.." {damage_vs_suppressed:%s} "..CKWord("Damage", "Damage_rgb").." vs Suppressed Enemies.",
		ru = Dot_green.." {damage_vs_suppressed:%s} к "..CKWord("урону", "uronu_rgb_ru").." подавленным врагам.", -- Трепещите, негодяи!
	},

	--[+ Passive 28 - Target the Weak +]-- DOUBLE! OGRYN - Passive 45 - Hard Knocks
	-- ["loc_talent_ogryn_big_bully_heavy_hits_new_desc"] = {  },

	--[+ Passive 29 - The Emperor's Fist +]--
	["loc_talent_adamant_first_melee_hit_increased_damage_desc"] = { -- damage: +15%, impact: +30%, +colors
		en = "Your first Melee strike against a target also applies:\n"
			..Dot_green.." {damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." and\n"
			..Dot_green.." {impact:%s} "..CKWord("Impact", "Impact_rgb")..".",
		ru = "Первый удар ближнего боя по цели также приняет к ней дополнительно:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." ближнего боя и\n"
			..Dot_green.." {impact:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru")..".", -- Кулак Императора
	},
	--[+ Passive 30 - Zealous Dedication +]--
	["loc_talent_adamant_crit_chance_on_kill_desc"] = { -- crit_chance: 2%, max_stacks: 8, duration: 10, s->seconds, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} "..CKWord("Critical Strike Chance", "Crt_chnc_r_rgb").." on Kill.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." при убийстве.\n"
			..Dot_nc.." Суммируется {max_stacks:%s} раз.\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Фанатичная преданность
	},
	--[+ Passive 31 - Street Smarts +]--
	["loc_talent_adamant_dodge_improvement_desc"] = { -- dodge: +1, dodge_duration: +25%
		en = Dot_green.." {dodge:%s} Effective Dodges.\n"
			.."\n"
			..Dot_green.." {dodge_duration:%s} Dodge Duration, increased from "..CNumb("0.2", "n_02_rgb").." to "..CNumb("0.25", "n_025_rgb").." seconds.",
		ru = Dot_green.." {dodge:%s} эффективное уклонение.\n"
			.."\n"
			..Dot_green.." {dodge_duration:%s} к длительности уклонения.", -- Уличная хватка -- руоф Законы улицы
	},
	--[+ Passive 32 - Drive them Back +]--
	["loc_talent_adamant_cleave_after_push_desc"] = { -- cleave: 75%, duration: 5, s->seconds, +colors
		en = "Pushing grants for {duration:%s} seconds:\n"
			..Dot_green.." {cleave:%s} "..CKWord("Cleave", "Cleave_rgb")..".",
		ru = "Отталкивание даёт на {duration:%s} секунд:\n"
			..Dot_green.." {cleave:%s} к "..CKWord("рассечению", "rassecheniu_rgb_ru")..".", -- Натиск -- руоф Отбрось их
	},
	--[+ Passive 33 - Target Selection +]--
	["loc_talent_adamant_pinning_dog_elite_damage_description"] = { -- damage: +15%, time: 8, s->seconds, +colors
		en = "Killing a Pounced Elite or Specialist grants:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." vs Elites and Specialists.\n"
			..Dot_nc.." Lasts {time:%s} seconds.",
		ru = "Убийство элитного врага или специалиста, прижатого кибермастифом к земле, даёт:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." элитным врагам и специалистам.\n"
			..Dot_nc.." Длится {time:%s} секунд.", -- Выбор целей -- руоф Выбор цели
	},
	--[+ Passive 34 - Soulguilt Scan +]--
	["loc_talent_adamant_stacking_weakspot_strength_duration_desc"] = { -- strength: 2%, max_stacks: 8, duration: 10, s->seconds, +colors
		en = CKWord("Weakspot Hits", "Weakspothits_rgb").." grants:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{strength:%s} "..CKWord("Weakspot", "Weakspot_rgb").." attacks strength.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru").." даёт:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{strength:%s} к силе атак в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".\n"
			..Dot_nc.." Суммируется {max_stacks:%s} раз.\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Поиск виновных душ
	},
	--[+ Passive 35 - Priority Endowment +]--	13.12.2025
	-- ! Double: Veteran - Passive 39 - Lock and Load !
	["loc_talent_adamant_clip_size_alt_desc"] = { -- clip_size: +15%
		en = Dot_green.." {clip_size:%s} Clip Size.\n"
			.."\n"
			..Dot_nc.." Rounded Up.",
		ru = Dot_green.." {clip_size:%s} к размеру магазина.\n"
			.."\n"
			..Dot_nc.." Округляется в большую сторону.", -- Приоритетное снабжение
	},
	--[+ Passive 36 - Target Priority +]--
	["loc_talent_adamant_increased_damage_to_high_health_desc"] = { -- damage: 15%, health: 75%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("Damage", "Damage_rgb").." to Enemies above {health:%s} "..CKWord("Health", "Health_rgb")..".",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." врагам со "..CKWord("здоровьем", "zdoroviem_rgb_ru").." выше {health:%s}.", -- Приоритет целей
	},
	--[+ Passive 37 - Final Warning +]--
	["loc_talent_adamant_ranged_damage_on_melee_stagger_desc"] = { -- damage: 15%, duration: 5, s->seconds, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." on Melee "..CKWord("Staggering", "Staggering_rgb").." Hits.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} к дальнобойному "..CKWord("урону", "uronu_rgb_ru").." при "..CKWord("ошеломлении", "oshelomlenii_rgb_ru").." врагов ударами в ближнем бою.\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Последнее предупреждение
	},
	--[+ Passive 38 - Weight of the Lex +]--
	["loc_talent_adamant_heavy_attacks_increase_damage_desc"] = { -- damage: +15%, duration: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds after Heavy Melee Attack.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд после заряженной атаки ближнего боя.", -- Вес Закона
	},
	--[+ Passive 39 - Serrated Maw +]--
	["loc_talent_adamant_dog_applies_brittleness_desc"] = { -- stacks: 6, +colors
		en = "Your Cyber-Mastiff applies on attack:\n"
			..Dot_green.." {stacks:%s} Stacks of "..CKWord("Brittleness", "Brittleness_rgb")..".",
		ru = "Ваш кибермастиф при атаке накладывает:\n"
			..Dot_green.." {stacks:%s} зарядов "..CKWord("хрупкости", "hrupkosti_rgb_ru")..".", -- Зазубренная пасть
	},
	--[+ Passive 40 - Prosecution Blow +]--
	["loc_talent_adamant_crits_rend_alt_desc"] = { -- rending: +20%, +colors
		en = Dot_green.." {rending:%s} "..CKWord("Rending", "Rending_rgb").." on Ranged "..CKWord("Critical Strike", "Crit_strike_rgb")..".",
		ru = Dot_green.." {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..".", -- Карающий удар -- руоф Обвиняющий удар
	},
	--[+ Passive 41 - March +]--
	["loc_talent_adamant_movement_speed_on_block_alt_desc"] = { -- movement_speed: +15%, duration: 3, s->seconds, +colors
		en = Dot_green.." {movement_speed:%s} Movement Speed on Ranged Hit.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = Dot_green.." {movement_speed:%s} к скорости движения после любой дальнобойной атаки.\n"
			..Dot_nc.." Длится {duration:%s} секунды.", -- Марш
	},
	--[+ Passive 42 - Monstrosity Hunter +]--
	["loc_talent_adamant_monster_hunter_desc"] = { -- damage: +20%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." to Ogryns and Monstrosities.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." огринам и чудовищам.", -- Охотник на чудовищ -- руоф Охота на чудовищ
	},
	--[+ Passive 43 - Strike Down +]--
	["loc_talent_adamant_melee_attacks_on_staggered_rend_alt_desc"] = { -- rending: +15%, +colors
		en = Dot_green.." {rending:%s} Melee "..CKWord("Rending", "Rending_rgb").." on "..CKWord("Staggered", "Staggered_rgb").." Enemies.",
		ru = Dot_green.." {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." в ближнем бою "..CKWord("ошеломлённым", "oshelomlennym_rgb_ru").." врагам.", -- Сокрушительный удар -- руоф Сбивающий удар
	},
	--[+ Passive 44 - True Grit +]--
	["loc_talent_adamant_limit_dmg_taken_from_hits_desc"] = { -- limit: 50, +colors
		en = "Limit the maximum "..CKWord("Health", "Health_rgb").." "..CKWord("Damage", "Damage_rgb").." Taken from an Attack to {limit:%s}.",
		ru = "Максимальный получаемый "..CKWord("урон", "uron_rgb_ru").." "..CKWord("здоровью", "zdoroviu_rgb_ru").." от атак снижается до {limit:%s}.", -- Настоящая закалка -- руоф Истинная выдержка
	},


--[+ ++HIVE SCUM - ОТБРОС УЛЬЯ++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Blinder +]--
	-- ["loc___description"] = { -- Grenade(s)->Grenade, : 20, : 1, : 5, +colors
		-- en = "Quick to use Grenade that "..CKWord("Staggers", "Staggers_rgb").." enemies.\n"
			-- ..Dot_green.." {#color(255, 35, 5)}BUG{#reset()}: {:%s} Grenade restored after killing {:%s} enemies within "..CNumb("12.5", "n_12_5_rgb").." meters using any attack, including DoTs and explosions.\n"
			-- ..Dot_nc.." Max Grenades: {:%s}.\n"
			-- .."\n"
			-- ..Dot_green.." The explosion "..CKWord("Staggers", "Staggers_rgb").." all enemies except for Mutants, Monstrosties, female Twin and Captains only without Void shield.\n"
			-- ..Dot_nc.." Max explosion radius: "..CNumb("3.5", "n_3_5_rgb").." meters.\n"
			-- ..Dot_nc.." Replenishes all grenades per grenade pickup.\n",
		--[+ БЛИЦ 0 - Ослепитель +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ BLITZ 1 - Blackout +]--
	-- ["loc__desc"] = { -- Grenade(s)->Grenade, : 20, : 1, : 5, talent_name: Blinder, +colors
		-- en = "Quick to use Grenade that "..CKWord("Staggers", "Staggers_rgb").." enemies.\n"
			-- ..Dot_green.." This is an augmented version of {talent_name:%s}."
			-- ..Dot_green.." {:%s} Grenade restored after killing {:%s} enemies within "..CNumb("12.5", "n_12_5_rgb").." meters using any attack, including DoTs and explosions.\n"
			-- ..Dot_nc.." Max Grenades: {:%s}.\n"
			-- .."\n"
			-- ..Dot_green.." The explosion "..CKWord("Staggers", "Staggers_rgb").." all enemies except for Mutants, Monstrosties, female Twin and Captains only without Void shield.\n"
			-- ..Dot_nc.." Max explosion radius: "..CNumb("3.5", "n_3_5_rgb").." meters.\n",
			-- .."\n",
		--[+ БЛИЦ 1 - Затмение +]--
		-- ru = "Граната мгновенного действия, которая "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." врагов.\n"
			-- .."\n"
			-- ..Dot_green.." За каждые {:%s} убийств на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." вы восстанавливаете {:%s} гранату.\n"
			-- ..Dot_nc.." Максимум гранат: {:%s}.\n"
			-- ..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.",
		-- ["zh-tw"] = "",
	-- },
	--[+ BLITZ 2 - Boom Bringer +]--
	-- ["loc_talent_ability_krak_grenade_desc"] = { -- : , +colors
		-- en = "High powered missile launcher.\n"
			-- .."\n"
			-- .." Max Missiles: {:%s}.",
		--[+ БЛИЦ 2 - Бабахер +]--
		-- ru = "Мощная ракетница.\n"
			-- .."\n"
			-- ..Dot_nc.." Максимум ракет: {:%s}.",
		-- ["zh-tw"] = "",
	-- },
	--[+ BLITZ 3 - Chem Grenade +]--
	-- ["loc_ability_smoke_grenade_description"] = { -- +colors
		-- en = "Thrown Grenade containing a "..CKWord("Chem Toxin", "Chem_Tox_rgb")..". The canister breaks open and contents spill out across an area when it explodes.\n"
			-- .." ??? Any enemy that enters the lingering toxic cloud will be affected with Stacks of "..CKWord("Chem Toxin", "Chem_Tox_rgb")..".\n"
			-- .."\n"
			-- .." Max Grenades: {:%s}.",
		--[+ БЛИЦ 3 - Хим-граната +]--
		-- ru = "Вы бросаете гранату с "..CKWord("Хим-токсином", "Chem_Toxom_rgb_ru")..", которая при взрыве разлетится на куски и разольёт вокруг своё содержимое, распространяя токсичные пары.\n"
			-- .." Любой враг, вошедший в токсичное облако, будет набирать заряды "..CKWord("Хим-токсина", "Chem_Toxa_rgb_ru")..".\n",
			-- .."\n"
			-- .." Максимум гранат: {:%s}.",
		-- ["zh-tw"] = "",
	-- },
--[+ +AURA - АУРЫ+ +]--
	--[+ AURA 0 - Gunslinger +]--
	-- ["loc_talent__description"] = { -- : , +colors
		-- en = "",
		--[+ АУРА 0 - Стрелок +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ AURA 1 - Gunslinger Improved +]--
	-- ["loc_talent_veteran_elite_kills_grant_ammo_coop_improved_cd_desc"] = { -- : , +colors
		-- en = Dot_green.." When an Ammo pickup is collected by you or your Allies in "..CKWord("Coherency", "Coherency_rgb")..", you each replenish Ammo equal to {:%s} of that pickup.\n"
			-- .."\n"
			-- .."This is an augmented version of {talent_name:%s}.",
		--[+ АУРА 1 - Улучшенный стрелок +]--
		-- ru = Dot_green.." Когда вы или ваши союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." подбираете боеприпасы, все остальные союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." также пополняют небольшое количество боеприпасов.",
		-- ["zh-tw"] = "",
	-- },
	--[+ AURA 2 - Ruffian +]--
	-- ["loc_talent_veteran_damage_coherency_desc"] = { -- : +, talent_name: , +colors
		-- en = Dot_green.." {:%s} Melee "..CKWord("Damage", "Damage_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".",
		--[+ АУРА 2 - Хулиган +]--
		-- ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10%", "pc_10_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." в ближнем бою для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".",
		-- ["zh-tw"] = "",
	-- },
	--[+ AURA 3 - Anarchist +]--
	-- ["loc_talent_veteran_movement_speed_coherency_desc"] = { -- : , +colors
		-- en = Dot_green.." {:%s} "..CKWord("Critical Chance", "Crit_chance_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".",
		--[+ АУРА 3 - Анархист +]--
		-- ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5%", "pc_5_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".",
		-- ["zh-tw"] = "",
	-- },
--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ ABILITY 0 - Desperado +]--
	-- ["loc_talent__description"] = { -- : , : , s->seconds, +colors
		-- en = "",
		--[+ СПОСОБНОСТЬ 0 - Отчаянная атака +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 1 - Enhanced Desperado +]--
	-- ["loc_talent_veteran_ranged_stance_toughness_description"] = { -- : , : , talent_name: , s->seconds, +colors
		-- en = "Immediately swap to and reload your Ranged Weapon, entering "..CKWord("Desperado", "Desperado_rgb").." for "..CNumb("5", "n_5_rgb").." seconds.\n"
			-- .."\n"
			-- .."During "..CKWord("Desperado", "Desperado_rgb")..", you gain:\n"
			-- ..Dot_green.." Immunity to Ranged Attacks,\n"
			-- ..Dot_green.." Sprinting costs no "..CKWord("Stamina", "Stamina_rgb")..", and\n"
			-- ..Dot_green.." Reloading does not reduce your Ammo Reserve.\n"
			-- .."\n"
			-- ..Dot_green.." Close Ranged Kills extends the duration of "..CKWord("Desperado", "Desperado_rgb")..".",
		--[+ СПОСОБНОСТЬ 1 - Отчаянная атака +]--
		-- ru = "Вы мгновенно экипируете своё оружие дальнего боя, перезаряжаете его и входите в режим "..CKWord("Отчаянной атаки", "Desperadki_rgb_ru").." на "..CNumb("5", "n_5_rgb").." секунд.\n"
			-- .."\n"
			-- .."Во время режима "..CKWord("Отчаянной атаки", "Desperadki_rgb_ru")..", вы получаете:\n"
			-- ..Dot_green.." Иммунитет к атакам дальнего боя,\n"
			-- ..Dot_green.." На бег не тратится "..CKWord("выносливость", "vynoslivost_rgb_ru")..", а\n"
			-- ..Dot_green.." Перезарядка не тратит боеприпасы из резерва.\n"
			-- .."\n"
			-- ..Dot_green.." Убийства в ближнем бою продлевают время действия "..CKWord("Отчаянной атаки", "Desperadki_rgb_ru")..".",
		-- ["zh-tw"] = "",
	-- },
	-- ["loc_talent_veteran_combat_ability_elite_and_special_outlines"] = { -- : , : , talent_name: , s->seconds, +colors
		-- en = "Desperado",
		--[+ СПОСОБНОСТЬ 1 -  +]--
		-- ru = "Отчаянная атака",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 1-1 -  +]--
	-- ["loc_talent__description"] = { -- talent_name: , : , : , : , +colors
		-- en = "",
		--[+ СПОСОБНОСТЬ 1-1 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 1-2 -  +]--
	-- ["loc_talent__description"] = { -- talent_name: , : , : , : , s->seconds, +colors
		-- en = "",
		--[+ СПОСОБНОСТЬ 1-2 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 1-3 -  +]--
	-- ["loc_talent__desc"] = { -- talent_name: , : , : , Stack(s)->Stacks, +colors
		-- en = "",
		--[+ СПОСОБНОСТЬ 1-3 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 2 - Rampage! +]--
	-- ["loc_talent_veteran_combat_ability_stagger_nearby_enemies_description"] = { -- : , : , s->seconds
		-- en = "Enter "..CKWord("Rampage", "Rampage_rgb").." gain for "..CNumb("5", "n_5_rgb").." seconds:\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." Melee Attack power,\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." Attack Speed,\n"
			-- ..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("10%", "pc_10_rgb").." "..CKWord("Damage", "Damage_rgb").." Taken,\n"
			-- ..Dot_green.." Immunity to "..CKWord("Stuns", "Stuns_rgb")..", and\n"
			-- ..Dot_green.." Immunity to Suppression.\n"
			-- .."\n"
			-- ..Dot_green.." Melee attacks extend the duration of "..CKWord("Rampage", "Rampage_rgb")..", although this effect is diminished after "..CNumb("30", "n_30_rgb").." seconds.\n"
			-- .."\n"
			-- ..Dot_red.." Exiting "..CKWord("Rampage", "Rampage_rgb").." leaves you exhausted and vulnerable for a "..CNumb("10", "n_10_rgb").." seconds.",
		--[+ СПОСОБНОСТЬ 2 -  +]--
		-- ru = "Вы впадаете в "..CKWord("Буйство!", "Rampage_rgb_ru").." и получаете на "..CNumb("5", "n_5_rgb").." секунд:\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." к "..CKWord("силе", "sile_rgb_ru").." атак ближнего боя,\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("25%", "pc_25_rgb").." к скорости атаки,\n"
			-- ..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("10%", "pc_10_rgb").." к получаемому "..CKWord("урону", "uronu_rgb_ru")..",\n"
			-- ..Dot_green.." Иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru")..", и\n"
			-- ..Dot_green.." Иммунитет к подавлению.\n"
			-- .."\n"
			-- ..Dot_green.." Атаки ближнего боя продлевают время действия "..CKWord("Буйства!", "Rampaga_rgb_ru")..". Этот эффект ослабевает после "..CNumb("30", "n_30_rgb").." секунд.\n"
			-- .."\n"
			-- ..Dot_red.." Режим "..CKWord("Буйства!", "Rampaga_rgb_ru").." изматывает вас и, после выхода из него, вы становитесь уязвимым на "..CNumb("10", "n_10_rgb").." секунд.",
		-- ["zh-tw"] = "",
	-- },
	-- ["loc_talent_veteran_combat_ability_stagger_nearby_enemies"] = { -- : , : , s->seconds
		-- en = "Rampage!",
		--[+ СПОСОБНОСТЬ 2 -  +]--
		-- ru = "Буйство!",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 2-1 -  +]--
	-- ["loc_talent__description"] = { -- talent_name: , : , : , +colors
		-- en = "",
		--[+ СПОСОБНОСТЬ 2-1 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 2-2 -  +]--
	-- ["loc_talent__description"] = { -- : , : , : , +colors
		-- en = "",
		--[+ СПОСОБНОСТЬ 2-2 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 2-3 -  +]--
	-- ["loc_talent__desc"] = { -- talent_name: , : , s->seconds
		-- en = "",
		--[+ СПОСОБНОСТЬ 2-3 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 2-4 -  +]--
	-- ["loc_talent__desc"] = { -- talent_name: , : , : , : , s->seconds, +colors
		-- en = "",
		--[+ СПОСОБНОСТЬ 2-4 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 3 - Stimm Supply +]--
	-- ["loc_talent_veteran_invisibility_on_combat_ability_damage_desc"] = { -- : , : , s->seconds, +colors
		-- en = "The "..CKWord("Hive Scum", "cls_scm_rgb").." has ‘repurposed’ military gadgets to come up with this customized Medical Crate that can be placed down on the ground. This is a supportive Ability that grants nearby Allies the effects of the "..CKWord("Hive Scum's", "cls_scm2_rgb").." Cartel Special Stimm.",
		--[+ СПОСОБНОСТЬ 3 - Поставки стимов +]--
		-- ru = CKWord("Падаль Улья", "cls_scm_rgb_ru").." слегка переделал военные гаджеты, создав этот модифицированный медицинский ящик, который можно разместить на земле. Эта поддерживающая способность наделяет ближайших союзников эффектами Особого стимулятора картеля "..CKWord("Падали Улья", "cls_scma_rgb_ru")..".",
		-- ["zh-tw"] = "",
	-- },
	-- ["loc_talent_veteran_invisibility_on_combat_ability"] = { -- : , : , s->seconds, +colors
		-- en = "Stimm Supply",
		--[+ СПОСОБНОСТЬ 3 - Поставки стимов +]--
		-- ru = "Поставки стимов",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 3-1 -  +]--
	-- ["loc__description"] = { -- : , talent_name: , : , : , : , s->seconds, +colors
		-- en = "",
		--[+ СПОСОБНОСТЬ 3-1 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 3-2 -  +]--
	-- ["loc__description"] = { -- talent_name: , : 
		-- en = "",
		--[+ СПОСОБНОСТЬ 3-2 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 3-3 -  +]--
	-- ["loc__description"] = { -- talent_name: , : , : , +colors
		-- en = "",
		--[+ СПОСОБНОСТЬ 3-3 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ ABILITY 3-4 -  +]--
	-- ["loc_talent__desc"] = { -- talent_name: 
		-- en = "",
		--[+ СПОСОБНОСТЬ 3-4 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ KEYSTONE 1 - Vulture’s Mark +]--
	-- ["loc_talent_veteran_snipers_focus_duration_desc"] = { -- : , : , : , : , +colors
		-- en = "Killing Specials or Elites with a Ranged Weapon gives you Stacks of "..CKWord("Vulture's Mark", "VultsMark_rgb")..".\n"
			-- .." For every Stack you gain:\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2%", "pc_2_rgb").." Ranged "..CKWord("Damage", "Damage_rgb")..",\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2%", "pc_2_rgb").." Movement Speed, and\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("33%", "pc_33_rgb").." Ranged "..CKWord("Critical Strike Chance", "Crt_chnc_r_rgb")..".\n"
			-- .."\n"
			-- .." At Max Stacks you also replenish:\n"
			-- ..Dot_green.." "..CNumb("10%", "pc_10_rgb").." "..CKWord("Toughness", "Toughness_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb").." on Ranged Special and Elite kills.",
		--[+ КЛЮЧЕВОЙ 1 - Метка стервятника +]--
		-- ru = "Убийство элитных врагов или специалистов оружием дальнего боя даёт вам заряды "..CKWord("Метки стервятника", "VultsMark_rgb_ru")..".\n"
			-- .."За каждый заряд вы получаете:\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2%", "pc_2_rgb").." к дальнобойному "..CKWord("урону", "uronu_rgb_ru")..",\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2%", "pc_2_rgb").." к скорости передвижения, и\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("33%", "pc_33_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru")..".\n"
			-- .."\n"
			-- .." При максимуме зарядов вы также восстанавливаете:\n"
			-- ..Dot_green.." "..CNumb("10%", "pc_10_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru").." при убийствах элитных врагов или специалистов оружием дальнего боя.",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 1 - Vulture’s Mark +]--
	-- ["loc_talent_veteran_snipers_focus"] = { -- : , : , : , : , +colors
		-- en = "Vulture’s Mark",
		--[+ КЛЮЧЕВОЙ 1 - Метка стервятника +]--
		-- ru = "Метка стервятника",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 1-1 -  +]--
	-- ["loc_talent__desc"] = { -- :  +colors
		-- en = "",
		--[+ КЛЮЧЕВОЙ 1-1 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 1-2 -  +]--
	-- ["loc_talent__desc"] = { -- : , : , s->seconds, +colors
		-- en = "",
		--[+ КЛЮЧЕВОЙ 1-2 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 1-3 -  +]--
	-- ["loc_talent__desc"] = { -- : 
		-- en = "",
		--[+ КЛЮЧЕВОЙ 1-3 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 1-4 -  +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ КЛЮЧЕВОЙ 1-4 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 1-5 -  +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ КЛЮЧЕВОЙ 1-5 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 2 - Adrenaline Frenzy +]--
	-- ["loc_talent_veteran_improved_tag_description"] = { -- : , +colors
		-- en = "Melee hits grant Stacks of "..CKWord("Adrenaline", "Adren_rgb")..", which are lost over time when not attacking.\n"
			-- .."\n"
			-- .." At Max "..CNumb("20", "n_20_rgb").." Stacks you lose all Stacks and gain "..CKWord("Adrenaline Frenzy", "AdrenFr_rgb").." for a "..CNumb("6", "n_6_rgb").." seconds which gives you per Stack:\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("1%", "pc_1_rgb").." Attack Speed and\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("1%", "pc_1_rgb").." Melee "..CKWord("Damage", "Damage_rgb")..".",
		--[+ КЛЮЧЕВОЙ 2 - Адреналиновое безумие +]--
		-- ru =  "Атаки ближнего боя дают вам заряды "..CKWord("Адреналина", "Adren_rgb_ru")..", которые расходуются со временем, если вы не атакуете врага.\n"
			-- .."\n"
			-- .."Набрав максимальные "..CNumb("20", "n_20_rgb").." зарядов, вы тратите все заряды и получаете "..CKWord("Адреналиновое безумие", "AdrenFr_rgb_ru").." на "..CNumb("6", "n_6_rgb").." секунд, которое даёт вам за заряд:\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("1%", "pc_1_rgb").." к скорости атаки и\n"
			-- ..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("1%", "pc_1_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." в ближнем бою.",
		-- ["zh-tw"] = "",
	-- },
	-- ["loc_talent_veteran_improved_tag"] = { -- : , +colors
		-- en = "Adrenaline Frenzy",
		--[+ КЛЮЧЕВОЙ 2 - Адреналиновое безумие +]--
		-- ru =  "Адреналиновое безумие",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 2-1 -  +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ КЛЮЧЕВОЙ 2-1 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 2-2 -  +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ КЛЮЧЕВОЙ 2-2 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 2-3 -  +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ КЛЮЧЕВОЙ 2-3 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 2-4 -  +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ КЛЮЧЕВОЙ 2-4 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 3 - Chemical Dependency +]--
	-- ["loc_talent_veteran_weapon_switch_new_description"] = { -- : , +colors
		-- en = "Using a Stimm grants a Stack of "..CKWord("Dependency", "Depend_rgb").." for "..CNumb("20", "n_20_rgb").." seconds. Each Stack grants:\n"
			-- ..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("1%", "pc_1_rgb").." "..CKWord("Ability Cooldown", "Ability_cd_rgb")..", up to "..CNumb("-", "n_minus_rgb")..CNumb("10%", "pc_10_rgb")..".",
		--[+ КЛЮЧЕВОЙ 3 - Зависимость от химии - Химическая зависимость +]--
		-- ru = "Использование стима даёт заряд "..CKWord("Зависимости", "Depend_rgb_ru").." на "..CNumb("20", "n_20_rgb").." секунд. Каждый заряд даёт:\n"
			-- ..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("1%", "pc_1_rgb").." "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru")..", вплоть до "..CNumb("-", "n_minus_rgb")..CNumb("10%", "pc_10_rgb")..".",
		-- ["zh-tw"] = "",
	-- },
	-- ["loc_talent_veteran_weapon_switch"] = { -- : , +colors
		-- en = "Chemical Dependency",
		--[+ КЛЮЧЕВОЙ 3 - Зависимость от химии - Химическая зависимость +]--
		-- ru = "Зависимость от химии",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 3-1 -  +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ КЛЮЧЕВОЙ 3-1 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 3-2 -  +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ КЛЮЧЕВОЙ 3-2 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 3-3 -  +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ КЛЮЧЕВОЙ 3-3 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ KEYSTONE 3-4 -  +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ КЛЮЧЕВОЙ 3-4 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 -  +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ Пассивный 1 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },
	--[+ Passive 2 -  +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ Пассивный 2 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },

--[+ Passive  - In Your Face +]--
	-- ["loc_talent_veteran_increased_damage_based_on_range_new_desc"] = { -- : , +colors
		-- en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10%", "pc_10_rgb").." Ranged "..CKWord("Damage", "Damage_rgb").." at a distance within "..CNumb("12.5", "n_12_5_rgb").." meters, which is further increased for a short while after Reloading.",
		--[+ Пассивный 2 - Прямо в харю - Прямо в лицо +]--
		-- ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10%", "pc_10_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." в дальнем бою на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров. Эффект усиливается на некоторое время после перезарядки.",
		-- ["zh-tw"] = "",
	-- },
	-- ["loc_talent_veteran_increased_damage_based_on_range"] = { -- : , +colors
		-- en = "In Your Face",
		--[+ Пассивный 2 - Прямо в харю - Прямо в лицо +]--
		-- ru = "Прямо в харю",
		-- ["zh-tw"] = "",
	-- },

--[+ Passive  - Like the Wind +]--
	-- ["loc_talent_veteran_movement_bonus_on_toughness_broken_desc"] = { -- : , +colors
		-- en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("33%", "pc_33_rgb").." Sprint Dodge Angle.\n"
			-- ..Dot_green.." You can Sprint Dodge even without "..CKWord("Stamina", "Stamina_rgb")..".",
		-- [+ Пассивный 2 - Словно ветер +]--
		-- ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("33%", "pc_33_rgb").." к углу уклонения.\n"
			-- ..Dot_green.." Вы можете уклоняться даже если ваш уровень "..CKWord("выносливости", "vynoslivosti_rgb_ru").." на нуле.",
		-- ["zh-tw"] = "",
	-- },
	-- ["loc_talent_veteran_movement_bonus_on_toughness_broken"] = { -- : , +colors
		-- en = "Like the Wind",
		--[+ Пассивный 2 - Словно ветер +]--
		-- ru = "Словно ветер",
		-- ["zh-tw"] = "",
	-- },

--[+ Passive  - Nimble +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = Dot_green.." Dodges move farther and last longer.",
		--[+ Пассивный 2 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },

--[+ Passive  - Hyper-Violence +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = Dot_green.." +X% Melee "..CKWord("Damage", "Damage_rgb").." based on amount of overkill "..CKWord("Damage", "Damage_rgb")..", upon Melee kill.",
		--[+ Пассивный 2 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },

--[+ Passive  - Blessed Stimms +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = Dot_green.." While Stimmed, killing blows clear some "..CKWord("Corruption", "Corruption_rgb")..".",
		--[+ Пассивный 2 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },

--[+ Passive  - Targeted Toxin +]--
	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = Dot_green.." -X% "..CKWord("Damage", "Damage_rgb").." Dealt by Enemies infected with your Chem Toxin.\n"
			-- ..Dot_green.." Increased effect on Monsters.",
		--[+ Пассивный 2 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },

	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ Пассивный 2 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },

	-- ["loc_talent__desc"] = { -- : , +colors
		-- en = "",
		--[+ Пассивный 2 -  +]--
		-- ru = "",
		-- ["zh-tw"] = "",
	-- },

	-- Пример для BLITZ 0 - Brain Burst
	-- ["loc_ability_psyker_smite_description_new"] = { 
		-- en = "Charge up psychic power and release it to deal high "..CKWord("Damage", "Damage_rgb").." to a single enemy.\n"
			-- .."\n"
			-- ..Dot_green.." Effective against Flak and Carapace.\n"
			-- ..Dot_green.." High "..CKWord("Damage", "Damage_rgb").." to Maniac and Unyielding.\n"
			-- ..Dot_green.." Always scores a "..CKWord("Weakspot Hit", "Weakspothit_rgb").."..\n"
			-- ..CPhrs("Cant_Crit
			-- .."\n"
			-- ..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			-- .."Casting with "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb").." or higher will trigger a self-explosion!",
		
		-- ru = "Зарядите психическую мощь и высвободите её, чтобы нанести высокий "..CKWord("урон", "uron_rgb_ru").." одному врагу.\n"
			-- .."\n"
			-- ..Dot_green.." Эффективно против врагов в противоосколочной и панцирной броне.\n"
			-- ..Dot_green.." Высокий "..CKWord("урон", "uron_rgb_ru").." по маньякам и несгибаемым врагам.\n"
			-- ..Dot_green.." Всегда бьёт в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".\n"
			-- ..CPhrs("Cant_Crit_ru
			-- .."\n"
			-- ..Dot_red.." {#color(255, 35, 5)}Вы можете взорваться!{#reset()}\n"
			-- .."Не используйте если уровень "..CKWord("опасности", "opasnosti_rgb_ru").." "..CNumb("97%", "pc_97_rgb").." или выше!",
	-- },
}

-- Автоматическое создание шаблонов
local localization_templates = {}
for loc_key, locales in pairs(talent_localizations) do
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
