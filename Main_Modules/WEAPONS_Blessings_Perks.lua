---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")

--[+ Loading colors of Keywords and Numbers +]--
COLORS_Numbers = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_Numbers")
COLORS_KWords = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords")

	--[+ French +]--
	COLORS_KWords_fr = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords_fr")
	--[+ Russian +]--
	COLORS_KWords_ru = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords_ru")
	--[+ Traditional Chinese +]--
	COLORS_KWords_tw = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords_tw")
	--[+ Simplified Chinese +]--
	COLORS_KWords_zh_cn = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords_zh_cn") 

--[+ Function to create a localization template +]--
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end

local function loc_text(text)
	return function(locale, value) 
		return text 
	end
end

local Dot_red = "{#color(255, 35, 5)}•{#reset()}"
local Dot_nc = "•"
local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

--[+ +FREQUENTLY REPEATED PHRSASES+ +]--
local PHRS = {
	--[+ +English+ +]--
	Gen_mult_stacks_n_refr = ""..Dot_green.." Can generate multiple Stacks per swing and refresh during active duration. ",
	Refr_dur_stappl = ""..Dot_green.." Refreshes duration on Stack application. ",
	Cant_appl_thr_shlds = ""..Dot_red.." Can't apply through shields.",
	Can_be_refr = ""..Dot_green.." Can be refreshed during active duration. ",
	Carap_cant_cleave = ""..Dot_red.." Carapace armor cannot be "..COLORS_KWords.Cleaved_rgb.." by default.",
	Can_be_refr_drop_1 = ""..Dot_green.." Stacks can be refreshed during active duration, and are dropped one by one.",
	Dont_intw_coher_tghn = ""..Dot_red.." Does not interact with "..COLORS_KWords.Coherency_rgb.." "..COLORS_KWords.Toughness_rgb..".",

	--[+ +Russian - ЧАСТО ПОВТОРЯЕМЫЕ ФРАЗЫ+ +]--
	-- Gen_mult_stacks_n_refr_ru = ""..Dot_green.." Может дать несколько зарядов за удар и обновиться во время действия. "
	Refr_dur_stappl_ru = ""..Dot_green.." Длительность обновляется при наложении заряда. ",
	Cant_appl_thr_shlds_ru = ""..Dot_red.." Не накладывается через щиты.",
	Can_be_refr_ru = ""..Dot_green.." Обновляется во время действия. ",
	Carap_cant_cleave_ru = ""..Dot_red.." Панцирная броня не "..COLORS_KWords_ru.Cleavaetsa_rgb_ru..".",
	Can_be_refr_drop_1_ru = ""..Dot_green.." Заряды обновляются во время действия и сбрасываются по одному. ",
	Dont_intw_coher_tghn_ru = ""..Dot_red.." Не влияет на "..COLORS_KWords_ru.Tghnss_rgb_ru.." от "..COLORS_KWords_ru.Coherency_rgb_ru..".",
}

--[+ +NOTES+ +]--
local NTS = {
	Fns_note_rgb = ""..Dot_green.." "..COLORS_KWords.Finesse_rgb.." increases "..COLORS_KWords.Weakspot_rgb.." and "..COLORS_KWords.Critical_rgb.." "..COLORS_KWords.Damage_rgb..".",
	Pwr_note_rgb = ""..Dot_green.." "..COLORS_KWords.Strength_rgb.." increases "..COLORS_KWords.Damage_rgb..", "..COLORS_KWords.Stagger_rgb.." and "..COLORS_KWords.Cleave_rgb..".",
	Rend_note_rgb = ""..Dot_green.." "..COLORS_KWords.Rending_rgb.." increases your own "..COLORS_KWords.Damage_rgb..".",
	Brtl_note_rgb = ""..Dot_green.." "..COLORS_KWords.Brittleness_rgb.." increases the team's "..COLORS_KWords.Damage_rgb.." to the enemy.",
	Impact_note_rgb = ""..Dot_green.." "..COLORS_KWords.Impact_rgb.." increases the effectiveness of "..COLORS_KWords.Stagger_rgb.." on enemies.",

--[+ +Russian - ПРИМЕЧАНИЯ+ +]--
	Fns_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Fnss_rgb_ru.." повышает "..COLORS_KWords_ru.Crit_dmg_r_rgb_ru.." и "..COLORS_KWords_ru.Weakspotv_dmg_rgb_ru..".",
	Pwr_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Pwr_rgb_ru.." повышает "..COLORS_KWords_ru.Dmg_rgb_ru..", "..COLORS_KWords_ru.Stagger_rgb_ru.." и "..COLORS_KWords_ru.Cleaving_rgb_ru..".",
	Rend_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Rndg_rgb_ru.." повышает ваш "..COLORS_KWords_ru.Dmg_rgb_ru..".",
	Brtl_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Brttlns_rgb_ru.." повышает "..COLORS_KWords_ru.Dmg_rgb_ru.." команды по врагу.",
	Impact_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Impact0_rgb_ru.." увеличивает силу "..COLORS_KWords_ru.Staggering_rgb_ru..".",
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

--[+ ++WEAPON - PERKS - 武器专长++ +]--
	--[+ MELEE - 近戰武器 - 近战武器 +]--
		--[+ +DAMAGE VS FLAK +]--	02.11.2025
		["loc_trait_melee_common_wield_increased_armored_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам в противоосколочной броне",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Ennemies en armure légère",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 防彈護甲的敵人", -- 防彈護甲的敵人
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（防弹装甲敌人）", -- 防弹装甲敌人
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS MANIACS +]--	02.11.2025
		["loc_trait_melee_common_wield_increased_berserker_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Maniacs",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." маньякам",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Maniaques",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 狂熱者", -- 狂熱者
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（狂人）", -- 狂人
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS INFESTED +]--	02.11.2025
		["loc_trait_melee_common_wield_increased_disgustingly_resilient_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Infested Enemies",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." заражённым",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Ennemies infestés",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 被感染的敵人", -- 被感染的敵人
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（感染敌人）", -- 感染敌人
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS UNYIELDING +]--	02.11.2025
		["loc_trait_melee_common_wield_increased_resistant_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Unyielding Enemies",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." несгибаемым",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Ennemies implacables",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 不屈的敵人", -- 不屈的敵人
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（不屈敌人）", -- 不屈敌人
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS CARAPACE +]--	02.11.2025
		["loc_trait_melee_common_wield_increased_super_armor_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Carapace Enemies",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам в панцирной броне",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Ennemies en armure carapace",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 甲殼護甲的敵人", -- 甲殼護甲的敵人
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（硬壳装甲敌人）", -- 硬壳装甲敌人
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS UNARMOURED +]--	02.11.2025
		["loc_trait_melee_common_wield_increased_unarmored_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Unarmoured Enemies",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам без брони",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Ennemies sans armure",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 無護甲敵人", -- 無護甲敵人
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（无甲敌人）", -- 无甲敌人
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +CRIT CHANCE +]--	02.11.2025
		["loc_trait_melee_common_wield_increase_critical_hit_chance_desc"] = {
			en = COLORS_Numbers.crit_var_rgb.." Melee "..COLORS_KWords.Crit_chance_rgb,
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." в ближнем бою",
			fr = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_fr.Crit_chance_rgb_fr.." en Mélée",
			["zh-tw"] = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_m_chance_rgb_tw, -- 暴擊機率
			["zh-cn"] = COLORS_Numbers.crit_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn, -- 暴击几率
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +CRIT DAMAGE +]--	02.11.2025
		["loc_trait_melee_common_wield_wield_increase_critical_strike_damage_desc"] = {
			en = COLORS_Numbers.critdmg_var_rgb.." Melee "..COLORS_KWords.Crit_hit_color_rgb,
			ru = COLORS_Numbers.critdmg_var_rgb.." к "..COLORS_KWords_ru.Crit_dmg_u_rgb_ru.." в ближнем бою",
			fr = COLORS_Numbers.critdmg_var_rgb.." "..COLORS_KWords_fr.Crit_hit_color_rgb_fr.." de Mélée",
			["zh-tw"] = COLORS_Numbers.critdmg_var_rgb.." "..COLORS_KWords_tw.Crit_hit_m_color_rgb_tw, -- 暴擊傷害
			["zh-cn"] = COLORS_Numbers.critdmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_hit_color_rgb_zh_cn, -- 暴击伤害
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS GROANERS AND POXWALKERS +]--	02.11.2025
		["loc_trait_melee_common_wield_increase_horde_enemy_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." Melee "..COLORS_KWords.Damage_rgb.." vs Groaners and Poxwalkers",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." ворчунам и чумным ходокам в ближнем бою",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Grogneurs et Scrofuleux",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_melee_rgb_tw.." vs 呻吟者和瘟疫行者", -- 呻吟者、瘟疫行者
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（呻吟者、瘟疫行者）", -- 呻吟者、瘟疫行者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS ELITES +]--	02.11.2025
		["loc_trait_melee_common_wield_increase_elite_enemy_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." Melee "..COLORS_KWords.Damage_rgb.." vs Elites",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." элитным врагам в ближнем бою",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Élites",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_melee_rgb_tw.." vs 精英", -- 精英
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（精英）", -- 精英
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS SPECIALISTS +]--	02.11.2025
		["loc_trait_melee_common_wield_increase_special_enemy_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." Melee "..COLORS_KWords.Damage_rgb.." vs Specialists",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." специалистам в ближнем бою",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Spécialistes",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_melee_rgb_tw.." vs 專家", -- 專家
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（专家）", -- 专家
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +STAMINA +]--	02.11.2025
		["loc_trait_melee_common_wield_increase_stamina_desc"] = {
			en = COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords.Stamina_rgb,
			ru = COLORS_Numbers.stam_var_rgb.." ячейки "..COLORS_KWords_ru.Stamina_rgb_ru,
			fr = COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords_fr.Stamina_rgb_fr,
			["zh-tw"] = COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords_tw.Stamina_rgb_tw, -- 耐力
			["zh-cn"] = COLORS_Numbers.stam_var_rgb.." 最大"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn, -- 耐力
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +WEAKSPOT DAMAGE +]--	02.11.2025
		["loc_trait_melee_common_wield_increase_weakspot_damage_desc"] = {
			en = COLORS_Numbers.wkspdmg_var_rgb.." Melee "..COLORS_KWords.Weakspot_dmg_rgb,
			ru = COLORS_Numbers.wkspdmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." в ближнем бою",
			fr = COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." en Mélée",
			["zh-tw"] = COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_m_dmg_rgb_tw, -- 弱點傷害 
			["zh-cn"] = COLORS_Numbers.wkspdmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn, -- 弱点伤害
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +BLOCK EFFICIENCY +]--	02.11.2025
		["loc_trait_melee_common_wield_reduce_block_cost_desc"] = {
			en = COLORS_Numbers.rbc_rgb.." Block Efficiency",
			ru = COLORS_Numbers.rbc_rgb.." к эффективности блока",
			fr = COLORS_Numbers.rbc_rgb.." d'éfficacité de blocage",
			["zh-tw"] = COLORS_Numbers.rbc_rgb.." 格擋效率", -- 格檔效率
			["zh-cn"] = COLORS_Numbers.rbc_rgb.." 格挡效益", -- 格挡效益
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ -COST FOR SPRINTING +]--	02.11.2025
		["loc_gadget_sprint_cost_reduction_desc"] = {
			en = COLORS_Numbers.bcm_rgb.." "..COLORS_KWords.Stamina_rgb.." Cost Reduction for Sprinting",
			ru = COLORS_Numbers.bcm_rgb.." к снижению затрат "..COLORS_KWords_ru.Stamina_rgb_ru.." на бег",
			fr = COLORS_Numbers.bcm_rgb.." de réduction du coût d'"..COLORS_KWords_fr.Stamina_rgb_fr.." de la course",
			["zh-tw"] = COLORS_Numbers.bcm_rgb.." "..COLORS_KWords_tw.Stamina_se_rgb_tw, -- 衝刺體力消耗
			["zh-cn"] = COLORS_Numbers.bcm_rgb.." 疾跑"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."效益", -- 疾跑效益
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},

	--[+ RANGED - 遠程武器 - 远程武器 +]--
		--[+ +DAMAGE VS FLAK +]--	02.11.2025
		["loc_trait_ranged_common_wield_armored_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам в противоосколочной броне",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Ennemies en armure légère",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 防彈護甲的敵人", -- 防彈護甲的敵人
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.."  "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（防弹装甲敌人）", -- 防弹装甲敌人
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS MANIACS +]--	02.11.2025
		["loc_trait_ranged_common_wield_berserker_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Maniacs",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." маньякам",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Maniaques",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 狂熱者", -- 狂熱者
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（狂人）", -- 狂人
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS INFESTED +]--	02.11.2025
		["loc_trait_ranged_common_wield_disgustinglyresilient_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Infested Enemies",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." заражённым врагам",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Ennemies infestés",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 被感染的敵人", -- 被感染的敵人
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（感染敌人）", -- 感染敌人
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS UNYIELDING +]--	02.11.2025
		["loc_trait_ranged_common_wield_resistant_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Unyielding Enemies",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." несгибаемым врагам",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Ennemies implacables",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 不屈的敵人", -- 不屈的敵人
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（不屈敌人）", -- 不屈敌人
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS CARAPACE +]--	02.11.2025
		["loc_trait_ranged_common_wield_superarmor_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Carapace Enemies",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам в панцирной броне",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Ennemies en armure carapace",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 甲殼護甲的敵人", -- 甲殼護甲的敵人
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（硬壳装甲敌人）", -- 硬壳装甲敌人
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS UNARMOURED +]--	02.11.2025
		["loc_trait_ranged_common_wield_unarmored_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Unarmoured Enemies",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам без брони",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Ennemies sans armure",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 無護甲敵人", -- 無護甲敵人
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（无甲敌人）", -- 无甲敌人
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +CRIT CHANCE +]--	02.11.2025
		["loc_trait_ranged_common_wield_increase_crit_chance_desc"] = {
			en = COLORS_Numbers.crit_var_rgb.." Ranged "..COLORS_KWords.Crit_chance_r_rgb,
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru,
			fr = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_fr.Crit_chance_r_rgb_fr.." à Distance",
			["zh-tw"] = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_r_chance_rgb_tw, -- 暴擊機率
			["zh-cn"] = COLORS_Numbers.crit_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn, -- 暴击几率
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +CRIT DAMAGE +]--	02.11.2025
		["loc_trait_ranged_common_wield_wield_increase_critical_strike_damage_desc"] = {
			en = COLORS_Numbers.critdmg_var_rgb.." Ranged "..COLORS_KWords.Crit_hit_color_rgb,
			ru = COLORS_Numbers.critdmg_var_rgb.." к "..COLORS_KWords_ru.Crit_shot_color_rgb_ru,
			fr = COLORS_Numbers.critdmg_var_rgb.." "..COLORS_KWords_fr.Crit_hit_color_rgb_fr.." de Distance",
			["zh-tw"] = COLORS_Numbers.critdmg_var_rgb.." "..COLORS_KWords_tw.Crit_hit_r_color_rgb_tw, -- 暴擊傷害
			["zh-cn"] = COLORS_Numbers.critdmg_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_hit_color_rgb_zh_cn, -- 暴击伤害
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS ELITES +]--	02.11.2025
		["loc_trait_ranged_common_wield_increase_elite_enemy_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." Ranged "..COLORS_KWords.Damage_rgb.." vs Elites",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." элите в дальнем бою",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Élites",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_ranged_rgb_tw.." vs 精英", -- 精英
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." 远程"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（精英）", -- 精英
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS GROANERS AND POXWALKERS +]--	02.11.2025
		["loc_trait_ranged_common_wield_increase_horde_enemy_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." Ranged "..COLORS_KWords.Damage_rgb.." vs Groaners and Poxwalkers",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." ворчунам и чумным ходокам в дальнем бою",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Grogneurs et Scrofuleux",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_ranged_rgb_tw.." vs 呻吟者和瘟疫行者", -- 呻吟者、瘟疫行者
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." 远程"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（呻吟者、瘟疫行者）", --呻吟者、瘟疫行者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +DAMAGE VS SPECIALISTS +]--	02.11.2025
		["loc_trait_ranged_common_wield_increase_special_enemy_damage_desc"] = {
			en = COLORS_Numbers.dmg_var_rgb.." Ranged "..COLORS_KWords.Damage_rgb.." vs Specialists",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." специалистам в дальнем бою",
			fr = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Spécialistes",
			["zh-tw"] = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_ranged_rgb_tw.." vs 專家", -- 專家
			["zh-cn"] = COLORS_Numbers.dmg_var_rgb.." 远程"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（专家）", -- 专家
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +STAMINA +]--	02.11.2025
		["loc_trait_ranged_common_wield_increase_stamina_desc"] = {
			en = COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords.Stamina_rgb.." when Weapon is Active",
			ru = COLORS_Numbers.stam_var_rgb.." ячейки "..COLORS_KWords_ru.Stamina_rgb_ru.." с этим оружием в руках",
			fr = COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords_fr.Stamina_rgb_fr,
			["zh-tw"] = COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords_tw.Stamina_rgb_tw, -- 耐力
			["zh-cn"] = COLORS_Numbers.stam_var_rgb.." 最大"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."（使用武器时）", -- 耐力
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +WEAKSPOT DAMAGE +]--	02.11.2025
		["loc_trait_ranged_common_wield_increase_weakspot_damage_desc"] = {
			en = COLORS_Numbers.wkspdmg_var_rgb.." Ranged "..COLORS_KWords.Weakspot_dmg_rgb,
			ru = COLORS_Numbers.wkspdmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." в дальнем бою",
			fr = COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." à Distance",
			["zh-tw"] = COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_r_dmg_rgb_tw, -- 弱點傷害
			["zh-cn"] = COLORS_Numbers.wkspdmg_var_rgb.." 远程"..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn, -- 弱点伤害
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ +RELOAD SPEED +]--	02.11.2025
		["loc_trait_ranged_common_wield_increase_reload_speed_desc"] = {
			en = COLORS_Numbers.reload_var_rgb.." Reload Speed",
			ru = COLORS_Numbers.reload_var_rgb.." к скорости перезарядки",
			fr = COLORS_Numbers.reload_var_rgb.." Vitesse de rechargement de l'arme",
			["zh-tw"] = COLORS_Numbers.reload_var_rgb.." 裝填速度", -- 裝填速度
			["zh-cn"] = COLORS_Numbers.reload_var_rgb.." 装弹速度", -- 装弹速度
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},


--[+ ++WEAPON BLESSINGS - БЛАГОСЛОВЕНИЯ ОРУЖИЯ - 武器祝福++ +]--
	--[+ MELEE - БЛИЖНИЙ БОЙ - 近戰 +]--
		--[+ OPPORTUNIST +]--	02.11.2025
		--Rending vs Staggered (per tier)
		-- Battle Maul and Shield, Chainaxes, Crusher, Eviscerators, Latrine Shovels, Power Maul, Shock Mauls, Shock Mauls and Shield -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_armor_penetration_against_staggered_desc"] = { -- rending: +25%, +colors, +note
			en = COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Rending_rgb.." vs "..COLORS_KWords.Staggered_rgb.." Enemies.\n"
				..NTS.Rend_note_rgb,
			ru = COLORS_Numbers.rending_var_rgb.." к "..COLORS_KWords_ru.Rending_rgb_ru.." брони "..COLORS_KWords_ru.Staggered_rgb_ru.." врагов.\n"
				..NTS.Rend_note_rgb_ru, -- Оппортунист -- руоф Приспособленец
			-- fr = COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_fr.Rending_rgb_fr.." vs les Enemies qui "..COLORS_KWords_fr.Staggered_rgb_fr.." "..COLORS_KWords_fr.NTS.Rend_note_rgb_fr,
			-- ["zh-tw"] = COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Rending_rgb_tw.." vs "..COLORS_KWords_tw.Staggered_rgb_tw.." 的敵人", -- 機會主義者-- 作戰大槌and板盾, 突擊鏈斧, 輾壓者, 重型開膛劍, 廁所鏟, 動力錘, 電擊錘 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = "对抗"..COLORS_KWords_zh_cn.Staggered_rgb_zh_cn.."敌人时 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Rending_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.NTS.Rend_note_rgb_zh_cn, --机会主义者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ BLOODLETTER +]--	02.11.2025
		-- Bleed Stacks (per tier)
		-- Chainaxes -- 10 | 12 | 14 | 16
		-- Chainswords -- 11 | 12 | 13 | 14
		-- Eviscerators -- 3 | 4 | 5 | 6
		["loc_trait_bespoke_bleed_on_activated_hit_desc"] = { -- stacks: +14, +colors
			en = COLORS_Numbers.stacks_var_rgb.." "..COLORS_KWords.Bleed_rgb.." Stacks from Special Attacks. "
				.."Lasts "..COLORS_Numbers.n_1_5_rgb.." seconds. Ticks every "..COLORS_Numbers.n_05_rgb.." seconds.\n"
				..PHRS.Refr_dur_stappl..PHRS.Cant_appl_thr_shlds,
			ru = COLORS_Numbers.stacks_var_rgb.." зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." накладывается от специальных атак. "
				.."Длится "..COLORS_Numbers.n_1_5_rgb.." секунды. "..PHRS.Refr_dur_stappl_ru.."\n"
				..PHRS.Cant_appl_thr_shlds_ru, -- Кровопускатель -- руоф Кровопускание
			-- fr = COLORS_Numbers.p_stacks_var_rgb.." Cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." lors des attaques spéciales. Jusqu'à "..COLORS_Numbers.n_16_rgb.." Cumuls.",
			-- ["zh-tw"] = "特殊攻擊時，使其獲得 "..COLORS_Numbers.p_stacks_var_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.."。\n上限 "..COLORS_Numbers.n_16_rgb.." 層。", -- 放血者
				-- 突擊鏈斧 -- 10 | 12 | 14 | 16
				-- 突擊鏈鋸劍 -- 11 | 12 | 13 | 14
				-- 重型開膛劍 -- 3 | 4 | 5 | 6
			-- ["zh-cn"] = "特殊攻击 "..COLORS_Numbers.p_stacks_var_rgb.." 层"..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_16_rgb.." 层。", -- 放血者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ BLOODTHIRSTY +]--	02.11.2025
		-- Melee Crit Chance (per tier)
		-- Chainaxes, Chainswords, Eviscerators, Force Swords -- 40% | 60% | 80% | 100%
		["loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill_desc"] = { -- crit_chance: +100%, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." on your next Melee Attack after Special Attack Kill.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." для вашей следующей атаки ближнего боя после убийства врага специальной атакой.", -- Кровожадный -- руоф Жажда крови
			-- fr = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_fr.Crit_chance_rgb_fr.." sur votre prochaine attaque de mêlée après une élimination avec une attaque spéciale.",
			-- ["zh-tw"] = "在特殊攻擊擊殺敵人後，\n下一次近戰攻擊 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."。", -- 嗜血
				-- 突擊鏈斧, 突擊鏈鋸劍, 重型開膛劍, 烈焰力場劍 -- 40% | 60% | 80% | 100%
			-- ["zh-cn"] = "特殊攻击击杀敌人时，\n使下次近战攻击 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。", -- 嗜血
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ HEADTAKER +]--	02.11.2025
		-- Melee Power per stack (per tier)
		-- Chainaxes, Combat Axes, Pickaxes, Tactical Axes, Thunder Hammers -- 3.5% 4% 4.5% 5% (up to +25%)
		-- Heavy Swords -- 6.5% 7% 7.5% 8% (up to +40%)
		["loc_trait_bespoke_increase_power_on_hit_desc"] = { -- power_level: +5%, time: 3.5, stacks: 5, s->seconds, +colors, +note
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Hit. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..PHRS.Gen_mult_stacks_n_refr..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при ударе. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..PHRS.Can_be_refr_ru..NTS.Pwr_note_rgb_ru, -- Головорез
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_fr.Strength_rgb_fr.." pour "..COLORS_Numbers.time_var_rgb.." secondes lors d'un coup. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "每層 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，可持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 奪顱者
				-- 突擊鏈斧, 戰鬥斧, 十字鎬, 戰術斧, 雷鎚 -- 3.5% 4% 4.5% 5% (up to +25%)
				-- 重劍 -- 6.5% 7% 7.5% 8% (up to +40%)
			-- ["zh-cn"] = "命中时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。\n攻击每命中一个目标叠加 "..COLORS_Numbers.n_1_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 夺颅者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SLAUGHTERER +]--	02.11.2025
		-- Power per stack (per tier)
		-- Chainaxes, Cleavers, Crusher, Force Swords, Pickaxes, Power Swords, Thunder Hammers -- 5% | 6% | 7% | 8% (up to +40%)
		["loc_trait_bespoke_increase_power_on_kill_desc"] = { -- power_level: +5%, time: 4.5, stacks: 5, s->seconds, +colors, +added info, +note
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Kill. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..PHRS.Gen_mult_stacks_n_refr..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при убийстве. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.\n"
				..PHRS.Can_be_refr_ru.."\n"
				..NTS.Pwr_note_rgb_ru, -- Мясник -- руоф Душегуб
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_fr.Strength_rgb_fr.." pour "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			--??? ["zh-tw"] = "擊殺敵人時 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，可持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n每次擊殺可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 殺戮者
			--??? ["zh-tw"] = "每層 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，可持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n每次擊殺可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 殺戮者
				-- 突擊鏈斧, 砍刀, 輾壓者, 烈焰力場劍, 十字鎬, 動力劍, 雷鎚 -- 5% | 6% | 7% | 8% (up to +40%)
			-- ["zh-cn"] = "击杀敌人时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 屠宰者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ REV IT UP +]--	02.11.2025
		-- Movement Speed (per tier)
		-- Chainaxes, Chainswords, Eviscerators -- 17% | 18% | 19% | 20%
		["loc_trait_bespoke_movement_speed_on_activation_desc"] = { -- movement_speed: +20%, time: 2, s->seconds, +colors
			en = COLORS_Numbers.movspd_var_rgb.." Movement Speed for "..COLORS_Numbers.time_var_rgb.." seconds on Weapon Special Activation.",
			ru = COLORS_Numbers.movspd_var_rgb.." к скорости передвижения на "..COLORS_Numbers.time_var_rgb.." секунды при активации специальной атаки.", -- Ускорься -- руоф Бодрость
			-- fr = COLORS_Numbers.movspd_var_rgb.." de vitesse déplacement pendant "..COLORS_Numbers.time_var_rgb.." secondes lors de l'activation spéciale d'une arme.",
			-- ["zh-tw"] = "在武器特殊技能啟動時 "..COLORS_Numbers.movspd_var_rgb.." 移動速度。\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 提速
				-- 突擊鏈斧, 突擊鏈鋸劍, 重型開膛劍 -- 17% | 18% | 19% | 20%
			-- ["zh-cn"] = "激活武器特殊动作时\n"..COLORS_Numbers.movspd_var_rgb.." 移动速度，持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 加速
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ THRUST +]--	02.11.2025
		-- Melee Power per stack (per tier)
		-- Bully Clubs, Chainaxes, Cleavers, Combat Axes, Crusher, Duelling Swords, Heavy Swords, Latrine Shovels, Pickaxes, Power Swords, Sapper Shovels, Shock Mauls, Thunder Hammers -- 5% | 10% | 15% | 20% (up to +60%)
		["loc_trait_bespoke_power_bonus_based_on_charge_time_desc"] = { -- power_level: +5%, stacks: 3, +colors, +note
			en = "Up to "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." based on the charge time of your heavy attacks. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..NTS.Pwr_note_rgb,
			ru = "До "..COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." в зависимости от времени заряжания ваших тяжёлых атак. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раза. "
				..NTS.Pwr_note_rgb_ru, -- Выпад
			-- fr = "Jusqu'à "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_fr.Strength_rgb_fr.." selon le temps de charge de vos attaques puissantes. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "根據重攻擊的續力時間增加 "..COLORS_KWords_tw.Strength_rgb_tw.." ，\n每層 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，最多可疊加 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 推進
				-- 惡棍棒, 突擊鏈斧, 砍刀, 戰鬥斧, 輾壓者, 決鬥劍, 重劍, 廁所鏟, 十字鎬, 動力劍, 工兵鏟, 電擊錘, 雷鎚 -- 5% | 10% | 15% | 20% (up to +60%)
			-- ["zh-cn"] = "随重攻击蓄力时间增加叠加层数，\n每层 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 助推
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ THUNDEROUS +]--	02.11.2025
		-- Brittleness Stacks (per tier)
		-- Arbites Shock Maul, Bully Clubs, Chainaxes, Combat Axes, Crusher, Latrine Shovels, Pickaxes, Thunder Hammers -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_targets_receive_rending_debuff_desc"] = { -- stacks: 4, rending: 2.5%, time: 5, max_stacks: 16, rewrited, +colors, +added info, +note
			en = COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Brittleness_rgb.." are applied on hitting to enemy. Lasts "..COLORS_Numbers.time_var_rgb.." seconds. Max "..COLORS_Numbers.maxstks_var_rgb.." Stacks, up to "..COLORS_Numbers.pc_40_rgb..". "
				..NTS.Brtl_note_rgb,
			ru = COLORS_Numbers.stacks_var_rgb.." заряда по "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." брони применяется к врагу при ударе. Длится "..COLORS_Numbers.time_var_rgb.." секунд. До "..COLORS_Numbers.maxstks_var_rgb.." зарядов, вплоть до "..COLORS_Numbers.pc_40_rgb..". "
				..NTS.Brtl_note_rgb_ru, -- Громовой удар -- руоф Словно раскаты грома
			-- fr = COLORS_Numbers.stacks_var_rgb.." Cumuls de "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_fr.Brittleness_rgb_fr.." sont appliqué lors d'un coup sur un ennemie. Pendant "..COLORS_Numbers.time_var_rgb.." secondes. Jusqu'à "..COLORS_Numbers.maxstks_var_rgb.." cumuls, pour un total de "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords_fr.Brtl_note_rgb_fr,
			-- ["zh-tw"] = "擊中敵人時，使其獲得 "..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Brittleness_rgb_tw.."。\n可持續 "..COLORS_Numbers.time_var_rgb.." 秒，"..COLORS_Numbers.time_var_rgb.." 秒後清除，上限 "..COLORS_Numbers.maxstks_var_rgb.." 層。"..COLORS_KWords_tw.Brtl_note_rgb_tw, -- 雷鳴
				-- 惡棍棒, 突擊鏈斧, 戰鬥斧, 輾壓者, 廁所鏟, 十字鎬, 雷鎚 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "命中时，对目标施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.maxstks_var_rgb.." 层，最高 "..COLORS_Numbers.pc_40_rgb.." 。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn, -- 雷鸣
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ WRATH +]--	02.11.2025
		-- Max Hit Mass Increase per stack (per tier)
		-- Chainswords, Devil's Claw Swords, Eviscerators, Force Greatswords, Heavy Swords, Pickaxes, Power Falchions, Relic Blades -- 25% | 30% | 35% | 40% (up to +200%)
		-- Power Swords -- 35% | 40% | 45% | 50% (up to +250%)
		["loc_trait_bespoke_chained_hits_increases_cleave_desc"] = { -- cleave: +40%, stacks: 5, +colors, +added info
			en = COLORS_Numbers.cleave_var_rgb.." "..COLORS_KWords.Cleave_rgb.." on Hit for "..COLORS_Numbers.n_3_5_rgb.." seconds. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..Dot_nc.." Generates "..COLORS_Numbers.n_1_rgb.." Stack per swing.\n"
				..PHRS.Can_be_refr..PHRS.Carap_cant_cleave,
			ru = COLORS_Numbers.cleave_var_rgb.." к "..COLORS_KWords_ru.Cleave_rgb_ru.." при ударе на "..COLORS_Numbers.n_3_5_rgb.." секунды. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..Dot_nc.." Даёт "..COLORS_Numbers.n_1_rgb.." заряд за удар. "..PHRS.Can_be_refr_ru..PHRS.Carap_cant_cleave_ru, -- Гнев
			-- fr = COLORS_Numbers.cleave_var_rgb.." "..COLORS_KWords_fr.Cleave_rgb_fr.." lors d'un coup pendant "..COLORS_Numbers.n_3_5_rgb.." secondes. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "擊中敵人時 "..COLORS_Numbers.cleave_var_rgb.." "..COLORS_KWords_tw.Cleave_rgb_tw.."，持續 "..COLORS_Numbers.n_3_5_rgb.." 秒。\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 憤怒
				-- 突擊鏈鋸劍, 『惡魔之爪』劍, 重型開膛劍, 重劍, 十字鎬, 烈焰力場巨劍, 上古神刃 -- 25% | 30% | 35% | 40% (up to +200%)
				-- 動力劍 -- 35% | 40% | 45% | 50% (up to +250%)
			-- ["zh-cn"] = "连锁攻击命中时 "..COLORS_Numbers.cleave_var_rgb.." "..COLORS_KWords_zh_cn.Cleave_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.n_3_5_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 怒火
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
	--[+ SHRED +]--	02.11.2025
		-- Crit Chance per stack (per tier)
		-- Chainswords, Combat Axes, Devil's Claw Swords, Duelling Swords, Eviscerators, Force Greatswords, Force Swords, Tactical Axes -- 2.5% | 3% | 3.5% | 4% (up to +20%)
		["loc_trait_bespoke_chained_hits_increases_crit_chance_desc"] = { -- crit_chance: +4%, stacks: 5, +colors, +added info
			en = COLORS_Numbers.crit_var_rgb.." Bonus "..COLORS_KWords.Crit_chance_rgb.." on Chained Hit for "..COLORS_Numbers.n_3_5_rgb.." seconds. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.\n"
				..Dot_nc.." Generates "..COLORS_Numbers.n_1_rgb.." Stack per swing. "..PHRS.Can_be_refr.."\n"
				..Dot_red.." Doesn't benefit Ranged weapons.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.n_3_5_rgb.." секунды при серии ударов. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..PHRS.Can_be_refr_ru..""..Dot_red.." Не влияет на оружие дальнего боя.", -- Кромсание -- руоф Расстрел
			-- fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." lors d'un coup en chaîne pendant "..COLORS_Numbers.n_3_5_rgb.." secondes. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "每次攻擊 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，持續 "..COLORS_Numbers.n_3_5_rgb.." 秒。\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。\n需連續命中不得揮空。", -- 粉碎
				-- 突擊鏈鋸劍, 戰鬥斧, 『惡魔之爪』劍, 決鬥劍, 重型開膛劍, 烈焰力場劍, 烈焰力場巨劍, 戰術斧 -- 2.5% | 3% | 3.5% | 4% (up to +20%)
			-- ["zh-cn"] = "连锁攻击命中时\n"..COLORS_Numbers.crit_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.n_3_5_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 撕碎
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SAVAGE SWEEP +]--	02.11.2025
		-- Max Hit Mass Increase (per tier)
		-- Chainswords, Cleavers, Devil's Claw Swords, Eviscerators, Heavy Swords -- 140% | 160% | 180% | 200%
		["loc_trait_bespoke_increased_attack_cleave_on_multiple_hits_desc"] = { -- multiple_hit: 3, cleave: +200%, time: 2, +colors, +added info
			en = COLORS_Numbers.cleave_var_rgb.." enemy "..COLORS_KWords.Cleave_rgb.." for your attacks for "..COLORS_Numbers.time_var_rgb.." seconds after hitting at least "..COLORS_Numbers.mult_hit_var_rgb.." enemies. "
				..PHRS.Can_be_refr..PHRS.Carap_cant_cleave,
			ru = COLORS_Numbers.cleave_var_rgb.." к "..COLORS_KWords_ru.Cleave_rgb_ru.." врагов на "..COLORS_Numbers.time_var_rgb.." секунды при попадании как минимум по "..COLORS_Numbers.mult_hit_var_rgb.." врагам. "
				..PHRS.Can_be_refr_ru..PHRS.Carap_cant_cleave_ru, -- Дикий взмах -- руоф Дикость
			-- fr = COLORS_Numbers.cleave_var_rgb.." de "..COLORS_KWords_fr.Cleave_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes en touchant au moins "..COLORS_Numbers.mult_hit_var_rgb.." ennemies avec une attaque.",
			-- ["zh-tw"] = "當一次攻擊命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 敵人時，\n"..COLORS_Numbers.cleave_var_rgb.." "..COLORS_KWords_tw.Cleave_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 野蠻橫掃
				-- 突擊鏈鋸劍, 砍刀, 『惡魔之爪』劍, 重型開膛劍, 重劍 -- 140% | 160% | 180% | 200%
			-- ["zh-cn"] = "命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 名敌人时 \n"..COLORS_Numbers.cleave_var_rgb.." "..COLORS_KWords_zh_cn.Cleave_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 野蛮扫荡
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ RAMPAGE +]--	02.11.2025
		-- Melee Power (per tier)
		-- Chainswords, Devil's Claw Swords, Duelling Swords, Eviscerators, Heavy Swords, Power Swords, Relic Blades -- 24% | 28% | 32% | 36%
		["loc_trait_bespoke_increased_melee_damage_on_multiple_hits_desc"] = { -- multiple_hit: 3, damage: 36%, time: 3, Damage -> Strength, +colors, +added info, +note
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Strength_rgb.." to your Melee attacks for "..COLORS_Numbers.time_var_rgb.." seconds when hitting at least "..COLORS_Numbers.mult_hit_var_rgb.." enemies. "
				..PHRS.Can_be_refr..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." атак ближнего боя на "..COLORS_Numbers.time_var_rgb.." секунды при попадании как минимум по "..COLORS_Numbers.mult_hit_var_rgb.." врагам. "
				..PHRS.Can_be_refr_ru..NTS.Pwr_note_rgb_ru, -- Буйство
			-- fr = COLORS_Numbers.dmg_var_rgb.." de bonus à votre "..COLORS_KWords_fr.Strength_rgb_fr.." pour vos attaques de mélées pendant "..COLORS_Numbers.time_var_rgb.." secondes en touchant au moins "..COLORS_Numbers.mult_hit_var_rgb.." ennemies avec une attaque."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "當一次攻擊命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 敵人時，\n"..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 暴走
				-- 突擊鏈鋸劍, 『惡魔之爪』劍, 決鬥劍, 重型開膛劍, 重劍, 動力劍, 上古神刃 -- 24% | 28% | 32% | 36%
			-- ["zh-cn"] = "命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 名敌人 \n"..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 狂暴
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ DEVASTATING STRIKE +]--	02.11.2025
		-- Max Hit Mass Increase (per tier)
		-- Chainswords, Cleavers, Devil's Claw Swords, Relic Blades -- 65% | 70% | 75% | 80%
		["loc_trait_bespoke_infinite_melee_cleave_on_crit_desc"] = { -- hit_mass: +80%, time: 5, +colors, +added info
			en = COLORS_Numbers.hitmass_var_rgb.." "..COLORS_KWords.Cleave_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on "..COLORS_KWords.Crit_hit_rgb..". "
						..PHRS.Can_be_refr..PHRS.Carap_cant_cleave,
			ru = COLORS_Numbers.hitmass_var_rgb.." к "..COLORS_KWords_ru.Cleave_rgb_ru.." врагов на "..COLORS_Numbers.time_var_rgb.." секунд при "..COLORS_KWords_ru.Crit_hit_rgb_ru..". "
				..PHRS.Can_be_refr_ru..PHRS.Carap_cant_cleave_ru, -- Разрушительный удар -- руоф Сокрушительный удар
			-- fr = COLORS_Numbers.hitmass_var_rgb.." de "..COLORS_KWords_fr.Cleave_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr..".",
			-- ["zh-tw"] = COLORS_KWords_tw.Crit_hit_rgb_tw.." 時，"..COLORS_Numbers.hitmass_var_rgb.." "..COLORS_KWords_tw.Cleave_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 毀滅打擊
				-- 突擊鏈鋸劍, 砍刀, 『惡魔之爪』劍, 上古神刃 -- 65% | 70% | 75% | 80%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时 "..COLORS_Numbers.hitmass_var_rgb.." "..COLORS_KWords_zh_cn.Cleave_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 毁灭打击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ DECIMATOR +]--	02.11.2025
		-- Melee Power per stack (per tier)
		-- Combat Axes, Sapper Shovels, Tactical Axes -- 2% | 3% | 4% | 5% (up to +50%)
		["loc_trait_bespoke_chained_hits_increases_power_desc"] = { -- power_level: +5%, stacks: 10, Power -> Strength, +colors, +added info, +note
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." on chaining "..COLORS_Numbers.n_2_rgb..COLORS_Numbers.n_plus_rgb.." attacks. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..Dot_nc.." Generates "..COLORS_Numbers.n_1_rgb.." Stack per swing. "..PHRS.Can_be_refr..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." при непрерывной серии из более чем "..COLORS_Numbers.n_2_rgb.." атак. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.\n"
				..PHRS.Can_be_refr_ru.."\n"
				..NTS.Pwr_note_rgb_ru, -- Дециматор
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." en enchaînant continuellement plus de "..COLORS_Numbers.n_2_rgb.." attaques. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "攻擊任意目標超過 "..COLORS_Numbers.n_2_rgb.." 次時 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。\n需連續命中不得揮空。"..COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 屠戮者
			-- 戰鬥斧, 工兵鏟, 戰術斧 -- 2% | 3% | 4% | 5% (up to +50%)
			-- ["zh-cn"] = "连锁攻击命中 "..COLORS_Numbers.n_2_rgb.." 次时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 屠戮者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ BRUTAL MOMENTUM +]--	02.11.2025
		-- Melee Weakspot Damage (per tier)
		-- Battle Maul and Shield, Combat Axes, Heavy Swords, Latrine Shovels, Power Maul, Power Swords, Tactical Axes -- 7.5% | 10% | 12.5% | 15%
		["loc_trait_bespoke_infinite_cleave_on_weakspot_kill_desc"] = { -- weakspot_damage: 15%, +colors, +added info
			en = COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb..". Also Melee Attacks ignore up to "..COLORS_Numbers.n_3_rgb.." non-ogryn enemies "..COLORS_KWords.Hit_mass_rgb.." upon "..COLORS_KWords.Weakspot_rgb.." Kill.", -- ..PHRS.Carap_cant_cleave)),
			ru = COLORS_Numbers.wkspdmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru..". Убийства в "..COLORS_KWords_ru.Weakspot_rgb_ru.." игнорируют "..COLORS_KWords_ru.Hit_mass_rgb_ru.." до "..COLORS_Numbers.n_3_rgb.." врагов не огринов.", -- Жестокий моментум / Смертельный удар
			-- fr = COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr..". Les élimination sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." ignore le "..COLORS_KWords_fr.Hit_mass_rgb_fr.." de "..COLORS_Numbers.n_3_rgb.." ennemies.",
			-- ["zh-tw"] = COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.."。\n"..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 無視 "..COLORS_Numbers.n_3_rgb.." 個敵人的 "..COLORS_KWords_tw.Hit_mass_rgb_tw.." 。"..COLORS_KWords_tw.Hit_Mass_note_rgb_tw, -- 野蠻攻勢
			-- 作戰大槌and板盾, 戰鬥斧, 重劍, 廁所鏟, 動力錘, 動力劍, 戰術斧 -- 7.5% | 10% | 12.5% | 15%
			-- ["zh-cn"] = COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."。\n"..COLORS_KWords_zh_cn.Weakspothits_k_rgb_zh_cn.."无视 "..COLORS_Numbers.n_3_rgb.." 名敌人的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn, -- 野蛮势头
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ DEATHBLOW +]--	02.11.2025
		-- Melee Weakspot Damage (per tier)
		-- Battle Maul and Shield, Combat Axes, Heavy Swords, Latrine Shovels, Power Maul, Power Swords, Tactical Axes -- 7.5% | 10% | 12.5% | 15%
		["loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc"] = { -- weakspot_damage: 15%, +colors, +added info
			en = COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb..". Also Melee Attacks ignore up to "..COLORS_Numbers.n_3_rgb.." non-ogryn enemies "..COLORS_KWords.Hit_mass_rgb.." upon "..COLORS_KWords.Weakspot_rgb.." Kill.", -- ..PHRS.Carap_cant_cleave)),
			ru = COLORS_Numbers.wkspdmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru..". Убийства в "..COLORS_KWords_ru.Weakspot_rgb_ru.." игнорируют "..COLORS_KWords_ru.Hit_mass_rgb_ru.." до "..COLORS_Numbers.n_3_rgb.." врагов не огринов.", -- Жестокий моментум / Смертельный удар
			-- fr = COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr..". Les élimination sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." ignore le "..COLORS_KWords_fr.Hit_mass_rgb_fr.." de "..COLORS_Numbers.n_3_rgb.." ennemies.",
			-- ["zh-tw"] = COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.."。\n"..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 無視 "..COLORS_Numbers.n_3_rgb.." 個敵人的 "..COLORS_KWords_tw.Hit_mass_rgb_tw.." 。"..COLORS_KWords_tw.Hit_Mass_note_rgb_tw, -- 野蠻攻勢
			-- 作戰大槌and板盾, 戰鬥斧, 重劍, 廁所鏟, 動力錘, 動力劍, 戰術斧 -- 7.5% | 10% | 12.5% | 15%
			-- ["zh-cn"] = COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."。\n"..COLORS_KWords_zh_cn.Weakspothits_k_rgb_zh_cn.."无视 "..COLORS_Numbers.n_3_rgb.." 名敌人的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn, -- 野蛮势头
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ LIMBSPLITTER +]--	02.11.2025
		-- Cooldown (per tier)
		-- Combat Axes, Pickaxes, Sapper Shovels, Tactical Axes -- 5 | 4.5 | 4 | 3.5 seconds
		["loc_trait_bespoke_power_bonus_on_first_attack_desc"] = { -- power_level: +60%, cooldown: 3.5, +colors, +note
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." on your First Attack every "..COLORS_Numbers.cd_var_rgb.." seconds. "
						..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." для вашей первой атаки каждые "..COLORS_Numbers.cd_var_rgb.." секунды. "
				..NTS.Pwr_note_rgb_ru, -- Расчленитель -- руоф Расщепитель
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." sur votre première attaque toute les "..COLORS_Numbers.cd_var_rgb.." secondes."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "每 "..COLORS_Numbers.cd_var_rgb.." 秒，第一次攻擊增加 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."。", -- 斷肢者
				-- 戰鬥斧, 十字鎬, 工兵鏟, 戰術斧 -- 5 | 4.5 | 4 | 3.5
			-- ["zh-cn"] = "每 "..COLORS_Numbers.cd_var_rgb.." 秒，首次攻击 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 断肢者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ ALL OR NOTHING +]--	02.11.2025
		-- Melee Power per stack (per tier)
		-- Arbites Shock Maul, Combat Axes, Pickaxes, Sapper Shovels, Shock Maul and Shield, Tactical Axes -- 5% | 6% | 7% | 8% (up to +40%)
		["loc_trait_bespoke_power_bonus_scaled_on_stamina_desc"] = { -- power_level: +8%, rewrited, +colors, +note
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." per Stack. Gains "..COLORS_Numbers.n_1_rgb.." Stack per "..COLORS_Numbers.pc_20_rgb.." of missing "..COLORS_KWords.Stamina_rgb..". Stacks "..COLORS_Numbers.n_5_rgb.." times.\n"
				..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." за заряд. Вы получаете "..COLORS_Numbers.n_1_rgb.." заряд за каждые "..COLORS_Numbers.pc_20_rgb.." потерянной "..COLORS_KWords_ru.Stamina_rgb_ru..". Суммируется "..COLORS_Numbers.n_5_rgb.." раз.\n"
				..NTS.Pwr_note_rgb_ru, -- Всё или ничего -- руоф Все или ничего
			-- fr = "Jusqu'à "..COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr..", en fonction "..COLORS_KWords_fr.Stamina_rgb_fr.." épuisée. Chaque "..COLORS_Numbers.pc_20_rgb.." de la barre d'"..COLORS_KWords_fr.Stamina_rgb_fr.." épuisée donne "..COLORS_Numbers.n_1_rgb.." cumule. Jusqu'à "..COLORS_Numbers.n_5_rgb.." cumuls. {#color(255, 35, 5)}(bug: Les pelles et haches tactiques donnent +10% peu importe le tier de la bénédiction){#reset()}"..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "每消耗最大 "..COLORS_KWords_tw.Stamina_rgb_tw.." 的 "..COLORS_Numbers.pc_20_rgb.." 獲得一層。\n每一層 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.." ，上限 "..COLORS_Numbers.n_5_rgb.." 層。\n{#color(255, 35, 5)}(bug: 鏟子和戰術斧 +10% 所有等級){#reset()}"..COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 孤注一擲
				-- 戰鬥斧, 十字鎬 -- 5% | 6% | 7% | 8% (up to +40%)
				-- 工兵鏟, 戰術斧 -- 一般力量: 10% | 10% | 10% | 10% (up to +50%) (bugged)
			-- ["zh-cn"] = "随"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."消耗叠加层数，\n每消耗 "..COLORS_Numbers.pc_20_rgb.."，"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。{#color(255, 35, 5)}\n（BUG：无论祝福级别如何，战术斧与工兵铲数值始终为 +10% 强度。）{#reset()}"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 孤注一掷
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ DECAPITATOR +]--	02.11.2025
		-- Melee Finesse Bonus per stack (per tier)
		-- Combat Axes, Power Falchions -- 18% | 20% | 22% | 24% (up to +120%)
		["loc_trait_bespoke_stacking_rending_on_one_hit_kills_desc"] = { -- finesse: +24%, time: 5, stacks: 5, s->seconds, +colors, +note
			en = COLORS_Numbers.fin_var_rgb.." "..COLORS_KWords.Finesse_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Enemy One-Shot. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..PHRS.Can_be_refr.."\n"
				..NTS.Fns_note_rgb,
			ru = COLORS_Numbers.fin_var_rgb.." к "..COLORS_KWords_ru.Finesse_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунд при убийстве врага одним ударом. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..NTS.Fns_note_rgb_ru, -- ..PHRS.Can_be_refr_ru -- Обезглавливатель -- руоф Палач
			-- fr = COLORS_Numbers.fin_var_rgb.." de "..COLORS_KWords_fr.Finesse_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lorsque l'ennemie est tué en un coup. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Fns_note_rgb_fr,
			-- ["zh-tw"] = "一擊斃命時 "..COLORS_Numbers.fin_var_rgb.." "..COLORS_KWords_tw.Finesse_rgb_tw.." ，持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n每次擊殺可疊加一層，上限 "..COLORS_Numbers.n_5_rgb.." 層。"..COLORS_KWords_tw.NTS.Fns_note_rgb_tw, -- 斬首者
				-- 戰鬥斧 -- 18% | 20% | 22% | 24% (up to +120%)
			-- ["zh-cn"] = "一击毙敌时 "..COLORS_Numbers.fin_var_rgb.." "..COLORS_KWords_zh_cn.Finesse_dmg_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Fns_note_rgb_zh_cn, -- 斩首者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ AGILE +]--	02.11.2025
		-- Melee Weakspot Damage (per tier)
		-- Duelling Swords, Tactical Axes -- 2.5% | 5% | 7.5% | 10%
		["loc_trait_bespoke_dodge_count_reset_on_weakspot_hit_and_weakspot_damage_desc"] = { -- melee_weakspot_damage: +10%, +colors
			en = COLORS_Numbers.mel_weapsp_dmg_var_rgb.." Melee "..COLORS_KWords.Weakspot_dmg_rgb..". Refreshed Dodge Efficiency on "..COLORS_KWords.Weakspothit_rgb..".",
			ru = COLORS_Numbers.mel_weapsp_dmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." для атак ближнего боя. Эффективность уклонения обновляется при ударе в "..COLORS_KWords_ru.Weakspothit_rgb_ru..".", -- Проворный -- руоф Ловкий
			-- fr = COLORS_Numbers.mel_weapsp_dmg_var_rgb.." de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." de mélée. Actualise l'efficacité de l'esquive lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr..".",
			-- ["zh-tw"] = "近戰武器 "..COLORS_Numbers.mel_weapsp_dmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.." 。\n在 "..COLORS_KWords_tw.Weakspothit_rgb_tw.." 時，重置閃躲次數。", -- 敏捷
				-- 決鬥劍, 戰術斧 -- 2.5% | 5% | 7.5% | 10%
			-- ["zh-cn"] = COLORS_Numbers.mel_weapsp_dmg_var_rgb.." "..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."。\n"..COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时，刷新有效闪避。", -- 敏捷
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SLAUGHTER SPREE +]--	02.11.2025
		-- Crit Chance (per tier)
		-- Tactical Axes -- 40% | 60% | 80% | 100%
		["loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill_new_desc"] = { -- crit_chance: +100%, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." to the next Melee attack within "..COLORS_Numbers.n_5_rgb.." seconds on "..COLORS_KWords.Weak_spot_rgb.." "..COLORS_KWords.Crit_hit_rgb.." Kill.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." для следующей атаки ближнего боя на "..COLORS_Numbers.n_5_rgb.." секунд при убийствах "..COLORS_KWords_ru.Crit_hits_rgb_ru.." в "..COLORS_KWords_ru.Weakspot_rgb_ru..".", -- Резня -- руоф Убойная сила
			-- fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pour la prochaine attaque de mélée dans les "..COLORS_Numbers.n_5_rgb.." secondes suivant une élimination sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." et "..COLORS_KWords_fr.Crit_rgb_fr..".",
			-- ["zh-tw"] = "在 "..COLORS_KWords_tw.Weakspot_rgb_tw.." "..COLORS_KWords_tw.Crit_k_rgb_tw.." 後的 "..COLORS_Numbers.n_5_rgb.." 秒內，\n下一次近戰攻擊必定 "..COLORS_KWords_tw.Crit_rgb_tw.." 。", -- 殺戮狂潮
				-- 戰術斧 -- 40% | 60% | 80% | 100%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Weakspot_rgb_zh_cn..""..COLORS_KWords_zh_cn.Crit_hits_k_rgb_zh_cn.."时，下次近战攻击 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.n_5_rgb.." 秒。", -- 屠杀狂欢
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ RELENTLESS STRIKES +]--	02.11.2025
		-- Melee Power per stack (per tier)
		-- Arbites Shock Maul, Duelling Swords, Tactical Axes -- 4% | 6% | 8% | 10% (up to +50%)
		["loc_trait_bespoke_power_bonus_on_same_enemy_attacks_desc"] = { -- power_level: +10%, time: 2, stacks: 5, s->seconds, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds when hitting the Same enemy. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..PHRS.Can_be_refr.."\n"
				..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при повторном попадании по врагу. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..PHRS.Can_be_refr_ru..NTS.Pwr_note_rgb_ru, -- Безжалостные удары -- руоф Безжалостность
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes en attaquant le même ennemie. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "命中同一敵人 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，持續"..COLORS_Numbers.time_var_rgb.." 秒。\n最多可疊加 "..COLORS_Numbers.stacks_var_rgb.." 次。"..COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 持續打擊
				-- 決鬥劍, 戰術斧 -- 4% | 6% | 8% | 10% (up to +50%)
			-- ["zh-cn"] = "再次命中同一敌人时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 无情打击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ FLESH TEARER +]--	02.11.2025
		-- Bleed Stacks (per tier)
		-- Combat Blades -- 5 | 6 | 7 | 8
		["loc_trait_bespoke_bleed_on_crit_melee_desc"] = { -- stacks: +8, +colors
			en = COLORS_Numbers.stacks_var_rgb.." "..COLORS_KWords.Bleed_rgb.." Stacks on "..COLORS_KWords.Crit_hit_rgb..". "
				..Dot_nc.." Up to "..COLORS_Numbers.n_16_rgb.." Stacks. "..Dot_nc.." Lasts "..COLORS_Numbers.n_1_5_rgb.." seconds. "..PHRS.Refr_dur_stappl..PHRS.Cant_appl_thr_shlds,
			ru = COLORS_Numbers.stacks_var_rgb.." зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." добавляется при "..COLORS_KWords_ru.Crit_hit_rgb_ru..". "
				..Dot_nc.." До "..COLORS_Numbers.n_16_rgb.." зарядов. "..Dot_nc.." Длится "..COLORS_Numbers.n_1_5_rgb.." секунды. "..PHRS.Refr_dur_stappl_ru.."\n"
				..PHRS.Cant_appl_thr_shlds_ru, -- Раздиратель плоти
			-- fr = COLORS_Numbers.p_stacks_var_rgb.." Cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." en cas de "..COLORS_KWords_fr.Crit_hit_rgb_fr..". Jusqu'à "..COLORS_Numbers.n_16_rgb.." Cumuls.",
			-- ["zh-tw"] = "在暴擊時，使其獲得 "..COLORS_Numbers.p_stacks_var_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.." 。\n上限 "..COLORS_Numbers.n_16_rgb.." 層。", -- 血肉撕裂者
				-- 戰刃 -- 5 | 6 | 7 | 8
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时 ".. COLORS_Numbers.p_stacks_var_rgb.." 层"..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_16_rgb.." 层。", -- 撕裂者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ LACERATE +]--	02.11.2025
		-- Combat Blades -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_bleed_on_non_weakspot_hit_desc"] = { -- stacks: +4, +colors
			en = COLORS_Numbers.stacks_var_rgb.." "..COLORS_KWords.Bleed_rgb.." Stacks on non-"..COLORS_KWords.Weakspothits_rgb..".\n"
				..Dot_nc.." Up to "..COLORS_Numbers.n_16_rgb.." Stacks. "..Dot_nc.." Lasts "..COLORS_Numbers.n_1_5_rgb.." seconds.\n"
				..PHRS.Refr_dur_stappl..PHRS.Cant_appl_thr_shlds,
			ru = COLORS_Numbers.stacks_var_rgb.." заряда "..COLORS_KWords_ru.Bleed_rgb_ru.." добавляется при попаданиях не в "..COLORS_KWords_ru.Weakspot_rgb_ru..".\n"
				..Dot_nc.." До "..COLORS_Numbers.n_16_rgb.." зарядов. "..Dot_nc.." Длится "..COLORS_Numbers.n_1_5_rgb.." секунды.\n"
				..PHRS.Refr_dur_stappl_ru, -- ..PHRS.Cant_appl_thr_shlds_ru -- Терзание
			-- fr = COLORS_Numbers.p_stacks_var_rgb.." Cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." sur les attaque hors "..COLORS_KWords_fr.Weakspothits_rgb_fr..". Jusqu'à "..COLORS_Numbers.n_16_rgb.." Cumuls.",
			-- ["zh-tw"] = "非 "..COLORS_KWords_tw.Weakspothits_rgb_tw.." 時，使其獲得 "..COLORS_Numbers.p_stacks_var_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.." 。\n上限 "..COLORS_Numbers.n_16_rgb.." 層。", -- 撕碎
				-- 戰刃 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "非"..COLORS_KWords_zh_cn.Weakspothits_rgb_zh_cn.."时 ".. COLORS_Numbers.p_stacks_var_rgb.." 层"..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_16_rgb.." 层。", -- 割裂
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ EXECUTOR +]--	02.11.2025
		-- Power per stack (per tier)
		-- Combat Blades, Force Swords -- 4.5% | 5% | 5.5% | 6% (up to +30%)
		["loc_trait_bespoke_chained_weakspot_hits_increases_power_desc"] = { -- power_level: +6%, stacks: 5, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." on Repeated "..COLORS_KWords.Weakspothit_rgb..". Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..Dot_nc.." Stacks last "..COLORS_Numbers.n_2_5_rgb.." seconds.\n"
				..PHRS.Can_be_refr..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." при повторном ударе в "..COLORS_KWords_ru.Weakspothit_rgb_ru..". Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.\n"
				..PHRS.Can_be_refr_ru.."\n"
				..NTS.Pwr_note_rgb_ru, -- ..Dot_nc.." Заряды длятся "..COLORS_Numbers.n_2_5_rgb.." секунды. " -- Каратель -- руоф Экзекутор
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." lors d'un coup sur "..COLORS_KWords_fr.Weakspothit_rgb_fr.." répété. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. {#color(255, 35, 5)}(bug:+5% sur tout les niveaux de bénédiction){#reset()}"..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "命中 "..COLORS_KWords_tw.Weakspothit_rgb_tw.." 時 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.."	秒。\n持續命中時每次疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 行刑者
				-- 戰刃, 烈焰力場劍 -- 5% | 5% | 5% | 5% (up to +25%) (bugged)
			-- ["zh-cn"] = "连续"..COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。{#color(255, 35, 5)}\n（BUG：无论祝福级别如何，数值始终为 +5% 强度。）{#reset()}"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 处刑者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ RIPOSTE +]--
		-- Crit Chance (per tier)
		-- Combat Blades, Duelling Swords, Force Greatswords, Force Swords -- 12.5% | 15% | 17.5% | 20%
		["loc_trait_bespoke_dodge_grants_crit_chance_desc"] = { -- crit_chance: +20%, time: 6, s->seconds, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on successful Dodge. "
						..PHRS.Can_be_refr..Dot_nc.." Procs on dodging Melee/Ranged (non Gunners/Reapers/Snipers) or disabler attacks.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунд при успешном уклонении.\n"
						..PHRS.Can_be_refr_ru, -- ..Dot_nc.." Срабатывает от атак ближнего/дальнего боя (не Пулемётчик/Жнец/Снайпер) и выводящих из строя." -- Ответный удар
			fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une esquive réussie.",
			-- ["zh-tw"] = "成功閃避時 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 還擊
				-- 戰刃, 決鬥劍, 烈焰力場劍, 烈焰力場巨劍 -- 12.5% | 15% | 17.5% | 20%
			-- ["zh-cn"] = "成功闪避时 "..COLORS_Numbers.crit_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 还击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ PRECOGNITION +]--
		-- Finesse Bonus (per tier)
		-- Combat Blades, Duelling Swords, Force Greatswords, Force Swords -- 45% | 50% | 55% | 60%
		["loc_trait_bespoke_dodge_grants_finesse_bonus_desc"] = { -- damage: +60%, time: 2, s->seconds, +colors, +note
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Finesse_rgb.." "..COLORS_KWords.Damage_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on successful Dodge. "
				..NTS.Fns_note_rgb,
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." от "..COLORS_KWords_ru.Finesse_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при успешном уклонении. "
				..NTS.Fns_note_rgb_ru, -- Предвидение -- руоф Познание
			-- fr = COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Finesse_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une esquive réussie."..COLORS_KWords_fr.NTS.Fns_note_rgb_fr,
			-- ["zh-tw"] = "成功閃躲時 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Finesse_dmg_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒，"..COLORS_KWords_tw.NTS.Fns_note_rgb_tw, -- 未卜先知
				-- 戰刃, 決鬥劍, 烈焰力場劍, 烈焰力場巨劍 -- 45% | 50% | 55% | 60%
			-- ["zh-cn"] = "成功闪避时 "..COLORS_Numbers.dmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Finesse_dmg_rgb_zh_cn.."".."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.NTS.Fns_note_rgb_zh_cn, -- 预知
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ HAYMAKER +]--
		-- Instakill Chance per stack (per tier)
		-- Bully Clubs, Combat Blades -- 1% | 2% | 3% | 4% (up to +20%)
		["loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance_desc"] = { -- proc_chance: +4%, stacks: 5, +colors
			en = COLORS_Numbers.procch_var_rgb.." to Instakill human-sized enemies on Chained Heavy Hit. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. Instakill prevents other triggers. "
						..PHRS.Can_be_refr_drop_1,
			ru = COLORS_Numbers.procch_var_rgb.." к шансу убить одним ударом врага человеческого размера при серии тяжёлых ударов. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. Таланты, работающие от убийств, не активируются при этом.", -- Жнец -- руоф Коса
			-- fr = COLORS_Numbers.procch_var_rgb.." de chance de tuer instantanément les ennemies de taille humaines sur les attaques puissantes répétées. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. A noter que d'autres déclencheurs potentiels ne seront pas activés lors d'une élimination instantanée.",
			--??? ["zh-tw"] = "連續重擊時 \n"..COLORS_Numbers.procch_var_rgb.." 對人類大小的敵人即死機會，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。\n注意\n - 潛在Buff觸發即死時不會啟動。\n - Boss類無效。", -- 強力一擊
			--??? ["zh-tw"] = "連續重擊時 \n"..COLORS_Numbers.procch_var_rgb.."對人類大小的敵人即死機會。持續"..COLORS_Numbers.time_var_rgb.." 秒，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。\n注意\n -其他Buff觸發即死時不會啟動。\n -Boss類無效。", -- 強力一擊
				-- 惡棍棒, 戰刃 -- 1% | 2% | 3% | 4% (up to +20%)
			-- ["zh-cn"] = "连锁重攻击命中时 \n"..COLORS_Numbers.procch_var_rgb.." 直接击杀人形敌人的几率。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。\n攻击每命中一个目标叠加 "..COLORS_Numbers.n_1_rgb.." 层。\n注意，通过这种方式直接击杀敌人不会触发其他效果。", -- 干草机
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SMACKDOWN +]--
		-- Crit Chance (per tier)
		-- Bully Clubs, Combat Blades -- 12.5% | 15% | 17.5% | 20%
		["loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy_desc"] = { -- crit_chance: +20%, time: 2, s->seconds, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on hitting a "..COLORS_KWords.Staggered_rgb.." enemy on Special Action Hit. "
						..PHRS.Can_be_refr..Dot_red.." Does not benefit Ranged weapons.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при атаке "..COLORS_KWords_ru.Staggered_rgb_ru.." врагов специальными атаками.\n"
				..PHRS.Can_be_refr_ru, -- ..Dot_red.." Не влияет на оружие дальнего боя." -- Сокрушение -- руоф Смятение
			-- fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes pendant qu'un ennemie "..COLORS_KWords_fr.Staggered_rgb_fr.." grâce à un coup d'action spéciale.",
			-- ["zh-tw"] = "特殊攻擊擊中 "..COLORS_KWords_tw.Staggered_rgb_tw.." 敵人時 \n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 擊倒
				-- 惡棍棒, 戰刃 -- 12.5% | 15% | 17.5% | 20%
			-- ["zh-cn"] = "特殊攻击命中"..COLORS_KWords_zh_cn.Staggered_rgb_zh_cn.."敌人时 \n"..COLORS_Numbers.crit_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 攻击波
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ MERCY KILLER +]--
		-- Melee Weakspot Damage (per tier)
		-- Combat Blades -- 52.5% | 55% | 57.5% | 60%
		["loc_trait_bespoke_increased_weakspot_damage_on_bleeding_desc"] = { -- damage: +60%, +colors
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb.." to Enemies with "..COLORS_KWords.Bleed_rgb.." Stacks.",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." врагам с зарядами "..COLORS_KWords_ru.Bleed_rgb_ru..".", -- Милосердный убийца -- руоф Милосердие
			-- fr = COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." au ennemies avec des cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr..".",
			-- ["zh-tw"] = "攻擊有 "..COLORS_KWords_tw.Bleed_rgb_tw.." 的敵人，\n增加 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.." 。", -- 仁慈殺手
				-- 戰刃 -- 52.5% | 55% | 57.5% | 60%
			-- ["zh-cn"] = "对"..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."敌人 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."。", -- 仁慈杀手
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ RUTHLESS BACKSTAB +]--
		-- Backstab Rending (per tier)
		-- Combat Blades -- 70% | 80% | 90% | 100%
		["loc_trait_bespoke_rending_on_backstabs_desc"] = { -- rending: +100%, +colors
			en = COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Rending_rgb.." on Backstab Hit. "
				..Dot_nc.." Enables backstabbing. "..NTS.Rend_note_rgb,
			ru = COLORS_Numbers.rending_var_rgb.." к "..COLORS_KWords_ru.Rending_rgb_ru.." брони при ударе в спину. "
				..Dot_nc.." Активируется удар в спину.\n"
				..NTS.Rend_note_rgb_ru, -- Беспощадный удар в спину
			-- fr = COLORS_Numbers.rending_var_rgb.." de "..COLORS_KWords_fr.Rending_rgb_fr.." lors d'un coup dans le dos."..COLORS_KWords_fr.NTS.Rend_note_rgb_fr,
			-- ["zh-tw"] = "背刺時，增加 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Rending_rgb_tw.." 。", -- 無情背刺
				-- 戰刃 -- 70% | 80% | 90% | 100%
			-- ["zh-cn"] = "背刺时 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Rending_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.NTS.Rend_note_rgb_zh_cn, -- 无情背刺
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ UNCANNY STRIKE +]--
		-- Rending per stack (per tier)
		-- Combat Blades, Duelling Swords, Force Swords, Sapper Shovels -- 12% | 16% | 20% | 24% (up to +120%)
		["loc_trait_bespoke_stacking_rending_on_weakspot_desc"] = { -- rending: +24%, time: 3.5, stacks: 5, s->seconds, +colors
			en = COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Rending_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Enemy "..COLORS_KWords.Weakspothit_rgb..". Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..PHRS.Can_be_refr.."\n"
				..NTS.Rend_note_rgb,
			ru = COLORS_Numbers.rending_var_rgb.." к "..COLORS_KWords_ru.Rending_rgb_ru.." брони на "..COLORS_Numbers.time_var_rgb.." секунды при попадании в "..COLORS_KWords_ru.Weakspothit_rgb_ru..". Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.\n"
				..PHRS.Can_be_refr_ru, -- ..NTS.Rend_note_rgb_ru -- Жуткий удар
			-- fr = COLORS_Numbers.rending_var_rgb.." de "..COLORS_KWords_fr.Rending_rgb_fr.." sur un coup sur "..COLORS_KWords_fr.Weakspothit_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Rend_note_rgb_fr,
			-- ["zh-tw"] = COLORS_KWords_tw.Weakspothit_rgb_tw.." 時 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Rending_rgb_tw.." ，持續 "..COLORS_Numbers.time_var_rgb.." 秒，\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.NTS.Rend_note_rgb_tw, -- 詭異打擊
				-- 戰刃, 決鬥劍, 烈焰力場劍, 工兵鏟 -- 12% | 16% | 20% | 24% (up to +120%)
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Rending_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加"..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Rend_note_rgb_zh_cn, -- 神秘打击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ TRAUMA +]--
		-- Melee Stagger Strength and Stagger Duration per stack (per tier)
		-- Crusher, Devil's Claw Swords, Sapper Shovels, Thunder Hammers -- 14% and 10% | 16% and 10% | 18% and 10% | 20% and 10% (up to +100% and +61%)
		["loc_trait_bespoke_consecutive_hits_increases_stagger_desc"] = { -- impact: +20%, time: 2, stacks: 5, +colors
			en = COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords.Impact_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Repeated Hit. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..PHRS.Can_be_refr,
			ru = COLORS_Numbers.impact_var_rgb.." к "..COLORS_KWords_ru.Impact_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при повторных попаданиях. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..PHRS.Can_be_refr_ru, -- Травма
			-- fr = COLORS_Numbers.impact_var_rgb.." d'"..COLORS_KWords_fr.Impact_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un coup répété. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "連續攻擊時 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_tw.Impact_rgb_tw.." ，持續"..COLORS_Numbers.time_var_rgb.." 秒。\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.n_5_rgb.." 層。", -- 創傷
				-- 輾壓者, 『惡魔之爪』劍, 工兵鏟, 雷鎚 -- 14% | 16% | 18% | 20% (up to +100%)
			-- ["zh-cn"] = "再次命中同一敌人时 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 创伤
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ VICIOUS SLICE +]--
		-- Melee Stagger Strength per stack (per tier)
		-- Devil's Claw Swords -- 14% | 16% | 18% | 20% (up to +100%)
		["loc_trait_bespoke_increase_stagger_per_hit_in_sweep_desc"] = { -- impact: +20%, +colors
			en = COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords.Impact_rgb.." to Target for each Enemy already Hit by the same Attack. "
						..Dot_nc.." Up to "..COLORS_Numbers.n_5_rgb.." Stacks. "..NTS.Impact_note_rgb,
			ru = COLORS_Numbers.impact_var_rgb.." к "..COLORS_KWords_ru.Impact_rgb_ru.." цели за каждого врага, ранее поражённого этой же атакой. "
				..Dot_nc.." До "..COLORS_Numbers.n_5_rgb.." зарядов.\n"
				..NTS.Impact_note_rgb_ru, -- Жестокий разрез -- руоф Жестокая нарезка
			-- fr = COLORS_Numbers.impact_var_rgb.." d'"..COLORS_KWords_fr.Impact_rgb_fr.." à la cible pour chaque ennemie déjà touché par la même attaque. Jusqu'à "..COLORS_Numbers.n_5_rgb.." cumuls.",
			-- ["zh-tw"] = "命中同一敵人 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_tw.Impact_rgb_tw.." ，\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.n_5_rgb.."層。", -- UI沒顯示 -- 凶狠切割
				-- 『惡魔之爪』劍 -- 14% | 16% | 18% | 20% (up to +100%)
			-- ["zh-cn"] = "每有一个已被同一攻击命中的敌人，\n"..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。", -- 邪恶斩切
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ HAMMERBLOW +]--
		-- Melee Stagger Strength per stack (per tier)
		-- Arbites Shock Maul, Crusher, Devil's Claw Swords, Sapper Shovels, Shock Mauls, Shock Mauls and Shield, Thunder Hammers -- 19% | 21% | 23% | 25% (up to +125%)
		["loc_trait_bespoke_stacking_increase_impact_on_hit_desc"] = { -- impact: +25%, time: 1.5, stacks: 5, s->seconds, +colors
			en = COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords.Impact_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Hit. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..Dot_green.." Can generate multiple stacks per swing or push action. "..PHRS.Can_be_refr,
			ru = COLORS_Numbers.impact_var_rgb.." к "..COLORS_KWords_ru.Impact_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при ударе. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..Dot_green.." Может дать несколько зарядов за удар или толчок. "..PHRS.Can_be_refr_ru, -- Молотобой -- руоф Удар молотом
			-- fr = COLORS_Numbers.impact_var_rgb.." d'"..COLORS_KWords_fr.Impact_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un coup. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. Jusqu'à "..COLORS_Numbers.n_5_rgb.." cumuls par coup.",
			-- ["zh-tw"] = "每次攻擊 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_tw.Impact_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n上限 "..COLORS_Numbers.n_5_rgb.." 層。", -- 錘擊
				-- 輾壓者, 『惡魔之爪』劍, 工兵鏟, 電擊錘, 雷鎚 -- 19% | 21% | 23% | 25% (up to +125%)
			-- ["zh-cn"] = "命中时 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。\n攻击每命中一个目标叠加 "..COLORS_Numbers.n_1_rgb.." 层。", -- 锤击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SKULLCRUSHER +]--
		-- Debuff Stacks Applied (per tier)
		-- Battle Maul and Shield, Bully Clubs, Crusher, Devil's Claw Swords, Latrine Shovels, Power Maul, Sapper Shovels, Shock Mauls, Thunder Hammers -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff_desc"] = { -- stacks: 4, damage: +10%, time: 5, Stack(s)->Stacks, +colors
			en = "Target receives "..COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." if already "..COLORS_KWords.Staggered_rgb..", to a maximum of "..COLORS_Numbers.n_8_rgb.." Stacks on target. Lasts "..COLORS_Numbers.time_var_rgb.." seconds. "
				..PHRS.Can_be_refr,
			ru = "Цель получает "..COLORS_Numbers.stacks_var_rgb.." заряда по "..COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru..", если уже "..COLORS_KWords_ru.Stunned_rgb_ru..", вплоть до "..COLORS_Numbers.n_8_rgb.." зарядов. Длится "..COLORS_Numbers.time_var_rgb.." секунд.\n"
				..PHRS.Can_be_refr_ru, -- Череподробитель
			-- fr = "La cible subit "..COLORS_Numbers.stacks_var_rgb.." cumuls de "..COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." si elle "..COLORS_KWords_fr.Staggered_rgb_fr.." déjà, jusqu'à un maximum de "..COLORS_Numbers.n_8_rgb.." cumuls. Dure "..COLORS_Numbers.time_var_rgb.." secondes.",
			-- ["zh-tw"] = "對 "..COLORS_KWords_tw.Staggered_rgb_tw.." 的敵人，\n使其獲得 "..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw, -- 粉碎者
				-- 作戰大槌and板盾, 惡棍棒, 輾壓者, 『惡魔之爪』劍, 工兵鏟, 電擊錘, 雷鎚 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "对"..COLORS_KWords_zh_cn.Staggered_rgb_zh_cn.."敌人施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."效果，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.n_8_rgb.." 层。", -- 碎颅者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ THUNDERSTRIKE +]--
		-- Debuff Stacks Applied (per tier)
		-- Battle Maul and Shield, Crusher, Devil's Claw Swords, Power Maul, Sapper Shovels, Thunder Hammers -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff_desc"] = { -- stacks: 4, impact: +10%, time: 5, Stack(s)->Stacks, +colors
			en = "Target receives "..COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords.Impact_rgb.." if already "..COLORS_KWords.Staggered_rgb..", to a maximum of "..COLORS_Numbers.n_8_rgb.." Stacks on target. Lasts "..COLORS_Numbers.time_var_rgb.." seconds. "
				..PHRS.Can_be_refr,
			ru = "Цель получает "..COLORS_Numbers.stacks_var_rgb.." заряда по "..COLORS_Numbers.impact_var_rgb.." к "..COLORS_KWords_ru.Impact_rgb_ru..", если уже "..COLORS_KWords_ru.Stunned_rgb_ru..", вплоть до "..COLORS_Numbers.n_8_rgb.." зарядов. Длится "..COLORS_Numbers.time_var_rgb.." секунд. "
				..PHRS.Can_be_refr_ru, -- Громобой -- руоф Гроза
			-- fr = "La cible subit "..COLORS_Numbers.stacks_var_rgb.." cumuls de "..COLORS_Numbers.impact_var_rgb.." d'"..COLORS_KWords_fr.Impact_rgb_fr.." si elle "..COLORS_KWords_fr.Staggered_rgb_fr.." déjà, jusqu'à un maximum de "..COLORS_Numbers.n_8_rgb.." cumuls. Dure "..COLORS_Numbers.time_var_rgb.." secondes.",
			-- ["zh-tw"] = "對 "..COLORS_KWords_tw.Staggered_rgb_tw.." 的敵人，\n使其獲得 "..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_tw.Impact_rgb_tw.."，持續"..COLORS_Numbers.time_var_rgb.." 秒。\n上限 "..COLORS_Numbers.n_8_rgb.." 層。", -- 雷霆打擊
				-- 作戰大槌and板盾, 輾壓者, 『惡魔之爪』劍, 動力錘, 工兵鏟, 雷鎚 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "对"..COLORS_KWords_zh_cn.Staggered_rgb_zh_cn.."敌人施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."效果，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.n_8_rgb.." 层。", -- 雷击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ CHAINED DEATHBLOW +]--
		-- Melee Crit Chance (per tier)
		-- Heavy Swords -- 5% | 10% | 15% | 20%
		["loc_trait_bespoke_increased_crit_chance_on_weakspot_kill_desc"] = { -- crit_chance: +20%, time: 3, s->seconds, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on "..COLORS_KWords.Weak_spot_rgb.." kill. "
				..PHRS.Can_be_refr,
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при убийствах в "..COLORS_KWords_ru.Weakspot_rgb_ru..". "
				..PHRS.Can_be_refr_ru, -- Карающая серия -- руоф Цепочка смертельных ударов
			-- fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination sur "..COLORS_KWords_fr.Weakspot_rgb_fr..". {#color(255, 35, 5)}(bug:+10% de taux de coup critique peu importe le niveau de la bénédiction){#reset()}",
			-- ["zh-tw"] = COLORS_KWords_tw.Weakspot_rgb_tw.." 擊殺時 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."。\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。{#color(255, 35, 5)}\n(bug: 所有等級 +10%){#reset()}", -- 致命連擊
				-- 重劍 -- 5% | 10% | 15% | 20%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Weakspothits_k_rgb_zh_cn.."时 \n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。{#color(255, 35, 5)}\n（存在BUG：无论祝福级别如何，数值始终为 +10% 暴击几率。）{#reset()}", -- 连锁死亡打击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ PERFECT STRIKE +]--
		-- Melee Crit Damage (per tier)
		-- Battle Maul and Shield, Bully Clubs, Eviscerators, Heavy Swords, Latrine Shovels, Power Maul -- 2.5% | 5% | 7.5% | 10%
		["loc_trait_bespoke_pass_past_armor_on_crit_new_desc"] = { -- crit_damage: +10%, +colors
			en = COLORS_Numbers.critdmg_var_rgb.." Melee "..COLORS_KWords.Crit_hit_rgb.." "..COLORS_KWords.Damage_rgb..". "..COLORS_KWords.Crit_hits_rgb.." ignore "..COLORS_KWords.Hit_mass_rgb.." bonus from Armour.\n"
						..Dot_green.." Carapace armor can be "..COLORS_KWords.Cleaved_rgb..".",
			ru = COLORS_Numbers.critdmg_var_rgb.." к "..COLORS_KWords_ru.Crit_hit_color_rgb_ru.." в ближнем бою. "..COLORS_KWords_ru.CritH_rgb_ru.." игнорируют "..COLORS_KWords_ru.Hit_mass_rgb_ru.." от брони, позволяя "..COLORS_KWords_ru.Cleavat_rgb_ru.." панцирную броню.", -- Безупречный удар
			-- fr = COLORS_Numbers.critdmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Crit_hit_rgb_fr.." en mélée. Les "..COLORS_KWords_fr.Crit_hits_rgb_fr.." ignore le "..COLORS_KWords_fr.Hit_mass_rgb_fr.." de l'armure.",
			-- ["zh-tw"] = "近戰 "..COLORS_KWords_tw.Crit_rgb_tw.." 時 "..COLORS_Numbers.critdmg_var_rgb.." "..COLORS_KWords_tw.Crit_dmg_r_rgb_tw.."。\n無視 "..COLORS_KWords_tw.Hit_mass_rgb_tw.." 護甲加成。", -- 完美一擊
				-- 作戰大槌and板盾, 惡棍棒, 重型開膛劍, 重劍, 廁所鏟, 動力錘 -- 2.5% | 5% | 7.5% | 10%
			-- ["zh-cn"] = "近战"..COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时 "..COLORS_Numbers.critdmg_var_rgb..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。\n"..COLORS_KWords_zh_cn.Crit0_rgb_zh_cn.."同时无视装甲赋予的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn, -- 完美打击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ BLADED MOMENTUM +]--
		-- Rending per stack (per tier)
		-- Heavy Swords -- 4% | 6% | 8% | 10% (up to +50%)
		["loc_trait_bespoke_stacking_rending_on_cleave_desc"] = { -- rending: +10%, time: 2.5, stacks: 5, +colors, +note
			en = COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Rending_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds when hitting "..COLORS_Numbers.n_2_rgb.." or more enemies with a melee attack. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..PHRS.Can_be_refr..NTS.Rend_note_rgb,
			ru = COLORS_Numbers.rending_var_rgb.." к "..COLORS_KWords_ru.Rending_rgb_ru.." брони на "..COLORS_Numbers.time_var_rgb.." секунды при ударе по "..COLORS_Numbers.n_2_rgb.." или более врагам за раз. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.\n"
				..PHRS.Can_be_refr_ru.."\n"
				..NTS.Rend_note_rgb_ru, -- Инерция клинка -- руоф Моментум лезвия
			-- fr = COLORS_Numbers.rending_var_rgb.." de "..COLORS_KWords_fr.Rending_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un coup en mélée multiple . Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Rend_note_rgb_fr,
			-- ["zh-tw"] = "在一次攻擊命中多名敵人 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Rending_rgb_tw.." ，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.NTS.Rend_note_rgb_tw, -- 利刃攻勢
				-- 重劍 -- 4% | 6% | 8% | 10% (up to +50%)
			-- ["zh-cn"] = "命中多名敌人时"..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Rending_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Rend_note_rgb_zh_cn, -- 刀刃势头
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ DEFLECTOR +]--
		-- Block Cost Reduction (per tier)
		-- Force Greatswords, Force Swords -- 22.5% | 25% | 27.5% | 30%
		["loc_trait_bespoke_can_block_ranged_desc"] = { -- block_cost: 30%, +colors
			en = COLORS_Numbers.block_var_rgb.." Block Cost. This weapon Blocks both Melee and Ranged attacks.",
			ru = COLORS_Numbers.block_var_rgb.." стоимости блока. Это оружие блокирует атаки и ближнего, и дальнего боя.", -- Отражатель
			-- fr = "Cette arme bloque les attaques à distance et en mélée. De plus, le coût du blocage est réduit de "..COLORS_Numbers.block_var_rgb..".",
			-- ["zh-tw"] = "此武器可以格擋近戰和遠程攻擊。\n此外，格擋消耗 "..COLORS_Numbers.block_var_rgb, -- 偏轉
			-- 烈焰力場劍, 烈焰力場巨劍 -- 22.5% | 25% | 27.5% | 30%
			-- ["zh-cn"] = COLORS_Numbers.block_var_rgb.." 格挡消耗。\n此武器可格挡近战与远程攻击。", -- 偏转器
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ MOMENTUM +]--
		-- Max Toughness Percentage (per tier)
		-- Bully Clubs, Cleavers, Eviscerators, Force Greatswords, Thunder Hammers
		-- 12% | 13% | 14% | 15%
		["loc_trait_bespoke_toughness_recovery_on_multiple_hits_desc"] = { -- toughness: 15%, multiple_hit: 3, +colors
			en = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." restores when hitting at least "..COLORS_Numbers.mult_hit_var_rgb.." enemies with an attack. "
				..PHRS.Dont_intw_coher_tghn,
			ru = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается, если вы попали атакой по "..COLORS_Numbers.mult_hit_var_rgb.." или более врагам. "
				..PHRS.Dont_intw_coher_tghn_ru, -- Моментум
			-- fr = COLORS_Numbers.tghns_var_rgb.." de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." en touchant au moins "..COLORS_Numbers.mult_hit_var_rgb.." ennemies avec une attaque.",
			-- ["zh-tw"] = "在一次攻擊命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 個敵人時，\n恢復 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.." 。", -- 勢頭
				-- 烈焰力場巨劍, 惡棍棒, 砍刀, 重型開膛劍, 雷鎚 -- 12% | 13% | 14% | 15%
			-- ["zh-cn"] = "命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 名敌人时，\n"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。", -- 动量
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ MURDEROUS TRANQUILITY +]--
		-- Peril Amount Removed (per tier)
		-- Force Greatswords -- 2% | 3% | 4% | 5%
		["loc_trait_bespoke_vent_warp_charge_on_multiple_hits_desc"] = { -- multiple_hit: 3, warp_charge: 2%, +colors
			en = COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords.Peril_rgb.." is quelled by hitting at least "..COLORS_Numbers.mult_hit_var_rgb.." enemies with an attack. "
				..Dot_nc.." Procs once per attack. "..Dot_red.." Cannot be triggered by a Special Attack.",
			ru = COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru.." подавляется при попадании атакой по "..COLORS_Numbers.mult_hit_var_rgb.." или более врагам. "
				..Dot_nc.." Срабатывает раз за удар.\n"
				..Dot_red.." Не срабатывает от специальных атак.", -- Убийственное спокойствие
			-- fr = "Toucher au moins "..COLORS_Numbers.mult_hit_var_rgb.." ennemies avec une attaque, réduit de "..COLORS_Numbers.warpchrg_var_rgb.." le "..COLORS_KWords_fr.Peril_rgb_fr..".",
			-- ["zh-tw"] = "在一次攻擊命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 個敵人時，\n消除 "..COLORS_Numbers.warpchrg_var_rgb.." 點的 "..COLORS_KWords_tw.Peril_rgb_tw.." 。", -- 兇殘之寧
				-- 烈焰力場巨劍 -- 2% | 3% | 4% | 5% ???
			-- ["zh-cn"] = "命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 名敌人时，\n平息 " ..COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_zh_cn.Peril_rgb_zh_cn.."。", -- 杀意如水
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ BLAZING SPIRIT -- !!! MELEE !!!
		-- Soulblaze Stacks and Max Stacks (per tier)
		-- Force Swords -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
		-- !!!FORCE GREATSWORD TEMPORARILY USES THE DESCRIPTION FROM THE RANGED BLESSING!!!
		-- Force Greatswords -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
		["loc_trait_bespoke_warp_burninating_on_crit_desc"] = { -- stacks: +4, max_stacks: 12, Stack(s)->Stacks, +colors
			en = COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_KWords.Soulblaze_rgb.." are gained by the enemy on "..COLORS_KWords.Crit_hit_rgb..", up to "..COLORS_Numbers.maxstks_var_rgb.." Stacks.\n"
				..Dot_nc.." Lasts "..COLORS_Numbers.n_8_rgb.." seconds. "..PHRS.Refr_dur_stappl..PHRS.Cant_appl_thr_shlds,
			ru = COLORS_Numbers.stacks_var_rgb.." заряда "..COLORS_KWords_ru.Soulblaze_rgb_ru.." получает враг при "..COLORS_KWords_ru.Crit_hit_rgb_ru..", вплоть до "..COLORS_Numbers.maxstks_var_rgb.." зарядов. "
				..Dot_nc.." Длится "..COLORS_Numbers.n_8_rgb.." секунд.\n"
				..PHRS.Cant_appl_thr_shlds_ru, -- ..PHRS.Refr_dur_stappl_ru -- Пылающий дух
			-- fr = "L'ennemi gagne "..COLORS_Numbers.n_plus_rgb..""..COLORS_Numbers.stacks_var_rgb.." cumuls d'"..COLORS_KWords_fr.Soulblaze_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr..", Jusqu'à "..COLORS_Numbers.maxstks_var_rgb.." cumuls.",
			-- ["zh-tw"] = COLORS_KWords_tw.Crit_hit_rgb_tw.." 敵人時，\n使其獲得 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." 層的 "..COLORS_KWords_tw.Soulblaze_rgb_tw.."。\n上限 "..COLORS_Numbers.n_6_rgb.." 層，烈焰力場巨劍 "..COLORS_Numbers.n_12_rgb.." 層。", -- 燃燒靈魂
			-- 虛空爆破力場法杖, 虛空打擊力場法杖 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时, 对敌人施加 "..COLORS_Numbers.stacks_var_rgb.." 层"..COLORS_KWords_zh_cn.Soulblaze_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.maxstks_var_rgb.." 次。", -- 烈焰之魂
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ UNSTABLE POWER +]--
		-- Power per stack (per tier)
		-- Force Greatswords, Force Swords -- 3.5% | 4% | 4.5% | 5% (up to +20%)
		["loc_trait_bespoke_warp_charge_power_bonus_desc"] = { -- power_level: +20%, +colors
			en = "Up to "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb..", with increasing "..COLORS_KWords.Peril_rgb.." Level. "
				..Dot_nc.." Stacks "..COLORS_Numbers.n_4_rgb.." times. "..NTS.Pwr_note_rgb,
			ru = "До "..COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." вы получаете, с увеличением уровня "..COLORS_KWords_ru.Peril_rgb_ru..".\n"
				..Dot_nc.." Суммируется "..COLORS_Numbers.n_4_rgb.." раза. "..NTS.Pwr_note_rgb_ru, -- Нестабильная мощь
			-- fr = "Jusqu'à "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_fr.Strength_rgb_fr..", en fonction du "..COLORS_KWords_fr.Peril_rgb_fr..". Se cumule "..COLORS_Numbers.n_4_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = COLORS_KWords_tw.Peril_rgb_tw.." 每增加"..COLORS_Numbers.pc_20_rgb.."， 獲得一層，\n每一層 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.." ，上限 "..COLORS_Numbers.n_4_rgb.." 層。"..COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 不穩定能量
			-- 烈焰力場巨劍, 烈焰力場劍 -- 3.5% | 4% | 4.5% | 5% (up to +20%)
			-- ["zh-cn"] = "随"..COLORS_KWords_zh_cn.Peril_rgb_zh_cn.."增长叠加层数，\n每增长 "..COLORS_Numbers.pc_20_rgb.."，"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_4_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 无常之力
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ WARP SLICE +]--
		-- Cooldown (per tier)
		-- Force Greatswords -- 30s | 25s | 20s | 15s
		["loc_trait_bespoke_wind_slash_crits_desc"] = { -- cooldown: 50, s->seconds, +colors
			en = "Guaranteed Activated "..COLORS_KWords.Crit_strike_rgb..". Cooldown "..COLORS_Numbers.cd_var_rgb.." seconds.",
			ru = "Следующая специальная атака будет гарантированным "..COLORS_KWords_ru.Crit_hit_udom_rgb_ru..". Восстанавливается "..COLORS_Numbers.cd_var_rgb.." секунд.", -- Варп нарезка
			-- fr = COLORS_KWords_fr.Crit_hit_rgb_fr.." garranti activé. Temps de recharge : "..COLORS_Numbers.cd_var_rgb.." secondes.",
			-- ["zh-tw"] = "攻擊必定 "..COLORS_KWords_tw.Crit_rgb_tw.."，冷卻時間 "..COLORS_Numbers.cd_var_rgb.." 秒", -- 亞空間斬擊
				-- 烈焰力場巨劍 --
			-- ["zh-cn"] = "使下次充能攻击必定"..COLORS_KWords_zh_cn.Crit_rgb_zh_cn.."，\n冷却时间 "..COLORS_Numbers.cd_var_rgb.." 秒。", -- 亚空间切割
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ EXORCIST +]--
		-- Peril Amount Removed (per tier)
		-- Force Swords -- 2% | 3% | 4% | 5%
		["loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge_desc"] = { -- warp_charge: 5%, +colors
			en = COLORS_Numbers.warpchrg_var_rgb.." of "..COLORS_KWords.Peril_rgb.." is quelled on Repeated "..COLORS_KWords.Weakspothit_rgb..". "
				..Dot_nc.." Procs only once per swing regardless of how many enemy "..COLORS_KWords.Weakspots_rgb.." are hit.",
			ru = COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru.." подавляется при повторном попадании в "..COLORS_KWords_ru.Weakspothit_rgb_ru..". "
				..Dot_nc.." Срабатывает только "..COLORS_Numbers.n_1_rgb.." раз за атаку.", -- Экзорцист
			-- fr = COLORS_Numbers.warpchrg_var_rgb.." du "..COLORS_KWords_fr.Peril_rgb_fr.." est dissipé sur les "..COLORS_KWords_fr.Weakspothit_rgb_fr.." répété.",
			-- ["zh-tw"] = "連續 "..COLORS_KWords_tw.Weakspothit_rgb_tw.." 時，消除 "..COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_tw.Peril_rgb_tw.." 。", -- 驅魔者
				-- 烈焰力場劍 -- 2% | 3% | 4% | 5%
			-- ["zh-cn"] = "连锁攻击"..COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时，\n平息 "..COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_zh_cn.Peril_rgb_zh_cn.."。", -- 驱魔者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SUPERIORITY +]--
		-- Power per stack (per tier)
		-- Force Swords -- 5% | 7.5% | 10% | 12.5% (up to +37.5%)
		["loc_trait_bespoke_elite_kills_grants_stackable_power_desc"] = { -- stacks: 5, power_level: +12.5%, time: 7, s->seconds, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Elite and Specialist Kill. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..PHRS.Can_be_refr_drop_1.." "..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунд при убийстве элитного врага или специалиста. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раза. "
				..PHRS.Can_be_refr_drop_1_ru, -- ..NTS.Pwr_note_rgb_ru -- Превосходство
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination d'élite. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. Les cumuls se détériorent un à un."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "擊殺精英時，增加 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n每次擊殺可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 優勢
				-- 烈焰力場劍 -- 5% | 7.5% | 10% | 12.5% (up to +37.5%)
			-- ["zh-cn"] = "击杀精英敌人时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层，该效果逐层衰减。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 优势
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ LIGHTNING REFLEXES +]--
		-- Melee Power (per tier)
		-- Arbites Shock Maul, Shock Mauls, Shock Mauls and Shield -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_block_has_chance_to_stun_with_cd_desc"] = { -- power_level: 25%, duration: 3, cooldown_duration: 3, +colors
			en = "Perfect Block "..COLORS_KWords.Stuns_rgb.." attacker, and grant you "..COLORS_Numbers.pwrlvl_var_rgb.." Melee "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.dur_var_rgb.." seconds. Cooldown "..COLORS_Numbers.cd_dur_var_rgb.." seconds. "
				..NTS.Pwr_note_rgb,
			ru = "При идеальном блоке атакующий враг "..COLORS_KWords_ru.Staggers_esia_rgb_ru..", а вы получаете "..COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." ближнего боя на "..COLORS_Numbers.dur_var_rgb.." секунды. Восстанавливается "..COLORS_Numbers.cd_dur_var_rgb.." секунды.", -- ..NTS.Pwr_note_rgb_ru -- Молниеносные рефлексы
			-- fr = "Les blocages opportuns "..COLORS_KWords_fr.Stun_s_rgb_fr.." l'attaquant et vous octroient "..COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." de mélée pendant "..COLORS_Numbers.dur_var_rgb.." secondes. Temps de recharge : "..COLORS_Numbers.cd_dur_var_rgb.." secondes."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = ("完美格擋會使攻擊者 "..COLORS_KWords_tw.Staggers_rgb_tw.." ，\n並 "..COLORS_Numbers.pwrlvl_var_rgb.." 近戰 "..COLORS_KWords_tw.Strength_rgb_tw.."，持續 "..COLORS_Numbers.dur_var_rgb.." 秒。\n冷卻時間為 "..COLORS_Numbers.cd_dur_var_rgb.." 秒。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 閃電反射
					-- 電擊錘
			-- ["zh-cn"] = "完美格挡会使目标"..COLORS_KWords_zh_cn.Electrocute_rgb_zh_cn.."，\n同时 "..COLORS_Numbers.pwrlvl_var_rgb.." 近战"..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.dur_var_rgb.." 秒。\n冷却时间 "..COLORS_Numbers.cd_dur_var_rgb.." 秒。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 闪电反应
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ HIGH VOLTAGE +]--
		-- Damage vs Electrocuted (per tier)
		-- Arbites Shock Maul, Shock Mauls, Shock Mauls and Shield -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_damage_bonus_vs_electrocuded_desc"] = { -- damage: +25%, +colors
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs "..COLORS_KWords.Electrocuted_rgb.." enemies.",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." против врагов, поражённых "..COLORS_KWords_ru.Electrocuted_rgb_ru..".", -- Высокое напряжение
			-- fr = COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemies "..COLORS_KWords_fr.Electrocuted_rgb_fr.." .",
			-- ["zh-tw"] = "對 "..COLORS_KWords_tw.Electrocuted_rgb_tw.." 的敵人 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." 。", -- 高壓電
				-- 電擊錘 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = "对"..COLORS_KWords_zh_cn.Electrocuted_rgb_zh_cn.."敌人 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。", -- 高压电
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ FALTER +]--
		-- Weakspot Stagger Reduction Modifier (per tier)
		-- Arbites Shock Maul, Shock Mauls -- 60% | 70% | 80% | 90%
		["loc_trait_bespoke_negate_stagger_reduction_on_weakspot_desc"] = { -- stagger: 90%, ranged_stagger: 30%, +colors
			en = COLORS_Numbers.stgrrang_var_rgb.." Ranged "..COLORS_KWords.Stagger_rgb.." strength.\n"
				..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords.Stagger_rgb.." on enemies on "..COLORS_KWords.Weakspothit_rgb..".",
			ru = COLORS_Numbers.stgrrang_var_rgb.." к силе "..COLORS_KWords_ru.Staggering_rgb_ru.." для дальнобойных атак.\n"
				..COLORS_Numbers.stgr_var_rgb.." к "..COLORS_KWords_ru.Stagger2_rgb_ru.." врагов при попадании в "..COLORS_KWords_ru.Weakspot_rgb_ru..".", -- Дрожь
			-- fr = "Le "..COLORS_KWords_fr.Stagger_rgb_fr.." des ennemis augmente de "..COLORS_Numbers.stgr_var_rgb..", lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr..". De plus augmente la puissance du "..COLORS_KWords_fr.Stagger_rgb_fr.." à distance de "..COLORS_Numbers.stgrrang_var_rgb..".",
			-- ["zh-tw"] = COLORS_KWords_tw.Weakspothit_rgb_tw.." 時，增加 "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_tw.Stagger2_rgb_tw.." ，\n與 "..COLORS_Numbers.stgrrang_var_rgb.." 的遠程 "..COLORS_KWords_tw.Stagger2_rgb_tw.." 。", -- 踉蹌
				-- 電擊錘 -- 60% | 70% | 80% | 90%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时，\n对敌人施加的"..COLORS_KWords_zh_cn.Stagger2_rgb_zh_cn.."效果 "..COLORS_Numbers.stgr_var_rgb.."。\n远程武器带有该祝福时，\n额外 "..COLORS_Numbers.stgrrang_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."。", -- 摇摇欲坠
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ OVERWHELMING FORCE +]--
		-- Cooldown and Proc Chance (per tier)
		-- Shock Mauls -- 5s and 10% | 4.5s and 15% | 4s and 20% | 3.5s and 25%
		["loc_trait_bespoke_staggering_hits_has_chance_to_stun_desc"] = { -- chance: 25%, cooldown: 3.5, +colors
			en = COLORS_KWords.Staggering_rgb.." an Enemy has a "..COLORS_Numbers.chnc_var_rgb.." Chance to Stun the enemy. Cooldown "..COLORS_Numbers.cd_var_rgb.." seconds. "
						..Dot_red.." Does not proc on pushes.",
			ru = COLORS_KWords_ru.Staggerr_rgb_ru.." врага с шансом в "..COLORS_Numbers.chnc_var_rgb.." может наложить эффект "..COLORS_KWords_ru.Electrocution_rgb_ru.." на врага. Восстанавливается "..COLORS_Numbers.cd_var_rgb.." секунды. "
				..Dot_red.." Не срабатывает при толчках.", -- Подавляющая сила
			-- fr = "Faire "..COLORS_KWords_fr.Staggering_rgb_fr.." un ennemie à "..COLORS_Numbers.chnc_var_rgb.." de chance de l'"..COLORS_KWords_fr.Stun_rgb_fr..". Temps de recharge : "..COLORS_Numbers.cd_var_rgb.." secondes.",
			-- ["zh-tw"] = "使敵人 "..COLORS_KWords_tw.Stagger_rgb_tw.." 時，\n有 "..COLORS_Numbers.chnc_var_rgb.." 的機率使敵人 "..COLORS_KWords_tw.Staggering_rgb_tw .." 。\n冷卻時間 "..COLORS_Numbers.cd_var_rgb.." 秒。", -- 壓倒性的武力
				-- 電擊錘 -- 5s and 10% | 4.5s and 15% | 4s and 20% | 3.5s and 25%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Stagger_rgb_zh_cn.."敌人时 "..COLORS_Numbers.chnc_var_rgb.." 几率使目标"..COLORS_KWords_zh_cn.Electrocute_rgb_zh_cn.."。\n冷却时间 "..COLORS_Numbers.cd_var_rgb.." 秒。", -- 迅猛之力
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ COUNTERATTACK +]--
		-- Melee Attack Speed (per tier)
		-- Power Falchions, Relic Blade, Shock Mauls and Shield -- 6% | 8% | 10% | 12%
		["loc_attack_speed_on_perfect_block_desc"] = { -- attack_speed: 10%, duration: 5, interval: 8, +colors
			en = COLORS_Numbers.attack_spd_var_rgb.." Attack Speed for "..COLORS_Numbers.dur_var_rgb.." seconds on a Perfect Block. Can only occur once every "..COLORS_Numbers.interval_var_rgb.." seconds. "
				..Dot_red.." Сannot be refreshed during active duration.",
			ru = COLORS_Numbers.attack_spd_var_rgb.." к скорости атаки на "..COLORS_Numbers.dur_var_rgb.." секунд при идеальном блоке. Срабатывает раз в "..COLORS_Numbers.interval_var_rgb.." секунд. "
				..Dot_red.." Нельзя обновить во время действия.", -- Контратака
			-- fr = "Gagnez "..COLORS_Numbers.attack_spd_var_rgb.." de Vitesse d'attaque pendant "..COLORS_Numbers.dur_var_rgb.." secondes lors d'un blocage parfait. Ne peux se produire que toute les "..COLORS_Numbers.interval_var_rgb.." secondes.",
			-- ["zh-tw"] = "完美格擋時，\n獲得 "..COLORS_Numbers.attack_spd_var_rgb.." 的攻擊速度，持續 "..COLORS_Numbers.dur_var_rgb.." 秒。\n每 "..COLORS_Numbers.interval_var_rgb.." 秒觸發一次", -- 反擊
				-- 上古神刃 -- 4% | 6% | 8% | 10%
			-- ["zh-cn"] = "完美格挡时 "..COLORS_Numbers.attack_spd_var_rgb.." 攻击速度，持续 "..COLORS_Numbers.dur_var_rgb.." 秒。\n每 "..COLORS_Numbers.interval_var_rgb.." 秒只能触发一次。", -- 反击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ CRANIAL GROUNDING +]--
		-- Overheat Cost Reduction and Finesse Bonus per stack (per tier)
		-- Power Falchions, Relic Blade -- 3% and 1% | 4% and 2% | 5%and 3% | 6% and 4% (up to ~26.6% and +20%)
		["loc_chained_weakspot_hits_increase_finesse_and_reduce_overheat_desc"] = { -- buildup_amount: 6%, damage: 4%, duration: 3 , stacks: 5, s->seconds, +colors
			en = COLORS_Numbers.buildup_var_rgb.." "..COLORS_KWords.Heat_rgb.." buildup and "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb.." for "..COLORS_Numbers.dur_var_rgb.." seconds on chained "..COLORS_KWords.Weakspothits_rgb..". Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..PHRS.Can_be_refr,
			ru = COLORS_Numbers.buildup_var_rgb.." к набору "..COLORS_KWords_ru.Heat_rgb_ru.." и "..COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." на "..COLORS_Numbers.dur_var_rgb.." секунды при серии ударов в "..COLORS_KWords_ru.Weakspot_rgb_ru..". Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..PHRS.Can_be_refr_ru, -- Черепное заземление
			-- fr = "Réduit la génération de "..COLORS_KWords_fr.Heat_rgb_fr.." de "..COLORS_Numbers.buildup_var_rgb.." et augmente les "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." de "..COLORS_Numbers.dmg_var_rgb.." pendant "..COLORS_Numbers.dur_var_rgb.." secondes lors de "..COLORS_KWords_fr.Weakspothit_rgb_fr.." répétés. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "連續 "..COLORS_KWords_tw.Weakspothits_rgb_tw.." 時 "..COLORS_Numbers.buildup_var_rgb.." "..COLORS_KWords_tw.Heat_rgb_tw.." ，\n且 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.."，\n持續 "..COLORS_Numbers.dur_var_rgb.." 秒，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 顱骨落地
				-- 上古神刃 -- 3% and 1% | 4% and 2% | 5%and 3% | 6% and 4% (up to ~26.6% and +20%)
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时 \n"..COLORS_Numbers.buildup_var_rgb.." "..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."积累，同时 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Finesse_dmg_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.dur_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Fns_note_rgb_zh_cn, - 人头落地
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
-- !!! Removed "+". Fix in the Enhanced_Descriptions.lua file !!! --
		--[+ OVERLOAD +]--
		-- Overheat Amount Removed (per tier)
		-- Power Falchions, Relic Blade -- 10% | 15% | 20% | 25%
		["loc_explosion_on_overheat_lockout_desc"] = { -- overheat_reduction: 25%, +colors
			en = COLORS_Numbers.overheat_red_var_rgb.." "..COLORS_KWords.Heat_rgb.." is reduced immediately upon Lockout, and you cause an Explosion around you.",
			ru = COLORS_Numbers.overheat_red_var_rgb.." "..COLORS_KWords_ru.Heat_rgb_ru.." немедленно сбрасывается при полном перегреве.\nТакже происходит небольшой взрыв, который наносит малый "..COLORS_KWords_ru.Dmg_rgb_ru.." и слегка "..COLORS_KWords_ru.Staggers_e_rgb_ru.." врагов.", -- Перегрузка
			-- fr = "Lorsque vous entrez en état de Verouillage, vous produisez une Explosion autour de vous et réduisez immédiatement la "..COLORS_KWords_fr.Heat_rgb_fr.." de "..COLORS_Numbers.overheat_red_var_rgb..".",
			-- ["zh-tw"] = "進入鎖定狀態時，產生爆炸，\n並立即降低 "..COLORS_KWords_tw.Heat_rgb_tw.." "..COLORS_Numbers.overheat_red_var_rgb.." 。", -- 超載
				-- 上古神刃 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."达到 "..COLORS_Numbers.pc_100_rgb.." 并进入锁定状态时，\n在周身范围引发一次爆炸，\n并立刻减少 "..COLORS_Numbers.overheat_red_var_rgb.." "..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."。", -- 过载
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ ENERGY LEAKAGE +]--
		-- Power per stack (per tier)
		-- Power Falchions, Relic Blades -- 1.5% | 2% | 3% | 4% (up to +20%)
		["loc_power_bonus_scaled_on_heat_desc"] = { -- amount: 4%, +colors
			en = "Up to "..COLORS_Numbers.amount_var_rgb.." "..COLORS_KWords.Strength_rgb..", scaled on "..COLORS_KWords.Heat_rgb..".\n"
				..NTS.Pwr_note_rgb,
			ru = "До "..COLORS_Numbers.amount_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru..", в зависимости от "..COLORS_KWords_ru.Heat_rgb_ru..". "
				..NTS.Pwr_note_rgb_ru, -- Утечка энергии
			-- fr = "Augmente la "..COLORS_KWords_fr.Strength_rgb_fr.." jusqu'à "..COLORS_Numbers.amount_var_rgb..", en fonction de la "..COLORS_KWords_fr.Heat_rgb_fr.."."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "依據當前 "..COLORS_KWords_tw.Heat_rgb_tw.." ，最多獲得 "..COLORS_Numbers.amount_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 能量洩漏
				-- 上古神刃 -- 1.5% | 2% | 3% | 4% (up to +20%)
			-- ["zh-cn"] = "随"..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."增长叠加层数，\n每增长 "..COLORS_Numbers.pc_20_rgb.."，"..COLORS_Numbers.amount_var_rgb.." "..COLORS_KWords_zh_cn.Power_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 能量泄露
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ HEATSINK +]--
		-- Overheat Amount Removed (per tier)
		-- Power Falchions, Relic Blades -- 4% | 6% | 8% | 10%
		["loc_reduce_fixed_overheat_amount_desc"] = { -- amount: 10%, time: 3, s->seconds, +colors
			en = COLORS_Numbers.n_minus_rgb..COLORS_Numbers.amount_var_rgb.." "..COLORS_KWords.Heat_rgb.." over "..COLORS_Numbers.time_var_rgb.." seconds on "..COLORS_KWords.Weakspot_rgb.." or "..COLORS_KWords.Critical_rgb.." Kills. "
				..PHRS.Can_be_refr,
			ru = COLORS_Numbers.n_minus_rgb..COLORS_Numbers.amount_var_rgb.." "..COLORS_KWords_ru.Heat_rgb_ru.." за "..COLORS_Numbers.time_var_rgb.." секунды после убийств "..COLORS_KWords_ru.Crit_hits_rgb_ru.." или убийств в "..COLORS_KWords_ru.Weakspot_rgb_ru..".\n"
				..PHRS.Can_be_refr_ru, -- Теплоотвод
			-- fr = "Les éliminations sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." et "..COLORS_KWords_fr.Crit_hits_rgb_fr.." réduisent la "..COLORS_KWords_fr.Heat_rgb_fr.." de "..COLORS_Numbers.amount_var_rgb.." sur "..COLORS_Numbers.time_var_rgb.." secondes.",
			-- ["zh-tw"] = COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 和 "..COLORS_KWords_tw.Crit_k_rgb_tw.." ， \n在 "..COLORS_Numbers.time_var_rgb.." 秒內 "..COLORS_KWords_tw.Heat_rgb_tw.." 減少 "..COLORS_Numbers.amount_var_rgb, -- 散熱器 +]--
				-- 上古神刃 -- 4% | 6% | 8% | 10%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Weakspothits_k_rgb_zh_cn.."和"..COLORS_KWords_zh_cn.Crit_hits_k_rgb_zh_cn.."时，\n在 "..COLORS_Numbers.time_var_rgb.." 秒内减少"..COLORS_Numbers.amount_var_rgb.." "..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."。", -- 散热器
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SYPHON +]--
		-- Max Toughness Percentage (per tier)
		-- Relic Blade -- 10% | 12% | 14% | 16%
		["loc_trait_bespoke_regain_toughness_on_multiple_hits_by_weapon_special_desc"] = { -- toughness: 16%, +colors
			en = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." regains on hitting at least "..COLORS_Numbers.n_3_rgb.." enemies with an attack while weapon Special is active. "
				..PHRS.Dont_intw_coher_tghn,
			ru = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при попадании по "..COLORS_Numbers.n_3_rgb.." или более врагам при активированной специальной атаке.\n"
				..PHRS.Dont_intw_coher_tghn_ru, -- Выкачивание
			-- fr = "Toucher au moins "..COLORS_Numbers.n_3_rgb.." ennemis avec une attaque lorsque la forme Spéciale de l'arme est active, restaure "..COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr..".",
			-- ["zh-tw"] = "在武器充能期間，\n一次攻擊命中至少 "..COLORS_Numbers.n_3_rgb.." 個敵人時，\n"..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.." 。", -- 虹吸
				-- 上古神刃 -- 10% | 12% | 14% | 16%
			-- ["zh-cn"] = "武器充能期间，\n命中至少 "..COLORS_Numbers.n_3_rgb.." 名敌人时，"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。", -- 虹吸
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ ENERGY TRANSFER +]--	04.10.2025
		-- Overheat Cost Reduction and Increased Dissipation (per tier)
		-- Power Falchions, Relic Blades -- 16% and 3% | 18% and 4% | 20% and 5% | 22% and 6%
		["loc_slower_heat_buildup_on_perfect_block_desc"] = { -- heat_reduction: 20%, heat_dissipation: 5%, time: 5, interval: 8, +colors
			en = COLORS_Numbers.heat_red_var_rgb.." "..COLORS_KWords.Heat_rgb.." buildup and "..COLORS_Numbers.heat_diss_var_rgb.." "..COLORS_KWords.Heat_rgb.." dissipation for "..COLORS_Numbers.time_var_rgb.." seconds on a Perfect Block. Can only occur once every "..COLORS_Numbers.interval_var_rgb.." seconds.",
			ru = COLORS_Numbers.heat_red_var_rgb.." к набору "..COLORS_KWords_ru.Heat_rgb_ru.." и "..COLORS_Numbers.heat_diss_var_rgb.." к рассеиванию "..COLORS_KWords_ru.Heat_rgb_ru.." в течение "..COLORS_Numbers.time_var_rgb.." секунд при идеальном блоке. Срабатывает раз в "..COLORS_Numbers.interval_var_rgb.." секунд.", -- Передача энергии
			-- fr = "Réduit la génération de "..COLORS_KWords_fr.Heat_rgb_fr.." de "..COLORS_Numbers.heat_red_var_rgb.." et augmente la dissipation de "..COLORS_KWords_fr.Heat_rgb_fr.." de "..COLORS_Numbers.heat_diss_var_rgb.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un blocage parfait. Ne peux se produire que toute les "..COLORS_Numbers.interval_var_rgb.." secondes.",
			-- ["zh-tw"] = "完美格擋時 "..COLORS_Numbers.heat_red_var_rgb.." "..COLORS_KWords_tw.Heat_rgb_tw.." ，\n並 "..COLORS_Numbers.heat_diss_var_rgb.." "..COLORS_KWords_tw.Heat_diss_rgb_tw.." ，持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n此效果每 "..COLORS_Numbers.interval_var_rgb.." 秒最多觸發一次。", -- 能量轉換
				-- 上古神刃 -- 14% and 2% | 16% and 3% | 18% and 4% | 20% and 5%
			-- ["zh-cn"] = "完美格挡时"..COLORS_Numbers.heat_red_var_rgb.." "..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."积累，\n同时 "..COLORS_Numbers.heat_diss_var_rgb.." "..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."消散，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n每 "..COLORS_Numbers.interval_var_rgb.." 秒只能触发一次。", -- 能量转移
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SHOCK and AWE / SHOCK AND AWE +]--
		-- Enemy Hit Mass Reduction (per tier)
		-- Thunder Hammers -- 30% | 40% | 50% | 60%
		["loc_trait_bespoke_hit_mass_consumption_reduction_on_kill_desc"] = { -- hit_mass: -40%, time: 2, s->seconds, +colors
			en = COLORS_Numbers.hitmass_var_rgb.." Enemy "..COLORS_KWords.Hit_mass_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Kill. "
				..PHRS.Can_be_refr,
			ru = COLORS_Numbers.hitmass_var_rgb.." от "..COLORS_KWords_ru.Hit_masss_rgb_ru.." врагов на "..COLORS_Numbers.time_var_rgb.." секунды после убийства. "
						..PHRS.Can_be_refr_ru, -- Шок и трепет
			-- fr = COLORS_Numbers.hitmass_var_rgb.." "..COLORS_KWords_fr.Hit_mass_rgb_fr.." ennemie pour "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination.",
			-- ["zh-tw"] = "擊殺敵人後，敵人 "..COLORS_KWords_tw.Hit_masss_rgb_tw.." "..COLORS_Numbers.hitmass_var_rgb.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 震懾
				-- 雷鎚 -- 30% | 40% | 50% | 60%
			-- ["zh-cn"] = "击杀敌人时，使敌人 "..COLORS_KWords_zh_cn.Hit_masss_rgb_zh_cn.." 降至"..COLORS_Numbers.hitmass_var_rgb.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn,
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ TAKE A SWING +]--
		-- Weakspot Damage (per tier)
		-- Sapper Shovels -- 45% | 50% | 55% | 60%
		["loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies_desc"] = { -- toughness: +60%, time: 3, +colors
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Pushing Enemies. "
						..PHRS.Can_be_refr..Dot_red.." Does not benefit Ranged attacks.",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при отталкивании врагов.\n"
				..PHRS.Can_be_refr_ru.."\n"
				..Dot_red.." Не влияет на дальнобойные атаки.", -- Размахнись -- руоф Замах
			-- fr = COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une poussée d'ennemis.",
			-- ["zh-tw"] = "推開敵人後 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 揮拳出擊
				-- 工兵鏟 -- 45% | 50% | 55% | 60%
			-- ["zh-cn"] = "推搡敌人 \n"..COLORS_Numbers.dmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 挥拳出击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SUPERCHARGE +]--
		-- Brittleness Stacks (per tier)
		-- Power Maul -- 10 | 12 | 14 | 16
		-- Power Swords -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_armor_rend_on_activated_attacks_desc"] = { -- rend: +4, +colors
			en = COLORS_Numbers.rend_var_rgb.." Stacks of "..COLORS_KWords.Brittleness_rgb.." applied to enemies on Energised Hit.\n"
				..PHRS.Can_be_refr..NTS.Brtl_note_rgb,
			ru = "До "..COLORS_Numbers.rend_var_rgb.." зарядов "..COLORS_KWords_ru.Brittleness_rgb_ru.." применяется к врагу при заряженном ударе.\n"
				..PHRS.Can_be_refr_ru.."\n"
				..NTS.Brtl_note_rgb_ru, -- Суперзаряд
			-- fr = COLORS_Numbers.rend_var_rgb.." cumuls de "..COLORS_KWords_fr.Brittleness_rgb_fr.." lors d'un coup énergisé."..COLORS_KWords_fr.Brtl_note_rgb_fr,
			-- ["zh-tw"] = "特殊攻擊敵人時，\n使其獲得 "..COLORS_Numbers.rend_var_rgb.." 層 "..COLORS_KWords_tw.Brittleness_rgb_tw.."，上限 "..COLORS_Numbers.maxstks_var_rgb.." 層。 "..COLORS_KWords_tw.Brtl_note_rgb_tw, -- 超級充能
				-- 動力錘, 動力劍 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "充能攻击命中时，\n对目标施加 "..COLORS_Numbers.rend_var_rgb.." 层"..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn, -- 超负荷
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ POWER CYCLER +]--
		-- Melee Stagger Strength and Additional Activated Attacks (per tier)
		-- Power Swords -- 2.5% and 1 | 5% and 1 | 7.5% and 2 | 10% and 2
		["loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks_desc"] = { -- extra_hits: +2, stagger: +10%, +colors
			en = COLORS_Numbers.n_plus_rgb..COLORS_Numbers.p_xtrahits_var_rgb.." Extra Chained Energised Hits and\n"..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords.Impact_rgb.." on Energised Hits. "
				..NTS.Impact_note_rgb,
			ru = COLORS_Numbers.n_plus_rgb..COLORS_Numbers.p_xtrahits_var_rgb.." заряда к заряженным ударам и\n"
				..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stgr_var_rgb.." к "..COLORS_KWords_ru.Impact_rgb_ru.." для заряженных ударов. "
				..NTS.Impact_note_rgb_ru, -- Цикл мощности -- руоф Цикл силы
			-- fr = COLORS_Numbers.p_xtrahits_var_rgb.." Coups d'énergie en chaîne supplémentaires et "..COLORS_Numbers.stgr_var_rgb.." d'"..COLORS_KWords_fr.Impact_rgb_fr.." lors d'un coup énergisé.",
			-- ["zh-tw"] = "特殊啟動攻擊時 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_tw.Impact_rgb_tw.." ，\n並獲得 "..COLORS_Numbers.p_xtrahits_var_rgb.." 次額外充能攻擊次數。", -- 能量循環
				-- 動力劍 -- 5% | 10% | 15% | 20%
			-- ["zh-cn"] = "武器充能期间 "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."，\n充能连锁攻击时 "..COLORS_Numbers.p_xtrahits_var_rgb.." 额外充能攻击次数。", -- 能量循环
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SUNDER +]--
		-- Energized Heavy Melee Attack Damage (per tier)
		-- Power Swords -- 5% | 10% | 15% | 20%
		["loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks_and_heavy_damage_desc"] = { -- heavy_damage: +20%, +colors
			en = "On Energised Attacks:\n"
				..COLORS_Numbers.dmghvy_var_rgb.." Heavy Melee Attack "..COLORS_KWords.Damage_rgb..",\n"
				..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_75_rgb.." enemy "..COLORS_KWords.Hit_mass_rgb.." which increases "..COLORS_KWords.Cleave_rgb..".",
			ru = "Заряженные атаки получают:\n"
				..COLORS_Numbers.dmghvy_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." от тяжёлых атак и\n"
				..COLORS_Numbers.pc_75_rgb.." игнорирования "..COLORS_KWords_ru.Hit_masss_rgb_ru.." врага, что увеличивает "..COLORS_KWords_ru.Cleaving_rgb_ru..".", -- Сокрушение -- руоф Сандер
			-- fr = "Lors d'un coup énergisé, augmente le "..COLORS_KWords_fr.Cleave_rgb_fr.." et les "..COLORS_KWords_fr.Damage_rgb_fr.." des attaques puissantes de mélée de "..COLORS_Numbers.dmghvy_var_rgb..".",
			-- ["zh-tw"] = "充能攻擊時 "..COLORS_KWords_tw.Damage_s_rgb_tw.." "..COLORS_Numbers.dmghvy_var_rgb.."，\n並強化 "..COLORS_KWords_tw.Cleaving_rgb_tw.." 。", -- 破甲
				-- 動力劍 -- 5% | 10% | 15% | 20%
			-- ["zh-cn"] = "充能攻击 "..COLORS_Numbers.dmghvy_var_rgb.." 近战重攻击"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."，\n同时无视装甲赋予的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn, -- 切裂
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SUCKER PUNCH +]--
		-- Melee Crit Chance (per tier)
		-- Latrine Shovels -- 7.5% | 10% | 12.5% | 15%
		["loc_trait_bespoke_increased_crit_chance_after_punch_desc"] = { -- crit_chance: +15%, time: 3, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Special Action Hit. "
						..PHRS.Can_be_refr..Dot_red.." Does not benefit Ranged weapons.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при ударе специальной атакой.\n"
				..PHRS.Can_be_refr_ru.."\n"
				..Dot_red.." Не влияет на дальнобойные атаки.", -- Удар исподтишка
			-- fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un coup d'action spéciale.",
			-- ["zh-tw"] = "特殊攻擊命中時 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 突然襲擊
				-- 廁所鏟 -- 7.5% | 10% | 12.5% | 15%
			-- ["zh-cn"] = "特殊攻击命中敌人时 \n"..COLORS_Numbers.crit_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 出其不意
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ CONFIDENT STRIKE +]--
		-- Max Toughness Percentage (per tier)
		-- Arbites Shock Maul, Battle Maul and Shield, Bully Clubs, Cleavers, Latrine Shovels, Pickaxes, Power Maul, Shock Mauls and Shield -- 5% | 6% | 7% | 8%
		["loc_trait_bespoke_toughness_recovery_on_chained_attacks_desc"] = { -- toughness: +8%, +colors
			en = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." on Chained Hit. "
				..Dot_green.." Procs additionally to "..COLORS_KWords.Toughness_rgb.." replenishments from Talents. "..PHRS.Dont_intw_coher_tghn,
			ru = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." при серии ударов.\n"
				..Dot_green.." Срабатывает совместно с восстановлением "..COLORS_KWords_ru.Toughness_rgb_ru.." от талантов. "..PHRS.Dont_intw_coher_tghn_ru, -- Уверенный удар
			-- fr = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'un coup en chaîne.",
			-- ["zh-tw"] = "連續攻擊時 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."。", -- 堅定打擊
				-- 作戰大槌and板盾, 惡棍棒, 砍刀, 廁所鏟, 十字鎬, 動力錘 -- 5% | 6% | 7% | 8%
			-- ["zh-cn"] = "连锁攻击命中时，"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。", -- 自信打击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ NO GUTS, NO GLORY +]--
		-- Duration (per tier)
		-- Bully Clubs -- 2s | 3s | 4s | 5s
		["loc_trait_bespoke_toughness_regen_on_punching_elites_desc"] = { -- toughness: +8%,  time: 5, s->seconds, +colors
			en = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." Regeneration per second for "..COLORS_Numbers.time_var_rgb.." seconds on Elite Special Action Hit.\n"
						..PHRS.Can_be_refr,
			ru = COLORS_Numbers.tghns_var_rgb.." к восстанавлению "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду в течение "..COLORS_Numbers.time_var_rgb.." секунд при попадании специальной атакой по элитному врагу.", -- Нет смелости — нет славы
			-- fr = COLORS_Numbers.tghns_var_rgb.." de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." par seconde pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un coup d'action spéciale sur un élite.",
			-- ["zh-tw"] = "特殊攻擊命中精英時，每秒恢復 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n兩段式恢復，立刻恢復X韌性、持續恢復X韌性。", -- 不入虎穴，焉得虎子
			-- 惡棍棒 -- 2 | 3 | 4 | 5
			-- ["zh-cn"] = "特殊攻击命中精英敌人时 \n"..COLORS_Numbers.tghns_var_rgb.." 连携"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."回复，持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 没有胆量，没有荣耀
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ BASH +]--
		-- Crit Chance (per tier)
		-- Cleavers -- 7.5% | 10% | 12.5% | 15%
		["loc_trait_bespoke_crit_chance_on_push_desc"] = { -- crit_chance: +15%,  time: 3, s->seconds, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Pushing Enemies. "
				..PHRS.Can_be_refr,
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при отталкивании врагов.\n"
				..PHRS.Can_be_refr_ru, -- Удар
			-- fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes en poussant les ennemies.",
			-- ["zh-tw"] = "推開敵人時 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 猛撞
				-- 砍刀 -- 7.5% | 10% | 12.5% | 15%
			-- ["zh-cn"] = "推搡敌人时 "..COLORS_Numbers.crit_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 猛击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ TENDERISER +]--
		-- Power (per tier)
		-- Cleavers -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits_desc"] = { -- power: +15%, +colors
			en = COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords.Strength_rgb.." for your next "..COLORS_Numbers.n_3_rgb.." Melee attacks after Weapon Special attack Hit.\n"
				..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwr_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." для следующих "..COLORS_Numbers.n_3_rgb.." атак ближнего боя после удара специальной атакой. "
				..NTS.Pwr_note_rgb_ru, -- Молот мясника
			-- fr = COLORS_Numbers.pwr_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pour vos "..COLORS_Numbers.n_3_rgb.." prochaines attaques de mélée lors d'une attaque spéciale d'arme réussie."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "特殊攻擊命中敵人時，接下來 "..COLORS_Numbers.n_3_rgb.." 次的近戰攻擊，\n獲得 "..COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 肉槌
				-- 砍刀 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = "特殊攻击命中敌人时，\n下 "..COLORS_Numbers.n_3_rgb.." 次近战攻击 "..COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 大肉锤
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ UNSTOPPABLE FORCE +]--
		-- Fully Charged Melee Damage (per tier)
		-- Cleavers -- 2.5% | 5% | 7.5% | 10%
		["loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack_desc"] = { -- damage: 10%, +colors
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." to Fully Charged Heavy Attacks. They also ignore Enemy "..COLORS_KWords.Hit_mass_rgb..".",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." для полностью заряженных тяжёлых атак. Они также игнорируют "..COLORS_KWords_ru.Hit_mass_rgb_ru.." врага.", -- Неудержимая сила
			-- fr = COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." pour les attaques puissantes pleinement chargées, elles ignorent également le "..COLORS_KWords_fr.Hit_mass_rgb_fr.." des ennemies.",
			-- ["zh-tw"] = "完全蓄力的重攻擊 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."，\n並無視敵人的 "..COLORS_KWords_tw.Hit_mass_rgb_tw.."。", -- 勢不可擋
				-- 砍刀 -- 2.5% | 5% | 7.5% | 10%
			-- ["zh-cn"] = "完全蓄力的重攻击 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.." 同时无视装甲赋予的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn, -- 势不可挡
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ TORMENT +]--
		-- Melee Power (per tier)
		-- Pickaxes -- 12% | 16% | 20% | 24%
		["loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"] = { -- power_level: +24%,  time: 3.5, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Weapon Special Hit. "
				..PHRS.Can_be_refr.." "..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при ударе специальной атакой. "
				..PHRS.Can_be_refr_ru..NTS.Pwr_note_rgb_ru, -- Истязание
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une attaque spéciale d'arme réussie."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "特殊攻擊命中敵人時 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 凌遲
				-- 十字鎬 -- 12% | 16% | 20% | 24%
			-- ["zh-cn"] = "特殊攻击命中敌人时 \n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 折磨
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SLOW AND STEADY +]--
		-- Max Toughness Percentage per stack (per tier)
		-- Pickaxes -- 5% | 6% | 7% | 8% (up to 24%)
		["loc_trait_bespoke_toughness_on_hit_based_on_charge_time_desc"] = { -- toughness: 8%, +colors
			en = "Up to "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." recovered based on the charge time of your Heavy Attacks.\n"
						..PHRS.Dont_intw_coher_tghn,
			ru = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при ударе врага тяжёлой атакой, в зависимости от времени заряжания атаки.", -- Медленно, но верно -- руоф Медленный и упорный
			-- fr = "Récupérez "..COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." lorsque vous touchez un ennemie avec une attaque puissante, dépend du temps de charge.",
			-- ["zh-tw"] = "重擊攻擊命中敵人時 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."，\n回復量依據蓄力時間恢復。", -- 緩慢而確實
				-- 十字鎬 -- 5% | 6% | 7% | 8% (up to 24%)
			-- ["zh-cn"] = "随重攻击蓄力时间增加叠加层数，\n命中敌人时，每层使"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。\n最多叠加 "..COLORS_Numbers.n_3_rgb.." 层。", -- 步稳行远
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ POWER SURGE +]--
		-- Explosion Radius Increase (per tier)
		-- Power Maul -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_explosion_on_activated_attacks_on_armor_new_desc"] = { -- explosion_radius: 25%, +colors
			en = COLORS_Numbers.explosion_rad_var_rgb.." Explosion Radius to Special Attacks. Special Attacks on Armored Enemies cause an additional Shockwave.",
			ru = COLORS_Numbers.explosion_rad_var_rgb.." к радиусу взрыва от специальных атак. Специальные атаки по бронированным врагам создают дополнительную ударную волну.", -- Энергетический заряд -- руоф Скачок напряжения
			fr = "Le rayon d'explosion des attaques spéciales augmente de "..COLORS_Numbers.explosion_rad_var_rgb..". Les attaques spéciales sur des ennemies en armure engendrent une onde de choc supplémentaire.",
			["zh-tw"] = "特殊攻擊的爆炸半徑 "..COLORS_Numbers.explosion_rad_var_rgb.."。\n對護甲敵人使用特殊攻擊時產生額外的衝擊波。", -- 能量湧動
				-- 動力錘 -- 10% | 15% | 20% | 25%
			["zh-cn"] = COLORS_Numbers.explosion_rad_var_rgb.." 充能攻击爆炸范围。\n充能攻击命中首个目标后，\n命中着甲敌人，额外引发一次爆炸。", -- 能量激增
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ LAST GUARD +]--
		-- Cooldown and Block Cost Reduction (per tier)
		-- Battle Maul and Shield, Shock Mauls and Shield -- 18s and 15% | 15s and 20% | 12s and 25% | 9s and 30%
		["loc_trait_block_break_pushes_new_desc"] = { -- block_cost: -30%, cooldown: 15, +colors
			en = COLORS_Numbers.block_var_rgb.." Block Cost. Pushes back enemies within a "..COLORS_Numbers.n_5_rgb.." meter radius when "..COLORS_KWords.Stamina_rgb.." reaches "..COLORS_Numbers.n_0_rgb.." from Blocking an attack. Cooldown "..COLORS_Numbers.cd_var_rgb.." seconds.",
			ru = COLORS_Numbers.block_var_rgb.." затрат "..COLORS_KWords_ru.Stamina_rgb_ru.." на блок. Вы отталкиваете врагов в радиусе "..COLORS_Numbers.n_5_rgb.." метров, когда уровень "..COLORS_KWords_ru.Stamina_rgb_ru.." достигает "..COLORS_Numbers.n_0_rgb.." при блокировании атак. Восстановление "..COLORS_Numbers.cd_var_rgb.." секунд.", -- Последний страж
			-- fr = COLORS_Numbers.block_var_rgb.." de réduction du coût de blocage. Quand l'"..COLORS_KWords_fr.Stamina_rgb_fr.." de l'Ogryn atteint "..COLORS_Numbers.n_0_rgb.." en bloquant des attaques, il repousse les ennemies dans un rayon de "..COLORS_Numbers.n_5_rgb.." mètres. Temps de recharge : "..COLORS_Numbers.cd_var_rgb.." secondes.",
			-- ["zh-tw"] = "格擋消耗降低 "..COLORS_Numbers.block_var_rgb.."。\n當耐力降至 "..COLORS_Numbers.n_0_rgb.." 並成功格擋攻擊時，\n擊退 "..COLORS_Numbers.n_5_rgb.." 公尺內的敵人。冷卻時間 "..COLORS_Numbers.cd_var_rgb.." 秒。", -- 最後防線
				-- 作戰大槌and板盾 -- 18s and 15% | 15s and 20% | 12s and 25% | 9s and 30%
			-- ["zh-cn"] = COLORS_Numbers.block_var_rgb.." 格挡消耗。格挡期间"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."耗尽时，\n推开 "..COLORS_Numbers.n_5_rgb.." 米内的敌人，冷却时间 "..COLORS_Numbers.cd_var_rgb.." 秒。", -- 最后的卫士
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ OFFENSIVE DEFENCE +]--
		-- Melee Power per stack (per tier)
		-- Battle Maul and Shield, Shock Mauls and Shield -- 4% | 6% | 8% | 10% (up to +50%)
		["loc_trait_damage_bonus_on_block_desc"] = { -- power: +10%, duration: 3.5, stacks: 5, +colors -- ..NTS.Pwr_note_rgb
			en = COLORS_Numbers.pwr_var_rgb.." Melee "..COLORS_KWords.Strength_rgb.." for your next Attack per "..COLORS_KWords.Stamina_rgb.." bar spent while Blocking. Stacks up to "..COLORS_Numbers.stacks_var_rgb.." times. Lasts "..COLORS_Numbers.dur_var_rgb.." seconds per Stack. Each Attack consumes "..COLORS_Numbers.n_1_rgb.." Stack and refreshes the active duration.",
			ru = COLORS_Numbers.pwr_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." следующей атаки ближнего боя на "..COLORS_Numbers.dur_var_rgb.." секунды за каждую полоску "..COLORS_KWords_ru.Stamina_rgb_ru..", потраченную на блок. До "..COLORS_Numbers.stacks_var_rgb.." зарядов. За удар тратится заряд, а время действия обновляется.", -- ..NTS.Pwr_note_rgb_ru -- Контратака -- руоф Активная оборона
			-- fr = "Pour chaque point d'"..COLORS_KWords_fr.Stamina_rgb_fr.." dépensé pour bloquer. Votre prochaine attaque de mélée gagne "..COLORS_Numbers.pwr_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." par cumule et consomme un cumule. Dure "..COLORS_Numbers.dur_var_rgb.." secondes. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "每消耗一格 "..COLORS_KWords_tw.Stamina_rgb_tw.." 格擋時會獲得一層，\n下一次近戰攻擊每層 "..COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n並消耗 "..COLORS_Numbers.n_1_rgb.." 層充能。\n效果持續 "..COLORS_Numbers.dur_var_rgb.." 秒，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 反守為攻
				-- 作戰大槌and板盾 -- 4% | 6% | 8% | 10% (up to +50%)
			-- ["zh-cn"] = "格挡期间，每消耗 "..COLORS_Numbers.n_1_rgb.." "..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.." "..COLORS_Numbers.pwr_var_rgb.." 近战"..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.dur_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 以守为攻
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},


	--[+ RANGED - ДАЛЬНИЙ БОЙ - 远程武器 +]--
		--[+ RAKING FIRE +]--
		-- Flanking Damage (per tier)
		-- Autopistol, Infantry Autoguns, Laspistols -- 32.5% | 35% | 37.5% | 40%
		["loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking_desc"] = { -- damage: +40%, +colors
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." when shooting Enemies in the back.",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." при стрельбе врагам в спину.", -- Стрельба в тыл -- руоф Обстрел
			-- fr = COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." lorsque vous tirez dans le dos des ennemies.",
			-- ["zh-tw"] = "從側翼或背後射擊敵人時 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."。", -- 掃射
				-- 撕裂者自動手槍, 步兵自動槍, 重型雷射手槍 -- 32.5% | 35% | 37.5% | 40%
			-- ["zh-cn"] = "远程背刺攻击 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。", -- 扫射
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ DUMDUM +]--
		-- Close Damage per stack (per tier)
		-- Infantry Autoguns, Laspistols, Recon Lasguns -- 4.5% | 5% | 5.5% | 6% (up to +30%)
		["loc_trait_bespoke_consecutive_hits_increases_close_damage_desc"] = { -- damage: +6%, stacks: 5, +colors
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." to enemies within "..COLORS_Numbers.n_12_5_rgb.." meters on Repeated Hit. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.\n"
				..PHRS.Can_be_refr,
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." на расстоянии до "..COLORS_Numbers.n_12_5_rgb.." метров при повторной атаке. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..PHRS.Can_be_refr_ru, -- Дум-дум -- руоф Дамдам
			-- fr = COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." rapprochés lors d'un coup répété. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "在 "..COLORS_Numbers.n_12_5_rgb.." 公尺內，\n連續命中時 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 達姆彈
				-- 步兵自動槍, 重型雷射手槍, 偵查雷射槍 -- 4.5% | 5% | 5.5% | 6% (up to +30%)
			-- ["zh-cn"] = "反复命中时，对 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人\n"..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 达姆弹
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ HIT and RUN / HIT AND RUN +]--
		-- Duration (per tier)
		-- Braced Autoguns, Combat Shotguns, Double-Barrel Shotgun, Infantry Autoguns, Recon Lasguns -- 0.7s | 0.8s | 0.9s | 1s
		["loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill_desc"] = { -- time: 1, s->second, +colors
			en = "Immune to Ranged Attacks for "..COLORS_Numbers.time_var_rgb.." second after killing an enemy within "..COLORS_Numbers.n_12_5_rgb.." meters.\n"
				..PHRS.Can_be_refr,
			ru = "Иммунитет к дальнобойным атакам на "..COLORS_Numbers.time_var_rgb.." секунду при убийстве врага на расстоянии не более "..COLORS_Numbers.n_12_5_rgb.." метров.\n"
				..PHRS.Can_be_refr_ru, -- Бей и беги
			-- fr = "Immunité contre les attaques à distance pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination à moins de "..COLORS_Numbers.n_12_5_rgb.." mètres.",
			-- ["zh-tw"] = "在 "..COLORS_Numbers.n_12_5_rgb.." 公尺內擊殺敵人時，\n獲得對遠程攻擊的免疫效果，持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 游擊
				-- 槍托自動槍, 戰鬥霰彈槍, 雙管霰彈槍, 步兵自動槍, 偵查雷射槍 -- 0.7 | 0.8 | 0.9 | 1
			-- ["zh-cn"] = "击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时，\n闪避全部远程攻击，持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 边打边跑
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SUSTAINED FIRE +]--
		-- Ranged Damage (per tier)
		-- Autopistol, Electrokinetic Staff, Exterminator Shotguns, Helbore Lasguns, Infantry Autoguns, Recon Lasguns, Stub Revolvers, Voidblast Staff, Voidstrike Staff -- 14% | 16% | 18% | 20%
		["loc_trait_bespoke_followup_shots_ranged_damage_desc"] = { -- damage: +20%, +colors
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." on Second, Third and Fourth shots in a Salvo.",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." для второго, третьего и четвёртого выстрела залпа.", -- Непрерывная стрельба -- руоф Непрерывный огонь
			-- fr = COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." lors des "..COLORS_Numbers.n_2e_rgb..", "..COLORS_Numbers.n_3e_rgb..", "..COLORS_Numbers.n_4e_rgb.." tirs d'une salve.",
			-- ["zh-tw"] = "齊射的第二、三與第四發射擊，\n獲得 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."。", -- 持續射擊
				-- 撕裂者自動手槍, 電流力場法杖, 冥潮雷射槍, 步兵自動槍, 偵查雷射槍, 快拔左輪手槍, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 14% | 16% | 18% | 20%
			-- ["zh-cn"] = "齐射的第二、第三和第四发射击\n"..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。",
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ PUNISHING SALVO +]--
		-- Ranged Weakspot Damage (per tier)
		-- Exterminator Shotguns, Infantry Autoguns, Recon Lasguns -- 35% | 40% | 45% | 50%
		["loc_trait_bespoke_followup_shots_ranged_weakspot_damage_desc"] = { -- damage: +50%, +colors
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb.." on Second, Third and Fourth shots in a Salvo.",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." для второго, третьего и четвёртого выстрела залпа.", -- Карательный залп
			-- fr = COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." lors des "..COLORS_Numbers.n_2e_rgb..", "..COLORS_Numbers.n_3e_rgb..", "..COLORS_Numbers.n_4e_rgb.." tirs d'une salve.",
			-- ["zh-tw"] = "齊射的第二、三與第四發射擊，\n獲得 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.."。", -- 懲罰齊射
				-- 步兵自動槍, 偵查雷射槍 -- 35% | 40% | 45% | 50%
			-- ["zh-cn"] = "齐射的第二、第三和第四发射击\n"..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."。", -- 惩戒齐射
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ FIRE FRENZY +]--
		-- Close Damage per stack (per tier)
		-- Boltgun, Braced Autoguns, Combat Shotguns, Exterminator Shotguns, Twin-Linked Stubbers, Infantry Autoguns, Ripper Guns, Shotpistol and Shield -- 7% | 8% | 9% | 10% (up to +50%)
		["loc_trait_bespoke_increase_close_damage_on_close_kill_desc"] = { -- close_damage: +10%, time: 3.5, stacks: 5, +colors
			en = COLORS_Numbers.dmgcls_var_rgb.." "..COLORS_KWords.Damage_rgb.." to enemies within "..COLORS_Numbers.n_12_5_rgb.." meters for "..COLORS_Numbers.time_var_rgb.." seconds after killing an enemy within "..COLORS_Numbers.n_12_5_rgb.." meters. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..PHRS.Can_be_refr,
			ru = COLORS_Numbers.dmgcls_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам на расстоянии до "..COLORS_Numbers.n_12_5_rgb.." метров на "..COLORS_Numbers.time_var_rgb.." секунды после убийства врага в пределах "..COLORS_Numbers.n_12_5_rgb.." метров. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..PHRS.Can_be_refr_ru, -- Неистовая стрельба -- руоф Огненное неистовство
			-- fr = "Gagnez "..COLORS_Numbers.dmgcls_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." rapprochés pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination à moins de "..COLORS_Numbers.n_12_5_rgb.." mètres. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "在 "..COLORS_Numbers.n_12_5_rgb.." 公尺內擊殺敵人，\n"..COLORS_Numbers.dmgcls_var_rgb.." "..COLORS_KWords_tw.Damage_melee_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 烈火熱焰
			-- 矛頭爆矢槍, 槍托自動槍, 戰鬥霰彈槍, 雙鏈重型機槍, 步兵自動槍, 撕裂槍 -- 7% | 8% | 9% | 10% (up to +50%)
			-- ["zh-cn"] = "击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时 \n对 "..COLORS_Numbers.n_12_5_rgb.." 米内目标 "..COLORS_Numbers.dmgcls_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 疯狂射击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ DEATHSPITTER +]--
		-- Power per stack (per tier) and Stack Duration
		-- Braced Autoguns, Combat Shotguns, Exterminator Shotguns, Twin-Linked Stubbers, Infantry Autoguns, Recon Lasguns, Shotpistol and Shield -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 3.5s
		-- Double-Barrel Shotgun -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 5s
		["loc_trait_bespoke_increase_power_on_close_kill_desc"] = { -- power_level: 6.5%, time: 3.5, stacks: 5, +colors, +note
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds after killing an enemy within "..COLORS_Numbers.n_12_5_rgb.." meters. Up to "..COLORS_Numbers.n_5_rgb.." Stacks. "
				..PHRS.Can_be_refr..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при убийстве врага на дистанции до "..COLORS_Numbers.n_12_5_rgb.." метров. До "..COLORS_Numbers.n_5_rgb.." зарядов. "
				..PHRS.Can_be_refr_ru..NTS.Pwr_note_rgb_ru, -- Смертоплюй -- руоф Смертоносец
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination à moins de "..COLORS_Numbers.n_12_5_rgb.." mètres. Se cumule jusqu'à "..COLORS_Numbers.n_5_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "在"..COLORS_Numbers.n_12_5_rgb.." 公尺內擊殺敵人 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒，上限 "..COLORS_Numbers.n_5_rgb.." 層。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 死亡噴吐
			-- 槍托自動槍, 戰鬥霰彈槍, 雙鏈重型機槍, 步兵自動槍, 偵查雷射槍 -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 3.5s
			-- 雙管霰彈槍 -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 5s
			-- ["zh-cn"] = "击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时 \n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 死亡喷吐
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ STRIPPED DOWN +]--
		-- Max Stamina Percentage Threshold (per tier)
		-- Braced Autoguns, Infantry Autoguns, Recon Lasguns -- 80% | 70% | 60% | 50%
		["loc_trait_bespoke_increased_sprint_speed_desc"] = { -- stamina: 50%, +colors
			en = "Gain Ranged Attack Immunity while Sprinting with over "..COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords.Stamina_rgb..".",
			ru = "Вы получаете иммунитет от атак дальнего боя при беге с уровнем "..COLORS_KWords_ru.Stamina_rgb_ru.." превышающим "..COLORS_Numbers.stam_var_rgb..".", -- Сбросить лишнее -- руоф Срез
			-- fr = "Gagnez une immunité contre les attaques à distance lorsque vous courez avec plus de "..COLORS_Numbers.stam_var_rgb.." d'"..COLORS_KWords_fr.Stamina_rgb_fr..".",
			-- ["zh-tw"] = "當衝刺時 "..COLORS_KWords_tw.Stamina_c_r_rgb_tw.." 超過 "..COLORS_Numbers.stam_var_rgb.." 時，\n將獲得對遠程攻擊的免疫效果。", -- 輕裝
			-- 槍托自動槍, 步兵自動槍, 偵查雷射槍 -- 80% | 70% | 60% | 50%
			-- ["zh-cn"] = "以超过 "..COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."疾跑时，\n闪避全部远程攻击。", -- 简装
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SPEEDLOAD +]--
		-- Reload Speed per stack (per tier) and Duration
		-- Autopistol -- 7% | 8% | 9% | 10% (up to +50%) | 2s
		-- Braced Autoguns, Infantry Autoguns -- 7% | 8% | 9% | 10% (up to +50%) | 2.5s 
		-- Double-Barrel Shotgun, Laspistols, Recon Lasguns -- 7% | 8% | 9% | 10% (up to +50%) | 3s
		-- Shotpistol and Shield, Stub Revolvers -- 7% | 8% | 9% | 10% (up to +50%) | 4s
		["loc_trait_bespoke_reload_speed_on_slide_desc"] = { -- reload_speed: 10%, time: 2.5, stacks: 5, +colors, +note
			en = COLORS_Numbers.reload_var_rgb.." Reload Speed for "..COLORS_Numbers.time_var_rgb.." seconds after killing an enemy within "..COLORS_Numbers.n_12_5_rgb.." meters. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..PHRS.Can_be_refr,
			ru = COLORS_Numbers.reload_var_rgb.." к скорости перезарядки на "..COLORS_Numbers.time_var_rgb.." секунды после убийства врага на дистанции до "..COLORS_Numbers.n_12_5_rgb.." метров. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..PHRS.Can_be_refr_ru, -- Быстрая перезарядка -- руоф Скоростная загрузка
			-- fr = COLORS_Numbers.reload_var_rgb.." de vitesse de rechargement pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination à moins de "..COLORS_Numbers.n_12_5_rgb.." mètres. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "在 "..COLORS_Numbers.n_12_5_rgb.." 公尺內擊殺敵人後，\n"..COLORS_Numbers.reload_var_rgb.." 換彈速度，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 快速裝彈
				-- 撕裂者自動手槍 -- 7% | 8% | 9% | 10% (up to +50%) | 2s
				-- 槍托自動槍, 步兵自動槍 -- 7% | 8% | 9% | 10% (up to +50%) | 2.5s
				-- 雙管霰彈槍, 重型雷射手槍, 偵查雷射槍 -- 7% | 8% | 9% | 10% (up to +50%) | 3s
				-- 快拔左輪手槍-- 7% | 8% | 9% | 10% (up to +50%) | 4s
			-- ["zh-cn"] = "击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时\n"..COLORS_Numbers.reload_var_rgb.." 装弹速度，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 速度装弹
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ TERRIFYING BARRAGE +]--
		-- Suppression Amount (per tier)
		-- Autopistol, Boltgun, Braced Autoguns, Combat Shotguns, Double-Barrel Shotgun, Electrokinetic Staff, Twin-Linked Stubbers, Infantry Autoguns, Inferno Staff, Kickback, Ripper Guns, Stub Revolvers, Voidblast Staff, Voidstrike Staff -- 15 | 20 | 25 | 30
		["loc_trait_bespoke_suppression_on_close_kill_desc"] = { -- rewrited, +colors, 5m->5meters
			en = "Suppress Enemies within "..COLORS_Numbers.n_12_5_rgb.." meters after killing an enemy within "..COLORS_Numbers.n_12_5_rgb.." meters away.",
			ru = "Вы подавляете врагов в радиусе "..COLORS_Numbers.n_12_5_rgb.." метров после убийства врага на расстоянии до "..COLORS_Numbers.n_12_5_rgb.." метров.", -- Устрашающий обстрел -- руоф Устрашающий натиск
			-- fr = "Infligez Suppression aux ennemies lors d'une élimination jusqu'à une distance de "..COLORS_Numbers.n_12_5_rgb.." mètres.",
			-- ["zh-tw"] = "在 "..COLORS_Numbers.n_12_5_rgb.." 公尺內擊殺敵人後，\n對 "..COLORS_Numbers.n_8_rgb.." 公尺內敵人造成壓制效果。", -- 恐怖阻擊
				-- 撕裂者自動手槍, 矛頭爆矢槍, 槍托自動槍, 戰鬥霰彈槍, 雙管霰彈槍, 電流力場法杖, 雙鏈重型機槍, 步兵自動槍, 偵查雷射槍, 撕裂槍, 烈焰力場法杖, 反衝者, 快拔左輪手槍, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 15 | 20 | 25 | 30
			-- ["zh-cn"] = "击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时，\n压制 "..COLORS_Numbers.n_12_rgb.." 米内的敌人。", -- 恐怖弹幕
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ ROARING ADVANCE +]--
		-- Alt Fire Move Speed Penalty Reduction per stack (per tier)
		-- Braced Autoguns -- 10% | 15% | 20% | 25% (up to ~76%)
		-- Twin-Linked Stubbers -- 7% | 8% | 9% | 10% (up to ~41%)
		["loc_trait_bespoke_movement_speed_on_continuous_fire_desc"] = { -- movement_speed: 25%, ammo: 5%, stacks: 5, s->seconds, +colors
			en = COLORS_Numbers.movspd_var_rgb.." Movement Speed Reduction for every "..COLORS_Numbers.ammo_var_rgb.." of magazine spent during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.",
			ru = COLORS_Numbers.movspd_var_rgb.." от штрафа снижения скорости движения при прицеливании за каждые "..COLORS_Numbers.ammo_var_rgb.." магазина, потраченных во время непрерывной стрельбы. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.", -- Ревущее наступление
			-- fr = COLORS_Numbers.movspd_var_rgb.." de réduction de vitesse de déplacement pour chaque "..COLORS_Numbers.ammo_var_rgb.." du chargeur utilisé en tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "持續射擊時，每消耗 "..COLORS_Numbers.ammo_var_rgb.." 彈藥，\n"..COLORS_Numbers.movspd_var_rgb.." 的移動速度懲罰，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 咆哮突進
				-- 槍托自動槍 -- 10% | 15% | 20% | 25% (up to ~76%)
				-- 雙鏈重型機槍 -- 7% | 8% | 9% | 10% (up to ~41%)
			-- ["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..COLORS_Numbers.ammo_var_rgb.." 的弹药，\n移动速度惩罚 "..COLORS_Numbers.movspd_var_rgb.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 咆哮推进
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ CEASELESS BARRAGE +]--
		-- Increased Suppression and Damage vs Suppressed (per tier)
		-- Braced Autoguns, Twin-Linked Stubbers -- 12.5% and 4% | 15% and 5% | 17.5% and 6% | 20% and 7% (up to +100% and +35%)
		["loc_trait_bespoke_suppression_on_continuous_fire_desc"] = { -- suppression: +20%, damage_vs_suppressed: +6%, ammo: 2.5%, stacks: 5, +colors
			en = COLORS_Numbers.spprsn_var_rgb.." Suppression and "..COLORS_Numbers.dmgvsprsd_var_rgb.." "..COLORS_KWords.Damage_rgb.." against Suppressed Enemies for every "..COLORS_Numbers.ammo_var_rgb.." of magazine spent during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.",
			ru = COLORS_Numbers.spprsn_var_rgb.." к подавлению и "..COLORS_Numbers.dmgvsprsd_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." по подавленным врагам за каждые "..COLORS_Numbers.ammo_var_rgb.." магазина, потраченных во время непрерывной стрельбы. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.", -- Непрерывный обстрел -- руоф Беспощадный натиск
			-- fr = COLORS_Numbers.spprsn_var_rgb.." de suppression et "..COLORS_Numbers.dmgvsprsd_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemies sous suppression pour chaque "..COLORS_Numbers.ammo_var_rgb.." du chargeur utilisé en tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "持續射擊時，每消耗 "..COLORS_Numbers.ammo_var_rgb.." 彈藥，\n獲得 "..COLORS_Numbers.spprsn_var_rgb.." 壓制效果強度，\n並對被壓制的敵人造成 "..COLORS_Numbers.dmgvsprsd_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 持續阻擊
				-- 槍托自動槍, 雙鏈重型機槍 -- 20% and 6% | 20% and 6% | 20% and 6% | 20% and 6% (up to +100% and +30%)	
			-- ["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..COLORS_Numbers.ammo_var_rgb.." 的弹药，\n"..COLORS_Numbers.spprsn_var_rgb.." 压制效果，同时对被压制的敌人 "..COLORS_Numbers.dmgvsprsd_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 无尽弹幕
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ INSPIRING BARRAGE +]--
		-- Max Toughness Percentage per stack (per tier)
		-- Autopistol, Boltgun, Braced Autoguns, Flamer, Heavy Stubbers, Twin-Linked Stubbers, Ripper Guns -- 1% | 2% | 3% | 4% (up to 20%)
		["loc_trait_bespoke_toughness_on_continuous_fire_desc"] = { -- toughness: +4%, ammo: 10%, stacks: 5, +colors
			en = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." for every "..COLORS_Numbers.ammo_var_rgb.." of magazine spent during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.",
			ru = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." за каждые "..COLORS_Numbers.ammo_var_rgb.." магазина, потраченных во время непрерывной стрельбы. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.", -- Вдохновляющий обстрел -- руоф Вдохновляющий натиск
			-- fr = COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour chaque "..COLORS_Numbers.ammo_var_rgb.." du chargeur utilisé en tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "持續射擊時，每消耗 "..COLORS_Numbers.ammo_var_rgb.." 彈藥，\n恢復 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 振奮彈幕
				-- 撕裂者自動手槍, 矛頭爆矢槍, 槍托自動槍, 淨化噴火器, 戰鬥霰彈槍, 雙鏈重型機槍, 撕裂槍 -- 1% | 2% | 3% | 4% (up to 20%)
			-- ["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..COLORS_Numbers.ammo_var_rgb.." 的弹药，回复"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn..",\n每叠加 "..COLORS_Numbers.n_1_rgb.." 层，"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."回复效果 "..COLORS_Numbers.tghns_var_rgb.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 鼓舞弹幕
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ GHOST +]--
		-- Duration (per tier)
		-- Infantry Lasguns, Laspistols, Vigilant Autoguns -- 0.6s | 0.8s | 1s | 1.2s
		["loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot_desc"] = { -- time: 1.2, +colors
			en = "Immune to Ranged Attacks for "..COLORS_Numbers.time_var_rgb.." seconds on "..COLORS_KWords.Weakspothit_rgb..". "
				..PHRS.Can_be_refr,
			ru = "Иммунитет к дальнобойным атакам на "..COLORS_Numbers.time_var_rgb.." секунды при выстрелах в "..COLORS_KWords_ru.Weakspot_rgb_ru..". "
				..PHRS.Can_be_refr_ru, -- Призрак
			-- fr = "Immunité contre les attaques à distance pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr..".",
			-- ["zh-tw"] = "命中 "..COLORS_KWords_tw.Weakspothits_rgb_tw.." 時，\n獲得對遠程攻擊的免疫效果，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 幽靈
				-- 步兵雷射槍, 重型雷射手槍, 機動自動槍 -- 0.6 | 0.8 | 1 | 1.2
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时，\n闪避全部远程攻击，持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 鬼魂
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SURGICAL +]--
		-- Stack Interval (per tier)
		-- Boltgun, Heavy Stubbers, Kickback, Vigilant Autoguns -- 0.35s | 0.3s | 0.25s | 0.2s
		-- Bolt Pistol, Helbore Lasguns, Stub Revolvers -- 0.45s | 0.4s | 0.35s | 0.3s
		["loc_trait_bespoke_crit_chance_based_on_aim_time_desc"] = { -- crit_chance: +10%, time: 0.2, stacks: 10, +colors, second->seconds
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for every "..COLORS_Numbers.time_var_rgb.." seconds while aiming. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. Discharges all Stacks upon firing.\n"
				..Dot_nc.." Removes all Stacks when leaving alt fire mode.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." каждые "..COLORS_Numbers.time_var_rgb.." секунды пока вы целитесь во врагов. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. Все заряды сбрасываются при стрельбе или при выходе из режима прицеливания.", -- Снайперская точность -- руоф Зоркость
			-- fr = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_fr.Crit_chance_rgb_fr.." chaque fois de vous passez "..COLORS_Numbers.time_var_rgb.." secondes à viser. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. Tous les cumuls sont déchargés lorsque vous tirez.",
			-- ["zh-tw"] = "持續瞄準時，\n每 "..COLORS_Numbers.time_var_rgb.." 秒 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層，射擊後將重置所有層數。", -- 精確打擊
				-- 矛頭爆矢槍, 反衝者, 機動自動槍 -- 0.35s | 0.3s | 0.25s | 0.2s
				-- 快拔左輪手槍, 爆彈手槍, 冥潮雷射槍 -- 0.45s | 0.4s | 0.35s | 0.3s
			-- ["zh-cn"] = "瞄准期间，每 "..COLORS_Numbers.time_var_rgb.." 秒 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层，射击后清空所有层数。", -- 外科手术
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ CRUCIAN ROULETTE +]--
		-- Crit Chance per Missing Round (per tier)
		-- Stub Revolvers -- 4.5% | 5% | 5.5% | 6%
		-- Vigilant Autoguns -- 0.45% | 0.5% | 0.55% | 0.6%
		["loc_trait_bespoke_crit_chance_based_on_ammo_left_desc"] = { -- crit_chance: +0.6%, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for each expended round in your weapon. Resets on reload.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." за каждый израсходованный патрон в вашем оружии. Сбрасывается при перезарядке.", -- Круцианская рулетка
			-- fr = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pour chaque munition utilisée dans votre arme. Se réinitialise lorsque vous rechargez.",
			-- ["zh-tw"] = "每消耗一發彈藥 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."。\n在重新裝填時重置效果。", -- 克魯錫安輪盤
				-- 快拔左輪手槍 -- 4.5% | 5% | 5.5% | 6%
			-- ["zh-cn"] = "弹匣每缺失一枚弹药 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。", -- 轮盘赌
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ DEADLY ACCURATE +]--
		-- Crit Weakspot Damage (per tier)
		-- Bolt Pistol, Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns -- 70% | 80% | 90% | 100%
		["loc_trait_bespoke_crit_weakspot_finesse_desc"] = { -- crit_weakspot_damage: +100%, +colors
			en = COLORS_Numbers.critwkspdmg_var_rgb.." "..COLORS_KWords.Critical_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb..".",
			ru = COLORS_Numbers.critwkspdmg_var_rgb.." к "..COLORS_KWords_ru.Crit_rgb_ru.." "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru..".", -- Смертоностная точность
			-- fr = COLORS_Numbers.critwkspdmg_var_rgb.." de "..COLORS_KWords_fr.Crit_dmg_r_rgb_fr.." sur un "..COLORS_KWords_fr.Weakspothit_rgb_fr..".",
			-- ["zh-tw"] = COLORS_KWords_tw.Crit_rgb_tw.." 時 "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.." "..COLORS_Numbers.critwkspdmg_var_rgb.."。", -- 致命精準
				-- 爆彈手槍, 步兵雷射槍, 機動自動槍 -- 70% | 80% | 90% | 100%
			-- ["zh-cn"] = COLORS_Numbers.critwkspdmg_var_rgb.." "..COLORS_KWords_zh_cn.Crit_rgb_zh_cn..""..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."。", -- 致命精准
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ NO RESPITE +]--
		-- Stagger Count Damage (per tier)
		-- Combat Shotguns, Helbore Lasguns, Infantry Lasguns, Shotpistol and Shield, Vigilant Autoguns -- 14% | 16% | 18% | 20% (up to +140%)
		["loc_trait_bespoke_stagger_count_bonus_damage_desc"] = { -- damage: +20%, +colors
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." on Hit to "..COLORS_KWords.Staggered_rgb.." Enemy. Enemies take increased "..COLORS_KWords.Damage_rgb.." based on the strength of the "..COLORS_KWords.Stagger_rgb.." effect applied to them. Stacks "..COLORS_Numbers.n_7_rgb.." times.",
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." "..COLORS_KWords_ru.Stuns_rgb_ru.." врагам. Враги получают повышенный "..COLORS_KWords_ru.Dmg_rgb_ru.." в зависимости от мощности эффекта "..COLORS_KWords_ru.Staggering_rgb_ru..", наложенного на них. Суммируется "..COLORS_Numbers.n_7_rgb.." раз.", -- Без передышки -- руоф Нет отдыху
			-- fr = "Jusqu'à "..COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." lors d'un coup sur un ennemi qui "..COLORS_KWords_fr.Staggered_rgb_fr..". Le plus l'ennemie "..COLORS_KWords_fr.Staggered_rgb_fr.." le plus il reçoit de "..COLORS_KWords_fr.Damage_rgb_fr..".",
			-- ["zh-tw"] = "攻擊 "..COLORS_KWords_tw.Stuns_rgb_tw.." 敵人 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."。\n依據效果強度，你對其 "..COLORS_KWords_tw.Damage_rgb_tw.." 越高。", -- 刻不容緩
				-- 戰鬥霰彈槍, 冥潮雷射槍, 步兵雷射槍, 機動自動槍 -- 14% | 16% | 18% | 20% (up to +140%)
			-- ["zh-cn"] = "命中"..COLORS_KWords_zh_cn.Staggered_rgb_zh_cn.."敌人时，\n随敌人"..COLORS_KWords_zh_cn.Stagger_rgb_zh_cn.."程度增长叠加层数，\n每层 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。最多叠加"..COLORS_Numbers.n_7_rgb.." 层。", -- 不容喘息
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ OPENING SALVO +]--
		-- Ranged Power (per tier)
		-- Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns -- 14% | 16% | 18% | 20%
		["loc_trait_bespoke_power_bonus_on_first_shot_desc"] = { -- power_level: +20%, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." on Salvo's First shot.\n"
				..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." для первого выстрела залпа. "
				..NTS.Pwr_note_rgb_ru, -- Первый выстрел залпа -- руоф Открывающий залп
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." lors du premier tir d'une salve."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "齊射的第一發射擊 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 開啟齊射
				-- 步兵雷射槍, 機動自動槍 -- 14% | 16% | 18% | 20%
			-- ["zh-cn"] = "齐射的第一发射击 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 开场白
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ HEADHUNTER +]--
		-- Crit Chance per stack (per tier)
		-- Heavy Stubbers, Infantry Lasguns, Vigilant Autoguns -- 14% | 16% | 18% | 20% (up to +100%)
		-- Recon Lasguns -- 3.5% | 4% | 4.5% | 5% (up to +20%)
		["loc_trait_bespoke_weakspot_stacking_crit_chance_desc"] = { -- crit_chance: +20%, stacks: 5, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." on "..COLORS_KWords.Weakspothit_rgb.." until your next "..COLORS_KWords.Crit_hit_rgb..". Stacks "..COLORS_Numbers.stacks_var_rgb.." times.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." при выстрелах в "..COLORS_KWords_ru.Weakspot_rgb_ru..". Расходуется при следующем "..COLORS_KWords_ru.Crit_chance_r_rgb_ru..". Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.", -- Охотник за головами
			-- fr = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_fr.Crit_chance_rgb_fr.." sur un "..COLORS_KWords_fr.Weakspothit_rgb_fr.." jusqu'à votre prochain "..COLORS_KWords_fr.Crit_hit_rgb_fr..". Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = COLORS_KWords_tw.Weakspothits_rgb_tw.." "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n在下一次 "..COLORS_KWords_tw.Crit_rgb_tw.." 時消耗一層，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 獵頭者
				-- 步兵雷射槍, 機動自動槍 -- 14% | 16% | 18% | 20% (up to +100%)
				-- 偵查雷射槍 -- 3.5% | 4% | 4.5% | 5% (up to +20%)
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层，\n"..COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."后清空所有叠加层数。", -- 猎颅者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ BETWEEN THE EYES +]--
		-- Duration (per tier)
		-- Infantry Lasguns, Laspistols, Vigilant Autoguns -- 2.4s | 2.8s | 3.2s | 3.6s
		["loc_trait_bespoke_suppression_negation_on_weakspot_desc"] = { -- time: 3.6, s->seconds, +colors
			en = "Gain Suppression Immunity for "..COLORS_Numbers.time_var_rgb.." seconds on "..COLORS_KWords.Weakspothit_rgb..". "
				..PHRS.Can_be_refr,
			ru = "Вы получаете иммунитет к подавлению на "..COLORS_Numbers.time_var_rgb.." секунды при выстрелах в "..COLORS_KWords_ru.Weakspot_rgb_ru..". "
				..PHRS.Can_be_refr_ru, -- Промеж глаз
			-- fr = "Gagnez une immunité à la suppression pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr..".",
			-- ["zh-tw"] = COLORS_KWords_tw.Weakspothits_rgb_tw.." 免疫壓制效果，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 正中眉心
				-- 步兵雷射槍, 重型雷射手槍, 機動自動槍 -- 2.4 | 2.8 | 3.2 | 3.6
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时免疫压制，持续"..COLORS_Numbers.time_var_rgb.." 秒。", -- 正中眉心
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ BLAZE AWAY +]--
		-- Power per stack (per tier)
		-- Autopistol, Flamer, Heavy Stubbers, Twin-Linked Stubbers, Ripper Guns -- 5% | 6% | 7% | 8% (up to +40%)
		["loc_trait_bespoke_power_bonus_on_continuous_fire_desc"] = { -- power_level: +8%, ammo: 10%, stacks: 5, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for every "..COLORS_Numbers.ammo_var_rgb.." of magazine spent during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." за каждые "..COLORS_Numbers.ammo_var_rgb.." магазина, потраченных во время непрерывной стрельбы. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..NTS.Pwr_note_rgb_ru, -- Стрельба без устали -- руоф Энтузиазм
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pour chaque "..COLORS_Numbers.ammo_var_rgb.."  du chargeur utilisé en tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "持續射擊時，每消耗 "..COLORS_Numbers.ammo_var_rgb.." 彈藥，\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 連續發射
				-- 撕裂者自動手槍, 淨化噴火器, 雙鏈重型機槍, 撕裂槍, 擲彈兵臂鎧, 烈焰力場法杖, 反衝者, 電漿槍, 震盪槍 -- 5% | 6% | 7% | 8% (up to +40%)
			-- ["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..COLORS_Numbers.ammo_var_rgb.." 的弹药，\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 连续射击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ POWDERBURN +]--
		-- Damage vs Suppressed and Suppression and Reduced Recoil (per tier)
		-- Autopistol, Exterminator Shotguns -- 14% and 28% and -28% | 16% and 32% and -32% | 18% and 36% and -36% | 20% and 40% and -40%
		["loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills_desc"] = { -- damage: +20%, suppression: +40%, recoil_reduction: -40%, +colors
			en = COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." against Suppressed Enemies, "..COLORS_Numbers.spprsn_var_rgb.." Suppression and "..COLORS_Numbers.recoil_red_var_rgb.." Recoil on killing enemies within "..COLORS_Numbers.n_12_5_rgb.." meters. "
				..PHRS.Can_be_refr,
			ru = COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." против подавленных врагов, "..COLORS_Numbers.spprsn_var_rgb.." к подавлению и "..COLORS_Numbers.recoil_red_var_rgb.." к отдаче при убийстве врагов на расстоянии до "..COLORS_Numbers.n_12_5_rgb.." метров.\n"
				..PHRS.Can_be_refr_ru, -- Пороховой ожог
			-- fr = COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemies subissant Suppression, "..COLORS_Numbers.spprsn_var_rgb.." de suppression et "..COLORS_Numbers.recoil_red_var_rgb.." de recul jusqu'à une distance de "..COLORS_Numbers.n_12_5_rgb.." mètres.",
			-- ["zh-tw"] = COLORS_Numbers.n_12_5_rgb.." 公尺內，\n對被壓制的敵人 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."，\n"..COLORS_Numbers.spprsn_var_rgb.." 壓制強度，降低 "..COLORS_Numbers.recoil_red_var_rgb.." 後座力。", -- 火藥灼傷
				-- 撕裂者自動手槍 -- 14% and 28% and -28% | 16% and 32% and -32% | 18% and 36% and -36% | 20% and 40% and -40%
			-- ["zh-cn"] = "对被压制敌人 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。\n击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时\n"..COLORS_Numbers.spprsn_var_rgb.." 压制效果，同时 "..COLORS_Numbers.recoil_red_var_rgb.." 后坐力。", -- 火药燃烧
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ CAVALCADE +]--
		-- Crit Chance per stack (per tier)
		-- Autopistol, Boltgun, Heavy Stubbers, Ripper Guns -- 3.5% | 4% | 4.5% | 5% (up to +25%)
		["loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire_desc"] = { -- crit_chance: +20%, ammo: 10%, stacks: 5, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for every "..COLORS_Numbers.ammo_var_rgb.." of magazine spent during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." за каждые "..COLORS_Numbers.ammo_var_rgb.." магазина, потраченных во время непрерывной стрельбы. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.", -- Кавалькада
			-- fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pour chaque "..COLORS_Numbers.ammo_var_rgb.."  du chargeur utilisé en tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "持續射擊時，每消耗 "..COLORS_Numbers.ammo_var_rgb.." 彈藥，\n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 接連不斷
				-- 撕裂者自動手槍, 矛頭爆矢槍, 撕裂槍 -- 3.5% | 4% | 4.5% | 5% (up to +25%)
			-- ["zh-cn"] = "连续射击期间，\n每消耗弹匣容量 "..COLORS_Numbers.ammo_var_rgb.."的弹药，\n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 列队行进
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ PINNING FIRE +]--
		-- Power per stack (per tier)
		-- Autopistol, Boltgun, Heavy Stubbers -- 4.25% | 4.5% | 4.75% | 5% (up to +25%)
		["loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies_desc"] = { -- power_level: +8%, stacks: 5, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for every Enemy you "..COLORS_KWords.Stagger_rgb..". Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..PHRS.Can_be_refr.."\n"
				..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." за каждого "..COLORS_KWords_ru.Stun_rgb_ru.." вами врага. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.\n"
				..PHRS.Can_be_refr_ru.."\n"
				..NTS.Pwr_note_rgb_ru, -- Подавляющий огонь -- руоф Схватывающий огонь
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pour chaque ennemie que vous faites "..COLORS_KWords_fr.Staggering_rgb_fr..". Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "使敵人 "..COLORS_KWords_tw.Stun_rgb_tw.." 時 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 鉗制射擊
				-- 撕裂者自動手槍, 矛頭爆矢槍 -- 4.25% | 4.5% | 4.75% | 5% (up to +25%)
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Stagger_rgb_zh_cn.."敌人时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 火力压制
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ RUN 'N' GUN - RUN AND GUN +]--
		-- Close Damage (per tier) and Spread Reduction
		-- Bolt Pistol, Electrokinetic Staff, Inferno Staff, Kickback, Shotpistol and Shield, Stub Revolvers, Voidblast Staff, Voidstrike Staff -- 6% | 9% | 12% | 15% | -30%
		-- Double-Barrel Shotgun -- 6% | 9% | 12% | 15% | -10%
		["loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats_desc"] = { -- damage_near: +15%, weapon_spread: 30%, +colors
			en = COLORS_Numbers.dmgnr_var_rgb.." "..COLORS_KWords.Damage_rgb.." to enemies within "..COLORS_Numbers.n_12_5_rgb.." meters while Sprinting. "..COLORS_Numbers.weapsprd_var_rgb.." weapon Spread. You can Hipfire with this weapon while Sprinting.",
			ru = COLORS_Numbers.dmgnr_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." по врагам в пределах "..COLORS_Numbers.n_12_5_rgb.." метров от вас пока вы бежите.\n"
				..COLORS_Numbers.weapsprd_var_rgb.." к разбросу оружия. Вы можете с этим оружием вести огонь от бедра на бегу.", -- Стреляй и беги
			-- fr = "Vous pouvez tirer à l'aveugle avec cette arme en courant. "..COLORS_Numbers.dmgnr_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." rapprochés en courant. Réduit également l'angle de tir des armes de "..COLORS_Numbers.weapsprd_var_rgb.." en toute circonstance.",
			-- ["zh-tw"] = "衝刺時可以腰射。\n衝刺期間近距離傷害 "..COLORS_Numbers.dmgnr_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."，\n並 "..COLORS_Numbers.weapsprd_var_rgb.." 武器散布。", -- 連跑帶打
				-- 爆彈手槍, 電流力場法杖, 烈焰力場法杖, 反衝者, 快拔左輪手槍, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 6% | 9% | 12% | 15% | -30%
				-- 雙管霰彈槍 -- 6% | 9% | 12% | 15% | -10%
			-- ["zh-cn"] = "武器散布 "..COLORS_Numbers.weapsprd_var_rgb.."。疾跑时可以腰射。\n对 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人 "..COLORS_Numbers.dmgnr_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。{#color(255, 35, 5)}\n（显示BUG：武器散布数值为 -X%，\n伤害数值为 +X%。）{#reset()", -- 跑步射击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ PUNCTURE +]--
		-- Bleed Stacks (per tier)
		-- Boltgun, Bolt Pistol -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_bleed_on_ranged_desc"] = { -- stacks: 4, +colors
			en = COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_KWords.Bleed_rgb.." applied to enemies on Ranged hits. "
				..Dot_nc.." Up to "..COLORS_Numbers.n_16_rgb.." Stacks. "..PHRS.Refr_dur_stappl..PHRS.Cant_appl_thr_shlds,
			ru = COLORS_Numbers.stacks_var_rgb.." заряда "..COLORS_KWords_ru.Bleed_rgb_ru.." накладывается на врагов при дальнобойных атаках.\n"
				..Dot_nc.." До "..COLORS_Numbers.n_16_rgb.." зарядов. "..PHRS.Refr_dur_stappl_ru.."\n"
				..PHRS.Cant_appl_thr_shlds_ru, -- Прокол
			-- fr = COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." Cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." aux ennemis sur les coups à distance.",
			-- ["zh-tw"] = "遠程攻擊命中敵人時，使其獲得 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.."。\n上限 "..COLORS_Numbers.n_16_rgb.." 層。", -- 出血穿透
				-- 矛頭爆矢槍, 爆彈手槍  -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "远程攻击命中时 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_16_rgb.." 层。", -- 刺穿
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ LETHAL PROXIMITY +]--
		-- Explosion Radius Increase (per tier)
		-- Bolt Pistol -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_close_explosion_desc"] = { -- radius: +25%, +colors
			en = COLORS_Numbers.radius_var_rgb.." Explosion Radius. Point blank shots cause an Explosion. "
				..Dot_green.." This buff is active at all times and also applies to all other explosions.",
			ru = "Выстрелы в упор вызывают взрыв. "..COLORS_Numbers.radius_var_rgb.." к радиусу взрыва. "
				..Dot_green.." Этот эффект активен постоянно и влияет также на все остальные взрывные эффекты от гранат, талантов и оружия.", -- Смертельное сближение -- руоф Смертельная близость
			-- fr = "Les tirs à bout portant provoquent une explosion. Le rayon d'explosion augmente de "..COLORS_Numbers.radius_var_rgb..".",
			-- ["zh-tw"] = "爆炸半徑增加 "..COLORS_Numbers.radius_var_rgb.." 。\n"..COLORS_Numbers.n_12_5_rgb.." 公尺內射擊會引發爆炸。", -- 致命零距離
				-- 爆彈手槍 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = COLORS_Numbers.radius_var_rgb.." 爆炸范围。\n"..COLORS_Numbers.n_5_rgb.." 米内射击也会引发爆炸。", -- 致命距离
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ POINT BLANK +]--
		-- Ranged Crit Chance (per tier) and Duration
		-- Bolt Pistol -- 14% | 16% | 18% | 20% | 3.5s
		-- Stub Revolvers -- 14% | 16% | 18% | 20% | 2.5s
		["loc_trait_bespoke_crit_chance_bonus_on_melee_kills_desc"] = { -- crit_chance: +20%, time: 3.5, +colors
			en = COLORS_Numbers.crit_var_rgb.." Ranged "..COLORS_KWords.Crit_chance_rgb.." after Melee Kill for "..COLORS_Numbers.time_var_rgb.." seconds. "
				..PHRS.Can_be_refr,
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды после убийства в ближнем бою. "
				..PHRS.Can_be_refr_ru, -- В упор
			-- fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." à distance après une élimination avec une arme de mélée pendant "..COLORS_Numbers.time_var_rgb.." secondes.",
			-- ["zh-tw"] = "近戰擊殺後，遠程攻擊 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 近身平射
				-- 爆彈手槍 -- 14% | 16% | 18% | 20% | 3.5s
				-- 快拔左輪手槍 -- 14% | 16% | 18% | 20% | 2.5s
			-- ["zh-cn"] = "近战击杀时 \n"..COLORS_Numbers.crit_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 近身射击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ EXECUTION +]--
		-- Damage vs Staggered (per tier)
		-- Bolt Pistol, Exterminator Shotguns -- 5% |10% | 15% | 20%
		["loc_trait_bespoke_damage_vs_stagger_desc"] = { -- vs_stagger: 20%, +colors
			en = COLORS_Numbers.dmgvsstgr_var_rgb.." "..COLORS_KWords.Damage_rgb.." Bonus vs "..COLORS_KWords.Staggered_rgb.." enemies.",
			ru = COLORS_Numbers.dmgvsstgr_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." против "..COLORS_KWords_ru.Staggered_rgb_ru.." врагов.", -- Казнь
			-- fr = COLORS_Numbers.dmgvsstgr_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." Bonus contre les ennemis qui "..COLORS_KWords_fr.Staggered_rgb_fr..".",
			-- ["zh-tw"] = "攻擊 "..COLORS_KWords_tw.Staggered_rgb_tw.." 敵人 "..COLORS_Numbers.dmgvsstgr_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."。", -- 處決
				-- 爆彈手槍 -- 5% |10% | 15% | 20%
			-- ["zh-cn"] = "对"..COLORS_KWords_zh_cn.Staggered_rgb_zh_cn.."敌人 "..COLORS_Numbers.dmgvsstgr_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。", -- 处决
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ GLORYHUNTER +]--
		-- Max Toughness Percentage (per tier)
		-- Boltgun, Heavy Stubbers -- 10% | 12% | 14% | 16%
		-- Plasma Gun -- 17.5% | 20% | 22.5% | 25%
		-- Bolt Pistol, Stub Revolvers -- 18% | 22% | 26% | 30%
		-- Grenadier Gauntlet, Rumbler -- 20% | 25% | 30% | 35%
		["loc_trait_bespoke_toughness_on_elite_kills_desc"] = { -- toughness: +30%, +colors
			en = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." on Elite Kill. "
				..Dot_green.." Can proc multiple times per shot.",
			ru = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." при убийстве элитного врага. "
				..Dot_green.." Может срабатывать несколько раз за выстрел.", -- Охотник за славой
			-- fr = COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une élimination d'élite.",
			-- ["zh-tw"] = "擊殺精英敵人 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."。",-- 榮耀獵手
				-- 矛頭爆矢槍 -- 10% | 12% | 14% | 16%
				-- 電漿槍 -- 17.5% | 20% | 22.5% | 25%
				-- 爆彈手槍, 快拔左輪手槍 -- 18% | 22% | 26% | 30%
				-- 擲彈兵臂鎧 -- 20% | 25% | 30% | 35%
			-- ["zh-cn"] = "击杀精英敌人时"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。", -- 荣耀猎人
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SURGE +]-- loc_trait_bespoke_double_shot_on_primary_crit_and_crit_chance_desc
		-- Ranged Crit Chance (per tier)
		-- Electrokinetic Staff, Voidblast Staff, Voidstrike Staff -- 2% | 3% | 4% | 5%
		["loc_trait_bespoke_double_shot_on_primary_crit_and_crit_chance_desc"] = { -- crit_chance: +5%, value: 2, +colors
			en = COLORS_Numbers.crit_var_rgb.." Ranged "..COLORS_KWords.Crit_chance_rgb..".\n"
				..COLORS_Numbers.value_var_rgb.." Shots on "..COLORS_KWords.Crit_hit_rgb..". "
				..Dot_red.." For Electrokinetic Staff and Voidblast Staff, additional projectiles can only spawn on Primary Attacks.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru..".\n"
				..COLORS_Numbers.value_var_rgb.." снаряда вылетает при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru..". "
				..Dot_red.." У Электрокинетических посохов и посохов Травмы "..COLORS_Numbers.value_var_rgb.." снаряд появляется только от основных атак.", -- Энергетический всплеск -- руоф Импульс
			-- fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." à distance.\n"..COLORS_Numbers.value_var_rgb.." tirs lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." de l'attaque principale (fonctionne sur l'attaque secondaire du Bâton de force \"Assaut du vide\").",
			-- ["zh-tw"] = "遠程攻擊 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.." 。\n當主攻擊 "..COLORS_KWords_tw.Crit_rgb_tw.." 會自動發射 "..COLORS_Numbers.value_var_rgb.." 次。", -- 湧動
				-- 電流力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖(無效) -- 2% | 3% | 4% | 5%
			-- ["zh-cn"] = COLORS_Numbers.crit_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。\n主要攻击"..COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时，发射 "..COLORS_Numbers.value_var_rgb.." 枚射弹。", -- 激涌
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SURGE +]-- DOUBLE! loc_trait_bespoke_double_shot_on_crit_and_crit_chance_desc
		-- Ranged Crit Chance (per tier)
		-- Electrokinetic Staff, Voidblast Staff, Voidstrike Staff -- 2% | 3% | 4% | 5%
		["loc_trait_bespoke_double_shot_on_crit_and_crit_chance_desc"] = { -- crit_chance: +5%, value: 2, +colors
			en = COLORS_Numbers.crit_var_rgb.." Ranged "..COLORS_KWords.Crit_chance_rgb..".\n"
				..COLORS_Numbers.value_var_rgb.." Shots on "..COLORS_KWords.Crit_hit_rgb..". "
				..Dot_red.." For Electrokinetic Staff and Voidblast Staff, additional projectiles can only spawn on Primary Attacks.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru..".\n"
				..COLORS_Numbers.value_var_rgb.." снаряда вылетает при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru..". "
				..Dot_red.." У Электрокинетических посохов и посохов Травмы "..COLORS_Numbers.value_var_rgb.." снаряд появляется только от основных атак.", -- Энергетический всплеск -- руоф Импульс
			-- fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." à distance.\n"..COLORS_Numbers.value_var_rgb.." tirs lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." de l'attaque principale (fonctionne sur l'attaque secondaire du Bâton de force \"Assaut du vide\").",
			-- ["zh-tw"] = "遠程攻擊 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.." 。\n當主攻擊 "..COLORS_KWords_tw.Crit_rgb_tw.." 會自動發射 "..COLORS_Numbers.value_var_rgb.." 次。", -- 湧動
				-- 電流力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖(無效) -- 2% | 3% | 4% | 5%
			-- ["zh-cn"] = COLORS_Numbers.crit_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。\n主要攻击"..COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时，发射 "..COLORS_Numbers.value_var_rgb.." 枚射弹。", -- 激涌
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ WARP FLURRY +]--
		-- Charge Time Reduction per stack (per tier)
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff -- 5.5% | 6.5% | 7.5% | 8.5% (up to 25.5%)
		["loc_trait_bespoke_faster_charge_on_chained_secondary_attacks_desc"] = { -- charge_time: -8.5%, stacks: 3, +colors
			en = COLORS_Numbers.chrgtime_var_rgb.." Charge Time on Chained Secondary Attack. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..Dot_red.." Charge time is unaffected by Attack Speed buffs.",
			ru = COLORS_Numbers.chrgtime_var_rgb.." от времени заряжания вторичной атаки в серии ударов. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раза. "
				..Dot_red.." Усиления скорости атаки не влияют на этот эффект.", -- Варп-шквал
			-- fr = COLORS_Numbers.chrgtime_var_rgb.." de temps de charge lors d'une attaque secondaire. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "連續使用次要攻擊時，\n充能時間 "..COLORS_Numbers.chrgtime_var_rgb.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 亞空間亂舞
				-- 電流力場法杖, 烈焰力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 5.5% | 6.5% | 7.5% | 8.5% (up to 25.5%)
			-- ["zh-cn"] = "连续进行次要攻击时 \n"..COLORS_Numbers.chrgtime_var_rgb.." 蓄力时间。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 亚空间骚动
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ WARP NEXUS +]--
		-- Crit Chance per stack (per tier)
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff -- 3.5% | 4% | 4.5% | 5% (up to +20%)
		["loc_trait_bespoke_increased_crit_chance_scaled_on_peril_desc"] = { -- crit_chance: 5%, crit_chance_max: 20%, +colors
			en = COLORS_Numbers.n_plus_rgb..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." per "..COLORS_Numbers.pc_20_rgb.." "..COLORS_KWords.Peril_rgb..".\n"
				..Dot_nc.." Stacks up to "..COLORS_Numbers.n_4_rgb.." times. Maximum of "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmax_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." at "..COLORS_Numbers.pc_80_rgb.." "..COLORS_KWords.Peril_rgb..".",
			ru = COLORS_Numbers.n_plus_rgb..COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." за каждые "..COLORS_Numbers.pc_20_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru..". "
				..Dot_nc.." Суммируется до "..COLORS_Numbers.n_4_rgb.." раз, вплоть до "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmax_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." при "..COLORS_Numbers.pc_80_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru..".", -- Связь с варпом -- руоф Варп-сектор
			-- fr = "Obtenez entre "..COLORS_Numbers.crit_var_rgb.." et "..COLORS_Numbers.critchmax_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." en fonction de votre niveau de "..COLORS_KWords_fr.Peril_rgb_fr.." actuel.",
			-- ["zh-tw"] = "根據當前的 "..COLORS_KWords_tw.Peril_rgb_tw.." ，\n增加 "..COLORS_Numbers.crit_var_rgb.." 至 "..COLORS_Numbers.critchmax_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.." 。", -- 亞空間樞紐
				-- 電流力場法杖, 烈焰力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 3.5% | 4% | 4.5% | 5% (up to +20%)
			-- ["zh-cn"] = "随"..COLORS_KWords_zh_cn.Peril_rgb_zh_cn.."增长叠加层数，\n每增长 "..COLORS_Numbers.pc_20_rgb.."，"..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_4_rgb.." 层，最高 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmax_var_rgb.."。", -- 亚空间枢纽
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ TRANSFER PERIL +]--
		-- Peril Amount Removed (per tier)
		-- Electrokinetic Staff, Voidblast Staff -- 7% | 8% | 9% | 10%
		-- Voidstrike Staff -- 6.5% | 7% | 7.5% | 8%
		["loc_trait_bespoke_peril_vent_on_weakspot_hit_desc"] = { -- warp_charge: 10%, +colors
			en = COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords.Peril_rgb.." is quelled on "..COLORS_KWords.Weakspothit_rgb..".\n"
				..Dot_green.." Can proc multiple times per shot when "..COLORS_KWords.Cleaving_rgb.." enemy "..COLORS_KWords.Weakspots_rgb..".",
			ru = COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru.." подавляется при попадании в "..COLORS_KWords_ru.Weakspothit_rgb_ru..".\n"
				..Dot_green.." Может срабатывать несколько раз за выстрел при пробивании нескольких противников в "..COLORS_KWords_ru.Weakspot_rgb_ru..".", -- Перемещение опасности -- руоф Перемещение угрозы
			-- fr = COLORS_Numbers.warpchrg_var_rgb.." de votre "..COLORS_KWords_fr.Peril_rgb_fr.." est dissipé lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr..".",
			-- ["zh-tw"] = COLORS_KWords_tw.Weakspothits_rgb_tw.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_tw.Peril_rgb_tw.."。", -- 轉移反噬
				-- 電流力場法杖, 虛空爆破力場法杖 -- 7% | 8% | 9% | 10%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时，平息 "..COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_zh_cn.Peril_rgb_zh_cn.."。", -- 转移危机值
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ RENDING SHOCKWAVE +]--
		-- Brittleness Stacks (per tier)
		-- Voidblast Staff -- 2 | 4 | 6 | 8
		["loc_trait_bespoke_rend_armor_on_aoe_charge_desc"] = { -- stacks: 8, rending: 2.5%, time: 5, max_stacks: 16, s->seconds, +colors
			en = "Up to "..COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Brittleness_rgb.." based on Secondary Attack charge time. Lasts "..COLORS_Numbers.time_var_rgb.." seconds. Max "..COLORS_Numbers.maxstks_var_rgb.." Stacks, up to "..COLORS_Numbers.pc_40_rgb..".\n"
				..NTS.Brtl_note_rgb,
			ru = "Цель получает до "..COLORS_Numbers.stacks_var_rgb.." зарядов по "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." в зависимости от времени заряжания вторичной атаки. Длится "..COLORS_Numbers.time_var_rgb.." секунд. Максимум "..COLORS_Numbers.pc_40_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." при "..COLORS_Numbers.maxstks_var_rgb.." зарядах.", -- ..NTS.Brtl_note_rgb_ru -- Разрушительная волна
			-- fr = "La cible subit jusqu'à "..COLORS_Numbers.stacks_var_rgb.." cumuls de "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_fr.Brittleness_rgb_fr..", en fonction du temps de charge de l'attaque secondaire. Dure "..COLORS_Numbers.time_var_rgb.." secondes. "..COLORS_Numbers.maxstks_var_rgb.." cumuls maximum, pour un total de "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords_fr.Brtl_note_rgb_fr,
			-- ["zh-tw"] = "根據次要攻擊的蓄力時間，\n使攻擊目標獲得 "..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.rending_var_rgb.." 的 "..COLORS_KWords_tw.Brittleness_rgb_tw.."，\n可持續 "..COLORS_Numbers.time_var_rgb.." 秒，上限 "..COLORS_Numbers.maxstks_var_rgb.." 層 "..COLORS_Numbers.pc_40_rgb.."。" .. COLORS_KWords_tw.Brtl_note_rgb_tw, -- 撕扯震盪
				-- 虛空爆破力場法杖 -- 2 | 4 | 6 | 8
			-- ["zh-cn"] = "随次要攻击蓄力时间提升效果，\n最多对目标施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."，\n持续"..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.maxstks_var_rgb.." 层，最高"..COLORS_Numbers.pc_40_rgb.."。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn, -- 撕裂冲击波
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ FOCUSED CHANNELLING +]--
		-- Charge Move Speed Penalty Reduction (per tier)
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff -- 20% | 30% | 40% | 50%
		["loc_trait_bespoke_uninterruptable_while_charging_and_movement_desc"] = { -- reduction: 50%, +colors
			en = COLORS_Numbers.n_minus_rgb..COLORS_Numbers.red_var_rgb.." Movement Speed penalty during Secondary Attack. Your Secondary Attack cannot be interrupted. "
				..Dot_red.." Charging actions of all Staves are already uninterruptible by default.",
			ru = COLORS_Numbers.n_minus_rgb..COLORS_Numbers.red_var_rgb.." к штрафу скорости передвижения во время вторичной атаки. Ваша вторичная атака не может быть прервана. "
				..Dot_red.." Вторичные атаки всех посохов и так невозможно прервать.", -- Сосредоточенный призыв
			-- fr = "Votre attaque secondaire ne peut pas être interrompue et les pénalités de vitesse de déplacement de l'attaque secondaire sont réduite de "..COLORS_Numbers.red_var_rgb..".",
			-- ["zh-tw"] = "次要攻擊的移動速度懲罰 "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.red_var_rgb.."，\n且無法被中斷。", -- 專注引導
				-- 電流力場法杖, 烈焰力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 20% | 30% | 40% | 50%
			-- ["zh-cn"] = "次要攻击蓄力期间 "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.red_var_rgb.." 移动速度惩罚，\n同时敌人的近战及远程攻击无法眩晕你。", -- 专注引导
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		--[+ BLAZING SPIRIT +]--
		-- Soulblaze Stacks (per tier)
		-- Voidblast Staff, Voidstrike Staff -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_warpfire_burn_on_crit_desc"] = { -- stacks: 4, +colors -- REMOVED: [Up to "..COLORS_Numbers.n_6_rgb.." Stacks.] because for some reason this description is used for the Psyker Greatsword, but it has 12 stacks max. Fatshark FFS!
			en = COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_KWords.Soulblaze_rgb.." applied to enemies on "..COLORS_KWords.Crit_hit_rgb..". "
				..PHRS.Refr_dur_stappl,
			ru = COLORS_Numbers.stacks_var_rgb.." заряда "..COLORS_KWords_ru.Soulblaze_rgb_ru.." получает враг при "..COLORS_KWords_ru.Crit_hit_rgb_ru..". "
				..PHRS.Refr_dur_stappl_ru, --  Вплоть до "..COLORS_Numbers.n_6_rgb.." зарядов. -- Пылающий дух -- руоф Пламенный дух
			-- fr = "L'ennemie gagne "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." cumuls de "..COLORS_KWords_fr.Soulblaze_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr..".", -- Jusqu'à "..COLORS_Numbers.n_6_rgb.." cumuls.
			-- ["zh-tw"] = "敵人於 "..COLORS_KWords_tw.Crit_hit_rgb_tw.." 時會獲得 "..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_KWords_tw.Soulblaze_rgb_tw.."，上限 "..COLORS_Numbers.n_6_rgb.." 層。", -- 燃燒靈魂 -- 這個說明同時也被套用在烈焰力場巨劍，但是他最多12層。
				-- 虛空爆破力場法杖, 虛空打擊力場法杖 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时, 对敌人施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_KWords_zh_cn.Soulblaze_rgb_zh_cn.."。", -- 烈焰之魂 -- 描述存在BUG，炙焰力场巨剑错误使用该段描述，暂时移除字段：「"最多叠加 "..COLORS_Numbers.n_6_rgb.." 层。"」以确保描述不会出现错误。
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ PENETRATING FLAME +]--
		-- Brittleness Stacks (per tier)
		-- Flamer, Inferno Staff -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_armor_rending_from_dot_burning_desc"] = { -- num_stacks: 4, rending_percentage: 1%, duration: 5, max_stacks: 10, +colors
			en = "Direct hits apply "..COLORS_Numbers.stacks_num_var_rgb.." Stacks of "..COLORS_Numbers.pc_1_rgb.." "..COLORS_KWords.Brittleness_rgb.." for "..COLORS_Numbers.dur_var_rgb.." seconds. Up to "..COLORS_Numbers.pc_20_rgb..". "
				..PHRS.Can_be_refr.."\n"
				..NTS.Brtl_note_rgb,
			ru = "Прямые попадания накладывают "..COLORS_Numbers.stacks_num_var_rgb.." заряда "..COLORS_Numbers.pc_1_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." брони на "..COLORS_Numbers.dur_var_rgb.." секунд. Вплоть до "..COLORS_Numbers.pc_20_rgb..". "
				..PHRS.Can_be_refr_ru..NTS.Brtl_note_rgb_ru, -- Проникающее пламя -- руоф Убойное пламя
			-- fr = "Les coups directs appliquent "..COLORS_Numbers.n_1_rgb.." cumul de "..COLORS_Numbers.stacks_num_var_rgb..COLORS_Numbers.pc_rgb.." "..COLORS_KWords_fr.Brittleness_rgb_fr.." pendant "..COLORS_Numbers.dur_var_rgb.." secondes. Jusqu'à "..COLORS_Numbers.pc_20_rgb.."."..COLORS_KWords_fr.Brtl_note_rgb_fr,
			--??? ["zh-tw"] = "被攻擊目標獲得 "..COLORS_Numbers.stacks_num_var_rgb.." 層 "..COLORS_Numbers.rending_pc_var_rgb.." 的 "..COLORS_KWords_tw.Brittleness_rgb_tw.."，\n持續 "..COLORS_Numbers.dur_var_rgb.." 秒，上限 "..COLORS_Numbers.maxstks_var_rgb.." 層。" .. COLORS_KWords_tw.Brtl_note_rgb_tw, -- 穿透烈焰
			--??? ["zh-tw"] = "被攻擊目標獲得 "..COLORS_Numbers.n_1_rgb.." 層 "..COLORS_Numbers.stacks_num_var_rgb..COLORS_Numbers.pc_rgb.." 的 "..COLORS_KWords_tw.Brittleness_rgb_tw.."，\n持續 "..COLORS_Numbers.dur_var_rgb.." 秒，上限 "..COLORS_Numbers.pc_20_rgb.." 。" .. COLORS_KWords_tw.Brtl_note_rgb_tw, -- 穿透烈焰
				-- 淨化噴火器, 烈焰力場法杖 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "命中时，对目标施加 "..COLORS_Numbers.stacks_num_var_rgb.." 层 "..COLORS_Numbers.pc_1_rgb.." "..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."，持续 "..COLORS_Numbers.dur_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.n_20_rgb.." 层，最高 "..COLORS_Numbers.pc_20_rgb.."。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn, -- 穿透火焰
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SHOWSTOPPER +]--
		-- Chance to Explode (per tier)
		-- Flamer, Inferno Staff -- 14% | 16% | 18% | 20%
		["loc_trait_bespoke_chance_to_explode_elites_on_kill_desc"] = { -- proc_chance: 20%
			en = COLORS_Numbers.procch_var_rgb.." chance Elite and Special enemies Explode on kill.",
			ru = COLORS_Numbers.procch_var_rgb.." шанс, что элитные враги или специалисты взорвутся при смерти.", -- Взрывной финал -- руоф Театральная пауза
			fr = COLORS_Numbers.procch_var_rgb.." de chance que les Élite et les spécialistes explosent lors d'une élimination.",
			["zh-tw"] = "精英或專家死亡時，\n有 "..COLORS_Numbers.procch_var_rgb.." 機率引發爆炸。", -- 嘆為觀止
				-- 淨化噴火器, 烈焰力場法杖 -- 10% | 15% | 20% | 25%
			["zh-cn"] = "击杀精英和专家敌人时 \n"..COLORS_Numbers.procch_var_rgb.." 几率引发爆炸。", -- 精彩表演
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ INFERNUS +]--
		-- Burn Stacks and Max Stacks (per tier)
		-- Helbore Lasguns, Infantry Lasguns, Laspistols, Recon Lasguns -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
		["loc_trait_bespoke_burninating_on_crit_desc"] = { -- stacks: +4, max_stacks: 12, Stack(s)->Stacks, +colors
			en = COLORS_Numbers.stacks_var_rgb.." "..COLORS_KWords.Burn_rgb.." Stacks applied to enemies on "..COLORS_KWords.Crit_hit_rgb.." to a maximum of "..COLORS_Numbers.maxstks_var_rgb.." Stacks.\n"
				..PHRS.Refr_dur_stappl..Dot_red.." Can't apply "..COLORS_KWords.Burn_rgb.." through shields.",
			ru = COLORS_Numbers.stacks_var_rgb.." заряда "..COLORS_KWords_ru.Burn_rgb_ru.." применяется к врагу при "..COLORS_KWords_ru.Crit_hit_rgb_ru..", вплоть до "..COLORS_Numbers.maxstks_var_rgb.." зарядов. "
				..PHRS.Refr_dur_stappl_ru..Dot_red.." Заряды "..COLORS_KWords_ru.Burn_rgb_ru.." не накладываются через щиты.", -- Инфернус
			-- fr = COLORS_Numbers.p_stacks_var_rgb.." cumuls de "..COLORS_KWords_fr.Burn_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." jusqu'à un maximum de "..COLORS_Numbers.maxstks_var_rgb.." cumuls.",
			-- ["zh-tw"] = "在 "..COLORS_KWords_tw.Crit_hit_rgb_tw.." 時 "..COLORS_Numbers.p_stacks_var_rgb.." 層 "..COLORS_KWords_tw.Burn_rgb_tw.."，\n上限 "..COLORS_Numbers.maxstks_var_rgb.." 層。", -- 煉獄
				-- 冥潮雷射槍, 步兵雷射槍, 重型雷射手槍, 偵查雷射槍 -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时 "..COLORS_Numbers.p_stacks_var_rgb.." 层"..COLORS_KWords_zh_cn.Burn_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.maxstks_var_rgb.." 层。", -- 地狱火
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ EFFICIENCY +]--
		-- Cooldown (per tier)
		-- Infantry Lasguns -- 5.5s | 5s | 4.5s | 4s
		["loc_trait_bespoke_first_shot_ammo_cost_reduction_desc"] = { -- ammo: 33%, time: 4, s->seconds, +colors
			en = COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_66_rgb.." Ammo consumption per shot every "..COLORS_Numbers.time_var_rgb.." seconds. "
				..Dot_nc.." The Mk "..COLORS_Numbers.n_VII_rgb.." and the Mk "..COLORS_Numbers.n_IX_rgb.." consumes "..COLORS_Numbers.n_1_rgb.." ammo per shot instead of "..COLORS_Numbers.n_3_rgb..", and the Mk "..COLORS_Numbers.n_IIB_rgb.." - "..COLORS_Numbers.n_1_rgb.." instead of "..COLORS_Numbers.n_2_rgb..".",
			ru = COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_66_rgb.." от затрат боеприпасов на выстрел раз в "..COLORS_Numbers.time_var_rgb.." секунды. "
				..Dot_nc.." Модели "..COLORS_Numbers.n_VII_rgb.." и "..COLORS_Numbers.n_IX_rgb.." тратят "..COLORS_Numbers.n_1_rgb.." боеприпас за выстрел вместо "..COLORS_Numbers.n_3_rgb..", а модель "..COLORS_Numbers.n_IIB_rgb.." - "..COLORS_Numbers.n_1_rgb.." вместо "..COLORS_Numbers.n_2_rgb..".", -- Эффективность
			-- fr = COLORS_Numbers.ammo_var_rgb.." de réduction des munitions dépensées lorsque vous ne tirez pas pendant "..COLORS_Numbers.time_var_rgb.." secondes.",
			-- ["zh-tw"] = "每過 "..COLORS_Numbers.time_var_rgb.." 秒，\n首次射擊的彈藥消耗將減少 "..COLORS_Numbers.ammo_var_rgb.." 。", -- 效率
				-- 步兵雷射槍 -- 5.5 | 5 | 4.5 | 4
			-- ["zh-cn"] = "下次射击 "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.ammo_var_rgb.." 弹药消耗，\n冷却时间 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 效益
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ CONCENTRATED FIRE +]--
		-- Crit Chance per stack (per tier)
		-- Laspistols -- 2% | 3% | 4% | 5% (up to +25%)
		["loc_trait_bespoke_crit_chance_on_chained_weakspot_hits_desc"] = { -- crit_chance: +5%, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." on Chained Ranged "..COLORS_KWords.Weakspothit_rgb.." to Any Target. "
				..Dot_nc.." Up to "..COLORS_Numbers.n_5_rgb.." Stacks. "..Dot_red.." Does not benefit Melee attacks.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." при серии попаданий в "..COLORS_KWords_ru.Weakspot_rgb_ru.." любой цели. "
				..Dot_nc.." До "..COLORS_Numbers.n_5_rgb.." зарядов. "..Dot_red.." Не влияет на атаки ближнего боя.", -- Сосредоточенный огонь -- руоф Интенсивный огонь
			-- fr = "Jusqu'à "..COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr.." répété à distance (toute cible). Jusqu'à "..COLORS_Numbers.n_5_rgb.." cumuls.",
			-- ["zh-tw"] = "連續 "..COLORS_KWords_tw.Weakspothit_rgb_tw.." 時（任意目標），\n獲得最多 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\b上限 "..COLORS_Numbers.n_5_rgb.." 層。", -- 集中火力
				-- 重型雷射手槍 -- 2% | 3% | 4% | 5% (up to +25%)
			-- ["zh-cn"] = "连续"..COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时 "..COLORS_Numbers.crit_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。", -- 集中火力
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ DESPERADO +]--
		-- Crit Chance (per tier)
		-- Laspistols -- 12.5% | 15% | 17.5% | 20%
		["loc_trait_bespoke_crit_chance_on_successful_dodge_desc"] = { -- crit_chance: +12.5%, time: 6, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on successful Dodge. "
				..PHRS.Can_be_refr..Dot_red.." Does not benefit Melee attacks.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунд при успешном уклонении.\n"
				..PHRS.Can_be_refr_ru.."\n"
				..Dot_red.." Не влияет на атаки ближнего боя.", -- Сорвиголова
			-- fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une esquive réussie.",
			-- ["zh-tw"] = "成功閃避時 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 亡命之徒
				-- 重型雷射手槍 -- 12.5% | 15% | 17.5% | 20%
			-- ["zh-cn"] = "成功闪避时 "..COLORS_Numbers.crit_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 亡命之徒
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ REASSURINGLY ACCURATE +]--
		-- Grenadier Gauntlet -- 24% | 28% | 32% | 36%
		-- Laspistols -- 10% | 12% | 14% | 16%
		["loc_trait_bespoke_toughness_on_crit_kills_desc"] = { -- toughness: 16%, +colors
			en = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." on "..COLORS_KWords.Crit_hit_rgb.." Kill. "
				..Dot_green.." Can proc multiple times per shot and also on "..COLORS_KWords.Crit_rgb.." kills with Melee attacks or special Melee actions. "..PHRS.Dont_intw_coher_tghn,
			ru = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." при убийствах "..COLORS_KWords_ru.Crit_hits_rgb_ru..". "
				..Dot_green.." Может срабатывать несколько раз за выстрел. "..PHRS.Dont_intw_coher_tghn_ru, -- Успокаивающая точность -- руоф Внушительная точность
			-- fr = COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une élimination par "..COLORS_KWords_fr.Crit_hit_rgb_fr..".",
			-- ["zh-tw"] = COLORS_KWords_tw.Crit_k_rgb_tw.." 時 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."。", -- 慰藉精準
				-- 擲彈兵臂鎧 -- 24% | 28% | 32% | 36%
				-- 重型雷射手槍 -- 10% | 12% | 14% | 16%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Crit_hits_k_rgb_zh_cn.."时，"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。", -- 激励精准
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ FLECHETTE +]--
		-- Bleed Stacks (per tier)
		-- Combat Shotguns, Double-Barrel Shotgun, Ripper Guns -- 3 | 4 | 5 | 6
		["loc_trait_bespoke_bleed_on_crit_ranged_desc"] = { -- stacks: 6, +colors
			en = COLORS_Numbers.stacks_var_rgb.." "..COLORS_KWords.Bleed_rgb.." Stacks on "..COLORS_KWords.Crit_hit_rgb..". "
				..Dot_nc.." Up to "..COLORS_Numbers.n_16_rgb.." Stacks. "..PHRS.Refr_dur_stappl..PHRS.Cant_appl_thr_shlds,
			ru = COLORS_Numbers.stacks_var_rgb.." зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." накладывается при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru..". "
				..Dot_nc.." Вплоть до "..COLORS_Numbers.n_16_rgb.." зарядов. "..PHRS.Refr_dur_stappl_ru..PHRS.Cant_appl_thr_shlds_ru, -- Флешетта
			-- fr = COLORS_Numbers.p_stacks_var_rgb.." cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr..". Jusqu'à "..COLORS_Numbers.n_16_rgb.." cumuls.",
			-- ["zh-tw"] = COLORS_KWords_tw.Crit_rgb_tw.." 時，使其獲得 "..COLORS_Numbers.p_stacks_var_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.."。\n上限 "..COLORS_Numbers.n_16_rgb.." 層。", -- 飛鏢彈
				-- 戰鬥霰彈槍, 雙管霰彈槍, 撕裂槍 -- 3 | 4 | 5 | 6
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Crit_rgb_zh_cn.."时 "..COLORS_Numbers.p_stacks_var_rgb.." 层"..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_16_rgb.." 层。", -- 箭弹
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ MAN-STOPPER +]--
		-- Ranged Stagger Strength (per tier)
		-- Combat Shotguns, Double-Barrel Shotgun, Shotpistol and Shield -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_cleave_on_crit_and_stagger_desc"] = { -- stagger: +25%, +colors
			en = COLORS_Numbers.stgr_var_rgb.." Ranged Attack "..COLORS_KWords.Stagger_rgb..". Increased "..COLORS_KWords.Cleave_rgb.." on "..COLORS_KWords.Crit_hit_rgb..". "
				..PHRS.Carap_cant_cleave,
			ru = COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_ru.Staggering_rgb_ru.." от выстрелов. Увеличивается "..COLORS_KWords_ru.Cleaving_r_rgb_ru.." при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru..". "
				..PHRS.Carap_cant_cleave_ru, -- Человекоостанавливатель -- руоф Усмирение
			-- fr = "Augmente le "..COLORS_KWords_fr.Cleave_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." augmente également de "..COLORS_Numbers.stgr_var_rgb.." le "..COLORS_KWords_fr.Stagger_rgb_fr..".",
			-- ["zh-tw"] = "在 "..COLORS_KWords_tw.Crit_chance_r_rgb_tw.." 時提升 "..COLORS_KWords_tw.Cleaving_r_rgb_tw.."，\n並使遠程攻擊 "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_tw.Staggering_rgb_tw.."。", -- 大口徑彈藥
				-- 戰鬥霰彈槍, 雙管霰彈槍 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Crit_rgb_zh_cn.."时 "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."，\n同时无视敌人的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn, -- 强力炮弹
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SCATTERSHOT +]--
		-- Ranged Crit Chance per stack (per tier)
		-- Combat Shotguns, Double-Barrel Shotgun, Exterminator Shotguns, Shotpistol and Shield -- 6% | 8% | 10% | 12% (up to +60%)
		["loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot_desc"] = { -- crit_chance: +12%, stacks: 5, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for each Enemy Hit by your previous attack. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.\n"
				..Dot_red.." Removes All Stacks on the next shot even when shooting air.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." за каждого врага, поражённого вашей предыдущей атакой. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..Dot_red.." Все заряды тратятся, даже при промахе.", -- Выстрел дробью -- руоф Разброс
			-- fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pour chaque ennemie touché par votre attaque précédente . Se cumuls "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "前一次攻擊每命中一名敵人，\n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.." ，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 散彈
				-- 戰鬥霰彈槍, 雙管霰彈槍 -- 6% | 8% | 10% | 12% (up to +60%)
			-- ["zh-cn"] = "上次攻击每命中一名敌人\n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 散射
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ FULL BORE +]--
		-- Power (per tier)
		-- Combat Shotguns, Double-Barrel Shotgun, Exterminator Shotguns, Shotpistol and Shield -- 14% | 16% | 18% | 20%
		-- Kickback -- 18% | 22% | 26% | 30%
		["loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all_desc"] = { -- power_level: +20%, time: 5, s->seconds, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds when every pellet in a shot hits the same enemy.\n"
				..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунд, если каждая пуля в выстреле попадает в одного и того же врага."
				..NTS.Pwr_note_rgb_ru, -- Полный калибр -- руоф Напор
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lorsque chaque plomb d'un tir touche le même ennemie."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "單次射擊的所有子彈皆命中同一名敵人，\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 全孔射擊
				-- 戰鬥霰彈槍, 雙管霰彈槍 -- 14% | 16% | 18% | 20%
				-- 反衝者 -- 18% | 22% | 26% | 30%
			-- ["zh-cn"] = 一次射击的全部弹丸都命中同一敌人时\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 全孔射击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ BOTH BARRELS +]--
		-- Reload Animation Speed (per tier)
		-- Double-Barrel Shotgun -- 40% | 50% | 60% | 70%
		["loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill_desc"] = { -- reload_speed: 70%, +colors
			en = COLORS_Numbers.reload_var_rgb.." Reload Speed after killing an enemy with both barrels while aiming.",
			ru = COLORS_Numbers.reload_var_rgb.." к скорости перезарядки после убийства врага прицельным выстрелом из обоих стволов.", -- Дуплет
			-- fr = "Si vous tuez un ennemie en tirant les deux canons, votre prochain rechargement sera "..COLORS_Numbers.reload_var_rgb.." plus rapide.",
			-- ["zh-tw"] = "擊殺敵人後，\n下一次換彈速度 "..COLORS_Numbers.reload_var_rgb.."。", -- 雙管齊發
				-- 雙管霰彈槍 -- 40% | 50% | 60% | 70%
			-- ["zh-cn"] = "进行次要攻击并发射两枚弹药时\n"..COLORS_Numbers.reload_var_rgb.." 装弹速度。", -- 双管齐下
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ TRICKSHOOTER +]--
		-- Ranged Power per stack (per tier)
		-- Stub Revolvers -- 4.5% | 5% | 5.5% | 6% (up to +30%)
		["loc_trait_bespoke_power_bonus_on_chained_weakspot_hits_desc"] = { -- power_level: +6%, stacks: 5, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." on Chained "..COLORS_KWords.Weakspothit_rgb.." to Any Target. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..PHRS.Can_be_refr.."\n"
				..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." при серии ударов в "..COLORS_KWords_ru.Weakspot_rgb_ru.." любых целей. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..PHRS.Can_be_refr_ru..NTS.Pwr_note_rgb_ru, -- Меткий стрелок
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr.." en chaîne (toute cible). Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "連續 "..COLORS_KWords_tw.Weakspothit_rgb_tw.." 時（任意目標），\n獲得最多 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 狡猾射手
				-- 快拔左輪手槍 -- 4.5% | 5% | 5.5% | 6% (up to +30%)
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.n_3_5_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 特技射手
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ HAND-CANNON +]--
		-- Rending (per tier)
		-- Stub Revolvers -- 30% | 40% | 50% | 60%
		["loc_trait_bespoke_rending_on_crit_desc"] = { -- rend: +60%, +colors
			en = COLORS_Numbers.rend_var_rgb.." "..COLORS_KWords.Rending_rgb.." on "..COLORS_KWords.Crit_hit_rgb..". "
				..NTS.Rend_note_rgb,
			ru = COLORS_Numbers.rend_var_rgb.." к "..COLORS_KWords_ru.Rending_rgb_ru.." брони при "..COLORS_KWords_ru.Crit_hit_rgb_ru..". "
				..NTS.Rend_note_rgb_ru, -- Ручная пушка
			-- fr = COLORS_Numbers.rend_var_rgb.." de "..COLORS_KWords_fr.Rending_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr.."."..COLORS_KWords_fr.NTS.Rend_note_rgb_fr,
			-- ["zh-tw"] = COLORS_KWords_tw.Crit_hit_rgb_tw.." 時 "..COLORS_Numbers.rend_var_rgb.." "..COLORS_KWords_tw.Rending_rgb_tw.."。" .. COLORS_KWords_tw.NTS.Rend_note_rgb_tw, -- 手銃
				-- 快拔左輪手槍 -- 30% | 40% | 50% | 60%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.." "..COLORS_Numbers.rend_var_rgb.." "..COLORS_KWords_zh_cn.Rending_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.NTS.Rend_note_rgb_zh_cn, -- 手持火炮
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SHATTERING IMPACT +]--
		-- Brittleness Stacks (per tier)
		-- Boltgun, Grenadier Gauntlet, Plasma Gun, Rumbler -- 1 | 2 | 3| 4
		["loc_trait_bespoke_armor_rend_on_projectile_hit_desc"] = { -- stacks: 4, rending: 2.5%, time: 5, max_stacks: 16, s->seconds, +colors
			en = "Target receives "..COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Brittleness_rgb.." on direct projectile hit. Lasts "..COLORS_Numbers.time_var_rgb.." seconds. Max "..COLORS_Numbers.maxstks_var_rgb.." Stacks, up to "..COLORS_Numbers.pc_40_rgb..". "
				..PHRS.Can_be_refr, --  ..NTS.Brtl_note_rgb
			ru = "Цель получает "..COLORS_Numbers.stacks_var_rgb.." заряда по "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." брони при прямом попадании. Длится "..COLORS_Numbers.time_var_rgb.." секунд. До "..COLORS_Numbers.maxstks_var_rgb.." зарядов, вплоть до "..COLORS_Numbers.pc_40_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru..".\n"
				..PHRS.Can_be_refr_ru, -- Сокрушающий удар -- руоф Рассеивающий импульс -- ..NTS.Brtl_note_rgb_ru
			-- fr = "La cible reçoit "..COLORS_Numbers.stacks_var_rgb.." cumuls de "..COLORS_Numbers.rending_var_rgb.." de "..COLORS_KWords_fr.Brittleness_rgb_fr.." si elle est touchée directement par un projectile. Dure "..COLORS_Numbers.time_var_rgb.." secondes."..COLORS_Numbers.maxstks_var_rgb.." cumuls maximum, Jusqu'à "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords_fr.Brtl_note_rgb_fr,
			-- ["zh-tw"] = "命中目標時，使其獲得 "..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Brittleness_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒，上限 "..COLORS_Numbers.maxstks_var_rgb.." 層，最高至 "..COLORS_Numbers.pc_40_rgb.."。" .. COLORS_KWords_tw.Brtl_note_rgb_tw, -- 破碎衝擊
				-- 矛頭爆矢槍, 擲彈兵臂鎧, 電漿槍, 震盪槍 -- 1 | 2 | 3| 4
			-- ["zh-cn"] = "命中时，对目标施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_Numbers.rending_var_rgb.." \n"..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.maxstks_var_rgb.." 层，最高 "..COLORS_Numbers.pc_40_rgb.."。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn, -- 破碎冲击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ EVERLASTING FLAME +]--
		-- Ammo Transferred (per tier)
		-- Flamer -- 2 | 3 | 4 | 5
		["loc_trait_bespoke_ammo_spent_from_reserve_on_crit_desc"] = { -- +colors
			en = COLORS_KWords.Crit_hits_rgb.." spend Ammo from your Reserve instead of you current fuel tank.",
			ru = COLORS_KWords_ru.CritH_rgb_ru.." тратят топливо из вашего резерва вместо текущего топливного бака.", -- Неугасимое пламя -- руоф Бесконечное пламя
			-- fr = "Les "..COLORS_KWords_fr.Crit_hits_rgb_fr.." dépensent des munitions de votre réserve à la place de votre réservoir de carburant actuel.",
			-- ["zh-tw"] = COLORS_KWords_tw.Crit0_rgb_tw.." 消耗備彈，而非彈夾中的彈藥。", -- 永燃烈焰
				-- 淨化噴火器 -- 2 | 3 | 4 | 5
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时，从弹药储备填装数枚弹药。", -- 永恒之火
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ QUICKFLAME +]--
		-- Reload Speed (per tier)
		-- Flamer -- 24% | 28% | 32% | 36%
		["loc_trait_bespoke_faster_reload_on_empty_clip_desc"] = { -- reload_speed: +36%, +colors
			en = COLORS_Numbers.reload_var_rgb.." Reload Speed if empty.",
			ru = COLORS_Numbers.reload_var_rgb.." к скорости перезарядки, если бак пуст.", -- Скорое пламя -- руоф Воспламенение
			-- fr = COLORS_Numbers.reload_var_rgb.." de vitesse de rechargement si vide.",
			-- ["zh-tw"] = "當彈夾為空時 "..COLORS_Numbers.reload_var_rgb.." 換彈速度。", -- 迅捷火焰
				-- 淨化噴火器 -- 24% | 28% | 32% | 36%
			-- ["zh-cn"] = "弹匣空时 "..COLORS_Numbers.reload_var_rgb.." 装弹速度。", -- 快速烈焰
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ FAN THE FLAMES +]--
		-- Stagger Reduction Modifier and Ranged Stagger Strength (per tier)
		-- Flamer -- 40% and 30% | 50% and 35% | 60% and 40% | 70% and 45%
		["loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning_desc"] = { -- stagger_reduction: 60%, impact_modifier: +45%, +colors
			en = "Primary Attack ignores "..COLORS_Numbers.stgrrdct_var_rgb.." "..COLORS_KWords.Stagger_rgb.." Resistance on "..COLORS_KWords.Burning_rgb.." Enemies, as well as dealing "..COLORS_Numbers.impmod_var_rgb.." "..COLORS_KWords.Impact_rgb..".",
			ru = "Основная атака получает:\n"
				..COLORS_Numbers.impmod_var_rgb.." к "..COLORS_KWords_ru.Impact_rgb_ru.." и\n"
				..COLORS_Numbers.stgrrdct_var_rgb.." к игнорированию сопротивления "..COLORS_KWords_ru.Stagger2_rgb_ru.." для "..COLORS_KWords_ru.Burning_rgb_ru.." врагов.", -- Разжечь пламя -- руоф Раздувая пламя
			-- fr = "Votre attaque principale ignore "..COLORS_Numbers.stgrrdct_var_rgb.." de le résistance "..COLORS_KWords_fr.Stagger_rgb_fr.." des ennemis qui "..COLORS_KWords_fr.Burning_rgb_fr..", et inflige "..COLORS_Numbers.impmod_var_rgb.." d'"..COLORS_KWords_fr.Impact_rgb_fr..".",
			-- ["zh-tw"] = "對 "..COLORS_KWords_tw.Burning_rgb_tw.." 敵人使用主攻擊時，\n無視 "..COLORS_Numbers.stgrrdct_var_rgb.." "..COLORS_KWords_tw.Stagger2_rgb_tw.." 並 "..COLORS_Numbers.impmod_var_rgb.." "..COLORS_KWords_tw.Impact_rgb_tw.."。", -- 煽風點火
				-- 淨化噴火器 -- 40% and 30% | 50% and 35% | 60% and 40% | 70% and 45%
			-- ["zh-cn"] = "主要攻击无视"..COLORS_KWords_zh_cn.Burning_rgb_zh_cn.."敌人 "..COLORS_Numbers.stgrrdct_var_rgb.." "..COLORS_KWords_zh_cn.Stagger2_rgb_zh_cn.."抗性，同时 "..COLORS_Numbers.impmod_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."。", -- 火上浇油
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ OVERPRESSURE +]--
		-- Power per stack (per tier)
		-- Flamer -- 2% | 3% | 4% | 5% (up to +25%)
		["loc_trait_bespoke_power_scales_with_clip_percentage_desc"] = { -- power_level: +5%, stacks: 5, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb..", scaling with remaining Ammunition. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.\n"
				..Dot_nc.." Holds all current Stacks until reload.\n"
				..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." в зависимости от количества оставшихся боеприпасов. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..Dot_nc.." Заряды сохраняются до перезарядки. "..NTS.Pwr_note_rgb_ru, -- Избыточное давление
			-- fr = "Jusqu'à "..COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr..", en fonction des munitions restantes. Se cumules "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "依照剩餘彈藥量 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 超壓
				-- 淨化噴火器 -- 2% | 3% | 4% | 5% (up to +25%)
			-- ["zh-cn"] = "随弹匣剩余弹药叠加层数，\n每消耗弹匣容量 "..COLORS_Numbers.pc_20_rgb.." 的弹药\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 超压
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ HOT-SHOT +]--
		-- Enemy Hit Mass Reduction (per tier)
		-- Helbore Lasguns -- 20% | 30% | 40% | 50%
		["loc_trait_bespoke_cleave_on_weakspot_hits_desc"] = { -- hit_mass_reduction: +50%, +colors
			en = COLORS_Numbers.n_plus_rgb..COLORS_Numbers.hit_mass_red_var_rgb.." "..COLORS_KWords.Cleave_rgb.." to "..COLORS_KWords.Weakspothits_rgb..".",
			ru = COLORS_Numbers.n_plus_rgb..COLORS_Numbers.hit_mass_red_var_rgb.." к "..COLORS_KWords_ru.Cleaving_u_rgb_ru.." выстрелам в "..COLORS_KWords_ru.Weakspot_rgb_ru..".", -- Прожигающий выстрел -- руоф В точку
			-- fr = "Les "..COLORS_KWords_fr.Weakspothits_rgb_fr.." gagnent "..COLORS_Numbers.hit_mass_red_var_rgb.." de "..COLORS_KWords_fr.Cleave_rgb_fr..".",
			-- ["zh-tw"] = COLORS_KWords_tw.Weakspothits_rgb_tw.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.hit_mass_red_var_rgb.." "..COLORS_KWords_tw.Cleave_rgb_tw.."。", -- 激射
				-- 冥潮雷射槍 -- 80% | 70% | 60% | 50%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Weakspothits_rgb_zh_cn.."使目标"..COLORS_KWords_zh_cn.Hit_masss_rgb_zh_cn.."降至 "..COLORS_Numbers.hit_mass_red_var_rgb.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn, -- 炙热射击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ WEIGHT OF FIRE +]--
		-- Charge Time Reduction per stack (per tier)
		-- Helbore Lasguns -- 6% | 8% | 10% | 12% (up to 60%)
		["loc_trait_bespoke_faster_charge_on_chained_attacks_desc"] = { -- charge_time: -12%, stacks: 5, +colors
			en = COLORS_Numbers.chrgtime_var_rgb.." Charge Time per Stack. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. Stacks on consecutive Aimed Charged Attacks. "
				..Dot_nc.." Stacks expire after "..COLORS_Numbers.n_04_rgb.." seconds or upon leaving Alt Fire mode.",
			ru = COLORS_Numbers.chrgtime_var_rgb.." от времени заряжания выстрела за заряд. Максимум "..COLORS_Numbers.stacks_var_rgb.." зарядов при серии заряженных прицельных выстрелов.\n"
				..Dot_nc.." Заряды сгорают через "..COLORS_Numbers.n_04_rgb.." секунды или при выходе из прицеливания.", -- Мощь огня -- руоф Плотность огня
			-- fr = "Enchaîner les attaques chargées réduit leurs temps de chargement de "..COLORS_Numbers.chrgtime_var_rgb.." par cumule. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "連續射擊會使後續射擊充能時間 "..COLORS_Numbers.chrgtime_var_rgb.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 猛攻
				-- 冥潮雷射槍 -- 6% | 8% | 10% | 12% (up to 60%)
			-- ["zh-cn"] = "连续进行充能攻击时 \n"..COLORS_Numbers.chrgtime_var_rgb.." 蓄力时间。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 猛攻
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ ARMOURBANE +]--
		-- Brittleness Stacks (per tier)
		-- Helbore Lasguns -- 2 to 6 | 4 to 8 | 6 to 10 | 8 to 12
		["loc_trait_bespoke_rend_armor_on_charged_shots_desc"] = { -- min_stack_count: 8, max_stack_count: 12, +colors
			en = "Adds "..COLORS_Numbers.min_stk_cnt_var_rgb.."-"..COLORS_Numbers.max_stk_cnt_var_rgb.." Stacks of "..COLORS_Numbers.pc_2_5_rgb.." "..COLORS_KWords.Brittleness_rgb.." to hit enemies, based on charge level.\n"
				..Dot_nc.." Max "..COLORS_Numbers.n_16_rgb.." Stacks, up to "..COLORS_Numbers.pc_40_rgb..". "
				..PHRS.Can_be_refr..Dot_green.." Can apply Stacks through shields.",
			ru = "Добавляет врагу "..COLORS_Numbers.min_stk_cnt_var_rgb.."-"..COLORS_Numbers.max_stk_cnt_var_rgb.." зарядов по "..COLORS_Numbers.pc_2_5_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." брони при попадании, в зависимости от времени заряжания выстрела. До "..COLORS_Numbers.pc_40_rgb..". "
				..NTS.Brtl_note_rgb_ru, -- Бронебой
			-- fr = "Inflige de "..COLORS_Numbers.min_stk_cnt_var_rgb.." à "..COLORS_Numbers.max_stk_cnt_var_rgb.." cumuls de "..COLORS_Numbers.pc_2_5_rgb.." de "..COLORS_KWords_fr.Brittleness_rgb_fr.." aux ennemis touchés, en fonction du niveau de charge."..COLORS_KWords_fr.Brtl_note_rgb_fr,
			-- ["zh-tw"] = "依據充能時間，使其獲得 "..COLORS_Numbers.min_stk_cnt_var_rgb.." 至 "..COLORS_Numbers.max_stk_cnt_var_rgb.." 層， "..COLORS_Numbers.pc_2_5_rgb.." 的 "..COLORS_KWords_tw.Brittleness_rgb_tw.."，上限 "..COLORS_Numbers.n_16_rgb.." 層，共 "..COLORS_Numbers.pc_40_rgb.." 。" .. COLORS_KWords_tw.Brtl_note_rgb_tw, -- 護甲之禍
				-- 冥潮雷射槍 -- 2 to 6 | 4 to 8 | 6 to 10 | 8 to 12
			-- ["zh-cn"] = "随充能时间提升效果，对目标施加\n"..COLORS_Numbers.min_stk_cnt_var_rgb.." 到 "..COLORS_Numbers.max_stk_cnt_var_rgb.." 层 "..COLORS_Numbers.pc_2_5_rgb.." "..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_16_rgb.." 层，最高 "..COLORS_Numbers.pc_40_rgb.."。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn, -- 装甲之祸
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ POWER BLAST +]--
		-- Crit Chance per stack (per tier)
		-- Plasma Gun -- 2% | 3% | 4% | 5% (up to +25%)
		["loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time_desc"] = { -- crit_chance_min: 5%, crit_chance_max: 25%, +colors
			en = COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmin_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." per "..COLORS_Numbers.pc_20_rgb.." charge level. "..Dot_nc.." Stacks up to "..COLORS_Numbers.n_5_rgb.." times. Maximum of "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmax_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." at "..COLORS_Numbers.pc_91p_rgb.." charge level.\n"
				..Dot_nc.." Max Stacks can only be reached by the Alt fire charging action.",
			ru = COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmin_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." за каждые "..COLORS_Numbers.pc_20_rgb.." перегрева. "
				..Dot_nc.." Суммируется до "..COLORS_Numbers.n_5_rgb.." раз, вплоть до "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmax_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." при уровне перегрева "..COLORS_Numbers.pc_91p_rgb.." или выше.", -- Мощный выстрел -- руоф Мощный взрыв
			-- fr = "Gagnez entre "..COLORS_Numbers.critchmin_var_rgb.." et "..COLORS_Numbers.critchmax_var_rgb.." de "..COLORS_KWords_fr.Crt_chance_rgb_fr.." en fonction du niveau de charge lorsque vous tirez.",
			-- ["zh-tw"] = "依據 "..COLORS_KWords_tw.Heat2_rgb_tw.." 等級，\n "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmin_var_rgb.." 到 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmax_var_rgb.." "..COLORS_KWords_tw.Crt_chance_rgb_tw.."。", -- 聚能爆發
				-- 電漿槍 -- 2% | 3% | 4% | 5% (up to +25%)
			-- ["zh-cn"] = "随充能程度叠加层数，每充能\n"..COLORS_Numbers.pc_20_rgb.." 叠加 "..COLORS_Numbers.n_1_rgb.." 层，每层 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmin_var_rgb.." "..COLORS_KWords_zh_cn.Crt_chance_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_5_rgb.." 层，最高 "..COLORS_Numbers.critchmax_var_rgb.."。", -- 充能爆破
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ GETS HOT! +]--
		-- Crit Chance and Ranged Crit Damage per stack (per tier)
		-- Plasma Gun -- 5.5% and 4% | 7% and 6% | 8.5 and 8% | 10% and 10% (up to +50% and +50%)
		["loc_trait_bespoke_crit_chance_scaled_on_heat_desc"] = { -- crit_chance: 50%, ranged_crit_damage: 10%, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_hit_chance_rgb.." and\n"
				..COLORS_Numbers.rangcrtdmg_var_rgb.." "..COLORS_KWords.Crit_dmg_r_rgb.." per Stack.\n"
				..Dot_nc.." Stacks up to "..COLORS_Numbers.n_5_rgb.." times.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." и\n"
				..COLORS_Numbers.rangcrtdmg_var_rgb.." к "..COLORS_KWords_ru.Crit_dmg_u_rgb_ru.." за заряд.\n"
				..Dot_nc.." Суммируется до "..COLORS_Numbers.n_5_rgb.." раз.", -- Критическая жара! -- руоф Становится жарко!
			-- fr = "Augmente de "..COLORS_Numbers.crit_var_rgb.." par cumul le "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.."  proportionnellement à votre niveau de "..COLORS_KWords_fr.Heat_rgb_fr.." actuel. Augmente également les "..COLORS_KWords_fr.Crit_hit_color_rgb_fr.." à distance de "..COLORS_Numbers.rangcrtdmg_var_rgb.." par cumul.",
			-- ["zh-tw"] = "依據 "..COLORS_KWords_tw.Heat_rgb_tw.." 提升 "..COLORS_KWords_tw.Crt_chance_rgb_tw.."，\n每層 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_hits_rgb_tw.." 跟 "..COLORS_Numbers.rangcrtdmg_var_rgb.." "..COLORS_KWords_tw.Crit_hit_r_color_rgb_tw.."。\n上限 "..COLORS_Numbers.n_5_rgb.." 層，共 "..COLORS_Numbers.pc_50_rgb.." 。", -- 燃起來!
				-- 電漿槍 -- 5.5% and 4% | 7% and 6% | 8.5 and 8% | 10% and 10% (up to +50% and +50%)
			-- ["zh-cn"] = "随"..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."增长叠加层数，\n每层 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crt_chance_rgb_zh_cn.."，\n同时 "..COLORS_Numbers.rangcrtdmg_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_dmg_r_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。", -- 升温！
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ VOLATILE +]--
		-- Charge Time Reduction per stack (per tier)
		-- Plasma Gun -- 2.5% | 3% | 3.5% | 4% (up to 20%)
		["loc_trait_bespoke_lower_overheat_gives_faster_charge_desc"] = { -- charge_speed: +4%, stacks: 5, +colors
			en = COLORS_Numbers.p_chrgspd_var_rgb.." Charge Speed on low "..COLORS_KWords.Overheat_rgb..". Stacks up to "..COLORS_Numbers.stacks_var_rgb.." times.",
			ru = COLORS_Numbers.p_chrgspd_var_rgb.." к скорости заряжания выстрела при низком "..COLORS_KWords_ru.Heat2_rgb_ru..". Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.", -- Испарение
			-- fr = COLORS_Numbers.p_chrgspd_var_rgb.." de vitesse de charge lorsque votre surcharge est basse. Se cumule jusqu'à "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "在 "..COLORS_KWords_tw.Heat_rgb_tw.." 較低時，充能速度 "..COLORS_Numbers.p_chrgspd_var_rgb.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 熱力震盪
				-- 電漿槍 -- 2.5% | 3% | 3.5% | 4% (up to 20%)
			-- ["zh-cn"] = "随"..COLORS_KWords_zh_cn.Heat2_rgb_zh_cn.."增长减少层数，\n每层 "..COLORS_Numbers.p_chrgspd_var_rgb.." 充能速度，最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 易挥发
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ BLAZE AWAY ALT +]--
		-- Power per stack (per tier)
		-- Grenadier Gauntlet, Inferno Staff, Plasma Gun -- 5% | 6% | 7% | 8% (up to +40%)
		-- Kickback, Rumbler -- 6% | 7% | 8% | 9% (up to +45%)
		["loc_trait_bespoke_power_bonus_on_continuous_fire_alternative_desc"] = { -- power_level: +8%, stacks: 5, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for every shot fired during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. "
				..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." за каждый выстрел, сделанный во время непрерывной стрельбы. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..NTS.Pwr_note_rgb_ru, -- Стрельба без устали -- руоф Энтузиазм
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pour chaque tir effectué en tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "持續射擊時，每射出一發 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 連續發射
				-- 撕裂者自動手槍, 雙鏈重型機槍, 擲彈兵臂鎧, 電漿槍 -- 5% | 6% | 7% | 8% (up to +40%)
				-- 反衝者, 震盪槍 -- 6% | 7% | 8% | 9% (up to +45%)
			-- ["zh-cn"] = "连续射击期间，每次射击 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 连续射击
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ RISING HEAT +]--
		-- Power per stack (per tier)
		-- Plasma Gun -- 1.5% | 2% | 3% | 4% (up to +20%)
		["loc_trait_bespoke_power_bonus_scaled_on_heat_desc"] = { -- power_level: +8%, stacks: 5, +colors
			en = "Up to "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Strength_rgb.." scaling with "..COLORS_KWords.Heat_rgb.." Level. "
				..NTS.Pwr_note_rgb,
			ru = "До "..COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." в зависимости от уровня "..COLORS_KWords_ru.Heat_rgb_ru..". "
				..NTS.Pwr_note_rgb_ru, -- Нарастающий жар  -- руоф Сильная жара
			-- fr = "Jusqu'à "..COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." en fonction du niveau de "..COLORS_KWords_fr.Heat_rgb_fr.."."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "依據 "..COLORS_KWords_tw.Heat_rgb_tw.." 等級，最多 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 升溫
				-- 電漿槍 -- 1.5% | 2% | 3% | 4% (up to +20%)
			-- ["zh-cn"] = "随"..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."增长提升效果\n，最高 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 急剧升温
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ OPTIMISED COOLING +]--
		-- Overheat Cost Reduction per stack (per tier)
		-- Plasma Gun -- 4% | 6% | 8% | 10% (up to ~41%)
		["loc_trait_bespoke_reduced_heat_on_continuous_desc"] = { -- +colors
			en = COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_10_rgb.." "..COLORS_KWords.Heat_rgb.." generation per Stack for consecutive shots or charged shots.\n"
				..Dot_nc.." Stacks up to "..COLORS_Numbers.stacks_var_rgb.." times for a ~"..COLORS_Numbers.pc_41_rgb.." total reduction. "..Dot_red.." Description for T4!\n"
				..Dot_nc.." T1: "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_4_rgb.." | T2: "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_6_rgb.." | T3: "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_8_rgb..".",
			ru = COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_10_rgb.." к набору "..COLORS_KWords_ru.Heat_rgb_ru.." за заряд для серии выстрелов или для заряженных выстрелов. "..Dot_nc.." До "..COLORS_Numbers.stacks_var_rgb.." зарядов, вплоть до ~"..COLORS_Numbers.pc_41_rgb.." снижения "..COLORS_KWords_ru.Heat_rgb_ru..". "..Dot_red.." Описание 4 уровня! "..Dot_nc.." У1: "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_4_rgb.." | У2: "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_6_rgb.." | У3: "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_8_rgb..".", -- Оптимизированное охлаждение
			-- fr = "Vitesse de chargement augmentée inversement proportionnelle au niveau de "..COLORS_KWords_fr.Heat_rgb_fr..".",
			-- ["zh-tw"] = "連續精準射擊時，\n降低 "..COLORS_KWords_tw.Heat_rgb_tw.." 提升速度。上限 "..COLORS_Numbers.n_5_rgb.." 層。", -- 優化冷卻
				-- 電漿槍 -- 4% | 6% | 8% | 10% (up to ~41%)
			-- ["zh-cn"] = "连续射击期间，每次射击减少"..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."积累。最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。", -- 优化冷却
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ FOCUSED COOLING +]--
		-- Overheat Cost Reduction (per tier)
		-- Plasma Gun -- 30% | 40% | 50% | 60%
		["loc_trait_bespoke_reduced_overheat_on_crits_desc"] = { -- +colors
			en = COLORS_Numbers.n_minus_rgb..COLORS_Numbers.heat_pc_var_rgb.." "..COLORS_KWords.Heat_rgb.." generation on "..COLORS_KWords.Crit_hit_rgb..".",
			ru = COLORS_Numbers.n_minus_rgb..COLORS_Numbers.heat_pc_var_rgb.." "..COLORS_KWords_ru.Heat_rgb_ru.." вырабатывается при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru..".", -- Сфокусированное охлаждение -- руоф Сосредоточенное охлаждение
			-- fr = COLORS_Numbers.heat_pc_var_rgb.." de génération de "..COLORS_KWords_fr.Heat_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr..".",
			-- ["zh-tw"] = COLORS_KWords_tw.Crit_rgb_tw.." 時，產生的 "..COLORS_KWords_tw.Heat_rgb_tw.." 僅 "..COLORS_Numbers.heat_pc_var_rgb.."。", -- 專注冷卻
				-- 電漿槍 -- 30% | 40% | 50% | 60%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时，减少 "..COLORS_Numbers.heat_pc_var_rgb.." "..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."积累。", -- 专注冷却
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ GAUNTLET MOMENTUM +]--
		-- Melee Power per stack (per tier)
		-- Grenadier Gauntlet -- 5% | 5% | 5% | 5% (up to +50%) (bugged)
		["loc_trait_bespoke_power_bonus_on_chained_melee_desc"] = { -- power: 5%, stacks: 10, time: 1.5, +colors
			en = COLORS_Numbers.pwr_var_rgb.." Melee "..COLORS_KWords.Strength_rgb.." per Stack. Stacks on chained Melee hits, up to "..COLORS_Numbers.stacks_var_rgb.." times. Each Stack lasts "..COLORS_Numbers.time_var_rgb.." seconds. "
				..NTS.Pwr_note_rgb.."\n"
				..Dot_red.." {#color(255, 35, 5)}BUG:{#reset()} "..COLORS_Numbers.pc_5_rgb.." all tiers.",
			ru = COLORS_Numbers.pwr_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." в ближнем бою. До "..COLORS_Numbers.stacks_var_rgb.." зарядов при сериях ударов, длятся "..COLORS_Numbers.time_var_rgb.." секунды каждый. "
				..NTS.Pwr_note_rgb_ru.."\n"
				..Dot_red.." {#color(255, 35, 5)}СЛОМАНО:{#reset()} "..COLORS_Numbers.pc_5_rgb.." все уровни.", -- Инерция перчатки -- руоф Перчатка моментума
			-- fr = COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_1_rgb.." cumul de "..COLORS_Numbers.pwr_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." de mélée, est ajouté pour chaque attaque de mélée avec le Gantelet. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. Les cumuls dure "..COLORS_Numbers.time_var_rgb.." secondes. {#color(255, 35, 5)}(bug:5% tout les niveaux de la bénédiction){#reset()}"..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "連續近戰攻擊時， "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_1_rgb.." 層 "..COLORS_KWords_tw.Strength_m_rgb_tw.." 。\n每層 "..COLORS_Numbers.pwr_var_rgb.." 的 "..COLORS_KWords_tw.Strength_m_rgb_tw.." ，上限 "..COLORS_Numbers.stacks_var_rgb.." 層，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n{#color(255, 35, 5)}（已知問題：所有等級皆為 5%）{#reset()}" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 交叉動量
				-- 擲彈兵臂鎧 -- 5% | 5% | 5% | 5% (up to +50%) (bugged)
			-- ["zh-cn"] = "臂铠近战攻击命中敌人时\n"..COLORS_Numbers.pwr_var_rgb.." 臂铠近战"..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。{#color(255, 35, 5)}\n（BUG：无论祝福级别如何，\n数值始终为 +5% 强度。）{#reset()}"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 挑战势头
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ PULVERISE +]--
		-- Crit Chance (per tier)
		-- Grenadier Gauntlet -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_crit_chance_on_melee_kill_desc"] = { -- crit_chance: +25%, time: 3, +colors
			en = COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Melee Kill.",
			ru = COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при убийстве в ближнем бою.", -- Измельчение -- руоф Пульверизация
			fr = COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un élimination en mélée.",
			["zh-tw"] = "近戰擊殺時 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 粉碎
				-- 擲彈兵臂鎧 -- 10% | 15% | 20% | 25%
			["zh-cn"] = "臂铠近战攻击击杀敌人时\n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。", -- 粉碎
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ DISRUPTIVE +]--
		-- Melee Power (per tier)
		-- Grenadier Gauntlet -- 15% | 20% | 25% | 30%
		["loc_trait_bespoke_melee_power_bonus_after_explosion_desc"] = { -- power_level: 30%, time: 3.5, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." Melee "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds after hitting at least "..COLORS_Numbers.n_3_rgb.." enemies with a Secondary Attack. "
				..PHRS.Can_be_refr..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." в ближнем бою на "..COLORS_Numbers.time_var_rgb.." секунды после попадания по "..COLORS_Numbers.n_3_rgb.." и более врагам тяжёлой атакой. "
				..PHRS.Can_be_refr_ru..NTS.Pwr_note_rgb_ru, -- Разрывной эффект
			-- fr = "Toucher au moins "..COLORS_Numbers.n_3_rgb.." ennemies avec votre attaque secondaire vous octroie "..COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pour vos attaque de mélée pendant "..COLORS_Numbers.time_var_rgb.." secondes."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "當次要攻擊命中至少 "..COLORS_Numbers.n_3_rgb.." 名敵人時，\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_m_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 顛覆性力量
				-- 擲彈兵臂鎧 -- 15% | 20% | 25% | 30%
			-- ["zh-cn"] = "次要攻击命中至少 "..COLORS_Numbers.n_3_rgb.." 名敌人时，\n"..COLORS_Numbers.pwrlvl_var_rgb.." 近战"..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续"..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 破坏者
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ EXPLOSIVE OFFENSIVE +]--
		-- Power (per tier)
		-- Grenadier Gauntlet -- 6% | 9% | 12% | 15%
		["loc_trait_bespoke_power_bonus_after_weapon_special_multiple_desc"] = { -- power_level: 15%, time: 5, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds after hitting multiple enemies with your Weapon Special explosion. "
				..PHRS.Can_be_refr..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунд после попадания взрывом специальной атаки по нескольким врагам. "
				..PHRS.Can_be_refr_ru..NTS.Pwr_note_rgb_ru, -- Взрывное наступление
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." bonus pendant "..COLORS_Numbers.time_var_rgb.." secondes après avoir touché plusieurs ennemies avec l'explosion spéciale de votre arme."..NTS.Pwr_note_rgb,
			-- ["zh-tw"] = "特殊攻擊的爆炸命中多名敵人時，\n "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 爆炸使我強大
				-- 擲彈兵臂鎧 -- 6% | 9% | 12% | 15%
			-- ["zh-cn"] = "特殊攻击爆炸命中至少 "..COLORS_Numbers.n_3_rgb.." 名敌人时，\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。持续"..COLORS_Numbers.time_var_rgb.."秒。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 爆炸攻势
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ PINPOINTING TARGET +]--
		-- Power per stack (per tier)
		-- Grenadier Gauntlet, Shotpistol and Shield -- 5% | 6% | 7% | 8% (up to +40%)
		["loc_trait_bespoke_power_bonus_based_on_charge_time_ranged_desc"] = { -- power_level: +8%, time: 0.4, stacks: 5, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." every "..COLORS_Numbers.time_var_rgb.." seconds while aiming. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. Removes all Stacks on shot, on push, or when leaving alt fire mode. "
				..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." каждые "..COLORS_Numbers.time_var_rgb.." секунды пока вы целитесь. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. Все заряды сбрасываются при выстреле, толкании или выходе из режима прицеливания.", -- Определение цели
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." toutes les "..COLORS_Numbers.time_var_rgb.." secondes pendant la visée. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. Tous les cumuls sont déchargés lorsque vous tirez."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "持續瞄準時，\n每 "..COLORS_Numbers.time_var_rgb.." 秒 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。射擊後會重置所有層數。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 精確定位
				-- 擲彈兵臂鎧 -- 5% | 6% | 7% | 8% (up to +40%)
			-- ["zh-cn"] = "瞄准期间，每 "..COLORS_Numbers.time_var_rgb.." 秒 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层，射击后清空所有层数。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 精确定位
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ CHARMED RELOAD +]--
		-- Bullets Transferred (per tier)
		-- Twin-Linked Stubbers -- 2 | 3 | 4 | 5
		["loc_trait_bespoke_ammo_refill_from_reserve_on_crit_desc"] = { -- bullet_amount: +5, +colors
			en = COLORS_Numbers.blltam_var_rgb.." bullets loaded from Reserve on "..COLORS_KWords.Crit_hit_rgb..". "
				..Dot_nc.." Procs once per "..COLORS_KWords.Crit_rgb..". The shot does not need to hit an enemy.",
			ru = COLORS_Numbers.blltam_var_rgb.." патронов заряжается из резерва при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru..". "
				..Dot_nc.." Срабатывает раз за "..COLORS_KWords_ru.Crit_chance_l_rgb_ru..". Выстрелу не обязательно попадать во врага.", -- Зачарованная перезарядка
			-- fr = COLORS_Numbers.n_plus_rgb..COLORS_Numbers.blltam_var_rgb.." Munitions chargées depuis la réserve lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr..".",
			-- ["zh-tw"] = COLORS_KWords_tw.Crit_hit_rgb_tw.." ，從備彈中補充 "..COLORS_Numbers.blltam_var_rgb.." 發子彈。", -- 魔力彈藥
				-- 雙鏈重型機槍 -- 2 | 3 | 4 | 5
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时，从弹药储备填装 "..COLORS_Numbers.blltam_var_rgb.." 枚弹药。", -- 魅惑重装
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ OVERWHELMING FIRE +]--
		-- Ranged Power per stack (per tier)
		-- Heavy Stubbers, Twin-Linked Stubbers -- 7% | 8% | 9% | 10% (up to +50%)
		["loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target_desc"] = { -- power: +10%, hit: 4, time: 2, stacks: 5, s->seconds, +colors
			en = COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords.Strength_rgb.." for every "..COLORS_Numbers.hit_var_rgb.." Single Target Hits. Lasts "..COLORS_Numbers.time_var_rgb.." seconds. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.\n"
				..PHRS.Can_be_refr..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwr_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." за каждое "..COLORS_Numbers.hit_var_rgb.." попадание по одному врагу. Длится "..COLORS_Numbers.time_var_rgb.." секунды. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз. "
				..PHRS.Can_be_refr_ru..NTS.Pwr_note_rgb_ru, -- Подавляющий огонь -- руоф Огонь на поражение
			-- fr = COLORS_Numbers.pwr_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pour toutes les "..COLORS_Numbers.hit_var_rgb.." attaques sur une cible unique. Dure "..COLORS_Numbers.time_var_rgb.." secondes и se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "每命中同一目標 "..COLORS_Numbers.hit_var_rgb.." 次 "..COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 壓倒性火力
				-- 雙鏈重型機槍 -- 7% | 8% | 9% | 10% (up to +50%)
			-- ["zh-cn"] = "每命中同一敌人 "..COLORS_Numbers.hit_var_rgb.." 次 "..COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 狂猛火力
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ CAN OPENER +]--
		-- Brittleness Stacks (per tier)
		-- Ripper Guns -- 10 | 12 | 14 | 16
		["loc_trait_bespoke_armor_rending_bayonette_desc"] = { -- rending: 2.5%, stacks: 16, time: 5, max_stacks: 16, s->seconds, +colors
			en = COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Brittleness_rgb.." is applied to the enemy on weapon Special Hit. Lasts "..COLORS_Numbers.time_var_rgb.." seconds. Max "..COLORS_Numbers.maxstks_var_rgb.." Stacks, up to "..COLORS_Numbers.pc_40_rgb..".\n"
				..NTS.Brtl_note_rgb,
			ru = COLORS_Numbers.stacks_var_rgb.." зарядов по "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." брони применяется к врагу при ударе специальной атакой. Длится "..COLORS_Numbers.time_var_rgb.." секунд. До "..COLORS_Numbers.pc_40_rgb.." при "..COLORS_Numbers.maxstks_var_rgb.." зарядах. "
				..NTS.Brtl_note_rgb_ru, -- Открывашка
			-- fr = "Toucher un ennemi avec l'attaque spéciale lui octroie"..COLORS_Numbers.stacks_var_rgb.." cumuls de "..COLORS_Numbers.rending_var_rgb.." de "..COLORS_KWords_fr.Brittleness_rgb_fr..". Dure "..COLORS_Numbers.time_var_rgb.." secondes. Pour un maximum de "..COLORS_Numbers.maxstks_var_rgb.." cumuls, Pour un total de "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords_fr.Brtl_note_rgb_fr,
			-- ["zh-tw"] = "特殊攻擊命中敵人時，\n使其獲得 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Brittleness_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒， "..COLORS_Numbers.maxstks_var_rgb.." 層時為 "..COLORS_Numbers.pc_40_rgb.." 。" .. COLORS_KWords_tw.Brtl_note_rgb_tw, -- 開罐器
				-- 撕裂槍 -- 10 | 12 | 14 | 16
			-- ["zh-cn"] = "特殊攻击命中时，对目标施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.maxstks_var_rgb.." 层，最高 "..COLORS_Numbers.pc_40_rgb.."。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn, -- 开罐器
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ BORN IN BLOOD +]--
		-- Max Toughness Percentage (per tier)
		-- Exterminator Shotguns, Ripper Guns -- 4.5% | 5% | 5.5% | 6%
		["loc_trait_bespoke_toughness_on_close_range_kills_desc"] = { -- toughness: +6%, +colors
			en = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." on killing enemies within "..COLORS_Numbers.n_12_5_rgb.." meters. "
				..Dot_green.." Can proc multiple times per shot.",
			ru = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." при убийстве на расстоянии до "..COLORS_Numbers.n_12_5_rgb.." метров. "
				..Dot_green.." Может срабатывать несколько раз за выстрел.", -- Рождённый в крови -- руоф Рожденный в крови
			-- fr = COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une élimination à moins de "..COLORS_Numbers.n_12_5_rgb.." mètres.",
			-- ["zh-tw"] = COLORS_Numbers.n_12_5_rgb.." 公尺內擊殺敵人 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."。", -- 浴血而生
				-- 撕裂槍 -- 4.5% | 5% | 5.5% | 6%
			-- ["zh-cn"] = "击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时，"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。", -- 浴血而生
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ PIERCE +]--
		-- Melee Stagger Strength (per tier)
		-- Kickback, Rumbler -- 10% | 15% | 20% | 25%
		["loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger_desc"] = { -- stagger: +25%, +colors
			en = "Special Attacks gain "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords.Stagger_rgb.." and ignore "..COLORS_KWords.Hit_mass_rgb.." Bonus from Armour.\n"
				..Dot_green.." Carapace armor can be "..COLORS_KWords.Cleaved_rgb..".",
			ru = "Специальные атаки дают "..COLORS_Numbers.stgr_var_rgb.." к "..COLORS_KWords_ru.Stagger2_rgb_ru.." и игнорируют усиления "..COLORS_KWords_ru.Hit_masss_rgb_ru.." врага от брони.\n"
				..Dot_green.." Панцирная броня "..COLORS_KWords_ru.Cleaving_etsa_rgb_ru..".", -- Пробивание -- руоф Прокол
			-- fr = "L'attaque spéciale gagne "..COLORS_Numbers.stgr_var_rgb.." de "..COLORS_KWords_fr.Stagger_rgb_fr.." и ignore le "..COLORS_KWords_fr.Hit_mass_rgb_fr.." de l'armure.",
			-- ["zh-tw"] = "武器特殊攻擊可無視敵方護甲 "..COLORS_KWords_tw.Hit_mass_rgb_tw.."，\n並附加 "..COLORS_Numbers.stgr_var_rgb.." 的 "..COLORS_KWords_tw.Stagger2_rgb_tw.." 。", -- 穿透
				-- 反衝者, 震盪槍 -- 10% | 15% | 20% | 25%
			-- ["zh-cn"] = "特殊攻击 "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."，\n同时无视装甲赋予的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn, -- 穿透
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ PUNISHING FIRE +]--
		-- Ranged Power (per tier)
		-- Kickback -- 6% | 9% | 12% | 15%
		["loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave_desc"] = { -- power_level: +15%, time: 3, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." on your Ranged attack for "..COLORS_Numbers.time_var_rgb.." seconds after "..COLORS_KWords.Cleaving_rgb.." through several enemies with your weapon's Special attack. "
				..PHRS.Can_be_refr,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." для ваших дальнобойных атак на "..COLORS_Numbers.time_var_rgb.." секунды после того как специальная атака вашего оружия пробивает несколько врагов.\n"
				..PHRS.Can_be_refr_ru, -- Карательный обстрел
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." sur vos attaques à distance pendant "..COLORS_Numbers.time_var_rgb.." secondes после avoir "..COLORS_KWords_fr.Cleaving_rgb_fr.." plusieurs ennemies avec l'attaque spéciale de votre arme."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "特殊攻擊貫穿(順劈)多名敵人\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_r_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 懲罰射擊
				-- 反衝者 -- 6% | 9% | 12% | 15%
			-- ["zh-cn"] = "特殊攻击命中至少 "..COLORS_Numbers.n_3_rgb.." 名敌人时\n"..COLORS_Numbers.pwrlvl_var_rgb.." 远程"..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 惩罚之火
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ INSPIRING BARRAGE ALT +]--
		-- Max Toughness Percentage per stack (per tier)
		-- Kickback -- 1% | 2% | 3% | 4% (up to 20%)
		["loc_trait_bespoke_toughness_on_continuous_fire_alternative_desc"] = { -- toughness: +4%, ammo: 10%, stacks: 5, +colors
			en = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." for every shot fired during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.",
			ru = COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." за каждый выстрел, сделанный во время непрерывной стрельбы. Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.", -- Вдохновляющий обстрел -- руоф Вдохновляющий натиск
			-- fr = COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour chaque tir lors d'un tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "持續射擊時，每射一發恢復 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 激勵彈幕
				-- 反衝者 -- 1% | 2% | 3% | 4% (up to 20%)
			-- ["zh-cn"] = "连续射击期间，每次射击回复"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn..",\n每叠加 "..COLORS_Numbers.n_1_rgb.." 层，"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."回复效果 "..COLORS_Numbers.tghns_var_rgb.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 鼓舞弹幕
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ EXPANSIVE +]--
		-- Melee Power (per tier)
		-- Kickback -- 30% | 34% | 38% | 42%
		["loc_trait_bespoke_weapon_special_power_bonus_after_one_shots_desc"] = { -- power_level: +42%, time: 3.5, s->seconds, +colors
			en = COLORS_Numbers.pwrlvl_var_rgb.." Melee "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Hitting "..COLORS_Numbers.n_3_rgb..COLORS_Numbers.n_plus_rgb.." Enemies with a Ranged Attack.\n"
				..PHRS.Can_be_refr..NTS.Pwr_note_rgb,
			ru = COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." ближнего боя на "..COLORS_Numbers.time_var_rgb.." секунды при попадании по "..COLORS_Numbers.n_3_rgb.." и более врагам атакой дальнего боя.\n"
				..PHRS.Can_be_refr_ru, -- Экспансивный -- руоф Расширение
			-- fr = COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." de mélée pendant "..COLORS_Numbers.time_var_rgb.." secondes en touchant au moins "..COLORS_Numbers.n_3_rgb.." ennemies avec une attaque à distance."..COLORS_KWords_fr.NTS.Pwr_note_rgb_fr,
			-- ["zh-tw"] = "遠程攻擊同時命中 "..COLORS_Numbers.n_3_rgb.." 名以上敵人\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_m_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。" .. COLORS_KWords_tw.NTS.Pwr_note_rgb_tw, -- 擴展性
				-- 反衝者 -- 30% | 34% | 38% | 42%
			-- ["zh-cn"] = "命中至少 "..COLORS_Numbers.n_3_rgb.." 名敌人时\n"..COLORS_Numbers.pwrlvl_var_rgb.." 近战"..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.NTS.Pwr_note_rgb_zh_cn, -- 扩展
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ SHRAPNEL +]--
		-- Bleed Stacks (per tier)
		-- Rumbler -- 1 | 2 | 3 | 4
		["loc_trait_bespoke_close_explosion_applies_bleed_desc"] = { -- stacks: 4, +colors
			en = COLORS_Numbers.stacks_var_rgb.." "..COLORS_KWords.Bleed_rgb.." Stacks applied to enemies from close range explosions. "
				..Dot_nc.." Up to "..COLORS_Numbers.n_16_rgb.." Stacks.\n"..Dot_green.." Can apply through shields. "..PHRS.Refr_dur_stappl,
			ru = COLORS_Numbers.stacks_var_rgb.." заряда "..COLORS_KWords_ru.Bleed_rgb_ru.." получают враги от взрывов на близком расстоянии. "
				..Dot_nc.." До "..COLORS_Numbers.n_16_rgb.." зарядов. "..Dot_green.." Накладывается через щиты. "..PHRS.Refr_dur_stappl_ru, -- Шрапнель
			-- fr = COLORS_Numbers.p_stacks_var_rgb.." cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." avec les explosions rapprochées.",
			-- ["zh-tw"] = COLORS_Numbers.n_12_5_rgb.." 公尺內的爆炸會施加 "..COLORS_Numbers.p_stacks_var_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.."。", -- 破片四射
				-- 震盪槍 -- 1 | 2 | 3 | 4
			-- ["zh-cn"] = "低吼者的榴弹爆炸中心范围 "..COLORS_Numbers.p_stacks_var_rgb.." 层 "..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."。", -- 弹片
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ BLAST ZONE +]--
		-- Explosion Radius Increase per stack (per tier)
		-- Rumbler -- 3% | 4% | 5% | 6% (up to +30%)
		["loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire_desc"] = { -- radius: +6%, stacks: 5, +colors
			en = COLORS_Numbers.radius_var_rgb.." Explosion Radius for every shot fired during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.",
			ru = COLORS_Numbers.radius_var_rgb.." к радиусу взрыва за каждый выстрел, сделанный во время непрерывной стрельбы. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.", -- Зона взрыва
			-- fr = COLORS_Numbers.radius_var_rgb.." de rayon d'explosion pour chaque tir d'un tir continue. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.",
			-- ["zh-tw"] = "持續射擊時，\n每發可使爆炸半徑 "..COLORS_Numbers.radius_var_rgb.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。", -- 狂轟猛炸
				-- 震盪槍 -- 3% | 4% | 5% | 6% (up to +30%)
			-- ["zh-cn"] = "连续射击期间，每次射击"..COLORS_Numbers.radius_var_rgb.."爆炸范围。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。", -- 爆炸区域
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ ADHESIVE CHARGE +]--
		-- Damage vs Ogryns and Monstrosities (per tier)
		-- Rumbler -- 6% | 9% | 12% | 15%
		["loc_trait_bespoke_grenades_stick_to_monsters_and_damage_desc"] = { -- dmg_vs_ogryn_monster: +15%, +colors
			en = COLORS_Numbers.dmgvogrmon_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Ogryns and Monstrosities. Your Grenades Stick to Ogryns and Monstrosities.",
			ru = COLORS_Numbers.dmgvogrmon_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." огринам и монстрам. Ваши гранаты прилипают к ним.", -- Липкий заряд -- руоф Цепной заряд
			-- fr = COLORS_Numbers.dmgvogrmon_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les Ogryns et les Monstruosités. Vos grenades s'accrochent aux Ogryns и Monstrosities.",
			-- ["zh-tw"] = "對歐格林與巨獸的 "..COLORS_KWords_tw.Damage_rgb_tw.." "..COLORS_Numbers.dmgvogrmon_var_rgb.."，\n且你的手榴彈會黏附在歐格林與怪物身上。", -- 黏著炸藥
				-- 震盪槍 -- 6% | 9% | 12% | 15%
			-- ["zh-cn"] = COLORS_Numbers.dmgvogrmon_var_rgb.." 对欧格林和怪物"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。\n低吼者的榴弹会粘在欧格林和怪物身上。", -- 粘性炸药
			-- de = "",
			-- it = "",
			-- ja = "",
			-- ko = "",
			-- pl = "",
			-- ["pt-br"] = "",
			-- es = "",
		},
		--[+ MARKSMAN'S REFLEX +]--
		-- Reload Speed (per tier)
		-- Rumbler -- 15% | 20% | 25% | 30%
		["loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed_desc"] = { -- reload_speed: +30%, duration: 3, +colors
			en = COLORS_Numbers.reload_var_rgb.." Reload Speed for "..COLORS_Numbers.dur_var_rgb.." seconds on Projectile "..COLORS_KWords.Weakspothit_rgb..". "
				..Dot_red.." Cannot be refreshed during active duration.",
			ru = COLORS_Numbers.reload_var_rgb.." к скорости перезарядки на "..COLORS_Numbers.dur_var_rgb.." секунды при попадании снаряда в "..COLORS_KWords_ru.Weakspot_rgb_ru..". "
				..Dot_red.." Не обновляется во время действия.", -- Рефлекс стрелка
			-- fr = COLORS_Numbers.reload_var_rgb.." de vitesse de rechargement pendant "..COLORS_Numbers.dur_var_rgb.." secondes lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr..".",
			-- ["zh-tw"] = "當子彈命中 "..COLORS_KWords_tw.Weakspot_rgb_tw.." 時 "..COLORS_Numbers.reload_var_rgb.." 換彈速度，\n持續 "..COLORS_Numbers.dur_var_rgb.." 秒。", -- 迅雷反射
				-- 震盪槍 -- 15% | 20% | 25% | 30%
			-- ["zh-cn"] = COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时 "..COLORS_Numbers.reload_var_rgb.." 装弹速度，持续"..COLORS_Numbers.dur_var_rgb.."秒。", -- 神射手的反射
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
for loc_key, locales in pairs(talent_localizations) do
	for locale, text in pairs(locales) do
		table.insert(localization_templates, {
			loc_keys = {loc_key},
			locales = {locale},
			handle_func = loc_text(text)
		})
	end
end

-- mod:info("WEAPONS_Blessings_Perks.lua loaded successfully")

return localization_templates
