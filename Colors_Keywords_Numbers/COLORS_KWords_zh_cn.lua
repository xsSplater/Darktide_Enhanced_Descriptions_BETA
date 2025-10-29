---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text


local CONFIG = {
-- KEYWORDS
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
	cleave_text_colour = {
		Cleave = "劈裂值",
		Cleaving = "劈裂",
		Cleaving_r = "劈裂",
	},
	coherency_text_colour = {
		Coherency = "连携",
	},
	combat_ability_text_colour = {
		Ability_cd = "能力冷却",
		Cd = "冷却",
		Combat_abil = "作战技能",
		Combat_ability = "作战技能",
		Combat_ability_cd = "作战技能回复",
	},
	corruption_text_colour = {
		Corruption = "腐化",
		Corruption_i = "腐化",
		Corruption_a = "腐化",
		Corruptdmg = "腐化伤害",
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
	electrocuted_text_colour = {
		Electrocute = "眩晕",
		Electrocution = "电击",
		Electrocuted = "眩晕",
		Electrocutes = "电击",
		Electrcuting = "电击",
	},
	finesse_text_colour = {
		Finesse = "灵巧",
		Finesse_dmg = "灵巧伤害",
	},
	health_text_colour = {
		Health = "生命值",
		Wound = "伤口",
		Wounds = "伤口",
		Wound_u = "伤口",
		Wound_y = "伤口",
	},
	hit_mass_text_colour = {
		Hit_mass = "打击质量",
		Hit_masss = "打击质量",
	},
	impact_text_colour = {
		Impact = "冲击",
	},
	peril_text_colour = {
		Peril = "危机值",
		Perils = "危机值",
		Perl = "危机值",
	},
	power_text_colour = {
		Power = "强度",
		Strength = "强度",
	},
	rending_text_colour = {
		Rending = "撕裂",
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
	weakspot_text_colour = {
		Weakspot = "弱点",
		Weakspothit = "命中弱点",
		Weakspothits = "弱点命中",
		Weakspothits_k = "弱点击杀",
		Weakspot_dmg = "弱点伤害",
		Weakspotv_dmg = "弱点伤害",
	},

-- CLASSES
	-- Psyker
	class_psyker_text_colour = {
		cls_psy = "灵能者",
		cls_psy2 = "灵能者",
	},
	precision_text_colour = {
		Precision = "精准",
	},
	-- Ogryn
	class_ogryn_text_colour = {
		cls_ogr = "欧格林",
		cls_ogr2 = "欧格林",
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
	-- Zealot
	class_zealot_text_colour = {
		cls_zea = "狂信徒",
		cls_zea2 = "狂信徒",
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
	-- Veteran
	class_veteran_text_colour = {
		cls_vet = "老兵",
		cls_vet2 = "老兵",
	},
	focus_text_colour = {
		Focus = "专注",
	},
	focust_text_colour = {
		Focus_Target = "聚焦目标",
	},
	meleespec_text_colour = {
		Meleespec = "近战专家",
		-- Meleejust = "Melee Justice", -- Arbites
	},
	rangedspec_text_colour = {
		Rangedspec = "远程专家",
		-- Rangedjust = "Ranged Justice", -- Arbites
	},
	-- Arbites
	-- class_arbites_text_colour = {
		-- cls_arb = "Arbitrator",
		-- cls_arb2 = "Arbitrator",
	-- },

-- NOTES
	note_text_colour = {
		Fns_note = "\n灵巧提升弱点和暴击伤害。",
		Pwr_note = "\n强度会提升伤害、踉跄和劈裂效果。",
		Rend_note = "\n撕裂会提升你造成的伤害。",
		Brtl_note = "\n脆弱会降低敌人的护甲。",
		Hit_Mass_note = "\n无视打击质量会使攻击穿透更多敌人。",
		Trauma_note = "",
		Fire_n_trap_note = "",
	},

-- TALENTS
	talents_text_colour = {
		Scriers_gaze = "占卜师的凝视",
		Stun_gren = "眩晕手雷",
		Frag_gren = "粉碎破片手雷",
		Fragmentation_gren = "破片手雷",

	-- Penances
		-- Prologue_p = "序章",
		-- Curio_p = "珍品",
		-- Base_tut_p = "基础训练",
		-- Sir_melk_p = "梅尔克大人的征用厅",
		-- Omnissia_p = "万机神殿",
	},

-- DIFFICULTY
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
	-- auric_text_colour = {
		-- auric = "Auric",
	-- },

-- PENANCES
	talents_penances_text_colour = {
		Prologue_p = "序章",
		Curio_p = "珍品",
		Base_tut_p = "基础训练",
		Sir_melk_p = "梅尔克大人的征用厅",
		Omnissia_p = "万机神殿",

	-- Veteran
		volley_fire = "弹幕射击",
		snipcon = "神射手的专注",
		executioner_stance = "行刑者姿态",
		krak_gr = "克拉克手雷",
		frag_gr = "破片手雷", 
		smok_gr = "烟雾弹",
		fcs_trg = "聚焦目标！",
		scavenger = "清道夫",
		voiceoc = "命令之声",
		firetim = "火力小组",
		infiltr = "渗透",
		closenkill = "近身击杀",
		weapspec = "武器专家",
		survivalist = "生存专家",
	-- Zealot
		shock_gren0 = "眩晕风暴手雷",
		shock_gren = "眩晕风暴手雷",
		fire_gren = "焚化手雷", 
		shock_gren1 = "眩晕手雷",
		shock_gren2 = "眩晕手雷",
		chastise_wicked = "惩戒邪恶",
		chastise_wicked2 = "惩戒邪恶",
		fury_faithful = "忠诚之怒",
		martydom = "殉道",
		holy_revenant = "神圣归来",
		chorusosf = "精神坚韧圣歌",
		beaconop = "纯净信标",
		klinvery = "信仰之刃",
		shroudf = "暗影领域",
		benedict = "祝福",
		loner = "独行者",
		fanrage = "怒火",
		momentum = "动量",
		inexor = "无情审判",
		blazingp = "炽热虔诚",
	-- Psyker
		bburst = "脑部爆裂",
		bburst0 = "脑部爆裂",
		bburst1 = "脑部破裂", 
		bburst2 = "脑部破裂",
		smite = "重击",
		disrdest = "扰乱命运",
		psy_wrath = "灵能者之怒",
		psy_wrath2 = "宣泄尖啸",
		telekshii = "心灵护盾",
		empsionics = "强化灵能",
		assail = "攻击",
		scriersgaze = "占卜师的凝视",
		kinetpres = "动能存在",
		prescience = "预知",
		seerspres = "先知存在",
	-- Ogryn
		bull_rush = "蛮牛冲撞",
		bull_rush2 = "蛮牛冲撞",
		bull_rush3 = "蛮牛冲撞",
		bull_rush4 = "不屈",
		big_box = "大家伙",
		big_box2 = "炸弹来了！",
		burstlimo = "爆裂限制器超驰",
		stayclose = "靠近点！",
		loyalprot = "忠诚护卫",
		feelnop = "不痛不痒",
		bonebraura = "碎骨者光环",
		cowculaura = "懦夫清除",
		heavyhitter = "重击手",
		bigfriendro = "友好巨石",
		fragbomb = "破片炸弹",
		pbbarrage = "近距离弹幕"
	}
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
