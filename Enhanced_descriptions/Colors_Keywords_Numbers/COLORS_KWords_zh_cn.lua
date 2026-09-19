---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")

local Utils = mod.get_utils()

-- KEYWORDS
local CONFIG = {
	bleed_text_colour = {
		Bleed =				"流血", -- Bleeds							-- Bleed_rgb_zh_cn
	},
	brittleness_text_colour = {
		Brittleness =		"脆弱",										-- Brittleness_rgb_zh_cn
	},
	burn_text_colour = {
		Burn =				"燃烧",										-- Burn_rgb_zh_cn
		Burning =			"燃烧中",									-- Burning_rgb_zh_cn
		Heat =				"热量",
		Overheat =			"过热",
	},
	cleave_text_colour = {
		Cleave =			"顺劈攻击",									-- Cleave_rgb_zh_cn
		Cleaved =			"劈裂",
		Cleaving =			"劈裂",
	},
	coherency_text_colour = {
		Coherency =			"协同",										-- Coherency_rgb_zh_cn
	},
	combat_ability_text_colour = {
		Ability =			"技能",										-- Ability_rgb_zh_cn
		Ability_cd =		"技能冷却",									-- Ability_cd_rgb_zh_cn
		Cd =				"冷却",										-- Cd_rgb_zh_cn
		Cmbt_abil =			"战斗技能",									-- Cmbt_abil_rgb_zh_cn
		Cmbt_abil_cd =		"作战技能冷却",
	},
	corruption_text_colour = {
		Corruptdmg =		"腐化伤害",									-- Corruptdmg_rgb_zh_cn
		Corruption =		"腐败",										-- Corruption_rgb_zh_cn
		Corrupted =			"腐化", -- 									-- Corrupted_rgb_zh_cn
	},
	crit_text_colour = {
		Crit_chance =		"暴击几率", -- Crt_chance, Crt_chnc_r		-- Crit_chance_rgb_zh_cn

		Crit_hit =			"暴击", -- Crit, Critical, Crit_hits, Crit_strike -- Crit_hit_rgb_zh_cn
		Crt_hit_chnc =		"暴击命中几率",								-- Crt_hit_chnc_rgb_zh_cn

		Crt_strk_dmg =		"暴击打击伤害",

		Crit_Attk =			"暴击攻击", -- Crit_strikes					-- Crit_Attk_rgb_zh_cn
		Crit_shots =		"暴击射击",									-- Crit_shots_rgb_zh_cn

		Crit_dmg_r =		"暴击伤害", -- Crt_dmg_r						-- Crit_dmg_r_rgb_zh_cn

			Conc_Stimm =	"专注兴奋剂",								-- Conc_Stimm_rgb_zh_cn
	},
	damage_text_colour = {
		Damage =			"伤害",										-- Damage_rgb_zh_cn
		Damagewrp =			"亚空间伤害",

			Combat_Stimm =	"战斗兴奋剂",								-- Combat_Stimm_rgb_zh_cn
	},
	electrocuted_text_colour = {
		Arcs =				"电弧", -- Arc								-- Arcs_rgb_zh_cn
		Electrocute =		"电击", -- Electrocutes, Electrocution		-- Electrocute_rgb_zh_cn
		Electrocuted =		"被电击",									-- Electrocuted_rgb_zh_cn
		Electrcuting =		"电击中",
	},
	finesse_text_colour = {
		Finesse =			"灵巧",										-- Finesse_rgb_zh_cn
		Finesse_dmg =		"灵巧伤害",									-- Finesse_dmg_rgb_zh_cn
	},
	health_text_colour = {
		Health =			"生命值",									-- Health_rgb_zh_cn
		Wound =				"伤痕", -- Wounds							-- Wound_rgb_zh_cn
	},
	hit_mass_text_colour = {
		Hit_mass =			"打击质量",									-- Health_rgb_zh_cn
	},
	impact_text_colour = {
		Impact =			"冲击",										-- Impact_rgb_zh_cn
	},
	peril_text_colour = {
		Peril =				"危机值",									-- Peril_rgb_zh_cn
		PerilsozWarp =		"亚空间危机",
	},
	power_text_colour = {
		Strength =			"威力", -- Power							-- Strength_rgb_zh_cn
	},
	rending_text_colour = {
		Rending =			"撕裂",										-- Rending_rgb_zh_cn

			Cartel_Stimm =	"卡特尔特制兴奋剂",							-- Cartel_Stimm_rgb_zh_cn
	},
	soulblaze_text_colour = {
		Soulblaze =			"灵魂之火",									-- Soulblaze_rgb_zh_cn
	},
	stagger_text_colour = {
		Stagger =			"踉跄", -- Staggered, Staggering			-- Stagger_rgb_zh_cn
		Stun =				"眩晕", -- Stunned, Stuns, Staggers			-- Stun_rgb_zh_cn
	},
	stamina_text_colour = {
		Stamina =			"耐力",										-- Stamina_rgb_zh_cn
	},
	toughness_text_colour = {
		Tghns_dmg_red =		"韧性伤害减免", -- TDR						-- Tghns_dmg_red_rgb_zh_cn
		Tghns_dmg =			"韧性伤害",									-- Tghns_dmg_rgb_zh_cn
		Toughness =			"韧性",										-- Toughness_rgb_zh_cn
		Tghns_gold =		"韧性",										-- Tghns_gold_rgb_zh_cn
	},
	weakspot_text_colour = {
		Weak_spot =			"弱点部位",									-- Weak_spot_rgb_zh_cn
		Weakspot =			"弱点", -- Weakspots						-- Weakspot_rgb_zh_cn

		Weakspothit =		"命中弱点",									-- Weakspothit_rgb_zh_cn
		Weakspothits =		"弱点命中",									-- Weakspothits_rgb_zh_cn

		Weakspot_dmg =		"弱点伤害",									-- Weakspot_dmg_rgb_zh_cn
	},

	-- CLASSES
	-- Psyker
	class_psyker_text_colour = {
		cls_psy =			"灵能者",
		cls_psys =			"灵能者",
		cls_psy2 =			"灵能者",
	},
	precision_text_colour = {
		Precision =			"精准",

			Celerity_Stimm = "敏捷兴奋剂",								-- Celerity_Stimm_rgb_zh_cn
	},
	-- Ogryn
	class_ogryn_text_colour = {
		cls_ogr =			"欧格林",
		cls_ogr2 =			"欧格林",
	},
	fnp_text_colour = {
		Feel_no_pain =		"不痛不痒",									-- Feel_no_pain_rgb_zh_cn

			Desperado =		"亡命之徒",				-- Hive Scum
			Overload =		"过载",					-- Skitarii
			overloading =	"overloading",			-- Skitarii
	},
	luckyb_text_colour = {
		Lucky_bullet =		"幸运子弹",									-- Lucky_bullet_rgb_zh_cn

			Tghnss_gold =	"韧性",					-- Zealot
			Servoskull =	"伺服颅骨",				-- Skitarii
	},
	trample_text_colour = {
		Trample =			"践踏",										-- Fury_rgb_zh_cn

		Depend =			"依赖性",				-- Hive Scum
	},
	-- Zealot
	class_zealot_text_colour = {
		cls_zea =			"狂信徒", -- cls_zea2						-- cls_zea_rgb_zh_cn
	},
	fury_text_colour = {
		Fury =				"狂怒",										-- Fury_rgb_zh_cn

		Rampage =			"狂暴",					-- Hive Scum
	},
	momentum_text_colour = {
		Momentum =			"势能",										-- Momentum_rgb_zh_cn

		Adren =				"肾上腺素",				-- Hive Scum		-- Adren_rgb_zh_cn
		AdrenFr =			"肾上腺素狂热",			-- Hive Scum
		Taunt =				"嘲讽",					-- Ogryn			-- Taunt_rgb_zh_cn
	},
	stealth_text_colour = {
		Stealth =			"隐身",										-- Stealth_rgb_zh_cn
		Psy_Mark =			"标记",					-- Psyker
		Psy_mark =			"标记",					-- Psyker
	},
	-- Veteran
	class_veteran_text_colour = {
		cls_vet =			"老兵",										-- cls_vet_rgb_zh_cn
	},
	focus_text_colour = {
		Forceful =			"强力",										-- Forceful_rgb_zh_cn
		Focus =				"专注",										-- Focus_rgb_zh_cn

			-- Shout = "Shout",						-- Hive Scum
			Capacitance =	"电容",					-- Skitarii
	},
	focust_text_colour = {
		Focus_Target =		"锁定目标",									-- Focus_rgb_zh_cn

			Markedenemy =		"标记敌人",			-- Psyker			-- Markedenemy_rgb_zh_cn
			VultsMark =			"秃鹫标记",			-- Hive Scum		-- VultsMark_rgb_zh_cn
			ElectrDisch =		"电流释放",			-- Skitarii			-- ElectrDisch_rgb_zh_cn
	},
	meleespec_text_colour = {
		Meleespec = "近战专家",											-- Meleespec_rgb_zh_cn

			Meleejust =			"近战正义",			-- Arbites			-- Meleejust_rgb_zh_cn
			Exhausted =			"Exhausted",		-- Hive Scum
			Chordclaw =			"弦爪",				-- Skitarii			-- Chordclaw_rgb_zh_cn
	},
	rangedspec_text_colour = {
		Rangedspec =		"远程专家",									-- Rangedspec_rgb_zh_cn

		Rangedjust =		"远程正义",				-- Arbites			-- Rangedjust_rgb_zh_cn
	},
	-- Arbitres
	class_arbites_text_colour = {
		cls_arb =			"仲裁官",
		cls_arb2 =			"仲裁官",
	},
	-- Hive Scum
	class_scum_text_colour = {
		cls_scm =			"蜂巢渣滓",									-- cls_scm_rgb_zh_cn
	},
	chemtox_text_colour = {
		Chem_Tox =			"化学毒素",									-- Chem_Tox_rgb_zh_cn

			Med_Stimm =		"医疗兴奋剂",								-- Med_Stimm_rgb_zh_cn

			AdMedSyringe =	"Adapted Medicae Syringes",	-- Skitarii
	},

	-- TALENTS
	talents_text_colour = {
-- VETERAN
		closenkill =		"近身击杀",
		Duty_honor =		"职责与荣誉",
		exec_stan =			"行刑者姿态",
		fcs_trg =			"聚焦目标！",
		firetim =			"火力小组",
		Frag_gren =			"破片手雷",
		frag_gr =			"破片手雷",
		Fragm_gren =		"破片手雷",
		infiltr =			"渗透",
		krak_gr =			"克拉克手雷",
		Rangd_stnc =		"远程姿态",									-- Rangd_stnc_rgb_zh_cn
		scavenger =			"清道夫",
		snipcon =			"神射手的专注",
		smok_gr =			"烟雾弹",
		survivalist =		"生存专家",
		voiceoc =			"命令之声",
		volley_fire =		"弹幕射击",
		weapspec =			"武器专家",
-- ZEALOT
		beaconop =			"纯净信标",
		benedict =			"祝福",
		blazingp =			"炽热虔诚",
		chast_wckd =		"惩戒邪恶",
		chorusosf =			"精神坚韧圣歌",
		fanrage =			"怒火",
		fire_gren =			"焚化手雷",
		fury_faithful =		"忠诚之怒",
		Holy_relic =		"圣物",										-- Holy_relic_rgb_zh_cn
		holy_revenant =		"神圣归来",
		inexor =			"无情审判",
		klinvery =			"信仰之刃",
		loner =				"独行者",
		martydom =			"殉道",
		momentum =			"动量",
		shock_gren =		"眩晕风暴手雷",
		shock_gren1 =		"眩晕手雷",
		shroudf =			"暗影领域",
		Stun_gren =			"眩晕手雷",									-- Stun_gren_rgb_zh_cn
-- PSYKER
		Assail =			"攻击",
		assail =			"攻击",
		Brain_burst =		"脑部爆裂",
		Brain_rupture =		"脑部破裂",
		bburst =			"脑部爆裂",
		bburst1 =			"脑部破裂",
		disrdest =			"扰乱命运",
		Enfeeble =			"削弱",
		empsionics =		"强化灵能",
		kinetpres =			"动能存在",
		prescience =		"预知",
		psy_wrath =			"灵能者之怒",
		psy_wrath2 =		"宣泄尖啸",
		Scrier_gaze =		"占卜师的凝视",
		Scriers_gaze =		"占卜师的凝视",
		scriersgaze =		"占卜师的凝视",
		seerspres =			"先知存在",
		Smite =				"重击",
		smite =				"重击",
		telekshii =			"心灵护盾",
-- OGRYN
		Att_Seeker =		"注意力寻求者",								-- Att_Seeker_rgb_zh_cn
		big_box =			"大家伙",
		big_box2 =			"炸弹来了！",
		bigfriendro =		"友好巨石",
		bonebraura =		"碎骨者光环",
		bull_rush =			"蛮牛冲撞",
		bull_rush4 =		"不屈",
		burstlimo =			"爆裂限制器超驰",
		cowculaura =		"懦夫清除",
		feelnop =			"不痛不痒",
		fragbomb =			"破片炸弹",
		heavyhitter =		"重击手",
		loyalprot =			"忠诚护卫",
		pbbarrage =			"近距离弹幕",
		stayclose =			"靠近点！",
-- ARBITES
		Arbites_gren =		"法务官手雷",								-- Arbites_gren_rgb_zh_cn
		BreakZLine =		"突破防线",									-- BreakZLine_rgb_zh_cn
		BreaknDissent =		"Breaking Dissent",
		CastigatorSt =		"Castigator's Stance",
		Electro_mine =		"Voltaic Shock Mine",
		ExecutOrder =		"Execution Order",
		Forceful =			"Forceful",
		Nuncio_aquila =		"Nuncio Aquila",
		PartozSquad =		"Part of the Squad",
		RemoteDeton =		"Remote Detonation",
		RuthlEffcy =		"Ruthless Efficiency",
		TerminusWarr =		"Terminus Warrant",
-- HIVE SCUM
		AdrenFrenz =		"Adrenaline Frenzy",
		Anarchist =			"Anarchist",
		Blinder =			"Blinder",
		BoomBringer =		"Boom Bringer",
		ChemDepend =		"Chemical Dependency",
		ChemGrenade =		"Chem Grenade",
		Desperad =			"Desperado",
		Gunslinger =		"Gunslinger",
		Rampag =			"Rampage!",
		Ruffian =			"Ruffian",
		StimmSupply =		"Stimm Supply",
		VulturesMark =		"Vulture's Mark",
		Viscosity =			"Viscosity",
-- SKITARII
		Arcgren =			"电弧手雷",
		VoltaicExpander =	"电压扩展",
		PowerOverload =		"能量过载",									-- PowerOverload_rgb_zh_cn

-- PENANCES
		Base_tut_p =		"基础训练",
		Curio_p =			"珍品",
		Omnissia_p =		"万机神殿",
		Prologue_p =		"序章",
		Sir_melk_p =		"梅尔克大人的征用厅",
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

-- DUMP STATS
	dump_stat_text_colour = {
		Mobility =		"Mobility",
		Melee_dmg =		"Melee Damage",
		Warp_resist =	"Warp Resistance",
	},
	dump_stat2_text_colour = {
		Ammo =			"Ammo",
		Defences =		"Defences",
		Heat_mngt =		"Heat Management",
	},
	dump_stat3_text_colour = {
		DamageDS =		"Damage",
	},
}

-- Основная функция для создания цветных ключевых слов
local function create_colored_keywords()
	local result = {}
	for category, keywords in pairs(CONFIG) do
		local argb = Utils.get_argb_from_setting(category, "white")
		for key, text in pairs(keywords) do
			result[key .. "_rgb_zh_cn"] = Utils.wrap_in_color(text, argb)
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
		Dont_intw_coher_toughn = Dot_red .. " 不与" .. CKWord("协同", "Coherency_rgb_zh_cn") .. CKWord("韧性", "Toughness_rgb_zh_cn") .. "互动。",
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
