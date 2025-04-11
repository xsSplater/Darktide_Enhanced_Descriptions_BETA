---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

--[+ TALENTS +]--
	--[+ ++VETERAN++ +]--
	local tal_col = Color[mod:get("talents_penances_text_colour")](255, true)
	local volley_fire_rgb = iu_actit("Volley Fire", tal_col)
	local snipcon_rgb = iu_actit("Marksman's Focus", tal_col)
	local executioner_stance_rgb = iu_actit("Executioner's Stance", tal_col)
	local krak_gr_rgb = iu_actit("Krak Grenade", tal_col)
	local frag_gr_rgb = iu_actit("Frag Grenade", tal_col)
	local smok_gr_rgb = iu_actit("Smoke Grenade", tal_col)
	local fcs_trg_rgb = iu_actit("Focus Target!", tal_col)
	local scavenger_rgb = iu_actit("Scavenger", tal_col)
	local voiceoc_rgb = iu_actit("Voice of Command", tal_col)
	local firetim_rgb = iu_actit("Fire Team", tal_col)
	local infiltr_rgb = iu_actit("Infiltrate", tal_col)
	local closenkill_rgb = iu_actit("Close and Kill", tal_col)
	local weapspec_rgb = iu_actit("Weapons Specialist", tal_col)
	local survivalist_rgb = iu_actit("Survivalist", tal_col)

		--[+ ++ZEALOT - ИЗУВЕР++ +]--
	local shock_gren0_rgb = iu_actit("Stunstorm Grenade", tal_col)
	local shock_gren_rgb = iu_actit("Stunstorm Grenade", tal_col) -- -- -- -- -- -- -
	local fire_gren_rgb = iu_actit("Immolation Grenade", tal_col)
	local shock_gren1_rgb = iu_actit("Stun Grenade", tal_col)
	local shock_gren2_rgb = iu_actit("Stun Grenade", tal_col) -- -- -- -- -- -- -- --
	local chastise_wicked_rgb = iu_actit("Chastise the Wicked", tal_col)
	local chastise_wicked2_rgb = iu_actit("Chastise the Wicked", tal_col) -- -- -- --
	local fury_faithful_rgb = iu_actit("Fury of the Faithful", tal_col)
	local martydom_rgb = iu_actit("Martyrdom", tal_col)
	local holy_revenant_rgb = iu_actit("Holy Revenant", tal_col)
	local chorusosf_rgb = iu_actit("Chorus of Spiritual Fortitude", tal_col)
	local beaconop_rgb = iu_actit("Beacon of Purity", tal_col)
	local klinvery_rgb = iu_actit("Blades of Faith", tal_col)
	local shroudf_rgb = iu_actit("Shroudfield", tal_col)
	local benedict_rgb = iu_actit("Benediction", tal_col)
	local loner_rgb = iu_actit("Loner", tal_col)
	local fanrage_rgb = iu_actit("Fury", tal_col)
	local momentum_rgb = iu_actit("Momentum", tal_col)
	local inexor_rgb = iu_actit("Inexorable Judgement", tal_col)
	local blazingp_rgb = iu_actit("Blazing Piety", tal_col)
	
		--[+ ++PSYKER - ПСАЙКЕР++ +]--
	local bburst_rgb = iu_actit("Brain Burst", tal_col)
	local bburst0_rgb = iu_actit("Brain Burst", tal_col) -- -- -- -- -- -- -- -- -- -
	local bburst1_rgb = iu_actit("Brain Rupture", tal_col)
	local bburst2_rgb = iu_actit("Brain Rupture", tal_col) -- -- -- -- -- -- -- -- --
	local smite_rgb = iu_actit("Smite", tal_col)
	local disrdest_rgb = iu_actit("Disrupt Destiny", tal_col)
	local psy_wrath_rgb = iu_actit("Psykinetic's Wrath", tal_col)
	local psy_wrath2_rgb = iu_actit("Venting Shriek", tal_col)
	local telekshii_rgb = iu_actit("Telekine Shield", tal_col)
	local empsionics_rgb = iu_actit("Empowered Psionics", tal_col)
	local assail_rgb = iu_actit("Assail", tal_col)
	local scriersgaze_rgb = iu_actit("Scrier's Gaze", tal_col)
	local kinetpres_rgb = iu_actit("Kinetic Presence", tal_col)
	local prescience_rgb = iu_actit("Prescience", tal_col)
	local seerspres_rgb = iu_actit("Seer's Presence", tal_col)

		--[+ ++OGRYN - ОГРИН++ +]--
	local bull_rush_rgb = iu_actit("Bull Rush", tal_col)
	local bull_rush2_rgb = iu_actit("Bull Rush", tal_col) -- -- -- -- -- -- -- -- --
	local bull_rush3_rgb = iu_actit("Bull Rush", tal_col) -- -- -- -- -- -- -- -- --
	local bull_rush4_rgb = iu_actit("Indomitable", tal_col)
	local big_box_rgb = iu_actit("Big Box of Hurt", tal_col)
	local big_box2_rgb = iu_actit("Bombs Away!", tal_col)
	local burstlimo_rgb = iu_actit("Burst Limiter Override", tal_col)
	local stayclose_rgb = iu_actit("Stay Close!", tal_col)
	local loyalprot_rgb = iu_actit("Loyal Protector", tal_col)
	local feelnop_rgb = iu_actit("Feel No Pain", tal_col)
	local bonebraura_rgb = iu_actit("Bonebreaker's Aura", tal_col)
	local cowculaura_rgb = iu_actit("Coward Culling", tal_col)
	local heavyhitter_rgb = iu_actit("Heavy Hitter", tal_col)
	local bigfriendro_rgb = iu_actit("Big Friendly Rock", tal_col)
	local fragbomb_rgb = iu_actit("Frag Bomb", tal_col)
	local pbbarrage_rgb = iu_actit("Point-Blank Barrage", tal_col)

		--[+ +Разные ключевые слова+ +]--
	local tal_col = Color[mod:get("talents_text_colour")](255, true)
	local Prologue_p_rgb = iu_actit("Prologue", tal_col)
	local Curio_p_rgb = iu_actit("Curio", tal_col)
	local Base_tut_p_rgb = iu_actit("Basic Training", tal_col)
	local Sir_melk_p_rgb = iu_actit("Sire Melk's Requisitorium", tal_col)
	local Omnissia_p_rgb = iu_actit("Shrine of the Omnissiah", tal_col)

return {
	Prologue_p_rgb = Prologue_p_rgb,
	Curio_p_rgb = Curio_p_rgb,
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
