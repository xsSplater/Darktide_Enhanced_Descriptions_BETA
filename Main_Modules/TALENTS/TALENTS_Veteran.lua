---@diagnostic disable: undefined-global
-- VETERAN TALENT MODULE -- МОДУЛЬ ТАЛАНТОВ ВЕТЕРАНА

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

-- LOCALIZATION OF VETERAN TALENTS -- ЛОКАЛИЗАЦИИ ТАЛАНТОВ ВЕТЕРАНА
local veteran_localizations = {
--[+ ++VETERAN - ВЕТЕРАН++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Frag Grenade +]--	27.03.2026
	["loc_ability_frag_grenade_description"] = { -- +colors
		en = CKWord("Fragmentation Grenade", "Fragm_gren_rgb").." that explodes after "..CNumb("1.7", "n_1_7_rgb").." seconds.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb").." epicenter: "..CNumb("500", "n_500_rgb")..".\n"
			..Dot_green.." Deals high "..CKWord("Stagger", "Stagger_rgb").." against all enemies including Monstrosities.\n"
			..Dot_nc.." Max explosion radius: "..CNumb("10", "n_10_rgb").." meters.",
			-- ..Dot_nc.." Average armor "..CKWord("Damage", "Damage_rgb")..".\n"
			-- ..Dot_red.." Very low armor "..CKWord("Damage", "Damage_rgb").." vs Carapace.",
		ru = "Вы бросаете "..CKWord("Fragmentation Grenade", "Fragm_gren_rgb")..", которая взрывается через "..CNumb("1.7", "n_1_7_rgb").." секунд.\n" -- Фраг-граната
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru").." в эпицентре: "..CNumb("500", "n_500_rgb")..".\n"
			..Dot_green.." Сильно "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." всех врагов, включая чудовищ.\n"
			..Dot_nc.." Радиус взрыва: "..CNumb("10", "n_10_rgb").." метров.",
			-- ..Dot_nc.." Средний "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			-- ..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.",
	},
	--[+ BLITZ 1 - Shredder Frag Grenade +]--	27.03.2026
	["loc_talent_veteran_grenade_apply_bleed_desc"] = { -- stacks: 6, talent_name: Frag Grenade, +colors
		en = "Throw a "..CKWord("Frag Grenade", "Frag_gren_rgb").." that explodes after "..CNumb("1.7", "n_1_7_rgb").." seconds. Applies {stacks:%s} Stacks of "..CKWord("Bleed", "Bleed_rgb").." to all Enemies Hit, causing "..CKWord("Damage", "Damage_rgb").." over time.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb")..": ["..CNumb("500", "n_500_rgb").."-"..CNumb("200", "n_200_rgb").."].\n"
			.."\n"
			..Dot_green.." Deals high "..CKWord("Stagger", "Stagger_rgb").." against all enemies including Monstrosities.\n"
			..Dot_nc.." Max explosion radius: "..CNumb("10", "n_10_rgb").." meters.\n"
			..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Max "..CKWord("Bleed", "Bleed_rgb").." Stacks.",
			-- ..Dot_nc.." Average armor "..CKWord("Damage", "Damage_rgb")..".\n"
			-- ..Dot_red.." Very low armor "..CKWord("Damage", "Damage_rgb").." vs Carapace.",
		ru = "Вы бросаете "..CKWord("Фраг-гранату", "Frag_gren_rgb_ru")..", которая взрывается после "..CNumb("1.7", "n_1_7_rgb").." секунды. Накладывает {stacks:%s} зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru").." на всех поражённых взрывом врагов, нанося "..CKWord("урон", "uron_rgb_ru").." с течением времени.\n" -- Крошащая фраг-граната -- руоф Фраг-граната крошителя
			..Dot_green.." Это улучшенная версия таланта {talent_name:%s}.\n"
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru")..": ["..CNumb("500", "n_500_rgb").."-"..CNumb("200", "n_200_rgb").."].\n"
			.."\n"
			..Dot_green.." Сильно "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." всех врагов, включая чудовищ.\n"
			..Dot_nc.." Радиус взрыва: "..CNumb("10", "n_10_rgb").." метров.\n"
			..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов "..CKWord("кровотечения", "krovotechenia_rgb_ru")..".",
			-- ..Dot_nc.." Средний "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			-- ..Dot_red.." Слабый "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.",
	},
	--[+ BLITZ 2 - Krak Grenade +]--	27.03.2026
	["loc_talent_ability_krak_grenade_desc"] = { -- +colors
		en = "Throw a grenade that explodes after "..CNumb("1", "n_1_rgb").." second and deals devastating "..CKWord("Damage", "Damage_rgb")..". Sticks to Flak Armoured, Carapace Armoured and Unyielding Enemies.\n"
			.."\n"
			..Dot_green.." Base "..CKWord("Damage", "Damage_rgb")..": ["..CNumb("2400", "n_2400_rgb").."-"..CNumb("500", "n_500_rgb").."].\n"
			.."\n"
			-- ..Dot_green.." Good armor "..CKWord("Damage", "Damage_rgb").." inside epicenter.\n"
			-- ..Dot_green.." Very high armor "..CKWord("Damage", "Damage_rgb").." vs Carapace, Flak, Unyielding inside epicenter.\n"
			..Dot_green.." Deals high "..CKWord("Stagger", "Stagger_rgb").." against all enemies including Monstrosities.\n"
			..Dot_nc.." Max explosion radius: "..CNumb("5", "n_5_rgb").." meters.",
		ru = "Вы бросаете гранату, которая взрывается после "..CNumb("1", "n_1_rgb").." секунды и наносит разрушительный "..CKWord("урон", "uron_rgb_ru")..". Граната примагничивается к панцирной и противоосколочной броне, а также к несгибаемым врагам.\n" -- Крак-граната
			.."\n"
			..Dot_green.." Базовый "..CKWord("урон", "uron_rgb_ru")..": ["..CNumb("2400", "n_2400_rgb").."-"..CNumb("500", "n_500_rgb").."].\n"
			.."\n"
			-- ..Dot_green.." Хороший "..CKWord("урон", "uron_rgb_ru").." по броне в эпицентре.\n"
			-- ..Dot_green.." Очень высокий "..CKWord("урон", "uron_rgb_ru").." по панцирной, противоосколочной броне и несгибаемым врагам в эпицентре.\n"
			..Dot_green.." Сильно "..CKWord("ошеломляет", "oshelomlaet_rgb_ru").." всех врагов, включая чудовищ.\n"
			..Dot_nc.." Радиус взрыва: "..CNumb("5", "n_5_rgb").." метров.",
	},
	--[+ BLITZ 3 - Smoke Grenade +]--	27.03.2026
	["loc_ability_smoke_grenade_description"] = { -- duration: 15, +colors
		en = "Throw a grenade that explodes after "..CNumb("1.5", "n_1_5_rgb").." seconds and creates a lingering Smoke cloud for {duration:%s} seconds. The cloud blocks line of sight for most enemies and reduces the sight range of enemies inside it.\n"
			.."\n"
			..Dot_nc.." Smoke cloud effect radius: "..CNumb("5.5", "n_5_5_rgb").." meters.\n"
			..Dot_red.." Has no effect on Bombers, Mutants, and Poxbursters.",
		ru = "Вы бросаете гранату, которая взрывается через "..CNumb("1.5", "n_1_5_rgb").." секунды и создаёт облако дыма на {duration:%s} секунд. Дым блокирует линию обзора большинства врагов и снижает расстояние обзора врагов внутри него.\n" -- Дымовая граната
			.."\n"
			..Dot_nc.." Радиус облака дыма: "..CNumb("5.5", "n_5_5_rgb").." метра.\n"
			..Dot_red.." Не действует на гренадёров, мутантов и взрывников.",
	},
--[+ +AURA - АУРА+ +]--
	--[+ AURA 0 - Scavenger +]--	27.03.2026
	["loc_talent_veteran_elite_kills_grant_ammo_coop_cd_desc"] = { -- ammo: 0.75%, cooldown: 5
		en = Dot_green.." {ammo:%s} Ammo replenishes for you and Allies in "..CKWord("Coherency", "Coherency_rgb").." whenever any of you Kill an Elite or Specialist Enemy. This can occur once every {cooldown:%s} seconds.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		ru = Dot_green.." {ammo:%s} боеприпасов пополняется для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..", когда кто-либо из вас убивает элитного врага или специалиста. Срабатывает раз в {cooldown:%s} секунд.\n" -- Сборщик -- руоф Собиратель
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
	},
	--[+ AURA 1 - Survivalist +]--	27.03.2026
	["loc_talent_veteran_elite_kills_grant_ammo_coop_improved_cd_desc"] = { -- ammo_2: 1%, cooldown: 5, talent_name: Scavenger
		en = Dot_green.." {ammo_2:%s} Ammo replenishes for you and Allies in "..CKWord("Coherency", "Coherency_rgb").." whenever any of you Kill an Elite or Specialist Enemy. This can occur once every {cooldown:%s} seconds.\n"
			..Dot_green.." This is an augmented version of {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		ru = Dot_green.." {ammo_2:%s} боеприпасов пополняется для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..", когда кто-либо из вас убивает элитного врага или специалиста. Срабатывает раз в {cooldown:%s} секунд.\n" -- Выживальщик -- руоф Специалист по выживанию
			..Dot_green.." Это улучшенная версия ауры {talent_name:%s}.\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
	},
	--[+ AURA 2 - Fire Team +]--	27.03.2026
	["loc_talent_veteran_damage_coherency_desc"] = { -- damage: +7.5%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." for you and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Огневая группа
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
	},
	--[+ AURA 3 - Close and Kill +]--	27.03.2026
	["loc_talent_veteran_movement_speed_coherency_desc"] = { -- movement_speed: +5%
		en = Dot_green.." {movement_speed:%s} Movement Speed for your and Allies in "..CKWord("Coherency", "Coherency_rgb")..".\n"
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
		ru = Dot_green.." {movement_speed:%s} к скорости движения для вас и союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Приблизиться и убить
			.."\n"
			..CPhrs("Doesnt_Stack_Vet_Aura"),
	},
--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ ABILITY 0 - Volley Fire +]--	27.03.2026
	["loc_ability_veteran_base_ability_desc"] = { -- duration: 6, damage: +25%, weakspot_damage: +25%, cooldown: 30, &->and, s->seconds, +colors
		en = "You enter "..CKWord("Ranged Stance", "Rangd_stnc_rgb").." for {duration:%s} seconds, instantly equip your Ranged weapon and gain:\n"
			..Dot_green.." {damage:%s} Ranged "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {weakspot_damage:%s} Ranged "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("50%", "pc_50_rgb").." Ranged "..CKWord("Stagger", "Stagger_rgb").." strength,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." Weapon Sway,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." Spread,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." Recoil,\n"
			..Dot_green.." Suppression Immunity.\n"
			.."\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_green.." Killing an outlined enemy refreshes "..CKWord("Ranged Stance", "Rangd_stnc_rgb").."'s active duration by {duration:%s} seconds.",
		ru = "Вы входите в "..CKWord("Стойку дальнего боя", "Rangd_stnc_rgb_ru").." на {duration:%s} секунд, мгновенно экипируете своё оружие дальнего боя и улучшаете навык его владения, получая:\n" -- Залповый огонь
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("50%", "pc_50_rgb").." к силе "..CKWord("ошеломления", "oshelomlenia_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." к раскачиванию,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." к разбросу,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." к отдаче, а также\n"
			..Dot_green.." иммунитет к подавлению.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n", -- ..Dot_green.." Убийство отмеченного врага обновляет длительность стойки на {duration:%s} секунд.",
	},
	--[+ ABILITY 1 - Executioner's Stance +]--	27.03.2026
	["loc_talent_veteran_ranged_stance_toughness_description"] = { -- duration: 5, damage: +25%, weakspot_damage: +25%, toughness: 10%, refresh_duration: 5, cooldown: 30, old_talent_name: Volley Fire, s->seconds, +colors
		en = "You enter "..CKWord("Ranged Stance", "Rangd_stnc_rgb").." for {duration:%s} seconds, instantly equip your Ranged weapon and gain:\n"
			..Dot_green.." {damage:%s} Ranged "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {weakspot_damage:%s} Ranged "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("100%", "pc_100_rgb").." Ranged "..CKWord("Stagger", "Stagger_rgb").." strength,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." Weapon Sway,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." Spread,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." Recoil,\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenishes per second,\n"
			..Dot_green.." Suppression Immunity.\n"
			.."\n"
			..Dot_green.." This is an augmented version of {old_talent_name:%s}.\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Human-sized Elite and Specialist Enemies within "..CNumb("50", "n_50_rgb").." meters of the "..CKWord("Veteran", "cls_vet_rgb").." are highlighted for {duration:%s} seconds.\n"
			..Dot_nc.." Killing an outlined enemy refreshes "..CKWord("Ranged Stance", "Rangd_stnc_rgb").."'s active duration by {refresh_duration:%s} seconds. This also refreshes the duration of outlines on enemies for "..CKWord("Veteran", "cls_vet_rgb")..".\n"
			..Dot_red.." Outlines are only visible to "..CKWord("Veteran", "cls_vet_rgb")..".",
		ru = "Вы входите в "..CKWord("Стойку дальнего боя", "Rangd_stnc_rgb_ru").." на {duration:%s} секунд, мгновенно экипируете своё оружие дальнего боя и улучшаете навык его владения, получая:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n" -- Стойка палача
			..Dot_green.." {weakspot_damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("100%", "pc_100_rgb").." к силе "..CKWord("ошеломления", "oshelomlenia_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("60%", "pc_60_rgb").." к раскачиванию оружия,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("38%", "pc_38_rgb").." к разбросу,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("24%", "pc_24_rgb").." к отдаче,\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается в секунду,\n"
			..Dot_green.." Иммунитет к подавлению.\n"
			.."\n"
			..Dot_green.." Это улучшенная версия способности {old_talent_name:%s}.\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Элитные враги человеческого роста и специалисты в пределах "..CNumb("50", "n_50_rgb").." метров от "..CKWord("Ветерана", "cls_veta_rgb_ru").." подсвечиваются на {duration:%s} секунд.\n"
			..Dot_nc.." Убийство отмеченного врага обновляет длительность стойки на {refresh_duration:%s} секунд. Это также обновляет длительность отметки на врагах для "..CKWord("Ветерана", "cls_veta_rgb_ru")..".\n"
			..Dot_red.." Отметка видна только "..CKWord("Ветерану", "cls_vetu_rgb_ru")..".",
	},
	--[+ ABILITY 1-1 - Enhanced Target Priority +]--	27.03.2026
	["loc_talent_veteran_combat_ability_coherency_outlines_description"] = { -- talent_name: Executioner's Stance, duration: 5, &->and, s->seconds
		en = Dot_green.." {talent_name:%s} now outlines all Specials and human-sized Elites for Allies in "..CKWord("Coherency", "Coherency_rgb").." for {duration:%s} seconds.",
		ru = Dot_green.." {talent_name:%s} теперь также отмечает всех элитных врагов человеческого роста и специалистов для ваших союзников в "..CKWord("сплочённости", "splochennosti_rgb_ru").." на {duration:%s} секунд.", -- Повышенный приоритет целей -- руоф Повышенный приоритет цели
	},
	--[+ ABILITY 1-2 - Counter-Fire +]--	27.03.2026
	["loc_talent_veteran_combat_ability_ranged_enemies_outlines_description"] = { -- talent_name: Executioner's Stance
		en = Dot_green.." {talent_name:%s} now outlines Scab/Dreg Stalkers and Scab Shooters, additionally to all human-sized Elites and Specials.",
		ru = Dot_green.." {talent_name:%s} теперь также отмечает и других дальнобойных врагов: скабов-охотников, дрегов-охотников и скабов-стрелков, в дополнение к элитным врагам человеческого роста и специалистам.", -- Ответный огонь
	},
	--[+ ABILITY 1-3 - The Bigger they Are... +]--	27.03.2026
	["loc_talent_veteran_combat_ability_ogryn_outlines_damage_description"] = { -- talent_name: Executioner's Stance, duration: 8
		en = Dot_green.." {talent_name:%s} now outlines Bulwarks, Crushers and Reapers, Captains, and Monstrosity Enemies, additionally to all human-sized Elites and Specials.\n"
			.."\n"
			..Dot_green.." Duration increased to {duration:%s} seconds.",
		ru = Dot_green.." {talent_name:%s} теперь также отмечает бастионов, крушителей, жнецов, капитанов и чудовищ, в дополнение к элитным врагам человеческого роста и специалистам.\n" -- Чем больше шкаф...
			.."\n"
			..Dot_green.." Длительность увеличена до {duration:%s} секунд.",
	},
	--[+ ABILITY 1-4 - Marksman +]--	27.03.2026
	["loc_talent_veteran_ability_marksman_desc"] = { -- duration: 10, power: +20%, talent_name: Infiltrate, s->seconds, +colors
		en = "{power:%s} "..CKWord("Strength", "Strength_rgb").." to "..CKWord("Weakspot Hits", "Weakspothits_rgb").." for {duration:%s} seconds on "..CKWord("Combat Ability", "Cmbt_abil_rgb").." use.\n"
			.."\n"
			..Dot_nc.." When using {talent_name:%s}, this is applied after leaving "..CKWord("Stealth", "Stealth_rgb")..".\n"
			.."\n"
			..CNote("Pwr_note"),
		ru = "{power:%s} к "..CKWord("силе", "sile_rgb_ru").." атак в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." на {duration:%s} секунд при активации "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".\n" -- Меткий стрелок
			.."\n"
			..Dot_nc.." При использовании способности {talent_name:%s}, этот талант начинает действовать только после выхода из "..CKWord("Скрытности", "Stealth_rgb_ru")..".\n"
			.."\n"
			..CNote("Pwr_note"),
	},
	--[+ ABILITY 2 - Voice of Command +]--	27.03.2026
	["loc_talent_veteran_combat_ability_stagger_nearby_enemies_description"] = { -- range: 9, cooldown: 30, &->and, m->meters, s->seconds, +colors
		en = Dot_green.." "..CNumb("100%", "pc_100_rgb").." "..CKWord("Toughness", "Toughness_rgb").." restored on activation.\n"
			..Dot_green.." "..CKWord("Staggers", "Staggers_rgb").." all Enemies within {range:%s} meters.\n"
			..Dot_nc.." Base Cooldown {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." Holding the ability button shows shout range. Cancel by blocking.\n"
			..Dot_red.." Cannot "..CKWord("Stagger", "Stagger_rgb").." already "..CKWord("Staggered", "Staggered_rgb").." enemies and enemies with an active Void shield.\n",
		ru = Dot_green.." "..CNumb("100%", "pc_100_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при активации.\n" -- Командный голос
			..Dot_green.." "..CKWord("Ошеломляет", "Oshelomlaet_rgb_ru").." всех врагов в радиусе {range:%s} метров.\n"
			..Dot_nc.." Восстановливается {cooldown:%s} секунд.\n"
			.."\n"
			..Dot_nc.." Удерживание кнопки активации способности показывает радиус действия. Отменяется блоком.\n"
			..Dot_red.." Не может "..CKWord("ошеломить", "oshelomit_rgb_ru").." уже "..CKWord("ошеломлённых", "oshelomlennyh_rgb_ru").." врагов и врагов с активным пустотным щитом.\n",
	},
	--[+ ABILITY 2-1 - Duty and Honour +]--	27.03.2026
	["loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency_description"] = { -- talent_name: Voice of Command, toughness: +50, duration: 10, s->seconds, +colors
		en = "{talent_name:%s} now also grants to you and Allies in "..CKWord("Coherency", "Coherency_rgb")..":\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." for {duration:%s} seconds.\n"
			.."\n"
			..Dot_green.." Can be replenished by Melee kills, respective Talents, and Weapon Blessings.\n"
			..Dot_nc.." It acts as a 'second' "..CKWord("Toughness", "Toughness_rgb").." bar.\n"
			..Dot_nc.." This can exceed your Maximum "..CKWord("Toughness", "Toughness_rgb")..".",
		ru = "{talent_name:%s} теперь также даёт вам и союзникам в "..CKWord("сплочённости", "splochennosti_rgb_ru")..":\n" -- Долг и честь
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." на {duration:%s} секунд.\n"
			.."\n"
			..Dot_green.." Эта "..CKWord("стойкость", "stoikost_rgb_ru").." может быть восстанавлена убийствами в ближнем бою, соответствующими талантами и благословениями оружия.\n"
			..Dot_nc.." Действует как дополнительная полоска "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			..Dot_nc.." Может превысить ваш максимальный уровень "..CKWord("стойкости", "stoikosti_rgb_ru")..".",
	},
	--[+ ABILITY 2-2 - Only In Death Does Duty End +]--	27.03.2026
	["loc_talent_veteran_combat_ability_revives_new_description"] = { -- talent_name: Voice of Command, +colors
		en = Dot_green.." {talent_name:%s} revives Knocked Down Allies within its radius.",
		ru = Dot_green.." {talent_name:%s} поднимает сбитых с ног союзников в радиусе действия.", -- Лишь со смертью заканчивается долг -- руоф Лишь после смерти заканчивается служение долгу
	},
	--[+ ABILITY 3 - Infiltrate +]--	27.03.2026
	["loc_talent_veteran_invisibility_on_combat_ability_damage_desc"] = { -- duration: 8, movement_speed: +25%, damage_duration: 5, damage: +30%, cooldown: 45, s->seconds, +colors
		en = "You enter "..CKWord("Stealth", "Stealth_rgb").." for {duration:%s} seconds and gain:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {movement_speed:%s} Movement Speed,\n"
			..Dot_green.." Full "..CKWord("Toughness", "Toughness_rgb").." Restoration.\n"
			.."\n"
			..Dot_nc.." Base Cooldown: {cooldown:%s} seconds.\n"
			..Dot_green.." The "..CKWord("Damage", "Damage_rgb").." bonus lingers for an additional {damage_duration:%s} seconds after "..CKWord("Stealth", "Stealth_rgb").." ends.\n"
			..Dot_green.." Exiting "..CKWord("Stealth", "Stealth_rgb").." Suppresses nearby Enemies.\n"
			..Dot_red.." Attacking ends "..CKWord("Stealth", "Stealth_rgb")..".",
		ru = "Вы входите в режим "..CKWord("Скрытности", "Stealth_rgb_ru").." на {duration:%s} секунд и получаете:\n" -- Проникновение
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {movement_speed:%s} к скорости движения и\n"
			..Dot_green.." полное восстановление "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			.."\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунд.\n"
			..Dot_green.." Бонус к "..CKWord("урону", "uronu_rgb_ru").." продлевается на {damage_duration:%s} секунд после окончания действия "..CKWord("Скрытности", "Stealth_rgb_ru")..".\n"
			..Dot_green.." Выход из "..CKWord("Скрытности", "Stealth_rgb_ru").." подавляет ближайших врагов.\n"
			..Dot_red.." Любые атаки заставляют вас выйти из "..CKWord("Скрытности", "Stealth_rgb_ru")..".",
	},
	--[+ ABILITY 3-1 - Overwatch +]--	27.03.2026
	["loc_talent_veteran_combat_ability_extra_charge_description"] = { -- charges: +1, ability_cooldown: +33%
		en = Dot_green.." {charges:%s} "..CKWord("Combat Ability", "Cmbt_abil_rgb").." charge.\n"
			..Dot_red.." {ability_cooldown:%s} "..CKWord("Cooldown", "Cd_rgb")..".\n"
			.."\n"
			..Dot_nc.." The "..CKWord("Cooldown", "Cd_rgb").." of the Second charge only starts after the First charge finished its "..CKWord("Cooldown", "Cd_rgb")..".",
		ru = Dot_green.." {charges:%s} заряд "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".\n" -- Наблюдение -- руоф Прикрытие
			..Dot_red.." {ability_cooldown:%s} к времени восстановления.\n"
			.."\n"
			..Dot_nc.." Восстановление второго заряда начинается только после завершения восстановления первого заряда.",
	},
	--[+ ABILITY 3-2 - Hunter's Resolve +]--	27.03.2026
	["loc_talent_veteran_toughness_bonus_leaving_invisibility_desc"] = { -- talent_name: Infiltrate, tdr: +50%, duration: 10, s->seconds, +colors
		en = Dot_green.." {tdr:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." for {duration:%s} seconds upon leaving "..CKWord("Stealth", "Stealth_rgb")..".",
		ru = Dot_green.." {tdr:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." на {duration:%s} секунд после выхода из "..CKWord("Скрытности", "Stealth_rgb_ru")..".", -- Упорство охотника
	},
	--[+ ABILITY 3-3 - Low Profile +]--	27.03.2026
	["loc_talent_veteran_reduced_threat_after_stealth_desc"] = { -- threat_multiplier: -90%, duration: 10, s->seconds, +colors
		en = Dot_green.." {threat_multiplier:%s} Threat for {duration:%s} seconds on leaving "..CKWord("Stealth", "Stealth_rgb")..".\n"
			..Dot_nc.." Less likely to be targeted by enemies.",
		ru = Dot_green.." {threat_multiplier:%s} к угрозе на {duration:%s} секунд после выхода из "..CKWord("Скрытности", "Stealth_rgb_ru")..".\n"
			..Dot_nc.." Враги реже атакуют вас.", -- Незаметность -- руоф Сдержанность
	},
	--[+ ABILITY 3-4 - Close Quarters Killzone +]--	27.03.2026
	["loc_talent_veteran_ability_assault_desc"] = { -- power: +15%, duration: 10, talent_name: Infiltrate, s->seconds, +colors
		en = Dot_green.." {power:%s} "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds to enemies within "..CNumb("12.5", "n_12_5_rgb").." meters on "..CKWord("Combat Ability", "Cmbt_abil_rgb").." use.\n"
			.."Beyond "..CNumb("12.5", "n_12_5_rgb").." meters, the "..CKWord("Damage", "Damage_rgb").." buff decreases linearly until it loses its effect at "..CNumb("30", "n_30_rgb").." meters:\n"
			.."_______________________________\n"
			.."Distance ("..CNumb("m", "n_meter_rgb")..")   "..CNumb("1", "n_1_rgb").." | "..CNumb("12.5", "n_12_5_rgb").." |   "..CNumb("15", "n_15_rgb").." | "..CNumb("20", "n_20_rgb").." | "..CNumb("25", "n_25_rgb").." | "..CNumb("30", "n_30_rgb").."\n"
			..CKWord("Damage", "Damage_rgb").." ("..CNumb("%", "pc_rgb").."): "..CNumb("15", "n_15_rgb").." |    "..CNumb("15", "n_15_rgb").." | "..CKWord("~13", "n__13_rgb").." |  "..CKWord("~9", "n__9_rgb").." | "..CKWord("~4", "n__4_rgb").." |   "..CNumb("0", "n_0_rgb").."\n"
			.."_______________________________\n"
			..Dot_green.." This also increases the "..CKWord("Damage", "Damage_rgb").." of explosions and DoTs as long as Veteran stays within "..CNumb("30", "n_30_rgb").." meters to the enemy.\n"
			.."\n"
			..Dot_nc.." When using {talent_name:%s}, this begins on leaving "..CKWord("Stealth", "Stealth_rgb")..".",
		ru = Dot_green.." {power:%s} к "..CKWord("урону", "uronu_rgb_ru").." на расстоянии до "..CNumb("12.5", "n_12_5_rgb").." метров на {duration:%s} секунд после применения "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru")..".\n" -- Зона ближнего боя -- руоф Зона поражения на ближней дистанции
			.."\n"
			.."За пределами "..CNumb("12.5", "n_12_5_rgb").." метров, "..CKWord("урон", "uron_rgb_ru").." уменьшается линейно, пока не теряет свой эффект на "..CNumb("30", "n_30_rgb").." метрах:\n"
			.."_______________________________\n"
			.."Дистанция:   "..CNumb("1", "n_1_rgb").." | "..CNumb("12.5", "n_12_5_rgb").." |   "..CNumb("15", "n_15_rgb").." |  "..CNumb("20", "n_20_rgb").." | "..CNumb("25", "n_25_rgb").." | "..CNumb("30", "n_30_rgb").."\n"
			..CKWord("Урон", "Uron_rgb_ru").." ("..CNumb("%", "pc_rgb").."):     "..CNumb("15", "n_15_rgb").." |     "..CNumb("15", "n_15_rgb").." | "..CKWord("~13", "n__13_rgb").." |  "..CKWord("~9", "n__9_rgb").." | "..CKWord("~4", "n__4_rgb").." |   "..CNumb("0", "n_0_rgb").."\n"
			.."_______________________________\n"
			..Dot_green.." Это также увеличивает "..CKWord("урон", "uron_rgb_ru").." от взрывов и количество "..CKWord("урона", "urona_rgb_ru").." со временем, пока "..CKWord("Ветеран", "cls_vet_rgb_ru").." находится в пределах "..CNumb("30", "n_30_rgb").." метров от врага.\n"
			.."\n"
			..Dot_nc.." При использовании способности {talent_name:%s}, этот талант начинает действовать только после выхода из "..CKWord("Скрытности", "Stealth_rgb_ru")..".",
	},
--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ KEYSTONE 1 - Marksman's Focus +]--	27.03.2026
	["loc_talent_veteran_snipers_focus_duration_desc"] = { -- stacks: 3, max_stacks: 10, duration: 5, power: +7.5%, reload_speed: +1%, stack(s)->stacks, s->second/seconds, +colors, +note
		en = "Ranged "..CKWord("Weakspot", "Weakspot_rgb").." kills grant {stacks:%s} Stacks of "..CKWord("Focus", "Focus_rgb")..".\n"
			.."\n"
			..CPhrs("Can_proc_mult")
			..Dot_nc.." Up to {max_stacks} Max Stacks.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Stacks are refreshed on "..CKWord("Weakspot Hit", "Weakspothit_rgb")..". and decay one at a time.\n"
			.."\n"
			.."Each Stack of "..CKWord("Focus", "Focus_rgb").." grants:\n"
			..Dot_green.." {power:%s} Ranged "..CKWord("Finesse", "Finesse_rgb").." strength,\n"
			..Dot_green.." {reload_speed:%s} Reload Speed.\n"
			.."\n"
			..CNote("Fns_note"),
		ru = "Убийства выстрелами в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." дают {stacks:%s} заряда "..CKWord("Концентрации", "Focus_rgb_ru")..".\n" -- Концентрация снайпера
			.."\n"
			..CPhrs("Can_proc_mult_str")
			..Dot_nc.." Максимум {max_stacks} зарядов.\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			..Dot_nc.." Заряды обновляются при попадании в "..CKWord("уязвимое место", "ujazvimoe_mesto_rgb_ru").." и сбрасываются по одному.\n"
			.."\n"
			.."Каждый заряд "..CKWord("Концентрации", "Focus_rgb_ru").." даёт:\n"
			..Dot_green.." {reload_speed:%s} к скорости перезарядки,\n"
			..Dot_green.." {power:%s} к усилению "..CKWord("ловкости", "lovkosti_rgb_ru").." для дальнобойных атак.\n"
			.."\n"
			..CNote("Fns_note"),
	},
	--[+ KEYSTONE 1-1 - Chink in their Armour +]--	27.03.2026
	["loc_talent_veteran_snipers_focus_rending_bonus_description"] = { -- rending: +10%, stacks: 10, +colors, +note
		en = Dot_green.." {rending:%s} "..CKWord("Rending", "Rending_rgb").." when at, or over, {stacks:%s} Stacks of "..CKWord("Focus", "Focus_rgb")..".\n"
			.."\n"
			..CNote("Rend_note"),
		ru = Dot_green.." {rending:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони, когда у вас {stacks:%s} или более зарядов "..CKWord("Концентрации", "Focus_rgb_ru")..".\n" -- Щель в их броне -- руоф Щель в броне
			.."\n"
			..CNote("Rend_note"),
	},
	--[+ KEYSTONE 1-2 - Tunnel Vision +]--	27.03.2026
	["loc_talent_veteran_snipers_focus_stamina_bonus_desc"] = { -- toughness_replenish_multiplier: +5%, stamina: 10%, +colors
		en = Dot_green.." {toughness_replenish_multiplier:%s} "..CKWord("Toughness", "Toughness_rgb").." Replenishment per "..CKWord("Focus", "Focus_rgb").." Stack.\n"
			..CPhrs("Dont_intw_coher_toughn").."\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb").." restored on Ranged "..CKWord("Weakspot", "Weakspot_rgb").." kills.\n"
			..CPhrs("Can_proc_mult"),
		ru = Dot_green.." {toughness_replenish_multiplier:%s} к восстановлению "..CKWord("стойкости", "stoikosti_rgb_ru").." за каждый заряд "..CKWord("Концентрации", "Focus_rgb_ru")..".\n" -- Тоннельное зрение
			..CPhrs("Dont_intw_coher_toughn_ru").."\n"
			.."\n"
			..Dot_green.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru").." восстанавливается при убийствах в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." дальнобойными атаками.\n"
			..CPhrs("Can_proc_mult"),
	},
	--[+ KEYSTONE 1-3 - Long Range Assassin +]--	27.03.2026
	["loc_talent_veteran_snipers_focus_increased_stacks_description"] = { -- stacks: 10, new_stacks: 15, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." Maximum "..CKWord("Focus", "Focus_rgb").." Stacks. Increases from {stacks:%s} to {new_stacks:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("5", "n_5_rgb").." к максимуму зарядов "..CKWord("Концентрации", "Focus_rgb_ru")..". Увеличивается с {stacks:%s} до {new_stacks:%s}.", -- Дальнобойный ассасин
	},
	--[+ KEYSTONE 2 - Focus Target! +]--	27.03.2026
	["loc_talent_veteran_improved_tag_description"] = { -- time: 1.5, max_stacks: 5, damage: +5%, s->seconds, +colors
		en = "Gain "..CNumb("1", "n_1_rgb").." Stack of "..CKWord("Focus Target", "Focus_Target_rgb").." every {time:%s} seconds.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			.."Tagging an Enemy applies all "..CKWord("Focus Target", "Focus_Target_rgb").." Stacks to them and resets your Stacks to "..CNumb("1", "n_1_rgb")..".\n"
			..Dot_nc.." Enemies tagged with this Talent are highlighted Yellow.\n"
			.."\n"
			.."Per Stack, enemy takes:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..", up to "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb").." "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Lasts "..CNumb("25", "n_25_rgb").." seconds.",
		ru = "Вы получаете "..CNumb("1", "n_1_rgb").." заряд "..CKWord("Важной цели", "Focus_Target_rgb_ru").." каждые {time:%s} секунды.\n" -- Важная цель!
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			.."\n"
			.."Отметка врага применяет все заряды "..CKWord("Важной цели", "Focus_Target_rgb_ru").." к нему и сбрасывает ваши заряды до "..CNumb("1", "n_1_rgb")..".\n"
			..Dot_nc.." Враги, отмеченные этим талантом, подсвечиваются жёлтым цветом.\n"
			.."\n"
			.."За каждый заряд враг получает:\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..", до "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb")..".\n"
			..Dot_nc.." Длится "..CNumb("25", "n_25_rgb").." секунд.",
	},
	--[+ KEYSTONE 2-1 - Target Down! +]--	27.03.2026
	["loc_talent_veteran_improved_tag_dead_bonus_description"] = { -- toughness: 5%, stamina: 5%, +colors
		en = "When an enemy tagged with "..CKWord("Focus Target", "Focus_Target_rgb").." dies, you and Allies in "..CKWord("Coherency", "Coherency_rgb").." restore per Stack:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." and\n"
			..Dot_green.." {stamina:%s} "..CKWord("Stamina", "Stamina_rgb")..".",
		ru = "Когда враг, отмеченный как "..CKWord("Важная цель", "Focus_Targt_rgb_ru")..", умирает, вы и союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." восстанавливаете за каждый заряд:\n" -- Цель поражена!
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." и\n"
			..Dot_green.." {stamina:%s} "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".",
	},
	--[+ KEYSTONE 2-2 - Redirect Fire! +]--	27.03.2026
	["loc_talent_veteran_improved_tag_dead_coherency_bonus_description"] = { -- damage: +2.5%, duration: 10, s->seconds, +colors
		en = "When an enemy tagged with "..CKWord("Focus Target", "Focus_Target_rgb").." dies, you and Allies in "..CKWord("Coherency", "Coherency_rgb").." gain per Stack:\n"
			..Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = "Когда враг, отмеченный как "..CKWord("Важная цель", "Focus_Targt_rgb_ru")..", умирает, вы и союзники в "..CKWord("сплочённости", "splochennosti_rgb_ru").." получаете за каждый заряд:\n" -- Перевести огонь!
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.",
	},
	--[+ KEYSTONE 2-3 - Focused Fire +]--	27.03.2026
	["loc_talent_veteran_improved_tag_more_damage_description"] = { -- max_stacks: 6, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." Maximum "..CKWord("Focus Target", "Focus_Target_rgb").." Stacks. Increases from "..CNumb("4", "n_4_rgb").." to {max_stacks:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("2", "n_2_rgb").." к максимуму зарядов "..CKWord("Важной цели", "Focus_Target_rgb_ru")..". Увеличивается с "..CNumb("4", "n_4_rgb").." до {max_stacks:%s}.", -- Сосредоточенный огонь
	},
	--[+ KEYSTONE 3 - Weapons Specialist +]--	27.03.2026
	["loc_talent_veteran_weapon_switch_new_description"] = { -- ranged_stacks: 10, melee_stacks: 1, ranged_attack_speed: +2%, reload_speed: 2%, ranged_crit_chance: +33%, ranged_duration: 5, melee_attack_speed: +15%, dodge_modifier: 10%, melee_duration: 10, s->seconds, +colors
		en = "Gain "..CKWord("Ranged Specialist", "Rangedspec_rgb").." on Melee kills.\n"
			..Dot_nc.." Stacks {ranged_stacks:%s} times.\n"
			.."\n"
			.."Gain "..CKWord("Melee Specialist", "Meleespec_rgb").." on Ranged kill.\n"
			..Dot_nc.." Stacks {melee_stacks:%s} times.\n"
			.."\n"
			.."When you wield your Ranged weapon, you activate your "..CKWord("Ranged Specialist", "Rangedspec_rgb").." effect, to gain per Stack:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} Reload Speed, up to "..CNumb("20%", "pc_20_rgb")..",\n"
			..Dot_green.." {ranged_attack_speed:%s} Ranged Attack Speed, up to "..CNumb("20%", "pc_20_rgb")..",\n"
			..Dot_green.." {ranged_crit_chance:%s} Ranged "..CKWord("Critical Hit", "Crit_hit_rgb").." Chance on your next shot. Guaranteed "..CKWord("Crit", "Crit_rgb").." at "..CNumb("3", "n_3_rgb").." Stacks.\n"
			..Dot_nc.." Lasts {ranged_duration:%s} seconds.\n"
			.."\n"
			.."When you wield your Melee weapon, you activate your "..CKWord("Melee Specialist", "Meleespec_rgb").." effect, to gain:\n"
			..Dot_green.." {melee_attack_speed:%s} Melee Attack Speed,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} Dodge Speed,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} Dodge Distance.\n"
			..Dot_nc.." Lasts {melee_duration:%s} seconds.",
		ru = "Вы получаете заряды "..CKWord("Специалиста-стрелка", "Rangedspec_rgb_ru").." за убийства в ближнем бою.\n" -- Специалист по оружию -- руоф Специалист по вооружениям
			..Dot_nc.." Суммируется до {ranged_stacks:%s} раз.\n"
			.."\n"
			.."Вы получаете заряд "..CKWord("Специалиста-рукопашника", "Meleespec_rgb_ru").." за убийство в дальнем бою.\n"
			..Dot_nc.." Суммируется {melee_stacks:%s} раз.\n"
			.."\n"
			.."Когда вы берёте в руки оружие дальнего боя, вы активируете эффект "..CKWord("Специалиста-стрелка", "Rangedspec_rgb_ru").." и получаете за каждый заряд:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{reload_speed:%s} к скорости перезарядки, до максимум "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb")..",\n"
			..Dot_green.." {ranged_attack_speed:%s} к скорострельности, до максимум "..CNumb("+", "n_plus_rgb")..CNumb("20%", "pc_20_rgb")..",\n"
			..Dot_green.." {ranged_crit_chance:%s} к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." для вашего следующего выстрела. Гарантированный "..CKWord("критический выстрел", "krit_vystrel_rgb_ru").." при "..CNumb("3", "n_3_rgb").." зарядах.\n"
			..Dot_nc.." Длится {ranged_duration:%s} секунд.\n"
			.."\n"
			.."Когда вы берёте в руки оружие ближнего боя, вы активируете эффект "..CKWord("Специалиста-рукопашника", "Meleespec_rgb_ru").." и получаете:\n"
			..Dot_green.." {melee_attack_speed:%s} к скорости атаки,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} к скорости уклонений,\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{dodge_modifier:%s} к дистанции уклонений.\n"
			..Dot_nc.." Длится {melee_duration:%s} секунд.",
	},
	--[+ KEYSTONE 3-1 - Always Prepared +]--	27.03.2026
	["loc_talent_veteran_weapon_switch_replenish_ammo_description"] = { -- ammo: 3.3%, +colors
		en = "On activation, "..CKWord("Ranged Specialist", "Rangedspec_rgb").." restores from Reserves per Stack:\n"
			..Dot_green.." {ammo:%s} of your missing Clip ammo, up to "..CNumb("33%", "pc_33_rgb")..".\n"
			..Dot_nc.." Rounded up.",
		ru = "При активации "..CKWord("Специалиста-стрелка", "Rangedspec_rgb_ru").." вы заряжаете в ваш магазин из резерва за каждый заряд:\n" -- Всегда готов
			..Dot_green.." {ammo:%s} недостающих патронов, до максимальных "..CNumb("33%", "pc_33_rgb")..".\n"
			..Dot_nc.." Округляется в большую сторону.",
	},
	--[+ KEYSTONE 3-2 - Invigorated +]--	27.03.2026
	["loc_talent_veteran_weapon_switch_replenish_stamina_new_description"] = { -- stamina: 20%, stamina_reduction: 25%, +colors
		en = "On activation, "..CKWord("Melee Specialist", "Meleespec_rgb").." grants you for {duration:%s} seconds:\n"
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{stamina:%s} Maximum "..CKWord("Stamina", "Stamina_rgb")..",\n"
			..Dot_green.." {stamina_reduction:%s} "..CKWord("Stamina", "Stamina_rgb").." Cost Reduction.",
		ru = "При активации "..CKWord("Специалиста-рукопашника", "Meleespec_rgb_ru").." даёт вам на {duration:%s} секунды:\n" -- Ободрение
			..Dot_green.." "..CNumb("+", "n_plus_rgb").."{stamina:%s} к максимуму "..CKWord("выносливости", "vynoslivosti_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{stamina_reduction:%s} от затрат "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".",
	},
	--[+ KEYSTONE 3-3 - On Your Toes +]--	27.03.2026
	["loc_talent_veteran_weapon_switch_replenish_toughness_description"] = { -- toughness: 20%, cooldown: 3, s->seconds, +colors
		en = "Activating "..CKWord("Melee Specialist", "Meleespec_rgb").." or "..CKWord("Ranged Specialist", "Rangedspec_rgb").." replenishes:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..".\n"
			..Dot_nc.." Cooldown: {cooldown:%s} seconds each.",
		ru = "Активация "..CKWord("Специалиста-рукопашника", "Meleespec_rgb_ru").." или "..CKWord("Специалиста-стрелка", "Rangedspec_rgb_ru").." восполняет:\n" -- Наготове
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..".\n"
			..Dot_nc.." Восстанавливается {cooldown:%s} секунды каждый.",
	},
--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Exhilarating Takedown +]--	27.03.2026
	["loc_talent_veteran_toughness_on_weakspot_kill_alt_desc"] = { -- toughness: 15%, toughness_damage_reduction: +10%, duration: 8, stacks: 3, s->seconds, +colors
		en = "On Ranged "..CKWord("Weakspot", "Weakspot_rgb").." Kill, you gain:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..",\n"
			..Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb")..".\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			..CPhrs("Can_proc_mult")
			..CPhrs("Can_be_refr_drop_1"),
		ru = "При убийстве в "..CKWord("уязвимые места", "ujazvimye_mesta_rgb_ru").." из дальнобойного оружия вы получаете на {duration:%s} секунд:\n" -- Подбадривающее убийство -- руоф Бодрящее сокрушение
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru")..",\n"
			..Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru")..".\n"
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			..Dot_nc.." Суммируется {stacks:%s} раза.\n"
			.."\n"
			..CPhrs("Can_proc_mult_str")
			..CPhrs("Can_be_refr_drop_1"),
	},
	--[+ Passive 2 - Confirmed Kill +]--	27.03.2026
	["loc_talent_veteran_toughness_on_elite_kill_desc"] = { -- toughness: 10%, toughness_over_time: 20%, duration: 10, s->seconds, +colors
		en = "On Elite or Specialist Kill:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." restored instantly,\n"
			..Dot_green.." "..CNumb("2%", "pc_2_rgb").." "..CKWord("Toughness", "Toughness_rgb").." per second, up to {toughness_over_time:%s} over {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_proc_mult"),
		ru = "При убийстве элитного врага или специалиста:\n" -- Подтверждённое убийство -- руоф Подтвержденное убийство
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается мгновенно и ещё\n"
			..Dot_green.." "..CNumb("2%", "pc_2_rgb").." "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду, вплоть до {toughness_over_time:%s} в течение {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_proc_mult"),
	},
	--[+ Passive 3 - Out for Blood +]--	27.03.2026
	["loc_talent_veteran_all_kills_replenish_toughness_description"] = { -- toughness: 5%, +colors
		en = Dot_green.." {toughness:%s} of Maximum "..CKWord("Toughness", "Toughness_rgb").." replenished on any Kill.\n"
			.."\n"
			..Dot_green.." Procs on Melee and Ranged kills as well as on kills from explosions and DoTs.",
		ru = Dot_green.." {toughness:%s} максимальной "..CKWord("стойкости", "stoikosti_rgb_ru").." восстанавливается при любом убийстве.\n" -- На тропе войны -- руоф В поисках крови
			.."\n"
			..Dot_green.." Срабатывает при убийствах в ближнем и дальнем бою, а также при убийствах от взрывов и эффектов наносящих урон с течением времени.",
	},
	--[+ Passive 4 - Volley Adept +]--	27.03.2026
	["loc_talent_veteran_reload_speed_on_elite_kill_desc"] = { -- reload_speed: +30%, &->and
		en = Dot_green.." {reload_speed:%s} Reload Speed on Elite and Specialist Enemy Kill.\n"
			.."\n"
			..Dot_nc.." Consumed on Reload.\n"
			..Dot_nc.." This also increases the speed of the loading special action of Combat Shotguns.",
		ru = Dot_green.." {reload_speed:%s} к скорости перезарядки при убийстве элитных врагов или специалистов.\n" -- Умелый залп -- руоф Адепт залпа
			.."\n"
			..Dot_nc.." Расходуется при перезарядке.\n"
			..Dot_nc.." Этот талант также увеличивает скорость перезарядки специальных патронов для боевых дробовиков.",
	},
	--[+ Passive 5 - Longshot +]--	27.03.2026
	["loc_talent_veteran_increased_damage_based_on_range_new_desc"] = { -- ranged_damage: +20%, ranged_close: 12.5, max_ranged_damage: +25%, ranged_far: 30, +colors
		en = Dot_green.." {ranged_damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." at a distance within {ranged_close:%s} meters.\n"
			.."\n"
			.."Against targets beyond {ranged_close:%s} meters, Ranged "..CKWord("Damage", "Damage_rgb").." increases linearly up to {max_ranged_damage:%s} at {ranged_far:%s} meters:\n"
			.."_______________________________\n"
			.."Distance ("..CNumb("m", "n_meter_rgb").."):   "..CNumb("1", "n_1_rgb").."| {ranged_close:%s}|   "..CNumb("15", "n_15_rgb").."|  "..CNumb("20", "n_20_rgb").."|   "..CNumb("25", "n_25_rgb").."| "..CNumb("30", "n_30_rgb")..CNumb("+", "n_plus_rgb").."\n"
			..CKWord("Damage", "Damage_rgb").." ("..CNumb("%", "pc_rgb").."):  "..CNumb("10", "n_10_rgb").."|    "..CNumb("10", "n_10_rgb").."| "..CKWord("~12", "n__12_rgb").."| "..CKWord("~16", "n__16_rgb").."| "..CKWord("~20", "n__20_rgb").."| "..CNumb("25", "n_25_rgb").."\n"
			.."_______________________________\n",
		ru = Dot_green.." {ranged_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." в дальнем бою на расстоянии до {ranged_close:%s} метров.\n" -- Дальнобойный выстрел -- руоф Далекая перспектива
			.."\n"
			.."Против целей за пределами {ranged_close:%s} метров, "..CKWord("урон", "uron_rgb_ru").." в дальнем бою увеличивается линейно до {max_ranged_damage:%s} на {ranged_far:%s} метрах:\n"
			.."_______________________________\n"
			.."Дистанция("..CKWord("м", "n_metr_rgb").."): "..CNumb("1", "n_1_rgb").."| {ranged_close:%s}|  "..CNumb("15", "n_15_rgb").."|   "..CNumb("20", "n_20_rgb").."|  "..CNumb("25", "n_25_rgb").."|  "..CNumb("30", "n_30_rgb")..CNumb("+", "n_plus_rgb").."\n"
			..CKWord("Урон", "Uron_rgb_ru").." ("..CNumb("%", "pc_rgb").."):        "..CNumb("10", "n_10_rgb").."|    "..CNumb("10", "n_10_rgb").."| "..CKWord("~12", "n__12_rgb").."| "..CKWord("~16", "n__16_rgb").."| "..CKWord("~20", "n__20_rgb").."|  "..CNumb("25", "n_25_rgb").."\n"
			.."_______________________________\n",
	},
	--[+ Passive 6 - Covering Fire +]--	27.03.2026
	["loc_talent_veteran_replenish_toughness_and_boost_allies_desc"] = { -- radius: 8, toughness: 15%, base_damage: +15%, duration: 6, &->and s->seconds, +colors
		en = "When you Kill an Enemy with a Ranged Attack, Allies within {radius:%s} meters of the target gain:\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb")..",\n"
			..Dot_green.." {base_damage:%s} to all Base "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
		ru = "Когда вы убиваете врага из оружия дальнего боя, союзники в радиусе {radius:%s} метров от цели получают:\n" -- Прикрывающий огонь -- руоф Прикрытие огнем
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." и\n"
			..Dot_green.." {base_damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд.\n"
			.."\n"
			..CPhrs("Can_be_refr"),
	},
	--[+ Passive 7 - One Motion +]--	27.03.2026
	["loc_talent_veteran_reduce_swap_time_desc"] = { -- swap_speed: +50%
		en = Dot_green.." {swap_speed} Swap Speed.\n"
			.."\n"
			..Dot_nc.." This reduces the time of wielding actions when Swapping item slots (Weapons, Grenades, Stimms, Medpacks, Ammo crates, Books, etc).",
		ru = Dot_green.." {swap_speed} к скорости смены оружия и предметов.\n" -- В одно движение -- руоф Одно движение
			.."\n"
			..Dot_nc.." Этот талант сокращает время затрачиваемое на смену слотов предметов (оружие, гранаты, стимуляторы, медпаки, ящики с боеприпасами, книги и т.д.).",
	},
	--[+ Passive 8 - Tactical Reload +]--	27.03.2026
	["loc_talent_veteran_reload_speed_non_empty_mag_desc"] = { -- reload_speed: +25%
		en = Dot_green.." {reload_speed:%s} Reload Speed if your Weapon contains Ammo.\n"
			.."\n"
			..Dot_nc.." This also increases the speed of the loading special action of Combat Shotguns.",
		ru = Dot_green.." {reload_speed:%s} к скорости перезарядки, если в магазине остались патроны.\n" -- Тактическая перезарядка
			.."\n"
			..Dot_nc.." Этот талант также увеличивает скорость перезарядки специальных патронов для боевых дробовиков.",
	},
	--[+ Passive 9 - Close Order Drill +]--	27.03.2026
	["loc_talent_veteran_toughness_damage_reduction_per_ally_description"] = { -- toughness: +33%, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("11%", "pc_11_rgb").." "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." per Ally in "..CKWord("Coherency", "Coherency_rgb")..". Stacks up to {toughness:%s}.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb")..CNumb("11%", "pc_11_rgb").." к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru").." за каждого союзника в "..CKWord("сплочённости", "splochennosti_rgb_ru")..". Суммируется до {toughness:%s}.", -- Строевая подготовка
	},
	--[+ Passive 10 - Superiority Complex +]--	27.03.2026
	["loc_talent_veteran_increase_damage_vs_elites_desc"] = { -- damage: +15%, +colors
		en = Dot_green.." {damage:%s} Base "..CKWord("Damage", "Damage_rgb").." to Elite Enemies.",
		ru = Dot_green.." {damage:%s} к базовому "..CKWord("урон", "uronu_rgb_ru").." по элитным врагам.", -- Мания величия
	},
	--[+ Passive 11 - Iron Will +]--	27.03.2026
	["loc_talent_veteran_tdr_on_high_toughness_desc"] = { -- toughness_damage_reduction: +50%, toughness_percent: 75%, +colors
		en = Dot_green.." {toughness_damage_reduction:%s} "..CKWord("Toughness Damage Reduction", "Tghns_dmg_red_rgb").." if above {toughness_percent:%s} "..CKWord("Toughness", "Toughness_rgb")..".",
		ru = Dot_green.." {toughness_damage_reduction:%s} к "..CKWord("снижению урона стойкости", "Toughness_dmg_red_u_rgb_ru")..", если ваш уровень "..CKWord("стойкости", "stoikosti_rgb_ru").." выше {toughness_percent:%s}.", -- Железная воля
	},
	--[+ Passive 12 - Trench Fighter Drill +]--	27.03.2026
	["loc_talent_veteran_attack_speed_description"] = { -- melee_attack_speed: +10%
		en = Dot_green.." {melee_attack_speed:%s} Melee Attack Speed.",
		ru = Dot_green.." {melee_attack_speed:%s} к скорости атак ближнего боя.", -- Отработка окопного боя -- руоф Тренировка в окопах
	},
	--[+ Passive 13 - Field Improvisation +]--	27.03.2026
	["loc_talent_veteran_better_deployables_description"] = { -- damage_heal: +100%, toughness: 1%, &->and, +colors
		en = "Medi-Packs provide:\n"
			..Dot_green.." {damage_heal:%s} Healing Speed,\n"
			..Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." per second,\n"
			..Dot_green.." Cleanse "..CKWord("Corruption", "Corruption_rgb").." up to the next "..CKWord("Wound", "Wound_rgb")..".\n"
			.."\n"
			..Dot_green.." Ammo Crates also restore Grenades.",
		ru = "Медпаки дают:\n" -- Полевая импровизация
			..Dot_green.." {damage_heal:%s} к скорости лечения,\n"
			..Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду и\n"
			..Dot_green.." очищают "..CKWord("порчу", "porchu_rgb_ru").." вплоть до следующей "..CKWord("раны", "rany_rgb_ru")..".\n"
			.."\n"
			..Dot_green.." Ящики с боеприпасами также восстанавливают гранаты.",
	},
	--[+ Passive 14 - Withering Fire +]--	27.03.2026
	["loc_talent_veteran_increased_ranged_cleave_desc"] = { -- cleave: 6, +colors
		en = "{cleave:%s} Ranged "..CKWord("Cleave", "Cleave_rgb")..".",
		ru = "{cleave:%s} "..CKWord("прострелу", "prostrelu_rgb_ru").." врагов.",
	},
	--[+ Passive 15 - Opening Salvo +]--	27.03.2026
	["loc_talent_veteran_bonus_crit_chance_on_ammo_desc"] = { -- ammo: 20%, crit_chance: +10%, +colors
		en = Dot_green.." {crit_chance:%s} Ranged "..CKWord("Critical Hit", "Crit_hit_rgb").." Chance for the first {ammo:%s} of Ammo after a Reload.",
		ru = Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru").." для первых {ammo:%s} патронов после перезарядки.", -- Открывающий залп
	},

	--[+ Passive 16 - Covert Operative +]--	27.03.2026
	["loc_talent_zealot_increased_flanking_damage_description"] = { -- damage: +30%, +colors 
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." to Ranged Backstab Attacks.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." дальнобойных атак в спину.", -- Секретный агент -- руоф Тайный оперативник
	},

	--[+ Passive 17 - Serrated Blade +]--	27.03.2026
	["loc_talent_veteran_hits_cause_bleed_desc"] = { -- stacks: 2 -- Stack(s)->Stacks, +colors
		en = "{stacks:%s} Stacks of "..CKWord("Bleed", "Bleed_rgb").." to the target on Melee Hit.\n"
			..Dot_nc.." Up to "..CNumb("16", "n_16_rgb").." Stacks.\n"
			..Dot_nc.." Lasts "..CNumb("1.5", "n_1_5_rgb").." seconds.\n"
			..Dot_nc.." Ticks every "..CNumb("0.5", "n_0_5_rgb").." seconds.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Above average armor "..CKWord("Damage", "Damage_rgb")..".\n"
			..Dot_red.." Low armor "..CKWord("Damage", "Damage_rgb").." vs Carapace.\n"
			..CPhrs("Cant_appl_thr_shlds"),
		ru = "{stacks:%s} заряда "..CKWord("кровотечения", "krovotechenia_rgb_ru").." получает цель при ударе в ближнем бою.\n" -- Зазубренный клинок -- руоф Зазубренное лезвие
			..Dot_nc.." До "..CNumb("16", "n_16_rgb").." зарядов максимум.\n"
			..Dot_nc.." Длится "..CNumb("1.5", "n_1_5_rgb").." секунды.\n"
			..Dot_nc.." Срабатывает каждые "..CNumb("0.5", "n_0_5_rgb").." секунды.\n"
			.."\n"
			..CPhrs("Refr_dur_stappl").."\n"
			..Dot_green.." Выше среднего "..CKWord("урон", "uron_rgb_ru").." по противоосколочной броне.\n"
			..Dot_red.." Низкий "..CKWord("урон", "uron_rgb_ru").." по панцирной броне.\n"
			..CPhrs("Cant_appl_thr_shlds"),
	},
	--[+ Passive 18 - Catch a Breath +]--	27.03.2026
	["loc_talent_veteran_replenish_toughness_outside_melee_hit_desc"] = { -- toughness: 5%, range: 8, m->meters, +colors
		en = Dot_green.." {toughness:%s} "..CKWord("Toughness", "Toughness_rgb").." replenished per second when not targeted by Melee Attacks for {duration:%s} seconds.\n"
			.."\n"
			..Dot_nc.." This Talent goes on Cooldown for "..CNumb("5", "n_5_rgb").." seconds after Blocking or receiving Melee damage.\n"
			..CPhrs("Dont_intw_coher_toughn"),
		ru = Dot_green.." {toughness:%s} "..CKWord("стойкости", "stoikosti_rgb_ru").." в секунду восстанавливается, если по вам не попадали атаками ближнего боя более {duration:%s} секунд.\n" -- Переведи дух -- руоф Передышка
			.."\n"
			..Dot_nc.." Этот талант уходит на восстановление на "..CNumb("5", "n_5_rgb").." секунд после блокирования атаки или получения урона в ближнем бою.\n"
			..CPhrs("Dont_intw_coher_toughn"),
	},
	--[+ Passive 19 - Grenadier +]--	27.03.2026
	["loc_talent_veteran_extra_grenade_and_throw_chance_description"] = { -- ammo: 1,  20%, Grenade(s)->Grenade
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{ammo:%s} extra Grenade.\n"
			.."\n"
			..Dot_green.." {chance:%s} chance to throw an additional Grenade. Consumes only "..CNumb("1", "n_1_rgb").." Grenade.",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{ammo:%s} дополнительная граната.\n" -- Гренадёр -- руоф Гренадер
			.."\n"
			..Dot_green.." {chance:%s} шанс бросить дополнительную гранату, потратив только "..CNumb("1", "n_1_rgb").." гранату.",
	},
	--[+ Passive 20 - Demolition Stockpile +]--	27.03.2026
	["loc_talent_veteran_replenish_grenade_desc"] = { -- amount: 1, time: 60, Grenade(s)->Grenade, s->seconds
		en = Dot_green.." {amount:%s} Grenade Replenished every {time:%s} seconds.",
		ru = Dot_green.." {amount:%s} граната выдаётся вам каждые {time:%s} секунд.", -- Склад взрывчатки
	},
	--[+ Passive 21 - Grenade Tinkerer +]--	27.03.2026
	["loc_talent_veteran_improved_grenades_desc"] = { -- krak_grenade: Krak Grenade, krak: +75%, frag_grenade: Frag Grenade, frag_damage: +25%, smoke_grenade: Smoke Grenade, smoke: +100%, &->and, +colors
		en = "{krak_grenade:%s}:\n"
			..Dot_green.." {krak:%s} explosion "..CKWord("Damage", "Damage_rgb")..".\n"
			.."\n"
			.."{frag_grenade:%s}:\n"
			..Dot_green.." {frag_damage:%s} explosion "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {frag_damage:%s} Radius.\n"
			..Dot_red.." Does not affect "..CKWord("Bleeds", "Bleeds_rgb").." applied by the explosion.\n"
			.."\n"
			.."{smoke_grenade:%s}:\n"
			..Dot_green.." {smoke:%s} Duration. Increases from "..CNumb("15", "n_15_rgb").." to "..CNumb("30", "n_30_rgb").." seconds.",
		ru = "{krak_grenade:%s}:\n" -- Гранатный мастер -- руоф Любитель гранат
			..Dot_green.." {krak:%s} к "..CKWord("урону", "uronu_rgb_ru").." от взрыва.\n"
			.."\n"
			.."{frag_grenade:%s}:\n"
			..Dot_green.." {frag_damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." от взрыва,\n"
			..Dot_green.." {frag_damage:%s} к радиусу.\n"
			..Dot_red.." Не влияет на "..CKWord("кровотечение", "krovotechenie_rgb_ru")..", наложенное взрывом.\n"
			.."\n"
			.."{smoke_grenade:%s}:\n"
			..Dot_green.." {smoke:%s} к длительности. Длительность увеличена с "..CNumb("15", "n_15_rgb").." до "..CNumb("30", "n_30_rgb").." секунд.",
	},
	--[+ Passive 22 - Precision Strikes +]--	27.03.2026
	["loc_talent_veteran_increased_weakspot_damage_desc"] = { -- damage: +30%, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Weakspot Damage", "Weakspot_dmg_rgb").." of Melee and Ranged attacks.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону по уязвимым местам", "u_mestam_uronu_rgb_ru").." для атак ближнего и дальнего боя.", -- Точные удары
	},
	--[+ Passive 23 - Deadshot +]--	27.03.2026
	["loc_talent_veteran_ads_drains_stamina_boost_desc"] = { -- crit_chance: +25%, sway_reduction: +60%, stamina: 0.75, stamina_per_shot: 0.1, &->and, +colors
		en = "While Aiming with "..CKWord("Stamina", "Stamina_rgb").." above "..CNumb("0", "n_0_rgb").." you gain:\n"
			..Dot_green.." {crit_chance:%s} "..CKWord("Critical Chance", "Crit_chance_rgb")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{sway_reduction:%s} Weapon Sway,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("19%", "pc_19_rgb").." Spread,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("12%", "pc_12_rgb").." Recoil.\n"
			.."Aiming also drains "..CKWord("Stamina", "Stamina_rgb")..":\n"
			..Dot_red.." {stamina:%s} per second,\n"
			..Dot_red.." {stamina_per_shot:%s} per shot.\n"
			.."\n"
			..Dot_red.." This talent has no effect on Plasma Gun.",
		ru = "Пока вы целитесь и ваш уровень "..CKWord("выносливости", "vynoslivosti_rgb_ru").." выше "..CNumb("0", "n_0_rgb")..", вы получаете:\n" -- Смертельный выстрел
			..Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического выстрела", "sh_krit_vystrela_rgb_ru")..",\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb").."{sway_reduction:%s} к раскачиванию прицела,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("19%", "pc_19_rgb").." к разбросу,\n"
			..Dot_green.." "..CNumb("-", "n_minus_rgb")..CNumb("12%", "pc_12_rgb").." к отдаче.\n"
			.."Прицеливание при этом расходует "..CKWord("выносливость", "vynoslivost_rgb_ru")..":\n"
			..Dot_red.." {stamina:%s} в секунду и\n"
			..Dot_red.." {stamina_per_shot:%s} за каждый выстрел.\n"
			.."\n"
			..Dot_red.." Этот талант не действует на плазмомёт.",
	},
	--[+ Passive 24 - Born Leader +]--	27.03.2026
	["loc_talent_veteran_allies_share_toughness_coherency_increase_description"] = { -- radius: +50%, toughness: 20%, +colors
		en = Dot_green.." {radius:%s} "..CKWord("Coherency", "Coherency_rgb").." radius.\n"
			.."\n"
			..Dot_green.." {toughness:%s} of any "..CKWord("Toughness", "Toughness_rgb").." you replenish is also granted to Allies in "..CKWord("Coherency", "Coherency_rgb")..".",
		ru = Dot_green.." {radius:%s} к радиусу "..CKWord("сплочённости", "splochennosti_rgb_ru")..".\n" -- Прирождённый лидер -- руоф Прирожденный лидер
			.."\n"
			..Dot_green.." {toughness:%s} от любой "..CKWord("стойкости", "stoikosti_rgb_ru")..", восстанавливаемой вами, восстанавливается союзникам в "..CKWord("сплочённости", "splochennosti_rgb_ru")..".",
	},
	--[+ Passive 25 - Leave No One Behind +]--	27.03.2026
	["loc_talent_veteran_movement_speed_towards_downed_description"] = { -- revive_speed: +20%, movement_speed: +20%, damage_reduction: +33%, duration: 5, &->and, s->seconds, +colors
		en = "When moving towards a Knocked Down or Incapacitated Ally, you gain:\n"
			..Dot_green.." {revive_speed:%s} Assist Speed,\n"
			..Dot_green.." {revive_speed:%s} Revive Speed,\n"
			..Dot_green.." {movement_speed:%s} Movement Speed, and\n"
			..Dot_green.." "..CKWord("Stun", "Stun_rgb").." Immunity.\n"
			.."\n"
			.."Whenever you Revive a Knocked Down Ally, they receive for {duration:%s} seconds:\n"
			..Dot_green.." {damage_reduction:%s} "..CKWord("Damage", "Damage_rgb").." Reduction.",
		ru = "При движении к сбитому с ног или выведенному из строя союзнику вы получаете:\n" -- Своих не бросаем -- руоф Никого не оставляйте позади
			..Dot_green.." {revive_speed:%s} к скорости поднятия,\n"
			..Dot_green.." {revive_speed:%s} к скорости возрождения,\n"
			..Dot_green.." {movement_speed:%s} к скорости движения, а также\n"
			..Dot_green.." иммунитет к "..CKWord("ошеломлению", "oshelomleniu_rgb_ru")..".\n"
			.."\n"
			.."Каждый раз, когда вы возрождаете сбитого с ног союзника, он получает на {duration:%s} секунд:\n"
			..Dot_green.." {damage_reduction:%s} к снижению "..CKWord("урона", "urona_rgb_ru")..".",
	},
	--[+ Passive 26 - Demolition Team +]--	27.03.2026
	["loc_talent_veteran_grenade_on_elite_kills_coop_desc"] = { -- chance: 5%
		en = Dot_green.." {chance:%s} chance to replenish a Grenade when you or an Ally in "..CKWord("Coherency", "Coherency_rgb").." kills an Elite or Specialist Enemy.\n"
			.."\n"
			..Dot_green.." Procs regardless of whether you are in "..CKWord("Coherency", "Coherency_rgb").." with Allies or not.",
		ru = Dot_green.." {chance:%s} шанс восстановить гранату, когда вы или ваш союзник убиваете элитного врага или специалиста.\n" -- Команда подрывников -- руоф Группа подрыва
			.."\n"
			..Dot_green.." Срабатывает независимо от того, находитесь ли вы в "..CKWord("сплочённости", "splochennosti_rgb_ru").." с союзниками или нет.",
	},
	--[+ Passive 27 - Reciprocity +]--	27.03.2026
	["loc_talent_veteran_dodging_grants_crit_description"] = { -- crit_chance: +5%, duration: 8, stacks: 5, s->seconds, +colors
		en = Dot_green.." {crit_chance:%s} "..CKWord("Critical Hit", "Crit_hit_rgb").." Chance for {duration:%s} seconds on successful Dodge.\n"
			..Dot_nc.." Stacks {stacks:%s} times.\n"
			.."\n"
			.." Effect triggers on dodging:\n"
			.."   "..Dot_green.." Melee attacks,\n"
			.."   "..Dot_green.." Ranged attacks,\n"
			.."   "..Dot_green.." Pox Hound jump,\n"
			.."   "..Dot_green.." Trapper net and\n"
			.."   "..Dot_green.." Mutant grab.\n"
			.."\n"
			.." Effect does not trigger on dodging:\n"
			.."   "..Dot_red.." Gunner's burst fire,\n"
			.."   "..Dot_red.." Reaper's shooting, and\n"
			.."   "..Dot_red.." Sniper's shot.",
		ru = Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." на {duration:%s} секунд при успешном уклонении.\n" -- Взаимообмен -- руоф Взаимная выгода
			..Dot_nc.." Суммируется {stacks:%s} раз.\n"
			.."\n"
			.." Эффект срабатывает при уклонении от:\n"
			.."   "..Dot_green.." Атак ближнего боя,\n"
			.."   "..Dot_green.." Атак дальнего боя,\n"
			.."   "..Dot_green.." Прыжка гончей,\n"
			.."   "..Dot_green.." Сетки Скаба-ловца и \n"
			.."   "..Dot_green.." Захвата мутанта.\n"
			.."\n"
			.." Эффект не срабатывает при уклонении от:\n"
			.."   "..Dot_red.." Очереди пулемётчика,\n"
			.."   "..Dot_red.." Стрельбы жнеца и\n"
			.."   "..Dot_red.." Выстрела снайпера.",
	},
	--[+ Passive 28 - Duck and Dive +]--	27.03.2026
	["loc_talent_veteran_stamina_on_ranged_dodge_desc"] = { -- stamina: +30%
		en = Dot_green.." {stamina:%s} of Max "..CKWord("Stamina", "Stamina_rgb").." on avoiding Ranged Attacks by Dodging, Sprinting or Sliding.\n"
			.."\n"
			..Dot_nc.." Requires more than "..CNumb("0", "n_0_rgb").." "..CKWord("Stamina", "Stamina_rgb")..".\n"
			..Dot_nc.." Has an internal Cooldown of "..CNumb("3", "n_3_rgb").." seconds.",
		ru = Dot_green.." {stamina:%s} к максимальной "..CKWord("выносливости", "vynoslivosti_rgb_ru").." вы получаете при избегании дальнобойных атак с помощью уклонений, бега или скольжения.\n" -- Пригнись и увернись -- руоф Голову в песок
			.."\n"
			..Dot_nc.." Должно быть больше "..CNumb("0", "n_0_rgb").." "..CKWord("выносливости", "vynoslivosti_rgb_ru")..".\n"
			..Dot_nc.." Имеет скрытое "..CNumb("3", "n_3_rgb").."-секундное восстановление.",
	},
	--[+ Passive 29 - Fully Loaded +]--	27.03.2026
	["loc_talent_veteran_ammo_increase_desc"] = { -- ammo: +25%
		en = Dot_green.." {ammo:%s} Maximum Ammo in reserve.\n"
			.."\n"
			..Dot_nc.." Rounds down.",
		ru = Dot_green.." {ammo:%s} к максимуму боеприпасов в резерве.\n" -- Полный запас -- руоф Полный заряд
			.."\n"
			..Dot_nc.." Округляется в меньшую сторону.",
	},
	--[+ Passive 30 - Tactical Awareness +]--	27.03.2026
	["loc_talent_veteran_elite_kills_reduce_cooldown_alt_desc"] = { -- regen: +100%, time: 3, s->seconds, +colors
		en = "On Specialist Kill:\n"
			..Dot_green.." {regen:%s} "..CKWord("Combat Ability", "Cmbt_abil_rgb").." Cooldown Regeneration for {time:%s} seconds.",
		ru = "При убийстве специалиста:\n" -- Тактическая осведомлённость -- руоф Тактическая осведомленность
			..Dot_green.." {regen:%s} к восстановлению "..CKWord("боевой способности", "boev_sposobnosti_rgb_ru").." на {time:%s} секунд.",
	},
	--[+ Passive 31 - Desperado +]--	27.03.2026
	["loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse_desc"] = { -- crit_chance: +10%, finesse: +25%, &->and, +colors
		en = Dot_green.." {crit_chance:%s} Melee "..CKWord("Critical Hit Chance", "Crt_hit_chnc_rgb")..".\n"
			..Dot_green.." {finesse:%s} Melee "..CKWord("Finesse", "Finesse_rgb").." Bonus.\n"
			.."\n"
			..CNote("Fns_note"),
		ru = Dot_green.." {crit_chance:%s} к "..CKWord("шансу критического удара", "sh_krit_udara_rgb_ru").." в ближнем бою.\n" -- Сорвиголова
			..Dot_green.." {finesse:%s} к усилению "..CKWord("ловкости", "lovkosti_rgb_ru").." в ближнем бою.\n"
			.."\n"
			..CNote("Fns_note"),
	},
	--[+ Passive 32 - Keep Their Heads Down! +]--	27.03.2026
	["loc_talent_veteran_increase_suppression_desc"] = { -- suppression: +75%
		en = Dot_green.." {suppression:%s} Ranged Attack Suppression.",
		ru = Dot_green.." {suppression:%s} к подавлению врагов выстрелами.", -- Не давай им поднять головы! -- руоф Пригнитесь!
	},
	--[+ Passive 33 - Competitive Urge +]--	27.03.2026
	["loc_talent_veteran_ally_kills_increase_damage_description"] = { -- proc_chance: 2.5%, damage: +20%, melee_impact: +20%, suppression: +20%, duration: 8, &->and, s->seconds, +colors
		en = "Whenever an Ally kills an Enemy you have a {proc_chance:%s} chance to gain for {duration:%s} seconds:\n"
			..Dot_green.." {damage:%s} Base "..CKWord("Damage", "Damage_rgb")..",\n"
			..Dot_green.." {melee_impact:%s} Melee "..CKWord("Impact", "Impact_rgb")..",\n"
			..Dot_green.." {suppression:%s} Suppression dealt.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Impact_note"),
		ru = "Каждый раз, когда союзник убивает врага, у вас есть {proc_chance:%s} шанс получить на {duration:%s} секунд:\n" -- Состязательный мотив
			..Dot_green.." {damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru")..",\n"
			..Dot_green.." {suppression:%s} к подавлению врагов.\n"
			..Dot_green.." {melee_impact:%s} к "..CKWord("выведению из равновесия", "vyved_ravnovesia_rgb_ru").." в ближнем бою,\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Impact_note"),
	},
	--[+ Passive 34 - Rending Strikes +]--	27.03.2026
	["loc_talent_veteran_rending_bonus_desc"] = { -- rending_multiplier: +10%, +colors
		en = Dot_green.." {rending_multiplier:%s} "..CKWord("Rending", "Rending_rgb").." to all weapons.\n"
			.."\n"
			..CNote("Rend_note"),
		ru = Dot_green.." {rending_multiplier:%s} к "..CKWord("пробиванию", "probivaniu_rgb_ru").." брони для всего оружия.\n" -- Пробивающие удары -- руоф Разрушительные удары
			.."\n"
			..CNote("Rend_note"),
	},
	--[+ Passive 35 - Agile Engagement +]--	27.03.2026
	["loc_talent_veteran_kill_grants_damage_to_other_slot_desc"] = { -- damage: +25%, duration: 5, s->seconds, +colors
		en = Dot_green.." {damage:%s} Ranged "..CKWord("Damage", "Damage_rgb").." on killing an enemy with a Melee attack.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.\n"
			.."\n"
			..Dot_green.." {damage:%s} Melee "..CKWord("Damage", "Damage_rgb").." on killing an enemy with a Ranged attack.\n"
			..Dot_nc.." Lasts {duration:%s} seconds.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." в дальнем бою при убийстве врага атакой ближнего боя.\n" -- Проворное наступление -- руоф Ловкое взаимодействие
			..Dot_nc.." Длится {duration:%s} секунд.\n"
			.."\n"
			..Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." в ближнем бою при убийстве врага атакой дальнего боя.\n"
			..Dot_nc.." Длится {duration:%s} секунд.",
	},
	--[+ Passive 36 - Skirmisher +]--	27.03.2026
	["loc_talent_veteran_damage_damage_after_sprinting_or_sliding_desc"] = { -- base_damage: +6.25%, duration: 10, stacks: 4, s->seconds, +colors
		en = Dot_green.." {base_damage:%s} to all Base "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds after Sprinting or Sliding.\n"
			..Dot_nc.." Stacks {stacks:%s} times.",
		ru = Dot_green.." {base_damage:%s} ко всему базовому "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд после бега или скольжения.\n" -- Застрельщик
			..Dot_nc.." Суммируется до {stacks:%s} раз.",
	},
	--[+ Passive 37 - Shock Trooper +]--	27.03.2026
	["loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit_desc"] = { -- +colors
		en = Dot_green.." "..CKWord("Critical Shots", "Crit_shots_rgb").." with Las-weapons consume no Ammo.",
		ru = Dot_green.." "..CKWord("Критические выстрелы", "Krit_vystrely_rgb_ru").." из лазерного оружия не потребляют боеприпасы.", -- Штурмовик
	},
	--[+ Passive 38 - Kill Zone +]--	27.03.2026
	["loc_talent_veteran_ranged_power_out_of_melee_new_desc"] = { -- ranged_damage: +20%, radius: 8, m->meters, +colors
		en = "{ranged_damage:%s} Base Ranged "..CKWord("Damage", "Damage_rgb").." when you have avoided Melee Attacks for {cooldown:%s} seconds.\n"
			.."\n"
			..Dot_nc.." This Talent goes on Cooldown for {cooldown:%s} seconds after Blocking or receiving Melee damage.\n",
		ru = "{ranged_damage:%s} к базовому "..CKWord("урону", "uronu_rgb_ru").." в дальнем бою, если вы избегали атак ближнего боя более {cooldown:%s} секунд.\n" -- Зона поражения
			.."\n"
			..Dot_nc.." Этот талант уходит на восстановление на {cooldown:%s} секунд после блокирования атаки или получения урона в ближнем бою.\n",
	},

-- !!! DOUBLE! ARBITES - Passive 35 - Priority Endowment !!!
	--[+ Passive 39 - Lock and Load +]--	08.12.2025 -- Оружие к бою 
	-- ["loc_talent_adamant_clip_size_alt_desc"] = { -- clip_size: +25% },	27.03.2026

	--[+ Passive 40 - Bring it Down! +]--	27.03.2026
	["loc_talent_veteran_big_game_hunter_description"] = { -- damage: +20%, &->and, +colors
		en = Dot_green.." {damage:%s} "..CKWord("Damage", "Damage_rgb").." to Ogryns and Monstrosities.\n"
			.."\n"
			..Dot_red.." Does not buff "..CKWord("Damage", "Damage_rgb").." against Captains/Twins.",
		ru = Dot_green.." {damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." по огринам и чудовищам.\n" -- Убей их! -- руоф Убивай!
			.."\n"
			..Dot_red.." Не усиливает "..CKWord("урон", "uron_rgb_ru").." против капитанов и близнецов.",
	},
	--[+ Passive 41 - Onslaught +]--	27.03.2026
	["loc_talent_veteran_continous_hits_apply_rending_description"] = { -- rending_multiplier: 2.5%, duration: 5, max_stacks: 16, +colors
		en = "On continuous hits to a Single target:\n"
			..Dot_green.." {rending_multiplier:%s} "..CKWord("Brittleness", "Brittleness_rgb").." for {duration:%s} seconds.\n"
			..Dot_nc.." Stacks {max_stacks:%s} times.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Brtl_note"),
		ru = "При повторных атаках по одной цели на неё накладывается:\n" -- Натиск
			..Dot_green.." {rending_multiplier:%s} "..CKWord("хрупкости", "hrupkosti_rgb_ru").." брони на {duration:%s} секунд.\n"
			..Dot_nc.." Суммируется до {max_stacks:%s} раз.\n"
			.."\n"
			..CPhrs("Can_be_refr").."\n"
			.."\n"
			..CNote("Brtl_note"),
	},
	--[+ Passive 42 - Exploit Weakness +]--	27.03.2026
	["loc_talent_veteran_crits_rend_alt_description"] = { -- damage: 20%, duration: 6, s->seconds, +colors
		en = Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} "..CKWord("Damage", "Damage_rgb").." for {duration:%s} seconds on Melee "..CKWord("Critical Hits", "Crit_hits_rgb")..".",
		ru = Dot_green.." "..CNumb("+", "n_plus_rgb").."{damage:%s} к "..CKWord("урону", "uronu_rgb_ru").." на {duration:%s} секунд при "..CKWord("критическом ударе", "krit_udare_rgb_ru").." атакой ближнего боя.", -- Использование слабостей
	},
}

-- CREATING TEMPLATES -- СОЗДАЁМ ШАБЛОНЫ
local veteran_templates = {}

for loc_key, locales in pairs(veteran_localizations) do
	for locale, text in pairs(locales) do
		table.insert(veteran_templates, create_template(
			"veteran_" .. loc_key,
			{loc_key},
			{locale},
			loc_text(text)
		))
	end
end

return veteran_templates
