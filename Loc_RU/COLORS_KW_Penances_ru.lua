---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

--[+ TALENTS - ТАЛАНТЫ +]--
	--[+ ++VETERAN - ВЕТЕРАН++ +]--
	local tal_p_col = Color[mod:get("talents_penances_text_colour")](255, true)
	local volley_fire_rgb_ru = iu_actit("Залповый огонь", tal_p_col)
	local snipcon_rgb_ru = iu_actit("Концентрация снайпера", tal_p_col)
	local executioner_stance_rgb_ru = iu_actit("Стойка палача", tal_p_col)
	local krak_gr_rgb_ru = iu_actit("Крак-гранату", tal_p_col)
	local frag_gr_rgb_ru = iu_actit("Фраг-гранаты", tal_p_col)
	local smok_gr_rgb_ru = iu_actit("Дымовой гранаты", tal_p_col)
	local fcs_trg_rgb_ru = iu_actit("Важная цель!", tal_p_col)
	local scavenger_rgb_ru = iu_actit("Сборщик", tal_p_col)
	local voiceoc_rgb_ru = iu_actit("Командный голос", tal_p_col)
	local firetim_rgb_ru = iu_actit("Огневая группа", tal_p_col)
	local infiltr_rgb_ru = iu_actit("Проникновение", tal_p_col)
	local closenkill_rgb_ru = iu_actit("Приблизиться и убить", tal_p_col)
	local weapspec_rgb_ru = iu_actit("Специалист по оружию", tal_p_col)
	local survivalist_rgb_ru = iu_actit("Выживальщик", tal_p_col)

		--[+ ++ZEALOT - ИЗУВЕР++ +]--
	local shock_gren0_rgb_ru = iu_actit("Оглушающе-штурмовую гранату", tal_p_col)
	-- local shock_gren_rgb_ru = iu_actit("Оглушающе-штурмовой гранаты", tal_p_col)
	local fire_gren_rgb_ru = iu_actit("Огненной гранаты", tal_p_col)
	local shock_gren1_rgb_ru = iu_actit("Оглушающую гранату", tal_p_col)
	-- local shock_gren2_rgb_ru = iu_actit("Оглушающие гранаты", tal_p_col)
	local chastise_wicked_rgb_ru = iu_actit("Кара для нечестивых", tal_p_col)
	-- local chastise_wicked2_rgb_ru = iu_actit("Кары для нечестивых", tal_p_col)
	local fury_faithful_rgb_ru = iu_actit("Ярость верующего", tal_p_col)
	local martydom_rgb_ru = iu_actit("Мученичества", tal_p_col)
	local holy_revenant_rgb_ru = iu_actit("Святой призрак", tal_p_col)
	local chorusosf_rgb_ru = iu_actit("Хор духовной стойкости", tal_p_col)
	local beaconop_rgb_ru = iu_actit("Маяк очищения", tal_p_col)
	local klinvery_rgb_ru = iu_actit("Клинки веры", tal_p_col)
	local shroudf_rgb_ru = iu_actit("Покров", tal_p_col)
	local benedict_rgb_ru = iu_actit("Благословение", tal_p_col)
	local loner_rgb_ru = iu_actit("Единоличник", tal_p_col)
	local fanrage_rgb_ru = iu_actit("Ярость", tal_p_col)
	local momentum_rgb_ru = iu_actit("Моментума", tal_p_col)
	local inexor_rgb_ru = iu_actit("Неумолимый приговор", tal_p_col)
	local blazingp_rgb_ru = iu_actit("Пылающая благочестивость", tal_p_col)

		--[+ ++PSYKER - ПСАЙКЕР++ +]--
	local bburst_rgb_ru = iu_actit("Взрыва мозга", tal_p_col)
	local bburst0_rgb_ru = iu_actit("Взрыв мозга", tal_p_col)
	local bburst1_rgb_ru = iu_actit("Разрыв мозга", tal_p_col)
	local bburst2_rgb_ru = iu_actit("Разрыва мозга", tal_p_col)
	local smite_rgb_ru = iu_actit("Сокрушение", tal_p_col)
	local disrdest_rgb_ru = iu_actit("Прерывание судьбы", tal_p_col)
	local psy_wrath_rgb_ru = iu_actit("Гнев психокинетика", tal_p_col)
	local psy_wrath2_rgb_ru = iu_actit("Сбрасывающий вопль", tal_p_col)
	local telekshii_rgb_ru = iu_actit("Телекинетический щит", tal_p_col)
	local empsionics_rgb_ru = iu_actit("Усиленные псионики", tal_p_col)
	local assail_rgb_ru = iu_actit("Нападение", tal_p_col)
	local scriersgaze_rgb_ru = iu_actit("Взор провидца", tal_p_col)
	local kinetpres_rgb_ru = iu_actit("Кинетическое присутствие", tal_p_col)
	local prescience_rgb_ru = iu_actit("Предвидение", tal_p_col)
	local seerspres_rgb_ru = iu_actit("Присутствие провидца", tal_p_col)

		--[+ ++OGRYN - ОГРИН++ +]--
	local bull_rush_rgb_ru = iu_actit("Рывок быка", tal_p_col)
	local bull_rush2_rgb_ru = iu_actit("Рывком быка", tal_p_col)
	local bull_rush3_rgb_ru = iu_actit("Рывка быка", tal_p_col)
	local bull_rush4_rgb_ru = iu_actit("Неукротимый", tal_p_col)
	local big_box_rgb_ru = iu_actit("Большая коробка боли", tal_p_col)
	local big_box2_rgb_ru = iu_actit("Бросай бомбы!", tal_p_col)
	local burstlimo_rgb_ru = iu_actit("Обход ограничителя очереди", tal_p_col)
	local stayclose_rgb_ru = iu_actit("Держись рядом!", tal_p_col)
	local loyalprot_rgb_ru = iu_actit("Верный защитник", tal_p_col)
	local feelnop_rgb_ru = iu_actit("Неболит", tal_p_col)
	local bonebraura_rgb_ru = iu_actit("Аура костолома", tal_p_col)
	local cowculaura_rgb_ru = iu_actit("Отсев трусливых", tal_p_col)
	local heavyhitter_rgb_ru = iu_actit("Тяжеловес", tal_p_col)
	local bigfriendro_rgb_ru = iu_actit("Большой дружелюбный валун", tal_p_col)
	local fragbomb_rgb_ru = iu_actit("Фраг-бомба", tal_p_col)
	local pbbarrage_rgb_ru = iu_actit("Беспощадный обстрел в упор", tal_p_col)

		--[+ ++Разные ключевые слова++ +]--
	local tal_col = Color[mod:get("talents_text_colour")](255, true)
	local Prolog_p_rgb_ru = iu_actit("Пролог", tal_col)
	local Curio_p_rgb_ru = iu_actit("Реликвий", tal_col)
	local Base_tut_p_rgb_ru = iu_actit("Базовое обучение", tal_col)
	local Sir_melk_p_rgb_ru = iu_actit("Реквизиториум сира Мелка", tal_col)
	local Omnissia_p_rgb_ru = iu_actit("Святилище Омниссии", tal_col)

return {
	Prolog_p_rgb_ru = Prolog_p_rgb_ru,
	Curio_p_rgb_ru = Curio_p_rgb_ru,
	Base_tut_p_rgb_ru = Base_tut_p_rgb_ru,
	Sir_melk_p_rgb_ru = Sir_melk_p_rgb_ru,
	Omnissia_p_rgb_ru = Omnissia_p_rgb_ru,

	volley_fire_rgb_ru = volley_fire_rgb_ru,
	snipcon_rgb_ru = snipcon_rgb_ru,
	executioner_stance_rgb_ru = executioner_stance_rgb_ru,
	krak_gr_rgb_ru = krak_gr_rgb_ru,
	frag_gr_rgb_ru = frag_gr_rgb_ru,
	smok_gr_rgb_ru = smok_gr_rgb_ru,
	fcs_trg_rgb_ru = fcs_trg_rgb_ru,
	scavenger_rgb_ru = scavenger_rgb_ru,
	voiceoc_rgb_ru = voiceoc_rgb_ru,
	firetim_rgb_ru = firetim_rgb_ru,
	infiltr_rgb_ru = infiltr_rgb_ru,
	closenkill_rgb_ru = closenkill_rgb_ru,
	weapspec_rgb_ru = weapspec_rgb_ru,
	survivalist_rgb_ru = survivalist_rgb_ru,

	shock_gren0_rgb_ru = shock_gren0_rgb_ru,
	shock_gren_rgb_ru = shock_gren_rgb_ru,
	fire_gren_rgb_ru = fire_gren_rgb_ru,
	shock_gren1_rgb_ru = shock_gren1_rgb_ru,
	shock_gren2_rgb_ru = shock_gren2_rgb_ru,
	chastise_wicked_rgb_ru = chastise_wicked_rgb_ru,
	chastise_wicked2_rgb_ru = chastise_wicked2_rgb_ru,
	fury_faithful_rgb_ru = fury_faithful_rgb_ru,
	martydom_rgb_ru = martydom_rgb_ru,
	holy_revenant_rgb_ru = holy_revenant_rgb_ru,
	chorusosf_rgb_ru = chorusosf_rgb_ru,
	beaconop_rgb_ru = beaconop_rgb_ru,
	klinvery_rgb_ru = klinvery_rgb_ru,
	shroudf_rgb_ru = shroudf_rgb_ru,
	benedict_rgb_ru = benedict_rgb_ru,
	loner_rgb_ru = loner_rgb_ru,
	fanrage_rgb_ru = fanrage_rgb_ru,
	momentum_rgb_ru = momentum_rgb_ru,
	inexor_rgb_ru = inexor_rgb_ru,
	blazingp_rgb_ru = blazingp_rgb_ru,

	bburst_rgb_ru = bburst_rgb_ru,
	bburst0_rgb_ru = bburst0_rgb_ru,
	bburst1_rgb_ru = bburst1_rgb_ru,
	bburst2_rgb_ru = bburst2_rgb_ru,
	smite_rgb_ru = smite_rgb_ru,
	disrdest_rgb_ru = disrdest_rgb_ru,
	psy_wrath_rgb_ru = psy_wrath_rgb_ru,
	psy_wrath2_rgb_ru = psy_wrath2_rgb_ru,
	telekshii_rgb_ru = telekshii_rgb_ru,
	empsionics_rgb_ru = empsionics_rgb_ru,
	assail_rgb_ru = assail_rgb_ru,
	scriersgaze_rgb_ru = scriersgaze_rgb_ru,
	kinetpres_rgb_ru = kinetpres_rgb_ru,
	prescience_rgb_ru = prescience_rgb_ru,
	seerspres_rgb_ru = seerspres_rgb_ru,

	bull_rush_rgb_ru = bull_rush_rgb_ru,
	bull_rush2_rgb_ru = bull_rush2_rgb_ru,
	bull_rush3_rgb_ru = bull_rush3_rgb_ru,
	bull_rush4_rgb_ru = bull_rush4_rgb_ru,
	big_box_rgb_ru = big_box_rgb_ru,
	big_box2_rgb_ru = big_box2_rgb_ru,
	burstlimo_rgb_ru = burstlimo_rgb_ru,
	stayclose_rgb_ru = stayclose_rgb_ru,
	loyalprot_rgb_ru = loyalprot_rgb_ru,
	feelnop_rgb_ru = feelnop_rgb_ru,
	bonebraura_rgb_ru = bonebraura_rgb_ru,
	cowculaura_rgb_ru = cowculaura_rgb_ru,
	heavyhitter_rgb_ru = heavyhitter_rgb_ru,
	bigfriendro_rgb_ru = bigfriendro_rgb_ru,
	fragbomb_rgb_ru = fragbomb_rgb_ru,
	pbbarrage_rgb_ru = pbbarrage_rgb_ru,
}
