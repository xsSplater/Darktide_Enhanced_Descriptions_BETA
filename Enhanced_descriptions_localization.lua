---@diagnostic disable: undefined-global, undefined-field

-- local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")

-- Duplicate the line and translate. For example:
--		en = "Enhanced Descriptions",
--		ru = "Улучшенные описания", <- Don't forget the comma at the end!

local localizations = {
	mod_name = {
		en = "Enhanced Descriptions",
		-- fr = "Descriptions avancées", -- ???
		ru = "Улучшенные описания",
	},
	mod_description = {
		en = "Enhanced Descriptions — fixes and additions to game descriptions. Merged mod. Included TALENTS, CURIOS, WEAPON PERKS and BLESSINGS.",
		fr = "Descriptions avancées : corrections et ajouts aux descriptions du jeu. Version fusionnée incluant les Talents, Curiosités, Atouts et Bénédictions des armes.",
		ru = "Улучшенные описания — Улучшенная локализация и расширенные описания ТАЛАНТОВ, БЛАГОСЛОВЕНИЙ и УЛУЧШЕНИЙ ОРУЖИЯ, а также РЕЛИКВИЙ(диковинок), различных МЕНЮ и всех мест, куда я успел добраться.",
	},

	enable_weapons_file = {
		en = "Toggle \"Weapons\" module",
		fr = "Activer le module des armes",
		ru = "Модуль «Оружие»",
	},
	enable_weapons_file_description = {
		en = "This module highlights the Words and Numbers of Weapon Blessings and Perks. You can disable this module if you don't need it.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Ce module met en évidence les mots et les chiffres des bénédictions et avantages des armes. Vous pouvez désactiver ce module si vous n'en avez pas besoin.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset()}\n{# color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль выделяет слова и числа Благословений и Улучшений Оружия. Вы можете отключить этот модуль, если он вам не нужен.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
	},

	enable_curious_file = {
		en = "Toggle \"Curios\" module",
		fr = "Activer le module des curiosités",
		ru = "Модуль «Реликвии»",
	},
	enable_curious_file_description = {
		en = "This module highlights the Words and Numbers of the Blessings and Perks of the Curios. You can disable this module if you don't need it .\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Ce module met en évidence les mots et les chiffres des bénédictions et avantages des curiosités. Vous pouvez désactiver ce module si vous n'en avez pas besoin.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset()}\n{# color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль выделяет слова и числа Благословений и Улучшений Реликвий. Вы можете отключить этот модуль, если он вам не нужен.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
	},

	enable_menus_file = {
		en = "Toggle \"Menus\" module",
		fr = "Activer le module des menus",
		ru = "Модуль «Меню»",
	},
	enable_menus_file_description = {
		en = "This module highlights the Numbers of the Melk's Contracts. You can disable this module if you don't need it.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Ce module met en évidence les numéros des contrats de Melk. Vous pouvez désactiver ce module si vous n'en avez pas besoin.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset()}\n{# color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль исправляет надписи в различных меню. Вы можете отключить этот модуль, если он вам не нужен.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
	},
	enable_talents_file = {
		en = "Toggle \"Talents\" module",
		fr = "Activer le module des talents",
		ru = "Модуль «Таланты»",
	},
	enable_talents_file_description = {
		en = "This module highlights Talent words. You can disable this module if you don't need it, but all Extended Descriptions will also be disabled.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Ce module met en avant les mots clés des Talents. Vous pouvez désactiver ce module si vous n'en avez pas besoin mais les descriptions avancées seront également désactiver.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset ()}\n{#color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль выделяет слова Талантов и немного улучшает описания некоторых из них. Вы можете отключить этот модуль, если он вам не нужен.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
	},
	enable_penances_file = {
		en = "{#color(15, 15, 15)}(Toggle \"Penances\" module){#reset()}",
		-- fr = "",
		ru = "Модуль «Искупления»",
	},
	enable_penances_file_description = { -- LA DESCRIPTION EN FRANÇAIS DOIT ÊTRE CORRIGÉE !!!
		en = "{#color(255, 35, 5)}BETA! FOR NOW ONLY FOR THE RUSSIAN VERSION!{#reset()} This module highlights the Words and Numbers of the Penances. You can disable this module if you don't need it.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		-- fr = "Ce module met en évidence les numéros des contrats de Melk. Vous pouvez désactiver ce module si vous n'en avez pas besoin.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset()}\n{# color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль выделяет слова Искуплений и немного переписывает некоторые из них. Названия талантов берутся из модуля с исправленными названиями талантов! Вы можете отключить этот модуль, если он вам не нужен.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
	},

	-- FOR RUSSIAN VERSION ONLY!
	enable_names_file = {
		en = "{#color(15, 15, 15)}(Toggle \"Names of enemies and weapons\" module){#reset()}",
		-- fr = "",
		ru = "Модуль «Названия врагов и оружия»",
	},
	enable_names_file_description = { -- LA DESCRIPTION EN FRANÇAIS DOIT ÊTRE CORRIGÉE !!!
		en = "{#color(255, 35, 5)}FOR RUSSIAN VERSION ONLY!{#reset()}",
		-- en = "This module changes the names of weapons and enemies. You can disable this module if you don't need it.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		-- fr = "Ce module met en évidence les numéros des contrats de Melk. Vous pouvez désactiver ce module si vous n'en avez pas besoin.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset()}\n{# color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль меняет названия некоторых врагов и видов брони, а также улучшает названия некоторого оружия, моделей и кузниц. Вы можете отключить этот модуль, если он вам не нужен.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
	},
	enable_names_tal_bless_file = {
		en = "{#color(15, 15, 15)}(Toggle \"Names of Talents and Blessings\" module){#reset()}",
		-- fr = "",
		ru = "Модуль «Названия талантов и благословений»",
	},
	enable_names_tal_bless_file_description = {	-- LA DESCRIPTION EN FRANÇAIS DOIT ÊTRE CORRIGÉE !!!
		en = "{#color(255, 35, 5)}FOR RUSSIAN VERSION ONLY!{#reset()}",
		-- en = "This module changes the names of Talents and Blessings. You can disable this module if you don't need it.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		-- fr = "Ce module met en évidence les numéros des contrats de Melk. Vous pouvez désactiver ce module si vous n'en avez pas besoin.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset()}\n{# color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль меняет названия некоторых Талантов и Благословений. Вы можете конечно отключить этот модуль, но тогда названия талантов в Расширенных описаниях и в Искуплениях не будут совпадать. Более правильный перевод, но может немного ухудшать понимание вами других игроков и другими игроками вас, т.к. будет чуть сложнее соотносить названия.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
	},

--[+ Enhanced Descriptions - Talents +]--
	enhanced_descriptions_ = {
		en = " Extended Descriptions",
		fr = " Descriptions avancées",
		ru = " Расширенные описания",
	},
	enhanced_descriptions_enabled = {
		en = "Talents - Psyker + Zealot",
		fr = "Activer descriptions avancées pour Psyker et Fanatique",
		ru = "Таланты - Псайкер + Изувер",
	},
	enhanced_descriptions_enabled_description = {
		en = "If you don't need Extended Descriptions for Talents, you can Disable them.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Si vous n'avez pas besoin des descriptions étendues pour les talents, vous pouvez les désactiver.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset ()}\n{#color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Если вам не нужны Расширенные описания Талантов, вы можете их отключить.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
	},
	enhanced_descriptions_enabled2 = {
		en = "Talents - Veteran + Ogryn",
		fr = "Activer descriptions avancées pour Vétéran et Ogryn",
		ru = "Таланты - Ветеран + Огрин",
	},
	enhanced_descriptions_enabled2_description = {
		en = "If you don't need Extended Descriptions for Talents, you can Disable them.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Si vous n'avez pas besoin des descriptions étendues pour les talents, vous pouvez les désactiver.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset ()}\n{#color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Если вам не нужны Расширенные описания Талантов, вы можете их отключить.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
	},
--[+ Enhanced Descriptions - Nodes +]--
	enhanced_descriptions_nodes_enabled = {
		en = "Talents - Nodes",
		fr = "Activer descriptions avancées pour les noeuds des arbres de talents",
		ru = "Таланты - Узлы",
	},
	enhanced_descriptions_nodes_enabled_description = {
		en = "If you don't need Extended Descriptions for small Nodes, you can Disable them.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Si vous n'avez pas besoin des descriptions étendues pour les noeuds, vous pouvez les désactiver.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset ()}\n{#color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Если вам не нужны Расширенные описания узлов Талантов, вы можете их отключить.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
	},
--[+ Enhanced Descriptions - Penances +]--
	enhanced_descriptions_penances_enabled = {
		en = "{#color(15, 15, 15)}(Penances){#reset()}",
		-- fr = "",
		ru = "Искупления",
	},
	enhanced_descriptions_penances_enabled_description = {	-- LA DESCRIPTION EN FRANÇAIS DOIT ÊTRE CORRIGÉE !!!
		en = "{#color(255, 35, 5)}BETA! FOR NOW ONLY FOR THE RUSSIAN VERSION!{#reset()} If you don't need Extended Descriptions for Penances, you can Disable them. Added some tips for completing Penances.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		-- fr = "Si vous n'avez pas besoin des descriptions étendues pour les noeuds, vous pouvez les désactiver.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset ()}\n{#color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Если вам не нужны Расширенные описания Искуплений, вы можете их отключить. Добавлены некоторые советы по выполнению Искуплений. Названия талантов берутся из модуля с исправленными названиями талантов.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
	},
	enhdesc_colour = {
		en = "",
		fr = "",
		ru = "",
	},

--[+Main+]--
	combat_ability_colour = {
		en = " Combat Ability",
		fr = " Capacité de combat",
		ru = " Боевая способность",
	},
	health_colour = {
		en = " Health / Wound",
		fr = " Santé / Blessure",
		ru = " Здоровье / Рана",
	},
	peril_colour = {
		en = " Peril",
		fr = " Péril",
		ru = " Опасность",
	},
	stamina_colour = {
		en = " Stamina",
		fr = " Endurance",
		ru = " Выносливость",
	},
	toughness_colour = {
		en = " Toughness",
		fr = " Robustesse",
		ru = " Стойкость",
	},
	coherency_colour = {
		en = " Coherency",
		-- fr = "",
		ru = " Сплочённость",
	},

--[+Buffs+]--
	cleave_colour = {
		en = " Cleave",
		fr = " Transpercement",
		ru = " Рассечение",
	},
	crit_colour = {
		en = " Crit",
		fr = " Critique",
		ru = " Криты",
	},
	damage_colour = {
		en = " Damage",
		fr = " Dégât",
		ru = " Урон",
	},
	finesse_colour = {
		en = " Finesse",
		fr = " Finesse",
		ru = " Точность",
	},
	hit_mass_colour = {
		en = " Hit Mass",
		fr = " Coup en masse",
		ru = " Ударная масса",
	},
	impact_colour = {
		en = " Impact",
		fr = " Impact",
		ru = " Выведение из равновесия",
	},
	power_colour = {
		en = " Power",
		fr = " Puissance",
		ru = " Сила",
	},
	rending_colour = {
		en = " Rending",
		fr = " Déchirure",
		ru = " Пробитие брони",
	},
	weakspot_colour = {
		en = " Weak Spot",
		fr = " Coup sur point faible",
		ru = " Уязвимые места",
	},

--[+Debuffs+]--
	bleed_colour = {
		en = " Bleed",
		fr = " Saignement",
		ru = " Кровотечение",
	},
	brittleness_colour = {
		en = " Brittleness",
		fr = " Fragilité",
		ru = " Хрупкость",
	},
	burn_colour = {
		en = " Burn",
		fr = " Brûlure",
		ru = " Горение",
	},
	corruption_colour = {
		en = " Corruption",
		fr = " Corruption",
		ru = " Порча",
	},
	electrocuted_colour = {
		en = " Electrocuted",
		fr = " Eclair",
		ru = " Поражение током",
	},
	soulblaze_colour = {
		en = " Soulblaze",
		fr = " Embrasement d'âme",
		ru = " Горение души",
	},
	stagger_colour = {
		en = " Stagger",
		fr = " Vacillement",
		ru = " Ошеломление",
	},

--[+Psyker+]--
	class_psyker_colour = {
		en = " Psyker",
		-- fr = "",
		ru = " Псайкер",
	},
	precision_colour = {
		en = " Precision",
		fr = " Precision",
		ru = " Точность",
	},

--[+Ogryn+]--
	class_ogryn_colour = {
		en = " Ogryn",
		-- fr = "",
		ru = " Огрин",
	},
	fnp_colour = {
		en = " Feel No Pain",
		fr = " Adieu la douleur",
		ru = "     Неболит",
	},
	luckyb_colour = {
		en = " Lucky bullet",
		fr = " Balles chanceuses",
		ru = "     Счастливая пуля",
	},
	trample_colour = {
		en = " Trample",
		fr = " Piétinement",
		ru = "     Топот",
	},

--[+Zealot+]--
	class_zealot_colour = {
		en = " Zealot",
		-- fr = "",
		ru = " Изувер",
	},
	fury_colour = {
		en = " Fury",
		fr = " Piété embrasée",
		ru = "     Ярость",
	},
	momentum_colour = {
		en = " Momentum",
		fr = " Jugement inexorable",
		ru = "     Моментум",
	},
	stealth_colour = {
		en = " Stealth",
		fr = " Furtivité",
		ru = "     Скрытность",
	},

--[+Veteran+]--
	class_veteran_colour = {
		en = " Veteran",
		-- fr = "",
		ru = " Ветеран",
	},
	focus_colour = {
		en = " Focus",
		fr = " Focalisation",
		ru = "     Концентрация",
	},
	focust_colour = {
		en = " Focus Target",
		fr = " Ciblage",
		ru = "     Важная цель",
	},
	meleespec_colour = {
		en = " Melee Specialist",
		fr = " Spcécialiste en mêlée",
		ru = "     Специалист-рукопашник",
	},
	rangedspec_colour = {
		en = " Ranged Specialist",
		fr = " Spcécialiste à distance",
		ru = "     Специалист-стрелок",
	},

--[+Misc+]--
	note_colour = {
		en = " Note",
		fr = " Annotation",
		ru = " Примечания",
	},
	numbers_colour = {
		en = " Numbers",
		fr = " Nombres",
		ru = " Числа",
	},
	variables_colour = {
		en = " Variables",
		fr = " Variables",
		ru = " Переменные",
	},
	warning_colour = {
		en = " Warning",
		fr = " Alerte",
		ru = " Предупреждения",
	},

	--[+Difficulty+]--
	sedition_colour = {
		en = "Sedition",
		-- fr = "",
		ru = "Мятеж",
	},
	uprising_colour = {
		en = "Uprising",
		-- fr = "",
		ru = "Восстание",
	},
	malice_colour = {
		en = "Malice",
		-- fr = "",
		ru = "Злоба",
	},
	heresy_colour = {
		en = "Heresy",
		-- fr = "",
		ru = "Ересь",
	},
	damnation_colour = {
		en = "Damnation",
		-- fr = "",
		ru = "Проклятие",
	},

	talents_colour = {
		en = " Talents",
		fr = " Talents",
		ru = " Таланты",
	},
	talents_penances_colour = {
		en = " Talents - Penances",
		-- fr = " Talents",
		ru = " Таланты - Искупления",
	},
}

local function addLocalisation(localisations, typeName)
	localisations[typeName .. "_text_colour"] = {
		en = "Color",
		fr = "Couleur",
		ru = "Цвет",
	}
end

			-- ============ DO NOT DO ANYTHING BELOW! ============ --



local function readable(text)
	local readable_string = ""
	local tokens = string.split(text, "_")
		for i, token in ipairs(tokens) do
	local first_letter = string.sub(token, 1, 1)
		token = string.format("%s%s", string.upper(first_letter), string.sub(token, 2))
		readable_string = string.trim(string.format("%s %s", readable_string, token))
end
	return readable_string
end

local color_names = Color.list
for i, color_name in ipairs(color_names) do
	local color_values = Color[color_name](255, true)
	local text = InputUtils.apply_color_to_input_text(readable(color_name), color_values)
		localizations[color_name] = {
			en = text
		}
end

--[+Enhanced Descriptions+]--
addLocalisation(localizations, "enhdesc")

--[+Main+]--
addLocalisation(localizations, "combat_ability")
addLocalisation(localizations, "health")
addLocalisation(localizations, "peril")
addLocalisation(localizations, "stamina")
addLocalisation(localizations, "toughness")
addLocalisation(localizations, "coherency")

--[+Buffs+]--
addLocalisation(localizations, "cleave")
addLocalisation(localizations, "crit")
addLocalisation(localizations, "damage")
addLocalisation(localizations, "finesse")
addLocalisation(localizations, "hit_mass")
addLocalisation(localizations, "impact")
addLocalisation(localizations, "power")
addLocalisation(localizations, "rending")
addLocalisation(localizations, "weakspot")

--[+Debuffs+]--
addLocalisation(localizations, "bleed")
addLocalisation(localizations, "brittleness")
addLocalisation(localizations, "burn")
addLocalisation(localizations, "corruption")
addLocalisation(localizations, "electrocuted")
addLocalisation(localizations, "soulblaze")
addLocalisation(localizations, "stagger")

--[+Psyker+]--
addLocalisation(localizations, "precision")

--[+Ogryn+]--
addLocalisation(localizations, "fnp")
addLocalisation(localizations, "luckyb")
addLocalisation(localizations, "trample")

--[+Zealot+]--
addLocalisation(localizations, "fury")
addLocalisation(localizations, "momentum")
addLocalisation(localizations, "stealth")

--[+Veteran+]--
addLocalisation(localizations, "focus")
addLocalisation(localizations, "focust")
addLocalisation(localizations, "meleespec")
addLocalisation(localizations, "rangedspec")

--[+Misc+]--
addLocalisation(localizations, "note")
addLocalisation(localizations, "variables")
addLocalisation(localizations, "numbers")
addLocalisation(localizations, "warning")
addLocalisation(localizations, "talents")

--[+Difficulty+]--
addLocalisation(localizations, "sedition")
addLocalisation(localizations, "uprising")
addLocalisation(localizations, "malice")
addLocalisation(localizations, "heresy")
addLocalisation(localizations, "damnation")

--[+Penances+]--
addLocalisation(localizations, "talents_penances")

--[+Classes+]--
addLocalisation(localizations, "class_veteran")
addLocalisation(localizations, "class_zealot")
addLocalisation(localizations, "class_psyker")
addLocalisation(localizations, "class_ogryn")


return localizations
