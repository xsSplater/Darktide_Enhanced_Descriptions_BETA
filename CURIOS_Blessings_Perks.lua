---@diagnostic disable: undefined-global
local mod = get_mod("Enhanced_descriptions")

--[+ Loading colors of Keywords and Numbers +]--
COLORS_Numbers = mod:io_dofile("Enhanced_descriptions/COLORS_Numbers")
-- All numbers are taken from this file by adding to the value "COLORS_Numbers."
-- For example, in the game the Damage value is taken from the variable {damage:%s}, which in the file "COLORS_Numbers.lua" is replaced by dmg_var_rgb and to add the highlighted number to the text, we write the damage number to the text as "..COLORS_Numbers.dmg_var_rgb.."

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

--[+ Define localization templates +]--
local localization_templates = {
-- Duplicate the line and translate. For example:
--		create_template("weap_bb0_ext_en", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies" end),
--		create_template("weap_bb0_ext_YOURLANGUAGE", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"YOURLANGUAGE"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." к "..COLORS_KWords.Damage_rgb_YOURLANGUAGE.." против врагов в противоосколочной броне." end), <- Don't forget the comma at the end!

--[+ +CURIOS - РЕЛИКВИИ - 珍品+ +]--
	--[+ Blessings - Благословения - 祝福 +]--
		--[+ +Health +]--
	create_template("curio_bless0_ext_en", {"loc_inate_gadget_health_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." Maximum "..COLORS_KWords.Health_rgb end),
	--[+ French +]--
	create_template("curio_bless0_ext_fr", {"loc_inate_gadget_health_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." de "..COLORS_KWords_fr.Health_rgb_fr.." Maximum" end),
	--[+ Russian +]--
	create_template("curio_bless0_ext_en", {"loc_inate_gadget_health_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." к максимальному "..COLORS_KWords_ru.Health_rgb_ru end),
	--[+ 生命 - Traditional Chinese +]--
	create_template("curio_bless0_ext_tw", {"loc_inate_gadget_health_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." 最大 "..COLORS_KWords_tw.Health_rgb_tw end),
	--[+ Simplified Chinese +]--
	create_template("curio_bless0_ext_zh_cn", {"loc_inate_gadget_health_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." 最大"..COLORS_KWords_zh_cn.Health_rgb_zh_cn.."  " end),

		--[+ +Wound +]--
	create_template("curio_bless1_ext_en", {"loc_inate_gadget_health_segment_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.maxwnds_rgb.." "..COLORS_KWords.Wound_rgb end),
	--[+ French +]--
	create_template("curio_bless1_ext_fr", {"loc_inate_gadget_health_segment_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.maxwnds_rgb.."  "..COLORS_KWords_fr.Wound_rgb_fr end),
	--[+ Russian +]--
	create_template("curio_bless1_ext_en", {"loc_inate_gadget_health_segment_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.maxwnds_rgb.." сегмент полоски "..COLORS_KWords_ru.Wound_rgb_ru end),
	--[+ 傷口 - Traditional Chinese +]--
	create_template("curio_bless1_ext_tw", {"loc_inate_gadget_health_segment_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.maxwnds_rgb.." "..COLORS_KWords_tw.Wound_rgb_tw end),
	--[+ Simplified Chinese +]--
	create_template("curio_bless1_ext_zh_cn", {"loc_inate_gadget_health_segment_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.maxwnds_rgb.." "..COLORS_KWords_zh_cn.Wound_rgb_zh_cn.."  " end),

		--[+ +Stamina +]--
	create_template("curio_bless2_ext_en", {"loc_inate_gadget_stamina_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.maxstam_rgb.." Maximum "..COLORS_KWords.Stamina_rgb end),
	--[+ French +]--
	create_template("curio_bless2_ext_fr", {"loc_inate_gadget_stamina_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.maxstam_rgb.." d'"..COLORS_KWords_fr.Stamina_rgb_fr.." Maximum" end),
	--[+ Russian +]--
	create_template("curio_bless2_ext_en", {"loc_inate_gadget_stamina_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.maxstam_rgb.." к максимальной "..COLORS_KWords_ru.Stamina_rgb_ru end),
	--[+ 耐力 - Traditional Chinese +]--
	create_template("curio_bless2_ext_tw", {"loc_inate_gadget_stamina_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.maxstam_rgb.." 最大 "..COLORS_KWords_tw.Stamina_rgb_tw end),
	--[+ Simplified Chinese +]--
	create_template("curio_bless2_ext_zh_cn", {"loc_inate_gadget_stamina_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.maxstam_rgb.." 最大"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn end),

		--[+ +Toughness +]--
	create_template("curio_bless3_ext_en", {"loc_inate_gadget_toughness_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." "..COLORS_KWords.Toughness_rgb end),
	--[+ French +]--
	create_template("curio_bless3_ext_fr", {"loc_inate_gadget_toughness_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr end),
	--[+ Russian +]--
	create_template("curio_bless3_ext_en", {"loc_inate_gadget_toughness_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." к максимальной "..COLORS_KWords_ru.Toughness_rgb_ru end),
	--[+ 韌性 - Traditional Chinese +]--
	create_template("curio_bless3_ext_tw", {"loc_inate_gadget_toughness_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw end),
	--[+ Simplified Chinese +]--
	create_template("curio_bless3_ext_zh_cn", {"loc_inate_gadget_toughness_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." 最大"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."  " end),

	--[+ Traits - Характеристики +]--
		--[+ +Combat Ability Regeneration +]--
	create_template("curio_traits0_ext_en", {"loc_gadget_cooldown_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.abil_cd_rgb.." "..COLORS_KWords.Combat_ability_rgb.." Regeneration" end),
	--[+ French +]--
	create_template("curio_traits0_ext_fr", {"loc_gadget_cooldown_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.abil_cd_rgb.." de régénération du "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr end),
	--[+ Russian +]--
	create_template("curio_traits0_ext_en", {"loc_gadget_cooldown_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.abil_cd_rgb.." к восстановлению "..COLORS_KWords_ru.Combat_ability_rgb_ru end),
	--[+ 戰鬥技能冷卻 - Traditional Chinese +]--
	create_template("curio_traits0_ext_tw", {"loc_gadget_cooldown_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.abil_cd_rgb.." "..COLORS_KWords_tw.Combat_ability_rgb_tw.." 冷卻" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits0_ext_zh_cn", {"loc_gadget_cooldown_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.abil_cd_rgb.." "..COLORS_KWords_zh_cn.Combat_ability_rgb_zh_cn.."回复" end),

		--[+ +Corruption Resistance +]--
	create_template("curio_traits1_ext_en", {"loc_gadget_corruption_resistance_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.corr_rgb.." "..COLORS_KWords.Corruption_rgb.." Resistance" end),
	--[+ French +]--
	create_template("curio_traits1_ext_fr", {"loc_gadget_corruption_resistance_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.corr_rgb.." de résistance à la "..COLORS_KWords_fr.Corruption_rgb_fr end),
	--[+ Russian +]--
	create_template("curio_traits1_ext_en", {"loc_gadget_corruption_resistance_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.corr_rgb.." к сопротивлению "..COLORS_KWords_ru.Corruption_rgb_ru end),
	--[+ 腐敗抗性 - Traditional Chinese +]--
	create_template("curio_traits1_ext_tw", {"loc_gadget_corruption_resistance_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.corr_rgb.." "..COLORS_KWords_tw.Corruption_rgb_tw.." 抗性" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits1_ext_zh_cn", {"loc_gadget_corruption_resistance_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.corr_rgb.." "..COLORS_KWords_zh_cn.Corruption_rgb_zh_cn.."抗性" end),

		--[+ +Corruption Resistance from Grimoires +]--
	create_template("curio_traits2_ext_en", {"loc_gadget_grim_corruption_resistance_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.corrgrm_rgb.." "..COLORS_KWords.Corruption_rgb.." Resistance from Grimoires" end),
	--[+ French +]--
	create_template("curio_traits2_ext_fr", {"loc_gadget_grim_corruption_resistance_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.corrgrm_rgb.." de résistance à la "..COLORS_KWords_fr.Corruption_rgb_fr.." (Grimoires)" end),
	--[+ Russian +]--
	create_template("curio_traits2_ext_en", {"loc_gadget_grim_corruption_resistance_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.corrgrm_rgb.." к сопротивлению "..COLORS_KWords_ru.Corruption_rgb_ru.." от гримуаров" end),
	--[+ 腐敗抗性(法術書) - Traditional Chinese +]--
	create_template("curio_traits2_ext_tw", {"loc_gadget_grim_corruption_resistance_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.corrgrm_rgb.." "..COLORS_KWords_tw.Corruption_rgb_tw.." 抗性(法術書)" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits2_ext_zh_cn", {"loc_gadget_grim_corruption_resistance_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.corrgrm_rgb.." "..COLORS_KWords_zh_cn.Corruption_rgb_zh_cn.."抗性 (魔法书)" end),

		--[+ +Health +]--
	create_template("curio_traits3_ext_en", {"loc_trait_gadget_health_increase_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." Maximum "..COLORS_KWords.Health_rgb end),
	--[+ French +]--
	create_template("curio_traits3_ext_fr", {"loc_trait_gadget_health_increase_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." de "..COLORS_KWords_fr.Health_rgb_fr.." maximum" end),
	--[+ Russian +]--
	create_template("curio_traits3_ext_en", {"loc_trait_gadget_health_increase_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." к максимальному "..COLORS_KWords_ru.Health_rgb_ru end),
	--[+ 生命 - Traditional Chinese +]--
	create_template("curio_traits3_ext_tw", {"loc_trait_gadget_health_increase_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." 最大 "..COLORS_KWords_tw.Health_rgb_tw end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits3_ext_zh_cn", {"loc_trait_gadget_health_increase_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.maxhlth_rgb.." 最大"..COLORS_KWords_zh_cn.Health_rgb_zh_cn end),

		--[+ +Block Cost Reduction +]--
	create_template("curio_traits4_ext_en", {"loc_gadget_block_cost_reduction_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.blckcst_rgb.." Block Cost Reduction" end),
	--[+ French +]--
	create_template("curio_traits4_ext_fr", {"loc_gadget_block_cost_reduction_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.blckcst_rgb.." d'éfficacité de blocage" end),
	--[+ Russian +]--
	create_template("curio_traits4_ext_en", {"loc_gadget_block_cost_reduction_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.blckcst_rgb.." к снижение стоимости блока" end),
	--[+ 格擋消耗 - Traditional Chinese +]--
	create_template("curio_traits4_ext_tw", {"loc_gadget_block_cost_reduction_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.blckcst_rgb.." 格擋消耗" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits4_ext_zh_cn", {"loc_gadget_block_cost_reduction_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.blckcst_rgb.." 格挡效益" end),


-- DUPLICATE!!! THERE IS THE SAME IN WEAPON BLESSINGS! (WEAPONS_Blessings_Perks.lua)
		--[+ -Stamina Cost for Sprinting +]-- 
	-- create_template("curio_traits5_ext_en", {"loc_gadget_sprint_cost_reduction_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.bcm_rgb.." "..COLORS_KWords.Stamina_rgb.." Cost for Sprinting" end),
	--[+ French +]--
	-- create_template("curio_traits5_ext_fr", {"loc_gadget_sprint_cost_reduction_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.bcm_rgb.." de coût d'"..COLORS_KWords_fr.Stamina_rgb_fr.." de la course" end),
	--[+ Russian +]--
	-- create_template("curio_traits5_ext_en", {"loc_gadget_sprint_cost_reduction_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.bcm_rgb.." к затратам "..COLORS_KWords_ru.Stamina_rgb_ru.." на бег" end),


		--[+ +Ally Revive Speed +]--
	create_template("curio_traits6_ext_en", {"loc_gadget_revive_speed_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.revive_rgb.." Ally Revive Speed" end),
	--[+ French +]--
	create_template("curio_traits6_ext_fr", {"loc_gadget_revive_speed_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.revive_rgb.." de vitesse de réanimation des alliés" end),
	--[+ Russian +]--
	create_template("curio_traits6_ext_en", {"loc_gadget_revive_speed_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.revive_rgb.." к скорости возрождения союзника" end),
	--[+ 復活速度 - Traditional Chinese +]--
	create_template("curio_traits6_ext_tw", {"loc_gadget_revive_speed_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.revive_rgb.." 復活速度 (盟友)" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits6_ext_zh_cn", {"loc_gadget_revive_speed_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.revive_rgb.." 复活速度 (盟友)" end),

		--[+ +Stamina Regeneration +]--
	create_template("curio_traits7_ext_en", {"loc_gadget_stamina_regeneration_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.stamreg_rgb.." "..COLORS_KWords.Stamina_rgb.." Regeneration" end),
	--[+ French +]--
	create_template("curio_traits7_ext_fr", {"loc_gadget_stamina_regeneration_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.stamreg_rgb.." de régénération d'"..COLORS_KWords_fr.Stamina_rgb_fr end),
	--[+ Russian +]--
	create_template("curio_traits7_ext_en", {"loc_gadget_stamina_regeneration_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.stamreg_rgb.." к восстановлению "..COLORS_KWords_ru.Stamina_rgb_ru end),
	--[+ 精力回復 - Traditional Chinese +]--
	create_template("curio_traits7_ext_tw", {"loc_gadget_stamina_regeneration_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.stamreg_rgb.." "..COLORS_KWords_tw.Stamina_rgb_tw.." 恢復" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits7_ext_zh_cn", {"loc_gadget_stamina_regeneration_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.stamreg_rgb.." "..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."回复" end),

		--[+ +Toughness +]--
	create_template("curio_traits8_ext_en", {"loc_trait_gadget_toughness_increase_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." "..COLORS_KWords.Toughness_rgb end),
	--[+ French +]--
	create_template("curio_traits8_ext_fr", {"loc_trait_gadget_toughness_increase_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.."" end),
	--[+ Russian +]--
	create_template("curio_traits8_ext_en", {"loc_trait_gadget_toughness_increase_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru end),
	--[+ 韌性 - Traditional Chinese +]--
	create_template("curio_traits8_ext_tw", {"loc_trait_gadget_toughness_increase_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." 最大 "..COLORS_KWords_tw.Toughness_rgb_tw end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits8_ext_zh_cn", {"loc_trait_gadget_toughness_increase_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.maxtghns_rgb.." 最大"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn end),

		--[+ +Toughness Regeneration Speed +]--
	create_template("curio_traits9_ext_en", {"loc_gadget_toughness_regen_delay_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.tghn_reg_del_rgb.." "..COLORS_KWords.Toughness_rgb.." Regeneration Speed" end),
	--[+ French +]--
	create_template("curio_traits9_ext_fr", {"loc_gadget_toughness_regen_delay_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.tghn_reg_del_rgb.." de vitesse de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." de syntonie" end),
	--[+ Russian +]--
	create_template("curio_traits9_ext_en", {"loc_gadget_toughness_regen_delay_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.tghn_reg_del_rgb.." к скорости восстановления "..COLORS_KWords_ru.Toughness_rgb_ru end),
	--[+ 韌性恢復 - Traditional Chinese +]--
	create_template("curio_traits9_ext_tw", {"loc_gadget_toughness_regen_delay_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.tghn_reg_del_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.." 韌性恢復速度" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits9_ext_zh_cn", {"loc_gadget_toughness_regen_delay_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.tghn_reg_del_rgb.." "..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."回复速度" end),

		--[+ +Experience +]--
	create_template("curio_traits10_ext_en", {"loc_trait_gadget_mission_xp_increase_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.xp_rgb.." Experience" end),
	--[+ French +]--
	create_template("curio_traits10_ext_fr", {"loc_trait_gadget_mission_xp_increase_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.xp_rgb.." d'expérience" end),
	--[+ Russian +]--
	create_template("curio_traits10_ext_en", {"loc_trait_gadget_mission_xp_increase_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.xp_rgb.." к опыту" end),
	--[+ 經驗 - Traditional Chinese +]--
	create_template("curio_traits10_ext_tw", {"loc_trait_gadget_mission_xp_increase_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.xp_rgb.." 經驗" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits10_ext_zh_cn", {"loc_trait_gadget_mission_xp_increase_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.xp_rgb.." 经验" end),

		--[+ +Ordo +]--
	create_template("curio_traits11_ext_en", {"loc_trait_gadget_mission_credits_increase_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.credits_rgb.." Ordo Dockets" end),
	--[+ French +]--
	create_template("curio_traits11_ext_fr", {"loc_trait_gadget_mission_credits_increase_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.credits_rgb.." bordereaux de l'Ordo (récompenses de mission)" end),
	--[+ Russian +]--
	create_template("curio_traits11_ext_en", {"loc_trait_gadget_mission_credits_increase_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.credits_rgb.." купонов ордо" end),
	--[+ 教團標籤 - Traditional Chinese +]--
	create_template("curio_traits11_ext_tw", {"loc_trait_gadget_mission_credits_increase_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.credits_rgb.." 教團標籤 (任務獎勵)" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits11_ext_zh_cn", {"loc_trait_gadget_mission_credits_increase_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.credits_rgb.." 审判庭双子币 （任务奖励）" end),

		--[+ +Curio as Mission Reward instead of Weapon +]--
	create_template("curio_traits12_ext_en", {"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.gears_rgb.." chance of Curio as Mission Reward instead of Weapon" end),
	--[+ French +]--
	create_template("curio_traits12_ext_fr", {"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.gears_rgb.." de chance d'obtenir une curiosité comme récompense à la place d'une arme" end),
	--[+ Russian +]--
	create_template("curio_traits12_ext_en", {"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.gears_rgb.." шанс получить редкость вместо оружия в награду" end),
	--[+ 獎勵中獲得珍品 - Traditional Chinese +]--
	create_template("curio_traits12_ext_tw", {"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.gears_rgb.." 機率獲得珍品作為任務獎勵(非武器)" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits12_ext_zh_cn", {"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.gears_rgb.." 以珍品作为任务奖励 （而非武器） 的几率" end),

		--[+ +Damage Resistance vs Flamers +]--
	create_template("curio_traits13_ext_en", {"loc_trait_gadget_dr_vs_flamer_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Flamers" end),
	--[+ French +]--
	create_template("curio_traits13_ext_fr", {"loc_trait_gadget_dr_vs_flamer_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Incendiaires, Incendiaires toxiques) " end),
	--[+ Russian +]--
	create_template("curio_traits13_ext_en", {"loc_trait_gadget_dr_vs_flamer_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Огнемётчиков" end),
	--[+ 傷害抗性(火焰噴射者) - Traditional Chinese +]--
	create_template("curio_traits13_ext_tw", {"loc_trait_gadget_dr_vs_flamer_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." (毒焰噴射者)" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits13_ext_zh_cn", {"loc_trait_gadget_dr_vs_flamer_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."抗性（火焰兵）" end),

		--[+ +Damage Resistance vs Bombers +]--
	create_template("curio_traits14_ext_en", {"loc_trait_gadget_dr_vs_grenadiers_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Bombers" end),
	--[+ French +]--
	create_template("curio_traits14_ext_fr", {"loc_trait_gadget_dr_vs_grenadiers_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Bombardiers)" end),
	--[+ Russian +]--
	create_template("curio_traits14_ext_en", {"loc_trait_gadget_dr_vs_grenadiers_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Гренадёров" end),
	--[+ 傷害抗性(轟炸者) - Traditional Chinese +]--
	create_template("curio_traits14_ext_tw", {"loc_trait_gadget_dr_vs_grenadiers_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." (轟炸者)" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits14_ext_zh_cn", {"loc_trait_gadget_dr_vs_grenadiers_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."抗性（轰炸者）" end),

		--[+ +Damage Resistance vs Gunners +]--
	create_template("curio_traits15_ext_en", {"loc_trait_gadget_dr_vs_gunners_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Gunners" end),
	--[+ French +]--
	create_template("curio_traits15_ext_fr", {"loc_trait_gadget_dr_vs_gunners_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Mitrailleurs)" end),
	--[+ Russian +]--
	create_template("curio_traits15_ext_en", {"loc_trait_gadget_dr_vs_gunners_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Пулемётчиков" end),
	--[+ 傷害抗性(砲手) - Traditional Chinese +]--
	create_template("curio_traits15_ext_tw", {"loc_trait_gadget_dr_vs_gunners_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." (砲手)" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits15_ext_zh_cn", {"loc_trait_gadget_dr_vs_gunners_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."抗性（炮手）" end),

		--[+ +Damage Resistance vs Pox Hounds +]--
	create_template("curio_traits16_ext_en", {"loc_trait_gadget_dr_vs_hounds_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Pox Hounds" end),
	--[+ French +]--
	create_template("curio_traits16_ext_fr", {"loc_trait_gadget_dr_vs_hounds_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Cerdères vérolés)" end),
	--[+ Russian +]--
	create_template("curio_traits16_ext_en", {"loc_trait_gadget_dr_vs_hounds_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Чумных гончих" end),
	--[+ 傷害抗性(瘟疫獵犬) - Traditional Chinese +]--
	create_template("curio_traits16_ext_tw", {"loc_trait_gadget_dr_vs_hounds_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." (瘟疫獵犬)" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits16_ext_zh_cn", {"loc_trait_gadget_dr_vs_hounds_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."抗性（瘟疫猎犬）" end),

		--[+ +Damage Resistance vs Mutants +]--
	create_template("curio_traits17_ext_en", {"loc_trait_gadget_dr_vs_mutants_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Mutants" end),
	--[+ French +]--
	create_template("curio_traits17_ext_fr", {"loc_trait_gadget_dr_vs_mutants_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Mutants)" end),
	--[+ Russian +]--
	create_template("curio_traits17_ext_en", {"loc_trait_gadget_dr_vs_mutants_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Мутантов" end),
	--[+ 傷害抗性(變種人) - Traditional Chinese +]--
	create_template("curio_traits17_ext_tw", {"loc_trait_gadget_dr_vs_mutants_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." (變種人)" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits17_ext_zh_cn", {"loc_trait_gadget_dr_vs_mutants_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."抗性（变种人）" end),

		--[+ +Damage Resistance vs Snipers +]--
	create_template("curio_traits18_ext_en", {"loc_trait_gadget_dr_vs_snipers_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Snipers" end),
	--[+ French +]--
	create_template("curio_traits18_ext_fr", {"loc_trait_gadget_dr_vs_snipers_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Snipers)" end),
	--[+ Russian +]--
	create_template("curio_traits18_ext_en", {"loc_trait_gadget_dr_vs_snipers_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Снайперов" end),
	--[+ 傷害抗性(狙擊手) - Traditional Chinese +]--
	create_template("curio_traits18_ext_tw", {"loc_trait_gadget_dr_vs_snipers_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." (狙擊手)" end),
	--[+ Simplified Chinese +]--
	create_template("curio_traits18_ext_zh_cn", {"loc_trait_gadget_dr_vs_snipers_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."抗性（狙击手）" end),

		--[+ +Damage Resistance vs Poxbursters +]-- Cut out???
	-- create_template("curio_traits19_ext_en", {"loc_trait_gadget_dr_vs_bursters_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Poxbursters" end),
	--[+ French +]--
	-- create_template("curio_traits19_ext_fr", {"loc_trait_gadget_dr_vs_bursters_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Poxbursters)" end),
	--[+ Russian +]--
	-- create_template("curio_traits19_ext_en", {"loc_trait_gadget_dr_vs_bursters_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Чумных взрывников" end), -- Вырезано!
	--[+ 傷害抗性(瘟疫爆者) - Traditional Chinese +]--
	--create_template("curio_traits19_ext_tw", {"loc_trait_gadget_dr_vs_bursters_desc"}, {"zh-tw"}, function(locale, value) return COLORS_Numbers.p_dmg_red_rgb.." "..COLORS_KWords_tw.Damage_rgb_tw.." (瘟疫爆裂者)" end), -- Missing --
	--[+ Simplified Chinese +]--
	--create_template("curio_traits19_ext_zh_cn", {"loc_trait_gadget_dr_vs_bursters_desc"}, {"zh-cn"}, function(locale, value) return COLORS_Numbers.p_dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.." 抗性（爆破手）" end), -- Missing --
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
