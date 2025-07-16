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
		local cmbtab_col = Color[mod:get("combat_ability_text_colour")](255, true) -- Don't translate this!
			local Ability_cd_rgb = iu_actit("Ability Cooldown", cmbtab_col)
			local Cd_rgb = iu_actit("Cooldown", cmbtab_col)
			local Combat_ability_rgb = iu_actit("Combat Ability", cmbtab_col)
			local Combat_ability_cd_rgb = iu_actit("Combat Ability Cooldown", cmbtab_col)
	--[++Health++]--
		local hlth_col = Color[mod:get("health_text_colour")](255, true) -- Don't translate this!
			local Health_rgb = iu_actit("Health", hlth_col)
			local Wound_rgb = iu_actit("Wound", hlth_col)
			local Wounds_rgb = iu_actit("Wounds", hlth_col)
	--[++Peril++]--
		local prl_col = Color[mod:get("peril_text_colour")](255, true) -- Don't translate this!
			local Peril_rgb = iu_actit("Peril", prl_col)
			local Perils_rgb = iu_actit("Perils", prl_col)
	--[++Stamina++]--
		local stam_col = Color[mod:get("stamina_text_colour")](255, true) -- Don't translate this!
			local Stamina_rgb = iu_actit("Stamina", stam_col)
			local Stamina_c_r_rgb = iu_actit("Stamina Cost", stam_col)
	--[++Toughness++]--
		local tghn_col = Color[mod:get("toughness_text_colour")](255, true) -- Don't translate this!
			local Toughness_rgb = iu_actit("Toughness", tghn_col)
			local Toughness_dmg_red_rgb = iu_actit("Toughness Damage Reduction", tghn_col)
	--[++Coherency++]--
		local coher_col = Color[mod:get("coherency_text_colour")](255, true)
			local Coherency_rgb = iu_actit("Coherency", coher_col)
--[+++BUFFS+++]--
	--[++Cleave++]--
		local clv_col = Color[mod:get("cleave_text_colour")](255, true) -- Don't translate this!
			local Cleave_rgb = iu_actit("Cleave", clv_col)
			local Cleaved_rgb = iu_actit("Cleaved", clv_col)
			local Cleaving_rgb = iu_actit("Cleaving", clv_col)
	--[++Crit Chance/Hit/Damage++]--
		local crt_col = Color[mod:get("crit_text_colour")](255, true) -- Don't translate this!
			local Crt_chance_rgb = iu_actit("Crit Chance", crt_col)
			local Crit_chance_rgb = iu_actit("Critical Chance", crt_col)
			local Crit_hit_rgb = iu_actit("Critical Hit", crt_col)
			local Crit_hit_chance_rgb = iu_actit("Critical Hit Chance", crt_col)
			local Crit_hits_rgb = iu_actit("Critical Hits", crt_col)
			local Crit_rgb = iu_actit("Critical", crt_col)
			local Crit0_rgb = iu_actit("Crit", crt_col)
			local Crt_dmg_r_rgb = iu_actit("Crit Damage", crt_col)
			local Crit_dmg_r_rgb = iu_actit("Critical Damage", crt_col)
			local Crit_chance_r_rgb = iu_actit("Critical Strike Chance", crt_col)
			local Crit_strike_rgb = iu_actit("Critical Strike", crt_col)
			local Crit_strike_dmg_rgb = iu_actit("Critical Strike Damage", crt_col)
			local Crit_hit_color_rgb = iu_actit("Critical Hit Damage", crt_col)
	--[++Damage++]--
		local dmg_col = Color[mod:get("damage_text_colour")](255, true) -- Don't translate this!
			local Damage_rgb = iu_actit("Damage", dmg_col)
			local Damagewrp_rgb = iu_actit("Warp-Damage", dmg_col)
	--[++Finesse++]--
		local fns_col = Color[mod:get("finesse_text_colour")](255, true) -- Don't translate this!
			local Finesse_rgb = iu_actit("Finesse", fns_col)
			local Finesse_dmg_rgb = iu_actit("Finesse Damage", fns_col)
	--[++Hit Mass++]--
		local htms_col = Color[mod:get("hit_mass_text_colour")](255, true) -- Don't translate this!
			local Hit_mass_rgb = iu_actit("Hit Mass", htms_col)
	--[++Impact++]--
		local imp_col = Color[mod:get("impact_text_colour")](255, true) -- Don't translate this!
			local Impact_rgb = iu_actit("Impact", imp_col)
	--[++Power++]--
		local pwr_col = Color[mod:get("power_text_colour")](255, true) -- Don't translate this!
			local Power_rgb = iu_actit("Power", pwr_col)
			local Strength_rgb = iu_actit("Strength", pwr_col)
	--[++Rending++]--
		local rend_col = Color[mod:get("rending_text_colour")](255, true) -- Don't translate this!
			local Rending_rgb = iu_actit("Rending", rend_col)
	--[++Weak Spot++]--
		local wksp_col = Color[mod:get("weakspot_text_colour")](255, true) -- Don't translate this!
			local Weak_spot_rgb = iu_actit("Weak Spot", wksp_col)
			local Weakspot_rgb = iu_actit("Weakspot", wksp_col)
			local Weakspothit_rgb = iu_actit("Weakspot Hit", wksp_col)
			local Weakspothits_rgb = iu_actit("Weakspot Hits", wksp_col)
			local Weakspot_dmg_rgb = iu_actit("Weakspot Damage", wksp_col)
--[+++DEBUFFS+++]--
	--[++Bleed++]--
		local bld_col = Color[mod:get("bleed_text_colour")](255, true) -- Don't translate this!
			local Bleed_rgb = iu_actit("Bleed", bld_col)
			local Bleeding_rgb = iu_actit("Bleeding", bld_col)
	--[++Brittleness++]--
		local brtl_col = Color[mod:get("brittleness_text_colour")](255, true) -- Don't translate this!
			local Brittleness_rgb = iu_actit("Brittleness", brtl_col)
	--[++Burn++]--
		local brn_col = Color[mod:get("burn_text_colour")](255, true) -- Don't translate this!
			local Burn_rgb = iu_actit("Burn", brn_col)
			local Burning_rgb = iu_actit("Burning", brn_col)
			local Heat_rgb = iu_actit("Heat", brn_col)
	--[++Corruption++]--
		local crpt_col = Color[mod:get("corruption_text_colour")](255, true) -- Don't translate this!
			local Corrupted_rgb = iu_actit("Corrupted", crpt_col)
			local Corruption_rgb = iu_actit("Corruption", crpt_col)
			local Corruptdmg_rgb = iu_actit("Corruption Damage", crpt_col)
	--[++Electrocuted++]--
		local electr_col = Color[mod:get("electrocuted_text_colour")](255, true) -- Don't translate this!
			local Electrocute_rgb = iu_actit("Electrocute", electr_col)
			local Electrocution_rgb = iu_actit("Electrocution", electr_col)
			local Electrocuted_rgb = iu_actit("Electrocuted", electr_col)
			local Electrocutes_rgb = iu_actit("Electrocutes", electr_col)
			local Electrcuting_rgb = iu_actit("Electrocuting", electr_col)
	--[++Soulblaze++]--
		local slblz_col = Color[mod:get("soulblaze_text_colour")](255, true) -- Don't translate this!
			local Soulblaze_rgb = iu_actit("Soulblaze", slblz_col)
	--[++Stagger++]--
		local stgr_col = Color[mod:get("stagger_text_colour")](255, true) -- Don't translate this!
			local Stagger_rgb = iu_actit("Stagger", stgr_col)
			local Staggering_rgb = iu_actit("Staggering", stgr_col)
			local Staggers_rgb = iu_actit("Staggers", stgr_col)
			local Stun_rgb = iu_actit("Stun", stgr_col)
			local Stuns_rgb = iu_actit("Stuns", stgr_col)
			local Stunned_rgb = iu_actit("Stunned", stgr_col)
			local Staggered_rgb = iu_actit("Staggered", stgr_col)

--[+++PSYKER+++]--
	--[++Precision++]--
		local prcsn_col = Color[mod:get("precision_text_colour")](255, true) -- Don't translate this!
			local Precision_rgb = iu_actit("Precision", prcsn_col)

--[+++OGRYN+++]--
	--[++Feel No Pain++]--
		local fnp_col = Color[mod:get("fnp_text_colour")](255, true) -- Don't translate this!
			local Feel_no_pain_rgb = iu_actit("Feel No Pain", fnp_col)
	--[++Lucky Bullet++]--
		local luckyb_col = Color[mod:get("luckyb_text_colour")](255, true) -- Don't translate this!
			local Lucky_bullet_rgb = iu_actit("Lucky Bullet", luckyb_col)
	--[+Trample+]--
		local trample_col = Color[mod:get("trample_text_colour")](255, true) -- Don't translate this!
			local Trample_rgb = iu_actit("Trample", trample_col)

--[+++ZEALOT+++]--
	--[++Fury++]--
		local fury_col = Color[mod:get("fury_text_colour")](255, true) -- Don't translate this!
			local Fury_rgb = iu_actit("Fury", fury_col)
	--[++Momentum++]--
		local moment_col = Color[mod:get("momentum_text_colour")](255, true) -- Don't translate this!
			local Momentum_rgb = iu_actit("Momentum", moment_col)
	--[++Stealth++]--
		local stlth_col = Color[mod:get("stealth_text_colour")](255, true) -- Don't translate this!
			local Stealth_rgb = iu_actit("Stealth", stlth_col)

--[+++VETERAN+++]--
	--[++Focus++]--
		local focus_col = Color[mod:get("focus_text_colour")](255, true) -- Don't translate this!
			local Focus_rgb = iu_actit("Focus", focus_col)
	--[++Focus Target++]--
		local focust_col = Color[mod:get("focust_text_colour")](255, true) -- Don't translate this!
			local Focus_Target_rgb = iu_actit("Focus Target", focust_col)
	--[++Melee Specialist++]--
		local meleespec_col = Color[mod:get("meleespec_text_colour")](255, true) -- Don't translate this!
			local Meleespec_rgb = iu_actit("Melee Specialist", meleespec_col)
	--[++Ranged Specialist++]--
		local rangedspec_col = Color[mod:get("rangedspec_text_colour")](255, true) -- Don't translate this!
			local Rangedspec_rgb = iu_actit("Ranged Specialist", rangedspec_col)

--[+++ARBITRATOR+++]--
	--[++Melee Justice++]--
		-- local meleejust_col = Color[mod:get("meleejust_text_colour")](255, true) -- Don't translate this!
			local Meleejust_rgb = iu_actit("Melee Justice", meleespec_col)
	--[++Ranged Justice++]--
		-- local rangedjust_col = Color[mod:get("rangedjust_text_colour")](255, true) -- Don't translate this!
			local Rangedjust_rgb = iu_actit("Ranged Justice", rangedspec_col)
	--[++Marked Enemy++]--
			local Markedenemy_rgb = iu_actit("Marked Enemy", focust_col)
	--[++Forceful++]--
			local Forceful_rgb = iu_actit("Forceful", focus_col)

--[+++MISC+++]--
	--[++Note++]--
		local note_col = Color[mod:get("note_text_colour")](255, true) -- Don't translate this!
			local Fns_note_rgb = iu_actit(" Finesse increases Weakspot and Critical Damage.", note_col)
			local Pwr_note_rgb = iu_actit(" Strength increases Damage, Stagger and Cleave.", note_col)
			local Rend_note_rgb = iu_actit(" Rending increases your Damage.", note_col)
			local Brtl_note_rgb = iu_actit(" Brittleness reduces the enemy's Armor.", note_col)
			local Trauma_note_rgb = iu_actit("", note_col)
			local Fire_n_trap_note_rgb = iu_actit("", note_col)
	--[+ Talents +]--
		local tal_col = Color[mod:get("talents_text_colour")](255, true) -- Don't translate this!
			local Arbites_gren_rgb = iu_actit("Arbites Grenade", tal_col)
			local Frag_gren_rgb = iu_actit("Frag Grenade", tal_col)
			local Fragmentation_gren_rgb = iu_actit("Fragmentation Grenade", tal_col)
			local Scriers_gaze_rgb = iu_actit("Scrier's Gaze", tal_col)
			local Stun_gren_rgb = iu_actit("Stun Grenade", tal_col)
			local BreakZLine_rgb = iu_actit("Break the Line", tal_col)

--[+ ++TREAT - СЛОЖНОСТЬ++ +]--
	--[+ SEDITION - МЯТЕЖ +]--
		local sed_col = Color[mod:get("sedition_text_colour")](255, true) -- Don't translate this!
			local sedition_rgb = iu_actit("Sedition", sed_col)
	--[+ UPRISING - ВОССТАНИЕ +]--
		local upr_col = Color[mod:get("uprising_text_colour")](255, true) -- Don't translate this!
			local uprising_rgb = iu_actit("Uprising", upr_col)
	--[+ MALICE - ЗЛОБА +]--
		local mal_col = Color[mod:get("malice_text_colour")](255, true) -- Don't translate this!
			local malice_rgb = iu_actit("Malice", mal_col)
	--[+ HERESY - ЕРЕСЬ +]--
		local her_col = Color[mod:get("heresy_text_colour")](255, true) -- Don't translate this!
			local heresy_rgb = iu_actit("Heresy", her_col)
	--[+ DAMNATION - ПРОКЛЯТИЕ +]--
		local dam_col = Color[mod:get("damnation_text_colour")](255, true) -- Don't translate this!
			local damnation_rgb = iu_actit("Damnation", dam_col)
	--[+ AURIC - ЗОЛОТО +]--
		local auric_col = Color[mod:get("auric_text_colour")](255, true) -- Don't translate this!
			local auric_rgb = iu_actit("Auric", auric_col)

	--[+ ++VETERAN - ВЕТЕРАН++ +]--
		local cls_vet_col = Color[mod:get("class_veteran_text_colour")](255, true) -- Don't translate this!
			local cls_vet_rgb = iu_actit("Veteran", cls_vet_col)
			local cls_vet2_rgb = iu_actit("Veteran", cls_vet_col)

	--[+ ++ZEALOT - Изувер++ +]--
		local cls_zea_col = Color[mod:get("class_zealot_text_colour")](255, true) -- Don't translate this!
			local cls_zea_rgb = iu_actit("Zealot", cls_zea_col)
			local cls_zea2_rgb = iu_actit("Zealot", cls_zea_col)

	--[+ ++PSYKER - ПСАЙКЕР++ +]--
		local cls_psy_col = Color[mod:get("class_psyker_text_colour")](255, true) -- Don't translate this!
			local cls_psy_rgb = iu_actit("Psyker", cls_psy_col)
			local cls_psy2_rgb = iu_actit("Psyker", cls_psy_col)

	--[+ ++OGRYN - ОГРИН++ +]--
		local cls_ogr_col = Color[mod:get("class_ogryn_text_colour")](255, true) -- Don't translate this!
			local cls_ogr_rgb = iu_actit("Ogryn", cls_ogr_col)
			local cls_ogr2_rgb = iu_actit("Ogryn", cls_ogr_col)
			
	--[+ ++ARBITRATOR - АРБИТРАТОР++ +]--
		local cls_arb_col = Color[mod:get("class_arbites_text_colour")](255, true) -- Don't translate this!
				local cls_arb_rgb = iu_actit("Arbitrator", cls_arb_col)
				local cls_arb2_rgb = iu_actit("Arbitrator", cls_arb_col)


-- In the list below, you also need to add a new entry or change an old one.
return {
	Arbites_gren_rgb = Arbites_gren_rgb,
	BreakZLine_rgb = BreakZLine_rgb,
	Frag_gren_rgb = Frag_gren_rgb,
	Fragmentation_gren_rgb = Fragmentation_gren_rgb,
	Scriers_gaze_rgb = Scriers_gaze_rgb,
	Stun_gren_rgb = Stun_gren_rgb,

	Bleed_rgb = Bleed_rgb,
	Bleeding_rgb = Bleeding_rgb,
	Brittleness_rgb = Brittleness_rgb,
	Burn_rgb = Burn_rgb,
	Burning_rgb = Burning_rgb,
	Heat_rgb = Heat_rgb,
	Ability_cd_rgb = Ability_cd_rgb,
	Cd_rgb = Cd_rgb,
	Coherency_rgb = Coherency_rgb,
	Combat_ability_rgb = Combat_ability_rgb,
	Combat_ability_cd_rgb = Combat_ability_cd_rgb,
	Corrupted_rgb = Corrupted_rgb,
	Corruption_rgb = Corruption_rgb,
	Corruptdmg_rgb = Corruptdmg_rgb,
	Cleave_rgb = Cleave_rgb,
	Cleaved_rgb = Cleaved_rgb,
	Cleaving_rgb = Cleaving_rgb,
	Crt_chance_rgb = Crt_chance_rgb,
	Crit_chance_rgb = Crit_chance_rgb,
	Crit_hit_rgb = Crit_hit_rgb,
	Crit_hit_chance_rgb = Crit_hit_chance_rgb,
	Crit_hits_rgb = Crit_hits_rgb,
	Crit_rgb = Crit_rgb,
	Crit0_rgb = Crit0_rgb,
	Crt_dmg_r_rgb = Crt_dmg_r_rgb,
	Crit_dmg_r_rgb = Crit_dmg_r_rgb,
	Crit_chance_r_rgb = Crit_chance_r_rgb,
	Crit_strike_rgb = Crit_strike_rgb,
	Crit_strike_dmg_rgb = Crit_strike_dmg_rgb,
	Crit_hit_color_rgb = Crit_hit_color_rgb,
	Damage_rgb = Damage_rgb,
	Damagewrp_rgb = Damagewrp_rgb,
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
	Markedenemy_rgb = Markedenemy_rgb,
	Forceful_rgb = Forceful_rgb,
	Meleejust_rgb = Meleejust_rgb,
	Meleespec_rgb = Meleespec_rgb,
	Momentum_rgb = Momentum_rgb,
	Peril_rgb = Peril_rgb,
	Perils_rgb = Perils_rgb,
	Power_rgb = Power_rgb,
	Precision_rgb = Precision_rgb,
	Rangedjust_rgb = Rangedjust_rgb,
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
	Weak_spot_rgb = Weak_spot_rgb,
	Weakspothit_rgb = Weakspothit_rgb,
	Weakspothits_rgb = Weakspothits_rgb,
	Weakspot_dmg_rgb = Weakspot_dmg_rgb,

	Brtl_note_rgb = Brtl_note_rgb,
	Fire_n_trap_note_rgb = Fire_n_trap_note_rgb,
	Fns_note_rgb = Fns_note_rgb,
	Pwr_note_rgb = Pwr_note_rgb,
	Rend_note_rgb = Rend_note_rgb,
	Trauma_note_rgb = Trauma_note_rgb,

	sedition_rgb = sedition_rgb,
	uprising_rgb = uprising_rgb,
	malice_rgb = malice_rgb,
	heresy_rgb = heresy_rgb,
	damnation_rgb = damnation_rgb,
	auric_rgb = auric_rgb,

	cls_vet_rgb = cls_vet_rgb,
	cls_vet2_rgb = cls_vet2_rgb,
	cls_zea_rgb = cls_zea_rgb,
	cls_zea2_rgb = cls_zea2_rgb,
	cls_psy_rgb = cls_psy_rgb,
	cls_psy2_rgb = cls_psy2_rgb,
	cls_ogr_rgb = cls_ogr_rgb,
	cls_ogr2_rgb = cls_ogr2_rgb,
	cls_arb_rgb = cls_arb_rgb,
	cls_arb2_rgb = cls_arb2_rgb,
}
