---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text


local CONFIG = {
	combat_ability_text_colour = {
		Ability_cd = "能力冷却",
		Cd = "冷却",
		Combat_abil = "作战技能",
		Combat_ability = "作战技能",
		Combat_ability_cd = "作战技能回复",
	},

	health_text_colour = {
		Health = "生命值",
		Wound = "伤口",
		Wounds = "伤口",
		Wound_u = "伤口",
		Wound_y = "伤口",
	},

	peril_text_colour = {
		Peril = "危机值",
		Perils = "危机值",
		Perl = "危机值",
	},

	stamina_text_colour = {
		Stamina = "体力",
		Stamina_c_r = "体力消耗",
	},

	toughness_text_colour = {
		Toughness = "韧性",
		Tghnss = "韧性",
		Toughness_dmg_red = "韧性伤害减免",
		Toughness_dmg_red_u = "韧性伤害减免",
		Toughness_dmg = "韧性伤害",
	},

	coherency_text_colour = {
		Coherency = "连携",
	},

	cleave_text_colour = {
		Cleave = "劈裂值",
		Cleaving = "劈裂",
		Cleaving_r = "劈裂",
	},

	crit_text_colour = {
		Crt_chance = "暴击几率",
		Crt_u_chance = "暴击几率",
		Crit_chance = "暴击几率",
		Crit_hit = "暴击命中",
		Crit_hit_chance = "暴击几率",
		Crit_hits = "暴击命中",
		Crit_hits_k = "暴击击杀",
		Crit_hit_e = "暴击命中",
		Crit = "暴击",
		Crit_ih = "暴击",
		Crit0 = "暴击",
		Crit_dmg_r = "暴击伤害",
		Crit_dmg_u = "暴击伤害",
		Crit_chance_r = "暴击几率",
		Crit_hit_color = "暴击伤害",
		Crit_hit_om = "暴击命中",
		Crit_hit_udom = "暴击命中",
	},

	damage_text_colour = {
		Dmg = "伤害",
		Dmg_a = "伤害",
		Damage = "伤害",
		Damagewrp = "亚空间伤害",
		Damagewrp_a = "亚空间伤害",
	},

	finesse_text_colour = {
		Finesse = "灵巧",
		Finesse_dmg = "灵巧伤害",
	},

	hit_mass_text_colour = {
		Hit_mass = "打击质量",
		Hit_masss = "打击质量",
	},

	impact_text_colour = {
		Impact = "冲击",
	},

	power_text_colour = {
		Power = "强度",
		Strength = "强度",
	},

	rending_text_colour = {
		Rending = "撕裂",
	},

	weakspot_text_colour = {
		Weakspot = "弱点",
		Weakspothit = "命中弱点",
		Weakspothits = "弱点命中",
		Weakspothits_k = "弱点击杀",
		Weakspot_dmg = "弱点伤害",
		Weakspotv_dmg = "弱点伤害",
	},

	bleed_text_colour = {
		Bleed = "流血",
		Bleeding = "流血",
	},

	brittleness_text_colour = {
		Brittleness = "脆弱",
	},

	burn_text_colour = {
		Burn = "燃烧",
		Burning = "燃烧",
		Burnd = "燃烧",
		Heat = "热量",
		Heat2 = "热量",
	},

	corruption_text_colour = {
		Corruption = "腐化",
		Corruption_i = "腐化",
		Corruption_a = "腐化",
		Corruptdmg = "腐化伤害",
	},

	electrocuted_text_colour = {
		Electrocute = "眩晕",
		Electrocution = "电击",
		Electrocuted = "眩晕",
		Electrocutes = "电击",
		Electrcuting = "电击",
	},

	soulblaze_text_colour = {
		Soulblaze = "灵魂之火",
	},

	stagger_text_colour = {
		Stagger = "踉跄",
		Stagger2 = "踉跄",
		Staggering = "踉跄",
		Stagger_i = "踉跄",
		Staggers = "踉跄",
		Staggers_e = "踉跄",
		Stun = "眩晕",
		Stuns = "眩晕",
		Stunned = "眩晕",
		Staggered = "踉跄",
		Staggerr = "踉跄",
	},

	precision_text_colour = {
		Precision = "精准",
	},

	fnp_text_colour = {
		Feel_no_pain = "不痛不痒",
	},

	luckyb_text_colour = {
		Lucky_bullet = "幸运子弹",
	},

	trample_text_colour = {
		Trample = "践踏",
	},

	fury_text_colour = {
		Fury = "怒火",
		Fury_i = "怒火",
	},

	momentum_text_colour = {
		Momentum = "动量",
	},

	stealth_text_colour = {
		Stealth = "潜行",
	},

	focus_text_colour = {
		Focus = "专注",
	},

	focust_text_colour = {
		Focus_Target = "聚焦目标",
	},

	meleespec_text_colour = {
		Meleespec = "近战专家",
	},

	rangedspec_text_colour = {
		Rangedspec = "远程专家",
	},

	note_text_colour = {
		Fns_note = "\n灵巧提升弱点和暴击伤害。",
		Pwr_note = "\n强度会提升伤害、踉跄和劈裂效果。",
		Rend_note = "\n撕裂会提升你造成的伤害。",
		Brtl_note = "\n脆弱会降低敌人的护甲。",
		Hit_Mass_note = "\n无视打击质量会使攻击穿透更多敌人。",
		Trauma_note = "",
		Fire_n_trap_note = "",
	},

	talents_text_colour = {
		Scriers_gaze = "占卜师的凝视",
		Stun_gren = "眩晕手雷",
		Frag_gren = "粉碎破片手雷",
		Fragmentation_gren = "破片手雷",
	},

	sedition_text_colour = {
		sedition = "煽动",
	},

	uprising_text_colour = {
		uprising = "起义",
	},

	malice_text_colour = {
		malice = "憎恶",
	},

	heresy_text_colour = {
		heresy = "异端",
	},

	damnation_text_colour = {
		damnation = "诅咒",
	},

	class_veteran_text_colour = {
		cls_vet = "老兵",
		cls_vet2 = "老兵",
	},

	class_zealot_text_colour = {
		cls_zea = "狂信徒",
		cls_zea2 = "狂信徒",
	},

	class_psyker_text_colour = {
		cls_psy = "灵能者",
		cls_psy2 = "灵能者",
	},

	class_ogryn_text_colour = {
		cls_ogr = "欧格林",
		cls_ogr2 = "欧格林",
	},
}

-- Universal function for creating colored variables
local function create_colored_keywords(config)
	local result = {}

	for color_setting, keywords in pairs(config) do
		local color = Color[mod:get(color_setting)](255, true)

		for name, text in pairs(keywords) do
			result[name .. "_rgb_zh_cn"] = iu_actit(text, color)
		end
	end

	return result
end

-- Validation: check that ALL variables have been created
local function validate_all()
	local colors = create_colored_keywords(CONFIG)
	local total_expected = 0
	local created_count = 0
	local missing_vars = {}

	for color_setting, items in pairs(CONFIG) do
		for name, _ in pairs(items) do
			total_expected = total_expected + 1
			local var_name = name .. "_rgb_zh_cn"
			if colors[var_name] then
				created_count = created_count + 1
			else
				table.insert(missing_vars, var_name)
				mod:error("Missing variable: " .. var_name)
			end
		end
	end

	if created_count == total_expected then
		mod:info("✅ All " .. total_expected .. " keyword variables created successfully")
	else
		mod:warning("⚠️ Created " .. created_count .. "/" .. total_expected .. " keyword variables")
	end

	return colors
end

-- Create and validate all variables
return validate_all()
