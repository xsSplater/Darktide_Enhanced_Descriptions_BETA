---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text


--[+ 天賦 +]--
	--[+ ++老兵 ++ +]--
	local tal_col = Color[mod:get("talents_penances_text_colour")](255, true)
	local volley_fire_rgb_tw = iu_actit("火力齊射", tal_col)
	local snipcon_rgb_tw = iu_actit("狙擊專注", tal_col)
	local executioner_stance_rgb_tw = iu_actit("處決者姿態", tal_col)
	local krak_gr_rgb_tw = iu_actit("穿甲手雷", tal_col)
	local frag_gr_rgb_tw = iu_actit("破片手雷", tal_col)
	local smok_gr_rgb_tw = iu_actit("煙霧手雷", tal_col)
	local fcs_trg_rgb_tw = iu_actit("鎖定目標!", tal_col)
	local scavenger_rgb_tw = iu_actit("拾荒者", tal_col)
	local voiceoc_rgb_tw = iu_actit("發號施令", tal_col)
	local firetim_rgb_tw = iu_actit("火力小分隊", tal_col)
	local infiltr_rgb_tw = iu_actit("滲透", tal_col)
	local closenkill_rgb_tw = iu_actit("抵近殺敵", tal_col)
	local weapspec_rgb_tw = iu_actit("武器專家", tal_col)
	local survivalist_rgb_tw = iu_actit("生存專家", tal_col)

		--[+ ++狂信徒++ +]--
	local shock_gren0_rgb_tw = iu_actit("眩暈風暴手雷", tal_col)
	local shock_gren_rgb_tw = iu_actit("眩暈風暴手雷", tal_col) -- -- -- -- -- -- -
	local fire_gren_rgb_tw = iu_actit("獻祭手雷", tal_col)
	local shock_gren1_rgb_tw = iu_actit("眩暈手雷", tal_col)
	local shock_gren2_rgb_tw = iu_actit("眩暈手雷", tal_col) -- -- -- -- -- -- -- --
	local chastise_wicked_rgb_tw = iu_actit("懲奸除惡", tal_col)
	local chastise_wicked2_rgb_tw = iu_actit("懲奸除惡", tal_col) -- -- -- --
	local fury_faithful_rgb_tw = iu_actit("有信者之怒", tal_col)
	local martydom_rgb_tw = iu_actit("殉道", tal_col)
	local holy_revenant_rgb_tw = iu_actit("吊命聖徒", tal_col)
	local chorusosf_rgb_tw = iu_actit("不屈靈魂合唱", tal_col)
	local beaconop_rgb_tw = iu_actit("純潔信標", tal_col)
	local klinvery_rgb_tw = iu_actit("信仰之刃", tal_col)
	local shroudf_rgb_tw = iu_actit("隱秘領域", tal_col)
	local benedict_rgb_tw = iu_actit("恩賜", tal_col)
	local loner_rgb_tw = iu_actit("孤狼", tal_col)
	local fanrage_rgb_tw = iu_actit("狂怒", tal_col)
	local momentum_rgb_tw = iu_actit("勢能", tal_col)
	local inexor_rgb_tw = iu_actit("命定審判", tal_col)
	local blazingp_rgb_tw = iu_actit("熾熱虔誠", tal_col)
	
		--[+ ++靈能者++ +]--
	local bburst_rgb_tw = iu_actit("顱腦爆裂", tal_col)
	local bburst0_rgb_tw = iu_actit("顱腦爆裂", tal_col) -- -- -- -- -- -- -- -- -- -
	local bburst1_rgb_tw = iu_actit("顱腦崩裂", tal_col)
	local bburst2_rgb_tw = iu_actit("顱腦崩裂", tal_col) -- -- -- -- -- -- -- -- --
	local smite_rgb_tw = iu_actit("懲戒", tal_col)
	local disrdest_rgb_tw = iu_actit("擾動命運", tal_col)
	local psy_wrath_rgb_tw = iu_actit("靈能學者之怒", tal_col)
	local psy_wrath2_rgb_tw = iu_actit("靈能尖嘯", tal_col)
	local telekshii_rgb_tw = iu_actit("念力護盾", tal_col)
	local empsionics_rgb_tw = iu_actit("靈能強化", tal_col)
	local assail_rgb_tw = iu_actit("靈能攻擊", tal_col)
	local scriersgaze_rgb_tw = iu_actit("占卜者的注視", tal_col)
	local kinetpres_rgb_tw = iu_actit("動能釋放", tal_col)
	local prescience_rgb_tw = iu_actit("預兆", tal_col)
	local seerspres_rgb_tw = iu_actit("先知之眼", tal_col)

		--[+ ++歐格林++ +]--
	local bull_rush_rgb_tw = iu_actit("蠻牛衝撞", tal_col)
	local bull_rush2_rgb_tw = iu_actit("蠻牛衝撞", tal_col) -- -- -- -- -- -- -- -- --
	local bull_rush3_rgb_tw = iu_actit("蠻牛衝撞", tal_col) -- -- -- -- -- -- -- -- --
	local bull_rush4_rgb_tw = iu_actit("不屈不撓", tal_col)
	local big_box_rgb_tw = iu_actit("巨量傷害盒", tal_col)
	local big_box2_rgb_tw = iu_actit("投彈完畢!", tal_col)
	local burstlimo_rgb_tw = iu_actit("爆限超載", tal_col)
	local stayclose_rgb_tw = iu_actit("跟緊我!", tal_col)
	local loyalprot_rgb_tw = iu_actit("忠誠守護者", tal_col)
	local feelnop_rgb_tw = iu_actit("麻木", tal_col)
	local bonebraura_rgb_tw = iu_actit("破骨者之環", tal_col)
	local cowculaura_rgb_tw = iu_actit("優勝劣汰", tal_col)
	local heavyhitter_rgb_tw = iu_actit("重拳出擊", tal_col)
	local bigfriendro_rgb_tw = iu_actit("投石問路", tal_col)
	local fragbomb_rgb_tw = iu_actit("破片炸彈", tal_col)
	local pbbarrage_rgb_tw = iu_actit("貼身火力", tal_col)

		--[+ ++不同的關鍵字++ +]--
	local tal_col = Color[mod:get("talents_text_colour")](255, true)
	local Prologue_p_rgb_tw = iu_actit("序章", tal_col)
	local Curio_p_rgb_tw = iu_actit("珍品", tal_col)
	local Aura_p_rgb_tw = iu_actit("光環", tal_col)
	local Aura_i_p_rgb_tw = iu_actit("光環範圍內", tal_col) -- ing
	local AbilityModifiers_p_rgb_tw = iu_actit("技能修改器", tal_col)
	local Ability_p_rgb_tw = iu_actit("技能", tal_col)
	local Passive_p_rgb_tw = iu_actit("被動", tal_col)
	local KeyStone_p_rgb_tw = iu_actit("鑰石", tal_col)
	local KeyStone_i_p_rgb_tw = iu_actit("觸發鑰石", tal_col) -- ing
	local Blitz_p_rgb_tw = iu_actit("閃擊", tal_col)
	local Psykhanium_p_rgb_tw = iu_actit("靈能室", tal_col)
	local Base_tut_p_rgb_tw = iu_actit("基礎訓練", tal_col)
	local Sir_melk_p_rgb_tw = iu_actit("梅爾克領主的必備品店", tal_col)
	local Omnissia_p_rgb_tw = iu_actit("歐姆尼賽亞的神龕", tal_col)

return {
	Prologue_p_rgb_tw = Prologue_p_rgb_tw,
	Curio_p_rgb_tw = Curio_p_rgb_tw,
	Aura_p_rgb_tw = Aura_p_rgb_tw,
	Aura_i_p_rgb_tw = Aura_i_p_rgb_tw,
	AbilityModifiers_p_rgb_tw = AbilityModifiers_p_rgb_tw,
	Ability_p_rgb_tw = Ability_p_rgb_tw,
	Passive_p_rgb_tw = Passive_p_rgb_tw,
	KeyStone_p_rgb_tw = KeyStone_p_rgb_tw,
	KeyStone_i_p_rgb_tw = KeyStone_i_p_rgb_tw,
	Blitz_p_rgb_tw = Blitz_p_rgb_tw,
	Psykhanium_p_rgb_tw = Psykhanium_p_rgb_tw,
	Base_tut_p_rgb_tw = Base_tut_p_rgb_tw,
	Sir_melk_p_rgb_tw = Sir_melk_p_rgb_tw,
	Omnissia_p_rgb_tw = Omnissia_p_rgb_tw,

	volley_fire_rgb_tw = volley_fire_rgb_tw,
	snipcon_rgb_tw = snipcon_rgb_tw,
	executioner_stance_rgb_tw = executioner_stance_rgb_tw,
	krak_gr_rgb_tw = krak_gr_rgb_tw,
	frag_gr_rgb_tw = frag_gr_rgb_tw,
	smok_gr_rgb_tw = smok_gr_rgb_tw,
	fcs_trg_rgb_tw = fcs_trg_rgb_tw,
	scavenger_rgb_tw = scavenger_rgb_tw,
	voiceoc_rgb_tw = voiceoc_rgb_tw,
	firetim_rgb_tw = firetim_rgb_tw,
	infiltr_rgb_tw = infiltr_rgb_tw,
	closenkill_rgb_tw = closenkill_rgb_tw,
	weapspec_rgb_tw = weapspec_rgb_tw,
	survivalist_rgb_tw = survivalist_rgb_tw,

	shock_gren0_rgb_tw = shock_gren0_rgb_tw,
	shock_gren_rgb_tw = shock_gren_rgb_tw,
	fire_gren_rgb_tw = fire_gren_rgb_tw,
	shock_gren1_rgb_tw = shock_gren1_rgb_tw,
	shock_gren2_rgb_tw = shock_gren2_rgb_tw,
	chastise_wicked_rgb_tw = chastise_wicked_rgb_tw,
	chastise_wicked2_rgb_tw = chastise_wicked2_rgb_tw,
	fury_faithful_rgb_tw = fury_faithful_rgb_tw,
	martydom_rgb_tw = martydom_rgb_tw,
	holy_revenant_rgb_tw = holy_revenant_rgb_tw,
	chorusosf_rgb_tw = chorusosf_rgb_tw,
	beaconop_rgb_tw = beaconop_rgb_tw,
	klinvery_rgb_tw = klinvery_rgb_tw,
	shroudf_rgb_tw = shroudf_rgb_tw,
	benedict_rgb_tw = benedict_rgb_tw,
	loner_rgb_tw = loner_rgb_tw,
	fanrage_rgb_tw = fanrage_rgb_tw,
	momentum_rgb_tw = momentum_rgb_tw,
	inexor_rgb_tw = inexor_rgb_tw,
	blazingp_rgb_tw = blazingp_rgb_tw,

	bburst_rgb_tw = bburst_rgb_tw,
	bburst0_rgb_tw = bburst0_rgb_tw,
	bburst1_rgb_tw = bburst1_rgb_tw,
	bburst2_rgb_tw = bburst2_rgb_tw,
	smite_rgb_tw = smite_rgb_tw,
	disrdest_rgb_tw = disrdest_rgb_tw,
	psy_wrath_rgb_tw = psy_wrath_rgb_tw,
	psy_wrath2_rgb_tw = psy_wrath2_rgb_tw,
	telekshii_rgb_tw = telekshii_rgb_tw,
	empsionics_rgb_tw = empsionics_rgb_tw,
	assail_rgb_tw = assail_rgb_tw,
	scriersgaze_rgb_tw = scriersgaze_rgb_tw,
	kinetpres_rgb_tw = kinetpres_rgb_tw,
	prescience_rgb_tw = prescience_rgb_tw,
	seerspres_rgb_tw = seerspres_rgb_tw,

	bull_rush_rgb_tw = bull_rush_rgb_tw,
	bull_rush2_rgb_tw = bull_rush2_rgb_tw,
	bull_rush3_rgb_tw = bull_rush3_rgb_tw,
	bull_rush4_rgb_tw = bull_rush4_rgb_tw,
	big_box_rgb_tw = big_box_rgb_tw,
	big_box2_rgb_tw = big_box2_rgb_tw,
	burstlimo_rgb_tw = burstlimo_rgb_tw,
	stayclose_rgb_tw = stayclose_rgb_tw,
	loyalprot_rgb_tw = loyalprot_rgb_tw,
	feelnop_rgb_tw = feelnop_rgb_tw,
	bonebraura_rgb_tw = bonebraura_rgb_tw,
	cowculaura_rgb_tw = cowculaura_rgb_tw,
	heavyhitter_rgb_tw = heavyhitter_rgb_tw,
	bigfriendro_rgb_tw = bigfriendro_rgb_tw,
	fragbomb_rgb_tw = fragbomb_rgb_tw,
	pbbarrage_rgb_tw = pbbarrage_rgb_tw,
}
