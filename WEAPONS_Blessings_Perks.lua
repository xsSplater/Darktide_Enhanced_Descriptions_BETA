---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")

--[+ Loading colors of Keywords and Numbers +]--
COLORS_Numbers = mod:io_dofile("Enhanced_descriptions/COLORS_Numbers")
-- All Numbers are taken from this file by adding to the value "COLORS_Numbers.".
-- For example, in the game the Damage value is taken from the variable {damage:%s}, which in the file "COLORS_Numbers.lua" is replaced by dmg_var_rgb and to add the highlighted number to the text, we write the damage number to the text as "..COLORS_Numbers.dmg_var_rgb..".

COLORS_KWords = mod:io_dofile("Enhanced_descriptions/Loc_EN/COLORS_KWords")
-- All Keywords are taken from this file by adding to the value "COLORS_KWords.".
-- For example, in the file "COLORS_KWords.lua" the word Damage is replaced by Damage_rgb and to add the highlighted word to the text we write it as "..COLORS_KWords.Damage_rgb.".

--[+ Translations +]-- Add a line with a file of Keywords translated into your language.
	--[+ French +]--
	COLORS_KWords_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/COLORS_KWords_fr")
	--[+ Russian +]--
	COLORS_KWords_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/COLORS_KWords_ru")
	--[+ Traditional Chinese +]--
	COLORS_KWords_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/COLORS_KWords_tw")
	--[+ Simplified Chinese +]--
	COLORS_KWords_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/COLORS_KWords_zh_cn") 

--[+ Function to create a localization template +]--
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end

--[+ Getting rid of repeating parts: function(locale, value) return ... end +]--
local function loc_text(text)
	return function(locale, value) return text end
end

--[+ Define localization templates +]--
local localization_templates = {
-- Duplicate the line and translate. For example:
	-- create_template("weap_bb0_ext_en",
		-- {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"en"},
			-- loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies")),
	-- create_template("weap_bb0_ext_YOURLANGUAGE",
		-- {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"YOURLANGUAGE"},
			-- loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords.Damage_rgb_YOURLANGUAGE.." против врагов в противоосколочной броне.")), <- Don't forget the comma at the end!


--[+ ++WEAPON - PERKS - 武器专长++ +]--
	--[+ MELEE - 近戰武器 - 近战武器 +]--
-- !!! ENGLISH AND RUSSIAN PERKS PROOFREADED 26.04.2025
		--[+ +DAMAGE VS FLAK +]--
			create_template("weap_wpm0_ext_en",
				{"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies")), -- +colors
			--[+ French +]--
			create_template("weap_wpm0_ext_fr",
				{"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Ennemies en armure légère")),
			--[+ Russian +]--
			create_template("weap_wpm0_ext_ru",
				{"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам в противоосколочной броне")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 防彈護甲的敵人 +]--
			create_template("weap_wpm0_ext_tw",
				{"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 防彈護甲的敵人")),
			--[+ Simplified Chinese - 防弹装甲敌人+]--
			create_template("weap_wpm0_ext_zh_cn",
				{"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（防弹装甲敌人）")),

		--[+ +DAMAGE VS MANIACS +]--
			create_template("weap_wpm1_ext_en",
				{"loc_trait_melee_common_wield_increased_berserker_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Maniacs")), -- colors
			--[+ French +]--
			create_template("weap_wpm1_ext_fr",
				{"loc_trait_melee_common_wield_increased_berserker_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Maniaques")),
			--[+ Russian +]--
			create_template("weap_wpm1_ext_ru",
				{"loc_trait_melee_common_wield_increased_berserker_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." маньякам")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 狂熱者 +]--
			create_template("weap_wpm1_ext_tw",
				{"loc_trait_melee_common_wield_increased_berserker_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 狂熱者")),
			--[+ Simplified Chinese - 狂人 +]--
			create_template("weap_wpm1_ext_zh_cn",
				{"loc_trait_melee_common_wield_increased_berserker_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（狂人）")),

		--[+ +DAMAGE VS INFESTED +]--
			create_template("weap_wpm2_ext_en",
				{"loc_trait_melee_common_wield_increased_disgustingly_resilient_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Infested Enemies")), -- colors
			--[+ French +]--
			create_template("weap_wpm2_ext_fr",
				{"loc_trait_melee_common_wield_increased_disgustingly_resilient_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Ennemies infestés")),
			--[+ Russian +]--
			create_template("weap_wpm2_ext_ru",
				{"loc_trait_melee_common_wield_increased_disgustingly_resilient_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." заражённым")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 被感染的敵人 +]--
			create_template("weap_wpm2_ext_tw",
				{"loc_trait_melee_common_wield_increased_disgustingly_resilient_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 被感染的敵人")),
			--[+ Simplified Chinese - 感染敌人 +]--
			create_template("weap_wpm2_ext_zh_cn",
				{"loc_trait_melee_common_wield_increased_disgustingly_resilient_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（感染敌人）")),

		--[+ +DAMAGE VS UNYIELDING +]--
			create_template("weap_wpm3_ext_en",
				{"loc_trait_melee_common_wield_increased_resistant_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Unyielding Enemies")), -- colors
			--[+ French +]--
			create_template("weap_wpm3_ext_fr",
				{"loc_trait_melee_common_wield_increased_resistant_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Ennemies implacables")),
			--[+ Russian +]--
			create_template("weap_wpm3_ext_ru",
				{"loc_trait_melee_common_wield_increased_resistant_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." несгибаемым")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 不屈的敵人 +]--
			create_template("weap_wpm3_ext_tw",
				{"loc_trait_melee_common_wield_increased_resistant_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 不屈的敵人")),
			--[+ Simplified Chinese - 不屈敌人 +]--
			create_template("weap_wpm3_ext_zh_cn",
				{"loc_trait_melee_common_wield_increased_resistant_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（不屈敌人）")),

		--[+ +DAMAGE VS CARAPACE +]--
			create_template("weap_wpm4_ext_en",
				{"loc_trait_melee_common_wield_increased_super_armor_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Carapace Enemies")), -- colors
			--[+ French +]--
			create_template("weap_wpm4_ext_fr",
				{"loc_trait_melee_common_wield_increased_super_armor_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Ennemies en armure carapace")),
			--[+ Russian +]--
			create_template("weap_wpm4_ext_ru",
				{"loc_trait_melee_common_wield_increased_super_armor_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам в панцирной броне")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 甲殼護甲的敵人 +]--
			create_template("weap_wpm4_ext_tw",
				{"loc_trait_melee_common_wield_increased_super_armor_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 甲殼護甲的敵人")),
			--[+ Simplified Chinese - 硬壳装甲敌人 +]--
			create_template("weap_wpm4_ext_zh_cn",
				{"loc_trait_melee_common_wield_increased_super_armor_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（硬壳装甲敌人）")),

		--[+ +DAMAGE VS UNARMOURED +]--
			create_template("weap_wpm5_ext_en",
				{"loc_trait_melee_common_wield_increased_unarmored_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Unarmoured Enemies")), -- colors
			--[+ French +]--
			create_template("weap_wpm5_ext_fr",
				{"loc_trait_melee_common_wield_increased_unarmored_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Ennemies sans armure")),
			--[+ Russian +]--
			create_template("weap_wpm5_ext_ru",
				{"loc_trait_melee_common_wield_increased_unarmored_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам без брони")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 無護甲敵人 +]--
			create_template("weap_wpm5_ext_tw",
				{"loc_trait_melee_common_wield_increased_unarmored_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 無護甲敵人")),
			--[+ Simplified Chinese - 无甲敌人 +]--
			create_template("weap_wpm5_ext_zh_cn",
				{"loc_trait_melee_common_wield_increased_unarmored_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（无甲敌人）")),

		--[+ +CRIT CHANCE +]--
			create_template("weap_wpm6_ext_en",
				{"loc_trait_melee_common_wield_increase_critical_hit_chance_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." Melee "..COLORS_KWords.Crit_chance_rgb)), -- colors
			--[+ French +]--
			create_template("weap_wpm6_ext_fr",
				{"loc_trait_melee_common_wield_increase_critical_hit_chance_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_fr.Crit_chance_rgb_fr.." en Mélée")),
			--[+ Russian +]--
			create_template("weap_wpm6_ext_ru",
				{"loc_trait_melee_common_wield_increase_critical_hit_chance_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." в ближнем бою")), -- +цвета, переписано
			--[+ Traditional Chinese - 暴擊機率 +]--
			create_template("weap_wpm6_ext_tw",
				{"loc_trait_melee_common_wield_increase_critical_hit_chance_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_m_chance_rgb_tw)),
			--[+ Simplified Chinese - 暴击几率 +]--
			create_template("weap_wpm6_ext_zh_cn",
				{"loc_trait_melee_common_wield_increase_critical_hit_chance_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.crit_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.." ")),

		--[+ +CRIT DAMAGE +]--
			create_template("weap_wpm7_ext_en",
				{"loc_trait_melee_common_wield_wield_increase_critical_strike_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.critdmg_var_rgb.." Melee "..COLORS_KWords.Crit_hit_color_rgb)), -- colors
			--[+ French +]--
			create_template("weap_wpm7_ext_fr",
				{"loc_trait_melee_common_wield_wield_increase_critical_strike_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.critdmg_var_rgb.." "..COLORS_KWords_fr.Crit_hit_color_rgb_fr.." de Mélée")),
			--[+ Russian +]--
			create_template("weap_wpm7_ext_ru",
				{"loc_trait_melee_common_wield_wield_increase_critical_strike_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.critdmg_var_rgb.." к "..COLORS_KWords_ru.Crit_dmg_u_rgb_ru.." в ближнем бою")), -- +цвета, переписано
			--[+ Traditional Chinese - 暴擊傷害 +]--
			create_template("weap_wpm7_ext_tw",
				{"loc_trait_melee_common_wield_wield_increase_critical_strike_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.critdmg_var_rgb.." "..COLORS_KWords_tw.Crit_hit_m_color_rgb_tw)),
			--[+ Simplified Chinese - 暴击伤害 +]--
			create_template("weap_wpm7_ext_zh_cn",
				{"loc_trait_melee_common_wield_wield_increase_critical_strike_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.critdmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_hit_color_rgb_zh_cn.." ")),

		--[+ +DAMAGE VS GROANERS AND POXWALKERS +]--
			create_template("weap_wpm8_ext_en",
				{"loc_trait_melee_common_wield_increase_horde_enemy_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." Melee "..COLORS_KWords.Damage_rgb.." vs Groaners and Poxwalkers")), -- colors
			--[+ French +]--
			create_template("weap_wpm8_ext_fr",
				{"loc_trait_melee_common_wield_increase_horde_enemy_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Grogneurs et Scrofuleux")),
			--[+ Russian +]--
			create_template("weap_wpm8_ext_ru",
				{"loc_trait_melee_common_wield_increase_horde_enemy_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." ворчунам и чумным ходокам в ближнем бою")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 呻吟者、瘟疫行者 +]--
			create_template("weap_wpm8_ext_tw",
				{"loc_trait_melee_common_wield_increase_horde_enemy_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_melee_rgb_tw.." vs 呻吟者和瘟疫行者")),
			--[+ Simplified Chinese - 呻吟者、瘟疫行者 +]--
			create_template("weap_wpm8_ext_zh_cn",
				{"loc_trait_melee_common_wield_increase_horde_enemy_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（呻吟者、瘟疫行者）")),

		--[+ +DAMAGE VS ELITES +]--
			create_template("weap_wpm9_ext_en",
				{"loc_trait_melee_common_wield_increase_elite_enemy_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." Melee "..COLORS_KWords.Damage_rgb.." vs Elites")), -- colors
			--[+ French +]--
			create_template("weap_wpm9_ext_fr",
				{"loc_trait_melee_common_wield_increase_elite_enemy_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Élites")),
			--[+ Russian +]--
			create_template("weap_wpm9_ext_ru",
				{"loc_trait_melee_common_wield_increase_elite_enemy_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." элитным врагам в ближнем бою")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 精英 +]--
			create_template("weap_wpm9_ext_tw",
				{"loc_trait_melee_common_wield_increase_elite_enemy_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_melee_rgb_tw.." vs 精英")),
			--[+ Simplified Chinese - 精英 +]--
			create_template("weap_wpm9_ext_zh_cn",
				{"loc_trait_melee_common_wield_increase_elite_enemy_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（精英）")),

		--[+ +DAMAGE VS SPECIALISTS +]--
			create_template("weap_wpm10_ext_en",
				{"loc_trait_melee_common_wield_increase_special_enemy_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." Melee "..COLORS_KWords.Damage_rgb.." vs Specialists")), -- colors
			--[+ French +]--
			create_template("weap_wpm10_ext_fr",
				{"loc_trait_melee_common_wield_increase_special_enemy_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée vs Spécialistes")),
			--[+ Russian +]--
			create_template("weap_wpm10_ext_ru",
				{"loc_trait_melee_common_wield_increase_special_enemy_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." специалистам в ближнем бою")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 專家 +]--
			create_template("weap_wpm10_ext_tw",
				{"loc_trait_melee_common_wield_increase_special_enemy_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_melee_rgb_tw.." vs 專家")),
			--[+ Simplified Chinese - 专家 +]--
			create_template("weap_wpm10_ext_zh_cn",
				{"loc_trait_melee_common_wield_increase_special_enemy_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（专家）")),

		--[+ +STAMINA +]--
			create_template("weap_wpm11_ext_en",
				{"loc_trait_melee_common_wield_increase_stamina_desc"}, {"en"},
					loc_text(COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords.Stamina_rgb)), -- colors
			--[+ French +]--
			create_template("weap_wpm11_ext_fr",
				{"loc_trait_melee_common_wield_increase_stamina_desc"}, {"fr"},
					loc_text(COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords_fr.Stamina_rgb_fr)),
			--[+ Russian +]--
			create_template("weap_wpm11_ext_ru",
				{"loc_trait_melee_common_wield_increase_stamina_desc"}, {"ru"},
					loc_text(COLORS_Numbers.stam_var_rgb.." ячейки "..COLORS_KWords_ru.Stamina_rgb_ru)), -- +цвета, переписано
			--[+ Traditional Chinese - 耐力 +]--
			create_template("weap_wpm11_ext_tw",
				{"loc_trait_melee_common_wield_increase_stamina_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords_tw.Stamina_rgb_tw)),
			--[+ Simplified Chinese - 耐力 +]--
			create_template("weap_wpm11_ext_zh_cn",
				{"loc_trait_melee_common_wield_increase_stamina_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.stam_var_rgb.." 最大"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn)),

		--[+ +WEAKSPOT DAMAGE +]--
			create_template("weap_wpm12_ext_en",
				{"loc_trait_melee_common_wield_increase_weakspot_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." Melee "..COLORS_KWords.Weakspot_dmg_rgb)), -- colors
			--[+ French +]--
			create_template("weap_wpm12_ext_fr",
				{"loc_trait_melee_common_wield_increase_weakspot_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." en Mélée")),
			--[+ Russian +]--
			create_template("weap_wpm12_ext_ru",
				{"loc_trait_melee_common_wield_increase_weakspot_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." в ближнем бою")), -- +цвета, переписано
			--[+ Traditional Chinese - 弱點傷害 +]--
			create_template("weap_wpm12_ext_tw",
				{"loc_trait_melee_common_wield_increase_weakspot_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_m_dmg_rgb_tw)),
			--[+ Simplified Chinese - 弱点伤害 +]--
			create_template("weap_wpm12_ext_zh_cn",
				{"loc_trait_melee_common_wield_increase_weakspot_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.." ")),

		--[+ +BLOCK EFFICIENCY +]--
			create_template("weap_wpm13_ext_en",
				{"loc_trait_melee_common_wield_reduce_block_cost_desc"}, {"en"},
					loc_text(COLORS_Numbers.rbc_rgb.." Block Efficiency")), -- colors
			--[+ French +]--
			create_template("weap_wpm13_ext_fr",
				{"loc_trait_melee_common_wield_reduce_block_cost_desc"}, {"fr"},
					loc_text(COLORS_Numbers.rbc_rgb.." d'éfficacité de blocage")),
			--[+ Russian +]--
			create_template("weap_wpm13_ext_ru",
				{"loc_trait_melee_common_wield_reduce_block_cost_desc"}, {"ru"},
					loc_text(COLORS_Numbers.rbc_rgb.." к эффективности блока")), -- +цвета
			--[+ Traditional Chinese - 格檔效率 +]--
			create_template("weap_wpm13_ext_tw",
				{"loc_trait_melee_common_wield_reduce_block_cost_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.rbc_rgb.." 格擋效率")),
			--[+ Simplified Chinese - 格挡效益 +]--
			create_template("weap_wpm13_ext_zh_cn",
				{"loc_trait_melee_common_wield_reduce_block_cost_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.rbc_rgb.." 格挡效益")),

		--[+ -COST FOR SPRINTING +]--
			create_template("weap_wpm14_ext_en",
				{"loc_gadget_sprint_cost_reduction_desc"}, {"en"},
					loc_text(COLORS_Numbers.bcm_rgb.." "..COLORS_KWords.Stamina_rgb.." Cost Reduction for Sprinting")), -- colors
			--[+ French +]--
			create_template("weap_wpm14_ext_fr",
				{"loc_gadget_sprint_cost_reduction_desc"}, {"fr"},
					loc_text(COLORS_Numbers.bcm_rgb.." de réduction du coût d'"..COLORS_KWords_fr.Stamina_rgb_fr.." de la course")),
			--[+ Russian +]--
			create_template("weap_wpm14_ext_ru",
				{"loc_gadget_sprint_cost_reduction_desc"}, {"ru"},
					loc_text(COLORS_Numbers.bcm_rgb.." к снижению затрат "..COLORS_KWords_ru.Stamina_rgb_ru.." на бег")), -- +цвета, переписано
			--[+ Traditional Chinese - 衝刺體力消耗 +]--
			create_template("weap_wpm14_ext_tw",
				{"loc_gadget_sprint_cost_reduction_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.bcm_rgb.." "..COLORS_KWords_tw.Stamina_se_rgb_tw)),
			--[+ Simplified Chinese - 疾跑效益 +]--
			create_template("weap_wpm14_ext_zh_cn",
				{"loc_gadget_sprint_cost_reduction_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.bcm_rgb.." 疾跑"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."效益")),

	--[+ RANGED - 遠程武器 - 远程武器 +]--
		--[+ +DAMAGE VS FLAK +]--
			create_template("weap_wpr0_ext_en",
				{"loc_trait_ranged_common_wield_armored_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies")), -- colors
			--[+ French +]--
			create_template("weap_wpr0_ext_fr",
				{"loc_trait_ranged_common_wield_armored_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Ennemies en armure légère")),
			--[+ Russian +]--
			create_template("weap_wpr0_ext_ru",
				{"loc_trait_ranged_common_wield_armored_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам в противоосколочной броне")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 防彈護甲的敵人 +]--
			create_template("weap_wpr0_ext_tw",
				{"loc_trait_ranged_common_wield_armored_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 防彈護甲的敵人")),
			--[+ Simplified Chinese - 防弹装甲敌人 +]--
			create_template("weap_wpr0_ext_zh_cn",
				{"loc_trait_ranged_common_wield_armored_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.."  "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（防弹装甲敌人）")),

		--[+ +DAMAGE VS MANIACS +]--
			create_template("weap_wpr1_ext_en",
				{"loc_trait_ranged_common_wield_berserker_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Maniacs")), -- colors
			--[+ French +]--
			create_template("weap_wpr1_ext_fr",
				{"loc_trait_ranged_common_wield_berserker_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Maniaques")),
			--[+ Russian +]--
			create_template("weap_wpr1_ext_ru",
				{"loc_trait_ranged_common_wield_berserker_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." маньякам")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 狂熱者 +]--
			create_template("weap_wpr1_ext_tw",
				{"loc_trait_ranged_common_wield_berserker_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 狂熱者")),
			--[+ Simplified Chinese - 狂人 +]--
			create_template("weap_wpr1_ext_zh_cn",
				{"loc_trait_ranged_common_wield_berserker_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（狂人）")),

		--[+ +DAMAGE VS INFESTED +]--
			create_template("weap_wpr2_ext_en",
				{"loc_trait_ranged_common_wield_disgustinglyresilient_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Infested Enemies")), -- colors
			--[+ French +]--
			create_template("weap_wpr2_ext_fr",
				{"loc_trait_ranged_common_wield_disgustinglyresilient_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Ennemies infestés")),
			--[+ Russian +]--
			create_template("weap_wpr2_ext_ru",
				{"loc_trait_ranged_common_wield_disgustinglyresilient_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." заражённым врагам")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 被感染的敵人 +]--
			create_template("weap_wpr2_ext_tw",
				{"loc_trait_ranged_common_wield_disgustinglyresilient_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 被感染的敵人")),
			--[+ Simplified Chinese - 感染敌人 +]--
			create_template("weap_wpr2_ext_zh_cn",
				{"loc_trait_ranged_common_wield_disgustinglyresilient_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（感染敌人）")),

		--[+ +DAMAGE VS UNYIELDING +]--
			create_template("weap_wpr3_ext_en",
				{"loc_trait_ranged_common_wield_resistant_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Unyielding Enemies")), -- colors
			--[+ French +]--
			create_template("weap_wpr3_ext_fr",
				{"loc_trait_ranged_common_wield_resistant_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Ennemies implacables")),
			--[+ Russian +]--
			create_template("weap_wpr3_ext_ru",
				{"loc_trait_ranged_common_wield_resistant_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." несгибаемым врагам")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 不屈的敵人 +]--
			create_template("weap_wpr3_ext_tw",
				{"loc_trait_ranged_common_wield_resistant_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 不屈的敵人")),
			--[+ Simplified Chinese - 不屈敌人 +]--
			create_template("weap_wpr3_ext_zh_cn",
				{"loc_trait_ranged_common_wield_resistant_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（不屈敌人）")),

		--[+ +DAMAGE VS CARAPACE +]--
			create_template("weap_wpr4_ext_en",
				{"loc_trait_ranged_common_wield_superarmor_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Carapace Enemies")), -- colors
			--[+ French +]--
			create_template("weap_wpr4_ext_fr",
				{"loc_trait_ranged_common_wield_superarmor_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Ennemies en armure carapace")),
			--[+ Russian +]--
			create_template("weap_wpr4_ext_ru",
				{"loc_trait_ranged_common_wield_superarmor_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам в панцирной броне")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 甲殼護甲的敵人 +]--
			create_template("weap_wpr4_ext_tw",
				{"loc_trait_ranged_common_wield_superarmor_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 甲殼護甲的敵人")),
			--[+ Simplified Chinese - 硬壳装甲敌人 +]--
			create_template("weap_wpr4_ext_zh_cn",
				{"loc_trait_ranged_common_wield_superarmor_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（硬壳装甲敌人）")),

		--[+ +DAMAGE VS UNARMOURED +]--
			create_template("weap_wpr5_ext_en",
				{"loc_trait_ranged_common_wield_unarmored_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Unarmoured Enemies")), -- colors
			--[+ French +]--
			create_template("weap_wpr5_ext_fr",
				{"loc_trait_ranged_common_wield_unarmored_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Ennemies sans armure")),
			--[+ Russian +]--
			create_template("weap_wpr5_ext_ru",
				{"loc_trait_ranged_common_wield_unarmored_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам без брони")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 無護甲敵人 +]--
			create_template("weap_wpr5_ext_tw",
				{"loc_trait_ranged_common_wield_unarmored_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." vs 無護甲敵人")),
			--[+ Simplified Chinese - 无甲敌人 +]--
			create_template("weap_wpr5_ext_zh_cn",
				{"loc_trait_ranged_common_wield_unarmored_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（无甲敌人）")),

		--[+ +CRIT CHANCE +]--
			create_template("weap_wpr6_ext_en",
				{"loc_trait_ranged_common_wield_increase_crit_chance_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." Ranged "..COLORS_KWords.Crit_chance_r_rgb)), -- colors
			--[+ French +]--
			create_template("weap_wpr6_ext_fr",
				{"loc_trait_ranged_common_wield_increase_crit_chance_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_fr.Crit_chance_r_rgb_fr.." à Distance")),
			--[+ Russian +]--
			create_template("weap_wpr6_ext_ru",
				{"loc_trait_ranged_common_wield_increase_crit_chance_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru)), -- +цвета, переписано .." в дальнем бою"
			--[+ Traditional Chinese - 暴擊機率 +]--
			create_template("weap_db6_ext_zh",
				{"loc_trait_ranged_common_wield_increase_crit_chance_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_r_chance_rgb_tw)),
			--[+ Simplified Chinese - 暴击几率 +]--
			create_template("weap_wpr6_ext_zh_cn",
				{"loc_trait_ranged_common_wield_increase_crit_chance_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.crit_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.." ")),

		--[+ +CRIT DAMAGE +]--
			create_template("weap_wpr7_ext_en",
				{"loc_trait_ranged_common_wield_wield_increase_critical_strike_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.critdmg_var_rgb.." Ranged "..COLORS_KWords.Crit_hit_color_rgb)), -- colors
			--[+ French +]--
			create_template("weap_wpr7_ext_fr",
				{"loc_trait_ranged_common_wield_wield_increase_critical_strike_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.critdmg_var_rgb.." "..COLORS_KWords_fr.Crit_hit_color_rgb_fr.." de Distance")),
			--[+ Russian +]--
			create_template("weap_wpr7_ext_ru",
				{"loc_trait_ranged_common_wield_wield_increase_critical_strike_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.critdmg_var_rgb.." к "..COLORS_KWords_ru.Crit_shot_color_rgb_ru)), -- +цвета, переписано .." в дальнем бою"
			--[+ Traditional Chinese - 暴擊傷害 +]--
			create_template("weap_wpr7_ext_tw",
				{"loc_trait_ranged_common_wield_wield_increase_critical_strike_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.critdmg_var_rgb.." "..COLORS_KWords_tw.Crit_hit_r_color_rgb_tw)),
			--[+ Simplified Chinese - 暴击伤害 +]--
			create_template("weap_wpr7_ext_zh_cn",
				{"loc_trait_ranged_common_wield_wield_increase_critical_strike_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.critdmg_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_hit_color_rgb_zh_cn.." ")),

		--[+ +DAMAGE VS ELITES +]--
			create_template("weap_wpr8_ext_en",
				{"loc_trait_ranged_common_wield_increase_elite_enemy_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." Ranged "..COLORS_KWords.Damage_rgb.." vs Elites")), -- colors
			--[+ French +]--
			create_template("weap_wpr8_ext_fr",
				{"loc_trait_ranged_common_wield_increase_elite_enemy_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Élites")),
			--[+ Russian +]--
			create_template("weap_wpr8_ext_ru",
				{"loc_trait_ranged_common_wield_increase_elite_enemy_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." элите в дальнем бою")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 精英 +]--
			create_template("weap_wpr8_ext_tw",
				{"loc_trait_ranged_common_wield_increase_elite_enemy_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_ranged_rgb_tw.." vs 精英")),
			--[+ Simplified Chinese - 精英 +]--
			create_template("weap_wpr8_ext_zh_cn",
				{"loc_trait_ranged_common_wield_increase_elite_enemy_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." 远程"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（精英）")),

		--[+ +DAMAGE VS GROANERS AND POXWALKERS +]--
			create_template("weap_wpr9_ext_en",
				{"loc_trait_ranged_common_wield_increase_horde_enemy_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." Ranged "..COLORS_KWords.Damage_rgb.." vs Groaners and Poxwalkers")), -- colors
			--[+ French +]--
			create_template("weap_wpr9_ext_fr",
				{"loc_trait_ranged_common_wield_increase_horde_enemy_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Grogneurs et Scrofuleux")),
			--[+ Russian +]--
			create_template("weap_wpr9_ext_ru",
				{"loc_trait_ranged_common_wield_increase_horde_enemy_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." ворчунам и чумным ходокам в дальнем бою")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 呻吟者、瘟疫行者 +]--
			create_template("weap_wpr9_ext_tw",
				{"loc_trait_ranged_common_wield_increase_horde_enemy_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_ranged_rgb_tw.." vs 呻吟者和瘟疫行者")),
			--[+ Simplified Chinese -呻吟者、瘟疫行者  +]--
			create_template("weap_wpr9_ext_zh_cn",
				{"loc_trait_ranged_common_wield_increase_horde_enemy_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." 远程"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（呻吟者、瘟疫行者）")),

		--[+ +DAMAGE VS SPECIALISTS +]--
			create_template("weap_wpr10_ext_en",
				{"loc_trait_ranged_common_wield_increase_special_enemy_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." Ranged "..COLORS_KWords.Damage_rgb.." vs Specialists")), -- colors
			--[+ French +]--
			create_template("weap_wpr10_ext_fr",
				{"loc_trait_ranged_common_wield_increase_special_enemy_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_fr.Damage_rgb_fr.." de Distance vs Spécialistes")),
			--[+ Russian +]--
			create_template("weap_wpr10_ext_ru",
				{"loc_trait_ranged_common_wield_increase_special_enemy_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." специалистам в дальнем бою")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 專家 +]--
			create_template("weap_wpr10_ext_tw",
				{"loc_trait_ranged_common_wield_increase_special_enemy_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_ranged_rgb_tw.." vs 專家")),
			--[+ Simplified Chinese - 专家 +]--
			create_template("weap_wpr10_ext_zh_cn",
				{"loc_trait_ranged_common_wield_increase_special_enemy_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." 远程"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."（专家）")),

		--[+ +STAMINA +]--
			create_template("weap_wpr11_ext_en",
				{"loc_trait_ranged_common_wield_increase_stamina_desc"}, {"en"},
					loc_text(COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords.Stamina_rgb.." when Weapon is Active")), -- colors
			--[+ French +]--
			create_template("weap_wpr11_ext_fr",
				{"loc_trait_ranged_common_wield_increase_stamina_desc"}, {"fr"},
					loc_text(COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords_fr.Stamina_rgb_fr)),
			--[+ Russian +]--
			create_template("weap_wpr11_ext_ru",
				{"loc_trait_ranged_common_wield_increase_stamina_desc"}, {"ru"},
					loc_text(COLORS_Numbers.stam_var_rgb.." ячейки "..COLORS_KWords_ru.Stamina_rgb_ru.." с этим оружием в руках")), -- +цвета, -(скобки), переписано
			--[+ Traditional Chinese - 耐力 +]--
			create_template("weap_wpr11_ext_tw",
				{"loc_trait_ranged_common_wield_increase_stamina_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords_tw.Stamina_rgb_tw)),
			--[+ Simplified Chinese - 耐力 +]--
			create_template("weap_wpr11_ext_zh_cn",
				{"loc_trait_ranged_common_wield_increase_stamina_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.stam_var_rgb.." 最大"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."（使用武器时）")),

		--[+ +WEAKSPOT DAMAGE +]--
			create_template("weap_wpr12_ext_en",
				{"loc_trait_ranged_common_wield_increase_weakspot_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." Ranged "..COLORS_KWords.Weakspot_dmg_rgb)), -- colors
			--[+ French +]--
			create_template("weap_wpr12_ext_fr",
				{"loc_trait_ranged_common_wield_increase_weakspot_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." à Distance")),
			--[+ Russian +]--
			create_template("weap_wpr12_ext_ru",
				{"loc_trait_ranged_common_wield_increase_weakspot_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." в дальнем бою")), -- +цвета, переписано
			--[+ Traditional Chinese - 弱點傷害 +]--
			create_template("weap_wpr12_ext_tw",
				{"loc_trait_ranged_common_wield_increase_weakspot_damage_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_r_dmg_rgb_tw)),
			--[+ Simplified Chinese - 弱点伤害 +]--
			create_template("weap_wpr12_ext_zh_cn",
				{"loc_trait_ranged_common_wield_increase_weakspot_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." 远程"..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.." ")),

		--[+ +RELOAD SPEED +]--
			create_template("weap_wpr13_ext_en",
				{"loc_trait_ranged_common_wield_increase_reload_speed_desc"}, {"en"},
					loc_text(COLORS_Numbers.reload_var_rgb.." Reload Speed")), -- colors
			--[+ French +]--
			create_template("weap_wpr13_ext_fr",
				{"loc_trait_ranged_common_wield_increase_reload_speed_desc"}, {"fr"},
					loc_text(COLORS_Numbers.reload_var_rgb.." Vitesse de rechargement de l'arme")),
			--[+ Russian +]--
			create_template("weap_wpr13_ext_ru",
				{"loc_trait_ranged_common_wield_increase_reload_speed_desc"}, {"ru"},
					loc_text(COLORS_Numbers.reload_var_rgb.." к скорости перезарядки")), -- +цвета, переписано
			--[+ Traditional Chinese - 裝填速度 +]--
			create_template("weap_wpr13_ext_tw",
				{"loc_trait_ranged_common_wield_increase_reload_speed_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.reload_var_rgb.." 裝填速度")),
			--[+ Simplified Chinese - 装弹速度 +]--
			create_template("weap_wpr13_ext_zh_cn",
				{"loc_trait_ranged_common_wield_increase_reload_speed_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.reload_var_rgb.." 装弹速度")),


--[+ ++WEAPON BLESSINGS - БЛАГОСЛОВЕНИЯ ОРУЖИЯ - 武器祝福++ +]--
	--[+ MELEE - БЛИЖНИЙ БОЙ - 近戰 +]--

		--[+ OPPORTUNIST - Оппортунист +]-- -- руоф Приспособленец
		-- Battle Maul and Shield, Chainaxes, Crusher, Eviscerators, Latrine Shovels, Power Maul, Shock Mauls -- 10% | 15% | 20% | 25%
			create_template("weap_wbm000_desc_ext_en",
				{"loc_trait_bespoke_armor_penetration_against_staggered_desc"}, {"en"},
					loc_text(COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Rending_rgb.." vs "..COLORS_KWords.Staggered_rgb.." Enemies."..COLORS_KWords.Rend_note_rgb)), -- rending: +25% -- colors
			--[+ French +]--
			create_template("weap_wbm000_desc_ext_fr",
				{"loc_trait_bespoke_armor_penetration_against_staggered_desc"}, {"fr"},
					loc_text(COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_fr.Rending_rgb_fr.." vs les Enemies qui "..COLORS_KWords_fr.Staggered_rgb_fr.." "..COLORS_KWords_fr.Rend_note_rgb_fr)),
			--[+ Russian +]-- Оппортунист -- руоф Приспособленец
			create_template("weap_wbm000_desc_ext_ru",
				{"loc_trait_bespoke_armor_penetration_against_staggered_desc"}, {"ru"},
					loc_text(COLORS_Numbers.rending_var_rgb.." к "..COLORS_KWords_ru.Rending_rgb_ru.." "..COLORS_KWords_ru.Staggered_rgb_ru.." врагов."..COLORS_KWords_ru.Rend_note_rgb_ru)),
			--[+ Traditional Chinese - 機會主義者 +]--
			-- 作戰大槌&板盾, 突擊鏈斧, 輾壓者, 重型開膛劍, 廁所鏟, 動力錘, 電擊錘 -- 10% | 15% | 20% | 25%
			create_template("weap_wbm000_desc_ext_tw",
				{"loc_trait_bespoke_armor_penetration_against_staggered_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Rending_rgb_tw.." vs "..COLORS_KWords_tw.Staggered_rgb_tw.." 的敵人")),
			--[+ Simplified Chinese -机会主义者 +]--
			create_template("weap_wbm000_desc_ext_zh_cn",
				{"loc_trait_bespoke_armor_penetration_against_staggered_desc"}, {"zh-cn"},
					loc_text("对抗"..COLORS_KWords_zh_cn.Staggered_rgb_zh_cn.."敌人时 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Rending_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Rend_note_rgb_zh_cn)),

		--[+ BLOODLETTER +]-- checked 27.04.2025
		-- Bleed Stacks (per tier)
		-- Chainaxes -- 10 | 12 | 14 | 16
		-- Chainswords -- 11 | 12 | 13 | 14
		-- Eviscerators -- 3 | 4 | 5 | 6
			create_template("weap_wbm001_desc_ext_en",
				{"loc_trait_bespoke_bleed_on_activated_hit_desc"}, {"en"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." "..COLORS_KWords.Bleed_rgb.." Stacks from Special Attacks. Up to "..COLORS_Numbers.n_16_rgb.." Stacks. Can't apply "..COLORS_KWords.Bleed_rgb.." through shields.")), -- stacks: +14 -- colors -- +"Can't apply "..COLORS_KWords.Bleed_rgb.." through shields."
			--[+ French +]--
			create_template("weap_wbm001_desc_ext_fr",
				{"loc_trait_bespoke_bleed_on_activated_hit_desc"}, {"fr"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." Cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." lors des attaques spéciales. Jusqu'à "..COLORS_Numbers.n_16_rgb.." Cumuls.")),
			--[+ Russian - Кровопускатель - руоф Кровопускание +]-- checked 27.04.2025
			create_template("weap_wbm001_desc_ext_ru",
				{"loc_trait_bespoke_bleed_on_activated_hit_desc"}, {"ru"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." от специальных атак. Вплоть до "..COLORS_Numbers.n_16_rgb.." зарядов. Не накладывает "..COLORS_KWords_ru.Bleeding_rgb_ru.." через щиты.")),
			--[+ Traditional Chinese - 放血者 +]--
			-- 突擊鏈斧 -- 10 | 12 | 14 | 16
			-- 突擊鏈鋸劍 -- 11 | 12 | 13 | 14
			-- 重型開膛劍 -- 3 | 4 | 5 | 6
			create_template("weap_wbm001_desc_ext_tw",
				{"loc_trait_bespoke_bleed_on_activated_hit_desc"}, {"zh-tw"},
					loc_text("特殊攻擊時，使其獲得 "..COLORS_Numbers.p_stacks_var_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.."。\n上限 "..COLORS_Numbers.n_16_rgb.." 層。")),
			--[+ Simplified Chinese - 放血者 +]--
			create_template("weap_wbm001_desc_ext_zh_cn",
				{"loc_trait_bespoke_bleed_on_activated_hit_desc"}, {"zh-cn"},
					loc_text("特殊攻击 "..COLORS_Numbers.p_stacks_var_rgb.." 层"..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_16_rgb.." 层。")),

		--[+ BLOODTHIRSTY +]-- checked 27.04.2025
		-- Melee Crit Chance (per tier)
		-- Chainaxes, Chainswords, Eviscerators, Force Swords -- 40% | 60% | 80% | 100%
			create_template("weap_wbm002_desc_ext_en",
				{"loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." on your next Melee Attack after Killing an enemy with an activated weapon Special Attack.")), -- crit_chance: +100% -- colors
			--[+ French +]--
			create_template("weap_wbm002_desc_ext_fr",
				{"loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_fr.Crit_chance_rgb_fr.." sur votre prochaine attaque de mêlée après une élimination avec une attaque spéciale.")),
			--[+ Russian - Кровожадный -- руоф Жажда крови +]-- checked 27.04.2025
			create_template("weap_wbm002_desc_ext_ru",
				{"loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." для вашей следующей атаки ближнего боя после убийства врага специальной атакой.")),
		--[+ Traditional Chinese - 嗜血 +]--
			-- 突擊鏈斧, 突擊鏈鋸劍, 重型開膛劍, 烈焰力場劍 -- 40% | 60% | 80% | 100%
			create_template("trait_bespoke_002_desc_ext_zh",
				{"loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill_desc"}, {"zh-tw"},
					loc_text("在特殊攻擊擊殺敵人後，\n下一次近戰攻擊 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."。")),
			--[+ Simplified Chinese - 嗜血 +]--	
			create_template("weap_wbm002_desc_ext_zh_cn",
				{"loc_trait_bespoke_guaranteed_melee_crit_on_activated_kill_desc"}, {"zh-cn"},
					loc_text("特殊攻击击杀敌人时，\n使下次近战攻击 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。")),

		--[+ HEADTAKER +]--
		-- Chainaxes, Combat Axes, Pickaxes, Tactical Axes, Thunder Hammers -- 3.5% 4% 4.5% 5% (up to +25%)
			-- Heavy Swords -- 6.5% 7% 7.5% 8% (up to +40%)
			create_template("weap_wbm003_desc_ext_en",
				{"loc_trait_bespoke_increase_power_on_hit_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Hit. Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +5%, time: 3.5, stacks: 5 -- s->seconds -- colors -- Note
			--[+ French +]--
			create_template("weap_wbm003_desc_ext_fr",
				{"loc_trait_bespoke_increase_power_on_hit_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_fr.Strength_rgb_fr.." pour "..COLORS_Numbers.time_var_rgb.." secondes lors d'un coup. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Головорез
			create_template("weap_wbm003_desc_ext_ru",
				{"loc_trait_bespoke_increase_power_on_hit_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при ударе. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 奪顱者 +]--
			-- 突擊鏈斧, 戰鬥斧, 十字鎬, 戰術斧, 雷鎚 -- 3.5% 4% 4.5% 5% (up to +25%)
			-- 重劍 -- 6.5% 7% 7.5% 8% (up to +40%)
			create_template("weap_wbm003_desc_ext_tw",
				{"loc_trait_bespoke_increase_power_on_hit_desc"}, {"zh-tw"},
					loc_text("每層 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，可持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 夺颅者 +]--
			create_template("weap_wbm003_desc_ext_zh_cn",
				{"loc_trait_bespoke_increase_power_on_hit_desc"}, {"zh-cn"},
					loc_text("命中时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。\n攻击每命中一个目标叠加 "..COLORS_Numbers.n_1_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ SLAUGHTERER +]--
		-- Chainaxes, Cleavers, Crusher, Force Swords, Pickaxes, Power Swords, Thunder Hammers -- 5% | 6% | 7% | 8% (up to +40%)
			create_template("weap_wbm004_desc_ext_en",
				{"loc_trait_bespoke_increase_power_on_kill_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Kill. Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +5%, time: 4.5, stacks: 5 -- s->seconds -- colors -- Note
			--[+ French +]--
			create_template("weap_wbm004_desc_ext_fr",
				{"loc_trait_bespoke_increase_power_on_kill_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_fr.Strength_rgb_fr.." pour "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Мясник -- руоф Душегуб
			create_template("weap_wbm004_desc_ext_ru",
				{"loc_trait_bespoke_increase_power_on_kill_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при убийстве. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 殺戮者 +]--
			-- 突擊鏈斧, 砍刀, 輾壓者, 烈焰力場劍, 十字鎬, 動力劍, 雷鎚 -- 5% | 6% | 7% | 8% (up to +40%)
			create_template("weap_wbm004_desc_ext_tw",
				{"loc_trait_bespoke_increase_power_on_kill_desc"}, {"zh-tw"},
					loc_text("擊殺敵人時 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，可持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n每次擊殺可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.Pwr_note_rgb_tw)),
			-- create_template("weap_wbm004_desc_ext_tw",
				-- {"loc_trait_bespoke_increase_power_on_kill_desc"}, {"zh-tw"},
					-- loc_text("每層 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，可持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n每次擊殺可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 屠宰者 +]--
			create_template("weap_wbm004_desc_ext_zh_cn",
				{"loc_trait_bespoke_increase_power_on_kill_desc"}, {"zh-cn"},
					loc_text("击杀敌人时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ REV IT UP +]--
		-- Chainaxes, Chainswords, Eviscerators -- 17% | 18% | 19% | 20%
			create_template("weap_wbm005_desc_ext_en",
				{"loc_trait_bespoke_movement_speed_on_activation_desc"}, {"en"},
					loc_text(COLORS_Numbers.movspd_var_rgb.." Movement Speed for "..COLORS_Numbers.time_var_rgb.." seconds on Weapon Special Activation.")), -- movement_speed: +20%, time: 2 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbm005_desc_ext_fr",
				{"loc_trait_bespoke_movement_speed_on_activation_desc"}, {"fr"},
					loc_text(COLORS_Numbers.movspd_var_rgb.." de vitesse déplacement pendant "..COLORS_Numbers.time_var_rgb.." secondes lors de l'activation spéciale d'une arme.")),
			--[+ Russian +]-- Ускорься -- руоф Бодрость
			create_template("weap_wbm005_desc_ext_ru",
				{"loc_trait_bespoke_movement_speed_on_activation_desc"}, {"ru"},
					loc_text(COLORS_Numbers.movspd_var_rgb.." к скорости передвижения на "..COLORS_Numbers.time_var_rgb.." секунды при активации специальной атаки.")),
			--[+ Traditional Chinese - 提速 +]--
			-- 突擊鏈斧, 突擊鏈鋸劍, 重型開膛劍 -- 17% | 18% | 19% | 20%
			create_template("weap_wbm005_desc_ext_tw",
				{"loc_trait_bespoke_movement_speed_on_activation_desc"}, {"zh-tw"},
					loc_text("在武器特殊技能啟動時 "..COLORS_Numbers.movspd_var_rgb.." 移動速度。\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 加速 +]--
			create_template("weap_wbm005_desc_ext_zh_cn",
				{"loc_trait_bespoke_movement_speed_on_activation_desc"}, {"zh-cn"},
					loc_text("激活武器特殊动作时\n"..COLORS_Numbers.movspd_var_rgb.." 移动速度，持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ THRUST +]--
		-- Bully Clubs, Chainaxes, Cleavers, Combat Axes, Crusher, Duelling Swords, Heavy Swords, Latrine Shovels, Pickaxes, Power Swords, Sapper Shovels, Shock Mauls, Thunder Hammers -- 5% | 10% | 15% | 20% (up to +60%)
			create_template("weap_wbm006_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_based_on_charge_time_desc"}, {"en"},
					loc_text("Up to "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." based on the charge time of your heavy attacks. Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +5%, stacks: 3 -- colors -- Note
			--[+ French +]--
			create_template("weap_wbm006_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_based_on_charge_time_desc"}, {"fr"},
					loc_text("Jusqu'à "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_fr.Strength_rgb_fr.." selon le temps de charge de vos attaques puissantes. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Выпад
			create_template("weap_wbm006_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_based_on_charge_time_desc"}, {"ru"},
					loc_text("До "..COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." в зависимости от времени заряжания ваших тяжёлых атак. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 推進 +]--
			-- 惡棍棒, 突擊鏈斧, 砍刀, 戰鬥斧, 輾壓者, 決鬥劍, 重劍, 廁所鏟, 十字鎬, 動力劍, 工兵鏟, 電擊錘, 雷鎚 -- 5% | 10% | 15% | 20% (up to +60%)
			create_template("trait_bespoke_006_desc_ext_zh",
				{"loc_trait_bespoke_power_bonus_based_on_charge_time_desc"}, {"zh-tw"},
					loc_text("根據重攻擊的續力時間增加 "..COLORS_KWords_tw.Strength_rgb_tw.." ，\n每層 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，最多可疊加 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 助推 +]--
			create_template("weap_wbm006_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_based_on_charge_time_desc"}, {"zh-cn"},
					loc_text("随重攻击蓄力时间增加叠加层数，\n每层 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ THUNDEROUS +]--
		-- Bully Clubs, Chainaxes, Combat Axes, Crusher, Latrine Shovels, Pickaxes, Thunder Hammers -- 1 | 2 | 3 | 4
			create_template("weap_wbm007_desc_ext_en",
				{"loc_trait_bespoke_targets_receive_rending_debuff_desc"}, {"en"},
					loc_text(COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Brittleness_rgb.." are applied on hitting an enemy. Lasts for "..COLORS_Numbers.time_var_rgb.." seconds. Max "..COLORS_Numbers.maxstks_var_rgb.." Stacks, up to "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords.Brtl_note_rgb)), -- stacks: 4, rending: 2.5%, time: 5, max_stacks: 16 -- rewrite -- +", up to 40%." -- colors -- Note
			--[+ French +]--
			create_template("weap_wbm007_desc_ext_fr",
				{"loc_trait_bespoke_targets_receive_rending_debuff_desc"}, {"fr"},
					loc_text(COLORS_Numbers.stacks_var_rgb.." Cumuls de "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_fr.Brittleness_rgb_fr.." sont appliqué lors d'un coup sur un ennemie. Pendant "..COLORS_Numbers.time_var_rgb.." secondes. Jusqu'à "..COLORS_Numbers.maxstks_var_rgb.." cumuls, pour un total de "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords_fr.Brtl_note_rgb_fr)),
			--[+ Russian +]-- Громовой удар -- руоф Словно раскаты грома
			create_template("weap_wbm007_desc_ext_ru",
				{"loc_trait_bespoke_targets_receive_rending_debuff_desc"}, {"ru"},
					loc_text(COLORS_Numbers.stacks_var_rgb.." заряда по "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." применяется к врагу при ударе. Длится до "..COLORS_Numbers.time_var_rgb.." секунд. Максимум "..COLORS_Numbers.maxstks_var_rgb.." зарядов, вплоть до "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords_ru.Brtl_note_rgb_ru)),
			--[+ Traditional Chinese - 雷鳴 +]--
			-- 惡棍棒, 突擊鏈斧, 戰鬥斧, 輾壓者, 廁所鏟, 十字鎬, 雷鎚 -- 1 | 2 | 3 | 4
			create_template("weap_wbm007_desc_ext_tw",
				{"loc_trait_bespoke_targets_receive_rending_debuff_desc"}, {"zh-tw"},
					loc_text("擊中敵人時，使其獲得 "..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Brittleness_rgb_tw.."。\n可持續 "..COLORS_Numbers.time_var_rgb.." 秒，"..COLORS_Numbers.time_var_rgb.." 秒後清除，上限 "..COLORS_Numbers.maxstks_var_rgb.." 層。"..COLORS_KWords_tw.Brtl_note_rgb_tw)),
			--[+ Simplified Chinese - 雷鸣 +]--
			create_template("weap_wbm007_desc_ext_zh_cn",
				{"loc_trait_bespoke_targets_receive_rending_debuff_desc"}, {"zh-cn"},
					loc_text("命中时，对目标施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.maxstks_var_rgb.." 层，最高 "..COLORS_Numbers.pc_40_rgb.." 。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn)),

		--[+ WRATH +]--
		-- Chainswords, Devil's Claw Swords, Eviscerators, Heavy Swords, Pickaxes, Blaze Force Greatsword, Relic Blade -- 25% | 30% | 35% | 40% (up to +200%)
		-- Power Swords -- 35% | 40% | 45% | 50% (up to +250%)
			create_template("weap_wbm008_desc_ext_en",
				{"loc_trait_bespoke_chained_hits_increases_cleave_desc"}, {"en"},
					loc_text(COLORS_Numbers.cleave_var_rgb.." "..COLORS_KWords.Cleave_rgb.." on Hit for "..COLORS_Numbers.n_3_5_rgb.." seconds. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- cleave: +40%, stacks: 5 -- +"for 3.5 seconds." -- colors
			--[+ French +]--
			create_template("weap_wbm008_desc_ext_fr",
				{"loc_trait_bespoke_chained_hits_increases_cleave_desc"}, {"fr"},
					loc_text(COLORS_Numbers.cleave_var_rgb.." "..COLORS_KWords_fr.Cleave_rgb_fr.." lors d'un coup pendant "..COLORS_Numbers.n_3_5_rgb.." secondes. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Гнев
			create_template("weap_wbm008_desc_ext_ru",
				{"loc_trait_bespoke_chained_hits_increases_cleave_desc"}, {"ru"},
					loc_text(COLORS_Numbers.cleave_var_rgb.." к "..COLORS_KWords_ru.Cleave_rgb_ru.." при ударе на "..COLORS_Numbers.n_3_5_rgb.." секунды. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 憤怒 +]--
			-- 突擊鏈鋸劍, 『惡魔之爪』劍, 重型開膛劍, 重劍, 十字鎬, 烈焰力場巨劍, 上古神刃 -- 25% | 30% | 35% | 40% (up to +200%)
			-- 動力劍 -- 35% | 40% | 45% | 50% (up to +250%)
			create_template("weap_wbm008_desc_ext_tw",
				{"loc_trait_bespoke_chained_hits_increases_cleave_desc"}, {"zh-tw"},
					loc_text("擊中敵人時 "..COLORS_Numbers.cleave_var_rgb.." "..COLORS_KWords_tw.Cleave_rgb_tw.."，持續 "..COLORS_Numbers.n_3_5_rgb.." 秒。\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 怒火 +]--
			create_template("weap_wbm008_desc_ext_zh_cn",
				{"loc_trait_bespoke_chained_hits_increases_cleave_desc"}, {"zh-cn"},
					loc_text("连锁攻击命中时 "..COLORS_Numbers.cleave_var_rgb.." "..COLORS_KWords_zh_cn.Cleave_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.n_3_5_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ SHRED +]--
		-- Chainswords, Combat Axes, Devil's Claw Swords, Duelling Swords, Eviscerators, Force Swords, Blaze Force Greatsword, Tactical Axes -- 2.5% | 3% | 3.5% | 4% (up to +20%)
			create_template("weap_wbm009_desc_ext_en",
				{"loc_trait_bespoke_chained_hits_increases_crit_chance_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." Bonus "..COLORS_KWords.Crit_chance_rgb.." on Chained Hit for "..COLORS_Numbers.n_3_5_rgb.." seconds. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- crit_chance: +4%, stacks: 5 -- +"for 3.5 seconds." -- colors
			--[+ French +]--
			create_template("weap_wbm009_desc_ext_fr",
				{"loc_trait_bespoke_chained_hits_increases_crit_chance_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." lors d'un coup en chaîne pendant "..COLORS_Numbers.n_3_5_rgb.." secondes. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Кромсание -- руоф Расстрел
			create_template("weap_wbm009_desc_ext_ru",
				{"loc_trait_bespoke_chained_hits_increases_crit_chance_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.n_3_5_rgb.." секунды при серии ударов. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 粉碎 +]--
			-- 突擊鏈鋸劍, 戰鬥斧, 『惡魔之爪』劍, 決鬥劍, 重型開膛劍, 烈焰力場劍, 烈焰力場巨劍, 戰術斧 -- 2.5% | 3% | 3.5% | 4% (up to +20%)
			create_template("weap_wbm009_desc_ext_tw",
				{"loc_trait_bespoke_chained_hits_increases_crit_chance_desc"}, {"zh-tw"},
					loc_text("每次攻擊 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，持續 "..COLORS_Numbers.n_3_5_rgb.." 秒。\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。\n需連續命中不得揮空。")),
			--[+ Simplified Chinese - 撕碎 +]--
			create_template("weap_wbm009_desc_ext_zh_cn",
				{"loc_trait_bespoke_chained_hits_increases_crit_chance_desc"}, {"zh-cn"},
					loc_text("连锁攻击命中时\n"..COLORS_Numbers.crit_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.n_3_5_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ SAVAGE SWEEP +]--
		-- Chainswords, Cleavers, Devil's Claw Swords, Eviscerators, Heavy Swords -- 140% | 160% | 180% | 200%
			create_template("weap_wbm010_desc_ext_en",
				{"loc_trait_bespoke_increased_attack_cleave_on_multiple_hits_desc"}, {"en"},
					loc_text(COLORS_Numbers.cleave_var_rgb.." "..COLORS_KWords.Cleave_rgb.." for your attacks for "..COLORS_Numbers.time_var_rgb.." seconds when hitting at least "..COLORS_Numbers.mult_hit_var_rgb.." enemies.")), -- multiple_hit: 3, cleave: 200%, time: 2 -- rewrite -- colors
			--[+ French +]--
			create_template("weap_wbm010_desc_ext_fr",
				{"loc_trait_bespoke_increased_attack_cleave_on_multiple_hits_desc"}, {"fr"},
					loc_text(COLORS_Numbers.cleave_var_rgb.." de "..COLORS_KWords_fr.Cleave_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes en touchant au moins "..COLORS_Numbers.mult_hit_var_rgb.." ennemies avec une attaque.")),
			--[+ Russian +]-- Дикий взмах -- руоф Дикость
			create_template("weap_wbm010_desc_ext_ru",
				{"loc_trait_bespoke_increased_attack_cleave_on_multiple_hits_desc"}, {"ru"},
					loc_text(COLORS_Numbers.cleave_var_rgb.." к "..COLORS_KWords_ru.Cleave_rgb_ru.." для ваших атак на "..COLORS_Numbers.time_var_rgb.." секунды при попадании как минимум по "..COLORS_Numbers.mult_hit_var_rgb.." врагам.")),
			--[+ Traditional Chinese - 野蠻橫掃 +]--
			-- 突擊鏈鋸劍, 砍刀, 『惡魔之爪』劍, 重型開膛劍, 重劍 -- 140% | 160% | 180% | 200%
			create_template("weap_wbm010_desc_ext_tw",
				{"loc_trait_bespoke_increased_attack_cleave_on_multiple_hits_desc"}, {"zh-tw"},
					loc_text("當一次攻擊命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 敵人時，\n"..COLORS_Numbers.cleave_var_rgb.." "..COLORS_KWords_tw.Cleave_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 野蛮扫荡 +]--
			create_template("weap_wbm010_desc_ext_zh_cn",
				{"loc_trait_bespoke_increased_attack_cleave_on_multiple_hits_desc"}, {"zh-cn"},
					loc_text("命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 名敌人时 \n"..COLORS_Numbers.cleave_var_rgb.." "..COLORS_KWords_zh_cn.Cleave_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ RAMPAGE +]--
		-- Chainswords, Devil's Claw Swords, Duelling Swords, Eviscerators, Heavy Swords, Power Swords, Relic Blade -- 24% | 28% | 32% | 36%
			create_template("weap_wbm011_desc_ext_en",
				{"loc_trait_bespoke_increased_melee_damage_on_multiple_hits_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." increase to your "..COLORS_KWords.Strength_rgb.." of Melee attacks for "..COLORS_Numbers.time_var_rgb.." seconds when hitting at least "..COLORS_Numbers.mult_hit_var_rgb.." enemies."..COLORS_KWords.Pwr_note_rgb)), -- multiple_hit: 3, damage: 36%, time: 3 -- Damage->Strength -- colors -- Note
			--[+ French +]--
			create_template("weap_wbm011_desc_ext_fr",
				{"loc_trait_bespoke_increased_melee_damage_on_multiple_hits_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." de bonus à votre "..COLORS_KWords_fr.Strength_rgb_fr.." pour vos attaques de mélées pendant "..COLORS_Numbers.time_var_rgb.." secondes en touchant au moins "..COLORS_Numbers.mult_hit_var_rgb.." ennemies avec une attaque."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- -- руоф Буйство
			create_template("weap_wbm011_desc_ext_ru",
				{"loc_trait_bespoke_increased_melee_damage_on_multiple_hits_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." вашей атаки ближнего боя на "..COLORS_Numbers.time_var_rgb.." секунды при попадании как минимум по "..COLORS_Numbers.mult_hit_var_rgb.." врагам."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 暴走 +]--
			-- 突擊鏈鋸劍, 『惡魔之爪』劍, 決鬥劍, 重型開膛劍, 重劍, 動力劍, 上古神刃 -- 24% | 28% | 32% | 36%
			create_template("weap_wbm011_desc_ext_tw",
				{"loc_trait_bespoke_increased_melee_damage_on_multiple_hits_desc"}, {"zh-tw"},
					loc_text("當一次攻擊命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 敵人時，\n"..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 狂暴 +]--
			create_template("weap_wbm011_desc_ex_zh_cn",
				{"loc_trait_bespoke_increased_melee_damage_on_multiple_hits_desc"}, {"zh-cn"},
					loc_text("命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 名敌人 \n"..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ DEVASTATING STRIKE +]--
		-- Chainswords, Cleavers, Devil's Claw Swords, Relic Blade -- 65% | 70% | 75% | 80%
			create_template("weap_wbm012_desc_ext_en",
				{"loc_trait_bespoke_infinite_melee_cleave_on_crit_desc"}, {"en"},
					loc_text(COLORS_Numbers.hitmass_var_rgb.." "..COLORS_KWords.Cleave_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on "..COLORS_KWords.Crit_hit_rgb..".")), -- hit_mass: +80%, time: 5 -- colors
			--[+ French +]--
			create_template("weap_wbm012_desc_ext_fr",
				{"loc_trait_bespoke_infinite_melee_cleave_on_crit_desc"}, {"fr"},
					loc_text(COLORS_Numbers.hitmass_var_rgb.." de "..COLORS_KWords_fr.Cleave_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr..".")),
			--[+ Russian +]-- Разрушительный удар -- руоф Сокрушительный удар
			create_template("weap_wbm012_desc_ext_ru",
				{"loc_trait_bespoke_infinite_melee_cleave_on_crit_desc"}, {"ru"},
					loc_text(COLORS_Numbers.hitmass_var_rgb.." к "..COLORS_KWords_ru.Cleave_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунд при "..COLORS_KWords_ru.Crit_hit_rgb_ru..".")),
			--[+ Traditional Chinese - 毀滅打擊 +]--
			-- 突擊鏈鋸劍, 砍刀, 『惡魔之爪』劍, 上古神刃 -- 65% | 70% | 75% | 80%
			create_template("weap_wbm012_desc_ext_tw",
				{"loc_trait_bespoke_infinite_melee_cleave_on_crit_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Crit_hit_rgb_tw.." 時，"..COLORS_Numbers.hitmass_var_rgb.." "..COLORS_KWords_tw.Cleave_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 毁灭打击 +]--
			create_template("weap_wbm012_desc_ext_zh_cn",
				{"loc_trait_bespoke_infinite_melee_cleave_on_crit_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时 "..COLORS_Numbers.hitmass_var_rgb.." "..COLORS_KWords_zh_cn.Cleave_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ DECIMATOR +]--
		-- Combat Axes, Sapper Shovels, Tactical Axes -- 2% | 3% | 4% | 5% (up to +50%)
			create_template("weap_wbm013_desc_ext_en",
				{"loc_trait_bespoke_chained_hits_increases_power_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for continuously chaining more than "..COLORS_Numbers.n_2_rgb.." attacks. Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +5%, stacks: 10 -- colors -- Note
			--[+ French +]--
			create_template("weap_wbm013_desc_ext_fr",
				{"loc_trait_bespoke_chained_hits_increases_power_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." en enchaînant continuellement plus de "..COLORS_Numbers.n_2_rgb.." attaques. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Дециматор
			create_template("weap_wbm013_desc_ext_ru",
				{"loc_trait_bespoke_chained_hits_increases_power_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." при непрерывной серии из более чем "..COLORS_Numbers.n_2_rgb.." атак. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 屠戮者 +]--
			-- 戰鬥斧, 工兵鏟, 戰術斧 -- 2% | 3% | 4% | 5% (up to +50%)
			create_template("weap_wbm013_desc_ext_tw",
				{"loc_trait_bespoke_chained_hits_increases_power_desc"}, {"zh-tw"},
					loc_text("連續攻擊任意目標超過 "..COLORS_Numbers.n_2_rgb.." 次時 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。\n需連續命中不得揮空"..COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 屠戮者 +]--
			create_template("weap_wbm013_desc_ext_zh_cn",
				{"loc_trait_bespoke_chained_hits_increases_power_desc"}, {"zh-cn"},
					loc_text("连锁攻击命中 "..COLORS_Numbers.n_2_rgb.." 次时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ BRUTAL MOMENTUM / DEATHBLOW +]-- checked 27.04.2025
		-- Melee Weakspot Damage (per tier)
		-- Battle Maul and Shield, Combat Axes, Heavy Swords, Latrine Shovels, Power Maul, Power Swords, Tactical Axes -- 7.5% | 10% | 12.5% | 15%
			create_template("weap_wbm014_desc_ext_en",
				{"loc_trait_bespoke_infinite_cleave_on_weakspot_kill_desc", "loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc"}, {"en"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb..". "..COLORS_KWords.Weakspot_rgb.." Kills also ignore up to "..COLORS_Numbers.n_3_rgb.." enemies "..COLORS_KWords.Hit_mass_rgb..".")), -- weakspot_damage: 15% -- colors -- +"up to "..COLORS_Numbers.n_3_rgb..""
			--[+ French +]--
			create_template("weap_wbm014_desc_ext_fr",
				{"loc_trait_bespoke_infinite_cleave_on_weakspot_kill_desc", "loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc"}, {"fr"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr..". Les élimination sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." ignore le "..COLORS_KWords_fr.Hit_mass_rgb_fr.." de "..COLORS_Numbers.n_3_rgb.." ennemies.")),
			--[+ Russian - Жестокий импульс - руоф Суровый моментум / Смертельный удар +]-- checked 27.04.2025
			create_template("weap_wbm014_desc_ext_ru",
				{"loc_trait_bespoke_infinite_cleave_on_weakspot_kill_desc", "loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc"}, {"ru"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru..". Убийства в "..COLORS_KWords_ru.Weakspot_rgb_ru.." также игнорируют "..COLORS_KWords_ru.Hit_mass_rgb_ru.." до "..COLORS_Numbers.n_3_rgb.." врагов."..COLORS_KWords_ru.Hit_Mass_note_rgb_ru)),
			--[+ Traditional Chinese - 野蠻攻勢 +]--
			-- 作戰大槌&板盾, 戰鬥斧, 重劍, 廁所鏟, 動力錘, 動力劍, 戰術斧 -- 7.5% | 10% | 12.5% | 15%
			create_template("weap_wbm014_desc_ext_tw",
				{"loc_trait_bespoke_infinite_cleave_on_weakspot_kill_desc", "loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.."。\n"..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 無視 "..COLORS_Numbers.n_3_rgb.." 個敵人的 "..COLORS_KWords_tw.Hit_mass_rgb_tw.." 。"..COLORS_KWords_tw.Hit_Mass_note_rgb_tw)),
			--[+ Simplified Chinese - 野蛮势头 +]--
			create_template("weap_wbm014_desc_ext_zh_cn",
				{"loc_trait_bespoke_infinite_cleave_on_weakspot_kill_desc", "loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."。\n"..COLORS_KWords_zh_cn.Weakspothits_k_rgb_zh_cn.."无视 "..COLORS_Numbers.n_3_rgb.." 名敌人的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn)),

		--[+ DEATHBLOW +]-- Same as BRUTAL MOMENTUM, so I combined them for now.
		-- Melee Weakspot Damage (per tier)
		-- Battle Maul and Shield, Combat Axes, Heavy Swords, Latrine Shovels, Power Maul -- 7.5% | 10% | 12.5% | 15%
			-- create_template("weap_wbm037_desc_ext_en",
				-- {"loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc"}, {"en"},
					-- loc_text(COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb..". "..COLORS_KWords.Weakspots_rgb.." Kills also ignore up to "..COLORS_Numbers.n_3_rgb.." enemies "..COLORS_KWords.Hit_mass_rgb..".")), -- weakspot_damage: +15% -- colors
			--[+ French +]--
			-- create_template("weap_wbm037_desc_ext_fr",
				-- {"loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc"}, {"fr"},
					-- loc_text(COLORS_Numbers.wkspdmg_var_rgb.." de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr..". Les éliminations sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." ignore le "..COLORS_KWords_fr.Hit_mass_rgb_fr.." de "..COLORS_Numbers.n_3_rgb.." ennemis.")),
			--[+ Russian - Смертельный удар +]--
			-- create_template("weap_wbm037_desc_ext_ru",
				-- {"loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc"}, {"ru"},
					-- loc_text(COLORS_Numbers.wkspdmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru..". Убийства в "..COLORS_KWords_ru.Weakspot_rgb_ru.." также игнорируют "..COLORS_KWords_ru.Hit_mass_rgb_ru.." до "..COLORS_Numbers.n_3_rgb.." врагов."..COLORS_KWords_ru.Hit_Mass_note_rgb_ru)),
			--[+ Traditional Chinese - 致命一擊 +]--
			-- 作戰大槌&板盾, 戰鬥斧, 重劍, 廁所鏟, 動力錘 -- 7.5% | 10% | 12.5% | 15%
			-- create_template("weap_wbm037_desc_ext_tw",
				-- {"loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc"}, {"zh-tw"},
					-- loc_text(COLORS_KWords_tw.Weakspot_dmg_rgb_tw.." "..COLORS_Numbers.wkspdmg_var_rgb.."。\n"..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 時，無視 "..COLORS_Numbers.n_3_rgb.." 個敵人的 "..COLORS_KWords_tw.Hit_mass_rgb_tw)),
			--[+ Simplified Chinese - 致命一击 +]--
			-- create_template("weap_wbm037_desc_ext_zh_cn",
				-- {"loc_trait_bespoke_infinite_melee_cleave_on_weakspot_kill_desc"}, {"zh-cn"},
					-- loc_text(COLORS_Numbers.wkspdmg_var_rgb.." "..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."。\n"..COLORS_KWords_zh_cn.Weakspothits_k_rgb_zh_cn.."无视 "..COLORS_Numbers.n_3_rgb.." 名敌人的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn)),


		--[+ LIMBSPLITTER +]--
			-- Combat Axes, Pickaxes, Sapper Shovels, Tactical Axes -- 5 | 4.5 | 4 | 3.5
			create_template("weap_wbm015_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_on_first_attack_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." on your First Attack every "..COLORS_Numbers.cd_var_rgb.." seconds."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +60%, cooldown: 3.5 -- colors -- Note
			--[+ French +]--
			create_template("weap_wbm015_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_on_first_attack_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." sur votre première attaque toute les "..COLORS_Numbers.cd_var_rgb.." secondes."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Расчленитель -- руоф Расщепитель
			create_template("weap_wbm015_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_on_first_attack_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." для вашей первой атаки каждые "..COLORS_Numbers.cd_var_rgb.." секунды."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 斷肢者 +]--
			-- 戰鬥斧, 十字鎬, 工兵鏟, 戰術斧 -- 5 | 4.5 | 4 | 3.5
			create_template("weap_wbm015_desc_ext_tw",
				{"loc_trait_bespoke_power_bonus_on_first_attack_desc"}, {"zh-tw"},
					loc_text("每 "..COLORS_Numbers.cd_var_rgb.." 秒，第一次攻擊增加 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."。")),
			--[+ Simplified Chinese - 断肢者 +]--
			create_template("weap_wbm015_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_on_first_attack_desc"}, {"zh-cn"},
					loc_text("每 "..COLORS_Numbers.cd_var_rgb.." 秒，首次攻击 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),


-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		--[+ ALL OR NOTHING +]-- checked 27.04.2025
		-- Melee Power per stack (per tier)
		-- Combat Axes, Pickaxes -- 5% | 6% | 7% | 8% (up to +40%)
		-- Sapper Shovels, Tactical Axes -- General power: 10% | 10% | 10% | 10% (up to +50%) (bugged)
			create_template("weap_wbm016_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_scaled_on_stamina_desc"}, {"en"},
					loc_text("Up to "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb..", as "..COLORS_KWords.Stamina_rgb.." depletes. Every "..COLORS_Numbers.pc_20_rgb.." of depleted Max "..COLORS_KWords.Stamina_rgb.." grants "..COLORS_Numbers.n_1_rgb.." Stack. Up to "..COLORS_Numbers.pc_50_rgb.." at "..COLORS_Numbers.n_5_rgb.." Stacks. {#color(255, 35, 5)}(bugged: Shovels and Tactical Axes +10% all tiers){#reset()}"..COLORS_KWords.Pwr_note_rgb)), -- power_level: +8% -- rewrite (extended description, bug) -- colors -- Note Strength
			--[+ French +]--
			create_template("weap_wbm016_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_scaled_on_stamina_desc"}, {"fr"},
					loc_text("Jusqu'à "..COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr..", en fonction "..COLORS_KWords_fr.Stamina_rgb_fr.." épuisée. Chaque "..COLORS_Numbers.pc_20_rgb.." de la barre d'"..COLORS_KWords_fr.Stamina_rgb_fr.." épuisée donne "..COLORS_Numbers.n_1_rgb.." cumule. Jusqu'à "..COLORS_Numbers.n_5_rgb.." cumuls. {#color(255, 35, 5)}(bug: Les pelles et haches tactiques donnent +10% peu importe le tier de la bénédiction){#reset()}"..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian - Всё или ничего - руоф Все или ничего +]-- checked 27.04.2025
			create_template("weap_wbm016_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_scaled_on_stamina_desc"}, {"ru"},
					loc_text("До "..COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru..", когда уровень "..COLORS_KWords_ru.Stamina_rgb_ru.." на нуле. Каждые "..COLORS_Numbers.pc_20_rgb.." потраченной "..COLORS_KWords_ru.Stamina_rgb_ru.." даёт "..COLORS_Numbers.n_1_rgb.." заряд. До "..COLORS_Numbers.pc_50_rgb.." при "..COLORS_Numbers.n_5_rgb.." зарядах. {#color(255, 35, 5)}(Баг: Лопаты и Тактические топоры: +10% на всех уровнях){#reset()}"..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 孤注一擲 +]--
			-- 戰鬥斧, 十字鎬 -- 5% | 6% | 7% | 8% (up to +40%)
			-- 工兵鏟, 戰術斧 -- 一般力量: 10% | 10% | 10% | 10% (up to +50%) (bugged)
			create_template("weap_wbm016_desc_ext_tw",
				{"loc_trait_bespoke_power_bonus_scaled_on_stamina_desc"}, {"zh-tw"},
					loc_text("每消耗最大 "..COLORS_KWords_tw.Stamina_rgb_tw.." 的 "..COLORS_Numbers.pc_20_rgb.." 獲得一層。\n每一層 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.." ，上限 "..COLORS_Numbers.n_5_rgb.." 層。\n{#color(255, 35, 5)}(bug: 鏟子和戰術斧 +10% 所有等級){#reset()}"..COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 孤注一掷 +]--
			create_template("weap_wbm016_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_scaled_on_stamina_desc"}, {"zh-cn"},
					loc_text("随"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."消耗叠加层数，\n每消耗 "..COLORS_Numbers.pc_20_rgb.."，"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。{#color(255, 35, 5)}\n（BUG：无论祝福级别如何，战术斧与工兵铲数值始终为 +10% 强度。）{#reset()}"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


		--[+ DECAPITATOR +]--
		-- Combat Axes -- 18% | 20% | 22% | 24% (up to +120%)
			create_template("weap_wbm017_desc_ext_en",
				{"loc_trait_bespoke_stacking_rending_on_one_hit_kills_desc"}, {"en"},
					loc_text(COLORS_Numbers.fin_var_rgb.." "..COLORS_KWords.Finesse_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Enemy One-Shot. Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Fns_note_rgb)), -- finesse: +24%, time: 5, stacks: 5 -- s->seconds -- colors -- Note
			--[+ French +]--
			create_template("weap_wbm017_desc_ext_fr",
				{"loc_trait_bespoke_stacking_rending_on_one_hit_kills_desc"}, {"fr"},
					loc_text(COLORS_Numbers.fin_var_rgb.." de "..COLORS_KWords_fr.Finesse_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lorsque l'ennemie est tué en un coup. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Fns_note_rgb_fr)),
			--[+ Russian +]-- Обезглавливатель -- руоф Палач
			create_template("weap_wbm017_desc_ext_ru",
				{"loc_trait_bespoke_stacking_rending_on_one_hit_kills_desc"}, {"ru"},
					loc_text(COLORS_Numbers.fin_var_rgb.." к "..COLORS_KWords_ru.Finesse_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунд при убийстве врага одним ударом. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Fns_note_rgb_ru)),
			--[+ Traditional Chinese - 斬首者 +]--
			-- 戰鬥斧 -- 18% | 20% | 22% | 24% (up to +120%)
			create_template("weap_wbm017_desc_ext_tw",
				{"loc_trait_bespoke_stacking_rending_on_one_hit_kills_desc"}, {"zh-tw"},
					loc_text("一擊斃命時 "..COLORS_Numbers.fin_var_rgb.." "..COLORS_KWords_tw.Finesse_rgb_tw.." ，持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n每次擊殺可疊加一層，上限 "..COLORS_Numbers.n_5_rgb.." 層。"..COLORS_KWords_tw.Fns_note_rgb_tw)),
			--[+ Simplified Chinese - 斩首者 +]--
			create_template("weap_wbm017_desc_ext_zh_cn",
				{"loc_trait_bespoke_stacking_rending_on_one_hit_kills_desc"}, {"zh-cn"},
					loc_text("一击毙敌时 "..COLORS_Numbers.fin_var_rgb.." "..COLORS_KWords_zh_cn.Finesse_dmg_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Fns_note_rgb_zh_cn)),

		--[+ AGILE +]-- checked 27.04.2025
		-- Melee Weakspot Damage (per tier)
		-- Duelling Swords, Tactical Axes -- 2.5% | 5% | 7.5% | 10%
			create_template("weap_wbm018_desc_ext_en",
				{"loc_trait_bespoke_dodge_count_reset_on_weakspot_hit_and_weakspot_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.mel_weapsp_dmg_var_rgb.." Melee "..COLORS_KWords.Weakspot_dmg_rgb..". Refreshed Dodge Efficiency on "..COLORS_KWords.Weakspothit_rgb..".")), -- melee_weakspot_damage: +10% -- rewrite (numbers in front) -- colors
			--[+ French +]--
			create_template("weap_wbm018_desc_ext_fr",
				{"loc_trait_bespoke_dodge_count_reset_on_weakspot_hit_and_weakspot_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.mel_weapsp_dmg_var_rgb.." de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." de mélée. Actualise l'efficacité de l'esquive lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr..".")),
			--[+ Russian - Проворный - руоф Ловкий +]-- checked 27.04.2025
			create_template("weap_wbm018_desc_ext_ru",
				{"loc_trait_bespoke_dodge_count_reset_on_weakspot_hit_and_weakspot_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.mel_weapsp_dmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." для атак ближнего боя. Эффективность уклонения обновляется при ударе в "..COLORS_KWords_ru.Weakspothit_rgb_ru..".")),
			--[+ Traditional Chinese - 敏捷 +]--
			-- 決鬥劍, 戰術斧 -- 2.5% | 5% | 7.5% | 10%
			create_template("weap_wbm018_desc_ext_tw",
				{"loc_trait_bespoke_dodge_count_reset_on_weakspot_hit_and_weakspot_damage_desc"}, {"zh-tw"},
					loc_text("近戰武器 "..COLORS_Numbers.mel_weapsp_dmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.." 。\n在 "..COLORS_KWords_tw.Weakspothit_rgb_tw.." 時，重置閃躲次數。")),
			--[+ Simplified Chinese - 敏捷 +]--
			create_template("weap_wbm018_desc_ext_zh_cn",
				{"loc_trait_bespoke_dodge_count_reset_on_weakspot_hit_and_weakspot_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.mel_weapsp_dmg_var_rgb.." "..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."。\n"..COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时，刷新有效闪避。")),

		--[+ SLAUGHTER SPREE +]--
		-- Tactical Axes -- 40% | 60% | 80% | 100%
			create_template("weap_wbm019_desc_ext_en",
				{"loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill_new_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." to the next Melee attack within "..COLORS_Numbers.n_5_rgb.." seconds on "..COLORS_KWords.Weak_spot_rgb.." "..COLORS_KWords.Crit_hit_rgb.." Kill.")), -- crit_chance: +100% -- colors
			--[+ French +]--
			create_template("weap_wbm019_desc_ext_fr",
				{"loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill_new_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pour la prochaine attaque de mélée dans les "..COLORS_Numbers.n_5_rgb.." secondes suivant une élimination sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." et "..COLORS_KWords_fr.Crit_rgb_fr..".")),
			--[+ Russian +]-- Резня -- руоф  Убойная сила
			create_template("weap_wbm019_desc_ext_ru",
				{"loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill_new_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." для следующей атаки ближнего боя на "..COLORS_Numbers.n_5_rgb.." секунд при убийствах "..COLORS_KWords_ru.Crit_hits_rgb_ru.." в "..COLORS_KWords_ru.Weakspot_rgb_ru..".")),
			--[+ Traditional Chinese - 殺戮狂潮 +]--
			-- 戰術斧 -- 40% | 60% | 80% | 100%
			create_template("weap_wbm019_desc_ext_tw",
				{"loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill_new_desc"}, {"zh-tw"},
					loc_text("在 "..COLORS_KWords_tw.Weakspot_rgb_tw.." "..COLORS_KWords_tw.Crit_k_rgb_tw.." 後的 "..COLORS_Numbers.n_5_rgb.." 秒內，\n下一次近戰攻擊必定 "..COLORS_KWords_tw.Crit_rgb_tw.." 。")),
			--[+ Simplified Chinese - 屠杀狂欢 +]--
			create_template("weap_wbm019_desc_ext_zh_cn",
				{"loc_trait_bespoke_guaranteed_melee_crit_after_crit_weakspot_kill_new_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Weakspot_rgb_zh_cn..""..COLORS_KWords_zh_cn.Crit_hits_k_rgb_zh_cn.."时，下次近战攻击 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.n_5_rgb.." 秒。")),

		--[+ RELENTLESS STRIKES +]--
		-- Duelling Swords, Tactical Axes -- 4% | 6% | 8% | 10% (up to +50%)
			create_template("weap_wbm020_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_on_same_enemy_attacks_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds when hitting the Same enemy. Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +10%, time: 2, stacks: 5 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbm020_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_on_same_enemy_attacks_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes en attaquant le même ennemie. Se Cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Безжалостные удары -- руоф Безжалостность
			create_template("weap_wbm020_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_on_same_enemy_attacks_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при повторном попадании по врагу. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 持續打擊 +]--
			-- 決鬥劍, 戰術斧 -- 4% | 6% | 8% | 10% (up to +50%)
			create_template("weap_wbm020_desc_ext_tw",
				{"loc_trait_bespoke_power_bonus_on_same_enemy_attacks_desc"}, {"zh-tw"},
					loc_text("命中同一敵人 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，持續"..COLORS_Numbers.time_var_rgb.." 秒。\n最多可疊加 "..COLORS_Numbers.stacks_var_rgb.." 次。"..COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 无情打击 +]--
			create_template("weap_wbm020_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_on_same_enemy_attacks_desc"}, {"zh-cn"},
					loc_text("再次命中同一敌人时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ FLESH TEARER +]--
		-- Combat Blades -- 5 | 6 | 7 | 8
			create_template("weap_wbm021_desc_ext_en",
				{"loc_trait_bespoke_bleed_on_crit_melee_desc"}, {"en"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." "..COLORS_KWords.Bleed_rgb.." Stacks on "..COLORS_KWords.Crit_hit_rgb..". Up to "..COLORS_Numbers.n_16_rgb.." Stacks.")), -- stacks: +8 -- +"Up to 16 Stacks." -- colors
			--[+ French +]--
			create_template("weap_wbm021_desc_ext_fr",
				{"loc_trait_bespoke_bleed_on_crit_melee_desc"}, {"fr"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." Cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." en cas de "..COLORS_KWords_fr.Crit_hit_rgb_fr..". Jusqu'à "..COLORS_Numbers.n_16_rgb.." Cumuls.")),
			--[+ Russian +]-- Раздиратель плоти
			create_template("weap_wbm021_desc_ext_ru",
				{"loc_trait_bespoke_bleed_on_crit_melee_desc"}, {"ru"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." при "..COLORS_KWords_ru.Crit_hit_rgb_ru..". До "..COLORS_Numbers.n_16_rgb.." зарядов.")),
			--[+ Traditional Chinese - 血肉撕裂者 +]--
			-- 戰刃 -- 5 | 6 | 7 | 8
			create_template("weap_wbm021_desc_ext_tw",
				{"loc_trait_bespoke_bleed_on_crit_melee_desc"}, {"zh-tw"},
					loc_text("在暴擊時，使其獲得 "..COLORS_Numbers.p_stacks_var_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.." 。\n上限 "..COLORS_Numbers.n_16_rgb.." 層。")),
			--[+ Simplified Chinese - 撕裂者 +]--
			create_template("weap_wbm021_desc_ext_zh_cn",
				{"loc_trait_bespoke_bleed_on_crit_melee_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时 ".. COLORS_Numbers.p_stacks_var_rgb.." 层"..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_16_rgb.." 层。")),

		--[+ LACERATE +]--
		-- Combat Blades -- 1 | 2 | 3 | 4
			create_template("weap_wbm022_desc_ext_en",
				{"loc_trait_bespoke_bleed_on_non_weakspot_hit_desc"}, {"en"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." "..COLORS_KWords.Bleed_rgb.." Stacks on non-"..COLORS_KWords.Weakspothits_rgb..". Up to "..COLORS_Numbers.n_16_rgb.." Stacks.")), -- stacks: +8 -- +"Up to 16 Stacks." -- colors
			--[+ French +]--
			create_template("weap_wbm022_desc_ext_fr",
				{"loc_trait_bespoke_bleed_on_non_weakspot_hit_desc"}, {"fr"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." Cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." sur les attaque hors "..COLORS_KWords_fr.Weakspothits_rgb_fr..". Jusqu'à "..COLORS_Numbers.n_16_rgb.." Cumuls.")),
			--[+ Russian +]-- Терзание
			create_template("weap_wbm022_desc_ext_ru",
				{"loc_trait_bespoke_bleed_on_non_weakspot_hit_desc"}, {"ru"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." заряда "..COLORS_KWords_ru.Bleed_rgb_ru.." при попаданиях не в "..COLORS_KWords_ru.Weakspot_rgb_ru..". До "..COLORS_Numbers.n_16_rgb.." зарядов.")),
			--[+ Traditional Chinese - 撕碎 +]--
			-- 戰刃 -- 1 | 2 | 3 | 4
			create_template("weap_wbm022_desc_ext_tw",
				{"loc_trait_bespoke_bleed_on_non_weakspot_hit_desc"}, {"zh-tw"},
					loc_text("非 "..COLORS_KWords_tw.Weakspothits_rgb_tw.." 時，使其獲得 "..COLORS_Numbers.p_stacks_var_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.." 。\n上限 "..COLORS_Numbers.n_16_rgb.." 層。")),
			--[+ Simplified Chinese - 割裂 +]--
			create_template("weap_wbm022_desc_ext_zh_cn",
				{"loc_trait_bespoke_bleed_on_non_weakspot_hit_desc"}, {"zh-cn"},
					loc_text("非"..COLORS_KWords_zh_cn.Weakspothits_rgb_zh_cn.."时 ".. COLORS_Numbers.p_stacks_var_rgb.." 层"..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_16_rgb.." 层。")),


-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		--[+ EXECUTOR +]--
		-- Combat Blades, Force Swords -- 5% | 5% | 5% | 5% (up to +25%) (bugged)
			create_template("weap_wbm023_desc_ext_en",
				{"loc_trait_bespoke_chained_weakspot_hits_increases_power_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." on Repeated "..COLORS_KWords.Weakspothit_rgb..". Stacks "..COLORS_Numbers.stacks_var_rgb.." times. {#color(255, 35, 5)}(bugged:+5% all tiers){#reset()}"..COLORS_KWords.Pwr_note_rgb)), -- power_level: +6%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbm023_desc_ext_fr",
				{"loc_trait_bespoke_chained_weakspot_hits_increases_power_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." lors d'un coup sur "..COLORS_KWords_fr.Weakspothit_rgb_fr.." répété. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. {#color(255, 35, 5)}(bug:+5% sur tout les niveaux de bénédiction){#reset()}"..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Каратель -- руоф Экзекутор
			create_template("weap_wbm023_desc_ext_ru",
				{"loc_trait_bespoke_chained_weakspot_hits_increases_power_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." при повторном ударе в "..COLORS_KWords_ru.Weakspothit_rgb_ru..". Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз. {#color(255, 35, 5)}(Баг: +5% на всех уровнях){#reset()}"..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 行刑者 +]--
			-- 戰刃, 烈焰力場劍 -- 5% | 5% | 5% | 5% (up to +25%) (bugged)
			create_template("weap_wbm023_desc_ext_tw",
				{"loc_trait_bespoke_chained_weakspot_hits_increases_power_desc"}, {"zh-tw"},
					loc_text("命中 "..COLORS_KWords_tw.Weakspothit_rgb_tw.." 時 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.."  秒。\n持續命中時每次疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.Pwr_note_rgb_tw)),
			-- create_template("weap_wbm023_desc_ext_tw",
				-- {"loc_trait_bespoke_chained_weakspot_hits_increases_power_desc"}, {"zh-tw"},
					-- loc_text("命中 "..COLORS_KWords_tw.Weakspothit_rgb_tw.." 時，\n每次攻擊可疊加一層 "..COLORS_KWords_tw.Strength_rgb_tw.." ，\n共可疊加 "..COLORS_Numbers.stacks_var_rgb.." 次。\n{#color(255, 35, 5)}(bug: 所有等級 +5%){#reset()}"..COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 处刑者 +]--
			create_template("weap_wbm023_desc_ext_zh_cn",
				{"loc_trait_bespoke_chained_weakspot_hits_increases_power_desc"}, {"zh-cn"},
					loc_text("连续"..COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。{#color(255, 35, 5)}\n（BUG：无论祝福级别如何，数值始终为 +5% 强度。）{#reset()}"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


		--[+ RIPOSTE +]--
		-- Combat Blades, Duelling Swords, Force Swords, Blaze Force Greatsword -- 12.5% | 15% | 17.5% | 20%
			create_template("weap_wbm024_desc_ext_en",
				{"loc_trait_bespoke_dodge_grants_crit_chance_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on successful Dodge.")), -- crit_chance: +20%, time: 6 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbm024_desc_ext_fr",
				{"loc_trait_bespoke_dodge_grants_crit_chance_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une esquive réussie.")),
			--[+ Russian +]-- Ответный удар
			create_template("weap_wbm024_desc_ext_ru",
				{"loc_trait_bespoke_dodge_grants_crit_chance_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунд при успешном уклонении.")),
			--[+ Traditional Chinese - 還擊 +]--
			-- 戰刃, 決鬥劍, 烈焰力場劍, 烈焰力場巨劍 -- 12.5% | 15% | 17.5% | 20%
			create_template("weap_wbm024_desc_ext_tw",
				{"loc_trait_bespoke_dodge_grants_crit_chance_desc"}, {"zh-tw"},
					loc_text("成功閃避時 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 还击 +]--
			create_template("weap_wbm024_desc_ext_zh_cn",
				{"loc_trait_bespoke_dodge_grants_crit_chance_desc"}, {"zh-cn"},
					loc_text("成功闪避时 "..COLORS_Numbers.crit_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ PRECOGNITION +]--
		-- Combat Blades, Duelling Swords, Force Swords, Blaze Force Greatsword -- 45% | 50% | 55% | 60%
			create_template("weap_wbm025_desc_ext_en",
				{"loc_trait_bespoke_dodge_grants_finesse_bonus_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Finesse_rgb.." "..COLORS_KWords.Damage_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on successful Dodge."..COLORS_KWords.Fns_note_rgb)), -- damage: +60%, time: 2 -- s->seconds -- colors -- Note
			--[+ French +]--
			create_template("weap_wbm025_desc_ext_fr",
				{"loc_trait_bespoke_dodge_grants_finesse_bonus_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Finesse_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une esquive réussie."..COLORS_KWords_fr.Fns_note_rgb_fr)),
			--[+ Russian +]-- Предвидение -- руоф Познание
			create_template("weap_wbm025_desc_ext_ru",
				{"loc_trait_bespoke_dodge_grants_finesse_bonus_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." от "..COLORS_KWords_ru.Finesse_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при успешном уклонении."..COLORS_KWords_ru.Fns_note_rgb_ru)),
			--[+ Traditional Chinese - 未卜先知 +]--
			-- 戰刃, 決鬥劍, 烈焰力場劍, 烈焰力場巨劍 -- 45% | 50% | 55% | 60%
			create_template("weap_wbm025_desc_ext_tw",
				{"loc_trait_bespoke_dodge_grants_finesse_bonus_desc"}, {"zh-tw"},
					loc_text("成功閃躲時 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Finesse_dmg_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒，"..COLORS_KWords_tw.Fns_note_rgb_tw)),
			--[+ Simplified Chinese - 预知 +]--
			create_template("weap_wbm025_desc_ext_zh_cn",
				{"loc_trait_bespoke_dodge_grants_finesse_bonus_desc"}, {"zh-cn"},
					loc_text("成功闪避时 "..COLORS_Numbers.dmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Finesse_dmg_rgb_zh_cn.."".."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.Fns_note_rgb_zh_cn)),

		--[+ HAYMAKER +]--
		-- Bully Clubs, Combat Blades -- 1% | 2% | 3% | 4% (up to +20%)
			create_template("weap_wbm026_desc_ext_en",
				{"loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance_desc"}, {"en"},
					loc_text(COLORS_Numbers.procch_var_rgb.." to Instakill human-sized enemies on Chained Heavy Hit. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. Note that other potential triggers will not be activated on instakill.")), -- proc_chance: +4%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbm026_desc_ext_fr",
				{"loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance_desc"}, {"fr"},
					loc_text(COLORS_Numbers.procch_var_rgb.." de chance de tuer instantanément les ennemies de taille humaines sur les attaques puissantes répétées. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. A noter que d'autres déclencheurs potentiels ne seront pas activés lors d'une élimination instantanée.")),
			--[+ Russian +]-- Жнец -- руоф Коса
			create_template("weap_wbm026_desc_ext_ru",
				{"loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance_desc"}, {"ru"},
					loc_text(COLORS_Numbers.procch_var_rgb.." к шансу убить одним ударом врага человеческого размера при серии тяжёлых ударов. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз. Другие потенциальные триггеры не будут активированы при таком убийстве.")),
			--[+ Traditional Chinese - 強力一擊 +]--
			-- 惡棍棒, 戰刃 -- 1% | 2% | 3% | 4% (up to +20%)
			create_template("weap_wbm026_desc_ext_tw",
				{"loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance_desc"}, {"zh-tw"},
					loc_text("連續重擊時 \n"..COLORS_Numbers.procch_var_rgb.." 對人類大小的敵人即死機會，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。\n注意\n - 潛在Buff觸發即死時不會啟動。\n - Boss類無效。")),
			-- create_template("weap_wbm026_desc_ext_tw",
				-- {"loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance_desc"}, {"zh-tw"},
					-- loc_text("連續重擊時 \n"..COLORS_Numbers.procch_var_rgb.."對人類大小的敵人即死機會。持續"..COLORS_Numbers.time_var_rgb.." 秒，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。\n注意\n -其他Buff觸發即死時不會啟動。\n -Boss類無效。")),
			--[+ Simplified Chinese - 干草机 +]--
			create_template("weap_wbm026_desc_ext_zh_cn",
				{"loc_trait_bespoke_heavy_chained_hits_increases_killing_blow_chance_desc"}, {"zh-cn"},
					loc_text("连锁重攻击命中时 \n"..COLORS_Numbers.procch_var_rgb.." 直接击杀人形敌人的几率。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。\n攻击每命中一个目标叠加 "..COLORS_Numbers.n_1_rgb.." 层。\n注意，通过这种方式直接击杀敌人不会触发其他效果。")),

		--[+ SMACKDOWN +]--
		-- Bully Clubs, Combat Blades -- 12.5% | 15% | 17.5% | 20%
			create_template("weap_wbm027_desc_ext_en",
				{"loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds when hitting a "..COLORS_KWords.Staggered_rgb.." enemy on Special Action Hit.")), -- crit_chance: +20%, time: 2 -- s->seconds -- rewrite -- colors
			--[+ French +]--
			create_template("weap_wbm027_desc_ext_fr",
				{"loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes pendant qu'un ennemie "..COLORS_KWords_fr.Staggered_rgb_fr.." grâce à un coup d'action spéciale.")),
			--[+ Russian +]-- Сокрушение -- руоф Смятение
			create_template("weap_wbm027_desc_ext_ru",
				{"loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при атаке "..COLORS_KWords_ru.Staggered_rgb_ru.." врагов специальными атаками.")),
			--[+ Traditional Chinese - 擊倒 +]--
			-- 惡棍棒, 戰刃 -- 12.5% | 15% | 17.5% | 20%
			create_template("weap_wbm027_desc_ext_tw",
				{"loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy_desc"}, {"zh-tw"},
					loc_text("特殊攻擊擊中 "..COLORS_KWords_tw.Staggered_rgb_tw.." 敵人時 \n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 攻击波 +]--
			create_template("weap_wbm027_desc_ext_zh_cn",
				{"loc_trait_bespoke_increased_crit_chance_after_punching_staggered_enemy_desc"}, {"zh-cn"},
					loc_text("特殊攻击命中"..COLORS_KWords_zh_cn.Staggered_rgb_zh_cn.."敌人时 \n"..COLORS_Numbers.crit_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ MERCY KILLER +]--
		-- Combat Blades -- 52.5% | 55% | 57.5% | 60%
			create_template("weap_wbm028_desc_ext_en",
				{"loc_trait_bespoke_increased_weakspot_damage_on_bleeding_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb.." to Enemies with "..COLORS_KWords.Bleed_rgb.." Stacks.")), -- damage: +60% -- colors
			--[+ French +]--
			create_template("weap_wbm028_desc_ext_fr",
				{"loc_trait_bespoke_increased_weakspot_damage_on_bleeding_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." au ennemies avec des cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr..".")),
			--[+ Russian +]-- Милосердный убийца -- руоф Милосердие
			create_template("weap_wbm028_desc_ext_ru",
				{"loc_trait_bespoke_increased_weakspot_damage_on_bleeding_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." врагам с зарядами "..COLORS_KWords_ru.Bleed_rgb_ru..".")),
			--[+ Traditional Chinese - 仁慈殺手 +]--
			-- 戰刃 -- 52.5% | 55% | 57.5% | 60%
			create_template("weap_wbm028_desc_ext_tw",
				{"loc_trait_bespoke_increased_weakspot_damage_on_bleeding_desc"}, {"zh-tw"},
					loc_text("攻擊有 "..COLORS_KWords_tw.Bleed_rgb_tw.." 的敵人，\n增加 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.." 。")),
			--[+ Simplified Chinese - 仁慈杀手 +]--
			create_template("weap_wbm028_desc_ext_zh_cn",
				{"loc_trait_bespoke_increased_weakspot_damage_on_bleeding_desc"}, {"zh-cn"},
					loc_text("对"..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."敌人 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."。")),

		--[+ RUTHLESS BACKSTAB +]--
		-- Combat Blades -- 70% | 80% | 90% | 100% 
			create_template("weap_wbm029_desc_ext_en",
				{"loc_trait_bespoke_rending_on_backstabs_desc"}, {"en"},
					loc_text(COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Rending_rgb.." on Backstab Hit."..COLORS_KWords.Rend_note_rgb)), -- rending: +100% -- colors
			--[+ French +]--
			create_template("weap_wbm029_desc_ext_fr",
				{"loc_trait_bespoke_rending_on_backstabs_desc"}, {"fr"},
					loc_text(COLORS_Numbers.rending_var_rgb.." de "..COLORS_KWords_fr.Rending_rgb_fr.." lors d'un coup dans le dos."..COLORS_KWords_fr.Rend_note_rgb_fr)),
			--[+ Russian +]-- Беспощадный удар в спину
			create_template("weap_wbm029_desc_ext_ru",
				{"loc_trait_bespoke_rending_on_backstabs_desc"}, {"ru"},
					loc_text(COLORS_Numbers.rending_var_rgb.." к "..COLORS_KWords_ru.Rending_rgb_ru.." при ударе в спину."..COLORS_KWords_ru.Rend_note_rgb_ru)),
			--[+ Traditional Chinese - 無情背刺 +]--
			-- 戰刃 -- 70% | 80% | 90% | 100%
			create_template("weap_wbm029_desc_ext_tw",
				{"loc_trait_bespoke_rending_on_backstabs_desc"}, {"zh-tw"},
					loc_text("背刺時，增加 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Rending_rgb_tw.." 。")),
			--[+ Simplified Chinese - 无情背刺 +]--
			create_template("weap_wbm029_desc_ext_zh_cn",
				{"loc_trait_bespoke_rending_on_backstabs_desc"}, {"zh-cn"},
					loc_text("背刺时 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Rending_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Rend_note_rgb_zh_cn)),

		--[+ UNCANNY STRIKE +]--
		-- Combat Blade, Duelling Swords, Force Swords, Sapper Shovels -- 12% | 16% | 20% | 24% (up to +120%)
			create_template("weap_wbm030_desc_ext_en",
				{"loc_trait_bespoke_stacking_rending_on_weakspot_desc"}, {"en"},
					loc_text(COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Rending_rgb.." on Enemy "..COLORS_KWords.Weakspothit_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds. Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Rend_note_rgb)), -- rending: +24%, time: 3.5, stacks: 5 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbm030_desc_ext_fr",
				{"loc_trait_bespoke_stacking_rending_on_weakspot_desc"}, {"fr"},
					loc_text(COLORS_Numbers.rending_var_rgb.." de "..COLORS_KWords_fr.Rending_rgb_fr.." sur un coup sur "..COLORS_KWords_fr.Weakspothit_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Rend_note_rgb_fr)),
			--[+ Russian +]-- Жуткий удар
			create_template("weap_wbm030_desc_ext_ru",
				{"loc_trait_bespoke_stacking_rending_on_weakspot_desc"}, {"ru"},
					loc_text(COLORS_Numbers.rending_var_rgb.." к "..COLORS_KWords_ru.Rending_rgb_ru.." врагов при ударе в "..COLORS_KWords_ru.Weakspothit_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Rend_note_rgb_ru)),
			--[+ Traditional Chinese - 詭異打擊 +]--
			-- 戰刃, 決鬥劍, 烈焰力場劍, 工兵鏟 -- 12% | 16% | 20% | 24% (up to +120%)
			create_template("weap_wbm030_desc_ext_tw",
				{"loc_trait_bespoke_stacking_rending_on_weakspot_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Weakspothit_rgb_tw.." 時 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Rending_rgb_tw.." ，持續 "..COLORS_Numbers.time_var_rgb.." 秒，\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.Rend_note_rgb_tw)),
			--[+ Simplified Chinese - 神秘打击 +]--
			create_template("weap_wbm030_desc_ext_zh_cn",
				{"loc_trait_bespoke_stacking_rending_on_weakspot_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Rending_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加"..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Rend_note_rgb_zh_cn)),

		--[+ TRAUMA +]--
		-- Crusher, Devil's Claw Swords, Sapper Shovels, Thunder Hammers -- 14% | 16% | 18% | 20% (up to +100%) 
			create_template("weap_wbm031_desc_ext_en",
				{"loc_trait_bespoke_consecutive_hits_increases_stagger_desc"}, {"en"},
					loc_text(COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords.Impact_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Repeated Hit. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- impact: +20%, time: 2, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbm031_desc_ext_fr",
				{"loc_trait_bespoke_consecutive_hits_increases_stagger_desc"}, {"fr"},
					loc_text(COLORS_Numbers.impact_var_rgb.." d'"..COLORS_KWords_fr.Impact_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un coup répété. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Травма
			create_template("weap_wbm031_desc_ext_ru",
				{"loc_trait_bespoke_consecutive_hits_increases_stagger_desc"}, {"ru"},
					loc_text(COLORS_Numbers.impact_var_rgb.." к "..COLORS_KWords_ru.Impact_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при повторных попаданиях. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 創傷 +]--
			-- 輾壓者, 『惡魔之爪』劍, 工兵鏟, 雷鎚 -- 14% | 16% | 18% | 20% (up to +100%)
			create_template("weap_wbm031_desc_ext_tw",
				{"loc_trait_bespoke_consecutive_hits_increases_stagger_desc"}, {"zh-tw"},
					loc_text("連續攻擊時 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_tw.Impact_rgb_tw.." ，持續"..COLORS_Numbers.time_var_rgb.." 秒。\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.n_5_rgb.." 層。")),
			--[+ Simplified Chinese - 创伤 +]--
			create_template("weap_wbm031_desc_ext_zh_cn",
				{"loc_trait_bespoke_consecutive_hits_increases_stagger_desc"}, {"zh-cn"},
					loc_text("再次命中同一敌人时 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ VICIOUS SLICE +]--
		-- Devil's Claw Swords -- 14% | 16% | 18% | 20% (up to +100%)
			create_template("weap_wbm032_desc_ext_en",
				{"loc_trait_bespoke_increase_stagger_per_hit_in_sweep_desc"}, {"en"},
					loc_text(COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords.Impact_rgb.." to Target for each Enemy already Hit by the same Attack. Up to "..COLORS_Numbers.n_5_rgb.." Stacks.")), -- impact: +20% -- colors
			--[+ French +]--
			create_template("weap_wbm032_desc_ext_fr",
				{"loc_trait_bespoke_increase_stagger_per_hit_in_sweep_desc"}, {"fr"},
					loc_text(COLORS_Numbers.impact_var_rgb.." d'"..COLORS_KWords_fr.Impact_rgb_fr.." à la cible pour chaque ennemie déjà touché par la même attaque. Jusqu'à "..COLORS_Numbers.n_5_rgb.." cumuls.")),
			--[+ Russian +]-- Жестокий рарез -- руоф Жестокая нарезка
			create_template("weap_wbm032_desc_ext_ru",
				{"loc_trait_bespoke_increase_stagger_per_hit_in_sweep_desc"}, {"ru"},
					loc_text(COLORS_Numbers.impact_var_rgb.." к "..COLORS_KWords_ru.Impact_rgb_ru.." по цели за каждого врага, уже поражённого этой же атакой. До "..COLORS_Numbers.n_5_rgb.." зарядов.")),
			--[+ Traditional Chinese - 凶狠切割 +]--
			-- 『惡魔之爪』劍 -- 14% | 16% | 18% | 20% (up to +100%)
			create_template("weap_wbm032_desc_ext_tw",
				{"loc_trait_bespoke_increase_stagger_per_hit_in_sweep_desc"}, {"zh-tw"},
					loc_text("命中同一敵人 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_tw.Impact_rgb_tw.." ，\n每次攻擊可疊加一層，上限 "..COLORS_Numbers.n_5_rgb.."層。")), -- UI沒顯示			
			--[+ Simplified Chinese - 邪恶斩切 +]--
			create_template("weap_wbm032_desc_ext_zh_cn",
				{"loc_trait_bespoke_increase_stagger_per_hit_in_sweep_desc"}, {"zh-cn"},
					loc_text("每有一个已被同一攻击命中的敌人，\n"..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。")),

		--[+ HAMMERBLOW +]--
		-- Crusher, Devil's Claw Swords, Sapper Shovels, Shock Mauls, Thunder Hammers -- 19% | 21% | 23% | 25% (up to +125%)
			create_template("weap_wbm033_desc_ext_en",
				{"loc_trait_bespoke_stacking_increase_impact_on_hit_desc"}, {"en"},
					loc_text(COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords.Impact_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Hit. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. Up to "..COLORS_Numbers.n_5_rgb.." Stacks per Hit.")), -- impact: +25%, time: 1.5, stacks: 5 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbm033_desc_ext_fr",
				{"loc_trait_bespoke_stacking_increase_impact_on_hit_desc"}, {"fr"},
					loc_text(COLORS_Numbers.impact_var_rgb.." d'"..COLORS_KWords_fr.Impact_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un coup. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. Jusqu'à "..COLORS_Numbers.n_5_rgb.." cumuls par coup.")),
			--[+ Russian +]-- Молотобой -- руоф Удар молотом
			create_template("weap_wbm033_desc_ext_ru",
				{"loc_trait_bespoke_stacking_increase_impact_on_hit_desc"}, {"ru"},
					loc_text(COLORS_Numbers.impact_var_rgb.." к "..COLORS_KWords_ru.Impact_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при ударе. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз. Вплоть до "..COLORS_Numbers.n_5_rgb.." зарядов за удар.")),
			--[+ Traditional Chinese - 錘擊 +]--
			-- 輾壓者, 『惡魔之爪』劍, 工兵鏟, 電擊錘, 雷鎚 -- 19% | 21% | 23% | 25% (up to +125%)
			create_template("trait_bespoke_033_desc_ext_zh",
				{"loc_trait_bespoke_stacking_increase_impact_on_hit_desc"}, {"zh-tw"},
					loc_text("每次攻擊 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_tw.Impact_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n上限 "..COLORS_Numbers.n_5_rgb.." 層。")),
			--[+ Simplified Chinese - 锤击 +]--
			create_template("weap_wbm033_desc_ext_zh_cn",
				{"loc_trait_bespoke_stacking_increase_impact_on_hit_desc"}, {"zh-cn"},
					loc_text("命中时 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。\n攻击每命中一个目标叠加 "..COLORS_Numbers.n_1_rgb.." 层。")),

		--[+ SKULLCRUSHER +]--
		-- Battle Maul and Shield, Bully Clubs, Crusher, Devil's Claw Swords, Latrine Shovels, Power Maul, Sapper Shovels, Shock Mauls, Thunder Hammers -- 1 | 2 | 3 | 4
			create_template("weap_wbm034_desc_ext_en",
				{"loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff_desc"}, {"en"},
					loc_text("Target receives "..COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." if already "..COLORS_KWords.Staggered_rgb..", to a maximum of "..COLORS_Numbers.n_8_rgb.." Stacks. Lasts "..COLORS_Numbers.time_var_rgb.." seconds.")), -- stacks: 4, damage: +10%, time: 5 --  +"to a maximum of 8 Stacks. -- Stack(s)->Stacks -- colors
			--[+ French +]--
			create_template("weap_wbm034_desc_ext_fr",
				{"loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff_desc"}, {"fr"},
					loc_text("La cible subit "..COLORS_Numbers.stacks_var_rgb.." cumuls de "..COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." si elle "..COLORS_KWords_fr.Staggered_rgb_fr.." déjà, jusqu'à un maximum de "..COLORS_Numbers.n_8_rgb.." cumuls. Dure "..COLORS_Numbers.time_var_rgb.." secondes.")),
			--[+ Russian +]-- Череподробитель
			create_template("weap_wbm034_desc_ext_ru",
				{"loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff_desc"}, {"ru"},
					loc_text("Цель получает "..COLORS_Numbers.stacks_var_rgb.." заряда "..COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru..", если уже "..COLORS_KWords_ru.Stunned_rgb_ru..", вплоть до "..COLORS_Numbers.n_8_rgb.." зарядов. Длится "..COLORS_Numbers.time_var_rgb.." секунд.")),
			--[+ Traditional Chinese - 粉碎者 +]--
			-- 作戰大槌&板盾, 惡棍棒, 輾壓者, 『惡魔之爪』劍, 工兵鏟, 電擊錘, 雷鎚 -- 1 | 2 | 3 | 4
			create_template("weap_wbm034_desc_ext_tw",
				{"loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff_desc"}, {"zh-tw"},
					loc_text("對 "..COLORS_KWords_tw.Staggered_rgb_tw.." 的敵人，\n使其獲得 "..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw)),
			--[+ Simplified Chinese - 碎颅者 +]--
			create_template("weap_wbm034_desc_ext_zh_cn",
				{"loc_trait_bespoke_staggered_targets_receive_increased_damage_debuff_desc"}, {"zh-cn"},
					loc_text("对"..COLORS_KWords_zh_cn.Staggered_rgb_zh_cn.."敌人施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."效果，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.n_8_rgb.." 层。")),

		--[+ THUNDERSTRIKE +]--
		-- Battle Maul and Shield, Crusher, Devil's Claw Swords, Power Maul, Sapper Shovels, Thunder Hammers -- 1 | 2 | 3 | 4
			create_template("weap_wbm035_desc_ext_en",
				{"loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff_desc"}, {"en"},
					loc_text("Target receives "..COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords.Impact_rgb.." if already "..COLORS_KWords.Staggered_rgb..", to a maximum of "..COLORS_Numbers.n_8_rgb.." Stacks. Lasts "..COLORS_Numbers.time_var_rgb.." seconds.")), -- stacks: 4, impact: +10%, time: 5 --  +"to a maximum of 8 Stacks. -- Stack(s)->Stacks -- colors
			--[+ French +]--
			create_template("weap_wbm035_desc_ext_fr",
				{"loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff_desc"}, {"fr"},
					loc_text("La cible subit "..COLORS_Numbers.stacks_var_rgb.." cumuls de "..COLORS_Numbers.impact_var_rgb.." d'"..COLORS_KWords_fr.Impact_rgb_fr.." si elle "..COLORS_KWords_fr.Staggered_rgb_fr.." déjà, jusqu'à un maximum de "..COLORS_Numbers.n_8_rgb.." cumuls. Dure "..COLORS_Numbers.time_var_rgb.." secondes.")),
			--[+ Russian +]-- Громобой -- руоф Гроза
			create_template("weap_wbm035_desc_ext_ru",
				{"loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff_desc"}, {"ru"},
					loc_text("Цель получает "..COLORS_Numbers.stacks_var_rgb.." заряда "..COLORS_Numbers.impact_var_rgb.." к "..COLORS_KWords_ru.Impact_rgb_ru..", если уже "..COLORS_KWords_ru.Stunned_rgb_ru..", вплоть до "..COLORS_Numbers.n_8_rgb.." зарядов. Длится "..COLORS_Numbers.time_var_rgb.." секунд.")),
			--[+ Traditional Chinese - 雷霆打擊 +]--
			-- 作戰大槌&板盾, 輾壓者, 『惡魔之爪』劍, 動力錘, 工兵鏟, 雷鎚 -- 1 | 2 | 3 | 4
			create_template("weap_wbm035_desc_ext_tw",
				{"loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff_desc"}, {"zh-tw"},
					loc_text("對 "..COLORS_KWords_tw.Staggered_rgb_tw.." 的敵人，\n使其獲得 "..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_tw.Impact_rgb_tw.."，持續"..COLORS_Numbers.time_var_rgb.." 秒。\n上限 "..COLORS_Numbers.n_8_rgb.." 層。")),
			--[+ Simplified Chinese - 雷击 +]--
			create_template("weap_wbm035_desc_ext_zh_cn",
				{"loc_trait_bespoke_staggered_targets_receive_increased_stagger_debuff_desc"}, {"zh-cn"},
					loc_text("对"..COLORS_KWords_zh_cn.Staggered_rgb_zh_cn.."敌人施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_Numbers.impact_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."效果，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.n_8_rgb.." 层。")),


-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		--[+ CHAINED DEATHBLOW +]-- checked 27.04.2025
		-- Melee Crit Chance (per tier)
		-- Heavy Swords -- 10% | 10% | 10% | 10% (bugged)
			create_template("weap_wbm036_desc_ext_en",
				{"loc_trait_bespoke_increased_crit_chance_on_weakspot_kill_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on "..COLORS_KWords.Weak_spot_rgb.." kill. Can be refreshed during active duration. {#color(255, 35, 5)}(bugged:+10% all tiers){#reset()}")), -- crit_chance: +20%, time: 3 -- s->seconds -- colors -- +"Can be refreshed during active duration."
			--[+ French +]--
			create_template("weap_wbm036_desc_ext_fr",
				{"loc_trait_bespoke_increased_crit_chance_on_weakspot_kill_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination sur "..COLORS_KWords_fr.Weakspot_rgb_fr..". {#color(255, 35, 5)}(bug:+10% de taux de coup critique peu importe le niveau de la bénédiction){#reset()}")),
			--[+ Russian - Цепочка смертельных ударов +]-- checked 27.04.2025
			create_template("weap_wbm036_desc_ext_ru",
				{"loc_trait_bespoke_increased_crit_chance_on_weakspot_kill_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при убийствах в "..COLORS_KWords_ru.Weakspot_rgb_ru..". Может быть обновлено во время действия. {#color(255, 35, 5)}(Баг: +10% на всех уровнях){#reset()}")),
			--[+ Traditional Chinese - 致命連擊 +]--
			-- 重劍 -- 10% | 10% | 10% | 10% (bugged)
			create_template("weap_wbm036_desc_ext_tw",
				{"loc_trait_bespoke_increased_crit_chance_on_weakspot_kill_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Weakspot_rgb_tw.." 擊殺時 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."。\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。{#color(255, 35, 5)}\n(bug: 所有等級 +10%){#reset()}")),
			--[+ Simplified Chinese - 连锁死亡打击 +]--
			create_template("weap_wbm036_desc_ext_zh_cn",
				{"loc_trait_bespoke_increased_crit_chance_on_weakspot_kill_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Weakspothits_k_rgb_zh_cn.."时 \n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。{#color(255, 35, 5)}\n（存在BUG：无论祝福级别如何，数值始终为 +10% 暴击几率。）{#reset()}")),
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


		--[+ PERFECT STRIKE +]--
		-- Battle Maul and Shield, Bully Clubs, Eviscerators, Heavy Swords, Latrine Shovels, Power Maul -- 2.5% | 5% | 7.5% | 10%
			create_template("weap_wbm038_desc_ext_en",
				{"loc_trait_bespoke_pass_past_armor_on_crit_new_desc"}, {"en"},
					loc_text( COLORS_Numbers.critdmg_var_rgb.." Melee "..COLORS_KWords.Crit_hit_rgb.." "..COLORS_KWords.Damage_rgb..". "..COLORS_KWords.Crit_hits_rgb.." ignore "..COLORS_KWords.Hit_mass_rgb.." bonus from Armour.")), -- crit_damage: +10% -- colors
			--[+ French +]--
			create_template("weap_wbm038_desc_ext_fr",
				{"loc_trait_bespoke_pass_past_armor_on_crit_new_desc"}, {"fr"},
					loc_text( COLORS_Numbers.critdmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Crit_hit_rgb_fr.." en mélée. Les "..COLORS_KWords_fr.Crit_hits_rgb_fr.." ignore le "..COLORS_KWords_fr.Hit_mass_rgb_fr.." de l'armure.")),
			--[+ Russian +]-- Безупречный удар
			create_template("weap_wbm038_desc_ext_ru",
				{"loc_trait_bespoke_pass_past_armor_on_crit_new_desc"}, {"ru"},
					loc_text( COLORS_Numbers.critdmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя при "..COLORS_KWords_ru.Crit_hit_rgb_ru..". "..COLORS_KWords_ru.Crit0_rgb_ru.." игнорируют "..COLORS_KWords_ru.Hit_mass_rgb_ru.." от брони, позволяя пробивать Панцирную броню.")),
			--[+ Traditional Chinese - 完美一擊 +]--
			-- 作戰大槌&板盾, 惡棍棒, 重型開膛劍, 重劍, 廁所鏟, 動力錘 -- 2.5% | 5% | 7.5% | 10%
			create_template("weap_wbm038_desc_ext_tw",
				{"loc_trait_bespoke_pass_past_armor_on_crit_new_desc"}, {"zh-tw"},
					loc_text("近戰 "..COLORS_KWords_tw.Crit_rgb_tw.." 時 "..COLORS_Numbers.critdmg_var_rgb.." "..COLORS_KWords_tw.Crit_dmg_r_rgb_tw.."。\n無視 "..COLORS_KWords_tw.Hit_mass_rgb_tw.." 護甲加成。")),
			--[+ Simplified Chinese - 完美打击 +]--
			create_template("weap_wbm038_desc_ext_zh_cn",
				{"loc_trait_bespoke_pass_past_armor_on_crit_new_desc"}, {"zh-cn"},
					loc_text("近战"..COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时 "..COLORS_Numbers.critdmg_var_rgb..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。\n"..COLORS_KWords_zh_cn.Crit0_rgb_zh_cn.."同时无视装甲赋予的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn)),

		--[+ BLADED MOMENTUM +]-- checked 27.04.2025
		-- Rending per stack (per tier)
		-- Heavy Swords -- 4% | 6% | 8% | 10% (up to +50%)
			create_template("weap_wbm039_desc_ext_en",
				{"loc_trait_bespoke_stacking_rending_on_cleave_desc"}, {"en"},
					loc_text(COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Rending_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds when hitting "..COLORS_Numbers.n_2_rgb.." or more enemies in one sweep. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. Can be refreshed during active duration."..COLORS_KWords.Rend_note_rgb)), -- rending: +10%, time: 2.5, stacks: 5 -- colors -- rewrite (numbers in front) -- +"Can be refreshed during active duration." -- Note Rending
			--[+ French +]--
			create_template("weap_wbm039_desc_ext_fr",
				{"loc_trait_bespoke_stacking_rending_on_cleave_desc"}, {"fr"},
					loc_text(COLORS_Numbers.rending_var_rgb.." de "..COLORS_KWords_fr.Rending_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un coup en mélée multiple . Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Rend_note_rgb_fr)),
			--[+ Russian - Импульс лезвия -- руоф Моментум лезвия +]-- checked 27.04.2025
			create_template("weap_wbm039_desc_ext_ru",
				{"loc_trait_bespoke_stacking_rending_on_cleave_desc"}, {"ru"},
					loc_text(COLORS_Numbers.rending_var_rgb.." к "..COLORS_KWords_ru.Rending_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды, когда вы попадаете по как минимум "..COLORS_Numbers.n_2_rgb.." врагам за один удар. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз. Может быть обновлено во время действия."..COLORS_KWords_ru.Rend_note_rgb_ru)),
			--[+ Traditional Chinese - 利刃攻勢 +]--
			-- 重劍 -- 4% | 6% | 8% | 10% (up to +50%)
			create_template("weap_wbm039_desc_ext_tw",
				{"loc_trait_bespoke_stacking_rending_on_cleave_desc"}, {"zh-tw"},
					loc_text("在一次攻擊命中多名敵人 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Rending_rgb_tw.." ，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.Rend_note_rgb_tw)),
			--[+ Simplified Chinese - 刀刃势头 +]--
			create_template("weap_wbm039_desc_ext_zh_cn",
				{"loc_trait_bespoke_stacking_rending_on_cleave_desc"}, {"zh-cn"},
					loc_text("命中多名敌人时"..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Rending_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Rend_note_rgb_zh_cn)),

		--[+ DEFLECTOR +]--
		-- Force Swords,Blaze Force Greatsword -- 22.5% | 25% | 27.5% | 30%
			create_template("weap_wbm040_desc_ext_en",
				{"loc_trait_bespoke_can_block_ranged_desc"}, {"en"},
					loc_text(COLORS_Numbers.block_var_rgb.." Block Cost. This weapon Blocks both Melee and Ranged attacks.")), -- block_cost: 30% -- colors
			--[+ French +]--
			create_template("weap_wbm040_desc_ext_fr",
				{"loc_trait_bespoke_can_block_ranged_desc"}, {"fr"},
					loc_text("Cette arme bloque les attaques à distance et en mélée. De plus, le coût du blocage est réduit de "..COLORS_Numbers.block_var_rgb..".")),
			--[+ Russian +]-- Отражатель
			create_template("weap_wbm040_desc_ext_ru",
				{"loc_trait_bespoke_can_block_ranged_desc"}, {"ru"},
					loc_text(COLORS_Numbers.block_var_rgb.." стоимости блока. Кроме того, это оружие блокирует атаки как ближнего, так и дальнего боя.")),
			--[+ Traditional Chinese - 偏轉 +]--
			-- 烈焰力場劍, 烈焰力場巨劍 -- 22.5% | 25% | 27.5% | 30%
			create_template("weap_wbm040_desc_ext_tw",
				{"loc_trait_bespoke_can_block_ranged_desc"}, {"zh-tw"},
					loc_text("此武器可以格擋近戰和遠程攻擊。\n此外，格擋消耗 "..COLORS_Numbers.block_var_rgb)),
			--[+ Simplified Chinese - 偏转器 +]--
			create_template("weap_wbm040_desc_ext_zh_cn",
				{"loc_trait_bespoke_can_block_ranged_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.block_var_rgb.." 格挡消耗。\n此武器可格挡近战与远程攻击。")),

		--[+ MOMENTUM +]--
		-- Blaze Force Greatsword, Bully Clubs, Cleavers, Eviscerators, Thunder Hammers
		-- 12% | 13% | 14% | 15%
			create_template("weap_wbm041_desc_ext_en",
				{"loc_trait_bespoke_toughness_recovery_on_multiple_hits_desc"}, {"en"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." restores when hitting at least "..COLORS_Numbers.mult_hit_var_rgb.." enemies with an attack.")), -- toughness: 15% -- colors
			--[+ French +]--
			create_template("weap_wbm041_desc_ext_fr",
				{"loc_trait_bespoke_toughness_recovery_on_multiple_hits_desc"}, {"fr"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." en touchant au moins "..COLORS_Numbers.mult_hit_var_rgb.." ennemies avec une attaque.")),
			--[+ Russian +]-- Моментум
			create_template("weap_wbm041_desc_ext_ru",
				{"loc_trait_bespoke_toughness_recovery_on_multiple_hits_desc"}, {"ru"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается, если вы ударили атакой как минимум "..COLORS_Numbers.mult_hit_var_rgb.." врагов.")),
			--[+ Traditional Chinese - 勢頭 +]--
			-- 烈焰力場巨劍, 惡棍棒, 砍刀, 重型開膛劍, 雷鎚 -- 12% | 13% | 14% | 15%
			create_template("weap_wbm041_desc_ext_tw",
				{"loc_trait_bespoke_toughness_recovery_on_multiple_hits_desc"}, {"zh-tw"},
					loc_text("在一次攻擊命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 個敵人時，\n恢復 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.." 。")),
			--[+ Simplified Chinese - 动量 +]--
			create_template("weap_wbm041_desc_ext_zh_cn",
				{"loc_trait_bespoke_toughness_recovery_on_multiple_hits_desc"}, {"zh-cn"},
					loc_text("命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 名敌人时，\n"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。")),

		--[+ MURDEROUS TRANQUILITY +]--
		-- Blaze Force Greatsword -- 2% | 3% | 4% | 5% ???
			create_template("weap_wbm042_desc_ext_en",
				{"loc_trait_bespoke_vent_warp_charge_on_multiple_hits_desc"}, {"en"},
					loc_text(COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords.Peril_rgb.." is quelled by hitting at least "..COLORS_Numbers.mult_hit_var_rgb.." enemies with an attack.")), -- multiple_hit: 3, warp_charge: 2% -- colors
			--[+ French +]--
			create_template("weap_wbm042_desc_ext_fr",
				{"loc_trait_bespoke_vent_warp_charge_on_multiple_hits_desc"}, {"fr"},
					loc_text("Toucher au moins "..COLORS_Numbers.mult_hit_var_rgb.." ennemies avec une attaque, réduit de "..COLORS_Numbers.warpchrg_var_rgb.." le "..COLORS_KWords_fr.Peril_rgb_fr..".")),
			--[+ Russian +]-- Убийственное спокойствие
			create_template("weap_wbm042_desc_ext_ru",
				{"loc_trait_bespoke_vent_warp_charge_on_multiple_hits_desc"}, {"ru"},
					loc_text(COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru.." подавляется при попадании атакой как минимум по "..COLORS_Numbers.mult_hit_var_rgb.." врагам.")),
			--[+ Traditional Chinese - 兇殘之寧 +]--
			-- 烈焰力場巨劍 -- 2% | 3% | 4% | 5% ???
			create_template("weap_wbm042_desc_ext_tw",
				{"loc_trait_bespoke_vent_warp_charge_on_multiple_hits_desc"}, {"zh-tw"},
					loc_text("在一次攻擊命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 個敵人時，\n消除 "..COLORS_Numbers.warpchrg_var_rgb.." 點的 "..COLORS_KWords_tw.Peril_rgb_tw.." 。")),
			--[+ Simplified Chinese - 杀意如水 +]--
			create_template("weap_wbm042_desc_ext_zh_cn",
				{"loc_trait_bespoke_vent_warp_charge_on_multiple_hits_desc"}, {"zh-cn"},
					loc_text("命中至少 "..COLORS_Numbers.mult_hit_var_rgb.." 名敌人时，\n平息 " ..COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_zh_cn.Peril_rgb_zh_cn.."。")),

		--[+ BLAZING SPIRIT +]-- !!! MELEE !!! -- checked 27.04.2025
		-- Soulblaze Stacks & Max Stacks (per tier)
		-- Force Swords -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
		-- Force Greatsword -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
		-- Force Greatsword temporarily uses the description from the Ranged Blessing!
			create_template("weap_wbm043_desc_ext_en",
				{"loc_trait_bespoke_warp_burninating_on_crit_desc"}, {"en"},
					loc_text(COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_KWords.Soulblaze_rgb.." are gained by the enemy on "..COLORS_KWords.Crit_hit_rgb..", to a maximum of "..COLORS_Numbers.maxstks_var_rgb.." Stacks. Can't apply "..COLORS_KWords.Soulblaze_rgb.." through shields.")), -- stacks: +4, max_stacks: 12 -- Stack(s)->Stacks -- colors -- rewrite (numbers in front) -- +"Can't apply "..COLORS_KWords.Soulblaze_rgb.." through shields."
			--[+ French +]--
			create_template("weap_wbm043_desc_ext_fr",
				{"loc_trait_bespoke_warp_burninating_on_crit_desc"}, {"fr"},
					loc_text("L'ennemi gagne "..COLORS_Numbers.n_plus_rgb..""..COLORS_Numbers.stacks_var_rgb.." cumuls d'"..COLORS_KWords_fr.Soulblaze_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr..", Jusqu'à "..COLORS_Numbers.maxstks_var_rgb.." cumuls.")),
			--[+ Russian - Пылающий дух +]-- checked 27.04.2025
			create_template("weap_wbm043_desc_ext_ru",
				{"loc_trait_bespoke_warp_burninating_on_crit_desc"}, {"ru"},
					loc_text(COLORS_Numbers.stacks_var_rgb.." заряда "..COLORS_KWords_ru.Soulblaze_rgb_ru.." получает враг при "..COLORS_KWords_ru.Crit_hit_rgb_ru..", вплоть до "..COLORS_Numbers.maxstks_var_rgb.." зарядов. Заряды"..COLORS_KWords_ru.Soulblaze_rgb_ru.." не накладываются через через щиты.")),
			--[+ Traditional Chinese - 燃燒靈魂 +]--
			-- 虛空爆破力場法杖, 虛空打擊力場法杖 -- 1 | 2 | 3 | 4
			-- The staff is currently using this description in zh-tw, 
			-- and the Force Greatsword not used in zh-tw.
			create_template("weap_wbm043_desc_ext_tw",
				{"loc_trait_bespoke_warpfire_burn_on_crit_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Crit_hit_rgb_tw.." 敵人時，\n使其獲得 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." 層的 "..COLORS_KWords_tw.Soulblaze_rgb_tw.."。\n上限 "..COLORS_Numbers.n_6_rgb.." 層，烈焰力場巨劍 "..COLORS_Numbers.n_12_rgb.." 層。")),
			--[+ Simplified Chinese - 烈焰之魂 +]--
			create_template("weap_wbm043_desc_ext_zh_cn",
				{"loc_trait_bespoke_warp_burninating_on_crit_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时, 对敌人施加 "..COLORS_Numbers.stacks_var_rgb.." 层"..COLORS_KWords_zh_cn.Soulblaze_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.maxstks_var_rgb.." 次。")),

		--[+ UNSTABLE POWER +]--
		-- Blaze Force Greatsword, Force Swords -- 3.5% | 4% | 4.5% | 5% (up to +20%)
			create_template("weap_wbm044_desc_ext_en",
				{"loc_trait_bespoke_warp_charge_power_bonus_desc"}, {"en"},
					loc_text("Up to "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb..", with increasing "..COLORS_KWords.Peril_rgb.." Level. Stacks "..COLORS_Numbers.n_4_rgb.." times."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +20% -- colors
			--[+ French +]--
			create_template("weap_wbm044_desc_ext_fr",
				{"loc_trait_bespoke_warp_charge_power_bonus_desc"}, {"fr"},
					loc_text("Jusqu'à "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_fr.Strength_rgb_fr..", en fonction du "..COLORS_KWords_fr.Peril_rgb_fr..". Se cumule "..COLORS_Numbers.n_4_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Нестабильная мощь
			create_template("weap_wbm044_desc_ext_ru",
				{"loc_trait_bespoke_warp_charge_power_bonus_desc"}, {"ru"},
					loc_text("До "..COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." вы получаете, с увеличением уровня "..COLORS_KWords_ru.Peril_rgb_ru..". Суммируется до "..COLORS_Numbers.n_4_rgb.." раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 不穩定能量 +]--
			-- 烈焰力場巨劍, 烈焰力場劍 -- 3.5% | 4% | 4.5% | 5% (up to +20%)
			create_template("weap_wbm044_desc_ext_tw",
				{"loc_trait_bespoke_warp_charge_power_bonus_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Peril_rgb_tw.." 每增加"..COLORS_Numbers.pc_20_rgb.."， 獲得一層，\n每一層 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.." ，上限 "..COLORS_Numbers.n_4_rgb.." 層。"..COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 无常之力 +]--
			create_template("weap_wbm044_desc_ext_zh_cn",
				{"loc_trait_bespoke_warp_charge_power_bonus_desc"}, {"zh-cn"},
					loc_text("随"..COLORS_KWords_zh_cn.Peril_rgb_zh_cn.."增长叠加层数，\n每增长 "..COLORS_Numbers.pc_20_rgb.."，"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_4_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ WARP SLICE +]--
		-- Blaze Force Greatsword -- 
			create_template("weap_wbm045_desc_ext_en",
				{"loc_trait_bespoke_wind_slash_crits_desc"}, {"en"},
					loc_text("Guaranteed Activated "..COLORS_KWords.Crit_strike_rgb..". Cooldown "..COLORS_Numbers.cd_var_rgb.." seconds.")), -- cooldown: 50 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbm045_desc_ext_fr",
				{"loc_trait_bespoke_wind_slash_crits_desc"}, {"fr"},
					loc_text(COLORS_KWords_fr.Crit_hit_rgb_fr.." garranti activé. Temps de recharge : "..COLORS_Numbers.cd_var_rgb.." secondes.")),
			--[+ Russian +]-- Варп нарезка
			create_template("weap_wbm045_desc_ext_ru",
				{"loc_trait_bespoke_wind_slash_crits_desc"}, {"ru"},
					loc_text("Следующая специальная атака будет гарантированным "..COLORS_KWords_ru.Crit_hit_udom_rgb_ru..". Восстанавливается "..COLORS_Numbers.cd_var_rgb.." секунд.")),
			--[+ Traditional Chinese - 亞空間斬擊 +]--
			-- 烈焰力場巨劍 --
			create_template("weap_wbm045_desc_ext_tw",
				{"loc_trait_bespoke_wind_slash_crits_desc"}, {"zh-tw"},
					loc_text("攻擊必定 "..COLORS_KWords_tw.Crit_rgb_tw.."，冷卻時間 "..COLORS_Numbers.cd_var_rgb.." 秒")),
			--[+ Simplified Chinese - 亚空间切割 +]--
			create_template("weap_wbm045_desc_ext_zh_cn",
				{"loc_trait_bespoke_wind_slash_crits_desc"}, {"zh-cn"},
					loc_text("使下次充能攻击必定"..COLORS_KWords_zh_cn.Crit_rgb_zh_cn.."，\n冷却时间 "..COLORS_Numbers.cd_var_rgb.." 秒。")),

		--[+ EXORCIST +]--
		-- Force Swords -- 2% | 3% | 4% | 5%
			create_template("weap_wbm046_desc_ext_en",
				{"loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge_desc"}, {"en"},
					loc_text(COLORS_Numbers.warpchrg_var_rgb.." of "..COLORS_KWords.Peril_rgb.." is quelled on Repeated "..COLORS_KWords.Weakspothit_rgb..".")), -- warp_charge: 5% -- colors
			--[+ French +]--
			create_template("weap_wbm046_desc_ext_fr",
				{"loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge_desc"}, {"fr"},
					loc_text(COLORS_Numbers.warpchrg_var_rgb.." du "..COLORS_KWords_fr.Peril_rgb_fr.." est dissipé sur les "..COLORS_KWords_fr.Weakspothit_rgb_fr.." répété.")),
			--[+ Russian +]-- Экзорцист
			create_template("weap_wbm046_desc_ext_ru",
				{"loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge_desc"}, {"ru"},
					loc_text(COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru.." подавляется при повторном попадании в "..COLORS_KWords_ru.Weakspothit_rgb_ru..".")),
			--[+ Traditional Chinese - 驅魔者 +]--
			-- 烈焰力場劍 -- 2% | 3% | 4% | 5%
			create_template("weap_wbm046_desc_ext_tw",
				{"loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge_desc"}, {"zh-tw"},
					loc_text("連續 "..COLORS_KWords_tw.Weakspothit_rgb_tw.." 時，消除 "..COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_tw.Peril_rgb_tw.." 。")),
			--[+ Simplified Chinese - 驱魔者 +]--
			create_template("weap_wbm046_desc_ext_zh_cn",
				{"loc_trait_bespoke_chained_weakspot_hits_vents_warpcharge_desc"}, {"zh-cn"},
					loc_text("连锁攻击"..COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时，\n平息 "..COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_zh_cn.Peril_rgb_zh_cn.."。")),

		--[+ SUPERIORITY +]--
		-- Force Swords -- 5% | 7.5% | 10% | 12.5% (up to +37.5%)
			create_template("weap_wbm047_desc_ext_en",
				{"loc_trait_bespoke_elite_kills_grants_stackable_power_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Elite Kill. Stacks "..COLORS_Numbers.stacks_var_rgb.." times, deteriorating one at a time."..COLORS_KWords.Pwr_note_rgb)), -- stacks: 5, power_level: +12.5%, time: 7 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbm047_desc_ext_fr",
				{"loc_trait_bespoke_elite_kills_grants_stackable_power_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination d'élite. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. Les cumuls se détériorent un à un."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Превосходство
			create_template("weap_wbm047_desc_ext_ru",
				{"loc_trait_bespoke_elite_kills_grants_stackable_power_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунд при убийстве Элитного врага. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз. Заряды сбрасываются по одному за раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 優勢 +]--
			-- 烈焰力場劍 -- 5% | 7.5% | 10% | 12.5% (up to +37.5%)
			create_template("weap_wbm047_desc_ext_tw",
				{"loc_trait_bespoke_elite_kills_grants_stackable_power_desc"}, {"zh-tw"},
					loc_text("擊殺精英時，增加 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n每次擊殺可疊加一層，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。"..COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 优势 +]--
			create_template("weap_wbm047_desc_ext_zh_cn",
				{"loc_trait_bespoke_elite_kills_grants_stackable_power_desc"}, {"zh-cn"},
					loc_text("击杀精英敌人时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层，该效果逐层衰减。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ LIGHTNING REFLEXES +]--
		-- Shock Mauls -- 10% | 15% | 20% | 25%
			create_template("weap_wbm048_desc_ext_en",
				{"loc_trait_bespoke_block_has_chance_to_stun_with_cd_desc"}, {"en"},
					loc_text("Timed Blocks "..COLORS_KWords.Stun_rgb.." the attacker, and grant you "..COLORS_Numbers.pwrlvl_var_rgb.." Melee "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.dur_var_rgb.." seconds. Cooldown "..COLORS_Numbers.cd_dur_var_rgb.." seconds."..COLORS_KWords.Pwr_note_rgb)), -- power_level: 25%, duration: 3, cooldown_duration: 3  -- colors
			--[+ French +]--
			create_template("weap_wbm048_desc_ext_fr",
				{"loc_trait_bespoke_block_has_chance_to_stun_with_cd_desc"}, {"fr"},
					loc_text("Les blocages opportuns "..COLORS_KWords_fr.Stun_s_rgb_fr.." l'attaquant et vous octroient "..COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." de mélée pendant "..COLORS_Numbers.dur_var_rgb.." secondes. Temps de recharge : "..COLORS_Numbers.cd_dur_var_rgb.." secondes."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Молниеносные рефлексы
			create_template("weap_wbm048_desc_ext_ru",
				{"loc_trait_bespoke_block_has_chance_to_stun_with_cd_desc"}, {"ru"},
					loc_text("Своевременные блоки "..COLORS_KWords_ru.Staggers_rgb_ru.." атакующего врага и дают вам "..COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." ближнего боя на "..COLORS_Numbers.dur_var_rgb.." секунды. Восстанавливается "..COLORS_Numbers.cd_dur_var_rgb.." секунды."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 閃電反射 +]--
			-- 電擊錘
			create_template("weap_wbm048_desc_ext_tw",
				{"loc_trait_bespoke_block_has_chance_to_stun_with_cd_desc"}, {"zh-tw"},
					loc_text("完美格擋會使攻擊者 "..COLORS_KWords_tw.Staggers_rgb_tw.." ，\n並 "..COLORS_Numbers.pwrlvl_var_rgb.." 近戰 "..COLORS_KWords_tw.Strength_rgb_tw.."，持續 "..COLORS_Numbers.dur_var_rgb.." 秒。\n冷卻時間為 "..COLORS_Numbers.cd_dur_var_rgb.." 秒。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 闪电反应 +]--
			create_template("weap_wbm048_desc_ext_zh_cn",
				{"loc_trait_bespoke_block_has_chance_to_stun_with_cd_desc"}, {"zh-cn"},
					loc_text("完美格挡会使目标"..COLORS_KWords_zh_cn.Electrocute_rgb_zh_cn.."，\n同时 "..COLORS_Numbers.pwrlvl_var_rgb.." 近战"..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.dur_var_rgb.." 秒。\n冷却时间 "..COLORS_Numbers.cd_dur_var_rgb.." 秒。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ HIGH VOLTAGE +]--
		-- Shock Mauls -- 10% | 15% | 20% | 25%
			create_template("weap_wbm049_desc_ext_en",
				{"loc_trait_bespoke_damage_bonus_vs_electrocuded_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs "..COLORS_KWords.Electrocuted_rgb.." enemies.")), -- damage: +25% - colors
			--[+ French +]--
			create_template("weap_wbm049_desc_ext_fr",
				{"loc_trait_bespoke_damage_bonus_vs_electrocuded_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemies "..COLORS_KWords_fr.Electrocuted_rgb_fr.." .")),
			--[+ Russian +]-- Высокое напряжение
			create_template("weap_wbm049_desc_ext_ru",
				{"loc_trait_bespoke_damage_bonus_vs_electrocuded_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." против врагов поражённых "..COLORS_KWords_ru.Electrocuted_rgb_ru..".")),
			--[+ Traditional Chinese - 高壓電 +]--
			-- 電擊錘 -- 10% | 15% | 20% | 25%
			create_template("trait_bespoke_046_desc_ext_zh",
				{"loc_trait_bespoke_damage_bonus_vs_electrocuded_desc"}, {"zh-tw"},
					loc_text("對 "..COLORS_KWords_tw.Electrocuted_rgb_tw.." 的敵人 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." 。")),
			--[+ Simplified Chinese - 高压电 +]--
			create_template("weap_wbm049_desc_ext_zh_cn",
				{"loc_trait_bespoke_damage_bonus_vs_electrocuded_desc"}, {"zh-cn"},
					loc_text("对"..COLORS_KWords_zh_cn.Electrocuted_rgb_zh_cn.."敌人 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。")),

		--[+ FALTER +]--
		-- Shock Mauls -- 60% | 70% | 80% | 90%
			create_template("weap_wbm050_desc_ext_en",
				{"loc_trait_bespoke_negate_stagger_reduction_on_weakspot_desc"}, {"en"},
					loc_text(COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords.Stagger_rgb.." on enemies on "..COLORS_KWords.Weakspothit_rgb..". Additionally, increases Ranged "..COLORS_KWords.Stagger_rgb.." strength by "..COLORS_Numbers.stgrrang_var_rgb..".")), -- stagger: 90%, ranged_stagger: 30% -- colors
			--[+ French +]--
			create_template("weap_wbm050_desc_ext_fr",
				{"loc_trait_bespoke_negate_stagger_reduction_on_weakspot_desc"}, {"fr"},
					loc_text("Le "..COLORS_KWords_fr.Stagger_rgb_fr.." des ennemis augmente de "..COLORS_Numbers.stgr_var_rgb..", lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr..". De plus augmente la puissance du "..COLORS_KWords_fr.Stagger_rgb_fr.." à distance de "..COLORS_Numbers.stgrrang_var_rgb..".")),
			--[+ Russian +]-- Дрожь
			create_template("weap_wbm050_desc_ext_ru",
				{"loc_trait_bespoke_negate_stagger_reduction_on_weakspot_desc"}, {"ru"},
					loc_text(COLORS_Numbers.stgr_var_rgb.." к "..COLORS_KWords_ru.Stagger2_rgb_ru.." врага при выстрелах в "..COLORS_KWords_ru.Weakspot_rgb_ru..". На "..COLORS_Numbers.stgrrang_var_rgb.." увеличивается сила "..COLORS_KWords_ru.Staggering_rgb_ru.." для дальнобойного оружия.")),
			--[+ Traditional Chinese - 踉蹌 +]--
			-- 電擊錘 -- 60% | 70% | 80% | 90%
			create_template("weap_wbm050_desc_ext_tw",
				{"loc_trait_bespoke_negate_stagger_reduction_on_weakspot_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Weakspothit_rgb_tw.." 時，增加 "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_tw.Stagger2_rgb_tw.." ，\n與 "..COLORS_Numbers.stgrrang_var_rgb.." 的遠程 "..COLORS_KWords_tw.Stagger2_rgb_tw.." 。")),
			--[+ Simplified Chinese - 摇摇欲坠 +]--
			create_template("weap_wbm050_desc_ext_zh_cn",
				{"loc_trait_bespoke_negate_stagger_reduction_on_weakspot_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时，\n对敌人施加的"..COLORS_KWords_zh_cn.Stagger2_rgb_zh_cn.."效果 "..COLORS_Numbers.stgr_var_rgb.."。\n远程武器带有该祝福时，\n额外 "..COLORS_Numbers.stgrrang_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."。")),

		--[+ OVERWHELMING FORCE +]--
		-- Shock Mauls -- 5s & 10% | 4.5s & 15% | 4s & 20% | 3.5s & 25%
			create_template("weap_wbm051_desc_ext_en",
				{"loc_trait_bespoke_staggering_hits_has_chance_to_stun_desc"}, {"en"},
					loc_text(COLORS_KWords.Staggering_rgb.." an Enemy has a "..COLORS_Numbers.chnc_var_rgb.." Chance to Stun the enemy. Cooldown "..COLORS_Numbers.cd_var_rgb.." seconds.")), -- chance: 25%, cooldown: 3.5 -- colors
			--[+ French +]--
			create_template("weap_wbm051_desc_ext_fr",
				{"loc_trait_bespoke_staggering_hits_has_chance_to_stun_desc"}, {"fr"},
					loc_text("Faire "..COLORS_KWords_fr.Staggering_rgb_fr.." un ennemie à "..COLORS_Numbers.chnc_var_rgb.." de chance de l'"..COLORS_KWords_fr.Stun_rgb_fr..". Temps de recharge : "..COLORS_Numbers.cd_var_rgb.." secondes.")),
			--[+ Russian +]-- Подавляющая сила
			create_template("weap_wbm051_desc_ext_ru",
				{"loc_trait_bespoke_staggering_hits_has_chance_to_stun_desc"}, {"ru"},
					loc_text(COLORS_KWords_ru.Stagger_rgb_ru.." врага имеет "..COLORS_Numbers.chnc_var_rgb.." шанс вывести врага из равновесия. Восстановление "..COLORS_Numbers.cd_var_rgb.." секунды.")),
			--[+ Traditional Chinese - 壓倒性的武力 +]--
			-- 電擊錘 -- 5s & 10% | 4.5s & 15% | 4s & 20% | 3.5s & 25%
			create_template("weap_wbm051_desc_ext_tw",
				{"loc_trait_bespoke_staggering_hits_has_chance_to_stun_desc"}, {"zh-tw"},
					loc_text("使敵人 "..COLORS_KWords_tw.Stagger_rgb_tw.." 時，\n有 "..COLORS_Numbers.chnc_var_rgb.." 的機率使敵人 "..COLORS_KWords_tw.Staggering_rgb_tw .." 。\n冷卻時間 "..COLORS_Numbers.cd_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 迅猛之力 +]--
			create_template("weap_wbm051_desc_ext_zh_cn",
				{"loc_trait_bespoke_staggering_hits_has_chance_to_stun_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Stagger_rgb_zh_cn.."敌人时 "..COLORS_Numbers.chnc_var_rgb.." 几率使目标"..COLORS_KWords_zh_cn.Electrocute_rgb_zh_cn.."。\n冷却时间 "..COLORS_Numbers.cd_var_rgb.." 秒。")),

		--[+ COUNTERATTACK +]--
		-- Relic Blade -- 4% | 6% | 8% | 10%
			create_template("weap_wbm052_desc_ext_en",
				{"loc_attack_speed_on_perfect_block_desc"}, {"en"},
					loc_text(COLORS_Numbers.attack_spd_var_rgb.." Attack Speed for "..COLORS_Numbers.dur_var_rgb.." seconds on a Perfect Block. Can only occur once every "..COLORS_Numbers.interval_var_rgb.." seconds.")), -- attack_speed: 10%, duration: 3, interval: 8 -- colors
			--[+ French +]--
			create_template("weap_wbm052_desc_ext_fr",
				{"loc_attack_speed_on_perfect_block_desc"}, {"fr"},
					loc_text("Gagnez "..COLORS_Numbers.attack_spd_var_rgb.." de Vitesse d'attaque pendant "..COLORS_Numbers.dur_var_rgb.." secondes lors d'un blocage parfait. Ne peux se produire que toute les "..COLORS_Numbers.interval_var_rgb.." secondes.")),
			--[+ Russian +]-- Контратака
			create_template("weap_wbm052_desc_ext_ru",
				{"loc_attack_speed_on_perfect_block_desc"}, {"ru"},
					loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.attack_spd_var_rgb.." к скорости атаки на "..COLORS_Numbers.dur_var_rgb.." секунды после идеального блока. Сбрасывает раз в "..COLORS_Numbers.interval_var_rgb.." секунд.")),
			--[+ Traditional Chinese - 反擊 +]--
			-- 上古神刃 -- 4% | 6% | 8% | 10%
			create_template("weap_wbm052_desc_ext_tw",
				{"loc_attack_speed_on_perfect_block_desc"}, {"zh-tw"},
					loc_text("完美格擋時，\n獲得 "..COLORS_Numbers.attack_spd_var_rgb.." 的攻擊速度，持續 "..COLORS_Numbers.dur_var_rgb.." 秒。\n每 "..COLORS_Numbers.interval_var_rgb.." 秒觸發一次")),
			--[+ Simplified Chinese - 反击 +]--
			create_template("weap_wbm052_desc_ext_zh_cn",
				{"loc_attack_speed_on_perfect_block_desc"}, {"zh-cn"},
					loc_text("完美格挡时 "..COLORS_Numbers.attack_spd_var_rgb.." 攻击速度，持续 "..COLORS_Numbers.dur_var_rgb.." 秒。\n每 "..COLORS_Numbers.interval_var_rgb.." 秒只能触发一次。")),

		--[+ CRANIAL GROUNDING +]--
		-- Relic Blade -- 3% & 1% | 4% & 2% | 5%& 3% | 6% & 4% (up to ~26.6% & +20%)
			create_template("weap_wbm053m_desc_ext_en",
				{"loc_chained_weakspot_hits_increase_finesse_and_reduce_overheat_desc"}, {"en"},
					loc_text(COLORS_Numbers.buildup_var_rgb.." "..COLORS_KWords.Heat_rgb.." buildup and "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb.." for "..COLORS_Numbers.dur_var_rgb.." seconds on chained "..COLORS_KWords.Weakspothits_rgb..". Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- buildup_amount: 6%, damage: 4%, duration: 3 , stacks: 5 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbm053_desc_ext_fr",
				{"loc_chained_weakspot_hits_increase_finesse_and_reduce_overheat_desc"}, {"fr"},
					loc_text("Réduit la génération de "..COLORS_KWords_fr.Heat_rgb_fr.." de "..COLORS_Numbers.buildup_var_rgb.." et augmente les "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." de "..COLORS_Numbers.dmg_var_rgb.." pendant "..COLORS_Numbers.dur_var_rgb.." secondes lors de "..COLORS_KWords_fr.Weakspothit_rgb_fr.." répétés. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Черепное заземление
			create_template("weap_wbm053_desc_ext_ru",
				{"loc_chained_weakspot_hits_increase_finesse_and_reduce_overheat_desc"}, {"ru"},
					loc_text(COLORS_Numbers.buildup_var_rgb.."  к набору "..COLORS_KWords_ru.Heat_rgb_ru.." и "..COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." на "..COLORS_Numbers.dur_var_rgb.." секунды при серии ударов в "..COLORS_KWords_ru.Weakspothits_rgb_ru..". Суммируется "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 顱骨落地 +]--
			-- 上古神刃 -- 3% & 1% | 4% & 2% | 5%& 3% | 6% & 4% (up to ~26.6% & +20%)
			create_template("weap_wbm053_desc_ext_ru",
				{"loc_chained_weakspot_hits_increase_finesse_and_reduce_overheat_desc"}, {"zh-tw"},
					loc_text("連續 "..COLORS_KWords_tw.Weakspothits_rgb_tw.." 時 "..COLORS_Numbers.buildup_var_rgb.." "..COLORS_KWords_tw.Heat_rgb_tw.." ，\n且 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.."，\n持續 "..COLORS_Numbers.dur_var_rgb.." 秒，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese- 人头落地 +]--
			create_template("weap_wbm053_desc_ext_zh_cn",
				{"loc_chained_weakspot_hits_increase_finesse_and_reduce_overheat_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时 \n"..COLORS_Numbers.buildup_var_rgb.." "..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."积累，同时 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Finesse_dmg_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.dur_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Fns_note_rgb_zh_cn)),

		--[+ OVERLOAD +]--
		-- Relic Blade -- 10% | 15% | 20% | 25%
			create_template("weap_wbm054_desc_ext_en",
				{"loc_explosion_on_overheat_lockout_desc"}, {"en"},
					loc_text("Upon reaching the Lockout state, you cause an Explosion around you and immediately reduce "..COLORS_KWords.Heat_rgb.." by "..COLORS_Numbers.overheat_red_var_rgb..".")), -- overheat_reduction: 25% -- colors
			--[+ French +]--
			create_template("weap_wbm054_desc_ext_fr",
				{"loc_explosion_on_overheat_lockout_desc"}, {"fr"},
					loc_text("Lorsque vous entrez en état de Verouillage, vous produisez une Explosion autour de vous et réduisez immédiatement la "..COLORS_KWords_fr.Heat_rgb_fr.." de "..COLORS_Numbers.overheat_red_var_rgb..".")),
			--[+ Russian +]-- Перегрузка
			create_template("weap_wbm054_desc_ext_ru",
				{"loc_explosion_on_overheat_lockout_desc"}, {"ru"},
					loc_text("Достигнув состояния блокировки, вы вызываете взрыв вокруг себя и немедленно уменьшаете количество "..COLORS_KWords_ru.Heat_rgb_ru.." на "..COLORS_Numbers.overheat_red_var_rgb..".")),
			--[+ Traditional Chinese - 超載 +]--
			-- 上古神刃 -- 10% | 15% | 20% | 25%
			create_template("weap_wbm054_desc_ext_tw",
				{"loc_explosion_on_overheat_lockout_desc"}, {"zh-tw"},
					loc_text("進入鎖定狀態時，產生爆炸，\n並立即降低 "..COLORS_KWords_tw.Heat_rgb_tw.." "..COLORS_Numbers.overheat_red_var_rgb.." 。")),
			--[+ Simplified Chinese - 过载 +]--
			create_template("weap_wbm054_desc_ext_zh_cn",
				{"loc_explosion_on_overheat_lockout_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."达到 "..COLORS_Numbers.pc_100_rgb.." 并进入锁定状态时，\n在周身范围引发一次爆炸，\n并立刻减少 "..COLORS_Numbers.overheat_red_var_rgb.." "..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."。")),

		--[+ ENERGY LEAKAGE +]--
		-- Relic Blade -- 1.5% | 2% | 3% | 4% (up to +20%)
			create_template("weap_wbm055_desc_ext_en",
				{"loc_power_bonus_scaled_on_heat_desc"}, {"en"},
					loc_text("Up to "..COLORS_Numbers.amount_var_rgb.." "..COLORS_KWords.Strength_rgb..", scaled on "..COLORS_KWords.Heat_rgb.."."..COLORS_KWords.Pwr_note_rgb)), -- amount: 4% -- colors
			--[+ French +]--
			create_template("weap_wbm055_desc_ext_fr",
				{"loc_power_bonus_scaled_on_heat_desc"}, {"fr"},
					loc_text("Augmente la "..COLORS_KWords_fr.Strength_rgb_fr.." jusqu'à "..COLORS_Numbers.amount_var_rgb..", en fonction de la "..COLORS_KWords_fr.Heat_rgb_fr.."."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Утечка энергии
			create_template("weap_wbm055_desc_ext_ru",
				{"loc_power_bonus_scaled_on_heat_desc"}, {"ru"},
					loc_text("До "..COLORS_Numbers.amount_var_rgb.." увеличивается "..COLORS_KWords_ru.Power_rgb_ru..", в зависимости от "..COLORS_KWords_ru.Heat_rgb_ru.."."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 能量洩漏 +]--
			-- 上古神刃 -- 1.5% | 2% | 3% | 4% (up to +20%)
			create_template("weap_wbm055_desc_ext_tw",
				{"loc_power_bonus_scaled_on_heat_desc"}, {"zh-tw"},
					loc_text("依據當前 "..COLORS_KWords_tw.Heat_rgb_tw.." ，最多獲得 "..COLORS_Numbers.amount_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 能量泄露 +]--
			create_template("weap_wbm055_desc_ext_zh_cn",
				{"loc_power_bonus_scaled_on_heat_desc"}, {"zh-cn"},
					loc_text("随"..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."增长叠加层数，\n每增长 "..COLORS_Numbers.pc_20_rgb.."，"..COLORS_Numbers.amount_var_rgb.." "..COLORS_KWords_zh_cn.Power_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ HEATSINK +]--
		-- Relic Blade -- 4% | 6% | 8% | 10%
			create_template("weap_wbm056_desc_ext_en",
				{"loc_reduce_fixed_overheat_amount_desc"}, {"en"},
					loc_text(COLORS_KWords.Weakspot_rgb.." Kills and "..COLORS_KWords.Crit_strike_rgb.." Kills reduces "..COLORS_KWords.Heat_rgb.." by "..COLORS_Numbers.amount_var_rgb.." over "..COLORS_Numbers.time_var_rgb.." seconds.")), -- amount: 10%, time: 3 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbm056_desc_ext_fr",
				{"loc_reduce_fixed_overheat_amount_desc"}, {"fr"},
					loc_text("Les éliminations sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." et "..COLORS_KWords_fr.Crit_hits_rgb_fr.." réduisent la "..COLORS_KWords_fr.Heat_rgb_fr.." de "..COLORS_Numbers.amount_var_rgb.." sur "..COLORS_Numbers.time_var_rgb.." secondes.")),
			--[+ Russian +]-- Теплоотвод
			create_template("weap_wbm056_desc_ext_ru",
				{"loc_reduce_fixed_overheat_amount_desc"}, {"ru"},
					loc_text("Убийства в "..COLORS_KWords_ru.Weakspot_rgb_ru.." и убийства "..COLORS_KWords_ru.Crit_hits_rgb_ru.." на "..COLORS_Numbers.amount_var_rgb.." снижают количество "..COLORS_KWords_ru.Heat_rgb_ru.." за "..COLORS_Numbers.time_var_rgb.." секунды.")),
			--[+ Traditional Chinese - 散熱器 +]--
			-- 上古神刃 -- 4% | 6% | 8% | 10%
			create_template("weap_wbm056_desc_ext_tw",
				{"loc_reduce_fixed_overheat_amount_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 和 "..COLORS_KWords_tw.Crit_k_rgb_tw.." ， \n在 "..COLORS_Numbers.time_var_rgb.." 秒內 "..COLORS_KWords_tw.Heat_rgb_tw.." 減少 "..COLORS_Numbers.amount_var_rgb)),
			--[+ Simplified Chinese - 散热器 +]--
			create_template("weap_wbm056_desc_ext_zh_cn",
				{"loc_reduce_fixed_overheat_amount_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Weakspothits_k_rgb_zh_cn.."和"..COLORS_KWords_zh_cn.Crit_hits_k_rgb_zh_cn.."时，\n在 "..COLORS_Numbers.time_var_rgb.." 秒内减少"..COLORS_Numbers.amount_var_rgb.." "..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."。")),

		--[+ SYPHON +]--
		-- Relic Blade -- 10% | 12% | 14% | 16%
			create_template("weap_wbm057_desc_ext_en",
				{"loc_trait_bespoke_regain_toughness_on_multiple_hits_by_weapon_special_desc"}, {"en"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." regains on hitting at least "..COLORS_Numbers.n_3_rgb.." enemies with an attack while weapon Special is active.")), -- toughness: 16% -- colors
			--[+ French +]--
			create_template("weap_wbm057_desc_ext_fr",
				{"loc_trait_bespoke_regain_toughness_on_multiple_hits_by_weapon_special_desc"}, {"fr"},
					loc_text("Toucher au moins "..COLORS_Numbers.n_3_rgb.." ennemis avec une attaque lorsque la forme Spéciale de l'arme est active, restaure "..COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr..".")),
			--[+ Russian +]--
			create_template("weap_wbm057_desc_ext_ru",
				{"loc_trait_bespoke_regain_toughness_on_multiple_hits_by_weapon_special_desc"}, {"ru"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при попадании по "..COLORS_Numbers.n_3_rgb.." или более врагам при активированной специальной атаке")),
			--[+ Traditional Chinese - 虹吸 +]--
			-- 上古神刃 -- 10% | 12% | 14% | 16%
			create_template("weap_wbm057_desc_ext_tw",
				{"loc_trait_bespoke_regain_toughness_on_multiple_hits_by_weapon_special_desc"}, {"zh-tw"},
					loc_text("在武器充能期間，\n一次攻擊命中至少 "..COLORS_Numbers.n_3_rgb.." 個敵人時，\n"..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.." 。")),
			--[+ Simplified Chinese - 虹吸 +]--
			create_template("weap_wbm057_desc_ext_zh_cn",
				{"loc_trait_bespoke_regain_toughness_on_multiple_hits_by_weapon_special_desc"}, {"zh-cn"},
					loc_text("武器充能期间，\n命中至少 "..COLORS_Numbers.n_3_rgb.." 名敌人时，"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。")),

		--[+ ENERGY TRANSFER +]--
		-- Relic Blade -- 14% & 2% | 16% & 3% | 18% & 4% | 20% & 5%
			create_template("weap_wbm058_desc_ext_en",
				{"loc_slower_heat_buildup_on_perfect_block_desc"}, {"en"},
					loc_text(COLORS_Numbers.heat_red_var_rgb.." "..COLORS_KWords.Heat_rgb.." buildup and "..COLORS_Numbers.heat_diss_var_rgb.." "..COLORS_KWords.Heat_rgb.." dissipation for "..COLORS_Numbers.time_var_rgb.." seconds on a Perfect Block. Can only occur once every "..COLORS_Numbers.interval_var_rgb.." seconds.")), -- heat_reduction: 20%, heat_dissipation: 5%, time: 5, interval: 8 -- colors
			--[+ French +]--
			create_template("weap_wbm058_desc_ext_fr",
				{"loc_slower_heat_buildup_on_perfect_block_desc"}, {"fr"},
					loc_text("Réduit la génération de "..COLORS_KWords_fr.Heat_rgb_fr.." de "..COLORS_Numbers.heat_red_var_rgb.." et augmente la dissipation de "..COLORS_KWords_fr.Heat_rgb_fr.." de "..COLORS_Numbers.heat_diss_var_rgb.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un blocage parfait. Ne peux se produire que toute les "..COLORS_Numbers.interval_var_rgb.." secondes.")),
			--[+ Russian +]-- Передача энергии
			create_template("weap_wbm058_desc_ext_ru",
				{"loc_slower_heat_buildup_on_perfect_block_desc"}, {"ru"},
					loc_text("На "..COLORS_Numbers.heat_red_var_rgb.." снижается набор "..COLORS_KWords_ru.Heat_rgb_ru.." и на "..COLORS_Numbers.heat_diss_var_rgb.." повышается рассеивание "..COLORS_KWords_ru.Heat_rgb_ru.." в течение "..COLORS_Numbers.time_var_rgb.." секунд при идеальном блоке. Срабатывает раз в "..COLORS_Numbers.interval_var_rgb.." секунд.")),
			--[+ Traditional Chinese - 能量轉換 +]--
			-- 上古神刃 -- 14% & 2% | 16% & 3% | 18% & 4% | 20% & 5%
			create_template("weap_wbm058_desc_ext_tw",
				{"loc_slower_heat_buildup_on_perfect_block_desc"}, {"zh-tw"},
					loc_text("完美格擋時 "..COLORS_Numbers.heat_red_var_rgb.." "..COLORS_KWords_tw.Heat_rgb_tw.." ，\n並 "..COLORS_Numbers.heat_diss_var_rgb.." "..COLORS_KWords_tw.Heat_diss_rgb_tw.." ，持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n此效果每 "..COLORS_Numbers.interval_var_rgb.." 秒最多觸發一次。")),
			--[+ Simplified Chinese - 能量转移 +]--
			create_template("weap_wbm058_desc_ext_zh_cn",
				{"loc_slower_heat_buildup_on_perfect_block_desc"}, {"zh-cn"},
					loc_text("完美格挡时"..COLORS_Numbers.heat_red_var_rgb.." "..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."积累，\n同时 "..COLORS_Numbers.heat_diss_var_rgb.." "..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."消散，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n每 "..COLORS_Numbers.interval_var_rgb.." 秒只能触发一次。")),

		--[+ SHOCK & AWE / SHOCK AND AWE +]--
		-- Thunder Hammers -- 30% | 40% | 50% | 60%
			create_template("weap_wbm059_ext_en",
				{"loc_trait_bespoke_hit_mass_consumption_reduction_on_kill"}, {"en"},
					loc_text("Shock and Awe")), -- &->and
			create_template("weap_wbm059_desc_ext_en",
				{"loc_trait_bespoke_hit_mass_consumption_reduction_on_kill_desc"}, {"en"},
					loc_text(COLORS_Numbers.hitmass_var_rgb.." Enemy "..COLORS_KWords.Hit_mass_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Kill.")), -- hit_mass: -40%, time: 2 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbm059_desc_ext_fr",
				{"loc_trait_bespoke_hit_mass_consumption_reduction_on_kill_desc"}, {"fr"},
					loc_text(COLORS_Numbers.hitmass_var_rgb.." "..COLORS_KWords_fr.Hit_mass_rgb_fr.." ennemie pour "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination.")),
			--[+ Russian +]-- Шок и трепет
			create_template("weap_wbm059_desc_ext_ru",
				{"loc_trait_bespoke_hit_mass_consumption_reduction_on_kill_desc"}, {"ru"},
					loc_text(COLORS_Numbers.hitmass_var_rgb.." от "..COLORS_KWords_ru.Hit_masss_rgb_ru.." врагов на "..COLORS_Numbers.time_var_rgb.." секунды после убийства.")),
			--[+ Traditional Chinese - 震懾 +]--
			-- 雷鎚 -- 30% | 40% | 50% | 60%
			create_template("weap_wbm059_desc_ext_tw",
				{"loc_trait_bespoke_hit_mass_consumption_reduction_on_kill_desc"}, {"zh-tw"},
					loc_text("擊殺敵人後，敵人 "..COLORS_KWords_tw.Hit_masss_rgb_tw.." "..COLORS_Numbers.hitmass_var_rgb.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 震骇效应 +]--
			create_template("weap_wbm059_desc_ext_zh_cn",
				{"loc_trait_bespoke_hit_mass_consumption_reduction_on_kill_desc"}, {"zh-cn"},
					loc_text("击杀敌人时，使敌人 "..COLORS_KWords_zh_cn.Hit_masss_rgb_zh_cn.." 降至"..COLORS_Numbers.hitmass_var_rgb.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn)),

		--[+ TAKE A SWING +]--
		-- Sapper Shovels -- 45% | 50% | 55% | 60%
			create_template("weap_wbm060_desc_ext_en",
				{"loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Pushing Enemies.")), -- toughness: +45%, time: 3 -- colors
			--[+ French +]--
			create_template("weap_wbm060_desc_ext_fr",
				{"loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une poussée d'ennemis.")),
			--[+ Russian +]-- Замах
			create_template("weap_wbm060_desc_ext_ru",
				{"loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при отталкивании врагов.")),
			--[+ Traditional Chinese - 揮拳出擊 +]--
			-- 工兵鏟 -- 45% | 50% | 55% | 60%
			create_template("weap_wbm060_desc_ext_tw",
				{"loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies_desc"}, {"zh-tw"},
					loc_text("推開敵人後 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 挥拳出击 +]--
			create_template("weap_wbm060_desc_ext_zh_cn",
				{"loc_trait_bespoke_weakspot_damage_bonus_on_pushed_enemies_desc"}, {"zh-cn"},
					loc_text("推搡敌人 \n"..COLORS_Numbers.dmg_var_rgb.." 近战"..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),
		
		--[+ SUPERCHARGE +]--
		-- Power Maul, Power Swords -- 1 | 2 | 3 | 4
			create_template("weap_wbm061_desc_ext_en",
				{"loc_trait_bespoke_armor_rend_on_activated_attacks_desc"}, {"en"},
					loc_text(COLORS_Numbers.rend_var_rgb.." Stacks of "..COLORS_KWords.Brittleness_rgb.." on Energised Hit."..COLORS_KWords.Brtl_note_rgb)), -- rend: +4 -- colors
			--[+ French +]--
			create_template("weap_wbm061_desc_ext_fr",
				{"loc_trait_bespoke_armor_rend_on_activated_attacks_desc"}, {"fr"},
					loc_text(COLORS_Numbers.rend_var_rgb.." cumuls de "..COLORS_KWords_fr.Brittleness_rgb_fr.." lors d'un coup énergisé."..COLORS_KWords_fr.Brtl_note_rgb_fr)),
			--[+ Russian +]-- Суперзаряд
			create_template("weap_wbm061_desc_ext_ru",
				{"loc_trait_bespoke_armor_rend_on_activated_attacks_desc"}, {"ru"},
					loc_text(COLORS_Numbers.rend_var_rgb.." заряда "..COLORS_KWords_ru.Brittleness_rgb_ru.." при заряженном ударе."..COLORS_KWords_ru.Brtl_note_rgb_ru)),
			--[+ Traditional Chinese - 超級充能 +]--
			-- 動力錘, 動力劍 -- 1 | 2 | 3 | 4
			create_template("weap_wbm061_desc_ext_tw",
				{"loc_trait_bespoke_armor_rend_on_activated_attacks_desc"}, {"zh-tw"},
					loc_text("特殊攻擊敵人時，\n使其獲得 "..COLORS_Numbers.rend_var_rgb.." 層 "..COLORS_KWords_tw.Brittleness_rgb_tw.."，上限 "..COLORS_Numbers.maxstks_var_rgb.." 層。 "..COLORS_KWords_tw.Brtl_note_rgb_tw)),
			--[+ Simplified Chinese - 超负荷 +]--
			create_template("weap_wbm061_desc_ext_zh_cn",
				{"loc_trait_bespoke_armor_rend_on_activated_attacks_desc"}, {"zh-cn"},
					loc_text("充能攻击命中时，\n对目标施加 "..COLORS_Numbers.rend_var_rgb.." 层"..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn)),

		--[+ POWER CYCLER +]--
		-- Power Swords -- 2.5% & 1 | 5% & 1 | 7.5% & 2 | 10% & 2
			create_template("weap_wbm062_desc_ext_en",
				{"loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks_desc"}, {"en"},
					loc_text(COLORS_Numbers.p_xtrahits_var_rgb.." Extra Chained Energised Hits and "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords.Impact_rgb.." on Energised Hits.")), -- extra_hits: +2, stagger: +10% -- colors
			--[+ French +]--
			create_template("weap_wbm062_desc_ext_fr",
				{"loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks_desc"}, {"fr"},
					loc_text(COLORS_Numbers.p_xtrahits_var_rgb.." Coups d'énergie en chaîne supplémentaires et "..COLORS_Numbers.stgr_var_rgb.." d'"..COLORS_KWords_fr.Impact_rgb_fr.." lors d'un coup énergisé.")),
			--[+ Russian +]-- Циклер мощности -- руоф Цикл силы
			create_template("weap_wbm062_desc_ext_ru",
				{"loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks_desc"}, {"ru"},
					loc_text(COLORS_Numbers.stgr_var_rgb.." к "..COLORS_KWords_ru.Impact_rgb_ru.." при заряженных ударах, а также вы получаете "..COLORS_Numbers.p_xtrahits_var_rgb.." дополнительных заряда к заряженным ударам.")),
			--[+ Traditional Chinese - 能量循環 +]--
			-- 動力劍 -- 5% | 10% | 15% | 20%
			create_template("weap_wbm062_desc_ext_tw",
				{"loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks_desc"}, {"zh-tw"},
					loc_text("特殊啟動攻擊時 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_tw.Impact_rgb_tw.." ，\n並獲得 "..COLORS_Numbers.p_xtrahits_var_rgb.." 次額外充能攻擊次數。")),
			--[+ Simplified Chinese - 能量循环 +]--
			create_template("weap_wbm062_desc_ext_zh_cn",
				{"loc_trait_bespoke_extended_activation_duration_and_stagger_on_chained_attacks_desc"}, {"zh-cn"},
					loc_text("武器充能期间 "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."，\n充能连锁攻击时 "..COLORS_Numbers.p_xtrahits_var_rgb.." 额外充能攻击次数。")),

		--[+ SUNDER +]--
		-- Power Swords -- 5% | 10% | 15% | 20%
			create_template("weap_wbm063_desc_ext_en",
				{"loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks_and_heavy_damage_desc"}, {"en"},
					loc_text("Increased "..COLORS_KWords.Cleave_rgb.." and "..COLORS_Numbers.dmghvy_var_rgb.." Heavy Melee Attack "..COLORS_KWords.Damage_rgb.." on Energised Attacks.")), -- heavy_damage: +20% -- colors
			--[+ French +]--
			create_template("weap_wbm063_desc_ext_fr",
				{"loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks_and_heavy_damage_desc"}, {"fr"},
					loc_text("Lors d'un coup énergisé, augmente le "..COLORS_KWords_fr.Cleave_rgb_fr.." et les "..COLORS_KWords_fr.Damage_rgb_fr.." des attaques puissantes de mélée de "..COLORS_Numbers.dmghvy_var_rgb..".")),
			--[+ Russian +]-- Сокрушение -- руоф Сандер
			create_template("weap_wbm063_desc_ext_ru",
				{"loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks_and_heavy_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmghvy_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." тяжёлых заряженных атак ближнего боя, а также повышено "..COLORS_KWords_ru.Cleaving_rgb_ru..".")),
			--[+ Traditional Chinese - 破甲 +]--
			-- 動力劍 -- 5% | 10% | 15% | 20%	
			create_template("weap_wbm063_desc_ext_tw",
				{"loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks_and_heavy_damage_desc"}, {"zh-tw"},
					loc_text("充能攻擊時 "..COLORS_KWords_tw.Damage_s_rgb_tw.." "..COLORS_Numbers.dmghvy_var_rgb.."，\n並強化 "..COLORS_KWords_tw.Cleaving_rgb_tw.." 。")),
			--[+ Simplified Chinese - 切裂 +]--
			create_template("weap_wbm063_desc_ext_zh_cn",
				{"loc_trait_bespoke_infinite_armor_cleave_on_activated_attacks_and_heavy_damage_desc"}, {"zh-cn"},
					loc_text("充能攻击 "..COLORS_Numbers.dmghvy_var_rgb.." 近战重攻击"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."，\n同时无视装甲赋予的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn)),

		--[+ SUCKER PUNCH +]--
		-- Latrine Shovels -- 7.5% | 10% | 12.5% | 15%
			create_template("weap_wbm064_desc_ext_en",
				{"loc_trait_bespoke_increased_crit_chance_after_punch_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Special Action Hit.")), -- crit_chance: +15%,  time: 3 -- colors
			--[+ French +]--
			create_template("weap_wbm064_desc_ext_fr",
				{"loc_trait_bespoke_increased_crit_chance_after_punch_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un coup d'action spéciale.")),
			--[+ Russian +]-- Удар исподтишка
			create_template("weap_wbm064_desc_ext_ru",
				{"loc_trait_bespoke_increased_crit_chance_after_punch_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при ударе специальной атакой.")),
			--[+ Traditional Chinese - 突然襲擊 +]--
			-- 廁所鏟 -- 7.5% | 10% | 12.5% | 15%
			create_template("weap_wbm064_desc_ext_tw",
				{"loc_trait_bespoke_increased_crit_chance_after_punch_desc"}, {"zh-tw"},
					loc_text("特殊攻擊命中時 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 出其不意 +]--
			create_template("weap_wbm064_desc_ext_zh_cn",
				{"loc_trait_bespoke_increased_crit_chance_after_punch_desc"}, {"zh-cn"},
					loc_text("特殊攻击命中敌人时 \n"..COLORS_Numbers.crit_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ CONFIDENT STRIKE +]-- checked 27.04.2025
		-- Max Toughness Percentage (per tier)
		-- Battle Maul and Shield, Bully Clubs, Cleavers, Latrine Shovels, Pickaxes, Power Maul -- 5% | 6% | 7% | 8%
			create_template("weap_wbm065_desc_ext_en",
				{"loc_trait_bespoke_toughness_recovery_on_chained_attacks_desc"}, {"en"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." on Chained Hit. Doesn't interact with "..COLORS_KWords.Coherency_rgb.." "..COLORS_KWords.Toughness_rgb..". Procs additionally to "..COLORS_KWords.Toughness_rgb.." replenishments from Talents.")), -- toughness: +8% -- colors -- +"Doesn't interact with "..COLORS_KWords.Coherency_rgb.." "..COLORS_KWords.Toughness_rgb..". Procs additionally to "..COLORS_KWords.Toughness_rgb.." replenishments from Talents."
			--[+ French +]--
			create_template("weap_wbm065_desc_ext_fr",
				{"loc_trait_bespoke_toughness_recovery_on_chained_attacks_desc"}, {"fr"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'un coup en chaîne.")),
			--[+ Russian - Уверенный удар +]-- checked 27.04.2025
			create_template("weap_wbm065_desc_ext_ru",
				{"loc_trait_bespoke_toughness_recovery_on_chained_attacks_desc"}, {"ru"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." при серии ударов. Не взаимодействует с восстановлением "..COLORS_KWords_ru.Toughness_rgb_ru.." от "..COLORS_KWords_ru.Coherency_rgb_ru..". Работает в дополнение к "..COLORS_KWords_ru.Toughness_rgb_ru..", восполняемой талантами.")),
			--[+ Traditional Chinese - 堅定打擊 +]--
			-- 作戰大槌&板盾, 惡棍棒, 砍刀, 廁所鏟, 十字鎬, 動力錘 -- 5% | 6% | 7% | 8%
			create_template("weap_wbm065_desc_ext_tw",
				{"loc_trait_bespoke_toughness_recovery_on_chained_attacks_desc"}, {"zh-tw"},
					loc_text("連續攻擊時 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."。")),
			--[+ Simplified Chinese - 自信打击 +]--
			create_template("weap_wbm065_desc_ext_zh_cn",
				{"loc_trait_bespoke_toughness_recovery_on_chained_attacks_desc"}, {"zh-cn"},
					loc_text("连锁攻击命中时，"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。")),

		--[+ NO GUTS, NO GLORY +]--
		-- Bully Clubs -- 2 | 3 | 4 | 5
			create_template("weap_wbm066_desc_ext_en",
				{"loc_trait_bespoke_toughness_regen_on_punching_elites_desc"}, {"en"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." Regeneration per second for "..COLORS_Numbers.time_var_rgb.." seconds on Elite Special Action Hit.")), -- toughness: +8%,  time: 5 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbm066_desc_ext_fr",
				{"loc_trait_bespoke_toughness_regen_on_punching_elites_desc"}, {"fr"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." par seconde pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un coup d'action spéciale sur un élite.")),
			--[+ Russian +]-- Нет смелости — нет славы
			create_template("weap_wbm066_desc_ext_ru",
				{"loc_trait_bespoke_toughness_regen_on_punching_elites_desc"}, {"ru"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду в течение "..COLORS_Numbers.time_var_rgb.." секунд при попадании специальной атакой по Элитному врагу.")),
			--[+ Traditional Chinese - 不入虎穴，焉得虎子 +]--
			-- 惡棍棒 -- 2 | 3 | 4 | 5
			create_template("weap_wbm066_desc_ext_tw",
				{"loc_trait_bespoke_toughness_regen_on_punching_elites_desc"}, {"zh-tw"},
					loc_text("特殊攻擊命中精英時，每秒恢復 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n兩段式恢復，立刻恢復X韌性、持續恢復X韌性。")), -- Need Check
			--[+ Simplified Chinese - 没有胆量，没有荣耀 +]--
			create_template("weap_wbm066_desc_ext_zh_cn",
				{"loc_trait_bespoke_toughness_regen_on_punching_elites_desc"}, {"zh-cn"},
					loc_text("特殊攻击命中精英敌人时 \n"..COLORS_Numbers.tghns_var_rgb.." 连携"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."回复，持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ BASH +]-- checked 27.04.2025
		-- Crit Chance (per tier)
		-- Cleavers -- 7.5% | 10% | 12.5% | 15%
			create_template("weap_wbm067_desc_ext_en",
				{"loc_trait_bespoke_crit_chance_on_push_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Pushing Enemies. Can be refreshed during active duration.")), -- crit_chance: +15%,  time: 3 -- s->seconds -- colors -- +"Can be refreshed during active duration."
			--[+ French +]--
			create_template("weap_wbm067_desc_ext_fr",
				{"loc_trait_bespoke_crit_chance_on_push_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes en poussant les ennemies.")),
			--[+ Russian - Удар +]-- checked 27.04.2025
			create_template("weap_wbm067_desc_ext_ru",
				{"loc_trait_bespoke_crit_chance_on_push_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при отталкивании врагов. Может быть обновлено во время действия.")),
			--[+ Traditional Chinese - 猛撞 +]--
			-- 砍刀 -- 7.5% | 10% | 12.5% | 15%
			create_template("weap_wbm067_desc_ext_tw",
				{"loc_trait_bespoke_crit_chance_on_push_desc"}, {"zh-tw"},
					loc_text("推開敵人時 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 猛击 +]--
			create_template("weap_wbm067_desc_ext_zh_cn",
				{"loc_trait_bespoke_crit_chance_on_push_desc"}, {"zh-cn"},
					loc_text("推搡敌人时 "..COLORS_Numbers.crit_var_rgb.." 近战"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ TENDERISER +]--
		-- Cleavers -- 10% | 15% | 20% | 25%
			create_template("weap_wbm068_desc_ext_en",
				{"loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords.Strength_rgb.." for your next "..COLORS_Numbers.n_3_rgb.." Melee attacks after Weapon Special attack Hit."..COLORS_KWords.Pwr_note_rgb)), -- power: +15% -- -() -- colors
			--[+ French +]--
			create_template("weap_wbm068_desc_ext_fr",
				{"loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwr_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pour vos "..COLORS_Numbers.n_3_rgb.." prochaines attaques de mélée lors d'une attaque spéciale d'arme réussie."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Молот мясника
			create_template("weap_wbm068_desc_ext_ru",
				{"loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwr_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." для следующих "..COLORS_Numbers.n_3_rgb.." атак ближнего боя после удара специальной атакой."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 肉槌 +]--
			-- 砍刀 -- 10% | 15% | 20% | 25%
			create_template("weap_wbm068_desc_ext_tw",
				{"loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits_desc"}, {"zh-tw"},
					loc_text("特殊攻擊命中敵人時，接下來 "..COLORS_Numbers.n_3_rgb.." 次的近戰攻擊，\n獲得 "..COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 大肉锤 +]--
			create_template("weap_wbm068_desc_ext_zh_cn",
				{"loc_trait_bespoke_increased_power_on_weapon_special_follow_up_hits_desc"}, {"zh-cn"},
					loc_text("特殊攻击命中敌人时，\n下 "..COLORS_Numbers.n_3_rgb.." 次近战攻击 "..COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ UNSTOPPABLE FORCE +]--
		-- Cleavers -- 2.5% | 5% | 7.5% | 10%
			create_template("weap_wbm069_desc_ext_en",
				{"loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." to Fully Charged Heavy Attacks, they also ignore Enemy "..COLORS_KWords.Hit_mass_rgb..".")), -- damage: 10% -- colors
			--[+ French +]--
			create_template("weap_wbm069_desc_ext_fr",
				{"loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." pour les attaques puissantes pleinement chargées, elles ignorent également le "..COLORS_KWords_fr.Hit_mass_rgb_fr.." des ennemies.")),
			--[+ Russian +]-- Неудержимая сила
			create_template("weap_wbm069_desc_ext_ru",
				{"loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." для полностью заряженных тяжёлых атак, они также игнорируют "..COLORS_KWords_ru.Hit_mass_rgb_ru.." врага.")),
			--[+ Traditional Chinese - 勢不可擋 +]--
			-- 砍刀 -- 2.5% | 5% | 7.5% | 10%
			create_template("weap_wbm069_desc_ext_tw",
				{"loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack_desc"}, {"zh-tw"},
					loc_text("完全蓄力的重攻擊 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."，\n並無視敵人的 "..COLORS_KWords_tw.Hit_mass_rgb_tw.."。")),
			--[+ Simplified Chinese - 势不可挡 +]--
			create_template("weap_wbm069_desc_ext_zh_cn",
				{"loc_trait_bespoke_pass_past_armor_and_damage_on_heavy_attack_desc"}, {"zh-cn"},
					loc_text("完全蓄力的重攻击 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.." 同时无视装甲赋予的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn)),

		--[+ TORMENT +]--
		-- Pickaxes -- 12% | 16% | 20% | 24%
			create_template("weap_wbm070_desc_ext_en",
				{"loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Weapon Special Hit."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +24%,  time: 3.5 -- colors
			--[+ French +]--
			create_template("weap_wbm070_desc_ext_fr",
				{"loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une attaque spéciale d'arme réussie."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Истязание
			create_template("weap_wbm070_desc_ext_ru",
				{"loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при ударе специальной атакой."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 凌遲 +]--
			-- 十字鎬 -- 12% | 16% | 20% | 24%
			create_template("weap_wbm070_desc_ext_tw",
				{"loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"}, {"zh-tw"},
					loc_text("特殊攻擊命中敵人時 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 折磨 +]--
			create_template("weap_wbm070_desc_ext_zh_cn",
				{"loc_trait_bespoke_increase_power_on_weapon_special_hit_desc"}, {"zh-cn"},
					loc_text("特殊攻击命中敌人时 \n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ SLOW AND STEADY +]--
		-- Pickaxes -- 5% | 6% | 7% | 8% (up to 24%)
			create_template("weap_wbm071_desc_ext_en",
				{"loc_trait_bespoke_toughness_on_hit_based_on_charge_time_desc"}, {"en"},
					loc_text("Recover "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." when hitting an enemy with a Heavy Attack, based on charge time.")), -- toughness: 8% -- colors
			--[+ French +]--
			create_template("weap_wbm071_desc_ext_fr",
				{"loc_trait_bespoke_toughness_on_hit_based_on_charge_time_desc"}, {"fr"},
					loc_text("Récupérez "..COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." lorsque vous touchez un ennemie avec une attaque puissante, dépend du temps de charge.")),
			--[+ Russian +]-- Медленно, но верно -- руоф Медленный и упорный
			create_template("weap_wbm071_desc_ext_ru",
				{"loc_trait_bespoke_toughness_on_hit_based_on_charge_time_desc"}, {"ru"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при ударе врага тяжёлой атакой, в зависимости от времени заряжания атаки.")),
			--[+ Traditional Chinese - 緩慢而確實 +]--
			-- 十字鎬 -- 5% | 6% | 7% | 8% (up to 24%)
			create_template("weap_wbm071_desc_ext_tw",
				{"loc_trait_bespoke_toughness_on_hit_based_on_charge_time_desc"}, {"zh-tw"},
					loc_text("重擊攻擊命中敵人時 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."，\n回復量依據蓄力時間恢復。")),
			--[+ Simplified Chinese - 步稳行远 +]--
			create_template("weap_wbm071_desc_ext_zh_cn",
				{"loc_trait_bespoke_toughness_on_hit_based_on_charge_time_desc"}, {"zh-cn"},
					loc_text("随重攻击蓄力时间增加叠加层数，\n命中敌人时，每层使"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。\n最多叠加 "..COLORS_Numbers.n_3_rgb.." 层。")),

		--[+ POWER SURGE +]--
		-- Power Maul -- 10% | 15% | 20% | 25%
			create_template("weap_wbm072_desc_ext_en",
				{"loc_trait_bespoke_explosion_on_activated_attacks_on_armor_new_desc"}, {"en"},
					loc_text(COLORS_Numbers.explosion_rad_var_rgb.." Explosion Radius to Special Attacks. Special Attacks on Armored Enemies cause an additional Shockwave.")), -- explosion_radius: 25% -- colors
			--[+ French +]--
			create_template("weap_wbm072_desc_ext_fr",
				{"loc_trait_bespoke_explosion_on_activated_attacks_on_armor_new_desc"}, {"fr"},
					loc_text("Le rayon d'explosion des attaques spéciales augmente de "..COLORS_Numbers.explosion_rad_var_rgb..". Les attaques spéciales sur des ennemies en armure engendrent une onde de choc supplémentaire.")),
			--[+ Russian +]-- Энергетический заряд -- руоф Скачок напряжения
			create_template("weap_wbm072_desc_ext_ru",
				{"loc_trait_bespoke_explosion_on_activated_attacks_on_armor_new_desc"}, {"ru"},
					loc_text(COLORS_Numbers.explosion_rad_var_rgb.." к радиусу взрыва от специальных атак. Специальные атаки по бронированным врагам создают дополнительную ударную волну.")),
			--[+ Traditional Chinese - 能量湧動 +]--
			-- 動力錘 -- 10% | 15% | 20% | 25%
			create_template("weap_wbm072_desc_ext_tw",
				{"loc_trait_bespoke_explosion_on_activated_attacks_on_armor_new_desc"}, {"zh-tw"},
					loc_text("特殊攻擊的爆炸半徑 "..COLORS_Numbers.explosion_rad_var_rgb.."。\n對護甲敵人使用特殊攻擊時產生額外的衝擊波。")),
			--[+ Simplified Chinese - 能量激增 +]--
			create_template("weap_wbm072_desc_ext_zh_cn",
				{"loc_trait_bespoke_explosion_on_activated_attacks_on_armor_new_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.explosion_rad_var_rgb.." 充能攻击爆炸范围。\n充能攻击命中首个目标后，\n命中着甲敌人，额外引发一次爆炸。")),

		--[+ LAST GUARD +]--
		-- Battle Maul and Shield -- 18s & 15% | 15s & 20% | 12s & 25% | 9s & 30%
			create_template("weap_wbm073_desc_ext_en",
				{"loc_trait_block_break_pushes_new_desc"}, {"en"},
					loc_text(COLORS_Numbers.block_var_rgb.." Block Cost. Pushes back enemies within a "..COLORS_Numbers.n_5_rgb.." meter radius when Ogryn's "..COLORS_KWords.Stamina_rgb.." reaches "..COLORS_Numbers.n_0_rgb.." from Blocking an attack. Cooldown "..COLORS_Numbers.cd_var_rgb.." seconds.")), -- block_cost: -30%, cooldown: 15 -- colors
			--[+ French +]--
			create_template("weap_wbm073_desc_ext_fr",
				{"loc_trait_block_break_pushes_new_desc"}, {"fr"},
					loc_text(COLORS_Numbers.block_var_rgb.." de réduction du coût de blocage. Quand l'"..COLORS_KWords_fr.Stamina_rgb_fr.." de l'Ogryn atteint "..COLORS_Numbers.n_0_rgb.." en bloquant des attaques, il repousse les ennemies dans un rayon de "..COLORS_Numbers.n_5_rgb.." mètres. Temps de recharge : "..COLORS_Numbers.cd_var_rgb.." secondes.")),
			--[+ Russian +]-- Последний страж
			create_template("weap_wbm073_desc_ext_ru",
				{"loc_trait_block_break_pushes_new_desc"}, {"ru"},
					loc_text(COLORS_Numbers.block_var_rgb.." от затрат на блок. Вы отталкиваете врагов в радиусе "..COLORS_Numbers.n_5_rgb.." метров, когда уровень "..COLORS_KWords_ru.Stamina_rgb_ru.." огрина достигает "..COLORS_Numbers.n_0_rgb.." при блокировании атак. Восстановление "..COLORS_Numbers.cd_var_rgb.." секунд.")),
			--[+ Traditional Chinese - 最後防線 +]--
			-- 作戰大槌&板盾 -- 18s & 15% | 15s & 20% | 12s & 25% | 9s & 30%
			create_template("weap_wbm073_desc_ext_tw",
				{"loc_trait_block_break_pushes_new_desc"}, {"zh-tw"},
					loc_text("格擋消耗降低 "..COLORS_Numbers.block_var_rgb.."。\n當耐力降至 "..COLORS_Numbers.n_0_rgb.." 並成功格擋攻擊時，\n擊退 "..COLORS_Numbers.n_5_rgb.." 公尺內的敵人。冷卻時間 "..COLORS_Numbers.cd_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 最后的卫士 +]--
			create_template("weap_wbm073_desc_ext_zh_cn",
				{"loc_trait_block_break_pushes_new_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.block_var_rgb.." 格挡消耗。格挡期间"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."耗尽时，\n推开 "..COLORS_Numbers.n_5_rgb.." 米内的敌人，冷却时间 "..COLORS_Numbers.cd_var_rgb.." 秒。")),

		--[+ OFFENSIVE DEFENCE +]--
		-- Battle Maul and Shield -- 4% | 6% | 8% | 10% (up to +50%)
			create_template("weap_wbm074_desc_ext_en",
				{"loc_trait_damage_bonus_on_block_desc"}, {"en"},
					loc_text("Gain a Stack for each "..COLORS_KWords.Stamina_rgb.." spent Blocking. Your next Melee attack gains "..COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords.Strength_rgb.." per Stack and consumes one Stack. Last "..COLORS_Numbers.dur_var_rgb.." seconds. Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Pwr_note_rgb)), -- power: +10%, duration: 3.5, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbm074_desc_ext_fr",
				{"loc_trait_damage_bonus_on_block_desc"}, {"fr"},
					loc_text("Pour chaque point d'"..COLORS_KWords_fr.Stamina_rgb_fr.." dépensé pour bloquer. Votre prochaine attaque de mélée gagne "..COLORS_Numbers.pwr_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." par cumule et consomme un cumule. Dure "..COLORS_Numbers.dur_var_rgb.." secondes. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Атакующая защита -- руоф Активная оборона
			create_template("weap_wbm074_desc_ext_ru",
				{"loc_trait_damage_bonus_on_block_desc"}, {"ru"},
					loc_text("Каждая, потраченная на блокирование, полоска "..COLORS_KWords_ru.Stamina_rgb_ru.." даёт заряд. Ваша следующая атака ближнего боя получает "..COLORS_Numbers.pwr_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." за заряд и тратит "..COLORS_Numbers.n_1_rgb.." заряд. Длится "..COLORS_Numbers.dur_var_rgb.." секунды. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 反守為攻 +]--
			-- 作戰大槌&板盾 -- 4% | 6% | 8% | 10% (up to +50%)
			create_template("weap_wbm074_desc_ext_tw",
				{"loc_trait_damage_bonus_on_block_desc"}, {"zh-tw"},
					loc_text("每消耗一格 "..COLORS_KWords_tw.Stamina_rgb_tw.." 格擋時會獲得一層，\n下一次近戰攻擊每層 "..COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n並消耗 "..COLORS_Numbers.n_1_rgb.." 層充能。\n效果持續 "..COLORS_Numbers.dur_var_rgb.." 秒，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 以守为攻 +]--
			create_template("weap_wbm074_desc_ext_zh_cn",
				{"loc_trait_damage_bonus_on_block_desc"}, {"zh-cn"},
					loc_text("格挡期间，每消耗 "..COLORS_Numbers.n_1_rgb.." "..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.." "..COLORS_Numbers.pwr_var_rgb.." 近战"..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.dur_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

-- ID НОМЕРА ПЕРЕГНАТЬ!!!

	--[+ RANGED - ДАЛЬНИЙ БОЙ - 远程武器 +]--
		--[+ RAKING FIRE +]--
		-- Autopistol, Infantry Autoguns, Laspistols -- 32.5% | 35% | 37.5% | 40%
			create_template("weap_wbr000_desc_ext_en",
				{"loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." when shooting Enemies in the back.")), -- damage: +40% -- colors
			--[+ French +]--
			create_template("weap_wbr000_desc_ext_fr",
				{"loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." lorsque vous tirez dans le dos des ennemies.")),
			--[+ Russian +]-- Огонь по тылам -- руоф Обстрел
			create_template("weap_wbr000_desc_ext_ru",
				{"loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." при стрельбе врагам в спину.")),
			--[+ Traditional Chinese - 掃射 +]--
			-- 撕裂者自動手槍, 步兵自動槍, 重型雷射手槍 -- 32.5% | 35% | 37.5% | 40%
			create_template("weap_wbr000_desc_ext_tw",
				{"loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking_desc"}, {"zh-tw"},
					loc_text("從側翼或背後射擊敵人時 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."。")),
			--[+ Simplified Chinese - 扫射 +]--
			create_template("weap_wbr000_desc_ext_zh_cn",
				{"loc_trait_bespoke_allow_flanking_and_increased_damage_when_flanking_desc"}, {"zh-cn"},
					loc_text("远程背刺攻击 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。")),

		--[+ DUMDUM +]--
		-- Infantry Autoguns, Laspistols, Recon Lasguns -- 4.5% | 5% | 5.5% | 6% (up to +30%)
			create_template("weap_wbr001_desc_ext_en",
				{"loc_trait_bespoke_consecutive_hits_increases_close_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." Close Range "..COLORS_KWords.Damage_rgb.." on Repeated Hit. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- damage: +6%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr001_desc_ext_fr",
				{"loc_trait_bespoke_consecutive_hits_increases_close_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." rapprochés lors d'un coup répété. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Дум-дум  -- руоф Дамдам
			create_template("weap_wbr001_desc_ext_ru",
				{"loc_trait_bespoke_consecutive_hits_increases_close_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." на дистанции до "..COLORS_Numbers.n_12_5_rgb.." метров при повторной атаке. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 達姆彈 +]--
			-- 步兵自動槍, 重型雷射手槍, 偵查雷射槍 -- 4.5% | 5% | 5.5% | 6% (up to +30%)
			create_template("weap_wbr001_desc_ext_tw",
				{"loc_trait_bespoke_consecutive_hits_increases_close_damage_desc"}, {"zh-tw"},
					loc_text("在 "..COLORS_Numbers.n_12_5_rgb.." 公尺內，\n連續命中時 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 达姆弹 +]--
			create_template("weap_wbr001_desc_ext_zh_cn",
				{"loc_trait_bespoke_consecutive_hits_increases_close_damage_desc"}, {"zh-cn"},
					loc_text("反复命中时，对 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人\n"..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ HIT & RUN /  HIT AND RUN +]--
		-- Braced Autoguns, Combat Shotguns, Double-Barrel Shotgun, Infantry Autoguns, Recon Lasguns -- 0.7 | 0.8 | 0.9 | 1
			create_template("weap_wbr067_ext_en",
				{"loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill"}, {"en"},
					loc_text("Hit and Run")), -- &->and
			create_template("weap_wbr067_desc_ext_en",
				{"loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill_desc"}, {"en"},
					loc_text("Immune to Ranged Attacks for "..COLORS_Numbers.time_var_rgb.." second on Kill at a distance of up to "..COLORS_Numbers.n_12_5_rgb.." meters.")), -- time: 1.0 -- s->second -- colors
			--[+ French +]--
			create_template("weap_wbr067_desc_ext_fr",
				{"loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill_desc"}, {"fr"},
					loc_text("Immunité contre les attaques à distance pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination à moins de "..COLORS_Numbers.n_12_5_rgb.." mètres.")),
			--[+ Russian +]-- Бей и беги
			create_template("weap_wbr067_desc_ext_ru",
				{"loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill_desc"}, {"ru"},
					loc_text("Иммунитет к дальнобойным атакам на "..COLORS_Numbers.time_var_rgb.." секунду при убийстве на дистанции до "..COLORS_Numbers.n_12_5_rgb.." метров.")),
			--[+ Traditional Chinese - 游擊 +]--
			-- 槍托自動槍, 戰鬥霰彈槍, 雙管霰彈槍, 步兵自動槍, 偵查雷射槍 -- 0.7 | 0.8 | 0.9 | 1
			create_template("weap_wbr067_desc_ext_tw",
				{"loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill_desc"}, {"zh-tw"},
					loc_text("在 "..COLORS_Numbers.n_12_5_rgb.." 公尺內擊殺敵人時，\n獲得對遠程攻擊的免疫效果，持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 边打边跑 +]--
			create_template("weap_wbr067_desc_ext_zh_cn",
				{"loc_trait_bespoke_count_as_dodge_vs_ranged_on_close_kill_desc"}, {"zh-cn"},
					loc_text("击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时，\n闪避全部远程攻击，持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ SUSTAINED FIRE +]--
		-- Autopistol, Electrokinetic Staff, Helbore Lasguns, Infantry Autoguns, Recon Lasguns, Stub Revolvers, Voidblast Staff, Voidstrike Staff -- 14% | 16% | 18% | 20%
			create_template("weap_wbr068_desc_ext_en",
				{"loc_trait_bespoke_followup_shots_ranged_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." on Second, Third and Fourth shots in a Salvo."..COLORS_KWords.Trauma_note_rgb)), -- damage: +20% -- colors
			--[+ French +]--
			create_template("weap_wbr068_desc_ext_fr",
				{"loc_trait_bespoke_followup_shots_ranged_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." lors des "..COLORS_Numbers.n_2e_rgb..", "..COLORS_Numbers.n_3e_rgb..", "..COLORS_Numbers.n_4e_rgb.." tirs d'une salve.")),
			--[+ Russian +]-- Непрерывная стрельба -- руоф Непрерывный огонь
			create_template("weap_wbr068_desc_ext_ru",
				{"loc_trait_bespoke_followup_shots_ranged_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." для второго, третьего и четвёртого выстрела залпа."..COLORS_KWords_ru.Trauma_note_rgb_ru)),
			--[+ Traditional Chinese - 持續射擊 +]--
			-- 撕裂者自動手槍, 電流力場法杖, 冥潮雷射槍, 步兵自動槍, 偵查雷射槍, 快拔左輪手槍, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 14% | 16% | 18% | 20%
			create_template("weap_wbr068_desc_ext_tw",
				{"loc_trait_bespoke_followup_shots_ranged_damage_desc"}, {"zh-tw"},
					loc_text("齊射的第二、三與第四發射擊，\n獲得 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."。" .. COLORS_KWords_tw.Trauma_note_rgb_tw)),
			--[+ Simplified Chinese - 持续射击 +]--
			create_template("weap_wbr068_desc_ext_zh_cn",
				{"loc_trait_bespoke_followup_shots_ranged_damage_desc"}, {"zh-cn"},
					loc_text("齐射的第二、第三和第四发射击\n"..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Trauma_note_rgb_zh_cn)),

		--[+ PUNISHING SALVO +]--
		-- Infantry Autoguns, Recon Lasguns -- 35% | 40% | 45% | 50%
			create_template("weap_wbr069_desc_ext_en",
				{"loc_trait_bespoke_followup_shots_ranged_weakspot_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb.." on Second, Third and Fourth shots in a Salvo.")), -- damage: +50% -- colors
			--[+ French +]--
			create_template("weap_wbr069_desc_ext_fr",
				{"loc_trait_bespoke_followup_shots_ranged_weakspot_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." lors des "..COLORS_Numbers.n_2e_rgb..", "..COLORS_Numbers.n_3e_rgb..", "..COLORS_Numbers.n_4e_rgb.." tirs d'une salve.")),
			--[+ Russian +]-- Карательный залп
			create_template("weap_wbr069_desc_ext_ru",
				{"loc_trait_bespoke_followup_shots_ranged_weakspot_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." для второго, третьего и четвёртого выстрела залпа.")),
			--[+ Traditional Chinese - 懲罰齊射 +]--
			-- 步兵自動槍, 偵查雷射槍 -- 35% | 40% | 45% | 50%
			create_template("weap_wbr069_desc_ext_tw",
				{"loc_trait_bespoke_followup_shots_ranged_weakspot_damage_desc"}, {"zh-tw"},
					loc_text("齊射的第二、三與第四發射擊，\n獲得 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.."。")),
			--[+ Simplified Chinese - 惩戒齐射 +]--
			create_template("weap_wbr069_desc_ext_zh_cn",
				{"loc_trait_bespoke_followup_shots_ranged_weakspot_damage_desc"}, {"zh-cn"},
					loc_text("齐射的第二、第三和第四发射击\n"..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."。")),

		--[+ FIRE FRENZY +]--
		-- Boltgun, Braced Autoguns, Combat Shotguns, Heavy Stubbers, Infantry Autoguns, Ripper Guns -- 7% | 8% | 9% | 10% (up to +50%)
			create_template("weap_wbr070_desc_ext_en",
				{"loc_trait_bespoke_increase_close_damage_on_close_kill_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmgcls_var_rgb.." Close "..COLORS_KWords.Damage_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds after killing an enemy at a distance of up to "..COLORS_Numbers.n_12_5_rgb.." meters. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- close_damage: +10%, time: 3.5, stacks: 5 -- rewrite -- colors
			--[+ French +]--
			create_template("weap_wbr070_desc_ext_fr",
				{"loc_trait_bespoke_increase_close_damage_on_close_kill_desc"}, {"fr"},
					loc_text("Gagnez "..COLORS_Numbers.dmgcls_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." rapprochés pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination à moins de "..COLORS_Numbers.n_12_5_rgb.." mètres. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Неистовая стрельба -- руоф Огненное неистовство
			create_template("weap_wbr070_desc_ext_ru",
				{"loc_trait_bespoke_increase_close_damage_on_close_kill_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmgcls_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." на ближней дистанции на "..COLORS_Numbers.time_var_rgb.." секунды после убийства врага на дистанции до "..COLORS_Numbers.n_12_5_rgb.." метров. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 烈火熱焰 +]--
			-- 矛頭爆矢槍, 槍托自動槍, 戰鬥霰彈槍, 雙鏈重型機槍, 步兵自動槍, 撕裂槍 -- 7% | 8% | 9% | 10% (up to +50%)
			create_template("weap_wbr070_desc_ext_tw",
				{"loc_trait_bespoke_increase_close_damage_on_close_kill_desc"}, {"zh-tw"},
					loc_text("在 "..COLORS_Numbers.n_12_5_rgb.." 公尺內擊殺敵人，\n"..COLORS_Numbers.dmgcls_var_rgb.." "..COLORS_KWords_tw.Damage_melee_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 疯狂射击 +]--
			create_template("weap_wbr070_desc_ext_zh_cn",
				{"loc_trait_bespoke_increase_close_damage_on_close_kill_desc"}, {"zh-cn"},
					loc_text("击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时 \n对 "..COLORS_Numbers.n_12_5_rgb.." 米内目标 "..COLORS_Numbers.dmgcls_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ DEATHSPITTER +]--
		-- Braced Autoguns, Combat Shotguns, Heavy Stubbers, Infantry Autoguns, Recon Lasguns -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 3.5s
		-- Double-Barrel Shotgun -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 5s
			create_template("weap_wbr071_desc_ext_en",
				{"loc_trait_bespoke_increase_power_on_close_kill_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Kill at a distance of up to "..COLORS_Numbers.n_12_5_rgb.." meters. Up to "..COLORS_Numbers.n_5_rgb.." Stacks."..COLORS_KWords.Pwr_note_rgb)), -- power_level: 6.5%, time: 3.5, stacks: 5 -- rewrite -- colors -- Note
			--[+ French +]--
			create_template("weap_wbr071_desc_ext_fr",
				{"loc_trait_bespoke_increase_power_on_close_kill_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination à moins de "..COLORS_Numbers.n_12_5_rgb.." mètres. Se cumule jusqu'à "..COLORS_Numbers.n_5_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Смертоплюй -- руоф Смертоносец
			create_template("weap_wbr071_desc_ext_ru",
				{"loc_trait_bespoke_increase_power_on_close_kill_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при убийстве врага на дистанции до "..COLORS_Numbers.n_12_5_rgb.." метров. До "..COLORS_Numbers.n_5_rgb.." зарядов."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 死亡噴吐 +]--
			-- 槍托自動槍, 戰鬥霰彈槍, 雙鏈重型機槍, 步兵自動槍, 偵查雷射槍 -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 3.5s
			-- 雙管霰彈槍 -- 5% | 5.5% | 6% | 6.5% (up to +32.5%) | 5s
			create_template("weap_wbr071_desc_ext_tw",
				{"loc_trait_bespoke_increase_power_on_close_kill_desc"}, {"zh-tw"},
					loc_text("在"..COLORS_Numbers.n_12_5_rgb.." 公尺內擊殺敵人 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒，上限 "..COLORS_Numbers.n_5_rgb.." 層。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 死亡喷吐 +]--
			create_template("weap_wbr071_desc_ext_zh_cn",
				{"loc_trait_bespoke_increase_power_on_close_kill_desc"}, {"zh-cn"},
					loc_text("击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时 \n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ STRIPPED DOWN +]--
		-- Braced Autoguns, Infantry Autoguns, Recon Lasguns -- 80% | 70% | 60% | 50%
			create_template("weap_wbr072_desc_ext_en",
				{"loc_trait_bespoke_increased_sprint_speed_desc"}, {"en"},
					loc_text("Gain Ranged Attack Immunity while Sprinting with over "..COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords.Stamina_rgb.."."..COLORS_KWords.Fire_n_trap_note_rgb)), -- stamina: 50% -- colors
			--[+ French +]--
			create_template("weap_wbr072_desc_ext_fr",
				{"loc_trait_bespoke_increased_sprint_speed_desc"}, {"fr"},
					loc_text("Gagnez une immunité contre les attaques à distance lorsque vous courez avec plus de "..COLORS_Numbers.stam_var_rgb.." d'"..COLORS_KWords_fr.Stamina_rgb_fr..".")),
			--[+ Russian +]-- Сбросить лишнее -- руоф Срез
			create_template("weap_wbr072_desc_ext_ru",
				{"loc_trait_bespoke_increased_sprint_speed_desc"}, {"ru"},
					loc_text("Вы получаете иммунитет от атак дальнего боя при беге с уровнем "..COLORS_KWords_ru.Stamina_rgb_ru.." превышающим "..COLORS_Numbers.stam_var_rgb.."."..COLORS_KWords_ru.Fire_n_trap_note_rgb_ru)),
			--[+ Traditional Chinese - 輕裝 +]--
			-- 槍托自動槍, 步兵自動槍, 偵查雷射槍 -- 80% | 70% | 60% | 50%
			create_template("weap_wbr072_desc_ext_tw",
				{"loc_trait_bespoke_increased_sprint_speed_desc"}, {"zh-tw"},
					loc_text("當衝刺時 "..COLORS_KWords_tw.Stamina_c_r_rgb_tw.." 超過 "..COLORS_Numbers.stam_var_rgb.." 時，\n將獲得對遠程攻擊的免疫效果。" .. COLORS_KWords_tw.Fire_n_trap_note_rgb_tw)),
			--[+ Simplified Chinese - 简装 +]--
			create_template("weap_wbr072_desc_ext_zh_cn",
				{"loc_trait_bespoke_increased_sprint_speed_desc"}, {"zh-cn"},
					loc_text("以超过 "..COLORS_Numbers.stam_var_rgb.." "..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."疾跑时，\n闪避全部远程攻击。"..COLORS_KWords_zh_cn.Fire_n_trap_note_rgb_zh_cn)),

		--[+ SPEEDLOAD +]--
		-- Autopistol -- 7% | 8% | 9% | 10% (up to +50%) | 2s
		-- Braced Autoguns, Infantry Autoguns -- 7% | 8% | 9% | 10% (up to +50%) | 2.5s 
		-- Double-Barrel Shotgun, Laspistols, Recon Lasguns -- 7% | 8% | 9% | 10% (up to +50%) | 3s
		-- Stub Revolvers -- 7% | 8% | 9% | 10% (up to +50%) | 4s
			create_template("weap_wbr073_desc_ext_en",
				{"loc_trait_bespoke_reload_speed_on_slide_desc"}, {"en"},
					loc_text(COLORS_Numbers.reload_var_rgb.." Reload Speed for "..COLORS_Numbers.time_var_rgb.." seconds after Kill at a distance of up to "..COLORS_Numbers.n_12_5_rgb.." meters. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- reload_speed: 10%, time: 2.5, stacks: 5 -- rewrite -- colors -- Note
			--[+ French +]--
			create_template("weap_wbr073_desc_ext_fr",
				{"loc_trait_bespoke_reload_speed_on_slide_desc"}, {"fr"},
					loc_text(COLORS_Numbers.reload_var_rgb.." de vitesse de rechargement pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une élimination à moins de "..COLORS_Numbers.n_12_5_rgb.." mètres. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Быстрая перезарядка -- руоф Скоростная загрузка
			create_template("weap_wbr073_desc_ext_ru",
				{"loc_trait_bespoke_reload_speed_on_slide_desc"}, {"ru"},
					loc_text(COLORS_Numbers.reload_var_rgb.." к скорости перезарядки на "..COLORS_Numbers.time_var_rgb.." секунды после убийства врага на дистанции до "..COLORS_Numbers.n_12_5_rgb.." метров. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 快速裝彈 +]--
			-- 撕裂者自動手槍 -- 7% | 8% | 9% | 10% (up to +50%) | 2s
			-- 槍托自動槍, 步兵自動槍 -- 7% | 8% | 9% | 10% (up to +50%) | 2.5s
			-- 雙管霰彈槍, 重型雷射手槍, 偵查雷射槍 -- 7% | 8% | 9% | 10% (up to +50%) | 3s
			-- 快拔左輪手槍-- 7% | 8% | 9% | 10% (up to +50%) | 4s
			create_template("weap_wbr073_desc_ext_tw",
				{"loc_trait_bespoke_reload_speed_on_slide_desc"}, {"zh-tw"},
					loc_text("在 "..COLORS_Numbers.n_12_5_rgb.." 公尺內擊殺敵人後，\n"..COLORS_Numbers.reload_var_rgb.." 換彈速度，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 速度装弹 +]--
			create_template("weap_wbr073_desc_ext_zh_cn",
				{"loc_trait_bespoke_reload_speed_on_slide_desc"}, {"zh-cn"},
					loc_text("击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时\n"..COLORS_Numbers.reload_var_rgb.." 装弹速度，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ TERRIFYING BARRAGE +]--
		-- Autopistol, Boltgun, Braced Autoguns, Combat Shotguns, Double-Barrel Shotgun, Electrokinetic Staff, Heavy Stubbers, Infantry Autoguns, Inferno Staff, Kickback, Ripper Guns, Stub Revolvers, Voidblast Staff, Voidstrike Staff -- 15 | 20 | 25 | 30
			create_template("weap_wbr074_desc_ext_en",
				{"loc_trait_bespoke_suppression_on_close_kill_desc"}, {"en"},
					loc_text("Suppress Enemies on Kill at a distance of up to "..COLORS_Numbers.n_12_5_rgb.." meters.")), -- rewrite -- colors 5m->5meters
			--[+ French +]--
			create_template("weap_wbr074_desc_ext_fr",
				{"loc_trait_bespoke_suppression_on_close_kill_desc"}, {"fr"},
					loc_text("Infligez Suppression aux ennemies lors d'une élimination jusqu'à une distance de "..COLORS_Numbers.n_12_5_rgb.." mètres.")),
			--[+ Russian +]-- Устрашающий обстрел -- руоф Устрашающий натиск
			create_template("weap_wbr074_desc_ext_ru",
				{"loc_trait_bespoke_suppression_on_close_kill_desc"}, {"ru"},
					loc_text("Вы подавляете врагов после убийства на дистанции до "..COLORS_Numbers.n_12_5_rgb.." метров.")),
			--[+ Traditional Chinese - 恐怖阻擊 +]--
			-- 撕裂者自動手槍, 矛頭爆矢槍, 槍托自動槍, 戰鬥霰彈槍, 雙管霰彈槍, 電流力場法杖, 雙鏈重型機槍, 步兵自動槍, 偵查雷射槍, 撕裂槍, 烈焰力場法杖, 反衝者, 快拔左輪手槍, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 15 | 20 | 25 | 30
			create_template("weap_wbr074_desc_ext_tw",
				{"loc_trait_bespoke_suppression_on_close_kill_desc"}, {"zh-tw"},
					loc_text("在 "..COLORS_Numbers.n_12_5_rgb.." 公尺內擊殺敵人後，\n對 "..COLORS_Numbers.n_8_rgb.." 公尺內敵人造成壓制效果。")),
			--[+ Simplified Chinese - 恐怖弹幕 +]--
			create_template("weap_wbr074_desc_ext_zh_cn",
				{"loc_trait_bespoke_suppression_on_close_kill_desc"}, {"zh-cn"},
					loc_text("击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时，\n压制 "..COLORS_Numbers.n_12_rgb.." 米内的敌人。")),

		--[+ ROARING ADVANCE +]--
		-- Braced Autoguns -- 10% | 15% | 20% | 25% (up to ~76%)
		-- Heavy Stubbers -- 7% | 8% | 9% | 10% (up to ~41%)
			create_template("weap_wbr075_desc_ext_en",
				{"loc_trait_bespoke_movement_speed_on_continuous_fire_desc"}, {"en"},
					loc_text(COLORS_Numbers.movspd_var_rgb.." Movement Speed Reduction for every "..COLORS_Numbers.ammo_var_rgb.." of magazine spent during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- movement_speed: 25%, ammo: 5%, stacks: 5 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbr075_desc_ext_fr",
				{"loc_trait_bespoke_movement_speed_on_continuous_fire_desc"}, {"fr"},
					loc_text(COLORS_Numbers.movspd_var_rgb.." de réduction de vitesse de déplacement pour chaque "..COLORS_Numbers.ammo_var_rgb.." du chargeur utilisé en tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Ревущее наступление
			create_template("weap_wbr075_desc_ext_ru",
				{"loc_trait_bespoke_movement_speed_on_continuous_fire_desc"}, {"ru"},
					loc_text(COLORS_Numbers.movspd_var_rgb.." от эффекта замедления скорости движения за каждые "..COLORS_Numbers.ammo_var_rgb.." магазина, потраченных во время непрерывной стрельбы. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 咆哮突進 +]--
			-- 槍托自動槍 -- 10% | 15% | 20% | 25% (up to ~76%)
			-- 雙鏈重型機槍 -- 7% | 8% | 9% | 10% (up to ~41%)
			create_template("weap_wbr075_desc_ext_tw",
				{"loc_trait_bespoke_movement_speed_on_continuous_fire_desc"}, {"zh-tw"},
					loc_text("持續射擊時，每消耗 "..COLORS_Numbers.ammo_var_rgb.." 彈藥，\n"..COLORS_Numbers.movspd_var_rgb.." 的移動速度懲罰，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 咆哮推进 +]--
			create_template("weap_wbr075_desc_ext_zh_cn",
				{"loc_trait_bespoke_movement_speed_on_continuous_fire_desc"}, {"zh-cn"},
					loc_text("连续射击期间，\n每消耗弹匣容量 "..COLORS_Numbers.ammo_var_rgb.." 的弹药，\n移动速度惩罚 "..COLORS_Numbers.movspd_var_rgb.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ CEASELESS BARRAGE +]--
		-- Braced Autoguns, Heavy Stubbers -- 20% & 6% | 20% & 6% | 20% & 6% | 20% & 6% (up to +100% & +30%)
			create_template("weap_wbr076_desc_ext_en",
				{"loc_trait_bespoke_suppression_on_continuous_fire_desc"}, {"en"},
					loc_text(COLORS_Numbers.spprsn_var_rgb.." Suppression and "..COLORS_Numbers.dmgvsprsd_var_rgb.." "..COLORS_KWords.Damage_rgb.." against Suppressed Enemies for every "..COLORS_Numbers.ammo_var_rgb.." of magazine spent during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- suppression: +20%, damage_vs_suppressed: +6%, ammo: 2.5%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr076_desc_ext_fr",
				{"loc_trait_bespoke_suppression_on_continuous_fire_desc"}, {"fr"},
					loc_text(COLORS_Numbers.spprsn_var_rgb.." de suppression et "..COLORS_Numbers.dmgvsprsd_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemies sous suppression pour chaque "..COLORS_Numbers.ammo_var_rgb.." du chargeur utilisé en tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Непрерывный обстрел -- руоф Беспощадный натиск
			create_template("weap_wbr076_desc_ext_ru",
				{"loc_trait_bespoke_suppression_on_continuous_fire_desc"}, {"ru"},
					loc_text(COLORS_Numbers.spprsn_var_rgb.." к подавлению и "..COLORS_Numbers.dmgvsprsd_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." по подавленным врагам за каждые "..COLORS_Numbers.ammo_var_rgb.." магазина, потраченных во время непрерывной стрельбы. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 持續阻擊 +]--
			-- 槍托自動槍, 雙鏈重型機槍 -- 20% & 6% | 20% & 6% | 20% & 6% | 20% & 6% (up to +100% & +30%)	
			create_template("weap_wbr076_desc_ext_tw",
				{"loc_trait_bespoke_suppression_on_continuous_fire_desc"}, {"zh-tw"},
					loc_text("持續射擊時，每消耗 "..COLORS_Numbers.ammo_var_rgb.." 彈藥，\n獲得 "..COLORS_Numbers.spprsn_var_rgb.." 壓制效果強度，\n並對被壓制的敵人造成 "..COLORS_Numbers.dmgvsprsd_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 无尽弹幕 +]--
			create_template("weap_wbr076_desc_ext_zh_cn",
				{"loc_trait_bespoke_suppression_on_continuous_fire_desc"}, {"zh-cn"},
					loc_text("连续射击期间，\n每消耗弹匣容量 "..COLORS_Numbers.ammo_var_rgb.." 的弹药，\n"..COLORS_Numbers.spprsn_var_rgb.." 压制效果，同时对被压制的敌人 "..COLORS_Numbers.dmgvsprsd_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ INSPIRING BARRAGE +]--
		-- Autopistol, Boltgun, Braced Autoguns, Flamer, Heavy Stubbers, Ripper Guns -- 1% | 2% | 3% | 4% (up to 20%)
			create_template("weap_wbr077_desc_ext_en",
				{"loc_trait_bespoke_toughness_on_continuous_fire_desc"}, {"en"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." for every "..COLORS_Numbers.ammo_var_rgb.." of magazine spent during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- toughness: +4%, ammo: 10%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr077_desc_ext_fr",
				{"loc_trait_bespoke_toughness_on_continuous_fire_desc"}, {"fr"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour chaque "..COLORS_Numbers.ammo_var_rgb.." du chargeur utilisé en tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Вдохновляющий обстрел -- руоф Вдохновляющий натиск
			create_template("weap_wbr077_desc_ext_ru",
				{"loc_trait_bespoke_toughness_on_continuous_fire_desc"}, {"ru"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." за каждые "..COLORS_Numbers.ammo_var_rgb.." магазина, потраченных во время непрерывной стрельбы. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 振奮彈幕 +]--
			-- 撕裂者自動手槍, 矛頭爆矢槍, 槍托自動槍, 淨化噴火器, 戰鬥霰彈槍, 雙鏈重型機槍, 撕裂槍 -- 1% | 2% | 3% | 4% (up to 20%)
			create_template("weap_wbr077_desc_ext_tw",
				{"loc_trait_bespoke_toughness_on_continuous_fire_desc"}, {"zh-tw"},
					loc_text("持續射擊時，每消耗 "..COLORS_Numbers.ammo_var_rgb.." 彈藥，\n恢復 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 鼓舞弹幕 +]--
			create_template("weap_wbr077_desc_ext_zh_cn",
				{"loc_trait_bespoke_toughness_on_continuous_fire_desc"}, {"zh-cn"},
					loc_text("连续射击期间，\n每消耗弹匣容量 "..COLORS_Numbers.ammo_var_rgb.." 的弹药，回复"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn..",\n每叠加 "..COLORS_Numbers.n_1_rgb.." 层，"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."回复效果 "..COLORS_Numbers.tghns_var_rgb.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ GHOST +]--
		-- Infantry Lasguns, Laspistols, Vigilant Autoguns -- 0.6 | 0.8 | 1 | 1.2
			create_template("weap_wbr078_desc_ext_en",
				{"loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot_desc"}, {"en"},
					loc_text("Immune to Ranged Attacks for "..COLORS_Numbers.time_var_rgb.." seconds on "..COLORS_KWords.Weakspothit_rgb..".")), -- time: 1.2 -- colors
			--[+ French +]--
			create_template("weap_wbr078_desc_ext_fr",
				{"loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot_desc"}, {"fr"},
					loc_text("Immunité contre les attaques à distance pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr..".")),
			--[+ Russian +]-- Призрак
			create_template("weap_wbr078_desc_ext_ru",
				{"loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot_desc"}, {"ru"},
					loc_text("Иммунитет к дальнобойным атакам на "..COLORS_Numbers.time_var_rgb.." секунды при выстрелах в "..COLORS_KWords_ru.Weakspot_rgb_ru..".")),
			--[+ Traditional Chinese - 幽靈 +]--
			-- 步兵雷射槍, 重型雷射手槍, 機動自動槍 -- 0.6 | 0.8 | 1 | 1.2
			create_template("weap_wbr078_desc_ext_tw",
				{"loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot_desc"}, {"zh-tw"},
					loc_text("命中 "..COLORS_KWords_tw.Weakspothits_rgb_tw.." 時，\n獲得對遠程攻擊的免疫效果，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 鬼魂 +]--
			create_template("weap_wbr078_desc_ext_zh_cn",
				{"loc_trait_bespoke_count_as_dodge_vs_ranged_on_weakspot_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时，\n闪避全部远程攻击，持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ SURGICAL +]--
		-- Boltgun, Kickback, Vigilant Autoguns -- 0.35s | 0.3s | 0.25s | 0.2s
		-- Stub Revolvers, Bolt Pistol, Helbore Lasguns -- 0.45s | 0.4s | 0.35s | 0.3s
			create_template("weap_wbr079_desc_ext_en",
				{"loc_trait_bespoke_crit_chance_based_on_aim_time_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for every "..COLORS_Numbers.time_var_rgb.." seconds while aiming. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. Discharges all Stacks upon firing.")), -- crit_chance: +10%, time: 0.2, stacks: 10 -- colors second->seconds
			--[+ French +]--
			create_template("weap_wbr079_desc_ext_fr",
				{"loc_trait_bespoke_crit_chance_based_on_aim_time_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_fr.Crit_chance_rgb_fr.." chaque fois de vous passez "..COLORS_Numbers.time_var_rgb.." secondes à viser. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. Tous les cumuls sont déchargés lorsque vous tirez.")),
			--[+ Russian +]-- Снайперская точность -- руоф Зоркость
			create_template("weap_wbr079_desc_ext_ru",
				{"loc_trait_bespoke_crit_chance_based_on_aim_time_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." каждые "..COLORS_Numbers.time_var_rgb.." секунды пока вы целитесь во врагов. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз. Все заряды сбрасываются при стрельбе.")),
			--[+ Traditional Chinese - 精確打擊 +]--
			-- 矛頭爆矢槍, 反衝者, 機動自動槍 -- 0.35s | 0.3s | 0.25s | 0.2s
			-- 快拔左輪手槍, 爆彈手槍, 冥潮雷射槍 -- 0.45s | 0.4s | 0.35s | 0.3s
			create_template("weap_wbr079_desc_ext_tw",
				{"loc_trait_bespoke_crit_chance_based_on_aim_time_desc"}, {"zh-tw"},
					loc_text("持續瞄準時，\n每 "..COLORS_Numbers.time_var_rgb.." 秒 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層，射擊後將重置所有層數。")),
			--[+ Simplified Chinese - 外科手术 +]--
			create_template("weap_wbr079_desc_ext_zh_cn",
				{"loc_trait_bespoke_crit_chance_based_on_aim_time_desc"}, {"zh-cn"},
					loc_text("瞄准期间，每 "..COLORS_Numbers.time_var_rgb.." 秒 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层，射击后清空所有层数。")),

		--[+ CRUCIAN ROULETTE +]--
		-- Stub Revolvers -- 4.5% | 5% | 5.5% | 6%
		-- Vigilant Autoguns -- 0.45% | 0.5% | 0.55% | 0.6%
			create_template("weap_wbr080_desc_ext_en",
				{"loc_trait_bespoke_crit_chance_based_on_ammo_left_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for each expended round in your weapon. Resets on reload.")), -- crit_chance: +0.6% -- colors
			--[+ French +]--
			create_template("weap_wbr080_desc_ext_fr",
				{"loc_trait_bespoke_crit_chance_based_on_ammo_left_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pour chaque munition utilisée dans votre arme. Se réinitialise lorsque vous rechargez.")),
			--[+ Russian +]-- Круцианская рулетка
			create_template("weap_wbr080_desc_ext_ru",
				{"loc_trait_bespoke_crit_chance_based_on_ammo_left_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." за каждый израсходованный патрон в вашем оружии. Сбрасывается при перезарядке.")),
			--[+ Traditional Chinese - 克魯錫安輪盤 +]--
			-- 快拔左輪手槍 -- 4.5% | 5% | 5.5% | 6%
			-- 機動自動槍 -- 0.45% | 0.5% | 0.55% | 0.6%
			create_template("weap_wbr080_desc_ext_tw",
				{"loc_trait_bespoke_crit_chance_based_on_ammo_left_desc"}, {"zh-tw"},
					loc_text("每消耗一發彈藥 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."。\n在重新裝填時重置效果。")),
			--[+ Simplified Chinese - 轮盘赌 +]--
			create_template("weap_wbr080_desc_ext_zh_cn",
				{"loc_trait_bespoke_crit_chance_based_on_ammo_left_desc"}, {"zh-cn"},
					loc_text("弹匣每缺失一枚弹药 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。")),

		--[+ DEADLY ACCURATE +]--
		-- Bolt Pistol, Infantry Lasguns, Vigilant Autoguns -- 70% | 80% | 90% | 100%
			create_template("weap_wbr081_desc_ext_en",
				{"loc_trait_bespoke_crit_weakspot_finesse_desc"}, {"en"},
					loc_text(COLORS_Numbers.critwkspdmg_var_rgb.." "..COLORS_KWords.Crit_rgb.." "..COLORS_KWords.Weakspot_dmg_rgb..".")), -- crit_weakspot_damage: +100% -- colors
			--[+ French +]--
			create_template("weap_wbr081_desc_ext_fr",
				{"loc_trait_bespoke_crit_weakspot_finesse_desc"}, {"fr"},
					loc_text(COLORS_Numbers.critwkspdmg_var_rgb.." de "..COLORS_KWords_fr.Crit_dmg_r_rgb_fr.." sur un "..COLORS_KWords_fr.Weakspothit_rgb_fr..".")),
			--[+ Russian +]-- Смертоностная точность
			create_template("weap_wbr081_desc_ext_ru",
				{"loc_trait_bespoke_crit_weakspot_finesse_desc"}, {"ru"},
					loc_text(COLORS_Numbers.critwkspdmg_var_rgb.." к "..COLORS_KWords_ru.Crit_rgb_ru.." "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru..".")),
			--[+ Traditional Chinese - 致命精準 +]--
			-- 爆彈手槍, 步兵雷射槍, 機動自動槍 -- 70% | 80% | 90% | 100%
			create_template("weap_wbr081_desc_ext_tw",
				{"loc_trait_bespoke_crit_weakspot_finesse_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Crit_rgb_tw.." 時 "..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.." "..COLORS_Numbers.critwkspdmg_var_rgb.."。")),
			--[+ Simplified Chinese - 致命精准 +]--
			create_template("weap_wbr081_desc_ext_zh_cn",
				{"loc_trait_bespoke_crit_weakspot_finesse_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.critwkspdmg_var_rgb.." "..COLORS_KWords_zh_cn.Crit_rgb_zh_cn..""..COLORS_KWords_zh_cn.Weakspot_dmg_rgb_zh_cn.."。")),

		--[+ NO RESPITE +]--
		-- Combat Shotguns, Helbore Lasguns, Infantry Lasguns, Vigilant Autoguns -- 14% | 16% | 18% | 20% (up to +140%)
			create_template("weap_wbr082_desc_ext_en",
				{"loc_trait_bespoke_stagger_count_bonus_damage_desc"}, {"en"},
					loc_text("Up to "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." on Hit to "..COLORS_KWords.Staggered_rgb.." Enemy. The more powerful the effect on the enemy, the more "..COLORS_KWords.Damage_rgb.." they receive.")), -- damage: +20% -- rewrite -- colors
			--[+ French +]--
			create_template("weap_wbr082_desc_ext_fr",
				{"loc_trait_bespoke_stagger_count_bonus_damage_desc"}, {"fr"},
					loc_text("Jusqu'à "..COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." lors d'un coup sur un ennemi qui "..COLORS_KWords_fr.Staggered_rgb_fr..". Le plus l'ennemie "..COLORS_KWords_fr.Staggered_rgb_fr.." le plus il reçoit de "..COLORS_KWords_fr.Damage_rgb_fr..".")),
			--[+ Russian +]-- Без передышки -- руоф Нет отдыху
			create_template("weap_wbr082_desc_ext_ru",
				{"loc_trait_bespoke_stagger_count_bonus_damage_desc"}, {"ru"},
					loc_text("До "..COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." при ударе по "..COLORS_KWords_ru.Stuns_rgb_ru.." врагам. Чем сильнее эффект на противнике, тем большую прибавку к "..COLORS_KWords_ru.Damage_rgb_ru.." вы получаете против них.")),
			--[+ Traditional Chinese - 刻不容緩 +]--
			-- 戰鬥霰彈槍, 冥潮雷射槍, 步兵雷射槍, 機動自動槍 -- 14% | 16% | 18% | 20% (up to +140%)
			create_template("weap_wbr082_desc_ext_tw",
				{"loc_trait_bespoke_stagger_count_bonus_damage_desc"}, {"zh-tw"},
					loc_text("攻擊 "..COLORS_KWords_tw.Stuns_rgb_tw.." 敵人 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."。\n依據效果強度，你對其 "..COLORS_KWords_tw.Damage_rgb_tw.." 越高。")),
			--[+ Simplified Chinese - 不容喘息 +]--
			create_template("weap_wbr082_desc_ext_zh_cn",
				{"loc_trait_bespoke_stagger_count_bonus_damage_desc"}, {"zh-cn"},
					loc_text("命中"..COLORS_KWords_zh_cn.Staggered_rgb_zh_cn.."敌人时，\n随敌人"..COLORS_KWords_zh_cn.Stagger_rgb_zh_cn.."程度增长叠加层数，\n每层 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。最多叠加"..COLORS_Numbers.n_7_rgb.." 层。")),

		--[+ OPENING SALVO +]--
		-- Infantry Lasguns, Vigilant Autoguns -- 14% | 16% | 18% | 20%
			create_template("weap_wbr083_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_on_first_shot_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." on Salvo's First shot."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +20% -- colors
			--[+ French +]--
			create_template("weap_wbr083_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_on_first_shot_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." lors du premier tir d'une salve."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Первый выстрел залпа  -- руоф Открывающий залп
			create_template("weap_wbr083_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_on_first_shot_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." для первого выстрела залпа."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 開啟齊射 +]--
			-- 步兵雷射槍, 機動自動槍 -- 14% | 16% | 18% | 20%
			create_template("weap_wbr083_desc_ext_tw",
				{"loc_trait_bespoke_power_bonus_on_first_shot_desc"}, {"zh-tw"},
					loc_text("齊射的第一發射擊 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 开场白 +]--
			create_template("weap_wbr083_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_on_first_shot_desc"}, {"zh-cn"},
					loc_text("齐射的第一发射击 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ HEADHUNTER +]--
		-- Infantry Lasguns, Vigilant Autoguns -- 14% | 16% | 18% | 20% (up to +100%)
		-- Recon Lasguns -- 3.5% | 4% | 4.5% | 5% (up to +20%)
			create_template("weap_wbr084_desc_ext_en",
				{"loc_trait_bespoke_weakspot_stacking_crit_chance_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." on "..COLORS_KWords.Weakspothit_rgb.." until your next "..COLORS_KWords.Crit_hit_rgb..". Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- crit_chance: +20%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr084_desc_ext_fr",
				{"loc_trait_bespoke_weakspot_stacking_crit_chance_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_fr.Crit_chance_rgb_fr.." sur un "..COLORS_KWords_fr.Weakspothit_rgb_fr.." jusqu'à votre prochain "..COLORS_KWords_fr.Crit_hit_rgb_fr..". Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Охотник за головами
			create_template("weap_wbr084_desc_ext_ru",
				{"loc_trait_bespoke_weakspot_stacking_crit_chance_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." при выстрелах в "..COLORS_KWords_ru.Weakspot_rgb_ru..". Расходуется при следующем "..COLORS_KWords_ru.Crit_chance_r_rgb_ru..". Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 獵頭者 +]--
			-- 步兵雷射槍, 機動自動槍 -- 14% | 16% | 18% | 20% (up to +100%)
			-- 偵查雷射槍 -- 3.5% | 4% | 4.5% | 5% (up to +20%)
			create_template("weap_wbr084_desc_ext_tw",
				{"loc_trait_bespoke_weakspot_stacking_crit_chance_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Weakspothits_rgb_tw.." "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n在下一次 "..COLORS_KWords_tw.Crit_rgb_tw.." 時消耗一層，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 猎颅者 +]--
			create_template("weap_wbr084_desc_ext_zh_cn",
				{"loc_trait_bespoke_weakspot_stacking_crit_chance_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层，\n"..COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."后清空所有叠加层数。")),

		--[+ BETWEEN THE EYES +]--
		-- Infantry Lasguns, Laspistols, Vigilant Autoguns -- 2.4 | 2.8 | 3.2 | 3.6
			create_template("weap_wbr085_desc_ext_en",
				{"loc_trait_bespoke_suppression_negation_on_weakspot_desc"}, {"en"},
					loc_text("Gain Suppression Immunity for "..COLORS_Numbers.time_var_rgb.." seconds on "..COLORS_KWords.Weakspothit_rgb..".")), -- time: 3.6 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbr085_desc_ext_fr",
				{"loc_trait_bespoke_suppression_negation_on_weakspot_desc"}, {"fr"},
					loc_text("Gagnez une immunité à la suppression pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr..".")),
			--[+ Russian +]-- Промеж глаз
			create_template("weap_wbr085_desc_ext_ru",
				{"loc_trait_bespoke_suppression_negation_on_weakspot_desc"}, {"ru"},
					loc_text("Вы получаете иммунитет к подавлению на "..COLORS_Numbers.time_var_rgb.." секунды при выстрелах в "..COLORS_KWords_ru.Weakspot_rgb_ru..".")),
			--[+ Traditional Chinese - 正中眉心 +]--
			-- 步兵雷射槍, 重型雷射手槍, 機動自動槍 -- 2.4 | 2.8 | 3.2 | 3.6
			create_template("weap_wbr085_desc_ext_tw",
				{"loc_trait_bespoke_suppression_negation_on_weakspot_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Weakspothits_rgb_tw.." 免疫壓制效果，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 正中眉心 +]--
			create_template("weap_wbr085_desc_ext_zh_cn",
				{"loc_trait_bespoke_suppression_negation_on_weakspot_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时免疫压制，持续"..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ BLAZE AWAY +]--
		-- Autopistol, Flamer, Heavy Stubbers, Ripper Guns, Grenadier Gauntlet, Inferno Staff, Kickback, Plasma Gun, Rumbler -- 5% | 6% | 7% | 8% (up to +40%)
			create_template("weap_wbr086_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_on_continuous_fire_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for every "..COLORS_Numbers.ammo_var_rgb.." of magazine spent during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +8%, ammo: 10%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr086_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_on_continuous_fire_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pour chaque "..COLORS_Numbers.ammo_var_rgb.."  du chargeur utilisé en tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Стрельба без устали -- руоф Энтузиазм
			create_template("weap_wbr086_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_on_continuous_fire_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." за каждые "..COLORS_Numbers.ammo_var_rgb.." магазина, потраченных во время непрерывной стрельбы. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 連續發射 +]--
			-- 撕裂者自動手槍, 淨化噴火器, 雙鏈重型機槍, 撕裂槍, 擲彈兵臂鎧, 烈焰力場法杖, 反衝者, 電漿槍, 震盪槍 -- 5% | 6% | 7% | 8% (up to +40%)
			create_template("weap_wbr086_desc_ext_tw",
				{"loc_trait_bespoke_power_bonus_on_continuous_fire_desc"}, {"zh-tw"},
					loc_text("持續射擊時，每消耗 "..COLORS_Numbers.ammo_var_rgb.." 彈藥，\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 连续射击 +]--
			create_template("weap_wbr086_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_on_continuous_fire_desc"}, {"zh-cn"},
					loc_text("连续射击期间，\n每消耗弹匣容量 "..COLORS_Numbers.ammo_var_rgb.." 的弹药，\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ POWDERBURN +]--
		-- Autopistol -- 14% & 28% & -28% | 16% & 32% & -32% | 18% & 36% & -36% | 20% & 40% & -40%
			create_template("weap_wbr087_desc_ext_en",
				{"loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." against Suppressed Enemies, "..COLORS_Numbers.spprsn_var_rgb.." Suppression and "..COLORS_Numbers.recoil_red_var_rgb.." Recoil on at a distance of up to "..COLORS_Numbers.n_12_5_rgb.." meters.")), -- damage: +20%, suppression: +40%, recoil_reduction: -40% -- colors
			--[+ French +]--
			create_template("weap_wbr087_desc_ext_fr",
				{"loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemies subissant Suppression, "..COLORS_Numbers.spprsn_var_rgb.." de suppression et "..COLORS_Numbers.recoil_red_var_rgb.." de recul jusqu'à une distance de "..COLORS_Numbers.n_12_5_rgb.." mètres.")),
			--[+ Russian +]-- Пороховой ожог
			create_template("weap_wbr087_desc_ext_ru",
				{"loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." против подавленных врагов, "..COLORS_Numbers.spprsn_var_rgb.." к подавлению и "..COLORS_Numbers.recoil_red_var_rgb.." к отдаче на дистанции до "..COLORS_Numbers.n_12_5_rgb.." метров.")),
			--[+ Traditional Chinese - 火藥灼傷 +]--
			-- 撕裂者自動手槍 -- 14% & 28% & -28% | 16% & 32% & -32% | 18% & 36% & -36% | 20% & 40% & -40%
			create_template("weap_wbr087_desc_ext_tw",
				{"loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.n_12_5_rgb.." 公尺內，\n對被壓制的敵人 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."，\n"..COLORS_Numbers.spprsn_var_rgb.." 壓制強度，降低 "..COLORS_Numbers.recoil_red_var_rgb.." 後座力。")),
			--[+ Simplified Chinese - 火药燃烧 +]--
			create_template("weap_wbr087_desc_ext_zh_cn",
				{"loc_trait_bespoke_recoil_reduction_and_suppression_increase_on_close_kills_desc"}, {"zh-cn"},
					loc_text("对被压制敌人 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。\n击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时\n"..COLORS_Numbers.spprsn_var_rgb.." 压制效果，同时 "..COLORS_Numbers.recoil_red_var_rgb.." 后坐力。")),

		--[+ CAVALCADE +]--
		-- Autopistol, Boltgun, Ripper Guns -- 3.5% | 4% | 4.5% | 5% (up to +25%)
			create_template("weap_wbr088_desc_ext_en",
				{"loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for every "..COLORS_Numbers.ammo_var_rgb.." of magazine spent during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- crit_chance: +20%, ammo: 10%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr088_desc_ext_fr",
				{"loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pour chaque "..COLORS_Numbers.ammo_var_rgb.."  du chargeur utilisé en tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Кавалькада
			create_template("weap_wbr088_desc_ext_ru",
				{"loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." за каждые "..COLORS_Numbers.ammo_var_rgb.." магазина, потраченных во время непрерывной стрельбы. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 接連不斷 +]--
			-- 撕裂者自動手槍, 矛頭爆矢槍, 撕裂槍 -- 3.5% | 4% | 4.5% | 5% (up to +25%)
			create_template("weap_wbr088_desc_ext_tw",
				{"loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire_desc"}, {"zh-tw"},
					loc_text("持續射擊時，每消耗 "..COLORS_Numbers.ammo_var_rgb.." 彈藥，\n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 列队行进 +]--
			create_template("weap_wbr088_desc_ext_zh_cn",
				{"loc_trait_bespoke_stacking_crit_bonus_on_continuous_fire_desc"}, {"zh-cn"},
					loc_text("连续射击期间，\n每消耗弹匣容量 "..COLORS_Numbers.ammo_var_rgb.."的弹药，\n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ PINNING FIRE +]--
		-- Autopistol, Boltgun -- 4.25% | 4.5% | 4.75% | 5% (up to +25%)
			create_template("weap_wbr089_desc_ext_en",
				{"loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for every Enemy you "..COLORS_KWords.Stagger_rgb..". Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +8%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr089_desc_ext_fr",
				{"loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pour chaque ennemie que vous faites "..COLORS_KWords_fr.Staggering_rgb_fr..". Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Подавляющий огонь -- руоф Схватывающий огонь
			create_template("weap_wbr089_desc_ext_ru",
				{"loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." за каждого "..COLORS_KWords_ru.Stun_rgb_ru.." вами врага. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 鉗制射擊 +]--
			-- 撕裂者自動手槍, 矛頭爆矢槍 -- 4.25% | 4.5% | 4.75% | 5% (up to +25%)
			create_template("weap_wbr089_desc_ext_tw",
				{"loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies_desc"}, {"zh-tw"},
					loc_text("使敵人 "..COLORS_KWords_tw.Stun_rgb_tw.." 時 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 火力压制 +]--
			create_template("weap_wbr089_desc_ext_zh_cn",
				{"loc_trait_bespoke_stacking_power_bonus_on_staggering_enemies_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Stagger_rgb_zh_cn.."敌人时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ RUN 'N' GUN - RUN AND GUN +]--
		-- Bolt Pistol, Electrokinetic Staff, Inferno Staff, Kickback, Stub Revolvers, Voidblast Staff, Voidstrike Staff -- 6% | 9% | 12% | 15% | -30%
		-- Double-Barrel Shotgun -- 6% | 9% | 12% | 15% | -10%
			create_template("weap_wbr090_desc_ext_en",
				{"loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats_desc"}, {"en"},
					loc_text("You can Hipfire with this weapon while Sprinting. "..COLORS_Numbers.dmgnr_var_rgb.." Close "..COLORS_KWords.Damage_rgb.." while Sprinting. Also reduces weapon Spread at all times by "..COLORS_Numbers.weapsprd_var_rgb..".{#color(105, 105, 105)}(<< vanilla typo, I can’t fix it.){#reset()}")), -- damage_near: +15%, weapon_spread: 30% -- colors
			--[+ French +]--
			create_template("weap_wbr090_desc_ext_fr",
				{"loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats_desc"}, {"fr"},
					loc_text("Vous pouvez tirer à l'aveugle avec cette arme en courant. "..COLORS_Numbers.dmgnr_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." rapprochés en courant. Réduit également l'angle de tir des armes de "..COLORS_Numbers.weapsprd_var_rgb.." en toute circonstance.")),
			--[+ Russian +]-- Стреляй и беги
			create_template("weap_wbr090_desc_ext_ru",
				{"loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats_desc"}, {"ru"},
					loc_text("Вы можете с этим оружием вести огонь от бедра на бегу. "..COLORS_Numbers.dmgnr_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." на ближней дистанции пока вы бежите. Также уменьшается разброс оружия на "..COLORS_Numbers.weapsprd_var_rgb..".")),
			--[+ Traditional Chinese - 連跑帶打 +]--
			-- 爆彈手槍, 電流力場法杖, 烈焰力場法杖, 反衝者, 快拔左輪手槍, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 6% | 9% | 12% | 15% | -30%
			-- 雙管霰彈槍 -- 6% | 9% | 12% | 15% | -10%
			create_template("weap_wbr090_desc_ext_tw",
				{"loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats_desc"}, {"zh-tw"},
					loc_text("衝刺時可以腰射。\n衝刺期間近距離傷害 "..COLORS_Numbers.dmgnr_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."，\n並 "..COLORS_Numbers.weapsprd_var_rgb.." 武器散布。")),
			--[+ Simplified Chinese - 跑步射击 +]--
			create_template("weap_wbr090_desc_ext_zh_cn",
				{"loc_trait_bespoke_allow_hipfire_while_sprinting_and_bonus_stats_desc"}, {"zh-cn"},
					loc_text("武器散布 "..COLORS_Numbers.weapsprd_var_rgb.."。疾跑时可以腰射。\n对 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人 "..COLORS_Numbers.dmgnr_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。{#color(255, 35, 5)}\n（显示BUG：武器散布数值为 -X%，\n伤害数值为 +X%。）{#reset()")),

		--[+ PUNCTURE +]--
		-- Boltgun, Bolt Pistol -- 1 | 2 | 3 | 4
			create_template("weap_wbr091_desc_ext_en",
				{"loc_trait_bespoke_bleed_on_ranged_desc"}, {"en"},
					loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_KWords.Bleed_rgb.." to enemies on Ranged hits.")), -- stacks: 4 -- colors
			--[+ French +]--
			create_template("weap_wbr091_desc_ext_fr",
				{"loc_trait_bespoke_bleed_on_ranged_desc"}, {"fr"},
					loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." Cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." aux ennemis sur les coups à distance.")),
			--[+ Russian +]-- Прокол
			create_template("weap_wbr091_desc_ext_ru",
				{"loc_trait_bespoke_bleed_on_ranged_desc"}, {"ru"},
					loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." заряда "..COLORS_KWords_ru.Bleed_rgb_ru.." накладывается на врагов при дальнобойных атаках.")),
			--[+ Traditional Chinese - 出血穿透 +]--
			-- 矛頭爆矢槍, 爆彈手槍  -- 1 | 2 | 3 | 4
			create_template("weap_wbr091_desc_ext_tw",
				{"loc_trait_bespoke_bleed_on_ranged_desc"}, {"zh-tw"},
					loc_text("遠程攻擊命中敵人時，使其獲得 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.."。\n上限 "..COLORS_Numbers.n_16_rgb.." 層。")),
			--[+ Simplified Chinese - 刺穿 +]--
			create_template("weap_wbr091_desc_ext_zh_cn",
				{"loc_trait_bespoke_bleed_on_ranged_desc"}, {"zh-cn"},
					loc_text("远程攻击命中时 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_16_rgb.." 层。")),
	
		--[+ LETHAL PROXIMITY +]--
		-- Bolt Pistol -- 10% | 15% | 20% | 25%
			create_template("weap_wbr092_desc_ext_en",
				{"loc_trait_bespoke_close_explosion_desc"}, {"en"},
					loc_text(COLORS_Numbers.radius_var_rgb.." Explosion Radius. Point blank shots cause an Explosion.")), -- radius: +25% -- colors
			--[+ French +]--
			create_template("weap_wbr092_desc_ext_fr",
				{"loc_trait_bespoke_close_explosion_desc"}, {"fr"},
					loc_text("Les tirs à bout portant provoquent une explosion. Le rayon d'explosion augmente de "..COLORS_Numbers.radius_var_rgb..".")),
			--[+ Russian +]-- Смертельное сближение -- руоф Смертельная близость
			create_template("weap_wbr092_desc_ext_ru",
				{"loc_trait_bespoke_close_explosion_desc"}, {"ru"},
					loc_text(COLORS_Numbers.radius_var_rgb.." к радиусу взрыва. Выстрелы в упор вызывают взрыв.")),
			--[+ Traditional Chinese - 致命零距離 +]--
			-- 爆彈手槍 -- 10% | 15% | 20% | 25%
			create_template("weap_wbr092_desc_ext_tw",
				{"loc_trait_bespoke_close_explosion_desc"}, {"zh-tw"},
					loc_text("爆炸半徑增加 "..COLORS_Numbers.radius_var_rgb.." 。\n"..COLORS_Numbers.n_12_5_rgb.." 公尺內射擊會引發爆炸。")),
			--[+ Simplified Chinese - 致命距离 +]--
			create_template("weap_wbr092_desc_ext_zh_cn",
				{"loc_trait_bespoke_close_explosion_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.radius_var_rgb.." 爆炸范围。\n"..COLORS_Numbers.n_5_rgb.." 米内射击也会引发爆炸。")),

		--[+ POINT BLANK +]--
		-- Bolt Pistol -- 14% | 16% | 18% | 20% | 3.5s
		-- Stub Revolvers -- 14% | 16% | 18% | 20% | 2.5s
			create_template("weap_wbr093_desc_ext_en",
				{"loc_trait_bespoke_crit_chance_bonus_on_melee_kills_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." Ranged "..COLORS_KWords.Crit_chance_rgb.." after Melee Kill for "..COLORS_Numbers.time_var_rgb.." seconds.")), -- crit_chance: +20%, time: 3.5 -- colors
			--[+ French +]--
			create_template("weap_wbr093_desc_ext_fr",
				{"loc_trait_bespoke_crit_chance_bonus_on_melee_kills_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." à distance après une élimination avec une arme de mélée pendant "..COLORS_Numbers.time_var_rgb.." secondes.")),
			--[+ Russian +]-- В упор
			create_template("weap_wbr093_desc_ext_ru",
				{"loc_trait_bespoke_crit_chance_bonus_on_melee_kills_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." дальнобойным атакам на "..COLORS_Numbers.time_var_rgb.." секунды после убийства в ближнем бою.")),
			--[+ Traditional Chinese - 近身平射 +]--
			-- 爆彈手槍 -- 14% | 16% | 18% | 20% | 3.5s
			-- 快拔左輪手槍 -- 14% | 16% | 18% | 20% | 2.5s
			create_template("weap_wbr093_desc_ext_tw",
				{"loc_trait_bespoke_crit_chance_bonus_on_melee_kills_desc"}, {"zh-tw"},
					loc_text("近戰擊殺後，遠程攻擊 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 近身射击 +]--
			create_template("weap_wbr093_desc_ext_zh_cn",
				{"loc_trait_bespoke_crit_chance_bonus_on_melee_kills_desc"}, {"zh-cn"},
					loc_text("近战击杀时 \n"..COLORS_Numbers.crit_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ EXECUTION +]--
		-- Bolt Pistol -- 5% |10% | 15% | 20%
			create_template("weap_wbr094_desc_ext_en",
				{"loc_trait_bespoke_damage_vs_stagger_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmgvsstgr_var_rgb.." "..COLORS_KWords.Damage_rgb.." Bonus vs "..COLORS_KWords.Staggered_rgb.." enemies.")), -- vs_stagger: 20% -- colors
			--[+ French +]--
			create_template("weap_wbr094_desc_ext_fr",
				{"loc_trait_bespoke_damage_vs_stagger_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmgvsstgr_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." Bonus contre les ennemis qui "..COLORS_KWords_fr.Staggered_rgb_fr..".")),
			--[+ Russian +]-- Казнь
			create_template("weap_wbr094_desc_ext_ru",
				{"loc_trait_bespoke_damage_vs_stagger_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmgvsstgr_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." против "..COLORS_KWords_ru.Staggered_rgb_ru.." врагов.")),
			--[+ Traditional Chinese - 處決 +]--
			-- 爆彈手槍 -- 5% |10% | 15% | 20%
			create_template("weap_wbr094_desc_ext_tw",
				{"loc_trait_bespoke_damage_vs_stagger_desc"}, {"zh-tw"},
					loc_text("攻擊 "..COLORS_KWords_tw.Staggered_rgb_tw.." 敵人 "..COLORS_Numbers.dmgvsstgr_var_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.."。")),
			--[+ Simplified Chinese - 处决 +]--
			create_template("weap_wbr094_desc_ext_zh_cn",
				{"loc_trait_bespoke_damage_vs_stagger_desc"}, {"zh-cn"},
					loc_text("对"..COLORS_KWords_zh_cn.Staggered_rgb_zh_cn.."敌人 "..COLORS_Numbers.dmgvsstgr_var_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。")),

		--[+ Gloryhunter +]--
		-- Boltgun -- 10% | 12% | 14% | 16%
		-- Plasma Gun -- 17.5% | 20% | 22.5% | 25%
		-- Bolt Pistol, Stub Revolvers -- 18% | 22% | 26% | 30%
		-- Grenadier Gauntlet -- 20% | 25% | 30% | 35%
			create_template("weap_wbr095_desc_ext_en",
				{"loc_trait_bespoke_toughness_on_elite_kills_desc"}, {"en"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." on Elite Kill.")), -- toughness: +30% -- colors
			--[+ French +]--
			create_template("weap_wbr095_desc_ext_fr",
				{"loc_trait_bespoke_toughness_on_elite_kills_desc"}, {"fr"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une élimination d'élite.")),
			--[+ Russian +]-- Охотник за славой
			create_template("weap_wbr095_desc_ext_ru",
				{"loc_trait_bespoke_toughness_on_elite_kills_desc"}, {"ru"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." при убийстве Элитного врага.")),
			--[+ Traditional Chinese - 榮耀獵手 +]--
			-- 矛頭爆矢槍 -- 10% | 12% | 14% | 16%
			-- 電漿槍 -- 17.5% | 20% | 22.5% | 25%
			-- 爆彈手槍, 快拔左輪手槍 -- 18% | 22% | 26% | 30%
			-- 擲彈兵臂鎧 -- 20% | 25% | 30% | 35%
			create_template("weap_wbr095_desc_ext_tw",
				{"loc_trait_bespoke_toughness_on_elite_kills_desc"}, {"zh-tw"},
					loc_text("擊殺精英敵人 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."。")),
			--[+ Simplified Chinese - 荣耀猎人 +]--
			create_template("weap_wbr095_desc_ext_zh_cn",
				{"loc_trait_bespoke_toughness_on_elite_kills_desc"}, {"zh-cn"},
					loc_text("击杀精英敌人时"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。")),

		--[+ SURGE +]--
		-- Electrokinetic Staff, Voidblast Staff, Voidstrike Staff -- 2% | 3% | 4% | 5%
			create_template("weap_wbr096_desc_ext_en",
				{"loc_trait_bespoke_double_shot_on_primary_crit_and_crit_chance_desc","loc_trait_bespoke_double_shot_on_crit_and_crit_chance_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." Ranged "..COLORS_KWords.Crit_chance_rgb..".\n"..COLORS_Numbers.value_var_rgb.." Shots on Primary "..COLORS_KWords.Crit_hit_rgb..".")), -- crit_chance: +5%, value: 2 -- rewrite -- colors
			--[+ French +]--
			create_template("weap_wbr096_desc_ext_fr",
				{"loc_trait_bespoke_double_shot_on_primary_crit_and_crit_chance_desc","loc_trait_bespoke_double_shot_on_crit_and_crit_chance_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." à distance.\n"..COLORS_Numbers.value_var_rgb.." tirs lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." de l'attaque principale (fonctionne sur l'attaque secondaire du Bâton de force \"Assaut du vide\").")),
			--[+ Russian +]-- Энергетический всплеск -- руоф Импульс
			create_template("weap_wbr096_desc_ext_ru",
				{"loc_trait_bespoke_double_shot_on_primary_crit_and_crit_chance_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." в дальнем бою. Вы выпускаете "..COLORS_Numbers.value_var_rgb.." снаряда при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru.." основной атакой.")),
			--[+ Traditional Chinese - 湧動 +]--
			-- 電流力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖(無效) -- 2% | 3% | 4% | 5%
			-- The Voidstrike Staff not used in zh-tw.
			create_template("weap_wbr096_desc_ext_tw",
				{"loc_trait_bespoke_double_shot_on_primary_crit_and_crit_chance_desc"}, {"zh-tw"},
					loc_text("遠程攻擊 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.." 。\n當主攻擊 "..COLORS_KWords_tw.Crit_rgb_tw.." 會自動發射 "..COLORS_Numbers.value_var_rgb.." 次。")),
			--[+ Simplified Chinese - 激涌 +]--
			create_template("weap_wbr096_desc_ext_zh_cn",
				{"loc_trait_bespoke_double_shot_on_primary_crit_and_crit_chance_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.crit_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。\n主要攻击"..COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时，发射 "..COLORS_Numbers.value_var_rgb.." 枚射弹。")),

		--[+ WARP FLURRY +]-- 
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff -- 5.5% | 6.5% | 7.5% | 8.5% (up to 25.5%)
			create_template("weap_wbr097_desc_ext_en",
				{"loc_trait_bespoke_faster_charge_on_chained_secondary_attacks_desc"}, {"en"},
					loc_text(COLORS_Numbers.chrgtime_var_rgb.." Charge Time on Chained Secondary Attack. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- charge_time: -8.5%, stacks: 3 -- colors
			--[+ French +]--
			create_template("weap_wbr097_desc_ext_fr",
				{"loc_trait_bespoke_faster_charge_on_chained_secondary_attacks_desc"}, {"fr"},
					loc_text(COLORS_Numbers.chrgtime_var_rgb.." de temps de charge lors d'une attaque secondaire. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Варп-шквал
			create_template("weap_wbr097_desc_ext_ru",
				{"loc_trait_bespoke_faster_charge_on_chained_secondary_attacks_desc"}, {"ru"},
					loc_text(COLORS_Numbers.chrgtime_var_rgb.." от времени заряжания вторичной атаки в серии ударов. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 亞空間亂舞 +]--
			-- 電流力場法杖, 烈焰力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 5.5% | 6.5% | 7.5% | 8.5% (up to 25.5%)
			create_template("weap_wbr097_desc_ext_tw",
				{"loc_trait_bespoke_faster_charge_on_chained_secondary_attacks_desc"}, {"zh-tw"},
					loc_text("連續使用次要攻擊時，\n充能時間 "..COLORS_Numbers.chrgtime_var_rgb.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 亚空间骚动 +]--
			create_template("weap_wbr097_desc_ext_zh_cn",
				{"loc_trait_bespoke_faster_charge_on_chained_secondary_attacks_desc"}, {"zh-cn"},
					loc_text("连续进行次要攻击时 \n"..COLORS_Numbers.chrgtime_var_rgb.." 蓄力时间。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ WARP NEXUS +]--
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff -- 3.5% | 4% | 4.5% | 5% (up to +20%)
			create_template("weap_wbr098_desc_ext_en",
				{"loc_trait_bespoke_increased_crit_chance_scaled_on_peril_desc"}, {"en"},
					loc_text("Gain between "..COLORS_Numbers.crit_var_rgb.." and "..COLORS_Numbers.critchmax_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." based on current level of "..COLORS_KWords.Peril_rgb..".")), -- crit_chance: 5%, crit_chance_max: 20% -- colors
			--[+ French +]--
			create_template("weap_wbr098_desc_ext_fr",
				{"loc_trait_bespoke_increased_crit_chance_scaled_on_peril_desc"}, {"fr"},
					loc_text("Obtenez entre "..COLORS_Numbers.crit_var_rgb.." et "..COLORS_Numbers.critchmax_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." en fonction de votre niveau de "..COLORS_KWords_fr.Peril_rgb_fr.." actuel.")),
			--[+ Russian +]-- Связь с варпом -- руоф Варп-сектор
			create_template("weap_wbr098_desc_ext_ru",
				{"loc_trait_bespoke_increased_crit_chance_scaled_on_peril_desc"}, {"ru"},
					loc_text("Вы получаете от "..COLORS_Numbers.crit_var_rgb.." до "..COLORS_Numbers.critchmax_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." в зависимости от текущего уровня "..COLORS_KWords_ru.Peril_rgb_ru..".")),
			--[+ Traditional Chinese - 亞空間樞紐 +]--
			-- 電流力場法杖, 烈焰力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 3.5% | 4% | 4.5% | 5% (up to +20%)
			create_template("weap_wbr098_desc_ext_tw",
				{"loc_trait_bespoke_increased_crit_chance_scaled_on_peril_desc"}, {"zh-tw"},
					loc_text("根據當前的 "..COLORS_KWords_tw.Peril_rgb_tw.." ，\n增加 "..COLORS_Numbers.crit_var_rgb.." 至 "..COLORS_Numbers.critchmax_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.." 。")),
			--[+ Simplified Chinese - 亚空间枢纽 +]--
			create_template("weap_wbr098_desc_ext_zh_cn",
				{"loc_trait_bespoke_increased_crit_chance_scaled_on_peril_desc"}, {"zh-cn"},
					loc_text("随"..COLORS_KWords_zh_cn.Peril_rgb_zh_cn.."增长叠加层数，\n每增长 "..COLORS_Numbers.pc_20_rgb.."，"..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_4_rgb.." 层，最高 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmax_var_rgb.."。")),

		--[+ TRANSFER PERIL +]--
		-- Electrokinetic Staff, Voidblast Staff -- 7% | 8% | 9% | 10%
		-- Voidstrike Staff -- 6.5% | 7% | 7.5% | 8%
			create_template("weap_wbr099_desc_ext_en",
				{"loc_trait_bespoke_peril_vent_on_weakspot_hit_desc"}, {"en"},
					loc_text(COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords.Peril_rgb.." is quelled on "..COLORS_KWords.Weakspothit_rgb.."."..COLORS_KWords.Trauma_note_rgb)), -- warp_charge: 10% -- colors
			--[+ French +]--
			create_template("weap_wbr099_desc_ext_fr",
				{"loc_trait_bespoke_peril_vent_on_weakspot_hit_desc"}, {"fr"},
					loc_text(COLORS_Numbers.warpchrg_var_rgb.." de votre "..COLORS_KWords_fr.Peril_rgb_fr.." est dissipé lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr.."."..COLORS_KWords.Trauma_note_rgb)),
			--[+ Russian +]-- Перемещение опасности -- руоф Перемещение угрозы
			create_template("weap_wbr099_desc_ext_ru",
				{"loc_trait_bespoke_peril_vent_on_weakspot_hit_desc"}, {"ru"},
					loc_text(COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru.." подавляется при попадании в "..COLORS_KWords_ru.Weakspothit_rgb_ru.."."..COLORS_KWords_ru.Trauma_note_rgb_ru)),
			--[+ Traditional Chinese - 轉移反噬 +]--
			-- 電流力場法杖, 虛空爆破力場法杖 -- 7% | 8% | 9% | 10%
			create_template("weap_wbr099_desc_ext_tw",
				{"loc_trait_bespoke_peril_vent_on_weakspot_hit_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Weakspothits_rgb_tw.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_tw.Peril_rgb_tw.."。" .. COLORS_KWords_tw.Trauma_note_rgb_tw)),
			--[+ Simplified Chinese - 转移危机值 +]--
			create_template("weap_wbr099_desc_ext_zh_cn",
				{"loc_trait_bespoke_peril_vent_on_weakspot_hit_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时，平息 "..COLORS_Numbers.warpchrg_var_rgb.." "..COLORS_KWords_zh_cn.Peril_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Trauma_note_rgb_zh_cn)),

		--[+ RENDING SHOCKWAVE +]--
		-- Voidblast Staff -- 2 | 4 | 6 | 8
			create_template("weap_wbr000_desc_ext_en",
				{"loc_trait_bespoke_rend_armor_on_aoe_charge_desc"}, {"en"},
					loc_text("Target receives up to "..COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Brittleness_rgb..", scaling with charge time of Secondary Attack. Lasts "..COLORS_Numbers.time_var_rgb.." seconds. Max "..COLORS_Numbers.maxstks_var_rgb.." Stacks, up to "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords.Brtl_note_rgb)), -- stacks: 8, rending: 2.5%, time: 5, max_stacks: 16 -- rewrite -- s->seconds -- colors -- Note
			--[+ French +]--
			create_template("weap_wbr000_desc_ext_fr",
				{"loc_trait_bespoke_rend_armor_on_aoe_charge_desc"}, {"fr"},
					loc_text("La cible subit jusqu'à "..COLORS_Numbers.stacks_var_rgb.." cumuls de "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_fr.Brittleness_rgb_fr..", en fonction du temps de charge de l'attaque secondaire. Dure "..COLORS_Numbers.time_var_rgb.." secondes. "..COLORS_Numbers.maxstks_var_rgb.." cumuls maximum, pour un total de "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords_fr.Brtl_note_rgb_fr)),
			--[+ Russian +]-- Разрушительная волна
			create_template("weap_wbr000_desc_ext_ru",
				{"loc_trait_bespoke_rend_armor_on_aoe_charge_desc"}, {"ru"},
					loc_text("Цель получает до "..COLORS_Numbers.stacks_var_rgb.." зарядов по "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." в зависимости от времени зарядки вторичной атаки. Длится "..COLORS_Numbers.time_var_rgb.." секунд. Максимум "..COLORS_Numbers.maxstks_var_rgb.." зарядов, вплоть до "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords_ru.Brtl_note_rgb_ru)),
			--[+ Traditional Chinese - 撕扯震盪 +]--
			-- 虛空爆破力場法杖 -- 2 | 4 | 6 | 8
			create_template("weap_wbr000_desc_ext_tw",
				{"loc_trait_bespoke_rend_armor_on_aoe_charge_desc"}, {"zh-tw"},
					loc_text("根據次要攻擊的蓄力時間，\n使攻擊目標獲得 "..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.rending_var_rgb.." 的 "..COLORS_KWords_tw.Brittleness_rgb_tw.."，\n可持續 "..COLORS_Numbers.time_var_rgb.." 秒，上限 "..COLORS_Numbers.maxstks_var_rgb.." 層 "..COLORS_Numbers.pc_40_rgb.."。" .. COLORS_KWords_tw.Brtl_note_rgb_tw)),
			--[+ Simplified Chinese - 撕裂冲击波 +]--
			create_template("weap_wbr000_desc_ext_zh_cn",
				{"loc_trait_bespoke_rend_armor_on_aoe_charge_desc"}, {"zh-cn"},
					loc_text("随次要攻击蓄力时间提升效果，\n最多对目标施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."，\n持续"..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.maxstks_var_rgb.." 层，最高"..COLORS_Numbers.pc_40_rgb.."。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn)),

		--[+ FOCUSED CHANNELLING +]--
		-- Electrokinetic Staff, Inferno Staff, Voidblast Staff, Voidstrike Staff -- 20% | 30% | 40% | 50%
			create_template("weap_wbr001_desc_ext_en",
				{"loc_trait_bespoke_uninterruptable_while_charging_and_movement_desc"}, {"en"},
					loc_text("Your Secondary Attack cannot be interrupted and loses "..COLORS_Numbers.red_var_rgb.." of Secondary Attack Movement Speed penalties.")), -- reduction: 50% -- colors
			--[+ French +]--
			create_template("weap_wbr001_desc_ext_fr",
				{"loc_trait_bespoke_uninterruptable_while_charging_and_movement_desc"}, {"fr"},
					loc_text("Votre attaque secondaire ne peut pas être interrompue et les pénalités de vitesse de déplacement de l'attaque secondaire sont réduite de "..COLORS_Numbers.red_var_rgb..".")),
			--[+ Russian +]-- Сосредоточенный призыв
			create_template("weap_wbr001_desc_ext_ru",
				{"loc_trait_bespoke_uninterruptable_while_charging_and_movement_desc"}, {"ru"},
					loc_text("На "..COLORS_Numbers.red_var_rgb.." уменьшается штраф скорости движения во время вторичной атаки. Ваша вторичная атака не может быть прервана.")),
			--[+ Traditional Chinese - 專注引導 +]--
			-- 電流力場法杖, 烈焰力場法杖, 虛空爆破力場法杖, 虛空打擊力場法杖 -- 20% | 30% | 40% | 50%
			create_template("weap_wbr001_desc_ext_tw",
				{"loc_trait_bespoke_uninterruptable_while_charging_and_movement_desc"}, {"zh-tw"},
					loc_text("次要攻擊的移動速度懲罰 "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.red_var_rgb.."，\n且無法被中斷。")),
			--[+ Simplified Chinese - 专注引导 +]--
			create_template("weap_wbr001_desc_ext_zh_cn",
				{"loc_trait_bespoke_uninterruptable_while_charging_and_movement_desc"}, {"zh-cn"},
					loc_text("次要攻击蓄力期间 "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.red_var_rgb.." 移动速度惩罚，\n同时敌人的近战及远程攻击无法眩晕你。")),


-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		--[+ BLAZING SPIRIT +]--
		-- Voidblast Staff, Voidstrike Staff -- 1 | 2 | 3 | 4
			create_template("weap_wbr002_desc_ext_en",
				{"loc_trait_bespoke_warpfire_burn_on_crit_desc"}, {"en"},
					loc_text("Enemy gains "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_KWords.Soulblaze_rgb.." on "..COLORS_KWords.Crit_hit_rgb..".")), -- stacks: 4 -- colors -- REMOVED: [Up to "..COLORS_Numbers.n_6_rgb.." Stacks.] because for some reason this description is used for the Psyker Greatsword, but it has 12 stacks max. Fatshark FFS!
			--[+ French +]--
			create_template("weap_wbr002_desc_ext_fr",
				{"loc_trait_bespoke_warpfire_burn_on_crit_desc"}, {"fr"},
					loc_text("L'ennemie gagne "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." cumuls de "..COLORS_KWords_fr.Soulblaze_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr..".")), -- Jusqu'à "..COLORS_Numbers.n_6_rgb.." cumuls.
			--[+ Russian +]-- Пылающий дух -- руоф Пламенный дух
			create_template("weap_wbr002_desc_ext_ru",
				{"loc_trait_bespoke_warpfire_burn_on_crit_desc"}, {"ru"},
					loc_text(COLORS_Numbers.stacks_var_rgb.." заряда "..COLORS_KWords_ru.Soulblaze_rgb_ru.." получает враг при "..COLORS_KWords_ru.Crit_hit_rgb_ru..".")), --  Вплоть до "..COLORS_Numbers.n_6_rgb.." зарядов.
			--[+ Traditional Chinese - 燃燒靈魂 +]-- 這個說明同時也被套用在烈焰力場巨劍，但是他最多12層。
			-- 虛空爆破力場法杖, 虛空打擊力場法杖 -- 1 | 2 | 3 | 4
			-- create_template("weap_wbr002_desc_ext_tw",
				-- {"loc_trait_bespoke_warpfire_burn_on_crit_desc"}, {"zh-tw"},
					-- loc_text("敵人於 "..COLORS_KWords_tw.Crit_hit_rgb_tw.." 時會獲得 "..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_KWords_tw.Soulblaze_rgb_tw.."，上限 "..COLORS_Numbers.n_6_rgb.." 層。")),
			--[+ Simplified Chinese - 烈焰之魂 +]--
			create_template("weap_wbr002_desc_ext_zh_cn",
				{"loc_trait_bespoke_warpfire_burn_on_crit_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时, 对敌人施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_KWords_zh_cn.Soulblaze_rgb_zh_cn.."。")), -- 描述存在BUG，炙焰力场巨剑错误使用该段描述，暂时移除字段：「"最多叠加 "..COLORS_Numbers.n_6_rgb.." 层。"」以确保描述不会出现错误。
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		--[+ PENETRATING FLAME +]--
		-- Flamer, Inferno Staff -- 1 | 2 | 3 | 4
			create_template("weap_wbr003_desc_ext_en",
				{"loc_trait_bespoke_armor_rending_from_dot_burning_desc"}, {"en"},
					-- loc_text("Direct hits apply "..COLORS_Numbers.stacks_num_var_rgb.." Stacks of "..COLORS_Numbers.rending_pc_var_rgb.." "..COLORS_KWords.Brittleness_rgb.." for "..COLORS_Numbers.dur_var_rgb.." seconds. Stacks "..COLORS_Numbers.maxstks_var_rgb.." times."..COLORS_KWords.Brtl_note_rgb)), -- num_stacks: 4, rending_percentage: 2.5%, duration: 5, max_stacks: 16 -- colors
					loc_text("Direct hits apply "..COLORS_Numbers.n_1_rgb.." Stacks of "..COLORS_Numbers.stacks_num_var_rgb..COLORS_Numbers.pc_rgb.." "..COLORS_KWords.Brittleness_rgb.." for "..COLORS_Numbers.dur_var_rgb.." seconds. Up to "..COLORS_Numbers.pc_20_rgb.."."..COLORS_KWords.Brtl_note_rgb)), -- num_stacks: 4, rending_percentage: 1%, duration: 5, max_stacks: 10 -- colors
			--[+ French +]--
			-- create_template("weap_wbr003_desc_ext_fr",
				-- {"loc_trait_bespoke_armor_rending_from_dot_burning_desc"}, {"fr"},
					-- loc_text("Les coups directs appliquent "..COLORS_Numbers.stacks_num_var_rgb.." cumuls de "..COLORS_Numbers.rending_pc_var_rgb.." "..COLORS_KWords_fr.Brittleness_rgb_fr.." pendant "..COLORS_Numbers.dur_var_rgb.." secondes. Se cumule "..COLORS_Numbers.maxstks_var_rgb.." fois."..COLORS_KWords_fr.Brtl_note_rgb_fr)),
			create_template("weap_wbr003_desc_ext_fr",
				{"loc_trait_bespoke_armor_rending_from_dot_burning_desc"}, {"fr"},
					loc_text("Les coups directs appliquent "..COLORS_Numbers.n_1_rgb.." cumul de "..COLORS_Numbers.stacks_num_var_rgb..COLORS_Numbers.pc_rgb.." "..COLORS_KWords_fr.Brittleness_rgb_fr.." pendant "..COLORS_Numbers.dur_var_rgb.." secondes. Jusqu'à "..COLORS_Numbers.pc_20_rgb.."."..COLORS_KWords_fr.Brtl_note_rgb_fr)),
			--[+ Russian - Проникающее пламя -- руоф Убойное пламя +]--
			-- create_template("weap_wbr003_desc_ext_ru",
				-- {"loc_trait_bespoke_armor_rending_from_dot_burning_desc"}, {"ru"},
					-- loc_text("Прямые попадания накладывают "..COLORS_Numbers.stacks_num_var_rgb.." заряда по "..COLORS_Numbers.rending_pc_var_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." на "..COLORS_Numbers.dur_var_rgb.." секунд. Суммируется до "..COLORS_Numbers.maxstks_var_rgb.." раз."..COLORS_KWords_ru.Brtl_note_rgb_ru)),
			create_template("weap_wbr003_desc_ext_ru",
				{"loc_trait_bespoke_armor_rending_from_dot_burning_desc"}, {"ru"},
					loc_text("Прямые попадания накладывают "..COLORS_Numbers.n_1_rgb.." заряд "..COLORS_Numbers.stacks_num_var_rgb..COLORS_Numbers.pc_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." на "..COLORS_Numbers.dur_var_rgb.." секунд. Вплоть до "..COLORS_Numbers.pc_20_rgb.."."..COLORS_KWords_ru.Brtl_note_rgb_ru)),
			--[+ Traditional Chinese - 穿透烈焰 +]--
			-- 淨化噴火器, 烈焰力場法杖 -- 1 | 2 | 3 | 4
			-- create_template("weap_wbr003_desc_ext_tw",
				-- {"loc_trait_bespoke_armor_rending_from_dot_burning_desc"}, {"zh-tw"},
					-- loc_text("被攻擊目標獲得 "..COLORS_Numbers.stacks_num_var_rgb.." 層 "..COLORS_Numbers.rending_pc_var_rgb.." 的 "..COLORS_KWords_tw.Brittleness_rgb_tw.."，\n持續 "..COLORS_Numbers.dur_var_rgb.." 秒，上限 "..COLORS_Numbers.maxstks_var_rgb.." 層。" .. COLORS_KWords_tw.Brtl_note_rgb_tw)),
			create_template("weap_wbr003_desc_ext_tw",
				{"loc_trait_bespoke_armor_rending_from_dot_burning_desc"}, {"zh-tw"},
					loc_text("被攻擊目標獲得 "..COLORS_Numbers.n_1_rgb.." 層 "..COLORS_Numbers.stacks_num_var_rgb..COLORS_Numbers.pc_rgb.." 的 "..COLORS_KWords_tw.Brittleness_rgb_tw.."，\n持續 "..COLORS_Numbers.dur_var_rgb.." 秒，上限 "..COLORS_Numbers.pc_20_rgb.." 。" .. COLORS_KWords_tw.Brtl_note_rgb_tw)),
			--[+ Simplified Chinese - 穿透火焰 +]--
			create_template("weap_wbr003_desc_ext_zh_cn",
				{"loc_trait_bespoke_armor_rending_from_dot_burning_desc"}, {"zh-cn"},
					loc_text("命中时，对目标施加 "..COLORS_Numbers.stacks_num_var_rgb.." 层 "..COLORS_Numbers.n_1_rgb..COLORS_Numbers.pc_rgb.." "..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."，持续 "..COLORS_Numbers.dur_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.n_20_rgb.." 层，最高 "..COLORS_Numbers.pc_20_rgb.."。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn)),
	--Incorrect description: https://forums.fatsharkgames.com/t/inferno-staff-penetrating-flame-not-working-as-intended-or-incorrect-description/106932 「create_template("weap_wbr003_desc_ext_zh_cn",
				-- {"loc_trait_bespoke_armor_rending_from_dot_burning_desc"}, {"zh-cn"},
					-- loc_text("命中时，对目标施加 "..COLORS_Numbers.stacks_num_var_rgb.." 层 "..COLORS_Numbers.rending_pc_var_rgb.." "..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."，持续 "..COLORS_Numbers.dur_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.maxstks_var_rgb.." 层。最高 "..COLORS_Numbers.pc_40_rgb.."。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn)),」
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


		--[+ SHOWSTOPPER +]--
		-- Flamer, Inferno Staff -- 10% | 15% | 20% | 25
			create_template("weap_wbr004_desc_ext_en",
				{"loc_trait_bespoke_chance_to_explode_elites_on_kill_desc"}, {"en"},
					loc_text(COLORS_Numbers.procch_var_rgb.." chance Elite and Special enemies Explode on kill.")), -- proc_chance: -- %%->% -- colors
			--[+ French +]--
			create_template("weap_wbr004_desc_ext_fr",
				{"loc_trait_bespoke_chance_to_explode_elites_on_kill_desc"}, {"fr"},
					loc_text(COLORS_Numbers.procch_var_rgb.." de chance que les Élite et les spécialistes explosent lors d'une élimination.")),
			--[+ Russian +]-- Взрывной финал -- руоф Театральная пауза
			create_template("weap_wbr004_desc_ext_ru",
				{"loc_trait_bespoke_chance_to_explode_elites_on_kill_desc"}, {"ru"},
					loc_text(COLORS_Numbers.procch_var_rgb.." шанс, что Элитные враги или Специалисты взорвутся при смерти.")),
			--[+ Traditional Chinese - 嘆為觀止 +]--
			-- 淨化噴火器, 烈焰力場法杖 -- 10% | 15% | 20% | 25%
			create_template("weap_wbr004_desc_ext_tw",
				{"loc_trait_bespoke_chance_to_explode_elites_on_kill_desc"}, {"zh-tw"},
					loc_text("精英或專家死亡時，\n有 "..COLORS_Numbers.procch_var_rgb.." 機率引發爆炸。")),
			--[+ Simplified Chinese - 精彩表演 +]--
			create_template("weap_wbr004_desc_ext_zh_cn",
				{"loc_trait_bespoke_chance_to_explode_elites_on_kill_desc"}, {"zh-cn"},
					loc_text("击杀精英和专家敌人时 \n"..COLORS_Numbers.procch_var_rgb.." 几率引发爆炸。")),

		--[+ INFERNUS +]--
		-- Helbore Lasguns, Infantry Lasguns, Laspistols, Recon Lasguns -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
			create_template("weap_wbr005_desc_ext_en",
				{"loc_trait_bespoke_burninating_on_crit_desc"}, {"en"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." "..COLORS_KWords.Burn_rgb.." Stacks on "..COLORS_KWords.Crit_hit_rgb.." to a maximum of "..COLORS_Numbers.maxstks_var_rgb.." Stacks.")), -- stacks: +4, max_stacks: 12 -- Stack(s)->Stacks -- colors
			--[+ French +]--
			create_template("weap_wbr005_desc_ext_fr",
				{"loc_trait_bespoke_burninating_on_crit_desc"}, {"fr"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." cumuls de "..COLORS_KWords_fr.Burn_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." jusqu'à un maximum de "..COLORS_Numbers.maxstks_var_rgb.." cumuls.")),
			--[+ Russian +]-- Инфернус
			create_template("weap_wbr005_desc_ext_ru",
				{"loc_trait_bespoke_burninating_on_crit_desc"}, {"ru"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." заряда "..COLORS_KWords_ru.Burn_rgb_ru.." при "..COLORS_KWords_ru.Crit_hit_rgb_ru..", вплоть до максимальных "..COLORS_Numbers.maxstks_var_rgb.." зарядов.")),
			--[+ Traditional Chinese - 煉獄 +]--
			-- 冥潮雷射槍, 步兵雷射槍, 重型雷射手槍, 偵查雷射槍 -- 1 (3 max) | 2 (6 max) | 3 (9 max) | 4 (12 max)
			create_template("weap_wbr005_desc_ext_tw",
				{"loc_trait_bespoke_burninating_on_crit_desc"}, {"zh-tw"},
					loc_text("在 "..COLORS_KWords_tw.Crit_hit_rgb_tw.." 時 "..COLORS_Numbers.p_stacks_var_rgb.." 層 "..COLORS_KWords_tw.Burn_rgb_tw.."，\n上限 "..COLORS_Numbers.maxstks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 地狱火 +]--
			create_template("weap_wbr005_desc_ext_zh_cn",
				{"loc_trait_bespoke_burninating_on_crit_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时 "..COLORS_Numbers.p_stacks_var_rgb.." 层"..COLORS_KWords_zh_cn.Burn_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.maxstks_var_rgb.." 层。")),

		--[+ EFFICIENCY +]--
		-- Infantry Lasguns -- 5.5 | 5 | 4.5 | 4
			create_template("weap_wbr006_desc_ext_en",
				{"loc_trait_bespoke_first_shot_ammo_cost_reduction_desc"}, {"en"},
					loc_text(COLORS_Numbers.ammo_var_rgb.." Reduced Ammo use per shot every "..COLORS_Numbers.time_var_rgb.." seconds.")), -- ammo: 33%, time: 4 -- rewrite -- return "+{ammo:%s} Reduced Ammo use after not shooting for {time:%s} seconds." -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbr006_desc_ext_fr",
				{"loc_trait_bespoke_first_shot_ammo_cost_reduction_desc"}, {"fr"},
					loc_text(COLORS_Numbers.ammo_var_rgb.." de réduction des munitions dépensées lorsque vous ne tirez pas pendant "..COLORS_Numbers.time_var_rgb.." secondes.")),
			--[+ Russian +]-- Эффективность
			create_template("weap_wbr006_desc_ext_ru",
				{"loc_trait_bespoke_first_shot_ammo_cost_reduction_desc"}, {"ru"},
					loc_text("На "..COLORS_Numbers.ammo_var_rgb.." сокращаются затраты боеприпасов на выстрел каждые "..COLORS_Numbers.time_var_rgb.." секунды.")),
			--[+ Traditional Chinese - 效率 +]--
			-- 步兵雷射槍 -- 5.5 | 5 | 4.5 | 4
			create_template("weap_wbr006_desc_ext_tw",
				{"loc_trait_bespoke_first_shot_ammo_cost_reduction_desc"}, {"zh-tw"},
					loc_text("每過 "..COLORS_Numbers.time_var_rgb.." 秒，\n首次射擊的彈藥消耗將減少 "..COLORS_Numbers.ammo_var_rgb.." 。")),
			--[+ Simplified Chinese - 效益 +]--
			create_template("weap_wbr006_desc_ext_zh_cn",
				{"loc_trait_bespoke_first_shot_ammo_cost_reduction_desc"}, {"zh-cn"},
					loc_text("下次射击 "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.ammo_var_rgb.." 弹药消耗，\n冷却时间 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ CONCENTRATED FIRE +]--
		-- Laspistols -- 2% | 3% | 4% | 5% (up to +25%)
			create_template("weap_wbr007_desc_ext_en",
				{"loc_trait_bespoke_crit_chance_on_chained_weakspot_hits_desc"}, {"en"},
					loc_text("Up to "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." on Chained Ranged "..COLORS_KWords.Weakspothit_rgb.." to Any Target. Up to "..COLORS_Numbers.n_5_rgb.." Stacks.")), -- crit_chance: +5% -- colors
			--[+ French +]--
			create_template("weap_wbr007_desc_ext_fr",
				{"loc_trait_bespoke_crit_chance_on_chained_weakspot_hits_desc"}, {"fr"},
					loc_text("Jusqu'à "..COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr.." répété à distance (toute cible). Jusqu'à "..COLORS_Numbers.n_5_rgb.." cumuls.")),
			--[+ Russian +]-- Сосредоточенный огонь -- руоф Интенсивный огонь
			create_template("weap_wbr007_desc_ext_ru",
				{"loc_trait_bespoke_crit_chance_on_chained_weakspot_hits_desc"}, {"ru"},
					loc_text("До "..COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." при серии попаданий в "..COLORS_KWords_ru.Weakspot_rgb_ru.." любой цели. До "..COLORS_Numbers.n_5_rgb.." зарядов.")),
			--[+ Traditional Chinese - 集中火力 +]--
			-- 重型雷射手槍 -- 2% | 3% | 4% | 5% (up to +25%)
			create_template("weap_wbr007_desc_ext_tw",
				{"loc_trait_bespoke_crit_chance_on_chained_weakspot_hits_desc"}, {"zh-tw"},
					loc_text("連續 "..COLORS_KWords_tw.Weakspothit_rgb_tw.." 時（任意目標），\n獲得最多 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\b上限 "..COLORS_Numbers.n_5_rgb.." 層。")),
			--[+ Simplified Chinese - 集中火力 +]--
			create_template("weap_wbr007_desc_ext_zh_cn",
				{"loc_trait_bespoke_crit_chance_on_chained_weakspot_hits_desc"}, {"zh-cn"},
					loc_text("连续"..COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时 "..COLORS_Numbers.crit_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。")),

		--[+ DESPERADO +]--
		-- Laspistols -- 12.5% | 15% | 17.5% | 20%
			create_template("weap_wbr008_desc_ext_en",
				{"loc_trait_bespoke_crit_chance_on_successful_dodge_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on successful Dodge.")), -- crit_chance: +12.5%, time: 2 -- colors
			--[+ French +]--
			create_template("weap_wbr008_desc_ext_fr",
				{"loc_trait_bespoke_crit_chance_on_successful_dodge_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'une esquive réussie.")),
			--[+ Russian +]-- Сорвиголова
			create_template("weap_wbr008_desc_ext_ru",
				{"loc_trait_bespoke_crit_chance_on_successful_dodge_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при успешном уклонении.")),
			--[+ Traditional Chinese - 亡命之徒 +]--
			-- 重型雷射手槍 -- 12.5% | 15% | 17.5% | 20%
			create_template("weap_wbr008_desc_ext_tw",
				{"loc_trait_bespoke_crit_chance_on_successful_dodge_desc"}, {"zh-tw"},
					loc_text("成功閃避時 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 亡命之徒 +]--
			create_template("weap_wbr008_desc_ext_zh_cn",
				{"loc_trait_bespoke_crit_chance_on_successful_dodge_desc"}, {"zh-cn"},
					loc_text("成功闪避时 "..COLORS_Numbers.crit_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ REASSURINGLY ACCURATE +]--
		-- Grenadier Gauntlet -- 24% | 28% | 32% | 36%
		-- Laspistols -- 10% | 12% | 14% | 16%
			create_template("weap_wbr009_desc_ext_en",
				{"loc_trait_bespoke_toughness_on_crit_kills_desc"}, {"en"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." on "..COLORS_KWords.Crit_hit_rgb.." Kill.")), -- toughness: 16% -- colors
			--[+ French +]--
			create_template("weap_wbr009_desc_ext_fr",
				{"loc_trait_bespoke_toughness_on_crit_kills_desc"}, {"fr"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une élimination par "..COLORS_KWords_fr.Crit_hit_rgb_fr..".")),
			--[+ Russian +]-- Успокаивающая точность -- руоф Внушительная точность
			create_template("weap_wbr009_desc_ext_ru",
				{"loc_trait_bespoke_toughness_on_crit_kills_desc"}, {"ru"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." при убийствах "..COLORS_KWords_ru.Crit_hits_rgb_ru..".")),
			--[+ Traditional Chinese - 慰藉精準 +]--
			-- 擲彈兵臂鎧 -- 24% | 28% | 32% | 36%
			-- 重型雷射手槍 -- 10% | 12% | 14% | 16%
			create_template("weap_wbr009_desc_ext_tw",
				{"loc_trait_bespoke_toughness_on_crit_kills_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Crit_k_rgb_tw.." 時 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."。")),
			--[+ Simplified Chinese - 激励精准 +]--
			create_template("weap_wbr009_desc_ext_zh_cn",
				{"loc_trait_bespoke_toughness_on_crit_kills_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Crit_hits_k_rgb_zh_cn.."时，"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。")),

		--[+ FLECHETTE +]--
		-- Combat Shotguns, Double-Barrel Shotgun, Ripper Guns -- 3 | 4 | 5 | 6
			create_template("weap_wbr010_desc_ext_en",
				{"loc_trait_bespoke_bleed_on_crit_ranged_desc"}, {"en"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." "..COLORS_KWords.Bleed_rgb.." Stacks on "..COLORS_KWords.Crit_hit_rgb..". Up to "..COLORS_Numbers.n_16_rgb.." Stacks.")), -- stacks: 6 -- colors
			--[+ French +]--
			create_template("weap_wbr010_desc_ext_fr",
				{"loc_trait_bespoke_bleed_on_crit_ranged_desc"}, {"fr"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr..". Jusqu'à "..COLORS_Numbers.n_16_rgb.." cumuls.")),
			--[+ Russian +]-- Флешетта
			create_template("weap_wbr010_desc_ext_ru",
				{"loc_trait_bespoke_bleed_on_crit_ranged_desc"}, {"ru"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru..". Вплоть до "..COLORS_Numbers.n_16_rgb.." зарядов.")),
			--[+ Traditional Chinese - 飛鏢彈 +]--
			-- 戰鬥霰彈槍, 雙管霰彈槍, 撕裂槍 -- 3 | 4 | 5 | 6
			create_template("weap_wbr010_desc_ext_tw",
				{"loc_trait_bespoke_bleed_on_crit_ranged_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Crit_rgb_tw.." 時，使其獲得 "..COLORS_Numbers.p_stacks_var_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.."。\n上限 "..COLORS_Numbers.n_16_rgb.." 層。")),
			--[+ Simplified Chinese - 箭弹 +]--
			create_template("weap_wbr010_desc_ext_zh_cn",
				{"loc_trait_bespoke_bleed_on_crit_ranged_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Crit_rgb_zh_cn.."时 "..COLORS_Numbers.p_stacks_var_rgb.." 层"..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_16_rgb.." 层。")),

		--[+ MAN-STOPPER +]--
		-- Combat Shotguns, Double-Barrel Shotgun -- 10% | 15% | 20% | 25%
			create_template("weap_wbr011_desc_ext_en",
				{"loc_trait_bespoke_cleave_on_crit_and_stagger_desc"}, {"en"},
					loc_text("Increased "..COLORS_KWords.Cleave_rgb.." on "..COLORS_KWords.Crit_hit_rgb.." and gain "..COLORS_Numbers.stgr_var_rgb.." Ranged Attack "..COLORS_KWords.Stagger_rgb..".")), -- stagger: +25% -- colors
			--[+ French +]--
			create_template("weap_wbr011_desc_ext_fr",
				{"loc_trait_bespoke_cleave_on_crit_and_stagger_desc"}, {"fr"},
					loc_text("Augmente le "..COLORS_KWords_fr.Cleave_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." augmente également de "..COLORS_Numbers.stgr_var_rgb.." le "..COLORS_KWords_fr.Stagger_rgb_fr..".")),
			--[+ Russian +]-- Человекоостанавливатель +]-- -- руоф Усмирение
			create_template("weap_wbr011_desc_ext_ru",
				{"loc_trait_bespoke_cleave_on_crit_and_stagger_desc"}, {"ru"},
					loc_text("Увеличивается "..COLORS_KWords_ru.Cleaving_r_rgb_ru.." при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru..", а также вы получаете "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_ru.Staggering_rgb_ru.." от дальнобойных атак.")),
			--[+ Traditional Chinese - 大口徑彈藥 +]--
			-- 戰鬥霰彈槍, 雙管霰彈槍 -- 10% | 15% | 20% | 25%
			create_template("weap_wbr011_desc_ext_tw",
				{"loc_trait_bespoke_cleave_on_crit_and_stagger_desc"}, {"zh-tw"},
					loc_text("在 "..COLORS_KWords_tw.Crit_chance_r_rgb_tw.." 時提升 "..COLORS_KWords_tw.Cleaving_r_rgb_tw.."，\n並使遠程攻擊 "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_tw.Staggering_rgb_tw.."。")),
			--[+ Simplified Chinese - 强力炮弹 +]--
			create_template("weap_wbr011_desc_ext_zh_cn",
				{"loc_trait_bespoke_cleave_on_crit_and_stagger_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Crit_rgb_zh_cn.."时 "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."，\n同时无视敌人的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn)),

		--[+ SCATTERSHOT +]--
		-- Combat Shotguns, Double-Barrel Shotgun -- 6% | 8% | 10% | 12% (up to +60%)
			create_template("weap_wbr012_desc_ext_en",
				{"loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for each Enemy Hit by your previous attack. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- crit_chance: +12%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr012_desc_ext_fr",
				{"loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pour chaque ennemie touché par votre attaque précédente . Se cumuls "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Выстрел дробью -- руоф Разброс
			create_template("weap_wbr012_desc_ext_ru",
				{"loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." за каждого врага, поражённого вашей предыдущей атакой. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 散彈 +]--
			-- 戰鬥霰彈槍, 雙管霰彈槍 -- 6% | 8% | 10% | 12% (up to +60%)
			create_template("weap_wbr012_desc_ext_tw",
				{"loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot_desc"}, {"zh-tw"},
					loc_text("前一次攻擊每命中一名敵人，\n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.." ，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 散射 +]--
			create_template("weap_wbr012_desc_ext_zh_cn",
				{"loc_trait_bespoke_crit_chance_on_hitting_multiple_with_one_shot_desc"}, {"zh-cn"},
					loc_text("上次攻击每命中一名敌人\n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ FULL BORE +]--
		-- Combat Shotguns, Double-Barrel Shotgun -- 14% | 16% | 18% | 20%
		-- Kickback -- 18% | 22% | 26% | 30%
			create_template("weap_wbr013_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds when every pellet in a shot hits the same enemy."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +20%, time: 5 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbr013_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lorsque chaque plomb d'un tir touche le même ennemie."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Полный калибр -- руоф Напор
			create_template("weap_wbr013_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунд, если каждая пуля в выстреле попадает в одного и того же врага."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 全孔射擊 +]--
			-- 戰鬥霰彈槍, 雙管霰彈槍 -- 14% | 16% | 18% | 20%
			-- 反衝者 -- 18% | 22% | 26% | 30%
			create_template("weap_wbr013_desc_ext_tw",
				{"loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all_desc"}, {"zh-tw"},
					loc_text("單次射擊的所有子彈皆命中同一名敵人，\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 全孔射击 +]--
			create_template("weap_wbr013_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_on_hitting_single_enemy_with_all_desc"}, {"zh-cn"},
					loc_text("一次射击的全部弹丸都命中同一敌人时\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ BOTH BARRELS +]--
		-- Double-Barrel Shotgun -- 40% | 50% | 60% | 70%
			create_template("weap_wbr014_desc_ext_en",
				{"loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill_desc"}, {"en"},
					loc_text("Killing an enemy by firing both barrels makes your next Reload "..COLORS_Numbers.reload_var_rgb.." faster.")), -- reload_speed: 70% -- colors
			--[+ French +]--
			create_template("weap_wbr014_desc_ext_fr",
				{"loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill_desc"}, {"fr"},
					loc_text("Si vous tuez un ennemie en tirant les deux canons, votre prochain rechargement sera "..COLORS_Numbers.reload_var_rgb.." plus rapide.")),
			--[+ Russian +]-- Дуплет
			create_template("weap_wbr014_desc_ext_ru",
				{"loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill_desc"}, {"ru"},
					loc_text("На "..COLORS_Numbers.reload_var_rgb.." ускоряется следующая перезарядка после убийства врага выстрелом из обоих стволов.")),
			--[+ Traditional Chinese - 雙管齊發 +]--
			-- 雙管霰彈槍 -- 40% | 50% | 60% | 70%
			create_template("weap_wbr014_desc_ext_tw",
				{"loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill_desc"}, {"zh-tw"},
					loc_text("擊殺敵人後，\n下一次換彈速度 "..COLORS_Numbers.reload_var_rgb.."。")),
			--[+ Simplified Chinese - 双管齐下 +]--
			create_template("weap_wbr014_desc_ext_zh_cn",
				{"loc_trait_bespoke_reload_speed_on_ranged_weapon_special_kill_desc"}, {"zh-cn"},
					loc_text("进行次要攻击并发射两枚弹药时\n"..COLORS_Numbers.reload_var_rgb.." 装弹速度。")),

		--[+ TRICKSHOOTER +]--
		-- Stub Revolvers -- 4.5% | 5% | 5.5% | 6% (up to +30%)
			create_template("weap_wbr015_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_on_chained_weakspot_hits_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." on Chained "..COLORS_KWords.Weakspothit_rgb.." to Any Target. Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +6%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr015_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_on_chained_weakspot_hits_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr.." en chaîne (toute cible). Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Меткий стрелок
			create_template("weap_wbr015_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_on_chained_weakspot_hits_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." при серии ударов в "..COLORS_KWords_ru.Weakspot_rgb_ru.." любой цели. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 狡猾射手 +]--
			-- 快拔左輪手槍 -- 4.5% | 5% | 5.5% | 6% (up to +30%)
			create_template("weap_wbr015_desc_ext_tw",
				{"loc_trait_bespoke_power_bonus_on_chained_weakspot_hits_desc"}, {"zh-tw"},
					loc_text("連續 "..COLORS_KWords_tw.Weakspothit_rgb_tw.." 時（任意目標），\n獲得最多 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 特技射手 +]--
			create_template("weap_wbr015_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_on_chained_weakspot_hits_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.n_3_5_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ HAND-CANNON +]--
		-- Stub Revolvers -- 30% | 40% | 50% | 60%
			create_template("weap_wbr016_desc_ext_en",
				{"loc_trait_bespoke_rending_on_crit_desc"}, {"en"},
					loc_text(COLORS_Numbers.rend_var_rgb.." "..COLORS_KWords.Rending_rgb.." on "..COLORS_KWords.Crit_hit_rgb.."."..COLORS_KWords.Rend_note_rgb)), -- rend: +60% -- colors
			--[+ French +]--
			create_template("weap_wbr016_desc_ext_fr",
				{"loc_trait_bespoke_rending_on_crit_desc"}, {"fr"},
					loc_text(COLORS_Numbers.rend_var_rgb.." de "..COLORS_KWords_fr.Rending_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr.."."..COLORS_KWords_fr.Rend_note_rgb_fr)),
			--[+ Russian +]-- Ручная пушка
			create_template("weap_wbr016_desc_ext_ru",
				{"loc_trait_bespoke_rending_on_crit_desc"}, {"ru"},
					loc_text(COLORS_Numbers.rend_var_rgb.." к "..COLORS_KWords_ru.Rending_rgb_ru.." при "..COLORS_KWords_ru.Crit_hit_rgb_ru.."."..COLORS_KWords_ru.Rend_note_rgb_ru)),
			--[+ Traditional Chinese - 手銃 +]--
			-- 快拔左輪手槍 -- 30% | 40% | 50% | 60%
			create_template("weap_wbr016_desc_ext_tw",
				{"loc_trait_bespoke_rending_on_crit_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Crit_hit_rgb_tw.." 時 "..COLORS_Numbers.rend_var_rgb.." "..COLORS_KWords_tw.Rending_rgb_tw.."。" .. COLORS_KWords_tw.Rend_note_rgb_tw)),
			--[+ Simplified Chinese - 手持火炮 +]--
			create_template("weap_wbr016_desc_ext_zh_cn",
				{"loc_trait_bespoke_rending_on_crit_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.." "..COLORS_Numbers.rend_var_rgb.." "..COLORS_KWords_zh_cn.Rending_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Rend_note_rgb_zh_cn)),

		--[+ SHATTERING IMPACT +]--
		-- Boltgun, Grenadier Gauntlet, Plasma Gun, Rumbler -- 1 | 2 | 3| 4
			create_template("weap_wbr017_desc_ext_en",
				{"loc_trait_bespoke_armor_rend_on_projectile_hit_desc"}, {"en"},
					loc_text("Target receives "..COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Brittleness_rgb.." on direct projectile hit. Lasts "..COLORS_Numbers.time_var_rgb.." seconds. Max "..COLORS_Numbers.maxstks_var_rgb.." Stacks, up to "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords.Brtl_note_rgb)), -- stacks: 4, rending: 2.5%, time: 5, max_stacks: 16 -- rewrite -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbr017_desc_ext_fr",
				{"loc_trait_bespoke_armor_rend_on_projectile_hit_desc"}, {"fr"},
					loc_text("La cible reçoit "..COLORS_Numbers.stacks_var_rgb.." cumuls de "..COLORS_Numbers.rending_var_rgb.." de "..COLORS_KWords_fr.Brittleness_rgb_fr.." si elle est touchée directement par un projectile. Dure "..COLORS_Numbers.time_var_rgb.." secondes."..COLORS_Numbers.maxstks_var_rgb.." cumuls maximum, Jusqu'à "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords_fr.Brtl_note_rgb_fr)),
			--[+ Russian +]-- Сокрушающий удар -- руоф Рассеивающий импульс
			create_template("weap_wbr017_desc_ext_ru",
				{"loc_trait_bespoke_armor_rend_on_projectile_hit_desc"}, {"ru"},
					loc_text("Цель получает "..COLORS_Numbers.stacks_var_rgb.." заряда по "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." при прямом попадании. Длится "..COLORS_Numbers.time_var_rgb.." секунд. Максимум "..COLORS_Numbers.maxstks_var_rgb.." зарядов, вплоть до "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords_ru.Brtl_note_rgb_ru)),
			--[+ Traditional Chinese - 破碎衝擊 +]--
			-- 矛頭爆矢槍, 擲彈兵臂鎧, 電漿槍, 震盪槍 -- 1 | 2 | 3| 4
			create_template("weap_wbr017_desc_ext_tw",
				{"loc_trait_bespoke_armor_rend_on_projectile_hit_desc"}, {"zh-tw"},
					loc_text("命中目標時，使其獲得 "..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Brittleness_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒，上限 "..COLORS_Numbers.maxstks_var_rgb.." 層，最高至 "..COLORS_Numbers.pc_40_rgb.."。" .. COLORS_KWords_tw.Brtl_note_rgb_tw)),
			--[+ Simplified Chinese - 破碎冲击 +]--
			create_template("weap_wbr017_desc_ext_zh_cn",
				{"loc_trait_bespoke_armor_rend_on_projectile_hit_desc"}, {"zh-cn"},
					loc_text("命中时，对目标施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_Numbers.rending_var_rgb.." \n"..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.maxstks_var_rgb.." 层，最高 "..COLORS_Numbers.pc_40_rgb.."。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn)),

		--[+ EVERLASTING FLAME +]--
		-- Flamer -- 2 | 3 | 4 | 5
			create_template("weap_wbr018_desc_ext_en",
				{"loc_trait_bespoke_ammo_spent_from_reserve_on_crit_desc"}, {"en"},
					loc_text(COLORS_KWords.Crit_hits_rgb.." spend Ammo from your Reserve instead of you current fuel tank.")), -- colors
			--[+ French +]--
			create_template("weap_wbr018_desc_ext_fr",
				{"loc_trait_bespoke_ammo_spent_from_reserve_on_crit_desc"}, {"fr"},
					loc_text("Les "..COLORS_KWords_fr.Crit_hits_rgb_fr.." dépensent des munitions de votre réserve à la place de votre réservoir de carburant actuel.")),
			--[+ Russian +]-- Неугасимое пламя -- руоф Бесконечное пламя
			create_template("weap_wbr018_desc_ext_ru",
				{"loc_trait_bespoke_ammo_spent_from_reserve_on_crit_desc"}, {"ru"},
					loc_text(COLORS_KWords_ru.Crit0_rgb_ru.." тратят топливо из вашего резерва вместо текущего топливного бака.")),
			--[+ Traditional Chinese - 永燃烈焰 +]--
			-- 淨化噴火器 -- 2 | 3 | 4 | 5
			create_template("weap_wbr018_desc_ext_tw",
				{"loc_trait_bespoke_ammo_spent_from_reserve_on_crit_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Crit0_rgb_tw.." 消耗備彈，而非彈夾中的彈藥。")),
			--[+ Simplified Chinese - 永恒之火 +]--
			create_template("weap_wbr018_desc_ext_zh_cn",
				{"loc_trait_bespoke_ammo_spent_from_reserve_on_crit_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时，从弹药储备填装数枚弹药。")),

		--[+ QUICKFLAME +]--
		-- Flamer -- 24% | 28% | 32% | 36%
			create_template("weap_wbr019_desc_ext_en",
				{"loc_trait_bespoke_faster_reload_on_empty_clip_desc"}, {"en"},
					loc_text(COLORS_Numbers.reload_var_rgb.." Reload Speed if empty.")), -- reload_speed: +36% -- colors
			--[+ French +]--
			create_template("weap_wbr019_desc_ext_fr",
				{"loc_trait_bespoke_faster_reload_on_empty_clip_desc"}, {"fr"},
					loc_text(COLORS_Numbers.reload_var_rgb.." de vitesse de rechargement si vide.")),
			--[+ Russian +]-- Скорое пламя -- руоф Воспламенение
			create_template("weap_wbr019_desc_ext_ru",
				{"loc_trait_bespoke_faster_reload_on_empty_clip_desc"}, {"ru"},
					loc_text(COLORS_Numbers.reload_var_rgb.." к скорости перезарядки, если бак пуст.")),
			--[+ Traditional Chinese - 迅捷火焰 +]--
			-- 淨化噴火器 -- 24% | 28% | 32% | 36%
			create_template("weap_wbr019_desc_ext_tw",
				{"loc_trait_bespoke_faster_reload_on_empty_clip_desc"}, {"zh-tw"},
					loc_text("當彈夾為空時 "..COLORS_Numbers.reload_var_rgb.." 換彈速度。")),
			--[+ Simplified Chinese - 快速烈焰 +]--
			create_template("weap_wbr019_desc_ext_zh_cn",
				{"loc_trait_bespoke_faster_reload_on_empty_clip_desc"}, {"zh-cn"},
					loc_text("弹匣空时 "..COLORS_Numbers.reload_var_rgb.." 装弹速度。")),

		--[+ FAN THE FLAMES +]--
		-- Flamer -- 40% & 30% | 50% & 35% | 60% & 40% | 70% & 45%
			create_template("weap_wbr020_desc_ext_en",
				{"loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning_desc"}, {"en"},
					loc_text("Primary Attack ignores "..COLORS_Numbers.stgrrdct_var_rgb.." "..COLORS_KWords.Stagger_rgb.." Resistance on "..COLORS_KWords.Burning_rgb.." Enemies, as well as dealing "..COLORS_Numbers.impmod_var_rgb.." "..COLORS_KWords.Impact_rgb..".")), -- stagger_reduction: 60%, impact_modifier: +45% -- colors
			--[+ French +]--
			create_template("weap_wbr020_desc_ext_fr",
				{"loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning_desc"}, {"fr"},
					loc_text("Votre attaque principale ignore "..COLORS_Numbers.stgrrdct_var_rgb.." de le résistance "..COLORS_KWords_fr.Stagger_rgb_fr.." des ennemis qui "..COLORS_KWords_fr.Burning_rgb_fr..", et inflige "..COLORS_Numbers.impmod_var_rgb.." d'"..COLORS_KWords_fr.Impact_rgb_fr..".")),
			--[+ Russian +]-- Разжечь пламя -- руоф Раздувая пламя
			create_template("weap_wbr020_desc_ext_ru",
				{"loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning_desc"}, {"ru"},
					loc_text("Основная атака игнорирует "..COLORS_Numbers.stgrrdct_var_rgb.." сопротивления "..COLORS_KWords_ru.Stagger2_rgb_ru.." "..COLORS_KWords_ru.Burning_rgb_ru.." врагов, а также получает "..COLORS_Numbers.impmod_var_rgb.." к "..COLORS_KWords_ru.Impact_rgb_ru..".")),
			--[+ Traditional Chinese - 煽風點火 +]--
			-- 淨化噴火器 -- 40% & 30% | 50% & 35% | 60% & 40% | 70% & 45%
			create_template("weap_wbr020_desc_ext_tw",
				{"loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning_desc"}, {"zh-tw"},
					loc_text("對 "..COLORS_KWords_tw.Burning_rgb_tw.." 敵人使用主攻擊時，\n無視 "..COLORS_Numbers.stgrrdct_var_rgb.." "..COLORS_KWords_tw.Stagger2_rgb_tw.." 並 "..COLORS_Numbers.impmod_var_rgb.." "..COLORS_KWords_tw.Impact_rgb_tw.."。")),
			--[+ Simplified Chinese - 火上浇油 +]--
			create_template("weap_wbr020_desc_ext_zh_cn",
				{"loc_trait_bespoke_ignore_stagger_reduction_with_primary_on_burning_desc"}, {"zh-cn"},
					loc_text("主要攻击无视"..COLORS_KWords_zh_cn.Burning_rgb_zh_cn.."敌人 "..COLORS_Numbers.stgrrdct_var_rgb.." "..COLORS_KWords_zh_cn.Stagger2_rgb_zh_cn.."抗性，同时 "..COLORS_Numbers.impmod_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."。")),

		--[+ OVERPRESSURE +]--
		-- Flamer -- 2% | 3% | 4% | 5% (up to +25%)
			create_template("weap_wbr021_desc_ext_en",
				{"loc_trait_bespoke_power_scales_with_clip_percentage_desc"}, {"en"},
					loc_text("Up to "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb..", scaling with remaining Ammunition. Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +5%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr021_desc_ext_fr",
				{"loc_trait_bespoke_power_scales_with_clip_percentage_desc"}, {"fr"},
					loc_text("Jusqu'à "..COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr..", en fonction des munitions restantes. Se cumules "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Избыточное давление
			create_template("weap_wbr021_desc_ext_ru",
				{"loc_trait_bespoke_power_scales_with_clip_percentage_desc"}, {"ru"},
					loc_text("До "..COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." в зависимости от оставшихся боеприпасов. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 超壓 +]--
			-- 淨化噴火器 -- 2% | 3% | 4% | 5% (up to +25%)
			create_template("weap_wbr021_desc_ext_tw",
				{"loc_trait_bespoke_power_scales_with_clip_percentage_desc"}, {"zh-tw"},
					loc_text("依照剩餘彈藥量 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 超压 +]--
			create_template("weap_wbr021_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_scales_with_clip_percentage_desc"}, {"zh-cn"},
					loc_text("随弹匣剩余弹药叠加层数，\n每消耗弹匣容量 "..COLORS_Numbers.pc_20_rgb.." 的弹药\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),


-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		--[+ HOT-SHOT +]--
		-- Helbore Lasguns -- 80% | 70% | 60% | 50% (bugged)???
			create_template("weap_wbr022_desc_ext_en",
				{"loc_trait_bespoke_cleave_on_weakspot_hits_desc"}, {"en"},
					loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.hit_mass_red_var_rgb.." "..COLORS_KWords.Cleave_rgb.." to "..COLORS_KWords.Weakspothits_rgb..".")), -- hit_mass_reduction: 50 -- colors
			--[+ French +]--
			create_template("weap_wbr022_desc_ext_fr",
				{"loc_trait_bespoke_cleave_on_weakspot_hits_desc"}, {"fr"},
					loc_text("Les "..COLORS_KWords_fr.Weakspothits_rgb_fr.." gagnent "..COLORS_Numbers.hit_mass_red_var_rgb.." de "..COLORS_KWords_fr.Cleave_rgb_fr..".")),
			--[+ Russian +]-- Жгучий выстрел -- руоф В точку
			create_template("weap_wbr022_desc_ext_ru",
				{"loc_trait_bespoke_cleave_on_weakspot_hits_desc"}, {"ru"},
					loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.hit_mass_red_var_rgb.." к "..COLORS_KWords_ru.Cleave_rgb_ru.." к выстрелам в "..COLORS_KWords_ru.Weakspot_rgb_ru..".")),
			--[+ Traditional Chinese - 激射 +]--
			-- 冥潮雷射槍 -- 80% | 70% | 60% | 50%
			create_template("weap_wbr022_desc_ext_tw",
				{"loc_trait_bespoke_cleave_on_weakspot_hits_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Weakspothits_rgb_tw.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.hit_mass_red_var_rgb.." "..COLORS_KWords_tw.Cleave_rgb_tw.."。")),
			--[+ Simplified Chinese - 炙热射击 +]--
			create_template("weap_wbr022_desc_ext_zh_cn",
				{"loc_trait_bespoke_cleave_on_weakspot_hits_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Weakspothits_rgb_zh_cn.."使目标"..COLORS_KWords_zh_cn.Hit_masss_rgb_zh_cn.."降至 "..COLORS_Numbers.hit_mass_red_var_rgb.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn.."{#color(255, 35, 5)}\n（BUG：祝福等级升高，效果变弱。）{#reset()}")),
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


		--[+ WEIGHT OF FIRE +]--
		-- Helbore Lasguns -- 6% | 8% | 10% | 12% (up to 60%)
			create_template("weap_wbr023_desc_ext_en",
				{"loc_trait_bespoke_faster_charge_on_chained_attacks_desc"}, {"en"},
					loc_text(COLORS_Numbers.chrgtime_var_rgb.." Charge Time to Chaining Charged Attacks. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- charge_time: -12%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr023_desc_ext_fr",
				{"loc_trait_bespoke_faster_charge_on_chained_attacks_desc"}, {"fr"},
					loc_text("Enchaîner les attaques chargées réduit leurs temps de chargement de "..COLORS_Numbers.chrgtime_var_rgb.." par cumule. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Мощь огня -- руоф Плотность огня
			create_template("weap_wbr023_desc_ext_ru",
				{"loc_trait_bespoke_faster_charge_on_chained_attacks_desc"}, {"ru"},
					loc_text(COLORS_Numbers.chrgtime_var_rgb.." от времени заряжания каждого последующего выстрела в серии выстрелов. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 猛攻 +]--
			-- 冥潮雷射槍 -- 6% | 8% | 10% | 12% (up to 60%)
			create_template("weap_wbr023_desc_ext_tw",
				{"loc_trait_bespoke_faster_charge_on_chained_attacks_desc"}, {"zh-tw"},
					loc_text("連續射擊會使後續射擊充能時間 "..COLORS_Numbers.chrgtime_var_rgb.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 猛攻 +]--
			create_template("weap_wbr023_desc_ext_zh_cn",
				{"loc_trait_bespoke_faster_charge_on_chained_attacks_desc"}, {"zh-cn"},
					loc_text("连续进行充能攻击时 \n"..COLORS_Numbers.chrgtime_var_rgb.." 蓄力时间。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ ARMOURBANE +]--
		-- Helbore Lasguns -- 2 to 6 | 4 to 8 | 6 to 10 | 8 to 12
			create_template("weap_wbr024_desc_ext_en",
				{"loc_trait_bespoke_rend_armor_on_charged_shots_desc"}, {"en"},
					loc_text("Adds "..COLORS_Numbers.min_stk_cnt_var_rgb.."-"..COLORS_Numbers.max_stk_cnt_var_rgb.." Stacks of "..COLORS_Numbers.pc_2_5_rgb.." "..COLORS_KWords.Brittleness_rgb.." to hit enemies, based on charge level."..COLORS_KWords.Brtl_note_rgb)), -- min_stack_count: 8, max_stack_count: 12 -- colors
			--[+ French +]--
			create_template("weap_wbr024_desc_ext_fr",
				{"loc_trait_bespoke_rend_armor_on_charged_shots_desc"}, {"fr"},
					loc_text("Inflige de "..COLORS_Numbers.min_stk_cnt_var_rgb.." à "..COLORS_Numbers.max_stk_cnt_var_rgb.." cumuls de "..COLORS_Numbers.pc_2_5_rgb.." de "..COLORS_KWords_fr.Brittleness_rgb_fr.." aux ennemis touchés, en fonction du niveau de charge."..COLORS_KWords_fr.Brtl_note_rgb_fr)),
			--[+ Russian +]-- Бронебой
			create_template("weap_wbr024_desc_ext_ru",
				{"loc_trait_bespoke_rend_armor_on_charged_shots_desc"}, {"ru"},
					loc_text("Добавляет от "..COLORS_Numbers.min_stk_cnt_var_rgb.." до "..COLORS_Numbers.max_stk_cnt_var_rgb.." зарядов по "..COLORS_Numbers.pc_2_5_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." при ударе по врагу, в зависимости от времени заряжания выстрела. До "..COLORS_Numbers.pc_40_rgb.." при "..COLORS_Numbers.n_16_rgb.." зарядах."..COLORS_KWords_ru.Brtl_note_rgb_ru)),
			--[+ Traditional Chinese - 護甲之禍 +]--
			-- 冥潮雷射槍 -- 2 to 6 | 4 to 8 | 6 to 10 | 8 to 12
			create_template("weap_wbr024_desc_ext_tw",
				{"loc_trait_bespoke_rend_armor_on_charged_shots_desc"}, {"zh-tw"},
					loc_text("依據充能時間，使其獲得 "..COLORS_Numbers.min_stk_cnt_var_rgb.." 至 "..COLORS_Numbers.max_stk_cnt_var_rgb.." 層， "..COLORS_Numbers.pc_2_5_rgb.." 的 "..COLORS_KWords_tw.Brittleness_rgb_tw.."，上限 "..COLORS_Numbers.n_16_rgb.." 層，共 "..COLORS_Numbers.pc_40_rgb.." 。" .. COLORS_KWords_tw.Brtl_note_rgb_tw)),
			--[+ Simplified Chinese - 装甲之祸 +]--
			create_template("weap_wbr024_desc_ext_zh_cn",
				{"loc_trait_bespoke_rend_armor_on_charged_shots_desc"}, {"zh-cn"},
					loc_text("随充能时间提升效果，对目标施加\n"..COLORS_Numbers.min_stk_cnt_var_rgb.." 到 "..COLORS_Numbers.max_stk_cnt_var_rgb.." 层 "..COLORS_Numbers.pc_2_5_rgb.." "..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_16_rgb.." 层，最高 "..COLORS_Numbers.pc_40_rgb.."。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn)),

		--[+ POWER BLAST +]--
		-- Plasma Gun -- 2% | 3% | 4% | 5% (up to +25%)
			create_template("weap_wbr025_desc_ext_en",
				{"loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time_desc"}, {"en"},
					loc_text("Gain between "..COLORS_Numbers.critchmin_var_rgb.." and "..COLORS_Numbers.critchmax_var_rgb.." "..COLORS_KWords.Crt_chance_rgb.." based on charge level when firing.")), -- crit_chance_min: 5%, crit_chance_max: 25% -- colors
			--[+ French +]--
			create_template("weap_wbr025_desc_ext_fr",
				{"loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time_desc"}, {"fr"},
					loc_text("Gagnez entre "..COLORS_Numbers.critchmin_var_rgb.." et "..COLORS_Numbers.critchmax_var_rgb.." de "..COLORS_KWords_fr.Crt_chance_rgb_fr.." en fonction du niveau de charge lorsque vous tirez.")),
			--[+ Russian +]-- Мощный выстрел -- руоф Мощный взрыв
			create_template("weap_wbr025_desc_ext_ru",
				{"loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time_desc"}, {"ru"},
					loc_text("От "..COLORS_Numbers.critchmin_var_rgb.." до "..COLORS_Numbers.critchmax_var_rgb.." повышается "..COLORS_KWords_ru.Crt_chance_rgb_ru.." в зависимости уровня заряда при выстреле.")),
			--[+ Traditional Chinese - 聚能爆發 +]--
			-- 電漿槍 -- 2% | 3% | 4% | 5% (up to +25%)
			create_template("weap_wbr025_desc_ext_tw",
				{"loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time_desc"}, {"zh-tw"},
					loc_text("依據 "..COLORS_KWords_tw.Heat2_rgb_tw.." 等級，\n "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmin_var_rgb.." 到 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmax_var_rgb.." "..COLORS_KWords_tw.Crt_chance_rgb_tw.."。")),
			--[+ Simplified Chinese - 充能爆破 +]--
			create_template("weap_wbr025_desc_ex_zh_cn",
				{"loc_trait_bespoke_increased_crit_chance_bonus_based_on_charge_time_desc"}, {"zh-cn"},
					loc_text("随充能程度叠加层数，每充能\n"..COLORS_Numbers.pc_20_rgb.." 叠加 "..COLORS_Numbers.n_1_rgb.." 层，每层 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.critchmin_var_rgb.." "..COLORS_KWords_zh_cn.Crt_chance_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_5_rgb.." 层，最高 "..COLORS_Numbers.critchmax_var_rgb.."。")),

		--[+ GETS HOT! +]--
		-- Plasma Gun -- 5.5% & 4% | 7% & 6% | 8.5 & 8% | 10% & 10% (up to +50% & +50%)
			-- create_template("weap_wbr026_desc_ext_en",
				-- {"loc_trait_bespoke_crit_chance_scaled_on_heat_desc"}, {"en"},
					-- loc_text("Grants "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_hit_chance_rgb.." per Stack, scales by your current "..COLORS_KWords.Heat_rgb.." level. Up to "..COLORS_Numbers.n_5_rgb.." Stacks. Also increases "..COLORS_KWords.Crit_rgb.." Ranged attacks "..COLORS_KWords.Damage_rgb.." by "..COLORS_Numbers.rangcrtdmg_var_rgb.." per Stack.")), -- crit_chance: 50%, ranged_crit_damage: 10% -- colors
			create_template("weap_wbr026_desc_ext_en",
				{"loc_trait_bespoke_crit_chance_scaled_on_heat_desc"}, {"en"},
					loc_text("Each Stack grants "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_hit_chance_rgb.." and "..COLORS_Numbers.rangcrtdmg_var_rgb.." "..COLORS_KWords.Crit_dmg_r_rgb..". Your "..COLORS_KWords.Heat_rgb.." level increases maximum Stacks, up to "..COLORS_Numbers.n_5_rgb..".")), -- crit_chance: 50%, ranged_crit_damage: 10% -- colors
			--[+ French +]--
			create_template("weap_wbr026_desc_ext_fr",
				{"loc_trait_bespoke_crit_chance_scaled_on_heat_desc"}, {"fr"},
					loc_text("Augmente de "..COLORS_Numbers.crit_var_rgb.." par cumul le "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.."  proportionnellement à votre niveau de "..COLORS_KWords_fr.Heat_rgb_fr.." actuel. Augmente également les "..COLORS_KWords_fr.Crit_hit_color_rgb_fr.." à distance de "..COLORS_Numbers.rangcrtdmg_var_rgb.." par cumul.")),
			--[+ Russian +]-- Критическая жара! -- руоф Становится жарко!
			create_template("weap_wbr026_desc_ext_ru",
				{"loc_trait_bespoke_crit_chance_scaled_on_heat_desc"}, {"ru"},
					loc_text("Повышается "..COLORS_KWords_ru.Crt_chance_rgb_ru.." в зависимости от уровня "..COLORS_KWords_ru.Heat_rgb_ru..", вплоть до "..COLORS_Numbers.crit_var_rgb..". Также на "..COLORS_Numbers.rangcrtdmg_var_rgb.." повышается "..COLORS_KWords_ru.Crit_dmg_r_rgb_ru.." от дальнобойных атак.")),
			--[+ Traditional Chinese - 燃起來! +]--
			-- 電漿槍 -- 5.5% & 4% | 7% & 6% | 8.5 & 8% | 10% & 10% (up to +50% & +50%)
			create_template("weap_wbr026_desc_ext_tw",
				{"loc_trait_bespoke_crit_chance_scaled_on_heat_desc"}, {"zh-tw"},
					loc_text("依據 "..COLORS_KWords_tw.Heat_rgb_tw.." 提升 "..COLORS_KWords_tw.Crt_chance_rgb_tw.."，\n每層 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_hits_rgb_tw.." 跟 "..COLORS_Numbers.rangcrtdmg_var_rgb.." "..COLORS_KWords_tw.Crit_hit_r_color_rgb_tw.."。\n上限 "..COLORS_Numbers.n_5_rgb.." 層，共 "..COLORS_Numbers.pc_50_rgb.." 。")),
			--[+ Simplified Chinese - 升温！ +]--
			create_template("weap_wbr026_desc_ext_zh_cn",
				{"loc_trait_bespoke_crit_chance_scaled_on_heat_desc"}, {"zh-cn"},
					loc_text("随"..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."增长叠加层数，\n每层 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crt_chance_rgb_zh_cn.."，\n同时 "..COLORS_Numbers.rangcrtdmg_var_rgb.." 远程"..COLORS_KWords_zh_cn.Crit_dmg_r_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。")),

		--[+ VOLATILE +]--
		-- Plasma Gun -- 2.5% | 3% | 3.5% | 4% (up to 20%)
			create_template("weap_wbr027_desc_ext_en",
				{"loc_trait_bespoke_lower_overheat_gives_faster_charge_desc"}, {"en"},
					loc_text(COLORS_Numbers.p_chrgspd_var_rgb.." Charge Speed on low Overheat. Stacks up to "..COLORS_Numbers.stacks_var_rgb.." times.")), -- charge_speed: +4%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr027_desc_ext_fr",
				{"loc_trait_bespoke_lower_overheat_gives_faster_charge_desc"}, {"fr"},
					loc_text(COLORS_Numbers.p_chrgspd_var_rgb.." de vitesse de charge lorsque votre surcharge est basse. Se cumule jusqu'à "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Испарение
			create_template("weap_wbr027_desc_ext_ru",
				{"loc_trait_bespoke_lower_overheat_gives_faster_charge_desc"}, {"ru"},
					loc_text(COLORS_Numbers.p_chrgspd_var_rgb.." к скорости зарядки при низком "..COLORS_KWords_ru.Heat2_rgb_ru..". Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 熱力震盪 +]--
			-- 電漿槍 -- 2.5% | 3% | 3.5% | 4% (up to 20%)
			create_template("weap_wbr027_desc_ext_tw",
				{"loc_trait_bespoke_lower_overheat_gives_faster_charge_desc"}, {"zh-tw"},
					loc_text("在 "..COLORS_KWords_tw.Heat_rgb_tw.." 較低時，充能速度 "..COLORS_Numbers.p_chrgspd_var_rgb.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 易挥发 +]--
			create_template("weap_wbr027_desc_ext_zh_cn",
				{"loc_trait_bespoke_lower_overheat_gives_faster_charge_desc"}, {"zh-cn"},
					loc_text("随"..COLORS_KWords_zh_cn.Heat2_rgb_zh_cn.."增长减少层数，\n每层 "..COLORS_Numbers.p_chrgspd_var_rgb.." 充能速度，最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ BLAZE AWAY +]-- ALT
		-- Autopistol, Heavy Stubbers, Grenadier Gauntlet, Plasma Gun -- 5% | 6% | 7% | 8% (up to +40%)
		-- Kickback, Rumbler -- 6% | 7% | 8% | 9% (up to +45%)
			create_template("weap_wbr028_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_on_continuous_fire_alternative_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." for every shot fired during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +8%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr028_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_on_continuous_fire_alternative_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pour chaque tir effectué en tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Стрельба без устали -- ALT -- руоф Энтузиазм
			create_template("weap_wbr028_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_on_continuous_fire_alternative_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." за каждый выстрел, сделанный во время непрерывной стрельбы. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 連續發射 +]--
			-- 撕裂者自動手槍, 雙鏈重型機槍, 擲彈兵臂鎧, 電漿槍 -- 5% | 6% | 7% | 8% (up to +40%)
			-- 反衝者, 震盪槍 -- 6% | 7% | 8% | 9% (up to +45%)
			create_template("weap_wbr028_desc_ext_tw",
				{"loc_trait_bespoke_power_bonus_on_continuous_fire_alternative_desc"}, {"zh-tw"},
					loc_text("持續射擊時，每射出一發 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 连续射击 +]--
			create_template("weap_wbr028_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_on_continuous_fire_alternative_desc"}, {"zh-cn"},
					loc_text("连续射击期间，每次射击 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ RISING HEAT +]--
		-- Plasma Gun -- 1.5% | 2% | 3% | 4% (up to +20%)
			create_template("weap_wbr029_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_scaled_on_heat_desc"}, {"en"},
					loc_text("Up to "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Strength_rgb.." scaling with "..COLORS_KWords.Heat_rgb.." Level."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +8%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr029_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_scaled_on_heat_desc"}, {"fr"},
					loc_text("Jusqu'à "..COLORS_Numbers.dmg_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." en fonction du niveau de "..COLORS_KWords_fr.Heat_rgb_fr.."."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Нарастающий жар -- руоф Сильная жара
			create_template("weap_wbr029_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_scaled_on_heat_desc"}, {"ru"},
					loc_text("До "..COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." в зависимости от уровня "..COLORS_KWords_ru.Heat_rgb_ru.."."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 升溫 +]--
			-- 電漿槍 -- 1.5% | 2% | 3% | 4% (up to +20%)
			create_template("weap_wbr029_desc_ext_tw",
				{"loc_trait_bespoke_power_bonus_scaled_on_heat_desc"}, {"zh-tw"},
					loc_text("依據 "..COLORS_KWords_tw.Heat_rgb_tw.." 等級，最多 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 急剧升温 +]--
			create_template("weap_wbr029_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_scaled_on_heat_desc"}, {"zh-cn"},
					loc_text("随"..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."增长提升效果\n，最高 "..COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ OPTIMISED COOLING +]--
		-- Plasma Gun -- 4% | 6% | 8% | 10% (up to ~41%)
			create_template("weap_wbr030_desc_ext_en",
				{"loc_trait_bespoke_reduced_heat_on_continuous_desc"}, {"en"},
					loc_text("Increased Charge Speed scaling inversely with "..COLORS_KWords.Heat_rgb.." Level.")), -- colors
			--[+ French +]--
			create_template("weap_wbr030_desc_ext_fr",
				{"loc_trait_bespoke_reduced_heat_on_continuous_desc"}, {"fr"},
					loc_text("Vitesse de chargement augmentée inversement proportionnelle au niveau de "..COLORS_KWords_fr.Heat_rgb_fr..".")),
			--[+ Russian +]-- Оптимизированное охлаждение
			create_template("weap_wbr030_desc_ext_ru",
				{"loc_trait_bespoke_reduced_heat_on_continuous_desc"}, {"ru"},
					loc_text("При серии прицельных выстрелов вы получаете до "..COLORS_Numbers.n_5_rgb.." зарядов, понижающих набор "..COLORS_KWords_ru.Heat_rgb_ru..".")),
			--[+ Traditional Chinese - 優化冷卻 +]--
			-- 電漿槍 -- 4% | 6% | 8% | 10% (up to ~41%)
			create_template("weap_wbr030_desc_ext_tw",
				{"loc_trait_bespoke_reduced_heat_on_continuous_desc"}, {"zh-tw"},
					loc_text("連續精準射擊時，\n降低 "..COLORS_KWords_tw.Heat_rgb_tw.." 提升速度。上限 "..COLORS_Numbers.n_5_rgb.." 層。")),
			--[+ Simplified Chinese - 优化冷却 +]--
			create_template("weap_wbr030_desc_ext_zh_cn",
				{"loc_trait_bespoke_reduced_heat_on_continuous_desc"}, {"zh-cn"},
					loc_text("连续射击期间，每次射击减少"..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."积累。最多叠加 "..COLORS_Numbers.n_5_rgb.." 层。")),

		--[+ FOCUSED COOLING +]--
		-- Plasma Gun -- 30% | 40% | 50% | 60%
			create_template("weap_wbr031_desc_ext_en",
				{"loc_trait_bespoke_reduced_overheat_on_crits_desc"}, {"en"},
					loc_text(COLORS_Numbers.heat_pc_var_rgb.." "..COLORS_KWords.Heat_rgb.." generation on "..COLORS_KWords.Crit_hit_rgb..".")), -- colors
			--[+ French +]--
			create_template("weap_wbr031_desc_ext_fr",
				{"loc_trait_bespoke_reduced_overheat_on_crits_desc"}, {"fr"},
					loc_text(COLORS_Numbers.heat_pc_var_rgb.." de génération de "..COLORS_KWords_fr.Heat_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr..".")),
			--[+ Russian +]-- Сфокусированное охлаждение -- руоф Сосредоточенное охлаждение
			create_template("weap_wbr031_desc_ext_ru",
				{"loc_trait_bespoke_reduced_overheat_on_crits_desc"}, {"ru"},
					loc_text(COLORS_Numbers.heat_pc_var_rgb.." "..COLORS_KWords_ru.Heat_rgb_ru.." генерируется при "..COLORS_KWords_ru.Crit_hit_rgb_ru..".")),
			--[+ Traditional Chinese - 專注冷卻 +]--
			-- 電漿槍 -- 30% | 40% | 50% | 60%
			create_template("weap_wbr031_desc_ext_tw",
				{"loc_trait_bespoke_reduced_overheat_on_crits_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Crit_rgb_tw.." 時，產生的 "..COLORS_KWords_tw.Heat_rgb_tw.." 僅 "..COLORS_Numbers.heat_pc_var_rgb.."。")),
			--[+ Simplified Chinese - 专注冷却 +]--
			create_template("weap_wbr031_desc_ext_zh_cn",
				{"loc_trait_bespoke_reduced_overheat_on_crits_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时，减少 "..COLORS_Numbers.heat_pc_var_rgb.." "..COLORS_KWords_zh_cn.Heat_rgb_zh_cn.."积累。")),


-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		--[+ GAUNTLET MOMENTUM +]--
		-- Grenadier Gauntlet -- 5% | 5% | 5% | 5% (up to +50%) (bugged)
			create_template("weap_wbr032_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_on_chained_melee_desc"}, {"en"},
					loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_1_rgb.." Stack of "..COLORS_Numbers.pwr_var_rgb.." Melee "..COLORS_KWords.Strength_rgb.." is added for each chained Melee hit with the Gauntlet. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. Stack lasts for "..COLORS_Numbers.time_var_rgb.." seconds. {#color(255, 35, 5)}(bugged:5% all tiers){#reset()}"..COLORS_KWords.Pwr_note_rgb)), -- power: 5%, stacks: 10, time: 1.5 -- rewrite -- colors
			--[+ French +]--
			create_template("weap_wbr032_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_on_chained_melee_desc"}, {"fr"},
					loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_1_rgb.." cumul de "..COLORS_Numbers.pwr_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." de mélée, est ajouté pour chaque attaque de mélée avec le Gantelet. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. Les cumuls dure "..COLORS_Numbers.time_var_rgb.." secondes. {#color(255, 35, 5)}(bug:5% tout les niveaux de la bénédiction){#reset()}"..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Импульс перчатки -- руоф Перчатка моментума
			create_template("weap_wbr032_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_on_chained_melee_desc"}, {"ru"},
					loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_1_rgb.." заряд на "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pwr_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." ближнего боя добавляется за каждый удар Перчаткой в ближнем бою в серии ударов. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз. Заряды держатся "..COLORS_Numbers.time_var_rgb.." секунды. {#color(255, 35, 5)}(Баг: 5% на всех уровнях){#reset()}"..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 交叉動量 +]--
			-- 擲彈兵臂鎧 -- 5% | 5% | 5% | 5% (up to +50%) (bugged)
			create_template("weap_wbr032_desc_ext_tw",
				{"loc_trait_bespoke_power_bonus_on_chained_melee_desc"}, {"zh-tw"},
					loc_text("連續近戰攻擊時， "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_1_rgb.." 層 "..COLORS_KWords_tw.Strength_m_rgb_tw.." 。\n每層 "..COLORS_Numbers.pwr_var_rgb.." 的 "..COLORS_KWords_tw.Strength_m_rgb_tw.." ，上限 "..COLORS_Numbers.stacks_var_rgb.." 層，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。\n{#color(255, 35, 5)}（已知問題：所有等級皆為 5%）{#reset()}" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 挑战势头 +]--
			create_template("weap_wbr032_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_on_chained_melee_desc"}, {"zh-cn"},
					loc_text("臂铠近战攻击命中敌人时\n"..COLORS_Numbers.pwr_var_rgb.." 臂铠近战"..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。{#color(255, 35, 5)}\n（BUG：无论祝福级别如何，\n数值始终为 +5% 强度。）{#reset()}"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),
-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! BUGGED !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


		--[+ PULVERISE +]--
		-- Grenadier Gauntlet -- 10% | 15% | 20% | 25%
			create_template("weap_wbr033_desc_ext_en",
				{"loc_trait_bespoke_crit_chance_on_melee_kill_desc"}, {"en"},
					loc_text(COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords.Crit_chance_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Melee Kill.")), -- crit_chance: +25%, time: 3 -- colors
			--[+ French +]--
			create_template("weap_wbr033_desc_ext_fr",
				{"loc_trait_bespoke_crit_chance_on_melee_kill_desc"}, {"fr"},
					loc_text(COLORS_Numbers.crit_var_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant "..COLORS_Numbers.time_var_rgb.." secondes lors d'un élimination en mélée.")),
			--[+ Russian +]-- Измельчение -- руоф Пульверизация
			create_template("weap_wbr033_desc_ext_ru",
				{"loc_trait_bespoke_crit_chance_on_melee_kill_desc"}, {"ru"},
					loc_text(COLORS_Numbers.crit_var_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунды при убийстве в ближнем бою.")),
			--[+ Traditional Chinese - 粉碎 +]--
			-- 擲彈兵臂鎧 -- 10% | 15% | 20% | 25%
			create_template("weap_wbr033_desc_ext_tw",
				{"loc_trait_bespoke_crit_chance_on_melee_kill_desc"}, {"zh-tw"},
					loc_text("近戰擊殺時 "..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 粉碎 +]--
			create_template("weap_wbr033_desc_ext_zh_cn",
				{"loc_trait_bespoke_crit_chance_on_melee_kill_desc"}, {"zh-cn"},
					loc_text("臂铠近战攻击击杀敌人时\n"..COLORS_Numbers.crit_var_rgb.." "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。")),

		--[+ DISRUPTIVE +]--
		-- Grenadier Gauntlet -- 15% | 20% | 25% | 30%
			create_template("weap_wbr034_desc_ext_en",
				{"loc_trait_bespoke_melee_power_bonus_after_explosion_desc"}, {"en"},
					loc_text("Hitting at least "..COLORS_Numbers.n_3_rgb.." enemies with your secondary attack grants "..COLORS_Numbers.pwrlvl_var_rgb.." bonus to "..COLORS_KWords.Strength_rgb.." on Melee attacks for "..COLORS_Numbers.time_var_rgb.." seconds."..COLORS_KWords.Pwr_note_rgb)), -- power_level: 30%, time: 3.5 -- colors
			--[+ French +]--
			create_template("weap_wbr034_desc_ext_fr",
				{"loc_trait_bespoke_melee_power_bonus_after_explosion_desc"}, {"fr"},
					loc_text("Toucher au moins "..COLORS_Numbers.n_3_rgb.." ennemies avec votre attaque secondaire vous octroie "..COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pour vos attaque de mélée pendant "..COLORS_Numbers.time_var_rgb.." secondes."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Разрывной эффект
			create_template("weap_wbr034_desc_ext_ru",
				{"loc_trait_bespoke_melee_power_bonus_after_explosion_desc"}, {"ru"},
					loc_text("Попадание как минимум по "..COLORS_Numbers.n_3_rgb.." врагам вашей вторичной атакой даёт "..COLORS_Numbers.pwrlvl_var_rgb.." прибавку к "..COLORS_KWords_ru.Strength_rgb_ru.." для атак ближнего боя на "..COLORS_Numbers.time_var_rgb.." секунды."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 顛覆性力量 +]--
			-- 擲彈兵臂鎧 -- 15% | 20% | 25% | 30%
			create_template("weap_wbr034_desc_ext_tw",
				{"loc_trait_bespoke_melee_power_bonus_after_explosion_desc"}, {"zh-tw"},
					loc_text("當次要攻擊命中至少 "..COLORS_Numbers.n_3_rgb.." 名敵人時，\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_m_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 破坏者 +]--
			create_template("weap_wbr034_desc_ext_zh_cn",
				{"loc_trait_bespoke_melee_power_bonus_after_explosion_desc"}, {"zh-cn"},
					loc_text("次要攻击命中至少 "..COLORS_Numbers.n_3_rgb.." 名敌人时，\n"..COLORS_Numbers.pwrlvl_var_rgb.." 近战"..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续"..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ EXPLOSIVE OFFENSIVE +]--
		-- Grenadier Gauntlet -- 6% | 9% | 12% | 15%
			create_template("weap_wbr035_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_after_weapon_special_multiple_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." bonus for "..COLORS_Numbers.time_var_rgb.." seconds after hitting multiple enemies with your weapon special explosion."..COLORS_KWords.Pwr_note_rgb)), -- power_level: 15%, time: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr035_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_after_weapon_special_multiple_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." bonus pendant "..COLORS_Numbers.time_var_rgb.." secondes après avoir touché plusieurs ennemies avec l'explosion spéciale de votre arme."..COLORS_KWords.Pwr_note_rgb)),
			--[+ Russian +]-- Взрывное наступление
			create_template("weap_wbr035_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_after_weapon_special_multiple_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." на "..COLORS_Numbers.time_var_rgb.." секунд после попадания взрывом специальной атаки по нескольким врагам."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 爆炸使我強大 +]--
			-- 擲彈兵臂鎧 -- 6% | 9% | 12% | 15%
			create_template("weap_wbr035_desc_ext_tw",
				{"loc_trait_bespoke_power_bonus_after_weapon_special_multiple_desc"}, {"zh-tw"},
					loc_text("特殊攻擊的爆炸命中多名敵人時，\n "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 爆炸攻势 +]--
			create_template("weap_wbr035_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_after_weapon_special_multiple_desc"}, {"zh-cn"},
					loc_text("特殊攻击爆炸命中至少 "..COLORS_Numbers.n_3_rgb.." 名敌人时，\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。持续"..COLORS_Numbers.time_var_rgb.."秒。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ PINPOINTING TARGET +]--
		-- Grenadier Gauntlet -- 5% | 6% | 7% | 8% (up to +40%)
			create_template("weap_wbr036_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_based_on_charge_time_ranged_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." every "..COLORS_Numbers.time_var_rgb.." seconds while aiming. Stacks "..COLORS_Numbers.stacks_var_rgb.." times. Discharges All Stacks upon firing."..COLORS_KWords.Pwr_note_rgb)), -- power_level: 15%, time: 5, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr036_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_based_on_charge_time_ranged_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." toutes les "..COLORS_Numbers.time_var_rgb.." secondes pendant la visée. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois. Tous les cumuls sont déchargés lorsque vous tirez."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Бомбардировка цели -- руоф Определение цели
			create_template("weap_wbr036_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_based_on_charge_time_ranged_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." каждые "..COLORS_Numbers.time_var_rgb.." секунды пока вы целитесь. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз. Сбрасывает все заряды при выстреле."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 精確定位 +]--
			-- 擲彈兵臂鎧 -- 5% | 6% | 7% | 8% (up to +40%)
			create_template("weap_wbr036_desc_ext_tw",
				{"loc_trait_bespoke_power_bonus_based_on_charge_time_ranged_desc"}, {"zh-tw"},
					loc_text("持續瞄準時，\n每 "..COLORS_Numbers.time_var_rgb.." 秒 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。射擊後會重置所有層數。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 精确定位 +]--
			create_template("weap_wbr036_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_based_on_charge_time_ranged_desc"}, {"zh-cn"},
					loc_text("瞄准期间，每 "..COLORS_Numbers.time_var_rgb.." 秒 "..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层，射击后清空所有层数。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ CHARMED RELOAD +]--
		-- Heavy Stubbers -- 2 | 3 | 4 | 5
			create_template("weap_wbr037_desc_ext_en",
				{"loc_trait_bespoke_ammo_refill_from_reserve_on_crit_desc"}, {"en"},
					loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.blltam_var_rgb.." bullets loaded from Reserve on "..COLORS_KWords.Crit_hit_rgb..".")), -- bullet_amount: +5 -- colors
			--[+ French +]--
			create_template("weap_wbr037_desc_ext_fr",
				{"loc_trait_bespoke_ammo_refill_from_reserve_on_crit_desc"}, {"fr"},
					loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.blltam_var_rgb.." Munitions chargées depuis la réserve lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr..".")),
			--[+ Russian +]-- Зачарованная перезарядка
			create_template("weap_wbr037_desc_ext_ru",
				{"loc_trait_bespoke_ammo_refill_from_reserve_on_crit_desc"}, {"ru"},
					loc_text(COLORS_Numbers.blltam_var_rgb.." патронов заряжается из резерва при "..COLORS_KWords_ru.Crit_hit_rgb_ru..".")),
			--[+ Traditional Chinese - 魔力彈藥 +]--
			-- 雙鏈重型機槍 -- 2 | 3 | 4 | 5
			create_template("weap_wbr037_desc_ext_tw",
				{"loc_trait_bespoke_ammo_refill_from_reserve_on_crit_desc"}, {"zh-tw"},
					loc_text(COLORS_KWords_tw.Crit_hit_rgb_tw.." ，從備彈中補充 "..COLORS_Numbers.blltam_var_rgb.." 發子彈。")),
			--[+ Simplified Chinese - 魅惑重装 +]--
			create_template("weap_wbr037_desc_ext_zh_cn",
				{"loc_trait_bespoke_ammo_refill_from_reserve_on_crit_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Crit_hit_rgb_zh_cn.."时，从弹药储备填装 "..COLORS_Numbers.blltam_var_rgb.." 枚弹药。")),

		--[+ OVERWHELMING FIRE +]--
		-- Heavy Stubbers -- 7% | 8% | 9% | 10% (up to +50%)
			create_template("weap_wbr038_desc_ext_en",
				{"loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords.Strength_rgb.." for every "..COLORS_Numbers.hit_var_rgb.." Single Target Hits. Lasts "..COLORS_Numbers.time_var_rgb.." seconds and Stacks "..COLORS_Numbers.stacks_var_rgb.." times."..COLORS_KWords.Pwr_note_rgb)), -- power: +10%, hit: 4, time: 2, stacks: 5 -- s->seconds -- colors
			--[+ French +]--
			create_template("weap_wbr038_desc_ext_fr",
				{"loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwr_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." pour toutes les "..COLORS_Numbers.hit_var_rgb.." attaques sur une cible unique. Dure "..COLORS_Numbers.time_var_rgb.." secondes et se cumule "..COLORS_Numbers.stacks_var_rgb.." fois."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Подавляющий огонь -- руоф Огонь на поражение
			create_template("weap_wbr038_desc_ext_ru",
				{"loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwr_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." за каждые "..COLORS_Numbers.hit_var_rgb.." поражённых врага. Длится "..COLORS_Numbers.time_var_rgb.." секунды и суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 壓倒性火力 +]--
			-- 雙鏈重型機槍 -- 7% | 8% | 9% | 10% (up to +50%)
			create_template("weap_wbr038_desc_ext_tw",
				{"loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target_desc"}, {"zh-tw"},
					loc_text("每命中同一目標 "..COLORS_Numbers.hit_var_rgb.." 次 "..COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords_tw.Strength_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 狂猛火力 +]--
			create_template("weap_wbr038_desc_ext_zh_cn",
				{"loc_trait_bespoke_power_bonus_on_chained_hits_on_single_target_desc"}, {"zh-cn"},
				loc_text("每命中同一敌人 "..COLORS_Numbers.hit_var_rgb.." 次 "..COLORS_Numbers.pwr_var_rgb.." "..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，\n持续 "..COLORS_Numbers.time_var_rgb.." 秒。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ CAN OPENER +]--
		-- Ripper Guns -- 10 | 12 | 14 | 16
			create_template("weap_wbr039_desc_ext_en",
				{"loc_trait_bespoke_armor_rending_bayonette_desc"}, {"en"},
					loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." Stacks of "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords.Brittleness_rgb.." is applied to the enemy on weapon Special Hit. Lasts "..COLORS_Numbers.time_var_rgb.." seconds. Max "..COLORS_Numbers.maxstks_var_rgb.." Stacks, up to "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords.Brtl_note_rgb)), -- rending: 2.5%, stacks: 16, time: 5, max_stacks: 16 -- s->seconds -- rewrite -- colors
			--[+ French +]--
			create_template("weap_wbr039_desc_ext_fr",
				{"loc_trait_bespoke_armor_rending_bayonette_desc"}, {"fr"},
					loc_text("Toucher un ennemi avec l'attaque spéciale lui octroie"..COLORS_Numbers.stacks_var_rgb.." cumuls de "..COLORS_Numbers.rending_var_rgb.." de "..COLORS_KWords_fr.Brittleness_rgb_fr..". Dure "..COLORS_Numbers.time_var_rgb.." secondes. Pour un maximum de "..COLORS_Numbers.maxstks_var_rgb.." cumuls, Pour un total de "..COLORS_Numbers.pc_40_rgb.."."..COLORS_KWords_fr.Brtl_note_rgb_fr)),
			--[+ Russian +]-- Открывашка
			create_template("weap_wbr039_desc_ext_ru",
				{"loc_trait_bespoke_armor_rending_bayonette_desc"}, {"ru"},
					loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." зарядов по "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." применяется к врагу при ударе специальной атакой. Длится "..COLORS_Numbers.time_var_rgb.." секунд. Максимум до "..COLORS_Numbers.pc_40_rgb.." при "..COLORS_Numbers.maxstks_var_rgb.." зарядах.????????????"..COLORS_KWords_ru.Brtl_note_rgb_ru)),
			--[+ Traditional Chinese - 開罐器 +]--
			-- 撕裂槍 -- 10 | 12 | 14 | 16
			create_template("weap_wbr039_desc_ext_tw",
				{"loc_trait_bespoke_armor_rending_bayonette_desc"}, {"zh-tw"},
					loc_text("特殊攻擊命中敵人時，\n使其獲得 "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.stacks_var_rgb.." 層 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_tw.Brittleness_rgb_tw.."，\n持續 "..COLORS_Numbers.time_var_rgb.." 秒， "..COLORS_Numbers.maxstks_var_rgb.." 層時為 "..COLORS_Numbers.pc_40_rgb.."。" .. COLORS_KWords_tw.Brtl_note_rgb_tw)),
			--[+ Simplified Chinese - 开罐器 +]--
			create_template("weap_wbr039_desc_ext_zh_cn",
				{"loc_trait_bespoke_armor_rending_bayonette_desc"}, {"zh-cn"},
					loc_text("特殊攻击命中时，对目标施加 "..COLORS_Numbers.stacks_var_rgb.." 层 "..COLORS_Numbers.rending_var_rgb.." "..COLORS_KWords_zh_cn.Brittleness_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。\n最多叠加 "..COLORS_Numbers.maxstks_var_rgb.." 层，最高 "..COLORS_Numbers.pc_40_rgb.."。"..COLORS_KWords_zh_cn.Brtl_note_rgb_zh_cn)),

		--[+ BORN IN BLOOD +]--
		-- Ripper Guns -- 4.5% | 5% | 5.5% | 6%
			create_template("weap_wbr040_desc_ext_en",
				{"loc_trait_bespoke_toughness_on_close_range_kills_desc"}, {"en"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." on Kill at a distance of up to "..COLORS_Numbers.n_12_5_rgb.." meters.")), -- toughness: +6% -- colors
			--[+ French +]--
			create_template("weap_wbr040_desc_ext_fr",
				{"loc_trait_bespoke_toughness_on_close_range_kills_desc"}, {"fr"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une élimination à moins de "..COLORS_Numbers.n_12_5_rgb.." mètres.")),
			--[+ Russian +]-- Рождённый в крови -- руоф РождЕнный в крови
			create_template("weap_wbr040_desc_ext_ru",
				{"loc_trait_bespoke_toughness_on_close_range_kills_desc"}, {"ru"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." при убийстве на дистанции до "..COLORS_Numbers.n_12_5_rgb.." метров.")),
			--[+ Traditional Chinese - 浴血而生 +]--
			-- 撕裂槍 -- 4.5% | 5% | 5.5% | 6%
			create_template("weap_wbr040_desc_ext_tw",
				{"loc_trait_bespoke_toughness_on_close_range_kills_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.n_12_5_rgb.." 公尺內擊殺敵人 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."。")),
			--[+ Simplified Chinese - 浴血而生 +]--
			create_template("weap_wbr040_desc_ext_zh_cn",
				{"loc_trait_bespoke_toughness_on_close_range_kills_desc"}, {"zh-cn"},
					loc_text("击杀 "..COLORS_Numbers.n_12_5_rgb.." 米内的敌人时，"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.." "..COLORS_Numbers.tghns_var_rgb.."。")),

		--[+ PIERCE +]--
		-- Kickback, Rumbler -- 10% | 15% | 20% | 25%
			create_template("weap_wbr041_desc_ext_en",
				{"loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger_desc"}, {"en"},
					loc_text("Special Attacks gain "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords.Stagger_rgb.." and ignore "..COLORS_KWords.Hit_mass_rgb.." Bonus from Armour.")), -- stagger: +25% -- colors
			--[+ French +]--
			create_template("weap_wbr041_desc_ext_fr",
				{"loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger_desc"}, {"fr"},
					loc_text("L'attaque spéciale gagne "..COLORS_Numbers.stgr_var_rgb.." de "..COLORS_KWords_fr.Stagger_rgb_fr.." et ignore le "..COLORS_KWords_fr.Hit_mass_rgb_fr.." de l'armure.")),
			--[+ Russian +]-- Пробивание -- руоф Прокол
			create_template("weap_wbr041_desc_ext_ru",
				{"loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger_desc"}, {"ru"},
					loc_text("Специальные атаки дают "..COLORS_Numbers.stgr_var_rgb.." к "..COLORS_KWords_ru.Stagger2_rgb_ru.." и игнорируют "..COLORS_KWords_ru.Hit_mass_rgb_ru.." врага от брони.")),
			--[+ Traditional Chinese - 穿透 +]--
			-- 反衝者, 震盪槍 -- 10% | 15% | 20% | 25%
			create_template("weap_wbr041_desc_ext_tw",
				{"loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger_desc"}, {"zh-tw"},
					loc_text("武器特殊攻擊可無視敵方護甲 "..COLORS_KWords_tw.Hit_mass_rgb_tw.."，\n並附加 "..COLORS_Numbers.stgr_var_rgb.." 的 "..COLORS_KWords_tw.Stagger2_rgb_tw.." 。")),
			--[+ Simplified Chinese - 穿透 +]--
				create_template("weap_wbr041_desc_ext_zh_cn",
				{"loc_trait_bespoke_pass_trough_armor_on_weapon_special_and_stagger_desc"}, {"zh-cn"},
					loc_text("特殊攻击 "..COLORS_Numbers.stgr_var_rgb.." "..COLORS_KWords_zh_cn.Impact_rgb_zh_cn.."，\n同时无视装甲赋予的"..COLORS_KWords_zh_cn.Hit_mass_rgb_zh_cn.."。"..COLORS_KWords_zh_cn.Hit_Mass_note_rgb_zh_cn)),

		--[+ PUNISHING FIRE +]--
		-- Kickback -- 6% | 9% | 12% | 15%
			create_template("weap_wbr042_desc_ext_en",
				{"loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords.Strength_rgb.." Bonus on your Ranged attack for "..COLORS_Numbers.time_var_rgb.." seconds after "..COLORS_KWords.Cleaving_rgb.." through several enemies with your weapon's Special attack."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +15%, time: 3 -- colors
			--[+ French +]--
			create_template("weap_wbr042_desc_ext_fr",
				{"loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." sur vos attaques à distance pendant "..COLORS_Numbers.time_var_rgb.." secondes après avoir "..COLORS_KWords_fr.Cleaving_rgb_fr.." plusieurs ennemies avec l'attaque spéciale de votre arme."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Карательный обстрел
			create_template("weap_wbr042_desc_ext_ru",
				{"loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." для ваших дальнобойных атак на "..COLORS_Numbers.time_var_rgb.." секунды после того как специальная атака вашего оружия пробивает несколько врагов."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 懲罰射擊 +]--
			-- 反衝者 -- 6% | 9% | 12% | 15%
			create_template("weap_wbr042_desc_ext_tw",
				{"loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave_desc"}, {"zh-tw"},
					loc_text("特殊攻擊貫穿(順劈)多名敵人\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_r_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 惩罚之火 +]--
				create_template("weap_wbr042_desc_ext_zh_cn",
				{"loc_trait_bespoke_shot_power_bonus_after_weapon_special_cleave_desc"}, {"zh-cn"},
					loc_text("特殊攻击命中至少 "..COLORS_Numbers.n_3_rgb.." 名敌人时\n"..COLORS_Numbers.pwrlvl_var_rgb.." 远程"..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ INSPIRING BARRAGE +]-- ALT
		-- Kickback -- 1% | 2% | 3% | 4% (up to 20%)
			create_template("weap_wbr043_desc_ext_en",
				{"loc_trait_bespoke_toughness_on_continuous_fire_alternative_desc"}, {"en"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords.Toughness_rgb.." for every shot fired during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- toughness: +4%, ammo: 10%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr043_desc_ext_fr",
				{"loc_trait_bespoke_toughness_on_continuous_fire_alternative_desc"}, {"fr"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour chaque tir lors d'un tir continu. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Вдохновляющий обстрел -- ALT -- руоф Вдохновляющий натиск
			create_template("weap_wbr043_desc_ext_ru",
				{"loc_trait_bespoke_toughness_on_continuous_fire_alternative_desc"}, {"ru"},
					loc_text(COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." за каждый выстрел, сделанный во время непрерывной стрельбы. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 激勵彈幕 +]--
			-- 反衝者 -- 1% | 2% | 3% | 4% (up to 20%)
			create_template("weap_wbr043_desc_ext_tw",
				{"loc_trait_bespoke_toughness_on_continuous_fire_alternative_desc"}, {"zh-tw"},
					loc_text("持續射擊時，每射一發恢復 "..COLORS_Numbers.tghns_var_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."，\n上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 鼓舞弹幕 +]--
			create_template("weap_wbr043_desc_ext_zh_cn",
				{"loc_trait_bespoke_toughness_on_continuous_fire_alternative_desc"}, {"zh-cn"},
					loc_text("连续射击期间，每次射击回复"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn..",\n每叠加 "..COLORS_Numbers.n_1_rgb.." 层，"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."回复效果 "..COLORS_Numbers.tghns_var_rgb.."。\n最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),

		--[+ EXPANSIVE +]--
		-- Kickback -- 30% | 34% | 38% | 42%
			create_template("weap_wbr044_desc_ext_en",
				{"loc_trait_bespoke_weapon_special_power_bonus_after_one_shots_desc"}, {"en"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." Melee "..COLORS_KWords.Strength_rgb.." for "..COLORS_Numbers.time_var_rgb.." seconds on Hitting "..COLORS_Numbers.n_3_rgb..COLORS_Numbers.n_plus_rgb.." Enemies with a Ranged Attack."..COLORS_KWords.Pwr_note_rgb)), -- power_level: +42%, time: 3.5 -- s->seconds -- "+30%Melee Power for  3.5s"->"+30% Melee Power for 3.5 seconds" -- colors
			--[+ French +]--
			create_template("weap_wbr044_desc_ext_fr",
				{"loc_trait_bespoke_weapon_special_power_bonus_after_one_shots_desc"}, {"fr"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." de "..COLORS_KWords_fr.Strength_rgb_fr.." de mélée pendant "..COLORS_Numbers.time_var_rgb.." secondes en touchant au moins "..COLORS_Numbers.n_3_rgb.." ennemies avec une attaque à distance."..COLORS_KWords_fr.Pwr_note_rgb_fr)),
			--[+ Russian +]-- Экспансивный -- руоф Расширение
			create_template("weap_wbr044_desc_ext_ru",
				{"loc_trait_bespoke_weapon_special_power_bonus_after_one_shots_desc"}, {"ru"},
					loc_text(COLORS_Numbers.pwrlvl_var_rgb.." к "..COLORS_KWords_ru.Strength_rgb_ru.." ближнего боя на "..COLORS_Numbers.time_var_rgb.." секунды при попадании по "..COLORS_Numbers.n_3_rgb.." и более врагам атакой дальнего боя."..COLORS_KWords_ru.Pwr_note_rgb_ru)),
			--[+ Traditional Chinese - 擴展性 +]--
			-- 反衝者 -- 30% | 34% | 38% | 42%
			create_template("weap_wbr044_desc_ext_tw",
				{"loc_trait_bespoke_weapon_special_power_bonus_after_one_shots_desc"}, {"zh-tw"},
					loc_text("遠程攻擊同時命中 "..COLORS_Numbers.n_3_rgb.." 名以上敵人\n"..COLORS_Numbers.pwrlvl_var_rgb.." "..COLORS_KWords_tw.Strength_m_rgb_tw.."，持續 "..COLORS_Numbers.time_var_rgb.." 秒。" .. COLORS_KWords_tw.Pwr_note_rgb_tw)),
			--[+ Simplified Chinese - 扩展 +]--
			create_template("weap_wbr044_desc_ext_zh_cn",
				{"loc_trait_bespoke_weapon_special_power_bonus_after_one_shots_desc"}, {"zh-cn"},
					loc_text("命中至少 "..COLORS_Numbers.n_3_rgb.." 名敌人时\n"..COLORS_Numbers.pwrlvl_var_rgb.." 近战"..COLORS_KWords_zh_cn.Strength_rgb_zh_cn.."，持续 "..COLORS_Numbers.time_var_rgb.." 秒。"..COLORS_KWords_zh_cn.Pwr_note_rgb_zh_cn)),

		--[+ SHRAPNEL +]--
		-- Rumbler -- 1 | 2 | 3 | 4
			create_template("weap_wbr045_desc_ext_en",
				{"loc_trait_bespoke_close_explosion_applies_bleed_desc"}, {"en"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." "..COLORS_KWords.Bleed_rgb.." Stacks from Close Range explosions.")), -- stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr045_desc_ext_fr",
				{"loc_trait_bespoke_close_explosion_applies_bleed_desc"}, {"fr"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." avec les explosions rapprochées.")),
			--[+ Russian +]-- Шрапнель
			create_template("weap_wbr045_desc_ext_ru",
				{"loc_trait_bespoke_close_explosion_applies_bleed_desc"}, {"ru"},
					loc_text(COLORS_Numbers.p_stacks_var_rgb.." заряда "..COLORS_KWords_ru.Bleed_rgb_ru.." от взрывов  на дистанции до "..COLORS_Numbers.n_12_5_rgb.." метров.")),
			--[+ Traditional Chinese - 破片四射 +]--
			-- 震盪槍 -- 1 | 2 | 3 | 4
			create_template("weap_wbr045_desc_ext_tw",
				{"loc_trait_bespoke_close_explosion_applies_bleed_desc"}, {"zh-tw"},
					loc_text(COLORS_Numbers.n_12_5_rgb.." 公尺內的爆炸會施加 "..COLORS_Numbers.p_stacks_var_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.."。")),
			--[+ Simplified Chinese - 弹片 +]--
			create_template("weap_wbr045_desc_ex_zh_cn",
				{"loc_trait_bespoke_close_explosion_applies_bleed_desc"}, {"zh-cn"},
					loc_text("低吼者的榴弹爆炸中心范围 "..COLORS_Numbers.p_stacks_var_rgb.." 层 "..COLORS_KWords_zh_cn.Bleed_rgb_zh_cn.."。")),

		--[+ BLAST ZONE +]--
		-- Rumbler -- 3% | 4% | 5% | 6% (up to +30%)
			create_template("weap_wbr046_desc_ext_en",
				{"loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire_desc"}, {"en"},
					loc_text(COLORS_Numbers.radius_var_rgb.." Explosion Radius for every shot fired during continuous fire. Stacks "..COLORS_Numbers.stacks_var_rgb.." times.")), -- radius: +6%, stacks: 5 -- colors
			--[+ French +]--
			create_template("weap_wbr046_desc_ext_fr",
				{"loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire_desc"}, {"fr"},
					loc_text(COLORS_Numbers.radius_var_rgb.." de rayon d'explosion pour chaque tir d'un tir continue. Se cumule "..COLORS_Numbers.stacks_var_rgb.." fois.")),
			--[+ Russian +]-- Зона взрыва
			create_template("weap_wbr046_desc_ext_ru",
				{"loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire_desc"}, {"ru"},
					loc_text(COLORS_Numbers.radius_var_rgb.." к радиусу взрыва за каждый выстрел, сделанный во время непрерывной стрельбы. Суммируется до "..COLORS_Numbers.stacks_var_rgb.." раз.")),
			--[+ Traditional Chinese - 狂轟猛炸 +]--
			-- 震盪槍 -- 3% | 4% | 5% | 6% (up to +30%)
			create_template("weap_wbr046_desc_ext_tw",
				{"loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire_desc"}, {"zh-tw"},
					loc_text("持續射擊時，\n每發可使爆炸半徑 "..COLORS_Numbers.radius_var_rgb.."，上限 "..COLORS_Numbers.stacks_var_rgb.." 層。")),
			--[+ Simplified Chinese - 爆炸区域 +]--
			create_template("weap_wbr046_desc_ext_zh_cn",
				{"loc_trait_bespoke_explosion_radius_bonus_on_continuous_fire_desc"}, {"zh-cn"},
					loc_text("连续射击期间，每次射击"..COLORS_Numbers.radius_var_rgb.."爆炸范围。最多叠加 "..COLORS_Numbers.stacks_var_rgb.." 层。")),
-- ↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑			Wrong description!			↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
-- Proofreading is needed!
-- Close Range is not 12.5m for this bless.

		--[+ ADHESIVE CHARGE +]--
		-- Rumbler -- 6% | 9% | 12% | 15%
			create_template("weap_wbr047_desc_ext_en",
				{"loc_trait_bespoke_grenades_stick_to_monsters_and_damage_desc"}, {"en"},
					loc_text(COLORS_Numbers.dmgvogrmon_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Ogryns and Monstrosities. Your Grenades Stick to Ogryns and Monstrosities.")), -- dmg_vs_ogryn_monster: +15% -- colors
			--[+ French +]--
			create_template("weap_wbr047_desc_ext_fr",
				{"loc_trait_bespoke_grenades_stick_to_monsters_and_damage_desc"}, {"fr"},
					loc_text(COLORS_Numbers.dmgvogrmon_var_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les Ogryns et les Monstruosités. Vos grenades s'accrochent aux Ogryns et Monstrosities.")),
			--[+ Russian +]-- Липкий заряд -- руоф Цепной заряд
			create_template("weap_wbr047_desc_ext_ru",
				{"loc_trait_bespoke_grenades_stick_to_monsters_and_damage_desc"}, {"ru"},
					loc_text(COLORS_Numbers.dmgvogrmon_var_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." Огринам и Монстрам. Ваши гранаты прилипают к Огринам и Монстрам.")),
			--[+ Traditional Chinese - 黏著炸藥 +]--
			-- 震盪槍 -- 6% | 9% | 12% | 15%
			create_template("weap_wbr047_desc_ext_tw",
				{"loc_trait_bespoke_grenades_stick_to_monsters_and_damage_desc"}, {"zh-tw"},
					loc_text("對歐格林與巨獸的 "..COLORS_KWords_tw.Damage_rgb_tw.." "..COLORS_Numbers.dmgvogrmon_var_rgb.."，\n且你的手榴彈會黏附在歐格林與怪物身上。")),
			--[+ Simplified Chinese - 粘性炸药 +]--
			create_template("weap_wbr047_desc_ext_zh_cn",
				{"loc_trait_bespoke_grenades_stick_to_monsters_and_damage_desc"}, {"zh-cn"},
					loc_text(COLORS_Numbers.dmgvogrmon_var_rgb.." 对欧格林和怪物"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。\n低吼者的榴弹会粘在欧格林和怪物身上。")),

		--[+ MARKSMAN'S REFLEX +]--
		-- Rumbler -- 15% | 20% | 25% | 30%
			create_template("weap_wbr048_desc_ext_en",
				{"loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed_desc"}, {"en"},
					loc_text(COLORS_Numbers.reload_var_rgb.." Reload Speed for "..COLORS_Numbers.dur_var_rgb.." seconds on Projectile "..COLORS_KWords.Weakspothit_rgb..".")), -- reload_speed: +30%, duration: 3 -- colors
			--[+ French +]--
			create_template("weap_wbr048_desc_ext_fr",
				{"loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed_desc"}, {"fr"},
					loc_text(COLORS_Numbers.reload_var_rgb.." de vitesse de rechargement pendant "..COLORS_Numbers.dur_var_rgb.." secondes lors d'un "..COLORS_KWords_fr.Weakspothit_rgb_fr..".")),
			--[+ Russian +]-- Рефлекс стрелка
			create_template("weap_wbr048_desc_ext_ru",
				{"loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed_desc"}, {"ru"},
					loc_text(COLORS_Numbers.reload_var_rgb.." к скорости перезарядки на "..COLORS_Numbers.dur_var_rgb.." секунды при попадании снаряда в "..COLORS_KWords_ru.Weakspot_rgb_ru..".")),
			--[+ Traditional Chinese - 迅雷反射 +]--
			-- 震盪槍 -- 15% | 20% | 25% | 30%
			create_template("weap_wbr048_desc_ext_tw",
				{"loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed_desc"}, {"zh-tw"},
					loc_text("當子彈命中 "..COLORS_KWords_tw.Weakspot_rgb_tw.." 時 "..COLORS_Numbers.reload_var_rgb.." 換彈速度，\n持續 "..COLORS_Numbers.dur_var_rgb.." 秒。")),
			--[+ Simplified Chinese - 神射手的反射 +]--
			create_template("weap_wbr048_desc_ext_zh_cn",
				{"loc_trait_bespoke_weakspot_projectile_hit_increases_reload_speed_desc"}, {"zh-cn"},
					loc_text(COLORS_KWords_zh_cn.Weakspothit_rgb_zh_cn.."时 "..COLORS_Numbers.reload_var_rgb.." 装弹速度，持续"..COLORS_Numbers.dur_var_rgb.."秒。")),
}



		-- ============ DO NOT DO ANYTHING BELOW! ============ --

--[+ Reload localization templates when the mod is enabled or disabled +]--
function mod.on_enabled()
	if WTL then
		WTL.reload_templates()
	end
end

function mod.on_disabled()
	if WTL then
		WTL.reload_templates()
	end
end

--[+ Return the localization templates +]--
return localization_templates