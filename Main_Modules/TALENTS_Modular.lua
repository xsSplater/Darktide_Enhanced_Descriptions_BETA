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

-- Функция для безопасной загрузки модуля
local function load_talent_module(module_name)
	local file_path = "Enhanced_descriptions/Main_Modules/TALENTS/" .. module_name
	local success, result = pcall(function()
		return mod:io_dofile(file_path)
	end)
	
	if success and result then
		if type(result) == "table" then
			local count = #result
			-- mod:info("// ✅ Loaded module: %s (%d talents)", module_name, count)
			return result
		else
			mod:warning("{#color(255, 35, 5)}{#reset()} Module %s loaded but is not a table", module_name)
			return {}
		end
	else
		mod:warning("{#color(255, 35, 5)}{#reset()} Failed to load module %s: %s", module_name, tostring(result))
		return {}
	end
end

-- Список модулей классов
local class_modules = {
	"TALENTS_Psyker",
	"TALENTS_Veteran",
	"TALENTS_Zealot",
	"TALENTS_Ogryn",
	"TALENTS_Arbites",
	"TALENTS_Scum",
}

-- Основные данные локализации (общие для всех классов)
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
		--[+ Stimm Component +]--	24.12.2025
		-- ["loc_stimm_lab_recipe"] = {
			-- en = "Stimm Component",
			-- ru = "Компонент стима",
			-- ["zh-tw"] = "",
			-- ["zh-cn"] = "",
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
		--[+ Stamina Regeneration Boost +]--	27.03.2026
		-- Veteran 1
		["loc_talent_stamina_regen_delay_desc"] = { -- duration: 0.25
			en = Dot_green.." "..CNumb("-", "n_minus_rgb").."{duration:%s} seconds "..CKWord("Stamina", "Stamina_rgb").." Regeneration Delay.",
			ru = Dot_green.." "..CNumb("-", "n_minus_rgb").."{duration:%s} секунды задержка восстановления "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".", -- руоф Усиление восстановления выносливости
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

}


-- СОБИРАЕМ ВСЕ ШАБЛОНЫ
local all_templates = {}

-- 1. Добавляем общие локализации из текущего файла
for loc_key, locales in pairs(talent_localizations) do
	for locale, text in pairs(locales) do
		table.insert(all_templates, create_template(
			"common_" .. loc_key,
			{loc_key},
			{locale},
			loc_text(text)
		))
	end
end

mod:info("+++---------------------------------------------+++")
mod:info("// ✅ Shared Talents: %d templates created", #all_templates)

-- 2. Загружаем модули классов
local loaded_modules_count = 0
local total_talents_count = 0

for _, module_name in ipairs(class_modules) do
	local module_templates = load_talent_module(module_name)
	if module_templates and #module_templates > 0 then
		for _, template in ipairs(module_templates) do
			table.insert(all_templates, template)
		end
		loaded_modules_count = loaded_modules_count + 1
		total_talents_count = total_talents_count + #module_templates
		mod:info("// ✅ Added %d talents from %s module", #module_templates, module_name)
	end
end

mod:info("+++---------------------------------------------+++")
mod:info("// ⚙ Loaded: %d talents in %d modules", #all_templates, loaded_modules_count)
mod:info("+++---------------------------------------------+++")

return all_templates
