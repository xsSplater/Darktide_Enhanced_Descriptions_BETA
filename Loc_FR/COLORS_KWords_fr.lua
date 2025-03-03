---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

--[+++MAIN+++]--
	--[++Combat Ability CD++ FR]--
	local cmbtab_col = Color[mod:get("combat_ability_text_colour")](255, true)
	local Ability_cd_rgb_fr = iu_actit("Réduction du temps de recharge des capacités", cmbtab_col)
	local Cd_rgb_fr = iu_actit("Temps de recharge", cmbtab_col)
	local Combat_ability_rgb_fr = iu_actit("Capacité de combat", cmbtab_col)
	local Combat_ability_cd_rgb_fr = iu_actit("Temps de recharge des capacités de combat", cmbtab_col)

	--[++Health++ FR]--
	local hlth_col = Color[mod:get("health_text_colour")](255, true)
	local Health_rgb_fr = iu_actit("Santé", hlth_col)
	local Wound_rgb_fr = iu_actit("Blessure", hlth_col)
	local Wounds_rgb_fr = iu_actit("Blessures", hlth_col)

	--[++Peril++ FR]--
	local prl_col = Color[mod:get("peril_text_colour")](255, true)
	local Peril_rgb_fr = iu_actit("Péril", prl_col)
	local Perils_rgb_fr = iu_actit("Péril", prl_col)

	--[++Stamina++ FR]--
	local stam_col = Color[mod:get("stamina_text_colour")](255, true)
	local Stamina_rgb_fr = iu_actit("Endurance", stam_col)
	-- local Stamina_c_r_rgb = iu_actit("Stamina Cost", stam_col)

	--[++Toughness++ FR]--
	local tghn_col = Color[mod:get("toughness_text_colour")](255, true)
	local Toughness_rgb_fr = iu_actit("Robustesse", tghn_col)
	local Toughness_dmg_red_rgb_fr = iu_actit("Réduction des dégats de robustesse", tghn_col)

--[+++BUFFS+++]--
	--[++Cleave++ FR]--
	local clv_col = Color[mod:get("cleave_text_colour")](255, true)
	local Cleave_rgb_fr = iu_actit("Transpercement", clv_col)
	local Cleaving_rgb_fr = iu_actit("Transpercé", clv_col)

	--[++Crit Chance/Hit/Damage++ FR]--
	local crt_col = Color[mod:get("crit_text_colour")](255, true)
	local Crt_chance_rgb_fr = iu_actit("Taux de coup critique", crt_col)
	local Crit_chance_rgb_fr = iu_actit("Taux de coup critique", crt_col)
	local Crit_hit_rgb_fr = iu_actit("Coup critique", crt_col)
	local Crit_hit_chance_rgb_fr = iu_actit("Taux de coup critique", crt_col)
	local Crit_hits_rgb_fr = iu_actit("Coups critiques", crt_col)
	local Crit_rgb_fr = iu_actit("Critique", crt_col)
	local Crit0_rgb_fr = iu_actit("Critique", crt_col)
	local Crit_dmg_r_rgb_fr = iu_actit("Dégâts de coup critique", crt_col)
	local Crit_chance_r_rgb_fr = iu_actit("Taux de coup critique", crt_col)
	local Crit_strike_rgb_fr = iu_actit("Dégâts de coup critique", crt_col)
	local Crit_hit_color_rgb_fr = iu_actit("Dégâts de coup critique", crt_col)

	--[++Damage++ FR]--
	local dmg_col = Color[mod:get("damage_text_colour")](255, true)
	local Damage_rgb_fr = iu_actit("Dégâts", dmg_col)
	local Damagewrp_rgb_fr = iu_actit("Dégâts Warp", dmg_col)

	--[++Finesse++ FR]--
	local fns_col = Color[mod:get("finesse_text_colour")](255, true)
	local Finesse_rgb_fr = iu_actit("Finesse", fns_col)
	local Finesse_dmg_rgb_fr = iu_actit("Dégâts de finesse", fns_col)

	--[++Hit Mass++ FR]--
	local htms_col = Color[mod:get("hit_mass_text_colour")](255, true)
	local Hit_mass_rgb_fr = iu_actit("Coups en masse", htms_col)

	--[++Impact++ FR]--
	local imp_col = Color[mod:get("impact_text_colour")](255, true)
	local Impact_rgb_fr = iu_actit("Impact", imp_col)

	--[++Power++ FR]--
	local pwr_col = Color[mod:get("power_text_colour")](255, true)
	local Power_rgb_fr = iu_actit("Puissance", pwr_col)
	local Strength_rgb_fr = iu_actit("Puissance", pwr_col)

	--[++Rending++ FR]--
	local rend_col = Color[mod:get("rending_text_colour")](255, true)
	local Rending_rgb_fr = iu_actit("Déchirure", rend_col)

	--[++Weak Spot++ FR]--
	local wksp_col = Color[mod:get("weakspot_text_colour")](255, true)
	local Weakspot_rgb_fr = iu_actit("Point faible", wksp_col)
	local Weakspothit_rgb_fr = iu_actit("Coup sur point faible", wksp_col)
	local Weakspothits_rgb_fr = iu_actit("Points faibles", wksp_col)
	local Weakspot_dmg_rgb_fr = iu_actit("Dégât sur point faible", wksp_col)

--[+++DEBUFFS+++]--
	--[++Bleed++ FR]--
	local bld_col = Color[mod:get("bleed_text_colour")](255, true)
	local Bleed_rgb_fr = iu_actit("Saignement", bld_col)
	local Bleeding_rgb_fr = iu_actit("Saignent", bld_col)

	--[++Brittleness++ FR]--
	local brtl_col = Color[mod:get("brittleness_text_colour")](255, true)
	local Brittleness_rgb_fr = iu_actit("Fragilité", brtl_col)

	--[++Burn++ FR]--
	local brn_col = Color[mod:get("burn_text_colour")](255, true)
	local Burn_rgb_fr = iu_actit("Brûlure", brn_col)
	local Burning_rgb_fr = iu_actit("Brûlant", brn_col)
	local Heat_rgb_fr = iu_actit("Chaleur", brn_col)

	--[++Corruption++ FR]--
	local crpt_col = Color[mod:get("corruption_text_colour")](255, true)
	local Corruption_rgb_fr = iu_actit("Corruption", crpt_col)
	local Corruptdmg_rgb_fr = iu_actit("Dégât de corruption", crpt_col)

	--[++Electrocuted++ FR]--
	local electr_col = Color[mod:get("electrocuted_text_colour")](255, true)
	local Electrocute_rgb_fr = iu_actit("Électrocuter", electr_col)
	local Electrocution_rgb_fr = iu_actit("Assourdissante", electr_col)
	local Electrocuted_rgb_fr = iu_actit("Électrocutés", electr_col)
	local Electrocutes_rgb_fr = iu_actit("Électrocutent", electr_col)
	local Electrcuting_rgb_fr = iu_actit("Étourdit", electr_col)

	--[++Soulblaze++ FR]--
	local slblz_col = Color[mod:get("soulblaze_text_colour")](255, true)
	local Soulblaze_rgb_fr = iu_actit("Embrasement d'âme", slblz_col)

	--[++Stagger++ FR]--
	local stgr_col = Color[mod:get("stagger_text_colour")](255, true)
	local Stagger_rgb_fr = iu_actit("Vacillement", stgr_col)
	local Staggering_rgb_fr = iu_actit("vaciller", stgr_col)
	local Staggers_rgb_fr = iu_actit("vacillent", stgr_col)
	local Stun_rgb_fr = iu_actit("étourdir", stgr_col)
	local Stuns_rgb_fr = iu_actit("étourdissements", stgr_col)
	local Stunned_rgb_fr = iu_actit("étourdis", stgr_col)
	local Staggered_rgb_fr = iu_actit("vacille", stgr_col)
	local Stun_s_rgb_fr = iu_actit("étourdissent", stgr_col)

--[+++PSYKER+++]--
	--[++Precision++ FR]--
	local prcsn_col = Color[mod:get("precision_text_colour")](255, true)
	local Precision_rgb_fr = iu_actit("Précision", prcsn_col)

--[+++OGRYN+++]--
	--[++Feel No Pain++ FR]--
	local fnp_col = Color[mod:get("fnp_text_colour")](255, true)
	local Feel_no_pain_rgb_fr = iu_actit("Insensible la douleur", fnp_col)

	--[++Lucky Bullet++ FR]--
	local luckyb_col = Color[mod:get("luckyb_text_colour")](255, true)
	local Lucky_bullet_rgb_fr = iu_actit("balles chanceuses", luckyb_col)

	--[+Trample+ FR]--
	local trample_col = Color[mod:get("trample_text_colour")](255, true)
	local Trample_rgb_fr = iu_actit("Piétinement", trample_col)

--[+++ZEALOT+++]--
	--[++Fury++ FR]--
	local fury_col = Color[mod:get("fury_text_colour")](255, true)
	local Fury_rgb_fr = iu_actit("Fureur", fury_col)

	--[++Momentum++ FR]--
	local moment_col = Color[mod:get("momentum_text_colour")](255, true)
	local Momentum_rgb_fr = iu_actit("Jugement inexorable", moment_col)

	--[++Stealth++ FR]--
	local stlth_col = Color[mod:get("stealth_text_colour")](255, true)
	local Stealth_rgb_fr = iu_actit("furtivité", stlth_col)

--[+++VETERAN+++]--
	--[++Focus++ FR]--
	local focus_col = Color[mod:get("focus_text_colour")](255, true)
	local Focus_rgb_fr = iu_actit("Focalisation", focus_col)

	--[++Focus Target++ FR]--
	local focust_col = Color[mod:get("focust_text_colour")](255, true)
	local Focus_Target_rgb_fr = iu_actit("Ciblage", focust_col)

	--[++Melee Specialist++ FR]--
	local meleespec_col = Color[mod:get("meleespec_text_colour")](255, true)
	local Meleespec_rgb_fr = iu_actit("Spécialiste en mêlée", meleespec_col)

	--[++Ranged Specialist++ FR]--
	local rangedspec_col = Color[mod:get("rangedspec_text_colour")](255, true)
	local Rangedspec_rgb_fr = iu_actit("Spécialiste à distance", rangedspec_col)

--[+++MISC+++]--
	--[++Note++ FR]--
	local note_col = Color[mod:get("note_text_colour")](255, true)
	local Fns_note_rgb_fr = iu_actit(" La Finesse augmente les dégats au point faible et les dégats critiques.", note_col)
	local Pwr_note_rgb_fr = iu_actit(" La Puissance augmente les dégats, le vacillement et le transpercement.", note_col)
	local Rend_note_rgb_fr = iu_actit(" La Déchirure augmente vos dégats.", note_col)
	local Brtl_note_rgb_fr = iu_actit(" La Fragilité réduit la valeur défensive de l'armure des ennemis.", note_col)
	-- local Fire_n_trap_note_rgb = iu_actit(" Doesn't save you from Flamers and Trappers.", note_col)
	-- local Trauma_note_rgb = iu_actit(" Doesn't work for secondary attacks of Trauma Staff.", note_col)
	local Trauma_note_rgb = iu_actit("", note_col)
	local Fire_n_trap_note_rgb = iu_actit("", note_col)

	--[+ Talents FR +]--
	local tal_col = Color[mod:get("talents_text_colour")](255, true)
	local Scriers_gaze_rgb_fr = iu_actit("Regard de divination", tal_col)
	local Stun_gren_rgb_fr = iu_actit("Grenade étourdissante", tal_col)
	local Frag_gren_rgb_fr = iu_actit("Grenade Frag", tal_col)
	local Fragmentation_gren_rgb_fr = iu_actit("Grenade à fragmentation", tal_col)

return {

	Scriers_gaze_rgb_fr = Scriers_gaze_rgb_fr,
	Stun_gren_rgb_fr = Stun_gren_rgb_fr,
	Frag_gren_rgb_fr = Frag_gren_rgb_fr,
	Fragmentation_gren_rgb_fr = Fragmentation_gren_rgb_fr,

	Stun_s_rgb_fr = Stun_s_rgb_fr,
	Fns_note_rgb_fr = Fns_note_rgb_fr,
	Pwr_note_rgb_fr = Pwr_note_rgb_fr,
	Brtl_note_rgb_fr = Brtl_note_rgb_fr,
	Rend_note_rgb_fr = Rend_note_rgb_fr,

	Ability_cd_rgb_fr = Ability_cd_rgb_fr,
	Cd_rgb_fr = Cd_rgb_fr,
	Combat_ability_rgb_fr = Combat_ability_rgb_fr,
	Combat_ability_cd_rgb_fr = Combat_ability_cd_rgb_fr,
	Health_rgb_fr = Health_rgb_fr,
	Wound_rgb_fr = Wound_rgb_fr,
	Wounds_rgb_fr = Wounds_rgb_fr,
	Peril_rgb_fr = Peril_rgb_fr,
	Perils_rgb_fr = Perils_rgb_fr,
	Stamina_rgb_fr = Stamina_rgb_fr,
	Toughness_rgb_fr = Toughness_rgb_fr,
	Toughness_dmg_red_rgb_fr = Toughness_dmg_red_rgb_fr,
	Cleave_rgb_fr = Cleave_rgb_fr,
	Cleaving_rgb_fr = Cleaving_rgb_fr,
	Crt_chance_rgb_fr = Crt_chance_rgb_fr,
	Crit_chance_rgb_fr = Crit_chance_rgb_fr,
	Crit_hit_rgb_fr = Crit_hit_rgb_fr,
	Crit_hit_chance_rgb_fr = Crit_hit_chance_rgb_fr,
	Crit_hits_rgb_fr = Crit_hits_rgb_fr,
	Crit_rgb_fr = Crit_rgb_fr,
	Crit0_rgb_fr = Crit0_rgb_fr,
	Crit_dmg_r_rgb_fr = Crit_dmg_r_rgb_fr,
	Crit_chance_r_rgb_fr = Crit_chance_r_rgb_fr,
	Crit_strike_rgb_fr = Crit_strike_rgb_fr,
	Crit_hit_color_rgb_fr = Crit_hit_color_rgb_fr,
	Damage_rgb_fr = Damage_rgb_fr,
	Damagewrp_rgb_fr = Damagewrp_rgb_fr,
	Finesse_rgb_fr = Finesse_rgb_fr,
	Finesse_dmg_rgb_fr = Finesse_dmg_rgb_fr,
	Hit_mass_rgb_fr = Hit_mass_rgb_fr,
	Impact_rgb_fr = Impact_rgb_fr,
	Power_rgb_fr = Power_rgb_fr,
	Strength_rgb_fr = Strength_rgb_fr,
	Rending_rgb_fr = Rending_rgb_fr,
	Weakspot_rgb_fr = Weakspot_rgb_fr,
	Weakspothit_rgb_fr = Weakspothit_rgb_fr,
	Weakspothits_rgb_fr = Weakspothits_rgb_fr,
	Weakspot_dmg_rgb_fr = Weakspot_dmg_rgb_fr,
	Bleed_rgb_fr = Bleed_rgb_fr,
	Bleeding_rgb_fr = Bleeding_rgb_fr,
	Brittleness_rgb_fr = Brittleness_rgb_fr,
	Burn_rgb_fr = Burn_rgb_fr,
	Burning_rgb_fr = Burning_rgb_fr,
	Heat_rgb_fr = Heat_rgb_fr,
	Corruption_rgb_fr = Corruption_rgb_fr,
	Corruptdmg_rgb_fr = Corruptdmg_rgb_fr,
	Electrocute_rgb_fr = Electrocute_rgb_fr,
	Electrocution_rgb_fr = Electrocution_rgb_fr,
	Electrocuted_rgb_fr = Electrocuted_rgb_fr,
	Electrocutes_rgb_fr = Electrocutes_rgb_fr,
	Electrcuting_rgb_fr = Electrcuting_rgb_fr,
	Soulblaze_rgb_fr = Soulblaze_rgb_fr,
	Stagger_rgb_fr = Stagger_rgb_fr,
	Staggering_rgb_fr = Staggering_rgb_fr,
	Staggers_rgb_fr = Staggers_rgb_fr,
	Stun_rgb_fr = Stun_rgb_fr,
	Stuns_rgb_fr = Stuns_rgb_fr,
	Stunned_rgb_fr = Stunned_rgb_fr,
	Staggered_rgb_fr = Staggered_rgb_fr,
	Precision_rgb_fr = Precision_rgb_fr,
	Feel_no_pain_rgb_fr = Feel_no_pain_rgb_fr,
	Lucky_bullet_rgb_fr = Lucky_bullet_rgb_fr,
	Trample_rgb_fr = Trample_rgb_fr,
	Fury_rgb_fr = Fury_rgb_fr,
	Momentum_rgb_fr = Momentum_rgb_fr,
	Stealth_rgb_fr = Stealth_rgb_fr,
	Focus_rgb_fr = Focus_rgb_fr,
	Focus_Target_rgb_fr = Focus_Target_rgb_fr,
	Meleespec_rgb_fr = Meleespec_rgb_fr,
	Rangedspec_rgb_fr = Rangedspec_rgb_fr,

}

