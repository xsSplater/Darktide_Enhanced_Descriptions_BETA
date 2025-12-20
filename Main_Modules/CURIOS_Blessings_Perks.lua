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
local curios_localizations = {
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

--[+ ++CURIOS - РЕЛИКВИИ - 珍品++ +]--
	--[+ +BLESSINGS - БЛАГОСЛОВЕНИЯ - 祝福+ +]--
		--[+ Health +]--
		["loc_inate_gadget_health_desc"] = { -- max_health_modifier: +21%
			en = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." Maximum "..CKWord("Health", "Health_rgb"),
			ru = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." к максимальному "..CKWord("здоровью", "zdoroviu_rgb_ru"),
			fr = CKWord("{max_health_modifier:%s}", "maxhlth_rgb").." de "..CKWord("Santé", "Health_rgb_fr").." Maximum",
			["zh-tw"] = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." "..CKWord("最大生命", "Health_m_rgb_tw"),
			["zh-cn"] = CKWord("{max_health_modifier:%s}", "maxhlth_rgb").." 最大"..CKWord("生命值", "Health_rgb_zh_cn"),
		},
		--[+ Wound +]--
		["loc_inate_gadget_health_segment_desc"] = { -- extra_max_amount_of_wounds: +1
			en = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." "..CKWord("Wound", "Wound_rgb"),
			ru = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." сегмент полоски "..CKWord("здоровья", "zdorovia_rgb_ru"),
			fr = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").."  "..CKWord("Blessure", "Wound_rgb_fr"),
			["zh-tw"] = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." "..CKWord("傷痕", "Wound_rgb_tw"),
			["zh-cn"] = CNumb("{extra_max_amount_of_wounds:%s}", "maxwnds_rgb").." "..CKWord("伤口", "Wound_rgb_zh_cn"),
		},
		--[+ Stamina +]--
		["loc_inate_gadget_stamina_desc"] = { -- stamina_modifier: +3
			en = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." Maximum "..CKWord("Stamina", "Stamina_rgb"),
			ru = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." к максимальной "..CKWord("выносливости", "vynoslivosti_rgb_ru"),
			fr = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." d'"..CKWord("Endurance", "Stamina_rgb_fr").." Maximum",
			["zh-tw"] = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." "..CKWord("最大耐力", "Stamina_m_rgb_tw"),
			["zh-cn"] = CNumb("{stamina_modifier:%s}", "maxstam_rgb").." 最大"..CKWord("体力", "Stamina_rgb_zh_cn"),
		},
		--[+ Toughness +]--
		["loc_inate_gadget_toughness_desc"] = { -- toughness_bonus: +17%
			en = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." Maximum "..CKWord("Toughness", "Toughness_rgb"),
			ru = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." к максимальной "..CKWord("стойкости", "stoikosti_rgb_ru"),
			fr = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr"),
			["zh-tw"] = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("最大韌性", "Toughness_m_rgb_tw"),
			["zh-cn"] = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." 最大"..CKWord("韧性", "Toughness_rgb_zh_cn"),
		},

	--[+ TRAITS - ХАРАКТЕРИСТИКИ +]--
		--[+ Combat Ability Regeneration +]--
		["loc_gadget_cooldown_desc"] = { -- ability_cooldown_modifier: +4%
			en = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." "..CKWord("Combat Ability", "Cmbt_abil_rgb").." Regeneration",
			ru = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." к восстановлению "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru"),
			fr = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." de régénération du "..CKWord("Temps de recharge des capacités de combat", "Combat_ability_cd_rgb_fr"),
			["zh-tw"] = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." "..CKWord("戰鬥技能冷卻", "Combat_ability_cd_rgb_tw"),
			["zh-cn"] = CNumb("{ability_cooldown_modifier:%s}", "abil_cd_rgb").." "..CKWord("作战技能", "Combat_ability_rgb_zh_cn").."回复",
		},
		--[+ Corruption Resistance +]--
		["loc_gadget_corruption_resistance_desc"] = { -- corruption_taken_multiplier: +15%
			en = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." "..CKWord("Corruption", "Corruption_rgb").." Resistance",
			ru = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." к сопротивлению "..CKWord("порче", "porche_rgb_ru"),
			fr = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." de résistance à la "..CKWord("Corruption", "Corruption_rgb_fr"),
			["zh-tw"] = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." "..CKWord("腐敗", "Corruption_rgb_tw").." 抗性",
			["zh-cn"] = CNumb("{corruption_taken_multiplier:%s}", "corr_rgb").." "..CKWord("腐化", "Corruption_rgb_zh_cn").."抗性",
		},
		--[+ Corruption Resistance from Grimoires +]--
		["loc_gadget_grim_corruption_resistance_desc"] = { -- permanent_damage_converter_resistance: +20%
			en = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." "..CKWord("Corruption", "Corruption_rgb").." Resistance from Grimoires",
			ru = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." к сопротивлению "..CKWord("порче", "porche_rgb_ru").." от гримуаров",
			fr = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." de résistance à la "..CKWord("Corruption", "Corruption_rgb_fr").." (Grimoires)",
			["zh-tw"] = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." "..CKWord("腐敗", "Corruption_rgb_tw").." 抗性(法術書)",
			["zh-cn"] = CNumb("{permanent_damage_converter_resistance:%s}", "corrgrm_rgb").." "..CKWord("腐化", "Corruption_rgb_zh_cn").."抗性 (魔法书)",
		},
		--[+ Health +]--
		["loc_trait_gadget_health_increase_desc"] = { -- max_health_modifier: +5%
			en = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." Maximum "..CKWord("Health", "Health_rgb"),
			ru = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." к максимальному "..CKWord("здоровью", "zdoroviu_rgb_ru"),
			fr = CKWord("{max_health_modifier:%s}", "maxhlth_rgb").." de "..CKWord("Santé", "Health_rgb_fr").." maximum",
			["zh-tw"] = CNumb("{max_health_modifier:%s}", "maxhlth_rgb").." "..CKWord("最大生命", "Health_m_rgb_tw"),
			["zh-cn"] = CKWord("{max_health_modifier:%s}", "maxhlth_rgb").." 最大"..CKWord("生命值", "Health_rgb_zh_cn"),
		},
		--[+ Block Cost Reduction +]--
		["loc_gadget_block_cost_reduction_desc"] = { -- block_cost_multiplier: +12%
			en = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." Block Cost Reduction",
			ru = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." к снижению стоимости блока",
			fr = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." d'éfficacité de blocage",
			["zh-tw"] = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." 格擋消耗",
			["zh-cn"] = CNumb("{block_cost_multiplier:%s}", "blckcst_rgb").." 格挡效益",
		},
		--[+ Ally Revive Speed +]--
		["loc_gadget_revive_speed_desc"] = { -- revive_speed_modifier: +12%
			en = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." Ally Revive Speed",
			ru = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." к скорости возрождения союзников",
			fr = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." de vitesse de réanimation des alliés",
			["zh-tw"] = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." 復活速度 (盟友)",
			["zh-cn"] = CNumb("{revive_speed_modifier:%s}", "revive_rgb").." 复活速度 (盟友)",
		},
		--[+ Stamina Regeneration +]--
		["loc_gadget_stamina_regeneration_desc"] = { -- stamina_regeneration_modifier: +12%
			en = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." "..CKWord("Stamina", "Stamina_rgb").." Regeneration",
			ru = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." к восстановлению "..CKWord("выносливости", "vynoslivosti_rgb_ru"),
			fr = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." de régénération d'"..CKWord("Endurance", "Stamina_rgb_fr"),
			["zh-tw"] = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." "..CKWord("耐力", "Stamina_rgb_tw").." 恢復",
			["zh-cn"] = CNumb("{stamina_regeneration_modifier:%s}", "stamreg_rgb").." "..CKWord("体力", "Stamina_rgb_zh_cn").."复",
		},
		--[+ Toughness +]--
		["loc_trait_gadget_toughness_increase_desc"] = { -- toughness_bonus: +5%
			en = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("Toughness", "Toughness_rgb"),
			ru = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." к "..CKWord("стойкости", "stoikosti_rgb_ru"),
			fr = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." de "..CKWord("Robustesse", "Toughness_rgb_fr"),
			["zh-tw"] = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." "..CKWord("最大韌性", "Toughness_m_rgb_tw"),
			["zh-cn"] = CNumb("{toughness_bonus:%s}", "maxtghns_rgb").." 最大"..CKWord("韧性", "Toughness_rgb_zh_cn"),
		},
		--[+ Toughness Regeneration Speed +]--
		["loc_gadget_toughness_regen_delay_desc"] = { -- toughness_regen_delay_multiplier: +30%
			en = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." "..CKWord("Toughness", "Toughness_rgb").." Regeneration Speed",
			ru = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." к скорости восстановления "..CKWord("стойкости", "stoikosti_rgb_ru"),
			fr = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." de vitesse de régénération de "..CKWord("Robustesse", "Toughness_rgb_fr").." de syntonie",
			["zh-tw"] = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." "..CKWord("韌性恢復速度", "Toughness_rs_rgb_tw"),
			["zh-cn"] = CNumb("{toughness_regen_delay_multiplier:%s}", "tghn_reg_del_rgb").." "..CKWord("韧性", "Toughness_rgb_zh_cn").."回复速度",
		},
		--[+ Experience +]--
		["loc_trait_gadget_mission_xp_increase_desc"] = { -- mission_reward_xp_modifier: +10%
			en = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." Experience",
			ru = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." к опыту",
			fr = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." d'expérience",
			["zh-tw"] = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." 經驗",
			["zh-cn"] = CNumb("{mission_reward_xp_modifier:%s}", "xp_rgb").." 经验",
		},
		--[+ Ordo +]--
		["loc_trait_gadget_mission_credits_increase_desc"] = { -- mission_reward_credit_modifier: +10%
			en = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." Ordo Dockets",
			ru = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." купонов ордо",
			fr = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." bordereaux de l'Ordo (récompenses de mission)",
			["zh-tw"] = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." 教團標籤 (錢)",
			["zh-cn"] = CNumb("{mission_reward_credit_modifier:%s}", "credits_rgb").." 审判庭双子币 （任务奖励）",
		},
		--[+ Curio as Mission Reward instead of Weapon +]--
		["loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"] = { -- mission_reward_gear_instead_of_weapon_modifier: +20%
			en = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." chance of Curio as Mission Reward instead of Weapon",
			ru = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." шанс получить редкость вместо оружия в награду",
			fr = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." de chance d'obtenir une curiosité comme récompense à la place d'une arme",
			["zh-tw"] = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." 任務獎勵珍品機率(非武器)",
			["zh-cn"] = CNumb("{mission_reward_gear_instead_of_weapon_modifier:%s}", "gears_rgb").." 以珍品作为任务奖励 （而非武器） 的几率",
		},
		--[+ Damage Resistance vs Flamers +]--
		["loc_trait_gadget_dr_vs_flamer_desc"] = { -- damage_reduction: +20%
			en = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance vs Flamers",
			ru = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." сопротивления "..CKWord("урону", "uronu_rgb_ru").." от огнемётчиков",
			fr = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." de resistance aux "..CKWord("Dégâts", "Damage_rgb_fr").." (Incendiaires, Incendiaires toxiques) ",
			["zh-tw"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("傷害抗性", "Damage_res_rgb_tw").." (毒焰噴射者)",
			["zh-cn"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性（火焰兵）",
		},
		--[+ Damage Resistance vs Bombers +]--
		["loc_trait_gadget_dr_vs_grenadiers_desc"] = { -- damage_reduction: +20%
			en = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance vs Bombers",
			ru = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." сопротивления "..CKWord("урону", "uronu_rgb_ru").." от гренадёров",
			fr = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." de resistance aux "..CKWord("Dégâts", "Damage_rgb_fr").." (Bombardiers)",
			["zh-tw"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("傷害抗性", "Damage_res_rgb_tw").." (轟炸者)",
			["zh-cn"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性（轰炸者）",
		},
		--[+ Damage Resistance vs Gunners +]--
		["loc_trait_gadget_dr_vs_gunners_desc"] = { -- damage_reduction: +20%
			en = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance vs Gunners",
			ru = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." сопротивления "..CKWord("урону", "uronu_rgb_ru").." от пулемётчиков",
			fr = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." de resistance aux "..CKWord("Dégâts", "Damage_rgb_fr").." (Mitrailleurs)",
			["zh-tw"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("傷害抗性", "Damage_res_rgb_tw").." (砲手)",
			["zh-cn"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性（炮手）",
		},
		--[+ Damage Resistance vs Pox Hounds +]--
		["loc_trait_gadget_dr_vs_hounds_desc"] = { -- damage_reduction: +20%
			en = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance vs Pox Hounds",
			ru = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." сопротивления "..CKWord("урону", "uronu_rgb_ru").." от чумных гончих",
			fr = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." de resistance aux "..CKWord("Dégâts", "Damage_rgb_fr").." (Cerdères vérolés)",
			["zh-tw"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("傷害抗性", "Damage_res_rgb_tw").." (瘟疫獵犬)",
			["zh-cn"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性（瘟疫猎犬）",
		},
		--[+ Damage Resistance vs Mutants +]--
		["loc_trait_gadget_dr_vs_mutants_desc"] = { -- damage_reduction: +20%
			en = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance vs Mutants",
			ru = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." сопротивления "..CKWord("урону", "uronu_rgb_ru").." от мутантов",
			fr = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." de resistance aux "..CKWord("Dégâts", "Damage_rgb_fr").." (Mutants)",
			["zh-tw"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("傷害抗性", "Damage_res_rgb_tw").." (變種人)",
			["zh-cn"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性（变种人）",
		},
		--[+ Damage Resistance vs Snipers +]--
		["loc_trait_gadget_dr_vs_snipers_desc"] = { -- damage_reduction: +20%
			en = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("Damage", "Damage_rgb").." Resistance vs Snipers",
			ru = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." сопротивления "..CKWord("урону", "uronu_rgb_ru").." от снайперов",
			fr = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." de resistance aux "..CKWord("Dégâts", "Damage_rgb_fr").." (Snipers)",
			["zh-tw"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("傷害抗性", "Damage_res_rgb_tw").." (狙擊手)",
			["zh-cn"] = CNumb("{damage_reduction:%s}", "dmg_red_rgb").." "..CKWord("伤害", "Damage_rgb_zh_cn").."抗性（狙击手）",
		},

-- DUPLICATE!!! THERE IS THE SAME IN WEAPONS_Blessings_Perks.lua
		--[+ Stamina Cost for Sprinting +]--
		-- ["loc_gadget_sprint_cost_reduction_desc"] = { 
			-- en = CKWord("{sprinting_cost_multiplier:%s}", "bcm_rgb").." "..CKWord("Stamina", "Stamina_rgb").." Cost for Sprinting",
			-- ru = CKWord("{sprinting_cost_multiplier:%s}", "bcm_rgb").." к затратам "..CKWord("выносливости", "vynoslivosti_rgb_ru").." на бег",
			-- fr = CKWord("{sprinting_cost_multiplier:%s}", "bcm_rgb").." de coût d'"..CKWord("体力", "Stamina_rgb_fr").." de la course",
		-- },
}

-- Автоматическое создание шаблонов
local localization_templates = {}
for loc_key, locales in pairs(curios_localizations) do
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
