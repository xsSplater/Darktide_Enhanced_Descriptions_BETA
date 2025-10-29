---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

local CONFIG = {
	talents_penances_text_colour = {
		--[+++老兵(VETERAN)+++]--
		volley_fire = "火力齊射",
		snipcon = "狙擊專注",
		executioner_stance = "處決者姿態",
		krak_gr = "穿甲手雷",
		frag_gr = "破片手雷",
		smok_gr = "煙霧手雷",
		fcs_trg = "鎖定目標!",
		scavenger = "拾荒者",
		voiceoc = "發號施令",
		firetim = "火力小分隊",
		infiltr = "滲透",
		closenkill = "抵近殺敵",
		weapspec = "武器專家",
		survivalist = "生存專家",

		--[+++狂信徒(ZEALOT)+++]--
		shock_gren0 = "眩暈風暴手雷",
		shock_gren = "眩暈風暴手雷",
		fire_gren = "獻祭手雷",
		shock_gren1 = "眩暈手雷",
		shock_gren2 = "眩暈手雷",
		chastise_wicked = "懲奸除惡",
		chastise_wicked2 = "懲奸除惡",
		fury_faithful = "有信者之怒",
		martydom = "殉道",
		holy_revenant = "吊命聖徒",
		chorusosf = "不屈靈魂合唱",
		beaconop = "純潔信標",
		klinvery = "信仰之刃",
		shroudf = "隱秘領域",
		benedict = "恩賜",
		loner = "孤狼",
		fanrage = "狂怒",
		momentum = "勢能",
		inexor = "命定審判",
		blazingp = "熾熱虔誠",

		--[+++靈能者(PSYKER)+++]--
		bburst = "顱腦爆裂",
		bburst0 = "顱腦爆裂",
		bburst1 = "顱腦崩裂",
		bburst2 = "顱腦崩裂",
		smite = "懲戒",
		disrdest = "擾動命運",
		psy_wrath = "靈能學者之怒",
		psy_wrath2 = "靈能尖嘯",
		telekshii = "念力護盾",
		empsionics = "靈能強化",
		assail = "靈能攻擊",
		scriersgaze = "占卜者的注視",
		kinetpres = "動能釋放",
		prescience = "預兆",
		seerspres = "先知之眼",

		--[+++歐格林(OGRYN)+++]--
		bull_rush = "蠻牛衝撞",
		bull_rush2 = "蠻牛衝撞",
		bull_rush3 = "蠻牛衝撞",
		bull_rush4 = "不屈不撓",
		big_box = "巨量傷害盒",
		big_box2 = "投彈完畢!",
		burstlimo = "爆限超載",
		stayclose = "跟緊我!",
		loyalprot = "忠誠守護者",
		feelnop = "麻木",
		bonebraura = "破骨者之環",
		cowculaura = "優勝劣汰",
		heavyhitter = "重拳出擊",
		bigfriendro = "投石問路",
		fragbomb = "破片炸彈",
		pbbarrage = "貼身火力",
	},

	talents_text_colour = {
		--[+++不同的關鍵字(MISC KEYWORDS)+++]--
		Prologue_p = "序章",
		Curio_p = "珍品",
		Aura_p = "光環",
		Aura_i_p = "光環範圍內",
		AbilityModifiers_p = "技能修改器",
		Ability_p = "技能",
		Passive_p = "被動",
		KeyStone_p = "鑰石",
		KeyStone_i_p = "觸發鑰石",
		Blitz_p = "閃擊",
		Psykhanium_p = "靈能室",
		Base_tut_p = "基礎訓練",
		Sir_melk_p = "梅爾克領主的必備品店",
		Omnissia_p = "歐姆尼賽亞的神龕",
	},
}

-- Universal function for creating colored variables with Traditional Chinese suffix
local function create_colored_penances_tw(config)
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
local function validate_all_penances_tw()
	local colors = create_colored_penances_tw(CONFIG)
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
				mod:error("Missing Traditional Chinese penance variable: " .. var_name)
			end
		end
	end

	if created_count == total_expected then
		mod:info("✅ All " .. total_expected .. " Traditional Chinese penance variables created successfully")
	else
		mod:warning("⚠️ Created " .. created_count .. "/" .. total_expected .. " Traditional Chinese penance variables")
		for _, missing_var in ipairs(missing_vars) do
			mod:warning("Missing: " .. missing_var)
		end
	end

	return colors
end

-- Create and validate all Traditional Chinese penance variables
return validate_all_penances_tw()
