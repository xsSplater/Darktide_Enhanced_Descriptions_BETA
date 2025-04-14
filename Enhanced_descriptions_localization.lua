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
		["zh-tw"] = "描述改善",
		["zh-cn"] = "描述增强",
	},
	mod_description = {
		en = "Enhanced Descriptions — fixes and additions to game descriptions. Merged mod. Included TALENTS, CURIOS, WEAPON PERKS and BLESSINGS.",
		fr = "Descriptions avancées : corrections et ajouts aux descriptions du jeu. Version fusionnée incluant les Talents, Curiosités, Atouts et Bénédictions des armes.",
		ru = "Улучшенные описания — Улучшенная локализация и расширенные описания ТАЛАНТОВ, БЛАГОСЛОВЕНИЙ и УЛУЧШЕНИЙ ОРУЖИЯ, а также РЕЛИКВИЙ(диковинок), различных МЕНЮ и всех мест, куда я успел добраться.",
		["zh-tw"] = "描述改善 - 修正和添加遊戲內的各項描述。包括天賦、珍品、武器特性、領主任務和祝福；目前苦修僅支援俄語。",
		["zh-cn"] = "描述增强 - 修正并增加游戏内文本的描述的一体式模组。包含天赋，珍品，武器专长及武器祝福。",
	},

	enable_weapons_file = {
		en = "Toggle \"Weapons\" module",
		fr = "Activer le module des armes",
		ru = "Модуль «Оружие»",
		["zh-tw"] = "切換『武器』模組",
		["zh-cn"] = "启用 \"武器\" 模块",
	},
	enable_weapons_file_description = {
		en = "This module highlights the Words and Numbers of Weapon Blessings and Perks. You can disable this module if you don't need it.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Ce module met en évidence les mots et les chiffres des bénédictions et avantages des armes. Vous pouvez désactiver ce module si vous n'en avez pas besoin.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset()}\n{# color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль выделяет слова и числа Благословений и Улучшений Оружия. Вы можете отключить этот модуль, если он вам не нужен.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
		["zh-tw"] = "此模組突出顯示武器祝福和附加屬性的文字和數字。如果您不需要此模組，可以將其禁用。\n{#color(255, 155, 55)}但您必須按下 CTRL+SHIFT+R 重新加載模組！{#reset()}\n{#color(100, 100, 100)}  \n\n要啟用此功能，您需要進入 Darktide Mod Framework 選項並啟用開發人員模式。{#reset()}",
		["zh-cn"] = "此模块将高亮显示武器的祝福和专长的关键词及数字。可以按需开关此模块。\n{#color(255, 155, 55)}但你必须按下 CTRL+SHIFT+R 以重载模组！{#reset()}\n{#color(100, 100, 100)}* 若使用该特性，你需要在 Darktide Mod Framework 中开启开发者模式。{#reset()}",
	},

	enable_curious_file = {
		en = "Toggle \"Curios\" module",
		fr = "Activer le module des curiosités",
		ru = "Модуль «Реликвии»",
		["zh-tw"] = "切換『珍品』模組",
		["zh-cn"] = "启用 \"珍品\" 模块",
	},
	enable_curious_file_description = {
		en = "This module highlights the Words and Numbers of the Blessings and Perks of the Curios. You can disable this module if you don't need it .\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Ce module met en évidence les mots et les chiffres des bénédictions et avantages des curiosités. Vous pouvez désactiver ce module si vous n'en avez pas besoin.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset()}\n{# color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль выделяет слова и числа Благословений и Улучшений Реликвий. Вы можете отключить этот модуль, если он вам не нужен.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
		["zh-tw"] = "此模組突出顯示珍品的祝福和附加屬性的文字和數字。如果您不需要此模組，可以將其禁用。\n{#color(255, 155, 55)}但您必須按下 CTRL+SHIFT+R 重新加載模組！{#reset()}\n{#color(100, 100, 100)}  \n\n要啟用此功能，您需要進入 Darktide Mod Framework 選項並啟用開發人員模式。{#reset()}",
		["zh-cn"] = "此模块将高亮显示珍品的祝福和专长的关键词及数字。可以按需开关此模块。\n{#color(255, 155, 55)}但你必须按下 CTRL+SHIFT+R 以重载模组！{#reset()}\n{#color(100, 100, 100)}* 若使用该特性，你需要在 Darktide Mod Framework 中开启开发者模式。{#reset()}",
	},

	enable_menus_file = {
		en = "Toggle \"Menus\" module",
		fr = "Activer le module des menus",
		ru = "Модуль «Меню»",
		["zh-tw"] = "切換『領主』模組",
		["zh-cn"] = "启用 \"菜单\" 模块",
	},
	enable_menus_file_description = {
		en = "This module highlights the Numbers of the Melk's Contracts. You can disable this module if you don't need it.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Ce module met en évidence les numéros des contrats de Melk. Vous pouvez désactiver ce module si vous n'en avez pas besoin.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset()}\n{# color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль исправляет надписи в различных меню. Вы можете отключить этот модуль, если он вам не нужен.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
		["zh-tw"] = "此模組突出顯示領主的合約數字。如果您不需要此模組，可以將其禁用。\n{#color(255, 155, 55)}但您必須按下 CTRL+SHIFT+R 重新加載模組！{#reset()}\n{#color(100, 100, 100)} \n\n要啟用此功能，您需要進入 Darktide Mod Framework 選項並啟用開發人員模式。{#reset()}",
		["zh-cn"] = "此模块将高亮梅尔克的协议中的数字。可以按需开关此模块。\n{#color(255, 155, 55)}但你必须按下 CTRL+SHIFT+R 以重载模组！{#reset()}\n{#color(100, 100, 100)}* 若使用该特性，你需要在 Darktide Mod Framework 中开启开发者模式。{#reset()}",
	},
	enable_talents_file = {
		en = "Toggle \"Talents\" module",
		fr = "Activer le module des talents",
		ru = "Модуль «Таланты»",
		["zh-tw"] = "切換『天賦』模組",
		["zh-cn"] = "启用 \"天赋\" 模块",
	},
	enable_talents_file_description = {
		en = "This module highlights Talent words. You can disable this module if you don't need it, but all Extended Descriptions will also be disabled.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Ce module met en avant les mots clés des Talents. Vous pouvez désactiver ce module si vous n'en avez pas besoin mais les descriptions avancées seront également désactiver.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset ()}\n{#color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль выделяет слова Талантов и немного улучшает описания некоторых из них. Вы можете отключить этот модуль, если он вам не нужен.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
		["zh-tw"] = "此模組突出顯示天賦文字。如果您不需要此模組，可以將其禁用，但所有擴充描述也將被禁用。\n{#color(255, 155, 55)}但您必須按下 CTRL+SHIFT+R 重新加載模組！{#reset()}\n{#color(100, 100, 100)}\n\n要啟用此功能，您需要進入 Darktide Mod Framework 選項並啟用開發人員模式。{#reset()}",
		["zh-cn"] = "此模块将高亮天赋的关键词。可以按需开关此模块。需注意，关闭此模块将同时禁用扩充描述功能。\n{#color(255, 155, 55)}但你必须按下 CTRL+SHIFT+R 以重载模组！{#reset()}\n{#color(100, 100, 100)}* 若使用该特性，你需要在 Darktide Mod Framework 中开启开发者模式。{#reset()}",
	},
	enable_penances_file = {
		en = "{#color(15, 15, 15)}(Toggle \"Penances\" module){#reset()}",
		-- fr = "",
		ru = "Модуль «Искупления»",
		["zh-tw"] = "{#color(15, 15, 15)}(切換『苦修』模組){#reset()}",
		["zh-cn"] = "{#color(15, 15, 15)}（启用 \"苦修\" 模块）{#reset()}",
	},
	enable_penances_file_description = { -- LA DESCRIPTION EN FRANÇAIS DOIT ÊTRE CORRIGÉE !!!
		en = "{#color(255, 35, 5)}BETA! FOR NOW ONLY FOR THE RUSSIAN VERSION!{#reset()} This module highlights the Words and Numbers of the Penances. You can disable this module if you don't need it.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		-- fr = "Ce module met en évidence les numéros des contrats de Melk. Vous pouvez désactiver ce module si vous n'en avez pas besoin.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset()}\n{# color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль выделяет слова Искуплений и немного переписывает некоторые из них. Названия талантов берутся из модуля с исправленными названиями талантов! Вы можете отключить этот модуль, если он вам не нужен.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
		["zh-tw"] = "{#color(255, 35, 5)}測試版！僅供俄語版本使用！{#reset()} 此模組將高亮苦修中的數字。可以按需球開關此模組。\n{#color(255, 155, 55)}但你必須按下 CTRL+SHIFT+R 以重載模組！{#reset()}\n{#color(100, 100, 100)} \n\n若使用此功能，你需要在 Darktide Mod Framework 中開啟開發者模式。{#reset()}",
		["zh-cn"] = "{#color(255, 35, 5)}测试版！仅供俄语版本使用！{#reset()} 此模块将高亮苦修中的数字。可以按需开关此模块。\n{#color(255, 155, 55)}但你必须按下 CTRL+SHIFT+R 以重载模组！{#reset()}\n{#color(100, 100, 100)}* 若使用该特性，你需要在 Darktide Mod Framework 中开启开发者模式。{#reset()}",
	},

	-- FOR RUSSIAN VERSION ONLY!
	enable_names_file = {
		en = "{#color(15, 15, 15)}(Toggle \"Names of enemies and weapons\" module){#reset()}",
		-- fr = "",
		ru = "Модуль «Названия врагов и оружия»",
		["zh-tw"] = "{#color(15, 15, 15)}(切換『敵人與武器名稱』模組){#reset()}",
		["zh-cn"] = "{#color(15, 15, 15)}(启用 \"敌人与武器名称\" 模块){#reset()}",
	},
	enable_names_file_description = { -- LA DESCRIPTION EN FRANÇAIS DOIT ÊTRE CORRIGÉE !!!
		en = "{#color(255, 35, 5)}FOR RUSSIAN VERSION ONLY!{#reset()}",
		-- en = "This module changes the names of weapons and enemies. You can disable this module if you don't need it.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		-- fr = "Ce module met en évidence les numéros des contrats de Melk. Vous pouvez désactiver ce module si vous n'en avez pas besoin.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset()}\n{# color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль меняет названия некоторых врагов и видов брони, а также улучшает названия некоторого оружия, моделей и кузниц. Вы можете отключить этот модуль, если он вам не нужен.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
		["zh-tw"] = "{#color(255, 35, 5)}測試版！僅供俄語版本使用！{#reset()} 此模組將高亮敵人與武器名稱。可以按需球開關此模組。\n{#color(255, 155, 55)}但你必須按下 CTRL+SHIFT+R 以重載模組！{#reset()}\n{#color(100, 100, 100)} \n\n若使用此功能，你需要在 Darktide Mod Framework 中開啟開發者模式。{#reset()}",
		["zh-cn"] = "{#color(255, 35, 5)}测试版！仅供俄语版本使用！{#reset()} 此模块将高亮敌人与武器名称。可以按需开关此模块。\n{#color(255, 155, 55)}但你必须按下 CTRL+SHIFT+R 以重载模组！{#reset()}\n{#color(100, 100, 100)}* 若使用该特性，你需要在 Darktide Mod Framework 中开启开发者模式。{#reset()}",
	},
	enable_names_tal_bless_file = {
		en = "{#color(15, 15, 15)}(Toggle \"Names of Talents and Blessings\" module){#reset()}",
		-- fr = "",
		ru = "Модуль «Названия талантов и благословений»",
		["zh-tw"] = "{#color(15, 15, 15)}(切換『天賦與祝福名稱』模組){#reset()}",
		["zh-cn"] = "{#color(15, 15, 15)}(启用 \"天赋与祝福名称\" 模块){#reset()}",
	},
	enable_names_tal_bless_file_description = {	-- LA DESCRIPTION EN FRANÇAIS DOIT ÊTRE CORRIGÉE !!!
		en = "{#color(255, 35, 5)}FOR RUSSIAN VERSION ONLY!{#reset()}",
		-- en = "This module changes the names of Talents and Blessings. You can disable this module if you don't need it.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		-- fr = "Ce module met en évidence les numéros des contrats de Melk. Vous pouvez désactiver ce module si vous n'en avez pas besoin.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset()}\n{# color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Этот модуль меняет названия некоторых Талантов и Благословений. Вы можете конечно отключить этот модуль, но тогда названия талантов в Расширенных описаниях и в Искуплениях не будут совпадать. Более правильный перевод, но может немного ухудшать понимание вами других игроков и другими игроками вас, т.к. будет чуть сложнее соотносить названия.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
		["zh-tw"] = "{#color(255, 35, 5)}測試版！僅供俄語版本使用！{#reset()} 此模組將高亮天賦與祝福名稱。可以按需球開關此模組。\n{#color(255, 155, 55)}但你必須按下 CTRL+SHIFT+R 以重載模組！{#reset()}\n{#color(100, 100, 100)} \n\n若使用此功能，你需要在 Darktide Mod Framework 中開啟開發者模式。{#reset()}",
		["zh-cn"] = "{#color(255, 35, 5)}测试版！仅供俄语版本使用！{#reset()} 此模块将高亮天赋与祝福名称。可以按需开关此模块。\n{#color(255, 155, 55)}但你必须按下 CTRL+SHIFT+R 以重载模组！{#reset()}\n{#color(100, 100, 100)}* 若使用该特性，你需要在 Darktide Mod Framework 中开启开发者模式。{#reset()}",
	},

--[+ Enhanced Descriptions - Talents +]--
	enhanced_descriptions_ = {
		en = " Extended Descriptions",
		fr = " Descriptions avancées",
		ru = " Расширенные описания",
		["zh-tw"] = " 擴充描述",
		["zh-cn"] = "扩充描述",
	},
	enhanced_descriptions_enabled = {
		en = "Talents - Psyker + Zealot",
		fr = "Activer descriptions avancées pour Psyker et Fanatique",
		ru = "Таланты - Псайкер + Изувер",
		["zh-tw"] = "切換擴充描述 - 天賦 - 靈能者、狂信徒",
		["zh-cn"] = "启用扩充描述 - 天赋 - 灵能者+狂信徒",
	},
	enhanced_descriptions_enabled_description = {
		en = "If you don't need Extended Descriptions for Talents, you can Disable them.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Si vous n'avez pas besoin des descriptions étendues pour les talents, vous pouvez les désactiver.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset ()}\n{#color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Если вам не нужны Расширенные описания Талантов, вы можете их отключить.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
		["zh-tw"] = "如果您不需要天賦的擴充描述，可以將其禁用。\n{#color(255, 155, 55)}但您必須按下 CTRL+SHIFT+R 重新加載模組！{#reset()}\n{#color(100, 100, 100)} \n\n要啟用此功能，您需要進入 Darktide Mod Framework 選項並啟用開發人員模式。{#reset()}",
		["zh-cn"] = "此模块将扩充天赋树的描述。可以按需开关此模块。\n{#color(255, 155, 55)}但你必须按下 CTRL+SHIFT+R 以重载模组！{#reset()}\n{#color(100, 100, 100)}* 若使用该特性，你需要在 Darktide Mod Framework 中开启开发者模式。{#reset()}",
	},
	enhanced_descriptions_enabled2 = {
		en = "Talents - Veteran + Ogryn",
		fr = "Activer descriptions avancées pour Vétéran et Ogryn",
		ru = "Таланты - Ветеран + Огрин",
		["zh-tw"] = "切換擴充描述 - 天賦 - 老兵、歐格林",
		["zh-cn"] = "启用扩充描述 - 天赋 - 老兵+欧格林",
	},
	enhanced_descriptions_enabled2_description = {
		en = "If you don't need Extended Descriptions for Talents, you can Disable them.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Si vous n'avez pas besoin des descriptions étendues pour les talents, vous pouvez les désactiver.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset ()}\n{#color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Если вам не нужны Расширенные описания Талантов, вы можете их отключить.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
		["zh-tw"] = "如果您不需要天賦的擴充描述，可以將其禁用。\n{#color(255, 155, 55)}但您必須按下 CTRL+SHIFT+R 重新加載模組！{#reset()}\n{#color(100, 100, 100)} \n\n要啟用此功能，您需要進入 Darktide Mod Framework 選項並啟用開發人員模式。{#reset()}",
		["zh-cn"] = "此模块将扩充天赋树的描述。可以按需开关此模块。\n{#color(255, 155, 55)}但你必须按下 CTRL+SHIFT+R 以重载模组！{#reset()}\n{#color(100, 100, 100)}* 若使用该特性，你需要在 Darktide Mod Framework 中开启开发者模式。{#reset()}",
	},
--[+ Enhanced Descriptions - Nodes +]--
	enhanced_descriptions_nodes_enabled = {
		en = "Talents - Nodes",
		fr = "Activer descriptions avancées pour les noeuds des arbres de talents",
		ru = "Таланты - Узлы",
		["zh-tw"] = "切換擴充描述 - 天賦節點",
		["zh-cn"] = "启用扩充描述 - 天赋树节点",
	},
	enhanced_descriptions_nodes_enabled_description = {
		en = "If you don't need Extended Descriptions for small Nodes, you can Disable them.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		fr = "Si vous n'avez pas besoin des descriptions étendues pour les noeuds, vous pouvez les désactiver.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset ()}\n{#color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Если вам не нужны Расширенные описания узлов Талантов, вы можете их отключить.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
		["zh-tw"] = "如果您不需要小節點的擴充描述，可以將其禁用。\n{#color(255, 155, 55)}但您必須按下 CTRL+SHIFT+R 重新加載模組！{#reset()}\n{#color(100, 100, 100)} \n\n要啟用此功能，您需要進入 Darktide Mod Framework 選項並啟用開發人員模式。{#reset()}",
		["zh-cn"] = "此模块将扩充天赋树节点的描述。可以按需开关此模块。\n{#color(255, 155, 55)}但你必须按下 CTRL+SHIFT+R 以重载模组！{#reset()}\n{#color(100, 100, 100)}* 若使用该特性，你需要在 Darktide Mod Framework 中开启开发者模式。{#reset()}",
	},
--[+ Enhanced Descriptions - Penances +]--
	enhanced_descriptions_penances_enabled = {
		en = "{#color(15, 15, 15)}(Penances){#reset()}",
		-- fr = "",
		ru = "Искупления",
		["zh-tw"] = "{#color(15, 15, 15)}（苦修）{#reset()}",
		["zh-cn"] = "{#color(15, 15, 15)}（苦修）{#reset()}",
	},
	enhanced_descriptions_penances_enabled_description = {	-- LA DESCRIPTION EN FRANÇAIS DOIT ÊTRE CORRIGÉE !!!
		en = "{#color(255, 35, 5)}BETA! FOR NOW ONLY FOR THE RUSSIAN VERSION!{#reset()} If you don't need Extended Descriptions for Penances, you can Disable them. Added some tips for completing Penances.\n{#color(255, 155, 55)}But you have to Reload mods by pressing CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* To enable this feature, you need to go to the Darktide Mod Framework options and enable Developer Mode.{#reset()}",
		-- fr = "Si vous n'avez pas besoin des descriptions étendues pour les noeuds, vous pouvez les désactiver.\n{#color(255, 155, 55)}Mais vous devez recharger les mods en appuyant sur CTRL+SHIFT+R !{#reset ()}\n{#color(100, 100, 100)}* Pour activer cette fonctionnalité, vous devez accéder aux options de Darktide Mod Framework et activer le mode développeur.{#reset()}",
		ru = "Если вам не нужны Расширенные описания Искуплений, вы можете их отключить. Добавлены некоторые советы по выполнению Искуплений. Названия талантов берутся из модуля с исправленными названиями талантов.\n{#color(255, 155, 55)}Но вам придется перезагрузить моды, нажав CTRL+SHIFT+R!{#reset()}\n{#color(100, 100, 100)}* Чтобы включить эту функцию, вам нужно перейти в настройки Darktide Mod Framework и включить Режим разработчика.{#reset()}",
		["zh-tw"] = "{#color(255, 35, 5)}測試版！僅供俄語版本使用！{#reset()} 如果您不需要苦修的擴充描述，可以將其禁用。\n{#color(255, 155, 55)}但你必須按下 CTRL+SHIFT+R 以重載模組！{#reset()}\n{#color(100, 100, 100)} \n\n若使用此功能，你需要在 Darktide Mod Framework 中開啟開發者模式。{#reset()}",
		["zh-cn"] = "{#color(255, 35, 5)}测试版！仅供俄语版本使用。{#reset()} 此模块将高亮苦修中的数字。可以按需开关此模块。\n{#color(255, 155, 55)}但你必须按下 CTRL+SHIFT+R 以重载模组！{#reset()}\n{#color(100, 100, 100)}* 若使用该特性，你需要在 Darktide Mod Framework 中开启开发者模式。{#reset()}",
	},
	enhdesc_colour = {
		en = "",
		fr = "",
		ru = "",
		["zh-tw"] = "",
		["zh-cn"] = "",
	},

--[+Main+]--
	combat_ability_colour = {
		en = " Combat Ability",
		fr = " Capacité de combat",
		ru = " Боевая способность",
		["zh-tw"] = " 戰鬥能力",
		["zh-cn"] = " 能力",
	},
	health_colour = {
		en = " Health / Wound",
		fr = " Santé / Blessure",
		ru = " Здоровье / Рана",
		["zh-tw"] = " 生命 / 傷痕",
		["zh-cn"] = " 生命值 / 伤口",
	},
	peril_colour = {
		en = " Peril",
		fr = " Péril",
		ru = " Опасность",
		["zh-tw"] = " 反噬",
		["zh-cn"] = " 危机值",
	},
	stamina_colour = {
		en = " Stamina",
		fr = " Endurance",
		ru = " Выносливость",
		["zh-tw"] = " 耐力",
		["zh-cn"] = " 耐力",
	},
	toughness_colour = {
		en = " Toughness",
		fr = " Robustesse",
		ru = " Стойкость",
		["zh-tw"] = " 韌性",
		["zh-cn"] = " 韧性",
	},
	coherency_colour = {
		en = " Coherency",
		-- fr = "",
		ru = " Сплочённость",
		["zh-tw"] = " 協同",
		["zh-cn"] = " 协同",
	},

--[+Buffs+]--
	cleave_colour = {
		en = " Cleave",
		fr = " Transpercement",
		ru = " Рассечение",
		["zh-tw"] = " 順劈目標",
		["zh-cn"] = " 劈裂",
	},
	crit_colour = {
		en = " Crit",
		fr = " Critique",
		ru = " Криты",
		["zh-tw"] = " 暴擊",
		["zh-cn"] = " 暴击",
	},
	damage_colour = {
		en = " Damage",
		fr = " Dégât",
		ru = " Урон",
		["zh-tw"] = " 傷害",
		["zh-cn"] = " 伤害",
	},
	finesse_colour = {
		en = " Finesse",
		fr = " Finesse",
		ru = " Точность",
		["zh-tw"] = " 技巧",
		["zh-cn"] = " 灵巧",
	},
	hit_mass_colour = {
		en = " Hit Mass",
		fr = " Coup en masse",
		ru = " Ударная масса",
		["zh-tw"] = " 順劈目標",
		["zh-cn"] = " 打击质量",
	},
	impact_colour = {
		en = " Impact",
		fr = " Impact",
		ru = " Выведение из равновесия",
		["zh-tw"] = " 衝擊",
		["zh-cn"] = " 冲击",
	},
	power_colour = {
		en = " Power",
		fr = " Puissance",
		ru = " Сила",
		["zh-tw"] = " 威力",
		["zh-cn"] = " 强度",
	},
	rending_colour = {
		en = " Rending",
		fr = " Déchirure",
		ru = " Пробитие брони",
		["zh-tw"] = " 撕裂",
		["zh-cn"] = " 撕裂",
	},
	weakspot_colour = {
		en = " Weak Spot",
		fr = " Coup sur point faible",
		ru = " Уязвимые места",
		["zh-tw"] = " 弱點",
		["zh-cn"] = " 弱点",
	},

--[+Debuffs+]--
	bleed_colour = {
		en = " Bleed",
		fr = " Saignement",
		ru = " Кровотечение",
		["zh-tw"] = " 流血",
		["zh-cn"] = " 流血",
	},
	brittleness_colour = {
		en = " Brittleness",
		fr = " Fragilité",
		ru = " Хрупкость",
		["zh-tw"] = " 脆弱",
		["zh-cn"] = " 脆弱",
	},
	burn_colour = {
		en = " Burn",
		fr = " Brûlure",
		ru = " Горение",
		["zh-tw"] = " 燃燒",
		["zh-cn"] = " 燃烧",
	},
	corruption_colour = {
		en = " Corruption",
		fr = " Corruption",
		ru = " Порча",
		["zh-tw"] = " 腐敗",
		["zh-cn"] = " 腐化",
	},
	electrocuted_colour = {
		en = " Electrocuted",
		fr = " Eclair",
		ru = " Поражение током",
		["zh-tw"] = " 電擊",
		["zh-cn"] = " 电击",
	},
	soulblaze_colour = {
		en = " Soulblaze",
		fr = " Embrasement d'âme",
		ru = " Горение души",
		["zh-tw"] = " 靈魂之火",
		["zh-cn"] = " 灵魂之火",
	},
	stagger_colour = {
		en = " Stagger",
		fr = " Vacillement",
		ru = " Ошеломление",
		["zh-tw"] = " 踉蹌",
		["zh-cn"] = " 踉跄",
	},

--[+Psyker+]--
	class_psyker_colour = {
		en = " Psyker",
		-- fr = "",
		ru = " Псайкер",
		["zh-tw"] = " 靈能者",
		["zh-cn"] = " 灵能者",
	},
	precision_colour = {
		en = " Precision",
		fr = " Precision",
		ru = " Точность",
		["zh-tw"] = " 精準",
		["zh-cn"] = " 精准",
	},

--[+Ogryn+]--
	class_ogryn_colour = {
		en = " Ogryn",
		-- fr = "",
		ru = " Огрин",
		["zh-tw"] = " 歐格林",
		["zh-cn"] = " 欧格林",
	},
	fnp_colour = {
		en = " Feel No Pain",
		fr = " Adieu la douleur",
		ru = "     Неболит",
		["zh-tw"] = " 麻木",
		["zh-cn"] = " 不痛不痒",
	},
	luckyb_colour = {
		en = " Lucky bullet",
		fr = " Balles chanceuses",
		ru = "     Счастливая пуля",
		["zh-tw"] = " 幸運子彈",
		["zh-cn"] = " 幸运子弹",
	},
	trample_colour = {
		en = " Trample",
		fr = " Piétinement",
		ru = "     Топот",
		["zh-tw"] = " 衝鋒",
		["zh-cn"] = " 践踏",
	},

--[+Zealot+]--
	class_zealot_colour = {
		en = " Zealot",
		-- fr = "",
		ru = " Изувер",
		["zh-tw"] = " 狂信徒",
		["zh-cn"] = " 狂信徒",
	},
	fury_colour = {
		en = " Fury",
		fr = " Piété embrasée",
		ru = "     Ярость",
		["zh-tw"] = " 狂怒",
		["zh-cn"] = " 怒火",
	},
	momentum_colour = {
		en = " Momentum",
		fr = " Jugement inexorable",
		ru = "     Моментум",
		["zh-tw"] = " 勢能",
		["zh-cn"] = " 动量",
	},
	stealth_colour = {
		en = " Stealth",
		fr = " Furtivité",
		ru = "     Скрытность",
		["zh-tw"] = " 隱形",
		["zh-cn"] = " 潜行",
	},

--[+Veteran+]--
	class_veteran_colour = {
		en = " Veteran",
		-- fr = "",
		ru = " Ветеран",
		["zh-tw"] = " 老兵",
		["zh-cn"] = " 老兵",
	},
	focus_colour = {
		en = " Focus",
		fr = " Focalisation",
		ru = "     Концентрация",
		["zh-tw"] = " 專注",
		["zh-cn"] = " 专注",
	},
	focust_colour = {
		en = " Focus Target",
		fr = " Ciblage",
		ru = "     Важная цель",
		["zh-tw"] = " 專注目標",
		["zh-cn"] = " 聚焦目标",
	},
	meleespec_colour = {
		en = " Melee Specialist",
		fr = " Spcécialiste en mêlée",
		ru = "     Специалист-рукопашник",
		["zh-tw"] = " 近戰專家",
		["zh-cn"] = " 近战专家",
	},
	rangedspec_colour = {
		en = " Ranged Specialist",
		fr = " Spcécialiste à distance",
		ru = "     Специалист-стрелок",
		["zh-tw"] = " 遠程專家",
		["zh-cn"] = " 远程专家",
	},

--[+Misc+]--
	note_colour = {
		en = " Note",
		fr = " Annotation",
		ru = " Примечания",
		["zh-tw"] = " 註釋",
		["zh-cn"] = " 注释",
	},
	numbers_colour = {
		en = " Numbers",
		fr = " Nombres",
		ru = " Числа",
		["zh-tw"] = " 數字",
		["zh-cn"] = " 数字",
	},
	variables_colour = {
		en = " Variables",
		fr = " Variables",
		ru = " Переменные",
		["zh-tw"] = " 變數",
		["zh-cn"] = " 变量",
	},
	warning_colour = {
		en = " Warning",
		fr = " Alerte",
		ru = " Предупреждения",
		["zh-tw"] = " 警告",
		["zh-cn"] = " 警告",
	},

	--[+Difficulty+]--
	sedition_colour = {
		en = "Sedition",
		-- fr = "",
		ru = "Мятеж",
		["zh-tw"] = "暴動",
		["zh-cn"] = "煽动",
	},
	uprising_colour = {
		en = "Uprising",
		-- fr = "",
		ru = "Восстание",
		["zh-tw"] = "起義",
		["zh-cn"] = "起义",
	},
	malice_colour = {
		en = "Malice",
		-- fr = "",
		ru = "Злоба",
		["zh-tw"] = "惡毒",
		["zh-cn"] = "憎恶",
	},
	heresy_colour = {
		en = "Heresy",
		-- fr = "",
		ru = "Ересь",
		["zh-tw"] = "異端",
		["zh-cn"] = "异端",
	},
	damnation_colour = {
		en = "Damnation",
		-- fr = "",
		ru = "Проклятие",
		["zh-tw"] = "詛咒",
		["zh-cn"] = "诅咒",
	},

	talents_colour = {
		en = " Talents",
		fr = " Talents",
		ru = " Таланты",
		["zh-tw"] = " 天賦",
		["zh-cn"] = " 天赋",
	},
	talents_penances_colour = {
		en = " Talents - Penances",
		-- fr = " Talents",
		ru = " Таланты - Искупления",
		["zh-tw"] = " 天賦 - 苦修",
		["zh-cn"] = " 天赋 - 苦修",
	},
}

local function addLocalisation(localisations, typeName)
	localisations[typeName .. "_text_colour"] = {
		en = "Color",
		fr = "Couleur",
		ru = "Цвет",
		["zh-tw"] = "顏色",
		["zh-cn"] = "颜色",
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
