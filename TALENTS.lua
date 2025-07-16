---@diagnostic disable: undefined-global
-- Thanks to kuli and his Steam guides. Talents:
-- Psyker	02.04.25, https://steamcommunity.com/sharedfiles/filedetails/?id=3094028505

-- Zealot	31.10.24, https://steamcommunity.com/sharedfiles/filedetails/?id=3088553235
-- Ogryn	31.10.24, https://steamcommunity.com/sharedfiles/filedetails/?id=3094034467
-- Veteran	31.10.24, https://steamcommunity.com/sharedfiles/filedetails/?id=3094038976

local mod = get_mod("Enhanced_descriptions")

--[+ Loading colors of Keywords and Numbers +]--
COLORS_Numbers = mod:io_dofile("Enhanced_descriptions/COLORS_Numbers")
-- All Numbers are taken from this file by adding to the value "COLORS_Numbers.".
-- For example, in the game the Damage value is taken from the variable {damage:%s}, which in the file "COLORS_Numbers.lua" is replaced by dmg_var_rgb and to add the highlighted number to the text, we write the damage number to the text as "..COLORS_Numbers.dmg_var_rgb..".

COLORS_KWords = mod:io_dofile("Enhanced_descriptions/Loc_EN/COLORS_KWords")
-- All Keywords are taken from this file by adding to the value "COLORS_KWords.".
-- For example, in the file "COLORS_KWords.lua" the word Damage is replaced by Damage_rgb and to add the highlighted word to the text we write it as "..COLORS_KWords.Damage_rgb.".

	--[+ Translations +]-- Add a line with a file of Keywords translated into your language.
	--[+ French +]--
COLORS_KWords_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/COLORS_KWords_fr")
	--[+ Russian +]--
COLORS_KWords_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/COLORS_KWords_ru")
	--[+ Traditional Chinese +]--
COLORS_KWords_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/COLORS_KWords_tw")
COLORS_KWords2_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/COLORS_KWords2_tw")
	--[+ Simplified Chinese +]--
COLORS_KWords_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/COLORS_KWords_zh_cn")


--[+ Toggle ENHANCED DESCRIPTIONS - Main +]--
local enhanced_descriptions_enabled = mod:get("enhanced_descriptions_enabled")
if enhanced_descriptions_enabled then
	TALENTS_Enh_desc = mod:io_dofile("Enhanced_descriptions/Loc_EN/TALENTS_Enh_desc")
--[+ Translations +]-- The line below is for the Psyker and Zealot Extended Descriptions and after "else" "null" files with lines that "hide" Extended Descriptions.
	--[+ French +]--
	TALENTS_Enh_desc_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/TALENTS_Enh_desc_fr")
	--[+ Russian +]--
	TALENTS_Enh_desc_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/TALENTS_Enh_desc_ru")
	--[+ Traditional Chinese +]--
	TALENTS_Enh_desc_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/TALENTS_Enh_desc_tw")
	--[+ Simplified Chinese +]--
	TALENTS_Enh_desc_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/TALENTS_Enh_desc_zh_cn")
else
	TALENTS_Enh_desc = mod:io_dofile("Enhanced_descriptions/Loc_EN/NULL/TALENTS_Enh_desc_null")
	--[+ French +]--
	TALENTS_Enh_desc_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/NULL/TALENTS_Enh_desc_fr_null")
	--[+ Russian +]--
	TALENTS_Enh_desc_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/NULL/TALENTS_Enh_desc_ru_null")
	--[+ Traditional Chinese +]--
	TALENTS_Enh_desc_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/NULL/TALENTS_Enh_desc_tw_null")
	--[+ Simplified Chinese +]--
	TALENTS_Enh_desc_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/NULL/TALENTS_Enh_desc_zh_cn_null")
end

--[+ Toggle ENHANCED DESCRIPTIONS - Main 2 +]--
local enhanced_descriptions_enabled2 = mod:get("enhanced_descriptions_enabled2")
if enhanced_descriptions_enabled2 then
	TALENTS_Enh_desc2 = mod:io_dofile("Enhanced_descriptions/Loc_EN/TALENTS_Enh_desc2")
--[+ Translations +]-- The line below is for the Veteran and Ogryn Extended Descriptions and after "else" "null" files with lines that "hide" Extended Descriptions.
	--[+ French +]--
	TALENTS_Enh_desc2_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/TALENTS_Enh_desc2_fr")
	--[+ Russian +]--
	TALENTS_Enh_desc2_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/TALENTS_Enh_desc2_ru")
	--[+ Traditional Chinese +]--
	TALENTS_Enh_desc2_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/TALENTS_Enh_desc2_tw")
	--[+ Simplified Chinese +]--
	TALENTS_Enh_desc2_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/TALENTS_Enh_desc2_zh_cn")
else
	TALENTS_Enh_desc2 = mod:io_dofile("Enhanced_descriptions/Loc_EN/NULL/TALENTS_Enh_desc2_null")
	--[+ French +]--
	TALENTS_Enh_desc2_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/NULL/TALENTS_Enh_desc2_fr_null")
	--[+ Russian +]--
	TALENTS_Enh_desc2_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/NULL/TALENTS_Enh_desc2_ru_null")
	--[+ Traditional Chinese +]--
	TALENTS_Enh_desc2_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/NULL/TALENTS_Enh_desc2_tw_null")
	--[+ Simplified Chinese +]--
	TALENTS_Enh_desc2_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/NULL/TALENTS_Enh_desc2_zh_cn_null")
end

--[+ Toggle ENHANCED DESCRIPTIONS - Nodes +]--
local enhanced_descriptions_nodes_enabled = mod:get("enhanced_descriptions_nodes_enabled")
if enhanced_descriptions_nodes_enabled then
	TALENTS_Enh_desc_nodes = mod:io_dofile("Enhanced_descriptions/Loc_EN/TALENTS_Enh_desc_nodes")
--[+ Translations +]-- The line below is for the Extended Node Descriptions and after "else" "null" files with lines that "hide" Extended Descriptions.
	--[+ French +]--
	TALENTS_Enh_desc_nodes_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/TALENTS_Enh_desc_nodes_fr")
	--[+ Russian +]--
	TALENTS_Enh_desc_nodes_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/TALENTS_Enh_desc_nodes_ru")
	--[+ Traditional Chinese +]--
	TALENTS_Enh_desc_nodes_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/TALENTS_Enh_desc_nodes_tw")
	--[+ Simplified Chinese +]--
	TALENTS_Enh_desc_nodes_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/TALENTS_Enh_desc_nodes_zh_cn")
else
	TALENTS_Enh_desc_nodes = mod:io_dofile("Enhanced_descriptions/Loc_EN/NULL/TALENTS_Enh_desc_nodes_null")
	--[+ French +]--
	TALENTS_Enh_desc_nodes_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/NULL/TALENTS_Enh_desc_nodes_fr_null")
	--[+ Russian +]--
	TALENTS_Enh_desc_nodes_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/NULL/TALENTS_Enh_desc_nodes_ru_null")
	--[+ Traditional Chinese +]--
	TALENTS_Enh_desc_nodes_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/NULL/TALENTS_Enh_desc_nodes_tw_null")
	--[+ Simplified Chinese +]--
	TALENTS_Enh_desc_nodes_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/NULL/TALENTS_Enh_desc_nodes_zh_cn_null")
end

--[+ Function to create a localization template +]--
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end

--[+ Getting rid of repeating parts: function(locale, value) return ... end +]--
local function loc_text(text)
	return function(locale, value) return text end
end

local Arrow_down_red = "{#color(255, 35, 5)}{#reset()}"
local Arrow_up_green = "{#color(35, 255, 5)}{#reset()}"
local Arrow_right_ = ""

-- [+ Define localization templates +]--
local localization_templates = {
-- Duplicate the line and translate. For example:
		-- create_template("weap_bb0_ext_en",
			-- {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"en"},
				-- loc_text(COLORS_Numbers.dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies")),
		-- create_template("weap_bb0_ext_YOURLANGUAGE",
			-- {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"YOURLANGUAGE"},
				-- loc_text(COLORS_Numbers.dmg_var_rgb.." к "..COLORS_KWords.Damage_rgb_YOURLANGUAGE.." против врагов в противоосколочной броне.")), <- Don't forget the comma at the end!


--[+ ++TALENT TREE++ +]--
--[+ +MAIN+ +]--
	--[+ Passive +]--	checked 27.05.2025
	-- create_template("talent_tree_main_000_en",
		-- {"loc_glossary_talent_default"}, {"en"},
			-- loc_text("Passive")),
	--[+ Russian - Пассивный +]-- -- руоф Пассив.	checked 27.05.2025
	create_template("talent_tree_main_000_ru",
		{"loc_glossary_talent_default"}, {"ru"},
			loc_text("Пассивный")),
	--[+ Traditional Chinese 被動 +]--
	create_template("talent_tree_main_000_tw",
		{"loc_glossary_talent_default"}, {"zh-tw"},
			loc_text("被動")),
	--[+ Simplified Chinese - 被动 +]--

	--[+ BLITZ +]--	checked 27.05.2025
	-- create_template("talent_tree_main_001_en",
		-- {"loc_glossary_term_tactical"}, {"en"},
			-- loc_text("Blitz")),
	--[+ Russian - Блиц +]--	checked 27.05.2025
	-- create_template("talent_tree_main_001_ru",
		-- {"loc_glossary_term_tactical"}, {"ru"},
			-- loc_text("Блиц")),
	--[+ Traditional Chinese 閃擊 +]--
	create_template("talent_tree_main_001_tw",
		{"loc_glossary_term_tactical"}, {"zh-tw"},
			loc_text("閃擊")),
	--[+ Simplified Chinese - 闪击 +]--

	--[+ AURA +]--	checked 27.05.2025
	-- create_template("talent_tree_main_002_en",
		-- {"loc_glossary_term_aura"}, {"en"},
			-- loc_text("Aura")),
	--[+ Russian - Аура +]--	checked 27.05.2025
	-- create_template("talent_tree_main_002_ru",
		-- {"loc_glossary_term_aura"}, {"ru"},
			-- loc_text("Аура")),
	--[+ Traditional Chinese 光環 +]--
	create_template("talent_tree_main_002_tw",
		{"loc_glossary_term_aura"}, {"zh-tw"},
			loc_text("光環")),
	--[+ Simplified Chinese - 光环 +]--

	--[+ ABILITY +]--	checked 27.05.2025
	-- create_template("talent_tree_main_003_en",
		-- {"loc_glossary_term_class_ability"}, {"en"},
			-- loc_text("Ability")),
	--[+ Russian - Способность +]--	checked 27.05.2025
	-- create_template("talent_tree_main_003_ru",
		-- {"loc_glossary_term_class_ability"}, {"ru"},
			-- loc_text("Способность")),
	--[+ Traditional Chinese 戰鬥技能 +]--
	create_template("talent_tree_main_003_tw",
		{"loc_glossary_term_class_ability"}, {"zh-tw"},
			loc_text("戰鬥技能")),
	--[+ Simplified Chinese - 能力 +]--

	--[+ KEYSTONE +]--	checked 27.05.2025
	-- create_template("talent_tree_main_004_en",
		-- {"loc_glossary_talent_keystone"}, {"en"},
			-- loc_text("Keystone")),
	--[+ Russian - Ключевой талант +]--	checked 27.05.2025
	-- create_template("talent_tree_main_004_ru",
		-- {"loc_glossary_talent_keystone"}, {"ru"},
			-- loc_text("Ключевой талант")),
	--[+ Traditional Chinese 鑰石 +]--
	create_template("talent_tree_main_004_tw",
		{"loc_glossary_talent_keystone"}, {"zh-tw"},
			loc_text("鑰石")),
	--[+ Simplified Chinese - 楔石 +]--

	--[+ (Lock) Locked +]--	checked 27.05.2025
	-- create_template("talent_tree_main_005_en",
		-- {"loc_talent_mechanic_locked"}, {"en"},
			-- loc_text("Locked")),
	--[+ Russian - Закрыт +]-- руоф Заблокир.	checked 27.05.2025
	create_template("talent_tree_main_005_ru",
		{"loc_talent_mechanic_locked"}, {"ru"},
			loc_text("Закрыт")),
	--[+ Traditional Chinese 已鎖定 +]--
	create_template("talent_tree_main_005_tw",
		{"loc_talent_mechanic_locked"}, {"zh-tw"},
			loc_text("已鎖定")),
	--[+ Simplified Chinese - 已锁定 +]--

	--[+ [LMB] Activate +]--	checked 27.05.2025
	-- create_template("talent_tree_main_006_en",
		-- {"loc_talent_menu_tooltip_button_hint_first_level"}, {"en"},
			-- loc_text("Activate")),
	--[+ Russian - Включить +]-- руоф Актив.	checked 27.05.2025
	create_template("talent_tree_main_006_ru",
		{"loc_talent_menu_tooltip_button_hint_first_level"}, {"ru"},
			loc_text("Включить")),
	--[+ Traditional Chinese 啟用 +]--
-- I not sure where to use it.
	create_template("talent_tree_main_006_tw",
		{"loc_talent_menu_tooltip_button_hint_first_level"}, {"zh-tw"},
			loc_text("啟用-")),
	--[+ Simplified Chinese - [LMB] 激活 +]--

	--[+ [RMB] Deactivate +]--	checked 27.05.2025
	-- create_template("talent_tree_main_007_en",
		-- {"loc_talent_menu_tooltip_button_hint_remove_level_first"}, {"en"},
			-- loc_text("Deactivate")),
	--[+ Russian - Отключить +]--	checked 27.05.2025
	-- create_template("talent_tree_main_007_ru",
		-- {"loc_talent_menu_tooltip_button_hint_remove_level_first"}, {"ru"},
			-- loc_text("Отключить")),
	--[+ Traditional Chinese 停用 +]--
-- I not sure where to use it.
	create_template("talent_tree_main_007_tw",
		{"loc_talent_menu_tooltip_button_hint_remove_level_first"}, {"zh-tw"},
			loc_text("停用-")),
	--[+ Simplified Chinese - [RMB] 撤销 +]--
	create_template("talent_tree_main_007_zh_cn",
		{"loc_talent_menu_tooltip_button_hint_remove_level_first"}, {"zh-cn"},
			loc_text("撤销")),

	--[+ [V] View full build  +]--	checked 27.05.2025
	-- create_template("talent_tree_main_008_en",
		-- {"loc_alias_talent_builder_view_hotkey_summary"}, {"en"},
			-- loc_text("View full build")),
	--[+ Russian - Посмотреть весь билд +]-- руоф Осмотреть полную сборку	checked 27.05.2025
	-- create_template("talent_tree_main_008_ru",
		-- {"loc_alias_talent_builder_view_hotkey_summary"}, {"ru"},
			-- loc_text("Посмотреть весь билд")), -- НЕ МЕНЯЕТСЯ!!!
	--[+ Traditional Chinese 查看全部天賦 +]--
	create_template("talent_tree_main_008_tw",
		{"loc_alias_talent_builder_view_hotkey_summary"}, {"zh-tw"},
			loc_text("查看全部天賦")),
	--[+ Simplified Chinese - [v] 查看完整构筑 +]--
	create_template("talent_tree_main_008_zh_cn",
		{"loc_alias_talent_builder_view_hotkey_summary"}, {"zh-cn"},
			loc_text("查看完整构筑")),
	
	--[+ Full build +]--	checked 27.05.2025
	-- create_template("talent_tree_main_009_en",
		-- {"loc_alias_talent_builder_view_popup_title_summary"}, {"en"},
			-- loc_text("Full build")),
	--[+ Russian - Весь билд +]-- руоф Полная сборка	checked 27.05.2025
	-- create_template("talent_tree_main_009_ru",
		-- {"loc_alias_talent_builder_view_popup_title_summary"}, {"en"},
			-- loc_text("Весь билд")), -- НЕ МЕНЯЕТСЯ!!!
	--[+ Traditional Chinese 全部天賦 +]--
	create_template("talent_tree_main_009_tw",
		{"loc_alias_talent_builder_view_popup_title_summary"}, {"zh-tw"},
			loc_text("全部天賦")),
	--[+ Simplified Chinese - 完整构筑 +]--
	create_template("talent_tree_main_009_zh_cn",
		{"loc_alias_talent_builder_view_popup_title_summary"}, {"zh-cn"},
			loc_text("完整构筑")),

--[+ +MODIFIERS+ +]--
	--[+ Operative Modifier +]--	checked 27.05.2025
	-- create_template("talent_tree_main_mods_000_en",
		-- {"loc_glossary_talent_stat"}, {"en"},
			-- loc_text("Operative Modifier")),
	--[+ Russian - Модификатор оперативника +]--	checked 27.05.2025
	-- create_template("talent_tree_main_mods_000_ru",
		-- {"loc_glossary_talent_stat"}, {"ru"},
			-- loc_text("Модификатор оперативника")),
	--[+ Traditional Chinese 幹員修改器 +]--
	create_template("talent_tree_main_mods_000_tw",
		{"loc_glossary_talent_stat"}, {"zh-tw"},
			loc_text("幹員修改器")),
	--[+ Simplified Chinese - 特工修正 +]--

	--[+ ABILITY Modifier +]--	checked 27.05.2025
	-- create_template("talent_tree_main_mods_001_en",
		-- {"loc_glossary_talent_ability_modifier"}, {"en"},
			-- loc_text("Ability Modifier")),
	--[+ Russian - Модификатор способности +]--	checked 27.05.2025
	-- create_template("talent_tree_main_mods_001_ru",
		-- {"loc_glossary_talent_ability_modifier"}, {"ru"},
			-- loc_text("Модификатор способности")),
	--[+ Traditional Chinese 技能修改器 +]--
	create_template("talent_tree_main_mods_001_tw",
		{"loc_glossary_talent_ability_modifier"}, {"zh-tw"},
			loc_text("技能修改器")),
	--[+ Simplified Chinese - 能力修正 +]--

	--[+ KEYSTONE Modifier +]--	checked 27.05.2025
	-- create_template("talent_tree_main_mods_002_en",
		-- {"loc_glossary_talent_keystone_modifier"}, {"en"},
			-- loc_text("Keystone Modifier")),
	--[+ Russian - Модификатор ключевого таланта +]--	checked 27.05.2025
		-- руоф Модификатор краеугольного камня
	create_template("talent_tree_main_mods_002_ru",
		{"loc_glossary_talent_keystone_modifier"}, {"ru"},
			loc_text("Модификатор ключевого таланта")),
	--[+ Traditional Chinese 鑰石修改器 +]--
	create_template("talent_tree_main_mods_002_tw",
		{"loc_glossary_talent_keystone_modifier"}, {"zh-tw"},
			loc_text("鑰石修改器")),
	--[+ Simplified Chinese - 楔石修正 +]--

--[+ +SELECTING THIS...+ +]--
	--[+ BLITZ +]--	checked 27.05.2025
	-- create_template("talent_tree_main_sel_000_en",
		-- {"loc_talent_mechanic_exclusive_tactical"}, {"en"},
			-- loc_text("Selecting this Blitz locks all other Blitzes.")),
	--[+ Russian - Выбор этого Блица закрывает все остальные Блицы. +]--	checked 27.05.2025
		-- руоф Выбор этой Блиц-способности блокирует все остальные Блицы.
	create_template("talent_tree_main_sel_000_ru",
		{"loc_talent_mechanic_exclusive_tactical"}, {"ru"},
			loc_text("Выбор этого Блица закрывает все остальные Блицы.")),
	--[+ Traditional Chinese +]--
	-- 選擇此閃擊技能後將導致其他閃擊技能不可用。
	create_template("talent_tree_main_sel_000_tw",
		{"loc_talent_mechanic_exclusive_tactical"}, {"zh-tw"},
			loc_text("一旦選擇此閃擊，其餘閃擊將被鎖定。")),
	--[+ Simplified Chinese - 锁定闪击 +]--

	--[+ AURA +]--	checked 27.05.2025
	-- create_template("talent_tree_main_sel_001_en",
		-- {"loc_talent_mechanic_exclusive_aura"}, {"en"},
			-- loc_text("Selecting this Aura locks all other Auras.")),
	--[+ Russian - Выбор этой Ауры закрывает все остальные Ауры. +]--	checked 27.05.2025
		-- руоф Выбор этой Ауры блокирует все остальные Ауры.
	create_template("talent_tree_main_sel_001_ru",
		{"loc_talent_mechanic_exclusive_aura"}, {"ru"},
			loc_text("Выбор этой Ауры закрывает все остальные Ауры.")),
	--[+ Traditional Chinese +]--
	-- 選擇此光環後將導致其他光環不可用。
	create_template("talent_tree_main_sel_001_tw",
		{"loc_talent_mechanic_exclusive_aura"}, {"zh-tw"},
			loc_text("一旦選擇此光環，其餘光環將被鎖定。")),
	--[+ Simplified Chinese - 锁定光环 +]--

	--[+ ABILITY +]--	checked 27.05.2025
	-- create_template("talent_tree_main_sel_002_en",
		-- {"loc_talent_mechanic_exclusive_ability"}, {"en"},
			-- loc_text("Selecting this Ability locks all other Abilities.")),
	--[+ Russian - Выбор этой Способности закрывает все остальные Способности. +]--	checked 27.05.2025
		-- руоф Выбор этой способности блокирует все остальные способности.
	create_template("talent_tree_main_sel_002_ru",
		{"loc_talent_mechanic_exclusive_ability"}, {"ru"},
			loc_text("Выбор этой Способности закрывает все остальные Способности.")),
	--[+ Traditional Chinese +]--
	-- 選擇此技能後將導致其他技能不可用。
	create_template("talent_tree_main_sel_002_tw",
		{"loc_talent_mechanic_exclusive_ability"}, {"zh-tw"},
			loc_text("一旦選擇此技能，其餘技能將被鎖定。")),
	--[+ Simplified Chinese - 锁定能力 +]--

	--[+ TALENT +]--	checked 27.05.2025
	-- create_template("talent_tree_main_sel_003_en",
		-- {"loc_talent_mechanic_mutually_exclusive"}, {"en"},
			-- loc_text("Selecting this Talent locks all other Talents.")),
	--[+ Russian - Выбор этого Таланта закрывает другие Таланты. +]--	checked 27.05.2025
		-- руоф Этот талант блокирует некоторые другие таланты.
	create_template("talent_tree_main_sel_003_ru",
		{"loc_talent_mechanic_mutually_exclusive"}, {"ru"},
			loc_text("Выбор этого Таланта закрывает другие Таланты.")),
	--[+ Traditional Chinese +]--
	-- 選擇此天賦後將導致其他天賦不可用。
	create_template("talent_tree_main_sel_003_tw",
		{"loc_talent_mechanic_mutually_exclusive"}, {"zh-tw"},
			loc_text("一旦選擇此天賦，其餘天賦將被鎖定。")),
	--[+ Simplified Chinese - 锁定天赋 +]--

	--[+ KEYSTONE +]--	checked 27.05.2025
	-- create_template("talent_tree_main_sel_004_en",
		-- {"loc_talent_mechanic_exclusive_keystone"}, {"en"},
			-- loc_text("Selecting this Keystone locks all other Keystones.")),
	--[+ Russian - Выбор этого Ключевого таланта закрывает все остальные Ключевые таланты. +]--	checked 27.05.2025
		-- руоф Выбор этого краеугольного камня блокирует все остальные краеугольное камни.
	create_template("talent_tree_main_sel_004_ru",
		{"loc_talent_mechanic_exclusive_keystone"}, {"ru"},
			loc_text("Выбор этого Ключевого таланта закрывает все остальные Ключевые таланты.")),
	--[+ Traditional Chinese +]--
	-- 選擇此鑰石後將導致其他鑰石不可用。
	create_template("talent_tree_main_sel_004_tw",
		{"loc_talent_mechanic_exclusive_keystone"}, {"zh-tw"},
			loc_text("一旦選擇此鑰石，其餘鑰石將被鎖定。")),
	--[+ Simplified Chinese - 锁定楔石 +]--


--[+ +NODES - УЗЛЫ+ +]--
	--[+ Critical Chance Boost +]-- Psyker 1, Veteran 1	checked 27.05.2025
	create_template("talent_tree_oper_mod_006_desc_en",
		{"loc_talent_crit_chance_low_desc"}, {"en"},
			loc_text("{crit_chance:%s} "..COLORS_KWords.Crit_hit_chance_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_CritChncBst_rgb)),
				-- crit_chance:+5%
	--[+ French +]--
	create_template("talent_tree_oper_mod_006_desc_fr",
		{"loc_talent_crit_chance_low_desc"}, {"fr"},
			loc_text("{crit_chance:%s} de "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_CritChncBst_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_006_desc_ru",
		{"loc_talent_crit_chance_low_desc"}, {"ru"},
			loc_text("{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.."."
				..TALENTS_Enh_desc_nodes_ru.ED_CritChncBst_rgb_ru)),
	--[+ Traditional Chinese 暴擊機率增幅 +]--
	create_template("talent_tree_oper_mod_006_desc_tw",
		{"loc_talent_crit_chance_low_desc"}, {"zh-tw"},
			loc_text("{crit_chance:%s} "..COLORS_KWords_tw.Crit_hit_chance_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_CritChncBst_rgb_tw)),
	--[+ Simplified Chinese 暴击几率强化 +]--
	create_template("talent_tree_oper_mod_006_desc_zh_cn",
		{"loc_talent_crit_chance_low_desc"}, {"zh-cn"},
			loc_text("{crit_chance:%s} "..COLORS_KWords_zh_cn.Crit_chance_rgb_zh_cn.."。"..TALENTS_Enh_desc_nodes_zh_cn.ED_CritChncBst_rgb_zh_cn)),

	--[+ Health Boost Low +]-- Veteran 2	checked 27.05.2025
	create_template("talent_tree_oper_mod_005_l_desc_en",
		{"loc_talent_health_low_desc"}, {"en"},
			loc_text("{health:%s} "..COLORS_KWords.Health_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_HeathBst_L_rgb)),
				-- health:+5%
	--[+ French +]--
	create_template("talent_tree_oper_mod_005_l_desc_fr",
		{"loc_talent_health_low_desc"}, {"fr"},
			loc_text("{health:%s} de "..COLORS_KWords_fr.Health_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_HeathBst_L_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_005_l_desc_ru",
		{"loc_talent_health_low_desc"}, {"ru"},
			loc_text("{health:%s} к "..COLORS_KWords_ru.Health_rgb_ru.."."
				..TALENTS_Enh_desc_nodes_ru.ED_HeathBst_L_rgb_ru)),
	--[+ Traditional Chinese 生命增幅 +]--
	create_template("talent_tree_oper_mod_005_l_desc_tw",
		{"loc_talent_health_low_desc"}, {"zh-tw"},
			loc_text("{health:%s} "..COLORS_KWords_tw.Health_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_HeathBst_L_rgb_tw)),
	--[+ Simplified Chinese 生命强化 低 +]--
	create_template("talent_tree_oper_mod_005_l_desc_zh_cn",
		{"loc_talent_health_low_desc"}, {"zh-cn"},
			loc_text("{health:%s} "..COLORS_KWords_zh_cn.Health_rgb_zh_cn.."。"..TALENTS_Enh_desc_nodes_zh_cn.ED_HeathBst_L_rgb_zh_cn)),

	--[+ Health Boost Medium +]-- Psyker 1, Zealot 1	checked 27.05.2025
	create_template("talent_tree_oper_mod_005_m_desc_en",
		{"loc_talent_health_medium_desc"}, {"en"},
			loc_text("{health:%s} "..COLORS_KWords.Health_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_HeathBst_M_rgb)),
				-- health:+10%
	--[+ French +]--
	create_template("talent_tree_oper_mod_005_m_desc_fr",
		{"loc_talent_health_medium_desc"}, {"fr"},
			loc_text("{health:%s} de "..COLORS_KWords_fr.Health_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_HeathBst_M_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_005_m_desc_ru",
		{"loc_talent_health_medium_desc"}, {"ru"},
			loc_text("{health:%s} к "..COLORS_KWords_ru.Health_rgb_ru.."."
				..TALENTS_Enh_desc_nodes_ru.ED_HeathBst_M_rgb_ru)),
	--[+ Traditional Chinese 生命增幅 +]--
	create_template("talent_tree_oper_mod_005_m_desc_tw",
		{"loc_talent_health_medium_desc"}, {"zh-tw"},
			loc_text("{health:%s} "..COLORS_KWords_tw.Health_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_HeathBst_M_rgb_tw)),
	--[+ Simplified Chinese 生命强化 中 +]--
	create_template("talent_tree_oper_mod_005_m_desc_zh_cn",
		{"loc_talent_health_medium_desc"}, {"zh-cn"},
			loc_text("{health:%s} "..COLORS_KWords_zh_cn.Health_rgb_zh_cn.."。"..TALENTS_Enh_desc_nodes_zh_cn.ED_HeathBst_M_rgb_zh_cn)),

-- NO LONGER USED!!!	checked 27.05.2025
	--[+ Heavy Melee Damage Boost Low +]--
	-- create_template("talent_tree_oper_mod_014_l_desc_en",
		-- {"loc_talent_melee_heavy_damage_low_desc"}, {"en"},
			-- loc_text("{melee_heavy_damage:%s} Heavy Melee "..COLORS_KWords.Damage_rgb.."."
				-- ..TALENTS_Enh_desc_nodes.ED_HMeleeDmgBst_LM_rgb)),
				-- melee_heavy_damage:+5% -- Ogryn
	--[+ French +]--
	-- create_template("talent_tree_oper_mod_014_l_desc_fr",
		-- {"loc_talent_melee_heavy_damage_low_desc"}, {"fr"},
			-- loc_text("{melee_heavy_damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." d'Attaque Puissante."..TALENTS_Enh_desc_nodes_fr.ED_HMeleeDmgBst_LM_rgb_fr)),
	--[+ Russian +]--
	-- create_template("talent_tree_oper_mod_014_l_desc_ru",
		-- {"loc_talent_melee_heavy_damage_low_desc"}, {"ru"},
			-- loc_text("{melee_heavy_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." тяжёлых атак ближнего боя."
				-- ..TALENTS_Enh_desc_nodes_ru.ED_HMeleeDmgBst_LM_rgb_ru)),
	--[+ Traditional Chinese 重擊傷害增幅(小) +]--
	-- It seems like it is no longer in use?
	-- create_template("talent_tree_oper_mod_014_l_desc_tw",
		-- {"loc_talent_melee_heavy_damage_low_desc"}, {"zh-tw"},
			-- loc_text("{melee_heavy_damage:%s} "..COLORS_KWords_tw.Damage_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_HMeleeDmgBst_LM_rgb_tw)),

	--[+ Heavy Melee Damage Boost Medium +]--
	-- create_template("talent_tree_oper_mod_014_m_desc_en",
		-- {"loc_talent_melee_heavy_damage_medium_desc"}, {"en"},
			-- loc_text("{melee_heavy_damage:%s} Heavy Melee "..COLORS_KWords.Damage_rgb.."."
				-- ..TALENTS_Enh_desc_nodes.ED_HMeleeDmgBst_LM_rgb)),
				-- melee_heavy_damage:+10% -- Ogryn
	--[+ French +]--
	-- create_template("talent_tree_oper_mod_014_m_desc_fr",
		-- {"loc_talent_melee_heavy_damage_medium_desc"}, {"fr"},
			-- loc_text("{melee_heavy_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." d'Attaque Puissante."..TALENTS_Enh_desc_nodes_fr.ED_HMeleeDmgBst_LM_rgb_fr)),
	--[+ Russian +]--
	-- create_template("talent_tree_oper_mod_014_m_desc_ru",
		-- {"loc_talent_melee_heavy_damage_medium_desc"}, {"ru"},
			-- loc_text("{melee_heavy_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." тяжёлых атак ближнего боя."
				-- ..TALENTS_Enh_desc_nodes_ru.ED_HMeleeDmgBst_LM_rgb_ru)),
	--[+ Traditional Chinese 重擊傷害增幅(中) +]--
	-- create_template("talent_tree_oper_mod_014_m_desc_tw",
		-- {"loc_talent_melee_heavy_damage_medium_desc"}, {"zh-tw"},
			-- loc_text("{melee_heavy_damage:%s} "..COLORS_KWords_tw.Damage_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_HMeleeDmgBst_LM_rgb_tw)),
-- /NO LONGER USED!!!

	--[+ Inspiring Presence +]-- Veteran 1	checked 27.05.2025
	create_template("talent_tree_oper_mod_003_desc_en",
		{"loc_talent_coherency_regen_low_desc"}, {"en"},
			loc_text("{coherency_regen:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment for you and Allies in "..COLORS_KWords.Coherency_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_InspiringP_rgb)),
				-- coherency_regen:+10%
	--[+ French +]--
	create_template("talent_tree_oper_mod_003_desc_fr",
		{"loc_talent_coherency_regen_low_desc"}, {"fr"},
			loc_text("{coherency_regen:%s} de Vitesse de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour vous et vos alliés en syntonie."..TALENTS_Enh_desc_nodes_fr.ED_InspiringP_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_003_desc_ru",
		{"loc_talent_coherency_regen_low_desc"}, {"ru"},
			loc_text("{coherency_regen:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восполняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."
				..TALENTS_Enh_desc_nodes_ru.ED_InspiringP_rgb_ru)),
	--[+ Traditional Chinese 鼓舞人心 +]--
	create_template("talent_tree_oper_mod_003_desc_tw",
		{"loc_talent_coherency_regen_low_desc"}, {"zh-tw"},
			loc_text("{coherency_regen:%s} "..COLORS_KWords_tw.Toughness_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_InspiringP_rgb_tw)),
	--[+ Simplified Chinese 振奋人心 +]--
	create_template("talent_tree_oper_mod_005_m_desc_zh_cn",
		{"loc_talent_coherency_regen_low_desc"}, {"zh-cn"},
			loc_text("你和与你"..COLORS_KWords_zh_cn.Coherency_rgb_zh_cn.."的盟友 {coherency_regen:%s} "..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."回复。"..TALENTS_Enh_desc_nodes_zh_cn.ED_InspiringP_rgb_zh_cn)),

	--[+ Melee Damage Boost Low +]-- Veteran 1, Zealot 2	checked 27.05.2025
	create_template("talent_tree_oper_mod_008_desc_en",
		{"loc_talent_melee_damage_boost_low_desc"}, {"en"},
			loc_text("{melee_damage:%s} Melee "..COLORS_KWords.Damage_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_MeleeDmgBst_L_M_rgb)),
				-- melee_damage:+5%
	--[+ French +]--
	create_template("talent_tree_oper_mod_008_desc_fr",
		{"loc_talent_melee_damage_boost_low_desc"}, {"fr"},
			loc_text("{melee_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée."..TALENTS_Enh_desc_nodes_fr.ED_MeleeDmgBst_L_M_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_008_desc_ru",
		{"loc_talent_melee_damage_boost_low_desc"}, {"ru"},
			loc_text("{melee_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." атак ближнего боя."
				..TALENTS_Enh_desc_nodes_ru.ED_MeleeDmgBst_L_M_rgb_ru)),
	--[+ Traditional Chinese 近戰傷害增幅 +]--
	create_template("talent_tree_oper_mod_008_desc_tw",
		{"loc_talent_melee_damage_boost_low_desc"}, {"zh-tw"},
			loc_text("{melee_damage:%s} "..COLORS_KWords_tw.Damage_melee_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_MeleeDmgBst_L_M_rgb_tw)),
	--[+ Simplified Chinese 近战伤害强化 低 +]--
	create_template("talent_tree_oper_mod_008_desc_zh_cn",
		{"loc_talent_melee_damage_boost_low_desc"}, {"zh-cn"},
			loc_text("{melee_damage:%s} 近战"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。"..TALENTS_Enh_desc_nodes_zh_cn.ED_MeleeDmgBst_L_M_rgb_zh_cn)),

	--[+ Melee Damage Boost Medium +]-- Veteran 1, Ogryn 1	checked 27.05.2025
	create_template("talent_tree_oper_mod_008_desc_en",
		{"loc_talent_melee_damage_boost_medium_desc"}, {"en"},
			loc_text("{melee_damage:%s} Melee "..COLORS_KWords.Damage_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_MeleeDmgBst_L_M_rgb)),
				-- melee_damage:+10%
	--[+ French +]--
	create_template("talent_tree_oper_mod_008_desc_fr",
		{"loc_talent_melee_damage_boost_medium_desc"}, {"fr"},
			loc_text("{melee_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée."..TALENTS_Enh_desc_nodes_fr.ED_MeleeDmgBst_L_M_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_008_desc_ru",
		{"loc_talent_melee_damage_boost_medium_desc"}, {"ru"},
			loc_text("{melee_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." атак ближнего боя."
				..TALENTS_Enh_desc_nodes_ru.ED_MeleeDmgBst_L_M_rgb_ru)),
	--[+ Traditional Chinese 近戰傷害增幅(中) +]--	
	create_template("talent_tree_oper_mod_008_desc_tw",
		{"loc_talent_melee_damage_boost_medium_desc"}, {"zh-tw"},
			loc_text("{melee_damage:%s} "..COLORS_KWords_tw.Damage_melee_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_MeleeDmgBst_L_M_rgb_tw)),
	--[+ Simplified Chinese 近战伤害强化 中 +]--
	create_template("talent_tree_oper_mod_008_desc_zh_cn",
		{"loc_talent_melee_damage_boost_medium_desc"}, {"zh-cn"},
			loc_text("{melee_damage:%s} 近战"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。"..TALENTS_Enh_desc_nodes_zh_cn.ED_MeleeDmgBst_L_M_rgb_zh_cn)),

	--[+ Movement Speed Boost +]-- Psyker 1, Veteran 1, Zealot 2	checked 27.05.2025
	create_template("talent_tree_oper_mod_007_desc_en",
		{"loc_talent_movement_speed_low_desc"}, {"en"},
			loc_text("{movement_speed:%s} Movement Speed."
				..TALENTS_Enh_desc_nodes.ED_MoveSpdBst_rgb)),
				-- movement_speed:+5%
	--[+ French +]--
	create_template("talent_tree_oper_mod_007_desc_fr",
		{"loc_talent_movement_speed_low_desc"}, {"fr"},
			loc_text("{movement_speed:%s} de Vitesse de déplacement."..TALENTS_Enh_desc_nodes_fr.ED_MoveSpdBst_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_007_desc_ru",
		{"loc_talent_movement_speed_low_desc"}, {"ru"},
			loc_text("{movement_speed:%s} к скорости движения."
				..TALENTS_Enh_desc_nodes_ru.ED_MoveSpdBst_rgb_ru)),
	--[+ Traditional Chinese 移動速度增幅 +]--
	create_template("talent_tree_oper_mod_007_desc_tw",
		{"loc_talent_movement_speed_low_desc"}, {"zh-tw"},
			loc_text("{movement_speed:%s} 移動速度提升。" .. TALENTS_Enh_desc_nodes_tw.ED_MoveSpdBst_rgb_tw)),
	--[+ Simplified Chinese 移动速度强化 +]--
	create_template("talent_tree_oper_mod_007_desc_zh_cn",
		{"loc_talent_movement_speed_low_desc"}, {"zh-cn"},
			loc_text("{movement_speed:%s} 移动速度。"..TALENTS_Enh_desc_nodes_zh_cn.ED_MoveSpdBst_rgb_zh_cn)),

	--[+ Peril Resistance +]-- Psyker 3	checked 27.05.2025
	create_template("talent_tree_oper_mod_001_desc_en",
		{"loc_talent_warp_charge_low_desc"}, {"en"},
			loc_text("{warp_charge:%s} "..COLORS_KWords.Peril_rgb.." Generation."
				..TALENTS_Enh_desc_nodes.ED_PerilRes_rgb)),
				-- warp_charge:-5%
	--[+ French +]--
	create_template("talent_tree_oper_mod_001_desc_fr",
		{"loc_talent_warp_charge_low_desc"}, {"fr"},
			loc_text("{warp_charge:%s} de Génération de "..COLORS_KWords_fr.Peril_rgb_fr.." ."..TALENTS_Enh_desc_nodes_fr.ED_PerilRes_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_001_desc_ru",
		{"loc_talent_warp_charge_low_desc"}, {"ru"},
			loc_text("{warp_charge:%s} генерации "..COLORS_KWords_ru.Peril_rgb_ru.."."
				..TALENTS_Enh_desc_nodes_ru.ED_PerilRes_rgb_ru)),
	--[+ Traditional Chinese 反噬抗性 +]--
	create_template("talent_tree_oper_mod_001_desc_tw",
		{"loc_talent_warp_charge_low_desc"}, {"zh-tw"},
			loc_text("{warp_charge:%s} "..COLORS_KWords_tw.Peril_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_PerilRes_rgb_tw)),
	--[+ Simplified Chinese 危机值抗性 +]--
	create_template("talent_tree_oper_mod_001_desc_zh_cn",
		{"loc_talent_warp_charge_low_desc"}, {"zh-cn"},
			loc_text("{warp_charge:%s} "..COLORS_KWords_zh_cn.Peril_rgb_zh_cn.."产生。"..TALENTS_Enh_desc_nodes_zh_cn.ED_PerilRes_rgb_zh_cn)),

	--[+ Ranged Damage Boost Low +]-- Psyker 1, Veteran 2	checked 27.05.2025
	create_template("talent_tree_oper_mod_004l_desc_en",
		{"loc_talent_ranged_damage_low_desc"}, {"en"},
			loc_text("{ranged_damage:%s} Ranged "..COLORS_KWords.Damage_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_RangDmgBst_rgb)),
				-- ranged_damage:+5%
	--[+ French +]--
	create_template("talent_tree_oper_mod_004l_desc_fr",
		{"loc_talent_ranged_damage_low_desc"}, {"fr"},
			loc_text("{ranged_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de distance."..TALENTS_Enh_desc_nodes_fr.ED_RangDmgBst_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_004l_desc_ru",
		{"loc_talent_ranged_damage_low_desc"}, {"ru"},
			loc_text("{ranged_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." дальнего боя."
				..TALENTS_Enh_desc_nodes_ru.ED_RangDmgBst_rgb_ru)),
	--[+ Traditional Chinese 遠程傷害增幅(小) +]--
		create_template("talent_tree_oper_mod_004l_desc_tw",
		{"loc_talent_ranged_damage_low_desc"}, {"zh-tw"},
			loc_text("{ranged_damage:%s}"..COLORS_KWords_tw.Damage_ranged_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_RangDmgBst_rgb_tw)),
	--[+ Simplified Chinese 远程伤害强化 低 +]--
	create_template("talent_tree_oper_mod_004l_desc_zh_cn",
		{"loc_talent_ranged_damage_low_desc"}, {"zh-cn"},
			loc_text("{ranged_damage:%s} 远程"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。"..TALENTS_Enh_desc_nodes_zh_cn.ED_RangDmgBst_rgb_zh_cn)),

	--[+ Ranged Damage Boost Medium +]-- Ogryn 1	checked 27.05.2025
	create_template("talent_tree_oper_mod_004m_desc_en",
		{"loc_talent_ranged_damage_medium_desc"}, {"en"},
			loc_text("{ranged_damage:%s} Ranged "..COLORS_KWords.Damage_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_RangDmgBst_rgb)),
				-- ranged_damage:+5%
	--[+ French +]--
	create_template("talent_tree_oper_mod_004m_desc_fr",
		{"loc_talent_ranged_damage_medium_desc"}, {"fr"},
			loc_text("{ranged_damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." de distance."..TALENTS_Enh_desc_nodes_fr.ED_RangDmgBst_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_004m_desc_ru",
		{"loc_talent_ranged_damage_medium_desc"}, {"ru"},
			loc_text("{ranged_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." дальнего боя."
				..TALENTS_Enh_desc_nodes_ru.ED_RangDmgBst_rgb_ru)),
	--[+ Traditional Chinese 遠程傷害增幅(中) +]--
	create_template("talent_tree_oper_mod_004m_desc_tw",
		{"loc_talent_ranged_damage_medium_desc"}, {"zh-tw"},
			loc_text("{ranged_damage:%s} "..COLORS_KWords_tw.Damage_ranged_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_RangDmgBst_rgb_tw)),
	--[+ Simplified Chinese 远程伤害强化 中 +]--
	create_template("talent_tree_oper_mod_004m_desc_zh_cn",
		{"loc_talent_ranged_damage_medium_desc"}, {"zh-cn"},
		loc_text("{ranged_damage:%s} 远程"..COLORS_KWords_zh_cn.Damage_rgb_zh_cn.."。"..TALENTS_Enh_desc_nodes_zh_cn.ED_RangDmgBst_rgb_zh_cn)),

	--[+ Reload Boost +]-- Ogryn 1, Veteran 1	checked 27.05.2025
	create_template("talent_tree_oper_mod_011_desc_en",
		{"loc_talent_reload_speed_low_desc"}, {"en"},
			loc_text("{reload_speed:%s} Reload Speed."
				..TALENTS_Enh_desc_nodes.ED_ReloadBst_rgb)),
				-- reload_speed: +5%
	--[+ French +]--
	create_template("talent_tree_oper_mod_011_desc_fr",
		{"loc_talent_reload_speed_low_desc"}, {"fr"},
			loc_text("{reload_speed:%s} de vitesse de rechargement."..TALENTS_Enh_desc_nodes_fr.ED_ReloadBst_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_011_desc_ru",
		{"loc_talent_reload_speed_low_desc"}, {"ru"},
			loc_text("{reload_speed:%s} к скорости перезарядки."
				..TALENTS_Enh_desc_nodes_ru.ED_ReloadBst_rgb_ru)),
	--[+ Traditional Chinese 換彈速度增幅 +]--
	create_template("talent_tree_oper_mod_011_desc_tw",
		{"loc_talent_reload_speed_low_desc"}, {"zh-tw"},
			loc_text("{reload_speed:%s} 換彈速度增幅" .. TALENTS_Enh_desc_nodes_tw.ED_ReloadBst_rgb_tw)),
	--[+ Simplified Chinese 装弹强化 +]--
	create_template("talent_tree_oper_mod_011_desc_zh_cn",
		{"loc_talent_reload_speed_low_desc"}, {"zh-cn"},
			loc_text("{reload_speed:%s} 装弹速度。"..TALENTS_Enh_desc_nodes_zh_cn.ED_ReloadBst_rgb_zh_cn)),

	--[+ Rending Boost +]-- Ogryn 1	checked 27.05.2025
	create_template("talent_tree_oper_mod_013_desc_en",
		{"loc_talent_armor_pen_low_desc"}, {"en"},
			loc_text("{rending:%s} "..COLORS_KWords.Rending_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_RendingBst_rgb)),
				-- rending: +5%
	--[+ French +]--
	create_template("talent_tree_oper_mod_013_desc_fr",
		{"loc_talent_armor_pen_low_desc"}, {"fr"},
			loc_text("{rending:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_RendingBst_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_013_desc_ru",
		{"loc_talent_armor_pen_low_desc"}, {"ru"},
			loc_text("{rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.."."
				..TALENTS_Enh_desc_nodes_ru.ED_RendingBst_rgb_ru)),
	--[+ Traditional Chinese 撕裂增幅 +]--
	create_template("talent_tree_oper_mod_013_desc_tw",
		{"loc_talent_armor_pen_low_desc"}, {"zh-tw"},
			loc_text("{rending:%s} "..COLORS_KWords_tw.Rending_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_RendingBst_rgb_tw)),
	--[+ Simplified Chinese 撕裂强化 +]--
	create_template("talent_tree_oper_mod_013_desc_zh_cn",
		{"loc_talent_armor_pen_low_desc"}, {"zh-cn"},
			loc_text("{rending:%s} "..COLORS_KWords_zh_cn.Rending_rgb_zh_cn.."。"..TALENTS_Enh_desc_nodes_zh_cn.ED_RendingBst_rgb_zh_cn)),

	--[+ Stamina Boost +]-- Veteran 1, Zealot 1	checked 27.05.2025
	create_template("talent_tree_oper_mod_009_desc_en",
		{"loc_talent_stamina_low_desc"}, {"en"},
			loc_text("{stamina:%s} "..COLORS_KWords.Stamina_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_StaminaBst_rgb)),
				-- stamina: +1
	--[+ French +]--
	create_template("talent_tree_oper_mod_009_desc_fr",
		{"loc_talent_stamina_low_desc"}, {"fr"},
			loc_text("{stamina:%s} "..COLORS_KWords_fr.Stamina_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_StaminaBst_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_009_desc_ru",
		{"loc_talent_stamina_low_desc"}, {"ru"},
			loc_text("{stamina:%s} к "..COLORS_KWords_ru.Stamina_rgb_ru.."."
				..TALENTS_Enh_desc_nodes_ru.ED_StaminaBst_rgb_ru)),
	--[+ Traditional Chinese 耐力增幅 +]--
	create_template("talent_tree_oper_mod_009_desc_tw",
		{"loc_talent_stamina_low_desc"}, {"zh-tw"},
			loc_text("{stamina:%s} "..COLORS_KWords_tw.Stamina_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_StaminaBst_rgb_tw)),
	--[+ Simplified Chinese 体力强化 +]--
	create_template("talent_tree_oper_mod_009_desc_zh_cn",
		{"loc_talent_stamina_low_desc"}, {"zh-cn"},
			loc_text("{stamina:%s} "..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."。"..TALENTS_Enh_desc_nodes_zh_cn.ED_StaminaBst_rgb_zh_cn)),

	--[+ Stamina Regeneration Boost +]-- Veteran 1	checked 27.05.2025
	create_template("talent_tree_oper_mod_012_desc_en",
		{"loc_talent_stamina_regen_delay_desc"}, {"en"},
			loc_text("{duration:%s} seconds "..COLORS_KWords.Stamina_rgb.." Regeneration Delay Reduction."
				..TALENTS_Enh_desc_nodes.ED_StamRegenBst_rgb)),
				-- duration: 0.25
	--[+ French +]--
	create_template("talent_tree_oper_mod_012_desc_fr",
		{"loc_talent_stamina_regen_delay_desc"}, {"fr"},
			loc_text("{duration:%s} secondes de réduction du délai de régénération d'"..COLORS_KWords_fr.Stamina_rgb_fr.." ."..TALENTS_Enh_desc_nodes_fr.ED_StamRegenBst_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_012_desc_ru",
		{"loc_talent_stamina_regen_delay_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_minus_rgb.."{duration:%s} секунд от задержки восстановления "..COLORS_KWords_ru.Stamina_rgb_ru.."."
				..TALENTS_Enh_desc_nodes_ru.ED_StamRegenBst_rgb_ru)),
	--[+ Traditional Chinese 耐力恢復增幅 +]--
	create_template("talent_tree_oper_mod_012_desc_tw",
		{"loc_talent_stamina_regen_delay_desc"}, {"zh-tw"},
			loc_text("{duration:%s} 秒 "..COLORS_KWords_tw.Stamina_rgb_tw.." 再生延遲減少。" .. TALENTS_Enh_desc_nodes_tw.ED_StamRegenBst_rgb_tw)),
	--[+ Simplified Chinese 体力回复强化 +]--
	create_template("talent_tree_oper_mod_012_desc_zh_cn",
		{"loc_talent_stamina_regen_delay_desc"}, {"zh-cn"},
			loc_text(COLORS_Numbers.n_minus_rgb.."{duration:%s} 秒"..COLORS_KWords_zh_cn.Stamina_rgb_zh_cn.."回复延迟。"..TALENTS_Enh_desc_nodes_zh_cn.ED_StamRegenBst_rgb_zh_cn)),

	--[+ Suppression Boost +]-- Veteran 1, Zealot 1	checked 27.05.2025
	create_template("talent_tree_oper_mod_010_desc_en",
		{"loc_talent_suppression_low_desc"}, {"en"},
			loc_text("{suppression:%s} Suppression Dealt to enemies."
				..TALENTS_Enh_desc_nodes.ED_SuppressionBst_rgb)),
				-- suppression: +25%
	--[+ French +]--
	create_template("talent_tree_oper_mod_010_desc_fr",
		{"loc_talent_suppression_low_desc"}, {"fr"},
			loc_text("{suppression:%s} de suppression infligé."..TALENTS_Enh_desc_nodes_fr.ED_SuppressionBst_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_010_desc_ru",
		{"loc_talent_suppression_low_desc"}, {"ru"},
			loc_text("{suppression:%s} к подавлению, применяемому к врагам."
				..TALENTS_Enh_desc_nodes_ru.ED_SuppressionBst_rgb_ru)),
	--[+ Traditional Chinese 壓制增幅 +]--
	create_template("talent_tree_oper_mod_010_desc_tw",
		{"loc_talent_suppression_low_desc"}, {"zh-tw"},
			loc_text("{suppression:%s} 壓制增幅。" .. TALENTS_Enh_desc_nodes_tw.ED_SuppressionBst_rgb_tw)),
	--[+ Simplified Chinese 压制强化 +]--
	create_template("talent_tree_oper_mod_010_desc_zh_cn",
		{"loc_talent_suppression_low_desc"}, {"zh-cn"},
			loc_text("{suppression:%s} 对敌人造成的压制效果。"..TALENTS_Enh_desc_nodes_zh_cn.ED_SuppressionBst_rgb_zh_cn)),

	--[+ Toughness Boost Low +]-- Psyker 5, Ogryn 1, Veteran 1, Zealot 5	checked 27.05.2025
	create_template("talent_tree_oper_mod_000_l_desc_en",
		{"loc_talent_toughness_boost_low_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_TghnsBst_L_rgb)),
				-- toughness: +15%
	--[+ French +]--
	create_template("talent_tree_oper_mod_000_l_desc_fr",
		{"loc_talent_toughness_boost_low_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_TghnsBst_L_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_000_l_desc_ru",
		{"loc_talent_toughness_boost_low_desc"}, {"ru"},
			loc_text("{toughness:%s} к "..COLORS_KWords_ru.Toughness_rgb_ru.."."
				..TALENTS_Enh_desc_nodes_ru.ED_TghnsBst_L_rgb_ru)),
	--[+ Traditional Chinese 韌性增幅(小) +]--
	create_template("talent_tree_oper_mod_000_l_desc_tw",
		{"loc_talent_toughness_boost_low_desc"}, {"zh-tw"},
			loc_text("{toughness:%s} "..COLORS_KWords_tw.Toughness_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_TghnsBst_L_rgb_tw)),
	--[+ Simplified Chinese - 韧性强化 低 +]--
	create_template("talent_tree_oper_mod_000_l_desc_zh_cn",
		{"loc_talent_toughness_boost_low_desc"}, {"zh-cn"},
			loc_text("{toughness:%s} "..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."。"..TALENTS_Enh_desc_nodes_zh_cn.ED_TghnsBst_L_rgb_zh_cn)),

	--[+ Toughness Boost Medium +]-- Ogryn 2, Veteran 2	checked 27.05.2025
	create_template("talent_tree_oper_mod_000_m_desc_en",
		{"loc_talent_toughness_boost_medium_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_TghnsBst_M_rgb)),
				-- toughness:+25%
	--[+ French +]--
	create_template("talent_tree_oper_mod_000_m_desc_fr",
		{"loc_talent_toughness_boost_medium_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_TghnsBst_M_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_000_m_desc_ru",
		{"loc_talent_toughness_boost_medium_desc"}, {"ru"},
			loc_text("{toughness:%s} к "..COLORS_KWords_ru.Toughness_rgb_ru.."."
				..TALENTS_Enh_desc_nodes_ru.ED_TghnsBst_M_rgb_ru)),
	--[+ Traditional Chinese 韌性增幅(中) +]--
	create_template("talent_tree_oper_mod_000_m_desc_tw",
		{"loc_talent_toughness_boost_medium_desc"}, {"zh-tw"},
			loc_text("{toughness:%s} "..COLORS_KWords_tw.Toughness_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_TghnsBst_M_rgb_tw)),
	--[+ Simplified Chinese -韧性强化 中 +]--
	create_template("talent_tree_oper_mod_000_m_desc_ru",
		{"loc_talent_toughness_boost_medium_desc"}, {"zh-cn"},
		loc_text("{toughness:%s} "..COLORS_KWords_zh_cn.Toughness_rgb_zh_cn.."。"..TALENTS_Enh_desc_nodes_zh_cn.ED_TghnsBst_M_rgb_zh_cn)),

	--[+ Toughness Damage Reduction Low +]-- Psyker 5, Veteran 1, Zealot 4, Ogryn 1	checked 27.05.2025
	create_template("talent_tree_oper_mod_002_l_desc_en",
		{"loc_talent_toughness_damage_reduction_low_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_TghnsDmgRed_LM_rgb)),
				-- toughness:+5%
	--[+ French +]--
	create_template("talent_tree_oper_mod_002_l_desc_fr",
		{"loc_talent_toughness_damage_reduction_low_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_TghnsDmgRed_LM_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_002_l_desc_ru",
		{"loc_talent_toughness_damage_reduction_low_desc"}, {"ru"},
			loc_text("{toughness:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.."."
				..TALENTS_Enh_desc_nodes_ru.ED_TghnsDmgRed_LM_rgb_ru)),
	--[+ Traditional Chinese 韌性減傷增幅(小) +]--
	create_template("talent_tree_oper_mod_002_l_desc_tw",
		{"loc_talent_toughness_damage_reduction_low_desc"}, {"zh-tw"},
			loc_text("{toughness:%s} "..COLORS_KWords_tw.Toughness_dmg_red_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_TghnsDmgRed_LM_rgb_tw)),
	--[+ Simplified Chinese - 韧性伤害减免 低 +]--
	create_template("talent_tree_oper_mod_002_l_desc_zh_cn",
		{"loc_talent_toughness_damage_reduction_low_desc"}, {"zh-cn"},
			loc_text("{toughness:%s} "..COLORS_KWords_zh_cn.Toughness_dmg_red_u_rgb_zh_cn.."。"..TALENTS_Enh_desc_nodes_zh_cn.ED_TghnsDmgRed_LM_rgb_zh_cn)),

	--[+ Toughness Damage Reduction Medium +]-- Ogryn 1, Veteran 1	checked 27.05.2025
	create_template("talent_tree_oper_mod_002_m_desc_en",{"loc_talent_toughness_damage_reduction_medium_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.."."
				..TALENTS_Enh_desc_nodes.ED_TghnsDmgRed_LM_rgb)),
				-- toughness:+10%
	--[+ French +]--
	create_template("talent_tree_oper_mod_002_m_desc_fr",{"loc_talent_toughness_damage_reduction_medium_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_TghnsDmgRed_LM_rgb_fr)),
	--[+ Russian +]--	checked 27.05.2025
	create_template("talent_tree_oper_mod_002_m_desc_en",{"loc_talent_toughness_damage_reduction_medium_desc"}, {"ru"},
			loc_text("{toughness:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.."."
				..TALENTS_Enh_desc_nodes_ru.ED_TghnsDmgRed_LM_rgb_ru)),
	--[+ Traditional Chinese 韌性減傷增幅(中) +]--
	create_template("talent_tree_oper_mod_002_m_desc_tw",
		{"loc_talent_toughness_damage_reduction_medium_desc"}, {"zh-tw"},
			loc_text("{toughness:%s} "..COLORS_KWords_tw.Toughness_dmg_red_rgb_tw.."。"..TALENTS_Enh_desc_nodes_tw.ED_TghnsDmgRed_LM_rgb_tw)),
	--[+ Simplified Chinese - 韧性伤害减免 中 +]--
	create_template("talent_tree_oper_mod_002_m_desc_zh_cn",{"loc_talent_toughness_damage_reduction_medium_desc"}, {"zh-cn"},
			loc_text("{toughness:%s} "..COLORS_KWords_zh_cn.Toughness_dmg_red_u_rgb_zh_cn.."。"..TALENTS_Enh_desc_nodes_zh_cn.ED_TghnsDmgRed_LM_rgb_zh_cn)),


--[+ ++PSYKER - ПСАЙКЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Brain Burst +]--	checked 27.05.2025
	create_template("talent_tree_psy_blitz0_000_desc_en",
		{"loc_ability_psyker_smite_description_new"}, {"en"},
			loc_text("Charge up your Psychic Power and release it to deal high "..COLORS_KWords.Damage_rgb.." to a Single Enemy.\n"
				..Arrow_up_green.." Effective against Flak and Carapace Armoured Enemies.\n"
				..Arrow_up_green.." Higher armor "..COLORS_KWords.Damage_rgb.." against Maniac and Unyielding.\n"
				..Arrow_up_green.." Always scores a "..COLORS_KWords.Weakspothit_rgb..".\n"
				..Arrow_down_red.." Cannot "..COLORS_KWords.Crit0_rgb..".\n"
				..TALENTS_Enh_desc.ED_PSY_Blitz_0_rgb)),
				-- &->and, colors
	--[+ French +]-- Explosion cérébrale
	create_template("talent_tree_psy_blitz0_000_desc_fr",
		{"loc_ability_psyker_smite_description_new"}, {"fr"},
			loc_text("Chargez votre pouvoir Psychique et relachez-le pour infliger de gros "..COLORS_KWords_fr.Damage_rgb_fr.." à un ennemi unique. Efficace contre les ennemies en armure Légère et Carapace. Dégâts plus élevés contre Maniaques et Implacables."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_0_rgb_fr)),
	--[+ Russian -  Взрыв мозга +]-- руоф Взрыв разума	checked 27.05.2025
	create_template("talent_tree_psy_blitz0_000_desc_ru",
		{"loc_ability_psyker_smite_description_new"}, {"ru"},
			loc_text("Зарядите свою психическую мощь и высвободите её, чтобы нанести высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." одному врагу.\n"
				..Arrow_up_green.." Эффективно против врагов в противоосколочной и панцирной броне.\n"
				..Arrow_up_green.." Высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." против маньяков и несгибаемых.\n"
				..Arrow_up_green.." Всегда бьёт в "..COLORS_KWords_ru.Weakspothit_rgb_ru..".\n"
				..Arrow_down_red.." Не наносит "..COLORS_KWords_ru.Crit0_rgb_ru..".\n"
				..TALENTS_Enh_desc_ru.ED_PSY_Blitz_0_rgb_ru)),
	--[+ Traditional Chinese 顱腦爆裂 +]--
	-- 積蓄你的靈能力量，釋放後對單個敵人造成巨大傷害。對防彈護甲和甲殼護甲敵人造成的效果減弱。
	create_template("talent_tree_psy_blitz0_000_desc_tw",
		{"loc_ability_psyker_smite_description_new"}, {"zh-tw"},
			loc_text("凝聚靈能，對單一敵人造成 "..COLORS_KWords_tw.Dmg_rgb_tw.." 。\n"
			.."- 對防彈、甲殼敵人效果不佳。\n"
			.."- 對狂熱者與不屈有 "..COLORS_KWords_tw.Dmg_h_rgb_tw.." 。\n"
			..TALENTS_Enh_desc_tw.ED_PSY_Blitz_0_rgb_tw.."。")),

	--[+ BLITZ 1 - Brain Rupture +]--	checked 27.05.2025
	create_template("talent_tree_psy_blitz1_000_desc_en",
		{"loc_talent_psyker_brain_burst_improved_description"}, {"en"},
			loc_text("Charge up your Psychic Power and release it to deal immense "..COLORS_KWords.Damage_rgb.." to a Single Enemy.\n"
				..Arrow_up_green.." This is an augmented version of {talent_old:%s} dealing {damage:%s} "..COLORS_KWords.Damage_rgb..".\n"
				..Arrow_up_green.." Effective against Flak and Carapace Armoured Enemies.\n"
				..Arrow_up_green.." Higher "..COLORS_KWords.Damage_rgb.." against Maniac and Unyielding.\n"
				..Arrow_up_green.." Always scores a "..COLORS_KWords.Weakspothit_rgb..".\n"
				..Arrow_up_green.." Main attack at "..COLORS_Numbers.pc_50_rgb.." charge level applies a light Charge "..COLORS_KWords.Stagger_rgb.." to the targeted enemy. Cannot "..COLORS_KWords.Stagger_rgb..": Bombers, Maulers, Mutants, Ogryns, Poxbursters, Ragers, Scab Shotgunners or Monstrosities.\n"
				..Arrow_up_green.." On "..COLORS_KWords.Impact_rgb.." "..COLORS_KWords.Staggers_rgb.." all enemies except Mutants, Monstrosities and enemies with active void shield.\n"
				..Arrow_down_red.." Cannot "..COLORS_KWords.Crit0_rgb..".\n"
				..TALENTS_Enh_desc.ED_PSY_Blitz_1_rgb)),
				-- talent_old: Brain Burst, damage: +50%, &->and, colors
	--[+ French +]-- Éclatement cérébrale
	create_template("talent_tree_psy_blitz1_000_desc_fr",
		{"loc_talent_psyker_brain_burst_improved_description"}, {"fr"},
			loc_text("Chargez votre pouvoir Psychique et relachez-le pour infliger d'immense "..COLORS_KWords_fr.Damage_rgb_fr.." à un ennemi unique. Efficace contre les ennemies en armure Légère et Carapace. Dégâts plus élevés contre les Maniaques et les Implacables.\n\nCeci est une version améliorée d'{talent_old:%s} infligeant {damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_1_rgb_fr)),
	--[+ Russian - Разрыв мозга +]--	checked 27.05.2025
	create_template("talent_tree_psy_blitz1_000_desc_ru",
		{"loc_talent_psyker_brain_burst_improved_description"}, {"ru"},
			loc_text("Зарядите свою психическую мощь и высвободите её, чтобы нанести огромный "..COLORS_KWords_ru.Dmg_rgb_ru.." одному врагу.\n"
				..Arrow_up_green.." Это улучшенная версия таланта {talent_old:%s}, наносящая {damage:%s} "..COLORS_KWords_ru.Dmg_a_rgb_ru..".\n"
				..Arrow_up_green.." Эффективно против врагов в противоосколочной и панцирной броне.\n"
				..Arrow_up_green.." Высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." против маньяков и несгибаемых.\n"
				..Arrow_up_green.." Всегда бьёт в "..COLORS_KWords_ru.Weakspothit_rgb_ru..".\n"
				-- ..Arrow_up_green.." Основная атака применяет к выбранному врагу лёгкий эффект "..COLORS_KWords_ru.Staggering_rgb_ru.." на уровне заряда "..COLORS_Numbers.pc_50_rgb..". Не "..COLORS_KWords_ru.Staggers_e_rgb_ru..": гренадёров, cкабов-разрубателей, мутантов, огринов, чумных взрывников, берсерков, скабов-штурмовиков или монстров.\n"
				..Arrow_up_green.." При атаке "..COLORS_KWords_ru.Staggers_e_rgb_ru.." всех врагов, кроме мутантов, монстров и врагов с активным пустотным щитом.\n"
				..Arrow_down_red.." Не наносит "..COLORS_KWords_ru.Crit0_rgb_ru..".\n"
				..TALENTS_Enh_desc_ru.ED_PSY_Blitz_1_rgb_ru)),
	--[+ Traditional Chinese 顱腦崩裂 +]--
	-- 積蓄靈能力量，釋放時可對單個敵人造成巨大傷害。對防彈護甲和甲殼護甲敵人效果減弱。\n\n該天賦是可造成{damage:%s}傷害的{talent_old:%s}的加強版。
	create_template("talent_tree_psy_blitz1_000_desc_tw",
		{"loc_talent_psyker_brain_burst_improved_description"}, {"zh-tw"},
			loc_text("凝聚靈能，對單一敵人造成 "..COLORS_KWords_tw.Dmg_h_rgb_tw.." 。\n"
			.."- 基礎傷害：1350。\n"
			.."- "..COLORS_KWords_tw.Crit_n_chance_rgb_tw.."。\n"
			.."- 永遠視為 "..COLORS_KWords_tw.Weakspothit_rgb_tw.." 。\n"
			.."- 對防彈、甲殼敵人效果不佳。\n"
			.."- 對狂熱者與不屈有 "..COLORS_KWords_tw.Dmg_h_rgb_tw.." 。\n"
			.."這是 {talent_old:%s} 的強化版本\n"
			..TALENTS_Enh_desc_tw.ED_PSY_Blitz_1_rgb_tw)),

	--[+ BLITZ 1-1 - Kinetic Resonance +]--	checked 27.05.2025
	create_template("talent_tree_psy_blitz1_001_desc_en",
		{"loc_talent_psyker_ability_increase_brain_burst_speed_desc"}, {"en"},
			loc_text("{smite_attack_speed:%s} faster charging of your {talent_name:%s} after using your "..COLORS_KWords.Combat_ability_rgb..", generating {warp_charge_cost:%s} less "..COLORS_KWords.Peril_rgb.." for {duration:%s} seconds.\n"
				..Arrow_up_green.." Reduces Brain Rupture's charge time for both Primary and Secondary attacks.\n"
				..TALENTS_Enh_desc.ED_PSY_Blitz_1_1_rgb)),
				-- talent_name: Brain Rupture, smite_attack_speed: +75%, warp_charge_cost: 50%, duration: 10, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_psy_blitz1_001_desc_fr",
		{"loc_talent_psyker_ability_increase_brain_burst_speed_desc"}, {"fr"},
			loc_text("Lorsque vous utilisez votre "..COLORS_KWords_fr.Combat_ability_rgb_fr..", {talent_name:%s} charge {smite_attack_speed:%s} plus rapidement et génère {warp_charge_cost:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." en moins, pendant {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_1_1_rgb_fr)),
	--[+ Russian - Кинетический резонанс +]--
	create_template("talent_tree_psy_blitz1_001_desc_ru",
		{"loc_talent_psyker_ability_increase_brain_burst_speed_desc"}, {"ru"},
			loc_text("{smite_attack_speed:%s} к ускорению заряжания вашего блица {talent_name:%s} после использования вашей "..COLORS_KWords_ru.Combat_ability_rgb_ru..", также генерируется на {warp_charge_cost:%s} меньше "..COLORS_KWords_ru.Peril_rgb_ru.." в течение {duration:%s} секунд.\n"
				..Arrow_up_green.." Сокращает время зарядки способности {talent_name:%s} как для основных, так и для дополнительных атак.\n"
				..TALENTS_Enh_desc_ru.ED_PSY_Blitz_1_1_rgb_ru)),
	--[+ Traditional Chinese - 動能共鳴+]--
	-- 使用戰鬥技能會加快{talent_name:%s}充能{smite_attack_speed:%s}且降低反噬生成{warp_charge_cost:%s}，持續{duration:%s}秒。
	create_template("talent_tree_psy_blitz1_001_desc_tw",
	{"loc_talent_psyker_ability_increase_brain_burst_speed_desc"}, {"zh-tw"},
		loc_text("使用 "..COLORS_KWords_tw.Combat_ability_rgb_tw.." 後 {smite_attack_speed:%s} 增加閃擊充能速度 {talent_name:%s}。\n" 
		.."\n"
		.."- 持續 {duration:%s} 秒，期間靈能消耗減少 {warp_charge_cost:%s}。\n"
		.."- 縮短顱腦崩裂的蓄力時間。\n"
		.. TALENTS_Enh_desc_tw.ED_PSY_Blitz_1_1_rgb_tw)),

	--[+ BLITZ 1-2 - Kinetic Flayer +]--	checked 27.05.2025
	create_template("talent_tree_psy_blitz1_002_desc_en",
		{"loc_talent_psyker_smite_on_hit_special_elite_desc"}, {"en"},
			loc_text("While below "..COLORS_Numbers.pc_97_rgb.." "..COLORS_KWords.Peril_rgb..", all Attacks against Specials, Elites and Monstrosities, have {smite_chance:%s} chance to {talent_name:%s} the target on any of Psyker's damaging attacks.\n"
				.."Cooldown {time:%s} seconds.\n"
				..TALENTS_Enh_desc.ED_PSY_Blitz_1_2_rgb)),
				-- smite_chance: 10%, talent_name: Brain Rupture, time: 15, s->seconds, colors, rewrite
	--[+ French +]--
	create_template("talent_tree_psy_blitz1_002_desc_fr",
		{"loc_talent_psyker_smite_on_hit_special_elite_desc"}, {"fr"},
			loc_text("Tant que vous êtes en dessous de "..COLORS_Numbers.pc_97_rgb.." de "..COLORS_KWords_fr.Peril_rgb_fr..", Toute les attaques contre les spéciaux, les élites et les Monstruosités ont {smite_chance:%s} de chance d'appliquer {talent_name:%s} à la cible en cas de coup réussi. {time:%s} secondes de temps de recharge."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_1_2_rgb_fr)),
	--[+ Russian - Кинетический живодёр +]-- руоф Кинетический истребитель
	create_template("talent_tree_psy_blitz1_002_desc_ru",
		{"loc_talent_psyker_smite_on_hit_special_elite_desc"}, {"ru"},
			loc_text("Пока ваш уровень "..COLORS_KWords_ru.Peril_rgb_ru.." ниже "..COLORS_Numbers.pc_97_rgb..", все атаки против специалистов, элитных врагов и монстров имеют {smite_chance:%s} шанс вызвать {talent_name:%s}, нанеся "..COLORS_KWords_ru.Dmg_rgb_ru.." по ним.\n"
					..Arrow_right_.." Восстанавливается {time:%s} секунд.\n"
					..TALENTS_Enh_desc_ru.ED_PSY_Blitz_1_2_rgb_ru)),
	--[+ Traditional Chinese - 動能釋放 +]--
	-- 對專家、精英與巨獸進行攻擊時，所有攻擊都有{smite_chance:%s}機率使目標{talent_name:%s}。反噬處於危險線以上時無法觸發，此外，觸發後有{time:%s}秒冷卻時間。
	create_template("talent_tree_psy_blitz1_002_desc_tw",
		{"loc_talent_psyker_smite_on_hit_special_elite_desc"}, {"zh-tw"},
			loc_text("當 "..COLORS_KWords_tw.Peril_rgb_tw.." 低於 "..COLORS_Numbers.pc_97_rgb.. " 時，\n有 {smite_chance:%s} 機率觸發 {talent_name:%s}，\n冷卻 {time:%s} 秒。" .. TALENTS_Enh_desc_tw.ED_PSY_Blitz_1_2_rgb_tw)),

	--[+ BLITZ 2 - Smite +]--	checked 27.05.2025
	create_template("talent_tree_psy_blitz2_000_desc_en",
		{"loc_ability_psyker_chain_lightning_description"}, {"en"},
			loc_text("You unleash a torrent of chain Bio-Lightning that slowly jumps between enemies, dealing low "..COLORS_KWords.Electrcuting_rgb.." "..COLORS_KWords.Damage_rgb.." over time and very High "..COLORS_KWords.Stagger_rgb.." to them.\n"
				.."Secondary charged attack deals more "..COLORS_KWords.Damage_rgb.." when released and also jumps faster from enemy to enemy.\n"
				..Arrow_up_green.." Forces a short Quelling action when reaching "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords.Peril_rgb.." removing ~"..COLORS_Numbers.pc_8_5_rgb.." "..COLORS_KWords.Peril_rgb..". If released below "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords.Peril_rgb..", pushes enemies back (if possible).\n"
				..Arrow_right_.." Max range: "..COLORS_Numbers.n_15_rgb.." meters.\n"
				..Arrow_right_.." Average armor "..COLORS_KWords.Damage_rgb..", low "..COLORS_KWords.Damage_rgb.." to Carapace armor.\n"
				..Arrow_right_.." Targets only Torso hitzone.\n"
				..Arrow_down_red.." Cannot "..COLORS_KWords.Stagger_rgb.." Monstrosities and enemies with active Void shield.\n"
				..Arrow_down_red.." Cannot "..COLORS_KWords.Crit0_rgb..".\n"
				..TALENTS_Enh_desc.ED_PSY_Blitz_2_rgb)),
				-- total rewrite, colors
	--[+ French +]--
	create_template("talent_tree_psy_blitz2_000_desc_fr",
		{"loc_ability_psyker_chain_lightning_description"}, {"fr"},
			loc_text("Déchaînez un torrent de bio-foudre qui se propage lentement entre les ennemis, infligeant de faible "..COLORS_KWords_fr.Damage_rgb_fr.." et "..COLORS_KWords_fr.Electrcuting_rgb_fr.."  sur la durée avec un fort "..COLORS_KWords_fr.Stagger_rgb_fr..".\nL'attaque chargée secondaire inflige plus de "..COLORS_KWords_fr.Damage_rgb_fr.." et le taux de dispersion.\nNe peut pas étourdir les Monstruosités et les ennemis avec bouclier de vide actif. Pénétration d'armure moyenne pour toutes les armures, Pénétration d'armure faible contre les carapaces."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_2_rgb_fr)),
	--[+ Russian - Сокрушение +]--
	create_template("talent_tree_psy_blitz2_000_desc_ru",
		{"loc_ability_psyker_chain_lightning_description"}, {"ru"},
			loc_text("Вы выпускаете поток цепной биомолнии, которая медленно распространяется между врагами, нанося им низкий "..COLORS_KWords_ru.Dmg_rgb_ru.." "..COLORS_KWords_ru.Electrocuted_rgb_ru.." с течением времени и очень высокое "..COLORS_KWords_ru.Stagger_rgb_ru..".\nВторичная заряженная атака наносит больше "..COLORS_KWords_ru.Dmg_a_rgb_ru.." при высвобождении, а также быстрее распространяется.\n"
				..Arrow_right_.." Средний "..COLORS_KWords_ru.Dmg_rgb_ru.." по всем видам брони, низкий "..COLORS_KWords_ru.Dmg_rgb_ru.." по панцирной броне.\n"
				..Arrow_down_red.." Не может "..COLORS_KWords_ru.Staggernt_rgb_ru.." монстров и врагов с активным пустотным щитом.\n"
				..TALENTS_Enh_desc_ru.ED_PSY_Blitz_2_rgb_ru)),
	--[+ Traditional Chinese - 懲戒 +]--
	-- 釋放一道生物閃電。這是一種快速定向攻擊，可在造成傷害時鎖定並擊暈敵人。技能效果可擴散到附近的敵人，充能增加擴散速度和傷害。
	create_template("talent_tree_psy_blitz2_000_desc_tw",
		{"loc_ability_psyker_chain_lightning_description"}, {"zh-tw"},
			loc_text("釋放一道生物閃電在敵人間跳躍，\n並造成低 "..COLORS_KWords_tw.Damage_rgb_tw.." 並持續 "..COLORS_KWords_tw.Electrocutes_rgb_tw.."，\n附帶強烈 "..COLORS_KWords_tw.Stagger_rgb_tw.."。\n"
			.."- 蓄力可提升"..COLORS_KWords_tw.Damage_rgb_tw.."與傳導範圍。\n"
			.."- 無法對巨獸或力場護盾敵人造成踉蹌。\n"
			.."- 所有護甲中等穿透，甲殼護甲低穿透。\n"
			.. TALENTS_Enh_desc_tw.ED_PSY_Blitz_2_rgb_tw)),

	--[+ BLITZ 2-1 - Lightning Storm +]--	checked 27.05.2025
	create_template("talent_tree_psy_blitz2_001_desc_en",
		{"loc_talent_psyker_increased_chain_lightning_size_description"}, {"en"},
			loc_text("Increases the number of jumps of your {talent_name:%s} from "..COLORS_Numbers.n_1_rgb.." to "..COLORS_Numbers.n_2_rgb..".\n"
				..Arrow_up_green.." Increases the Max radius within which {talent_name:%s} can chain to another target from "..COLORS_Numbers.n_5_rgb.." to "..COLORS_Numbers.n_6_rgb.." meters.\n"
				..Arrow_up_green.." Also increases the targeting range by "..COLORS_Numbers.n_1_rgb.." meter, up to "..COLORS_Numbers.n_16_rgb.." meters.\n"
				..Arrow_right_.." Applies both to Smite's Primary and Secondary actions.\n")),
				-- ..TALENTS_Enh_desc.ED_PSY_Blitz_2_1_rgb)),
				-- talent_name: Smite, max_jumps: +1, rewrite "by {max_jumps:%s}"
	--[+ French +]--
	create_template("talent_tree_psy_blitz2_001_desc_fr",
		{"loc_talent_psyker_increased_chain_lightning_size_description"}, {"fr"},
			loc_text("Augmente le nombre de sauts de votre {talent_name:%s} de "..COLORS_Numbers.n_1_rgb.." à "..COLORS_Numbers.n_2_rgb.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_2_1_rgb_fr)),
	--[+ Russian - Молниевый шторм +]-- руоф Гроза
	create_template("talent_tree_psy_blitz2_001_desc_ru",
		{"loc_talent_psyker_increased_chain_lightning_size_description"}, {"ru"},
			loc_text("C "..COLORS_Numbers.n_1_rgb.." до "..COLORS_Numbers.n_2_rgb.." увеличивается количество врагов на которых распространяется {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_2_1_rgb_ru)),
	--[+ Traditional Chinese - 閃電風暴 +]--
	-- {talent_name:%s}的彈跳次數增加{max_jumps:%s}。
	create_template("talent_tree_psy_blitz2_001_desc_tw",
		{"loc_talent_psyker_increased_chain_lightning_size_description"}, {"zh-tw"},
			loc_text("{talent_name:%s} 的閃電跳躍次數從 "..COLORS_Numbers.n_1_rgb.." 提升至 "..COLORS_Numbers.n_2_rgb.."。" .. TALENTS_Enh_desc_tw.ED_PSY_Blitz_2_1_rgb_tw)),

	--[+ BLITZ 2-2 - Enfeeble +]--	checked 27.05.2025
	create_template("talent_tree_psy_blitz2_002_desc_en",
		{"loc_talent_psyker_chain_lightning_improved_target_buff_alt_description"}, {"en"},
			loc_text("{damage:%s} increased Base "..COLORS_KWords.Damage_rgb.." from all sources is taken by enemies affected by the "..COLORS_KWords.Electrocute_rgb.." effect of your {talent_name:%s}.\n"
				-- ..Arrow_right_.." The debuff is being applied as long as the enemy is actively affected by {talent_name:%s}.\n"
				..Arrow_down_red.." Doesn't Stack with the same debuff applied by another Psyker.\n"
				..TALENTS_Enh_desc.ED_PSY_Blitz_2_2_rgb)),
				-- damage: +10%, colors
	--[+ French +]--Dégénérescence
	create_template("talent_tree_psy_blitz2_002_desc_fr",
		{"loc_talent_psyker_chain_lightning_improved_target_buff_alt_description"}, {"fr"},
			loc_text("Les ennemis qui sont "..COLORS_KWords_fr.Electrocuted_rgb_fr.." subissent {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." supplémentaires de toutes les sources.\nLe malus est appliqué tant que les ennemis subissent {talent_name:%s}.\nNe se cumul pas avec le même malus d'un autre Psyker."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_2_2_rgb_fr)),
	--[+ Russian - Ослабление +]--
	create_template("talent_tree_psy_blitz2_002_desc_ru",
		{"loc_talent_psyker_chain_lightning_improved_target_buff_alt_description"}, {"ru"},
			loc_text("{damage:%s} базового "..COLORS_KWords_ru.Dmg_a_rgb_ru.." из всех источников получают враги, на которых действует эффект "..COLORS_KWords_ru.Electrocution_rgb_ru.." от вашего таланта {talent_name:%s}.\nОслабление применяется до тех пор, пока враг находится под действием способности {talent_name:%s}.\nНе суммируется с таким же ослаблением, наложенным другим псайкером."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_2_2_rgb_ru)),
	--[+ Traditional Chinese - 衰弱詛咒 +]--
	-- 遭受你電擊的敵人受到所有來源的基礎傷害增加{damage:%s}。
	create_template("talent_tree_psy_blitz2_002_desc_tw",
		{"loc_talent_psyker_chain_lightning_improved_target_buff_alt_description"}, {"zh-tw"},
			loc_text("{talent_name:%s} "..COLORS_KWords_tw.Electrocution_rgb_tw.." 的敵人，受到的 "..COLORS_KWords_tw.Dmg_a_rgb_tw.." {damage:%s}。\n" 
			.."\n"
			.."- {talent_name:%s} 持續中的易傷效果將一直存在。\n" 
			.."-不會與其他靈能者[衰弱詛咒]疊加。\n"
			.. TALENTS_Enh_desc_tw.ED_PSY_Blitz_2_2_rgb_tw)),

	--[+ BLITZ 2-3 - Charged Strike +]--	checked 27.05.2025
	create_template("talent_tree_psy_blitz2_002_desc_en",
		{"loc_talent_psyker_chain_lightning_damage_heavy_attacks_desc"}, {"en"},
			loc_text("Your Heavy Melee Attacks "..COLORS_KWords.Electrocute_rgb.." enemies hit, damaging them.\n"
				..Arrow_right_.." Up to "..COLORS_Numbers.n_64_rgb.." base "..COLORS_KWords.Damage_rgb.." per tick when reaching Max charge level.\n"
				..Arrow_right_.." The "..COLORS_KWords.Damage_rgb.." window lasts up to "..COLORS_Numbers.n_2_rgb.." seconds. The "..COLORS_KWords.Electrocuted_rgb.." state lasts until "..COLORS_Numbers.n_2_rgb.." seconds after the last "..COLORS_KWords.Damage_rgb.." tick.\n"
				..TALENTS_Enh_desc.ED_PSY_Blitz_2_3_rgb)),
				-- colors
	--[+ French +]--Coup chargé !!! 
	create_template("talent_tree_psy_blitz2_002_desc_fr",
		{"loc_talent_psyker_chain_lightning_damage_heavy_attacks_desc"}, {"fr"},
			loc_text("Vos attaques puissantes de mélées "..COLORS_KWords_fr.Electrocutes_rgb_fr.." les ennemis, ce qui leur inflige des "..COLORS_KWords_fr.Damage_rgb_fr.."\nJusqu'a "..COLORS_Numbers.n_64_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." par instance lors d'un coup chargé au maximum.\nLa fenêtre de "..COLORS_KWords_fr.Damage_rgb_fr.." dure jusqu'a "..COLORS_Numbers.n_2_rgb.." secondes. Le malus "..COLORS_KWords_fr.Electrocutes_rgb_fr.." dure jusqu'a "..COLORS_Numbers.n_2_rgb.." secondes après la dernière instance de "..COLORS_KWords_fr.Damage_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_2_3_rgb_fr)),
	--[+ Russian +]-- Заряженный удар!!!
	create_template("talent_tree_psy_blitz2_002_desc_ru",
		{"loc_talent_psyker_chain_lightning_damage_heavy_attacks_desc"}, {"ru"},
			loc_text("Ваши тяжёлые атаки ближнего боя накладывают на врагов эффект "..COLORS_KWords_ru.Electrocution_rgb_ru..", наносящий им "..COLORS_KWords_ru.Dmg_rgb_ru..".\nДо "..COLORS_Numbers.n_64_rgb.." единиц базового "..COLORS_KWords_ru.Dmg_a_rgb_ru.." за срабатывание при максимальном уровне заряда.\nОкно "..COLORS_KWords_ru.Dmg_a_rgb_ru.." длится "..COLORS_Numbers.n_2_rgb.." секунды. Эффект "..COLORS_KWords_ru.Electrocution_rgb_ru.." длится "..COLORS_Numbers.n_2_rgb.." секунды после последнего нанесения "..COLORS_KWords_ru.Dmg_a_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_2_3_rgb_ru)),
	--[+ Traditional Chinese - 蓄力打擊 +]--
	-- 你的近戰重擊會電擊敵人，並對其造成傷害。
	create_template("talent_tree_psy_blitz2_002_desc_tw",
		{"loc_talent_psyker_chain_lightning_damage_heavy_attacks_desc"}, {"zh-tw"},
			loc_text("重擊敵人時，\n施加敵人 "..COLORS_KWords_tw.Electrocution_rgb_tw.." 並產生 "..COLORS_KWords_tw.Dmg_c_rgb_tw.." 。\n"	
			.."- "..COLORS_KWords_tw.Dmg_d_rgb_tw.." 基礎為 "..COLORS_Numbers.n_8_rgb.." 。\n"
			.."- 蓄力達最大時 "..COLORS_KWords_tw.Dmg_d_rgb_tw.." 可達 "..COLORS_Numbers.n_64_rgb.."/s\n"
			.."- Dot持續時間最長 "..COLORS_Numbers.n_2_rgb.."s。\n"
			.."- "..COLORS_KWords_tw.Electrocution_rgb_tw.." 效果在最後一次Dot傷害後持續 "..COLORS_Numbers.n_2_rgb.."s 。\n"
			.. TALENTS_Enh_desc_tw.ED_PSY_Blitz_2_3_rgb_tw)),

	--[+ BLITZ 3 - Assail +]--	checked 27.05.2025
	create_template("talent_tree_psy_blitz3_000_desc_en",
		{"loc_ability_psyker_blitz_throwing_knives_description"}, {"en"},
			loc_text("You throw swift, homing projectiles formed of psychic energy that follows the player's crosshair for "..COLORS_Numbers.n_2_5_rgb.." seconds to the nearest Enemy. Deals "..COLORS_Numbers.n_225_rgb.." Base "..COLORS_KWords.Damage_rgb.." to the first target and cost "..COLORS_Numbers.pc_10_rgb.." "..COLORS_KWords.Peril_rgb..".\n"
				.."Secondary attack throws a homing projectile that flies for "..COLORS_Numbers.n_3_rgb.." seconds and hitting enemies within a "..COLORS_Numbers.n_50_rgb.." meter radius with a guaranteed hit. Deals "..COLORS_Numbers.n_380_rgb.." Base "..COLORS_KWords.Damage_rgb.." and cost "..COLORS_Numbers.pc_25_rgb.." "..COLORS_KWords.Peril_rgb..".\n"
				..Arrow_up_green.." Can "..COLORS_KWords.Crit0_rgb..".\n"
				..Arrow_up_green.." "..COLORS_KWords.Cleave_rgb.." up to "..COLORS_Numbers.n_2_rgb.." enemies.\n"
				..Arrow_right_.." Costs "..COLORS_Numbers.n_1_rgb.." ammo and recharges it every "..COLORS_Numbers.n_3_rgb.." seconds.\n"
				..Arrow_down_red.." Very low "..COLORS_KWords.Damage_rgb.." against Carapace and low against Unyielding.\n"
				..TALENTS_Enh_desc.ED_PSY_Blitz_3_rgb)),
				-- total rewrite, colors
	--[+ French +]--
	create_template("talent_tree_psy_blitz3_000_desc_fr",
		{"loc_ability_psyker_blitz_throwing_knives_description"}, {"fr"},
			loc_text("Vous lancez des projectiles rapides et autoguidés formés d'énergie psychique qui suivent le réticule du joueur pendant "..COLORS_Numbers.n_2_5_rgb.." secondes jusqu'à l'ennemi le plus proche. Inflige "..COLORS_Numbers.n_200_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." à la première cible et coûte "..COLORS_Numbers.pc_10_rgb.." de "..COLORS_KWords_fr.Peril_rgb_fr..".\nL'attaque secondaire lance un projectile autoguidé qui vole pendant "..COLORS_Numbers.n_3_rgb.." secondes et touche les ennemis dans un rayon de "..COLORS_Numbers.n_50_rgb.." mètres avec une touche garantie. Inflige "..COLORS_Numbers.n_340_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." et coûte "..COLORS_Numbers.pc_25_rgb.." de "..COLORS_KWords_fr.Peril_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_3_rgb_fr)),
	--[+ Russian - Нападение +]--
	create_template("talent_tree_psy_blitz3_000_desc_ru",
		{"loc_ability_psyker_blitz_throwing_knives_description"}, {"ru"},
			loc_text("Вы бросаете быстрые, самонаводящиеся снаряды, сформированные из психической энергии, которые следуют за прицелом игрока в течение "..COLORS_Numbers.n_2_5_rgb.." секунды в ближайшего врага. Наносит "..COLORS_Numbers.n_200_rgb.." базового "..COLORS_KWords_ru.Dmg_a_rgb_ru.." первой цели и генерирует "..COLORS_Numbers.pc_10_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru..".\nВторичной атакой вы запускаете самонаводящийся снаряд, который летит до "..COLORS_Numbers.n_3_rgb.." секунд и гарантированно поражает врагов в радиусе "..COLORS_Numbers.n_50_rgb.." метров. Наносит "..COLORS_Numbers.n_340_rgb.." базового "..COLORS_KWords_ru.Dmg_a_rgb_ru.." и генерирует "..COLORS_Numbers.pc_25_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_3_rgb_ru)),
	--[+ Traditional Chinese - 靈能攻擊 +]--
	-- 投擲高速、自動鎖敵的靈能投擲物。攻擊有甲殼護甲的敵人時效果較差。
	create_template("talent_tree_psy_blitz3_000_desc_tw",
		{"loc_ability_psyker_blitz_throwing_knives_description"}, {"zh-tw"},
			loc_text("投擲高速、自動鎖敵的靈能投擲物。\n"
			.."- 自動追蹤準星附近敵人，持續"..COLORS_Numbers.n_2_5_rgb.."秒。\n"
			.."- 首個目標"..COLORS_Numbers.n_200_rgb..""..COLORS_KWords_tw.Dmg_a_rgb_tw.."並產生"..COLORS_Numbers.pc_10_rgb..""..COLORS_KWords_tw.Peril_rgb_tw.."。\n"
			.."\n"
			.."- 副攻擊追蹤"..COLORS_Numbers.n_3_rgb.."s，可命中"..COLORS_Numbers.n_50_rgb.."m內敵人。\n"
			.."--造成"..COLORS_Numbers.n_340_rgb.."點"..COLORS_KWords_tw.Dmg_a_rgb_tw.."，並產生"..COLORS_Numbers.pc_25_rgb.." "..COLORS_KWords_tw.Peril_rgb_tw.."。\n"
			.. TALENTS_Enh_desc_tw.ED_PSY_Blitz_3_rgb_tw)),

	--[+ BLITZ 3-1 - Ethereal Shards +]--	checked 27.05.2025
	create_template("talent_tree_psy_blitz3_001_desc_en",
		{"loc_talent_psyker_throwing_knives_pierce_description"}, {"en"},
			loc_text("Projectiles from {talent_name:%s} now pierce additional targets.\n"
				..Arrow_down_red.." Carapace cannot be "..COLORS_KWords.Cleaved_rgb.." by default.\n"
				..TALENTS_Enh_desc.ED_PSY_Blitz_3_1_rgb)),
				-- talent_name: Assail, colors
	--[+ French +]--
	create_template("talent_tree_psy_blitz3_001_desc_fr",
		{"loc_talent_psyker_throwing_knives_pierce_description"}, {"fr"},
			loc_text("Les projectiles d'{talent_name:%s} percent désormais des cibles supplémentaires, passant de "..COLORS_Numbers.n_2_rgb.." à "..COLORS_Numbers.n_3_rgb.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_3_1_rgb_fr)),
	--[+ Russian - Эфирные осколки +]-- руоф Эфирные частицы
	create_template("talent_tree_psy_blitz3_001_desc_ru",
		{"loc_talent_psyker_throwing_knives_pierce_description"}, {"ru"},
			loc_text("С "..COLORS_Numbers.n_2_rgb.." до "..COLORS_Numbers.n_3_rgb.." увеличивается количество врагов, которых пронзают снаряды таланта {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_3_1_rgb_ru)),
	--[+ Traditional Chinese - 乙太碎片 +]--
	-- {talent_name:%s}的投射物可擊穿額外目標。
	create_template("talent_tree_psy_blitz3_001_desc_tw",
		{"loc_talent_psyker_throwing_knives_pierce_description"}, {"zh-tw"},
			loc_text("{talent_name:%s} 的穿透數量從 "..COLORS_Numbers.n_2_rgb.." 提升至 "..COLORS_Numbers.n_3_rgb.."。" .. TALENTS_Enh_desc_tw.ED_PSY_Blitz_3_1_rgb_tw)),

	--[+ BLITZ 3-2 - Quick Shards +]--	checked 27.05.2025
	create_template("talent_tree_psy_blitz3_002_desc_en",
		{"loc_talent_psyker_throwing_knives_cast_speed_description"}, {"en"},
			loc_text("{talent_name:%s} charges Replenish {recharge:%s} faster.\n"
				..TALENTS_Enh_desc.ED_PSY_Blitz_3_2_rgb)),
				-- talent_name: Assail, recharge: 30%
	--[+ French +]--
	create_template("talent_tree_psy_blitz3_002_desc_fr",
		{"loc_talent_psyker_throwing_knives_cast_speed_description"}, {"fr"},
			loc_text("Les charges d'{talent_name:%s} se régénerent {recharge:%s} plus rapidement."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_3_2_rgb_fr)),
	--[+ Russian - Быстрые осколки +]-- руоф Быстрые частицы
	create_template("talent_tree_psy_blitz3_002_desc_ru",
		{"loc_talent_psyker_throwing_knives_cast_speed_description"}, {"ru"},
			loc_text("На {recharge:%s} повышается скорость восстановления снарядов таланта {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_3_2_rgb_ru)),
		--[+ Traditional Chinese - 迅捷碎片 +]--
		--{talent_name:%s}充能速度加快{recharge%s}。
	create_template("talent_tree_psy_blitz3_002_desc_tw",
		{"loc_talent_psyker_throwing_knives_cast_speed_description"}, {"zh-tw"},
			loc_text("{talent_name:%s} 的恢復速度提高 {recharge:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Blitz_3_2_rgb_tw)),

--[+ +AURA - АУРЫ+ +]--
	--[+ AURA 0 - The Quickening +]--	checked 27.05.2025
	create_template("talent_tree_psy_aura0_000_desc_en",
		{"loc_talent_psyker_aura_reduced_ability_cooldown_description"}, {"en"},
			loc_text("{cooldown_reduction:%s} "..COLORS_KWords.Ability_cd_rgb.." Reduction for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n"
				..Arrow_down_red.." Doesn't Stack with the same Aura from another Psyker.\n"
				..TALENTS_Enh_desc.ED_PSY_Aura_0_rgb)),
				-- cooldown_reduction: +7.5%, colors
	--[+ French +]--
	create_template("talent_tree_psy_aura0_000_desc_fr",
		{"loc_talent_psyker_aura_reduced_ability_cooldown_description"}, {"fr"},
			loc_text("{cooldown_reduction:%s} de "..COLORS_KWords_fr.Ability_cd_rgb_fr.." pour vous et vos Alliés en syntonie."..TALENTS_Enh_desc_fr.ED_PSY_Aura_0_rgb_fr)),
	--[+ Russian - Ускорение +]--
	create_template("talent_tree_psy_aura0_000_desc_ru",
		{"loc_talent_psyker_aura_reduced_ability_cooldown_description"}, {"ru"},
			loc_text("{cooldown_reduction:%s} к сокращению времени "..COLORS_KWords_ru.Combat_ability_cd_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Aura_0_rgb_ru)),
	--[+ Traditional Chinese - 加速 +]--
	-- 你和協同中的盟友技能冷卻縮減增加{cooldown_reduction:%s}。
	create_template("talent_tree_psy_aura0_000_desc_tw",
		{"loc_talent_psyker_aura_reduced_ability_cooldown_description"}, {"zh-tw"},
			loc_text("你與"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友，\n"..COLORS_KWords_tw.Combat_ability_cd_rgb_tw.."縮短 {cooldown_reduction:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Aura_0_rgb_tw)),

	--[+ AURA 1 - Kinetic Presence +]--	checked 27.05.2025
	create_template("talent_tree_psy_aura1_000_desc_en",
		{"loc_talent_psyker_base_3_description"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." against Elite Enemies for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n"
				..Arrow_down_red.." Doesn't Stack with the same Aura from another Psyker.\n"
				..TALENTS_Enh_desc.ED_PSY_Aura_1_rgb)),
				-- damage: +7.5%, colors
	--[+ French +]--
	create_template("talent_tree_psy_aura1_000_desc_fr",
		{"loc_talent_psyker_base_3_description"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemis d'élites pour vos vous et vos alliés en syntonie."..TALENTS_Enh_desc_fr.ED_PSY_Aura_1_rgb_fr)),
	--[+ Russian - Кинетическое присутствие +]--
	create_template("talent_tree_psy_aura1_000_desc_ru",
		{"loc_talent_psyker_base_3_description"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." по элитным врагам для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Aura_1_rgb_ru)),
	--[+ Traditional Chinese - 動能釋放 +]--
	-- 你和協同中的盟友可對精英敵人造成額外{damage:%s}傷害。
		create_template("talent_tree_psy_aura1_000_desc_tw",
		{"loc_talent_psyker_base_3_description"}, {"zh-tw"},
			loc_text("你與"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友，\n對精英敵人造成的"..COLORS_KWords_tw.Damage_rgb_tw.."提高 {damage:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Aura_1_rgb_tw)),

	--[+ AURA 2 - Seer's Presence +]--	checked 27.05.2025
	create_template("talent_tree_psy_aura2_000_desc_en",
		{"loc_talent_psyker_cooldown_aura_improved_description"}, {"en"},
			loc_text("{cooldown_reduction:%s} "..COLORS_KWords.Ability_cd_rgb.." Reduction for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n"
				..Arrow_right_.." This is an augmented version of {talent_name:%s}.\n"
				..Arrow_down_red.." Doesn't Stack with the same Aura from another Psyker.\n"
				..TALENTS_Enh_desc.ED_PSY_Aura_2_rgb)),
				-- cooldown_reduction: +10%, talent_name: The Quickening, colors
	--[+ French +]--
	create_template("talent_tree_psy_aura2_000_desc_fr",
		{"loc_talent_psyker_cooldown_aura_improved_description"}, {"fr"},
			loc_text("{cooldown_reduction:%s} de "..COLORS_KWords_fr.Ability_cd_rgb_fr.." pour vous et vos Alliés en syntonie.\n\nIl s'agit une version améliorée de : {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Aura_2_rgb_fr)),
	--[+ Russian - Присутствие провидца +]--
	create_template("talent_tree_psy_aura2_000_desc_ru",
		{"loc_talent_psyker_cooldown_aura_improved_description"}, {"ru"},
			loc_text("{cooldown_reduction:%s} к сокращению времени "..COLORS_KWords_ru.Combat_ability_cd_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n\nЭто улучшенная версия ауры {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Aura_2_rgb_ru)),
	--[+ Traditional Chinese - 先知之眼 +]--
	-- 你和協同中的盟友{cooldown_reduction:%s}技能冷卻縮減。\n\n該天賦為{talent_name:%s}的增強版。
	create_template("talent_tree_psy_aura2_000_desc_tw",
		{"loc_talent_psyker_cooldown_aura_improved_description"}, {"zh-tw"},
			loc_text("你與"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友，"..COLORS_KWords_tw.Combat_ability_cd_rgb_tw.."縮短 {cooldown_reduction:%s}。\n\n這是強化版的光環 {talent_name:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Aura_2_rgb_tw)),

	--[+ AURA 3 - Prescience +]--	checked 27.05.2025
	create_template("talent_tree_psy_aura3_000_desc_en",
		{"loc_ability_psyker_gunslinger_aura_description"}, {"en"},
			loc_text("{critical_strike_chance:%s} "..COLORS_KWords.Crit_hit_chance_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n"
				..Arrow_right_.." Applies to all attacks that can "..COLORS_KWords.Crit0_rgb..".\n"
				..Arrow_down_red.." Doesn't Stack with the same Aura from another Psyker.\n"
				..TALENTS_Enh_desc.ED_PSY_Aura_3_rgb)),
				-- critical_strike_chance: +5%, colors, rewrite
	--[+ French +]--!!!
	create_template("talent_tree_psy_aura3_000_desc_fr",
		{"loc_ability_psyker_gunslinger_aura_description"}, {"fr"},
			loc_text("Vous et vos Alliés en syntonie gagne {critical_strike_chance:%s} "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Aura_3_rgb_fr)),
	--[+ Russian - Предвидение +]--
	create_template("talent_tree_psy_aura3_000_desc_ru",
		{"loc_ability_psyker_gunslinger_aura_description"}, {"ru"},
			loc_text("{critical_strike_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Aura_3_rgb_ru)),
	--[+ Traditional Chinese - 預兆 +]--	
	--你和協同中的盟友獲得{critical_strike_chance:%s}暴擊機率。
	create_template("talent_tree_psy_aura3_000_desc_tw",
		{"loc_ability_psyker_gunslinger_aura_description"}, {"zh-tw"},
			loc_text("你與"..COLORS_KWords_tw.Coherencing_rgb_tw.."中的隊友，\n"..COLORS_KWords_tw.Crit_chance_rgb_tw.."提高 {critical_strike_chance:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Aura_3_rgb_tw)),

--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ ABILITY 0 - Psykinetic's Wrath +]--	checked 27.05.2025
	create_template("talent_tree_psy_abil0_000_desc_en",
		{"loc_talent_psyker_shout_ability_description"}, {"en"},
			loc_text("Quells {warpcharge_vent:%s} "..COLORS_KWords.Peril_rgb.." and releases a cone-shaped shout in front of Psyker that "..COLORS_KWords.Staggers_rgb.." Enemies in front of you.\n"
				.."Base Cooldown: {cooldown:%s} seconds.\n"
				..Arrow_up_green.." Can be used to prevent Psyker's self-explode.\n"
				..Arrow_up_green.." The Warp wave passes through objects and spreads up to "..COLORS_Numbers.n_30_rgb.." meters. So you can drop the Pox Hound from an Ally through the wall.\n"
				..Arrow_up_green.." "..COLORS_KWords.Stuns_rgb.." enemies within a "..COLORS_Numbers.n_5_rgb.." meter radius in front of Psyker.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_0_rgb)),
				-- warpcharge_vent: 10%, cooldown: 30, s->seconds, colors, rewrite
	--[+ French +]--
	create_template("talent_tree_psy_abil0_000_desc_fr",
		{"loc_talent_psyker_shout_ability_description"}, {"fr"},
			loc_text("Libère un cri en forme de cône devant le Psyker qui fait "..COLORS_KWords_fr.Staggering_rgb_fr.." les ennemis devant vous. Réduit de {warpcharge_vent:%s} le "..COLORS_KWords_fr.Peril_rgb_fr..".\n\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_0_rgb_fr)),
	--[+ Russian - Гнев психокинетика +]-- руоф Психокинетический гнев
	create_template("talent_tree_psy_abil0_000_desc_ru",
		{"loc_talent_psyker_shout_ability_description"}, {"ru"},
			loc_text("Вы высвобождаете конусообразную волну варп-энергии на расстояние до "..COLORS_Numbers.n_30_rgb.." метров, которая накладывает "..COLORS_KWords_ru.Stagger_rgb_ru.." на врагов перед вами и подавляет {warpcharge_vent:%s} "..COLORS_KWords_ru.Peril_rgb_ru..".\nПрименение этой способности предотвращает самоподрыв.\nВосстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Ability_0_rgb_ru)),
	--[+ Traditional Chinese - 靈能學者之怒 +]--
	-- 釋放一波亞空間能量，造成前方敵人暈眩。\n平息{warpcharge_vent:%s}反噬。\n\n基礎冷卻時間：{cooldown:%s}秒。
	create_template("talent_tree_psy_abiㄕl0_000_desc_tw",
		{"loc_talent_psyker_shout_ability_description"}, {"zh-tw"},
			-- loc_text("你釋放一道錐形的靈能波動，\n使用此能力可避免靈能反噬。\n冷卻時間：{cooldown:%s} 秒。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_0_rgb_tw)),

			loc_text("釋放出一道錐形的靈能波動，\n造成前方敵人"..COLORS_KWords_tw.Stagger_rgb_tw.."。\n" 
			.."\n"
			.."- 使用時會平息 {warpcharge_vent:%s} 的 "..COLORS_KWords_tw.Peril_rgb_tw.." 。\n"
			.."- 冷卻時間：{cooldown:%s} 秒。\n"
			..""
			.."- 攻擊範圍最遠可達"..COLORS_Numbers.n_30_rgb.."m\n"
			.. TALENTS_Enh_desc_tw.ED_PSY_Ability_0_rgb_tw)),

	--[+ ABILITY 1 - Venting Shriek +]--	checked 27.05.2025
	create_template("talent_tree_psy_abil1_000_desc_en",
		{"loc_talent_psyker_shout_vent_warp_charge_description"}, {"en"},
			loc_text("Quells {warpcharge_vent:%s} "..COLORS_KWords.Peril_rgb.." and releases a cone-shaped shout in front of Psyker that "..COLORS_KWords.Staggers_rgb.." Enemies in front of you.\n"
				.."Base Cooldown: {cooldown:%s} seconds.\n"
				..Arrow_right_.." This is augmented version of {talent_name:%s}.\n"
				..Arrow_up_green.." Can be used to prevent Psyker's self-explode.\n"
				..Arrow_up_green.." The Warp wave passes through objects and spreads up to "..COLORS_Numbers.n_30_rgb.." meters. So you can drop the Pox Hound from an Ally through the wall.\n"
				..Arrow_up_green.." "..COLORS_KWords.Stuns_rgb.." enemies within a "..COLORS_Numbers.n_5_rgb.." meter radius in front of Psyker.\n"
				..Arrow_right_.." Always targets Torso hitzone.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_1_rgb)),
				-- warpcharge_vent: 50%, cooldown: 30, talent_name: Psykinetic's Wrath, s->seconds, colors, rewrite
	--[+ French +]--
	create_template("talent_tree_psy_abil1_000_desc_fr",
		{"loc_talent_psyker_shout_vent_warp_charge_description"}, {"fr"},
			loc_text("Libère un cri en forme de cône devant le Psyker qui fait "..COLORS_KWords_fr.Staggering_rgb_fr.." les ennemis devant vous. Réduit de {warpcharge_vent:%s} le "..COLORS_KWords_fr.Peril_rgb_fr..".\n\nTemps de recharge de base : {cooldown:%s} secondes.\n\nC'est la version augmentée de {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_1_rgb_fr)),
	--[+ Russian - Сбрасывающий вопль +]-- руоф Вырвавшийся вопль
	create_template("talent_tree_psy_abil1_000_desc_ru",
		{"loc_talent_psyker_shout_vent_warp_charge_description"}, {"ru"},
			loc_text("Вы высвобождаете конусообразную волну варп-энергии на расстояние до "..COLORS_Numbers.n_30_rgb.." метров, которая накладывает "..COLORS_KWords_ru.Stagger_rgb_ru.." на врагов перед вами и подавляет {warpcharge_vent:%s} "..COLORS_KWords_ru.Peril_rgb_ru..".\nПрименение этой способности предотвращает самоподрыв.\n\nВосстанавливается {cooldown:%s} секунд.\n\nЭто улучшенная версия способности {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Ability_1_rgb_ru)),
	--[+ Traditional Chinese - 靈能尖嘯 +]--
	-- 釋放一波亞空間能量，造成前方敵人暈眩，並平息{warpcharge_vent:%s}反噬。\n\n基礎冷卻時間：{cooldown:%s}秒。\n\n該天賦是{talent_name:%s}的增強版。
	create_template("talent_tree_psy_abil1_000_desc_tw",
		{"loc_talent_psyker_shout_vent_warp_charge_description"}, {"zh-tw"},
			loc_text("釋放出一道錐形的靈能波動，\n造成前方敵人"..COLORS_KWords_tw.Stagger_rgb_tw.."。\n"
			.."\n"
			.."- 使用時會平息 {warpcharge_vent:%s} 的 "..COLORS_KWords_tw.Peril_rgb_tw.." 。\n"
			.."- 冷卻時間：{cooldown:%s} 秒。\n"
			.."- 可以用來防止 "..COLORS_KWords_tw.Perl_e_rgb_tw.." 。\n"
			.."- 攻擊範圍最遠可達 "..COLORS_Numbers.n_30_rgb.."m 。\n"
			.."- 靈能波動可穿透任何障礙物。\n"
			.."- 可穿牆將瘟疫獵犬從隊友身上推開。\n"
			.."\n這是強化版的技能 {talent_name:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_1_rgb_tw)),

	--[+ ABILITY 1-1 - Becalming Eruption +]--	checked 27.05.2025
	create_template("talent_tree_psy_abil1_001_desc_en",
		{"loc_talent_psyker_shout_reduces_warp_charge_generation_description"}, {"en"},
			loc_text("{talent_name:%s} now decreases "..COLORS_KWords.Peril_rgb.." Generation by {warp_generation:%s} for each Enemy hit. Up to {max_stacks:%s}"..COLORS_Numbers.pc_rgb..". Lasts {duration:%s} seconds.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_1_1_rgb)),
				-- talent_name: Venting Shriek, warp_generation: 1%, max_stacks: 25 -> 25%, duration: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_psy_abil1_001_desc_fr",
		{"loc_talent_psyker_shout_reduces_warp_charge_generation_description"}, {"fr"},
			loc_text("À présent, {talent_name:%s} réduit la génération de "..COLORS_KWords_fr.Peril_rgb_fr.." de {warp_generation:%s} pour chaque ennemi touché. Jusqu'à {max_stacks:%s}"..COLORS_Numbers.pc_rgb..". Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_1_1_rgb_fr)),
	--[+ Russian - Успокаивающее извержение +]-- руоф Затихающее извержение
	create_template("talent_tree_psy_abil1_001_desc_ru",
		{"loc_talent_psyker_shout_reduces_warp_charge_generation_description"}, {"ru"},
			loc_text("{talent_name:%s} теперь снижает генерацию "..COLORS_KWords_ru.Peril_rgb_ru.." на {warp_generation:%s} за каждого поражённого врага. Вплоть до {max_stacks:%s}"..COLORS_Numbers.pc_rgb..". Длится {duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Ability_1_1_rgb_ru)),
	--[+ Traditional Chinese - 平靜进發 +]--
	-- 每命中一個敵人{talent_name:%s}都會降低反噬生成{warp_generation:%s}，可疊加{max_stacks:%s}次，持續{duration:%s}秒。
		create_template("talent_tree_psy_abil1_001_desc_tw",
		{"loc_talent_psyker_shout_reduces_warp_charge_generation_description"}, {"zh-tw"},
			loc_text("{talent_name:%s}每命中一名敵人，\n降低 {warp_generation:%s} "..COLORS_KWords_tw.Peril_rgb_tw.."，最多 {max_stacks:%s}"..COLORS_Numbers.pc_rgb.."，持續 {duration:%s} 秒。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_1_1_rgb_tw)),

	--[+ ABILITY 1-2 - Warp Rupture +]--	checked 27.05.2025
	create_template("talent_tree_psy_abil1_002_desc_en",
		{"loc_talent_psyker_shout_damage_per_warp_charge_description"}, {"en"},
			loc_text("Your {talent_name:%s} now also deals {base_damage:%s}-{max_damage:%s} "..COLORS_KWords.Damage_rgb..", based off of your current "..COLORS_KWords.Peril_rgb.." percentage.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_1_2_rgb)),
				-- talent_name: Venting Shriek, base_damage: 100, max_damage: 200, colors
	--[+ French +]--
	create_template("talent_tree_psy_abil1_002_desc_fr",
		{"loc_talent_psyker_shout_damage_per_warp_charge_description"}, {"fr"},
			loc_text("Votre {talent_name:%s} inflige également de {base_damage:%s} à {max_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..", basé sur votre pourcentage de "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Ability_1_2_rgb_fr)),
	--[+ Russian - Разрыв варпа +]-- руоф Варп-разрыв
	create_template("talent_tree_psy_abil1_002_desc_ru",
		{"loc_talent_psyker_shout_damage_per_warp_charge_description"}, {"ru"},
			loc_text("Ваш {talent_name:%s} теперь также наносит от {base_damage:%s} до {max_damage:%s} единиц "..COLORS_KWords_ru.Dmg_a_rgb_ru.." в зависимости от вашего текущего уровня "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Ability_1_2_rgb_ru)),
	--[+ Traditional Chinese - 亞空間爆發 +]--
	-- 根據當前反噬程度，{talent_name:%s}還會賦予{base_damage:%s}-{max_damage:%s}傷害。
	create_template("talent_tree_psy_abil1_002_desc_tw",
		{"loc_talent_psyker_shout_damage_per_warp_charge_description"}, {"zh-tw"},
			loc_text("{talent_name:%s} 會依據當前的"..COLORS_KWords_tw.Peril_rgb_tw.."，\n造成 {base_damage:%s} 至 {max_damage:%s} 點"..COLORS_KWords_tw.Dmg_a_rgb_tw.."。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_1_2_rgb_tw)),
	
	--[+ ABILITY 1-3 - Warp Creeping Flames +]--	checked 27.05.2025
	create_template("talent_tree_psy_abil1_003_desc_en",
		{"loc_talent_psyker_warpfire_on_shout_desc"}, {"en"},
			loc_text("{talent_name:%s} applies {min_stacks:%s}{warpfire_stacks:%s} Stacks of "..COLORS_KWords.Soulblaze_rgb.." to targets Hit based on your current "..COLORS_KWords.Peril_rgb..".\n"
				..Arrow_up_green.." Refreshes duration on Stack application.\n"
				..Arrow_right_.." Lasts "..COLORS_Numbers.n_8_rgb.." seconds. Ticks every "..COLORS_Numbers.n_075_rgb.." seconds.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_1_3_rgb)),
				-- talent_name: Venting Shriek, min_stacks: 1, warpfire_stacks: - 6 -- Stack(s)->Stacks, colors
	--[+ French +]--
	create_template("talent_tree_psy_abil1_003_desc_fr",
		{"loc_talent_psyker_warpfire_on_shout_desc"}, {"fr"},
			loc_text("{talent_name:%s} applique {min_stacks:%s}{warpfire_stacks:%s} cumuls d'"..COLORS_KWords_fr.Soulblaze_rgb_fr.." aux cibles touchées en fonction de votre "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Ability_1_3_rgb_fr)),
	--[+ Russian - Ползучее пламя +]-- руоф Раздувающееся пламя
	create_template("talent_tree_psy_abil1_003_desc_ru",
		{"loc_talent_psyker_warpfire_on_shout_desc"}, {"ru"},
			loc_text("{talent_name:%s} накладывает от "..COLORS_Numbers.n_1_rgb.." до {warpfire_stacks:%s} зарядов "..COLORS_KWords_ru.Soulblaze_rgb_ru.." на поражённые цели в зависимости от вашего текущего уровня "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Ability_1_3_rgb_ru)),
	--[+ Traditional Chinese - 蔓延火焰 +]--
	create_template("talent_tree_psy_abil1_003_desc_tw",
		{"loc_talent_psyker_warpfire_on_shout_desc"}, {"zh-tw"},
			loc_text("{talent_name:%s} 依據當前的"..COLORS_KWords_tw.Peril_rgb_tw.."，\n對命中的目標施加 "..COLORS_Numbers.n_1_rgb.." 至 {warpfire_stacks:%s} 層"..COLORS_KWords_tw.Soulblaze_rgb_tw.."。"..TALENTS_Enh_desc_tw.ED_PSY_Ability_1_3_rgb_tw)),

	--[+ ABILITY 2 - Telekine Shield +]--	checked 27.05.2025
	create_template("talent_tree_psy_abil2_000_desc_en",
		{"loc_talent_psyker_combat_ability_shield_description"}, {"en"},
			loc_text("Spawns a psychic shield in front of you for {duration:%s} seconds. The shield blocks Enemy Ranged Attacks, while you and Allies can still shoot through.\n"
				.."Base Cooldown: {cooldown:%s} seconds.\n"
				..Arrow_right_.." Shield Health: 20.\n"
				..Arrow_right_.." You can hold Ability button to preview location and you can cancel it by blocking.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_2_rgb)),
				-- duration: 17.5, cooldown: 40, s->seconds
	--[+ French +]--
	create_template("talent_tree_psy_abil2_000_desc_fr",
		{"loc_talent_psyker_combat_ability_shield_description"}, {"fr"},
			loc_text("Invoque un bouclier psychique devant vous pendant {duration:%s} secondes. Le bouclier bloque les attaques à distance des ennemis, tandis que vous et vos alliés pouvez toujours tirer à travers.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_rgb_fr)),
	--[+ Russian - Телекинетический щит +]--
	create_template("talent_tree_psy_abil2_000_desc_ru",
		{"loc_talent_psyker_combat_ability_shield_description"}, {"ru"},
			loc_text("Создаёт перед вами психический щит на {duration:%s} секунды. Щит блокирует вражеские выстрелы, в то время как вы и союзники все ещё можете стрелять сквозь него.\nВосстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Ability_2_rgb_ru)),
	--[+ Traditional Chinese - 念力護盾 +]--
	-- 在身前展開一道持續{duration:%s}秒的靈能護盾。護盾能阻擋敵人的遠程攻擊，但你和盟友的射擊不受影響。\n\n基礎冷卻時間：{cooldown:%s}秒。
	create_template("talent_tree_psy_abil2_000_desc_tw",
		{"loc_talent_psyker_combat_ability_shield_description"}, {"zh-tw"},
			loc_text("在面前生成靈能護盾，持續 {duration:%s} 秒。\n"
			.."\n"
			.."- 阻擋敵方射擊，友方可穿透護盾射擊。\n"
			.."- 長按技能預覽位置，透過格擋取消。\n"
			.."\n"
			.."- 冷卻時間：{cooldown:%s} 秒。" 
			.. TALENTS_Enh_desc_tw.ED_PSY_Ability_2_rgb_tw)),

	--[+ ABILITY 2-1 - Bolstered Shield +]--	checked 27.05.2025
	create_template("talent_tree_psy_abil2_001_desc_en",
		{"loc_talent_psyker_force_field_charges_description"}, {"en"},
			loc_text("{talent_name:%s} now holds up to {max_charges:%s} charges.\n"
				..Arrow_right_.." The Cooldown of the second charge only starts after the first charge finished Cooldown.\n")),
				-- talent_name: Telekine Shield, max_charges: 2 -- ..TALENTS_Enh_desc.ED_PSY_Ability_2_1_rgb
	--[+ French +]--
	create_template("talent_tree_psy_abil2_001_desc_fr",
		{"loc_talent_psyker_force_field_charges_description"}, {"fr"},
			loc_text("{talent_name:%s} peut maintenant accumuler jusqu'à {max_charges:%s} charges."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_1_rgb_fr)),
	--[+ Russian +]-- Усиленный щит
	create_template("talent_tree_psy_abil2_001_desc_ru",
		{"loc_talent_psyker_force_field_charges_description"}, {"ru"},
			loc_text("{talent_name:%s} теперь имеет {max_charges:%s} заряда."..TALENTS_Enh_desc_ru.ED_PSY_Ability_2_1_rgb_ru)),
	--[+ Traditional Chinese - 強化護盾 +]--
	-- {talent_name:%s}現在可以疊加{max_charges:%s}層充能。
	create_template("talent_tree_psy_abil2_001_desc_tw",
		{"loc_talent_psyker_force_field_charges_description"}, {"zh-tw"},
			loc_text("{talent_name:%s} 現在擁有 {max_charges:%s} 次充能。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_2_1_rgb_tw)),

	--[+ ABILITY 2-2 - Enervating Threshold +]--	checked 27.05.2025
	create_template("talent_tree_psy_abil2_002_desc_en",
		{"loc_talent_psyker_force_field_stun_increased_new_description"}, {"en"},
			loc_text("{ability:%s} has a {proc_chance:%s} chance to "..COLORS_KWords.Electrocute_rgb.." enemies that pass through it. Specialist enemies have a {special_proc_chance:%s} chance to get "..COLORS_KWords.Electrocuted_rgb.." but also damage the {ability:%s}.\n"
				..Arrow_up_green.." Applies "..COLORS_KWords.Stagger_rgb.." every "..COLORS_Numbers.n_055_rgb.." seconds.\n"
				..Arrow_up_green.." Can "..COLORS_KWords.Stun_rgb.." all enemies except Monstrosities.\n"
				..Arrow_right_.." Deals no "..COLORS_KWords.Damage_rgb..".\n"
				..Arrow_right_.." "..COLORS_KWords.Electrocution_rgb.." effect lasts for "..COLORS_Numbers.n_3_rgb.." seconds.\n"
				..Arrow_right_.." Always applies the effect to Specials when they get in contact with the shield.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_2_2_rgb)),
				-- ability: Telekine Shield, proc_chance: 10%, special_proc_chance: 100%, colors
	--[+ French +]--Seuil Débilitant
	create_template("talent_tree_psy_abil2_002_desc_fr",
		{"loc_talent_psyker_force_field_stun_increased_new_description"}, {"fr"},
			loc_text("{ability:%s} a {proc_chance:%s} de chances d'"..COLORS_KWords_fr.Electrocute_rgb_fr.." les ennemis qui le traversent. Les ennemis spécialistes ont {special_proc_chance:%s} de chances d'être "..COLORS_KWords_fr.Electrocuted_rgb_fr.." mais endommagent également le {ability:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_2_rgb_fr)),
	--[+ Russian +]-- Порог ослабления
	create_template("talent_tree_psy_abil2_002_desc_ru",
		{"loc_talent_psyker_force_field_stun_increased_new_description"}, {"ru"},
			loc_text("{ability:%s} имеет {proc_chance:%s} шанс наложить "..COLORS_KWords_ru.Electrocute_rgb_ru.." на врагов, которые проходят сквозь него. Враги-специалисты имеют {special_proc_chance:%s} шанс поражения "..COLORS_KWords_ru.Electrocuted_rgb_ru..", но также повреждают {ability:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Ability_2_2_rgb_ru)),
	--[+ Traditional Chinese - 衰弱界線 +]--
	-- {ability:%s}有{proc_chance:%s}的幾率使經過其中的敵人遭受電擊。專家敵人經過時也有{special_proc_chance:%s}的幾率遭受電擊，但也會使{ability:%s}受損。
	create_template("talent_tree_psy_abil2_002_desc_tw",
		{"loc_talent_psyker_force_field_stun_increased_new_description"}, {"zh-tw"},
			loc_text("{ability:%s} 有機率 "..COLORS_KWords_tw.Electrocute_rgb_tw.." 穿越的敵人。\n" 
			.."- "..COLORS_KWords_tw.Electrocute_rgb_tw.."機率：\n"
			.."--Boss：無法暈眩。\n"
			.."--一般敵人：{proc_chance:%s}\n"
			.."--精英：{special_proc_chance:%s}，但會損傷{ability:%s}。\n"
			.."--專家：{special_proc_chance:%s}，但會損傷{ability:%s}。\n"
			.."--菁英與專家會對 {ability:%s} 造成傷害。\n"
			.. TALENTS_Enh_desc_tw.ED_PSY_Ability_2_2_rgb_tw)),

	--[+ ABILITY 2-3 - Telekine Dome +]--	checked 27.05.2025
	create_template("talent_tree_psy_abil2_003_desc_en",
		{"loc_talent_psyker_force_field_dome_new_desc"}, {"en"},
			loc_text("{talent_name:%s} now forms a spherical shield which lasts {duration:%s} seconds.\n"
				..Arrow_right_.." Sphere has a radius of "..COLORS_Numbers.n_6_rgb.." meters.\n"
				..Arrow_right_.." Protects from enemy attacks at all degrees.\n"
				..Arrow_right_.." Has the same properties as the flat shield.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_2_3_rgb)),
				-- talent_name: Telekine Shield, duration: 25, s->seconds
	--[+ French +]--
	create_template("talent_tree_psy_abil2_003_desc_fr",
		{"loc_talent_psyker_force_field_dome_new_desc"}, {"fr"},
			loc_text("{talent_name:%s} forme maintenant un bouclier sphérique qui dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_3_rgb_fr)),
	--[+ Russian +]-- Телекинетический купол
	create_template("talent_tree_psy_abil2_003_desc_ru",
		{"loc_talent_psyker_force_field_dome_new_desc"}, {"ru"},
			loc_text("{talent_name:%s} теперь формирует сферу радиусом "..COLORS_Numbers.n_6_rgb.." метров, которая держится {duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Ability_2_3_rgb_ru)),
	--[+ Traditional Chinese - 念力穹頂 +]--
	-- {talent_name:%s}現在形成一個持續{duration:%s}秒的球形護盾。
	create_template("talent_tree_psy_abil2_003_desc_tw",
		{"loc_talent_psyker_force_field_dome_new_desc"}, {"zh-tw"},
		-- loc_text("，持續 {duration:%s} 秒。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_2_3_rgb_tw)),
			loc_text("{talent_name:%s} 會形成圓形護盾，持續 {duration:%s} 秒。\n" 
			.."- 球體半徑為"..COLORS_Numbers.n_6_rgb.."公尺。\n"
			.. TALENTS_Enh_desc_tw.ED_PSY_Ability_2_3_rgb_tw)),

	--[+ ABILITY 2-4 - Sanctuary +]--	checked 27.05.2025
	create_template("talent_tree_psy_abil2_004_desc_en",
		{"loc_talent_psyker_force_field_grants_toughness_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." per second replenishes for Allies inside your {talent_name:%s}.\n"
				.."{toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for {duration:%s} seconds for all Allies inside your {talent_name:%s} when it dissipates.\n"
				..Arrow_up_green.." This replenishment effect can Stack if multiple spheres overlap.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_2_4_rgb)),
				-- talent_name: Telekine Shield, toughness: 10%, toughness_damage_reduction: +50%, duration: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_psy_abil2_004_desc_fr",
		{"loc_talent_psyker_force_field_grants_toughness_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par seconde pour les alliés à l'intérieur de votre {talent_name:%s}.\n{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." pendant {duration:%s} secondes pour tous les alliés à l'intérieur de votre {talent_name:%s} lorsqu'il se dissipe."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_4_rgb_fr)),
	--[+ Russian +]-- Убежище -- руоф Святилище
	create_template("talent_tree_psy_abil2_004_desc_ru",
		{"loc_talent_psyker_force_field_grants_toughness_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду восстанавливается для всех игроков, которых защищает {talent_name:%s}.\n{toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." на {duration:%s} секунд получаете вы и ваши союзники, если вас защищал {talent_name:%s}, в момент его рассеивания."..TALENTS_Enh_desc_ru.ED_PSY_Ability_2_4_rgb_ru)),
	--[+ Traditional Chinese - 庇護所 +]--
	-- 你的{talent_name:%s}內的盟友每秒恢復{toughness:%s}韌性。當你的{talent_name:%s}消散，身處其中的所有盟友獲得{toughness_damage_reduction:%s}韌性減傷，持續{duration:%s}秒。
	create_template("talent_tree_psy_abil2_004_desc_tw",
			{"loc_talent_psyker_force_field_grants_toughness_desc"}, {"zh-tw"},
			loc_text("恢復{talent_name:%s}內的玩家"..COLORS_KWords_tw.Toughness_rgb_tw.."。\n"
			.."\n"
			.."- 每秒恢復 {toughness:%s} 點"..COLORS_KWords_tw.Toughness_rgb_tw.."。\n"
			.."\n"
			.."- 當{talent_name:%s}消散，保護範圍內的玩家，\n"
			.."--將獲得{toughness_damage_reduction:%s}"..COLORS_KWords_tw.Toughness_dmg_red_u_rgb_tw.."。\n"
			.."- 持續 {duration:%s} 秒。\n"
			.. TALENTS_Enh_desc_tw.ED_PSY_Ability_2_4_rgb_tw)),
			
	--[+ ABILITY 3 - Scrier's Gaze +]--	checked 03.07.2025
	create_template("talent_tree_psy_abil3_000_desc_en",
		{"loc_talent_psyker_combat_ability_overcharge_stance_new_venting_description"}, {"en"},
			loc_text("You enter "..COLORS_KWords.Scriers_gaze_rgb..", Quell {vent:%s} "..COLORS_KWords.Peril_rgb.." and gain:\n"
				..Arrow_up_green.." {base_damage:%s} "..COLORS_KWords.Damage_rgb..",\n"
				..Arrow_up_green.." {crit_chance:%s} "..COLORS_KWords.Crit_chance_rgb.." and\n"
				..Arrow_up_green.." Suppression Immunity.\n"
				.."For every second in "..COLORS_KWords.Scriers_gaze_rgb.." you gain:\n"
				..Arrow_up_green.." {damage_per_stack:%s} "..COLORS_KWords.Damage_rgb..", up to a maximum of {max_damage:%s}. This effect lingers for {duration:%s} seconds after leaving "..COLORS_KWords.Scriers_gaze_rgb..".\n"
				.."While in "..COLORS_KWords.Scriers_gaze_rgb.." you build up "..COLORS_KWords.Peril_rgb..". Killing enemies while overcharging slows down the auto "..COLORS_KWords.Peril_rgb.." generation by reducing the effective timer by "..COLORS_Numbers.n_033_rgb.." seconds per Kill.\n"
				.."At {max_peril:%s} "..COLORS_KWords.Peril_rgb.." Ability ends.\n"
				..Arrow_right_.." Base Cooldown: {cooldown:%s} seconds.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_3_rgb)),
				-- base_damage: +10%, crit_chance: +20%, damage_per_stack: +1%, max_damage: +30%, duration: 10, max_peril: 100%, cooldown: 25, rewrite, s->seconds, colors
	--[+ French +]-- Regard de divination !!! texte trop long
	create_template("talent_tree_psy_abil3_000_desc_fr",
		{"loc_talent_psyker_combat_ability_overcharge_stance_new_venting_description"}, {"fr"},
			loc_text("Vous entrez sous "..COLORS_KWords_fr.Scriers_gaze_rgb_fr.." , atténuez votre "..COLORS_KWords_fr.Peril_rgb_fr.." de {vent:%s} et gagnez {base_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..", {crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." ainsi que l'immunité à la suppression.\nPour chaque seconde sous "..COLORS_KWords_fr.Scriers_gaze_rgb_fr.." vous gagnez {damage_per_stack:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..", jusqu'à un maximum de {max_damage:%s}. Cet effet perdure {duration:%s} secondes après être sorti de "..COLORS_KWords_fr.Scriers_gaze_rgb_fr..".\nDurant "..COLORS_KWords_fr.Scriers_gaze_rgb_fr.." votre "..COLORS_KWords_fr.Peril_rgb_fr.." augmente continuellement. Tuer des ennemis durant la capacité ralentit la génération automatique du "..COLORS_KWords_fr.Peril_rgb_fr.." en réduisant le temps effectif de "..COLORS_Numbers.n_033_rgb.." secondes par élimination.\nÀ {max_peril:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." la capacité s'arrête.\nTemps de recharge : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_rgb_fr)),
	--[+ Russian +]-- Взор провидца -- руоф Взор Скрира!!!
	create_template("talent_tree_psy_abil3_000_desc_ru",
		{"loc_talent_psyker_combat_ability_overcharge_stance_new_venting_description"}, {"ru"},
			loc_text("Вы получаете "..COLORS_KWords_ru.Scriers_gaze_rgb_ru.." и сбрасываете {vent:%s} "..COLORS_KWords_ru.Peril_rgb_ru..", а также получаете {base_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..", {crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." и иммунитет к подавлению.\n"
				.."Пока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru.." каждую секунду вы получаете {damage_per_stack:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..", вплоть до максимума в {max_damage:%s}. Этот эффект сохраняется в течение {duration:%s} секунд после того как "..COLORS_KWords_ru.Scriers_gaze_rgb_ru.." перестаёт действовать.\n"
				.."Пока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru.." ваш уровень "..COLORS_KWords_ru.Peril_rgb_ru.." растёт. Убийство врагов замедляет автогенерацию "..COLORS_KWords_ru.Peril_rgb_ru.." за счёт уменьшения таймера эффекта на "..COLORS_Numbers.n_033_rgb.." секунды за убийство.\n"
				.."При {max_peril:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." способность заканчивает своё действие.\n"
				.."Восстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Ability_3_rgb_ru)),
	--[+ Traditional Chinese - 占卜者的注視 +]--
	-- 觸發占卜師的注視。進入占卜師的注視後，平息{vent:%s}反噬，並獲得{base_damage:%s}傷害、{crit_chance:%s}暴擊機率，以及壓制免疫。在注視中每秒獲得疊加傷害{damage_per_stack:%s}，最高至{max_damage}。離開注視後該效果保留{duration:%s}秒。\n\n在占卜師的注視中，你的反噬會累積。擊殺敵人會暫時減緩累積速度。反噬達到{max_peril:%s}後，占卜師的注視結束。\n\n基礎冷卻時間：{cooldown:%s}秒
	create_template("talent_tree_psy_abil3_000_desc_tw",
		{"loc_talent_psyker_combat_ability_overcharge_stance_new_venting_description"}, {"zh-tw"},
			loc_text("進入{talent_name:%s}，並獲得以下效果：\n\n"
			.."- 平息 {vent:%s} "..COLORS_KWords_tw.Peril_rgb_tw.." 。\n"
			.."- 獲得 {base_damage:%s} "..COLORS_KWords_tw.Damage_rgb_tw.." 。\n"
			.."- {crit_chance:%s} "..COLORS_KWords_tw.Crit_chance_rgb_tw.." 。\n"
			.."- 免疫壓制。\n"
			.."\n"
			.."- {talent_name:%s} 時間內，\n"
			.."--每秒提升 {damage_per_stack:%s} "..COLORS_KWords_tw.Damage_rgb_tw.." ，最高 {max_damage:%s}。\n"
			.."-- {talent_name:%s} 技能結束後可持續 {duration:%s} 秒。\n"
			.."\n"
			.."-{talent_name:%s} 期間 "..COLORS_KWords_tw.Peril_rgb_tw.." 會逐漸上升。\n"
			.."\n"
			.."-擊殺敵人可減緩 "..COLORS_KWords_tw.Peril_rgb_tw.." 累積，並縮短技能 "..COLORS_Numbers.n_033_rgb.." 秒/擊殺。\n"
			.."- "..COLORS_KWords_tw.Peril_rgb_tw.." 達到 {max_peril:%s} 時，技能立即結束。\n"
			.."- 冷卻時間：{cooldown:%s} 秒。\n"
			.. TALENTS_Enh_desc_tw.ED_PSY_Ability_3_rgb_tw)),

	--[+ ABILITY 3-1 - Endurance +]--	checked 03.07.2025
	create_template("talent_tree_psy_abil3_001_desc_en",
		{"loc_ability_psyker_overcharge_reduced_toughness_damage_taken_description"}, {"en"},
			loc_text("While overcharging, {talent_name:%s} grants {tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb..".\n"
				..Arrow_down_red.." Doesn't linger after overcharging phase.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_3_1_rgb)),
				-- talent_name: Scrier's Gaze, tdr: +20%, colors
	--[+ French +]--
	create_template("talent_tree_psy_abil3_001_desc_fr",
		{"loc_ability_psyker_overcharge_reduced_toughness_damage_taken_description"}, {"fr"},
			loc_text("Pendant {talent_name:%s} vous gagnez {tdr:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_1_rgb_fr)),
	--[+ Russian +]-- Выносливость
	create_template("talent_tree_psy_abil3_001_desc_ru",
		{"loc_ability_psyker_overcharge_reduced_toughness_damage_taken_description"}, {"ru"},
			loc_text("Пока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru..", вы получаете {tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Ability_3_1_rgb_ru)),
	--[+ Traditional Chinese - 堅韌 +]--
	--{talent_name:%s}啟動期間獲得{tdr:%s}韌性減傷。
	create_template("talent_tree_psy_abil3_001_desc_tw",
		{"loc_ability_psyker_overcharge_reduced_toughness_damage_taken_description"}, {"zh-tw"},
			loc_text("當"..COLORS_KWords2_tw.Scriers_gaze_rgb_tw.."啟動時，\n獲得 {tdr:%s} "..COLORS_KWords_tw.Toughness_dmg_red_u_rgb_tw.."。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_3_1_rgb_tw)),

	--[+ ABILITY 3-2 - Precognition +]--	checked 03.07.2025
	create_template("talent_tree_psy_abil3_002_desc_en",
		{"loc_ability_psyker_overcharge_weakspot_description"}, {"en"},
			loc_text("While overcharging, makes "..COLORS_KWords.Weak_spot_rgb.." kills generate {second:%s} additional Stack.\n"
				.."For each second spent in {talent_name:%s}, you now also gain:\n"
				..Arrow_up_green.." {finesse_damage_per_stack:%s} "..COLORS_KWords.Finesse_dmg_rgb..", up to {max_finesse_damage:%s} Max, which lingers for {duration:%s} seconds after leaving {talent_name:%s}.\n"
				..Arrow_up_green.." Can proc multiple times per attack when "..COLORS_KWords.Cleaving_rgb..".\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_3_2_rgb)),
				-- second: 1, talent_name: Scrier's Gaze, finesse_damage_per_stack: +1%, max_finesse_damage: +30%, duration: 10, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_psy_abil3_002_desc_fr",
		{"loc_ability_psyker_overcharge_weakspot_description"}, {"fr"},
			loc_text("Pendant {talent_name:%s}, les éliminations par point faible compte comme {second:%s} sous {talent_name:%s}.\n\nPour chaque seconde passée dans {talent_name:%s}, vous gagnez également {finesse_damage_per_stack:%s} de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr..", jusqu'à un maximum de {max_finesse_damage:%s}, ce qui persiste pendant {duration:%s} secondes après avoir quitté {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_2_rgb_fr)),
	--[+ Russian +]-- Предвидение -- руоф Познание
	create_template("talent_tree_psy_abil3_002_desc_ru",
		{"loc_ability_psyker_overcharge_weakspot_description"}, {"ru"},
			loc_text("Пока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru..", убийства в "..COLORS_KWords_ru.Weakspot_rgb_ru.." засчитываются как {second:%s} секунда под действием этой способности.\n\nЗа каждую секунду под действием способности "..COLORS_KWords_ru.Scriers_gaze_rgb_ru..", вы также получаете {finesse_damage_per_stack:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." от "..COLORS_KWords_ru.Finesse_rgb_ru..", до максимальных {max_finesse_damage:%s}. Эффект держится {duration:%s} секунд после окончания действия таланта "..COLORS_KWords_ru.Scriers_gaze_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Ability_3_2_rgb_ru)),
	--[+ Traditional Chinese - 預知未來 +]--
	--每次弱點擊殺視作在{talent_name:%s}狀態下{second:%s}秒持續時間。\n\n持續{talent_name:%s}狀態每一秒賦予{finesse_damage_per_stack:%s}靈巧傷害（最多{max_finesse_damage%s}），脫離{talent_name:%s}狀態後效果延續{duration:%s}秒。
	create_template("talent_tree_psy_abil3_002_desc_tw",
		{"loc_ability_psyker_overcharge_weakspot_description"}, {"zh-tw"},
			loc_text("當"..COLORS_KWords2_tw.Scriers_gaze_rgb_tw.."啟動時，\n"
			.."\n"
			.."- "..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 敵人會延長技能 {second:%s} 秒。\n"
			.."- 每秒 {finesse_damage_per_stack:%s} "..COLORS_KWords_tw.Finesse_dmg_rgb_tw.."，最高 {max_finesse_damage:%s}，\n"
			.."- {talent_name:%s} 技能結束後可持續 {duration:%s} 秒。"
			.. TALENTS_Enh_desc_tw.ED_PSY_Ability_3_2_rgb_tw)),

	--[+ ABILITY 3-3 - Warp Speed +]--	checked 03.07.2025
	create_template("talent_tree_psy_abil3_003_desc_en",
		{"loc_ability_psyker_overcharge_movement_speed_description"}, {"en"},
			loc_text("While overcharging, {talent_name:%s} increases your Movement Speed by {movement_speed:%s}.\n"
				..Arrow_down_red.." Doesn't linger after overcharging phase.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_3_3_rgb)),
				-- talent_name: Scrier's Gaze, movement_speed: +20%
	--[+ French +]--
	create_template("talent_tree_psy_abil3_003_desc_fr",
		{"loc_ability_psyker_overcharge_movement_speed_description"}, {"fr"},
			loc_text("Pendant {talent_name:%s}, votre vitesse de déplacement augmente de {movement_speed:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_3_rgb_fr)),
	--[+ Russian +]-- Варп-скорость
	create_template("talent_tree_psy_abil3_003_desc_ru",
		{"loc_ability_psyker_overcharge_movement_speed_description"}, {"ru"},
			loc_text("Пока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru..", вы получаете {movement_speed:%s} к скорости движения."..TALENTS_Enh_desc_ru.ED_PSY_Ability_3_3_rgb_ru)),
	--[+ Traditional Chinese - 亞空間加速 +]--
	--{talent_name:%s}啟動期間獲得{movement_speed:%s}移動速度。
	create_template("talent_tree_psy_abil3_003_desc_tw",
		{"loc_ability_psyker_overcharge_movement_speed_description"}, {"zh-tw"},
		loc_text("當"..COLORS_KWords2_tw.Scriers_gaze_rgb_tw.."啟動時，移動速度提高 {movement_speed:%s}。" .. TALENTS_Enh_desc_tw.ED_PSY_Ability_3_3_rgb_tw)),

	--[+ ABILITY 3-4 - Reality Anchor +]--	checked 03.07.2025
	create_template("talent_tree_psy_abil3_004_desc_en",
		{"loc_ability_psyker_overcharge_reduced_warp_charge_description"}, {"en"},
			loc_text("While overcharging, {talent_name:%s} also reduces your "..COLORS_KWords.Peril_rgb.." Generated by {warp_charge:%s}.\n"
				..Arrow_down_red.." Doesn't linger after overcharging phase.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_3_4_rgb)),
				-- talent_name: Scrier's Gaze, warp_charge: -20%, colors
	--[+ French +]--
	create_template("talent_tree_psy_abil3_004_desc_fr",
		{"loc_ability_psyker_overcharge_reduced_warp_charge_description"}, {"fr"},
			loc_text("Pendant {talent_name:%s} votre génération de "..COLORS_KWords_fr.Peril_rgb_fr.." est réduite de {warp_charge:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_4_rgb_fr)),
	--[+ Russian +]-- Якорь реальности
	create_template("talent_tree_psy_abil3_004_desc_ru",
		{"loc_ability_psyker_overcharge_reduced_warp_charge_description"}, {"ru"},
			loc_text("Пока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru..", вы получаете {warp_charge:%s} к генерированию "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Ability_3_4_rgb_ru)),
	--[+ Traditional Chinese - 現實錨點 +]--
	--{talent_name:%s}啟動期間還會降低{warp_charge:%s}已生成的反噬。
	create_template("talent_tree_psy_abil3_004_desc_tw",
		{"loc_ability_psyker_overcharge_reduced_warp_charge_description"}, {"zh-tw"},
			loc_text("當"..COLORS_KWords2_tw.Scriers_gaze_rgb_tw.."啟動時，\n"
			.."立即降低 {warp_charge:%s}"..COLORS_KWords_tw.Peril_rgb_tw.."。\n"
			.. TALENTS_Enh_desc_tw.ED_PSY_Ability_3_4_rgb_tw)),

	--[+ ABILITY 3-5 - Warp Unbound +]--	checked 03.07.2025
	create_template("talent_tree_psy_abil3_005_desc_en",
		{"loc_talent_psyker_overcharge_infinite_casting_desc"}, {"en"},
			loc_text("{talent_name:%s} now also prevents overloading from "..COLORS_KWords.Perils_rgb.." of the Warp, during its lingering effect.\n"
				..Arrow_right_.." After overcharging has ended, allows Psyker to execute "..COLORS_KWords.Peril_rgb.."-generating actions while at "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords.Peril_rgb.." for "..COLORS_Numbers.n_10_rgb.." seconds without triggering the self-explosion.\n"
				..TALENTS_Enh_desc.ED_PSY_Ability_3_5_rgb)),
				-- talent_name: Scrier's Gaze
	--[+ French +]--
	create_template("talent_tree_psy_abil3_005_desc_fr",
		{"loc_talent_psyker_overcharge_infinite_casting_desc"}, {"fr"},
			loc_text("{talent_name:%s} empêche désormais également la surcharge due aux "..COLORS_KWords_fr.Perils_rgb_fr.." de Warp, pendant son effet persistant."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_5_rgb_fr)),
	--[+ Russian +]-- Высвобождение варпа -- руоф Искажение варпа
	create_template("talent_tree_psy_abil3_005_desc_ru",
		{"loc_talent_psyker_overcharge_infinite_casting_desc"}, {"ru"},
			loc_text("В течение "..COLORS_Numbers.n_10_rgb.." секунд после окончания действия способности "..COLORS_KWords_ru.Scriers_gaze_rgb_ru..", вы можете использовать все генерирующие "..COLORS_KWords_ru.Perl_rgb_ru.." действия без угрозы взрыва, даже при "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Ability_3_5_rgb_ru)),
	--[+ Traditional Chinese - 亞空間突破 +]--
	-- {talent_name:%s}的效果持續時間內也能避免亞空間反噬所造成的超載效果。
	create_template("talent_tree_psy_abil3_005_desc_tw",
		{"loc_talent_psyker_overcharge_infinite_casting_desc"}, {"zh-tw"},
		loc_text("{talent_name:%s} 期間，免疫反噬超載效果。\n"
		.."\n"
		.."- 在"..COLORS_KWords2_tw.Scriers_gaze_rgb_tw.."結束後的"..COLORS_Numbers.n_10_rgb.."秒內，\n"
		.."--可以無限制使用所有會產生"..COLORS_KWords_tw.Peril_rgb_tw.."的技能，\n"
		.."--即使達到"..COLORS_Numbers.pc_100_rgb.."的"..COLORS_KWords_tw.Peril_rgb_tw.."，也不會爆炸。\n"
		.. TALENTS_Enh_desc_tw.ED_PSY_Ability_3_5_rgb_tw
	)),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--	checked 03.07.2025
	--[+ KEYSTONE 1 - Warp Siphon +]--
	create_template("talent_tree_psy_keys1_000_desc_en",
		{"loc_talent_psyker_souls_desc"}, {"en"},
			loc_text("Killing an Elite or Specialist Enemy gains you a Warp Charge for {duration:%s} seconds, Stacking {stack:%s} times.\n"
				.."Your next "..COLORS_KWords.Combat_ability_rgb.." spends all available Warp Charges to reduce the "..COLORS_KWords.Cd_rgb.." of that "..COLORS_KWords.Combat_ability_rgb.." by {cooldown_reduction:%s} per Warp Charge.\n"
				..Arrow_up_green.." Can be refreshed during active duration.\n"
				..TALENTS_Enh_desc.ED_PSY_Keystone_1_rgb)),
				-- duration: 25, stack: 4, cooldown_reduction: 7.5% -- time(s)->times, colors
	--[+ French +]--
	create_template("talent_tree_psy_keys1_000_desc_fr",
		{"loc_talent_psyker_souls_desc"}, {"fr"},
			loc_text("Éliminer un ennemi Élite ou Spécialiste vous accorde une charge de Siphon de Warp pendant {duration:%s} secondes, Se cumuls jusqu'à {stack:%s} fois. Votre prochaine "..COLORS_KWords_fr.Combat_ability_rgb_fr.." utilise toutes les charges de Siphon de Warp disponibles pour une "..COLORS_KWords_fr.Ability_cd_rgb_fr.." de cette "..COLORS_KWords_fr.Combat_ability_rgb_fr.." de {cooldown_reduction:%s} par charge de Siphon de Warp."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_rgb_fr)),
	--[+ Russian +]--
	create_template("talent_tree_psy_keys1_000_desc_ru",
		{"loc_talent_psyker_souls_desc"}, {"ru"},
			loc_text("Убийство элитного врага или специалиста даёт вам варп-заряд на {duration:%s} секунд, суммируется {stack:%s} раза. Следующая применённая "..COLORS_KWords_ru.Combat_abil_rgb_ru.." потратит все доступные варп-заряды и уменьшит своё время "..COLORS_KWords_ru.Cd_rgb_ru.." на {cooldown_reduction:%s} за каждый варп-заряд."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_rgb_ru)),
	--[+ Traditional Chinese - 亞空間虹吸 +]--
	-- 擊殺一名精英或專家敵人時，可獲得一層亞空間充能，持續{duration:%s}秒，最多可疊加{stack:%s}次。你的下一次戰鬥技能將消耗所有可用的亞空間充能，每層可降低{cooldown_reduction:%s}戰鬥技能冷卻時間。
	create_template("talent_tree_psy_keys1_000_desc_zh-tw",
		{"loc_talent_psyker_souls_desc"}, {"zh-tw"},
			-- loc_text("，並使其"..COLORS_KWords_ru.Cd_rgb_ru.."時間每層縮短 {cooldown_reduction:%s}。"..TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_rgb_tw)),
			loc_text("擊殺精英或專家可獲得一層亞空間充能。\n"
			.."\n"
			.."- 持續 {duration:%s} 秒，\n"
			.."- 最高可疊加 {stack:%s} 層。\n"
			.."- 使用戰鬥技能將消耗所有亞空間充能，\n"
			.."- 每層可降低 {cooldown_reduction:%s} "..COLORS_KWords_tw.Cd_rgb_tw.."時間。"
			..TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_rgb_tw)),

	--[+ KEYSTONE 1-1 - Inner Tranquility +]--	checked 03.07.2025
	create_template("talent_tree_psy_keys1_001_desc_en",
		{"loc_talent_psyker_reduced_warp_charge_cost_venting_speed_desc"}, {"en"},
			loc_text("{warp_charge_amount:%s} "..COLORS_KWords.Peril_rgb.." Generation Reduction for each Warp Charge.\n"
				..TALENTS_Enh_desc.ED_PSY_Keystone_1_1_rgb)),
			-- warp_charge_amount: -6%, colors
	--[+ French +]--
	create_template("talent_tree_psy_keys1_001_desc_fr",
		{"loc_talent_psyker_reduced_warp_charge_cost_venting_speed_desc"}, {"fr"},
			loc_text("Réduction de la génération de "..COLORS_KWords_fr.Peril_rgb_fr.." de {warp_charge_amount:%s} pour chaque charge de Siphon de Warp."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_1_rgb_fr)),
	--[+ Russian +]-- Внутреннее спокойствие
	create_template("talent_tree_psy_keys1_001_desc_ru",
		{"loc_talent_psyker_reduced_warp_charge_cost_venting_speed_desc"}, {"ru"},
			loc_text("{warp_charge_amount:%s} генерации "..COLORS_KWords_ru.Peril_rgb_ru.." за каждый варп-заряд.\n"
			..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_1_rgb_ru)),
	--[+ Traditional Chinese - 平心靜氣 +]--
	-- 每層亞空間充能減少反噬生成{warp_charge_amount:%s}。
	create_template("talent_tree_psy_keys1_001_desc_tw",
			{"loc_talent_psyker_reduced_warp_charge_cost_venting_speed_desc"}, {"zh-tw"},
				loc_text("每層亞空間充能會 {warp_charge_amount:%s} "..COLORS_KWords_tw.Peril_rgb_tw.." 生成。" ..TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_1_rgb_tw)),

	--[+ KEYSTONE 1-2 - Essence Harvest +]--
	create_template("talent_tree_psy_keys1_002_desc_en",
		{"loc_talent_psyker_toughness_regen_on_soul_desc"}, {"en"},
			loc_text(COLORS_Numbers.pc_6_rgb.." "..COLORS_KWords.Toughness_rgb.." is replenished per second for {time:%s} seconds after gaining Warp Charge, up to a Maximum of {toughness:%s}. Gaining a new Warp Charge during this time resets the timer.\n"
				..Arrow_right_.." Doesn't increase the amount of "..COLORS_KWords.Toughness_rgb.." replenished.\n"
				..TALENTS_Enh_desc.ED_PSY_Keystone_1_2_rgb)),
				-- toughness: 30%, time: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_psy_keys1_002_desc_fr",
		{"loc_talent_psyker_toughness_regen_on_soul_desc"}, {"fr"},
			loc_text(COLORS_Numbers.pc_6_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." est régénérée par seconde pendant {time:%s} secondes après avoir gagné une charge de Siphon de Warp, jusqu'à un maximum de {toughness:%s}. Gagner une nouvelle charge pendant ce temps réinitialise le compte à rebours."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_2_rgb_fr)),
	--[+ Russian +]-- Сбор сущностей -- руоф Сбор сущности
	create_template("talent_tree_psy_keys1_002_desc_ru",
		{"loc_talent_psyker_toughness_regen_on_soul_desc"}, {"ru"},
			loc_text(COLORS_Numbers.pc_6_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду восстанавливается в течение {time:%s} секунд после получения варп-заряда, вплоть до максимальных {toughness:%s}. Получение нового варп-заряда обновляет таймер.\n"
				..Arrow_right_.." Не увеличивает количество восстанавливаемой "..COLORS_KWords_ru.Toughness_rgb_ru..".\n"
				..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_2_rgb_ru)),
	--[+ Traditional Chinese - 吸精奪萃 +]--
	--獲得亞空間充能後，在{time:%s}秒內恢復{toughness:%s}韌性。在效果持續期間獲得新的亞空間充能會刷新此效果。
	create_template("talent_tree_psy_keys1_002_desc_tw",
		{"loc_talent_psyker_toughness_regen_on_soul_desc"}, {"zh-tw"},
			loc_text("獲得亞空間充能時恢復 "..COLORS_KWords_tw.Toughness_rgb_tw.." 。\n"
			.."\n"
			.."- 每秒恢復 "..COLORS_Numbers.pc_6_rgb.." "..COLORS_KWords_tw.Toughness_rgb_tw.."，持續 {time:%s} 秒。\n"
			.."- 最多可恢復 {toughness:%s}。\n"
			.."- 獲得新的亞空間充能會刷新此效果。"	
			..TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_2_rgb_tw)),

	--[+ KEYSTONE 1-3 - Empyrean Empowerment +]--
	create_template("talent_tree_psy_keys1_003_desc_en",
		{"loc_talent_psyker_souls_increase_damage_desc"}, {"en"},
			loc_text("{damage:%s} increase to all Base "..COLORS_KWords.Damage_rgb.." for each Warp Charge.\n"
				..TALENTS_Enh_desc.ED_PSY_Keystone_1_3_rgb)),
				-- damage: +4%, colors
	--[+ French +]--
	create_template("talent_tree_psy_keys1_003_desc_fr",
		{"loc_talent_psyker_souls_increase_damage_desc"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de toute les sources pour chaque charge de Siphon de Warp."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_3_rgb_fr)),
	--[+ Russian +]-- Эмпирейское усиление -- руоф Усиление влияния Эмпирея
	create_template("talent_tree_psy_keys1_003_desc_ru",
		{"loc_talent_psyker_souls_increase_damage_desc"}, {"ru"},
			loc_text("{damage:%s} ко всему базовому "..COLORS_KWords_ru.Damage_rgb_ru.." за каждый варп-заряд."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_3_rgb_ru)),
	--[+ Traditional Chinese - 至天高之力 +]--
	--每一層亞空間充能使所有基礎傷害提高{damage:%s}。
	create_template("talent_tree_psy_keys1_003_desc_tw",
		{"loc_talent_psyker_souls_increase_damage_desc"}, {"zh-tw"},
			loc_text("亞空間充能可使 "..COLORS_KWords_tw.Dmg_b_rgb_tw.." 提高。\n"
			.."\n"
			.."- 每層亞空間充能 {damage:%s} "..COLORS_KWords_tw.Dmg_b_rgb_tw.."。"
			..TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_3_rgb_tw)),

	--[+ KEYSTONE 1-4 - In Fire Reborn +]--
	create_template("talent_tree_psy_keys1_004_desc_en",
		{"loc_talent_psyker_warpfire_generates_souls_desc"}, {"en"},
			loc_text("{chance:%s} chance to gain a Warp Charge when you or an Ally kill an enemy who is currently affected by "..COLORS_KWords.Soulblaze_rgb..".\n"
				..Arrow_up_green.." You gain a Warp charge when an enemy who is currently affected by "..COLORS_KWords.Soulblaze_rgb.." is killed either by "..COLORS_KWords.Soulblaze_rgb..", by Psyker, or by an ally.\n"
				..Arrow_up_green.." This effect has No Range limit and benefits all Psykers who have this Talent equipped.\n")),
				-- chance: 10%, colors -- ..TALENTS_Enh_desc.ED_PSY_Keystone_1_4_rgb
	--[+ French +]--
	create_template("talent_tree_psy_keys1_004_desc_fr",
		{"loc_talent_psyker_warpfire_generates_souls_desc"}, {"fr"},
			loc_text("{chance:%s} chance de gagner une charge de Siphon de Warp lorsque vous ou un allié éliminer un ennemi actuellement affecté par "..COLORS_KWords_fr.Soulblaze_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_4_rgb_fr)),
	--[+ Russian +]-- Возрождение в огне -- руоф В огне восстану
	create_template("talent_tree_psy_keys1_004_desc_ru",
		{"loc_talent_psyker_warpfire_generates_souls_desc"}, {"ru"},
			loc_text("{chance:%s} шанс получить варп-заряд, когда вы или ваш союзник убиваете врага, на которого в данный момент действует эффект "..COLORS_KWords_ru.Soulblaze_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_4_rgb_ru)),
	--[+ Traditional Chinese - 涅槃 +]--
	-- 使用靈魂之火擊殺敵人可帶來{chance:%s}幾率為你疊加一層亞空間充能。
	create_template("talent_tree_psy_keys1_004_desc_tw",
			{"loc_talent_psyker_warpfire_generates_souls_desc"}, {"zh-tw"},
				loc_text(COLORS_KWords_tw.Soulblaze_k_rgb_tw.." 有機增加亞空間充能。\n"
				.."\n"
				.."- "..COLORS_KWords_tw.Soulblaze_k_rgb_tw.."時，有 {chance:%s} 機率獲得充能。\n"
				.."- 你與隊友的"..COLORS_KWords_tw.Soulblaze_k_rgb_tw.."都有機率觸發。"
				..TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_4_rgb_tw)),

	--[+ KEYSTONE 1-5 - Psychic Vampire +]--
	create_template("talent_tree_psy_keys1_006_desc_en",
		{"loc_talent_psyker_souls_on_kill_coop_desc"}, {"en"},
			loc_text("{soul_chance:%s} chance to gain a Warp Charge whenever you or an Ally in "..COLORS_KWords.Coherency_rgb.." kills an enemy.\n"
				..Arrow_up_green.." If multiple Psykers are in Coherency with each other, all of them get a Warp charge when the Talent procs for one of them.\n")),
				-- soul_chance: 4% -- ..TALENTS_Enh_desc.ED_PSY_Keystone_1_5_rgb
	--[+ French +]--
	create_template("talent_tree_psy_keys1_006_desc_fr",
		{"loc_talent_psyker_souls_on_kill_coop_desc"}, {"fr"},
			loc_text("{soul_chance:%s} chance de gagner une charge de Siphon de Warp chaque fois que vous ou un allié en syntonie éliminés un ennemi."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_5_rgb_fr)),
	--[+ Russian +]-- Психический вампир
	create_template("talent_tree_psy_keys1_006_desc_ru",
		{"loc_talent_psyker_souls_on_kill_coop_desc"}, {"ru"},
			loc_text("{soul_chance:%s} шанс получить варп-заряд, когда вы или ваш союзник в "..COLORS_KWords_ru.Coherency_rgb_ru.." убиваете врага."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_5_rgb_ru)),
	--[+ Traditional Chinese - 靈能吸血鬼 +]--
	-- 每當你或協同中的盟友擊殺敵人，你有{soul_chance:%d}的機率獲得一層亞空間充能。
	create_template("talent_tree_psy_keys1_006_desc_tw",
			{"loc_talent_psyker_souls_on_kill_coop_desc"}, {"zh-tw"},
				loc_text("擊殺敵人時有 {soul_chance:%s} 機率獲得亞空間充能。\n"
				.."\n" 
				.."- "..COLORS_KWords_tw.Coherencing_rgb_tw.." 隊友擊殺也有相同機率。"
				..TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_5_rgb_tw)),

	--[+ KEYSTONE 1-6 - Warp Battery +]--
	create_template("talent_tree_psy_keys1_005_desc_en",
		{"loc_talent_psyker_increased_souls_desc"}, {"en"},
			loc_text("You can store up to {soul_amount:%s} Warp Charges.\n")),
			-- soul_amount: 6 -- ..TALENTS_Enh_desc.ED_PSY_Keystone_1_6_rgb
	--[+ French +]--
	create_template("talent_tree_psy_keys1_005_desc_fr",
		{"loc_talent_psyker_increased_souls_desc"}, {"fr"},
			loc_text("Vous pouvez stocker jusqu'à {soul_amount:%s} charges de Siphon de Warp."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_6_rgb_fr)),
	--[+ Russian +]-- Варп-аккумулятор
	create_template("talent_tree_psy_keys1_005_desc_ru",
		{"loc_talent_psyker_increased_souls_desc"}, {"ru"},
			loc_text("Вы можете хранить до {soul_amount:%s} варп-зарядов."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_6_rgb_ru)),
	--[+ Traditional Chinese - 亞空間電池 +]--
	-- 能掌握的亞空間充能的最高層數提高至{soul_amount:%s}。
	create_template("talent_tree_psy_keys1_005_desc_tw",
		{"loc_talent_psyker_increased_souls_desc"}, {"zh-tw"},
			loc_text("最多可以儲存 {soul_amount:%s} 個亞空間充能。" .. TALENTS_Enh_desc_tw.ED_PSY_Keystone_1_6_rgb_tw)),

	--[+ KEYSTONE 2 - Empowered Psionics +]--
	create_template("talent_tree_psy_keys2_000_desc_en",
		{"loc_talent_psyker_empowered_ability_description"}, {"en"},
			loc_text("Kills have a {chance:%s} chance to Empower your next Blitz.\n"
				.."Empowered {blitz_one:%s}:\n"
				.."{smite_damage:%s} "..COLORS_KWords.Damage_rgb..",\n"
				.."{smite_cost:%s} "..COLORS_KWords.Peril_rgb.." Cost Reduction,\n"
				.."{smite_attack_speed:%s} Cast time Reduction.\n"
				..TALENTS_Enh_desc.ED_PSY_Keystone_2_0_1_rgb.."\n"
				.."Empowered {blitz_two:%s}:\n"
				.."{chain_lightning_damage:%s} "..COLORS_KWords.Damage_rgb..",\n"
				.."{chain_lightning_jump_time_multiplier:%s} faster spread between Enemies.\n"
				..TALENTS_Enh_desc.ED_PSY_Keystone_2_0_2_rgb.."\n"
				.."Empowered {blitz_three:%s}:\n"
				.."{throwing_knives_cost:%s} "..COLORS_KWords.Peril_rgb.." Cost Reduction,\n"
				.."Base "..COLORS_KWords.Damage_rgb.." increase from {throwing_knives_old_damage:%s} to {throwing_knives_new_damage:%s}.\n"
				.."Does not consume any charges.\n"
				..Arrow_up_green.." Allows casting at "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords.Peril_rgb..".\n"
				..Arrow_up_green.." Double the number of targets.\n"
				..TALENTS_Enh_desc.ED_PSY_Keystone_2_0_3_rgb)),
				-- chance: 7.5%, blitz_one: Brain Rupture, smite_cost: 100%, smite_attack_speed: 50%, smite_damage: +50%, blitz_two: Smite, chain_lightning_damage: +200%, chain_lightning_jump_time_multiplier: 50%, blitz_three: Assail, throwing_knives_cost: 100%, throwing_knives_old_damage: 100, throwing_knives_new_damage: 150, colors
	--[+ French +]--
	create_template("talent_tree_psy_keys2_000_desc_fr",
		{"loc_talent_psyker_empowered_ability_description"}, {"fr"},
			loc_text("Les éliminations ont {chance:%s} de chances de renforcer votre prochain Blitz.\n{blitz_one:%s} augmenté:\n{smite_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..",\n{smite_cost:%s} de Réduction du coût de "..COLORS_KWords_fr.Peril_rgb_fr..",\n{smite_attack_speed:%s} de Vitesse de chargement."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_2_0_1_rgb_fr.."\n{blitz_two:%s} augmenté:\n{chain_lightning_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..",\n{chain_lightning_jump_time_multiplier:%s} de vitesse de propagation entre les ennemis."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_2_0_2_rgb_fr.."\n{blitz_three:%s} augmenté:\n{throwing_knives_cost:%s} de Réduction du coût de "..COLORS_KWords_fr.Peril_rgb_fr..",\nAugmentation des dégâts de base de {throwing_knives_old_damage:%s} à {throwing_knives_new_damage:%s}.\nNe consomme aucun projectile."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_2_0_3_rgb_fr)),
	--[+ Russian +]-- Усиленная псионика -- руоф Усиленные псионики
	create_template("talent_tree_psy_keys2_000_desc_ru",
		{"loc_talent_psyker_empowered_ability_description"}, {"ru"},
			loc_text("Убийства имеют {chance:%s} шанс усилить ваш следующий блиц.\nУсиленный {blitz_one:%s}:\n{smite_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"..COLORS_Numbers.n_minus_rgb.."{smite_cost:%s} генерации "..COLORS_KWords_ru.Peril_rgb_ru.." и\nна {smite_attack_speed:%s} сокращается время заряжания."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_2_0_1_rgb_ru.."\nУсиленное {blitz_two:%s}:\n{chain_lightning_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"..COLORS_Numbers.n_plus_rgb.."{chain_lightning_jump_time_multiplier:%s} к скорости распространения между врагами."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_2_0_2_rgb_ru.."\nУсиленное {blitz_three:%s}:\nНе тратит снаряды.\n"..COLORS_Numbers.n_minus_rgb.."{throwing_knives_cost:%s} генерации "..COLORS_KWords_ru.Peril_rgb_ru..",\nСо {throwing_knives_old_damage:%s} до {throwing_knives_new_damage:%s} повышается базовый "..COLORS_KWords_ru.Dmg_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_2_0_3_rgb_ru)),
	--[+ Traditional Chinese - 靈能強化 +]--
	--擊殺敵人有{chance:%s}幾率強化你的下一個閃擊技能。\n\n強化版{blitz_one:%s}：\n{smite_cost:%s}反噬值消耗減少\n{smite_attack_speed:%s}施放時間減少\n{smite_damage:%s}傷害\n\n強化版{blitz_two:%s}：\n{chain_lightning_damage:%s}傷害{chain_lightning_jump_time_multiplier:%s}在敵人間的傳導速度加快\n\n強化版{blitz_three:%s}：\n{throwing_knives_cost:%s}反噬值消耗降低\n基礎傷害從{throwing_knives_old_damage:%s}增至{throwing_knives_new_damage:%s}\n不再消耗充能層數。
	create_template("talent_tree_psy_keys2_000_desc_zh_tw",
		{"loc_talent_psyker_empowered_ability_description"}, {"zh-tw"},
		loc_text("擊殺敵人有機率強化下一個閃擊技能。\n"
				.."\n"
				.."- 強化機率 {chance:%s} 。\n"
				.."\n"
				.."{blitz_one:%s} 的強化效果：\n"
				.."_______________________________\n"
				.."- "..COLORS_KWords_tw.Damage_rgb_tw.." {smite_damage:%s}。\n"
				.."- 產生的 "..COLORS_KWords_tw.Peril_rgb_tw.." "..COLORS_Numbers.n_minus_rgb.."{smite_cost:%s} 。\n"
				.."- 縮短 {smite_attack_speed:%s} 充能時間。"
 				.. TALENTS_Enh_desc_tw.ED_PSY_Keystone_2_0_1_rgb_tw.."\n" 
				.."\n"
				.. "{blitz_two:%s} 的強化效果：\n"
				.."_______________________________\n"
				.."- "..COLORS_KWords_tw.Damage_rgb_tw.." {chain_lightning_damage:%s}。\n"
				.."- 傳導速度加快 {chain_lightning_jump_time_multiplier:%s}。"
				.. TALENTS_Enh_desc_tw.ED_PSY_Keystone_2_0_2_rgb_tw.."\n" 
				.."\n"
				.."{blitz_three:%s} 的強化效果：\n"
				.."_______________________________\n"
				.."- 不消耗彈藥。\n"
				.."- 產生的 "..COLORS_KWords_tw.Peril_rgb_tw.." "..COLORS_Numbers.n_minus_rgb.."{throwing_knives_cost:%s} 。\n"
				.."- 基礎"..COLORS_KWords_tw.Dmg_rgb_tw.."從 {throwing_knives_old_damage:%s} 提升至 {throwing_knives_new_damage:%s}。"
		   		.. TALENTS_Enh_desc_tw.ED_PSY_Keystone_2_0_3_rgb_tw )),

	--[+ KEYSTONE 2-1 - Bio-Lodestone +]--
	create_template("talent_tree_psy_keys2_001_desc_en",
		{"loc_talent_psyker_increase_empower_chain_lighting_chance_description"}, {"en"},
			loc_text("Increases the chance to gain {talent_name:%s} on Kill from {proc_chance_before:%s} to {proc_chance_after:%s}.")),
			-- talent_name: Empowered Psionics, proc_chance_before: 7.5%, proc_chance_after: 12.5%
	--[+ French +]--
	create_template("talent_tree_psy_keys2_001_desc_fr",
		{"loc_talent_psyker_increase_empower_chain_lighting_chance_description"}, {"fr"},
			loc_text("Augmente les chances de gagner {talent_name:%s} lors d'une élimination de {proc_chance_before:%s} à {proc_chance_after:%s}.")),
	--[+ Russian +]-- Биопритяжение +]--
	create_template("talent_tree_psy_keys2_001_desc_ru",
		{"loc_talent_psyker_increase_empower_chain_lighting_chance_description"}, {"ru"},
			loc_text("С {proc_chance_before:%s} до {proc_chance_after:%s} возрастает шанс получить заряд таланта {talent_name:%s} при убийстве.")),
	--[+ Traditional Chinese - 生物磁石 +]--
	-- 擊殺後獲得{talent_name:%s}的幾率從{proc_chance_before:%s}提高至{proc_chance_after:%s}。
	create_template("talent_tree_psy_keys2_001_desc_tw",
			{"loc_talent_psyker_increase_empower_chain_lighting_chance_description"}, {"zh-tw"},
				loc_text("擊殺獲得 {talent_name:%s} 的機率提升。\n"
				.."- 機率由 {proc_chance_before:%s} 提升至 {proc_chance_after:%s}。")),

	--[+ KEYSTONE 2-2 - Psychic Leeching +]--
	create_template("talent_tree_psy_keys2_002_desc_en",
		{"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies_description"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment for you and Allies in "..COLORS_KWords.Coherency_rgb.." when using your Blitz while {talent_name:%s} is active.\n"
				..TALENTS_Enh_desc.ED_PSY_Keystone_2_2_rgb)),
				-- talent_name: Empowered Psionics, toughness: 15%, colors
	--[+ French +]--
	create_template("talent_tree_psy_keys2_002_desc_fr",
		{"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies_description"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour vous et vos alliés en syntonie lorsque vous utilisez votre Blitz alors que {talent_name:%s} est actif."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_2_2_rgb_fr)),
	--[+ Russian +]-- Психическое высасывание -- руоф Психическая пиявка
	create_template("talent_tree_psy_keys2_002_desc_ru",
		{"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies_description"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восполняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." при использовании вашего блица, пока активна {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_2_2_rgb_ru)),
	--[+ Traditional Chinese - 吸血閃電 +]--
	create_template("talent_tree_psy_keys2_002_desc_tw",
		{"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies_description"}, {"zh-tw"},
			loc_text("{talent_name:%s} 啟動時，使用主動技能獲得：\n"
			.."\n"
			.."- "..COLORS_KWords_tw.Toughness_rgb_tw.." 恢復 {toughness:%s}。\n"
			.."- "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友也會獲得相同效果。"
			..TALENTS_Enh_desc_tw.ED_PSY_Keystone_2_2_rgb_tw)),

	--[+ KEYSTONE 2-3 - Overpowering Souls +]--
	create_template("talent_tree_psy_keys2_003_desc_en",
		{"loc_talent_psyker_empowered_ability_on_elite_kills_description"}, {"en"},
			loc_text("Guaranteed chance to gain {talent_name:%s} on Elite Kills.")),
			-- talent_name: Empowered Psionics
	--[+ French +]--
	create_template("talent_tree_psy_keys2_003_desc_fr",
		{"loc_talent_psyker_empowered_ability_on_elite_kills_description"}, {"fr"},
			loc_text("Chance garantie de gagner {talent_name:%s} lors d'une élimination d'élite.")),
	--[+ Russian +]-- Могучие души +]--
	create_template("talent_tree_psy_keys2_003_desc_ru",
		{"loc_talent_psyker_empowered_ability_on_elite_kills_description"}, {"ru"},
			loc_text("Гарантированный шанс получить заряд таланта {talent_name:%s} при убийстве элитного врага.")),
	--[+ Traditional Chinese - 吞靈強擊 +]--
	-- 擊殺精英敵人必定獲得{talent_name:%s}。
	create_template("talent_tree_psy_keys2_003_desc_tw",
		{"loc_talent_psyker_empowered_ability_on_elite_kills_description"}, {"zh-tw"},
			loc_text("擊殺精英敵人時，獲得 {talent_name:%s} 。")),

	--[+ KEYSTONE 2-4 - Charged Up +]--
	create_template("talent_tree_psy_keys2_004_desc_en",
		{"loc_talent_psyker_increased_empowered_chain_lightning_stacks_description"}, {"en"},
			loc_text("You can now hold up to {max_stacks:%s} Stacks of {talent_name:%s}.")),
			-- max_stacks: 3, talent_name: Empowered Psionics
	--[+ French +]--
	create_template("talent_tree_psy_keys2_004_desc_fr",
		{"loc_talent_psyker_increased_empowered_chain_lightning_stacks_description"}, {"fr"},
			loc_text("Vous pouvez maintenant cumuler jusqu'à {max_stacks:%s} charges de {talent_name:%s}.")),
	--[+ Russian +]-- Заряженный -- руоф Зарядка
	create_template("talent_tree_psy_keys2_004_desc_ru",
		{"loc_talent_psyker_increased_empowered_chain_lightning_stacks_description"}, {"ru"},
			loc_text("Вы теперь можете держать до {max_stacks:%s} зарядов таланта {talent_name:%s}.")),
	--[+ Traditional Chinese - 充能完畢 +]--
	-- 你現在可以疊加{max_stacks:%s}\n層{talent_name:%s}。
	create_template("talent_tree_psy_keys2_004_desc_tw",
		{"loc_talent_psyker_increased_empowered_chain_lightning_stacks_description"}, {"zh-tw"},
			loc_text("最多可以持有 {max_stacks:%s} 層 {talent_name:%s}。")),

	--[+ KEYSTONE 3 - Disrupt Destiny +]--
	create_template("talent_tree_psy_keys3_000_desc_en",
		{"loc_talent_psyker_marked_enemies_passive_updated_desc"}, {"en"},
			loc_text("Every second, Enemies within "..COLORS_Numbers.n_40_rgb.." meters have a chance of being Marked. Killing a Marked Enemy Replenishes {toughness:%s} "..COLORS_KWords.Toughness_rgb.." over {move_speed_duration:%s} seconds, grants {move_speed:%s} Movement Speed for {move_speed_duration:%s} seconds, and adds a "..COLORS_KWords.Precision_rgb.." Bonus for {bonus_duration} seconds.\n"
				.."Each "..COLORS_KWords.Precision_rgb.." Bonus grants:\n"
				.."{base_damage:%s} "..COLORS_KWords.Damage_rgb..",\n{crit_damage:%s} "..COLORS_KWords.Crit_dmg_r_rgb.." and\n"
				.."{weakspot_damage:%s} "..COLORS_KWords.Weakspot_dmg_rgb..".\n"
				..COLORS_KWords.Precision_rgb.." Bonus Stacks {bonus_stacks:%s} times and when the duration ends, one Stack is removed and the duration is refreshed.\n"
				..Arrow_up_green.." Dealing "..COLORS_KWords.Damage_rgb.." to Marked enemies refreshes the Talent's duration.\n"
				..Arrow_right_.." Valid targets are: Dreg/Scab Bruisers, Dreg/Scab Stalkers, Scab Shooters, Ragers, Gunners, Shotgunners and Maulers.\n"
				..TALENTS_Enh_desc.ED_PSY_Keystone_3_rgb)),
				-- radius: 25->40!!!, toughness: 10%, move_speed: +20%, move_speed_duration: 2.5, bonus_duration 4, base_damage: +1%, crit_damage: +2%, weakspot_damage: +2.5%, bonus_stacks: 15 -- m->meters, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_psy_keys3_000_desc_fr",
		{"loc_talent_psyker_marked_enemies_passive_new_desc"}, {"fr"},
			loc_text("Chaque seconde, les ennemis dans un rayon de "..COLORS_Numbers.n_40_rgb.." mètres ont une chance d'être marqués. Éliminer un ennemi marqué régénère {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr..", augmente la vitesse de déplacement de {move_speed:%s} pendant {move_speed_duration:%s} secondes et ajoute un cumule de "..COLORS_KWords_fr.Precision_rgb_fr.." pendant {bonus_duration} secondes.\nChaque cumule de "..COLORS_KWords_fr.Precision_rgb_fr.." octroie : {base_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..", {crit_damage:%s} de "..COLORS_KWords_fr.Crit_dmg_r_rgb_fr.." et {weakspot_damage:%s} de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr..". Le bonus de "..COLORS_KWords_fr.Precision_rgb_fr.." se cumule jusqu'à {bonus_stacks:%s} fois et lorsque la durée expire, une charge est retirée et la durée est rafraîchie."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_3_rgb_fr)),
	--[+ Russian +]-- Прерывание судьбы -- руоф Разрушенная судьба
	create_template("talent_tree_psy_keys3_000_desc_ru",
		{"loc_talent_psyker_marked_enemies_passive_new_desc"}, {"ru"},
			loc_text("Каждую секунду враги в радиусе "..COLORS_Numbers.n_40_rgb.." метров могут быть отмечены. Убийство отмеченного врага восстанавливает {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..", даёт {move_speed:%s} к скорости передвижения на {move_speed_duration:%s} секунды, а также добавляет заряд "..COLORS_KWords_ru.Precision_rgb_ru.." на {bonus_duration} секунды.\nКаждый заряд "..COLORS_KWords_ru.Precision_rgb_ru.." даёт: {base_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..", {crit_damage:%s} к "..COLORS_KWords_ru.Crit_dmg_u_rgb_ru.." и {weakspot_damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru..".\nЗаряды "..COLORS_KWords_ru.Precision_rgb_ru.." накапливаются до {bonus_stacks:%s} раз и, когда срок действия заканчивается, снимается "..COLORS_Numbers.n_1_rgb.." заряд, а длительность оставшихся зарядов обновляется."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_3_rgb_ru)),
	--[+ Traditional Chinese - 擾動命運 +]--
	--每秒有機率標記{radius:%s}公尺內的敵人。擊殺被標記的敵人會在{move_speed_duration:%s}秒內恢復{toughness:%s}韌性，並獲得持續{move_speed_duration:%s}秒的{move_speed:%s}移動速度加成，以及持續{bonus_duration}秒的精準加成。\n\n每層精準加成會賦予{base_damage:%s}傷害、{crit_damage:%s}暴擊傷害和{weakspot_damage:%s}弱點傷害。精準加成可疊加{bonus_stacks:%s}層，且會在持續時間結束後降低一層並重新計算持續時間。
	create_template("talent_tree_psy_keys3_000_desc_tw",
			{"loc_talent_psyker_marked_enemies_passive_updated_desc"}, {"zh-tw"},
			loc_text("自動標記範圍內的敵人。\n"
				.."\n"
				.."- 標記間隔 1s。\n"
				.."- 標記範圍 "..COLORS_Numbers.n_40_rgb.."m。\n"
				.."- 擊殺被標記的敵人有以下效果\n"
				.."--在{move_speed_duration:%s}秒內 {toughness:%s} "..COLORS_KWords_tw.Toughness_rgb_tw.."。\n"
				.."-- {move_speed:%s} 的移動速度加成，持續 {move_speed_duration:%s} 秒。\n"
				.."--獲得 "..COLORS_KWords2_tw.Precision_rgb_tw.."加成，持續 {bonus_duration} 秒。\n"
				.."\n"
				.."- "..COLORS_KWords2_tw.Precision_rgb_tw.." 提供以下效果：\n"
				.."--"..COLORS_KWords_tw.Damage_rgb_tw.." {base_damage:%s} 。\n"
				.."--"..COLORS_KWords_tw.Crit_dmg_u_rgb_tw.." {crit_damage:%s} 。\n"
				.."--"..COLORS_KWords_tw.Weakspot_dmg_rgb_tw.." {weakspot_damage:%s} 。\n"
				.."--上限 {bonus_stacks:%s} 層。\n"
				.."---持續時間結束時：\n"
				.."--移除"..COLORS_Numbers.n_1_rgb.."層\n"
				.."--同時刷新其餘層數的持續時間。\n"
				..TALENTS_Enh_desc_tw.ED_PSY_Keystone_3_rgb_tw)),
				
	--[+ KEYSTONE 3-1 - Perfectionism +]--
	create_template("talent_tree_psy_keys3_001_desc_en",
		{"loc_talent_psyker_mark_increased_max_stacks_description"}, {"en"},
			loc_text("Maximum "..COLORS_KWords.Precision_rgb.." Bonus Stacks are increased from {stacks_previous:%s} to {stacks_after:%s}.")),
			-- stacks_previous: 15, stacks_after: 25, colors
	--[+ French +]--
	create_template("talent_tree_psy_keys3_001_desc_fr",
		{"loc_talent_psyker_mark_increased_max_stacks_description"}, {"fr"},
			loc_text("Le nombre maximum de charges de cumuls de "..COLORS_KWords_fr.Precision_rgb_fr.." est augmenté de {stacks_previous:%s} à {stacks_after:%s}.")),
	--[+ Russian +]-- Перфекционизм +]--
	create_template("talent_tree_psy_keys3_001_desc_ru",
		{"loc_talent_psyker_mark_increased_max_stacks_description"}, {"ru"},
			loc_text("Максимальное количество зарядов "..COLORS_KWords_ru.Precision_rgb_ru.." увеличено с {stacks_previous:%s} до {stacks_after:%s}.")),
	--[+ Traditional Chinese - 完美主義 +]--
	-- 精準加成可疊加層數從{stacks_previous:%s}增至{stacks_after:%s}。
	create_template("talent_tree_psy_keys3_001_desc_tw",
		{"loc_talent_psyker_mark_increased_max_stacks_description"}, {"zh-tw"},
			loc_text(""..COLORS_KWords2_tw.Precision_rgb_tw.."的上限層數由 {stacks_previous:%s} 提升至 {stacks_after:%s}。")),

	--[+ KEYSTONE 3-2 - Purloin Providence +]--
	create_template("talent_tree_psy_keys3_002_desc_en",
		{"loc_talent_psyker_mark_kills_can_vent_description"}, {"en"},
			loc_text("{chance:%s} chance to instantly Quell {warp_charge_percentage:%s} of your "..COLORS_KWords.Peril_rgb.." when killing enemies marked by {talent_name:%s}.\n"
				..TALENTS_Enh_desc.ED_PSY_Keystone_3_2_rgb)),
				-- talent_name: Disrupt Destiny, chance: 20%, warp_charge_percentage: 15%, colors
	--[+ French +]--
	create_template("talent_tree_psy_keys3_002_desc_fr",
		{"loc_talent_psyker_mark_kills_can_vent_description"}, {"fr"},
			loc_text("{chance:%s} chance de réduire instantanément {warp_charge_percentage:%s} de votre "..COLORS_KWords_fr.Peril_rgb_fr.." en tuant des ennemis marqués par {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_3_2_rgb_fr)),
	--[+ Russian +]-- Похищение провидения -- руоф Похищенное провидение
	create_template("talent_tree_psy_keys3_002_desc_ru",
		{"loc_talent_psyker_mark_kills_can_vent_description"}, {"ru"},
			loc_text("{chance:%s} шанс, что вы моментально подавите {warp_charge_percentage:%s} вашей "..COLORS_KWords_ru.Peril_rgb_ru.." при убийстве врага, отмеченного талантом {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_3_2_rgb_ru)),
	--[+ Traditional Chinese - 盜竊天命 +]--
	--擊殺被{talent_name:%s}標記的敵人有{chance:%s}幾率立刻平息反噬{warp_charge_percentage:%s}。
	create_template("talent_tree_psy_keys3_002_desc_tw",
			{"loc_talent_psyker_mark_kills_can_vent_description"}, {"zh-tw"},
				loc_text("擊殺 {talent_name:%s} 標記的敵人減少 "..COLORS_KWords_tw.Peril_rgb_tw.." 。\n"
				.."\n"
				.."- {chance:%s} 機率必定觸發。\n"
				.."- 觸發時平息 {warp_charge_percentage:%s} 的 "..COLORS_KWords_tw.Peril_rgb_tw.."。"
				..TALENTS_Enh_desc_tw.ED_PSY_Keystone_3_2_rgb_tw)),

	--[+ KEYSTONE 3-3 - Lingering Influence +]--
	create_template("talent_tree_psy_keys3_003_desc_en",
		{"loc_talent_psyker_mark_increased_duration_description"}, {"en"},
			loc_text("Increase the duration of {talent_name:%s} from {duration_previous:%s} to {duration_after:%s} seconds.")),
			-- talent_name: Disrupt Destiny, duration_previous: 15, duration_after: 10, s->seconds
	--[+ French +]--
	create_template("talent_tree_psy_keys3_003_desc_fr",
		{"loc_talent_psyker_mark_increased_duration_description"}, {"fr"},
			loc_text("Augmente la durée de {talent_name:%s} de {duration_previous:%s} à {duration_after:%s} secondes.")),
	--[+ Russian +]-- Длительное влияние -- руоф Длящееся влияние
	create_template("talent_tree_psy_keys3_003_desc_ru",
		{"loc_talent_psyker_mark_increased_duration_description"}, {"ru"},
			loc_text("С {duration_previous:%s} до {duration_after:%s} секунд увеличено действие таланта {talent_name:%s}.")),
	--[+ Traditional Chinese - 持久影響 +]--
	-- {talent_name:%s}的持續時間從{duration_previous:%s}增加至{duration_after:%s}。
	create_template("talent_tree_psy_keys3_003_desc_tw",
			{"loc_talent_psyker_mark_increased_duration_description"}, {"zh-tw"},
				loc_text("{talent_name:%s} 持續時間從 {duration_previous:%s} 秒增加至 {duration_after:%s} 秒。")),
				
	--[+ KEYSTONE 3-4 - Cruel Fortune +]--
	create_template("talent_tree_psy_keys3_004_desc_en",
		{"loc_talent_psyker_mark_weakspot_stacks_description"}, {"en"},
			loc_text(COLORS_KWords.Weakspot_rgb.." Kills grant {stacks:%s} additional Stacks of {talent_name:%s}.\n"
				..TALENTS_Enh_desc.ED_PSY_Keystone_3_4_rgb)),
				-- stacks: 2 talent_name: Disrupt Destiny, colors
	--[+ French +]--
	create_template("talent_tree_psy_keys3_004_desc_fr",
		{"loc_talent_psyker_mark_weakspot_stacks_description"}, {"fr"},
			loc_text("Les éliminations sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." octroient {stacks:%s} cumuls supplémentaires de {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_3_4_rgb_fr)),
	--[+ Russian +]-- Жестокая судьба +]--
	create_template("talent_tree_psy_keys3_004_desc_ru",
		{"loc_talent_psyker_mark_weakspot_stacks_description"}, {"ru"},
			loc_text("Убийства в "..COLORS_KWords_ru.Weakspot_rgb_ru.." дают {stacks:%s} дополнительных заряда таланта {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_3_4_rgb_ru)),
	--[+ Traditional Chinese - 殘忍命運 +]--
	--弱點擊殺額外積累{stacks:%s}層{talent_name:%s}。
	create_template("talent_tree_psy_keys3_004_desc_tw",
			{"loc_talent_psyker_mark_weakspot_stacks_description"}, {"zh-tw"},
				loc_text(""..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 敵人時，\n額外獲得 {stacks:%s} 層 {talent_name:%s}。" ..TALENTS_Enh_desc_tw.ED_PSY_Keystone_3_4_rgb_tw)),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Soulstealer +]--
	create_template("talent_tree_psy_pas_001_desc_en",
		{"loc_talent_psyker_toughness_on_warp_kill_desc"}, {"en"},
			loc_text("{toughness:%s} of Maximum "..COLORS_KWords.Toughness_rgb.." replenishes on killing an enemy with a Warp attack.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_1_rgb)),
				-- toughness: 7.5%., colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_001_desc_fr",
		{"loc_talent_psyker_toughness_on_warp_kill_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une élimination d'un ennemi avec une attaque Warp."..TALENTS_Enh_desc_fr.ED_PSY_Passive_1_rgb_fr)),
	--[+ Russian +]-- Похититель душ -- руоф Похититель души
	create_template("talent_tree_psy_pas_001_desc_ru",
		{"loc_talent_psyker_toughness_on_warp_kill_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при убийстве врага варп-атакой."..TALENTS_Enh_desc_ru.ED_PSY_Passive_1_rgb_ru)),

	--[+ Passive 2 - Mettle +]--
	create_template("talent_tree_psy_pas_002_desc_en",
		{"loc_talent_psyker_crits_regen_tougness_and_movement_speed_description"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes on "..COLORS_KWords.Crit_hits_rgb..".\n"
				.."Also grants {movement_speed:%s} increased Movement Speed for {seconds:%s} seconds. Stacks {stacks:%s} times.\n"
				..Arrow_right_.." Procs only once per "..COLORS_KWords.Crit_rgb.." attack regardless of how many enemies have been hit.\n"
				..Arrow_right_.." Always generates "..COLORS_Numbers.n_1_rgb.." Stack per "..COLORS_KWords.Crit_rgb.." attack regardless of how many enemies have been hit.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_2_rgb)),
				-- toughness: 5%, movement_speed: +5%, seconds: 4, stacks: 3, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_002_desc_fr",
		{"loc_talent_psyker_crits_regen_tougness_and_movement_speed_description"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hits_rgb_fr..".\n\nOctroie également {movement_speed:%s} de vitesse de déplacement pendant {seconds:%s} secondes. Se cumule jusqu'à {stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_PSY_Passive_2_rgb_fr)),
	--[+ Russian +]-- Ретивость +]--
	create_template("talent_tree_psy_pas_002_desc_ru",
		{"loc_talent_psyker_crits_regen_tougness_and_movement_speed_description"}, {"ru"},
			loc_text("При "..COLORS_KWords_ru.Crit_hit_e_rgb_ru.." вы восстанавливаете {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..", а также получаете {movement_speed:%s} к скорости передвижения на {seconds:%s} секунды. Суммируется до {stacks:%s} раз."..TALENTS_Enh_desc_ru.ED_PSY_Passive_2_rgb_ru)),

	--[+ Passive 3 - Quietude +]--
	create_template("talent_tree_psy_pas_003_desc_en",
		{"loc_talent_psyker_toughness_from_vent_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes for each {warp_charge:%s} of "..COLORS_KWords.Peril_rgb.." Quelled.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_3_rgb)),
				-- toughness: 5%, warp_charge: 10%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_003_desc_fr",
		{"loc_talent_psyker_toughness_from_vent_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par {warp_charge:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." atténué."..TALENTS_Enh_desc_fr.ED_PSY_Passive_3_rgb_fr)),
	--[+ Russian +]-- Спокойствие -- руоф Тишина
	create_template("talent_tree_psy_pas_003_desc_ru",
		{"loc_talent_psyker_toughness_from_vent_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за каждые {warp_charge:%s} подавленной "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_3_rgb_ru)),

	--[+ Passive 4 - Warp Expenditure +]--
	create_template("talent_tree_psy_pas_004_desc_en",
		{"loc_talent_psyker_warp_charge_generation_generates_toughness_description"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes for every {warp_charge:%s} "..COLORS_KWords.Peril_rgb.." Generated.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_4_rgb)),
				-- toughness: 2.5%, warp_charge: 10%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_004_desc_fr",
		{"loc_talent_psyker_warp_charge_generation_generates_toughness_description"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par {warp_charge:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." généré."..TALENTS_Enh_desc_fr.ED_PSY_Passive_4_rgb_fr)),
	--[+ Russian +]-- Затраты варпа +]-- -- руоф Варп-затраты
	create_template("talent_tree_psy_pas_004_desc_ru",
		{"loc_talent_psyker_warp_charge_generation_generates_toughness_description"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за каждые {warp_charge:%s} "..COLORS_KWords_ru.Peril_rgb_ru..", набранных вами."..TALENTS_Enh_desc_ru.ED_PSY_Passive_4_rgb_ru)),

	--[+ Passive 5 - Perilous Combustion +]--
	create_template("talent_tree_psy_pas_005_desc_en",
		{"loc_talent_psyker_elite_and_special_kills_add_warpfire_desc"}, {"en"},
			loc_text("Killing an Elite or a Speacialist Enemy applies {stacks:%s} Stacks of "..COLORS_KWords.Soulblaze_rgb.." to nearby Enemies, causing "..COLORS_KWords.Damage_rgb.." over time.\n"
				..Arrow_up_green.." Does proc on "..COLORS_KWords.Burn_rgb.." or "..COLORS_KWords.Bleed_rgb.." tick kills.\n"
				..Arrow_right_.." Stacks are applied at a distance of up to "..COLORS_Numbers.n_4_rgb.." meters from the killed enemy.\n"
				..Arrow_down_red.." Does not proc on Elites or Specials killed by Psyker's "..COLORS_KWords.Soulblaze_rgb.." "..COLORS_KWords.Damage_rgb.." ticks.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_5_rgb)),
				-- stacks: 3 -- stack(s)->Stacks , colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_005_desc_fr",
		{"loc_talent_psyker_elite_and_special_kills_add_warpfire_desc"}, {"fr"},
			loc_text("Tuer un ennemi d'élite ou un spécialiste applique {stacks:%s} Stacks d'"..COLORS_KWords_fr.Soulblaze_rgb_fr.." aux ennemis à proximité, infligeant des "..COLORS_KWords_fr.Damage_rgb_fr.." sur la durée."..TALENTS_Enh_desc_fr.ED_PSY_Passive_5_rgb_fr)),
	--[+ Russian - Опасное возгорание +]-- руоф Пагубное воспламенение
	create_template("talent_tree_psy_pas_005_desc_ru",
		{"loc_talent_psyker_elite_and_special_kills_add_warpfire_desc"}, {"ru"},
			loc_text("{stacks:%s} заряда "..COLORS_KWords_ru.Soulblaze_rgb_ru.." накладывается при убийстве элитных врагов или специалистов на ближайших к ним врагов, причиняя "..COLORS_KWords_ru.Dmg_rgb_ru.." с течением времени."..TALENTS_Enh_desc_ru.ED_PSY_Passive_5_rgb_ru)),

	--[+ Passive 6 - Perfect Timing +]--
	create_template("talent_tree_psy_pas_006_desc_en",
		{"loc_talent_psyker_crits_empower_warp_description"}, {"en"},
			loc_text("{damage:%s} Warp "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on "..COLORS_KWords.Crit_hits_rgb..". Stacks {stacks:%s} times.\n"
				..Arrow_up_green.." Generates multiple Stacks per attack when "..COLORS_KWords.Cleaving_rgb..".\n"
				..Arrow_up_green.." Stacks can be refreshed during active duration.\n"
				..Arrow_right_.." Hitting enemies with a "..COLORS_KWords.Crit_rgb.." Melee, Ranged, or Assail attack grants Stacks.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_6_rgb)),
				-- damage: +3%, duration: 10, stacks: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_006_desc_fr",
		{"loc_talent_psyker_crits_empower_warp_description"}, {"fr"},
			loc_text("{damage:%s} des dégâts Warp pendant {duration:%s} secondes sur les "..COLORS_KWords_fr.Crit_hits_rgb_fr..". Se cumule jusqu'à {stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_PSY_Passive_6_rgb_fr)),
	--[+ Russian +]-- Идеальный момент -- руоф Безупречное чувство времени
	create_template("talent_tree_psy_pas_006_desc_ru",
		{"loc_talent_psyker_crits_empower_warp_description"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damagewrp_rgb_ru.." на {duration:%s} секунд при "..COLORS_KWords_ru.Crit_hit_e_rgb_ru..". Суммируется {stacks:%s} раз."..TALENTS_Enh_desc_ru.ED_PSY_Passive_6_rgb_ru)),

	--[+ Passive 7 - Battle Meditation +]--
	create_template("talent_tree_psy_pas_007_desc_en",
		{"loc_talent_psyker_base_2_description"}, {"en"},
			loc_text("{chance:%s} chance to Quell {warp_charge_percent:%s} "..COLORS_KWords.Peril_rgb.." on Kill.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_7_rgb)),
				-- chance: 10%, warp_charge_percent: 10%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_007_desc_fr",
		{"loc_talent_psyker_base_2_description"}, {"fr"},
			loc_text("{chance:%s} de chance de dissiper {warp_charge_percent:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." lors d'une élimination."..TALENTS_Enh_desc_fr.ED_PSY_Passive_7_rgb_fr)),
	--[+ Russian +]-- Боевая медитация +]--
	create_template("talent_tree_psy_pas_007_desc_ru",
		{"loc_talent_psyker_base_2_description"}, {"ru"},
			loc_text("{chance:%s} шанс подавить {warp_charge_percent:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." при убийстве."..TALENTS_Enh_desc_ru.ED_PSY_Passive_7_rgb_ru)),

	--[+ Passive 8 - Wildfire +]--
	create_template("talent_tree_psy_pas_008_desc_en",
		{"loc_talent_psyker_warpfire_spread_desc"}, {"en"},
			loc_text("When an Enemy dies while affected by your "..COLORS_KWords.Soulblaze_rgb..", nearby Enemies each gain up to {stacks:%s} Stacks of "..COLORS_KWords.Soulblaze_rgb..". They cannot gain more Stacks than the dying Enemy had.\n"
				..Arrow_right_.." Whenever an Enemy who is affected by at least "..COLORS_Numbers.n_2_rgb.." Stacks of "..COLORS_KWords.Soulblaze_rgb.." dies, it spreads to valid targets within a "..COLORS_Numbers.n_5_rgb.." meters radius.\n"
				..Arrow_down_red.." Targets do not receive "..COLORS_KWords.Soulblaze_rgb.." Stacks caused by the Talent if they already have "..COLORS_Numbers.n_4_rgb.." Stacks or more on them.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_8_rgb)),
				-- stacks: 4, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_008_desc_fr",
		{"loc_talent_psyker_warpfire_spread_desc"}, {"fr"},
			loc_text("Lorsqu'un ennemi affecté par votre "..COLORS_KWords_fr.Soulblaze_rgb_fr.." meurt, les ennemis proches gagnent chacun jusqu'à {stacks:%s} stacks d'"..COLORS_KWords_fr.Soulblaze_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_8_rgb_fr)),
	--[+ Russian +]-- Неконтролируемый пожар +]-- -- руоф Гремучая смесь
	create_template("talent_tree_psy_pas_008_desc_ru",
		{"loc_talent_psyker_warpfire_spread_desc"}, {"ru"},
			loc_text("Когда умирает враг, находящийся под воздействием вашего эффекта "..COLORS_KWords_ru.Soulblaze_rgb_ru..", каждый враг рядом с ним получает до {stacks:%s} зарядов "..COLORS_KWords_ru.Soulblaze_rgb_ru..". Они не могут получить больше зарядов, чем было у погибшего врага."..TALENTS_Enh_desc_ru.ED_PSY_Passive_8_rgb_ru)),

	--[+ Passive 9 - Psykinetic's Aura +]--
	create_template("talent_tree_psy_pas_009_desc_en",
		{"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency_desc"}, {"en"},
			loc_text(COLORS_Numbers.n_minus_rgb.."{cooldown:%s} "..COLORS_KWords.Ability_cd_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb.." on Elite or Specialist kill.\n"
				..Arrow_down_red.." Does not Stack with the same Talent of another Psyker (each Psyker procs their own Talent spreading the Cooldown Reduction separately).\n"
				..Arrow_down_red.." Does not interact with "..COLORS_KWords.Combat_ability_rgb.." Regeneration from Curios which only reduces the Maximum cooldown of a "..COLORS_KWords.Combat_ability_rgb..".\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_9_rgb)),
				-- cooldown: 5%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_009_desc_fr",
		{"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency_desc"}, {"fr"},
			loc_text("Réduit de "..COLORS_Numbers.n_minus_rgb.."{cooldown:%s} le "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." pour vous et les alliés en syntonie à chaque élimination d'élite ou de spécialiste."..TALENTS_Enh_desc_fr.ED_PSY_Passive_9_rgb_fr)),
	--[+ Russian +]-- Аура психокинетика +]--
	create_template("talent_tree_psy_pas_009_desc_ru",
		{"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_minus_rgb.."{cooldown:%s} времени "..COLORS_KWords_ru.Ability_cd_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." при убийстве элитного врага или специалиста."..TALENTS_Enh_desc_ru.ED_PSY_Passive_9_rgb_ru)),

	--[+ Passive 10 - Mind in Motion +]--
	create_template("talent_tree_psy_pas_010_desc_en",
		{"loc_talent_psyker_venting_doesnt_slow_desc"}, {"en"},
			loc_text("Your Movement Speed is not reduced while Quelling "..COLORS_KWords.Peril_rgb..".\n"
				..Arrow_down_red.." Does not interact with Movement Speed buffs.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_10_rgb)),
				-- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_010_desc_fr",
		{"loc_talent_psyker_venting_doesnt_slow_desc"}, {"fr"},
			loc_text("Votre vitesse de déplacement n'est pas réduite lors de l'atténuation du "..COLORS_KWords_fr.Peril_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_10_rgb_fr)),
	--[+ Russian +]-- Разум в движении -- руоф Движущийся разум
	create_template("talent_tree_psy_pas_010_desc_ru",
		{"loc_talent_psyker_venting_doesnt_slow_desc"}, {"ru"},
			loc_text("Ваша скорость движения не снижается во время подавления "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_10_rgb_ru)),

	--[+ Passive 11 - Malefic Momentum +]--
	create_template("talent_tree_psy_pas_011_desc_en",
		{"loc_talent_psyker_kills_stack_other_weapon_damage_both_description"}, {"en"},
			loc_text("{warp_damage:%s} "..COLORS_KWords.Damage_rgb.." to Warp Attacks for {duration:%s} seconds after a non-Warp based Kill. Stacks {stacks:%s} times.\n"
				.."{non_warp_damage:%s} "..COLORS_KWords.Damage_rgb.." to non-Warp Attacks for {duration:%s} seconds after a Warp based Kill. Stacks {stacks:%s} times.\n"
				..Arrow_up_green.." Can be refreshed during active duration.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_11_rgb)),
				-- warp_damage/non_warp_damage: +4%, duration: 8, stacks: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_011_desc_fr",
		{"loc_talent_psyker_kills_stack_other_weapon_damage_both_description"}, {"fr"},
			loc_text("{warp_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." aux attaques Warp pendant {duration:%s} secondes après une élimination n'utilisant pas le Warp. Se cumule jusqu'à {stacks:%s} fois.\n{non_warp_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." aux attaques n'utilisant pas le Warp pendant {duration:%s} secondes après une élimination utilisant le Warp. Se cumule jusqu'à {stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_PSY_Passive_11_rgb_fr)),
	--[+ Russian +]-- Пагубный импульс -- руоф Пагубный моментум
	create_template("talent_tree_psy_pas_011_desc_ru",
		{"loc_talent_psyker_kills_stack_other_weapon_damage_both_description"}, {"ru"},
			loc_text("{warp_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." от варп-атак на {duration:%s} секунд после убийства не варп-атакой. Суммируется {stacks:%s} раз.\n{non_warp_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." от не варп-атак на {duration:%s} секунд после убийства варп-атакой. Суммируется {stacks:%s} раз."..TALENTS_Enh_desc_ru.ED_PSY_Passive_11_rgb_ru)),

	--[+ Passive 12 - Channeled Force +]--
	create_template("talent_tree_psy_pas_012_desc_en",
		{"loc_talent_psyker_force_staff_bonus_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." to Force Staff's Primary Attacks after Fully Charged Force Staff Secondary Attacks. Lasts {time:%s} seconds.\n"
				..Arrow_up_green.." Can be refreshed during active duration.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_12_rgb)),
				-- damage: +30%, time: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_012_desc_fr",
		{"loc_talent_psyker_force_staff_bonus_desc"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." aux attaques principales du bâton de force après des attaques secondaires entièrement chargées. Dure {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Passive_12_rgb_fr)),
	--[+ Russian +]-- Направленная сила +]--
	create_template("talent_tree_psy_pas_012_desc_ru",
		{"loc_talent_psyker_force_staff_bonus_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." от основных атак психосилового посоха после полностью заряженной вторичной атаки. Длится {time:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Passive_12_rgb_ru)),

	--[+ Passive 13 - Perilous Assault +]--
	create_template("talent_tree_psy_pas_013_desc_en",
		{"loc_talent_psyker_force_staff_wield_speed_desc"}, {"en"},
			loc_text("Up to {wield_speed:%s} Weapon Wield Speed, based on your current "..COLORS_KWords.Peril_rgb..".\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_13_rgb)),
				-- wield_speed: 50%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_013_desc_fr",
		{"loc_talent_psyker_force_staff_wield_speed_desc"}, {"fr"},
			loc_text("Jusqu'à {wield_speed:%s} de vitesse de changement d'armes, en fonction de votre "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Passive_13_rgb_fr)),
	--[+ Russian +]-- Рискованное нападение -- руоф Пагубное нападение
	create_template("talent_tree_psy_pas_013_desc_ru",
		{"loc_talent_psyker_force_staff_wield_speed_desc"}, {"ru"},
			loc_text("До "..COLORS_Numbers.n_plus_rgb.."{wield_speed:%s} к скорости смены оружия в зависимости от текущего уровня "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_13_rgb_ru)),

	--[+ Passive 14 - Lightning Speed +]--
	create_template("talent_tree_psy_pas_014_desc_en",
		{"loc_talent_psyker_melee_attack_speed_desc"}, {"en"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{melee_attack_speed:%s} Melee Attack Speed.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_14_rgb)),
				-- melee_attack_speed: 10%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_014_desc_fr",
		{"loc_talent_psyker_melee_attack_speed_desc"}, {"fr"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{melee_attack_speed:%s} de vitesse d'attaque en mêlée."..TALENTS_Enh_desc_fr.ED_PSY_Passive_14_rgb_fr)),
	--[+ Russian +]-- Молниеносная скорость +]--
	create_template("talent_tree_psy_pas_014_desc_ru",
		{"loc_talent_psyker_melee_attack_speed_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{melee_attack_speed:%s} к скорости атак ближнего боя."..TALENTS_Enh_desc_ru.ED_PSY_Passive_14_rgb_ru)),

	--[+ Passive 15 - Souldrinker +]--
	create_template("talent_tree_psy_pas_015_desc_en",
		{"loc_talent_psyker_killing_enemy_with_warpfire_boosts_desc"}, {"en"},
			loc_text("Killing an Enemy with "..COLORS_KWords.Soulblaze_rgb.." restores {toughness:%s} "..COLORS_KWords.Toughness_rgb.." and grants {crit_chance:%s} "..COLORS_KWords.Crit_hit_chance_rgb.." for {duration:%s} seconds.\n"
				..Arrow_down_red.." "..COLORS_KWords.Crit_hit_chance_rgb.." cannot be refreshed during active duration.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_15_rgb)),
				-- toughness: 5%, crit_chance: 5%, duration: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_015_desc_fr",
		{"loc_talent_psyker_killing_enemy_with_warpfire_boosts_desc"}, {"fr"},
			loc_text("Tuer un ennemi sous "..COLORS_KWords_fr.Soulblaze_rgb_fr.." restaure {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." et octroie {crit_chance:%s} de "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.." pendant {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Passive_15_rgb_fr)),
	--[+ Russian +]-- Поглотитель душ -- руоф Поглощение душ
	create_template("talent_tree_psy_pas_015_desc_ru",
		{"loc_talent_psyker_killing_enemy_with_warpfire_boosts_desc"}, {"ru"},
			loc_text("Убийство врага с помощью эффекта "..COLORS_KWords_ru.Soulblaze_rgb_ru.." восстанавливает {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и даёт "..COLORS_Numbers.n_plus_rgb.."{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на {duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Passive_15_rgb_ru)),

	--[+ Passive 16 - Empyric Shock +]--
	create_template("talent_tree_psy_pas_016_desc_en",
		{"loc_talent_psyker_force_staff_quick_attack_bonus_desc"}, {"en"},
			loc_text("{damage_taken:%s} more "..COLORS_KWords.Damagewrp_rgb.." per stack you deal to your enemies after hitting them with your Force Staff Primary Attacks. Max Stacks {max_stacks:%s}. Lasts {duration:%s} seconds.\n"
				..Arrow_up_green.." Can be refreshed during active duration.\n"
				..Arrow_up_green.." Can be applied through shields.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_16_rgb)),
				-- damage_taken: 6%, max_stacks: 5, duration: 10, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_016_desc_fr",
		{"loc_talent_psyker_force_staff_quick_attack_bonus_desc"}, {"fr"},
			loc_text("{damage_taken:%s} de "..COLORS_KWords_fr.Damagewrp_rgb_fr.." subi par les victimes de votre attaque principale de bâton de force. Jusqu'à {max_stacks:%s} stacks. Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Passive_16_rgb_fr)),
	--[+ Russian +]-- Эмпирический шок
	create_template("talent_tree_psy_pas_016_desc_ru",
		{"loc_talent_psyker_force_staff_quick_attack_bonus_desc"}, {"ru"},
			loc_text("На {damage_taken:%s} больше "..COLORS_KWords_ru.Damagewrp_a_rgb_ru.." за заряд вы будете наносить вашим врагам после попадания по ним вашими основными атаками психосиловых посохов. Максимум {max_stacks:%s} зарядов. Длится {duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Passive_16_rgb_ru)),

	--[+ Passive 17 - By Crack of Bone +]--
	create_template("talent_tree_psy_pas_017_desc_en",
		{"loc_talent_psyker_melee_weaving_desc"}, {"en"},
			loc_text("{vent:%s} "..COLORS_KWords.Peril_rgb.." Quelling from Melee "..COLORS_KWords.Weak_spot_rgb.." kills.\n"
				.."{warp_generation:%s} Reduction in further "..COLORS_KWords.Peril_rgb.." Generation for {duration:%s} seconds.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_17_rgb)),
				-- vent: 5%, warp_generation: 20%, duration: 4, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_017_desc_fr",
		{"loc_talent_psyker_melee_weaving_desc"}, {"fr"},
			loc_text("{vent:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." atténué lors d'une éliminations sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." en mélée.\n{warp_generation:%s} de Réduction de la génération de "..COLORS_KWords_fr.Peril_rgb_fr.." pendant {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Passive_17_rgb_fr)), 
	--[+ Russian +]-- Треск костей
	create_template("talent_tree_psy_pas_017_desc_ru",
		{"loc_talent_psyker_melee_weaving_desc"}, {"ru"},
			loc_text("{vent:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." подавляется при убийствах в "..COLORS_KWords_ru.Weakspot_rgb_ru.." оружием ближнего боя.\nНа {warp_generation:%s} снижается дальнейшая генерация "..COLORS_KWords_ru.Peril_rgb_ru.." на {duration:%s} секунды."..TALENTS_Enh_desc_ru.ED_PSY_Passive_17_rgb_ru)),

	--[+ Passive 18 - Warp Splitting +]--
	create_template("talent_tree_psy_pas_018_desc_en",
		{"loc_talent_psyker_cleave_from_peril_desc"}, {"en"},
			loc_text("Up to {max_cleave:%s} "..COLORS_KWords.Cleave_rgb..", based on "..COLORS_KWords.Peril_rgb..".\n"
				..Arrow_down_red.." Carapace cannot be "..COLORS_KWords.Cleaved_rgb.." by default.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_18_rgb)),
				-- max_cleave: +100%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_018_desc_fr",
		{"loc_talent_psyker_cleave_from_peril_desc"}, {"fr"},
			loc_text("Jusqu'à {max_cleave:%s} de "..COLORS_KWords_fr.Cleave_rgb_fr..", en fonction du "..COLORS_KWords_fr.Peril_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_18_rgb_fr)),
	--[+ Russian +]-- Расщепление варпа +]--
	create_template("talent_tree_psy_pas_018_desc_ru",
		{"loc_talent_psyker_cleave_from_peril_desc"}, {"ru"},
			loc_text("До {max_cleave:%s} к "..COLORS_KWords_ru.Cleave_rgb_ru..", в зависимости от уровня "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_18_rgb_ru)),

	--[+ Passive 19 - Unlucky for Some +]--
	create_template("talent_tree_psy_pas_019_desc_en",
		{"loc_talent_psyker_restore_toughness_to_allies_when_ally_down_description"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenished to all other Allies in "..COLORS_KWords.Coherency_rgb.." when an Ally in "..COLORS_KWords.Coherency_rgb.." gets Knocked Down.\n"
				..Arrow_right_.." When Psyker goes down, replenishes "..COLORS_KWords.Toughness_rgb.." to Allies in "..COLORS_KWords.Coherency_rgb..".\n"
				..Arrow_down_red.." Does not proc when the Ally or Psyker dies.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_19_rgb)),
				-- toughness: 100%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_019_desc_fr",
		{"loc_talent_psyker_restore_toughness_to_allies_when_ally_down_description"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour tout les autres alliés en syntonie lorsqu'un allié en syntonie est mis à terre."..TALENTS_Enh_desc_fr.ED_PSY_Passive_19_rgb_fr)),
	--[+ Russian - Не везёт некоторым +]-- руоф Некоторым не повезло
	create_template("talent_tree_psy_pas_019_desc_ru",
		{"loc_talent_psyker_restore_toughness_to_allies_when_ally_down_description"}, {"ru"},
			loc_text("Когда одного из союзников сбивают с ног, {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается всем игрокам, которые находились в этот момент с ним в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_19_rgb_ru)),

	--[+ Passive 20 - One with the Warp +]--
	create_template("talent_tree_psy_pas_020_desc_en",
		{"loc_talent_psyker_toughness_damage_reduction_from_warp_charge_desc"}, {"en"},
			loc_text("{min_damage:%s} to {max_damage:%s} gain "..COLORS_KWords.Toughness_dmg_red_rgb.." based on your current "..COLORS_KWords.Peril_rgb..".\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_20_rgb)),
				-- min_damage: +10.00%, max_damage: +33.00%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_020_desc_fr",
		{"loc_talent_psyker_toughness_damage_reduction_from_warp_charge_desc"}, {"fr"},
			loc_text("{min_damage:%s} à {max_damage:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." en fonction de votre "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Passive_20_rgb_fr)),
	--[+ Russian +]-- Единство с варпом
	create_template("talent_tree_psy_pas_020_desc_ru",
		{"loc_talent_psyker_toughness_damage_reduction_from_warp_charge_desc"}, {"ru"},
			loc_text("От "..COLORS_Numbers.pc_10_rgb.." до "..COLORS_Numbers.pc_33_rgb.." к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." в зависимости от вашего текущего уровня "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_20_rgb_ru)),

	--[+ Passive 21 - Empathic Evasion +]--
	create_template("talent_tree_psy_pas_021_desc_en",
		{"loc_talent_psyker_dodge_after_crits_description"}, {"en"},
			loc_text("A "..COLORS_KWords.Crit_hit_rgb.." makes you count as Dodging against Ranged Attacks for {duration:%s} second.\n"
				..Arrow_up_green.." Can be refreshed during active duration.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_21_rgb)),
				-- duration: 1 -- s->second, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_021_desc_fr",
		{"loc_talent_psyker_dodge_after_crits_description"}, {"fr"},
			loc_text("Les "..COLORS_KWords_fr.Crit_hit_rgb_fr.." déclenche une esquive contre les attaques à distance pendant {duration:%s} seconde."..TALENTS_Enh_desc_fr.ED_PSY_Passive_21_rgb_fr)),
	--[+ Russian +]-- Эмпатическое уклонение
	create_template("talent_tree_psy_pas_021_desc_ru",
		{"loc_talent_psyker_dodge_after_crits_description"}, {"ru"},
			loc_text("При "..COLORS_KWords_ru.Crit_hit_rgb_ru.." вы переходите в режим уклонения от дальнобойных атак на {duration:%s} секунду."..TALENTS_Enh_desc_ru.ED_PSY_Passive_21_rgb_ru)),

	--[+ Passive 22 - Anticipation +]--
	create_template("talent_tree_psy_pas_022_desc_en",
		{"loc_talent_psyker_improved_dodge_description"}, {"en"},
			loc_text("{dodge_linger_time:%s} Dodge duration. Increases the number of Dodges before Dodges starts becoming ineffective by {extra_consecutive_dodges:%s}.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_22_rgb)),
				-- dodge_linger_time: +50%, extra_consecutive_dodges: 1
	--[+ French +]--
	create_template("talent_tree_psy_pas_022_desc_fr",
		{"loc_talent_psyker_improved_dodge_description"}, {"fr"},
			loc_text("{dodge_linger_time:%s} de durée de l'esquive. Augmente le nombre d'esquives avant que les esquives ne commencent à devenir inefficaces de {extra_consecutive_dodges:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Passive_22_rgb_fr)),
	--[+ Russian +]-- Предвкушение
	create_template("talent_tree_psy_pas_022_desc_ru",
		{"loc_talent_psyker_improved_dodge_description"}, {"ru"},
			loc_text("Вы получаете {extra_consecutive_dodges:%s} дополнительное уклонение и {dodge_linger_time:%s} к длительности уклонений."..TALENTS_Enh_desc_ru.ED_PSY_Passive_22_rgb_ru)),

	--[+ Passive 23 - Solidity +]--
	create_template("talent_tree_psy_pas_023_desc_en",
		{"loc_talent_psyker_increased_vent_speed_description"}, {"en"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{vent_speed:%s} Quell Speed.\n"
				..Arrow_right_.." Applies only to Active Quelling, Passive Quelling is unaffected.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_23_rgb)),
				-- vent_speed: 30%
	--[+ French +]--
	create_template("talent_tree_psy_pas_023_desc_fr",
		{"loc_talent_psyker_increased_vent_speed_description"}, {"fr"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{vent_speed:%s} de vitesse d'atténuation."..TALENTS_Enh_desc_fr.ED_PSY_Passive_23_rgb_fr)),
	--[+ Russian +]-- Устойчивость -- руоф Твердость
	create_template("talent_tree_psy_pas_023_desc_ru",
		{"loc_talent_psyker_increased_vent_speed_description"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{vent_speed:%s} к скорости подавления "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_23_rgb_ru)),

	--[+ Passive 24 - Puppet Master +]--
	create_template("talent_tree_psy_pas_024_desc_en",
		{"loc_talent_psyker_coherency_size_increase_description"}, {"en"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{radius_modifier:%s} Radius for your "..COLORS_KWords.Coherency_rgb.." Aura, from "..COLORS_Numbers.n_8_rgb.." to "..COLORS_Numbers.n_12_rgb.." meters.")),
			-- radius_modifier: 50%, +, colors -- ..TALENTS_Enh_desc.ED_PSY_Passive_24_rgb
	--[+ French +]--
	create_template("talent_tree_psy_pas_024_desc_fr",
		{"loc_talent_psyker_coherency_size_increase_description"}, {"fr"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{radius_modifier:%s} de rayon pour votre aura de syntonie."..TALENTS_Enh_desc_fr.ED_PSY_Passive_24_rgb_fr)),
	--[+ Russian +]-- Кукловод
	create_template("talent_tree_psy_pas_024_desc_ru",
		{"loc_talent_psyker_coherency_size_increase_description"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{radius_modifier:%s} к радиусу вашей ауры "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_24_rgb_ru)),

	--[+ Passive 25 - Warp Rider +]--
	create_template("talent_tree_psy_pas_025_desc_en",
		{"loc_talent_psyker_damage_based_on_warp_charge_desc"}, {"en"},
			loc_text("Up to {max_damage:%s} "..COLORS_KWords.Damage_rgb.." from all sources, based on your current "..COLORS_KWords.Peril_rgb..".\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_25_rgb)),
				-- max_damage: +20%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_025_desc_fr",
		{"loc_talent_psyker_damage_based_on_warp_charge_desc"}, {"fr"},
			loc_text("Jusqu'à {max_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de toutes les sources, basé sur votre "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Passive_25_rgb_fr)),
	--[+ Russian +]-- Всадник варпа -- руоф Наездник варпа
	create_template("talent_tree_psy_pas_025_desc_ru",
		{"loc_talent_psyker_damage_based_on_warp_charge_desc"}, {"ru"},
			loc_text("До {max_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." из всех источников в зависимости от уровня вашей текущей "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_25_rgb_ru)),

	--[+ Passive 26 - Crystalline Will +]--
	create_template("talent_tree_psy_pas_027_desc_en",
		{"loc_talent_psyker_alternative_peril_explosion_desc"}, {"en"},
			-- loc_text("Overloading through "..COLORS_KWords.Perils_rgb.." of the Warp no longer knocks you down, but you still take the appropriate "..COLORS_KWords.Corruptdmg_rgb..".\n"
			loc_text("Instead of knocking down Psyker on self-explosion, converts "..COLORS_Numbers.n_1_rgb.." "..COLORS_KWords.Health_rgb.." Segment to full "..COLORS_KWords.Corruption_rgb..".\n"
				..Arrow_right_.." Always converts "..COLORS_Numbers.n_1_rgb.." Segment regardless whether the Segment in question is already partially "..COLORS_KWords.Corrupted_rgb.." or not.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_26_rgb)),
				-- rewrite, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_027_desc_fr",
		{"loc_talent_psyker_alternative_peril_explosion_desc"}, {"fr"},
			loc_text("La surcharge des "..COLORS_KWords_fr.Perils_rgb_fr.." du Warp ne vous met plus à terre, mais vous subissez toujours les "..COLORS_KWords_fr.Corruptdmg_rgb_fr.." appropriées."..TALENTS_Enh_desc_fr.ED_PSY_Passive_26_rgb_fr)),
	--[+ Russian +]-- Чистая воля
	create_template("talent_tree_psy_pas_027_desc_ru",
		{"loc_talent_psyker_alternative_peril_explosion_desc"}, {"ru"},
			loc_text("Взрыв от перегрузки "..COLORS_KWords_ru.Perils_rgb_ru.." варпа больше не выводит вас из строя, но все ещё применяет к вам соответствующий "..COLORS_KWords_ru.Corruptdmg_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_26_rgb_ru)),

	--[+ Passive 27 - Kinetic Deflection +]--
	create_template("talent_tree_psy_pas_027_desc_en",
		{"loc_talent_psyker_block_costs_warp_charge_desc"}, {"en"},
			loc_text("While below 97% "..COLORS_KWords.Peril_rgb..", Blocking an attack causes you to gain "..COLORS_KWords.Peril_rgb.." instead of losing "..COLORS_KWords.Stamina_rgb..".\n"
				.."Gained "..COLORS_KWords.Peril_rgb.." is {warp_charge_block_cost:%s} of the blocked attack's "..COLORS_KWords.Stamina_rgb.." cost.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_27_rgb)),
				-- warp_charge_block_cost: 25%, colors
		--[+ French +]--
	create_template("talent_tree_psy_pas_027_desc_fr",
		{"loc_talent_psyker_block_costs_warp_charge_desc"}, {"fr"},
			loc_text("Tant que vous êtes en dessous de 97 % de "..COLORS_KWords_fr.Peril_rgb_fr..", bloquer une attaque vous fait gagner du "..COLORS_KWords_fr.Peril_rgb_fr.." au lieu de perdre de l'"..COLORS_KWords_fr.Stamina_rgb_fr..".\n\nLe "..COLORS_KWords_fr.Peril_rgb_fr.." gagné représente {warp_charge_block_cost:%s} du coût en "..COLORS_KWords_fr.Stamina_rgb_fr.." de l'attaque bloquée."..TALENTS_Enh_desc_fr.ED_PSY_Passive_27_rgb_fr)),
	--[+ Russian +]-- Кинетическое отклонение
	create_template("talent_tree_psy_pas_027_desc_ru",
		{"loc_talent_psyker_block_costs_warp_charge_desc"}, {"ru"},
			loc_text("Пока уровень "..COLORS_KWords_ru.Peril_rgb_ru.." ниже "..COLORS_Numbers.pc_97_rgb..", блокирование атак приводит к повышению уровня "..COLORS_KWords_ru.Peril_rgb_ru.." вместо потери "..COLORS_KWords_ru.Stamina_rgb_ru..".\n\nПолучаемый уровень "..COLORS_KWords_ru.Peril_rgb_ru.." составляет {warp_charge_block_cost:%s} от стоимости "..COLORS_KWords_ru.Stamina_rgb_ru..", затрачиваемой на такое же блокирование."..TALENTS_Enh_desc_ru.ED_PSY_Passive_27_rgb_ru)),

	--[+ Passive 28 - Tranquility Through Slaughter +]--
	create_template("talent_tree_psy_pas_028_desc_en",
		{"loc_talent_psyker_ranged_crits_vent_desc"}, {"en"},
			loc_text("{percent:%s} "..COLORS_KWords.Peril_rgb.." is quelled on Non-Warp Ranged "..COLORS_KWords.Crit_hits_rgb..".\n"
				..Arrow_up_green.." Procs additionally to \"Battle Meditation\" and \"Purloin Providence\".\n"
				..Arrow_right_.." Procs when hitting shields.\n"
				..Arrow_right_.." Procs only Once per shot regardless of how many enemies have been hit.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_28_rgb)),
				-- percent: 4%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_028_desc_fr",
		{"loc_talent_psyker_ranged_crits_vent_desc"}, {"fr"},
			loc_text("{percent:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." est atténué sur les "..COLORS_KWords_fr.Crit_hits_rgb_fr.." à distance n'utilisant pas le Warp."..TALENTS_Enh_desc_fr.ED_PSY_Passive_28_rgb_fr)),
	--[+ Russian +]-- Спокойствие посредством убийств
	create_template("talent_tree_psy_pas_028_desc_ru",
		{"loc_talent_psyker_ranged_crits_vent_desc"}, {"ru"},
			loc_text("{percent:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." подавляется при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru.." не из варп источника."..TALENTS_Enh_desc_ru.ED_PSY_Passive_28_rgb_ru)),

	--[+ Passive 29 - Empyric Resolve +]--
	create_template("talent_tree_psy_pas_029_desc_en",
		{"loc_talent_psyker_warp_glass_cannon_desc"}, {"en"},
			loc_text("{peril_reduction:%s} "..COLORS_KWords.Peril_rgb.." Generation.\n{toughness_reduction:%s} "..COLORS_KWords.Toughness_rgb.." Replenished.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_29_rgb)),
				-- peril_reduction: -40%, toughness_reduction: -30%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_029_desc_fr",
		{"loc_talent_psyker_warp_glass_cannon_desc"}, {"fr"},
			loc_text("{peril_reduction:%s} de génération de "..COLORS_KWords_fr.Peril_rgb_fr..".\n{toughness_reduction:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_29_rgb_fr)),
	--[+ Russian +]-- Эмпирическая решимость
	create_template("talent_tree_psy_pas_029_desc_ru",
		{"loc_talent_psyker_warp_glass_cannon_desc"}, {"ru"},
			loc_text("{peril_reduction:%s} генерации "..COLORS_KWords_ru.Peril_rgb_ru..".\n{toughness_reduction:%s} к восстановлению "..COLORS_KWords_ru.Toughness_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_29_rgb_ru)),

	--[+ Passive 30 - Penetration of the Soul +]--
	create_template("talent_tree_psy_pas_030_desc_en",
		{"loc_talent_psyker_warp_attacks_rending_new_desc"}, {"en"},
			loc_text("{rending:%s} "..COLORS_KWords.Rending_rgb.." on Warp-Attacks when above {threshold:%s} "..COLORS_KWords.Peril_rgb..".\n"
				..Arrow_down_red.." Only affects Psyker's own "..COLORS_KWords.Damage_rgb..".\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_30_rgb)),
				-- rending: +10%, threshold: 75%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_030_desc_fr",
		{"loc_talent_psyker_warp_attacks_rending_new_desc"}, {"fr"},
			loc_text("{rending:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." sur les attaques Warp lorsque vous êtes au-dessus de {threshold:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_30_rgb_fr)),
	--[+ Russian +]-- Проникновение в душу
	create_template("talent_tree_psy_pas_030_desc_ru",
		{"loc_talent_psyker_warp_attacks_rending_new_desc"}, {"ru"},
			loc_text("{rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." для варп-атак, если ваш уровень "..COLORS_KWords_ru.Peril_rgb_ru.." выше {threshold:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Passive_30_rgb_ru)),

	--[+ Passive 31 - True Aim +]--
	create_template("talent_tree_psy_pas_031_desc_en",
		{"loc_talent_psyker_weakspot_grants_crit_once_description"}, {"en"},
			loc_text("Landing {weakspot_hits:%s} "..COLORS_KWords.Weakspothits_rgb.." grants your next Ranged Attack a guaranteed "..COLORS_KWords.Crit_rgb..".\n"
				..Arrow_right_.." "..COLORS_KWords.Cleaving_rgb.." attacks (e.g. Voidstrike Staff charged shots into density) can accumulate up to "..COLORS_Numbers.n_5_rgb.." "..COLORS_KWords.Weakspot_rgb.." Stacks at once but do not consume the guaranteed "..COLORS_KWords.Crit0_rgb.." right away.\n"
				..Arrow_right_.." Generates "..COLORS_Numbers.n_1_rgb.." "..COLORS_KWords.Weakspot_rgb.." Stack per "..COLORS_KWords.Weakspothit_rgb.." with Melee, Ranged, \"Assail\" and \"Brain Rupture\"/\"Brain Burst\" attacks.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_31_rgb)),
			-- weakspot_hits: 5 -- del "Can only trigger once per Attack.", colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_031_desc_fr",
		{"loc_talent_psyker_weakspot_grants_crit_once_description"}, {"fr"},
			loc_text("Toucher {weakspot_hits:%s} "..COLORS_KWords_fr.Weakspothits_rgb_fr.." garantit à votre prochaine attaque à distance un "..COLORS_KWords_fr.Crit_rgb_fr.." garanti."..TALENTS_Enh_desc_fr.ED_PSY_Passive_31_rgb_fr)),
	--[+ Russian +]-- Верная цель
	create_template("talent_tree_psy_pas_031_desc_ru",
		{"loc_talent_psyker_weakspot_grants_crit_once_description"}, {"ru"},
			loc_text("Попадания {weakspot_hits:%s} раз в "..COLORS_KWords_ru.Weakspot_rgb_ru.." делают вашу следующую дальнобойную атаку гарантированным "..COLORS_KWords_ru.Crit_hit_om_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_31_rgb_ru)),

	--[+ Passive 32 - Surety of Arms +]--
	create_template("talent_tree_psy_pas_032_desc_en",
		{"loc_talent_psyker_reload_speed_warp_desc"}, {"en"},
			loc_text("{reload_speed:%s} Reload Speed while below {threshold:%s} "..COLORS_KWords.Peril_rgb..". On Reload, generate up to {warp_charge:%s} "..COLORS_KWords.Peril_rgb.." based on the Percentage of the Clip Restored.\n"
				..TALENTS_Enh_desc.ED_PSY_Passive_32_rgb)),
				-- reload_speed: 25%, threshold: 75%, warp_charge: 25%, colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_032_desc_fr",
		{"loc_talent_psyker_reload_speed_warp_desc"}, {"fr"},
			loc_text("{reload_speed:%s} de vitesse de rechargement lorsque vous êtes en dessous de {threshold:%s} de "..COLORS_KWords_fr.Peril_rgb_fr..". Lors du rechargement, générez jusqu'à {warp_charge:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." en fonction du pourcentage du chargeur restauré."..TALENTS_Enh_desc_fr.ED_PSY_Passive_32_rgb_fr)),
	--[+ Russian +]-- Варп в залог -- руоф Верность оружия
	create_template("talent_tree_psy_pas_032_desc_ru",
		{"loc_talent_psyker_reload_speed_warp_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{reload_speed:%s} к скорости перезарядки оружия пока ваш уровень "..COLORS_KWords_ru.Peril_rgb_ru.." ниже {threshold:%s}. При перезарядке генерируется до {warp_charge:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." в зависимости от процентного соотношения восстановленных патронов в магазине."..TALENTS_Enh_desc_ru.ED_PSY_Passive_32_rgb_ru)),

--[+ ++ZEALOT - ИЗУВЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Stun Grenade +]--
	create_template("talent_tree_zea_blitz0_000_desc_en",
		{"loc_ability_shock_grenade_description"}, {"en"},
			loc_text("Throw a "..COLORS_KWords.Stun_gren_rgb.." that "..COLORS_KWords.Electrocutes_rgb.." and "..COLORS_KWords.Stuns_rgb.." all Enemies within its blast radius.\n"
				..Arrow_up_green.." Ignores Bulwark shields.\n"
				..Arrow_up_green.." Can be refreshed during active duration.\n"
				..Arrow_right_.." Fuse time: "..COLORS_Numbers.n_1_5_rgb.." seconds.\n"
				..Arrow_right_.." Explosion radius: "..COLORS_Numbers.n_8_rgb.." meters.\n"
				..TALENTS_Enh_desc.ED_ZEA_Blitz_0_rgb)),
				-- colors
	--[+ French +]--
	create_template("talent_tree_zea_blitz0_000_desc_fr",
		{"loc_ability_shock_grenade_description"}, {"fr"},
			loc_text("Lancez une "..COLORS_KWords_fr.Stun_gren_rgb_fr.." qui vas "..COLORS_KWords_fr.Electrocute_rgb_fr.." et "..COLORS_KWords_fr.Stun_rgb_fr.." tous les ennemis dans son rayon d'explosion."..TALENTS_Enh_desc_fr.ED_ZEA_Blitz_0_rgb_fr)),
	--[+ Russian +]-- Оглушающая граната
	create_template("talent_tree_zea_blitz0_000_desc_ru",
		{"loc_ability_shock_grenade_description"}, {"ru"},
			loc_text("Вы бросаете "..COLORS_KWords_ru.Stun_gren_rgb_ru..", которая поражает "..COLORS_KWords_ru.Electrocuted_rgb_ru.." и "..COLORS_KWords_ru.Staggers_e_rgb_ru.." всех врагов в радиусе поражения."..TALENTS_Enh_desc_ru.ED_ZEA_Blitz_0_rgb_ru)),
	--[+ Traditional Chinese - 眩暈手雷 +]--
	-- 投擲一枚眩暈手雷，電擊爆炸範圍內敵人並致眩。
	create_template("talent_tree_zea_blitz0_000_desc_tw",
		{"loc_ability_shock_grenade_description"}, {"zh-tw"},
			loc_text("投擲一顆 "..COLORS_KWords2_tw.Stun_gren_rgb_tw.. "，\n"
			.."範圍內的敵人陷入 "..COLORS_KWords_tw.Electrocuted_rgb_tw.." 與 "..COLORS_KWords_tw.Staggers_e_rgb_tw.." 。"
				..TALENTS_Enh_desc_tw.ED_ZEA_Blitz_0_rgb_tw)),

	--[+ BLITZ 1 - Stunstorm Grenade +]--
	create_template("talent_tree_zea_blitz1_000_desc_en",
		{"loc_zealot_improved_stun_grenade_desc"}, {"en"},
			loc_text("Throw a "..COLORS_KWords.Stun_gren_rgb.." that explodes and applies a staggering "..COLORS_KWords.Electrocution_rgb.." effect to all enemies within its range.\n"
				..Arrow_right_.." This is an augmented version of {talent_name:%s} with {radius:%s} blast radius. Up to "..COLORS_Numbers.n_12_rgb.." meters.\n"
				..Arrow_up_green.." Ignores Bulwark shields.\n"
				..Arrow_up_green.." Can be refreshed during active duration.\n"
				..Arrow_up_green.." "..COLORS_KWords.Staggers_rgb.." all enemies in range except Mutants, Scab Captains and Monstrosities.\n"
				..Arrow_right_.." Fuse time: "..COLORS_Numbers.n_1_5_rgb.." seconds.\n"
				..Arrow_right_.." Explosion radius: "..COLORS_Numbers.n_8_rgb.." meters.\n"
				..TALENTS_Enh_desc.ED_ZEA_Blitz_0_rgb)),
				-- talent_name: Stun Grenade, radius: +50%, colors
	--[+ French +]--
	create_template("talent_tree_zea_blitz1_000_desc_fr",
		{"loc_zealot_improved_stun_grenade_desc"}, {"fr"},
			loc_text("Lancez une "..COLORS_KWords_fr.Stun_gren_rgb_fr.." qui vas "..COLORS_KWords_fr.Electrocute_rgb_fr.." et "..COLORS_KWords_fr.Stun_rgb_fr.." tous les ennemis dans sa portée.\n\nCeci est une version augmentée de {talent_name:%s} avec un rayon d'explosion de {radius:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Blitz_1_rgb_fr)),
	--[+ Russian +]-- Оглушающе-штурмовая граната -- руоф Граната шквального оглушения
	create_template("talent_tree_zea_blitz1_000_desc_ru",
		{"loc_zealot_improved_stun_grenade_desc"}, {"ru"},
			loc_text("Вы бросаете "..COLORS_KWords_ru.Stun_gren_rgb_ru..", которая взрывается и применяет эффект оглушающего "..COLORS_KWords_ru.Electrocution_rgb_ru.." на всех врагов в радиусе взрыва.\n\nЭто улучшенная версия таланта {talent_name:%s} с увеличенным на {radius:%s} радиусом взрыва."..TALENTS_Enh_desc_ru.ED_ZEA_Blitz_1_rgb_ru)),
	--[+ Traditional Chinese - 眩暈風暴手雷 +]--
	-- 投擲一枚手雷，使爆炸範圍內的所有敵人眩暈。\n\n該天賦是{talent_name:%s}的增強版，擁有{radius:%s}爆炸範圍。
	create_template("talent_tree_zea_blitz1_000_desc_tw",
		{"loc_zealot_improved_stun_grenade_desc"}, {"zh-tw"},
			loc_text("投擲一顆 "..COLORS_KWords2_tw.Stun_gren_rgb_tw.." ，\n"
			.."範圍內的敵人陷入 "..COLORS_KWords_tw.Electrocuted_rgb_tw.." 與 "..COLORS_KWords_tw.Staggers_e_rgb_tw.." 。"
			.."。\n\n這是 {talent_name:%s} 天賦的強化版本，\n"
			.."爆炸半徑增加 {radius:%s}。"
			..TALENTS_Enh_desc_tw.ED_ZEA_Blitz_1_rgb_tw)),

	--[+ BLITZ 2 - Immolation Grenade +]--
	create_template("talent_tree_zea_blitz2_000_desc_en",
		{"loc_talent_ability_fire_grenade_desc"}, {"en"},
			loc_text("Throw a grenade that leaves a layer of flaming liquid, "..COLORS_KWords.Burning_rgb.." and "..COLORS_KWords.Staggering_rgb.." enemies, and barring their path. Most effective against Unarmoured Enemies.\n"
				..Arrow_right_.." Fuse time: "..COLORS_Numbers.n_1_7_rgb.." seconds.\n"
				..TALENTS_Enh_desc.ED_ZEA_Blitz_2_rgb)),
				-- colors
	--[+ French +]--
	create_template("talent_tree_zea_blitz2_000_desc_fr",
		{"loc_talent_ability_fire_grenade_desc"}, {"fr"},
			loc_text("Lancez une grenade qui laisse une couche de liquide enflammé, "..COLORS_KWords_fr.Burning_rgb_fr.." et faisant "..COLORS_KWords_fr.Staggering_rgb_fr.." les ennemis, barrant la voie. Éfficacité maximale contre les ennemis sans armures."..TALENTS_Enh_desc_fr.ED_ZEA_Blitz_2_rgb_fr)),
	--[+ Russian +]-- Огненная граната -- руоф Жертвенная граната
	create_template("talent_tree_zea_blitz2_000_desc_ru",
		{"loc_talent_ability_fire_grenade_desc"}, {"ru"},
			loc_text("Вы бросаете гранату, которая оставляет слой горящей жидкости, "..COLORS_KWords_ru.Burnd_rgb_ru.." и "..COLORS_KWords_ru.Staggers_e_rgb_ru.." врагов, преграждая им путь. Наиболее эффективно против небронированных врагов."..TALENTS_Enh_desc_ru.ED_ZEA_Blitz_2_rgb_ru)),
	--[+ Traditional Chinese - 獻祭手雷 +]--
	-- 投擲一枚手雷，在爆炸處形成一層燃燒的液體，燃燒並使敵人暈眩, 同時阻擋他們的道路。針對無護甲敵人最為有效。
	create_template("talent_tree_zea_blitz2_000_desc_tw",
		{"loc_talent_ability_fire_grenade_desc"}, {"zh-tw"},
			loc_text("投擲一顆 {talent_name:%s}，\n"
			.."爆炸後產生火焰地面，\n"
			.."該火焰可 "..COLORS_KWords_tw.Burnd_rgb_tw.." 並 "..COLORS_KWords_tw.Staggers_e_rgb_tw.." 敵人，\n"
			.."\n"
			.."- 火焰會迫使敵人改變路線。\n"
			.."- 對無裝甲敵人最為有效。" 
			..TALENTS_Enh_desc_tw.ED_ZEA_Blitz_2_rgb_tw)),

	--[+ BLITZ 3 - Blades of Faith +]--
	create_template("talent_tree_zea_blitz3_000_desc_en",
		{"loc_ability_zealot_throwing_knifes_desc"}, {"en"},
			loc_text("Throw a consecrated knife to deal High "..COLORS_KWords.Damage_rgb.." to a Single Enemy.\n"
				..Arrow_up_green.." High armor "..COLORS_KWords.Damage_rgb.." modifiers against Maniac and Infested.\n"
				..Arrow_up_green.." Extra "..COLORS_KWords.Finesse_rgb.." boosts against Unarmoured and Flak.\n"
				..Arrow_up_green.." Deals No "..COLORS_KWords.Damage_rgb.." against Carapace unless "..COLORS_KWords.Weakspot_rgb.." like Mauler head.\n"
				..Arrow_up_green.." Can "..COLORS_KWords.Cleave_rgb.." "..COLORS_Numbers.n_1_rgb.." Groaner, Poxwalker, Scab/Dreg Stalker or Scab Shooter.\n"
				..Arrow_up_green.." Headshot kills all enemies except Ogryns, Ragers, Maulers and Monstrosities.\n"
				..Arrow_right_.." Quick Throw.\n"
				..Arrow_right_.." No "..COLORS_KWords.Damage_rgb.." falloff.\n"
				..Arrow_right_.." Ammo: Replenishes "..COLORS_Numbers.n_1_rgb.." knife per melee Elite or Special kill. "..COLORS_Numbers.n_2_rgb.." knives per small ammo pickup. "..COLORS_Numbers.n_6_rgb.." knives per big ammo pickup. All knives per ammo crate.\n"
				..Arrow_right_.." The knife flies along a curving trajectory.\n"
				..TALENTS_Enh_desc.ED_ZEA_Blitz_3_rgb)),
				-- colors
	--[+ French +]--
	create_template("talent_tree_zea_blitz3_000_desc_fr",
		{"loc_ability_zealot_throwing_knifes_desc"}, {"fr"},
			loc_text("Lancez un couteau consacré pour infliger de gros "..COLORS_KWords_fr.Damage_rgb_fr.." à un seul ennemi."..TALENTS_Enh_desc_fr.ED_ZEA_Blitz_3_rgb_fr)),
	--[+ Russian +]-- Клинки веры
	create_template("talent_tree_zea_blitz3_000_desc_ru",
		{"loc_ability_zealot_throwing_knifes_desc"}, {"ru"},
			loc_text("Вы бросаете освящённый нож, нанося высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." одному врагу. Они очень эффективны против большинства врагов, кроме врагов в панцирной броне.\n- Быстрый бросок.\n- "..COLORS_Numbers.n_1_rgb.." нож восполняется за убийство в ближнем бою элитного врага или специалиста, "..COLORS_Numbers.n_2_rgb.." ножа из маленькой сумки с боеприпасами, "..COLORS_Numbers.n_6_rgb.." ножей из большой сумки с боеприпасами, все ножи из ящика с боеприпасами."..TALENTS_Enh_desc_ru.ED_ZEA_Blitz_3_rgb_ru)),
	--[+ Traditional Chinese - 信仰之刃 +]--
	--擲出一把聖化小刀，可對單體敵人造成高額傷害。這把小刀對大多數敵人效果拔群，但對護甲堅固的敵人威力較弱。\n\n-快速投擲\n-近戰擊殺精英和專家敵人可補充一把小刀\n-使用彈藥箱可補充小刀
	create_template("talent_tree_zea_blitz3_000_desc_tw",
		{"loc_ability_zealot_throwing_knifes_desc"}, {"zh-tw"},
			loc_text("投擲 {talent_name:%s}，對單一敵人 "..COLORS_KWords_tw.Dmg_h2_rgb_tw.." 。\n"
			.."\n"
			.."- 快速投擲。\n"
			.."- 大多敵人"..COLORS_KWords_tw.Dmg_h2_rgb_tw.."，對重甲傷害極低。\n"
			.."\n"
			.."- 擊殺菁英或專家可回復"..COLORS_Numbers.n_1_rgb.."把匕首，\n"
			.."- 小型彈藥包回復"..COLORS_Numbers.n_2_rgb.."把。\n"
			.."- 大型彈藥包回復"..COLORS_Numbers.n_6_rgb.."把。\n"
			.."- 彈藥箱回復全部匕首。" ..TALENTS_Enh_desc_tw.ED_ZEA_Blitz_3_rgb_tw)),

--[+ +AURA - АУРА+ +]--
	--[+ AURA 0 - The Emperors's Will +]--
	create_template("talent_tree_zea_aura0_000_desc_en",
		{"loc_talent_zealot_aura_toughness_damage_coherency_desc"}, {"en"},
			loc_text("{damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n"
				..Arrow_down_red.." Does not Stack with the same Aura from another Zealot.\n"
				..TALENTS_Enh_desc.ED_ZEA_Aura_0_n_1_rgb)),
				-- damage_reduction: +7.5%, colors
	--[+ French +]--
	create_template("talent_tree_zea_aura0_000_desc_fr",
		{"loc_talent_zealot_aura_toughness_damage_coherency_desc"}, {"fr"},
			loc_text("{damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." pour vous et les alliés en syntonie."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_0_n_1_rgb_fr)),
	--[+ Russian +]-- Воля Императора
	create_template("talent_tree_zea_aura0_000_desc_ru",
		{"loc_talent_zealot_aura_toughness_damage_coherency_desc"}, {"ru"},
			loc_text("{damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Aura_0_n_1_rgb_ru)),
	--[+ Traditional Chinese - 帝皇之諭 +]--
	-- 你和協同中的盟友{damage_reduction:%s}韌性減傷。
	create_template("talent_tree_zea_aura0_000_desc_tw",
		{"loc_talent_zealot_aura_toughness_damage_coherency_desc"}, {"zh-tw"},
			loc_text("與"..COLORS_KWords_tw.Coherencing_rgb_tw.."盟友 {damage_reduction:%s} "..COLORS_KWords_tw.Toughness_dmg_red_u_rgb_tw.."。" ..TALENTS_Enh_desc_tw.ED_ZEA_Aura_0_n_1_rgb_tw)),

	--[+ AURA 1 - Benediction +]--
	create_template("talent_tree_zea_aura_001_desc_en",
		{"loc_talent_zealot_toughness_aura_efficiency_desc"}, {"en"},
			loc_text("{damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n"
				..Arrow_right_.." This is an augmented version of the base Aura - {talent_name:%s}.\n"
				..TALENTS_Enh_desc.ED_ZEA_Aura_0_n_1_rgb)),
				-- damage_reduction: +15%, talent_name: The Emperor's Will, colors
	--[+ French +]--
	create_template("talent_tree_zea_aura_001_desc_fr",
		{"loc_talent_zealot_toughness_aura_efficiency_desc"}, {"fr"},
			loc_text("{damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." pour vous et les alliés en syntonie.\n\nCeci est une version augmentée de l'Aura de base - {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_0_n_1_rgb_fr)),
	--[+ Russian +]-- Благословение
	create_template("talent_tree_zea_aura_001_desc_ru",
		{"loc_talent_zealot_toughness_aura_efficiency_desc"}, {"ru"},
			loc_text("{damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n\nЭто улучшенная версия базовой ауры - {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_ZEA_Aura_0_n_1_rgb_ru)),
	--[+ Traditional Chinese - 恩賜 +]--
	--你和協同中的盟友{damage_reduction:%s}韌性減傷。\n\n該天賦是{talent_name:%s}的增強版。
	create_template("talent_tree_zea_aura_001_desc_tw",
		{"loc_talent_zealot_toughness_aura_efficiency_desc"}, {"zh-tw"},
			loc_text("與"..COLORS_KWords_tw.Coherencing_rgb_tw.."盟友 {damage_reduction:%s} "..COLORS_KWords_tw.Toughness_dmg_red_u_rgb_tw.."。\n\n"
			.."這是基礎光環 {talent_name:%s} 的強化版本。" ..TALENTS_Enh_desc_tw.ED_ZEA_Aura_0_n_1_rgb_tw)),

	--[+ AURA 2 - Beacon of Purity +]--
	create_template("talent_tree_zea_aura_002_desc_en",
		{"loc_talent_zealot_corruption_healing_coherency_improved_desc"}, {"en"},
			loc_text("{corruption:%s} "..COLORS_KWords.Corruption_rgb.." heals from the current "..COLORS_KWords.Wound_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb.." every {interval:%s} second.\n"
				..TALENTS_Enh_desc.ED_ZEA_Aura_2_rgb)),
				-- corruption: 1.5, interval: 1, s->second, colors
	--[+ French +]--
	create_template("talent_tree_zea_aura_002_desc_fr",
		{"loc_talent_zealot_corruption_healing_coherency_improved_desc"}, {"fr"},
			loc_text("Soigne {corruption:%s} de "..COLORS_KWords_fr.Corruption_rgb_fr.." de la blessure actuelle pour vous et les alliés en syntonie toutes les {interval:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_2_rgb_fr)),
	--[+ Russian +]-- Маяк очищения -- руоф Маяк непорочности
	create_template("talent_tree_zea_aura_002_desc_ru",
		{"loc_talent_zealot_corruption_healing_coherency_improved_desc"}, {"ru"},
			loc_text("{corruption:%s} единицы "..COLORS_KWords_ru.Corruption_i_rgb_ru.." очищается для текущей "..COLORS_KWords_ru.Wound_y_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." каждую секунду."..TALENTS_Enh_desc_ru.ED_ZEA_Aura_2_rgb_ru)),
	--[+ Traditional Chinese - 純潔信標 +]--
	-- 每{interval:%s}秒為你和協同中的盟友淨化當前傷勢下{corruption:%s}腐敗。
	create_template("talent_tree_zea_aura_002_desc_tw",
		{"loc_talent_zealot_corruption_healing_coherency_improved_desc"}, {"zh-tw"},
			loc_text("與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的盟友，\n"
			.."- 每秒淨化當前 "..COLORS_KWords_tw.Wound_y_rgb_tw.." 的 "..COLORS_KWords_tw.Corruption_i_rgb_tw.." {corruption:%s} 點。"
			..TALENTS_Enh_desc_tw.ED_ZEA_Aura_2_rgb_tw)),

	--[+ AURA 3 - Loner +]--
	create_template("talent_tree_zea_aura_003_desc_en",
		{"loc_talent_zealot_always_in_coherency_description"}, {"en"},
			loc_text("Makes Zealot count as being in "..COLORS_KWords.Coherency_rgb.." with one Ally which enables the lowest rate of "..COLORS_KWords.Coherency_rgb.." "..COLORS_KWords.Toughness_rgb.." Regeneration of "..COLORS_Numbers.n_3_75_rgb.." "..COLORS_KWords.Toughness_rgb.." per second.\n"
				..TALENTS_Enh_desc.ED_ZEA_Aura_3_rgb)),
				-- coherency_min_stack: 2, colors
	--[+ French +]--
	create_template("talent_tree_zea_aura_003_desc_fr",
		{"loc_talent_zealot_always_in_coherency_description"}, {"fr"},
			loc_text("Le Fanatique compte comme étant en syntonie avec un allié, ce qui permet le taux le plus bas de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." en syntonie de "..COLORS_Numbers.n_3_75_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." par seconde."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_3_rgb_fr)),
	--[+ Russian +]-- Единоличник -- руоф Одиночка
	create_template("talent_tree_zea_aura_003_desc_ru",
		{"loc_talent_zealot_always_in_coherency_description"}, {"ru"},
			loc_text("Восстановление "..COLORS_KWords_ru.Toughness_rgb_ru.." в "..COLORS_KWords_ru.Coherency_rgb_ru.." всегда будет расчитываться так, будто рядом с вами как минимум ещё "..COLORS_Numbers.n_1_rgb.." игрок, что поднимает нижний порог восстановления "..COLORS_KWords_ru.Toughness_rgb_ru.." с "..COLORS_Numbers.n_0_rgb.." до "..COLORS_Numbers.n_3_75_rgb.." в секунду."..TALENTS_Enh_desc_ru.ED_ZEA_Aura_3_rgb_ru)),
	--[+ Traditional Chinese - 孤狼 +]--
	--你始終被視作擁有至少{coherency_min_stack:%s}層協同。
	create_template("talent_tree_zea_aura_003_desc_tw",
		{"loc_talent_zealot_always_in_coherency_description"}, {"zh-tw"},
			loc_text(
			"系統默認身旁至少有"..COLORS_Numbers.n_1_rgb.."名玩家。\n"
			.."\n"
			.."-"..COLORS_KWords_tw.Toughness_rs_rgb_tw.." 從 "..COLORS_Numbers.n_0_rgb.." 提升至每秒 "..COLORS_Numbers.n_3_75_rgb.." 。"
			..TALENTS_Enh_desc_tw.ED_ZEA_Aura_3_rgb_tw)),

--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ ABILITY 0 - Chastise the Wicked +]--
	create_template("talent_tree_zea_abil0_000_desc_en",
		{"loc_talent_zealot_2_combat_description_new"}, {"en"},
			loc_text("Dash forward, Replenishing {toughness:%s} "..COLORS_KWords.Toughness_rgb..". Your next Melee Hit gains for "..COLORS_Numbers.n_3_rgb.." seconds {damage:%s} "..COLORS_KWords.Damage_rgb.." and is a guaranteed "..COLORS_KWords.Crit_hit_rgb..".\n"
				.."Base Cooldown: {cooldown:%s} seconds.\n"
				..Arrow_up_green.." Grants immunity to "..COLORS_KWords.Toughness_rgb.." "..COLORS_KWords.Damage_rgb.." and you Dodge all attacks while dashing.\n"
				..Arrow_up_green.." Applies a light "..COLORS_KWords.Stagger_rgb.." on impact in a "..COLORS_Numbers.n_3_rgb.." meters radius.\n"
				..Arrow_right_.." Dash Range:\n"
				..Arrow_right_..Arrow_right_.." Base: "..COLORS_Numbers.n_7_rgb.." meters.\n"
				..Arrow_right_..Arrow_right_.." Aimed: up to "..COLORS_Numbers.n_21_rgb.." meters.\n")),
					-- ..TALENTS_Enh_desc.ED_ZEA_Ability_0_rgb)),
					-- toughness: 50%, damage: 25%, cooldown: 30, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_abil0_000_desc_fr",
		{"loc_talent_zealot_2_combat_description_new"}, {"fr"},
			loc_text("Effectuez une ruée vers l'avant, régénérez {toughness:%s} "..COLORS_KWords_fr.Toughness_rgb_fr..". Votre prochaine attaque de mêlée gagne {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." et est un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." garanti.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_0_rgb_fr)),
	--[+ Russian +]-- Кара для нечестивых
	create_template("talent_tree_zea_abil0_000_desc_ru",
		{"loc_talent_zealot_2_combat_description_new"}, {"ru"},
			loc_text("Вы совершаете рывок вперёд, восстанавливая {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..". Ваш следующий удар ближнего боя получает на "..COLORS_Numbers.n_3_rgb.." секунды "..COLORS_Numbers.n_plus_rgb.."{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и будет гарантированно "..COLORS_KWords_ru.Crit_hit_udom_rgb_ru..".\n"
					..Arrow_right_.." Восстанавливается {cooldown:%s} секунд."
					..TALENTS_Enh_desc_ru.ED_ZEA_Ability_0_rgb_ru)),
	--[+ Traditional Chinese - 懲奸除惡 +]--
	-- 向前猛衝，恢復{toughness%s}韌性。你的下一次近戰攻擊命中時造成的傷害{damage%s}且必定暴擊。\n\n基礎冷卻時間：{cooldown:%s}秒。
	create_template("talent_tree_zea_abil0_000_desc_tw",
		{"loc_talent_zealot_2_combat_description_new"}, {"zh-tw"},
			loc_text("向前方衝鋒並恢復 "..COLORS_Numbers.n_50_rgb.." 點 "..COLORS_KWords_tw.Toughness_rgb_tw.."。\n"
			.."\n"
			.."- "..COLORS_Numbers.n_3_rgb..COLORS_Numbers.n_second_rgb.." 內首次攻擊 "..COLORS_Numbers.n_plus_rgb.."{damage:%s} "..COLORS_KWords_tw.Damage_rgb_tw.."\n"
			.."--必定 "..COLORS_KWords_tw.Crit_hit_udom_rgb_tw.. " 。\n"
			.."\n"
			.."- 冷卻時間：{cooldown:%s} 秒。" ..TALENTS_Enh_desc_tw.ED_ZEA_Ability_0_rgb_tw)),

	--[+ ABILITY 1 - Fury of the Faithful +]--
	create_template("talent_tree_zea_abil1_000_desc_en",
		{"loc_talent_zealot_attack_speed_after_dash_desc"}, {"en"},
			loc_text("Dash forward, Replenishing {toughness:%s} "..COLORS_KWords.Toughness_rgb.." and gaining {attack_speed:%s} Attack Speed for {time:%s} seconds. Your next Melee Hit gains {damage:%s} "..COLORS_KWords.Damage_rgb.." and is a guaranteed "..COLORS_KWords.Crit_hit_rgb..".\n"
				.."Base Cooldown: {cooldown:%s} seconds.\n"
				..Arrow_right_.." This is an augmented version of {talent_name:%s}.\n"
				..Arrow_up_green.." Melee armor penetration buff:\n"
				..Arrow_right_..Arrow_right_.." Adds a "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords.Rending_rgb.." against Carapace, Flak, Maniac, Unyielding armor types to the next Melee Attack within "..COLORS_Numbers.n_3_rgb.." seconds after activation.\n"
				..Arrow_right_..Arrow_right_.." The first Melee Attack within the duration consumes this buff.\n"
				..Arrow_right_..Arrow_right_.." Ranged attacks do NOT benefit from this buff.\n"
				..Arrow_up_green.." Grants immunity to "..COLORS_KWords.Toughness_rgb.." "..COLORS_KWords.Damage_rgb.." and you Dodge all attacks while dashing.\n"
				..Arrow_right_.." Dash Range:\n"
				..Arrow_right_..Arrow_right_.." Base: "..COLORS_Numbers.n_7_rgb.." meters.\n"
				..Arrow_right_..Arrow_right_.." Aimed: up to "..COLORS_Numbers.n_21_rgb.." meters.\n"
				..Arrow_right_.." You can't change direction, but you can cancel the dash with Block or Back buttons.\n"
				..Arrow_right_.." Cannot be activated while jumping or falling.\n"
				..Arrow_right_.." You can be stopped by Unyielding, Carapace, Monstrosities, as well as the Void shields.\n"
				..TALENTS_Enh_desc.ED_ZEA_Ability_1_rgb)),
				-- toughness: 50%, attack_speed: +20%, time: 10, damage: +25%, cooldown: 30, talent_name: Chastise the Wicked, &->and, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_abil1_000_desc_fr",
		{"loc_talent_zealot_attack_speed_after_dash_desc"}, {"fr"},
			loc_text("Effectuez une ruée vers l'avant, régénérez {toughness:%s} "..COLORS_KWords_fr.Toughness_rgb_fr.." et gagne {attack_speed:%s} de vitesse d'attaque pendant {time:%s} secondes. Votre prochaine attaque de mêlée gagne {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." et est un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." garanti.\nTemps de recharge de base : {cooldown:%s} secondes.\nCeci est une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_1_rgb_fr)),
	--[+ Russian +]-- Ярость верующего -- руоф Ударный страх
	create_template("talent_tree_zea_abil1_000_desc_ru",
		{"loc_talent_zealot_attack_speed_after_dash_desc"}, {"ru"},
			loc_text("Вы совершаете рывок вперёд, восстанавливая {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и получая {attack_speed:%s} к скорости атаки на {time:%s} секунд. Ваш следующий удар ближнего боя получает на "..COLORS_Numbers.n_3_rgb.." секунды {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и будет гарантированно "..COLORS_KWords_ru.Crit_hit_udom_rgb_ru..".\nВосстанавливается {cooldown:%s} секунд.\nЭто улучшенная версия способности {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_1_rgb_ru)),
	--[+ Traditional Chinese - 有信者之怒 +]--
	--向前猛衝，恢復{toughness:%s}韌性，同時獲得{attack_speed:%s}攻擊速度，持續{time:%s}秒。下一次近戰攻擊命中時，附加{damage:%s}傷害，且必定暴擊。\n\n基礎冷卻時間：{cooldown:%s}秒。\n\n該天賦是{talent_name:%s}的增強版。
	create_template("talent_tree_zea_abil1_000_desc_tw",
		{"loc_talent_zealot_attack_speed_after_dash_desc"}, {"zh-tw"},
			loc_text("向前方衝鋒並恢復 "..COLORS_Numbers.n_50_rgb.." 點"..COLORS_KWords_tw.Toughness_rgb_tw.."。\n"
			.."\n"
			.."- "..COLORS_Numbers.n_3_rgb..COLORS_Numbers.n_second_rgb.." 內首次攻擊 {damage:%s} "..COLORS_KWords_tw.Damage_rgb_tw.."\n"
			.."--必定 "..COLORS_KWords_tw.Crit_hit_udom_rgb_tw.. " 。\n"
			.."\n"
			.."- {attack_speed:%s} 攻擊速度加成，持續 {time:%s} 秒。\n"
			.."- 冷卻時間：{cooldown:%s} 秒。"
			.."\n\n這是 {talent_name:%s} 能力的強化版本。" ..TALENTS_Enh_desc_tw.ED_ZEA_Ability_1_rgb_tw)),

	--[+ ABILITY 1-1 - Redoubled Zeal +]--
	create_template("talent_tree_zea_abil1_001_desc_en",
		{"loc_talent_zealot_dash_has_more_charges_desc"}, {"en"},
			loc_text("{talent_name:%s} now has {charges:%s} charges.\n"
				..Arrow_down_red.." The Cooldown of the Second charge only starts after the First charge finished its Cooldown.\n")),
					-- ..TALENTS_Enh_desc.ED_ZEA_Ability_1_1_rgb)),
					-- talent_name: Fury of the Faithful, charges: 2.
	--[+ French +]--
	create_template("talent_tree_zea_abil1_001_desc_fr",
		{"loc_talent_zealot_dash_has_more_charges_desc"}, {"fr"},
			loc_text("{talent_name:%s} a maintenant {charges:%s} charges."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_1_1_rgb_fr)),
	--[+ Russian +]-- Удвоенное рвение
	create_template("talent_tree_zea_abil1_001_desc_ru",
		{"loc_talent_zealot_dash_has_more_charges_desc"}, {"ru"},
			loc_text("Способность {talent_name:%s} теперь имеет {charges:%s} заряда."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_1_1_rgb_ru)),
	--[+ Traditional Chinese - 倍增狂熱 +]--
	--{talent_name:%s}已有{charges:%s}層充能。
	create_template("talent_tree_zea_abil1_001_desc_tw",
		{"loc_talent_zealot_dash_has_more_charges_desc"}, {"zh-tw"},
			loc_text("{talent_name:%s} 現在擁有 {charges:%s} 次使用次數。" ..TALENTS_Enh_desc_tw.ED_ZEA_Ability_1_1_rgb_tw)),

	--[+ ABILITY 1-2 - Invocation of Death +]--
	create_template("talent_tree_zea_abil1_002_desc_en",
		{"loc_talent_maniac_cooldown_on_melee_crits_buff_desc"}, {"en"},
			loc_text("{cooldown_regen:%s} "..COLORS_KWords.Ability_cd_rgb.." Regeneration for {duration:%s} seconds on Melee "..COLORS_KWords.Crit_hits_rgb..".\n"
				..Arrow_up_green.." Can be refreshed during active duration.\n"
				..Arrow_down_red.." Does not interact with "..COLORS_KWords.Combat_ability_rgb.." Regeneration from Curios which only reduces the Maximum cooldown of a "..COLORS_KWords.Combat_ability_rgb..".\n"
				..TALENTS_Enh_desc.ED_ZEA_Ability_1_2_rgb)),
				-- cooldown_regen: +200%, duration: 4, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_abil1_002_desc_fr",
		{"loc_talent_maniac_cooldown_on_melee_crits_buff_desc"}, {"fr"},
			loc_text("{cooldown_regen:%s} de régénération du "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." pendant {duration:%s} secondes sur les "..COLORS_KWords_fr.Crit_hits_rgb_fr.." de mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_1_2_rgb_fr)),
	--[+ Russian +]-- Призыв смерти
	create_template("talent_tree_zea_abil1_002_desc_ru",
		{"loc_talent_maniac_cooldown_on_melee_crits_buff_desc"}, {"ru"},
			loc_text("{cooldown_regen:%s} к скорости "..COLORS_KWords_ru.Ability_cd_rgb_ru.." на {duration:%s} секунды при "..COLORS_KWords_ru.Crit_hit_e_rgb_ru.." ближнего боя."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_1_2_rgb_ru)),
	--[+ Traditional Chinese - 死亡禱文 +]--
	--近戰暴擊可提升{cooldown_regen:%s}技能冷卻時間恢復，持續{duration:%s}秒。
	create_template("talent_tree_zea_abil1_002_desc_tw",
		{"loc_talent_maniac_cooldown_on_melee_crits_buff_desc"}, {"zh-tw"},
			loc_text("當近戰 "..COLORS_KWords_tw.Crit_hit_e_rgb_tw.." 時，加速 "..COLORS_KWords_tw.Ability_cd_rgb_tw.." 速度。\n"
			.."\n"
			.."- "..COLORS_KWords_tw.Ability_cd_rgb_tw.." 恢復速度 {cooldown_regen:%s} 。\n"
			.."- 持續 {duration:%s} 秒。"
			..TALENTS_Enh_desc_tw.ED_ZEA_Ability_1_2_rgb_tw)),

	--[+ ABILITY 2 - Chorus of Spiritual Fortitude +]--
	create_template("talent_tree_zea_abil2_000_desc_en",
		{"loc_talent_zealot_bolstering_prayer_variant_two_description"}, {"en"},
			loc_text("Wield a Holy relic that releases pulses of energy "..COLORS_Numbers.n_7_rgb.." times every {interval:%s} seconds.\n"
				.."Base Cooldown: {cooldown:%s} seconds.\n"
				..Arrow_up_green.." Each pulse grants Zealot and Allies in "..COLORS_KWords.Coherency_rgb.." immunity to "..COLORS_KWords.Stuns_rgb.." from both Melee and Ranged attacks and Invulnerability for "..COLORS_Numbers.n_1_5_rgb.." seconds.\n"
				..Arrow_up_green.." Each pulse Replenishes {toughness:%s} "..COLORS_KWords.Toughness_rgb.." to Allies in "..COLORS_KWords.Coherency_rgb..". If the Ally is at full "..COLORS_KWords.Toughness_rgb.." they instead gain {flat_toughness:%s} Max (yellow) "..COLORS_KWords.Toughness_rgb.." up to a total of {max_toughness:%s}.\n"
				..Arrow_up_green.." Immunity to "..COLORS_KWords.Stuns_rgb.." and Invulnerability can be refreshed during active duration.\n"
				..Arrow_right_.." Radius: "..COLORS_Numbers.n_10_rgb.." meters.\n"
				..Arrow_right_.." Bonus "..COLORS_KWords.Toughness_rgb.." acts as a 'second' "..COLORS_KWords.Toughness_rgb.." bar and can be replenished by Melee kills, respective Talents, and Weapon Blessings.\n"
				..Arrow_right_.." Yellow "..COLORS_KWords.Toughness_rgb.." bonus lasts "..COLORS_Numbers.n_10_rgb.." seconds and does not Stack with bonus "..COLORS_KWords.Toughness_rgb.." from the same Talent of another Zealot. But does Stack additively with Veteran's bonus "..COLORS_KWords.Toughness_rgb.." from \"Duty and Honour\".\n"
				..Arrow_right_.." \"Invulnerability\" means that player "..COLORS_KWords.Health_rgb.." can't fall below "..COLORS_Numbers.n_1_rgb..". Players can still lose any "..COLORS_KWords.Health_rgb.." above "..COLORS_Numbers.n_1_rgb..".\n"
				..TALENTS_Enh_desc.ED_ZEA_Ability_2_rgb)),
				-- interval: 0.8, toughness: 45%, flat_toughness: +20, max_toughness: +100, cooldown: 60, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_abil2_000_desc_fr",
		{"loc_talent_zealot_bolstering_prayer_variant_two_description"}, {"fr"},
			loc_text("Utilisez une relique sacrée qui libère des pulsations énérgetiques "..COLORS_Numbers.n_7_rgb.." fois toutes les {interval:%s} secondes.\nChaque pulsation accorde au Fanatique et aux alliés en syntonie une immunité aux "..COLORS_KWords_fr.Stuns_rgb_fr.." des attaques de mêlée et de distance et une invulnérabilité de "..COLORS_Numbers.n_1_5_rgb.." secondes.\nChaque pulsation régénère {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour les alliés en syntonie. Si l'allié est à toute ça "..COLORS_KWords_fr.Toughness_rgb_fr..", il gagne à la place {flat_toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." maximale (jaune) jusqu'à un total de {max_toughness:%s}.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_rgb_fr)),
	--[+ Russian +]-- Хор духовной стойкости
	create_template("talent_tree_zea_abil2_000_desc_ru",
		{"loc_talent_zealot_bolstering_prayer_variant_two_description"}, {"ru"},
			loc_text("Вы берёте в руки Святую реликвию, которая испускает до "..COLORS_Numbers.n_7_rgb.." импульсов энергии, раз в {interval:%s} секунды.\nКаждый импульс даёт изуверу и союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru.." иммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru.." от атак ближнего и дальнего боя, а также в течение "..COLORS_Numbers.n_1_5_rgb.." секунд вас нельзя убить.\nКаждый импульс восполняет {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru..". Если у союзника полный запас "..COLORS_KWords_ru.Toughness_rgb_ru..", он вместо этого получает {flat_toughness:%s} максимальной жёлтой "..COLORS_KWords_ru.Toughness_rgb_ru.." за импульс, вплоть до {max_toughness:%s}.\nВосстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_2_rgb_ru)),
	--[+ Traditional Chinese - 不屈靈魂合唱 +]--
	--運用一件每{interval:%s}秒釋放一次能量脈衝的聖物。引導時，協同中的盟友獲得眩暈免疫和無敵。\n\n每次脈衝為協同中的盟友恢復{toughness:%s}韌性。若盟友韌性值已滿，則會提高{flat_toughness:%s}最大韌性值，最多提高{max_toughness}。\n\n基礎冷卻時間：{cooldown:%s}秒。
	create_template("talent_tree_zea_abil2_000_desc_tw",
		{"loc_talent_zealot_bolstering_prayer_variant_two_description"}, {"zh-tw"},
			loc_text(
			"揮舞聖物幫助 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 隊友恢復 "..COLORS_KWords_tw.Toughness_rgb_tw.." ，\n"
			.."並暫時突破 "..COLORS_KWords_tw.Toughness_m_rgb_tw.." 上限。\n"
			.."\n"
			.."- 每 {interval:%s} 秒產生1次能量脈衝，共 "..COLORS_Numbers.n_7_rgb.." 次。\n"
			.."\n"
			.."- 下列效果需在"..COLORS_KWords_tw.Coherencing_rgb_tw.."才會生效：\n"
			.."- 脈衝免疫近戰與遠程攻擊的 "..COLORS_KWords_tw.Stagger_rgb_tw.."。\n"
			.."- 每波脈衝會恢復 "..COLORS_Numbers.n_45_rgb.." 點 "..COLORS_KWords_tw.Toughness_rgb_tw.."。\n"
			.."- "..COLORS_Numbers.n_1_5_rgb.." 秒內無法被擊殺。\n"
			.."- "..COLORS_KWords_tw.Toughness_rgb_tw.." 已滿時 {flat_toughness:%s} 點黃色 "..COLORS_KWords_tw.Toughness_m_rgb_tw.."。\n"
			.."- "..COLORS_KWords_tw.Toughness_m_rgb_tw.."".." 最多 {max_toughness:%s}，持續 "..COLORS_Numbers.n_10_rgb.." 秒。\n"
			.."- 冷卻時間：{cooldown:%s} 秒。"
			..TALENTS_Enh_desc_tw.ED_ZEA_Ability_2_rgb_tw)),

	--[+ ABILITY 2-1 - Holy Cause +]--
	create_template("talent_tree_zea_abil2_001_desc_en",
		{"loc_talent_zealot_zealot_channel_grants_defensive_buff_desc"}, {"en"},
			loc_text("After channeling {stacks:%s} pulses, grants {toughness:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." to you and Allies in "..COLORS_KWords.Coherency_rgb..". Lasts {duration:%s} seconds.\n"
				..TALENTS_Enh_desc.ED_ZEA_Ability_2_1_rgb)),
				-- stacks: 5, toughness: +30%, duration: 10, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_abil2_001_desc_fr",
		{"loc_talent_zealot_zealot_channel_grants_defensive_buff_desc"}, {"fr"},
			loc_text("Après avoir canalisé {stacks:%s} pulsations, accorde {toughness:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." à vous et aux alliés en syntonie. Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_1_rgb_fr)),
	--[+ Russian +]-- Святое дело
	create_template("talent_tree_zea_abil2_001_desc_ru",
		{"loc_talent_zealot_zealot_channel_grants_defensive_buff_desc"}, {"ru"},
			loc_text("После {stacks:%s} импульса, вы и союзники в "..COLORS_KWords_ru.Coherency_rgb_ru.." получаете {toughness:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru..". Длится {duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_2_1_rgb_ru)),
	--[+ Traditional Chinese - 神聖事業 +]--
	--為你和協同中的盟友貫注所有{stacks:%s}層脈衝，賦予{toughness:%s}韌性減傷，持續{duration:%s}秒。
	create_template("talent_tree_zea_abil2_001_desc_tw",
		{"loc_talent_zealot_zealot_channel_grants_defensive_buff_desc"}, {"zh-tw"},
			loc_text("第 {stacks:%s} 次之後的脈衝，\n"
			.."可以 {toughness:%s} 的"..COLORS_KWords_tw.Toughness_dmg_red_u_rgb_tw.."。\n"
			.."\n"
			.."- "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友才有 "..COLORS_KWords_tw.Toughness_dmg_red_u_rgb_tw.."。\n"
			.."- 上限 "..COLORS_Numbers.n_1_rgb.." 層，持續 {duration:%s} 秒。"
			..TALENTS_Enh_desc_tw.ED_ZEA_Ability_2_1_rgb_tw)),

	--[+ ABILITY 2-2 - Banishing Light +]--
	create_template("talent_tree_zea_abil2_002_desc_en",
		{"loc_talent_zealot_channel_staggers_desc"}, {"en"},
			loc_text("Each pulse from {talent_name:%s} also "..COLORS_KWords.Staggers_rgb.." and Suppresses Enemies. Range increases with every pulse.\n"
				..TALENTS_Enh_desc.ED_ZEA_Ability_2_2_rgb)),
				-- talent_name: Chorus of Spiritual Fortitude, &->and, colors
	--[+ French +]--
	create_template("talent_tree_zea_abil2_002_desc_fr",
		{"loc_talent_zealot_channel_staggers_desc"}, {"fr"},
			loc_text("À Chaque pulsation du {talent_name:%s} les ennemis "..COLORS_KWords_fr.Staggers_rgb_fr.." et sont sous Suppresion. La portée augmente à chaque impulsion."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_2_rgb_fr)),
	--[+ Russian +]-- Изгоняющий свет
	create_template("talent_tree_zea_abil2_002_desc_ru",
		{"loc_talent_zealot_channel_staggers_desc"}, {"ru"},
			loc_text("Каждый импульс способности {talent_name:%s} также "..COLORS_KWords_ru.Staggers_e_rgb_ru.." и подавляет врагов. Дальность распространения увеличивается с каждым импульсом."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_2_2_rgb_ru)),
	--[+ Traditional Chinese - 放逐之光 +]--
	-- {talent_name:%s}的每次脈衝都會壓制敵人並導致暈眩，影響範圍隨脈衝次數增加。
	create_template("talent_tree_zea_abil2_002_desc_tw",
		{"loc_talent_zealot_channel_staggers_desc"}, {"zh-tw"},
			loc_text("{talent_name:%s} 脈衝會 "..COLORS_KWords_tw.Staggers_e_rgb_tw.." 並壓制敵人。\n".."- 脈衝的影響範圍會逐漸擴大。" ..TALENTS_Enh_desc_tw.ED_ZEA_Ability_2_2_rgb_tw)),

	--[+ ABILITY 2-3 - Ecclesiarch's Call +]--
	create_template("talent_tree_zea_abil2_003_desc_en",
		{"loc_talent_zealot_zealot_channel_grants_offensive_buff_desc"}, {"en"},
			loc_text("After channeling {stacks:%s} pulses, grants {damage:%s} "..COLORS_KWords.Damage_rgb.." to you and Allies in "..COLORS_KWords.Coherency_rgb..". Lasts {duration:%s} seconds.\n"
				..TALENTS_Enh_desc.ED_ZEA_Ability_2_3_rgb)),
				-- stacks: 5, damage: +20%, duration: 10, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_abil2_003_desc_fr",
		{"loc_talent_zealot_zealot_channel_grants_offensive_buff_desc"}, {"fr"},
			loc_text("Après avoir canalisé {stacks:%s} pulsations, accorde {damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." à vous et aux alliés en syntonie. Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_3_rgb_fr)),
	--[+ Russian +]-- Призыв экклезиарха -- руоф Вызов экклезиарха
	create_template("talent_tree_zea_abil2_003_desc_ru",
		{"loc_talent_zealot_zealot_channel_grants_offensive_buff_desc"}, {"ru"},
			loc_text("После {stacks:%s} импульса, вы и союзники в "..COLORS_KWords_ru.Coherency_rgb_ru.." получаете {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..". Длится {duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_2_3_rgb_ru)),
	--[+ Traditional Chinese - 教宗之喚 +]--
	--為你和協同中的盟友貫注所有{stacks:%s}層脈衝，提高{damage:%s}傷害，持續{duration:%s}秒。
	create_template("talent_tree_zea_abil2_003_desc_tw",
		{"loc_talent_zealot_zealot_channel_grants_offensive_buff_desc"}, {"zh-tw"},
			loc_text("第 {stacks:%s} 次之後的脈衝， {damage:%s} "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"

			.."\n"
			.."- "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友才有 "..COLORS_KWords_tw.Damage_rgb_tw.." 加成。\n"
			.."- 上限 "..COLORS_Numbers.n_1_rgb.." 層，持續 {duration:%s} 秒。"
			..TALENTS_Enh_desc_tw.ED_ZEA_Ability_2_3_rgb_tw)),

	--[+ ABILITY 2-4 - Martyr's Purpose +]--
	create_template("talent_tree_zea_abil2_004_desc_en",
		{"loc_talent_zealot_damage_taken_restores_cd_description"}, {"en"},
			loc_text("{cooldown_restore:%s} of "..COLORS_KWords.Health_rgb.." "..COLORS_KWords.Damage_rgb.." taken is converted to "..COLORS_KWords.Ability_cd_rgb.." Reduction.\n"
				..TALENTS_Enh_desc.ED_ZEA_Ability_2_4_rgb)),
				-- stacks: 5, damage: +20%, duration: 10, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_abil2_004_desc_fr",
		{"loc_talent_zealot_damage_taken_restores_cd_description"}, {"fr"},
			loc_text("{cooldown_restore:%s} des "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Health_rgb_fr.." subits sont converti en réduction du "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_4_rgb_fr)),
	--[+ Russian +]-- Предназначение мученика -- руоф Цель мученика
	create_template("talent_tree_zea_abil2_004_desc_ru",
		{"loc_talent_zealot_damage_taken_restores_cd_description"}, {"ru"},
			loc_text("Каждый полученный {cooldown_restore:%s} "..COLORS_KWords_ru.Dmg_a_rgb_ru.." "..COLORS_KWords_ru.Health_rgb_ru.." сокращает время "..COLORS_KWords_ru.Combat_ability_cd_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_2_4_rgb_ru)),
	--[+ Traditional Chinese - 殉道者之願 +]--
	--受到的{cooldown_restore:%s}傷害轉化為技能冷卻縮減。
	create_template("talent_tree_zea_abil2_004_desc_tw",
		{"loc_talent_zealot_damage_taken_restores_cd_description"}, {"zh-tw"},
			loc_text(""..COLORS_KWords_tw.Health_rgb_tw.." 受到 "..COLORS_KWords_tw.Dmg_a_rgb_tw.." 時，縮短冷卻時間。\n"
			.."\n"
			.."- 受到 "..COLORS_Numbers.n_1_rgb.." 點 "..COLORS_KWords_tw.Health_rgb_tw.." "..COLORS_KWords_tw.Dmg_a_rgb_tw.."時，\n"
			.."--將縮短 "..COLORS_KWords_tw.Combat_ability_cd_rgb_tw.." 的冷卻時間。\n"
			.."--秒數 ＝ CD ×（受到生命傷害 × 0.01）"
			..TALENTS_Enh_desc_tw.ED_ZEA_Ability_2_4_rgb_tw)),

	--[+ ABILITY 3 - Shroudfield +]--
	create_template("talent_tree_zea_abil3_000_desc_en",
		{"loc_ability_zealot_stealth_description"}, {"en"},
			loc_text("You enter "..COLORS_KWords.Stealth_rgb.." for {duration:%s} seconds and gain {movement_speed:%s} Movement Speed.\n"
				.."Your next Melee Attack gain:\n"
				.."{backstab_damage:%s} Backstab "..COLORS_KWords.Damage_rgb..",\n"
				.."{finesse_damage:%s} "..COLORS_KWords.Finesse_dmg_rgb.." and\n"
				.."{crit_chance:%s} "..COLORS_KWords.Crit_chance_rgb..".\n"
				.."Base Cooldown: {cooldown:%s} seconds.\n"
				..TALENTS_Enh_desc.ED_ZEA_Ability_3_rgb)),
				-- duration: 3, movement_speed: +20%, backstab_damage: +100%, finesse_damage: +100%, crit_chance: +100%, cooldown: 30, s->seconds, &->and, colors
	--[+ French +]--
	create_template("talent_tree_zea_abil3_000_desc_fr",
		{"loc_ability_zealot_stealth_description"}, {"fr"},
			loc_text("Vous passez en "..COLORS_KWords_fr.Stealth_rgb_fr.." pendant {duration:%s} secondes et gagnez {movement_speed:%s} de Vitesse de Déplacement.\nVotre prochaine attaque de Mélée gagne:\n{backstab_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." dans le dos,\n{finesse_damage:%s} de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr.." et\n{crit_chance:%s} "..COLORS_KWords_fr.Crit_chance_rgb_fr..".\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_rgb_fr)),
	--[+ Russian +]-- Покров 
	create_template("talent_tree_zea_abil3_000_desc_ru",
		{"loc_ability_zealot_stealth_description"}, {"ru"},
			loc_text("Вы входите в режим "..COLORS_KWords_ru.Stealth_rgb_ru.." на {duration:%s} секунды и получаете {movement_speed:%s} к скорости движения.\nВаша следующая атака ближнего боя получает:\n{backstab_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." при ударе в спину,\n{finesse_damage:%s} к "..COLORS_KWords_ru.Finesse_dmg_rgb_ru.." и\n{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru..".\n"
					..Arrow_right_.." Восстанавливается {cooldown:%s} секунд."
					..TALENTS_Enh_desc_ru.ED_ZEA_Ability_3_rgb_ru)),
	--[+ Traditional Chinese - 隱秘領域 +]--
	--進入潛行狀態{duration:%s}秒。潛行期間獲得{movement_speed:%s}移動速度，{backstab_damage:%s}背刺傷害，{finesse_damage:%s}靈巧傷害和{crit_chance:%s}暴擊幾率。\n\n基礎冷卻時間：{cooldown:%s}秒。
	create_template("talent_tree_zea_abil3_000_desc_tw",
		{"loc_ability_zealot_stealth_description"}, {"zh-tw"},
			loc_text(
				"進入"..COLORS_KWords2_tw.Stealth_rgb_tw.."狀態，獲得以下增益：\n"
				.."- {movement_speed:%s} 的移動速度加成。\n"
				.."- "..COLORS_KWords_tw.Dmg_bs_rgb_tw.." {backstab_damage:%s} 。\n"
				.."- "..COLORS_KWords_tw.Finesse_dmg_rgb_tw.." {finesse_damage:%s} 。\n"
				.."- "..COLORS_KWords_tw.Crt_chance_rgb_tw.." {crit_chance:%s} 。\n"
				.."- 冷卻時間：{cooldown:%s} 秒。"
				.."\n"
				.."- 持續{duration:%s} 秒。"
				..TALENTS_Enh_desc_tw.ED_ZEA_Ability_3_rgb_tw)),

	--[+ ABILITY 3-1 - Master-Crafted Shroudfield +]--
	create_template("talent_tree_zea_abil3_001_desc_en",
		{"loc_talent_zealot_increased_stealth_duration_description"}, {"en"},
			loc_text(COLORS_KWords.Stealth_rgb.." Duration is increased from "..COLORS_Numbers.n_3_rgb.." to {duration_2:%s} seconds.")),
			-- duration_2: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_abil3_001_desc_fr",
		{"loc_talent_zealot_increased_stealth_duration_description"}, {"fr"},
			loc_text(" La durée de la "..COLORS_KWords_fr.Stealth_rgb_fr.." est augmentée de "..COLORS_Numbers.n_3_rgb.." à {duration_2:%s} secondes.")),
	--[+ Russian +]-- Мастерский покров -- Искусно изготовленный покров
	create_template("talent_tree_zea_abil3_001_desc_ru",
		{"loc_talent_zealot_increased_stealth_duration_description"}, {"ru"},
			loc_text("Длительность действия "..COLORS_KWords_ru.Stealth_rgb_ru.." увеличивается с "..COLORS_Numbers.n_3_rgb.." до {duration_2:%s} секунд.")),
	--[+ Ability 3-1 - Master-Crafted Shroudfield +]--
	-- 潛行持續時間增至{duration_2:%s}秒。
	create_template("talent_tree_zea_abil3_001_desc_tw",
		{"loc_talent_zealot_increased_stealth_duration_description"}, {"zh-tw"},
			loc_text(""..COLORS_KWords2_tw.Stealth_rgb_tw.."的持續時間從 "..COLORS_Numbers.n_3_rgb.." 秒延長至 {duration_2:%s} 秒。")),

	--[+ ABILITY 3-2 - Perfectionist +]--
	create_template("talent_tree_zea_abil3_002_desc_en",
		{"loc_talent_zealot_stealth_increased_damage_description"}, {"en"},
			loc_text("{talent_name:%s} grants an additional:\n"
				.."{damage_2:%s} Backstab "..COLORS_KWords.Damage_rgb.." and\n"
				.."{damage:%s} "..COLORS_KWords.Finesse_dmg_rgb..", but increases "..COLORS_KWords.Ability_cd_rgb.." by {cooldown:%s}.\n"
				..TALENTS_Enh_desc.ED_ZEA_Ability_3_2_rgb)),
				-- talent_name: Shroudfield, damage: +50%, damage_2: +50%, cooldown: 25%, &->and, colors
	--[+ French +]--
	create_template("talent_tree_zea_abil3_002_desc_fr",
		{"loc_talent_zealot_stealth_increased_damage_description"}, {"fr"},
			loc_text("{talent_name:%s} octroie:\n{damage_2:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." dans le dos et\n{damage:%s} de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr..", mais augmente le "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." de {cooldown:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_2_rgb_fr)),
	--[+ Russian +]-- Перфекционист 
	create_template("talent_tree_zea_abil3_002_desc_ru",
		{"loc_talent_zealot_stealth_increased_damage_description"}, {"ru"},
			loc_text("{talent_name:%s} даёт дополнительно:\n{damage_2:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." при ударе в спину и\n{damage:%s} к "..COLORS_KWords_ru.Finesse_dmg_rgb_ru..", но\nна {cooldown:%s} увеличивается время "..COLORS_KWords_ru.Ability_cd_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_3_2_rgb_ru)),
	--[+ Traditional Chinese - 完美主義者 +]--
	-- {talent_name:%s}賦予額外{damage:%s}靈巧傷害和{damage_2:%s}背刺傷害，但技能冷卻時間增加{cooldown:%s}。
	create_template("talent_tree_zea_abil3_002_desc_tw",
		{"loc_talent_zealot_stealth_increased_damage_description"}, {"zh-tw"},
			loc_text("{talent_name:%s} 額外提供：\n"
			.."\n"
			.."- "..COLORS_KWords_tw.Dmg_bs_rgb_tw.." {damage_2:%s}。\n"
			.."- "..COLORS_KWords_tw.Finesse_dmg_rgb_tw.." {damage:%s} 。\n"
			.."- 技能冷卻時間增加 {cooldown:%s}。\n"
			..TALENTS_Enh_desc_tw.ED_ZEA_Ability_3_2_rgb_tw)),

	--[+ ABILITY 3-3 - Invigorating Revelation +]--
	create_template("talent_tree_zea_abil3_003_desc_en",
		{"loc_talent_zealot_leaving_stealth_restores_toughness_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes over {time:%s} seconds on leaving "..COLORS_KWords.Stealth_rgb..". Also gain {damage:%s} "..COLORS_KWords.Damage_rgb.." Reduction for {time:%s} seconds.\n"
				..TALENTS_Enh_desc.ED_ZEA_Ability_3_3_rgb)),
				-- toughness: 40%, time: 5, damage: +20%, time: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_abil3_003_desc_fr",
		{"loc_talent_zealot_leaving_stealth_restores_toughness_desc"}, {"fr"},
			loc_text("Vous récuperez {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." en {time:%s} secondes à la sortie de la "..COLORS_KWords_fr.Stealth_rgb_fr..". Vous gagnez aussi une réduction des "..COLORS_KWords_fr.Damage_rgb_fr.." de {damage:%s} pendant {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_3_rgb_fr)),
	--[+ Russian +]-- Оживляющее откровение -- руоф Подбадривающее откровение
	create_template("talent_tree_zea_abil3_003_desc_ru",
		{"loc_talent_zealot_leaving_stealth_restores_toughness_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за {time:%s} секунд после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru..". Также вы получите {damage:%s} к снижению "..COLORS_KWords_ru.Dmg_a_rgb_ru.." на {time:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_3_3_rgb_ru)),
	--[+ Traditional Chinese - 振奮啟示 +]--
	--脫離潛行後，{talent_name:%s}提供{tdr%s}韌性減傷，持續{duration%s}秒。
	create_template("talent_tree_zea_abil3_003_desc_tw",
			{"loc_talent_zealot_leaving_stealth_restores_toughness_desc"}, {"zh-tw"},
				loc_text("脫離 "..COLORS_KWords2_tw.Stealth_rgb_tw.." 後觸發以下效果：\n"
				.."- 在 {time:%s} 秒內恢復 "..COLORS_KWords_tw.Toughness_m_rgb_tw.." 的 {toughness:%s} 。\n"
				.."- {damage:%s} "..COLORS_KWords_tw.Toughness_dmg_red_rgb_tw.."，持續 {time:%s} 秒。"
				..TALENTS_Enh_desc_tw.ED_ZEA_Ability_3_3_rgb_tw)),

	--[+ ABILITY 3-4 - Pious Cut-Throat +]--
	create_template("talent_tree_zea_abil3_004_desc_en",
		{"loc_talent_zealot_backstab_kills_restore_cd_description"}, {"en"},
			loc_text(COLORS_Numbers.n_minus_rgb.."{ability_cooldown:%s} "..COLORS_KWords.Ability_cd_rgb.." on Backstab kills.\n"
				..TALENTS_Enh_desc.ED_ZEA_Ability_3_4_rgb)),
				-- ability_cooldown: 20%, colors
	--[+ French +]--
	create_template("talent_tree_zea_abil3_004_desc_fr",
		{"loc_talent_zealot_backstab_kills_restore_cd_description"}, {"fr"},
			loc_text(COLORS_Numbers.n_minus_rgb.."{ability_cooldown:%s} de "..COLORS_KWords_fr.Ability_cd_rgb_fr.." lors d'un élimination dans le dos."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_4_rgb_fr)),
	--[+ Russian +]-- Благочестивый убийца -- руоф Добродетельный головорез
	create_template("talent_tree_zea_abil3_004_desc_ru",
		{"loc_talent_zealot_backstab_kills_restore_cd_description"}, {"ru"},
			loc_text(COLORS_Numbers.n_minus_rgb.."{ability_cooldown:%s} от времени "..COLORS_KWords_ru.Ability_cd_rgb_ru.." при убийстве врага в спину."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_3_4_rgb_ru)),
	--[+ Traditional Chinese - 虔誠刺客 +]--
	-- 背刺擊殺恢復{ability_cooldown:%s}技能冷卻。
	create_template("talent_tree_zea_abil3_004_desc_tw",
		{"loc_talent_zealot_backstab_kills_restore_cd_description"}, {"zh-tw"},
			loc_text(COLORS_KWords_tw.Dmg_bs_K_rgb_tw.." 可減少 "..COLORS_KWords_tw.Combat_ability_cd_rgb_tw.." 冷卻。\n"
			.."- 恢復最大冷卻時間 {ability_cooldown:%s} 。"
			..TALENTS_Enh_desc_tw.ED_ZEA_Ability_3_4_rgb_tw)),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ KEYSTONE 1 - Blazing Piety +]--
	create_template("talent_tree_zea_keys1_000_desc_en",
		{"loc_talent_zealot_fanatic_rage_desc"}, {"en"},
			loc_text("When {max_stacks:%s} Enemies have died within {radius:%s} meters of you, you enter "..COLORS_KWords.Fury_rgb.." and get {crit_chance:%s} "..COLORS_KWords.Crit_hit_chance_rgb.." for {duration:%s} seconds. The active "..COLORS_KWords.Fury_rgb.." duration can be refreshed by killing enemies.\n"
				..TALENTS_Enh_desc.ED_ZEA_Keystone_1_rgb)),
				-- crit_chance: +15%, duration: 8, max_stacks: 25, radius: 25, rewrite, m->meters, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_keys1_000_desc_fr",
		{"loc_talent_zealot_fanatic_rage_desc"}, {"fr"},
			loc_text("Quand {max_stacks:%s} ennemis meurent dans un rayon de {radius:%s} mètres autour de vous, vous entrez en "..COLORS_KWords_fr.Fury_rgb_fr.." et obtenez {crit_chance:%s} "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.." pendant {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_rgb_fr)),
	--[+ Russian +]-- Пылающая благочестивость -- руоф Пламенное благочестие
	create_template("talent_tree_zea_keys1_000_desc_ru",
		{"loc_talent_zealot_fanatic_rage_desc"}, {"ru"},
			loc_text("Когда {max_stacks:%s} врагов погибает в радиусе {radius:%s} метров от вас, вы входите в режим "..COLORS_KWords_ru.Fury_i_rgb_ru.." и получаете {crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на {duration:%s} секунд. Длительность действия "..COLORS_KWords_ru.Fury_i_rgb_ru.." можно обновить, убивая врагов."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_1_rgb_ru)),
	--[+ Traditional Chinese - 熾熱虔誠 +]--
	--狂怒時獲得{crit_chance:%s}暴擊幾率，持續{duration:%s}秒。{radius:%s}公尺範圍內有{max_stacks:%s}個敵人死亡時觸發狂怒。
	create_template("talent_tree_zea_keys1_000_desc_tw",
		{"loc_talent_zealot_fanatic_rage_desc"}, {"zh-tw"},
			loc_text("{radius:%s} "..COLORS_Numbers.n_meter_rgb.." 內擊殺 {max_stacks:%s} 名敵人，\n"
			.."獲得以下效果：\n"
			.."- 進入"..COLORS_KWords2_tw.Fury_i_rgb_tw.."狀態。\n"
			.."- {crit_chance:%s} "..COLORS_KWords_tw.Crit_chance_rgb_tw.."，持續 {duration:%s} 秒。\n"
			.."- 擊殺敵人可延長 "..COLORS_KWords2_tw.Fury_i_rgb_tw.." 的持續時間。"
			..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_1_rgb_tw)),

	--[+ KEYSTONE 1-1 - Stalwart +]--
	create_template("talent_tree_zea_keys1_001_desc_en",
		{"loc_talent_zealot_fanatic_rage_toughness_reduction_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." is restored by triggering "..COLORS_KWords.Fury_rgb..". In addition, while "..COLORS_KWords.Fury_rgb.." is Active, you have {toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb..".\n"
				..TALENTS_Enh_desc.ED_ZEA_Keystone_1_1_rgb)),
				-- toughness: 50%, toughness_damage_reduction: +25%, colors
	--[+ French +]--
	create_template("talent_tree_zea_keys1_001_desc_fr",
		{"loc_talent_zealot_fanatic_rage_toughness_reduction_desc"}, {"fr"},
			loc_text("{toughness:%s} "..COLORS_KWords_fr.Toughness_rgb_fr.." est régénérée en déclenchant la "..COLORS_KWords_fr.Fury_rgb_fr..". De plus, pendant que la "..COLORS_KWords_fr.Fury_rgb_fr.." est active, vous avez gagnez {toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_1_rgb_fr)),
	--[+ Russian +]-- Непоколебимый -- руоф Верный последователь
	create_template("talent_tree_zea_keys1_001_desc_ru",
		{"loc_talent_zealot_fanatic_rage_toughness_reduction_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при входе в "..COLORS_KWords_ru.Fury_rgb_ru.." и пока она активна, вы получаете {toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_1_1_rgb_ru)),
	--[+ Traditional Chinese - 死忠 +]--
	--觸發狂怒技能恢復{toughness:%s}韌性。狂怒技能啟動狀態下，每一個死亡的敵人會為你回復{toughness_small:%s}韌性。
	create_template("talent_tree_zea_keys1_001_desc_tw",
		{"loc_talent_zealot_fanatic_rage_toughness_reduction_desc"}, {"zh-tw"},
			loc_text("進入 "..COLORS_KWords2_tw.Fury_rgb_tw.." 時獲得以下效果：\n"
			.."- 立即恢復 {toughness:%s} "..COLORS_KWords_tw.Toughness_rgb_tw.." 。\n"	
			.."- 持續時間內 {toughness_damage_reduction:%s} "..COLORS_KWords_tw.Toughness_dmg_red_u_rgb_tw.." 。\n" 
			.."- 擊殺敵人額外恢復 "..COLORS_KWords_tw.Toughness_rgb_tw.." "..COLORS_Numbers.pc_2_rgb.." 。"
			..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_1_1_rgb_tw)),

	--[+ KEYSTONE 1-2 - Fury Rising +]--
	create_template("talent_tree_zea_keys1_002_desc_en",
		{"loc_talent_zealot_fanatic_rage_crits_desc"}, {"en"},
			loc_text("You gain one Stack of "..COLORS_KWords.Fury_rgb.." per Melee or Ranged "..COLORS_KWords.Crit_hit_rgb..".\n"
				..TALENTS_Enh_desc.ED_ZEA_Keystone_1_2_rgb)),
				-- colors
	--[+ French +]--
	create_template("talent_tree_zea_keys1_002_desc_fr",
		{"loc_talent_zealot_fanatic_rage_crits_desc"}, {"fr"},
			loc_text("Vous gagnez un cumul de "..COLORS_KWords_fr.Fury_rgb_fr.." par "..COLORS_KWords_fr.Crit_hit_rgb_fr.." de mélée et de distance."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_2_rgb_fr)),
	--[+ Russian +]-- Возрастание ярости -- руоф Подъем ярости
	create_template("talent_tree_zea_keys1_002_desc_ru",
		{"loc_talent_zealot_fanatic_rage_crits_desc"}, {"ru"},
			loc_text("Вы получаете один заряд "..COLORS_KWords_ru.Fury_i_rgb_ru.." за каждый "..COLORS_KWords_ru.Crit_hit_chance_rgb_ru.." ближнего или дальнего боя."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_1_2_rgb_ru)),
	--[+ Traditional Chinese - 怒火升騰 +]--
	--積累暴擊次數也可觸發狂怒。
	create_template("talent_tree_zea_keys1_002_desc_tw",
		{"loc_talent_zealot_fanatic_rage_crits_desc"}, {"zh-tw"},
			loc_text("造成 "..COLORS_KWords_tw.Crit_hit_chance_rgb_tw.." 時，獲得一層 "..COLORS_KWords2_tw.Fury_i_rgb_tw.." 。" ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_1_2_rgb_tw)),

	--[+ KEYSTONE 1-3 - Infectious Zeal +]--
	create_template("talent_tree_zea_keys1_003_desc_en",
		{"loc_talent_zealot_shared_fanatic_rage_desc"}, {"en"},
			loc_text(COLORS_Numbers.pc_10_rgb.." "..COLORS_KWords.Crit_chance_rgb.." is spread to Allies in "..COLORS_KWords.Coherency_rgb.." when you reach "..COLORS_Numbers.n_25_rgb.." Stacks of "..COLORS_KWords.Fury_rgb..". \n"
				..TALENTS_Enh_desc.ED_ZEA_Keystone_1_3_rgb)),
				-- crit_chance: +66%, talent_name: Blazing Piety, colors {crit_chance:%s}
	--[+ French +]--
	create_template("talent_tree_zea_keys1_003_desc_fr",
		{"loc_talent_zealot_shared_fanatic_rage_desc"}, {"fr"},
			loc_text(""..COLORS_Numbers.pc_10_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." est conféré aux alliés en syntonie lorsque vous atteignez "..COLORS_Numbers.n_25_rgb.." cumuls de "..COLORS_KWords_fr.Fury_rgb_fr..". "..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_3_rgb_fr)),
	--[+ Russian +]-- Заразительное рвение 
	create_template("talent_tree_zea_keys1_003_desc_ru",
		{"loc_talent_zealot_shared_fanatic_rage_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_10_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." получают союзники в "..COLORS_KWords_ru.Coherency_rgb_ru.." в момент получения вами "..COLORS_Numbers.n_25_rgb.." зарядов "..COLORS_KWords_ru.Fury_i_rgb_ru..". "..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_1_3_rgb_ru)),
	--[+ Traditional Chinese - 迅疾狂熱 +]--
	-- {talent_name:%s}賦予協同中的盟友{crit_chance:%s}暴擊幾率。
	create_template("talent_tree_zea_keys1_003_desc_tw",
		{"loc_talent_zealot_shared_fanatic_rage_desc"}, {"zh-tw"},
			loc_text(""..COLORS_Numbers.n_25_rgb.." 層 "..COLORS_KWords2_tw.Fury_i_rgb_tw.." 時， "..COLORS_KWords_tw.Coherencing_rgb_tw.." 隊友獲得：\n"
			.."- "..COLORS_KWords_tw.Crit_chance_rgb_tw.." "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_10_rgb.." 。"
			..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_1_3_rgb_tw)),

	--[+ KEYSTONE 1-4 - Righteous Warrior +]--
	create_template("talent_tree_zea_keys1_004_desc_en",
		{"loc_talent_zealot_fanatic_rage_improved_desc"}, {"en"},
			loc_text("{crit_chance:%s} "..COLORS_KWords.Crit_hit_chance_rgb.." from {talent_name:%s}.\n"
				..TALENTS_Enh_desc.ED_ZEA_Keystone_1_4_rgb)),
				-- crit_chance: +10%, talent_name: Blazing Piety, colors
	--[+ French +]--
	create_template("talent_tree_zea_keys1_004_desc_fr",
		{"loc_talent_zealot_fanatic_rage_improved_desc"}, {"fr"},
			loc_text("{crit_chance:%s} de "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.." grâce à {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_4_rgb_fr)),
	--[+ Russian +]-- Праведный воин 
	create_template("talent_tree_zea_keys1_004_desc_ru",
		{"loc_talent_zealot_fanatic_rage_improved_desc"}, {"ru"},
			loc_text("{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." дополнительно от таланта {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_1_4_rgb_ru)),
	--[+ Traditional Chinese - 正義勇士 +]--
	-- {talent_name:%s}賦予協同中的盟友{crit_chance:%s}暴擊幾率。
	create_template("talent_tree_zea_keys1_004_desc_tw",
		{"loc_talent_zealot_fanatic_rage_improved_desc"}, {"zh-tw"},
			loc_text("{talent_name:%s} 額外賦予 {crit_chance:%s} "..COLORS_KWords_tw.Crit_chance_rgb_tw.."。" ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_1_4_rgb_tw)),

	--[+ KEYSTONE 2 - Martyrdom +]--
	create_template("talent_tree_zea_keys2_000_desc_en",
		{"loc_talent_zealot_martyrdom_desc"}, {"en"},
			loc_text("{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." for each missing "..COLORS_KWords.Wound_rgb..", up to a Maximum {max_wounds:%s} missing "..COLORS_KWords.Wounds_rgb..".\n"
				..TALENTS_Enh_desc.ED_ZEA_Keystone_2_rgb)),
				-- damage: +8%, max_wounds: 7, colors
	--[+ French +]--
	create_template("talent_tree_zea_keys2_000_desc_fr",
		{"loc_talent_zealot_martyrdom_desc"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mêlée pour chaque "..COLORS_KWords_fr.Wound_rgb_fr.." manquante, jusqu'à un maximum de {max_wounds:%s} "..COLORS_KWords_fr.Wounds_rgb_fr.." manquantes."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_rgb_fr)),
	--[+ Russian +]-- Мученичество 
	create_template("talent_tree_zea_keys2_000_desc_ru",
		{"loc_talent_zealot_martyrdom_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя за каждую потерянную "..COLORS_KWords_ru.Wound_u_rgb_ru..". Складывается вплоть до {max_wounds:%s} раз."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_2_rgb_ru)),
	--[+ Traditional Chinese - 殉道 +]--
	-- 每個缺損的傷口使你獲得{damage:%s}近戰傷害，最多計算{max_wounds:%s}個缺損傷口。
	create_template("talent_tree_zea_keys2_000_desc_tw",
		{"loc_talent_zealot_martyrdom_desc"}, {"zh-tw"},
			loc_text(
				"每失去一格 "..COLORS_KWords_tw.Wound_u_rgb_tw.." 獲得：\n"
				.."-  {damage:%s}  "..COLORS_KWords_tw.Damage_melee_rgb_tw.." ，上限 {max_wounds:%s} 層。"
				..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_2_rgb_tw)),

	--[+ KEYSTONE 2-1 - I Shall Not Fall +]--
	create_template("talent_tree_zea_keys2_001_desc_en",
		{"loc_talent_zealot_martyrdom_grants_toughness_desc"}, {"en"},
			loc_text("{toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." is granted by {talent_name:%s} for each missing "..COLORS_KWords.Wound_rgb..".\n"
				..TALENTS_Enh_desc.ED_ZEA_Keystone_2_1_rgb)),
				-- talent_name: Martyrdom, toughness_damage_reduction: +6.5%, colors
	--[+ French +]--
	create_template("talent_tree_zea_keys2_001_desc_fr",
		{"loc_talent_zealot_martyrdom_grants_toughness_desc"}, {"fr"},
			loc_text("{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." par "..COLORS_KWords_fr.Wound_rgb_fr.." manquante."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_1_rgb_fr)),
	--[+ Russian +]-- Я не паду -- руоф Я не отступлю
	create_template("talent_tree_zea_keys2_001_desc_ru",
		{"loc_talent_zealot_martyrdom_grants_toughness_desc"}, {"ru"},
			loc_text("{toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." даётся талантом {talent_name:%s} за каждую потерянную "..COLORS_KWords_ru.Wound_u_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_2_1_rgb_ru)),
	--[+ Traditional Chinese - 不滅意志 +]--
	--根據傷口治癒數量，{talent_name:%s}將提供{toughness_damage_reduction:%s}韌性減傷效果。
	create_template("talent_tree_zea_keys2_001_desc_tw",
		{"loc_talent_zealot_martyrdom_grants_toughness_desc"}, {"zh-tw"},
			loc_text("每失去一格 "..COLORS_KWords_tw.Wound_u_rgb_tw.." {talent_name:%s} 提供：\n"
				.."- {toughness_damage_reduction:%s} "..COLORS_KWords_tw.Toughness_dmg_red_u_rgb_tw.."。"
				..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_2_1_rgb_tw)),

	--[+ KEYSTONE 2-2 - Maniac +]--
	create_template("talent_tree_zea_keys2_002_desc_en",
		{"loc_talent_zealot_attack_speed_per_martyrdom_desc"}, {"en"},
			loc_text("{attack_speed:%s} Attack Speed is granted by {talent_name:%s} for each missing "..COLORS_KWords.Wound_rgb..".\n"
				..TALENTS_Enh_desc.ED_ZEA_Keystone_2_2_rgb)),
				-- talent_name: Martyrdom, attack_speed: +4%, colors
	--[+ French +]--
	create_template("talent_tree_zea_keys2_002_desc_fr",
		{"loc_talent_zealot_attack_speed_per_martyrdom_desc"}, {"fr"},
			loc_text("{attack_speed:%s} Vitesse d'attaque de mêlée par "..COLORS_KWords_fr.Wound_rgb_fr.." manquante."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_2_rgb_fr)),
	--[+ Russian +]-- Маньяк 
	create_template("talent_tree_zea_keys2_002_desc_ru",
		{"loc_talent_zealot_attack_speed_per_martyrdom_desc"}, {"ru"},
			loc_text("{attack_speed:%s} к скорости атаки даётся талантом {talent_name:%s} за каждую потерянную "..COLORS_KWords_ru.Wound_u_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_2_2_rgb_ru)),
	--[+ Traditional Chinese - 狂燥之心 +]--
	--{talent_name:%s}還會使每個缺損傷口為你獲得{attack_speed:%s}攻擊速度。
	create_template("talent_tree_zea_keys2_002_desc_tw",
		{"loc_talent_zealot_attack_speed_per_martyrdom_desc"}, {"zh-tw"},
			loc_text("每失去一格 "..COLORS_KWords_tw.Wound_u_rgb_tw.." {talent_name:%s} 提供：\n"
			.."- {attack_speed:%s} 攻擊速度。" ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_2_2_rgb_tw)),

	--[+ KEYSTONE 3 - Inexorable Judgement +]--
	create_template("talent_tree_zea_keys3_000_desc_en",
		{"loc_talent_zealot_quickness_desc"}, {"en"},
			loc_text("Moving grants you "..COLORS_KWords.Momentum_rgb..". Stacks {max_stacks:%s} times.\n"
				.."When you Hit an Enemy, spend all "..COLORS_KWords.Momentum_rgb.." and gain per Stack for {duration:%s} seconds:\n"
				.."{damage_modifier:%s} "..COLORS_KWords.Damage_rgb..",\n"
				.."{melee_attack_speed:%s} Melee Attack Speed,\n"
				.."{ranged_attack_speed:%s} Ranged Attack Speed.\n"
				..TALENTS_Enh_desc.ED_ZEA_Keystone_3_rgb)),
				-- max_stacks: 15, melee_attack_speed: +1%, ranged_attack_speed: +1%, damage_modifier: +1%, duration: 6, rewrite, colors, note
	--[+ French +]--
	create_template("talent_tree_zea_keys3_000_desc_fr",
		{"loc_talent_zealot_quickness_desc"}, {"fr"},
			loc_text("Vos déplacement vous octroient "..COLORS_KWords_fr.Momentum_rgb_fr..". Se cumule {max_stacks:%s} fois.\nLorsque vous touchez un ennemi, dépensez tout les cumuls de "..COLORS_KWords_fr.Momentum_rgb_fr.." et gagnez par cumul pendant {duration:%s} secondes:\n{damage_modifier:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..",\n{melee_attack_speed:%s} Vitesse d'attaque de mêlée,\n{ranged_attack_speed:%s} Vitesse d'attaque à distance."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_rgb_fr)),
	--[+ Russian +]-- Неумолимый приговор -- руоф Безжалостностный приговор
	create_template("talent_tree_zea_keys3_000_desc_ru",
		{"loc_talent_zealot_quickness_desc"}, {"ru"},
			loc_text("Движение даёт вам заряды "..COLORS_KWords_ru.Momentum_rgb_ru..". Суммируется {max_stacks:%s} раз.\nПри попадании по врагу, вы тратите все заряды "..COLORS_KWords_ru.Momentum_rgb_ru.." и за каждый заряд получаете на {duration:%s} секунд:\n{damage_modifier:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n{melee_attack_speed:%s} к скорости атаки в ближнем бою,\n{ranged_attack_speed:%s} к скорости атаки в дальнем бою."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_3_rgb_ru)),
	--[+ Traditional Chinese - 命定審判 +]--
	--移動積累勢能（可疊加{max_stacks:%s}層）。\n\n命中後，消耗所有勢能，每層賦予{melee_attack_speed:%s}近戰攻擊速度，{ranged_attack_speed:%s}遠端攻擊速度和{damage_modifier:%s}傷害，持續{duration:%s}秒。
	create_template("talent_tree_zea_keys3_000_desc_tw",
		{"loc_talent_zealot_quickness_desc"}, {"zh-tw"},
			loc_text("移動時會獲得 "..COLORS_KWords2_tw.Momentum_rgb_tw.."。\n"
			.."- 上限 {max_stacks:%s} 層。\n"
			.."- 命中敵人將消耗全部 "..COLORS_KWords2_tw.Momentum_rgb_tw.." 每層提供：\n"
			.."-- {damage_modifier:%s} "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"
			.."-- {melee_attack_speed:%s} 近戰攻擊速度。\n"
			.."-- {ranged_attack_speed:%s} 遠程攻擊速度。\n"
			.."-- 持續時間：{duration:%s} 秒。"
			..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_3_rgb_tw)),

	--[+ KEYSTONE 3-1 - Retributor's Stance +]--
	create_template("talent_tree_zea_keys3_001_desc_en",
		{"loc_talent_zealot_quickness_toughness_per_stack_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." is replenished for each spent Stack of "..COLORS_KWords.Momentum_rgb..".\n"
				..TALENTS_Enh_desc.ED_ZEA_Keystone_3_1_rgb)),
				-- toughness: 2%, colors
	--[+ French +]--
	create_template("talent_tree_zea_keys3_001_desc_fr",
		{"loc_talent_zealot_quickness_toughness_per_stack_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." est régénérée pour chaque cumul de "..COLORS_KWords_fr.Momentum_rgb_fr.." dépensé."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_1_rgb_fr)),
	--[+ Russian +]-- Стойка карателя 
	create_template("talent_tree_zea_keys3_001_desc_ru",
		{"loc_talent_zealot_quickness_toughness_per_stack_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстановливается за каждый потраченный заряд "..COLORS_KWords_ru.Momentum_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_3_1_rgb_ru)),
	--[+ Traditional Chinese - 懲戒者姿態 +]--
	--每消耗一層勢能恢復{toughness:%s}韌性。
	create_template("talent_tree_zea_keys3_001_desc_tw",
	{"loc_talent_zealot_quickness_toughness_per_stack_desc"}, {"zh-tw"},
		loc_text("每消耗一層 "..COLORS_KWords2_tw.Momentum_rgb_tw.." 恢復 {toughness:%s} "..COLORS_KWords_tw.Toughness_m_rgb_tw.."。"..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_3_1_rgb_tw)),

	--[+ KEYSTONE 3-2 - Inebriate's Poise +]--
	create_template("talent_tree_zea_keys3_002_desc_en",
		{"loc_talent_zealot_quickness_dodge_stacks_desc"}, {"en"},
			loc_text("Gain {stacks:%s} Stacks of "..COLORS_KWords.Momentum_rgb.." on a successful Dodge.\n"
				..TALENTS_Enh_desc.ED_ZEA_Keystone_3_2_rgb)),
				-- stacks: 3, colors
	--[+ French +]--
	create_template("talent_tree_zea_keys3_002_desc_fr",
		{"loc_talent_zealot_quickness_dodge_stacks_desc"}, {"fr"},
			loc_text("Gagnez {stacks:%s} cumuls de "..COLORS_KWords_fr.Momentum_rgb_fr.." après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_2_rgb_fr)),
	--[+ Russian +]-- Грация пьяницы -- руоф Самообладание пьяницы
	create_template("talent_tree_zea_keys3_002_desc_ru",
		{"loc_talent_zealot_quickness_dodge_stacks_desc"}, {"ru"},
			loc_text("{stacks:%s} заряда "..COLORS_KWords_ru.Momentum_rgb_ru.." вы получаете при успешном уклонении."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_3_2_rgb_ru)),
	--[+ Traditional Chinese - 飄忽身形 +]--
	-- 成功閃避積累{stacks:%s}層勢能。
	create_template("talent_tree_zea_keys3_002_desc_tw",
		{"loc_talent_zealot_quickness_dodge_stacks_desc"}, {"zh-tw"},
			loc_text("成功閃避時，獲得 {stacks:%s} 層 "..COLORS_KWords2_tw.Momentum_rgb_tw.." 。" ..TALENTS_Enh_desc_tw.ED_ZEA_Keystone_3_2_rgb_tw)),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Disdain +]--
	create_template("talent_tree_zea_pas_001_desc_en",
		{"loc_talent_zealot_3_tier_2_ability_1_description"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." for every Second Melee Attack you make for each enemy Hit by your previous Melee Attack. Stacks {max_stacks:%s} times.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_1_rgb)),
				-- damage: +5%, max_stacks: 5, rewrite, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_001_desc_fr",
		{"loc_talent_zealot_3_tier_2_ability_1_description"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pour chaque deuxième attaque de mêlée que vous effectuez pour chaque ennemi touché par votre précédente attaque de mêlée. Se cumule jusqu'à {max_stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_1_rgb_fr)),
	--[+ Russian +]-- Презрение 
	create_template("talent_tree_zea_pas_001_desc_ru",
		{"loc_talent_zealot_3_tier_2_ability_1_description"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." для каждой второй атаки ближнего боя за каждого врага, поражённого вашей предыдущей атакой ближнего боя. Суммируется {max_stacks:%s} раз."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_1_rgb_ru)),

	--[+ Passive 2 - Backstabber +]--
	create_template("talent_tree_zea_pas_002_desc_en",
		{"loc_talent_zealot_increased_backstab_damage_description"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." on Melee Backstab Hits.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_2_rgb)),
				-- damage: +20%, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_002_desc_fr",
		{"loc_talent_zealot_increased_backstab_damage_description"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." sur les coups dans le dos en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_2_rgb_fr)),
	--[+ Russian +]-- Бьющий в спину 
	create_template("talent_tree_zea_pas_002_desc_ru",
		{"loc_talent_zealot_increased_backstab_damage_description"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." при ударах в спину оружием ближнего боя."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_2_rgb_ru)),

	--[+ Passive 3 - Anoint in Blood +]--
	create_template("talent_tree_zea_pas_003_desc_en",
		{"loc_talent_zealot_ranged_damage_increased_to_close_desc"}, {"en"},
			loc_text("Up to {damage:%s} Base Ranged "..COLORS_KWords.Damage_rgb..", reduced the further you are from the target.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_3_rgb)),
				-- damage: +25%, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_003_desc_fr",
		{"loc_talent_zealot_ranged_damage_increased_to_close_desc"}, {"fr"},
			loc_text("Jusqu'à {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance , réduits plus vous êtes éloigné de la cible."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_3_rgb_fr)),
	--[+ Russian +]-- Помазанный кровью 
	create_template("talent_tree_zea_pas_003_desc_ru",
		{"loc_talent_zealot_ranged_damage_increased_to_close_desc"}, {"ru"},
			loc_text("До {damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." дальнего боя, уменьшается по мере удаления от цели."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_3_rgb_ru)),

	--[+ Passive 4 - Scourge +]--
	create_template("talent_tree_zea_pas_004_desc_en",
		{"loc_talent_zealot_bleed_melee_crit_chance_desc"}, {"en"},
			loc_text("Melee "..COLORS_KWords.Crit_hits_rgb.." apply "..COLORS_KWords.Bleed_rgb..", causing "..COLORS_KWords.Damage_rgb.." over time.\n"
				.."Melee Hits on "..COLORS_KWords.Bleeding_rgb.." Enemies grant {crit_chance:%s} "..COLORS_KWords.Crit_chance_rgb.." for {duration:%s} seconds. Stacks {max_stacks:%s} times. Up to "..COLORS_Numbers.n_16_rgb.." Max Bleed Stacks on a target.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_4_rgb)),
				-- crit_chance: +10%, duration: 3, max_stacks: 3, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_004_desc_fr",
		{"loc_talent_zealot_bleed_melee_crit_chance_desc"}, {"fr"},
			loc_text("Les coups "..COLORS_KWords_fr.Crit_hits_rgb_fr.." en mêlée appliquent "..COLORS_KWords_fr.Bleed_rgb_fr..", causant des "..COLORS_KWords_fr.Damage_rgb_fr.." au fil du temps.\nLes coups en mêlée sur les ennemis qui "..COLORS_KWords_fr.Bleeding_rgb_fr.." octroient {crit_chance:%s} "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant {duration:%s} secondes. Se cumule jusqu'à {max_stacks:%s} fois. Jusqu'à "..COLORS_Numbers.n_16_rgb.." cumuls de saignement max sur une cible."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_4_rgb_fr)),
	--[+ Russian +]-- Бичевание -- руоф Бич
	create_template("talent_tree_zea_pas_004_desc_ru",
		{"loc_talent_zealot_bleed_melee_crit_chance_desc"}, {"ru"},
			loc_text("К врагам применяется "..COLORS_KWords_ru.Bleeding_rgb_ru.." при "..COLORS_KWords_ru.Crit_hit_rgb_ru.." в ближнем бою, причиняя "..COLORS_KWords_ru.Dmg_rgb_ru.." с течением времени.\nУдары ближнего боя по врагам с зарядами "..COLORS_KWords_ru.Bleed_rgb_ru.." дают {crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на {duration:%s} секунды. Суммируется {max_stacks:%s} раза. До "..COLORS_Numbers.n_16_rgb.." зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." максимум."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_4_rgb_ru)),

	--[+ Passive 5 - Enemies Within, Enemies Without +]--
	create_template("talent_tree_zea_pas_005_desc_en",
		{"loc_talent_zealot_toughness_regen_in_melee_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishment per second while within {range:%s} meters of at least {num_enemies:%s} enemies.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_5_rgb)),
				-- toughness: 2.5%, range: 5, num_enemies: 3 - colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_005_desc_fr",
		{"loc_talent_zealot_toughness_regen_in_melee_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par seconde lorsque vous êtes à moins de {range:%s} mètres d'au moins {num_enemies:%s} ennemis."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_5_rgb_fr)),
	--[+ Russian +]-- Враги внутри, враги снаружи -- руоф Не дай ему уйти
	create_template("talent_tree_zea_pas_005_desc_ru",
		{"loc_talent_zealot_toughness_regen_in_melee_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду, если в пределах {range:%s} метров от вас находится не менее {num_enemies:%s} врагов."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_5_rgb_ru)),

	--[+ Passive 6 - Fortitude in Fellowship +]--
	create_template("talent_tree_zea_pas_006_desc_en",
		{"loc_talent_zealot_increased_coherency_regen_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Coherency_rgb.." "..COLORS_KWords.Toughness_rgb.." Regeneration.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_6_rgb)),
				-- toughness: +50%, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_006_desc_fr",
		{"loc_talent_zealot_increased_coherency_regen_desc"}, {"fr"},
			loc_text("{toughness:%s} régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." en syntonie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_6_rgb_fr)),
	--[+ Russian +]-- Стойкость в товариществе -- руоф Стойкость в общении
	create_template("talent_tree_zea_pas_006_desc_ru",
		{"loc_talent_zealot_increased_coherency_regen_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливаемой от "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_6_rgb_ru)),

	--[+ Passive 7 - Purge the Unclean +]--
	create_template("talent_tree_zea_pas_007_desc_en",
		{"loc_talent_zealot_3_passive_2_description"}, {"en"},
			loc_text("{damage:%s} Increased "..COLORS_KWords.Damage_rgb.." against Infested and Unyielding Enemies.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_7_rgb)),
				-- damage: +20% -- &->and, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_007_desc_fr",
		{"loc_talent_zealot_3_passive_2_description"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemis infestés et implacable."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_7_rgb_fr)),
	--[+ Russian +]-- Очищение нечестивых -- руоф Очищение нечистых
	create_template("talent_tree_zea_pas_007_desc_ru",
		{"loc_talent_zealot_3_passive_2_description"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." против заражённых и несгибаемых врагов."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_7_rgb_ru)),

	--[+ Passive 8 - Blood Redemption +]--
	create_template("talent_tree_zea_pas_008_desc_en",
		{"loc_talent_zealot_toughness_on_melee_kill_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment on Melee Kill.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_8_rgb)),
				-- toughness:+50%., colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_008_desc_fr",
		{"loc_talent_zealot_toughness_on_melee_kill_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une élimination en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_8_rgb_fr)),
	--[+ Russian +]-- Искупление кровью -- руоф Кровавое искупление
	create_template("talent_tree_zea_pas_008_desc_ru",
		{"loc_talent_zealot_toughness_on_melee_kill_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при убийствах в ближнем бою."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_8_rgb_ru)),

	--[+ Passive 9 - Bleed for the Emperor +]--
	create_template("talent_tree_zea_pas_009_desc_en",
		{"loc_talent_zealot_3_tier_3_ability_2_description"}, {"en"},
			loc_text(COLORS_KWords.Damage_rgb.." that would take your "..COLORS_KWords.Health_rgb.." to the next "..COLORS_KWords.Wound_rgb.." is reduced by {damage_reduction:%s}.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_9_rgb)),
				-- damage_reduction: 40%, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_009_desc_fr",
		{"loc_talent_zealot_3_tier_3_ability_2_description"}, {"fr"},
			loc_text("Les "..COLORS_KWords_fr.Damage_rgb_fr.." qui réduirait votre "..COLORS_KWords_fr.Health_rgb_fr.." à la prochaine "..COLORS_KWords_fr.Wound_rgb_fr.." sont réduit de {damage_reduction:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_9_rgb_fr)),
	--[+ Russian +]-- Кровь за Императора -- руоф Кровь во имя Императора
	create_template("talent_tree_zea_pas_009_desc_ru",
		{"loc_talent_zealot_3_tier_3_ability_2_description"}, {"ru"},
			loc_text("На {damage_reduction:%s} снижается "..COLORS_KWords_ru.Dmg_rgb_ru.." который должен был привести к потере "..COLORS_KWords_ru.Wound_rgb_ru.." до следующей "..COLORS_KWords_ru.Wound_y_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_9_rgb_ru)),

	--[+ Passive 10 - Vicious Offering +]--
	create_template("talent_tree_zea_pas_010_desc_en",
		{"loc_talent_zealot_toughness_on_heavy_kills_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishment on Heavy Attack Kill.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_10_rgb)),
				-- toughness: 7.5%, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_010_desc_fr",
		{"loc_talent_zealot_toughness_on_heavy_kills_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une élimination en mêlée avec une attaque puissante ."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_10_rgb_fr)),
	--[+ Russian +]-- Жертвоприношение -- руоф Порочное подношение
	create_template("talent_tree_zea_pas_010_desc_ru",
		{"loc_talent_zealot_toughness_on_heavy_kills_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при убийствах тяжёлыми атаками."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_10_rgb_ru)),

	--[+ Passive 11 - The Voice of Terra +]--
	create_template("talent_tree_zea_pas_011_desc_en",
		{"loc_talent_zealot_toughness_on_ranged_kill_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishment on Ranged Kill.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_11_rgb)),
				-- toughness: 2.5%, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_011_desc_fr",
		{"loc_talent_zealot_toughness_on_ranged_kill_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." régénérée lors d'une élimination à distance."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_11_rgb_fr)),
	--[+ Russian +]-- Голос Терры 
	create_template("talent_tree_zea_pas_011_desc_ru",
		{"loc_talent_zealot_toughness_on_ranged_kill_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при убийствах дальнобойными атаками."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_11_rgb_ru)),

	--[+ Passive 12 - Restoring Faith +]--
	create_template("talent_tree_zea_pas_012_desc_en",
		{"loc_talent_zealot_heal_damage_taken_desc"}, {"en"},
			loc_text("On taking "..COLORS_KWords.Damage_rgb..", heal {damage_reduction:%s} of that "..COLORS_KWords.Damage_rgb..". Occurs over {time:%s} seconds.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_12_rgb)),
				-- damage_reduction: 25%, time: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_012_desc_fr",
		{"loc_talent_zealot_heal_damage_taken_desc"}, {"fr"},
			loc_text("Lorsque vous subissez des "..COLORS_KWords_fr.Damage_rgb_fr..", récuperez de la "..COLORS_KWords_fr.Health_rgb_fr.." à hauteur de {damage_reduction:%s} de ces "..COLORS_KWords_fr.Damage_rgb_fr..". Se produit sur {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_12_rgb_fr)),
	--[+ Russian +]-- Восстановление веры 
	create_template("talent_tree_zea_pas_012_desc_ru",
		{"loc_talent_zealot_heal_damage_taken_desc"}, {"ru"},
			loc_text("При получении "..COLORS_KWords_ru.Dmg_a_rgb_ru.." "..COLORS_KWords_ru.Health_rgb_ru..", вы восполняете до {damage_reduction:%s} от потерянного "..COLORS_KWords_ru.Wound_rgb_ru..". Срабатывает раз в {time:%s} секунды."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_12_rgb_ru)),

	--[+ Passive 13 - Second Wind +]--
	create_template("talent_tree_zea_pas_013_desc_en",
		{"loc_talent_zealot_toughness_on_dodge_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishment on a Successful Dodge.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_13_rgb)),
				-- toughness: 15%, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_013_desc_fr",
		{"loc_talent_zealot_toughness_on_dodge_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une Esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_13_rgb_fr)),
	--[+ Russian +]-- Второе дыхание -- руоф Второй ветер
	create_template("talent_tree_zea_pas_013_desc_ru",
		{"loc_talent_zealot_toughness_on_dodge_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при успешном уклонении."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_13_rgb_ru)),

	--[+ Passive 14 - Enduring Faith +]--
	create_template("talent_tree_zea_pas_014_desc_en",
		{"loc_talent_zealot_toughness_melee_effectiveness_desc"}, {"en"},
			loc_text("{toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." on "..COLORS_KWords.Crit_hit_rgb.." for {time:%s} seconds.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_14_rgb)),
				-- toughness_damage_reduction: +50%, time: 4, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_014_desc_fr",
		{"loc_talent_zealot_toughness_melee_effectiveness_desc"}, {"fr"},
			loc_text("{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." pendant {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_14_rgb_fr)),
	--[+ Russian +]-- Непоколебимая вера 
	create_template("talent_tree_zea_pas_014_desc_ru",
		{"loc_talent_zealot_toughness_melee_effectiveness_desc"}, {"ru"},
			loc_text("{toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." при "..COLORS_KWords_ru.Crit_hit_rgb_ru.." на {time:%s} секунды."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_14_rgb_ru)),

	--[+ Passive 15 - The Emperor's Bullet +]--
	create_template("talent_tree_zea_pas_015_desc_en",
		{"loc_talent_zealot_improved_melee_after_no_ammo_desc"}, {"en"},
			loc_text("{impact:%s} "..COLORS_KWords.Impact_rgb.." strength and {attack_speed:%s} Attack speed for Melee attacks for {duration:%s} seconds after emptying your Ranged weapon.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_15_rgb)),
				-- impact: +30%, attack_speed: +10%, duration: 5, s->seconds -- &->and, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_015_desc_fr",
		{"loc_talent_zealot_improved_melee_after_no_ammo_desc"}, {"fr"},
			loc_text("{impact:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.." et {attack_speed:%s} de vitesse d'attaque pour les attaques de mêlée pendant {duration:%s} secondes après avoir vidé chargement votre arme à distance."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_15_rgb_fr)),
	--[+ Russian +]-- Пуля Императора 
	create_template("talent_tree_zea_pas_015_desc_ru",
		{"loc_talent_zealot_improved_melee_after_no_ammo_desc"}, {"ru"},
			loc_text("{impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." и {attack_speed:%s} к скорости атак ближнего боя на {duration:%s} секунд, если вы выстрелили последний патрон из обоймы."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_15_rgb_ru)),

	--[+ Passive 16 - Dance of Death +]--
	create_template("talent_tree_zea_pas_016_desc_en",
		{"loc_talent_zealot_improved_spread_post_dodge_desc"}, {"en"},
			loc_text("{spread:%s} Spread and {recoil:%s} Recoil for {duration:%s} seconds on successful Dodge.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_16_rgb)),
				-- spread: -75%, recoil: -50%, duration: 3, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_016_desc_fr",
		{"loc_talent_zealot_improved_spread_post_dodge_desc"}, {"fr"},
			loc_text("{spread:%s} de dispersion et {recoil:%s} de recul pendant {duration:%s} secondes après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_16_rgb_fr)),
	--[+ Russian +]-- Танец смерти 
	create_template("talent_tree_zea_pas_016_desc_ru",
		{"loc_talent_zealot_improved_spread_post_dodge_desc"}, {"ru"},
			loc_text("{spread:%s} к разбросу и {recoil:%s} к отдаче на {duration:%s} секунды при успешном уклонении."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_16_rgb_ru)),

	--[+ Passive 17 - Duellist +]--
	create_template("talent_tree_zea_pas_017_desc_en",
		{"loc_talent_zealot_increased_finesse_post_dodge_description"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Weak_spot_rgb.." and "..COLORS_KWords.Crit_hit_rgb.." "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on successful Dodge.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_17_rgb)),
				-- damage: +50%, duration: 3, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_017_desc_fr",
		{"loc_talent_zealot_increased_finesse_post_dodge_description"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Weakspot_rgb_fr.." et de "..COLORS_KWords_fr.Crit_hit_rgb_fr.."  pendant {duration:%s} secondes après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_17_rgb_fr)),
	--[+ Russian +]-- Дуэлянт 
	create_template("talent_tree_zea_pas_017_desc_ru",
		{"loc_talent_zealot_increased_finesse_post_dodge_description"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." и "..COLORS_KWords_ru.Crit_dmg_u_rgb_ru.." на {duration:%s} секунды при успешном уклонении."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_17_rgb_ru)),

	--[+ Passive 18 - Until Death +]--
	create_template("talent_tree_zea_pas_018_desc_en",
		{"loc_talent_zealot_resist_death_desc"}, {"en"},
			loc_text("Fatal "..COLORS_KWords.Damage_rgb.." instead grants you Invulnerability for {active_duration:%s} seconds. Occurs every {cooldown_duration:%s} seconds.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_18_rgb)),
				-- active_duration: 5, cooldown_duration: 120, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_018_desc_fr",
		{"loc_talent_zealot_resist_death_desc"}, {"fr"},
			loc_text("Les "..COLORS_KWords_fr.Damage_rgb_fr.." mortels vous accordent à la place l'invulnérabilité pendant {active_duration:%s} secondes. Se produit toutes les {cooldown_duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_18_rgb_fr)),
	--[+ Russian +]-- До самой смерти 
	create_template("talent_tree_zea_pas_018_desc_ru",
		{"loc_talent_zealot_resist_death_desc"}, {"ru"},
			loc_text("Смертельный "..COLORS_KWords_ru.Dmg_rgb_ru.." теперь не приводит к смерти, но даёт неуязвимость на {active_duration:%s} секунд. Может сработать не чаще, чем раз в {cooldown_duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_18_rgb_ru)),

	--[+ Passive 19 - Unremitting +]--
	create_template("talent_tree_zea_pas_019_desc_en",
		{"loc_talent_zealot_reduced_sprint_cost_description"}, {"en"},
			loc_text("{cost:%s} Sprint "..COLORS_KWords.Stamina_rgb.." cost.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_19_rgb)),
				-- cost: -20%
	--[+ French +]--
	create_template("talent_tree_zea_pas_019_desc_fr",
		{"loc_talent_zealot_reduced_sprint_cost_description"}, {"fr"},
			loc_text("{cost:%s} Réduction du coût en "..COLORS_KWords_fr.Stamina_rgb_fr.." de la course."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_19_rgb_fr)),
	--[+ Russian +]-- Неустанный 
	create_template("talent_tree_zea_pas_019_desc_ru",
		{"loc_talent_zealot_reduced_sprint_cost_description"}, {"ru"},
			loc_text("{cost:%s} от затрат "..COLORS_KWords_ru.Stamina_rgb_ru.." на бег."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_19_rgb_ru)),

	--[+ Passive 20 - Shield of Contempt +]--
	create_template("talent_tree_zea_pas_020_desc_en",
		{"loc_talent_zealot_3_tier_4_ability_3_description"}, {"en"},
			loc_text("{damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Reduction for {duration:%s} seconds when you or an Ally in "..COLORS_KWords.Coherency_rgb.." takes "..COLORS_KWords.Health_rgb.." "..COLORS_KWords.Damage_rgb..". Triggers every {cooldown:%s} seconds.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_20_rgb)),
				-- damage_reduction: +60%, duration: 4, cooldown: 10, rewrite, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_020_desc_fr",
		{"loc_talent_zealot_3_tier_4_ability_3_description"}, {"fr"},
			loc_text("{damage_reduction:%s} Réduction des "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes pour vous ou un allié lorsque le joueur subit des "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Health_rgb_fr.." . Se déclenche toutes les {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_20_rgb_fr)),
	--[+ Russian +]-- Щит презрения 
	create_template("talent_tree_zea_pas_020_desc_ru",
		{"loc_talent_zealot_3_tier_4_ability_3_description"}, {"ru"},
			loc_text("{damage_reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." вам и вашим союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru.." на {duration:%s} секунды, если кто-то из вас получил "..COLORS_KWords_ru.Dmg_rgb_ru.." "..COLORS_KWords_ru.Health_rgb_ru..". Срабатывает каждые {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_20_rgb_ru)),

	--[+ Passive 21 - Thy Wrath be Swift +]--
	create_template("talent_tree_zea_pas_021_desc_en",
		{"loc_talent_zealot_movement_speed_on_damaged_desc"}, {"en"},
			loc_text("{movement_speed:%s} Movement Speed for {time:%s} seconds on taking "..COLORS_KWords.Damage_rgb..". Enemy Melee Attacks cannot "..COLORS_KWords.Stun_rgb.." you.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_21_rgb)),
				-- movement_speed: +15%, time: 2, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_021_desc_fr",
		{"loc_talent_zealot_movement_speed_on_damaged_desc"}, {"fr"},
			loc_text("{movement_speed:%s} Vitesse de déplacement pendant {time:%s} secondes après avoir subi des "..COLORS_KWords_fr.Damage_rgb_fr..". Les attaques de mêlée ennemies ne peuvent pas vous "..COLORS_KWords_fr.Stun_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_21_rgb_fr)),
	--[+ Russian +]-- Да будет Твой гнев быстр -- руоф Скорое возмездие
	create_template("talent_tree_zea_pas_021_desc_ru",
		{"loc_talent_zealot_movement_speed_on_damaged_desc"}, {"ru"},
			loc_text("{movement_speed:%s} к скорости движения на {time:%s} секунды при получении "..COLORS_KWords_ru.Dmg_a_rgb_ru..". Вражеские атаки ближнего боя не "..COLORS_KWords_ru.Staggers_rgb_ru.." вас."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_21_rgb_ru)),

	--[+ Passive 22 - Good Balance +]--
	create_template("talent_tree_zea_pas_022_desc_en",
		{"loc_talent_reduced_damage_after_dodge_description"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." Reduction for {duration:%s} seconds after a successful Dodge.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_22_rgb)),
				-- damage: +25%, duration: 2.5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_022_desc_fr",
		{"loc_talent_reduced_damage_after_dodge_description"}, {"fr"},
			loc_text("{damage:%s} Réduction des "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_22_rgb_fr)),
	--[+ Russian +]-- Хороший баланс -- руоф Разумный баланс 
	create_template("talent_tree_zea_pas_022_desc_ru",
		{"loc_talent_reduced_damage_after_dodge_description"}, {"ru"},
			loc_text("{damage:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунды при успешном уклонении."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_22_rgb_ru)),

	--[+ Passive 23 - Desperation +]--
	create_template("talent_tree_zea_pas_023_desc_en",
		{"loc_talent_zealot_increased_damage_on_low_stamina_description"}, {"en"},
			loc_text("{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds when "..COLORS_KWords.Stamina_rgb.." is depleted.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_23_rgb)),
				-- damage: +20%, duration: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_023_desc_fr",
		{"loc_talent_zealot_increased_damage_on_low_stamina_description"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mêlée pendant {duration:%s} secondes lorsque "..COLORS_KWords_fr.Stamina_rgb_fr.." est épuisée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_23_rgb_fr)),
	--[+ Russian +]-- Отчаяние 
	create_template("talent_tree_zea_pas_023_desc_ru",
		{"loc_talent_zealot_increased_damage_on_low_stamina_description"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя на {duration:%s} секунд, когда уровень "..COLORS_KWords_ru.Stamina_rgb_ru.." на нуле."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_23_rgb_ru)),

	--[+ Passive 24 - Holy Revenant +]--
	create_template("talent_tree_zea_pas_024_desc_en",
		{"loc_talent_zealot_heal_during_resist_death_clamped_desc"}, {"en"},
			loc_text("When {talent_name:%s} ends, you regain "..COLORS_KWords.Health_rgb.." based on the "..COLORS_KWords.Damage_rgb.." you dealt during {talent_name:%s}, to a Maximum of {max_health:%s} Max "..COLORS_KWords.Health_rgb..". Melee "..COLORS_KWords.Damage_rgb.." dealt Heals for {melee_multiplier:%s} times that amount.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_24_rgb)),
				-- talent_name: Until Death, max_health: 25%, melee_multiplier: 3, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_024_desc_fr",
		{"loc_talent_zealot_heal_during_resist_death_clamped_desc"}, {"fr"},
			loc_text("Lorsque {talent_name:%s} se termine, vous récupérez de la "..COLORS_KWords_fr.Health_rgb_fr.." en fonction des "..COLORS_KWords_fr.Damage_rgb_fr.." que vous avez infligés pendant {talent_name:%s}, jusqu'à {max_health:%s} de la "..COLORS_KWords_fr.Health_rgb_fr.." maximum. Les "..COLORS_KWords_fr.Damage_rgb_fr.." de mêlée guérissent pour {melee_multiplier:%s} fois ce montant."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_24_rgb_fr)),
	--[+ Russian +]-- Святой призрак -- руоф Священный призрак
	create_template("talent_tree_zea_pas_024_desc_ru",
		{"loc_talent_zealot_heal_during_resist_death_clamped_desc"}, {"ru"},
			loc_text("Когда {talent_name:%s} заканчивает своё действие, вы восстанавливаете некоторое количество "..COLORS_KWords_ru.Wound_rgb_ru.." в зависимости от нанесённого вами "..COLORS_KWords_ru.Dmg_a_rgb_ru.." на протяжении действия таланта {talent_name:%s}, вплоть до {max_health:%s}. Атаки ближнего боя восстанавливают в {melee_multiplier:%s} раза больше "..COLORS_KWords_ru.Wound_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_24_rgb_ru)),

	--[+ Passive 25 - Sainted Gunslinger +]--
	create_template("talent_tree_zea_pas_025_desc_en",
		{"loc_talent_zealot_increased_reload_speed_on_melee_kills_desc"}, {"en"},
			loc_text("{reload_speed:%s} Reload Speed on Melee Kill. Stacks {max_stacks:%s} times.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_25_rgb)),
				-- reload_speed: +3%, max_stacks: 10
	--[+ French +]--
	create_template("talent_tree_zea_pas_025_desc_fr",
		{"loc_talent_zealot_increased_reload_speed_on_melee_kills_desc"}, {"fr"},
			loc_text("{reload_speed:%s} Vitesse de rechargement en cas d'élimination de mêlée. Cumulable {max_stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_25_rgb_fr)),
	--[+ Russian +]-- Святой стрелок -- руоф Святой быстрый стрелок
	create_template("talent_tree_zea_pas_025_desc_ru",
		{"loc_talent_zealot_increased_reload_speed_on_melee_kills_desc"}, {"ru"},
			loc_text("{reload_speed:%s} к скорости перезарядки при убийствах в ближнем бою. Суммируется {max_stacks:%s} раз."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_25_rgb_ru)),

	--[+ Passive 26 - Hammer of Faith +]--
	create_template("talent_tree_zea_pas_026_desc_en",
		{"loc_talent_zealot_3_tier_1_ability_1_description"}, {"en"},
			loc_text("{stagger:%s} "..COLORS_KWords.Impact_rgb.." strength.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_26_rgb)),
				-- stagger: +30%, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_026_desc_fr",
		{"loc_talent_zealot_3_tier_1_ability_1_description"}, {"fr"},
			loc_text("{stagger:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_26_rgb_fr)),
	--[+ Russian +]-- Молот веры 
	create_template("talent_tree_zea_pas_026_desc_ru",
		{"loc_talent_zealot_3_tier_1_ability_1_description"}, {"ru"},
			loc_text("{stagger:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." врагов при атаках."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_26_rgb_ru)),

	--[+ Passive 27 - Grievous Wounds +]--
	create_template("talent_tree_zea_pas_027_desc_en",
		{"loc_talent_zealot_increased_stagger_on_weakspot_melee_description"}, {"en"},
			loc_text("{impact_modifier:%s} "..COLORS_KWords.Stagger_rgb.." on Melee "..COLORS_KWords.Weakspothits_rgb..".\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_27_rgb)),
				-- impact_modifier: +50%, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_027_desc_fr",
		{"loc_talent_zealot_increased_stagger_on_weakspot_melee_description"}, {"fr"},
			loc_text("{impact_modifier:%s} de "..COLORS_KWords_fr.Stagger_rgb_fr.." sur les attaques de mêlée sur "..COLORS_KWords_fr.Weakspothits_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_27_rgb_fr)),
	--[+ Russian +]-- Тяжёлые раны -- руоф Опасные раны
	create_template("talent_tree_zea_pas_027_desc_ru",
		{"loc_talent_zealot_increased_stagger_on_weakspot_melee_description"}, {"ru"},
			loc_text("{impact_modifier:%s} к "..COLORS_KWords_ru.Stagger2_rgb_ru.." при попадании в "..COLORS_KWords_ru.Weakspot_rgb_ru.." оружием ближнего боя."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_27_rgb_ru)),

	--[+ Passive 28 - Ambuscade +]--
	create_template("talent_tree_zea_pas_028_desc_en",
		{"loc_talent_zealot_increased_flanking_damage_description"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." to Ranged Backstab Attacks.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_28_rgb)),
				-- damage:+20%., colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_028_desc_fr",
		{"loc_talent_zealot_increased_flanking_damage_description"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." sur les attaques de dos à distance."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_28_rgb_fr)),
	--[+ Russian +]-- Засада 
	create_template("talent_tree_zea_pas_028_desc_ru",
		{"loc_talent_zealot_increased_flanking_damage_description"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." для выстрелов в спину."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_28_rgb_ru)),

	--[+ Passive 29 - Punishment +]--
	create_template("talent_tree_zea_pas_029_desc_en",
		{"loc_talent_zealot_multi_hits_increase_impact_desc"}, {"en"},
			loc_text("Melee Attacks that Hit at least {min_hits:%s} Enemies grant {impact_modifier:%s} "..COLORS_KWords.Impact_rgb.." strength for {time:%s} seconds. Stacks {max_stacks:%s} times. At max Stacks gain Uninterruptible.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_29_rgb)),
				-- min_hits: 3, impact_modifier: +30%, time: 5, max_stacks: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_029_desc_fr",
		{"loc_talent_zealot_multi_hits_increase_impact_desc"}, {"fr"},
			loc_text("Les attaques de mêlée qui touchent au moins {min_hits:%s} ennemis augmentent l'"..COLORS_KWords_fr.Impact_rgb_fr.." de {impact_modifier:%s} pendant {time:%s} secondes. Cumulable jusqu'à {max_stacks:%s} fois. Au maximum de cumuls, gagnez Inarrêtable."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_29_rgb_fr)),
	--[+ Russian +]-- Наказание 
	create_template("talent_tree_zea_pas_029_desc_ru",
		{"loc_talent_zealot_multi_hits_increase_impact_desc"}, {"ru"},
			loc_text("Атаки ближнего боя, попавшие хотя бы по {min_hits:%s} врагам, дают {impact_modifier:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." на {time:%s} секунд. Суммируется {max_stacks:%s} раз. При максимуме зарядов ваши атаки невозможно прервать."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_29_rgb_ru)),

	--[+ Passive 30 - Faithful Frenzy +]--
	create_template("talent_tree_zea_pas_030_desc_en",
		{"loc_talent_zealot_attack_speed_desc"}, {"en"},
			loc_text("{attack_speed:%s} Melee Attack Speed.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_30_rgb)),
				-- attack_speed: +10%
	--[+ French +]--
	create_template("talent_tree_zea_pas_030_desc_fr",
		{"loc_talent_zealot_attack_speed_desc"}, {"fr"},
			loc_text("{attack_speed:%s} Vitesse d'attaque en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_30_rgb_fr)),
	--[+ Russian +]-- Правоверное неистовство -- руоф Верное безумие
	create_template("talent_tree_zea_pas_030_desc_ru",
		{"loc_talent_zealot_attack_speed_desc"}, {"ru"},
			loc_text("{attack_speed:%s} к скорости атак ближнего боя."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_30_rgb_ru)),

	--[+ Passive 31 - Sustained Assault +]--
	create_template("talent_tree_zea_pas_031_desc_en",
		{"loc_talent_zealot_increased_damage_stacks_on_hit_desc"}, {"en"},
			loc_text("{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." for {time:%s} seconds on Hitting an Enemy with a Melee Attack. Stacks {amount:%s} times.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_31_rgb)),
				-- damage: +4%, time: 5, amount: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_031_desc_fr",
		{"loc_talent_zealot_increased_damage_stacks_on_hit_desc"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mêlée pendant {time:%s} secondes après avoir touché un ennemi avec une attaque de mêlée. Cumulable jusqu'à {amount:%s} fois."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_31_rgb_fr)),
	--[+ Russian +]-- Непрерывное нападение -- руоф Непрерывный штурм
	create_template("talent_tree_zea_pas_031_desc_ru",
		{"loc_talent_zealot_increased_damage_stacks_on_hit_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя на {time:%s} секунд при попадании по врагу атакой ближнего боя. Суммируется {amount:%s} раз."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_31_rgb_ru)),

	--[+ Passive 32 - The Master's Retribution +]--
	create_template("talent_tree_zea_pas_032_desc_en",
		{"loc_talent_zealot_3_tier_3_ability_1_description"}, {"en"},
			loc_text("Knock back the Attacker on taking a Melee Hit. Cooldown: {cooldown:%s} seconds.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_32_rgb)),
				-- cooldown: 10, s->seconds
	--[+ French +]--
	create_template("talent_tree_zea_pas_032_desc_fr",
		{"loc_talent_zealot_3_tier_3_ability_1_description"}, {"fr"},
			loc_text("Repousse l'attaquant après avoir reçu un coup de mêlée. Temps de recharge : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_32_rgb_fr)),
	--[+ Russian +]-- Возмездие Владыки 
	create_template("talent_tree_zea_pas_032_desc_ru",
		{"loc_talent_zealot_3_tier_3_ability_1_description"}, {"ru"},
			loc_text("При нанесении вам удара в ближнем бою, враг отбрасывается. Восстановление: {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_32_rgb_ru)),

   --[+ Passive 33 - Faith's Fortitude +]--
	create_template("talent_tree_zea_pas_033_desc_en",
		{"loc_talent_zealot_3_tier_1_ability_3_description"}, {"en"},
			loc_text("{health_segment:%s} "..COLORS_KWords.Wounds_rgb..".\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_33_rgb)),
				-- health_segment: +2
	--[+ French +]--
	create_template("talent_tree_zea_pas_033_desc_fr",
		{"loc_talent_zealot_3_tier_1_ability_3_description"}, {"fr"},
			loc_text("{health_segment:%s} "..COLORS_KWords_fr.Wounds_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_33_rgb_fr)),
	--[+ Russian +]-- Стойкость веры 
	create_template("talent_tree_zea_pas_033_desc_ru",
		{"loc_talent_zealot_3_tier_1_ability_3_description"}, {"ru"},
			loc_text("{health_segment:%s} "..COLORS_KWords_ru.Wound_y_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_33_rgb_ru)),

	--[+ Passive 34 - Swift Certainty +]--
	create_template("talent_tree_zea_pas_034_desc_en",
		{"loc_talent_zealot_improved_sprint_description"}, {"en"},
			loc_text("{speed:%s} increase to Sprint speed. In addition, always counts as Dodging while Sprinting, even if "..COLORS_KWords.Stamina_rgb.." is depleted.\n"
				..TALENTS_Enh_desc.ED_ZEA_Passive_34_rgb)),
				-- speed: +5%
	--[+ French +]--
	create_template("talent_tree_zea_pas_034_desc_fr",
		{"loc_talent_zealot_improved_sprint_description"}, {"fr"},
			loc_text("{speed:%s} augmentation de la vitesse de la course. De plus, la course compte toujours comme une esquive, même si l'"..COLORS_KWords_fr.Stamina_rgb_fr.." est épuisée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_34_rgb_fr)),
	--[+ Russian +]-- Быстрая уверенность -- руоф Скорая определенность
	create_template("talent_tree_zea_pas_034_desc_ru",
		{"loc_talent_zealot_improved_sprint_description"}, {"ru"},
			loc_text("{speed:%s} к скорости бега. Теперь бег считается уклонением, даже если уровень "..COLORS_KWords_ru.Stamina_rgb_ru.." на нуле."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_34_rgb_ru)),


--[+ ++VETERAN - ВЕТЕРАН++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Frag Grenade +]--
	create_template("talent_tree_vet_blitz_000_desc_en",
		{"loc_ability_frag_grenade_description"}, {"en"},
			loc_text(COLORS_KWords.Fragmentation_gren_rgb.." that explodes after "..COLORS_Numbers.n_1_7_rgb.." seconds."
				..TALENTS_Enh_desc2.ED_VET_Blitz_0_rgb)),
			-- colors
	--[+ French +]--
	create_template("talent_tree_vet_blitz_000_desc_fr",
		{"loc_ability_frag_grenade_description"}, {"fr"},
			loc_text("Lancez une "..COLORS_KWords_fr.Fragmentation_gren_rgb_fr.." qui explose après "..COLORS_Numbers.n_1_7_rgb.." secondes."..TALENTS_Enh_desc2_fr.ED_VET_Blitz_0_rgb_fr)),
	--[+ Russian +]-- Фраг-граната 
	create_template("talent_tree_vet_blitz_000_desc_ru",
		{"loc_ability_frag_grenade_description"}, {"ru"},
			loc_text("Вы бросаете "..COLORS_KWords_ru.Fragmentation_gren_rgb_ru..", которая взрывается после "..COLORS_Numbers.n_1_7_rgb.." секунды."..TALENTS_Enh_desc2_ru.ED_VET_Blitz_0_rgb_ru)),
	--[+ Traditional Chinese - 破片手雷 +]--
	--破片手雷，在引信短暫燃燒後爆炸。
	create_template("talent_tree_vet_blitz_000_desc_tw",
		{"loc_ability_frag_grenade_description"}, {"zh-tw"},
			loc_text("投擲一顆 "..COLORS_KWords2_tw.Fragmentation_gren_rgb_tw.." ，在 "..COLORS_Numbers.n_1_7_rgb..COLORS_Numbers.n_second_rgb.." 後爆炸。\n" ..TALENTS_Enh_desc2_tw.ED_VET_Blitz_0_rgb_tw)),

	--[+ BLITZ 1 - Shredder Frag Grenade +]--
	create_template("talent_tree_vet_blitz1_000_desc_en",
		{"loc_talent_veteran_grenade_apply_bleed_desc"}, {"en"},
			loc_text("Throw a "..COLORS_KWords.Frag_gren_rgb.." that explodes after "..COLORS_Numbers.n_1_7_rgb.." seconds. Applies {stacks:%s} Stacks of "..COLORS_KWords.Bleed_rgb.." to all Enemies Hit, causing "..COLORS_KWords.Damage_rgb.." over time. Up to "..COLORS_Numbers.n_16_rgb.." Max Stacks.\n"
				.."This is an augmented version of {talent_name:%s}."
				..TALENTS_Enh_desc2.ED_VET_Blitz_1_rgb)),
			-- stacks: 6, talent_name: Frag Grenade, colors
	--[+ French +]--
	create_template("talent_tree_vet_blitz1_000_desc_fr",
		{"loc_talent_veteran_grenade_apply_bleed_desc"}, {"fr"},
			loc_text("Lancez une "..COLORS_KWords_fr.Frag_gren_rgb_fr.." qui explose après "..COLORS_Numbers.n_1_7_rgb.." secondes. Applique {stacks:%s} cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." à tous les ennemis touchés, causant des "..COLORS_KWords_fr.Damage_rgb_fr.." au fil du temps. Jusqu'à "..COLORS_Numbers.n_16_rgb.." cumuls max.\nIl s'agit d'une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Blitz_1_rgb_fr)),
	--[+ Russian +]-- Секущая фраг-граната -- руоф Фраг-граната крошителя
	create_template("talent_tree_vet_blitz1_000_desc_ru",
		{"loc_talent_veteran_grenade_apply_bleed_desc"}, {"ru"},
			loc_text("Вы бросаете "..COLORS_KWords_ru.Frag_gren_rgb_ru..", которая взрывается после "..COLORS_Numbers.n_1_7_rgb.." секунды. Накладывает {stacks:%s} зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." на всех поражённых взрывом врагов, нанося "..COLORS_KWords_ru.Dmg_rgb_ru.." с течением времени. До "..COLORS_Numbers.n_16_rgb.." зарядов "..COLORS_KWords_ru.Bleed_rgb_ru..".\nЭто улучшенная версия таланта {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_VET_Blitz_1_rgb_ru)),
	--[+ Traditional Chinese - 粉碎者破片手雷 +]--
	-- 投擲一枚破片手雷，手雷會在短暫延時後爆炸，使被擊中的所有敵人疊加{stacks:%s}層流血，造成持續傷害。\n\n該天賦為{talent_name:%s}的增強版。
	create_template("talent_tree_vet_blitz1_000_desc_tw",
		{"loc_talent_veteran_grenade_apply_bleed_desc"}, {"zh-tw"},
			loc_text("投擲一顆 "..COLORS_KWords2_tw.Frag_gren_rgb_tw.." ，在 "..COLORS_Numbers.n_1_7_rgb..COLORS_Numbers.n_second_rgb.." 後爆炸。\n"
			.."\n"
			.."- 施加 {stacks:%s} 層 "..COLORS_KWords_tw.Bleed_rgb_tw.."，造成 "..COLORS_KWords_tw.Dmg_c_rgb_tw.." 。\n"
			.."- 上限 "..COLORS_Numbers.n_16_rgb.." 層 "..COLORS_KWords_tw.Bleed_rgb_tw.."。\n\n"
			.."這是 {talent_name:%s} 天賦的強化版本。\n"
			..TALENTS_Enh_desc2_tw.ED_VET_Blitz_1_rgb_tw)),

	--[+ BLITZ 2 - Krak Grenade +]--
	create_template("talent_tree_vet_blitz2_000_desc_en",
		{"loc_talent_ability_krak_grenade_desc"}, {"en"},
			loc_text("Throw a Grenade that explodes after "..COLORS_Numbers.n_2_rgb.." seconds and deals devastating "..COLORS_KWords.Damage_rgb..". Sticks to Flak Armoured, Carapace Armoured and Unyielding Enemies."
				..TALENTS_Enh_desc2.ED_VET_Blitz_2_rgb)),
				-- colors
	--[+ French +]--
	create_template("talent_tree_vet_blitz2_000_desc_fr",
		{"loc_talent_ability_krak_grenade_desc"}, {"fr"},
			loc_text("Lancez une grenade qui explose après "..COLORS_Numbers.n_2_rgb.." secondes et inflige des "..COLORS_KWords_fr.Damage_rgb_fr.." dévastateurs. Adhère aux ennemis en armure légère, en armure Carapace et aux ennemis implacables."..TALENTS_Enh_desc2_fr.ED_VET_Blitz_2_rgb_fr)),
	--[+ Russian +]-- Крак-граната 
	create_template("talent_tree_vet_blitz2_000_desc_ru",
		{"loc_talent_ability_krak_grenade_desc"}, {"ru"},
			loc_text("Вы бросаете гранату, которая взрывается после "..COLORS_Numbers.n_2_rgb.." секунд и наносит разрушительный "..COLORS_KWords_ru.Dmg_rgb_ru..". Граната прилипает к панцирной и противоосколочной броне, а также к несгибаемым врагам."..TALENTS_Enh_desc2_ru.ED_VET_Blitz_2_rgb_ru)),
	--[+ Traditional Chinese - 穿甲手雷 +]--
	-- 投擲一枚能造成毀滅性傷害的手雷。該手雷會粘附在身著防彈護甲、甲殼護甲和不屈的敵人身上。
	create_template("talent_tree_vet_blitz2_000_desc_tw",
		{"loc_talent_ability_krak_grenade_desc"}, {"zh-tw"},
			loc_text("投擲一顆 "..COLORS_KWords2_tw.Krak_gren_rgb_tw.." ，在 "..COLORS_Numbers.n_2_rgb..COLORS_Numbers.n_second_rgb.." 後爆炸，\n"
			.."造成毀滅性的"..COLORS_KWords_tw.Dmg_rgb_tw.."。\n"
			.."- 可黏附在防彈、甲殼、不屈敵人身上。" ..TALENTS_Enh_desc2_tw.ED_VET_Blitz_2_rgb_tw)),

	--[+ BLITZ 3 - Smoke Grenade +]--
	create_template("talent_tree_vet_blitz3_000_desc_en",
		{"loc_ability_smoke_grenade_description"}, {"en"},
			loc_text("Throw a Grenade that explodes after "..COLORS_Numbers.n_1_5_rgb.." seconds and creates a lingering Smoke cloud for {duration:%s} seconds. The cloud blocks line of sight for most enemies and reduces the sight range of enemies inside it."
				..TALENTS_Enh_desc2.ED_VET_Blitz_3_rgb)),
				-- duration: 15, colors
	--[+ French +]--
	create_template("talent_tree_vet_blitz3_000_desc_fr",
		{"loc_ability_smoke_grenade_description"}, {"fr"},
			loc_text("Lancez une grenade qui explose après "..COLORS_Numbers.n_1_5_rgb.." secondes et crée un nuage de fumée persistant pendant {duration:%s} secondes. Le nuage bloque la ligne de vue pour la plupart des ennemis et réduit la portée de vue des ennemis à l'intérieur."..TALENTS_Enh_desc2_fr.ED_VET_Blitz_3_rgb_fr)),
	--[+ Russian +]-- Дымовая граната 
	create_template("talent_tree_vet_blitz3_000_desc_ru",
		{"loc_ability_smoke_grenade_description"}, {"ru"},
			loc_text("Вы бросаете гранату, которая взрывается после "..COLORS_Numbers.n_1_5_rgb.." секунды и создаёт облако дыма на {duration:%s} секунд. Дым блокирует линию обзора большинства врагов и снижает расстояние обзора врагов внутри него."..TALENTS_Enh_desc2_ru.ED_VET_Blitz_3_rgb_ru)),
	--[+ Traditional Chinese - 煙霧手雷 +]--
	-- 投擲一枚手雷，釋放持續{duration:%s}秒的煙霧。煙霧能阻擋大部分敵人的視線並降低煙霧內敵人的可視範圍。
	create_template("talent_tree_vet_blitz3_000_desc_tw",
		{"loc_ability_smoke_grenade_description"}, {"zh-tw"},
			loc_text("投擲一顆手榴彈，將在 "..COLORS_Numbers.n_1_5_rgb.." 秒後爆炸，\n"
			.."- 在地面產生持續 {duration:%s} 秒的煙霧。\n"
			.."- 煙霧遮蔽大多數敵人的視線。\n"
			.."- 降低敵人在煙霧中的視野距離。"
			..TALENTS_Enh_desc2_tw.ED_VET_Blitz_3_rgb_tw)),

--[+ +AURA - АУРА+ +]--
	--[+ AURA 0 - Scavenger +]--
	create_template("talent_tree_vet_aura_000_desc_en",
		{"loc_talent_veteran_elite_kills_grant_ammo_coop_cd_desc"}, {"en"},
			loc_text("Replenish {ammo:%s} Ammo for you and Allies in "..COLORS_KWords.Coherency_rgb.." whenever any of you Kill an Elite or Specialist Enemy. This can occur once every {cooldown:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Aura_0_rgb)),
				-- ammo: 0.75%, cooldown: 5
	--[+ French +]--
	create_template("talent_tree_vet_aura_000_desc_fr",
		{"loc_talent_veteran_elite_kills_grant_ammo_coop_cd_desc"}, {"fr"},
			loc_text("Récuperez {ammo:%s} de munitions pour vous et les alliés en syntonie chaque fois que l'un de vous tue un ennemi élite ou spécialiste. Cela peut se produire une fois toutes les {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Aura_0_rgb_fr)),
	--[+ Russian +]-- Сборщик -- руоф Собиратель
	create_template("talent_tree_vet_aura_000_desc_ru",
		{"loc_talent_veteran_elite_kills_grant_ammo_coop_cd_desc"}, {"ru"},
			loc_text("{ammo:%s} боеприпасов пополняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..", когда кто-либо из вас убивает элитного врага или специалиста. Это может происходить раз в {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Aura_0_rgb_ru)),
	--[+ Traditional Chinese - 拾荒者 +]--
	--每次你擊殺精英或專家敵人，你和協同中的盟友都能獲得{ammo:%s}發彈藥。此效果每{cooldown:%s}秒可觸發一次。
	create_template("talent_tree_vet_aura_000_desc_tw",
		{"loc_talent_veteran_elite_kills_grant_ammo_coop_cd_desc"}, {"zh-tw"},
			loc_text("當你或"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友擊殺菁英或專家時，\n"
			.."- 每人回復 {ammo:%s} 發彈藥。\n"
			.."- 每 {cooldown:%s} 秒可觸發一次。" ..TALENTS_Enh_desc2_tw.ED_VET_Aura_0_rgb_tw)),

	--[+ AURA 1 - Survivalist +]--
	create_template("talent_tree_vet_aura_001_desc_en",
		{"loc_talent_veteran_elite_kills_grant_ammo_coop_improved_cd_desc"}, {"en"},
			loc_text("Replenish {ammo_2:%s} Ammo for you and Allies in "..COLORS_KWords.Coherency_rgb.." whenever any of you Kill an Elite or Specialist Enemy. This can occur once every {cooldown:%s} seconds.\n"
				.."This is an augmented version of {talent_name:%s}."
				..TALENTS_Enh_desc2.ED_VET_Aura_1_rgb)),
				-- ammo_2: 1%, cooldown: 5, talent_name: Scavenger
	--[+ French +]--
	create_template("talent_tree_vet_aura_001_desc_fr",
		{"loc_talent_veteran_elite_kills_grant_ammo_coop_improved_cd_desc"}, {"fr"},
			loc_text("Récuperez {ammo_2:%s} de munitions pour vous et les alliés en syntonie chaque fois que l'un de vous tue un ennemi élite ou spécialiste. Cela peut se produire une fois toutes les {cooldown:%s} secondes.\n\nIl s'agit d'une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Aura_1_rgb_fr)),
	--[+ Russian +]-- Выживальщик -- руоф Специалист по выживанию
	create_template("talent_tree_vet_aura_001_desc_ru",
		{"loc_talent_veteran_elite_kills_grant_ammo_coop_improved_cd_desc"}, {"ru"},
			loc_text("{ammo_2:%s} боеприпасов пополняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..", когда кто-либо из вас убивает элитного врага или специалиста. Это может происходить раз в {cooldown:%s} секунд.\n\nЭто улучшенная версия ауры {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_VET_Aura_1_rgb_ru)),
	--[+ Traditional Chinese - 生存專家 +]--
	-- 每次你擊殺精英或專家敵人，你和協同中的盟友都能獲得{ammo_2:%s}發彈藥。此效果每{cooldown:%s}秒可觸發一次。\n\n此為{talent_name:%s}的強化版。
	create_template("talent_tree_vet_aura_001_desc_tw",
		{"loc_talent_veteran_elite_kills_grant_ammo_coop_improved_cd_desc"}, {"zh-tw"},
			loc_text("當你或"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友擊殺菁英或專家時，\n"
			.."- 每人回復 {ammo_2:%s} 發彈藥。\n"
			.."- 每 {cooldown:%s} 秒可觸發一次。\n\n"
			.. "這是光環 {talent_name:%s} 的強化版本。"
			..TALENTS_Enh_desc2_tw.ED_VET_Aura_1_rgb_tw)),

	--[+ AURA 2 - Fire Team +]--
	create_template("talent_tree_vet_aura_002_desc_en",
		{"loc_talent_veteran_damage_coherency_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Aura_2_rgb)),
				-- damage: +5%, colors
	--[+ French +]--
	create_template("talent_tree_vet_aura_002_desc_fr",
		{"loc_talent_veteran_damage_coherency_desc"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_VET_Aura_2_rgb_fr)),
	--[+ Russian +]-- Огневая группа 
	create_template("talent_tree_vet_aura_002_desc_ru",
		{"loc_talent_veteran_damage_coherency_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Aura_2_rgb_ru)),
	--[+ Traditional Chinese - 火力小分隊 +]--
	--你和協同中的盟友傷害增加{damage:%s}。
	create_template("talent_tree_vet_aura_002_desc_tw",
		{"loc_talent_veteran_damage_coherency_desc"}, {"zh-tw"},
			loc_text("你與"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友獲得 {damage:%s} 的"..COLORS_KWords_tw.Damage_rgb_tw.."。" ..TALENTS_Enh_desc2_tw.ED_VET_Aura_2_rgb_tw)),

	--[+ AURA 3 - Close and Kill +]--
	create_template("talent_tree_vet_aura_003_desc_en",
		{"loc_talent_veteran_movement_speed_coherency_desc"}, {"en"},
			loc_text("{movement_speed:%s} Movement Speed for your and Allies in "..COLORS_KWords.Coherency_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Aura_3_rgb)),
				-- movement_speed: +5%
	--[+ French +]--
	create_template("talent_tree_vet_aura_003_desc_fr",
		{"loc_talent_veteran_movement_speed_coherency_desc"}, {"fr"},
			loc_text("{movement_speed:%s} de Vitesse de déplacement pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_VET_Aura_3_rgb_fr)),
	--[+ Russian +]-- Приблизиться и убить 
	create_template("talent_tree_vet_aura_003_desc_ru",
		{"loc_talent_veteran_movement_speed_coherency_desc"}, {"ru"},
			loc_text("{movement_speed:%s} к скорости движения для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Aura_3_rgb_ru)),
	--[+ Traditional Chinese - 抵近殺敵 +]--
	-- 你和協同中的盟友移動速度增加{movement_speed:%s}。
--[+ Russian +]-- 接近並擊殺
	create_template("talent_tree_vet_aura_003_desc_tw",
		{"loc_talent_veteran_movement_speed_coherency_desc"}, {"zh-tw"},
			loc_text("你與"..COLORS_KWords_tw.Coherencing_rgb_tw.."的隊友獲得 {movement_speed:%s} 的移動速度加成。" ..TALENTS_Enh_desc2_tw.ED_VET_Aura_3_rgb_tw)),

--[+ +ABILITIES+ +]--
	--[+ ABILITY 0 - Volley Fire +]--
	create_template("talent_tree_vet_abil_000_desc_en",
		{"loc_ability_veteran_base_ability_desc"}, {"en"},
			loc_text("Enter Ranged Stance for {duration:%s} seconds. When in Ranged Stance you instantly equip your Ranged weapon and deal:\n"
				.."{damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." and\n"
				.."{weakspot_damage:%s} Ranged "..COLORS_KWords.Weakspot_dmg_rgb..". Your Spread and Recoil are also greatly reduced.\n"
				.."Base Cooldown: {cooldown:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Ability_0_rgb)),
				-- duration: 5, damage: +25%, weakspot_damage: +25%, cooldown: 30 -- &->and, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_abil_000_desc_fr",
		{"loc_ability_veteran_base_ability_desc"}, {"fr"},
			loc_text("Passez en posture à distance pendant {duration:%s} secondes. En posture à distance, vous équipez instantanément votre arme à distance et infligez :\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance et\n{weakspot_damage:%s} de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." à distance. Votre dispersion et votre recul sont également grandement réduits.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Ability_0_rgb_fr)),
	--[+ Russian +]-- Залповый огонь 
	create_template("talent_tree_vet_abil_000_desc_ru",
		{"loc_ability_veteran_base_ability_desc"}, {"ru"},
			loc_text("Вы входите в стойку дальнего боя на {duration:%s} секунд. Входя в эту стойку, вы мгновенно экипируете своё оружие дальнего боя и получаете:\n{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в дальнем бою и\n{weakspot_damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." в дальнем бою. Ваш разброс и отдача также значительно уменьшаются.\nВосстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Ability_0_rgb_ru)),
	--[+ Traditional Chinese - 火力齊射 +]--
	--進入遠端姿態{duration:%d}秒後，立即裝備你的遠端武器並將附近的精英和專家敵人認定為優先目標。在此姿態下，你造成的遠程傷害{damage:%d}。
	create_template("talent_tree_vet_abil_000_desc_tw",
		{"loc_ability_veteran_base_ability_desc"}, {"zh-tw"},
			loc_text("立即裝備遠程武器進入戰鬥姿態：\n"
			.."- {damage:%s} "..COLORS_KWords_tw.Damage_ranged_rgb_tw.."。\n"
			.."- {weakspot_damage:%s} "..COLORS_KWords_tw.Weakspot_r_dmg_rgb_tw.."。\n"
			.."- 射擊散佈與後座力大幅降低。\n"
			.."- 持續 {duration:%s} 秒。\n"
			.."- 冷卻時間：{cooldown:%s} 秒。" ..TALENTS_Enh_desc2_tw.ED_VET_Ability_0_rgb_tw)),

	--[+ ABILITY 1 - Executioner's Stance +]--
	create_template("talent_tree_vet_abil1_000_desc_en",
		{"loc_talent_veteran_combat_ability_elite_and_special_outlines_refresh_description"}, {"en"},
			loc_text("Enter Ranged Stance for {duration:%s} seconds. You instantly equip your Ranged weapon and deal:\n"
				.."{damage:%s} Ranged "..COLORS_KWords.Damage_rgb..",\n"
				.."{weakspot_damage:%s} Ranged "..COLORS_KWords.Weakspot_dmg_rgb..".\n"
				.."Human-sized Elite and Specialist Enemies within "..COLORS_Numbers.n_50_rgb.." meters of the Veteran are highlighted for {duration:%s} seconds.\n"
				.."Killing an highlighted enemy refreshes the active duration by {refresh_duration:%s} seconds. This also refreshes the duration of outlines on enemies for Veteran.\n"
				.."Base Cooldown: {cooldown:%s} seconds.\n"
				.."This is an augmented version of {old_talent_name:%s}."
				..TALENTS_Enh_desc2.ED_VET_Ability_1_rgb)),
				-- duration: 5, damage: +25%, weakspot_damage: +25%, duration: 5, cooldown: 30, old_talent_name: Volley Fire, rewrite, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_abil1_000_desc_fr",
		{"loc_talent_veteran_combat_ability_elite_and_special_outlines_refresh_description"}, {"fr"},
			loc_text("Passez en posture à distance pendant {duration:%s} secondes. Vous équipez instantanément votre arme à distance et infligez :\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance,\n{weakspot_damage:%s} de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." à distance.\nLes ennemis élites et spécialistes de taille humaine situés à moins de "..COLORS_Numbers.n_50_rgb.." mètres du vétéran sont mis en surbrillance pendant {duration:%s} secondes.\nTuer un ennemi mis en surbrillance rafraîchit la durée active de {refresh_duration:%s} secondes. Cela rafraîchit également la durée des contours sur les ennemis pour le vétéran.\nTemps de recharge de base : {cooldown:%s} secondes.\nIl s'agit d'une version augmentée de {old_talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Ability_1_rgb_fr)),
	--[+ Russian +]-- Стойка палача 
	create_template("talent_tree_vet_abil1_000_desc_ru",
		{"loc_talent_veteran_combat_ability_elite_and_special_outlines_refresh_description"}, {"ru"},
			loc_text("Вы входите в стойку дальнего боя на {duration:%s} секунд. Входя в эту стойку, вы мгновенно экипируете своё оружие дальнего боя и получаете:\n{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в дальнем бою и\n{weakspot_damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." в дальнем бою. Ваш разброс и отдача также значительно уменьшаются.\nЭлитные враги и специалисты размером с человека в пределах "..COLORS_Numbers.n_50_rgb.." метров от ветерана подсвечиваются на {duration:%s} секунд.\nУбийство подсвеченного врага обновляет активную длительность на {refresh_duration:%s} секунд. Это также обновляет длительность подсветки врагов для ветерана.\nВосстанавливается {cooldown:%s} секунд.\nЭто улучшенная версия способности {old_talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_VET_Ability_1_rgb_ru)),
	--[+ Traditional Chinese - 處決者姿態 +]--
	--進入遠程狀態，持續{duration:%s}秒。在遠程狀態下，你會立即裝備遠程武器，造成{damage:%s}遠程傷害和{weakspot_damage:%s}遠程弱點傷害，並大幅減少武器散射和後座力。\n\n還可在{duration:%s}秒內追蹤識別人類大小的精英和專家敵人。\n\n擊殺追蹤中的敵人將使技能效果延長{refresh_duration:%s}秒。\n\n基礎冷卻時間：{cooldown:%s}秒。\n\n該天賦是{old_talent_name:%s}的強化版。
	create_template("talent_tree_vet_abil1_000_desc_tw",
		{"loc_talent_veteran_combat_ability_elite_and_special_outlines_refresh_description"}, {"zh-tw"},
			loc_text("立即裝備遠程武器進入戰鬥姿態：\n"
			.." {damage:%s} "..COLORS_KWords_tw.Damage_ranged_rgb_tw.."。\n"
			.."- {weakspot_damage:%s} "..COLORS_KWords_tw.Weakspot_r_dmg_rgb_tw.."。\n"
			.."- 射擊散佈與後座力大幅降低。\n"
			.."- 持續 {duration:%s} 秒。\n"
			.."- 冷卻時間：{cooldown:%s} 秒。\n"
			.."\n"
			.."- 額外獲得標記狀態：\n"
			.."-- 自動標記 "..COLORS_Numbers.n_50_rgb..COLORS_Numbers.n_meter_rgb.." 內的人形菁英與專家。\n"
			.."-- 標記持續 {duration:%s} 秒。\n"
			.."-- 擊殺被標記的敵人時：\n"
			.."--- 延長技能效果 {refresh_duration:%s} 秒。\n"
			.."--- 刷新標記狀態。\n"
			.."\n這是技能 {old_talent_name:%s} 的強化版本。" ..TALENTS_Enh_desc2_tw.ED_VET_Ability_1_rgb_tw)),

	--[+ ABILITY 1-1 - Enhanced Target Priority +]--
	create_template("talent_tree_vet_abil1_001_desc_en",
		{"loc_talent_veteran_combat_ability_coherency_outlines_description"}, {"en"},
			loc_text("{talent_name:%s} now outlines all human-sized Elite and Specialist Enemies for Allies in "..COLORS_KWords.Coherency_rgb.." for {duration:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Ability_1_1_rgb)),
				-- talent_name: Executioner's Stance, duration: 5, rewrite, &->and, s->seconds
	--[+ French +]--
	create_template("talent_tree_vet_abil1_001_desc_fr",
		{"loc_talent_veteran_combat_ability_coherency_outlines_description"}, {"fr"},
			loc_text("{talent_name:%s} met désormais en surbrillance tous les ennemis élites et spécialistes de taille humaine pour les alliés en syntonie pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Ability_1_1_rgb_fr)),
	--[+ Russian +]-- Повышенный приоритет целей -- руоф Повышенный приоритет цели
	create_template("talent_tree_vet_abil1_001_desc_ru",
		{"loc_talent_veteran_combat_ability_coherency_outlines_description"}, {"ru"},
			loc_text("{talent_name:%s} теперь также подсвечивает всех элитных врагов и специалистов размером с человека и для ваших союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." на {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Ability_1_1_rgb_ru)),
	--[+ Traditional Chinese - 目標引導增強 +]--
	-- {talent_name:%s}在{duration:%s}秒內為協同中的盟友顯示精英和專家敵人輪廓。
	create_template("talent_tree_vet_abil1_001_desc_tw",
		{"loc_talent_veteran_combat_ability_coherency_outlines_description"}, {"zh-tw"},
			loc_text("為 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 隊友標記敵人。\n"
			.."- 可標記人形大小的菁英與專家敵人。\n"
			.."- 持續 {duration:%s} 秒。" ..TALENTS_Enh_desc2_tw.ED_VET_Ability_1_1_rgb_tw)),

	--[+ ABILITY 1-2 - Counter-Fire +]--
	create_template("talent_tree_vet_abil1_002_desc_en",
		{"loc_talent_veteran_combat_ability_ranged_enemies_outlines_description"}, {"en"},
			loc_text("{talent_name:%s} now outlines Scab/Dreg Stalkers and Scab Shooters, additionally to all human-sized Elites and Specials.")),
				-- talent_name: Executioner's Stance, rewrite
	--[+ French +]--
	create_template("talent_tree_vet_abil1_002_desc_fr",
		{"loc_talent_veteran_combat_ability_ranged_enemies_outlines_description"}, {"fr"},
			loc_text("{talent_name:%s} met désormais en surbrillance tout les ennemis à distance de taille humaine.")),
	--[+ Russian +]-- Ответный огонь 
	create_template("talent_tree_vet_abil1_002_desc_ru",
		{"loc_talent_veteran_combat_ability_ranged_enemies_outlines_description"}, {"ru"},
			loc_text("{talent_name:%s} теперь также подсвечивает других дальнобойных врагов: скабов-охотников, дрегов-охотников и скабов-стрелков.")),
	--[+ Traditional Chinese - 火力反擊 +]--
	-- {talent_name:%s}現在顯示所有人形遠端敵人的輪廓。
	create_template("talent_tree_vet_abil1_002_desc_tw",
		{"loc_talent_veteran_combat_ability_ranged_enemies_outlines_description"}, {"zh-tw"},
			loc_text("{talent_name:%s} 現在會標記以下遠程敵人。\n"
			.."- 血痂射手、渣滓射手。\n"
			.."- 血痂獵人、渣滓獵人。\n"
			.."- 人形大小的菁英與專家敵人。")),

	--[+ ABILITY 1-3 - The Bigger they Are... +]--
	create_template("talent_tree_vet_abil1_003_desc_en",
		{"loc_talent_veteran_combat_ability_ogryn_outlines_description"}, {"en"},
			loc_text("{talent_name:%s} now outlines Bulwarks, Crushers and Reapers, additionally to all human-sized Elites and Specials.")),
				-- talent_name: Executioner's Stance, rewrite
	--[+ French +]--
	create_template("talent_tree_vet_abil1_003_desc_fr",
		{"loc_talent_veteran_combat_ability_ogryn_outlines_description"}, {"fr"},
			loc_text("{talent_name:%s} met désormais en surbrillance les Remparts, Broyeurs et Fauchers, en plus de tous les élites et spécialistes de taille humaine.")),
	--[+ Russian +]-- Чем больше шкаф... 
	create_template("talent_tree_vet_abil1_003_desc_ru",
		{"loc_talent_veteran_combat_ability_ogryn_outlines_description"}, {"ru"},
			loc_text("{talent_name:%s} теперь также подсвечивает бастионов, крушителей и жнецов.")),
	--[+ Traditional Chinese - 敵人越大... +]--
	-- {talent_name:%s}現在可顯示所有歐格林敵人的輪廓。
	create_template("talent_tree_vet_abil1_003_desc_tw",
		{"loc_talent_veteran_combat_ability_ogryn_outlines_description"}, {"zh-tw"},
			loc_text("{talent_name:%s} 現在會標示以下敵人：\n"
			.."- 堡壘、輾壓者、收割者。")),

	--[+ ABILITY 1-4 - Marksman +]--
	create_template("talent_tree_vet_abil1_004_desc_en",
		{"loc_talent_veteran_ability_marksman_desc"}, {"en"},
			loc_text("{power:%s} "..COLORS_KWords.Strength_rgb.." for any "..COLORS_KWords.Weakspothits_rgb.." for {duration:%s} seconds after "..COLORS_KWords.Combat_ability_rgb.." use.\n"
				.."When using {talent_name:%s}, this is applied after leaving "..COLORS_KWords.Stealth_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Ability_1_4_rgb)),
				-- duration: 10, power: +20%, talent_name: Infiltrate, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_abil1_004_desc_fr",
		{"loc_talent_veteran_ability_marksman_desc"}, {"fr"},
			loc_text("{power:%s} de "..COLORS_KWords_fr.Strength_rgb_fr.." pour tous les "..COLORS_KWords_fr.Weakspothits_rgb_fr.." pendant {duration:%s} secondes après utilisation de la "..COLORS_KWords_fr.Combat_ability_rgb_fr..".\n\nLors de l'utilisation de {talent_name:%s}, cela s'applique après avoir quitté l'état de la "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_1_4_rgb_fr)),
	--[+ Russian +]-- Меткий стрелок 
	create_template("talent_tree_vet_abil1_004_desc_ru",
		{"loc_talent_veteran_ability_marksman_desc"}, {"ru"},
			loc_text("{power:%s} к "..COLORS_KWords_ru.Strength_rgb_ru.." получают все атаки в "..COLORS_KWords_ru.Weakspot_rgb_ru.." на {duration:%s} секунд после активации "..COLORS_KWords_ru.Combat_ability_rgb_ru..".\n\nПри использовании способности {talent_name:%s}, этот талант начинает действовать после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_1_4_rgb_ru)),
	--[+ Traditional Chinese - 鷹眼 +]--
	-- 使用技能後的{duration%s}秒內，命中任意弱點即可獲得{power%s}強度。\n\n使用{talent_name:%s}時，效果將在脫離潛行狀態後生效。
	create_template("talent_tree_vet_abil1_004_desc_tw",
		{"loc_talent_veteran_ability_marksman_desc"}, {"zh-tw"},
			loc_text("使用 "..COLORS_KWords_tw.Combat_ability_rgb_tw.." 後獲得以下效果：\n"
			.."- "..COLORS_KWords_tw.Weakspothits_rgb_tw.." ， {power:%s} "..COLORS_KWords_tw.Strength_rgb_tw.."，持續 {duration:%s} 秒。\n\n"
			.."- 使用 {talent_name:%s} 時，在脫離 "..COLORS_KWords2_tw.Stealth_rgb_tw.." 後生效。\n"
			..TALENTS_Enh_desc2_tw.ED_VET_Ability_1_4_rgb_tw)),

	--[+ ABILITY 2 - Voice of Command +]--
	create_template("talent_tree_vet_abil2_000_desc_en",
		{"loc_talent_veteran_combat_ability_stagger_nearby_enemies_description"}, {"en"},
			loc_text("Replenishes your "..COLORS_KWords.Toughness_rgb.." and "..COLORS_KWords.Staggers_rgb.." all Enemies within {range:%s} meters.\n"
				.."Base Cooldown {cooldown:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Ability_2_rgb)),
				-- range: 9, cooldown: 30, &->and, m->meters, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_abil2_000_desc_fr",
		{"loc_talent_veteran_combat_ability_stagger_nearby_enemies_description"}, {"fr"},
			loc_text("Régénérez votre "..COLORS_KWords_fr.Toughness_rgb_fr.." et faites "..COLORS_KWords_fr.Staggering_rgb_fr.." tous les ennemis dans un rayon de {range:%s} mètres.\n\nTemps de recharge de base {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Ability_2_rgb_fr)),
	--[+ Russian +]-- Командный голос 
	create_template("talent_tree_vet_abil2_000_desc_ru",
		{"loc_talent_veteran_combat_ability_stagger_nearby_enemies_description"}, {"ru"},
			loc_text("Восполняет всю вашу "..COLORS_KWords_ru.Tghnss_rgb_ru.." и "..COLORS_KWords_ru.Staggers_e_rgb_ru.." всех врагов в радиусе {range:%s} метров.\n\nВосстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Ability_2_rgb_ru)),
	--[+ Traditional Chinese - 發號施令 +]--
	-- 恢復你的韌性並使{range:%s}公尺內敵人暈眩。\n\n基礎冷卻時間{cooldown:%s}秒。
	create_template("talent_tree_vet_abil2_000_desc_tw",
		{"loc_talent_veteran_combat_ability_stagger_nearby_enemies_description"}, {"zh-tw"},
			loc_text("- 瞬間恢復 "..COLORS_KWords_tw.Toughness_m_rgb_tw.." 。\n"
			.."- "..COLORS_KWords_tw.Staggers_e_rgb_tw.." 半徑 {range:%s} 公尺內的所有敵人。\n"
			.."- 冷卻時間：{cooldown:%s} 秒。"
			..TALENTS_Enh_desc2_tw.ED_VET_Ability_2_rgb_tw)),

	--[+ ABILITY 2-1 - Duty and Honour +]--
	create_template("talent_tree_vet_abil2_001_desc_en",
		{"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency_description"}, {"en"},
			loc_text("{talent_name:%s} now also provides you and Allies in "..COLORS_KWords.Coherency_rgb.." with {toughness:%s} "..COLORS_KWords.Toughness_rgb.." for {duration:%s} seconds. This can exceed your Maximum "..COLORS_KWords.Toughness_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Ability_2_1_rgb)),
				-- talent_name: Voice of Command, toughness: +50, duration: 15, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_abil2_001_desc_fr",
		{"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency_description"}, {"fr"},
			loc_text("{talent_name:%s} accorde également à vous et aux alliés en syntonie {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." pendant {duration:%s} secondes. Cela peut dépasser votre maximum de "..COLORS_KWords_fr.Toughness_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_2_1_rgb_fr)),
	--[+ Russian +]-- Долг и честь 
	create_template("talent_tree_vet_abil2_001_desc_ru",
		{"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency_description"}, {"ru"},
			loc_text("{talent_name:%s} теперь также даёт вам и союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." на {duration:%s} секунд. Это может повысить ваш максимальный уровень "..COLORS_KWords_ru.Toughness_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_2_1_rgb_ru)),
	--[+ Traditional Chinese - 責任與榮譽 +]--
	--{talent_name:%s}還能為你和協同中的盟友提供{toughness:%s}韌性，持續{duration:%s}秒。此數值可超過你的韌性上限。
	create_template("talent_tree_vet_abil2_001_desc_tw",
		{"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency_description"}, {"zh-tw"},
			loc_text("{talent_name:%s} 會賦予 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 隊友以下狀態：\n"
			.."- {toughness:%s} 點 "..COLORS_KWords_tw.Toughness_rgb_tw.." 。\n"
			.."- 持續 {duration:%s} 秒。\n"
			.."- 此效果可暫時提升你的 "..COLORS_KWords_tw.Toughness_m_rgb_tw.." 。"
			..TALENTS_Enh_desc2_tw.ED_VET_Ability_2_1_rgb_tw)),

	--[+ ABILITY 2-2 - Only In Death Does Duty End +]--
	create_template("talent_tree_vet_abil2_002_desc_en",
		{"loc_talent_veteran_combat_ability_revives_description"}, {"en"},
			loc_text("{talent_name:%s} revives Knocked Down Allies within Radius, but also reduces that Radius by {range:%s} and increases your "..COLORS_KWords.Ability_cd_rgb.." by {ability_cooldown:%s}."
				..TALENTS_Enh_desc2.ED_VET_Ability_2_2_rgb)),
				-- talent_name: Voice of Command, range: 33%, ability_cooldown: 50% -- &->and, colors
	--[+ French +]--
	create_template("talent_tree_vet_abil2_002_desc_fr",
		{"loc_talent_veteran_combat_ability_revives_description"}, {"fr"},
			loc_text("{talent_name:%s} ressuscite les alliés mis à terre dans le rayon, mais réduit également ce rayon de {range:%s} et augmente votre "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." de {ability_cooldown:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Ability_2_2_rgb_fr)),
	--[+ Russian +]-- Только в смерти заканчивается долг -- руоф Лишь после смерти заканчивается служение долгу
	create_template("talent_tree_vet_abil2_002_desc_ru",
		{"loc_talent_veteran_combat_ability_revives_description"}, {"ru"},
			loc_text("{talent_name:%s} поднимает сбитых с ног союзников в радиусе действия, но этот радиус уменьшается на {range:%s}, а также увеличивается время "..COLORS_KWords_ru.Ability_cd_rgb_ru.." на {ability_cooldown:%s}."..TALENTS_Enh_desc2_ru.ED_VET_Ability_2_2_rgb_ru)),
	--[+ Traditional Chinese - 只有死亡，職責才會終結 +]--
	-- {talent_name:%s}復活範圍內被擊倒的盟友，但同時範圍將縮小{range%s}，並增加{ability_cooldown:%s}技能冷卻時間。
	create_template("talent_tree_vet_abil2_002_desc_tw",
		{"loc_talent_veteran_combat_ability_revives_description"}, {"zh-tw"},
			loc_text("{talent_name:%s} 可使範圍內倒地的隊友立即復甦。\n"
			.."- {#color(255,0,0)}MK 4 型{#reset()}\n"
			.."- 範圍將減少 {range:%s} 。\n"
			.."- "..COLORS_KWords_tw.Ability_cd_rgb_tw.."增加 {ability_cooldown:%s} 秒。\n"
			..TALENTS_Enh_desc2_tw.ED_VET_Ability_2_2_rgb_tw)),

	--[+ ABILITY 2-3 - For the Emperor! +]--
	create_template("talent_tree_vet_abil2_003_desc_en",
		{"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency_description"}, {"en"},
			loc_text("Your "..COLORS_KWords.Combat_ability_rgb.." gives for {duration:%s} seconds you and Allies in "..COLORS_KWords.Coherency_rgb..":\n"
				.."{melee_damage:%s} Melee Base "..COLORS_KWords.Damage_rgb.." and\n"
				.."{ranged_damage:%s} Ranged Base "..COLORS_KWords.Damage_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Ability_2_3_rgb)),
				-- duration: 5, melee_damage: +10%, ranged_damage: +10%, rewrite, &->and, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_abil2_003_desc_fr",
		{"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency_description"}, {"fr"},
			loc_text("Votre "..COLORS_KWords_fr.Combat_ability_rgb_fr.." donne pendant {duration:%s} secondes à vous et aux alliés en syntonie:\n{melee_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mêlée de base et\n{ranged_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance de base."..TALENTS_Enh_desc2_fr.ED_VET_Ability_2_3_rgb_fr)),
	--[+ Russian +]-- За Императора! 
	create_template("talent_tree_vet_abil2_003_desc_ru",
		{"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency_description"}, {"ru"},
			loc_text("Ваша "..COLORS_KWords_ru.Combat_abil_rgb_ru.." даёт на {duration:%s} секунд вам и союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru..":\n{melee_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в ближнем бою и\n{ranged_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в дальнем бою."..TALENTS_Enh_desc2_ru.ED_VET_Ability_2_3_rgb_ru)),
	--[+ Traditional Chinese - 為了皇帝！ +]--
	-- 你的戰鬥技能賦予你和協同中的盟友{melee_damage:%s}近戰基礎傷害和{ranged_damage:%s}遠端基礎傷害，持續{duration:%s}秒。
	create_template("talent_tree_vet_abil2_003_desc_tw",
		{"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency_description"}, {"zh-tw"},
			loc_text("你與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 隊友獲得：\n"
			.."- {melee_damage:%s} "..COLORS_KWords_tw.Damage_melee_rgb_tw.." 。\n"
			.."- {ranged_damage:%s} "..COLORS_KWords_tw.Damage_ranged_rgb_tw.." 。\n"
			.."- 持續 {duration:%s} 秒。\n"
			..TALENTS_Enh_desc2_tw.ED_VET_Ability_2_3_rgb_tw)),

	--[+ ABILITY 3 - Infiltrate +]--
	create_template("talent_tree_vet_abil3_000_desc_en",
		{"loc_talent_veteran_invisibility_on_combat_ability_desc"}, {"en"},
			loc_text("Replenish all "..COLORS_KWords.Toughness_rgb.." and enter "..COLORS_KWords.Stealth_rgb.." for {duration:%s} seconds, gaining {movement_speed:%s} Movement Speed. Leaving "..COLORS_KWords.Stealth_rgb.." Suppresses nearby Enemies. Attacking makes you leave "..COLORS_KWords.Stealth_rgb..".\n"
				.."Base Cooldown: {cooldown:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Ability_3_rgb)),
				-- duration: 8, movement_speed: +25%, cooldown: 45, rewrite, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_abil3_000_desc_fr",
		{"loc_talent_veteran_invisibility_on_combat_ability_desc"}, {"fr"},
			loc_text("Régénérez toute la "..COLORS_KWords_fr.Toughness_rgb_fr.." et entre en "..COLORS_KWords_fr.Stealth_rgb_fr.." pendant {duration:%s} secondes, gagnant {movement_speed:%s} de vitesse de déplacement. Quand vous quittez la "..COLORS_KWords_fr.Stealth_rgb_fr.." les ennemis à proximité subissent Suppresion. Attaquer vous fait quitter la "..COLORS_KWords_fr.Stealth_rgb_fr..".\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_rgb_fr)),
	--[+ Russian +]-- Проникновение 
	create_template("talent_tree_vet_abil3_000_desc_ru",
		{"loc_talent_veteran_invisibility_on_combat_ability_desc"}, {"ru"},
			loc_text("Вы входите в режим "..COLORS_KWords_ru.Stealth_rgb_ru.." на {duration:%s} секунд, восполняя всю "..COLORS_KWords_ru.Tghnss_rgb_ru.." и получая {movement_speed:%s} к скорости движения. Выход из "..COLORS_KWords_ru.Stealth_rgb_ru.." подавляет ближайших врагов. Любые атаки выведут вас из режима "..COLORS_KWords_ru.Stealth_rgb_ru..".\nВосстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Ability_3_rgb_ru)),
	--[+ Traditional Chinese - 滲透 +]--
	-- 恢復所有韌性，進入潛行狀態{duration:%s}秒，獲得{movement_speed:%s}移動速度。脫離潛行時會壓制附近敵人。採取攻擊將使你脫離潛行狀態。\n\n脫離潛行後{after_duration%s}秒內會獲得{threat_multiplier:%s}威脅和{tdr%s}韌性減傷。\n\n基礎冷卻時間：{cooldown:%s}秒。
	create_template("talent_tree_vet_abil3_000_desc_tw",
		{"loc_talent_veteran_invisibility_on_combat_ability_desc"}, {"zh-tw"},
			loc_text("進入 "..COLORS_KWords2_tw.Stealth_rgb_tw.." 狀態，並獲得以下狀態：\n"
			.."- 恢復全部 "..COLORS_KWords_tw.Tghnss_rgb_tw.." 。\n"
			.."- {movement_speed:%s} 的移動速度。\n"
			.."- 持續 {duration:%s} 秒。\n"
			.."\n"
			.."- 離開 "..COLORS_KWords2_tw.Stealth_rgb_tw.." 時會壓制周圍敵人。\n"
			.."- 任何攻擊都會脫離 "..COLORS_KWords2_tw.Stealth_rgb_tw.. " 狀態。\n"
			.."- 冷卻時間：{cooldown:%s}"..COLORS_Numbers.n_second_rgb.." 。" ..TALENTS_Enh_desc2_tw.ED_VET_Ability_3_rgb_tw)),

	--[+ ABILITY 3-1 - Low Profile +]--
	create_template("talent_tree_vet_abil3_001_desc_en",
		{"loc_talent_veteran_reduced_threat_after_stealth_desc"}, {"en"},
			loc_text("{threat_multiplier:%s} Threat for {duration:%s} seconds on leaving "..COLORS_KWords.Stealth_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Ability_3_1_rgb)),
				-- threat_multiplier: -90%, duration: 10, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_abil3_001_desc_fr",
		{"loc_talent_veteran_reduced_threat_after_stealth_desc"}, {"fr"},
			loc_text("{threat_multiplier:%s} Menace pour {duration:%s} secondes en quittant la "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_1_rgb_fr)),
	--[+ Russian +]-- Незаметность -- руоф Сдержанность
	create_template("talent_tree_vet_abil3_001_desc_ru",
		{"loc_talent_veteran_reduced_threat_after_stealth_desc"}, {"ru"},
			loc_text("{threat_multiplier:%s} к вероятности выбора врагами вас своей целью на {duration:%s} секунд после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_3_1_rgb_ru)),
	--[+ Traditional Chinese - 低調 +]--
	-- 脫離潛行後{threat_multiplier:%s}威脅，持續{duration:%s}秒。
	create_template("talent_tree_vet_abil3_001_desc_tw",
		{"loc_talent_veteran_reduced_threat_after_stealth_desc"}, {"zh-tw"},
			loc_text("脫離 "..COLORS_KWords2_tw.Stealth_rgb_tw.." 狀態後，\n"
			.."{duration:%s} 秒內被攻擊的機率降低至 {threat_multiplier:%s}。"
			..TALENTS_Enh_desc2_tw.ED_VET_Ability_3_1_rgb_tw)),

	--[+ ABILITY 3-2 - Overwatch +]--
	create_template("talent_tree_vet_abil3_002_desc_en",
		{"loc_talent_veteran_combat_ability_extra_charge_description"}, {"en"},
			loc_text("Your "..COLORS_KWords.Combat_ability_rgb.." gains {charges:%s} charge, but {ability_cooldown:%s} "..COLORS_KWords.Cd_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Ability_3_2_rgb)),
				-- charges: +1, ability_cooldown: +33%
	--[+ French +]--
	create_template("talent_tree_vet_abil3_002_desc_fr",
		{"loc_talent_veteran_combat_ability_extra_charge_description"}, {"fr"},
			loc_text("Votre "..COLORS_KWords_fr.Combat_ability_rgb_fr.." gagne {charges:%s} charge, mais {ability_cooldown:%s} de "..COLORS_KWords_fr.Cd_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_2_rgb_fr)),
	--[+ Russian +]-- Наблюдение -- руоф Прикрытие
	create_template("talent_tree_vet_abil3_002_desc_ru",
		{"loc_talent_veteran_combat_ability_extra_charge_description"}, {"ru"},
			loc_text("Вы получаете {charges:%s} заряд "..COLORS_KWords_ru.Combat_ability_rgb_ru..", но на {ability_cooldown:%s} повышается её время "..COLORS_KWords_ru.Cd_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_3_2_rgb_ru)),
	--[+ Traditional Chinese - 低調 +]--
	--你的戰鬥技能獲得{charges:%s}充能，但冷卻時間增加{ability_cooldown:%s}。
	create_template("talent_tree_vet_abil3_002_desc_tw",
		{"loc_talent_veteran_combat_ability_extra_charge_description"}, {"zh-tw"},
		loc_text("獲得 {charges:%s} 次 "..COLORS_KWords_tw.Combat_ability_rgb_tw.." 充能，\n"
		.."但技能 "..COLORS_KWords_tw.Cd_rgb_tw.." 將增加 {ability_cooldown:%s}"..COLORS_Numbers.n_second_rgb.." 。"
		..TALENTS_Enh_desc2_tw.ED_VET_Ability_3_2_rgb_tw)),

	--[+ ABILITY 3-3 - Hunter's Resolve +]--
	create_template("talent_tree_vet_abil3_003_desc_en",
		{"loc_talent_veteran_toughness_bonus_leaving_invisibility_desc"}, {"en"},
			loc_text("{tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." is provided by {talent_name:%s} for {duration:%s} seconds upon leaving "..COLORS_KWords.Stealth_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Ability_3_3_rgb)),
				-- talent_name: Infiltrate, tdr: +50%, duration: 10, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_abil3_003_desc_fr",
		{"loc_talent_veteran_toughness_bonus_leaving_invisibility_desc"}, {"fr"},
			loc_text("{tdr:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." est fourni par {talent_name:%s} pour {duration:%s} secondes en quittant la "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_3_rgb_fr)),
	--[+ Russian +]-- Упорство охотника 
	create_template("talent_tree_vet_abil3_003_desc_ru",
		{"loc_talent_veteran_toughness_bonus_leaving_invisibility_desc"}, {"ru"},
			loc_text("{tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." даётся на {duration:%s} секунд способностью {talent_name:%s} после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_3_3_rgb_ru)),
	--[+ Traditional Chinese - 獵手決意 +]--
	-- 脫離潛行後，{talent_name:%s}提供{tdr%s}韌性減傷，持續{duration%s}秒。
	create_template("talent_tree_vet_abil3_003_desc_tw",
		{"loc_talent_veteran_toughness_bonus_leaving_invisibility_desc"}, {"zh-tw"},
			loc_text("離開 "..COLORS_KWords2_tw.Stealth_rgb_tw.." 後，\n"
			.."- {talent_name:%s} 將提供 {tdr:%s} 的 "..COLORS_KWords_tw.Toughness_dmg_red_u_rgb_tw.." ，\n"
			.."- 持續 {duration:%s}"..COLORS_Numbers.n_second_rgb.." 。" ..TALENTS_Enh_desc2_tw.ED_VET_Ability_3_3_rgb_tw)),

	--[+ ABILITY 3-4 - Surprise Attack +]--
	create_template("talent_tree_vet_abil3_004_desc_en",
		{"loc_talent_veteran_damage_bonus_leaving_invisibility_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." is granted by {talent_name:%s} for {duration:%s} seconds upon leaving "..COLORS_KWords.Stealth_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Ability_3_4_rgb)),
				-- talent_name: Infiltrate, damage: +30%, duration: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_abil3_004_desc_fr",
		{"loc_talent_veteran_damage_bonus_leaving_invisibility_desc"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." est accordé par {talent_name:%s} pour {duration:%s} secondes en quittant la "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_4_rgb_fr)),
	--[+ Russian +]-- Внезапная атака 
	create_template("talent_tree_vet_abil3_004_desc_ru",
		{"loc_talent_veteran_damage_bonus_leaving_invisibility_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." даётся на {duration:%s} секунд способностью {talent_name:%s} после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_3_4_rgb_ru)),
	--[+ Traditional Chinese - 突襲襲擊 +]--
	-- 脫離潛行後，{talent_name:%s}對附近敵人造成{damage%s}傷害，持續{duration%s}秒。
	create_template("talent_tree_vet_abil3_004_desc_tw",
		{"loc_talent_veteran_damage_bonus_leaving_invisibility_desc"}, {"zh-tw"},
			loc_text("離開"..COLORS_KWords2_tw.Stealth_rgb_tw.."後，\n"
			.."- {talent_name:%s} 將提供 {damage:%s} 的"..COLORS_KWords_tw.Damage_rgb_tw.."加成。\n"
			.."- 持續 {duration:%s} 秒。" ..TALENTS_Enh_desc2_tw.ED_VET_Ability_3_4_rgb_tw)),

	--[+ ABILITY 3-5 - Close Quarters Killzone +]--
	create_template("talent_tree_vet_abil3_005_desc_en",
		{"loc_talent_veteran_ability_assault_desc"}, {"en"},
			loc_text("{power:%s} Close "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on "..COLORS_KWords.Combat_ability_rgb.." use.\n\nWhen using {talent_name:%s}, this begins on leaving "..COLORS_KWords.Stealth_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Ability_3_5_rgb)),
				-- power: +15%, duration: 10, talent_name: Infiltrate, rewrite, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_abil3_005_desc_fr",
		{"loc_talent_veteran_ability_assault_desc"}, {"fr"},
			loc_text("{power:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." rapprochés pour {duration:%s} secondes Lors de l'utilisation d'une "..COLORS_KWords_fr.Combat_ability_rgb_fr..".\n\nEn utilisant {talent_name:%s}, cela commence en quittant "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_5_rgb_fr)),
	--[+ Russian +]-- Зона ближнего боя -- руоф Зона поражения на ближней дистанции
	create_template("talent_tree_vet_abil3_005_desc_ru",
		{"loc_talent_veteran_ability_assault_desc"}, {"ru"},
			loc_text("{power:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." на дистанции до "..COLORS_Numbers.n_12_5_rgb.." метров на {duration:%s} секунд после использования "..COLORS_KWords_ru.Combat_ability_rgb_ru..".\n\nПри использовании способности {talent_name:%s}, этот талант начинает действовать после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_3_5_rgb_ru)),
	--[+ Traditional Chinese - 肉搏戰 +]--
	-- 使用戰鬥技能時可獲得{power%s}近戰傷害加成，持續{duration%s}秒。\n\n當使用{talent_name:%s}時，該效果將於脫離潛行狀態後開始生效。
	create_template("talent_tree_vet_abil3_005_desc_tw",
		{"loc_talent_veteran_ability_assault_desc"}, {"zh-tw"},
			loc_text("使用"..COLORS_KWords_tw.Combat_ability_rgb_tw.."後："
			.."- 距離 "..COLORS_Numbers.n_12_5_rgb..COLORS_Numbers.n_meter_rgb.." 內 {power:%s} "..COLORS_KWords_tw.Damage_rgb_tw.." 。\n"
			.."- 持續 {duration:%s} 秒。\n\n"
			.."- 使用 {talent_name:%s} 時，\n"
			.."- 效果會在離開 "..COLORS_KWords2_tw.Stealth_rgb_tw.." 後生效。" ..TALENTS_Enh_desc2_tw.ED_VET_Ability_3_5_rgb_tw)),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ KEYSTONE 1 - Marksman's Focus +]--
	create_template("talent_tree_vet_keys1_000_desc_en",
		{"loc_talent_veteran_snipers_focus_alt_description"}, {"en"},
			loc_text("Ranged "..COLORS_KWords.Weak_spot_rgb.." kills grant {stacks:%s} Stacks of "..COLORS_KWords.Focus_rgb..". Up to {max_stacks} Max Stacks. Sprinting, Sliding and Walking removes Stacks.\nEach Stack of "..COLORS_KWords.Focus_rgb.." grants:\n{power:%s} Ranged "..COLORS_KWords.Finesse_rgb.." strength and\n{reload_speed:%s} Reload Speed.\nRanged "..COLORS_KWords.Weak_spot_rgb.." kills let you move without losing Stacks for {grace_time:%s} seconds. Ranged "..COLORS_KWords.Weakspothits_rgb.." lets you move without losing Stacks for {grace_time_hit:%s} second."
				..TALENTS_Enh_desc2.ED_VET_Keystone_1_rgb)),
				-- stacks: 3, max_stacks: 10, power: +7.5%, reload_speed: +1%, grace_time: 6, grace_time_hit: 3 -- stack(s)->stacks -- s->second/seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys1_000_desc_fr",
		{"loc_talent_veteran_snipers_focus_alt_description"}, {"fr"},
			loc_text("Les tirs à distance sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." octroient {stacks:%s} cumuls de "..COLORS_KWords_fr.Focus_rgb_fr..". Jusqu'à {max_stacks} cumuls maximum. Courir, glisser et marcher supprime les cumuls.\nChaque cumul de "..COLORS_KWords_fr.Focus_rgb_fr.." octroie : {power:%s} de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr.." à distance et {reload_speed:%s} vitesse de rechargement.\nLes élimination sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." à distance permettent de se déplacer sans perdre de cumuls pendant {grace_time:%s} secondes. Les tirs "..COLORS_KWords_fr.Weakspothits_rgb_fr.." permettent de se déplacer sans perdre de cumuls pendant {grace_time_hit:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_1_rgb_fr)),
	--[+ Russian +]-- Концентрация снайпера 
	create_template("talent_tree_vet_keys1_000_desc_ru",
		{"loc_talent_veteran_snipers_focus_alt_description"}, {"ru"},
			loc_text("Убийства выстрелами в "..COLORS_KWords_ru.Weakspot_rgb_ru.." дают {stacks:%s} заряда "..COLORS_KWords_ru.Focus_rgb_ru..". До максимума в {max_stacks} зарядов. Бег, подкаты и ходьба снимают заряды.\nКаждый заряд "..COLORS_KWords_ru.Focus_rgb_ru.." даёт:\n{reload_speed:%s} к скорости перезарядки и\n{power:%s} к усилению "..COLORS_KWords_ru.Finesse_rgb_ru.." для дальнобойных атак.\nУбийства выстрелами в "..COLORS_KWords_ru.Weakspot_rgb_ru.." позволят вам передвигаться без потери зарядов в течение {grace_time:%s} секунд. Попадания выстрелами в "..COLORS_KWords_ru.Weakspot_rgb_ru.." позволят вам передвигаться без потери зарядов в течение {grace_time_hit:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_1_rgb_ru)),
	--[+ Traditional Chinese - 狙擊專注 +]--
	-- 遠程弱點擊殺後獲得{stacks:%s}層專注，最多疊加{max_stacks}層。衝刺、滑鏟或行走會消耗已疊加層數。\n\n每層專注可使你獲得{power:%s}遠程靈巧強度和{reload_speed:%s}換彈速度。\n\n遠程弱點擊殺後的{grace_time:%s}秒內，移動時不會消耗專注層數。遠程弱點命中後的{grace_time_hit:%s}秒內，移動時不會消耗專注層數。
	create_template("talent_tree_vet_keys1_000_desc_tw",
	{"loc_talent_veteran_snipers_focus_alt_description"}, {"zh-tw"},
	loc_text(COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 敵人後可獲得 {stacks:%s} 層 "..COLORS_KWords2_tw.Focus_rgb_tw.." 。\n\n"
	.."每層 "..COLORS_KWords2_tw.Focus_rgb_tw.." 可提供：\n"
	..Arrow_up_green.." {power:%s}  "..COLORS_KWords_tw.Finesse_dmg_r_rgb_tw.." 。\n"
	..Arrow_up_green.." {reload_speed:%s} 裝填速度。\n"
	.."\n"
	..Arrow_right_.." 最多 {max_stacks} 層。\n"
	..Arrow_right_.." 衝刺、滑鏟或行走會消耗 "..COLORS_KWords2_tw.Focus_rgb_tw.." 。\n"
	.."\n"
	.."以下情況移動不會消耗 "..COLORS_KWords2_tw.Focus_rgb_tw.." 層數：\n"
	..Arrow_right_.." "..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." {grace_time:%s} 秒內可自由移動。\n"
	..Arrow_right_.." "..COLORS_KWords_tw.Weakspothits_rgb_tw.." {grace_time_hit:%s} 秒內可自由移動。\n"
	.. TALENTS_Enh_desc2_tw.ED_VET_Keystone_1_rgb_tw)),

	--[+ KEYSTONE 1-1 - Chink in their Armour +]--
	create_template("talent_tree_vet_keys1_001_desc_en",
		{"loc_talent_veteran_snipers_focus_rending_bonus_description"}, {"en"},
			loc_text("{rending:%s} "..COLORS_KWords.Rending_rgb.." when at, or over, {stacks:%s} Stacks of "..COLORS_KWords.Focus_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Keystone_1_1_rgb)),
				-- rending: +10%, stacks: 10, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys1_001_desc_fr",
		{"loc_talent_veteran_snipers_focus_rending_bonus_description"}, {"fr"},
			loc_text("{rending:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." lorsque à, ou au-dessus de, {stacks:%s} cumuls de "..COLORS_KWords_fr.Focus_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_1_1_rgb_fr)),
	--[+ Russian +]-- Щель в их броне -- руоф Щель в броне
	create_template("talent_tree_vet_keys1_001_desc_ru",
		{"loc_talent_veteran_snipers_focus_rending_bonus_description"}, {"ru"},
			loc_text("{rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru..", когда у вас {stacks:%s} или более зарядов "..COLORS_KWords_ru.Focus_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_1_1_rgb_ru)),
	--[+ Translations Chinese - 滲透盔甲 +]--
	-- {stacks:%s}層及以上專注時附加{rending:%s}撕裂效果。
	create_template("talent_tree_vet_keys1_001_desc_tw",
		{"loc_talent_veteran_snipers_focus_rending_bonus_description"}, {"zh-tw"},
		loc_text(
			"當 "..COLORS_KWords2_tw.Focus_rgb_tw.." 達到 {stacks:%s} 層以上時：\n"
			..Arrow_up_green.. " {rending:%s} "..COLORS_KWords_tw.Rending_rgb_tw.."。"
			..TALENTS_Enh_desc2_tw.ED_VET_Keystone_1_1_rgb_tw)),

	--[+ KEYSTONE 1-2 - Tunnel Vision +]--
	create_template("talent_tree_vet_keys1_002_desc_en",
		{"loc_talent_veteran_snipers_focus_stamina_bonus_desc"}, {"en"},
			loc_text("{toughness_replenish_multiplier:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment for each Stack of "..COLORS_KWords.Focus_rgb..". In addition, "..COLORS_KWords.Weak_spot_rgb.." kills restore {stamina:%s} "..COLORS_KWords.Stamina_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Keystone_1_2_rgb)),
				-- toughness_replenish_multiplier: +5%, stamina: 10%, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys1_002_desc_fr",
		{"loc_talent_veteran_snipers_focus_stamina_bonus_desc"}, {"fr"},
			loc_text("{toughness_replenish_multiplier:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour chaque cumul de "..COLORS_KWords_fr.Focus_rgb_fr..". De plus, les éliminations sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." restaurent {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_1_2_rgb_fr)),
	--[+ Russian +]-- Тоннельное зрение 
	create_template("talent_tree_vet_keys1_002_desc_ru",
		{"loc_talent_veteran_snipers_focus_stamina_bonus_desc"}, {"ru"},
			loc_text("{toughness_replenish_multiplier:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за каждый заряд "..COLORS_KWords_ru.Focus_rgb_ru..". Убийства в "..COLORS_KWords_ru.Weakspot_rgb_ru.." дополнительно восстанавливают {stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_1_2_rgb_ru)),
	--[+ Translations Chinese - 視野狹窄 +]--
	-- 每層專注恢復{toughness_replenish_multiplier:%s}韌性。此外，弱點擊殺也會使你恢復{stamina:%s}耐力。
	create_template("talent_tree_vet_keys1_002_desc_tw",
	{"loc_talent_veteran_snipers_focus_stamina_bonus_desc"}, {"zh-tw"},
	loc_text(
			Arrow_up_green.." 每層 "..COLORS_KWords2_tw.Focus_rgb_tw.." 可恢復 {toughness_replenish_multiplier:%s} 的 "..COLORS_KWords_tw.Toughness_rgb_tw.." 。\n"
			..Arrow_up_green.." "..COLORS_KWords_tw.Weakspot_k_dmg_rgb_tw.." 時額外恢復 {stamina:%s} "..COLORS_KWords_tw.Stamina_rgb_tw.."。"
			..TALENTS_Enh_desc2_tw.ED_VET_Keystone_1_2_rgb_tw)),

	--[+ KEYSTONE 1-3 - Long Range Assassin +]--
	create_template("talent_tree_vet_keys1_003_desc_en",
		{"loc_talent_veteran_snipers_focus_increased_stacks_description"}, {"en"},
			loc_text("Increase Maximum Stacks of "..COLORS_KWords.Focus_rgb.." from {stacks:%s} to {new_stacks:%s}.")), -- stacks: 10, new_stacks: 15, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys1_003_desc_fr",
		{"loc_talent_veteran_snipers_focus_increased_stacks_description"}, {"fr"},
			loc_text("Augmente les cumuls maximum de "..COLORS_KWords_fr.Focus_rgb_fr.." de {stacks:%s} à {new_stacks:%s}.")),
	--[+ Russian +]-- Дальнобойный ассасин 
	create_template("talent_tree_vet_keys1_003_desc_ru",
		{"loc_talent_veteran_snipers_focus_increased_stacks_description"}, {"ru"},
			loc_text("С {stacks:%s} до {new_stacks:%s} увеличивается максимальное количество зарядов "..COLORS_KWords_ru.Focus_rgb_ru..".")),
	--[+ Translations Chinese - 遠程刺客 +]--
	--專注最大疊加層數從{stacks:%s}增加至{new_stacks:%s}。
	create_template("talent_tree_vet_keys1_003_desc_tw",
		{"loc_talent_veteran_snipers_focus_increased_stacks_description"}, {"zh-tw"},
		loc_text(
			Arrow_up_green.." 將 "..COLORS_KWords2_tw.Focus_rgb_tw.." 上限從 {stacks:%s} 提高至 {new_stacks:%s}。")),

	--[+ KEYSTONE 1-4 - Camouflage +]--
	create_template("talent_tree_vet_keys1_004_desc_en",
		{"loc_talent_veteran_snipers_focus_stacks_on_still_description"}, {"en"},
			loc_text("Gain {stack:%s} Stack of "..COLORS_KWords.Focus_rgb.." every {time:%s} seconds when Standing Still or Walking when Crouched.")), -- stack: 1, time: 0.75 -- stack(s)->stacks, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys1_004_desc_fr",
		{"loc_talent_veteran_snipers_focus_stacks_on_still_description"}, {"fr"},
			loc_text("Gagnez {stack:%s} cumul de "..COLORS_KWords_fr.Focus_rgb_fr.." toutes les {time:%s} secondes en restant immobile ou en marchant accroupi.")),
	--[+ Russian +]-- Камуфляж 
	create_template("talent_tree_vet_keys1_004_desc_ru",
		{"loc_talent_veteran_snipers_focus_stacks_on_still_description"}, {"ru"},
			loc_text("Вы получаете {stack:%s} заряд "..COLORS_KWords_ru.Focus_rgb_ru.." каждые {time:%s} секунды, если стоите на месте или передвигаетесь присев.")),
	--[+ Translations Chinese - 偽裝 +]--
	-- 站立不動或蹲下行走時，每{time:%s}秒獲得{stack:%s}層專注。
	create_template("talent_tree_vet_keys1_004_desc_tw",
		{"loc_talent_veteran_snipers_focus_stacks_on_still_description"}, {"zh-tw"},
		loc_text(
			"當靜止不動或蹲走時：\n"
			..Arrow_up_green.." 每 {time:%s} 秒獲得 {stack:%s} 層 "..COLORS_KWords2_tw.Focus_rgb_tw.." 。")),

	--[+ KEYSTONE 2 - Focus Target! +]--
	create_template("talent_tree_vet_keys2_000_desc_en",
		{"loc_talent_veteran_improved_tag_description"}, {"en"},
			loc_text("Gain "..COLORS_KWords.Focus_Target_rgb.." every {time:%s} seconds. Stacks {max_stacks:%s} times.\nTagging an Enemy applies the "..COLORS_KWords.Focus_Target_rgb.." Stacks to them, causing them to take {damage:%s} additional "..COLORS_KWords.Damage_rgb.." for each Stack, and resets your "..COLORS_KWords.Focus_Target_rgb.." Stacks to "..COLORS_Numbers.n_1_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Keystone_2_rgb)),
				-- time: 2, max_stacks: 5, damage: +4% -- -(), s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys2_000_desc_fr",
		{"loc_talent_veteran_improved_tag_description"}, {"fr"},
			loc_text("Gagnez "..COLORS_KWords_fr.Focus_Target_rgb_fr.." toutes les {time:%s} secondes. Cumulable jusqu'à {max_stacks:%s} fois.\nMarquer un ennemi applique les cumuls de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." sur lui, le faisant subir {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." supplémentaire par cumul, et réinitialise vos cumuls de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." à "..COLORS_Numbers.n_1_rgb.."."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_2_rgb_fr)),
	--[+ Russian +]-- Важная цель!
	create_template("talent_tree_vet_keys2_000_desc_ru",
		{"loc_talent_veteran_improved_tag_description"}, {"ru"},
			loc_text("Вы получаете заряд "..COLORS_KWords_ru.Focus_Target_rgb_ru.." каждые {time:%s} секунды. Суммируется {max_stacks:%s} раз.\nОтметка врага применяет все заряды "..COLORS_KWords_ru.Focus_Target_rgb_ru.." к нему. Враг получает дополнительно {damage:%s} "..COLORS_KWords_ru.Dmg_a_rgb_ru.." за каждый заряд. Количество зарядов "..COLORS_KWords_ru.Focus_Target_rgb_ru.." сбрасывается до "..COLORS_Numbers.n_1_rgb.."."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_2_rgb_ru)),
	--[+ Traditional Chinese - 鎖定目標 +]--
	-- 每{time:%s}秒獲得一次鎖定目標效果（可疊加{max_stacks:%s}層）。\n\n標記敵人將對其施加鎖定目標效果，每一層鎖定目標將使敵人受到{damage:%s}額外傷害，其後鎖定目標效果層數重置為1。
	create_template("talent_tree_vet_keys2_000_desc_tw",
		{"loc_talent_veteran_improved_tag_description"}, {"zh-tw"},
		loc_text(
			"每 {time:%s} 秒獲得一層 "..COLORS_KWords2_tw.Focus_Target_rgb_tw.." ，最多 {max_stacks:%s} 層。\n\n"
			..Arrow_right_.." 標記時，套用全部 "..COLORS_KWords2_tw.Focus_Target_rgb_tw.." 層數。\n"
			..Arrow_right_.." 該敵人每層將額外受到 {damage:%s} "..COLORS_KWords_tw.Dmg_a_rgb_tw.." 。\n"
			..Arrow_right_.." "..COLORS_KWords2_tw.Focus_Target_rgb_tw.." 會重置為 "..COLORS_Numbers.n_1_rgb.."。\n"
			..TALENTS_Enh_desc2_tw.ED_VET_Keystone_2_rgb_tw)),

	--[+ KEYSTONE 2-1 - Target Down! +]--
	create_template("talent_tree_vet_keys2_001_desc_en",
		{"loc_talent_veteran_improved_tag_dead_bonus_description"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." and {stamina:%s} "..COLORS_KWords.Stamina_rgb.." are replenished for each stack of "..COLORS_KWords.Focus_Target_rgb.." applied when an enemy you have Tagged dies, for you and Allies in "..COLORS_KWords.Coherency_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Keystone_2_1_rgb)),
				-- toughness: 5%, stamina: 5%, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys2_001_desc_fr",
		{"loc_talent_veteran_improved_tag_dead_bonus_description"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." et {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." sont récuperés  pour chaque cumul de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." appliqué lorsqu'un ennemi marqué meurt, pour vous et vos alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_2_1_rgb_fr)),
	--[+ Russian +]-- Цель поражена! 
	create_template("talent_tree_vet_keys2_001_desc_ru",
		{"loc_talent_veteran_improved_tag_dead_bonus_description"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и {stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru.." восполняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." за каждый заряд "..COLORS_KWords_ru.Focus_Target_rgb_ru..", когда вы убиваете отмеченного врага."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_2_1_rgb_ru)),
	--[+ Traditional Chinese - 目標擊倒! +]--
	-- 若標記的敵人死亡，每一層鎖定目標效果為你和協同中的隊友恢復{toughness:%s}韌性和{stamina:%s}耐力。
	create_template("talent_tree_vet_keys2_001_desc_tw",
		{"loc_talent_veteran_improved_tag_dead_bonus_description"}, {"zh-tw"},
		loc_text(
			"當擊殺 "..COLORS_KWords2_tw.Focus_Target_s_rgb_tw.." 的敵人時，\n"
			.."你與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友獲得以下效果：\n"
			..Arrow_up_green.." 每層 "..COLORS_KWords2_tw.Focus_Target_rgb_tw.." 恢復 {toughness:%s}  "..COLORS_KWords_tw.Toughness_m_rgb_tw.."。\n"
			..Arrow_up_green.." 每層 "..COLORS_KWords2_tw.Focus_Target_rgb_tw.." 恢復 {stamina:%s}  "..COLORS_KWords_tw.Stamina_rgb_m_tw.."。\n"
			..TALENTS_Enh_desc2_tw.ED_VET_Keystone_2_1_rgb_tw)),

	--[+ KEYSTONE 2-2 - Redirect Fire! +]--
	create_template("talent_tree_vet_keys2_002_desc_en",
		{"loc_talent_veteran_improved_tag_dead_coherency_bonus_description"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." is granted for each Stack of "..COLORS_KWords.Focus_Target_rgb.." applied when an enemy you have Tagged dies, to you and Allies in "..COLORS_KWords.Coherency_rgb..". Lasts {duration:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Keystone_2_2_rgb)),
				-- damage: +1.5%, duration: 10, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys2_002_desc_fr",
		{"loc_talent_veteran_improved_tag_dead_coherency_bonus_description"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." est accordé pour chaque cumul de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." appliqué lorsqu'un ennemi marqué meurt, pour vous et vos alliés en syntonie. Dure {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_2_2_rgb_fr)),
	--[+ Russian +]-- Перевести огонь! 
	create_template("talent_tree_vet_keys2_002_desc_ru",
		{"loc_talent_veteran_improved_tag_dead_coherency_bonus_description"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." за каждый заряд "..COLORS_KWords_ru.Focus_Target_rgb_ru..", когда вы убиваете отмеченного врага. Длится {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_2_2_rgb_ru)),
	--[+ Traditional Chinese - 轉移火力! +]--
	--若標記的敵人死亡，每一層鎖定目標效果為你和協同中的隊友減傷{damage:%s}，持續{duration:%s}秒。
	create_template("talent_tree_vet_keys2_002_desc_tw",
		{"loc_talent_veteran_improved_tag_dead_coherency_bonus_description"}, {"zh-tw"},
		loc_text(
			"當擊殺 "..COLORS_KWords2_tw.Focus_Target_s_rgb_tw.." 的敵人時，\n"
			.."你與 "..COLORS_KWords_tw.Coherencing_rgb_tw.." 的隊友獲得以下效果：\n"
			.."\n"
			..Arrow_up_green.." 每層 "..COLORS_KWords2_tw.Focus_Target_rgb_tw.." 增加 {damage:%s} "..COLORS_KWords_tw.Damage_rgb_tw.."。\n"
			..Arrow_right_.."  持續 {duration:%s} 秒。\n"
			..TALENTS_Enh_desc2_tw.ED_VET_Keystone_2_2_rgb_tw)),

	--[+ KEYSTONE 2-3 - Focused Fire +]--
	create_template("talent_tree_vet_keys2_003_desc_en",
		{"loc_talent_veteran_improved_tag_more_damage_description"}, {"en"},
			loc_text(COLORS_KWords.Focus_Target_rgb.." Max Stacks increased from "..COLORS_Numbers.n_5_rgb.." to {max_stacks:%s}.")),
				-- max_stacks: 8, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys2_003_desc_fr",
		{"loc_talent_veteran_improved_tag_more_damage_description"}, {"fr"},
			loc_text("Le nombre maximum de cumul de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." est augmentés de "..COLORS_Numbers.n_5_rgb.." à {max_stacks:%s}.")),
	--[+ Russian +]-- Сосредоточенный огонь 
	create_template("talent_tree_vet_keys2_003_desc_ru",
		{"loc_talent_veteran_improved_tag_more_damage_description"}, {"ru"},
			loc_text("С "..COLORS_Numbers.n_5_rgb.." до {max_stacks:%s} увеличивается максимальное количество зарядов "..COLORS_KWords_ru.Focus_Target_rgb_ru..".")),
	--[+ Traditional Chinese - 集中火力 +]--
	--鎖定目標最大層數增加至{max_stacks:%s}。
	create_template("talent_tree_vet_keys2_003_desc_tw",
		{"loc_talent_veteran_improved_tag_more_damage_description"}, {"zh-tw"},
		loc_text(
			"提高 "..COLORS_KWords2_tw.Focus_Target_rgb_tw.." 的最大層數：\n"
			..Arrow_up_green.." 從 "..COLORS_Numbers.n_5_rgb.." 層提高至 {max_stacks:%s} 層。\n")),

	--[+ KEYSTONE 3 - Weapons Specialist +]--
	create_template("talent_tree_vet_keys3_000_desc_en",
		{"loc_talent_veteran_weapon_switch_description"}, {"en"},
			loc_text("Gain "..COLORS_KWords.Rangedspec_rgb.." on Melee kills. Stacks {ranged_stacks:%s} times.\n"
				.."Gain "..COLORS_KWords.Meleespec_rgb.." on Ranged kill. Stacks {melee_stacks:%s} times.\n\n"
				.."When you wield your Ranged weapon, you activate your "..COLORS_KWords.Rangedspec_rgb.." effect, to gain:\n"
				.."{ranged_attack_speed:%s} Ranged Attack Speed and\n"
				.."{ranged_crit_chance:%s} Ranged "..COLORS_KWords.Crit_hit_rgb.." Chance on your next shot, per Stack. Lasts {ranged_duration:%s} seconds.\n\n"
				.."When you wield your Melee weapon, you activate your "..COLORS_KWords.Meleespec_rgb.." effect, to gain:\n"
				.."{melee_attack_speed:%s} Melee Attack Speed,\n"
				..COLORS_Numbers.n_plus_rgb.."{dodge_modifier:%s} Dodge Speed and Dodge Distance. Lasts {melee_duration:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Keystone_3_rgb)),
				-- ranged_stacks: 10, melee_stacks: 1, ranged_attack_speed: +2%, ranged_crit_chance: +33%, ranged_duration: 5, melee_attack_speed: +15%, dodge_modifier: 10%, melee_duration: 10, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys3_000_desc_fr",
		{"loc_talent_veteran_weapon_switch_description"}, {"fr"},
			loc_text("Obtenez "..COLORS_KWords_fr.Rangedspec_rgb_fr.." en éliminant des ennemis en mêlée. Cumule jusqu'à {ranged_stacks:%s} fois.\nObtenez "..COLORS_KWords_fr.Meleespec_rgb_fr.." en éliminant des ennemis à distance. Cumule jusqu'à {melee_stacks:%s} fois.\n\nLorsque vous maniez votre arme à distance, vous activez votre effet "..COLORS_KWords_fr.Rangedspec_rgb_fr..", pour obtenir :\n{ranged_attack_speed:%s} Vitesse d'attaque à distance et\n{ranged_crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_r_rgb_fr.." à distance lors de votre prochain tir, par cumul. Dure {ranged_duration:%s} secondes.\n\nLorsque vous maniez votre arme de mêlée, vous activez votre effet "..COLORS_KWords_fr.Meleespec_rgb_fr..", pour obtenir :\n{melee_attack_speed:%s} Vitesse d'attaque au corps à corps,\n"..COLORS_Numbers.n_plus_rgb.."{dodge_modifier:%s} Vitesse d'esquive et Distance d'esquive. Dure {melee_duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_rgb_fr)),
	--[+ Russian +]-- Специалист по оружию -- руоф Специалист по вооружениям
	create_template("talent_tree_vet_keys3_000_desc_ru",
		{"loc_talent_veteran_weapon_switch_description"}, {"ru"},
			loc_text("Вы получаете заряд "..COLORS_KWords_ru.Rangedspec_rgb_ru.." при убийстве в ближнем бою. Суммируется до {ranged_stacks:%s} раз.\nВы получаете заряд "..COLORS_KWords_ru.Meleespec_rgb_ru.." при убийстве в дальнем бою. Суммируется {melee_stacks:%s} раз.\n\nКогда вы берёте в руки оружие дальнего боя, вы активируете эффект "..COLORS_KWords_ru.Rangedspec_rgb_ru.." и получаете за каждый заряд прибавку для следующего выстрела:\n{ranged_attack_speed:%s} к скорости атаки и\n{ranged_crit_chance:%s} к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru..". Длится {ranged_duration:%s} секунд.\n\nКогда вы берёте в руки оружие ближнего боя, вы активируете эффект "..COLORS_KWords_ru.Meleespec_rgb_ru.." и получаете:\n{melee_attack_speed:%s} к скорости атаки,\n"..COLORS_Numbers.n_plus_rgb.."{dodge_modifier:%s} к скорости и дистанции уклонений. Длится {melee_duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_3_rgb_ru)),
	--[+ Traditional Chinese - 武器專家 +]--
	--近戰擊殺後獲得遠端專家效果（可疊加{ranged_stacks:%s}層）。遠端擊殺後獲得近戰專家效果（可疊加{melee_stacks:%s}層）。\n\n裝備遠端武器時，啟動遠端專家效果，每層效果使你的下一次射擊獲得{ranged_attack_speed:%s}遠端攻擊速度和{ranged_crit_chance:%s}遠程暴擊幾率，持續{ranged_duration:%s}秒。\n\n裝備近戰武器後，啟動近戰專家效果，使你獲得{melee_attack_speed:%s}近戰攻擊速度，{dodge_modifier:%s}閃避速度和閃避距離。持續{melee_duration:%s}秒。
	create_template("talent_tree_vet_keys3_000_desc_tw",
		{"loc_talent_veteran_weapon_switch_description"}, {"zh-tw"},
			loc_text(
			"當你使用近戰武器擊殺敵人時，\n"
			..Arrow_up_green.." 獲得一層 "..COLORS_KWords2_tw.Rangedspec_rgb_tw.."，可累積至 {ranged_stacks:%s} 層。\n"
			.."\n"
			.."當你使用遠程武器擊殺敵人時，\n"
			..Arrow_up_green.." 獲得一層 "..COLORS_KWords2_tw.Meleespec_rgb_tw.."，可累積至 {melee_stacks:%s} 層。\n"
			.."\n"
			.."裝備遠程武器時，\n"
			.."將啟動 "..COLORS_KWords2_tw.Rangedspec_rgb_tw.." 效果，每層提供：\n"
			..Arrow_up_green.." {ranged_attack_speed:%s} 遠程攻擊速度。\n"
			..Arrow_up_green.." {ranged_crit_chance:%s} "..COLORS_KWords_tw.Crt_u_chance_rgb_tw.."。\n"
			..Arrow_right_.."  效果持續 {ranged_duration:%s} 秒。\n"
			.."\n"
			.."裝備近戰武器時，\n"
			.."將啟動 "..COLORS_KWords2_tw.Meleespec_rgb_tw.." 效果，提供：\n"
			..Arrow_up_green.." {melee_attack_speed:%s} 近戰攻擊速度。\n"
			..Arrow_up_green.." {dodge_modifier:%s} 閃避速度與距離。\n"
			..Arrow_right_.."  效果持續 {melee_duration:%s} 秒。\n"
			..TALENTS_Enh_desc2_tw.ED_VET_Keystone_3_rgb_tw)),

	--[+ KEYSTONE 3-1 - Always Prepared +]--
	create_template("talent_tree_vet_keys3_001_desc_en",
		{"loc_talent_veteran_weapon_switch_replenish_ammo_description"}, {"en"},
			loc_text("Activating "..COLORS_KWords.Rangedspec_rgb.." replenishes up to {ammo:%s} of your missing ammo in your Clip from your Reserve, rounded up, for each Stack."
				..TALENTS_Enh_desc2.ED_VET_Keystone_3_1_rgb)),
				-- ammo: 3.3%, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys3_001_desc_fr",
		{"loc_talent_veteran_weapon_switch_replenish_ammo_description"}, {"fr"},
			loc_text("L'activation de "..COLORS_KWords_fr.Rangedspec_rgb_fr.." recharge jusqu'à {ammo:%s} de vos munitions manquantes dans votre chargeur à partir de votre réserve, arrondi au supérieur, par cumul."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_1_rgb_fr)),
	--[+ Russian +]-- Всегда готов 
	create_template("talent_tree_vet_keys3_001_desc_ru",
		{"loc_talent_veteran_weapon_switch_replenish_ammo_description"}, {"ru"},
			loc_text("Активация "..COLORS_KWords_ru.Rangedspec_rgb_ru.." заряжает до {ammo:%s} недостающих патронов в вашем магазине из резерва за каждый заряд. Округляется в большую сторону."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_3_1_rgb_ru)),
	--[+ Traditional Chinese - 有備無患 +]--
	-- 激活遠程專家時每層效果將為彈藥儲備中補充最多{ammo:%s}的彈藥損失，向上取整。
	--  {ammo:%s} was 3.3% buy actually it 33%.
	create_template("talent_tree_vet_keys3_001_desc_tw",
		{"loc_talent_veteran_weapon_switch_replenish_ammo_description"}, {"zh-tw"},
		loc_text(
			"啟動 "..COLORS_KWords2_tw.Rangedspec_rgb_tw.." 時，\n"
			.."\n"
			..Arrow_up_green.." 每層可補充 "..COLORS_Numbers.pc_33_rgb.." 彈匣的彈藥，\n"
			..Arrow_right_.." 從備彈中補至彈匣內。\n"
			..Arrow_right_.." 以無條件進位方式計算。\n"
			..TALENTS_Enh_desc2_tw.ED_VET_Keystone_3_1_rgb_tw)),

	--[+ KEYSTONE 3-2 - Invigorated +]--
	create_template("talent_tree_vet_keys3_002_desc_en",
		{"loc_talent_veteran_weapon_switch_replenish_stamina_description"}, {"en"},
			loc_text("Activating "..COLORS_KWords.Meleespec_rgb.." restores {stamina:%s} "..COLORS_KWords.Stamina_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Keystone_3_2_rgb)),
				-- stamina: 20%, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys3_002_desc_fr",
		{"loc_talent_veteran_weapon_switch_replenish_stamina_description"}, {"fr"},
			loc_text("L'activation de "..COLORS_KWords_fr.Meleespec_rgb_fr.." restaure {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_2_rgb_fr)),
	--[+ Russian +]-- Ободрение 
	create_template("talent_tree_vet_keys3_002_desc_ru",
		{"loc_talent_veteran_weapon_switch_replenish_stamina_description"}, {"ru"},
			loc_text("Активация "..COLORS_KWords_ru.Meleespec_rgb_ru.." восстанавливает {stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_3_2_rgb_ru)),
	--[+ Traditional Chinese - 活力煥發 +]--
	-- 激活近戰專家使恢復{stamina:%s}耐力。
	create_template("talent_tree_vet_keys3_002_desc_tw",
		{"loc_talent_veteran_weapon_switch_replenish_stamina_description"}, {"zh-tw"},
		loc_text(
			"啟動 "..COLORS_KWords2_tw.Meleespec_rgb_tw.." 時，\n"
			..Arrow_up_green.." 恢復 {stamina:%s} "..COLORS_KWords_tw.Stamina_rgb_tw.."。\n"
			..TALENTS_Enh_desc2_tw.ED_VET_Keystone_3_2_rgb_tw)),

	--[+ KEYSTONE 3-3 - On Your Toes +]--
	create_template("talent_tree_vet_keys3_003_desc_en",
		{"loc_talent_veteran_weapon_switch_replenish_toughness_description"}, {"en"},
			loc_text("Activating "..COLORS_KWords.Meleespec_rgb.." and "..COLORS_KWords.Rangedspec_rgb.." replenishes {toughness:%s} "..COLORS_KWords.Toughness_rgb..". {cooldown:%s} seconds Cooldown for each."
				..TALENTS_Enh_desc2.ED_VET_Keystone_3_3_rgb)),
				-- toughness: 20%, cooldown: 3, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys3_003_desc_fr",
		{"loc_talent_veteran_weapon_switch_replenish_toughness_description"}, {"fr"},
			loc_text("L'activation de "..COLORS_KWords_fr.Meleespec_rgb_fr.." et "..COLORS_KWords_fr.Rangedspec_rgb_fr.." restaure {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr..". Temps de recharge de {cooldown:%s} secondes pour chacun."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_3_rgb_fr)),
	--[+ Russian +]-- Наготове 
	create_template("talent_tree_vet_keys3_003_desc_ru",
		{"loc_talent_veteran_weapon_switch_replenish_toughness_description"}, {"ru"},
			loc_text("Активация "..COLORS_KWords_ru.Meleespec_rgb_ru.." или "..COLORS_KWords_ru.Rangedspec_rgb_ru.." восстанавливает {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..". {cooldown:%s} секунды восстанавливается каждый."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_3_3_rgb_ru)),
	--[+ Traditional Chinese - 時刻警覺 +]--
	-- 激活近戰專家和遠程專家時恢復{toughness:%s}韌性，冷卻時間{cooldown:%s}秒。
	create_template("talent_tree_vet_keys3_003_desc_tw",
		{"loc_talent_veteran_weapon_switch_replenish_toughness_description"}, {"zh-tw"},
		loc_text(
			"啟動 "..COLORS_KWords2_tw.Meleespec_rgb_tw.." 或 "..COLORS_KWords2_tw.Rangedspec_rgb_tw.." 時，\n"
			..Arrow_up_green.." 恢復 {toughness:%s} "..COLORS_KWords_tw.Toughness_rgb_tw.."。\n"
			..Arrow_right_.." 每次冷卻為 {cooldown:%s} 秒。\n"
			..TALENTS_Enh_desc2_tw.ED_VET_Keystone_3_3_rgb_tw)),

	--[+ KEYSTONE 3-4 - Fleeting Fire +]--
	create_template("talent_tree_vet_keys3_004_desc_en",
		{"loc_talent_veteran_weapon_switch_reload_speed_description"}, {"en"},
			loc_text("Activating "..COLORS_KWords.Rangedspec_rgb.." grants {reload_speed:%s} Reload Speed for {duration:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Keystone_3_4_rgb)),
				-- reload_speed: 20%, duration: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys3_004_desc_fr",
		{"loc_talent_veteran_weapon_switch_reload_speed_description"}, {"fr"},
			loc_text("L'activation de "..COLORS_KWords_fr.Rangedspec_rgb_fr.." accorde {reload_speed:%s} vitesse de rechargement pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_4_rgb_fr)),
	--[+ Russian +]-- Беглый огонь 
	create_template("talent_tree_vet_keys3_004_desc_ru",
		{"loc_talent_veteran_weapon_switch_reload_speed_description"}, {"ru"},
			loc_text("Активация "..COLORS_KWords_ru.Rangedspec_rgb_ru.." даёт {reload_speed:%s} к скорости перезарядки оружия на {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_3_4_rgb_ru)),
	--[+ Traditional Chinese - 集火 +]--
	-- 激活遠程專家時獲得{reload_speed:%s}換彈速度，持續{duration:%s}秒。
	create_template("talent_tree_vet_keys3_004_desc_tw",
		{"loc_talent_veteran_weapon_switch_reload_speed_description"}, {"zh-tw"},
		loc_text(
			"啟動 "..COLORS_KWords2_tw.Rangedspec_rgb_tw.." 時，\n"
			..Arrow_up_green.." 獲得 {reload_speed:%s} 換彈速度。\n"
			..Arrow_right_.." 效果持續 {duration:%s} 秒。\n"
			..TALENTS_Enh_desc2_tw.ED_VET_Keystone_3_4_rgb_tw)),

	--[+ KEYSTONE 3-5 - Conditioning +]--
	create_template("talent_tree_vet_keys3_005_desc_en",
		{"loc_talent_veteran_weapon_switch_stamina_reduction_description"}, {"en"},
			loc_text("Activating "..COLORS_KWords.Meleespec_rgb.." grants {stamina_reduction:%s} "..COLORS_KWords.Stamina_rgb.." Cost Reduction for {duration:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Keystone_3_5_rgb)),
				-- stamina_reduction: 25%, duration: 3, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_keys3_005_desc_fr",
		{"loc_talent_veteran_weapon_switch_stamina_reduction_description"}, {"fr"},
			loc_text("L'activation de "..COLORS_KWords_fr.Meleespec_rgb_fr.." accorde {stamina_reduction:%s} réduction du coût d'"..COLORS_KWords_fr.Stamina_rgb_fr.." pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_5_rgb_fr)),
	--[+ Russian +]-- Подготовка 
	create_template("talent_tree_vet_keys3_005_desc_ru",
		{"loc_talent_veteran_weapon_switch_stamina_reduction_description"}, {"ru"},
			loc_text("Активация "..COLORS_KWords_ru.Meleespec_rgb_ru.." даёт {stamina_reduction:%s} к сокращению затрат "..COLORS_KWords_ru.Stamina_rgb_ru.." на {duration:%s} секунды."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_3_5_rgb_ru)),
	--[+ Traditional Chinese - 身體調節 +]--
	-- 激活近戰專家時耐力消耗減少{stamina_reduction:%s}，持續{duration:%s}秒。
	create_template("talent_tree_vet_keys3_005_desc_tw",
		{"loc_talent_veteran_weapon_switch_stamina_reduction_description"}, {"zh-tw"},
		loc_text(
			"啟動 "..COLORS_KWords2_tw.Meleespec_rgb_tw.." 時，\n"
			..Arrow_up_green.." {stamina_reduction:%s} "..COLORS_KWords_tw.Stamina_c_r_rgb_tw.." 減少。\n"
			..Arrow_right_.." 效果持續 {duration:%s} 秒。\n"
			..TALENTS_Enh_desc2_tw.ED_VET_Keystone_3_5_rgb_tw)),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Longshot +]--
	create_template("talent_tree_vet_pas_001_desc_en",
		{"loc_talent_veteran_increased_damage_based_on_range_desc"}, {"en"},
			loc_text("Deal up to {max_damage:%s} Ranged Base "..COLORS_KWords.Damage_rgb..". Bonus is reduced the nearer the target."
				..TALENTS_Enh_desc2.ED_VET_Passive_1_rgb)),
				-- max_damage: +20%, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_001_desc_fr",
		{"loc_talent_veteran_increased_damage_based_on_range_desc"}, {"fr"},
			loc_text("Inflige jusqu'à {max_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de base à distance. Le bonus est réduit plus la cible est proche."..TALENTS_Enh_desc2_fr.ED_VET_Passive_1_rgb_fr)),
	--[+ Russian +]-- Дальний выстрел -- руоф Далекая перспектива
	create_template("talent_tree_vet_pas_001_desc_ru",
		{"loc_talent_veteran_increased_damage_based_on_range_desc"}, {"ru"},
			loc_text("До {max_damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." для дальнобойных атак. Чем ближе цель, тем меньше прибавка."..TALENTS_Enh_desc2_ru.ED_VET_Passive_1_rgb_ru)),

	--[+ Passive 2 - Close Order Drill +]--
	create_template("talent_tree_vet_pas_002_desc_en",
		{"loc_talent_veteran_toughness_damage_reduction_per_ally_description"}, {"en"},
			loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_11_rgb.." "..COLORS_KWords.Toughness_dmg_red_rgb.." per Ally in "..COLORS_KWords.Coherency_rgb..". Up to {toughness:%s}."
				..TALENTS_Enh_desc2.ED_VET_Passive_2_rgb)),
				-- toughness: +33%, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_002_desc_fr",
		{"loc_talent_veteran_toughness_damage_reduction_per_ally_description"}, {"fr"},
			loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_11_rgb.." de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." par allié en syntonie. Jusqu'à {toughness:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Passive_2_rgb_fr)),
	--[+ Russian +]-- Строевая подготовка 
	create_template("talent_tree_vet_pas_002_desc_ru",
		{"loc_talent_veteran_toughness_damage_reduction_per_ally_description"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_11_rgb.." к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." за каждого союзника в "..COLORS_KWords_ru.Coherency_rgb_ru..". Вплоть до {toughness:%s}."..TALENTS_Enh_desc2_ru.ED_VET_Passive_2_rgb_ru)),

	--[+ Passive 3 - One Motion +]--
	create_template("talent_tree_vet_pas_003_desc_en",
		{"loc_talent_veteran_reduce_swap_time_desc"}, {"en"},
			loc_text("{swap_speed} Weapon Swap Speed."
				..TALENTS_Enh_desc2.ED_VET_Passive_3_rgb)),
				-- swap_speed: +25%
	--[+ French +]--
	create_template("talent_tree_vet_pas_003_desc_fr",
		{"loc_talent_veteran_reduce_swap_time_desc"}, {"fr"},
			loc_text("{swap_speed:%s} Vitesse de changement d'arme."..TALENTS_Enh_desc2_fr.ED_VET_Passive_3_rgb_fr)),
	--[+ Russian +]-- В одно движение -- руоф Одно движение
	create_template("talent_tree_vet_pas_003_desc_ru",
		{"loc_talent_veteran_reduce_swap_time_desc"}, {"ru"},
			loc_text("{swap_speed} к скорости смены оружия."..TALENTS_Enh_desc2_ru.ED_VET_Passive_3_rgb_ru)),

	--[+ Passive 4 - Exhilarating Takedown +]--
	create_template("talent_tree_vet_pas_004_desc_en",
		{"loc_talent_veteran_toughness_on_weakspot_kill_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." is replenished and "..COLORS_Numbers.n_1_rgb.." Stack of {toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." is gained for {duration:%s} seconds on a Ranged "..COLORS_KWords.Weak_spot_rgb.." kill. Stacks {stacks:%s} times."
				..TALENTS_Enh_desc2.ED_VET_Passive_4_rgb)),
				-- toughness: 15%, toughness_damage_reduction: +10%, duration: 8, stacks: 3, rewrite, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_004_desc_fr",
		{"loc_talent_veteran_toughness_on_weakspot_kill_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." est récuperés et "..COLORS_Numbers.n_1_rgb.." cumul de {toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." est gagné pour {duration:%s} secondes lors d'une élimination à distance sur "..COLORS_KWords_fr.Weakspot_rgb_fr..". Cumule jusqu'à {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_VET_Passive_4_rgb_fr)),
	--[+ Russian +]-- Подбадривающее убийство -- руоф Бодрящее сокрушение
	create_template("talent_tree_vet_pas_004_desc_ru",
		{"loc_talent_veteran_toughness_on_weakspot_kill_desc"}, {"ru"},
			loc_text("Вы восстанавливаете {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и получаете "..COLORS_Numbers.n_1_rgb.." заряд {toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." на {duration:%s} секунд при убийстве врага в "..COLORS_KWords_ru.Weakspothit_rgb_ru..". Суммируется до {stacks:%s} раз."..TALENTS_Enh_desc2_ru.ED_VET_Passive_4_rgb_ru)),

	--[+ Passive 5 - Volley Adept +]--
	create_template("talent_tree_vet_pas_005_desc_en",
		{"loc_talent_veteran_reload_speed_on_elite_kill_desc"}, {"en"},
			loc_text("{reload_speed:%s} Reload Speed on Elite and Specialist Enemy Kill."
				..TALENTS_Enh_desc2.ED_VET_Passive_5_rgb)),
				-- reload_speed: +30%, &->and
	--[+ French +]--
	create_template("talent_tree_vet_pas_005_desc_fr",
		{"loc_talent_veteran_reload_speed_on_elite_kill_desc"}, {"fr"},
			loc_text("{reload_speed:%s} vitesse de rechargement lors de l'élimination d'un ennemi d'élite ou spécialiste."..TALENTS_Enh_desc2_fr.ED_VET_Passive_5_rgb_fr)),
	--[+ Russian +]-- Умелый залп -- руоф Адепт залпа
	create_template("talent_tree_vet_pas_005_desc_ru",
		{"loc_talent_veteran_reload_speed_on_elite_kill_desc"}, {"ru"},
			loc_text("{reload_speed:%s} к скорости перезарядки при убийстве элитных врагов или специалистов."..TALENTS_Enh_desc2_ru.ED_VET_Passive_5_rgb_ru)),

	--[+ Passive 6 - Charismatic +]--
	create_template("talent_tree_vet_pas_006_desc_en",
		{"loc_talent_veteran_increased_aura_radius_description"}, {"en"},
			loc_text("{radius:%s} Aura radius."
				..TALENTS_Enh_desc2.ED_VET_Passive_6_rgb)),
				-- radius: +50%
	--[+ French +]--
	create_template("talent_tree_vet_pas_006_desc_fr",
		{"loc_talent_veteran_increased_aura_radius_description"}, {"fr"},
			loc_text("{radius:%s} rayon d'aura."..TALENTS_Enh_desc2_fr.ED_VET_Passive_6_rgb_fr)),
	--[+ Russian +]-- Харизматичный -- руоф Обаятельный
	create_template("talent_tree_vet_pas_006_desc_ru",
		{"loc_talent_veteran_increased_aura_radius_description"}, {"ru"},
			loc_text("{radius:%s} к радиусу ауры "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Passive_6_rgb_ru)),

	--[+ Passive 7 - Confirmed Kill +]--
	create_template("talent_tree_vet_pas_007_desc_en",
		{"loc_talent_veteran_toughness_on_elite_kill_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." is replenished on killing an Elite or Specialist Enemy, and a further {toughness_over_time:%s} "..COLORS_KWords.Toughness_rgb.." over {duration:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Passive_7_rgb)),
				-- toughness: 10%, toughness_over_time: 20%, duration: 10, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_007_desc_fr",
		{"loc_talent_veteran_toughness_on_elite_kill_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." est restauré lors d'une éliminant d'élite ou de spécialiste, et {toughness_over_time:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." supplémentaire pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_7_rgb_fr)),
	--[+ Russian +]-- Подтверждённое убийство -- руоф Подтвержденное убийство
	create_template("talent_tree_vet_pas_007_desc_ru",
		{"loc_talent_veteran_toughness_on_elite_kill_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при убийстве элитного врага или специалиста сразу, а также ещё дополнительно {toughness_over_time:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." в течение {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_7_rgb_ru)),

	--[+ Passive 8 - Tactical Reload +]--
	create_template("talent_tree_vet_pas_008_desc_en",
		{"loc_talent_veteran_reload_speed_non_empty_mag_desc"}, {"en"},
			loc_text("{reload_speed:%s} Reload Speed if your weapon contains Ammo."
				..TALENTS_Enh_desc2.ED_VET_Passive_8_rgb)),
				-- reload_speed: +25%
	--[+ French +]--
	create_template("talent_tree_vet_pas_008_desc_fr",
		{"loc_talent_veteran_reload_speed_non_empty_mag_desc"}, {"fr"},
			loc_text("{reload_speed:%s} vitesse de rechargement si votre arme contient des munitions."..TALENTS_Enh_desc2_fr.ED_VET_Passive_8_rgb_fr)),
	--[+ Russian +]-- Тактическая перезарядка 
	create_template("talent_tree_vet_pas_008_desc_ru",
		{"loc_talent_veteran_reload_speed_non_empty_mag_desc"}, {"ru"},
			loc_text("{reload_speed:%s} к скорости перезарядки, если в оружии остались патроны."..TALENTS_Enh_desc2_ru.ED_VET_Passive_8_rgb_ru)),

	--[+ Passive 9 - Out for Blood +]--
	create_template("talent_tree_vet_pas_009_desc_en",
		{"loc_talent_veteran_all_kills_replenish_toughness_description"}, {"en"},
			loc_text("{toughness:%s} additional "..COLORS_KWords.Toughness_rgb.." is replenished with each kill."
				..TALENTS_Enh_desc2.ED_VET_Passive_9_rgb)),
				-- toughness: 5%, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_009_desc_fr",
		{"loc_talent_veteran_all_kills_replenish_toughness_description"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." supplémentaire est restauré avec chaque élimination."..TALENTS_Enh_desc2_fr.ED_VET_Passive_9_rgb_fr)),
	--[+ Russian +]-- На тропе войны -- руоф В поисках крови
	create_template("talent_tree_vet_pas_009_desc_ru",
		{"loc_talent_veteran_all_kills_replenish_toughness_description"}, {"ru"},
			loc_text("Вы восстанавливаете {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." дополнительно за каждое убийство."..TALENTS_Enh_desc2_ru.ED_VET_Passive_9_rgb_ru)),

	--[+ Passive 10 - Get Back in the Fight! +]--
	create_template("talent_tree_vet_pas_010_desc_en",
		{"loc_talent_veteran_movement_bonus_on_toughness_broken_desc"}, {"en"},
			loc_text("{stamina_percent:%s} "..COLORS_KWords.Stamina_rgb.." restored, along with "..COLORS_KWords.Stun_rgb.." and Slow Immunity, for {duration:%s} seconds when "..COLORS_KWords.Toughness_rgb.." is broken.\n\n"
				.."Cooldown {cooldown:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Passive_10_rgb)),
				-- duration: 6, stamina_percent: +50%, cooldown: 30, rewrite, &->and, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_010_desc_fr",
		{"loc_talent_veteran_movement_bonus_on_toughness_broken_desc"}, {"fr"},
			loc_text("{stamina_percent:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." est restauré, avec une immunité au "..COLORS_KWords_fr.Stuns_rgb_fr.." et au ralentissement, pendant {duration:%s} secondes lorsque la "..COLORS_KWords_fr.Toughness_rgb_fr.." tombe à "..COLORS_Numbers.n_0_rgb..".\n\n{cooldown:%s} secondes de recharge."..TALENTS_Enh_desc2_fr.ED_VET_Passive_10_rgb_fr)),
	--[+ Russian +]-- Возвращайся в бой! -- руоф Вернуться в бой!
	create_template("talent_tree_vet_pas_010_desc_ru",
		{"loc_talent_veteran_movement_bonus_on_toughness_broken_desc"}, {"ru"},
			loc_text("Если вашу "..COLORS_KWords_ru.Tghnss_rgb_ru.." пробили, вы восполняете {stamina_percent:%s} "..COLORS_KWords_ru.Stamina_rgb_ru..", а также получаете иммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru.." и замедлению на {duration:%s} секунд.\n\nВосстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_10_rgb_ru)),

	--[+ Passive 11 - Catch a Breath +]--
	create_template("talent_tree_vet_pas_011_desc_en",
		{"loc_talent_veteran_replenish_toughness_outside_melee_hit_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." per second is replenished after not being targeted by a Melee Attack for {duration:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Passive_11_rgb)),
				-- toughness: 5%, range: 8, m->meters, colors
	--[+ French +]--Reprendre son souffle !!! ligne géo /!\
	create_template("talent_tree_vet_pas_011_desc_fr",
		{"loc_talent_veteran_replenish_toughness_outside_melee_hit_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." régénérés par seconde si le Vétéran n'a pas subit ou bloqué d'attaque de Mélée pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_11_rgb_fr)),
	--[+ Russian +]-- Переведи дух -- руоф Передышка
	create_template("talent_tree_vet_pas_011_desc_ru",
		{"loc_talent_veteran_replenish_toughness_outside_melee_hit_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду, если вы не были целью атаки ближнего боя в течение {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_11_rgb_ru)),

	--[+ Passive 12 - Grenade Tinkerer +]--
	create_template("talent_tree_vet_pas_012_desc_en",
		{"loc_talent_veteran_improved_grenades_desc"}, {"en"},
			loc_text("Improve your chosen Grenade:\n"
				.."{krak_grenade:%s}: {krak:%s} "..COLORS_KWords.Damage_rgb..".\n"
				.."{frag_grenade:%s}: {frag_damage:%s} "..COLORS_KWords.Damage_rgb.." and Radius.\n"
				.."{smoke_grenade:%s}: {smoke:%s} Duration."
				..TALENTS_Enh_desc2.ED_VET_Passive_12_rgb)),
				-- krak_grenade: Krak Grenade, krak: +50%, frag_grenade: Frag Grenade, frag_damage: +25%, smoke_grenade: Smoke Grenade, smoke: +100%, &->and, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_012_desc_fr",
		{"loc_talent_veteran_improved_grenades_desc"}, {"fr"},
			loc_text("Améliorez votre grenade choisie:\n{krak_grenade:%s}: {krak:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..".\n{frag_grenade:%s}: {frag_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." et de rayon.\n{smoke_grenade:%s}: {smoke:%s} durée."..TALENTS_Enh_desc2_fr.ED_VET_Passive_12_rgb_fr)),
	--[+ Russian +]-- Гранатный мастер -- руоф Любитель гранат
	create_template("talent_tree_vet_pas_012_desc_ru",
		{"loc_talent_veteran_improved_grenades_desc"}, {"ru"},
			loc_text("Выбранная граната улучшается:\n{krak_grenade:%s}: {krak:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..".\n{frag_grenade:%s}: {frag_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и радиусу.\n{smoke_grenade:%s}: {smoke:%s} к длительности."..TALENTS_Enh_desc2_ru.ED_VET_Passive_12_rgb_ru)),

	--[+ Passive 13 - Covering Fire +]--
	create_template("talent_tree_vet_pas_013_desc_en",
		{"loc_talent_veteran_replenish_toughness_and_boost_allies_desc"}, {"en"},
			loc_text("When you kill an enemy with a Ranged Attack, Allies within {radius:%s} meters of the target Replenish {toughness:%s} "..COLORS_KWords.Toughness_rgb.." and receive {base_damage:%s} to all Base "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Passive_13_rgb)),
				-- radius: 5, toughness: 15%, base_damage: +10%, duration: 3, &->and s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_013_desc_fr",
		{"loc_talent_veteran_replenish_toughness_and_boost_allies_desc"}, {"fr"},
			loc_text("Lorsque d'une élimination à distance, les alliés dans un rayon de {radius:%s} mètres de la cible régénèrent {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." et reçoivent {base_damage:%s} à tous les "..COLORS_KWords_fr.Damage_rgb_fr.." de base pour {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_13_rgb_fr)),
	--[+ Russian +]-- Прикрывающий огонь -- руоф Прикрытие огнем
	create_template("talent_tree_vet_pas_013_desc_ru",
		{"loc_talent_veteran_replenish_toughness_and_boost_allies_desc"}, {"ru"},
			loc_text("Когда вы убиваете врага из оружия дальнего боя, союзники в радиусе {radius:%s} метров от цели восполняют {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и получают {base_damage:%s} ко всему базовому "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунды."..TALENTS_Enh_desc2_ru.ED_VET_Passive_13_rgb_ru)),

	--[+ Passive 14 - Serrated Blade +]--
	create_template("talent_tree_vet_pas_014_desc_en",
		{"loc_talent_veteran_hits_cause_bleed_desc"}, {"en"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{stacks:%s} Stack of "..COLORS_KWords.Bleed_rgb.." to the target on Melee Hit. Up to "..COLORS_Numbers.n_16_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Passive_14_rgb)),
				-- stacks: 1 -- Stack(s)->Stacks, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_014_desc_fr",
		{"loc_talent_veteran_hits_cause_bleed_desc"}, {"fr"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{stacks:%s} cumul de "..COLORS_KWords_fr.Bleed_rgb_fr.." sur la cible lors des coups de mêlée. Jusqu'à "..COLORS_Numbers.n_16_rgb.." cumuls."..TALENTS_Enh_desc2_fr.ED_VET_Passive_14_rgb_fr)),
	--[+ Russian +]-- Зазубренный клинок -- руоф Зазубренное лезвие
	create_template("talent_tree_vet_pas_014_desc_ru",
		{"loc_talent_veteran_hits_cause_bleed_desc"}, {"ru"},
			loc_text("{stacks:%s} заряд "..COLORS_KWords_ru.Bleed_rgb_ru.." получает цель при ударе в ближнем бою. До "..COLORS_Numbers.n_16_rgb.." зарядов максимум."..TALENTS_Enh_desc2_ru.ED_VET_Passive_14_rgb_ru)),

	--[+ Passive 15 - Agile Engagement +]--
	create_template("talent_tree_vet_pas_015_desc_en",
		{"loc_talent_veteran_kill_grants_damage_to_other_slot_desc"}, {"en"},
			loc_text("{damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." on killing an enemy with a Melee attack.\n"
				.."{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." on killing an enemy with a Ranged attack.\n"
				.."Lasts {duration:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Passive_15_rgb)),
				-- damage: +25%, duration: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_015_desc_fr",
		{"loc_talent_veteran_kill_grants_damage_to_other_slot_desc"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de distance en tuant un ennemi avec une attaque de mêlée.\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mêlée lors d'une éliminant à distance.\nDure {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_15_rgb_fr)),
	--[+ Russian +]-- Ловкое взаимодействие 
	create_template("talent_tree_vet_pas_015_desc_ru",
		{"loc_talent_veteran_kill_grants_damage_to_other_slot_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в дальнем бою при убийстве врага в ближнем бою.\n{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в ближнем бою при убийстве врага в дальнем бою.\nДлится {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_15_rgb_ru)),

	--[+ Passive 16 - Kill Zone +]--
	create_template("talent_tree_vet_pas_016_desc_en",
		{"loc_talent_veteran_ranged_power_out_of_melee_new_desc"}, {"en"},
			loc_text("{ranged_damage:%s} Base Ranged "..COLORS_KWords.Damage_rgb.." when you have avoided Melee Attacks for {cooldown:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Passive_16_rgb)),
				-- ranged_damage: +20%, radius: 8, m->meters, colors
	--[+ French +]--Zone délimination !!! ligne géo
	create_template("talent_tree_vet_pas_016_desc_fr",
		{"loc_talent_veteran_ranged_power_out_of_melee_new_desc"}, {"fr"},
			loc_text("{ranged_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de base à Distance lorsqu'il n'a pas subit ou bloqué d'attaque de Mélée."..TALENTS_Enh_desc2_fr.ED_VET_Passive_16_rgb_fr)),
	--[+ Russian +]-- Зона поражение 
	create_template("talent_tree_vet_pas_016_desc_ru",
		{"loc_talent_veteran_ranged_power_out_of_melee_new_desc"}, {"ru"},
			loc_text("{ranged_damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." для дальнобойных атак, если вы избегали атак ближнего боя в течение {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_16_rgb_ru)),

	--[+ Passive 17 - Opening Salvo +]--
	create_template("talent_tree_vet_pas_017_desc_en",
		{"loc_talent_veteran_bonus_crit_chance_on_ammo_desc"}, {"en"},
			loc_text("The first {ammo:%s} Ammo after a Reload has {crit_chance:%s} Ranged "..COLORS_KWords.Crit_hit_rgb.." Chance."
				..TALENTS_Enh_desc2.ED_VET_Passive_17_rgb)),
				-- ammo: 20%, crit_chance: +10%, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_017_desc_fr",
		{"loc_talent_veteran_bonus_crit_chance_on_ammo_desc"}, {"fr"},
			loc_text("Les premières {ammo:%s} munitions après un rechargement ont {crit_chance:%s} de "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.." à distance."..TALENTS_Enh_desc2_fr.ED_VET_Passive_17_rgb_fr)),
	--[+ Russian +]-- Открывающий залп 
	create_template("talent_tree_vet_pas_017_desc_ru",
		{"loc_talent_veteran_bonus_crit_chance_on_ammo_desc"}, {"ru"},
			loc_text("Первые {ammo:%s} патронов после перезарядки имеют {crit_chance:%s} к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Passive_17_rgb_ru)),

	--[+ Passive 18 - Field Improvisation +]--
	create_template("talent_tree_vet_pas_018_desc_en",
		{"loc_talent_veteran_better_deployables_description"}, {"en"},
			loc_text("Medi-Packs:\n"
				.."Heal {damage_heal:%s} faster,\n"
				.."Replenish {toughness:%s} "..COLORS_KWords.Toughness_rgb.." per second,\n"
				.."Cleanse "..COLORS_KWords.Corruption_rgb.." up to the next "..COLORS_KWords.Wound_rgb..".\n\n"
				.."Ammo Crates also restore Grenades."
				..TALENTS_Enh_desc2.ED_VET_Passive_18_rgb)),
				-- damage_heal: +100%, toughness: 1%, rewrite, &->and, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_018_desc_fr",
		{"loc_talent_veteran_better_deployables_description"}, {"fr"},
			loc_text("Caisse médical:\nSoignent {damage_heal:%s} plus rapidement,\nRégénèrent {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par seconde,\nPurifie "..COLORS_KWords_fr.Corruption_rgb_fr.." jusqu'à la prochaine "..COLORS_KWords_fr.Wound_rgb_fr..".\n\nLes caisses de munitions restaurent également les grenades."..TALENTS_Enh_desc2_fr.ED_VET_Passive_18_rgb_fr)),
	--[+ Russian +]-- Полевая импровизация 
	create_template("talent_tree_vet_pas_018_desc_ru",
		{"loc_talent_veteran_better_deployables_description"}, {"ru"},
			loc_text("Медпаки:\n"
				.."{damage_heal:%s} к скорости лечения,\n"
				.."{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду и очищается "..COLORS_KWords_ru.Corruption_a_rgb_ru.." вплоть до следующей "..COLORS_KWords_ru.Wound_y_rgb_ru..".\n"
				.."Ящики с боеприпасами также восстанавливают гранаты."..TALENTS_Enh_desc2_ru.ED_VET_Passive_18_rgb_ru)),

	--[+ Passive 19 - Twinned Blast +]--
	create_template("talent_tree_vet_pas_019_desc_en",
		{"loc_talent_veteran_extra_grenade_throw_chance_desc"}, {"en"},
			loc_text("{chance:%s} chance to throw an additional Grenade but this still only consumes a single Grenade."
				..TALENTS_Enh_desc2.ED_VET_Passive_19_rgb)),
				-- chance: 20%
	--[+ French +]--
	create_template("talent_tree_vet_pas_019_desc_fr",
		{"loc_talent_veteran_extra_grenade_throw_chance_desc"}, {"fr"},
			loc_text("{chance:%s} de chance de lancer une grenade supplémentaire mais cela ne consomme qu'une seule grenade."..TALENTS_Enh_desc2_fr.ED_VET_Passive_19_rgb_fr)),
	--[+ Russian +]-- Двойной взрыв -- Спаренный взрыв
	create_template("talent_tree_vet_pas_019_desc_ru",
		{"loc_talent_veteran_extra_grenade_throw_chance_desc"}, {"ru"},
			loc_text("{chance:%s} шанс бросить дополнительную гранату, потратив по прежнему одну."..TALENTS_Enh_desc2_ru.ED_VET_Passive_19_rgb_ru)),

	--[+ Passive 20 - Demolition Stockpile +]--
	create_template("talent_tree_vet_pas_020_desc_en",
		{"loc_talent_veteran_replenish_grenade_desc"}, {"en"},
			loc_text("Replenish {amount:%s} Grenade every {time:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Passive_20_rgb)),
				-- amount: 1, time: 60, Grenade(s)->Grenade, s->seconds
	--[+ French +]--
	create_template("talent_tree_vet_pas_020_desc_fr",
		{"loc_talent_veteran_replenish_grenade_desc"}, {"fr"},
			loc_text("Vous régénérez {amount:%s} Grenade toutes les {time:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_20_rgb_fr)),
	--[+ Russian +]-- Склад взрывчатки 
	create_template("talent_tree_vet_pas_020_desc_ru",
		{"loc_talent_veteran_replenish_grenade_desc"}, {"ru"},
			loc_text("Вы получаете {amount:%s} гранату каждые {time:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_20_rgb_ru)),

	--[+ Passive 21 - Grenadier +]--
	create_template("talent_tree_vet_pas_021_desc_en",
		{"loc_talent_veteran_extra_grenade_description"}, {"en"},
			loc_text("You can carry {ammo:%s} extra Grenade."
				..TALENTS_Enh_desc2.ED_VET_Passive_21_rgb)),
				-- ammo: 1, Grenade(s)->Grenade
	--[+ French +]--
	create_template("talent_tree_vet_pas_021_desc_fr",
		{"loc_talent_veteran_extra_grenade_description"}, {"fr"},
			loc_text("Vous pouvez porter {ammo:%s} grenade supplémentaire."..TALENTS_Enh_desc2_fr.ED_VET_Passive_21_rgb_fr)),
	--[+ Russian +]-- Гренадёр -- руоф Гренадер
	create_template("talent_tree_vet_pas_021_desc_ru",
		{"loc_talent_veteran_extra_grenade_description"}, {"ru"},
			loc_text("Вы можете нести {ammo:%s} дополнительную гранату."..TALENTS_Enh_desc2_ru.ED_VET_Passive_21_rgb_ru)),

	--[+ Passive 22 - Leave No One Behind +]--
	create_template("talent_tree_vet_pas_022_desc_en",
		{"loc_talent_veteran_movement_speed_towards_downed_description"}, {"en"},
			loc_text("{revive_speed:%s} Assist Speed and Revive Speed. {movement_speed:%s} Movement Speed and "..COLORS_KWords.Stun_rgb.." Immunity when moving towards a Knocked Down or Incapacitated Ally. Whenever you Revive a Knocked Down Ally, they receive {damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Reduction for {duration:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Passive_22_rgb)),
				-- revive_speed: +20%, movement_speed: +20%, damage_reduction: +33%, duration: 5, &->and, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_022_desc_fr",
		{"loc_talent_veteran_movement_speed_towards_downed_description"}, {"fr"},
			loc_text("{revive_speed:%s} Vitesse d'assistance et de réanimation. {movement_speed:%s} Vitesse de déplacement et une immunité aux "..COLORS_KWords_fr.Stuns_rgb_fr.." en se dirigeant vers un allié renversé ou incapacité. Chaque fois que vous réanimez un allié renversé, il reçoit {damage_reduction:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_22_rgb_fr)),
	--[+ Russian +]-- Никого не оставляйте позади 
	create_template("talent_tree_vet_pas_022_desc_ru",
		{"loc_talent_veteran_movement_speed_towards_downed_description"}, {"ru"},
			loc_text("{revive_speed:%s} к скорости поднятия и возрождения союзников.\n{movement_speed:%s} к скорости движения и иммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru..", если вы двигаетесь в сторону сбитого с ног или выведенного из строя союзника. Пока вы поднимаете сбитых с ног союзников, они получают {damage_reduction:%s} сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_22_rgb_ru)),

	--[+ Passive 23 - Precision Strikes +]--
	create_template("talent_tree_vet_pas_023_desc_en",
		{"loc_talent_veteran_increased_weakspot_damage_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Weakspot_dmg_rgb.." from Melee and Ranged attacks."
				..TALENTS_Enh_desc2.ED_VET_Passive_23_rgb)),
				-- damage: +30%, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_023_desc_fr",
		{"loc_talent_veteran_increased_weakspot_damage_desc"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." des attaques de mêlée et à distance."..TALENTS_Enh_desc2_fr.ED_VET_Passive_23_rgb_fr)),
	--[+ Russian +]-- Точные удары 
	create_template("talent_tree_vet_pas_023_desc_ru",
		{"loc_talent_veteran_increased_weakspot_damage_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." для атак ближнего и дальнего боя."..TALENTS_Enh_desc2_ru.ED_VET_Passive_23_rgb_ru)),

	--[+ Passive 24 - Determined +]--
	create_template("talent_tree_vet_pas_024_desc_en",
		{"loc_talent_veteran_supression_immunity_desc"}, {"en"},
			loc_text("Grants Veteran immunity to Suppression dealt by Ranged enemies at all times.")),
	--[+ French +]--
	create_template("talent_tree_vet_pas_024_desc_fr",
		{"loc_talent_veteran_supression_immunity_desc"}, {"fr"},
			loc_text("Confère au vétéran une immunité contre la suppression infligée par les ennemis à distance en tout temps.")),
	--[+ Russian +]-- Решительность 
	create_template("talent_tree_vet_pas_024_desc_ru",
		{"loc_talent_veteran_supression_immunity_desc"}, {"ru"},
			loc_text("Вы получаете постоянный иммунитет к подавлению от вражеских выстрелов.")),

	--[+ Passive 25 - Deadshot +]--
	create_template("talent_tree_vet_pas_025_desc_en",
		{"loc_talent_veteran_ads_drains_stamina_boost_desc"}, {"en"},
			loc_text("While aiming and being above 0 "..COLORS_KWords.Stamina_rgb.." you Gain:\n"
				.."{crit_chance:%s} "..COLORS_KWords.Crit_chance_rgb..",\n"
				.."{sway_reduction:%s} Sway Reduction,\n"
				..COLORS_Numbers.pc_p19_rgb.." Spread Reduction and\n"
				..COLORS_Numbers.pc_p12_rgb.." Recoil Reduction,\n"
				.."but Drains:\n"
				.."{stamina:%s} "..COLORS_KWords.Stamina_rgb.." per second and\n"
				.."{stamina_per_shot:%s} an additional "..COLORS_KWords.Stamina_rgb.." per shot."
				..TALENTS_Enh_desc2.ED_VET_Passive_25_rgb)),
				-- crit_chance: +25%, sway_reduction: +60%, stamina: 0.75, stamina_per_shot: 0.25, rewrite on_Aim!, &->and, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_025_desc_fr",
		{"loc_talent_veteran_ads_drains_stamina_boost_desc"}, {"fr"},
			loc_text("En visant et en étant au-dessus de 0 d'"..COLORS_KWords_fr.Stamina_rgb_fr.." vous gagnez:\n{crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_rgb_fr..",\n{sway_reduction:%s} Réduction du balancement,\n"..COLORS_Numbers.pc_p19_rgb.." Réduction de la dispersion et\n"..COLORS_Numbers.pc_p12_rgb.." Réduction du recul,\nmais consomme:\n{stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." par seconde et\n{stamina_per_shot:%s} supplémentaire d'"..COLORS_KWords_fr.Stamina_rgb_fr.." par tir."..TALENTS_Enh_desc2_fr.ED_VET_Passive_25_rgb_fr)),
	--[+ Russian +]-- Смертельный выстрел 
	create_template("talent_tree_vet_pas_025_desc_ru",
		{"loc_talent_veteran_ads_drains_stamina_boost_desc"}, {"ru"},
			loc_text("Пока вы целитесь и ваш уровень "..COLORS_KWords_ru.Stamina_rgb_ru.." выше "..COLORS_Numbers.n_0_rgb..", вы получаете:\n{crit_chance:%s} к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru..",\n{sway_reduction:%s} к уменьшению раскачивания прицела,\n"..COLORS_Numbers.pc_p19_rgb.." к сокращению разброса\n"..COLORS_Numbers.pc_p12_rgb.." к уменьшению отдачи,\nно ваш уровень "..COLORS_KWords_ru.Stamina_rgb_ru.." уменьшается на {stamina:%s} в секунду и ещё на {stamina_per_shot:%s} за каждый выстрел."..TALENTS_Enh_desc2_ru.ED_VET_Passive_25_rgb_ru)),

	--[+ Passive 26 - Born Leader +]--
	create_template("talent_tree_vet_pas_026_desc_en",
		{"loc_talent_veteran_allies_share_toughness_description"}, {"en"},
			loc_text("{toughness:%s} of any "..COLORS_KWords.Toughness_rgb.." you replenish is restored to Allies in "..COLORS_KWords.Coherency_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Passive_26_rgb)),
				-- toughness: 15%, rewrite, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_026_desc_fr",
		{"loc_talent_veteran_allies_share_toughness_description"}, {"fr"},
			loc_text("{toughness:%s} de toute "..COLORS_KWords_fr.Toughness_rgb_fr.." que vous regagnez est restaurée aux Alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_VET_Passive_26_rgb_fr)),
	--[+ Russian +]-- Прирождённый лидер -- руоф Прирожденный лидер
	create_template("talent_tree_vet_pas_026_desc_ru",
		{"loc_talent_veteran_allies_share_toughness_description"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..", восстановленой вами из любого источника, также восстанавливается и для ваших союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Passive_26_rgb_ru)),

	--[+ Passive 27 - Keep Their Heads Down! +]--
	create_template("talent_tree_vet_pas_027_desc_en",
		{"loc_talent_veteran_increase_suppression_desc"}, {"en"},
			loc_text("{suppression:%s} Ranged Attack Suppression."
				..TALENTS_Enh_desc2.ED_VET_Passive_27_rgb)),
				-- suppression: +50%
	--[+ French +]--
	create_template("talent_tree_vet_pas_027_desc_fr",
		{"loc_talent_veteran_increase_suppression_desc"}, {"fr"},
			loc_text("{suppression:%s} Suppression des attaques à distance."..TALENTS_Enh_desc2_fr.ED_VET_Passive_27_rgb_fr)),
	--[+ Russian +]-- Не давай им поднять головы! -- руоф Пригнитесь!
	create_template("talent_tree_vet_pas_027_desc_ru",
		{"loc_talent_veteran_increase_suppression_desc"}, {"ru"},
			loc_text("{suppression:%s} к подавлению врагов выстрелами."..TALENTS_Enh_desc2_ru.ED_VET_Passive_27_rgb_ru)),

	--[+ Passive 28 - Reciprocity +]--
	create_template("talent_tree_vet_pas_028_desc_en",
		{"loc_talent_veteran_dodging_grants_crit_description"}, {"en"},
			loc_text("{crit_chance:%s} "..COLORS_KWords.Crit_hit_rgb.." Chance for {duration:%s} seconds on successful Dodge. Stacks {stacks:%s} times."
				..TALENTS_Enh_desc2.ED_VET_Passive_28_rgb)),
				-- crit_chance: +5%, duration: 8, stacks: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_028_desc_fr",
		{"loc_talent_veteran_dodging_grants_crit_description"}, {"fr"},
			loc_text("{crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pour {duration:%s} secondes sur une esquive réussie. Se cumuls {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_VET_Passive_28_rgb_fr)),
	--[+ Russian +]-- Взаимообмен -- руоф Взаимная выгода
	create_template("talent_tree_vet_pas_028_desc_ru",
		{"loc_talent_veteran_dodging_grants_crit_description"}, {"ru"},
			loc_text("{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на {duration:%s} секунд при успешном уклонении. Суммируется {stacks:%s} раз."..TALENTS_Enh_desc2_ru.ED_VET_Passive_28_rgb_ru)),

	--[+ Passive 29 - Duck and Dive +]--
	create_template("talent_tree_vet_pas_029_desc_en",
		{"loc_talent_veteran_stamina_on_ranged_dodge_desc"}, {"en"},
			loc_text("{stamina:%s} of Max "..COLORS_KWords.Stamina_rgb.." on avoiding Ranged Attacks by Dodging, Sprinting or Sliding."
				..TALENTS_Enh_desc2.ED_VET_Passive_29_rgb)),
				-- stamina: +30%
	--[+ French +]--
	create_template("talent_tree_vet_pas_029_desc_fr",
		{"loc_talent_veteran_stamina_on_ranged_dodge_desc"}, {"fr"},
			loc_text("{stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." maximum en évitant les attaques à distance en esquivant, en courant ou en glissant."..TALENTS_Enh_desc2_fr.ED_VET_Passive_29_rgb_fr)),
	--[+ Russian +]-- Пригнись и увернись -- руоф Голову в песок
	create_template("talent_tree_vet_pas_029_desc_ru",
		{"loc_talent_veteran_stamina_on_ranged_dodge_desc"}, {"ru"},
			loc_text("{stamina:%s} к "..COLORS_KWords_ru.Stamina_rgb_ru.." при избегании дальнобойных атак с помощью уклонений, подкатов и бега."..TALENTS_Enh_desc2_ru.ED_VET_Passive_29_rgb_ru)),

	--[+ Passive 30 - Fully Loaded +]--
	create_template("talent_tree_vet_pas_030_desc_en",
		{"loc_talent_veteran_ammo_increase_desc"}, {"en"},
			loc_text("{ammo:%s} Ammo."
				..TALENTS_Enh_desc2.ED_VET_Passive_30_rgb)),
				-- ammo: +25%
	--[+ French +]--
	create_template("talent_tree_vet_pas_030_desc_fr",
		{"loc_talent_veteran_ammo_increase_desc"}, {"fr"},
			loc_text("{ammo:%s} Munitions."..TALENTS_Enh_desc2_fr.ED_VET_Passive_30_rgb_fr)),
	--[+ Russian +]-- Полный запас -- руоф Полный заряд
	create_template("talent_tree_vet_pas_030_desc_ru",
		{"loc_talent_veteran_ammo_increase_desc"}, {"ru"},
			loc_text("{ammo:%s} к боеприпасам в резерве."..TALENTS_Enh_desc2_ru.ED_VET_Passive_30_rgb_ru)),

	--[+ Passive 31 - Tactical Awareness +]--
	create_template("talent_tree_vet_pas_031_desc_en",
		{"loc_talent_veteran_elite_kills_reduce_cooldown_desc"}, {"en"},
			loc_text(COLORS_Numbers.n_minus_rgb.."{duration:%s} seconds to "..COLORS_KWords.Combat_ability_cd_rgb.." on killing a Specialist enemy."
				..TALENTS_Enh_desc2.ED_VET_Passive_31_rgb)),
				-- duration: 6, rewrite, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_031_desc_fr",
		{"loc_talent_veteran_elite_kills_reduce_cooldown_desc"}, {"fr"},
			loc_text(COLORS_Numbers.n_minus_rgb.."{duration:%s} secondes au "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." lors d'une élimination de spécialiste."..TALENTS_Enh_desc2_fr.ED_VET_Passive_31_rgb_fr)),
	--[+ Russian +]-- Тактическая осведомлённость -- руоф Тактическая осведомленность
	create_template("talent_tree_vet_pas_031_desc_ru",
		{"loc_talent_veteran_elite_kills_reduce_cooldown_desc"}, {"ru"},
			loc_text("На {duration:%s} секунд сокращается время "..COLORS_KWords_ru.Ability_cd_rgb_ru.." при убийстве врага специалиста."..TALENTS_Enh_desc2_ru.ED_VET_Passive_31_rgb_ru)),

	--[+ Passive 32 - Desperado +]--
	create_template("talent_tree_vet_pas_032_desc_en",
		{"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse_desc"}, {"en"},
			loc_text("{crit_chance:%s} Melee "..COLORS_KWords.Crit_hit_chance_rgb.." and\n"
				.."{finesse:%s} Melee "..COLORS_KWords.Finesse_rgb.." Bonus."
				..TALENTS_Enh_desc2.ED_VET_Passive_32_rgb)),
				-- crit_chance: +10%, finesse: +25%, -- &->and, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_032_desc_fr",
		{"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse_desc"}, {"fr"},
			loc_text("{crit_chance:%s} "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.." de mêlée et\n{finesse:%s} bonus de "..COLORS_KWords_fr.Finesse_rgb_fr.." de mêlée."..TALENTS_Enh_desc2_fr.ED_VET_Passive_32_rgb_fr)),
	--[+ Russian +]-- Сорвиголова 
	create_template("talent_tree_vet_pas_032_desc_ru",
		{"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse_desc"}, {"ru"},
			loc_text("Атаки ближнего боя получают:\n{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." и\n{finesse:%s} к "..COLORS_KWords_ru.Finesse_dmg_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Passive_32_rgb_ru)),

	--[+ Passive 33 - Shock Trooper +]--
	create_template("talent_tree_vet_pas_033_desc_en",
		{"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit_desc"}, {"en"},
			loc_text(COLORS_KWords.Crit_hits_rgb.." with Las-weapons consume no Ammo."
				..TALENTS_Enh_desc2.ED_VET_Passive_33_rgb)),
				-- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_033_desc_fr",
		{"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit_desc"}, {"fr"},
			loc_text("Les "..COLORS_KWords_fr.Crit_hits_rgb_fr.." avec les armes à lasers ne consomment pas de munitions."..TALENTS_Enh_desc2_fr.ED_VET_Passive_33_rgb_fr)),
	--[+ Russian +]-- Штурмовик 
	create_template("talent_tree_vet_pas_033_desc_ru",
		{"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit_desc"}, {"ru"},
			loc_text("При "..COLORS_KWords_ru.Crit_chance_r_rgb_ru.." лазерное оружие не потребляет боеприпасы."..TALENTS_Enh_desc2_ru.ED_VET_Passive_33_rgb_ru)),

	--[+ Passive 34 - Superiority Complex +]--
	create_template("talent_tree_vet_pas_034_desc_en",
		{"loc_talent_veteran_increase_damage_vs_elites_desc"}, {"en"},
			loc_text("{damage:%s} Base "..COLORS_KWords.Damage_rgb.." to Elite Enemies."
				..TALENTS_Enh_desc2.ED_VET_Passive_34_rgb)),
				-- damage: +15%, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_034_desc_fr",
		{"loc_talent_veteran_increase_damage_vs_elites_desc"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pour les ennemis d'élite."..TALENTS_Enh_desc2_fr.ED_VET_Passive_34_rgb_fr)),
	--[+ Russian +]-- Мания величия 
	create_template("talent_tree_vet_pas_034_desc_ru",
		{"loc_talent_veteran_increase_damage_vs_elites_desc"}, {"ru"},
			loc_text("{damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." по элитным врагам."..TALENTS_Enh_desc2_ru.ED_VET_Passive_34_rgb_ru)),

	--[+ Passive 35 - Iron Will +]--
	create_template("talent_tree_vet_pas_035_desc_en",
		{"loc_talent_veteran_tdr_on_high_toughness_desc"}, {"en"},
			loc_text("{toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." if above {toughness_percent:%s} "..COLORS_KWords.Toughness_rgb.."."
				..TALENTS_Enh_desc2.ED_VET_Passive_35_rgb)),
				-- toughness_damage_reduction: +50%, toughness_percent: 75%, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_035_desc_fr",
		{"loc_talent_veteran_tdr_on_high_toughness_desc"}, {"fr"},
			loc_text("{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." si au-dessus de {toughness_percent:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Passive_35_rgb_fr)),
	--[+ Russian +]-- Железная воля 
	create_template("talent_tree_vet_pas_035_desc_ru",
		{"loc_talent_veteran_tdr_on_high_toughness_desc"}, {"ru"},
			loc_text("{toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru..", если у вас выше {toughness_percent:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Passive_35_rgb_ru)),

	--[+ Passive 36 - Demolition Team +]--
	create_template("talent_tree_vet_pas_036_desc_en",
		{"loc_talent_veteran_grenade_on_elite_kills_coop_desc"}, {"en"},
			loc_text("{chance:%s} chance to replenish a Grenade when you or an Ally in "..COLORS_KWords.Coherency_rgb.." kills an Elite or Specialist Enemy."
				..TALENTS_Enh_desc2.ED_VET_Passive_36_rgb)),
				-- chance: 5%
	--[+ French +]--
	create_template("talent_tree_vet_pas_036_desc_fr",
		{"loc_talent_veteran_grenade_on_elite_kills_coop_desc"}, {"fr"},
			loc_text("{chance:%s} chance de régénérez une grenade lorsque vous ou un allié en syntonie éliminez un ennemi d'élite ou spécialiste."..TALENTS_Enh_desc2_fr.ED_VET_Passive_36_rgb_fr)),
	--[+ Russian +]-- Команда подрывников -- руоф Группа подрыва
	create_template("talent_tree_vet_pas_036_desc_ru",
		{"loc_talent_veteran_grenade_on_elite_kills_coop_desc"}, {"ru"},
			loc_text("{chance:%s} шанс восстановить гранату, когда вы или ваш союзник в "..COLORS_KWords_ru.Coherency_rgb_ru.." убивает элитного врага или специалиста."..TALENTS_Enh_desc2_ru.ED_VET_Passive_36_rgb_ru)),

	--[+ Passive 37 - Exploit Weakness +]--
	create_template("talent_tree_vet_pas_037_desc_en",
		{"loc_talent_veteran_crits_rend_description"}, {"en"},
			loc_text("{rending_multiplier:%s} "..COLORS_KWords.Brittleness_rgb.." is applied to the target by Melee "..COLORS_KWords.Crit_hits_rgb..". Stacks {max_stacks:%s} times and lasts {duration:%s} seconds."
				..TALENTS_Enh_desc2.ED_VET_Passive_37_rgb)),
				-- rending_multiplier: 10%, max_stacks: 2, duration: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_037_desc_fr",
		{"loc_talent_veteran_crits_rend_description"}, {"fr"},
			loc_text("{rending_multiplier:%s} de "..COLORS_KWords_fr.Brittleness_rgb_fr.." est appliqué à la cible lors d'un "..COLORS_KWords_fr.Crit_hits_rgb_fr.." de mêlée. Se cumule {max_stacks:%s} fois et dure {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_37_rgb_fr)),
	--[+ Russian +]-- Использование слабостей 
	create_template("talent_tree_vet_pas_037_desc_ru",
		{"loc_talent_veteran_crits_rend_description"}, {"ru"},
			loc_text("{rending_multiplier:%s} "..COLORS_KWords_ru.Brittleness_rgb_ru.." накладывается на цель при "..COLORS_KWords_ru.Crit_hit_e_rgb_ru.." в ближнем бою. Суммируется {max_stacks:%s} раза и длится {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_37_rgb_ru)),

	--[+ Passive 38 - Onslaught +]--
	create_template("talent_tree_vet_pas_038_desc_en",
		{"loc_talent_veteran_continous_hits_apply_rending_description"}, {"en"},
			loc_text("{rending_multiplier:%s} "..COLORS_KWords.Brittleness_rgb.." is applied to the target for {duration:%s} seconds by Continuous hits to a Single target. Stacks {max_stacks:%s} times."
				..TALENTS_Enh_desc2.ED_VET_Passive_38_rgb)),
				-- rending_multiplier: 2.5%, duration: 5, max_stacks: 16, rewrite, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_038_desc_fr",
		{"loc_talent_veteran_continous_hits_apply_rending_description"}, {"fr"},
			loc_text("{rending_multiplier:%s} de "..COLORS_KWords_fr.Brittleness_rgb_fr.." est appliqué à la cible pour {duration:%s} secondes par des coups continus à une seule cible. Se cumule {max_stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_VET_Passive_38_rgb_fr)),
	--[+ Russian +]-- Натиск 
	create_template("talent_tree_vet_pas_038_desc_ru",
		{"loc_talent_veteran_continous_hits_apply_rending_description"}, {"ru"},
			loc_text("{rending_multiplier:%s} "..COLORS_KWords_ru.Brittleness_rgb_ru.." накладывается на цель на {duration:%s} секунд при повторных атаках по ней. Суммируется {max_stacks:%s} раз."..TALENTS_Enh_desc2_ru.ED_VET_Passive_38_rgb_ru)),

	--[+ Passive 39 - Trench Fighter Drill +]--
	create_template("talent_tree_vet_pas_039_desc_en",
		{"loc_talent_veteran_attack_speed_description"}, {"en"},
			loc_text("{melee_attack_speed:%s} Melee Attack Speed."
				..TALENTS_Enh_desc2.ED_VET_Passive_39_rgb)),
				-- melee_attack_speed: +10%
	--[+ French +]--
	create_template("talent_tree_vet_pas_039_desc_fr",
		{"loc_talent_veteran_attack_speed_description"}, {"fr"},
			loc_text("{melee_attack_speed:%s} Vitesse d'attaque de mêlée."..TALENTS_Enh_desc2_fr.ED_VET_Passive_39_rgb_fr)),
	--[+ Russian +]-- Тренировки в окопах -- руоф Тренировка в окопах
	create_template("talent_tree_vet_pas_039_desc_ru",
		{"loc_talent_veteran_attack_speed_description"}, {"ru"},
			loc_text("{melee_attack_speed:%s} к скорости атак ближнего боя."..TALENTS_Enh_desc2_ru.ED_VET_Passive_39_rgb_ru)),

	--[+ Passive 40 - Skirmisher +]--
	create_template("talent_tree_vet_pas_040_desc_en",
		{"loc_talent_veteran_damage_damage_after_sprinting_desc"}, {"en"},
			loc_text("{base_damage:%s} to all Base "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds after Sprinting. Stacks {stacks:%s} times."
				..TALENTS_Enh_desc2.ED_VET_Passive_40_rgb)),
				-- base_damage: +5%, duration: 8, stacks: 5, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_040_desc_fr",
		{"loc_talent_veteran_damage_damage_after_sprinting_desc"}, {"fr"},
			loc_text("{base_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes après avoir sprinté. Se cumule {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_VET_Passive_40_rgb_fr)),
	--[+ Russian +]-- Застрельщик 
	create_template("talent_tree_vet_pas_040_desc_ru",
		{"loc_talent_veteran_damage_damage_after_sprinting_desc"}, {"ru"},
			loc_text("{base_damage:%s} ко всему базовому "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд после бега. Суммируется {stacks:%s} раз."..TALENTS_Enh_desc2_ru.ED_VET_Passive_40_rgb_ru)),

	--[+ Passive 41 - Competitive Urge +]--
	create_template("talent_tree_vet_pas_041_desc_en",
		{"loc_talent_veteran_ally_kills_increase_damage_description"}, {"en"},
			loc_text("Whenever an Ally kills an Enemy you have a {proc_chance:%s} chance to gain for {duration:%s} seconds:\n"
				.."{damage:%s} Base "..COLORS_KWords.Damage_rgb..",\n"
				.."{melee_impact:%s} Melee "..COLORS_KWords.Impact_rgb.." and\n"
				.."{suppression:%s} Suppression dealt."
				..TALENTS_Enh_desc2.ED_VET_Passive_41_rgb)),
				-- proc_chance: 2.5%, damage: +20%, melee_impact: +20%, suppression: +20%, duration: 8, rewrite, &->and, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_041_desc_fr",
		{"loc_talent_veteran_ally_kills_increase_damage_description"}, {"fr"},
			loc_text("Chaque fois qu'un allié tue un ennemi, vous avez {proc_chance:%s} de chance de gagner pendant {duration:%s} secondes:\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..",\n{melee_impact:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.." de mêlée et\n{suppression:%s} de Suppression."..TALENTS_Enh_desc2_fr.ED_VET_Passive_41_rgb_fr)),
	--[+ Russian +]-- Состязательный мотив 
	create_template("talent_tree_vet_pas_041_desc_ru",
		{"loc_talent_veteran_ally_kills_increase_damage_description"}, {"ru"},
			loc_text("Когда союзник убивает врага у вас есть {proc_chance:%s} шанс получить на {duration:%s} секунд:\n{damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru..",\n{suppression:%s} к подавлению врагов и\n{melee_impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." врагов от атак ближнего боя."..TALENTS_Enh_desc2_ru.ED_VET_Passive_41_rgb_ru)),

	--[+ Passive 42 - Rending Strikes +]--
	create_template("talent_tree_vet_pas_042_desc_en",
		{"loc_talent_veteran_rending_bonus_desc"}, {"en"},
			loc_text("{rending_multiplier:%s} "..COLORS_KWords.Rending_rgb.." to all weapons."
				..TALENTS_Enh_desc2.ED_VET_Passive_42_rgb)),
				-- rending_multiplier: +10%, colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_042_desc_fr",
		{"loc_talent_veteran_rending_bonus_desc"}, {"fr"},
			loc_text("{rending_multiplier:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." pour toutes les armes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_42_rgb_fr)),
	--[+ Russian +]--Пробивающие удары -- руоф Разрушительные удары
	create_template("talent_tree_vet_pas_042_desc_ru",
		{"loc_talent_veteran_rending_bonus_desc"}, {"ru"},
			loc_text("{rending_multiplier:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." для всего оружия."..TALENTS_Enh_desc2_ru.ED_VET_Passive_42_rgb_ru)),

	--[+ Passive 43 - Bring it Down! +]--
	create_template("talent_tree_vet_pas_043_desc_en",
		{"loc_talent_veteran_big_game_hunter_description"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." to Ogryns and Monstrosities."
				..TALENTS_Enh_desc2.ED_VET_Passive_43_rgb)),
				-- damage: +20% -- &->and -- (), colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_043_desc_fr",
		{"loc_talent_veteran_big_game_hunter_description"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." aux Ogryns et Monstruosités."..TALENTS_Enh_desc2_fr.ED_VET_Passive_43_rgb_fr)),
	--[+ Russian +]-- Убей их! -- руоф Убивай!
	create_template("talent_tree_vet_pas_043_desc_ru",
		{"loc_talent_veteran_big_game_hunter_description"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." огринам и монстрам."..TALENTS_Enh_desc2_ru.ED_VET_Passive_43_rgb_ru)),

--[+ ++OGRYN - ОГРИН++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Big Box of Hurt +]--
	create_template("talent_tree_ogr_blitz0_000_desc_en",
		{"loc_ability_ogryn_grenade_box_description"}, {"en"},
			loc_text("Throw a box of Grenades with great strength and enthusiasm for High "..COLORS_KWords.Damage_rgb.." against a Single Enemy.\n"
				.."Slightly increased "..COLORS_KWords.Damage_rgb.." vs Unyielding and very low "..COLORS_KWords.Damage_rgb.." vs Carapace armor.\n"
				.."Replenishes all boxes per Grenade pickup."
				..TALENTS_Enh_desc2.ED_OGR_Blitz_0_rgb)),
				-- colors
	--[+ French +]--!!!
	create_template("talent_tree_ogr_blitz0_000_desc_fr",
		{"loc_ability_ogryn_grenade_box_description"}, {"fr"},
			loc_text("Lancer une boîte de grenades avec une grande force et enthousiasme pour des "..COLORS_KWords_fr.Damage_rgb_fr.." élevés  contre un seul ennemi."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_0_rgb_fr)),
	--[+ Russian +]-- Большая коробка боли -- руоф Ящик, полный боли
	create_template("talent_tree_ogr_blitz0_000_desc_ru",
		{"loc_ability_ogryn_grenade_box_description"}, {"ru"},
			loc_text("Вы бросаете коробку гранат с огромной силой и энтузиазмом, чтобы нанести высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." одному врагу.\nНемного увеличен "..COLORS_KWords_ru.Dmg_rgb_ru.." против несгибаемых врагов и очень низкий "..COLORS_KWords_ru.Dmg_rgb_ru.." против панцирной брони.\nПополняет все ящики при подборе гранат."..TALENTS_Enh_desc2_ru.ED_OGR_Blitz_0_rgb_ru)),

	--[+ BLITZ 1 - Big Friendly Rock +]--
	create_template("talent_tree_ogr_blitz1_000_desc_en",
		{"loc_ability_ogryn_friend_rock_desc"}, {"en"},
			loc_text("Toss a Big rock or hunk of junk at a Single Enemy. You pick up a new rock every {recharge:%s} seconds and can hold up to {max_charges:%s} rocks at a time.\n"
				.."Slightly increased "..COLORS_KWords.Damage_rgb.." vs Maniac and very low "..COLORS_KWords.Damage_rgb.." vs Carapace. Extra "..COLORS_KWords.Finesse_rgb.." boost against Unyielding.\n"
				.."Ogryn cannot pick up Grenade ammo."
				..TALENTS_Enh_desc2.ED_OGR_Blitz_1_rgb)),
				-- recharge: 45, max_charges: 4, rewrite, s->seconds
	--[+ French +]--!!!
	create_template("talent_tree_ogr_blitz1_000_desc_fr",
		{"loc_ability_ogryn_friend_rock_desc"}, {"fr"},
			loc_text("Lancer un gros caillou à un seul ennemi. Vous ramassez un nouveau caillou tous les {recharge:%s} secondes et pouvez en tenir jusqu'à {max_charges:%s} à la fois.\n"..COLORS_KWords_fr.Damage_rgb_fr.." légèrement augmenter contre les Maniaques et très faible "..COLORS_KWords_fr.Damage_rgb_fr.." contre ceux en armure Carapace. Bonus de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr.." contre les Implacable\nL'Ogryn ne peux plus ramasser de caisse de grenade."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_1_rgb_fr)),
	--[+ Russian +]-- Большой дружелюбный валун 
	create_template("talent_tree_ogr_blitz1_000_desc_ru",
		{"loc_ability_ogryn_friend_rock_desc"}, {"ru"},
			loc_text("Вы бросаете большой камень или обломок бетона в одного врага. Вы подбираете новый камень каждые {recharge:%s} секунд и можете иметь при себе до {max_charges:%s} камней одновременно.\nСлегка увеличен "..COLORS_KWords_ru.Dmg_rgb_ru.." против маньяков и очень низкий "..COLORS_KWords_ru.Dmg_rgb_ru.." против панцирной брони. Дополнительное усиление от "..COLORS_KWords_ru.Finesse_rgb_ru.." против несгибаемых.\nОгрин не может подбирать гранаты."..TALENTS_Enh_desc2_ru.ED_OGR_Blitz_1_rgb_ru)),

	--[+ BLITZ 1-1 - That One Didn't Count +]--
	create_template("talent_tree_ogr_blitz1_001_desc_en",
		{"loc_talent_ogryn_replenish_rock_on_miss_desc"}, {"en"},
			loc_text("{talent_name:%s} Replenishes a Charge if you hit a "..COLORS_KWords.Weak_spot_rgb.." or hit no enemies. Cooldown "..COLORS_Numbers.cd_dur_var_rgb.." seconds.")),
				-- colors
	--[+ French +]-- Ca ne comtpe pas
	create_template("talent_tree_ogr_blitz1_001_desc_fr",
		{"loc_talent_ogryn_replenish_rock_on_miss_desc"}, {"fr"},
			loc_text("{talent_name:%s} rend un caillou si vous touchez un "..COLORS_KWords_fr.Weakspot_rgb_fr.." ou si vous ne touchez aucun ennemi. Temps de rechargement "..COLORS_Numbers.cd_dur_var_rgb.." secondes")),
	--[+ Russian +]-- Этот не считается -- руоф 
	create_template("talent_tree_ogr_blitz1_001_desc_ru",
		{"loc_talent_ogryn_replenish_rock_on_miss_desc"}, {"ru"},
			loc_text("{talent_name:%s} восстанавливает заряд, если вы попали в "..COLORS_KWords_ru.Weakspothit_rgb_ru.." или не попали ни в кого. Восстановление "..COLORS_Numbers.cd_dur_var_rgb.." секунд.")),

	--[+ BLITZ 2 - Frag Bomb +]--
	create_template("talent_tree_ogr_blitz2_000_desc_en",
		{"loc_ability_ogryn_grenade_demolition_desc"}, {"en"},
			loc_text("Throw an Ogryn-sized (the only proper kind!) "..COLORS_KWords.Frag_gren_rgb.." with a {radius:%s} meters blast radius, dealing increased "..COLORS_KWords.Damage_rgb.." at the center.\n"
				.."Fuse time: 2 seconds.\n"
				.."Very high armor "..COLORS_KWords.Damage_rgb.." vs Flak, Maniac, Unyielding.\n"
				.."Deals high "..COLORS_KWords.Stagger_rgb.." against all enemies including Monstrosities, Captains/Twins (only without void shield).\n"
				.."Instakill all enemies with an explosion except: Maulers, Crushers, Bulwarks and Monstrosities."
				..TALENTS_Enh_desc2.ED_OGR_Blitz_2_rgb)),
				-- radius: 16, m->meters, colors
	--[+ French +]--
	create_template("talent_tree_ogr_blitz2_000_desc_fr",
		{"loc_ability_ogryn_grenade_demolition_desc"}, {"fr"},
			loc_text("Lancer une "..COLORS_KWords_fr.Frag_gren_rgb_fr.." de taille Ogryn (la seule taille appropriée !) avec un rayon d'explosion de {radius:%s} mètres, infligeant des "..COLORS_KWords_fr.Damage_rgb_fr.." accrus au centre."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_2_rgb_fr)),
	--[+ Russian +]-- Фраг-бомба -- руоф Осколочная бомба
	create_template("talent_tree_ogr_blitz2_000_desc_ru",
		{"loc_ability_ogryn_grenade_demolition_desc"}, {"ru"},
			loc_text("Вы бросаете огринского размера "..COLORS_KWords_ru.Frag_gren_rgb_ru.." с радиусом взрыва до {radius:%s} метров, наносящую увеличенный "..COLORS_KWords_ru.Dmg_rgb_ru.." в центре."..TALENTS_Enh_desc2_ru.ED_OGR_Blitz_2_rgb_ru)),

	--[+ BLITZ 3 - Bombs Away! +]--
	create_template("talent_tree_ogr_blitz3_000_desc_en",
		{"loc_talent_bonebreaker_grenade_super_armor_explosion_desc"}, {"en"},
			loc_text("Throw a box of Grenades with great strength and enthusiasm to deal High "..COLORS_KWords.Damage_rgb.." to a Single Enemy.\n"
				.."Hitting an Enemy causes the box to break open, releasing {num_grenades:%s} grenades around the target.\n"
				.."This is an augmented version of {talent_name:%s}."
				..TALENTS_Enh_desc2.ED_OGR_Blitz_3_rgb)),
				-- num_grenades: 6, talent_name: Big Box of Hurt, colors
	--[+ French +]--
	create_template("talent_tree_ogr_blitz3_000_desc_fr",
		{"loc_talent_bonebreaker_grenade_super_armor_explosion_desc"}, {"fr"},
			loc_text("Lancer une boîte de grenades avec une grande force et enthousiasme pour infliger des "..COLORS_KWords_fr.Damage_rgb_fr.." élevés à un seul ennemi.\nToucher un ennemi provoque l'ouverture de la boîte, libérant {num_grenades:%s} grenades autour de la cible.\nIl s'agit d'une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_3_rgb_fr)),
	--[+ Russian +]-- Бросай бомбы! -- руоф Кидаю бомбу!
	create_template("talent_tree_ogr_blitz3_000_desc_ru",
		{"loc_talent_bonebreaker_grenade_super_armor_explosion_desc"}, {"ru"},
			loc_text("Вы бросаете коробку гранат с огромной силой и энтузиазмом, чтобы нанести высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." одному врагу.\nПри попадании по врагу ящик разбивается, разбрасывая вокруг цели {num_grenades:%s} гранат.\nЭто улучшенная версия таланта {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Blitz_3_rgb_ru)),

--[+ +AURA - АУРА+ +]--
	--[+ AURA 0 - Intimidating Presence +]--
	create_template("talent_tree_ogr_aura0_000_desc_en",
		{"loc_talent_ogryn_2_base_4_description_new"}, {"en"},
			loc_text("{damage:%s} Heavy Melee Attack "..COLORS_KWords.Damage_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb.."."
				..TALENTS_Enh_desc2.ED_OGR_Aura_0_rgb)),
				-- damage: +7.5%, colors
	--[+ French +]--
	create_template("talent_tree_ogr_aura0_000_desc_fr",
		{"loc_talent_ogryn_2_base_4_description_new"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." des attaques de mêlée puissantes pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_0_rgb_fr)),
	--[+ Russian +]-- Устрашающее присутствие -- руоф Пугающее присутствие
	create_template("talent_tree_ogr_aura0_000_desc_ru",
		{"loc_talent_ogryn_2_base_4_description_new"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." тяжёлых атак ближнего боя для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_OGR_Aura_0_rgb_ru)),

	--[+ AURA 1 - Bonebreaker's Aura +]--
	create_template("talent_tree_ogr_aura1_000_desc_en",
		{"loc_talent_damage_aura_improved_new"}, {"en"},
			loc_text("{damage:%s} Melee Attack "..COLORS_KWords.Damage_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n\n"
				.."This is an augmented version of {talent_name:%s}."
				..TALENTS_Enh_desc2.ED_OGR_Aura_1_rgb)),
				-- damage: +10%, talent_name: Intimidating Presence, colors
	--[+ French +]--
	create_template("talent_tree_ogr_aura1_000_desc_fr",
		{"loc_talent_damage_aura_improved_new"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." des attaques de mêlée pour vous et les alliés en syntonie.\n\nCeci est une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_1_rgb_fr)),
	--[+ Russian +]-- Аура костолома 
	create_template("talent_tree_ogr_aura1_000_desc_ru",
		{"loc_talent_damage_aura_improved_new"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." тяжёлых атак ближнего боя для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n\nЭто улучшенная версия ауры {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Aura_1_rgb_ru)),

	--[+ AURA 2 - Stay Close! +]--
	create_template("talent_tree_ogr_aura2_000_desc_en",
		{"loc_talent_ogryn_toughness_regen_aura_desc"}, {"en"},
			loc_text("{toughness_regen_rate_modifier:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment for you and Allies in "..COLORS_KWords.Coherency_rgb.."."
				..TALENTS_Enh_desc2.ED_OGR_Aura_2_rgb)),
				-- toughness_regen_rate_modifier: +25%, colors
	--[+ French +]--
	create_template("talent_tree_ogr_aura2_000_desc_fr",
		{"loc_talent_ogryn_toughness_regen_aura_desc"}, {"fr"},
			loc_text("{toughness_regen_rate_modifier:%s} de Régénération de la "..COLORS_KWords_fr.Toughness_rgb_fr.." pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_2_rgb_fr)),
	--[+ Russian +]-- Будь рядом! -- руоф Не расходимся!
	create_template("talent_tree_ogr_aura2_000_desc_ru",
		{"loc_talent_ogryn_toughness_regen_aura_desc"}, {"ru"},
			loc_text("{toughness_regen_rate_modifier:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восполняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_OGR_Aura_2_rgb_ru)),

	--[+ AURA 3 - Coward Culling +]--
	create_template("talent_tree_ogr_aura3_000_desc_en",
		{"loc_talent_ogryn_damage_vs_suppressed_new_desc"}, {"en"},
			loc_text("{suppression:%s} Suppression dealt.\n"
				.."{damage:%s} "..COLORS_KWords.Damage_rgb.." against Suppressed Enemies for you and Allies in "..COLORS_KWords.Coherency_rgb.."."
				..TALENTS_Enh_desc2.ED_OGR_Aura_3_rgb)),
				-- damage:+20%, colors
	--[+ French +]--
	create_template("talent_tree_ogr_aura3_000_desc_fr",
		{"loc_talent_ogryn_damage_vs_suppressed_new_desc"}, {"fr"},
			loc_text("{suppression:%s} de Suppression infligé.\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemis sous suppression pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_3_rgb_fr)),
	--[+ Russian +]-- Отсев трусливых -- руоф Трусливые отбросы
	create_template("talent_tree_ogr_aura3_000_desc_ru",
		{"loc_talent_ogryn_damage_vs_suppressed_new_desc"}, {"ru"},
			loc_text("{suppression:%s} к подавлению врагов.\n{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." по подавленным врагам для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_OGR_Aura_3_rgb_ru)),

--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
	--[+ ABILITY 0 - Bull Rush +]--
	create_template("talent_tree_ogr_abil0_000_desc_en",
		{"loc_ability_ogryn_charge_description_new"}, {"en"},
			loc_text("Charge forward with great force, knocking back enemies and "..COLORS_KWords.Staggering_rgb.." them. Gain {attack_speed:%s} Attack Speed and {move_speed:%s} Movement Speed for {duration:%s} seconds. Charge is stopped on collision with Carapace Armoured Enemies, Unyielding Enemies and Monstrosities.\n\n"
				.."Base Cooldown: {cooldown:%s} seconds."
				..TALENTS_Enh_desc2.ED_OGR_Ability_0_rgb)),
				-- attack_speed: +25%, move_speed: +25%, duration: 5, cooldown: 30, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_ogr_abil0_000_desc_fr",
		{"loc_ability_ogryn_charge_description_new"}, {"fr"},
			loc_text("Chargez vers l'avant avec une grande force, repoussant les ennemis et les faisant "..COLORS_KWords_fr.Staggering_rgb_fr..". Gagnez {attack_speed:%s} de vitesse d'attaque et {move_speed:%s} de vitesse de déplacement pendant {duration:%s} secondes. La charge est arrêtée en cas de collision avec des ennemis en armure carapace, implacables et des monstruosités.\n\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_0_rgb_fr)),
	--[+ Russian +]-- Рывок быка -- руоф Бычий натиск
	create_template("talent_tree_ogr_abil0_000_desc_ru",
		{"loc_ability_ogryn_charge_description_new"}, {"ru"},
			loc_text("Вы совершаете рывок вперёд, с огромной силой отбрасывая врагов и накладывая на них "..COLORS_KWords_ru.Stagger_rgb_ru..". Вы получаете {attack_speed:%s} к скорости атаки и {move_speed:%s} к скорости движения на {duration:%s} секунд. Рывок прекращается при столкновении с врагами в панцирной броне, несгибаемыми врагами или монстрами.\n\nВосстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_0_rgb_ru)),

	--[+ ABILITY 1 - Indomitable +]--
	create_template("talent_tree_ogr_abil1_000_desc_en",
		{"loc_talent_ogryn_bull_rush_distance_desc"}, {"en"},
			loc_text("Charge forward with great force, knocking back Enemies and "..COLORS_KWords.Staggering_rgb.." them. Gain {attack_speed:%s} Attack Speed and {move_speed:%s} Movement Speed for {duration:%s} seconds. Charge is stopped only on collision with Monstrosities.\n"
				.."Base Cooldown: {cooldown:%s} seconds.\n"
				.."This is an augmented version of {talent_name:%s} with an increased charge distance of {distance:%s}."
				..TALENTS_Enh_desc2.ED_OGR_Ability_1_rgb)),
				-- attack_speed: +25%, move_speed: +25%, duration: 5, cooldown: 30, talent_name: Bull Rush, distance: 100%, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_ogr_abil1_000_desc_fr",
		{"loc_talent_ogryn_bull_rush_distance_desc"}, {"fr"},
			loc_text("Chargez vers l'avant avec une grande force, repoussant les ennemis et les faisant "..COLORS_KWords_fr.Staggering_rgb_fr..". Gagnez {attack_speed:%s} de vitesse d'attaque et {move_speed:%s} de vitesse de déplacement pendant {duration:%s} secondes. La charge est arrêtée uniquement en cas de collision avec des monstruosités.\nTemps de recharge de base : {cooldown:%s} secondes.\nCeci est une version augmentée de {talent_name:%s} avec une distance de charge accrue de {distance:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_rgb_fr)),
	--[+ Russian +]-- Неукротимый -- руоф Неукротимость
	create_template("talent_tree_ogr_abil1_000_desc_ru",
		{"loc_talent_ogryn_bull_rush_distance_desc"}, {"ru"},
			loc_text("Вы совершаете рывок вперёд, с огромной силой отбрасывая врагов и накладывая на них "..COLORS_KWords_ru.Stagger_rgb_ru..". Вы получаете {attack_speed:%s} к скорости атаки и {move_speed:%s} к скорости движения на {duration:%s} секунд. Рывок прекращается только при столкновении с монстрами.\n\nВосстанавливается {cooldown:%s} секунд.\nЭто улучшенная версия способности {talent_name:%s} с увеличенным на {distance:%s} расстоянием рывка."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_1_rgb_ru)),

	--[+ ABILITY 1-1 - Stomping Boots +]--
	create_template("talent_tree_ogr_abil1_001_desc_en",
		{"loc_talent_ogryn_toughness_on_bull_rush_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes per Enemy Hit with {ability:%s}."
				..TALENTS_Enh_desc2.ED_OGR_Ability_1_1_rgb)),
				-- toughness: +10%, ability: Indomitable, rewrite, colors
	--[+ French +]--
	create_template("talent_tree_ogr_abil1_001_desc_fr",
		{"loc_talent_ogryn_toughness_on_bull_rush_desc"}, {"fr"},
			loc_text("{toughness:%s} de la "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère par ennemi touché avec {ability:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_1_rgb_fr)),
	--[+ Russian +]-- Топающие сапоги -- руоф Сокрушающий топот
	create_template("talent_tree_ogr_abil1_001_desc_ru",
		{"loc_talent_ogryn_toughness_on_bull_rush_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за каждого врага задетого способностью {ability:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_1_1_rgb_ru)),

	--[+ ABILITY 1-2 - Trample +]--
	create_template("talent_tree_ogr_abil1_002_desc_en",
		{"loc_talent_ogryn_ability_charge_trample_desc"}, {"en"},
			loc_text("For each Enemy hit by {talent_name:%s} you gain a Stack of "..COLORS_KWords.Trample_rgb.." which increases Base "..COLORS_KWords.Damage_rgb.." by {damage:%s} for {duration:%s} seconds. Max Stacks {stack:%s}."
				..TALENTS_Enh_desc2.ED_OGR_Ability_1_2_rgb)),
				-- talent_name: Bull Rush, damage: +2%, duration: 8, stack: 25, rewrite, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_ogr_abil1_002_desc_fr",
		{"loc_talent_ogryn_ability_charge_trample_desc"}, {"fr"},
			loc_text("Pour chaque ennemi touché par {talent_name:%s}, vous gagnez un cumul de "..COLORS_KWords_fr.Trample_rgb_fr.." qui augmente les "..COLORS_KWords_fr.Damage_rgb_fr.." de base de {damage:%s} pendant {duration:%s} secondes. Jusqu'à {stack:%s} cumuls."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_2_rgb_fr)),
	--[+ Russian +]-- Топот -- руоф Топанье
	create_template("talent_tree_ogr_abil1_002_desc_ru",
		{"loc_talent_ogryn_ability_charge_trample_desc"}, {"ru"},
			loc_text("За каждого врага, задетого способностью {talent_name:%s}, вы получаете заряд "..COLORS_KWords_ru.Trample_rgb_ru..", который даёт {damage:%s} базового "..COLORS_KWords_ru.Dmg_a_rgb_ru.." на {duration:%s} секунд. Максимум {stack:%s} зарядов."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_1_2_rgb_ru)),

	--[+ ABILITY 1-3 - Pulverise +]--
	create_template("talent_tree_ogr_abil1_003_desc_en",
		{"loc_talent_ogryn_bleed_on_bull_rush_desc"}, {"en"},
			loc_text("{stacks:%s} Stacks of "..COLORS_KWords.Bleed_rgb.." are applied to enemies hit by {ability:%s}."
				..TALENTS_Enh_desc2.ED_OGR_Ability_1_3_rgb)),
				-- stacks: 5, ability: Indomitable, rewrite, colors
	--[+ French +]--
	create_template("talent_tree_ogr_abil1_003_desc_fr",
		{"loc_talent_ogryn_bleed_on_bull_rush_desc"}, {"fr"},
			loc_text("{stacks:%s} cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." sont appliqués aux ennemis touchés par {ability:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_3_rgb_fr)),
	--[+ Russian +]-- Разбрызгивание -- Крошилово
	create_template("talent_tree_ogr_abil1_003_desc_ru",
		{"loc_talent_ogryn_bleed_on_bull_rush_desc"}, {"ru"},
			loc_text("{stacks:%s} зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." накладывается на врагов, которых задела способность {ability:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_1_3_rgb_ru)),

	--[+ ABILITY 2 - Loyal Protector +]--
	create_template("talent_tree_ogr_abil2_000_desc_en",
		{"loc_ability_ogryn_taunt_shout_new_desc"}, {"en"},
			loc_text("Taunt Enemies within {radius:%s} meters, making them Attack only you for {duration:%s} seconds. The effect repeats after {first_pulse:%s} seconds, and after {second_pulse:%s} seconds.\n\n"
				.."Base Cooldown: {cooldown:%s} seconds."
				..TALENTS_Enh_desc2.ED_OGR_Ability_2_rgb)),
				-- radius: 12, duration: 15, first_pulse: 3, second_pulse: 6, cooldown: 45, m->meters, s->seconds
	--[+ French +]--Protecteur Loyal
	create_template("talent_tree_ogr_abil2_000_desc_fr",
		{"loc_ability_ogryn_taunt_shout_new_desc"}, {"fr"},
			loc_text("Provoque les ennemis dans un rayon de {radius:%s} mètres, les obligeant à ne s'attaquer qu'à vous pendant {duration:%s} secondes. L'effet se repète après {first_pulse:%s} secondes, et une seconde fois après {second_pulse:%s} secondes.\n\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_2_rgb_fr)),
	--[+ Russian +]-- Верный защитник 
	create_template("talent_tree_ogr_abil2_000_desc_ru",
		{"loc_ability_ogryn_taunt_shout_new_desc"}, {"ru"},
			loc_text("Вы кричите, провоцируя врагов в радиусе {radius:%s} метров и заставляя их атаковать только вас в течение {duration:%s} секунд. Эффект повторяется через {first_pulse:%s} секунды и через {second_pulse:%s} секунд.\n\n"
				.."Восстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_2_rgb_ru)),

	--[+ ABILITY 2-1 - Valuable Distraction +]--
	create_template("talent_tree_ogr_abil2_001_desc_en",
		{"loc_talent_ogryn_taunt_damage_taken_increase_description"}, {"en"},
			loc_text("{base_damage:%s} Base "..COLORS_KWords.Damage_rgb.." taken from all sources by enemies affected by {talent_name:%s} for "..COLORS_Numbers.n_15_rgb.." seconds."
				..TALENTS_Enh_desc2.ED_OGR_Ability_2_1_rgb)),
				-- talent_name: Loyal Protector, base_damage: +25%, rewrite, colors
	--[+ French +]--
	create_template("talent_tree_ogr_abil2_001_desc_fr",
		{"loc_talent_ogryn_taunt_damage_taken_increase_description"}, {"fr"},
			loc_text("{base_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." provenant de toutes les sources pour les ennemis affectés par {talent_name:%s} pendant "..COLORS_Numbers.n_15_rgb.." secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_2_1_rgb_fr)),
	--[+ Russian +]-- Отвлекающий манёвр -- руоф Ценное отвлечение
	create_template("talent_tree_ogr_abil2_001_desc_ru",
		{"loc_talent_ogryn_taunt_damage_taken_increase_description"}, {"ru"},
			loc_text("{base_damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." из любого источника всем врагам, которых спровоцировала способность {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_2_1_rgb_ru)),

	--[+ ABILITY 2-2 - No Pain! +]--
	create_template("talent_tree_ogr_abil2_002_desc_en",
		{"loc_talent_ogryn_taunt_restore_toughness_new_desc"}, {"en"},
			loc_text("{tougness:%s} "..COLORS_KWords.Toughness_rgb.." is replenished by {talent_name:%s} and its repeat effects. Plus an additional {toughness_per_hit:%s} "..COLORS_KWords.Toughness_rgb.." every "..COLORS_Numbers.n_1_rgb.." second per enemy for {duration:%s} seconds, up to {max:%s}."
				..TALENTS_Enh_desc2.ED_OGR_Ability_2_2_rgb)),
				-- tougness: 2.5%, talent_name: Loyal Protector, rewrite, colors
	--[+ French +]-- Sans douleur!
	create_template("talent_tree_ogr_abil2_002_desc_fr",
		{"loc_talent_ogryn_taunt_restore_toughness_new_desc"}, {"fr"},
			loc_text("Régénere {tougness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par {talent_name:%s} et ses répétitions. Plus {toughness_per_hit:%s} "..COLORS_KWords_fr.Toughness_rgb_fr.." toute les "..COLORS_Numbers.n_1_rgb.." second par ennemi pendant {duration:%s} secondes, jusqu'à {max:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_2_2_rgb_fr)),
	--[+ Russian +]-- Боли нет!
	create_template("talent_tree_ogr_abil2_002_desc_ru",
		{"loc_talent_ogryn_taunt_restore_toughness_new_desc"}, {"ru"},
			loc_text("{tougness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восполняется способностью {talent_name:%s} и его повторяющимися эффектами. Плюс дополнительная {toughness_per_hit:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." каждую "..COLORS_Numbers.n_1_rgb.." секунду за врага в течение {duration:%s} секунд, до {max:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_2_2_rgb_ru)),

	--[+ ABILITY 2-3 - Go again! +]--
	create_template("talent_tree_ogr_abil2_003_desc_en",
		{"loc_talent_ogryn_taunt_stagger_cd_description"}, {"en"},
			loc_text(COLORS_KWords.Staggering_rgb.." an Enemy replenishes {cooldown_reduction:%s} "..COLORS_KWords.Cd_rgb.." of your {talent_name:%s}."
				..TALENTS_Enh_desc2.ED_OGR_Ability_2_3_rgb)),
				-- talent_name: Loyal Protector, radius: 50%, colors
	--[+ French +]--Encore une fois!
	create_template("talent_tree_ogr_abil2_003_desc_fr",
		{"loc_talent_ogryn_taunt_stagger_cd_description"}, {"fr"},
			loc_text("Faire "..COLORS_KWords_fr.Staggering_rgb_fr.." un ennemi régénère {cooldown_reduction:%s} du "..COLORS_KWords_fr.Cd_rgb_fr.." de votre {talent_name:%s}.")), --..TALENTS_Enh_desc2.ED_OGR_Ability_2_3_rgb_fr
	--[+ Russian +]-- Давай по новой!
	create_template("talent_tree_ogr_abil2_003_desc_ru",
		{"loc_talent_ogryn_taunt_stagger_cd_description"}, {"ru"},
			loc_text(COLORS_KWords_ru.Staggerr_rgb_ru.." врага восполняет {cooldown_reduction:%s} "..COLORS_KWords_ru.Ability_cd_rgb_ru.." {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_2_3_rgb_ru)),

	--[+ ABILITY 3 - Point-Blank Barrage +]--
	create_template("talent_tree_ogr_abil3_000_desc_en",
		{"loc_talent_ogryn_combat_ability_special_ammo_new_desc"}, {"en"},
			loc_text("Swaps to and reloads your Ranged Weapon.\n"
				.."For the next {duration:%s} seconds you have:\n"
				.."{damage:%s} Close Range "..COLORS_KWords.Damage_rgb..",\n"
				.."{ranged_attack_speed:%s} Rate of Fire,\n"
				.."{reload_speed:%s} Reload Speed and\n"
				..COLORS_Numbers.n_minus_rgb.."{reduced_move_penalty:%s} to Braced Movement Speed penalties.\n\n"
				.."Base Cooldown {cooldown:%s} seconds."
				..TALENTS_Enh_desc2.ED_OGR_Ability_3_rgb)),
				-- ranged_attack_speed: +25%, reload_speed: +70%, duration: 10, cooldown: 80, s->seconds
	--[+ French +]--Barrage à bout portant
	create_template("talent_tree_ogr_abil3_000_desc_fr",
		{"loc_talent_ogryn_combat_ability_special_ammo_new_desc"}, {"fr"},
			loc_text("Échange et recharge votre arme à distance. Pendant les {duration:%s} secondes suivantes, vous avez une vitesse de tir de {ranged_attack_speed:%s}, une vitesse de recharge de {reload_speed:%s}, des pénalités de vitesse de déplacement réduites de {reduced_move_penalty:%s}, et vous gagnez {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à courte portée.\nTemps de recharge de base {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_rgb_fr)),
	--[+ Russian +]-- Беспощадный обстрел в упор -- руоф Решительный натиск
	create_template("talent_tree_ogr_abil3_000_desc_ru",
		{"loc_talent_ogryn_combat_ability_special_ammo_new_desc"}, {"ru"},
			loc_text("Вы переключаетесь на оружие дальнего боя и перезаряжаете его. Вы получаете на {duration:%s} секунд:\n{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." на ближней дистанции,\n{ranged_attack_speed:%s} к скорострельности,\n{reload_speed:%s} к скорости перезарядки и\n"..COLORS_Numbers.n_minus_rgb.."{reduced_move_penalty:%s} к штрафу скорости движения при прицеливании.\nВосстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_3_rgb_ru)),

	--[+ ABILITY 3-1 - Bullet Bravado +]--
	create_template("talent_tree_ogr_abil3_001_desc_en",
		{"loc_talent_ogryn_special_ammo_toughness_on_shot_and_reload_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes for every Shot Fired and {toughness_reload:%s} "..COLORS_KWords.Toughness_rgb.." on each Reload while {ability:%s} is active."
				..TALENTS_Enh_desc2.ED_OGR_Ability_3_1_rgb)),
				-- ability: Point-Blank Barrage, toughness: +2%, toughness_reload: +10%, rewrite, colors
	--[+ French +]-- Bravade de la balle
	create_template("talent_tree_ogr_abil3_001_desc_fr",
		{"loc_talent_ogryn_special_ammo_toughness_on_shot_and_reload_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère à chaque tir et {toughness_reload:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." à chaque rechargement pendant que {ability:%s} est actif."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_1_rgb_fr)),
	--[+ Russian +]-- Бравада стрелка -- руоф Лихая пуля
	create_template("talent_tree_ogr_abil3_001_desc_ru",
		{"loc_talent_ogryn_special_ammo_toughness_on_shot_and_reload_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за каждый сделанный выстрел и ещё {toughness_reload:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." за каждую перезарядку во время действия способности {ability:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_3_1_rgb_ru)),

	--[+ ABILITY 3-2 - Hail of Fire +]--
	create_template("talent_tree_ogr_abil3_002_desc_en",
		{"loc_talent_ogryn_special_ammo_armor_pen_new_desc"}, {"en"},
			loc_text("{rending_multiplier:%s} "..COLORS_KWords.Rending_rgb.." and {damage:%s} "..COLORS_KWords.Damage_rgb.." to your Ranged Attacks while {ability:%s} is active."
				..TALENTS_Enh_desc2.ED_OGR_Ability_3_2_rgb)),
				-- rending_multiplier: +30%, ability: Point-Blank Barrage, colors
	--[+ French +]-- Grêle de feu
	create_template("talent_tree_ogr_abil3_002_desc_fr",
		{"loc_talent_ogryn_special_ammo_armor_pen_new_desc"}, {"fr"},
			loc_text("{rending_multiplier:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." et {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à vos attaques à distance pendant que {ability:%s} est actif."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_2_rgb_fr)),
	--[+ Russian +]-- Град огня -- руоф Слава пламени
	create_template("talent_tree_ogr_abil3_002_desc_ru",
		{"loc_talent_ogryn_special_ammo_armor_pen_new_desc"}, {"ru"},
			loc_text("{rending_multiplier:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." и {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." для ваших выстрелов во время действия способности {ability:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_3_2_rgb_ru)),

	--[+ ABILITY 3-3 - Light 'em Up +]--
	create_template("talent_tree_ogr_abil3_003_desc_en",
		{"loc_talent_ogryn_special_ammo_fire_shots_new_desc"}, {"en"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{stacks:%s} Stacks of "..COLORS_KWords.Burn_rgb.." are applied on Ranged Attacks while {ability:%s} is active. Max Stacks {max_stacks:%s}."
				..TALENTS_Enh_desc2.ED_OGR_Ability_3_3_rgb)),
				-- stacks: 2, ability: Point-Blank Barrage, colors
	--[+ French +]-- Allumez-les!
	create_template("talent_tree_ogr_abil3_003_desc_fr",
		{"loc_talent_ogryn_special_ammo_fire_shots_new_desc"}, {"fr"},
			loc_text("Les attaques à distance appliquent {stacks:%s} cumuls de "..COLORS_KWords_fr.Burn_rgb_fr.." pendant que {ability:%s} est actif. Jusqu'à un maximum de {max_stacks:%s} cumuls."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_3_rgb_fr)),
	--[+ Russian +]-- Задай жару -- руоф Зададим жару
	create_template("talent_tree_ogr_abil3_003_desc_ru",
		{"loc_talent_ogryn_special_ammo_fire_shots_new_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{stacks:%s} заряда "..COLORS_KWords_ru.Burn_rgb_ru.." накладывают ваши выстрелы во время действия способности {ability:%s}. Максимум {max_stacks:%s} зарядов."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_3_3_rgb_ru)),

--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
	--[+ KEYSTONE 1 - Heavy Hitter +]--
	create_template("talent_tree_ogr_keys1_000_desc_en",
		{"loc_talent_ogryn_passive_heavy_hitter_new_desc"}, {"en"},
			loc_text("{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on Melee Attack Hit. Stacks {stacks:%s} times. Gain {heavy_stacks:%s} Stacks on Heavy Attack Hit."
				..TALENTS_Enh_desc2.ED_OGR_Keystone_1_rgb)),
				-- damage: +5%, duration: 7.5, stacks: 5, s->seconds, colors
	--[+ French +]--Frappe lourde
	create_template("talent_tree_ogr_keys1_000_desc_fr",
		{"loc_talent_ogryn_passive_heavy_hitter_new_desc"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée pendant {duration:%s} secondes lors d'une attaque réussie. Se cumuls {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_rgb_fr)),
	--[+ Russian +]-- Тяжёлый нападающий -- руоф Тяжеловес
	create_template("talent_tree_ogr_keys1_000_desc_ru",
		{"loc_talent_ogryn_passive_heavy_hitter_new_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя на {duration:%s} секунды при нанесении ударов в ближнем бою. Суммируется {stacks:%s} раз. Даёт {heavy_stacks:%s} заряда при тяжёлых ударах."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_rgb_ru)),

	--[+ KEYSTONE 1-1 - Don't Feel a Thing +]--
	create_template("talent_tree_ogr_keys1_001_desc_en",
		{"loc_talent_ogryn_passive_heavy_hitter_tdr_desc"}, {"en"},
			loc_text("{toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for each Stack, also granted by {talent_name:%s}.")),
				-- talent_name: Heavy Hitter, stacks: 5, attack_speed: +10% -- ..TALENTS_Enh_desc2.ED_OGR_Keystone_1_1_rgb
	--[+ French +]--Rien senti
	create_template("talent_tree_ogr_keys1_001_desc_fr",
		{"loc_talent_ogryn_passive_heavy_hitter_tdr_desc"}, {"fr"},
			loc_text("{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." par cumuls de {talent_name:%s}. ")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_1_rgb_fr
	--[+ Russian +]-- Не чувствую ничего
	create_template("talent_tree_ogr_keys1_001_desc_ru",
		{"loc_talent_ogryn_passive_heavy_hitter_tdr_desc"}, {"ru"},
			loc_text("{toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." за каждый заряд даётся талантом {talent_name:%s}.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_1_rgb_ru

	--[+ KEYSTONE 1-2 - Just Getting Started +]--
	create_template("talent_tree_ogr_keys1_002_desc_en",
		{"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed_description"}, {"en"},
			loc_text("{attack_speed:%s} Attack Speed while {talent_name:%s} is at {stacks:%s} Stacks."
				..TALENTS_Enh_desc2.ED_OGR_Keystone_1_2_rgb)),
				-- talent_name: Heavy Hitter, stacks: 5, attack_speed: +10%
	--[+ French +]-- Rien que le début
	create_template("talent_tree_ogr_keys1_002_desc_fr",
		{"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed_description"}, {"fr"},
			loc_text("{attack_speed:%s} Vitesse d'attaque tant que {talent_name:%s} est à {stacks:%s} cumuls."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_2_rgb_fr)),
	--[+ Russian +]-- Я только начал -- руоф Лишь начало!
	create_template("talent_tree_ogr_keys1_002_desc_ru",
		{"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed_description"}, {"ru"},
			loc_text("{attack_speed:%s} к скорости атаки пока у вас {stacks:%s} зарядов таланта {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_2_rgb_ru)),

	--[+ KEYSTONE 1-3 - Unstoppable +]--
	create_template("talent_tree_ogr_keys1_003_desc_en",
		{"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness_new_description"}, {"en"},
			loc_text("{melee_toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenished from Melee Kills for each Stack, also granted by {talent_name:%s}."
				..TALENTS_Enh_desc2.ED_OGR_Keystone_1_3_rgb)),
				-- talent_name: Heavy Hitter, stacks: 5, toughness_melee_replenish: +100%, colors
	--[+ French +]-- Instoppable
	create_template("talent_tree_ogr_keys1_003_desc_fr",
		{"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness_new_description"}, {"fr"},
			loc_text("{melee_toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." régénérée par les éliminations en mêlée par cumuls de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_3_rgb_fr)),
	--[+ Russian +]-- Неудержимый -- руоф Неудержимость
	create_template("talent_tree_ogr_keys1_003_desc_ru",
		{"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness_new_description"}, {"ru"},
			loc_text("{melee_toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается от убийств в ближнем бою за каждый заряд даётся талантом {talent_name:%s}.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_3_rgb_ru

	--[+ KEYSTONE 1-4 - Great Cleaver +]--
	create_template("talent_tree_ogr_keys1_004_desc_en",
		{"loc_talent_ogryn_passive_heavy_hitter_cleave_desc"}, {"en"},
			loc_text("{cleave:%s} "..COLORS_KWords.Cleave_rgb.." for each Stack, also granted by {talent_name:%s}.")),
				-- talent_name: Heavy Hitter -- ..TALENTS_Enh_desc2.ED_OGR_Keystone_1_4_rgb
	--[+ French +]-- Fouet de guerre
	create_template("talent_tree_ogr_keys1_004_desc_fr",
		{"loc_talent_ogryn_passive_heavy_hitter_cleave_desc"}, {"fr"},
			loc_text("{cleave:%s} de "..COLORS_KWords_fr.Cleave_rgb_fr.." par cumul de {talent_name:%s}.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_4_rgb_fr
	--[+ Russian +]-- Брутальный моментум -- руоф Зверский моментум
	create_template("talent_tree_ogr_keys1_004_desc_ru",
		{"loc_talent_ogryn_passive_heavy_hitter_cleave_desc"}, {"ru"},
			loc_text("{cleave:%s} к "..COLORS_KWords_ru.Cleave_rgb_ru.." за каждый заряд даётся талантом {talent_name:%s}.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_4_rgb_ru

	--[+ KEYSTONE 1-5 - Impactful +]--
	create_template("talent_tree_ogr_keys1_005_desc_en",
		{"loc_talent_ogryn_passive_heavy_hitter_stagger_desc"}, {"en"},
			loc_text("{impact:%s} "..COLORS_KWords.Impact_rgb.." for each Stack, also granted by {talent_name:%s}.")),
				-- talent_name: Heavy Hitter -- ..TALENTS_Enh_desc2.ED_OGR_Keystone_1_5_rgb
	--[+ French +]-- Impactant
	create_template("talent_tree_ogr_keys1_005_desc_fr",
		{"loc_talent_ogryn_passive_heavy_hitter_stagger_desc"}, {"fr"},
			loc_text("{impact:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.."par cumul de {talent_name:%s}.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_5_rgb_fr
	--[+ Russian +]-- Брутальный моментум -- руоф Зверский моментум
	create_template("talent_tree_ogr_keys1_005_desc_ru",
		{"loc_talent_ogryn_passive_heavy_hitter_stagger_desc"}, {"ru"},
			loc_text("{impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." врагов за каждый заряд даётся талантом {talent_name:%s}.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_5_rgb_ru

	--[+ KEYSTONE 2 - Feel No Pain +]--
	create_template("talent_tree_ogr_keys2_000_desc_en",
		{"loc_talent_ogryn_carapace_armor_any_damage_desc"}, {"en"},
			loc_text("You are blessed with {stacks:%s} Stacks of "..COLORS_KWords.Feel_no_pain_rgb..". Each Stack grants:\n"
				.."{toughness_regen:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment and\n"
				.."{damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Reduction.\n"
				.."Taking "..COLORS_KWords.Damage_rgb.." removes one Stack. Stacks are restored every {duration:%s} seconds."
				..TALENTS_Enh_desc2.ED_OGR_Keystone_2_rgb)),
				-- stacks: 10, toughness_regen: +2.5%, damage_reduction: +2.5%, duration: 3, s->seconds, colors
	--[+ French +]--
	create_template("talent_tree_ogr_keys2_000_desc_fr",
		{"loc_talent_ogryn_carapace_armor_any_damage_desc"}, {"fr"},
			loc_text("Vous recevez {stacks:%s} cumuls de "..COLORS_KWords_fr.Feel_no_pain_rgb_fr..". Chaque cumul accorde :\n{toughness_regen:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." et\n{damage_reduction:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr..".\nPrendre des "..COLORS_KWords_fr.Damage_rgb_fr.." retire un cumul. Les cumuls sont restaurées toutes les {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_rgb_fr)),
	--[+ Russian +]-- Неболит 
	create_template("talent_tree_ogr_keys2_000_desc_ru",
		{"loc_talent_ogryn_carapace_armor_any_damage_desc"}, {"ru"},
			loc_text("Вам даровано {stacks:%s} зарядов "..COLORS_KWords_ru.Feel_no_pain_rgb_ru..". Каждый заряд даёт:\n{toughness_regen:%s} восполнения "..COLORS_KWords_ru.Toughness_rgb_ru.." и\n{damage_reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru..".\nПолучение "..COLORS_KWords_ru.Dmg_a_rgb_ru.." снимает один заряд. Заряды восстанавливаются каждые {duration:%s} секунды."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_2_rgb_ru)),

	--[+ KEYSTONE 2-1 - Pained Outburst +]--
	create_template("talent_tree_ogr_keys2_001_desc_en",
		{"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks_new_desc"}, {"en"},
			loc_text("{toughness_replenish:%s} "..COLORS_KWords.Toughness_rgb.." replenished when {talent_name:%s} reaches {stacks:%s} Stacks or below. It also creates an explosion that deals No "..COLORS_KWords.Damage_rgb.." but "..COLORS_KWords.Staggers_rgb.." surrounding enemies.\n\n"
				.."This effect can occur once every {cooldown:%s} seconds."
				..TALENTS_Enh_desc2.ED_OGR_Keystone_2_1_rgb)),
				-- talent_name: Feel No Pain, toughness_replenish: +20%, cooldown: 30, s->seconds, colors
	--[+ French +]-- Éclat de douleur
	create_template("talent_tree_ogr_keys2_001_desc_fr",
		{"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks_new_desc"}, {"fr"},
			loc_text("{toughness_replenish:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." régénérée quand {talent_name:%s} atteint {stacks:%s} cumul ou moins. Cela crée aussi une explosion qui ne cause pas de dégâts mais fait "..COLORS_KWords_fr.Staggering_rgb_fr.." les ennemis environnants.\n\nCet effet peut se produire une fois toutes les {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_1_rgb_fr)),
	--[+ Russian +]-- Вспышка боли 
	create_template("talent_tree_ogr_keys2_001_desc_ru",
		{"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks_new_desc"}, {"ru"},
			loc_text("{toughness_replenish:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается, если заряды таланта {talent_name:%s} достигают {stacks:%s} зарядов или меньше. Обнуление зарядов также создаёт взрыв, который не наносит "..COLORS_KWords_ru.Dmg_a_rgb_ru..", но "..COLORS_KWords_ru.Staggers_e_rgb_ru.." врагов вокруг.\n\nЭтот эффект может срабатывать раз в {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_2_1_rgb_ru)),

	--[+ KEYSTONE 2-2 - Strongest! +]--
	create_template("talent_tree_ogr_keys2_002_desc_en",
		{"loc_talent_ogryn_carapace_armor_add_stack_on_push_desc"}, {"en"},
			loc_text(COLORS_Numbers.n_1_rgb.." Stack of {talent_name:%s} is restored by Pushing enemies."
				..TALENTS_Enh_desc2.ED_OGR_Keystone_2_2_rgb)),
				-- talent_name: Feel No Pain
	--[+ French +]-- Le plus fort!
	create_template("talent_tree_ogr_keys2_002_desc_fr",
		{"loc_talent_ogryn_carapace_armor_add_stack_on_push_desc"}, {"fr"},
			loc_text(COLORS_Numbers.n_1_rgb.." cumul de {talent_name:%s} est restaurée en poussant les ennemis."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_2_rgb_fr)),
	--[+ Russian +]-- Сильнейший! 
	create_template("talent_tree_ogr_keys2_002_desc_ru",
		{"loc_talent_ogryn_carapace_armor_add_stack_on_push_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_1_rgb.." заряд таланта {talent_name:%s} восстанавливается при отталкивании врагов."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_2_2_rgb_ru)),

	--[+ KEYSTONE 2-3 - Toughest! +]--
	create_template("talent_tree_ogr_keys2_003_desc_en",
		{"loc_talent_ogryn_carapace_armor_more_toughness_desc"}, {"en"},
			loc_text("{toughness_regen:%s} "..COLORS_KWords.Toughness_rgb.." replenishment per stack is granted by {talent_name:%s}."
				..TALENTS_Enh_desc2.ED_OGR_Keystone_2_3_rgb)),
				-- talent_name: Feel No Pain, toughness_regen: +2.5%, colors
	--[+ French +]-- Le plus résistant!
	create_template("talent_tree_ogr_keys2_003_desc_fr",
		{"loc_talent_ogryn_carapace_armor_more_toughness_desc"}, {"fr"},
			loc_text("{toughness_regen:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." par cumul est accordée par {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_3_rgb_fr)),
	--[+ Russian +]-- Стойкий! -- руоф Самый выносливый!
	create_template("talent_tree_ogr_keys2_003_desc_ru",
		{"loc_talent_ogryn_carapace_armor_more_toughness_desc"}, {"ru"},
			loc_text("{toughness_regen:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за каждый заряд таланта {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_2_3_rgb_ru)),

	--[+ KEYSTONE 3 - Burst Limiter Override +]--
	create_template("talent_tree_ogr_keys3_000_desc_en",
		{"loc_talent_ogryn_blo_new_alt_desc"}, {"en"},
			loc_text("{proc_chance:%s} chance of triggering "..COLORS_KWords.Lucky_bullet_rgb.." and not consuming Ammo when making Ranged Attacks.\n\n"
				.."In addition, gain {ranged_damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." on Ranged Kills. Max Stacks {stacks:%s}. Lasts {duration:%s} seconds."
				..TALENTS_Enh_desc2.ED_OGR_Keystone_3_rgb)),
				-- proc_chance: 8%, colors
	--[+ French +]-- Obstruction du limiteur de tir
	create_template("talent_tree_ogr_keys3_000_desc_fr",
		{"loc_talent_ogryn_blo_new_alt_desc"}, {"fr"},
			loc_text("{proc_chance:%s} de chance de déclencher "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." et de ne pas consommer de munitions lors des attaques à distance.\n\nDe plus, vous gagnez {ranged_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance lors d'une élimination à distance. Se cumuls {stacks:%s} fois. Dure {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_rgb_fr)),
	--[+ Russian +]-- Обход ограничителя очереди -- руоф Взлом ограничителя взрыва
	create_template("talent_tree_ogr_keys3_000_desc_ru",
		{"loc_talent_ogryn_blo_new_alt_desc"}, {"ru"},
			loc_text("{proc_chance:%s} шанс получить "..COLORS_KWords_ru.Lucky_bullet_rgb_ru.." и не потратить боеприпас при выстреле.\n\nТакже вы получаете {ranged_damage:%s} к дальнобойному "..COLORS_KWords_ru.Dmg_a_rgb_ru.." при дальнобойных убийствах. Максимум {stacks:%s} зарядов. Длится {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_3_rgb_ru)),

	--[+ KEYSTONE 3-1 - Back Off! +]--
	create_template("talent_tree_ogr_keys3_001_desc_en",
		{"loc_talent_ogryn_blo_melee_desc"}, {"en"},
			loc_text("{chance:%s} chance to trigger "..COLORS_KWords.Lucky_bullet_rgb.." on next Shot when killing an enemy with a Melee Attack. Stacks {stacks:%s} times.")),
				-- cooldown_reduction: +200%, duration: 2, s->seconds, colors -- ..TALENTS_Enh_desc2.ED_OGR_Keystone_3_1_rgb
	--[+ French +]-- Reculez!
	create_template("talent_tree_ogr_keys3_001_desc_fr",
		{"loc_talent_ogryn_blo_melee_desc"}, {"fr"},
			loc_text("{chance:%s} de chance de déclancher une "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." lors de votre prochain tir lors d'une élimination en mélée. Se cumuls {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_1_rgb_fr)),
	--[+ Russian +]-- Максимальная огневая мощь 
	create_template("talent_tree_ogr_keys3_001_desc_ru",
		{"loc_talent_ogryn_blo_melee_desc"}, {"ru"},
			loc_text("{chance:%s} шанс активировать "..COLORS_KWords_ru.Lucky_bullet_rgb_ru.." для вашего следующего выстрела после убийства врага в ближнем бою. Суммируется {stacks:%s} раз.")),
				-- ..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_3_1_rgb_ru

	--[+ KEYSTONE 3-2 - Maximum Firepower +]--
	create_template("talent_tree_ogr_keys3_002_desc_en",
		{"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction_desc"}, {"en"},
			loc_text("{cooldown_reduction:%s} "..COLORS_KWords.Ability_cd_rgb.." Reduction for {duration:%s} seconds when "..COLORS_KWords.Lucky_bullet_rgb.." triggers."
				..TALENTS_Enh_desc2.ED_OGR_Keystone_3_2_rgb)),
				-- cooldown_reduction: +200%, duration: 2, s->seconds, colors
	--[+ French +]-- Maximale puissance de feu
	create_template("talent_tree_ogr_keys3_002_desc_fr",
		{"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction_desc"}, {"fr"},
			loc_text("{cooldown_reduction:%s} de "..COLORS_KWords_fr.Ability_cd_rgb_fr.." pendant {duration:%s} secondes lorsque "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." est déclenché."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_2_rgb_fr)),
	--[+ Russian +]-- Максимальная огневая мощь 
	create_template("talent_tree_ogr_keys3_002_desc_ru",
		{"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction_desc"}, {"ru"},
			loc_text("{cooldown_reduction:%s} к сокращению времени "..COLORS_KWords_ru.Ability_cd_rgb_ru.." на  {duration:%s} секунды, когда вы получаете "..COLORS_KWords_ru.Lucky_bullet_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_3_2_rgb_ru)),

	--[+ KEYSTONE 3-3 - Good Shootin' +]--
	create_template("talent_tree_ogr_keys3_003_desc_en",
		{"loc_talent_ogryn_critical_leadbelcher_desc"}, {"en"},
			loc_text("The shot that triggers "..COLORS_KWords.Lucky_bullet_rgb.." is a guaranteed "..COLORS_KWords.Crit_rgb.." (if it Hits).")),
				-- colors -- ..TALENTS_Enh_desc2.ED_OGR_Keystone_3_3_rgb
	--[+ French +]-- Bonne visée
	create_template("talent_tree_ogr_keys3_003_desc_fr",
		{"loc_talent_ogryn_critical_leadbelcher_desc"}, {"fr"},
			loc_text("Le tir qui déclenche "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." est un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." garanti (s'il touche).")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_3_rgb_fr
	--[+ Russian +]-- Хорошая стрельба -- руоф Хороший выстрел
	create_template("talent_tree_ogr_keys3_003_desc_ru",
		{"loc_talent_ogryn_critical_leadbelcher_desc"}, {"ru"},
			loc_text("Выстрел активировавший "..COLORS_KWords_ru.Lucky_bullet_rgb_ru.." гарантированно будет "..COLORS_KWords_ru.Crit_hit_om_rgb_ru.." (если попадёт).")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_3_3_rgb_ru

	--[+ KEYSTONE 3-4 - Heat of Battle +]--
	create_template("talent_tree_ogr_keys3_004_desc_en",
		{"loc_talent_ogryn_blo_fire_rate_desc"}, {"en"},
			loc_text("{fire_rate:%s} Fire Rate per Stack, also granted by {talent_name:%s}.")),
				-- proc_chance: 12%, rewrite, colors
	--[+ French +]-- Chaleur de la bataille
	create_template("talent_tree_ogr_keys3_004_desc_fr",
		{"loc_talent_ogryn_blo_fire_rate_desc"}, {"fr"},
			loc_text("{fire_rate:%s} de vitesse de tir par cumul de {talent_name:%s}.")),
	--[+ Russian +]-- Горячка боя
	create_template("talent_tree_ogr_keys3_004_desc_ru",
		{"loc_talent_ogryn_blo_fire_rate_desc"}, {"ru"},
			loc_text("{fire_rate:%s} к скорострельности за каждый заряд даётся талантом {talent_name:%s}.")),

	--[+ KEYSTONE 3-5 - More Burst Limiter Overrides! +]--
	create_template("talent_tree_ogr_keys3_005_desc_en",
		{"loc_talent_ogryn_blo_ally_ranged_buffs_desc"}, {"en"},
			loc_text("{ranged_damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." to you and Allies in "..COLORS_KWords.Coherency_rgb.." on "..COLORS_KWords.Lucky_bullet_rgb..". Lasts {duration:%s} seconds.")),
				-- proc_chance: 12%, rewrite, colors
	--[+ French +]-- Encore plus de contournement du limiteur de tir!
	create_template("talent_tree_ogr_keys3_005_desc_fr",
		{"loc_talent_ogryn_blo_ally_ranged_buffs_desc"}, {"fr"},
			loc_text("{ranged_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance pour vous et vos alliés en syntonie lors d'une "..COLORS_KWords_fr.Lucky_bullet_rgb_fr..". Dure {duration:%s} secondes..")),
	--[+ Russian +]-- Ещё больший обход ограничителя очереди! -- руоф Больше взлома ограничителя взрыва!
	create_template("talent_tree_ogr_keys3_005_desc_ru",
		{"loc_talent_ogryn_blo_ally_ranged_buffs_desc"}, {"ru"},
			loc_text("{ranged_damage:%s} к дальнобойному "..COLORS_KWords_ru.Damage_rgb_ru.." для вас и ваших союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..", когда вы получаете "..COLORS_KWords_ru.Lucky_bullet_rgb_ru..". Длится {duration:%s} секунд.")),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Lynchpin +]--
	create_template("talent_tree_ogr_pas_001_desc_en",
		{"loc_talent_ogryn_coherency_toughness_increase_desc"}, {"en"},
			loc_text("{toughness_multiplier:%s} "..COLORS_KWords.Toughness_rgb.." replenish while in "..COLORS_KWords.Coherency_rgb..".")),
				-- toughness_multiplier: +50%, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_1_rgb
	--[+ French +]-- Opérateur
	create_template("talent_tree_ogr_pas_001_desc_fr",
		{"loc_talent_ogryn_coherency_toughness_increase_desc"}, {"fr"},
			loc_text("{toughness_multiplier:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_7_rgb_fr)),
	--[+ Russian +]-- Опора -- руоф Переломный момент
	create_template("talent_tree_ogr_pas_001_desc_ru",
		{"loc_talent_ogryn_coherency_toughness_increase_desc"}, {"ru"},
			loc_text("{toughness_multiplier:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается пока вы в "..COLORS_KWords_ru.Coherency_rgb_ru..".")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_1_rgb_ru

	--[+ Passive 2 - Heavyweight +]--
	create_template("talent_tree_ogr_pas_002_desc_en",
		{"loc_talent_ogryn_ogryn_fighter_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." against Bulwarks, Crushers, Plague Ogryns and Reapers. Also receive {damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Reduction against the same.")),
				-- damage: +30%, damage_reduction: +30%, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_2_rgb
	--[+ French +]-- Poid Lourd
	create_template("talent_tree_ogr_pas_002_desc_fr",
		{"loc_talent_ogryn_ogryn_fighter_desc"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les Remparts, Broyeurs, Ogryns de la Peste et Fauchers. Vous recevez également {damage_reduction:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les mêmes ennemis.")), --..TALENTS_Enh_desc2_fr.ED_OGR_Passive_4_rgb_fr
	--[+ Russian +]-- Тяжеловес
	create_template("talent_tree_ogr_pas_002_desc_ru",
		{"loc_talent_ogryn_ogryn_fighter_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." бастионам, жнецам, крушителям и чумным огринам. Также вы получаете {damage_reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." от них.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_2_rgb_ru

	--[+ Passive 3 - Steady Grip +]--
	create_template("talent_tree_ogr_pas_003_desc_en",
		{"loc_talent_ogryn_toughness_regen_while_bracing_desc"}, {"en"},
			loc_text("{toughness_regen:%s} "..COLORS_KWords.Toughness_rgb.." Regeneration while bracing your Ranged weapon.")),
				-- toughness_regen: +3%, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_3_rgb
	--[+ French +]-- Poigne ferme
	create_template("talent_tree_ogr_pas_003_desc_fr",
		{"loc_talent_ogryn_toughness_regen_while_bracing_desc"}, {"fr"},
			loc_text("{toughness_regen:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors de la mis en joue de votre arme à distance.")), --..TALENTS_Enh_desc2_fr.ED_OGR_Passive_5_rgb_fr
	--[+ Russian +]-- Крепкий хват -- руоф Крепкая хватка
	create_template("talent_tree_ogr_pas_003_desc_ru",
		{"loc_talent_ogryn_toughness_regen_while_bracing_desc"}, {"ru"},
			loc_text("{toughness_regen:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается пока вы целитесь из дальнобойного оружия.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_3_rgb_ru

	--[+ Passive 4 - Smash 'Em! +]--
	create_template("talent_tree_ogr_pas_004_desc_en",
		{"loc_talent_ogryn_toughness_on_single_heavy_new_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes after hitting a single Enemy with a Melee Attack. Increased to {heavy_toughness:%s} "..COLORS_KWords.Toughness_rgb.." if it is a Heavy Attack.")),
				-- toughness: 20%, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_4_rgb
	--[+ French +]-- Ecrabouille les 
	create_template("talent_tree_ogr_pas_004_desc_fr",
		{"loc_talent_ogryn_toughness_on_single_heavy_new_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère après avoir frappé un seul ennemi avec une attaque de mêlée et {heavy_toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." si c'est une attaque de mélée puissante.")), --..TALENTS_Enh_desc2_fr.ED_OGR_Passive_6_rgb_fr
	--[+ Russian +]-- Круши их! -- руоф Вдарь им!
	create_template("talent_tree_ogr_pas_004_desc_ru",
		{"loc_talent_ogryn_toughness_on_single_heavy_new_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается после попадания по одному врагу тяжёлой атакой ближнего боя. Увеличивается до {heavy_toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..", если вы ударили тяжёлой атакой.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_4_rgb_ru

	--[+ Passive 5 - The Best Defence +]--
	create_template("talent_tree_ogr_pas_005_desc_en",
		{"loc_talent_ogryn_toughness_on_multiple_new_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes after hitting multiple Enemies with a single Melee Attack. Increased to {heavy_toughness:%s} "..COLORS_KWords.Toughness_rgb.." if it is a Heavy Attack.")),
				-- toughness: 20%, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_5_rgb
	--[+ French +]-- La meilleure défense
	create_template("talent_tree_ogr_pas_005_desc_fr",
		{"loc_talent_ogryn_toughness_on_multiple_new_desc"}, {"fr"},
			loc_text("{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère après avoir touché plusieurs ennemis avec une seule attaque de mêlée et {heavy_toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." si c'est une attaque de mélée puissante.")), --..TALENTS_Enh_desc2_fr.ED_OGR_Passive_3_rgb_fr
	--[+ Russian +]-- Лучшая защита
	create_template("talent_tree_ogr_pas_005_desc_ru",
		{"loc_talent_ogryn_toughness_on_multiple_new_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при нанесении удара по нескольким врагам одной тяжёлой атакой ближнего боя. Увеличивается до {heavy_toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..", если вы ударили тяжёлой атакой.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_5_rgb_ru

	--[+ Passive 6 - Furious +]--
	create_template("talent_tree_ogr_pas_006_desc_en",
		{"loc_talent_ogryn_damage_per_enemy_hit_previous_new_desc"}, {"en"},
			loc_text("You gain "..COLORS_Numbers.n_1_rgb.." Stack of {damage:%s} "..COLORS_KWords.Damage_rgb.." for each enemy Hit during a Single Melee Attack. Up to "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_25_rgb.." "..COLORS_KWords.Damage_rgb.." at "..COLORS_Numbers.n_10_rgb.." Stacks. Calculated separately for each Attack.")),
				-- damage: +2.5%, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_6_rgb
	--[+ French +]--Furieux
	create_template("talent_tree_ogr_pas_006_desc_fr",
		{"loc_talent_ogryn_damage_per_enemy_hit_previous_new_desc"}, {"fr"},
			loc_text("Vous gagnez "..COLORS_Numbers.n_1_rgb.." cumul de {damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." par ennemis touchez durant une attaque de mélée unique. Jusqu'à "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_25_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." à "..COLORS_Numbers.n_10_rgb.." cumuls. calculer séparement pour chaque attaque.")), --..TALENTS_Enh_desc2_fr.ED_OGR_Passive_1_rgb_fr
	--[+ Russian +]-- Разъярённый -- руоф Разъяренный
	create_template("talent_tree_ogr_pas_006_desc_ru",
		{"loc_talent_ogryn_damage_per_enemy_hit_previous_new_desc"}, {"ru"},
			loc_text("Вы получаете "..COLORS_Numbers.n_1_rgb.." заряд {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." за каждого поражённого врага в течение одной атаки ближнего боя. До "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_25_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." при "..COLORS_Numbers.n_10_rgb.." зарядах. Рассчитывается отдельно для каждой атаки.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_6_rgb_ru

	--[+ Passive 7 - Towering Presence +]--
	create_template("talent_tree_ogr_pas_007_desc_en",
		{"loc_talent_ogryn_bigger_coherency_radius_desc"}, {"en"},
			loc_text("{radius:%s} "..COLORS_KWords.Coherency_rgb.." radius.")),
				-- radius: +50% -- ..TALENTS_Enh_desc2.ED_OGR_Passive_7_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_007_desc_fr",
		{"loc_talent_ogryn_bigger_coherency_radius_desc"}, {"fr"},
			loc_text("{radius:%s} de rayon de syntonie.")), --..TALENTS_Enh_desc2_fr.ED_OGR_Passive_19_rgb_fr
	--[+ Russian +]-- Живая башня -- Величественное присутствие -- руоф Выдающееся присутствие
	create_template("talent_tree_ogr_pas_007_desc_ru",
		{"loc_talent_ogryn_bigger_coherency_radius_desc"}, {"ru"},
			loc_text("{radius:%s} к радиусу "..COLORS_KWords_ru.Coherency_rgb_ru..".")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_7_rgb_ru

	--[+ Passive 8 - Soften Them Up +]--
	create_template("talent_tree_ogr_pas_008_desc_en",
		{"loc_talent_ogryn_targets_recieve_damage_increase_debuff_new_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." taken by Enemies for {duration:%s} seconds after receiving "..COLORS_KWords.Damage_rgb.." from your Melee Attacks.")),
				-- damage: +15%, duration: 5, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_8_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_008_desc_fr",
		{"loc_talent_ogryn_targets_recieve_damage_increase_debuff_new_desc"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes est subit par les ennemis que vous frappez.")), --..TALENTS_Enh_desc2_fr.ED_OGR_Passive_9_rgb_fr
	--[+ Russian +]-- Ослабь их -- руоф Упокоить их
	create_template("talent_tree_ogr_pas_008_desc_ru",
		{"loc_talent_ogryn_targets_recieve_damage_increase_debuff_new_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." получаемому врагами в течение {duration:%s} секунд после получения "..COLORS_KWords_ru.Dmg_a_rgb_ru.." от ваших атак ближнего боя.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_8_rgb_ru

	--[+ Passive 9 - Payback Time +]--
	create_template("talent_tree_ogr_pas_009_desc_en",
		{"loc_talent_ogryn_revenge_damage_new_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on taking or blocking a Melee hit, and on successfully Dodging enemy Melee or Ranged attacks (except Gunners, Reaper, Sniper), and Disabler attacks (Pox Hound jump, Trapper net, Mutant grab).")),
				-- damage: +20%, duration: 5, s->seconds, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_9_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_009_desc_fr",
		{"loc_talent_ogryn_revenge_damage_new_desc"}, {"fr"},
			loc_text("Vous gagnez {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." durant {duration:%s} secondes en subbisant ou en bloquant une attaque de mélée, ainsi qu'une esquive réussie d'une attaque de mélée ou d'une attaque à distance (sauf Mitrailleurs, Faucheurs, Snipers), et les attaques des spéciaux (saut de cerbère, filet de trappeuse, Mutant).")), --..TALENTS_Enh_desc2_fr.ED_OGR_Passive_23_rgb_fr
	--[+ Russian +]-- Время расплаты
	create_template("talent_tree_ogr_pas_009_desc_ru",
		{"loc_talent_ogryn_revenge_damage_new_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд при получении или блокировании удара в ближнем бою, при успешном уклонении от атак противника в ближнем или дальнем бою (кроме атак Пулемётчиков, Жнецов и Снайперов), а также атак обездвиживающих врагов (прыжок Гончей, сетка Ловца, захват Мутанта).")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_9_rgb_ru

	--[+ Passive 10 - Pumped Up +]--
	create_template("talent_tree_ogr_pas_010_desc_en",
		{"loc_talent_ogryn_damage_reduction_on_high_stamina_desc"}, {"en"},
			loc_text("{damage_taken:%s} "..COLORS_KWords.Health_rgb.." and "..COLORS_KWords.Toughness_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance while above {stamina:%s} max "..COLORS_KWords.Stamina_rgb..".")),
				-- damage_taken: +15%, stamina: 75%, colors ..TALENTS_Enh_desc2.ED_OGR_Passive_10_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_010_desc_fr",
		{"loc_talent_ogryn_damage_reduction_on_high_stamina_desc"}, {"fr"},
			loc_text("{damage_taken:%s} Résistance au "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Health_rgb_fr.." et de "..COLORS_KWords_fr.Toughness_rgb_fr.."  en étant au dessus de {stamina:%s} max "..COLORS_KWords.Stamina_rgb..".")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive__rgb_fr
	--[+ Russian +]-- Качок
	create_template("talent_tree_ogr_pas_010_desc_ru",
		{"loc_talent_ogryn_damage_reduction_on_high_stamina_desc"}, {"ru"},
			loc_text("{damage_taken:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." "..COLORS_KWords_ru.Toughness_rgb_ru.." и "..COLORS_KWords_ru.Health_rgb_ru.." пока ваша "..COLORS_KWords_ru.Stamina_c_r_rgb_ru.." выше {stamina:%s}.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_10_rgb_ru

	--[+ Passive 11 - Focused Fighter +]--
	create_template("talent_tree_ogr_pas_011_desc_en",
		{"loc_talent_ogryn_melee_attacks_give_mtdr_desc"}, {"en"},
			loc_text("{reduction:%s} "..COLORS_KWords.Damage_rgb.." Resistance from Melee Attacks after your Successful Melee Attack. You gain "..COLORS_Numbers.n_1_rgb.." Stack per swing, Up to {stacks:%s}. Stacks are removed upon taking "..COLORS_KWords.Damage_rgb.." from a Melee Attack.")),
				-- : +4%, : 5, colors ..TALENTS_Enh_desc2.ED_OGR_Passive_11_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_011_desc_fr",
		{"loc_talent_ogryn_melee_attacks_give_mtdr_desc"}, {"fr"},
			loc_text("{reduction:%s} Réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." des attaques de mélée lors d'une attaque de mélée réussie.Vous gagnez "..COLORS_Numbers.n_1_rgb.." cumul par coup, Jusqu'à {stacks:%s}. Les cumuls sont retirés lorsque vous subissez des "..COLORS_KWords_fr.Damage_rgb_fr.." d'une attaque de mélée.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive__rgb_fr
	--[+ Russian +]-- Сосредоточенный боец
	create_template("talent_tree_ogr_pas_011_desc_ru",
		{"loc_talent_ogryn_melee_attacks_give_mtdr_desc"}, {"ru"},
			loc_text("{reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." от атак ближнего боя после успешной вашей атаки ближнего боя. Вы получаете "..COLORS_Numbers.n_1_rgb.." заряд за удар, вплоть до {stacks:%s}. Заряды сбрасываются при получении "..COLORS_KWords_ru.Dmg_a_rgb_ru.." от атак ближнего боя.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_11_rgb_ru

	--[+ Passive 12 - Strongman +]--
	create_template("talent_tree_ogr_pas_012_desc_en",
		{"loc_talent_ogryn_damage_reduction_after_elite_kill_desc"}, {"en"},
			loc_text("{damage_reduction:%s} "..COLORS_KWords.Health_rgb.." and "..COLORS_KWords.Toughness_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance on Elite or Special Kill. Lasts {duration:%s} seconds.")),
				-- : +10%, : 5, colors ..TALENTS_Enh_desc2.ED_OGR_Passive_12_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_012_desc_fr",
		{"loc_talent_ogryn_damage_reduction_after_elite_kill_desc"}, {"fr"},
			loc_text("{damage_reduction:%s} Réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Health_rgb_fr.." et de "..COLORS_KWords_fr.Toughness_rgb_fr.."  lors d'une élimination d'élite ou de spécialiste. Pendant {duration:%s} secondes.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive__rgb_fr
	--[+ Russian +]-- Силач
	create_template("talent_tree_ogr_pas_012_desc_ru",
		{"loc_talent_ogryn_damage_reduction_after_elite_kill_desc"}, {"ru"},
			loc_text("{damage_reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." "..COLORS_KWords_ru.Toughness_rgb_ru.." и "..COLORS_KWords_ru.Health_rgb_ru.." после убийства элитного врага или специалиста. Длится {duration:%s} секунд.")),
				-- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_12_rgb_ru

	--[+ Passive 13 - Can't Hit Me...Again - Can't Hit Me... Again +]--
	create_template("talent_tree_ogr_pas_013_desc_en",
		{"loc_talent_ogryn_ranged_damage_immunity_desc"}, {"en"},
			loc_text("{resistance:%s} "..COLORS_KWords.Health_rgb.." and "..COLORS_KWords.Toughness_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Ranged for {duration:%s} seconds after getting hit by a Ranged Attack (including hits by Beast of Nurgle vomit, Flamers' direct fire, and Bombers' grenade direct impact). Cooldown {cooldown:%s} seconds.")),
				-- : +10%, : 5, colors ..TALENTS_Enh_desc2.ED_OGR_Passive_13_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_013_desc_fr",
		{"loc_talent_ogryn_ranged_damage_immunity_desc"}, {"fr"},
		loc_text("{resistance:%s} de Résistance au "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Health_rgb_fr.." et de "..COLORS_KWords_fr.Toughness_rgb_fr.." à distance pendant {duration:%s} secondes après avoir été touchez par une attaque à distance (incluant le vomit de la bête de Nurgle, le feu direct des incendiaires, et l'impact directe des grenades des grenadiers). Temps de recharge {cooldown:%s} secondes.")), -- : +10%, : 5, colors ..TALENTS_Enh_desc2.ED_OGR_Passive_13_rgb_fr
	--[+ Russian +]-- Попробуй попади... снова
	create_template("talent_tree_ogr_pas_013_desc_ru",
		{"loc_talent_ogryn_ranged_damage_immunity_desc"}, {"ru"},
			loc_text("{resistance:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." "..COLORS_KWords_ru.Toughness_rgb_ru.." и "..COLORS_KWords_ru.Health_rgb_ru.." против атак дальнего боя в течение {duration:%s} секунд после попадания вражеского снаряда в вас (включая попадание рвоты Зверя Нургла, а также прямые попадания огнём Огнемётчика и гранатой Гренадёра). Восстановление {cooldown:%s} секунды.")),
				-- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_13_rgb_ru

	--[+ Passive 14 - Keep Shooting +]--
	-- create_template("talent_tree_ogr_pas_014_desc_en",
		-- {"loc_talent_ogryn_reload_speed_on_empty_desc"}, {"en"},
			-- loc_text("{reload_speed:%s} Reload Speed when reloading an Empty Clip.")),
				-- : +10%, : 5, colors ..TALENTS_Enh_desc2.ED_OGR_Passive_14_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_014_desc_fr",
		{"loc_talent_ogryn_reload_speed_on_empty_desc"}, {"fr"},
			loc_text("{reload_speed:%s} de vitesse de rechargement si le chargeur est vide.")), -- : +10%, : 5, colors ..TALENTS_Enh_desc2.ED_OGR_Passive_14_rgb_fr
	--[+ Russian +]-- Продолжай стрелять
	create_template("talent_tree_ogr_pas_014_desc_ru",
		{"loc_talent_ogryn_reload_speed_on_empty_desc"}, {"ru"},
			loc_text("{reload_speed:%s} к скорости перезарядки при перезарядке пустого магазина.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_14_rgb_ru

	--[+ Passive 15 - Beat Them Back +]--
	create_template("talent_tree_ogr_pas_015_desc_en",
		{"loc_talent_ogryn_melee_damage_after_heavy_desc"}, {"en"},
			loc_text("{melee_damage:%s} Melee "..COLORS_KWords.Damage_rgb.." on Successful Heavy Melee Attack. Lasts {duration:%s} seconds.")),
				-- : +10%, : 5, colors ..TALENTS_Enh_desc2.ED_OGR_Passive_15_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_015_desc_fr",
		{"loc_talent_ogryn_melee_damage_after_heavy_desc"}, {"fr"},
		loc_text("{melee_damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée lors d'une attaque puissante de mélée réussie. Dure pendant {duration:%s} secondes.")), -- : +10%, : 5, colors ..TALENTS_Enh_desc2.ED_OGR_Passive_15_rgb
	--[+ Russian +]-- Дай им отпор -- руоф Дай сдачи
	create_template("talent_tree_ogr_pas_015_desc_ru",
		{"loc_talent_ogryn_melee_damage_after_heavy_desc"}, {"ru"},
			loc_text("{melee_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя при успешной тяжёлой атаке ближнего боя. Длится {duration:%s} секунд.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_15_rgb_ru

	--[+ Passive 16 - Strike True +]--
	create_template("talent_tree_ogr_pas_016_desc_en",
		{"loc_talent_ogryn_weakspot_damage_desc"}, {"en"},
			loc_text("{damage:%s} Melee "..COLORS_KWords.Weak_spot_rgb.." "..COLORS_KWords.Strength_rgb.."."..COLORS_KWords.Pwr_note_rgb)),
				-- : +10%, : 5, colors ..TALENTS_Enh_desc2.ED_OGR_Passive_16_rgb
	--[+ French +]--coup au but
	create_template("talent_tree_ogr_pas_016_desc_fr",
		{"loc_talent_ogryn_weakspot_damage_desc"}, {"fr"},
		loc_text("{damage:%s} de "..COLORS_KWords_fr.Strength_rgb_fr.." de mélée lors d'un coup en mélée sur un "..COLORS_KWords_fr.Weakspothit_rgb_fr.."."..COLORS_KWords_fr.Pwr_note_rgb_fr)), -- : +10%, : 5, colors ..TALENTS_Enh_desc2.ED_OGR_Passive_16_rgb_fr
	--[+ Russian +]-- Меткий удар
	create_template("talent_tree_ogr_pas_016_desc_ru",
		{"loc_talent_ogryn_weakspot_damage_desc"}, {"ru"},
			loc_text("{damage:%s} к  "..COLORS_KWords_ru.Strength_rgb_ru.." атак ближнего боя при попадании в "..COLORS_KWords_ru.Weakspot_rgb_ru.."."..COLORS_KWords_ru.Pwr_note_rgb_ru)), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_16_rgb_ru

	--[+ Passive 17 - Slam +]--!!!
	create_template("talent_tree_ogr_pas_017_desc_en",
		{"loc_talent_ogryn_melee_stagger_new_desc"}, {"en"},
			loc_text("{stagger:%s} "..COLORS_KWords.Impact_rgb.." bonus on Melee Attacks. {stamina:%s} "..COLORS_KWords.Stamina_rgb.." replenished when "..COLORS_KWords.Staggering_rgb.." an enemy with a Melee Attack. Cooldown {cooldown:%s} second.")),
				-- stagger: +25%, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_17_rgb
	--[+ French +]--collision
	create_template("talent_tree_ogr_pas_017_desc_fr",
		{"loc_talent_ogryn_melee_stagger_new_desc"}, {"fr"},
			loc_text("{stagger:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.." bonus sur les attaques de mêlée. {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." est régénérée lorsque vous faites "..COLORS_KWords_fr.Staggering_rgb_fr.." un ennemie avec une attaque de mélée. Temps de recharge : {cooldown:%s} seconde." )), --..TALENTS_Enh_desc2_fr.ED_OGR_Passive_8_rgb_fr
	--[+ Russian +]-- Сокрушение -- руоф Хлопок
	create_template("talent_tree_ogr_pas_017_desc_ru",
		{"loc_talent_ogryn_melee_stagger_new_desc"}, {"ru"},
			loc_text("{stagger:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." врагов от атак ближнего боя.\n{stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru.." восполняется, после "..COLORS_KWords_ru.Staggering_rgb_ru.." врага атакой ближнего боя. Восстановление {cooldown:%s} секунда.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_17_rgb_ru

	--[+ Passive 18 - Ammo Stash +]--
	create_template("talent_tree_ogr_pas_018_desc_en",
		{"loc_talent_ogryn_increased_ammo_desc"}, {"en"},
			loc_text("{max_ammo:%s} to your Maximum Ammo reserve, rounds down.")),
				-- max_ammo: +25%, rewrite
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_018_desc_fr",
		{"loc_talent_ogryn_increased_ammo_desc"}, {"fr"},
			loc_text("Augmente votre réserve de munitions maximale de {max_ammo:%s}, arrondi à l'inférieur.")),
	--[+ Russian +]-- Схрон патронов
	create_template("talent_tree_ogr_pas_018_desc_ru",
		{"loc_talent_ogryn_increased_ammo_desc"}, {"ru"},
			loc_text("{max_ammo:%s} к максимальному количеству боеприпасов в резерве. Округляется в меньшую сторону.")),

	--[+ Passive 19 - Big Boom +]--
	create_template("talent_tree_ogr_pas_019_desc_en",
		{"loc_talent_ogryn_increase_explosion_radius_desc"}, {"en"},
			loc_text("{explosion_radius:%s} to the radius of any explosions you cause.")),
				-- explosion_radius: +27.5% -- ..TALENTS_Enh_desc2.ED_OGR_Passive_19_rgb
	--[+ French +]--Baboom
	create_template("tale nt_tree_ogr_pas_019_desc_fr",
		{"loc_talent_ogryn_increase_explosion_radius_desc"}, {"fr"},
			loc_text("Augmentez le rayon de vos explosion de {explosion_radius:%s} peu importe la source.")), --..TALENTS_Enh_desc2_fr.ED_OGR_Passive_25_rgb_fr
	--[+ Russian +]-- Большой бабах 
	create_template("talent_tree_ogr_pas_019_desc_ru",
		{"loc_talent_ogryn_increase_explosion_radius_desc"}, {"ru"},
			loc_text("{explosion_radius:%s} к радиусу любых взрывов, вызванных вами.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_19_rgb_ru

	--[+ Passive 20 - Crunch! +]--
	create_template("talent_tree_ogr_pas_020_desc_en",
		{"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger_new_desc"}, {"en"},
			loc_text("Based on charge time, your charged Melee Attack gains:\n"
				.."{damage:%s} "..COLORS_KWords.Damage_rgb.." and\n"
				.."{stagger:%s} "..COLORS_KWords.Impact_rgb..".")),
				-- damage: +40%, stagger: +40% -- &->and, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_20_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_020_desc_fr",
		{"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger_new_desc"}, {"fr"},
			loc_text("En fonction du temps de charge de votre attaque vous gagnez :\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." bonus et\n{stagger:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.." bonus."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_10_rgb_fr)),
	--[+ Russian +]-- Хрусь! -- руоф Хрясь!
	create_template("talent_tree_ogr_pas_020_desc_ru",
		{"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger_new_desc"}, {"ru"},
			loc_text("В зависимости от времени заряжания, ваша заряженная атака ближнего боя получает прибавку:\n{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n{stagger:%s} к "..COLORS_KWords_ru.Impact_rgb_ru..".")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_20_rgb_ru

	--[+ Passive 21 - Batter +]--
	create_template("talent_tree_ogr_pas_021_desc_en",
		{"loc_talent_ogryn_heavy_bleeds_new_desc"}, {"en"},
			loc_text("Inflict {stacks:%s} Stacks of "..COLORS_KWords.Bleed_rgb.." on Melee Hit. Increased to {heavy_stacks:%s} on Heavy Melee Hit. Up to "..COLORS_Numbers.n_16_rgb.." Max "..COLORS_KWords.Bleed_rgb.." Stacks on a target.")),
				-- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_21_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_021_desc_fr",
		{"loc_talent_ogryn_heavy_bleeds_new_desc"}, {"fr"},
			loc_text("Inflige {stacks:%s} cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." sur une attaque de mêlée. Et {heavy_stacks:%s} cumuls sur une attaque puissante. Jusqu'à "..COLORS_Numbers.n_16_rgb.." cumuls maximum de "..COLORS_KWords_fr.Bleed_rgb_fr.." sur une cible.")), --..TALENTS_Enh_desc2_fr.ED_OGR_Passive_11_rgb_fr
	--[+ Russian +]-- Месиво
	create_template("talent_tree_ogr_pas_021_desc_ru",
		{"loc_talent_ogryn_heavy_bleeds_new_desc"}, {"ru"},
			loc_text("{stacks:%s} заряда "..COLORS_KWords_ru.Bleed_rgb_ru.." накладывается на врага атаками ближнего боя. Увеличивается до {heavy_stacks:%s} при тяжёлом ударе ближнего боя. Вплоть до "..COLORS_Numbers.n_16_rgb.." зарядов на цель.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_21_rgb_ru

	--[+ Passive 22 - Brutish Strength +]--
	create_template("talent_tree_ogr_pas_022_desc_en",
		{"loc_talent_ogryn_pushing_applies_brittlenes_desc"}, {"en"},
			loc_text("{stacks:%s} Stacks of "..COLORS_Numbers.pc_2_5_rgb.." "..COLORS_KWords.Brittleness_rgb.." applied to enemies on Push. Up to "..COLORS_Numbers.pc_40_rgb.." Max at "..COLORS_Numbers.n_16_rgb.." Stacks.")),
				-- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_22_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_022_desc_fr",
		{"loc_talent_ogryn_pushing_applies_brittlenes_desc"}, {"fr"},
		loc_text("{stacks:%s} cumuls de "..COLORS_Numbers.pc_2_5_rgb.." de "..COLORS_KWords_fr.Brittleness_rgb_fr.." appliqués lors d'une poussée. Jusqu'à "..COLORS_Numbers.pc_40_rgb.." Max à "..COLORS_Numbers.n_16_rgb.." cumuls.")), -- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_22_rgb
	--[+ Russian +]-- Грубая сила
	create_template("talent_tree_ogr_pas_022_desc_ru",
		{"loc_talent_ogryn_pushing_applies_brittlenes_desc"}, {"ru"},
			loc_text("{stacks:%s} заряда "..COLORS_Numbers.pc_2_5_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." применяется к врагам при отталкивании. До максимум "..COLORS_Numbers.pc_40_rgb.." при "..COLORS_Numbers.n_16_rgb.." зарядах.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_22_rgb_ru

	--[+ Passive 23 - For the Lil'Uns +]--
	create_template("talent_tree_ogr_pas_023_desc_en",
		{"loc_talent_ogryn_protect_allies_desc"}, {"en"},
			loc_text("{power:%s} "..COLORS_KWords.Strength_rgb.." and {toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for {duration:%s} seconds when an Ally's "..COLORS_KWords.Toughness_rgb.." breaks. Cooldown {cooldown:%s} seconds.\n\n"
				.."{revive_speed:%s} Revive Speed and "..COLORS_KWords.Stun_rgb.." Immunity for {duration:%s} seconds when an Ally is Knocked Down.")),
				-- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_23_rgb
	--[+ French +]--Pour les microbes
	create_template("talent_tree_ogr_pas_023_desc_fr",
		{"loc_talent_ogryn_protect_allies_desc"}, {"fr"},
		loc_text("{power:%s} de "..COLORS_KWords_fr.Strength_rgb_fr.." et {toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." pendant {duration:%s} secondes quand la "..COLORS_KWords_fr.Toughness_rgb_fr.." d'un allié se brise. Temps de recharge : {cooldown:%s} secondes.\n\n{revive_speed:%s} de vitesse de réanimation et l'immunité à l'"..COLORS_KWords_fr.Stuns_rgb_fr.." pendant {duration:%s} secondes quand un allié tombe à terre.")), -- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_23_rgb
	--[+ Russian +]-- За малых
	create_template("talent_tree_ogr_pas_023_desc_ru",
		{"loc_talent_ogryn_protect_allies_desc"}, {"ru"},
			loc_text("{power:%s} к "..COLORS_KWords_ru.Strength_rgb_ru.." и {toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." на {duration:%s} секунд, когда "..COLORS_KWords_ru.Tghnss_rgb_ru.." союзника пробивают. Восстановление {cooldown:%s} секунд.\n\n{revive_speed:%s} к скорости возрождения и иммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru.." на {duration:%s} секунд, когда союзник сбит с ног.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_23_rgb_ru

	--[+ Passive 24 - Concentrate +]--
	create_template("talent_tree_ogr_pas_024_desc_en",
		{"loc_talent_ogryn_drain_stamina_for_handling_desc"}, {"en"},
			loc_text("While bracing your Ranged Weapon you gain:\n"
				.."{sway_reduction:%s} Sway Reduction,\n"
				.."{spread_reduction:%s} Spread Reduction and\n"
				.."{recoil_reduction:%s} Recoil Reduction,\n"
				.."but lose {stamina:%s} "..COLORS_KWords.Stamina_rgb.." per second.")),
				-- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_24_rgb
	--[+ French +]--concentration
	create_template("talent_tree_ogr_pas_024_desc_fr",
		{"loc_talent_ogryn_drain_stamina_for_handling_desc"}, {"fr"},
		loc_text("Lors de la mis en joue de votre arme à distance vous gagnez:\n{sway_reduction:%s} de réduction du balancement ,\n{spread_reduction:%s} de réduction du dispercement et\n{recoil_reduction:%s} de réduction du recul,\nMaisvous perdez {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." par seconde.")), -- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_24_rgb
	--[+ Russian +]-- Сосредоточься
	create_template("talent_tree_ogr_pas_024_desc_ru",
		{"loc_talent_ogryn_drain_stamina_for_handling_desc"}, {"ru"},
			loc_text("{sway_reduction:%s} к уменьшению раскачивания,\n{spread_reduction:%s} к уменьшению разброса и\n{recoil_reduction:%s} к уменьшению отдачи при прицеливании из оружия дальнего боя, но при этом теряется {stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru.." в секунду.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_24_rgb_ru

	--[+ Passive 25 - Fire Away +]--
	create_template("talent_tree_ogr_pas_025_desc_en",
		{"loc_talent_ogryn_explosions_burn_close_desc"}, {"en"},
			loc_text("{stacks:%s} Stack of "..COLORS_KWords.Burn_rgb.." applied by your explosions.\n"
				.."{more_stacks:%s} Stacks if targets are inside the explosion epicenter.\n"
				.."Up to {max_stacks:%s} Max "..COLORS_KWords.Burn_rgb.." Stacks on a target.")),
				-- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_25_rgb
	--[+ French +]--flamboiment
	create_template("talent_tree_ogr_pas_025_desc_fr",
		{"loc_talent_ogryn_explosions_burn_close_desc"}, {"fr"},
			loc_text("{stacks:%s} cumul de "..COLORS_KWords_fr.Burn_rgb_fr.." est appliqué à vos explosions.\n{more_stacks:%s} cumuls ci la cible est dans l'épicentre de l'explosion.\nJusqu'à {max_stacks:%s} cumuls de "..COLORS_KWords_fr.Burn_rgb_fr.." maximum sur une cible.")), -- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_25_rgb
	--[+ Russian +]-- Поджиг
	create_template("talent_tree_ogr_pas_025_desc_ru",
		{"loc_talent_ogryn_explosions_burn_close_desc"}, {"ru"},
			loc_text("{stacks:%s} заряд "..COLORS_KWords_ru.Burn_rgb_ru.." накладывается вашими взрывами.\n{more_stacks:%s} заряда, если враг находится в эпицентре взрыва. Максимум {max_stacks:%s} зарядов "..COLORS_KWords_ru.Burn_rgb_ru..".")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_25_rgb_ru

	--[+ Passive 26 - Simple Minded +]--
	create_template("talent_tree_ogr_pas_026_desc_en",
		{"loc_talent_ogryn_corruption_resistance_desc"}, {"en"},
			loc_text("{resistance:%s} "..COLORS_KWords.Corruption_rgb.." Resistance.\n"
				.."Reduces "..COLORS_KWords.Corruptdmg_rgb.." taken by any enemy source, including Poxburster explosion, toxic gas, Poxwalker Melee attacks, Pox Hound pounce, Beast of Nurgle vomit/slime/consumed, Daemonhost, grimoires, etc.")),
				-- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_26_rgb
	--[+ French +]--Simple d'esprit
	create_template("talent_tree_ogr_pas_026_desc_fr",
		{"loc_talent_ogryn_corruption_resistance_desc"}, {"fr"},
		loc_text("{resistance:%s} de résistance à la "..COLORS_KWords_fr.Corruption_rgb_fr..".\nréduit les "..COLORS_KWords_fr.Corruptdmg_rgb_fr.." subit de toute les sources:  explosion des crache-peste, gaz toxique, attaque de mélée des scrofuleux, morsures des cerbère, le vomit/résidu/avalement de la bête de Nurgle, Hôte Daemoniaque, grimoires, etc.")), -- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_26_rgb
	--[+ Russian +]-- Простота ума
	create_template("talent_tree_ogr_pas_026_desc_ru",
		{"loc_talent_ogryn_corruption_resistance_desc"}, {"ru"},
			loc_text("{resistance:%s} сопротивления "..COLORS_KWords_ru.Corruption_rgb_ru..".\nУменьшает "..COLORS_KWords_ru.Corruptdmg_rgb_ru..", получаемый от любого вражеского источника, включая взрыв Чумного взрывника, токсичный газ, атаки Чумного ходока в ближнем бою, нападение Чумной гончей, рвоту/слизь/проглатывание Зверя Нургла, атаки Демонхоста, гримуары и т.д.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_26_rgb_ru

	--[+ Passive 27 - Unbreakable +]--
	create_template("talent_tree_ogr_pas_027_desc_en",
		{"loc_talent_ogryn_block_all_attacks_variant_desc"}, {"en"},
			loc_text("{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." for "..COLORS_Numbers.n_5_rgb.." seconds on Perfect Block. Your Perfect Blocks can block all Melee Attacks.")),
				-- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_27_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_027_desc_fr",
		{"loc_talent_ogryn_block_all_attacks_variant_desc"}, {"fr"},
		loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée pendant "..COLORS_Numbers.n_5_rgb.." secondes lors d'un blocage parfait. Vos blocage parfait peuvent bloquer toute les attaques de mélées.")), -- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_27_rgb
	--[+ Russian +]-- Непробиваемый
	create_template("talent_tree_ogr_pas_027_desc_ru",
		{"loc_talent_ogryn_block_all_attacks_variant_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в ближнем бою на "..COLORS_Numbers.n_5_rgb.." секунд при идеальном блоке. Ваши идеальные блоки могут блокировать все атаки ближнего боя.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_27_rgb_ru

	--[+ Passive 28 - Too Stubborn to Die +]--
	create_template("talent_tree_ogr_pas_028_desc_en",
		{"loc_talent_ogryn_toughness_gain_increase_on_low_health_desc"}, {"en"},
			loc_text("{toughness_multiplier:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment while below {health:%s} "..COLORS_KWords.Health_rgb..".")),
				-- toughness_multiplier: +100%, health: 33%, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_28_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_028_desc_fr",
		{"loc_talent_ogryn_toughness_gain_increase_on_low_health_desc"}, {"fr"},
			loc_text("{toughness_multiplier:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." Récupération en dessous de {health:%s} de "..COLORS_KWords_fr.Health_rgb_fr..".")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_15_rgb_fr -> ED_OGR_Passive_28_rgb_fr
	--[+ Russian +]-- Слишком упёртый, чтобы умереть -- руоф Слишком упрям, чтобы умереть
	create_template("talent_tree_ogr_pas_028_desc_ru",
		{"loc_talent_ogryn_toughness_gain_increase_on_low_health_desc"}, {"ru"},
			loc_text("{toughness_multiplier:%s} к восстановлению "..COLORS_KWords_ru.Toughness_rgb_ru..", если ваш уровень "..COLORS_KWords_ru.Wound_rgb_ru.." опустился ниже {health:%s}.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_28_rgb_ru

	--[+ Passive 29 - Frenzied Blows +]--
	create_template("talent_tree_ogr_pas_029_desc_en",
		{"loc_talent_ogryn_stacking_attack_speed_desc"}, {"en"},
			loc_text("{attack_speed:%s} Melee Attack Speed on Chained Hit for {duration:%s} seconds. Stacks {stacks:%s} times. Generates "..COLORS_Numbers.n_1_rgb.." Stack per swing. Can be refreshed during active duration.")),
				-- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_29_rgb
	--[+ French +]-- coups frénétique
	create_template("talent_tree_ogr_pas_029_desc_fr",
		{"loc_talent_ogryn_stacking_attack_speed_desc"}, {"fr"},
		loc_text("{attack_speed:%s} de vitesse d'attaque de mélée lors de coup en chaîne pendant {duration:%s} secondes. Se cumuls {stacks:%s} fois. Génère "..COLORS_Numbers.n_1_rgb.." cumul par coup. La durée est rafraichie une fois le mumuls maximal atteint.")), -- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_29_rgb
	--[+ Russian +]-- Яростные удары
	create_template("talent_tree_ogr_pas_029_desc_ru",
		{"loc_talent_ogryn_stacking_attack_speed_desc"}, {"ru"},
			loc_text("{attack_speed:%s} к скорости атаки в ближнем бою при серии ударов на {duration:%s} секунд. Суммируется {stacks:%s} раз. Генерирует "..COLORS_Numbers.n_1_rgb.." заряд за удар. Может обновляться во время действия.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_29_rgb_ru

	--[+ Passive 30 - Attention Seeker +]--
	create_template("talent_tree_ogr_pas_030_desc_en",
		{"loc_talent_ranged_enemies_taunt_description"}, {"en"},
			loc_text("Blocking or Pushing Enemies Taunts them for {duration:%s} seconds.")),
				-- duration: 8, s->seconds -- ..TALENTS_Enh_desc2.ED_OGR_Passive_30_rgb
	--[+ French +]--chercher l'attention
	create_template("talent_tree_ogr_pas_030_desc_fr",
		{"loc_talent_ranged_enemies_taunt_description"}, {"fr"},
		loc_text("Bloquer ou Pousser les ennemies les provoquent pendant {duration:%s} secondes.")), -- duration: 8, s->seconds -- ..TALENTS_Enh_desc2.ED_OGR_Passive_30_rgb
	--[+ Russian +]-- Провокатор -- руоф Внимание искателя
	create_template("talent_tree_ogr_pas_030_desc_ru",
		{"loc_talent_ranged_enemies_taunt_description"}, {"ru"},
			loc_text("Блокирование любых атак или отталкивание врагов провоцирует их атаковать вас в ближнем бою в течение {duration:%s} секунд.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_30_rgb_ru

	--[+ Passive 31 - Bruiser +]--
	create_template("talent_tree_ogr_pas_031_desc_en",
		{"loc_talent_ogryn_cooldown_on_elite_kills_new_desc"}, {"en"},
			loc_text("{cooldown_regen:%s} "..COLORS_KWords.Ability_cd_rgb.." Regeneration for {duration:%s} seconds after you or an Ally in "..COLORS_KWords.Coherency_rgb.." kill an Elite Enemy.")),
				-- cooldown: 4%, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_31_rgb
	--[+ French +]--Cogneure
	create_template("talent_tree_ogr_pas_031_desc_fr",
		{"loc_talent_ogryn_cooldown_on_elite_kills_new_desc"}, {"fr"},
			loc_text(" +{cooldown_regen:%s} de régénération du "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." pendant {duration:%s} secondes quand vous ou un allié en syntonie effectués une élimination d'élite.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_24_rgb_fr
	--[+ Russian +]-- Бугай
	create_template("talent_tree_ogr_pas_031_desc_ru",
		{"loc_talent_ogryn_cooldown_on_elite_kills_new_desc"}, {"ru"},
			loc_text("На {cooldown_regen:%s} сокращается время "..COLORS_KWords_ru.Ability_cd_rgb_ru.." в течение {duration:%s} секунд, если вы или союзник в "..COLORS_KWords_ru.Coherency_rgb_ru.." убиваете элитного врага.")),-- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_31_rgb_ru

	--[+ Passive 32 - Pacemaker +]--
	create_template("talent_tree_ogr_pas_032_desc_en",
		{"loc_talent_ogryn_reload_speed_on_multiple_hits_new_desc"}, {"en"},
			loc_text("{reload_speed:%s} Reload Speed on your next Reload when hitting {multi_hit:%s} or more Enemies with a single Attack.")),
				-- multi_hit: 5, reload_speed: +25%, duration: 5, s->seconds -- ..TALENTS_Enh_desc2.ED_OGR_Passive_32_rgb
	--[+ French +]--Stimulateur
	create_template("talent_tree_ogr_pas_032_desc_fr",
		{"loc_talent_ogryn_reload_speed_on_multiple_hits_new_desc"}, {"fr"},
			loc_text("{reload_speed:%s} Vitesse de rechargement pendant {duration:%s} secondes en touchant {multi_hit:%s} ennemis ou plus avec une seule attaque.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_12_rgb_fr
	--[+ Russian +]-- Задающий ритм -- руоф Водитель ритма
	create_template("talent_tree_ogr_pas_032_desc_ru",
		{"loc_talent_ogryn_reload_speed_on_multiple_hits_new_desc"}, {"ru"},
			loc_text("{reload_speed:%s} к скорости вашей следующей перезарядки, если вы ударили за раз {multi_hit:%s} или более врагов.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_32_rgb_ru

	--[+ Passive 33 - Unstoppable Momentum +]--
	create_template("talent_tree_ogr_pas_033_desc_en",
		{"loc_talent_ogryn_ranged_kill_grant_movement_speed_desc"}, {"en"},
			loc_text("{movement_speed:%s} Movement Speed for {duration:%s} seconds on Ranged Kill.")),
				-- movement_speed: +20%, duration: 2, s->seconds -- ..TALENTS_Enh_desc2.ED_OGR_Passive_33_rgb
	--[+ French +]--Élan inarétable
	create_template("talent_tree_ogr_pas_033_desc_fr",
		{"loc_talent_ogryn_ranged_kill_grant_movement_speed_desc"}, {"fr"},
			loc_text("{movement_speed:%s} de vitesse de déplacement pendant {duration:%s} secondes sur une élimination à distance.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_20_rgb_fr
	--[+ Russian +]-- Неудержимый моментум 
	create_template("talent_tree_ogr_pas_033_desc_ru",
		{"loc_talent_ogryn_ranged_kill_grant_movement_speed_desc"}, {"ru"},
			loc_text("{movement_speed:%s} к скорости движения на {duration:%s} секунды при убийствах из дальнобойного оружия.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_33_rgb_ru

	--[+ Passive 34 - Delight in Destruction +]--
	create_template("talent_tree_ogr_pas_034_desc_en",
		{"loc_talent_ogryn_damage_reduction_per_bleed_desc"}, {"en"},
			loc_text("{damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Resistance per "..COLORS_KWords.Bleeding_rgb.." Enemy in Melee range. Stacks {max_stacks:%s} times. Up to "..COLORS_Numbers.pc_32_rgb..".")),
				-- damage_reduction: +8%, max_stacks: 6, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_34_rgb
	--[+ French +]-- Joie dans la destruction
	create_template("talent_tree_ogr_pas_034_desc_fr",
		{"loc_talent_ogryn_damage_reduction_per_bleed_desc"}, {"fr"},
			loc_text("{damage_reduction:%s} de résistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." par ennemi qui "..COLORS_KWords_fr.Bleeding_rgb_fr.." à portée de mêlée. Se cumule jusqu'à {max_stacks:%s} fois. Jusqu'à "..COLORS_Numbers.pc_32_rgb..".")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_16_rgb_fr
	--[+ Russian +]-- Упоение в разрушении -- руоф Наслаждение разрушением
	create_template("talent_tree_ogr_pas_034_desc_ru",
		{"loc_talent_ogryn_damage_reduction_per_bleed_desc"}, {"ru"},
			loc_text("{damage_reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." за каждого врага с зарядами "..COLORS_KWords_ru.Bleed_rgb_ru.." на расстоянии атаки ближнего боя. Суммируется {max_stacks:%s} раза. Вплоть до "..COLORS_Numbers.pc_32_rgb.." сопротивления.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_34_rgb_ru

	--[+ Passive 35 - Dedicated Practice +]--
	-- create_template("talent_tree_ogr_pas_035_desc_en",
		-- {"loc_talent_ogryn_wield_speed_increase_desc"}, {"en"},
			-- loc_text("{wield_speed:%s} Weapon Swap Speed.")),
				-- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_35_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_035_desc_fr",
		-- {"loc_talent_ogryn_wield_speed_increase_desc"}, {"fr"},
			-- loc_text("")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_35_rgb_fr
	--[+ Russian +]-- Упорные тренировки
	-- create_template("talent_tree_ogr_pas_035_desc_ru",
		-- {"loc_talent_ogryn_wield_speed_increase_desc"}, {"ru"},
			-- loc_text("{wield_speed:%s} к скорости смены оружия.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_35_rgb_ru

	--[+ Passive 36 - Mobile Emplacement +]--
	create_template("talent_tree_ogr_pas_036_desc_en",
		{"loc_talent_ogryn_bracing_reduces_damage_taken_desc"}, {"en"},
			loc_text("You take {damage_taken_multiplier:%s} reduced "..COLORS_KWords.Damage_rgb.." while bracing a Ranged Weapon.")),
				-- damage_taken_multiplier:-20.00%., colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_36_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_036_desc_fr",
		{"loc_talent_ogryn_bracing_reduces_damage_taken_desc"}, {"fr"},
			loc_text("Vous réduisez les "..COLORS_KWords_fr.Damage_rgb_fr.." de {damage_taken_multiplier:%s} en utilisant une arme à distance.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_30_rgb_fr
	--[+ Russian +]-- Мобильная огневая точка -- руоф Передвижной окоп
	create_template("talent_tree_ogr_pas_036_desc_ru",
		{"loc_talent_ogryn_bracing_reduces_damage_taken_desc"}, {"ru"},
			loc_text("Вы получаете на {damage_taken_multiplier:%s} меньше "..COLORS_KWords_ru.Dmg_a_rgb_ru.." пока целитесь из дальнобойного оружия.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_30_rgb_ru

	--[+ Passive 37 - Implacable +]--
	create_template("talent_tree_ogr_pas_037_desc_en",
		{"loc_talent_ogryn_windup_reduces_damage_taken_desc"}, {"en"},
			loc_text("{damage_taken_multiplier:%s} "..COLORS_KWords.Damage_rgb.." Reduction while charging Melee Attacks.")),
				-- damage_taken_multiplier: +15%, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_37_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_037_desc_fr",
		{"loc_talent_ogryn_windup_reduces_damage_taken_desc"}, {"fr"},
			loc_text("{damage_taken_multiplier:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant le chargement des attaques de mêlée.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_27_rgb_fr
	--[+ Russian +]-- Непоколебимый 
	create_template("talent_tree_ogr_pas_037_desc_ru",
		{"loc_talent_ogryn_windup_reduces_damage_taken_desc"}, {"ru"},
			loc_text("{damage_taken_multiplier:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." пока вы заряжаете атаки ближнего боя.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_37_rgb_ru

	--[+ Passive 38 - Dominate +]--
	create_template("talent_tree_ogr_pas_038_desc_en",
		{"loc_talent_ogryn_rending_on_elite_kills_desc"}, {"en"},
			loc_text("{rending_multiplier:%s} "..COLORS_KWords.Rending_rgb.." for {duration:%s} seconds on Elite kill.")),
				-- rending_multiplier: +10%, duration: 10, s->seconds, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_38_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_038_desc_fr",
		{"loc_talent_ogryn_rending_on_elite_kills_desc"}, {"fr"},
			loc_text("{rending_multiplier:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." pendant {duration:%s} secondes après une élimination d'élite.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_22_rgb_fr
	--[+ Russian +]-- Доминируй -- руоф Господство
	create_template("talent_tree_ogr_pas_038_desc_ru",
		{"loc_talent_ogryn_rending_on_elite_kills_desc"}, {"ru"},
			loc_text("{rending_multiplier:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." на {duration:%s} секунд после убийства элитного врага.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_38_rgb_ru

	--[+ Passive 39 - No Pushover +]--
	create_template("talent_tree_ogr_pas_039_desc_en",
		{"loc_talent_ogryn_empowered_pushes_desc"}, {"en"},
			loc_text("{push_impact_modifier:%s} "..COLORS_KWords.Stagger_rgb.." for your pushes. Can only trigger once every {cooldown:%s} seconds.")),
				-- push_impact_modifier: 250%, cooldown: 8, s->seconds, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_39_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_039_desc_fr",
		{"loc_talent_ogryn_empowered_pushes_desc"}, {"fr"},
			loc_text("{push_impact_modifier:%s} de "..COLORS_KWords_fr.Stagger_rgb_fr.." pour vos poussées. Peut se déclencher une fois toutes les {cooldown:%s} secondes.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_28_rgb_fr
	--[+ Russian +]-- Не слабак 
	create_template("talent_tree_ogr_pas_039_desc_ru",
		{"loc_talent_ogryn_empowered_pushes_desc"}, {"ru"},
			loc_text("{push_impact_modifier:%s} к "..COLORS_KWords_ru.Stagger2_rgb_ru.." врагов, которых вы отталкиваете. Может сработать только раз в {cooldown:%s} секунд.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_39_rgb_ru

	--[+ Passive 40 - Get Stuck In +]--
	create_template("talent_tree_ogr_pas_040_desc_en",
		{"loc_talent_ogryn_ability_movement_speed_desc"}, {"en"},
			loc_text("Activating your "..COLORS_KWords.Combat_ability_rgb.." grants you and Allies in "..COLORS_KWords.Coherency_rgb.." for {time:%s} seconds:\n"
				.."{movement_speed:%s} Movement Speed,\n"
				..COLORS_KWords.Stuns_rgb.." and Suppression Immunity.")),
				-- movement_speed: +20%, time: 4 -- &->and, s->seconds, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_40_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_040_desc_fr",
		{"loc_talent_ogryn_ability_movement_speed_desc"}, {"fr"},
			loc_text("En activant votre "..COLORS_KWords_fr.Combat_ability_rgb_fr..", vous et vos alliés en syntonie gagnez {movement_speed:%s} de vitesse de déplacement et êtes également immunisés contre les "..COLORS_KWords_fr.Stuns_rgb_fr.." et la suppression pendant {time:%s} secondes.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_18_rgb_fr
	--[+ Russian +]-- Очертя голову 
	create_template("talent_tree_ogr_pas_040_desc_ru",
		{"loc_talent_ogryn_ability_movement_speed_desc"}, {"ru"},
			loc_text("При активации вашей "..COLORS_KWords_ru.Combat_ability_rgb_ru.." вы и союзники в "..COLORS_KWords_ru.Coherency_rgb_ru.." получаете на {time:%s} секунды:\n{movement_speed:%s} к скорости движения и\nиммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru.." и подавлению.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_40_rgb_ru

	--[+ Passive 41 - Reloaded and Ready +]--
	create_template("talent_tree_ogr_pas_041_desc_en",
		{"loc_talent_ogryn_ranged_damage_on_reload_desc"}, {"en"},
			loc_text("{damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on Reload.")),
				-- damage :+15%, duration: 8, s->seconds, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_41_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_041_desc_fr",
		{"loc_talent_ogryn_ranged_damage_on_reload_desc"}, {"fr"},
			loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance pendant {duration:%s} secondes lors du rechargement.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_2_rgb_fr
	--[+ Russian +]-- К бою готов! -- Перезаряжен и готов -- руоф Заряжен и готов
	create_template("talent_tree_ogr_pas_041_desc_ru",
		{"loc_talent_ogryn_ranged_damage_on_reload_desc"}, {"ru"},
			loc_text("{damage:%s} к дальнобойному "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд после перезарядки оружия.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_41_rgb_ru

	--[+ Passive 42 - Massacre +]--
	create_template("talent_tree_ogr_pas_042_desc_en",
		{"loc_talent_ogryn_crit_chance_on_kill_desc"}, {"en"},
			loc_text("{crit_chance:%s} "..COLORS_KWords.Crit_chance_rgb.." for {duration:%s} seconds is granted by killing an enemy. Stacks {max_stacks:%s} times.")),
				-- crit_chance: +1%, duration: 6, max_stacks: 8, rewrite, s->seconds, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_42_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_042_desc_fr",
		{"loc_talent_ogryn_crit_chance_on_kill_desc"}, {"fr"},
			loc_text("{crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant {duration:%s} secondes en tuant un ennemi. Se cumul jusqu'à {max_stacks:%s} fois.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_26_rgb_fr
	--[+ Russian +]-- Резня
	create_template("talent_tree_ogr_pas_042_desc_ru",
		{"loc_talent_ogryn_crit_chance_on_kill_desc"}, {"ru"},
			loc_text("{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на {duration:%s} секунд даётся за убийство врага. Суммируется {max_stacks:%s} раз.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_42_rgb_ru

	--[+ Passive 43 - No Stopping Me! +]--
	create_template("talent_tree_ogr_pas_043_desc_en",
		{"loc_talent_ogryn_windup_is_uninterruptible_unslowed_desc"}, {"en"},
			loc_text("Become Uninterruptible while charging Heavy Melee Attacks. Remove {reduced_move_penalty:%s} of Heavy Melee Attack Movement Speed penalties.")),
				-- ..TALENTS_Enh_desc2.ED_OGR_Passive_43_rgb
	--[+ French +]--Rien peut m'arreter
	create_template("talent_tree_ogr_pas_043_desc_fr",
		{"loc_talent_ogryn_windup_is_uninterruptible_unslowed_desc"}, {"fr"},
			loc_text("Devenez Inarrêtable pendant le chargement des attaques puissantes de mêlée. Réduit {reduced_move_penalty:%s} des pénalités de vitesse de déplacement des attaques de mélées puissantes.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_21_rgb_fr
	--[+ Russian +]-- Меня не остановить! 
	create_template("talent_tree_ogr_pas_043_desc_ru",
		{"loc_talent_ogryn_windup_is_uninterruptible_unslowed_desc"}, {"ru"},
			loc_text("Вас невозможно прервать, когда вы заряжаете тяжёлые атаки ближнего боя. Убирается {reduced_move_penalty:%s} штрафа к скорости передвижения при тяжёлых атаках ближнего боя.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_43_rgb_ru

	--[+ Passive 44 - Bash and Blast +]--
	create_template("talent_tree_ogr_pas_044_desc_en",
		{"loc_talent_ogryn_melee_improves_ranged_desc"}, {"en"},
			loc_text("{damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." on Melee Kill. Lasts {duration:%s} seconds. Max Stacks {max_stacks:%s}.")),
				-- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_44_rgb
	--[+ French +]--Pluie de coups
	create_template("talent_tree_ogr_pas_044_desc_fr",
		{"loc_talent_ogryn_melee_improves_ranged_desc"}, {"fr"},
		loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance lors d'une élimination en mélée. Pendant {duration:%s} secondes. Cumuls maximuml : {max_stacks:%s}.")), -- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_44_rgb
	--[+ Russian +]-- Удар-выстрел
	create_template("talent_tree_ogr_pas_044_desc_ru",
		{"loc_talent_ogryn_melee_improves_ranged_desc"}, {"ru"},
			loc_text("{damage:%s} к дистанционному "..COLORS_KWords_ru.Damage_rgb_ru.." при убийстве в ближнем бою. Длится {duration:%s} секунд. Максимальное количество зарядов {max_stacks:%s}.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_44_rgb_ru

	--[+ Passive 45 - Hard Knocks +]--
	create_template("talent_tree_ogr_pas_045_desc_en",
		{"loc_talent_ogryn_big_bully_heavy_hits_new_desc"}, {"en"},
			loc_text("{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." taken for {duration:%s} seconds by enemies "..COLORS_KWords.Staggered_rgb.." by your Melee Attacks.")),
				-- damage: +1%, stacks: 25, duration: 10, s->seconds, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_45_rgb
	--[+ French +]--Coup dur
	create_template("talent_tree_ogr_pas_045_desc_fr",
		{"loc_talent_ogryn_big_bully_heavy_hits_new_desc"}, {"fr"},
		loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." subit pendant {duration:%s} secondes par les ennemies qui "..COLORS_KWords_fr.Staggered_rgb_fr.." à cause de vos attaques de mélées.")), -- damage: +1%, stacks: 25, duration: 10, s->seconds, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_45_rgb
	--[+ Russian +]-- Тяжёлые удары -- руоф Мощные удары
	create_template("talent_tree_ogr_pas_045_desc_ru",
		{"loc_talent_ogryn_big_bully_heavy_hits_new_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя на {duration:%s} секунд врагам "..COLORS_KWords_ru.Stuns_rgb_ru.." вашими атаками ближнего боя.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_45_rgb_ru

	--[+ Passive 46 - No Hurting Friends! +]--
	create_template("talent_tree_ogr_pas_046_desc_en",
		{"loc_talent_ogryn_damage_taken_by_all_increases_strength_tdr_desc"}, {"en"},
			loc_text("{strength:%s} "..COLORS_KWords.Strength_rgb.." on "..COLORS_KWords.Damage_rgb.." Taken by you or Allies in "..COLORS_KWords.Coherency_rgb..". {stacks:%s} Max Stacks. Lasts {duration:%s} seconds. {tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." on Max Stacks.")),
				-- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_46_rgb
	--[+ French +]--Pas touche au copains
	create_template("talent_tree_ogr_pas_046_desc_fr",
		{"loc_talent_ogryn_damage_taken_by_all_increases_strength_tdr_desc"}, {"fr"},
		loc_text("{strength:%s} de "..COLORS_KWords_fr.Strength_rgb_fr.." lors de "..COLORS_KWords_fr.Damage_rgb_fr.." subit par vous ou des alliés en syntonie. {stacks:%s} cumuls maximum. Pendant {duration:%s} secondes. {tdr:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." en étant au cumul maximal.")), -- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_46_rgb
	--[+ Russian +]-- За друзей порву!
	create_template("talent_tree_ogr_pas_046_desc_ru",
		{"loc_talent_ogryn_damage_taken_by_all_increases_strength_tdr_desc"}, {"ru"},
			loc_text("{strength:%s} к "..COLORS_KWords_ru.Strength_rgb_ru.." при получении "..COLORS_KWords_ru.Dmg_a_rgb_ru.." вами или союзниками в "..COLORS_KWords_ru.Coherency_rgb_ru..". Максимум {stacks:%s} зарядов. Длится {duration:%s} секунд. {tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." при максимуме зарядов.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_46_rgb_ru

	--[+ Passive 47 - Won't Give In +]--
	create_template("talent_tree_ogr_pas_047_desc_en",
		{"loc_talent_ogryn_tanky_with_downed_allies_desc"}, {"en"},
			loc_text("{damage_taken:%s} "..COLORS_KWords.Damage_rgb.." Reduction for each Knocked Down or Incapacitated Ally within {range:%s} meters.")),
				-- damage_taken: +20%, range: 20, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_47_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_047_desc_fr",
		{"loc_talent_ogryn_tanky_with_downed_allies_desc"}, {"fr"},
			loc_text("{damage_taken:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." pour chaque allié à terre ou incapacité dans un rayon de {range:%s} mètres.")), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_47_rgb_fr
	--[+ Russian +]-- Не сдамся 
	create_template("talent_tree_ogr_pas_047_desc_ru",
		{"loc_talent_ogryn_tanky_with_downed_allies_desc"}, {"ru"},
			loc_text("{damage_taken:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." за каждого сбитого с ног или выведенного и строя союзника в радиусе {range:%s} метров.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_47_rgb_ru

	--[+ Passive 48 - Spray and Slay +]--
	create_template("talent_tree_ogr_pas_048_desc_en",
		{"loc_talent_ogryn_ranged_improves_melee_desc"}, {"en"},
			loc_text("{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." and {attack_speed:%s} Melee Attack Speed for {duration:%s} seconds after emptying your Clip.")),
				-- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_48_rgb
	--[+ French +]--Canardage
	create_template("talent_tree_ogr_pas_048_desc_fr",
		{"loc_talent_ogryn_ranged_improves_melee_desc"}, {"fr"},
		loc_text("{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée et {attack_speed:%s} de vitesse d'attaque de mélée pendant {duration:%s} secondes après avoir vidé votre chargeur.")), -- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_48_rgb
	--[+ Russian +]-- Отстрелял - добил -- Отстрелял - порубил -- 
	create_template("talent_tree_ogr_pas_048_desc_ru",
		{"loc_talent_ogryn_ranged_improves_melee_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя и {attack_speed:%s} к скорости атаки ближнего боя в течение {duration:%s} секунд после опустошения вашего магазина.")), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_48_rgb_ru

	--[+ Passive 49 - Lucky Streak +]--
	create_template("talent_tree_ogr_pas_049_desc_en",
		{"loc_talent_ogryn_crit_damage_increase_desc"}, {"en"},
			loc_text("{crit_damage:%s} "..COLORS_KWords.Crit_hit_color_rgb.." of both Melee and Ranged attacks.")),
				-- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_49_rgb
			--[+ French +]--Coup chanceux
	create_template("talent_tree_ogr_pas_049_desc_fr",
		{"loc_talent_ogryn_crit_damage_increase_desc"}, {"fr"},
		loc_text("{crit_damage:%s} de "..COLORS_KWords_fr.Crit_dmg_r_rgb_fr.." sur vos attaques de mélées et de distances.")), -- stacks: +4, colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_49_rgb
	--[+ Russian +]-- Месиво 
	create_template("talent_tree_ogr_pas_049_desc_ru",
		{"loc_talent_ogryn_crit_damage_increase_desc"}, {"ru"},
			loc_text("{crit_damage:%s} к "..COLORS_KWords_ru.Crit_hit_color_rgb_ru.." для атак ближнего и дальнего боя.")),
				-- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_49_rgb_ru



--[+ ++ARBITES - АРБИТЕС++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ BLITZ 0 - Arbites Grenade +]--
	create_template("talent_tree_arb_blitz0_000_desc_en",
		{"loc_talent_ability_adamant_grenade_description"}, {"en"},
			loc_text("Throw an "..COLORS_KWords.Arbites_gren_rgb.." that explodes after a short delay.\n"
				..Arrow_right_.." {charges:%s} Max Grenades.")),
			-- charges: 4, colors
	--[+ French +]--
	--[+ Russian - Граната арбитрес +]-- руоф Граната Арбитрес
	create_template("talent_tree_arb_blitz0_000_desc_ru",
		{"loc_talent_ability_adamant_grenade_description"}, {"ru"},
			loc_text("Вы бросаете "..COLORS_KWords_ru.Arbites_gren_rgb_ru..", которая взрывается после короткой задержки.\n"
				..Arrow_right_.." Максимум {charges:%s} гранаты.")),

	--[+ BLITZ 1 - Remote Detonation +]--
	create_template("talent_tree_arb_blitz1_000_desc_en",
		{"loc_talent_ability_detonate_description"}, {"en"},
			loc_text("Cause an Explosion at your Cyber-Mastiff's Location. "..COLORS_KWords.Staggering_rgb.." and "..COLORS_KWords.Electrcuting_rgb.." nearby Enemies.\n"
				..Arrow_right_.." {max_charges:%s} Charges.\n"
				..Arrow_right_.." Cooldown {cooldown:%s} seconds.")),
			-- max_charges: 3, cooldown: 60, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Дистанционный подрыв +]--
	create_template("talent_tree_arb_blitz1_000_desc_ru",
		{"loc_talent_ability_detonate_description"}, {"ru"},
			loc_text("Ваш кибермастиф взрывается в месте своего нахождения, "..COLORS_KWords_ru.Staggern_rgb_ru.." и поражая "..COLORS_KWords_ru.Electrocuted_rgb_ru.." ближайших врагов.\n"
				..Arrow_right_.." {max_charges:%s} заряда.\n"
				..Arrow_right_.." Восстанавливается {cooldown:%s} секунд.")),

	--[+ BLITZ 2 - Voltaic Shock Mine +]--
	create_template("talent_tree_arb_blitz2_000_desc_en",
		{"loc_talent_ability_shock_mine_description"}, {"en"},
			loc_text("Throw a {talent_name:%s} that activates as it lands.\n"
				..Arrow_right_.." For {duration:%s} seconds it will "..COLORS_KWords.Electrocute_rgb.." all enemies within {range:%s} meters.")),
			-- talent_name: Voltaic Shock Min, duration: 15, !range!: 5, s->seconds, m->meters, colors
	--[+ French +]--
	--[+ Russian - Вольтаическая шоковая мина +]--
	create_template("talent_tree_arb_blitz2_000_desc_ru",
		{"loc_talent_ability_shock_mine_description"}, {"ru"},
			loc_text("Вы бросаете "..COLORS_KWords_ru.Electro_mine_rgb_ru..", которая активируется при приземлении.\n"
				..Arrow_right_.." В течение {duration:%s} секунд она будет поражать "..COLORS_KWords_ru.Electrocuted_rgb_ru.." всех врагов в радиусе {range:%s} метров.")),

	--[+ BLITZ 3 - Arbites Grenade +]--
	create_template("talent_tree_arb_blitz3_000_desc_en",
		{"loc_talent_ability_adamant_grenade_improved_description"}, {"en"},
			loc_text("Throw an {talent_name:%s} that explodes after a short delay.\n"
				..Arrow_right_.." {charges:%s} Max Grenades.\n"
				..Arrow_right_.." This is an augmented version of {talent_name:%s}.")),
			-- talent_name: Arbites Grenade, charges: 4
	--[+ French +]--
	--[+ Russian - Граната арбитрес +]-- руоф Граната Арбитрес
	create_template("talent_tree_arb_blitz3_000_desc_ru",
		{"loc_talent_ability_adamant_grenade_improved_description"}, {"ru"},
			loc_text("Вы бросаете "..COLORS_KWords_ru.Arbites_gren_rgb_ru..", которая взрывается после короткой задержки.\n"
				..Arrow_right_.." Максимум {charges:%s} гранаты.\n"
				..Arrow_right_.." Это улучшенная версия таланта {talent_name:%s}.")),

--[+ +AURA - АУРА+ +]--
	--[+ AURA 0 - Part of the Squad +]--
	create_template("talent_tree_arb_aura0_000_desc_en",
		{"loc_talent_adamant_companion_coherency_desc"}, {"en"},
			loc_text("Your Cyber-Mastiff counts towards unit "..COLORS_KWords.Coherency_rgb..".")),
	--[+ French +]--
	--[+ Russian - Часть отряда +]--
	create_template("talent_tree_arb_aura0_000_desc_ru",
		{"loc_talent_adamant_companion_coherency_desc"}, {"ru"},
			loc_text("Ваш кибермастиф учитывается как союзник под действием "..COLORS_KWords_ru.Coherency_rgb_ru..".")),

	--[+ AURA 1 - Part of the Squad +]--
	create_template("talent_tree_arb_aura1_000_desc_en",
		{"loc_talent_adamant_companion_coherency_alt_desc"}, {"en"},
			loc_text("{tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n\n"
				.."Your Cyber-Mastiff counts towards unit "..COLORS_KWords.Coherency_rgb..".")),
			-- tdr: +7.5%, rewrite, colors
	--[+ French +]--
	--[+ Russian - Часть отряда +]--
	create_template("talent_tree_arb_aura1_000_desc_ru",
		{"loc_talent_adamant_companion_coherency_alt_desc"}, {"ru"},
			loc_text("{tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n\n"
				.."Ваш кибермастиф учитывается как союзник под действием "..COLORS_KWords_ru.Coherency_rgb_ru..".")),

	--[+ AURA 2 - Ruthless Efficiency +]--
	create_template("talent_tree_arb_aura2_000_desc_en",
		{"loc_talent_adamant_reload_speed_aura_desc"}, {"en"},
			loc_text("{reload_speed:%s} Reload Speed for you and Allies in "..COLORS_KWords.Coherency_rgb..".")),
			-- reload_speed: +7.5%, rewrite, colors
	--[+ French +]--
	--[+ Russian - Беспощадная эффективность +]-- руоф Беспощадная сила???
	create_template("talent_tree_arb_aura2_000_desc_ru",
		{"loc_talent_adamant_reload_speed_aura_desc"}, {"ru"},
			loc_text("{reload_speed:%s} к скорости перезарядки оружия для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".")),

	--[+ AURA 3 - Breaking Dissent +]--
	create_template("talent_tree_arb_aura3_000_desc_en",
		{"loc_talent_adamant_damage_vs_staggered_aura_alt_desc"}, {"en"},
			loc_text("{damage_vs_stagger:%s} "..COLORS_KWords.Damage_rgb.." vs "..COLORS_KWords.Staggered_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb..".")),
			-- damage_vs_stagger: +10%, rewrite, colors
	--[+ French +]--
	--[+ Russian - Подавление инакомыслия +]-- руоф Преодоление разногласий
	create_template("talent_tree_arb_aura3_000_desc_ru",
		{"loc_talent_adamant_damage_vs_staggered_aura_alt_desc"}, {"ru"},
			loc_text("{damage_vs_stagger:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." "..COLORS_KWords_ru.Stuns_rgb_ru.." врагам для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".")),

--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
	--[+ ABILITY 0 - Nuncio-Aquila +]--
	create_template("talent_tree_arb_abil0_000_desc_en",
		{"loc_talent_adamant_ability_nuncio_base_desc"}, {"en"},
			loc_text("Deploy a {talent_name:%s} in a target direction that buffs Allies and debuffs Enemies within {range:%s} meters.\n\n"
				.."Allies gain:\n"
				..Arrow_up_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenish per second.\n\n"
				.."Enemies gain:\n"
				..Arrow_up_green.." {damage_taken:%s} "..COLORS_KWords.Damage_rgb.." Taken.\n\n"
				..Arrow_right_.." Lasts {duration:%s} seconds.\n"
				..Arrow_right_.." Cooldown {cooldown:%s} seconds.")),
			-- range: 7.5, toughness: 5%, damage_taken: +15%, duration: 20, cooldown: 60, m->meters, s->seconds, rewrite, colors
	--[+ French +]--
	--[+ Russian - Нунцио-аквила +]--
	create_template("talent_tree_arb_abil0_000_desc_ru",
		{"loc_talent_adamant_ability_nuncio_base_desc"}, {"ru"},
			loc_text("{talent_name:%s}, которую вы развёртываете в выбранном направлении, усиливает союзников и ослабляет врагов в радиусе {range:%s} метров.\n\n"
				.."Союзники получают:\n"
				..Arrow_up_green.." {toughness:%s} к восстановлению "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду.\n\n"
				.."Враги получают:\n"
				..Arrow_up_green.." {damage_taken:%s} к получаемому "..COLORS_KWords_ru.Damage_rgb_ru..".\n\n"
				..Arrow_right_.." Длится {duration:%s} секунд.\n"
				..Arrow_right_.." Восстанавливается {cooldown:%s} секунд.")),

	--[+ ABILITY 1 - Castigator's Stance +]--
	create_template("talent_tree_arb_abil1_000_desc_en",
		{"loc_talent_adamant_stance_ability_alt_description"}, {"en"},
			loc_text("Enter the {talent_name:%s} for {duration:%s} seconds, during which you have:\n"
				..Arrow_up_green.." {movement_speed:%s} Movement Speed,\n"
				..Arrow_up_green.." {damage_taken:%s} Reduced "..COLORS_KWords.Damage_rgb.." Taken,\n"
				..Arrow_up_green.." {movement_reduction:%s} Reduced Movement Speed Penalty from Actions, but you cannot Sprint.\n"
				..Arrow_up_green.." All your "..COLORS_KWords.Toughness_rgb.." replenishes on activation.\n"
				..Arrow_right_.." Base Cooldown: {cooldown:%s} seconds.")),
				-- talent_name: Castigator's Stance, duration: 10, movement_speed: +25%, damage_taken: +80%, movement_reduction: 100%, cooldown: 45, s->seconds, rewrite, colors
	--[+ French +]--
	--[+ Russian - Стойка карателя +]-- руоф Стойка бичевателя
	create_template("talent_tree_arb_abil1_000_desc_ru",
		{"loc_talent_adamant_stance_ability_alt_description"}, {"ru"},
			loc_text("Вы входите в стойку на {duration:%s} секунд и получаете:\n"
				..Arrow_up_green.." {movement_speed:%s} к скорости движения,\n"
				..Arrow_up_green.." {damage_taken:%s} к снижению получаемого "..COLORS_KWords_ru.Dmg_a_rgb_ru..",\n"
				..Arrow_up_green.." на {movement_reduction:%s} снижается штраф скорости движения от действий, но вы не сможете бегать.\n"
				..Arrow_up_green.." Вся ваша "..COLORS_KWords_ru.Tghnss_rgb_ru.." восстанавливается при активации.\n"
				..Arrow_right_.." Восстанавливается {cooldown:%s} секунд.")),

	--[+ ABILITY 1-1 - Blessed Armament +]--
	create_template("talent_tree_arb_abil1_001_desc_en",
		{"loc_talent_adamant_stance_ranged_kills_transfer_ammo_desc"}, {"en"},
			loc_text("{ammo:%s} of the total Ammo in your Clip is replenished from Reserve on Ranged kills during {stance_name:%s}. Rounded Up.\n"
				..Arrow_right_.." Cooldown {cooldown:%s} seconds.")),
			-- stance_name: Castigator's Stance, ammo: 10%, cooldown: 1.5, s->seconds, rewrite
	--[+ French +]--
	--[+ Russian - Благословенное вооружение +]-- руоф Благословенное орудие
	create_template("talent_tree_arb_abil1_001_desc_ru",
		{"loc_talent_adamant_stance_ranged_kills_transfer_ammo_desc"}, {"ru"},
			loc_text("{ammo:%s} от общего количества боеприпасов в вашей обойме пополняется из резерва при убийствах в дальнем бою во время действия способности {stance_name:%s}.\n"
				..Arrow_right_.." Округляется в большую сторону.\n"
				..Arrow_right_.." Восстанавливается {cooldown:%s} секунды.")),

	--[+ ABILITY 1-2 - Writ of Execution +]--
	create_template("talent_tree_arb_abil1_002_desc_en",
		{"loc_talent_adamant_stance_elite_kills_stack_damage_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." for each Elite or Specialist Kill during {stance_name:%s}.\n"
				..Arrow_right_.." {stacks:%s} Max Stacks.\n"
				..Arrow_right_.." Lasting {duration:%s} seconds.")),
			-- stance_name: Castigator's Stance, damage: +5%, duration: 10, stacks: 10, s->seconds, rewrite, colors
	--[+ French +]--
	--[+ Russian - Ордер на казнь +]--
	create_template("talent_tree_arb_abil1_002_desc_ru",
		{"loc_talent_adamant_stance_elite_kills_stack_damage_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." за каждого убитого специалиста или элитного врага во время действия способности {stance_name:%s}.\n"
				..Arrow_right_.." Максимум {stacks:%s} зарядов.\n"
				..Arrow_right_.." Длится {duration:%s} секунд.")),

	--[+ ABILITY 1-3 - Bloodlust +]--
	create_template("talent_tree_arb_abil1_003_desc_en",
		{"loc_talent_adamant_stance_bloodlust_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." to your Cyber-Mastiff during {stance_name:%s}.")),
			-- stance_name: Castigator's Stance, damage: +75%, rewrite, colors
	--[+ French +]--
	--[+ Russian - Жажда крови +]--
	create_template("talent_tree_arb_abil1_003_desc_ru",
		{"loc_talent_adamant_stance_bloodlust_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." вашего кибермастифа во время действия способности {stance_name:%s}.")),

	--[+ ABILITY 2 - Nuncio-Aquila +]--
	create_template("talent_tree_arb_abil2_000_desc_en",
		{"loc_talent_ability_area_buff_drone_ct_description"}, {"en"},
			-- loc_text("Deploy a {nuncio_name:%s} in the target direction. Allies within {range:%s} meters gain:\n"
			loc_text("Deploy a {nuncio_name:%s} in a target direction that buffs Allies and debuffs Enemies within {range:%s} meters.\n\n"
				.."Allies gain buffs:\n"
				..Arrow_up_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenish per second,\n"
				..Arrow_up_green.." {suppression:%s} Suppression Dealt,\n"
				..Arrow_up_green.." {impact:%s} "..COLORS_KWords.Impact_rgb..",\n"
				..Arrow_up_green.." {recoil:%s} Recoil,\n"
				..Arrow_up_green.." Slowdown and Suppression Immune,\n"
				..Arrow_up_green.." Immune to interruption during Alternate Fire.\n\n"
				.."Enemies gain debuffs:\n"
				..Arrow_up_green.." {damage_taken:%s} "..COLORS_KWords.Damage_rgb.." Taken.\n\n"
				..Arrow_right_.." Lasts {duration:%s} seconds.\n"
				..Arrow_right_.." Cooldown: {cooldown:%s} seconds.\n"
				..Arrow_right_.." This is an augmented version of {nuncio_name:%s}.")),
			-- range: 7.5, toughness: 7.5%, suppression: +30%, impact: +30%, recoil: -25%, damage_taken: +15%, duration: 20, cooldown: 60, nuncio_name: Nuncio-Aquila, m->meters, s->seconds, rewrite, colors
	--[+ French +]--
	--[+ Russian - Нунцио-аквила +]--
	create_template("talent_tree_arb_abil2_000_desc_ru",
		{"loc_talent_ability_area_buff_drone_ct_description"}, {"ru"},
			loc_text("{nuncio_name:%s}, которую вы развёртываете в выбранном направлении, усиливает союзников и ослабляет врагов в радиусе {range:%s} метров.\n\n"
				.."Усиления союзников:\n"
				..Arrow_up_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду,\n"
				..Arrow_up_green.." {suppression:%s} к подавлению врагов,\n"
				..Arrow_up_green.." {impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru..",\n"
				..Arrow_up_green.." {recoil:%s} к отдаче,\n"
				..Arrow_up_green.." Иммунитет к замедлению и подавлению,\n"
				..Arrow_up_green.." Иммунитет к прерыванию во время режима прицельного огня.\n\n"
				.."Ослабления врагов:\n"
				..Arrow_up_green.." {damage_taken:%s} к получаемому "..COLORS_KWords_ru.Damage_rgb_ru..".\n\n"
				..Arrow_right_.." Длится {duration:%s} секунд.\n"
				..Arrow_right_.." Восстанавливается {cooldown:%s} секунд.\n"
				..Arrow_right_.." Это улучшенная версия способности {nuncio_name:%s}.")),

	--[+ ABILITY 2-1 - Inspiring Recitation +]--
	create_template("talent_tree_arb_abil2_001_desc_en",
		{"loc_talent_adamant_drone_buff_talent_alt_desc"}, {"en"},
			loc_text("Affected Allies also gain buffs:\n"
				..Arrow_up_green.." "..COLORS_Numbers.n_plus_rgb.."{tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb..",\n"
				..Arrow_up_green.." "..COLORS_Numbers.n_plus_rgb.."{revive_speed:%s} Revive Speed, and\n"
				..Arrow_up_green.." "..COLORS_Numbers.n_plus_rgb.."{attack_speed:%s} Attack Speed.")),
			-- tdr: 30%, revive_speed: 30%, attack_speed: 10%, colors
	--[+ French +]--
	--[+ Russian - Воодушевляющая проповедь +]-- руоф Вдохновляющая декламация
	create_template("talent_tree_arb_abil2_001_desc_ru",
		{"loc_talent_adamant_drone_buff_talent_alt_desc"}, {"ru"},
			loc_text("Союзники, попавшие под эффект способности, получают дополнительные усиления:\n"
				..Arrow_up_green.." "..COLORS_Numbers.n_plus_rgb.."{tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_rgb_ru..",\n"
				..Arrow_up_green.." "..COLORS_Numbers.n_plus_rgb.."{attack_speed:%s} к скорости атак и\n"
				..Arrow_up_green.." "..COLORS_Numbers.n_plus_rgb.."{revive_speed:%s} к скорости поднятия союзников.")),

	--[+ ABILITY 2-2 - Fear of Justice +]--
	create_template("talent_tree_arb_abil2_002_desc_en",
		{"loc_talent_adamant_drone_debuff_talent_desc"}, {"en"},
			loc_text("Affected enemies also gain debuffs to their Melee Attacks:\n"
				..Arrow_up_green.." "..COLORS_Numbers.n_minus_rgb.."{damage_reduction:%s} "..COLORS_KWords.Damage_rgb..",\n"
				..Arrow_up_green.." "..COLORS_Numbers.n_plus_rgb.."{attack_speed_reduction:%s} time between attacks.")),
			-- attack_speed_reduction: 50%, damage_reduction: 25%, colors
	--[+ French +]--
	--[+ Russian - Страх перед Правосудием +]-- руоф Страх правосудия
	create_template("talent_tree_arb_abil2_002_desc_ru",
		{"loc_talent_adamant_drone_debuff_talent_desc"}, {"ru"},
			loc_text("Враги, попавшие под эффект способности, получают дополнительные ослабления для их атак ближнего боя:\n"
				..Arrow_up_green.." "..COLORS_Numbers.n_minus_rgb.."{damage_reduction:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
				..Arrow_up_green.." "..COLORS_Numbers.n_plus_rgb.."{attack_speed_reduction:%s} к увеличению времени между атаками.")),

	--[+ ABILITY 3 - Break the Line +]--
	create_template("talent_tree_arb_abil3_000_desc_en",
		{"loc_talent_adamant_bash_ability_description"}, {"en"},
			loc_text("Charge forward and Bash, causing high "..COLORS_KWords.Stagger_rgb.." to enemies in front of you, and gain for {duration:%s} seconds:\n"
				..Arrow_up_green.." {damage:%s} "..COLORS_KWords.Damage_rgb..",\n"
				..Arrow_up_green.." {stagger:%s} "..COLORS_KWords.Impact_rgb..".\n"
				..Arrow_right_.." Base Cooldown: {cooldown:%s} seconds.")),
			-- damage: +25%, stagger: +50%, duration: 6, cooldown: 20, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Прорыв строя +]-- руоф Прорыв фронта
	create_template("talent_tree_arb_abil3_000_desc_ru",
		{"loc_talent_adamant_bash_ability_description"}, {"ru"},
			loc_text("Вы делаете рывок вперёд и наносите удар, который "..COLORS_KWords_ru.Staggers_e_rgb_ru.." врагов перед вами, и получаете на {duration:%s} секунд усиления:\n"
				..Arrow_up_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n"
				..Arrow_up_green.." {stagger:%s} к "..COLORS_KWords_ru.Impact_rgb_ru..".\n"
				..Arrow_right_.." Восстанавливается {cooldown:%s} секунд.")),

	--[+ ABILITY 3-1 - Commendation from Condemnation +]--
	create_template("talent_tree_arb_abil3_001_desc_en",
		{"loc_talent_adamant_charge_toughness_alt_description"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." and {stamina:%s} "..COLORS_KWords.Stamina_rgb.." replenishes for each Elite, Specialist, or Monstrosity hit, up to {toughness_max:%s} "..COLORS_KWords.Toughness_rgb.." and {stamina_max:%s} "..COLORS_KWords.Stamina_rgb..".")),
			-- toughness: 20%, stamina: 15%, toughness_max: 100%, stamina_max: 75%, colors
	--[+ French +]--
	--[+ Russian - Похвала за осуждение +]-- руоф Не наказали - значит, похвалили???
	create_template("talent_tree_arb_abil3_001_desc_ru",
		{"loc_talent_adamant_charge_toughness_alt_description"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и {stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru.." восстанавливается за каждый удар по элитному врагу, специалисту или монстру, вплоть до {toughness_max:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и {stamina_max:%s} "..COLORS_KWords_ru.Stamina_rgb_ru..".")),

	--[+ ABILITY 3-2 - Targeted Brutality +]--
	create_template("talent_tree_arb_abil3_002_desc_en",
		{"loc_talent_adamant_charge_cooldown_alt_description"}, {"en"},
			loc_text("On charge end, reduces the remaining "..COLORS_KWords.Ability_cd_rgb.." of "..COLORS_KWords.BreakZLine_rgb.." by:\n"
				..Arrow_up_green.." {cooldown_elite:%s} seconds for each Elite, Special, or Monstrosity hit while charging,\n"
				..Arrow_up_green.." {cooldown:%s} seconds for any other enemy hit while charging.\n"
				..Arrow_right_.." Max {max_cooldown:%s} seconds per charge.")),
			-- cooldown: 0.5, cooldown_elite: 5, max_cooldown: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Направленная жестокость +]--
	create_template("talent_tree_arb_abil3_002_desc_ru",
		{"loc_talent_adamant_charge_cooldown_alt_description"}, {"ru"},
			loc_text("После рывка, сокращается время "..COLORS_KWords_ru.Ability_cd_rgb_ru.." вашего "..COLORS_KWords_ru.BreakZLine_rgb_ru.." на:\n"
				..Arrow_up_green.." {cooldown_elite:%s} секунду за каждого, поражённого рывком, элитного врага, специалиста или монстра,\n"
				..Arrow_up_green.." {cooldown:%s} секунды за каждого, поражённого рывком, обычного врага.\n"
				..Arrow_right_.." Максимум {max_cooldown:%s} секунд за рывок.")),

	--[+ ABILITY 3-3 - Kill Order +]--
	create_template("talent_tree_arb_abil3_003_desc_en",
		{"loc_talent_adamant_dog_damage_after_ability_desc"}, {"en"},
			loc_text("{companion_damage:%s} "..COLORS_KWords.Damage_rgb.." for your Cyber Mastiff, for {duration:%s} seconds after using your "..COLORS_KWords.Combat_ability_rgb..".")),
			-- companion_damage: +50%, duration: 12, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Фас! +]-- руоф Приказ убивать
	create_template("talent_tree_arb_abil3_003_desc_ru",
		{"loc_talent_adamant_dog_damage_after_ability_desc"}, {"ru"},
			loc_text("{companion_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." вашего кибермастифа на {duration:%s} секунд после активации вашей "..COLORS_KWords_ru.Combat_ability_rgb_ru..".")),

	--[+ ABILITY 3-4 - Engage +]--
	create_template("talent_tree_arb_abil3_004_desc_en",
		{"loc_talent_adamant_charge_longer_distance_desc"}, {"en"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{distance:%s} meters to the distance of {charge_ability_name:%s}.")),
			-- charge_ability_name: Break the Line, distance: 7.5, m->meters
	--[+ French +]--
	--[+ Russian - Дальний прорыв +]-- руоф К бою
	create_template("talent_tree_arb_abil3_004_desc_ru",
		{"loc_talent_adamant_charge_longer_distance_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{distance:%s} метров к расстоянию способности {charge_ability_name:%s}.")),

--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
	--[+ KEYSTONE 1 - Unleashed Brutality +]--
	create_template("talent_tree_arb_keys1_000_desc_en",
		{"loc_talent_adamant_cyber_mastiff_elites_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." to Elite and Specialist Enemies dealt by your Cyber-Mastiff.\n"
				.."Elite and Specialist Enemies become its Primary targets.")),
			-- damage: +25%, colors
	--[+ French +]--
	--[+ Russian - Высвобожденнная жестокость +]--
	create_template("talent_tree_arb_keys1_000_desc_ru",
		{"loc_talent_adamant_cyber_mastiff_elites_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." элитным врагам и специалистам для вашего кибермастифа.\n"
				.."Элитные враги и специалисты становятся приоритетными целями для него.")),

	--[+ KEYSTONE 2 - Lone Wolf +]--
	create_template("talent_tree_arb_keys2_000_desc_en",
		{"loc_talent_adamant_disable_companion_replenish_desc"}, {"en"},
			loc_text("You are no longer accompanied by your Cyber-Mastiff, but gain:\n"
				..Arrow_up_green.." {damage:%s} "..COLORS_KWords.Damage_rgb..",\n"
				..Arrow_up_green.." {attack_speed:%s} Attack Speed,\n"
				..Arrow_up_green.." {tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb..",\n"
				..Arrow_up_green.." {charges:%s} increased Charges on your Blitz Abilities, and you replenish a charge of your Blitz Ability every {time:%s} seconds.")),
			-- tdr: +15%, attack_speed: +10%, damage: +10%, time: 60, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Одинокий волк +]--
	create_template("talent_tree_arb_keys2_000_desc_ru",
		{"loc_talent_adamant_disable_companion_replenish_desc"}, {"ru"},
			loc_text("Вам больше не помогает кибермастиф, но вы получаете усиления:\n"
				..Arrow_up_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
				..Arrow_up_green.." {attack_speed:%s} к скорости атаки,\n"
				..Arrow_up_green.." {tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru..",\n"
				..Arrow_up_green.." {charges:%s} заряд блица, а также ваш блиц теперь восстанавливает заряд раз в {time:%s} секунд.")),

	--[+ KEYSTONE 3 - Go Get 'Em! +]--
	create_template("talent_tree_arb_keys3_000_desc_en",
		{"loc_talent_adamant_cyber_mastiff_ranged_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." to Ranged Enemies dealt by your Cyber-Mastiff.\n"
				.."Ranged Enemies become its Primary targets.")),
			-- !damage!: +50%, colors
	--[+ French +]--
	--[+ Russian - Взять их! +]--
	create_template("talent_tree_arb_keys3_000_desc_ru",
		{"loc_talent_adamant_cyber_mastiff_ranged_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." дальнобойным врагам для вашего кибермастифа.\n"
				.."Дальнобойные враги становятся приоритетными целями для него.")),

	--[+ KEYSTONE 4 - Execution Order +]--
	create_template("talent_tree_arb_keys4_000_desc_en",
		{"loc_talent_execution_order_description"}, {"en"},
			loc_text("Periodically mark Elites, Specialists and Bosses for Mercy Sanction. Killing a "..COLORS_KWords.Markedenemy_rgb.." replenishes {toughness:%s} "..COLORS_KWords.Toughness_rgb..".\n\n"
			.."Your Cyber-Mastiff gains for {time:%s} seconds after attacking a "..COLORS_KWords.Markedenemy_rgb..":\n"
				..Arrow_up_green.." {dog_damage:%s} Cyber-Mastiff "..COLORS_KWords.Damage_rgb..".\n\n"
			.."You gain for {time:%s} seconds after killing a "..COLORS_KWords.Markedenemy_rgb..":\n"
				..Arrow_up_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." and\n"
				..Arrow_up_green.." {attack_speed:%s} Attack Speed.")),
			-- toughness: 15%, dog_damage: +150%, time: 8, damage: +15%, attack_speed: +10%, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Метка возмездия +]-- Приказ казнить
	create_template("talent_tree_arb_keys4_000_desc_ru",
		{"loc_talent_execution_order_description"}, {"ru"},
			loc_text("Элитные враги, специалисты и боссы периодически помечаются для Санкции милосердия. Убийство "..COLORS_KWords_ru.Markedenemy_rgb_ru.." восстанавливает {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..".\n\n"
			.."Ваш кибермастиф получает на {time:%s} секунд после атаки "..COLORS_KWords_ru.Markedenemy_rgb_ru..":\n"
				..Arrow_up_green.." {dog_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..".\n\n"
			.."Вы получаете на {time:%s} секунд после убийства "..COLORS_KWords_ru.Markedenemy_rgb_ru..":\n"
				..Arrow_up_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n"
				..Arrow_up_green.." {attack_speed:%s} к скорости атаки.")),

	--[+ KEYSTONE 4-1 - Efficient Killer +]--
	create_template("talent_tree_arb_keys4_001_desc_en",
		{"loc_talent_execution_order_crit_description"}, {"en"},
			loc_text("On killing a "..COLORS_KWords.Markedenemy_rgb..", you gain:\n"
				..Arrow_up_green.." {crit_chance:%s} "..COLORS_KWords.Crt_chance_rgb.." and\n"
				..Arrow_up_green.." {crit_damage:%s} "..COLORS_KWords.Crt_dmg_r_rgb..".\n"
				..Arrow_right_.." Lasts {time:%s} seconds.")),
			-- crit_chance: +10%, crit_damage: +25%, time: 8, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Эффективный убийца +]--
	create_template("talent_tree_arb_keys4_001_desc_ru",
		{"loc_talent_execution_order_crit_description"}, {"ru"},
			loc_text("При убийстве "..COLORS_KWords_ru.Markedenemy_rgb_ru.." вы получаете:\n"
				..Arrow_up_green.." {crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." и\n"
				..Arrow_up_green.." {crit_damage:%s} к "..COLORS_KWords_ru.Crit_dmg_u_rgb_ru..".\n"
				..Arrow_right_.." Длится {time:%s} секунд.")),

	--[+ KEYSTONE 4-2 - Malocator +]--
	create_template("talent_tree_arb_keys4_002_desc_en",
		{"loc_talent_execution_order_cdr_on_kill_description"}, {"en"},
			loc_text("{regen:%s} "..COLORS_KWords.Cd_rgb.." Regeneration for {time:%s} seconds after killing a "..COLORS_KWords.Markedenemy_rgb..".")),
			-- regen: +50%, time: 8, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Малокатор +]--
	create_template("talent_tree_arb_keys4_002_desc_ru",
		{"loc_talent_execution_order_cdr_on_kill_description"}, {"ru"},
			loc_text("{regen:%s} к "..COLORS_KWords_ru.Ability_cd_rgb_ru.." на {time:%s} секунд после убийства "..COLORS_KWords_ru.Markedenemy_rgb_ru..".")),

	--[+ KEYSTONE 4-3 - No Lenience +]--
	create_template("talent_tree_arb_keys4_003_desc_en",
		{"loc_talent_execution_order_command_applies_brittleness_description"}, {"en"},
			loc_text("{rending:%s} "..COLORS_KWords.Rending_rgb.." for {time:%s} seconds after killing a "..COLORS_KWords.Markedenemy_rgb..".")),
			-- rending: +10%, time: 8, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Нетерпимость +]--
	create_template("talent_tree_arb_keys4_003_desc_ru",
		{"loc_talent_execution_order_command_applies_brittleness_description"}, {"ru"},
			loc_text("{rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." на {time:%s} секунд после убийства "..COLORS_KWords_ru.Markedenemy_rgb_ru..".")),

	--[+ KEYSTONE 4-4 - Keeping Protocol +]--
	create_template("talent_tree_arb_keys4_004_desc_en",
		{"loc_talent_execution_order_perma_buff_new_description"}, {"en"},
			loc_text("Killing a "..COLORS_KWords.Markedenemy_rgb.." grants:\n"
				..Arrow_up_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." vs Monstrosities and\n"
				..Arrow_up_green.." {damage_red:%s} "..COLORS_KWords.Damage_rgb.." Resistance vs Monstrosities.\n"
				..Arrow_right_.." {max_stacks:%s} Max Stacks.\n"
				..Arrow_right_.." Lasts until the end of the Mission.")),
			-- damage: +1%, damage_red: +1%, max_stacks: 30, colors
	--[+ French +]--
	--[+ Russian - Соблюдение протокола +]-- руоф Поддердание протокола
	create_template("talent_tree_arb_keys4_004_desc_ru",
		{"loc_talent_execution_order_perma_buff_new_description"}, {"ru"},
			loc_text("Убийство "..COLORS_KWords_ru.Markedenemy_rgb_ru.." даёт:\n"
				..Arrow_up_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." монстрам и\n"
				..Arrow_up_green.." {damage_red:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." от монстров.\n"
				..Arrow_right_.." Максимум {max_stacks:%s} зарядов.\n"
				..Arrow_right_.." Длится до конца миссии.")),

	--[+ KEYSTONE 4-5 - Not Far Behind +]--
	create_template("talent_tree_arb_keys4_005_desc_en",
		{"loc_talent_adamant_pinning_dog_bonus_moving_towards_description"}, {"en"},
			loc_text("After Pounce you gain for {time:%s} seconds:\n"
				..Arrow_up_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." and\n"
				..Arrow_up_green.." {movement_speed:%s} Movement Speed.")),
			-- movement_speed: +10%, damage: +10%, time: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - В зоне досягаемости +]-- руоф Не так далеко позади
	create_template("talent_tree_arb_keys4_005_desc_ru",
		{"loc_talent_adamant_pinning_dog_bonus_moving_towards_description"}, {"ru"},
			loc_text("После нападения на врага вашего кибермастифа вы получаете на {time:%s} секунд:\n"
				..Arrow_up_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n"
				..Arrow_up_green.." {movement_speed:%s} к скорости движения.")),

	--[+ KEYSTONE 5 - Terminus Warrant +]--
	create_template("talent_tree_arb_keys5_000_desc_en",
		{"loc_talent_adamant_terminus_warrant_shortened_alt_desc"}, {"en"},
			loc_text("Ranged Attacks grant Stacks of "..COLORS_KWords.Meleejust_rgb.." for each Enemy Hit, up to {max_stacks:%s}. Melee Hits remove {melee_remove:%s} Stack.\n"
				.."While you have Stacks of "..COLORS_KWords.Meleejust_rgb..", gain:\n"
				..Arrow_up_green.." {melee_damage:%s} Melee "..COLORS_KWords.Damage_rgb.." and\n"
				..Arrow_up_green.." {melee_impact:%s} Melee "..COLORS_KWords.Impact_rgb..".\n\n"
				.."Melee Hits grant Stacks of "..COLORS_KWords.Rangedjust_rgb..", up to {max_stacks:%s}. Ranged Attacks remove {ranged_remove:%s} Stack for each Enemy Hit.\n"
				.."While you have Stacks of "..COLORS_KWords.Rangedjust_rgb..", gain:\n"
				..Arrow_up_green.." {ranged_damage:%s} Ranged "..COLORS_KWords.Damage_rgb..",\n"
				..Arrow_up_green.." {ranged_cleave:%s} Ranged "..COLORS_KWords.Cleave_rgb.." and\n"
				..Arrow_up_green.." {suppression:%s} Suppression.")),
				-- max_stacks: 30, melee_remove: 1, melee_damage: +15%, melee_impact: +25%, ranged_remove: 1, ranged_damage: +15%, ranged_cleave: +50%, suppression: +50%, colors
	--[+ French +]--
	--[+ Russian - Ордер Терминус +]-- руоф Распоряжение «Терминус»
	create_template("talent_tree_arb_keys5_000_desc_ru",
		{"loc_talent_adamant_terminus_warrant_shortened_alt_desc"}, {"ru"},
			loc_text("Дальнобойные атаки дают заряды "..COLORS_KWords_ru.Meleejust_rgb_ru.." за каждый удар по врагу, до {max_stacks:%s} зарядов. Удар в ближнем бою снимает {melee_remove:%s} заряд.\n"
				.."Пока у вас есть заряды "..COLORS_KWords_ru.Meleejust_rgb_ru..", вы получаете усиления для ближнего боя:\n"
				..Arrow_up_green.." {melee_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n"
				..Arrow_up_green.." {melee_impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru..".\n\n"
				.."Атаки ближнего боя дают заряды  "..COLORS_KWords_ru.Rangedjust_rgb_ru.." за каждое попадание по врагу, до {max_stacks:%s} зарядов. Дальнобойная атака снимает {ranged_remove:%s} заряд.\n"
				.."Пока у вас есть заряды "..COLORS_KWords_ru.Rangedjust_rgb_ru..", вы получаете усиления для дальнобойных атак:\n"
				..Arrow_up_green.." {ranged_damage:%s} к дальнобойному "..COLORS_KWords_ru.Damage_rgb_ru..",\n"
				..Arrow_up_green.." {suppression:%s} к подавлению и\n"
				..Arrow_up_green.." {ranged_cleave:%s} к "..COLORS_KWords_ru.Cleaving_u_rgb_ru.." в дальнем бою.")),

	--[+ KEYSTONE 5-1 - Dispense Justice +]--
	create_template("talent_tree_arb_keys5_001_desc_en",
		{"loc_talent_adamant_terminus_warrant_ranged_alt_desc"}, {"en"},
			loc_text("{reload_speed:%s} Reload Speed while you have Stacks of "..COLORS_KWords.Rangedjust_rgb..".")),
			-- reload_speed: +20%, colors
	--[+ French +]--
	--[+ Russian - Исполнение приговора +]-- руоф Охват правосудия
	create_template("talent_tree_arb_keys5_001_desc_ru",
		{"loc_talent_adamant_terminus_warrant_ranged_alt_desc"}, {"ru"},
			loc_text("{reload_speed:%s} к скорости перезарядки пока у вас есть заряды "..COLORS_KWords_ru.Rangedjust_rgb_ru..".")),

	--[+ KEYSTONE 5-2 - Obstinate +]--
	create_template("talent_tree_arb_keys5_002_desc_en",
		{"loc_talent_adamant_terminus_warrant_upgrade_alt_desc"}, {"en"},
			loc_text("Swapping to your Melee Weapon while you have {swap_stacks:%s} "..COLORS_KWords.Meleejust_rgb.." Stacks or more, grants you:\n"
				..Arrow_up_green.." {melee_attack_speed:%s} Melee Attack Speed until you run out of Stacks, or swap to your Ranged Weapon.\n\n"
				.."Swapping to your Ranged Weapon while you have {swap_stacks:%s} "..COLORS_KWords.Rangedjust_rgb.." Stacks or more, grants you:\n"
				..Arrow_up_green.." {fire_rate:%s} Fire Rate until you run out of Stacks, or swap to your Melee Weapon.")),
				-- swap_stacks: 15, melee_attack_speed: +15%, fire_rate: +15%, colors
	--[+ French +]--
	--[+ Russian - Непреклонный +]-- руоф Упрямый
	create_template("talent_tree_arb_keys5_002_desc_ru",
		{"loc_talent_adamant_terminus_warrant_upgrade_alt_desc"}, {"ru"},
			loc_text("Переключение на оружие ближнего боя пока у вас есть как минимум {swap_stacks:%s} зарядов "..COLORS_KWords_ru.Meleejust_rgb_ru..", вы получаете:\n"
				..Arrow_up_green.." {melee_attack_speed:%s} к скорости атак ближнего боя пока заряды не кончатся или пока вы не переключитесь на дальнобойное оружие.\n\n"
				.."Переключение на оружие дальнего боя пока у вас есть как минимум {swap_stacks:%s} зарядов "..COLORS_KWords_ru.Rangedjust_rgb_ru..", вы получаете:\n"
				..Arrow_up_green.." {fire_rate:%s} к скорострельности пока заряды не кончатся или пока вы не переключитесь на оружие ближнего боя.")),

	--[+ KEYSTONE 5-3 - Terminal Decree +]--
	create_template("talent_tree_arb_keys5_003_desc_en",
		{"loc_talent_adamant_terminus_warrant_toughness_desc"}, {"en"},
			loc_text("While you have stacks of "..COLORS_KWords.Meleejust_rgb..", you gain additional:\n"
				..Arrow_up_green.." {melee_toughness:%s} Melee "..COLORS_KWords.Toughness_rgb.." Regeneration, and Allies in "..COLORS_KWords.Coherency_rgb.." Replenish:\n"
				..Arrow_up_green.." {toughness:%s} of any "..COLORS_KWords.Toughness_rgb.." that you Replenish.")),
			-- melee_toughness: +100%, toughness: 25%, colors
	--[+ French +]--
	--[+ Russian - Последний приговор +]-- руоф Окончательное постановление
	create_template("talent_tree_arb_keys5_003_desc_ru",
		{"loc_talent_adamant_terminus_warrant_toughness_desc"}, {"ru"},
			loc_text("Пока у вас есть заряды "..COLORS_KWords_ru.Meleejust_rgb_ru..", вы дополнительно получаете:\n"
				..Arrow_up_green.." {melee_toughness:%s} к восстановлению "..COLORS_KWords_ru.Toughness_rgb_ru.." в ближнем бою, а союзники в "..COLORS_KWords_ru.Coherency_rgb_ru.." восстанавливают:\n"
				..Arrow_up_green.." {toughness:%s} любой "..COLORS_KWords_ru.Toughness_rgb_ru..", восстановленной вами.")),

	--[+ KEYSTONE 5-4 - Writ of Judgement +]--
	create_template("talent_tree_arb_keys5_004_desc_en",
		{"loc_talent_adamant_terminus_warrant_improved_alt_desc"}, {"en"},
			loc_text("Swapping to your Melee Weapon while at {talent_max_stacks:%s} "..COLORS_KWords.Meleejust_rgb.." Stacks grants you:\n"
				..Arrow_up_green.." {melee_rending:%s} Melee "..COLORS_KWords.Rending_rgb.." until you run out of Stacks, or swap to your Ranged Weapon.\n\n"
				.."Swapping to your Ranged Weapon while at {talent_max_stacks:%s} "..COLORS_KWords.Rangedjust_rgb.." Stacks grants you:\n"
				..Arrow_up_green.." {crit_damage:%s} "..COLORS_KWords.Crit_strike_dmg_rgb.." and\n"
				..Arrow_up_green.." {weakspot_damage:%s} "..COLORS_KWords.Weakspot_dmg_rgb.." until you run out of Stacks, or swap to your Melee Weapon.")),
			-- talent_max_stacks: 30, melee_rending: +15%, crit_damage: +25%, weakspot_damage: +25%, colors
	--[+ French +]--
	--[+ Russian - Судебный ордер +]-- руоф Судебное предписание
	create_template("talent_tree_arb_keys5_004_desc_ru",
		{"loc_talent_adamant_terminus_warrant_improved_alt_desc"}, {"ru"},
			loc_text("Переключение на оружие ближнего боя пока у вас есть {talent_max_stacks:%s} зарядов "..COLORS_KWords_ru.Meleejust_rgb_ru..", вы получаете:\n"
				..Arrow_up_green.." {melee_rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." в ближнем бою пока заряды не кончатся или пока вы не переключитесь на дальнобойное оружие.\n\n"
				.."Переключение на оружие дальнего боя пока у вас есть {talent_max_stacks:%s} зарядов "..COLORS_KWords_ru.Rangedjust_rgb_ru..", вы получаете:\n"
				..Arrow_up_green.." {crit_damage:%s} к "..COLORS_KWords_ru.Crit_dmg_u_rgb_ru.." и\n"
				..Arrow_up_green.." {weakspot_damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." пока заряды не кончатся или пока вы не переключитесь на оружие ближнего боя.")),

	--[+ KEYSTONE 6 - Forceful +]--
	create_template("talent_tree_arb_keys6_000_desc_en",
		{"loc_talent_adamant_forceful_base_alt_desc"}, {"en"},
			loc_text(COLORS_KWords.Staggering_rgb.." Hits and Blocked Attacks grant Stacks of "..COLORS_KWords.Forceful_rgb..". Lasting {duration:%s} seconds and Stacking {stacks:%s} times. Each Stack gives:\n"
				..Arrow_up_green.." {impact:%s} "..COLORS_KWords.Impact_rgb.." and\n"
				..Arrow_up_green.." {dr:%s} "..COLORS_KWords.Damage_rgb.." Resistance.\n"
				.."Remove Stack on "..COLORS_KWords.Damage_rgb.." taken.")),
			-- forceful_name: Forceful, duration: 5, stacks: 10, impact: +5%, dr: +2.5%, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Неудержимый +]-- руоф Напористый
	create_template("talent_tree_arb_keys6_000_desc_ru",
		{"loc_talent_adamant_forceful_base_alt_desc"}, {"ru"},
			loc_text(COLORS_KWords_ru.Stunss_rgb_ru.." удары и заблокированные атаки дают заряды "..COLORS_KWords_ru.Forceful_rgb_ru..". Длится {duration:%s} секунд и суммируется до {stacks:%s} раз. Каждый заряд даёт:\n"
				..Arrow_up_green.." {impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." и\n"
				..Arrow_up_green.." {dr:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru..".\n"
				..Arrow_right_.." Заряд снимается при получении "..COLORS_KWords_ru.Dmg_a_rgb_ru..".")),

	--[+ KEYSTONE 6-1 - Adamant Will +]--
	create_template("talent_tree_arb_keys6_001_desc_en",
		{"loc_talent_adamant_forceful_stun_immune_and_block_all_linger_desc"}, {"en"},
			loc_text(COLORS_KWords.Stun_rgb.." Immunity while having "..COLORS_Numbers.n_10_rgb.." Stacks of "..COLORS_KWords.Forceful_rgb.." and for {duration:%s} seconds after dropping below "..COLORS_Numbers.n_10_rgb.." Stacks.\n"
				.."Your Perfect blocks can block All Attacks.")),
			-- duration: 3, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Адамантовая воля +]--
	create_template("talent_tree_arb_keys6_001_desc_ru",
		{"loc_talent_adamant_forceful_stun_immune_and_block_all_linger_desc"}, {"ru"},
			loc_text("Пока у вас "..COLORS_Numbers.n_10_rgb.." зарядов "..COLORS_KWords_ru.Forceful_rgb_ru.." и на {duration:%s} секунды после того, как количество зарядов падает ниже "..COLORS_Numbers.n_10_rgb..", вы получаете иммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru..".\n"
				.."Ваши идеальные блоки могут блокировать любые атаки.")),

	--[+ KEYSTONE 6-2 - Will of the Lex +]--
	create_template("talent_tree_arb_keys6_002_desc_en",
		{"loc_talent_adamant_forceful_toughness_regen_per_stack_desc"}, {"en"},
			loc_text("Replenish {toughness:%s} "..COLORS_KWords.Toughness_rgb.." each second per Stack.")),
			-- toughness: +0.5%, colors
	--[+ French +]--
	--[+ Russian - Воля Закона +]--
	create_template("talent_tree_arb_keys6_002_desc_ru",
		{"loc_talent_adamant_forceful_toughness_regen_per_stack_desc"}, {"ru"},
			loc_text("Восстанавливается {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." каждую секунду за заряд "..COLORS_KWords_ru.Forceful_rgb_ru..".")),

	--[+ KEYSTONE 6-3 - Targets Acquired +]--
	create_template("talent_tree_arb_keys6_003_desc_en",
		{"loc_talent_adamant_forceful_melee_alt_desc"}, {"en"},
			loc_text("While at Max Stacks, and for {duration:%s} seconds afterwards, gain:\n"
				..Arrow_up_green.." {attack_speed:%s} Attack Speed and\n"
				..Arrow_up_green.." {cleave:%s} "..COLORS_KWords.Cleave_rgb..".")),
			-- duration: 3, attack_speed: +10%, cleave: +50%, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Цели обнаружены +]--
	create_template("talent_tree_arb_keys6_003_desc_ru",
		{"loc_talent_adamant_forceful_melee_alt_desc"}, {"ru"},
			loc_text("Пока у вас "..COLORS_Numbers.n_10_rgb.." зарядов "..COLORS_KWords_ru.Forceful_rgb_ru.." и на {duration:%s} секунды после того, как количество зарядов падает ниже "..COLORS_Numbers.n_10_rgb..", вы получаете:\n"
				..Arrow_up_green.." {cleave:%s} к "..COLORS_KWords_ru.Cleave_rgb_ru.." и\n"
				..Arrow_up_green.." {attack_speed:%s} к скорости атаки.")),

	--[+ KEYSTONE 6-4 - Arbites Vigilant +]--
	create_template("talent_tree_arb_keys6_004_desc_en",
		{"loc_talent_adamant_forceful_ability_damage"}, {"en"},
			loc_text("On "..COLORS_KWords.Combat_ability_rgb.." use, you spend all Stacks and gain for each Stack:\n"
				..Arrow_up_green.." {strength:%s} "..COLORS_KWords.Strength_rgb..".\n"
				..Arrow_right_.." Lasts {duration:%s} seconds.")),
			-- strength: +2.5%, duration: 10, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Бдительный Арбитрес +]-- руоф Бдительность Арбитрес
	create_template("talent_tree_arb_keys6_004_desc_ru",
		{"loc_talent_adamant_forceful_ability_damage"}, {"ru"},
			loc_text("При использовании "..COLORS_KWords_ru.Combat_ability_rgb_ru..", вы тратите все заряды и получаете за каждый заряд:\n"
				..Arrow_up_green.." {strength:%s} к "..COLORS_KWords_ru.Strength_rgb_ru..".\n"
				..Arrow_right_.." Длится {duration:%s} секунд.")),

	--[+ KEYSTONE 6-5 - Judicial Force +]--
	create_template("talent_tree_arb_keys6_005_desc_en",
		{"loc_talent_adamant_forceful_stagger_on_low_high_desc"}, {"en"},
			loc_text(COLORS_KWords.Stagger_rgb.." nearby Enemies upon reaching {low_stacks:%s} Stacks or {high_stacks:%s} Stacks of "..COLORS_KWords.Forceful_rgb..".\n"
				..Arrow_right_.." Cooldown {cooldown:%s} seconds. Cooldown is separate for {low_stacks:%s} Stacks and for {high_stacks:%s} Stacks.")),
			-- low_stacks: 0, high_stacks: 10, cooldown: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Сила правосудия +]-- руоф Судебная сила
	create_template("talent_tree_arb_keys6_005_desc_ru",
		{"loc_talent_adamant_forceful_stagger_on_low_high_desc"}, {"ru"},
			loc_text("Ближайшие враги получают "..COLORS_KWords_ru.Stagger_rgb_ru.." при достижении вами {low_stacks:%s} или {high_stacks:%s} зарядов "..COLORS_KWords_ru.Forceful_rgb_ru..".\n"
				..Arrow_right_.." Восстанавливается {cooldown:%s} секунд. Восстановление раздельное для {low_stacks:%s} зарядов и для {high_stacks:%s} зарядов.")),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - No Escape +]--
	create_template("talent_tree_arb_pas_001_desc_en",
		{"loc_talent_adamant_elite_special_kills_offensive_boost_alt_desc"}, {"en"},
			loc_text("On Elite or Specialist Kill, gain:\n"
				..Arrow_up_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." and\n"
				..Arrow_up_green.." {movement_speed:%s} Movement Speed.\n"
				..Arrow_right_.." Lasts {duration:%s} seconds.")),
			-- damage: +10%, movement_speed: +10%, duration: 4, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Не уйдёшь +]-- руоф Не сбежишь
	create_template("talent_tree_arb_pas_001_desc_ru",
		{"loc_talent_adamant_elite_special_kills_offensive_boost_alt_desc"}, {"ru"},
			loc_text("После убийства элитного врага или специалиста, вы получаете:\n"
				..Arrow_up_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n"
				..Arrow_up_green.." {movement_speed:%s} к скорости движения.\n"
				..Arrow_right_.." Длится {duration:%s} секунды.")),

	--[+ Passive 2 - Withering Fire +]--
	create_template("talent_tree_arb_pas_002_desc_en",
		{"loc_talent_adamant_damage_after_reloading_desc"}, {"en"},
			loc_text("{damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds after Reloading.")),
			-- damage: +15%, duration: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Истребляющий огонь +]-- Изнуряющий огонь
	create_template("talent_tree_arb_pas_002_desc_ru",
		{"loc_talent_adamant_damage_after_reloading_desc"}, {"ru"},
			loc_text("{damage:%s} к дальнобойному "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд после перезарядки.")),

	--[+ Passive 3 - Hammer of Judgement +]--
	create_template("talent_tree_arb_pas_003_desc_en",
		{"loc_talent_adamant_multiple_hits_attack_speed_desc"}, {"en"},
			loc_text("{melee_attack_speed:%s} Melee Attack Speed for {duration:%s} seconds on hitting {hits:%s} or more enemies with a Melee Attack.")),
			-- melee_attack_speed: +10%, duration: 3, hits: 3, s->seconds
	--[+ French +]--
	--[+ Russian - Молот Правосудия +]-- руоф Молот правосудия
	create_template("talent_tree_arb_pas_003_desc_ru",
		{"loc_talent_adamant_multiple_hits_attack_speed_desc"}, {"ru"},
			loc_text("{melee_attack_speed:%s} к скорости атак ближнего боя на {duration:%s} секунды при попадании по {hits:%s} или более врагам атакой ближнего боя.")),

	--[+ Passive 4 - Razor-Jaw Augment +]--
	create_template("talent_tree_arb_pas_004_desc_en",
		{"loc_talent_adamant_dog_pounces_bleed_nearby_desc"}, {"en"},
			loc_text("{stacks:%s} Stacks of "..COLORS_KWords.Bleed_rgb.." applies to Enemies knocked away by your Cyber Mastiff's Pounce.")),
			-- stacks: 8, colors
	--[+ French +]--
	--[+ Russian - Аугментация челюсти-бритвы +]-- руоф Аугментация челюстей: бритва
	create_template("talent_tree_arb_pas_004_desc_ru",
		{"loc_talent_adamant_dog_pounces_bleed_nearby_desc"}, {"ru"},
			loc_text("{stacks:%s} зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." применяется к врагам, опрокинутым вашим кибермастифом.")),

	--[+ Passive 5 - Target Neutralised +]--
	create_template("talent_tree_arb_pas_005_desc_en",
		{"loc_talent_adamant_elite_special_kills_replenish_toughness_desc"}, {"en"},
			loc_text("{instant_toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes instantly, and {toughness:%s} "..COLORS_KWords.Toughness_rgb.." over {duration:%s} seconds, on Elite or Specialist Kill.")),
			-- instant_toughness: 10%, toughness: 10%, duration: 4, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Цель уничтожена +]-- руоф Цель нейтрализована
	create_template("talent_tree_arb_pas_005_desc_ru",
		{"loc_talent_adamant_elite_special_kills_replenish_toughness_desc"}, {"ru"},
			loc_text("{instant_toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается сразу и ещё {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." за {duration:%s} секунды после убийства элитных врагов или специалистов.")),

	--[+ Passive 6 - Up Close +]--
	create_template("talent_tree_arb_pas_006_desc_en",
		{"loc_talent_adamant_close_kills_restore_toughness_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes on Close Kill.")),
			-- toughness: 5%, colors
	--[+ French +]--
	--[+ Russian - В упор +]-- руоф Лицом к лицу
	create_template("talent_tree_arb_pas_006_desc_ru",
		{"loc_talent_adamant_close_kills_restore_toughness_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при убийстве на ближней ддистанции.")),

	--[+ Passive 7 - Force of Will +]--
	create_template("talent_tree_arb_pas_007_desc_en",
		{"loc_talent_adamant_staggers_replenish_toughness_melee_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes on "..COLORS_KWords.Staggering_rgb.." Melee Attack.")),
			-- toughness: 10%, colors
	--[+ French +]--
	--[+ Russian - Сила воли +]--
	create_template("talent_tree_arb_pas_007_desc_ru",
		{"loc_talent_adamant_staggers_replenish_toughness_melee_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при "..COLORS_KWords_ru.Stagger_i_rgb_ru.." врага атакой ближнего боя.")),

	--[+ Passive 8 - Retaliatory Force +]--
	create_template("talent_tree_arb_pas_008_desc_en",
		{"loc_talent_adamant_perfect_block_damage_boost_alt_desc"}, {"en"},
			loc_text("Gain {block_cost:%s} Reduced Block Cost.\n"
				.."On Perfect Block gain for {duration:%s} seconds:\n"
				..Arrow_up_green.." {damage:%s} "..COLORS_KWords.Damage_rgb.." and\n"
				..Arrow_up_green.." {attack_speed:%s} Attack Speed.")),
			-- block_cost: 15%, damage: +15%, attack_speed: +10%, duration: 8, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Сила возмездия +]--
	create_template("talent_tree_arb_pas_008_desc_ru",
		{"loc_talent_adamant_perfect_block_damage_boost_alt_desc"}, {"ru"},
			loc_text("На {block_cost:%s} снижены затраты выносливости на блокирование.\n"
				.."При идеальном блокировании вы получаете на {duration:%s} секунд:\n"
				..Arrow_up_green.." {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n"
				..Arrow_up_green.." {attack_speed:%s} к скорости атаки.")),

	--[+ Passive 9 - Man and Cyber-Mastiff +]--
	create_template("talent_tree_arb_pas_009_desc_en",
		{"loc_talent_adamant_toughness_regen_near_companion_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes per second while Cyber-Mastiff is within {range:%s} meters of you.")),
			-- toughness: 5%, range: 8, m->meters, colors
	--[+ French +]--
	--[+ Russian - Человек и кибермастиф +]--
	create_template("talent_tree_arb_pas_009_desc_ru",
		{"loc_talent_adamant_toughness_regen_near_companion_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду пока ваш кибермастиф в пределах {range:%s} метров от вас.")),

	--[+ Passive 10 - Walk It Off +]--
	create_template("talent_tree_arb_pas_010_desc_en",
		{"loc_talent_adamant_stamina_spent_replenish_toughness_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes over {duration:%s} seconds per {stamina:%s} "..COLORS_KWords.Stamina_rgb.." spent.")),
			-- stamina: 1, toughness: 15%, duration: 3, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Заживёт на ходу +]-- руоф Остынь
	create_template("talent_tree_arb_pas_010_desc_ru",
		{"loc_talent_adamant_stamina_spent_replenish_toughness_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за {duration:%s} секунды за каждую единицу потраченной "..COLORS_KWords_ru.Stamina_rgb_ru..".")), --{stamina:%s}

	--[+ Passive 11 - Shield Plates +]--
	create_template("talent_tree_arb_pas_011_desc_en",
		{"loc_talent_adamant_shield_plates_alt_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes over {duration:%s} seconds on successful Block.\n"
				.."{perfect_toughness:%s} "..COLORS_KWords.Toughness_rgb.." instantly replenishes on Perfect Block.\n"
				..Arrow_right_.." Cooldown {cooldown:%s} second.")),
			-- toughness: 15%, duration: 3, perfect_toughness: 10%, cooldown: 1, s->second, colors
	--[+ French +]--
	--[+ Russian - Щитовые пластины +]-- руоф Пластинчатые щиты
	create_template("talent_tree_arb_pas_011_desc_ru",
		{"loc_talent_adamant_shield_plates_alt_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за {duration:%s} секунды при успешном блоке.\n"
				.."{perfect_toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." мгновенно восполняетсяпри идеальном блоке.\n"
				..Arrow_right_.." Восстанавливается {cooldown:%s} секунду.")),

	--[+ Passive 12 - Arbitrator Armour +]--
	create_template("talent_tree_arb_pas_012_desc_en",
		{"loc_talent_adamant_armor_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb..".")),
			-- toughness: +25, colors
	--[+ French +]--
	--[+ Russian - Броня арбитратора +]-- руоф Броня Арбитратора
	create_template("talent_tree_arb_pas_012_desc_ru",
		{"loc_talent_adamant_armor_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..".")),

	--[+ Passive 13 - Voltaic Mandibles Augment +]--
	create_template("talent_tree_arb_pas_013_desc_en",
		{"loc_talent_adamant_dog_attacks_electrocute_desc"}, {"en"},
			loc_text("Your Cyber-Mastiff "..COLORS_KWords.Electrocutes_rgb.." Enemies it attacks for {duration:%s} seconds.")),
			-- duration: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Аугментация Вольтаические жвала +]-- руоф Аугментация челюстей: электрошок
	create_template("talent_tree_arb_pas_013_desc_ru",
		{"loc_talent_adamant_dog_attacks_electrocute_desc"}, {"ru"},
			loc_text("Ваш кибермастиф поражает "..COLORS_KWords_ru.Electrocuted_rgb_ru.." врагов на {duration:%s} секунд при атаке.")),

	--[+ Passive 14 - Ammo Belt +]--
	-- create_template("talent_tree_arb_pas_014_desc_en",
		-- {"loc_talent_adamant_ammo_belt_desc"}, {"en"},
			-- loc_text("{ammo:%s} Ammo Capacity.")),
			-- ammo: +25%
	--[+ French +]--
	--[+ Russian - Патронтаж +]-- руоф Поясная разгрузка
	create_template("talent_tree_arb_pas_014_desc_ru",
		{"loc_talent_adamant_ammo_belt_desc"}, {"ru"},
			loc_text("{ammo:%s} к боезапасу.")),

	--[+ Passive 15 - Concussive +]--
	create_template("talent_tree_arb_pas_015_desc_en",
		{"loc_talent_adamant_melee_weakspot_hits_count_as_stagger_desc"}, {"en"},
			loc_text("Melee "..COLORS_KWords.Weakspothits_rgb.." make the Enemy count as "..COLORS_KWords.Staggered_rgb.." for {duration:%s} seconds.")),
			-- duration: 4, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Ошеломление +]-- руоф Сотрясение
	create_template("talent_tree_arb_pas_015_desc_ru",
		{"loc_talent_adamant_melee_weakspot_hits_count_as_stagger_desc"}, {"ru"},
			loc_text("Попадания в "..COLORS_KWords_ru.Weakspothits_rgb_ru.." в ближнем бою "..COLORS_KWords_ru.Staggers_rgb_ru.." врагов на {duration:%s} секунды.")),

	--[+ Passive 16 - Canine Morale +]--
	create_template("talent_tree_arb_pas_016_desc_en",
		{"loc_talent_adamant_pinning_dog_kills_buff_allies_description"}, {"en"},
			loc_text("Killing Pounced Targets grants for you and Allies in "..COLORS_KWords.Coherency_rgb.." over {duration:%s} seconds:\n"
				..Arrow_up_green.." {toughness:%s} "..COLORS_KWords.Toughness_rgb.." and\n"
				..Arrow_up_green.." {tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb..".")),
			-- tdr: +20%, toughness: +10%, duration: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Боевой настрой пса +]-- руоф Собачий настрой
	create_template("talent_tree_arb_pas_016_desc_ru",
		{"loc_talent_adamant_pinning_dog_kills_buff_allies_description"}, {"ru"},
			loc_text("Убийство врага, прижатого кибермастифом к земле, даёт вам и союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru.." на {duration:%s} секунд:\n"
				..Arrow_up_green.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и\n"
				..Arrow_up_green.." {tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru..".")),

	--[+ Passive 17 - Imposing Force +]--
	create_template("talent_tree_arb_pas_017_desc_en",
		{"loc_talent_adamant_damage_reduction_after_elite_kill_desc"}, {"en"},
			loc_text("{damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Resistance for {duration:%s} seconds after Elite or Specialist Kill.")),
			-- damage_reduction: +25%, duration: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Давящая мощь +]-- руоф Впечатляющая сила
	create_template("talent_tree_arb_pas_017_desc_ru",
		{"loc_talent_adamant_damage_reduction_after_elite_kill_desc"}, {"ru"},
			loc_text("{damage_reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд после убийства элитного врага или специалиста.")),

	--[+ Passive 18 - Suppression Force +]--
	create_template("talent_tree_arb_pas_018_desc_en",
		{"loc_talent_adamant_staggered_enemies_deal_less_damage_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." dealt by Enemies successfully "..COLORS_KWords.Staggered_rgb.." by Melee Attacks, Pushes, and direct impacts of "..COLORS_KWords.BreakZLine_rgb..".\n"
				..Arrow_right_.." Lasts {duration:%s} seconds.")),
			-- damage: -20%, duration: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Сила подавления +]--
	create_template("talent_tree_arb_pas_018_desc_ru",
		{"loc_talent_adamant_staggered_enemies_deal_less_damage_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." от врагов, "..COLORS_KWords_ru.Staggered_rgb_ru.." вами с помощью атак ближнего боя, толчков или прямых столкновений способности "..COLORS_KWords_ru.BreakZLined_rgb_ru..".\n"
				..Arrow_right_.." Длится {duration:%s} секунд.")),

	--[+ Passive 19 - Suppression Protocols +]--
	create_template("talent_tree_arb_pas_019_desc_en",
		{"loc_talent_adamant_hitting_multiple_gives_tdr_desc"}, {"en"},
			loc_text("{tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for {duration:%s} seconds after hitting {hits:%s} or more Enemies with an Attack.")),
			-- hits: 3, tdr: +20%, duration: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Протоколы подавления +]--
	create_template("talent_tree_arb_pas_019_desc_ru",
		{"loc_talent_adamant_hitting_multiple_gives_tdr_desc"}, {"ru"},
			loc_text("{tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." на {duration:%s} секунд после попадания атакой по {hits:%s} или более врагам.")),

	--[+ Passive 20 - Plasteel Plates +]--
	create_template("talent_tree_arb_pas_020_desc_en",
		{"loc_talent_adamant_plasteel_plates_desc"}, {"en"},
			loc_text("{toughness:%s} "..COLORS_KWords.Toughness_rgb..".")),
			-- toughness: +25, colors
	--[+ French +]--
	--[+ Russian - Пласталевые пластины +]-- руоф Пластины из пластали
	create_template("talent_tree_arb_pas_020_desc_ru",
		{"loc_talent_adamant_plasteel_plates_desc"}, {"ru"},
			loc_text("{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..".")),

	--[+ Passive 21 - Arbites Revelatum +]--
	create_template("talent_tree_arb_pas_021_desc_en",
		{"loc_talent_adamant_dodge_grants_damage_desc"}, {"en"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{damage:%s} "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds after Successful Dodge.")),
			-- damage: 15%, duration: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Арбитрес Ревелатум +]--
	create_template("talent_tree_arb_pas_021_desc_ru",
		{"loc_talent_adamant_dodge_grants_damage_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд при успешном уклонении.")),

	--[+ Passive 22 - Justified Measures +]--
	create_template("talent_tree_arb_pas_022_desc_en",
		{"loc_talent_adamant_stacking_damage_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." on Successful Attack.\n"
				..Arrow_right_.." {stacks:%s} Max Stacks.\n"
				..Arrow_right_.." Lasts {duration:%s} seconds.")),
			-- damage: +3%, stacks: 5, duration: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Оправданные меры +]--
	create_template("talent_tree_arb_pas_022_desc_ru",
		{"loc_talent_adamant_stacking_damage_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." при успешной атаке.\n"
				..Arrow_right_.." Максимум {stacks:%s} зарядов.\n"
				..Arrow_right_.." Длится {duration:%s} секунд.")),

	--[+ Passive 23 - Hold the Line +]--
	create_template("talent_tree_arb_pas_023_desc_en",
		{"loc_talent_adamant_staggers_reduce_damage_taken_alt_desc"}, {"en"},
			loc_text(COLORS_KWords.Staggering_rgb.." an Enemy grants {normal_stacks:%s} Stack of {damage_taken_multiplier:%s} "..COLORS_KWords.Damage_rgb.." Resistance, on the next Melee hit taken.\n"
				..Arrow_right_.." Stacking {max_stacks:%s} times.\n\n"
				..COLORS_KWords.Staggering_rgb.." Non-Human Sized Enemies grants {ogryn_stacks:%s} Stacks.")),
			-- normal_stacks: 1, damage_taken_multiplier: +3%, max_stacks: 5, ogryn_stacks: 5, colors
	--[+ French +]--
	--[+ Russian - Держи строй +]-- руоф Держать строй
	create_template("talent_tree_arb_pas_023_desc_ru",
		{"loc_talent_adamant_staggers_reduce_damage_taken_alt_desc"}, {"ru"},
			loc_text(COLORS_KWords_ru.Staggerr_rgb_ru.." врага даёт {normal_stacks:%s} заряд {damage_taken_multiplier:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." для следующего полученного удара в ближнем бою.\n"
				..COLORS_KWords_ru.Staggerr_rgb_ru.." врагов больше человеческого роста даёт {ogryn_stacks:%s} зарядов.\n"
				..Arrow_right_.." Суммируется максимум {max_stacks:%s} раз.\n"
				..Arrow_right_.." Длится {duration:%s} секунд.")),

	--[+ Passive 24 - Judicious Efficiency +]--
	create_template("talent_tree_arb_pas_024_desc_en",
		{"loc_talent_adamant_elite_special_kills_reload_speed_desc"}, {"en"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{reload_speed:%s} Reload Speed on next reload after Elite or Specialist Kill.")),
			-- reload_speed: 20%
	--[+ French +]--
	--[+ Russian - Судейская эффективность +]-- руоф Разумная эффективность
	create_template("talent_tree_arb_pas_024_desc_ru",
		{"loc_talent_adamant_elite_special_kills_reload_speed_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{reload_speed:%s} к скорости следующей перезарядки после убийства элитного врага или специалиста.")),

	--[+ Passive 25 - Rapid Movement +]--
	create_template("talent_tree_arb_pas_025_desc_en",
		{"loc_talent_adamant_sprinting_sliding_description"}, {"en"},
			loc_text("{speed:%s} Sprint Speed for {duration:%s} seconds after Sliding.\n"
				.."{stamina:%s} "..COLORS_KWords.Stamina_rgb.." after killing Enemies.\n"
				..Arrow_right_.." Cooldown {cd:%s} seconds.")),
			-- speed: +5%, duration: 5, stamina: +5%, cd: 0.75, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Быстрые движения +]-- руоф Быстрое перемещение
	create_template("talent_tree_arb_pas_025_desc_ru",
		{"loc_talent_adamant_sprinting_sliding_description"}, {"ru"},
			loc_text("{speed:%s} к скорости бега на {duration:%s} секунд после подката.\n"
				.."{stamina:%s} к "..COLORS_KWords_ru.Stamina_rgb_ru.." после убийства врага.\n"
				..Arrow_right_.." Восстанавливается {cd:%s} секунды.")),

	--[+ Passive 26 - Rebreather +]--
	create_template("talent_tree_arb_pas_026_desc_en",
		{"loc_talent_adamant_rebreather_desc"}, {"en"},
			loc_text("{corruption:%s} "..COLORS_KWords.Corruption_rgb.." Resistance and\n"
				.."{toxic_reduction:%s} Reduced "..COLORS_KWords.Damage_rgb.." taken from Toxic Gas.")),
			-- corruption: +20%, toxic_reduction: +75%, colors
	--[+ French +]--
	--[+ Russian - Ребризер +]-- руоф Противогаз
	create_template("talent_tree_arb_pas_026_desc_ru",
		{"loc_talent_adamant_rebreather_desc"}, {"ru"},
			loc_text("{corruption:%s} к сопротивлению "..COLORS_KWords_ru.Corruption_rgb_ru.." и\n"
				.."{toxic_reduction:%s} к снижению "..COLORS_KWords_ru.Dmg_a_rgb_ru..", получаемого от токсичного газа.")),

	--[+ Passive 27 - Cower, Miscreants! +]--
	create_template("talent_tree_arb_pas_027_desc_en",
		{"loc_talent_adamant_damage_vs_suppressed_desc"}, {"en"},
			loc_text("{damage_vs_suppressed:%s} "..COLORS_KWords.Damage_rgb.." vs Suppressed Enemies.")),
			-- damage_vs_suppressed: +25%, colors
	--[+ French +]--
	--[+ Russian - Трепещите, негодяи! +]--
	create_template("talent_tree_arb_pas_027_desc_ru",
		{"loc_talent_adamant_damage_vs_suppressed_desc"}, {"ru"},
			loc_text("{damage_vs_suppressed:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." подавленным врагам.")),

	--[+ Passive 28 - Target the Weak +]-- DOUBLE!
	-- create_template("talent_tree_arb_pas_028_desc_en",
		-- {"loc_talent_ogryn_big_bully_heavy_hits_new_desc"}, {"en"},
			-- loc_text("")),
	--[+ French +]--
	--[+ Russian - Цель - слабаки +]--

	--[+ Passive 29 - The Emperor's Fist +]--
	create_template("talent_tree_arb_pas_029_desc_en",
		{"loc_talent_adamant_first_melee_hit_increased_damage_desc"}, {"en"},
			loc_text("{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." and\n"
				.."{impact:%s} "..COLORS_KWords.Impact_rgb.." on first Enemy hit with each attack.")),
			-- damage: +15%, impact: +30%, colors
	--[+ French +]--
	--[+ Russian - Кулак Императора +]--
	create_template("talent_tree_arb_pas_029_desc_ru",
		{"loc_talent_adamant_first_melee_hit_increased_damage_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя и\n"
				.."{impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." первого врага в каждой атаке.")),

	--[+ Passive 30 - Zealous Dedication +]--
	create_template("talent_tree_arb_pas_030_desc_en",
		{"loc_talent_adamant_crit_chance_on_kill_desc"}, {"en"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{crit_chance:%s} "..COLORS_KWords.Crit_chance_r_rgb.." on Kill.\n"
				..Arrow_right_.." {max_stacks:%s} Stacks.\n"
				..Arrow_right_.." Lasts {duration:%s} seconds.")),
			-- crit_chance: 2%, max_stacks: 8, duration: 10, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Фанатичная преданность +]--
	create_template("talent_tree_arb_pas_030_desc_ru",
		{"loc_talent_adamant_crit_chance_on_kill_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." при убийстве.\n"
				..Arrow_right_.." До {max_stacks:%s} зарядов.\n"
				..Arrow_right_.." Длится {duration:%s} секунд.")),

	--[+ Passive 31 - Street Smarts +]--
	create_template("talent_tree_arb_pas_031_desc_en",
		{"loc_talent_adamant_dodge_improvement_desc"}, {"en"},
			loc_text("{dodge:%s} Effective Dodges and\n"
				.."{dodge_duration:%s} Dodge Duration.")),
			-- dodge: +1, dodge_duration: +25%
	--[+ French +]--
	--[+ Russian - Уличная хватка +]-- руоф Законы улицы
	create_template("talent_tree_arb_pas_031_desc_ru",
		{"loc_talent_adamant_dodge_improvement_desc"}, {"ru"},
			loc_text("{dodge:%s} эффективное уклонение и\n"
				.."{dodge_duration:%s} к длительности уклонения.")),

	--[+ Passive 32 - Drive them Back +]--
	create_template("talent_tree_arb_pas_032_desc_en",
		{"loc_talent_adamant_cleave_after_push_desc"}, {"en"},
			loc_text("{cleave:%s} "..COLORS_KWords.Cleave_rgb.." for {duration:%s} seconds on Push.")),
			-- cleave: 75%, duration: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Натиск +]-- руоф Отбрось их
	create_template("talent_tree_arb_pas_032_desc_ru",
		{"loc_talent_adamant_cleave_after_push_desc"}, {"ru"},
			loc_text("{cleave:%s} к "..COLORS_KWords_ru.Cleave_rgb_ru.." на {duration:%s} секунд после толчка.")),

	--[+ Passive 33 - Target Selection +]--
	create_template("talent_tree_arb_pas_033_desc_en",
		{"loc_talent_adamant_pinning_dog_elite_damage_description"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." vs Elites and Specialists after killing a Pounced Elite or Specialist.\n"
				..Arrow_right_.." Lasts {time:%s} seconds.")),
			-- damage: +15%, time: 8, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Выбор целей +]-- руоф Выбор цели
	create_template("talent_tree_arb_pas_033_desc_ru",
		{"loc_talent_adamant_pinning_dog_elite_damage_description"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." элитным врагам и специалистам после убийства такого врага, прижатого вашим кибермастифом.\n"
				..Arrow_right_.." Длится {time:%s} секунд.")),

	--[+ Passive 34 - Soulguilt Scan +]--
	create_template("talent_tree_arb_pas_034_desc_en",
		{"loc_talent_adamant_stacking_weakspot_strength_duration_desc"}, {"en"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{strength:%s} "..COLORS_KWords.Weakspot_rgb.." strength after "..COLORS_KWords.Weakspothits_rgb..".\n"
				..Arrow_right_.." {max_stacks:%s} Max Stacks.\n"
				..Arrow_right_.." Lasts {duration:%s} seconds.")),
			-- strength: 2%, max_stacks: 8, duration: 10, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Поиск виновных душ +]--
	create_template("talent_tree_arb_pas_034_desc_ru",
		{"loc_talent_adamant_stacking_weakspot_strength_duration_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{strength:%s} к силе атак в "..COLORS_KWords_ru.Weakspot_rgb_ru.." после попадания в "..COLORS_KWords_ru.Weakspothit_rgb_ru..".\n"
				..Arrow_right_.." Максимум {max_stacks:%s} зарядов.\n"
				..Arrow_right_.." Длится {duration:%s} секунд.")),

	--[+ Passive 35 - Priority Endowment +]--
	create_template("talent_tree_arb_pas_035_desc_en",
		{"loc_talent_adamant_clip_size_alt_desc"}, {"en"},
			loc_text("{clip_size:%s} Clip Size. Rounded Up.")),
			-- clip_size: +15%
	--[+ French +]--
	--[+ Russian - Приоритетное снабжение +]--
	create_template("talent_tree_arb_pas_035_desc_ru",
		{"loc_talent_adamant_clip_size_alt_desc"}, {"ru"},
			loc_text("{clip_size:%s} к размеру магазина. Округляется в большую сторону.")),

	--[+ Passive 36 - Target Priority +]--
	create_template("talent_tree_arb_pas_036_desc_en",
		{"loc_talent_adamant_increased_damage_to_high_health_desc"}, {"en"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{damage:%s} "..COLORS_KWords.Damage_rgb.." to Enemies above {health:%s} "..COLORS_KWords.Health_rgb..".")),
			-- damage: 15%, health: 75%, colors
	--[+ French +]--
	--[+ Russian - Приоритет целей +]--
	create_template("talent_tree_arb_pas_036_desc_ru",
		{"loc_talent_adamant_increased_damage_to_high_health_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." врагам со "..COLORS_KWords_ru.Healthx_rgb_ru.." выше {health:%s}.")),

	--[+ Passive 37 - Final Warning +]--
	create_template("talent_tree_arb_pas_037_desc_en",
		{"loc_talent_adamant_ranged_damage_on_melee_stagger_desc"}, {"en"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." on Melee "..COLORS_KWords.Staggering_rgb.." Hits.\n"
				..Arrow_right_.." Lasts {duration:%s} seconds.")),
			-- damage: 15%, duration: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Последнее предупреждение +]--
	create_template("talent_tree_arb_pas_037_desc_ru",
		{"loc_talent_adamant_ranged_damage_on_melee_stagger_desc"}, {"ru"},
			loc_text(COLORS_Numbers.n_plus_rgb.."{damage:%s} к дальнобойному "..COLORS_KWords_ru.Damage_rgb_ru.." при "..COLORS_KWords_ru.Stagger_i_rgb_ru.." врагов ударами в ближнем бою.\n"
				..Arrow_right_.." Длится {duration:%s} секунд.")),

	--[+ Passive 38 - Weight of the Lex +]--
	create_template("talent_tree_arb_pas_038_desc_en",
		{"loc_talent_adamant_heavy_attacks_increase_damage_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds after Heavy Melee Attack.")),
			-- damage: +15%, duration: 5, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Вес Закона +]--
	create_template("talent_tree_arb_pas_038_desc_ru",
		{"loc_talent_adamant_heavy_attacks_increase_damage_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд после заряженной атаки ближнего боя.")),

	--[+ Passive 39 - Serrated Maw +]--
	create_template("talent_tree_arb_pas_039_desc_en",
		{"loc_talent_adamant_dog_applies_brittleness_desc"}, {"en"},
			loc_text("{stacks:%s} Stacks of "..COLORS_KWords.Brittleness_rgb.." on attack applies by your Cyber-Mastiff.")),
			-- stacks: 6, colors
	--[+ French +]--
	--[+ Russian - Зазубренная пасть +]--
	create_template("talent_tree_arb_pas_039_desc_ru",
		{"loc_talent_adamant_dog_applies_brittleness_desc"}, {"ru"},
			loc_text("{stacks:%s} зарядов "..COLORS_KWords_ru.Brittleness_rgb_ru.." при атаке накладывает ваш кибермастиф.")),

	--[+ Passive 40 - Prosecution Blow +]--
	create_template("talent_tree_arb_pas_040_desc_en",
		{"loc_talent_adamant_crits_rend_alt_desc"}, {"en"},
			loc_text("{rending:%s} "..COLORS_KWords.Rending_rgb.." on Ranged "..COLORS_KWords.Crit_strike_rgb..".")),
			-- rending: +20%, colors
	--[+ French +]--
	--[+ Russian - Карающий удар +]-- руоф Обвиняющий удар
	create_template("talent_tree_arb_pas_040_desc_ru",
		{"loc_talent_adamant_crits_rend_alt_desc"}, {"ru"},
			loc_text("{rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru..".")),

	--[+ Passive 41 - March +]--
	create_template("talent_tree_arb_pas_041_desc_en",
		{"loc_talent_adamant_movement_speed_on_block_alt_desc"}, {"en"},
			loc_text("{movement_speed:%s} Movement Speed on Ranged Hit.\n"
				..Arrow_right_.." Lasts {duration:%s} seconds.")),
			-- movement_speed: +15%, duration: 3, s->seconds, colors
	--[+ French +]--
	--[+ Russian - Марш +]--
	create_template("talent_tree_arb_pas_041_desc_ru",
		{"loc_talent_adamant_movement_speed_on_block_alt_desc"}, {"ru"},
			loc_text("{movement_speed:%s} к скорости движения после любой дальнобойной атаки.\n"
				..Arrow_right_.." Длится {duration:%s} секунды.")),

	--[+ Passive 42 - Monstrosity Hunter +]--
	create_template("talent_tree_arb_pas_042_desc_en",
		{"loc_talent_adamant_monster_hunter_desc"}, {"en"},
			loc_text("{damage:%s} "..COLORS_KWords.Damage_rgb.." to Ogryns and Monstrosities.")),
			-- damage: +20%, colors
	--[+ French +]--
	--[+ Russian - Охотник на монстров +]-- руоф Охота на чудовищ
	create_template("talent_tree_arb_pas_042_desc_ru",
		{"loc_talent_adamant_monster_hunter_desc"}, {"ru"},
			loc_text("{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." огринам и монстрам.")),

	--[+ Passive 43 - Strike Down +]--
	create_template("talent_tree_arb_pas_043_desc_en",
		{"loc_talent_adamant_melee_attacks_on_staggered_rend_alt_desc"}, {"en"},
			loc_text("{rending:%s} Melee "..COLORS_KWords.Rending_rgb.." on "..COLORS_KWords.Staggered_rgb.." Enemies.")),
			-- rending: +15%, colors
	--[+ French +]--
	--[+ Russian - Сокрушительный удар +]-- руоф Сбивающий удар
	create_template("talent_tree_arb_pas_043_desc_ru",
		{"loc_talent_adamant_melee_attacks_on_staggered_rend_alt_desc"}, {"ru"},
			loc_text("{rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." в ближнем бою "..COLORS_KWords_ru.Stuns_rgb_ru.." врагам.")),

	--[+ Passive 44 - True Grit +]--
	create_template("talent_tree_arb_pas_044_desc_en",
		{"loc_talent_adamant_limit_dmg_taken_from_hits_desc"}, {"en"},
			loc_text("Limit the maximum "..COLORS_KWords.Health_rgb.." "..COLORS_KWords.Damage_rgb.." Taken from an Attack to {limit:%s}.")),
			-- limit: 50, colors
	--[+ French +]--
	--[+ Russian - Настоящая закалка +]-- руоф Истинная выдержка
	create_template("talent_tree_arb_pas_044_desc_ru",
		{"loc_talent_adamant_limit_dmg_taken_from_hits_desc"}, {"ru"},
			loc_text("Максимальный получаемый "..COLORS_KWords_ru.Dmg_rgb_ru.." "..COLORS_KWords_ru.Health_rgb_ru.." от атак снижается до {limit:%s}.")),


-- FOR TESTS ONLY!!!
-- create_template("weap_testum00", {"loc_talent_adamant_limit_dmg_taken_from_hits_desc"}, {"en"}, function(locale, value) return string.gsub(value, "{", "(") end),
-- create_template("weap_testum01", {"loc_talent_adamant_pinning_dog_elite_damage_description"}, {"en"}, function(locale, value) return string.gsub(value, "{", "(") end),
-- FOR TESTS ONLY!!!
}



			-- ============ DO NOT DO ANYTHING BELOW! ============ --

--[+ Reload localization templates when the mod is enabled or disabled +]--
function mod.on_enabled()
	if WTL then
		WTL.reload_templates()
	end
end

function mod.on_disabled()
	if WTL then
		WTL.reload_templates()
	end
end

--[+ Return the localization templates +]--
return localization_templates
