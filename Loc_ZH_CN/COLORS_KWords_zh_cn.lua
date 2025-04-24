---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text



			-- ============ DO NOT DO ANYTHING ABOVE! ============ --

-- If you added/changed something, then you need to duplicate/change the same entry in the list below.
-- For example, you change "Ability_cd_rgb" to "Ability_cd_rgb_urlang", then at the bottom you need to find (CTRL+F) the "Ability_cd_rgb" entries and also rename them from "Ability_cd_rgb = Ability_cd_rgb," to "Ability_cd_rgb_urlang = Ability_cd_rgb_urlang,".
-- If you add a new entry (ex. MyEntry_rgb), just duplicate it in the list below (MyEntry_rgb = MyEntry_rgb,).

--[+++MAIN+++]--
	--[++Combat Ability CD++]--
	local cmbtab_col = Color[mod:get("combat_ability_text_colour")](255, true) -- Do not translate this line!
	local Ability_cd_rgb_zh_cn = iu_actit("能力冷却", cmbtab_col)
	local Cd_rgb_zh_cn = iu_actit("冷却", cmbtab_col)
	local Combat_abil_rgb_zh_cn = iu_actit("作战技能", cmbtab_col)
	local Combat_ability_rgb_zh_cn = iu_actit("作战技能", cmbtab_col)
	local Combat_ability_cd_rgb_zh_cn = iu_actit("作战技能回复", cmbtab_col)
	--[++Health++]--
	local hlth_col = Color[mod:get("health_text_colour")](255, true) -- Do not translate this line!
	local Health_rgb_zh_cn = iu_actit("生命值", hlth_col)
	local Wound_rgb_zh_cn = iu_actit("伤口", hlth_col)
	local Wounds_rgb_zh_cn = iu_actit("伤口", hlth_col)
	local Wound_u_rgb_zh_cn = iu_actit("伤口", hlth_col)
	local Wound_y_rgb_zh_cn = iu_actit("伤口", hlth_col)
	--[++Peril++]--
	local prl_col = Color[mod:get("peril_text_colour")](255, true) -- Do not translate this line!
	local Peril_rgb_zh_cn = iu_actit("危机值", prl_col)
	local Perils_rgb_zh_cn = iu_actit("危机值", prl_col)
	local Perl_rgb_zh_cn = iu_actit("危机值", prl_col)
	--[++Stamina++]--
	local stam_col = Color[mod:get("stamina_text_colour")](255, true) -- Do not translate this line!
	local Stamina_rgb_zh_cn = iu_actit("体力", stam_col)
	local Stamina_c_r_rgb_zh_cn = iu_actit("体力消耗", stam_col)
	--[++Toughness++]--
	local tghn_col = Color[mod:get("toughness_text_colour")](255, true) -- Do not translate this line!
	local Toughness_rgb_zh_cn = iu_actit("韧性", tghn_col)
	local Tghnss_rgb_zh_cn = iu_actit("韧性", tghn_col)
	local Toughness_dmg_red_rgb_zh_cn = iu_actit("韧性伤害减免", tghn_col)
	local Toughness_dmg_red_u_rgb_zh_cn = iu_actit("韧性伤害减免", tghn_col)
	local Toughness_dmg_rgb_zh_cn = iu_actit("韧性伤害", tghn_col)
	--[++Coherency++]--
	local coher_col = Color[mod:get("coherency_text_colour")](255, true) -- Do not translate this line!
	local Coherency_rgb_zh_cn = iu_actit("连携", coher_col)
--[+++BUFFS+++]--
	--[++Crit++]--
	local crt_col = Color[mod:get("crit_text_colour")](255, true) -- Do not translate this line!
	local Crt_chance_rgb_zh_cn = iu_actit("暴击几率", crt_col)
	local Crt_u_chance_rgb_zh_cn = iu_actit("暴击几率", crt_col)
	local Crit_chance_rgb_zh_cn = iu_actit("暴击几率", crt_col)
	local Crit_hit_rgb_zh_cn = iu_actit("暴击命中", crt_col)
	local Crit_hit_chance_rgb_zh_cn = iu_actit("暴击几率", crt_col)
	local Crit_hits_rgb_zh_cn = iu_actit("暴击命中", crt_col)
	local Crit_hit_e_rgb_zh_cn = iu_actit("暴击命中", crt_col)
	local Crit_rgb_zh_cn = iu_actit("暴击", crt_col)
	local Crit_ih_rgb_zh_cn = iu_actit("暴击", crt_col)
	local Crit0_rgb_zh_cn = iu_actit("暴击", crt_col)
	local Crit_dmg_r_rgb_zh_cn = iu_actit("暴击伤害", crt_col)
	local Crit_dmg_u_rgb_zh_cn = iu_actit("暴击伤害", crt_col)
	local Crit_chance_r_rgb_zh_cn = iu_actit("暴击几率", crt_col)
	local Crit_hit_color_rgb_zh_cn = iu_actit("暴击伤害", crt_col)
	local Crit_hit_om_rgb_zh_cn = iu_actit("暴击命中", crt_col)
	local Crit_hit_udom_rgb_zh_cn = iu_actit("暴击命中", crt_col)
	local Crit_hits_k_rgb_zh_cn = iu_actit("暴击击杀", crt_col)
	--[++Rending++]--
	local rend_col = Color[mod:get("rending_text_colour")](255, true) -- Do not translate this line!
	local Rending_rgb_zh_cn = iu_actit("撕裂", rend_col)
	--[++Impact++]--
	local imp_col = Color[mod:get("impact_text_colour")](255, true) -- Do not translate this line!
	local Impact_rgb_zh_cn = iu_actit("冲击", imp_col) -- Силе Удара?
	--[++Cleave++]--
	local clv_col = Color[mod:get("cleave_text_colour")](255, true) -- Do not translate this line!
	local Cleave_rgb_zh_cn = iu_actit("劈裂值", clv_col)
	local Cleaving_rgb_zh_cn = iu_actit("劈裂", clv_col)
	local Cleaving_r_rgb_zh_cn = iu_actit("劈裂", clv_col)
	--[++Power++]--
	local pwr_col = Color[mod:get("power_text_colour")](255, true) -- Do not translate this line!
	local Power_rgb_zh_cn = iu_actit("强度", pwr_col)
	local Strength_rgb_zh_cn = iu_actit("强度", pwr_col)
	--[++Finesse++]--
	local fns_col = Color[mod:get("finesse_text_colour")](255, true) -- Do not translate this line!
	local Finesse_rgb_zh_cn = iu_actit("灵巧", fns_col)
	local Finesse_dmg_rgb_zh_cn = iu_actit("灵巧伤害", fns_col)
	--[++Hit Mass++]--
	local htms_col = Color[mod:get("hit_mass_text_colour")](255, true) -- Do not translate this line!
	local Hit_mass_rgb_zh_cn = iu_actit("打击质量", htms_col)
	local Hit_masss_rgb_zh_cn = iu_actit("打击质量", htms_col)
	--[++Damage++]--
	local dmg_col = Color[mod:get("damage_text_colour")](255, true) -- Do not translate this line!
	local Dmg_rgb_zh_cn = iu_actit("伤害", dmg_col)
	local Dmg_a_rgb_zh_cn = iu_actit("伤害", dmg_col)
	local Damage_rgb_zh_cn = iu_actit("伤害", dmg_col)
	local Damagewrp_rgb_zh_cn = iu_actit("亚空间伤害", dmg_col)
	local Damagewrp_a_rgb_zh_cn = iu_actit("亚空间伤害", dmg_col)
	--[++Weak Spot++]--
	local wksp_col = Color[mod:get("weakspot_text_colour")](255, true) -- Do not translate this line!
	local Weakspot_rgb_zh_cn = iu_actit("弱点", wksp_col)
	local Weakspothit_rgb_zh_cn = iu_actit("命中弱点", wksp_col)
	local Weakspothits_rgb_zh_cn = iu_actit("弱点命中", wksp_col)
	local Weakspot_dmg_rgb_zh_cn = iu_actit("弱点伤害", wksp_col)
	local Weakspotv_dmg_rgb_zh_cn = iu_actit("弱点伤害", wksp_col)
	local Weakspothits_k_rgb_zh_cn = iu_actit("弱点击杀", wksp_col)
--[+++DEBUFFS+++]--
	--[++Burn++]--
	local brn_col = Color[mod:get("burn_text_colour")](255, true) -- Do not translate this line!
	local Burn_rgb_zh_cn = iu_actit("燃烧", brn_col)
	local Burning_rgb_zh_cn = iu_actit("燃烧", brn_col)
	local Burnd_rgb_zh_cn = iu_actit("燃烧", brn_col)
	local Heat_rgb_zh_cn = iu_actit("热量", brn_col)
	local Heat2_rgb_zh_cn = iu_actit("热量", brn_col)
	--[++Soulblaze++]--
	local slblz_col = Color[mod:get("soulblaze_text_colour")](255, true) -- Do not translate this line!
	local Soulblaze_rgb_zh_cn = iu_actit("灵魂之火", slblz_col)
	--[++Bleed++]--
	local bld_col = Color[mod:get("bleed_text_colour")](255, true) -- Do not translate this line!
	local Bleed_rgb_zh_cn = iu_actit("流血", bld_col)
	local Bleeding_rgb_zh_cn = iu_actit("流血", bld_col)
	--[++Stagger++]--
	local stgr_col = Color[mod:get("stagger_text_colour")](255, true) -- Do not translate this line!
	local Stagger_rgb_zh_cn = iu_actit("踉跄", stgr_col)
	local Stagger2_rgb_zh_cn = iu_actit("踉跄", stgr_col)
	local Staggering_rgb_zh_cn = iu_actit("踉跄", stgr_col)
	local Stagger_i_rgb_zh_cn = iu_actit("踉跄", stgr_col)
	local Staggers_rgb_zh_cn = iu_actit("踉跄", stgr_col)
	local Staggers_e_rgb_zh_cn = iu_actit("踉跄", stgr_col)
	local Stun_rgb_zh_cn = iu_actit("眩晕", stgr_col)
	local Stuns_rgb_zh_cn = iu_actit("眩晕", stgr_col)
	local Stunned_rgb_zh_cn = iu_actit("眩晕", stgr_col)
	local Staggered_rgb_zh_cn = iu_actit("踉跄", stgr_col)
	local Staggerr_rgb_zh_cn = iu_actit("踉跄", stgr_col)
	--[++Corruption++]--
	local crpt_col = Color[mod:get("corruption_text_colour")](255, true) -- Do not translate this line!
	local Corruption_rgb_zh_cn = iu_actit("腐化", crpt_col)
	local Corruption_i_rgb_zh_cn = iu_actit("腐化", crpt_col)
	local Corruption_a_rgb_zh_cn = iu_actit("腐化", crpt_col)
	local Corruptdmg_rgb_zh_cn = iu_actit("腐化伤害", crpt_col)
	--[++Electrocuted++]--
	local electr_col = Color[mod:get("electrocuted_text_colour")](255, true) -- Do not translate this line!
	local Electrocute_rgb_zh_cn = iu_actit("眩晕", electr_col)
	local Electrocution_rgb_zh_cn = iu_actit("电击", electr_col)
	local Electrocuted_rgb_zh_cn = iu_actit("眩晕", electr_col)
	local Electrocutes_rgb_zh_cn = iu_actit("电击", electr_col)
	local Electrcuting_rgb_zh_cn = iu_actit("电击", electr_col)
	--[++Brittleness++]--
	local brtl_col = Color[mod:get("brittleness_text_colour")](255, true) -- Do not translate this line!
	local Brittleness_rgb_zh_cn = iu_actit("脆弱", brtl_col)
--[+++PSYKER+++]--
	--[++Precision++]--
	local prcsn_col = Color[mod:get("precision_text_colour")](255, true) -- Do not translate this line!
	local Precision_rgb_zh_cn = iu_actit("精准", prcsn_col)
--[+++OGRYN+++]--
	--[++Feel No Pain++]--
	local fnp_col = Color[mod:get("fnp_text_colour")](255, true) -- Do not translate this line!
	local Feel_no_pain_rgb_zh_cn = iu_actit("不痛不痒", fnp_col)
	--[++Lucky Bullet++]--
	local luckyb_col = Color[mod:get("luckyb_text_colour")](255, true) -- Do not translate this line!
	local Lucky_bullet_rgb_zh_cn = iu_actit("幸运子弹", luckyb_col)
	--[+Trample+]--
	local trample_col = Color[mod:get("trample_text_colour")](255, true) -- Do not translate this line!
	local Trample_rgb_zh_cn = iu_actit("践踏", trample_col)
--[+++ZEALOT+++]--
	--[++Momentum++]--
	local moment_col = Color[mod:get("momentum_text_colour")](255, true) -- Do not translate this line!
	local Momentum_rgb_zh_cn = iu_actit("动量", moment_col)
	--[++Stealth++]--
	local stlth_col = Color[mod:get("stealth_text_colour")](255, true) -- Do not translate this line!
	local Stealth_rgb_zh_cn = iu_actit("潜行", stlth_col)
	--[++Fury++]--
	local fury_col = Color[mod:get("fury_text_colour")](255, true) -- Do not translate this line!
	local Fury_rgb_zh_cn = iu_actit("怒火", fury_col)
	local Fury_i_rgb_zh_cn = iu_actit("怒火", fury_col)
--[+++VETERAN+++]--
	--[++Focus Target++]--
	local focust_col = Color[mod:get("focust_text_colour")](255, true) -- Do not translate this line!
	local Focus_Target_rgb_zh_cn = iu_actit("聚焦目标", focust_col)
	--[++Focus++]--
	local focus_col = Color[mod:get("focus_text_colour")](255, true) -- Do not translate this line!
	local Focus_rgb_zh_cn = iu_actit("专注", focus_col)
	--[++Melee Specialist++]--
	local meleespec_col = Color[mod:get("meleespec_text_colour")](255, true) -- Do not translate this line!
	local Meleespec_rgb_zh_cn = iu_actit("近战专家", meleespec_col)
	--[++Ranged Specialist++]--
	local rangedspec_col = Color[mod:get("rangedspec_text_colour")](255, true) -- Do not translate this line!
	local Rangedspec_rgb_zh_cn = iu_actit("远程专家", rangedspec_col)
--[+++MISC+++]--
	--[++Note++]--
	local note_col = Color[mod:get("note_text_colour")](255, true) -- Do not translate this line!
	local Fns_note_rgb_zh_cn = iu_actit("\n灵巧提升弱点和暴击伤害。", note_col)
	local Pwr_note_rgb_zh_cn = iu_actit("\n强度会提升伤害、踉跄和劈裂效果。", note_col)
	local Rend_note_rgb_zh_cn = iu_actit("\n撕裂会提升你造成的伤害。", note_col)
	local Brtl_note_rgb_zh_cn = iu_actit("\n脆弱会降低敌人的护甲。", note_col)
	local Hit_Mass_note_rgb_zh_cn = iu_actit("\n无视打击质量会使攻击穿透更多敌人。", note_col)
	local Trauma_note_rgb_zh_cn = iu_actit("", note_col)
	local Fire_n_trap_note_rgb_zh_cn = iu_actit("", note_col)
	--[+ Talents +]--
	local tal_col = Color[mod:get("talents_text_colour")](255, true) -- Do not translate this line!
	local Scriers_gaze_rgb_zh_cn = iu_actit("占卜师的凝视", tal_col)
	local Stun_gren_rgb_zh_cn = iu_actit("眩晕手雷", tal_col)
	local Frag_gren_rgb_zh_cn = iu_actit("粉碎破片手雷", tal_col)
	local Fragmentation_gren_rgb_zh_cn = iu_actit("破片手雷", tal_col)

--[+ ++TREAT - СЛОЖНОСТЬ++ +]--
	--[+ SEDITION - МЯТЕЖ +]--
	local sed_col = Color[mod:get("sedition_text_colour")](255, true) -- Do not translate this line!
	local sedition_rgb_zh_cn = iu_actit("煽动", sed_col)
	--[+ UPRISING - ВОССТАНИЕ +]--
	local upr_col = Color[mod:get("uprising_text_colour")](255, true) -- Do not translate this line!
	local uprising_rgb_zh_cn = iu_actit("起义", upr_col)
	--[+ MALICE - ЗЛОБА +]--
	local mal_col = Color[mod:get("malice_text_colour")](255, true) -- Do not translate this line!
	local malice_rgb_zh_cn = iu_actit("憎恶", mal_col)
	--[+ HERESY - ЕРЕСЬ +]--
	local her_col = Color[mod:get("heresy_text_colour")](255, true) -- Do not translate this line!
	local heresy_rgb_zh_cn = iu_actit("异端", her_col)
	--[+ DAMNATION - ПРОКЛЯТИЕ +]--
	local dam_col = Color[mod:get("damnation_text_colour")](255, true) -- Do not translate this line!
	local damnation_rgb_zh_cn = iu_actit("诅咒", dam_col)
--[+ ++VETERAN - ВЕТЕРАН++ +]--
	local cls_vet_col = Color[mod:get("class_veteran_text_colour")](255, true) -- Do not translate this line!
	local cls_vet_rgb_zh_cn = iu_actit("老兵", cls_vet_col)
	local cls_vet2_rgb_zh_cn = iu_actit("老兵", cls_vet_col)
--[+ ++ZEALOT - Изувер++ +]--
	local cls_zea_col = Color[mod:get("class_zealot_text_colour")](255, true) -- Do not translate this line!
	local cls_zea_rgb_zh_cn = iu_actit("狂信徒", cls_zea_col)
	local cls_zea2_rgb_zh_cn = iu_actit("狂信徒", cls_zea_col)
--[+ ++PSYKER - ПСАЙКЕР++ +]--
	local cls_psy_col = Color[mod:get("class_psyker_text_colour")](255, true) -- Do not translate this line!
	local cls_psy_rgb_zh_cn = iu_actit("灵能者", cls_psy_col)
	local cls_psy2_rgb_zh_cn = iu_actit("灵能者", cls_psy_col)
--[+ ++OGRYN - ОГРИН++ +]--
	local cls_ogr_col = Color[mod:get("class_ogryn_text_colour")](255, true) -- Do not translate this line!
	local cls_ogr_rgb_zh_cn = iu_actit("欧格林", cls_ogr_col)
	local cls_ogr2_rgb_zh_cn = iu_actit("欧格林", cls_ogr_col)

-- In the list below, you also need to add a new entry or change an old one.
return {
	Scriers_gaze_rgb_zh_cn = Scriers_gaze_rgb_zh_cn,
	Stun_gren_rgb_zh_cn = Stun_gren_rgb_zh_cn,
	Frag_gren_rgb_zh_cn = Frag_gren_rgb_zh_cn,
	Fragmentation_gren_rgb_zh_cn = Fragmentation_gren_rgb_zh_cn,

	Bleed_rgb_zh_cn = Bleed_rgb_zh_cn,
	Bleeding_rgb_zh_cn = Bleeding_rgb_zh_cn,
	Brittleness_rgb_zh_cn = Brittleness_rgb_zh_cn,
	Burn_rgb_zh_cn = Burn_rgb_zh_cn,
	Burning_rgb_zh_cn = Burning_rgb_zh_cn,
	Burnd_rgb_zh_cn = Burnd_rgb_zh_cn,
	Heat_rgb_zh_cn = Heat_rgb_zh_cn,
	Heat2_rgb_zh_cn = Heat2_rgb_zh_cn,
	Ability_cd_rgb_zh_cn = Ability_cd_rgb_zh_cn,
	Cd_rgb_zh_cn = Cd_rgb_zh_cn,
	Combat_abil_rgb_zh_cn = Combat_abil_rgb_zh_cn,
	Combat_ability_rgb_zh_cn = Combat_ability_rgb_zh_cn,
	Combat_ability_cd_rgb_zh_cn = Combat_ability_cd_rgb_zh_cn,
	Corruption_rgb_zh_cn = Corruption_rgb_zh_cn,
	Corruption_i_rgb_zh_cn = Corruption_i_rgb_zh_cn,
	Corruption_a_rgb_zh_cn = Corruption_a_rgb_zh_cn,
	Corruptdmg_rgb_zh_cn = Corruptdmg_rgb_zh_cn,
	Cleave_rgb_zh_cn = Cleave_rgb_zh_cn,
	Cleaving_rgb_zh_cn = Cleaving_rgb_zh_cn,
	Cleaving_r_rgb_zh_cn = Cleaving_r_rgb_zh_cn,
	Crt_chance_rgb_zh_cn = Crt_chance_rgb_zh_cn,
	Crt_u_chance_rgb_zh_cn = Crt_u_chance_rgb_zh_cn,
	Crit_chance_rgb_zh_cn = Crit_chance_rgb_zh_cn,
	Crit_hit_rgb_zh_cn = Crit_hit_rgb_zh_cn,
	Crit_hit_chance_rgb_zh_cn = Crit_hit_chance_rgb_zh_cn,
	Crit_hits_rgb_zh_cn = Crit_hits_rgb_zh_cn,
	Crit_hits_k_rgb_zh_cn = Crit_hits_k_rgb_zh_cn,
	Crit_hit_e_rgb_zh_cn = Crit_hit_e_rgb_zh_cn,
	Crit_rgb_zh_cn = Crit_rgb_zh_cn,
	Crit_ih_rgb_zh_cn = Crit_ih_rgb_zh_cn,
	Crit0_rgb_zh_cn = Crit0_rgb_zh_cn,
	Crit_dmg_r_rgb_zh_cn = Crit_dmg_r_rgb_zh_cn,
	Crit_dmg_u_rgb_zh_cn = Crit_dmg_u_rgb_zh_cn,
	Crit_chance_r_rgb_zh_cn = Crit_chance_r_rgb_zh_cn,
	Crit_hit_color_rgb_zh_cn = Crit_hit_color_rgb_zh_cn,
	Crit_hit_om_rgb_zh_cn = Crit_hit_om_rgb_zh_cn,
	Crit_hit_udom_rgb_zh_cn = Crit_hit_udom_rgb_zh_cn,
	Dmg_rgb_zh_cn = Dmg_rgb_zh_cn,
	Dmg_a_rgb_zh_cn = Dmg_a_rgb_zh_cn,
	Damage_rgb_zh_cn = Damage_rgb_zh_cn,
	Damagewrp_rgb_zh_cn = Damagewrp_rgb_zh_cn,
	Damagewrp_a_rgb_zh_cn = Damagewrp_a_rgb_zh_cn,
	Electrocute_rgb_zh_cn = Electrocute_rgb_zh_cn,
	Electrocution_rgb_zh_cn = Electrocution_rgb_zh_cn,
	Electrocuted_rgb_zh_cn = Electrocuted_rgb_zh_cn,
	Electrocutes_rgb_zh_cn = Electrocutes_rgb_zh_cn,
	Electrcuting_rgb_zh_cn = Electrcuting_rgb_zh_cn,
	Feel_no_pain_rgb_zh_cn = Feel_no_pain_rgb_zh_cn,
	Finesse_rgb_zh_cn = Finesse_rgb_zh_cn,
	Finesse_dmg_rgb_zh_cn = Finesse_dmg_rgb_zh_cn,
	Focus_rgb_zh_cn = Focus_rgb_zh_cn,
	Focus_Target_rgb_zh_cn = Focus_Target_rgb_zh_cn,
	Fury_rgb_zh_cn = Fury_rgb_zh_cn,
	Fury_i_rgb_zh_cn = Fury_i_rgb_zh_cn,
	Health_rgb_zh_cn = Health_rgb_zh_cn,
	Wound_rgb_zh_cn = Wound_rgb_zh_cn,
	Wounds_rgb_zh_cn = Wounds_rgb_zh_cn,
	Wound_u_rgb_zh_cn = Wound_u_rgb_zh_cn,
	Wound_y_rgb_zh_cn = Wound_y_rgb_zh_cn,
	Hit_mass_rgb_zh_cn = Hit_mass_rgb_zh_cn,
	Hit_masss_rgb_zh_cn = Hit_masss_rgb_zh_cn,
	Impact_rgb_zh_cn = Impact_rgb_zh_cn,
	Lucky_bullet_rgb_zh_cn = Lucky_bullet_rgb_zh_cn,
	Meleespec_rgb_zh_cn = Meleespec_rgb_zh_cn,
	Momentum_rgb_zh_cn = Momentum_rgb_zh_cn,
	Perl_rgb_zh_cn = Perl_rgb_zh_cn,
	Peril_rgb_zh_cn = Peril_rgb_zh_cn,
	Perils_rgb_zh_cn = Perils_rgb_zh_cn,
	Power_rgb_zh_cn = Power_rgb_zh_cn,
	Precision_rgb_zh_cn = Precision_rgb_zh_cn,
	Rangedspec_rgb_zh_cn = Rangedspec_rgb_zh_cn,
	Rending_rgb_zh_cn = Rending_rgb_zh_cn,
	Soulblaze_rgb_zh_cn = Soulblaze_rgb_zh_cn,
	Stagger_rgb_zh_cn = Stagger_rgb_zh_cn,
	Stagger2_rgb_zh_cn = Stagger2_rgb_zh_cn,
	Staggering_rgb_zh_cn = Staggering_rgb_zh_cn,
	Stagger_i_rgb_zh_cn = Stagger_i_rgb_zh_cn,
	Staggers_rgb_zh_cn = Staggers_rgb_zh_cn,
	Staggers_e_rgb_zh_cn = Staggers_e_rgb_zh_cn,
	Stun_rgb_zh_cn = Stun_rgb_zh_cn,
	Stuns_rgb_zh_cn = Stuns_rgb_zh_cn,
	Stunned_rgb_zh_cn = Stunned_rgb_zh_cn,
	Staggered_rgb_zh_cn = Staggered_rgb_zh_cn,
	Staggerr_rgb_zh_cn = Staggerr_rgb_zh_cn,
	Stamina_rgb_zh_cn = Stamina_rgb_zh_cn,
	Stamina_c_r_rgb_zh_cn = Stamina_c_r_rgb_zh_cn,
	Stealth_rgb_zh_cn = Stealth_rgb_zh_cn,
	Strength_rgb_zh_cn = Strength_rgb_zh_cn,
	Tghnss_rgb_zh_cn = Tghnss_rgb_zh_cn,
	Toughness_rgb_zh_cn = Toughness_rgb_zh_cn,
	Toughness_dmg_red_rgb_zh_cn = Toughness_dmg_red_rgb_zh_cn,
	Toughness_dmg_red_u_rgb_zh_cn = Toughness_dmg_red_u_rgb_zh_cn,
	Toughness_dmg_rgb_zh_cn = Toughness_dmg_rgb_zh_cn,
	Coherency_rgb_zh_cn = Coherency_rgb_zh_cn,
	Trample_rgb_zh_cn = Trample_rgb_zh_cn,
	Weakspot_rgb_zh_cn = Weakspot_rgb_zh_cn,
	Weakspothit_rgb_zh_cn = Weakspothit_rgb_zh_cn,
	Weakspothits_rgb_zh_cn = Weakspothits_rgb_zh_cn,
	Weakspothits_k_rgb_zh_cn = Weakspothits_k_rgb_zh_cn,
	Weakspot_dmg_rgb_zh_cn = Weakspot_dmg_rgb_zh_cn,
	Weakspotv_dmg_rgb_zh_cn = Weakspotv_dmg_rgb_zh_cn,

	Trauma_note_rgb_zh_cn = Trauma_note_rgb_zh_cn,
	Fns_note_rgb_zh_cn = Fns_note_rgb_zh_cn,
	Pwr_note_rgb_zh_cn = Pwr_note_rgb_zh_cn,
	Rend_note_rgb_zh_cn = Rend_note_rgb_zh_cn,
	Brtl_note_rgb_zh_cn = Brtl_note_rgb_zh_cn,
	Hit_Mass_note_rgb_zh_cn = Hit_Mass_note_rgb_zh_cn,
	Fire_n_trap_note_rgb_zh_cn = Fire_n_trap_note_rgb_zh_cn,

	sedition_rgb_zh_cn = sedition_rgb_zh_cn,
	uprising_rgb_zh_cn = uprising_rgb_zh_cn,
	malice_rgb_zh_cn = malice_rgb_zh_cn,
	heresy_rgb_zh_cn = heresy_rgb_zh_cn,
	damnation_rgb_zh_cn = damnation_rgb_zh_cn,

	cls_vet_rgb_zh_cn = cls_vet_rgb_zh_cn,
	cls_vet2_rgb_zh_cn = cls_vet2_rgb_zh_cn,
	cls_zea_rgb_zh_cn = cls_zea_rgb_zh_cn,
	cls_zea2_rgb_zh_cn = cls_zea2_rgb_zh_cn,
	cls_psy_rgb_zh_cn = cls_psy_rgb_zh_cn,
	cls_psy2_rgb_zh_cn = cls_psy2_rgb_zh_cn,
	cls_ogr_rgb_zh_cn = cls_ogr_rgb_zh_cn,
	cls_ogr2_rgb_zh_cn = cls_ogr2_rgb_zh_cn,
}
