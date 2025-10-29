---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

local CONFIG = {
	--[+++主要(MAIN)+++]--
	combat_ability_text_colour = {
		Ability_cd = "技能冷卻",
		Cd = "冷卻",
		Cd_m = "最大冷卻",
		Combat_abil = "戰鬥技能",
		Combat_ability = "戰鬥技能",
		Combat_ability_cd = "戰鬥技能冷卻",
	},

	health_text_colour = {
		Health = "生命",
		Health_m = "最大生命",
		Wound = "傷痕",
		Wounds = "傷痕",
		Wound_u = "傷痕",
		Wound_y = "傷痕",
	},

	peril_text_colour = {
		Peril = "反噬",
		Perils = "反噬",
		Perl = "反噬",
		Perl_e = "反噬爆炸",
	},

	stamina_text_colour = {
		Stamina = "耐力",
		Stamina_m = "最大耐力",
		Stamina_se = "衝刺效率",
		Stamina_c_r = "耐力消耗",
	},

	toughness_text_colour = {
		Toughness = "韌性",
		Toughness_m = "最大韌性",
		Toughness_rs = "韌性恢復速度",
		Tghnss = "韌性",
		Toughness_dmg_red = "韌性傷害減免",
		Toughness_dmg_red_u = "韌性傷害減免",
		Toughness_dmg = "韌性傷害",
	},

	coherency_text_colour = {
		Coherency = "協同",
		Coherencing = "協同中",
	},

	--[+++增益效果(BUFFS)+++]--
	cleave_text_colour = {
		Cleave = "順劈攻擊",
		Cleaving = "順劈攻擊",
		Cleaving_r = "順劈攻擊",
	},

	crit_text_colour = {
		Crt_chance = "暴擊機率",
		Crt_u_chance = "暴擊機率",
		Crit_chance = "暴擊機率",
		Crit_n_chance = "不會暴擊",
		Crit_m_chance = "近戰暴擊機率",
		Crit_r_chance = "遠程暴擊機率",
		Crit_hit = "暴擊命中",
		Crit_hit_chance = "暴擊",
		Crit_hits = "暴擊",
		Crit_hit_e = "暴擊",
		Crit = "暴擊",
		Crit_k = "暴擊擊殺",
		Crit_ih = "暴擊",
		Crit0 = "暴擊",
		Crit_dmg_r = "暴擊傷害",
		Crit_dmg_u = "暴擊傷害",
		Crit_chance_r = "暴擊機率",
		Crit_hit_color = "暴擊傷害",
		Crit_hit_m_color = "近戰暴擊傷害",
		Crit_hit_r_color = "遠程暴擊傷害",
		Crit_hit_om = "暴擊",
		Crit_hit_udom = "暴擊",
	},

	damage_text_colour = {
		Dmg = "傷害",
		Dmg_a = "傷害",
		Dmg_bs = "背刺傷害",
		Dmg_bs_K = "背刺擊殺",
		Dmg_b = "基礎傷害",
		Dmg_h = "較高傷害",
		Dmg_h2 = "高額傷害",
		Dmg_c = "持續傷害(Dot)",
		Dmg_d = "Dot傷害",
		Dmg_v = "易傷",
		Damage = "傷害",
		Damage_s = "重擊傷害",
		Damage_res = "傷害抗性",
		Damage_melee = "近戰傷害",
		Damage_ranged = "遠程傷害",
		Damagewrp = "亞空間傷害",
		Damagewrp_a = "亞空間攻擊",
	},

	finesse_text_colour = {
		Finesse = "靈巧",
		Finesse_dmg = "靈巧傷害",
		Finesse_dmg_r = "遠程靈巧傷害",
	},

	hit_mass_text_colour = {
		Hit_mass = "順劈目標",
		Hit_masss = "順劈目標抗性",
	},

	impact_text_colour = {
		Impact = "衝擊",
	},

	power_text_colour = {
		Power = "威力",
		Strength = "威力",
		Strength_m = "近戰威力",
		Strength_r = "遠程威力",
	},

	rending_text_colour = {
		Rending = "撕裂",
	},

	weakspot_text_colour = {
		Weakspot = "弱點",
		Weakspothit = "弱點命中",
		Weakspothits = "命中弱點",
		Weakspot_dmg = "弱點傷害",
		Weakspot_k_dmg = "弱點擊殺",
		Weakspot_m_dmg = "近戰弱點傷害",
		Weakspot_r_dmg = "遠程弱點傷害",
		Weakspotv_dmg = "弱點傷害",
	},

	--[+++減益效果(DEBUFFS)+++]--
	bleed_text_colour = {
		Bleed = "流血",
		Bleeding = "流血中",
	},

	brittleness_text_colour = {
		Brittleness = "脆弱",
	},

	burn_text_colour = {
		Burn = "燃燒",
		Burning = "燃燒中",
		Burnd = "引燃",
		Heat = "熱能",
		Heat_diss = "散熱效率",
		Heat2 = "充能",
	},

	corruption_text_colour = {
		Corruption = "腐敗",
		Corruption_i = "腐敗",
		Corruption_a = "腐敗",
		Corruptdmg = "腐敗傷害",
	},

	electrocuted_text_colour = {
		Electrocute = "電擊",
		Electrocution = "電擊",
		Electrocuted = "被電擊",
		Electrocutes = "電擊",
		Electrcuting = "電擊中",
	},

	soulblaze_text_colour = {
		Soulblaze = "靈火",
		Soulblaze_k = "靈火擊殺",
	},

	stagger_text_colour = {
		Stagger = "踉蹌",
		Stagger_s = "輕微踉蹌",
		Stagger2 = "踉蹌效果",
		Staggering = "眩暈",
		Stagger_i = "踉蹌中",
		Stagger_w = "充能踉蹌",
		Staggers = "暈眩",
		Staggers_e = "暈眩",
		Stun = "暈眩",
		Stuns = "硬直中",
		Stunned = "已暈眩",
		Staggered = "硬直中",
		Staggerr = "踉蹌",
	},

	--[+++職業技能(CLASS ABILITIES)+++]--
	precision_text_colour = {
		Precision = "精準加成",
	},

	fnp_text_colour = {
		Feel_no_pain = "麻木",
	},

	luckyb_text_colour = {
		Lucky_bullet = "幸運子彈",
	},

	trample_text_colour = {
		Trample = "踐踏",
	},

	fury_text_colour = {
		Fury = "狂怒",
		Fury_i = "狂怒",
	},

	momentum_text_colour = {
		Momentum = "勢能",
	},

	stealth_text_colour = {
		Stealth = "隱身",
	},

	focus_text_colour = {
		Focus = "專注",
	},

	focust_text_colour = {
		Focus_Target = "鎖定目標",
		Focus_Target_s = "鎖定",
	},

	meleespec_text_colour = {
		Meleespec = "近戰專家",
	},

	rangedspec_text_colour = {
		Rangedspec = "遠程專家",
	},

	--[+++天賦和手榴彈(TALENTS & GRENADES)+++]--
	talents_text_colour = {
		Scriers_gaze = "占卜者的凝視",
		Stun_gren = "眩暈手榴彈",
		Frag_gren = "破片手榴彈",
		Krak_gren = "穿甲手榴彈",
		Fragmentation_gren = "破片手榴彈",
	},

	--[+++備註(NOTES)+++]--
	note_text_colour = {
		Fns_note = " 靈巧會增加弱點與暴擊傷害。",
		Pwr_note = " 威力會增加傷害、踉蹌與破甲。",
		Rend_note = " 撕裂可以增加傷害。",
		Brtl_note = " 脆弱會降低敵人的護甲。",
		Hit_Mass_note = " 順劈目標可使你打擊更多敵人。",
		Trauma_note = "",
		Fire_n_trap_note = "",
	},

	--[+++難度(DIFFICULTY)+++]--
	sedition_text_colour = {
		sedition = "暴動",
	},

	uprising_text_colour = {
		uprising = "起義",
	},

	malice_text_colour = {
		malice = "惡毒",
	},

	heresy_text_colour = {
		heresy = "異端",
	},

	damnation_text_colour = {
		damnation = "詛咒",
	},

	--[+++職業(CLASSES)+++]--
	class_veteran_text_colour = {
		cls_vet = "老兵",
		cls_vet2 = "老兵",
	},

	class_zealot_text_colour = {
		cls_zea = "狂信徒",
		cls_zea2 = "狂信徒",
	},

	class_psyker_text_colour = {
		cls_psy = "靈能者",
		cls_psy2 = "靈能者",
	},

	class_ogryn_text_colour = {
		cls_ogr = "歐格林",
		cls_ogr2 = "歐格林",
	},
}

-- Universal function for creating colored variables with Traditional Chinese suffix
local function create_colored_keywords_tw(config)
	local result = {}

	for color_setting, keywords in pairs(config) do
		local color = Color[mod:get(color_setting)](255, true)
		
		for name, text in pairs(keywords) do
			result[name .. "_rgb_tw"] = iu_actit(text, color)
		end
	end
	
	return result
end

-- Validation: check that ALL variables have been created
local function validate_all_tw()
	local colors = create_colored_keywords_tw(CONFIG)
	local total_expected = 0
	local created_count = 0
	local missing_vars = {}

	for color_setting, items in pairs(CONFIG) do
		for name, _ in pairs(items) do
			total_expected = total_expected + 1
			local var_name = name .. "_rgb_tw"
			if colors[var_name] then
				created_count = created_count + 1
			else
				table.insert(missing_vars, var_name)
				mod:error("Missing Traditional Chinese variable: " .. var_name)
			end
		end
	end

	if created_count == total_expected then
		mod:info("✅ All " .. total_expected .. " Traditional Chinese keyword variables created successfully")
	else
		mod:warning("⚠️ Created " .. created_count .. "/" .. total_expected .. " Traditional Chinese keyword variables")
		for _, missing_var in ipairs(missing_vars) do
			mod:warning("Missing: " .. missing_var)
		end
	end

	return colors
end

-- Create and validate all Traditional Chinese variables
return validate_all_tw()
