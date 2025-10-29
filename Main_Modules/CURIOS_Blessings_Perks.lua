---@diagnostic disable: undefined-global
-- Version 4.0

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

-- LANGUAGE CODES:
-- Chinese Traditional	["zh-tw"]	_tw
-- Chinese Simplified	["zh-cn"]	_zh_cn
-- English				en
-- French				fr			_fr
-- German				de			_de
-- Italian				it			_it
-- Japanese				ja			_ja
-- Korean				ko			_ko
-- Polish				pl			_pl
-- Portuguese			pt-BR		_pt_br
-- Russian				ru			_ru
-- Spanish				es			_es


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

--[+ DEFINE LOCALIZATION TEMPLATES +]--
local localization_templates = {
-- FOR TRANSLATORS
-- Duplicate the line and translate. For example:
-- create_template("curio_bless0_ext_en",
	-- {"loc_inate_gadget_health_desc"}, {"en"},
		-- loc_text(COLORS_Numbers.maxhlth_rgb.." Maximum "..COLORS_KWords.Health_rgb)),

-- create_template("curio_bless0_ext_YOURLANGUAGECODE",
	-- {"loc_inate_gadget_health_desc"}, {"YOURLANGUAGECODE"},
		-- loc_text(COLORS_Numbers.maxhlth_rgb.." к максимальному "..COLORS_KWords_YOURLANGUAGECODE.Health_rgb_YOURLANGUAGECODE)), <- Don't forget the comma at the end!

--[+ +CURIOS - РЕЛИКВИИ - 珍品+ +]--
	--[+ BLESSINGS - БЛАГОСЛОВЕНИЯ - 祝福 +]--
	--[+ + Health +]--
	create_template("curio_bless0_ext_en",
		{"loc_inate_gadget_health_desc"}, {"en"},
			loc_text(COLORS_Numbers.maxhlth_rgb.." Maximum "..COLORS_KWords.Health_rgb)),
	--[+ French +]--
	create_template("curio_bless0_ext_fr",
		{"loc_inate_gadget_health_desc"}, {"fr"},
			loc_text(COLORS_Numbers.maxhlth_rgb.." de "..COLORS_KWords_fr.Health_rgb_fr.." Maximum")),
	--[+ Russian +]--
	create_template("curio_bless0_ext_ru",
		{"loc_inate_gadget_health_desc"}, {"ru"},
			loc_text(COLORS_Numbers.maxhlth_rgb.." к максимальному "..COLORS_KWords_ru.Health_rgb_ru)),
	--[+ 生命 - Traditional Chinese +]--
	create_template("curio_bless0_ext_tw",
		{"loc_inate_gadget_health_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.maxhlth_rgb.." "..COLORS_KWords_tw.Health_m_rgb_tw)),
	--[+ Simplified Chinese +]--
	create_template("curio_bless0_ext_zh_cn",
		{"loc_inate_gadget_health_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.maxhlth_rgb.." 最大"..COLORS_KWords_zh_cn.Health_rgb_zh_cn.."  ")),

	--[+ + Wound +]--
	create_template("curio_bless1_ext_en",
		{"loc_inate_gadget_health_segment_desc"}, {"en"},
			loc_text(COLORS_Numbers.maxwnds_rgb.." "..COLORS_KWords.Wound_rgb)),
	--[+ French +]--
	create_template("curio_bless1_ext_fr",
		{"loc_inate_gadget_health_segment_desc"}, {"fr"},
			loc_text(COLORS_Numbers.maxwnds_rgb.."  "..COLORS_KWords_fr.Wound_rgb_fr)),
	--[+ Russian +]--
	create_template("curio_bless1_ext_ru",
		{"loc_inate_gadget_health_segment_desc"}, {"ru"},
			loc_text(COLORS_Numbers.maxwnds_rgb.." сегмент полоски "..COLORS_KWords_ru.Wound_rgb_ru)),
	--[+ 傷口 - Traditional Chinese +]--
	create_template("curio_bless1_ext_tw",
		{"loc_inate_gadget_health_segment_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.maxwnds_rgb.." "..COLORS_KWords_tw.Wound_rgb_tw)),
	--[+ Simplified Chinese +]--
	create_template("curio_bless1_ext_zh_cn",
		{"loc_inate_gadget_health_segment_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.maxwnds_rgb.." "..COLORS_KWords_zh_cn.Wound_rgb_zh_cn.."  ")),

	--[+ + Stamina +]--
	create_template("curio_bless2_ext_en",
		{"loc_inate_gadget_stamina_desc"}, {"en"},
			loc_text(COLORS_Numbers.maxstam_rgb.." Maximum "..COLORS_KWords.Stamina_rgb)),
	--[+ French +]--
	create_template("curio_bless2_ext_fr",
		{"loc_inate_gadget_stamina_desc"}, {"fr"},
			loc_text(COLORS_Numbers.maxstam_rgb.." d'"..COLORS_KWords_fr.Stamina_rgb_fr.." Maximum")),
	--[+ Russian +]--
	create_template("curio_bless2_ext_ru",
		{"loc_inate_gadget_stamina_desc"}, {"ru"},
			loc_text(COLORS_Numbers.maxstam_rgb.." к максимальной "..COLORS_KWords_ru.Stamina_rgb_ru)),
	--[+ 耐力 - Traditional Chinese +]--
	create_template("curio_bless2_ext_tw",
		{"loc_inate_gadget_stamina_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.maxstam_rgb.." "..COLORS_KWords_tw.Stamina_m_rgb_tw)),
	--[+ Simplified Chinese +]--
	create_template("curio_bless2_ext_zh_cn",
		{"loc_inate_gadget_stamina_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.maxstam_rgb.." 最大"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn)),

	--[+ + Toughness +]--
	create_template("curio_bless3_ext_en",
		{"loc_inate_gadget_toughness_desc"}, {"en"},
			loc_text(COLORS_Numbers.maxtghns_rgb.." "..COLORS_KWords.Toughness_rgb)),
	--[+ French +]--
	create_template("curio_bless3_ext_fr",
		{"loc_inate_gadget_toughness_desc"}, {"fr"},
			loc_text(COLORS_Numbers.maxtghns_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr)),
	--[+ Russian +]--
	create_template("curio_bless3_ext_ru",
		{"loc_inate_gadget_toughness_desc"}, {"ru"},
			loc_text(COLORS_Numbers.maxtghns_rgb.." к максимальной "..COLORS_KWords_ru.Toughness_rgb_ru)),
	--[+ 韌性 - Traditional Chinese +]--
	create_template("curio_bless3_ext_tw",
		{"loc_inate_gadget_toughness_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.maxtghns_rgb.." "..COLORS_KWords_tw.Toughness_m_rgb_tw)),
	--[+ Simplified Chinese +]--
	create_template("curio_bless3_ext_zh_cn",
		{"loc_inate_gadget_toughness_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.maxtghns_rgb.." 最大"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."  ")),

	--[+ TRAITS - ХАРАКТЕРИСТИКИ +]--
	--[+ + Combat Ability Regeneration +]--
	create_template("curio_traits0_ext_en",
		{"loc_gadget_cooldown_desc"}, {"en"},
			loc_text(COLORS_Numbers.abil_cd_rgb.." "..COLORS_KWords.Combat_ability_rgb.." Regeneration")),
	--[+ French +]--
	create_template("curio_traits0_ext_fr",
		{"loc_gadget_cooldown_desc"}, {"fr"},
			loc_text(COLORS_Numbers.abil_cd_rgb.." de régénération du "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr)),
	--[+ Russian +]--
	create_template("curio_traits0_ext_ru",
		{"loc_gadget_cooldown_desc"}, {"ru"},
			loc_text(COLORS_Numbers.abil_cd_rgb.." к восстановлению "..COLORS_KWords_ru.Combat_ability_rgb_ru)),
	--[+ 戰鬥技能冷卻 - Traditional Chinese +]--
	create_template("curio_traits0_ext_tw",
		{"loc_gadget_cooldown_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.abil_cd_rgb.." "..COLORS_KWords_tw.Combat_ability_cd_rgb_tw)),
	--[+ Simplified Chinese +]--
	create_template("curio_traits0_ext_zh_cn",
		{"loc_gadget_cooldown_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.abil_cd_rgb.." "..COLORS_KWords_zh_cn.Combat_ability_rgb_zh_cn.."回复")),

	--[+ + Corruption Resistance +]--
	create_template("curio_traits1_ext_en",
		{"loc_gadget_corruption_resistance_desc"}, {"en"},
			loc_text(COLORS_Numbers.corr_rgb.." "..COLORS_KWords.Corruption_rgb.." Resistance")),
	--[+ French +]--
	create_template("curio_traits1_ext_fr",
		{"loc_gadget_corruption_resistance_desc"}, {"fr"},
			loc_text(COLORS_Numbers.corr_rgb.." de résistance à la "..COLORS_KWords_fr.Corruption_rgb_fr)),
	--[+ Russian +]--
	create_template("curio_traits1_ext_ru",
		{"loc_gadget_corruption_resistance_desc"}, {"ru"},
			loc_text(COLORS_Numbers.corr_rgb.." к сопротивлению "..COLORS_KWords_ru.Corruption_rgb_ru)),
	--[+ 腐敗抗性 - Traditional Chinese +]--
	create_template("curio_traits1_ext_tw",
		{"loc_gadget_corruption_resistance_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.corr_rgb.." "..COLORS_KWords_tw.Corruption_rgb_tw.." 抗性")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits1_ext_zh_cn",
		{"loc_gadget_corruption_resistance_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.corr_rgb.." "..COLORS_KWords_zh_cn.Corruption_rgb_zh_cn.."抗性")),

	--[+ + Corruption Resistance from Grimoires +]--
	create_template("curio_traits2_ext_en",
		{"loc_gadget_grim_corruption_resistance_desc"}, {"en"},
			loc_text(COLORS_Numbers.corrgrm_rgb.." "..COLORS_KWords.Corruption_rgb.." Resistance from Grimoires")),
	--[+ French +]--
	create_template("curio_traits2_ext_fr",
		{"loc_gadget_grim_corruption_resistance_desc"}, {"fr"},
			loc_text(COLORS_Numbers.corrgrm_rgb.." de résistance à la "..COLORS_KWords_fr.Corruption_rgb_fr.." (Grimoires)")),
	--[+ Russian +]--
	create_template("curio_traits2_ext_ru",
		{"loc_gadget_grim_corruption_resistance_desc"}, {"ru"},
			loc_text(COLORS_Numbers.corrgrm_rgb.." к сопротивлению "..COLORS_KWords_ru.Corruption_rgb_ru.." от гримуаров")),
	--[+ 腐敗抗性(法術書) - Traditional Chinese +]--
	create_template("curio_traits2_ext_tw",
		{"loc_gadget_grim_corruption_resistance_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.corrgrm_rgb.." "..COLORS_KWords_tw.Corruption_rgb_tw.." 抗性(法術書)")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits2_ext_zh_cn",
		{"loc_gadget_grim_corruption_resistance_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.corrgrm_rgb.." "..COLORS_KWords_zh_cn.Corruption_rgb_zh_cn.."抗性 (魔法书)")),

	--[+ + Health +]--
	create_template("curio_traits3_ext_en",
		{"loc_trait_gadget_health_increase_desc"}, {"en"},
			loc_text(COLORS_Numbers.maxhlth_rgb.." Maximum "..COLORS_KWords.Health_rgb)),
	--[+ French +]--
	create_template("curio_traits3_ext_fr",
		{"loc_trait_gadget_health_increase_desc"}, {"fr"},
			loc_text(COLORS_Numbers.maxhlth_rgb.." de "..COLORS_KWords_fr.Health_rgb_fr.." maximum")),
	--[+ Russian +]--
	create_template("curio_traits3_ext_ru",
		{"loc_trait_gadget_health_increase_desc"}, {"ru"},
			loc_text(COLORS_Numbers.maxhlth_rgb.." к максимальному "..COLORS_KWords_ru.Health_rgb_ru)),
	--[+ 生命 - Traditional Chinese +]--
	create_template("curio_traits3_ext_tw",
		{"loc_trait_gadget_health_increase_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.maxhlth_rgb.." "..COLORS_KWords_tw.Health_m_rgb_tw)),
	--[+ Simplified Chinese +]--
	create_template("curio_traits3_ext_zh_cn",
		{"loc_trait_gadget_health_increase_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.maxhlth_rgb.." 最大"..COLORS_KWords_zh_cn.Health_rgb_zh_cn)),

	--[+ + Block Cost Reduction +]--
	create_template("curio_traits4_ext_en",
		{"loc_gadget_block_cost_reduction_desc"}, {"en"},
			loc_text(COLORS_Numbers.blckcst_rgb.." Block Cost Reduction")),
	--[+ French +]--
	create_template("curio_traits4_ext_fr",
		{"loc_gadget_block_cost_reduction_desc"}, {"fr"},
			loc_text(COLORS_Numbers.blckcst_rgb.." d'éfficacité de blocage")),
	--[+ Russian +]--
	create_template("curio_traits4_ext_ru",
		{"loc_gadget_block_cost_reduction_desc"}, {"ru"},
			loc_text(COLORS_Numbers.blckcst_rgb.." к снижение стоимости блока")),
	--[+ 格擋消耗 - Traditional Chinese +]--
	create_template("curio_traits4_ext_tw",
		{"loc_gadget_block_cost_reduction_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.blckcst_rgb.." 格擋消耗")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits4_ext_zh_cn",
		{"loc_gadget_block_cost_reduction_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.blckcst_rgb.." 格挡效益")),


-- DUPLICATE!!! THERE IS THE SAME IN WEAPON BLESSINGS! (WEAPONS_Blessings_Perks.lua)
	--[+ - Stamina Cost for Sprinting +]-- 
	-- create_template("curio_traits5_ext_en",
	-- 	{"loc_gadget_sprint_cost_reduction_desc"}, {"en"},
	-- 		loc_text(COLORS_Numbers.bcm_rgb.." "..COLORS_KWords.Stamina_rgb.." Cost for Sprinting")),
	--[+ French +]--
	-- create_template("curio_traits5_ext_fr",
	-- 	{"loc_gadget_sprint_cost_reduction_desc"}, {"fr"},
	-- 		loc_text(COLORS_Numbers.bcm_rgb.." de coût d'"..COLORS_KWords_fr.Stamina_rgb_fr.." de la course")),
	--[+ Russian +]--
	-- create_template("curio_traits5_ext_ru",
	-- 	{"loc_gadget_sprint_cost_reduction_desc"}, {"ru"},
			-- loc_text(COLORS_Numbers.bcm_rgb.." к затратам "..COLORS_KWords_ru.Stamina_rgb_ru.." на бег")),


	--[+ + Ally Revive Speed +]--
	create_template("curio_traits6_ext_en",
		{"loc_gadget_revive_speed_desc"}, {"en"},
			loc_text(COLORS_Numbers.revive_rgb.." Ally Revive Speed")),
	--[+ French +]--
	create_template("curio_traits6_ext_fr",
		{"loc_gadget_revive_speed_desc"}, {"fr"},
			loc_text(COLORS_Numbers.revive_rgb.." de vitesse de réanimation des alliés")),
	--[+ Russian +]--
	create_template("curio_traits6_ext_ru",
		{"loc_gadget_revive_speed_desc"}, {"ru"},
			loc_text(COLORS_Numbers.revive_rgb.." к скорости возрождения союзника")),
	--[+ 復活速度 - Traditional Chinese +]--
	create_template("curio_traits6_ext_tw",
		{"loc_gadget_revive_speed_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.revive_rgb.." 復活速度 (盟友)")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits6_ext_zh_cn",
		{"loc_gadget_revive_speed_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.revive_rgb.." 复活速度 (盟友)")),

	--[+ + Stamina Regeneration +]--
	create_template("curio_traits7_ext_en",
		{"loc_gadget_stamina_regeneration_desc"}, {"en"},
			loc_text(COLORS_Numbers.stamreg_rgb.." "..COLORS_KWords.Stamina_rgb.." Regeneration")),
	--[+ French +]--
	create_template("curio_traits7_ext_fr",
		{"loc_gadget_stamina_regeneration_desc"}, {"fr"},
			loc_text(COLORS_Numbers.stamreg_rgb.." de régénération d'"..COLORS_KWords_fr.Stamina_rgb_fr)),
	--[+ Russian +]--
	create_template("curio_traits7_ext_ru",
		{"loc_gadget_stamina_regeneration_desc"}, {"ru"},
			loc_text(COLORS_Numbers.stamreg_rgb.." к восстановлению "..COLORS_KWords_ru.Stamina_rgb_ru)),
	--[+ 精力回復 - Traditional Chinese +]--
	create_template("curio_traits7_ext_tw",
		{"loc_gadget_stamina_regeneration_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.stamreg_rgb.." "..COLORS_KWords_tw.Stamina_rgb_tw.." 恢復")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits7_ext_zh_cn",
		{"loc_gadget_stamina_regeneration_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.stamreg_rgb.." "..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."回复")),

	--[+ + Toughness +]--
	create_template("curio_traits8_ext_en",
		{"loc_trait_gadget_toughness_increase_desc"}, {"en"},
			loc_text(COLORS_Numbers.maxtghns_rgb.." "..COLORS_KWords.Toughness_rgb)),
	--[+ French +]--
	create_template("curio_traits8_ext_fr",
		{"loc_trait_gadget_toughness_increase_desc"}, {"fr"},
			loc_text(COLORS_Numbers.maxtghns_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.."")),
	--[+ Russian +]--
	create_template("curio_traits8_ext_ru",
		{"loc_trait_gadget_toughness_increase_desc"}, {"ru"},
			loc_text(COLORS_Numbers.maxtghns_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru)),
	--[+ 韌性 - Traditional Chinese +]--
	create_template("curio_traits8_ext_tw",
		{"loc_trait_gadget_toughness_increase_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.maxtghns_rgb.." "..COLORS_KWords_tw.Toughness_m_rgb_tw)),
	--[+ Simplified Chinese +]--
	create_template("curio_traits8_ext_zh_cn",
		{"loc_trait_gadget_toughness_increase_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.maxtghns_rgb.." 最大"..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn)),

	--[+ + Toughness Regeneration Speed +]--
	create_template("curio_traits9_ext_en",
		{"loc_gadget_toughness_regen_delay_desc"}, {"en"},
			loc_text(COLORS_Numbers.tghn_reg_del_rgb.." "..COLORS_KWords.Toughness_rgb.." Regeneration Speed")),
	--[+ French +]--
	create_template("curio_traits9_ext_fr",
		{"loc_gadget_toughness_regen_delay_desc"}, {"fr"},
			loc_text(COLORS_Numbers.tghn_reg_del_rgb.." de vitesse de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." de syntonie")),
	--[+ Russian +]--
	create_template("curio_traits9_ext_ru",
		{"loc_gadget_toughness_regen_delay_desc"}, {"ru"},
			loc_text(COLORS_Numbers.tghn_reg_del_rgb.." к скорости восстановления "..COLORS_KWords_ru.Toughness_rgb_ru)),
	--[+ 韌性恢復 - Traditional Chinese +]--
	create_template("curio_traits9_ext_tw",
		{"loc_gadget_toughness_regen_delay_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.tghn_reg_del_rgb.." "..COLORS_KWords_tw.Toughness_rs_rgb_tw)),
	--[+ Simplified Chinese +]--
	create_template("curio_traits9_ext_zh_cn",
		{"loc_gadget_toughness_regen_delay_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.tghn_reg_del_rgb.." "..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."回复速度")),

	--[+ + Experience +]--
	create_template("curio_traits10_ext_en",
		{"loc_trait_gadget_mission_xp_increase_desc"}, {"en"},
			loc_text(COLORS_Numbers.xp_rgb.." Experience")),
	--[+ French +]--
	create_template("curio_traits10_ext_fr",
		{"loc_trait_gadget_mission_xp_increase_desc"}, {"fr"},
			loc_text(COLORS_Numbers.xp_rgb.." d'expérience")),
	--[+ Russian +]--
	create_template("curio_traits10_ext_ru",
		{"loc_trait_gadget_mission_xp_increase_desc"}, {"ru"},
			loc_text(COLORS_Numbers.xp_rgb.." к опыту")),
	--[+ 經驗 - Traditional Chinese +]--
	create_template("curio_traits10_ext_tw",
		{"loc_trait_gadget_mission_xp_increase_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.xp_rgb.." 經驗")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits10_ext_zh_cn",
		{"loc_trait_gadget_mission_xp_increase_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.xp_rgb.." 经验")),

	--[+ + Ordo +]--
	create_template("curio_traits11_ext_en",
		{"loc_trait_gadget_mission_credits_increase_desc"}, {"en"},
			loc_text(COLORS_Numbers.credits_rgb.." Ordo Dockets")),
	--[+ French +]--
	create_template("curio_traits11_ext_fr",
		{"loc_trait_gadget_mission_credits_increase_desc"}, {"fr"},
			loc_text(COLORS_Numbers.credits_rgb.." bordereaux de l'Ordo (récompenses de mission)")),
	--[+ Russian +]--
	create_template("curio_traits11_ext_ru",
		{"loc_trait_gadget_mission_credits_increase_desc"}, {"ru"},
			loc_text(COLORS_Numbers.credits_rgb.." купонов ордо")),
	--[+ 教團標籤 - Traditional Chinese +]--
	create_template("curio_traits11_ext_tw",
		{"loc_trait_gadget_mission_credits_increase_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.credits_rgb.." 教團標籤 (任務獎勵)")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits11_ext_zh_cn",
		{"loc_trait_gadget_mission_credits_increase_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.credits_rgb.." 审判庭双子币 （任务奖励）")),

	--[+ + Curio as Mission Reward instead of Weapon +]--
	create_template("curio_traits12_ext_en",
		{"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"}, {"en"},
			loc_text(COLORS_Numbers.gears_rgb.." chance of Curio as Mission Reward instead of Weapon")),
	--[+ French +]--
	create_template("curio_traits12_ext_fr",
		{"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"}, {"fr"},
			loc_text(COLORS_Numbers.gears_rgb.." de chance d'obtenir une curiosité comme récompense à la place d'une arme")),
	--[+ Russian +]--
	create_template("curio_traits12_ext_ru",
		{"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"}, {"ru"},
			loc_text(COLORS_Numbers.gears_rgb.." шанс получить редкость вместо оружия в награду")),
	--[+ 獎勵中獲得珍品 - Traditional Chinese +]--
	create_template("curio_traits12_ext_tw",
		{"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.gears_rgb.." 機率獲得珍品作為任務獎勵(非武器)")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits12_ext_zh_cn",
		{"loc_trait_gadget_mission_reward_gear_instead_of_weapon_increase_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.gears_rgb.." 以珍品作为任务奖励 （而非武器） 的几率")),

	--[+ + Damage Resistance vs Flamers +]--
	create_template("curio_traits13_ext_en",
		{"loc_trait_gadget_dr_vs_flamer_desc"}, {"en"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Flamers")),
	--[+ French +]--
	create_template("curio_traits13_ext_fr",
		{"loc_trait_gadget_dr_vs_flamer_desc"}, {"fr"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Incendiaires, Incendiaires toxiques) ")),
	--[+ Russian +]--
	create_template("curio_traits13_ext_ru",
		{"loc_trait_gadget_dr_vs_flamer_desc"}, {"ru"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Огнемётчиков")),
	--[+ 傷害抗性(火焰噴射者) - Traditional Chinese +]--
	create_template("curio_traits13_ext_tw",
		{"loc_trait_gadget_dr_vs_flamer_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_tw.Damage_res_rgb_tw.." (毒焰噴射者)")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits13_ext_zh_cn",
		{"loc_trait_gadget_dr_vs_flamer_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."抗性（火焰兵）")),

	--[+ + Damage Resistance vs Bombers +]--
	create_template("curio_traits14_ext_en",
		{"loc_trait_gadget_dr_vs_grenadiers_desc"}, {"en"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Bombers")),
	--[+ French +]--
	create_template("curio_traits14_ext_fr",
		{"loc_trait_gadget_dr_vs_grenadiers_desc"}, {"fr"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Bombardiers)")),
	--[+ Russian +]--
	create_template("curio_traits14_ext_ru",
		{"loc_trait_gadget_dr_vs_grenadiers_desc"}, {"ru"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Гренадёров")),
	--[+ 傷害抗性(轟炸者) - Traditional Chinese +]--
	create_template("curio_traits14_ext_tw",
		{"loc_trait_gadget_dr_vs_grenadiers_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_tw.Damage_res_rgb_tw.." (轟炸者)")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits14_ext_zh_cn",
		{"loc_trait_gadget_dr_vs_grenadiers_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."抗性（轰炸者）")),

	--[+ + Damage Resistance vs Gunners +]--
	create_template("curio_traits15_ext_en",
		{"loc_trait_gadget_dr_vs_gunners_desc"}, {"en"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Gunners")),
	--[+ French +]--
	create_template("curio_traits15_ext_fr",
		{"loc_trait_gadget_dr_vs_gunners_desc"}, {"fr"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Mitrailleurs)")),
	--[+ Russian +]--
	create_template("curio_traits15_ext_ru",
		{"loc_trait_gadget_dr_vs_gunners_desc"}, {"ru"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Пулемётчиков")),
	--[+ 傷害抗性(砲手) - Traditional Chinese +]--
	create_template("curio_traits15_ext_tw",
		{"loc_trait_gadget_dr_vs_gunners_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_tw.Damage_res_rgb_tw.." (砲手)")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits15_ext_zh_cn",
		{"loc_trait_gadget_dr_vs_gunners_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."抗性（炮手）")),

	--[+ + Damage Resistance vs Pox Hounds +]--
	create_template("curio_traits16_ext_en",
		{"loc_trait_gadget_dr_vs_hounds_desc"}, {"en"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Pox Hounds")),
	--[+ French +]--
	create_template("curio_traits16_ext_fr",
		{"loc_trait_gadget_dr_vs_hounds_desc"}, {"fr"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Cerdères vérolés)")),
	--[+ Russian +]--
	create_template("curio_traits16_ext_ru",
		{"loc_trait_gadget_dr_vs_hounds_desc"}, {"ru"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Чумных гончих")),
	--[+ 傷害抗性(瘟疫獵犬) - Traditional Chinese +]--
	create_template("curio_traits16_ext_tw",
		{"loc_trait_gadget_dr_vs_hounds_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_tw.Damage_res_rgb_tw.." (瘟疫獵犬)")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits16_ext_zh_cn",
		{"loc_trait_gadget_dr_vs_hounds_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."抗性（瘟疫猎犬）")),

	--[+ + Damage Resistance vs Mutants +]--
	create_template("curio_traits17_ext_en",
		{"loc_trait_gadget_dr_vs_mutants_desc"}, {"en"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Mutants")),
	--[+ French +]--
	create_template("curio_traits17_ext_fr",
		{"loc_trait_gadget_dr_vs_mutants_desc"}, {"fr"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Mutants)")),
	--[+ Russian +]--
	create_template("curio_traits17_ext_ru",
		{"loc_trait_gadget_dr_vs_mutants_desc"}, {"ru"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Мутантов")),
	--[+ 傷害抗性(變種人) - Traditional Chinese +]--
	create_template("curio_traits17_ext_tw",
		{"loc_trait_gadget_dr_vs_mutants_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_tw.Damage_res_rgb_tw.." (變種人)")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits17_ext_zh_cn",
		{"loc_trait_gadget_dr_vs_mutants_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."抗性（变种人）")),

	--[+ + Damage Resistance vs Snipers +]--
	create_template("curio_traits18_ext_en",
		{"loc_trait_gadget_dr_vs_snipers_desc"}, {"en"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Snipers")),
	--[+ French +]--
	create_template("curio_traits18_ext_fr",
		{"loc_trait_gadget_dr_vs_snipers_desc"}, {"fr"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Snipers)")),
	--[+ Russian +]--
	create_template("curio_traits18_ext_ru",
		{"loc_trait_gadget_dr_vs_snipers_desc"}, {"ru"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Снайперов")),
	--[+ 傷害抗性(狙擊手) - Traditional Chinese +]--
	create_template("curio_traits18_ext_tw",
		{"loc_trait_gadget_dr_vs_snipers_desc"}, {"zh-tw"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_tw.Damage_res_rgb_tw.." (狙擊手)")),
	--[+ Simplified Chinese +]--
	create_template("curio_traits18_ext_zh_cn",
		{"loc_trait_gadget_dr_vs_snipers_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."抗性（狙击手）")),

	--[+ + Damage Resistance vs Poxbursters +]-- CUT OUT???
	-- create_template("curio_traits19_ext_en",
		-- {"loc_trait_gadget_dr_vs_bursters_desc"}, {"en"},
			-- loc_text(COLORS_Numbers.dmg_red_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Poxbursters")),
	--[+ French +]--
	-- create_template("curio_traits19_ext_fr",
		-- {"loc_trait_gadget_dr_vs_bursters_desc"}, {"fr"},
			-- loc_text(COLORS_Numbers.dmg_red_rgb.." de resistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." (Poxbursters)")),
	--[+ Russian +]--
	-- create_template("curio_traits19_ext_ru",
		-- {"loc_trait_gadget_dr_vs_bursters_desc"}, {"ru"},
			-- loc_text(COLORS_Numbers.dmg_red_rgb.." сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." от Чумных взрывников")), -- Вырезано!
	--[+ 傷害抗性(瘟疫爆者) - Traditional Chinese +]--
	--create_template("curio_traits19_ext_tw",
		-- {"loc_trait_gadget_dr_vs_bursters_desc"}, {"zh-tw"},
			-- loc_text(COLORS_Numbers.p_dmg_red_rgb.." "..COLORS_KWords_tw.Damage_res_rgb_tw.." (瘟疫爆裂者)")), -- Missing --
	--[+ Simplified Chinese +]--
	--create_template("curio_traits19_ext_zh_cn",
		-- {"loc_trait_gadget_dr_vs_bursters_desc"}, {"zh-cn"},
			-- loc_text(COLORS_Numbers.p_dmg_red_rgb.." "..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.." 抗性（爆破手）")), -- Missing --
}

mod:info("CURIOS_Blessings_Perks.lua loaded successfully")

return localization_templates
