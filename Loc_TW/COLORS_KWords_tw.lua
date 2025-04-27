---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

--[+++主要(MAIN)+++]--
	--[++戰鬥能力CD(Combat Ability CD)++]--
	local cmbtab_col = Color[mod:get("combat_ability_text_colour")](255, true)
	local Ability_cd_rgb_tw = iu_actit("技能冷卻", cmbtab_col)
	local Cd_rgb_tw = iu_actit("冷卻", cmbtab_col)
	local Combat_abil_rgb_tw = iu_actit("戰鬥技能", cmbtab_col)
	local Combat_ability_rgb_tw = iu_actit("戰鬥技能", cmbtab_col)
	local Combat_ability_cd_rgb_tw = iu_actit("戰鬥技能冷卻", cmbtab_col)
	--[++健康(Health)++]--
	local hlth_col = Color[mod:get("health_text_colour")](255, true)
	local Health_rgb_tw = iu_actit("生命", hlth_col)
	local Wound_rgb_tw = iu_actit("傷痕", hlth_col)
	local Wounds_rgb_tw = iu_actit("傷痕", hlth_col)
	local Wound_u_rgb_tw = iu_actit("傷痕", hlth_col)
	local Wound_y_rgb_tw = iu_actit("傷痕", hlth_col)
	--[++反噬(Peril)++]--
	local prl_col = Color[mod:get("peril_text_colour")](255, true)
	local Peril_rgb_tw = iu_actit("反噬", prl_col)
	local Perils_rgb_tw = iu_actit("反噬", prl_col)
	local Perl_rgb_tw = iu_actit("反噬", prl_col)
	local Perl_e_rgb_tw = iu_actit("反噬爆炸", prl_col)
	--[++耐力(Stamina)++]--
	local stam_col = Color[mod:get("stamina_text_colour")](255, true)
	local Stamina_rgb_tw = iu_actit("耐力", stam_col)
	local Stamina_se_rgb_tw = iu_actit("衝刺效率", stam_col) -- Sprint Efficiency
	local Stamina_c_r_rgb_tw = iu_actit("耐力消耗", stam_col) -- 需要確認使用情境
	--[++韌性(Toughness)++]--
	local tghn_col = Color[mod:get("toughness_text_colour")](255, true)
	local Toughness_rgb_tw = iu_actit("韌性", tghn_col)
	local Tghnss_rgb_tw = iu_actit("韌性", tghn_col)
	local Toughness_dmg_red_rgb_tw = iu_actit("韌性傷害減免", tghn_col)
	local Toughness_dmg_red_u_rgb_tw = iu_actit("韌性傷害減免", tghn_col)
	local Toughness_dmg_rgb_tw = iu_actit("韌性傷害", tghn_col)
	--[++協同率(Coherency)++]--
	local coher_col = Color[mod:get("coherency_text_colour")](255, true)
	local Coherency_rgb_tw = iu_actit("協同", coher_col)
	local Coherencing_rgb_tw = iu_actit("協同中", coher_col)
--[+++增益效果(BUFFS)+++]--
	--[++致命一擊(Crit)++]--
	local crt_col = Color[mod:get("crit_text_colour")](255, true)
	local Crt_chance_rgb_tw = iu_actit("暴擊機率", crt_col)
	local Crt_u_chance_rgb_tw = iu_actit("暴擊機率", crt_col)
	local Crit_chance_rgb_tw = iu_actit("暴擊機率", crt_col)
	local Crit_n_chance_rgb_tw = iu_actit("不會暴擊", crt_col) --None 
	local Crit_m_chance_rgb_tw = iu_actit("近戰暴擊機率", crt_col) -- melee
	local Crit_r_chance_rgb_tw = iu_actit("遠程暴擊機率", crt_col) -- ranged
	local Crit_hit_rgb_tw = iu_actit("暴擊命中", crt_col)
	local Crit_hit_chance_rgb_tw = iu_actit("暴擊", crt_col)
	local Crit_hits_rgb_tw = iu_actit("暴擊", crt_col)
	local Crit_hit_e_rgb_tw = iu_actit("暴擊", crt_col)
	local Crit_rgb_tw = iu_actit("暴擊", crt_col)
	local Crit_k_rgb_tw = iu_actit("暴擊擊殺", crt_col)
	local Crit_ih_rgb_tw = iu_actit("暴擊", crt_col)
	local Crit0_rgb_tw = iu_actit("暴擊", crt_col)
	local Crit_dmg_r_rgb_tw = iu_actit("暴擊傷害", crt_col)
	local Crit_dmg_u_rgb_tw = iu_actit("暴擊傷害", crt_col)
	local Crit_chance_r_rgb_tw = iu_actit("暴擊機率", crt_col)
	local Crit_hit_color_rgb_tw = iu_actit("暴擊傷害", crt_col)
	local Crit_hit_m_color_rgb_tw = iu_actit("近戰暴擊傷害", crt_col)	-- melee
	local Crit_hit_r_color_rgb_tw = iu_actit("遠程暴擊傷害", crt_col) -- ranged
	local Crit_hit_om_rgb_tw = iu_actit("暴擊", crt_col)
	local Crit_hit_udom_rgb_tw = iu_actit("暴擊", crt_col)
	--[++撕裂(Rending)++]--
	local rend_col = Color[mod:get("rending_text_colour")](255, true)
	local Rending_rgb_tw = iu_actit("撕裂", rend_col)
	--[++衝擊(Impact)++]--
	local imp_col = Color[mod:get("impact_text_colour")](255, true)
	local Impact_rgb_tw = iu_actit("衝擊", imp_col)
	--[++順批攻擊(Cleave)++]--
	local clv_col = Color[mod:get("cleave_text_colour")](255, true)
	local Cleave_rgb_tw = iu_actit("順劈攻擊", clv_col)
	local Cleaving_rgb_tw = iu_actit("順劈攻擊", clv_col)
	local Cleaving_r_rgb_tw = iu_actit("順劈攻擊", clv_col)
	--[++威力(Power)++]--
	local pwr_col = Color[mod:get("power_text_colour")](255, true)
	local Power_rgb_tw = iu_actit("威力", pwr_col)
	local Strength_rgb_tw = iu_actit("威力", pwr_col)
	local Strength_m_rgb_tw = iu_actit("近戰威力", pwr_col)	-- melee
	local Strength_r_rgb_tw = iu_actit("遠程威力", pwr_col)	-- ranged
	--[++靈巧傷害(Finesse)++]--
	local fns_col = Color[mod:get("finesse_text_colour")](255, true)
	local Finesse_rgb_tw = iu_actit("靈巧", fns_col)
	local Finesse_dmg_rgb_tw = iu_actit("靈巧傷害", fns_col)
	--[++順劈目標(Hit Mass)++]--
	local htms_col = Color[mod:get("hit_mass_text_colour")](255, true)
	local Hit_mass_rgb_tw = iu_actit("順劈目標", htms_col)
	local Hit_masss_rgb_tw = iu_actit("順劈目標抗性", htms_col)
	--[++傷害(Damage)++]--
	local dmg_col = Color[mod:get("damage_text_colour")](255, true)
	local Dmg_rgb_tw = iu_actit("傷害", dmg_col)
	local Dmg_a_rgb_tw = iu_actit("傷害", dmg_col)
	local Dmg_b_rgb_tw = iu_actit("基礎傷害", dmg_col)
	local Dmg_h_rgb_tw = iu_actit("較高傷害", dmg_col) -- high
	local Dmg_c_rgb_tw = iu_actit("持續傷害(Dot)", dmg_col) -- Continuous Damage
	local Dmg_d_rgb_tw = iu_actit("Dot傷害", dmg_col) -- Dot
	local Dmg_v_rgb_tw = iu_actit("易傷", dmg_col) -- Vulnerable
	local Damage_rgb_tw = iu_actit("傷害", dmg_col)
	local Damage_s_rgb_tw = iu_actit("重擊傷害", dmg_col) --Smash
	local Damage_res_rgb_tw = iu_actit("傷害抗性", dmg_col)
	local Damage_melee_rgb_tw = iu_actit("近戰傷害", dmg_col)
	local Damage_ranged_rgb_tw = iu_actit("遠程傷害", dmg_col)
	local Damagewrp_rgb_tw = iu_actit("亞空間傷害", dmg_col)
	local Damagewrp_a_rgb_tw = iu_actit("亞空間攻擊", dmg_col)
	--[++弱點(Weak Spot)++]--
	local wksp_col = Color[mod:get("weakspot_text_colour")](255, true)
	local Weakspot_rgb_tw = iu_actit("弱點", wksp_col)
	local Weakspothit_rgb_tw = iu_actit("弱點命中", wksp_col)
	local Weakspothits_rgb_tw = iu_actit("命中弱點", wksp_col)
	local Weakspot_dmg_rgb_tw = iu_actit("弱點傷害", wksp_col)
	local Weakspot_k_dmg_rgb_tw = iu_actit("弱點擊殺", wksp_col)	-- kill
	local Weakspot_m_dmg_rgb_tw = iu_actit("近戰弱點傷害", wksp_col)	-- melee
	local Weakspot_r_dmg_rgb_tw = iu_actit("遠程弱點傷害", wksp_col)	-- ranged
	local Weakspotv_dmg_rgb_tw = iu_actit("弱點傷害", wksp_col)
--[+++減益效果(DEBUFFS)+++]--
	--[++燃燒(Burn)++]--
	local brn_col = Color[mod:get("burn_text_colour")](255, true)
	local Burn_rgb_tw = iu_actit("燃燒", brn_col)
	local Burning_rgb_tw = iu_actit("燃燒中", brn_col)
	local Burnd_rgb_tw = iu_actit("引燃", brn_col)
	--[++熱能(Heat)++]--
	local Heat_rgb_tw = iu_actit("熱能", brn_col)
	local Heat_diss_rgb_tw = iu_actit("散熱效率", brn_col) -- diss
	local Heat2_rgb_tw = iu_actit("充能", brn_col)
	--[++靈魂之火(Soulblaze)++]--
	local slblz_col = Color[mod:get("soulblaze_text_colour")](255, true)
	local Soulblaze_rgb_tw = iu_actit("靈火", slblz_col)
	local Soulblaze_k_rgb_tw = iu_actit("靈火擊殺", slblz_col) --Kill
	--[++流血(Bleed)++]--
	local bld_col = Color[mod:get("bleed_text_colour")](255, true)
	local Bleed_rgb_tw = iu_actit("流血", bld_col)
	local Bleeding_rgb_tw = iu_actit("流血中", bld_col)
	--[++踉蹌(Stagger)++]--
	local stgr_col = Color[mod:get("stagger_text_colour")](255, true)
	local Stagger_rgb_tw = iu_actit("踉蹌", stgr_col)
	local Stagger_s_rgb_tw = iu_actit("輕微踉蹌", stgr_col) --slight 輕微
	local Stagger2_rgb_tw = iu_actit("踉蹌效果", stgr_col)
	local Staggering_rgb_tw = iu_actit("眩暈", stgr_col)
	local Stagger_i_rgb_tw = iu_actit("踉蹌中", stgr_col)
	local Stagger_w_rgb_tw = iu_actit("充能踉蹌", stgr_col) --warp
	local Staggers_rgb_tw = iu_actit("暈眩", stgr_col)
	local Staggers_e_rgb_tw = iu_actit("暈眩", stgr_col)
	local Stun_rgb_tw = iu_actit("暈眩", stgr_col)
	local Stuns_rgb_tw = iu_actit("硬直中", stgr_col)
	local Stunned_rgb_tw = iu_actit("已暈眩", stgr_col)
	local Staggered_rgb_tw = iu_actit("硬直中", stgr_col)
	local Staggerr_rgb_tw = iu_actit("踉蹌", stgr_col)
	--[++腐敗(Corruption)++]--
	local crpt_col = Color[mod:get("corruption_text_colour")](255, true)
	local Corruption_rgb_tw = iu_actit("腐敗", crpt_col)
	local Corruption_i_rgb_tw = iu_actit("腐敗", crpt_col)
	local Corruption_a_rgb_tw = iu_actit("腐敗", crpt_col)
	local Corruptdmg_rgb_tw = iu_actit("腐敗傷害", crpt_col)
	--[++電擊(Electrocuted)++]--
	local electr_col = Color[mod:get("electrocuted_text_colour")](255, true)
	local Electrocute_rgb_tw = iu_actit("電擊", electr_col)
	local Electrocution_rgb_tw = iu_actit("電擊", electr_col)
	local Electrocuted_rgb_tw = iu_actit("被電擊", electr_col)
	local Electrocutes_rgb_tw = iu_actit("電擊", electr_col)
	local Electrcuting_rgb_tw = iu_actit("電擊中", electr_col)
	--[++脆弱(Brittleness)++]--
	local brtl_col = Color[mod:get("brittleness_text_colour")](255, true)
	local Brittleness_rgb_tw = iu_actit("脆弱", brtl_col)
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
	--[++專注目標(Focus Target)++]--
	local focust_col = Color[mod:get("focust_text_colour")](255, true)
	local Focus_Target_rgb_tw = iu_actit("專注目標", focust_col)
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
	Fragmentation_gren_rgb_tw = Fragmentation_gren_rgb_tw,

	Bleed_rgb_tw = Bleed_rgb_tw,
	Bleeding_rgb_tw = Bleeding_rgb_tw,
	Brittleness_rgb_tw = Brittleness_rgb_tw,
	Burn_rgb_tw = Burn_rgb_tw,
	Burning_rgb_tw = Burning_rgb_tw,
	Burnd_rgb_tw = Burnd_rgb_tw,
	Heat_rgb_tw = Heat_rgb_tw,
	Heat_diss_rgb_tw = Heat_diss_rgb_tw,
	Heat2_rgb_tw = Heat2_rgb_tw,
	Ability_cd_rgb_tw = Ability_cd_rgb_tw,
	Cd_rgb_tw = Cd_rgb_tw,
	Combat_abil_rgb_tw = Combat_abil_rgb_tw,
	Combat_ability_rgb_tw = Combat_ability_rgb_tw,
	Combat_ability_cd_rgb_tw = Combat_ability_cd_rgb_tw,
	Corruption_rgb_tw = Corruption_rgb_tw,
	Corruption_i_rgb_tw = Corruption_i_rgb_tw,
	Corruption_a_rgb_tw = Corruption_a_rgb_tw,
	Corruptdmg_rgb_tw = Corruptdmg_rgb_tw,
	Cleave_rgb_tw = Cleave_rgb_tw,
	Cleaving_rgb_tw = Cleaving_rgb_tw,
	Cleaving_r_rgb_tw = Cleaving_r_rgb_tw,
	Crt_chance_rgb_tw = Crt_chance_rgb_tw,
	Crt_u_chance_rgb_tw = Crt_u_chance_rgb_tw,
    Crit_chance_rgb_tw = Crit_chance_rgb_tw,
	Crit_n_chance_rgb_tw = Crit_n_chance_rgb_tw,
	Crit_m_chance_rgb_tw = Crit_m_chance_rgb_tw,
	Crit_r_chance_rgb_tw = Crit_r_chance_rgb_tw,
	Crit_hit_rgb_tw = Crit_hit_rgb_tw,
	Crit_hit_chance_rgb_tw = Crit_hit_chance_rgb_tw,
	Crit_hits_rgb_tw = Crit_hits_rgb_tw,
	Crit_hit_e_rgb_tw = Crit_hit_e_rgb_tw,
	Crit_rgb_tw = Crit_rgb_tw,
	Crit_k_rgb_tw = Crit_k_rgb_tw,
	Crit_ih_rgb_tw = Crit_ih_rgb_tw,
	Crit0_rgb_tw = Crit0_rgb_tw,
	Crit_dmg_r_rgb_tw = Crit_dmg_r_rgb_tw,
	Crit_dmg_u_rgb_tw = Crit_dmg_u_rgb_tw,
	Crit_chance_r_rgb_tw = Crit_chance_r_rgb_tw,
	Crit_hit_color_rgb_tw = Crit_hit_color_rgb_tw,
	Crit_hit_m_color_rgb_tw = Crit_hit_m_color_rgb_tw,
	Crit_hit_r_color_rgb_tw = Crit_hit_r_color_rgb_tw,
	Crit_hit_om_rgb_tw = Crit_hit_om_rgb_tw,
	Crit_hit_udom_rgb_tw = Crit_hit_udom_rgb_tw,
	Dmg_rgb_tw = Dmg_rgb_tw,
	Dmg_a_rgb_tw = Dmg_a_rgb_tw,
	Dmg_b_rgb_tw = Dmg_b_rgb_tw,
	Dmg_h_rgb_tw = Dmg_h_rgb_tw,
	Dmg_c_rgb_tw = Dmg_c_rgb_tw,
	Dmg_d_rgb_tw = Dmg_d_rgb_tw,
	Dmg_v_rgb_tw = Dmg_v_rgb_tw,
	Damage_rgb_tw = Damage_rgb_tw,
	Damage_s_rgb_tw = Damage_s_rgb_tw,
	Damage_res_rgb_tw = Damage_res_rgb_tw,
	Damage_melee_rgb_tw = Damage_melee_rgb_tw,
	Damage_ranged_rgb_tw = Damage_ranged_rgb_tw,
	Damagewrp_rgb_tw = Damagewrp_rgb_tw,
	Damagewrp_a_rgb_tw = Damagewrp_a_rgb_tw,
	Electrocute_rgb_tw = Electrocute_rgb_tw,
	Electrocution_rgb_tw = Electrocution_rgb_tw,
	Electrocuted_rgb_tw = Electrocuted_rgb_tw,
	Electrocutes_rgb_tw = Electrocutes_rgb_tw,
	Electrcuting_rgb_tw = Electrcuting_rgb_tw,
	Feel_no_pain_rgb_tw = Feel_no_pain_rgb_tw,
	Finesse_rgb_tw = Finesse_rgb_tw,
	Finesse_dmg_rgb_tw = Finesse_dmg_rgb_tw,
	Focus_rgb_tw = Focus_rgb_tw,
	Focus_Target_rgb_tw = Focus_Target_rgb_tw,
	Fury_rgb_tw = Fury_rgb_tw,
	Fury_i_rgb_tw = Fury_i_rgb_tw,
	Health_rgb_tw = Health_rgb_tw,
	Wound_rgb_tw = Wound_rgb_tw,
	Wounds_rgb_tw = Wounds_rgb_tw,
	Wound_u_rgb_tw = Wound_u_rgb_tw,
	Wound_y_rgb_tw = Wound_y_rgb_tw,
	Hit_mass_rgb_tw = Hit_mass_rgb_tw,
	Hit_masss_rgb_tw = Hit_masss_rgb_tw,
	Impact_rgb_tw = Impact_rgb_tw,
	Lucky_bullet_rgb_tw = Lucky_bullet_rgb_tw,
	Meleespec_rgb_tw = Meleespec_rgb_tw,
	Momentum_rgb_tw = Momentum_rgb_tw,
	Perl_rgb_tw = Perl_rgb_tw,
	Peril_rgb_tw = Peril_rgb_tw,
	Perils_rgb_tw = Perils_rgb_tw,
	Perl_e_rgb_tw = Perl_e_rgb_tw,
	Power_rgb_tw = Power_rgb_tw,
	Precision_rgb_tw = Precision_rgb_tw,
	Rangedspec_rgb_tw = Rangedspec_rgb_tw,
	Rending_rgb_tw = Rending_rgb_tw,
	Soulblaze_rgb_tw = Soulblaze_rgb_tw,
	Soulblaze_k_rgb_tw = Soulblaze_k_rgb_tw,
	Stagger_rgb_tw = Stagger_rgb_tw,
	Stagger_s_rgb_tw = Stagger_s_rgb_tw,
	Stagger2_rgb_tw = Stagger2_rgb_tw,
	Staggering_rgb_tw = Staggering_rgb_tw,
	Stagger_i_rgb_tw = Stagger_i_rgb_tw,
	Stagger_w_rgb_tw = Stagger_w_rgb_tw,
	Staggers_rgb_tw = Staggers_rgb_tw,
	Staggers_e_rgb_tw = Staggers_e_rgb_tw,
	Stun_rgb_tw = Stun_rgb_tw,
	Stuns_rgb_tw = Stuns_rgb_tw,
	Stunned_rgb_tw = Stunned_rgb_tw,
	Staggered_rgb_tw = Staggered_rgb_tw,
	Staggerr_rgb_tw = Staggerr_rgb_tw,
	Stamina_rgb_tw = Stamina_rgb_tw,
	Stamina_se_rgb_tw = Stamina_se_rgb_tw,
	Stamina_c_r_rgb_tw = Stamina_c_r_rgb_tw,
	Stealth_rgb_tw = Stealth_rgb_tw,
	Strength_rgb_tw = Strength_rgb_tw,
	Strength_m_rgb_tw = Strength_m_rgb_tw,
	Strength_r_rgb_tw = Strength_r_rgb_tw,
	Tghnss_rgb_tw = Tghnss_rgb_tw,
	Toughness_rgb_tw = Toughness_rgb_tw,
	Toughness_dmg_red_rgb_tw = Toughness_dmg_red_rgb_tw,
	Toughness_dmg_red_u_rgb_tw = Toughness_dmg_red_u_rgb_tw,
	Toughness_dmg_rgb_tw = Toughness_dmg_rgb_tw,
    Coherency_rgb_tw = Coherency_rgb_tw,
	Coherencing_rgb_tw = Coherencing_rgb_tw,
	Trample_rgb_tw = Trample_rgb_tw,
	Weakspot_rgb_tw = Weakspot_rgb_tw,
	Weakspothit_rgb_tw = Weakspothit_rgb_tw,
	Weakspothits_rgb_tw = Weakspothits_rgb_tw,
	Weakspot_dmg_rgb_tw = Weakspot_dmg_rgb_tw,
	Weakspot_k_dmg_rgb_tw = Weakspot_k_dmg_rgb_tw,
	Weakspot_m_dmg_rgb_tw = Weakspot_m_dmg_rgb_tw,
	Weakspot_r_dmg_rgb_tw = Weakspot_r_dmg_rgb_tw,
	Weakspotv_dmg_rgb_tw = Weakspotv_dmg_rgb_tw,

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
