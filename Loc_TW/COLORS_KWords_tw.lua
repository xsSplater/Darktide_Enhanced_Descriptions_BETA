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
	local Ability_cd_rgb = iu_actit("技能冷卻", cmbtab_col)
    local Cd_rgb = iu_actit("冷卻", cmbtab_col)
    local Combat_ability_rgb = iu_actit("戰鬥技能", cmbtab_col)
    local Combat_ability_cd_rgb = iu_actit("戰鬥技能冷卻", cmbtab_col)
	--[++Health++]--
	local hlth_col = Color[mod:get("health_text_colour")](255, true) -- Do not translate this line!
	local Health_rgb = iu_actit("生命", hlth_col)
    local Wound_rgb = iu_actit("傷痕", hlth_col)
    local Wounds_rgb = iu_actit("傷痕", hlth_col)
	--[++Peril++]--
	local prl_col = Color[mod:get("peril_text_colour")](255, true) -- Do not translate this line!
	local Peril_rgb = iu_actit("Peril", prl_col)
	local Perils_rgb = iu_actit("Perils", prl_col)
	local Peril_rgb = iu_actit("反噬", prl_col)
    local Perils_rgb = iu_actit("反噬", prl_col)
	--[++Stamina++]--
	local stam_col = Color[mod:get("stamina_text_colour")](255, true) -- Do not translate this line!
	local Stamina_rgb = iu_actit("耐力", stam_col)
	-- local Stamina_c_r_rgb = iu_actit("Stamina Cost", stam_col)
	--[++Toughness++]--
	local tghn_col = Color[mod:get("toughness_text_colour")](255, true) -- Do not translate this line!
	local Toughness_rgb = iu_actit("韌性", tghn_col)
    local Toughness_dmg_red_rgb = iu_actit("韌性傷害減免", tghn_col)
--[+++BUFFS+++]--
	--[++Cleave++]--
	local clv_col = Color[mod:get("cleave_text_colour")](255, true) -- Do not translate this line!
	local Cleave_rgb = iu_actit("順劈攻擊", clv_col)
    local Cleaving_rgb = iu_actit("順劈攻擊", clv_col)
	--[++Crit Chance/Hit/Damage++]--
	local crt_col = Color[mod:get("crit_text_colour")](255, true) -- Do not translate this line!
    local Crt_chance_rgb = iu_actit("暴擊機率", crt_col)
    local Crit_chance_rgb = iu_actit("暴擊機率", crt_col)
    local Crit_hit_rgb = iu_actit("暴擊", crt_col)
    local Crit_hit_chance_rgb = iu_actit("暴擊機率", crt_col)
    local Crit_hits_rgb = iu_actit("暴擊", crt_col)
    local Crit_rgb = iu_actit("暴擊", crt_col)
    local Crit0_rgb = iu_actit("暴擊", crt_col)
    local Crit_dmg_r_rgb = iu_actit("暴擊傷害", crt_col)
    local Crit_chance_r_rgb = iu_actit("暴擊機率", crt_col)
    local Crit_strike_rgb = iu_actit("暴擊", crt_col)
    local Crit_hit_color_rgb = iu_actit("暴擊傷害", crt_col)
	--[++Damage++]--
	local dmg_col = Color[mod:get("damage_text_colour")](255, true) -- Do not translate this line!
	local Damage_rgb = iu_actit("傷害", dmg_col)
	local DamageBack_rgb = iu_actit("背刺傷害", dmg_col)
    local Damagewrp_rgb = iu_actit("亞空間傷害", dmg_col)
	--[++Finesse++]--
	local fns_col = Color[mod:get("finesse_text_colour")](255, true) -- Do not translate this line!
    local Finesse_rgb = iu_actit("靈巧", fns_col)
    local Finesse_dmg_rgb = iu_actit("靈巧傷害", fns_col)
	--[++Hit Mass++]--
	local htms_col = Color[mod:get("hit_mass_text_colour")](255, true) -- Do not translate this line!
	local Hit_mass_rgb = iu_actit("順劈目標", htms_col)
	--[++Impact++]--
	local imp_col = Color[mod:get("impact_text_colour")](255, true) -- Do not translate this line!
	local Impact_rgb = iu_actit("Impact", imp_col)
	local Impact_rgb = iu_actit("衝擊", imp_col)
	--[++Power++]--
	local pwr_col = Color[mod:get("power_text_colour")](255, true) -- Do not translate this line!
	local Power_rgb = iu_actit("威力", pwr_col)
	local Strength_rgb = iu_actit("威力", pwr_col)
	--[++Rending++]--
	local rend_col = Color[mod:get("rending_text_colour")](255, true) -- Do not translate this line!
	local Rending_rgb = iu_actit("撕裂", rend_col)
	--[++Weak Spot++]--
	local wksp_col = Color[mod:get("weakspot_text_colour")](255, true) -- Do not translate this line!
	local Weakspot_rgb = iu_actit("弱點", wksp_col)
	local Weakspothit_rgb = iu_actit("弱點命中", wksp_col)
	local Weakspothits_rgb = iu_actit("命中弱點", wksp_col)
	local Weakspot_dmg_rgb = iu_actit("弱點傷害", wksp_col)
--[+++DEBUFFS+++]--
	--[++Bleed++]--
	local bld_col = Color[mod:get("bleed_text_colour")](255, true) -- Do not translate this line!
    local Bleed_rgb = iu_actit("流血", bld_col)
    local Bleeding_rgb = iu_actit("流血中", bld_col)
	--[++Brittleness++]--
	local brtl_col = Color[mod:get("brittleness_text_colour")](255, true) -- Do not translate this line!
    local Brittleness_rgb = iu_actit("脆弱", brtl_col)
	--[++Burn++]--
	local brn_col = Color[mod:get("burn_text_colour")](255, true) -- Do not translate this line!
    local Burn_rgb = iu_actit("燃燒", brn_col)
    local Burning_rgb = iu_actit("燃燒中", brn_col)
    local Heat_rgb = iu_actit("散熱", brn_col)
	--[++Corruption++]--
	local crpt_col = Color[mod:get("corruption_text_colour")](255, true) -- Do not translate this line!
	local Corruption_rgb = iu_actit("腐敗", crpt_col)
    local Corruptdmg_rgb = iu_actit("腐敗傷害", crpt_col)
	--[++Electrocuted++]--
	local electr_col = Color[mod:get("electrocuted_text_colour")](255, true) -- Do not translate this line!
    local Electrocute_rgb = iu_actit("電擊", electr_col)
    local Electrocution_rgb = iu_actit("眩暈", electr_col)
    local Electrocuted_rgb = iu_actit("被電擊", electr_col)
    local Electrocutes_rgb = iu_actit("電擊", electr_col)
    local Electrcuting_rgb = iu_actit("電擊中", electr_col)
	--[++Soulblaze++]--
	local slblz_col = Color[mod:get("soulblaze_text_colour")](255, true) -- Do not translate this line!
	local Soulblaze_rgb = iu_actit("靈火", slblz_col)
	--[++Stagger++]--
	local stgr_col = Color[mod:get("stagger_text_colour")](255, true) -- Do not translate this line!
    local Stagger_rgb = iu_actit("踉蹌", stgr_col)
	local Staggering_rgb = iu_actit("眩暈", stgr_col) -- 參考「壓倒性的武力」的武器祝福
    local Staggers_rgb = iu_actit("暈眩", stgr_col)
    local Stun_rgb = iu_actit("暈眩", stgr_col)
    local Stuns_rgb = iu_actit("致眩", stgr_col)
    local Stunned_rgb = iu_actit("已暈眩", stgr_col)
    local Staggered_rgb = iu_actit("已踉蹌", stgr_col)
--[+++PSYKER+++]--
	--[++Precision++]--
	local prcsn_col = Color[mod:get("precision_text_colour")](255, true) -- Do not translate this line!
    local Precision_rgb = iu_actit("精準加成", prcsn_col)
--[+++OGRYN+++]--
	--[++Feel No Pain++]--
	local fnp_col = Color[mod:get("fnp_text_colour")](255, true) -- Do not translate this line!
    local Feel_no_pain_rgb = iu_actit("麻木", fnp_col)
	--[++Lucky Bullet++]--
	local luckyb_col = Color[mod:get("luckyb_text_colour")](255, true) -- Do not translate this line!
    local Lucky_bullet_rgb = iu_actit("幸運子彈", luckyb_col)
	--[+Trample+]--
	local trample_col = Color[mod:get("trample_text_colour")](255, true) -- Do not translate this line!
    local Trample_rgb = iu_actit("踐踏", trample_col)
--[+++ZEALOT+++]--
	--[++Fury++]--
	local fury_col = Color[mod:get("fury_text_colour")](255, true) -- Do not translate this line!
    local Fury_rgb = iu_actit("狂怒", fury_col)
	--[++Momentum++]--
	local moment_col = Color[mod:get("momentum_text_colour")](255, true) -- Do not translate this line!
	local Momentum_rgb = iu_actit("勢能", moment_col)
	--[++Stealth++]--
	local stlth_col = Color[mod:get("stealth_text_colour")](255, true) -- Do not translate this line!
	local Stealth_rgb = iu_actit("隱身", stlth_col)
--[+++VETERAN+++]--
	--[++Focus++]--
	local focus_col = Color[mod:get("focus_text_colour")](255, true) -- Do not translate this line!
	local Focus_rgb = iu_actit("專注", focus_col)
	--[++Focus Target++]--
	local focust_col = Color[mod:get("focust_text_colour")](255, true) -- Do not translate this line!
   local Focus_Target_rgb = iu_actit("專注目標", focust_col)
	--[++Melee Specialist++]--
	local meleespec_col = Color[mod:get("meleespec_text_colour")](255, true) -- Do not translate this line!
    local Meleespec_rgb = iu_actit("近戰專家", meleespec_col)
	--[++Ranged Specialist++]--
	local rangedspec_col = Color[mod:get("rangedspec_text_colour")](255, true) -- Do not translate this line!
    local Rangedspec_rgb = iu_actit("遠程專家", rangedspec_col)
--[+++MISC+++]--
	--[++Note++]--
	local note_col = Color[mod:get("note_text_colour")](255, true) -- Do not translate this line!
    local Fns_note_rgb = iu_actit(" 精準會增加弱點與爆擊傷害。", note_col)
    local Pwr_note_rgb = iu_actit(" 威力會增加傷害、踉蹌與破甲。", note_col)
    local Rend_note_rgb = iu_actit(" 撕裂可以增加傷害。", note_col)
    local Brtl_note_rgb = iu_actit(" 脆弱會降低敵人的護甲。", note_col)
    -- local Fire_n_trap_note_rgb = iu_actit(" 不會保護你免於火焰槍與捕獸器。", note_col)
    -- local Trauma_note_rgb = iu_actit(" 不適用於震盪法杖的次要攻擊。", note_col)
	local Trauma_note_rgb = iu_actit("", note_col)
	local Fire_n_trap_note_rgb = iu_actit("", note_col)
--[+ Talents +]--
	local tal_col = Color[mod:get("talents_text_colour")](255, true) -- Do not translate this line!
	local Scriers_gaze_rgb = iu_actit("占卜者的凝視", tal_col)
	local Stun_gren_rgb = iu_actit("眩暈手榴彈", tal_col)
	local Frag_gren_rgb = iu_actit("破片手榴彈", tal_col)
	local Fragmentation_gren_rgb = iu_actit("破片手榴彈", tal_col)

-- In the list below, you also need to add a new entry or change an old one.
return {
	Scriers_gaze_rgb = Scriers_gaze_rgb,
	Stun_gren_rgb = Stun_gren_rgb,
	Frag_gren_rgb = Frag_gren_rgb,
	Fragmentation_gren_rgb = Fragmentation_gren_rgb,

	Bleed_rgb = Bleed_rgb,
	Bleeding_rgb = Bleeding_rgb,
	Brittleness_rgb = Brittleness_rgb,
	Burn_rgb = Burn_rgb,
	Burning_rgb = Burning_rgb,
	Heat_rgb = Heat_rgb,
	Ability_cd_rgb = Ability_cd_rgb,
	Cd_rgb = Cd_rgb,
	Combat_ability_rgb = Combat_ability_rgb,
	Combat_ability_cd_rgb = Combat_ability_cd_rgb,
	Corruption_rgb = Corruption_rgb,
	Corruptdmg_rgb = Corruptdmg_rgb,
	Cleave_rgb = Cleave_rgb,
	Cleaving_rgb = Cleaving_rgb,
	Crt_chance_rgb = Crt_chance_rgb,
	Crit_chance_rgb = Crit_chance_rgb,
	Crit_hit_rgb = Crit_hit_rgb,
	Crit_hit_chance_rgb = Crit_hit_chance_rgb,
	Crit_hits_rgb = Crit_hits_rgb,
	Crit_rgb = Crit_rgb,
	Crit0_rgb = Crit0_rgb,
	Crit_dmg_r_rgb = Crit_dmg_r_rgb,
	Crit_chance_r_rgb = Crit_chance_r_rgb,
	Crit_strike_rgb = Crit_strike_rgb,
	Crit_hit_color_rgb = Crit_hit_color_rgb,
	Damage_rgb = Damage_rgb,
	Damagewrp_rgb = Damagewrp_rgb,
	DamageBack_rgb = DamageBack_rgb,
	Damage_ru_rgb = Damage_ru_rgb,
	Damagewrp_ru_rgb = Damagewrp_ru_rgb,
	Electrocute_rgb = Electrocute_rgb,
	Electrocution_rgb = Electrocution_rgb,
	Electrocuted_rgb = Electrocuted_rgb,
	Electrocutes_rgb = Electrocutes_rgb,
	Electrcuting_rgb = Electrcuting_rgb,
	Feel_no_pain_rgb = Feel_no_pain_rgb,
	Finesse_rgb = Finesse_rgb,
	Finesse_dmg_rgb = Finesse_dmg_rgb,
	Focus_rgb = Focus_rgb,
	Focus_Target_rgb = Focus_Target_rgb,
	Fury_rgb = Fury_rgb,
	Health_rgb = Health_rgb,
	Wound_rgb = Wound_rgb,
	Wounds_rgb = Wounds_rgb,
	Hit_mass_rgb = Hit_mass_rgb,
	Impact_rgb = Impact_rgb,
	Lucky_bullet_rgb = Lucky_bullet_rgb,
	Meleespec_rgb = Meleespec_rgb,
	Momentum_rgb = Momentum_rgb,
	Peril_rgb = Peril_rgb,
	Perils_rgb = Perils_rgb,
	Power_rgb = Power_rgb,
	Precision_rgb = Precision_rgb,
	Rangedspec_rgb = Rangedspec_rgb,
	Rending_rgb = Rending_rgb,
	Soulblaze_rgb = Soulblaze_rgb,
	Stagger_rgb = Stagger_rgb,
	Staggering_rgb = Staggering_rgb,
	Staggers_rgb = Staggers_rgb,
	Stun_rgb = Stun_rgb,
	Stuns_rgb = Stuns_rgb,
	Stunned_rgb = Stunned_rgb,
	Staggered_rgb = Staggered_rgb,
	Stamina_rgb = Stamina_rgb,
	Stamina_c_r_rgb = Stamina_c_r_rgb,
	Stealth_rgb = Stealth_rgb,
	Strength_rgb = Strength_rgb,
	Toughness_rgb = Toughness_rgb,
	Toughness_dmg_red_rgb = Toughness_dmg_red_rgb,
	Trample_rgb = Trample_rgb,
	Weakspot_rgb = Weakspot_rgb,
	Weakspothit_rgb = Weakspothit_rgb,
	Weakspothits_rgb = Weakspothits_rgb,
	Weakspot_dmg_rgb = Weakspot_dmg_rgb,

	Trauma_note_rgb = Trauma_note_rgb,
	Fns_note_rgb = Fns_note_rgb,
	Pwr_note_rgb = Pwr_note_rgb,
	Rend_note_rgb = Rend_note_rgb,
	Brtl_note_rgb = Brtl_note_rgb,
	Fire_n_trap_note_rgb = Fire_n_trap_note_rgb,

	scriers_gaze_rgb = scriers_gaze_rgb,
	stun_gren_rgb = stun_gren_rgb,
	p_stam_var_rgb = p_stam_var_rgb,
	p_rbc_rgb = p_rbc_rgb,
	m_tghn_reg_del_rgb = m_tghn_reg_del_rgb,
	ammo_var_rgb = ammo_var_rgb,
	blck_var_rgb = blck_var_rgb,
	blltam_var_rgb = blltam_var_rgb,
	chnc_var_rgb = chnc_var_rgb,
	chrgtime_var_rgb = chrgtime_var_rgb,
	cd_var_rgb = cd_var_rgb,
	cleave_var_rgb = cleave_var_rgb,
	crit_var_rgb = crit_var_rgb,
	critchmax_var_rgb = critchmax_var_rgb,
	dmg_var_rgb = dmg_var_rgb,
	dur_var_rgb = dur_var_rgb,
	hit_var_rgb = hit_var_rgb,
	impact_var_rgb = impact_var_rgb,
	maxstks_var_rgb = maxstks_var_rgb,
	mult_hit_var_rgb = mult_hit_var_rgb,
	procch_var_rgb = procch_var_rgb,
	red_var_rgb = red_var_rgb,
	rending2_var_rgb = rending2_var_rgb,
	range_var_rgb = range_var_rgb,
	rangcrtdmg_var_rgb = rangcrtdmg_var_rgb,
	rend_var_rgb = rend_var_rgb,
	stacks_var_rgb = stacks_var_rgb,
	stgr_var_rgb = stgr_var_rgb,
	stgrrang_var_rgb = stgrrang_var_rgb,
	stgrrdct_var_rgb = stgrrdct_var_rgb,
	stam_var_rgb = stam_var_rgb,
	time_var_rgb = time_var_rgb,
	tghns_var_rgb = tghns_var_rgb,
	value_var_rgb = value_var_rgb,
	warpchrg_var_rgb = warpchrg_var_rgb,
	weapsprd_var_rgb = weapsprd_var_rgb,
}
