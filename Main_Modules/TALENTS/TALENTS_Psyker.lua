---@diagnostic disable: undefined-global
-- PSYKER TALENT MODULE -- МОДУЛЬ ТАЛАНТОВ ПСАЙКЕРА

local mod = get_mod("Enhanced_descriptions")
local Utils = mod.get_utils()

local create_template = Utils.create_template
local loc_text = Utils.loc_text
local CKWord = Utils.CKWord
local CNumb = Utils.CNumb
local CPhrs = Utils.CPhrs
local CNote = Utils.CNote
local Dot_nc = Utils.DOT_NC or "•"
local Dot_red = Utils.DOT_RED or "•"
local Dot_green = Utils.DOT_GREEN or "•"

-- LOCALIZATION OF PSYKER TALENTS -- ЛОКАЛИЗАЦИИ ТАЛАНТОВ ПСАЙКЕРА
local psyker_localizations = {
--[+ ++PSYKER - ПСАЙКЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Brain Burst +]--	26.03.2026
	["loc_ability_psyker_smite_description_new"] = { -- &->and, +colors
		en = "Charge up psychic power and release it to deal high "..CKWord("Damage", "Damage_rgb").." to a single enemy.\n"
			.."\n"
			..Dot_green.." Effective against Flak and Carapace.\n"
			-- ..Dot_green.." High "..CKWord("Damage", "Damage_rgb").." to Maniac and Unyielding.\n"
			..Dot_green.." Always targets "..CKWord("Weakspots", "Weakspots_rgb")..".\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			.."Casting with "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb").." or higher will trigger a self-explosion!",
		ru = "Зарядите психическую мощь и высвободите её, чтобы нанести высокий "..CKWord("урон", "uron_rgb_ru").." одному врагу.\n" -- Взрыв мозга -- руоф Взрыв разума
			.."\n"
			..Dot_green.." Эффективно против врагов в противоосколочной и панцирной броне.\n"
			-- ..Dot_green.." Высокий "..CKWord("урон", "uron_rgb_ru").." по маньякам и несгибаемым врагам.\n"
			..Dot_green.." Всегда бьёт в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Вы можете взорваться!{#reset()}\n"
			.."Не используйте если уровень "..CKWord("опасности", "opasnosti_rgb_ru").." "..CNumb("97%", "pc_97_rgb").." или выше!",
	},
	--[+ BLITZ 1 - Brain Rupture +]--	26.03.2026
	["loc_talent_psyker_brain_burst_improved_description"] = { -- talent_old: Brain Burst, damage: +50%, &->and, +colors
		en = "Charge up your psychic power and release it to deal immense "..CKWord("Damage", "Damage_rgb").." to a Single Enemy.\n"
			..Dot_green.." An augmented version of {talent_old:%s} that deals {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			..Dot_green.." Effective against Flak and Carapace.\n"
			-- ..Dot_green.." High "..CKWord("Damage", "Damage_rgb").." to Maniac and Unyielding.\n"
			..Dot_green.." Always targets "..CKWord("Weakspots", "Weakspots_rgb")..".\n"
			..Dot_green.." Charging the main attack to "..CNumb("50%", "pc_50_rgb").." lightly "..CKWord("Staggers", "Staggers_rgb").." the target.\n"
			..Dot_green.." On impact, "..CKWord("Staggers", "Staggers_rgb").." almost all enemies.\n"
			..Dot_red.." Cannot "..CKWord("Stagger", "Stagger_rgb").." Mutants, Ogryns, Monstrosities or enemies with active Void shield.\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			..Dot_red.." Casting with "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb").." or higher will trigger a self-explosion!",
		ru = "Зарядите свою психическую мощь и высвободите её, чтобы нанести огромный "..CKWord("урон", "uron_rgb_ru").." одному врагу.\n" -- Разрыв мозга
			..Dot_green.." Это улучшенная версия таланта {talent_old:%s}, наносящая {damage:%s} "..CKWord("урона", "urona_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." Эффективно против врагов в противоосколочной и панцирной броне.\n"
			-- ..Dot_green.." Высокий "..CKWord("урон", "uron_rgb_ru").." по маньякам и несгибаемым врагам.\n"
			..Dot_green.." Всегда бьёт в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru")..".\n"
			..Dot_green.." На уровне заряда "..CNumb("50%", "pc_50_rgb").." основная атака слегка "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." цель.\n"
			..Dot_red.." Не "..CKWord("ошеломляет", "oshelomlaet_rgb_ru")..": мутантов, огринов, чудовищ и врагов с активным пустотным щитом.\n"
			..Dot_green.." При полном заряде "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." всех врагов, кроме мутантов, чудовищ и врагов с активным пустотным щитом.\n"
			..CPhrs("Cant_Crit")
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Внимание!{#reset()}\n"
			..Dot_red.." Не используйте при уровне "..CKWord("опасности", "opasnosti_rgb_ru").." "..CNumb("97%", "pc_97_rgb").." или выше иначе вы взорвётесь!",
	},
	--[+ BLITZ 1-1 - Kinetic Resonance +]--	26.03.2026
	["loc_talent_psyker_ability_increase_brain_burst_speed_desc"] = { -- talent_name: Brain Rupture, smite_attack_speed: +75%, warp_charge_cost: 50%, duration: 10, s->seconds, +colors
		en = "Using your "..CKWord("Combat Ability", "Cmbt_abil_rgb").." buffs your {talent_name:%s} for {duration:%s} seconds:\n"
			..Dot_green.." {smite_attack_speed:%s} charge speed,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} "..CKWord("Peril", "Peril_rgb").." generation.\n"
			.."\n"
			..Dot_nc.." Affects both Primary and Secondary attacks.",
		ru = "При использовании вашей "..CKWord("боевой способности", "Cmbt_abil_rgb_ru").." усиливается ваш {talent_name:%s} на {duration:%s} секунд:\n" -- Кинетический резонанс
			..Dot_green.." {smite_attack_speed:%s} к скорости заряжания,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_charge_cost:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Влияет как на основную, так и на дополнительную атаку.",
	},
	--[+ BLITZ 1-2 - Kinetic Flayer +]--	26.03.2026
	["loc_talent_psyker_smite_on_hit_special_elite_desc"] = { -- smite_chance: 10%, talent_name: Brain Rupture, time: 15, s->seconds, +colors
		en = "Attacks vs Specials, Elites and Monstrosities, have a {smite_chance:%s} chance on Hit to inflict {talent_name:%s}.\n"
			..Dot_nc.." Cooldown {time:%s} seconds.",
		ru = "При атаке специалистов, элитных врагов или чудовищ, есть {smite_chance:%s} шанс на срабатывание блица {talent_name:%s}.\n" -- Кинетический живодёр -- руоф Кинетический истребитель
			..Dot_nc.." Восстановление {time:%s} секунд.",
	},
	--[+ BLITZ 2 - Smite +]--	26.03.2026
	["loc_ability_psyker_chain_lightning_description"] = { -- +colors
		en = "Unleash a torrent of chain bio-lightning that arcs between enemies, dealing low "..CKWord("Electrocuting", "Electrcuting_rgb").." "..CKWord("Damage", "Damage_rgb").." over time and inflicting high "..CKWord("Stagger", "Stagger_rgb")..".\n"
			.."The secondary charged attack deals increased "..CKWord("Damage", "Damage_rgb").." and jumps faster.\n"
			.."\n"
			..Dot_nc.." Max range: "..CNumb("16", "n_16_rgb").." meters.\n"
			..Dot_nc.." Only targets torso hitzone.\n"
			..CPhrs("Cant_Crit")
			..Dot_nc.." Average armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Low "..CKWord("Damage", "Damage_rgb").." vs Carapace.\n"
			..Dot_red.." Cannot "..CKWord("Stagger", "Stagger_rgb").." Monstrosities or enemies with an active Void shield.\n"
			.."\n"
			..Dot_nc.." Forces a brief Quelling action upon reaching "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..", removing ~"..CNumb("8.5%", "pc_8_5_rgb").." "..CKWord("Peril", "Peril_rgb")..". If released below "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..", it pushes enemies back.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			..Dot_red.." Do not use a Primary attack while channeling a Secondary attack at "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..", or you will self-explode.",
		ru = "Вы выпускаете поток цепной биомолнии, которая медленно распространяется между врагами, нанося им низкий "..CKWord("урон", "uron_rgb_ru").." "..CKWord("электрошоком", "elektroshokom_rgb_ru").." с течением времени и высокое "..CKWord("ошеломление", "oshelomlenie_rgb_ru")..".\n" -- Сокрушение
			.."Вторичная заряженная атака наносит повышенный "..CKWord("урон", "uron_rgb_ru").." при высвобождении, а также быстрее распространяется.\n"
			.."\n"
			..Dot_nc.." Дальность: "..CNumb("16", "n_16_rgb").." метров.\n"
			..Dot_nc.." Бьёт только в зону туловища.\n"
			..Dot_nc.." При "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." запускается автоматическое подавление ~"..CNumb("8.5%", "pc_8_5_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..". Если отпустить атаку при уровне "..CKWord("опасности", "opasnosti_rgb_ru").." ниже "..CNumb("100%", "pc_100_rgb")..", врагов отбросит назад.\n"
			..CPhrs("Cant_Crit")
			..Dot_red.." Средний "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.\n"
			..Dot_red.." Не "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." чудовищ и врагов с активным пустотным щитом.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Внимание!{#reset()}\n"
			..Dot_red.." Не используйте основную атаку пока держите дополнительную при "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." или вы взорвётесь.",
	},
	--[+ BLITZ 2-1 - Charged Strike +]--	26.03.2026
	["loc_talent_psyker_chain_lightning_damage_heavy_attacks_desc"] = { -- +colors
		en = "Your Heavy Melee Attacks "..CKWord("Electrocute", "Electrocute_rgb").." enemies, damaging them over time.\n"
			.."\n"
			..Dot_nc.." Deals up to "..CNumb("64", "n_64_rgb").." base "..CKWord("Damage", "Damage_rgb").." per tick at max charge.\n"
			..Dot_nc.." The "..CKWord("Damage", "Damage_rgb").." window lasts up to "..CNumb("2", "n_2_rgb").." seconds.\n"
			..Dot_nc.." The "..CKWord("Electrocuted", "Electrocuted_rgb").." state persists for "..CNumb("2", "n_2_rgb").." seconds after the last "..CKWord("Damage", "Damage_rgb").." tick.\n"
			.."\n"
			..Dot_green.." With "..CKWord("Enfeeble", "Enfeeble_rgb").." selected, "..CKWord("Electrocution", "Electrocution_rgb").." deals "..CKWord("Damage", "Damage_rgb").." twice as long and reaches max charge faster.",
		ru = "Ваши тяжёлые атаки ближнего боя накладывают на врагов эффект "..CKWord("электрошока", "elektroshoka_rgb_ru")..", наносящий им "..CKWord("урон", "uron_rgb_ru")..".\n" -- Заряженный удар
			.."\n"
			..Dot_nc.." Наносит до "..CNumb("64", "n_64_rgb").." единиц базового "..CKWord("урона", "urona_rgb_ru").." за срабатывание при максимальном уровне заряда.\n"
			..Dot_nc.." Окно "..CKWord("урона", "urona_rgb_ru").." длится "..CNumb("2", "n_2_rgb").." секунды.\n"
			..Dot_nc.." Эффект "..CKWord("электрошока", "elektroshoka_rgb_ru").." длится "..CNumb("2", "n_2_rgb").." секунды после последнего нанесения "..CKWord("урона", "urona_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." При выбранном модификаторе "..CKWord("Ослабление", "Enfeeble_rgb_ru")..", эффект "..CKWord("электрошока", "elektroshoka_rgb_ru").." наносит "..CKWord("урон", "uron_rgb_ru").." вдвое дольше и достигает максимального заряда быстрее.",
	},
	--[+ BLITZ 2-2 - Enfeeble +]--	26.03.2026
	["loc_talent_psyker_chain_lightning_improved_target_buff_alt_description"] = { -- damage: +10%, talent_name: Smite, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." Taken from all sources for enemies under your {talent_name:%s}'s "..CKWord("Electrocution", "Electrocution_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." от всех источников, получаемому врагами, которые находятся по действием "..CKWord("электрошока", "elektroshoka_rgb_ru").." таланта {talent_name:%s}.\n" -- Ослабление
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
	},
	--[+ BLITZ 3 - Assail +]--	26.03.2026
	["loc_ability_psyker_blitz_throwing_knives_description"] = { -- +colors
		en = "Primary attack:\n"
			..Dot_nc.." Throw swift, homing projectiles that track the nearest enemy for "..CNumb("2.5", "n_2_5_rgb").." seconds.\n"
			..Dot_nc.." Deals "..CNumb("225", "n_225_rgb").." Base "..CKWord("Damage", "Damage_rgb").." to the first target and costs "..CNumb("10%", "pc_10_rgb").." "..CKWord("Peril", "Peril_rgb")..".\n"
			.."\n"
			.."Secondary attack:\n"
			..Dot_nc.." Launch a homing projectile that flies for "..CNumb("3", "n_3_rgb").." seconds, striking all enemies within a "..CNumb("50", "n_50_rgb").."-meter radius.\n"
			..Dot_nc.." Deals "..CNumb("380", "n_380_rgb").." Base "..CKWord("Damage", "Damage_rgb").." and costs "..CNumb("25%", "pc_25_rgb").." "..CKWord("Peril", "Peril_rgb")..".\n"
			.."\n"
			..Dot_green.." Can "..CKWord("Crit", "Crit_rgb")..".\n"
			..Dot_nc.." Costs "..CNumb("1", "n_1_rgb").." ammo.\n"
			..Dot_nc.." Regenerates "..CNumb("1", "n_1_rgb").." ammo every "..CNumb("3", "n_3_rgb").." seconds.\n"
			-- ..Dot_red.." Very low "..CKWord("Damage", "Damage_rgb").." vs Carapace.\n"
			-- ..Dot_red.." Low "..CKWord("Damage", "Damage_rgb").." to Unyielding.\n"
			..Dot_red.." Cannot "..CKWord("Cleave", "Cleave_rgb").." through Carapace armor by default.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Warning!{#reset()}\n"
			..Dot_red.." Do not use at "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..", or you will self-explode.",
		ru = "Основная атака:\n" -- Нападение
			..Dot_nc.." Вы бросаете быстрые самонаводящиеся снаряды, которые отслеживают ближайших врагов в течение "..CNumb("2.5", "n_2_5_rgb").." секунд.\n"
			..Dot_nc.." Наносит "..CNumb("225", "n_225_rgb").." базового "..CKWord("урона", "urona_rgb_ru").." первой цели и стоит "..CNumb("10%", "pc_10_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			.."\n"
			.."Вторичная атака:\n"
			..Dot_nc.." Запускает самонаводящийся снаряд, который летит в течение "..CNumb("3", "n_3_rgb").." секунд, поражая врагов в радиусе "..CNumb("50", "n_50_rgb").." метров.\n"
			..Dot_nc.." Наносит "..CNumb("380", "n_380_rgb").." базового "..CKWord("урона", "urona_rgb_ru").." и стоит "..CNumb("25%", "pc_25_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." Наносит "..CKWord("критические удары", "krit_udary_rgb_ru")..".\n"
			..Dot_nc.." Тратит "..CNumb("1", "n_1_rgb").." заряд.\n"
			..Dot_nc.." "..CNumb("1", "n_1_rgb").." заряд восстанавливается каждые "..CNumb("3", "n_3_rgb").." секунды.\n"
			-- ..Dot_red.." Наносит очень низкий "..CKWord("урон", "uron_rgb_ru").." по панцирной броне и низкий "..CKWord("урон", "uron_rgb_ru").." по несгибаемым врагам.\n"
			..Dot_red.." Не "..CKWord("простреливает", "prostrelivaet_rgb_ru").." врагов в панцирной броне.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}Внимание!{#reset()}\n"
			..Dot_red.." Не используйте при "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." иначе вы взорвётесь.",
	},
	--[+ BLITZ 3-1 - Ethereal Shards +]--	26.03.2026
	["loc_talent_psyker_throwing_knives_pierce_description"] = { -- talent_name: Assail, +colors
		en = Dot_green.." {talent_name:%s} projectiles now pierce through additional targets.",
		ru = Dot_green.." Снаряды теперь пробивают дополнительные цели.", -- Эфирные осколки -- руоф Эфирные частицы
	},
	--[+ BLITZ 3-2 - Quick Shards +]--	26.03.2026
	["loc_talent_psyker_throwing_knives_cast_speed_description"] = { -- talent_name: Assail, recharge: 30%
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} {talent_name:%s} charge replenish speed.\n"
			.."\n"
			..Dot_nc.." Reduces projectile recharge time from "..CNumb("3", "n_3_rgb").." to "..CNumb("2.1", "n_2_1_rgb").." seconds per projectile.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{recharge:%s} к скорости восстановления зарядов.\n" -- Быстрые осколки -- руоф Быстрые частицы
			.."\n"
			..Dot_nc.." Сокращает время восстановления снарядов с "..CNumb("3", "n_3_rgb").." до "..CNumb("2.1", "n_2_1_rgb").." секунд на снаряд.",
	},
--[+ +AURA - АУРЫ+ +]--
	--[+ AURA 0 - The Quickening +]--	26.03.2026
	["loc_talent_psyker_aura_reduced_ability_cooldown_description"] = { -- cooldown_reduction: +7.5%, +colors
		en = Dot_green.." {cooldown_reduction:%s} "..CKWord("Ability Cooldown", "Ability_cd_rgb").." Reduction for you and allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ru = Dot_green.." {cooldown_reduction:%s} к сокращению "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Ускорение
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
	},
	--[+ AURA 1 - Kinetic Presence +]--	26.03.2026
	["loc_talent_psyker_base_3_description"] = { -- damage: +7.5%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." against Elite Enemies for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." против элитных врагов для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Кинетическое присутствие
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
	},
	--[+ AURA 2 - Seer's Presence +]--	26.03.2026
	["loc_talent_psyker_cooldown_aura_improved_description"] = { -- cooldown_reduction: +10%, talent_name: The Quickening, +colors
		en = Dot_green.." {cooldown_reduction:%s} "..CKWord("Cooldown", "Cd_rgb").." Reduction on Abilities for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			..Dot_green.." An augmented version of {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ru = Dot_green.." {cooldown_reduction:%s} к сокращению "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Присутствие провидца
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
	},
	--[+ AURA 3 - Prescience +]--	26.03.2026
	["loc_ability_psyker_gunslinger_aura_description"] = { -- critical_strike_chance: +5%, +colors
		en = Dot_green.." {critical_strike_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..Dot_nc.." Applies to all attacks that can "..CKWord("Crit", "Crit_rgb")..".\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
		ru = Dot_green.." {critical_strike_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Предвидение
			.."\n"
			..Dot_nc.." Применяется ко всем атакам, наносящим "..CKWord("критический урон", "krit_uron_rgb_ru")..".\n"
			..CPhrs("Doesnt_Stack_Psy_Aura"),
	},
--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ ABILITY 0 - Psykinetic's Wrath +]--	26.03.2026
	["loc_talent_psyker_shout_ability_description"] = { -- warpcharge_vent: 10%, cooldown: 30, s->seconds, +colors
		en = "Quells {warpcharge_vent:%s} "..CKWord("Peril", "Peril_rgb").." while releasing a cone-shaped shout that "..CKWord("Staggers", "Staggers_rgb").." enemies in front of you.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Can be used to prevent the "..CKWord("Psyker", "cls_psy_rgb").." from exploding.\n"
			..Dot_nc.." The Warp wave travels through walls and spreads up to "..CNumb("30", "n_30_rgb").." meters, allowing you to "..CKWord("Stun", "Stun_rgb").." a Pox Hound attacking an ally through obstacles.\n"
			..Dot_nc.." "..CKWord("Stuns", "Stuns_rgb").." enemies within a "..CNumb("5", "n_5_rgb").."-meter radius in front of you.",
		ru = "Вы подавляете {warpcharge_vent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." одновременно испуская конусообразный крик, который "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." врагов перед вами.\n" -- Гнев психокинетика -- руоф Психокинетический гнев
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Может использоваться для предотвращения самоподрыва.\n"
			..Dot_nc.." Враги в "..CNumb("5", "n_5_rgb").."-метровом радиусе перед вами "..CKWord("ошеломляются", "oshelomlautsa_rgb_ru")..".\n"
			..Dot_nc.." Волна варпа проходит сквозь стены и распространяется на расстояние до "..CNumb("30", "n_30_rgb").." метров, позволяя вам "..CKWord("ошеломить", "oshelomit_rgb_ru").." сквозь препятствия Гончую, атакующую союзника.",
	},
	--[+ ABILITY 1 - Venting Shriek +]--	26.03.2026
	["loc_talent_psyker_shout_vent_warp_charge_description"] = { -- warpcharge_vent: 50%, cooldown: 30, talent_name: Psykinetic's Wrath, s->seconds, +colors
		en = "Quells {warpcharge_vent:%s} "..CKWord("Peril", "Peril_rgb").." while releasing a cone-shaped shout that "..CKWord("Staggers", "Staggers_rgb").." enemies in front of you.\n"
			..Dot_green.." An augmented version of {talent_name:%s}.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Can be used to prevent the "..CKWord("Psyker", "cls_psy_rgb").." from exploding.\n"
			..Dot_nc.." The Warp wave travels through walls and spreads up to "..CNumb("30", "n_30_rgb").." meters, allowing you to "..CKWord("Stun", "Stun_rgb").." a Pox Hound attacking an ally through obstacles.\n"
			..Dot_nc.." "..CKWord("Stuns", "Stuns_rgb").." enemies within a "..CNumb("5", "n_5_rgb").."-meter radius in front of you.\n"
			..Dot_nc.." Always targets Torso hitzone.",
		ru = "Вы подавляете {warpcharge_vent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." одновременно испуская конусообразный крик, который "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." врагов перед вами.\n" -- Сбрасывающий вопль -- руоф Вырвавшийся вопль
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Может использоваться для предотвращения самоподрыва.\n"
			..Dot_nc.." Враги в "..CNumb("5", "n_5_rgb").."-метровом радиусе перед вами "..CKWord("ошеломляются", "oshelomlautsa_rgb_ru")..".\n"
			..Dot_nc.." Волна варпа проходит сквозь стены и распространяется на расстояние до "..CNumb("30", "n_30_rgb").." метров, позволяя вам "..CKWord("ошеломить", "oshelomit_rgb_ru").." сквозь препятствия Гончую, атакующую союзника.\n"
			..Dot_nc.." Всегда поражает в зону торса.",
	},
	--[+ ABILITY 1-1 - Warp Rupture +]--	26.03.2026
	["loc_talent_psyker_discharge_damage_debuff_description"] = { -- talent_name: Venting Shriek, damage_reduction: 10%, damage_taken: 10%, duration: 8, +colors
		en = "{talent_name:%s} applies a debuff to Enemies for {duration:%s} seconds:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Dealt,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} "..CKWord("Damage", "Damage_rgb").." Taken.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
		ru = "{talent_name:%s} накладывает ослабление на врагов на {duration:%s} секунд:\n" -- Разрыв варпа -- руоф Варп-разрыв
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{damage_reduction:%s} к наносимому "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage_taken:%s} к получаемому "..CKWord("урону", "uronu_rgb_ru")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Psy_eff"),
	},
	--[+ ABILITY 1-2 - Becalming Eruption +]--	26.03.2026
	["loc_talent_psyker_shout_reduces_warp_charge_generation_description"] = { -- talent_name: Venting Shriek, warp_generation: 1%, max_stacks: 25->25%, duration: 5, s->seconds, +colors
		en = Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} "..CKWord("Peril", "Peril_rgb").." Generation for each Enemy hit by {talent_name:%s}.\n"
				..Dot_nc.." Up to "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").." "..CKWord("Peril", "Peril_rgb").." Generation.\n"
				..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru").." за каждого врага поражённого вашим талантом {talent_name:%s}.\n" -- Успокаивающее извержение -- руоф Затихающее извержение
				..Dot_nc.." До "..CNumb("-", "n_minus_rgb").."{max_stacks:%s}"..CNumb("%", "pc_rgb").." к набору "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
				..Dot_nc.." Длится {duration:%s} секунд.",
	},
-- !!! Removed " -". Fix in the Enhanced_Descriptions.lua file !!! --
	--[+ ABILITY 1-3 - Creeping Flames +]--	26.03.2026
	["loc_talent_psyker_warpfire_on_shout_desc"] = { -- talent_name: Venting Shriek, min_stacks: 1 -, warpfire_stacks: 6, Stack(s)->Stacks, +colors
		en = "{talent_name:%s} applies {min_stacks:%s} - {warpfire_stacks:%s} Stacks of "..CKWord("Soulblaze", "Soulblaze_rgb").." to targets Hit based on your current "..CKWord("Peril", "Peril_rgb")..".\n"
			.."_______________________________\n"
			..CKWord("Soulblaze", "Soulblaze_rgb")..":   "..CNumb("1", "n_1_rgb").." |    "..CNumb("2", "n_2_rgb").." |     "..CNumb("3", "n_3_rgb").." |      "..CNumb("4", "n_4_rgb").." |     "..CNumb("5", "n_5_rgb").." |     "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("Peril", "Peril_rgb").." ("..CNumb("%", "pc_rgb").."):     "..CNumb("0", "n_0_rgb").." | "..CKWord("~17", "n__17_rgb").." | "..CKWord("~33", "n__33_rgb").." | "..CKWord("~50", "n__50_rgb").." | "..CKWord("~67", "n__67_rgb").." | "..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." Lasts "..CNumb("8", "n_8_rgb").." seconds.\n"
			..Dot_nc.." Ticks every "..CNumb("0.75", "n_0_75_rgb").." seconds.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Very high armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Very low armor "..CKWord("Damage", "Damage_rgb").." vs Carapace.",
		ru = "{talent_name:%s} накладывает от "..CNumb("1", "n_1_rgb").." до {warpfire_stacks:%s} зарядов "..CKWord("горения души", "gorenia_dushi_rgb_ru").." на поражённые цели в зависимости от текущего процента "..CKWord("опасности", "opasnosti_rgb_ru")..":\n" -- Ползучее пламя -- руоф Раздувающееся пламя
			.."_______________________________\n"
			.."Заряды:              "..CNumb("1", "n_1_rgb").."|    "..CNumb("2", "n_2_rgb").."|    "..CNumb("3", "n_3_rgb").."|    "..CNumb("4", "n_4_rgb").."|    "..CNumb("5", "n_5_rgb").."|     "..CNumb("6", "n_6_rgb").."\n"
			..CKWord("Опасность", "Opasnost_rgb_ru").."("..CNumb("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."|"..CKWord("~17", "n__17_rgb").."|"..CKWord("~33", "n__33_rgb").."|"..CKWord("~50", "n__50_rgb").."|"..CKWord("~67", "n__67_rgb").."|"..CKWord("~83", "n__83_rgb").."\n"
			.."_______________________________\n"
			..Dot_nc.." Срабатывает раз в "..CNumb("0.75", "n_0_75_rgb").." секунды.\n"
			..Dot_nc.." Длится "..CNumb("8", "n_8_rgb").." секунд.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Большой "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.",
	},
	--[+ ABILITY 2 - Telekine Shield +]--	26.03.2026
	["loc_talent_psyker_combat_ability_shield_description"] = { -- duration: 17.5, cooldown: 45, s->seconds
		en = "Spawns a {talent_name:%s} that blocking incoming enemy ranged attacks while allowing you and your allies to fire through it.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Shield Health: "..CNumb("20", "n_20_rgb")..".\n"
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
		ru = "Вы создаёте {talent_name:%s}, который блокирует вражеские дальние атаки, позволяя вам и вашим союзникам стрелять сквозь него.\n" -- Телекинетический щит
			..Dot_nc.." Длится {duration:%s} секунды.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Здоровье щита: "..CNumb("20", "n_20_rgb")..".\n"
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
	},
	--[+ ABILITY 2-1 - Bolstered Shield +]--	26.03.2026
	["loc_talent_psyker_force_field_charges_cooldown_description"] = { -- talent_name: Telekine Shield, max_charges: 2, cooldown: 35, +colors
		en = Dot_green.." {talent_name:%s} now holds up to {max_charges:%s} charges.\n"
			-- ..Dot_green.." Cooldown decreased to {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." The second charge's "..CKWord("Cooldown", "Cd_rgb").." starts once the first one is ready.",
		ru = Dot_green.." {talent_name:%s} теперь имеет {max_charges:%s} заряда.\n" -- Усиленный щит
			-- ..Dot_green.." Время "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." снижено на {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Время восстановления второго заряда начинается после готовности первого.",
	},
	--[+ ABILITY 2-2 - Enervating Threshold +]--	26.03.2026
	["loc_talent_psyker_force_field_stun_increased_new_description"] = { -- ability: Telekine Shield, proc_chance: 20%, special_proc_chance: 100%, +colors
		en = "{ability:%s} has a {proc_chance:%s} chance to "..CKWord("Electrocute", "Electrocute_rgb").." enemies that pass through it. Specialists and Monstrosities have a {special_proc_chance:%s} chance to get "..CKWord("Electrocuted", "Electrocuted_rgb").." but also damage the {ability:%s}.\n"
			.."\n"
			..Dot_green.." Deals "..CNumb("250", "n_250_rgb").." Base "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_green.." Can "..CKWord("Stagger", "Stagger_rgb").." all enemies except Monstrosities and enemies with active Void shield.\n"
			..Dot_nc.." The "..CKWord("Electrocution", "Electrocution_rgb").." is always applied to Specialists and Monstrosities on contact.\n"
			..Dot_red.." Very low armor "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}BUG{#reset()}\n"
			.."Specialists and Monstrosities only deal "..CNumb("1", "n_1_rgb").." "..CKWord("Damage", "Damage_rgb").." to the shield upon contact, instead of the intended "..CNumb("8", "n_8_rgb")..".",
		ru = "Враги, проходящие сквозь {ability:%s}, с {proc_chance:%s} шансом могут быть поражены "..CKWord("электрошоком", "elektroshokom_rgb_ru")..".\n" -- Порог ослабления
			.."Щит всегда поражает "..CKWord("электрошоком", "elektroshokom_rgb_ru").." специалистов, но при этом повреждается при контакте с ними.\n"
			.."\n"
			..Dot_green.." Наносит "..CNumb("250", "n_250_rgb").." базового "..CKWord("урона", "urona_rgb_ru")..".\n"
			..Dot_green.." Может "..CKWord("ошеломить", "oshelomit_rgb_ru").." всех врагов исключая чудовищ и врагов с активным пустотным щитом.\n"
			..Dot_nc.." "..CKWord("Ошеломление", "Oshelomlenie_rgb_ru").." всегда применяется к специалистам и чудовищам при контакте.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по броне.\n"
			.."\n"
			..Dot_red.." {#color(255, 35, 5)}СЛОМАНО{#reset()}\n"
			.."Специалисты и чудовища наносят щиту при контакте только "..CNumb("1", "n_1_rgb").." "..CKWord("урона", "urona_rgb_ru").." вместо задуманных "..CNumb("8", "n_8_rgb")..".",
	},
	--[+ ABILITY 2-3 - Telekine Dome +]--	26.03.2026
	["loc_talent_psyker_force_field_dome_increased_cd_desc"] = { -- talent_name: Telekine Shield, duration: 25, cooldown: 60, s->seconds
		en = "{talent_name:%s} now forms a spherical shield.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Sphere radius: "..CNumb("6", "n_6_rgb").." meters.\n"
			..Dot_nc.." Protects from enemy attacks from all angles.\n"
			.."\n"
			..Dot_red.." Cooldown is increased to {cooldown:%s} seconds.",
		ru = "{talent_name:%s} теперь формирует сферу.\n" -- Телекинетический купол
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Радиус сферы: "..CNumb("6", "n_6_rgb").." метров.\n"
			..Dot_nc.." Защищает от атак со всех сторон.\n"
			.."\n"
			..Dot_red.." Время восстановления увеличено до {cooldown:%s} секунд.",
	},
	--[+ ABILITY 2-4 - Sanctuary +]--	26.03.2026
	["loc_talent_psyker_force_field_grants_toughness_desc"] = { -- talent_name: Telekine Shield, toughness: 10%, toughness_damage_reduction: +50%, duration: 5, s->seconds, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." per second replenishes for Allies inside your {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for {duration:%s} seconds for allies inside your {talent_name:%s} when it dissipates.\n"
			.."\n"
			..Dot_green.." This effects Stack if multiple spheres overlap.",
		ru = Dot_green.." {toughness:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду для союзников внутри купола вашего щита.\n" -- Убежище -- руоф Святилище
			.."\n"
			..Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." на {duration:%s} секунд для союзников, находящихся внутри купола вашего щита, после его рассеивания.\n"
			.."\n"
			..Dot_green.." Эффект суммируется, если перекрываются несколько сфер.",
	},
	--[+ ABILITY 3 - Scrier's Gaze +]--	26.03.2026
	["loc_talent_psyker_combat_ability_overcharge_stance_improved_description"] = { -- duration: 10, base_damage: +10%, weakspot_damage: +10%, crit_chance: +20%, max_peril: 100%, cooldown: 25, damage_per_stack: +1%, vent: 50%, tdr: +20%, toughness: 2.5%, max_damage: +30%, s->seconds, +colors
		en = "You enter "..CKWord("Scrier Gaze", "Scrier_gaze_rgb")..", Quell {vent:%s} "..CKWord("Peril", "Peril_rgb").." and gain:\n"
			..Dot_green.." {base_damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Chance", "Crit_chance_rgb")..",\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..",\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." per second,\n"
			..Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..",\n"
			..Dot_green.." Suppression Immunity.\n"
			.."\n"
			.."For every second in "..CKWord("Scrier Gaze", "Scrier_gaze_rgb").." you gain Stacks:\n"
			..Dot_green.." {damage_per_stack:%s} "..CKWord("Damage", "Damage_rgb")..", up to {max_damage:%s}. This effect lingers for {duration:%s} seconds after leaving "..CKWord("Scrier Gaze", "Scrier_gaze_rgb")..".\n"
			.."\n"
			.."While in "..CKWord("Scrier Gaze", "Scrier_gaze_rgb").." you build up "..CKWord("Peril", "Peril_rgb")..". Build-up is temporarily slowed down by enemy Kills.\n"
			.."At {max_peril:%s} "..CKWord("Peril", "Peril_rgb").." Ability ends.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.",
		ru = "Активировав "..CKWord("Взор провидца", "Scriers_gaze_rgb_ru")..", вы сбрасываете {vent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." и получаете:\n" -- Взор провидца -- руоф Взор Скрира
			..Dot_green.." {base_damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..",\n"
			..Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..",\n"
			..Dot_green.." {toughness:%s} к "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду,\n"
			..Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru")..",\n"
			..Dot_green.." иммунитет к подавлению.\n"
			.."\n"
			.."За каждую секунду пока действует "..CKWord("Взор провидца", "Scriers_gaze_rgb_ru").." вы получаете заряды:\n"
			..Dot_green.." {damage_per_stack:%s} к "..CKWord("урону", "uronu_rgb_ru")..", вплоть до максимальных {max_damage:%s}. Этот эффект продлевается на {duration:%s} секунд после того как "..CKWord("Взор провидца", "Scriers_gaze_rgb_ru").." заканчивает своё действие.\n"
			.."\n"
			.."Пока действует "..CKWord("Взор провидца", "Scriers_gaze_rgb_ru").." вы набираете "..CKWord("опасность", "opasnost_rgb_ru")..". Набор "..CKWord("опасности", "opasnosti_rgb_ru").." временно замедляется при убийстве врагов.\n"
			.."При {max_peril:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." способность выключается.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.",
	},
	--[+ ABILITY 3-1 - Precognition +]--	26.03.2026
	["loc_ability_psyker_overcharge_weakspot_description"] = { -- second: 1, talent_name: Scrier's Gaze, finesse_damage_per_stack: +1%, max_finesse_damage: +30%, duration: 10, s->seconds, +colors
		en = CKWord("Weakspot", "Weakspot_rgb").." kills generate {second:%s} additional Stack while {talent_name:%s} overcharging.\n"
			..Dot_green.." Can proc multiple times per attack when "..CKWord("Cleaving", "Cleaving_rgb")..".\n"
			.."\n"
			.."For each second spent in {talent_name:%s}, you now also gain:\n"
			..Dot_green.." {finesse_damage_per_stack:%s} "..CKWord("Finesse Damage", "Finesse_dmg_rgb")..", up to {max_finesse_damage:%s} Max, which lingers for {duration:%s} seconds after leaving {talent_name:%s}.\n"
			.."\n"
			..CNote("Fns_note"),
		ru = "Пока действует {talent_name:%s}, убийства в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." добавляют {second:%s} заряд.\n" -- Предвидение -- руоф Познание
			..Dot_green.." Может срабатывать несколько раз за атаку, если "..CKWord("рассекает", "rassekaet_rgb_ru").." несколько врагов.\n"
			.."\n"
			.."За каждую секунду, проведённую по действием способности, вы теперь также получаете:\n"
			..Dot_green.." {finesse_damage_per_stack:%s} к "..CKWord("урону от ловкости", "lovkosti_uron_rgb_ru")..", до максимум {max_finesse_damage:%s}. Эффект продлевается на {duration:%s} секунд после действия способности {talent_name:%s}.",
	},
	--[+ ABILITY 3-2 - Warp Speed +]--	26.03.2026
	["loc_ability_psyker_overcharge_movement_speed_description"] = { -- talent_name: Scrier's Gaze, movement_speed: +20%
		en = "While {talent_name:%s} overcharging:\n"
			..Dot_green.." {movement_speed:%s} Movement Speed.\n"
			.."\n"
			..Dot_red.." Doesn't linger after overcharging phase.",
		ru = "Пока действует {talent_name:%s} вы получаете:\n" -- Варп-скорость
			..Dot_green.." {movement_speed:%s} к скорости движения.\n"
			.."\n"
			..Dot_red.." Не продлевается после окончания действия способности.",
	},
	--[+ ABILITY 3-3 - Reality Anchor +]--	26.03.2026
	["loc_ability_psyker_overcharge_reduced_warp_charge_vent_speed_description"] = { -- talent_name: Scrier's Gaze, warp_charge: -20%, venting: , +colors
		en = "While {talent_name:%s} overcharging:\n"
			..Dot_green.." {warp_charge:%s} "..CKWord("Peril", "Peril_rgb").." Generated,\n"
			..Dot_green.." {venting:%s} Active Quelling.\n"
			.."\n"
			..Dot_red.." Doesn't linger after overcharging phase.",
		ru = "Пока действует {talent_name:%s} вы получаете:\n" -- Якорь реальности
			..Dot_green.." {warp_charge:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..",\n"
			..Dot_green.." {venting:%s} к подавлению  "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			.."\n"
			..Dot_red.." Не продлевается после окончания действия способности.",
	},
	--[+ ABILITY 3-4 - Warp Unbound +]--	26.03.2026
	["loc_talent_psyker_overcharge_infinite_casting_desc"] = { -- talent_name: Scrier's Gaze
		en = "{talent_name:%s} now also prevents overloading from "..CKWord("Perils of the Warp", "PerilsozWarp_rgb")..", during its lingering effect.\n"
			.."\n"
			..Dot_nc.." After overcharging has ended, allows "..CKWord("Psyker", "cls_psy_rgb").." to execute "..CKWord("Peril", "Peril_rgb").."-generating actions while at "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb").." for "..CNumb("10", "n_10_rgb").." seconds without triggering the self-explosion.\n"
			.."\n"
			..Dot_nc.." When "..CNumb("10", "n_10_rgb").." seconds duration ends, {talent_name:%s} base grace period still applies, providing another "..CNumb("1.5", "n_1_5_rgb").." seconds of the same effect.",
		ru = "{talent_name:%s} также предотвращает перегрев от "..CKWord("Опасностей варпа", "Opasnostei_warpa_rgb_ru").." в течение "..CNumb("10", "n_10_rgb").." секунд после окончания действия способности.\n" -- Высвобождение варпа -- руоф Искажение варпа
			.."\n"
			..Dot_nc.." В течение этого времени вы можете выполнять действия, генерирующие "..CKWord("опасность", "opasnost_rgb_ru")..", не вызывая самоподрыва даже при "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".\n"
			..Dot_nc.." Этот модификатор имеет скрытый эффект: по истечении "..CNumb("10", "n_10_rgb").." секунд вы получите ещё "..CNumb("1.5", "n_1_5_rgb").." секунды этого же эффекта.",
	},
--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ KEYSTONE 1 - Warp Siphon +]--	26.03.2026
	["loc_talent_psyker_souls_new_desc"] = { -- duration: 25, stack: 4, damage: +4, cooldown_reduction: 7.5%, time(s)->times, +colors
		en = "Killing an Elite or Specialist Enemy gains you a Warp Charge for {duration:%s} seconds.\n"
			..Dot_green.." {damage:%s} Base "..CKWord("Damage", "Damage_rgb").." per Stack.\n"
			..Dot_nc.." Stack {stack:%s} times.\n"
			.."\n"
			.."Your next "..CKWord("Combat Ability", "Cmbt_abil_rgb").." spends all available Warp Charges to reduce the cooldown of that "..CKWord("Combat Ability", "Cmbt_abil_rgb").." by {cooldown_reduction:%s} per Warp Charge.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "Убийство элитного врага или специалиста даёт вам варп-заряд на {duration:%s} секунд.\n" -- Переливание варпа -- руоф Варп-сифон
			..Dot_green.." {damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru").." за заряд.\n"
			..Dot_nc.." Суммируется {stack:%s} раза.\n"
			.."\n"
			.."Следующая применённая "..CKWord("боевая способность", "boeva_sposobnost_rgb_ru").." потратит все доступные варп-заряды и уменьшит время "..CKWord("восстановления", "vosstanovlenia_rgb_ru").." на {cooldown_reduction:%s} за каждый варп-заряд.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ KEYSTONE 1-1 - Inner Tranquility +]--	26.03.2026
	["loc_talent_psyker_reduced_warp_charge_cost_venting_speed_desc"] = { -- warp_charge_amount: -6%, +colors
		en = Dot_green.." {warp_charge_amount:%s} "..CKWord("Peril", "Peril_rgb").." Generation Reduction for each Warp Charge.",
		ru = Dot_green.." {warp_charge_amount:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru").." за каждый варп-заряд.", -- Внутреннее спокойствие
	},
	--[+ KEYSTONE 1-2 - Essence Harvest +]--	26.03.2026
	["loc_talent_psyker_toughness_regen_on_soul_desc"] = { -- toughness: 30%, time: 5, s->seconds, +colors
		en = Dot_green.." "..CNumb("6%", "pc_6_rgb").." "..CKWord("Toughness", "Toughness_rgb").." is replenished per second for {time:%s} seconds after gaining Warp Charge, up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			.."\n"
			..Dot_green.." Can be refreshed during active duration.\n"
			..Dot_nc.." Doesn't increase the amount of "..CKWord("Toughness", "Toughness_rgb").." replenished.",
		ru = Dot_green.." "..CNumb("6%", "pc_6_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду восстанавливается в течение {time:%s} секунд после получения варп-заряда, вплоть до максимальных {toughness:%s}.\n" -- Сбор сущностей -- руоф Сбор сущности
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_nc.." Не увеличивает количество восстанавливаемой "..CKWord("стойкости", "stoikosti_rgb_ru")..".",
	},
	--[+ KEYSTONE 1-3 - Warp Battery +]--	26.03.2026
	["loc_talent_psyker_increased_souls_desc"] = { -- soul_amount: 6
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." Maximum Warp Charges. Increases from "..CNumb("4", "n_4_rgb").." to {soul_amount:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." к максимуму варп-зарядов. Увеличивается с "..CNumb("4", "n_4_rgb").." до {soul_amount:%s} варп-зарядов.", -- Варп-аккумулятор
	},
	--[+ KEYSTONE 1-4 - In Fire Reborn +]--	26.03.2026
	["loc_talent_psyker_warpfire_generates_souls_desc"] = { -- chance: 10%, +colors
		en = Dot_green.." {chance:%s} chance to gain a Warp Charge when you or an Ally kill an enemy who is currently affected by "..CKWord("Soulblaze", "Soulblaze_rgb")..".\n"
			.."\n"
			..Dot_nc.." This effect has no range limit and benefits all "..CKWord("Psykers", "cls_psys_rgb").." who have this Talent equipped.",
		ru = Dot_green.." {chance:%s} шанс получить варп-заряд, когда вы или ваш союзник убиваете врага, на которого в данный момент действует эффект "..CKWord("горения души", "gorenia_dushi_rgb_ru")..".\n" -- Возрождение в огне -- руоф В огне восстану
			.."\n"
			..Dot_green.." Эффект не имеет ограничения по дальности.\n"
			..Dot_green.." Этот эффект влияет на всех "..CKWord("псайкеров", "cls_psyov_rgb").." у которых выбран этот талант.",
	},
	--[+ KEYSTONE 1-5 - Psychic Vampire +]--	26.03.2026
	["loc_talent_psyker_souls_on_kill_coop_desc"] = { -- soul_chance: 4%
		en = Dot_green.." {soul_chance:%s} chance to gain a Warp Charge whenever you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." kills an enemy.\n"
			.."\n"
			..Dot_nc.." This Talent's effect is shared with all allied "..CKWord("Psykers", "cls_psys_rgb").." in "..CKWord("Coherency", "Coherency_rgb").." who also have it.",
		ru = Dot_green.." {soul_chance:%s} шанс получить варп-заряд, когда вы или ваш союзник в "..CKWord("сплочённости", "splochennosti_rgb_ru").." убиваете врага.\n" -- Психический вампир
			.."\n"
			..Dot_green.." Этот эффект влияет на всех "..CKWord("псайкеров", "cls_psyov_rgb").." у которых выбран этот талант.",
	},
	--[+ KEYSTONE 2 - Empowered Psionics +]--	26.03.2026
	["loc_talent_psyker_empowered_ability_description"] = { -- chance: 7.5%, blitz_one: Brain Rupture, smite_cost: 100%, smite_attack_speed: 50%, smite_damage: +50%, blitz_two: Smite, chain_lightning_damage: +200%, chain_lightning_jump_time_multiplier: 50%, blitz_three: Assail, throwing_knives_cost: 100%, throwing_knives_old_damage: 100, throwing_knives_new_damage: 150, +colors
		en = "Kills have a {chance:%s} chance to Empower your next Blitz.\n"
			.."\n"
			.."Empowered {blitz_one:%s}:\n"
			..Dot_green.." {smite_damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {smite_cost:%s} "..CKWord("Peril", "Peril_rgb").." Cost Reduction,\n"
			..Dot_green.." {smite_attack_speed:%s} Cast time Reduction.\n"
			.."\n"
			.."Empowered {blitz_two:%s}:\n"
			..Dot_green.." {chain_lightning_damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {chain_lightning_jump_time_multiplier:%s} faster spread between Enemies.\n"
			.."\n"
			.."Empowered {blitz_three:%s}:\n"
			..Dot_green.." {throwing_knives_cost:%s} "..CKWord("Peril", "Peril_rgb").." Cost Reduction,\n"
			..Dot_green.." "..CKWord("Damage", "Damage_rgb").." increase from {throwing_knives_old_damage:%s} to {throwing_knives_new_damage:%s}.\n"
			..Dot_green.." Does not consume any charges.\n"
			..Dot_green.." Allows casting at "..CNumb("100%", "pc_100_rgb").." "..CKWord("Peril", "Peril_rgb")..".",
		ru = "Убийства имеют {chance:%s} шанс усилить ваш следующий блиц.\n" -- Усиленные псионики
			.."\n"
			.."Усиленный {blitz_one:%s}:\n"
			..Dot_green.." {smite_damage:%s} к "..CKWord("урон", "uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{smite_cost:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{smite_attack_speed:%s} к времени заряжания.\n"
			.."\n"
			.."Усиленное {blitz_two:%s}:\n"
			..Dot_green.." {chain_lightning_damage:%s} к "..CKWord("урон", "uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{chain_lightning_jump_time_multiplier:%s} к скорости распространения между врагами.\n"
			.."\n"
			.."Усиленное {blitz_three:%s}:\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{throwing_knives_cost:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..",\n"
			..Dot_green.." С {throwing_knives_old_damage:%s} до {throwing_knives_new_damage:%s} увеличивается "..CKWord("урон", "uron_rgb_ru")..".\n"
			..Dot_green.." Не тратит снаряды.\n"
			..Dot_green.." Можно использовать даже при "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..".",
	},
	--[+ KEYSTONE 2-1 - Bio-Lodestone +]--	26.03.2026
	["loc_talent_psyker_increase_empower_chain_lighting_chance_description"] = { -- talent_name: Empowered Psionics, proc_chance_before: 7.5%, proc_chance_after: 12.5%
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." chance to gain {talent_name:%s} on Kill. Increases from {proc_chance_before:%s} to {proc_chance_after:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "pc_5_rgb").." к шансу получить заряд таланта {talent_name:%s} при убийстве. Увеличивается с {proc_chance_before:%s} до {proc_chance_after:%s}.", -- Биопритяжение
	},
	--[+ KEYSTONE 2-2 - Psychic Leeching +]--	26.03.2026
	["loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies_description"] = { -- talent_name: Empowered Psionics, toughness: 15%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes for you and Allies in "..CKWord("Coherency", "Coherency_rgb").." on using your Blitz while {talent_name:%s} is active.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восполняется для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru").." при использовании вашего блица, пока активны {talent_name:%s}.", -- Психическое высасывание -- руоф Психическая пиявка
	},
	--[+ KEYSTONE 2-3 - Overpowering Souls +]--	26.03.2026
	["loc_talent_psyker_empowered_ability_on_elite_kills_description"] = { -- talent_name: Empowered Psionics
		en = Dot_green.." Guaranteed chance to gain {talent_name:%s} on Elite Kills.",
		ru = Dot_green.." Вы гарантированно получаете заряд таланта {talent_name:%s} при убийстве элитного врага.", -- Могучие души
	},
	--[+ KEYSTONE 2-4 - Charged Up +]--	26.03.2026
	["loc_talent_psyker_increased_empowered_chain_lightning_stacks_description"] = { -- max_stacks: 3, talent_name: Empowered Psionics
		en = Dot_green.." You can now hold up to {max_stacks:%s} Stacks of {talent_name:%s}.",
		ru = Dot_green.." Вы теперь можете набирать до {max_stacks:%s} зарядов таланта {talent_name:%s}.", -- Заряженный -- руоф Зарядка
	},
	--[+ KEYSTONE 3 - Disrupt Destiny +]--	26.03.2026
	["loc_talent_psyker_marked_enemies_passive_updated_desc"] = { -- radius: 40, toughness: 10%, move_speed: +20%, move_speed_duration: 2.5, bonus_duration 4, base_damage: +1%, crit_damage: +2%, weakspot_damage: +2.5%, bonus_stacks: 15 -- m->meters, s->seconds, +colors
		en = "Every second, Enemies within {radius:%s} meters have a chance of being "..CKWord("Marked", "Psy_Mark_rgb")..".\n"
			.."\n"
			.."On Killing a "..CKWord("Marked", "Psy_Mark_rgb").." Enemy:\n"
			..Dot_green.." "..CNumb("10", "n_10_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restored per second, up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {move_speed_duration:%s} seconds,\n"
			..Dot_green.." {move_speed:%s} Movement Speed is granted for {move_speed_duration:%s} seconds,\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." Stack of "..CKWord("Precision", "Precision_rgb").." is added for {bonus_duration} seconds.\n"
			.."\n"
			.."Each "..CKWord("Precision", "Precision_rgb").." Stack grants:\n"
			..Dot_green.." {base_damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {crit_damage:%s} "..CKWord("Critical Damage", "Crit_dmg_r_rgb").." and\n"
			..Dot_green.." {weakspot_damage:%s} "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..".\n"
			.."\n"
			..CKWord("Precision", "Precision_rgb").." Bonus Stacks {bonus_stacks:%s} times and when the duration ends, one Stack is removed and the duration is refreshed.\n"
			.."\n"
			..Dot_green.." Dealing "..CKWord("Damage", "Damage_rgb").." to "..CKWord("Marked", "Psy_Mark_rgb").." enemies refreshes the Talent's duration.\n"
			..Dot_nc.." Valid targets are: Bruisers, Ritualist, Stalkers, Scab Shooter, Ragers, Gunners, Shotgunners, Plasma Gunner, and Mauler.",
		ru = "Каждую секунду враги в радиусе {radius:%s} метров могут быть "..CKWord("отмечены", "Psy_Mark_rgb_ru")..".\n" -- Прерывание судьбы -- руоф Разрушенная судьба
			.."\n"
			.."При убийстве "..CKWord("отмеченного", "Psy_Mark_ogo_rgb_ru").." врага вы получаете:\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." за {move_speed_duration:%s} секунды,\n"
			..Dot_green.." {move_speed:%s} к скорости передвижения на {move_speed_duration:%s} секунды и\n"
			..Dot_green.." "..CNumb("1", "n_1_rgb").." заряд "..CKWord("меткости", "Precision_rgb_ru").." на {bonus_duration} секунд.\n"
			.."\n"
			.."Каждый заряд "..CKWord("меткости", "Precision_rgb_ru").." даёт:\n"
			..Dot_green.." {base_damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {crit_damage:%s} к "..CKWord("критическому урону", "krit_uronu_rgb_ru").." и\n"
			..Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..".\n"
			.."\n"
			.."Заряды "..CKWord("меткости", "Precision_rgb_ru").." накапливаются до {bonus_stacks:%s} раз. Раз в {bonus_duration} секунд снимается "..CNumb("1", "n_1_rgb").." заряд, а длительность оставшихся зарядов обновляется.\n"
			.."\n"
			..Dot_green.." Нанесение "..CKWord("урона", "urona_rgb_ru").." "..CKWord("отмеченным", "Psy_Mark_ym_rgb_ru").." врагам обновляет длительность зарядов.\n"
			..Dot_nc.." Допустимые цели: громила, ритуалист, охотник, скаб-стрелок, берсерк, пулемётчик, скаб с дробовиком, плазмомётчик и палач.",
	},
	--[+ KEYSTONE 3-1 - Perfectionism +]--	26.03.2026
	["loc_talent_psyker_mark_increased_max_stacks_description"] = { -- stacks_previous: 15, stacks_after: 25, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." to Maximum "..CKWord("Precision", "Precision_rgb").." Bonus Stacks. Increases from {stacks_previous:%s} to {stacks_after:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("10", "n_10_rgb").." к максимуму зарядов "..CKWord("меткости", "Precision_rgb_ru")..". Увеличивается с {stacks_previous:%s} до {stacks_after:%s}.", -- Перфекционизм
	},
	--[+ KEYSTONE 3-2 - Purloin Providence +]--	26.03.2026
	["loc_talent_psyker_mark_kills_can_vent_description"] = { -- talent_name: Disrupt Destiny, chance: 20%, warp_charge_percentage: 15%, +colors
		en = Dot_green.." {chance:%s} chance to instantly Quell {warp_charge_percentage:%s} of your "..CKWord("Peril", "Peril_rgb").." on killing enemies "..CKWord("Marked", "Psy_Mark_rgb").." {talent_name:%s}.",
		ru = Dot_green.." {chance:%s} шанс, что вы моментально подавите {warp_charge_percentage:%s} вашей "..CKWord("опасности", "opasnosti_rgb_ru").." при убийстве врага, "..CKWord("отмеченного", "Psy_Mark_ogo_rgb_ru").." талантом {talent_name:%s}.", -- Похищение провидения -- руоф Похищенное провидение
	},
	--[+ KEYSTONE 3-3 - Lingering Influence +]--	26.03.2026
	["loc_talent_psyker_mark_increased_duration_description"] = { -- talent_name: Disrupt Destiny, duration_previous: 15, duration_after: 10, s->seconds
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." seconds to the duration of "..CKWord("Precision", "Precision_rgb").." Stacks. Increases from {duration_previous:%s} to {duration_after:%s} seconds.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." секунд к длительности зарядов "..CKWord("меткости", "Precision_rgb_ru")..". Увеличивается с {duration_previous:%s} до {duration_after:%s} секунд.", -- Длительное влияние -- руоф Длящееся влияние
	},
	--[+ KEYSTONE 3-4 - Cruel Fortune +]--	26.03.2026
	["loc_talent_psyker_mark_weakspot_stacks_description"] = { -- stacks: 2 talent_name: Disrupt Destiny, +colors
		en = Dot_green.." "..CKWord("Weakspot", "Weakspot_rgb").." Kills grant {stacks:%s} additional Stacks of {talent_name:%s}.\n"
			.."\n"
			..Dot_nc.." Procs on Melee, Ranged, "..CKWord("Assail", "Assail_rgb").." or "..CKWord("Brain Rupture", "Brain_rupture_rgb").." attacks.",
		ru = Dot_green.." Убийства в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." дают {stacks:%s} дополнительных заряда таланта {talent_name:%s}.\n" -- Жестокая судьба
			.."\n"
			..Dot_nc.." Срабатывает от атак ближнего и дальнего боя, от блица "..CKWord("Нападение", "Assail_rgb_ru").." и "..CKWord("Разрыв мозга", "Brain_rupture_rgb_ru")..".",
	},
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Soulstealer +]--	26.03.2026
	["loc_talent_psyker_toughness_on_warp_kill_desc"] = { -- toughness: 7.5%., +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes on Warp Attack Kill.",
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при убийстве врага варп-атакой.", -- Похититель душ -- руоф Похититель души
	},
	--[+ Passive 2 - Mettle +]--	26.03.2026
	["loc_talent_psyker_crits_regen_toughness_speed_description"] = { -- toughness: 10%, movement_speed: +5%, seconds: 4, stacks: 3, s->seconds, +colors
		en = Dot_green.." "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restored per second on "..CKWord("Critical Hits", "Crit_hits_rgb")..", up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {seconds:%s} seconds.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} Movement Speed for {seconds:%s} seconds on "..CKWord("Critical Hits", "Crit_hits_rgb")..".\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			..Dot_green.." Can generate multiple Stacks per "..CKWord("Critical Attack", "Crit_Attk_rgb").." when "..CKWord("Cleaving", "Cleaving_rgb")..".\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." "..CNumb("2.5%", "pc_2_5_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается в секунду при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..", вплоть до {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." за {seconds:%s} секунды.\n" -- Ретивость
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {movement_speed:%s} к скорости движения на {seconds:%s} секунды при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..".\n"
			..Dot_nc.." Суммируется {stacks:%s} раза.\n"
			..Dot_green.." Можно получить несколько зарядов за "..CKWord("критический удар", "krit_udar_rgb_ru").." при пробивании нескольких врагов.\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 3 - Quietude +]--	26.03.2026
	["loc_talent_psyker_toughness_from_vent_and_gen_desc"] = { -- toughness: 5%, warp_charge: 10%, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes for each {warp_charge:%s} of "..CKWord("Peril", "Peril_rgb").." Quelled or Generated.",
		ru = "{toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается за каждые {warp_charge:%s} подавленной и набранной "..CKWord("опасности", "opasnosti_rgb_ru")..".", -- Спокойствие -- руоф Тишина
	},
	--[+ Passive 4 - Warp Expenditure +]--	26.03.2026
	["loc_talent_psyker_toughness_on_melee_description"] = { -- toughness: 15%, duration: 3, instant_toughness: 2.5%, +colors
		en = Dot_green.." "..CNumb("5", "pc_5_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restored per second on Melee "..CKWord("Weakspot", "Weakspot_rgb").." Kills, up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." over {duration:%s} seconds.\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." restores instantly on successful Melee Attacks.\n"
			..Dot_red.." Procs once per Attack regardless of how many enemies have been hit.",
		ru = Dot_green.." "..CNumb("5%", "pc_5_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается в секунду при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." в ближнем бою, вплоть до {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." за {duration:%s} секунды.\n" -- Затраты варпа -- руоф Варп-затраты
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..Dot_green.." {instant_toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается моментально при успешной атаке в ближнем бою.\n"
			..Dot_red.." Срабатывает один раз за атаку, независимо от количества поражённых врагов.",
	},
	--[+ Passive 5 - Perilous Combustion +]--	26.03.2026
	["loc_talent_psyker_elite_and_special_kills_add_warpfire_desc"] = { -- stacks: 3, stack(s)->Stacks, +colors
		en = "Killing an Elite or a Specialist applies {stacks:%s} Stacks of "..CKWord("Soulblaze", "Soulblaze_rgb").." to all enemies within a "..CNumb("4", "n_4_rgb").."-meter radius. Up to "..CNumb("31", "n_31_rgb").." Stacks on a target.\n"
			.."\n"
			..Dot_nc.." Lasts "..CNumb("8", "n_8_rgb").." seconds.\n"
			..Dot_nc.." Ticks every "..CNumb("0.75", "n_0_75_rgb").." seconds.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Does proc on Elites or Specials killed by "..CKWord("Soulblaze", "Soulblaze_rgb")..", "..CKWord("Burn", "Burn_rgb").." or "..CKWord("Bleed", "Bleed_rgb").." ticks.\n"
			..Dot_green.." Very high armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Very low armor "..CKWord("Damage", "Damage_rgb").." vs Carapace.",
		ru = "Убийство элитного врага или специалиста накладывает {stacks:%s} заряда "..CKWord("горения души", "gorenia_dushi_rgb_ru").." на всех врагов в радиусе "..CNumb("4", "n_4_rgb").." метров от убитого. До "..CNumb("31", "n_31_rgb").." заряда на цель.\n" -- Опасное возгорание -- руоф Пагубное воспламенение
			.."\n"
			..Dot_nc.." Длится "..CNumb("8", "n_8_rgb").." секунд.\n"
			..Dot_nc.." Срабатывает каждые "..CNumb("0.75", "n_0_75_rgb").." секунды.\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Может сработать при убийстве элитного врага или специалиста с помощью "..CKWord("горения души", "gorenia_dushi_rgb_ru")..", "..CKWord("горения", "gorenia_rgb_ru").." или "..CKWord("кровотечения", "krovotechenia_rgb_ru")..".\n"
			..Dot_green.." Большой "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.",
	},
	--[+ Passive 6 - Battle Meditation +]--	26.03.2026
	["loc_talent_psyker_quell_on_kill_and_reduction_desc"] = { -- warp_charge_reduction: 10%, chance: 10%, warp_charge_percent: 10%, +colors
		en = Dot_green.." {warp_charge_reduction:%s} "..CKWord("Peril", "Peril_rgb").." Generation.\n"
			.."\n"
			..Dot_green.." {chance:%s} chance to Quell {warp_charge_percent:%s} "..CKWord("Peril", "Peril_rgb").." on Kill.\n"
			.."\n"
			..Dot_nc.." Can be used to prevent the "..CKWord("Psyker", "cls_psy_rgb").." from exploding.",
		ru = Dot_green.." {warp_charge_reduction:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Боевая медитация
			.."\n"
			..Dot_green.." {chance:%s} шанс подавить {warp_charge_percent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." при убийстве.\n"
			.."\n"
			..Dot_nc.." Может использоваться для предотвращения самоподрыва.",
	},
	--[+ Passive 7 - Perfect Timing +]--	26.03.2026
	["loc_talent_psyker_damage_on_crit_stacking_desc"] = { -- damage: +3%, duration: 10, stacks: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds on "..CKWord("Critical Attack", "Crit_Attk_rgb")..".\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Generates "..CNumb("1", "n_1_rgb").." stack per "..CKWord("Critical Attack", "Crit_Attk_rgb").." regardless of how many enemies have been hit.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд при "..CKWord("критическом ударе", "krit_udare_rgb_ru")..".\n" -- Идеальный момент -- руоф Безупречное чувство времени
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Даёт "..CNumb("1", "n_1_rgb").." заряд за "..CKWord("критический удар", "krit_udar_rgb_ru")..", независимо от количества поражённых целей.",
	},
	--[+ Passive 8 - Channeled Force +]--	26.03.2026
	["loc_talent_psyker_force_staff_both_bonus_desc"] = { -- damage: +20%, time: 5, secondary_damage: +10%, secondary_time: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." to Force Staff's Primary Attacks after Fully Charged Force Staff Secondary Attacks.\n"
			..Dot_nc.." Lasts {time:%s} seconds.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} "..CKWord("Damage", "Damage_rgb").." to Force Staff's Secondary Attacks after Force Staff Primary Attack.\n"
			..Dot_nc.." Lasts {secondary_time:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." For Inferno Staff, both of this Talent's buffs only increase the "..CKWord("Damage", "Damage_rgb").." of the flame direct hit, "..CKWord("Soulblaze", "Soulblaze_rgb").." damage is unaffected.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." для основной атаки психосилового посоха после полностью заряженной вторичной атаки.\n" -- Направленная сила
			..Dot_nc.." Длится {time:%s} секунд.\n"
			.."\n"
			..Dot_green.." {secondary_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." для вторичной атаки психосилового посоха после основной атаки.\n"
			..Dot_nc.." Длится {secondary_time:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_red.." Для посоха Инферно, оба усиления увеличивают только "..CKWord("урон", "uron_rgb_ru").." от прямых попаданий огнём, урон от "..CKWord("горения души", "gorenia_dushi_rgb_ru").." не затрагивается.",
	},
	--[+ Passive 9 - Mind in Motion +]--	26.03.2026
	["loc_talent_psyker_no_movement_penalty_quell_reload_desc"] = { -- +colors
		en = "Your Movement Speed is not reduced while Quelling "..CKWord("Peril", "Peril_rgb").." or Reloading.\n"
			.."\n"
			..Dot_red.." Does not interact with movement speed buffs.",
		ru = "Ваша скорость передвижения не снижается во время подавления "..CKWord("опасности", "opasnosti_rgb_ru").." или перезарядки оружия.\n" -- Разум в движении -- руоф Движущийся разум
			.."\n"
			..Dot_red.." Не взаимодействует с усилениями скорости передвижения.",
	},
	--[+ Passive 10 - Souldrinker +]--	26.03.2026
	["loc_talent_psyker_killing_enemy_with_warpfire_boosts_duration_desc"] = { -- toughness: 15%, crit_chance: 5%, duration: 5, s->seconds, +colors
		en = "Killing an enemy with "..CKWord("Soulblaze", "Soulblaze_rgb").." grants the following for {duration:%s} seconds:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb")..",\n"
			..Dot_green.." "..CNumb("3%", "pc_3_rgb").." "..CKWord("Toughness", "Toughness_rgb").." per second, up to {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." total.\n"
			.."\n"
			..Dot_green.." Can be refreshed during active duration.\n"
			..Dot_green.." This Talent's effects have no range limit and can be procced at any distance to the dying enemy.",
		ru = "Убийство врага с помощью "..CKWord("горения души", "gorenia_dushi_rgb_ru").." даёт на {duration:%s} секунд:\n" -- Поглотитель душ -- руоф Поглощение душ
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("3%", "pc_3_rgb").." восстановления "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду, вплоть до {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..Dot_green.." Эффект этого таланта не имеет ограничений по дальности и может применяться на любом расстоянии от умирающего врага.",
	},
	--[+ Passive 11 - Malefic Momentum +]--	26.03.2026
	["loc_talent_psyker_kills_stack_other_weapon_damage_both_description"] = { -- warp_damage/non_warp_damage: +5%, duration: 10, stacks: 5, s->seconds, +colors
		en = Dot_green.." {warp_damage:%s} "..CKWord("Damage", "Damage_rgb").." to Warp Attacks for {duration:%s} seconds after a non-Warp based Kill.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} "..CKWord("Damage", "Damage_rgb").." to non-Warp Attacks for {duration:%s} seconds after a Warp based Kill.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." {warp_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." варп-атак на {duration:%s} секунд после убийства не варп-атакой.\n" -- Пагубный импульс -- руоф Пагубный моментум
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..Dot_green.." {non_warp_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." не варп-атак на {duration:%s} секунд после убийства варп-атакой.\n"
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 12 - Lightning Speed +]--	26.03.2026
	["loc_talent_psyker_melee_attack_speed_desc"] = { -- melee_attack_speed: 10%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} Attack Speed.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{melee_attack_speed:%s} к скорости атак.", -- Молниеносная скорость
	},
	--[+ Passive 13 - Empyric Shock +]--	26.03.2026
	["loc_talent_psyker_force_staff_quick_attack_bonus_desc"] = { -- damage_taken: 6%, max_stacks: 5, duration: 10, s->seconds, +colors
		en = Dot_green.." {damage_taken:%s} "..CKWord("Warp-Damage", "Damagewrp_rgb").." Taken by victims of your Force Staff’s Primary Attack.\n"
			..Dot_nc.." Maximum {max_stacks:%s} Stacks.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
		ru = Dot_green.." {damage_taken:%s} к "..CKWord("варп-урону", "uronu_warp_rgb_ru")..", получаемому врагами, от ваших основных атак психосиловых посохов.\n" -- Эмпирический шок
			..Dot_nc.." Максимум {max_stacks:%s} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			..CPhrs("Can_appl_thr_shlds"),
	},
	--[+ Passive 14 - Wildfire +]--	26.03.2026
	["loc_talent_psyker_warpfire_spread_desc"] = { -- stacks: 4, +colors
		en = "When an Enemy dies while affected by your "..CKWord("Soulblaze", "Soulblaze_rgb")..", nearby Enemies each gain up to {stacks:%s} Stacks of "..CKWord("Soulblaze", "Soulblaze_rgb")..". They cannot gain more Stacks than the dying Enemy had.\n"
			.."\n"
			..Dot_nc.." The amount of "..CKWord("Soulblaze", "Soulblaze_rgb").." Stacks that spread depends on the amount of "..CKWord("Soulblaze", "Soulblaze_rgb").." Stacks on the dying enemy:\n"
			.."_______________________________\n"
			.."Stacks:      "..CNumb("1", "n_1_rgb").."|         "..CNumb("2", "n_2_rgb").."|        "..CNumb("3", "n_3_rgb").."|         "..CNumb("4", "n_4_rgb").."|        >"..CNumb("4", "n_4_rgb").."\n"
			.."Spreads:  "..CNumb("0", "n_0_rgb").."|         "..CNumb("2", "n_2_rgb").."|        "..CNumb("3", "n_3_rgb").."|         "..CNumb("4", "n_4_rgb").."|          "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." Targets do not receive "..CKWord("Soulblaze", "Soulblaze_rgb").." Stacks caused by the Talent if they already have "..CNumb("4", "n_4_rgb").." Stacks or more on them.\n"
			..Dot_nc.." Daemonhosts are not valid targets.",
		ru = "Когда умирает враг, находящийся под действием вашего "..CKWord("горения души", "gorenia_dushi_rgb_ru")..", все ближайшие враги также получают до {stacks:%s} зарядов "..CKWord("горения души", "gorenia_dushi_rgb_ru")..". Они не могут получить больше зарядов, чем было у умирающего врага.\n" -- Неконтролируемый пожар -- руоф Гремучая смесь
			.."\n"
			..Dot_nc.." Количество распространяемых зарядов "..CKWord("горения души", "gorenia_dushi_rgb_ru").." зависит от количества зарядов на умирающем враге:\n"
			.."_______________________________\n"
			.."Заряды на враге:   "..CNumb("1", "n_1_rgb").."|     "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|     "..CNumb("4", "n_4_rgb").."|   >"..CNumb("4", "n_4_rgb").."\n"
			.."Распространения: "..CNumb("0", "n_0_rgb").."|     "..CNumb("2", "n_2_rgb").."|     "..CNumb("3", "n_3_rgb").."|     "..CNumb("4", "n_4_rgb").."|     "..CNumb("4", "n_4_rgb").."\n"
			.."_______________________________\n"
			..Dot_red.." Цели не получают заряды "..CKWord("горения души", "gorenia_dushi_rgb_ru")..", если на них уже наложено {stacks:%s} заряда или более.\n"
			..Dot_green.." Не накладывается на демонхостов.",
	},
	--[+ Passive 15 - Warp Splitting +]--	26.03.2026
	["loc_talent_psyker_cleave_from_peril_desc"] = { -- max_cleave: +100%, +colors
		en = Dot_green.." Up to {max_cleave:%s} "..CKWord("Cleave", "Cleave_rgb")..", based on "..CKWord("Peril", "Peril_rgb")..".\n"
			.."\n"
			..CPhrs("Carap_cant_cleave"),
		ru = Dot_green.." До {max_cleave:%s} к "..CKWord("рассечению", "rassecheniu_rgb_ru")..", в зависимости от уровня "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Расщепление варпа
			.."\n"
			..CPhrs("Carap_cant_clv"),
	},
	--[+ Passive 16 - By Crack of Bone +]--	26.03.2026
	["loc_talent_psyker_melee_weaving_desc"] = { -- vent: 10%, warp_generation: 20%, duration: 4, s->seconds, +colors
		en = Dot_green.." {vent:%s} "..CKWord("Peril", "Peril_rgb").." Quelled on Melee "..CKWord("Weakspot", "Weakspot_rgb").." kills.\n"
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} "..CKWord("Peril", "Peril_rgb").." Generation for {duration:%s} seconds on Melee "..CKWord("Weakspot", "Weakspot_rgb").." kills.\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." {vent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." подавляется при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." в ближнем бою.\n" -- Треск костей
			..CPhrs("Can_proc_mult")
			.."\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{warp_generation:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru").." на {duration:%s} секунды при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." в ближнем бою.\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 17 - Immaterial Focus +]--	26.03.2026
	["loc_talent_psyker_damage_resistance_stun_immunity_desc"] = { -- dr: +10%, duration: 4, s->seconds, +colors
		en = Dot_green.." {dr:%s} "..CKWord("Damage", "Damage_rgb").." Resistance.\n"
			.."\n"
			.."While at or above "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb").." and for {duration:%s} seconds after dropping below "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb")..", grants Immunity to "..CKWord("Stuns", "Stuns_rgb").." from both Melee and Ranged Attacks.\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." {dr:%s} к сопротивлению "..CKWord("урону", "uronu_rgb_ru")..".\n" -- Нематериальная концентрация
			.."\n"
			.."При "..CNumb("97%", "pc_97_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru").." или более и на {duration:%s} секунды после снижения уровня "..CKWord("опасности", "opasnosti_rgb_ru").." ниже "..CNumb("97%", "pc_97_rgb")..", вы получаете иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru").." от атак ближнего и дальнего боя.\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 18 - Psykinetic's Aura +]--	26.03.2026
	["loc_talent_psyker_cooldown_on_allied_elite_kills_desc"] = { -- cooldown: 50%, time: 5, +colors
		en = Dot_green.." {cooldown:%s} "..CKWord("Cooldown", "Cd_rgb").." Regeneration for {time:%s} seconds when you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." kills an Elite or Specialist enemy.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = Dot_green.." На {cooldown:%s} сокращается время "..CKWord("восстановления способности", "vost_sposobnosti_rgb_ru").." в течение {time:%s} секунд, если вы или ваш союзник в "..CKWord("сплочённости", "splochennosti_rgb_ru").." убиваете элитного врага или специалиста.\n" -- Аура психокинетика
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 19 - Empathic Evasion +]--	26.03.2026
	["loc_talent_psyker_dodge_after_crits_description"] = { -- duration: 1, s->second, +colors
		en = Dot_green.." A "..CKWord("Critical Hit", "Crit_hit_rgb").." makes you count as Dodging against Ranged Attacks for {duration:%s} second.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "При "..CKWord("критическом ударе", "krit_udare_rgb_ru").." вы переходите в режим уклонения от дальнобойных атак на {duration:%s} секунду.\n" -- Эмпатическое уклонение
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 20 - One with the Warp +]--	26.03.2026
	["loc_talent_psyker_toughness_damage_reduction_from_warp_charge_desc"] = { -- min_damage: +10%, max_damage: +33%, +colors
		en = Dot_green.." {min_damage:%s} to {max_damage:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." based on your current "..CKWord("Peril", "Peril_rgb")..".\n"
			.."\n"
			..Dot_green.." Always grants a minimum of {min_damage:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." regardless of current "..CKWord("Peril", "Peril_rgb").." amount and scales linearly:\n"
			.."_______________________________\n"
			..CKWord("Peril", "Peril_rgb")..":       "..CNumb("0", "n_0_rgb").."|   "..CNumb("20", "n_20_rgb").."|  "..CNumb("40", "n_40_rgb").."|   "..CNumb("50", "n_50_rgb").."|   "..CNumb("60", "n_60_rgb").."|   "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("TDR", "TDR_rgb").."("..CNumb("%", "pc_rgb").."): "..CNumb("10", "n_10_rgb").."| "..CKWord("~15", "n__15_rgb").."| "..CKWord("~19", "n__19_rgb").."| "..CKWord("~22", "n__22_rgb").."| "..CKWord("~24", "n__24_rgb").."| "..CKWord("~28", "n__28_rgb").."|   "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
		ru = Dot_green.." От {min_damage:%s} до {max_damage:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." в зависимости от вашего текущего уровня "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Единство с варпом
			.."\n"
			..Dot_green.." Всегда даёт минимум {min_damage:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." независимо от текущего уровня "..CKWord("опасности", "opasnosti_rgb_ru").." и увеличивается линейно:\n"
			.."_______________________________\n"
			..CKWord("Опасность", "Opasnost_rgb_ru").."("..CNumb("%", "pc_rgb").."): "..CNumb("0", "n_0_rgb").."|  "..CNumb("20", "n_20_rgb").."|  "..CNumb("40", "n_40_rgb").."|   "..CNumb("60", "n_60_rgb").."|   "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("СУС", "TDR_rgb_ru").."("..CNumb("%", "pc_rgb").."):           "..CNumb("10", "n_10_rgb").."| "..CKWord("~15", "n__15_rgb").."| "..CKWord("~19", "n__19_rgb").."| "..CKWord("~24", "n__24_rgb").."| "..CKWord("~28", "n__28_rgb").."|   "..CNumb("33", "n_33_rgb").."\n"
			.."_______________________________",
	},
	--[+ Passive 21 - Just a Dream +]--	26.03.2026
	["loc_talent_psyker_damage_to_peril_conversion_desc"] = { -- percent: 25%, +colors
		en = Dot_green.." {percent:%s} of "..CKWord("Damage", "Damage_rgb").." Taken is converted into "..CKWord("Peril", "Peril_rgb")..", while below "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb")..".",
		ru = Dot_green.." {percent:%s} получаемого "..CKWord("урона", "urona_rgb_ru").." преобразуется в "..CKWord("опасность", "opasnost_rgb_ru")..", пока ваш уровень "..CKWord("опасности", "opasnosti_rgb_ru").." ниже "..CNumb("97%", "pc_97_rgb")..".", -- Лишь сон -- руоф Просто грезы
	},
	--[+ Passive 22 - Anticipation +]--	26.03.2026
	["loc_talent_psyker_improved_dodge_description"] = { -- dodge_linger_time: +50%, extra_consecutive_dodges: 1
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} Effective Dodges.\n"
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} Dodge duration.\n"
			..Dot_nc.." Increases from "..CNumb("0.2", "n_0_2_rgb").." to "..CNumb("0.3", "n_0_3_rgb").." seconds.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{extra_consecutive_dodges:%s} к количеству эффективных уклонений.\n" -- Предвкушение
			.."\n"
			..Dot_green.." {dodge_linger_time:%s} к длительности уклонений.\n"
			..Dot_nc.." Длительность увеличивается с "..CNumb("0.2", "n_0_2_rgb").." до "..CNumb("0.3", "n_0_3_rgb").." секунды.",
	},
	--[+ Passive 23 - Solidity +]--	26.03.2026
	["loc_talent_psyker_increased_vent_speed_description"] = { -- vent_speed: 30%
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} Quell Speed.\n"
			.."\n"
			..Dot_nc.." Applies only to Active Quelling, Passive Quelling is unaffected.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{vent_speed:%s} к скорости подавления "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Устойчивость -- руоф Твердость
			.."\n"
			..Dot_nc.." Применяется только к активному подавлению, пассивное подавление не затрагивается.",
	},
	--[+ Passive 24 - Puppet Master +]--	26.03.2026
	["loc_talent_psyker_coherency_size_increase_description"] = { -- radius_modifier: 50%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} Radius for your "..CKWord("Coherency", "Coherency_rgb").." Aura.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{radius_modifier:%s} к радиусу вашей ауры "..CKWord("сплочённости", "splochennosti_rgb_ru")..".", -- Кукловод
	},
	--[+ Passive 25 - Vulnerable Minds +]--	26.03.2026
	["loc_talent_psyker_damage_vs_ogryns_and_monsters_desc"] = { -- damage: +20%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." vs Ogryns and Monstrosities.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." огринам и чудовищам.", -- Уязвимые разумы -- руоф Уязвимые сознания
	},
	--[+ Passive 26 - Warp Rider +]--	26.03.2026
	["loc_talent_psyker_damage_based_on_warp_charge_desc"] = { -- max_damage: +20%, +colors
		en = Dot_green.." Deal up to {max_damage:%s} "..CKWord("Damage", "Damage_rgb")..", based on your current "..CKWord("Peril", "Peril_rgb")..":\n"
			.."_______________________________\n"
			..CKWord("Peril", "Peril_rgb").."("..CNumb("%", "pc_rgb").."):         "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("50", "n_50_rgb").."| "..CNumb("60", "n_60_rgb").."|  "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Damage", "Damage_rgb").."("..CNumb("%", "pc_rgb").."):  "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("10", "n_10_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|   "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
		ru = Dot_green.." До {max_damage:%s} к "..CKWord("урон", "uronu_rgb_ru")..", в зависимости от вашего уровня "..CKWord("опасности", "opasnosti_rgb_ru")..":\n" -- Всадник варпа -- руоф Наездник варпа
			.."_______________________________\n"
			..CKWord("Опасность", "Opasnost_rgb_ru").."("..CNumb("%", "pc_rgb").."):    "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."|  "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Урон", "Uron_rgb_ru").."("..CNumb("%", "pc_rgb").."):               "..CNumb("0", "n_0_rgb").."|   "..CNumb("4", "n_4_rgb").."|    "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|   "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________",
	},
	--[+ Passive 27 - True Aim +]--	26.03.2026
	["loc_talent_psyker_weakspot_grants_crit_once_description"] = { -- weakspot_hits: 5, +colors
		en = Dot_green.." Landing {weakspot_hits:%s} "..CKWord("Weakspot Hits", "Weakspothits_rgb").." grants your next Ranged Attack a guaranteed "..CKWord("Critical", "Critical_rgb")..".\n"
			.."\n"
			..Dot_nc.." "..CKWord("Weakspot", "Weakspot_rgb").." Stacks last until consumed.\n"
			..Dot_nc.." Can only trigger once per Attack.\n"
			..Dot_red.." Shooting air consumes the guaranteed "..CKWord("Crit", "Crit_rgb")..".",
		ru = Dot_green.." Попадания {weakspot_hits:%s} раз в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." гарантированно делают вашу следующую дальнобойную атаку "..CKWord("критическим выстрелом", "krit_vystrelom_rgb_ru")..".\n" -- Верная цель
			.."\n"
			..Dot_nc.." Заряды попаданий в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." держатся до первого "..CKWord("критического выстрела", "krit_vystrela_rgb_ru")..".\n"
			..Dot_nc.." Срабатывает только раз за атаку.\n"
			..Dot_red.." Выстрел в воздух тратит "..CKWord("критический выстрел", "krit_vystrel_rgb_ru")..".",
	},
	--[+ Passive 28 - Kinetic Deflection +]--	26.03.2026
	["loc_talent_psyker_block_costs_warp_charge_desc"] = { -- warp_charge_block_cost: 25%, +colors
		en = Dot_green.." While below "..CNumb("97%", "pc_97_rgb").." "..CKWord("Peril", "Peril_rgb")..", Blocking an attack causes you to gain "..CKWord("Peril", "Peril_rgb").." instead of losing "..CKWord("Stamina", "Stamina_rgb")..".\n"
			.."\n"
			..Dot_nc.." Gained "..CKWord("Peril", "Peril_rgb").." is {warp_charge_block_cost:%s} of the blocked attack's "..CKWord("Stamina", "Stamina_rgb").." cost.",
		ru = "Пока уровень "..CKWord("опасности", "opasnosti_rgb_ru").." ниже "..CNumb("97%", "pc_97_rgb")..", блокирование атак приводит к повышению уровня "..CKWord("опасности", "opasnosti_rgb_ru").." вместо потери "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n" -- Кинетическое отклонение
			.."\n"
			..Dot_nc.." Получаемый уровень "..CKWord("опасности", "opasnosti_rgb_ru").." составляет {warp_charge_block_cost:%s} от стоимости "..CKWord("выносливости", "vynoslivosti_rgb_ru")..", затрачиваемой на обычное блокирование.",
	},
	--[+ Passive 29 - Empyric Resolve +]--	26.03.2026
	["loc_talent_psyker_warp_glass_cannon_desc"] = { -- peril_reduction: -40%, toughness_reduction: -30%, +colors
		en = Dot_green.." {peril_reduction:%s} "..CKWord("Peril", "Peril_rgb").." Generation.\n"
			.."\n"
			..Dot_red.." {toughness_reduction:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenished.\n"
			..CPhrs("Dont_intw_coher_toughn").." Only affects Melee kills and Talents.",
		ru = Dot_green.." {peril_reduction:%s} к набору "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Эмпирическая решимость
			.."\n"
			..Dot_red.." {toughness_reduction:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			..CPhrs("Dont_intw_coher_toughn").." Влияет только на получение "..CKWord("стойкости", "stoikosti_rgb_ru").." от убийств и талантов.",
	},
	--[+ Passive 30 - Penetration of the Soul +]--	26.03.2026
	["loc_talent_psyker_warp_attacks_rending_alt_desc"] = { -- rending: +10%, threshold: 75%, +colors
		en = Dot_green.." Up to {rending:%s} "..CKWord("Rending", "Rending_rgb").." on Warp-Attacks, based on "..CKWord("Peril", "Peril_rgb")..":\n"
			.."_______________________________\n"
			..CKWord("Peril", "Peril_rgb").."("..CNumb("%", "pc_rgb").."):          "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("50", "n_50_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Rending", "Rending_rgb").."("..CNumb("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."|    "..CNumb("4", "n_4_rgb").."|   "..CNumb("8", "n_8_rgb").."|  "..CNumb("10", "n_10_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
		ru = Dot_green.." До {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони для варп-атак, в зависимости от уровне "..CKWord("опасности", "opasnosti_rgb_ru")..":\n" -- Проникновение в душу
			.."_______________________________\n"
			..CKWord("Опасность", "Opasnost_rgb_ru").."("..CNumb("%", "pc_rgb").."):      "..CNumb("0", "n_0_rgb").."| "..CNumb("20", "n_20_rgb").."| "..CNumb("40", "n_40_rgb").."| "..CNumb("60", "n_60_rgb").."| "..CNumb("80", "n_80_rgb").."| "..CNumb("100", "n_100_rgb").."\n"
			..CKWord("Пробивание", "Probivanie_rgb_ru").."("..CNumb("%", "pc_rgb").."):   "..CNumb("0", "n_0_rgb").."|   "..CNumb("4", "n_4_rgb").."|    "..CNumb("8", "n_8_rgb").."|  "..CNumb("12", "n_12_rgb").."|  "..CNumb("16", "n_16_rgb").."|  "..CNumb("20", "n_20_rgb").."\n"
			.."_______________________________\n"
			.."\n"
			..CNote("Rend_note"),
	},
	--[+ Passive 31 - Crystalline Will +]--	26.03.2026
	["loc_talent_psyker_alternative_peril_explosion_new_desc"] = { -- overload_damage: +100%, overload_radius: +25%, +colors
		en = Dot_green.." {overload_damage:%s} Overload Explosion "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {overload_radius:%s} Overload Explosion Radius.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb")..": ["..CNumb("600", "n_600_rgb").."-"..CNumb("100", "n_100_rgb").."].\n"
			.."\n"
			.."\n"
			..Dot_green.." Overloading through "..CKWord("Perils of the Warp", "PerilsozWarp").." no longer knocks you down, but you lose "..CNumb("1", "n_1_rgb").." "..CKWord("Health", "Health_rgb").." segment from "..CKWord("Corruption Damage", "Corruptdmg_rgb")..".\n"
			..Dot_green.." If the explosion kills an Elite enemy, you don't take any "..CKWord("Corruption Damage", "Corruptdmg_rgb")..".",
		ru = "Взрыв от перегрузки, после набора "..CNumb("100%", "pc_100_rgb").." "..CKWord("опасности", "opasnosti_rgb_ru")..", получает:\n" -- Чистая воля
			..Dot_green.." {overload_damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {overload_radius:%s} к радиусу.\n"
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru")..": ["..CNumb("600", "n_600_rgb").."-"..CNumb("100", "n_100_rgb").."].\n"
			.."\n"
			.."\n"
			..Dot_green.." Взрыв от перегрузки "..CKWord("Опасностей варпа", "Opasnostei_warpa_rgb_ru").." больше не выводит вас из строя, но забирает "..CNumb("1", "n_1_rgb").." сегмент "..CKWord("здоровья", "zdorovia_rgb_ru")..", нанося вам "..CKWord("урон от порчи", "porchi_uron_rgb_ru")..".\n"
			..Dot_green.." Если взрыв убьёт элитного врага, вы не получите "..CKWord("урон от порчи", "porchi_uron_rgb_ru")..".",
	},
	--[+ Passive 32 - Warp Ghost +]--	26.03.2026
	["loc_talent_psyker_stat_mix_desc"] = { -- peril_reduction: -80%, stamina: +2, toughness_replenish: +25%, +colors
		en = Dot_green.." {peril_reduction:%s} Passive quelling.\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment.\n"
			..CPhrs("Dont_intw_coher_toughn").." Only affects Melee kills and Talents.",
		ru = Dot_green.." {peril_reduction:%s} к пассивному подавлению "..CKWord("опасности", "opasnosti_rgb_ru")..".\n" -- Призрак варпа
			.."\n"
			..Dot_green.." {stamina:%s} к "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." {toughness_replenish:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			..CPhrs("Dont_intw_coher_toughn_ru").." Влияет только на получение "..CKWord("стойкости", "stoikosti_rgb_ru").." от убийств и талантов.",
	},
	--[+ Passive 33 - Tranquility Through Slaughter +]--	26.03.2026
	["loc_talent_psyker_ranged_crits_vent_desc"] = { -- percent: 4%, +colors
		en = Dot_green.." {percent:%s} "..CKWord("Peril", "Peril_rgb").." is quelled on Non-Warp Ranged "..CKWord("Critical Hits", "Crit_hits_rgb")..".\n"
			.."\n"
			..Dot_green.." Procs when hitting Shields.\n"
			..Dot_red.." Procs only Once per shot regardless of how many enemies have been hit.",
		ru = Dot_green.." {percent:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." подавляется при "..CKWord("критическом выстреле", "krit_vystrele_rgb_ru").." не из варп источника.\n" -- Успокоение через резню -- руоф Спокойствие посредством убийств
			.."\n"
			..Dot_green.." Срабатывает при попадании в щиты.\n"
			..Dot_red.." Срабатывает только раз за выстрел, независимо от количества поражённых целей.",
	},
	--[+ Passive 34 - Surety of Arms +]--	26.03.2026
	["loc_talent_psyker_reload_speed_warp_desc"] = { -- reload_speed: 25%, threshold: 75%, warp_charge: 25%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} Reload Speed while below {threshold:%s} "..CKWord("Peril", "Peril_rgb")..".\n"
			..Dot_red.." On Reload, generate up to {warp_charge:%s} "..CKWord("Peril", "Peril_rgb").." based on the Percentage of the Clip Restored.\n"
			.."\n"
			..Dot_red.." Reloading an Empty clip generates the max amount of {warp_charge:%s} "..CKWord("Peril", "Peril_rgb")..".",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} к скорости перезарядки оружия пока ваш уровень "..CKWord("опасности", "opasnosti_rgb_ru").." ниже {threshold:%s}.\n" -- Варп в залог -- руоф Верность оружия
			..Dot_red.." При перезарядке сгенерирует до {warp_charge:%s} "..CKWord("опасности", "opasnosti_rgb_ru").." в зависимости от процентного соотношения восстановленных патронов в магазине.\n"
			.."\n"
			..Dot_red.." Если патроны кончились, перезарядка сгенерирует вам {warp_charge:%s} "..CKWord("опасности", "opasnosti_rgb_ru")..".",
	},
}

-- CREATING TEMPLATES -- СОЗДАЁМ ШАБЛОНЫ
local psyker_templates = {}

for loc_key, locales in pairs(psyker_localizations) do
	for locale, text in pairs(locales) do
		table.insert(psyker_templates, create_template(
			"psyker_" .. loc_key,
			{loc_key},
			{locale},
			loc_text(text)
		))
	end
end

return psyker_templates
