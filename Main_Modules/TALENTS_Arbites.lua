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
	Doesnt_Stack_Psy_Aura = ""..Dot_red.." This effect does not Stack with the same Aura from another "..COLORS_KWords.cls_psy_rgb..".",
	Doesnt_Stack_Psy_eff = ""..Dot_red.." This effect does not Stack with the same debuff from another "..COLORS_KWords.cls_psy_rgb..".",
	Can_appl_thr_shlds = ""..Dot_green.." Can be applied through shields.",
	Can_be_refr = ""..Dot_green.." Can be refreshed during active duration. ",
	-- Can_be_refr_drop_1 = ""..Dot_green.." Stacks can be refreshed during active duration, and are dropped one by one.",
	Can_proc_mult = ""..Dot_green.." Can proc multiple times per swing when "..COLORS_KWords.Cleaving_rgb..".\n",
	Cant_appl_thr_shlds = ""..Dot_red.." Can't apply through shields.",
	Cant_Crit = ""..Dot_red.." Cannot "..COLORS_KWords.Crit_rgb..".\n",
	Carap_cant_cleave = ""..Dot_red.." Carapace armor cannot be "..COLORS_KWords.Cleaved_rgb.." by default.",
	-- Dont_intw_coher_toughn = ""..Dot_red.." Does not interact with "..COLORS_KWords.Coherency_rgb.." "..COLORS_KWords.Toughness_rgb..".",
	-- Gen_mult_stacks_n_refr = ""..Dot_green.." Can generate multiple Stacks per swing and refresh during active duration. ",
	Refr_dur_stappl = ""..Dot_green.." Refreshes duration on Stack application. ",

--[+ +Russian - ЧАСТО ПОВТОРЯЕМЫЕ ФРАЗЫ+ +]--
	Doesnt_Stack_Psy_Aura_ru = ""..Dot_red.." Не суммируется с эффектом такой же ауры другого "..COLORS_KWords_ru.cls_psya_rgb_ru..".",
	Doesnt_Stack_Psy_eff_ru = ""..Dot_red.." Не суммируется с таким же ослаблением от другого псайкера.",
	Can_appl_thr_shlds_ru = ""..Dot_green.." Накладывается через щиты.",
	Can_be_refr_ru = ""..Dot_green.." Обновляется во время действия. ",
	-- Can_be_refr_drop_1_ru = ""..Dot_green.." Заряды обновляются во время действия и сбрасываются по одному. ",
	Can_proc_mult_ru = ""..Dot_green.." Может срабатывать несколько раз за удар при "..COLORS_KWords_ru.Cleavi_rgb_ru.." нескольких врагов.\n",
	Cant_appl_thr_shlds_ru = ""..Dot_red.." Не накладывается через щиты.",
	Cant_Crit_ru = ""..Dot_red.." Не наносит "..COLORS_KWords_ru.Crit0_rgb_ru..".\n",
	Carap_cant_clv_ru = ""..Dot_red.." Панцирная броня не "..COLORS_KWords_ru.Cleavaetsa_rgb_ru..".",
	Carap_cant_cleave_ru = ""..Dot_red.." Панцирная броня не "..COLORS_KWords_ru.Cleaving_etsa_rgb_ru..".",
	-- Dont_intw_coher_toughn_ru = ""..Dot_red.." Не влияет на "..COLORS_KWords_ru.Tghnss_rgb_ru.." от "..COLORS_KWords_ru.Coherency_rgb_ru..".",
	-- Gen_mult_stacks_n_refr_ru = ""..Dot_green.." Может дать несколько зарядов за удар и обновиться во время действия. ",
	Refr_dur_stappl_ru = ""..Dot_green.." Длительность обновляется при наложении заряда. ",
}

--[+ +NOTES+ +]--
local NTS = {
	-- Brtl_note_rgb = ""..Dot_green.." "..COLORS_KWords.Brittleness_rgb.." increases the team's "..COLORS_KWords.Damage_rgb.." to the enemy.",
	Fns_note_rgb = ""..Dot_green.." "..COLORS_KWords.Finesse_rgb.." increases "..COLORS_KWords.Weakspot_rgb.." and "..COLORS_KWords.Critical_rgb.." "..COLORS_KWords.Damage_rgb..".",
	Impact_note_rgb = ""..Dot_green.." "..COLORS_KWords.Impact_rgb.." increases the effectiveness of "..COLORS_KWords.Stagger_rgb.." on enemies.",
	-- Pwr_note_rgb = ""..Dot_green.." "..COLORS_KWords.Strength_rgb.." increases "..COLORS_KWords.Damage_rgb..", "..COLORS_KWords.Stagger_rgb.." and "..COLORS_KWords.Cleave_rgb..".",
	Rend_note_rgb = ""..Dot_green.." "..COLORS_KWords.Rending_rgb.." increases your own "..COLORS_KWords.Damage_rgb..".",
--[+ +Russian - ПРИМЕЧАНИЯ+ +]--
	-- Brtl_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Brttlns_rgb_ru.." повышает "..COLORS_KWords_ru.Dmg_rgb_ru.." команды по врагу.",
	Fns_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Fnss_rgb_ru.." повышает "..COLORS_KWords_ru.Crit_dmg_r_rgb_ru.." и "..COLORS_KWords_ru.Weakspotv_dmg_rgb_ru..".",
	Impact_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Impact0_rgb_ru.." увеличивает эффективность "..COLORS_KWords_ru.Staggering_rgb_ru.." врагов.",
	-- Pwr_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Pwr_rgb_ru.." повышает "..COLORS_KWords_ru.Dmg_rgb_ru..", "..COLORS_KWords_ru.Stagger_rgb_ru.." и "..COLORS_KWords_ru.Cleaving_rgb_ru..".",
	Rend_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Rndg_rgb_ru.." повышает ваш "..COLORS_KWords_ru.Dmg_rgb_ru..".",
}


local arbites_talent_localizations = {
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


--[+ ++ARBITES - АРБИТЕС++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Arbites Grenade +]--	14.11.2025
	["loc_talent_ability_adamant_grenade_description"] = { -- charges: 4, +colors
		en = "Throw an "..COLORS_KWords.Arbites_gren_rgb.." that explodes after a short delay.\n"
			..Dot_nc.." {charges:%s} Max Grenades.\n"
			.."\n"
			..Dot_green.." Base "..COLORS_KWords.Damage_rgb.." epicenter: "..COLORS_Numbers.n_1500_rgb..".\n"
			..Dot_green.." "..COLORS_KWords.Staggers_rgb.." all enemies except Mutants and enemies with an active Void shield.\n"
			..Dot_nc.." Max explosion radius: "..COLORS_Numbers.n_10_rgb.." meters.\n"
			..Dot_nc.." Above average armor "..COLORS_KWords.Damage_rgb.." modifiers across the board.\n"
			..Dot_red.." Very low armor "..COLORS_KWords.Damage_rgb.." modifier against Carapace.",
		--[+ БЛИЦ 0 - Граната арбитрес +]-- руоф Граната Арбитрес
		ru = "Вы бросаете "..COLORS_KWords_ru.Arbites_gren_rgb_ru..", которая взрывается после короткой задержки.\n"
			..Dot_nc.." Максимум {charges:%s} гранаты.\n"
			.."\n"
			..Dot_green.." Базовый "..COLORS_KWords_ru.Dmg_rgb_ru.." в эпицентре: "..COLORS_Numbers.n_1500_rgb..".\n"
			..Dot_green.." "..COLORS_KWords_ru.Stagger_et_rgb_ru.." всех врагов кроме мутантов и врагов с активным пустотным щитом.\n"
			..Dot_nc.." Максимальный радиус взрыва: "..COLORS_Numbers.n_10_rgb.." метров.\n"
			..Dot_nc.." Средний "..COLORS_KWords_ru.Dmg_rgb_ru.." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..COLORS_KWords_ru.Dmg_rgb_ru.." по панцирной броне.",
		-- fr = ,
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
	--[+ BLITZ 1 - Remote Detonation +]--	14.11.2025
	["loc_talent_ability_detonate_description"] = { -- max_charges: 3, cooldown: 50, s->seconds, +colors
		en = "Cause an Explosion at your Cyber-Mastiff's Location. "..COLORS_KWords.Staggering_rgb.." and "..COLORS_KWords.Electrcuting_rgb.." nearby Enemies.\n"
			..Dot_nc.." {max_charges:%s} Charges.\n"
			..Dot_nc.." Cooldown {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_green.." Base "..COLORS_KWords.Damage_rgb.." epicenter: "..COLORS_Numbers.n_600_rgb..".\n"
			..Dot_green.." Forces a light "..COLORS_KWords.Stagger_rgb.." on all enemies within radius for "..COLORS_Numbers.n_2_5_rgb.." seconds.\n"
			..Dot_nc.." Max explosion radius: "..COLORS_Numbers.n_4_rgb.." meters.\n"
			..Dot_nc.." Arbitrator cannot pick up grenade Ammo.\n"
			..Dot_nc.." Above average armor "..COLORS_KWords.Damage_rgb.." modifiers across the board.\n"
			..Dot_red.." Very low armor "..COLORS_KWords.Damage_rgb.." modifier against Carapace.",
		--[+ БЛИЦ 1 - Дистанционный подрыв +]--
		ru = "Ваш кибермастиф взрывается в месте своего нахождения, "..COLORS_KWords_ru.Staggern_rgb_ru.." и поражая "..COLORS_KWords_ru.Electrocuted_rgb_ru.." ближайших врагов.\n"
			..Dot_nc.." {max_charges:%s} заряда.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.",
		-- fr = ,
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
	--[+ BLITZ 2 - Voltaic Shock Mine +]--
	["loc_talent_ability_shock_mine_description"] = { -- talent_name: Voltaic Shock Min, duration: 15, !range!: 5, s->seconds, m->meters, +colors
		en = "Throw a {talent_name:%s} that activates as it lands.\n"
			..Dot_nc.." For {duration:%s} seconds it will "..COLORS_KWords.Electrocute_rgb.." all enemies within {range:%s} meters.",
		ru = "Вы бросаете "..COLORS_KWords_ru.Electro_mine_rgb_ru..", которая активируется при приземлении.\n"
			..Dot_nc.." В течение {duration:%s} секунд она будет поражать "..COLORS_KWords_ru.Electrocuted_rgb_ru.." всех врагов в радиусе {range:%s} метров.",  -- Вольтаическая шоковая мина
		-- fr = ,
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
	--[+ BLITZ 3 - Arbites Grenade +]--
	["loc_talent_ability_adamant_grenade_improved_description"] = { -- talent_name: Arbites Grenade, charges: 4
		en = "Throw an {talent_name:%s} that explodes after a short delay.\n"
			..Dot_nc.." {charges:%s} Max Grenades.\n"
			..Dot_nc.." This is an augmented version of {talent_name:%s}.",
		ru = "Вы бросаете "..COLORS_KWords_ru.Arbites_gren_rgb_ru..", которая взрывается после короткой задержки.\n"
			..Dot_nc.." Максимум {charges:%s} гранаты.\n"
			..Dot_nc.." Это улучшенная версия таланта {talent_name:%s}.",  -- Граната арбитрес -- руоф Граната Арбитрес
		-- fr = ,
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
--[+ +AURA - АУРА+ +]--
	--[+ AURA 0 - Part of the Squad +]--
	["loc_talent_adamant_companion_coherency_desc"] = { 
		en = "Your Cyber-Mastiff counts towards unit "..COLORS_KWords.Coherency_rgb..".",
		ru = "Ваш кибермастиф учитывается как союзник под действием "..COLORS_KWords_ru.Coherency_rgb_ru..".",  -- Часть отряда
		-- fr = ,
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
	--[+ AURA 1 - Part of the Squad +]--
	["loc_talent_adamant_companion_coherency_alt_desc"] = { -- tdr: +7.5%, +colors
		en = "{tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n"
			.."\n"
			.."Your Cyber-Mastiff counts towards unit "..COLORS_KWords.Coherency_rgb..".",
		ru = "{tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n"
			.."\n"
			.."Ваш кибермастиф учитывается как союзник под действием "..COLORS_KWords_ru.Coherency_rgb_ru..".",  -- Часть отряда
		-- fr = ,
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
	--[+ AURA 2 - Ruthless Efficiency +]--
	["loc_talent_adamant_reload_speed_aura_desc"] = { -- reload_speed: +7.5%, +colors
		en = "{reload_speed:%s} Reload Speed for you and Allies in "..COLORS_KWords.Coherency_rgb..".",
		ru = "{reload_speed:%s} к скорости перезарядки оружия для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".", -- Беспощадная эффективность +]-- руоф Беспощадная сила
		-- fr = ,
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
	--[+ AURA 3 - Breaking Dissent +]--
	["loc_talent_adamant_damage_vs_staggered_aura_alt_desc"] = { -- damage_vs_stagger: +10%, +colors
		en = "{damage_vs_stagger:%s} "..COLORS_KWords.Damage_rgb.." vs "..COLORS_KWords.Staggered_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb..".",
		ru = "{damage_vs_stagger:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." "..COLORS_KWords_ru.Stuns_rgb_ru.." врагам для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".", -- Подавление инакомыслия -- руоф Преодоление разногласий
		-- fr = ,
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
--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
	--[+ ABILITY 0 - Nuncio-Aquila +]--
	["loc_talent_adamant_ability_nuncio_base_desc"] = { -- range: 7.5, toughness: 5%, damage_taken: +15%, duration: 20, cooldown: 60, m->meters, s->seconds, +colors
		en = "Deploy a {talent_name:%s} in a target direction that buffs Allies and debuffs Enemies within {range:%s} meters.\n"
			.."\n"
			.."Allies gain:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenish per second.\n"
			.."\n"
			.."Enemies gain:\n"
			..Dot_green.." {damage_taken:%s} "..COLORS_KWords.Damage_rgb.." Taken.\n"
			.."\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Cooldown {cooldown:%s} seconds.",
		ru = "{talent_name:%s}, которую вы развёртываете в выбранном направлении, усиливает союзников и ослабляет врагов в радиусе {range:%s} метров.\n"
			.."\n"
			.."Союзники получают:\n"
			..Dot_green.." {toughness:%s} к восстановлению "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду.\n"
			.."\n"
			.."Враги получают:\n"
			..Dot_green.." {damage_taken:%s} к получаемому "..COLORS_KWords_ru.Damage_rgb_ru..".\n"
			.."\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.",  -- Нунцио-аквила
		-- fr = ,
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
	--[+ ABILITY 1 - Castigator's Stance +]--
	["loc_talent_adamant_stance_ability_alt_description"] = { -- talent_name: Castigator's Stance, duration: 10, movement_speed: +25%, damage_taken: +80%, movement_reduction: 100%, cooldown: 45, s->seconds, +colors
		en = "Enter the {talent_name:%s} for {duration:%s} seconds, during which you have:\n"
			..Dot_green.." {movement_speed:%s} Movement Speed,\n"
			..Dot_green.." {damage_taken:%s} Reduced "..COLORS_KWords.Damage_rgb.." Taken,\n"
			..Dot_green.." {movement_reduction:%s} Reduced Movement Speed Penalty from Actions, but you cannot Sprint.\n"
			..Dot_green.." All your "..COLORS_KWords.Toughness_rgb.." replenishes on activation.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.",
		ru = "Вы входите в стойку на {duration:%s} секунд и получаете:\n"
			..Dot_green.." {movement_speed:%s} к скорости движения,\n"
			..Dot_green.." {damage_taken:%s} к снижению получаемого "..COLORS_KWords_ru.Dmg_a_rgb_ru..",\n"
			..Dot_green.." на {movement_reduction:%s} снижается штраф скорости движения от действий, но вы не сможете бегать.\n"
			..Dot_green.." Вся ваша "..COLORS_KWords_ru.Tghnss_rgb_ru.." восстанавливается при активации.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.",  -- Стойка карателя -- руоф Стойка бичевателя
		-- fr = ,
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
	--[+ ABILITY 1-1 - Blessed Armament +]--
	["loc_talent_adamant_stance_ranged_kills_transfer_ammo_desc"] = { -- stance_name: Castigator's Stance, ammo: 10%, cooldown: 1.5, s->seconds
		en = "{ammo:%s} of the total Ammo in your Clip is replenished from Reserve on Ranged kills during {stance_name:%s}. Rounded Up.\n"
			..Dot_nc.." Cooldown {cooldown:%s} seconds.",
		ru = "{ammo:%s} от общего количества боеприпасов в вашей обойме пополняется из резерва при убийствах в дальнем бою во время действия способности {stance_name:%s}.\n"
			..Dot_nc.." Округляется в большую сторону.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунды.", -- Благословенное вооружение -- руоф Благословенное орудие
		-- fr = ,
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
	--[+ ABILITY 1-2 - Writ of Execution +]--
	["loc_talent_adamant_stance_elite_kills_stack_damage_desc"] = { -- stance_name: Castigator's Stance, damage: +5%, duration: 10, stacks: 10, s->seconds, +colors
		en = "{damage:%s} "..COLORS_KWords.Damage_rgb.." for each Elite or Specialist Kill during {stance_name:%s}.\n"
			..Dot_nc.." {stacks:%s} Max Stacks.\n"
			..Dot_nc.." Lasting {duration:%s} seconds.",
		ru = "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." за каждого убитого специалиста или элитного врага во время действия способности {stance_name:%s}.\n"
			..Dot_nc.." Максимум {stacks:%s} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Ордер на казнь
		-- fr = ,
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
	--[+ ABILITY 1-3 - Bloodlust +]--
	["loc_talent_adamant_stance_bloodlust_desc"] = { -- stance_name: Castigator's Stance, damage: +75%, +colors
		en = "{damage:%s} "..COLORS_KWords.Damage_rgb.." to your Cyber-Mastiff during {stance_name:%s}.",
		ru = "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." вашего кибермастифа во время действия способности {stance_name:%s}.", -- Жажда крови
		-- fr = ,
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
	--[+ ABILITY 2 - Nuncio-Aquila +]--
	["loc_talent_ability_area_buff_drone_ct_description"] = { -- range: 7.5, toughness: 7.5%, suppression: +30%, impact: +30%, recoil: -25%, damage_taken: +15%, duration: 20, cooldown: 60, nuncio_name: Nuncio-Aquila, m->meters, s->seconds, +colors
		en = "Deploy a {nuncio_name:%s} in a target direction that buffs Allies and debuffs Enemies within {range:%s} meters.\n"
			.."\n"
			.."Allies gain buffs:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenish per second,\n"
			..Dot_green.." {suppression:%s} Suppression Dealt,\n"
			..Dot_green.." {impact:%s} "..COLORS_KWords.Impact_rgb..",\n"
			..Dot_green.." {recoil:%s} Recoil,\n"
			..Dot_green.." Slowdown and Suppression Immune,\n"
			..Dot_green.." Immune to interruption during Alternate Fire.\n"
			.."\n"
			.."Enemies gain debuffs:\n"
			..Dot_green.." {damage_taken:%s} "..COLORS_KWords.Damage_rgb.." Taken.\n"
			.."\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds.\n"
			..Dot_nc.." This is an augmented version of {nuncio_name:%s}.",
		ru = "{nuncio_name:%s}, которую вы развёртываете в выбранном направлении, усиливает союзников и ослабляет врагов в радиусе {range:%s} метров.\n"
			.."\n"
			.."Усиления союзников:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду,\n"
			..Dot_green.." {suppression:%s} к подавлению врагов,\n"
			..Dot_green.." {impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru..",\n"
			..Dot_green.." {recoil:%s} к отдаче,\n"
			..Dot_green.." Иммунитет к замедлению и подавлению,\n"
			..Dot_green.." Иммунитет к прерыванию во время режима прицельного огня.\n"
			.."\n"
			.."Ослабления врагов:\n"
			..Dot_green.." {damage_taken:%s} к получаемому "..COLORS_KWords_ru.Damage_rgb_ru..".\n"
			.."\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			..Dot_nc.." Это улучшенная версия способности {nuncio_name:%s}.", -- Нунцио-аквила
		-- fr = ,
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
	--[+ ABILITY 2-1 - Inspiring Recitation +]--
	["loc_talent_adamant_drone_buff_talent_alt_desc"] = { -- tdr: 30%, revive_speed: 30%, attack_speed: 10%, +colors
		en ="Affected Allies also gain buffs:\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb..",\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{revive_speed:%s} Revive Speed, and\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{attack_speed:%s} Attack Speed." ,
		ru = "Союзники, попавшие под эффект способности, получают дополнительные усиления:\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_rgb_ru..",\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{attack_speed:%s} к скорости атак и\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{revive_speed:%s} к скорости поднятия союзников.", -- Воодушевляющая проповедь -- руоф Вдохновляющая декламация
		-- fr = ,
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
	--[+ ABILITY 2-2 - Fear of Justice +]--
	["loc_talent_adamant_drone_debuff_talent_desc"] = { -- attack_speed_reduction: 50%, damage_reduction: 25%, +colors
		en = "Affected enemies also gain debuffs to their Melee Attacks:\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{damage_reduction:%s} "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{attack_speed_reduction:%s} time between attacks.",
		ru = "Враги, попавшие под эффект способности, получают дополнительные ослабления для их атак ближнего боя:\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{damage_reduction:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{attack_speed_reduction:%s} к увеличению времени между атаками.", -- Страх перед Правосудием -- руоф Страх правосудия
		-- fr = ,
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
	--[+ ABILITY 3 - Break the Line +]--
	["loc_talent_adamant_bash_ability_description"] = { -- damage: +25%, stagger: +50%, duration: 6, cooldown: 20, s->seconds, +colors
		en = "Charge forward and Bash, causing high "..COLORS_KWords.Stagger_rgb.." to enemies in front of you, and gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." {stagger:%s} "..COLORS_KWords.Impact_rgb..".\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.",
		ru = "Вы делаете рывок вперёд и наносите удар, который "..COLORS_KWords_ru.Staggers_e_rgb_ru.." врагов перед вами, и получаете на {duration:%s} секунд усиления:\n"
			..Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n"
			..Dot_green.." {stagger:%s} к "..COLORS_KWords_ru.Impact_rgb_ru..".\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.", -- Прорыв строя -- руоф Прорыв фронта
		-- fr = ,
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
	--[+ ABILITY 3-1 - Commendation from Condemnation +]--
	["loc_talent_adamant_charge_toughness_alt_description"] = { -- toughness: 20%, stamina: 15%, toughness_max: 100%, stamina_max: 75%, +colors
		en = "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." and {stamina:%s} "..COLORS_KWords.Stamina_rgb.." replenishes for each Elite, Specialist, or Monstrosity hit, up to {toughness_max:%s} "..COLORS_KWords.Toughness_rgb.." and {stamina_max:%s} "..COLORS_KWords.Stamina_rgb..".",
		ru = "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и {stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru.." восстанавливается за каждый удар по элитному врагу, специалисту или монстру, вплоть до {toughness_max:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и {stamina_max:%s} "..COLORS_KWords_ru.Stamina_rgb_ru..".", -- Похвала за осуждение -- руоф Не наказали - значит, похвалили???
		-- fr = ,
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
	--[+ ABILITY 3-2 - Targeted Brutality +]--
	["loc_talent_adamant_charge_cooldown_alt_description"] = { -- cooldown: 0.5, cooldown_elite: 5, max_cooldown: 5, s->seconds, +colors
		en = "On charge end, reduces the remaining "..COLORS_KWords.Ability_cd_rgb.." of "..COLORS_KWords.BreakZLine_rgb.." by:\n"
			..Dot_green.." {cooldown_elite:%s} seconds for each Elite, Special, or Monstrosity hit while charging,\n"
			..Dot_green.." {cooldown:%s} seconds for any other enemy hit while charging.\n"
			..Dot_nc.." Max {max_cooldown:%s} seconds per charge.",
		ru = "После рывка, сокращается время "..COLORS_KWords_ru.Ability_cd_rgb_ru.." вашего "..COLORS_KWords_ru.BreakZLine_rgb_ru.." на:\n"
			..Dot_green.." {cooldown_elite:%s} секунду за каждого, поражённого рывком, элитного врага, специалиста или монстра,\n"
			..Dot_green.." {cooldown:%s} секунды за каждого, поражённого рывком, обычного врага.\n"
			..Dot_nc.." Максимум {max_cooldown:%s} секунд за рывок.", -- Направленная жестокость
		-- fr = ,
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
	--[+ ABILITY 3-3 - Kill Order +]--
	["loc_talent_adamant_dog_damage_after_ability_desc"] = { -- companion_damage: +50%, duration: 12, s->seconds, +colors
		en = "{companion_damage:%s} "..COLORS_KWords.Damage_rgb.." for your Cyber Mastiff, for {duration:%s} seconds after using your "..COLORS_KWords.Combat_ability_rgb..".",
		ru = "{companion_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." вашего кибермастифа на {duration:%s} секунд после активации вашей "..COLORS_KWords_ru.Combat_ability_rgb_ru..".", -- Фас! -- руоф Приказ убивать
		-- fr = ,
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
	--[+ ABILITY 3-4 - Engage +]--
	["loc_talent_adamant_charge_longer_distance_desc"] = { -- charge_ability_name: Break the Line, distance: 7.5, m->meters
		en = COLORS_Numbers.n_plus_rgb.."{distance:%s} meters to the distance of {charge_ability_name:%s}.",
		ru = COLORS_Numbers.n_plus_rgb.."{distance:%s} метров к расстоянию способности {charge_ability_name:%s}.", -- Дальний прорыв -- руоф К бою
		-- fr = ,
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
--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
	--[+ KEYSTONE 1 - Unleashed Brutality +]--
	["loc_talent_adamant_cyber_mastiff_elites_desc"] = { -- damage: +25%, +colors
		en = "{damage:%s} "..COLORS_KWords.Damage_rgb.." to Elite and Specialist Enemies dealt by your Cyber-Mastiff.\n"
			.."Elite and Specialist Enemies become its Primary targets.",
		ru = "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." элитным врагам и специалистам для вашего кибермастифа.\n"
			.."Элитные враги и специалисты становятся приоритетными целями для него.", -- Высвобожденнная жестокость
		-- fr = ,
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
	--[+ KEYSTONE 2 - Lone Wolf +]--
	["loc_talent_adamant_disable_companion_replenish_desc"] = { -- tdr: +15%, attack_speed: +10%, damage: +10%, time: 60, s->seconds, +colors
		en = "You are no longer accompanied by your Cyber-Mastiff, but gain:\n"
			..Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." {attack_speed:%s} Attack Speed,\n"
			..Dot_green.." {tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb..",\n"
			..Dot_green.." {charges:%s} increased Charges on your Blitz Abilities, and you replenish a charge of your Blitz Ability every {time:%s} seconds.",
		ru = "Вам больше не помогает кибермастиф, но вы получаете усиления:\n"
			..Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки,\n"
			..Dot_green.." {tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru..",\n"
			..Dot_green.." {charges:%s} заряд блица, а также ваш блиц теперь восстанавливает заряд раз в {time:%s} секунд.", -- Одинокий волк
		-- fr = ,
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
	--[+ KEYSTONE 3 - Go Get 'Em! +]--
	["loc_talent_adamant_cyber_mastiff_ranged_desc"] = { -- !damage!: +50%, +colors
		en = "{damage:%s} "..COLORS_KWords.Damage_rgb.." to Ranged Enemies dealt by your Cyber-Mastiff.\n"
			.."Ranged Enemies become its Primary targets.",
		ru = "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." дальнобойным врагам для вашего кибермастифа.\n"
			.."Дальнобойные враги становятся приоритетными целями для него.", -- Взять их!
		-- fr = ,
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
	--[+ KEYSTONE 4 - Execution Order +]--
	["loc_talent_execution_order_description"] = { -- toughness: 15%, dog_damage: +150%, time: 8, damage: +15%, attack_speed: +10%, s->seconds, +colors
		en = "Periodically mark Elites, Specialists and Bosses for Mercy Sanction. Killing a "..COLORS_KWords.Markedenemy_rgb.." replenishes {toughness:%s} "..COLORS_KWords.Toughness_rgb..".\n"
			.."\n"
			.."Your Cyber-Mastiff gains for {time:%s} seconds after attacking a "..COLORS_KWords.Markedenemy_rgb..":\n"
			..Dot_green.." {dog_damage:%s} Cyber-Mastiff "..COLORS_KWords.Damage_rgb..".\n"
			.."\n"
			.."You gain for {time:%s} seconds after killing a "..COLORS_KWords.Markedenemy_rgb..":\n"
			..Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." and\n"
			..Dot_green.." {attack_speed:%s} Attack Speed.",
		ru = "Элитные враги, специалисты и боссы периодически помечаются для Санкции милосердия. Убийство "..COLORS_KWords_ru.Markedenemy_rgb_ru.." восстанавливает {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..".\n"
			.."\n"
			.."Ваш кибермастиф получает на {time:%s} секунд после атаки "..COLORS_KWords_ru.Markedenemy_rgb_ru..":\n"
			..Dot_green.." {dog_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..".\n"
			.."\n"
			.."Вы получаете на {time:%s} секунд после убийства "..COLORS_KWords_ru.Markedenemy_rgb_ru..":\n"
			..Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки.", -- Метка возмездия -- Приказ казнить
		-- fr = ,
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
	--[+ KEYSTONE 4-1 - Efficient Killer +]--
	["loc_talent_execution_order_crit_description"] = { -- crit_chance: +10%, crit_damage: +25%, time: 8, s->seconds, +colors
		en = "On killing a "..COLORS_KWords.Markedenemy_rgb..", you gain:\n"
			..Dot_green.." {crit_chance:%s} "..COLORS_KWords.Crt_chance_rgb.." and\n"
			..Dot_green.." {crit_damage:%s} "..COLORS_KWords.Crt_dmg_r_rgb..".\n"
			..Dot_nc.." Lasts {time:%s} seconds.",
		ru = "При убийстве "..COLORS_KWords_ru.Markedenemy_rgb_ru.." вы получаете:\n"
			..Dot_green.." {crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." и\n"
			..Dot_green.." {crit_damage:%s} к "..COLORS_KWords_ru.Crit_dmg_u_rgb_ru..".\n"
			..Dot_nc.." Длится {time:%s} секунд.", -- Эффективный убийца
		-- fr = ,
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
	--[+ KEYSTONE 4-2 - Malocator +]--
	["loc_talent_execution_order_cdr_on_kill_description"] = { -- regen: +50%, time: 8, s->seconds, +colors
		en = "{regen:%s} "..COLORS_KWords.Cd_rgb.." Regeneration for {time:%s} seconds after killing a "..COLORS_KWords.Markedenemy_rgb..".",
		ru = "{regen:%s} к "..COLORS_KWords_ru.Ability_cd_rgb_ru.." на {time:%s} секунд после убийства "..COLORS_KWords_ru.Markedenemy_rgb_ru..".", -- Малокатор
		-- fr = ,
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
	--[+ KEYSTONE 4-3 - No Lenience +]--
	["loc_talent_execution_order_command_applies_brittleness_description"] = { -- rending: +10%, time: 8, s->seconds, +colors
		en = "{rending:%s} "..COLORS_KWords.Rending_rgb.." for {time:%s} seconds after killing a "..COLORS_KWords.Markedenemy_rgb..".",
		ru = "{rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." на {time:%s} секунд после убийства "..COLORS_KWords_ru.Markedenemy_rgb_ru..".", -- Нетерпимость
		-- fr = ,
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
	--[+ KEYSTONE 4-4 - Keeping Protocol +]--
	["loc_talent_execution_order_perma_buff_new_description"] = { -- damage: +1%, damage_red: +1%, max_stacks: 30, +colors
		en = "Killing a "..COLORS_KWords.Markedenemy_rgb.." grants:\n"
			..Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." vs Monstrosities and\n"
			..Dot_green.." {damage_red:%s} "..COLORS_KWords.Damage_rgb.." Resistance vs Monstrosities.\n"
			..Dot_nc.." {max_stacks:%s} Max Stacks.\n"
			..Dot_nc.." Lasts until the end of the Mission.",
		ru = "Убийство "..COLORS_KWords_ru.Markedenemy_rgb_ru.." даёт:\n"
			..Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." монстрам и\n"
			..Dot_green.." {damage_red:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." от монстров.\n"
			..Dot_nc.." Максимум {max_stacks:%s} зарядов.\n"
			..Dot_nc.." Длится до конца миссии.", -- Соблюдение протокола -- руоф Поддердание протокола
		-- fr = ,
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
	--[+ KEYSTONE 4-5 - Not Far Behind +]--
	["loc_talent_adamant_pinning_dog_bonus_moving_towards_description"] = { -- movement_speed: +10%, damage: +10%, time: 5, s->seconds, +colors
		en = "After Pounce you gain for {time:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." and\n"
			..Dot_green.." {movement_speed:%s} Movement Speed.",
		ru = "После нападения на врага вашего кибермастифа вы получаете на {time:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n"
			..Dot_green.." {movement_speed:%s} к скорости движения.", -- В зоне досягаемости -- руоф Не так далеко позади
		-- fr = ,
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
	--[+ KEYSTONE 5 - Terminus Warrant +]--
	["loc_talent_adamant_terminus_warrant_shortened_alt_desc"] = { -- max_stacks: 30, melee_remove: 1, melee_damage: +15%, melee_impact: +25%, ranged_remove: 1, ranged_damage: +15%, ranged_cleave: +50%, suppression: +50%, +colors
		en = "Ranged Attacks grant Stacks of "..COLORS_KWords.Meleejust_rgb.." for each Enemy Hit, up to {max_stacks:%s}. Melee Hits remove {melee_remove:%s} Stack.\n"
			.."While you have Stacks of "..COLORS_KWords.Meleejust_rgb..", gain:\n"
			..Dot_green.." {melee_damage:%s} Melee "..COLORS_KWords.Damage_rgb.." and\n"
			..Dot_green.." {melee_impact:%s} Melee "..COLORS_KWords.Impact_rgb..".\n"
			.."\n"
			.."Melee Hits grant Stacks of "..COLORS_KWords.Rangedjust_rgb..", up to {max_stacks:%s}. Ranged Attacks remove {ranged_remove:%s} Stack for each Enemy Hit.\n"
			.."While you have Stacks of "..COLORS_KWords.Rangedjust_rgb..", gain:\n"
			..Dot_green.." {ranged_damage:%s} Ranged "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." {ranged_cleave:%s} Ranged "..COLORS_KWords.Cleave_rgb.." and\n"
			..Dot_green.." {suppression:%s} Suppression.",
		ru = "Дальнобойные атаки дают заряды "..COLORS_KWords_ru.Meleejust_rgb_ru.." за каждый удар по врагу, до {max_stacks:%s} зарядов. Удар в ближнем бою снимает {melee_remove:%s} заряд.\n"
			.."Пока у вас есть заряды "..COLORS_KWords_ru.Meleejust_rgb_ru..", вы получаете усиления для ближнего боя:\n"
			..Dot_green.." {melee_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n"
			..Dot_green.." {melee_impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru..".\n"
			.."\n"
			.."Атаки ближнего боя дают заряды  "..COLORS_KWords_ru.Rangedjust_rgb_ru.." за каждое попадание по врагу, до {max_stacks:%s} зарядов. Дальнобойная атака снимает {ranged_remove:%s} заряд.\n"
			.."Пока у вас есть заряды "..COLORS_KWords_ru.Rangedjust_rgb_ru..", вы получаете усиления для дальнобойных атак:\n"
			..Dot_green.." {ranged_damage:%s} к дальнобойному "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
			..Dot_green.." {suppression:%s} к подавлению и\n"
			..Dot_green.." {ranged_cleave:%s} к "..COLORS_KWords_ru.Cleaving_u_rgb_ru.." в дальнем бою.", -- Ордер Терминус -- руоф Распоряжение «Терминус»
		-- fr = ,
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
	--[+ KEYSTONE 5-1 - Dispense Justice +]--
	["loc_talent_adamant_terminus_warrant_ranged_alt_desc"] = { -- reload_speed: +20%, +colors
		en = "{reload_speed:%s} Reload Speed while you have Stacks of "..COLORS_KWords.Rangedjust_rgb..".",
		ru = "{reload_speed:%s} к скорости перезарядки пока у вас есть заряды "..COLORS_KWords_ru.Rangedjust_rgb_ru..".", -- Исполнение приговора -- руоф Охват правосудия
		-- fr = ,
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
	--[+ KEYSTONE 5-2 - Obstinate +]--
	["loc_talent_adamant_terminus_warrant_upgrade_alt_desc"] = { -- swap_stacks: 15, melee_attack_speed: +15%, fire_rate: +15%, +colors
		en = "Swapping to your Melee Weapon while you have {swap_stacks:%s} "..COLORS_KWords.Meleejust_rgb.." Stacks or more, grants you:\n"
			..Dot_green.." {melee_attack_speed:%s} Melee Attack Speed until you run out of Stacks, or swap to your Ranged Weapon.\n"
			.."\n"
			.."Swapping to your Ranged Weapon while you have {swap_stacks:%s} "..COLORS_KWords.Rangedjust_rgb.." Stacks or more, grants you:\n"
			..Dot_green.." {fire_rate:%s} Fire Rate until you run out of Stacks, or swap to your Melee Weapon.",
		ru = "Переключение на оружие ближнего боя пока у вас есть как минимум {swap_stacks:%s} зарядов "..COLORS_KWords_ru.Meleejust_rgb_ru..", вы получаете:\n"
			..Dot_green.." {melee_attack_speed:%s} к скорости атак ближнего боя пока заряды не кончатся или пока вы не переключитесь на дальнобойное оружие.\n"
			.."\n"
			.."Переключение на оружие дальнего боя пока у вас есть как минимум {swap_stacks:%s} зарядов "..COLORS_KWords_ru.Rangedjust_rgb_ru..", вы получаете:\n"
			..Dot_green.." {fire_rate:%s} к скорострельности пока заряды не кончатся или пока вы не переключитесь на оружие ближнего боя.", -- Непреклонный -- руоф Упрямый
		-- fr = ,
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
	--[+ KEYSTONE 5-3 - Terminal Decree +]--
	["loc_talent_adamant_terminus_warrant_toughness_desc"] = { -- melee_toughness: +100%, toughness: 25%, +colors
		en = "While you have stacks of "..COLORS_KWords.Meleejust_rgb..", you gain additional:\n"
			..Dot_green.." {melee_toughness:%s} Melee "..COLORS_KWords.Toughness_rgb.." Regeneration, and Allies in "..COLORS_KWords.Coherency_rgb.." Replenish:\n"
			..Dot_green.." {toughness:%s} of any "..COLORS_KWords.Toughness_rgb.." that you Replenish.",
		ru = "Пока у вас есть заряды "..COLORS_KWords_ru.Meleejust_rgb_ru..", вы дополнительно получаете:\n"
			..Dot_green.." {melee_toughness:%s} к восстановлению "..COLORS_KWords_ru.Toughness_rgb_ru.." в ближнем бою, а союзники в "..COLORS_KWords_ru.Coherency_rgb_ru.." восстанавливают:\n"
			..Dot_green.." {toughness:%s} любой "..COLORS_KWords_ru.Toughness_rgb_ru..", восстановленной вами.", -- Последний приговор -- руоф Окончательное постановление
		-- fr = ,
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
	--[+ KEYSTONE 5-4 - Writ of Judgement +]--
	["loc_talent_adamant_terminus_warrant_improved_alt_desc"] = { -- talent_max_stacks: 30, melee_rending: +15%, crit_damage: +25%, weakspot_damage: +25%, +colors
		en = "Swapping to your Melee Weapon while at {talent_max_stacks:%s} "..COLORS_KWords.Meleejust_rgb.." Stacks grants you:\n"
			..Dot_green.." {melee_rending:%s} Melee "..COLORS_KWords.Rending_rgb.." until you run out of Stacks, or swap to your Ranged Weapon.\n"
			.."\n"
			.."Swapping to your Ranged Weapon while at {talent_max_stacks:%s} "..COLORS_KWords.Rangedjust_rgb.." Stacks grants you:\n"
			..Dot_green.." {crit_damage:%s} "..COLORS_KWords.Crit_strike_dmg_rgb.." and\n"
			..Dot_green.." {weakspot_damage:%s} "..COLORS_KWords.Weakspot_dmg_rgb.." until you run out of Stacks, or swap to your Melee Weapon.",
		ru = "Переключение на оружие ближнего боя пока у вас есть {talent_max_stacks:%s} зарядов "..COLORS_KWords_ru.Meleejust_rgb_ru..", вы получаете:\n"
			..Dot_green.." {melee_rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." в ближнем бою пока заряды не кончатся или пока вы не переключитесь на дальнобойное оружие.\n\n"
			.."Переключение на оружие дальнего боя пока у вас есть {talent_max_stacks:%s} зарядов "..COLORS_KWords_ru.Rangedjust_rgb_ru..", вы получаете:\n"
			..Dot_green.." {crit_damage:%s} к "..COLORS_KWords_ru.Crit_dmg_u_rgb_ru.." и\n"
			..Dot_green.." {weakspot_damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." пока заряды не кончатся или пока вы не переключитесь на оружие ближнего боя.", -- Судебный ордер -- руоф Судебное предписание
		-- fr = ,
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
	--[+ KEYSTONE 6 - Forceful +]--
	["loc_talent_adamant_forceful_base_alt_desc"] = { -- forceful_name: Forceful, duration: 5, stacks: 10, impact: +5%, dr: +2.5%, s->seconds, +colors
		en = COLORS_KWords.Staggering_rgb.." Hits and Blocked Attacks grant Stacks of "..COLORS_KWords.Forceful_rgb..". Lasting {duration:%s} seconds and Stacking {stacks:%s} times. Each Stack gives:\n"
			..Dot_green.." {impact:%s} "..COLORS_KWords.Impact_rgb.." and\n"
			..Dot_green.." {dr:%s} "..COLORS_KWords.Damage_rgb.." Resistance.\n"
			.."Remove Stack on "..COLORS_KWords.Damage_rgb.." taken.",
		ru = COLORS_KWords_ru.Stunss_rgb_ru.." удары и заблокированные атаки дают заряды "..COLORS_KWords_ru.Forceful_rgb_ru..". Длится {duration:%s} секунд и суммируется до {stacks:%s} раз. Каждый заряд даёт:\n"
			..Dot_green.." {impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." и\n"
			..Dot_green.." {dr:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru..".\n"
			..Dot_nc.." Заряд снимается при получении "..COLORS_KWords_ru.Dmg_a_rgb_ru..".", -- Неудержимый -- руоф Напористый
		-- fr = ,
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
	--[+ KEYSTONE 6-1 - Adamant Will +]--
	["loc_talent_adamant_forceful_stun_immune_and_block_all_linger_desc"] = { -- duration: 3, s->seconds, +colors
		en = COLORS_KWords.Stun_rgb.." Immunity while having "..COLORS_Numbers.n_10_rgb.." Stacks of "..COLORS_KWords.Forceful_rgb.." and for {duration:%s} seconds after dropping below "..COLORS_Numbers.n_10_rgb.." Stacks.\n"
			.."Your Perfect blocks can block All Attacks.",
		ru = "Пока у вас "..COLORS_Numbers.n_10_rgb.." зарядов "..COLORS_KWords_ru.Forceful_rgb_ru.." и на {duration:%s} секунды после того, как количество зарядов падает ниже "..COLORS_Numbers.n_10_rgb..", вы получаете иммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru..".\n"
			.."Ваши идеальные блоки могут блокировать любые атаки.", -- Адамантовая воля
		-- fr = ,
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
	--[+ KEYSTONE 6-2 - Will of the Lex +]--
	["loc_talent_adamant_forceful_toughness_regen_per_stack_desc"] = { -- toughness: +0.5%, +colors
		en = "Replenish {toughness:%s} "..COLORS_KWords.Toughness_rgb.." each second per Stack.",
		ru = "Восстанавливается {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." каждую секунду за заряд "..COLORS_KWords_ru.Forceful_rgb_ru..".",
		-- fr = ,
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
	--[+ KEYSTONE 6-3 - Targets Acquired +]--
	["loc_talent_adamant_forceful_melee_alt_desc"] = { -- duration: 3, attack_speed: +10%, cleave: +50%, s->seconds, +colors
		en = "While at Max Stacks, and for {duration:%s} seconds afterwards, gain:\n"
			..Dot_green.." {attack_speed:%s} Attack Speed and\n"
			..Dot_green.." {cleave:%s} "..COLORS_KWords.Cleave_rgb..".",
		ru = "Пока у вас "..COLORS_Numbers.n_10_rgb.." зарядов "..COLORS_KWords_ru.Forceful_rgb_ru.." и на {duration:%s} секунды после того, как количество зарядов падает ниже "..COLORS_Numbers.n_10_rgb..", вы получаете:\n"
			..Dot_green.." {cleave:%s} к "..COLORS_KWords_ru.Cleave_rgb_ru.." и\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки.", -- Цели обнаружены
		-- fr = ,
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
	--[+ KEYSTONE 6-4 - Arbites Vigilant +]--
	["loc_talent_adamant_forceful_ability_damage"] = { -- strength: +2.5%, duration: 10, s->seconds, +colors
		en = "On "..COLORS_KWords.Combat_ability_rgb.." use, you spend all Stacks and gain for each Stack:\n"
			..Dot_green.." {strength:%s} "..COLORS_KWords.Strength_rgb..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "При использовании "..COLORS_KWords_ru.Combat_ability_rgb_ru..", вы тратите все заряды и получаете за каждый заряд:\n"
			..Dot_green.." {strength:%s} к "..COLORS_KWords_ru.Strength_rgb_ru..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Бдительный Арбитрес -- руоф Бдительность Арбитрес
		-- fr = ,
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
	--[+ KEYSTONE 6-5 - Judicial Force +]--
	["loc_talent_adamant_forceful_stagger_on_low_high_desc"] = { -- low_stacks: 0, high_stacks: 10, cooldown: 5, s->seconds, +colors
		en = COLORS_KWords.Stagger_rgb.." nearby Enemies upon reaching {low_stacks:%s} Stacks or {high_stacks:%s} Stacks of "..COLORS_KWords.Forceful_rgb..".\n"
			..Dot_nc.." Cooldown {cooldown:%s} seconds. Cooldown is separate for {low_stacks:%s} Stacks and for {high_stacks:%s} Stacks.",
		ru = "Ближайшие враги получают "..COLORS_KWords_ru.Stagger_rgb_ru.." при достижении вами {low_stacks:%s} или {high_stacks:%s} зарядов "..COLORS_KWords_ru.Forceful_rgb_ru..".\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд. Восстановление раздельное для {low_stacks:%s} зарядов и для {high_stacks:%s} зарядов.", -- Сила правосудия -- руоф Судебная сила
		-- fr = ,
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
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - No Escape +]--
	["loc_talent_adamant_elite_special_kills_offensive_boost_alt_desc"] = { -- damage: +10%, movement_speed: +10%, duration: 4, s->seconds, +colors
		en = "On Elite or Specialist Kill, gain:\n"
			..Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." and\n"
			..Dot_green.." {movement_speed:%s} Movement Speed.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "После убийства элитного врага или специалиста, вы получаете:\n"
			..Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n"
			..Dot_green.." {movement_speed:%s} к скорости движения.\n"
			..Dot_nc.." Длится {duration:%s} секунды.", -- Не уйдёшь -- руоф Не сбежишь
		-- fr = ,
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
	--[+ Passive 2 - Withering Fire +]--
	["loc_talent_adamant_damage_after_reloading_desc"] = { -- damage: +15%, duration: 5, s->seconds, +colors
		en = "{damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds after Reloading.",
		ru = "{damage:%s} к дальнобойному "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд после перезарядки.", -- Истребляющий огонь -- Изнуряющий огонь
		-- fr = ,
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
	--[+ Passive 3 - Hammer of Judgement +]--
	["loc_talent_adamant_multiple_hits_attack_speed_desc"] = { -- melee_attack_speed: +10%, duration: 3, hits: 3, s->seconds
		en = "{melee_attack_speed:%s} Melee Attack Speed for {duration:%s} seconds on hitting {hits:%s} or more enemies with a Melee Attack.",
		ru = "{melee_attack_speed:%s} к скорости атак ближнего боя на {duration:%s} секунды при попадании по {hits:%s} или более врагам атакой ближнего боя.", -- Молот Правосудия -- руоф Молот правосудия
		-- fr = ,
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
	--[+ Passive 4 - Razor-Jaw Augment +]--
	["loc_talent_adamant_dog_pounces_bleed_nearby_desc"] = { -- stacks: 8, +colors
		en = "{stacks:%s} Stacks of "..COLORS_KWords.Bleed_rgb.." applies to Enemies knocked away by your Cyber Mastiff's Pounce.",
		ru = "{stacks:%s} зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." применяется к врагам, опрокинутым вашим кибермастифом.", -- Аугментация челюсти-бритвы -- руоф Аугментация челюстей: бритва
		-- fr = ,
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
	--[+ Passive 5 - Target Neutralised +]--
	["loc_talent_adamant_elite_special_kills_replenish_toughness_desc"] = { -- instant_toughness: 10%, toughness: 10%, duration: 4, s->seconds, +colors
		en = "{instant_toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes instantly, and {toughness:%s} "..COLORS_KWords.Toughness_rgb.." over {duration:%s} seconds, on Elite or Specialist Kill.",
		ru = "{instant_toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается сразу и ещё {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." за {duration:%s} секунды после убийства элитных врагов или специалистов.", -- Цель уничтожена -- руоф Цель нейтрализована
		-- fr = ,
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
	--[+ Passive 6 - Up Close +]--
	["loc_talent_adamant_close_kills_restore_toughness_desc"] = { -- toughness: 5%, +colors
		en = "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes on Close Kill.",
		ru = "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при убийстве на ближней дистанции.", -- В упор -- руоф Лицом к лицу
		-- fr = ,
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
	--[+ Passive 7 - Force of Will +]--
	["loc_talent_adamant_staggers_replenish_toughness_melee_desc"] = { -- toughness: 10%, +colors
		en = "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes on "..COLORS_KWords.Staggering_rgb.." Melee Attack.",
		ru = "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при "..COLORS_KWords_ru.Stagger_i_rgb_ru.." врага атакой ближнего боя.", -- Сила воли
		-- fr = ,
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
	--[+ Passive 8 - Retaliatory Force +]--
	["loc_talent_adamant_perfect_block_damage_boost_alt_desc"] = { -- block_cost: 15%, damage: +15%, attack_speed: +10%, duration: 8, s->seconds, +colors
		en = "Gain {block_cost:%s} Reduced Block Cost.\n"
			.."On Perfect Block gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." and\n"
			..Dot_green.." {attack_speed:%s} Attack Speed.",
		ru = "На {block_cost:%s} снижены затраты выносливости на блокирование.\n"
			.."При идеальном блокировании вы получаете на {duration:%s} секунд:\n"
			..Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n"
			..Dot_green.." {attack_speed:%s} к скорости атаки.", -- Сила возмездия
		-- fr = ,
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
	--[+ Passive 9 - Man and Cyber-Mastiff +]--
	["loc_talent_adamant_toughness_regen_near_companion_desc"] = { -- toughness: 5%, range: 8, m->meters, +colors
		en = "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes per second while Cyber-Mastiff is within {range:%s} meters of you.",
		ru = "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду пока ваш кибермастиф в пределах {range:%s} метров от вас.", -- Человек и кибермастиф
		-- fr = ,
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
	--[+ Passive 10 - Walk It Off +]--
	["loc_talent_adamant_stamina_spent_replenish_toughness_desc"] = { -- stamina: 1, toughness: 15%, duration: 3, s->seconds, +colors
		en = "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes over {duration:%s} seconds per {stamina:%s} "..COLORS_KWords.Stamina_rgb.." spent.",
		ru = "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за {duration:%s} секунды за каждую единицу потраченной "..COLORS_KWords_ru.Stamina_rgb_ru..".", -- Заживёт на ходу -- руоф Остынь --{stamina:%s}
		-- fr = ,
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
	--[+ Passive 11 - Shield Plates +]--
	["loc_talent_adamant_shield_plates_alt_desc"] = { -- toughness: 15%, duration: 3, perfect_toughness: 10%, cooldown: 1, s->second, +colors
		en = "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes over {duration:%s} seconds on successful Block.\n"
			.."{perfect_toughness:%s} "..COLORS_KWords.Toughness_rgb.." instantly replenishes on Perfect Block.\n"
			..Dot_nc.." Cooldown {cooldown:%s} second.",
		ru = "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за {duration:%s} секунды при успешном блоке.\n"
			.."{perfect_toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." мгновенно восполняется при идеальном блоке.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунду.", -- Щитовые пластины -- руоф Пластинчатые щиты
		-- fr = ,
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
	--[+ Passive 12 - Arbitrator Armour +]--
	["loc_talent_adamant_armor_desc"] = { -- toughness: +25, +colors
		en = "{toughness:%s} "..COLORS_KWords.Toughness_rgb..".",
		ru = "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..".", -- Броня арбитратора -- руоф Броня Арбитратора
		-- fr = ,
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
	--[+ Passive 13 - Voltaic Mandibles Augment +]--
	["loc_talent_adamant_dog_attacks_electrocute_desc"] = { -- duration: 5, s->seconds, +colors
		en = "Your Cyber-Mastiff "..COLORS_KWords.Electrocutes_rgb.." Enemies it attacks for {duration:%s} seconds.",
		ru = "Ваш кибермастиф поражает "..COLORS_KWords_ru.Electrocuted_rgb_ru.." врагов на {duration:%s} секунд при атаке.", -- Аугментация Вольтаические жвала -- руоф Аугментация челюстей: электрошок
		-- fr = ,
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
	--[+ Passive 14 - Ammo Belt +]--
	-- ["loc_talent_adamant_ammo_belt_desc"] = { -- ammo: +25%
		-- en = "{ammo:%s} Ammo Capacity.",
		-- ru = "{ammo:%s} к боезапасу.", -- Патронтаж -- руоф Поясная разгрузка
		-- fr = ,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	--[+ Passive 15 - Concussive +]--
	["loc_talent_adamant_melee_weakspot_hits_count_as_stagger_desc"] = { -- duration: 4, s->seconds, +colors
		en = "Melee "..COLORS_KWords.Weakspothits_rgb.." make the Enemy count as "..COLORS_KWords.Staggered_rgb.." for {duration:%s} seconds.",
		ru = "Попадания в "..COLORS_KWords_ru.Weakspot_rgb_ru.." в ближнем бою "..COLORS_KWords_ru.Staggers_rgb_ru.." врагов на {duration:%s} секунды.", -- Ошеломление -- руоф Сотрясение
		-- fr = ,
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
	--[+ Passive 16 - Canine Morale +]--
	["loc_talent_adamant_pinning_dog_kills_buff_allies_description"] = { -- tdr: +20%, toughness: +10%, duration: 5, s->seconds, +colors
		en = "Killing Pounced Targets grants for you and Allies in "..COLORS_KWords.Coherency_rgb.." over {duration:%s} seconds:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." and\n"
			..Dot_green.." {tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb..".",
		ru = "Убийство врага, прижатого кибермастифом к земле, даёт вам и союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru.." на {duration:%s} секунд:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и\n"
			..Dot_green.." {tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru..".", -- Боевой настрой пса -- руоф Собачий настрой
		-- fr = ,
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
	--[+ Passive 17 - Imposing Force +]--
	["loc_talent_adamant_damage_reduction_after_elite_kill_desc"] = { -- damage_reduction: +25%, duration: 5, s->seconds, +colors
		en = "{damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Resistance for {duration:%s} seconds after Elite or Specialist Kill.",
		ru = "{damage_reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд после убийства элитного врага или специалиста.", -- Давящая мощь -- руоф Впечатляющая сила
		-- fr = ,
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
	--[+ Passive 18 - Suppression Force +]--
	["loc_talent_adamant_staggered_enemies_deal_less_damage_desc"] = { -- damage: -20%, duration: 5, s->seconds, +colors
		en = "{damage:%s} "..COLORS_KWords.Damage_rgb.." dealt by Enemies successfully "..COLORS_KWords.Staggered_rgb.." by Melee Attacks, Pushes, and direct impacts of "..COLORS_KWords.BreakZLine_rgb..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." от врагов, "..COLORS_KWords_ru.Staggered_rgb_ru.." вами с помощью атак ближнего боя, толчков или прямых столкновений способности "..COLORS_KWords_ru.BreakZLined_rgb_ru..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Сила подавления
		-- fr = ,
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
	--[+ Passive 19 - Suppression Protocols +]--
	["loc_talent_adamant_hitting_multiple_gives_tdr_desc"] = { -- hits: 3, tdr: +20%, duration: 5, s->seconds, +colors
		en = "{tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for {duration:%s} seconds after hitting {hits:%s} or more Enemies with an Attack.",
		ru = "{tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." на {duration:%s} секунд после попадания атакой по {hits:%s} или более врагам.", -- Протоколы подавления
		-- fr = ,
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
	--[+ Passive 20 - Plasteel Plates +]--
	["loc_talent_adamant_plasteel_plates_desc"] = { -- toughness: +25, +colors
		en = "{toughness:%s} "..COLORS_KWords.Toughness_rgb..".",
		ru = "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..".", -- Пласталевые пластины -- руоф Пластины из пластали
		-- fr = ,
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
	--[+ Passive 21 - Arbites Revelatum +]--
	["loc_talent_adamant_dodge_grants_damage_desc"] = { -- damage: 15%, duration: 5, s->seconds, +colors
		en = COLORS_Numbers.n_plus_rgb.."{damage:%s} "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds after Successful Dodge.",
		ru = COLORS_Numbers.n_plus_rgb.."{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд при успешном уклонении.", -- Арбитрес Ревелатум
		-- fr = ,
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
	--[+ Passive 22 - Justified Measures +]--
	["loc_talent_adamant_stacking_damage_desc"] = { -- damage: +3%, stacks: 5, duration: 5, s->seconds, +colors
		en = "{damage:%s} "..COLORS_KWords.Damage_rgb.." on Successful Attack.\n"
			..Dot_nc.." {stacks:%s} Max Stacks.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." при успешной атаке.\n"
			..Dot_nc.." Максимум {stacks:%s} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Оправданные меры
		-- fr = ,
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
	--[+ Passive 23 - Hold the Line +]--
	["loc_talent_adamant_staggers_reduce_damage_taken_alt_desc"] = { -- normal_stacks: 1, damage_taken_multiplier: +3%, max_stacks: 5, ogryn_stacks: 5, +colors
		en = COLORS_KWords.Staggering_rgb.." an Enemy grants {normal_stacks:%s} Stack of {damage_taken_multiplier:%s} "..COLORS_KWords.Damage_rgb.." Resistance, on the next Melee hit taken.\n"
			..Dot_nc.." Stacking {max_stacks:%s} times.\n"
			.."\n"
			..COLORS_KWords.Staggering_rgb.." Non-Human Sized Enemies grants {ogryn_stacks:%s} Stacks.",
		ru = COLORS_KWords_ru.Staggerr_rgb_ru.." врага даёт {normal_stacks:%s} заряд {damage_taken_multiplier:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." для следующего полученного удара в ближнем бою.\n"
			..COLORS_KWords_ru.Staggerr_rgb_ru.." врагов больше человеческого роста даёт {ogryn_stacks:%s} зарядов.\n"
			..Dot_nc.." Суммируется максимум {max_stacks:%s} раз.\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Держи строй -- руоф Держать строй
		-- fr = ,
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
	--[+ Passive 24 - Judicious Efficiency +]--
	["loc_talent_adamant_elite_special_kills_reload_speed_desc"] = { -- reload_speed: 20%
		en = COLORS_Numbers.n_plus_rgb.."{reload_speed:%s} Reload Speed on next reload after Elite or Specialist Kill.",
		ru = COLORS_Numbers.n_plus_rgb.."{reload_speed:%s} к скорости следующей перезарядки после убийства элитного врага или специалиста.", -- Судейская эффективность -- руоф Разумная эффективность
		-- fr = ,
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
	--[+ Passive 25 - Rapid Movement +]--
	["loc_talent_adamant_sprinting_sliding_description"] = { -- speed: +5%, duration: 5, stamina: +5%, cd: 0.75, s->seconds, +colors
		en = "{speed:%s} Sprint Speed for {duration:%s} seconds after Sliding.\n"
			.."{stamina:%s} "..COLORS_KWords.Stamina_rgb.." after killing Enemies.\n"
			..Dot_nc.." Cooldown {cd:%s} seconds.",
		ru = "{speed:%s} к скорости бега на {duration:%s} секунд после подката.\n"
			.."{stamina:%s} к "..COLORS_KWords_ru.Stamina_rgb_ru.." после убийства врага.\n"
			..Dot_nc.." Восстанавливается {cd:%s} секунды.", -- Быстрые движения -- руоф Быстрое перемещение
		-- fr = ,
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
	--[+ Passive 26 - Rebreather +]--
	["loc_talent_adamant_rebreather_desc"] = { -- corruption: +20%, toxic_reduction: +75%, +colors
		en = "{corruption:%s} "..COLORS_KWords.Corruption_rgb.." Resistance and\n"
			.."{toxic_reduction:%s} Reduced "..COLORS_KWords.Damage_rgb.." taken from Toxic Gas.",
		ru = "{corruption:%s} к сопротивлению "..COLORS_KWords_ru.Corruption_rgb_ru.." и\n"
			.."{toxic_reduction:%s} к снижению "..COLORS_KWords_ru.Dmg_a_rgb_ru..", получаемого от токсичного газа.", -- Ребризер -- руоф Противогаз
		-- fr = ,
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
	--[+ Passive 27 - Cower, Miscreants! +]--
	["loc_talent_adamant_damage_vs_suppressed_desc"] = { -- damage_vs_suppressed: +25%, +colors
		en = "{damage_vs_suppressed:%s} "..COLORS_KWords.Damage_rgb.." vs Suppressed Enemies.",
		ru = "{damage_vs_suppressed:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." подавленным врагам.", -- Трепещите, негодяи!
		-- fr = ,
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
	--[+ Passive 28 - Target the Weak +]-- DOUBLE!
	-- ["loc_talent_ogryn_big_bully_heavy_hits_new_desc"] = { 
		-- en = ,
		-- ru = , -- Цель - слабаки
		-- fr = ,
		-- ["zh-tw"] = ,
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	-- },
	--[+ Passive 29 - The Emperor's Fist +]--
	["loc_talent_adamant_first_melee_hit_increased_damage_desc"] = { -- damage: +15%, impact: +30%, +colors
		en = "{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." and\n"
			.."{impact:%s} "..COLORS_KWords.Impact_rgb.." on first Enemy hit with each attack.",
		ru = "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя и\n"
			.."{impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." первого врага в каждой атаке.", -- Кулак Императора
		-- fr = ,
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
	--[+ Passive 30 - Zealous Dedication +]--
	["loc_talent_adamant_crit_chance_on_kill_desc"] = { -- crit_chance: 2%, max_stacks: 8, duration: 10, s->seconds, +colors
		en = COLORS_Numbers.n_plus_rgb.."{crit_chance:%s} "..COLORS_KWords.Crit_chance_r_rgb.." on Kill.\n"
			..Dot_nc.." {max_stacks:%s} Stacks.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = COLORS_Numbers.n_plus_rgb.."{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." при убийстве.\n"
			..Dot_nc.." До {max_stacks:%s} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Фанатичная преданность
		-- fr = ,
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
	--[+ Passive 31 - Street Smarts +]--
	["loc_talent_adamant_dodge_improvement_desc"] = { -- dodge: +1, dodge_duration: +25%
		en = "{dodge:%s} Effective Dodges and\n"
			.."{dodge_duration:%s} Dodge Duration, increases from "..COLORS_Numbers.n_02_rgb.." to "..COLORS_Numbers.n_025_rgb.." seconds.",
		ru = "{dodge:%s} эффективное уклонение и\n"
			.."{dodge_duration:%s} к длительности уклонения.", -- Уличная хватка -- руоф Законы улицы
		-- fr = ,
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
	--[+ Passive 32 - Drive them Back +]--
	["loc_talent_adamant_cleave_after_push_desc"] = { -- cleave: 75%, duration: 5, s->seconds, +colors
		en = "{cleave:%s} "..COLORS_KWords.Cleave_rgb.." for {duration:%s} seconds on Push.",
		ru = "{cleave:%s} к "..COLORS_KWords_ru.Cleave_rgb_ru.." на {duration:%s} секунд после толчка.", -- Натиск -- руоф Отбрось их
		-- fr = ,
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
	--[+ Passive 33 - Target Selection +]--
	["loc_talent_adamant_pinning_dog_elite_damage_description"] = { -- damage: +15%, time: 8, s->seconds, +colors
		en = "{damage:%s} "..COLORS_KWords.Damage_rgb.." vs Elites and Specialists after killing a Pounced Elite or Specialist.\n"
			..Dot_nc.." Lasts {time:%s} seconds.",
		ru = "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." элитным врагам и специалистам после убийства такого врага, прижатого вашим кибермастифом.\n"
			..Dot_nc.." Длится {time:%s} секунд.", -- Выбор целей -- руоф Выбор цели
		-- fr = ,
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
	--[+ Passive 34 - Soulguilt Scan +]--
	["loc_talent_adamant_stacking_weakspot_strength_duration_desc"] = { -- strength: 2%, max_stacks: 8, duration: 10, s->seconds, +colors
		en = COLORS_Numbers.n_plus_rgb.."{strength:%s} "..COLORS_KWords.Weakspot_rgb.." strength after "..COLORS_KWords.Weakspothits_rgb..".\n"
			..Dot_nc.." {max_stacks:%s} Max Stacks.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = COLORS_Numbers.n_plus_rgb.."{strength:%s} к силе атак в "..COLORS_KWords_ru.Weakspot_rgb_ru.." после попадания в "..COLORS_KWords_ru.Weakspothit_rgb_ru..".\n"
			..Dot_nc.." Максимум {max_stacks:%s} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Поиск виновных душ
		-- fr = ,
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
	--[+ Passive 35 - Priority Endowment +]--	10.11.2025
	-- ! Double: Veteran - Passive 39 - Lock and Load !
	["loc_talent_adamant_clip_size_alt_desc"] = { -- clip_size: +15%
		en = Dot_green.." {clip_size:%s} Clip Size.\n"
			.."\n"
			..Dot_nc.." Rounded Up.",
		ru = Dot_green.." {clip_size:%s} к размеру магазина.\n"
			.."\n"
			..Dot_nc.." Округляется в большую сторону.", -- Приоритетное снабжение
		-- fr = ,
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
	--[+ Passive 36 - Target Priority +]--
	["loc_talent_adamant_increased_damage_to_high_health_desc"] = { -- damage: 15%, health: 75%, +colors
		en = COLORS_Numbers.n_plus_rgb.."{damage:%s} "..COLORS_KWords.Damage_rgb.." to Enemies above {health:%s} "..COLORS_KWords.Health_rgb..".",
		ru = COLORS_Numbers.n_plus_rgb.."{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам со "..COLORS_KWords_ru.Healthx_rgb_ru.." выше {health:%s}.", -- Приоритет целей
		-- fr = ,
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
	--[+ Passive 37 - Final Warning +]--
	["loc_talent_adamant_ranged_damage_on_melee_stagger_desc"] = { -- damage: 15%, duration: 5, s->seconds, +colors
		en = COLORS_Numbers.n_plus_rgb.."{damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." on Melee "..COLORS_KWords.Staggering_rgb.." Hits.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = COLORS_Numbers.n_plus_rgb.."{damage:%s} к дальнобойному "..COLORS_KWords_ru.Damage_rgb_ru.." при "..COLORS_KWords_ru.Stagger_i_rgb_ru.." врагов ударами в ближнем бою.\n"
			..Dot_nc.." Длится {duration:%s} секунд.", -- Последнее предупреждение
		-- fr = ,
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
	--[+ Passive 38 - Weight of the Lex +]--
	["loc_talent_adamant_heavy_attacks_increase_damage_desc"] = { -- damage: +15%, duration: 5, s->seconds, +colors
		en = "{damage:%s} "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds after Heavy Melee Attack.",
		ru = "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд после заряженной атаки ближнего боя.", -- Вес Закона
		-- fr = ,
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
	--[+ Passive 39 - Serrated Maw +]--
	["loc_talent_adamant_dog_applies_brittleness_desc"] = { -- stacks: 6, +colors
		en = "{stacks:%s} Stacks of "..COLORS_KWords.Brittleness_rgb.." on attack applies by your Cyber-Mastiff.",
		ru = "{stacks:%s} зарядов "..COLORS_KWords_ru.Brittleness_rgb_ru.." при атаке накладывает ваш кибермастиф.", -- Зазубренная пасть
		-- fr = ,
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
	--[+ Passive 40 - Prosecution Blow +]--
	["loc_talent_adamant_crits_rend_alt_desc"] = { -- rending: +20%, +colors
		en = "{rending:%s} "..COLORS_KWords.Rending_rgb.." on Ranged "..COLORS_KWords.Crit_strike_rgb..".",
		ru = "{rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru..".", -- Карающий удар -- руоф Обвиняющий удар
		-- fr = ,
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
	--[+ Passive 41 - March +]--
	["loc_talent_adamant_movement_speed_on_block_alt_desc"] = { -- movement_speed: +15%, duration: 3, s->seconds, +colors
		en = "{movement_speed:%s} Movement Speed on Ranged Hit.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "{movement_speed:%s} к скорости движения после любой дальнобойной атаки.\n"
			..Dot_nc.." Длится {duration:%s} секунды.", -- Марш
		-- fr = ,
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
	--[+ Passive 42 - Monstrosity Hunter +]--
	["loc_talent_adamant_monster_hunter_desc"] = { -- damage: +20%, +colors
		en = "{damage:%s} "..COLORS_KWords.Damage_rgb.." to Ogryns and Monstrosities.",
		ru = "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." огринам и монстрам.", -- Охотник на монстров -- руоф Охота на чудовищ
		-- fr = ,
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
	--[+ Passive 43 - Strike Down +]--
	["loc_talent_adamant_melee_attacks_on_staggered_rend_alt_desc"] = { -- rending: +15%, +colors
		en = "{rending:%s} Melee "..COLORS_KWords.Rending_rgb.." on "..COLORS_KWords.Staggered_rgb.." Enemies.",
		ru = "{rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." в ближнем бою "..COLORS_KWords_ru.Stuns_rgb_ru.." врагам.", -- Сокрушительный удар -- руоф Сбивающий удар
		-- fr = ,
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
	--[+ Passive 44 - True Grit +]--
	["loc_talent_adamant_limit_dmg_taken_from_hits_desc"] = { -- limit: 50, +colors
		en = "Limit the maximum "..COLORS_KWords.Health_rgb.." "..COLORS_KWords.Damage_rgb.." Taken from an Attack to {limit:%s}.",
		ru = "Максимальный получаемый "..COLORS_KWords_ru.Dmg_rgb_ru.." "..COLORS_KWords_ru.Health_rgb_ru.." от атак снижается до {limit:%s}.", -- Настоящая закалка -- руоф Истинная выдержка
		-- fr = ,
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

-- mod:notify("TALENTS_Arbites.lua loaded successfully")

return arbites_talent_localizations
