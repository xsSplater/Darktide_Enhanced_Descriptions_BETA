---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")

local Utils = mod.get_utils()

-- KEYWORDS
local CONFIG = {
	bleed_text_colour = {
		Bleed = "流血",
		Bleeding = "流血中",
		Bleeds = "流血",
	},
	brittleness_text_colour = {
		Brittleness = "脆弱",
	},
	burn_text_colour = {
		Burn = "燃燒",
		Burning = "燃燒中",
		Flamer = "淨化噴火器", -- Skitarii
		Heat = "熱能",
		Overheat = "過熱",
	},
	cleave_text_colour = {
		Cleave = "順劈攻擊",
		Cleaved = "順劈",
		Cleaving = "順劈攻擊",
	},
	coherency_text_colour = {
		Coherency = "協同",
	},
	combat_ability_text_colour = {
		Ability = "技能",
		Ability_cd = "技能冷卻",
		Cd = "冷卻",
		Cmbt_abil = "戰鬥技能",
		Cmbt_abil_cd = "戰鬥技能冷卻",
	},
	corruption_text_colour = {
		Corrupted = "腐敗",
		Corruptdmg = "腐敗傷害",
		Corruption = "腐敗",
		Corruption_res = "腐敗抗性", -- Resistance
	},
	crit_text_colour = {
		Crit = "致命一擊",
		Critical = "致命一擊",

		Crit_chance = "爆擊率",
		Crt_chance = "爆擊率",
		Crit_m_chance = "近戰爆擊率", -- Melee Crit Chance
		Crit_r_chance = "遠程爆擊率", -- Ranged Crit Chance

		Crit_hit = "致命一擊",
		Crit_hits = "暴擊",
		Crtcll_strk = "致命一擊",
		Crt_hit_chnc = "爆擊率",
		Crt_hit_col = "暴擊傷害",
		Crit_hit_m_dmg = "近戰暴擊傷害", -- Melee Crit Damage
		Crit_hit_r_dmg = "遠程暴擊傷害", -- Ranged Crit Damage

		Crit_strike = "致命一擊",
		Crit_strikes = "致命一擊",
		Crt_chnc_r = "爆擊率",
		Crt_strk_dmg = "暴擊傷害",

		Crit_Attk = "致命一擊",
		Crit_shots = "致命射擊",

		Crit_dmg_r = "暴擊傷害",
		Crt_dmg_r = "暴擊傷害",

		Conc_Stimm = "專注興奮劑", -- Hive Scum
	},
	damage_text_colour = {
		Combat_Stimm = "戰鬥興奮劑", -- Hive Scum
		Damage = "傷害",
		Damage_res = "傷害抗性", -- Resistance
		Damage_r = "遠程傷害", -- Ranged Damage
		Damagewrp = "靈能傷害",
	},
	electrocuted_text_colour = {
		Arc = "電弧",
		Arcs = "電弧",
		Electrocute = "電擊",
		Electrocuted = "被電擊",
		Electrocutes = "電擊",
		Electrcuting = "電擊",
		Electrocuting = "電擊",
		Electrocution = "電擊",
	},
	finesse_text_colour = {
		Finesse = "靈巧",
		Finesse_dmg = "靈巧傷害",
	},
	health_text_colour = {
		Health = "生命值",
		Health_m = "最大生命值",
		Wound = "傷痕",
		Wounds = "傷痕",
	},
	hit_mass_text_colour = {
		Hit_mass = "順劈目標",
	},
	impact_text_colour = {
		Impact = "衝擊",
	},
	peril_text_colour = {
		Peril = "反噬",
		Perils = "反噬",
		PerilsozWarp = "亞空間反噬",
	},
	power_text_colour = {
		Power = "威力",
		Strength = "威力",
	},
	rending_text_colour = {
		Rending = "撕裂",
	},
	soulblaze_text_colour = {
		Soulblaze = "靈魂之火",
	},
	stagger_text_colour = {
		Stagger = "踉蹌",
		Staggered = "踉蹌",
		Staggering = "踉蹌",
		Staggers = "踉蹌",
		Stun = "眩暈",
		Stunned = "眩暈",
		Stunning = "眩暈",
		Stuns = "眩暈",
	},
	stamina_text_colour = {
		Stamina = "耐力",
		Stamina_m = "最大耐力",
		Stamina_c_r = "耐力消耗",
	},
	toughness_text_colour = {
		TDR = "韌性減傷",
		Tghns_dmg = "韌性傷害",
		Tghns_dmg_red = "韌性減傷",
		Toughness = "韌性",
		Toughness_m = "最大韌性",
		Toughness_rs = "韌性恢復速度",
	},
	weakspot_text_colour = {
		Weak_spot = "弱點",
		Weakspot = "弱點",
		Weakspots = "弱點",

		Weakspothit = "弱點命中",
		Weakspothits = "弱點命中",
		Weakspot_m_dmg = "近戰弱點傷害", -- Melee Weakspot Damage
		Weakspot_r_dmg = "遠程弱點傷害", -- Ranged Weakspot Damage

		Weakspot_dmg = "弱點傷害",
		Weakspot_k_dmg = "弱點擊殺",
	},

	-- CLASSES
	-- Psyker
	class_psyker_text_colour = {
		cls_psy = "靈能者",
		cls_psys = "靈能者",
		cls_psy2 = "靈能者",
	},
	precision_text_colour = {
		Precision = "精準",
		Celerity_Stimm = "敏捷興奮劑", -- Hive Scum
	},
	-- Ogryn
	class_ogryn_text_colour = {
		cls_ogr = "歐格林",
		cls_ogr2 = "歐格林",
	},
	fnp_text_colour = {
		Feel_no_pain = "麻木",
		Desperado = "亡命之徒", -- Hive Scum
		Overload = "超載", -- Skitarii
		overloading = "超載", -- Skitarii
	},
	luckyb_text_colour = {
		Lucky_bullet = "幸運子彈",
		Tghnss_gold = "韌性", -- Zealot
		Servoskull = "伺服頭骨", -- Skitarii
	},
	trample_text_colour = {
		Trample = "踐踏",
		Depend = "依賴性", -- Hive Scum
	},
	-- Zealot
	class_zealot_text_colour = {
		cls_zea = "狂信徒",
		cls_zea2 = "狂信徒",
	},
	fury_text_colour = {
		Fury = "狂怒",
		Rampage = "橫衝直撞！", -- Hive Scum
	},
	momentum_text_colour = {
		Momentum = "勢能",
		Taunt = "嘲諷", -- Ogryn
		Adren = "腎上腺素", -- Hive Scum
		AdrenFr = "腎上腺素狂暴", -- Hive Scum
	},
	stealth_text_colour = {
		Stealth = "隱身",
		Psy_Mark = "標記", -- Psyker
		Psy_mark = "標記", -- Psyker
	},
	-- Veteran
	class_veteran_text_colour = {
		cls_vet = "老兵",
		cls_vet2 = "老兵",
	},
	focus_text_colour = {
		Capacitance = "電容量", -- Skitarii
		Forceful = "堅定不移",
		Focus = "專注",
	},
	focust_text_colour = {
		ElectrDisch = "電能放電", -- Skitarii
		Focus_Target = "鎖定目標",
		Markedenemy = "標記敵人", -- Psyker
		VultsMark = "兀鷲印記", -- Hive Scum
	},
	meleespec_text_colour = {
		Chordclaw = "弦爪", -- Skitarii
		Meleespec = "近戰專家",
		Meleejust = "近戰正義", -- Arbites
	},
	rangedspec_text_colour = {
		FireRate = "射速", -- Skitarii
		Rangedspec = "遠程專家",
		Rangedjust = "遠程正義", -- Arbites
	},
	-- Arbitres
	class_arbites_text_colour = {
		cls_arb = "法務官",
		cls_arb2 = "法務官",
	},
	-- Hive Scum
	class_scum_text_colour = {
		cls_scm = "巢都渣滓",
		cls_scm2 = "巢都渣滓",
	},
	chemtox_text_colour = {
		AdMedSyringe = "適應型醫療注射器", -- Skitarii
		Chem_Tox = "化學毒素",
		Med_Stimm = "醫療興奮劑", -- Hive Scum
	},

	-- TALENTS
	talents_text_colour = {
		-- Zealot
		beaconop = "純潔信標",
		benedict = "恩賜",
		blazingp = "熾熱虔誠",
		chast_wckd = "懲奸除惡",
		chorusosf = "不屈靈魂合唱",
		fanrage = "狂怒",
		fire_gren = "獻祭手雷",
		fury_faithful = "有信者之怒",
		Holy_relic = "聖物",
		holy_revenant = "吊命聖徒",
		inexor = "命定審判",
		klinvery = "信仰之刃",
		loner = "孤狼",
		martydom = "殉道",
		shock_gren = "眩暈風暴手雷",
		shock_gren1 = "眩暈手雷",
		Stun_gren = "眩暈手雷",
		zealous = "熱忱",
		shroudf = "隱秘領域",
		momentum = "勢能",
		-- Arbites
		Arbites_gren = "法務官手榴彈",
		BreaknDissent = "鎮壓異己",
		BreakZLine = "突破重圍",
		CastigatorSt = "懲戒者姿態",
		Electro_mine = "電能地雷",
		ExecutOrder = "處刑命令",
		Nuncio_aquila = "天鷹使節",
		PartozSquad = "小隊之友",
		RemoteDeton = "遠程引爆",
		RuthlEffcy = "雷厲風行",
		TerminusWarr = "終點站令狀",
		-- Skitarii
		Arcgren = "電弧手榴彈",
		PowerOverload = "能量超載",
		VoltaicExpander = "電能擴張器",
		-- Hive Scum
		Anarchist = "無政府主義者",
		Blinder = "閃光彈",
		BoomBringer = "炸彈使者",
		Cartel_Stimm = "卡特爾特製興奮劑",
		ChemGrenade = "化學手榴彈",
		ChemDepend = "化學性依賴",
		Desperad = "亡命之徒",
		Gunslinger = "神射手",
		Rampag = "橫衝直撞！",
		Ruffian = "惡棍",
		StimmSupply = "化學性依賴",
		VulturesMark = "兀鷲印記",
		AdrenFrenz = "腎上腺素狂暴",
		Viscosity = "黏稠度",
		-- Psyker
		Assail = "靈能攻擊",
		assail = "靈能攻擊",
		Brain_burst = "顱腦爆裂",
		Brain_rupture = "顱腦崩裂",
		bburst = "顱腦爆裂",
		bburst1 = "顱腦崩裂",
		disrdest = "擾動命運",
		Enfeeble = "衰弱詛咒",
		empsionics = "靈能強化",
		kinetpres = "動能釋放",
		prescience = "預兆",
		psy_wrath = "靈能學者之怒",
		psy_wrath2 = "靈能尖嘯",
		Scrier_gaze = "占卜者的注視",
		Scriers_gaze = "占卜者的注視",
		scriersgaze = "占卜者的注視",
		seerspres = "先知之眼",
		Smite = "懲戒",
		smite = "懲戒",
		telekshii = "念力護盾",
		-- Veteran
		closenkill = "抵近殺敵",
		Duty_honor = "責任與榮譽",
		exec_stan = "處決者姿態",
		fcs_trg = "鎖定目標！",
		firetim = "火力小分隊",
		Frag_gren = "破片手雷",
		Fragm_gren = "破片手雷",
		frag_gr = "破片手雷",
		shfrag_gr = "粉碎者破片手雷",
		infiltr = "滲透",
		krak_gr = "穿甲手雷",
		Rangd_stnc = "遠程姿態",
		scavenger = "拾荒者",
		snipcon = "狙擊專注",
		smok_gr = "煙霧手雷",
		survivalist = "生存專家",
		voiceoc = "發號施令",
		volley_fire = "火力齊射",
		weapspec = "武器專家",
		-- Ogryn
		Att_Seeker = "渴求關注",
		big_box = "巨量傷害盒",
		big_box2 = "投彈完畢！",
		bigfriendro = "投石問路",
		bonebraura = "破骨者之環",
		bull_rush = "蠻牛衝撞",
		bull_rush4 = "不屈不撓",
		burstlimo = "爆限超載",
		cowculaura = "優勝劣汰",
		feelnop = "麻木",
		fragbomb = "破片炸彈",
		heavyhitter = "重拳出擊",
		loyalprot = "忠誠守護者",
		pbbarrage = "貼身火力",
		stayclose = "跟緊我！",
	-- PENANCES
		Base_tut_p = "基礎訓練",
		Curio_p = "珍品",
		Omnissia_p = "歐姆尼賽亞的神龕",
		Prologue_p = "序章",
		PthOTrst_p = "信任之路",
		Sir_melk_p = "梅爾克領主的必備品店",
	},

	-- DIFFICULTY
	-- sedition_text_colour = {
		-- sedition = "暴動",
	-- },
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
	auric_text_colour = {
		auric = "奧里克",
	},

-- DUMP STATS
	dump_stat_text_colour = {
		Mobility = "移動性",
		Melee_dmg = "近戰傷害",
		Warp_resist = "反噬抗性",
	},
	dump_stat2_text_colour = {
		Ammo = "彈藥",
		Defences = "防禦",
		Heat_mngt = "熱能管理",
	},
	dump_stat3_text_colour = {
		DamageDS = "傷害",
	},
}

-- 建立彩色關鍵字的主要函式
local function create_colored_keywords()
	local result = {}
	for category, keywords in pairs(CONFIG) do
		local argb = Utils.get_argb_from_setting(category, "white")
		for key, text in pairs(keywords) do
			result[key .. "_rgb_tw"] = Utils.wrap_in_color(text, argb)
		end
	end
	return result
end

-- FREQUENTLY REPEATED PHRASES
local function create_phrs_tw(colors_tw)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"
	local Dot_red = "{#color(255, 35, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_tw[key] or fallback
	end

	return {
		Can_appl_thr_shlds = Dot_green .. " 可穿透護盾施加此效果。",
		Can_appl_thr_shldsb = Dot_green .. " 可穿透堡壘盾牌施加此效果。",
		Can_be_refr = Dot_green .. " 可於啟用期間刷新。",
		Can_be_refr_drop_1 = Dot_green .. " 層數可於啟用期間刷新，並逐層消退。",
		Can_gen_mult = Dot_green .. " 單次近戰攻擊可產生多層。\n",
		Gen_mult_stacks_n_refr = Dot_green .. " 單次近戰攻擊可產生多層。\n" .. Dot_green .. " 可於啟用期間刷新。",
		Can_proc_mult = Dot_green .. " " .. CKWord("順劈攻擊", "Cleaving_rgb_tw") .. "命中多名敵人時，單次近戰攻擊可觸發多次。\n",
		Can_proc_mult_str = Dot_green .. " " .. CKWord("順劈攻擊", "Cleaving_rgb_tw") .. "時可觸發多次。\n",
		Refr_dur_stappl = Dot_green .. " 施加層數時刷新持續時間。",
		-- Psyker
		Doesnt_Stack_Psy_Aura = Dot_red .. " 不會與其他" .. CKWord("靈能者", "cls_psy_rgb_tw") .. "的相同光環疊加。",
		Doesnt_Stack_Psy_eff = Dot_red .. " 不會與其他" .. CKWord("靈能者", "cls_psy_rgb_tw") .. "的相同減益效果疊加。",
		-- Veteran
		Doesnt_Stack_Vet_Aura = Dot_red .. " 不會與其他" .. CKWord("老兵", "cls_vet_rgb_tw") .. "的相同光環疊加。",
		-- Zealot
		Doesnt_Stack_Zea_Aura = Dot_red .. " 不會與其他" .. CKWord("狂信徒", "cls_zea_rgb_tw") .. "的相同光環疊加。",
		Doesnt_Stack_Zea_abil = Dot_red .. " 不會與其他" .. CKWord("狂信徒", "cls_zea_rgb_tw") .. "的相同天賦疊加。",
		-- Ogryn
		Doesnt_Stack_Ogr_Aura = Dot_red .. " 不會與其他" .. CKWord("歐格林", "cls_ogr_rgb_tw") .. "的相同光環疊加。",
		Doesnt_Stack_Ogr_abil = Dot_red .. " 不會與其他" .. CKWord("歐格林", "cls_ogr_rgb_tw") .. "的相同天賦疊加。",
		-- Hive Scum
		Doesnt_Stack_Scm_Aura = Dot_red .. " 不會與其他" .. CKWord("巢都渣滓", "cls_scm_rgb_tw") .. "的相同光環疊加。",
		Doesnt_Stack_Scm_eff = Dot_red .. " 不會與其他" .. CKWord("巢都渣滓", "cls_scm_rgb_tw") .. "的相同減益效果疊加。",

		Cant_appl_thr_shlds = Dot_red .. " 無法穿透護盾施加此效果。",
		Cant_be_refr = Dot_red .. " 無法於啟用期間刷新。",
		Cant_Crit = Dot_red .. " 無法造成" .. CKWord("致命一擊", "Crit_rgb_tw") .. "。\n",
		Carap_cant_clv = Dot_red .. " 甲殼護甲預設無法遭到" .. CKWord("順劈", "Cleaved_rgb_tw") .. "。",
		Carap_cant_cleave = Dot_red .. " 甲殼護甲預設無法遭到" .. CKWord("順劈", "Cleaved_rgb_tw") .. "。",
		Dont_intw_coher_toughn = Dot_red .. " 不會影響" .. CKWord("協同", "Coherency_rgb_tw") .. "中的" .. CKWord("韌性", "Toughness_rgb_tw") .. "恢復。",
	}
end

-- NOTES
local function create_nts_tw(colors_tw)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_tw[key] or fallback
	end

	return {
		Brtl_note = Dot_green .. " " .. CKWord("脆弱", "Brittleness_rgb_tw") .. "會提高隊伍對敵人造成的" .. CKWord("傷害", "Damage_rgb_tw") .. "。",
		Fns_note = Dot_green .. " " .. CKWord("靈巧", "Finesse_rgb_tw") .. "會提高" .. CKWord("弱點傷害", "Weakspot_dmg_rgb_tw") .. "和" .. CKWord("暴擊傷害", "Crit_dmg_r_rgb_tw") .. "。",
		Impact_note = Dot_green .. " " .. CKWord("衝擊", "Impact_rgb_tw") .. "會提高對敵人的" .. CKWord("踉蹌", "Stagger_rgb_tw") .. "效果。",
		Pwr_note = Dot_green .. " " .. CKWord("威力", "Strength_rgb_tw") .. "會提高" .. CKWord("傷害", "Damage_rgb_tw") .. "、" .. CKWord("踉蹌", "Stagger_rgb_tw") .. "和" .. CKWord("順劈攻擊", "Cleave_rgb_tw") .. "。",
		Rend_note = Dot_green .. " " .. CKWord("撕裂", "Rending_rgb_tw") .. "會提高你自身造成的" .. CKWord("傷害", "Damage_rgb_tw") .. "。",
		Weaksp_note = Dot_green .. " " .. CKWord("弱點", "Weakspots_rgb_tw") .. "通常是頭部。納垢巨獸的弱點是背部腫泡。",
	}
end

-- Creating colors
local colored_keywords = create_colored_keywords()

-- RETURN ALL
return {
	keywords = colored_keywords,			-- COLORED KEYWORDS
	phrs = create_phrs_tw(colored_keywords),-- FREQUENTLY REPEATED PHRASES
	nts = create_nts_tw(colored_keywords)	 -- NOTES
}
