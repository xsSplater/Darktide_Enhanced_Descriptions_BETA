---@diagnostic disable: undefined-global
-- Version 4.0
-- Thanks to kuli and his Steam guides: https://steamcommunity.com/id/kulii/myworkshopfiles/?section=guides&appid=1361210


local mod = get_mod("Enhanced_descriptions")

--[+ Loading colors of Keywords and Numbers +]--
local COLORS_Numbers = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_Numbers")
local COLORS_KWords = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords")

	--[+ French +]--
local COLORS_KWords_fr = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords_fr")
	--[+ Russian +]--
local COLORS_KWords_ru = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords_ru")
	--[+ Traditional Chinese +]--
local COLORS_KWords_tw = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords_tw")
	--[+ Simplified Chinese +]--
local COLORS_KWords_zh_cn = mod:io_dofile("Enhanced_descriptions/Colors_Keywords_Numbers/COLORS_KWords_zh_cn")


local Dot_red = "{#color(255, 35, 5)}•{#reset()}"
local Dot_nc = "•"
local Dot_green = "{#color(35, 255, 5)}•{#reset()}"

--[+ +FREQUENTLY REPEATED PHRASES+ +]--
local PHRS = {
	Can_appl_thr_shlds = ""..Dot_green.." Can be applied through shields.",
	Can_be_refr = ""..Dot_green.." Can be refreshed during active duration. ",
	Can_be_refr_drop_1 = ""..Dot_green.." Stacks can be refreshed during active duration, and are dropped one by one.",
	Can_proc_mult = ""..Dot_green.." Can proc multiple times when "..COLORS_KWords.Cleaving_rgb..".\n",
	-- Gen_mult_stacks_n_refr = ""..Dot_green.." Can generate multiple Stacks per swing and refresh during active duration. ",
	Refr_dur_stappl = ""..Dot_green.." Refreshes duration on Stack application. ",
	Doesnt_Stack_Psy_Aura = ""..Dot_red.." This effect does not Stack with the same Aura from another "..COLORS_KWords.cls_psy_rgb..".",
	Doesnt_Stack_Psy_eff = ""..Dot_red.." This effect does not Stack with the same debuff from another "..COLORS_KWords.cls_psy_rgb..".",
	Doesnt_Stack_Vet_Aura = ""..Dot_red.." This effect does not Stack with the same Aura from another "..COLORS_KWords.cls_vet_rgb..".",
	Cant_appl_thr_shlds = ""..Dot_red.." Can't apply through shields.",
	Cant_Crit = ""..Dot_red.." Cannot "..COLORS_KWords.Crit_rgb..".\n",
	Carap_cant_cleave = ""..Dot_red.." Carapace armor cannot be "..COLORS_KWords.Cleaved_rgb.." by default.",
	Dont_intw_coher_toughn = ""..Dot_red.." Does not interact with "..COLORS_KWords.Coherency_rgb.." "..COLORS_KWords.Toughness_rgb..".",

--[+ +Russian - ЧАСТО ПОВТОРЯЕМЫЕ ФРАЗЫ+ +]--
	Can_appl_thr_shlds_ru = ""..Dot_green.." Накладывается через щиты.",
	Can_be_refr_ru = ""..Dot_green.." Обновляется во время действия. ",
	Can_be_refr_drop_1_ru = ""..Dot_green.." Заряды обновляются во время действия и сбрасываются по одному. ",
	Can_proc_mult_ru = ""..Dot_green.." Может срабатывать несколько раз за удар при "..COLORS_KWords_ru.Cleavi_rgb_ru.." нескольких врагов.\n",
	Can_proc_mult_str_ru = ""..Dot_green.." Может срабатывать несколько раз за выстрел при "..COLORS_KWords_ru.Cleaving_ii_rgb_ru.." нескольких врагов.\n",
	-- Gen_mult_stacks_n_refr_ru = ""..Dot_green.." Может дать несколько зарядов за удар и обновиться во время действия. ",
	Refr_dur_stappl_ru = ""..Dot_green.." Длительность обновляется при наложении заряда. ",
	Doesnt_Stack_Psy_Aura_ru = ""..Dot_red.." Не суммируется с эффектом такой же ауры другого "..COLORS_KWords_ru.cls_psya_rgb_ru..".",
	Doesnt_Stack_Psy_eff_ru = ""..Dot_red.." Не суммируется с таким же ослаблением от другого псайкера.",
	Doesnt_Stack_Vet_Aura_ru = ""..Dot_red.." Не суммируется с эффектом такой же ауры другого "..COLORS_KWords_ru.cls_veta_rgb_ru..".",
	Cant_appl_thr_shlds_ru = ""..Dot_red.." Не накладывается через щиты.",
	Cant_Crit_ru = ""..Dot_red.." Не наносит "..COLORS_KWords_ru.Crit0_rgb_ru..".\n",
	Carap_cant_clv_ru = ""..Dot_red.." Панцирная броня не "..COLORS_KWords_ru.Cleavaetsa_rgb_ru..".",
	Carap_cant_cleave_ru = ""..Dot_red.." Панцирная броня не "..COLORS_KWords_ru.Cleaving_etsa_rgb_ru..".",
	Dont_intw_coher_toughn_ru = ""..Dot_red.." Не влияет на "..COLORS_KWords_ru.Tghnss_rgb_ru.." от "..COLORS_KWords_ru.Coherency_rgb_ru..".",
}

--[+ +NOTES+ +]--
local NTS = {
	Brtl_note_rgb = ""..Dot_green.." "..COLORS_KWords.Brittleness_rgb.." increases the team's "..COLORS_KWords.Damage_rgb.." to the enemy.",
	Fns_note_rgb = ""..Dot_green.." "..COLORS_KWords.Finesse_rgb.." increases "..COLORS_KWords.Weakspot_rgb.." and "..COLORS_KWords.Critical_rgb.." "..COLORS_KWords.Damage_rgb..".",
	Impact_note_rgb = ""..Dot_green.." "..COLORS_KWords.Impact_rgb.." increases the effectiveness of "..COLORS_KWords.Stagger_rgb.." on enemies.",
	Pwr_note_rgb = ""..Dot_green.." "..COLORS_KWords.Strength_rgb.." increases "..COLORS_KWords.Damage_rgb..", "..COLORS_KWords.Stagger_rgb.." and "..COLORS_KWords.Cleave_rgb..".",
	Rend_note_rgb = ""..Dot_green.." "..COLORS_KWords.Rending_rgb.." increases your own "..COLORS_KWords.Damage_rgb..".",
--[+ +Russian - ПРИМЕЧАНИЯ+ +]--
	Brtl_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Brttlns_rgb_ru.." брони повышает "..COLORS_KWords_ru.Dmg_rgb_ru.." команды по врагу.",
	Fns_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Fnss_rgb_ru.." повышает "..COLORS_KWords_ru.Crit_dmg_r_rgb_ru.." и "..COLORS_KWords_ru.Weakspotv_dmg_rgb_ru..".",
	Impact_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Impact0_rgb_ru.." увеличивает эффективность "..COLORS_KWords_ru.Staggering_rgb_ru.." врагов.",
	Pwr_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Pwr_rgb_ru.." повышает "..COLORS_KWords_ru.Dmg_rgb_ru..", "..COLORS_KWords_ru.Stagger_rgb_ru.." и "..COLORS_KWords_ru.Cleaving_rgb_ru..".",
	Rend_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Rndg_rgb_ru.." брони повышает ваш "..COLORS_KWords_ru.Dmg_rgb_ru..".",
}


local veteran_talent_localizations = {
-- TEMPLATE
	-- ["loc_code"] = {
		-- en = "",
		-- ru = "",
		-- fr = "",
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },


--[+ ++VETERAN - ВЕТЕРАН++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Frag Grenade +]--	14.11.2025
	["loc_ability_frag_grenade_description"] = { -- +colors
		en = COLORS_KWords.Fragm_gren_rgb.." that explodes after "..COLORS_Numbers.n_1_7_rgb.." seconds.\n"
			.."\n"
			..Dot_green.." Base "..COLORS_KWords.Damage_rgb.." epicenter: "..COLORS_Numbers.n_500_rgb..".\n"
			..Dot_green.." Deals high "..COLORS_KWords.Stagger_rgb.." against all enemies including Monstrosities.\n"
			..Dot_nc.." Max explosion radius: "..COLORS_Numbers.n_10_rgb.." meters.\n"
			..Dot_nc.." Average armor "..COLORS_KWords.Damage_rgb.." modifiers across the board.\n"
			..Dot_red.." Very low armor "..COLORS_KWords.Damage_rgb.." modifier against Carapace.",
		--[+ БЛИЦ 0 - Фраг-граната +]--
		ru = "Вы бросаете "..COLORS_KWords_ru.Fragmu_grenu_rgb_ru..", которая взрывается через "..COLORS_Numbers.n_1_7_rgb.." секунд.\n"
			.."\n"
			..Dot_green.." Базовый "..COLORS_KWords_ru.Dmg_rgb_ru.." в эпицентре: "..COLORS_Numbers.n_500_rgb..".\n"
			..Dot_green.." Сильно "..COLORS_KWords_ru.Staggers_e_rgb_ru.." всех врагов, включая монстров.\n"
			..Dot_nc.." Радиус взрыва: "..COLORS_Numbers.n_10_rgb.." метров.\n"
			..Dot_nc.." Средний "..COLORS_KWords_ru.Dmg_rgb_ru.." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..COLORS_KWords_ru.Dmg_rgb_ru.." по панцирной броне.",
		-- fr = "Lancez une "..COLORS_KWords_fr.Fragm_gren_rgb_fr.." qui explose après "..COLORS_Numbers.n_1_7_rgb.." secondes."..TALENTS_Enh_desc2_fr.ED_VET_Blitz_0_rgb_fr,
		-- ["zh-tw"] = "投擲一顆 "..COLORS_KWords_tw.Fragm_gren_rgb_tw.." ，在 "..COLORS_Numbers.n_1_7_rgb..COLORS_Numbers.n_second_rgb.." 後爆炸。\n" ..TALENTS_Enh_desc2_tw.ED_VET_Blitz_0_rgb_tw, -- 破片手雷 --破片手雷，在引信短暫燃燒後爆炸。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ BLITZ 1 - Shredder Frag Grenade +]--	14.11.2025
	["loc_talent_veteran_grenade_apply_bleed_desc"] = { -- stacks: 6, talent_name: Frag Grenade, +colors
		en = "Throw a "..COLORS_KWords.Frag_gren_rgb.." that explodes after "..COLORS_Numbers.n_1_7_rgb.." seconds. Applies {stacks:%s} Stacks of "..COLORS_KWords.Bleed_rgb.." to all Enemies Hit, causing "..COLORS_KWords.Damage_rgb.." over time.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Base "..COLORS_KWords.Damage_rgb.." epicenter: "..COLORS_Numbers.n_500_rgb..".\n"
			..Dot_green.." Deals high "..COLORS_KWords.Stagger_rgb.." against all enemies including Monstrosities.\n"
			..Dot_nc.." Max explosion radius: "..COLORS_Numbers.n_10_rgb.." meters.\n"
			..Dot_nc.." Up to "..COLORS_Numbers.n_16_rgb.." Max "..COLORS_KWords.Bleed_rgb.." Stacks.\n"
			..Dot_nc.." Average armor "..COLORS_KWords.Damage_rgb.." modifiers across the board.\n"
			..Dot_red.." Very low armor "..COLORS_KWords.Damage_rgb.." modifier against Carapace.",
		--[+ БЛИЦ 1 - Крошащая фраг-граната +]-- руоф Фраг-граната крошителя
		ru = "Вы бросаете "..COLORS_KWords_ru.Frag_gren_rgb_ru..", которая взрывается после "..COLORS_Numbers.n_1_7_rgb.." секунды. Накладывает {stacks:%s} зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." на всех поражённых взрывом врагов, нанося "..COLORS_KWords_ru.Dmg_rgb_ru.." с течением времени.\n"
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Базовый "..COLORS_KWords_ru.Dmg_rgb_ru.." в эпицентре: "..COLORS_Numbers.n_500_rgb..".\n"
			..Dot_green.." Сильно "..COLORS_KWords_ru.Staggers_e_rgb_ru.." всех врагов, включая монстров.\n"
			..Dot_nc.." Радиус взрыва: "..COLORS_Numbers.n_10_rgb.." метров.\n"
			..Dot_nc.." До "..COLORS_Numbers.n_16_rgb.." зарядов "..COLORS_KWords_ru.Bleed_rgb_ru..".\n"
			..Dot_nc.." Средний "..COLORS_KWords_ru.Dmg_rgb_ru.." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..COLORS_KWords_ru.Dmg_rgb_ru.." по панцирной броне.",
		-- fr = "Lancez une "..COLORS_KWords_fr.Frag_gren_rgb_fr.." qui explose après "..COLORS_Numbers.n_1_7_rgb.." secondes. Applique {stacks:%s} cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." à tous les ennemis touchés, causant des "..COLORS_KWords_fr.Damage_rgb_fr.." au fil du temps. Jusqu'à "..COLORS_Numbers.n_16_rgb.." cumuls max.\nIl s'agit d'une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Blitz_1_rgb_fr,
		-- ["zh-tw"] = "投擲一顆 "..COLORS_KWords_tw.Frag_gren_rgb_tw.." ，在 "..COLORS_Numbers.n_1_7_rgb..COLORS_Numbers.n_second_rgb.." 後爆炸。\n"
			-- .."\n"
			-- .."- 施加 {stacks:%s} 層 "..COLORS_KWords_tw.Bleed_rgb_tw.."，造成 "..COLORS_KWords_tw.Dmg_c_rgb_tw.." 。\n"
			-- .."- 上限 "..COLORS_Numbers.n_16_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.."。\n\n"
			-- .."這是 {talent_name:%s} 天賦的強化版本。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Blitz_1_rgb_tw, -- 粉碎者破片手雷 -- 投擲一枚破片手雷，手雷會在短暫延時後爆炸，使被擊中的所有敵人疊加{stacks:%s}層流血，造成持續傷害。\n\n該天賦為{talent_name:%s}的增強版。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ BLITZ 2 - Krak Grenade +]--	14.11.2025
	["loc_talent_ability_krak_grenade_desc"] = { -- +colors
		en = "Throw a grenade that explodes after "..COLORS_Numbers.n_1_rgb.." second and deals devastating "..COLORS_KWords.Damage_rgb..". Sticks to Flak Armoured, Carapace Armoured and Unyielding Enemies.\n"
			.."\n"
			..Dot_green.." Base "..COLORS_KWords.Damage_rgb.." epicenter: "..COLORS_Numbers.n_2400_rgb..".\n"
			..Dot_green.." Good armor "..COLORS_KWords.Damage_rgb.." modifiers across the board inside epicenter.\n"
			..Dot_green.." Very high armor "..COLORS_KWords.Damage_rgb.." modifiers against Carapace, Flak, Unyielding inside epicenter.\n"
			..Dot_green.." Deals high "..COLORS_KWords.Stagger_rgb.." against all enemies including Monstrosities.\n"
			..Dot_nc.." Max explosion radius: "..COLORS_Numbers.n_5_rgb.." meters.",
		--[+ БЛИЦ 2 - Крак-граната +]--
		ru = "Вы бросаете гранату, которая взрывается после "..COLORS_Numbers.n_1_rgb.." секунды и наносит разрушительный "..COLORS_KWords_ru.Dmg_rgb_ru..". Граната прилипает к панцирной и противоосколочной броне, а также к несгибаемым врагам.\n"
			.."\n"
			..Dot_green.." Базовый "..COLORS_KWords_ru.Dmg_rgb_ru.." в эпицентре: "..COLORS_Numbers.n_2400_rgb..".\n"
			..Dot_green.." Хороший "..COLORS_KWords_ru.Dmg_rgb_ru.." по броне в эпицентре.\n"
			..Dot_green.." Очень высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." по панцирной, противоосколочной броне и несгибаемым врагам в эпицентре.\n"
			..Dot_green.." Сильно "..COLORS_KWords_ru.Staggers_e_rgb_ru.." всех врагов, включая монстров.\n"
			..Dot_nc.." Радиус взрыва: "..COLORS_Numbers.n_5_rgb.." метров.",
		-- fr = "Lancez une grenade qui explose après "..COLORS_Numbers.n_2_rgb.." secondes et inflige des "..COLORS_KWords_fr.Damage_rgb_fr.." dévastateurs. Adhère aux ennemis en armure légère, en armure Carapace et aux ennemis implacables."..TALENTS_Enh_desc2_fr.ED_VET_Blitz_2_rgb_fr,
		-- ["zh-tw"] = "投擲一顆 "..COLORS_KWords_tw.Krak_gren_rgb_tw.." ，在 "..COLORS_Numbers.n_2_rgb..COLORS_Numbers.n_second_rgb.." 後爆炸，\n"
			-- .."造成毀滅性的"..COLORS_KWords_tw.Dmg_rgb_tw.."。\n"
			-- .."- 可黏附在防彈、甲殼、不屈敵人身上。" ..TALENTS_Enh_desc2_tw.ED_VET_Blitz_2_rgb_tw, -- 穿甲手雷 -- 投擲一枚能造成毀滅性傷害的手雷。該手雷會粘附在身著防彈護甲、甲殼護甲和不屈的敵人身上。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ BLITZ 3 - Smoke Grenade +]--	14.11.2025
	["loc_ability_smoke_grenade_description"] = { -- duration: 15, +colors
		en = "Throw a grenade that explodes after "..COLORS_Numbers.n_1_5_rgb.." seconds and creates a lingering Smoke cloud for {duration:%s} seconds. The cloud blocks line of sight for most enemies and reduces the sight range of enemies inside it.\n"
			.."\n"
			..Dot_nc.." Smoke cloud effect: "..COLORS_Numbers.n_5_5_rgb.." meters radius.\n"
			..Dot_red.." Has no effect on Bombers, Mutants, and Poxbursters.",
		--[+ БЛИЦ 3 - Дымовая граната +]--
		ru = "Вы бросаете гранату, которая взрывается через "..COLORS_Numbers.n_1_5_rgb.." секунды и создаёт облако дыма на {duration:%s} секунд. Дым блокирует линию обзора большинства врагов и снижает расстояние обзора врагов внутри него.\n"
			.."\n"
			..Dot_nc.." Радиус облака дыма: "..COLORS_Numbers.n_5_5_rgb.." метра.\n"
			..Dot_red.." Не действует на гренадёров, мутантов и взрывников.",
		-- fr = "Lancez une grenade qui explose après "..COLORS_Numbers.n_1_5_rgb.." secondes et crée un nuage de fumée persistant pendant {duration:%s} secondes. Le nuage bloque la ligne de vue pour la plupart des ennemis et réduit la portée de vue des ennemis à l'intérieur."..TALENTS_Enh_desc2_fr.ED_VET_Blitz_3_rgb_fr,
		-- ["zh-tw"] = "投擲一顆手榴彈，將在 "..COLORS_Numbers.n_1_5_rgb.." 秒後爆炸，\n"
			-- .."- 在地面產生持續 {duration:%s} 秒的煙霧。\n"
			-- .."- 煙霧遮蔽大多數敵人的視線。\n"
			-- .."- 降低敵人在煙霧中的視野距離。"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Blitz_3_rgb_tw, -- 煙霧手雷 -- 投擲一枚手雷，釋放持續{duration:%s}秒的煙霧。煙霧能阻擋大部分敵人的視線並降低煙霧內敵人的可視範圍。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
--[+ +AURA - АУРА+ +]--
	--[+ AURA 0 - Scavenger +]--	14.11.2025
	["loc_talent_veteran_elite_kills_grant_ammo_coop_cd_desc"] = { -- ammo: 0.75%, cooldown: 5
		en = Dot_green.." {ammo:%s} Ammo replenishes for you and Allies in "..COLORS_KWords.Coherency_rgb.." whenever any of you Kill an Elite or Specialist Enemy. This can occur once every {cooldown:%s} seconds.\n"
			.."\n"
			..PHRS.Doesnt_Stack_Vet_Aura,
		--[+ АУРА 0 - Сборщик +]-- руоф Собиратель
		ru = Dot_green.." {ammo:%s} боеприпасов пополняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..", когда кто-либо из вас убивает элитного врага или специалиста. Срабатывает раз в {cooldown:%s} секунд.\n"
			.."\n"
			..PHRS.Doesnt_Stack_Vet_Aura_ru,
		-- fr = "Récuperez {ammo:%s} de munitions pour vous et les alliés en syntonie chaque fois que l'un de vous tue un ennemi élite ou spécialiste. Cela peut se produire une fois toutes les {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Aura_0_rgb_fr,
		-- ["zh-tw"] = "當你或"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友擊殺菁英或專家時，\n"
			-- .."- 每人回復 {ammo:%s} 發彈藥。\n"
			-- .."- 每 {cooldown:%s} 秒可觸發一次。" ..TALENTS_Enh_desc2_tw.ED_VET_Aura_0_rgb_tw, -- 拾荒者 --每次你擊殺精英或專家敵人，你和協同中的盟友都能獲得{ammo:%s}發彈藥。此效果每{cooldown:%s}秒可觸發一次。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ AURA 1 - Survivalist +]--	14.11.2025
	["loc_talent_veteran_elite_kills_grant_ammo_coop_improved_cd_desc"] = { -- ammo_2: 1%, cooldown: 5, talent_name: Scavenger
		en = Dot_green.." {ammo_2:%s} Ammo replenishes for you and Allies in "..COLORS_KWords.Coherency_rgb.." whenever any of you Kill an Elite or Specialist Enemy. This can occur once every {cooldown:%s} seconds.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.\n"
			.."\n"
			..PHRS.Doesnt_Stack_Vet_Aura,
		--[+ АУРА 1 - Выживальщик +]-- руоф Специалист по выживанию
		ru = Dot_green.." {ammo_2:%s} боеприпасов пополняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..", когда кто-либо из вас убивает элитного врага или специалиста. Срабатывает раз в {cooldown:%s} секунд.\n"
			..Dot_green.." Это улучшенная версия ауры {talent_name:%s}.\n"
			.."\n"
			..PHRS.Doesnt_Stack_Vet_Aura_ru,
		-- fr = "Récuperez {ammo_2:%s} de munitions pour vous et les alliés en syntonie chaque fois que l'un de vous tue un ennemi élite ou spécialiste. Cela peut se produire une fois toutes les {cooldown:%s} secondes.\n\nIl s'agit d'une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Aura_1_rgb_fr,
		-- ["zh-tw"] = "當你或"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友擊殺菁英或專家時，\n"
			-- .."- 每人回復 {ammo_2:%s} 發彈藥。\n"
			-- .."- 每 {cooldown:%s} 秒可觸發一次。\n\n"
			-- .. "這是光環 {talent_name:%s} 的強化版本。"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Aura_1_rgb_tw, -- 生存專家 -- 每次你擊殺精英或專家敵人，你和協同中的盟友都能獲得{ammo_2:%s}發彈藥。此效果每{cooldown:%s}秒可觸發一次。\n\n此為{talent_name:%s}的強化版。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ AURA 2 - Fire Team +]--	14.11.2025
	["loc_talent_veteran_damage_coherency_desc"] = { -- damage: +7.5%, +colors
		en = Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n"
			.."\n"
			..PHRS.Doesnt_Stack_Vet_Aura,
		--[+ АУРА 2 - Огневая группа +]--
		ru = Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n"
			.."\n"
			..PHRS.Doesnt_Stack_Vet_Aura_ru,
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_VET_Aura_2_rgb_fr,
		-- ["zh-tw"] = "你與"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友獲得 {damage:%s} 的"..COLORS_KWords_tw.Damage_rgb_tw.."。" ..TALENTS_Enh_desc2_tw.ED_VET_Aura_2_rgb_tw, -- 火力小分隊 -- 你和協同中的盟友傷害增加{damage:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ AURA 3 - Close and Kill +]--	14.11.2025
	["loc_talent_veteran_movement_speed_coherency_desc"] = { -- movement_speed: +5%
		en = Dot_green.." {movement_speed:%s} Movement Speed for your and Allies in "..COLORS_KWords.Coherency_rgb..".\n"
			.."\n"
			..PHRS.Doesnt_Stack_Vet_Aura,
		--[+ АУРА 3 - Приблизиться и убить +]--
		ru = Dot_green.." {movement_speed:%s} к скорости движения для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n"
			.."\n"
			..PHRS.Doesnt_Stack_Vet_Aura_ru,
		-- fr = "{movement_speed:%s} de Vitesse de déplacement pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_VET_Aura_3_rgb_fr,
		-- ["zh-tw"] = "你與"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友獲得 {movement_speed:%s} 的移動速度加成。" ..TALENTS_Enh_desc2_tw.ED_VET_Aura_3_rgb_tw, -- 抵近殺敵 -- 接近並擊殺 -- 你和協同中的盟友移動速度增加{movement_speed:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ ABILITY 0 - Volley Fire +]--	14.11.2025
	["loc_ability_veteran_base_ability_desc"] = { -- duration: 5, damage: +25%, weakspot_damage: +25%, cooldown: 30, &->and, s->seconds, +colors
		en = "You enter "..COLORS_KWords.Rangd_stnc_rgb.." for {duration:%s} seconds, instantly equip your Ranged weapon and gain:\n"
			..Dot_green.." {damage:%s} Ranged "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." {weakspot_damage:%s} Ranged "..COLORS_KWords.Weakspot_dmg_rgb..",\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_50_rgb.." Ranged "..COLORS_KWords.Stagger_rgb.." strength,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_60_rgb.." Weapon Sway,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_38_rgb.." Spread,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_24_rgb.." Recoil,\n"
			..Dot_green.." Suppression Immunity.\n"
			.."\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_green.." Killing an outlined enemy refreshes "..COLORS_KWords.Rangd_stnc_rgb.."'s active duration by {duration:%s} seconds.",
		--[+ СПОСОБНОСТЬ 0 - Залповый огонь +]--
		ru = "Вы входите в "..COLORS_KWords_ru.Rangd_stnc_rgb_ru.." на {duration:%s} секунд, мгновенно экипируете своё оружие дальнего боя и улучшаете навык его владения, получая:\n"
			..Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
			..Dot_green.." {weakspot_damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru..",\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_50_rgb.." к силе "..COLORS_KWords_ru.Staggering_rgb_ru..",\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_60_rgb.." к раскачиванию,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_38_rgb.." к разбросу,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_24_rgb.." к отдаче, а также\n"
			..Dot_green.." иммунитет к подавлению.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_green.." Убийство отмеченного врага обновляет длительность стойки на {duration:%s} секунд.",
		-- fr = "Passez en posture à distance pendant {duration:%s} secondes. En posture à distance, vous équipez instantanément votre arme à distance et infligez :\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance et\n{weakspot_damage:%s} de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." à distance. Votre dispersion et votre recul sont également grandement réduits.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Ability_0_rgb_fr,
		-- ["zh-tw"] = "立即裝備遠程武器進入戰鬥姿態：\n"
			-- .."- {damage:%s} "..COLORS_KWords_tw.Damage_ranged_rgb_tw.."。\n"
			-- .."- {weakspot_damage:%s} "..COLORS_KWords_tw.Weakspot_r_dmg_rgb_tw.."。\n"
			-- .."- 射擊散佈與後座力大幅降低。\n"
			-- .."- 持續 {duration:%s} 秒。\n"
			-- .."- 冷卻時間：{cooldown:%s} 秒。" ..TALENTS_Enh_desc2_tw.ED_VET_Ability_0_rgb_tw, -- 火力齊射 --進入遠端姿態{duration:%d}秒後，立即裝備你的遠端武器並將附近的精英和專家敵人認定為優先目標。在此姿態下，你造成的遠程傷害{damage:%d}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 1 - Executioner's Stance +]--	14.11.2025
	["loc_talent_veteran_ranged_stance_toughness_description"] = { -- duration: 5, damage: +25%, weakspot_damage: +25%, toughness: 10%, refresh_duration: 5, cooldown: 30, old_talent_name: Volley Fire, s->seconds, +colors
		en = "You enter "..COLORS_KWords.Rangd_stnc_rgb.." for {duration:%s} seconds, instantly equip your Ranged weapon and gain:\n"
			..Dot_green.." {damage:%s} Ranged "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." {weakspot_damage:%s} Ranged "..COLORS_KWords.Weakspot_dmg_rgb..",\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_100_rgb.." Ranged "..COLORS_KWords.Stagger_rgb.." strength,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_60_rgb.." Weapon Sway,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_38_rgb.." Spread,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_24_rgb.." Recoil,\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes per second,\n"
			..Dot_green.." Suppression Immunity.\n"
			.."\n"
			..Dot_green.." This is an augmented version of {old_talent_name:%s}.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Human-sized Elite and Specialist Enemies within "..COLORS_Numbers.n_50_rgb.." meters of the "..COLORS_KWords.cls_vet_rgb.." are highlighted for {duration:%s} seconds.\n"
			..Dot_nc.." Killing an outlined enemy refreshes "..COLORS_KWords.Rangd_stnc_rgb.."'s active duration by {refresh_duration:%s} seconds. This also refreshes the duration of outlines on enemies for "..COLORS_KWords.cls_vet_rgb..".\n"
			..Dot_red.." Outlines are only visible to "..COLORS_KWords.cls_vet_rgb..".",
		--[+ СПОСОБНОСТЬ 1 - Стойка палача +]--
		ru = "Вы входите в "..COLORS_KWords_ru.Rangd_stnc_rgb_ru.." на {duration:%s} секунд, мгновенно экипируете своё оружие дальнего боя и улучшаете навык его владения, получая:\n"
			..Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
			..Dot_green.." {weakspot_damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru..",\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_100_rgb.." к силе "..COLORS_KWords_ru.Staggering_rgb_ru..",\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_60_rgb.." к раскачиванию оружия,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_38_rgb.." к разбросу,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_24_rgb.." к отдаче,\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду,\n"
			..Dot_green.." Иммунитет к подавлению.\n"
			.."\n"
			..Dot_green.." Это улучшенная версия способности {old_talent_name:%s}.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Элитные враги человеческого роста и специалисты в пределах "..COLORS_Numbers.n_50_rgb.." метров от "..COLORS_KWords_ru.cls_veta_rgb_ru.." подсвечиваются на {duration:%s} секунд.\n"
			..Dot_nc.." Убийство отмеченного врага обновляет длительность стойки на {refresh_duration:%s} секунд. Это также обновляет длительность отметки на врагах для "..COLORS_KWords_ru.cls_veta_rgb_ru..".\n"
			..Dot_red.." Отметка видна только "..COLORS_KWords_ru.cls_vetu_rgb_ru..".",
		-- fr = "Passez en posture à distance pendant {duration:%s} secondes. Vous équipez instantanément votre arme à distance et infligez :\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance,\n{weakspot_damage:%s} de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." à distance.\nLes ennemis élites et spécialistes de taille humaine situés à moins de "..COLORS_Numbers.n_50_rgb.." mètres du vétéran sont mis en surbrillance pendant {duration:%s} secondes.\nTuer un ennemi mis en surbrillance rafraîchit la durée active de {refresh_duration:%s} secondes. Cela rafraîchit également la durée des contours sur les ennemis pour le vétéran.\nTemps de recharge de base : {cooldown:%s} secondes.\nIl s'agit d'une version augmentée de {old_talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Ability_1_rgb_fr,
		-- ["zh-tw"] = "立即裝備遠程武器進入戰鬥姿態：\n"
			-- .." {damage:%s} "..COLORS_KWords_tw.Damage_ranged_rgb_tw.."。\n"
			-- .."- {weakspot_damage:%s} "..COLORS_KWords_tw.Weakspot_r_dmg_rgb_tw.."。\n"
			-- .."- 射擊散佈與後座力大幅降低。\n"
			-- .."- 持續 {duration:%s} 秒。\n"
			-- .."- 冷卻時間：{cooldown:%s} 秒。\n"
			-- .."\n"
			-- .."- 額外獲得標記狀態：\n"
			-- .."-- 自動標記 "..COLORS_Numbers.n_50_rgb..COLORS_Numbers.n_meter_rgb.." 內的人形菁英與專家。\n"
			-- .."-- 標記持續 {duration:%s} 秒。\n"
			-- .."-- 擊殺被標記的敵人時：\n"
			-- .."--- 延長技能效果 {refresh_duration:%s} 秒。\n"
			-- .."--- 刷新標記狀態。\n"
			-- .."\n這是技能 {old_talent_name:%s} 的強化版本。" ..TALENTS_Enh_desc2_tw.ED_VET_Ability_1_rgb_tw, -- 處決者姿態 --進入遠程狀態，持續{duration:%s}秒。在遠程狀態下，你會立即裝備遠程武器，造成{damage:%s}遠程傷害和{weakspot_damage:%s}遠程弱點傷害，並大幅減少武器散射和後座力。\n\n還可在{duration:%s}秒內追蹤識別人類大小的精英和專家敵人。\n\n擊殺追蹤中的敵人將使技能效果延長{refresh_duration:%s}秒。\n\n基礎冷卻時間：{cooldown:%s}秒。\n\n該天賦是{old_talent_name:%s}的強化版。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 1-1 - Enhanced Target Priority +]--	14.11.2025
	["loc_talent_veteran_combat_ability_coherency_outlines_description"] = { -- talent_name: Executioner's Stance, duration: 5, &->and, s->seconds
		en = Dot_green.." {talent_name:%s} now outlines all Specials and human-sized Elites for Allies in "..COLORS_KWords.Coherency_rgb.." for {duration:%s} seconds.",
		--[+ СПОСОБНОСТЬ 1-1 - Повышенный приоритет целей +]-- руоф Повышенный приоритет цели
		ru = Dot_green.." {talent_name:%s} теперь также отмечает всех элитных врагов человеческого роста и специалистов для ваших союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." на {duration:%s} секунд.",
		-- fr = "{talent_name:%s} met désormais en surbrillance tous les ennemis élites et spécialistes de taille humaine pour les alliés en syntonie pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Ability_1_1_rgb_fr,
		-- ["zh-tw"] = "為 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 隊友標記敵人。\n"
			-- .."- 可標記人形大小的菁英與專家敵人。\n"
			-- .."- 持續 {duration:%s} 秒。" ..TALENTS_Enh_desc2_tw.ED_VET_Ability_1_1_rgb_tw, -- 目標引導增強 -- {talent_name:%s}在{duration:%s}秒內為協同中的盟友顯示精英和專家敵人輪廓。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 1-2 - Counter-Fire +]--	14.11.2025
	["loc_talent_veteran_combat_ability_ranged_enemies_outlines_description"] = { -- talent_name: Executioner's Stance
		en = Dot_green.." {talent_name:%s} now outlines Scab/Dreg Stalkers and Scab Shooters, additionally to all human-sized Elites and Specials.",
		--[+ СПОСОБНОСТЬ 1-2 - Ответный огонь +]--
		ru = Dot_green.." {talent_name:%s} теперь также отмечает и других дальнобойных врагов: скабов-охотников, дрегов-охотников и скабов-стрелков, в дополнение к элитным врагам человеческого роста и специалистам.",
		-- fr = "{talent_name:%s} met désormais en surbrillance tout les ennemis à distance de taille humaine.",
		-- ["zh-tw"] = "{talent_name:%s} 現在會標記以下遠程敵人。\n"
			-- .."- 血痂射手、渣滓射手。\n"
			-- .."- 血痂獵人、渣滓獵人。\n"
			-- .."- 人形大小的菁英與專家敵人。", -- 火力反擊 -- {talent_name:%s}現在顯示所有人形遠端敵人的輪廓。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 1-3 - The Bigger they Are... +]--	09.11.2025
	["loc_talent_veteran_combat_ability_ogryn_outlines_damage_description"] = { -- talent_name: Executioner's Stance, duration: 8
		en = Dot_green.." {talent_name:%s} now outlines Bulwarks, Crushers and Reapers, Captains, and Monstrosity Enemies, additionally to all human-sized Elites and Specials.\n"
			.."\n"
			..Dot_green.." Duration increased to {duration:%s} seconds.",
		--[+ СПОСОБНОСТЬ 1-3 - Чем больше шкаф... +]--
		ru = Dot_green.." {talent_name:%s} теперь также отмечает бастионов, крушителей, жнецов, капитанов и монстров, в дополнение к элитным врагам человеческого роста и специалистам.\n"
			.."\n"
			..Dot_green.." Длительность увеличена до {duration:%s} секунд.",
		-- fr = "{talent_name:%s} met désormais en surbrillance les Remparts, Broyeurs et Fauchers, en plus de tous les élites et spécialistes de taille humaine.",
		-- ["zh-tw"] = "{talent_name:%s} 現在會標示以下敵人：\n"
			-- .."- 堡壘、輾壓者、收割者。", -- 敵人越大... -- {talent_name:%s}現在可顯示所有歐格林敵人的輪廓。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 1-4 - Marksman +]--	14.11.2025
	["loc_talent_veteran_ability_marksman_desc"] = { -- duration: 10, power: +20%, talent_name: Infiltrate, s->seconds, +colors
		en = "{power:%s} "..COLORS_KWords.Strength_rgb.." to "..COLORS_KWords.Weakspothits_rgb.." for {duration:%s} seconds on "..COLORS_KWords.Combat_ability_rgb.." use.\n"
			.."\n"
			..Dot_nc.." When using {talent_name:%s}, this is applied after leaving "..COLORS_KWords.Stealth_rgb..".\n"
			.."\n"
			..NTS.Pwr_note_rgb,
		--[+ СПОСОБНОСТЬ 1-4 - Меткий стрелок +]--
		ru = "{power:%s} к "..COLORS_KWords_ru.Strength_rgb_ru.." атак в "..COLORS_KWords_ru.Weakspot_rgb_ru.." на {duration:%s} секунд при активации "..COLORS_KWords_ru.Combat_ability_rgb_ru..".\n"
			.."\n"
			..Dot_nc.." При использовании способности {talent_name:%s}, этот талант начинает действовать только после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru..".\n"
			.."\n"
			..NTS.Pwr_note_rgb_ru,
		-- fr = "{power:%s} de "..COLORS_KWords_fr.Strength_rgb_fr.." pour tous les "..COLORS_KWords_fr.Weakspothits_rgb_fr.." pendant {duration:%s} secondes après utilisation de la "..COLORS_KWords_fr.Combat_ability_rgb_fr..".\n\nLors de l'utilisation de {talent_name:%s}, cela s'applique après avoir quitté l'état de la "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_1_4_rgb_fr,
		-- ["zh-tw"] = "使用 "..COLORS_KWords_tw.Combat_ability_rgb_tw.." 後獲得以下效果：\n"
			-- .."- "..COLORS_KWords_tw.Weakspothits_rgb_tw.." ， {power:%s} "..COLORS_KWords_tw.Strength_rgb_tw.."，持續 {duration:%s} 秒。\n\n"
			-- .."- 使用 {talent_name:%s} 時，在脫離 "..COLORS_KWords_tw.Stealth_rgb_tw.." 後生效。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Ability_1_4_rgb_tw, -- 鷹眼 -- 使用技能後的{duration%s}秒內，命中任意弱點即可獲得{power%s}強度。\n\n使用{talent_name:%s}時，效果將在脫離潛行狀態後生效。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 2 - Voice of Command +]--	14.11.2025
	["loc_talent_veteran_combat_ability_stagger_nearby_enemies_description"] = { -- range: 9, cooldown: 30, &->and, m->meters, s->seconds, +colors
		en = Dot_green.." "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords.Toughness_rgb.." restored on activation.\n"
			..Dot_green.." "..COLORS_KWords.Staggers_rgb.." all Enemies within {range:%s} meters.\n"
			..Dot_nc.." Base Cooldown {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Holding the ability button shows shout range. Cancel by blocking.\n"
			..Dot_red.." Cannot "..COLORS_KWords.Stagger_rgb.." already "..COLORS_KWords.Staggered_rgb.." enemies and enemies with an active Void shield.\n",
		--[+ СПОСОБНОСТЬ 2 - Командный голос +]--
		ru = Dot_green.." "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при активации.\n"
			..Dot_green.." "..COLORS_KWords_ru.Stagger_et_rgb_ru.." всех врагов в радиусе {range:%s} метров.\n"
			..Dot_nc.." Восстановливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Удерживание кнопки активации способности показывает радиус действия. Отменяется блоком.\n"
			..Dot_red.." Не может "..COLORS_KWords_ru.Staggernt_rgb_ru.." уже "..COLORS_KWords_ru.Staggered_rgb_ru.." врагов и врагов с активным пустотным щитом.\n",
		-- fr = "Régénérez votre "..COLORS_KWords_fr.Toughness_rgb_fr.." et faites "..COLORS_KWords_fr.Staggering_rgb_fr.." tous les ennemis dans un rayon de {range:%s} mètres.\n\nTemps de recharge de base {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Ability_2_rgb_fr,
		-- ["zh-tw"] = "- 瞬間恢復 "..COLORS_KWords_tw.Toughness_m_rgb_tw.." 。\n"
			-- .."- "..COLORS_KWords_tw.Staggers_e_rgb_tw.." 半徑 {range:%s} 公尺內的所有敵人。\n"
			-- .."- 冷卻時間：{cooldown:%s} 秒。"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Ability_2_rgb_tw, -- 發號施令 -- 恢復你的韌性並使{range:%s}公尺內敵人暈眩。\n\n基礎冷卻時間{cooldown:%s}秒。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 2-1 - Duty and Honour +]--	14.11.2025
	["loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency_description"] = { -- talent_name: Voice of Command, toughness: +50, duration: 10, s->seconds, +colors
		en = "{talent_name:%s} now also grants to you and Allies in "..COLORS_KWords.Coherency_rgb..":\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." for {duration:%s} seconds.\n"
			.."\n"
			..Dot_green.." Can be replenished by Melee kills, respective Talents, and Weapon Blessings.\n"
			..Dot_nc.." It acts as a 'second' "..COLORS_KWords.Toughness_rgb.." bar.\n"
			..Dot_nc.." This can exceed your Maximum "..COLORS_KWords.Toughness_rgb..".",
		--[+ СПОСОБНОСТЬ 2-1 - Долг и честь +]--
		ru = "{talent_name:%s} теперь также даёт вам и союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru..":\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." на {duration:%s} секунд.\n"
			.."\n"
			..Dot_green.." Эта "..COLORS_KWords_ru.Tghnss_rgb_ru.." может быть восстанавлена убийствами в ближнем бою, соответствующими талантами и благословениями оружия.\n"
			..Dot_nc.." Действует как дополнительная полоска "..COLORS_KWords_ru.Toughness_rgb_ru..".\n"
			..Dot_nc.." Может превысить ваш максимальный уровень "..COLORS_KWords_ru.Toughness_rgb_ru..".",
		-- fr = "{talent_name:%s} accorde également à vous et aux alliés en syntonie {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." pendant {duration:%s} secondes. Cela peut dépasser votre maximum de "..COLORS_KWords_fr.Toughness_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_2_1_rgb_fr,
		-- ["zh-tw"] = "{talent_name:%s} 會賦予 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 隊友以下狀態：\n"
			-- .."- {toughness:%s} 點 "..COLORS_KWords_tw.Toughness_rgb_tw.." 。\n"
			-- .."- 持續 {duration:%s} 秒。\n"
			-- .."- 此效果可暫時提升你的 "..COLORS_KWords_tw.Toughness_m_rgb_tw.." 。"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Ability_2_1_rgb_tw, -- 責任與榮譽 --{talent_name:%s}還能為你和協同中的盟友提供{toughness:%s}韌性，持續{duration:%s}秒。此數值可超過你的韌性上限。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 2-2 - Only In Death Does Duty End +]--	14.11.2025
	["loc_talent_veteran_combat_ability_revives_description"] = { -- talent_name: Voice of Command, range: 33%, ability_cooldown: 50%, &->and, +colors
		en = Dot_green.." {talent_name:%s} revives Knocked Down Allies within its radius.\n"
			..Dot_red.." "..COLORS_Numbers.n_minus_rgb.."{range:%s} radius, down to "..COLORS_Numbers.n_6_rgb.." meters.\n"
			..Dot_red.." "..COLORS_Numbers.n_plus_rgb.."{ability_cooldown:%s} "..COLORS_KWords.Ability_cd_rgb..", up to "..COLORS_Numbers.n_45_rgb.." seconds.",
		--[+ СПОСОБНОСТЬ 2-2 - Лишь со смертью заканчивается долг +]-- руоф Лишь после смерти заканчивается служение долгу
		ru = Dot_green.." {talent_name:%s} поднимает сбитых с ног союзников в радиусе действия.\n"
			..Dot_red.." "..COLORS_Numbers.n_minus_rgb.."{range:%s} радиус действия, уменьшается до "..COLORS_Numbers.n_6_rgb.." метров.\n"
			..Dot_red.." "..COLORS_Numbers.n_plus_rgb.."{ability_cooldown:%s} к времени "..COLORS_KWords_ru.Ability_cd_rgb_ru..", увеличивается до "..COLORS_Numbers.n_45_rgb.." секунд.",
		-- fr = "{talent_name:%s} ressuscite les alliés mis à terre dans le rayon, mais réduit également ce rayon de {range:%s} et augmente votre "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." de {ability_cooldown:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Ability_2_2_rgb_fr,
		-- ["zh-tw"] = "{talent_name:%s} 可使範圍內倒地的隊友立即復甦。\n"
			-- .."- {#color(255,0,0)}MK 4 型{#reset()}\n"
			-- .."- 範圍將減少 {range:%s} 。\n"
			-- .."- "..COLORS_KWords_tw.Ability_cd_rgb_tw.."增加 {ability_cooldown:%s} 秒。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Ability_2_2_rgb_tw, -- 只有死亡，職責才會終結 -- {talent_name:%s}復活範圍內被擊倒的盟友，但同時範圍將縮小{range%s}，並增加{ability_cooldown:%s}技能冷卻時間。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 3 - Infiltrate +]--	14.11.2025
	["loc_talent_veteran_invisibility_on_combat_ability_damage_desc"] = { -- duration: 8, movement_speed: +25%, damage_duration: 5, damage: +30%, cooldown: 45, s->seconds, +colors
		en = "You enter "..COLORS_KWords.Stealth_rgb.." for {duration:%s} seconds and gain:\n"
			..Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." {movement_speed:%s} Movement Speed,\n"
			..Dot_green.." Full "..COLORS_KWords.Toughness_rgb.." Restoration.\n"
			.."\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			..Dot_green.." The "..COLORS_KWords.Damage_rgb.." bonus lingers for an additional {damage_duration:%s} seconds after "..COLORS_KWords.Stealth_rgb.." ends.\n"
			..Dot_green.." Exiting "..COLORS_KWords.Stealth_rgb.." Suppresses nearby Enemies.\n"
			..Dot_red.." Attacking ends "..COLORS_KWords.Stealth_rgb..".",
		--[+ СПОСОБНОСТЬ 3 - Проникновение +]--
		ru = "Вы входите в режим "..COLORS_KWords_ru.Stealth_rgb_ru.." на {duration:%s} секунд и получаете:\n"
			..Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
			..Dot_green.." {movement_speed:%s} к скорости движения и\n"
			..Dot_green.." полное восстановление "..COLORS_KWords_ru.Toughness_rgb_ru..".\n"
			.."\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			..Dot_green.." Бонус к "..COLORS_KWords_ru.Damage_rgb_ru.." продлевается на {damage_duration:%s} секунд после окончания действия "..COLORS_KWords_ru.Stealth_rgb_ru..".\n"
			..Dot_green.." Выход из "..COLORS_KWords_ru.Stealth_rgb_ru.." подавляет ближайших врагов.\n"
			..Dot_red.." Любые атаки заставляют вас выйти из "..COLORS_KWords_ru.Stealth_rgb_ru..".",
		-- fr = "Régénérez toute la "..COLORS_KWords_fr.Toughness_rgb_fr.." et entre en "..COLORS_KWords_fr.Stealth_rgb_fr.." pendant {duration:%s} secondes, gagnant {movement_speed:%s} de vitesse de déplacement. Quand vous quittez la "..COLORS_KWords_fr.Stealth_rgb_fr.." les ennemis à proximité subissent Suppresion. Attaquer vous fait quitter la "..COLORS_KWords_fr.Stealth_rgb_fr..".\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_rgb_fr,
		-- ["zh-tw"] = "進入 "..COLORS_KWords_tw.Stealth_rgb_tw.." 狀態，並獲得以下狀態：\n"
			-- .."- 恢復全部 "..COLORS_KWords_tw.Tghnss_rgb_tw.." 。\n"
			-- .."- {movement_speed:%s} 的移動速度。\n"
			-- .."- 持續 {duration:%s} 秒。\n"
			-- .."\n"
			-- .."- 離開 "..COLORS_KWords_tw.Stealth_rgb_tw.." 時會壓制周圍敵人。\n"
			-- .."- 任何攻擊都會脫離 "..COLORS_KWords_tw.Stealth_rgb_tw.. " 狀態。\n"
			-- .."- 冷卻時間：{cooldown:%s}"..COLORS_Numbers.n_second_rgb.." 。" ..TALENTS_Enh_desc2_tw.ED_VET_Ability_3_rgb_tw, -- 滲透 -- 恢復所有韌性，進入潛行狀態{duration:%s}秒，獲得{movement_speed:%s}移動速度。脫離潛行時會壓制附近敵人。採取攻擊將使你脫離潛行狀態。\n\n脫離潛行後{after_duration%s}秒內會獲得{threat_multiplier:%s}威脅和{tdr%s}韌性減傷。\n\n基礎冷卻時間：{cooldown:%s}秒。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 3-1 - Overwatch +]--	14.11.2025
	["loc_talent_veteran_combat_ability_extra_charge_description"] = { -- charges: +1, ability_cooldown: +33%
		en = Dot_green.." {charges:%s} "..COLORS_KWords.Combat_ability_rgb.." charge.\n"
			..Dot_red.." {ability_cooldown:%s} Cooldown, up to "..COLORS_Numbers.n__60_rgb.." seconds.\n"
			.."\n"
			..Dot_nc.." The Cooldown of the Second charge only starts after the First charge finished its Cooldown.",
		--[+ СПОСОБНОСТЬ 3-1 - Наблюдение +]-- руоф Прикрытие
		ru = Dot_green.." {charges:%s} заряд "..COLORS_KWords_ru.Combat_ability_rgb_ru..".\n"
			..Dot_red.." {ability_cooldown:%s} к времени восстановления, увеличивается до "..COLORS_Numbers.n__60_rgb.." секунд.\n"
			.."\n"
			..Dot_nc.." Восстановление второго заряда начинается только после завершения восстановления первого заряда.",
		-- fr = "Votre "..COLORS_KWords_fr.Combat_ability_rgb_fr.." gagne {charges:%s} charge, mais {ability_cooldown:%s} de "..COLORS_KWords_fr.Cd_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_2_rgb_fr,
		-- ["zh-tw"] = "獲得 {charges:%s} 次 "..COLORS_KWords_tw.Combat_ability_rgb_tw.." 充能，\n"
		-- .."但技能 "..COLORS_KWords_tw.Cd_rgb_tw.." 將增加 {ability_cooldown:%s}"..COLORS_Numbers.n_second_rgb.." 。"
		-- ..TALENTS_Enh_desc2_tw.ED_VET_Ability_3_2_rgb_tw, -- 低調 --你的戰鬥技能獲得{charges:%s}充能，但冷卻時間增加{ability_cooldown:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 3-2 - Hunter's Resolve +]--	14.11.2025
	["loc_talent_veteran_toughness_bonus_leaving_invisibility_desc"] = { -- talent_name: Infiltrate, tdr: +50%, duration: 10, s->seconds, +colors
		en = Dot_green.." {tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for {duration:%s} seconds upon leaving "..COLORS_KWords.Stealth_rgb..".",
		--[+ СПОСОБНОСТЬ 3-2 - Упорство охотника +]--
		ru = Dot_green.." {tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." на {duration:%s} секунд после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru..".",
		-- fr = "{tdr:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." est fourni par {talent_name:%s} pour {duration:%s} secondes en quittant la "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_3_rgb_fr,
		-- ["zh-tw"] = "離開 "..COLORS_KWords_tw.Stealth_rgb_tw.." 後，\n"
			-- .."- {talent_name:%s} 將提供 {tdr:%s} 的 "..COLORS_KWords_tw.Toughness_dmg_red_u_rgb_tw.." ，\n"
			-- .."- 持續 {duration:%s}"..COLORS_Numbers.n_second_rgb.." 。" ..TALENTS_Enh_desc2_tw.ED_VET_Ability_3_3_rgb_tw, -- 獵手決意 -- 脫離潛行後，{talent_name:%s}提供{tdr%s}韌性減傷，持續{duration%s}秒。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 3-3 - Low Profile +]--	14.11.2025
	["loc_talent_veteran_reduced_threat_after_stealth_desc"] = { -- threat_multiplier: -90%, duration: 10, s->seconds, +colors
		en = Dot_green.." {threat_multiplier:%s} Threat for {duration:%s} seconds on leaving "..COLORS_KWords.Stealth_rgb..".",
		--[+ СПОСОБНОСТЬ 3-3 - Незаметность +]-- руоф Сдержанность
		ru = Dot_green.." {threat_multiplier:%s} к угрозе на {duration:%s} секунд после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru..".",
		-- fr = "{threat_multiplier:%s} Menace pour {duration:%s} secondes en quittant la "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_1_rgb_fr,
		-- ["zh-tw"] = "脫離 "..COLORS_KWords_tw.Stealth_rgb_tw.." 狀態後，\n"
			-- .."{duration:%s} 秒內被攻擊的機率降低至 {threat_multiplier:%s}。"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Ability_3_1_rgb_tw, -- 低調 -- 脫離潛行後{threat_multiplier:%s}威脅，持續{duration:%s}秒。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 3-4 - Close Quarters Killzone +]--	14.11.2025
	["loc_talent_veteran_ability_assault_desc"] = { -- power: +15%, duration: 10, talent_name: Infiltrate, s->seconds, +colors
		en = Dot_green.." {power:%s} "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds to enemies within "..COLORS_Numbers.n_12_5_rgb.." meters on "..COLORS_KWords.Combat_ability_rgb.." use.\n"
			.."Beyond "..COLORS_Numbers.n_12_5_rgb.." meters, the "..COLORS_KWords.Damage_rgb.." buff decreases linearly until it loses its effect at "..COLORS_Numbers.n_30_rgb.." meters:\n"
			.."_______________________________\n"
			.."Distance ("..COLORS_Numbers.n_meter_rgb..")   "..COLORS_Numbers.n_1_rgb.." | "..COLORS_Numbers.n_12_5_rgb.." |   "..COLORS_Numbers.n_15_rgb.." | "..COLORS_Numbers.n_20_rgb.." | "..COLORS_Numbers.n_25_rgb.." | "..COLORS_Numbers.n_30_rgb.."\n"
			..COLORS_KWords.Damage_rgb.." ("..COLORS_Numbers.pc_rgb.."): "..COLORS_Numbers.n_15_rgb.." |    "..COLORS_Numbers.n_15_rgb.." | "..COLORS_Numbers.n__13_rgb.." |  "..COLORS_Numbers.n__9_rgb.." | "..COLORS_Numbers.n__4_rgb.." |   "..COLORS_Numbers.n_0_rgb.."\n"
			.."_______________________________\n"
			..Dot_green.." This also increases the "..COLORS_KWords.Damage_rgb.." of explosions and DoTs as long as Veteran stays within "..COLORS_Numbers.n_30_rgb.." meters to the enemy.\n"
			.."\n"
			..Dot_nc.." When using {talent_name:%s}, this begins on leaving "..COLORS_KWords.Stealth_rgb..".",
		--[+ СПОСОБНОСТЬ 3-4 - Зона ближнего боя +]-- руоф Зона поражения на ближней дистанции
		ru = Dot_green.." {power:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." на расстоянии до "..COLORS_Numbers.n_12_5_rgb.." метров на {duration:%s} секунд после применения "..COLORS_KWords_ru.Combat_ability_rgb_ru..".\n"
			.."\n"
			.."За пределами "..COLORS_Numbers.n_12_5_rgb.." метров, "..COLORS_KWords_ru.Dmg_rgb_ru.." уменьшается линейно, пока не теряет свой эффект на "..COLORS_Numbers.n_30_rgb.." метрах:\n"
			.."_______________________________\n"
			.."Дистанция:   "..COLORS_Numbers.n_1_rgb.." | "..COLORS_Numbers.n_12_5_rgb.." |   "..COLORS_Numbers.n_15_rgb.." | "..COLORS_Numbers.n_20_rgb.." | "..COLORS_Numbers.n_25_rgb.." | "..COLORS_Numbers.n_30_rgb.."\n"
			..COLORS_KWords_ru.DMG_rgb_ru.." ("..COLORS_Numbers.pc_rgb.."):     "..COLORS_Numbers.n_15_rgb.." |     "..COLORS_Numbers.n_15_rgb.." | "..COLORS_Numbers.n__13_rgb.." |  "..COLORS_Numbers.n__9_rgb.." | "..COLORS_Numbers.n__4_rgb.." |   "..COLORS_Numbers.n_0_rgb.."\n"
			.."_______________________________\n"
			..Dot_green.." Это также увеличивает "..COLORS_KWords_ru.Dmg_rgb_ru.." от взрывов и количество "..COLORS_KWords_ru.Dmg_a_rgb_ru.." со временем, пока "..COLORS_KWords_ru.cls_vet_rgb_ru.." находится в пределах "..COLORS_Numbers.n_30_rgb.." метров от врага.\n"
			.."\n"
			..Dot_nc.." При использовании способности {talent_name:%s}, этот талант начинает действовать только после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru..".",
		-- fr = "{power:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." rapprochés pour {duration:%s} secondes Lors de l'utilisation d'une "..COLORS_KWords_fr.Combat_ability_rgb_fr..".\n\nEn utilisant {talent_name:%s}, cela commence en quittant "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_5_rgb_fr,
		-- ["zh-tw"] = "使用"..COLORS_KWords_tw.Combat_ability_rgb_tw.."後："
			-- .."- 距離 "..COLORS_Numbers.n_12_5_rgb..COLORS_Numbers.n_meter_rgb.." 內 {power:%s} "..COLORS_KWords_tw.Damage_rgb_tw.." 。\n"
			-- .."- 持續 {duration:%s} 秒。\n\n"
			-- .."- 使用 {talent_name:%s} 時，\n"
			-- .."- 效果會在離開 "..COLORS_KWords_tw.Stealth_rgb_tw.." 後生效。" ..TALENTS_Enh_desc2_tw.ED_VET_Ability_3_5_rgb_tw, -- 肉搏戰 -- 使用戰鬥技能時可獲得{power%s}近戰傷害加成，持續{duration%s}秒。\n\n當使用{talent_name:%s}時，該效果將於脫離潛行狀態後開始生效。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ KEYSTONE 1 - Marksman's Focus +]--	14.11.2025
	["loc_talent_veteran_snipers_focus_duration_desc"] = { -- stacks: 3, max_stacks: 10, duration: 5, power: +7.5%, reload_speed: +1%, stack(s)->stacks, s->second/seconds, +colors, +note
		en = "Ranged "..COLORS_KWords.Weakspot_rgb.." kills grant {stacks:%s} Stacks of "..COLORS_KWords.Focus_rgb..".\n"
			.."\n"
			..PHRS.Can_proc_mult
			..Dot_nc.." Up to {max_stacks} Max Stacks.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Stacks are refreshed on "..COLORS_KWords.Weakspothit_rgb.." and decay one at a time.\n"
			.."\n"
			.."Each Stack of "..COLORS_KWords.Focus_rgb.." grants:\n"
			..Dot_green.." {power:%s} Ranged "..COLORS_KWords.Finesse_rgb.." strength,\n"
			..Dot_green.." {reload_speed:%s} Reload Speed.\n"
			.."\n"
			..NTS.Fns_note_rgb,
		--[+ КЛЮЧЕВОЙ 1 - Концентрация снайпера +]--
		ru = "Убийства выстрелами в "..COLORS_KWords_ru.Weakspot_rgb_ru.." дают {stacks:%s} заряда "..COLORS_KWords_ru.Focus_rgb_ru..".\n"
			.."\n"
			..PHRS.Can_proc_mult_str_ru
			..Dot_nc.." Максимум {max_stacks} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			..Dot_nc.." Заряды обновляются при попадании в "..COLORS_KWords_ru.Weakspothit_rgb_ru.." и сбрасываются по одному.\n"
			.."\n"
			.."Каждый заряд "..COLORS_KWords_ru.Focus_rgb_ru.." даёт:\n"
			..Dot_green.." {reload_speed:%s} к скорости перезарядки,\n"
			..Dot_green.." {power:%s} к усилению "..COLORS_KWords_ru.Finesse_rgb_ru.." для дальнобойных атак.\n"
			.."\n"
			..NTS.Fns_note_rgb_ru,
		-- fr = "Les tirs à distance sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." octroient {stacks:%s} cumuls de "..COLORS_KWords_fr.Focus_rgb_fr..". Jusqu'à {max_stacks} cumuls maximum. Courir, glisser et marcher supprime les cumuls.\nChaque cumul de "..COLORS_KWords_fr.Focus_rgb_fr.." octroie : {power:%s} de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr.." à distance et {reload_speed:%s} vitesse de rechargement.\nLes élimination sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." à distance permettent de se déplacer sans perdre de cumuls pendant {grace_time:%s} secondes. Les tirs "..COLORS_KWords_fr.Weakspothits_rgb_fr.." permettent de se déplacer sans perdre de cumuls pendant {grace_time_hit:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_1_rgb_fr,
		-- ["zh-tw"] = COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 敵人後可獲得 {stacks:%s} 層 "..COLORS_KWords_tw.Focus_rgb_tw.." 。\n\n"
	-- .."每層 "..COLORS_KWords_tw.Focus_rgb_tw.." 可提供：\n"
	-- ..Dot_green.." {power:%s}  "..COLORS_KWords_tw.Finesse_dmg_r_rgb_tw.." 。\n"
	-- ..Dot_green.." {reload_speed:%s} 裝填速度。\n"
	-- .."\n"
	-- ..Dot_nc.." 最多 {max_stacks} 層。\n"
	-- ..Dot_nc.." 衝刺、滑鏟或行走會消耗 "..COLORS_KWords_tw.Focus_rgb_tw.." 。\n"
	-- .."\n"
	-- .."以下情況移動不會消耗 "..COLORS_KWords_tw.Focus_rgb_tw.." 層數：\n"
	-- ..Dot_nc.." "..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." {grace_time:%s} 秒內可自由移動。\n"
	-- ..Dot_nc.." "..COLORS_KWords_tw.Weakspothits_rgb_tw.." {grace_time_hit:%s} 秒內可自由移動。\n"
	-- .. TALENTS_Enh_desc2_tw.ED_VET_Keystone_1_rgb_tw, -- 狙擊專注 -- 遠程弱點擊殺後獲得{stacks:%s}層專注，最多疊加{max_stacks}層。衝刺、滑鏟或行走會消耗已疊加層數。\n\n每層專注可使你獲得{power:%s}遠程靈巧強度和{reload_speed:%s}換彈速度。\n\n遠程弱點擊殺後的{grace_time:%s}秒內，移動時不會消耗專注層數。遠程弱點命中後的{grace_time_hit:%s}秒內，移動時不會消耗專注層數。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 1-1 - Chink in their Armour +]--	14.11.2025
	["loc_talent_veteran_snipers_focus_rending_bonus_description"] = { -- rending: +10%, stacks: 10, +colors, +note
		en = Dot_green.." {rending:%s} "..COLORS_KWords.Rending_rgb.." when at, or over, {stacks:%s} Stacks of "..COLORS_KWords.Focus_rgb..".\n"
			.."\n"
			..NTS.Rend_note_rgb,
		--[+ КЛЮЧЕВОЙ 1-1 - Щель в их броне +]-- руоф Щель в броне
		ru = Dot_green.." {rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." брони, когда у вас {stacks:%s} или более зарядов "..COLORS_KWords_ru.Focus_rgb_ru..".\n"
			.."\n"
			..NTS.Rend_note_rgb_ru,
		-- fr = "{rending:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." lorsque à, ou au-dessus de, {stacks:%s} cumuls de "..COLORS_KWords_fr.Focus_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_1_1_rgb_fr,
		-- ["zh-tw"] = "當 "..COLORS_KWords_tw.Focus_rgb_tw.." 達到 {stacks:%s} 層以上時：\n"
			-- ..Dot_green.. " {rending:%s} "..COLORS_KWords_tw.Rending_rgb_tw.."。"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Keystone_1_1_rgb_tw, -- 滲透盔甲 -- {stacks:%s}層及以上專注時附加{rending:%s}撕裂效果。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 1-2 - Tunnel Vision +]--	14.11.2025
	["loc_talent_veteran_snipers_focus_stamina_bonus_desc"] = { -- toughness_replenish_multiplier: +5%, stamina: 10%, +colors
		en = Dot_green.." {toughness_replenish_multiplier:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment per "..COLORS_KWords.Focus_rgb.." Stack.\n"
			..PHRS.Dont_intw_coher_toughn.."\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..COLORS_KWords.Stamina_rgb.." restored on "..COLORS_KWords.Weakspot_rgb.." kills.\n"
			..PHRS.Can_proc_mult,
		--[+ КЛЮЧЕВОЙ 1-2 - Тоннельное зрение +]--
		ru = Dot_green.." {toughness_replenish_multiplier:%s} к восстановлению "..COLORS_KWords_ru.Toughness_rgb_ru.." за каждый заряд "..COLORS_KWords_ru.Focus_rgb_ru..".\n"
			..PHRS.Dont_intw_coher_toughn_ru.."\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru.." восстанавливается при убийствах в "..COLORS_KWords_ru.Weakspot_rgb_ru..".\n"
			..PHRS.Can_proc_mult_ru,
		-- fr = "{toughness_replenish_multiplier:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour chaque cumul de "..COLORS_KWords_fr.Focus_rgb_fr..". De plus, les éliminations sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." restaurent {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_1_2_rgb_fr,
		-- ["zh-tw"] = Dot_green.." 每層 "..COLORS_KWords_tw.Focus_rgb_tw.." 可恢復 {toughness_replenish_multiplier:%s} 的 "..COLORS_KWords_tw.Toughness_rgb_tw.." 。\n"
			-- ..Dot_green.." "..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 時額外恢復 {stamina:%s} "..COLORS_KWords_tw.Stamina_rgb_tw.."。"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Keystone_1_2_rgb_tw, -- 視野狹窄 -- 每層專注恢復{toughness_replenish_multiplier:%s}韌性。此外，弱點擊殺也會使你恢復{stamina:%s}耐力。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 1-3 - Long Range Assassin +]--	14.11.2025
	["loc_talent_veteran_snipers_focus_increased_stacks_description"] = { -- stacks: 10, new_stacks: 15, +colors
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_5_rgb.." Maximum "..COLORS_KWords.Focus_rgb.." Stacks. Increased from {stacks:%s} to {new_stacks:%s}.",
		--[+ КЛЮЧЕВОЙ 1-3 - Дальнобойный ассасин +]--
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_5_rgb.." к максимуму зарядов "..COLORS_KWords_ru.Focus_rgb_ru..". Увеличивается с {stacks:%s} до {new_stacks:%s}.",
		-- fr = Dot_green.." Augmente les cumuls maximum de "..COLORS_KWords_fr.Focus_rgb_fr.." de {stacks:%s} à {new_stacks:%s}.",
		-- ["zh-tw"] = Dot_green.." 將 "..COLORS_KWords_tw.Focus_rgb_tw.." 上限從 {stacks:%s} 提高至 {new_stacks:%s}。", -- 遠程刺客 --專注最大疊加層數從{stacks:%s}增加至{new_stacks:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 2 - Focus Target! +]--	14.11.2025
	["loc_talent_veteran_improved_tag_description"] = { -- time: 1.5, max_stacks: 5, damage: +5%, s->seconds, +colors
		en = "Gain "..COLORS_Numbers.n_1_rgb.." Stack of "..COLORS_KWords.Focus_Target_rgb.." every {time:%s} seconds.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			.."Tagging an Enemy applies all "..COLORS_KWords.Focus_Target_rgb.." Stacks to them and resets your Stacks to "..COLORS_Numbers.n_1_rgb..".\n"
			..Dot_nc.." Enemies tagged with this Talent are highlighted Yellow.\n"
			.."\n"
			.."Per Stack, enemy takes:\n"
			.."{damage:%s} "..COLORS_KWords.Damage_rgb..", up to "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_20_rgb.." "..COLORS_KWords.Damage_rgb..".\n"
			..Dot_nc.." Lasts "..COLORS_Numbers.n_25_rgb.." seconds.",
		--[+ КЛЮЧЕВОЙ 2 - Важная цель! +]--
		ru = "Вы получаете "..COLORS_Numbers.n_1_rgb.." заряд "..COLORS_KWords_ru.Focus_Target_rgb_ru.." каждые {time:%s} секунды.\n"
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			.."\n"
			.."Отметка врага применяет все заряды "..COLORS_KWords_ru.Focus_Target_rgb_ru.." к нему и сбрасывает ваши заряды до "..COLORS_Numbers.n_1_rgb..".\n"
			..Dot_nc.." Враги, отмеченные этим талантом, подсвечиваются жёлтым цветом.\n"
			.."\n"
			.."За каждый заряд враг получает:\n"
			.."{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..", до "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_20_rgb..".\n"
			..Dot_nc.." Длится "..COLORS_Numbers.n_25_rgb.." секунд.",
		-- fr = "Gagnez "..COLORS_KWords_fr.Focus_Target_rgb_fr.." toutes les {time:%s} secondes. Cumulable jusqu'à {max_stacks:%s} fois.\nMarquer un ennemi applique les cumuls de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." sur lui, le faisant subir {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." supplémentaire par cumul, et réinitialise vos cumuls de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." à "..COLORS_Numbers.n_1_rgb.."."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_2_rgb_fr,
		-- ["zh-tw"] = "每 {time:%s} 秒獲得一層 "..COLORS_KWords_tw.Focus_Target_rgb_tw.." ，最多 {max_stacks:%s} 層。\n\n"
			-- ..Dot_nc.." 標記時，套用全部 "..COLORS_KWords_tw.Focus_Target_rgb_tw.." 層數。\n"
			-- ..Dot_nc.." 該敵人每層將額外受到 {damage:%s} "..COLORS_KWords_tw.Dmg_a_rgb_tw.." 。\n"
			-- ..Dot_nc.." "..COLORS_KWords_tw.Focus_Target_rgb_tw.." 會重置為 "..COLORS_Numbers.n_1_rgb.."。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Keystone_2_rgb_tw, -- 鎖定目標 -- 每{time:%s}秒獲得一次鎖定目標效果（可疊加{max_stacks:%s}層）。\n\n標記敵人將對其施加鎖定目標效果，每一層鎖定目標將使敵人受到{damage:%s}額外傷害，其後鎖定目標效果層數重置為1。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 2-1 - Target Down! +]--	14.11.2025
	["loc_talent_veteran_improved_tag_dead_bonus_description"] = { -- toughness: 5%, stamina: 5%, +colors
		en = "When an enemy tagged with "..COLORS_KWords.Focus_Target_rgb.." dies, you and Allies in "..COLORS_KWords.Coherency_rgb.." restore per Stack:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." and\n"
			..Dot_green.." {stamina:%s} "..COLORS_KWords.Stamina_rgb..".",
		--[+ КЛЮЧЕВОЙ 2-1 - Цель поражена! +]--
		ru = "Когда враг, отмеченный как "..COLORS_KWords_ru.Focus_Targt_rgb_ru..", умирает, вы и союзники в "..COLORS_KWords_ru.Coherency_rgb_ru.." восстанавливаете за каждый заряд:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и\n"
			..Dot_green.." {stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru..".",
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." et {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." sont récuperés  pour chaque cumul de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." appliqué lorsqu'un ennemi marqué meurt, pour vous et vos alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_2_1_rgb_fr,
		-- ["zh-tw"] = "當擊殺 "..COLORS_KWords_tw.Focus_Target_s_rgb_tw.." 的敵人時，\n"
			-- .."你與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友獲得以下效果：\n"
			-- ..Dot_green.." 每層 "..COLORS_KWords_tw.Focus_Target_rgb_tw.." 恢復 {toughness:%s}  "..COLORS_KWords_tw.Toughness_m_rgb_tw.."。\n"
			-- ..Dot_green.." 每層 "..COLORS_KWords_tw.Focus_Target_rgb_tw.." 恢復 {stamina:%s}  "..COLORS_KWords_tw.Stamina_m_rgb_tw.."。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Keystone_2_1_rgb_tw, -- 目標擊倒! -- 若標記的敵人死亡，每一層鎖定目標效果為你和協同中的隊友恢復{toughness:%s}韌性和{stamina:%s}耐力。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 2-2 - Redirect Fire! +]--	14.11.2025
	["loc_talent_veteran_improved_tag_dead_coherency_bonus_description"] = { -- damage: +2.5%, duration: 10, s->seconds, +colors
		en = "When an enemy tagged with "..COLORS_KWords.Focus_Target_rgb.." dies, you and Allies in "..COLORS_KWords.Coherency_rgb.." gain per Stack:\n"
			..Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		--[+ КЛЮЧЕВОЙ 2-2 - Перевести огонь! +]--
		ru = "Когда враг, отмеченный как "..COLORS_KWords_ru.Focus_Targt_rgb_ru..", умирает, вы и союзники в "..COLORS_KWords_ru.Coherency_rgb_ru.." получаете за каждый заряд:\n"
			..Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.",
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." est accordé pour chaque cumul de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." appliqué lorsqu'un ennemi marqué meurt, pour vous et vos alliés en syntonie. Dure {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_2_2_rgb_fr,
		-- ["zh-tw"] = "當擊殺 "..COLORS_KWords_tw.Focus_Target_s_rgb_tw.." 的敵人時，\n"
			-- .."你與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友獲得以下效果：\n"
			-- .."\n"
			-- ..Dot_green.." 每層 "..COLORS_KWords_tw.Focus_Target_rgb_tw.." 增加 {damage:%s} "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"
			-- ..Dot_nc.."  持續 {duration:%s} 秒。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Keystone_2_2_rgb_tw, -- 轉移火力! --若標記的敵人死亡，每一層鎖定目標效果為你和協同中的隊友減傷{damage:%s}，持續{duration:%s}秒。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 2-3 - Focused Fire +]--	14.11.2025
	["loc_talent_veteran_improved_tag_more_damage_description"] = { -- max_stacks: 6, +colors
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_2_rgb.." Maximum "..COLORS_KWords.Focus_Target_rgb.." Stacks. Increased from "..COLORS_Numbers.n_4_rgb.." to {max_stacks:%s}.",
		--[+ КЛЮЧЕВОЙ 2-3 - Сосредоточенный огонь +]--
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_2_rgb.." к максимуму зарядов "..COLORS_KWords_ru.Focus_Target_rgb_ru..". Увеличивается с "..COLORS_Numbers.n_4_rgb.." до {max_stacks:%s}.",
		-- fr = "Le nombre maximum de cumul de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." est augmentés de "..COLORS_Numbers.n_5_rgb.." à {max_stacks:%s}.",
		-- ["zh-tw"] = "提高 "..COLORS_KWords_tw.Focus_Target_rgb_tw.." 的最大層數：\n"
			-- ..Dot_green.." 從 "..COLORS_Numbers.n_5_rgb.." 層提高至 {max_stacks:%s} 層。", -- 集中火力 --鎖定目標最大層數增加至{max_stacks:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 3 - Weapons Specialist +]--	14.11.2025
	["loc_talent_veteran_weapon_switch_new_description"] = { -- ranged_stacks: 10, melee_stacks: 1, ranged_attack_speed: +2%, reload_speed: 2%, ranged_crit_chance: +33%, ranged_duration: 5, melee_attack_speed: +15%, dodge_modifier: 10%, melee_duration: 10, s->seconds, +colors
		en = "Gain "..COLORS_KWords.Rangedspec_rgb.." on Melee kills.\n"
			..Dot_nc.." Stacks {ranged_stacks:%s} times.\n"
			.."\n"
			.."Gain "..COLORS_KWords.Meleespec_rgb.." on Ranged kill.\n"
			..Dot_nc.." Stacks {melee_stacks:%s} times.\n"
			.."\n"
			.."When you wield your Ranged weapon, you activate your "..COLORS_KWords.Rangedspec_rgb.." effect, to gain per Stack:\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{reload_speed:%s} Reload Speed, up to "..COLORS_Numbers.pc_20_rgb..",\n"
			..Dot_green.." {ranged_attack_speed:%s} Ranged Attack Speed, up to "..COLORS_Numbers.pc_20_rgb..",\n"
			..Dot_green.." {ranged_crit_chance:%s} Ranged "..COLORS_KWords.Crit_hit_rgb.." Chance on your next shot. Guaranteed "..COLORS_KWords.Crit_rgb.." at "..COLORS_Numbers.n_3_rgb.." Stacks.\n"
			..Dot_nc.." Lasts {ranged_duration:%s} seconds.\n"
			.."\n"
			.."When you wield your Melee weapon, you activate your "..COLORS_KWords.Meleespec_rgb.." effect, to gain:\n"
			..Dot_green.." {melee_attack_speed:%s} Melee Attack Speed,\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{dodge_modifier:%s} Dodge Speed,\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{dodge_modifier:%s} Dodge Distance.\n"
			..Dot_nc.." Lasts {melee_duration:%s} seconds.",
		--[+ КЛЮЧЕВОЙ 3 - Специалист по оружию +]-- руоф Специалист по вооружениям
		ru = "Вы получаете заряды "..COLORS_KWords_ru.Rangedspec_rgb_ru.." за убийства в ближнем бою.\n"
			..Dot_nc.." Суммируется до {ranged_stacks:%s} раз.\n"
			.."\n"
			.."Вы получаете заряд "..COLORS_KWords_ru.Meleespec_rgb_ru.." за убийство в дальнем бою.\n"
			..Dot_nc.." Суммируется {melee_stacks:%s} раз.\n"
			.."\n"
			.."Когда вы берёте в руки оружие дальнего боя, вы активируете эффект "..COLORS_KWords_ru.Rangedspec_rgb_ru.." и получаете за каждый заряд:\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{reload_speed:%s} к скорости перезарядки, до максимум "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_20_rgb..",\n"
			..Dot_green.." {ranged_attack_speed:%s} к скорострельности, до максимум "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_20_rgb..",\n"
			..Dot_green.." {ranged_crit_chance:%s} к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." для вашего следующего выстрела. Гарантированный "..COLORS_KWords_ru.Crit_chance_l_rgb_ru.." при "..COLORS_Numbers.n_3_rgb.." зарядах.\n"
			..Dot_nc.." Длится {ranged_duration:%s} секунд.\n"
			.."\n"
			.."Когда вы берёте в руки оружие ближнего боя, вы активируете эффект "..COLORS_KWords_ru.Meleespec_rgb_ru.." и получаете:\n"
			..Dot_green.." {melee_attack_speed:%s} к скорости атаки,\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{dodge_modifier:%s} к скорости уклонений,\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{dodge_modifier:%s} к дистанции уклонений.\n"
			..Dot_nc.." Длится {melee_duration:%s} секунд.",
		-- fr = "Obtenez "..COLORS_KWords_fr.Rangedspec_rgb_fr.." en éliminant des ennemis en mêlée. Cumule jusqu'à {ranged_stacks:%s} fois.\nObtenez "..COLORS_KWords_fr.Meleespec_rgb_fr.." en éliminant des ennemis à distance. Cumule jusqu'à {melee_stacks:%s} fois.\n\nLorsque vous maniez votre arme à distance, vous activez votre effet "..COLORS_KWords_fr.Rangedspec_rgb_fr..", pour obtenir :\n{ranged_attack_speed:%s} Vitesse d'attaque à distance et\n{ranged_crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_r_rgb_fr.." à distance lors de votre prochain tir, par cumul. Dure {ranged_duration:%s} secondes.\n\nLorsque vous maniez votre arme de mêlée, vous activez votre effet "..COLORS_KWords_fr.Meleespec_rgb_fr..", pour obtenir :\n{melee_attack_speed:%s} Vitesse d'attaque au corps à corps,\n"..COLORS_Numbers.n_plus_rgb.."{dodge_modifier:%s} Vitesse d'esquive et Distance d'esquive. Dure {melee_duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_rgb_fr,
		-- ["zh-tw"] = "當你使用近戰武器擊殺敵人時，\n"
			-- ..Dot_green.." 獲得一層 "..COLORS_KWords_tw.Rangedspec_rgb_tw.."，可累積至 {ranged_stacks:%s} 層。\n"
			-- .."\n"
			-- .."當你使用遠程武器擊殺敵人時，\n"
			-- ..Dot_green.." 獲得一層 "..COLORS_KWords_tw.Meleespec_rgb_tw.."，可累積至 {melee_stacks:%s} 層。\n"
			-- .."\n"
			-- .."裝備遠程武器時，\n"
			-- .."將啟動 "..COLORS_KWords_tw.Rangedspec_rgb_tw.." 效果，每層提供：\n"
			-- ..Dot_green.." {ranged_attack_speed:%s} 遠程攻擊速度。\n"
			-- ..Dot_green.." {ranged_crit_chance:%s} "..COLORS_KWords_tw.Crt_u_chance_rgb_tw.."。\n"
			-- ..Dot_nc.."  效果持續 {ranged_duration:%s} 秒。\n"
			-- .."\n"
			-- .."裝備近戰武器時，\n"
			-- .."將啟動 "..COLORS_KWords_tw.Meleespec_rgb_tw.." 效果，提供：\n"
			-- ..Dot_green.." {melee_attack_speed:%s} 近戰攻擊速度。\n"
			-- ..Dot_green.." {dodge_modifier:%s} 閃避速度與距離。\n"
			-- ..Dot_nc.."  效果持續 {melee_duration:%s} 秒。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Keystone_3_rgb_tw, -- 武器專家 --近戰擊殺後獲得遠端專家效果（可疊加{ranged_stacks:%s}層）。遠端擊殺後獲得近戰專家效果（可疊加{melee_stacks:%s}層）。\n\n裝備遠端武器時，啟動遠端專家效果，每層效果使你的下一次射擊獲得{ranged_attack_speed:%s}遠端攻擊速度和{ranged_crit_chance:%s}遠程暴擊幾率，持續{ranged_duration:%s}秒。\n\n裝備近戰武器後，啟動近戰專家效果，使你獲得{melee_attack_speed:%s}近戰攻擊速度，{dodge_modifier:%s}閃避速度和閃避距離。持續{melee_duration:%s}秒。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 3-1 - Always Prepared +]--	14.11.2025
	["loc_talent_veteran_weapon_switch_replenish_ammo_description"] = { -- ammo: 3.3%, +colors
		en = "On activation, "..COLORS_KWords.Rangedspec_rgb.." restores from Reserves per Stack:\n"
			..Dot_green.." {ammo:%s} of your missing Clip ammo, up to "..COLORS_Numbers.pc_33_rgb..".\n"
			..Dot_nc.." Rounded up.",
		--[+ КЛЮЧЕВОЙ 3-1 - Всегда готов +]--
		ru = "При активации "..COLORS_KWords_ru.Rangedspec_rgb_ru.." вы заряжаете в ваш магазин из резерва за каждый заряд:\n"
			..Dot_green.." {ammo:%s} недостающих патронов, до максимальных "..COLORS_Numbers.pc_33_rgb..".\n"
			..Dot_nc.." Округляется в большую сторону.",
		-- fr = "L'activation de "..COLORS_KWords_fr.Rangedspec_rgb_fr.." recharge jusqu'à {ammo:%s} de vos munitions manquantes dans votre chargeur à partir de votre réserve, arrondi au supérieur, par cumul."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_1_rgb_fr,
		-- ["zh-tw"] = "啟動 "..COLORS_KWords_tw.Rangedspec_rgb_tw.." 時，\n"
			-- .."\n"
			-- ..Dot_green.." 每層可補充 "..COLORS_Numbers.pc_33_rgb.." 彈匣的彈藥，\n"
			-- ..Dot_nc.." 從備彈中補至彈匣內。\n"
			-- ..Dot_nc.." 以無條件進位方式計算。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Keystone_3_1_rgb_tw, -- 有備無患 -- 激活遠程專家時每層效果將為彈藥儲備中補充最多{ammo:%s}的彈藥損失，向上取整。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 3-2 - Invigorated +]--	14.11.2025
	["loc_talent_veteran_weapon_switch_replenish_stamina_new_description"] = { -- stamina: 20%, stamina_reduction: 25%, +colors
		en = "On activation, "..COLORS_KWords.Meleespec_rgb.." grants you for {duration:%s} seconds:\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{stamina:%s} Maximum "..COLORS_KWords.Stamina_rgb..",\n"
			..Dot_green.." {stamina_reduction:%s} "..COLORS_KWords.Stamina_rgb.." Cost Reduction.",
		--[+ КЛЮЧЕВОЙ 3-2 - Ободрение +]--
		ru = "При активации "..COLORS_KWords_ru.Meleespec_rgb_ru.." даёт вам на {duration:%s} секунды:\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{stamina:%s} к максимуму "..COLORS_KWords_ru.Stamina_rgb_ru..",\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{stamina_reduction:%s} от затрат "..COLORS_KWords_ru.Stamina_rgb_ru..".",
		-- fr = "L'activation de "..COLORS_KWords_fr.Meleespec_rgb_fr.." restaure {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_2_rgb_fr,
		-- ["zh-tw"] = "啟動 "..COLORS_KWords_tw.Meleespec_rgb_tw.." 時，\n"
			-- ..Dot_green.." 恢復 {stamina:%s} "..COLORS_KWords_tw.Stamina_rgb_tw.."。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Keystone_3_2_rgb_tw, -- 活力煥發 -- 激活近戰專家使恢復{stamina:%s}耐力。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 3-3 - On Your Toes +]--	14.11.2025
	["loc_talent_veteran_weapon_switch_replenish_toughness_description"] = { -- toughness: 20%, cooldown: 3, s->seconds, +colors
		en = "Activating "..COLORS_KWords.Meleespec_rgb.." or "..COLORS_KWords.Rangedspec_rgb.." replenishes:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb..".\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds each.",
		--[+ КЛЮЧЕВОЙ 3-3 - Наготове +]--
		ru = "Активация "..COLORS_KWords_ru.Meleespec_rgb_ru.." или "..COLORS_KWords_ru.Rangedspec_rgb_ru.." восполняет:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..".\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунды каждый.",
		-- fr = "L'activation de "..COLORS_KWords_fr.Meleespec_rgb_fr.." et "..COLORS_KWords_fr.Rangedspec_rgb_fr.." restaure {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr..". Temps de recharge de {cooldown:%s} secondes pour chacun."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_3_rgb_fr,
		-- ["zh-tw"] = "啟動 "..COLORS_KWords_tw.Meleespec_rgb_tw.." 或 "..COLORS_KWords_tw.Rangedspec_rgb_tw.." 時，\n"
			-- ..Dot_green.." 恢復 {toughness:%s} "..COLORS_KWords_tw.Toughness_rgb_tw.."。\n"
			-- ..Dot_nc.." 每次冷卻為 {cooldown:%s} 秒。\n"
			-- ..TALENTS_Enh_desc2_tw.ED_VET_Keystone_3_3_rgb_tw, -- 時刻警覺 
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Exhilarating Takedown +]--	14.11.2025
	["loc_talent_veteran_toughness_on_weakspot_kill_alt_desc"] = { -- toughness: 15%, toughness_damage_reduction: +10%, duration: 8, stacks: 3, s->seconds, +colors
		en = "On Ranged "..COLORS_KWords.Weakspot_rgb.." Kill, you gain:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb..",\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..PHRS.Can_proc_mult
			..PHRS.Can_be_refr_drop_1,
		--[+ Пассивный 1 - Подбадривающее убийство +]-- руоф Бодрящее сокрушение
		ru = "При убийстве в "..COLORS_KWords_ru.Weakspot_rgb_ru.." из дальнобойного оружия вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..",\n"
			..Dot_green.." {toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			..Dot_nc.." Суммируется {stacks:%s} раза.\n"
			.."\n"
			..PHRS.Can_proc_mult_str_ru
			..PHRS.Can_be_refr_drop_1_ru,
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." est récuperés et "..COLORS_Numbers.n_1_rgb.." cumul de {toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." est gagné pour {duration:%s} secondes lors d'une élimination à distance sur "..COLORS_KWords_fr.Weakspot_rgb_fr..". Cumule jusqu'à {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_VET_Passive_4_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 2 - Confirmed Kill +]--	14.11.2025
	["loc_talent_veteran_toughness_on_elite_kill_desc"] = { -- toughness: 10%, toughness_over_time: 20%, duration: 10, s->seconds, +colors
		en = "On Elite or Specialist Kill:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." restored instantly,\n"
			..Dot_green.." "..COLORS_Numbers.pc_2_rgb.." "..COLORS_KWords.Toughness_rgb.." per second, up to {toughness_over_time:%s} over {duration:%s} seconds.\n"
			.."\n"
			..PHRS.Can_proc_mult,
		--[+ Пассивный 2 - Подтверждённое убийство +]-- руоф Подтвержденное убийство
		ru = "При убийстве элитного врага или специалиста:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается мгновенно и ещё\n"
			..Dot_green.." "..COLORS_Numbers.pc_2_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду, вплоть до {toughness_over_time:%s} в течение {duration:%s} секунд.\n"
			.."\n"
			..PHRS.Can_proc_mult_ru,
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." est restauré lors d'une éliminant d'élite ou de spécialiste, et {toughness_over_time:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." supplémentaire pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_7_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 3 - Out for Blood +]--	14.11.2025
	["loc_talent_veteran_all_kills_replenish_toughness_description"] = { -- toughness: 5%, +colors
		en = Dot_green.." {toughness:%s} of Maximum "..COLORS_KWords.Toughness_rgb.." replenished on any Kill.\n"
			.."\n"
			..Dot_green.." Procs on Melee and Ranged kills as well as on kills from explosions and DoTs.",
		--[+ Пассивный 3 - На тропе войны +]-- руоф В поисках крови
		ru = Dot_green.." {toughness:%s} максимальной "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при любом убийстве.\n"
			.."\n"
			..Dot_green.." Срабатывает при убийствах в ближнем и дальнем бою, а также при убийствах от взрывов и эффектов наносящих урон с течением времени.",
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." supplémentaire est restauré avec chaque élimination."..TALENTS_Enh_desc2_fr.ED_VET_Passive_9_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 4 - Volley Adept +]--	14.11.2025
	["loc_talent_veteran_reload_speed_on_elite_kill_desc"] = { -- reload_speed: +30%, &->and
		en = Dot_green.." {reload_speed:%s} Reload Speed on Elite and Specialist Enemy Kill.\n"
			.."\n"
			..Dot_nc.." Consumed on Reload.\n"
			..Dot_nc.." This also increases the speed of the loading special action of Combat Shotguns.",
		--[+ Пассивный 4 - Умелый залп +]-- руоф Адепт залпа
		ru = Dot_green.." {reload_speed:%s} к скорости перезарядки при убийстве элитных врагов или специалистов.\n"
			.."\n"
			..Dot_nc.." Расходуется при перезарядке.\n"
			..Dot_nc.." Этот талант также увеличивает скорость перезарядки специальных патронов для боевых дробовиков.",
		-- fr = "{reload_speed:%s} vitesse de rechargement lors de l'élimination d'un ennemi d'élite ou spécialiste."..TALENTS_Enh_desc2_fr.ED_VET_Passive_5_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 5 - Longshot +]--	14.11.2025
	["loc_talent_veteran_increased_damage_based_on_range_new_desc"] = { -- ranged_damage: +20%, ranged_close: 12.5, max_ranged_damage: +25%, ranged_far: 30, +colors
		en = Dot_green.." {ranged_damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." at a distance within {ranged_close:%s} meters.\n"
			.."\n"
			.."Against targets beyond {ranged_close:%s} meters, Ranged "..COLORS_KWords.Damage_rgb.." increases linearly up to {max_ranged_damage:%s} at {ranged_far:%s} meters:\n"
			.."_______________________________\n"
			.."Distance ("..COLORS_Numbers.n_meter_rgb.."):   "..COLORS_Numbers.n_1_rgb.."| {ranged_close:%s}|   "..COLORS_Numbers.n_15_rgb.."|  "..COLORS_Numbers.n_20_rgb.."|   "..COLORS_Numbers.n_25_rgb.."|  "..COLORS_Numbers.n_30_rgb.."\n"
			..COLORS_KWords.Damage_rgb.." ("..COLORS_Numbers.pc_rgb.."):  "..COLORS_Numbers.n_10_rgb.."|    "..COLORS_Numbers.n_10_rgb.."| "..COLORS_Numbers.n__12_rgb.."| "..COLORS_Numbers.n__16_rgb.."| "..COLORS_Numbers.n__20_rgb.."|  "..COLORS_Numbers.n_25_rgb.."\n"
			.."_______________________________\n",
		--[+ Пассивный 5 - Дальнобойный выстрел +]-- руоф Далекая перспектива
		ru = Dot_green.." {ranged_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в дальнем бою на расстоянии до {ranged_close:%s} метров.\n"
			.."\n"
			.."Против целей за пределами {ranged_close:%s} метров, "..COLORS_KWords_ru.Dmg_rgb_ru.." в дальнем бою увеличивается линейно до {max_ranged_damage:%s} на {ranged_far:%s} метрах:\n"
			.."_______________________________\n"
			.."Дистанция:   "..COLORS_Numbers.n_1_rgb.."| {ranged_close:%s}|   "..COLORS_Numbers.n_15_rgb.."|  "..COLORS_Numbers.n_20_rgb.."|   "..COLORS_Numbers.n_25_rgb.."|  "..COLORS_Numbers.n_30_rgb.."\n"
			..COLORS_KWords_ru.DMG_rgb_ru.." ("..COLORS_Numbers.pc_rgb.."):     "..COLORS_Numbers.n_10_rgb.."|    "..COLORS_Numbers.n_10_rgb.."| "..COLORS_Numbers.n__12_rgb.."| "..COLORS_Numbers.n__16_rgb.."| "..COLORS_Numbers.n__20_rgb.."|  "..COLORS_Numbers.n_25_rgb.."\n"
			.."_______________________________\n",
		-- fr = "Inflige jusqu'à {max_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de base à distance. Le bonus est réduit plus la cible est proche."..TALENTS_Enh_desc2_fr.ED_VET_Passive_1_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 6 - Covering Fire +]--	14.11.2025
	["loc_talent_veteran_replenish_toughness_and_boost_allies_desc"] = { -- radius: 8, toughness: 15%, base_damage: +15%, duration: 6, &->and s->seconds, +colors
		en = "When you Kill an Enemy with a Ranged Attack, Allies within {radius:%s} meters of the target gain:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb..",\n"
			..Dot_green.." {base_damage:%s} to all Base "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds.\n"
			.."\n"
			..PHRS.Can_be_refr,
		--[+ Пассивный 6 - Прикрывающий огонь +]-- руоф Прикрытие огнем
		ru = "Когда вы убиваете врага из оружия дальнего боя, союзники в радиусе {radius:%s} метров от цели получают:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и\n"
			..Dot_green.." {base_damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд.\n"
			.."\n"
			..PHRS.Can_be_refr_ru,
		-- fr = "Lorsque d'une élimination à distance, les alliés dans un rayon de {radius:%s} mètres de la cible régénèrent {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." et reçoivent {base_damage:%s} à tous les "..COLORS_KWords_fr.Damage_rgb_fr.." de base pour {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_13_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 7 - One Motion +]--	14.11.2025
	["loc_talent_veteran_reduce_swap_time_desc"] = { -- swap_speed: +50%
		en = Dot_green.." {swap_speed} Swap Speed.\n"
			.."\n"
			..Dot_nc.." This Reduces the time of wielding actions when Swapping item slots (Weapons, Grenades, Stimms, Medpacks, Ammo crates, Books, etc).",
		--[+ Пассивный 7 - В одно движение +]-- руоф Одно движение
		ru = Dot_green.." {swap_speed} к скорости смены оружия и предметов.\n"
			.."\n"
			..Dot_nc.." Этот талант сокращает время затрачиваемое на смену слотов предметов (оружие, гранаты, стимуляторы, аптечки, ящики с боеприпасами, книги и т.д.).",
		-- fr = "{swap_speed:%s} Vitesse de changement d'arme."..TALENTS_Enh_desc2_fr.ED_VET_Passive_3_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 8 - Tactical Reload +]--	14.11.2025
	["loc_talent_veteran_reload_speed_non_empty_mag_desc"] = { -- reload_speed: +25%
		en = Dot_green.." {reload_speed:%s} Reload Speed if your Weapon contains Ammo.\n"
			.."\n"
			..Dot_nc.." This also increases the speed of the loading special action of Combat Shotguns.",
		--[+ Пассивный 8 - Тактическая перезарядка +]--
		ru = Dot_green.." {reload_speed:%s} к скорости перезарядки, если в магазине остались патроны.\n"
			.."\n"
			..Dot_nc.." Этот талант также увеличивает скорость перезарядки специальных патронов для боевых дробовиков.",
		-- fr = "{reload_speed:%s} vitesse de rechargement si votre arme contient des munitions."..TALENTS_Enh_desc2_fr.ED_VET_Passive_8_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 9 - Close Order Drill +]--	14.11.2025
	["loc_talent_veteran_toughness_damage_reduction_per_ally_description"] = { -- toughness: +33%, +colors
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_11_rgb.." "..COLORS_KWords.Toughness_dmg_red_rgb.." per Ally in "..COLORS_KWords.Coherency_rgb..". Stacks up to {toughness:%s}.",
		--[+ Пассивный 9 - Строевая подготовка +]--
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_11_rgb.." к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." за каждого союзника в "..COLORS_KWords_ru.Coherency_rgb_ru..". Суммируется до {toughness:%s}.",
		-- fr = COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_11_rgb.." de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." par allié en syntonie. Jusqu'à {toughness:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Passive_2_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 10 - Superiority Complex +]--	14.11.2025
	["loc_talent_veteran_increase_damage_vs_elites_desc"] = { -- damage: +15%, +colors
		en = Dot_green.." {damage:%s} Base "..COLORS_KWords.Damage_rgb.." to Elite Enemies.",
		--[+ Пассивный 10 - Мания величия +]--
		ru = Dot_green.." {damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." по элитным врагам.",
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pour les ennemis d'élite."..TALENTS_Enh_desc2_fr.ED_VET_Passive_34_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 11 - Iron Will +]--	14.11.2025
	["loc_talent_veteran_tdr_on_high_toughness_desc"] = { -- toughness_damage_reduction: +50%, toughness_percent: 75%, +colors
		en = Dot_green.." {toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." if above {toughness_percent:%s} "..COLORS_KWords.Toughness_rgb..".",
		--[+ Пассивный 11 - Железная воля +]--
		ru = Dot_green.." {toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru..", если ваш уровень "..COLORS_KWords_ru.Toughness_rgb_ru.." выше {toughness_percent:%s}.",
		-- fr = "{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." si au-dessus de {toughness_percent:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Passive_35_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 12 - Trench Fighter Drill +]--	14.11.2025
	["loc_talent_veteran_attack_speed_description"] = { -- melee_attack_speed: +10%
		en = Dot_green.." {melee_attack_speed:%s} Melee Attack Speed.",
		--[+ Пассивный 12 - Отработка окопного боя +]-- руоф Тренировка в окопах
		ru = Dot_green.." {melee_attack_speed:%s} к скорости атак ближнего боя.",
		-- fr = "{melee_attack_speed:%s} Vitesse d'attaque de mêlée."..TALENTS_Enh_desc2_fr.ED_VET_Passive_39_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 13 - Field Improvisation +]--	14.11.2025
	["loc_talent_veteran_better_deployables_description"] = { -- damage_heal: +100%, toughness: 1%, &->and, +colors
		en = "Medi-Packs provide:\n"
			..Dot_green.." {damage_heal:%s} Healing Speed,\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." per second,\n"
			..Dot_green.." Cleanse "..COLORS_KWords.Corruption_rgb.." up to the next "..COLORS_KWords.Wound_rgb..".\n"
			.."\n"
			..Dot_green.." Ammo Crates also restore Grenades.",
		--[+ Пассивный 13 - Полевая импровизация +]--
		ru = "Медпаки дают:\n"
			..Dot_green.." {damage_heal:%s} к скорости лечения,\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду и\n"
			..Dot_green.." очищают "..COLORS_KWords_ru.Corruption_u_rgb_ru.." вплоть до следующей "..COLORS_KWords_ru.Wound_y_rgb_ru..".\n"
			.."\n"
			..Dot_green.." Ящики с боеприпасами также восстанавливают гранаты.",
		-- fr = "Caisse médical:\nSoignent {damage_heal:%s} plus rapidement,\nRégénèrent {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par seconde,\nPurifie "..COLORS_KWords_fr.Corruption_rgb_fr.." jusqu'à la prochaine "..COLORS_KWords_fr.Wound_rgb_fr..".\n\nLes caisses de munitions restaurent également les grenades."..TALENTS_Enh_desc2_fr.ED_VET_Passive_18_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 14 - Get Back in the Fight! +]--	14.11.2025
	["loc_talent_veteran_movement_bonus_on_toughness_broken_desc"] = { -- duration: 6, stamina_percent: +50%, cooldown: 30, &->and, s->seconds, +colors
		en = "When your "..COLORS_KWords.Toughness_rgb.." is broken, you gain:\n"
			..Dot_green.." "..COLORS_KWords.Stun_rgb.." Immunity for {duration:%s} seconds,\n"
			..Dot_green.." Slow Immunity for {duration:%s} seconds,\n"
			..Dot_green.." {stamina_percent:%s} Maximum "..COLORS_KWords.Stamina_rgb..".\n"
			.."\n"
			..Dot_nc.." Cooldown {cooldown:%s} seconds.",
		--[+ Пассивный 14 - Возвращайся в бой! +]-- руоф Вернуться в бой!
		ru = "Когда ваша "..COLORS_KWords_ru.Toughness_rgb_ru.." пробита, вы получаете:\n"
			..Dot_green.." Иммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru.." и\n"
			..Dot_green.." Иммунитет к замедлению на {duration:%s} секунд, а также восстанавливаете\n"
			..Dot_green.." {stamina_percent:%s} максимальной "..COLORS_KWords_ru.Stamina_rgb_ru..".\n"
			.."\n"
			..Dot_nc.." Восстановление {cooldown:%s} секунд.",
		-- fr = "{stamina_percent:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." est restauré, avec une immunité au "..COLORS_KWords_fr.Stuns_rgb_fr.." et au ralentissement, pendant {duration:%s} secondes lorsque la "..COLORS_KWords_fr.Toughness_rgb_fr.." tombe à "..COLORS_Numbers.n_0_rgb..".\n\n{cooldown:%s} secondes de recharge."..TALENTS_Enh_desc2_fr.ED_VET_Passive_10_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 15 - Opening Salvo +]--	14.11.2025
	["loc_talent_veteran_bonus_crit_chance_on_ammo_desc"] = { -- ammo: 20%, crit_chance: +10%, +colors
		en = Dot_green.." {crit_chance:%s} Ranged "..COLORS_KWords.Crit_hit_rgb.." Chance for the first {ammo:%s} of Ammo after a Reload.",
		--[+ Пассивный 15 - Открывающий залп +]--
		ru = Dot_green.." {crit_chance:%s} к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.." для первых {ammo:%s} патронов после перезарядки.",
		-- fr = "Les premières {ammo:%s} munitions après un rechargement ont {crit_chance:%s} de "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.." à distance."..TALENTS_Enh_desc2_fr.ED_VET_Passive_17_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

-- !!! DOUBLE! ZEALOT - Passive 28 - Ambuscade !!!
	--[+ Passive 16 - Covert Operative +]--	14.11.2025
		--[+ Пассивный 16 - Секретный агент +]-- руоф Тайный оперативник
	-- ["loc_talent_zealot_increased_flanking_damage_description"] = { -- damage: +30%, +colors },

	--[+ Passive 17 - Serrated Blade +]--	14.11.2025
	["loc_talent_veteran_hits_cause_bleed_desc"] = { -- stacks: 2 -- Stack(s)->Stacks, +colors
		en = "{stacks:%s} Stacks of "..COLORS_KWords.Bleed_rgb.." to the target on Melee Hit.\n"
			..Dot_nc.." Up to "..COLORS_Numbers.n_16_rgb.." Stacks.\n"
			..Dot_nc.." Lasts "..COLORS_Numbers.n_1_5_rgb.." seconds.\n"
			..Dot_nc.." Ticks every "..COLORS_Numbers.n_05_rgb.." seconds.\n"
			.."\n"
			..PHRS.Refr_dur_stappl.."\n"
			..Dot_green.." Above average armor "..COLORS_KWords.Damage_rgb.." modifiers across the board.\n"
			..Dot_red.." Low armor "..COLORS_KWords.Damage_rgb.." modifier against Carapace.\n"
			..PHRS.Cant_appl_thr_shlds,
		--[+ Пассивный 17 - Зазубренный клинок +]-- руоф Зазубренное лезвие
		ru = "{stacks:%s} заряда "..COLORS_KWords_ru.Bleed_rgb_ru.." получает цель при ударе в ближнем бою.\n"
			..Dot_nc.." До "..COLORS_Numbers.n_16_rgb.." зарядов максимум.\n"
			..Dot_nc.." Длится "..COLORS_Numbers.n_1_5_rgb.." секунды.\n"
			..Dot_nc.." Срабатывает каждые "..COLORS_Numbers.n_05_rgb.." секунды.\n"
			.."\n"
			..PHRS.Refr_dur_stappl_ru.."\n"
			..Dot_green.." Выше среднего "..COLORS_KWords_ru.Dmg_rgb_ru.." по противоосколочной броне.\n"
			..Dot_red.." Низкий "..COLORS_KWords_ru.Dmg_rgb_ru.." по панцирной броне.\n"
			..PHRS.Cant_appl_thr_shlds_ru,
		-- fr = COLORS_Numbers.n_plus_rgb.."{stacks:%s} cumul de "..COLORS_KWords_fr.Bleed_rgb_fr.." sur la cible lors des coups de mêlée. Jusqu'à "..COLORS_Numbers.n_16_rgb.." cumuls."..TALENTS_Enh_desc2_fr.ED_VET_Passive_14_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 18 - Catch a Breath +]--	14.11.2025
	["loc_talent_veteran_replenish_toughness_outside_melee_hit_desc"] = { -- toughness: 5%, range: 8, m->meters, +colors
		en = Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenished per second when not targeted by Melee Attacks for {duration:%s} seconds.\n"
			.."\n"
			..Dot_nc.." This Talent goes on Cooldown for "..COLORS_Numbers.n_5_rgb.." seconds after Blocking or receiving Melee damage.\n"
			..PHRS.Dont_intw_coher_toughn,
		--[+ Пассивный 18 - Переведи дух +]-- руоф Передышка
		ru = Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду восстанавливается, если по вам не попадали атаками ближнего боя более {duration:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Этот талант уходит на восстановление на "..COLORS_Numbers.n_5_rgb.." секунд после блокирования атаки или получения урона в ближнем бою.\n"
			..PHRS.Dont_intw_coher_toughn_ru,
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." régénérés par seconde si le Vétéran n'a pas subit ou bloqué d'attaque de Mélée pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_11_rgb_fr, -- Reprendre son souffle !!! ligne géo /!\
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 19 - Grenadier +]--	14.11.2025
	["loc_talent_veteran_extra_grenade_and_throw_chance_description"] = { -- ammo: 1,  20%, Grenade(s)->Grenade
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{ammo:%s} extra Grenade.\n"
			.."\n"
			..Dot_green.." {chance:%s} chance to throw an additional Grenade. Consumes only "..COLORS_Numbers.n_1_rgb.." Grenade.",
		--[+ Пассивный 19 - Гренадёр +]-- руоф Гренадер
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{ammo:%s} дополнительная граната.\n"
			.."\n"
			..Dot_green.." {chance:%s} шанс бросить дополнительную гранату, потратив только "..COLORS_Numbers.n_1_rgb.." гранату.",
		-- fr = "Vous pouvez porter {ammo:%s} grenade supplémentaire."..TALENTS_Enh_desc2_fr.ED_VET_Passive_21_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 20 - Demolition Stockpile +]--	14.11.2025
	["loc_talent_veteran_replenish_grenade_desc"] = { -- amount: 1, time: 60, Grenade(s)->Grenade, s->seconds
		en = Dot_green.." {amount:%s} Grenade Replenished every {time:%s} seconds.",
		--[+ Пассивный 20 - Склад взрывчатки +]--
		ru = Dot_green.." {amount:%s} граната выдаётся вам каждые {time:%s} секунд.",
		fr = Dot_green.." Vous régénérez {amount:%s} Grenade toutes les {time:%s} secondes.",
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 21 - Grenade Tinkerer +]--	14.11.2025
	["loc_talent_veteran_improved_grenades_desc"] = { -- krak_grenade: Krak Grenade, krak: +75%, frag_grenade: Frag Grenade, frag_damage: +25%, smoke_grenade: Smoke Grenade, smoke: +100%, &->and, +colors
		en = "{krak_grenade:%s}:\n"
			..Dot_green.." {krak:%s} explosion "..COLORS_KWords.Damage_rgb..".\n"
			.."\n"
			.."{frag_grenade:%s}:\n"
			..Dot_green.." {frag_damage:%s} explosion "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." {frag_damage:%s} Radius.\n"
			..Dot_red.." Does not affect "..COLORS_KWords.Bleeds_rgb.." applied by the explosion.\n"
			.."\n"
			.."{smoke_grenade:%s}:\n"
			..Dot_green.." {smoke:%s} Duration. Increased from "..COLORS_Numbers.n_15_rgb.." to "..COLORS_Numbers.n_30_rgb.." seconds.",
		--[+ Пассивный 21 - Гранатный мастер +]-- руоф Любитель гранат
		ru = "{krak_grenade:%s}:\n"
			..Dot_green.." {krak:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." от взрыва.\n"
			.."\n"
			.."{frag_grenade:%s}:\n"
			..Dot_green.." {frag_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." от взрыва,\n"
			..Dot_green.." {frag_damage:%s} к радиусу.\n"
			..Dot_red.." Не влияет на "..COLORS_KWords_ru.Bleeding_rgb_ru..", наложенное взрывом.\n"
			.."\n"
			.."{smoke_grenade:%s}:\n"
			..Dot_green.." {smoke:%s} к длительности. Длительность увеличена с "..COLORS_Numbers.n_15_rgb.." до "..COLORS_Numbers.n_30_rgb.." секунд.",
		-- fr = "Améliorez votre grenade choisie:\n{krak_grenade:%s}: {krak:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..".\n{frag_grenade:%s}: {frag_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." et de rayon.\n{smoke_grenade:%s}: {smoke:%s} durée."..TALENTS_Enh_desc2_fr.ED_VET_Passive_12_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 22 - Precision Strikes +]--	14.11.2025
	["loc_talent_veteran_increased_weakspot_damage_desc"] = { -- damage: +30%, +colors
		en = Dot_green.." {damage:%s} "..COLORS_KWords.Weakspot_dmg_rgb.." of Melee and Ranged attacks.",
		--[+ Пассивный 22 - Точные удары +]--
		ru = Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." для атак ближнего и дальнего боя.",
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." des attaques de mêlée et à distance."..TALENTS_Enh_desc2_fr.ED_VET_Passive_23_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 23 - Deadshot +]--	14.11.2025
	["loc_talent_veteran_ads_drains_stamina_boost_desc"] = { -- crit_chance: +25%, sway_reduction: +60%, stamina: 0.75, stamina_per_shot: 0.1, &->and, +colors
		en = "While Aiming with "..COLORS_KWords.Stamina_rgb.." above "..COLORS_Numbers.n_0_rgb.." you gain:\n"
			..Dot_green.." {crit_chance:%s} "..COLORS_KWords.Crit_chance_rgb..",\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{sway_reduction:%s} Weapon Sway,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_19_rgb.." Spread,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_12_rgb.." Recoil.\n"
			.."Aiming also drains "..COLORS_KWords.Stamina_rgb..":\n"
			..Dot_red.." {stamina:%s} per second,\n"
			..Dot_red.." {stamina_per_shot:%s} per shot.\n"
			.."\n"
			..Dot_red.." This talent has no effect on Plasma Gun.",
		--[+ Пассивный 23 - Смертельный выстрел +]--
		ru = "Пока вы целитесь и ваш уровень "..COLORS_KWords_ru.Stamina_rgb_ru.." выше "..COLORS_Numbers.n_0_rgb..", вы получаете:\n"
			..Dot_green.." {crit_chance:%s} к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru..",\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{sway_reduction:%s} к раскачиванию прицела,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_19_rgb.." к разбросу,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb..COLORS_Numbers.pc_12_rgb.." к отдаче.\n"
			.."Прицеливание при этом расходует "..COLORS_KWords_ru.Stamin_rgb_ru..":\n"
			..Dot_red.." {stamina:%s} в секунду и\n"
			..Dot_red.." {stamina_per_shot:%s} за каждый выстрел.\n"
			.."\n"
			..Dot_red.." Этот талант не действует на плазмомёт.",
		-- fr = "En visant et en étant au-dessus de 0 d'"..COLORS_KWords_fr.Stamina_rgb_fr.." vous gagnez:\n{crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_rgb_fr..",\n{sway_reduction:%s} Réduction du balancement,\n"..COLORS_Numbers.pc_p19_rgb.." Réduction de la dispersion et\n"..COLORS_Numbers.pc_p12_rgb.." Réduction du recul,\nmais consomme:\n{stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." par seconde et\n{stamina_per_shot:%s} supplémentaire d'"..COLORS_KWords_fr.Stamina_rgb_fr.." par tir."..TALENTS_Enh_desc2_fr.ED_VET_Passive_25_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 24 - Born Leader +]--	14.11.2025
	["loc_talent_veteran_allies_share_toughness_coherency_increase_description"] = { -- radius: +50%, toughness: 20%, +colors
		en = Dot_green.." {radius:%s} "..COLORS_KWords.Coherency_rgb.." radius.\n"
			.."\n"
			..Dot_green.." {toughness:%s} of any "..COLORS_KWords.Toughness_rgb.." you replenish is also granted to Allies in "..COLORS_KWords.Coherency_rgb..".",
		--[+ Пассивный 24 - Прирождённый лидер +]-- руоф Прирожденный лидер
		ru = Dot_green.." {radius:%s} к радиусу "..COLORS_KWords_ru.Coherency_rgb_ru..".\n"
			.."\n"
			..Dot_green.." {toughness:%s} от любой "..COLORS_KWords_ru.Toughness_rgb_ru..", восстанавливаемой вами, восстанавливается союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru..".",
		-- fr = "{toughness:%s} de toute "..COLORS_KWords_fr.Toughness_rgb_fr.." que vous regagnez est restaurée aux Alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_VET_Passive_26_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 25 - Leave No One Behind +]--	14.11.2025
	["loc_talent_veteran_movement_speed_towards_downed_description"] = { -- revive_speed: +20%, movement_speed: +20%, damage_reduction: +33%, duration: 5, &->and, s->seconds, +colors
		en = "When moving towards a Knocked Down or Incapacitated Ally, you gain:\n"
			..Dot_green.." {revive_speed:%s} Assist Speed,\n"
			..Dot_green.." {revive_speed:%s} Revive Speed,\n"
			..Dot_green.." {movement_speed:%s} Movement Speed, and\n"
			..Dot_green.." "..COLORS_KWords.Stun_rgb.." Immunity.\n"
			.."\n"
			.."Whenever you Revive a Knocked Down Ally, they receive for {duration:%s} seconds:\n"
			..Dot_green.." {damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Reduction.",
		--!!![+ Пассивный 25 - Своих не бросаем +]-- руоф Никого не оставляйте позади
		ru = "При движении к сбитому с ног или выведенному из строя союзнику вы получаете:\n"
			..Dot_green.." {revive_speed:%s} к скорости поднятия,\n"
			..Dot_green.." {revive_speed:%s} к скорости возрождения,\n"
			..Dot_green.." {movement_speed:%s} к скорости движения, а также\n"
			..Dot_green.." иммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru..".\n"
			.."\n"
			.."Каждый раз, когда вы возрождаете сбитого с ног союзника, он получает на {duration:%s} секунд:\n"
			..Dot_green.." {damage_reduction:%s} к снижению "..COLORS_KWords_ru.Dmg_a_rgb_ru..".",
		-- fr = "{revive_speed:%s} Vitesse d'assistance et de réanimation. {movement_speed:%s} Vitesse de déplacement et une immunité aux "..COLORS_KWords_fr.Stuns_rgb_fr.." en se dirigeant vers un allié renversé ou incapacité. Chaque fois que vous réanimez un allié renversé, il reçoit {damage_reduction:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_22_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 26 - Demolition Team +]--	14.11.2025
	["loc_talent_veteran_grenade_on_elite_kills_coop_desc"] = { -- chance: 5%
		en = Dot_green.." {chance:%s} chance to replenish a Grenade when you or an Ally in "..COLORS_KWords.Coherency_rgb.." kills an Elite or Specialist Enemy.\n"
			.."\n"
			..Dot_green.." Procs regardless of whether you are in "..COLORS_KWords.Coherency_rgb.." with Allies or not.",
		--[+ Пассивный 26 - Команда подрывников +]-- руоф Группа подрыва
		ru = Dot_green.." {chance:%s} шанс восстановить гранату, когда вы или ваш союзник убиваете элитного врага или специалиста.\n"
			.."\n"
			..Dot_green.." Срабатывает независимо от того, находитесь ли вы в "..COLORS_KWords_ru.Coherency_rgb_ru.." с союзниками или нет.",
		-- fr = "{chance:%s} chance de régénérez une grenade lorsque vous ou un allié en syntonie éliminez un ennemi d'élite ou spécialiste."..TALENTS_Enh_desc2_fr.ED_VET_Passive_36_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 27 - Reciprocity +]--	14.11.2025
	["loc_talent_veteran_dodging_grants_crit_description"] = { -- crit_chance: +5%, duration: 8, stacks: 5, s->seconds, +colors
		en = Dot_green.." {crit_chance:%s} "..COLORS_KWords.Crit_hit_rgb.." Chance for {duration:%s} seconds on successful Dodge.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			.." Ineffective against:\n"
			.."   "..Dot_red.." Gunner/Reaper/Sniper shots,\n"
			.."   "..Dot_red.." Pox Hound leap,\n"
			.."   "..Dot_red.." Trapper net,\n"
			.."   "..Dot_red.." Mutant grab.",
		--[+ Пассивный 27 - Взаимообмен +]-- руоф Взаимная выгода
		ru = Dot_green.." {crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на {duration:%s} секунд при успешном уклонении.\n"
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			.." Не работает против:\n"
			.."   "..Dot_red.." Прыжка заражённой гончей,\n"
			.."   "..Dot_red.." Сети скаба-сеточника,\n"
			.."   "..Dot_red.." Захвата мутанта,\n"
			.."   "..Dot_red.." Выстрелов пулемётчика, жнеца и снайпера.",
		-- fr = "{crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pour {duration:%s} secondes sur une esquive réussie. Se cumuls {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_VET_Passive_28_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 28 - Duck and Dive +]--	14.11.2025
	["loc_talent_veteran_stamina_on_ranged_dodge_desc"] = { -- stamina: +30%
		en = Dot_green.." {stamina:%s} of Max "..COLORS_KWords.Stamina_rgb.." on avoiding Ranged Attacks by Dodging, Sprinting or Sliding.\n"
			.."\n"
			..Dot_nc.." Requires more than "..COLORS_Numbers.n_0_rgb.." "..COLORS_KWords.Stamina_rgb..".\n"
			..Dot_nc.." Has an internal Cooldown of "..COLORS_Numbers.n_3_rgb.." seconds.",
		--[+ Пассивный 28 - Пригнись и увернись +]-- руоф Голову в песок
		ru = Dot_green.." {stamina:%s} к максимальной "..COLORS_KWords_ru.Stamina_rgb_ru.." вы получаете при избегании дальнобойных атак с помощью уклонений, бега или скольжения.\n"
			.."\n"
			..Dot_nc.." Должно быть больше "..COLORS_Numbers.n_0_rgb.." "..COLORS_KWords_ru.Stamina_rgb_ru..".\n"
			..Dot_nc.." Имеет скрытое "..COLORS_Numbers.n_3_rgb.."-секундное восстановление.",
		-- fr = "{stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." maximum en évitant les attaques à distance en esquivant, en courant ou en glissant."..TALENTS_Enh_desc2_fr.ED_VET_Passive_29_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 29 - Fully Loaded +]--	14.11.2025
	["loc_talent_veteran_ammo_increase_desc"] = { -- ammo: +25%
		en = Dot_green.." {ammo:%s} Maximum Ammo in reserve.\n"
			.."\n"
			..Dot_nc.." Rounds down.",
		--[+ Пассивный 29 - Полный запас +]-- руоф Полный заряд
		ru = Dot_green.." {ammo:%s} к максимуму боеприпасов в резерве.\n"
			.."\n"
			..Dot_nc.." Округляется в меньшую сторону.",
		-- fr = "{ammo:%s} Munitions."..TALENTS_Enh_desc2_fr.ED_VET_Passive_30_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 30 - Tactical Awareness +]--	14.11.2025
	["loc_talent_veteran_elite_kills_reduce_cooldown_alt_desc"] = { -- regen: +100%, duration: 6, s->seconds, +colors
		en = "On Specialist Kill:\n"
			..Dot_green.." {regen:%s} "..COLORS_KWords.Combat_ability_rgb.." Cooldown Regeneration for {duration:%s} seconds.",
		--[+ Пассивный 30 - Тактическая осведомлённость +]-- руоф Тактическая осведомленность
		ru = "При убийстве специалиста:\n"
			..Dot_green.." {regen:%s} к восстановлению "..COLORS_KWords_ru.Combat_ability_rgb_ru.." на {duration:%s} секунд.",
		-- fr = COLORS_Numbers.n_minus_rgb.."{duration:%s} secondes au "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." lors d'une élimination de spécialiste."..TALENTS_Enh_desc2_fr.ED_VET_Passive_31_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 31 - Desperado +]--	14.11.2025
	["loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse_desc"] = { -- crit_chance: +10%, finesse: +25%, &->and, +colors
		en = Dot_green.." {crit_chance:%s} Melee "..COLORS_KWords.Crit_hit_chance_rgb..".\n"
			..Dot_green.." {finesse:%s} Melee "..COLORS_KWords.Finesse_rgb.." Bonus.\n"
			.."\n"
			..NTS.Fns_note_rgb,
		--[+ Пассивный 31 - Сорвиголова +]--
		ru = Dot_green.." {crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." в ближнем бою.\n"
			..Dot_green.." {finesse:%s} к усилению "..COLORS_KWords_ru.Finesse_rgb_ru.." в ближнем бою.\n"
			.."\n"
			..NTS.Fns_note_rgb_ru,
		-- fr = "{crit_chance:%s} "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.." de mêlée et\n{finesse:%s} bonus de "..COLORS_KWords_fr.Finesse_rgb_fr.." de mêlée."..TALENTS_Enh_desc2_fr.ED_VET_Passive_32_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 32 - Keep Their Heads Down! +]--	14.11.2025
	["loc_talent_veteran_increase_suppression_desc"] = { -- suppression: +75%
		en = Dot_green.." {suppression:%s} Ranged Attack Suppression.",
		--[+ Пассивный 32 - Не давай им поднять головы! +]-- руоф Пригнитесь!
		ru = Dot_green.." {suppression:%s} к подавлению врагов выстрелами.",
		-- fr = "{suppression:%s} Suppression des attaques à distance."..TALENTS_Enh_desc2_fr.ED_VET_Passive_27_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 33 - Competitive Urge +]--	14.11.2025
	["loc_talent_veteran_ally_kills_increase_damage_description"] = { -- proc_chance: 2.5%, damage: +20%, melee_impact: +20%, suppression: +20%, duration: 8, &->and, s->seconds, +colors
		en = "Whenever an Ally kills an Enemy you have a {proc_chance:%s} chance to gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} Base "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." {melee_impact:%s} Melee "..COLORS_KWords.Impact_rgb..",\n"
			..Dot_green.." {suppression:%s} Suppression dealt.\n"
			.."\n"
			..PHRS.Can_be_refr.."\n"
			.."\n"
			..NTS.Impact_note_rgb,
		--[+ Пассивный 33 - Состязательный мотив +]--
		ru = "Каждый раз, когда союзник убивает врага, у вас есть {proc_chance:%s} шанс получить на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
			..Dot_green.." {suppression:%s} к подавлению врагов.\n"
			..Dot_green.." {melee_impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." в ближнем бою,\n"
			.."\n"
			..PHRS.Can_be_refr_ru.."\n"
			.."\n"
			..NTS.Impact_note_rgb_ru,
		-- fr = "Chaque fois qu'un allié tue un ennemi, vous avez {proc_chance:%s} de chance de gagner pendant {duration:%s} secondes:\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..",\n{melee_impact:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.." de mêlée et\n{suppression:%s} de Suppression."..TALENTS_Enh_desc2_fr.ED_VET_Passive_41_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 34 - Rending Strikes +]--	14.11.2025
	["loc_talent_veteran_rending_bonus_desc"] = { -- rending_multiplier: +10%, +colors
		en = Dot_green.." {rending_multiplier:%s} "..COLORS_KWords.Rending_rgb.." to all weapons.\n"
			.."\n"
			..NTS.Rend_note_rgb,
		--[+ Пассивный 34 - Пробивающие удары +]-- руоф Разрушительные удары
		ru = Dot_green.." {rending_multiplier:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." брони для всего оружия.\n"
			.."\n"
			..NTS.Rend_note_rgb_ru,
		-- fr = "{rending_multiplier:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." pour toutes les armes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_42_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 35 - Agile Engagement +]--	14.11.2025
	["loc_talent_veteran_kill_grants_damage_to_other_slot_desc"] = { -- damage: +25%, duration: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." on killing an enemy with a Melee attack.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..Dot_green.." {damage:%s} Melee "..COLORS_KWords.Damage_rgb.." on killing an enemy with a Ranged attack.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		--!!![+ Пассивный 35 - Проворное наступление +]-- руоф Ловкое взаимодействие
		ru = Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в дальнем бою при убийстве врага атакой ближнего боя.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в ближнем бою при убийстве врага атакой дальнего боя.\n"
			..Dot_nc.." Длится {duration:%s} секунд.",
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de distance en tuant un ennemi avec une attaque de mêlée.\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mêlée lors d'une éliminant à distance.\nDure {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_15_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 36 - Skirmisher +]--	14.11.2025
	["loc_talent_veteran_damage_damage_after_sprinting_or_sliding_desc"] = { -- base_damage: +6.25%, duration: 10, stacks: 4, s->seconds, +colors
		en = Dot_green.." {base_damage:%s} to all Base "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds after Sprinting or Sliding.\n"
			..Dot_nc.." Stacks {stacks:%s} times.",
		--[+ Пассивный 36 - Застрельщик +]--
		ru = Dot_green.." {base_damage:%s} ко всему базовому "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд после бега или скольжения.\n"
			..Dot_nc.." Суммируется до {stacks:%s} раз.",
		-- fr = "{base_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes après avoir sprinté. Se cumule {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_VET_Passive_40_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 37 - Shock Trooper +]--	14.11.2025
	["loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit_desc"] = { -- +colors
		en = Dot_green.." "..COLORS_KWords.Crit_shots_rgb.." with Las-weapons consume no Ammo.",
		--[+ Пассивный 37 - Штурмовик +]--
		ru = Dot_green.." "..COLORS_KWords_ru.Crit_shots_rgb_ru.." из лазерного оружия не потребляют боеприпасы.",
		-- fr = "Les "..COLORS_KWords_fr.Crit_hits_rgb_fr.." avec les armes à lasers ne consomment pas de munitions."..TALENTS_Enh_desc2_fr.ED_VET_Passive_33_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 38 - Kill Zone +]--	14.11.2025
	["loc_talent_veteran_ranged_power_out_of_melee_new_desc"] = { -- ranged_damage: +20%, radius: 8, m->meters, +colors
		en = "{ranged_damage:%s} Base Ranged "..COLORS_KWords.Damage_rgb.." when you have avoided Melee Attacks for {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." This Talent goes on Cooldown for {cooldown:%s} seconds after Blocking or receiving Melee damage.\n",
		--[+ Пассивный 38 - Зона поражения +]--
		ru = "{ranged_damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." в дальнем бою, если вы избегали атак ближнего боя более {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Этот талант уходит на восстановление на {cooldown:%s} секунд после блокирования атаки или получения урона в ближнем бою.\n",
		-- fr = "{ranged_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de base à Distance lorsqu'il n'a pas subit ou bloqué d'attaque de Mélée."..TALENTS_Enh_desc2_fr.ED_VET_Passive_16_rgb_fr, -- Zone délimination !!! ligne géo
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},

-- !!! DOUBLE! ARBITES - Passive 35 - Priority Endowment !!!
	--[+ Passive 39 - Lock and Load +]--	14.11.2025
		--[+ Пассивный 39 - Оружие к бою +]--
	-- ["loc_talent_adamant_clip_size_alt_desc"] = { -- clip_size: +25% },

	--[+ Passive 40 - Bring it Down! +]--	14.11.2025
	["loc_talent_veteran_big_game_hunter_description"] = { -- damage: +20%, &->and, +colors
		en = Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." to Ogryns and Monstrosities.\n"
			.."\n"
			..Dot_red.." Does not buff "..COLORS_KWords.Damage_rgb.." against Captains/Twins.",
		--[+ Пассивный 40 - Убей их! +]-- руоф Убивай!
		ru = Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." по огринам и монстрам.\n"
			.."\n"
			..Dot_red.." Не усиливает "..COLORS_KWords_ru.Dmg_rgb_ru.." против капитанов и близнецов.",
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." aux Ogryns et Monstruosités."..TALENTS_Enh_desc2_fr.ED_VET_Passive_43_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 41 - Onslaught +]--	14.11.2025
	["loc_talent_veteran_continous_hits_apply_rending_description"] = { -- rending_multiplier: 2.5%, duration: 5, max_stacks: 16, +colors
		en = "On continuous hits to a Single target:\n"
			..Dot_green.." {rending_multiplier:%s} "..COLORS_KWords.Brittleness_rgb.." for {duration:%s} seconds.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			..PHRS.Can_be_refr.."\n"
			.."\n"
			..NTS.Brtl_note_rgb,
		--[+ Пассивный 41 - Натиск +]--
		ru = "При повторных атаках по одной цели на неё накладывается:\n"
			..Dot_green.." {rending_multiplier:%s} "..COLORS_KWords_ru.Brittleness_rgb_ru.." брони на {duration:%s} секунд.\n"
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			.."\n"
			..PHRS.Can_be_refr_ru.."\n"
			.."\n"
			..NTS.Brtl_note_rgb_ru,
		-- fr = "{rending_multiplier:%s} de "..COLORS_KWords_fr.Brittleness_rgb_fr.." est appliqué à la cible pour {duration:%s} secondes par des coups continus à une seule cible. Se cumule {max_stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_VET_Passive_38_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 42 - Exploit Weakness +]--	14.11.2025
	["loc_talent_veteran_crits_rend_alt_description"] = { -- damage: 20%, duration: 6, s->seconds, +colors
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{damage:%s} "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on Melee "..COLORS_KWords.Crit_hits_rgb..".",
		--[+ Пассивный 42 - Использование слабостей +]--
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{damage:%s} "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд при "..COLORS_KWords_ru.Crit_hit_rgb_ru.." атакой ближнего боя.",
		-- fr = "{rending_multiplier:%s} de "..COLORS_KWords_fr.Brittleness_rgb_fr.." est appliqué à la cible lors d'un "..COLORS_KWords_fr.Crit_hits_rgb_fr.." de mêlée. Se cumule {max_stacks:%s} fois et dure {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_37_rgb_fr,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
}

-- mod:notify("TALENTS_Veteran.lua loaded successfully")

return veteran_talent_localizations
