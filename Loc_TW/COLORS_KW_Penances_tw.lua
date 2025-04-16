---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

--[+ 天賦 +]--
	--[+ ++老兵 ++ +]--
	local tal_col = Color[mod:get("talents_penances_text_colour")](255, true)
	local volley_fire_rgb = iu_actit("火力齊射", tal_col)
	local snipcon_rgb = iu_actit("狙擊專注", tal_col)
	local executioner_stance_rgb = iu_actit("處決者姿態", tal_col)
	local krak_gr_rgb = iu_actit("穿甲手雷", tal_col)
	local frag_gr_rgb = iu_actit("破片手雷", tal_col)
	local smok_gr_rgb = iu_actit("煙霧手雷", tal_col)
	local fcs_trg_rgb = iu_actit("鎖定目標!", tal_col)
	local scavenger_rgb = iu_actit("拾荒者", tal_col)
	local voiceoc_rgb = iu_actit("發號施令", tal_col)
	local firetim_rgb = iu_actit("火力小分隊", tal_col)
	local infiltr_rgb = iu_actit("滲透", tal_col)
	local closenkill_rgb = iu_actit("抵近殺敵", tal_col)
	local weapspec_rgb = iu_actit("武器專家", tal_col)
	local survivalist_rgb = iu_actit("生存專家", tal_col)

		--[+ ++狂信徒++ +]--
	local shock_gren0_rgb = iu_actit("眩暈風暴手雷", tal_col)
	local shock_gren_rgb = iu_actit("眩暈風暴手雷", tal_col) -- -- -- -- -- -- -
	local fire_gren_rgb = iu_actit("獻祭手雷", tal_col)
	local shock_gren1_rgb = iu_actit("眩暈手雷", tal_col)
	local shock_gren2_rgb = iu_actit("眩暈手雷", tal_col) -- -- -- -- -- -- -- --
	local chastise_wicked_rgb = iu_actit("懲奸除惡", tal_col)
	local chastise_wicked2_rgb = iu_actit("懲奸除惡", tal_col) -- -- -- --
	local fury_faithful_rgb = iu_actit("有信者之怒", tal_col)
	local martydom_rgb = iu_actit("殉道", tal_col)
	local holy_revenant_rgb = iu_actit("吊命聖徒", tal_col)
	local chorusosf_rgb = iu_actit("不屈靈魂合唱", tal_col)
	local beaconop_rgb = iu_actit("純潔信標", tal_col)
	local klinvery_rgb = iu_actit("信仰之刃", tal_col)
	local shroudf_rgb = iu_actit("隱秘領域", tal_col)
	local benedict_rgb = iu_actit("恩賜", tal_col)
	local loner_rgb = iu_actit("孤狼", tal_col)
	local fanrage_rgb = iu_actit("狂怒", tal_col)
	local momentum_rgb = iu_actit("勢頭", tal_col)
	local inexor_rgb = iu_actit("命定審判", tal_col)
	local blazingp_rgb = iu_actit("熾熱虔誠", tal_col)
	
		--[+ ++靈能者++ +]--
	local bburst_rgb = iu_actit("顱腦爆裂", tal_col)
	local bburst0_rgb = iu_actit("顱腦爆裂", tal_col) -- -- -- -- -- -- -- -- -- -
	local bburst1_rgb = iu_actit("顱腦崩裂", tal_col)
	local bburst2_rgb = iu_actit("顱腦崩裂", tal_col) -- -- -- -- -- -- -- -- --
	local smite_rgb = iu_actit("懲戒", tal_col)
	local disrdest_rgb = iu_actit("擾動命運", tal_col)
	local psy_wrath_rgb = iu_actit("靈能學者之怒", tal_col)
	local psy_wrath2_rgb = iu_actit("靈能尖嘯", tal_col)
	local telekshii_rgb = iu_actit("念力護盾", tal_col)
	local empsionics_rgb = iu_actit("靈能強化", tal_col)
	local assail_rgb = iu_actit("靈能攻擊", tal_col)
	local scriersgaze_rgb = iu_actit("占卜者的注視", tal_col)
	local kinetpres_rgb = iu_actit("動能釋放", tal_col)
	local prescience_rgb = iu_actit("預兆", tal_col)
	local seerspres_rgb = iu_actit("先知之眼", tal_col)

		--[+ ++歐格林++ +]--
	local bull_rush_rgb = iu_actit("蠻牛衝撞", tal_col)
	local bull_rush2_rgb = iu_actit("蠻牛衝撞", tal_col) -- -- -- -- -- -- -- -- --
	local bull_rush3_rgb = iu_actit("蠻牛衝撞", tal_col) -- -- -- -- -- -- -- -- --
	local bull_rush4_rgb = iu_actit("不屈不撓", tal_col)
	local big_box_rgb = iu_actit("巨量傷害盒", tal_col)
	local big_box2_rgb = iu_actit("投彈完畢!", tal_col)
	local burstlimo_rgb = iu_actit("爆限超載", tal_col)
	local stayclose_rgb = iu_actit("跟緊我!", tal_col)
	local loyalprot_rgb = iu_actit("忠誠守護者", tal_col)
	local feelnop_rgb = iu_actit("麻木", tal_col)
	local bonebraura_rgb = iu_actit("破骨者之環", tal_col)
	local cowculaura_rgb = iu_actit("優勝劣汰", tal_col)
	local heavyhitter_rgb = iu_actit("重拳出擊", tal_col)
	local bigfriendro_rgb = iu_actit("投石問路", tal_col)
	local fragbomb_rgb = iu_actit("破片炸彈", tal_col)
	local pbbarrage_rgb = iu_actit("貼身火力", tal_col)

		--[+ ++不同的關鍵字++ +]--
	local tal_col = Color[mod:get("talents_text_colour")](255, true)
	local Prologue_p_rgb = iu_actit("序章", tal_col)
	local Curio_p_rgb = iu_actit("珍品", tal_col)
	local Aura_p_rgb = iu_actit("光環", tal_col)
	local Aura_i_p_rgb = iu_actit("光環範圍內", tal_col) -- ing
	local AbilityModifiers_p_rgb = iu_actit("技能修改器", tal_col)
	local Ability_p_rgb = iu_actit("技能", tal_col)
	local KeyStone_p_rgb = iu_actit("鑰石", tal_col)
	local KeyStone_i_p_rgb = iu_actit("觸發鑰石", tal_col) -- ing
	local Blitz_p_rgb = iu_actit("閃擊", tal_col)
	local Psykhanium_p_rgb = iu_actit("靈能室", tal_col)
	local Base_tut_p_rgb = iu_actit("基礎訓練", tal_col)
	local Sir_melk_p_rgb = iu_actit("梅爾克領主的必備品店", tal_col)
	local Omnissia_p_rgb = iu_actit("歐姆尼賽亞的神龕", tal_col)

return {
	Prologue_p_rgb = Prologue_p_rgb,
	Curio_p_rgb = Curio_p_rgb,
	Aura_p_rgb = Aura_p_rgb,
	Aura_i_p_rgb = Aura_i_p_rgb,
	Ability_p_rgb = Ability_p_rgb,
	AbilityModifiers_p_rgb = AbilityModifiers_p_rgb,
	KeyStone_p_rgb = KeyStone_p_rgb,
	KeyStone_i_p_rgb = KeyStone_i_p_rgb,
	Blitz_p_rgb = Blitz_p_rgb,
	Psykhanium_p_rgb = Psykhanium_p_rgb,
	Base_tut_p_rgb = Base_tut_p_rgb,
	Sir_melk_p_rgb = Sir_melk_p_rgb,
	Omnissia_p_rgb = Omnissia_p_rgb,

	volley_fire_rgb = volley_fire_rgb,
	snipcon_rgb = snipcon_rgb,
	executioner_stance_rgb = executioner_stance_rgb,
	krak_gr_rgb = krak_gr_rgb,
	frag_gr_rgb = frag_gr_rgb,
	smok_gr_rgb = smok_gr_rgb,
	fcs_trg_rgb = fcs_trg_rgb,
	scavenger_rgb = scavenger_rgb,
	voiceoc_rgb = voiceoc_rgb,
	firetim_rgb = firetim_rgb,
	infiltr_rgb = infiltr_rgb,
	closenkill_rgb = closenkill_rgb,
	weapspec_rgb = weapspec_rgb,
	survivalist_rgb = survivalist_rgb,

	shock_gren0_rgb = shock_gren0_rgb,
	shock_gren_rgb = shock_gren_rgb,
	fire_gren_rgb = fire_gren_rgb,
	shock_gren1_rgb = shock_gren1_rgb,
	shock_gren2_rgb = shock_gren2_rgb,
	chastise_wicked_rgb = chastise_wicked_rgb,
	chastise_wicked2_rgb = chastise_wicked2_rgb,
	fury_faithful_rgb = fury_faithful_rgb,
	martydom_rgb = martydom_rgb,
	holy_revenant_rgb = holy_revenant_rgb,
	chorusosf_rgb = chorusosf_rgb,
	beaconop_rgb = beaconop_rgb,
	klinvery_rgb = klinvery_rgb,
	shroudf_rgb = shroudf_rgb,
	benedict_rgb = benedict_rgb,
	loner_rgb = loner_rgb,
	fanrage_rgb = fanrage_rgb,
	momentum_rgb = momentum_rgb,
	inexor_rgb = inexor_rgb,
	blazingp_rgb = blazingp_rgb,

	bburst_rgb = bburst_rgb,
	bburst0_rgb = bburst0_rgb,
	bburst1_rgb = bburst1_rgb,
	bburst2_rgb = bburst2_rgb,
	smite_rgb = smite_rgb,
	disrdest_rgb = disrdest_rgb,
	psy_wrath_rgb = psy_wrath_rgb,
	psy_wrath2_rgb = psy_wrath2_rgb,
	telekshii_rgb = telekshii_rgb,
	empsionics_rgb = empsionics_rgb,
	assail_rgb = assail_rgb,
	scriersgaze_rgb = scriersgaze_rgb,
	kinetpres_rgb = kinetpres_rgb,
	prescience_rgb = prescience_rgb,
	seerspres_rgb = seerspres_rgb,

	bull_rush_rgb = bull_rush_rgb,
	bull_rush2_rgb = bull_rush2_rgb,
	bull_rush3_rgb = bull_rush3_rgb,
	bull_rush4_rgb = bull_rush4_rgb,
	big_box_rgb = big_box_rgb,
	big_box2_rgb = big_box2_rgb,
	burstlimo_rgb = burstlimo_rgb,
	stayclose_rgb = stayclose_rgb,
	loyalprot_rgb = loyalprot_rgb,
	feelnop_rgb = feelnop_rgb,
	bonebraura_rgb = bonebraura_rgb,
	cowculaura_rgb = cowculaura_rgb,
	heavyhitter_rgb = heavyhitter_rgb,
	bigfriendro_rgb = bigfriendro_rgb,
	fragbomb_rgb = fragbomb_rgb,
	pbbarrage_rgb = pbbarrage_rgb,
}
