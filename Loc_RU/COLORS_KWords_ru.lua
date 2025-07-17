---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

--[+++ОСНОВНОЕ+++]--
	--[++Восстановление способности++]--
		local cmbtab_col = Color[mod:get("combat_ability_text_colour")](255, true)
			local Ability_cd_rgb_ru = iu_actit("восстановления способности", cmbtab_col)
			local Cd_rgb_ru = iu_actit("восстановления", cmbtab_col)
			local Combat_abil_rgb_ru = iu_actit("боевая способность", cmbtab_col)
			local Combat_ability_rgb_ru = iu_actit("боевой способности", cmbtab_col)
			local Combat_ability_cd_rgb_ru = iu_actit("восстановления боевой способности", cmbtab_col)
	--[++Здоровье++]--
		local hlth_col = Color[mod:get("health_text_colour")](255, true)
			local Health_rgb_ru = iu_actit("здоровью", hlth_col)
			local Healthx_rgb_ru = iu_actit("здоровьем", hlth_col)
			local Wound_rgb_ru = iu_actit("здоровья", hlth_col)
			local Wounds_rgb_ru = iu_actit("ране", hlth_col)
			local Wound_u_rgb_ru = iu_actit("рану", hlth_col)
			local Wound_y_rgb_ru = iu_actit("раны", hlth_col)
	--[++Опасность++]--
		local prl_col = Color[mod:get("peril_text_colour")](255, true)
			local Peril_rgb_ru = iu_actit("опасности", prl_col)
			local Perils_rgb_ru = iu_actit("опасностей", prl_col)
			local Perl_rgb_ru = iu_actit("опасность", prl_col)
	--[++Ошеломление++]--
		local stam_col = Color[mod:get("stamina_text_colour")](255, true)
			local Stamina_rgb_ru = iu_actit("выносливости", stam_col)
			local Stamina_c_r_rgb_ru = iu_actit("выносливость", stam_col)
	--[++Стойкость++]--
		local tghn_col = Color[mod:get("toughness_text_colour")](255, true)
			local Toughness_rgb_ru = iu_actit("стойкости", tghn_col)
			local Tghnss_rgb_ru = iu_actit("стойкость", tghn_col)
			local Toughness_dmg_red_rgb_ru = iu_actit("снижение урона стойкости", tghn_col)
			local Toughness_dmg_red_u_rgb_ru = iu_actit("снижению урона стойкости", tghn_col)
			local Toughness_dmg_rgb_ru = iu_actit("урона стойкости", tghn_col)
	--[++Сплочённость++]--
		local coher_col = Color[mod:get("coherency_text_colour")](255, true)
			local Coherency_rgb_ru = iu_actit("сплочённости", coher_col)
--[+++БАФФЫ+++]--
	--[++Критический удар++]--
		local crt_col = Color[mod:get("crit_text_colour")](255, true)
			local Crt_chance_rgb_ru = iu_actit("шанс критического выстрела", crt_col)
			local Crt_u_chance_rgb_ru = iu_actit("шансу критического выстрела", crt_col)
			local Crit_chance_rgb_ru = iu_actit("шансу критического удара", crt_col)
			local Crit_hit_rgb_ru = iu_actit("критическом ударе", crt_col)
			local Crit_hit_chance_rgb_ru = iu_actit("критический удар", crt_col)
			local Crit_hits_rgb_ru = iu_actit("критическими ударами", crt_col)
			local Crit_hit_e_rgb_ru = iu_actit("критическом ударе", crt_col)
			local Crit_rgb_ru = iu_actit("критическому", crt_col)
			local Crit_ih_rgb_ru = iu_actit("критических", crt_col)
			local Crit0_rgb_ru = iu_actit("критические удары", crt_col)
			local Crit_dmg_r_rgb_ru = iu_actit("критический урон", crt_col)
			local Crit_dmg_u_rgb_ru = iu_actit("критическому урону", crt_col)
			local Crit_chance_r_rgb_ru = iu_actit("критическом выстреле", crt_col)
			local Crit_hit_color_rgb_ru = iu_actit("урону критического удара", crt_col)
			local Crit_shot_color_rgb_ru = iu_actit("урону критического выстрела", crt_col)
			local Crit_hit_om_rgb_ru = iu_actit("критическим выстрелом", crt_col)
			local Crit_hit_udom_rgb_ru = iu_actit("критическим ударом", crt_col)
	--[++Пробивание++]--
		local rend_col = Color[mod:get("rending_text_colour")](255, true)
			local Rending_rgb_ru = iu_actit("пробиванию брони", rend_col)
	--[++Равновесие++]--
		local imp_col = Color[mod:get("impact_text_colour")](255, true)
			Impact_rgb_ru = iu_actit("выведению из равновесия", imp_col) -- Силе Удара?
	--[++Рассечение++]--
		local clv_col = Color[mod:get("cleave_text_colour")](255, true)
			local Cleave_rgb_ru = iu_actit("рассечению врагов", clv_col)
			local Cleaving_rgb_ru = iu_actit("рассечение врагов", clv_col)
			local Cleaving_r_rgb_ru = iu_actit("пробивание врагов", clv_col)
			local Cleaving_u_rgb_ru = iu_actit("пробиванию врагов", clv_col)
	--[++Сила++]--
		local pwr_col = Color[mod:get("power_text_colour")](255, true)
			local Power_rgb_ru = iu_actit("сила", pwr_col)
			local Strength_rgb_ru = iu_actit("силе", pwr_col)
	--[++Точность++]--
		local fns_col = Color[mod:get("finesse_text_colour")](255, true)
			local Finesse_rgb_ru = iu_actit("ловкости", fns_col)
			local Finesse_dmg_rgb_ru = iu_actit("урону от ловкости", fns_col)
	--[++Ударная масса++]--
		local htms_col = Color[mod:get("hit_mass_text_colour")](255, true)
			local Hit_mass_rgb_ru = iu_actit("ударную массу", htms_col)
			local Hit_masss_rgb_ru = iu_actit("ударной массы", htms_col)
	--[++Урон++]--
		local dmg_col = Color[mod:get("damage_text_colour")](255, true)
			local Dmg_rgb_ru = iu_actit("урон", dmg_col)
			local Dmg_a_rgb_ru = iu_actit("урона", dmg_col)
			local Damage_rgb_ru = iu_actit("урону", dmg_col)
			local Damagewrp_rgb_ru = iu_actit("варп-урону", dmg_col)
			local Damagewrp_a_rgb_ru = iu_actit("варп-урона", dmg_col)
	--[++Уязвимое место++]--
		local wksp_col = Color[mod:get("weakspot_text_colour")](255, true)
			local Weakspot_rgb_ru = iu_actit("уязвимые места", wksp_col)
			local Weakspothit_rgb_ru = iu_actit("уязвимое место", wksp_col)
			local Weakspothits_rgb_ru = iu_actit("уязвимые места", wksp_col)
			local Weakspot_dmg_rgb_ru = iu_actit("урону по уязвимым местам", wksp_col)
			local Weakspotv_dmg_rgb_ru = iu_actit("урон в уязвимые места", wksp_col)
--[+++ДЕБАФФЫ+++]--
	--[++Горение++]--
		local brn_col = Color[mod:get("burn_text_colour")](255, true)
			local Burn_rgb_ru = iu_actit("горения", brn_col)
			local Burning_rgb_ru = iu_actit("горящих", brn_col)
			local Burnd_rgb_ru = iu_actit("поджигает", brn_col)
			local Heat_rgb_ru = iu_actit("перегрева", brn_col)
			local Heat2_rgb_ru = iu_actit("перегреве", brn_col)
	--[++Горение души++]--
		local slblz_col = Color[mod:get("soulblaze_text_colour")](255, true)
			local Soulblaze_rgb_ru = iu_actit("горения души", slblz_col)
	--[++Кровотечение++]--
		local bld_col = Color[mod:get("bleed_text_colour")](255, true)
			local Bleed_rgb_ru = iu_actit("кровотечения", bld_col)
			local Bleeding_rgb_ru = iu_actit("кровотечение", bld_col)
	--[++Ошеломление++]--
		local stgr_col = Color[mod:get("stagger_text_colour")](255, true)
			local Stagger_rgb_ru = iu_actit("ошеломление", stgr_col)
			local Stagger_i_rgb_ru = iu_actit("ошеломлении", stgr_col)
			local Stagger2_rgb_ru = iu_actit("ошеломлению", stgr_col)
			local Staggered_rgb_ru = iu_actit("ошеломлённых", stgr_col)
			local Staggering_rgb_ru = iu_actit("ошеломления", stgr_col)
			local Staggern_rgb_ru = iu_actit("ошеломляя", stgr_col)
			local Staggernt_rgb_ru = iu_actit("ошеломить", stgr_col)
			local Staggerr_rgb_ru = iu_actit("Ошеломление", stgr_col)
			local Staggers_rgb_ru = iu_actit("ошеломляют", stgr_col)
			local Staggers_e_rgb_ru = iu_actit("ошеломляет", stgr_col)
			local Stun_rgb_ru = iu_actit("ошеломлённого", stgr_col)
			local Stunned_rgb_ru = iu_actit("ошеломлена", stgr_col)
			local Stuns_rgb_ru = iu_actit("ошеломлённым", stgr_col)
			local Stunss_rgb_ru = iu_actit("Ошеломляющие", stgr_col)
			local Stunssx_rgb_ru = iu_actit("Ошеломлённые", stgr_col)
	--[++Порча++]--
		local crpt_col = Color[mod:get("corruption_text_colour")](255, true)
			local Corruption_rgb_ru = iu_actit("порче", crpt_col)
			local Corruption_i_rgb_ru = iu_actit("порчи", crpt_col)
			local Corruption_a_rgb_ru = iu_actit("порча", crpt_col)
			local Corruptdmg_rgb_ru = iu_actit("урон от порчи", crpt_col)
	--[++Поражение током++]--
		local electr_col = Color[mod:get("electrocuted_text_colour")](255, true)
			local Electrocute_rgb_ru = iu_actit("электрошок", electr_col)
			local Electrocution_rgb_ru = iu_actit("электрошока", electr_col)
			local Electrocuted_rgb_ru = iu_actit("электрошоком", electr_col)
			local Electrocutes_rgb_ru = iu_actit("Electrocutes", electr_col)
			local Electrcuting_rgb_ru = iu_actit("Electrocuting", electr_col)
	--[++Хрупкость++]--
		local brtl_col = Color[mod:get("brittleness_text_colour")](255, true)
			local Brittleness_rgb_ru = iu_actit("хрупкости брони", brtl_col)

--[+++ПСАЙКЕР+++]--
	--[++Точность++]--
		local prcsn_col = Color[mod:get("precision_text_colour")](255, true)
			local Precision_rgb_ru = iu_actit("меткости", prcsn_col)

--[+++ОГРИН+++]--
	--[++Неболит++]--
		local fnp_col = Color[mod:get("fnp_text_colour")](255, true)
			local Feel_no_pain_rgb_ru = iu_actit("Неболита", fnp_col)
	--[++Счастливая пуля++]--
		local luckyb_col = Color[mod:get("luckyb_text_colour")](255, true)
			local Lucky_bullet_rgb_ru = iu_actit("Счастливую пулю", luckyb_col)
	--[+Топот+]--
		local trample_col = Color[mod:get("trample_text_colour")](255, true)
			local Trample_rgb_ru = iu_actit("Топота", trample_col)

--[+++ИЗУВЕР+++]--
	--[++Моментум++]--
		local moment_col = Color[mod:get("momentum_text_colour")](255, true)
			local Momentum_rgb_ru = iu_actit("Моментума", moment_col)
	--[++Скрытность++]--
		local stlth_col = Color[mod:get("stealth_text_colour")](255, true)
			local Stealth_rgb_ru = iu_actit("Скрытности", stlth_col)
	--[++Ярость++]--
		local fury_col = Color[mod:get("fury_text_colour")](255, true)
			local Fury_rgb_ru = iu_actit("Ярость", fury_col)
			local Fury_i_rgb_ru = iu_actit("Ярости", fury_col)

--[+++ВЕТЕРАН+++]--
	--[++Важная цель++]--
		local focust_col = Color[mod:get("focust_text_colour")](255, true)
			local Focus_Target_rgb_ru = iu_actit("Важной цели", focust_col)
	--[++Концентрация++]--
		local focus_col = Color[mod:get("focus_text_colour")](255, true)
			local Focus_rgb_ru = iu_actit("Концентрации", focus_col)
	--[++Специалист-рукопашник++]--
		local meleespec_col = Color[mod:get("meleespec_text_colour")](255, true)
			local Meleespec_rgb_ru = iu_actit("Специалиста-рукопашника", meleespec_col)
	--[++Специалист-стрелок++]--
		local rangedspec_col = Color[mod:get("rangedspec_text_colour")](255, true)
			local Rangedspec_rgb_ru = iu_actit("Специалиста-стрелка", rangedspec_col)

--[+++АРБИТРАТОР+++]--
	--[++Melee Justice++]--
		local meleejust_col = Color[mod:get("meleejust_text_colour")](255, true) -- Do not translate this line!
			local Meleejust_rgb_ru = iu_actit("Судьи-рукопашника", meleejust_col)
	--[++Ranged Justice++]--
		local rangedjust_col = Color[mod:get("rangedjust_text_colour")](255, true) -- Do not translate this line!
			local Rangedjust_rgb_ru = iu_actit("Судьи-стрелка", rangedjust_col)
	--[++Marked Enemy++]--
			local Markedenemy_rgb_ru = iu_actit("Отмеченного врага", focust_col)
	--[++Forceful++]--
			local Forceful_rgb_ru = iu_actit("Неудержимости", focus_col)

--[+++РАЗНОЕ+++]--
	--[++Примечания++]--
		local note_col = Color[mod:get("note_text_colour")](255, true)
			local Fns_note_rgb_ru = iu_actit(" Ловкость повышает критический урон и урон по уязвимым местам.", note_col)
			local Pwr_note_rgb_ru = iu_actit(" Сила повышает урон, ошеломление и рассечение врагов.", note_col)
			local Rend_note_rgb_ru = iu_actit(" Пробивание брони повышает ваш урон.", note_col)
			local Brtl_note_rgb_ru = iu_actit(" Хрупкость брони понижает защиту брони врага.", note_col)
			local Hit_Mass_note_rgb_ru = iu_actit(" Игнорирование ударной массы позволяет пробивать больше врагов.", note_col)
			local Trauma_note_rgb_ru = iu_actit("", note_col)
			local Fire_n_trap_note_rgb_ru = iu_actit("", note_col)
	--[+ Talents - Таланты+]--
		local tal_col = Color[mod:get("talents_text_colour")](255, true)
			local Arbites_gren_rgb_ru = iu_actit("Гранату арбитрес", tal_col)
			local Scriers_gaze_rgb_ru = iu_actit("Взор провидца", tal_col)
			local Stun_gren_rgb_ru = iu_actit("Оглушающая граната", tal_col)
			local Frag_gren_rgb_ru = iu_actit("Фраг-гранату", tal_col)
			local Fragmentation_gren_rgb_ru = iu_actit("Осколочная граната", tal_col)
			local Electro_mine_rgb_ru = iu_actit("Вольтаическую шоковую мину", tal_col)
			local BreakZLined_rgb_ru = iu_actit("Прорыв вражеского строя", tal_col)
			local BreakZLine_rgb_ru = iu_actit("Прорыва вражеского строя", tal_col)

--[+ ++TREAT - СЛОЖНОСТЬ++ +]--
	--[+ SEDITION - МЯТЕЖ +]--
		local sed_col = Color[mod:get("sedition_text_colour")](255, true)
			local sedition_rgb_ru = iu_actit("Мятеж", sed_col)
	--[+ UPRISING - ВОССТАНИЕ +]--
		local upr_col = Color[mod:get("uprising_text_colour")](255, true)
			local uprising_rgb_ru = iu_actit("Восстание", upr_col)
	--[+ MALICE - ЗЛОБА +]--
		local mal_col = Color[mod:get("malice_text_colour")](255, true)
			local malice_rgb_ru = iu_actit("Злоба", mal_col)
	--[+ HERESY - ЕРЕСЬ +]--
		local her_col = Color[mod:get("heresy_text_colour")](255, true)
			local heresy_rgb_ru = iu_actit("Ересь", her_col)
	--[+ DAMNATION - ПРОКЛЯТИЕ +]--
		local dam_col = Color[mod:get("damnation_text_colour")](255, true)
			local damnation_rgb_ru = iu_actit("Проклятие", dam_col)
	--[+ AURIC - ЗОЛОТО +]--
		local auric_col = Color[mod:get("auric_text_colour")](255, true) -- Do not translate this line!
			local auric_rgb = iu_actit("Auric", auric_col)

--[+ ++VETERAN - ВЕТЕРАН++ +]--
		local cls_vet_col = Color[mod:get("class_veteran_text_colour")](255, true)
			local cls_vet_rgb_ru = iu_actit("Ветеран", cls_vet_col)
			local cls_vet2_rgb_ru = iu_actit("Ветераном", cls_vet_col)

--[+ ++ZEALOT - Изувер++ +]--
		local cls_zea_col = Color[mod:get("class_zealot_text_colour")](255, true)
			local cls_zea_rgb_ru = iu_actit("Изувер", cls_zea_col)
			local cls_zea2_rgb_ru = iu_actit("Изувером", cls_zea_col)

--[+ ++PSYKER - ПСАЙКЕР++ +]--
		local cls_psy_col = Color[mod:get("class_psyker_text_colour")](255, true)
			local cls_psy_rgb_ru = iu_actit("Псайкер", cls_psy_col)
			local cls_psy2_rgb_ru = iu_actit("Псайкером", cls_psy_col)

--[+ ++OGRYN - ОГРИН++ +]--
		local cls_ogr_col = Color[mod:get("class_ogryn_text_colour")](255, true)
			local cls_ogr_rgb_ru = iu_actit("Огрин", cls_ogr_col)
			local cls_ogr2_rgb_ru = iu_actit("Огрином", cls_ogr_col)


return {
	Arbites_gren_rgb_ru = Arbites_gren_rgb_ru,
	BreakZLine_rgb_ru = BreakZLine_rgb_ru,
	BreakZLined_rgb_ru = BreakZLined_rgb_ru,
	Electro_mine_rgb_ru = Electro_mine_rgb_ru,
	Forceful_rgb_ru = Forceful_rgb_ru,
	Frag_gren_rgb_ru = Frag_gren_rgb_ru,
	Fragmentation_gren_rgb_ru = Fragmentation_gren_rgb_ru,
	Scriers_gaze_rgb_ru = Scriers_gaze_rgb_ru,
	Stun_gren_rgb_ru = Stun_gren_rgb_ru,

	Bleed_rgb_ru = Bleed_rgb_ru,
	Bleeding_rgb_ru = Bleeding_rgb_ru,
	Brittleness_rgb_ru = Brittleness_rgb_ru,
	Burn_rgb_ru = Burn_rgb_ru,
	Burning_rgb_ru = Burning_rgb_ru,
	Burnd_rgb_ru = Burnd_rgb_ru,
	Heat_rgb_ru = Heat_rgb_ru,
	Heat2_rgb_ru = Heat2_rgb_ru,
	Ability_cd_rgb_ru = Ability_cd_rgb_ru,
	Cd_rgb_ru = Cd_rgb_ru,
	Combat_abil_rgb_ru = Combat_abil_rgb_ru,
	Combat_ability_rgb_ru = Combat_ability_rgb_ru,
	Combat_ability_cd_rgb_ru = Combat_ability_cd_rgb_ru,
	Corruption_rgb_ru = Corruption_rgb_ru,
	Corruption_i_rgb_ru = Corruption_i_rgb_ru,
	Corruption_a_rgb_ru = Corruption_a_rgb_ru,
	Corruptdmg_rgb_ru = Corruptdmg_rgb_ru,
	Cleave_rgb_ru = Cleave_rgb_ru,
	Cleaving_rgb_ru = Cleaving_rgb_ru,
	Cleaving_r_rgb_ru = Cleaving_r_rgb_ru,
	Cleaving_u_rgb_ru = Cleaving_u_rgb_ru,
	Crt_chance_rgb_ru = Crt_chance_rgb_ru,
	Crt_u_chance_rgb_ru = Crt_u_chance_rgb_ru,
	Crit_chance_rgb_ru = Crit_chance_rgb_ru,
	Crit_hit_rgb_ru = Crit_hit_rgb_ru,
	Crit_hit_chance_rgb_ru = Crit_hit_chance_rgb_ru,
	Crit_hits_rgb_ru = Crit_hits_rgb_ru,
	Crit_hit_e_rgb_ru = Crit_hit_e_rgb_ru,
	Crit_rgb_ru = Crit_rgb_ru,
	Crit_ih_rgb_ru = Crit_ih_rgb_ru,
	Crit0_rgb_ru = Crit0_rgb_ru,
	Crit_dmg_r_rgb_ru = Crit_dmg_r_rgb_ru,
	Crit_dmg_u_rgb_ru = Crit_dmg_u_rgb_ru,
	Crit_chance_r_rgb_ru = Crit_chance_r_rgb_ru,
	Crit_hit_color_rgb_ru = Crit_hit_color_rgb_ru,
	Crit_shot_color_rgb_ru = Crit_shot_color_rgb_ru,
	Crit_hit_om_rgb_ru = Crit_hit_om_rgb_ru,
	Crit_hit_udom_rgb_ru = Crit_hit_udom_rgb_ru,
	Dmg_rgb_ru = Dmg_rgb_ru,
	Dmg_a_rgb_ru = Dmg_a_rgb_ru,
	Damage_rgb_ru = Damage_rgb_ru,
	Damagewrp_rgb_ru = Damagewrp_rgb_ru,
	Damagewrp_a_rgb_ru = Damagewrp_a_rgb_ru,
	Electrocute_rgb_ru = Electrocute_rgb_ru,
	Electrocution_rgb_ru = Electrocution_rgb_ru,
	Electrocuted_rgb_ru = Electrocuted_rgb_ru,
	Electrocutes_rgb_ru = Electrocutes_rgb_ru,
	Electrcuting_rgb_ru = Electrcuting_rgb_ru,
	Feel_no_pain_rgb_ru = Feel_no_pain_rgb_ru,
	Finesse_rgb_ru = Finesse_rgb_ru,
	Finesse_dmg_rgb_ru = Finesse_dmg_rgb_ru,
	Focus_rgb_ru = Focus_rgb_ru,
	Focus_Target_rgb_ru = Focus_Target_rgb_ru,
	Fury_rgb_ru = Fury_rgb_ru,
	Fury_i_rgb_ru = Fury_i_rgb_ru,
	Health_rgb_ru = Health_rgb_ru,
	Healthx_rgb_ru = Healthx_rgb_ru,
	Wound_rgb_ru = Wound_rgb_ru,
	Wounds_rgb_ru = Wounds_rgb_ru,
	Wound_u_rgb_ru = Wound_u_rgb_ru,
	Wound_y_rgb_ru = Wound_y_rgb_ru,
	Hit_mass_rgb_ru = Hit_mass_rgb_ru,
	Hit_masss_rgb_ru = Hit_masss_rgb_ru,
	Impact_rgb_ru = Impact_rgb_ru,
	Lucky_bullet_rgb_ru = Lucky_bullet_rgb_ru,
	Markedenemy_rgb_ru = Markedenemy_rgb_ru,
	Meleejust_rgb_ru = Meleejust_rgb_ru,
	Rangedjust_rgb_ru = Rangedjust_rgb_ru,
	Meleespec_rgb_ru = Meleespec_rgb_ru,
	Momentum_rgb_ru = Momentum_rgb_ru,
	Perl_rgb_ru = Perl_rgb_ru,
	Peril_rgb_ru = Peril_rgb_ru,
	Perils_rgb_ru = Perils_rgb_ru,
	Power_rgb_ru = Power_rgb_ru,
	Precision_rgb_ru = Precision_rgb_ru,
	Rangedspec_rgb_ru = Rangedspec_rgb_ru,
	Rending_rgb_ru = Rending_rgb_ru,
	Soulblaze_rgb_ru = Soulblaze_rgb_ru,
	Stagger_rgb_ru = Stagger_rgb_ru,
	Stagger2_rgb_ru = Stagger2_rgb_ru,
	Staggering_rgb_ru = Staggering_rgb_ru,
	Stagger_i_rgb_ru = Stagger_i_rgb_ru,
	Staggers_rgb_ru = Staggers_rgb_ru,
	Staggers_e_rgb_ru = Staggers_e_rgb_ru,
	Stun_rgb_ru = Stun_rgb_ru,
	Stuns_rgb_ru = Stuns_rgb_ru,
	Stunss_rgb_ru = Stunss_rgb_ru,
	Stunssx_rgb_ru = Stunssx_rgb_ru,
	Stunned_rgb_ru = Stunned_rgb_ru,
	Staggered_rgb_ru = Staggered_rgb_ru,
	Staggerr_rgb_ru = Staggerr_rgb_ru,
	Staggern_rgb_ru = Staggern_rgb_ru,
	Staggernt_rgb_ru = Staggernt_rgb_ru,
	Stamina_rgb_ru = Stamina_rgb_ru,
	Stamina_c_r_rgb_ru = Stamina_c_r_rgb_ru,
	Stealth_rgb_ru = Stealth_rgb_ru,
	Strength_rgb_ru = Strength_rgb_ru,
	Tghnss_rgb_ru = Tghnss_rgb_ru,
	Toughness_rgb_ru = Toughness_rgb_ru,
	Toughness_dmg_red_rgb_ru = Toughness_dmg_red_rgb_ru,
	Toughness_dmg_red_u_rgb_ru = Toughness_dmg_red_u_rgb_ru,
	Toughness_dmg_rgb_ru = Toughness_dmg_rgb_ru,
	Coherency_rgb_ru = Coherency_rgb_ru,
	Trample_rgb_ru = Trample_rgb_ru,
	Weakspot_rgb_ru = Weakspot_rgb_ru,
	Weakspothit_rgb_ru = Weakspothit_rgb_ru,
	Weakspothits_rgb_ru = Weakspothits_rgb_ru,
	Weakspot_dmg_rgb_ru = Weakspot_dmg_rgb_ru,
	Weakspotv_dmg_rgb_ru = Weakspotv_dmg_rgb_ru,

	Trauma_note_rgb_ru = Trauma_note_rgb_ru,
	Fns_note_rgb_ru = Fns_note_rgb_ru,
	Pwr_note_rgb_ru = Pwr_note_rgb_ru,
	Rend_note_rgb_ru = Rend_note_rgb_ru,
	Brtl_note_rgb_ru = Brtl_note_rgb_ru,
	Hit_Mass_note_rgb_ru = Hit_Mass_note_rgb_ru,
	Fire_n_trap_note_rgb_ru = Fire_n_trap_note_rgb_ru,

	sedition_rgb_ru = sedition_rgb_ru,
	uprising_rgb_ru = uprising_rgb_ru,
	malice_rgb_ru = malice_rgb_ru,
	heresy_rgb_ru = heresy_rgb_ru,
	damnation_rgb_ru = damnation_rgb_ru,

	cls_vet_rgb_ru = cls_vet_rgb_ru,
	cls_vet2_rgb_ru = cls_vet2_rgb_ru,
	cls_zea_rgb_ru = cls_zea_rgb_ru,
	cls_zea2_rgb_ru = cls_zea2_rgb_ru,
	cls_psy_rgb_ru = cls_psy_rgb_ru,
	cls_psy2_rgb_ru = cls_psy2_rgb_ru,
	cls_ogr_rgb_ru = cls_ogr_rgb_ru,
	cls_ogr2_rgb_ru = cls_ogr2_rgb_ru,
}
