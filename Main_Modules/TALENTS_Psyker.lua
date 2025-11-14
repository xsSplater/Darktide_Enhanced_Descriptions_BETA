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
	Dont_intw_coher_toughn = ""..Dot_nc.." Does not interact with "..COLORS_KWords.Coherency_rgb.." "..COLORS_KWords.Toughness_rgb..".",
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
	Dont_intw_coher_toughn_ru = ""..Dot_nc.." Не влияет на "..COLORS_KWords_ru.Tghnss_rgb_ru.." от "..COLORS_KWords_ru.Coherency_rgb_ru..".",
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
	Rend_note_rgb_ru = ""..Dot_green.." "..COLORS_KWords_ru.Rndg_rgb_ru.." брони повышает ваш личный "..COLORS_KWords_ru.Dmg_rgb_ru..".",
}


local psyker_talent_localizations = {
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


--[+ ++PSYKER - ПСАЙКЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Brain Burst +]--	01.11.2025
	["loc_ability_psyker_smite_description_new"] = { -- &->and, +colors
		en = "Charge up psychic power and release it to deal high "..COLORS_KWords.Damage_rgb.." to a single enemy.\n"
			.."\n"
			..Dot_green.." Effective vs Flak and Carapace.\n"
			..Dot_green.." Higher "..COLORS_KWords.Damage_rgb.." vs Maniac and Unyielding.\n"
			..Dot_green.." Always scores a "..COLORS_KWords.Weakspothit_rgb..".\n"
			..PHRS.Cant_Crit
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			.."Casting with "..COLORS_Numbers.pc_97_rgb.." "..COLORS_KWords.Peril_rgb.." or higher will trigger a self-explosion!",
		--[+ БЛИЦ 0 - Взрыв мозга +]-- руоф Взрыв разума
		ru = "Зарядите психическую мощь и высвободите её, чтобы нанести высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." одному врагу.\n"
			.."\n"
			..Dot_green.." Эффективно против врагов в противоосколочной и панцирной броне.\n"
			..Dot_green.." Высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." по маньякам и несгибаемым врагам.\n"
			..Dot_green.." Всегда бьёт в "..COLORS_KWords_ru.Weakspothit_rgb_ru..".\n"
			..PHRS.Cant_Crit_ru
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Вы можете взорваться!{#reset()}\n"
			.."Не используйте если уровень "..COLORS_KWords_ru.Peril_rgb_ru.." "..COLORS_Numbers.pc_97_rgb.." или выше!",
		-- fr = "Chargez votre pouvoir Psychique et relachez-le pour infliger de gros "..COLORS_KWords_fr.Damage_rgb_fr.." à un ennemi unique. Efficace contre les ennemies en armure Légère et Carapace. Dégâts plus élevés contre Maniaques et Implacables."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_0_rgb_fr, -- Explosion cérébrale
		-- ["zh-tw"] = "凝聚靈能，對單一敵人造成 "..COLORS_KWords_tw.Dmg_rgb_tw.." 。\n"
			-- .."- 對防彈、甲殼敵人效果不佳。\n"
			-- .."- 對狂熱者與不屈有 "..COLORS_KWords_tw.Dmg_h_rgb_tw.." 。\n"
			-- ..TALENTS_Enh_desc_tw.ED_PSY_Blitz_0_rgb_tw.."。", -- 顱腦爆裂
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ BLITZ 1 - Brain Rupture +]--	01.11.2025
	["loc_talent_psyker_brain_burst_improved_description"] = { -- talent_old: Brain Burst, damage: +50%, &->and, +colors
		en = "Charge up your psychic power and release it to deal immense "..COLORS_KWords.Damage_rgb.." to a Single Enemy.\n"
			..Dot_green.." An augmented version of {talent_old:%s} that deals {damage:%s} "..COLORS_KWords.Damage_rgb..".\n"
			.."\n"
			..Dot_green.." Effective vs Flak and Carapace.\n"
			..Dot_green.." Higher "..COLORS_KWords.Damage_rgb.." vs Maniac and Unyielding.\n"
			..Dot_green.." Always scores a "..COLORS_KWords.Weakspothit_rgb..".\n"
			..Dot_green.." Charging the main attack to "..COLORS_Numbers.pc_50_rgb.." lightly "..COLORS_KWords.Staggers_rgb.." the target.\n"
			..Dot_green.." On impact, "..COLORS_KWords.Staggers_rgb.." almost all enemies.\n"
			..Dot_red.." Cannot "..COLORS_KWords.Stagger_rgb.." Mutants, Ogryns, Monstrosities or enemies with active Void shield.\n"
			..PHRS.Cant_Crit
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			..Dot_red.." Casting with "..COLORS_Numbers.pc_97_rgb.." "..COLORS_KWords.Peril_rgb.." or higher will trigger a self-explosion!",
		--[+ БЛИЦ 1 - Разрыв мозга +]--
		ru = "Зарядите свою психическую мощь и высвободите её, чтобы нанести огромный "..COLORS_KWords_ru.Dmg_rgb_ru.." одному врагу.\n"
			..Dot_green.." Это улучшенная версия таланта {talent_old:%s}, наносящая {damage:%s} "..COLORS_KWords_ru.Dmg_a_rgb_ru..".\n"
			.."\n"
			..Dot_green.." Эффективно против врагов в противоосколочной и панцирной броне.\n"
			..Dot_green.." Высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." по маньякам и несгибаемым врагам.\n"
			..Dot_green.." Всегда бьёт в "..COLORS_KWords_ru.Weakspothit_rgb_ru..".\n"
			..Dot_green.." На уровне заряда "..COLORS_Numbers.pc_50_rgb.." основная атака слегка "..COLORS_KWords_ru.Staggers_e_rgb_ru.." цель.\n"
			..Dot_red.." Не "..COLORS_KWords_ru.Staggers_e_rgb_ru..": мутантов, огринов, монстров и врагов с активным пустотным щитом.\n"
			..Dot_green.." При полном заряде "..COLORS_KWords_ru.Staggers_e_rgb_ru.." всех врагов, кроме мутантов, монстров и врагов с активным пустотным щитом.\n"
			..PHRS.Cant_Crit_ru
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Внимание!{#reset()}\n"
			..Dot_red.." Не используйте при уровне "..COLORS_KWords_ru.Peril_rgb_ru.." "..COLORS_Numbers.pc_97_rgb.." или выше иначе вы взорвётесь!",
		-- fr = "Chargez votre pouvoir Psychique et relachez-le pour infliger d'immense "..COLORS_KWords_fr.Damage_rgb_fr.." à un ennemi unique. Efficace contre les ennemies en armure Légère et Carapace. Dégâts plus élevés contre les Maniaques et les Implacables.\n\nCeci est une version améliorée d'{talent_old:%s} infligeant {damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_1_rgb_fr, -- Éclatement cérébrale
		-- ["zh-tw"] = "凝聚靈能，對單一敵人造成 "..COLORS_KWords_tw.Dmg_h_rgb_tw.." 。\n"
			-- .."- 基礎傷害：1350。\n"
			-- .."- "..COLORS_KWords_tw.Crit_n_chance_rgb_tw.."。\n"
			-- .."- 永遠視為 "..COLORS_KWords_tw.Weakspothit_rgb_tw.." 。\n"
			-- .."- 對防彈、甲殼敵人效果不佳。\n"
			-- .."- 對狂熱者與不屈有 "..COLORS_KWords_tw.Dmg_h_rgb_tw.." 。\n"
			-- .."這是 {talent_old:%s} 的強化版本\n"
			-- ..TALENTS_Enh_desc_tw.ED_PSY_Blitz_1_rgb_tw, -- 顱腦崩裂 -- 積蓄靈能力量，釋放時可對單個敵人造成巨大傷害。對防彈護甲和甲殼護甲敵人效果減弱。\n\n該天賦是可造成{damage:%s}傷害的{talent_old:%s}的加強版。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ BLITZ 1-1 - Kinetic Resonance +]--	01.11.2025
	["loc_talent_psyker_ability_increase_brain_burst_speed_desc"] = { -- talent_name: Brain Rupture, smite_attack_speed: +75%, warp_charge_cost: 50%, duration: 10, s->seconds, +colors
		en = "Using your "..COLORS_KWords.Combat_ability_rgb.." buffs your {talent_name:%s} for {duration:%s} seconds:\n"
			..Dot_green.." {smite_attack_speed:%s} charge speed,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{warp_charge_cost:%s} "..COLORS_KWords.Peril_rgb.." generation.\n"
			.."\n"
			..Dot_nc.." Affects both Primary and Secondary attacks.",
		--[+ БЛИЦ 1-1 - Кинетический резонанс +]--
		ru = "При использовании вашей "..COLORS_KWords_ru.Combat_ability_rgb_ru.." усиливается ваш {talent_name:%s} на {duration:%s} секунд:\n"
			..Dot_green.." {smite_attack_speed:%s} к скорости заряжания,\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{warp_charge_cost:%s} к набору "..COLORS_KWords_ru.Peril_rgb_ru..".\n"
			.."\n"
			..Dot_nc.." Влияет как на основную, так и на дополнительную атаку.",
		-- fr = "Lorsque vous utilisez votre "..COLORS_KWords_fr.Combat_ability_rgb_fr..", {talent_name:%s} charge {smite_attack_speed:%s} plus rapidement et génère {warp_charge_cost:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." en moins, pendant {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_1_1_rgb_fr,
		-- ["zh-tw"] = "", -- 動能共鳴 -- 使用戰鬥技能會加快{talent_name:%s}充能{smite_attack_speed:%s}且降低反噬生成{warp_charge_cost:%s}，持續{duration:%s}秒。
		-- ["zh-cn"] = "使用 "..COLORS_KWords_tw.Combat_ability_rgb_tw.." 後 {smite_attack_speed:%s} 增加閃擊充能速度 {talent_name:%s}。\n" 
		-- .."\n"
		-- .."- 持續 {duration:%s} 秒，期間靈能消耗減少 {warp_charge_cost:%s}。\n"
		-- .."- 縮短顱腦崩裂的蓄力時間。\n"
		-- .. TALENTS_Enh_desc_tw.ED_PSY_Blitz_1_1_rgb_tw,
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ BLITZ 1-2 - Kinetic Flayer +]--	01.11.2025
	["loc_talent_psyker_smite_on_hit_special_elite_desc"] = { -- smite_chance: 10%, talent_name: Brain Rupture, time: 15, s->seconds, +colors
		en = "Attacks vs Specials, Elites and Monstrosities, have a {smite_chance:%s} chance on Hit to inflict {talent_name:%s}, while below "..COLORS_Numbers.pc_97_rgb.." "..COLORS_KWords.Peril_rgb..".\n"
			..Dot_nc.." Cooldown {time:%s} seconds.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}BUG{#reset()}\n"
			.."If "..COLORS_KWords.Peril_rgb.." level is above "..COLORS_Numbers.pc_97_rgb..", {talent_name:%s} enters its "..COLORS_Numbers.n_15_rgb.."-second cooldown but fails to deal any "..COLORS_KWords.Damage_rgb..".",
		--[+ БЛИЦ 1-2 - Кинетический живодёр +]-- руоф Кинетический истребитель
		ru = "При атаке специалистов, элитных врагов или монстров, есть {smite_chance:%s} шанс на срабатывание блица {talent_name:%s} при уровне "..COLORS_KWords_ru.Peril_rgb_ru.." ниже "..COLORS_Numbers.pc_97_rgb..".\n"
			..Dot_nc.." Восстановление {time:%s} секунд.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}СЛОМАНО{#reset()}\n"
			.."Если {talent_name:%s} сработает при уровне "..COLORS_KWords_ru.Peril_rgb_ru.." "..COLORS_Numbers.pc_97_rgb.." или выше, то начнётся "..COLORS_Numbers.n_15_rgb.."-секундное восстановление, но "..COLORS_KWords_ru.Dmg_rgb_ru.." не будет нанесён.",
		-- fr = "Tant que vous êtes en dessous de "..COLORS_Numbers.pc_97_rgb.." de "..COLORS_KWords_fr.Peril_rgb_fr..", Toute les attaques contre les spéciaux, les élites et les Monstruosités ont {smite_chance:%s} de chance d'appliquer {talent_name:%s} à la cible en cas de coup réussi. {time:%s} secondes de temps de recharge."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_1_2_rgb_fr,
		-- ["zh-tw"] = "當 "..COLORS_KWords_tw.Peril_rgb_tw.." 低於 "..COLORS_Numbers.pc_97_rgb.. " 時，\n有 {smite_chance:%s} 機率觸發 {talent_name:%s}，\n冷卻 {time:%s} 秒。" .. TALENTS_Enh_desc_tw.ED_PSY_Blitz_1_2_rgb_tw, -- 動能釋放 -- 對專家、精英與巨獸進行攻擊時，所有攻擊都有{smite_chance:%s}機率使目標{talent_name:%s}。反噬處於危險線以上時無法觸發，此外，觸發後有{time:%s}秒冷卻時間。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ BLITZ 2 - Smite +]--	01.11.2025
	["loc_ability_psyker_chain_lightning_description"] = { -- +colors
		en = "Unleash a torrent of chain bio-lightning that arcs between enemies, dealing low "..COLORS_KWords.Electrcuting_rgb.." "..COLORS_KWords.Damage_rgb.." over time and inflicting high "..COLORS_KWords.Stagger_rgb..".\n"
			.."The secondary charged attack deals increased "..COLORS_KWords.Damage_rgb.." and jumps faster.\n"
			.."\n"
			..Dot_nc.." Max range: "..COLORS_Numbers.n_16_rgb.." meters.\n"
			..Dot_nc.." Only targets torso hitzone.\n"
			..PHRS.Cant_Crit
			..Dot_red.." Deals average armor "..COLORS_KWords.Damage_rgb..".\n"
			..Dot_red.." Deals low "..COLORS_KWords.Damage_rgb.." vs Carapace.\n"
			..Dot_red.." Cannot "..COLORS_KWords.Stagger_rgb.." Monstrosities or enemies with an active Void shield.\n"
			.."\n"
			..Dot_nc.." Forces a brief Quelling action upon reaching "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords.Peril_rgb..", removing ~"..COLORS_Numbers.pc_8_5_rgb.." "..COLORS_KWords.Peril_rgb..". If released below "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords.Peril_rgb..", it pushes enemies back.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			..Dot_red.." Do not use a Primary attack while channeling a Secondary attack at "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords.Peril_rgb..", or you will self-explode.",
		--[+ БЛИЦ 2 - Сокрушение +]--
		ru = "Вы выпускаете поток цепной биомолнии, которая медленно распространяется между врагами, нанося им низкий "..COLORS_KWords_ru.Dmg_rgb_ru.." "..COLORS_KWords_ru.Electrocuted_rgb_ru.." с течением времени и высокое "..COLORS_KWords_ru.Stagger_rgb_ru..".\n"
			.."Вторичная заряженная атака наносит повышенный "..COLORS_KWords_ru.Dmg_rgb_ru.." при высвобождении, а также быстрее распространяется.\n"
			.."\n"
			..Dot_nc.." Дальность: "..COLORS_Numbers.n_16_rgb.." метров.\n"
			..Dot_nc.." Бьёт только в зону туловища.\n"
			..Dot_nc.." При "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru.." запускается автоматическое подавление ~"..COLORS_Numbers.pc_8_5_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru..". Если отпустить атаку при уровне "..COLORS_KWords_ru.Peril_rgb_ru.." ниже "..COLORS_Numbers.pc_100_rgb..", врагов отбросит назад.\n"
			..PHRS.Cant_Crit_ru
			..Dot_red.." Средний "..COLORS_KWords_ru.Dmg_rgb_ru.." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..COLORS_KWords_ru.Dmg_rgb_ru.." по панцирной броне.\n"
			..Dot_red.." Не "..COLORS_KWords_ru.Staggers_e_rgb_ru.." монстров и врагов с активным пустотным щитом.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Внимание!{#reset()}\n"
			..Dot_red.." Не используйте основную атаку пока держите дополнительную при "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords.Peril_rgb.." или вы взорвётесь.",
		-- fr = "Déchaînez un torrent de bio-foudre qui se propage lentement entre les ennemis, infligeant de faible "..COLORS_KWords_fr.Damage_rgb_fr.." et "..COLORS_KWords_fr.Electrcuting_rgb_fr.."  sur la durée avec un fort "..COLORS_KWords_fr.Stagger_rgb_fr..".\nL'attaque chargée secondaire inflige plus de "..COLORS_KWords_fr.Damage_rgb_fr.." et le taux de dispersion.\nNe peut pas étourdir les Monstruosités et les ennemis avec bouclier de vide actif. Pénétration d'armure moyenne pour toutes les armures, Pénétration d'armure faible contre les carapaces."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_2_rgb_fr,
		-- ["zh-tw"] = "釋放一道生物閃電在敵人間跳躍，\n並造成低 "..COLORS_KWords_tw.Damage_rgb_tw.." 並持續 "..COLORS_KWords_tw.Electrocutes_rgb_tw.."，\n附帶強烈 "..COLORS_KWords_tw.Stagger_rgb_tw.."。\n"
			-- .."- 蓄力可提升"..COLORS_KWords_tw.Damage_rgb_tw.."與傳導範圍。\n"
			-- .."- 無法對巨獸或力場護盾敵人造成踉蹌。\n"
			-- .."- 所有護甲中等穿透，甲殼護甲低穿透。\n"
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Blitz_2_rgb_tw, -- 懲戒 -- 釋放一道生物閃電。這是一種快速定向攻擊，可在造成傷害時鎖定並擊暈敵人。技能效果可擴散到附近的敵人，充能增加擴散速度和傷害。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ BLITZ 2-1 - Charged Strike +]--	01.11.2025
	["loc_talent_psyker_chain_lightning_damage_heavy_attacks_desc"] = { -- +colors
		en = "Your Heavy Melee Attacks "..COLORS_KWords.Electrocute_rgb.." enemies, damaging them over time.\n"
			.."\n"
			..Dot_nc.." Deals up to "..COLORS_Numbers.n_64_rgb.." base "..COLORS_KWords.Damage_rgb.." per tick at max charge.\n"
			..Dot_nc.." The "..COLORS_KWords.Damage_rgb.." window lasts up to "..COLORS_Numbers.n_2_rgb.." seconds.\n"
			..Dot_nc.." The "..COLORS_KWords.Electrocuted_rgb.." state persists for "..COLORS_Numbers.n_2_rgb.." seconds after the last "..COLORS_KWords.Damage_rgb.." tick.\n"
			.."\n"
			..Dot_green.." With "..COLORS_KWords.Enfeeble_rgb.." selected, "..COLORS_KWords.Electrocution_rgb.." deals "..COLORS_KWords.Damage_rgb.." twice as long and reaches max charge faster.",
		--[+ БЛИЦ 2-1 - Заряженный удар +]--
		ru = "Ваши тяжёлые атаки ближнего боя накладывают на врагов эффект "..COLORS_KWords_ru.Electrocution_rgb_ru..", наносящий им "..COLORS_KWords_ru.Dmg_rgb_ru..".\n"
			.."\n"
			..Dot_nc.." Наносит до "..COLORS_Numbers.n_64_rgb.." единиц базового "..COLORS_KWords_ru.Dmg_a_rgb_ru.." за срабатывание при максимальном уровне заряда.\n"
			..Dot_nc.." Окно "..COLORS_KWords_ru.Dmg_a_rgb_ru.." длится "..COLORS_Numbers.n_2_rgb.." секунды.\n"
			..Dot_nc.." Эффект "..COLORS_KWords_ru.Electrocution_rgb_ru.." длится "..COLORS_Numbers.n_2_rgb.." секунды после последнего нанесения "..COLORS_KWords_ru.Dmg_a_rgb_ru..".\n"
			.."\n"
			..Dot_green.." При выбранном модификаторе "..COLORS_KWords_ru.Enfeeble_rgb_ru..", эффект "..COLORS_KWords_ru.Electrocution_rgb_ru.." наносит "..COLORS_KWords_ru.Dmg_rgb_ru.." вдвое дольше и достигает максимального заряда быстрее.",
		-- fr = "Vos attaques puissantes de mélées "..COLORS_KWords_fr.Electrocutes_rgb_fr.." les ennemis, ce qui leur inflige des "..COLORS_KWords_fr.Damage_rgb_fr.."\nJusqu'a "..COLORS_Numbers.n_64_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." par instance lors d'un coup chargé au maximum.\nLa fenêtre de "..COLORS_KWords_fr.Damage_rgb_fr.." dure jusqu'a "..COLORS_Numbers.n_2_rgb.." secondes. Le malus "..COLORS_KWords_fr.Electrocutes_rgb_fr.." dure jusqu'a "..COLORS_Numbers.n_2_rgb.." secondes après la dernière instance de "..COLORS_KWords_fr.Damage_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_2_3_rgb_fr, -- Coup chargé
		-- ["zh-tw"] = "重擊敵人時，\n施加敵人 "..COLORS_KWords_tw.Electrocution_rgb_tw.." 並產生 "..COLORS_KWords_tw.Dmg_c_rgb_tw.." 。\n"	
			-- .."- "..COLORS_KWords_tw.Dmg_d_rgb_tw.." 基礎為 "..COLORS_Numbers.n_8_rgb.." 。\n"
			-- .."- 蓄力達最大時 "..COLORS_KWords_tw.Dmg_d_rgb_tw.." 可達 "..COLORS_Numbers.n_64_rgb.."/s\n"
			-- .."- Dot持續時間最長 "..COLORS_Numbers.n_2_rgb.."s。\n"
			-- .."- "..COLORS_KWords_tw.Electrocution_rgb_tw.." 效果在最後一次Dot傷害後持續 "..COLORS_Numbers.n_2_rgb.."s 。\n"
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Blitz_2_3_rgb_tw, -- 蓄力打擊
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ BLITZ 2-2 - Enfeeble +]--	01.11.2025
	["loc_talent_psyker_chain_lightning_improved_target_buff_alt_description"] = { -- damage: +10%, talent_name: Smite, +colors
		en = Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." Taken from all sources for enemies under your {talent_name:%s}'s "..COLORS_KWords.Electrocution_rgb..".\n"
			.."\n"
			..PHRS.Doesnt_Stack_Psy_eff,
		--[+ БЛИЦ 2-2 - Ослабление +]--
		ru = Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." от всех источников, получаемому врагами, которые находятся по действием "..COLORS_KWords_ru.Electrocution_rgb_ru.." таланта {talent_name:%s}.\n"
			.."\n"
			..PHRS.Doesnt_Stack_Psy_eff_ru,
		-- fr = "Les ennemis qui sont "..COLORS_KWords_fr.Electrocuted_rgb_fr.." subissent {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." supplémentaires de toutes les sources.\nLe malus est appliqué tant que les ennemis subissent {talent_name:%s}.\nNe se cumul pas avec le même malus d'un autre Psyker."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_2_2_rgb_fr, -- Dégénérescence
		-- ["zh-tw"] = "{talent_name:%s} "..COLORS_KWords_tw.Electrocution_rgb_tw.." 的敵人，受到的 "..COLORS_KWords_tw.Dmg_a_rgb_tw.." {damage:%s}。\n"
			-- .."\n"
			-- .."- {talent_name:%s} 持續中的易傷效果將一直存在。\n"
			-- .."-不會與其他靈能者[衰弱詛咒]疊加。\n"
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Blitz_2_2_rgb_tw, -- 衰弱詛咒 -- 遭受你電擊的敵人受到所有來源的基礎傷害增加{damage:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ BLITZ 3 - Assail +]--	01.11.2025
	["loc_ability_psyker_blitz_throwing_knives_description"] = { -- +colors
		en = "Primary attack:\n"
			..Dot_nc.." Throw swift, homing projectiles that track the nearest enemy for "..COLORS_Numbers.n_2_5_rgb.." seconds.\n"
			..Dot_nc.." Deals "..COLORS_Numbers.n_225_rgb.." Base "..COLORS_KWords.Damage_rgb.." to the first target and costs "..COLORS_Numbers.pc_10_rgb.." "..COLORS_KWords.Peril_rgb..".\n"
			.."\n"
			.."Secondary attack:\n"
			..Dot_nc.." Launch a homing projectile that flies for "..COLORS_Numbers.n_3_rgb.." seconds, striking all enemies within a "..COLORS_Numbers.n_50_rgb.."-meter radius.\n"
			..Dot_nc.." Deals "..COLORS_Numbers.n_380_rgb.." Base "..COLORS_KWords.Damage_rgb.." and costs "..COLORS_Numbers.pc_25_rgb.." "..COLORS_KWords.Peril_rgb..".\n"
			.."\n"
			..Dot_green.." Can "..COLORS_KWords.Crit_rgb..".\n"
			..Dot_nc.." Costs "..COLORS_Numbers.n_1_rgb.." ammo.\n"
			..Dot_nc.." Regenerates "..COLORS_Numbers.n_1_rgb.." ammo every "..COLORS_Numbers.n_3_rgb.." seconds.\n"
			..Dot_red.." Deals very low "..COLORS_KWords.Damage_rgb.." to Carapace and low "..COLORS_KWords.Damage_rgb.." to Unyielding.\n"
			..Dot_red.." Cannot "..COLORS_KWords.Cleave_rgb.." through Carapace armor by default.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			..Dot_red.." Do not use at "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords.Peril_rgb..", or you will self-explode.",
		--[+ БЛИЦ 3 - Нападение +]--
		ru = "Основная атака:\n"
			..Dot_nc.." Вы бросаете быстрые самонаводящиеся снаряды, которые отслеживают ближайших врагов в течение "..COLORS_Numbers.n_2_5_rgb.." секунд.\n"
			..Dot_nc.." Наносит "..COLORS_Numbers.n_225_rgb.." базового "..COLORS_KWords_ru.Dmg_a_rgb_ru.." первой цели и стоит "..COLORS_Numbers.pc_10_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru..".\n"
			.."\n"
			.."Вторичная атака:\n"
			..Dot_nc.." Запускает самонаводящийся снаряд, который летит в течение "..COLORS_Numbers.n_3_rgb.." секунд, поражая врагов в радиусе "..COLORS_Numbers.n_50_rgb.." метров.\n"
			..Dot_nc.." Наносит "..COLORS_Numbers.n_380_rgb.." базового "..COLORS_KWords_ru.Dmg_a_rgb_ru.." и стоит "..COLORS_Numbers.pc_25_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru..".\n"
			.."\n"
			..Dot_green.." Наносит "..COLORS_KWords_ru.Crit0_rgb_ru..".\n"
			..Dot_nc.." Тратит "..COLORS_Numbers.n_1_rgb.." заряд.\n"
			..Dot_nc.." "..COLORS_Numbers.n_1_rgb.." заряд восстанавливается каждые "..COLORS_Numbers.n_3_rgb.." секунды.\n"
			..Dot_red.." Наносит очень низкий "..COLORS_KWords_ru.Dmg_rgb_ru.." по панцирной броне и низкий "..COLORS_KWords_ru.Dmg_rgb_ru.." по несгибаемым врагам.\n"
			..Dot_red.." Не "..COLORS_KWords_ru.Cleaving_et_rgb_ru.." врагов в панцирной броне.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Внимание!{#reset()}\n"
			..Dot_red.." Не используйте при "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru.." иначе вы взорвётесь.",
		-- fr = "Vous lancez des projectiles rapides et autoguidés formés d'énergie psychique qui suivent le réticule du joueur pendant "..COLORS_Numbers.n_2_5_rgb.." secondes jusqu'à l'ennemi le plus proche. Inflige "..COLORS_Numbers.n_200_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." à la première cible et coûte "..COLORS_Numbers.pc_10_rgb.." de "..COLORS_KWords_fr.Peril_rgb_fr..".\nL'attaque secondaire lance un projectile autoguidé qui vole pendant "..COLORS_Numbers.n_3_rgb.." secondes et touche les ennemis dans un rayon de "..COLORS_Numbers.n_50_rgb.." mètres avec une touche garantie. Inflige "..COLORS_Numbers.n_340_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." et coûte "..COLORS_Numbers.pc_25_rgb.." de "..COLORS_KWords_fr.Peril_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_3_rgb_fr,
		-- ["zh-tw"] = "投擲高速、自動鎖敵的靈能投擲物。\n"
			-- .."- 自動追蹤準星附近敵人，持續"..COLORS_Numbers.n_2_5_rgb.."秒。\n"
			-- .."- 首個目標"..COLORS_Numbers.n_200_rgb..""..COLORS_KWords_tw.Dmg_a_rgb_tw.."並產生"..COLORS_Numbers.pc_10_rgb..""..COLORS_KWords_tw.Peril_rgb_tw.."。\n"
			-- .."\n"
			-- .."- 副攻擊追蹤"..COLORS_Numbers.n_3_rgb.."s，可命中"..COLORS_Numbers.n_50_rgb.."m內敵人。\n"
			-- .."--造成"..COLORS_Numbers.n_340_rgb.."點"..COLORS_KWords_tw.Dmg_a_rgb_tw.."，並產生"..COLORS_Numbers.pc_25_rgb.." "..COLORS_KWords_tw.Peril_rgb_tw.."。\n"
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Blitz_3_rgb_tw, -- 靈能攻擊 -- 投擲高速、自動鎖敵的靈能投擲物。攻擊有甲殼護甲的敵人時效果較差。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ BLITZ 3-1 - Ethereal Shards +]--	01.11.2025
	["loc_talent_psyker_throwing_knives_pierce_description"] = { -- talent_name: Assail, +colors
		en = Dot_green.." {talent_name:%s} projectiles now pierce through additional targets.",
		--[+ БЛИЦ 3-1 - Эфирные осколки +]-- руоф Эфирные частицы
		ru = Dot_green.." Снаряды теперь пробивают дополнительные цели.",
		-- fr = "Les projectiles d'{talent_name:%s} percent désormais des cibles supplémentaires, passant de "..COLORS_Numbers.n_2_rgb.." à "..COLORS_Numbers.n_3_rgb.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_3_1_rgb_fr,
		-- ["zh-tw"] = "{talent_name:%s} 的穿透數量從 "..COLORS_Numbers.n_2_rgb.." 提升至 "..COLORS_Numbers.n_3_rgb.."。" .. TALENTS_Enh_desc_tw.ED_PSY_Blitz_3_1_rgb_tw, -- 乙太碎片 -- {talent_name:%s}的投射物可擊穿額外目標。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ BLITZ 3-2 - Quick Shards +]--	01.11.2025
	["loc_talent_psyker_throwing_knives_cast_speed_description"] = { -- talent_name: Assail, recharge: 30%
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{recharge:%s} {talent_name:%s} charge replenish speed.\n"
			.."\n"
			..Dot_nc.." Reduces projectile recharge time from "..COLORS_Numbers.n_3_rgb.." to "..COLORS_Numbers.n_2_1_rgb.." seconds per projectile.",
		--[+ БЛИЦ 3-2 - Быстрые осколки +]-- руоф Быстрые частицы
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{recharge:%s} к скорости восстановления зарядов.\n"
			.."\n"
			..Dot_nc.." Сокращает время восстановления снарядов с "..COLORS_Numbers.n_3_rgb.." до "..COLORS_Numbers.n_2_1_rgb.." секунд на снаряд.",
		-- fr = "Les charges d'{talent_name:%s} se régénerent {recharge:%s} plus rapidement."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_3_2_rgb_fr,
		-- ["zh-tw"] = "{talent_name:%s} 的恢復速度提高 {recharge:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Blitz_3_2_rgb_tw, -- 迅捷碎片 --{talent_name:%s}充能速度加快{recharge%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
--[+ +AURA - АУРЫ+ +]--
	--[+ AURA 0 - The Quickening +]--	01.11.2025
	["loc_talent_psyker_aura_reduced_ability_cooldown_description"] = { -- cooldown_reduction: +7.5%, +colors
		en = Dot_green.." {cooldown_reduction:%s} "..COLORS_KWords.Ability_cd_rgb.." Reduction for you and allies in "..COLORS_KWords.Coherency_rgb..".\n"
			.."\n"
			..PHRS.Doesnt_Stack_Psy_Aura,
		--[+ АУРА 0 - Ускорение +]--
		ru = Dot_green.." {cooldown_reduction:%s} к сокращению "..COLORS_KWords_ru.Ability_cd_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n"
			.."\n"
			..PHRS.Doesnt_Stack_Psy_Aura_ru,
		-- fr = "{cooldown_reduction:%s} de "..COLORS_KWords_fr.Ability_cd_rgb_fr.." pour vous et vos Alliés en syntonie."..TALENTS_Enh_desc_fr.ED_PSY_Aura_0_rgb_fr,
		-- ["zh-tw"] = "你與"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友，\n"..COLORS_KWords_tw.Combat_ability_cd_rgb_tw.."縮短 {cooldown_reduction:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Aura_0_rgb_tw, -- 加速 -- 你和協同中的盟友技能冷卻縮減增加{cooldown_reduction:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ AURA 1 - Kinetic Presence +]--	01.11.2025
	["loc_talent_psyker_base_3_description"] = { -- damage: +7.5%, +colors
		en = Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." against Elite Enemies for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n"
			.."\n"
			..PHRS.Doesnt_Stack_Psy_Aura,
		--[+ АУРА 1 - Кинетическое присутствие +]--
		ru = Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." против элитных врагов для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n"
			.."\n"
			..PHRS.Doesnt_Stack_Psy_Aura_ru,
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemis d'élites pour vos vous et vos alliés en syntonie."..TALENTS_Enh_desc_fr.ED_PSY_Aura_1_rgb_fr,
		-- ["zh-tw"] = "你與"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友，\n對精英敵人造成的"..COLORS_KWords_tw.Damage_rgb_tw.."提高 {damage:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Aura_1_rgb_tw, -- 動能釋放 -- 你和協同中的盟友可對精英敵人造成額外{damage:%s}傷害。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ AURA 2 - Seer's Presence +]--	01.11.2025
	["loc_talent_psyker_cooldown_aura_improved_description"] = { -- cooldown_reduction: +10%, talent_name: The Quickening, +colors
		en = Dot_green.." {cooldown_reduction:%s} "..COLORS_KWords.Cd_rgb.." Reduction on Abilities for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n"
			..Dot_green.." An augmented version of {talent_name:%s}.\n"
			.."\n"
			..PHRS.Doesnt_Stack_Psy_Aura,
		--[+ АУРА 2 - Присутствие провидца +]--
		ru = Dot_green.." {cooldown_reduction:%s} к сокращению "..COLORS_KWords_ru.Ability_cd_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n"
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			.."\n"
			..PHRS.Doesnt_Stack_Psy_Aura_ru,
		-- fr = "{cooldown_reduction:%s} de "..COLORS_KWords_fr.Ability_cd_rgb_fr.." pour vous et vos Alliés en syntonie.\n\nIl s'agit une version améliorée de : {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Aura_2_rgb_fr,
		-- ["zh-tw"] = "你與"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友，"..COLORS_KWords_tw.Combat_ability_cd_rgb_tw.."縮短 {cooldown_reduction:%s}。\n\n這是強化版的光環 {talent_name:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Aura_2_rgb_tw, -- 先知之眼 -- 你和協同中的盟友{cooldown_reduction:%s}技能冷卻縮減。\n\n該天賦為{talent_name:%s}的增強版。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ AURA 3 - Prescience +]--	01.11.2025
	["loc_ability_psyker_gunslinger_aura_description"] = { -- critical_strike_chance: +5%, +colors
		en = Dot_green.." {critical_strike_chance:%s} "..COLORS_KWords.Crit_hit_chance_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n"
			.."\n"
			..Dot_nc.." Applies to all attacks that can "..COLORS_KWords.Crit_rgb..".\n"
			..PHRS.Doesnt_Stack_Psy_Aura,
		--[+ АУРА 3 - Предвидение +]--
		ru = Dot_green.." {critical_strike_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n"
			.."\n"
			..Dot_nc.." Применяется ко всем атакам, наносящим "..COLORS_KWords_ru.Crit_dmg_r_rgb_ru..".\n"
			..PHRS.Doesnt_Stack_Psy_Aura_ru,
		-- fr = "Vous et vos Alliés en syntonie gagne {critical_strike_chance:%s} "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Aura_3_rgb_fr,
		-- ["zh-tw"] = "你與"..COLORS_KWords_tw.Coherencing_rgb_tw.."中的隊友，\n"..COLORS_KWords_tw.Crit_chance_rgb_tw.."提高 {critical_strike_chance:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Aura_3_rgb_tw, -- 預兆 --你和協同中的盟友獲得{critical_strike_chance:%s}暴擊機率。
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
	--[+ ABILITY 0 - Psykinetic's Wrath +]--	01.11.2025
	["loc_talent_psyker_shout_ability_description"] = { -- warpcharge_vent: 10%, cooldown: 30, s->seconds, +colors
		en = "Quells {warpcharge_vent:%s} "..COLORS_KWords.Peril_rgb.." while releasing a cone-shaped shout that "..COLORS_KWords.Staggers_rgb.." enemies in front of you.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Can be used to prevent the "..COLORS_KWords.cls_psy_rgb.." from exploding.\n"
			..Dot_nc.." The Warp wave travels through walls and spreads up to "..COLORS_Numbers.n_30_rgb.." meters, allowing you to "..COLORS_KWords.Stun_rgb.." a Pox Hound attacking an ally through obstacles.\n"
			..Dot_nc.." "..COLORS_KWords.Stuns_rgb.." enemies within a "..COLORS_Numbers.n_5_rgb.."-meter radius in front of you.",
		--[+ СПОСОБНОСТЬ 0 - Гнев психокинетика +]-- руоф Психокинетический гнев
		ru = "Вы подавляете {warpcharge_vent:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." одновременно испуская конусообразный крик, который "..COLORS_KWords_ru.Staggers_e_rgb_ru.." врагов перед вами.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Может использоваться для предотвращения самоподрыва.\n"
			..Dot_nc.." Враги в "..COLORS_Numbers.n_5_rgb.."-метровом радиусе перед вами "..COLORS_KWords_ru.Staggerstsa_rgb_ru..".\n"
			..Dot_nc.." Волна варпа проходит сквозь стены и распространяется на расстояние до "..COLORS_Numbers.n_30_rgb.." метров, позволяя вам "..COLORS_KWords_ru.Staggernt_rgb_ru.." сквозь препятствия Гончую, атакующую союзника.",
		-- fr = "Libère un cri en forme de cône devant le Psyker qui fait "..COLORS_KWords_fr.Staggering_rgb_fr.." les ennemis devant vous. Réduit de {warpcharge_vent:%s} le "..COLORS_KWords_fr.Peril_rgb_fr..".\n\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_0_rgb_fr,
		-- ["zh-tw"] = "你釋放一道錐形的靈能波動，\n使用此能力可避免靈能反噬。\n冷卻時間：{cooldown:%s} 秒。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_0_rgb_tw)),

			-- loc_text("釋放出一道錐形的靈能波動，\n造成前方敵人"..COLORS_KWords_tw.Stagger_rgb_tw.."。\n" 
			-- .."\n"
			-- .."- 使用時會平息 {warpcharge_vent:%s} 的 "..COLORS_KWords_tw.Peril_rgb_tw.." 。\n"
			-- .."- 冷卻時間：{cooldown:%s} 秒。\n"
			-- ..""
			-- .."- 攻擊範圍最遠可達"..COLORS_Numbers.n_30_rgb.."m\n"
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Ability_0_rgb_tw, -- 靈能學者之怒 -- 釋放一波亞空間能量，造成前方敵人暈眩。\n平息{warpcharge_vent:%s}反噬。\n\n基礎冷卻時間：{cooldown:%s}秒。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 1 - Venting Shriek +]--	01.11.2025
	["loc_talent_psyker_shout_vent_warp_charge_description"] = { -- warpcharge_vent: 50%, cooldown: 30, talent_name: Psykinetic's Wrath, s->seconds, +colors
		en = "Quells {warpcharge_vent:%s} "..COLORS_KWords.Peril_rgb.." while releasing a cone-shaped shout that "..COLORS_KWords.Staggers_rgb.." enemies in front of you.\n"
			..Dot_green.." An augmented version of {talent_name:%s}.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Can be used to prevent the "..COLORS_KWords.cls_psy_rgb.." from exploding.\n"
			..Dot_nc.." The Warp wave travels through walls and spreads up to "..COLORS_Numbers.n_30_rgb.." meters, allowing you to "..COLORS_KWords.Stun_rgb.." a Pox Hound attacking an ally through obstacles.\n"
			..Dot_nc.." "..COLORS_KWords.Stuns_rgb.." enemies within a "..COLORS_Numbers.n_5_rgb.."-meter radius in front of you.\n"
			..Dot_nc.." Always targets Torso hitzone.",
		--[+ СПОСОБНОСТЬ 1 - Сбрасывающий вопль +]-- руоф Вырвавшийся вопль
		ru = "Вы подавляете {warpcharge_vent:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." одновременно испуская конусообразный крик, который "..COLORS_KWords_ru.Staggers_e_rgb_ru.." врагов перед вами.\n"
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Может использоваться для предотвращения самоподрыва.\n"
			..Dot_nc.." Враги в "..COLORS_Numbers.n_5_rgb.."-метровом радиусе перед вами "..COLORS_KWords_ru.Staggerstsa_rgb_ru..".\n"
			..Dot_nc.." Волна варпа проходит сквозь стены и распространяется на расстояние до "..COLORS_Numbers.n_30_rgb.." метров, позволяя вам "..COLORS_KWords_ru.Staggernt_rgb_ru.." сквозь препятствия Гончую, атакующую союзника.\n"
			..Dot_nc.." Всегда поражает в зону торса.",
		-- fr = "Libère un cri en forme de cône devant le Psyker qui fait "..COLORS_KWords_fr.Staggering_rgb_fr.." les ennemis devant vous. Réduit de {warpcharge_vent:%s} le "..COLORS_KWords_fr.Peril_rgb_fr..".\n\nTemps de recharge de base : {cooldown:%s} secondes.\n\nC'est la version augmentée de {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_1_rgb_fr,
		-- ["zh-tw"] = "釋放出一道錐形的靈能波動，\n造成前方敵人"..COLORS_KWords_tw.Stagger_rgb_tw.."。\n"
			-- .."\n"
			-- .."- 使用時會平息 {warpcharge_vent:%s} 的 "..COLORS_KWords_tw.Peril_rgb_tw.." 。\n"
			-- .."- 冷卻時間：{cooldown:%s} 秒。\n"
			-- .."- 可以用來防止 "..COLORS_KWords_tw.Perl_e_rgb_tw.." 。\n"
			-- .."- 攻擊範圍最遠可達 "..COLORS_Numbers.n_30_rgb.."m 。\n"
			-- .."- 靈能波動可穿透任何障礙物。\n"
			-- .."- 可穿牆將瘟疫獵犬從隊友身上推開。\n"
			-- .."\n這是強化版的技能 {talent_name:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_1_rgb_tw, -- 靈能尖嘯 -- 釋放一波亞空間能量，造成前方敵人暈眩，並平息{warpcharge_vent:%s}反噬。\n\n基礎冷卻時間：{cooldown:%s}秒。\n\n該天賦是{talent_name:%s}的增強版。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 1-1 - Warp Rupture +]--	01.11.2025
	["loc_talent_psyker_discharge_damage_debuff_description"] = { -- talent_name: Venting Shriek, damage_reduction: 10%, damage_taken: 10%, duration: 8, +colors
		en = "{talent_name:%s} applies a debuff to Enemies for {duration:%s} seconds:\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Dealt,\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{damage_taken:%s} "..COLORS_KWords.Damage_rgb.." Taken.\n"
			.."\n"
			..PHRS.Doesnt_Stack_Psy_eff,
		--[+ СПОСОБНОСТЬ 1-1 - Разрыв варпа +]-- руоф Варп-разрыв
		ru = "{talent_name:%s} накладывает ослабление на врагов на {duration:%s} секунд:\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{damage_reduction:%s} к наносимому "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{damage_taken:%s} к получаемому "..COLORS_KWords_ru.Damage_rgb_ru..".\n"
			.."\n"
			..PHRS.Doesnt_Stack_Psy_eff_ru,
		-- fr = "Votre {talent_name:%s} inflige également de {base_damage:%s} à {max_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..", basé sur votre pourcentage de "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Ability_1_2_rgb_fr,
		-- ["zh-tw"] = "{talent_name:%s} 會依據當前的"..COLORS_KWords_tw.Peril_rgb_tw.."，\n造成 {base_damage:%s} 至 {max_damage:%s} 點"..COLORS_KWords_tw.Dmg_a_rgb_tw.."。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_1_2_rgb_tw -- 亞空間爆發 -- 根據當前反噬程度，{talent_name:%s}還會賦予{base_damage:%s}-{max_damage:%s}傷害。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 1-2 - Becalming Eruption +]--	13.11.2025
	["loc_talent_psyker_shout_reduces_warp_charge_generation_description"] = { -- talent_name: Venting Shriek, warp_generation: 1%, max_stacks: 25->25%, duration: 5, s->seconds, +colors
		en = Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{warp_generation:%s} "..COLORS_KWords.Peril_rgb.." Generation for each Enemy hit by {talent_name:%s}.\n"
				..Dot_nc.." Up to "..COLORS_Numbers.n_minus_rgb.."{max_stacks:%s}"..COLORS_Numbers.pc_rgb.." "..COLORS_KWords.Peril_rgb.." Generation.\n"
				..Dot_nc.." Lasts {duration:%s} seconds.",
		--[+ СПОСОБНОСТЬ 1-2 - Успокаивающее извержение +]-- руоф Затихающее извержение
		ru = Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{warp_generation:%s} к набору "..COLORS_KWords_ru.Peril_rgb_ru.." за каждого врага поражённого вашим талантом {talent_name:%s}.\n"
				..Dot_nc.." До "..COLORS_Numbers.n_minus_rgb.."{max_stacks:%s}"..COLORS_Numbers.pc_rgb.." к набору "..COLORS_KWords_ru.Peril_rgb_ru..".\n"
				..Dot_nc.." Длится {duration:%s} секунд.",
		-- fr = "À présent, {talent_name:%s} réduit la génération de "..COLORS_KWords_fr.Peril_rgb_fr.." de {warp_generation:%s} pour chaque ennemi touché. Jusqu'à {max_stacks:%s}"..COLORS_Numbers.pc_rgb..". Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_1_1_rgb_fr,
		-- ["zh-tw"] = "{talent_name:%s}每命中一名敵人，\n降低 {warp_generation:%s} "..COLORS_KWords_tw.Peril_rgb_tw.."，最多 {max_stacks:%s}"..COLORS_Numbers.pc_rgb.."，持續 {duration:%s} 秒。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_1_1_rgb_tw, -- 平靜进發 -- 每命中一個敵人{talent_name:%s}都會降低反噬生成{warp_generation:%s}，可疊加{max_stacks:%s}次，持續{duration:%s}秒。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
-- !!! Removed " -". Fix in the Enhanced_Descriptions.lua file !!! --
	--[+ ABILITY 1-3 - Creeping Flames +]--	01.11.2025
	["loc_talent_psyker_warpfire_on_shout_desc"] = { -- talent_name: Venting Shriek, min_stacks: 1 -, warpfire_stacks: 6, Stack(s)->Stacks, +colors
		en = "{talent_name:%s} applies {min_stacks:%s} - {warpfire_stacks:%s} Stacks of "..COLORS_KWords.Soulblaze_rgb.." to targets Hit based on your current "..COLORS_KWords.Peril_rgb..".\n"
			.."_______________________________\n"
			..COLORS_KWords.Soulblaze_rgb.."   "..COLORS_Numbers.n_1_rgb.." |    "..COLORS_Numbers.n_2_rgb.." |     "..COLORS_Numbers.n_3_rgb.." |      "..COLORS_Numbers.n_4_rgb.." |     "..COLORS_Numbers.n_5_rgb.." |     "..COLORS_Numbers.n_6_rgb.."\n"
			..COLORS_KWords.Peril_rgb.." ("..COLORS_Numbers.pc_rgb.."):    "..COLORS_Numbers.n_0_rgb.." | "..COLORS_Numbers.n__17_rgb.." | "..COLORS_Numbers.n__33_rgb.." | "..COLORS_Numbers.n__50_rgb.." | "..COLORS_Numbers.n__67_rgb.." | "..COLORS_Numbers.n__83_rgb.."\n"
			-- ..COLORS_KWords.Soulblaze_rgb.."      1|     2|     3|      4|     5|     6\n"
			-- ..COLORS_KWords.Peril_rgb.." (%):       0|  ~17| ~33| ~50| ~67| ~83\n"
			.."_______________________________\n"
			..Dot_nc.." Lasts "..COLORS_Numbers.n_8_rgb.." seconds.\n"
			..Dot_nc.." Ticks every "..COLORS_Numbers.n_075_rgb.." seconds.\n"
			.."\n"
			..PHRS.Refr_dur_stappl.."\n"
			..Dot_green.." Very high armor "..COLORS_KWords.Damage_rgb.." modifiers across the board.\n"
			..Dot_red.." Very low armor "..COLORS_KWords.Damage_rgb.." modifier against Carapace.",
		--[+ СПОСОБНОСТЬ 1-3 - Ползучее пламя +]-- руоф Раздувающееся пламя
		ru = "{talent_name:%s} накладывает от "..COLORS_Numbers.n_1_rgb.." до {warpfire_stacks:%s} зарядов "..COLORS_KWords_ru.Soulblaze_rgb_ru.." на поражённые цели в зависимости от текущего процента "..COLORS_KWords_ru.Peril_rgb_ru..":\n"
			.."_______________________________\n"
			.."Заряды:              "..COLORS_Numbers.n_1_rgb.."|    "..COLORS_Numbers.n_2_rgb.."|    "..COLORS_Numbers.n_3_rgb.."|    "..COLORS_Numbers.n_4_rgb.."|     "..COLORS_Numbers.n_5_rgb.."|    "..COLORS_Numbers.n_6_rgb.."\n"
			..COLORS_KWords_ru.Perl0_rgb_ru.." ("..COLORS_Numbers.pc_rgb.."):  "..COLORS_Numbers.n_0_rgb.."|"..COLORS_Numbers.n__17_rgb.."|"..COLORS_Numbers.n__33_rgb.."|"..COLORS_Numbers.n__50_rgb.."|"..COLORS_Numbers.n__67_rgb.."|"..COLORS_Numbers.n__83_rgb.."\n"
			.."_______________________________\n"
			..Dot_nc.." Срабатывает раз в "..COLORS_Numbers.n_075_rgb.." секунды.\n"
			..Dot_nc.." Длится "..COLORS_Numbers.n_8_rgb.." секунд.\n"
			.."\n"
			..PHRS.Refr_dur_stappl_ru.."\n"
			..Dot_green.." Большой "..COLORS_KWords_ru.Dmg_rgb_ru.." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..COLORS_KWords_ru.Dmg_rgb_ru.." по панцирной броне.",
		-- fr = "{talent_name:%s} applique {min_stacks:%s}{warpfire_stacks:%s} cumuls d'"..COLORS_KWords_fr.Soulblaze_rgb_fr.." aux cibles touchées en fonction de votre "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Ability_1_3_rgb_fr,
		-- ["zh-tw"] = "{talent_name:%s} 依據當前的"..COLORS_KWords_tw.Peril_rgb_tw.."，\n對命中的目標施加 "..COLORS_Numbers.n_1_rgb.." 至 {warpfire_stacks:%s} 層"..COLORS_KWords_tw.Soulblaze_rgb_tw.."。"..TALENTS_Enh_desc_tw.ED_PSY_Ability_1_3_rgb_tw, -- 蔓延火焰
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 2 - Telekine Shield +]--	14.11.2025
	["loc_talent_psyker_combat_ability_shield_description"] = { -- duration: 17.5, cooldown: 40, s->seconds
		en = "Spawns a {talent_name:%s} that blocking incoming enemy ranged attacks while allowing you and your allies to fire through it.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Shield Health: 20.\n"
			..Dot_green.." Blocks:\n"
			.."   "..Dot_green.." Ranged hit scan attacks,\n"
			.."   "..Dot_green.." Projectiles (Bomber grenades),\n"
			.."   "..Dot_green.." Trapper's nets,\n"
			.."   "..Dot_green.." Flamethrower direct hits.\n"
			..Dot_red.." Does Not Block:\n"
			.."   "..Dot_red.." Ground fire patches,\n"
			.."   "..Dot_red.." Toxic gas clouds,\n"
			.."   "..Dot_red.." Poxburster explosions.\n"
			.."\n"
			..Dot_nc.." Hold the ability button to preview placement. Cancel by blocking.",
		--[+ СПОСОБНОСТЬ 2 - Телекинетический щит +]--
		ru = "Вы создаёте {talent_name:%s}, который блокирует вражеские дальние атаки, позволяя вам и вашим союзникам стрелять сквозь него.\n"
			..Dot_nc.." Длится {duration:%s} секунды.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Здоровье щита: 20.\n"
			..Dot_green.." Блокирует:\n"
			.."   "..Dot_green.." Дальнобойные выстрелы,\n"
			.."   "..Dot_green.." Снаряды (гранаты Гренадёра),\n"
			.."   "..Dot_green.." Сетки Ловушечника,\n"
			.."   "..Dot_green.." Прямые попадания огнемёта.\n"
			..Dot_red.." Не блокирует:\n"
			.."   "..Dot_red.." Наземные пятна огня,\n"
			.."   "..Dot_red.." Облака токсичного газа,\n"
			.."   "..Dot_red.." Подрыв взрывника.\n"
			.."\n"
			..Dot_nc.." Удерживание кнопки активации способности показывает место размещения. Отменяется блоком.",
		-- fr = "Invoque un bouclier psychique devant vous pendant {duration:%s} secondes. Le bouclier bloque les attaques à distance des ennemis, tandis que vous et vos alliés pouvez toujours tirer à travers.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_rgb_fr,
		-- ["zh-tw"] = "在面前生成靈能護盾，持續 {duration:%s} 秒。\n"
			-- .."\n"
			-- .."- 阻擋敵方射擊，友方可穿透護盾射擊。\n"
			-- .."- 長按技能預覽位置，透過格擋取消。\n"
			-- .."\n"
			-- .."- 冷卻時間：{cooldown:%s} 秒。" 
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Ability_2_rgb_tw, -- 念力護盾 -- 在身前展開一道持續{duration:%s}秒的靈能護盾。護盾能阻擋敵人的遠程攻擊，但你和盟友的射擊不受影響。\n\n基礎冷卻時間：{cooldown:%s}秒。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 2-1 - Bolstered Shield +]--	01.11.2025
	["loc_talent_psyker_force_field_charges_cooldown_description"] = { -- talent_name: Telekine Shield, max_charges: 2, cooldown: 35, +colors
		en = Dot_green.." {talent_name:%s} now holds up to {max_charges:%s} charges.\n"
			..Dot_green.." Cooldown decreased to {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." The second charge's Cooldown starts once the first one is ready.",
		--[+ СПОСОБНОСТЬ 2-1 - Усиленный щит +]--
		ru = Dot_green.." {talent_name:%s} теперь имеет {max_charges:%s} заряда.\n"
			..Dot_green.." Время "..COLORS_KWords_ru.Ability_cd_rgb_ru.." снижено на {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Время "..COLORS_KWords_ru.Cd_rgb_ru.." второго заряда начинается после готовности первого.",
		-- fr = "{talent_name:%s} peut maintenant accumuler jusqu'à {max_charges:%s} charges."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_1_rgb_fr,
		-- ["zh-tw"] = "{talent_name:%s} 現在擁有 {max_charges:%s} 次充能。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_2_1_rgb_tw, -- 強化護盾 -- {talent_name:%s}現在可以疊加{max_charges:%s}層充能。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 2-2 - Enervating Threshold +]--	01.11.2025
	["loc_talent_psyker_force_field_stun_increased_new_description"] = { -- ability: Telekine Shield, proc_chance: 20%, special_proc_chance: 100%, +colors
		en = "{ability:%s} has a {proc_chance:%s} chance to "..COLORS_KWords.Electrocute_rgb.." enemies that pass through it. Specialists and Monstrosities have a {special_proc_chance:%s} chance to get "..COLORS_KWords.Electrocuted_rgb.." but also damage the {ability:%s}.\n"
			.."\n"
			..Dot_green.." Deals "..COLORS_Numbers.n_250_rgb.." Base "..COLORS_KWords.Damage_rgb..".\n"
			..Dot_green.." Can "..COLORS_KWords.Stagger_rgb.." all enemies except Monstrosities and enemies with active Void shield.\n"
			-- ..Dot_nc.." The "..COLORS_KWords.Electrocution_rgb.." is always applied to Specialists and Monstrosities on contact.\n"
			..Dot_red.." Very low armor "..COLORS_KWords.Damage_rgb.." modifiers.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}BUG{#reset()}\n"
			.."Specialists and Monstrosities only deal "..COLORS_Numbers.n_1_rgb.." "..COLORS_KWords.Damage_rgb.."  to the shield upon contact, instead of the intended "..COLORS_Numbers.n_8_rgb..".",
		--[+ СПОСОБНОСТЬ 2-2 - Порог ослабления +]--
		ru = "Враги, проходящие сквозь {ability:%s}, с {proc_chance:%s} шансом могут быть поражены "..COLORS_KWords_ru.Electrocuted_rgb_ru..".\n"
			.."Щит всегда поражает "..COLORS_KWords_ru.Electrocuted_rgb_ru.." специалистов, но при этом повреждается при контакте с ними.\n"
			.."\n"
			..Dot_green.." Наносит "..COLORS_Numbers.n_250_rgb.." базового "..COLORS_KWords_ru.Dmg_a_rgb_ru..".\n"
			..Dot_green.." Может "..COLORS_KWords_ru.Staggernt_rgb_ru.." всех врагов исключая монстров и врагов с активным пустотным щитом.\n"
			..Dot_nc.." "..COLORS_KWords_ru.Staggerr_rgb_ru.." всегда применяется к специалистам и монстрам при контакте.\n"
			..Dot_red.." Слабый "..COLORS_KWords_ru.Dmg_rgb_ru.." по броне.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}СЛОМАНО{#reset()}\n"
			.."Специалисты и монстры наносят щиту при контакте только "..COLORS_Numbers.n_1_rgb.." "..COLORS_KWords_ru.Dmg_a_rgb_ru.." вместо задуманных "..COLORS_Numbers.n_8_rgb..".",
		-- fr = "{ability:%s} a {proc_chance:%s} de chances d'"..COLORS_KWords_fr.Electrocute_rgb_fr.." les ennemis qui le traversent. Les ennemis spécialistes ont {special_proc_chance:%s} de chances d'être "..COLORS_KWords_fr.Electrocuted_rgb_fr.." mais endommagent également le {ability:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_2_rgb_fr,
		-- ["zh-tw"] = "{ability:%s} 有機率 "..COLORS_KWords_tw.Electrocute_rgb_tw.." 穿越的敵人。\n" 
			-- .."- "..COLORS_KWords_tw.Electrocute_rgb_tw.."機率：\n"
			-- .."--Boss：無法暈眩。\n"
			-- .."--一般敵人：{proc_chance:%s}\n"
			-- .."--精英：{special_proc_chance:%s}，但會損傷{ability:%s}。\n"
			-- .."--專家：{special_proc_chance:%s}，但會損傷{ability:%s}。\n"
			-- .."--菁英與專家會對 {ability:%s} 造成傷害。\n"
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Ability_2_2_rgb_tw, -- 衰弱界線 -- {ability:%s}有{proc_chance:%s}的幾率使經過其中的敵人遭受電擊。專家敵人經過時也有{special_proc_chance:%s}的幾率遭受電擊，但也會使{ability:%s}受損。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 2-3 - Telekine Dome +]--	01.11.2025
	["loc_talent_psyker_force_field_dome_new_desc"] = { -- talent_name: Telekine Shield, duration: 25, s->seconds
		en = "{talent_name:%s} now forms a spherical shield.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Sphere radius: "..COLORS_Numbers.n_6_rgb.." meters.\n"
			..Dot_nc.." Protects from enemy attacks from all angles.",
		--[+ СПОСОБНОСТЬ 2-3 - Телекинетический купол +]--
		ru = "{talent_name:%s} теперь формирует сферу.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Радиус сферы: "..COLORS_Numbers.n_6_rgb.." метров.\n"
			..Dot_nc.." Защищает от атак со всех сторон.",
		-- fr = "{talent_name:%s} forme maintenant un bouclier sphérique qui dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_3_rgb_fr,
		-- ["zh-tw"] = "，持續 {duration:%s} 秒。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_2_3_rgb_tw)),
			-- loc_text("{talent_name:%s} 會形成圓形護盾，持續 {duration:%s} 秒。\n" 
			-- .."- 球體半徑為"..COLORS_Numbers.n_6_rgb.."公尺。\n"
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Ability_2_3_rgb_tw, -- 念力穹頂 -- {talent_name:%s}現在形成一個持續{duration:%s}秒的球形護盾。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 2-4 - Sanctuary +]--	01.11.2025
	["loc_talent_psyker_force_field_grants_toughness_desc"] = { -- talent_name: Telekine Shield, toughness: 10%, toughness_damage_reduction: +50%, duration: 5, s->seconds, +colors
		en = Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." per second replenishes for Allies inside your {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for {duration:%s} seconds for allies inside your {talent_name:%s} when it dissipates.\n"
			.."\n"
			..Dot_green.." This effects stack if multiple spheres overlap.",
		--[+ СПОСОБНОСТЬ 2-4 - Убежище +]-- руоф Святилище
		ru = Dot_green.." {toughness:%s} к восстановлению "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду для союзников внутри купола вашего щита.\n"
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." на {duration:%s} секунд для союзников, находящихся внутри купола вашего щита, после его рассеивания.\n"
			.."\n"
			..Dot_green.." Эффект суммируется, если перекрываются несколько сфер.",
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par seconde pour les alliés à l'intérieur de votre {talent_name:%s}.\n{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." pendant {duration:%s} secondes pour tous les alliés à l'intérieur de votre {talent_name:%s} lorsqu'il se dissipe."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_4_rgb_fr,
		-- ["zh-tw"] = "恢復{talent_name:%s}內的玩家"..COLORS_KWords_tw.Toughness_rgb_tw.."。\n"
			-- .."\n"
			-- .."- 每秒恢復 {toughness:%s} 點"..COLORS_KWords_tw.Toughness_rgb_tw.."。\n"
			-- .."\n"
			-- .."- 當{talent_name:%s}消散，保護範圍內的玩家，\n"
			-- .."--將獲得{toughness_damage_reduction:%s}"..COLORS_KWords_tw.Toughness_dmg_red_u_rgb_tw.."。\n"
			-- .."- 持續 {duration:%s} 秒。\n"
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Ability_2_4_rgb_tw, -- 庇護所 -- 你的{talent_name:%s}內的盟友每秒恢復{toughness:%s}韌性。當你的{talent_name:%s}消散，身處其中的所有盟友獲得{toughness_damage_reduction:%s}韌性減傷，持續{duration:%s}秒。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 3 - Scrier's Gaze +]--	01.11.2025
	["loc_talent_psyker_combat_ability_overcharge_stance_improved_description"] = { -- duration: 10, base_damage: +10%, weakspot_damage: +10%, crit_chance: +20%, max_peril: 100%, cooldown: 25, damage_per_stack: +1%, vent: 50%, tdr: +20%, toughness: 2.5%, max_damage: +30%, s->seconds, +colors
		en = "You enter "..COLORS_KWords.Scriers_gaze_rgb..", Quell {vent:%s} "..COLORS_KWords.Peril_rgb.." and gain:\n"
			..Dot_green.." {base_damage:%s} "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." {crit_chance:%s} "..COLORS_KWords.Crit_chance_rgb..",\n"
			..Dot_green.." {weakspot_damage:%s} "..COLORS_KWords.Weakspot_dmg_rgb..",\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." per second,\n"
			..Dot_green.." {tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb..",\n"
			..Dot_green.." Suppression Immunity.\n"
			.."\n"
			.."For every second in "..COLORS_KWords.Scriers_gaze_rgb.." you gain Stacks:\n"
			..Dot_green.." {damage_per_stack:%s} "..COLORS_KWords.Damage_rgb..", up to {max_damage:%s}. This effect lingers for {duration:%s} seconds after leaving "..COLORS_KWords.Scriers_gaze_rgb..".\n"
			.."\n"
			.."While in "..COLORS_KWords.Scriers_gaze_rgb.." you build up "..COLORS_KWords.Peril_rgb..". Build-up is temporarily slowed down by enemy Kills.\n"
			.."At {max_peril:%s} "..COLORS_KWords.Peril_rgb.." Ability ends.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.",
		--[+ СПОСОБНОСТЬ 3 - Взор провидца +]-- руоф Взор Скрира
		ru = "Активировав "..COLORS_KWords_ru.Scriers_gaze_rgb_ru..", вы сбрасываете {vent:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." и получаете:\n"
			..Dot_green.." {base_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
			..Dot_green.." {crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru..",\n"
			..Dot_green.." {weakspot_damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru..",\n"
			..Dot_green.." {toughness:%s} к "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду,\n"
			..Dot_green.." {tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru..",\n"
			..Dot_green.." иммунитет к подавлению.\n"
			.."\n"
			.."За каждую секунду пока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru.." вы получаете заряды:\n"
			..Dot_green.." {damage_per_stack:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..", вплоть до максимальных {max_damage:%s}. Этот эффект продлевается на {duration:%s} секунд после того как "..COLORS_KWords_ru.Scriers_gaze_rgb_ru.." заканчивает своё действие.\n"
			.."\n"
			.."Пока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru.." вы набираете "..COLORS_KWords_ru.Perl_rgb_ru..". Набор "..COLORS_KWords_ru.Peril_rgb_ru.." временно замедляется при убийстве врагов.\n"
			.."При {max_peril:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." способность выключается.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.",
		-- fr = "Vous entrez sous "..COLORS_KWords_fr.Scriers_gaze_rgb_fr.." , atténuez votre "..COLORS_KWords_fr.Peril_rgb_fr.." de {vent:%s} et gagnez {base_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..", {crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." ainsi que l'immunité à la suppression.\nPour chaque seconde sous "..COLORS_KWords_fr.Scriers_gaze_rgb_fr.." vous gagnez {damage_per_stack:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..", jusqu'à un maximum de {max_damage:%s}. Cet effet perdure {duration:%s} secondes après être sorti de "..COLORS_KWords_fr.Scriers_gaze_rgb_fr..".\nDurant "..COLORS_KWords_fr.Scriers_gaze_rgb_fr.." votre "..COLORS_KWords_fr.Peril_rgb_fr.." augmente continuellement. Tuer des ennemis durant la capacité ralentit la génération automatique du "..COLORS_KWords_fr.Peril_rgb_fr.." en réduisant le temps effectif de "..COLORS_Numbers.n_033_rgb.." secondes par élimination.\nÀ {max_peril:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." la capacité s'arrête.\nTemps de recharge : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_rgb_fr, -- Regard de divination !!! texte trop long
		-- ["zh-tw"] = "進入{talent_name:%s}，並獲得以下效果：\n\n"
			-- .."- 平息 {vent:%s} "..COLORS_KWords_tw.Peril_rgb_tw.." 。\n"
			-- .."- 獲得 {base_damage:%s} "..COLORS_KWords_tw.Damage_rgb_tw.." 。\n"
			-- .."- {crit_chance:%s} "..COLORS_KWords_tw.Crit_chance_rgb_tw.." 。\n"
			-- .."- 免疫壓制。\n"
			-- .."\n"
			-- .."- {talent_name:%s} 時間內，\n"
			-- .."--每秒提升 {damage_per_stack:%s} "..COLORS_KWords_tw.Damage_rgb_tw.." ，最高 {max_damage:%s}。\n"
			-- .."-- {talent_name:%s} 技能結束後可持續 {duration:%s} 秒。\n"
			-- .."\n"
			-- .."-{talent_name:%s} 期間 "..COLORS_KWords_tw.Peril_rgb_tw.." 會逐漸上升。\n"
			-- .."\n"
			-- .."-擊殺敵人可減緩 "..COLORS_KWords_tw.Peril_rgb_tw.." 累積，並縮短技能 "..COLORS_Numbers.n_033_rgb.." 秒/擊殺。\n"
			-- .."- "..COLORS_KWords_tw.Peril_rgb_tw.." 達到 {max_peril:%s} 時，技能立即結束。\n"
			-- .."- 冷卻時間：{cooldown:%s} 秒。\n"
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Ability_3_rgb_tw, -- 占卜者的注視 -- 觸發占卜師的注視。進入占卜師的注視後，平息{vent:%s}反噬，並獲得{base_damage:%s}傷害、{crit_chance:%s}暴擊機率，以及壓制免疫。在注視中每秒獲得疊加傷害{damage_per_stack:%s}，最高至{max_damage}。離開注視後該效果保留{duration:%s}秒。\n\n在占卜師的注視中，你的反噬會累積。擊殺敵人會暫時減緩累積速度。反噬達到{max_peril:%s}後，占卜師的注視結束。\n\n基礎冷卻時間：{cooldown:%s}秒
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 3-1 - Precognition +]--	01.11.2025
	["loc_ability_psyker_overcharge_weakspot_description"] = { -- second: 1, talent_name: Scrier's Gaze, finesse_damage_per_stack: +1%, max_finesse_damage: +30%, duration: 10, s->seconds, +colors
		en = COLORS_KWords.Weakspot_rgb.." kills generate {second:%s} additional Stack while {talent_name:%s} overcharging.\n"
			..Dot_green.." Can proc multiple times per attack when "..COLORS_KWords.Cleaving_rgb..".\n"
			.."\n"
			.."For each second spent in {talent_name:%s}, you now also gain:\n"
			..Dot_green.." {finesse_damage_per_stack:%s} "..COLORS_KWords.Finesse_dmg_rgb..", up to {max_finesse_damage:%s} Max, which lingers for {duration:%s} seconds after leaving {talent_name:%s}.\n"
			.."\n"
			..NTS.Fns_note_rgb,
		--[+ СПОСОБНОСТЬ 3-1 - Предвидение +]-- руоф Познание
		ru = "Пока действует {talent_name:%s}, убийства в "..COLORS_KWords_ru.Weakspot_rgb_ru.." добавляют {second:%s} заряд.\n"
			..Dot_green.." Может срабатывать несколько раз за атаку, если "..COLORS_KWords_ru.Cleavaet_rgb_ru.." несколько врагов.\n"
			.."\n"
			.."За каждую секунду, проведённую по действием способности, вы теперь также получаете:\n"
			..Dot_green.." {finesse_damage_per_stack:%s} к "..COLORS_KWords_ru.Finesse_dmg_rgb_ru..", до максимум {max_finesse_damage:%s}. Эффект продлевается на {duration:%s} секунд после действия способности {talent_name:%s}.",
		-- fr = "Pendant {talent_name:%s}, les éliminations par point faible compte comme {second:%s} sous {talent_name:%s}.\n\nPour chaque seconde passée dans {talent_name:%s}, vous gagnez également {finesse_damage_per_stack:%s} de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr..", jusqu'à un maximum de {max_finesse_damage:%s}, ce qui persiste pendant {duration:%s} secondes après avoir quitté {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_2_rgb_fr,
		-- ["zh-tw"] = "當"..COLORS_KWords_tw.Scriers_gaze_rgb_tw.."啟動時，\n"
			-- .."\n"
			-- .."- "..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 敵人會延長技能 {second:%s} 秒。\n"
			-- .."- 每秒 {finesse_damage_per_stack:%s} "..COLORS_KWords_tw.Finesse_dmg_rgb_tw.."，最高 {max_finesse_damage:%s}，\n"
			-- .."- {talent_name:%s} 技能結束後可持續 {duration:%s} 秒。"
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Ability_3_2_rgb_tw, -- 預知未來 --每次弱點擊殺視作在{talent_name:%s}狀態下{second:%s}秒持續時間。\n\n持續{talent_name:%s}狀態每一秒賦予{finesse_damage_per_stack:%s}靈巧傷害（最多{max_finesse_damage%s}），脫離{talent_name:%s}狀態後效果延續{duration:%s}秒。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 3-2 - Warp Speed +]--	01.11.2025
	["loc_ability_psyker_overcharge_movement_speed_description"] = { -- talent_name: Scrier's Gaze, movement_speed: +20%
		en = "While {talent_name:%s} overcharging:\n"
			..Dot_green.." {movement_speed:%s} Movement Speed.\n"
			.."\n"
			..Dot_red.." Doesn't linger after overcharging phase.",
		--[+ СПОСОБНОСТЬ 3-2 - Варп-скорость +]--
		ru = "Пока действует {talent_name:%s} вы получаете:\n"
			..Dot_green.." {movement_speed:%s} к скорости движения.\n"
			.."\n"
			..Dot_red.." Не продлевается после окончания действия способности.",
		-- fr = "Pendant {talent_name:%s}, votre vitesse de déplacement augmente de {movement_speed:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_3_rgb_fr,
		-- ["zh-tw"] = "當"..COLORS_KWords_tw.Scriers_gaze_rgb_tw.."啟動時，移動速度提高 {movement_speed:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_3_3_rgb_tw, -- 亞空間加速 --{talent_name:%s}啟動期間獲得{movement_speed:%s}移動速度。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 3-3 - Reality Anchor +]--	01.11.2025
	["loc_ability_psyker_overcharge_reduced_warp_charge_vent_speed_description"] = { -- talent_name: Scrier's Gaze, warp_charge: -20%, venting: , +colors
		en = "While {talent_name:%s} overcharging:\n"
			..Dot_green.." {warp_charge:%s} "..COLORS_KWords.Peril_rgb.." Generated,\n"
			..Dot_green.." {venting:%s} Active Quelling.\n"
			.."\n"
			..Dot_red.." Doesn't linger after overcharging phase.",
		--[+ СПОСОБНОСТЬ 3-3 - Якорь реальности +]--
		ru = "Пока действует {talent_name:%s} вы получаете:\n"
			..Dot_green.." {warp_charge:%s} к набору "..COLORS_KWords_ru.Peril_rgb_ru..",\n"
			..Dot_green.." {venting:%s} к подавлению  "..COLORS_KWords_ru.Peril_rgb_ru..".\n"
			.."\n"
			..Dot_red.." Не продлевается после окончания действия способности.",
		-- fr = "Pendant {talent_name:%s} votre génération de "..COLORS_KWords_fr.Peril_rgb_fr.." est réduite de {warp_charge:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_4_rgb_fr,
		-- ["zh-tw"] = "當"..COLORS_KWords_tw.Scriers_gaze_rgb_tw.."啟動時，\n"
			-- .."立即降低 {warp_charge:%s}"..COLORS_KWords_tw.Peril_rgb_tw.."。\n"
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Ability_3_4_rgb_tw, -- 現實錨點
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ ABILITY 3-4 - Warp Unbound +]--	01.11.2025
	["loc_talent_psyker_overcharge_infinite_casting_desc"] = { -- talent_name: Scrier's Gaze
		en = "{talent_name:%s} now also prevents overloading from "..COLORS_KWords.PerilsozWarp_rgb..", during its lingering effect.\n"
			.."\n"
			..Dot_nc.." After overcharging has ended, allows "..COLORS_KWords.cls_psy_rgb.." to execute "..COLORS_KWords.Peril_rgb.."-generating actions while at "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords.Peril_rgb.." for "..COLORS_Numbers.n_10_rgb.." seconds without triggering the self-explosion.\n"
			.."\n"
			..Dot_nc.." When "..COLORS_Numbers.n_10_rgb.." seconds duration ends, {talent_name:%s}'s base grace period still applies, providing another "..COLORS_Numbers.n_1_5_rgb.." seconds of the same effect.",
		--[+ СПОСОБНОСТЬ 3-4 - Высвобождение варпа +]-- руоф Искажение варпа
		ru = "{talent_name:%s} также предотвращает перегрев от "..COLORS_KWords_ru.PerilsozWarp_rgb_ru.." в течение "..COLORS_Numbers.n_10_rgb.." секунд после окончания действия способности.\n"
			.."\n"
			..Dot_nc.." В течение этого времени вы можете выполнять действия, генерирующие "..COLORS_KWords_ru.Perl_rgb_ru..", не вызывая самоподрыва даже при "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru..".\n"
			..Dot_nc.." Этот модификатор имеет скрытый эффект: по истечении "..COLORS_Numbers.n_10_rgb.." секунд вы получите ещё "..COLORS_Numbers.n_1_5_rgb.." секунды этого же эффекта.",
		-- fr = "{talent_name:%s} empêche désormais également la surcharge due aux "..COLORS_KWords_fr.Perils_rgb_fr.." de Warp, pendant son effet persistant."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_5_rgb_fr,
		-- ["zh-tw"] = "{talent_name:%s} 期間，免疫反噬超載效果。\n"
		-- .."\n"
		-- .."- 在"..COLORS_KWords_tw.Scriers_gaze_rgb_tw.."結束後的"..COLORS_Numbers.n_10_rgb.."秒內，\n"
		-- .."--可以無限制使用所有會產生"..COLORS_KWords_tw.Peril_rgb_tw.."的技能，\n"
		-- .."--即使達到"..COLORS_Numbers.pc_100_rgb.."的"..COLORS_KWords_tw.Peril_rgb_tw.."，也不會爆炸。\n"
		-- .. TALENTS_Enh_desc_tw.ED_PSY_Ability_3_5_rgb_tw, -- 亞空間突破 -- {talent_name:%s}的效果持續時間內也能避免亞空間反噬所造成的超載效果。
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
	--[+ KEYSTONE 1 - Warp Siphon +]--	01.11.2025
	["loc_talent_psyker_souls_new_desc"] = { -- duration: 25, stack: 4, damage: +4, cooldown_reduction: 7.5%, time(s)->times, +colors
		en = "Killing an Elite or Specialist Enemy gains you a Warp Charge for {duration:%s} seconds.\n"
			..Dot_green.." {damage:%s} Base "..COLORS_KWords.Damage_rgb.." per Stack.\n"
			..Dot_nc.." Stack {stack:%s} times.\n"
			.."\n"
			.."Your next "..COLORS_KWords.Combat_ability_rgb.." spends all available Warp Charges to reduce the cooldown of that "..COLORS_KWords.Combat_ability_rgb.." by {cooldown_reduction:%s} per Warp Charge.\n"
			.."\n"
			..PHRS.Can_be_refr,
		--[+ КЛЮЧЕВОЙ 1 - Переливание варпа +]-- руоф Варп-сифон
		ru = "Убийство элитного врага или специалиста даёт вам варп-заряд на {duration:%s} секунд.\n"
			..Dot_green.." {damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." за заряд.\n"
			..Dot_nc.." Суммируется {stack:%s} раза.\n"
			.."\n"
			.."Следующая применённая "..COLORS_KWords_ru.Combat_abil_rgb_ru.." потратит все доступные варп-заряды и уменьшит время "..COLORS_KWords_ru.Cd_rgb_ru.." на {cooldown_reduction:%s} за каждый варп-заряд.\n"
			.."\n"
			..PHRS.Can_be_refr_ru,
		-- fr = "Éliminer un ennemi Élite ou Spécialiste vous accorde une charge de Siphon de Warp pendant {duration:%s} secondes, Se cumuls jusqu'à {stack:%s} fois. Votre prochaine "..COLORS_KWords_fr.Combat_ability_rgb_fr.." utilise toutes les charges de Siphon de Warp disponibles pour une "..COLORS_KWords_fr.Ability_cd_rgb_fr.." de cette "..COLORS_KWords_fr.Combat_ability_rgb_fr.." de {cooldown_reduction:%s} par charge de Siphon de Warp."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_rgb_fr,
		-- ["zh-tw"] = "，並使其"..COLORS_KWords_ru.Cd_rgb_ru.."時間每層縮短 {cooldown_reduction:%s}。"..TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_rgb_tw)),
			-- loc_text("擊殺精英或專家可獲得一層亞空間充能。\n"
			-- .."\n"
			-- .."- 持續 {duration:%s} 秒，\n"
			-- .."- 最高可疊加 {stack:%s} 層。\n"
			-- .."- 使用戰鬥技能將消耗所有亞空間充能，\n"
			-- .."- 每層可降低 {cooldown_reduction:%s} "..COLORS_KWords_tw.Cd_rgb_tw.."時間。"
			-- ..TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_rgb_tw, -- 亞空間虹吸 -- 擊殺一名精英或專家敵人時，可獲得一層亞空間充能，持續{duration:%s}秒，最多可疊加{stack:%s}次。你的下一次戰鬥技能將消耗所有可用的亞空間充能，每層可降低{cooldown_reduction:%s}戰鬥技能冷卻時間。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 1-1 - Inner Tranquility +]--	01.11.2025
	["loc_talent_psyker_reduced_warp_charge_cost_venting_speed_desc"] = { -- warp_charge_amount: -6%, +colors
		en = Dot_green.." {warp_charge_amount:%s} "..COLORS_KWords.Peril_rgb.." Generation Reduction for each Warp Charge.",
		--[+ КЛЮЧЕВОЙ 1-1 - Внутреннее спокойствие +]--
		ru = Dot_green.." {warp_charge_amount:%s} к набору "..COLORS_KWords_ru.Peril_rgb_ru.." за каждый варп-заряд.",
		-- fr = "Réduction de la génération de "..COLORS_KWords_fr.Peril_rgb_fr.." de {warp_charge_amount:%s} pour chaque charge de Siphon de Warp."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_1_rgb_fr,
		-- ["zh-tw"] = "每層亞空間充能會 {warp_charge_amount:%s} "..COLORS_KWords_tw.Peril_rgb_tw.." 生成。" ..TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_1_rgb_tw, -- 平心靜氣 -- 每層亞空間充能減少反噬生成{warp_charge_amount:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 1-2 - Essence Harvest +]--	01.11.2025
	["loc_talent_psyker_toughness_regen_on_soul_desc"] = { -- toughness: 30%, time: 5, s->seconds, +colors
		en = Dot_green.." "..COLORS_Numbers.pc_6_rgb.." "..COLORS_KWords.Toughness_rgb.." is replenished per second for {time:%s} seconds after gaining Warp Charge, up to {toughness:%s} "..COLORS_KWords.Toughness_rgb..".\n"
			.."\n"
			..Dot_green.." Can be refreshed during active duration.\n"
			..Dot_nc.." Doesn't increase the amount of "..COLORS_KWords.Toughness_rgb.." replenished.",
		--[+ КЛЮЧЕВОЙ 1-2 - Сбор сущностей +]-- руоф Сбор сущности
		ru = Dot_green.." "..COLORS_Numbers.pc_6_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду восстанавливается в течение {time:%s} секунд после получения варп-заряда, вплоть до максимальных {toughness:%s}.\n"
			.."\n"
			..PHRS.Can_be_refr_ru.."\n"
			..Dot_nc.." Не увеличивает количество восстанавливаемой "..COLORS_KWords_ru.Toughness_rgb_ru..".",
		-- fr = COLORS_Numbers.pc_6_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." est régénérée par seconde pendant {time:%s} secondes après avoir gagné une charge de Siphon de Warp, jusqu'à un maximum de {toughness:%s}. Gagner une nouvelle charge pendant ce temps réinitialise le compte à rebours."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_2_rgb_fr,
		-- ["zh-tw"] = "獲得亞空間充能時恢復 "..COLORS_KWords_tw.Toughness_rgb_tw.." 。\n"
			-- .."\n"
			-- .."- 每秒恢復 "..COLORS_Numbers.pc_6_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."，持續 {time:%s} 秒。\n"
			-- .."- 最多可恢復 {toughness:%s}。\n"
			-- .."- 獲得新的亞空間充能會刷新此效果。"	
			-- ..TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_2_rgb_tw, -- 吸精奪萃 --獲得亞空間充能後，在{time:%s}秒內恢復{toughness:%s}韌性。在效果持續期間獲得新的亞空間充能會刷新此效果。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 1-3 - Warp Battery +]--	10.11.2025
	["loc_talent_psyker_increased_souls_desc"] = { -- soul_amount: 6
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_2_rgb.." Maximum Warp Charges. Increased from "..COLORS_Numbers.n_4_rgb.." to {soul_amount:%s}.",
		--[+ КЛЮЧЕВОЙ 1-3 - Варп-аккумулятор +]--
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_2_rgb.." к максимуму варп-зарядов. Увеличивается с "..COLORS_Numbers.n_4_rgb.." до {soul_amount:%s} варп-зарядов.",
		-- fr = "Vous pouvez stocker jusqu'à {soul_amount:%s} charges de Siphon de Warp."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_6_rgb_fr,
		-- ["zh-tw"] = "最多可以儲存 {soul_amount:%s} 個亞空間充能。" .. TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_6_rgb_tw, -- 亞空間電池 -- 能掌握的亞空間充能的最高層數提高至{soul_amount:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 1-4 - In Fire Reborn +]--	01.11.2025
	["loc_talent_psyker_warpfire_generates_souls_desc"] = { -- chance: 10%, +colors
		en = Dot_green.." {chance:%s} chance to gain a Warp Charge when you or an Ally kill an enemy who is currently affected by "..COLORS_KWords.Soulblaze_rgb..".\n"
			.."\n"
			..Dot_nc.." This effect has no range limit and benefits all "..COLORS_KWords.cls_psys_rgb.." who have this Talent equipped.",
		--[+ КЛЮЧЕВОЙ 1-4 - Возрождение в огне +]-- руоф В огне восстану
		ru = Dot_green.." {chance:%s} шанс получить варп-заряд, когда вы или ваш союзник убиваете врага, на которого в данный момент действует эффект "..COLORS_KWords_ru.Soulblaze_rgb_ru..".\n"
			.."\n"
			..Dot_green.." Эффект не имеет ограничения по дальности.\n"
			..Dot_green.." Этот эффект влияет на всех псайкеров у которых выбран этот талант.",
		-- fr = "{chance:%s} chance de gagner une charge de Siphon de Warp lorsque vous ou un allié éliminer un ennemi actuellement affecté par "..COLORS_KWords_fr.Soulblaze_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_4_rgb_fr,
		-- ["zh-tw"] = COLORS_KWords_tw.Soulblaze_k_rgb_tw.." 有機增加亞空間充能。\n"
			-- .."\n"
			-- .."- "..COLORS_KWords_tw.Soulblaze_k_rgb_tw.."時，有 {chance:%s} 機率獲得充能。\n"
			-- .."- 你與隊友的"..COLORS_KWords_tw.Soulblaze_k_rgb_tw.."都有機率觸發。"
			-- ..TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_4_rgb_tw, -- 涅槃 -- 使用靈魂之火擊殺敵人可帶來{chance:%s}幾率為你疊加一層亞空間充能。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 1-5 - Psychic Vampire +]--	01.11.2025
	["loc_talent_psyker_souls_on_kill_coop_desc"] = { -- soul_chance: 4%
		en = Dot_green.." {soul_chance:%s} chance to gain a Warp Charge whenever you or an Ally in "..COLORS_KWords.Coherency_rgb.." kills an enemy.\n"
			.."\n"
			..Dot_nc.." This Talent's effect is shared with all allied "..COLORS_KWords.cls_psys_rgb.." in "..COLORS_KWords.Coherency_rgb.." who also have it.",
		--[+ КЛЮЧЕВОЙ 1-5 - Психический вампир +]--
		ru = Dot_green.." {soul_chance:%s} шанс получить варп-заряд, когда вы или ваш союзник в "..COLORS_KWords_ru.Coherency_rgb_ru.." убиваете врага.\n"
			.."\n"
			..Dot_green.." Этот эффект влияет на всех псайкеров у которых выбран этот талант.",
		-- fr = "{soul_chance:%s} chance de gagner une charge de Siphon de Warp chaque fois que vous ou un allié en syntonie éliminés un ennemi."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_5_rgb_fr,
		-- ["zh-tw"] = "擊殺敵人時有 {soul_chance:%s} 機率獲得亞空間充能。\n"
			-- .."\n"
			-- .."- "..COLORS_KWords_tw.Coherencing_rgb_tw.." 隊友擊殺也有相同機率。"
			-- ..TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_5_rgb_tw, -- 靈能吸血鬼 -- 每當你或協同中的盟友擊殺敵人，你有{soul_chance:%d}的機率獲得一層亞空間充能。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 2 - Empowered Psionics +]--	01.11.2025
	["loc_talent_psyker_empowered_ability_description"] = { -- chance: 7.5%, blitz_one: Brain Rupture, smite_cost: 100%, smite_attack_speed: 50%, smite_damage: +50%, blitz_two: Smite, chain_lightning_damage: +200%, chain_lightning_jump_time_multiplier: 50%, blitz_three: Assail, throwing_knives_cost: 100%, throwing_knives_old_damage: 100, throwing_knives_new_damage: 150, +colors
		en = "Kills have a {chance:%s} chance to Empower your next Blitz.\n"
			.."\n"
			.."Empowered {blitz_one:%s}:\n"
			..Dot_green.." {smite_damage:%s} "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." {smite_cost:%s} "..COLORS_KWords.Peril_rgb.." Cost Reduction,\n"
			..Dot_green.." {smite_attack_speed:%s} Cast time Reduction.\n"
			.."\n"
			.."Empowered {blitz_two:%s}:\n"
			..Dot_green.." {chain_lightning_damage:%s} "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} faster spread between Enemies.\n"
			.."\n"
			.."Empowered {blitz_three:%s}:\n"
			..Dot_green.." {throwing_knives_cost:%s} "..COLORS_KWords.Peril_rgb.." Cost Reduction,\n"
			..Dot_green.." "..COLORS_KWords.Damage_rgb.." increase from {throwing_knives_old_damage:%s} to {throwing_knives_new_damage:%s}.\n"
			..Dot_green.." Does not consume any charges.\n"
			..Dot_green.." Allows casting at "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords.Peril_rgb..".",
		--[+ КЛЮЧЕВОЙ 2 - Усиленные псионики +]--
		ru = "Убийства имеют {chance:%s} шанс усилить ваш следующий блиц.\n"
			.."\n"
			.."Усиленный {blitz_one:%s}:\n"
			..Dot_green.." {smite_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{smite_cost:%s} к набору "..COLORS_KWords_ru.Peril_rgb_ru..",\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{smite_attack_speed:%s} к времени заряжания.\n"
			.."\n"
			.."Усиленное {blitz_two:%s}:\n"
			..Dot_green.." {chain_lightning_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{chain_lightning_jump_time_multiplier:%s} к скорости распространения между врагами.\n"
			.."\n"
			.."Усиленное {blitz_three:%s}:\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{throwing_knives_cost:%s} к набору "..COLORS_KWords_ru.Peril_rgb_ru..",\n"
			..Dot_green.." С {throwing_knives_old_damage:%s} до {throwing_knives_new_damage:%s} увеличивается "..COLORS_KWords_ru.Dmg_rgb_ru..".\n"
			..Dot_green.." Не тратит снаряды.\n"
			..Dot_green.." Можно использовать даже при "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru..".",
		-- fr = "Les éliminations ont {chance:%s} de chances de renforcer votre prochain Blitz.\n{blitz_one:%s} augmenté:\n{smite_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..",\n{smite_cost:%s} de Réduction du coût de "..COLORS_KWords_fr.Peril_rgb_fr..",\n{smite_attack_speed:%s} de Vitesse de chargement."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_2_0_1_rgb_fr.."\n{blitz_two:%s} augmenté:\n{chain_lightning_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..",\n{chain_lightning_jump_time_multiplier:%s} de vitesse de propagation entre les ennemis."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_2_0_2_rgb_fr.."\n{blitz_three:%s} augmenté:\n{throwing_knives_cost:%s} de Réduction du coût de "..COLORS_KWords_fr.Peril_rgb_fr..",\nAugmentation des dégâts de base de {throwing_knives_old_damage:%s} à {throwing_knives_new_damage:%s}.\nNe consomme aucun projectile."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_2_0_3_rgb_fr,
		-- ["zh-tw"] = "擊殺敵人有機率強化下一個閃擊技能。\n"
			-- .."\n"
			-- .."- 強化機率 {chance:%s} 。\n"
			-- .."\n"
			-- .."{blitz_one:%s} 的強化效果：\n"
			-- .."_______________________________\n"
			-- .."- "..COLORS_KWords_tw.Damage_rgb_tw.." {smite_damage:%s}。\n"
			-- .."- 產生的 "..COLORS_KWords_tw.Peril_rgb_tw.." "..COLORS_Numbers.n_minus_rgb.."{smite_cost:%s} 。\n"
			-- .."- 縮短 {smite_attack_speed:%s} 充能時間。"
 			-- .. TALENTS_Enh_desc_tw.ED_PSY_Keystone_2_0_1_rgb_tw.."\n" 
			-- .."\n"
			-- .. "{blitz_two:%s} 的強化效果：\n"
			-- .."_______________________________\n"
			-- .."- "..COLORS_KWords_tw.Damage_rgb_tw.." {chain_lightning_damage:%s}。\n"
			-- .."- 傳導速度加快 {chain_lightning_jump_time_multiplier:%s}。"
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Keystone_2_0_2_rgb_tw.."\n" 
			-- .."\n"
			-- .."{blitz_three:%s} 的強化效果：\n"
			-- .."_______________________________\n"
			-- .."- 不消耗彈藥。\n"
			-- .."- 產生的 "..COLORS_KWords_tw.Peril_rgb_tw.." "..COLORS_Numbers.n_minus_rgb.."{throwing_knives_cost:%s} 。\n"
			-- .."- 基礎"..COLORS_KWords_tw.Dmg_rgb_tw.."從 {throwing_knives_old_damage:%s} 提升至 {throwing_knives_new_damage:%s}。"
			-- .. TALENTS_Enh_desc_tw.ED_PSY_Keystone_2_0_3_rgb_tw, -- 靈能強化 --擊殺敵人有{chance:%s}幾率強化你的下一個閃擊技能。\n\n強化版{blitz_one:%s}：\n{smite_cost:%s}反噬值消耗減少\n{smite_attack_speed:%s}施放時間減少\n{smite_damage:%s}傷害\n\n強化版{blitz_two:%s}：\n{chain_lightning_damage:%s}傷害{chain_lightning_jump_time_multiplier:%s}在敵人間的傳導速度加快\n\n強化版{blitz_three:%s}：\n{throwing_knives_cost:%s}反噬值消耗降低\n基礎傷害從{throwing_knives_old_damage:%s}增至{throwing_knives_new_damage:%s}\n不再消耗充能層數。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 2-1 - Bio-Lodestone +]--	10.11.2025
	["loc_talent_psyker_increase_empower_chain_lighting_chance_description"] = { -- talent_name: Empowered Psionics, proc_chance_before: 7.5%, proc_chance_after: 12.5%
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_5_rgb.." chance to gain {talent_name:%s} on Kill. Increased from {proc_chance_before:%s} to {proc_chance_after:%s}.",
		--[+ КЛЮЧЕВОЙ 2-1 - Биопритяжение +]--
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_5_rgb.." к шансу получить заряд таланта {talent_name:%s} при убийстве. Увеличивается с {proc_chance_before:%s} до {proc_chance_after:%s}.",
		-- fr = "Augmente les chances de gagner {talent_name:%s} lors d'une élimination de {proc_chance_before:%s} à {proc_chance_after:%s}.",
		-- ["zh-tw"] = "擊殺獲得 {talent_name:%s} 的機率提升。\n"
			-- .."- 機率由 {proc_chance_before:%s} 提升至 {proc_chance_after:%s}。", -- 生物磁石 -- 擊殺後獲得{talent_name:%s}的幾率從{proc_chance_before:%s}提高至{proc_chance_after:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 2-2 - Psychic Leeching +]--	01.11.2025
	["loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies_description"] = { -- talent_name: Empowered Psionics, toughness: 15%, +colors
		en = Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes for you and Allies in "..COLORS_KWords.Coherency_rgb.." on using your Blitz while {talent_name:%s} is active.",
		--[+ КЛЮЧЕВОЙ 2-2 - Психическое высасывание +]-- руоф Психическая пиявка
		ru = Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восполняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." при использовании вашего блица, пока активны {talent_name:%s}.",
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour vous et vos alliés en syntonie lorsque vous utilisez votre Blitz alors que {talent_name:%s} est actif."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_2_2_rgb_fr,
		-- ["zh-tw"] = "{talent_name:%s} 啟動時，使用主動技能獲得：\n"
			-- .."\n"
			-- .."- "..COLORS_KWords_tw.Toughness_rgb_tw.." 恢復 {toughness:%s}。\n"
			-- .."- "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友也會獲得相同效果。"
			-- ..TALENTS_Enh_desc_tw.ED_PSY_Keystone_2_2_rgb_tw, -- 吸血閃電
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 2-3 - Overpowering Souls +]--	01.11.2025
	["loc_talent_psyker_empowered_ability_on_elite_kills_description"] = { -- talent_name: Empowered Psionics
		en = Dot_green.." Guaranteed chance to gain {talent_name:%s} on Elite Kills.",
		--[+ КЛЮЧЕВОЙ 2-3 - Могучие души +]--
		ru = Dot_green.." Вы гарантированно получаете заряд таланта {talent_name:%s} при убийстве элитного врага.",
		fr = "Chance garantie de gagner {talent_name:%s} lors d'une élimination d'élite.",
		["zh-tw"] = "擊殺精英敵人時，獲得 {talent_name:%s} 。", -- 吞靈強擊 -- 擊殺精英敵人必定獲得{talent_name:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 2-4 - Charged Up +]--	01.11.2025
	["loc_talent_psyker_increased_empowered_chain_lightning_stacks_description"] = { -- max_stacks: 3, talent_name: Empowered Psionics
		en = Dot_green.." You can now hold up to {max_stacks:%s} Stacks of {talent_name:%s}.",
		--[+ КЛЮЧЕВОЙ 2-4 - Заряженный +]-- руоф Зарядка
		ru = Dot_green.." Вы теперь можете набирать до {max_stacks:%s} зарядов таланта {talent_name:%s}.",
		fr = "Vous pouvez maintenant cumuler jusqu'à {max_stacks:%s} charges de {talent_name:%s}.",
		["zh-tw"] = "最多可以持有 {max_stacks:%s} 層 {talent_name:%s}。", -- 充能完畢 -- 你現在可以疊加{max_stacks:%s}\n層{talent_name:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 3 - Disrupt Destiny +]--	07.11.2025
	["loc_talent_psyker_marked_enemies_passive_updated_desc"] = { -- radius: 40, toughness: 10%, move_speed: +20%, move_speed_duration: 2.5, bonus_duration 4, base_damage: +1%, crit_damage: +2%, weakspot_damage: +2.5%, bonus_stacks: 15 -- m->meters, s->seconds, +colors
		en = "Every second, Enemies within {radius:%s} meters have a chance of being "..COLORS_KWords.Psy_Mark_rgb..".\n"
			.."\n"
			.."On Killing a "..COLORS_KWords.Psy_Mark_rgb.." Enemy:\n"
			..Dot_green.." "..COLORS_Numbers.n_10_rgb.." "..COLORS_KWords.Toughness_rgb.." restored per second, up to {toughness:%s} "..COLORS_KWords.Toughness_rgb.." over {move_speed_duration:%s} seconds,\n"
			..Dot_green.." {move_speed:%s} Movement Speed is granted for {move_speed_duration:%s} seconds,\n"
			..Dot_green.." "..COLORS_Numbers.n_1_rgb.." Stack of "..COLORS_KWords.Precision_rgb.." is added for {bonus_duration} seconds.\n"
			.."\n"
			.."Each "..COLORS_KWords.Precision_rgb.." Stack grants:\n"
			..Dot_green.." {base_damage:%s} "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." {crit_damage:%s} "..COLORS_KWords.Crit_dmg_r_rgb.." and\n"
			..Dot_green.." {weakspot_damage:%s} "..COLORS_KWords.Weakspot_dmg_rgb..".\n"
			.."\n"
			..COLORS_KWords.Precision_rgb.." Bonus Stacks {bonus_stacks:%s} times and when the duration ends, one Stack is removed and the duration is refreshed.\n"
			.."\n"
			..Dot_green.." Dealing "..COLORS_KWords.Damage_rgb.." to "..COLORS_KWords.Psy_Mark_rgb.." enemies refreshes the Talent's duration.\n"
			..Dot_nc.." Valid targets are: Bruisers, Ritualist, Stalkers, Scab Shooter, Ragers, Gunners, Shotgunners, Plasma Gunner, and Mauler.",
		--[+ КЛЮЧЕВОЙ 3 - Прерывание судьбы +]-- руоф Разрушенная судьба
		ru = "Каждую секунду враги в радиусе {radius:%s} метров могут быть "..COLORS_KWords_ru.Psy_Mark_rgb_ru..".\n"
			.."\n"
			.."При убийстве "..COLORS_KWords_ru.Psy_Mark_ogo_rgb_ru.." врага вы получаете:\n"
			..Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." за {move_speed_duration:%s} секунды,\n"
			..Dot_green.." {move_speed:%s} к скорости передвижения на {move_speed_duration:%s} секунды и\n"
			..Dot_green.." "..COLORS_Numbers.n_1_rgb.." заряд "..COLORS_KWords_ru.Precision_rgb_ru.." на {bonus_duration} секунд.\n"
			.."\n"
			.."Каждый заряд "..COLORS_KWords_ru.Precision_rgb_ru.." даёт:\n"
			..Dot_green.." {base_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
			..Dot_green.." {crit_damage:%s} к "..COLORS_KWords_ru.Crit_dmg_u_rgb_ru.." и\n"
			..Dot_green.." {weakspot_damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru..".\n"
			.."\n"
			.."Заряды "..COLORS_KWords_ru.Precision_rgb_ru.." накапливаются до {bonus_stacks:%s} раз. Раз в {bonus_duration} секунд снимается "..COLORS_Numbers.n_1_rgb.." заряд, а длительность оставшихся зарядов обновляется.\n"
			.."\n"
			..Dot_green.." Нанесение "..COLORS_KWords_ru.Dmg_a_rgb_ru.." "..COLORS_KWords_ru.Psy_Mark_ym_rgb_ru.." врагам обновляет длительность зарядов.\n"
			..Dot_nc.." Допустимые цели: Громила, Ритуалист, Охотник, Скаб-стрелок, Берсерк, Пулемётчик, Скаб с дробовиком, Плазмомётчик и Палач.",
		-- fr = "Chaque seconde, les ennemis dans un rayon de "..COLORS_Numbers.n_40_rgb.." mètres ont une chance d'être marqués. Éliminer un ennemi marqué régénère {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr..", augmente la vitesse de déplacement de {move_speed:%s} pendant {move_speed_duration:%s} secondes et ajoute un cumule de "..COLORS_KWords_fr.Precision_rgb_fr.." pendant {bonus_duration} secondes.\nChaque cumule de "..COLORS_KWords_fr.Precision_rgb_fr.." octroie : {base_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..", {crit_damage:%s} de "..COLORS_KWords_fr.Crit_dmg_r_rgb_fr.." et {weakspot_damage:%s} de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr..". Le bonus de "..COLORS_KWords_fr.Precision_rgb_fr.." se cumule jusqu'à {bonus_stacks:%s} fois et lorsque la durée expire, une charge est retirée et la durée est rafraîchie."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_3_rgb_fr,
		-- ["zh-tw"] = "自動標記範圍內的敵人。\n"
			-- .."\n"
			-- .."- 標記間隔 1s。\n"
			-- .."- 標記範圍 "..COLORS_Numbers.n_40_rgb.."m。\n"
			-- .."- 擊殺被標記的敵人有以下效果\n"
			-- .."--在{move_speed_duration:%s}秒內 {toughness:%s} "..COLORS_KWords_tw.Toughness_rgb_tw.."。\n"
			-- .."-- {move_speed:%s} 的移動速度加成，持續 {move_speed_duration:%s} 秒。\n"
			-- .."--獲得 "..COLORS_KWords_tw.Precision_rgb_tw.."加成，持續 {bonus_duration} 秒。\n"
			-- .."\n"
			-- .."- "..COLORS_KWords_tw.Precision_rgb_tw.." 提供以下效果：\n"
			-- .."--"..COLORS_KWords_tw.Damage_rgb_tw.." {base_damage:%s} 。\n"
			-- .."--"..COLORS_KWords_tw.Crit_dmg_u_rgb_tw.." {crit_damage:%s} 。\n"
			-- .."--"..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.." {weakspot_damage:%s} 。\n"
			-- .."--上限 {bonus_stacks:%s} 層。\n"
			-- .."---持續時間結束時：\n"
			-- .."--移除"..COLORS_Numbers.n_1_rgb.."層\n"
			-- .."--同時刷新其餘層數的持續時間。\n"
			-- ..TALENTS_Enh_desc_tw.ED_PSY_Keystone_3_rgb_tw, -- 擾動命運 --每秒有機率標記{radius:%s}公尺內的敵人。擊殺被標記的敵人會在{move_speed_duration:%s}秒內恢復{toughness:%s}韌性，並獲得持續{move_speed_duration:%s}秒的{move_speed:%s}移動速度加成，以及持續{bonus_duration}秒的精準加成。\n\n每層精準加成會賦予{base_damage:%s}傷害、{crit_damage:%s}暴擊傷害和{weakspot_damage:%s}弱點傷害。精準加成可疊加{bonus_stacks:%s}層，且會在持續時間結束後降低一層並重新計算持續時間。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 3-1 - Perfectionism +]--	10.11.2025
	["loc_talent_psyker_mark_increased_max_stacks_description"] = { -- stacks_previous: 15, stacks_after: 25, +colors
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_10_rgb.." to Maximum "..COLORS_KWords.Precision_rgb.." Bonus Stacks. Increased from {stacks_previous:%s} to {stacks_after:%s}.",
		--[+ КЛЮЧЕВОЙ 3-1 - Перфекционизм +]--
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_10_rgb.." к максимуму зарядов "..COLORS_KWords_ru.Precision_rgb_ru..". Увеличивается с {stacks_previous:%s} до {stacks_after:%s}.",
		fr = "Le nombre maximum de charges de cumuls de "..COLORS_KWords_fr.Precision_rgb_fr.." est augmenté de {stacks_previous:%s} à {stacks_after:%s}.",
		["zh-tw"] = COLORS_KWords_tw.Precision_rgb_tw.."的上限層數由 {stacks_previous:%s} 提升至 {stacks_after:%s}。", -- 完美主義 -- 精準加成可疊加層數從{stacks_previous:%s}增至{stacks_after:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 3-2 - Purloin Providence +]--	01.11.2025
	["loc_talent_psyker_mark_kills_can_vent_description"] = { -- talent_name: Disrupt Destiny, chance: 20%, warp_charge_percentage: 15%, +colors
		en = Dot_green.." {chance:%s} chance to instantly Quell {warp_charge_percentage:%s} of your "..COLORS_KWords.Peril_rgb.." on killing enemies "..COLORS_KWords.Psy_mark_rgb.." {talent_name:%s}.",
		--[+ КЛЮЧЕВОЙ 3-2 - Похищение провидения +]-- руоф Похищенное провидение
		ru = Dot_green.." {chance:%s} шанс, что вы моментально подавите {warp_charge_percentage:%s} вашей "..COLORS_KWords_ru.Peril_rgb_ru.." при убийстве врага, "..COLORS_KWords_ru.Psy_Mark_ogo_rgb_ru.." талантом {talent_name:%s}.",
		-- fr = "{chance:%s} chance de réduire instantanément {warp_charge_percentage:%s} de votre "..COLORS_KWords_fr.Peril_rgb_fr.." en tuant des ennemis marqués par {talent_name:%s}.")),
			-- ..TALENTS_Enh_desc_fr.ED_PSY_Keystone_3_2_rgb_fr,
		-- ["zh-tw"] = "擊殺 {talent_name:%s} 標記的敵人減少 "..COLORS_KWords_tw.Peril_rgb_tw.." 。\n"
			-- .."\n"
			-- .."- {chance:%s} 機率必定觸發。\n"
			-- .."- 觸發時平息 {warp_charge_percentage:%s} 的 "..COLORS_KWords_tw.Peril_rgb_tw.."。")),
			-- ..TALENTS_Enh_desc_tw.ED_PSY_Keystone_3_2_rgb_tw, -- 盜竊天命 --擊殺被{talent_name:%s}標記的敵人有{chance:%s}幾率立刻平息反噬{warp_charge_percentage:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 3-3 - Lingering Influence +]--	10.11.2025
	["loc_talent_psyker_mark_increased_duration_description"] = { -- talent_name: Disrupt Destiny, duration_previous: 15, duration_after: 10, s->seconds
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_5_rgb.." seconds to the duration of "..COLORS_KWords.Precision_rgb.." Stacks. Increased from {duration_previous:%s} to {duration_after:%s} seconds.",
		--[+ КЛЮЧЕВОЙ 3-3 - Длительное влияние +]-- руоф Длящееся влияние
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.n_5_rgb.." секунд к длительности зарядов "..COLORS_KWords_ru.Precision_rgb_ru..". Увеличивается с {duration_previous:%s} до {duration_after:%s} секунд.",
		fr = "Augmente la durée de {talent_name:%s} de {duration_previous:%s} à {duration_after:%s} secondes.",
		["zh-tw"] = "{talent_name:%s} 持續時間從 {duration_previous:%s} 秒增加至 {duration_after:%s} 秒。", -- 持久影響 -- {talent_name:%s}的持續時間從{duration_previous:%s}增加至{duration_after:%s}。
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ KEYSTONE 3-4 - Cruel Fortune +]--	01.11.2025
	["loc_talent_psyker_mark_weakspot_stacks_description"] = { -- stacks: 2 talent_name: Disrupt Destiny, +colors
		en = Dot_green.." "..COLORS_KWords.Weakspot_rgb.." Kills grant {stacks:%s} additional Stacks of {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Procs on Melee, Ranged, "..COLORS_KWords.Assail_rgb.." or "..COLORS_KWords.Brain_rupture_rgb.." attacks.",
		--[+ КЛЮЧЕВОЙ 3-4 - Жестокая судьба +]--
		ru = Dot_green.." Убийства в "..COLORS_KWords_ru.Weakspot_rgb_ru.." дают {stacks:%s} дополнительных заряда таланта {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Срабатывает от атак ближнего и дальнего боя, от блица "..COLORS_KWords_ru.Assail_rgb_ru.." и "..COLORS_KWords_ru.Brain_rupture_rgb_ru..".",
		-- fr = "Les éliminations sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." octroient {stacks:%s} cumuls supplémentaires de {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_3_4_rgb_fr,
		-- ["zh-tw"] = COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 敵人時，\n額外獲得 {stacks:%s} 層 {talent_name:%s}。" ..TALENTS_Enh_desc_tw.ED_PSY_Keystone_3_4_rgb_tw, -- 殘忍命運 --弱點擊殺額外積累{stacks:%s}層{talent_name:%s}。
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
	--[+ Passive 1 - Soulstealer +]--	01.11.2025
	["loc_talent_psyker_toughness_on_warp_kill_desc"] = { -- toughness: 7.5%., +colors
		en = Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes on Warp Attack Kill.",
		--[+ Пассивный 1 - Похититель душ +]-- руоф Похититель души
		ru = Dot_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при убийстве врага варп-атакой.",
		fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une élimination d'un ennemi avec une attaque Warp.", -- ..TALENTS_Enh_desc_fr.ED_PSY_Passive_1_rgb_fr
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 2 - Mettle +]--	07.11.2025
	["loc_talent_psyker_crits_regen_toughness_speed_description"] = { -- toughness: 10%, movement_speed: +5%, seconds: 4, stacks: 3, s->seconds, +colors
		en = Dot_green.." "..COLORS_Numbers.pc_2_5_rgb.." "..COLORS_KWords.Toughness_rgb.." restored per second on "..COLORS_KWords.Crit_hits_rgb..", up to {toughness:%s} "..COLORS_KWords.Toughness_rgb.." over {seconds:%s} seconds.\n"
			..PHRS.Can_be_refr.."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} Movement Speed for {seconds:%s} seconds on "..COLORS_KWords.Crit_hits_rgb..".\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			..Dot_green.." Can generate multiple Stacks per "..COLORS_KWords.Crit_Attk_rgb.." when "..COLORS_KWords.Cleaving_rgb..".\n"
			..PHRS.Can_be_refr,
		--[+ Пассивный 2 - Ретивость +]--
		ru = Dot_green.." "..COLORS_Numbers.pc_2_5_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду при "..COLORS_KWords_ru.Crit_hit_rgb_ru..", вплоть до {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." за {seconds:%s} секунды.\n"
			..PHRS.Can_be_refr_ru.."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} к скорости движения на {seconds:%s} секунды при "..COLORS_KWords_ru.Crit_hit_rgb_ru..".\n"
			..Dot_nc.." Суммируется {stacks:%s} раза.\n"
			..Dot_green.." Можно получить несколько зарядов за "..COLORS_KWords_ru.Crithit_rgb_ru.." при пробивании нескольких врагов.\n"
			..PHRS.Can_be_refr_ru,
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hits_rgb_fr..".\n\nOctroie également {movement_speed:%s} de vitesse de déplacement pendant {seconds:%s} secondes. Se cumule jusqu'à {stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_PSY_Passive_2_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 3 - Quietude +]--	01.11.2025
	["loc_talent_psyker_toughness_from_vent_and_gen_desc"] = { -- toughness: 5%, warp_charge: 10%, +colors
		en = Dot_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes for each {warp_charge:%s} of "..COLORS_KWords.Peril_rgb.." Quelled or Generated.",
		--[+ Пассивный 3 - Спокойствие +]-- руоф Тишина
		ru = "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за каждые {warp_charge:%s} подавленной и набранной "..COLORS_KWords_ru.Peril_rgb_ru..".",
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par {warp_charge:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." atténué."..TALENTS_Enh_desc_fr.ED_PSY_Passive_3_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 4 - Warp Expenditure +]--	07.11.2025
	["loc_talent_psyker_toughness_on_melee_description"] = { -- toughness: 15%, duration: 3, instant_toughness: 2.5%, +colors
		en = Dot_green.." "..COLORS_Numbers.pc_5_rgb.." "..COLORS_KWords.Toughness_rgb.." restored per second on Melee "..COLORS_KWords.Weakspot_rgb.." Kills, up to {toughness:%s} "..COLORS_KWords.Toughness_rgb.." over {duration:%s} seconds.\n"
			..PHRS.Can_be_refr.."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} "..COLORS_KWords.Toughness_rgb.." restores instantly on successful Melee Attacks.\n"
			..Dot_red.." Procs once per Attack regardless of how many enemies have been hit.",
		--[+ Пассивный 4 - Затраты варпа +]-- руоф Варп-затраты
		ru = Dot_green.." "..COLORS_Numbers.pc_5_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду при убийствах в "..COLORS_KWords_ru.Weakspot_rgb_ru.." в ближнем бою, вплоть до {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." за {duration:%s} секунды.\n"
			..PHRS.Can_be_refr_ru.."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается моментально при успешной атаке в ближнем бою.\n"
			..Dot_red.." Срабатывает один раз за атаку, независимо от количества поражённых врагов.",
		-- fr = "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par {warp_charge:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." généré."..TALENTS_Enh_desc_fr.ED_PSY_Passive_4_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 5 - Perilous Combustion +]--	01.11.2025
	["loc_talent_psyker_elite_and_special_kills_add_warpfire_desc"] = { -- stacks: 3, stack(s)->Stacks, +colors
		en = "Killing an Elite or a Specialist applies {stacks:%s} Stacks of "..COLORS_KWords.Soulblaze_rgb.." to all enemies within a "..COLORS_Numbers.n_4_rgb.."-meter radius. Up to "..COLORS_Numbers.n_31_rgb.." Stacks on a target.\n"
			.."\n"
			..Dot_nc.." Lasts "..COLORS_Numbers.n_8_rgb.." seconds.\n"
			..Dot_nc.." Ticks every "..COLORS_Numbers.n_075_rgb.." seconds.\n"
			..PHRS.Refr_dur_stappl.."\n"
			..Dot_green.." Does proc on Elites or Specials killed by "..COLORS_KWords.Soulblaze_rgb..", "..COLORS_KWords.Burn_rgb.." or "..COLORS_KWords.Bleed_rgb.." ticks.\n"
			..Dot_green.." Very high armor "..COLORS_KWords.Damage_rgb.." modifiers across the board.\n"
			..Dot_red.." Very low armor "..COLORS_KWords.Damage_rgb.." modifier against Carapace.",
		--[+ Пассивный 5 - Опасное возгорание +]-- руоф Пагубное воспламенение
		ru = "Убийство элитного врага или специалиста накладывает {stacks:%s} заряда "..COLORS_KWords_ru.Soulblaze_rgb_ru.." на всех врагов в радиусе "..COLORS_Numbers.n_4_rgb.." метров от убитого. До "..COLORS_Numbers.n_31_rgb.." заряда на цель.\n"
			.."\n"
			..Dot_nc.." Длится "..COLORS_Numbers.n_8_rgb.." секунд.\n"
			..Dot_nc.." Срабатывает каждые "..COLORS_Numbers.n_075_rgb.." секунды.\n"
			..PHRS.Refr_dur_stappl_ru.."\n"
			..Dot_green.." Может сработать при убийстве элитного врага или специалиста с помощью "..COLORS_KWords_ru.Soulblaze_rgb_ru..", "..COLORS_KWords_ru.Burn_rgb_ru.." или "..COLORS_KWords_ru.Bleed_rgb_ru..".\n"
			..Dot_green.." Большой "..COLORS_KWords_ru.Dmg_rgb_ru.." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..COLORS_KWords_ru.Dmg_rgb_ru.." по панцирной броне.",
		-- fr = "Tuer un ennemi d'élite ou un spécialiste applique {stacks:%s} Stacks d'"..COLORS_KWords_fr.Soulblaze_rgb_fr.." aux ennemis à proximité, infligeant des "..COLORS_KWords_fr.Damage_rgb_fr.." sur la durée."..TALENTS_Enh_desc_fr.ED_PSY_Passive_5_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 6 - Battle Meditation +]--	01.11.2025
	["loc_talent_psyker_quell_on_kill_and_reduction_desc"] = { -- warp_charge_reduction: 10%, chance: 10%, warp_charge_percent: 10%, +colors
		en = Dot_green.." {warp_charge_reduction:%s} "..COLORS_KWords.Peril_rgb.." Generation.\n"
			.."\n"
			..Dot_green.." {chance:%s} chance to Quell {warp_charge_percent:%s} "..COLORS_KWords.Peril_rgb.." on Kill.",
		--[+ Пассивный 6 - Боевая медитация +]--
		ru = Dot_green.." {warp_charge_reduction:%s} к набору "..COLORS_KWords_ru.Peril_rgb_ru..".\n"
			.."\n"
			..Dot_green.." {chance:%s} шанс подавить {warp_charge_percent:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." при убийстве.",
		-- fr = "{chance:%s} de chance de dissiper {warp_charge_percent:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." lors d'une élimination."..TALENTS_Enh_desc_fr.ED_PSY_Passive_7_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 7 - Perfect Timing +]--	01.11.2025
	["loc_talent_psyker_damage_on_crit_stacking_desc"] = { -- damage: +3%, duration: 10, stacks: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on "..COLORS_KWords.Crit_Attk_rgb..".\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..PHRS.Can_be_refr.."\n"
			..Dot_red.." Generates "..COLORS_Numbers.n_1_rgb.." stack per "..COLORS_KWords.Crit_Attk_rgb.." regardless of how many enemies have been hit.",
		--[+ Пассивный 7 - Идеальный момент +]-- руоф Безупречное чувство времени
		ru = Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд при "..COLORS_KWords_ru.Crit_hit_rgb_ru..".\n"
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..PHRS.Can_be_refr_ru.."\n"
			..Dot_red.." Даёт "..COLORS_Numbers.n_1_rgb.." заряд за "..COLORS_KWords_ru.Crithit_rgb_ru..", независимо от количества поражённых целей.",
		-- fr = "{damage:%s} des dégâts Warp pendant {duration:%s} secondes sur les "..COLORS_KWords_fr.Crit_hits_rgb_fr..". Se cumule jusqu'à {stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_PSY_Passive_6_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 8 - Channeled Force +]--	01.11.2025
	["loc_talent_psyker_force_staff_both_bonus_desc"] = { -- damage: +20%, time: 5, secondary_damage: +10%, secondary_time: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." to Force Staff's Primary Attacks after Fully Charged Force Staff Secondary Attacks.\n"
			..Dot_nc.." Lasts {time:%s} seconds.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} "..COLORS_KWords.Damage_rgb.." to Force Staff's Secondary Attacks after Force Staff Primary Attack.\n"
			..Dot_nc.." Lasts {secondary_time:%s} seconds.\n"
			.."\n"
			..PHRS.Can_be_refr.."\n"
			..Dot_red.." For Inferno Staff, both of this Talent's buffs only increase the "..COLORS_KWords.Damage_rgb.." of the flame direct hit, "..COLORS_KWords.Soulblaze_rgb.." damage is unaffected.",
		--[+ Пассивный 8 - Направленная сила +]--
		ru = Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." для основной атаки психосилового посоха после полностью заряженной вторичной атаки.\n"
			..Dot_nc.." Длится {time:%s} секунд.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." для вторичной атаки психосилового посоха после основной атаки.\n"
			..Dot_nc.." Длится {secondary_time:%s} секунд.\n"
			.."\n"
			..PHRS.Can_be_refr_ru.."\n"
			..Dot_red.." Для посоха Инферно, оба усиления увеличивают только "..COLORS_KWords_ru.Dmg_rgb_ru.." от прямых попаданий огнём, урон от "..COLORS_KWords_ru.Soulblaze_rgb_ru.." не затрагивается.",
		-- fr = "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." aux attaques principales du bâton de force après des attaques secondaires entièrement chargées. Dure {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Passive_12_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 9 - Mind in Motion +]--	01.11.2025
	["loc_talent_psyker_no_movement_penalty_quell_reload_desc"] = { -- +colors
		en = "Your Movement Speed is not reduced while Quelling "..COLORS_KWords.Peril_rgb.." or Reloading.\n"
			.."\n"
			..Dot_red.." Does not interact with movement speed buffs.",
		--[+ Пассивный 9 - Разум в движении +]-- руоф Движущийся разум
		ru = "Ваша скорость передвижения не снижается во время подавления "..COLORS_KWords_ru.Peril_rgb_ru.." или перезарядки оружия.\n"
			.."\n"
			..Dot_red.." Не взаимодействует с усилениями скорости передвижения.",
		-- fr = "Votre vitesse de déplacement n'est pas réduite lors de l'atténuation du "..COLORS_KWords_fr.Peril_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_10_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 10 - Souldrinker +]--	07.11.2025
	["loc_talent_psyker_killing_enemy_with_warpfire_boosts_duration_desc"] = { -- toughness: 15%, crit_chance: 5%, duration: 5, s->seconds, +colors
		en = "Killing an enemy with "..COLORS_KWords.Soulblaze_rgb.." grants the following for {duration:%s} seconds:\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{crit_chance:%s} "..COLORS_KWords.Crit_hit_chance_rgb..",\n"
			..Dot_green.." "..COLORS_Numbers.pc_3_rgb.." "..COLORS_KWords.Toughness_rgb.." per second, up to {toughness:%s} "..COLORS_KWords.Toughness_rgb.." total.\n"
			.."\n"
			..Dot_green.." Can be refreshed during active duration.\n"
			..Dot_green.." This Talent's effects have no range limit and can be procced at any distance to the dying enemy.",
		--[+ Пассивный 10 - Поглотитель душ +]-- руоф Поглощение душ
		ru = "Убийство врага с помощью "..COLORS_KWords_ru.Soulblaze_rgb_ru.." даёт на {duration:%s} секунд:\n"
			..Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru..",\n"
			..Dot_green.." "..COLORS_Numbers.pc_3_rgb.." восстановления "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду, вплоть до {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..".\n"
			.."\n"
			..PHRS.Can_be_refr_ru.."\n"
			..Dot_green.." Эффект этого таланта не имеет ограничений по дальности и может применяться на любом расстоянии от умирающего врага.",
		-- fr = "Tuer un ennemi sous "..COLORS_KWords_fr.Soulblaze_rgb_fr.." restaure {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." et octroie {crit_chance:%s} de "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.." pendant {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Passive_15_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 11 - Malefic Momentum +]--	01.11.2025
	["loc_talent_psyker_kills_stack_other_weapon_damage_both_description"] = { -- warp_damage/non_warp_damage: +4%, duration: 8, stacks: 5, s->seconds, +colors
		en = Dot_green.." {warp_damage:%s} "..COLORS_KWords.Damage_rgb.." to Warp Attacks for {duration:%s} seconds after a non-Warp based Kill.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} "..COLORS_KWords.Damage_rgb.." to non-Warp Attacks for {duration:%s} seconds after a Warp based Kill.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..PHRS.Can_be_refr,
		--[+ Пассивный 11 - Пагубный импульс +]-- руоф Пагубный моментум
		ru = Dot_green.." {warp_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." варп-атак на {duration:%s} секунд после убийства не варп-атакой.\n"
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." не варп-атак на {duration:%s} секунд после убийства варп-атакой.\n"
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..PHRS.Can_be_refr_ru,
		-- fr = "{warp_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." aux attaques Warp pendant {duration:%s} secondes après une élimination n'utilisant pas le Warp. Se cumule jusqu'à {stacks:%s} fois.\n{non_warp_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." aux attaques n'utilisant pas le Warp pendant {duration:%s} secondes après une élimination utilisant le Warp. Se cumule jusqu'à {stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_PSY_Passive_11_rgb_frы,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 12 - Lightning Speed +]--	01.11.2025
	["loc_talent_psyker_melee_attack_speed_desc"] = { -- melee_attack_speed: 10%, +colors
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{melee_attack_speed:%s} Melee Attack Speed.",
		--[+ Пассивный 12 - Молниеносная скорость +]--
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{melee_attack_speed:%s} к скорости атак ближнего боя.",
		fr = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{melee_attack_speed:%s} de vitesse d'attaque en mêlée.", -- ..TALENTS_Enh_desc_fr.ED_PSY_Passive_14_rgb_fr
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 13 - Empyric Shock +]--	01.11.2025
	["loc_talent_psyker_force_staff_quick_attack_bonus_desc"] = { -- damage_taken: 6%, max_stacks: 5, duration: 10, s->seconds, +colors
		en = Dot_green.." {damage_taken:%s} "..COLORS_KWords.Damagewrp_rgb.." Taken by victims of your Force Staff’s Primary Attack.\n"
			..Dot_nc.." Max Stacks {max_stacks:%s}.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..PHRS.Can_be_refr.."\n"
			..PHRS.Can_appl_thr_shlds,
		--[+ Пассивный 13 - Эмпирический шок +]--
		ru = Dot_green.." {damage_taken:%s} к "..COLORS_KWords_ru.Damagewrp_rgb_ru..", получаемому врагами, от ваших основных атак психосиловых посохов.\n"
			..Dot_nc.." Максимум {max_stacks:%s} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..PHRS.Can_be_refr_ru.."\n"
			..PHRS.Can_appl_thr_shlds_ru,
		-- fr = "{damage_taken:%s} de "..COLORS_KWords_fr.Damagewrp_rgb_fr.." subi par les victimes de votre attaque principale de bâton de force. Jusqu'à {max_stacks:%s} stacks. Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Passive_16_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 14 - Wildfire +]--	01.11.2025
	["loc_talent_psyker_warpfire_spread_desc"] = { -- stacks: 4, +colors
		en = "When an Enemy dies while affected by your "..COLORS_KWords.Soulblaze_rgb..", nearby Enemies each gain up to {stacks:%s} Stacks of "..COLORS_KWords.Soulblaze_rgb..". They cannot gain more Stacks than the dying Enemy had.\n"
			.."\n"
			..Dot_nc.." The amount of "..COLORS_KWords.Soulblaze_rgb.." Stacks that spread depends on the amount of "..COLORS_KWords.Soulblaze_rgb.." Stacks on the dying enemy:\n"
			.."_______________________________\n"
			.."Stacks:      "..COLORS_Numbers.n_1_rgb.."|         "..COLORS_Numbers.n_2_rgb.."|        "..COLORS_Numbers.n_3_rgb.."|        "..COLORS_Numbers.n_4_rgb.."|       >"..COLORS_Numbers.n_4_rgb.."\n"
			.."Spreads:   "..COLORS_Numbers.n_0_rgb.."|        "..COLORS_Numbers.n_2_rgb.."|        "..COLORS_Numbers.n_3_rgb.."|        "..COLORS_Numbers.n_4_rgb.."|         "..COLORS_Numbers.n_4_rgb.."\n"
			.."_______________________________\n"
			..Dot_red.." Targets do not receive "..COLORS_KWords.Soulblaze_rgb.." Stacks caused by the Talent if they already have "..COLORS_Numbers.n_4_rgb.." Stacks or more on them.\n"
			..Dot_nc.." Daemonhosts are not valid targets.",
		--[+ Пассивный 14 - Неконтролируемый пожар +]-- руоф Гремучая смесь
		ru = "Когда умирает враг, находящийся под действием вашего "..COLORS_KWords_ru.Soulblaze_rgb_ru..", все ближайшие враги также получают до {stacks:%s} зарядов "..COLORS_KWords_ru.Soulblaze_rgb_ru..". Они не могут получить больше зарядов, чем было у умирающего врага.\n"
			.."\n"
			..Dot_nc.." Количество распространяемых зарядов "..COLORS_KWords_ru.Soulblaze_rgb_ru.." зависит от количества зарядов на умирающем враге:\n"
			.."_______________________________\n"
			.."Заряды на враге:    "..COLORS_Numbers.n_1_rgb.."|    "..COLORS_Numbers.n_2_rgb.."|    "..COLORS_Numbers.n_3_rgb.."|    "..COLORS_Numbers.n_4_rgb.."|   >"..COLORS_Numbers.n_4_rgb.."\n"
			.."Распространения:  "..COLORS_Numbers.n_0_rgb.."|    "..COLORS_Numbers.n_2_rgb.."|    "..COLORS_Numbers.n_3_rgb.."|    "..COLORS_Numbers.n_4_rgb.."|     "..COLORS_Numbers.n_4_rgb.."\n"
			.."_______________________________\n"
			..Dot_red.." Цели не получают заряды "..COLORS_KWords_ru.Soulblaze_rgb_ru..", если на них уже наложено {stacks:%s} заряда или более.\n"
			..Dot_nc.." Не накладывается на демонхостов.",
		-- fr = "Lorsqu'un ennemi affecté par votre "..COLORS_KWords_fr.Soulblaze_rgb_fr.." meurt, les ennemis proches gagnent chacun jusqu'à {stacks:%s} stacks d'"..COLORS_KWords_fr.Soulblaze_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_8_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 15 - Warp Splitting +]--	01.11.2025
	["loc_talent_psyker_cleave_from_peril_desc"] = { -- max_cleave: +100%, +colors
		en = Dot_green.." Up to {max_cleave:%s} "..COLORS_KWords.Cleave_rgb..", based on "..COLORS_KWords.Peril_rgb..".\n"
			.."\n"
			..PHRS.Carap_cant_cleave,
		--[+ Пассивный 15 - Расщепление варпа +]--
		ru = Dot_green.." До {max_cleave:%s} к "..COLORS_KWords_ru.Cleave_rgb_ru..", в зависимости от уровня "..COLORS_KWords_ru.Peril_rgb_ru..".\n"
			.."\n"
			..PHRS.Carap_cant_clv_ru,
		-- fr = "Jusqu'à {max_cleave:%s} de "..COLORS_KWords_fr.Cleave_rgb_fr..", en fonction du "..COLORS_KWords_fr.Peril_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_18_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 16 - By Crack of Bone +]--	01.11.2025
	["loc_talent_psyker_melee_weaving_desc"] = { -- vent: 10%, warp_generation: 20%, duration: 4, s->seconds, +colors
		en = Dot_green.." {vent:%s} "..COLORS_KWords.Peril_rgb.." Quelled on Melee "..COLORS_KWords.Weakspot_rgb.." kills.\n"
			..PHRS.Can_proc_mult
			.."\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{warp_generation:%s} "..COLORS_KWords.Peril_rgb.." Generation for {duration:%s} seconds on Melee "..COLORS_KWords.Weakspot_rgb.." kills.\n"
			..PHRS.Can_be_refr,
		--[+ Пассивный 16 - Треск костей +]--
		ru = Dot_green.." {vent:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." подавляется при убийствах в "..COLORS_KWords_ru.Weakspot_rgb_ru.." в ближнем бою.\n"
			..PHRS.Can_proc_mult_ru
			.."\n"
			..Dot_green.." "..COLORS_Numbers.n_minus_rgb.."{warp_generation:%s} к набору "..COLORS_KWords_ru.Peril_rgb_ru.." на {duration:%s} секунды при убийствах в "..COLORS_KWords_ru.Weakspot_rgb_ru.." в ближнем бою.\n"
			..PHRS.Can_be_refr_ru,
		-- fr = "{vent:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." atténué lors d'une éliminations sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." en mélée.\n{warp_generation:%s} de Réduction de la génération de "..COLORS_KWords_fr.Peril_rgb_fr.." pendant {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Passive_17_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 17 - Immaterial Focus +]--	03.11.2025
	["loc_talent_psyker_damage_resistance_stun_immunity_desc"] = { -- dr: +10%, duration: 4, s->seconds, +colors
		en = Dot_green.." {dr:%s} "..COLORS_KWords.Damage_rgb.." Resistance.\n"
			.."\n"
			.."While at or above "..COLORS_Numbers.pc_97_rgb.." "..COLORS_KWords.Peril_rgb.." and for {duration:%s} seconds after dropping below "..COLORS_Numbers.pc_97_rgb.." "..COLORS_KWords.Peril_rgb..", grants Immunity to "..COLORS_KWords.Stuns_rgb.." from both Melee and Ranged Attacks.\n"
			..PHRS.Can_be_refr,
		--[+ Пассивный 17 - Нематериальная концентрация +]--
		ru = Dot_green.." {dr:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru..".\n"
			.."\n"
			.."При "..COLORS_Numbers.pc_97_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru.." или более и на {duration:%s} секунды после снижения уровня "..COLORS_KWords_ru.Peril_rgb_ru.." ниже "..COLORS_Numbers.pc_97_rgb..", вы получаете иммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru.." от атак ближнего и дальнего боя.\n"
			..PHRS.Can_be_refr_ru,
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
	},
	--[+ Passive 18 - Psykinetic's Aura +]--	03.11.2025
	["loc_talent_psyker_cooldown_on_allied_elite_kills_desc"] = { -- cooldown: 100%, time: 3, +colors
		en = Dot_green.." {cooldown:%s} "..COLORS_KWords.Cd_rgb.." Regeneration for {time:%s} seconds when you or an Ally in "..COLORS_KWords.Coherency_rgb.." kills an Elite or Specialist enemy.\n"
			.."\n"
			..PHRS.Can_be_refr,
		--[+ Пассивный 18 - Аура психокинетика +]--
		ru = Dot_green.." На {cooldown:%s} сокращается время "..COLORS_KWords_ru.Ability_cd_rgb_ru.." в течение {time:%s} секунд, если вы или ваш союзник в "..COLORS_KWords_ru.Coherency_rgb_ru.." убиваете элитного врага или специалиста.\n"
			.."\n"
			..PHRS.Can_be_refr_ru,
		-- fr = "Réduit de "..COLORS_Numbers.n_minus_rgb.."{cooldown:%s} le "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." pour vous et les alliés en syntonie à chaque élimination d'élite ou de spécialiste."..TALENTS_Enh_desc_fr.ED_PSY_Passive_9_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 19 - Empathic Evasion +]--	03.11.2025
	["loc_talent_psyker_dodge_after_crits_description"] = { -- duration: 1, s->second, +colors
		en = Dot_green.." A "..COLORS_KWords.Crit_hit_rgb.." makes you count as Dodging against Ranged Attacks for {duration:%s} second.\n"
			.."\n"
			..PHRS.Can_be_refr,
		--[+ Пассивный 19 - Эмпатическое уклонение +]--
		ru = "При "..COLORS_KWords_ru.Crit_hit_rgb_ru.." вы переходите в режим уклонения от дальнобойных атак на {duration:%s} секунду.\n"
			.."\n"
			..PHRS.Can_be_refr_ru,
		-- fr = "Les "..COLORS_KWords_fr.Crit_hit_rgb_fr.." déclenche une esquive contre les attaques à distance pendant {duration:%s} seconde."..TALENTS_Enh_desc_fr.ED_PSY_Passive_21_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 20 - One with the Warp +]--	03.11.2025
	["loc_talent_psyker_toughness_damage_reduction_from_warp_charge_desc"] = { -- min_damage: +10%, max_damage: +33%, +colors
		en = Dot_green.." {min_damage:%s} to {max_damage:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." based on your current "..COLORS_KWords.Peril_rgb..".\n"
			.."\n"
			..Dot_green.." Always grants a minimum of {min_damage:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." regardless of current "..COLORS_KWords.Peril_rgb.." amount and scales linearly:\n"
			.."_______________________________\n"
			..COLORS_KWords.Peril_rgb..":       "..COLORS_Numbers.n_0_rgb.."|   "..COLORS_Numbers.n_20_rgb.."|  "..COLORS_Numbers.n_40_rgb.."|   "..COLORS_Numbers.n_50_rgb.."|  "..COLORS_Numbers.n_60_rgb.."|    "..COLORS_Numbers.n_80_rgb.."| "..COLORS_Numbers.n_100_rgb.."\n"
			..COLORS_KWords.TDR_rgb.."("..COLORS_Numbers.pc_rgb.."): "..COLORS_Numbers.n_10_rgb.."| "..COLORS_Numbers.n__15_rgb.."| "..COLORS_Numbers.n__19_rgb.."| "..COLORS_Numbers.n__22_rgb.."| "..COLORS_Numbers.n__24_rgb.."| "..COLORS_Numbers.n__28_rgb.."|   "..COLORS_Numbers.n_33_rgb.."\n"
			.."_______________________________",
		--[+ Пассивный 20 - Единство с варпом +]--
		ru = Dot_green.." От {min_damage:%s} до {max_damage:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." в зависимости от вашего текущего уровня "..COLORS_KWords_ru.Peril_rgb_ru..".\n"
			.."\n"
			..Dot_green.." Всегда даёт минимум {min_damage:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." независимо от текущего уровня "..COLORS_KWords_ru.Peril_rgb_ru.." и увеличивается линейно:\n"
			.."_______________________________\n"
			..COLORS_KWords_ru.Perl0_rgb_ru.."("..COLORS_Numbers.pc_rgb.."): "..COLORS_Numbers.n_0_rgb.."|  "..COLORS_Numbers.n_20_rgb.."|  "..COLORS_Numbers.n_40_rgb.."|   "..COLORS_Numbers.n_60_rgb.."|   "..COLORS_Numbers.n_80_rgb.."| "..COLORS_Numbers.n_100_rgb.."\n"
			..COLORS_KWords_ru.TDR_rgb_ru.."("..COLORS_Numbers.pc_rgb.."):           "..COLORS_Numbers.n_10_rgb.."| "..COLORS_Numbers.n__15_rgb.."| "..COLORS_Numbers.n__19_rgb.."| "..COLORS_Numbers.n__24_rgb.."| "..COLORS_Numbers.n__28_rgb.."|  "..COLORS_Numbers.n_33_rgb.."\n"
			.."_______________________________",
		-- fr = "{min_damage:%s} à {max_damage:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." en fonction de votre "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Passive_20_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 21 - Just a Dream +]--	07.11.2025
	["loc_talent_psyker_damage_to_peril_conversion_desc"] = { -- percent: 25%, +colors
		en = Dot_green.." {percent:%s} of "..COLORS_KWords.Damage_rgb.." Taken is converted into "..COLORS_KWords.Peril_rgb..", while below "..COLORS_Numbers.pc_97_rgb.." "..COLORS_KWords.Peril_rgb..".",
		--[+ Пассивный 21 - Лишь сон +]-- руоф Просто грезы
		ru = Dot_green.." {percent:%s} получаемого "..COLORS_KWords_ru.Dmg_a_rgb_ru.." преобразуется в "..COLORS_KWords_ru.Perl_rgb_ru..", пока ваш уровень "..COLORS_KWords_ru.Peril_rgb_ru.." ниже "..COLORS_Numbers.pc_97_rgb..".",
		-- fr = "{min_damage:%s} à {max_damage:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." en fonction de votre "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Passive_20_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 22 - Anticipation +]--	03.11.2025
	["loc_talent_psyker_improved_dodge_description"] = { -- dodge_linger_time: +50%, extra_consecutive_dodges: 1
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{extra_consecutive_dodges:%s} Effective Dodges.\n"
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} Dodge duration.\n"
			..Dot_nc.." Increases from "..COLORS_Numbers.n_02_rgb.." to "..COLORS_Numbers.n_03_rgb.." seconds.",
		--[+ Пассивный 22 - Предвкушение +]--
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{extra_consecutive_dodges:%s} к количеству эффективных уклонений.\n"
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} к длительности уклонений.\n"
			..Dot_nc.." Длительность увеличивается с "..COLORS_Numbers.n_02_rgb.." до "..COLORS_Numbers.n_03_rgb.." секунды.",
		-- fr = "{dodge_linger_time:%s} de durée de l'esquive. Augmente le nombre d'esquives avant que les esquives ne commencent à devenir inefficaces de {extra_consecutive_dodges:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Passive_22_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 23 - Solidity +]--	03.11.2025
	["loc_talent_psyker_increased_vent_speed_description"] = { -- vent_speed: 30%
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{vent_speed:%s} Quell Speed.\n"
			.."\n"
			..Dot_nc.." Applies only to Active Quelling, Passive Quelling is unaffected.",
		--[+ Пассивный 23 - Устойчивость +]-- руоф Твердость
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{vent_speed:%s} к скорости подавления "..COLORS_KWords_ru.Peril_rgb_ru..".\n"
			.."\n"
			..Dot_nc.." Применяется только к активному подавлению, пассивное подавление не затрагивается.",
		-- fr = COLORS_Numbers.n_plus_rgb.."{vent_speed:%s} de vitesse d'atténuation."..TALENTS_Enh_desc_fr.ED_PSY_Passive_23_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 24 - Puppet Master +]--	03.11.2025
	["loc_talent_psyker_coherency_size_increase_description"] = { -- radius_modifier: 50%, +colors
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{radius_modifier:%s} Radius for your "..COLORS_KWords.Coherency_rgb.." Aura.",
		--[+ Пассивный 24 - Кукловод +]--
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{radius_modifier:%s} к радиусу вашей ауры "..COLORS_KWords_ru.Coherency_rgb_ru..".",
		-- fr = COLORS_Numbers.n_plus_rgb.."{radius_modifier:%s} de rayon pour votre aura de syntonie."..TALENTS_Enh_desc_fr.ED_PSY_Passive_24_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 25 - Vulnerable Minds +]--	03.11.2025
	["loc_talent_psyker_damage_vs_ogryns_and_monsters_desc"] = { -- damage: +20%, +colors
		en = Dot_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." vs Ogryns and Monstrosities.",
		--[+ Пассивный 25 - Уязвимые разумы +]-- руоф Уязвимые сознания
		ru = Dot_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." огринам и монстрам.",
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
	},
	--[+ Passive 26 - Warp Rider +]--	03.11.2025
	["loc_talent_psyker_damage_based_on_warp_charge_desc"] = { -- max_damage: +20%, +colors
		en = Dot_green.." Deal up to {max_damage:%s} "..COLORS_KWords.Damage_rgb..", based on your current "..COLORS_KWords.Peril_rgb..":\n"
			.."_______________________________\n"
			..COLORS_KWords.Peril_rgb.."("..COLORS_Numbers.pc_rgb.."):         "..COLORS_Numbers.n_0_rgb.."| "..COLORS_Numbers.n_20_rgb.."| "..COLORS_Numbers.n_40_rgb.."| "..COLORS_Numbers.n_50_rgb.."| "..COLORS_Numbers.n_60_rgb.."|  "..COLORS_Numbers.n_80_rgb.."| "..COLORS_Numbers.n_100_rgb.."\n"
			..COLORS_KWords.Damage_rgb.."("..COLORS_Numbers.pc_rgb.."):  "..COLORS_Numbers.n_0_rgb.."|    "..COLORS_Numbers.n_4_rgb.."|   "..COLORS_Numbers.n_8_rgb.."|  "..COLORS_Numbers.n_10_rgb.."|  "..COLORS_Numbers.n_12_rgb.."|  "..COLORS_Numbers.n_16_rgb.."|   "..COLORS_Numbers.n_20_rgb.."\n"
			.."_______________________________",
		--[+ Пассивный 26 - Всадник варпа +]-- руоф Наездник варпа
		ru = Dot_green.." До {max_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..", в зависимости от вашего уровня "..COLORS_KWords_ru.Peril_rgb_ru..":\n"
			.."_______________________________\n"
			..COLORS_KWords_ru.Perl0_rgb_ru.."("..COLORS_Numbers.pc_rgb.."):     "..COLORS_Numbers.n_0_rgb.."| "..COLORS_Numbers.n_20_rgb.."| "..COLORS_Numbers.n_40_rgb.."| "..COLORS_Numbers.n_60_rgb.."| "..COLORS_Numbers.n_80_rgb.."| "..COLORS_Numbers.n_100_rgb.."\n"
			..COLORS_KWords_ru.DMG_rgb_ru.."("..COLORS_Numbers.pc_rgb.."):                "..COLORS_Numbers.n_0_rgb.."|   "..COLORS_Numbers.n_4_rgb.."|   "..COLORS_Numbers.n_8_rgb.."|  "..COLORS_Numbers.n_12_rgb.."|  "..COLORS_Numbers.n_16_rgb.."|   "..COLORS_Numbers.n_20_rgb.."\n"
			.."_______________________________",
		-- fr = "Jusqu'à {max_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de toutes les sources, basé sur votre "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Passive_25_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 27 - True Aim +]--	03.11.2025
	["loc_talent_psyker_weakspot_grants_crit_once_description"] = { -- weakspot_hits: 5, +colors
		en = Dot_green.." Landing {weakspot_hits:%s} "..COLORS_KWords.Weakspothits_rgb.." grants your next Ranged Attack a guaranteed "..COLORS_KWords.Critical_rgb..".\n"
			.."\n"
			..Dot_nc.." "..COLORS_KWords.Weakspot_rgb.." Stacks last until consumed.\n"
			..Dot_nc.." Can only trigger once per Attack.\n"
			..Dot_red.." Shooting air consumes the guaranteed "..COLORS_KWords.Crit_rgb..".",
		--[+ Пассивный 27 - Верная цель +]--
		ru = Dot_green.." Попадания {weakspot_hits:%s} раз в "..COLORS_KWords_ru.Weakspot_rgb_ru.." гарантированно делают вашу следующую дальнобойную атаку "..COLORS_KWords_ru.Crit_hit_om_rgb_ru..".\n"
			.."\n"
			..Dot_nc.." Заряды попаданий в "..COLORS_KWords_ru.Weakspot_rgb_ru.." держатся до первого "..COLORS_KWords_ru.Crit_hit_ogo_rgb_ru..".\n"
			..Dot_nc.." Срабатывает только раз за атаку.\n"
			..Dot_red.." Выстрел в воздух тратит "..COLORS_KWords_ru.Crit_chance_l_rgb_ru..".",
		-- fr = "Toucher {weakspot_hits:%s} "..COLORS_KWords_fr.Weakspothits_rgb_fr.." garantit à votre prochaine attaque à distance un "..COLORS_KWords_fr.Crit_rgb_fr.." garanti."..TALENTS_Enh_desc_fr.ED_PSY_Passive_31_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 28 - Kinetic Deflection +]--	03.11.2025
	["loc_talent_psyker_block_costs_warp_charge_desc"] = { -- warp_charge_block_cost: 25%, +colors
		en = Dot_green.." While below "..COLORS_Numbers.pc_97_rgb.." "..COLORS_KWords.Peril_rgb..",  Blocking an attack causes you to gain "..COLORS_KWords.Peril_rgb.." instead of losing "..COLORS_KWords.Stamina_rgb..".\n"
			.."\n"
			..Dot_nc.." Gained "..COLORS_KWords.Peril_rgb.." is {warp_charge_block_cost:%s} of the blocked attack's "..COLORS_KWords.Stamina_rgb.." cost.",
		--[+ Пассивный 28 - Кинетическое отклонение +]--
		ru = "Пока уровень "..COLORS_KWords_ru.Peril_rgb_ru.." ниже "..COLORS_Numbers.pc_97_rgb..", блокирование атак приводит к повышению уровня "..COLORS_KWords_ru.Peril_rgb_ru.." вместо потери "..COLORS_KWords_ru.Stamina_rgb_ru..". Получаемый уровень "..COLORS_KWords_ru.Peril_rgb_ru.." составляет {warp_charge_block_cost:%s} от стоимости "..COLORS_KWords_ru.Stamina_rgb_ru..", затрачиваемой на обычное блокирование.",
		-- fr = "Tant que vous êtes en dessous de 97 % de "..COLORS_KWords_fr.Peril_rgb_fr..", bloquer une attaque vous fait gagner du "..COLORS_KWords_fr.Peril_rgb_fr.." au lieu de perdre de l'"..COLORS_KWords_fr.Stamina_rgb_fr..".\n\nLe "..COLORS_KWords_fr.Peril_rgb_fr.." gagné représente {warp_charge_block_cost:%s} du coût en "..COLORS_KWords_fr.Stamina_rgb_fr.." de l'attaque bloquée."..TALENTS_Enh_desc_fr.ED_PSY_Passive_27_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 29 - Empyric Resolve +]--	03.11.2025
	["loc_talent_psyker_warp_glass_cannon_desc"] = { -- peril_reduction: -40%, toughness_reduction: -30%, +colors
		en = Dot_green.." {peril_reduction:%s} "..COLORS_KWords.Peril_rgb.." Generation.\n"
			.."\n"
			..Dot_red.." {toughness_reduction:%s} "..COLORS_KWords.Toughness_rgb.." Replenished.\n"
			..PHRS.Dont_intw_coher_toughn.." Only affects Melee kills and Talents.",
		--[+ Пассивный 29 - Эмпирическая решимость +]--
		ru = Dot_green.." {peril_reduction:%s} к набору "..COLORS_KWords_ru.Peril_rgb_ru..".\n"
			.."\n"
			..Dot_red.." {toughness_reduction:%s} к восстановлению "..COLORS_KWords_ru.Toughness_rgb_ru..".\n"
			..PHRS.Dont_intw_coher_toughn_ru.." Влияет только на получение "..COLORS_KWords_ru.Toughness_rgb_ru.." от убийств и талантов.",
		-- fr = "{peril_reduction:%s} de génération de "..COLORS_KWords_fr.Peril_rgb_fr..".\n{toughness_reduction:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_29_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 30 - Penetration of the Soul +]--	03.11.2025
	["loc_talent_psyker_warp_attacks_rending_alt_desc"] = { -- rending: +10%, threshold: 75%, +colors
		en = Dot_green.." Up to {rending:%s} "..COLORS_KWords.Rending_rgb.." on Warp-Attacks, based on "..COLORS_KWords.Peril_rgb..":\n"
			.."_______________________________\n"
			..COLORS_KWords.Peril_rgb.."("..COLORS_Numbers.pc_rgb.."):          "..COLORS_Numbers.n_0_rgb.."| "..COLORS_Numbers.n_20_rgb.."| "..COLORS_Numbers.n_40_rgb.."| "..COLORS_Numbers.n_50_rgb.."| "..COLORS_Numbers.n_60_rgb.."| "..COLORS_Numbers.n_80_rgb.."| "..COLORS_Numbers.n_100_rgb.."\n"
			..COLORS_KWords.Rending_rgb.."("..COLORS_Numbers.pc_rgb.."):   "..COLORS_Numbers.n_0_rgb.."|    "..COLORS_Numbers.n_4_rgb.."|   "..COLORS_Numbers.n_8_rgb.."|  "..COLORS_Numbers.n_10_rgb.."|  "..COLORS_Numbers.n_12_rgb.."|  "..COLORS_Numbers.n_16_rgb.."|  "..COLORS_Numbers.n_20_rgb.."\n"
			.."_______________________________\n"
			.."\n"
			..NTS.Rend_note_rgb,
		--[+ Пассивный 30 - Проникновение в душу +]--
		ru = Dot_green.." До {rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." брони для варп-атак, в зависимости от уровне "..COLORS_KWords_ru.Peril_rgb_ru..":\n"
			.."_______________________________\n"
			..COLORS_KWords_ru.Perl0_rgb_ru.."("..COLORS_Numbers.pc_rgb.."):      "..COLORS_Numbers.n_0_rgb.."| "..COLORS_Numbers.n_20_rgb.."| "..COLORS_Numbers.n_40_rgb.."| "..COLORS_Numbers.n_60_rgb.."| "..COLORS_Numbers.n_80_rgb.."| "..COLORS_Numbers.n_100_rgb.."\n"
			..COLORS_KWords_ru.Rndg_rgb_ru.."("..COLORS_Numbers.pc_rgb.."):   "..COLORS_Numbers.n_0_rgb.."|   "..COLORS_Numbers.n_4_rgb.."|    "..COLORS_Numbers.n_8_rgb.."|  "..COLORS_Numbers.n_12_rgb.."|  "..COLORS_Numbers.n_16_rgb.."|  "..COLORS_Numbers.n_20_rgb.."\n"
			.."_______________________________\n"
			.."\n"
			..NTS.Rend_note_rgb_ru,
		-- fr = "{rending:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." sur les attaques Warp lorsque vous êtes au-dessus de {threshold:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_30_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 31 - Crystalline Will +]--	03.11.2025
	["loc_talent_psyker_alternative_peril_explosion_new_desc"] = { -- overload_damage: +100%, overload_radius: +25%, +colors
		en = Dot_green.." {overload_damage:%s} Overload Explosion "..COLORS_KWords.Damage_rgb..",\n"
			..Dot_green.." {overload_radius:%s} Overload Explosion Radius.\n"
			.."\n"
			..Dot_green.." Overloading through "..COLORS_KWords.Perils_rgb.." of the Warp no longer knocks you down, but you lose "..COLORS_Numbers.n_1_rgb.." "..COLORS_KWords.Health_rgb.." segment from "..COLORS_KWords.Corruptdmg_rgb..".\n"
			..Dot_green.." If the explosion kills an Elite enemy, you don't take any "..COLORS_KWords.Corruptdmg_rgb..".",
		--[+ Пассивный 31 - Чистая воля +]--
		ru = "Взрыв от перегрузки, после набора "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru..", получает:\n"
			..Dot_green.." {overload_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
			..Dot_green.." {overload_radius:%s} к радиусу.\n"
			.."\n"
			..Dot_green.." Взрыв от перегрузки "..COLORS_KWords_ru.PerilsozWarp_rgb_ru.." больше не выводит вас из строя, но забирает "..COLORS_Numbers.n_1_rgb.." сегмент "..COLORS_KWords_ru.Wound_rgb_ru..", нанося вам "..COLORS_KWords_ru.Corruptdmg_rgb_ru..".\n"
			..Dot_green.." Если взрыв убьёт элитного врага, вы не получите "..COLORS_KWords_ru.Corruptdmg_rgb_ru..".",
		-- fr = "La surcharge des "..COLORS_KWords_fr.Perils_rgb_fr.." du Warp ne vous met plus à terre, mais vous subissez toujours les "..COLORS_KWords_fr.Corruptdmg_rgb_fr.." appropriées."..TALENTS_Enh_desc_fr.ED_PSY_Passive_26_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 32 - Warp Ghost +]--	03.11.2025
	["loc_talent_psyker_stat_mix_desc"] = { -- peril_reduction: -80%, stamina: +2, toughness_replenish: +25%, +colors
		en = Dot_green.." {peril_reduction:%s} Passive quelling.\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..COLORS_KWords.Stamina_rgb..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment.\n"
			..PHRS.Dont_intw_coher_toughn.." Only affects Melee kills and Talents.",
		--[+ Пассивный 32 - Призрак варпа +]--
		ru = Dot_green.." {peril_reduction:%s} к пассивному подавлению "..COLORS_KWords_ru.Peril_rgb_ru..".\n"
			.."\n"
			..Dot_green.." {stamina:%s} к "..COLORS_KWords_ru.Stamina_rgb_ru..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} к восстановлению "..COLORS_KWords_ru.Toughness_rgb_ru..".\n"
			..PHRS.Dont_intw_coher_toughn_ru.." Влияет только на получение "..COLORS_KWords_ru.Toughness_rgb_ru.." от убийств и талантов.",
		-- fr = "Jusqu'à {wield_speed:%s} de vitesse de changement d'armes, en fonction de votre "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Passive_13_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 33 - Tranquility Through Slaughter +]--	03.11.2025
	["loc_talent_psyker_ranged_crits_vent_desc"] = { -- percent: 4%, +colors
		en = Dot_green.." {percent:%s} "..COLORS_KWords.Peril_rgb.." is quelled on Non-Warp Ranged "..COLORS_KWords.Crit_hits_rgb..".\n"
			.."\n"
			..Dot_green.." Procs when hitting Shields.\n"
			..Dot_red.." Procs only Once per shot regardless of how many enemies have been hit.",
		--[+ Пассивный 33 - Успокоение через резню +]-- руоф Спокойствие посредством убийств
		ru = Dot_green.." {percent:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." подавляется при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru.." не из варп источника.\n"
			.."\n"
			..Dot_green.." Срабатывает при попадании в щиты.\n"
			..Dot_red.." Срабатывает только раз за выстрел, независимо от количества поражённых целей.",
		-- fr = "{percent:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." est atténué sur les "..COLORS_KWords_fr.Crit_hits_rgb_fr.." à distance n'utilisant pas le Warp."..TALENTS_Enh_desc_fr.ED_PSY_Passive_28_rgb_fr,
		-- ["zh-tw"] = "",
		-- ["zh-cn"] = "",
		-- de = "",
		-- it = "",
		-- ja = "",
		-- ko = "",
		-- pl = "",
		-- ["pt-br"] = "",
		-- es = "",
	},
	--[+ Passive 34 - Surety of Arms +]--	03.11.2025
	["loc_talent_psyker_reload_speed_warp_desc"] = { -- reload_speed: 25%, threshold: 75%, warp_charge: 25%, +colors
		en = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{reload_speed:%s} Reload Speed while below {threshold:%s} "..COLORS_KWords.Peril_rgb..".\n"
			..Dot_red.." On Reload, generate up to {warp_charge:%s} "..COLORS_KWords.Peril_rgb.." based on the Percentage of the Clip Restored.\n"
			.."\n"
			..Dot_red.." Reloading an Empty clip generates the max amount of {warp_charge:%s} "..COLORS_KWords.Peril_rgb..".",
		--[+ Пассивный 33 - Варп в залог +]-- руоф Верность оружия
		ru = Dot_green.." "..COLORS_Numbers.n_plus_rgb.."{reload_speed:%s} к скорости перезарядки оружия пока ваш уровень "..COLORS_KWords_ru.Peril_rgb_ru.." ниже {threshold:%s}.\n"
			..Dot_red.." При перезарядке сгенерирует до {warp_charge:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." в зависимости от процентного соотношения восстановленных патронов в магазине.\n"
			.."\n"
			..Dot_red.." Если патроны кончились, перезарядка сгенерирует вам {warp_charge:%s} "..COLORS_KWords_ru.Peril_rgb_ru..".",
		-- fr = "{reload_speed:%s} de vitesse de rechargement lorsque vous êtes en dessous de {threshold:%s} de "..COLORS_KWords_fr.Peril_rgb_fr..". Lors du rechargement, générez jusqu'à {warp_charge:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." en fonction du pourcentage du chargeur restauré."..TALENTS_Enh_desc_fr.ED_PSY_Passive_32_rgb_fr,
		-- ["zh-tw"] = "",
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

-- mod:notify("TALENTS_Psyker.lua loaded successfully")

return psyker_talent_localizations
