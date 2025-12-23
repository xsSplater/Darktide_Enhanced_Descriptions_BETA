---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")

-- KEYWORDS
local CONFIG = {
	bleed_text_colour = {
		Bleed = "流血",
		Bleeding = "流血",
		Bleeds = "流血",
	},
	brittleness_text_colour = {
		Brittleness = "脆弱",
	},
	burn_text_colour = {
		Burn = "燃烧",
		Burning = "燃烧",
		Heat = "热量",
		Overheat = "过热",
	},
	cleave_text_colour = {
		Cleave = "劈裂值",
		Cleaved = "劈裂",
		Cleaving = "劈裂",
	},
	coherency_text_colour = {
		Coherency = "连携",
	},
	combat_ability_text_colour = {
		Ability_cd = "能力冷却",
		Cd = "冷却",
		Cmbt_abil = "作战技能",
		Cmbt_abil_cd = "作战技能冷却",
	},
	corruption_text_colour = {
		Corrupted = "腐化",
		Corruptdmg = "腐化伤害",
		Corruption = "腐化",
	},
	crit_text_colour = {
		Crit = "暴击",
		Critical = "暴击",

		Crit_chance = "暴击几率",
		Crt_chance = "暴击几率",

		Crit_hit = "暴击命中",
		Crit_hits = "暴击命中",
		Crt_hit_chnc = "暴击命中几率",
		Crt_hit_col = "暴击伤害",

		Crit_strike = "暴击打击",
		Crt_chnc_r = "暴击打击几率",
		Crt_strk_dmg = "暴击打击伤害",

		Crit_Attk = "暴击攻击",
		Crit_shots = "暴击射击",

		Crit_dmg_r = "暴击伤害",
		Crt_dmg_r = "暴击伤害",
	},
	damage_text_colour = {
		Damage = "伤害",
		Damagewrp = "亚空间伤害",
	},
	electrocuted_text_colour = {
		Electrocute = "电击",
		Electrocuted = "被电击",
		Electrocutes = "电击",
		Electrcuting = "电击中",
		Electrocution = "电击",
	},
	finesse_text_colour = {
		Finesse = "灵巧",
		Finesse_dmg = "灵巧伤害",
	},
	health_text_colour = {
		Health = "生命值",
		Wound = "伤口",
		Wounds = "伤口",
	},
	hit_mass_text_colour = {
		Hit_mass = "打击质量",
	},
	impact_text_colour = {
		Impact = "冲击",
	},
	peril_text_colour = {
		Peril = "危机值",
		Perils = "危机值",
		PerilsozWarp = "亚空间危机",
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
		Staggered = "踉跄",
		Staggering = "踉跄",
		Staggers = "踉跄",
		Stun = "眩晕",
		Stunned = "眩晕",
		Stuns = "眩晕",
	},
	stamina_text_colour = {
		Stamina = "体力",
		Stamina_c_r = "体力消耗",
	},
	toughness_text_colour = {
		TDR = "韧性伤害减免",
		Tghns_dmg_red = "韧性伤害减免",
		Toughness = "韧性",
	},
	weakspot_text_colour = {
		Weak_spot = "弱点部位",
		Weakspot = "弱点",
		Weakspots = "弱点",

		Weakspothit = "命中弱点",
		Weakspothits = "弱点命中",

		Weakspot_dmg = "弱点伤害",
	},

	-- CLASSES
	-- Psyker
	class_psyker_text_colour = {
		cls_psy = "灵能者",
		cls_psys = "灵能者",
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
		Desperado = "亡命之徒", -- Hive Scum
	},
	luckyb_text_colour = {
		Lucky_bullet = "幸运子弹",
		Tghnss_gold = "韧性", -- Zealot
	},
	trample_text_colour = {
		Trample = "践踏",
		Depend = "依赖性", -- Hive Scum
	},
	-- Zealot
	class_zealot_text_colour = {
		cls_zea = "狂信徒",
		cls_zea2 = "狂信徒",
	},
	fury_text_colour = {
		Fury = "怒火",
		Rampage = "狂暴", -- Hive Scum
	},
	momentum_text_colour = {
		Momentum = "动量",
		Adren = "肾上腺素", -- Hive Scum
		AdrenFr = "肾上腺素狂热", -- Hive Scum
	},
	stealth_text_colour = {
		Stealth = "潜行",
		Psy_Mark = "标记", -- Psyker
		Psy_mark = "标记", -- Psyker
	},
	-- Veteran
	class_veteran_text_colour = {
		cls_vet = "老兵",
		cls_vet2 = "老兵",
	},
	focus_text_colour = {
		Forceful = "强力",
		Focus = "专注",
	},
	focust_text_colour = {
		Focus_Target = "聚焦目标",
		Markedenemy = "标记敌人", -- Psyker
		VultsMark = "秃鹫标记", -- Hive Scum
	},
	meleespec_text_colour = {
		Meleespec = "近战专家",
		Meleejust = "近战正义", -- Arbites
	},
	rangedspec_text_colour = {
		Rangedspec = "远程专家",
		Rangedjust = "远程正义", -- Arbites
	},
	-- Arbitres
	class_arbites_text_colour = {
		cls_arb = "仲裁官",
		cls_arb2 = "仲裁官",
	},
	-- Hive Scum
	class_scum_text_colour = {
		cls_scm = "蜂巢渣滓",
		cls_scm2 = "蜂巢渣滓",
	},
	chemtox_text_colour = {
		Chem_Tox = "化学毒素",
	},

	-- TALENTS
	talents_text_colour = {
		-- Zealot
		Holy_relic = "圣物",
		Stun_gren = "眩晕手雷",
		-- Arbites
		Arbites_gren = "仲裁手雷",
		BreakZLine = "突破防线",
		-- Psyker
		Assail = "攻击",
		Brain_burst = "脑部爆裂",
		Brain_rupture = "脑部破裂",
		Enfeeble = "削弱",
		Scrier_gaze = "占卜师的凝视",
		Scriers_gaze = "占卜师的凝视",
		Smite = "重击",
		-- Veteran
		Frag_gren = "破片手雷",
		Fragm_gren = "破片手雷",
		Rangd_stnc = "远程姿态",
		Duty_honor = "职责与荣誉",
		-- Ogryn
		Att_Seeker = "注意力寻求者",
		-- PENANCES
		Base_tut_p = "基础训练",
		Curio_p = "珍品",
		Omnissia_p = "万机神殿",
		Prologue_p = "序章",
		Sir_melk_p = "梅尔克大人的征用厅",
		-- Psyker
		assail = "攻击",
		bburst = "脑部爆裂",
		bburst1 = "脑部破裂",
		disrdest = "扰乱命运",
		empsionics = "强化灵能",
		kinetpres = "动能存在",
		prescience = "预知",
		psy_wrath = "灵能者之怒",
		psy_wrath2 = "宣泄尖啸",
		scriersgaze = "占卜师的凝视",
		seerspres = "先知存在",
		smite = "重击",
		telekshii = "心灵护盾",
		-- Ogryn
		big_box = "大家伙",
		big_box2 = "炸弹来了！",
		bigfriendro = "友好巨石",
		bonebraura = "碎骨者光环",
		bull_rush = "蛮牛冲撞",
		bull_rush4 = "不屈",
		burstlimo = "爆裂限制器超驰",
		cowculaura = "懦夫清除",
		feelnop = "不痛不痒",
		fragbomb = "破片炸弹",
		heavyhitter = "重击手",
		loyalprot = "忠诚护卫",
		pbbarrage = "近距离弹幕",
		stayclose = "靠近点！",
		-- Veteran
		closenkill = "近身击杀",
		exec_stan = "行刑者姿态",
		fcs_trg = "聚焦目标！",
		firetim = "火力小组",
		frag_gr = "破片手雷",
		infiltr = "渗透",
		krak_gr = "克拉克手雷",
		scavenger = "清道夫",
		snipcon = "神射手的专注",
		smok_gr = "烟雾弹",
		survivalist = "生存专家",
		voiceoc = "命令之声",
		volley_fire = "弹幕射击",
		weapsec = "武器专家",
		-- Zealot
		beaconop = "纯净信标",
		benedict = "祝福",
		blazingp = "炽热虔诚",
		chast_wckd = "惩戒邪恶",
		chorusosf = "精神坚韧圣歌",
		fanrage = "怒火",
		fire_gren = "焚化手雷",
		fury_faithful = "忠诚之怒",
		holy_revenant = "神圣归来",
		inexor = "无情审判",
		klinvery = "信仰之刃",
		loner = "独行者",
		martydom = "殉道",
		shock_gren = "眩晕风暴手雷",
		shock_gren1 = "眩晕手雷",
		shroudf = "暗影领域",
		momentum = "动量",
	},

	-- DIFFICULTY
	-- sedition_text_colour = {
		-- sedition = "煽动",
	-- },
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
	auric_text_colour = {
		auric = "奥里克",
	},
}

-- Основная функция для создания цветных ключевых слов
local function create_colored_keywords()
	local result = {}

	for category, keywords in pairs(CONFIG) do
		local color_name = mod:get(category) or "white"
		local color = Color[color_name]

		if not color then
			color = Color.white(255, true)
		else
			color = color(255, true)
		end

		for key, text in pairs(keywords) do
			if InputUtils and InputUtils.apply_color_to_input_text then
				local colored_text = InputUtils.apply_color_to_input_text(text, color)
				result[key .. "_rgb_zh_cn"] = colored_text
			else
				result[key .. "_rgb_zh_cn"] = text
			end
		end
	end

	return result
end

-- FREQUENTLY REPEATED PHRASES
local function create_phrs_zh_cn(colors_zh_cn)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"
	local Dot_red = "{#color(255, 35, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_zh_cn[key] or fallback
	end

	return {
		Can_appl_thr_shlds = Dot_green .. " 可以穿过护盾应用。",
		Can_be_refr = Dot_green .. " 可以在激活期间刷新。",
		Can_be_refr_drop_1 = Dot_green .. " 层数可以在激活期间刷新，并且会逐个减少。",
		Can_proc_mult = Dot_green .. " 当" .. CKWord("劈裂", "Cleaving_rgb_zh_cn") .. "时，每次挥击可以触发多次。\n",
		Can_proc_mult_str = Dot_green .. " 当" .. CKWord("劈裂", "Cleaving_rgb_zh_cn") .. "时，每次挥击可以触发多次。\n",
		Refr_dur_stappl = Dot_green .. " 应用层数时刷新持续时间。",
		-- Psyker
		Doesnt_Stack_Psy_Aura = Dot_red .. " 不会与其他" .. CKWord("灵能者", "cls_psy_rgb_zh_cn") .. "的相同光环叠加。",
		Doesnt_Stack_Psy_eff = Dot_red .. " 不会与其他" .. CKWord("灵能者", "cls_psy_rgb_zh_cn") .. "的相同减益效果叠加。",
		-- Veteran
		Doesnt_Stack_Vet_Aura = Dot_red .. " 不会与其他" .. CKWord("老兵", "cls_vet_rgb_zh_cn") .. "的相同光环叠加。",
		-- Zealot
		Doesnt_Stack_Zea_Aura = Dot_red .. " 不会与其他" .. CKWord("狂信徒", "cls_zea_rgb_zh_cn") .. "的相同光环叠加。",
		Doesnt_Stack_Zea_abil = Dot_red .. " 不会与其他" .. CKWord("狂信徒", "cls_zea_rgb_zh_cn") .. "的相同天赋叠加。",
		-- Ogryn
		Doesnt_Stack_Ogr_Aura = Dot_red .. " 不会与其他" .. CKWord("欧格林", "cls_ogr_rgb_zh_cn") .. "的相同光环叠加。",

		Cant_appl_thr_shlds = Dot_red .. " 无法穿过护盾应用。",
		Cant_Crit = Dot_red .. " 无法" .. CKWord("暴击", "Crit_rgb_zh_cn") .. "。\n",
		Carap_cant_clv = Dot_red .. " 默认情况下，甲壳护甲无法被" .. CKWord("劈裂", "Cleaved_rgb_zh_cn") .. "。",
		Carap_cant_cleave = Dot_red .. " 默认情况下，甲壳护甲无法被" .. CKWord("劈裂", "Cleaved_rgb_zh_cn") .. "。",
		Dont_intw_coher_toughn = Dot_red .. " 不与" .. CKWord("连携", "Coherency_rgb_zh_cn") .. CKWord("韧性", "Toughness_rgb_zh_cn") .. "互动。",
	}
end

-- NOTES
local function create_nts_zh_cn(colors_zh_cn)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_zh_cn[key] or fallback
	end

	return {
		Brtl_note = Dot_green .. " " .. CKWord("脆弱", "Brittleness_rgb_zh_cn") .. "增加队伍对敌人的" .. CKWord("伤害", "Damage_rgb_zh_cn") .. "。",
		Fns_note = Dot_green .. " " .. CKWord("灵巧", "Finesse_rgb_zh_cn") .. "增加" .. CKWord("弱点伤害", "Weakspot_dmg_rgb_zh_cn") .. "和" .. CKWord("暴击伤害", "Crit_dmg_r_rgb_zh_cn") .. "。",
		Impact_note = Dot_green .. " " .. CKWord("冲击", "Impact_rgb_zh_cn") .. "增加对敌人的" .. CKWord("踉跄", "Stagger_rgb_zh_cn") .. "效果。",
		Pwr_note = Dot_green .. " " .. CKWord("强度", "Strength_rgb_zh_cn") .. "增加" .. CKWord("伤害", "Damage_rgb_zh_cn") .. "、" .. CKWord("踉跄", "Stagger_rgb_zh_cn") .. "和" .. CKWord("劈裂值", "Cleave_rgb_zh_cn") .. "。",
		Rend_note = Dot_green .. " " .. CKWord("撕裂", "Rending_rgb_zh_cn") .. "增加你自己造成的" .. CKWord("伤害", "Damage_rgb_zh_cn") .. "。",
	}
end

-- Creating colors
local colored_keywords = create_colored_keywords()

-- RETURN ALL
return {
	keywords = colored_keywords,				-- COLORED KEYWORDS
	phrs = create_phrs_zh_cn(colored_keywords), -- FREQUENTLY REPEATED PHRASES
	nts = create_nts_zh_cn(colored_keywords)	-- NOTES
}
