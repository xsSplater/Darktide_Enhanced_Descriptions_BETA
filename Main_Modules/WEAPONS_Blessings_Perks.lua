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
local weapon_localizations = {
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

--[+ ++WEAPON - PERKS - 武器专长++ +]--
	--[+ MELEE - 近戰武器 - 近战武器 +]--
		--[+ +DAMAGE VS FLAK +]--	08.12.2025
		["loc_trait_melee_common_wield_increased_armored_damage_desc"] = { -- damage: +25%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Flak Armoured Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." по противоосколочной броне",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Ennemies en armure légère",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 防彈護甲的敵人", -- 防彈護甲的敵人
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（防弹装甲敌人）", -- 防弹装甲敌人
		},
		--[+ +DAMAGE VS MANIACS +]--	08.12.2025
		["loc_trait_melee_common_wield_increased_berserker_damage_desc"] = { -- damage: +25%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Maniacs",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." маньякам",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Maniaques",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 狂熱者", -- 狂熱者
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（狂人）", -- 狂人
		},
		--[+ +DAMAGE VS INFESTED +]--	08.12.2025
		["loc_trait_melee_common_wield_increased_disgustingly_resilient_damage_desc"] = { -- damage: +25%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Infested Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." заражённым",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Ennemies infestés",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 被感染的敵人", -- 被感染的敵人
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（感染敌人）", -- 感染敌人
		},
		--[+ +DAMAGE VS UNYIELDING +]--	08.12.2025
		["loc_trait_melee_common_wield_increased_resistant_damage_desc"] = { -- damage: +25%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Unyielding Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." несгибаемым",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Ennemies implacables",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 不屈的敵人", -- 不屈的敵人
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（不屈敌人）", -- 不屈敌人
		},
		--[+ +DAMAGE VS CARAPACE +]--	08.12.2025
		["loc_trait_melee_common_wield_increased_super_armor_damage_desc"] = { -- damage: +25%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Carapace Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." по панцирной броне",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Ennemies en armure carapace",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 甲殼護甲的敵人", -- 甲殼護甲的敵人
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（硬壳装甲敌人）", -- 硬壳装甲敌人
		},
		--[+ +DAMAGE VS UNARMOURED +]--	08.12.2025
		["loc_trait_melee_common_wield_increased_unarmored_damage_desc"] = { -- damage: +25%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Unarmoured Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." врагам без брони",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Ennemies sans armure",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 無護甲敵人", -- 無護甲敵人
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（无甲敌人）", -- 无甲敌人
		},
		--[+ +CRIT CHANCE +]--	08.12.2025
		["loc_trait_melee_common_wield_increase_critical_hit_chance_desc"] = { -- crit_chance: +5%
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." Melee "..CKWord("Critical Chance", "Crit_chance_rgb"),
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru"),
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." en Mélée",
			["zh-tw"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("近戰暴擊機率", "Crit_m_chance_rgb_tw"), -- 暴擊機率
			["zh-cn"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." 近战"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn"), -- 暴击几率
		},
		--[+ +CRIT DAMAGE +]--	08.12.2025
		["loc_trait_melee_common_wield_wield_increase_critical_strike_damage_desc"] = { -- crit_damage: +10%
			en = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." Melee "..CKWord("критическому урону", "Crt_hit_col_rgb"),
			ru = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." к "..CKWord("урону критического удара", "krit_udara_uron_rgb_ru"),
			fr = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Dégâts de coup critique", "Crit_hit_color_rgb_fr").." de Mélée",
			["zh-tw"] = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("近戰暴擊傷害", "Crit_hit_m_color_rgb_tw"), -- 暴擊傷害
			["zh-cn"] = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." 近战"..CKWord("暴击伤害", "Crit_hit_color_rgb_zh_cn"), -- 暴击伤害
		},
		--[+ +DAMAGE VS GROANERS AND POXWALKERS +]--	08.12.2025
		["loc_trait_melee_common_wield_increase_horde_enemy_damage_desc"] = { -- damage: +10%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." Melee "..CKWord("Damage", "Damage_rgb").." vs Groaners and Poxwalkers",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." ворчунам и чумным ходокам в ближнем бою",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Grogneurs et Scrofuleux",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 呻吟者和瘟疫行者", -- 呻吟者、瘟疫行者
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." 近战"..CKWord("伤害", "Damage_rgb_zh_cn").."（呻吟者、瘟疫行者）", -- 呻吟者、瘟疫行者
		},
		--[+ +DAMAGE VS ELITES +]--	08.12.2025
		["loc_trait_melee_common_wield_increase_elite_enemy_damage_desc"] = { -- damage: +10%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." Melee "..CKWord("Damage", "Damage_rgb").." vs Elites",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." элитным врагам в ближнем бою",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Élites",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 精英", -- 精英
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." 近战"..CKWord("伤害", "Damage_rgb_zh_cn").."（精英）", -- 精英
		},
		--[+ +DAMAGE VS SPECIALISTS +]--	08.12.2025
		["loc_trait_melee_common_wield_increase_special_enemy_damage_desc"] = { -- damage: +10%
			en = CNumb("{damage:%s}", "dmg_var_rgb").." Melee "..CKWord("Damage", "Damage_rgb").." vs Specialists",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." специалистам в ближнем бою",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Mélée vs Spécialistes",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 專家", -- 專家
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." 近战"..CKWord("伤害", "Damage_rgb_zh_cn").."（专家）", -- 专家
		},
		--[+ +STAMINA +]--	08.12.2025
		["loc_trait_melee_common_wield_increase_stamina_desc"] = { -- stamina: +2
			en = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Stamina", "Stamina_rgb"),
			ru = CNumb("{stamina:%s}", "stam_var_rgb").." ячейки "..CKWord("выносливости", "vynoslivosti_rgb_ru"),
			fr = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Endurance", "Stamina_rgb_fr"),
			["zh-tw"] = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("耐力", "Stamina_rgb_tw"), -- 耐力
			["zh-cn"] = CNumb("{stamina:%s}", "stam_var_rgb").." 最大"..CKWord("体力", "Stamina_rgb_zh_cn"), -- 耐力
		},
		--[+ +WEAKSPOT DAMAGE +]--	08.12.2025
		["loc_trait_melee_common_wield_increase_weakspot_damage_desc"] = { -- 
			en = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." Melee "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb"),
			ru = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." в ближнем бою",
			fr = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." en Mélée",
			["zh-tw"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("近戰弱點傷害", "Weakspot_m_dmg_rgb_tw"), -- 弱點傷害 
			["zh-cn"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." 近战"..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn"), -- 弱点伤害
		},
		--[+ +BLOCK EFFICIENCY +]--	08.12.2025
		["loc_trait_melee_common_wield_reduce_block_cost_desc"] = { -- 
			en = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." Block Efficiency",
			ru = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." к эффективности блока",
			fr = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." d'éfficacité de blocage",
			["zh-tw"] = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." 格擋效率", -- 格檔效率
			["zh-cn"] = CNumb("{reduced_block_cost:%s}", "rbc_rgb").." 格挡效益", -- 格挡效益
		},
		--[+ -COST FOR SPRINTING +]--	08.12.2025
		["loc_gadget_sprint_cost_reduction_desc"] = { -- 
			en = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." "..CKWord("Stamina", "Stamina_rgb").." Cost Reduction for Sprinting",
			ru = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." к снижению затрат "..CKWord("выносливости", "vynoslivosti_rgb_ru").." на бег",
			fr = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." de réduction du coût d'"..CKWord("Endurance", "Stamina_rgb_fr").." de la course",
			["zh-tw"] = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." "..CKWord("衝刺效率", "Stamina_se_rgb_tw"), -- 衝刺體力消耗
			["zh-cn"] = CNumb("{sprinting_cost_multiplier:%s}", "bcm_rgb").." 疾跑"..CKWord("体力", "Stamina_rgb_zh_cn").."效益", -- 疾跑效益
		},

	--[+ RANGED - 遠程武器 - 远程武器 +]--
		--[+ +DAMAGE VS FLAK +]--	08.12.2025
		["loc_trait_ranged_common_wield_armored_damage_desc"] = { -- 
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Flak Armoured Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." врагам в противоосколочной броне",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Ennemies en armure légère",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 防彈護甲的敵人", -- 防彈護甲的敵人
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").."  "..CKWord("伤害", "Damage_rgb_zh_cn").."（防弹装甲敌人）", -- 防弹装甲敌人
		},
		--[+ +DAMAGE VS MANIACS +]--	08.12.2025
		["loc_trait_ranged_common_wield_berserker_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Maniacs",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." маньякам",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Maniaques",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 狂熱者", -- 狂熱者
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（狂人）", -- 狂人
		},
		--[+ +DAMAGE VS INFESTED +]--	08.12.2025
		["loc_trait_ranged_common_wield_disgustinglyresilient_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Infested Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." заражённым врагам",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Ennemies infestés",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 被感染的敵人", -- 被感染的敵人
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（感染敌人）", -- 感染敌人
		},
		--[+ +DAMAGE VS UNYIELDING +]--	08.12.2025
		["loc_trait_ranged_common_wield_resistant_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Unyielding Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." несгибаемым врагам",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Ennemies implacables",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 不屈的敵人", -- 不屈的敵人
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（不屈敌人）", -- 不屈敌人
		},
		--[+ +DAMAGE VS CARAPACE +]--	08.12.2025
		["loc_trait_ranged_common_wield_superarmor_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Carapace Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." врагам в панцирной броне",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Ennemies en armure carapace",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 甲殼護甲的敵人", -- 甲殼護甲的敵人
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（硬壳装甲敌人）", -- 硬壳装甲敌人
		},
		--[+ +DAMAGE VS UNARMOURED +]--	08.12.2025
		["loc_trait_ranged_common_wield_unarmored_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Unarmoured Enemies",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." врагам без брони",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Ennemies sans armure",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." vs 無護甲敵人", -- 無護甲敵人
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."（无甲敌人）", -- 无甲敌人
		},
		--[+ +CRIT CHANCE +]--	08.12.2025
		["loc_trait_ranged_common_wield_increase_crit_chance_desc"] = {
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." Ranged "..CKWord("Critical Strike Chance", "Crt_chnc_r_rgb"),
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru"),
			fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Taux de coup critique", "Crit_chance_r_rgb_fr").." à Distance",
			["zh-tw"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("遠程暴擊機率", "Crit_r_chance_rgb_tw"), -- 暴擊機率
			["zh-cn"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." 远程"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn"), -- 暴击几率
		},
		--[+ +CRIT DAMAGE +]--	08.12.2025
		["loc_trait_ranged_common_wield_wield_increase_critical_strike_damage_desc"] = {
			en = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." Ranged "..CKWord("критическому урону", "Crt_hit_col_rgb"),
			ru = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." к "..CKWord("урону критического выстрела", "krit_vystr_uron_rgb_ru"),
			fr = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("Dégâts de coup critique", "Crit_hit_color_rgb_fr").." de Distance",
			["zh-tw"] = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("遠程暴擊傷害", "Crit_hit_r_color_rgb_tw"), -- 暴擊傷害
			["zh-cn"] = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." 远程"..CKWord("暴击伤害", "Crit_hit_color_rgb_zh_cn"), -- 暴击伤害
		},
		--[+ +DAMAGE VS ELITES +]--	08.12.2025
		["loc_trait_ranged_common_wield_increase_elite_enemy_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." Ranged "..CKWord("Damage", "Damage_rgb").." vs Elites",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." элите в дальнем бою",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Élites",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("遠程傷害", "Damage_ranged_rgb_tw").." vs 精英", -- 精英
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." 远程"..CKWord("伤害", "Damage_rgb_zh_cn").."（精英）", -- 精英
		},
		--[+ +DAMAGE VS GROANERS AND POXWALKERS +]--	08.12.2025
		["loc_trait_ranged_common_wield_increase_horde_enemy_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." Ranged "..CKWord("Damage", "Damage_rgb").." vs Groaners and Poxwalkers",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." ворчунам и чумным ходокам в дальнем бою",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Grogneurs et Scrofuleux",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("遠程傷害", "Damage_ranged_rgb_tw").." vs 呻吟者和瘟疫行者", -- 呻吟者、瘟疫行者
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." 远程"..CKWord("伤害", "Damage_rgb_zh_cn").."（呻吟者、瘟疫行者）", --呻吟者、瘟疫行者
		},
		--[+ +DAMAGE VS SPECIALISTS +]--	08.12.2025
		["loc_trait_ranged_common_wield_increase_special_enemy_damage_desc"] = {
			en = CNumb("{damage:%s}", "dmg_var_rgb").." Ranged "..CKWord("Damage", "Damage_rgb").." vs Specialists",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." специалистам в дальнем бою",
			fr = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Dégâts", "Damage_rgb_fr").." de Distance vs Spécialistes",
			["zh-tw"] = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("遠程傷害", "Damage_ranged_rgb_tw").." vs 專家", -- 專家
			["zh-cn"] = CNumb("{damage:%s}", "dmg_var_rgb").." 远程"..CKWord("伤害", "Damage_rgb_zh_cn").."（专家）", -- 专家
		},
		--[+ +STAMINA +]--	08.12.2025
		["loc_trait_ranged_common_wield_increase_stamina_desc"] = {
			en = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Stamina", "Stamina_rgb").." when Weapon is Active",
			ru = CNumb("{stamina:%s}", "stam_var_rgb").." ячейки "..CKWord("выносливости", "vynoslivosti_rgb_ru").." с этим оружием в руках",
			fr = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Endurance", "Stamina_rgb_fr"),
			["zh-tw"] = CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("耐力", "Stamina_rgb_tw"), -- 耐力
			["zh-cn"] = CNumb("{stamina:%s}", "stam_var_rgb").." 最大"..CKWord("体力", "Stamina_rgb_zh_cn").."（使用武器时）", -- 耐力
		},
		--[+ +WEAKSPOT DAMAGE +]--	08.12.2025
		["loc_trait_ranged_common_wield_increase_weakspot_damage_desc"] = {
			en = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." Ranged "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb"),
			ru = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." в дальнем бою",
			fr = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." à Distance",
			["zh-tw"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("遠程弱點傷害", "Weakspot_r_dmg_rgb_tw"), -- 弱點傷害
			["zh-cn"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." 远程"..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn"), -- 弱点伤害
		},
		--[+ +RELOAD SPEED +]--	08.12.2025
		["loc_trait_ranged_common_wield_increase_reload_speed_desc"] = {
			en = CNumb("{reload_speed:%s}", "reload_var_rgb").." Reload Speed",
			ru = CNumb("{reload_speed:%s}", "reload_var_rgb").." к скорости перезарядки",
			fr = CNumb("{reload_speed:%s}", "reload_var_rgb").." Vitesse de rechargement de l'arme",
			["zh-tw"] = CNumb("{reload_speed:%s}", "reload_var_rgb").." 裝填速度", -- 裝填速度
			["zh-cn"] = CNumb("{reload_speed:%s}", "reload_var_rgb").." 装弹速度", -- 装弹速度
		},


--[+ ++WEAPON BLESSINGS - БЛАГОСЛОВЕНИЯ ОРУЖИЯ - 武器祝福++ +]--
	--[+ MELEE - БЛИЖНИЙ БОЙ - 近戰 +]--
		--[+ OPPORTUNIST +]--	08.12.2025
		--Rending vs Staggered (per tier)
		-- Battle Maul and Shield, Chainaxes, Crowbar, Crusher, Eviscerators, Latrine Shovels, Power Maul, Shock Mauls, Shock Mauls and Shield -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_armor_penetration_against_staggered_desc"] = { -- rending: +25%, +colors, +note
			en = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Rending", "Rending_rgb").." vs "..CKWord("Staggered", "Staggered_rgb").." Enemies.\n"
				..CNote("Rend_note"),
			ru = CNumb("{rending:%s}", "rending_var_rgb").." к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони "..CKWord("ошеломлённых", "oshelomlennyh_rgb_ru").." врагов.\n"
				..CNote("Rend_note"), -- Оппортунист -- руоф Приспособленец
			-- fr = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Déchirure", "Rending_rgb_fr").." vs les Enemies qui "..CKWord("vacille", "Staggered_rgb_fr").." "..CNote("Rend_note"),
			-- ["zh-tw"] = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_tw").." vs "..CKWord("硬直中", "Staggered_rgb_tw").." 的敵人", -- 機會主義者-- 作戰大槌and板盾, 突擊鏈斧, 輾壓者, 重型開膛劍, 廁所鏟, 動力錘, 電擊錘 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = "对抗"..CKWord("踉跄", "Staggered_rgb_zh_cn").."敌人时 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_zh_cn").."。"..CNote("Rend_note"), --机会主义者
		},
		--[+ BLOODLETTER +]--	08.12.2025
		-- Bleed Stacks (per tier)
		-- Chainaxes -- 10 | 12 | 14 | 16
		-- Chainswords -- 11 | 12 | 13 | 14
		-- Eviscerators -- 3 | 4 | 5 | 6
		["loc_trait_bespoke_bleed_on_activated_hit_desc"] = { -- stacks: +14, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." "..CKWord("Bleed", "Bleed_rgb").." Stacks from Special Attacks. "
				.."Lasts "..CNumb("1.5", "n_1_5_rgb").." seconds. Ticks every "..CNumb("0.5", "n_05_rgb").." seconds.\n"
				..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." накладывается от специальных атак. "
				.."Длится "..CNumb("1.5", "n_1_5_rgb").." секунды. "..CPhrs("Refr_dur_stappl").."\n"
				..CPhrs("Cant_appl_thr_shlds"), -- Кровопускатель -- руоф Кровопускание
			-- fr = CNumb("{stacks:%s}", "stacks_var_rgb").." Cumuls de "..CKWord("Saignement", "Bleed_rgb_fr").." lors des attaques spéciales. Jusqu'à "..CNumb("16", "n_16_rgb").." Cumuls.",
			-- ["zh-tw"] = "特殊攻擊時，使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("流血", "Bleed_rgb_tw").."。\n上限 "..CNumb("16", "n_16_rgb").." 層。", -- 放血者
				-- 突擊鏈斧 -- 10 | 12 | 14 | 16
				-- 突擊鏈鋸劍 -- 11 | 12 | 13 | 14
				-- 重型開膛劍 -- 3 | 4 | 5 | 6
			-- ["zh-cn"] = "特殊攻击 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层"..CKWord("流血", "Bleed_rgb_zh_cn").."。\n最多叠加 "..CNumb("16", "n_16_rgb").." 层。", -- 放血者
		},
		--[+ BLOODTHIRSTY +]--	08.12.2025
		-- Melee Crit Chance (per tier)
		-- Chainaxes, Chainswords, Eviscerators, Force Swords -- 40% | 60% | 80% | 100%
		["loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill_desc"] = { -- crit_chance: +100%, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." on your next Melee Attack after Special Attack Kill.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." для вашей следующей атаки ближнего боя после убийства врага специальной атакой.", -- Кровожадный -- руоф Жажда крови
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." sur votre prochaine attaque de mêlée après une élimination avec une attaque spéciale.",
			-- ["zh-tw"] = "在特殊攻擊擊殺敵人後，\n下一次近戰攻擊 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."。", -- 嗜血
				-- 突擊鏈斧, 突擊鏈鋸劍, 重型開膛劍, 烈焰力場劍 -- 40% | 60% | 80% | 100%
			-- ["zh-cn"] = "特殊攻击击杀敌人时，\n使下次近战攻击 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。", -- 嗜血
		},
		--[+ HEADTAKER +]--	08.12.2025
		-- Melee Power per stack (per tier)
		-- Chainaxes, Combat Axes, Pickaxes, Tactical Axes, Thunder Hammers -- 3.5% 4% 4.5% 5% (up to +25%)
		-- Heavy Swords -- 6.5% 7% 7.5% 8% (up to +40%)
		["loc_trait_bespoke_increase_power_on_hit_desc"] = { -- power_level: +5%, time: 3.5, stacks: 5, s->seconds, +colors, +note
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Hit. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при ударе. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"), -- Головорез
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Puissance", "Strength_rgb_fr").." pour "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un coup. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			-- ["zh-tw"] = "每層 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，可持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n每次攻擊可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"), -- 奪顱者
				-- 突擊鏈斧, 戰鬥斧, 十字鎬, 戰術斧, 雷鎚 -- 3.5% 4% 4.5% 5% (up to +25%)
				-- 重劍 -- 6.5% 7% 7.5% 8% (up to +40%)
			-- ["zh-cn"] = "命中时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。\n攻击每命中一个目标叠加 "..CNumb("1", "n_1_rgb").." 层。"..CNote("Pwr_note"), -- 夺颅者
		},
		--[+ SLAUGHTERER +]--	08.12.2025
		-- Power per stack (per tier)
		-- Chainaxes, Cleavers, Crusher, Force Swords, Pickaxes, Power Swords, Thunder Hammers -- 5% | 6% | 7% | 8% (up to +40%)
		["loc_trait_bespoke_increase_power_on_kill_desc"] = { -- power_level: +5%, time: 4.5, stacks: 5, s->seconds, +colors, +added info, +note
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Kill. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Gen_mult_stacks_n_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при убийстве. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.\n"
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"), -- Мясник -- руоф Душегуб
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Puissance", "Strength_rgb_fr").." pour "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			--??? ["zh-tw"] = "擊殺敵人時 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，可持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n每次擊殺可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"), -- 殺戮者
			--??? ["zh-tw"] = "每層 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，可持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n每次擊殺可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"), -- 殺戮者
				-- 突擊鏈斧, 砍刀, 輾壓者, 烈焰力場劍, 十字鎬, 動力劍, 雷鎚 -- 5% | 6% | 7% | 8% (up to +40%)
			-- ["zh-cn"] = "击杀敌人时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"), -- 屠宰者
		},
		--[+ REV IT UP +]--	08.12.2025
		-- Movement Speed (per tier)
		-- Chainaxes, Chainswords, Eviscerators -- 17% | 18% | 19% | 20%
		["loc_trait_bespoke_movement_speed_on_activation_desc"] = { -- movement_speed: +20%, time: 2, s->seconds, +colors
			en = CNumb("{movement_speed:%s}", "movspd_var_rgb").." Movement Speed for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Weapon Special Activation.",
			ru = CNumb("{movement_speed:%s}", "movspd_var_rgb").." к скорости передвижения на "..CNumb("{time:%s}", "time_var_rgb").." секунды при активации специальной атаки.", -- Ускорься -- руоф Бодрость
			-- fr = CNumb("{movement_speed:%s}", "movspd_var_rgb").." de vitesse déplacement pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors de l'activation spéciale d'une arme.",
			-- ["zh-tw"] = "在武器特殊技能啟動時 "..CNumb("{movement_speed:%s}", "movspd_var_rgb").." 移動速度。\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 提速
				-- 突擊鏈斧, 突擊鏈鋸劍, 重型開膛劍 -- 17% | 18% | 19% | 20%
			-- ["zh-cn"] = "激活武器特殊动作时\n"..CNumb("{movement_speed:%s}", "movspd_var_rgb").." 移动速度，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 加速
		},
		--[+ THRUST +]--	08.12.2025
		-- Melee Power per stack (per tier)
		-- Bully Clubs, Chainaxes, Cleavers, Combat Axes, Crusher, Duelling Swords, Heavy Swords, Latrine Shovels, Pickaxes, Power Swords, Sapper Shovels, Shock Mauls, Thunder Hammers -- 5% | 10% | 15% | 20% (up to +60%)
		["loc_trait_bespoke_power_bonus_based_on_charge_time_desc"] = { -- power_level: +5%, stacks: 3, +colors, +note
			en = "Up to "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." based on the charge time of your heavy attacks. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CNote("Pwr_note"),
			ru = "До "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." в зависимости от времени заряжания ваших тяжёлых атак. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раза. "
				..CNote("Pwr_note"), -- Выпад
			-- fr = "Jusqu'à "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Puissance", "Strength_rgb_fr").." selon le temps de charge de vos attaques puissantes. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			-- ["zh-tw"] = "根據重攻擊的續力時間增加 "..CKWord("威力", "Strength_rgb_tw").." ，\n每層 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，最多可疊加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"), -- 推進
				-- 惡棍棒, 突擊鏈斧, 砍刀, 戰鬥斧, 輾壓者, 決鬥劍, 重劍, 廁所鏟, 十字鎬, 動力劍, 工兵鏟, 電擊錘, 雷鎚 -- 5% | 10% | 15% | 20% (up to +60%)
			-- ["zh-cn"] = "随重攻击蓄力时间增加叠加层数，\n每层 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"), -- 助推
		},
		--[+ THUNDEROUS +]--	08.12.2025
		-- Brittleness Stacks (per tier)
		-- Arbites Shock Maul, Bully Clubs, Chainaxes, Combat Axes, Crusher, Latrine Shovels, Pickaxes, Thunder Hammers -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_targets_receive_rending_debuff_desc"] = { -- stacks: 4, rending: 2.5%, time: 5, max_stacks: 16, rewrited, +colors, +added info, +note
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." are applied on hitting to enemy. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. Max "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks, up to "..CNumb("40%", "pc_40_rgb")..". "
				..CNote("Brtl_note"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда по "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони применяется к врагу при ударе. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд. До "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядов, вплоть до "..CNumb("40%", "pc_40_rgb")..". "
				..CNote("Brtl_note"), -- Громовой удар -- руоф Словно раскаты грома
			-- fr = CNumb("{stacks:%s}", "stacks_var_rgb").." Cumuls de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilité", "Brittleness_rgb_fr").." sont appliqué lors d'un coup sur un ennemie. Pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes. Jusqu'à "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls, pour un total de "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			-- ["zh-tw"] = "擊中敵人時，使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_tw").."。\n可持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，"..CNumb("{time:%s}", "time_var_rgb").." 秒後清除，上限 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層。"..CNote("Brtl_note"), -- 雷鳴
				-- 惡棍棒, 突擊鏈斧, 戰鬥斧, 輾壓者, 廁所鏟, 十字鎬, 雷鎚 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "命中时，对目标施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 层，最高 "..CNumb("40%", "pc_40_rgb").." 。"..CNote("Brtl_note"), -- 雷鸣
		},
		--[+ WRATH +]--	08.12.2025
		-- Max Hit Mass Increase per stack (per tier)
		-- Bone Saw -- 10% | 15% | 20% | 25% (up to +125%)
		-- Chainswords, Devil's Claw Swords, Eviscerators, Force Greatswords, Heavy Swords, Pickaxes, Power Falchions, Relic Blades -- 25% | 30% | 35% | 40% (up to +200%)
		-- Power Swords -- 35% | 40% | 45% | 50% (up to +250%)
		["loc_trait_bespoke_chained_hits_increases_cleave_desc"] = { -- cleave: +40%, stacks: 5, +colors, +added info
			en = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Cleave", "Cleave_rgb").." on Hit for "..CNumb("3.5", "n_3_5_rgb").." seconds. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..Dot_nc.." Generates "..CNumb("1", "n_1_rgb").." Stack per swing.\n"
				..CPhrs("Can_be_refr")..CPhrs("Carap_cant_cleave"),
			ru = CNumb("{cleave:%s}", "cleave_var_rgb").." к "..CKWord("рассечению", "rassecheniu_rgb_ru").." при ударе на "..CNumb("3.5", "n_3_5_rgb").." секунды. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..Dot_nc.." Даёт "..CNumb("1", "n_1_rgb").." заряд за удар. "..CPhrs("Can_be_refr")..CPhrs("Carap_cant_cleave"), -- Гнев
			-- fr = CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("Transpercement", "Cleave_rgb_fr").." lors d'un coup pendant "..CNumb("3.5", "n_3_5_rgb").." secondes. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "擊中敵人時 "..CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("順劈攻擊", "Cleave_rgb_tw").."，持續 "..CNumb("3.5", "n_3_5_rgb").." 秒。\n每次攻擊可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 憤怒
				-- 突擊鏈鋸劍, 『惡魔之爪』劍, 重型開膛劍, 重劍, 十字鎬, 烈焰力場巨劍, 上古神刃 -- 25% | 30% | 35% | 40% (up to +200%)
				-- 動力劍 -- 35% | 40% | 45% | 50% (up to +250%)
			-- ["zh-cn"] = "连锁攻击命中时 "..CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("劈裂值", "Cleave_rgb_zh_cn").."，\n持续 "..CNumb("3.5", "n_3_5_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 怒火
		},
	--[+ SHRED +]--	08.12.2025
		-- Crit Chance per stack (per tier)
		-- Bone Saw, Chainswords, Combat Axes, Devil's Claw Swords, Duelling Swords, Eviscerators, Force Greatswords, Force Swords, Tactical Axes -- 2.5% | 3% | 3.5% | 4% (up to +20%)
		["loc_trait_bespoke_chained_hits_increases_crit_chance_desc"] = { -- crit_chance: +4%, stacks: 5, +colors, +added info
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." Bonus "..CKWord("Critical Chance", "Crit_chance_rgb").." on Chained Hit for "..CNumb("3.5", "n_3_5_rgb").." seconds. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.\n"
				..Dot_nc.." Generates "..CNumb("1", "n_1_rgb").." Stack per swing. "..CPhrs("Can_be_refr").."\n"
				..Dot_red.." Doesn't benefit Ranged weapons.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("3.5", "n_3_5_rgb").." секунды при серии ударов. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr")..""..Dot_red.." Не влияет на оружие дальнего боя.", -- Кромсание -- руоф Расстрел
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." lors d'un coup en chaîne pendant "..CNumb("3.5", "n_3_5_rgb").." secondes. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "每次攻擊 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，持續 "..CNumb("3.5", "n_3_5_rgb").." 秒。\n每次攻擊可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。\n需連續命中不得揮空。", -- 粉碎
				-- 突擊鏈鋸劍, 戰鬥斧, 『惡魔之爪』劍, 決鬥劍, 重型開膛劍, 烈焰力場劍, 烈焰力場巨劍, 戰術斧 -- 2.5% | 3% | 3.5% | 4% (up to +20%)
			-- ["zh-cn"] = "连锁攻击命中时\n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." 近战"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("3.5", "n_3_5_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 撕碎
		},
		--[+ SAVAGE SWEEP +]--	08.12.2025
		-- Max Hit Mass Increase (per tier)
		-- Chainswords, Cleavers, Devil's Claw Swords, Eviscerators, Heavy Swords -- 140% | 160% | 180% | 200%
		["loc_trait_bespoke_increased_attack_cleave_on_multiple_hits_desc"] = { -- multiple_hit: 3, cleave: +200%, time: 2, +colors, +added info
			en = CNumb("{cleave:%s}", "cleave_var_rgb").." enemy "..CKWord("Cleave", "Cleave_rgb").." for your attacks for "..CNumb("{time:%s}", "time_var_rgb").." seconds after hitting at least "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." enemies. "
				..CPhrs("Can_be_refr")..CPhrs("Carap_cant_cleave"),
			ru = CNumb("{cleave:%s}", "cleave_var_rgb").." к "..CKWord("рассечению", "rassecheniu_rgb_ru").." врагов на "..CNumb("{time:%s}", "time_var_rgb").." секунды при попадании как минимум по "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." врагам. "
				..CPhrs("Can_be_refr")..CPhrs("Carap_cant_cleave"), -- Дикий взмах -- руоф Дикость
			-- fr = CNumb("{cleave:%s}", "cleave_var_rgb").." de "..CKWord("Transpercement", "Cleave_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes en touchant au moins "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." ennemies avec une attaque.",
			-- ["zh-tw"] = "當一次攻擊命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 敵人時，\n"..CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("順劈攻擊", "Cleave_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 野蠻橫掃
				-- 突擊鏈鋸劍, 砍刀, 『惡魔之爪』劍, 重型開膛劍, 重劍 -- 140% | 160% | 180% | 200%
			-- ["zh-cn"] = "命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 名敌人时 \n"..CNumb("{cleave:%s}", "cleave_var_rgb").." "..CKWord("劈裂值", "Cleave_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 野蛮扫荡
		},
		--[+ RAMPAGE +]--	08.12.2025
		-- Melee Power (per tier)
		-- Chainswords, Devil's Claw Swords, Duelling Swords, Eviscerators, Heavy Swords, Power Swords, Relic Blades -- 24% | 28% | 32% | 36%
		["loc_trait_bespoke_increased_melee_damage_on_multiple_hits_desc"] = { -- multiple_hit: 3, damage: 36%, time: 3, Damage -> Strength, +colors, +added info, +note
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Strength", "Strength_rgb").." to your Melee attacks for "..CNumb("{time:%s}", "time_var_rgb").." seconds when hitting at least "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." enemies. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." атак ближнего боя на "..CNumb("{time:%s}", "time_var_rgb").." секунды при попадании как минимум по "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." врагам. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"), -- Буйство
			-- fr = CNumb("{damage:%s}", "dmg_var_rgb").." de bonus à votre "..CKWord("Puissance", "Strength_rgb_fr").." pour vos attaques de mélées pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes en touchant au moins "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." ennemies avec une attaque."..CNote("Pwr_note"),
			-- ["zh-tw"] = "當一次攻擊命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 敵人時，\n"..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 暴走
				-- 突擊鏈鋸劍, 『惡魔之爪』劍, 決鬥劍, 重型開膛劍, 重劍, 動力劍, 上古神刃 -- 24% | 28% | 32% | 36%
			-- ["zh-cn"] = "命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 名敌人 \n"..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"), -- 狂暴
		},
		--[+ DEVASTATING STRIKE +]--	08.12.2025
		-- Max Hit Mass Increase (per tier)
		-- Chainswords, Cleavers, Devil's Claw Swords, Relic Blades -- 65% | 70% | 75% | 80%
		["loc_trait_bespoke_infinite_melee_cleave_on_crit_desc"] = { -- hit_mass: +80%, time: 5, +colors, +added info
			en = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("Cleave", "Cleave_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..CPhrs("Can_be_refr")..CPhrs("Carap_cant_cleave"),
			ru = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." к "..CKWord("рассечению", "rassecheniu_rgb_ru").." врагов на "..CNumb("{time:%s}", "time_var_rgb").." секунд при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..". "
				..CPhrs("Can_be_refr")..CPhrs("Carap_cant_cleave"), -- Разрушительный удар -- руоф Сокрушительный удар
			-- fr = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." de "..CKWord("Transpercement", "Cleave_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr")..".",
			-- ["zh-tw"] = CKWord("暴擊命中", "Crit_hit_rgb_tw").." 時，"..CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("順劈攻擊", "Cleave_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 毀滅打擊
				-- 突擊鏈鋸劍, 砍刀, 『惡魔之爪』劍, 上古神刃 -- 65% | 70% | 75% | 80%
			-- ["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时 "..CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("劈裂值", "Cleave_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 毁灭打击
		},
		--[+ DECIMATOR +]--	08.12.2025
		-- Melee Power per stack (per tier)
		-- Bone Saw, Combat Axes, Sapper Shovels, Tactical Axes -- 2% | 3% | 4% | 5% (up to +50%)
		["loc_trait_bespoke_chained_hits_increases_power_desc"] = { -- power_level: +5%, stacks: 10, Power -> Strength, +colors, +added info, +note
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." on chaining "..CNumb("2", "n_2_rgb")..CNumb("+", "n_plus_rgb").." attacks. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..Dot_nc.." Generates "..CNumb("1", "n_1_rgb").." Stack per swing. "..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." при непрерывной серии из более чем "..CNumb("2", "n_2_rgb").." атак. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.\n"
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"), -- Дециматор
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." en enchaînant continuellement plus de "..CNumb("2", "n_2_rgb").." attaques. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			-- ["zh-tw"] = "攻擊任意目標超過 "..CNumb("2", "n_2_rgb").." 次時 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n每次攻擊可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。\n需連續命中不得揮空。"..CNote("Pwr_note"), -- 屠戮者
			-- 戰鬥斧, 工兵鏟, 戰術斧 -- 2% | 3% | 4% | 5% (up to +50%)
			-- ["zh-cn"] = "连锁攻击命中 "..CNumb("2", "n_2_rgb").." 次时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"), -- 屠戮者
		},
		--[+ BRUTAL MOMENTUM +]--	08.12.2025
		-- Melee Weakspot Damage (per tier)
		-- Battle Maul and Shield, Combat Axes, Heavy Swords, Latrine Shovels, Power Maul, Power Swords, Tactical Axes -- 7.5% | 10% | 12.5% | 15%
		["loc_trait_bespoke_infinite_cleave_on_weakspot_kill_desc"] = { -- weakspot_damage: 15%, +colors, +added info
			en = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..". Also Melee Attacks ignore up to "..CNumb("3", "n_3_rgb").." non-ogryn enemies "..CKWord("Hit Mass", "Hit_mass_rgb").." upon "..CKWord("Weakspot", "Weakspot_rgb").." Kill.", -- ..CPhrs("Carap_cant_cleave)),
			ru = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..". Убийства в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." игнорируют "..CKWord("ударную массу", "udarn_massu_rgb_ru").." до "..CNumb("3", "n_3_rgb").." врагов не огринов.", -- Жестокий моментум / Смертельный удар
			-- fr = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr")..". Les élimination sur "..CKWord("Point faible", "Weakspot_rgb_fr").." ignore le "..CKWord("Coups en masse", "Hit_mass_rgb_fr").." de "..CNumb("3", "n_3_rgb").." ennemies.",
			-- ["zh-tw"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."。\n"..CKWord("弱點擊殺", "Weakspot_k_dmg_rgb_tw").." 無視 "..CNumb("3", "n_3_rgb").." 個敵人的 "..CKWord("順劈目標", "Hit_mass_rgb_tw").." 。"..CNote("Hit_Mass_note"), -- 野蠻攻勢
			-- 作戰大槌and板盾, 戰鬥斧, 重劍, 廁所鏟, 動力錘, 動力劍, 戰術斧 -- 7.5% | 10% | 12.5% | 15%
			-- ["zh-cn"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。\n"..CKWord("弱点击杀", "Weakspothits_k_rgb_zh_cn").."无视 "..CNumb("3", "n_3_rgb").." 名敌人的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"), -- 野蛮势头
		},
		--[+ DEATHBLOW +]--	08.12.2025
		-- Melee Weakspot Damage (per tier)
		-- Battle Maul and Shield, Combat Axes, Heavy Swords, Latrine Shovels, Power Maul, Power Swords, Tactical Axes -- 7.5% | 10% | 12.5% | 15%
		["loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc"] = { -- weakspot_damage: 15%, +colors, +added info
			en = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..". Also Melee Attacks ignore up to "..CNumb("3", "n_3_rgb").." non-ogryn enemies "..CKWord("Hit Mass", "Hit_mass_rgb").." upon "..CKWord("Weakspot", "Weakspot_rgb").." Kill.", -- ..CPhrs("Carap_cant_cleave)),
			ru = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..". Убийства в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." игнорируют "..CKWord("ударную массу", "udarn_massu_rgb_ru").." до "..CNumb("3", "n_3_rgb").." врагов не огринов.", -- Жестокий моментум / Смертельный удар
			-- fr = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr")..". Les élimination sur "..CKWord("Point faible", "Weakspot_rgb_fr").." ignore le "..CKWord("Coups en masse", "Hit_mass_rgb_fr").." de "..CNumb("3", "n_3_rgb").." ennemies.",
			-- ["zh-tw"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."。\n"..CKWord("弱點擊殺", "Weakspot_k_dmg_rgb_tw").." 無視 "..CNumb("3", "n_3_rgb").." 個敵人的 "..CKWord("順劈目標", "Hit_mass_rgb_tw").." 。"..CNote("Hit_Mass_note"), -- 野蠻攻勢
			-- 作戰大槌and板盾, 戰鬥斧, 重劍, 廁所鏟, 動力錘, 動力劍, 戰術斧 -- 7.5% | 10% | 12.5% | 15%
			-- ["zh-cn"] = CNumb("{weakspot_damage:%s}", "wkspdmg_var_rgb").." "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。\n"..CKWord("弱点击杀", "Weakspothits_k_rgb_zh_cn").."无视 "..CNumb("3", "n_3_rgb").." 名敌人的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"), -- 野蛮势头
		},
		--[+ LIMBSPLITTER +]--	08.12.2025
		-- Cooldown (per tier)
		-- Bone Saw, Combat Axes, Crowbar, Pickaxes, Sapper Shovels, Tactical Axes -- 5 | 4.5 | 4 | 3.5 seconds
		["loc_trait_bespoke_power_bonus_on_first_attack_desc"] = { -- power_level: +60%, cooldown: 3.5, +colors, +note
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." on your First Attack every "..CNumb("{cooldown:%s}", "cd_var_rgb").." seconds. "
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." для вашей первой атаки каждые "..CNumb("{cooldown:%s}", "cd_var_rgb").." секунды. "
				..CNote("Pwr_note"), -- Расчленитель -- руоф Расщепитель
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." sur votre première attaque toute les "..CNumb("{cooldown:%s}", "cd_var_rgb").." secondes."..CNote("Pwr_note"),
			-- ["zh-tw"] = "每 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒，第一次攻擊增加 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."。", -- 斷肢者
				-- 戰鬥斧, 十字鎬, 工兵鏟, 戰術斧 -- 5 | 4.5 | 4 | 3.5
			-- ["zh-cn"] = "每 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒，首次攻击 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。"..CNote("Pwr_note"), -- 断肢者
		},
		--[+ ALL OR NOTHING +]--	08.12.2025
		-- Melee Power per stack (per tier)
		-- Arbites Shock Maul, Combat Axes, Crowbar, Pickaxes, Sapper Shovels, Shock Maul and Shield, Tactical Axes -- 5% | 6% | 7% | 8% (up to +40%)
		["loc_trait_bespoke_power_bonus_scaled_on_stamina_desc"] = { -- power_level: +8%, rewrited, +colors, +note
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." per Stack. Gains "..CNumb("1", "n_1_rgb").." Stack per "..CNumb("20%", "pc_20_rgb").." of missing "..CKWord("Stamina", "Stamina_rgb")..". Stacks "..CNumb("5", "n_5_rgb").." times.\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." за заряд. Вы получаете "..CNumb("1", "n_1_rgb").." заряд за каждые "..CNumb("20%", "pc_20_rgb").." потерянной "..CKWord("выносливости", "vynoslivosti_rgb_ru")..". Суммируется "..CNumb("5", "n_5_rgb").." раз.\n"
				..CNote("Pwr_note"), -- Всё или ничего -- руоф Все или ничего
			-- fr = "Jusqu'à "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr")..", en fonction "..CKWord("Endurance", "Stamina_rgb_fr").." épuisée. Chaque "..CNumb("20%", "pc_20_rgb").." de la barre d'"..CKWord("Endurance", "Stamina_rgb_fr").." épuisée donne "..CNumb("1", "n_1_rgb").." cumule. Jusqu'à "..CNumb("5", "n_5_rgb").." cumuls. "..CNote("Pwr_note"),
			-- ["zh-tw"] = "每消耗最大 "..CKWord("耐力", "Stamina_rgb_tw").." 的 "..CNumb("20%", "pc_20_rgb").." 獲得一層。\n每一層 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").." ，上限 "..CNumb("5", "n_5_rgb").." 層。 "..CNote("Pwr_note"), -- 孤注一擲
				-- 戰鬥斧, 十字鎬 -- 5% | 6% | 7% | 8% (up to +40%)
				-- 工兵鏟, 戰術斧 -- 一般力量: 10% | 10% | 10% | 10% (up to +50%) (bugged)
			-- ["zh-cn"] = "随"..CKWord("体力", "Stamina_rgb_zh_cn").."消耗叠加层数，\n每消耗 "..CNumb("20%", "pc_20_rgb").."，"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("5", "n_5_rgb").." 层。 "..CNote("Pwr_note"), -- 孤注一掷
		},
		--[+ DECAPITATOR +]--	08.12.2025
		-- Melee Finesse Bonus per stack (per tier)
		-- Bone Saw, Combat Axes, Power Falchions -- 18% | 20% | 22% | 24% (up to +120%)
		["loc_trait_bespoke_stacking_rending_on_one_hit_kills_desc"] = { -- finesse: +24%, time: 5, stacks: 5, s->seconds, +colors, +note
			en = CNumb("{finesse:%s}", "fin_var_rgb").." "..CKWord("Finesse", "Finesse_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Enemy One-Shot. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr").."\n"
				..CNote("Fns_note"),
			ru = CNumb("{finesse:%s}", "fin_var_rgb").." к "..CKWord("ловкости", "lovkosti_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунд при убийстве врага одним ударом. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CNote("Fns_note"), -- ..CPhrs("Can_be_refr") -- Обезглавливатель -- руоф Палач
			-- fr = CNumb("{finesse:%s}", "fin_var_rgb").." de "..CKWord("Finesse", "Finesse_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lorsque l'ennemie est tué en un coup. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Fns_note"),
			-- ["zh-tw"] = "一擊斃命時 "..CNumb("{finesse:%s}", "fin_var_rgb").." "..CKWord("靈巧", "Finesse_rgb_tw").." ，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n每次擊殺可疊加一層，上限 "..CNumb("5", "n_5_rgb").." 層。"..CNote("Fns_note"), -- 斬首者
				-- 戰鬥斧 -- 18% | 20% | 22% | 24% (up to +120%)
			-- ["zh-cn"] = "一击毙敌时 "..CNumb("{finesse:%s}", "fin_var_rgb").." "..CKWord("灵巧伤害", "Finesse_dmg_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Fns_note"), -- 斩首者
		},
		--[+ AGILE +]--	08.12.2025
		-- Melee Weakspot Damage (per tier)
		-- Duelling Swords, Tactical Axes -- 2.5% | 5% | 7.5% | 10%
		["loc_trait_bespoke_dodge_count_reset_on_weakspot_hit_and_weakspot_damage_desc"] = { -- melee_weakspot_damage: +10%, +colors
			en = CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." Melee "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..". Refreshed Dodge Efficiency on "..CKWord("Weakspot Hit", "Weakspothit_rgb")..".",
			ru = CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." для атак ближнего боя. Эффективность уклонения обновляется при ударе в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".", -- Проворный -- руоф Ловкий
			-- fr = CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." de "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." de mélée. Actualise l'efficacité de l'esquive lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..".",
			-- ["zh-tw"] = "近戰武器 "..CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").." 。\n在 "..CKWord("弱點命中", "Weakspothit_rgb_tw").." 時，重置閃躲次數。", -- 敏捷
				-- 決鬥劍, 戰術斧 -- 2.5% | 5% | 7.5% | 10%
			-- ["zh-cn"] = CNumb("{melee_weakspot_damage}", "mel_weapsp_dmg_var_rgb").." "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。\n"..CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时，刷新有效闪避。", -- 敏捷
		},
		--[+ SLAUGHTER SPREE +]--	08.12.2025
		-- Crit Chance (per tier)
		-- Tactical Axes -- 40% | 60% | 80% | 100%
		["loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill_new_desc"] = { -- crit_chance: +100%, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." to the next Melee attack within "..CNumb("5", "n_5_rgb").." seconds on "..CKWord("Weak Spot", "Weak_spot_rgb").." "..CKWord("Critical Hit", "Crit_hit_rgb").." Kill.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." для следующей атаки ближнего боя на "..CNumb("5", "n_5_rgb").." секунд при убийствах "..CKWord("Critical Hits", "krit_udarami_rgb_ru").." в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".", -- Резня -- руоф Убойная сила
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pour la prochaine attaque de mélée dans les "..CNumb("5", "n_5_rgb").." secondes suivant une élimination sur "..CKWord("Point faible", "Weakspot_rgb_fr").." et "..CKWord("Critique", "Crit_rgb_fr")..".",
			-- ["zh-tw"] = "在 "..CKWord("弱點", "Weakspot_rgb_tw").." "..CKWord("暴擊擊殺", "Crit_k_rgb_tw").." 後的 "..CNumb("5", "n_5_rgb").." 秒內，\n下一次近戰攻擊必定 "..CKWord("暴擊", "Crit_rgb_tw").." 。", -- 殺戮狂潮
				-- 戰術斧 -- 40% | 60% | 80% | 100%
			-- ["zh-cn"] = CKWord("弱点", "Weakspot_rgb_zh_cn")..""..CKWord("暴击击杀", "Crit_hits_k_rgb_zh_cn").."时，下次近战攻击 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("5", "n_5_rgb").." 秒。", -- 屠杀狂欢
		},
		--[+ RELENTLESS STRIKES +]--	08.12.2025
		-- Melee Power per stack (per tier)
		-- Arbites Shock Maul, Bone Saw, Duelling Swords, Tactical Axes -- 4% | 6% | 8% | 10% (up to +50%)
		["loc_trait_bespoke_power_bonus_on_same_enemy_attacks_desc"] = { -- power_level: +10%, time: 2, stacks: 5, s->seconds, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds when hitting the Same enemy. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при повторном попадании по врагу. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"), -- Безжалостные удары -- руоф Безжалостность
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes en attaquant le même ennemie. Se Cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			-- ["zh-tw"] = "命中同一敵人 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，持續"..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多可疊加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 次。"..CNote("Pwr_note"), -- 持續打擊
				-- 決鬥劍, 戰術斧 -- 4% | 6% | 8% | 10% (up to +50%)
			-- ["zh-cn"] = "再次命中同一敌人时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"), -- 无情打击
		},
		--[+ FLESH TEARER +]--	08.12.2025
		-- Bleed Stacks (per tier)
		-- Combat Blades, Shivs -- 5 | 6 | 7 | 8
		["loc_trait_bespoke_bleed_on_crit_melee_desc"] = { -- stacks: +8, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." "..CKWord("Bleed", "Bleed_rgb").." Stacks on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Stacks. "..Dot_nc.." Lasts "..CNumb("1.5", "n_1_5_rgb").." seconds. "..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." добавляется при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..". "
				..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов. "..Dot_nc.." Длится "..CNumb("1.5", "n_1_5_rgb").." секунды. "..CPhrs("Refr_dur_stappl").."\n"
				..CPhrs("Cant_appl_thr_shlds"), -- Раздиратель плоти
			-- fr = CNumb("{stacks:%s}", "stacks_var_rgb").." Cumuls de "..CKWord("Saignement", "Bleed_rgb_fr").." en cas de "..CKWord("Coup critique", "Crit_hit_rgb_fr")..". Jusqu'à "..CNumb("16", "n_16_rgb").." Cumuls.",
			-- ["zh-tw"] = "在暴擊時，使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("流血", "Bleed_rgb_tw").." 。\n上限 "..CNumb("16", "n_16_rgb").." 層。", -- 血肉撕裂者
				-- 戰刃 -- 5 | 6 | 7 | 8
			-- ["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时 ".. CNumb("{stacks:%s}", "stacks_var_rgb").." 层"..CKWord("流血", "Bleed_rgb_zh_cn").."。\n最多叠加 "..CNumb("16", "n_16_rgb").." 层。", -- 撕裂者
		},
		--[+ LACERATE +]--	08.12.2025
		-- Combat Blades, Shivs -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_bleed_on_non_weakspot_hit_desc"] = { -- stacks: +4, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." "..CKWord("Bleed", "Bleed_rgb").." Stacks on non-"..CKWord("Weakspot Hits", "Weakspothits_rgb")..".\n"
				..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Stacks. "..Dot_nc.." Lasts "..CNumb("1.5", "n_1_5_rgb").." seconds.\n"
				..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда "..CKWord("кровотечения", "krovotechenia_rgb_ru").." добавляется при попаданиях не в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".\n"
				..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов. "..Dot_nc.." Длится "..CNumb("1.5", "n_1_5_rgb").." секунды.\n"
				..CPhrs("Refr_dur_stappl"), -- ..CPhrs("Cant_appl_thr_shlds_ru -- Терзание
			-- fr = CNumb("{stacks:%s}", "stacks_var_rgb").." Cumuls de "..CKWord("Saignement", "Bleed_rgb_fr").." sur les attaque hors "..CKWord("Points faibles", "Weakspothits_rgb_fr")..". Jusqu'à "..CNumb("16", "n_16_rgb").." Cumuls.",
			-- ["zh-tw"] = "非 "..CKWord("命中弱點", "Weakspothits_rgb_tw").." 時，使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("流血", "Bleed_rgb_tw").." 。\n上限 "..CNumb("16", "n_16_rgb").." 層。", -- 撕碎
				-- 戰刃 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "非"..CKWord("弱点命中", "Weakspothits_rgb_zh_cn").."时 ".. CNumb("{stacks:%s}", "stacks_var_rgb").." 层"..CKWord("流血", "Bleed_rgb_zh_cn").."。\n最多叠加 "..CNumb("16", "n_16_rgb").." 层。", -- 割裂
		},
		--[+ EXECUTOR +]--	08.12.2025
		-- Power per stack (per tier)
		-- Combat Blades, Force Swords, Shivs -- 4.5% | 5% | 5.5% | 6% (up to +30%)
		["loc_trait_bespoke_chained_weakspot_hits_increases_power_desc"] = { -- power_level: +6%, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." on Repeated "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..Dot_nc.." Stacks last "..CNumb("2.5", "n_2_5_rgb").." seconds.\n"
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." при повторном ударе в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..". Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.\n"
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"), -- ..Dot_nc.." Заряды длятся "..CNumb("2.5", "n_2_5_rgb").." секунды. " -- Каратель -- руоф Экзекутор
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." lors d'un coup sur "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." répété. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. "..CNote("Pwr_note"),
			-- ["zh-tw"] = "命中 "..CKWord("弱點命中", "Weakspothit_rgb_tw").." 時 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").."	秒。\n持續命中時每次疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"), -- 行刑者
				-- 戰刃, 烈焰力場劍 -- 5% | 5% | 5% | 5% (up to +25%) (bugged)
			-- ["zh-cn"] = "连续"..CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。 "..CNote("Pwr_note"), -- 处刑者
		},
		--[+ RIPOSTE +]--	08.12.2025
		-- Crit Chance (per tier)
		-- Combat Blades, Duelling Swords, Force Greatswords, Force Swords, Shivs -- 12.5% | 15% | 17.5% | 20%
		["loc_trait_bespoke_dodge_grants_crit_chance_desc"] = { -- crit_chance: +20%, time: 6, s->seconds, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on successful Dodge. "
				..CPhrs("Can_be_refr")..Dot_nc.." Procs on dodging Melee/Ranged (non Gunners/Reapers/Snipers) or disabler attacks.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунд при успешном уклонении.\n"
				..CPhrs("Can_be_refr"), -- ..Dot_nc.." Срабатывает от атак ближнего/дальнего боя (не Пулемётчик/Жнец/Снайпер) и выводящих из строя." -- Ответный удар
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une esquive réussie.",
			-- ["zh-tw"] = "成功閃避時 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 還擊
				-- 戰刃, 決鬥劍, 烈焰力場劍, 烈焰力場巨劍 -- 12.5% | 15% | 17.5% | 20%
			-- ["zh-cn"] = "成功闪避时 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 近战"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 还击
		},
		--[+ PRECOGNITION +]--	08.12.2025
		-- Finesse Bonus (per tier)
		-- Combat Blades, Duelling Swords, Force Greatswords, Force Swords -- 45% | 50% | 55% | 60%
		-- Shivs -- 30% | 35% | 40% | 45%
		["loc_trait_bespoke_dodge_grants_finesse_bonus_desc"] = { -- damage: +60%, time: 2, s->seconds, +colors, +note
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Finesse", "Finesse_rgb").." "..CKWord("Damage", "Damage_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on successful Dodge. "
				..CNote("Fns_note"),
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." от "..CKWord("ловкости", "lovkosti_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при успешном уклонении. "
				..CNote("Fns_note"), -- Предвидение -- руоф Познание
			-- fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." de "..CKWord("Finesse", "Finesse_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une esquive réussie."..CNote("Fns_note"),
			-- ["zh-tw"] = "成功閃躲時 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("靈巧傷害", "Finesse_dmg_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，"..CNote("Fns_note"), -- 未卜先知
				-- 戰刃, 決鬥劍, 烈焰力場劍, 烈焰力場巨劍 -- 45% | 50% | 55% | 60%
			-- ["zh-cn"] = "成功闪避时 "..CNumb("{damage:%s}", "dmg_var_rgb").." 近战"..CKWord("灵巧伤害", "Finesse_dmg_rgb_zh_cn").."".."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Fns_note"), -- 预知
		},
		--[+ HAYMAKER +]--	08.12.2025
		-- Instakill Chance per stack (per tier)
		-- Bully Clubs, Combat Blades, Shivs -- 1% | 2% | 3% | 4% (up to +20%)
		["loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance_desc"] = { -- proc_chance: +4%, stacks: 5, +colors
			en = CNumb("{proc_chance:%s}", "procch_var_rgb").." to Instakill human-sized enemies on Chained Heavy Hit. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. Instakill prevents other triggers. "
				..CPhrs("Can_be_refr_drop_1"),
			ru = CNumb("{proc_chance:%s}", "procch_var_rgb").." к шансу убить одним ударом врага человеческого размера при серии тяжёлых ударов. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. Таланты, работающие от убийств, не активируются при этом.", -- Жнец -- руоф Коса
			-- fr = CNumb("{proc_chance:%s}", "procch_var_rgb").." de chance de tuer instantanément les ennemies de taille humaines sur les attaques puissantes répétées. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. A noter que d'autres déclencheurs potentiels ne seront pas activés lors d'une élimination instantanée.",
			--??? ["zh-tw"] = "連續重擊時 \n"..CNumb("{proc_chance:%s}", "procch_var_rgb").." 對人類大小的敵人即死機會，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。\n注意\n - 潛在Buff觸發即死時不會啟動。\n - Boss類無效。", -- 強力一擊
			--??? ["zh-tw"] = "連續重擊時 \n"..CNumb("{proc_chance:%s}", "procch_var_rgb").."對人類大小的敵人即死機會。持續"..CNumb("{time:%s}", "time_var_rgb").." 秒，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。\n注意\n -其他Buff觸發即死時不會啟動。\n -Boss類無效。", -- 強力一擊
				-- 惡棍棒, 戰刃 -- 1% | 2% | 3% | 4% (up to +20%)
			-- ["zh-cn"] = "连锁重攻击命中时 \n"..CNumb("{proc_chance:%s}", "procch_var_rgb").." 直接击杀人形敌人的几率。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。\n攻击每命中一个目标叠加 "..CNumb("1", "n_1_rgb").." 层。\n注意，通过这种方式直接击杀敌人不会触发其他效果。", -- 干草机
		},
		--[+ SMACKDOWN +]--
		-- Crit Chance (per tier)
		-- Bully Clubs, Combat Blades -- 12.5% | 15% | 17.5% | 20%
		["loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy_desc"] = { -- crit_chance: +20%, time: 2, s->seconds, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on hitting a "..CKWord("Staggered", "Staggered_rgb").." enemy on Special Action Hit. "
				..CPhrs("Can_be_refr")..Dot_red.." Does not benefit Ranged weapons.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при атаке "..CKWord("ошеломлённых", "oshelomlennyh_rgb_ru").." врагов специальными атаками.\n"
				..CPhrs("Can_be_refr"), -- ..Dot_red.." Не влияет на оружие дальнего боя." -- Сокрушение -- руоф Смятение
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes pendant qu'un ennemie "..CKWord("vacille", "Staggered_rgb_fr").." grâce à un coup d'action spéciale.",
			-- ["zh-tw"] = "特殊攻擊擊中 "..CKWord("硬直中", "Staggered_rgb_tw").." 敵人時 \n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 擊倒
				-- 惡棍棒, 戰刃 -- 12.5% | 15% | 17.5% | 20%
			-- ["zh-cn"] = "特殊攻击命中"..CKWord("踉跄", "Staggered_rgb_zh_cn").."敌人时 \n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." 近战"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 攻击波
		},
		--[+ MERCY KILLER +]--	08.12.2025
		-- Melee Weakspot Damage (per tier)
		-- Combat Blades, Shivs -- 52.5% | 55% | 57.5% | 60%
		["loc_trait_bespoke_increased_weakspot_damage_on_bleeding_desc"] = { -- damage: +60%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." to Enemies with "..CKWord("Bleed", "Bleed_rgb").." Stacks.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." врагам с зарядами "..CKWord("кровотечения", "krovotechenia_rgb_ru")..".", -- Милосердный убийца -- руоф Милосердие
			-- fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." au ennemies avec des cumuls de "..CKWord("Saignement", "Bleed_rgb_fr")..".",
			-- ["zh-tw"] = "攻擊有 "..CKWord("流血", "Bleed_rgb_tw").." 的敵人，\n增加 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").." 。", -- 仁慈殺手
				-- 戰刃 -- 52.5% | 55% | 57.5% | 60%
			-- ["zh-cn"] = "对"..CKWord("流血", "Bleed_rgb_zh_cn").."敌人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。", -- 仁慈杀手
		},
		--[+ RUTHLESS BACKSTAB +]--
		-- Backstab Rending (per tier)
		-- Combat Blades, Shivs -- 70% | 80% | 90% | 100%
		["loc_trait_bespoke_rending_on_backstabs_desc"] = { -- rending: +100%, +colors
			en = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Rending", "Rending_rgb").." on Backstab Hit. "
				..Dot_nc.." Enables backstabbing. "..CNote("Rend_note"),
			ru = CNumb("{rending:%s}", "rending_var_rgb").." к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони при ударе в спину. "
				..Dot_nc.." Активируется удар в спину.\n"
				..CNote("Rend_note"), -- Беспощадный удар в спину
			-- fr = CNumb("{rending:%s}", "rending_var_rgb").." de "..CKWord("Déchirure", "Rending_rgb_fr").." lors d'un coup dans le dos."..CNote("Rend_note"),
			-- ["zh-tw"] = "背刺時，增加 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_tw").." 。", -- 無情背刺
				-- 戰刃 -- 70% | 80% | 90% | 100%
			-- ["zh-cn"] = "背刺时 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_zh_cn").."。"..CNote("Rend_note"), -- 无情背刺
		},
		--[+ UNCANNY STRIKE +]--	08.12.2025
		-- Rending per stack (per tier)
		-- Combat Blades, Duelling Swords, Force Swords, Sapper Shovels -- 12% | 16% | 20% | 24% (up to +120%)
		-- Shivs -- 4% | 5% | 6% | 8% (up to +40%)
		["loc_trait_bespoke_stacking_rending_on_weakspot_desc"] = { -- rending: +24%, time: 3.5, stacks: 5, s->seconds, +colors
			en = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Rending", "Rending_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Enemy "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr").."\n"
				..CNote("Rend_note"),
			ru = CNumb("{rending:%s}", "rending_var_rgb").." к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони на "..CNumb("{time:%s}", "time_var_rgb").." секунды при попадании в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..". Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.\n"
				..CPhrs("Can_be_refr"), -- ..CNote("Rend_note") -- Жуткий удар
			-- fr = CNumb("{rending:%s}", "rending_var_rgb").." de "..CKWord("Déchirure", "Rending_rgb_fr").." sur un coup sur "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Rend_note"),
			-- ["zh-tw"] = CKWord("弱點命中", "Weakspothit_rgb_tw").." 時 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_tw").." ，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，\n每次攻擊可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Rend_note"), -- 詭異打擊
				-- 戰刃, 決鬥劍, 烈焰力場劍, 工兵鏟 -- 12% | 16% | 20% | 24% (up to +120%)
			-- ["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加"..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Rend_note"), -- 神秘打击
		},
		--[+ TRAUMA +]--
		-- Melee Stagger Strength and Stagger Duration per stack (per tier)
		-- Crusher, Devil's Claw Swords, Sapper Shovels, Thunder Hammers -- 14% and 10% | 16% and 10% | 18% and 10% | 20% and 10% (up to +100% and +61%)
		["loc_trait_bespoke_consecutive_hits_increases_stagger_desc"] = { -- impact: +20%, time: 2, stacks: 5, +colors
			en = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impact", "Impact_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Repeated Hit. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{impact:%s}", "impact_var_rgb").." к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при повторных попаданиях. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr"), -- Травма
			-- fr = CNumb("{impact:%s}", "impact_var_rgb").." d'"..CKWord("Impact", "Impact_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un coup répété. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "連續攻擊時 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("衝擊", "Impact_rgb_tw").." ，持續"..CNumb("{time:%s}", "time_var_rgb").." 秒。\n每次攻擊可疊加一層，上限 "..CNumb("5", "n_5_rgb").." 層。", -- 創傷
				-- 輾壓者, 『惡魔之爪』劍, 工兵鏟, 雷鎚 -- 14% | 16% | 18% | 20% (up to +100%)
			-- ["zh-cn"] = "再次命中同一敌人时 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 创伤
		},
		--[+ VICIOUS SLICE +]--
		-- Melee Stagger Strength per stack (per tier)
		-- Devil's Claw Swords -- 14% | 16% | 18% | 20% (up to +100%)
		["loc_trait_bespoke_increase_stagger_per_hit_in_sweep_desc"] = { -- impact: +20%, +colors
			en = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impact", "Impact_rgb").." to Target for each Enemy already Hit by the same Attack. "
						..Dot_nc.." Up to "..CNumb("5", "n_5_rgb").." Stacks. "..CNote("Impact_note"),
			ru = CNumb("{impact:%s}", "impact_var_rgb").." к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." цели за каждого врага, ранее поражённого этой же атакой. "
				..Dot_nc.." До "..CNumb("5", "n_5_rgb").." зарядов.\n"
				..CNote("Impact_note"), -- Жестокий разрез -- руоф Жестокая нарезка
			-- fr = CNumb("{impact:%s}", "impact_var_rgb").." d'"..CKWord("Impact", "Impact_rgb_fr").." à la cible pour chaque ennemie déjà touché par la même attaque. Jusqu'à "..CNumb("5", "n_5_rgb").." cumuls.",
			-- ["zh-tw"] = "命中同一敵人 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("衝擊", "Impact_rgb_tw").." ，\n每次攻擊可疊加一層，上限 "..CNumb("5", "n_5_rgb").."層。", -- UI沒顯示 -- 凶狠切割
				-- 『惡魔之爪』劍 -- 14% | 16% | 18% | 20% (up to +100%)
			-- ["zh-cn"] = "每有一个已被同一攻击命中的敌人，\n"..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."。最多叠加 "..CNumb("5", "n_5_rgb").." 层。", -- 邪恶斩切
		},
		--[+ HAMMERBLOW +]--
		-- Melee Stagger Strength per stack (per tier)
		-- Arbites Shock Maul, Crusher, Devil's Claw Swords, Sapper Shovels, Shock Mauls, Shock Mauls and Shield, Thunder Hammers -- 19% | 21% | 23% | 25% (up to +125%)
		["loc_trait_bespoke_stacking_increase_impact_on_hit_desc"] = { -- impact: +25%, time: 1.5, stacks: 5, s->seconds, +colors
			en = CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impact", "Impact_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Hit. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..Dot_green.." Can generate multiple stacks per swing or push action. "..CPhrs("Can_be_refr"),
			ru = CNumb("{impact:%s}", "impact_var_rgb").." к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при ударе. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..Dot_green.." Может дать несколько зарядов за удар или толчок. "..CPhrs("Can_be_refr"), -- Молотобой -- руоф Удар молотом
			-- fr = CNumb("{impact:%s}", "impact_var_rgb").." d'"..CKWord("Impact", "Impact_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un coup. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. Jusqu'à "..CNumb("5", "n_5_rgb").." cumuls par coup.",
			-- ["zh-tw"] = "每次攻擊 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("衝擊", "Impact_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n上限 "..CNumb("5", "n_5_rgb").." 層。", -- 錘擊
				-- 輾壓者, 『惡魔之爪』劍, 工兵鏟, 電擊錘, 雷鎚 -- 19% | 21% | 23% | 25% (up to +125%)
			-- ["zh-cn"] = "命中时 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。\n攻击每命中一个目标叠加 "..CNumb("1", "n_1_rgb").." 层。", -- 锤击
		},
		--[+ SKULLCRUSHER +]--
		-- Debuff Stacks Applied (per tier)
		-- Battle Maul and Shield, Bully Clubs, Crusher, Devil's Claw Swords, Latrine Shovels, Power Maul, Sapper Shovels, Shock Mauls, Thunder Hammers -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff_desc"] = { -- stacks: 4, damage: +10%, time: 5, Stack(s)->Stacks, +colors
			en = "Target receives "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." if already "..CKWord("Staggered", "Staggered_rgb")..", to a maximum of "..CNumb("8", "n_8_rgb").." Stacks on target. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. "
				..CPhrs("Can_be_refr"),
			ru = "Цель получает "..CNumb("{stacks:%s}", "stacks_var_rgb").." заряда по "..CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru")..", если уже "..CKWord("ошеломлена", "oshelomlena_rgb_ru")..", вплоть до "..CNumb("8", "n_8_rgb").." зарядов. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд.\n"
				..CPhrs("Can_be_refr"), -- Череподробитель
			-- fr = "La cible subit "..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." si elle "..CKWord("vacille", "Staggered_rgb_fr").." déjà, jusqu'à un maximum de "..CNumb("8", "n_8_rgb").." cumuls. Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes.",
			-- ["zh-tw"] = "對 "..CKWord("硬直中", "Staggered_rgb_tw").." 的敵人，\n使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw"), -- 粉碎者
				-- 作戰大槌and板盾, 惡棍棒, 輾壓者, 『惡魔之爪』劍, 工兵鏟, 電擊錘, 雷鎚 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "对"..CKWord("踉跄", "Staggered_rgb_zh_cn").."敌人施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."效果，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("8", "n_8_rgb").." 层。", -- 碎颅者
		},
		--[+ THUNDERSTRIKE +]--
		-- Debuff Stacks Applied (per tier)
		-- Battle Maul and Shield, Crusher, Devil's Claw Swords, Power Maul, Sapper Shovels, Thunder Hammers -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff_desc"] = { -- stacks: 4, impact: +10%, time: 5, Stack(s)->Stacks, +colors
			en = "Target receives "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("Impact", "Impact_rgb").." if already "..CKWord("Staggered", "Staggered_rgb")..", to a maximum of "..CNumb("8", "n_8_rgb").." Stacks on target. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. "
				..CPhrs("Can_be_refr"),
			ru = "Цель получает "..CNumb("{stacks:%s}", "stacks_var_rgb").." заряда по "..CNumb("{impact:%s}", "impact_var_rgb").." к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru")..", если уже "..CKWord("ошеломлена", "oshelomlena_rgb_ru")..", вплоть до "..CNumb("8", "n_8_rgb").." зарядов. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд. "
				..CPhrs("Can_be_refr"), -- Громобой -- руоф Гроза
			-- fr = "La cible subit "..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CNumb("{impact:%s}", "impact_var_rgb").." d'"..CKWord("Impact", "Impact_rgb_fr").." si elle "..CKWord("vacille", "Staggered_rgb_fr").." déjà, jusqu'à un maximum de "..CNumb("8", "n_8_rgb").." cumuls. Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes.",
			-- ["zh-tw"] = "對 "..CKWord("硬直中", "Staggered_rgb_tw").." 的敵人，\n使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("衝擊", "Impact_rgb_tw").."，持續"..CNumb("{time:%s}", "time_var_rgb").." 秒。\n上限 "..CNumb("8", "n_8_rgb").." 層。", -- 雷霆打擊
				-- 作戰大槌and板盾, 輾壓者, 『惡魔之爪』劍, 動力錘, 工兵鏟, 雷鎚 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "对"..CKWord("踉跄", "Staggered_rgb_zh_cn").."敌人施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{impact:%s}", "impact_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."效果，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("8", "n_8_rgb").." 层。", -- 雷击
		},
		--[+ CHAINED DEATHBLOW +]--
		-- Melee Crit Chance (per tier)
		-- Heavy Swords -- 5% | 10% | 15% | 20%
		["loc_trait_bespoke_increased_crit_chance_on_weakspot_kill_desc"] = { -- crit_chance: +20%, time: 3, s->seconds, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on "..CKWord("Weak Spot", "Weak_spot_rgb").." kill. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..". "
				..CPhrs("Can_be_refr"), -- Карающая серия -- руоф Цепочка смертельных ударов
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination sur "..CKWord("Point faible", "Weakspot_rgb_fr")..". {#color(255, 35, 5)}(bug:+10% de taux de coup critique peu importe le niveau de la bénédiction){#reset()}",
			-- ["zh-tw"] = CKWord("弱點", "Weakspot_rgb_tw").." 擊殺時 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."。\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。{#color(255, 35, 5)}\n(bug: 所有等級 +10%){#reset()}", -- 致命連擊
				-- 重劍 -- 5% | 10% | 15% | 20%
			-- ["zh-cn"] = CKWord("弱点击杀", "Weakspothits_k_rgb_zh_cn").."时 \n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。{#color(255, 35, 5)}\n（存在BUG：无论祝福级别如何，数值始终为 +10% 暴击几率。）{#reset()}", -- 连锁死亡打击
		},
		--[+ PERFECT STRIKE +]--
		-- Melee Crit Damage (per tier)
		-- Battle Maul and Shield, Bully Clubs, Eviscerators, Heavy Swords, Latrine Shovels, Power Maul -- 2.5% | 5% | 7.5% | 10%
		["loc_trait_bespoke_pass_past_armor_on_crit_new_desc"] = { -- crit_damage: +10%, +colors
			en = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." Melee "..CKWord("Critical Hit", "Crit_hit_rgb").." "..CKWord("Damage", "Damage_rgb")..". "..CKWord("Critical Hits", "Crit_hits_rgb").." ignore "..CKWord("Hit Mass", "Hit_mass_rgb").." bonus from Armour.\n"
						..Dot_green.." Carapace armor can be "..CKWord("Cleaved", "Cleaved_rgb")..".",
			ru = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." к "..CKWord("урону критического удара", "krit_udara_uron_rgb_ru").." в ближнем бою. "..CKWord("Критические удары", "Krit_udary_rgb_ru").." игнорируют "..CKWord("ударную массу", "udarn_massu_rgb_ru").." от брони, позволяя "..CKWord("рассекать", "rassekat_rgb_ru").." панцирную броню.", -- Безупречный удар
			-- fr = CNumb("{crit_damage:%s}", "critdmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." de "..CKWord("Coup critique", "Crit_hit_rgb_fr").." en mélée. Les "..CKWord("Coups critiques", "Crit_hits_rgb_fr").." ignore le "..CKWord("Coups en masse", "Hit_mass_rgb_fr").." de l'armure.",
			-- ["zh-tw"] = "近戰 "..CKWord("暴擊", "Crit_rgb_tw").." 時 "..CNumb("{crit_damage:%s}", "critdmg_var_rgb").." "..CKWord("暴擊傷害", "Crit_dmg_r_rgb_tw").."。\n無視 "..CKWord("順劈目標", "Hit_mass_rgb_tw").." 護甲加成。", -- 完美一擊
				-- 作戰大槌and板盾, 惡棍棒, 重型開膛劍, 重劍, 廁所鏟, 動力錘 -- 2.5% | 5% | 7.5% | 10%
			-- ["zh-cn"] = "近战"..CKWord("暴击命中", "Crit_hit_rgb_tw").."时 "..CNumb("{crit_damage:%s}", "critdmg_var_rgb")..CKWord("", "Damage_rgb_zh_cn").."。\n"..CKWord("暴击", "Crit0_rgb_zh_cn").."同时无视装甲赋予的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"), -- 完美打击
		},
		--[+ BLADED MOMENTUM +]--
		-- Rending per stack (per tier)
		-- Heavy Swords -- 4% | 6% | 8% | 10% (up to +50%)
		["loc_trait_bespoke_stacking_rending_on_cleave_desc"] = { -- rending: +10%, time: 2.5, stacks: 5, +colors, +note
			en = CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Rending", "Rending_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds when hitting "..CNumb("2", "n_2_rgb").." or more enemies with a melee attack. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr")..CNote("Rend_note"),
			ru = CNumb("{rending:%s}", "rending_var_rgb").." к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони на "..CNumb("{time:%s}", "time_var_rgb").." секунды при ударе по "..CNumb("2", "n_2_rgb").." или более врагам за раз. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.\n"
				..CPhrs("Can_be_refr").."\n"
				..CNote("Rend_note"), -- Инерция клинка -- руоф Моментум лезвия
			-- fr = CNumb("{rending:%s}", "rending_var_rgb").." de "..CKWord("Déchirure", "Rending_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un coup en mélée multiple . Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Rend_note"),
			-- ["zh-tw"] = "在一次攻擊命中多名敵人 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_tw").." ，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。" .. COLORS_KWords_tw.CNote("Rend_note"), -- 利刃攻勢
				-- 重劍 -- 4% | 6% | 8% | 10% (up to +50%)
			-- ["zh-cn"] = "命中多名敌人时"..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("撕裂", "Rending_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Rend_note"), -- 刀刃势头
		},
		--[+ DEFLECTOR +]--
		-- Block Cost Reduction (per tier)
		-- Force Greatswords, Force Swords -- 22.5% | 25% | 27.5% | 30%
		["loc_trait_bespoke_can_block_ranged_desc"] = { -- block_cost: 30%, +colors
			en = CNumb("{block_cost:%s}", "block_var_rgb").." Block Cost. This weapon Blocks both Melee and Ranged attacks.",
			ru = CNumb("{block_cost:%s}", "block_var_rgb").." стоимости блока. Это оружие блокирует атаки и ближнего, и дальнего боя.", -- Отражатель
			fr = "Cette arme bloque les attaques à distance et en mélée. De plus, le coût du blocage est réduit de "..CNumb("{block_cost:%s}", "block_var_rgb")..".",
			["zh-tw"] = "此武器可以格擋近戰和遠程攻擊。\n此外，格擋消耗 "..CNumb("{block_cost:%s}", "block_var_rgb"), -- 偏轉
			-- 烈焰力場劍, 烈焰力場巨劍 -- 22.5% | 25% | 27.5% | 30%
			["zh-cn"] = CNumb("{block_cost:%s}", "block_var_rgb").." 格挡消耗。\n此武器可格挡近战与远程攻击。", -- 偏转器
		},
		--[+ MOMENTUM +]--
		-- Max Toughness Percentage (per tier)
		-- Bully Clubs, Cleavers, Eviscerators, Force Greatswords, Thunder Hammers
		-- 12% | 13% | 14% | 15%
		["loc_trait_bespoke_toughness_recovery_on_multiple_hits_desc"] = { -- toughness: 15%, multiple_hit: 3, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restores when hitting at least "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." enemies with an attack. "
				..CPhrs("Dont_intw_coher_tghn"),
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается, если вы попали атакой по "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." или более врагам. "
				..CPhrs("Dont_intw_coher_tghn"), -- Моментум
			-- fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de régénération de "..CKWord("Robustesse", "Toughness_rgb_fr").." en touchant au moins "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." ennemies avec une attaque.",
			-- ["zh-tw"] = "在一次攻擊命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 個敵人時，\n恢復 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").." 。", -- 勢頭
				-- 烈焰力場巨劍, 惡棍棒, 砍刀, 重型開膛劍, 雷鎚 -- 12% | 13% | 14% | 15%
			-- ["zh-cn"] = "命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 名敌人时，\n"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。", -- 动量
		},
		--[+ MURDEROUS TRANQUILITY +]--
		-- Peril Amount Removed (per tier)
		-- Force Greatswords -- 2% | 3% | 4% | 5%
		["loc_trait_bespoke_vent_warp_charge_on_multiple_hits_desc"] = { -- multiple_hit: 3, warp_charge: 2%, +colors
			en = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Peril", "Peril_rgb").." is quelled by hitting at least "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." enemies with an attack. "
				..Dot_nc.." Procs once per attack. "..Dot_red.." Cannot be triggered by a Special Attack.",
			ru = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." подавляется при попадании атакой по "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." или более врагам. "
				..Dot_nc.." Срабатывает раз за удар.\n"
				..Dot_red.." Не срабатывает от специальных атак.", -- Убийственное спокойствие
			-- fr = "Toucher au moins "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." ennemies avec une attaque, réduit de "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." le "..CKWord("Péril", "Peril_rgb_fr")..".",
			-- ["zh-tw"] = "在一次攻擊命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 個敵人時，\n消除 "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." 點的 "..CKWord("反噬", "Peril_rgb_tw").." 。", -- 兇殘之寧
				-- 烈焰力場巨劍 -- 2% | 3% | 4% | 5% ???
			-- ["zh-cn"] = "命中至少 "..CNumb("{multiple_hit:%s}", "mult_hit_var_rgb").." 名敌人时，\n平息 " ..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").."。", -- 杀意如水
		},
		--[+ BLAZING SPIRIT -- !!! MELEE !!!
		-- Soulblaze Stacks and Max Stacks (per tier)
		-- Force Swords -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
		-- !!!FORCE GREATSWORD TEMPORARILY USES THE DESCRIPTION FROM THE RANGED BLESSING!!!
		-- Force Greatswords -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
		["loc_trait_bespoke_warp_burninating_on_crit_desc"] = { -- stacks: +4, max_stacks: 12, Stack(s)->Stacks, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CKWord("Soulblaze", "Soulblaze_rgb").." are gained by the enemy on "..CKWord("Critical Hit", "Crit_hit_rgb")..", up to "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks.\n"
				..Dot_nc.." Lasts "..CNumb("8", "n_8_rgb").." seconds. "..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда "..CKWord("горения души", "gorenia_dushi_rgb_ru").." получает враг при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..", вплоть до "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядов. "
				..Dot_nc.." Длится "..CNumb("8", "n_8_rgb").." секунд.\n"
				..CPhrs("Cant_appl_thr_shlds"), -- ..CPhrs("Refr_dur_stappl") -- Пылающий дух
			-- fr = "L'ennemi gagne "..CNumb("+", "n_plus_rgb")..""..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls d'"..CKWord("Embrasement d'âme", "Soulblaze_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr")..", Jusqu'à "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls.",
			-- ["zh-tw"] = CKWord("暴擊命中", "Crit_hit_rgb_tw").." 敵人時，\n使其獲得 "..CNumb("+", "n_plus_rgb")..CNumb("{stacks:%s}", "stacks_var_rgb").." 層的 "..CKWord("靈火", "Soulblaze_rgb_tw").."。\n上限 "..CNumb("6", "n_6_rgb").." 層，烈焰力場巨劍 "..CNumb("12", "n_12_rgb").." 層。", -- 燃燒靈魂
			-- 虛空爆破力場法杖, 虛空打擊力場法杖 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时, 对敌人施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层"..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."。最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 次。", -- 烈焰之魂
		},
		--[+ UNSTABLE POWER +]--
		-- Power per stack (per tier)
		-- Force Greatswords, Force Swords -- 3.5% | 4% | 4.5% | 5% (up to +20%)
		["loc_trait_bespoke_warp_charge_power_bonus_desc"] = { -- power_level: +20%, +colors
			en = "Up to "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb")..", with increasing "..CKWord("Peril", "Peril_rgb").." Level. "
				..Dot_nc.." Stacks "..CNumb("4", "n_4_rgb").." times. "..CNote("Pwr_note"),
			ru = "До "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." вы получаете, с увеличением уровня "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
				..Dot_nc.." Суммируется "..CNumb("4", "n_4_rgb").." раза. "..CNote("Pwr_note"), -- Нестабильная мощь
			-- fr = "Jusqu'à "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Puissance", "Strength_rgb_fr")..", en fonction du "..CKWord("Péril", "Peril_rgb_fr")..". Se cumule "..CNumb("4", "n_4_rgb").." fois."..CNote("Pwr_note"),
			-- ["zh-tw"] = CKWord("反噬", "Peril_rgb_tw").." 每增加"..CNumb("20%", "pc_20_rgb").."， 獲得一層，\n每一層 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").." ，上限 "..CNumb("4", "n_4_rgb").." 層。"..CNote("Pwr_note"), -- 不穩定能量
			-- 烈焰力場巨劍, 烈焰力場劍 -- 3.5% | 4% | 4.5% | 5% (up to +20%)
			-- ["zh-cn"] = "随"..CKWord("危机值", "Peril_rgb_zh_cn").."增长叠加层数，\n每增长 "..CNumb("20%", "pc_20_rgb").."，"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("4", "n_4_rgb").." 层。"..CNote("Pwr_note"), -- 无常之力
		},
		--[+ WARP SLICE +]--
		-- Cooldown (per tier)
		-- Force Greatswords -- 30s | 25s | 20s | 15s
		["loc_trait_bespoke_wind_slash_crits_desc"] = { -- cooldown: 50, s->seconds, +colors
			en = "Guaranteed Activated "..CKWord("Critical Strike", "Crit_strike_rgb")..". Cooldown "..CNumb("{cooldown:%s}", "cd_var_rgb").." seconds.",
			ru = "Следующая специальная атака будет гарантированным "..CKWord("критическим ударом", "krit_udarom_rgb_ru")..". Восстанавливается "..CNumb("{cooldown:%s}", "cd_var_rgb").." секунд.", -- Варп нарезка
			-- fr = CKWord("Coup critique", "Crit_hit_rgb_fr").." garranti activé. Temps de recharge : "..CNumb("{cooldown:%s}", "cd_var_rgb").." secondes.",
			-- ["zh-tw"] = "攻擊必定 "..CKWord("暴擊", "Crit_rgb_tw").."，冷卻時間 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒", -- 亞空間斬擊
				-- 烈焰力場巨劍 --
			-- ["zh-cn"] = "使下次充能攻击必定"..CKWord("暴击", "Crit_rgb_zh_cn").."，\n冷却时间 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒。", -- 亚空间切割
		},
		--[+ EXORCIST +]--
		-- Peril Amount Removed (per tier)
		-- Force Swords -- 2% | 3% | 4% | 5%
		["loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge_desc"] = { -- warp_charge: 5%, +colors
			en = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." of "..CKWord("Peril", "Peril_rgb").." is quelled on Repeated "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". "
				..Dot_nc.." Procs only once per swing regardless of how many enemy "..CKWord("Weakspots", "Weakspots_rgb").." are hit.",
			ru = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." подавляется при повторном попадании в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..". "
				..Dot_nc.." Срабатывает только "..CNumb("1", "n_1_rgb").." раз за атаку.", -- Экзорцист
			-- fr = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." du "..CKWord("Péril", "Peril_rgb_fr").." est dissipé sur les "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." répété.",
			-- ["zh-tw"] = "連續 "..CKWord("弱點命中", "Weakspothit_rgb_tw").." 時，消除 "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("反噬", "Peril_rgb_tw").." 。", -- 驅魔者
				-- 烈焰力場劍 -- 2% | 3% | 4% | 5%
			-- ["zh-cn"] = "连锁攻击"..CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时，\n平息 "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").."。", -- 驱魔者
		},
		--[+ SUPERIORITY +]--	08.12.2025
		-- Power per stack (per tier)
		-- Crowbar, Force Swords -- 5% | 7.5% | 10% | 12.5% (up to +37.5%)
		["loc_trait_bespoke_elite_kills_grants_stackable_power_desc"] = { -- stacks: 5, power_level: +12.5%, time: 7, s->seconds, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Elite and Specialist Kill. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr_drop_1").." "..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунд при убийстве элитного врага или специалиста. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раза. "
				..CPhrs("Can_be_refr_drop_1"), -- ..CNote("Pwr_note") -- Превосходство
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination d'élite. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. Les cumuls se détériorent un à un."..CNote("Pwr_note"),
			-- ["zh-tw"] = "擊殺精英時，增加 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n每次擊殺可疊加一層，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。"..CNote("Pwr_note"), -- 優勢
				-- 烈焰力場劍 -- 5% | 7.5% | 10% | 12.5% (up to +37.5%)
			-- ["zh-cn"] = "击杀精英敌人时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层，该效果逐层衰减。"..CNote("Pwr_note"), -- 优势
		},
		--[+ LIGHTNING REFLEXES +]--
		-- Melee Power (per tier)
		-- Arbites Shock Maul, Shock Mauls, Shock Mauls and Shield -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_block_has_chance_to_stun_with_cd_desc"] = { -- power_level: 25%, duration: 3, cooldown_duration: 3, +colors
			en = "Perfect Block "..CKWord("Stuns", "Stuns_rgb").." attacker, and grant you "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." Melee "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{duration:%s}", "dur_var_rgb").." seconds. Cooldown "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." seconds. "
				..CNote("Pwr_note"),
			ru = "При идеальном блоке атакующий враг "..CKWord("ошеломляется", "oshelomlaetsa_rgb_ru")..", а вы получаете "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." ближнего боя на "..CNumb("{duration:%s}", "dur_var_rgb").." секунды. Восстанавливается "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." секунды.", -- ..CNote("Pwr_note_rgb_ru -- Молниеносные рефлексы
			-- fr = "Les blocages opportuns "..CKWord("étourdir", "Stun_s_rgb_fr").." l'attaquant et vous octroient "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." de mélée pendant "..CNumb("{duration:%s}", "dur_var_rgb").." secondes. Temps de recharge : "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." secondes."..CNote("Pwr_note"),
			-- ["zh-tw"] = ("完美格擋會使攻擊者 "..CKWord("暈眩", "Staggers_rgb_tw").." ，\n並 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 近戰 "..CKWord("威力", "Strength_rgb_tw").."，持續 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。\n冷卻時間為 "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." 秒。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 閃電反射
					-- 電擊錘
			-- ["zh-cn"] = "完美格挡会使目标"..CKWord("眩晕", "Electrocute_rgb_zh_cn").."，\n同时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 近战"..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。\n冷却时间 "..CNumb("{cooldown_duration:%s}", "cd_dur_var_rgb").." 秒。"..CNote("Pwr_note"), -- 闪电反应
		},
		--[+ HIGH VOLTAGE +]--
		-- Damage vs Electrocuted (per tier)
		-- Arbites Shock Maul, Shock Mauls, Shock Mauls and Shield -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_damage_bonus_vs_electrocuded_desc"] = { -- damage: +25%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs "..CKWord("Electrocuted", "Electrocuted_rgb").." enemies.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." против врагов, поражённых "..CKWord("электрошоком", "elektroshokom_rgb_ru")..".", -- Высокое напряжение
			-- fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." contre les ennemies "..CKWord("Électrocutés", "Electrocuted_rgb_fr").." .",
			-- ["zh-tw"] = "對 "..CKWord("被電擊", "Electrocuted_rgb_tw").." 的敵人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").." 。", -- 高壓電
				-- 電擊錘 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = "对"..CKWord("眩晕", "Electrocuted_rgb_zh_cn").."敌人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。", -- 高压电
		},
		--[+ FALTER +]--
		-- Weakspot Stagger Reduction Modifier (per tier)
		-- Arbites Shock Maul, Shock Mauls -- 60% | 70% | 80% | 90%
		["loc_trait_bespoke_negate_stagger_reduction_on_weakspot_desc"] = { -- stagger: 90%, ranged_stagger: 30%, +colors
			en = CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb").." Ranged "..CKWord("Stagger", "Stagger_rgb").." strength.\n"
				..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Stagger", "Stagger_rgb").." on enemies on "..CKWord("Weakspot Hit", "Weakspothit_rgb")..".",
			ru = CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb").." к силе "..CKWord("ошеломления", "oshelomlenia_rgb_ru").." для дальнобойных атак.\n"
				..CNumb("{stagger:%s}", "stgr_var_rgb").." к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." врагов при попадании в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".", -- Дрожь
			-- fr = "Le "..CKWord("Vacillement", "Stagger_rgb_fr").." des ennemis augmente de "..CNumb("{stagger:%s}", "stgr_var_rgb")..", lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..". De plus augmente la puissance du "..CKWord("Vacillement", "Stagger_rgb_fr").." à distance de "..CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb")..".",
			-- ["zh-tw"] = CKWord("弱點命中", "Weakspothit_rgb_tw").." 時，增加 "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("踉蹌效果", "Stagger2_rgb_tw").." ，\n與 "..CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb").." 的遠程 "..CKWord("踉蹌效果", "Stagger2_rgb_tw").." 。", -- 踉蹌
				-- 電擊錘 -- 60% | 70% | 80% | 90%
			-- ["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时，\n对敌人施加的"..CKWord("踉跄", "Stagger_rgb_zh_cn").."效果 "..CNumb("{stagger:%s}", "stgr_var_rgb").."。\n远程武器带有该祝福时，\n额外 "..CNumb("{ranged_stagger:%s}", "stgrrang_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."。", -- 摇摇欲坠
		},
		--[+ OVERWHELMING FORCE +]--
		-- Cooldown and Proc Chance (per tier)
		-- Shock Mauls -- 5s and 10% | 4.5s and 15% | 4s and 20% | 3.5s and 25%
		["loc_trait_bespoke_staggering_hits_has_chance_to_stun_desc"] = { -- chance: 25%, cooldown: 3.5, +colors
			en = CKWord("Staggering", "Staggering_rgb").." an Enemy has a "..CNumb("{chance:%s}", "chnc_var_rgb").." Chance to "..CKWord("Electrocute", "Electrocute_rgb").." the enemy. Cooldown "..CNumb("{cooldown:%s}", "cd_var_rgb").." seconds. "
				..Dot_red.." Does not proc on pushes.",
			ru = CKWord("Ошеломление", "Oshelomlenie_rgb_ru").." врага с шансом в "..CNumb("{chance:%s}", "chnc_var_rgb").." может наложить эффект "..CKWord("электрошока", "elektroshoka_rgb_ru").." на врага. Восстанавливается "..CNumb("{cooldown:%s}", "cd_var_rgb").." секунды. "
				..Dot_red.." Не срабатывает при толчках.", -- Подавляющая сила
			-- fr = "Faire "..CKWord("vaciller", "Staggering_rgb_fr").." un ennemie à "..CNumb("{chance:%s}", "chnc_var_rgb").." de chance de l'"..CKWord("Électrocuter", "Electrocute_rgb_fr")..". Temps de recharge : "..CNumb("{cooldown:%s}", "cd_var_rgb").." secondes.",
			-- ["zh-tw"] = "使敵人 "..CKWord("踉蹌", "Stagger_rgb_tw").." 時，\n有 "..CNumb("{chance:%s}", "chnc_var_rgb").." 的機率使敵人 "..CKWord("眩暈", "Staggering_rgb_tw").." 。\n冷卻時間 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒。", -- 壓倒性的武力
				-- 電擊錘 -- 5s and 10% | 4.5s and 15% | 4s and 20% | 3.5s and 25%
			-- ["zh-cn"] = CKWord("踉跄", "Stagger_rgb_zh_cn").."敌人时 "..CNumb("{chance:%s}", "chnc_var_rgb").." 几率使目标"..CKWord("眩晕", "Electrocute_rgb_zh_cn").."。\n冷却时间 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒。", -- 迅猛之力
		},
		--[+ COUNTERATTACK +]--
		-- Melee Attack Speed (per tier)
		-- Power Falchions, Relic Blade, Shock Mauls and Shield -- 6% | 8% | 10% | 12%
		["loc_attack_speed_on_perfect_block_desc"] = { -- attack_speed: 10%, duration: 5, interval: 8, +colors
			en = CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." Attack Speed for "..CNumb("{duration:%s}", "dur_var_rgb").." seconds on a Perfect Block. Can only occur once every "..CNumb("{interval:%s}", "interval_var_rgb").." seconds. "
				..Dot_red.." Сannot be refreshed during active duration.",
			ru = CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." к скорости атаки на "..CNumb("{duration:%s}", "dur_var_rgb").." секунд при идеальном блоке. Срабатывает раз в "..CNumb("{interval:%s}", "interval_var_rgb").." секунд. "
				..Dot_red.." Нельзя обновить во время действия.", -- Контратака
			-- fr = "Gagnez "..CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." de Vitesse d'attaque pendant "..CNumb("{duration:%s}", "dur_var_rgb").." secondes lors d'un blocage parfait. Ne peux se produire que toute les "..CNumb("{interval:%s}", "interval_var_rgb").." secondes.",
			-- ["zh-tw"] = "完美格擋時，\n獲得 "..CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." 的攻擊速度，持續 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。\n每 "..CNumb("{interval:%s}", "interval_var_rgb").." 秒觸發一次", -- 反擊
				-- 上古神刃 -- 4% | 6% | 8% | 10%
			-- ["zh-cn"] = "完美格挡时 "..CNumb("{attack_speed:%s}", "attack_spd_var_rgb").." 攻击速度，持续 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。\n每 "..CNumb("{interval:%s}", "interval_var_rgb").." 秒只能触发一次。", -- 反击
		},
		--[+ CRANIAL GROUNDING +]--
		-- Overheat Cost Reduction and Finesse Bonus per stack (per tier)
		-- Power Falchions, Relic Blade -- 3% and 1% | 4% and 2% | 5%and 3% | 6% and 4% (up to ~26.6% and +20%)
		["loc_chained_weakspot_hits_increase_finesse_and_reduce_overheat_desc"] = { -- buildup_amount: 6%, damage: 4%, duration: 3 , stacks: 5, s->seconds, +colors
			en = CNumb("{buildup_amount:%s}", "buildup_var_rgb").." "..CKWord("Heat", "Heat_rgb").." buildup and "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." for "..CNumb("{duration:%s}", "dur_var_rgb").." seconds on chained "..CKWord("Weakspot Hits", "Weakspothits_rgb")..". Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{buildup_amount:%s}", "buildup_var_rgb").." к набору "..CKWord("перегрева", "peregreva_rgb_ru").." и "..CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." на "..CNumb("{duration:%s}", "dur_var_rgb").." секунды при серии ударов в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..". Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr"), -- Черепное заземление
			-- fr = "Réduit la génération de "..CKWord("Chaleur", "Heat_rgb_fr").." de "..CNumb("{buildup_amount:%s}", "buildup_var_rgb").." et augmente les "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." de "..CNumb("{damage:%s}", "dmg_var_rgb").." pendant "..CNumb("{duration:%s}", "dur_var_rgb").." secondes lors de "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." répétés. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "連續 "..CKWord("命中弱點", "Weakspothits_rgb_tw").." 時 "..CNumb("{buildup_amount:%s}", "buildup_var_rgb").." "..CKWord("熱能", "Heat_rgb_tw").." ，\n且 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."，\n持續 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 顱骨落地
				-- 上古神刃 -- 3% and 1% | 4% and 2% | 5%and 3% | 6% and 4% (up to ~26.6% and +20%)
			-- ["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时 \n"..CNumb("{buildup_amount:%s}", "buildup_var_rgb").." "..CKWord("热量", "Heat_rgb_zh_cn").."积累，同时 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("灵巧伤害", "Finesse_dmg_rgb_zh_cn").."，\n持续 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Fns_note"), - 人头落地
		},
			-- !!! Removed "+". Fix in the Enhanced_Descriptions.lua file !!! --
		--[+ OVERLOAD +]--
		-- Overheat Amount Removed (per tier)
		-- Power Falchions, Relic Blade -- 10% | 15% | 20% | 25%
		["loc_explosion_on_overheat_lockout_desc"] = { -- overheat_reduction: 25%, +colors
			en = CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb").." "..CKWord("Heat", "Heat_rgb").." is reduced immediately upon Lockout, and you cause an Explosion around you.",
			ru = CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb").." "..CKWord("перегрева", "peregreva_rgb_ru").." немедленно сбрасывается при полном перегреве.\nТакже происходит небольшой взрыв, который наносит малый "..CKWord("урон", "uron_rgb_ru").." и слегка "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." врагов.", -- Перегрузка
			-- fr = "Lorsque vous entrez en état de Verouillage, vous produisez une Explosion autour de vous et réduisez immédiatement la "..CKWord("Chaleur", "Heat_rgb_fr").." de "..CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb")..".",
			-- ["zh-tw"] = "進入鎖定狀態時，產生爆炸，\n並立即降低 "..CKWord("熱能", "Heat_rgb_tw").." "..CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb").." 。", -- 超載
				-- 上古神刃 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = CKWord("热量", "Heat_rgb_zh_cn").."达到 "..CNumb("100%", "pc_100_rgb").." 并进入锁定状态时，\n在周身范围引发一次爆炸，\n并立刻减少 "..CNumb("{overheat_reduction:%s}", "overheat_red_var_rgb").." "..CKWord("热量", "Heat_rgb_zh_cn").."。", -- 过载
		},
		--[+ ENERGY LEAKAGE +]--
		-- Power per stack (per tier)
		-- Power Falchions, Relic Blades -- 1.5% | 2% | 3% | 4% (up to +20%)
		["loc_power_bonus_scaled_on_heat_desc"] = { -- amount: 4%, +colors
			en = "Up to "..CNumb("{amount}", "amount_var_rgb").." "..CKWord("Strength", "Strength_rgb")..", scaled on "..CKWord("Heat", "Heat_rgb")..".\n"
				..CNote("Pwr_note"),
			ru = "До "..CNumb("{amount}", "amount_var_rgb").." к "..CKWord("силе", "sile_rgb_ru")..", в зависимости от "..CKWord("перегрева", "peregreva_rgb_ru")..". "
				..CNote("Pwr_note"), -- Утечка энергии
			-- fr = "Augmente la "..CKWord("Puissance", "Strength_rgb_fr").." jusqu'à "..CNumb("{amount}", "amount_var_rgb")..", en fonction de la "..CKWord("Chaleur", "Heat_rgb_fr").."."..CNote("Pwr_note"),
			-- ["zh-tw"] = "依據當前 "..CKWord("熱能", "Heat_rgb_tw").." ，最多獲得 "..CNumb("{amount}", "amount_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 能量洩漏
				-- 上古神刃 -- 1.5% | 2% | 3% | 4% (up to +20%)
			-- ["zh-cn"] = "随"..CKWord("热量", "Heat_rgb_zh_cn").."增长叠加层数，\n每增长 "..CNumb("20%", "pc_20_rgb").."，"..CNumb("{amount}", "amount_var_rgb").." "..CKWord("", "Power_rgb_zh_cn").."。\n最多叠加 "..CNumb("5", "n_5_rgb").." 层。"..CNote("Pwr_note"), -- 能量泄露
		},
		--[+ HEATSINK +]--
		-- Overheat Amount Removed (per tier)
		-- Power Falchions, Relic Blades -- 4% | 6% | 8% | 10%
		["loc_reduce_fixed_overheat_amount_desc"] = { -- amount: 10%, time: 3, s->seconds, +colors
			en = CNumb("-", "n_minus_rgb")..CNumb("{amount}", "amount_var_rgb").." "..CKWord("Heat", "Heat_rgb").." over "..CNumb("{time:%s}", "time_var_rgb").." seconds on "..CKWord("Weakspot", "Weakspot_rgb").." or "..CKWord("Critical", "Critical_rgb").." Kills. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("-", "n_minus_rgb")..CNumb("{amount}", "amount_var_rgb").." "..CKWord("перегрева", "peregreva_rgb_ru").." за "..CNumb("{time:%s}", "time_var_rgb").." секунды после убийств "..CKWord("Critical Hits", "krit_udarami_rgb_ru").." или убийств в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".\n"
				..CPhrs("Can_be_refr"), -- Теплоотвод
			-- fr = "Les éliminations sur "..CKWord("Point faible", "Weakspot_rgb_fr").." et "..CKWord("Coups critiques", "Crit_hits_rgb_fr").." réduisent la "..CKWord("Chaleur", "Heat_rgb_fr").." de "..CNumb("{amount}", "amount_var_rgb").." sur "..CNumb("{time:%s}", "time_var_rgb").." secondes.",
			-- ["zh-tw"] = CKWord("弱點擊殺", "Weakspot_k_dmg_rgb_tw").." 和 "..CKWord("暴擊擊殺", "Crit_k_rgb_tw").." ， \n在 "..CNumb("{time:%s}", "time_var_rgb").." 秒內 "..CKWord("熱能", "Heat_rgb_tw").." 減少 "..CNumb("{amount}", "amount_var_rgb"), -- 散熱器 +]--
				-- 上古神刃 -- 4% | 6% | 8% | 10%
			-- ["zh-cn"] = CKWord("弱点击杀", "Weakspothits_k_rgb_zh_cn").."和"..CKWord("暴击击杀", "Crit_hits_k_rgb_zh_cn").."时，\n在 "..CNumb("{time:%s}", "time_var_rgb").." 秒内减少"..CNumb("{amount}", "amount_var_rgb").." "..CKWord("热量", "Heat_rgb_zh_cn").."。", -- 散热器
		},
		--[+ SYPHON +]--
		-- Max Toughness Percentage (per tier)
		-- Relic Blade -- 10% | 12% | 14% | 16%
		["loc_trait_bespoke_regain_toughness_on_multiple_hits_by_weapon_special_desc"] = { -- toughness: 16%, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." regains on hitting at least "..CNumb("3", "n_3_rgb").." enemies with an attack while weapon Special is active. "
				..CPhrs("Dont_intw_coher_tghn"),
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при попадании по "..CNumb("3", "n_3_rgb").." или более врагам при активированной специальной атаке.\n"
				..CPhrs("Dont_intw_coher_tghn"), -- Выкачивание
			-- fr = "Toucher au moins "..CNumb("3", "n_3_rgb").." ennemis avec une attaque lorsque la forme Spéciale de l'arme est active, restaure "..CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr")..".",
			-- ["zh-tw"] = "在武器充能期間，\n一次攻擊命中至少 "..CNumb("3", "n_3_rgb").." 個敵人時，\n"..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").." 。", -- 虹吸
				-- 上古神刃 -- 10% | 12% | 14% | 16%
			-- ["zh-cn"] = "武器充能期间，\n命中至少 "..CNumb("3", "n_3_rgb").." 名敌人时，"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。", -- 虹吸
		},
		--[+ ENERGY TRANSFER +]--	04.10.2025
		-- Overheat Cost Reduction and Increased Dissipation (per tier)
		-- Power Falchions, Relic Blades -- 16% and 3% | 18% and 4% | 20% and 5% | 22% and 6%
		["loc_slower_heat_buildup_on_perfect_block_desc"] = { -- heat_reduction: 20%, heat_dissipation: 5%, time: 5, interval: 8, +colors
			en = CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." "..CKWord("Heat", "Heat_rgb").." buildup and "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." "..CKWord("Heat", "Heat_rgb").." dissipation for "..CNumb("{time:%s}", "time_var_rgb").." seconds on a Perfect Block. Can only occur once every "..CNumb("{interval:%s}", "interval_var_rgb").." seconds.",
			ru = CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." к набору "..CKWord("перегрева", "peregreva_rgb_ru").." и "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." к рассеиванию "..CKWord("перегрева", "peregreva_rgb_ru").." в течение "..CNumb("{time:%s}", "time_var_rgb").." секунд при идеальном блоке. Срабатывает раз в "..CNumb("{interval:%s}", "interval_var_rgb").." секунд.", -- Передача энергии
			-- fr = "Réduit la génération de "..CKWord("Chaleur", "Heat_rgb_fr").." de "..CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." et augmente la dissipation de "..CKWord("Chaleur", "Heat_rgb_fr").." de "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un blocage parfait. Ne peux se produire que toute les "..CNumb("{interval:%s}", "interval_var_rgb").." secondes.",
			-- ["zh-tw"] = "完美格擋時 "..CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." "..CKWord("熱能", "Heat_rgb_tw").." ，\n並 "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." "..CKWord("Heat_diss", "Heat_diss_rgb_tw").." ，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n此效果每 "..CNumb("{interval:%s}", "interval_var_rgb").." 秒最多觸發一次。", -- 能量轉換
				-- 上古神刃 -- 14% and 2% | 16% and 3% | 18% and 4% | 20% and 5%
			-- ["zh-cn"] = "完美格挡时"..CNumb("{heat_reduction:%s}", "heat_red_var_rgb").." "..CKWord("热量", "Heat_rgb_zh_cn").."积累，\n同时 "..CNumb("{heat_dissipation:%s}", "heat_diss_var_rgb").." "..CKWord("热量", "Heat_rgb_zh_cn").."消散，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n每 "..CNumb("{interval:%s}", "interval_var_rgb").." 秒只能触发一次。", -- 能量转移
		},
		--[+ SHOCK & AWE / SHOCK AND AWE +]--
		-- Enemy Hit Mass Reduction (per tier)
		-- Bone Saw, Thunder Hammers -- 30% | 40% | 50% | 60%
		["loc_trait_bespoke_hit_mass_consumption_reduction_on_kill_desc"] = { -- hit_mass: -40%, time: 2, s->seconds, +colors
			en = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." Enemy "..CKWord("Hit Mass", "Hit_mass_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Kill. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." от "..CKWord("ударной массы", "udarn_massy_rgb_ru").." врагов на "..CNumb("{time:%s}", "time_var_rgb").." секунды после убийства. "
				..CPhrs("Can_be_refr"), -- Шок и трепет
			-- fr = CNumb("{hit_mass:%s}", "hitmass_var_rgb").." "..CKWord("Coups en masse", "Hit_mass_rgb_fr").." ennemie pour "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination.",
			-- ["zh-tw"] = "擊殺敵人後，敵人 "..CKWord("Hit_masss", "Hit_masss_rgb_tw").." "..CNumb("{hit_mass:%s}", "hitmass_var_rgb").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 震懾
				-- 雷鎚 -- 30% | 40% | 50% | 60%
			-- ["zh-cn"] = "击杀敌人时，使敌人 "..CKWord("打击质量", "Hit_mass_rgb_zh_cn").." 降至"..CNumb("{hit_mass:%s}", "hitmass_var_rgb").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Hit_Mass_note"),
		},
		--[+ TAKE A SWING +]--
		-- Weakspot Damage (per tier)
		-- Crowbar, Sapper Shovels -- 45% | 50% | 55% | 60%
		["loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies_desc"] = { -- toughness: +60%, time: 3, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Pushing Enemies. "
				..CPhrs("Can_be_refr")..Dot_red.." Does not benefit Ranged attacks.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при отталкивании врагов.\n"
				..CPhrs("Can_be_refr").."\n"
				..Dot_red.." Не влияет на дальнобойные атаки.", -- Размахнись -- руоф Замах
			-- fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une poussée d'ennemis.",
			-- ["zh-tw"] = "推開敵人後 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 揮拳出擊
				-- 工兵鏟 -- 45% | 50% | 55% | 60%
			-- ["zh-cn"] = "推搡敌人 \n"..CNumb("{damage:%s}", "dmg_var_rgb").." 近战"..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 挥拳出击
		},
		--[+ SUPERCHARGE +]--	08.12.2025
		-- Brittleness Stacks (per tier)
		-- Power Maul -- 10 | 12 | 14 | 16
		-- Power Swords -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_armor_rend_on_activated_attacks_desc"] = { -- rend: +4, +colors
			en = CNumb("{rend:%s}", "rend_var_rgb").." Stacks of "..CKWord("Brittleness", "Brittleness_rgb").." applied to enemies on Energised Hit.\n"
				..CPhrs("Can_be_refr")..CNote("Brtl_note"),
			ru = "До "..CNumb("{rend:%s}", "rend_var_rgb").." зарядов "..CKWord("хрупкости", "hrupkosti_rgb_ru").." применяется к врагу при заряженном ударе.\n"
				..CPhrs("Can_be_refr").."\n"
				..CNote("Brtl_note"), -- Суперзаряд
			-- fr = CNumb("{rend:%s}", "rend_var_rgb").." cumuls de "..CKWord("Fragilité", "Brittleness_rgb_fr").." lors d'un coup énergisé."..CNote("Brtl_note"),
			-- ["zh-tw"] = "特殊攻擊敵人時，\n使其獲得 "..CNumb("{rend:%s}", "rend_var_rgb").." 層 "..CKWord("脆弱", "Brittleness_rgb_tw").."，上限 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層。 "..CNote("Brtl_note"), -- 超級充能
				-- 動力錘, 動力劍 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "充能攻击命中时，\n对目标施加 "..CNumb("{rend:%s}", "rend_var_rgb").." 层"..CKWord("脆弱", "Brittleness_rgb_zh_cn").."。"..CNote("Brtl_note"), -- 超负荷
		},
		--[+ POWER CYCLER +]--
		-- Melee Stagger Strength and Additional Activated Attacks (per tier)
		-- Power Swords -- 2.5% and 1 | 5% and 1 | 7.5% and 2 | 10% and 2
		["loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks_desc"] = { -- extra_hits: +2, stagger: +10%, +colors
			en = CNumb("+", "n_plus_rgb")..CNumb("{extra_hits:%s}", "extrahits_var_rgb").." Extra Chained Energised Hits and\n"..CNumb("+", "n_plus_rgb")..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Impact", "Impact_rgb").." on Energised Hits. "
				..CNote("Impact_note"),
			ru = CNumb("+", "n_plus_rgb")..CNumb("{extra_hits:%s}", "extrahits_var_rgb").." заряда к заряженным ударам и\n"
				..CNumb("+", "n_plus_rgb")..CNumb("{stagger:%s}", "stgr_var_rgb").." к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." для заряженных ударов. "
				..CNote("Impact_note"), -- Цикл мощности -- руоф Цикл силы
			-- fr = CNumb("{extra_hits:%s}", "extrahits_var_rgb").." Coups d'énergie en chaîne supplémentaires et "..CNumb("{stagger:%s}", "stgr_var_rgb").." d'"..CKWord("Impact", "Impact_rgb_fr").." lors d'un coup énergisé.",
			-- ["zh-tw"] = "特殊啟動攻擊時 "..CNumb("+", "n_plus_rgb")..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("衝擊", "Impact_rgb_tw").." ，\n並獲得 "..CNumb("{extra_hits:%s}", "extrahits_var_rgb").." 次額外充能攻擊次數。", -- 能量循環
				-- 動力劍 -- 5% | 10% | 15% | 20%
			-- ["zh-cn"] = "武器充能期间 "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."，\n充能连锁攻击时 "..CNumb("{extra_hits:%s}", "extrahits_var_rgb").." 额外充能攻击次数。", -- 能量循环
		},
		--[+ SUNDER +]--
		-- Energized Heavy Melee Attack Damage (per tier)
		-- Power Swords -- 5% | 10% | 15% | 20%
		["loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks_and_heavy_damage_desc"] = { -- heavy_damage: +20%, +colors
			en = "On Energised Attacks:\n"
				..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb").." Heavy Melee Attack "..CKWord("Damage", "Damage_rgb")..",\n"
				..CNumb("-", "n_minus_rgb")..CNumb("75%", "pc_75_rgb").." enemy "..CKWord("Hit Mass", "Hit_mass_rgb").." which increases "..CKWord("Cleave", "Cleave_rgb")..".",
			ru = "Заряженные атаки получают:\n"
				..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." от тяжёлых атак и\n"
				..CNumb("75%", "pc_75_rgb").." игнорирования "..CKWord("ударной массы", "udarn_massy_rgb_ru").." врага, что увеличивает "..CKWord("рассечение", "rassechenie_rgb_ru")..".", -- Сокрушение -- руоф Сандер
			-- fr = "Lors d'un coup énergisé, augmente le "..CKWord("Transpercement", "Cleave_rgb_fr").." et les "..CKWord("Dégâts", "Damage_rgb_fr").." des attaques puissantes de mélée de "..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb")..".",
			-- ["zh-tw"] = "充能攻擊時 "..CKWord("Damage_s", "Damage_s_rgb_tw").." "..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb").."，\n並強化 "..CKWord("Cleaving", "Cleaving_rgb_tw").." 。", -- 破甲
				-- 動力劍 -- 5% | 10% | 15% | 20%
			-- ["zh-cn"] = "充能攻击 "..CNumb("{heavy_damage:%s}", "dmghvy_var_rgb").." 近战重攻击"..CKWord("伤害", "Damage_rgb_zh_cn").."，\n同时无视装甲赋予的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"), -- 切裂
		},
		--[+ SUCKER PUNCH +]--
		-- Melee Crit Chance (per tier)
		-- Latrine Shovels -- 7.5% | 10% | 12.5% | 15%
		["loc_trait_bespoke_increased_crit_chance_after_punch_desc"] = { -- crit_chance: +15%, time: 3, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Special Action Hit. "
				..CPhrs("Can_be_refr")..Dot_red.." Does not benefit Ranged weapons.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при ударе специальной атакой.\n"
				..CPhrs("Can_be_refr").."\n"
				..Dot_red.." Не влияет на дальнобойные атаки.", -- Удар исподтишка
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un coup d'action spéciale.",
			-- ["zh-tw"] = "特殊攻擊命中時 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 突然襲擊
				-- 廁所鏟 -- 7.5% | 10% | 12.5% | 15%
			-- ["zh-cn"] = "特殊攻击命中敌人时 \n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." 近战"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 出其不意
		},
		--[+ CONFIDENT STRIKE +]--
		-- Max Toughness Percentage (per tier)
		-- Arbites Shock Maul, Battle Maul and Shield, Bully Clubs, Cleavers, Latrine Shovels, Pickaxes, Power Maul, Shock Mauls and Shield -- 5% | 6% | 7% | 8%
		["loc_trait_bespoke_toughness_recovery_on_chained_attacks_desc"] = { -- toughness: +8%, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." on Chained Hit. "
				..Dot_green.." Procs additionally to "..CKWord("Toughness", "Toughness_rgb").." replenishments from Talents. "..CPhrs("Dont_intw_coher_tghn"),
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." при серии ударов.\n"
				..Dot_green.." Срабатывает совместно с восстановлением "..CKWord("стойкости", "stoikosti_rgb_ru").." от талантов. "..CPhrs("Dont_intw_coher_tghn"), -- Уверенный удар
			-- fr = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Robustesse", "Toughness_rgb_fr").." lors d'un coup en chaîne.",
			-- ["zh-tw"] = "連續攻擊時 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."。", -- 堅定打擊
				-- 作戰大槌and板盾, 惡棍棒, 砍刀, 廁所鏟, 十字鎬, 動力錘 -- 5% | 6% | 7% | 8%
			-- ["zh-cn"] = "连锁攻击命中时，"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。", -- 自信打击
		},
		--[+ NO GUTS, NO GLORY +]--
		-- Duration (per tier)
		-- Bully Clubs -- 2s | 3s | 4s | 5s
		["loc_trait_bespoke_toughness_regen_on_punching_elites_desc"] = { -- toughness: +8%,  time: 5, s->seconds, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." Regeneration per second for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Elite Special Action Hit.\n"
				..CPhrs("Can_be_refr"),
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." к восстанавлению "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду в течение "..CNumb("{time:%s}", "time_var_rgb").." секунд при попадании специальной атакой по элитному врагу.", -- Нет смелости — нет славы
			-- fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de régénération de "..CKWord("Robustesse", "Toughness_rgb_fr").." par seconde pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un coup d'action spéciale sur un élite.",
			-- ["zh-tw"] = "特殊攻擊命中精英時，每秒恢復 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n兩段式恢復，立刻恢復X韌性、持續恢復X韌性。", -- 不入虎穴，焉得虎子
			-- 惡棍棒 -- 2 | 3 | 4 | 5
			-- ["zh-cn"] = "特殊攻击命中精英敌人时 \n"..CNumb("{toughness:%s}", "tghns_var_rgb").." 连携"..CKWord("韧性", "Toughness_rgb_zh_cn").."回复，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 没有胆量，没有荣耀
		},
		--[+ BASH +]--
		-- Crit Chance (per tier)
		-- Cleavers -- 7.5% | 10% | 12.5% | 15%
		-- Crowbar -- 5% | 7.5% | 10% | 12.5%
		["loc_trait_bespoke_crit_chance_on_push_desc"] = { -- crit_chance: +15%,  time: 3, s->seconds, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Pushing Enemies. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при отталкивании врагов.\n"
				..CPhrs("Can_be_refr"), -- Удар
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes en poussant les ennemies.",
			-- ["zh-tw"] = "推開敵人時 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 猛撞
				-- 砍刀 -- 7.5% | 10% | 12.5% | 15%
			-- ["zh-cn"] = "推搡敌人时 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 近战"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 猛击
		},
		--[+ TENDERISER +]--
		-- Power (per tier)
		-- Cleavers -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits_desc"] = { -- power: +15%, +colors
			en = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for your next "..CNumb("3", "n_3_rgb").." Melee attacks after Weapon Special attack Hit.\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power:%s}", "pwr_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." для следующих "..CNumb("3", "n_3_rgb").." атак ближнего боя после удара специальной атакой. "
				..CNote("Pwr_note"), -- Молот мясника
			-- fr = CNumb("{power:%s}", "pwr_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pour vos "..CNumb("3", "n_3_rgb").." prochaines attaques de mélée lors d'une attaque spéciale d'arme réussie."..CNote("Pwr_note"),
			-- ["zh-tw"] = "特殊攻擊命中敵人時，接下來 "..CNumb("3", "n_3_rgb").." 次的近戰攻擊，\n獲得 "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 肉槌
				-- 砍刀 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = "特殊攻击命中敌人时，\n下 "..CNumb("3", "n_3_rgb").." 次近战攻击 "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。"..CNote("Pwr_note"), -- 大肉锤
		},
		--[+ UNSTOPPABLE FORCE +]--	08.12.2025
		-- Fully Charged Melee Damage (per tier)
		-- Cleavers, Crowbar -- 2.5% | 5% | 7.5% | 10%
		["loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack_desc"] = { -- damage: 10%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." to Fully Charged Heavy Attacks. They also ignore Enemy "..CKWord("Hit Mass", "Hit_mass_rgb")..".",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." для полностью заряженных тяжёлых атак. Они также игнорируют "..CKWord("ударную массу", "udarn_massu_rgb_ru").." врага.", -- Неудержимая сила
			-- fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." pour les attaques puissantes pleinement chargées, elles ignorent également le "..CKWord("Coups en masse", "Hit_mass_rgb_fr").." des ennemies.",
			-- ["zh-tw"] = "完全蓄力的重攻擊 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."，\n並無視敵人的 "..CKWord("順劈目標", "Hit_mass_rgb_tw").."。", -- 勢不可擋
				-- 砍刀 -- 2.5% | 5% | 7.5% | 10%
			-- ["zh-cn"] = "完全蓄力的重攻击 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").." 同时无视装甲赋予的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"), -- 势不可挡
		},
		--[+ TORMENT +]--
		-- Melee Power (per tier)
		-- Pickaxes -- 12% | 16% | 20% | 24%
		["loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"] = { -- power_level: +24%,  time: 3.5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Weapon Special Hit. "
				..CPhrs("Can_be_refr").." "..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при ударе специальной атакой. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"), -- Истязание
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une attaque spéciale d'arme réussie."..CNote("Pwr_note"),
			-- ["zh-tw"] = "特殊攻擊命中敵人時 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 凌遲
				-- 十字鎬 -- 12% | 16% | 20% | 24%
			-- ["zh-cn"] = "特殊攻击命中敌人时 \n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"), -- 折磨
		},
		--[+ SLOW AND STEADY +]--
		-- Max Toughness Percentage per stack (per tier)
		-- Pickaxes -- 5% | 6% | 7% | 8% (up to 24%)
		["loc_trait_bespoke_toughness_on_hit_based_on_charge_time_desc"] = { -- toughness: 8%, +colors
			en = "Up to "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." recovered based on the charge time of your Heavy Attacks.\n"
				..CPhrs("Dont_intw_coher_tghn"),
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при ударе врага тяжёлой атакой, в зависимости от времени заряжания атаки.", -- Медленно, но верно -- руоф Медленный и упорный
			-- fr = "Récupérez "..CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." lorsque vous touchez un ennemie avec une attaque puissante, dépend du temps de charge.",
			-- ["zh-tw"] = "重擊攻擊命中敵人時 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，\n回復量依據蓄力時間恢復。", -- 緩慢而確實
				-- 十字鎬 -- 5% | 6% | 7% | 8% (up to 24%)
			-- ["zh-cn"] = "随重攻击蓄力时间增加叠加层数，\n命中敌人时，每层使"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。\n最多叠加 "..CNumb("3", "n_3_rgb").." 层。", -- 步稳行远
		},
		--[+ POWER SURGE +]--	08.12.2025
		-- Explosion Radius Increase (per tier)
		-- Power Maul -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_explosion_on_activated_attacks_on_armor_new_desc"] = { -- explosion_radius: 25%, +colors
			en = CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb").." Explosion Radius to Special Attacks. Special Attacks on Armored Enemies cause an additional Shockwave.",
			ru = CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb").." к радиусу взрыва от специальных атак. Специальные атаки по бронированным врагам создают дополнительную ударную волну.", -- Энергетический заряд -- руоф Скачок напряжения
			-- fr = "Le rayon d'explosion des attaques spéciales augmente de "..CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb")..". Les attaques spéciales sur des ennemies en armure engendrent une onde de choc supplémentaire.",
			-- ["zh-tw"] = "特殊攻擊的爆炸半徑 "..CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb").."。\n對護甲敵人使用特殊攻擊時產生額外的衝擊波。", -- 能量湧動
				-- 動力錘 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = CNumb("{explosion_radius:%s}", "explosion_rad_var_rgb").." 充能攻击爆炸范围。\n充能攻击命中首个目标后，\n命中着甲敌人，额外引发一次爆炸。", -- 能量激增
		},
		--[+ LAST GUARD +]--
		-- Cooldown and Block Cost Reduction (per tier)
		-- Battle Maul and Shield, Shock Mauls and Shield -- 18s and 15% | 15s and 20% | 12s and 25% | 9s and 30%
		["loc_trait_block_break_pushes_new_desc"] = { -- block_cost: -30%, cooldown: 15, +colors
			en = CNumb("{block_cost:%s}", "block_var_rgb").." Block Cost. Pushes back enemies within a "..CNumb("5", "n_5_rgb").." meter radius when "..CKWord("Stamina", "Stamina_rgb").." reaches "..CNumb("0", "n_0_rgb").." from Blocking an attack. Cooldown "..CNumb("{cooldown:%s}", "cd_var_rgb").." seconds.",
			ru = CNumb("{block_cost:%s}", "block_var_rgb").." затрат "..CKWord("выносливости", "vynoslivosti_rgb_ru").." на блок. Вы отталкиваете врагов в радиусе "..CNumb("5", "n_5_rgb").." метров, когда уровень "..CKWord("выносливости", "vynoslivosti_rgb_ru").." достигает "..CNumb("0", "n_0_rgb").." при блокировании атак. Восстановление "..CNumb("{cooldown:%s}", "cd_var_rgb").." секунд.", -- Последний страж
			-- fr = CNumb("{block_cost:%s}", "block_var_rgb").." de réduction du coût de blocage. Quand l'"..CKWord("Endurance", "Stamina_rgb_fr").." de l'Ogryn atteint "..CNumb("0", "n_0_rgb").." en bloquant des attaques, il repousse les ennemies dans un rayon de "..CNumb("5", "n_5_rgb").." mètres. Temps de recharge : "..CNumb("{cooldown:%s}", "cd_var_rgb").." secondes.",
			-- ["zh-tw"] = "格擋消耗降低 "..CNumb("{block_cost:%s}", "block_var_rgb").."。\n當耐力降至 "..CNumb("0", "n_0_rgb").." 並成功格擋攻擊時，\n擊退 "..CNumb("5", "n_5_rgb").." 公尺內的敵人。冷卻時間 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒。", -- 最後防線
				-- 作戰大槌and板盾 -- 18s and 15% | 15s and 20% | 12s and 25% | 9s and 30%
			-- ["zh-cn"] = CNumb("{block_cost:%s}", "block_var_rgb").." 格挡消耗。格挡期间"..CKWord("体力", "Stamina_rgb_zh_cn").."耗尽时，\n推开 "..CNumb("5", "n_5_rgb").." 米内的敌人，冷却时间 "..CNumb("{cooldown:%s}", "cd_var_rgb").." 秒。", -- 最后的卫士
		},
		--[+ OFFENSIVE DEFENCE +]--
		-- Melee Power per stack (per tier)
		-- Battle Maul and Shield, Shock Mauls and Shield -- 4% | 6% | 8% | 10% (up to +50%)
		["loc_trait_damage_bonus_on_block_desc"] = { -- power: +10%, duration: 3.5, stacks: 5, +colors -- ..CNote("Pwr_note_rgb
			en = CNumb("{power:%s}", "pwr_var_rgb").." Melee "..CKWord("Strength", "Strength_rgb").." for your next Attack per "..CKWord("Stamina", "Stamina_rgb").." bar spent while Blocking. Stacks up to "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. Lasts "..CNumb("{duration:%s}", "dur_var_rgb").." seconds per Stack. Each Attack consumes "..CNumb("1", "n_1_rgb").." Stack and refreshes the active duration.",
			ru = CNumb("{power:%s}", "pwr_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." следующей атаки ближнего боя на "..CNumb("{duration:%s}", "dur_var_rgb").." секунды за каждую полоску "..CKWord("выносливости", "vynoslivosti_rgb_ru")..", потраченную на блок. До "..CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов. За удар тратится заряд, а время действия обновляется.", -- ..CNote("Pwr_note_rgb_ru -- Контратака -- руоф Активная оборона
			-- fr = "Pour chaque point d'"..CKWord("Endurance", "Stamina_rgb_fr").." dépensé pour bloquer. Votre prochaine attaque de mélée gagne "..CNumb("{power:%s}", "pwr_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." par cumule et consomme un cumule. Dure "..CNumb("{duration:%s}", "dur_var_rgb").." secondes. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			-- ["zh-tw"] = "每消耗一格 "..CKWord("耐力", "Stamina_rgb_tw").." 格擋時會獲得一層，\n下一次近戰攻擊每層 "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n並消耗 "..CNumb("1", "n_1_rgb").." 層充能。\n效果持續 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 反守為攻
				-- 作戰大槌and板盾 -- 4% | 6% | 8% | 10% (up to +50%)
			-- ["zh-cn"] = "格挡期间，每消耗 "..CNumb("1", "n_1_rgb").." "..CKWord("体力", "Stamina_rgb_zh_cn").." "..CNumb("{power:%s}", "pwr_var_rgb").." 近战"..CKWord("强度", "Strength_rgb_zh_cn").."，\n持续 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"), -- 以守为攻
		},
		--[+ CAN OPENER +]-- MELEE!	08.12.2025
		-- Brittleness Stacks (per tier)
		-- Crowbar -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_armor_rending_bayonette_crowbar_desc"] = { -- rending: 2.5%, stacks: 4, time: 5, max_stacks: 16, s->seconds, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." apply on Hit to enemies while in Secondary mode. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. Max "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks, up to "..CNumb("40%", "pc_40_rgb")..".\n"
				..CNote("Brtl_note"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда по "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони применяется к врагу при ударе, когда вы во вторичном режиме. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд. До "..CNumb("40%", "pc_40_rgb").." при "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядах. "
				..CNote("Brtl_note"), -- Открывашка
			-- fr = "Toucher un ennemi avec l'attaque spéciale lui octroie"..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CNumb("{rending:%s}", "rending_var_rgb").." de "..CKWord("Fragilité", "Brittleness_rgb_fr")..". Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes. Pour un maximum de "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls, Pour un total de "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			-- ["zh-tw"] = "特殊攻擊命中敵人時，\n使其獲得 "..CNumb("+", "n_plus_rgb")..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒， "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層時為 "..CNumb("40%", "pc_40_rgb").." 。" .. CNote("Brtl_note"), -- 開罐器
				-- 撕裂槍 -- 10 | 12 | 14 | 16
			-- ["zh-cn"] = "特殊攻击命中时，对目标施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 层，最高 "..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"), -- 开罐器
		},
		--[+ REFINED LETHALITY +]--	08.12.2025
		-- Melee Weakspot Damage (per tier)
		-- Bone Saw -- 52.5% | 55% | 57.5% | 60%
		["loc_trait_bespoke_increased_weakspot_damage_against_toxin_status_desc"] = { -- damage: +60%, time: 2, s->seconds, +colors, +note
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." against enemies affected by "..CKWord("Chem Toxin", "Chem_Tox_rgb")..".",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." врагам на которых действует эффект "..CKWord("Хим-токсина", "Chem_Toxa_rgb_ru")..".", -- Искусная смертоносность -- руоф 
			-- fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." de "..CKWord("Finesse", "Finesse_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une esquive réussie."..CNote("Fns_note"),
			-- ["zh-tw"] = "成功閃躲時 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("靈巧傷害", "Finesse_dmg_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，"..CNote("Fns_note"), -- 未卜先知
				-- 戰刃, 決鬥劍, 烈焰力場劍, 烈焰力場巨劍 -- 45% | 50% | 55% | 60%
			-- ["zh-cn"] = "成功闪避时 "..CNumb("{damage:%s}", "dmg_var_rgb").." 近战"..CKWord("灵巧伤害", "Finesse_dmg_rgb_zh_cn").."".."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Fns_note"), -- 预知
		},


	--[+ RANGED - ДАЛЬНИЙ БОЙ - 远程武器 +]--
		--[+ RAKING FIRE +]--	08.12.2025
		-- Flanking Damage (per tier)
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Infantry Autoguns, Laspistols -- 32.5% | 35% | 37.5% | 40%
		["loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking_desc"] = { -- damage: +40%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." when shooting Enemies in the back.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." при стрельбе врагам в спину.", -- Стрельба в тыл -- руоф Обстрел
			-- fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." lorsque vous tirez dans le dos des ennemies.",
			-- ["zh-tw"] = "從側翼或背後射擊敵人時 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."。", -- 掃射
				-- 撕裂者自動手槍, 步兵自動槍, 重型雷射手槍 -- 32.5% | 35% | 37.5% | 40%
			-- ["zh-cn"] = "远程背刺攻击 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。", -- 扫射
		},
		--[+ DUMDUM +]--
		-- Close Damage per stack (per tier)
		-- Infantry Autoguns, Laspistols, Recon Lasguns -- 4.5% | 5% | 5.5% | 6% (up to +30%)
		["loc_trait_bespoke_consecutive_hits_increases_close_damage_desc"] = { -- damage: +6%, stacks: 5, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." to enemies within "..CNumb("12.5", "n_12_5_rgb").." meters on Repeated Hit. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.\n"
				..CPhrs("Can_be_refr"),
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров при повторной атаке. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr"), -- Дум-дум -- руоф Дамдам
			-- fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." rapprochés lors d'un coup répété. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "在 "..CNumb("12.5", "n_12_5_rgb").." 公尺內，\n連續命中時 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 達姆彈
				-- 步兵自動槍, 重型雷射手槍, 偵查雷射槍 -- 4.5% | 5% | 5.5% | 6% (up to +30%)
			-- ["zh-cn"] = "反复命中时，对 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人\n"..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 达姆弹
		},
		--[+ HIT & RUN / HIT AND RUN +]--	08.12.2025
		-- Duration (per tier)
		-- Braced Autoguns, Combat Shotguns, Double-Barrel Shotgun, Dual Stub Pistols, Infantry Autoguns, Recon Lasguns -- 0.7s | 0.8s | 0.9s | 1s
		["loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill_desc"] = { -- time: 1, s->second, +colors
			en = "Immune to Ranged Attacks for "..CNumb("{time:%s}", "time_var_rgb").." second after killing an enemy within "..CNumb("12.5", "n_12_5_rgb").." meters.\n"
				..CPhrs("Can_be_refr"),
			ru = "Иммунитет к дальнобойным атакам на "..CNumb("{time:%s}", "time_var_rgb").." секунду при убийстве врага на расстоянии не более "..CNumb("12.5", "n_12_5_rgb").." метров.\n"
				..CPhrs("Can_be_refr"), -- Бей и беги
			-- fr = "Immunité contre les attaques à distance pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination à moins de "..CNumb("12.5", "n_12_5_rgb").." mètres.",
			-- ["zh-tw"] = "在 "..CNumb("12.5", "n_12_5_rgb").." 公尺內擊殺敵人時，\n獲得對遠程攻擊的免疫效果，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 游擊
				-- 槍托自動槍, 戰鬥霰彈槍, 雙管霰彈槍, 步兵自動槍, 偵查雷射槍 -- 0.7 | 0.8 | 0.9 | 1
			-- ["zh-cn"] = "击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时，\n闪避全部远程攻击，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 边打边跑
		},
		--[+ SUSTAINED FIRE +]--	08.12.2025
		-- Ranged Damage (per tier)
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Electrokinetic Staff, Exterminator Shotguns, Helbore Lasguns, Infantry Autoguns, Recon Lasguns, Stub Revolvers, Voidblast Staff, Voidstrike Staff -- 14% | 16% | 18% | 20%
		["loc_trait_bespoke_followup_shots_ranged_damage_desc"] = { -- damage: +20%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." on Second, Third and Fourth shots in a Salvo.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." для второго, третьего и четвёртого выстрела залпа.", -- Непрерывная стрельба -- руоф Непрерывный огонь
			-- fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." lors des "..CNumb("2e", "n_2e_rgb")..", "..CNumb("3e", "n_3e_rgb")..", "..CNumb("4e", "n_4e_rgb").." tirs d'une salve.",
			-- ["zh-tw"] = "齊射的第二、三與第四發射擊，\n獲得 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."。", -- 持續射擊
				-- 撕裂者自動手槍, 電流力場法杖, 冥潮雷射槍, 步兵自動槍, 偵查雷射槍, 快拔左輪手槍, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 14% | 16% | 18% | 20%
			-- ["zh-cn"] = "齐射的第二、第三和第四发射击\n"..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。",
		},
		--[+ PUNISHING SALVO +]--
		-- Ranged Weakspot Damage (per tier)
		-- Exterminator Shotguns, Infantry Autoguns, Recon Lasguns -- 35% | 40% | 45% | 50%
		["loc_trait_bespoke_followup_shots_ranged_weakspot_damage_desc"] = { -- damage: +50%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." on Second, Third and Fourth shots in a Salvo.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." для второго, третьего и четвёртого выстрела залпа.", -- Карательный залп
			-- fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégât sur point faible", "Weakspot_dmg_rgb_fr").." lors des "..CNumb("2e", "n_2e_rgb")..", "..CNumb("3e", "n_3e_rgb")..", "..CNumb("4e", "n_4e_rgb").." tirs d'une salve.",
			-- ["zh-tw"] = "齊射的第二、三與第四發射擊，\n獲得 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").."。", -- 懲罰齊射
				-- 步兵自動槍, 偵查雷射槍 -- 35% | 40% | 45% | 50%
			-- ["zh-cn"] = "齐射的第二、第三和第四发射击\n"..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。", -- 惩戒齐射
		},
		--[+ FIRE FRENZY +]--
		-- Close Damage per stack (per tier)
		-- Boltguns, Braced Autoguns, Combat Shotguns, Exterminator Shotguns, Twin-Linked Stubbers, Infantry Autoguns, Ripper Guns, Shotpistol and Shield -- 7% | 8% | 9% | 10% (up to +50%)
		["loc_trait_bespoke_increase_close_damage_on_close_kill_desc"] = { -- close_damage: +10%, time: 3.5, stacks: 5, +colors
			en = CNumb("{close_damage:%s}", "dmgcls_var_rgb").." "..CKWord("Damage", "Damage_rgb").." to enemies within "..CNumb("12.5", "n_12_5_rgb").." meters for "..CNumb("{time:%s}", "time_var_rgb").." seconds after killing an enemy within "..CNumb("12.5", "n_12_5_rgb").." meters. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{close_damage:%s}", "dmgcls_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." врагам на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров на "..CNumb("{time:%s}", "time_var_rgb").." секунды после убийства врага в пределах "..CNumb("12.5", "n_12_5_rgb").." метров. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr"), -- Неистовая стрельба -- руоф Огненное неистовство
			-- fr = "Gagnez "..CNumb("{close_damage:%s}", "dmgcls_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." rapprochés pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination à moins de "..CNumb("12.5", "n_12_5_rgb").." mètres. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "在 "..CNumb("12.5", "n_12_5_rgb").." 公尺內擊殺敵人，\n"..CNumb("{close_damage:%s}", "dmgcls_var_rgb").." "..CKWord("近戰傷害", "Damage_melee_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 烈火熱焰
			-- 矛頭爆矢槍, 槍托自動槍, 戰鬥霰彈槍, 雙鏈重型機槍, 步兵自動槍, 撕裂槍 -- 7% | 8% | 9% | 10% (up to +50%)
			-- ["zh-cn"] = "击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时 \n对 "..CNumb("12.5", "n_12_5_rgb").." 米内目标 "..CNumb("{close_damage:%s}", "dmgcls_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 疯狂射击
		},
		--[+ DEATHSPITTER +]--
		-- Power per stack (per tier) and Stack Duration
		-- Braced Autoguns, Combat Shotguns, Exterminator Shotguns, Twin-Linked Stubbers, Infantry Autoguns, Recon Lasguns, Shotpistol and Shield -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 3.5s
		-- Double-Barrel Shotgun -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 5s
		["loc_trait_bespoke_increase_power_on_close_kill_desc"] = { -- power_level: 6.5%, time: 3.5, stacks: 5, +colors, +note
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds after killing an enemy within "..CNumb("12.5", "n_12_5_rgb").." meters. Up to "..CNumb("5", "n_5_rgb").." Stacks. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при убийстве врага на дистанции до "..CNumb("12.5", "n_12_5_rgb").." метров. До "..CNumb("5", "n_5_rgb").." зарядов. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"), -- Смертоплюй -- руоф Смертоносец
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination à moins de "..CNumb("12.5", "n_12_5_rgb").." mètres. Se cumule jusqu'à "..CNumb("5", "n_5_rgb").." fois."..CNote("Pwr_note"),
			-- ["zh-tw"] = "在"..CNumb("12.5", "n_12_5_rgb").." 公尺內擊殺敵人 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，上限 "..CNumb("5", "n_5_rgb").." 層。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 死亡噴吐
			-- 槍托自動槍, 戰鬥霰彈槍, 雙鏈重型機槍, 步兵自動槍, 偵查雷射槍 -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 3.5s
			-- 雙管霰彈槍 -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 5s
			-- ["zh-cn"] = "击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时 \n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("5", "n_5_rgb").." 层。"..CNote("Pwr_note"), -- 死亡喷吐
		},
		--[+ STRIPPED DOWN +]--	08.12.2025
		-- Max Stamina Percentage Threshold (per tier)
		-- Braced Autoguns, Infantry Autoguns, Needle Pistols, Recon Lasguns -- 80% | 70% | 60% | 50%
		["loc_trait_bespoke_increased_sprint_speed_desc"] = { -- stamina: 50%, +colors
			en = "Gain Ranged Attack Immunity while Sprinting with over "..CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("Stamina", "Stamina_rgb")..".",
			ru = "Вы получаете иммунитет от атак дальнего боя при беге с уровнем "..CKWord("выносливости", "vynoslivosti_rgb_ru").." превышающим "..CNumb("{stamina:%s}", "stam_var_rgb")..".", -- Сбросить лишнее -- руоф Срез
			-- fr = "Gagnez une immunité contre les attaques à distance lorsque vous courez avec plus de "..CNumb("{stamina:%s}", "stam_var_rgb").." d'"..CKWord("Endurance", "Stamina_rgb_fr")..".",
			-- ["zh-tw"] = "當衝刺時 "..CKWord("耐力消耗", "Stamina_c_r_rgb_tw").." 超過 "..CNumb("{stamina:%s}", "stam_var_rgb").." 時，\n將獲得對遠程攻擊的免疫效果。", -- 輕裝
			-- 槍托自動槍, 步兵自動槍, 偵查雷射槍 -- 80% | 70% | 60% | 50%
			-- ["zh-cn"] = "以超过 "..CNumb("{stamina:%s}", "stam_var_rgb").." "..CKWord("体力", "Stamina_rgb_zh_cn").."疾跑时，\n闪避全部远程攻击。", -- 简装
		},
		--[+ SPEEDLOAD +]--	08.12.2025
		-- Reload Speed per stack (per tier) and Duration
		-- Autopistol, Dual Autopistols, Dual Stub Pistols -- 7% | 8% | 9% | 10% (up to +50%) | 2s
		-- Braced Autoguns, Infantry Autoguns -- 7% | 8% | 9% | 10% (up to +50%) | 2.5s 
		-- Double-Barrel Shotgun, Laspistols, Needle Pistols, Recon Lasguns -- 7% | 8% | 9% | 10% (up to +50%) | 3s
		-- Shotpistol and Shield, Stub Revolvers -- 7% | 8% | 9% | 10% (up to +50%) | 4s
		["loc_trait_bespoke_reload_speed_on_slide_desc"] = { -- reload_speed: 10%, time: 2.5, stacks: 5, +colors, +note
			en = CNumb("{reload_speed:%s}", "reload_var_rgb").." Reload Speed for "..CNumb("{time:%s}", "time_var_rgb").." seconds after killing an enemy within "..CNumb("12.5", "n_12_5_rgb").." meters. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr").." "..Dot_red.." DoT kills cannot proc it.",
			ru = CNumb("{reload_speed:%s}", "reload_var_rgb").." к скорости перезарядки на "..CNumb("{time:%s}", "time_var_rgb").." секунды после убийства врага на дистанции до "..CNumb("12.5", "n_12_5_rgb").." метров. До "..CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов. "
				..CPhrs("Can_be_refr").." "..Dot_red.." Не срабатывает от убийств эффектами.", -- Быстрая перезарядка -- руоф Скоростная загрузка
			-- fr = CNumb("{reload_speed:%s}", "reload_var_rgb").." de vitesse de rechargement pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une élimination à moins de "..CNumb("12.5", "n_12_5_rgb").." mètres. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "在 "..CNumb("12.5", "n_12_5_rgb").." 公尺內擊殺敵人後，\n"..CNumb("{reload_speed:%s}", "reload_var_rgb").." 換彈速度，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 快速裝彈
				-- 撕裂者自動手槍 -- 7% | 8% | 9% | 10% (up to +50%) | 2s
				-- 槍托自動槍, 步兵自動槍 -- 7% | 8% | 9% | 10% (up to +50%) | 2.5s
				-- 雙管霰彈槍, 重型雷射手槍, 偵查雷射槍 -- 7% | 8% | 9% | 10% (up to +50%) | 3s
				-- 快拔左輪手槍-- 7% | 8% | 9% | 10% (up to +50%) | 4s
			-- ["zh-cn"] = "击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时\n"..CNumb("{reload_speed:%s}", "reload_var_rgb").." 装弹速度，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 速度装弹
		},
		--[+ TERRIFYING BARRAGE +]--	08.12.2025
		-- Suppression Amount (per tier)
		-- Autopistol, Boltguns, Braced Autoguns, Combat Shotguns, Double-Barrel Shotgun, Dual Autopistols, Dual Stub Pistols, Electrokinetic Staff, Twin-Linked Stubbers, Infantry Autoguns, Inferno Staff, Kickback, Ripper Guns, Stub Revolvers, Voidblast Staff, Voidstrike Staff -- 15 | 20 | 25 | 30
		["loc_trait_bespoke_suppression_on_close_kill_desc"] = { -- rewrited, +colors, 5m->5meters
			en = "Suppress Enemies within "..CNumb("12.5", "n_12_5_rgb").." meters after killing an enemy within "..CNumb("12.5", "n_12_5_rgb").." meters away.",
			ru = "Вы подавляете врагов в радиусе "..CNumb("12.5", "n_12_5_rgb").." метров после убийства врага на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров.", -- Устрашающий обстрел -- руоф Устрашающий натиск
			-- fr = "Infligez Suppression aux ennemies lors d'une élimination jusqu'à une distance de "..CNumb("12.5", "n_12_5_rgb").." mètres.",
			-- ["zh-tw"] = "在 "..CNumb("12.5", "n_12_5_rgb").." 公尺內擊殺敵人後，\n對 "..CNumb("8", "n_8_rgb").." 公尺內敵人造成壓制效果。", -- 恐怖阻擊
				-- 撕裂者自動手槍, 矛頭爆矢槍, 槍托自動槍, 戰鬥霰彈槍, 雙管霰彈槍, 電流力場法杖, 雙鏈重型機槍, 步兵自動槍, 偵查雷射槍, 撕裂槍, 烈焰力場法杖, 反衝者, 快拔左輪手槍, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 15 | 20 | 25 | 30
			-- ["zh-cn"] = "击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时，\n压制 "..CNumb("12", "n_12_rgb").." 米内的敌人。", -- 恐怖弹幕
		},
		--[+ ROARING ADVANCE +]--
		-- Alt Fire Move Speed Penalty Reduction per stack (per tier)
		-- Braced Autoguns -- 10% | 15% | 20% | 25% (up to ~76%)
		-- Twin-Linked Stubbers -- 7% | 8% | 9% | 10% (up to ~41%)
		["loc_trait_bespoke_movement_speed_on_continuous_fire_desc"] = { -- movement_speed: 25%, ammo: 5%, stacks: 5, s->seconds, +colors
			en = CNumb("{movement_speed:%s}", "movspd_var_rgb").." Movement Speed Reduction for every "..CNumb("{ammo:%s}", "ammo_var_rgb").." of magazine spent during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{movement_speed:%s}", "movspd_var_rgb").." от штрафа снижения скорости движения при прицеливании за каждые "..CNumb("{ammo:%s}", "ammo_var_rgb").." магазина, потраченных во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.", -- Ревущее наступление
			-- fr = CNumb("{movement_speed:%s}", "movspd_var_rgb").." de réduction de vitesse de déplacement pour chaque "..CNumb("{ammo:%s}", "ammo_var_rgb").." du chargeur utilisé en tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "持續射擊時，每消耗 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 彈藥，\n"..CNumb("{movement_speed:%s}", "movspd_var_rgb").." 的移動速度懲罰，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 咆哮突進
				-- 槍托自動槍 -- 10% | 15% | 20% | 25% (up to ~76%)
				-- 雙鏈重型機槍 -- 7% | 8% | 9% | 10% (up to ~41%)
			-- ["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 的弹药，\n移动速度惩罚 "..CNumb("{movement_speed:%s}", "movspd_var_rgb").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 咆哮推进
		},
		--[+ CEASELESS BARRAGE +]--
		-- Increased Suppression and Damage vs Suppressed (per tier)
		-- Braced Autoguns, Twin-Linked Stubbers -- 12.5% and 4% | 15% and 5% | 17.5% and 6% | 20% and 7% (up to +100% and +35%)
		["loc_trait_bespoke_suppression_on_continuous_fire_desc"] = { -- suppression: +20%, damage_vs_suppressed: +6%, ammo: 2.5%, stacks: 5, +colors
			en = CNumb("{suppression:%s}", "spprsn_var_rgb").." Suppression and "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." "..CKWord("Damage", "Damage_rgb").." against Suppressed Enemies for every "..CNumb("{ammo:%s}", "ammo_var_rgb").." of magazine spent during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{suppression:%s}", "spprsn_var_rgb").." к подавлению и "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." по подавленным врагам за каждые "..CNumb("{ammo:%s}", "ammo_var_rgb").." магазина, потраченных во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.", -- Непрерывный обстрел -- руоф Беспощадный натиск
			-- fr = CNumb("{suppression:%s}", "spprsn_var_rgb").." de suppression et "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." contre les ennemies sous suppression pour chaque "..CNumb("{ammo:%s}", "ammo_var_rgb").." du chargeur utilisé en tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "持續射擊時，每消耗 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 彈藥，\n獲得 "..CNumb("{suppression:%s}", "spprsn_var_rgb").." 壓制效果強度，\n並對被壓制的敵人造成 "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 持續阻擊
				-- 槍托自動槍, 雙鏈重型機槍 -- 20% and 6% | 20% and 6% | 20% and 6% | 20% and 6% (up to +100% and +30%)	
			-- ["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 的弹药，\n"..CNumb("{suppression:%s}", "spprsn_var_rgb").." 压制效果，同时对被压制的敌人 "..CNumb("{damage_vs_suppressed}", "dmgvsprsd_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 无尽弹幕
		},
		--[+ INSPIRING BARRAGE +]--
		-- Max Toughness Percentage per stack (per tier)
		-- Autopistol, Boltguns, Braced Autoguns, Dual Autopistols, Flamer, Heavy Stubbers, Twin-Linked Stubbers, Ripper Guns -- 1% | 2% | 3% | 4% (up to 20%)
		["loc_trait_bespoke_toughness_on_continuous_fire_desc"] = { -- toughness: +4%, ammo: 10%, stacks: 5, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." for every "..CNumb("{ammo:%s}", "ammo_var_rgb").." of magazine spent during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." за каждые "..CNumb("{ammo:%s}", "ammo_var_rgb").." магазина, потраченных во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.", -- Вдохновляющий обстрел -- руоф Вдохновляющий натиск
			-- fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." pour chaque "..CNumb("{ammo:%s}", "ammo_var_rgb").." du chargeur utilisé en tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "持續射擊時，每消耗 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 彈藥，\n恢復 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 振奮彈幕
				-- 撕裂者自動手槍, 矛頭爆矢槍, 槍托自動槍, 淨化噴火器, 戰鬥霰彈槍, 雙鏈重型機槍, 撕裂槍 -- 1% | 2% | 3% | 4% (up to 20%)
			-- ["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 的弹药，回复"..CKWord("韧性", "Toughness_rgb_zh_cn")..",\n每叠加 "..CNumb("1", "n_1_rgb").." 层，"..CKWord("韧性", "Toughness_rgb_zh_cn").."回复效果 "..CNumb("{toughness:%s}", "tghns_var_rgb").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 鼓舞弹幕
		},
		--[+ GHOST +]--	08.12.2025
		-- Duration (per tier)
		-- Infantry Lasguns, Laspistols, Needle Pistols, Vigilant Autoguns -- 0.6s | 0.8s | 1s | 1.2s
		["loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot_desc"] = { -- time: 1.2, +colors
			en = "Immune to Ranged Attacks for "..CNumb("{time:%s}", "time_var_rgb").." seconds on "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". "
				..CPhrs("Can_be_refr"),
			ru = "Иммунитет к дальнобойным атакам на "..CNumb("{time:%s}", "time_var_rgb").." секунды при выстрелах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..". "
				..CPhrs("Can_be_refr"), -- Призрак
			-- fr = "Immunité contre les attaques à distance pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..".",
			-- ["zh-tw"] = "命中 "..CKWord("命中弱點", "Weakspothits_rgb_tw").." 時，\n獲得對遠程攻擊的免疫效果，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 幽靈
				-- 步兵雷射槍, 重型雷射手槍, 機動自動槍 -- 0.6 | 0.8 | 1 | 1.2
			-- ["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时，\n闪避全部远程攻击，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 鬼魂
		},
		--[+ SURGICAL +]--
		-- Stack Interval (per tier)
		-- Boltguns, Heavy Stubbers, Kickback, Vigilant Autoguns -- 0.35s | 0.3s | 0.25s | 0.2s
		-- Bolt Pistols, Helbore Lasguns, Stub Revolvers -- 0.45s | 0.4s | 0.35s | 0.3s
		["loc_trait_bespoke_crit_chance_based_on_aim_time_desc"] = { -- crit_chance: +10%, time: 0.2, stacks: 10, +colors, second->seconds
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for every "..CNumb("{time:%s}", "time_var_rgb").." seconds while aiming. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. Discharges all Stacks upon firing.\n"
				..Dot_nc.." Removes all Stacks when leaving alt fire mode.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." каждые "..CNumb("{time:%s}", "time_var_rgb").." секунды пока вы целитесь во врагов. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. Все заряды сбрасываются при стрельбе или при выходе из режима прицеливания.", -- Снайперская точность -- руоф Зоркость
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." chaque fois de vous passez "..CNumb("{time:%s}", "time_var_rgb").." secondes à viser. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. Tous les cumuls sont déchargés lorsque vous tirez.",
			-- ["zh-tw"] = "持續瞄準時，\n每 "..CNumb("{time:%s}", "time_var_rgb").." 秒 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層，射擊後將重置所有層數。", -- 精確打擊
				-- 矛頭爆矢槍, 反衝者, 機動自動槍 -- 0.35s | 0.3s | 0.25s | 0.2s
				-- 快拔左輪手槍, 爆彈手槍, 冥潮雷射槍 -- 0.45s | 0.4s | 0.35s | 0.3s
			-- ["zh-cn"] = "瞄准期间，每 "..CNumb("{time:%s}", "time_var_rgb").." 秒 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层，射击后清空所有层数。", -- 外科手术
		},
		--[+ CRUCIAN ROULETTE +]--	08.12.2025
		-- Crit Chance per Missing Round (per tier)
		-- Dual Stub Pistols -- 1% | 1.25% | 1.5% | 2%
		-- Stub Revolvers -- 4.5% | 5% | 5.5% | 6%
		-- Vigilant Autoguns -- 0.45% | 0.5% | 0.55% | 0.6%
		["loc_trait_bespoke_crit_chance_based_on_ammo_left_desc"] = { -- crit_chance: +0.6%, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for each expended round in your weapon. Resets on reload.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." за каждый израсходованный патрон в вашем оружии. Сбрасывается при перезарядке.", -- Круцианская рулетка
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pour chaque munition utilisée dans votre arme. Se réinitialise lorsque vous rechargez.",
			-- ["zh-tw"] = "每消耗一發彈藥 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."。\n在重新裝填時重置效果。", -- 克魯錫安輪盤
				-- 快拔左輪手槍 -- 4.5% | 5% | 5.5% | 6%
			-- ["zh-cn"] = "弹匣每缺失一枚弹药 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。", -- 轮盘赌
		},
		--[+ DEADLY ACCURATE +]--
		-- Crit Weakspot Damage (per tier)
		-- Bolt Pistols, Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns -- 70% | 80% | 90% | 100%
		["loc_trait_bespoke_crit_weakspot_finesse_desc"] = { -- crit_weakspot_damage: +100%, +colors
			en = CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." "..CKWord("Critical", "Critical_rgb").." "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..".",
			ru = CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." к "..CKWord("критическому", "kriticheskomu_rgb_ru").." "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..".", -- Смертоностная точность
			-- fr = CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." de "..CKWord("Dégâts de coup critique", "Crit_dmg_r_rgb_fr").." sur un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..".",
			-- ["zh-tw"] = CKWord("暴擊", "Crit_rgb_tw").." 時 "..CKWord("弱點傷害", "Weakspot_dmg_rgb_tw").." "..CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").."。", -- 致命精準
				-- 爆彈手槍, 步兵雷射槍, 機動自動槍 -- 70% | 80% | 90% | 100%
			-- ["zh-cn"] = CNumb("{crit_weakspot_damage:%s}", "critwkspdmg_var_rgb").." "..CKWord("暴击", "Crit_rgb_zh_cn")..""..CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn").."。", -- 致命精准
		},
		--[+ NO RESPITE +]--
		-- Stagger Count Damage (per tier)
		-- Combat Shotguns, Helbore Lasguns, Infantry Lasguns, Shotpistol and Shield, Vigilant Autoguns -- 14% | 16% | 18% | 20% (up to +140%)
		["loc_trait_bespoke_stagger_count_bonus_damage_desc"] = { -- damage: +20%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." on Hit to "..CKWord("Staggered", "Staggered_rgb").." Enemy. Enemies take increased "..CKWord("Damage", "Damage_rgb").." based on the strength of the "..CKWord("Stagger", "Stagger_rgb").." effect applied to them. Stacks "..CNumb("7", "n_7_rgb").." times.",
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." "..CKWord("ошеломлённым", "oshelomlennym_rgb_ru").." врагам. Враги получают повышенный "..CKWord("урон", "uron_rgb_ru").." в зависимости от мощности эффекта "..CKWord("ошеломления", "oshelomlenia_rgb_ru")..", наложенного на них. Суммируется "..CNumb("7", "n_7_rgb").." раз.", -- Без передышки -- руоф Нет отдыху
			-- fr = "Jusqu'à "..CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." lors d'un coup sur un ennemi qui "..CKWord("vacille", "Staggered_rgb_fr")..". Le plus l'ennemie "..CKWord("vacille", "Staggered_rgb_fr").." le plus il reçoit de "..CKWord("Dégâts", "Damage_rgb_fr")..".",
			-- ["zh-tw"] = "攻擊 "..CKWord("硬直中", "Stuns_rgb_tw").." 敵人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."。\n依據效果強度，你對其 "..CKWord("傷害", "Damage_rgb_tw").." 越高。", -- 刻不容緩
				-- 戰鬥霰彈槍, 冥潮雷射槍, 步兵雷射槍, 機動自動槍 -- 14% | 16% | 18% | 20% (up to +140%)
			-- ["zh-cn"] = "命中"..CKWord("踉跄", "Staggered_rgb_zh_cn").."敌人时，\n随敌人"..CKWord("踉跄", "Stagger_rgb_zh_cn").."程度增长叠加层数，\n每层 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。最多叠加"..CNumb("7", "n_7_rgb").." 层。", -- 不容喘息
		},
		--[+ OPENING SALVO +]--
		-- Ranged Power (per tier)
		-- Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns -- 14% | 16% | 18% | 20%
		["loc_trait_bespoke_power_bonus_on_first_shot_desc"] = { -- power_level: +20%, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." on Salvo's First shot.\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." для первого выстрела залпа. "
				..CNote("Pwr_note"), -- Первый выстрел залпа -- руоф Открывающий залп
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." lors du premier tir d'une salve."..CNote("Pwr_note"),
			-- ["zh-tw"] = "齊射的第一發射擊 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 開啟齊射
				-- 步兵雷射槍, 機動自動槍 -- 14% | 16% | 18% | 20%
			-- ["zh-cn"] = "齐射的第一发射击 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。"..CNote("Pwr_note"), -- 开场白
		},
		--[+ HEADHUNTER +]--
		-- Crit Chance per stack (per tier)
		-- Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns -- 14% | 16% | 18% | 20% (up to +100%)
		-- Recon Lasguns -- 3.5% | 4% | 4.5% | 5% (up to +20%)
		["loc_trait_bespoke_weakspot_stacking_crit_chance_desc"] = { -- crit_chance: +20%, stacks: 5, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." on "..CKWord("Weakspot Hit", "Weakspothit_rgb").." until your next "..CKWord("Critical Hit", "Crit_hit_rgb")..". Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." при выстрелах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..". Расходуется при следующем "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..". Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.", -- Охотник за головами
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." sur un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." jusqu'à votre prochain "..CKWord("Coup critique", "Crit_hit_rgb_fr")..". Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = CKWord("命中弱點", "Weakspothits_rgb_tw").." "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n在下一次 "..CKWord("暴擊", "Crit_rgb_tw").." 時消耗一層，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 獵頭者
				-- 步兵雷射槍, 機動自動槍 -- 14% | 16% | 18% | 20% (up to +100%)
				-- 偵查雷射槍 -- 3.5% | 4% | 4.5% | 5% (up to +20%)
			-- ["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层，\n"..CKWord("暴击命中", "Crit_hit_rgb_tw").."后清空所有叠加层数。", -- 猎颅者
		},
		--[+ BETWEEN THE EYES +]--	08.12.2025
		-- Duration (per tier)
		-- Infantry Lasguns, Laspistols, Needle Pistols, Vigilant Autoguns -- 2.4s | 2.8s | 3.2s | 3.6s
		["loc_trait_bespoke_suppression_negation_on_weakspot_desc"] = { -- time: 3.6, s->seconds, +colors
			en = "Gain Suppression Immunity for "..CNumb("{time:%s}", "time_var_rgb").." seconds on "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". "
				..CPhrs("Can_be_refr"),
			ru = "Вы получаете иммунитет к подавлению на "..CNumb("{time:%s}", "time_var_rgb").." секунды при выстрелах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..". "
				..CPhrs("Can_be_refr"), -- Промеж глаз
			-- fr = "Gagnez une immunité à la suppression pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..".",
			-- ["zh-tw"] = CKWord("命中弱點", "Weakspothits_rgb_tw").." 免疫壓制效果，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 正中眉心
				-- 步兵雷射槍, 重型雷射手槍, 機動自動槍 -- 2.4 | 2.8 | 3.2 | 3.6
			-- ["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时免疫压制，持续"..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 正中眉心
		},
		--[+ BLAZE AWAY +]--	08.12.2025
		-- Power per stack (per tier)
		-- Autopistol, Dual Autopistols, Flamer, Heavy Stubbers, Twin-Linked Stubbers, Ripper Guns -- 5% | 6% | 7% | 8% (up to +40%)
		["loc_trait_bespoke_power_bonus_on_continuous_fire_desc"] = { -- power_level: +8%, ammo: 10%, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for every "..CNumb("{ammo:%s}", "ammo_var_rgb").." of magazine spent during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." за каждые "..CNumb("{ammo:%s}", "ammo_var_rgb").." магазина, потраченных во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CNote("Pwr_note"), -- Стрельба без устали -- руоф Энтузиазм
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pour chaque "..CNumb("{ammo:%s}", "ammo_var_rgb").."  du chargeur utilisé en tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			-- ["zh-tw"] = "持續射擊時，每消耗 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 彈藥，\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 連續發射
				-- 撕裂者自動手槍, 淨化噴火器, 雙鏈重型機槍, 撕裂槍, 擲彈兵臂鎧, 烈焰力場法杖, 反衝者, 電漿槍, 震盪槍 -- 5% | 6% | 7% | 8% (up to +40%)
			-- ["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 的弹药，\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"), -- 连续射击
		},
		--[+ POWDERBURN +]--	08.12.2025
		-- Damage vs Suppressed and Suppression and Reduced Recoil (per tier)
		-- Autopistol, Dual Autopistols, Dual Stub Pistols, Exterminator Shotguns -- 14% and 28% and -28% | 16% and 32% and -32% | 18% and 36% and -36% | 20% and 40% and -40%
		["loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills_desc"] = { -- damage: +20%, suppression: +40%, recoil_reduction: -40%, +colors
			en = CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Damage", "Damage_rgb").." against Suppressed Enemies, "..CNumb("{suppression:%s}", "spprsn_var_rgb").." Suppression and "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." Recoil on killing enemies within "..CNumb("12.5", "n_12_5_rgb").." meters. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." против подавленных врагов, "..CNumb("{suppression:%s}", "spprsn_var_rgb").." к подавлению и "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." к отдаче при убийстве врагов на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров.\n"
				..CPhrs("Can_be_refr"), -- Пороховой ожог
			-- fr = CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." contre les ennemies subissant Suppression, "..CNumb("{suppression:%s}", "spprsn_var_rgb").." de suppression et "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." de recul jusqu'à une distance de "..CNumb("12.5", "n_12_5_rgb").." mètres.",
			-- ["zh-tw"] = CNumb("12.5", "n_12_5_rgb").." 公尺內，\n對被壓制的敵人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."，\n"..CNumb("{suppression:%s}", "spprsn_var_rgb").." 壓制強度，降低 "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." 後座力。", -- 火藥灼傷
				-- 撕裂者自動手槍 -- 14% and 28% and -28% | 16% and 32% and -32% | 18% and 36% and -36% | 20% and 40% and -40%
			-- ["zh-cn"] = "对被压制敌人 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。\n击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时\n"..CNumb("{suppression:%s}", "spprsn_var_rgb").." 压制效果，同时 "..CNumb("{recoil_reduction:%s}", "recoil_red_var_rgb").." 后坐力。", -- 火药燃烧
		},
		--[+ CAVALCADE +]--	08.12.2025
		-- Crit Chance per stack (per tier)
		-- Autopistol, Boltguns, Heavy Stubbers, Ripper Guns -- 3.5% | 4% | 4.5% | 5% (up to +25%)
		["loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire_desc"] = { -- crit_chance: +20%, ammo: 10%, stacks: 5, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for every "..CNumb("{ammo:%s}", "ammo_var_rgb").." of magazine spent during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." за каждые "..CNumb("{ammo:%s}", "ammo_var_rgb").." магазина, потраченных во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.", -- Кавалькада
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pour chaque "..CNumb("{ammo:%s}", "ammo_var_rgb").."  du chargeur utilisé en tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "持續射擊時，每消耗 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 彈藥，\n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 接連不斷
				-- 撕裂者自動手槍, 矛頭爆矢槍, 撕裂槍 -- 3.5% | 4% | 4.5% | 5% (up to +25%)
			-- ["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..CNumb("{ammo:%s}", "ammo_var_rgb").."的弹药，\n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 列队行进
		},
		--[+ PINNING FIRE +]--	08.12.2025
		-- Power per stack (per tier)
		-- Autopistol, Boltguns, Dual Autopistols, Dual Stub Pistols, Heavy Stubbers -- 4.25% | 4.5% | 4.75% | 5% (up to +25%)
		["loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies_desc"] = { -- power_level: +8%, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for every Enemy you "..CKWord("Stagger", "Stagger_rgb")..". Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." за каждого "..CKWord("ошеломлённого", "oshelomlennogo_rgb_ru").." вами врага. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.\n"
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"), -- Подавляющий огонь -- руоф Схватывающий огонь
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pour chaque ennemie que vous faites "..CKWord("vaciller", "Staggering_rgb_fr")..". Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			-- ["zh-tw"] = "使敵人 "..CKWord("暈眩", "Stun_rgb_tw").." 時 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 鉗制射擊
				-- 撕裂者自動手槍, 矛頭爆矢槍 -- 4.25% | 4.5% | 4.75% | 5% (up to +25%)
			-- ["zh-cn"] = CKWord("踉跄", "Stagger_rgb_zh_cn").."敌人时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"), -- 火力压制
		},
		--[+ RUN 'N' GUN - RUN AND GUN +]--	08.12.2025
		-- Close Damage (per tier) and Spread Reduction
		-- Bolt Pistols, Dual Autopistols, Dual Stub Pistols, Electrokinetic Staff, Inferno Staff, Kickback, Needle Pistols, Shotpistol and Shield, Stub Revolvers, Voidblast Staff, Voidstrike Staff -- 6% | 9% | 12% | 15% | -30%
		-- Double-Barrel Shotgun -- 6% | 9% | 12% | 15% | -10%
		["loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats_desc"] = { -- damage_near: +15%, weapon_spread: 30%, +colors
			en = CNumb("{damage_near:%s}", "dmgnr_var_rgb").." "..CKWord("Damage", "Damage_rgb").." to enemies within "..CNumb("12.5", "n_12_5_rgb").." meters while Sprinting. "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").." weapon Spread. You can Hipfire with this weapon while Sprinting.",
			ru = CNumb("{damage_near:%s}", "dmgnr_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." по врагам в пределах "..CNumb("12.5", "n_12_5_rgb").." метров от вас пока вы бежите.\n"
				..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").." к разбросу оружия. Вы можете с этим оружием вести огонь от бедра на бегу.", -- Стреляй и беги
			-- fr = "Vous pouvez tirer à l'aveugle avec cette arme en courant. "..CNumb("{damage_near:%s}", "dmgnr_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." rapprochés en courant. Réduit également l'angle de tir des armes de "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").." en toute circonstance.",
			-- ["zh-tw"] = "衝刺時可以腰射。\n衝刺期間近距離傷害 "..CNumb("{damage_near:%s}", "dmgnr_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."，\n並 "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").." 武器散布。", -- 連跑帶打
				-- 爆彈手槍, 電流力場法杖, 烈焰力場法杖, 反衝者, 快拔左輪手槍, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 6% | 9% | 12% | 15% | -30%
				-- 雙管霰彈槍 -- 6% | 9% | 12% | 15% | -10%
			-- ["zh-cn"] = "武器散布 "..CNumb("{weapon_spread:%s}", "weapsprd_var_rgb").."。疾跑时可以腰射。\n对 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人 "..CNumb("{damage_near:%s}", "dmgnr_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。{#color(255, 35, 5)}\n（显示BUG：武器散布数值为 -X%，\n伤害数值为 +X%。）{#reset()", -- 跑步射击
		},
		--[+ PUNCTURE +]--
		-- Bleed Stacks (per tier)
		-- Boltguns, Bolt Pistols -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_bleed_on_ranged_desc"] = { -- stacks: 4, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CKWord("Bleed", "Bleed_rgb").." applied to enemies on Ranged hits. "
				..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Stacks. "..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда "..CKWord("кровотечения", "krovotechenia_rgb_ru").." накладывается на врагов при дальнобойных атаках.\n"
				..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов. "..CPhrs("Refr_dur_stappl").."\n"
				..CPhrs("Cant_appl_thr_shlds"), -- Прокол
			-- fr = CNumb("+", "n_plus_rgb")..CNumb("{stacks:%s}", "stacks_var_rgb").." Cumuls de "..CKWord("Saignement", "Bleed_rgb_fr").." aux ennemis sur les coups à distance.",
			-- ["zh-tw"] = "遠程攻擊命中敵人時，使其獲得 "..CNumb("+", "n_plus_rgb")..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("流血", "Bleed_rgb_tw").."。\n上限 "..CNumb("16", "n_16_rgb").." 層。", -- 出血穿透
				-- 矛頭爆矢槍, 爆彈手槍  -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "远程攻击命中时 "..CNumb("+", "n_plus_rgb")..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CKWord("流血", "Bleed_rgb_zh_cn").."。\n最多叠加 "..CNumb("16", "n_16_rgb").." 层。", -- 刺穿
		},
		--[+ LETHAL PROXIMITY +]--
		-- Explosion Radius Increase (per tier)
		-- Bolt Pistols -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_close_explosion_desc"] = { -- radius: +25%, +colors
			en = CNumb("{radius:%s}", "radius_var_rgb").." Explosion Radius. Point blank shots cause an Explosion. "
				..Dot_green.." This buff is active at all times and also applies to all other explosions.",
			ru = "Выстрелы в упор вызывают взрыв. "..CNumb("{radius:%s}", "radius_var_rgb").." к радиусу взрыва. "
				..Dot_green.." Этот эффект активен постоянно и влияет также на все остальные взрывные эффекты от гранат, талантов и оружия.", -- Смертельное сближение -- руоф Смертельная близость
			-- fr = "Les tirs à bout portant provoquent une explosion. Le rayon d'explosion augmente de "..CNumb("{radius:%s}", "radius_var_rgb")..".",
			-- ["zh-tw"] = "爆炸半徑增加 "..CNumb("{radius:%s}", "radius_var_rgb").." 。\n"..CNumb("12.5", "n_12_5_rgb").." 公尺內射擊會引發爆炸。", -- 致命零距離
				-- 爆彈手槍 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = CNumb("{radius:%s}", "radius_var_rgb").." 爆炸范围。\n"..CNumb("5", "n_5_rgb").." 米内射击也会引发爆炸。", -- 致命距离
		},
		--[+ POINT BLANK +]--	08.12.2025
		-- Ranged Crit Chance (per tier) and Duration
		-- Bolt Pistols, Needle Pistols -- 14% | 16% | 18% | 20% | 3.5s
		-- Stub Revolvers -- 14% | 16% | 18% | 20% | 2.5s
		["loc_trait_bespoke_crit_chance_bonus_on_melee_kills_desc"] = { -- crit_chance: +20%, time: 3.5, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." Ranged "..CKWord("Critical Chance", "Crit_chance_rgb").." after Melee Kill for "..CNumb("{time:%s}", "time_var_rgb").." seconds. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды после убийства в ближнем бою. "
				..CPhrs("Can_be_refr"), -- В упор
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." à distance après une élimination avec une arme de mélée pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes.",
			-- ["zh-tw"] = "近戰擊殺後，遠程攻擊 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 近身平射
				-- 爆彈手槍 -- 14% | 16% | 18% | 20% | 3.5s
				-- 快拔左輪手槍 -- 14% | 16% | 18% | 20% | 2.5s
			-- ["zh-cn"] = "近战击杀时 \n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." 远程"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 近身射击
		},
		--[+ EXECUTION +]--
		-- Damage vs Staggered (per tier)
		-- Bolt Pistols, Exterminator Shotguns -- 5% |10% | 15% | 20%
		["loc_trait_bespoke_damage_vs_stagger_desc"] = { -- vs_stagger: 20%, +colors
			en = CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." "..CKWord("Damage", "Damage_rgb").." Bonus vs "..CKWord("Staggered", "Staggered_rgb").." enemies.",
			ru = CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." против "..CKWord("ошеломлённых", "oshelomlennyh_rgb_ru").." врагов.", -- Казнь
			-- fr = CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." Bonus contre les ennemis qui "..CKWord("vacille", "Staggered_rgb_fr")..".",
			-- ["zh-tw"] = "攻擊 "..CKWord("硬直中", "Staggered_rgb_tw").." 敵人 "..CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." "..CKWord("傷害", "Damage_rgb_tw").."。", -- 處決
				-- 爆彈手槍 -- 5% |10% | 15% | 20%
			-- ["zh-cn"] = "对"..CKWord("踉跄", "Staggered_rgb_zh_cn").."敌人 "..CNumb("{vs_stagger:%s}", "dmgvsstgr_var_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."。", -- 处决
		},
		--[+ GLORYHUNTER +]--	08.12.2025
		-- Max Toughness Percentage (per tier)
		-- Boltguns, Heavy Stubbers -- 10% | 12% | 14% | 16%
		-- Needle Pistols, Plasma Gun -- 17.5% | 20% | 22.5% | 25%
		-- Bolt Pistols, Stub Revolvers -- 18% | 22% | 26% | 30%
		-- Grenadier Gauntlet, Rumbler -- 20% | 25% | 30% | 35%
		["loc_trait_bespoke_toughness_on_elite_kills_desc"] = { -- toughness: +30%, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." on Elite Kill. "
				..Dot_green.." Can proc multiple times per shot. "..Dot_red.." DoT kills cannot proc it.",
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." при убийстве элитного врага. "
				..Dot_green.." Может срабатывать несколько раз за выстрел. "..Dot_red.." Не срабатывает от убийств эффектами.", -- Охотник за славой
			-- fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." lors d'une élimination d'élite.",
			-- ["zh-tw"] = "擊殺精英敵人 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."。",-- 榮耀獵手
				-- 矛頭爆矢槍 -- 10% | 12% | 14% | 16%
				-- 電漿槍 -- 17.5% | 20% | 22.5% | 25%
				-- 爆彈手槍, 快拔左輪手槍 -- 18% | 22% | 26% | 30%
				-- 擲彈兵臂鎧 -- 20% | 25% | 30% | 35%
			-- ["zh-cn"] = "击杀精英敌人时"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。", -- 荣耀猎人
		},
		--[+ SURGE +]--
		-- Ranged Crit Chance (per tier)
		-- Electrokinetic Staff, Voidblast Staff, Voidstrike Staff -- 2% | 3% | 4% | 5%
		["loc_trait_bespoke_double_shot_on_primary_crit_and_crit_chance_desc"] = { -- crit_chance: +5%, value: 2, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." Ranged "..CKWord("Critical Chance", "Crit_chance_rgb")..".\n"
				..CNumb("{value:%s}", "value_var_rgb").." Shots on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..Dot_red.." For Electrokinetic Staff and Voidblast Staff, additional projectiles can only spawn on Primary Attacks.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru")..".\n"
				..CNumb("{value:%s}", "value_var_rgb").." снаряда вылетает при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..". "
				..Dot_red.." У Электрокинетических посохов и посохов Травмы "..CNumb("{value:%s}", "value_var_rgb").." снаряд появляется только от основных атак.", -- Энергетический всплеск -- руоф Импульс
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." à distance.\n"..CNumb("{value:%s}", "value_var_rgb").." tirs lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." de l'attaque principale (fonctionne sur l'attaque secondaire du Bâton de force \"Assaut du vide\").",
			-- ["zh-tw"] = "遠程攻擊 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").." 。\n當主攻擊 "..CKWord("暴擊", "Crit_rgb_tw").." 會自動發射 "..CNumb("{value:%s}", "value_var_rgb").." 次。", -- 湧動
				-- 電流力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖(無效) -- 2% | 3% | 4% | 5%
			-- ["zh-cn"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." 远程"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n主要攻击"..CKWord("暴击命中", "Crit_hit_rgb_tw").."时，发射 "..CNumb("{value:%s}", "value_var_rgb").." 枚射弹。", -- 激涌
		},
		--[+ SURGE +]-- DOUBLE!
		-- Ranged Crit Chance (per tier)
		-- Electrokinetic Staff, Voidblast Staff, Voidstrike Staff -- 2% | 3% | 4% | 5%
		["loc_trait_bespoke_double_shot_on_crit_and_crit_chance_desc"] = { -- crit_chance: +5%, value: 2, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." Ranged "..CKWord("Critical Chance", "Crit_chance_rgb")..".\n"
				..CNumb("{value:%s}", "value_var_rgb").." Shots on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..Dot_red.." For Electrokinetic Staff and Voidblast Staff, additional projectiles can only spawn on Primary Attacks.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru")..".\n"
				..CNumb("{value:%s}", "value_var_rgb").." снаряда вылетает при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..". "
				..Dot_red.." У Электрокинетических посохов и посохов Травмы "..CNumb("{value:%s}", "value_var_rgb").." снаряд появляется только от основных атак.", -- Энергетический всплеск -- руоф Импульс
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." à distance.\n"..CNumb("{value:%s}", "value_var_rgb").." tirs lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." de l'attaque principale (fonctionne sur l'attaque secondaire du Bâton de force \"Assaut du vide\").",
			-- ["zh-tw"] = "遠程攻擊 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").." 。\n當主攻擊 "..CKWord("暴擊", "Crit_rgb_tw").." 會自動發射 "..CNumb("{value:%s}", "value_var_rgb").." 次。", -- 湧動
				-- 電流力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖(無效) -- 2% | 3% | 4% | 5%
			-- ["zh-cn"] = CNumb("{crit_chance:%s}", "crit_var_rgb").." 远程"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n主要攻击"..CKWord("暴击命中", "Crit_hit_rgb_tw").."时，发射 "..CNumb("{value:%s}", "value_var_rgb").." 枚射弹。", -- 激涌
		},
		--[+ WARP FLURRY +]--
		-- Charge Time Reduction per stack (per tier)
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff -- 5.5% | 6.5% | 7.5% | 8.5% (up to 25.5%)
		["loc_trait_bespoke_faster_charge_on_chained_secondary_attacks_desc"] = { -- charge_time: -8.5%, stacks: 3, +colors
			en = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." Charge Time on Chained Secondary Attack. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..Dot_red.." Charge time is unaffected by Attack Speed buffs.",
			ru = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." от времени заряжания вторичной атаки в серии ударов. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раза. "
				..Dot_red.." Усиления скорости атаки не влияют на этот эффект.", -- Варп-шквал
			-- fr = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." de temps de charge lors d'une attaque secondaire. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "連續使用次要攻擊時，\n充能時間 "..CNumb("{charge_time:%s}", "chrgtime_var_rgb").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 亞空間亂舞
				-- 電流力場法杖, 烈焰力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 5.5% | 6.5% | 7.5% | 8.5% (up to 25.5%)
			-- ["zh-cn"] = "连续进行次要攻击时 \n"..CNumb("{charge_time:%s}", "chrgtime_var_rgb").." 蓄力时间。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 亚空间骚动
		},
		--[+ WARP NEXUS +]--
		-- Crit Chance per stack (per tier)
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff -- 3.5% | 4% | 4.5% | 5% (up to +20%)
		["loc_trait_bespoke_increased_crit_chance_scaled_on_peril_desc"] = { -- crit_chance: 5%, crit_chance_max: 20%, +colors
			en = CNumb("+", "n_plus_rgb")..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." per "..CNumb("20%", "pc_20_rgb").." "..CKWord("Peril", "Peril_rgb")..".\n"
				..Dot_nc.." Stacks up to "..CNumb("4", "n_4_rgb").." times. Maximum of "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." at "..CNumb("80%", "pc_80_rgb").." "..CKWord("Peril", "Peril_rgb")..".",
			ru = CNumb("+", "n_plus_rgb")..CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." за каждые "..CNumb("20%", "pc_20_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..". "
				..Dot_nc.." Суммируется до "..CNumb("4", "n_4_rgb").." раз, вплоть до "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." при "..CNumb("80%", "pc_80_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".", -- Связь с варпом -- руоф Варп-сектор
			-- fr = "Obtenez entre "..CNumb("{crit_chance:%s}", "crit_var_rgb").." et "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." en fonction de votre niveau de "..CKWord("Péril", "Peril_rgb_fr").." actuel.",
			-- ["zh-tw"] = "根據當前的 "..CKWord("反噬", "Peril_rgb_tw").." ，\n增加 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 至 "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").." 。", -- 亞空間樞紐
				-- 電流力場法杖, 烈焰力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 3.5% | 4% | 4.5% | 5% (up to +20%)
			-- ["zh-cn"] = "随"..CKWord("危机值", "Peril_rgb_zh_cn").."增长叠加层数，\n每增长 "..CNumb("20%", "pc_20_rgb").."，"..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n最多叠加 "..CNumb("4", "n_4_rgb").." 层，最高 "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").."。", -- 亚空间枢纽
		},
		--[+ TRANSFER PERIL +]--
		-- Peril Amount Removed (per tier)
		-- Electrokinetic Staff, Voidblast Staff -- 7% | 8% | 9% | 10%
		-- Voidstrike Staff -- 6.5% | 7% | 7.5% | 8%
		["loc_trait_bespoke_peril_vent_on_weakspot_hit_desc"] = { -- warp_charge: 10%, +colors
			en = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("Peril", "Peril_rgb").." is quelled on "..CKWord("Weakspot Hit", "Weakspothit_rgb")..".\n"
				..Dot_green.." Can proc multiple times per shot when "..CKWord("Cleaving", "Cleaving_rgb").." enemy "..CKWord("Weakspots", "Weakspots_rgb")..".",
			ru = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." подавляется при попадании в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".\n"
				..Dot_green.." Может срабатывать несколько раз за выстрел при пробивании нескольких противников в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".", -- Перемещение опасности -- руоф Перемещение угрозы
			-- fr = CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." de votre "..CKWord("Péril", "Peril_rgb_fr").." est dissipé lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..".",
			-- ["zh-tw"] = CKWord("命中弱點", "Weakspothits_rgb_tw").." "..CNumb("-", "n_minus_rgb")..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("反噬", "Peril_rgb_tw").."。", -- 轉移反噬
				-- 電流力場法杖, 虛空爆破力場法杖 -- 7% | 8% | 9% | 10%
			-- ["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时，平息 "..CNumb("{warp_charge:%s}", "warpchrg_var_rgb").." "..CKWord("危机值", "Peril_rgb_zh_cn").."。", -- 转移危机值
		},
		--[+ RENDING SHOCKWAVE +]--
		-- Brittleness Stacks (per tier)
		-- Voidblast Staff -- 2 | 4 | 6 | 8
		["loc_trait_bespoke_rend_armor_on_aoe_charge_desc"] = { -- stacks: 8, rending: 2.5%, time: 5, max_stacks: 16, s->seconds, +colors
			en = "Up to "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." based on Secondary Attack charge time. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. Max "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks, up to "..CNumb("40%", "pc_40_rgb")..".\n"
				..CNote("Brtl_note"),
			ru = "Цель получает до "..CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов по "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." в зависимости от времени заряжания вторичной атаки. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд. Максимум "..CNumb("40%", "pc_40_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." при "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядах.", -- ..CNote("Brtl_note") -- Разрушительная волна
			-- fr = "La cible subit jusqu'à "..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Fragilité", "Brittleness_rgb_fr")..", en fonction du temps de charge de l'attaque secondaire. Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes. "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls maximum, pour un total de "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			-- ["zh-tw"] = "根據次要攻擊的蓄力時間，\n使攻擊目標獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("+", "n_plus_rgb")..CNumb("{rending:%s}", "rending_var_rgb").." 的 "..CKWord("脆弱", "Brittleness_rgb_tw").."，\n可持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，上限 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層 "..CNumb("40%", "pc_40_rgb").."。" .. CNote("Brtl_note"), -- 撕扯震盪
				-- 虛空爆破力場法杖 -- 2 | 4 | 6 | 8
			-- ["zh-cn"] = "随次要攻击蓄力时间提升效果，\n最多对目标施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."，\n持续"..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 层，最高"..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"), -- 撕裂冲击波
		},
		--[+ FOCUSED CHANNELLING +]--
		-- Charge Move Speed Penalty Reduction (per tier)
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff -- 20% | 30% | 40% | 50%
		["loc_trait_bespoke_uninterruptable_while_charging_and_movement_desc"] = { -- reduction: 50%, +colors
			en = CNumb("-", "n_minus_rgb")..CNumb("{reduction:%s}", "red_var_rgb").." Movement Speed penalty during Secondary Attack. Your Secondary Attack cannot be interrupted. "
				..Dot_red.." Charging actions of all Staves are already uninterruptible by default.",
			ru = CNumb("-", "n_minus_rgb")..CNumb("{reduction:%s}", "red_var_rgb").." к штрафу скорости передвижения во время вторичной атаки. Ваша вторичная атака не может быть прервана. "
				..Dot_red.." Вторичные атаки всех посохов и так невозможно прервать.", -- Сосредоточенный призыв
			-- fr = "Votre attaque secondaire ne peut pas être interrompue et les pénalités de vitesse de déplacement de l'attaque secondaire sont réduite de "..CNumb("{reduction:%s}", "red_var_rgb")..".",
			-- ["zh-tw"] = "次要攻擊的移動速度懲罰 "..CNumb("-", "n_minus_rgb")..CNumb("{reduction:%s}", "red_var_rgb").."，\n且無法被中斷。", -- 專注引導
				-- 電流力場法杖, 烈焰力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 20% | 30% | 40% | 50%
			-- ["zh-cn"] = "次要攻击蓄力期间 "..CNumb("-", "n_minus_rgb")..CNumb("{reduction:%s}", "red_var_rgb").." 移动速度惩罚，\n同时敌人的近战及远程攻击无法眩晕你。", -- 专注引导
		},
			-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		--[+ BLAZING SPIRIT +]--
		-- Soulblaze Stacks (per tier)
		-- Voidblast Staff, Voidstrike Staff -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_warpfire_burn_on_crit_desc"] = { -- stacks: 4, +colors -- REMOVED: [Up to 6 Stacks.] because for some reason this description is used for the Psyker Greatsword, but it has 12 stacks max. Fatshark FFS!
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CKWord("Soulblaze", "Soulblaze_rgb").." applied to enemies on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..CPhrs("Refr_dur_stappl"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда "..CKWord("горения души", "gorenia_dushi_rgb_ru").." получает враг при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..". "
				..CPhrs("Refr_dur_stappl"), --  Вплоть до 6 зарядов. -- Пылающий дух -- руоф Пламенный дух
			-- fr = "L'ennemie gagne "..CNumb("+", "n_plus_rgb")..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CKWord("Embrasement d'âme", "Soulblaze_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr")..".", -- Jusqu'à 6 cumuls.
			-- ["zh-tw"] = "敵人於 "..CKWord("暴擊命中", "Crit_hit_rgb_tw").." 時會獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("靈火", "Soulblaze_rgb_tw").."，上限 "..CNumb("6", "n_6_rgb").." 層。", -- 燃燒靈魂 -- 這個說明同時也被套用在烈焰力場巨劍，但是他最多12層。
				-- 虛空爆破力場法杖, 虛空打擊力場法杖 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时, 对敌人施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CKWord("灵魂之火", "Soulblaze_rgb_zh_cn").."。", -- 烈焰之魂 -- 描述存在BUG，炙焰力场巨剑错误使用该段描述，暂时移除字段：「"最多叠加 "..CNumb("6", "n_6_rgb").." 层。"」以确保描述不会出现错误。
		},
		--[+ PENETRATING FLAME +]--
		-- Brittleness Stacks (per tier)
		-- Flamer, Inferno Staff -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_armor_rending_from_dot_burning_desc"] = { -- num_stacks: 4, rending_percentage: 1%, duration: 5, max_stacks: 10, +colors
			en = "Direct hits apply "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." Stacks of "..CNumb("1%", "pc_1_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." for "..CNumb("{duration:%s}", "dur_var_rgb").." seconds. Up to "..CNumb("20%", "pc_20_rgb")..". "
				..CPhrs("Can_be_refr").."\n"
				..CNote("Brtl_note"),
			ru = "Прямые попадания накладывают "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." заряда "..CNumb("1%", "pc_1_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони на "..CNumb("{duration:%s}", "dur_var_rgb").." секунд. Вплоть до "..CNumb("20%", "pc_20_rgb")..". "
				..CPhrs("Can_be_refr")..CNote("Brtl_note"), -- Проникающее пламя -- руоф Убойное пламя
			-- fr = "Les coups directs appliquent "..CNumb("1", "n_1_rgb").." cumul de "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb")..CNumb("%", "pc_rgb").." "..CKWord("Fragilité", "Brittleness_rgb_fr").." pendant "..CNumb("{duration:%s}", "dur_var_rgb").." secondes. Jusqu'à "..CNumb("20%", "pc_20_rgb").."."..CNote("Brtl_note"),
			--??? ["zh-tw"] = "被攻擊目標獲得 "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." 層 "...." 的 "..CKWord("脆弱", "Brittleness_rgb_tw").."，\n持續 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒，上限 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層。" .. CNote("Brtl_note"), -- 穿透烈焰
			--??? ["zh-tw"] = "被攻擊目標獲得 "..CNumb("1", "n_1_rgb").." 層 "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb")..CNumb("%", "pc_rgb").." 的 "..CKWord("脆弱", "Brittleness_rgb_tw").."，\n持續 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒，上限 "..CNumb("20%", "pc_20_rgb").." 。" .. CNote("Brtl_note"), -- 穿透烈焰
				-- 淨化噴火器, 烈焰力場法杖 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "命中时，对目标施加 "..CNumb("{num_stacks:%s}", "stacks_num_var_rgb").." 层 "..CNumb("1%", "pc_1_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."，持续 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。\n最多叠加 "..CNumb("20", "n_20_rgb").." 层，最高 "..CNumb("20%", "pc_20_rgb").."。"..CNote("Brtl_note"), -- 穿透火焰
		},
		--[+ SHOWSTOPPER +]--
		-- Chance to Explode (per tier)
		-- Flamer, Inferno Staff -- 14% | 16% | 18% | 20%
		["loc_trait_bespoke_chance_to_explode_elites_on_kill_desc"] = { -- proc_chance: 20%
			en = CNumb("{proc_chance:%s}", "procch_var_rgb").." chance Elite and Special enemies Explode on kill.",
			ru = CNumb("{proc_chance:%s}", "procch_var_rgb").." шанс, что элитные враги или специалисты взорвутся при смерти.", -- Взрывной финал -- руоф Театральная пауза
			fr = CNumb("{proc_chance:%s}", "procch_var_rgb").." de chance que les Élite et les spécialistes explosent lors d'une élimination.",
			["zh-tw"] = "精英或專家死亡時，\n有 "..CNumb("{proc_chance:%s}", "procch_var_rgb").." 機率引發爆炸。", -- 嘆為觀止
				-- 淨化噴火器, 烈焰力場法杖 -- 10% | 15% | 20% | 25%
			["zh-cn"] = "击杀精英和专家敌人时 \n"..CNumb("{proc_chance:%s}", "procch_var_rgb").." 几率引发爆炸。", -- 精彩表演
		},
		--[+ INFERNUS +]--
		-- Burn Stacks and Max Stacks (per tier)
		-- Helbore Lasguns, Infantry Lasguns, Laspistols, Recon Lasguns -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
		["loc_trait_bespoke_burninating_on_crit_desc"] = { -- stacks: +4, max_stacks: 12, Stack(s)->Stacks, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." "..CKWord("Burn", "Burn_rgb").." Stacks applied to enemies on "..CKWord("Critical Hit", "Crit_hit_rgb").." to a maximum of "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks.\n"
				..CPhrs("Refr_dur_stappl")..Dot_red.." Can't apply "..CKWord("Burn", "Burn_rgb").." through shields.",
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда "..CKWord("горения", "gorenia_rgb_ru").." применяется к врагу при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..", вплоть до "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядов. "
				..CPhrs("Refr_dur_stappl")..Dot_red.." Заряды "..CKWord("горения", "gorenia_rgb_ru").." не накладываются через щиты.", -- Инфернус
			-- fr = CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CKWord("Brûlure", "Burn_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." jusqu'à un maximum de "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls.",
			-- ["zh-tw"] = "在 "..CKWord("暴擊命中", "Crit_hit_rgb_tw").." 時 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("燃燒", "Burn_rgb_tw").."，\n上限 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層。", -- 煉獄
				-- 冥潮雷射槍, 步兵雷射槍, 重型雷射手槍, 偵查雷射槍 -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
			-- ["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层"..CKWord("燃烧", "Burn_rgb_zh_cn").."。最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 层。", -- 地狱火
		},
		--[+ EFFICIENCY +]--
		-- Cooldown (per tier)
		-- Infantry Lasguns -- 5.5s | 5s | 4.5s | 4s
		["loc_trait_bespoke_first_shot_ammo_cost_reduction_desc"] = { -- ammo: 33%, time: 4, s->seconds, +colors
			en = CNumb("-", "n_minus_rgb")..CNumb("66%", "pc_66_rgb").." Ammo consumption per shot every "..CNumb("{time:%s}", "time_var_rgb").." seconds. "
				..Dot_nc.." The Mk "..CKWord("VII", "n_VII_rgb").." and the Mk "..CKWord("IX", "n_IX_rgb").." consumes "..CNumb("1", "n_1_rgb").." ammo per shot instead of "..CNumb("3", "n_3_rgb")..", and the Mk "..CKWord("IIB", "n_IIB_rgb").." - "..CNumb("1", "n_1_rgb").." instead of "..CNumb("2", "n_2_rgb")..".",
			ru = CNumb("-", "n_minus_rgb")..CNumb("66%", "pc_66_rgb").." от затрат боеприпасов на выстрел раз в "..CNumb("{time:%s}", "time_var_rgb").." секунды. "
				..Dot_nc.." Модели "..CKWord("VII", "n_VII_rgb").." и "..CKWord("IX", "n_IX_rgb").." тратят "..CNumb("1", "n_1_rgb").." боеприпас за выстрел вместо "..CNumb("3", "n_3_rgb")..", а модель "..CKWord("IIB", "n_IIB_rgb").." - "..CNumb("1", "n_1_rgb").." вместо "..CNumb("2", "n_2_rgb")..".", -- Эффективность
			-- fr = CNumb("{ammo:%s}", "ammo_var_rgb").." de réduction des munitions dépensées lorsque vous ne tirez pas pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes.",
			-- ["zh-tw"] = "每過 "..CNumb("{time:%s}", "time_var_rgb").." 秒，\n首次射擊的彈藥消耗將減少 "..CNumb("{ammo:%s}", "ammo_var_rgb").." 。", -- 效率
				-- 步兵雷射槍 -- 5.5 | 5 | 4.5 | 4
			-- ["zh-cn"] = "下次射击 "..CNumb("-", "n_minus_rgb")..CNumb("{ammo:%s}", "ammo_var_rgb").." 弹药消耗，\n冷却时间 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 效益
		},
		--[+ CONCENTRATED FIRE +]--	08.12.2025
		-- Crit Chance per stack (per tier)
		-- Laspistols, Needle Pistols -- 2% | 3% | 4% | 5% (up to +25%)
		["loc_trait_bespoke_crit_chance_on_chained_weakspot_hits_desc"] = { -- crit_chance: +5%, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." on Chained Ranged "..CKWord("Weakspot Hit", "Weakspothit_rgb").." to Any Target. "
				..Dot_nc.." Up to "..CNumb("5", "n_5_rgb").." Stacks. "..Dot_red.." Does not benefit Melee attacks.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." при серии попаданий в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." любой цели. "
				..Dot_nc.." До "..CNumb("5", "n_5_rgb").." зарядов. "..Dot_red.." Не влияет на атаки ближнего боя.", -- Сосредоточенный огонь -- руоф Интенсивный огонь
			-- fr = "Jusqu'à "..CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." répété à distance (toute cible). Jusqu'à "..CNumb("5", "n_5_rgb").." cumuls.",
			-- ["zh-tw"] = "連續 "..CKWord("弱點命中", "Weakspothit_rgb_tw").." 時（任意目標），\n獲得最多 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\b上限 "..CNumb("5", "n_5_rgb").." 層。", -- 集中火力
				-- 重型雷射手槍 -- 2% | 3% | 4% | 5% (up to +25%)
			-- ["zh-cn"] = "连续"..CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 远程"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。\n最多叠加 "..CNumb("5", "n_5_rgb").." 层。", -- 集中火力
		},
		--[+ DESPERADO +]--	08.12.2025
		-- Crit Chance (per tier)
		-- Dual Stub Pistols, Laspistols, Needle Pistols -- 12.5% | 15% | 17.5% | 20%
		["loc_trait_bespoke_crit_chance_on_successful_dodge_desc"] = { -- crit_chance: +12.5%, time: 6, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on successful Dodge. "
				..CPhrs("Can_be_refr")..Dot_red.." Does not benefit Melee attacks.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунд при успешном уклонении.\n"
				..CPhrs("Can_be_refr").."\n"
				..Dot_red.." Не влияет на атаки ближнего боя.", -- Сорвиголова
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'une esquive réussie.",
			-- ["zh-tw"] = "成功閃避時 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 亡命之徒
				-- 重型雷射手槍 -- 12.5% | 15% | 17.5% | 20%
			-- ["zh-cn"] = "成功闪避时 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." 远程"..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 亡命之徒
		},
		--[+ REASSURINGLY ACCURATE +]--
		-- Grenadier Gauntlet -- 24% | 28% | 32% | 36%
		-- Laspistols -- 10% | 12% | 14% | 16%
		["loc_trait_bespoke_toughness_on_crit_kills_desc"] = { -- toughness: 16%, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." on "..CKWord("Critical Hit", "Crit_hit_rgb").." Kill. "
				..Dot_green.." Can proc multiple times per shot and also on "..CKWord("Crit", "Crit_rgb").." kills with Melee attacks or special Melee actions. "..CPhrs("Dont_intw_coher_tghn"),
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." при убийствах "..CKWord("Critical Hits", "krit_udarami_rgb_ru")..". "
				..Dot_green.." Может срабатывать несколько раз за выстрел. "..CPhrs("Dont_intw_coher_tghn"), -- Успокаивающая точность -- руоф Внушительная точность
			-- fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." lors d'une élimination par "..CKWord("Coup critique", "Crit_hit_rgb_fr")..".",
			-- ["zh-tw"] = CKWord("暴擊擊殺", "Crit_k_rgb_tw").." 時 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."。", -- 慰藉精準
				-- 擲彈兵臂鎧 -- 24% | 28% | 32% | 36%
				-- 重型雷射手槍 -- 10% | 12% | 14% | 16%
			-- ["zh-cn"] = CKWord("暴击击杀", "Crit_hits_k_rgb_zh_cn").."时，"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。", -- 激励精准
		},
		--[+ FLECHETTE +]--
		-- Bleed Stacks (per tier)
		-- Combat Shotguns, Double-Barrel Shotgun, Ripper Guns -- 3 | 4 | 5 | 6
		["loc_trait_bespoke_bleed_on_crit_ranged_desc"] = { -- stacks: 6, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." "..CKWord("Bleed", "Bleed_rgb").." Stacks on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Stacks. "..CPhrs("Refr_dur_stappl")..CPhrs("Cant_appl_thr_shlds"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." накладывается при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..". "
				..Dot_nc.." Вплоть до "..CNumb("16", "n_16_rgb").." зарядов. "..CPhrs("Refr_dur_stappl_ru")..CPhrs("Cant_appl_thr_shlds"), -- Флешетта
			-- fr = CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CKWord("Saignement", "Bleed_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr")..". Jusqu'à "..CNumb("16", "n_16_rgb").." cumuls.",
			-- ["zh-tw"] = CKWord("暴擊", "Crit_rgb_tw").." 時，使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("流血", "Bleed_rgb_tw").."。\n上限 "..CNumb("16", "n_16_rgb").." 層。", -- 飛鏢彈
				-- 戰鬥霰彈槍, 雙管霰彈槍, 撕裂槍 -- 3 | 4 | 5 | 6
			-- ["zh-cn"] = CKWord("暴击", "Crit_rgb_zh_cn").."时 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层"..CKWord("流血", "Bleed_rgb_zh_cn").."。\n最多叠加 "..CNumb("16", "n_16_rgb").." 层。", -- 箭弹
		},
		--[+ MAN-STOPPER +]--
		-- Ranged Stagger Strength (per tier)
		-- Combat Shotguns, Double-Barrel Shotgun, Shotpistol and Shield -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_cleave_on_crit_and_stagger_desc"] = { -- stagger: +25%, +colors
			en = CNumb("{stagger:%s}", "stgr_var_rgb").." Ranged Attack "..CKWord("Stagger", "Stagger_rgb")..". Increased "..CKWord("Cleave", "Cleave_rgb").." on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..CPhrs("Carap_cant_cleave"),
			ru = CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("ошеломления", "oshelomlenia_rgb_ru").." от выстрелов. Увеличивается "..CKWord("прострел", "prostrel_rgb_ru").." при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..". "
				..CPhrs("Carap_cant_cleave"), -- Человекоостанавливатель -- руоф Усмирение
			-- fr = "Augmente le "..CKWord("Transpercement", "Cleave_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr").." augmente également de "..CNumb("{stagger:%s}", "stgr_var_rgb").." le "..CKWord("Vacillement", "Stagger_rgb_fr")..".",
			-- ["zh-tw"] = "在 "..CKWord("Crit_chance_r", "Crit_chance_r_rgb_tw").." 時提升 "..CKWord("Cleaving_r", "Cleaving_r_rgb_tw").."，\n並使遠程攻擊 "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("眩暈", "Staggering_rgb_tw").."。", -- 大口徑彈藥
				-- 戰鬥霰彈槍, 雙管霰彈槍 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = CKWord("暴击", "Crit_rgb_zh_cn").."时 "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."，\n同时无视敌人的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"), -- 强力炮弹
		},
		--[+ SCATTERSHOT +]--
		-- Ranged Crit Chance per stack (per tier)
		-- Combat Shotguns, Double-Barrel Shotgun, Exterminator Shotguns, Shotpistol and Shield -- 6% | 8% | 10% | 12% (up to +60%)
		["loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot_desc"] = { -- crit_chance: +12%, stacks: 5, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for each Enemy Hit by your previous attack. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.\n"
				..Dot_red.." Removes All Stacks on the next shot even when shooting air.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." за каждого врага, поражённого вашей предыдущей атакой. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..Dot_red.." Все заряды тратятся, даже при промахе.", -- Выстрел дробью -- руоф Разброс
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pour chaque ennemie touché par votre attaque précédente . Se cumuls "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "前一次攻擊每命中一名敵人，\n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").." ，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 散彈
				-- 戰鬥霰彈槍, 雙管霰彈槍 -- 6% | 8% | 10% | 12% (up to +60%)
			-- ["zh-cn"] = "上次攻击每命中一名敌人\n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 散射
		},
		--[+ FULL BORE +]--
		-- Power (per tier)
		-- Combat Shotguns, Double-Barrel Shotgun, Exterminator Shotguns, Shotpistol and Shield -- 14% | 16% | 18% | 20%
		-- Kickback -- 18% | 22% | 26% | 30%
		["loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all_desc"] = { -- power_level: +20%, time: 5, s->seconds, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds when every pellet in a shot hits the same enemy.\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунд, если каждая пуля в выстреле попадает в одного и того же врага."
				..CNote("Pwr_note"), -- Полный калибр -- руоф Напор
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lorsque chaque plomb d'un tir touche le même ennemie."..CNote("Pwr_note"),
			-- ["zh-tw"] = "單次射擊的所有子彈皆命中同一名敵人，\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 全孔射擊
				-- 戰鬥霰彈槍, 雙管霰彈槍 -- 14% | 16% | 18% | 20%
				-- 反衝者 -- 18% | 22% | 26% | 30%
			-- ["zh-cn"] = 一次射击的全部弹丸都命中同一敌人时\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"), -- 全孔射击
		},
		--[+ BOTH BARRELS +]--
		-- Reload Animation Speed (per tier)
		-- Double-Barrel Shotgun -- 40% | 50% | 60% | 70%
		["loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill_desc"] = { -- reload_speed: 70%, +colors
			en = CNumb("{reload_speed:%s}", "reload_var_rgb").." Reload Speed after killing an enemy with both barrels while aiming.",
			ru = CNumb("{reload_speed:%s}", "reload_var_rgb").." к скорости перезарядки после убийства врага прицельным выстрелом из обоих стволов.", -- Дуплет
			-- fr = "Si vous tuez un ennemie en tirant les deux canons, votre prochain rechargement sera "..CNumb("{reload_speed:%s}", "reload_var_rgb").." plus rapide.",
			-- ["zh-tw"] = "擊殺敵人後，\n下一次換彈速度 "..CNumb("{reload_speed:%s}", "reload_var_rgb").."。", -- 雙管齊發
				-- 雙管霰彈槍 -- 40% | 50% | 60% | 70%
			-- ["zh-cn"] = "进行次要攻击并发射两枚弹药时\n"..CNumb("{reload_speed:%s}", "reload_var_rgb").." 装弹速度。", -- 双管齐下
		},
		--[+ TRICKSHOOTER +]--
		-- Ranged Power per stack (per tier)
		-- Stub Revolvers -- 4.5% | 5% | 5.5% | 6% (up to +30%)
		["loc_trait_bespoke_power_bonus_on_chained_weakspot_hits_desc"] = { -- power_level: +6%, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." on Chained "..CKWord("Weakspot Hit", "Weakspothit_rgb").." to Any Target. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CPhrs("Can_be_refr").."\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." при серии ударов в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." любых целей. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"), -- Меткий стрелок
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr").." en chaîne (toute cible). Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			-- ["zh-tw"] = "連續 "..CKWord("弱點命中", "Weakspothit_rgb_tw").." 時（任意目標），\n獲得最多 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 狡猾射手
				-- 快拔左輪手槍 -- 4.5% | 5% | 5.5% | 6% (up to +30%)
			-- ["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，\n持续 "..CNumb("3.5", "n_3_5_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"), -- 特技射手
		},
		--[+ HAND-CANNON +]--
		-- Rending (per tier)
		-- Stub Revolvers -- 30% | 40% | 50% | 60%
		["loc_trait_bespoke_rending_on_crit_desc"] = { -- rend: +60%, +colors
			en = CNumb("{rend:%s}", "rend_var_rgb").." "..CKWord("Rending", "Rending_rgb").." on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..CNote("Rend_note"),
			ru = CNumb("{rend:%s}", "rend_var_rgb").." к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..". "
				..CNote("Rend_note"), -- Ручная пушка
			-- fr = CNumb("{rend:%s}", "rend_var_rgb").." de "..CKWord("Déchirure", "Rending_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr").."."..CNote("Rend_note"),
			-- ["zh-tw"] = CKWord("暴擊命中", "Crit_hit_rgb_tw").." 時 "..CNumb("{rend:%s}", "rend_var_rgb").." "..CKWord("撕裂", "Rending_rgb_tw").."。" .. COLORS_KWords_tw.CNote("Rend_note"), -- 手銃
				-- 快拔左輪手槍 -- 30% | 40% | 50% | 60%
			-- ["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").." "..CNumb("{rend:%s}", "rend_var_rgb").." "..CKWord("撕裂", "Rending_rgb_zh_cn").."。"..CNote("Rend_note"), -- 手持火炮
		},
		--[+ SHATTERING IMPACT +]--
		-- Brittleness Stacks (per tier)
		-- Boltguns, Grenadier Gauntlet, Plasma Gun, Rumbler -- 1 | 2 | 3| 4
		["loc_trait_bespoke_armor_rend_on_projectile_hit_desc"] = { -- stacks: 4, rending: 2.5%, time: 5, max_stacks: 16, s->seconds, +colors
			en = "Target receives "..CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." on direct projectile hit. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. Max "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks, up to "..CNumb("40%", "pc_40_rgb")..". "
				..CPhrs("Can_be_refr"), --  ..CNote("Brtl_note_rgb
			ru = "Цель получает "..CNumb("{stacks:%s}", "stacks_var_rgb").." заряда по "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони при прямом попадании. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд. До "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядов, вплоть до "..CNumb("40%", "pc_40_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru")..".\n"
				..CPhrs("Can_be_refr"), -- Сокрушающий удар -- руоф Рассеивающий импульс -- ..CNote("Brtl_note_rgb_ru
			-- fr = "La cible reçoit "..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CNumb("{rending:%s}", "rending_var_rgb").." de "..CKWord("Fragilité", "Brittleness_rgb_fr").." si elle est touchée directement par un projectile. Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes."..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls maximum, Jusqu'à "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			-- ["zh-tw"] = "命中目標時，使其獲得 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，上限 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層，最高至 "..CNumb("40%", "pc_40_rgb").."。" .. CNote("Brtl_note"), -- 破碎衝擊
				-- 矛頭爆矢槍, 擲彈兵臂鎧, 電漿槍, 震盪槍 -- 1 | 2 | 3| 4
			-- ["zh-cn"] = "命中时，对目标施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{rending:%s}", "rending_var_rgb").." \n"..CKWord("脆弱", "Brittleness_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 层，最高 "..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"), -- 破碎冲击
		},
		--[+ EVERLASTING FLAME +]--
		-- Ammo Transferred (per tier)
		-- Flamer -- 2 | 3 | 4 | 5
		["loc_trait_bespoke_ammo_spent_from_reserve_on_crit_desc"] = { -- +colors
			en = CKWord("Critical Hits", "Crit_hits_rgb").." spend Ammo from your Reserve instead of you current fuel tank.",
			ru = CKWord("Критические удары", "Krit_udary_rgb_ru").." тратят топливо из вашего резерва вместо текущего топливного бака.", -- Неугасимое пламя -- руоф Бесконечное пламя
			-- fr = "Les "..CKWord("Coups critiques", "Crit_hits_rgb_fr").." dépensent des munitions de votre réserve à la place de votre réservoir de carburant actuel.",
			-- ["zh-tw"] = CKWord("暴擊", "Crit0_rgb_tw").." 消耗備彈，而非彈夾中的彈藥。", -- 永燃烈焰
				-- 淨化噴火器 -- 2 | 3 | 4 | 5
			-- ["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时，从弹药储备填装数枚弹药。", -- 永恒之火
		},
		--[+ QUICKFLAME +]--
		-- Reload Speed (per tier)
		-- Flamer -- 24% | 28% | 32% | 36%
		["loc_trait_bespoke_faster_reload_on_empty_clip_desc"] = { -- reload_speed: +36%, +colors
			en = CNumb("{reload_speed:%s}", "reload_var_rgb").." Reload Speed if empty.",
			ru = CNumb("{reload_speed:%s}", "reload_var_rgb").." к скорости перезарядки, если бак пуст.", -- Скорое пламя -- руоф Воспламенение
			fr = CNumb("{reload_speed:%s}", "reload_var_rgb").." de vitesse de rechargement si vide.",
			["zh-tw"] = "當彈夾為空時 "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 換彈速度。", -- 迅捷火焰
				-- 淨化噴火器 -- 24% | 28% | 32% | 36%
			["zh-cn"] = "弹匣空时 "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 装弹速度。", -- 快速烈焰
		},
		--[+ FAN THE FLAMES +]--
		-- Stagger Reduction Modifier and Ranged Stagger Strength (per tier)
		-- Flamer -- 40% and 30% | 50% and 35% | 60% and 40% | 70% and 45%
		["loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning_desc"] = { -- stagger_reduction: 60%, impact_modifier: +45%, +colors
			en = "Primary Attack ignores "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." "..CKWord("Stagger", "Stagger_rgb").." Resistance on "..CKWord("Burning", "Burning_rgb").." Enemies, as well as dealing "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." "..CKWord("Impact", "Impact_rgb")..".",
			ru = "Основная атака получает:\n"
				..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." и\n"
				..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." к игнорированию сопротивления "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." для "..CKWord("горящих", "goriaschih_rgb_ru").." врагов.", -- Разжечь пламя -- руоф Раздувая пламя
			-- fr = "Votre attaque principale ignore "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." de le résistance "..CKWord("Vacillement", "Stagger_rgb_fr").." des ennemis qui "..CKWord("Brûlant", "Burning_rgb_fr")..", et inflige "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." d'"..CKWord("Impact", "Impact_rgb_fr")..".",
			-- ["zh-tw"] = "對 "..CKWord("燃燒中", "Burning_rgb_tw").." 敵人使用主攻擊時，\n無視 "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." "..CKWord("踉蹌效果", "Stagger2_rgb_tw").." 並 "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." "..CKWord("衝擊", "Impact_rgb_tw").."。", -- 煽風點火
				-- 淨化噴火器 -- 40% and 30% | 50% and 35% | 60% and 40% | 70% and 45%
			-- ["zh-cn"] = "主要攻击无视"..CKWord("燃烧", "Burn_rgb_zh_cn").."敌人 "..CNumb("{stagger_reduction:%s}", "stgrrdct_var_rgb").." "..CKWord("踉跄", "Stagger_rgb_zh_cn").."抗性，同时 "..CNumb("{impact_modifier:%s}", "impmod_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."。", -- 火上浇油
		},
		--[+ OVERPRESSURE +]--
		-- Power per stack (per tier)
		-- Flamer -- 2% | 3% | 4% | 5% (up to +25%)
		["loc_trait_bespoke_power_scales_with_clip_percentage_desc"] = { -- power_level: +5%, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb")..", scaling with remaining Ammunition. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.\n"
				..Dot_nc.." Holds all current Stacks until reload.\n"
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." в зависимости от количества оставшихся боеприпасов. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..Dot_nc.." Заряды сохраняются до перезарядки. "..CNote("Pwr_note"), -- Избыточное давление
			-- fr = "Jusqu'à "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr")..", en fonction des munitions restantes. Se cumules "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			-- ["zh-tw"] = "依照剩餘彈藥量 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 超壓
				-- 淨化噴火器 -- 2% | 3% | 4% | 5% (up to +25%)
			-- ["zh-cn"] = "随弹匣剩余弹药叠加层数，\n每消耗弹匣容量 "..CNumb("20%", "pc_20_rgb").." 的弹药\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"), -- 超压
		},
		--[+ HOT-SHOT +]--	08.12.2025
		-- Enemy Hit Mass Reduction (per tier)
		-- Helbore Lasguns, Needle Pistols -- 20% | 30% | 40% | 50%
		["loc_trait_bespoke_cleave_on_weakspot_hits_desc"] = { -- hit_mass_reduction: +50%, +colors
			en = CNumb("+", "n_plus_rgb")..CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." "..CKWord("Cleave", "Cleave_rgb").." to "..CKWord("Weakspot Hits", "Weakspothits_rgb")..".",
			ru = CNumb("+", "n_plus_rgb")..CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." к "..CKWord("прострелу", "prostrelu_rgb_ru").." выстрелам в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..".", -- Прожигающий выстрел -- руоф В точку
			-- fr = "Les "..CKWord("Points faibles", "Weakspothits_rgb_fr").." gagnent "..CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." de "..CKWord("Transpercement", "Cleave_rgb_fr")..".",
			-- ["zh-tw"] = CKWord("命中弱點", "Weakspothits_rgb_tw").." "..CNumb("+", "n_plus_rgb")..CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").." "..CKWord("順劈攻擊", "Cleave_rgb_tw").."。", -- 激射
				-- 冥潮雷射槍 -- 80% | 70% | 60% | 50%
			-- ["zh-cn"] = CKWord("弱点命中", "Weakspothits_rgb_zh_cn").."使目标"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."降至 "..CNumb("{hit_mass_reduction:%s}", "hit_mass_red_var_rgb").."。"..CNote("Hit_Mass_note"), -- 炙热射击
		},
		--[+ WEIGHT OF FIRE +]--
		-- Charge Time Reduction per stack (per tier)
		-- Helbore Lasguns -- 6% | 8% | 10% | 12% (up to 60%)
		["loc_trait_bespoke_faster_charge_on_chained_attacks_desc"] = { -- charge_time: -12%, stacks: 5, +colors
			en = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." Charge Time per Stack. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. Stacks on consecutive Aimed Charged Attacks. "
				..Dot_nc.." Stacks expire after "..CNumb("0.4", "n_04_rgb").." seconds or upon leaving Alt Fire mode.",
			ru = CNumb("{charge_time:%s}", "chrgtime_var_rgb").." от времени заряжания выстрела за заряд. Максимум "..CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов при серии заряженных прицельных выстрелов.\n"
				..Dot_nc.." Заряды сгорают через "..CNumb("0.4", "n_04_rgb").." секунды или при выходе из прицеливания.", -- Мощь огня -- руоф Плотность огня
			-- fr = "Enchaîner les attaques chargées réduit leurs temps de chargement de "..CNumb("{charge_time:%s}", "chrgtime_var_rgb").." par cumule. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "連續射擊會使後續射擊充能時間 "..CNumb("{charge_time:%s}", "chrgtime_var_rgb").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 猛攻
				-- 冥潮雷射槍 -- 6% | 8% | 10% | 12% (up to 60%)
			-- ["zh-cn"] = "连续进行充能攻击时 \n"..CNumb("{charge_time:%s}", "chrgtime_var_rgb").." 蓄力时间。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 猛攻
		},
		--[+ ARMOURBANE +]--
		-- Brittleness Stacks (per tier)
		-- Helbore Lasguns -- 2 to 6 | 4 to 8 | 6 to 10 | 8 to 12
		["loc_trait_bespoke_rend_armor_on_charged_shots_desc"] = { -- min_stack_count: 8, max_stack_count: 12, +colors
			en = "Adds "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").."-"..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." Stacks of "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." to hit enemies, based on charge level.\n"
				..Dot_nc.." Max "..CNumb("16", "n_16_rgb").." Stacks, up to "..CNumb("40%", "pc_40_rgb")..". "
				..CPhrs("Can_be_refr")..Dot_green.." Can apply Stacks through shields.",
			ru = "Добавляет врагу "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").."-"..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." зарядов по "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони при попадании, в зависимости от времени заряжания выстрела. До "..CNumb("40%", "pc_40_rgb")..". "
				..CPhrs("Can_be_refr"), -- Бронебой CNote("Brtl_note")
			-- fr = "Inflige de "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").." à "..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." cumuls de "..CNumb("2.5%", "pc_2_5_rgb").." de "..CKWord("Fragilité", "Brittleness_rgb_fr").." aux ennemis touchés, en fonction du niveau de charge."..CNote("Brtl_note"),
			-- ["zh-tw"] = "依據充能時間，使其獲得 "..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").." 至 "..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." 層， "..CNumb("2.5%", "pc_2_5_rgb").." 的 "..CKWord("脆弱", "Brittleness_rgb_tw").."，上限 "..CNumb("16", "n_16_rgb").." 層，共 "..CNumb("40%", "pc_40_rgb").." 。" .. CNote("Brtl_note"), -- 護甲之禍
				-- 冥潮雷射槍 -- 2 to 6 | 4 to 8 | 6 to 10 | 8 to 12
			-- ["zh-cn"] = "随充能时间提升效果，对目标施加\n"..CNumb("{min_stack_count:%s}", "min_stk_cnt_var_rgb").." 到 "..CNumb("{max_stack_count:%s}", "max_stk_cnt_var_rgb").." 层 "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."。\n最多叠加 "..CNumb("16", "n_16_rgb").." 层，最高 "..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"), -- 装甲之祸
		},
		--[+ POWER BLAST +]--
		-- Crit Chance per stack (per tier)
		-- Plasma Gun -- 2% | 3% | 4% | 5% (up to +25%)
		["loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time_desc"] = { -- crit_chance_min: 5%, crit_chance_max: 25%, +colors
			en = CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." per "..CNumb("20%", "pc_20_rgb").." charge level. "..Dot_nc.." Stacks up to "..CNumb("5", "n_5_rgb").." times. Maximum of "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." at "..CNumb("91%", "pc_91p_rgb").." charge level.\n"
				..Dot_nc.." Max Stacks can only be reached by the Alt fire charging action.",
			ru = CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." за каждые "..CNumb("20%", "pc_20_rgb").." перегрева. "
				..Dot_nc.." Суммируется до "..CNumb("5", "n_5_rgb").." раз, вплоть до "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." при уровне перегрева "..CNumb("91%", "pc_91p_rgb").." или выше.", -- Мощный выстрел -- руоф Мощный взрыв
			-- fr = "Gagnez entre "..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." et "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." de "..CKWord("Taux de coup critique", "Crt_chance_rgb_fr").." en fonction du niveau de charge lorsque vous tirez.",
			-- ["zh-tw"] = "依據 "..CKWord("充能", "Heat2_rgb_tw").." 等級，\n "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." 到 "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").." "..CKWord("暴擊機率", "Crt_chance_rgb_tw").."。", -- 聚能爆發
				-- 電漿槍 -- 2% | 3% | 4% | 5% (up to +25%)
			-- ["zh-cn"] = "随充能程度叠加层数，每充能\n"..CNumb("20%", "pc_20_rgb").." 叠加 "..CNumb("1", "n_1_rgb").." 层，每层 "..CNumb("+", "n_plus_rgb")..CNumb("{crit_chance_min:%s}", "critchmin_var_rgb").." "..CKWord("暴击几率", "Crt_chance_rgb_zh_cn").."。\n最多叠加 "..CNumb("5", "n_5_rgb").." 层，最高 "..CNumb("{crit_chance_max:%s}", "critchmax_var_rgb").."。", -- 充能爆破
		},
		--[+ GETS HOT! +]--
		-- Crit Chance and Ranged Crit Damage per stack (per tier)
		-- Plasma Gun -- 5.5% and 4% | 7% and 6% | 8.5 and 8% | 10% and 10% (up to +50% and +50%)
		["loc_trait_bespoke_crit_chance_scaled_on_heat_desc"] = { -- crit_chance: 50%, ranged_crit_damage: 10%, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb").." and\n"
				..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." "..CKWord("Critical Damage", "Crit_dmg_r_rgb").." per Stack.\n"
				..Dot_nc.." Stacks up to "..CNumb("5", "n_5_rgb").." times.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." и\n"
				..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." к "..CKWord("критическому урону", "krit_uronu_rgb_ru").." за заряд.\n"
				..Dot_nc.." Суммируется до "..CNumb("5", "n_5_rgb").." раз.", -- Критическая жара! -- руоф Становится жарко!
			-- fr = "Augmente de "..CNumb("{crit_chance:%s}", "crit_var_rgb").." par cumul le "..CKWord("Taux de coup critique", "Crit_hit_chance_rgb_fr").."  proportionnellement à votre niveau de "..CKWord("Chaleur", "Heat_rgb_fr").." actuel. Augmente également les "..CKWord("Dégâts de coup critique", "Crit_hit_color_rgb_fr").." à distance de "..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." par cumul.",
			-- ["zh-tw"] = "依據 "..CKWord("熱能", "Heat_rgb_tw").." 提升 "..CKWord("暴擊機率", "Crt_chance_rgb_tw").."，\n每層 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊", "Crit_hits_rgb_tw").." 跟 "..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." "..CKWord("遠程暴擊傷害", "Crit_hit_r_color_rgb_tw").."。\n上限 "..CNumb("5", "n_5_rgb").." 層，共 "..CNumb("50%", "pc_50_rgb").." 。", -- 燃起來!
				-- 電漿槍 -- 5.5% and 4% | 7% and 6% | 8.5 and 8% | 10% and 10% (up to +50% and +50%)
			-- ["zh-cn"] = "随"..CKWord("热量", "Heat_rgb_zh_cn").."增长叠加层数，\n每层 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crt_chance_rgb_zh_cn").."，\n同时 "..CNumb("{ranged_crit_damage:%s}", "rangcrtdmg_var_rgb").." 远程"..CKWord("暴击伤害", "Crit_dmg_r_rgb_zh_cn").."。\n最多叠加 "..CNumb("5", "n_5_rgb").." 层。", -- 升温！
		},
		--[+ VOLATILE +]--
		-- Charge Time Reduction per stack (per tier)
		-- Plasma Gun -- 2.5% | 3% | 3.5% | 4% (up to 20%)
		["loc_trait_bespoke_lower_overheat_gives_faster_charge_desc"] = { -- charge_speed: +4%, stacks: 5, +colors
			en = CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." Charge Speed on low "..CKWord("Overheat", "Overheat_rgb")..". Stacks up to "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." к скорости заряжания выстрела при низком "..CKWord("перегреве", "peregreve_rgb_ru")..". Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.", -- Испарение
			-- fr = CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." de vitesse de charge lorsque votre surcharge est basse. Se cumule jusqu'à "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "在 "..CKWord("熱能", "Heat_rgb_tw").." 較低時，充能速度 "..CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 熱力震盪
				-- 電漿槍 -- 2.5% | 3% | 3.5% | 4% (up to 20%)
			-- ["zh-cn"] = "随"..CKWord("热量", "Heat_rgb_zh_cn").."增长减少层数，\n每层 "..CNumb("+{charge_speed:%s}", "p_chrgspd_var_rgb").." 充能速度，最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 易挥发
		},
		--[+ BLAZE AWAY +]-- ALT OGRYN
		-- Power per stack (per tier)
		-- Grenadier Gauntlet, Inferno Staff, Plasma Gun -- 5% | 6% | 7% | 8% (up to +40%)
		-- Kickback, Rumbler -- 6% | 7% | 8% | 9% (up to +45%)
		["loc_trait_bespoke_power_bonus_on_continuous_fire_alternative_desc"] = { -- power_level: +8%, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for every shot fired during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. "
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." за каждый выстрел, сделанный во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CNote("Pwr_note"), -- Стрельба без устали -- руоф Энтузиазм
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pour chaque tir effectué en tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			-- ["zh-tw"] = "持續射擊時，每射出一發 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 連續發射
				-- 撕裂者自動手槍, 雙鏈重型機槍, 擲彈兵臂鎧, 電漿槍 -- 5% | 6% | 7% | 8% (up to +40%)
				-- 反衝者, 震盪槍 -- 6% | 7% | 8% | 9% (up to +45%)
			-- ["zh-cn"] = "连续射击期间，每次射击 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"), -- 连续射击
		},
		--[+ RISING HEAT +]--
		-- Power per stack (per tier)
		-- Plasma Gun -- 1.5% | 2% | 3% | 4% (up to +20%)
		["loc_trait_bespoke_power_bonus_scaled_on_heat_desc"] = { -- power_level: +8%, stacks: 5, +colors
			en = "Up to "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("Strength", "Strength_rgb").." scaling with "..CKWord("Heat", "Heat_rgb").." Level. "
				..CNote("Pwr_note"),
			ru = "До "..CNumb("{damage:%s}", "dmg_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." в зависимости от уровня "..CKWord("перегрева", "peregreva_rgb_ru")..". "
				..CNote("Pwr_note"), -- Нарастающий жар  -- руоф Сильная жара
			-- fr = "Jusqu'à "..CNumb("{damage:%s}", "dmg_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." en fonction du niveau de "..CKWord("Chaleur", "Heat_rgb_fr").."."..CNote("Pwr_note"),
			-- ["zh-tw"] = "依據 "..CKWord("熱能", "Heat_rgb_tw").." 等級，最多 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 升溫
				-- 電漿槍 -- 1.5% | 2% | 3% | 4% (up to +20%)
			-- ["zh-cn"] = "随"..CKWord("热量", "Heat_rgb_zh_cn").."增长提升效果\n，最高 "..CNumb("{damage:%s}", "dmg_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。"..CNote("Pwr_note"), -- 急剧升温
		},
		--[+ OPTIMISED COOLING +]--
		-- Overheat Cost Reduction per stack (per tier)
		-- Plasma Gun -- 4% | 6% | 8% | 10% (up to ~41%)
		["loc_trait_bespoke_reduced_heat_on_continuous_desc"] = { -- +colors
			en = CNumb("-", "n_minus_rgb")..CNumb("10%", "pc_10_rgb").." "..CKWord("Heat", "Heat_rgb").." generation per Stack for consecutive shots or charged shots.\n"
				..Dot_nc.." Stacks up to "..CNumb("{stacks:%s}", "stacks_var_rgb").." times for a ~"..CNumb("41%", "pc_41_rgb").." total reduction. "..Dot_red.." Description for T4!\n"
				..Dot_nc.." T1: "..CNumb("-", "n_minus_rgb")..CNumb("4%", "pc_4_rgb").." | T2: "..CNumb("-", "n_minus_rgb")..CNumb("6%", "pc_6_rgb").." | T3: "..CNumb("-", "n_minus_rgb")..CNumb("8%", "pc_8_rgb")..".",
			ru = CNumb("-", "n_minus_rgb")..CNumb("10%", "pc_10_rgb").." к набору "..CKWord("перегрева", "peregreva_rgb_ru").." за заряд для серии выстрелов или для заряженных выстрелов. "..Dot_nc.." До "..CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов, вплоть до ~"..CNumb("41%", "pc_41_rgb").." снижения "..CKWord("перегрева", "peregreva_rgb_ru")..". "..Dot_red.." Описание 4 уровня! "..Dot_nc.." У1: "..CNumb("-", "n_minus_rgb")..CNumb("4%", "pc_4_rgb").." | У2: "..CNumb("-", "n_minus_rgb")..CNumb("6%", "pc_6_rgb").." | У3: "..CNumb("-", "n_minus_rgb")..CNumb("8%", "pc_8_rgb")..".", -- Оптимизированное охлаждение
			-- fr = "Vitesse de chargement augmentée inversement proportionnelle au niveau de "..CKWord("Chaleur", "Heat_rgb_fr")..".",
			-- ["zh-tw"] = "連續精準射擊時，\n降低 "..CKWord("熱能", "Heat_rgb_tw").." 提升速度。上限 "..CNumb("5", "n_5_rgb").." 層。", -- 優化冷卻
				-- 電漿槍 -- 4% | 6% | 8% | 10% (up to ~41%)
			-- ["zh-cn"] = "连续射击期间，每次射击减少"..CKWord("热量", "Heat_rgb_zh_cn").."积累。最多叠加 "..CNumb("5", "n_5_rgb").." 层。", -- 优化冷却
		},
		--[+ FOCUSED COOLING +]--
		-- Overheat Cost Reduction (per tier)
		-- Plasma Gun -- 30% | 40% | 50% | 60%
		["loc_trait_bespoke_reduced_overheat_on_crits_desc"] = { -- +colors
			en = CNumb("-", "n_minus_rgb")..CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." "..CKWord("Heat", "Heat_rgb").." generation on "..CKWord("Critical Hit", "Crit_hit_rgb")..".",
			ru = CNumb("-", "n_minus_rgb")..CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." "..CKWord("перегрева", "peregreva_rgb_ru").." вырабатывается при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..".", -- Сфокусированное охлаждение -- руоф Сосредоточенное охлаждение
			-- fr = CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." de génération de "..CKWord("Chaleur", "Heat_rgb_fr").." lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr")..".",
			-- ["zh-tw"] = CKWord("暴擊", "Crit_rgb_tw").." 時，產生的 "..CKWord("熱能", "Heat_rgb_tw").." 僅 "..CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").."。", -- 專注冷卻
				-- 電漿槍 -- 30% | 40% | 50% | 60%
			-- ["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时，减少 "..CNumb("{heat_percentage:%s}", "heat_pc_var_rgb").." "..CKWord("热量", "Heat_rgb_zh_cn").."积累。", -- 专注冷却
		},
		--[+ GAUNTLET MOMENTUM +]--
		-- Melee Power per stack (per tier)
		-- Grenadier Gauntlet -- 5% | 5% | 5% | 5% (up to +50%) (bugged)
		["loc_trait_bespoke_power_bonus_on_chained_melee_desc"] = { -- power: 5%, stacks: 10, time: 1.5, +colors
			en = CNumb("{power:%s}", "pwr_var_rgb").." Melee "..CKWord("Strength", "Strength_rgb").." per Stack. Stacks on chained Melee hits, up to "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. Each Stack lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. "
				..CNote("Pwr_note_rgb").."\n"
				..Dot_red.." {#color(255, 35, 5)}BUG:{#reset()} "..CNumb("5%", "pc_5_rgb").." all tiers.",
			ru = CNumb("{power:%s}", "pwr_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." в ближнем бою. До "..CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов при сериях ударов, длятся "..CNumb("{time:%s}", "time_var_rgb").." секунды каждый. "
				..CNote("Pwr_note_rgb_ru").."\n"
				..Dot_red.." {#color(255, 35, 5)}СЛОМАНО:{#reset()} "..CNumb("5%", "pc_5_rgb").." все уровни.", -- Инерция перчатки -- руоф Перчатка моментума
			-- fr = CNumb("+", "n_plus_rgb")..CNumb("1", "n_1_rgb").." cumul de "..CNumb("{power:%s}", "pwr_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." de mélée, est ajouté pour chaque attaque de mélée avec le Gantelet. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. Les cumuls dure "..CNumb("{time:%s}", "time_var_rgb").." secondes. {#color(255, 35, 5)}(bug:5% tout les niveaux de la bénédiction){#reset()}"..CNote("Pwr_note"),
			-- ["zh-tw"] = "連續近戰攻擊時， "..CNumb("+", "n_plus_rgb")..CNumb("1", "n_1_rgb").." 層 "..CKWord("近戰威力", "Strength_m_rgb_tw").." 。\n每層 "..CNumb("{power:%s}", "pwr_var_rgb").." 的 "..CKWord("近戰威力", "Strength_m_rgb_tw").." ，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n{#color(255, 35, 5)}（已知問題：所有等級皆為 5%）{#reset()}" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 交叉動量
				-- 擲彈兵臂鎧 -- 5% | 5% | 5% | 5% (up to +50%) (bugged)
			-- ["zh-cn"] = "臂铠近战攻击命中敌人时\n"..CNumb("{power:%s}", "pwr_var_rgb").." 臂铠近战"..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。{#color(255, 35, 5)}\n（BUG：无论祝福级别如何，\n数值始终为 +5% 强度。）{#reset()}"..CNote("Pwr_note"), -- 挑战势头
		},
		--[+ PULVERISE +]--
		-- Crit Chance (per tier)
		-- Grenadier Gauntlet -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_crit_chance_on_melee_kill_desc"] = { -- crit_chance: +25%, time: 3, +colors
			en = CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("Critical Chance", "Crit_chance_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Melee Kill.",
			ru = CNumb("{crit_chance:%s}", "crit_var_rgb").." к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунды при убийстве в ближнем бою.", -- Измельчение -- руоф Пульверизация
			-- fr = CNumb("{crit_chance:%s}", "crit_var_rgb").." de "..CKWord("Taux de coup critique", "Crit_chance_rgb_fr").." pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes lors d'un élimination en mélée.",
			-- ["zh-tw"] = "近戰擊殺時 "..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴擊機率", "Crit_chance_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 粉碎
				-- 擲彈兵臂鎧 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = "臂铠近战攻击击杀敌人时\n"..CNumb("{crit_chance:%s}", "crit_var_rgb").." "..CKWord("暴击几率", "Crit_chance_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。", -- 粉碎
		},
		--[+ DISRUPTIVE +]--
		-- Melee Power (per tier)
		-- Grenadier Gauntlet -- 15% | 20% | 25% | 30%
		["loc_trait_bespoke_melee_power_bonus_after_explosion_desc"] = { -- power_level: 30%, time: 3.5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." Melee "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds after hitting at least "..CNumb("3", "n_3_rgb").." enemies with a Secondary Attack. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." в ближнем бою на "..CNumb("{time:%s}", "time_var_rgb").." секунды после попадания по "..CNumb("3", "n_3_rgb").." и более врагам тяжёлой атакой. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"), -- Разрывной эффект
			-- fr = "Toucher au moins "..CNumb("3", "n_3_rgb").." ennemies avec votre attaque secondaire vous octroie "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pour vos attaque de mélée pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes."..CNote("Pwr_note"),
			-- ["zh-tw"] = "當次要攻擊命中至少 "..CNumb("3", "n_3_rgb").." 名敵人時，\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("近戰威力", "Strength_m_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 顛覆性力量
				-- 擲彈兵臂鎧 -- 15% | 20% | 25% | 30%
			-- ["zh-cn"] = "次要攻击命中至少 "..CNumb("3", "n_3_rgb").." 名敌人时，\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 近战"..CKWord("强度", "Strength_rgb_zh_cn").."，持续"..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"), -- 破坏者
		},
		--[+ EXPLOSIVE OFFENSIVE +]--
		-- Power (per tier)
		-- Grenadier Gauntlet -- 6% | 9% | 12% | 15%
		["loc_trait_bespoke_power_bonus_after_weapon_special_multiple_desc"] = { -- power_level: 15%, time: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds after hitting multiple enemies with your Weapon Special explosion. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." на "..CNumb("{time:%s}", "time_var_rgb").." секунд после попадания взрывом специальной атаки по нескольким врагам. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"), -- Взрывное наступление
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." bonus pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes après avoir touché plusieurs ennemies avec l'explosion spéciale de votre arme."..CNote("Pwr_note"),
			-- ["zh-tw"] = "特殊攻擊的爆炸命中多名敵人時，\n "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 爆炸使我強大
				-- 擲彈兵臂鎧 -- 6% | 9% | 12% | 15%
			-- ["zh-cn"] = "特殊攻击爆炸命中至少 "..CNumb("3", "n_3_rgb").." 名敌人时，\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。持续"..CNumb("{time:%s}", "time_var_rgb").."秒。"..CNote("Pwr_note"), -- 爆炸攻势
		},
		--[+ PINPOINTING TARGET +]--
		-- Power per stack (per tier)
		-- Grenadier Gauntlet, Shotpistol and Shield -- 5% | 6% | 7% | 8% (up to +40%)
		["loc_trait_bespoke_power_bonus_based_on_charge_time_ranged_desc"] = { -- power_level: +8%, time: 0.4, stacks: 5, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." every "..CNumb("{time:%s}", "time_var_rgb").." seconds while aiming. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times. Removes all Stacks on shot, on push, or when leaving alt fire mode. "
				..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." каждые "..CNumb("{time:%s}", "time_var_rgb").." секунды пока вы целитесь. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. Все заряды сбрасываются при выстреле, толкании или выходе из режима прицеливания.", -- Определение цели
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." toutes les "..CNumb("{time:%s}", "time_var_rgb").." secondes pendant la visée. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois. Tous les cumuls sont déchargés lorsque vous tirez."..CNote("Pwr_note"),
			-- ["zh-tw"] = "持續瞄準時，\n每 "..CNumb("{time:%s}", "time_var_rgb").." 秒 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。射擊後會重置所有層數。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 精確定位
				-- 擲彈兵臂鎧 -- 5% | 6% | 7% | 8% (up to +40%)
			-- ["zh-cn"] = "瞄准期间，每 "..CNumb("{time:%s}", "time_var_rgb").." 秒 "..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层，射击后清空所有层数。"..CNote("Pwr_note"), -- 精确定位
		},
		--[+ CHARMED RELOAD +]--
		-- Bullets Transferred (per tier)
		-- Twin-Linked Stubbers -- 2 | 3 | 4 | 5
		["loc_trait_bespoke_ammo_refill_from_reserve_on_crit_desc"] = { -- bullet_amount: +5, +colors
			en = CNumb("{bullet_amount:%s}", "blltam_var_rgb").." bullets loaded from Reserve on "..CKWord("Critical Hit", "Crit_hit_rgb")..". "
				..Dot_nc.." Procs once per "..CKWord("Crit", "Crit_rgb")..". The shot does not need to hit an enemy.",
			ru = CNumb("{bullet_amount:%s}", "blltam_var_rgb").." патронов заряжается из резерва при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru")..". "
				..Dot_nc.." Срабатывает раз за "..CKWord("критический выстрел", "krit_vystrel_rgb_ru")..". Выстрелу не обязательно попадать во врага.", -- Зачарованная перезарядка
			-- fr = CNumb("+", "n_plus_rgb")..CNumb("{bullet_amount:%s}", "blltam_var_rgb").." Munitions chargées depuis la réserve lors d'un "..CKWord("Coup critique", "Crit_hit_rgb_fr")..".",
			-- ["zh-tw"] = CKWord("暴擊命中", "Crit_hit_rgb_tw").." ，從備彈中補充 "..CNumb("{bullet_amount:%s}", "blltam_var_rgb").." 發子彈。", -- 魔力彈藥
				-- 雙鏈重型機槍 -- 2 | 3 | 4 | 5
			-- ["zh-cn"] = CKWord("暴击命中", "Crit_hit_rgb_tw").."时，从弹药储备填装 "..CNumb("{bullet_amount:%s}", "blltam_var_rgb").." 枚弹药。", -- 魅惑重装
		},
		--[+ OVERWHELMING FIRE +]--
		-- Ranged Power per stack (per tier)
		-- Heavy Stubbers, Twin-Linked Stubbers -- 7% | 8% | 9% | 10% (up to +50%)
		["loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target_desc"] = { -- power: +10%, hit: 4, time: 2, stacks: 5, s->seconds, +colors
			en = CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("Strength", "Strength_rgb").." for every "..CNumb("{hit:%s}", "hit_var_rgb").." Single Target Hits. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.\n"
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power:%s}", "pwr_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." за каждое "..CNumb("{hit:%s}", "hit_var_rgb").." попадание по одному врагу. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунды. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз. "
				..CPhrs("Can_be_refr")..CNote("Pwr_note"), -- Подавляющий огонь -- руоф Огонь на поражение
			-- fr = CNumb("{power:%s}", "pwr_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." pour toutes les "..CNumb("{hit:%s}", "hit_var_rgb").." attaques sur une cible unique. Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes и se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois."..CNote("Pwr_note"),
			-- ["zh-tw"] = "每命中同一目標 "..CNumb("{hit:%s}", "hit_var_rgb").." 次 "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("威力", "Strength_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 壓倒性火力
				-- 雙鏈重型機槍 -- 7% | 8% | 9% | 10% (up to +50%)
			-- ["zh-cn"] = "每命中同一敌人 "..CNumb("{hit:%s}", "hit_var_rgb").." 次 "..CNumb("{power:%s}", "pwr_var_rgb").." "..CKWord("强度", "Strength_rgb_zh_cn").."，\n持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。"..CNote("Pwr_note"), -- 狂猛火力
		},
		--[+ CAN OPENER +]--
		-- Brittleness Stacks (per tier)
		-- Ripper Guns -- 10 | 12 | 14 | 16
		["loc_trait_bespoke_armor_rending_bayonette_desc"] = { -- rending: 2.5%, stacks: 16, time: 5, max_stacks: 16, s->seconds, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." Stacks of "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("Brittleness", "Brittleness_rgb").." is applied to the enemy on weapon Special Hit. Lasts "..CNumb("{time:%s}", "time_var_rgb").." seconds. Max "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." Stacks, up to "..CNumb("40%", "pc_40_rgb")..".\n"
				..CNote("Brtl_note"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." зарядов по "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони применяется к врагу при ударе специальной атакой. Длится "..CNumb("{time:%s}", "time_var_rgb").." секунд. До "..CNumb("40%", "pc_40_rgb").." при "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." зарядах. "
				..CNote("Brtl_note"), -- Открывашка
			-- fr = "Toucher un ennemi avec l'attaque spéciale lui octroie"..CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CNumb("{rending:%s}", "rending_var_rgb").." de "..CKWord("Fragilité", "Brittleness_rgb_fr")..". Dure "..CNumb("{time:%s}", "time_var_rgb").." secondes. Pour un maximum de "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." cumuls, Pour un total de "..CNumb("40%", "pc_40_rgb").."."..CNote("Brtl_note"),
			-- ["zh-tw"] = "特殊攻擊命中敵人時，\n使其獲得 "..CNumb("+", "n_plus_rgb")..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_tw").."，\n持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒， "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 層時為 "..CNumb("40%", "pc_40_rgb").." 。"..CNote("Brtl_note"), -- 開罐器
				-- 撕裂槍 -- 10 | 12 | 14 | 16
			-- ["zh-cn"] = "特殊攻击命中时，对目标施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CNumb("{rending:%s}", "rending_var_rgb").." "..CKWord("脆弱", "Brittleness_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。\n最多叠加 "..CNumb("{max_stacks:%s}", "maxstks_var_rgb").." 层，最高 "..CNumb("40%", "pc_40_rgb").."。"..CNote("Brtl_note"), -- 开罐器
		},
		--[+ BORN IN BLOOD +]--	08.12.2025
		-- Max Toughness Percentage (per tier)
		-- Dual Stub Pistols, Exterminator Shotguns, Ripper Guns -- 4.5% | 5% | 5.5% | 6%
		["loc_trait_bespoke_toughness_on_close_range_kills_desc"] = { -- toughness: +6%, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." on killing enemies within "..CNumb("12.5", "n_12_5_rgb").." meters. "
				..Dot_green.." Can proc multiple times per shot.",
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." при убийстве на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров. "
				..Dot_green.." Может срабатывать несколько раз за выстрел.", -- Рождённый в крови -- руоф Рожденный в крови
			-- fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." lors d'une élimination à moins de "..CNumb("12.5", "n_12_5_rgb").." mètres.",
			-- ["zh-tw"] = CNumb("12.5", "n_12_5_rgb").." 公尺內擊殺敵人 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."。", -- 浴血而生
				-- 撕裂槍 -- 4.5% | 5% | 5.5% | 6%
			-- ["zh-cn"] = "击杀 "..CNumb("12.5", "n_12_5_rgb").." 米内的敌人时，"..CKWord("韧性", "Toughness_rgb_zh_cn").." "..CNumb("{toughness:%s}", "tghns_var_rgb").."。", -- 浴血而生
		},
		--[+ PIERCE +]--
		-- Melee Stagger Strength (per tier)
		-- Kickback, Rumbler -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger_desc"] = { -- stagger: +25%, +colors
			en = "Special Attacks gain "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("Stagger", "Stagger_rgb").." and ignore "..CKWord("Hit Mass", "Hit_mass_rgb").." Bonus from Armour.\n"
				..Dot_green.." Carapace armor can be "..CKWord("Cleaved", "Cleaved_rgb")..".",
			ru = "Специальные атаки дают "..CNumb("{stagger:%s}", "stgr_var_rgb").." к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." и игнорируют усиления "..CKWord("ударной массы", "udarn_massy_rgb_ru").." врага от брони.\n"
				..Dot_green.." Панцирная броня "..CKWord("простреливается", "prostrelivaetsa_rgb_ru")..".", -- Пробивание -- руоф Прокол
			-- fr = "L'attaque spéciale gagne "..CNumb("{stagger:%s}", "stgr_var_rgb").." de "..CKWord("Vacillement", "Stagger_rgb_fr").." и ignore le "..CKWord("Coups en masse", "Hit_mass_rgb_fr").." de l'armure.",
			-- ["zh-tw"] = "武器特殊攻擊可無視敵方護甲 "..CKWord("順劈目標", "Hit_mass_rgb_tw").."，\n並附加 "..CNumb("{stagger:%s}", "stgr_var_rgb").." 的 "..CKWord("踉蹌效果", "Stagger2_rgb_tw").." 。", -- 穿透
				-- 反衝者, 震盪槍 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = "特殊攻击 "..CNumb("{stagger:%s}", "stgr_var_rgb").." "..CKWord("冲击", "Impact_rgb_zh_cn").."，\n同时无视装甲赋予的"..CKWord("打击质量", "Hit_mass_rgb_zh_cn").."。"..CNote("Hit_Mass_note"), -- 穿透
		},
		--[+ PUNISHING FIRE +]--
		-- Ranged Power (per tier)
		-- Kickback -- 6% | 9% | 12% | 15%
		["loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave_desc"] = { -- power_level: +15%, time: 3, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("Strength", "Strength_rgb").." on your Ranged attack for "..CNumb("{time:%s}", "time_var_rgb").." seconds after "..CKWord("Cleaving", "Cleaving_rgb").." through several enemies with your weapon's Special attack. "
				..CPhrs("Can_be_refr"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." для ваших дальнобойных атак на "..CNumb("{time:%s}", "time_var_rgb").." секунды после того как специальная атака вашего оружия пробивает несколько врагов.\n"
				..CPhrs("Can_be_refr"), -- Карательный обстрел
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." sur vos attaques à distance pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes после avoir "..CKWord("Transpercé", "Cleaving_rgb_fr").." plusieurs ennemies avec l'attaque spéciale de votre arme."..CNote("Pwr_note"),
			-- ["zh-tw"] = "特殊攻擊貫穿(順劈)多名敵人\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("遠程威力", "Strength_r_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 懲罰射擊
				-- 反衝者 -- 6% | 9% | 12% | 15%
			-- ["zh-cn"] = "特殊攻击命中至少 "..CNumb("3", "n_3_rgb").." 名敌人时\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 远程"..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"), -- 惩罚之火
		},
		--[+ INSPIRING BARRAGE +]-- ALT OGRYN
		-- Max Toughness Percentage per stack (per tier)
		-- Kickback -- 1% | 2% | 3% | 4% (up to 20%)
		["loc_trait_bespoke_toughness_on_continuous_fire_alternative_desc"] = { -- toughness: +4%, ammo: 10%, stacks: 5, +colors
			en = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("Toughness", "Toughness_rgb").." for every shot fired during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." за каждый выстрел, сделанный во время непрерывной стрельбы. Суммируется "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.", -- Вдохновляющий обстрел -- руоф Вдохновляющий натиск
			-- fr = CNumb("{toughness:%s}", "tghns_var_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr").." pour chaque tir lors d'un tir continu. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			-- ["zh-tw"] = "持續射擊時，每射一發恢復 "..CNumb("{toughness:%s}", "tghns_var_rgb").." "..CKWord("韌性", "Toughness_rgb_tw").."，\n上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 激勵彈幕
				-- 反衝者 -- 1% | 2% | 3% | 4% (up to 20%)
			-- ["zh-cn"] = "连续射击期间，每次射击回复"..CKWord("韧性", "Toughness_rgb_zh_cn")..",\n每叠加 "..CNumb("1", "n_1_rgb").." 层，"..CKWord("韧性", "Toughness_rgb_zh_cn").."回复效果 "..CNumb("{toughness:%s}", "tghns_var_rgb").."。\n最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 鼓舞弹幕
		},
		--[+ EXPANSIVE +]--
		-- Melee Power (per tier)
		-- Kickback -- 30% | 34% | 38% | 42%
		["loc_trait_bespoke_weapon_special_power_bonus_after_one_shots_desc"] = { -- power_level: +42%, time: 3.5, s->seconds, +colors
			en = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." Melee "..CKWord("Strength", "Strength_rgb").." for "..CNumb("{time:%s}", "time_var_rgb").." seconds on Hitting "..CNumb("3", "n_3_rgb")..CNumb("+", "n_plus_rgb").." Enemies with a Ranged Attack.\n"
				..CPhrs("Can_be_refr")..CNote("Pwr_note"),
			ru = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." к "..CKWord("силе", "sile_rgb_ru").." ближнего боя на "..CNumb("{time:%s}", "time_var_rgb").." секунды при попадании по "..CNumb("3", "n_3_rgb").." и более врагам атакой дальнего боя.\n"
				..CPhrs("Can_be_refr"), -- Экспансивный -- руоф Расширение
			-- fr = CNumb("{power_level:%s}", "pwrlvl_var_rgb").." de "..CKWord("Puissance", "Strength_rgb_fr").." de mélée pendant "..CNumb("{time:%s}", "time_var_rgb").." secondes en touchant au moins "..CNumb("3", "n_3_rgb").." ennemies avec une attaque à distance."..CNote("Pwr_note"),
			-- ["zh-tw"] = "遠程攻擊同時命中 "..CNumb("3", "n_3_rgb").." 名以上敵人\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." "..CKWord("近戰威力", "Strength_m_rgb_tw").."，持續 "..CNumb("{time:%s}", "time_var_rgb").." 秒。" .. COLORS_KWords_tw.CNote("Pwr_note_rgb_tw"), -- 擴展性
				-- 反衝者 -- 30% | 34% | 38% | 42%
			-- ["zh-cn"] = "命中至少 "..CNumb("3", "n_3_rgb").." 名敌人时\n"..CNumb("{power_level:%s}", "pwrlvl_var_rgb").." 近战"..CKWord("强度", "Strength_rgb_zh_cn").."，持续 "..CNumb("{time:%s}", "time_var_rgb").." 秒。"..CNote("Pwr_note"), -- 扩展
		},
		--[+ SHRAPNEL +]--
		-- Bleed Stacks (per tier)
		-- Rumbler -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_close_explosion_applies_bleed_desc"] = { -- stacks: 4, +colors
			en = CNumb("{stacks:%s}", "stacks_var_rgb").." "..CKWord("Bleed", "Bleed_rgb").." Stacks applied to enemies from close range explosions. "
				..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Stacks.\n"..Dot_green.." Can apply through shields. "..CPhrs("Refr_dur_stappl"),
			ru = CNumb("{stacks:%s}", "stacks_var_rgb").." заряда "..CKWord("кровотечения", "krovotechenia_rgb_ru").." получают враги от взрывов на близком расстоянии. "
				..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов. "..Dot_green.." Накладывается через щиты. "..CPhrs("Refr_dur_stappl"), -- Шрапнель
			-- fr = CNumb("{stacks:%s}", "stacks_var_rgb").." cumuls de "..CKWord("Saignement", "Bleed_rgb_fr").." avec les explosions rapprochées.",
			-- ["zh-tw"] = CNumb("12.5", "n_12_5_rgb").." 公尺內的爆炸會施加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層 "..CKWord("流血", "Bleed_rgb_tw").."。", -- 破片四射
				-- 震盪槍 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "低吼者的榴弹爆炸中心范围 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层 "..CKWord("流血", "Bleed_rgb_zh_cn").."。", -- 弹片
		},
		--[+ BLAST ZONE +]--
		-- Explosion Radius Increase per stack (per tier)
		-- Rumbler -- 3% | 4% | 5% | 6% (up to +30%)
		["loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire_desc"] = { -- radius: +6%, stacks: 5, +colors
			en = CNumb("{radius:%s}", "radius_var_rgb").." Explosion Radius for every shot fired during continuous fire. Stacks "..CNumb("{stacks:%s}", "stacks_var_rgb").." times.",
			ru = CNumb("{radius:%s}", "radius_var_rgb").." к радиусу взрыва за каждый выстрел, сделанный во время непрерывной стрельбы. Суммируется до "..CNumb("{stacks:%s}", "stacks_var_rgb").." раз.", -- Зона взрыва
			fr = CNumb("{radius:%s}", "radius_var_rgb").." de rayon d'explosion pour chaque tir d'un tir continue. Se cumule "..CNumb("{stacks:%s}", "stacks_var_rgb").." fois.",
			["zh-tw"] = "持續射擊時，\n每發可使爆炸半徑 "..CNumb("{radius:%s}", "radius_var_rgb").."，上限 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 層。", -- 狂轟猛炸
				-- 震盪槍 -- 3% | 4% | 5% | 6% (up to +30%)
			["zh-cn"] = "连续射击期间，每次射击"..CNumb("{radius:%s}", "radius_var_rgb").."爆炸范围。最多叠加 "..CNumb("{stacks:%s}", "stacks_var_rgb").." 层。", -- 爆炸区域
		},
		--[+ ADHESIVE CHARGE +]--
		-- Damage vs Ogryns and Monstrosities (per tier)
		-- Rumbler -- 6% | 9% | 12% | 15%
		["loc_trait_bespoke_grenades_stick_to_monsters_and_damage_desc"] = { -- dmg_vs_ogryn_monster: +15%, +colors
			en = CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." "..CKWord("Damage", "Damage_rgb").." vs Ogryns and Monstrosities. Your Grenades Stick to Ogryns and Monstrosities.",
			ru = CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." к "..CKWord("урону", "uronu_rgb_ru").." огринам и монстрам. Ваши гранаты прилипают к ним.", -- Липкий заряд -- руоф Цепной заряд
			-- fr = CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." de "..CKWord("Dégâts", "Damage_rgb_fr").." contre les Ogryns et les Monstruosités. Vos grenades s'accrochent aux Ogryns и Monstrosities.",
			-- ["zh-tw"] = "對歐格林與巨獸的 "..CKWord("傷害", "Damage_rgb_tw").." "..CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").."，\n且你的手榴彈會黏附在歐格林與怪物身上。", -- 黏著炸藥
				-- 震盪槍 -- 6% | 9% | 12% | 15%
			-- ["zh-cn"] = CNumb("{dmg_vs_ogryn_monster:%s}", "dmgvogrmon_var_rgb").." 对欧格林和怪物"..CKWord("伤害", "Damage_rgb_zh_cn").."。\n低吼者的榴弹会粘在欧格林和怪物身上。", -- 粘性炸药
		},
		--[+ MARKSMAN'S REFLEX +]--
		-- Reload Speed (per tier)
		-- Rumbler -- 15% | 20% | 25% | 30%
		["loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed_desc"] = { -- reload_speed: +30%, duration: 3, +colors
			en = CNumb("{reload_speed:%s}", "reload_var_rgb").." Reload Speed for "..CNumb("{duration:%s}", "dur_var_rgb").." seconds on Projectile "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". "
				..Dot_red.." Cannot be refreshed during active duration.",
			ru = CNumb("{reload_speed:%s}", "reload_var_rgb").." к скорости перезарядки на "..CNumb("{duration:%s}", "dur_var_rgb").." секунды при попадании снаряда в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru")..". "
				..Dot_red.." Не обновляется во время действия.", -- Рефлекс стрелка
			-- fr = CNumb("{reload_speed:%s}", "reload_var_rgb").." de vitesse de rechargement pendant "..CNumb("{duration:%s}", "dur_var_rgb").." secondes lors d'un "..CKWord("Coup sur point faible", "Weakspothit_rgb_fr")..".",
			-- ["zh-tw"] = "當子彈命中 "..CKWord("弱點", "Weakspot_rgb_tw").." 時 "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 換彈速度，\n持續 "..CNumb("{duration:%s}", "dur_var_rgb").." 秒。", -- 迅雷反射
				-- 震盪槍 -- 15% | 20% | 25% | 30%
			-- ["zh-cn"] = CKWord("命中弱点", "Weakspothit_rgb_zh_cn").."时 "..CNumb("{reload_speed:%s}", "reload_var_rgb").." 装弹速度，持续"..CNumb("{duration:%s}", "dur_var_rgb").."秒。", -- 神射手的反射
		},
}

-- Автоматическое создание шаблонов
local localization_templates = {}
for loc_key, locales in pairs(weapon_localizations) do
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
