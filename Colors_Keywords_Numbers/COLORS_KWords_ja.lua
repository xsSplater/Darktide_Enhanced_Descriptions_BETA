---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")

-- キーワード
local CONFIG = {
	bleed_text_colour = {
		Bleed =			"出血",
		Bleeding =		"出血中",
		Bleeds =		"出血させる",
	},
	brittleness_text_colour = {
		Brittleness =	"脆さ",
	},
	burn_text_colour = {
		Burn =			"燃焼",
		Burning =		"燃焼中",
		Heat =			"熱",
		Overheat =		"過熱",
	},
	cleave_text_colour = {
		Cleave =		"薙ぎ払い",
		Cleaved =		"薙ぎ払われた",
		Cleaving =		"薙ぎ払う",
	},
	coherency_text_colour = {
		Coherency =		"結束",
	},
	combat_ability_text_colour = {
		Ability_cd =	"アビリティクールダウン",
		Cd =			"クールダウン",
		Cmbt_abil =		"戦闘アビリティ",
		Cmbt_abil_cd =	"戦闘アビリティクールダウン",
	},
	corruption_text_colour = {
		Corrupted =		"腐敗",
		Corruptdmg =	"腐敗ダメージ",
		Corruption =	"腐敗",
	},
	crit_text_colour = {
		Crit =			"クリティカル",
		Critical =		"クリティカル",

		Crit_chance =	"クリティカル発生率",
		Crt_chance =	"クリティカル発生率",

		Crit_hit =		"クリティカルヒット",
		Crit_hits =		"クリティカルヒット",
		Crt_hit_chnc =	"クリティカルヒット発生率",
		Crt_hit_col =	"クリティカルヒットダメージ",

		Crit_strike =	"クリティカルストライク",
		Crit_strikes =	"クリティカルストライク",
		Crt_chnc_r =	"クリティカルストライク発生率",
		Crt_strk_dmg =	"クリティカルストライクダメージ",

		Crit_Attk =		"クリティカルアタック",
		Crit_shots =	"クリティカルショット",

		Crit_dmg_r =	"クリティカルダメージ",
		Crt_dmg_r =		"クリティカルダメージ",

		Conc_Stimm =	"集中スティム",
	},
	damage_text_colour = {
		Damage =		"ダメージ",
		Damagewrp =		"ワープダメージ",

		Combat_Stimm =	"戦闘スティム",
	},
	electrocuted_text_colour = {
		Electrocute =	"感電",
		Electrocuted =	"感電中",
		Electrocutes =	"感電させる",
		Electrcuting =	"感電させる",
		Electrocution =	"感電",
	},
	finesse_text_colour = {
		Finesse =		"フィネス",
		Finesse_dmg =	"フィネスダメージ",
	},
	health_text_colour = {
		Health =		"体力",
		Wound =			"負傷",
		Wounds =		"負傷",
	},
	hit_mass_text_colour = {
		Hit_mass =		"ヒットマス",
	},
	impact_text_colour = {
		Impact =		"衝撃",
	},
	peril_text_colour = {
		Peril =			"危険",
		Perils =		"危険",
		PerilsozWarp =	"ワープの危険",
	},
	power_text_colour = {
		Power =			"パワー",
		Strength =		"強さ",
	},
	rending_text_colour = {
		Rending =		"貫通",

		Cartel_Stimm =	"カルテル特別スティム",
	},
	soulblaze_text_colour = {
		Soulblaze =		"ソウルブレイズ",
	},
	stagger_text_colour = {
		Stagger =		"スタッガー",
		Staggered =		"スタッガー状態",
		Staggering =	"スタッガーさせる",
		Staggers =		"スタッガー",
		Stun =			"スタン",
		Stunned =		"スタン状態",
		Stuns =			"スタンさせる",
	},
	stamina_text_colour = {
		Stamina =		"スタミナ",
		Stamina_c_r =	"スタミナ消費",
	},
	toughness_text_colour = {
		TDR =			"TDR",
		TGHN =			"耐久",
		Tghns_dmg =		"耐久ダメージ",
		Tghns_dmg_red =	"耐久ダメージ軽減",
		Toughness =		"耐久",
	},
	weakspot_text_colour = {
		Weak_spot =		"弱点",
		Weakspot = 		"弱点",
		Weakspots =		"弱点",

		Weakspothit =	"弱点ヒット",
		Weakspothits =	"弱点ヒット",

		Weakspot_dmg =	"弱点ダメージ",
	},

-- クラス
	-- Psyker
	class_psyker_text_colour = {
		cls_psy =		"サイカー",
		cls_psys =		"サイカー",
		cls_psy2 =		"サイカーの",
	},
		precision_text_colour = {
			Precision =		"精密",

			Celerity_Stimm = "迅速スティム",
		},
	-- Ogryn
	class_ogryn_text_colour = {
		cls_ogr =		"オグリン",
		cls_ogr2 =		"オグリンの",
	},
		fnp_text_colour = {
			Feel_no_pain =	"痛覚鈍麻",

			Desperado =		"デスペラード",			-- Hive Scum
		},
		luckyb_text_colour = {
			Lucky_bullet =	"ラッキーボレー",

			Tghnss_gold =	"耐久",				-- Zealot
		},
		trample_text_colour = {
			Trample =		"踏みつけ",

			Depend =		"依存",				-- Hive Scum
		},
	-- Zealot
	class_zealot_text_colour = {
		cls_zea =		"ジーロット",
		cls_zea2 =		"ジーロットの",
	},
		fury_text_colour = {
			Fury =			"憤怒",

			Rampage =		"ランページ！",		-- Hive Scum
		},
		momentum_text_colour = {
			Momentum =		"勢い",

			Taunt =			"挑発",				-- Ogryn
			Taunted =		"挑発された",			-- Ogryn
			Taunting =		"挑発中",			-- Ogryn

			Adren =			"アドレナリン",		-- Hive Scum
			AdrenFr =		"アドレナリンフレンジー",-- Hive Scum
		},
		stealth_text_colour = {
			Stealth =		"ステルス",

			Psy_Mark =		"マークされた",		-- Psyker
			Psy_mark =		"マークされた",		-- Psyker
		},
	-- Veteran
	class_veteran_text_colour = {
		cls_vet =		"ベテラン",
		cls_vet2 =		"ベテランの",
	},
		focus_text_colour = {
			Forceful =		"強力",
			Focus =			"集中",

			Shout =			"叫び",				-- Hive Scum
		},
		focust_text_colour = {
			Focus_Target =	"注目対象",

			Markedenemy =	"マークされた敵",		-- Psyker

			VultsMark =		"ハゲワシのマーク",	-- Hive Scum
		},
		meleespec_text_colour = {
			Meleespec =		"近接スペシャリスト",

			Meleejust =		"近接ジャスティス",	-- Arbites

			Exhausted =		"消耗",				-- Hive Scum
		},
		rangedspec_text_colour = {
			Rangedspec =	"遠隔スペシャリスト",

			Rangedjust =	"遠隔ジャスティス",	-- Arbites
		},
	-- Arbitres
	class_arbites_text_colour = {
		cls_arb =		"アービトレーター",
		cls_arb2 =		"アービトレーターの",
	},
	-- Hive Scum
	class_scum_text_colour = {
		cls_scm =		"ハイヴ・スカム",
		cls_scm2 =		"ハイヴ・スカムの",
	},
		chemtox_text_colour = {
			Chem_Tox =		"ケムトキシン",

			Med_Stimm =		"医療スティム",
		},

-- タレント
	talents_text_colour = {
-- Zealot
		Holy_relic =	"聖遺物",
		Stun_gren =		"スタングレネード",
-- Arbites
		Arbites_gren =	"アービトレーターグレネード",
		BreakZLine =	"戦列突破",
-- Psyker
		Assail =		"アセイル",
		Brain_burst =	"ブレインバースト",
		Brain_rupture =	"ブレインラプチャー",
		Enfeeble =		"エンフィーブル",
		Scrier_gaze =	"スクライヤーゲイズ",
		Scriers_gaze =	"スクライヤーゲイズ",
		Smite =			"スマイト",
-- Veteran
		Frag_gren =		"破片グレネード",
		Fragm_gren =	"破片グレネード",
		Rangd_stnc =	"遠隔スタンス",
		Duty_honor =	"義務と名誉",
-- Ogryn
		Att_Seeker =	"注目追跡者",

-- ペナンス
		Base_tut_p =	"基礎訓練",
		Curio_p =		"キュリオ",
		Omnissia_p =	"オムニサイアの祭壇",
		Prologue_p =	"プロローグ",
		Sir_melk_p =	"サー・メルクのレクイジトリアム",

	-- Psyker
		assail =		"アセイル",
		bburst =		"ブレインバースト",
		bburst1 =		"ブレインラプチャー",
		disrdest =		"ディスラプトデスティニー",
		empsionics =	"エンパワードサイオニクス",
		kinetpres =		"キネティックプレゼンス",
		prescience =	"プレシエンス",
		psy_wrath =		"サイキネティックラース",
		psy_wrath2 =	"ベンティングシュリーク",
		scriersgaze =	"スクライヤーゲイズ",
		seerspres =		"シアーズプレゼンス",
		smite =			"スマイト",
		telekshii =		"テレキネティックシールド",
	-- Ogryn
		big_box =		"ビッグボックスオブハート",
		big_box2 =		"ボムズアウェイ！",
		bigfriendro =	"ビッグフレンドリーロック",
		bonebraura =	"ボーンブレーカーオーラ",
		bull_rush =		"ブルラッシュ",
		bull_rush4 =	"不屈",
		burstlimo =		"バーストリミッターオーバーライド",
		cowculaura =	"カワードカリング",
		feelnop =		"痛覚鈍麻",
		fragbomb =		"破片爆弾",
		heavyhitter =	"ヘビーヒッター",
		loyalprot =		"ロイヤルプロテクター",
		pbbarrage =		"接戦バラージ",
		stayclose =		"近くにいて！",
	-- Veteran
		closenkill =	"クローズアンドキル",
		exec_stan =		"エクゼキューショナーズスタンス",
		fcs_trg =		"注目対象！",
		firetim =		"ファイアチーム",
		frag_gr =		"破片グレネード",
		infiltr =		"インフィルトレイト",
		krak_gr =		"クラックグレネード",
		scavenger =		"スカベンジャー",
		snipcon =		"マークスマンズフォーカス",
		smok_gr =		"スモークグレネード",
		survivalist =	"サバイバリスト",
		voiceoc =		"ボイスオブコマンド",
		volley_fire =	"ボレーファイア",
		weapspec =		"ウェポンスペシャリスト",
	-- Zealot
		beaconop =		"ビーコンオブピュリティ",
		benedict =		"ベネディクト",
		blazingp =		"ブレイジングピエティ",
		chast_wckd =	"チャスティズザウィケッド",
		chorusosf =		"コーラスオブスピリチュアルフォーティチュード",
		fanrage =		"憤怒",
		fire_gren =		"イモレーショングレネード",
		fury_faithful =	"フューリオブザフェイスフル",
		holy_revenant =	"ホーリーレベナント",
		inexor =		"イネクソラブルジャッジメント",
		klinvery =		"ブレードズオブフェイス",
		loner =			"ローナー",
		martydom =		"マータイアダム",
		shock_gren =	"スタンストームグレネード",
		shock_gren1 =	"スタングレネード",
		shroudf =		"シュラウドフィールド",
		momentum =		"勢い",
	},

-- 難易度
	-- sedition_text_colour = {
		-- sedition =		"セディション",
	-- },
	uprising_text_colour = {
		uprising =		"アップライジング",
	},
	malice_text_colour = {
		malice =		"マリス",
	},
	heresy_text_colour = {
		heresy =		"ヘレシー",
	},
	damnation_text_colour = {
		damnation =		"ダムネーション",
	},
	auric_text_colour = {
		auric =			"オリック",
	},

-- ダンプステータス
	dump_stat_text_colour = {
		Mobility =		"機動性",
		Melee_dmg =		"近接ダメージ",
		Warp_resist =	"ワープ耐性",
	},
	dump_stat2_text_colour = {
		Ammo =			"弾薬",
		Defences =		"防御",
		Heat_mngt =		"熱管理",
	},
	dump_stat3_text_colour = {
		DamageDS =		"ダメージ",
	},
}

-- カラーキーワードを作成するメイン関数
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
				result[key .. "_rgb_ja"] = colored_text
			else
				result[key .. "_rgb_ja"] = text
			end
		end
	end

	return result
end

--[+ +頻繁に繰り返されるフレーズ+ +]-- CPhrs("")
local function create_phrs_ja(colors_ja)
	-- このファイル用のローカル定数
	local Dot_green =	"{#color(35, 255, 5)}•{#reset()}"
	local Dot_red =		"{#color(255, 35, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_ja[key] or fallback
	end

	return {
	Can_appl_thr_shlds =		Dot_green.." シールド越しに適用可能。",
	Can_be_refr =				Dot_green.." 持続時間中にリフレッシュ可能。",
	Can_be_refr_drop_1 =		Dot_green.." スタックは持続時間中にリフレッシュ可能で、1つずつ消費される。",
	Can_gen_mult =				Dot_green.." 1回の攻撃で複数スタック生成可能。\n",
	Can_proc_mult =				Dot_green.." "..CKWord("薙ぎ払い", "Cleaving_rgb_ja").."時に1回の攻撃で複数回発動可能。\n",
	Can_proc_mult_str =			Dot_green.." "..CKWord("薙ぎ払い", "Cleaving_rgb_ja").."時に複数回発動可能。\n",
	Refr_dur_stappl =			Dot_green.." スタック適用時に持続時間をリフレッシュ。",
-- Psyker
	Doesnt_Stack_Psy_Aura =		Dot_red.." 他の"..CKWord("サイカー", "cls_psy_rgb_ja").."の同じオーラとは重複しない。",
	Doesnt_Stack_Psy_eff =		Dot_red.." 他の"..CKWord("サイカー", "cls_psy_rgb_ja").."の同じデバフとは重複しない。",
-- Veteran
	Doesnt_Stack_Vet_Aura =		Dot_red.." 他の"..CKWord("ベテラン", "cls_vet_rgb_ja").."の同じオーラとは重複しない。",
-- Zealot
	Doesnt_Stack_Zea_Aura =		Dot_red.." 他の"..CKWord("ジーロット", "cls_zea_rgb_ja").."の同じオーラとは重複しない。",
	Doesnt_Stack_Zea_abil =		Dot_red.." 他の"..CKWord("ジーロット", "cls_zea_rgb_ja").."の同じタレントとは重複しない。",
-- Ogryn
	Doesnt_Stack_Ogr_Aura =		Dot_red.." 他の"..CKWord("オグリン", "cls_ogr_rgb_ja").."の同じオーラとは重複しない。",
	Doesnt_Stack_Ogr_abil =		Dot_red.." 他の"..CKWord("オグリン", "cls_ogr_rgb_ja").."の同じタレントとは重複しない。",
-- Hive Scum
	Doesnt_Stack_Scm_Aura =		Dot_red.." 他の"..CKWord("ハイヴ・スカム", "cls_scm_rgb_ja").."の同じオーラとは重複しない。",
	Doesnt_Stack_Scm_eff =		Dot_red.." 他の"..CKWord("ハイヴ・スカム", "cls_scm_rgb_ja").."の同じデバフとは重複しない。",

	Cant_appl_thr_shlds =		Dot_red.." シールド越しに適用不可。",
	Cant_be_refr =				Dot_red.." 持続時間中にリフレッシュ不可。",
	Cant_Crit =					Dot_red.." "..CKWord("クリティカル", "Crit_rgb_ja").."不可。\n",
	Carap_cant_clv =			Dot_red.." カラペースアーマーはデフォルトで"..CKWord("薙ぎ払い", "Cleaved_rgb_ja").."不可。",
	Carap_cant_cleave =			Dot_red.." カラペースアーマーはデフォルトで"..CKWord("薙ぎ払い", "Cleaved_rgb_ja").."不可。",
	Dont_intw_coher_toughn =	Dot_red.." "..CKWord("結束", "Coherency_rgb_ja").."による"..CKWord("耐久", "Toughness_rgb_ja").."回復に影響しない。",
	}
end

--[+ +注記+ +]-- CNote("")
local function create_nts_ja(colors_ja)
	local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

	local CKWord = function(fallback, key)
		return colors_ja[key] or fallback
	end

	return {
		Brtl_note =				Dot_green.." "..CKWord("脆さ", "Brittleness_rgb_ja").."はチームの敵への"..CKWord("ダメージ", "Damage_rgb_ja").."を増加させる。",
		Fns_note =				Dot_green.." "..CKWord("フィネス", "Finesse_rgb_ja").."は"..CKWord("弱点ダメージ", "Weakspot_dmg_rgb_ja").."と"..CKWord("クリティカルダメージ", "Crit_dmg_r_rgb_ja").."を増加させる。",
		Impact_note =			Dot_green.." "..CKWord("衝撃", "Impact_rgb_ja").."は敵への"..CKWord("スタッガー", "Stagger_rgb_ja").."効果を増加させる。",
		Pwr_note =				Dot_green.." "..CKWord("強さ", "Strength_rgb_ja").."は"..CKWord("ダメージ", "Damage_rgb_ja").."、"..CKWord("スタッガー", "Stagger_rgb_ja").."、"..CKWord("薙ぎ払い", "Cleave_rgb_ja").."を増加させる。",
		Rend_note =				Dot_green.." "..CKWord("貫通", "Rending_rgb_ja").."は自身の"..CKWord("ダメージ", "Damage_rgb_ja").."を増加させる。"
	}
end

-- カラー作成
local colored_keywords = create_colored_keywords()

-- すべてを返す
return {
	keywords = colored_keywords,				-- カラーキーワード
	phrs = create_phrs_ja(colored_keywords),	-- 頻繁に繰り返されるフレーズ
	nts = create_nts_ja(colored_keywords)		-- 注記
}