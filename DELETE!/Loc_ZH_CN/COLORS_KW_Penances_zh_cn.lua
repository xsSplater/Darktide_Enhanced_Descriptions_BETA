---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text


local CONFIG = {
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
		mod:info("✅ All " .. total_expected .. " penance keyword variables created successfully")
	else
		mod:warning("⚠️ Created " .. created_count .. "/" .. total_expected .. " penance keyword variables")
	end

	return colors
end

-- Create and validate all variables
return validate_all()
