---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text


--[+++主要(MAIN)+++]--
--[+++靈能者(PSYKER)+++]--
	--[++精準(Precision)++]--
	local prcsn_col = Color[mod:get("precision_text_colour")](255, true)
	local Precision_rgb_tw = iu_actit("精準加成", prcsn_col)
--[+++歐格林(OGRYN)+++]--
	--[++麻木(Feel No Pain)++]--
	local fnp_col = Color[mod:get("fnp_text_colour")](255, true)
	local Feel_no_pain_rgb_tw = iu_actit("麻木", fnp_col)
	--[++幸運子彈(Lucky Bullet)++]--
	local luckyb_col = Color[mod:get("luckyb_text_colour")](255, true)
	local Lucky_bullet_rgb_tw = iu_actit("幸運子彈", luckyb_col)
	--[++踐踏(Trample)++]--
	local trample_col = Color[mod:get("trample_text_colour")](255, true)
	local Trample_rgb_tw = iu_actit("踐踏", trample_col)
--[+++狂信徒(ZEALOT)+++]--
	--[++勢能(Momentum)++]--
	local moment_col = Color[mod:get("momentum_text_colour")](255, true)
	local Momentum_rgb_tw = iu_actit("勢能", moment_col)
	--[++隱身(Stealth)++]--
	local stlth_col = Color[mod:get("stealth_text_colour")](255, true)
	local Stealth_rgb_tw = iu_actit("隱身", stlth_col)
	--[++狂怒(Fury)++]--
	local fury_col = Color[mod:get("fury_text_colour")](255, true)
	local Fury_rgb_tw = iu_actit("狂怒", fury_col)
	local Fury_i_rgb_tw = iu_actit("狂怒", fury_col)
--[+++老兵(VETERAN)+++]--
	--[++鎖定目標(Focus Target)++]--
	local focust_col = Color[mod:get("focust_text_colour")](255, true)
	local Focus_Target_rgb_tw = iu_actit("鎖定目標", focust_col)
	local Focus_Target_s_rgb_tw = iu_actit("鎖定", focust_col) --Simply
	--[++專注(Focus)++]--
	local focus_col = Color[mod:get("focus_text_colour")](255, true)
	local Focus_rgb_tw = iu_actit("專注", focus_col)
	--[++近戰專家(Melee Specialist)++]--
	local meleespec_col = Color[mod:get("meleespec_text_colour")](255, true)
	local Meleespec_rgb_tw = iu_actit("近戰專家", meleespec_col)
	--[++遠程專家(Ranged Specialist)++]--
	local rangedspec_col = Color[mod:get("rangedspec_text_colour")](255, true)
	local Rangedspec_rgb_tw = iu_actit("遠程專家", rangedspec_col)
--[+++其他(MISC)+++]--
	--[++備註(Note)++]--
	local note_col = Color[mod:get("note_text_colour")](255, true)
	local Fns_note_rgb_tw = iu_actit(" 靈巧會增加弱點與暴擊傷害。", note_col)
	local Pwr_note_rgb_tw = iu_actit(" 威力會增加傷害、踉蹌與破甲。", note_col)
	local Rend_note_rgb_tw = iu_actit(" 撕裂可以增加傷害。", note_col)
	local Brtl_note_rgb_tw = iu_actit(" 脆弱會降低敵人的護甲。", note_col)
	local Hit_Mass_note_rgb_tw = iu_actit(" 順劈目標可使你打擊更多敵人。", note_col)
	local Trauma_note_rgb_tw = iu_actit("", note_col)
	local Fire_n_trap_note_rgb_tw = iu_actit("", note_col)
	--[+ 天賦(Talents) +]--
	local tal_col = Color[mod:get("talents_text_colour")](255, true)
	local Scriers_gaze_rgb_tw = iu_actit("占卜者的凝視", tal_col)
	local Stun_gren_rgb_tw = iu_actit("眩暈手榴彈", tal_col)
	local Frag_gren_rgb_tw = iu_actit("破片手榴彈", tal_col)
	local Krak_gren_rgb_tw = iu_actit("穿甲手榴彈", tal_col)
	local Fragmentation_gren_rgb_tw = iu_actit("破片手榴彈", tal_col)

--[+++難度(DIFFICULTY)+++]--
	--[+ 暴動(Sedition) +]--
	local sed_col = Color[mod:get("sedition_text_colour")](255, true)
	local sedition_rgb_tw = iu_actit("暴動", sed_col)
	--[+ 起義(Uprising) +]--
	local upr_col = Color[mod:get("uprising_text_colour")](255, true)
	local uprising_rgb_tw = iu_actit("起義", upr_col)
	--[+ 惡毒(Malice) +]--
	local mal_col = Color[mod:get("malice_text_colour")](255, true)
	local malice_rgb_tw = iu_actit("惡毒", mal_col)
	--[+ 異端(Heresy) +]--
	local her_col = Color[mod:get("heresy_text_colour")](255, true)
	local heresy_rgb_tw = iu_actit("異端", her_col)
	--[+ 詛咒(Damnation) +]--
	local dam_col = Color[mod:get("damnation_text_colour")](255, true)
	local damnation_rgb_tw = iu_actit("詛咒", dam_col)
--[+++老兵(VETERAN)+++]--
	local cls_vet_col = Color[mod:get("class_veteran_text_colour")](255, true)
	local cls_vet_rgb_tw = iu_actit("老兵", cls_vet_col)
	local cls_vet2_rgb_tw = iu_actit("老兵", cls_vet_col)
--[+++狂信徒(ZEALOT)+++]--
	local cls_zea_col = Color[mod:get("class_zealot_text_colour")](255, true)
	local cls_zea_rgb_tw = iu_actit("狂信徒", cls_zea_col)
	local cls_zea2_rgb_tw = iu_actit("狂信徒", cls_zea_col)
--[+++靈能者(PSYKER)+++]--
	local cls_psy_col = Color[mod:get("class_psyker_text_colour")](255, true)
	local cls_psy_rgb_tw = iu_actit("靈能者", cls_psy_col)
	local cls_psy2_rgb_tw = iu_actit("靈能者", cls_psy_col)
--[+++歐格林(OGRYN)+++]--
	local cls_ogr_col = Color[mod:get("class_ogryn_text_colour")](255, true)
	local cls_ogr_rgb_tw = iu_actit("歐格林", cls_ogr_col)
	local cls_ogr2_rgb_tw = iu_actit("歐格林", cls_ogr_col)


return {
	Scriers_gaze_rgb_tw = Scriers_gaze_rgb_tw,
	Stun_gren_rgb_tw = Stun_gren_rgb_tw,
	Frag_gren_rgb_tw = Frag_gren_rgb_tw,
	Krak_gren_rgb_tw = Krak_gren_rgb_tw,
	Fragmentation_gren_rgb_tw = Fragmentation_gren_rgb_tw,

	Feel_no_pain_rgb_tw = Feel_no_pain_rgb_tw,
	Focus_rgb_tw = Focus_rgb_tw,
	Focus_Target_rgb_tw = Focus_Target_rgb_tw,
	Focus_Target_s_rgb_tw = Focus_Target_s_rgb_tw,
	Fury_rgb_tw = Fury_rgb_tw,
	Fury_i_rgb_tw = Fury_i_rgb_tw,
	Lucky_bullet_rgb_tw = Lucky_bullet_rgb_tw,
	Meleespec_rgb_tw = Meleespec_rgb_tw,
	Momentum_rgb_tw = Momentum_rgb_tw,
	Precision_rgb_tw = Precision_rgb_tw,
	Rangedspec_rgb_tw = Rangedspec_rgb_tw,
	Stealth_rgb_tw = Stealth_rgb_tw,
	Trample_rgb_tw = Trample_rgb_tw,
	Trauma_note_rgb_tw = Trauma_note_rgb_tw,
	Fns_note_rgb_tw = Fns_note_rgb_tw,
	Pwr_note_rgb_tw = Pwr_note_rgb_tw,
	Rend_note_rgb_tw = Rend_note_rgb_tw,
	Brtl_note_rgb_tw = Brtl_note_rgb_tw,
	Hit_Mass_note_rgb_tw = Hit_Mass_note_rgb_tw,
	Fire_n_trap_note_rgb_tw = Fire_n_trap_note_rgb_tw,

	sedition_rgb_tw = sedition_rgb_tw,
	uprising_rgb_tw = uprising_rgb_tw,
	malice_rgb_tw = malice_rgb_tw,
	heresy_rgb_tw = heresy_rgb_tw,
	damnation_rgb_tw = damnation_rgb_tw,

	cls_vet_rgb_tw = cls_vet_rgb_tw,
	cls_vet2_rgb_tw = cls_vet2_rgb_tw,
	cls_zea_rgb_tw = cls_zea_rgb_tw,
	cls_zea2_rgb_tw = cls_zea2_rgb_tw,
	cls_psy_rgb_tw = cls_psy_rgb_tw,
	cls_psy2_rgb_tw = cls_psy2_rgb_tw,
	cls_ogr_rgb_tw = cls_ogr_rgb_tw,
	cls_ogr2_rgb_tw = cls_ogr2_rgb_tw,
}
