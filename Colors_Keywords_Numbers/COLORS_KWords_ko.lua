---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")

-- 키워드
local CONFIG = {
	bleed_text_colour = {
		Bleed =			"출혈",
		Bleeding =		"출혈 중",
		Bleeds =		"출혈",
	},
	brittleness_text_colour = {
		Brittleness =	"취약성",
	},
	burn_text_colour = {
		Burn =			"화상",
		Burning =		"화상 중",
		Heat =			"열",
		Overheat =		"과열",
	},
	cleave_text_colour = {
		Cleave =		"관통",
		Cleaved =		"관통된",
		Cleaving =		"관통",
	},
	coherency_text_colour = {
		Coherency =		"일체감",
	},
	combat_ability_text_colour = {
		Ability_cd =	"능력 재사용 대기시간",
		Cd =			"재사용 대기시간",
		Cmbt_abil =		"전투 능력",
		Cmbt_abil_cd =	"전투 능력 재사용 대기시간",
	},
	corruption_text_colour = {
		Corrupted =		"타락",
		Corruptdmg =	"타락 피해",
		Corruption =	"타락",
	},
	crit_text_colour = {
		Crit =			"크리티컬",
		Critical =		"크리티컬",

		Crit_chance =	"크리티컬 확률",
		Crt_chance =	"크리티컬 확률",

		Crit_hit =		"크리티컬 히트",
		Crit_hits =		"크리티컬 히트",
		Crt_hit_chnc =	"크리티컬 히트 확률",
		Crt_hit_col =	"크리티컬 히트 피해",

		Crit_strike =	"크리티컬 스트라이크",
		Crit_strikes =	"크리티컬 스트라이크",
		Crt_chnc_r =	"크리티컬 스트라이크 확률",
		Crt_strk_dmg =	"크리티컬 스트라이크 피해",

		Crit_Attk =		"크리티컬 공격",
		Crit_shots =	"크리티컬 사격",

		Crit_dmg_r =	"크리티컬 피해",
		Crt_dmg_r =		"크리티컬 피해",

		Conc_Stimm =	"집중 스팀",
	},
	damage_text_colour = {
		Damage =		"피해",
		Damagewrp =		"워프 피해",

		Combat_Stimm =	"전투 스팀",
	},
	electrocuted_text_colour = {
		Electrocute =	"감전",
		Electrocuted =	"감전 중",
		Electrocutes =	"감전",
		Electrcuting =	"감전",
		Electrocution =	"감전",
	},
	finesse_text_colour = {
		Finesse =		"섬세함",
		Finesse_dmg =	"섬세함 피해",
	},
	health_text_colour = {
		Health =		"체력",
		Wound =			"부상",
		Wounds =		"부상",
	},
	hit_mass_text_colour = {
		Hit_mass =		"타격 질량",
	},
	impact_text_colour = {
		Impact =		"충격",
	},
	peril_text_colour = {
		Peril =			"위험",
		Perils =		"위험",
		PerilsozWarp =	"워프의 위험",
	},
	power_text_colour = {
		Power =			"파워",
		Strength =		"힘",
	},
	rending_text_colour = {
		Rending =		"관통",

		Cartel_Stimm =	"카르텔 특별 스팀",
	},
	soulblaze_text_colour = {
		Soulblaze =		"영혼 불꽃",
	},
	stagger_text_colour = {
		Stagger =		"스태거",
		Staggered =		"스태거 상태",
		Staggering =	"스태거",
		Staggers =		"스태거",
		Stun =			"기절",
		Stunned =		"기절 상태",
		Stuns =			"기절",
	},
	stamina_text_colour = {
		Stamina =		"스태미나",
		Stamina_c_r =	"스태미나 소모",
	},
	toughness_text_colour = {
		TDR =			"TDR",
		TGHN =			"인내",
		Tghns_dmg =		"인내 피해",
		Tghns_dmg_red =	"인내 피해 감소",
		Toughness =		"인내",
	},
	weakspot_text_colour = {
		Weak_spot =		"약점",
		Weakspot = 		"약점",
		Weakspots =		"약점",

		Weakspothit =	"약점 히트",
		Weakspothits =	"약점 히트",

		Weakspot_dmg =	"약점 피해",
	},

-- 클래스
	-- Psyker
	class_psyker_text_colour = {
		cls_psy =		"사이커",
		cls_psys =		"사이커",
		cls_psy2 =		"사이커의",
	},
		precision_text_colour = {
			Precision =		"정밀도",

			Celerity_Stimm = "신속 스팀",
		},
	-- Ogryn
	class_ogryn_text_colour = {
		cls_ogr =		"오그린",
		cls_ogr2 =		"오그린의",
	},
		fnp_text_colour = {
			Feel_no_pain =	"고통 무시",

			Desperado =		"데스페라도",			-- Hive Scum
		},
		luckyb_text_colour = {
			Lucky_bullet =	"행운의 탄환",

			Tghnss_gold =	"인내",				-- Zealot
		},
		trample_text_colour = {
			Trample =		"짓밟기",

			Depend =		"의존",				-- Hive Scum
		},
	-- Zealot
	class_zealot_text_colour = {
		cls_zea =		"질럿",
		cls_zea2 =		"질럿의",
	},
		fury_text_colour = {
			Fury =			"분노",

			Rampage =		"광란!",			-- Hive Scum
		},
		momentum_text_colour = {
			Momentum =		"운동량",

			Taunt =			"도발",				-- Ogryn
			Taunted =		"도발당함",			-- Ogryn
			Taunting =		"도발 중",			-- Ogryn

			Adren =			"아드레날린",		-- Hive Scum
			AdrenFr =		"아드레날린 광란",	-- Hive Scum
		},
		stealth_text_colour = {
			Stealth =		"은신",

			Psy_Mark =		"표식됨",			-- Psyker
			Psy_mark =		"표식됨",			-- Psyker
		},
	-- Veteran
	class_veteran_text_colour = {
		cls_vet =		"베테랑",
		cls_vet2 =		"베테랑의",
	},
		focus_text_colour = {
			Forceful =		"강력함",
			Focus =			"집중",

			Shout =			"외침",				-- Hive Scum
		},
		focust_text_colour = {
			Focus_Target =	"주시 대상",

			Markedenemy =	"표식된 적",		-- Psyker

			VultsMark =		"대머리수리 표식",	-- Hive Scum
		},
		meleespec_text_colour = {
			Meleespec =		"근접 전문가",

			Meleejust =		"근접 정의",		-- Arbites

			Exhausted =		"탈진",				-- Hive Scum
		},
		rangedspec_text_colour = {
			Rangedspec =	"원거리 전문가",

			Rangedjust =	"원거리 정의",		-- Arbites
		},
	-- Arbitres
	class_arbites_text_colour = {
		cls_arb =		"아비트레이터",
		cls_arb2 =		"아비트레이터의",
	},
	-- Hive Scum
	class_scum_text_colour = {
		cls_scm =		"하이브 쓰레기",
		cls_scm2 =		"하이브 쓰레기의",
	},
		chemtox_text_colour = {
			Chem_Tox =		"케믹스 독소",

			Med_Stimm =		"의료 스팀",
		},

-- 특성
	talents_text_colour = {
-- Zealot
		Holy_relic =	"성스러운 유물",
		Stun_gren =		"기절 수류탄",
-- Arbites
		Arbites_gren =	"아비트레이터 수류탄",
		BreakZLine =	"전선 돌파",
-- Psyker
		Assail =		"어세일",
		Brain_burst =	"브레인 버스트",
		Brain_rupture =	"브레인 랩쳐",
		Enfeeble =		"엔피블",
		Scrier_gaze =	"스크라이어 게이즈",
		Scriers_gaze =	"스크라이어 게이즈",
		Smite =			"스마이트",
-- Veteran
		Frag_gren =		"파편 수류탄",
		Fragm_gren =	"파편 수류탄",
		Rangd_stnc =	"원거리 자세",
		Duty_honor =	"의무와 명예",
-- Ogryn
		Att_Seeker =	"관심 추구자",

-- 페넌스
		Base_tut_p =	"기본 훈련",
		Curio_p =		"호기심",
		Omnissia_p =	"오미니시아의 제단",
		Prologue_p =	"프롤로그",
		Sir_melk_p =	"사이어 멜크의 레퀴지토리움",

	-- Psyker
		assail =		"어세일",
		bburst =		"브레인 버스트",
		bburst1 =		"브레인 랩쳐",
		disrdest =		"디스럽트 데스티니",
		empsionics =	"강화된 사이오닉",
		kinetpres =		"키네틱 프레젠스",
		prescience =	"프레시언스",
		psy_wrath =		"사이키네틱 분노",
		psy_wrath2 =	"벤팅 쉬릭",
		scriersgaze =	"스크라이어 게이즈",
		seerspres =		"시어즈 프레젠스",
		smite =			"스마이트",
		telekshii =		"텔레키네틱 실드",
	-- Ogryn
		big_box =		"빅 박스 오브 허트",
		big_box2 =		"폭탄 투하!",
		bigfriendro =	"빅 프렌들리 록",
		bonebraura =	"본브레이커 오라",
		bull_rush =		"불 러시",
		bull_rush4 =	"굴하지 않음",
		burstlimo =		"버스트 리미터 오버라이드",
		cowculaura =	"카울드 컬링",
		feelnop =		"고통 무시",
		fragbomb =		"파편 폭탄",
		heavyhitter =	"헤비 히터",
		loyalprot =		"충성스러운 보호자",
		pbbarrage =		"근접 집중 사격",
		stayclose =		"가까이 있어!",
	-- Veteran
		closenkill =	"클로즈 앤 킬",
		exec_stan =		"집행자 자세",
		fcs_trg =		"주시 대상!",
		firetim =		"파이어 팀",
		frag_gr =		"파편 수류탄",
		infiltr =		"잠입",
		krak_gr =		"크랙 수류탄",
		scavenger =		"청소부",
		snipcon =		"저격수의 집중",
		smok_gr =		"연막 수류탄",
		survivalist =	"생존 전문가",
		voiceoc =		"보이스 오브 커맨드",
		volley_fire =	"발리 파이어",
		weapspec =		"무기 전문가",
	-- Zealot
		beaconop =		"순수의 봉화",
		benedict =		"축복",
		blazingp =		"타오르는 경건",
		chast_wckd =	"악인 응징",
		chorusosf =		"영적 인내의 합창",
		fanrage =		"분노",
		fire_gren =		"화염 수류탄",
		fury_faithful =	"신실한 자의 분노",
		holy_revenant =	"성스러운 망령",
		inexor =		"무자비한 심판",
		klinvery =		"신앙의 검",
		loner =			"외톨이",
		martydom =		"순교",
		shock_gren =	"기절 폭풍 수류탄",
		shock_gren1 =	"기절 수류탄",
		shroudf =		"슈라우드 필드",
		momentum =		"운동량",
	},

-- 난이도
	-- sedition_text_colour = {
		-- sedition =		"세디션",
	-- },
	uprising_text_colour = {
		uprising =		"업라이징",
	},
	malice_text_colour = {
		malice =		"말리스",
	},
	heresy_text_colour = {
		heresy =		"헤러시",
	},
	damnation_text_colour = {
		damnation =		"댐네이션",
	},
	auric_text_colour = {
		auric =			"오릭",
	},

-- 쓰레기 스탯
	dump_stat_text_colour = {
		Mobility =		"기동성",
		Melee_dmg =		"근접 피해",
		Warp_resist =	"워프 저항",
	},
	dump_stat2_text_colour = {
		Ammo =			"탄약",
		Defences =		"방어",
		Heat_mngt =		"열 관리",
	},
	dump_stat3_text_colour = {
		DamageDS =		"피해",
	},
}

-- 컬러 키워드 생성 메인 함수
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
				result[key .. "_rgb_ko"] = colored_text
			else
				result[key .. "_rgb_ko"] = text
			end
		end
	end

	return result
end

--[+ +자주 반복되는 구문+ +]-- CPhrs("")
local function create_phrs_ko(colors_ko)
	-- 이 파일을 위한 로컬 상수
	local Dot_green =	"{#color(35, 255, 5)}•{#reset()}"
	local Dot_red =		"{#color(255, 35, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_ko[key] or fallback
	end

	return {
	Can_appl_thr_shlds =		Dot_green.." 실드를 통과하여 적용 가능.",
	Can_be_refr =				Dot_green.." 지속 시간 동안 새로고침 가능.",
	Can_be_refr_drop_1 =		Dot_green.." 중첩은 지속 시간 동안 새로고침 가능하며, 하나씩 소모됩니다.",
	Can_gen_mult =				Dot_green.." 한 번의 공격으로 여러 중첩 생성 가능.\n",
	Can_proc_mult =				Dot_green.." "..CKWord("관통", "Cleaving_rgb_ko").." 시 한 번의 공격으로 여러 번 발동 가능.\n",
	Can_proc_mult_str =			Dot_green.." "..CKWord("관통", "Cleaving_rgb_ko").." 시 여러 번 발동 가능.\n",
	Refr_dur_stappl =			Dot_green.." 중첩 적용 시 지속 시간 새로고침.",
-- Psyker
	Doesnt_Stack_Psy_Aura =		Dot_red.." 다른 "..CKWord("사이커", "cls_psy_rgb_ko").."의 동일한 오라와 중첩되지 않음.",
	Doesnt_Stack_Psy_eff =		Dot_red.." 다른 "..CKWord("사이커", "cls_psy_rgb_ko").."의 동일한 디버프와 중첩되지 않음.",
-- Veteran
	Doesnt_Stack_Vet_Aura =		Dot_red.." 다른 "..CKWord("베테랑", "cls_vet_rgb_ko").."의 동일한 오라와 중첩되지 않음.",
-- Zealot
	Doesnt_Stack_Zea_Aura =		Dot_red.." 다른 "..CKWord("질럿", "cls_zea_rgb_ko").."의 동일한 오라와 중첩되지 않음.",
	Doesnt_Stack_Zea_abil =		Dot_red.." 다른 "..CKWord("질럿", "cls_zea_rgb_ko").."의 동일한 특성과 중첩되지 않음.",
-- Ogryn
	Doesnt_Stack_Ogr_Aura =		Dot_red.." 다른 "..CKWord("오그린", "cls_ogr_rgb_ko").."의 동일한 오라와 중첩되지 않음.",
	Doesnt_Stack_Ogr_abil =		Dot_red.." 다른 "..CKWord("오그린", "cls_ogr_rgb_ko").."의 동일한 특성과 중첩되지 않음.",
-- Hive Scum
	Doesnt_Stack_Scm_Aura =		Dot_red.." 다른 "..CKWord("하이브 쓰레기", "cls_scm_rgb_ko").."의 동일한 오라와 중첩되지 않음.",
	Doesnt_Stack_Scm_eff =		Dot_red.." 다른 "..CKWord("하이브 쓰레기", "cls_scm_rgb_ko").."의 동일한 디버프와 중첩되지 않음.",

	Cant_appl_thr_shlds =		Dot_red.." 실드를 통과하여 적용 불가.",
	Cant_be_refr =				Dot_red.." 지속 시간 동안 새로고침 불가.",
	Cant_Crit =					Dot_red.." "..CKWord("크리티컬", "Crit_rgb_ko").." 불가.\n",
	Carap_cant_clv =			Dot_red.." 카라페이스 아머는 기본적으로 "..CKWord("관통", "Cleaved_rgb_ko").." 불가.",
	Carap_cant_cleave =			Dot_red.." 카라페이스 아머는 기본적으로 "..CKWord("관통", "Cleaved_rgb_ko").." 불가.",
	Dont_intw_coher_toughn =	Dot_red.." "..CKWord("일체감", "Coherency_rgb_ko").." "..CKWord("인내", "Toughness_rgb_ko").." 재생과 상호작용하지 않음.",
	}
end

--[+ +참고 사항+ +]-- CNote("")
local function create_nts_ko(colors_ko)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_ko[key] or fallback
	end

	return {
		Brtl_note =				Dot_green.." "..CKWord("취약성", "Brittleness_rgb_ko").."은 팀의 적에게 주는 "..CKWord("피해", "Damage_rgb_ko").."를 증가시킵니다.",
		Fns_note =				Dot_green.." "..CKWord("섬세함", "Finesse_rgb_ko").."은 "..CKWord("약점 피해", "Weakspot_dmg_rgb_ko").."와 "..CKWord("크리티컬 피해", "Crit_dmg_r_rgb_ko").."를 증가시킵니다.",
		Impact_note =			Dot_green.." "..CKWord("충격", "Impact_rgb_ko").."은 적에게 주는 "..CKWord("스태거", "Stagger_rgb_ko").." 효과를 증가시킵니다.",
		Pwr_note =				Dot_green.." "..CKWord("힘", "Strength_rgb_ko").."은 "..CKWord("피해", "Damage_rgb_ko")..", "..CKWord("스태거", "Stagger_rgb_ko")..", "..CKWord("관통", "Cleave_rgb_ko").."을 증가시킵니다.",
		Rend_note =				Dot_green.." "..CKWord("관통", "Rending_rgb_ko").."은 자신의 "..CKWord("피해", "Damage_rgb_ko").."를 증가시킵니다."
	}
end

-- 컬러 생성
local colored_keywords = create_colored_keywords()

-- 모든 것 반환
return {
	keywords = colored_keywords,				-- 컬러 키워드
	phrs = create_phrs_ko(colored_keywords),	-- 자주 반복되는 구문
	nts = create_nts_ko(colored_keywords)		-- 참고 사항
}