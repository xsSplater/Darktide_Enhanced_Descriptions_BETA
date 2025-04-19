---@diagnostic disable: undefined-global
-- Thanks to kuli and his Steam guides. Talents:
-- Psyker,	02.04.25, https://steamcommunity.com/sharedfiles/filedetails/?id=3094028505

-- Zealot,	31.10.24, https://steamcommunity.com/sharedfiles/filedetails/?id=3088553235
-- Ogryn,	31.10.24, https://steamcommunity.com/sharedfiles/filedetails/?id=3094034467
-- Veteran,	31.10.24, https://steamcommunity.com/sharedfiles/filedetails/?id=3094038976

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
-- COLORS_KWords_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/COLORS_KWords_tw")
	--[+ Simplified Chinese +]--
-- COLORS_KWords_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/COLORS_KWords_zh_cn")


--[+ Function to create a localization template +]--
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end

--[+ Define localization templates +]--
local localization_templates = {
-- Duplicate the line and translate. For example:
--		create_template("weap_bb0_ext_en", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." "..COLORS_KWords.Damage_rgb.." vs Flak Armoured Enemies" end),
--		create_template("weap_bb0_ext_YOURLANGUAGE", {"loc_trait_melee_common_wield_increased_armored_damage_desc"}, {"YOURLANGUAGE"}, function(locale, value) return COLORS_Numbers.p_dmg_var_rgb.." к "..COLORS_KWords.Damage_rgb_YOURLANGUAGE.." против врагов в противоосколочной броне." end), <- Don't forget the comma at the end!


--[+ ++TALENT TREE++ +]--
--[+ +MAIN+ +]--
	--[+ Passive +]--
	-- create_template("talent_tree_main_000_en", {"loc_glossary_talent_default"}, {"en"}, function(locale, value) return "Passive" end),
	--[+ Russian +]-- Пассивный -- руоф Пассив.
	create_template("talent_tree_main_000_ru", {"loc_glossary_talent_default"}, {"ru"}, function(locale, value) return "Пассивный" end),

	--[+ Blitz +]--
	-- create_template("talent_tree_main_001_en", {"loc_glossary_term_tactical"}, {"en"}, function(locale, value) return "Blitz" end),
	--[+ Russian +]--
	-- create_template("talent_tree_main_001_ru", {"loc_glossary_term_tactical"}, {"ru"}, function(locale, value) return "Блиц" end),

	--[+ Aura +]--
	-- create_template("talent_tree_main_002_en", {"loc_glossary_term_aura"}, {"en"}, function(locale, value) return "Aura" end),
	--[+ Russian +]--
	-- create_template("talent_tree_main_002_ru", {"loc_glossary_term_aura"}, {"ru"}, function(locale, value) return "Аура" end),

	--[+ Ability +]--
	-- create_template("talent_tree_main_003_en", {"loc_glossary_term_class_ability"}, {"en"}, function(locale, value) return "Ability" end),
	--[+ Russian +]--
	-- create_template("talent_tree_main_003_ru", {"loc_glossary_term_class_ability"}, {"ru"}, function(locale, value) return "Способность" end),

	--[+ Keystone  +]--
	-- create_template("talent_tree_main_004_en", {"loc_glossary_talent_keystone"}, {"en"}, function(locale, value) return "Keystone" end),
	--[+ Russian +]--
	-- create_template("talent_tree_main_004_ru", {"loc_glossary_talent_keystone"}, {"ru"}, function(locale, value) return "Ключевой талант" end),

	--[+ (Lock) Locked +]--
	-- create_template("talent_tree_main_005_en", {"loc_talent_mechanic_locked"}, {"en"}, function(locale, value) return "Locked" end),
	--[+ Russian +]-- Закрыт -- руоф Заблокир.
	create_template("talent_tree_main_005_ru", {"loc_talent_mechanic_locked"}, {"ru"}, function(locale, value) return "Закрыт" end),

	--[+ [LMB] Activate +]--
	-- create_template("talent_tree_main_006_en", {"loc_talent_menu_tooltip_button_hint_first_level"}, {"en"}, function(locale, value) return "Activate" end),
	--[+ Russian +]-- Включить -- руоф Актив.
	create_template("talent_tree_main_006_ru", {"loc_talent_menu_tooltip_button_hint_first_level"}, {"ru"}, function(locale, value) return "Включить" end),

	--[+ [RMB] Deactivate +]--
	-- create_template("talent_tree_main_007_en", {"loc_talent_menu_tooltip_button_hint_remove_level_first"}, {"en"}, function(locale, value) return "Deactivate" end),
	--[+ Russian +]--
	-- create_template("talent_tree_main_007_ru", {"loc_talent_menu_tooltip_button_hint_remove_level_first"}, {"ru"}, function(locale, value) return "Отключить" end),

	--[+ [V] View full build  +]--
	-- create_template("talent_tree_main_008_en", {"loc_alias_talent_builder_view_hotkey_summary"}, {"en"}, function(locale, value) return "View full build" end),
	--[+ Russian +]-- Посмотреть весь билд -- руоф Осмотреть полную сборку
	create_template("talent_tree_main_008_ru", {"loc_alias_talent_builder_view_hotkey_summary"}, {"ru"}, function(locale, value) return "Посмотреть весь билд" end),
	
	--[+ Full build +]--
	-- create_template("talent_tree_main_009_en", {"loc_alias_talent_builder_view_popup_title_summary"}, {"en"}, function(locale, value) return "Full build" end),
	--[+ Russian +]-- Весь билд -- руоф Полная сборка
	-- create_template("talent_tree_main_009_ru", {"loc_alias_talent_builder_view_popup_title_summary"}, {"ru"}, function(locale, value) return "Весь билд" end),

--[+ +MODIFIERS+ +]--
	--[+ Operative Modifier +]--
	-- create_template("talent_tree_main_mods_000_en", {"loc_glossary_talent_stat"}, {"en"}, function(locale, value) return "Operative Modifier" end),
	--[+ Russian +]--
	-- create_template("talent_tree_main_mods_000_ru", {"loc_glossary_talent_stat"}, {"ru"}, function(locale, value) return "Модификатор оперативника" end),

	--[+ Ability Modifier +]--
	-- create_template("talent_tree_main_mods_001_en", {"loc_glossary_talent_ability_modifier"}, {"en"}, function(locale, value) return "Ability Modifier" end),
	--[+ Russian +]--
	-- create_template("talent_tree_main_mods_001_ru", {"loc_glossary_talent_ability_modifier"}, {"ru"}, function(locale, value) return "Модификатор способности" end),

	--[+ Keystone Modifier +]--
	-- create_template("talent_tree_main_mods_002_en", {"loc_glossary_talent_keystone_modifier"}, {"en"}, function(locale, value) return "Keystone Modifier" end),
	--[+ Russian +]-- Модификатор ключевого таланта -- руоф Модификатор краеугольного камня
	create_template("talent_tree_main_mods_002_ru", {"loc_glossary_talent_keystone_modifier"}, {"ru"}, function(locale, value) return "Модификатор ключевого таланта" end),

--[+ +SELECTING THIS...+ +]--
	-- create_template("talent_tree_main_sel_000_en", {"loc_talent_mechanic_exclusive_tactical"}, {"en"}, function(locale, value) return "Selecting this Blitz locks all other Blitzes." end),
	--[+ Russian +]-- Выбор этого Блица закрывает все остальные Блицы. -- руоф Выбор этой Блиц-способности блокирует все остальные Блицы.
	create_template("talent_tree_main_sel_000_ru", {"loc_talent_mechanic_exclusive_tactical"}, {"ru"}, function(locale, value) return "Выбор этого Блица закрывает все остальные Блицы." end),

	-- create_template("talent_tree_main_sel_001_en", {"loc_talent_mechanic_exclusive_aura"}, {"en"}, function(locale, value) return "Selecting this Aura locks all other Auras." end),
	--[+ Russian +]-- Выбор этой Ауры закрывает все остальные Ауры. -- руоф Выбор этой Блиц-способности блокирует все остальные Блицы.
	create_template("talent_tree_main_sel_001_ru", {"loc_talent_mechanic_exclusive_aura"}, {"ru"}, function(locale, value) return "Выбор этой Ауры закрывает все остальные Ауры." end),

	-- create_template("talent_tree_main_sel_002_en", {"loc_talent_mechanic_exclusive_ability"}, {"en"}, function(locale, value) return "Selecting this Ability locks all other Abilities." end),
	--[+ Russian +]-- Выбор этой Способности закрывает все остальные Способности. -- руоф Выбор этой способности блокирует все остальные способности.
	create_template("talent_tree_main_sel_002_ru", {"loc_talent_mechanic_exclusive_ability"}, {"ru"}, function(locale, value) return "Выбор этой Способности закрывает все остальные Способности." end),

	-- create_template("talent_tree_main_sel_003_en", {"loc_talent_mechanic_mutually_exclusive"}, {"en"}, function(locale, value) return "Selecting this Talent locks all other Talents." end),
	--[+ Russian +]-- Выбор этого Таланта закрывает другие Таланты. -- руоф Этот талант блокирует некоторые другие таланты.
	create_template("talent_tree_main_sel_003_ru", {"loc_talent_mechanic_mutually_exclusive"}, {"ru"}, function(locale, value) return "Выбор этого Таланта закрывает другие Таланты." end),

	-- create_template("talent_tree_main_sel_004_en", {"loc_talent_mechanic_exclusive_keystone"}, {"en"}, function(locale, value) return "Selecting this Keystone locks all other Keystones." end),
	--[+ Russian +]-- Выбор этого Ключевого таланта закрывает все остальные Ключевые таланты. -- руоф Выбор этого краеугольного камня блокирует все остальные краеугольное камни.
	create_template("talent_tree_main_sel_004_ru", {"loc_talent_mechanic_exclusive_keystone"}, {"ru"}, function(locale, value) return "Выбор этого Ключевого таланта закрывает все остальные Ключевые таланты." end),
	--[+ Russian +]--


--[+ +NODES - УЗЛЫ+ +]--
	--[+ Critical Chance Boost +]--
	create_template("talent_tree_oper_mod_006_desc_en", {"loc_talent_crit_chance_low_desc"}, {"en"}, function(locale, value) return "{crit_chance:%s} "..COLORS_KWords.Crit_hit_chance_rgb.."."..TALENTS_Enh_desc_nodes.ED_CritChncBst_rgb end), -- crit_chance:+5% -- Psyker, Veteran
	--[+ French +]--
	create_template("talent_tree_oper_mod_006_desc_fr", {"loc_talent_crit_chance_low_desc"}, {"fr"}, function(locale, value) return "{crit_chance:%s} "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_CritChncBst_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_006_desc_ru", {"loc_talent_crit_chance_low_desc"}, {"ru"}, function(locale, value) return "{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.."."..TALENTS_Enh_desc_nodes_ru.ED_CritChncBst_rgb_ru end),

	--[+ Health Boost Low +]--
	create_template("talent_tree_oper_mod_005_l_desc_en", {"loc_talent_health_low_desc"}, {"en"}, function(locale, value) return "{health:%s} "..COLORS_KWords.Health_rgb.."."..TALENTS_Enh_desc_nodes.ED_HeathBst_L_rgb end), -- health:+5% -- Ogryn, Veteran
	--[+ French +]--
	create_template("talent_tree_oper_mod_005_l_desc_fr", {"loc_talent_health_low_desc"}, {"fr"}, function(locale, value) return "{health:%s} "..COLORS_KWords_fr.Health_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_HeathBst_L_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_005_l_desc_ru", {"loc_talent_health_low_desc"}, {"ru"}, function(locale, value) return "{health:%s} к "..COLORS_KWords_ru.Health_rgb_ru.."."..TALENTS_Enh_desc_nodes_ru.ED_HeathBst_L_rgb_ru end),

	--[+ Health Boost Medium +]--
	create_template("talent_tree_oper_mod_005_m_desc_en", {"loc_talent_health_medium_desc"}, {"en"}, function(locale, value) return "{health:%s} "..COLORS_KWords.Health_rgb.."."..TALENTS_Enh_desc_nodes.ED_HeathBst_M_rgb end), -- health:+10% -- Psyker, Ogryn, Zealot
	--[+ French +]--
	create_template("talent_tree_oper_mod_005_m_desc_fr", {"loc_talent_health_medium_desc"}, {"fr"}, function(locale, value) return "{health:%s} "..COLORS_KWords_fr.Health_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_HeathBst_M_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_005_m_desc_ru", {"loc_talent_health_medium_desc"}, {"ru"}, function(locale, value) return "{health:%s} к "..COLORS_KWords_ru.Health_rgb_ru.."."..TALENTS_Enh_desc_nodes_ru.ED_HeathBst_M_rgb_ru end),

	--[+ Heavy Melee Damage Boost Low +]--
	create_template("talent_tree_oper_mod_014_l_desc_en", {"loc_talent_melee_heavy_damage_low_desc"}, {"en"}, function(locale, value) return "{melee_heavy_damage:%s} Heavy Melee "..COLORS_KWords.Damage_rgb.."."..TALENTS_Enh_desc_nodes.ED_HMeleeDmgBst_LM_rgb end), -- melee_heavy_damage:+5% -- Ogryn
	--[+ French +]--
	create_template("talent_tree_oper_mod_014_l_desc_fr", {"loc_talent_melee_heavy_damage_low_desc"}, {"fr"}, function(locale, value) return "{melee_heavy_damage:%s} Attaque Puissante "..COLORS_KWords_fr.Damage_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_HMeleeDmgBst_LM_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_014_l_desc_ru", {"loc_talent_melee_heavy_damage_low_desc"}, {"ru"}, function(locale, value) return "{melee_heavy_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." тяжёлых атак ближнего боя."..TALENTS_Enh_desc_nodes_ru.ED_HMeleeDmgBst_LM_rgb_ru end),

	--[+ Heavy Melee Damage Boost Medium +]--
	create_template("talent_tree_oper_mod_014_m_desc_en", {"loc_talent_melee_heavy_damage_medium_desc"}, {"en"}, function(locale, value) return "{melee_heavy_damage:%s} Heavy Melee "..COLORS_KWords.Damage_rgb.."."..TALENTS_Enh_desc_nodes.ED_HMeleeDmgBst_LM_rgb end), -- melee_heavy_damage:+10% -- Ogryn
	--[+ French +]--
	create_template("talent_tree_oper_mod_014_m_desc_fr", {"loc_talent_melee_heavy_damage_medium_desc"}, {"fr"}, function(locale, value) return "{melee_heavy_damage:%s} Attaque Puissante "..COLORS_KWords_fr.Damage_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_HMeleeDmgBst_LM_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_014_m_desc_ru", {"loc_talent_melee_heavy_damage_medium_desc"}, {"ru"}, function(locale, value) return "{melee_heavy_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." тяжёлых атак ближнего боя."..TALENTS_Enh_desc_nodes_ru.ED_HMeleeDmgBst_LM_rgb_ru end),

	--[+ Inspiring Presence +]--
	create_template("talent_tree_oper_mod_003_desc_en", {"loc_talent_coherency_regen_low_desc"}, {"en"}, function(locale, value) return "{coherency_regen:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment for you and Allies in "..COLORS_KWords.Coherency_rgb.."."..TALENTS_Enh_desc_nodes.ED_InspiringP_rgb end), -- coherency_regen:+10% -- Veteran
	--[+ French +]--
	create_template("talent_tree_oper_mod_003_desc_fr", {"loc_talent_coherency_regen_low_desc"}, {"fr"}, function(locale, value) return "{coherency_regen:%s} Vitesse de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour vous et vos alliés en syntonie."..TALENTS_Enh_desc_nodes_fr.ED_InspiringP_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_003_desc_ru", {"loc_talent_coherency_regen_low_desc"}, {"ru"}, function(locale, value) return "{coherency_regen:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восполняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_nodes_ru.ED_InspiringP_rgb_ru end),

	--[+ Melee Damage Boost Low +]--
	create_template("talent_tree_oper_mod_008_desc_en", {"loc_talent_melee_damage_boost_low_desc"}, {"en"}, function(locale, value) return "{melee_damage:%s} Melee "..COLORS_KWords.Damage_rgb.."."..TALENTS_Enh_desc_nodes.ED_MeleeDmgBst_L_M_rgb end), -- melee_damage:+5% -- Ogryn, Veteran, Zealot
	--[+ French +]--
	create_template("talent_tree_oper_mod_008_desc_fr", {"loc_talent_melee_damage_boost_low_desc"}, {"fr"}, function(locale, value) return "{melee_damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée."..TALENTS_Enh_desc_nodes_fr.ED_MeleeDmgBst_L_M_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_008_desc_ru", {"loc_talent_melee_damage_boost_low_desc"}, {"ru"}, function(locale, value) return "{melee_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." атак ближнего боя."..TALENTS_Enh_desc_nodes_ru.ED_MeleeDmgBst_L_M_rgb_ru end),

	--[+ Melee Damage Boost Medium +]--
	create_template("talent_tree_oper_mod_008_desc_en", {"loc_talent_melee_damage_boost_medium_desc"}, {"en"}, function(locale, value) return "{melee_damage:%s} Melee "..COLORS_KWords.Damage_rgb.."."..TALENTS_Enh_desc_nodes.ED_MeleeDmgBst_L_M_rgb end), -- melee_damage:+10% -- Veteran
	--[+ French +]--
	create_template("talent_tree_oper_mod_008_desc_fr", {"loc_talent_melee_damage_boost_medium_desc"}, {"fr"}, function(locale, value) return "{melee_damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." de mélée."..TALENTS_Enh_desc_nodes_fr.ED_MeleeDmgBst_L_M_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_008_desc_ru", {"loc_talent_melee_damage_boost_medium_desc"}, {"ru"}, function(locale, value) return "{melee_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." атак ближнего боя."..TALENTS_Enh_desc_nodes_ru.ED_MeleeDmgBst_L_M_rgb_ru end),

	--[+ Movement Speed Boost +]--
	create_template("talent_tree_oper_mod_007_desc_en", {"loc_talent_movement_speed_low_desc"}, {"en"}, function(locale, value) return "{movement_speed:%s} Movement Speed."..TALENTS_Enh_desc_nodes.ED_MoveSpdBst_rgb end), -- movement_speed:+5%. -- Psyker, Veteran, Zealot
	--[+ French +]--
	create_template("talent_tree_oper_mod_007_desc_fr", {"loc_talent_movement_speed_low_desc"}, {"fr"}, function(locale, value) return "{movement_speed:%s} Vitesse de déplacement."..TALENTS_Enh_desc_nodes_fr.ED_MoveSpdBst_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_007_desc_ru", {"loc_talent_movement_speed_low_desc"}, {"ru"}, function(locale, value) return "{movement_speed:%s} к скорости движения."..TALENTS_Enh_desc_nodes_ru.ED_MoveSpdBst_rgb_ru end),

	--[+ Peril Resistance +]--
	create_template("talent_tree_oper_mod_001_desc_en", {"loc_talent_warp_charge_low_desc"}, {"en"}, function(locale, value) return "{warp_charge:%s} "..COLORS_KWords.Peril_rgb.." Generation."..TALENTS_Enh_desc_nodes.ED_PerilRes_rgb end), -- warp_charge:-5% -- Psyker
	--[+ French +]--
	create_template("talent_tree_oper_mod_001_desc_fr", {"loc_talent_warp_charge_low_desc"}, {"fr"}, function(locale, value) return "{warp_charge:%s} Génération de "..COLORS_KWords_fr.Peril_rgb_fr.." ."..TALENTS_Enh_desc_nodes_fr.ED_PerilRes_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_001_desc_ru", {"loc_talent_warp_charge_low_desc"}, {"ru"}, function(locale, value) return "{warp_charge:%s} генерации "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_nodes_ru.ED_PerilRes_rgb_ru end),

	--[+ Ranged Damage Boost Low +]--
	create_template("talent_tree_oper_mod_004l_desc_en", {"loc_talent_ranged_damage_low_desc"}, {"en"}, function(locale, value) return "{ranged_damage:%s} Ranged "..COLORS_KWords.Damage_rgb.."."..TALENTS_Enh_desc_nodes.ED_RangDmgBst_rgb end), -- ranged_damage:+5% -- Psyker, Ogryn, Veteran
	--[+ French +]--
	create_template("talent_tree_oper_mod_004l_desc_fr", {"loc_talent_ranged_damage_low_desc"}, {"fr"}, function(locale, value) return "{ranged_damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." de distance."..TALENTS_Enh_desc_nodes_fr.ED_RangDmgBst_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_004l_desc_ru", {"loc_talent_ranged_damage_low_desc"}, {"ru"}, function(locale, value) return "{ranged_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." дальнего боя."..TALENTS_Enh_desc_nodes_ru.ED_RangDmgBst_rgb_ru end),

	--[+ Ranged Damage Boost Medium +]--
	-- create_template("talent_tree_oper_mod_004m_desc_en", {"loc_talent_ranged_damage_medium_desc"}, {"en"}, function(locale, value) return "{ranged_damage:%s} Ranged "..COLORS_KWords.Damage_rgb.."."..TALENTS_Enh_desc_nodes.ED_RangDmgBst_rgb end), -- ranged_damage:+5% -- Psyker, Ogryn, Veteran
	--[+ French +]--
	-- create_template("talent_tree_oper_mod_004m_desc_fr", {"loc_talent_ranged_damage_medium_desc"}, {"fr"}, function(locale, value) return "{ranged_damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." de distance."..TALENTS_Enh_desc_nodes_fr.ED_RangDmgBst_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_004m_desc_ru", {"loc_talent_ranged_damage_medium_desc"}, {"ru"}, function(locale, value) return "{ranged_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." дальнего боя."..TALENTS_Enh_desc_nodes_ru.ED_RangDmgBst_rgb_ru end),

	--[+ Reload Boost +]--
	create_template("talent_tree_oper_mod_011_desc_en", {"loc_talent_reload_speed_low_desc"}, {"en"}, function(locale, value) return "{reload_speed:%s} Reload Speed."..TALENTS_Enh_desc_nodes.ED_ReloadBst_rgb end), -- reload_speed: +5% -- Ogryn, Veteran
	--[+ French +]--
	create_template("talent_tree_oper_mod_011_desc_fr", {"loc_talent_reload_speed_low_desc"}, {"fr"}, function(locale, value) return "{reload_speed:%s} vitesse de rechargement."..TALENTS_Enh_desc_nodes_fr.ED_ReloadBst_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_011_desc_ru", {"loc_talent_reload_speed_low_desc"}, {"ru"}, function(locale, value) return "{reload_speed:%s} к скорости перезарядки."..TALENTS_Enh_desc_nodes_ru.ED_ReloadBst_rgb_ru end),

	--[+ Rending Boost +]--
	create_template("talent_tree_oper_mod_013_desc_en", {"loc_talent_armor_pen_low_desc"}, {"en"}, function(locale, value) return "{rending:%s} "..COLORS_KWords.Rending_rgb.."."..TALENTS_Enh_desc_nodes.ED_RendingBst_rgb end), -- rending: +5% -- Ogryn
	--[+ French +]--
	create_template("talent_tree_oper_mod_013_desc_fr", {"loc_talent_armor_pen_low_desc"}, {"fr"}, function(locale, value) return "{rending:%s} "..COLORS_KWords_fr.Rending_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_RendingBst_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_013_desc_ru", {"loc_talent_armor_pen_low_desc"}, {"ru"}, function(locale, value) return "{rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.."."..TALENTS_Enh_desc_nodes_ru.ED_RendingBst_rgb_ru end),

	--[+ Stamina Boost +]--
	create_template("talent_tree_oper_mod_009_desc_en", {"loc_talent_stamina_low_desc"}, {"en"}, function(locale, value) return "{stamina:%s} "..COLORS_KWords.Stamina_rgb.."."..TALENTS_Enh_desc_nodes.ED_StaminaBst_rgb end), -- stamina: +1 -- Veteran, Zealot
	--[+ French +]--
	create_template("talent_tree_oper_mod_009_desc_fr", {"loc_talent_stamina_low_desc"}, {"fr"}, function(locale, value) return "{stamina:%s} "..COLORS_KWords_fr.Stamina_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_StaminaBst_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_009_desc_ru", {"loc_talent_stamina_low_desc"}, {"ru"}, function(locale, value) return "{stamina:%s} к "..COLORS_KWords_ru.Stamina_rgb_ru.."."..TALENTS_Enh_desc_nodes_ru.ED_StaminaBst_rgb_ru end),

	--[+ Stamina Regeneration Boost +]--
	create_template("talent_tree_oper_mod_012_desc_en", {"loc_talent_stamina_regen_delay_desc"}, {"en"}, function(locale, value) return "{duration:%s} seconds "..COLORS_KWords.Stamina_rgb.." Regeneration Delay Reduction."..TALENTS_Enh_desc_nodes.ED_StamRegenBst_rgb end), -- duration: 0.25 -- Veteran
	--[+ French +]--
	create_template("talent_tree_oper_mod_012_desc_fr", {"loc_talent_stamina_regen_delay_desc"}, {"fr"}, function(locale, value) return "{duration:%s} secondes de réduction du délai de régénération d'"..COLORS_KWords_fr.Stamina_rgb_fr.." ."..TALENTS_Enh_desc_nodes_fr.ED_StamRegenBst_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_012_desc_ru", {"loc_talent_stamina_regen_delay_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.n_minus_rgb.."{duration:%s} секунд от задержки восстановления "..COLORS_KWords_ru.Stamina_rgb_ru.."."..TALENTS_Enh_desc_nodes_ru.ED_StamRegenBst_rgb_ru end),

	--[+ Suppression Boost +]--
	create_template("talent_tree_oper_mod_010_desc_en", {"loc_talent_suppression_low_desc"}, {"en"}, function(locale, value) return "{suppression:%s} Suppression Dealt to enemies."..TALENTS_Enh_desc_nodes.ED_SuppressionBst_rgb end), -- suppression: +25% -- Ogryn, Veteran, Zealot
	--[+ French +]--
	create_template("talent_tree_oper_mod_010_desc_fr", {"loc_talent_suppression_low_desc"}, {"fr"}, function(locale, value) return "{suppression:%s} de suppression infligé."..TALENTS_Enh_desc_nodes_fr.ED_SuppressionBst_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_010_desc_ru", {"loc_talent_suppression_low_desc"}, {"ru"}, function(locale, value) return "{suppression:%s} к подавлению, применяемому к врагам."..TALENTS_Enh_desc_nodes_ru.ED_SuppressionBst_rgb_ru end),

	--[+ Toughness Boost Low +]--
	create_template("talent_tree_oper_mod_000_l_desc_en", {"loc_talent_toughness_boost_low_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.."."..TALENTS_Enh_desc_nodes.ED_TghnsBst_L_rgb end), -- toughness: +15% -- Psyker, Ogryn, Veteran, Zealot
	--[+ French +]--
	create_template("talent_tree_oper_mod_000_l_desc_fr", {"loc_talent_toughness_boost_low_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_fr.Toughness_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_TghnsBst_L_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_000_l_desc_ru", {"loc_talent_toughness_boost_low_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} к "..COLORS_KWords_ru.Toughness_rgb_ru.."."..TALENTS_Enh_desc_nodes_ru.ED_TghnsBst_L_rgb_ru end),

	--[+ Toughness Boost Medium +]--
	create_template("talent_tree_oper_mod_000_m_desc_en", {"loc_talent_toughness_boost_medium_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.."."..TALENTS_Enh_desc_nodes.ED_TghnsBst_M_rgb end), -- toughness:+25% -- Ogryn, Veteran
	--[+ French +]--
	create_template("talent_tree_oper_mod_000_m_desc_fr", {"loc_talent_toughness_boost_medium_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_fr.Toughness_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_TghnsBst_M_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_000_m_desc_ru", {"loc_talent_toughness_boost_medium_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} к "..COLORS_KWords_ru.Toughness_rgb_ru.."."..TALENTS_Enh_desc_nodes_ru.ED_TghnsBst_M_rgb_ru end),

	--[+ Toughness Damage Reduction Low +]--
	create_template("talent_tree_oper_mod_002_l_desc_en", {"loc_talent_toughness_damage_reduction_low_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.."."..TALENTS_Enh_desc_nodes.ED_TghnsDmgRed_LM_rgb end), -- toughness:+5% -- Psyker, Veteran, Zealot
	--[+ French +]--
	create_template("talent_tree_oper_mod_002_l_desc_fr", {"loc_talent_toughness_damage_reduction_low_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_TghnsDmgRed_LM_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_002_l_desc_ru", {"loc_talent_toughness_damage_reduction_low_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.."."..TALENTS_Enh_desc_nodes_ru.ED_TghnsDmgRed_LM_rgb_ru end),

	--[+ Toughness Damage Reduction Medium +]--
	create_template("talent_tree_oper_mod_002_m_desc_en",{"loc_talent_toughness_damage_reduction_medium_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.."."..TALENTS_Enh_desc_nodes.ED_TghnsDmgRed_LM_rgb end), -- toughness:+10% -- Ogryn, Veteran
	--[+ French +]--
	create_template("talent_tree_oper_mod_002_m_desc_fr",{"loc_talent_toughness_damage_reduction_medium_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.."."..TALENTS_Enh_desc_nodes_fr.ED_TghnsDmgRed_LM_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_oper_mod_002_m_desc_en",{"loc_talent_toughness_damage_reduction_medium_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.."."..TALENTS_Enh_desc_nodes_ru.ED_TghnsDmgRed_LM_rgb_ru end),


--[+ ++PSYKER - ПСАЙКЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ Blitz 0 - Brain Burst +]--
	create_template("talent_tree_psy_blitz0_000_desc_en", {"loc_ability_psyker_smite_description_new"}, {"en"}, function(locale, value) return "Charge up your Psychic Power and release it to deal high "..COLORS_KWords.Damage_rgb.." to a Single Enemy. Effective against Flak and Carapace Armoured Enemies. Higher "..COLORS_KWords.Damage_rgb.." against Maniac and Unyielding."..TALENTS_Enh_desc.ED_PSY_Blitz_0_rgb end), -- & -> and -- colors
	--[+ French +]--!!!
	create_template("talent_tree_psy_blitz0_000_desc_fr", {"loc_ability_psyker_smite_description_new"}, {"fr"}, function(locale, value) return "Chargez votre pouvoir Psychique et relachez-le pour infliger de gros "..COLORS_KWords_fr.Damage_rgb_fr.." à un ennemi unique. Efficace contre les ennemies en armure Légère et Carapace. Dégâts plus élevés contre Maniaques et Implacables."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_0_rgb_fr end),
	--[+ Russian +]-- Взрыв мозга  -- руоф Взрыв разума
	create_template("talent_tree_psy_blitz0_000_desc_ru", {"loc_ability_psyker_smite_description_new"}, {"ru"}, function(locale, value) return "Зарядите свою психическую мощь и высвободите её, чтобы нанести высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." одному врагу. Эффективно против врагов в противоосколочной и панцирной броне. Высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." против маньяков и несгибаемых."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_0_rgb_ru end),

	--[+ Blitz 1 - Brain Rupture +]--
	create_template("talent_tree_psy_blitz1_000_desc_en", {"loc_talent_psyker_brain_burst_improved_description"}, {"en"}, function(locale, value) return "Charge up your Psychic Power and release it to deal immense "..COLORS_KWords.Damage_rgb.." to a Single Enemy. Effective against Flak and Carapace Armoured Enemies. Higher "..COLORS_KWords.Damage_rgb.." against Maniac and Unyielding.\n\nThis is an augmented version of {talent_old:%s} dealing {damage:%s} "..COLORS_KWords.Damage_rgb.."."..TALENTS_Enh_desc.ED_PSY_Blitz_1_rgb end), -- talent_old: Brain Burst, damage: +50% -- & -> and -- colors
	--[+ French +]--!!!
	create_template("talent_tree_psy_blitz1_000_desc_fr", {"loc_talent_psyker_brain_burst_improved_description"}, {"fr"}, function(locale, value) return "Chargez votre pouvoir Psychique et relachez-le pour infliger d'immense "..COLORS_KWords_fr.Damage_rgb_fr.." à un ennemi unique. Efficace contre les ennemies en armure Légère et Carapace. Dégâts plus élevés contre les Maniaques et les Implacables.\n\nCeci est une version améliorée d'{talent_old:%s} infligeant {damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_1_rgb_fr end),
	--[+ Russian +]-- Разрыв мозга
	create_template("talent_tree_psy_blitz1_000_desc_ru", {"loc_talent_psyker_brain_burst_improved_description"}, {"ru"}, function(locale, value) return "Зарядите свою психическую мощь и высвободите её, чтобы нанести огромный "..COLORS_KWords_ru.Dmg_rgb_ru.." одному врагу. Эффективно против врагов в противоосколочной и панцирной броне. Высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." против маньяков и несгибаемых.\n\nЭто улучшенная версия таланта {talent_old:%s}, наносящая {damage:%s} "..COLORS_KWords_ru.Dmg_a_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_1_rgb_ru end),

	--[+ Blitz 1-1 - Kinetic Resonance +]--
	create_template("talent_tree_psy_blitz1_001_desc_en", {"loc_talent_psyker_ability_increase_brain_burst_speed_desc"}, {"en"}, function(locale, value) return "{smite_attack_speed:%s} faster charging of your {talent_name:%s} after using your "..COLORS_KWords.Combat_ability_rgb..", generating {warp_charge_cost:%s} less "..COLORS_KWords.Peril_rgb.." for {duration:%s} seconds."..TALENTS_Enh_desc.ED_PSY_Blitz_1_1_rgb end), -- talent_name: Brain Rupture, smite_attack_speed: +75%, warp_charge_cost: 50%, duration:10 -- s -> seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_blitz1_001_desc_fr", {"loc_talent_psyker_ability_increase_brain_burst_speed_desc"}, {"fr"}, function(locale, value) return "Lorsque vous utilisez votre "..COLORS_KWords_fr.Combat_ability_rgb_fr..", {talent_name:%s} charge {smite_attack_speed:%s} plus rapidement et génère {warp_charge_cost:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." en moins, pendant {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_1_1_rgb_fr end),
	--[+ Russian +]-- Кинетический резонанс
	create_template("talent_tree_psy_blitz1_001_desc_ru", {"loc_talent_psyker_ability_increase_brain_burst_speed_desc"}, {"ru"}, function(locale, value) return "{smite_attack_speed:%s} к ускорению заряжания вашего блица {talent_name:%s} после использования вашей "..COLORS_KWords_ru.Combat_ability_rgb_ru..", также генерируется на {warp_charge_cost:%s} меньше "..COLORS_KWords_ru.Peril_rgb_ru.." в течение {duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_1_1_rgb_ru end),

	--[+ Blitz 1-2 - Kinetic Flayer +]--
	create_template("talent_tree_psy_blitz1_002_desc_en", {"loc_talent_psyker_smite_on_hit_special_elite_desc"}, {"en"}, function(locale, value) return "While below "..COLORS_Numbers.pc_97_rgb.." "..COLORS_KWords.Peril_rgb..", all Attacks against Specials, Elites and Monstrosities, have {smite_chance:%s} chance to {talent_name:%s} the target on any of Psyker's damaging attacks. Cooldown {time:%s} seconds."..TALENTS_Enh_desc.ED_PSY_Blitz_1_2_rgb end), -- smite_chance: 10%, talent_name: Brain Rupture, time: 15 -- s -> seconds -- colors -- lil rewrite
	--[+ French +]--
	create_template("talent_tree_psy_blitz1_002_desc_fr", {"loc_talent_psyker_smite_on_hit_special_elite_desc"}, {"fr"}, function(locale, value) return "Tant que vous êtes en dessous de "..COLORS_Numbers.pc_97_rgb.." de "..COLORS_KWords_fr.Peril_rgb_fr..", Toute les attaques contre les spéciaux, les élites et les Monstruosités ont {smite_chance:%s} de chance d'appliquer {talent_name:%s} à la cible en cas de coup réussi. {time:%s} secondes de temps de recharge."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_1_2_rgb_fr end),
	--[+ Russian +]-- Кинетический живодёр -- руоф Кинетический истребитель
	create_template("talent_tree_psy_blitz1_002_desc_ru", {"loc_talent_psyker_smite_on_hit_special_elite_desc"}, {"ru"}, function(locale, value) return "Пока ваш уровень "..COLORS_KWords_ru.Peril_rgb_ru.." ниже "..COLORS_Numbers.pc_97_rgb..", все атаки против специалистов, элитных врагов и монстров имеют {smite_chance:%s} шанс вызвать {talent_name:%s}, нанеся "..COLORS_KWords_ru.Dmg_rgb_ru.." по ним.\nВремя восстановления: {time:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_1_2_rgb_ru end),

	--[+ Blitz 2 - Smite +]--
	create_template("talent_tree_psy_blitz2_000_desc_en", {"loc_ability_psyker_chain_lightning_description"}, {"en"}, function(locale, value) return "You unleash a torrent of chain Bio-Lightning that slowly jumps between enemies, dealing low "..COLORS_KWords.Electrcuting_rgb.." "..COLORS_KWords.Damage_rgb.." over time and very High "..COLORS_KWords.Stagger_rgb.." to them.\nSecondary charged attack deals more "..COLORS_KWords.Damage_rgb.." when released and also jumps faster from enemy to enemy.\nCannot "..COLORS_KWords.Stagger_rgb.." Monstrosities and enemies with active Void shield. Average "..COLORS_KWords.Damage_rgb.." to armor, low "..COLORS_KWords.Damage_rgb.." to Carapace armor."..TALENTS_Enh_desc.ED_PSY_Blitz_2_rgb end), -- total rewrite -- colors
	--[+ French +]--!!!
	create_template("talent_tree_psy_blitz2_000_desc_fr", {"loc_ability_psyker_chain_lightning_description"}, {"fr"}, function(locale, value) return "Déchaînez un torrent de bio-foudre qui se propage lentement entre les ennemis, infligeant de faible "..COLORS_KWords_fr.Damage_rgb_fr.." et "..COLORS_KWords_fr.Electrcuting_rgb_fr.."  sur la durée avec un fort "..COLORS_KWords_fr.Stagger_rgb_fr..".\nL'attaque chargée secondaire inflige plus de "..COLORS_KWords_fr.Damage_rgb_fr.." et le taux de dispersion.\nNe peut pas étourdir les Monstruosités et les ennemis avec bouclier de vide actif. Pénétration d'armure moyenne pour toutes les armures, Pénétration d'armure faible contre les carapaces."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_2_rgb_fr end),
	--[+ Russian +]-- Сокрушение
	create_template("talent_tree_psy_blitz2_000_desc_ru", {"loc_ability_psyker_chain_lightning_description"}, {"ru"}, function(locale, value) return "Вы выпускаете поток цепной биомолнии, которая медленно распространяется между врагами, нанося им низкий "..COLORS_KWords_ru.Dmg_rgb_ru.." "..COLORS_KWords_ru.Electrocuted_rgb_ru.." с течением времени и очень высокое "..COLORS_KWords_ru.Stagger_rgb_ru..".\nВторичная заряженная атака наносит больше "..COLORS_KWords_ru.Dmg_a_rgb_ru.." при высвобождении, а также быстрее распространяется.\nНе может ошеломить монстров и врагов с активным пустотным щитом. Средний урон по всем видам брони, низкий урон по панцирной броне."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_2_rgb_ru end),

	--[+ Blitz 2-1 - Lightning Storm +]--
	create_template("talent_tree_psy_blitz2_001_desc_en", {"loc_talent_psyker_increased_chain_lightning_size_description"}, {"en"}, function(locale, value) return "Increases the number of jumps of your {talent_name:%s} from "..COLORS_Numbers.n_1_rgb.." to "..COLORS_Numbers.n_2_rgb.."."..TALENTS_Enh_desc.ED_PSY_Blitz_2_1_rgb end), -- talent_name: Smite, max_jumps: +1 -- rewrite "by {max_jumps:%s}"
	--[+ French +]--
	create_template("talent_tree_psy_blitz2_001_desc_fr", {"loc_talent_psyker_increased_chain_lightning_size_description"}, {"fr"}, function(locale, value) return "Augmente le nombre de sauts de votre {talent_name:%s} de "..COLORS_Numbers.n_1_rgb.." à "..COLORS_Numbers.n_2_rgb.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_2_1_rgb_fr end),
	--[+ Russian +]-- Гроза
	create_template("talent_tree_psy_blitz2_001_desc_ru", {"loc_talent_psyker_increased_chain_lightning_size_description"}, {"ru"}, function(locale, value) return "C "..COLORS_Numbers.n_1_rgb.." до "..COLORS_Numbers.n_2_rgb.." увеличивается количество врагов на которых распространяется {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_2_1_rgb_ru end),

	--[+ Blitz 2-2 - Enfeeble +]--
	create_template("talent_tree_psy_blitz2_002_desc_en", {"loc_talent_psyker_chain_lightning_improved_target_buff_alt_description"}, {"en"}, function(locale, value) return "{damage:%s} increased Base "..COLORS_KWords.Damage_rgb.." from all sources is taken by enemies affected by the "..COLORS_KWords.Electrocute_rgb.." effect of your {talent_name:%s}.\nThe debuff is being applied as long as the enemy is actively affected by {talent_name:%s}.\nDoesn't Stack with the same debuff applied by another Psyker."..TALENTS_Enh_desc.ED_PSY_Blitz_2_2_rgb end), -- talent_name: Smite, damage: +10% -- colors
	--[+ French +]--Dégénérescence
	create_template("talent_tree_psy_blitz2_002_desc_fr", {"loc_talent_psyker_chain_lightning_improved_target_buff_alt_description"}, {"fr"}, function(locale, value) return "Les ennemis qui sont "..COLORS_KWords_fr.Electrocuted_rgb_fr.." subissent {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." supplémentaires de toutes les sources.\nLe malus est appliqué tant que les ennemis subissent {talent_name:%s}.\nNe se cumul pas avec le même malus d'un autre Psyker."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_2_2_rgb_fr end),
	--[+ Russian +]-- Ослабление
	create_template("talent_tree_psy_blitz2_002_desc_ru", {"loc_talent_psyker_chain_lightning_improved_target_buff_alt_description"}, {"ru"}, function(locale, value) return "{damage:%s} базового "..COLORS_KWords_ru.Dmg_a_rgb_ru.." из всех источников получают враги, на которых действует эффект "..COLORS_KWords_ru.Electrocution_rgb_ru.." от вашего таланта {talent_name:%s}.\nОслабление применяется до тех пор, пока враг находится под действием способности {talent_name:%s}.\nНе суммируется с таким же ослаблением, наложенным другим псайкером."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_2_2_rgb_ru end),

	--[+ Blitz 2-3 - Charged Strike +]--
	create_template("talent_tree_psy_blitz2_002_desc_en", {"loc_talent_psyker_chain_lightning_damage_heavy_attacks_desc"}, {"en"}, function(locale, value) return "Your Heavy Melee Attacks "..COLORS_KWords.Electrocute_rgb.." enemies hit, damaging them.\nUp to "..COLORS_Numbers.n_64_rgb.." base "..COLORS_KWords.Damage_rgb.." per tick when reaching Max charge level.\nThe "..COLORS_KWords.Damage_rgb.." window lasts up to "..COLORS_Numbers.n_2_rgb.." seconds. The "..COLORS_KWords.Electrocuted_rgb.." state lasts until "..COLORS_Numbers.n_2_rgb.." seconds after the last "..COLORS_KWords.Damage_rgb.." tick."..TALENTS_Enh_desc.ED_PSY_Blitz_2_3_rgb end), -- colors
	--[+ French +]--Coup chargé !!! 
	create_template("talent_tree_psy_blitz2_002_desc_fr", {"loc_talent_psyker_chain_lightning_damage_heavy_attacks_desc"}, {"fr"}, function(locale, value) return "Vos attaques puissantes de mélées "..COLORS_KWords_fr.Electrocutes_rgb_fr.." les ennemis, ce qui leur inflige des "..COLORS_KWords_fr.Damage_rgb_fr.."\nJusqu'a "..COLORS_Numbers.n_64_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." par instance lors d'un coup chargé au maximum.\nLa fenêtre de "..COLORS_KWords_fr.Damage_rgb_fr.." dure jusqu'a "..COLORS_Numbers.n_2_rgb.." secondes. Le malus "..COLORS_KWords_fr.Electrocutes_rgb_fr.." dure jusqu'a "..COLORS_Numbers.n_2_rgb.." secondes après la dernière instance de "..COLORS_KWords_fr.Damage_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_2_3_rgb_fr end),
	--[+ Russian +]-- Заряженный удар!!!
	create_template("talent_tree_psy_blitz2_002_desc_ru", {"loc_talent_psyker_chain_lightning_damage_heavy_attacks_desc"}, {"ru"}, function(locale, value) return "Ваши тяжёлые атаки ближнего боя накладывают на врагов эффект "..COLORS_KWords_ru.Electrocution_rgb_ru..", наносящий им "..COLORS_KWords_ru.Dmg_rgb_ru..".\nДо "..COLORS_Numbers.n_64_rgb.." единиц базового "..COLORS_KWords_ru.Dmg_a_rgb_ru.." за срабатывание при максимальном уровне заряда.\nОкно "..COLORS_KWords_ru.Dmg_a_rgb_ru.." длится "..COLORS_Numbers.n_2_rgb.." секунды. Эффект "..COLORS_KWords_ru.Electrocution_rgb_ru.." длится "..COLORS_Numbers.n_2_rgb.." секунды после последнего нанесения "..COLORS_KWords_ru.Dmg_a_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_2_3_rgb_ru end),

	--[+ Blitz 3 - Assail +]--
	create_template("talent_tree_psy_blitz3_000_desc_en", {"loc_ability_psyker_blitz_throwing_knives_description"}, {"en"}, function(locale, value) return "You throw swift, homing projectiles formed of psychic energy that follows the player's crosshair for "..COLORS_Numbers.n_2_5_rgb.." seconds to the nearest Enemy. Deals "..COLORS_Numbers.n_200_rgb.." Base "..COLORS_KWords.Damage_rgb.." to the first target and cost "..COLORS_Numbers.pc_10_rgb.." "..COLORS_KWords.Peril_rgb..".\nSecondary attack throws a homing projectile that flies for "..COLORS_Numbers.n_3_rgb.." seconds and hitting enemies within a "..COLORS_Numbers.n_50_rgb.." meter radius with a guaranteed hit. Deals "..COLORS_Numbers.n_340_rgb.." Base "..COLORS_KWords.Damage_rgb.." and cost "..COLORS_Numbers.pc_25_rgb.." "..COLORS_KWords.Peril_rgb.."."..TALENTS_Enh_desc.ED_PSY_Blitz_3_rgb end), -- total rewrite -- colors
	--[+ French +]--
	create_template("talent_tree_psy_blitz3_000_desc_fr", {"loc_ability_psyker_blitz_throwing_knives_description"}, {"fr"}, function(locale, value) return "Vous lancez des projectiles rapides et autoguidés formés d'énergie psychique qui suivent le réticule du joueur pendant "..COLORS_Numbers.n_2_5_rgb.." secondes jusqu'à l'ennemi le plus proche. Inflige "..COLORS_Numbers.n_200_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." à la première cible et coûte "..COLORS_Numbers.pc_10_rgb.." de "..COLORS_KWords_fr.Peril_rgb_fr..".\nL'attaque secondaire lance un projectile autoguidé qui vole pendant "..COLORS_Numbers.n_3_rgb.." secondes et touche les ennemis dans un rayon de "..COLORS_Numbers.n_50_rgb.." mètres avec une touche garantie. Inflige "..COLORS_Numbers.n_340_rgb.." de "..COLORS_KWords_fr.Damage_rgb_fr.." et coûte "..COLORS_Numbers.pc_25_rgb.." de "..COLORS_KWords_fr.Peril_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_3_rgb_fr end),
	--[+ Russian +]-- Нападение
	create_template("talent_tree_psy_blitz3_000_desc_ru", {"loc_ability_psyker_blitz_throwing_knives_description"}, {"ru"}, function(locale, value) return "Вы бросаете быстрые, самонаводящиеся снаряды, сформированные из психической энергии, которые следуют за прицелом игрока в течение "..COLORS_Numbers.n_2_5_rgb.." секунды в ближайшего врага. Наносит "..COLORS_Numbers.n_200_rgb.." базового "..COLORS_KWords_ru.Dmg_a_rgb_ru.." первой цели и генерирует "..COLORS_Numbers.pc_10_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru..".\nВторичной атакой вы запускаете самонаводящийся снаряд, который летит до "..COLORS_Numbers.n_3_rgb.." секунд и гарантированно поражает врагов в радиусе "..COLORS_Numbers.n_50_rgb.." метров. Наносит "..COLORS_Numbers.n_340_rgb.." базового "..COLORS_KWords_ru.Dmg_a_rgb_ru.." и генерирует "..COLORS_Numbers.pc_25_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_3_rgb_ru end),

	--[+ Blitz 3-1 - Ethereal Shards +]--
	create_template("talent_tree_psy_blitz3_001_desc_en", {"loc_talent_psyker_throwing_knives_pierce_description"}, {"en"}, function(locale, value) return "Projectiles from {talent_name:%s} now pierce additional targets, up from "..COLORS_Numbers.n_2_rgb.." to "..COLORS_Numbers.n_3_rgb.."."..TALENTS_Enh_desc.ED_PSY_Blitz_3_1_rgb end), -- talent_name: Assail -- colors
	--[+ French +]--
	create_template("talent_tree_psy_blitz3_001_desc_fr", {"loc_talent_psyker_throwing_knives_pierce_description"}, {"fr"}, function(locale, value) return "Les projectiles d'{talent_name:%s} percent désormais des cibles supplémentaires, passant de "..COLORS_Numbers.n_2_rgb.." à "..COLORS_Numbers.n_3_rgb.."."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_3_1_rgb_fr end),
	--[+ Russian +]-- Эфирные осколки -- руоф Эфирные частицы
	create_template("talent_tree_psy_blitz3_001_desc_ru", {"loc_talent_psyker_throwing_knives_pierce_description"}, {"ru"}, function(locale, value) return "С "..COLORS_Numbers.n_2_rgb.." до "..COLORS_Numbers.n_3_rgb.." увеличивается количество врагов, которых пронзают снаряды таланта {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_3_1_rgb_ru end),

	--[+ Blitz 3-2 - Quick Shards +]--
	create_template("talent_tree_psy_blitz3_002_desc_en", {"loc_talent_psyker_throwing_knives_cast_speed_description"}, {"en"}, function(locale, value) return "{talent_name:%s} charges Replenish {recharge:%s} faster."..TALENTS_Enh_desc.ED_PSY_Blitz_3_2_rgb end), -- talent_name: Assail, recharge: 30%
	--[+ French +]--
	create_template("talent_tree_psy_blitz3_002_desc_fr", {"loc_talent_psyker_throwing_knives_cast_speed_description"}, {"fr"}, function(locale, value) return "Les charges d'{talent_name:%s} se régénerent {recharge:%s} plus rapidement."..TALENTS_Enh_desc_fr.ED_PSY_Blitz_3_2_rgb_fr end),
	--[+ Russian +]-- Быстрые осколки -- руоф Быстрые частицы
	create_template("talent_tree_psy_blitz3_002_desc_ru", {"loc_talent_psyker_throwing_knives_cast_speed_description"}, {"ru"}, function(locale, value) return "На {recharge:%s} повышается скорость восстановления снарядов таланта {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Blitz_3_2_rgb_ru end),

--[+ +AURA - АУРЫ+ +]--
	--[+ Aura 0 - The Quickening +]--
	create_template("talent_tree_psy_aura0_000_desc_en", {"loc_talent_psyker_aura_reduced_ability_cooldown_description"}, {"en"}, function(locale, value) return "{cooldown_reduction:%s} "..COLORS_KWords.Ability_cd_rgb.." Reduction for you and Allies in "..COLORS_KWords.Coherency_rgb.."."..TALENTS_Enh_desc.ED_PSY_Aura_0_rgb end), -- cooldown_reduction: +7.5% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_aura0_000_desc_fr", {"loc_talent_psyker_aura_reduced_ability_cooldown_description"}, {"fr"}, function(locale, value) return "{cooldown_reduction:%s} de "..COLORS_KWords_fr.Ability_cd_rgb_fr.." pour vous et vos Alliés en syntonie."..TALENTS_Enh_desc_fr.ED_PSY_Aura_0_rgb_fr end),
	--[+ Russian +]-- Ускорение
	create_template("talent_tree_psy_aura0_000_desc_ru", {"loc_talent_psyker_aura_reduced_ability_cooldown_description"}, {"ru"}, function(locale, value) return "{cooldown_reduction:%s} к сокращению времени "..COLORS_KWords_ru.Combat_ability_cd_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Aura_0_rgb_ru end),

	--[+ Aura 1 - Kinetic Presence +]--
	create_template("talent_tree_psy_aura1_000_desc_en", {"loc_talent_psyker_base_3_description"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Damage_rgb.." against Elite Enemies for you and Allies in "..COLORS_KWords.Coherency_rgb.."."..TALENTS_Enh_desc.ED_PSY_Aura_1_rgb end), -- damage: +7.5% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_aura1_000_desc_fr", {"loc_talent_psyker_base_3_description"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemis d'élites pour vos vous et vos alliés en syntonie."..TALENTS_Enh_desc_fr.ED_PSY_Aura_1_rgb_fr end),
	--[+ Russian +]-- Кинетическое присутствие
	create_template("talent_tree_psy_aura1_000_desc_ru", {"loc_talent_psyker_base_3_description"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." по элитным врагам для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Aura_1_rgb_ru end),

	--[+ Aura 2 - Seer's Presence +]--
	create_template("talent_tree_psy_aura2_000_desc_en", {"loc_talent_psyker_cooldown_aura_improved_description"}, {"en"}, function(locale, value) return "{cooldown_reduction:%s} "..COLORS_KWords.Ability_cd_rgb.." Reduction for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n\nThis is an augmented version of {talent_name:%s}."..TALENTS_Enh_desc.ED_PSY_Aura_2_rgb end), -- cooldown_reduction: +10%, talent_name: The Quickening -- colors
	--[+ French +]--
	create_template("talent_tree_psy_aura2_000_desc_fr", {"loc_talent_psyker_cooldown_aura_improved_description"}, {"fr"}, function(locale, value) return "{cooldown_reduction:%s} de "..COLORS_KWords_fr.Ability_cd_rgb_fr.." pour vous et vos Alliés en syntonie.\n\nIl s'agit une version améliorée de : {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Aura_2_rgb_fr end),
	--[+ Russian +]-- Присутствие провидца
	create_template("talent_tree_psy_aura2_000_desc_ru", {"loc_talent_psyker_cooldown_aura_improved_description"}, {"ru"}, function(locale, value) return "{cooldown_reduction:%s} к сокращению времени "..COLORS_KWords_ru.Combat_ability_cd_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n\nЭто улучшенная версия ауры {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Aura_2_rgb_ru end),

	--[+ Aura 3 - Prescience +]--
	create_template("talent_tree_psy_aura3_000_desc_en", {"loc_ability_psyker_gunslinger_aura_description"}, {"en"}, function(locale, value) return "{critical_strike_chance:%s} "..COLORS_KWords.Crit_hit_chance_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb.."."..TALENTS_Enh_desc.ED_PSY_Aura_3_rgb end), -- critical_strike_chance: +5% -- colors
	--[+ French +]--!!!
	create_template("talent_tree_psy_aura3_000_desc_fr", {"loc_ability_psyker_gunslinger_aura_description"}, {"fr"}, function(locale, value) return "Vous et vos Alliés en syntonie gagne {critical_strike_chance:%s} "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Aura_3_rgb_fr end),
	--[+ Russian +]-- Предвидение
	create_template("talent_tree_psy_aura3_000_desc_ru", {"loc_ability_psyker_gunslinger_aura_description"}, {"ru"}, function(locale, value) return "{critical_strike_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Aura_3_rgb_ru end),

--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ Ability 0 - Psykinetic's Wrath +]--
	create_template("talent_tree_psy_abil0_000_desc_en", {"loc_talent_psyker_shout_ability_description"}, {"en"}, function(locale, value) return "Releases a cone-shaped shout in front of Psyker that "..COLORS_KWords.Staggers_rgb.." Enemies in front of you. Quells {warpcharge_vent:%s} "..COLORS_KWords.Peril_rgb..".\n\nBase Cooldown: {cooldown:%s} seconds."..TALENTS_Enh_desc.ED_PSY_Ability_0_rgb end), -- warpcharge_vent: 10%, cooldown: 30 -- rewrite -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_abil0_000_desc_fr", {"loc_talent_psyker_shout_ability_description"}, {"fr"}, function(locale, value) return "Libère un cri en forme de cône devant le Psyker qui fait "..COLORS_KWords_fr.Staggering_rgb_fr.." les ennemis devant vous. Réduit de {warpcharge_vent:%s} le "..COLORS_KWords_fr.Peril_rgb_fr..".\n\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_0_rgb_fr end),
	--[+ Russian +]-- Гнев психокинетика -- руоф Психокинетический гнев
	create_template("talent_tree_psy_abil0_000_desc_ru", {"loc_talent_psyker_shout_ability_description"}, {"ru"}, function(locale, value) return "Вы высвобождаете конусообразную волну варп-энергии на расстояние до "..COLORS_Numbers.n_30_rgb.." метров, которая накладывает "..COLORS_KWords_ru.Stagger_rgb_ru.." на врагов перед вами и подавляет {warpcharge_vent:%s} "..COLORS_KWords_ru.Peril_rgb_ru..".\nПрименение этой способности предотвращает самоподрыв.\nВремя восстановления: {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Ability_0_rgb_ru end),

	--[+ Ability 1 - Venting Shriek +]--
	create_template("talent_tree_psy_abil1_000_desc_en", {"loc_talent_psyker_shout_vent_warp_charge_description"}, {"en"}, function(locale, value) return "Releases a cone-shaped shout in front of Psyker that "..COLORS_KWords.Staggers_rgb.." Enemies in front of you. Quells {warpcharge_vent:%s} "..COLORS_KWords.Peril_rgb..".\n\nBase Cooldown: {cooldown:%s} seconds.\n\nThis is augmented version of {talent_name:%s}."..TALENTS_Enh_desc.ED_PSY_Ability_1_rgb end), -- warpcharge_vent: 50%, cooldown: 30, talent_name: Psykinetic's Wrath -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_abil1_000_desc_fr", {"loc_talent_psyker_shout_vent_warp_charge_description"}, {"fr"}, function(locale, value) return "Libère un cri en forme de cône devant le Psyker qui fait "..COLORS_KWords_fr.Staggering_rgb_fr.." les ennemis devant vous. Réduit de {warpcharge_vent:%s} le "..COLORS_KWords_fr.Peril_rgb_fr..".\n\nTemps de recharge de base : {cooldown:%s} secondes.\n\nC'est la version augmentée de {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_1_rgb_fr end),
	--[+ Russian +]-- Сбрасывающий вопль -- руоф Вырвавшийся вопль
	create_template("talent_tree_psy_abil1_000_desc_ru", {"loc_talent_psyker_shout_vent_warp_charge_description"}, {"ru"}, function(locale, value) return "Вы высвобождаете конусообразную волну варп-энергии на расстояние до "..COLORS_Numbers.n_30_rgb.." метров, которая накладывает "..COLORS_KWords_ru.Stagger_rgb_ru.." на врагов перед вами и подавляет {warpcharge_vent:%s} "..COLORS_KWords_ru.Peril_rgb_ru..".\nПрименение этой способности предотвращает самоподрыв.\n\nВремя восстановления: {cooldown:%s} секунд.\n\nЭто улучшенная версия способности {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Ability_1_rgb_ru end),

	--[+ Ability 1-1 - Becalming Eruption +]--
	create_template("talent_tree_psy_abil1_001_desc_en", {"loc_talent_psyker_shout_reduces_warp_charge_generation_description"}, {"en"}, function(locale, value) return "{talent_name:%s} now decreases "..COLORS_KWords.Peril_rgb.." Generation by {warp_generation:%s} for each Enemy hit. Up to {max_stacks:%s}"..COLORS_Numbers.pc_rgb..". Lasts {duration:%s} seconds."..TALENTS_Enh_desc.ED_PSY_Ability_1_1_rgb end), -- talent_name: Venting Shriek, warp_generation: 1%, max_stacks: 25, duration: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_abil1_001_desc_fr", {"loc_talent_psyker_shout_reduces_warp_charge_generation_description"}, {"fr"}, function(locale, value) return "À présent, {talent_name:%s} réduit la génération de "..COLORS_KWords_fr.Peril_rgb_fr.." de {warp_generation:%s} pour chaque ennemi touché. Jusqu'à {max_stacks:%s}"..COLORS_Numbers.pc_rgb..". Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_1_1_rgb_fr end),
	--[+ Russian +]-- Успокаивающее извержение -- руоф Затихающее извержение
	create_template("talent_tree_psy_abil1_001_desc_ru", {"loc_talent_psyker_shout_reduces_warp_charge_generation_description"}, {"ru"}, function(locale, value) return "{talent_name:%s} теперь снижает генерацию "..COLORS_KWords_ru.Peril_rgb_ru.." на {warp_generation:%s} за каждого поражённого врага. Вплоть до {max_stacks:%s}"..COLORS_Numbers.pc_rgb..". Длится {duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Ability_1_1_rgb_ru end),

	--[+ Ability 1-2 - Warp Rupture +]--
	create_template("talent_tree_psy_abil1_002_desc_en", {"loc_talent_psyker_shout_damage_per_warp_charge_description"}, {"en"}, function(locale, value) return "Your {talent_name:%s} now also deals {base_damage:%s}-{max_damage:%s} "..COLORS_KWords.Damage_rgb..", based off of your current "..COLORS_KWords.Peril_rgb.." percentage."..TALENTS_Enh_desc.ED_PSY_Ability_1_2_rgb end), -- talent_name: Venting Shriek, base_damage: 100, max_damage: 200 -- colors
	--[+ French +]--
	create_template("talent_tree_psy_abil1_002_desc_fr", {"loc_talent_psyker_shout_damage_per_warp_charge_description"}, {"fr"}, function(locale, value) return "Votre {talent_name:%s} inflige également de {base_damage:%s} à {max_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..", basé sur votre pourcentage de "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Ability_1_2_rgb_fr end),
	--[+ Russian +]-- Разрыв варпа -- руоф Варп-разрыв
	create_template("talent_tree_psy_abil1_002_desc_ru", {"loc_talent_psyker_shout_damage_per_warp_charge_description"}, {"ru"}, function(locale, value) return "Ваш {talent_name:%s} теперь также наносит от {base_damage:%s} до {max_damage:%s} единиц "..COLORS_KWords_ru.Dmg_a_rgb_ru.." в зависимости от вашего текущего уровня "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Ability_1_2_rgb_ru end),

	--[+ Ability 1-3 - Warp Creeping Flames +]--
	create_template("talent_tree_psy_abil1_003_desc_en", {"loc_talent_psyker_warpfire_on_shout_desc"}, {"en"}, function(locale, value) return "{talent_name:%s} applies {min_stacks:%s}{warpfire_stacks:%s} Stacks of "..COLORS_KWords.Soulblaze_rgb.." to targets Hit based on your current "..COLORS_KWords.Peril_rgb.."."..TALENTS_Enh_desc.ED_PSY_Ability_1_3_rgb end), -- talent_name: Venting Shriek, min_stacks: 1, warpfire_stacks: -6 -- Stack(s)->Stacks -- colors
	--[+ French +]--
	create_template("talent_tree_psy_abil1_003_desc_fr", {"loc_talent_psyker_warpfire_on_shout_desc"}, {"fr"}, function(locale, value) return "{talent_name:%s} applique {min_stacks:%s}{warpfire_stacks:%s} cumuls d'"..COLORS_KWords_fr.Soulblaze_rgb_fr.." aux cibles touchées en fonction de votre "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Ability_1_3_rgb_fr end),
	--[+ Russian +]-- Ползучее пламя -- руоф Раздувающееся пламя
	create_template("talent_tree_psy_abil1_003_desc_ru", {"loc_talent_psyker_warpfire_on_shout_desc"}, {"ru"}, function(locale, value) return "{talent_name:%s} накладывает от "..COLORS_Numbers.n_1_rgb.." до {warpfire_stacks:%s} зарядов "..COLORS_KWords_ru.Soulblaze_rgb_ru.." на поражённые цели в зависимости от вашего текущего уровня "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Ability_1_3_rgb_ru end),

	--[+ Ability 2 - Telekine Shield +]--
	create_template("talent_tree_psy_abil2_000_desc_en", {"loc_talent_psyker_combat_ability_shield_description"}, {"en"}, function(locale, value) return "Spawns a psychic shield in front of you for {duration:%s} seconds. The shield blocks Enemy Ranged Attacks, while you and Allies can still shoot through.\nBase Cooldown: {cooldown:%s} seconds."..TALENTS_Enh_desc.ED_PSY_Ability_2_rgb end), -- duration: 17.5, cooldown: 40 -- s->seconds
	--[+ French +]--
	create_template("talent_tree_psy_abil2_000_desc_fr", {"loc_talent_psyker_combat_ability_shield_description"}, {"fr"}, function(locale, value) return "Invoque un bouclier psychique devant vous pendant {duration:%s} secondes. Le bouclier bloque les attaques à distance des ennemis, tandis que vous et vos alliés pouvez toujours tirer à travers.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_rgb_fr end),
	--[+ Russian +]-- Телекинический щит
	create_template("talent_tree_psy_abil2_000_desc_ru", {"loc_talent_psyker_combat_ability_shield_description"}, {"ru"}, function(locale, value) return "Создаёт перед вами психический щит на {duration:%s} секунды. Щит блокирует вражеские выстрелы, в то время как вы и союзники все ещё можете стрелять сквозь него.\nВремя восстановления: {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Ability_2_rgb_ru end),

	--[+ Ability 2-1 - Bolstered Shield +]--
	create_template("talent_tree_psy_abil2_001_desc_en", {"loc_talent_psyker_force_field_charges_description"}, {"en"}, function(locale, value) return "{talent_name:%s} now holds up to {max_charges:%s} charges."..TALENTS_Enh_desc.ED_PSY_Ability_2_1_rgb end), -- talent_name: Telekine Shield, max_charges: 2
	--[+ French +]--
	create_template("talent_tree_psy_abil2_001_desc_fr", {"loc_talent_psyker_force_field_charges_description"}, {"fr"}, function(locale, value) return "{talent_name:%s} peut maintenant accumuler jusqu'à {max_charges:%s} charges."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_1_rgb_fr end),
	--[+ Russian +]-- Усиленный щит
	create_template("talent_tree_psy_abil2_001_desc_ru", {"loc_talent_psyker_force_field_charges_description"}, {"ru"}, function(locale, value) return "{talent_name:%s} теперь имеет {max_charges:%s} заряда."..TALENTS_Enh_desc_ru.ED_PSY_Ability_2_1_rgb_ru end),

	--[+ Ability 2-2 - Enervating Threshold +]--
	create_template("talent_tree_psy_abil2_002_desc_en", {"loc_talent_psyker_force_field_stun_increased_new_description"}, {"en"}, function(locale, value) return "{ability:%s} has a {proc_chance:%s} chance to "..COLORS_KWords.Electrocute_rgb.." enemies that pass through it. Specialist enemies have a {special_proc_chance:%s} chance to get "..COLORS_KWords.Electrocuted_rgb.." but also damage the {ability:%s}."..TALENTS_Enh_desc.ED_PSY_Ability_2_2_rgb end), -- ability: Telekine Shield, proc_chance: 10%, special_proc_chance: 100% -- colors
	--[+ French +]--Seuil Débilitant
	create_template("talent_tree_psy_abil2_002_desc_fr", {"loc_talent_psyker_force_field_stun_increased_new_description"}, {"fr"}, function(locale, value) return "{ability:%s} a {proc_chance:%s} de chances d'"..COLORS_KWords_fr.Electrocute_rgb_fr.." les ennemis qui le traversent. Les ennemis spécialistes ont {special_proc_chance:%s} de chances d'être "..COLORS_KWords_fr.Electrocuted_rgb_fr.." mais endommagent également le {ability:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_2_rgb_fr end),
	--[+ Russian +]-- Порог ослабления
	create_template("talent_tree_psy_abil2_002_desc_ru", {"loc_talent_psyker_force_field_stun_increased_new_description"}, {"ru"}, function(locale, value) return "{ability:%s} имеет {proc_chance:%s} шанс наложить "..COLORS_KWords_ru.Electrocute_rgb_ru.." на врагов, которые проходят сквозь него. Враги-специалисты имеют {special_proc_chance:%s} шанс поражения "..COLORS_KWords_ru.Electrocuted_rgb_ru..", но также повреждают {ability:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Ability_2_2_rgb_ru end),

	--[+ Ability 2-3 - Telekine Dome +]--
	create_template("talent_tree_psy_abil2_003_desc_en", {"loc_talent_psyker_force_field_dome_new_desc"}, {"en"}, function(locale, value) return "{talent_name:%s} now forms a spherical shield which lasts {duration:%s} seconds."..TALENTS_Enh_desc.ED_PSY_Ability_2_3_rgb end), -- talent_name: Telekine Shield, duration: 25 -- s->seconds
	--[+ French +]--
	create_template("talent_tree_psy_abil2_003_desc_fr", {"loc_talent_psyker_force_field_dome_new_desc"}, {"fr"}, function(locale, value) return "{talent_name:%s} forme maintenant un bouclier sphérique qui dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_3_rgb_fr end),
	--[+ Russian +]-- Телекинический купол
	create_template("talent_tree_psy_abil2_003_desc_ru", {"loc_talent_psyker_force_field_dome_new_desc"}, {"ru"}, function(locale, value) return "{talent_name:%s} теперь формирует сферу радиусом "..COLORS_Numbers.n_6_rgb.." метров, которая держится {duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Ability_2_3_rgb_ru end),

	--[+ Ability 2-4 - Sanctuary +]--
	create_template("talent_tree_psy_abil2_004_desc_en", {"loc_talent_psyker_force_field_grants_toughness_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." per second replenishes for Allies inside your {talent_name:%s}.\n{toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for {duration:%s} seconds for all Allies inside your {talent_name:%s} when it dissipates."..TALENTS_Enh_desc.ED_PSY_Ability_2_4_rgb end), -- talent_name: Telekine Shield, toughness: 10%, toughness_damage_reduction: +50%, duration: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_abil2_004_desc_fr", {"loc_talent_psyker_force_field_grants_toughness_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par seconde pour les alliés à l'intérieur de votre {talent_name:%s}.\n{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." pendant {duration:%s} secondes pour tous les alliés à l'intérieur de votre {talent_name:%s} lorsqu'il se dissipe."..TALENTS_Enh_desc_fr.ED_PSY_Ability_2_4_rgb_fr end),
	--[+ Russian +]-- Убежище -- руоф Святилище
	create_template("talent_tree_psy_abil2_004_desc_ru", {"loc_talent_psyker_force_field_grants_toughness_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду восстанавливается для всех игроков, которых защищает {talent_name:%s}.\n{toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." на {duration:%s} секунд получаете вы и ваши союзники, если вас защищал {talent_name:%s}, в момент его рассеивания."..TALENTS_Enh_desc_ru.ED_PSY_Ability_2_4_rgb_ru end),

	--[+ Ability 3 - Scrier's Gaze +]--
	create_template("talent_tree_psy_abil3_000_desc_en", {"loc_talent_psyker_combat_ability_overcharge_stance_new_venting_description"}, {"en"}, function(locale, value) return "You enter "..COLORS_KWords.Scriers_gaze_rgb.." and Quell {vent:%s} "..COLORS_KWords.Peril_rgb.." as well as gain {base_damage:%s} "..COLORS_KWords.Damage_rgb..", {crit_chance:%s} "..COLORS_KWords.Crit_chance_rgb.." and Suppression Immunity.\nFor every second in "..COLORS_KWords.Scriers_gaze_rgb.." you gain {damage_per_stack:%s} "..COLORS_KWords.Damage_rgb..", up to a maximum of {max_damage:%s}. This effect lingers for {duration:%s} seconds after leaving "..COLORS_KWords.Scriers_gaze_rgb..".\nWhile in "..COLORS_KWords.Scriers_gaze_rgb.." you build up "..COLORS_KWords.Peril_rgb..". Killing enemies while overcharging slows down the auto "..COLORS_KWords.Peril_rgb.." generation by reducing the effective timer by "..COLORS_Numbers.n_033_rgb.." seconds per Kill.\nAt {max_peril:%s} "..COLORS_KWords.Peril_rgb.." Ability ends.\nBase Cooldown: {cooldown:%s} seconds."..TALENTS_Enh_desc.ED_PSY_Ability_3_rgb end), -- base_damage: +10%, crit_chance: +20%, damage_per_stack: +1%, max_damage: +30%, duration: 10, max_peril: 100%, cooldown: 25 -- rewrite -- s->seconds -- colors
	--[+ French +]-- Regard de divination !!! texte trop long
	create_template("talent_tree_psy_abil3_000_desc_fr", {"loc_talent_psyker_combat_ability_overcharge_stance_new_venting_description"}, {"fr"}, function(locale, value) return "Vous entrez sous "..COLORS_KWords_fr.Scriers_gaze_rgb_fr.." , atténuez votre "..COLORS_KWords_fr.Peril_rgb_fr.." de {vent:%s} et gagnez {base_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..", {crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." ainsi que l'immunité à la suppression.\nPour chaque seconde sous "..COLORS_KWords_fr.Scriers_gaze_rgb_fr.." vous gagnez {damage_per_stack:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..", jusqu'à un maximum de {max_damage:%s}. Cet effet perdure {duration:%s} secondes après être sorti de "..COLORS_KWords_fr.Scriers_gaze_rgb_fr..".\nDurant "..COLORS_KWords_fr.Scriers_gaze_rgb_fr.." votre "..COLORS_KWords_fr.Peril_rgb_fr.." augmente continuellement. Tuer des ennemis durant la capacité ralentit la génération automatique du "..COLORS_KWords_fr.Peril_rgb_fr.." en réduisant le temps effectif de "..COLORS_Numbers.n_033_rgb.." secondes par élimination.\nÀ {max_peril:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." la capacité s'arrête.\nTemps de recharge : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_rgb_fr end),
	--[+ Russian +]-- Взор провидца -- руоф Взор Скрира!!!
	create_template("talent_tree_psy_abil3_000_desc_ru", {"loc_talent_psyker_combat_ability_overcharge_stance_new_venting_description"}, {"ru"}, function(locale, value) return "Вы получаете "..COLORS_KWords_ru.Scriers_gaze_rgb_ru.." и сбрасываете {vent:%s} "..COLORS_KWords_ru.Peril_rgb_ru..", а также получаете {base_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..", {crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." и иммунитет к подавлению.\nПока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru.." каждую секунду вы получаете {damage_per_stack:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..", вплоть до максимума в {max_damage:%s}. Этот эффект сохраняется в течение {duration:%s} секунд после того как "..COLORS_KWords_ru.Scriers_gaze_rgb_ru.." перестаёт действовать.\nПока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru.." ваш уровень "..COLORS_KWords_ru.Peril_rgb_ru.." растёт. Убийство врагов замедляет автогенерацию "..COLORS_KWords_ru.Peril_rgb_ru.." за счёт уменьшения таймера эффекта на "..COLORS_Numbers.n_033_rgb.." секунды за убийство.\nПри {max_peril:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." способность заканчивает своё действие.\nВремя восстановления: {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Ability_3_rgb_ru end),

	--[+ Ability 3-1 - Endurance +]--
	create_template("talent_tree_psy_abil3_001_desc_en", {"loc_ability_psyker_overcharge_reduced_toughness_damage_taken_description"}, {"en"}, function(locale, value) return "While overcharging, {talent_name:%s} grants {tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.."."..TALENTS_Enh_desc.ED_PSY_Ability_3_1_rgb end), -- talent_name: Scrier's Gaze, tdr: +20% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_abil3_001_desc_fr", {"loc_ability_psyker_overcharge_reduced_toughness_damage_taken_description"}, {"fr"}, function(locale, value) return "Pendant {talent_name:%s} vous gagnez {tdr:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_1_rgb_fr end),
	--[+ Russian +]-- Выносливость
	create_template("talent_tree_psy_abil3_001_desc_ru", {"loc_ability_psyker_overcharge_reduced_toughness_damage_taken_description"}, {"ru"}, function(locale, value) return "Пока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru..", вы получаете {tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Ability_3_1_rgb_ru end),

	--[+ Ability 3-2 - Precognition +]--
	create_template("talent_tree_psy_abil3_002_desc_en", {"loc_ability_psyker_overcharge_weakspot_description"}, {"en"}, function(locale, value) return "While overcharging, makes "..COLORS_KWords.Weakspot_rgb.." kills generate {second:%s} additional Stack.\n\nFor each second spent in {talent_name:%s}, you now also gain {finesse_damage_per_stack:%s} "..COLORS_KWords.Finesse_dmg_rgb..", up to {max_finesse_damage:%s} Max, which lingers for {duration:%s} seconds after leaving {talent_name:%s}."..TALENTS_Enh_desc.ED_PSY_Ability_3_2_rgb end), -- second: 1, talent_name: Scrier's Gaze, finesse_damage_per_stack: +1%, max_finesse_damage: +30%, duration: 10 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_abil3_002_desc_fr", {"loc_ability_psyker_overcharge_weakspot_description"}, {"fr"}, function(locale, value) return "Pendant {talent_name:%s}, les éliminations par point faible compte comme {second:%s} sous {talent_name:%s}.\n\nPour chaque seconde passée dans {talent_name:%s}, vous gagnez également {finesse_damage_per_stack:%s} de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr..", jusqu'à un maximum de {max_finesse_damage:%s}, ce qui persiste pendant {duration:%s} secondes après avoir quitté {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_2_rgb_fr end),
	--[+ Russian +]-- Предвидение -- руоф Познание
	create_template("talent_tree_psy_abil3_002_desc_ru", {"loc_ability_psyker_overcharge_weakspot_description"}, {"ru"}, function(locale, value) return "Пока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru..", убийства в "..COLORS_KWords_ru.Weakspot_rgb_ru.." засчитываются как {second:%s} секунда под действием этой способности.\n\nЗа каждую секунду под действием способности "..COLORS_KWords_ru.Scriers_gaze_rgb_ru..", вы также получаете {finesse_damage_per_stack:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." от "..COLORS_KWords_ru.Finesse_rgb_ru..", до максимальных {max_finesse_damage:%s}. Эффект держится {duration:%s} секунд после окончания действия таланта "..COLORS_KWords_ru.Scriers_gaze_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Ability_3_2_rgb_ru end),

	--[+ Ability 3-3 - Warp Speed +]--
	create_template("talent_tree_psy_abil3_003_desc_en", {"loc_ability_psyker_overcharge_movement_speed_description"}, {"en"}, function(locale, value) return "While overcharging, {talent_name:%s} increases your Movement Speed by {movement_speed:%s}."..TALENTS_Enh_desc.ED_PSY_Ability_3_3_rgb end), -- talent_name: Scrier's Gaze, movement_speed: +20%
	--[+ French +]--
	create_template("talent_tree_psy_abil3_003_desc_fr", {"loc_ability_psyker_overcharge_movement_speed_description"}, {"fr"}, function(locale, value) return "Pendant {talent_name:%s}, votre vitesse de déplacement augmente de {movement_speed:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_3_rgb_fr end),
	--[+ Russian +]-- Варп-скорость
	create_template("talent_tree_psy_abil3_003_desc_ru", {"loc_ability_psyker_overcharge_movement_speed_description"}, {"ru"}, function(locale, value) return "Пока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru..", вы получаете {movement_speed:%s} к скорости движения."..TALENTS_Enh_desc_ru.ED_PSY_Ability_3_3_rgb_ru end),

	--[+ Ability 3-4 - Reality Anchor +]--
	create_template("talent_tree_psy_abil3_004_desc_en", {"loc_ability_psyker_overcharge_reduced_warp_charge_description"}, {"en"}, function(locale, value) return "While overcharging, {talent_name:%s} also reduces your "..COLORS_KWords.Peril_rgb.." Generated by {warp_charge:%s}."..TALENTS_Enh_desc.ED_PSY_Ability_3_4_rgb end), -- talent_name: Scrier's Gaze, warp_charge: -20% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_abil3_004_desc_fr", {"loc_ability_psyker_overcharge_reduced_warp_charge_description"}, {"fr"}, function(locale, value) return "Pendant {talent_name:%s} votre génération de "..COLORS_KWords_fr.Peril_rgb_fr.." est réduite de {warp_charge:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_4_rgb_fr end),
	--[+ Russian +]-- Якорь реальности
	create_template("talent_tree_psy_abil3_004_desc_ru", {"loc_ability_psyker_overcharge_reduced_warp_charge_description"}, {"ru"}, function(locale, value) return "Пока действует "..COLORS_KWords_ru.Scriers_gaze_rgb_ru..", вы получаете {warp_charge:%s} к генерированию "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Ability_3_4_rgb_ru end),

	--[+ Ability 3-5 - Warp Unbound +]--
	create_template("talent_tree_psy_abil3_005_desc_en", {"loc_talent_psyker_overcharge_infinite_casting_desc"}, {"en"}, function(locale, value) return "{talent_name:%s} now also prevents overloading from "..COLORS_KWords.Perils_rgb.." of the Warp, during its lingering effect."..TALENTS_Enh_desc.ED_PSY_Ability_3_5_rgb end), -- talent_name: Scrier's Gaze
	--[+ French +]--
	create_template("talent_tree_psy_abil3_005_desc_fr", {"loc_talent_psyker_overcharge_infinite_casting_desc"}, {"fr"}, function(locale, value) return "{talent_name:%s} empêche désormais également la surcharge due aux "..COLORS_KWords_fr.Perils_rgb_fr.." de Warp, pendant son effet persistant."..TALENTS_Enh_desc_fr.ED_PSY_Ability_3_5_rgb_fr end),
	--[+ Russian +]-- Высвобождение варпа -- руоф Искажение варпа
	create_template("talent_tree_psy_abil3_005_desc_ru", {"loc_talent_psyker_overcharge_infinite_casting_desc"}, {"ru"}, function(locale, value) return "В течение "..COLORS_Numbers.n_10_rgb.." секунд после окончания действия способности "..COLORS_KWords_ru.Scriers_gaze_rgb_ru..", вы можете использовать все генерирующие "..COLORS_KWords_ru.Perl_rgb_ru.." действия без угрозы взрыва, даже при "..COLORS_Numbers.pc_100_rgb.." "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Ability_3_5_rgb_ru end),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ Keystone 1 - Warp Siphon +]--
	create_template("talent_tree_psy_keys1_000_desc_en", {"loc_talent_psyker_souls_desc"}, {"en"}, function(locale, value) return "Killing an Elite or Specialist Enemy gains you a Warp Charge for {duration:%s} seconds, Stacking {stack:%s} times. Your next "..COLORS_KWords.Combat_ability_rgb.." spends all available Warp Charges to reduce the "..COLORS_KWords.Cd_rgb.." of that "..COLORS_KWords.Combat_ability_rgb.." by {cooldown_reduction:%s} per Warp Charge."..TALENTS_Enh_desc.ED_PSY_Keystone_1_rgb end), -- duration: 25, stack: 4, cooldown_reduction: 7.5% -- time(s)->times -- colors
	--[+ French +]--
	create_template("talent_tree_psy_keys1_000_desc_fr", {"loc_talent_psyker_souls_desc"}, {"fr"}, function(locale, value) return "Éliminer un ennemi Élite ou Spécialiste vous accorde une charge de Siphon de Warp pendant {duration:%s} secondes, Se cumuls jusqu'à {stack:%s} fois. Votre prochaine "..COLORS_KWords_fr.Combat_ability_rgb_fr.." utilise toutes les charges de Siphon de Warp disponibles pour une "..COLORS_KWords_fr.Ability_cd_rgb_fr.." de cette "..COLORS_KWords_fr.Combat_ability_rgb_fr.." de {cooldown_reduction:%s} par charge de Siphon de Warp."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_rgb_fr end),
	--[+ Russian +]--
	create_template("talent_tree_psy_keys1_000_desc_ru", {"loc_talent_psyker_souls_desc"}, {"ru"}, function(locale, value) return "Убийство элитного врага или специалиста даёт вам варп-заряд на {duration:%s} секунд, суммируется {stack:%s} раза. Следующая применённая "..COLORS_KWords_ru.Combat_abil_rgb_ru.." потратит все доступные варп-заряды и уменьшит своё время "..COLORS_KWords_ru.Cd_rgb_ru.." на {cooldown_reduction:%s} за каждый варп-заряд."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_rgb_ru end),

	--[+ Keystone 1-1 - Inner Tranquility +]--
	create_template("talent_tree_psy_keys1_001_desc_en", {"loc_talent_psyker_reduced_warp_charge_cost_venting_speed_desc"}, {"en"}, function(locale, value) return "{warp_charge_amount:%s} "..COLORS_KWords.Peril_rgb.." Generation Reduction for each Warp Charge."..TALENTS_Enh_desc.ED_PSY_Keystone_1_1_rgb end), -- warp_charge_amount: -6% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_keys1_001_desc_fr", {"loc_talent_psyker_reduced_warp_charge_cost_venting_speed_desc"}, {"fr"}, function(locale, value) return "Réduction de la génération de "..COLORS_KWords_fr.Peril_rgb_fr.." de {warp_charge_amount:%s} pour chaque charge de Siphon de Warp."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_1_rgb_fr end),
	--[+ Russian +]-- Внутреннее спокойствие
	create_template("talent_tree_psy_keys1_001_desc_ru", {"loc_talent_psyker_reduced_warp_charge_cost_venting_speed_desc"}, {"ru"}, function(locale, value) return "{warp_charge_amount:%s} генерации "..COLORS_KWords_ru.Peril_rgb_ru.." за каждый варп-заряд."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_1_rgb_ru end),

	--[+ Keystone 1-2 - Essence Harvest +]--
	create_template("talent_tree_psy_keys1_002_desc_en", {"loc_talent_psyker_toughness_regen_on_soul_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.pc_6_rgb.." "..COLORS_KWords.Toughness_rgb.." is replenished per second for {time:%s} seconds after gaining Warp Charge, up to a Maximum of {toughness:%s}. Gaining a new Warp Charge during this time resets the timer."..TALENTS_Enh_desc.ED_PSY_Keystone_1_2_rgb end), -- toughness: 30%, time: 5 --  s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_keys1_002_desc_fr", {"loc_talent_psyker_toughness_regen_on_soul_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.pc_6_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." est régénérée par seconde pendant {time:%s} secondes après avoir gagné une charge de Siphon de Warp, jusqu'à un maximum de {toughness:%s}. Gagner une nouvelle charge pendant ce temps réinitialise le compte à rebours."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_2_rgb_fr end),
	--[+ Russian +]-- Сбор сущностей -- руоф Сбор сущности
	create_template("talent_tree_psy_keys1_002_desc_ru", {"loc_talent_psyker_toughness_regen_on_soul_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.pc_6_rgb.." "..COLORS_KWords_ru.Toughness_rgb_ru.." в секунду восстанавливается в течение {time:%s} секунд после получения варп-заряда, вплоть до максимальных {toughness:%s}. Получение нового варп-заряда обновляет таймер."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_2_rgb_ru end),

	--[+ Keystone 1-3 - Empyrean Empowerment +]--
	create_template("talent_tree_psy_keys1_003_desc_en", {"loc_talent_psyker_souls_increase_damage_desc"}, {"en"}, function(locale, value) return "{damage:%s} increase to all Base "..COLORS_KWords.Damage_rgb.." for each Warp Charge."..TALENTS_Enh_desc.ED_PSY_Keystone_1_3_rgb end), -- damage: +4% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_keys1_003_desc_fr", {"loc_talent_psyker_souls_increase_damage_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de toute les sources pour chaque charge de Siphon de Warp."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_3_rgb_fr end),
	--[+ Russian +]-- Эмпирейское усиление -- руоф Усиление влияния Эмпирея
	create_template("talent_tree_psy_keys1_003_desc_ru", {"loc_talent_psyker_souls_increase_damage_desc"}, {"ru"}, function(locale, value) return "{damage:%s} ко всему базовому "..COLORS_KWords_ru.Damage_rgb_ru.." за каждый варп-заряд."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_3_rgb_ru end),

	--[+ Keystone 1-4 - In Fire Reborn +]--
	create_template("talent_tree_psy_keys1_004_desc_en", {"loc_talent_psyker_warpfire_generates_souls_desc"}, {"en"}, function(locale, value) return "{chance:%s} chance to gain a Warp Charge when you or an Ally kill an enemy who is currently affected by "..COLORS_KWords.Soulblaze_rgb.."."..TALENTS_Enh_desc.ED_PSY_Keystone_1_4_rgb end), -- chance: 10% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_keys1_004_desc_fr", {"loc_talent_psyker_warpfire_generates_souls_desc"}, {"fr"}, function(locale, value) return "{chance:%s} chance de gagner une charge de Siphon de Warp lorsque vous ou un allié éliminer un ennemi actuellement affecté par "..COLORS_KWords_fr.Soulblaze_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_4_rgb_fr end),
	--[+ Russian +]-- Возрождение в огне -- руоф В огне восстану
	create_template("talent_tree_psy_keys1_004_desc_ru", {"loc_talent_psyker_warpfire_generates_souls_desc"}, {"ru"}, function(locale, value) return "{chance:%s} шанс получить варп-заряд, когда вы или ваш союзник убиваете врага, на которого в данный момент действует эффект "..COLORS_KWords_ru.Soulblaze_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_4_rgb_ru end),

	--[+ Keystone 1-5 - Psychic Vampire +]--
	create_template("talent_tree_psy_keys1_006_desc_en", {"loc_talent_psyker_souls_on_kill_coop_desc"}, {"en"}, function(locale, value) return "{soul_chance:%s} chance to gain a Warp Charge whenever you or an Ally in "..COLORS_KWords.Coherency_rgb.." kills an enemy."..TALENTS_Enh_desc.ED_PSY_Keystone_1_5_rgb end), -- soul_chance: 4%
	--[+ French +]--
	create_template("talent_tree_psy_keys1_006_desc_fr", {"loc_talent_psyker_souls_on_kill_coop_desc"}, {"fr"}, function(locale, value) return "{soul_chance:%s} chance de gagner une charge de Siphon de Warp chaque fois que vous ou un allié en syntonie éliminés un ennemi."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_5_rgb_fr end),
	--[+ Russian +]-- Психический вампир
	create_template("talent_tree_psy_keys1_006_desc_ru", {"loc_talent_psyker_souls_on_kill_coop_desc"}, {"ru"}, function(locale, value) return "{soul_chance:%s} шанс получить варп-заряд, когда вы или ваш союзник в "..COLORS_KWords_ru.Coherency_rgb_ru.." убиваете врага."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_5_rgb_ru end),

	--[+ Keystone 1-6 - Warp Battery +]--
	create_template("talent_tree_psy_keys1_005_desc_en", {"loc_talent_psyker_increased_souls_desc"}, {"en"}, function(locale, value) return "You can store up to {soul_amount:%s} Warp Charges."..TALENTS_Enh_desc.ED_PSY_Keystone_1_6_rgb end), -- soul_amount: 6
	--[+ French +]--
	create_template("talent_tree_psy_keys1_005_desc_fr", {"loc_talent_psyker_increased_souls_desc"}, {"fr"}, function(locale, value) return "Vous pouvez stocker jusqu'à {soul_amount:%s} charges de Siphon de Warp."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_1_6_rgb_fr end),
	--[+ Russian +]-- Варп-аккумулятор
	create_template("talent_tree_psy_keys1_005_desc_ru", {"loc_talent_psyker_increased_souls_desc"}, {"ru"}, function(locale, value) return "Вы можете хранить до {soul_amount:%s} варп-зарядов."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_1_6_rgb_ru end),

	--[+ Keystone 2 - Empowered Psionics +]--
	create_template("talent_tree_psy_keys2_000_desc_en", {"loc_talent_psyker_empowered_ability_description"}, {"en"}, function(locale, value) return "Kills have a {chance:%s} chance to Empower your next Blitz.\nEmpowered {blitz_one:%s}:\n{smite_damage:%s} "..COLORS_KWords.Damage_rgb..",\n{smite_cost:%s} "..COLORS_KWords.Peril_rgb.." Cost Reduction,\n{smite_attack_speed:%s} Cast time Reduction."..TALENTS_Enh_desc.ED_PSY_Keystone_2_0_1_rgb.."\nEmpowered {blitz_two:%s}:\n{chain_lightning_damage:%s} "..COLORS_KWords.Damage_rgb..",\n{chain_lightning_jump_time_multiplier:%s} faster spread between Enemies."..TALENTS_Enh_desc.ED_PSY_Keystone_2_0_2_rgb.."\nEmpowered {blitz_three:%s}:\n{throwing_knives_cost:%s} "..COLORS_KWords.Peril_rgb.." Cost Reduction,\nBase "..COLORS_KWords.Damage_rgb.." increase from {throwing_knives_old_damage:%s} to {throwing_knives_new_damage:%s}.\nDoes not consume any charges."..TALENTS_Enh_desc.ED_PSY_Keystone_2_0_3_rgb end), -- chance: 7.5%, blitz_one: Brain Rupture, smite_cost: 100%, smite_attack_speed: 50%, smite_damage: +50%, blitz_two: Smite, chain_lightning_damage: +200%, chain_lightning_jump_time_multiplier: 50%, blitz_three: Assail, throwing_knives_cost: 100%, throwing_knives_old_damage: 100, throwing_knives_new_damage: 150 -- colors
	--[+ French +]--
	create_template("talent_tree_psy_keys2_000_desc_fr", {"loc_talent_psyker_empowered_ability_description"}, {"fr"}, function(locale, value) return "Les éliminations ont {chance:%s} de chances de renforcer votre prochain Blitz.\n{blitz_one:%s} augmenté:\n{smite_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..",\n{smite_cost:%s} de Réduction du coût de "..COLORS_KWords_fr.Peril_rgb_fr..",\n{smite_attack_speed:%s} de Vitesse de chargement."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_2_0_1_rgb_fr.."\n{blitz_two:%s} augmenté:\n{chain_lightning_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..",\n{chain_lightning_jump_time_multiplier:%s} de vitesse de propagation entre les ennemis."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_2_0_2_rgb_fr.."\n{blitz_three:%s} augmenté:\n{throwing_knives_cost:%s} de Réduction du coût de "..COLORS_KWords_fr.Peril_rgb_fr..",\nAugmentation des dégâts de base de {throwing_knives_old_damage:%s} à {throwing_knives_new_damage:%s}.\nNe consomme aucun projectile."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_2_0_3_rgb_fr end),
	--[+ Russian +]-- Усиленная псионика -- руоф Усиленные псионики
	create_template("talent_tree_psy_keys2_000_desc_ru", {"loc_talent_psyker_empowered_ability_description"}, {"ru"}, function(locale, value) return "Убийства имеют {chance:%s} шанс усилить ваш следующий блиц.\nУсиленный {blitz_one:%s}:\n{smite_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"..COLORS_Numbers.n_minus_rgb.."{smite_cost:%s} генерации "..COLORS_KWords_ru.Peril_rgb_ru.." и\nна {smite_attack_speed:%s} сокращается время заряжания."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_2_0_1_rgb_ru.."\nУсиленное {blitz_two:%s}:\n{chain_lightning_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n"..COLORS_Numbers.n_plus_rgb.."{chain_lightning_jump_time_multiplier:%s} к скорости распространения между врагами."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_2_0_2_rgb_ru.."\nУсиленное {blitz_three:%s}:\nНе тратит снаряды.\n"..COLORS_Numbers.n_minus_rgb.."{throwing_knives_cost:%s} генерации "..COLORS_KWords_ru.Peril_rgb_ru..",\nСо {throwing_knives_old_damage:%s} до {throwing_knives_new_damage:%s} повышается базовый "..COLORS_KWords_ru.Dmg_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_2_0_3_rgb_ru end),

	--[+ Keystone 2-1 - Bio-Lodestone +]--
	create_template("talent_tree_psy_keys2_001_desc_en", {"loc_talent_psyker_increase_empower_chain_lighting_chance_description"}, {"en"}, function(locale, value) return "Increases the chance to gain {talent_name:%s} on Kill from {proc_chance_before:%s} to {proc_chance_after:%s}." end), -- talent_name: Empowered Psionics, proc_chance_before: 7.5%, proc_chance_after: 12.5%
	--[+ French +]--
	create_template("talent_tree_psy_keys2_001_desc_fr", {"loc_talent_psyker_increase_empower_chain_lighting_chance_description"}, {"fr"}, function(locale, value) return "Augmente les chances de gagner {talent_name:%s} lors d'une élimination de {proc_chance_before:%s} à {proc_chance_after:%s}." end),
	--[+ Russian +]-- Биопритяжение +]--
	create_template("talent_tree_psy_keys2_001_desc_ru", {"loc_talent_psyker_increase_empower_chain_lighting_chance_description"}, {"ru"}, function(locale, value) return "С {proc_chance_before:%s} до {proc_chance_after:%s} возрастает шанс получить заряд таланта {talent_name:%s} при убийстве." end),

	--[+ Keystone 2-2 - Psychic Leeching +]--
	create_template("talent_tree_psy_keys2_002_desc_en", {"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies_description"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment for you and Allies in "..COLORS_KWords.Coherency_rgb.." when using your Blitz while {talent_name:%s} is active."..TALENTS_Enh_desc.ED_PSY_Keystone_2_2_rgb end), -- talent_name: Empowered Psionics, toughness: 15% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_keys2_002_desc_fr", {"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies_description"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour vous et vos alliés en syntonie lorsque vous utilisez votre Blitz alors que {talent_name:%s} est actif."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_2_2_rgb_fr end),
	--[+ Russian +]-- Психическое высасывание -- руоф Психическая пиявка
	create_template("talent_tree_psy_keys2_002_desc_ru", {"loc_talent_psyker_empowered_chain_lightnings_replenish_toughness_to_allies_description"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восполняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." при использовании вашего блица, пока активна {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_2_2_rgb_ru end),

	--[+ Keystone 2-3 - Overpowering Souls +]--
	create_template("talent_tree_psy_keys2_003_desc_en", {"loc_talent_psyker_empowered_ability_on_elite_kills_description"}, {"en"}, function(locale, value) return "Guaranteed chance to gain {talent_name:%s} on Elite Kills." end), -- talent_name: Empowered Psionics
	--[+ French +]--
	create_template("talent_tree_psy_keys2_003_desc_fr", {"loc_talent_psyker_empowered_ability_on_elite_kills_description"}, {"fr"}, function(locale, value) return "Chance garantie de gagner {talent_name:%s} lors d'une élimination d'élite." end),
	--[+ Russian +]-- Могучие души +]--
	create_template("talent_tree_psy_keys2_003_desc_ru", {"loc_talent_psyker_empowered_ability_on_elite_kills_description"}, {"ru"}, function(locale, value) return "Гарантированный шанс получить заряд таланта {talent_name:%s} при убийстве элитного врага." end),

	--[+ Keystone 2-4 - Charged Up +]--
	create_template("talent_tree_psy_keys2_004_desc_en", {"loc_talent_psyker_increased_empowered_chain_lightning_stacks_description"}, {"en"}, function(locale, value) return "You can now hold up to {max_stacks:%s} Stacks of {talent_name:%s}." end), -- max_stacks: 3, talent_name: Empowered Psionics
	--[+ French +]--
	create_template("talent_tree_psy_keys2_004_desc_fr", {"loc_talent_psyker_increased_empowered_chain_lightning_stacks_description"}, {"fr"}, function(locale, value) return "Vous pouvez maintenant cumuler jusqu'à {max_stacks:%s} charges de {talent_name:%s}." end),
	--[+ Russian +]-- Заряженный -- руоф Зарядка
	create_template("talent_tree_psy_keys2_004_desc_ru", {"loc_talent_psyker_increased_empowered_chain_lightning_stacks_description"}, {"ru"}, function(locale, value) return "Вы теперь можете держать до {max_stacks:%s} зарядов таланта {talent_name:%s}." end),

	--[+ Keystone 3 - Disrupt Destiny +]--
	create_template("talent_tree_psy_keys3_000_desc_en", {"loc_talent_psyker_marked_enemies_passive_new_desc"}, {"en"}, function(locale, value) return "Every second, Enemies within "..COLORS_Numbers.n_40_rgb.." meters have a chance of being Marked. Killing a Marked Enemy Replenishes {toughness:%s} "..COLORS_KWords.Toughness_rgb..", grants {move_speed:%s} Movement Speed for {move_speed_duration:%s} seconds, and adds a "..COLORS_KWords.Precision_rgb.." Bonus for {bonus_duration} seconds.\nEach "..COLORS_KWords.Precision_rgb.." Bonus grants: {base_damage:%s} "..COLORS_KWords.Damage_rgb..", {crit_damage:%s} "..COLORS_KWords.Crit_dmg_r_rgb.." and {weakspot_damage:%s} "..COLORS_KWords.Weakspot_dmg_rgb..".\n"..COLORS_KWords.Precision_rgb.." Bonus Stacks {bonus_stacks:%s} times and when the duration ends, one Stack is removed and the duration is refreshed."..TALENTS_Enh_desc.ED_PSY_Keystone_3_rgb end), -- radius: 25->40, toughness: 10%, move_speed: +20%, move_speed_duration: 2.5, bonus_duration 4, base_damage: +1%, crit_damage: +2%, weakspot_damage: +2.5%, bonus_stacks: 15 -- m->meters -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_keys3_000_desc_fr", {"loc_talent_psyker_marked_enemies_passive_new_desc"}, {"fr"}, function(locale, value) return "Chaque seconde, les ennemis dans un rayon de "..COLORS_Numbers.n_40_rgb.." mètres ont une chance d'être marqués. Éliminer un ennemi marqué régénère {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr..", augmente la vitesse de déplacement de {move_speed:%s} pendant {move_speed_duration:%s} secondes et ajoute un cumule de "..COLORS_KWords_fr.Precision_rgb_fr.." pendant {bonus_duration} secondes.\nChaque cumule de "..COLORS_KWords_fr.Precision_rgb_fr.." octroie : {base_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..", {crit_damage:%s} de "..COLORS_KWords_fr.Crit_dmg_r_rgb_fr.." et {weakspot_damage:%s} de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr..". Le bonus de "..COLORS_KWords_fr.Precision_rgb_fr.." se cumule jusqu'à {bonus_stacks:%s} fois et lorsque la durée expire, une charge est retirée et la durée est rafraîchie."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_3_rgb_fr end),
	--[+ Russian +]-- Прерывание судьбы -- руоф Разрушенная судьба
	create_template("talent_tree_psy_keys3_000_desc_ru", {"loc_talent_psyker_marked_enemies_passive_new_desc"}, {"ru"}, function(locale, value) return "Каждую секунду враги в радиусе "..COLORS_Numbers.n_40_rgb.." метров могут быть отмечены. Убийство отмеченного врага восстанавливает {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..", даёт {move_speed:%s} к скорости передвижения на {move_speed_duration:%s} секунды, а также добавляет заряд "..COLORS_KWords_ru.Precision_rgb_ru.." на {bonus_duration} секунды.\nКаждый заряд "..COLORS_KWords_ru.Precision_rgb_ru.." даёт: {base_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..", {crit_damage:%s} к "..COLORS_KWords_ru.Crit_dmg_u_rgb_ru.." и {weakspot_damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru..".\nЗаряды "..COLORS_KWords_ru.Precision_rgb_ru.." накапливаются до {bonus_stacks:%s} раз и, когда срок действия заканчивается, снимается "..COLORS_Numbers.n_1_rgb.." заряд, а длительность оставшихся зарядов обновляется."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_3_rgb_ru end),

	--[+ Keystone 3-1 - Perfectionism +]--
	create_template("talent_tree_psy_keys3_001_desc_en", {"loc_talent_psyker_mark_increased_max_stacks_description"}, {"en"}, function(locale, value) return "Maximum "..COLORS_KWords.Precision_rgb.." Bonus Stacks are increased from {stacks_previous:%s} to {stacks_after:%s}." end), -- stacks_previous: 15, stacks_after: 25 -- colors
	--[+ French +]--
	create_template("talent_tree_psy_keys3_001_desc_fr", {"loc_talent_psyker_mark_increased_max_stacks_description"}, {"fr"}, function(locale, value) return "Le nombre maximum de charges de cumuls de "..COLORS_KWords_fr.Precision_rgb_fr.." est augmenté de {stacks_previous:%s} à {stacks_after:%s}." end),
	--[+ Russian +]-- Перфекционизм +]--
	create_template("talent_tree_psy_keys3_001_desc_ru", {"loc_talent_psyker_mark_increased_max_stacks_description"}, {"ru"}, function(locale, value) return "Максимальное количество зарядов "..COLORS_KWords_ru.Precision_rgb_ru.." увеличено с {stacks_previous:%s} до {stacks_after:%s}." end),

	--[+ Keystone 3-2 - Purloin Providence +]--
	create_template("talent_tree_psy_keys3_002_desc_en", {"loc_talent_psyker_mark_kills_can_vent_description"}, {"en"}, function(locale, value) return "{chance:%s} chance to instantly Quell {warp_charge_percentage:%s} of your "..COLORS_KWords.Peril_rgb.." when killing enemies marked by {talent_name:%s}."..TALENTS_Enh_desc.ED_PSY_Keystone_3_2_rgb end), -- talent_name: Disrupt Destiny, chance: 20%, warp_charge_percentage: 15% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_keys3_002_desc_fr", {"loc_talent_psyker_mark_kills_can_vent_description"}, {"fr"}, function(locale, value) return "{chance:%s} chance de réduire instantanément {warp_charge_percentage:%s} de votre "..COLORS_KWords_fr.Peril_rgb_fr.." en tuant des ennemis marqués par {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_3_2_rgb_fr end),
	--[+ Russian +]-- Похищение провидения -- руоф Похищенное провидение
	create_template("talent_tree_psy_keys3_002_desc_ru", {"loc_talent_psyker_mark_kills_can_vent_description"}, {"ru"}, function(locale, value) return "{chance:%s} шанс, что вы моментально подавите {warp_charge_percentage:%s} вашей "..COLORS_KWords_ru.Peril_rgb_ru.." при убийстве врага, отмеченного талантом {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_3_2_rgb_ru end),

	--[+ Keystone 3-3 - Lingering Influence +]--
	create_template("talent_tree_psy_keys3_003_desc_en", {"loc_talent_psyker_mark_increased_duration_description"}, {"en"}, function(locale, value) return "Increase the duration of {talent_name:%s} from {duration_previous:%s} to {duration_after:%s} seconds." end), -- talent_name: Disrupt Destiny, duration_previous: 15, duration_after: 10 -- s->seconds
	--[+ French +]--
	create_template("talent_tree_psy_keys3_003_desc_fr", {"loc_talent_psyker_mark_increased_duration_description"}, {"fr"}, function(locale, value) return "Augmente la durée de {talent_name:%s} de {duration_previous:%s} à {duration_after:%s} secondes." end),
	--[+ Russian +]-- Длительное влияние -- руоф Длящееся влияние
	create_template("talent_tree_psy_keys3_003_desc_ru", {"loc_talent_psyker_mark_increased_duration_description"}, {"ru"}, function(locale, value) return "С {duration_previous:%s} до {duration_after:%s} секунд увеличено действие таланта {talent_name:%s}." end),

	--[+ Keystone 3-4 - Cruel Fortune +]--
	create_template("talent_tree_psy_keys3_004_desc_en", {"loc_talent_psyker_mark_weakspot_stacks_description"}, {"en"}, function(locale, value) return COLORS_KWords.Weakspot_rgb.." Kills grant {stacks:%s} additional Stacks of {talent_name:%s}."..TALENTS_Enh_desc.ED_PSY_Keystone_3_4_rgb end), -- stacks: 2 talent_name: Disrupt Destiny -- colors
	--[+ French +]--
	create_template("talent_tree_psy_keys3_004_desc_fr", {"loc_talent_psyker_mark_weakspot_stacks_description"}, {"fr"}, function(locale, value) return "Les éliminations sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." octroient {stacks:%s} cumuls supplémentaires de {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Keystone_3_4_rgb_fr end),
	--[+ Russian +]-- Жестокая судьба +]--
	create_template("talent_tree_psy_keys3_004_desc_ru", {"loc_talent_psyker_mark_weakspot_stacks_description"}, {"ru"}, function(locale, value)
		return "Убийства в "..COLORS_KWords_ru.Weakspot_rgb_ru.." дают {stacks:%s} дополнительных заряда таланта {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Keystone_3_4_rgb_ru end),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Soulstealer +]--
	create_template("talent_tree_psy_pas_001_desc_en", {"loc_talent_psyker_toughness_on_warp_kill_desc"}, {"en"}, function(locale, value) return "{toughness:%s} of Maximum "..COLORS_KWords.Toughness_rgb.." replenishes on killing an enemy with a Warp attack."..TALENTS_Enh_desc.ED_PSY_Passive_1_rgb end), -- toughness: 7.5%. -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_001_desc_fr", {"loc_talent_psyker_toughness_on_warp_kill_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une élimination d'un ennemi avec une attaque Warp."..TALENTS_Enh_desc_fr.ED_PSY_Passive_1_rgb_fr end),
	--[+ Russian +]-- Похититель душ -- руоф Похититель души
	create_template("talent_tree_psy_pas_001_desc_ru", {"loc_talent_psyker_toughness_on_warp_kill_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при убийстве врага варп-атакой."..TALENTS_Enh_desc_ru.ED_PSY_Passive_1_rgb_ru end),

	--[+ Passive 2 - Mettle +]--
	create_template("talent_tree_psy_pas_002_desc_en", {"loc_talent_psyker_crits_regen_tougness_and_movement_speed_description"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes on "..COLORS_KWords.Crit_hits_rgb..".\n\nAlso grants {movement_speed:%s} increased Movement Speed for {seconds:%s} seconds. Stacks {stacks:%s} times."..TALENTS_Enh_desc.ED_PSY_Passive_2_rgb end), -- toughness: 5%, movement_speed: +5%, seconds: 4, stacks: 3 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_002_desc_fr", {"loc_talent_psyker_crits_regen_tougness_and_movement_speed_description"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hits_rgb_fr..".\n\nOctroie également {movement_speed:%s} de vitesse de déplacement pendant {seconds:%s} secondes. Se cumule jusqu'à {stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_PSY_Passive_2_rgb_fr end),
	--[+ Russian +]-- Ретивость +]--
	create_template("talent_tree_psy_pas_002_desc_ru", {"loc_talent_psyker_crits_regen_tougness_and_movement_speed_description"}, {"ru"}, function(locale, value) return "При "..COLORS_KWords_ru.Crit_hit_e_rgb_ru.." вы восстанавливаете {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..", а также получаете {movement_speed:%s} к скорости передвижения на {seconds:%s} секунды. Суммируется до {stacks:%s} раз."..TALENTS_Enh_desc_ru.ED_PSY_Passive_2_rgb_ru end),

	--[+ Passive 3 - Quietude +]--
	create_template("talent_tree_psy_pas_003_desc_en", {"loc_talent_psyker_toughness_from_vent_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes for each {warp_charge:%s} of "..COLORS_KWords.Peril_rgb.." Quelled."..TALENTS_Enh_desc.ED_PSY_Passive_3_rgb end), -- toughness: 5%, warp_charge: 10% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_003_desc_fr", {"loc_talent_psyker_toughness_from_vent_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par {warp_charge:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." atténué."..TALENTS_Enh_desc_fr.ED_PSY_Passive_3_rgb_fr end),
	--[+ Russian +]-- Спокойствие -- руоф Тишина
	create_template("talent_tree_psy_pas_003_desc_ru", {"loc_talent_psyker_toughness_from_vent_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за каждые {warp_charge:%s} подавленной "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_3_rgb_ru end),

	--[+ Passive 4 - Warp Expenditure +]--
	create_template("talent_tree_psy_pas_004_desc_en", {"loc_talent_psyker_warp_charge_generation_generates_toughness_description"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes for every {warp_charge:%s} "..COLORS_KWords.Peril_rgb.." Generated."..TALENTS_Enh_desc.ED_PSY_Passive_4_rgb end), -- toughness: 2.5%, warp_charge: 10% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_004_desc_fr", {"loc_talent_psyker_warp_charge_generation_generates_toughness_description"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par {warp_charge:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." généré."..TALENTS_Enh_desc_fr.ED_PSY_Passive_4_rgb_fr end),
	--[+ Russian +]-- Затраты варпа +]-- -- руоф Варп-затраты
	create_template("talent_tree_psy_pas_004_desc_ru", {"loc_talent_psyker_warp_charge_generation_generates_toughness_description"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за каждые {warp_charge:%s} "..COLORS_KWords_ru.Peril_rgb_ru..", набранных вами."..TALENTS_Enh_desc_ru.ED_PSY_Passive_4_rgb_ru end),

	--[+ Passive 5 - Perilous Combustion +]--
	create_template("talent_tree_psy_pas_005_desc_en", {"loc_talent_psyker_elite_and_special_kills_add_warpfire_desc"}, {"en"}, function(locale, value) return "Killing an Elite or a Speacialist Enemy applies {stacks:%s} Stacks of "..COLORS_KWords.Soulblaze_rgb.." to nearby Enemies, causing "..COLORS_KWords.Damage_rgb.." over time."..TALENTS_Enh_desc.ED_PSY_Passive_5_rgb end), -- stacks: 3 -- stack(s)->Stacks  -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_005_desc_fr", {"loc_talent_psyker_elite_and_special_kills_add_warpfire_desc"}, {"fr"}, function(locale, value) return "Tuer un ennemi d'élite ou un spécialiste applique {stacks:%s} Stacks d'"..COLORS_KWords_fr.Soulblaze_rgb_fr.." aux ennemis à proximité, infligeant des "..COLORS_KWords_fr.Damage_rgb_fr.." sur la durée."..TALENTS_Enh_desc_fr.ED_PSY_Passive_5_rgb_fr end),
	--[+ Russian +]-- Опасное возгорание +]-- -- руоф Пагубное воспламенение
	create_template("talent_tree_psy_pas_005_desc_ru", {"loc_talent_psyker_elite_and_special_kills_add_warpfire_desc"}, {"ru"}, function(locale, value) return "{stacks:%s} заряда "..COLORS_KWords_ru.Soulblaze_rgb_ru.." накладывается при убийстве элитных врагов или специалистов на ближайших к ним врагов, причиняя "..COLORS_KWords_ru.Dmg_rgb_ru.." с течением времени."..TALENTS_Enh_desc_ru.ED_PSY_Passive_5_rgb_ru end),

	--[+ Passive 6 - Perfect Timing +]--
	create_template("talent_tree_psy_pas_006_desc_en", {"loc_talent_psyker_crits_empower_warp_description"}, {"en"}, function(locale, value) return "{damage:%s} Warp "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on "..COLORS_KWords.Crit_hits_rgb..". Stacks {stacks:%s} times."..TALENTS_Enh_desc.ED_PSY_Passive_6_rgb end), -- damage: +3%, duration: 10, stacks: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_006_desc_fr", {"loc_talent_psyker_crits_empower_warp_description"}, {"fr"}, function(locale, value) return "{damage:%s} des dégâts Warp pendant {duration:%s} secondes sur les "..COLORS_KWords_fr.Crit_hits_rgb_fr..". Se cumule jusqu'à {stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_PSY_Passive_6_rgb_fr end),
	--[+ Russian +]-- Идеальный момент -- руоф Безупречное чувство времени
	create_template("talent_tree_psy_pas_006_desc_ru", {"loc_talent_psyker_crits_empower_warp_description"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damagewrp_rgb_ru.." на {duration:%s} секунд при "..COLORS_KWords_ru.Crit_hit_e_rgb_ru..". Суммируется {stacks:%s} раз."..TALENTS_Enh_desc_ru.ED_PSY_Passive_6_rgb_ru end),

	--[+ Passive 7 - Battle Meditation +]--
	create_template("talent_tree_psy_pas_007_desc_en", {"loc_talent_psyker_base_2_description"}, {"en"}, function(locale, value) return "{chance:%s} chance to Quell {warp_charge_percent:%s} "..COLORS_KWords.Peril_rgb.." on Kill."..TALENTS_Enh_desc.ED_PSY_Passive_7_rgb end), -- chance: 10%, warp_charge_percent: 10% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_007_desc_fr", {"loc_talent_psyker_base_2_description"}, {"fr"}, function(locale, value) return "{chance:%s} de chance de dissiper {warp_charge_percent:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." lors d'une élimination."..TALENTS_Enh_desc_fr.ED_PSY_Passive_7_rgb_fr end),
	--[+ Russian +]-- Боевая медитация +]--
	create_template("talent_tree_psy_pas_007_desc_ru", {"loc_talent_psyker_base_2_description"}, {"ru"}, function(locale, value) return "{chance:%s} шанс подавить {warp_charge_percent:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." при убийстве."..TALENTS_Enh_desc_ru.ED_PSY_Passive_7_rgb_ru end),

	--[+ Passive 8 - Wildfire +]--
	create_template("talent_tree_psy_pas_008_desc_en", {"loc_talent_psyker_warpfire_spread_desc"}, {"en"}, function(locale, value) return "When an Enemy dies while affected by your "..COLORS_KWords.Soulblaze_rgb..", nearby Enemies each gain up to {stacks:%s} Stacks of "..COLORS_KWords.Soulblaze_rgb..". They cannot gain more Stacks than the dying Enemy had."..TALENTS_Enh_desc.ED_PSY_Passive_8_rgb end), -- stacks: 4 -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_008_desc_fr", {"loc_talent_psyker_warpfire_spread_desc"}, {"fr"}, function(locale, value) return "Lorsqu'un ennemi affecté par votre "..COLORS_KWords_fr.Soulblaze_rgb_fr.." meurt, les ennemis proches gagnent chacun jusqu'à {stacks:%s} stacks d'"..COLORS_KWords_fr.Soulblaze_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_8_rgb_fr end),
	--[+ Russian +]-- Неконтролируемый пожар +]-- -- руоф Гремучая смесь
	create_template("talent_tree_psy_pas_008_desc_ru", {"loc_talent_psyker_warpfire_spread_desc"}, {"ru"}, function(locale, value) return "Когда умирает враг, находящийся под воздействием вашего эффекта "..COLORS_KWords_ru.Soulblaze_rgb_ru..", каждый враг рядом с ним получает до {stacks:%s} зарядов "..COLORS_KWords_ru.Soulblaze_rgb_ru..". Они не могут получить больше зарядов, чем было у погибшего врага."..TALENTS_Enh_desc_ru.ED_PSY_Passive_8_rgb_ru end),

	--[+ Passive 9 - Psykinetic's Aura +]--
	create_template("talent_tree_psy_pas_009_desc_en", {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.n_minus_rgb.."{cooldown:%s} "..COLORS_KWords.Ability_cd_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb.." on Elite or Specialist kill."..TALENTS_Enh_desc.ED_PSY_Passive_9_rgb end), -- cooldown: 5% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_009_desc_fr", {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency_desc"}, {"fr"}, function(locale, value) return "Réduit de "..COLORS_Numbers.n_minus_rgb.."{cooldown:%s} le "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." pour vous et les alliés en syntonie à chaque élimination d'élite ou de spécialiste."..TALENTS_Enh_desc_fr.ED_PSY_Passive_9_rgb_fr end),
	--[+ Russian +]-- Аура психокинетика +]--
	create_template("talent_tree_psy_pas_009_desc_ru", {"loc_talent_psyker_elite_kills_give_combat_ability_cd_coherency_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.n_minus_rgb.."{cooldown:%s} времени "..COLORS_KWords_ru.Ability_cd_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." при убийстве элитного врага или специалиста."..TALENTS_Enh_desc_ru.ED_PSY_Passive_9_rgb_ru end),

	--[+ Passive 10 - Mind in Motion +]--
	create_template("talent_tree_psy_pas_010_desc_en", {"loc_talent_psyker_venting_doesnt_slow_desc"}, {"en"}, function(locale, value) return "Your Movement Speed is not reduced while Quelling "..COLORS_KWords.Peril_rgb.."."..TALENTS_Enh_desc.ED_PSY_Passive_10_rgb end), -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_010_desc_fr", {"loc_talent_psyker_venting_doesnt_slow_desc"}, {"fr"}, function(locale, value) return "Votre vitesse de déplacement n'est pas réduite lors de l'atténuation du "..COLORS_KWords_fr.Peril_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_10_rgb_fr end),
	--[+ Russian +]-- Разум в движении -- руоф Движущийся разум
	create_template("talent_tree_psy_pas_010_desc_ru", {"loc_talent_psyker_venting_doesnt_slow_desc"}, {"ru"}, function(locale, value) return "Ваша скорость движения не снижается во время подавления "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_10_rgb_ru end),

	--[+ Passive 11 - Malefic Momentum +]--
	create_template("talent_tree_psy_pas_011_desc_en", {"loc_talent_psyker_kills_stack_other_weapon_damage_both_description"}, {"en"}, function(locale, value) return "{warp_damage:%s} "..COLORS_KWords.Damage_rgb.." to Warp Attacks for {duration:%s} seconds after a non-Warp based Kill. Stacks {stacks:%s} times.\n{non_warp_damage:%s} "..COLORS_KWords.Damage_rgb.." to non-Warp Attacks for {duration:%s} seconds after a Warp based Kill. Stacks {stacks:%s} times."..TALENTS_Enh_desc.ED_PSY_Passive_11_rgb end), -- warp_damage/non_warp_damage: +4%, duration: 8, stacks: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_011_desc_fr", {"loc_talent_psyker_kills_stack_other_weapon_damage_both_description"}, {"fr"}, function(locale, value) return "{warp_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." aux attaques Warp pendant {duration:%s} secondes après une élimination n'utilisant pas le Warp. Se cumule jusqu'à {stacks:%s} fois.\n{non_warp_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." aux attaques n'utilisant pas le Warp pendant {duration:%s} secondes après une élimination utilisant le Warp. Se cumule jusqu'à {stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_PSY_Passive_11_rgb_fr end),
	--[+ Russian +]-- Пагубный импульс -- руоф Пагубный моментум
	create_template("talent_tree_psy_pas_011_desc_ru", {"loc_talent_psyker_kills_stack_other_weapon_damage_both_description"}, {"ru"}, function(locale, value) return "{warp_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." от варп-атак на {duration:%s} секунд после убийства не варп-атакой. Суммируется {stacks:%s} раз.\n{non_warp_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." от не варп-атак на {duration:%s} секунд после убийства варп-атакой. Суммируется {stacks:%s} раз."..TALENTS_Enh_desc_ru.ED_PSY_Passive_11_rgb_ru end),

	--[+ Passive 12 - Channeled Force +]--
	create_template("talent_tree_psy_pas_012_desc_en", {"loc_talent_psyker_force_staff_bonus_desc"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Damage_rgb.." to Force Staff's Primary Attacks after Fully Charged Force Staff Secondary Attacks. Lasts {time:%s} seconds."..TALENTS_Enh_desc.ED_PSY_Passive_12_rgb end), -- damage: +30%, time: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_012_desc_fr", {"loc_talent_psyker_force_staff_bonus_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." aux attaques principales du bâton de force après des attaques secondaires entièrement chargées. Dure {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Passive_12_rgb_fr end),
	--[+ Russian +]-- Направленная сила +]--
	create_template("talent_tree_psy_pas_012_desc_ru", {"loc_talent_psyker_force_staff_bonus_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." от основных атак психосилового посоха после полностью заряженной вторичной атаки. Длится {time:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Passive_12_rgb_ru end),

	--[+ Passive 13 - Perilous Assault +]--
	create_template("talent_tree_psy_pas_013_desc_en", {"loc_talent_psyker_force_staff_wield_speed_desc"}, {"en"}, function(locale, value) return "Up to {wield_speed:%s} Weapon Wield Speed, based on your current "..COLORS_KWords.Peril_rgb.."."..TALENTS_Enh_desc.ED_PSY_Passive_13_rgb end), -- wield_speed: 50% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_013_desc_fr", {"loc_talent_psyker_force_staff_wield_speed_desc"}, {"fr"}, function(locale, value) return "Jusqu'à {wield_speed:%s} de vitesse de changement d'armes, en fonction de votre "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Passive_13_rgb_fr end),
	--[+ Russian +]-- Рискованное нападение -- руоф Пагубное нападение
	create_template("talent_tree_psy_pas_013_desc_ru", {"loc_talent_psyker_force_staff_wield_speed_desc"}, {"ru"}, function(locale, value) return "До "..COLORS_Numbers.n_plus_rgb.."{wield_speed:%s} к скорости смены оружия в зависимости от текущего уровня "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_13_rgb_ru end),

	--[+ Passive 14 - Lightning Speed +]--
	create_template("talent_tree_psy_pas_014_desc_en", {"loc_talent_psyker_melee_attack_speed_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{melee_attack_speed:%s} Melee Attack Speed."..TALENTS_Enh_desc.ED_PSY_Passive_14_rgb end), -- melee_attack_speed: 10% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_014_desc_fr", {"loc_talent_psyker_melee_attack_speed_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{melee_attack_speed:%s} de vitesse d'attaque en mêlée."..TALENTS_Enh_desc_fr.ED_PSY_Passive_14_rgb_fr end),
	--[+ Russian +]-- Молниеносная скорость +]--
	create_template("talent_tree_psy_pas_014_desc_ru", {"loc_talent_psyker_melee_attack_speed_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{melee_attack_speed:%s} к скорости атак ближнего боя."..TALENTS_Enh_desc_ru.ED_PSY_Passive_14_rgb_ru end),

	--[+ Passive 15 - Souldrinker +]--
	create_template("talent_tree_psy_pas_015_desc_en", {"loc_talent_psyker_killing_enemy_with_warpfire_boosts_desc"}, {"en"}, function(locale, value) return "Killing an Enemy with "..COLORS_KWords.Soulblaze_rgb.." restores {toughness:%s} "..COLORS_KWords.Toughness_rgb.." and grants {crit_chance:%s} "..COLORS_KWords.Crit_hit_chance_rgb.." for {duration:%s} seconds."..TALENTS_Enh_desc.ED_PSY_Passive_15_rgb end), -- toughness: 5%, crit_chance: 5%, duration: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_015_desc_fr", {"loc_talent_psyker_killing_enemy_with_warpfire_boosts_desc"}, {"fr"}, function(locale, value) return "Tuer un ennemi sous "..COLORS_KWords_fr.Soulblaze_rgb_fr.." restaure {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." et octroie {crit_chance:%s} de "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.." pendant {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Passive_15_rgb_fr end),
	--[+ Russian +]-- Поглотитель душ -- руоф Поглощение душ
	create_template("talent_tree_psy_pas_015_desc_ru", {"loc_talent_psyker_killing_enemy_with_warpfire_boosts_desc"}, {"ru"}, function(locale, value) return "Убийство врага с помощью эффекта "..COLORS_KWords_ru.Soulblaze_rgb_ru.." восстанавливает {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и даёт "..COLORS_Numbers.n_plus_rgb.."{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на {duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Passive_15_rgb_ru end),

	--[+ Passive 16 - Empyric Shock +]--
	create_template("talent_tree_psy_pas_016_desc_en", {"loc_talent_psyker_force_staff_quick_attack_bonus_desc"}, {"en"}, function(locale, value) return "{damage_taken:%s} more "..COLORS_KWords.Damagewrp_rgb.." per stack you deal to your enemies after hitting them with your Force Staff Primary Attacks. Max Stacks {max_stacks:%s}. Lasts {duration:%s} seconds."..TALENTS_Enh_desc.ED_PSY_Passive_16_rgb end), -- damage_taken: 6%, max_stacks: 5, duration: 10 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_016_desc_fr", {"loc_talent_psyker_force_staff_quick_attack_bonus_desc"}, {"fr"}, function(locale, value) return "{damage_taken:%s} de "..COLORS_KWords_fr.Damagewrp_rgb_fr.." subi par les victimes de votre attaque principale de bâton de force. Jusqu'à {max_stacks:%s} stacks. Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Passive_16_rgb_fr end),
	--[+ Russian +]-- Эмпирический шок
	create_template("talent_tree_psy_pas_016_desc_ru", {"loc_talent_psyker_force_staff_quick_attack_bonus_desc"}, {"ru"}, function(locale, value) return "На {damage_taken:%s} больше "..COLORS_KWords_ru.Damagewrp_a_rgb_ru.." за заряд вы будете наносить вашим врагам после попадания по ним вашими основными атаками психосиловых посохов. Максимум {max_stacks:%s} зарядов. Длится {duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_PSY_Passive_16_rgb_ru end),

	--[+ Passive 17 - By Crack of Bone +]--
	create_template("talent_tree_psy_pas_017_desc_en", {"loc_talent_psyker_melee_weaving_desc"}, {"en"}, function(locale, value) return "{vent:%s} "..COLORS_KWords.Peril_rgb.." Quelling from Melee "..COLORS_KWords.Weakspot_rgb.." kills.\n{warp_generation:%s} Reduction in further "..COLORS_KWords.Peril_rgb.." Generation for {duration:%s} seconds."..TALENTS_Enh_desc.ED_PSY_Passive_17_rgb end), -- vent: 5%, warp_generation: 20%, duration: 4 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_017_desc_fr", {"loc_talent_psyker_melee_weaving_desc"}, {"fr"}, function(locale, value) return "{vent:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." atténué lors d'une éliminations sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." en mélée.\n{warp_generation:%s} de Réduction de la génération de "..COLORS_KWords_fr.Peril_rgb_fr.." pendant {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_PSY_Passive_17_rgb_fr end), 
	--[+ Russian +]-- Треск костей
	create_template("talent_tree_psy_pas_017_desc_ru", {"loc_talent_psyker_melee_weaving_desc"}, {"ru"}, function(locale, value) return "{vent:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." подавляется при убийствах в "..COLORS_KWords_ru.Weakspot_rgb_ru.." оружием ближнего боя.\nНа {warp_generation:%s} снижается дальнейшая генерация "..COLORS_KWords_ru.Peril_rgb_ru.." на {duration:%s} секунды."..TALENTS_Enh_desc_ru.ED_PSY_Passive_17_rgb_ru end),

	--[+ Passive 18 - Warp Splitting +]--
	create_template("talent_tree_psy_pas_018_desc_en", {"loc_talent_psyker_cleave_from_peril_desc"}, {"en"}, function(locale, value) return "Up to {max_cleave:%s} "..COLORS_KWords.Cleave_rgb..", based on "..COLORS_KWords.Peril_rgb.."."..TALENTS_Enh_desc.ED_PSY_Passive_18_rgb end), -- max_cleave: +100% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_018_desc_fr", {"loc_talent_psyker_cleave_from_peril_desc"}, {"fr"}, function(locale, value) return "Jusqu'à {max_cleave:%s} de "..COLORS_KWords_fr.Cleave_rgb_fr..", en fonction du "..COLORS_KWords_fr.Peril_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_18_rgb_fr end),
	--[+ Russian +]-- Расщепление варпа +]--
	create_template("talent_tree_psy_pas_018_desc_ru", {"loc_talent_psyker_cleave_from_peril_desc"}, {"ru"}, function(locale, value) return "До {max_cleave:%s} к "..COLORS_KWords_ru.Cleave_rgb_ru..", в зависимости от уровня "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_18_rgb_ru end),

	--[+ Passive 19 - Unlucky for Some +]--
	create_template("talent_tree_psy_pas_019_desc_en", {"loc_talent_psyker_restore_toughness_to_allies_when_ally_down_description"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenished to all other Allies in "..COLORS_KWords.Coherency_rgb.." when an Ally in "..COLORS_KWords.Coherency_rgb.." gets Knocked Down."..TALENTS_Enh_desc.ED_PSY_Passive_19_rgb end), -- toughness: 100% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_019_desc_fr", {"loc_talent_psyker_restore_toughness_to_allies_when_ally_down_description"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour tout les autres alliés en syntonie lorsqu'un allié en syntonie est mis à terre."..TALENTS_Enh_desc_fr.ED_PSY_Passive_19_rgb_fr end),
	--[+ Russian +]-- Не везёт некоторым +]-- -- руоф Некоторым не повезло
	create_template("talent_tree_psy_pas_019_desc_ru", {"loc_talent_psyker_restore_toughness_to_allies_when_ally_down_description"}, {"ru"}, function(locale, value) return "Когда одного из союзников сбивают с ног, {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается всем игрокам, которые находились в этот момент с ним в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_19_rgb_ru end),

	--[+ Passive 20 - One with the Warp +]--
	create_template("talent_tree_psy_pas_020_desc_en", {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge_desc"}, {"en"}, function(locale, value) return "{min_damage:%s} to {max_damage:%s} gain "..COLORS_KWords.Toughness_dmg_red_rgb.." based on your current "..COLORS_KWords.Peril_rgb.."."..TALENTS_Enh_desc.ED_PSY_Passive_20_rgb end), -- min_damage: +10.00%, max_damage: +33.00% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_020_desc_fr", {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge_desc"}, {"fr"}, function(locale, value) return "{min_damage:%s} à {max_damage:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." en fonction de votre "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Passive_20_rgb_fr end),
	--[+ Russian +]-- Единство с варпом
	create_template("talent_tree_psy_pas_020_desc_ru", {"loc_talent_psyker_toughness_damage_reduction_from_warp_charge_desc"}, {"ru"}, function(locale, value) return "От "..COLORS_Numbers.pc_10_rgb.." до "..COLORS_Numbers.pc_33_rgb.." к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." в зависимости от вашего текущего уровня "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_20_rgb_ru end),

	--[+ Passive 21 - Empathic Evasion +]--
	create_template("talent_tree_psy_pas_021_desc_en", {"loc_talent_psyker_dodge_after_crits_description"}, {"en"}, function(locale, value) return "A "..COLORS_KWords.Crit_hit_rgb.." makes you count as Dodging against Ranged Attacks for {duration:%s} second."..TALENTS_Enh_desc.ED_PSY_Passive_21_rgb end), -- duration: 1 -- s->second -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_021_desc_fr", {"loc_talent_psyker_dodge_after_crits_description"}, {"fr"}, function(locale, value) return "Les "..COLORS_KWords_fr.Crit_hit_rgb_fr.." déclenche une esquive contre les attaques à distance pendant {duration:%s} seconde."..TALENTS_Enh_desc_fr.ED_PSY_Passive_21_rgb_fr end),
	--[+ Russian +]-- Эмпатическое уклонение
	create_template("talent_tree_psy_pas_021_desc_ru", {"loc_talent_psyker_dodge_after_crits_description"}, {"ru"}, function(locale, value) return "При "..COLORS_KWords_ru.Crit_hit_rgb_ru.." вы переходите в режим уклонения от дальнобойных атак на {duration:%s} секунду."..TALENTS_Enh_desc_ru.ED_PSY_Passive_21_rgb_ru end),

	--[+ Passive 22 - Anticipation +]--
	create_template("talent_tree_psy_pas_022_desc_en", {"loc_talent_psyker_improved_dodge_description"}, {"en"}, function(locale, value) return "{dodge_linger_time:%s} Dodge duration. Increases the number of Dodges before Dodges starts becoming ineffective by {extra_consecutive_dodges:%s}."..TALENTS_Enh_desc.ED_PSY_Passive_22_rgb end), -- dodge_linger_time: +50%, extra_consecutive_dodges: 1
	--[+ French +]--
	create_template("talent_tree_psy_pas_022_desc_fr", {"loc_talent_psyker_improved_dodge_description"}, {"fr"}, function(locale, value) return "{dodge_linger_time:%s} de durée de l'esquive. Augmente le nombre d'esquives avant que les esquives ne commencent à devenir inefficaces de {extra_consecutive_dodges:%s}."..TALENTS_Enh_desc_fr.ED_PSY_Passive_22_rgb_fr end),
	--[+ Russian +]-- Предвкушение
	create_template("talent_tree_psy_pas_022_desc_ru", {"loc_talent_psyker_improved_dodge_description"}, {"ru"}, function(locale, value) return "Вы получаете {extra_consecutive_dodges:%s} дополнительное уклонение и {dodge_linger_time:%s} к длительности уклонений."..TALENTS_Enh_desc_ru.ED_PSY_Passive_22_rgb_ru end),

	--[+ Passive 23 - Solidity +]--
	create_template("talent_tree_psy_pas_023_desc_en", {"loc_talent_psyker_increased_vent_speed_description"}, {"en"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{vent_speed:%s} Quell Speed."..TALENTS_Enh_desc.ED_PSY_Passive_23_rgb end), -- vent_speed: 30%
	--[+ French +]--
	create_template("talent_tree_psy_pas_023_desc_fr", {"loc_talent_psyker_increased_vent_speed_description"}, {"fr"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{vent_speed:%s} de vitesse d'atténuation."..TALENTS_Enh_desc_fr.ED_PSY_Passive_23_rgb_fr end),
	--[+ Russian +]-- Устойчивость -- руоф Твердость
	create_template("talent_tree_psy_pas_023_desc_ru", {"loc_talent_psyker_increased_vent_speed_description"}, {"ru"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{vent_speed:%s} к скорости подавления "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_23_rgb_ru end),

	--[+ Passive 24 - Puppet Master +]--
	create_template("talent_tree_psy_pas_024_desc_en", {"loc_talent_psyker_coherency_size_increase_description"}, {"en"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{radius_modifier:%s} Radius for your "..COLORS_KWords.Coherency_rgb.." Aura."..TALENTS_Enh_desc.ED_PSY_Passive_24_rgb end), -- radius_modifier: 50% -- + -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_024_desc_fr", {"loc_talent_psyker_coherency_size_increase_description"}, {"fr"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{radius_modifier:%s} de rayon pour votre aura de syntonie."..TALENTS_Enh_desc_fr.ED_PSY_Passive_24_rgb_fr end),
	--[+ Russian +]-- Кукловод
	create_template("talent_tree_psy_pas_024_desc_ru", {"loc_talent_psyker_coherency_size_increase_description"}, {"ru"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{radius_modifier:%s} к радиусу вашей ауры "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_24_rgb_ru end),

	--[+ Passive 25 - Warp Rider +]--
	create_template("talent_tree_psy_pas_025_desc_en", {"loc_talent_psyker_damage_based_on_warp_charge_desc"}, {"en"}, function(locale, value) return "Up to {max_damage:%s} "..COLORS_KWords.Damage_rgb.." from all sources, based on your current "..COLORS_KWords.Peril_rgb.."."..TALENTS_Enh_desc.ED_PSY_Passive_25_rgb end), -- max_damage: +20% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_025_desc_fr", {"loc_talent_psyker_damage_based_on_warp_charge_desc"}, {"fr"}, function(locale, value) return "Jusqu'à {max_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de toutes les sources, basé sur votre "..COLORS_KWords_fr.Peril_rgb_fr.." actuel."..TALENTS_Enh_desc_fr.ED_PSY_Passive_25_rgb_fr end),
	--[+ Russian +]-- Всадник варпа -- руоф Наездник варпа
	create_template("talent_tree_psy_pas_025_desc_ru", {"loc_talent_psyker_damage_based_on_warp_charge_desc"}, {"ru"}, function(locale, value) return "До {max_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." из всех источников в зависимости от уровня вашей текущей "..COLORS_KWords_ru.Peril_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_25_rgb_ru end),

	--[+ Passive 26 - Crystalline Will +]--
	create_template("talent_tree_psy_pas_027_desc_en", {"loc_talent_psyker_alternative_peril_explosion_desc"}, {"en"}, function(locale, value) return "Overloading through "..COLORS_KWords.Perils_rgb.." of the Warp no longer knocks you down, but you still take the appropriate "..COLORS_KWords.Corruptdmg_rgb.."."..TALENTS_Enh_desc.ED_PSY_Passive_26_rgb end), -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_027_desc_fr", {"loc_talent_psyker_alternative_peril_explosion_desc"}, {"fr"}, function(locale, value) return "La surcharge des "..COLORS_KWords_fr.Perils_rgb_fr.." du Warp ne vous met plus à terre, mais vous subissez toujours les "..COLORS_KWords_fr.Corruptdmg_rgb_fr.." appropriées."..TALENTS_Enh_desc_fr.ED_PSY_Passive_26_rgb_fr end),
	--[+ Russian +]-- Чистая воля
	create_template("talent_tree_psy_pas_027_desc_ru", {"loc_talent_psyker_alternative_peril_explosion_desc"}, {"ru"}, function(locale, value) return "Взрыв от перегрузки "..COLORS_KWords_ru.Perils_rgb_ru.." варпа больше не выводит вас из строя, но все ещё применяет к вам соответствующий "..COLORS_KWords_ru.Corruptdmg_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_26_rgb_ru end),

	--[+ Passive 27 - Kinetic Deflection +]--
	create_template("talent_tree_psy_pas_027_desc_en", {"loc_talent_psyker_block_costs_warp_charge_desc"}, {"en"}, function(locale, value) return "While below 97% "..COLORS_KWords.Peril_rgb..", Blocking an attack causes you to gain "..COLORS_KWords.Peril_rgb.." instead of losing "..COLORS_KWords.Stamina_rgb..".\n\nGained "..COLORS_KWords.Peril_rgb.." is {warp_charge_block_cost:%s} of the blocked attack's "..COLORS_KWords.Stamina_rgb.." cost."..TALENTS_Enh_desc.ED_PSY_Passive_27_rgb end), -- warp_charge_block_cost: 25% -- colors
		--[+ French +]--
	create_template("talent_tree_psy_pas_027_desc_fr", {"loc_talent_psyker_block_costs_warp_charge_desc"}, {"fr"}, function(locale, value) return "Tant que vous êtes en dessous de 97 % de "..COLORS_KWords_fr.Peril_rgb_fr..", bloquer une attaque vous fait gagner du "..COLORS_KWords_fr.Peril_rgb_fr.." au lieu de perdre de l'"..COLORS_KWords_fr.Stamina_rgb_fr..".\n\nLe "..COLORS_KWords_fr.Peril_rgb_fr.." gagné représente {warp_charge_block_cost:%s} du coût en "..COLORS_KWords_fr.Stamina_rgb_fr.." de l'attaque bloquée."..TALENTS_Enh_desc_fr.ED_PSY_Passive_27_rgb_fr end),
	--[+ Russian +]-- Кинетическое отклонение
	create_template("talent_tree_psy_pas_027_desc_ru", {"loc_talent_psyker_block_costs_warp_charge_desc"}, {"ru"}, function(locale, value) return "Пока уровень "..COLORS_KWords_ru.Peril_rgb_ru.." ниже "..COLORS_Numbers.pc_97_rgb..", блокирование атак приводит к повышению уровня "..COLORS_KWords_ru.Peril_rgb_ru.." вместо потери "..COLORS_KWords_ru.Stamina_rgb_ru..".\n\nПолучаемый уровень "..COLORS_KWords_ru.Peril_rgb_ru.." составляет {warp_charge_block_cost:%s} от стоимости "..COLORS_KWords_ru.Stamina_rgb_ru..", затрачиваемой на такое же блокирование."..TALENTS_Enh_desc_ru.ED_PSY_Passive_27_rgb_ru end),

	--[+ Passive 28 - Tranquility Through Slaughter +]--
	create_template("talent_tree_psy_pas_028_desc_en", {"loc_talent_psyker_ranged_crits_vent_desc"}, {"en"}, function(locale, value) return "{percent:%s} "..COLORS_KWords.Peril_rgb.." is quelled on Non-Warp Ranged "..COLORS_KWords.Crit_hits_rgb.."."..TALENTS_Enh_desc.ED_PSY_Passive_28_rgb end), -- percent: 4% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_028_desc_fr", {"loc_talent_psyker_ranged_crits_vent_desc"}, {"fr"}, function(locale, value) return "{percent:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." est atténué sur les "..COLORS_KWords_fr.Crit_hits_rgb_fr.." à distance n'utilisant pas le Warp."..TALENTS_Enh_desc_fr.ED_PSY_Passive_28_rgb_fr end),
	--[+ Russian +]-- Спокойствие посредством убийств
	create_template("talent_tree_psy_pas_028_desc_ru", {"loc_talent_psyker_ranged_crits_vent_desc"}, {"ru"}, function(locale, value) return "{percent:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." подавляется при "..COLORS_KWords_ru.Crit_chance_r_rgb_ru.." не из варп источника."..TALENTS_Enh_desc_ru.ED_PSY_Passive_28_rgb_ru end),

	--[+ Passive 29 - Empyric Resolve +]--
	create_template("talent_tree_psy_pas_029_desc_en", {"loc_talent_psyker_warp_glass_cannon_desc"}, {"en"}, function(locale, value) return "{peril_reduction:%s} "..COLORS_KWords.Peril_rgb.." Generation.\n{toughness_reduction:%s} "..COLORS_KWords.Toughness_rgb.." Replenished."..TALENTS_Enh_desc.ED_PSY_Passive_29_rgb end), -- peril_reduction: -40%, toughness_reduction: -30% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_029_desc_fr", {"loc_talent_psyker_warp_glass_cannon_desc"}, {"fr"}, function(locale, value) return "{peril_reduction:%s} de génération de "..COLORS_KWords_fr.Peril_rgb_fr..".\n{toughness_reduction:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_29_rgb_fr end),
	--[+ Russian +]-- Эмпирическая решимость
	create_template("talent_tree_psy_pas_029_desc_ru", {"loc_talent_psyker_warp_glass_cannon_desc"}, {"ru"}, function(locale, value) return "{peril_reduction:%s} генерации "..COLORS_KWords_ru.Peril_rgb_ru..".\n{toughness_reduction:%s} к восстановлению "..COLORS_KWords_ru.Toughness_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_29_rgb_ru end),

	--[+ Passive 30 - Penetration of the Soul +]--
	create_template("talent_tree_psy_pas_030_desc_en", {"loc_talent_psyker_warp_attacks_rending_new_desc"}, {"en"}, function(locale, value) return "{rending:%s} "..COLORS_KWords.Rending_rgb.." on Warp-Attacks when above {threshold:%s} "..COLORS_KWords.Peril_rgb.."."..TALENTS_Enh_desc.ED_PSY_Passive_30_rgb end), -- rending: +10%, threshold: 75% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_030_desc_fr", {"loc_talent_psyker_warp_attacks_rending_new_desc"}, {"fr"}, function(locale, value) return "{rending:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." sur les attaques Warp lorsque vous êtes au-dessus de {threshold:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_PSY_Passive_30_rgb_fr end),
	--[+ Russian +]-- Проникновение в душу
	create_template("talent_tree_psy_pas_030_desc_ru", {"loc_talent_psyker_warp_attacks_rending_new_desc"}, {"ru"}, function(locale, value) return "{rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." для варп-атак, если ваш уровень "..COLORS_KWords_ru.Peril_rgb_ru.." выше {threshold:%s}."..TALENTS_Enh_desc_ru.ED_PSY_Passive_30_rgb_ru end),

	--[+ Passive 31 - True Aim +]--
	create_template("talent_tree_psy_pas_031_desc_en", {"loc_talent_psyker_weakspot_grants_crit_once_description"}, {"en"}, function(locale, value) return "Landing {weakspot_hits:%s} "..COLORS_KWords.Weakspothits_rgb.." grants your next Ranged Attack a guaranteed "..COLORS_KWords.Crit_rgb.."."..TALENTS_Enh_desc.ED_PSY_Passive_31_rgb end), -- weakspot_hits: 5 -- del "Can only trigger once per Attack." -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_031_desc_fr", {"loc_talent_psyker_weakspot_grants_crit_once_description"}, {"fr"}, function(locale, value) return "Toucher {weakspot_hits:%s} "..COLORS_KWords_fr.Weakspothits_rgb_fr.." garantit à votre prochaine attaque à distance un "..COLORS_KWords_fr.Crit_rgb_fr.." garanti."..TALENTS_Enh_desc_fr.ED_PSY_Passive_31_rgb_fr end),
	--[+ Russian +]-- Верная цель
	create_template("talent_tree_psy_pas_031_desc_ru", {"loc_talent_psyker_weakspot_grants_crit_once_description"}, {"ru"}, function(locale, value) return "Попадания {weakspot_hits:%s} раз в "..COLORS_KWords_ru.Weakspot_rgb_ru.." делают вашу следующую дальнобойную атаку гарантированным "..COLORS_KWords_ru.Crit_hit_om_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_PSY_Passive_31_rgb_ru end),

	--[+ Passive 32 - Surety of Arms +]--
	create_template("talent_tree_psy_pas_032_desc_en", {"loc_talent_psyker_reload_speed_warp_desc"}, {"en"}, function(locale, value) return "{reload_speed:%s} Reload Speed while below {threshold:%s} "..COLORS_KWords.Peril_rgb..". On Reload, generate up to {warp_charge:%s} "..COLORS_KWords.Peril_rgb.." based on the Percentage of the Clip Restored."..TALENTS_Enh_desc.ED_PSY_Passive_32_rgb end), --  reload_speed: 25%, threshold: 75%, warp_charge: 25% -- colors
	--[+ French +]--
	create_template("talent_tree_psy_pas_032_desc_fr", {"loc_talent_psyker_reload_speed_warp_desc"}, {"fr"}, function(locale, value) return "{reload_speed:%s} de vitesse de rechargement lorsque vous êtes en dessous de {threshold:%s} de "..COLORS_KWords_fr.Peril_rgb_fr..". Lors du rechargement, générez jusqu'à {warp_charge:%s} de "..COLORS_KWords_fr.Peril_rgb_fr.." en fonction du pourcentage du chargeur restauré."..TALENTS_Enh_desc_fr.ED_PSY_Passive_32_rgb_fr end),
	--[+ Russian +]-- Варп в залог -- руоф Верность оружия
	create_template("talent_tree_psy_pas_032_desc_ru", {"loc_talent_psyker_reload_speed_warp_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{reload_speed:%s} к скорости перезарядки оружия пока ваш уровень "..COLORS_KWords_ru.Peril_rgb_ru.." ниже {threshold:%s}. При перезарядке генерируется до {warp_charge:%s} "..COLORS_KWords_ru.Peril_rgb_ru.." в зависимости от процентного соотношения восстановленных патронов в магазине."..TALENTS_Enh_desc_ru.ED_PSY_Passive_32_rgb_ru end),

--[+ ++ZEALOT - ИЗУВЕР++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ Blitz 0 - Stun Grenade +]--
	create_template("talent_tree_zea_blitz0_000_desc_en", {"loc_ability_shock_grenade_description"}, {"en"}, function(locale, value) return "Throw a "..COLORS_KWords.Stun_gren_rgb.." that "..COLORS_KWords.Electrocutes_rgb.." and "..COLORS_KWords.Stuns_rgb.." all Enemies within its blast radius."..TALENTS_Enh_desc.ED_ZEA_Blitz_0_rgb end), -- colors
	--[+ French +]--
	create_template("talent_tree_zea_blitz0_000_desc_fr", {"loc_ability_shock_grenade_description"}, {"fr"}, function(locale, value) return "Lancez une "..COLORS_KWords_fr.Stun_gren_rgb_fr.." qui vas "..COLORS_KWords_fr.Electrocute_rgb_fr.." et "..COLORS_KWords_fr.Stun_rgb_fr.." tous les ennemis dans son rayon d'explosion."..TALENTS_Enh_desc_fr.ED_ZEA_Blitz_0_rgb_fr end),
	--[+ Russian +]-- Оглушающая граната
	create_template("talent_tree_zea_blitz0_000_desc_ru", {"loc_ability_shock_grenade_description"}, {"ru"}, function(locale, value) return "Вы бросаете "..COLORS_KWords_ru.Stun_gren_rgb_ru..", которая поражает "..COLORS_KWords_ru.Electrocuted_rgb_ru.." и "..COLORS_KWords_ru.Staggers_e_rgb_ru.." всех врагов в радиусе поражения."..TALENTS_Enh_desc_ru.ED_ZEA_Blitz_0_rgb_ru end),

	--[+ Blitz 1 - Stunstorm Grenade +]--
	create_template("talent_tree_zea_blitz1_000_desc_en", {"loc_zealot_improved_stun_grenade_desc"}, {"en"}, function(locale, value) return "Throw a "..COLORS_KWords.Stun_gren_rgb.." that explodes and applies a staggering "..COLORS_KWords.Electrocution_rgb.." effect to all enemies within its range.\n\nThis is an augmented version of {talent_name:%s} with {radius:%s} blast radius."..TALENTS_Enh_desc.ED_ZEA_Blitz_1_rgb end), -- talent_name: Stun Grenade, radius: +50% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_blitz1_000_desc_fr", {"loc_zealot_improved_stun_grenade_desc"}, {"fr"}, function(locale, value) return "Lancez une "..COLORS_KWords_fr.Stun_gren_rgb_fr.." qui vas "..COLORS_KWords_fr.Electrocute_rgb_fr.." et "..COLORS_KWords_fr.Stun_rgb_fr.." tous les ennemis dans sa portée.\n\nCeci est une version augmentée de {talent_name:%s} avec un rayon d'explosion de {radius:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Blitz_1_rgb_fr end),
	--[+ Russian +]-- Оглушающе-штурмовая граната -- руоф Граната шквального оглушения
	create_template("talent_tree_zea_blitz1_000_desc_ru", {"loc_zealot_improved_stun_grenade_desc"}, {"ru"}, function(locale, value) return "Вы бросаете "..COLORS_KWords_ru.Stun_gren_rgb_ru..", которая взрывается и применяет эффект оглушающего "..COLORS_KWords_ru.Electrocution_rgb_ru.." на всех врагов в радиусе взрыва.\n\nЭто улучшенная версия таланта {talent_name:%s} с увеличенным на {radius:%s} радиусом взрыва."..TALENTS_Enh_desc_ru.ED_ZEA_Blitz_1_rgb_ru end),

	--[+ Blitz 2 - Immolation Grenade +]--
	create_template("talent_tree_zea_blitz2_000_desc_en", {"loc_talent_ability_fire_grenade_desc"}, {"en"}, function(locale, value) return "Throw a grenade that leaves a layer of flaming liquid, "..COLORS_KWords.Burning_rgb.." and "..COLORS_KWords.Staggering_rgb.." enemies, and barring their path. Most effective against Unarmoured Enemies."..TALENTS_Enh_desc.ED_ZEA_Blitz_2_rgb end), -- colors
	--[+ French +]--
	create_template("talent_tree_zea_blitz2_000_desc_fr", {"loc_talent_ability_fire_grenade_desc"}, {"fr"}, function(locale, value) return "Lancez une grenade qui laisse une couche de liquide enflammé, "..COLORS_KWords_fr.Burning_rgb_fr.." et faisant "..COLORS_KWords_fr.Staggering_rgb_fr.." les ennemis, barrant la voie. Éfficacité maximale contre les ennemis sans armures."..TALENTS_Enh_desc_fr.ED_ZEA_Blitz_2_rgb_fr end),
	--[+ Russian +]-- Огненная граната -- руоф Жертвенная граната
	create_template("talent_tree_zea_blitz2_000_desc_ru", {"loc_talent_ability_fire_grenade_desc"}, {"ru"}, function(locale, value) return "Вы бросаете гранату, которая оставляет слой горящей жидкости, "..COLORS_KWords_ru.Burnd_rgb_ru.." и "..COLORS_KWords_ru.Staggers_e_rgb_ru.." врагов, преграждая им путь. Наиболее эффективно против небронированных врагов."..TALENTS_Enh_desc_ru.ED_ZEA_Blitz_2_rgb_ru end),

	--[+ Blitz 3 - Blades of Faith +]--
	create_template("talent_tree_zea_blitz3_000_desc_en", {"loc_ability_zealot_throwing_knifes_desc"}, {"en"}, function(locale, value) return "Throw a consecrated knife to deal High "..COLORS_KWords.Damage_rgb.." to a Single Enemy."..TALENTS_Enh_desc.ED_ZEA_Blitz_3_rgb end), -- colors
	--[+ French +]--
	create_template("talent_tree_zea_blitz3_000_desc_fr", {"loc_ability_zealot_throwing_knifes_desc"}, {"fr"}, function(locale, value) return "Lancez un couteau consacré pour infliger de gros "..COLORS_KWords_fr.Damage_rgb_fr.." à un seul ennemi."..TALENTS_Enh_desc_fr.ED_ZEA_Blitz_3_rgb_fr end),
	--[+ Russian +]-- Клинки веры
	create_template("talent_tree_zea_blitz3_000_desc_ru", {"loc_ability_zealot_throwing_knifes_desc"}, {"ru"}, function(locale, value) return "Вы бросаете освящённый нож, нанося высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." одному врагу. Они очень эффективны против большинства врагов, кроме врагов в панцирной броне.\n- Быстрый бросок.\n- "..COLORS_Numbers.n_1_rgb.." нож восполняется за убийство в ближнем бою элитного врага или специалиста, "..COLORS_Numbers.n_2_rgb.." ножа из маленькой сумки с боеприпасами, "..COLORS_Numbers.n_6_rgb.." ножей из большой сумки с боеприпасами, все ножи из ящика с боеприпасами."..TALENTS_Enh_desc_ru.ED_ZEA_Blitz_3_rgb_ru end),

--[+ +AURA - АУРА+ +]--
	--[+ Aura 0 - The Emperors's Will +]--
	create_template("talent_tree_zea_aura0_000_desc_en", {"loc_talent_zealot_aura_toughness_damage_coherency_desc"}, {"en"}, function(locale, value) return "{damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb.."."..TALENTS_Enh_desc.ED_ZEA_Aura_0_n_1_rgb end), -- damage_reduction: +7.5% - colors
	--[+ French +]--
	create_template("talent_tree_zea_aura0_000_desc_fr", {"loc_talent_zealot_aura_toughness_damage_coherency_desc"}, {"fr"}, function(locale, value) return "{damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." pour vous et les alliés en syntonie."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_0_n_1_rgb_fr end),
	--[+ Russian +]-- Воля Императора
	create_template("talent_tree_zea_aura0_000_desc_ru", {"loc_talent_zealot_aura_toughness_damage_coherency_desc"}, {"ru"}, function(locale, value) return "{damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Aura_0_n_1_rgb_ru end),

	--[+ Aura 1 - Benediction +]--
	create_template("talent_tree_zea_aura_001_desc_en", {"loc_talent_zealot_toughness_aura_efficiency_desc"}, {"en"}, function(locale, value) return "{damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n\nThis is an augmented version of the base Aura - {talent_name:%s}."..TALENTS_Enh_desc.ED_ZEA_Aura_0_n_1_rgb end), -- damage_reduction: +15%. talent_name: The Emperor's Will -- colors
	--[+ French +]--
	create_template("talent_tree_zea_aura_001_desc_fr", {"loc_talent_zealot_toughness_aura_efficiency_desc"}, {"fr"}, function(locale, value) return "{damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." pour vous et les alliés en syntonie.\n\nCeci est une version augmentée de l'Aura de base - {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_0_n_1_rgb_fr end),
	--[+ Russian +]-- Благословение
	create_template("talent_tree_zea_aura_001_desc_ru", {"loc_talent_zealot_toughness_aura_efficiency_desc"}, {"ru"}, function(locale, value) return "{damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n\nЭто улучшенная версия базовой ауры - {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_ZEA_Aura_0_n_1_rgb_ru end),

	--[+ Aura 2 - Beacon of Purity +]--
	create_template("talent_tree_zea_aura_002_desc_en", {"loc_talent_zealot_corruption_healing_coherency_improved_desc"}, {"en"}, function(locale, value) return "{corruption:%s} "..COLORS_KWords.Corruption_rgb.." heals from the current "..COLORS_KWords.Wound_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb.." every {interval:%s} second."..TALENTS_Enh_desc.ED_ZEA_Aura_2_rgb end), -- corruption: 1.5, interval: 1 -- s->second -- colors
	--[+ French +]--
	create_template("talent_tree_zea_aura_002_desc_fr", {"loc_talent_zealot_corruption_healing_coherency_improved_desc"}, {"fr"}, function(locale, value) return "Soigne {corruption:%s} de "..COLORS_KWords_fr.Corruption_rgb_fr.." de la blessure actuelle pour vous et les alliés en syntonie toutes les {interval:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_2_rgb_fr end),
	--[+ Russian +]-- Маяк очищения -- руоф Маяк непорочности
	create_template("talent_tree_zea_aura_002_desc_ru", {"loc_talent_zealot_corruption_healing_coherency_improved_desc"}, {"ru"}, function(locale, value) return "{corruption:%s} единицы "..COLORS_KWords_ru.Corruption_i_rgb_ru.." очищается для текущей "..COLORS_KWords_ru.Wound_y_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." каждую секунду."..TALENTS_Enh_desc_ru.ED_ZEA_Aura_2_rgb_ru end),

	--[+ Aura 3 - Loner +]--
	create_template("talent_tree_zea_aura_003_desc_en", {"loc_talent_zealot_always_in_coherency_description"}, {"en"}, function(locale, value) return "Makes Zealot count as being in "..COLORS_KWords.Coherency_rgb.." with one Ally which enables the lowest rate of "..COLORS_KWords.Coherency_rgb.." "..COLORS_KWords.Toughness_rgb.." Regeneration of "..COLORS_Numbers.n_3_75_rgb.." "..COLORS_KWords.Toughness_rgb.." per second."..TALENTS_Enh_desc.ED_ZEA_Aura_3_rgb end), -- coherency_min_stack:2.
	--[+ French +]--
	create_template("talent_tree_zea_aura_003_desc_fr", {"loc_talent_zealot_always_in_coherency_description"}, {"fr"}, function(locale, value) return "Le Fanatique compte comme étant en syntonie avec un allié, ce qui permet le taux le plus bas de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." en syntonie de "..COLORS_Numbers.n_3_75_rgb.." de "..COLORS_KWords_fr.Toughness_rgb_fr.." par seconde."..TALENTS_Enh_desc_fr.ED_ZEA_Aura_3_rgb_fr end),
	--[+ Russian +]-- Единоличник -- руоф Одиночка
	create_template("talent_tree_zea_aura_003_desc_ru", {"loc_talent_zealot_always_in_coherency_description"}, {"ru"}, function(locale, value) return "Восстановление "..COLORS_KWords_ru.Toughness_rgb_ru.." в "..COLORS_KWords_ru.Coherency_rgb_ru.." всегда будет расчитываться так, будто рядом с вами как минимум ещё "..COLORS_Numbers.n_1_rgb.." игрок, что поднимает нижний порог восстановления "..COLORS_KWords_ru.Toughness_rgb_ru.." с "..COLORS_Numbers.n_0_rgb.." до "..COLORS_Numbers.n_3_75_rgb.." в секунду."..TALENTS_Enh_desc_ru.ED_ZEA_Aura_3_rgb_ru end),

--[+ +ABILITIES - СПОСОБНОСТИ+ +]--
	--[+ Ability 0 - Chastise the Wicked +]--
	create_template("talent_tree_zea_abil0_000_desc_en", {"loc_talent_zealot_2_combat_description_new"}, {"en"}, function(locale, value) return "Dash forward, Replenishing {toughness:%s} "..COLORS_KWords.Toughness_rgb..". Your next Melee Hit gains for "..COLORS_Numbers.n_3_rgb.." seconds {damage:%s} "..COLORS_KWords.Damage_rgb.." and is a guaranteed "..COLORS_KWords.Crit_hit_rgb..".\nBase Cooldown: {cooldown:%s} seconds."..TALENTS_Enh_desc.ED_ZEA_Ability_0_rgb end), -- toughness: 50%, damage: 25%, cooldown: 30 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_abil0_000_desc_fr", {"loc_talent_zealot_2_combat_description_new"}, {"fr"}, function(locale, value) return "Effectuez une ruée vers l'avant, régénérez {toughness:%s} "..COLORS_KWords_fr.Toughness_rgb_fr..". Votre prochaine attaque de mêlée gagne {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." et est un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." garanti.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_0_rgb_fr end),
	--[+ Russian +]-- Кара для нечестивых
	create_template("talent_tree_zea_abil0_000_desc_ru", {"loc_talent_zealot_2_combat_description_new"}, {"ru"}, function(locale, value) return "Вы совершаете рывок вперёд, восстанавливая {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..". Ваш следующий удар ближнего боя получает на "..COLORS_Numbers.n_3_rgb.." секунды "..COLORS_Numbers.n_plus_rgb.."{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и будет гарантированно "..COLORS_KWords_ru.Crit_hit_udom_rgb_ru..".\nВремя восстановления: {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_0_rgb_ru end),

	--[+ Ability 1 - Fury of the Faithful +]--
	create_template("talent_tree_zea_abil1_000_desc_en", {"loc_talent_zealot_attack_speed_after_dash_desc"}, {"en"}, function(locale, value) return "Dash forward, Replenishing {toughness:%s} "..COLORS_KWords.Toughness_rgb.." and gaining {attack_speed:%s} Attack Speed for {time:%s} seconds. Your next Melee Hit gains {damage:%s} "..COLORS_KWords.Damage_rgb.." and is a guaranteed "..COLORS_KWords.Crit_hit_rgb..".\nBase Cooldown: {cooldown:%s} seconds.\nThis is an augmented version of {talent_name:%s}."..TALENTS_Enh_desc.ED_ZEA_Ability_1_rgb end), -- toughness: 50%, attack_speed: +20%, time: 10, damage: +25%, cooldown: 30, talent_name: Chastise the Wicked -- &->and -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_abil1_000_desc_fr", {"loc_talent_zealot_attack_speed_after_dash_desc"}, {"fr"}, function(locale, value) return "Effectuez une ruée vers l'avant, régénérez {toughness:%s} "..COLORS_KWords_fr.Toughness_rgb_fr.." et gagne {attack_speed:%s} de vitesse d'attaque pendant {time:%s} secondes. Votre prochaine attaque de mêlée gagne {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." et est un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." garanti.\nTemps de recharge de base : {cooldown:%s} secondes.\nCeci est une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_1_rgb_fr end),
	--[+ Russian +]-- Ярость верующего -- руоф Ударный страх
	create_template("talent_tree_zea_abil1_000_desc_ru", {"loc_talent_zealot_attack_speed_after_dash_desc"}, {"ru"}, function(locale, value) return "Вы совершаете рывок вперёд, восстанавливая {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и получая {attack_speed:%s} к скорости атаки на {time:%s} секунд. Ваш следующий удар ближнего боя получает на "..COLORS_Numbers.n_3_rgb.." секунды {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и будет гарантированно "..COLORS_KWords_ru.Crit_hit_udom_rgb_ru..".\nВремя восстановления: {cooldown:%s} секунд.\nЭто улучшенная версия способности {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_1_rgb_ru end),

	--[+ Ability 1-1 - Redoubled Zeal +]--
	create_template("talent_tree_zea_abil1_001_desc_en", {"loc_talent_zealot_dash_has_more_charges_desc"}, {"en"}, function(locale, value) return "{talent_name:%s} now has {charges:%s} charges."..TALENTS_Enh_desc.ED_ZEA_Ability_1_1_rgb end), -- talent_name: Fury of the Faithful, charges: 2.
	--[+ French +]--
	create_template("talent_tree_zea_abil1_001_desc_fr", {"loc_talent_zealot_dash_has_more_charges_desc"}, {"fr"}, function(locale, value) return "{talent_name:%s} a maintenant {charges:%s} charges."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_1_1_rgb_fr end),
	--[+ Russian +]-- Удвоенное рвение
	create_template("talent_tree_zea_abil1_001_desc_ru", {"loc_talent_zealot_dash_has_more_charges_desc"}, {"ru"}, function(locale, value) return "Способность {talent_name:%s} теперь имеет {charges:%s} заряда."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_1_1_rgb_ru end),

	--[+ Ability 1-2 - Invocation of Death +]--
	create_template("talent_tree_zea_abil1_002_desc_en", {"loc_talent_maniac_cooldown_on_melee_crits_buff_desc"}, {"en"}, function(locale, value) return "{cooldown_regen:%s} "..COLORS_KWords.Ability_cd_rgb.." Regeneration for {duration:%s} seconds on Melee "..COLORS_KWords.Crit_hits_rgb.."."..TALENTS_Enh_desc.ED_ZEA_Ability_1_2_rgb end), -- cooldown_regen: +200%, duration: 4 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_abil1_002_desc_fr", {"loc_talent_maniac_cooldown_on_melee_crits_buff_desc"}, {"fr"}, function(locale, value) return "{cooldown_regen:%s} de régénération du "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." pendant {duration:%s} secondes sur les "..COLORS_KWords_fr.Crit_hits_rgb_fr.." de mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_1_2_rgb_fr end),
	--[+ Russian +]-- Призыв смерти
	create_template("talent_tree_zea_abil1_002_desc_ru", {"loc_talent_maniac_cooldown_on_melee_crits_buff_desc"}, {"ru"}, function(locale, value) return "{cooldown_regen:%s} к скорости "..COLORS_KWords_ru.Ability_cd_rgb_ru.." на {duration:%s} секунды при "..COLORS_KWords_ru.Crit_hit_e_rgb_ru.." ближнего боя."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_1_2_rgb_ru end),

	--[+ Ability 2 - Chorus of Spiritual Fortitude +]--
	create_template("talent_tree_zea_abil2_000_desc_en", {"loc_talent_zealot_bolstering_prayer_variant_two_description"}, {"en"}, function(locale, value) return "Wield a Holy relic that releases pulses of energy "..COLORS_Numbers.n_7_rgb.." times every {interval:%s} seconds.\nEach pulse grants Zealot and Allies in "..COLORS_KWords.Coherency_rgb.." immunity to "..COLORS_KWords.Stuns_rgb.." from both Melee and Ranged attacks and Invulnerability for "..COLORS_Numbers.n_1_5_rgb.." seconds.\nEach pulse Replenishes {toughness:%s} "..COLORS_KWords.Toughness_rgb.." to Allies in "..COLORS_KWords.Coherency_rgb..". If the Ally is at full "..COLORS_KWords.Toughness_rgb.." they instead gain {flat_toughness:%s} Max (yellow) "..COLORS_KWords.Toughness_rgb.." up to a total of {max_toughness:%s}.\nBase Cooldown: {cooldown:%s} seconds."..TALENTS_Enh_desc.ED_ZEA_Ability_2_rgb end), -- interval: 0.8, toughness: 45%, flat_toughness: +20, max_toughness: +100, cooldown: 60 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_abil2_000_desc_fr", {"loc_talent_zealot_bolstering_prayer_variant_two_description"}, {"fr"}, function(locale, value) return "Utilisez une relique sacrée qui libère des pulsations énérgetiques "..COLORS_Numbers.n_7_rgb.." fois toutes les {interval:%s} secondes.\nChaque pulsation accorde au Fanatique et aux alliés en syntonie une immunité aux "..COLORS_KWords_fr.Stuns_rgb_fr.." des attaques de mêlée et de distance et une invulnérabilité de "..COLORS_Numbers.n_1_5_rgb.." secondes.\nChaque pulsation régénère {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour les alliés en syntonie. Si l'allié est à toute ça "..COLORS_KWords_fr.Toughness_rgb_fr..", il gagne à la place {flat_toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." maximale (jaune) jusqu'à un total de {max_toughness:%s}.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_rgb_fr end),
	--[+ Russian +]-- Хор духовной стойкости
	create_template("talent_tree_zea_abil2_000_desc_ru", {"loc_talent_zealot_bolstering_prayer_variant_two_description"}, {"ru"}, function(locale, value) return "Вы берёте в руки Святую реликвию, которая испускает до "..COLORS_Numbers.n_7_rgb.." импульсов энергии, раз в {interval:%s} секунды.\nКаждый импульс даёт изуверу и союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru.." иммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru.." от атак ближнего и дальнего боя, а также в течение "..COLORS_Numbers.n_1_5_rgb.." секунд вас нельзя убить.\nКаждый импульс восполняет {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru..". Если у союзника полный запас "..COLORS_KWords_ru.Toughness_rgb_ru..", он вместо этого получает {flat_toughness:%s} максимальной жёлтой "..COLORS_KWords_ru.Toughness_rgb_ru.." за импульс, вплоть до {max_toughness:%s}.\nВремя восстановления: {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_2_rgb_ru end),

	--[+ Ability 2-1 - Holy Cause +]--
	create_template("talent_tree_zea_abil2_001_desc_en", {"loc_talent_zealot_zealot_channel_grants_defensive_buff_desc"}, {"en"}, function(locale, value) return "After channeling {stacks:%s} pulses, grants {toughness:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." to you and Allies in "..COLORS_KWords.Coherency_rgb..". Lasts {duration:%s} seconds."..TALENTS_Enh_desc.ED_ZEA_Ability_2_1_rgb end), -- stacks: 5, toughness: +30%, duration: 10 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_abil2_001_desc_fr", {"loc_talent_zealot_zealot_channel_grants_defensive_buff_desc"}, {"fr"}, function(locale, value) return "Après avoir canalisé {stacks:%s} pulsations, accorde {toughness:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." à vous et aux alliés en syntonie. Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_1_rgb_fr end),
	--[+ Russian +]-- Святое дело
	create_template("talent_tree_zea_abil2_001_desc_ru", {"loc_talent_zealot_zealot_channel_grants_defensive_buff_desc"}, {"ru"}, function(locale, value) return "После {stacks:%s} импульса, вы и союзники в "..COLORS_KWords_ru.Coherency_rgb_ru.." получаете {toughness:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru..". Длится {duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_2_1_rgb_ru end),

	--[+ Ability 2-2 - Banishing Light +]--
	create_template("talent_tree_zea_abil2_002_desc_en", {"loc_talent_zealot_channel_staggers_desc"}, {"en"}, function(locale, value) return "Each pulse from {talent_name:%s} also "..COLORS_KWords.Staggers_rgb.." and Suppresses Enemies. Range increases with every pulse."..TALENTS_Enh_desc.ED_ZEA_Ability_2_2_rgb end), -- talent_name: Chorus of Spiritual Fortitude -- &->and -- colors
	--[+ French +]--
	create_template("talent_tree_zea_abil2_002_desc_fr", {"loc_talent_zealot_channel_staggers_desc"}, {"fr"}, function(locale, value) return "À Chaque pulsation du {talent_name:%s} les ennemis "..COLORS_KWords_fr.Staggers_rgb_fr.." et sont sous Suppresion. La portée augmente à chaque impulsion."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_2_rgb_fr end),
	--[+ Russian +]-- Изгоняющий свет
	create_template("talent_tree_zea_abil2_002_desc_ru", {"loc_talent_zealot_channel_staggers_desc"}, {"ru"}, function(locale, value) return "Каждый импульс способности {talent_name:%s} также "..COLORS_KWords_ru.Staggers_e_rgb_ru.." и подавляет врагов. Дальность распространения увеличивается с каждым импульсом."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_2_2_rgb_ru end),

	--[+ Ability 2-3 - Ecclesiarch's Call +]--
	create_template("talent_tree_zea_abil2_003_desc_en", {"loc_talent_zealot_zealot_channel_grants_offensive_buff_desc"}, {"en"}, function(locale, value) return "After channeling {stacks:%s} pulses, grants {damage:%s} "..COLORS_KWords.Damage_rgb.." to you and Allies in "..COLORS_KWords.Coherency_rgb..". Lasts {duration:%s} seconds."..TALENTS_Enh_desc.ED_ZEA_Ability_2_3_rgb end), -- stacks: 5, damage: +20%, duration: 10 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_abil2_003_desc_fr", {"loc_talent_zealot_zealot_channel_grants_offensive_buff_desc"}, {"fr"}, function(locale, value) return "Après avoir canalisé {stacks:%s} pulsations, accorde {damage:%s} "..COLORS_KWords_fr.Damage_rgb_fr.." à vous et aux alliés en syntonie. Dure {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_3_rgb_fr end),
	--[+ Russian +]-- Призыв экклезиарха -- руоф Вызов экклезиарха
	create_template("talent_tree_zea_abil2_003_desc_ru", {"loc_talent_zealot_zealot_channel_grants_offensive_buff_desc"}, {"ru"}, function(locale, value) return "После {stacks:%s} импульса, вы и союзники в "..COLORS_KWords_ru.Coherency_rgb_ru.." получаете {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..". Длится {duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_2_3_rgb_ru end),

	--[+ Ability 2-4 - Martyr's Purpose +]--
	create_template("talent_tree_zea_abil2_004_desc_en", {"loc_talent_zealot_damage_taken_restores_cd_description"}, {"en"}, function(locale, value) return "{cooldown_restore:%s} of "..COLORS_KWords.Health_rgb.." "..COLORS_KWords.Damage_rgb.." taken is converted to "..COLORS_KWords.Ability_cd_rgb.." Reduction."..TALENTS_Enh_desc.ED_ZEA_Ability_2_4_rgb end), -- stacks: 5, damage: +20%, duration: 10 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_abil2_004_desc_fr", {"loc_talent_zealot_damage_taken_restores_cd_description"}, {"fr"}, function(locale, value) return "{cooldown_restore:%s} des "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Health_rgb_fr.." subits sont converti en réduction du "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_2_4_rgb_fr end),
	--[+ Russian +]-- Предназначение мученика -- руоф Цель мученика
	create_template("talent_tree_zea_abil2_004_desc_ru", {"loc_talent_zealot_damage_taken_restores_cd_description"}, {"ru"}, function(locale, value) return "Каждый полученный {cooldown_restore:%s} "..COLORS_KWords_ru.Dmg_a_rgb_ru.." "..COLORS_KWords_ru.Health_rgb_ru.." сокращает время "..COLORS_KWords_ru.Combat_ability_cd_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_2_4_rgb_ru end),

	--[+ Ability 3 - Shroudfield +]--
	create_template("talent_tree_zea_abil3_000_desc_en", {"loc_ability_zealot_stealth_description"}, {"en"}, function(locale, value) return "You enter "..COLORS_KWords.Stealth_rgb.." for {duration:%s} seconds and gain {movement_speed:%s} Movement Speed.\nYour next Melee Attack gain:\n{backstab_damage:%s} Backstab "..COLORS_KWords.Damage_rgb..",\n{finesse_damage:%s} "..COLORS_KWords.Finesse_dmg_rgb.." and\n{crit_chance:%s} "..COLORS_KWords.Crit_chance_rgb..".\nBase Cooldown: {cooldown:%s} seconds."..TALENTS_Enh_desc.ED_ZEA_Ability_3_rgb end), -- duration: 3, movement_speed: +20%, backstab_damage: +100%, finesse_damage: +100%, crit_chance: +100%, cooldown: 30 -- s->seconds -- &->and -- colors
	--[+ French +]--
	create_template("talent_tree_zea_abil3_000_desc_fr", {"loc_ability_zealot_stealth_description"}, {"fr"}, function(locale, value) return "Vous passez en "..COLORS_KWords_fr.Stealth_rgb_fr.." pendant {duration:%s} secondes et gagnez {movement_speed:%s} de Vitesse de Déplacement.\nVotre prochaine attaque de Mélée gagne:\n{backstab_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." dans le dos,\n{finesse_damage:%s} de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr.." et\n{crit_chance:%s} "..COLORS_KWords_fr.Crit_chance_rgb_fr..".\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_rgb_fr end),
	--[+ Russian +]-- Покров 
	create_template("talent_tree_zea_abil3_000_desc_ru", {"loc_ability_zealot_stealth_description"}, {"ru"}, function(locale, value) return "Вы входите в режим "..COLORS_KWords_ru.Stealth_rgb_ru.." на {duration:%s} секунды и получаете {movement_speed:%s} к скорости движения.\nВаша следующая атака ближнего боя получает:\n{backstab_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." при ударе в спину,\n{finesse_damage:%s} к "..COLORS_KWords_ru.Finesse_dmg_rgb_ru.." и\n{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru..".\nВремя восстановления: {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_3_rgb_ru end),

	--[+ Ability 3-1 - Master-Crafted Shroudfield +]--
	create_template("talent_tree_zea_abil3_001_desc_en", {"loc_talent_zealot_increased_stealth_duration_description"}, {"en"}, function(locale, value) return COLORS_KWords.Stealth_rgb.." Duration is increased from "..COLORS_Numbers.n_3_rgb.." to {duration_2:%s} seconds." end), -- duration_2: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_abil3_001_desc_fr", {"loc_talent_zealot_increased_stealth_duration_description"}, {"fr"}, function(locale, value) return " La durée de la "..COLORS_KWords_fr.Stealth_rgb_fr.." est augmentée de "..COLORS_Numbers.n_3_rgb.." à {duration_2:%s} secondes." end),
	--[+ Russian +]-- Мастерский покров -- Искусно изготовленный покров
	create_template("talent_tree_zea_abil3_001_desc_ru", {"loc_talent_zealot_increased_stealth_duration_description"}, {"ru"}, function(locale, value) return "Длительность действия "..COLORS_KWords_ru.Stealth_rgb_ru.." увеличивается с "..COLORS_Numbers.n_3_rgb.." до {duration_2:%s} секунд." end),

	--[+ Ability 3-2 - Perfectionist +]--
	create_template("talent_tree_zea_abil3_002_desc_en", {"loc_talent_zealot_stealth_increased_damage_description"}, {"en"}, function(locale, value) return "{talent_name:%s} grants an additional:\n{damage_2:%s} Backstab "..COLORS_KWords.Damage_rgb.." and\n{damage:%s} "..COLORS_KWords.Finesse_dmg_rgb..", but increases "..COLORS_KWords.Ability_cd_rgb.." by {cooldown:%s}."..TALENTS_Enh_desc.ED_ZEA_Ability_3_2_rgb end), -- talent_name: Shroudfield, damage: +50%, damage_2: +50%, cooldown: 25% -- &->and -- colors
	--[+ French +]--
	create_template("talent_tree_zea_abil3_002_desc_fr", {"loc_talent_zealot_stealth_increased_damage_description"}, {"fr"}, function(locale, value) return "{talent_name:%s} octroie:\n{damage_2:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." dans le dos et\n{damage:%s} de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr..", mais augmente le "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." de {cooldown:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_2_rgb_fr end),
	--[+ Russian +]-- Перфекционист 
	create_template("talent_tree_zea_abil3_002_desc_ru", {"loc_talent_zealot_stealth_increased_damage_description"}, {"ru"}, function(locale, value) return "{talent_name:%s} даёт дополнительно:\n{damage_2:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." при ударе в спину и\n{damage:%s} к "..COLORS_KWords_ru.Finesse_dmg_rgb_ru..", но\nна {cooldown:%s} увеличивается время "..COLORS_KWords_ru.Ability_cd_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_3_2_rgb_ru end),

	--[+ Ability 3-3 - Invigorating Revelation +]--
	create_template("talent_tree_zea_abil3_003_desc_en", {"loc_talent_zealot_leaving_stealth_restores_toughness_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes over {time:%s} seconds on leaving "..COLORS_KWords.Stealth_rgb..". Also gain {damage:%s} "..COLORS_KWords.Damage_rgb.." Reduction for {time:%s} seconds."..TALENTS_Enh_desc.ED_ZEA_Ability_3_3_rgb end), -- toughness: 40%, time: 5, damage: +20%, time: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_abil3_003_desc_fr", {"loc_talent_zealot_leaving_stealth_restores_toughness_desc"}, {"fr"}, function(locale, value) return "Vous récuperez {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." en {time:%s} secondes à la sortie de la "..COLORS_KWords_fr.Stealth_rgb_fr..". Vous gagnez aussi une réduction des "..COLORS_KWords_fr.Damage_rgb_fr.." de {damage:%s} pendant {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_3_rgb_fr end),
	--[+ Russian +]-- Оживляющее откровение -- руоф Подбадривающее откровение
	create_template("talent_tree_zea_abil3_003_desc_ru", {"loc_talent_zealot_leaving_stealth_restores_toughness_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за {time:%s} секунд после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru..". Также вы получите {damage:%s} к снижению "..COLORS_KWords_ru.Dmg_a_rgb_ru.." на {time:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_3_3_rgb_ru end),

	--[+ Ability 3-4 - Pious Cut-Throat +]--
	create_template("talent_tree_zea_abil3_004_desc_en", {"loc_talent_zealot_backstab_kills_restore_cd_description"}, {"en"}, function(locale, value) return COLORS_Numbers.n_minus_rgb.."{ability_cooldown:%s} "..COLORS_KWords.Ability_cd_rgb.." on Backstab kills."..TALENTS_Enh_desc.ED_ZEA_Ability_3_4_rgb end), -- ability_cooldown: 20% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_abil3_004_desc_fr", {"loc_talent_zealot_backstab_kills_restore_cd_description"}, {"fr"}, function(locale, value) return COLORS_Numbers.n_minus_rgb.."{ability_cooldown:%s} de "..COLORS_KWords_fr.Ability_cd_rgb_fr.." lors d'un élimination dans le dos."..TALENTS_Enh_desc_fr.ED_ZEA_Ability_3_4_rgb_fr end),
	--[+ Russian +]-- Благочестивый убийца -- руоф Добродетельный головорез
	create_template("talent_tree_zea_abil3_004_desc_ru", {"loc_talent_zealot_backstab_kills_restore_cd_description"}, {"ru"}, function(locale, value) return COLORS_Numbers.n_minus_rgb.."{ability_cooldown:%s} от времени "..COLORS_KWords_ru.Ability_cd_rgb_ru.." при убийстве врага в спину."..TALENTS_Enh_desc_ru.ED_ZEA_Ability_3_4_rgb_ru end),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ Keystone 1 - Blazing Piety +]--
	create_template("talent_tree_zea_keys1_000_desc_en", {"loc_talent_zealot_fanatic_rage_desc"}, {"en"}, function(locale, value) return "When {max_stacks:%s} Enemies have died within {radius:%s} meters of you, you enter "..COLORS_KWords.Fury_rgb.." and get {crit_chance:%s} "..COLORS_KWords.Crit_hit_chance_rgb.." for {duration:%s} seconds. The active "..COLORS_KWords.Fury_rgb.." duration can be refreshed by killing enemies."..TALENTS_Enh_desc.ED_ZEA_Keystone_1_rgb end), -- crit_chance: +15%, duration: 8, max_stacks: 25, radius: 25 -- rewrite -- m->meters -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_keys1_000_desc_fr", {"loc_talent_zealot_fanatic_rage_desc"}, {"fr"}, function(locale, value) return "Quand {max_stacks:%s} ennemis meurent dans un rayon de {radius:%s} mètres autour de vous, vous entrez en "..COLORS_KWords_fr.Fury_rgb_fr.." et obtenez {crit_chance:%s} "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.." pendant {duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_rgb_fr end),
	--[+ Russian +]-- Пылающая благочестивость -- руоф Пламенное благочестие
	create_template("talent_tree_zea_keys1_000_desc_ru", {"loc_talent_zealot_fanatic_rage_desc"}, {"ru"}, function(locale, value) return "Когда {max_stacks:%s} врагов погибает в радиусе {radius:%s} метров от вас, вы входите в режим "..COLORS_KWords_ru.Fury_i_rgb_ru.." и получаете {crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на {duration:%s} секунд. Длительность действия "..COLORS_KWords_ru.Fury_i_rgb_ru.." можно обновить, убивая врагов."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_1_rgb_ru end),

	--[+ Keystone 1-1 - Stalwart +]--
	create_template("talent_tree_zea_keys1_001_desc_en", {"loc_talent_zealot_fanatic_rage_toughness_reduction_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." is restored by triggering "..COLORS_KWords.Fury_rgb..". In addition, while "..COLORS_KWords.Fury_rgb.." is Active, you have {toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.."."..TALENTS_Enh_desc.ED_ZEA_Keystone_1_1_rgb end), -- toughness: 50%, toughness_damage_reduction: +25% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_keys1_001_desc_fr", {"loc_talent_zealot_fanatic_rage_toughness_reduction_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_fr.Toughness_rgb_fr.." est régénérée en déclenchant la "..COLORS_KWords_fr.Fury_rgb_fr..". De plus, pendant que la "..COLORS_KWords_fr.Fury_rgb_fr.." est active, vous avez gagnez {toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_1_rgb_fr end),
	--[+ Russian +]-- Непоколебимый -- руоф Верный последователь
	create_template("talent_tree_zea_keys1_001_desc_ru", {"loc_talent_zealot_fanatic_rage_toughness_reduction_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при входе в "..COLORS_KWords_ru.Fury_rgb_ru.." и пока она активна, вы получаете {toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_1_1_rgb_ru end),

	--[+ Keystone 1-2 - Fury Rising +]--
	create_template("talent_tree_zea_keys1_002_desc_en", {"loc_talent_zealot_fanatic_rage_crits_desc"}, {"en"}, function(locale, value) return "You gain one Stack of "..COLORS_KWords.Fury_rgb.." per Melee or Ranged "..COLORS_KWords.Crit_hit_rgb.."."..TALENTS_Enh_desc.ED_ZEA_Keystone_1_2_rgb end), -- colors
	--[+ French +]--
	create_template("talent_tree_zea_keys1_002_desc_fr", {"loc_talent_zealot_fanatic_rage_crits_desc"}, {"fr"}, function(locale, value) return "Vous gagnez un cumul de "..COLORS_KWords_fr.Fury_rgb_fr.." par "..COLORS_KWords_fr.Crit_hit_rgb_fr.." de mélée et de distance."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_2_rgb_fr end),
	--[+ Russian +]-- Возрастание ярости -- руоф Подъем ярости
	create_template("talent_tree_zea_keys1_002_desc_ru", {"loc_talent_zealot_fanatic_rage_crits_desc"}, {"ru"}, function(locale, value) return "Вы получаете один заряд "..COLORS_KWords_ru.Fury_i_rgb_ru.." за каждый "..COLORS_KWords_ru.Crit_hit_chance_rgb_ru.." ближнего или дальнего боя."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_1_2_rgb_ru end),

	--[+ Keystone 1-3 - Infectious Zeal +]--
	create_template("talent_tree_zea_keys1_003_desc_en", {"loc_talent_zealot_shared_fanatic_rage_desc"}, {"en"}, function(locale, value) return ""..COLORS_Numbers.pc_10_rgb.." "..COLORS_KWords.Crit_chance_rgb.." is spread to Allies in "..COLORS_KWords.Coherency_rgb.." when you reach "..COLORS_Numbers.n_25_rgb.." Stacks of "..COLORS_KWords.Fury_rgb..". "..TALENTS_Enh_desc.ED_ZEA_Keystone_1_3_rgb end), -- crit_chance: +66%, talent_name: Blazing Piety -- colors {crit_chance:%s}
	--[+ French +]--
	create_template("talent_tree_zea_keys1_003_desc_fr", {"loc_talent_zealot_shared_fanatic_rage_desc"}, {"fr"}, function(locale, value) return ""..COLORS_Numbers.pc_10_rgb.." de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." est conféré aux alliés en syntonie lorsque vous atteignez "..COLORS_Numbers.n_25_rgb.." cumuls de "..COLORS_KWords_fr.Fury_rgb_fr..". "..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_3_rgb_fr end),
	--[+ Russian +]-- Заразительное рвение 
	create_template("talent_tree_zea_keys1_003_desc_ru", {"loc_talent_zealot_shared_fanatic_rage_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_10_rgb.." к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." получают союзники в "..COLORS_KWords_ru.Coherency_rgb_ru.." в момент получения вами "..COLORS_Numbers.n_25_rgb.." зарядов "..COLORS_KWords_ru.Fury_i_rgb_ru..". "..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_1_3_rgb_ru end),

	--[+ Keystone 1-4 - Righteous Warrior +]--
	create_template("talent_tree_zea_keys1_004_desc_en", {"loc_talent_zealot_fanatic_rage_improved_desc"}, {"en"}, function(locale, value) return "{crit_chance:%s} "..COLORS_KWords.Crit_hit_chance_rgb.." from {talent_name:%s}."..TALENTS_Enh_desc.ED_ZEA_Keystone_1_4_rgb end), -- crit_chance: +10%, talent_name: Blazing Piety -- colors
	--[+ French +]--
	create_template("talent_tree_zea_keys1_004_desc_fr", {"loc_talent_zealot_fanatic_rage_improved_desc"}, {"fr"}, function(locale, value) return "{crit_chance:%s} de "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.." grâce à {talent_name:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_1_4_rgb_fr end),
	--[+ Russian +]-- Праведный воин 
	create_template("talent_tree_zea_keys1_004_desc_ru", {"loc_talent_zealot_fanatic_rage_improved_desc"}, {"ru"}, function(locale, value) return "{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." дополнительно от таланта {talent_name:%s}."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_1_4_rgb_ru end),

	--[+ Keystone 2 - Martyrdom +]--
	create_template("talent_tree_zea_keys2_000_desc_en", {"loc_talent_zealot_martyrdom_desc"}, {"en"}, function(locale, value) return "{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." for each missing "..COLORS_KWords.Wound_rgb..", up to a Maximum {max_wounds:%s} missing "..COLORS_KWords.Wounds_rgb.."."..TALENTS_Enh_desc.ED_ZEA_Keystone_2_rgb end), -- damage: +8%, max_wounds: 7 -- colors
	--[+ French +]--
	create_template("talent_tree_zea_keys2_000_desc_fr", {"loc_talent_zealot_martyrdom_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mêlée pour chaque "..COLORS_KWords_fr.Wound_rgb_fr.." manquante, jusqu'à un maximum de {max_wounds:%s} "..COLORS_KWords_fr.Wounds_rgb_fr.." manquantes."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_rgb_fr end),
	--[+ Russian +]-- Мученичество 
	create_template("talent_tree_zea_keys2_000_desc_ru", {"loc_talent_zealot_martyrdom_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя за каждую потерянную "..COLORS_KWords_ru.Wound_u_rgb_ru..". Складывается вплоть до {max_wounds:%s} раз."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_2_rgb_ru end),

	--[+ Keystone 2-1 - I Shall Not Fall +]--
	create_template("talent_tree_zea_keys2_001_desc_en", {"loc_talent_zealot_martyrdom_grants_toughness_desc"}, {"en"}, function(locale, value) return "{toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." is granted by {talent_name:%s} for each missing "..COLORS_KWords.Wound_rgb.."."..TALENTS_Enh_desc.ED_ZEA_Keystone_2_1_rgb end), -- talent_name: Martyrdom, toughness_damage_reduction: +6.5% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_keys2_001_desc_fr", {"loc_talent_zealot_martyrdom_grants_toughness_desc"}, {"fr"}, function(locale, value) return "{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." par "..COLORS_KWords_fr.Wound_rgb_fr.." manquante."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_1_rgb_fr end),
	--[+ Russian +]-- Я не паду -- руоф Я не отступлю
	create_template("talent_tree_zea_keys2_001_desc_ru", {"loc_talent_zealot_martyrdom_grants_toughness_desc"}, {"ru"}, function(locale, value) return "{toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." даётся талантом {talent_name:%s} за каждую потерянную "..COLORS_KWords_ru.Wound_u_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_2_1_rgb_ru end),

	--[+ Keystone 2-2 - Maniac +]--
	create_template("talent_tree_zea_keys2_002_desc_en", {"loc_talent_zealot_attack_speed_per_martyrdom_desc"}, {"en"}, function(locale, value) return "{attack_speed:%s} Attack Speed is granted by {talent_name:%s} for each missing "..COLORS_KWords.Wound_rgb.."."..TALENTS_Enh_desc.ED_ZEA_Keystone_2_2_rgb end), -- talent_name: Martyrdom, attack_speed: +4% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_keys2_002_desc_fr", {"loc_talent_zealot_attack_speed_per_martyrdom_desc"}, {"fr"}, function(locale, value) return "{attack_speed:%s} Vitesse d'attaque de mêlée par "..COLORS_KWords_fr.Wound_rgb_fr.." manquante."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_2_2_rgb_fr end),
	--[+ Russian +]-- Маньяк 
	create_template("talent_tree_zea_keys2_002_desc_ru", {"loc_talent_zealot_attack_speed_per_martyrdom_desc"}, {"ru"}, function(locale, value) return "{attack_speed:%s} к скорости атаки даётся талантом {talent_name:%s} за каждую потерянную "..COLORS_KWords_ru.Wound_u_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_2_2_rgb_ru end),

	--[+ Keystone 3 - Inexorable Judgement +]--
	create_template("talent_tree_zea_keys3_000_desc_en", {"loc_talent_zealot_quickness_desc"}, {"en"}, function(locale, value) return "Moving grants you "..COLORS_KWords.Momentum_rgb..". Stacks {max_stacks:%s} times.\nWhen you Hit an Enemy, spend all "..COLORS_KWords.Momentum_rgb.." and gain per Stack for {duration:%s} seconds:\n{damage_modifier:%s} "..COLORS_KWords.Damage_rgb..",\n{melee_attack_speed:%s} Melee Attack Speed,\n{ranged_attack_speed:%s} Ranged Attack Speed."..TALENTS_Enh_desc.ED_ZEA_Keystone_3_rgb end), -- max_stacks: 15, melee_attack_speed: +1%, ranged_attack_speed: +1%, damage_modifier: +1%, duration: 6 -- rewrite colors Notice!
	--[+ French +]--
	create_template("talent_tree_zea_keys3_000_desc_fr", {"loc_talent_zealot_quickness_desc"}, {"fr"}, function(locale, value) return "Vos déplacement vous octroient "..COLORS_KWords_fr.Momentum_rgb_fr..". Se cumule {max_stacks:%s} fois.\nLorsque vous touchez un ennemi, dépensez tout les cumuls de "..COLORS_KWords_fr.Momentum_rgb_fr.." et gagnez par cumul pendant {duration:%s} secondes:\n{damage_modifier:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..",\n{melee_attack_speed:%s} Vitesse d'attaque de mêlée,\n{ranged_attack_speed:%s} Vitesse d'attaque à distance."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_rgb_fr end),
	--[+ Russian +]-- Неумолимый приговор -- руоф Безжалостностный приговор
	create_template("talent_tree_zea_keys3_000_desc_ru", {"loc_talent_zealot_quickness_desc"}, {"ru"}, function(locale, value) return "Движение даёт вам заряды "..COLORS_KWords_ru.Momentum_rgb_ru..". Суммируется {max_stacks:%s} раз.\nПри попадании по врагу, вы тратите все заряды "..COLORS_KWords_ru.Momentum_rgb_ru.." и за каждый заряд получаете на {duration:%s} секунд:\n{damage_modifier:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..",\n{melee_attack_speed:%s} к скорости атаки в ближнем бою,\n{ranged_attack_speed:%s} к скорости атаки в дальнем бою."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_3_rgb_ru end),

	--[+ Keystone 3-1 - Retributor's Stance +]--
	create_template("talent_tree_zea_keys3_001_desc_en", {"loc_talent_zealot_quickness_toughness_per_stack_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." is replenished for each spent Stack of "..COLORS_KWords.Momentum_rgb.."."..TALENTS_Enh_desc.ED_ZEA_Keystone_3_1_rgb end), -- toughness: 2% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_keys3_001_desc_fr", {"loc_talent_zealot_quickness_toughness_per_stack_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." est régénérée pour chaque cumul de "..COLORS_KWords_fr.Momentum_rgb_fr.." dépensé."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_1_rgb_fr end),
	--[+ Russian +]-- Стойка карателя 
	create_template("talent_tree_zea_keys3_001_desc_ru", {"loc_talent_zealot_quickness_toughness_per_stack_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстановливается за каждый потраченный заряд "..COLORS_KWords_ru.Momentum_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_3_1_rgb_ru end),

	--[+ Keystone 3-2 - Inebriate's Poise +]--
	create_template("talent_tree_zea_keys3_002_desc_en", {"loc_talent_zealot_quickness_dodge_stacks_desc"}, {"en"}, function(locale, value) return "Gain {stacks:%s} Stacks of "..COLORS_KWords.Momentum_rgb.." on a successful Dodge."..TALENTS_Enh_desc.ED_ZEA_Keystone_3_2_rgb end), -- stacks: 3 -- colors
	--[+ French +]--
	create_template("talent_tree_zea_keys3_002_desc_fr", {"loc_talent_zealot_quickness_dodge_stacks_desc"}, {"fr"}, function(locale, value) return "Gagnez {stacks:%s} cumuls de "..COLORS_KWords_fr.Momentum_rgb_fr.." après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Keystone_3_2_rgb_fr end),
	--[+ Russian +]-- Грация пьяницы -- руоф Самообладание пьяницы
	create_template("talent_tree_zea_keys3_002_desc_ru", {"loc_talent_zealot_quickness_dodge_stacks_desc"}, {"ru"}, function(locale, value) return "{stacks:%s} заряда "..COLORS_KWords_ru.Momentum_rgb_ru.." вы получаете при успешном уклонении."..TALENTS_Enh_desc_ru.ED_ZEA_Keystone_3_2_rgb_ru end),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Disdain +]--
	create_template("talent_tree_zea_pas_001_desc_en", {"loc_talent_zealot_3_tier_2_ability_1_description"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Damage_rgb.." for every Second Melee Attack you make for each enemy Hit by your previous Melee Attack. Stacks {max_stacks:%s} times."..TALENTS_Enh_desc.ED_ZEA_Passive_1_rgb end), -- damage: +5%, max_stacks: 5 -- rewrite -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_001_desc_fr", {"loc_talent_zealot_3_tier_2_ability_1_description"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pour chaque deuxième attaque de mêlée que vous effectuez pour chaque ennemi touché par votre précédente attaque de mêlée. Se cumule jusqu'à {max_stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_1_rgb_fr end),
	--[+ Russian +]-- Презрение 
	create_template("talent_tree_zea_pas_001_desc_ru", {"loc_talent_zealot_3_tier_2_ability_1_description"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." для каждой второй атаки ближнего боя за каждого врага, поражённого вашей предыдущей атакой ближнего боя. Суммируется {max_stacks:%s} раз."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_1_rgb_ru end),

	--[+ Passive 2 - Backstabber +]--
	create_template("talent_tree_zea_pas_002_desc_en", {"loc_talent_zealot_increased_backstab_damage_description"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Damage_rgb.." on Melee Backstab Hits."..TALENTS_Enh_desc.ED_ZEA_Passive_2_rgb end), -- damage: +20% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_002_desc_fr", {"loc_talent_zealot_increased_backstab_damage_description"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." sur les coups dans le dos en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_2_rgb_fr end),
	--[+ Russian +]-- Бьющий в спину 
	create_template("talent_tree_zea_pas_002_desc_ru", {"loc_talent_zealot_increased_backstab_damage_description"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." при ударах в спину оружием ближнего боя."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_2_rgb_ru end),

	--[+ Passive 3 - Anoint in Blood +]--
	create_template("talent_tree_zea_pas_003_desc_en", {"loc_talent_zealot_ranged_damage_increased_to_close_desc"}, {"en"}, function(locale, value) return "Up to {damage:%s} Base Ranged "..COLORS_KWords.Damage_rgb..", reduced the further you are from the target."..TALENTS_Enh_desc.ED_ZEA_Passive_3_rgb end), -- damage: +25% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_003_desc_fr", {"loc_talent_zealot_ranged_damage_increased_to_close_desc"}, {"fr"}, function(locale, value) return "Jusqu'à {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance , réduits plus vous êtes éloigné de la cible."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_3_rgb_fr end),
	--[+ Russian +]-- Помазанный кровью 
	create_template("talent_tree_zea_pas_003_desc_ru", {"loc_talent_zealot_ranged_damage_increased_to_close_desc"}, {"ru"}, function(locale, value) return "До {damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." дальнего боя, уменьшается по мере удаления от цели."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_3_rgb_ru end),

	--[+ Passive 4 - Scourge +]--
	create_template("talent_tree_zea_pas_004_desc_en", {"loc_talent_zealot_bleed_melee_crit_chance_desc"}, {"en"}, function(locale, value) return "Melee "..COLORS_KWords.Crit_hits_rgb.." apply "..COLORS_KWords.Bleed_rgb..", causing "..COLORS_KWords.Damage_rgb.." over time.\nMelee Hits on "..COLORS_KWords.Bleeding_rgb.." Enemies grant {crit_chance:%s} "..COLORS_KWords.Crit_chance_rgb.." for {duration:%s} seconds. Stacks {max_stacks:%s} times. Up to "..COLORS_Numbers.n_16_rgb.." Max Bleed Stacks on a target."..TALENTS_Enh_desc.ED_ZEA_Passive_4_rgb end), -- crit_chance: +10%, duration: 3, max_stacks: 3 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_004_desc_fr", {"loc_talent_zealot_bleed_melee_crit_chance_desc"}, {"fr"}, function(locale, value) return "Les coups "..COLORS_KWords_fr.Crit_hits_rgb_fr.." en mêlée appliquent "..COLORS_KWords_fr.Bleed_rgb_fr..", causant des "..COLORS_KWords_fr.Damage_rgb_fr.." au fil du temps.\nLes coups en mêlée sur les ennemis qui "..COLORS_KWords_fr.Bleeding_rgb_fr.." octroient {crit_chance:%s} "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant {duration:%s} secondes. Se cumule jusqu'à {max_stacks:%s} fois. Jusqu'à "..COLORS_Numbers.n_16_rgb.." cumuls de saignement max sur une cible."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_4_rgb_fr end),
	--[+ Russian +]-- Бичевание -- руоф Бич
	create_template("talent_tree_zea_pas_004_desc_ru", {"loc_talent_zealot_bleed_melee_crit_chance_desc"}, {"ru"}, function(locale, value) return "К врагам применяется "..COLORS_KWords_ru.Bleeding_rgb_ru.." при "..COLORS_KWords_ru.Crit_hit_rgb_ru.." в ближнем бою, причиняя "..COLORS_KWords_ru.Dmg_rgb_ru.." с течением времени.\nУдары ближнего боя по врагам с зарядами "..COLORS_KWords_ru.Bleed_rgb_ru.." дают {crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на {duration:%s} секунды. Суммируется {max_stacks:%s} раза. До "..COLORS_Numbers.n_16_rgb.." зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." максимум."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_4_rgb_ru end),

	--[+ Passive 5 - Enemies Within, Enemies Without +]--
	create_template("talent_tree_zea_pas_005_desc_en", {"loc_talent_zealot_toughness_regen_in_melee_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishment per second while within {range:%s} meters of at least {num_enemies:%s} enemies."..TALENTS_Enh_desc.ED_ZEA_Passive_5_rgb end), -- toughness: 2.5%, range: 5, num_enemies: 3 - colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_005_desc_fr", {"loc_talent_zealot_toughness_regen_in_melee_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par seconde lorsque vous êtes à moins de {range:%s} mètres d'au moins {num_enemies:%s} ennemis."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_5_rgb_fr end),
	--[+ Russian +]-- Враги внутри, враги снаружи -- руоф Не дай ему уйти
	create_template("talent_tree_zea_pas_005_desc_ru", {"loc_talent_zealot_toughness_regen_in_melee_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду, если в пределах {range:%s} метров от вас находится не менее {num_enemies:%s} врагов."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_5_rgb_ru end),

	--[+ Passive 6 - Fortitude in Fellowship +]--
	create_template("talent_tree_zea_pas_006_desc_en", {"loc_talent_zealot_increased_coherency_regen_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Coherency_rgb.." "..COLORS_KWords.Toughness_rgb.." Regeneration."..TALENTS_Enh_desc.ED_ZEA_Passive_6_rgb end), -- toughness: +50% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_006_desc_fr", {"loc_talent_zealot_increased_coherency_regen_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." en syntonie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_6_rgb_fr end),
	--[+ Russian +]-- Стойкость в товариществе -- руоф Стойкость в общении
	create_template("talent_tree_zea_pas_006_desc_ru", {"loc_talent_zealot_increased_coherency_regen_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливаемой от "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_6_rgb_ru end),

	--[+ Passive 7 - Purge the Unclean +]--
	create_template("talent_tree_zea_pas_007_desc_en", {"loc_talent_zealot_3_passive_2_description"}, {"en"}, function(locale, value) return "{damage:%s} Increased "..COLORS_KWords.Damage_rgb.." against Infested and Unyielding Enemies."..TALENTS_Enh_desc.ED_ZEA_Passive_7_rgb end), -- damage: +20% -- &->and -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_007_desc_fr", {"loc_talent_zealot_3_passive_2_description"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemis infestés et implacable."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_7_rgb_fr end),
	--[+ Russian +]-- Очищение нечестивых -- руоф Очищение нечистых
	create_template("talent_tree_zea_pas_007_desc_ru", {"loc_talent_zealot_3_passive_2_description"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." против заражённых и несгибаемых врагов."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_7_rgb_ru end),

	--[+ Passive 8 - Blood Redemption +]--
	create_template("talent_tree_zea_pas_008_desc_en", {"loc_talent_zealot_toughness_on_melee_kill_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment on Melee Kill."..TALENTS_Enh_desc.ED_ZEA_Passive_8_rgb end), -- toughness:+50%. -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_008_desc_fr", {"loc_talent_zealot_toughness_on_melee_kill_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une élimination en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_8_rgb_fr end),
	--[+ Russian +]-- Искупление кровью -- руоф Кровавое искупление
	create_template("talent_tree_zea_pas_008_desc_ru", {"loc_talent_zealot_toughness_on_melee_kill_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при убийствах в ближнем бою."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_8_rgb_ru end),

	--[+ Passive 9 - Bleed for the Emperor +]--
	create_template("talent_tree_zea_pas_009_desc_en", {"loc_talent_zealot_3_tier_3_ability_2_description"}, {"en"}, function(locale, value) return COLORS_KWords.Damage_rgb.." that would take your "..COLORS_KWords.Health_rgb.." to the next "..COLORS_KWords.Wound_rgb.." is reduced by {damage_reduction:%s}."..TALENTS_Enh_desc.ED_ZEA_Passive_9_rgb end), -- damage_reduction: 40% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_009_desc_fr", {"loc_talent_zealot_3_tier_3_ability_2_description"}, {"fr"}, function(locale, value) return "Les "..COLORS_KWords_fr.Damage_rgb_fr.." qui réduirait votre "..COLORS_KWords_fr.Health_rgb_fr.." à la prochaine "..COLORS_KWords_fr.Wound_rgb_fr.." sont réduit de {damage_reduction:%s}."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_9_rgb_fr end),
	--[+ Russian +]-- Кровь за Императора -- руоф Кровь во имя Императора
	create_template("talent_tree_zea_pas_009_desc_ru", {"loc_talent_zealot_3_tier_3_ability_2_description"}, {"ru"}, function(locale, value) return "На {damage_reduction:%s} снижается "..COLORS_KWords_ru.Dmg_rgb_ru.." который должен был привести к потере "..COLORS_KWords_ru.Wound_rgb_ru.." до следующей "..COLORS_KWords_ru.Wound_y_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_9_rgb_ru end),

	--[+ Passive 10 - Vicious Offering +]--
	create_template("talent_tree_zea_pas_010_desc_en", {"loc_talent_zealot_toughness_on_heavy_kills_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishment on Heavy Attack Kill."..TALENTS_Enh_desc.ED_ZEA_Passive_10_rgb end), -- toughness: 7.5% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_010_desc_fr", {"loc_talent_zealot_toughness_on_heavy_kills_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une élimination en mêlée avec une attaque puissante ."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_10_rgb_fr end),
	--[+ Russian +]-- Жертвоприношение -- руоф Порочное подношение
	create_template("talent_tree_zea_pas_010_desc_ru", {"loc_talent_zealot_toughness_on_heavy_kills_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при убийствах тяжёлыми атаками."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_10_rgb_ru end),

	--[+ Passive 11 - The Voice of Terra +]--
	create_template("talent_tree_zea_pas_011_desc_en", {"loc_talent_zealot_toughness_on_ranged_kill_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishment on Ranged Kill."..TALENTS_Enh_desc.ED_ZEA_Passive_11_rgb end), -- toughness: 2.5% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_011_desc_fr", {"loc_talent_zealot_toughness_on_ranged_kill_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." régénérée lors d'une élimination à distance."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_11_rgb_fr end),
	--[+ Russian +]-- Голос Терры 
	create_template("talent_tree_zea_pas_011_desc_ru", {"loc_talent_zealot_toughness_on_ranged_kill_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при убийствах дальнобойными атаками."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_11_rgb_ru end),

	--[+ Passive 12 - Restoring Faith +]--
	create_template("talent_tree_zea_pas_012_desc_en", {"loc_talent_zealot_heal_damage_taken_desc"}, {"en"}, function(locale, value) return "On taking "..COLORS_KWords.Damage_rgb..", heal {damage_reduction:%s} of that "..COLORS_KWords.Damage_rgb..". Occurs over {time:%s} seconds."..TALENTS_Enh_desc.ED_ZEA_Passive_12_rgb end), -- damage_reduction: 25%, time: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_012_desc_fr", {"loc_talent_zealot_heal_damage_taken_desc"}, {"fr"}, function(locale, value) return "Lorsque vous subissez des "..COLORS_KWords_fr.Damage_rgb_fr..", récuperez de la "..COLORS_KWords_fr.Health_rgb_fr.." à hauteur de {damage_reduction:%s} de ces "..COLORS_KWords_fr.Damage_rgb_fr..". Se produit sur {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_12_rgb_fr end),
	--[+ Russian +]-- Восстановление веры 
	create_template("talent_tree_zea_pas_012_desc_ru", {"loc_talent_zealot_heal_damage_taken_desc"}, {"ru"}, function(locale, value) return "При получении "..COLORS_KWords_ru.Dmg_a_rgb_ru.." "..COLORS_KWords_ru.Health_rgb_ru..", вы восполняете до {damage_reduction:%s} от потерянного "..COLORS_KWords_ru.Wound_rgb_ru..". Срабатывает раз в {time:%s} секунды."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_12_rgb_ru end),

	--[+ Passive 13 - Second Wind +]--
	create_template("talent_tree_zea_pas_013_desc_en", {"loc_talent_zealot_toughness_on_dodge_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishment on a Successful Dodge."..TALENTS_Enh_desc.ED_ZEA_Passive_13_rgb end), -- toughness: 15% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_013_desc_fr", {"loc_talent_zealot_toughness_on_dodge_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors d'une Esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_13_rgb_fr end),
	--[+ Russian +]-- Второе дыхание -- руоф Второй ветер
	create_template("talent_tree_zea_pas_013_desc_ru", {"loc_talent_zealot_toughness_on_dodge_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при успешном уклонении."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_13_rgb_ru end),

	--[+ Passive 14 - Enduring Faith +]--
	create_template("talent_tree_zea_pas_014_desc_en", {"loc_talent_zealot_toughness_melee_effectiveness_desc"}, {"en"}, function(locale, value) return "{toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." on "..COLORS_KWords.Crit_hit_rgb.." for {time:%s} seconds."..TALENTS_Enh_desc.ED_ZEA_Passive_14_rgb end), -- toughness_damage_reduction: +50%, time: 4 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_014_desc_fr", {"loc_talent_zealot_toughness_melee_effectiveness_desc"}, {"fr"}, function(locale, value) return "{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." lors d'un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." pendant {time:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_14_rgb_fr end),
	--[+ Russian +]-- Непоколебимая вера 
	create_template("talent_tree_zea_pas_014_desc_ru", {"loc_talent_zealot_toughness_melee_effectiveness_desc"}, {"ru"}, function(locale, value) return "{toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." при "..COLORS_KWords_ru.Crit_hit_rgb_ru.." на {time:%s} секунды."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_14_rgb_ru end),

	--[+ Passive 15 - The Emperor's Bullet +]--
	create_template("talent_tree_zea_pas_015_desc_en", {"loc_talent_zealot_improved_melee_after_no_ammo_desc"}, {"en"}, function(locale, value) return "{impact:%s} "..COLORS_KWords.Impact_rgb.." strength and {attack_speed:%s} Attack speed for Melee attacks for {duration:%s} seconds after emptying your Ranged weapon."..TALENTS_Enh_desc.ED_ZEA_Passive_15_rgb end), -- impact: +30%, attack_speed: +10%, duration: 5 -- s->seconds -- &->and -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_015_desc_fr", {"loc_talent_zealot_improved_melee_after_no_ammo_desc"}, {"fr"}, function(locale, value) return "{impact:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.." et {attack_speed:%s} de vitesse d'attaque pour les attaques de mêlée pendant {duration:%s} secondes après avoir vidé chargement votre arme à distance."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_15_rgb_fr end),
	--[+ Russian +]-- Пуля Императора 
	create_template("talent_tree_zea_pas_015_desc_ru", {"loc_talent_zealot_improved_melee_after_no_ammo_desc"}, {"ru"}, function(locale, value) return "{impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." и {attack_speed:%s} к скорости атак ближнего боя на {duration:%s} секунд, если вы выстрелили последний патрон из обоймы."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_15_rgb_ru end),

	--[+ Passive 16 - Dance of Death +]--
	create_template("talent_tree_zea_pas_016_desc_en", {"loc_talent_zealot_improved_spread_post_dodge_desc"}, {"en"}, function(locale, value) return "{spread:%s} Spread and {recoil:%s} Recoil for {duration:%s} seconds on successful Dodge."..TALENTS_Enh_desc.ED_ZEA_Passive_16_rgb end), -- spread: -75%, recoil: -50%, duration: 3 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_016_desc_fr", {"loc_talent_zealot_improved_spread_post_dodge_desc"}, {"fr"}, function(locale, value) return "{spread:%s} de dispersion et {recoil:%s} de recul pendant {duration:%s} secondes après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_16_rgb_fr end),
	--[+ Russian +]-- Танец смерти 
	create_template("talent_tree_zea_pas_016_desc_ru", {"loc_talent_zealot_improved_spread_post_dodge_desc"}, {"ru"}, function(locale, value) return "{spread:%s} к разбросу и {recoil:%s} к отдаче на {duration:%s} секунды при успешном уклонении."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_16_rgb_ru end),

	--[+ Passive 17 - Duellist +]--
	create_template("talent_tree_zea_pas_017_desc_en", {"loc_talent_zealot_increased_finesse_post_dodge_description"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Weakspot_rgb.." and "..COLORS_KWords.Crit_hit_rgb.." "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on successful Dodge."..TALENTS_Enh_desc.ED_ZEA_Passive_17_rgb end), -- damage: +50%, duration: 3 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_017_desc_fr", {"loc_talent_zealot_increased_finesse_post_dodge_description"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Weakspot_rgb_fr.." et de "..COLORS_KWords_fr.Crit_hit_rgb_fr.."  pendant {duration:%s} secondes après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_17_rgb_fr end),
	--[+ Russian +]-- Дуэлянт 
	create_template("talent_tree_zea_pas_017_desc_ru", {"loc_talent_zealot_increased_finesse_post_dodge_description"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." и "..COLORS_KWords_ru.Crit_dmg_u_rgb_ru.." на {duration:%s} секунды при успешном уклонении."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_17_rgb_ru end),

	--[+ Passive 18 - Until Death +]--
	create_template("talent_tree_zea_pas_018_desc_en", {"loc_talent_zealot_resist_death_desc"}, {"en"}, function(locale, value) return "Fatal "..COLORS_KWords.Damage_rgb.." instead grants you Invulnerability for {active_duration:%s} seconds. Occurs every {cooldown_duration:%s} seconds."..TALENTS_Enh_desc.ED_ZEA_Passive_18_rgb end), -- active_duration: 5, cooldown_duration: 120 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_018_desc_fr", {"loc_talent_zealot_resist_death_desc"}, {"fr"}, function(locale, value) return "Les "..COLORS_KWords_fr.Damage_rgb_fr.." mortels vous accordent à la place l'invulnérabilité pendant {active_duration:%s} secondes. Se produit toutes les {cooldown_duration:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_18_rgb_fr end),
	--[+ Russian +]-- До самой смерти 
	create_template("talent_tree_zea_pas_018_desc_ru", {"loc_talent_zealot_resist_death_desc"}, {"ru"}, function(locale, value) return "Смертельный "..COLORS_KWords_ru.Dmg_rgb_ru.." теперь не приводит к смерти, но даёт неуязвимость на {active_duration:%s} секунд. Может сработать не чаще, чем раз в {cooldown_duration:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_18_rgb_ru end),

	--[+ Passive 19 - Unremitting +]--
	create_template("talent_tree_zea_pas_019_desc_en", {"loc_talent_zealot_reduced_sprint_cost_description"}, {"en"}, function(locale, value) return "{cost:%s} Sprint "..COLORS_KWords.Stamina_rgb.." cost."..TALENTS_Enh_desc.ED_ZEA_Passive_19_rgb end), -- cost: -20%
	--[+ French +]--
	create_template("talent_tree_zea_pas_019_desc_fr", {"loc_talent_zealot_reduced_sprint_cost_description"}, {"fr"}, function(locale, value) return "{cost:%s} Réduction du coût en "..COLORS_KWords_fr.Stamina_rgb_fr.." de la course."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_19_rgb_fr end),
	--[+ Russian +]-- Неустанный 
	create_template("talent_tree_zea_pas_019_desc_ru", {"loc_talent_zealot_reduced_sprint_cost_description"}, {"ru"}, function(locale, value) return "{cost:%s} от затрат "..COLORS_KWords_ru.Stamina_rgb_ru.." на бег."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_19_rgb_ru end),

	--[+ Passive 20 - Shield of Contempt +]--
	create_template("talent_tree_zea_pas_020_desc_en", {"loc_talent_zealot_3_tier_4_ability_3_description"}, {"en"}, function(locale, value) return "{damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Reduction for {duration:%s} seconds when you or an Ally in "..COLORS_KWords.Coherency_rgb.." takes "..COLORS_KWords.Health_rgb.." "..COLORS_KWords.Damage_rgb..". Triggers every {cooldown:%s} seconds."..TALENTS_Enh_desc.ED_ZEA_Passive_20_rgb end), -- damage_reduction: +60%, duration: 4, cooldown: 10 -- rewrite -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_020_desc_fr", {"loc_talent_zealot_3_tier_4_ability_3_description"}, {"fr"}, function(locale, value) return "{damage_reduction:%s} Réduction des "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes pour vous ou un allié lorsque le joueur subit des "..COLORS_KWords_fr.Damage_rgb_fr.." de "..COLORS_KWords_fr.Health_rgb_fr.." . Se déclenche toutes les {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_20_rgb_fr end),
	--[+ Russian +]-- Щит презрения 
	create_template("talent_tree_zea_pas_020_desc_ru", {"loc_talent_zealot_3_tier_4_ability_3_description"}, {"ru"}, function(locale, value) return "{damage_reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." вам и вашим союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru.." на {duration:%s} секунды, если кто-то из вас получил "..COLORS_KWords_ru.Dmg_rgb_ru.." "..COLORS_KWords_ru.Health_rgb_ru..". Срабатывает каждые {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_20_rgb_ru end),

	--[+ Passive 21 - Thy Wrath be Swift +]--
	create_template("talent_tree_zea_pas_021_desc_en", {"loc_talent_zealot_movement_speed_on_damaged_desc"}, {"en"}, function(locale, value) return "{movement_speed:%s} Movement Speed for {time:%s} seconds on taking "..COLORS_KWords.Damage_rgb..". Enemy Melee Attacks cannot "..COLORS_KWords.Stun_rgb.." you."..TALENTS_Enh_desc.ED_ZEA_Passive_21_rgb end), -- movement_speed: +15%, time: 2 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_021_desc_fr", {"loc_talent_zealot_movement_speed_on_damaged_desc"}, {"fr"}, function(locale, value) return "{movement_speed:%s} Vitesse de déplacement pendant {time:%s} secondes après avoir subi des "..COLORS_KWords_fr.Damage_rgb_fr..". Les attaques de mêlée ennemies ne peuvent pas vous "..COLORS_KWords_fr.Stun_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_21_rgb_fr end),
	--[+ Russian +]-- Да будет Твой гнев быстр -- руоф Скорое возмездие
	create_template("talent_tree_zea_pas_021_desc_ru", {"loc_talent_zealot_movement_speed_on_damaged_desc"}, {"ru"}, function(locale, value) return "{movement_speed:%s} к скорости движения на {time:%s} секунды при получении "..COLORS_KWords_ru.Dmg_a_rgb_ru..". Вражеские атаки ближнего боя не "..COLORS_KWords_ru.Staggers_rgb_ru.." вас."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_21_rgb_ru end),

	--[+ Passive 22 - Good Balance +]--
	create_template("talent_tree_zea_pas_022_desc_en", {"loc_talent_reduced_damage_after_dodge_description"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Damage_rgb.." Reduction for {duration:%s} seconds after a successful Dodge."..TALENTS_Enh_desc.ED_ZEA_Passive_22_rgb end), -- damage: +25%, duration: 2.5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_022_desc_fr", {"loc_talent_reduced_damage_after_dodge_description"}, {"fr"}, function(locale, value) return "{damage:%s} Réduction des "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes après une esquive réussie."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_22_rgb_fr end),
	--[+ Russian +]-- Хороший баланс -- руоф Разумный баланс 
	create_template("talent_tree_zea_pas_022_desc_ru", {"loc_talent_reduced_damage_after_dodge_description"}, {"ru"}, function(locale, value) return "{damage:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунды при успешном уклонении."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_22_rgb_ru end),

	--[+ Passive 23 - Desperation +]--
	create_template("talent_tree_zea_pas_023_desc_en", {"loc_talent_zealot_increased_damage_on_low_stamina_description"}, {"en"}, function(locale, value) return "{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds when "..COLORS_KWords.Stamina_rgb.." is depleted."..TALENTS_Enh_desc.ED_ZEA_Passive_23_rgb end), -- damage: +20%, duration: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_023_desc_fr", {"loc_talent_zealot_increased_damage_on_low_stamina_description"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mêlée pendant {duration:%s} secondes lorsque "..COLORS_KWords_fr.Stamina_rgb_fr.." est épuisée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_23_rgb_fr end),
	--[+ Russian +]-- Отчаяние 
	create_template("talent_tree_zea_pas_023_desc_ru", {"loc_talent_zealot_increased_damage_on_low_stamina_description"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя на {duration:%s} секунд, когда уровень "..COLORS_KWords_ru.Stamina_rgb_ru.." на нуле."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_23_rgb_ru end),

	--[+ Passive 24 - Holy Revenant +]--
	create_template("talent_tree_zea_pas_024_desc_en", {"loc_talent_zealot_heal_during_resist_death_clamped_desc"}, {"en"}, function(locale, value) return "When {talent_name:%s} ends, you regain "..COLORS_KWords.Health_rgb.." based on the "..COLORS_KWords.Damage_rgb.." you dealt during {talent_name:%s}, to a Maximum of {max_health:%s} Max "..COLORS_KWords.Health_rgb..". Melee "..COLORS_KWords.Damage_rgb.." dealt Heals for {melee_multiplier:%s} times that amount."..TALENTS_Enh_desc.ED_ZEA_Passive_24_rgb end), -- talent_name: Until Death, max_health: 25%, melee_multiplier: 3 -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_024_desc_fr", {"loc_talent_zealot_heal_during_resist_death_clamped_desc"}, {"fr"}, function(locale, value) return "Lorsque {talent_name:%s} se termine, vous récupérez de la "..COLORS_KWords_fr.Health_rgb_fr.." en fonction des "..COLORS_KWords_fr.Damage_rgb_fr.." que vous avez infligés pendant {talent_name:%s}, jusqu'à {max_health:%s} de la "..COLORS_KWords_fr.Health_rgb_fr.." maximum. Les "..COLORS_KWords_fr.Damage_rgb_fr.." de mêlée guérissent pour {melee_multiplier:%s} fois ce montant."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_24_rgb_fr end),
	--[+ Russian +]-- Святой призрак -- руоф Священный призрак
	create_template("talent_tree_zea_pas_024_desc_ru", {"loc_talent_zealot_heal_during_resist_death_clamped_desc"}, {"ru"}, function(locale, value) return "Когда {talent_name:%s} заканчивает своё действие, вы восстанавливаете некоторое количество "..COLORS_KWords_ru.Wound_rgb_ru.." в зависимости от нанесённого вами "..COLORS_KWords_ru.Dmg_a_rgb_ru.." на протяжении действия таланта {talent_name:%s}, вплоть до {max_health:%s}. Атаки ближнего боя восстанавливают в {melee_multiplier:%s} раза больше "..COLORS_KWords_ru.Wound_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_24_rgb_ru end),

	--[+ Passive 25 - Sainted Gunslinger +]--
	create_template("talent_tree_zea_pas_025_desc_en", {"loc_talent_zealot_increased_reload_speed_on_melee_kills_desc"}, {"en"}, function(locale, value) return "{reload_speed:%s} Reload Speed on Melee Kill. Stacks {max_stacks:%s} times."..TALENTS_Enh_desc.ED_ZEA_Passive_25_rgb end), -- reload_speed: +3%, max_stacks: 10
	--[+ French +]--
	create_template("talent_tree_zea_pas_025_desc_fr", {"loc_talent_zealot_increased_reload_speed_on_melee_kills_desc"}, {"fr"}, function(locale, value) return "{reload_speed:%s} Vitesse de rechargement en cas d'élimination de mêlée. Cumulable {max_stacks:%s} fois."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_25_rgb_fr end),
	--[+ Russian +]-- Святой стрелок -- руоф Святой быстрый стрелок
	create_template("talent_tree_zea_pas_025_desc_ru", {"loc_talent_zealot_increased_reload_speed_on_melee_kills_desc"}, {"ru"}, function(locale, value) return "{reload_speed:%s} к скорости перезарядки при убийствах в ближнем бою. Суммируется {max_stacks:%s} раз."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_25_rgb_ru end),

	--[+ Passive 26 - Hammer of Faith +]--
	create_template("talent_tree_zea_pas_026_desc_en", {"loc_talent_zealot_3_tier_1_ability_1_description"}, {"en"}, function(locale, value) return "{stagger:%s} "..COLORS_KWords.Impact_rgb.." strength."..TALENTS_Enh_desc.ED_ZEA_Passive_26_rgb end), -- stagger: +30% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_026_desc_fr", {"loc_talent_zealot_3_tier_1_ability_1_description"}, {"fr"}, function(locale, value) return "{stagger:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_26_rgb_fr end),
	--[+ Russian +]-- Молот веры 
	create_template("talent_tree_zea_pas_026_desc_ru", {"loc_talent_zealot_3_tier_1_ability_1_description"}, {"ru"}, function(locale, value) return "{stagger:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." врагов при атаках."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_26_rgb_ru end),

	--[+ Passive 27 - Grievous Wounds +]--
	create_template("talent_tree_zea_pas_027_desc_en", {"loc_talent_zealot_increased_stagger_on_weakspot_melee_description"}, {"en"}, function(locale, value) return "{impact_modifier:%s} "..COLORS_KWords.Stagger_rgb.." on Melee "..COLORS_KWords.Weakspothits_rgb.."."..TALENTS_Enh_desc.ED_ZEA_Passive_27_rgb end), -- impact_modifier: +50% -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_027_desc_fr", {"loc_talent_zealot_increased_stagger_on_weakspot_melee_description"}, {"fr"}, function(locale, value) return "{impact_modifier:%s} de "..COLORS_KWords_fr.Stagger_rgb_fr.." sur les attaques de mêlée sur "..COLORS_KWords_fr.Weakspothits_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_27_rgb_fr end),
	--[+ Russian +]-- Тяжёлые раны -- руоф Опасные раны
	create_template("talent_tree_zea_pas_027_desc_ru", {"loc_talent_zealot_increased_stagger_on_weakspot_melee_description"}, {"ru"}, function(locale, value) return "{impact_modifier:%s} к "..COLORS_KWords_ru.Stagger2_rgb_ru.." при попадании в "..COLORS_KWords_ru.Weakspot_rgb_ru.." оружием ближнего боя."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_27_rgb_ru end),

	--[+ Passive 28 - Ambuscade +]--
	create_template("talent_tree_zea_pas_028_desc_en", {"loc_talent_zealot_increased_flanking_damage_description"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Damage_rgb.." to Ranged Backstab Attacks."..TALENTS_Enh_desc.ED_ZEA_Passive_28_rgb end), -- damage:+20%. -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_028_desc_fr", {"loc_talent_zealot_increased_flanking_damage_description"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." sur les attaques de dos à distance."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_28_rgb_fr end),
	--[+ Russian +]-- Засада 
	create_template("talent_tree_zea_pas_028_desc_ru", {"loc_talent_zealot_increased_flanking_damage_description"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." для выстрелов в спину."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_28_rgb_ru end),

	--[+ Passive 29 - Punishment +]--
	create_template("talent_tree_zea_pas_029_desc_en", {"loc_talent_zealot_multi_hits_increase_impact_desc"}, {"en"}, function(locale, value) return "Melee Attacks that Hit at least {min_hits:%s} Enemies grant {impact_modifier:%s} "..COLORS_KWords.Impact_rgb.." strength for {time:%s} seconds. Stacks {max_stacks:%s} times. At max Stacks gain Uninterruptible."..TALENTS_Enh_desc.ED_ZEA_Passive_29_rgb end), -- min_hits: 3, impact_modifier: +30%, time: 5, max_stacks: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_029_desc_fr", {"loc_talent_zealot_multi_hits_increase_impact_desc"}, {"fr"}, function(locale, value) return "Les attaques de mêlée qui touchent au moins {min_hits:%s} ennemis augmentent l'"..COLORS_KWords_fr.Impact_rgb_fr.." de {impact_modifier:%s} pendant {time:%s} secondes. Cumulable jusqu'à {max_stacks:%s} fois. Au maximum de cumuls, gagnez Inarrêtable."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_29_rgb_fr end),
	--[+ Russian +]-- Наказание 
	create_template("talent_tree_zea_pas_029_desc_ru", {"loc_talent_zealot_multi_hits_increase_impact_desc"}, {"ru"}, function(locale, value) return "Атаки ближнего боя, попавшие хотя бы по {min_hits:%s} врагам, дают {impact_modifier:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." на {time:%s} секунд. Суммируется {max_stacks:%s} раз. При максимуме зарядов ваши атаки невозможно прервать."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_29_rgb_ru end),

	--[+ Passive 30 - Faithful Frenzy +]--
	create_template("talent_tree_zea_pas_030_desc_en", {"loc_talent_zealot_attack_speed_desc"}, {"en"}, function(locale, value) return "{attack_speed:%s} Melee Attack Speed."..TALENTS_Enh_desc.ED_ZEA_Passive_30_rgb end), -- attack_speed: +10%
	--[+ French +]--
	create_template("talent_tree_zea_pas_030_desc_fr", {"loc_talent_zealot_attack_speed_desc"}, {"fr"}, function(locale, value) return "{attack_speed:%s} Vitesse d'attaque en mêlée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_30_rgb_fr end),
	--[+ Russian +]-- Правоверное неистовство -- руоф Верное безумие
	create_template("talent_tree_zea_pas_030_desc_ru", {"loc_talent_zealot_attack_speed_desc"}, {"ru"}, function(locale, value) return "{attack_speed:%s} к скорости атак ближнего боя."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_30_rgb_ru end),

	--[+ Passive 31 - Sustained Assault +]--
	create_template("talent_tree_zea_pas_031_desc_en", {"loc_talent_zealot_increased_damage_stacks_on_hit_desc"}, {"en"}, function(locale, value) return "{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." for {time:%s} seconds on Hitting an Enemy with a Melee Attack. Stacks {amount:%s} times."..TALENTS_Enh_desc.ED_ZEA_Passive_31_rgb end), -- damage: +4%, time: 5, amount: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_zea_pas_031_desc_fr", {"loc_talent_zealot_increased_damage_stacks_on_hit_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mêlée pendant {time:%s} secondes après avoir touché un ennemi avec une attaque de mêlée. Cumulable jusqu'à {amount:%s} fois."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_31_rgb_fr end),
	--[+ Russian +]-- Непрерывное нападение -- руоф Непрерывный штурм
	create_template("talent_tree_zea_pas_031_desc_ru", {"loc_talent_zealot_increased_damage_stacks_on_hit_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя на {time:%s} секунд при попадании по врагу атакой ближнего боя. Суммируется {amount:%s} раз."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_31_rgb_ru end),

	--[+ Passive 32 - The Master's Retribution +]--
	create_template("talent_tree_zea_pas_032_desc_en", {"loc_talent_zealot_3_tier_3_ability_1_description"}, {"en"}, function(locale, value) return "Knock back the Attacker on taking a Melee Hit. Cooldown: {cooldown:%s} seconds."..TALENTS_Enh_desc.ED_ZEA_Passive_32_rgb end), -- cooldown: 10 -- s->seconds
	--[+ French +]--
	create_template("talent_tree_zea_pas_032_desc_fr", {"loc_talent_zealot_3_tier_3_ability_1_description"}, {"fr"}, function(locale, value) return "Repousse l'attaquant après avoir reçu un coup de mêlée. Temps de recharge : {cooldown:%s} secondes."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_32_rgb_fr end),
	--[+ Russian +]-- Возмездие Владыки 
	create_template("talent_tree_zea_pas_032_desc_ru", {"loc_talent_zealot_3_tier_3_ability_1_description"}, {"ru"}, function(locale, value) return "При нанесении вам удара в ближнем бою, враг отбрасывается. Восстановление: {cooldown:%s} секунд."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_32_rgb_ru end),

   --[+ Passive 33 - Faith's Fortitude +]--
	create_template("talent_tree_zea_pas_033_desc_en", {"loc_talent_zealot_3_tier_1_ability_3_description"}, {"en"}, function(locale, value) return "{health_segment:%s} "..COLORS_KWords.Wounds_rgb.."."..TALENTS_Enh_desc.ED_ZEA_Passive_33_rgb end), -- health_segment:+2
	--[+ French +]--
	create_template("talent_tree_zea_pas_033_desc_fr", {"loc_talent_zealot_3_tier_1_ability_3_description"}, {"fr"}, function(locale, value) return "{health_segment:%s} "..COLORS_KWords_fr.Wounds_rgb_fr.."."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_33_rgb_fr end),
	--[+ Russian +]-- Стойкость веры 
	create_template("talent_tree_zea_pas_033_desc_ru", {"loc_talent_zealot_3_tier_1_ability_3_description"}, {"ru"}, function(locale, value) return "{health_segment:%s} "..COLORS_KWords_ru.Wound_y_rgb_ru.."."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_33_rgb_ru end),

	--[+ Passive 34 - Swift Certainty +]--
	create_template("talent_tree_zea_pas_034_desc_en", {"loc_talent_zealot_improved_sprint_description"}, {"en"}, function(locale, value) return "{speed:%s} increase to Sprint speed. In addition, always counts as Dodging while Sprinting, even if "..COLORS_KWords.Stamina_rgb.." is depleted."..TALENTS_Enh_desc.ED_ZEA_Passive_34_rgb end), -- speed: +5%
	--[+ French +]--
	create_template("talent_tree_zea_pas_034_desc_fr", {"loc_talent_zealot_improved_sprint_description"}, {"fr"}, function(locale, value) return "{speed:%s} augmentation de la vitesse de la course. De plus, la course compte toujours comme une esquive, même si l'"..COLORS_KWords_fr.Stamina_rgb_fr.." est épuisée."..TALENTS_Enh_desc_fr.ED_ZEA_Passive_34_rgb_fr end),
	--[+ Russian +]-- Быстрая уверенность -- руоф Скорая определенность
	create_template("talent_tree_zea_pas_034_desc_ru", {"loc_talent_zealot_improved_sprint_description"}, {"ru"}, function(locale, value) return "{speed:%s} к скорости бега. Теперь бег считается уклонением, даже если уровень "..COLORS_KWords_ru.Stamina_rgb_ru.." на нуле."..TALENTS_Enh_desc_ru.ED_ZEA_Passive_34_rgb_ru end),


--[+ ++VETERAN - ВЕТЕРАН++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ Blitz 0 - Frag Grenade +]--
	create_template("talent_tree_vet_blitz_000_desc_en", {"loc_ability_frag_grenade_description"}, {"en"}, function(locale, value) return COLORS_KWords.Fragmentation_gren_rgb.." that explodes after "..COLORS_Numbers.n_1_7_rgb.." seconds."..TALENTS_Enh_desc2.ED_VET_Blitz_0_rgb end), -- colors
	--[+ French +]--
	create_template("talent_tree_vet_blitz_000_desc_fr", {"loc_ability_frag_grenade_description"}, {"fr"}, function(locale, value) return "Lancez une "..COLORS_KWords_fr.Fragmentation_gren_rgb_fr.." qui explose après "..COLORS_Numbers.n_1_7_rgb.." secondes."..TALENTS_Enh_desc2_fr.ED_VET_Blitz_0_rgb_fr end),
	--[+ Russian +]-- Фраг-граната 
	create_template("talent_tree_vet_blitz_000_desc_ru", {"loc_ability_frag_grenade_description"}, {"ru"}, function(locale, value) return "Вы бросаете "..COLORS_KWords_ru.Fragmentation_gren_rgb_ru..", которая взрывается после "..COLORS_Numbers.n_1_7_rgb.." секунды."..TALENTS_Enh_desc2_ru.ED_VET_Blitz_0_rgb_ru end),

	--[+ Blitz 1 - Shredder Frag Grenade +]--
	create_template("talent_tree_vet_blitz1_000_desc_en", {"loc_talent_veteran_grenade_apply_bleed_desc"}, {"en"}, function(locale, value) return "Throw a "..COLORS_KWords.Frag_gren_rgb.." that explodes after "..COLORS_Numbers.n_1_7_rgb.." seconds. Applies {stacks:%s} Stacks of "..COLORS_KWords.Bleed_rgb.." to all Enemies Hit, causing "..COLORS_KWords.Damage_rgb.." over time. Up to "..COLORS_Numbers.n_16_rgb.." Max Stacks.\nThis is an augmented version of {talent_name:%s}."..TALENTS_Enh_desc2.ED_VET_Blitz_1_rgb end), -- stacks: 6, talent_name: Frag Grenade -- colors
	--[+ French +]--
	create_template("talent_tree_vet_blitz1_000_desc_fr", {"loc_talent_veteran_grenade_apply_bleed_desc"}, {"fr"}, function(locale, value) return "Lancez une "..COLORS_KWords_fr.Frag_gren_rgb_fr.." qui explose après "..COLORS_Numbers.n_1_7_rgb.." secondes. Applique {stacks:%s} cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." à tous les ennemis touchés, causant des "..COLORS_KWords_fr.Damage_rgb_fr.." au fil du temps. Jusqu'à "..COLORS_Numbers.n_16_rgb.." cumuls max.\nIl s'agit d'une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Blitz_1_rgb_fr end),
	--[+ Russian +]-- Секущая фраг-граната -- руоф Фраг-граната крошителя
	create_template("talent_tree_vet_blitz1_000_desc_ru", {"loc_talent_veteran_grenade_apply_bleed_desc"}, {"ru"}, function(locale, value) return "Вы бросаете "..COLORS_KWords_ru.Frag_gren_rgb_ru..", которая взрывается после "..COLORS_Numbers.n_1_7_rgb.." секунды. Накладывает {stacks:%s} зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." на всех поражённых взрывом врагов, нанося "..COLORS_KWords_ru.Dmg_rgb_ru.." с течением времени. До "..COLORS_Numbers.n_16_rgb.." зарядов "..COLORS_KWords_ru.Bleed_rgb_ru..".\nЭто улучшенная версия таланта {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_VET_Blitz_1_rgb_ru end),

	--[+ Blitz 2 - Krak Grenade +]--
	create_template("talent_tree_vet_blitz2_000_desc_en", {"loc_talent_ability_krak_grenade_desc"}, {"en"}, function(locale, value) return "Throw a Grenade that explodes after "..COLORS_Numbers.n_2_rgb.." seconds and deals devastating "..COLORS_KWords.Damage_rgb..". Sticks to Flak Armoured, Carapace Armoured and Unyielding Enemies."..TALENTS_Enh_desc2.ED_VET_Blitz_2_rgb end), -- colors
	--[+ French +]--
	create_template("talent_tree_vet_blitz2_000_desc_fr", {"loc_talent_ability_krak_grenade_desc"}, {"fr"}, function(locale, value) return "Lancez une grenade qui explose après "..COLORS_Numbers.n_2_rgb.." secondes et inflige des "..COLORS_KWords_fr.Damage_rgb_fr.." dévastateurs. Adhère aux ennemis en armure légère, en armure Carapace et aux ennemis implacables."..TALENTS_Enh_desc2_fr.ED_VET_Blitz_2_rgb_fr end),
	--[+ Russian +]-- Крак-граната 
	create_template("talent_tree_vet_blitz2_000_desc_ru", {"loc_talent_ability_krak_grenade_desc"}, {"ru"}, function(locale, value) return "Вы бросаете гранату, которая взрывается после "..COLORS_Numbers.n_2_rgb.." секунд и наносит разрушительный "..COLORS_KWords_ru.Dmg_rgb_ru..". Граната прилипает к панцирной и противоосколочной броне, а также к несгибаемым врагам."..TALENTS_Enh_desc2_ru.ED_VET_Blitz_2_rgb_ru end),

	--[+ Blitz 3 - Smoke Grenade +]--
	create_template("talent_tree_vet_blitz3_000_desc_en", {"loc_ability_smoke_grenade_description"}, {"en"}, function(locale, value) return "Throw a Grenade that explodes after "..COLORS_Numbers.n_1_5_rgb.." seconds and creates a lingering Smoke cloud for {duration:%s} seconds. The cloud blocks line of sight for most enemies and reduces the sight range of enemies inside it."..TALENTS_Enh_desc2.ED_VET_Blitz_3_rgb end), -- duration: 15 -- colors
	--[+ French +]--
	create_template("talent_tree_vet_blitz3_000_desc_fr", {"loc_ability_smoke_grenade_description"}, {"fr"}, function(locale, value) return "Lancez une grenade qui explose après "..COLORS_Numbers.n_1_5_rgb.." secondes et crée un nuage de fumée persistant pendant {duration:%s} secondes. Le nuage bloque la ligne de vue pour la plupart des ennemis et réduit la portée de vue des ennemis à l'intérieur."..TALENTS_Enh_desc2_fr.ED_VET_Blitz_3_rgb_fr end),
	--[+ Russian +]-- Дымовая граната 
	create_template("talent_tree_vet_blitz3_000_desc_ru", {"loc_ability_smoke_grenade_description"}, {"ru"}, function(locale, value) return "Вы бросаете гранату, которая взрывается после "..COLORS_Numbers.n_1_5_rgb.." секунды и создаёт облако дыма на {duration:%s} секунд. Дым блокирует линию обзора большинства врагов и снижает расстояние обзора врагов внутри него."..TALENTS_Enh_desc2_ru.ED_VET_Blitz_3_rgb_ru end),

--[+ +AURA - АУРА+ +]--
	--[+ Aura 0 - Scavenger +]--
	create_template("talent_tree_vet_aura_000_desc_en", {"loc_talent_veteran_elite_kills_grant_ammo_coop_cd_desc"}, {"en"}, function(locale, value) return "Replenish {ammo:%s} Ammo for you and Allies in "..COLORS_KWords.Coherency_rgb.." whenever any of you Kill an Elite or Specialist Enemy. This can occur once every {cooldown:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Aura_0_rgb end), -- ammo: 0.75%, cooldown: 5
	--[+ French +]--
	create_template("talent_tree_vet_aura_000_desc_fr", {"loc_talent_veteran_elite_kills_grant_ammo_coop_cd_desc"}, {"fr"}, function(locale, value) return "Récuperez {ammo:%s} de munitions pour vous et les alliés en syntonie chaque fois que l'un de vous tue un ennemi élite ou spécialiste. Cela peut se produire une fois toutes les {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Aura_0_rgb_fr end),
	--[+ Russian +]-- Сборщик -- руоф Собиратель
	create_template("talent_tree_vet_aura_000_desc_ru", {"loc_talent_veteran_elite_kills_grant_ammo_coop_cd_desc"}, {"ru"}, function(locale, value) return "{ammo:%s} боеприпасов пополняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..", когда кто-либо из вас убивает элитного врага или специалиста. Это может происходить раз в {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Aura_0_rgb_ru end),

	--[+ Aura 1 - Survivalist +]--
	create_template("talent_tree_vet_aura_001_desc_en", {"loc_talent_veteran_elite_kills_grant_ammo_coop_improved_cd_desc"}, {"en"}, function(locale, value) return "Replenish {ammo_2:%s} Ammo for you and Allies in "..COLORS_KWords.Coherency_rgb.." whenever any of you Kill an Elite or Specialist Enemy. This can occur once every {cooldown:%s} seconds.\n\nThis is an augmented version of {talent_name:%s}."..TALENTS_Enh_desc2.ED_VET_Aura_1_rgb end), -- ammo_2: 1%, cooldown: 5, talent_name: Scavenger
	--[+ French +]--
	create_template("talent_tree_vet_aura_001_desc_fr", {"loc_talent_veteran_elite_kills_grant_ammo_coop_improved_cd_desc"}, {"fr"}, function(locale, value) return "Récuperez {ammo_2:%s} de munitions pour vous et les alliés en syntonie chaque fois que l'un de vous tue un ennemi élite ou spécialiste. Cela peut se produire une fois toutes les {cooldown:%s} secondes.\n\nIl s'agit d'une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Aura_1_rgb_fr end),
	--[+ Russian +]-- Выживальщик -- руоф Специалист по выживанию
	create_template("talent_tree_vet_aura_001_desc_ru", {"loc_talent_veteran_elite_kills_grant_ammo_coop_improved_cd_desc"}, {"ru"}, function(locale, value) return "{ammo_2:%s} боеприпасов пополняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..", когда кто-либо из вас убивает элитного врага или специалиста. Это может происходить раз в {cooldown:%s} секунд.\n\nЭто улучшенная версия ауры {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_VET_Aura_1_rgb_ru end),

	--[+ Aura 2 - Fire Team +]--
	create_template("talent_tree_vet_aura_002_desc_en", {"loc_talent_veteran_damage_coherency_desc"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Damage_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb.."."..TALENTS_Enh_desc2.ED_VET_Aura_2_rgb end), -- damage: +5% -- colors
	--[+ French +]--
	create_template("talent_tree_vet_aura_002_desc_fr", {"loc_talent_veteran_damage_coherency_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_VET_Aura_2_rgb_fr end),
	--[+ Russian +]-- Огневая группа 
	create_template("talent_tree_vet_aura_002_desc_ru", {"loc_talent_veteran_damage_coherency_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Aura_2_rgb_ru end),

	--[+ Aura 3 - Close and Kill +]--
	create_template("talent_tree_vet_aura_003_desc_en", {"loc_talent_veteran_movement_speed_coherency_desc"}, {"en"}, function(locale, value) return "{movement_speed:%s} Movement Speed for your and Allies in "..COLORS_KWords.Coherency_rgb.."."..TALENTS_Enh_desc2.ED_VET_Aura_3_rgb end), -- movement_speed: +5%
	--[+ French +]--
	create_template("talent_tree_vet_aura_003_desc_fr", {"loc_talent_veteran_movement_speed_coherency_desc"}, {"fr"}, function(locale, value) return "{movement_speed:%s} de Vitesse de déplacement pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_VET_Aura_3_rgb_fr end),
	--[+ Russian +]-- Приблизиться и убить 
	create_template("talent_tree_vet_aura_003_desc_ru", {"loc_talent_veteran_movement_speed_coherency_desc"}, {"ru"}, function(locale, value) return "{movement_speed:%s} к скорости движения для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Aura_3_rgb_ru end),

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Volley Fire +]--
	create_template("talent_tree_vet_abil_000_desc_en", {"loc_ability_veteran_base_ability_desc"}, {"en"}, function(locale, value) return "Enter Ranged Stance for {duration:%s} seconds. When in Ranged Stance you instantly equip your Ranged weapon and deal:\n{damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." and\n{weakspot_damage:%s} Ranged "..COLORS_KWords.Weakspot_dmg_rgb..". Your Spread and Recoil are also greatly reduced.\nBase Cooldown: {cooldown:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Ability_0_rgb end), -- duration: 5, damage: +25%, weakspot_damage: +25%, cooldown: 30 -- &->and -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_abil_000_desc_fr", {"loc_ability_veteran_base_ability_desc"}, {"fr"}, function(locale, value) return "Passez en posture à distance pendant {duration:%s} secondes. En posture à distance, vous équipez instantanément votre arme à distance et infligez :\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance et\n{weakspot_damage:%s} de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." à distance. Votre dispersion et votre recul sont également grandement réduits.\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Ability_0_rgb_fr end),
	--[+ Russian +]-- Залповый огонь 
	create_template("talent_tree_vet_abil_000_desc_ru", {"loc_ability_veteran_base_ability_desc"}, {"ru"}, function(locale, value) return "Вы входите в стойку дальнего боя на {duration:%s} секунд. Входя в эту стойку, вы мгновенно экипируете своё оружие дальнего боя и получаете:\n{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в дальнем бою и\n{weakspot_damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." в дальнем бою. Ваш разброс и отдача также значительно уменьшаются.\nВремя восстановления: {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Ability_0_rgb_ru end),

	--[+ Ability 1 - Executioner's Stance +]--
	create_template("talent_tree_vet_abil1_000_desc_en", {"loc_talent_veteran_combat_ability_elite_and_special_outlines_refresh_description"}, {"en"}, function(locale, value) return "Enter Ranged Stance for {duration:%s} seconds. You instantly equip your Ranged weapon and deal:\n{damage:%s} Ranged "..COLORS_KWords.Damage_rgb..",\n{weakspot_damage:%s} Ranged "..COLORS_KWords.Weakspot_dmg_rgb..".\nHuman-sized Elite and Specialist Enemies within "..COLORS_Numbers.n_50_rgb.." meters of the Veteran are highlighted for {duration:%s} seconds.\nKilling an highlighted enemy refreshes the active duration by {refresh_duration:%s} seconds. This also refreshes the duration of outlines on enemies for Veteran.\nBase Cooldown: {cooldown:%s} seconds.\nThis is an augmented version of {old_talent_name:%s}."..TALENTS_Enh_desc2.ED_VET_Ability_1_rgb end), -- duration: 5, damage: +25%, weakspot_damage: +25%, duration: 5, cooldown: 30, old_talent_name: Volley Fire -- rewrite -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_abil1_000_desc_fr", {"loc_talent_veteran_combat_ability_elite_and_special_outlines_refresh_description"}, {"fr"}, function(locale, value) return "Passez en posture à distance pendant {duration:%s} secondes. Vous équipez instantanément votre arme à distance et infligez :\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance,\n{weakspot_damage:%s} de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." à distance.\nLes ennemis élites et spécialistes de taille humaine situés à moins de "..COLORS_Numbers.n_50_rgb.." mètres du vétéran sont mis en surbrillance pendant {duration:%s} secondes.\nTuer un ennemi mis en surbrillance rafraîchit la durée active de {refresh_duration:%s} secondes. Cela rafraîchit également la durée des contours sur les ennemis pour le vétéran.\nTemps de recharge de base : {cooldown:%s} secondes.\nIl s'agit d'une version augmentée de {old_talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Ability_1_rgb_fr end),
	--[+ Russian +]-- Стойка палача 
	create_template("talent_tree_vet_abil1_000_desc_ru", {"loc_talent_veteran_combat_ability_elite_and_special_outlines_refresh_description"}, {"ru"}, function(locale, value) return "Вы входите в стойку дальнего боя на {duration:%s} секунд. Входя в эту стойку, вы мгновенно экипируете своё оружие дальнего боя и получаете:\n{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в дальнем бою и\n{weakspot_damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." в дальнем бою. Ваш разброс и отдача также значительно уменьшаются.\nЭлитные враги и специалисты размером с человека в пределах "..COLORS_Numbers.n_50_rgb.." метров от ветерана подсвечиваются на {duration:%s} секунд.\nУбийство подсвеченного врага обновляет активную длительность на {refresh_duration:%s} секунд. Это также обновляет длительность подсветки врагов для ветерана.\nВремя восстановления: {cooldown:%s} секунд.\nЭто улучшенная версия способности {old_talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_VET_Ability_1_rgb_ru end),

	--[+ Ability 1-1 - Enhanced Target Priority +]--
	create_template("talent_tree_vet_abil1_001_desc_en", {"loc_talent_veteran_combat_ability_coherency_outlines_description"}, {"en"}, function(locale, value) return "{talent_name:%s} now outlines all human-sized Elite and Specialist Enemies for Allies in "..COLORS_KWords.Coherency_rgb.." for {duration:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Ability_1_1_rgb end), -- talent_name: Executioner's Stance, duration: 5 -- rewrite -- &->and -- s->seconds
	--[+ French +]--
	create_template("talent_tree_vet_abil1_001_desc_fr", {"loc_talent_veteran_combat_ability_coherency_outlines_description"}, {"fr"}, function(locale, value) return "{talent_name:%s} met désormais en surbrillance tous les ennemis élites et spécialistes de taille humaine pour les alliés en syntonie pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Ability_1_1_rgb_fr end),
	--[+ Russian +]-- Повышенный приоритет целей -- руоф Повышенный приоритет цели
	create_template("talent_tree_vet_abil1_001_desc_ru", {"loc_talent_veteran_combat_ability_coherency_outlines_description"}, {"ru"}, function(locale, value) return "{talent_name:%s} теперь также подсвечивает всех элитных врагов и специалистов размером с человека и для ваших союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." на {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Ability_1_1_rgb_ru end),

	--[+ Ability 1-2 - Counter-Fire +]--
	create_template("talent_tree_vet_abil1_002_desc_en", {"loc_talent_veteran_combat_ability_ranged_enemies_outlines_description"}, {"en"}, function(locale, value) return "{talent_name:%s} now outlines Scab/Dreg Stalkers and Scab Shooters, additionally to all human-sized Elites and Specials." end), -- talent_name: Executioner's Stance -- rewrite
	--[+ French +]--
	create_template("talent_tree_vet_abil1_002_desc_fr", {"loc_talent_veteran_combat_ability_ranged_enemies_outlines_description"}, {"fr"}, function(locale, value) return "{talent_name:%s} met désormais en surbrillance tout les ennemis à distance de taille humaine." end),
	--[+ Russian +]-- Ответный огонь 
	create_template("talent_tree_vet_abil1_002_desc_ru", {"loc_talent_veteran_combat_ability_ranged_enemies_outlines_description"}, {"ru"}, function(locale, value) return "{talent_name:%s} теперь также подсвечивает других дальнобойных врагов: скабов-охотников, дрегов-охотников и скабов-стрелков." end),

	--[+ Ability 1-3 - The Bigger they Are... +]--
	create_template("talent_tree_vet_abil1_003_desc_en", {"loc_talent_veteran_combat_ability_ogryn_outlines_description"}, {"en"}, function(locale, value) return "{talent_name:%s} now outlines Bulwarks, Crushers and Reapers, additionally to all human-sized Elites and Specials." end), -- talent_name: Executioner's Stance -- rewrite
	--[+ French +]--
	create_template("talent_tree_vet_abil1_003_desc_fr", {"loc_talent_veteran_combat_ability_ogryn_outlines_description"}, {"fr"}, function(locale, value) return "{talent_name:%s} met désormais en surbrillance les Remparts, Broyeurs et Fauchers, en plus de tous les élites et spécialistes de taille humaine." end),
	--[+ Russian +]-- Чем больше шкаф... 
	create_template("talent_tree_vet_abil1_003_desc_ru", {"loc_talent_veteran_combat_ability_ogryn_outlines_description"}, {"ru"}, function(locale, value) return "{talent_name:%s} теперь также подсвечивает бастионов, крушителей и жнецов." end),

	--[+ Ability 1-4 - Marksman +]--
	create_template("talent_tree_vet_abil1_004_desc_en", {"loc_talent_veteran_ability_marksman_desc"}, {"en"}, function(locale, value) return "{power:%s} "..COLORS_KWords.Strength_rgb.." for any "..COLORS_KWords.Weakspothits_rgb.." for {duration:%s} seconds after "..COLORS_KWords.Combat_ability_rgb.." use.\n\nWhen using {talent_name:%s}, this is applied after leaving "..COLORS_KWords.Stealth_rgb.."."..TALENTS_Enh_desc2.ED_VET_Ability_1_4_rgb end), -- duration: 10, power: +20%, talent_name: Infiltrate -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_abil1_004_desc_fr", {"loc_talent_veteran_ability_marksman_desc"}, {"fr"}, function(locale, value) return "{power:%s} de "..COLORS_KWords_fr.Strength_rgb_fr.." pour tous les "..COLORS_KWords_fr.Weakspothits_rgb_fr.." pendant {duration:%s} secondes après utilisation de la "..COLORS_KWords_fr.Combat_ability_rgb_fr..".\n\nLors de l'utilisation de {talent_name:%s}, cela s'applique après avoir quitté l'état de la "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_1_4_rgb_fr end),
	--[+ Russian +]-- Меткий стрелок 
	create_template("talent_tree_vet_abil1_004_desc_ru", {"loc_talent_veteran_ability_marksman_desc"}, {"ru"}, function(locale, value) return "{power:%s} к "..COLORS_KWords_ru.Strength_rgb_ru.." получают все атаки в "..COLORS_KWords_ru.Weakspot_rgb_ru.." на {duration:%s} секунд после активации "..COLORS_KWords_ru.Combat_ability_rgb_ru..".\n\nПри использовании способности {talent_name:%s}, этот талант начинает действовать после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_1_4_rgb_ru end),

	--[+ Ability 2 - Voice of Command +]--
	create_template("talent_tree_vet_abil2_000_desc_en", {"loc_talent_veteran_combat_ability_stagger_nearby_enemies_description"}, {"en"}, function(locale, value) return "Replenishes your "..COLORS_KWords.Toughness_rgb.." and "..COLORS_KWords.Staggers_rgb.." all Enemies within {range:%s} meters.\n\nBase Cooldown {cooldown:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Ability_2_rgb end), -- range: 9, cooldown: 30 -- &->and -- m->meters -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_abil2_000_desc_fr", {"loc_talent_veteran_combat_ability_stagger_nearby_enemies_description"}, {"fr"}, function(locale, value) return "Régénérez votre "..COLORS_KWords_fr.Toughness_rgb_fr.." et faites "..COLORS_KWords_fr.Staggering_rgb_fr.." tous les ennemis dans un rayon de {range:%s} mètres.\n\nTemps de recharge de base {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Ability_2_rgb_fr end),
	--[+ Russian +]-- Командный голос 
	create_template("talent_tree_vet_abil2_000_desc_ru", {"loc_talent_veteran_combat_ability_stagger_nearby_enemies_description"}, {"ru"}, function(locale, value) return "Восполняет всю вашу "..COLORS_KWords_ru.Tghnss_rgb_ru.." и "..COLORS_KWords_ru.Staggers_e_rgb_ru.." всех врагов в радиусе {range:%s} метров.\n\nВремя восстановления: {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Ability_2_rgb_ru end),

	--[+ Ability 2-1 - Duty and Honour +]--
	create_template("talent_tree_vet_abil2_001_desc_en", {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency_description"}, {"en"}, function(locale, value) return "{talent_name:%s} now also provides you and Allies in "..COLORS_KWords.Coherency_rgb.." with {toughness:%s} "..COLORS_KWords.Toughness_rgb.." for {duration:%s} seconds. This can exceed your Maximum "..COLORS_KWords.Toughness_rgb.."."..TALENTS_Enh_desc2.ED_VET_Ability_2_1_rgb end), -- talent_name: Voice of Command, toughness: +50, duration: 15 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_abil2_001_desc_fr", {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency_description"}, {"fr"}, function(locale, value) return "{talent_name:%s} accorde également à vous et aux alliés en syntonie {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." pendant {duration:%s} secondes. Cela peut dépasser votre maximum de "..COLORS_KWords_fr.Toughness_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_2_1_rgb_fr end),
	--[+ Russian +]-- Долг и честь 
	create_template("talent_tree_vet_abil2_001_desc_ru", {"loc_talent_veteran_combat_ability_increase_and_restore_toughness_to_coherency_description"}, {"ru"}, function(locale, value) return "{talent_name:%s} теперь также даёт вам и союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru.." {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." на {duration:%s} секунд. Это может повысить ваш максимальный уровень "..COLORS_KWords_ru.Toughness_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_2_1_rgb_ru end),

	--[+ Ability 2-2 - Only In Death Does Duty End +]--
	create_template("talent_tree_vet_abil2_002_desc_en", {"loc_talent_veteran_combat_ability_revives_description"}, {"en"}, function(locale, value) return "{talent_name:%s} revives Knocked Down Allies within Radius, but also reduces that Radius by {range:%s} and increases your "..COLORS_KWords.Ability_cd_rgb.." by {ability_cooldown:%s}."..TALENTS_Enh_desc2.ED_VET_Ability_2_2_rgb end), -- talent_name: Voice of Command, range: 33%, ability_cooldown: 50% -- &->and -- colors
	--[+ French +]--
	create_template("talent_tree_vet_abil2_002_desc_fr", {"loc_talent_veteran_combat_ability_revives_description"}, {"fr"}, function(locale, value) return "{talent_name:%s} ressuscite les alliés mis à terre dans le rayon, mais réduit également ce rayon de {range:%s} et augmente votre "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." de {ability_cooldown:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Ability_2_2_rgb_fr end),
	--[+ Russian +]-- Только в смерти заканчивается долг -- руоф Лишь после смерти заканчивается служение долгу
	create_template("talent_tree_vet_abil2_002_desc_ru", {"loc_talent_veteran_combat_ability_revives_description"}, {"ru"}, function(locale, value) return "{talent_name:%s} поднимает сбитых с ног союзников в радиусе действия, но этот радиус уменьшается на {range:%s}, а также увеличивается время "..COLORS_KWords_ru.Ability_cd_rgb_ru.." на {ability_cooldown:%s}."..TALENTS_Enh_desc2_ru.ED_VET_Ability_2_2_rgb_ru end),

	--[+ Ability 2-3 - For the Emperor! +]--
	create_template("talent_tree_vet_abil2_003_desc_en", {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency_description"}, {"en"}, function(locale, value) return "Your "..COLORS_KWords.Combat_ability_rgb.." gives for {duration:%s} seconds you and Allies in "..COLORS_KWords.Coherency_rgb..":\n{melee_damage:%s} Melee Base "..COLORS_KWords.Damage_rgb.." and\n{ranged_damage:%s} Ranged Base "..COLORS_KWords.Damage_rgb.."."..TALENTS_Enh_desc2.ED_VET_Ability_2_3_rgb end), --  duration: 5, melee_damage: +10%, ranged_damage: +10% -- rewrite -- &->and -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_abil2_003_desc_fr", {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency_description"}, {"fr"}, function(locale, value) return "Votre "..COLORS_KWords_fr.Combat_ability_rgb_fr.." donne pendant {duration:%s} secondes à vous et aux alliés en syntonie:\n{melee_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mêlée de base et\n{ranged_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance de base."..TALENTS_Enh_desc2_fr.ED_VET_Ability_2_3_rgb_fr end),
	--[+ Russian +]-- За Императора! 
	create_template("talent_tree_vet_abil2_003_desc_ru", {"loc_talent_veteran_combat_ability_melee_and_ranged_damage_to_coherency_description"}, {"ru"}, function(locale, value) return "Ваша "..COLORS_KWords_ru.Combat_abil_rgb_ru.." даёт на {duration:%s} секунд вам и союзникам в "..COLORS_KWords_ru.Coherency_rgb_ru..":\n{melee_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в ближнем бою и\n{ranged_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в дальнем бою."..TALENTS_Enh_desc2_ru.ED_VET_Ability_2_3_rgb_ru end),

	--[+ Ability 3 - Infiltrate +]--
	create_template("talent_tree_vet_abil3_000_desc_en", {"loc_talent_veteran_invisibility_on_combat_ability_desc"}, {"en"}, function(locale, value) return "Replenish all "..COLORS_KWords.Toughness_rgb.." and enter "..COLORS_KWords.Stealth_rgb.." for {duration:%s} seconds, gaining {movement_speed:%s} Movement Speed. Leaving "..COLORS_KWords.Stealth_rgb.." Suppresses nearby Enemies. Attacking makes you leave "..COLORS_KWords.Stealth_rgb..".\nBase Cooldown: {cooldown:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Ability_3_rgb end), -- duration: 8, movement_speed: +25%, cooldown: 45 -- rewrite -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_abil3_000_desc_fr", {"loc_talent_veteran_invisibility_on_combat_ability_desc"}, {"fr"}, function(locale, value) return "Régénérez toute la "..COLORS_KWords_fr.Toughness_rgb_fr.." et entre en "..COLORS_KWords_fr.Stealth_rgb_fr.." pendant {duration:%s} secondes, gagnant {movement_speed:%s} de vitesse de déplacement. Quand vous quittez la "..COLORS_KWords_fr.Stealth_rgb_fr.." les ennemis à proximité subissent Suppresion. Attaquer vous fait quitter la "..COLORS_KWords_fr.Stealth_rgb_fr..".\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_rgb_fr end),
	--[+ Russian +]-- Проникновение 
	create_template("talent_tree_vet_abil3_000_desc_ru", {"loc_talent_veteran_invisibility_on_combat_ability_desc"}, {"ru"}, function(locale, value) return "Вы входите в режим "..COLORS_KWords_ru.Stealth_rgb_ru.." на {duration:%s} секунд, восполняя всю "..COLORS_KWords_ru.Tghnss_rgb_ru.." и получая {movement_speed:%s} к скорости движения. Выход из "..COLORS_KWords_ru.Stealth_rgb_ru.." подавляет ближайших врагов. Любые атаки выведут вас из режима "..COLORS_KWords_ru.Stealth_rgb_ru..".\nВремя восстановления: {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Ability_3_rgb_ru end),

	--[+ Ability 3-1 - Low Profile +]--
	create_template("talent_tree_vet_abil3_001_desc_en", {"loc_talent_veteran_reduced_threat_after_stealth_desc"}, {"en"}, function(locale, value) return "{threat_multiplier:%s} Threat for {duration:%s} seconds on leaving "..COLORS_KWords.Stealth_rgb.."."..TALENTS_Enh_desc2.ED_VET_Ability_3_1_rgb end), -- threat_multiplier: -90%, duration: 10 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_abil3_001_desc_fr", {"loc_talent_veteran_reduced_threat_after_stealth_desc"}, {"fr"}, function(locale, value) return "{threat_multiplier:%s} Menace pour {duration:%s} secondes en quittant la "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_1_rgb_fr end),
	--[+ Russian +]-- Незаметность -- руоф Сдержанность
	create_template("talent_tree_vet_abil3_001_desc_ru", {"loc_talent_veteran_reduced_threat_after_stealth_desc"}, {"ru"}, function(locale, value) return "{threat_multiplier:%s} к вероятности выбора врагами вас своей целью на {duration:%s} секунд после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_3_1_rgb_ru end),

	--[+ Ability 3-2 - Overwatch +]--
	create_template("talent_tree_vet_abil3_002_desc_en", {"loc_talent_veteran_combat_ability_extra_charge_description"}, {"en"}, function(locale, value) return "Your "..COLORS_KWords.Combat_ability_rgb.." gains {charges:%s} charge, but {ability_cooldown:%s} "..COLORS_KWords.Cd_rgb.."."..TALENTS_Enh_desc2.ED_VET_Ability_3_2_rgb end), -- charges: +1, ability_cooldown: +33%
	--[+ French +]--
	create_template("talent_tree_vet_abil3_002_desc_fr", {"loc_talent_veteran_combat_ability_extra_charge_description"}, {"fr"}, function(locale, value) return "Votre "..COLORS_KWords_fr.Combat_ability_rgb_fr.." gagne {charges:%s} charge, mais {ability_cooldown:%s} de "..COLORS_KWords_fr.Cd_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_2_rgb_fr end),
	--[+ Russian +]-- Наблюдение -- руоф Прикрытие
	create_template("talent_tree_vet_abil3_002_desc_ru", {"loc_talent_veteran_combat_ability_extra_charge_description"}, {"ru"}, function(locale, value) return "Вы получаете {charges:%s} заряд "..COLORS_KWords_ru.Combat_ability_rgb_ru..", но на {ability_cooldown:%s} повышается её время "..COLORS_KWords_ru.Cd_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_3_2_rgb_ru end),

	--[+ Ability 3-3 - Hunter's Resolve +]--
	create_template("talent_tree_vet_abil3_003_desc_en", {"loc_talent_veteran_toughness_bonus_leaving_invisibility_desc"}, {"en"}, function(locale, value) return "{tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." is provided by {talent_name:%s} for {duration:%s} seconds upon leaving "..COLORS_KWords.Stealth_rgb.."."..TALENTS_Enh_desc2.ED_VET_Ability_3_3_rgb end), -- talent_name: Infiltrate, tdr: +50%, duration: 10 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_abil3_003_desc_fr", {"loc_talent_veteran_toughness_bonus_leaving_invisibility_desc"}, {"fr"}, function(locale, value) return "{tdr:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." est fourni par {talent_name:%s} pour {duration:%s} secondes en quittant la "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_3_rgb_fr end),
	--[+ Russian +]-- Упорство охотника 
	create_template("talent_tree_vet_abil3_003_desc_ru", {"loc_talent_veteran_toughness_bonus_leaving_invisibility_desc"}, {"ru"}, function(locale, value) return "{tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." даётся на {duration:%s} секунд способностью {talent_name:%s} после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_3_3_rgb_ru end),

	--[+ Ability 3-4 - Surprise Attack +]--
	create_template("talent_tree_vet_abil3_004_desc_en", {"loc_talent_veteran_damage_bonus_leaving_invisibility_desc"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Damage_rgb.." is granted by {talent_name:%s} for {duration:%s} seconds upon leaving "..COLORS_KWords.Stealth_rgb.."."..TALENTS_Enh_desc2.ED_VET_Ability_3_4_rgb end), -- talent_name: Infiltrate, damage: +30%, duration: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_abil3_004_desc_fr", {"loc_talent_veteran_damage_bonus_leaving_invisibility_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." est accordé par {talent_name:%s} pour {duration:%s} secondes en quittant la "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_4_rgb_fr end),
	--[+ Russian +]-- Внезапная атака 
	create_template("talent_tree_vet_abil3_004_desc_ru", {"loc_talent_veteran_damage_bonus_leaving_invisibility_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." даётся на {duration:%s} секунд способностью {talent_name:%s} после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_3_4_rgb_ru end),

	--[+ Ability 3-5 - Close Quarters Killzone +]--
	create_template("talent_tree_vet_abil3_005_desc_en", {"loc_talent_veteran_ability_assault_desc"}, {"en"}, function(locale, value) return "{power:%s} Close "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on "..COLORS_KWords.Combat_ability_rgb.." use.\n\nWhen using {talent_name:%s}, this begins on leaving "..COLORS_KWords.Stealth_rgb.."."..TALENTS_Enh_desc2.ED_VET_Ability_3_5_rgb end), -- power: +15%, duration: 10, talent_name: Infiltrate -- rewrite -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_abil3_005_desc_fr", {"loc_talent_veteran_ability_assault_desc"}, {"fr"}, function(locale, value) return "{power:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." rapprochés pour {duration:%s} secondes Lors de l'utilisation d'une "..COLORS_KWords_fr.Combat_ability_rgb_fr..".\n\nEn utilisant {talent_name:%s}, cela commence en quittant "..COLORS_KWords_fr.Stealth_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Ability_3_5_rgb_fr end),
	--[+ Russian +]-- Зона ближнего боя -- руоф Зона поражения на ближней дистанции
	create_template("talent_tree_vet_abil3_005_desc_ru", {"loc_talent_veteran_ability_assault_desc"}, {"ru"}, function(locale, value) return "{power:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." на дистанции до "..COLORS_Numbers.n_12_5_rgb.." метров на {duration:%s} секунд после использования "..COLORS_KWords_ru.Combat_ability_rgb_ru..".\n\nПри использовании способности {talent_name:%s}, этот талант начинает действовать после выхода из "..COLORS_KWords_ru.Stealth_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Ability_3_5_rgb_ru end),

--[+ +KEYSTONES - КЛЮЧЕВЫЕ+ +]--
	--[+ Keystone 1 - Marksman's Focus +]--
	create_template("talent_tree_vet_keys1_000_desc_en", {"loc_talent_veteran_snipers_focus_alt_description"}, {"en"}, function(locale, value) return "Ranged "..COLORS_KWords.Weakspot_rgb.." kills grant {stacks:%s} Stacks of "..COLORS_KWords.Focus_rgb..". Up to {max_stacks} Max Stacks. Sprinting, Sliding and Walking removes Stacks.\nEach Stack of "..COLORS_KWords.Focus_rgb.." grants:\n{power:%s} Ranged "..COLORS_KWords.Finesse_rgb.." strength and\n{reload_speed:%s} Reload Speed.\nRanged "..COLORS_KWords.Weakspot_rgb.." kills let you move without losing Stacks for {grace_time:%s} seconds. Ranged "..COLORS_KWords.Weakspothits_rgb.." lets you move without losing Stacks for {grace_time_hit:%s} second."..TALENTS_Enh_desc2.ED_VET_Keystone_1_rgb end), -- stacks: 3, max_stacks: 10, power: +7.5%, reload_speed: +1%, grace_time: 6, grace_time_hit: 3 -- stack(s)->stacks -- s->second/seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys1_000_desc_fr", {"loc_talent_veteran_snipers_focus_alt_description"}, {"fr"}, function(locale, value) return "Les tirs à distance sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." octroient {stacks:%s} cumuls de "..COLORS_KWords_fr.Focus_rgb_fr..". Jusqu'à {max_stacks} cumuls maximum. Courir, glisser et marcher supprime les cumuls.\nChaque cumul de "..COLORS_KWords_fr.Focus_rgb_fr.." octroie : {power:%s} de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr.." à distance et {reload_speed:%s} vitesse de rechargement.\nLes élimination sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." à distance permettent de se déplacer sans perdre de cumuls pendant {grace_time:%s} secondes. Les tirs "..COLORS_KWords_fr.Weakspothits_rgb_fr.." permettent de se déplacer sans perdre de cumuls pendant {grace_time_hit:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_1_rgb_fr end),
	--[+ Russian +]-- Концентрация снайпера 
	create_template("talent_tree_vet_keys1_000_desc_ru", {"loc_talent_veteran_snipers_focus_alt_description"}, {"ru"}, function(locale, value) return "Убийства выстрелами в "..COLORS_KWords_ru.Weakspot_rgb_ru.." дают {stacks:%s} заряда "..COLORS_KWords_ru.Focus_rgb_ru..". До максимума в {max_stacks} зарядов. Бег, подкаты и ходьба снимают заряды.\nКаждый заряд "..COLORS_KWords_ru.Focus_rgb_ru.." даёт:\n{reload_speed:%s} к скорости перезарядки и\n{power:%s} к усилению "..COLORS_KWords_ru.Finesse_rgb_ru.." для дальнобойных атак.\nУбийства выстрелами в "..COLORS_KWords_ru.Weakspot_rgb_ru.." позволят вам передвигаться без потери зарядов в течение {grace_time:%s} секунд. Попадания выстрелами в "..COLORS_KWords_ru.Weakspot_rgb_ru.." позволят вам передвигаться без потери зарядов в течение {grace_time_hit:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_1_rgb_ru end),

	--[+ Keystone 1-1 - Chink in their Armour +]--
	create_template("talent_tree_vet_keys1_001_desc_en", {"loc_talent_veteran_snipers_focus_rending_bonus_description"}, {"en"}, function(locale, value) return "{rending:%s} "..COLORS_KWords.Rending_rgb.." when at, or over, {stacks:%s} Stacks of "..COLORS_KWords.Focus_rgb.."."..TALENTS_Enh_desc2.ED_VET_Keystone_1_1_rgb end), -- rending: +10%, stacks: 10 -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys1_001_desc_fr", {"loc_talent_veteran_snipers_focus_rending_bonus_description"}, {"fr"}, function(locale, value) return "{rending:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." lorsque à, ou au-dessus de, {stacks:%s} cumuls de "..COLORS_KWords_fr.Focus_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_1_1_rgb_fr end),
	--[+ Russian +]-- Щель в их броне -- руоф Щель в броне
	create_template("talent_tree_vet_keys1_001_desc_ru", {"loc_talent_veteran_snipers_focus_rending_bonus_description"}, {"ru"}, function(locale, value) return "{rending:%s} к "..COLORS_KWords_ru.Rending_rgb_ru..", когда у вас {stacks:%s} или более зарядов "..COLORS_KWords_ru.Focus_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_1_1_rgb_ru end),

	--[+ Keystone 1-2 - Tunnel Vision +]--
	create_template("talent_tree_vet_keys1_002_desc_en", {"loc_talent_veteran_snipers_focus_stamina_bonus_desc"}, {"en"}, function(locale, value) return "{toughness_replenish_multiplier:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment for each Stack of "..COLORS_KWords.Focus_rgb..". In addition, "..COLORS_KWords.Weakspot_rgb.." kills restore {stamina:%s} "..COLORS_KWords.Stamina_rgb.."."..TALENTS_Enh_desc2.ED_VET_Keystone_1_2_rgb end), -- toughness_replenish_multiplier: +5%, stamina: 10% -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys1_002_desc_fr", {"loc_talent_veteran_snipers_focus_stamina_bonus_desc"}, {"fr"}, function(locale, value) return "{toughness_replenish_multiplier:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." pour chaque cumul de "..COLORS_KWords_fr.Focus_rgb_fr..". De plus, les éliminations sur "..COLORS_KWords_fr.Weakspot_rgb_fr.." restaurent {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_1_2_rgb_fr end),
	--[+ Russian +]-- Тоннельное зрение 
	create_template("talent_tree_vet_keys1_002_desc_ru", {"loc_talent_veteran_snipers_focus_stamina_bonus_desc"}, {"ru"}, function(locale, value) return "{toughness_replenish_multiplier:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за каждый заряд "..COLORS_KWords_ru.Focus_rgb_ru..". Убийства в "..COLORS_KWords_ru.Weakspot_rgb_ru.." дополнительно восстанавливают {stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_1_2_rgb_ru end),

	--[+ Keystone 1-3 - Long Range Assassin +]--
	create_template("talent_tree_vet_keys1_003_desc_en", {"loc_talent_veteran_snipers_focus_increased_stacks_description"}, {"en"}, function(locale, value) return "Increase Maximum Stacks of "..COLORS_KWords.Focus_rgb.." from {stacks:%s} to {new_stacks:%s}." end), -- stacks: 10, new_stacks: 15 -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys1_003_desc_fr", {"loc_talent_veteran_snipers_focus_increased_stacks_description"}, {"fr"}, function(locale, value) return "Augmente les cumuls maximum de "..COLORS_KWords_fr.Focus_rgb_fr.." de {stacks:%s} à {new_stacks:%s}." end),
	--[+ Russian +]-- Дальнобойный ассасин 
	create_template("talent_tree_vet_keys1_003_desc_ru", {"loc_talent_veteran_snipers_focus_increased_stacks_description"}, {"ru"}, function(locale, value) return "С {stacks:%s} до {new_stacks:%s} увеличивается максимальное количество зарядов "..COLORS_KWords_ru.Focus_rgb_ru.."." end),

	--[+ Keystone 1-4 - Camouflage +]--
	create_template("talent_tree_vet_keys1_004_desc_en", {"loc_talent_veteran_snipers_focus_stacks_on_still_description"}, {"en"}, function(locale, value) return "Gain {stack:%s} Stack of "..COLORS_KWords.Focus_rgb.." every {time:%s} seconds when Standing Still or Walking when Crouched." end), -- stack: 1, time: 0.75 -- stack(s)->stacks -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys1_004_desc_fr", {"loc_talent_veteran_snipers_focus_stacks_on_still_description"}, {"fr"}, function(locale, value) return "Gagnez {stack:%s} cumul de "..COLORS_KWords_fr.Focus_rgb_fr.." toutes les {time:%s} secondes en restant immobile ou en marchant accroupi." end),
	--[+ Russian +]-- Камуфляж 
	create_template("talent_tree_vet_keys1_004_desc_ru", {"loc_talent_veteran_snipers_focus_stacks_on_still_description"}, {"ru"}, function(locale, value) return "Вы получаете {stack:%s} заряд "..COLORS_KWords_ru.Focus_rgb_ru.." каждые {time:%s} секунды, если стоите на месте или передвигаетесь присев." end),

	--[+ Keystone 2 - Focus Target! +]--
	create_template("talent_tree_vet_keys2_000_desc_en", {"loc_talent_veteran_improved_tag_description"}, {"en"}, function(locale, value) return "Gain "..COLORS_KWords.Focus_Target_rgb.." every {time:%s} seconds. Stacks {max_stacks:%s} times.\nTagging an Enemy applies the "..COLORS_KWords.Focus_Target_rgb.." Stacks to them, causing them to take {damage:%s} additional "..COLORS_KWords.Damage_rgb.." for each Stack, and resets your "..COLORS_KWords.Focus_Target_rgb.." Stacks to "..COLORS_Numbers.n_1_rgb.."."..TALENTS_Enh_desc2.ED_VET_Keystone_2_rgb end), -- time: 2, max_stacks: 5, damage: +4% -- -() -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys2_000_desc_fr", {"loc_talent_veteran_improved_tag_description"}, {"fr"}, function(locale, value) return "Gagnez "..COLORS_KWords_fr.Focus_Target_rgb_fr.." toutes les {time:%s} secondes. Cumulable jusqu'à {max_stacks:%s} fois.\nMarquer un ennemi applique les cumuls de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." sur lui, le faisant subir {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." supplémentaire par cumul, et réinitialise vos cumuls de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." à "..COLORS_Numbers.n_1_rgb.."."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_2_rgb_fr end),
	--[+ Russian +]-- Важная цель!
	create_template("talent_tree_vet_keys2_000_desc_ru", {"loc_talent_veteran_improved_tag_description"}, {"ru"}, function(locale, value) return "Вы получаете заряд "..COLORS_KWords_ru.Focus_Target_rgb_ru.." каждые {time:%s} секунды. Суммируется {max_stacks:%s} раз.\nОтметка врага применяет все заряды "..COLORS_KWords_ru.Focus_Target_rgb_ru.." к нему. Враг получает дополнительно {damage:%s} "..COLORS_KWords_ru.Dmg_a_rgb_ru.." за каждый заряд. Количество зарядов "..COLORS_KWords_ru.Focus_Target_rgb_ru.." сбрасывается до "..COLORS_Numbers.n_1_rgb.."."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_2_rgb_ru end),

	--[+ Keystone 2-1 - Target Down! +]--
	create_template("talent_tree_vet_keys2_001_desc_en", {"loc_talent_veteran_improved_tag_dead_bonus_description"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." and {stamina:%s} "..COLORS_KWords.Stamina_rgb.." are replenished for each stack of "..COLORS_KWords.Focus_Target_rgb.." applied when an enemy you have Tagged dies, for you and Allies in "..COLORS_KWords.Coherency_rgb.."."..TALENTS_Enh_desc2.ED_VET_Keystone_2_1_rgb end), -- toughness: 5%, stamina: 5% -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys2_001_desc_fr", {"loc_talent_veteran_improved_tag_dead_bonus_description"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." et {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." sont récuperés  pour chaque cumul de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." appliqué lorsqu'un ennemi marqué meurt, pour vous et vos alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_2_1_rgb_fr end),
	--[+ Russian +]-- Цель поражена! 
	create_template("talent_tree_vet_keys2_001_desc_ru", {"loc_talent_veteran_improved_tag_dead_bonus_description"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и {stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru.." восполняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." за каждый заряд "..COLORS_KWords_ru.Focus_Target_rgb_ru..", когда вы убиваете отмеченного врага."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_2_1_rgb_ru end),

	--[+ Keystone 2-2 - Redirect Fire! +]--
	create_template("talent_tree_vet_keys2_002_desc_en", {"loc_talent_veteran_improved_tag_dead_coherency_bonus_description"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Damage_rgb.." is granted for each Stack of "..COLORS_KWords.Focus_Target_rgb.." applied when an enemy you have Tagged dies, to you and Allies in "..COLORS_KWords.Coherency_rgb..". Lasts {duration:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Keystone_2_2_rgb end), -- damage: +1.5%, duration: 10 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys2_002_desc_fr", {"loc_talent_veteran_improved_tag_dead_coherency_bonus_description"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." est accordé pour chaque cumul de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." appliqué lorsqu'un ennemi marqué meurt, pour vous et vos alliés en syntonie. Dure {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_2_2_rgb_fr end),
	--[+ Russian +]-- Перевести огонь! 
	create_template("talent_tree_vet_keys2_002_desc_ru", {"loc_talent_veteran_improved_tag_dead_coherency_bonus_description"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.." за каждый заряд "..COLORS_KWords_ru.Focus_Target_rgb_ru..", когда вы убиваете отмеченного врага. Длится {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_2_2_rgb_ru end),

	--[+ Keystone 2-3 - Focused Fire +]--
	create_template("talent_tree_vet_keys2_003_desc_en", {"loc_talent_veteran_improved_tag_more_damage_description"}, {"en"}, function(locale, value) return COLORS_KWords.Focus_Target_rgb.." Max Stacks increased from "..COLORS_Numbers.n_5_rgb.." to {max_stacks:%s}." end), -- max_stacks: 8 -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys2_003_desc_fr", {"loc_talent_veteran_improved_tag_more_damage_description"}, {"fr"}, function(locale, value) return "Le nombre maximum de cumul de "..COLORS_KWords_fr.Focus_Target_rgb_fr.." est augmentés de "..COLORS_Numbers.n_5_rgb.." à {max_stacks:%s}." end),
	--[+ Russian +]-- Сосредоточенный огонь 
	create_template("talent_tree_vet_keys2_003_desc_ru", {"loc_talent_veteran_improved_tag_more_damage_description"}, {"ru"}, function(locale, value) return "С "..COLORS_Numbers.n_5_rgb.." до {max_stacks:%s} увеличивается максимальное количество зарядов "..COLORS_KWords_ru.Focus_Target_rgb_ru.."." end),

	--[+ Keystone 3 - Weapons Specialist +]--
	create_template("talent_tree_vet_keys3_000_desc_en", {"loc_talent_veteran_weapon_switch_description"}, {"en"}, function(locale, value) return "Gain "..COLORS_KWords.Rangedspec_rgb.." on Melee kills. Stacks {ranged_stacks:%s} times.\nGain "..COLORS_KWords.Meleespec_rgb.." on Ranged kill. Stacks {melee_stacks:%s} times.\n\nWhen you wield your Ranged weapon, you activate your "..COLORS_KWords.Rangedspec_rgb.." effect, to gain:\n{ranged_attack_speed:%s} Ranged Attack Speed and\n{ranged_crit_chance:%s} Ranged "..COLORS_KWords.Crit_hit_rgb.." Chance on your next shot, per Stack. Lasts {ranged_duration:%s} seconds.\n\nWhen you wield your Melee weapon, you activate your "..COLORS_KWords.Meleespec_rgb.." effect, to gain:\n{melee_attack_speed:%s} Melee Attack Speed,\n"..COLORS_Numbers.n_plus_rgb.."{dodge_modifier:%s} Dodge Speed and Dodge Distance. Lasts {melee_duration:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Keystone_3_rgb end), -- ranged_stacks: 10, melee_stacks: 1, ranged_attack_speed: +2%, ranged_crit_chance: +33%, ranged_duration: 5, melee_attack_speed: +15%, dodge_modifier: 10%, melee_duration: 10 -- -() --  s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys3_000_desc_fr", {"loc_talent_veteran_weapon_switch_description"}, {"fr"}, function(locale, value) return "Obtenez "..COLORS_KWords_fr.Rangedspec_rgb_fr.." en éliminant des ennemis en mêlée. Cumule jusqu'à {ranged_stacks:%s} fois.\nObtenez "..COLORS_KWords_fr.Meleespec_rgb_fr.." en éliminant des ennemis à distance. Cumule jusqu'à {melee_stacks:%s} fois.\n\nLorsque vous maniez votre arme à distance, vous activez votre effet "..COLORS_KWords_fr.Rangedspec_rgb_fr..", pour obtenir :\n{ranged_attack_speed:%s} Vitesse d'attaque à distance et\n{ranged_crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_r_rgb_fr.." à distance lors de votre prochain tir, par cumul. Dure {ranged_duration:%s} secondes.\n\nLorsque vous maniez votre arme de mêlée, vous activez votre effet "..COLORS_KWords_fr.Meleespec_rgb_fr..", pour obtenir :\n{melee_attack_speed:%s} Vitesse d'attaque au corps à corps,\n"..COLORS_Numbers.n_plus_rgb.."{dodge_modifier:%s} Vitesse d'esquive et Distance d'esquive. Dure {melee_duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_rgb_fr end),
	--[+ Russian +]-- Специалист по оружию -- руоф Специалист по вооружениям
	create_template("talent_tree_vet_keys3_000_desc_ru", {"loc_talent_veteran_weapon_switch_description"}, {"ru"}, function(locale, value) return "Вы получаете заряд "..COLORS_KWords_ru.Rangedspec_rgb_ru.." при убийстве в ближнем бою. Суммируется до {ranged_stacks:%s} раз.\nВы получаете заряд "..COLORS_KWords_ru.Meleespec_rgb_ru.." при убийстве в дальнем бою. Суммируется {melee_stacks:%s} раз.\n\nКогда вы берёте в руки оружие дальнего боя, вы активируете эффект "..COLORS_KWords_ru.Rangedspec_rgb_ru.." и получаете за каждый заряд прибавку для следующего выстрела:\n{ranged_attack_speed:%s} к скорости атаки и\n{ranged_crit_chance:%s} к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru..". Длится {ranged_duration:%s} секунд.\n\nКогда вы берёте в руки оружие ближнего боя, вы активируете эффект "..COLORS_KWords_ru.Meleespec_rgb_ru.." и получаете:\n{melee_attack_speed:%s} к скорости атаки,\n"..COLORS_Numbers.n_plus_rgb.."{dodge_modifier:%s} к скорости и дистанции уклонений. Длится {melee_duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_3_rgb_ru end),

	--[+ Keystone 3-1 - Always Prepared +]--
	create_template("talent_tree_vet_keys3_001_desc_en", {"loc_talent_veteran_weapon_switch_replenish_ammo_description"}, {"en"}, function(locale, value) return "Activating "..COLORS_KWords.Rangedspec_rgb.." replenishes up to {ammo:%s} of your missing ammo in your Clip from your Reserve, rounded up, for each Stack."..TALENTS_Enh_desc2.ED_VET_Keystone_3_1_rgb end), -- ammo: 3.3% -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys3_001_desc_fr", {"loc_talent_veteran_weapon_switch_replenish_ammo_description"}, {"fr"}, function(locale, value) return "L'activation de "..COLORS_KWords_fr.Rangedspec_rgb_fr.." recharge jusqu'à {ammo:%s} de vos munitions manquantes dans votre chargeur à partir de votre réserve, arrondi au supérieur, par cumul."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_1_rgb_fr end),
	--[+ Russian +]-- Всегда готов 
	create_template("talent_tree_vet_keys3_001_desc_ru", {"loc_talent_veteran_weapon_switch_replenish_ammo_description"}, {"ru"}, function(locale, value) return "Активация "..COLORS_KWords_ru.Rangedspec_rgb_ru.." заряжает до {ammo:%s} недостающих патронов в вашем магазине из резерва за каждый заряд. Округляется в большую сторону."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_3_1_rgb_ru end),

	--[+ Keystone 3-2 - Invigorated +]--
	create_template("talent_tree_vet_keys3_002_desc_en", {"loc_talent_veteran_weapon_switch_replenish_stamina_description"}, {"en"}, function(locale, value) return "Activating "..COLORS_KWords.Meleespec_rgb.." restores {stamina:%s} "..COLORS_KWords.Stamina_rgb.."."..TALENTS_Enh_desc2.ED_VET_Keystone_3_2_rgb end), -- stamina: 20% -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys3_002_desc_fr", {"loc_talent_veteran_weapon_switch_replenish_stamina_description"}, {"fr"}, function(locale, value) return "L'activation de "..COLORS_KWords_fr.Meleespec_rgb_fr.." restaure {stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_2_rgb_fr end),
	--[+ Russian +]-- Ободрение 
	create_template("talent_tree_vet_keys3_002_desc_ru", {"loc_talent_veteran_weapon_switch_replenish_stamina_description"}, {"ru"}, function(locale, value) return "Активация "..COLORS_KWords_ru.Meleespec_rgb_ru.." восстанавливает {stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_3_2_rgb_ru end),

	--[+ Keystone 3-3 - On Your Toes +]--
	create_template("talent_tree_vet_keys3_003_desc_en", {"loc_talent_veteran_weapon_switch_replenish_toughness_description"}, {"en"}, function(locale, value) return "Activating "..COLORS_KWords.Meleespec_rgb.." and "..COLORS_KWords.Rangedspec_rgb.." replenishes {toughness:%s} "..COLORS_KWords.Toughness_rgb..". {cooldown:%s} seconds Cooldown for each."..TALENTS_Enh_desc2.ED_VET_Keystone_3_3_rgb end), -- toughness: 20%, cooldown: 3 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys3_003_desc_fr", {"loc_talent_veteran_weapon_switch_replenish_toughness_description"}, {"fr"}, function(locale, value) return "L'activation de "..COLORS_KWords_fr.Meleespec_rgb_fr.." et "..COLORS_KWords_fr.Rangedspec_rgb_fr.." restaure {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr..". Temps de recharge de {cooldown:%s} secondes pour chacun."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_3_rgb_fr end),
	--[+ Russian +]-- Наготове 
	create_template("talent_tree_vet_keys3_003_desc_ru", {"loc_talent_veteran_weapon_switch_replenish_toughness_description"}, {"ru"}, function(locale, value) return "Активация "..COLORS_KWords_ru.Meleespec_rgb_ru.." или "..COLORS_KWords_ru.Rangedspec_rgb_ru.." восстанавливает {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..". {cooldown:%s} секунды восстанавливается каждый."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_3_3_rgb_ru end),

	--[+ Keystone 3-4 - Fleeting Fire +]--
	create_template("talent_tree_vet_keys3_004_desc_en", {"loc_talent_veteran_weapon_switch_reload_speed_description"}, {"en"}, function(locale, value) return "Activating "..COLORS_KWords.Rangedspec_rgb.." grants {reload_speed:%s} Reload Speed for {duration:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Keystone_3_4_rgb end), -- reload_speed: 20%, duration: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys3_004_desc_fr", {"loc_talent_veteran_weapon_switch_reload_speed_description"}, {"fr"}, function(locale, value) return "L'activation de "..COLORS_KWords_fr.Rangedspec_rgb_fr.." accorde {reload_speed:%s} vitesse de rechargement pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_4_rgb_fr end),
	--[+ Russian +]-- Беглый огонь 
	create_template("talent_tree_vet_keys3_004_desc_ru", {"loc_talent_veteran_weapon_switch_reload_speed_description"}, {"ru"}, function(locale, value) return "Активация "..COLORS_KWords_ru.Rangedspec_rgb_ru.." даёт {reload_speed:%s} к скорости перезарядки оружия на {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_3_4_rgb_ru end),

	--[+ Keystone 3-5 - Conditioning +]--
	create_template("talent_tree_vet_keys3_005_desc_en", {"loc_talent_veteran_weapon_switch_stamina_reduction_description"}, {"en"}, function(locale, value) return "Activating "..COLORS_KWords.Meleespec_rgb.." grants {stamina_reduction:%s} "..COLORS_KWords.Stamina_rgb.." Cost Reduction for {duration:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Keystone_3_5_rgb end), -- stamina_reduction: 25%, duration: 3 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_keys3_005_desc_fr", {"loc_talent_veteran_weapon_switch_stamina_reduction_description"}, {"fr"}, function(locale, value) return "L'activation de "..COLORS_KWords_fr.Meleespec_rgb_fr.." accorde {stamina_reduction:%s} réduction du coût d'"..COLORS_KWords_fr.Stamina_rgb_fr.." pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Keystone_3_5_rgb_fr end),
	--[+ Russian +]-- Подготовка 
	create_template("talent_tree_vet_keys3_005_desc_ru", {"loc_talent_veteran_weapon_switch_stamina_reduction_description"}, {"ru"}, function(locale, value) return "Активация "..COLORS_KWords_ru.Meleespec_rgb_ru.." даёт {stamina_reduction:%s} к сокращению затрат "..COLORS_KWords_ru.Stamina_rgb_ru.." на {duration:%s} секунды."..TALENTS_Enh_desc2_ru.ED_VET_Keystone_3_5_rgb_ru end),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Longshot +]--
	create_template("talent_tree_vet_pas_001_desc_en", {"loc_talent_veteran_increased_damage_based_on_range_desc"}, {"en"}, function(locale, value) return "Deal up to {max_damage:%s} Ranged Base "..COLORS_KWords.Damage_rgb..". Bonus is reduced the nearer the target."..TALENTS_Enh_desc2.ED_VET_Passive_1_rgb end), -- max_damage: +20% -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_001_desc_fr", {"loc_talent_veteran_increased_damage_based_on_range_desc"}, {"fr"}, function(locale, value) return "Inflige jusqu'à {max_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de base à distance. Le bonus est réduit plus la cible est proche."..TALENTS_Enh_desc2_fr.ED_VET_Passive_1_rgb_fr end),
	--[+ Russian +]-- Дальний выстрел -- руоф Далекая перспектива
	create_template("talent_tree_vet_pas_001_desc_ru", {"loc_talent_veteran_increased_damage_based_on_range_desc"}, {"ru"}, function(locale, value) return "До {max_damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." для дальнобойных атак. Чем ближе цель, тем меньше прибавка."..TALENTS_Enh_desc2_ru.ED_VET_Passive_1_rgb_ru end),

	--[+ Passive 2 - Close Order Drill +]--
	create_template("talent_tree_vet_pas_002_desc_en", {"loc_talent_veteran_toughness_damage_reduction_per_ally_description"}, {"en"}, function(locale, value) return COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_11_rgb.." "..COLORS_KWords.Toughness_dmg_red_rgb.." per Ally in "..COLORS_KWords.Coherency_rgb..". Up to {toughness:%s}."..TALENTS_Enh_desc2.ED_VET_Passive_2_rgb end), -- toughness: +33% -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_002_desc_fr", {"loc_talent_veteran_toughness_damage_reduction_per_ally_description"}, {"fr"}, function(locale, value) return COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_11_rgb.." de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." par allié en syntonie. Jusqu'à {toughness:%s}."..TALENTS_Enh_desc2_fr.ED_VET_Passive_2_rgb_fr end),
	--[+ Russian +]-- Строевая подготовка 
	create_template("talent_tree_vet_pas_002_desc_ru", {"loc_talent_veteran_toughness_damage_reduction_per_ally_description"}, {"ru"}, function(locale, value) return COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_11_rgb.." к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." за каждого союзника в "..COLORS_KWords_ru.Coherency_rgb_ru..". Вплоть до {toughness:%s}."..TALENTS_Enh_desc2_ru.ED_VET_Passive_2_rgb_ru end),

	--[+ Passive 3 - One Motion +]--
	create_template("talent_tree_vet_pas_003_desc_en", {"loc_talent_veteran_reduce_swap_time_desc"}, {"en"}, function(locale, value) return "{swap_speed} Weapon Swap Speed."..TALENTS_Enh_desc2.ED_VET_Passive_3_rgb end), -- swap_speed: +25%
	--[+ French +]--
	create_template("talent_tree_vet_pas_003_desc_fr", {"loc_talent_veteran_reduce_swap_time_desc"}, {"fr"}, function(locale, value) return "{swap_speed:%s} Vitesse de changement d'arme."..TALENTS_Enh_desc2_fr.ED_VET_Passive_3_rgb_fr end),
	--[+ Russian +]-- В одно движение -- руоф Одно движение
	create_template("talent_tree_vet_pas_003_desc_ru", {"loc_talent_veteran_reduce_swap_time_desc"}, {"ru"}, function(locale, value) return "{swap_speed} к скорости смены оружия."..TALENTS_Enh_desc2_ru.ED_VET_Passive_3_rgb_ru end),

	--[+ Passive 4 - Exhilarating Takedown +]--
	create_template("talent_tree_vet_pas_004_desc_en", {"loc_talent_veteran_toughness_on_weakspot_kill_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." is replenished and "..COLORS_Numbers.n_1_rgb.." Stack of {toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." is gained for {duration:%s} seconds on a Ranged "..COLORS_KWords.Weakspot_rgb.." kill. Stacks {stacks:%s} times."..TALENTS_Enh_desc2.ED_VET_Passive_4_rgb end), -- toughness: 15%, toughness_damage_reduction: +10%, duration: 8, stacks: 3 -- rewrite -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_004_desc_fr", {"loc_talent_veteran_toughness_on_weakspot_kill_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." est récuperés et "..COLORS_Numbers.n_1_rgb.." cumul de {toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." est gagné pour {duration:%s} secondes lors d'une élimination à distance sur "..COLORS_KWords_fr.Weakspot_rgb_fr..". Cumule jusqu'à {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_VET_Passive_4_rgb_fr end),
	--[+ Russian +]-- Подбадривающее убийство -- руоф Бодрящее сокрушение
	create_template("talent_tree_vet_pas_004_desc_ru", {"loc_talent_veteran_toughness_on_weakspot_kill_desc"}, {"ru"}, function(locale, value) return "Вы восстанавливаете {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и получаете "..COLORS_Numbers.n_1_rgb.." заряд {toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." на {duration:%s} секунд при убийстве врага в "..COLORS_KWords_ru.Weakspothit_rgb_ru..". Суммируется до {stacks:%s} раз."..TALENTS_Enh_desc2_ru.ED_VET_Passive_4_rgb_ru end),

	--[+ Passive 5 - Volley Adept +]--
	create_template("talent_tree_vet_pas_005_desc_en", {"loc_talent_veteran_reload_speed_on_elite_kill_desc"}, {"en"}, function(locale, value) return "{reload_speed:%s} Reload Speed on Elite and Specialist Enemy Kill."..TALENTS_Enh_desc2.ED_VET_Passive_5_rgb end), -- reload_speed: +30% -- &->and
	--[+ French +]--
	create_template("talent_tree_vet_pas_005_desc_fr", {"loc_talent_veteran_reload_speed_on_elite_kill_desc"}, {"fr"}, function(locale, value) return "{reload_speed:%s} vitesse de rechargement lors de l'élimination d'un ennemi d'élite ou spécialiste."..TALENTS_Enh_desc2_fr.ED_VET_Passive_5_rgb_fr end),
	--[+ Russian +]-- Умелый залп -- руоф Адепт залпа
	create_template("talent_tree_vet_pas_005_desc_ru", {"loc_talent_veteran_reload_speed_on_elite_kill_desc"}, {"ru"}, function(locale, value) return "{reload_speed:%s} к скорости перезарядки при убийстве элитных врагов или специалистов."..TALENTS_Enh_desc2_ru.ED_VET_Passive_5_rgb_ru end),

	--[+ Passive 6 - Charismatic +]--
	create_template("talent_tree_vet_pas_006_desc_en", {"loc_talent_veteran_increased_aura_radius_description"}, {"en"}, function(locale, value) return "{radius:%s} Aura radius."..TALENTS_Enh_desc2.ED_VET_Passive_6_rgb end), -- radius: +50%
	--[+ French +]--
	create_template("talent_tree_vet_pas_006_desc_fr", {"loc_talent_veteran_increased_aura_radius_description"}, {"fr"}, function(locale, value) return "{radius:%s} rayon d'aura."..TALENTS_Enh_desc2_fr.ED_VET_Passive_6_rgb_fr end),
	--[+ Russian +]-- Харизматичный -- руоф Обаятельный
	create_template("talent_tree_vet_pas_006_desc_ru", {"loc_talent_veteran_increased_aura_radius_description"}, {"ru"}, function(locale, value) return "{radius:%s} к радиусу ауры "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Passive_6_rgb_ru end),

	--[+ Passive 7 - Confirmed Kill +]--
	create_template("talent_tree_vet_pas_007_desc_en", {"loc_talent_veteran_toughness_on_elite_kill_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." is replenished on killing an Elite or Specialist Enemy, and a further {toughness_over_time:%s} "..COLORS_KWords.Toughness_rgb.." over {duration:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Passive_7_rgb end), -- toughness: 10%, toughness_over_time: 20%, duration: 10 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_007_desc_fr", {"loc_talent_veteran_toughness_on_elite_kill_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." est restauré lors d'une éliminant d'élite ou de spécialiste, et {toughness_over_time:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." supplémentaire pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_7_rgb_fr end),
	--[+ Russian +]-- Подтверждённое убийство -- руоф Подтвержденное убийство
	create_template("talent_tree_vet_pas_007_desc_ru", {"loc_talent_veteran_toughness_on_elite_kill_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при убийстве элитного врага или специалиста сразу, а также ещё дополнительно {toughness_over_time:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." в течение {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_7_rgb_ru end),

	--[+ Passive 8 - Tactical Reload +]--
	create_template("talent_tree_vet_pas_008_desc_en", {"loc_talent_veteran_reload_speed_non_empty_mag_desc"}, {"en"}, function(locale, value) return "{reload_speed:%s} Reload Speed if your weapon contains Ammo."..TALENTS_Enh_desc2.ED_VET_Passive_8_rgb end), -- reload_speed: +25%
	--[+ French +]--
	create_template("talent_tree_vet_pas_008_desc_fr", {"loc_talent_veteran_reload_speed_non_empty_mag_desc"}, {"fr"}, function(locale, value) return "{reload_speed:%s} vitesse de rechargement si votre arme contient des munitions."..TALENTS_Enh_desc2_fr.ED_VET_Passive_8_rgb_fr end),
	--[+ Russian +]-- Тактическая перезарядка 
	create_template("talent_tree_vet_pas_008_desc_ru", {"loc_talent_veteran_reload_speed_non_empty_mag_desc"}, {"ru"}, function(locale, value) return "{reload_speed:%s} к скорости перезарядки, если в оружии остались патроны."..TALENTS_Enh_desc2_ru.ED_VET_Passive_8_rgb_ru end),

	--[+ Passive 9 - Out for Blood +]--
	create_template("talent_tree_vet_pas_009_desc_en", {"loc_talent_veteran_all_kills_replenish_toughness_description"}, {"en"}, function(locale, value) return "{toughness:%s} additional "..COLORS_KWords.Toughness_rgb.." is replenished with each kill."..TALENTS_Enh_desc2.ED_VET_Passive_9_rgb end), -- toughness: 5% -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_009_desc_fr", {"loc_talent_veteran_all_kills_replenish_toughness_description"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." supplémentaire est restauré avec chaque élimination."..TALENTS_Enh_desc2_fr.ED_VET_Passive_9_rgb_fr end),
	--[+ Russian +]-- На тропе войны -- руоф В поисках крови
	create_template("talent_tree_vet_pas_009_desc_ru", {"loc_talent_veteran_all_kills_replenish_toughness_description"}, {"ru"}, function(locale, value) return "Вы восстанавливаете {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." дополнительно за каждое убийство."..TALENTS_Enh_desc2_ru.ED_VET_Passive_9_rgb_ru end),

	--[+ Passive 10 - Get Back in the Fight! +]--
	create_template("talent_tree_vet_pas_010_desc_en", {"loc_talent_veteran_movement_bonus_on_toughness_broken_desc"}, {"en"}, function(locale, value) return "{stamina_percent:%s} "..COLORS_KWords.Stamina_rgb.." restored, along with "..COLORS_KWords.Stun_rgb.." and Slow Immunity, for {duration:%s} seconds when "..COLORS_KWords.Toughness_rgb.." is broken.\n\n{cooldown:%s} seconds Cooldown."..TALENTS_Enh_desc2.ED_VET_Passive_10_rgb end), -- duration: 6, stamina_percent: +50%, cooldown: 30 -- rewrite -- &->and -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_010_desc_fr", {"loc_talent_veteran_movement_bonus_on_toughness_broken_desc"}, {"fr"}, function(locale, value) return "{stamina_percent:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." est restauré, avec une immunité au "..COLORS_KWords_fr.Stuns_rgb_fr.." et au ralentissement, pendant {duration:%s} secondes lorsque la "..COLORS_KWords_fr.Toughness_rgb_fr.." tombe à "..COLORS_Numbers.n_0_rgb..".\n\n{cooldown:%s} secondes de recharge."..TALENTS_Enh_desc2_fr.ED_VET_Passive_10_rgb_fr end),
	--[+ Russian +]-- Возвращайся в бой! -- руоф Вернуться в бой!
	create_template("talent_tree_vet_pas_010_desc_ru", {"loc_talent_veteran_movement_bonus_on_toughness_broken_desc"}, {"ru"}, function(locale, value) return "Если вашу "..COLORS_KWords_ru.Tghnss_rgb_ru.." пробили, вы восполняете {stamina_percent:%s} "..COLORS_KWords_ru.Stamina_rgb_ru..", а также получаете иммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru.." и замедлению на {duration:%s} секунд.\n\nВосстанавливается {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_10_rgb_ru end),

	--[+ Passive 11 - Catch a Breath +]--
	create_template("talent_tree_vet_pas_011_desc_en", {"loc_talent_veteran_replenish_toughness_outside_melee_hit_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." per second is replenished after not being targeted by a Melee Attack for {duration:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Passive_11_rgb end), -- toughness: 5%, range: 8 -- m->meters -- colors
	--[+ French +]--Reprendre son souffle !!! ligne géo /!\
	create_template("talent_tree_vet_pas_011_desc_fr", {"loc_talent_veteran_replenish_toughness_outside_melee_hit_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." régénérés par seconde si le Vétéran n'a pas subit ou bloqué d'attaque de Mélée pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_11_rgb_fr end),
	--[+ Russian +]-- Переведи дух -- руоф Передышка
	create_template("talent_tree_vet_pas_011_desc_ru", {"loc_talent_veteran_replenish_toughness_outside_melee_hit_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду, если вы не были целью атаки ближнего боя в течение {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_11_rgb_ru end),

	--[+ Passive 12 - Grenade Tinkerer +]--
	create_template("talent_tree_vet_pas_012_desc_en", {"loc_talent_veteran_improved_grenades_desc"}, {"en"}, function(locale, value) return "Improve your chosen Grenade:\n{krak_grenade:%s}: {krak:%s} "..COLORS_KWords.Damage_rgb..".\n{frag_grenade:%s}: {frag_damage:%s} "..COLORS_KWords.Damage_rgb.." and Radius.\n{smoke_grenade:%s}: {smoke:%s} Duration."..TALENTS_Enh_desc2.ED_VET_Passive_12_rgb end), -- krak_grenade: Krak Grenade, krak: +50%, frag_grenade: Frag Grenade, frag_damage: +25%, smoke_grenade: Smoke Grenade, smoke: +100% -- &->and -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_012_desc_fr", {"loc_talent_veteran_improved_grenades_desc"}, {"fr"}, function(locale, value) return "Améliorez votre grenade choisie:\n{krak_grenade:%s}: {krak:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..".\n{frag_grenade:%s}: {frag_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." et de rayon.\n{smoke_grenade:%s}: {smoke:%s} durée."..TALENTS_Enh_desc2_fr.ED_VET_Passive_12_rgb_fr end),
	--[+ Russian +]-- Гранатный мастер -- руоф Любитель гранат
	create_template("talent_tree_vet_pas_012_desc_ru", {"loc_talent_veteran_improved_grenades_desc"}, {"ru"}, function(locale, value) return "Выбранная граната улучшается:\n{krak_grenade:%s}: {krak:%s} к "..COLORS_KWords_ru.Damage_rgb_ru..".\n{frag_grenade:%s}: {frag_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и радиусу.\n{smoke_grenade:%s}: {smoke:%s} к длительности."..TALENTS_Enh_desc2_ru.ED_VET_Passive_12_rgb_ru end),

	--[+ Passive 13 - Covering Fire +]--
	create_template("talent_tree_vet_pas_013_desc_en", {"loc_talent_veteran_replenish_toughness_and_boost_allies_desc"}, {"en"}, function(locale, value) return "When you kill an enemy with a Ranged Attack, Allies within {radius:%s} meters of the target Replenish {toughness:%s} "..COLORS_KWords.Toughness_rgb.." and receive {base_damage:%s} to all Base "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Passive_13_rgb end), -- radius: 5, toughness: 15%, base_damage: +10%, duration: 3 -- &->and s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_013_desc_fr", {"loc_talent_veteran_replenish_toughness_and_boost_allies_desc"}, {"fr"}, function(locale, value) return "Lorsque d'une élimination à distance, les alliés dans un rayon de {radius:%s} mètres de la cible régénèrent {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." et reçoivent {base_damage:%s} à tous les "..COLORS_KWords_fr.Damage_rgb_fr.." de base pour {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_13_rgb_fr end),
	--[+ Russian +]-- Прикрывающий огонь -- руоф Прикрытие огнем
	create_template("talent_tree_vet_pas_013_desc_ru", {"loc_talent_veteran_replenish_toughness_and_boost_allies_desc"}, {"ru"}, function(locale, value) return "Когда вы убиваете врага из оружия дальнего боя, союзники в радиусе {radius:%s} метров от цели восполняют {toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." и получают {base_damage:%s} ко всему базовому "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунды."..TALENTS_Enh_desc2_ru.ED_VET_Passive_13_rgb_ru end),

	--[+ Passive 14 - Serrated Blade +]--
	create_template("talent_tree_vet_pas_014_desc_en", {"loc_talent_veteran_hits_cause_bleed_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{stacks:%s} Stack of "..COLORS_KWords.Bleed_rgb.." to the target on Melee Hit. Up to "..COLORS_Numbers.n_16_rgb.."."..TALENTS_Enh_desc2.ED_VET_Passive_14_rgb end), -- stacks: 1 -- Stack(s)->Stacks -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_014_desc_fr", {"loc_talent_veteran_hits_cause_bleed_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{stacks:%s} cumul de "..COLORS_KWords_fr.Bleed_rgb_fr.." sur la cible lors des coups de mêlée. Jusqu'à "..COLORS_Numbers.n_16_rgb.." cumuls."..TALENTS_Enh_desc2_fr.ED_VET_Passive_14_rgb_fr end),
	--[+ Russian +]-- Зазубренный клинок -- руоф Зазубренное лезвие
	create_template("talent_tree_vet_pas_014_desc_ru", {"loc_talent_veteran_hits_cause_bleed_desc"}, {"ru"}, function(locale, value) return "{stacks:%s} заряд "..COLORS_KWords_ru.Bleed_rgb_ru.." получает цель при ударе в ближнем бою. До "..COLORS_Numbers.n_16_rgb.." зарядов максимум."..TALENTS_Enh_desc2_ru.ED_VET_Passive_14_rgb_ru end),

	--[+ Passive 15 - Agile Engagement +]--
	create_template("talent_tree_vet_pas_015_desc_en", {"loc_talent_veteran_kill_grants_damage_to_other_slot_desc"}, {"en"}, function(locale, value) return "{damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." on killing an enemy with a Melee attack.\n{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." on killing an enemy with a Ranged attack.\nLasts {duration:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Passive_15_rgb end), -- damage: +25%, duration: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_015_desc_fr", {"loc_talent_veteran_kill_grants_damage_to_other_slot_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de distance en tuant un ennemi avec une attaque de mêlée.\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de mêlée lors d'une éliminant à distance.\nDure {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_15_rgb_fr end),
	--[+ Russian +]-- Ловкое взаимодействие 
	create_template("talent_tree_vet_pas_015_desc_ru", {"loc_talent_veteran_kill_grants_damage_to_other_slot_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в дальнем бою при убийстве врага в ближнем бою.\n{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в ближнем бою при убийстве врага в дальнем бою.\nДлится {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_15_rgb_ru end),

	--[+ Passive 16 - Kill Zone +]--
	create_template("talent_tree_vet_pas_016_desc_en", {"loc_talent_veteran_ranged_power_out_of_melee_new_desc"}, {"en"}, function(locale, value) return "{ranged_damage:%s} Base Ranged "..COLORS_KWords.Damage_rgb.." when you have avoided Melee Attacks for {cooldown:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Passive_16_rgb end), -- ranged_damage: +20%, radius: 8 -- m->meters -- colors
	--[+ French +]--Zone délimination !!! ligne géo
	create_template("talent_tree_vet_pas_016_desc_fr", {"loc_talent_veteran_ranged_power_out_of_melee_new_desc"}, {"fr"}, function(locale, value) return "{ranged_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de base à Distance lorsqu'il n'a pas subit ou bloqué d'attaque de Mélée."..TALENTS_Enh_desc2_fr.ED_VET_Passive_16_rgb_fr end),
	--[+ Russian +]-- Зона поражение 
	create_template("talent_tree_vet_pas_016_desc_ru", {"loc_talent_veteran_ranged_power_out_of_melee_new_desc"}, {"ru"}, function(locale, value) return "{ranged_damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." для дальнобойных атак, если вы избегали атак ближнего боя в течение {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_16_rgb_ru end),

	--[+ Passive 17 - Opening Salvo +]--
	create_template("talent_tree_vet_pas_017_desc_en", {"loc_talent_veteran_bonus_crit_chance_on_ammo_desc"}, {"en"}, function(locale, value) return "The first {ammo:%s} Ammo after a Reload has {crit_chance:%s} Ranged "..COLORS_KWords.Crit_hit_rgb.." Chance."..TALENTS_Enh_desc2.ED_VET_Passive_17_rgb end), -- ammo: 20%, crit_chance: +10% -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_017_desc_fr", {"loc_talent_veteran_bonus_crit_chance_on_ammo_desc"}, {"fr"}, function(locale, value) return "Les premières {ammo:%s} munitions après un rechargement ont {crit_chance:%s} de "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.." à distance."..TALENTS_Enh_desc2_fr.ED_VET_Passive_17_rgb_fr end),
	--[+ Russian +]-- Открывающий залп 
	create_template("talent_tree_vet_pas_017_desc_ru", {"loc_talent_veteran_bonus_crit_chance_on_ammo_desc"}, {"ru"}, function(locale, value) return "Первые {ammo:%s} патронов после перезарядки имеют {crit_chance:%s} к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Passive_17_rgb_ru end),

	--[+ Passive 18 - Field Improvisation +]--
	create_template("talent_tree_vet_pas_018_desc_en", {"loc_talent_veteran_better_deployables_description"}, {"en"}, function(locale, value) return "Medi-Packs:\nHeal {damage_heal:%s} faster,\nReplenish {toughness:%s} "..COLORS_KWords.Toughness_rgb.." per second,\nCleanse "..COLORS_KWords.Corruption_rgb.." up to the next "..COLORS_KWords.Wound_rgb..".\n\nAmmo Crates also restore Grenades."..TALENTS_Enh_desc2.ED_VET_Passive_18_rgb end), -- damage_heal: +100%, toughness: 1% -- rewrite -- &->and -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_018_desc_fr", {"loc_talent_veteran_better_deployables_description"}, {"fr"}, function(locale, value) return "Caisse médical:\nSoignent {damage_heal:%s} plus rapidement,\nRégénèrent {toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." par seconde,\nPurifie "..COLORS_KWords_fr.Corruption_rgb_fr.." jusqu'à la prochaine "..COLORS_KWords_fr.Wound_rgb_fr..".\n\nLes caisses de munitions restaurent également les grenades."..TALENTS_Enh_desc2_fr.ED_VET_Passive_18_rgb_fr end),
	--[+ Russian +]-- Полевая импровизация 
	create_template("talent_tree_vet_pas_018_desc_ru", {"loc_talent_veteran_better_deployables_description"}, {"ru"}, function(locale, value) return "Медпаки:\n{damage_heal:%s} к скорости лечения,\n{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается в секунду и очищается "..COLORS_KWords_ru.Corruption_a_rgb_ru.." вплоть до следующей "..COLORS_KWords_ru.Wound_y_rgb_ru..".\nЯщики с боеприпасами также восстанавливают гранаты."..TALENTS_Enh_desc2_ru.ED_VET_Passive_18_rgb_ru end),

	--[+ Passive 19 - Twinned Blast +]--
	create_template("talent_tree_vet_pas_019_desc_en", {"loc_talent_veteran_extra_grenade_throw_chance_desc"}, {"en"}, function(locale, value) return "{chance:%s} chance to throw an additional Grenade but this still only consumes a single Grenade."..TALENTS_Enh_desc2.ED_VET_Passive_19_rgb end), -- chance: 20% -- -()
	--[+ French +]--
	create_template("talent_tree_vet_pas_019_desc_fr", {"loc_talent_veteran_extra_grenade_throw_chance_desc"}, {"fr"}, function(locale, value) return "{chance:%s} de chance de lancer une grenade supplémentaire mais cela ne consomme qu'une seule grenade."..TALENTS_Enh_desc2_fr.ED_VET_Passive_19_rgb_fr end),
	--[+ Russian +]-- Двойной взрыв -- Спаренный взрыв
	create_template("talent_tree_vet_pas_019_desc_ru", {"loc_talent_veteran_extra_grenade_throw_chance_desc"}, {"ru"}, function(locale, value) return "{chance:%s} шанс бросить дополнительную гранату, потратив по прежнему одну."..TALENTS_Enh_desc2_ru.ED_VET_Passive_19_rgb_ru end),

	--[+ Passive 20 - Demolition Stockpile +]--
	create_template("talent_tree_vet_pas_020_desc_en", {"loc_talent_veteran_replenish_grenade_desc"}, {"en"}, function(locale, value) return "Replenish {amount:%s} Grenade every {time:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Passive_20_rgb end), -- amount: 1, time: 60 -- Grenade(s)->Grenade -- s->seconds
	--[+ French +]--
	create_template("talent_tree_vet_pas_020_desc_fr", {"loc_talent_veteran_replenish_grenade_desc"}, {"fr"}, function(locale, value) return "Vous régénérez {amount:%s} Grenade toutes les {time:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_20_rgb_fr end),
	--[+ Russian +]-- Склад взрывчатки 
	create_template("talent_tree_vet_pas_020_desc_ru", {"loc_talent_veteran_replenish_grenade_desc"}, {"ru"}, function(locale, value) return "Вы получаете {amount:%s} гранату каждые {time:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_20_rgb_ru end),

	--[+ Passive 21 - Grenadier +]--
	create_template("talent_tree_vet_pas_021_desc_en", {"loc_talent_veteran_extra_grenade_description"}, {"en"}, function(locale, value) return "You can carry {ammo:%s} extra Grenade."..TALENTS_Enh_desc2.ED_VET_Passive_21_rgb end), -- ammo: 1 -- Grenade(s)->Grenade
	--[+ French +]--
	create_template("talent_tree_vet_pas_021_desc_fr", {"loc_talent_veteran_extra_grenade_description"}, {"fr"}, function(locale, value) return "Vous pouvez porter {ammo:%s} grenade supplémentaire."..TALENTS_Enh_desc2_fr.ED_VET_Passive_21_rgb_fr end),
	--[+ Russian +]-- Гренадёр -- руоф Гренадер
	create_template("talent_tree_vet_pas_021_desc_ru", {"loc_talent_veteran_extra_grenade_description"}, {"ru"}, function(locale, value) return "Вы можете нести {ammo:%s} дополнительную гранату."..TALENTS_Enh_desc2_ru.ED_VET_Passive_21_rgb_ru end),

	--[+ Passive 22 - Leave No One Behind +]--
	create_template("talent_tree_vet_pas_022_desc_en", {"loc_talent_veteran_movement_speed_towards_downed_description"}, {"en"}, function(locale, value) return "{revive_speed:%s} Assist Speed and Revive Speed. {movement_speed:%s} Movement Speed and "..COLORS_KWords.Stun_rgb.." Immunity when moving towards a Knocked Down or Incapacitated Ally. Whenever you Revive a Knocked Down Ally, they receive {damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Reduction for {duration:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Passive_22_rgb end), -- revive_speed: +20%, movement_speed: +20%, damage_reduction: +33%, duration: 5 -- &->and -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_022_desc_fr", {"loc_talent_veteran_movement_speed_towards_downed_description"}, {"fr"}, function(locale, value) return "{revive_speed:%s} Vitesse d'assistance et de réanimation. {movement_speed:%s} Vitesse de déplacement et une immunité aux "..COLORS_KWords_fr.Stuns_rgb_fr.." en se dirigeant vers un allié renversé ou incapacité. Chaque fois que vous réanimez un allié renversé, il reçoit {damage_reduction:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_22_rgb_fr end),
	--[+ Russian +]-- Никого не оставляйте позади 
	create_template("talent_tree_vet_pas_022_desc_ru", {"loc_talent_veteran_movement_speed_towards_downed_description"}, {"ru"}, function(locale, value) return "{revive_speed:%s} к скорости поднятия и возрождения союзников.\n{movement_speed:%s} к скорости движения и иммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru..", если вы двигаетесь в сторону сбитого с ног или выведенного из строя союзника. Пока вы поднимаете сбитых с ног союзников, они получают {damage_reduction:%s} сопротивления "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_22_rgb_ru end),

	--[+ Passive 23 - Precision Strikes +]--
	create_template("talent_tree_vet_pas_023_desc_en", {"loc_talent_veteran_increased_weakspot_damage_desc"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Weakspot_dmg_rgb.." from Melee and Ranged attacks."..TALENTS_Enh_desc2.ED_VET_Passive_23_rgb end), -- damage: +30% -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_023_desc_fr", {"loc_talent_veteran_increased_weakspot_damage_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Weakspot_dmg_rgb_fr.." des attaques de mêlée et à distance."..TALENTS_Enh_desc2_fr.ED_VET_Passive_23_rgb_fr end),
	--[+ Russian +]-- Точные удары 
	create_template("talent_tree_vet_pas_023_desc_ru", {"loc_talent_veteran_increased_weakspot_damage_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Weakspot_dmg_rgb_ru.." для атак ближнего и дальнего боя."..TALENTS_Enh_desc2_ru.ED_VET_Passive_23_rgb_ru end),

	--[+ Passive 24 - Determined +]--
	create_template("talent_tree_vet_pas_024_desc_en", {"loc_talent_veteran_supression_immunity_desc"}, {"en"}, function(locale, value) return "Grants Veteran immunity to Suppression dealt by Ranged enemies at all times." end),
	--[+ French +]--
	create_template("talent_tree_vet_pas_024_desc_fr", {"loc_talent_veteran_supression_immunity_desc"}, {"fr"}, function(locale, value) return "Confère au vétéran une immunité contre la suppression infligée par les ennemis à distance en tout temps." end),
	--[+ Russian +]-- Решительность 
	create_template("talent_tree_vet_pas_024_desc_ru", {"loc_talent_veteran_supression_immunity_desc"}, {"ru"}, function(locale, value) return "Вы получаете постоянный иммунитет к подавлению от вражеских выстрелов." end),

	--[+ Passive 25 - Deadshot +]--
	create_template("talent_tree_vet_pas_025_desc_en", {"loc_talent_veteran_ads_drains_stamina_boost_desc"}, {"en"}, function(locale, value) return "While aiming and being above 0 "..COLORS_KWords.Stamina_rgb.." you Gain:\n{crit_chance:%s} "..COLORS_KWords.Crit_chance_rgb..",\n{sway_reduction:%s} Sway Reduction,\n"..COLORS_Numbers.pc_p19_rgb.." Spread Reduction and\n"..COLORS_Numbers.pc_p12_rgb.." Recoil Reduction,\nbut Drains:\n{stamina:%s} "..COLORS_KWords.Stamina_rgb.." per second and\n{stamina_per_shot:%s} an additional "..COLORS_KWords.Stamina_rgb.." per shot."..TALENTS_Enh_desc2.ED_VET_Passive_25_rgb end), -- crit_chance: +25%, sway_reduction: +60%, stamina: 0.75, stamina_per_shot: 0.25 -- rewrite on_Aim! -- &->and -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_025_desc_fr", {"loc_talent_veteran_ads_drains_stamina_boost_desc"}, {"fr"}, function(locale, value) return "En visant et en étant au-dessus de 0 d'"..COLORS_KWords_fr.Stamina_rgb_fr.." vous gagnez:\n{crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_rgb_fr..",\n{sway_reduction:%s} Réduction du balancement,\n"..COLORS_Numbers.pc_p19_rgb.." Réduction de la dispersion et\n"..COLORS_Numbers.pc_p12_rgb.." Réduction du recul,\nmais consomme:\n{stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." par seconde et\n{stamina_per_shot:%s} supplémentaire d'"..COLORS_KWords_fr.Stamina_rgb_fr.." par tir."..TALENTS_Enh_desc2_fr.ED_VET_Passive_25_rgb_fr end),
	--[+ Russian +]-- Смертельный выстрел 
	create_template("talent_tree_vet_pas_025_desc_ru", {"loc_talent_veteran_ads_drains_stamina_boost_desc"}, {"ru"}, function(locale, value) return "Пока вы целитесь и ваш уровень "..COLORS_KWords_ru.Stamina_rgb_ru.." выше "..COLORS_Numbers.n_0_rgb..", вы получаете:\n{crit_chance:%s} к "..COLORS_KWords_ru.Crt_u_chance_rgb_ru..",\n{sway_reduction:%s} к уменьшению раскачивания прицела,\n"..COLORS_Numbers.pc_p19_rgb.." к сокращению разброса\n"..COLORS_Numbers.pc_p12_rgb.." к уменьшению отдачи,\nно ваш уровень "..COLORS_KWords_ru.Stamina_rgb_ru.." уменьшается на {stamina:%s} в секунду и ещё на {stamina_per_shot:%s} за каждый выстрел."..TALENTS_Enh_desc2_ru.ED_VET_Passive_25_rgb_ru end),

	--[+ Passive 26 - Born Leader +]--
	create_template("talent_tree_vet_pas_026_desc_en", {"loc_talent_veteran_allies_share_toughness_description"}, {"en"}, function(locale, value) return "{toughness:%s} of any "..COLORS_KWords.Toughness_rgb.." you replenish is restored to Allies in "..COLORS_KWords.Coherency_rgb.."."..TALENTS_Enh_desc2.ED_VET_Passive_26_rgb end), -- toughness: 15% -- rewrite -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_026_desc_fr", {"loc_talent_veteran_allies_share_toughness_description"}, {"fr"}, function(locale, value) return "{toughness:%s} de toute "..COLORS_KWords_fr.Toughness_rgb_fr.." que vous regagnez est restaurée aux Alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_VET_Passive_26_rgb_fr end),
	--[+ Russian +]-- Прирождённый лидер -- руоф Прирожденный лидер
	create_template("talent_tree_vet_pas_026_desc_ru", {"loc_talent_veteran_allies_share_toughness_description"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..", восстановленой вами из любого источника, также восстанавливается и для ваших союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Passive_26_rgb_ru end),

	--[+ Passive 27 - Keep Their Heads Down! +]--
	create_template("talent_tree_vet_pas_027_desc_en", {"loc_talent_veteran_increase_suppression_desc"}, {"en"}, function(locale, value) return "{suppression:%s} Ranged Attack Suppression."..TALENTS_Enh_desc2.ED_VET_Passive_27_rgb end), -- suppression: +50%
	--[+ French +]--
	create_template("talent_tree_vet_pas_027_desc_fr", {"loc_talent_veteran_increase_suppression_desc"}, {"fr"}, function(locale, value) return "{suppression:%s} Suppression des attaques à distance."..TALENTS_Enh_desc2_fr.ED_VET_Passive_27_rgb_fr end),
	--[+ Russian +]-- Не давай им поднять головы! -- руоф Пригнитесь!
	create_template("talent_tree_vet_pas_027_desc_ru", {"loc_talent_veteran_increase_suppression_desc"}, {"ru"}, function(locale, value) return "{suppression:%s} к подавлению врагов выстрелами."..TALENTS_Enh_desc2_ru.ED_VET_Passive_27_rgb_ru end),

	--[+ Passive 28 - Reciprocity +]--
	create_template("talent_tree_vet_pas_028_desc_en", {"loc_talent_veteran_dodging_grants_crit_description"}, {"en"}, function(locale, value) return "{crit_chance:%s} "..COLORS_KWords.Crit_hit_rgb.." Chance for {duration:%s} seconds on successful Dodge. Stacks {stacks:%s} times."..TALENTS_Enh_desc2.ED_VET_Passive_28_rgb end), -- crit_chance: +5%, duration: 8, stacks: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_028_desc_fr", {"loc_talent_veteran_dodging_grants_crit_description"}, {"fr"}, function(locale, value) return "{crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pour {duration:%s} secondes sur une esquive réussie. Se cumuls {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_VET_Passive_28_rgb_fr end),
	--[+ Russian +]-- Взаимообмен -- руоф Взаимная выгода
	create_template("talent_tree_vet_pas_028_desc_ru", {"loc_talent_veteran_dodging_grants_crit_description"}, {"ru"}, function(locale, value) return "{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на {duration:%s} секунд при успешном уклонении. Суммируется {stacks:%s} раз."..TALENTS_Enh_desc2_ru.ED_VET_Passive_28_rgb_ru end),

	--[+ Passive 29 - Duck and Dive +]--
	create_template("talent_tree_vet_pas_029_desc_en", {"loc_talent_veteran_stamina_on_ranged_dodge_desc"}, {"en"}, function(locale, value) return "{stamina:%s} of Max "..COLORS_KWords.Stamina_rgb.." on avoiding Ranged Attacks by Dodging, Sprinting or Sliding."..TALENTS_Enh_desc2.ED_VET_Passive_29_rgb end), -- stamina: +30%
	--[+ French +]--
	create_template("talent_tree_vet_pas_029_desc_fr", {"loc_talent_veteran_stamina_on_ranged_dodge_desc"}, {"fr"}, function(locale, value) return "{stamina:%s} d'"..COLORS_KWords_fr.Stamina_rgb_fr.." maximum en évitant les attaques à distance en esquivant, en courant ou en glissant."..TALENTS_Enh_desc2_fr.ED_VET_Passive_29_rgb_fr end),
	--[+ Russian +]-- Пригнись и увернись -- руоф Голову в песок
	create_template("talent_tree_vet_pas_029_desc_ru", {"loc_talent_veteran_stamina_on_ranged_dodge_desc"}, {"ru"}, function(locale, value) return "{stamina:%s} к "..COLORS_KWords_ru.Stamina_rgb_ru.." при избегании дальнобойных атак с помощью уклонений, подкатов и бега."..TALENTS_Enh_desc2_ru.ED_VET_Passive_29_rgb_ru end),

	--[+ Passive 30 - Fully Loaded +]--
	create_template("talent_tree_vet_pas_030_desc_en", {"loc_talent_veteran_ammo_increase_desc"}, {"en"}, function(locale, value) return "{ammo:%s} Ammo."..TALENTS_Enh_desc2.ED_VET_Passive_30_rgb end), -- ammo: +25%
	--[+ French +]--
	create_template("talent_tree_vet_pas_030_desc_fr", {"loc_talent_veteran_ammo_increase_desc"}, {"fr"}, function(locale, value) return "{ammo:%s} Munitions."..TALENTS_Enh_desc2_fr.ED_VET_Passive_30_rgb_fr end),
	--[+ Russian +]-- Полный запас -- руоф Полный заряд
	create_template("talent_tree_vet_pas_030_desc_ru", {"loc_talent_veteran_ammo_increase_desc"}, {"ru"}, function(locale, value) return "{ammo:%s} к боеприпасам в резерве."..TALENTS_Enh_desc2_ru.ED_VET_Passive_30_rgb_ru end),

	--[+ Passive 31 - Tactical Awareness +]--
	create_template("talent_tree_vet_pas_031_desc_en", {"loc_talent_veteran_elite_kills_reduce_cooldown_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.n_minus_rgb.."{duration:%s} seconds to "..COLORS_KWords.Combat_ability_cd_rgb.." on killing a Specialist enemy."..TALENTS_Enh_desc2.ED_VET_Passive_31_rgb end), -- duration: 6 -- rewrite -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_031_desc_fr", {"loc_talent_veteran_elite_kills_reduce_cooldown_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.n_minus_rgb.."{duration:%s} secondes au "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." lors d'une élimination de spécialiste."..TALENTS_Enh_desc2_fr.ED_VET_Passive_31_rgb_fr end),
	--[+ Russian +]-- Тактическая осведомлённость -- руоф Тактическая осведомленность
	create_template("talent_tree_vet_pas_031_desc_ru", {"loc_talent_veteran_elite_kills_reduce_cooldown_desc"}, {"ru"}, function(locale, value) return "На {duration:%s} секунд сокращается время "..COLORS_KWords_ru.Ability_cd_rgb_ru.." при убийстве врага специалиста."..TALENTS_Enh_desc2_ru.ED_VET_Passive_31_rgb_ru end),

	--[+ Passive 32 - Desperado +]--
	create_template("talent_tree_vet_pas_032_desc_en", {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse_desc"}, {"en"}, function(locale, value) return "{crit_chance:%s} Melee "..COLORS_KWords.Crit_hit_chance_rgb.." and\n{finesse:%s} Melee "..COLORS_KWords.Finesse_rgb.." Bonus."..TALENTS_Enh_desc2.ED_VET_Passive_32_rgb end), -- crit_chance: +10%, finesse: +25%, -- &->and -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_032_desc_fr", {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse_desc"}, {"fr"}, function(locale, value) return "{crit_chance:%s} "..COLORS_KWords_fr.Crit_hit_chance_rgb_fr.." de mêlée et\n{finesse:%s} bonus de "..COLORS_KWords_fr.Finesse_rgb_fr.." de mêlée."..TALENTS_Enh_desc2_fr.ED_VET_Passive_32_rgb_fr end),
	--[+ Russian +]-- Сорвиголова 
	create_template("talent_tree_vet_pas_032_desc_ru", {"loc_talent_veteran_increased_melee_crit_chance_and_melee_finesse_desc"}, {"ru"}, function(locale, value) return "Атаки ближнего боя получают:\n{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." и\n{finesse:%s} к "..COLORS_KWords_ru.Finesse_dmg_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Passive_32_rgb_ru end),

	--[+ Passive 33 - Shock Trooper +]--
	create_template("talent_tree_vet_pas_033_desc_en", {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit_desc"}, {"en"}, function(locale, value) return COLORS_KWords.Crit_hits_rgb.." with Las-weapons consume no Ammo."..TALENTS_Enh_desc2.ED_VET_Passive_33_rgb end), -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_033_desc_fr", {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit_desc"}, {"fr"}, function(locale, value) return "Les "..COLORS_KWords_fr.Crit_hits_rgb_fr.." avec les armes à lasers ne consomment pas de munitions."..TALENTS_Enh_desc2_fr.ED_VET_Passive_33_rgb_fr end),
	--[+ Russian +]-- Штурмовик 
	create_template("talent_tree_vet_pas_033_desc_ru", {"loc_talent_veteran_no_ammo_consumption_on_lasweapon_crit_desc"}, {"ru"}, function(locale, value) return "При "..COLORS_KWords_ru.Crit_chance_r_rgb_ru.." лазерное оружие не потребляет боеприпасы."..TALENTS_Enh_desc2_ru.ED_VET_Passive_33_rgb_ru end),

	--[+ Passive 34 - Superiority Complex +]--
	create_template("talent_tree_vet_pas_034_desc_en", {"loc_talent_veteran_increase_damage_vs_elites_desc"}, {"en"}, function(locale, value) return "{damage:%s} Base "..COLORS_KWords.Damage_rgb.." to Elite Enemies."..TALENTS_Enh_desc2.ED_VET_Passive_34_rgb end), -- damage: +15% -- -() -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_034_desc_fr", {"loc_talent_veteran_increase_damage_vs_elites_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pour les ennemis d'élite."..TALENTS_Enh_desc2_fr.ED_VET_Passive_34_rgb_fr end),
	--[+ Russian +]-- Мания величия 
	create_template("talent_tree_vet_pas_034_desc_ru", {"loc_talent_veteran_increase_damage_vs_elites_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." по элитным врагам."..TALENTS_Enh_desc2_ru.ED_VET_Passive_34_rgb_ru end),

	--[+ Passive 35 - Iron Will +]--
	create_template("talent_tree_vet_pas_035_desc_en", {"loc_talent_veteran_tdr_on_high_toughness_desc"}, {"en"}, function(locale, value) return "{toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." if above {toughness_percent:%s} "..COLORS_KWords.Toughness_rgb.."."..TALENTS_Enh_desc2.ED_VET_Passive_35_rgb end), -- toughness_damage_reduction: +50%, toughness_percent: 75% -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_035_desc_fr", {"loc_talent_veteran_tdr_on_high_toughness_desc"}, {"fr"}, function(locale, value) return "{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." si au-dessus de {toughness_percent:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_VET_Passive_35_rgb_fr end),
	--[+ Russian +]-- Железная воля 
	create_template("talent_tree_vet_pas_035_desc_ru", {"loc_talent_veteran_tdr_on_high_toughness_desc"}, {"ru"}, function(locale, value) return "{toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru..", если у вас выше {toughness_percent:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_VET_Passive_35_rgb_ru end),

	--[+ Passive 36 - Demolition Team +]--
	create_template("talent_tree_vet_pas_036_desc_en", {"loc_talent_veteran_grenade_on_elite_kills_coop_desc"}, {"en"}, function(locale, value) return "{chance:%s} chance to replenish a Grenade when you or an Ally in "..COLORS_KWords.Coherency_rgb.." kills an Elite or Specialist Enemy."..TALENTS_Enh_desc2.ED_VET_Passive_36_rgb end), -- chance: 5%
	--[+ French +]--
	create_template("talent_tree_vet_pas_036_desc_fr", {"loc_talent_veteran_grenade_on_elite_kills_coop_desc"}, {"fr"}, function(locale, value) return "{chance:%s} chance de régénérez une grenade lorsque vous ou un allié en syntonie éliminez un ennemi d'élite ou spécialiste."..TALENTS_Enh_desc2_fr.ED_VET_Passive_36_rgb_fr end),
	--[+ Russian +]-- Команда подрывников -- руоф Группа подрыва
	create_template("talent_tree_vet_pas_036_desc_ru", {"loc_talent_veteran_grenade_on_elite_kills_coop_desc"}, {"ru"}, function(locale, value) return "{chance:%s} шанс восстановить гранату, когда вы или ваш союзник в "..COLORS_KWords_ru.Coherency_rgb_ru.." убивает элитного врага или специалиста."..TALENTS_Enh_desc2_ru.ED_VET_Passive_36_rgb_ru end),

	--[+ Passive 37 - Exploit Weakness +]--
	create_template("talent_tree_vet_pas_037_desc_en", {"loc_talent_veteran_crits_rend_description"}, {"en"}, function(locale, value) return "{rending_multiplier:%s} "..COLORS_KWords.Brittleness_rgb.." is applied to the target by Melee "..COLORS_KWords.Crit_hits_rgb..". Stacks {max_stacks:%s} times and lasts {duration:%s} seconds."..TALENTS_Enh_desc2.ED_VET_Passive_37_rgb end), -- rending_multiplier: 10%, max_stacks: 2, duration: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_037_desc_fr", {"loc_talent_veteran_crits_rend_description"}, {"fr"}, function(locale, value) return "{rending_multiplier:%s} de "..COLORS_KWords_fr.Brittleness_rgb_fr.." est appliqué à la cible lors d'un "..COLORS_KWords_fr.Crit_hits_rgb_fr.." de mêlée. Se cumule {max_stacks:%s} fois et dure {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_37_rgb_fr end),
	--[+ Russian +]-- Использование слабостей 
	create_template("talent_tree_vet_pas_037_desc_ru", {"loc_talent_veteran_crits_rend_description"}, {"ru"}, function(locale, value) return "{rending_multiplier:%s} "..COLORS_KWords_ru.Brittleness_rgb_ru.." накладывается на цель при "..COLORS_KWords_ru.Crit_hit_e_rgb_ru.." в ближнем бою. Суммируется {max_stacks:%s} раза и длится {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_VET_Passive_37_rgb_ru end),

	--[+ Passive 38 - Onslaught +]--
	create_template("talent_tree_vet_pas_038_desc_en", {"loc_talent_veteran_continous_hits_apply_rending_description"}, {"en"}, function(locale, value) return "{rending_multiplier:%s} "..COLORS_KWords.Brittleness_rgb.." is applied to the target for {duration:%s} seconds by Continuous hits to a Single target. Stacks {max_stacks:%s} times."..TALENTS_Enh_desc2.ED_VET_Passive_38_rgb end), -- rending_multiplier: 2.5%, duration: 5, max_stacks: 16 -- rewrite -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_038_desc_fr", {"loc_talent_veteran_continous_hits_apply_rending_description"}, {"fr"}, function(locale, value) return "{rending_multiplier:%s} de "..COLORS_KWords_fr.Brittleness_rgb_fr.." est appliqué à la cible pour {duration:%s} secondes par des coups continus à une seule cible. Se cumule {max_stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_VET_Passive_38_rgb_fr end),
	--[+ Russian +]-- Натиск 
	create_template("talent_tree_vet_pas_038_desc_ru", {"loc_talent_veteran_continous_hits_apply_rending_description"}, {"ru"}, function(locale, value) return "{rending_multiplier:%s} "..COLORS_KWords_ru.Brittleness_rgb_ru.." накладывается на цель на {duration:%s} секунд при повторных атаках по ней. Суммируется {max_stacks:%s} раз."..TALENTS_Enh_desc2_ru.ED_VET_Passive_38_rgb_ru end),

	--[+ Passive 39 - Trench Fighter Drill +]--
	create_template("talent_tree_vet_pas_039_desc_en", {"loc_talent_veteran_attack_speed_description"}, {"en"}, function(locale, value) return "{melee_attack_speed:%s} Melee Attack Speed."..TALENTS_Enh_desc2.ED_VET_Passive_39_rgb end), -- melee_attack_speed: +10%
	--[+ French +]--
	create_template("talent_tree_vet_pas_039_desc_fr", {"loc_talent_veteran_attack_speed_description"}, {"fr"}, function(locale, value) return "{melee_attack_speed:%s} Vitesse d'attaque de mêlée."..TALENTS_Enh_desc2_fr.ED_VET_Passive_39_rgb_fr end),
	--[+ Russian +]-- Тренировки в окопах -- руоф Тренировка в окопах
	create_template("talent_tree_vet_pas_039_desc_ru", {"loc_talent_veteran_attack_speed_description"}, {"ru"}, function(locale, value) return "{melee_attack_speed:%s} к скорости атак ближнего боя."..TALENTS_Enh_desc2_ru.ED_VET_Passive_39_rgb_ru end),

	--[+ Passive 40 - Skirmisher +]--
	create_template("talent_tree_vet_pas_040_desc_en", {"loc_talent_veteran_damage_damage_after_sprinting_desc"}, {"en"}, function(locale, value) return "{base_damage:%s} to all Base "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds after Sprinting. Stacks {stacks:%s} times."..TALENTS_Enh_desc2.ED_VET_Passive_40_rgb end), -- base_damage: +5%, duration: 8, stacks: 5 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_040_desc_fr", {"loc_talent_veteran_damage_damage_after_sprinting_desc"}, {"fr"}, function(locale, value) return "{base_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes après avoir sprinté. Se cumule {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_VET_Passive_40_rgb_fr end),
	--[+ Russian +]-- Застрельщик 
	create_template("talent_tree_vet_pas_040_desc_ru", {"loc_talent_veteran_damage_damage_after_sprinting_desc"}, {"ru"}, function(locale, value) return "{base_damage:%s} ко всему базовому "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд после бега. Суммируется {stacks:%s} раз."..TALENTS_Enh_desc2_ru.ED_VET_Passive_40_rgb_ru end),

	--[+ Passive 41 - Competitive Urge +]--
	create_template("talent_tree_vet_pas_041_desc_en", {"loc_talent_veteran_ally_kills_increase_damage_description"}, {"en"}, function(locale, value) return "Whenever an Ally kills an Enemy you have a {proc_chance:%s} chance to gain for {duration:%s} seconds:\n{damage:%s} Base "..COLORS_KWords.Damage_rgb..",\n{melee_impact:%s} Melee "..COLORS_KWords.Impact_rgb.." and\n{suppression:%s} Suppression dealt."..TALENTS_Enh_desc2.ED_VET_Passive_41_rgb end), -- proc_chance: 2.5%, damage: +20%, melee_impact: +20%, suppression: +20%, duration: 8 -- rewrite -- &->and -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_041_desc_fr", {"loc_talent_veteran_ally_kills_increase_damage_description"}, {"fr"}, function(locale, value) return "Chaque fois qu'un allié tue un ennemi, vous avez {proc_chance:%s} de chance de gagner pendant {duration:%s} secondes:\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr..",\n{melee_impact:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.." de mêlée et\n{suppression:%s} de Suppression."..TALENTS_Enh_desc2_fr.ED_VET_Passive_41_rgb_fr end),
	--[+ Russian +]-- Состязательный мотив 
	create_template("talent_tree_vet_pas_041_desc_ru", {"loc_talent_veteran_ally_kills_increase_damage_description"}, {"ru"}, function(locale, value) return "Когда союзник убивает врага у вас есть {proc_chance:%s} шанс получить на {duration:%s} секунд:\n{damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru..",\n{suppression:%s} к подавлению врагов и\n{melee_impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." врагов от атак ближнего боя."..TALENTS_Enh_desc2_ru.ED_VET_Passive_41_rgb_ru end),

	--[+ Passive 42 - Rending Strikes +]--
	create_template("talent_tree_vet_pas_042_desc_en", {"loc_talent_veteran_rending_bonus_desc"}, {"en"}, function(locale, value) return "{rending_multiplier:%s} "..COLORS_KWords.Rending_rgb.." to all weapons."..TALENTS_Enh_desc2.ED_VET_Passive_42_rgb end), -- rending_multiplier: +10% -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_042_desc_fr", {"loc_talent_veteran_rending_bonus_desc"}, {"fr"}, function(locale, value) return "{rending_multiplier:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." pour toutes les armes."..TALENTS_Enh_desc2_fr.ED_VET_Passive_42_rgb_fr end),
	--[+ Russian +]--Пробивающие удары -- руоф Разрушительные удары
	create_template("talent_tree_vet_pas_042_desc_ru", {"loc_talent_veteran_rending_bonus_desc"}, {"ru"}, function(locale, value) return "{rending_multiplier:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." для всего оружия."..TALENTS_Enh_desc2_ru.ED_VET_Passive_42_rgb_ru end),

	--[+ Passive 43 - Bring it Down! +]--
	create_template("talent_tree_vet_pas_043_desc_en", {"loc_talent_veteran_big_game_hunter_description"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Damage_rgb.." to Ogryns and Monstrosities."..TALENTS_Enh_desc2.ED_VET_Passive_43_rgb end), -- damage: +20% -- &->and -- () -- colors
	--[+ French +]--
	create_template("talent_tree_vet_pas_043_desc_fr", {"loc_talent_veteran_big_game_hunter_description"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." aux Ogryns et Monstruosités."..TALENTS_Enh_desc2_fr.ED_VET_Passive_43_rgb_fr end),
	--[+ Russian +]-- Убей их! -- руоф Убивай!
	create_template("talent_tree_vet_pas_043_desc_ru", {"loc_talent_veteran_big_game_hunter_description"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." огринам и монстрам."..TALENTS_Enh_desc2_ru.ED_VET_Passive_43_rgb_ru end),

--[+ ++OGRYN - ОГРИН++ +]--
--[+ +BLITZ - БЛИЦ+ +]--
	--[+ Blitz 0 - Big Box of Hurt +]--
	create_template("talent_tree_ogr_blitz0_000_desc_en", {"loc_ability_ogryn_grenade_box_description"}, {"en"}, function(locale, value) return "Throw a box of Grenades with great strength and enthusiasm for High "..COLORS_KWords.Damage_rgb.." against a Single Enemy.\nSlightly increased "..COLORS_KWords.Damage_rgb.." vs Unyielding and very low "..COLORS_KWords.Damage_rgb.." vs Carapace armor.\nReplenishes all boxes per Grenade pickup."..TALENTS_Enh_desc2.ED_OGR_Blitz_0_rgb end), -- colors
	--[+ French +]--!!!
	create_template("talent_tree_ogr_blitz0_000_desc_fr", {"loc_ability_ogryn_grenade_box_description"}, {"fr"}, function(locale, value) return "Lancer une boîte de grenades avec une grande force et enthousiasme pour des "..COLORS_KWords_fr.Damage_rgb_fr.." élevés  contre un seul ennemi."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_0_rgb_fr end),
	--[+ Russian +]-- Большая коробка боли -- руоф Ящик, полный боли
	create_template("talent_tree_ogr_blitz0_000_desc_ru", {"loc_ability_ogryn_grenade_box_description"}, {"ru"}, function(locale, value) return "Вы бросаете коробку гранат с огромной силой и энтузиазмом, чтобы нанести высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." одному врагу.\nНемного увеличен "..COLORS_KWords_ru.Dmg_rgb_ru.." против несгибаемых врагов и очень низкий "..COLORS_KWords_ru.Dmg_rgb_ru.." против панцирной брони.\nПополняет все ящики при подборе гранат."..TALENTS_Enh_desc2_ru.ED_OGR_Blitz_0_rgb_ru end),

	--[+ Blitz 1 - Big Friendly Rock +]--
	create_template("talent_tree_ogr_blitz1_000_desc_en", {"loc_ability_ogryn_friend_rock_desc"}, {"en"}, function(locale, value) return "Toss a Big rock or hunk of junk at a Single Enemy. You pick up a new rock every {recharge:%s} seconds and can hold up to {max_charges:%s} rocks at a time.\nSlightly increased "..COLORS_KWords.Damage_rgb.." vs Maniac and very low "..COLORS_KWords.Damage_rgb.." vs Carapace. Extra "..COLORS_KWords.Finesse_rgb.." boost against Unyielding.\nOgryn cannot pick up Grenade ammo."..TALENTS_Enh_desc2.ED_OGR_Blitz_1_rgb end), -- recharge: 45, max_charges: 4 -- rewrite -- s->seconds
	--[+ French +]--!!!
	create_template("talent_tree_ogr_blitz1_000_desc_fr", {"loc_ability_ogryn_friend_rock_desc"}, {"fr"}, function(locale, value) return "Lancer un gros caillou à un seul ennemi. Vous ramassez un nouveau caillou tous les {recharge:%s} secondes et pouvez en tenir jusqu'à {max_charges:%s} à la fois.\n"..COLORS_KWords_fr.Damage_rgb_fr.." légèrement augmenter contre les Maniaques et très faible "..COLORS_KWords_fr.Damage_rgb_fr.." contre ceux en armure Carapace. Bonus de "..COLORS_KWords_fr.Finesse_dmg_rgb_fr.." contre les Implacable\nL'Ogryn ne peux plus ramasser de caisse de grenade."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_1_rgb_fr end),
	--[+ Russian +]-- Большой дружелюбный валун 
	create_template("talent_tree_ogr_blitz1_000_desc_ru", {"loc_ability_ogryn_friend_rock_desc"}, {"ru"}, function(locale, value) return "Вы бросаете большой камень или обломок бетона в одного врага. Вы подбираете новый камень каждые {recharge:%s} секунд и можете иметь при себе до {max_charges:%s} камней одновременно.\nСлегка увеличен "..COLORS_KWords_ru.Dmg_rgb_ru.." против маньяков и очень низкий "..COLORS_KWords_ru.Dmg_rgb_ru.." против панцирной брони. Дополнительное усиление от "..COLORS_KWords_ru.Finesse_rgb_ru.." против несгибаемых.\nОгрин не может подбирать гранаты."..TALENTS_Enh_desc2_ru.ED_OGR_Blitz_1_rgb_ru end),

	--[+ Blitz 1-1 - That One Didn't Count +]--
	create_template("talent_tree_ogr_blitz1_001_desc_en", {"loc_talent_ogryn_replenish_rock_on_miss_desc"}, {"en"}, function(locale, value) return "{talent_name:%s} Replenishes a Charge if you hit a "..COLORS_KWords.Weakspot_rgb.." or hit no enemies. Cooldown "..COLORS_Numbers.cd_dur_var_rgb.." seconds." end), -- colors
	--[+ French +]--!!!
	--create_template("talent_tree_ogr_blitz1_001_desc_fr", {"loc_talent_ogryn_replenish_rock_on_miss_desc"}, {"fr"}, function(locale, value) return "" end),
	--[+ Russian +]-- Этот не считается -- руоф 
	create_template("talent_tree_ogr_blitz1_001_desc_ru", {"loc_talent_ogryn_replenish_rock_on_miss_desc"}, {"ru"}, function(locale, value) return "{talent_name:%s} восстанавливает заряд, если вы попали в "..COLORS_KWords_ru.Weakspothit_rgb_ru.." или не попали ни в кого. Восстановление "..COLORS_Numbers.cd_dur_var_rgb.." секунд." end),

	--[+ Blitz 2 - Frag Bomb +]--
	create_template("talent_tree_ogr_blitz2_000_desc_en", {"loc_ability_ogryn_grenade_demolition_desc"}, {"en"}, function(locale, value) return "Throw an Ogryn-sized (the only proper kind!) "..COLORS_KWords.Frag_gren_rgb.." with a {radius:%s} meters blast radius, dealing increased "..COLORS_KWords.Damage_rgb.." at the center.\nFuse time: 2 seconds.\nVery high armor "..COLORS_KWords.Damage_rgb.." vs Flak, Maniac, Unyielding.\nDeals high "..COLORS_KWords.Stagger_rgb.." against all enemies including Monstrosities, Captains/Twins (only without void shield).\nInstakill all enemies with an explosion except: Maulers, Crushers, Bulwarks and Monstrosities."..TALENTS_Enh_desc2.ED_OGR_Blitz_2_rgb end), -- radius: 16 -- m->meters -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_blitz2_000_desc_fr", {"loc_ability_ogryn_grenade_demolition_desc"}, {"fr"}, function(locale, value) return "Lancer une "..COLORS_KWords_fr.Frag_gren_rgb_fr.." de taille Ogryn (la seule taille appropriée !) avec un rayon d'explosion de {radius:%s} mètres, infligeant des "..COLORS_KWords_fr.Damage_rgb_fr.." accrus au centre."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_2_rgb_fr end),
	--[+ Russian +]-- Фраг-бомба -- руоф Осколочная бомба
	create_template("talent_tree_ogr_blitz2_000_desc_ru", {"loc_ability_ogryn_grenade_demolition_desc"}, {"ru"}, function(locale, value) return "Вы бросаете огринского размера "..COLORS_KWords_ru.Frag_gren_rgb_ru.." с радиусом взрыва до {radius:%s} метров, наносящую увеличенный "..COLORS_KWords_ru.Dmg_rgb_ru.." в центре."..TALENTS_Enh_desc2_ru.ED_OGR_Blitz_2_rgb_ru end),

	--[+ Blitz 3 - Bombs Away! +]--
	create_template("talent_tree_ogr_blitz3_000_desc_en", {"loc_talent_bonebreaker_grenade_super_armor_explosion_desc"}, {"en"}, function(locale, value) return "Throw a box of Grenades with great strength and enthusiasm to deal High "..COLORS_KWords.Damage_rgb.." to a Single Enemy.\nHitting an Enemy causes the box to break open, releasing {num_grenades:%s} grenades around the target.\nThis is an augmented version of {talent_name:%s}."..TALENTS_Enh_desc2.ED_OGR_Blitz_3_rgb end), -- num_grenades: 6, talent_name: Big Box of Hurt -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_blitz3_000_desc_fr", {"loc_talent_bonebreaker_grenade_super_armor_explosion_desc"}, {"fr"}, function(locale, value) return "Lancer une boîte de grenades avec une grande force et enthousiasme pour infliger des "..COLORS_KWords_fr.Damage_rgb_fr.." élevés à un seul ennemi.\nToucher un ennemi provoque l'ouverture de la boîte, libérant {num_grenades:%s} grenades autour de la cible.\nIl s'agit d'une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Blitz_3_rgb_fr end),
	--[+ Russian +]-- Бросай бомбы! -- руоф Кидаю бомбу!
	create_template("talent_tree_ogr_blitz3_000_desc_ru", {"loc_talent_bonebreaker_grenade_super_armor_explosion_desc"}, {"ru"}, function(locale, value) return "Вы бросаете коробку гранат с огромной силой и энтузиазмом, чтобы нанести высокий "..COLORS_KWords_ru.Dmg_rgb_ru.." одному врагу.\nПри попадании по врагу ящик разбивается, разбрасывая вокруг цели {num_grenades:%s} гранат.\nЭто улучшенная версия таланта {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Blitz_3_rgb_ru end),

--[+ +AURA - АУРА+ +]--
	--[+ Aura 0 - Intimidating Presence +]--
	create_template("talent_tree_ogr_aura0_000_desc_en", {"loc_talent_ogryn_2_base_4_description_new"}, {"en"}, function(locale, value) return "{damage:%s} Heavy Melee Attack "..COLORS_KWords.Damage_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb.."."..TALENTS_Enh_desc2.ED_OGR_Aura_0_rgb end), -- damage: +7.5% -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_aura0_000_desc_fr", {"loc_talent_ogryn_2_base_4_description_new"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." des attaques de mêlée puissantes pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_0_rgb_fr end),
	--[+ Russian +]-- Устрашающее присутствие -- руоф Пугающее присутствие
	create_template("talent_tree_ogr_aura0_000_desc_ru", {"loc_talent_ogryn_2_base_4_description_new"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." тяжёлых атак ближнего боя для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_OGR_Aura_0_rgb_ru end),

	--[+ Aura 1 - Bonebreaker's Aura +]--
	create_template("talent_tree_ogr_aura1_000_desc_en", {"loc_talent_damage_aura_improved_new"}, {"en"}, function(locale, value) return "{damage:%s} Melee Attack "..COLORS_KWords.Damage_rgb.." for you and Allies in "..COLORS_KWords.Coherency_rgb..".\n\nThis is an augmented version of {talent_name:%s}."..TALENTS_Enh_desc2.ED_OGR_Aura_1_rgb end), -- damage: +10%, talent_name: Intimidating Presence -- colors
	--[+ French +]--!!!
	create_template("talent_tree_ogr_aura1_000_desc_fr", {"loc_talent_damage_aura_improved_new"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." des attaques de mêlée puissantes pour vous et les alliés en syntonie.\n\nCeci est une version augmentée de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_1_rgb_fr end),
	--[+ Russian +]-- Аура костолома 
	create_template("talent_tree_ogr_aura1_000_desc_ru", {"loc_talent_damage_aura_improved_new"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." тяжёлых атак ближнего боя для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..".\n\nЭто улучшенная версия ауры {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Aura_1_rgb_ru end),

	--[+ Aura 2 - Stay Close! +]--
	create_template("talent_tree_ogr_aura2_000_desc_en", {"loc_talent_ogryn_toughness_regen_aura_desc"}, {"en"}, function(locale, value) return "{toughness_regen_rate_modifier:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment for you and Allies in "..COLORS_KWords.Coherency_rgb.."."..TALENTS_Enh_desc2.ED_OGR_Aura_2_rgb end), -- toughness_regen_rate_modifier: +25% -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_aura2_000_desc_fr", {"loc_talent_ogryn_toughness_regen_aura_desc"}, {"fr"}, function(locale, value) return "{toughness_regen_rate_modifier:%s} de Régénération de la "..COLORS_KWords_fr.Toughness_rgb_fr.." pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_2_rgb_fr end),
	--[+ Russian +]-- Будь рядом! -- руоф Не расходимся!
	create_template("talent_tree_ogr_aura2_000_desc_ru", {"loc_talent_ogryn_toughness_regen_aura_desc"}, {"ru"}, function(locale, value) return "{toughness_regen_rate_modifier:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восполняется для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_OGR_Aura_2_rgb_ru end),

	--[+ Aura 3 - Coward Culling +]--
	create_template("talent_tree_ogr_aura3_000_desc_en", {"loc_talent_ogryn_damage_vs_suppressed_new_desc"}, {"en"}, function(locale, value) return "{suppression:%s} Suppression dealt.\n{damage:%s} "..COLORS_KWords.Damage_rgb.." against Suppressed Enemies for you and Allies in "..COLORS_KWords.Coherency_rgb.."."..TALENTS_Enh_desc2.ED_OGR_Aura_3_rgb end), -- damage:+20%. -- colors
	--[+ French +]--!!!
	create_template("talent_tree_ogr_aura3_000_desc_fr", {"loc_talent_ogryn_damage_vs_suppressed_new_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les ennemis sous suppression pour vous et les alliés en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Aura_3_rgb_fr end),
	--[+ Russian +]-- Отсев трусливых -- руоф Трусливые отбросы
	create_template("talent_tree_ogr_aura3_000_desc_ru", {"loc_talent_ogryn_damage_vs_suppressed_new_desc"}, {"ru"}, function(locale, value) return "{suppression:%s} к подавлению врагов.\n{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." по подавленным врагам для вас и союзников в "..COLORS_KWords_ru.Coherency_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_OGR_Aura_3_rgb_ru end),

--[+ +ABILITIES - СПОСОБНОСТЬ+ +]--
	--[+ Ability 0 - Bull Rush +]--
	create_template("talent_tree_ogr_abil0_000_desc_en", {"loc_ability_ogryn_charge_description_new"}, {"en"}, function(locale, value) return "Charge forward with great force, knocking back enemies and "..COLORS_KWords.Staggering_rgb.." them. Gain {attack_speed:%s} Attack Speed and {move_speed:%s} Movement Speed for {duration:%s} seconds. Charge is stopped on collision with Carapace Armoured Enemies, Unyielding Enemies and Monstrosities.\n\nBase Cooldown: {cooldown:%s} seconds."..TALENTS_Enh_desc2.ED_OGR_Ability_0_rgb end), -- attack_speed: +25%, move_speed: +25%, duration: 5, cooldown: 30 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_abil0_000_desc_fr", {"loc_ability_ogryn_charge_description_new"}, {"fr"}, function(locale, value) return "Chargez vers l'avant avec une grande force, repoussant les ennemis et les faisant "..COLORS_KWords_fr.Staggering_rgb_fr..". Gagnez {attack_speed:%s} de vitesse d'attaque et {move_speed:%s} de vitesse de déplacement pendant {duration:%s} secondes. La charge est arrêtée en cas de collision avec des ennemis en armure carapace, implacables et des monstruosités.\n\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_0_rgb_fr end),
	--[+ Russian +]-- Рывок быка -- руоф Бычий натиск
	create_template("talent_tree_ogr_abil0_000_desc_ru", {"loc_ability_ogryn_charge_description_new"}, {"ru"}, function(locale, value) return "Вы совершаете рывок вперёд, с огромной силой отбрасывая врагов и накладывая на них "..COLORS_KWords_ru.Stagger_rgb_ru..". Вы получаете {attack_speed:%s} к скорости атаки и {move_speed:%s} к скорости движения на {duration:%s} секунд. Рывок прекращается при столкновении с врагами в панцирной броне, несгибаемыми врагами или монстрами.\n\nВремя восстановления: {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_0_rgb_ru end),

	--[+ Ability 1 - Indomitable +]--
	create_template("talent_tree_ogr_abil1_000_desc_en", {"loc_talent_ogryn_bull_rush_distance_desc"}, {"en"}, function(locale, value) return "Charge forward with great force, knocking back Enemies and "..COLORS_KWords.Staggering_rgb.." them. Gain {attack_speed:%s} Attack Speed and {move_speed:%s} Movement Speed for {duration:%s} seconds. Charge is stopped only on collision with Monstrosities.\nBase Cooldown: {cooldown:%s} seconds.\nThis is an augmented version of {talent_name:%s} with an increased charge distance of {distance:%s}."..TALENTS_Enh_desc2.ED_OGR_Ability_1_rgb end), -- attack_speed: +25%, move_speed: +25%, duration: 5, cooldown: 30, talent_name: Bull Rush, distance: 100% -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_abil1_000_desc_fr", {"loc_talent_ogryn_bull_rush_distance_desc"}, {"fr"}, function(locale, value) return "Chargez vers l'avant avec une grande force, repoussant les ennemis et les faisant "..COLORS_KWords_fr.Staggering_rgb_fr..". Gagnez {attack_speed:%s} de vitesse d'attaque et {move_speed:%s} de vitesse de déplacement pendant {duration:%s} secondes. La charge est arrêtée uniquement en cas de collision avec des monstruosités.\nTemps de recharge de base : {cooldown:%s} secondes.\nCeci est une version augmentée de {talent_name:%s} avec une distance de charge accrue de {distance:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_rgb_fr end),
	--[+ Russian +]-- Неукротимый -- руоф Неукротимость
	create_template("talent_tree_ogr_abil1_000_desc_ru", {"loc_talent_ogryn_bull_rush_distance_desc"}, {"ru"}, function(locale, value) return "Вы совершаете рывок вперёд, с огромной силой отбрасывая врагов и накладывая на них "..COLORS_KWords_ru.Stagger_rgb_ru..". Вы получаете {attack_speed:%s} к скорости атаки и {move_speed:%s} к скорости движения на {duration:%s} секунд. Рывок прекращается только при столкновении с монстрами.\n\nВремя восстановления: {cooldown:%s} секунд.\nЭто улучшенная версия способности {talent_name:%s} с увеличенным на {distance:%s} расстоянием рывка."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_1_rgb_ru end),

	--[+ Ability 1-1 - Stomping Boots +]--
	create_template("talent_tree_ogr_abil1_001_desc_en", {"loc_talent_ogryn_toughness_on_bull_rush_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes per Enemy Hit with {ability:%s}."..TALENTS_Enh_desc2.ED_OGR_Ability_1_1_rgb end), -- toughness: +10%, ability: Indomitable -- rewrite -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_abil1_001_desc_fr", {"loc_talent_ogryn_toughness_on_bull_rush_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de la "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère par ennemi touché avec {ability:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_1_rgb_fr end),
	--[+ Russian +]-- Топающие сапоги -- руоф Сокрушающий топот
	create_template("talent_tree_ogr_abil1_001_desc_ru", {"loc_talent_ogryn_toughness_on_bull_rush_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за каждого врага задетого способностью {ability:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_1_1_rgb_ru end),

	--[+ Ability 1-2 - Trample +]--
	create_template("talent_tree_ogr_abil1_002_desc_en", {"loc_talent_ogryn_ability_charge_trample_desc"}, {"en"}, function(locale, value) return "For each Enemy hit by {talent_name:%s} you gain a Stack of "..COLORS_KWords.Trample_rgb.." which increases Base "..COLORS_KWords.Damage_rgb.." by {damage:%s} for {duration:%s} seconds. Max Stacks {stack:%s}."..TALENTS_Enh_desc2.ED_OGR_Ability_1_2_rgb end), -- talent_name: Bull Rush, damage: +2%, duration: 8, stack: 25 -- rewrite -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_abil1_002_desc_fr", {"loc_talent_ogryn_ability_charge_trample_desc"}, {"fr"}, function(locale, value) return "Pour chaque ennemi touché par {talent_name:%s}, vous gagnez un cumul de "..COLORS_KWords_fr.Trample_rgb_fr.." qui augmente les dégâts de base de {damage:%s} pendant {duration:%s} secondes. Jusqu'à {stack:%s} cumuls."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_2_rgb_fr end),
	--[+ Russian +]-- Топот -- руоф Топанье
	create_template("talent_tree_ogr_abil1_002_desc_ru", {"loc_talent_ogryn_ability_charge_trample_desc"}, {"ru"}, function(locale, value) return "За каждого врага, задетого способностью {talent_name:%s}, вы получаете заряд "..COLORS_KWords_ru.Trample_rgb_ru..", который даёт {damage:%s} базового "..COLORS_KWords_ru.Dmg_a_rgb_ru.." на {duration:%s} секунд. Максимум {stack:%s} зарядов."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_1_2_rgb_ru end),

	--[+ Ability 1-3 - Pulverise +]--
	create_template("talent_tree_ogr_abil1_003_desc_en", {"loc_talent_ogryn_bleed_on_bull_rush_desc"}, {"en"}, function(locale, value) return "{stacks:%s} Stacks of "..COLORS_KWords.Bleed_rgb.." are applied to enemies hit by {ability:%s}."..TALENTS_Enh_desc2.ED_OGR_Ability_1_3_rgb end), -- stacks: 5, ability: Indomitable -- rewrite -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_abil1_003_desc_fr", {"loc_talent_ogryn_bleed_on_bull_rush_desc"}, {"fr"}, function(locale, value) return "{stacks:%s} cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." sont appliqués aux ennemis touchés par {ability:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_1_3_rgb_fr end),
	--[+ Russian +]-- Разбрызгивание -- Крошилово
	create_template("talent_tree_ogr_abil1_003_desc_ru", {"loc_talent_ogryn_bleed_on_bull_rush_desc"}, {"ru"}, function(locale, value) return "{stacks:%s} зарядов "..COLORS_KWords_ru.Bleed_rgb_ru.." накладывается на врагов, которых задела способность {ability:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_1_3_rgb_ru end),

	--[+ Ability 2 - Loyal Protector +]--
	create_template("talent_tree_ogr_abil2_000_desc_en", {"loc_ability_ogryn_taunt_shout_new_desc"}, {"en"}, function(locale, value) return "Taunt Enemies within {radius:%s} meters, making them Attack only you for {duration:%s} seconds. The effect repeats after {first_pulse:%s} seconds, and after {second_pulse:%s} seconds.\n\nBase Cooldown: {cooldown:%s} seconds."..TALENTS_Enh_desc2.ED_OGR_Ability_2_rgb end), -- radius: 12, duration: 15, first_pulse: 3, second_pulse: 6, cooldown: 45 -- m->meters -- s->seconds
	--[+ French +]--!!!
	create_template("talent_tree_ogr_abil2_000_desc_fr", {"loc_ability_ogryn_taunt_shout_new_desc"}, {"fr"}, function(locale, value) return "Provoque les ennemis dans un rayon de {radius:%s} mètres, les obligeant à ne s'attaquer qu'à vous pendant {duration:%s} secondes.\n\nTemps de recharge de base : {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_2_rgb_fr end),
	--[+ Russian +]-- Верный защитник 
	create_template("talent_tree_ogr_abil2_000_desc_ru", {"loc_ability_ogryn_taunt_shout_new_desc"}, {"ru"}, function(locale, value) return "Вы кричите, провоцируя врагов в радиусе {radius:%s} метров и заставляя их атаковать только вас в течение {duration:%s} секунд. Эффект повторяется через {first_pulse:%s} секунды и через {second_pulse:%s} секунд.\n\nВремя восстановления: {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_2_rgb_ru end),

	--[+ Ability 2-1 - Valuable Distraction +]--
	create_template("talent_tree_ogr_abil2_001_desc_en", {"loc_talent_ogryn_taunt_damage_taken_increase_description"}, {"en"}, function(locale, value) return "{base_damage:%s} Base "..COLORS_KWords.Damage_rgb.." taken from all sources by enemies affected by {talent_name:%s} for "..COLORS_Numbers.n_15_rgb.." seconds."..TALENTS_Enh_desc2.ED_OGR_Ability_2_1_rgb end), -- talent_name: Loyal Protector, base_damage: +25% -- rewrite -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_abil2_001_desc_fr", {"loc_talent_ogryn_taunt_damage_taken_increase_description"}, {"fr"}, function(locale, value) return "{base_damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." provenant de toutes les sources pour les ennemis affectés par {talent_name:%s} pendant "..COLORS_Numbers.n_15_rgb.." secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_2_1_rgb_fr end),
	--[+ Russian +]-- Отвлекающий манёвр -- руоф Ценное отвлечение
	create_template("talent_tree_ogr_abil2_001_desc_ru", {"loc_talent_ogryn_taunt_damage_taken_increase_description"}, {"ru"}, function(locale, value) return "{base_damage:%s} к базовому "..COLORS_KWords_ru.Damage_rgb_ru.." из любого источника всем врагам, которых спровоцировала способность {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_2_1_rgb_ru end),

	--[+ Ability 2-2 - No Pain! +]--
	create_template("talent_tree_ogr_abil2_002_desc_en", {"loc_talent_ogryn_taunt_restore_toughness_new_desc"}, {"en"}, function(locale, value) return "{tougness:%s} "..COLORS_KWords.Toughness_rgb.." is replenished by {talent_name:%s} and its repeat effects. Plus an additional {toughness_per_hit:%s} "..COLORS_KWords.Toughness_rgb.." every "..COLORS_Numbers.n_1_rgb.." second per enemy for {duration:%s} seconds, up to {max:%s}."..TALENTS_Enh_desc2.ED_OGR_Ability_2_2_rgb end), -- tougness: 2.5%, talent_name: Loyal Protector -- rewrite -- colors
	--[+ French +]--!!!
	create_template("talent_tree_ogr_abil2_002_desc_fr", {"loc_talent_ogryn_taunt_restore_toughness_new_desc"}, {"fr"}, function(locale, value) return "{cooldown_reduction:%s} de votre "..COLORS_KWords_fr.Cd_rgb_fr.." de {talent_name:%s} est régénéré par ennemi qui "..COLORS_KWords_fr.Staggers_rgb_fr.."."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_2_2_rgb_fr end),
	--[+ Russian +]-- Боли нет!
	create_template("talent_tree_ogr_abil2_002_desc_ru", {"loc_talent_ogryn_taunt_restore_toughness_new_desc"}, {"ru"}, function(locale, value) return "{tougness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восполняется способностью {talent_name:%s} и его повторяющимися эффектами. Плюс дополнительная {toughness_per_hit:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." каждую "..COLORS_Numbers.n_1_rgb.." секунду за врага в течение {duration:%s} секунд, до {max:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_2_2_rgb_ru end),

	--[+ Ability 2-3 - Go again! +]--
	create_template("talent_tree_ogr_abil2_003_desc_en", {"loc_talent_ogryn_taunt_stagger_cd_description"}, {"en"}, function(locale, value) return COLORS_KWords.Staggering_rgb.." an Enemy replenishes {cooldown_reduction:%s} "..COLORS_KWords.Cd_rgb.." of your {talent_name:%s}."..TALENTS_Enh_desc2.ED_OGR_Ability_2_3_rgb end), -- talent_name: Loyal Protector, radius: 50% -- colors
	--[+ French +]--!!!
	create_template("talent_tree_ogr_abil2_003_desc_fr", {"loc_talent_ogryn_taunt_stagger_cd_description"}, {"fr"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{radius:%s} Rayon de {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_2_3_rgb_fr end),
	--[+ Russian +]-- Давай по новой!
	create_template("talent_tree_ogr_abil2_003_desc_ru", {"loc_talent_ogryn_taunt_stagger_cd_description"}, {"ru"}, function(locale, value) return COLORS_KWords_ru.Staggerr_rgb_ru.." врага восполняет {cooldown_reduction:%s} "..COLORS_KWords_ru.Ability_cd_rgb_ru.." {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_2_3_rgb_ru end),

	--[+ Ability 3 - Point-Blank Barrage +]--
	create_template("talent_tree_ogr_abil3_000_desc_en", {"loc_talent_ogryn_combat_ability_special_ammo_new_desc"}, {"en"}, function(locale, value) return "Swaps to and reloads your Ranged Weapon.\nFor the next {duration:%s} seconds you have:\n{damage:%s} Close Range "..COLORS_KWords.Damage_rgb..",\n{ranged_attack_speed:%s} Rate of Fire,\n{reload_speed:%s} Reload Speed and\n"..COLORS_Numbers.n_minus_rgb.."{reduced_move_penalty:%s} to Braced Movement Speed penalties.\n\nBase Cooldown {cooldown:%s} seconds."..TALENTS_Enh_desc2.ED_OGR_Ability_3_rgb end), -- ranged_attack_speed: +25%, reload_speed: +70%, duration: 10, cooldown: 80 -- s->seconds
	--[+ French +]--!!!
	create_template("talent_tree_ogr_abil3_000_desc_fr", {"loc_talent_ogryn_combat_ability_special_ammo_new_desc"}, {"fr"}, function(locale, value) return "Échange et recharge votre arme à distance. Pendant les {duration:%s} secondes suivantes, vous avez une vitesse de tir de {ranged_attack_speed:%s}, une vitesse de recharge de {reload_speed:%s}, des pénalités de vitesse de déplacement réduites de {reduced_move_penalty:%s}, et vous gagnez {damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à courte portée. Temps de recharge de base {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_rgb_fr end),
	--[+ Russian +]-- Беспощадный обстрел в упор -- руоф Решительный натиск
	create_template("talent_tree_ogr_abil3_000_desc_ru", {"loc_talent_ogryn_combat_ability_special_ammo_new_desc"}, {"ru"}, function(locale, value) return "Вы переключаетесь на оружие дальнего боя и перезаряжаете его. Вы получаете на {duration:%s} секунд:\n{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." на ближней дистанции,\n{ranged_attack_speed:%s} к скорострельности,\n{reload_speed:%s} к скорости перезарядки и\n"..COLORS_Numbers.n_minus_rgb.."{reduced_move_penalty:%s} к штрафу скорости движения при прицеливании.\nВремя восстановления: {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_3_rgb_ru end),

	--[+ Ability 3-1 - Bullet Bravado +]--
	create_template("talent_tree_ogr_abil3_001_desc_en", {"loc_talent_ogryn_special_ammo_toughness_on_shot_and_reload_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes for every Shot Fired and {toughness_reload:%s} "..COLORS_KWords.Toughness_rgb.." on each Reload while {ability:%s} is active."..TALENTS_Enh_desc2.ED_OGR_Ability_3_1_rgb end), -- ability: Point-Blank Barrage, toughness: +2%, toughness_reload: +10% -- rewrite -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_abil3_001_desc_fr", {"loc_talent_ogryn_special_ammo_toughness_on_shot_and_reload_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère à chaque tir et {toughness_reload:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." à chaque rechargement pendant que {ability:%s} est actif."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_1_rgb_fr end),
	--[+ Russian +]-- Бравада стрелка -- руоф Лихая пуля
	create_template("talent_tree_ogr_abil3_001_desc_ru", {"loc_talent_ogryn_special_ammo_toughness_on_shot_and_reload_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за каждый сделанный выстрел и ещё {toughness_reload:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." за каждую перезарядку во время действия способности {ability:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_3_1_rgb_ru end),

	--[+ Ability 3-2 - Hail of Fire +]--
	create_template("talent_tree_ogr_abil3_002_desc_en", {"loc_talent_ogryn_special_ammo_armor_pen_new_desc"}, {"en"}, function(locale, value) return "{rending_multiplier:%s} "..COLORS_KWords.Rending_rgb.." and {damage:%s} "..COLORS_KWords.Damage_rgb.." to your Ranged Attacks while {ability:%s} is active."..TALENTS_Enh_desc2.ED_OGR_Ability_3_2_rgb end), -- rending_multiplier: +30%, ability: Point-Blank Barrage -- colors
	--[+ French +]--!!!
	create_template("talent_tree_ogr_abil3_002_desc_fr", {"loc_talent_ogryn_special_ammo_armor_pen_new_desc"}, {"fr"}, function(locale, value) return "{rending_multiplier:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." à vos attaques à distance pendant que {ability:%s} est actif."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_2_rgb_fr end),
	--[+ Russian +]-- Град огня -- руоф Слава пламени
	create_template("talent_tree_ogr_abil3_002_desc_ru", {"loc_talent_ogryn_special_ammo_armor_pen_new_desc"}, {"ru"}, function(locale, value) return "{rending_multiplier:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." и {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." для ваших выстрелов во время действия способности {ability:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_3_2_rgb_ru end),

	--[+ Ability 3-3 - Light 'em Up +]--
	create_template("talent_tree_ogr_abil3_003_desc_en", {"loc_talent_ogryn_special_ammo_fire_shots_new_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{stacks:%s} Stacks of "..COLORS_KWords.Burn_rgb.." are applied on Ranged Attacks while {ability:%s} is active. Max Stacks {max_stacks:%s}."..TALENTS_Enh_desc2.ED_OGR_Ability_3_3_rgb end), -- stacks: 2, ability: Point-Blank Barrage -- colors
	--[+ French +]--!!!
	create_template("talent_tree_ogr_abil3_003_desc_fr", {"loc_talent_ogryn_special_ammo_fire_shots_new_desc"}, {"fr"}, function(locale, value) return "Les attaques à distance appliquent {stacks:%s} cumuls de "..COLORS_KWords_fr.Burn_rgb_fr.." pendant que {ability:%s} est actif."..TALENTS_Enh_desc2_fr.ED_OGR_Ability_3_3_rgb_fr end),
	--[+ Russian +]-- Задай жару -- руоф Зададим жару
	create_template("talent_tree_ogr_abil3_003_desc_ru", {"loc_talent_ogryn_special_ammo_fire_shots_new_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.n_plus_rgb.."{stacks:%s} заряда "..COLORS_KWords_ru.Burn_rgb_ru.." накладывают ваши выстрелы во время действия способности {ability:%s}. Максимум {max_stacks:%s} зарядов."..TALENTS_Enh_desc2_ru.ED_OGR_Ability_3_3_rgb_ru end),

--[+ +KEYSTONES - КЛЮЧЕВОЙ ТАЛАНТ+ +]--
	--[+ Keystone 1 - Heavy Hitter +]--
	create_template("talent_tree_ogr_keys1_000_desc_en", {"loc_talent_ogryn_passive_heavy_hitter_new_desc"}, {"en"}, function(locale, value) return "{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on Melee Attack Hit. Stacks {stacks:%s} times. Gain {heavy_stacks:%s} Stacks on Heavy Attack Hit."..TALENTS_Enh_desc2.ED_OGR_Keystone_1_rgb end), -- damage: +5%, duration: 7.5, stacks: 5 -- s->seconds -- colors
	--[+ French +]--Frappe lourde
	create_template("talent_tree_ogr_keys1_000_desc_fr", {"loc_talent_ogryn_passive_heavy_hitter_new_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." de Mélée pendant {duration:%s} secondes lors d'une attaque réussie. Se cumuls {stacks:%s} fois."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_rgb_fr end),
	--[+ Russian +]-- Тяжёлый нападающий -- руоф Тяжеловес
	create_template("talent_tree_ogr_keys1_000_desc_ru", {"loc_talent_ogryn_passive_heavy_hitter_new_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя на {duration:%s} секунды при нанесении ударов в ближнем бою. Суммируется {stacks:%s} раз. Даёт {heavy_stacks:%s} заряда при тяжёлых ударах."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_rgb_ru end),

	--[+ Keystone 1-1 - Don't Feel a Thing +]--
	create_template("talent_tree_ogr_keys1_001_desc_en", {"loc_talent_ogryn_passive_heavy_hitter_tdr_desc"}, {"en"}, function(locale, value) return "{toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for each Stack, also granted by {talent_name:%s}." end), -- talent_name: Heavy Hitter, stacks: 5, attack_speed: +10% -- ..TALENTS_Enh_desc2.ED_OGR_Keystone_1_1_rgb
	--[+ French +]--Rien senti
	create_template("talent_tree_ogr_keys1_001_desc_fr", {"loc_talent_ogryn_passive_heavy_hitter_tdr_desc"}, {"fr"}, function(locale, value) return "{toughness_damage_reduction:%s} de "..COLORS_KWords_fr.Toughness_dmg_red_rgb_fr.." par cumuls de {talent_name:%s}. " end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_1_rgb_fr
	--[+ Russian +]-- Не чувствую ничего
	create_template("talent_tree_ogr_keys1_001_desc_ru", {"loc_talent_ogryn_passive_heavy_hitter_tdr_desc"}, {"ru"}, function(locale, value) return "{toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." за каждый заряд даётся талантом {talent_name:%s}." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_1_rgb_ru

	--[+ Keystone 1-2 - Just Getting Started +]--
	create_template("talent_tree_ogr_keys1_002_desc_en", {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed_description"}, {"en"}, function(locale, value) return "{attack_speed:%s} Attack Speed while {talent_name:%s} is at {stacks:%s} Stacks."..TALENTS_Enh_desc2.ED_OGR_Keystone_1_2_rgb end), -- talent_name: Heavy Hitter, stacks: 5, attack_speed: +10%
	--[+ French +]-- Rien que le début
	create_template("talent_tree_ogr_keys1_002_desc_fr", {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed_description"}, {"fr"}, function(locale, value) return "{attack_speed:%s} Vitesse d'attaque tant que {talent_name:%s} est à {stacks:%s} cumuls."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_2_rgb_fr end),
	--[+ Russian +]-- Я только начал -- руоф Лишь начало!
	create_template("talent_tree_ogr_keys1_002_desc_ru", {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_attack_speed_description"}, {"ru"}, function(locale, value) return "{attack_speed:%s} к скорости атаки пока у вас {stacks:%s} зарядов таланта {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_2_rgb_ru end),

	--[+ Keystone 1-3 - Unstoppable +]--
	create_template("talent_tree_ogr_keys1_003_desc_en", {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness_new_description"}, {"en"}, function(locale, value) return "{melee_toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenished from Melee Kills for each Stack, also granted by {talent_name:%s}."..TALENTS_Enh_desc2.ED_OGR_Keystone_1_3_rgb end), -- talent_name: Heavy Hitter, stacks: 5, toughness_melee_replenish: +100% -- colors
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_keys1_003_desc_fr", {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness_new_description"}, {"fr"}, function(locale, value) return "{toughness_melee_replenish:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." régénérée par les éliminations en mêlée tant que {talent_name:%s} est à {stacks:%s} cumuls."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_3_rgb_fr end),
	--[+ Russian +]-- Неудержимый -- руоф Неудержимость
	create_template("talent_tree_ogr_keys1_003_desc_ru", {"loc_talent_ogryn_heavy_hitter_max_stacks_improves_toughness_new_description"}, {"ru"}, function(locale, value) return "{melee_toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается от убийств в ближнем бою за каждый заряд даётся талантом {talent_name:%s}." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_3_rgb_ru

	--[+ Keystone 1-4 - Great Cleaver +]--
	create_template("talent_tree_ogr_keys1_004_desc_en", {"loc_talent_ogryn_passive_heavy_hitter_cleave_desc"}, {"en"}, function(locale, value) return "{cleave:%s} "..COLORS_KWords.Cleave_rgb.." for each Stack, also granted by {talent_name:%s}." end), -- talent_name: Heavy Hitter -- ..TALENTS_Enh_desc2.ED_OGR_Keystone_1_4_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_keys1_004_desc_fr", {"loc_talent_ogryn_passive_heavy_hitter_cleave_desc"}, {"fr"}, function(locale, value) return "La durée de {talent_name:%s} est rafraîchie par les attaques légères."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_4_rgb_fr end),
	--[+ Russian +]-- Брутальный моментум -- руоф Зверский моментум
	create_template("talent_tree_ogr_keys1_004_desc_ru", {"loc_talent_ogryn_passive_heavy_hitter_cleave_desc"}, {"ru"}, function(locale, value) return "{cleave:%s} к "..COLORS_KWords_ru.Cleave_rgb_ru.." за каждый заряд даётся талантом {talent_name:%s}." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_4_rgb_ru

	--[+ Keystone 1-5 - Impactful +]--
	create_template("talent_tree_ogr_keys1_005_desc_en", {"loc_talent_ogryn_passive_heavy_hitter_stagger_desc"}, {"en"}, function(locale, value) return "{impact:%s} "..COLORS_KWords.Impact_rgb.." for each Stack, also granted by {talent_name:%s}." end), -- talent_name: Heavy Hitter -- ..TALENTS_Enh_desc2.ED_OGR_Keystone_1_5_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_keys1_005_desc_fr", {"loc_talent_ogryn_passive_heavy_hitter_stagger_desc"}, {"fr"}, function(locale, value) return "La durée de {talent_name:%s} est rafraîchie par les attaques légères."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_1_5_rgb_fr end),
	--[+ Russian +]-- Брутальный моментум -- руоф Зверский моментум
	create_template("talent_tree_ogr_keys1_005_desc_ru", {"loc_talent_ogryn_passive_heavy_hitter_stagger_desc"}, {"ru"}, function(locale, value) return "{impact:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." врагов за каждый заряд даётся талантом {talent_name:%s}." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_1_5_rgb_ru

	--[+ Keystone 2 - Feel No Pain +]--
	create_template("talent_tree_ogr_keys2_000_desc_en", {"loc_talent_ogryn_carapace_armor_any_damage_desc"}, {"en"}, function(locale, value) return "You are blessed with {stacks:%s} Stacks of "..COLORS_KWords.Feel_no_pain_rgb..". Each Stack grants:\n{toughness_regen:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment and\n{damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Reduction.\nTaking "..COLORS_KWords.Damage_rgb.." removes one Stack. Stacks are restored every {duration:%s} seconds."..TALENTS_Enh_desc2.ED_OGR_Keystone_2_rgb end), -- stacks: 10, toughness_regen: +2.5%, damage_reduction: +2.5%, duration: 3 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_keys2_000_desc_fr", {"loc_talent_ogryn_carapace_armor_any_damage_desc"}, {"fr"}, function(locale, value) return "Vous recevez {stacks:%s} cumuls de "..COLORS_KWords_fr.Feel_no_pain_rgb_fr..". Chaque cumul accorde :\n{toughness_regen:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." et\n{damage_reduction:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr..".\nPrendre des "..COLORS_KWords_fr.Damage_rgb_fr.." retire un cumul. Les cumuls sont restaurées toutes les {duration:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_rgb_fr end),
	--[+ Russian +]-- Неболит 
	create_template("talent_tree_ogr_keys2_000_desc_ru", {"loc_talent_ogryn_carapace_armor_any_damage_desc"}, {"ru"}, function(locale, value) return "Вам даровано {stacks:%s} зарядов "..COLORS_KWords_ru.Feel_no_pain_rgb_ru..". Каждый заряд даёт:\n{toughness_regen:%s} восполнения "..COLORS_KWords_ru.Toughness_rgb_ru.." и\n{damage_reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru..".\nПолучение "..COLORS_KWords_ru.Dmg_a_rgb_ru.." снимает один заряд. Заряды восстанавливаются каждые {duration:%s} секунды."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_2_rgb_ru end),

	--[+ Keystone 2-1 - Pained Outburst +]--
	create_template("talent_tree_ogr_keys2_001_desc_en", {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks_new_desc"}, {"en"}, function(locale, value) return "{toughness_replenish:%s} "..COLORS_KWords.Toughness_rgb.." replenished when {talent_name:%s} reaches {stacks:%s} Stacks or below. It also creates an explosion that deals No "..COLORS_KWords.Damage_rgb.." but "..COLORS_KWords.Staggers_rgb.." surrounding enemies.\n\nThis effect can occur once every {cooldown:%s} seconds."..TALENTS_Enh_desc2.ED_OGR_Keystone_2_1_rgb end), -- talent_name: Feel No Pain, toughness_replenish: +20%, cooldown: 30 -- s->seconds -- colors
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_keys2_001_desc_fr", {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks_new_desc"}, {"fr"}, function(locale, value) return "{toughness_replenish:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." régénérée quand {talent_name:%s} atteint "..COLORS_Numbers.n_0_rgb.." cumul. Cela crée aussi une explosion qui ne cause pas de dégâts mais fait "..COLORS_KWords_fr.Staggering_rgb_fr.." les ennemis environnants.\n\nCet effet peut se produire une fois toutes les {cooldown:%s} secondes."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_1_rgb_fr end),
	--[+ Russian +]-- Вспышка боли 
	create_template("talent_tree_ogr_keys2_001_desc_ru", {"loc_talent_ogryn_carapace_armor_trigger_on_zero_stacks_new_desc"}, {"ru"}, function(locale, value) return "{toughness_replenish:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается, если заряды таланта {talent_name:%s} достигают {stacks:%s} зарядов или меньше. Обнуление зарядов также создаёт взрыв, который не наносит "..COLORS_KWords_ru.Dmg_a_rgb_ru..", но "..COLORS_KWords_ru.Staggers_e_rgb_ru.." врагов вокруг.\n\nЭтот эффект может срабатывать раз в {cooldown:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_2_1_rgb_ru end),

	--[+ Keystone 2-2 - Strongest! +]--
	create_template("talent_tree_ogr_keys2_002_desc_en", {"loc_talent_ogryn_carapace_armor_add_stack_on_push_desc"}, {"en"}, function(locale, value) return COLORS_Numbers.n_1_rgb.." Stack of {talent_name:%s} is restored by Pushing enemies."..TALENTS_Enh_desc2.ED_OGR_Keystone_2_2_rgb end), -- talent_name: Feel No Pain
	--[+ French +]--
	create_template("talent_tree_ogr_keys2_002_desc_fr", {"loc_talent_ogryn_carapace_armor_add_stack_on_push_desc"}, {"fr"}, function(locale, value) return COLORS_Numbers.n_1_rgb.." cumul de {talent_name:%s} est restaurée en poussant les ennemis."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_2_rgb_fr end),
	--[+ Russian +]-- Сильнейший! 
	create_template("talent_tree_ogr_keys2_002_desc_ru", {"loc_talent_ogryn_carapace_armor_add_stack_on_push_desc"}, {"ru"}, function(locale, value) return COLORS_Numbers.n_1_rgb.." заряд таланта {talent_name:%s} восстанавливается при отталкивании врагов."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_2_2_rgb_ru end),

	--[+ Keystone 2-3 - Toughest! +]--
	create_template("talent_tree_ogr_keys2_003_desc_en", {"loc_talent_ogryn_carapace_armor_more_toughness_desc"}, {"en"}, function(locale, value) return "{toughness_regen:%s} "..COLORS_KWords.Toughness_rgb.." replenishment per stack is granted by {talent_name:%s}."..TALENTS_Enh_desc2.ED_OGR_Keystone_2_3_rgb end), -- talent_name: Feel No Pain, toughness_regen: +2.5% -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_keys2_003_desc_fr", {"loc_talent_ogryn_carapace_armor_more_toughness_desc"}, {"fr"}, function(locale, value) return "{toughness_regen:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." par cumul est accordée par {talent_name:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_2_3_rgb_fr end),
	--[+ Russian +]-- Стойкий! -- руоф Самый выносливый!
	create_template("talent_tree_ogr_keys2_003_desc_ru", {"loc_talent_ogryn_carapace_armor_more_toughness_desc"}, {"ru"}, function(locale, value) return "{toughness_regen:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается за каждый заряд таланта {talent_name:%s}."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_2_3_rgb_ru end),

	--[+ Keystone 3 - Burst Limiter Override +]--
	create_template("talent_tree_ogr_keys3_000_desc_en", {"loc_talent_ogryn_blo_new_alt_desc"}, {"en"}, function(locale, value) return "{proc_chance:%s} chance of triggering "..COLORS_KWords.Lucky_bullet_rgb.." and not consuming Ammo when making Ranged Attacks.\n\nIn addition, gain {ranged_damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." on Ranged Kills. Max Stacks {stacks:%s}. Lasts {duration:%s} seconds."..TALENTS_Enh_desc2.ED_OGR_Keystone_3_rgb end), -- proc_chance: 8% -- colors
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_keys3_000_desc_fr", {"loc_talent_ogryn_blo_new_alt_desc"}, {"fr"}, function(locale, value) return "{proc_chance:%s} de chance de déclencher "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." et de ne pas consommer de munitions lors des attaques à distance."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_rgb_fr end),
	--[+ Russian +]-- Обход ограничителя очереди -- руоф Взлом ограничителя взрыва
	create_template("talent_tree_ogr_keys3_000_desc_ru", {"loc_talent_ogryn_blo_new_alt_desc"}, {"ru"}, function(locale, value) return "{proc_chance:%s} шанс получить "..COLORS_KWords_ru.Lucky_bullet_rgb_ru.." и не потратить боеприпас при выстреле.\n\nТакже вы получаете {ranged_damage:%s} к дальнобойному "..COLORS_KWords_ru.Dmg_a_rgb_ru.." при дальнобойных убийствах. Максимум {stacks:%s} зарядов. Длится {duration:%s} секунд."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_3_rgb_ru end),

	--[+ Keystone 3-1 - Back Off! +]--
	create_template("talent_tree_ogr_keys3_001_desc_en", {"loc_talent_ogryn_blo_melee_desc"}, {"en"}, function(locale, value) return "{chance:%s} chance to trigger "..COLORS_KWords.Lucky_bullet_rgb.." on next Shot when killing an enemy with a Melee Attack. Stacks {stacks:%s} times." end), -- cooldown_reduction: +200%, duration: 2 -- s->seconds -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Keystone_3_1_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_keys3_001_desc_fr", {"loc_talent_ogryn_blo_melee_desc"}, {"fr"}, function(locale, value) return "{cooldown_reduction:%s} de "..COLORS_KWords_fr.Ability_cd_rgb_fr.." pendant {duration:%s} secondes lorsque "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." est déclenché."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_1_rgb_fr end),
	--[+ Russian +]-- Максимальная огневая мощь 
	create_template("talent_tree_ogr_keys3_001_desc_ru", {"loc_talent_ogryn_blo_melee_desc"}, {"ru"}, function(locale, value) return "{chance:%s} шанс активировать "..COLORS_KWords_ru.Lucky_bullet_rgb_ru.." для вашего следующего выстрела после убийства врага в ближнем бою. Суммируется {stacks:%s} раз." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_3_1_rgb_ru

	--[+ Keystone 3-2 - Maximum Firepower +]--
	create_template("talent_tree_ogr_keys3_002_desc_en", {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction_desc"}, {"en"}, function(locale, value) return "{cooldown_reduction:%s} "..COLORS_KWords.Ability_cd_rgb.." Reduction for {duration:%s} seconds when "..COLORS_KWords.Lucky_bullet_rgb.." triggers."..TALENTS_Enh_desc2.ED_OGR_Keystone_3_2_rgb end), -- cooldown_reduction: +200%, duration: 2 -- s->seconds -- colors
	--[+ French +]--
	create_template("talent_tree_ogr_keys3_002_desc_fr", {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction_desc"}, {"fr"}, function(locale, value) return "{cooldown_reduction:%s} de "..COLORS_KWords_fr.Ability_cd_rgb_fr.." pendant {duration:%s} secondes lorsque "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." est déclenché."..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_2_rgb_fr end),
	--[+ Russian +]-- Максимальная огневая мощь 
	create_template("talent_tree_ogr_keys3_002_desc_ru", {"loc_talent_ogryn_leadbelcher_grant_cooldown_reduction_desc"}, {"ru"}, function(locale, value) return "{cooldown_reduction:%s} к сокращению времени "..COLORS_KWords_ru.Ability_cd_rgb_ru.." на  {duration:%s} секунды, когда вы получаете "..COLORS_KWords_ru.Lucky_bullet_rgb_ru.."."..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_3_2_rgb_ru end),

	--[+ Keystone 3-3 - Good Shootin' +]--
	create_template("talent_tree_ogr_keys3_003_desc_en", {"loc_talent_ogryn_critical_leadbelcher_desc"}, {"en"}, function(locale, value) return "The shot that triggers "..COLORS_KWords.Lucky_bullet_rgb.." is a guaranteed "..COLORS_KWords.Crit_rgb.." (if it Hits)." end), -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Keystone_3_3_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_keys3_003_desc_fr", {"loc_talent_ogryn_critical_leadbelcher_desc"}, {"fr"}, function(locale, value) return "Le tir qui déclenche "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." est un "..COLORS_KWords_fr.Crit_hit_rgb_fr.." garanti (s'il touche)." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Keystone_3_3_rgb_fr
	--[+ Russian +]-- Хорошая стрельба -- руоф Хороший выстрел
	create_template("talent_tree_ogr_keys3_003_desc_ru", {"loc_talent_ogryn_critical_leadbelcher_desc"}, {"ru"}, function(locale, value) return "Выстрел активировавший "..COLORS_KWords_ru.Lucky_bullet_rgb_ru.." гарантированно будет "..COLORS_KWords_ru.Crit_hit_om_rgb_ru.." (если попадёт)." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Keystone_3_3_rgb_ru

	--[+ Keystone 3-4 - Heat of Battle +]--
	create_template("talent_tree_ogr_keys3_004_desc_en", {"loc_talent_ogryn_blo_fire_rate_desc"}, {"en"}, function(locale, value) return "{fire_rate:%s} Fire Rate per Stack, also granted by {talent_name:%s}." end), -- proc_chance: 12% -- rewrite -- colors
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_keys3_004_desc_fr", {"loc_talent_ogryn_blo_fire_rate_desc"}, {"fr"}, function(locale, value) return "Votre chance de déclencher "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." est augmentée à {proc_chance:%s}." end),
	--[+ Russian +]-- Горячка боя
	create_template("talent_tree_ogr_keys3_004_desc_ru", {"loc_talent_ogryn_blo_fire_rate_desc"}, {"ru"}, function(locale, value) return "{fire_rate:%s} к скорострельности за каждый заряд даётся талантом {talent_name:%s}." end),

	--[+ Keystone 3-5 - More Burst Limiter Overrides! +]--
	create_template("talent_tree_ogr_keys3_005_desc_en", {"loc_talent_ogryn_blo_ally_ranged_buffs_desc"}, {"en"}, function(locale, value) return "{ranged_damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." to you and Allies in "..COLORS_KWords.Coherency_rgb.." on "..COLORS_KWords.Lucky_bullet_rgb..". Lasts {duration:%s} seconds." end), -- proc_chance: 12% -- rewrite -- colors
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_keys3_005_desc_fr", {"loc_talent_ogryn_blo_ally_ranged_buffs_desc"}, {"fr"}, function(locale, value) return "Votre chance de déclencher "..COLORS_KWords_fr.Lucky_bullet_rgb_fr.." est augmentée à {proc_chance:%s}." end),
	--[+ Russian +]-- Ещё больший обход ограничителя очереди! -- руоф Больше взлома ограничителя взрыва!
	create_template("talent_tree_ogr_keys3_005_desc_ru", {"loc_talent_ogryn_blo_ally_ranged_buffs_desc"}, {"ru"}, function(locale, value) return "{ranged_damage:%s} к дальнобойному "..COLORS_KWords_ru.Damage_rgb_ru.." для вас и ваших союзников в "..COLORS_KWords_ru.Coherency_rgb_ru..", когда вы получаете "..COLORS_KWords_ru.Lucky_bullet_rgb_ru..". Длится {duration:%s} секунд." end),

--[+ +PASSIVES - ПАССИВНЫЕ+ +]--
	--[+ Passive 1 - Lynchpin +]--
	create_template("talent_tree_ogr_pas_001_desc_en", {"loc_talent_ogryn_coherency_toughness_increase_desc"}, {"en"}, function(locale, value) return "{toughness_multiplier:%s} "..COLORS_KWords.Toughness_rgb.." replenish while in "..COLORS_KWords.Coherency_rgb.."." end), -- toughness_multiplier: +50% -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_1_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_001_desc_fr", {"loc_talent_ogryn_coherency_toughness_increase_desc"}, {"fr"}, function(locale, value) return "{toughness_multiplier:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère en étant en syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_7_rgb_fr end),
	--[+ Russian +]-- Опора -- руоф Переломный момент
	create_template("talent_tree_ogr_pas_001_desc_ru", {"loc_talent_ogryn_coherency_toughness_increase_desc"}, {"ru"}, function(locale, value) return "{toughness_multiplier:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается пока вы в "..COLORS_KWords_ru.Coherency_rgb_ru.."." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_1_rgb_ru

	--[+ Passive 2 - Heavyweight +]--
	create_template("talent_tree_ogr_pas_002_desc_en", {"loc_talent_ogryn_ogryn_fighter_desc"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Damage_rgb.." against Bulwarks, Crushers, Plague Ogryns and Reapers. Also receive {damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Reduction against the same." end), -- damage: +30%, damage_reduction: +30% -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_2_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_002_desc_fr", {"loc_talent_ogryn_ogryn_fighter_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les Remparts, Broyeurs, Ogryns de la Peste et Fauchers. Vous recevez également {damage_reduction:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." contre les mêmes ennemis."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_4_rgb_fr end),
	--[+ Russian +]-- Тяжеловес
	create_template("talent_tree_ogr_pas_002_desc_ru", {"loc_talent_ogryn_ogryn_fighter_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." бастионам, жнецам, крушителям и чумным огринам. Также вы получаете {damage_reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." от них." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_2_rgb_ru

	--[+ Passive 3 - Steady Grip +]--
	create_template("talent_tree_ogr_pas_003_desc_en", {"loc_talent_ogryn_toughness_regen_while_bracing_desc"}, {"en"}, function(locale, value) return "{toughness_regen:%s} "..COLORS_KWords.Toughness_rgb.." Regeneration while bracing your Ranged weapon." end), -- toughness_regen: +3% -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_3_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_003_desc_fr", {"loc_talent_ogryn_toughness_regen_while_bracing_desc"}, {"fr"}, function(locale, value) return "{toughness_regen:%s} de régénération de "..COLORS_KWords_fr.Toughness_rgb_fr.." lors de la mis en joue de votre arme à distance."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_5_rgb_fr end),
	--[+ Russian +]-- Крепкий хват -- руоф Крепкая хватка
	create_template("talent_tree_ogr_pas_003_desc_ru", {"loc_talent_ogryn_toughness_regen_while_bracing_desc"}, {"ru"}, function(locale, value) return "{toughness_regen:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается пока вы целитесь из дальнобойного оружия." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_3_rgb_ru

	--[+ Passive 4 - Smash 'Em! +]--
	create_template("talent_tree_ogr_pas_004_desc_en", {"loc_talent_ogryn_toughness_on_single_heavy_new_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes after hitting a single Enemy with a Melee Attack. Increased to {heavy_toughness:%s} "..COLORS_KWords.Toughness_rgb.." if it is a Heavy Attack." end), -- toughness: 20% -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_4_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_004_desc_fr", {"loc_talent_ogryn_toughness_on_single_heavy_new_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère après avoir frappé un seul ennemi avec une attaque de mêlée puissante."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_6_rgb_fr end),
	--[+ Russian +]-- Круши их! -- руоф Вдарь им!
	create_template("talent_tree_ogr_pas_004_desc_ru", {"loc_talent_ogryn_toughness_on_single_heavy_new_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается после попадания по одному врагу тяжёлой атакой ближнего боя. Увеличивается до {heavy_toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..", если вы ударили тяжёлой атакой." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_4_rgb_ru

	--[+ Passive 5 - The Best Defence +]--
	create_template("talent_tree_ogr_pas_005_desc_en", {"loc_talent_ogryn_toughness_on_multiple_new_desc"}, {"en"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords.Toughness_rgb.." replenishes after hitting multiple Enemies with a single Melee Attack. Increased to {heavy_toughness:%s} "..COLORS_KWords.Toughness_rgb.." if it is a Heavy Attack." end), -- toughness: 20% -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_5_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_005_desc_fr", {"loc_talent_ogryn_toughness_on_multiple_new_desc"}, {"fr"}, function(locale, value) return "{toughness:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." se régénère après avoir touché plusieurs ennemis avec une seule attaque de mêlée puissante."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_3_rgb_fr end),
	--[+ Russian +]-- Лучшая защита
	create_template("talent_tree_ogr_pas_005_desc_ru", {"loc_talent_ogryn_toughness_on_multiple_new_desc"}, {"ru"}, function(locale, value) return "{toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru.." восстанавливается при нанесении удара по нескольким врагам одной тяжёлой атакой ближнего боя. Увеличивается до {heavy_toughness:%s} "..COLORS_KWords_ru.Toughness_rgb_ru..", если вы ударили тяжёлой атакой." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_5_rgb_ru

	--[+ Passive 6 - Furious +]--
	create_template("talent_tree_ogr_pas_006_desc_en", {"loc_talent_ogryn_damage_per_enemy_hit_previous_new_desc"}, {"en"}, function(locale, value) return "You gain "..COLORS_Numbers.n_1_rgb.." Stack of {damage:%s} "..COLORS_KWords.Damage_rgb.." for each enemy Hit during a Single Melee Attack. Up to "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_25_rgb.." "..COLORS_KWords.Damage_rgb.." at "..COLORS_Numbers.n_10_rgb.." Stacks. Calculated separately for each Attack." end), -- damage: +2.5% -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_6_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_006_desc_fr", {"loc_talent_ogryn_damage_per_enemy_hit_previous_new_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." sur votre prochaine attaque de mêlée est gagné pour chaque ennemi touché lors de la même attaque de mêlée puissante."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_1_rgb_fr end),
	--[+ Russian +]-- Разъярённый -- руоф Разъяренный
	create_template("talent_tree_ogr_pas_006_desc_ru", {"loc_talent_ogryn_damage_per_enemy_hit_previous_new_desc"}, {"ru"}, function(locale, value) return "Вы получаете "..COLORS_Numbers.n_1_rgb.." заряд {damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." за каждого поражённого врага в течение одной атаки ближнего боя. До "..COLORS_Numbers.n_plus_rgb..COLORS_Numbers.pc_25_rgb.." к "..COLORS_KWords_ru.Damage_rgb_ru.." при "..COLORS_Numbers.n_10_rgb.." зарядах. Рассчитывается отдельно для каждой атаки." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_6_rgb_ru

	--[+ Passive 7 - Towering Presence +]--
	create_template("talent_tree_ogr_pas_007_desc_en", {"loc_talent_ogryn_bigger_coherency_radius_desc"}, {"en"}, function(locale, value) return "{radius:%s} "..COLORS_KWords.Coherency_rgb.." radius." end), -- radius: +50% -- ..TALENTS_Enh_desc2.ED_OGR_Passive_7_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_007_desc_fr", {"loc_talent_ogryn_bigger_coherency_radius_desc"}, {"fr"}, function(locale, value) return "{radius:%s} de rayon de syntonie."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_19_rgb_fr end),
	--[+ Russian +]-- Живая башня -- Величественное присутствие -- руоф Выдающееся присутствие
	create_template("talent_tree_ogr_pas_007_desc_ru", {"loc_talent_ogryn_bigger_coherency_radius_desc"}, {"ru"}, function(locale, value) return "{radius:%s} к радиусу "..COLORS_KWords_ru.Coherency_rgb_ru.."." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_7_rgb_ru

	--[+ Passive 8 - Soften Them Up +]--
	create_template("talent_tree_ogr_pas_008_desc_en", {"loc_talent_ogryn_targets_recieve_damage_increase_debuff_new_desc"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Damage_rgb.." taken by Enemies for {duration:%s} seconds after receiving "..COLORS_KWords.Damage_rgb.." from your Melee Attacks." end), -- damage: +15%, duration: 5 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_8_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_008_desc_fr", {"loc_talent_ogryn_targets_recieve_damage_increase_debuff_new_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes est subit par les ennemis que vous frappez."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_9_rgb_fr end),
	--[+ Russian +]-- Ослабь их -- руоф Упокоить их
	create_template("talent_tree_ogr_pas_008_desc_ru", {"loc_talent_ogryn_targets_recieve_damage_increase_debuff_new_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." получаемому врагами в течение {duration:%s} секунд после получения "..COLORS_KWords_ru.Dmg_a_rgb_ru.." от ваших атак ближнего боя." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_8_rgb_ru

	--[+ Passive 9 - Payback Time +]--
	create_template("talent_tree_ogr_pas_009_desc_en", {"loc_talent_ogryn_revenge_damage_new_desc"}, {"en"}, function(locale, value) return "{damage:%s} "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on taking or blocking a Melee hit, and on successfully Dodging enemy Melee or Ranged attacks (except Gunners, Reaper, Sniper), and Disabler attacks (Pox Hound jump, Trapper net, Mutant grab)." end), -- damage: +20%, duration: 5 -- s->seconds -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_9_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_009_desc_fr", {"loc_talent_ogryn_revenge_damage_new_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant {duration:%s} secondes après avoir été touché par une attaque de mêlée."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_23_rgb_fr end),
	--[+ Russian +]-- Время расплаты
	create_template("talent_tree_ogr_pas_009_desc_ru", {"loc_talent_ogryn_revenge_damage_new_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд при получении или блокировании удара в ближнем бою, при успешном уклонении от атак противника в ближнем или дальнем бою (кроме атак Пулемётчиков, Жнецов и Снайперов), а также атак обездвиживающих врагов (прыжок Гончей, сетка Ловца, захват Мутанта)." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_9_rgb_ru

	--[+ Passive 10 - Pumped Up +]--
	create_template("talent_tree_ogr_pas_010_desc_en", {"loc_talent_ogryn_damage_reduction_on_high_stamina_desc"}, {"en"}, function(locale, value) return "{damage_taken:%s} "..COLORS_KWords.Health_rgb.." and "..COLORS_KWords.Toughness_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance while above {stamina:%s} max "..COLORS_KWords.Stamina_rgb.."." end), -- damage_taken: +15%, stamina: 75% -- colors ..TALENTS_Enh_desc2.ED_OGR_Passive_10_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_010_desc_fr", {"loc_talent_ogryn_damage_reduction_on_high_stamina_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive__rgb_fr
	--[+ Russian +]-- Качок
	create_template("talent_tree_ogr_pas_010_desc_ru", {"loc_talent_ogryn_damage_reduction_on_high_stamina_desc"}, {"ru"}, function(locale, value) return "{damage_taken:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." "..COLORS_KWords_ru.Toughness_rgb_ru.." и "..COLORS_KWords_ru.Health_rgb_ru.." пока ваша "..COLORS_KWords_ru.Stamina_c_r_rgb_ru.." выше {stamina:%s}." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_10_rgb_ru

	--[+ Passive 11 - Focused Fighter +]--
	create_template("talent_tree_ogr_pas_011_desc_en", {"loc_talent_ogryn_melee_attacks_give_mtdr_desc"}, {"en"}, function(locale, value) return "{reduction:%s} "..COLORS_KWords.Damage_rgb.." Resistance from Melee Attacks after your Successful Melee Attack. You gain "..COLORS_Numbers.n_1_rgb.." Stack per swing, Up to {stacks:%s}. Stacks are removed upon taking "..COLORS_KWords.Damage_rgb.." from a Melee Attack." end), -- : +4%, : 5 -- colors ..TALENTS_Enh_desc2.ED_OGR_Passive_11_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_011_desc_fr", {"loc_talent_ogryn_melee_attacks_give_mtdr_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive__rgb_fr
	--[+ Russian +]-- Сосредоточенный боец
	create_template("talent_tree_ogr_pas_011_desc_ru", {"loc_talent_ogryn_melee_attacks_give_mtdr_desc"}, {"ru"}, function(locale, value) return "{reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." от атак ближнего боя после успешной вашей атаки ближнего боя. Вы получаете "..COLORS_Numbers.n_1_rgb.." заряд за удар, вплоть до {stacks:%s}. Заряды сбрасываются при получении "..COLORS_KWords_ru.Dmg_a_rgb_ru.." от атак ближнего боя." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_11_rgb_ru

	--[+ Passive 12 - Strongman +]--
	create_template("talent_tree_ogr_pas_012_desc_en", {"loc_talent_ogryn_damage_reduction_after_elite_kill_desc"}, {"en"}, function(locale, value) return "{damage_reduction:%s} "..COLORS_KWords.Health_rgb.." and "..COLORS_KWords.Toughness_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance on Elite or Special Kill. Lasts {duration:%s} seconds." end), -- : +10%, : 5 -- colors ..TALENTS_Enh_desc2.ED_OGR_Passive_12_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_012_desc_fr", {"loc_talent_ogryn_damage_reduction_after_elite_kill_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive__rgb_fr
	--[+ Russian +]-- Силач
	create_template("talent_tree_ogr_pas_012_desc_ru", {"loc_talent_ogryn_damage_reduction_after_elite_kill_desc"}, {"ru"}, function(locale, value) return "{damage_reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." "..COLORS_KWords_ru.Toughness_rgb_ru.." и "..COLORS_KWords_ru.Health_rgb_ru.." после убийства элитного врага или специалиста. Длится {duration:%s} секунд." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_12_rgb_ru

	--[+ Passive 13 - Can't Hit Me...Again - Can't Hit Me... Again +]--
	create_template("talent_tree_ogr_pas_013_desc_en", {"loc_talent_ogryn_ranged_damage_immunity_desc"}, {"en"}, function(locale, value) return "{resistance:%s} "..COLORS_KWords.Health_rgb.." and "..COLORS_KWords.Toughness_rgb.." "..COLORS_KWords.Damage_rgb.." Resistance vs Ranged for {duration:%s} seconds after getting hit by a Ranged Attack (including hits by Beast of Nurgle vomit, Flamers' direct fire, and Bombers' grenade direct impact). Cooldown {cooldown:%s} seconds." end), -- : +10%, : 5 -- colors ..TALENTS_Enh_desc2.ED_OGR_Passive_13_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_013_desc_fr", {"loc_talent_ogryn_ranged_damage_immunity_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive__rgb_fr
	--[+ Russian +]-- Попробуй попади... снова
	create_template("talent_tree_ogr_pas_013_desc_ru", {"loc_talent_ogryn_ranged_damage_immunity_desc"}, {"ru"}, function(locale, value) return "{resistance:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." "..COLORS_KWords_ru.Toughness_rgb_ru.." и "..COLORS_KWords_ru.Health_rgb_ru.." против атак дальнего боя в течение {duration:%s} секунд после попадания вражеского снаряда в вас (включая попадание рвоты Зверя Нургла, а также прямые попадания огнём Огнемётчика и гранатой Гренадёра). Восстановление {cooldown:%s} секунды." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_13_rgb_ru

	--[+ Passive 14 - Keep Shooting +]--
	-- create_template("talent_tree_ogr_pas_014_desc_en", {"loc_talent_ogryn_reload_speed_on_empty_desc"}, {"en"}, function(locale, value) return "{reload_speed:%s} Reload Speed when reloading an Empty Clip." end), -- : +10%, : 5 -- colors ..TALENTS_Enh_desc2.ED_OGR_Passive_14_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_014_desc_fr", {"loc_talent_ogryn_reload_speed_on_empty_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive__rgb_fr
	--[+ Russian +]-- Продолжай стрелять
	create_template("talent_tree_ogr_pas_014_desc_ru", {"loc_talent_ogryn_reload_speed_on_empty_desc"}, {"ru"}, function(locale, value) return "{reload_speed:%s} к скорости перезарядки при перезарядке пустого магазина." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_14_rgb_ru

	--[+ Passive 15 - Beat Them Back +]--
	create_template("talent_tree_ogr_pas_015_desc_en", {"loc_talent_ogryn_melee_damage_after_heavy_desc"}, {"en"}, function(locale, value) return "{melee_damage:%s} Melee "..COLORS_KWords.Damage_rgb.." on Successful Heavy Melee Attack. Lasts {duration:%s} seconds." end), -- : +10%, : 5 -- colors ..TALENTS_Enh_desc2.ED_OGR_Passive_15_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_015_desc_fr", {"loc_talent_ogryn_melee_damage_after_heavy_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive__rgb_fr
	--[+ Russian +]-- Дай им отпор -- руоф Дай сдачи
	create_template("talent_tree_ogr_pas_015_desc_ru", {"loc_talent_ogryn_melee_damage_after_heavy_desc"}, {"ru"}, function(locale, value) return "{melee_damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя при успешной тяжёлой атаке ближнего боя. Длится {duration:%s} секунд." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_15_rgb_ru

	--[+ Passive 16 - Strike True +]--
	create_template("talent_tree_ogr_pas_016_desc_en", {"loc_talent_ogryn_weakspot_damage_desc"}, {"en"}, function(locale, value) return "{damage:%s} Melee "..COLORS_KWords.Weakspot_rgb.." "..COLORS_KWords.Strength_rgb.."."..COLORS_KWords.Pwr_note_rgb end), -- : +10%, : 5 -- colors ..TALENTS_Enh_desc2.ED_OGR_Passive_16_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_016_desc_fr", {"loc_talent_ogryn_weakspot_damage_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive__rgb_fr
	--[+ Russian +]-- Меткий удар
	create_template("talent_tree_ogr_pas_016_desc_ru", {"loc_talent_ogryn_weakspot_damage_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к  "..COLORS_KWords_ru.Strength_rgb_ru.." атак ближнего боя при попадании в "..COLORS_KWords_ru.Weakspot_rgb_ru.."."..COLORS_KWords_ru.Pwr_note_rgb_ru end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_16_rgb_ru

	--[+ Passive 17 - Slam +]--!!!
	create_template("talent_tree_ogr_pas_017_desc_en", {"loc_talent_ogryn_melee_stagger_new_desc"}, {"en"}, function(locale, value) return "{stagger:%s} "..COLORS_KWords.Impact_rgb.." bonus on Melee Attacks. {stamina:%s} "..COLORS_KWords.Stamina_rgb.." replenished when "..COLORS_KWords.Staggering_rgb.." an enemy with a Melee Attack. Cooldown {cooldown:%s} second." end), -- stagger: +25% -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_17_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_017_desc_fr", {"loc_talent_ogryn_melee_stagger_new_desc"}, {"fr"}, function(locale, value) return "{stagger:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.." bonus sur les attaques de mêlée."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_8_rgb_fr end),
	--[+ Russian +]-- Сокрушение -- руоф Хлопок
	create_template("talent_tree_ogr_pas_017_desc_ru", {"loc_talent_ogryn_melee_stagger_new_desc"}, {"ru"}, function(locale, value) return "{stagger:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.." врагов от атак ближнего боя.\n{stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru.." восполняется, после "..COLORS_KWords_ru.Staggering_rgb_ru.." врага атакой ближнего боя. Восстановление {cooldown:%s} секунда." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_17_rgb_ru

	--[+ Passive 18 - Ammo Stash +]--
	create_template("talent_tree_ogr_pas_018_desc_en", {"loc_talent_ogryn_increased_ammo_desc"}, {"en"}, function(locale, value) return "{max_ammo:%s} to your Maximum Ammo reserve, rounds down." end), -- max_ammo: +25% -- rewrite
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_018_desc_fr", {"loc_talent_ogryn_increased_ammo_desc"}, {"fr"}, function(locale, value) return "Augmente votre réserve de munitions maximale de {max_ammo:%s}, arrondi à l'inférieur." end),
	--[+ Russian +]-- Схрон патронов
	create_template("talent_tree_ogr_pas_018_desc_ru", {"loc_talent_ogryn_increased_ammo_desc"}, {"ru"}, function(locale, value) return "{max_ammo:%s} к максимальному количеству боеприпасов в резерве. Округляется в меньшую сторону." end),

	--[+ Passive 19 - Big Boom +]--
	create_template("talent_tree_ogr_pas_019_desc_en", {"loc_talent_ogryn_increase_explosion_radius_desc"}, {"en"}, function(locale, value) return "{explosion_radius:%s} to the radius of any explosions you cause." end), -- explosion_radius: +27.5% -- ..TALENTS_Enh_desc2.ED_OGR_Passive_19_rgb
	--[+ French +]--!!!
	-- create_template("tale nt_tree_ogr_pas_019_desc_fr", {"loc_talent_ogryn_increase_explosion_radius_desc"}, {"fr"}, function(locale, value) return "Augmentez le rayon d'explosion de {explosion_radius:%s}."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_25_rgb_fr end),
	--[+ Russian +]-- Большой бабах 
	create_template("talent_tree_ogr_pas_019_desc_ru", {"loc_talent_ogryn_increase_explosion_radius_desc"}, {"ru"}, function(locale, value) return "{explosion_radius:%s} к радиусу любых взрывов, вызванных вами." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_19_rgb_ru

	--[+ Passive 20 - Crunch! +]--
	create_template("talent_tree_ogr_pas_020_desc_en", {"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger_new_desc"}, {"en"}, function(locale, value) return "Based on charge time, your charged Melee Attack gains:\n{damage:%s} "..COLORS_KWords.Damage_rgb.." and\n{stagger:%s} "..COLORS_KWords.Impact_rgb.."." end), -- damage: +40%, stagger: +40% -- &->and -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_20_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_020_desc_fr", {"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger_new_desc"}, {"fr"}, function(locale, value) return "Sur une attaque de mêlée puissante complètement chargée :\n{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." bonus et\n{stagger:%s} d'"..COLORS_KWords_fr.Impact_rgb_fr.." bonus."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_10_rgb_fr end),
	--[+ Russian +]-- Хрусь! -- руоф Хрясь!
	create_template("talent_tree_ogr_pas_020_desc_ru", {"loc_talent_ogryn_fully_charged_attacks_gain_damage_and_stagger_new_desc"}, {"ru"}, function(locale, value) return "В зависимости от времени заряжания, ваша заряженная атака ближнего боя получает прибавку:\n{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." и\n{stagger:%s} к "..COLORS_KWords_ru.Impact_rgb_ru.."." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_20_rgb_ru

	--[+ Passive 21 - Batter +]--
	create_template("talent_tree_ogr_pas_021_desc_en", {"loc_talent_ogryn_heavy_bleeds_new_desc"}, {"en"}, function(locale, value) return "Inflict {stacks:%s} Stacks of "..COLORS_KWords.Bleed_rgb.." on Melee Hit. Increased to {heavy_stacks:%s} on Heavy Melee Hit. Up to "..COLORS_Numbers.n_16_rgb.." Max "..COLORS_KWords.Bleed_rgb.." Stacks on a target." end), -- stacks: +4 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_21_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_021_desc_fr", {"loc_talent_ogryn_heavy_bleeds_new_desc"}, {"fr"}, function(locale, value) return "Inflige {stacks:%s} cumuls de "..COLORS_KWords_fr.Bleed_rgb_fr.." sur une attaque de mêlée puissante. Jusqu'à "..COLORS_Numbers.n_16_rgb.." cumuls maximum de "..COLORS_KWords_fr.Bleed_rgb_fr.." sur une cible."..TALENTS_Enh_desc2_fr.ED_OGR_Passive_11_rgb_fr end),
	--[+ Russian +]-- Месиво
	create_template("talent_tree_ogr_pas_021_desc_ru", {"loc_talent_ogryn_heavy_bleeds_new_desc"}, {"ru"}, function(locale, value) return "{stacks:%s} заряда "..COLORS_KWords_ru.Bleed_rgb_ru.." накладывается на врага атаками ближнего боя. Увеличивается до {heavy_stacks:%s} при тяжёлом ударе ближнего боя. Вплоть до "..COLORS_Numbers.n_16_rgb.." зарядов на цель." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_21_rgb_ru

	--[+ Passive 22 - Brutish Strength +]--
	create_template("talent_tree_ogr_pas_022_desc_en", {"loc_talent_ogryn_pushing_applies_brittlenes_desc"}, {"en"}, function(locale, value) return "{stacks:%s} Stacks of "..COLORS_Numbers.pc_2_5_rgb.." "..COLORS_KWords.Brittleness_rgb.." applied to enemies on Push. Up to "..COLORS_Numbers.pc_40_rgb.." Max at "..COLORS_Numbers.n_16_rgb.." Stacks." end), -- stacks: +4 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_22_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_022_desc_fr", {"loc_talent_ogryn_pushing_applies_brittlenes_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_22_rgb_fr
	--[+ Russian +]-- Грубая сила
	create_template("talent_tree_ogr_pas_022_desc_ru", {"loc_talent_ogryn_pushing_applies_brittlenes_desc"}, {"ru"}, function(locale, value) return "{stacks:%s} заряда "..COLORS_Numbers.pc_2_5_rgb.." "..COLORS_KWords_ru.Brittleness_rgb_ru.." применяется к врагам при отталкивании. До максимум "..COLORS_Numbers.pc_40_rgb.." при "..COLORS_Numbers.n_16_rgb.." зарядах." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_22_rgb_ru

	--[+ Passive 23 - For the Lil'Uns +]--
	create_template("talent_tree_ogr_pas_023_desc_en", {"loc_talent_ogryn_protect_allies_desc"}, {"en"}, function(locale, value) return "{power:%s} "..COLORS_KWords.Strength_rgb.." and {toughness_damage_reduction:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." for {duration:%s} seconds when an Ally's "..COLORS_KWords.Toughness_rgb.." breaks. Cooldown {cooldown:%s} seconds.\n\n{revive_speed:%s} Revive Speed and "..COLORS_KWords.Stun_rgb.." Immunity for{duration:%s} seconds when an Ally is Knocked Down." end), -- stacks: +4 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_23_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_023_desc_fr", {"loc_talent_ogryn_protect_allies_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_23_rgb_fr
	--[+ Russian +]-- За малых
	create_template("talent_tree_ogr_pas_023_desc_ru", {"loc_talent_ogryn_protect_allies_desc"}, {"ru"}, function(locale, value) return "{power:%s} к "..COLORS_KWords_ru.Strength_rgb_ru.." и {toughness_damage_reduction:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." на {duration:%s} секунд, когда "..COLORS_KWords_ru.Tghnss_rgb_ru.." союзника пробивают. Восстановление {cooldown:%s} секунд.\n\n{revive_speed:%s} к скорости возрождения и иммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru.." на {duration:%s} секунд, когда союзник сбит с ног." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_23_rgb_ru

	--[+ Passive 24 - Concentrate +]--
	create_template("talent_tree_ogr_pas_024_desc_en", {"loc_talent_ogryn_drain_stamina_for_handling_desc"}, {"en"}, function(locale, value) return "While bracing your Ranged Weapon you gain:\n{sway_reduction:%s} Sway Reduction,\n{spread_reduction:%s} Spread Reduction and\n{recoil_reduction:%s} Recoil Reduction,\nbut lose {stamina:%s} "..COLORS_KWords.Stamina_rgb.." per second." end), -- stacks: +4 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_24_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_024_desc_fr", {"loc_talent_ogryn_drain_stamina_for_handling_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_24_rgb_fr
	--[+ Russian +]-- Сосредоточься
	create_template("talent_tree_ogr_pas_024_desc_ru", {"loc_talent_ogryn_drain_stamina_for_handling_desc"}, {"ru"}, function(locale, value) return "{sway_reduction:%s} к уменьшению раскачивания,\n{spread_reduction:%s} к уменьшению разброса и\n{recoil_reduction:%s} к уменьшению отдачи при прицеливании из оружия дальнего боя, но при этом теряется {stamina:%s} "..COLORS_KWords_ru.Stamina_rgb_ru.." в секунду." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_24_rgb_ru

	--[+ Passive 25 - Fire Away +]--
	create_template("talent_tree_ogr_pas_025_desc_en", {"loc_talent_ogryn_explosions_burn_close_desc"}, {"en"}, function(locale, value) return "{stacks:%s} Stack of "..COLORS_KWords.Burn_rgb.." applied by your explosions.\n{more_stacks:%s} Stacks if targets are inside the explosion epicenter.\nUp to {max_stacks:%s} Max "..COLORS_KWords.Burn_rgb.." Stacks on a target." end), -- stacks: +4 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_25_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_025_desc_fr", {"loc_talent_ogryn_explosions_burn_close_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_25_rgb_fr
	--[+ Russian +]-- Поджиг
	create_template("talent_tree_ogr_pas_025_desc_ru", {"loc_talent_ogryn_explosions_burn_close_desc"}, {"ru"}, function(locale, value) return "{stacks:%s} заряд "..COLORS_KWords_ru.Burn_rgb_ru.." накладывается вашими взрывами.\n{more_stacks:%s} заряда, если враг находится в эпицентре взрыва. Максимум {max_stacks:%s} зарядов "..COLORS_KWords_ru.Burn_rgb_ru.."." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_25_rgb_ru

	--[+ Passive 26 - Simple Minded +]--
	create_template("talent_tree_ogr_pas_026_desc_en", {"loc_talent_ogryn_corruption_resistance_desc"}, {"en"}, function(locale, value) return "{resistance:%s} "..COLORS_KWords.Corruption_rgb.." Resistance.\nReduces "..COLORS_KWords.Corruptdmg_rgb.." taken by any enemy source, including Poxburster explosion, toxic gas, Poxwalker Melee attacks, Pox Hound pounce, Beast of Nurgle vomit/slime/consumed, Daemonhost, grimoires, etc." end), -- stacks: +4 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_26_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_026_desc_fr", {"loc_talent_ogryn_corruption_resistance_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_26_rgb_fr
	--[+ Russian +]-- Простота ума
	create_template("talent_tree_ogr_pas_026_desc_ru", {"loc_talent_ogryn_corruption_resistance_desc"}, {"ru"}, function(locale, value) return "{resistance:%s} сопротивления "..COLORS_KWords_ru.Corruption_rgb_ru..".\nУменьшает "..COLORS_KWords_ru.Corruptdmg_rgb_ru..", получаемый от любого вражеского источника, включая взрыв Чумного взрывника, токсичный газ, атаки Чумного ходока в ближнем бою, нападение Чумной гончей, рвоту/слизь/проглатывание Зверя Нургла, атаки Демонхоста, гримуары и т.д." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_26_rgb_ru

	--[+ Passive 27 - Unbreakable +]--
	create_template("talent_tree_ogr_pas_027_desc_en", {"loc_talent_ogryn_block_all_attacks_variant_desc"}, {"en"}, function(locale, value) return "{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." for "..COLORS_Numbers.n_5_rgb.." seconds on Perfect Block. Your Perfect Blocks can block all Melee Attacks." end), -- stacks: +4 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_27_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_027_desc_fr", {"loc_talent_ogryn_block_all_attacks_variant_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_27_rgb_fr
	--[+ Russian +]-- Непробиваемый
	create_template("talent_tree_ogr_pas_027_desc_ru", {"loc_talent_ogryn_block_all_attacks_variant_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." в ближнем бою на "..COLORS_Numbers.n_5_rgb.." секунд при идеальном блоке. Ваши идеальные блоки могут блокировать все атаки ближнего боя." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_27_rgb_ru

	--[+ Passive 28 - Too Stubborn to Die +]--
	create_template("talent_tree_ogr_pas_028_desc_en", {"loc_talent_ogryn_toughness_gain_increase_on_low_health_desc"}, {"en"}, function(locale, value) return "{toughness_multiplier:%s} "..COLORS_KWords.Toughness_rgb.." Replenishment while below {health:%s} "..COLORS_KWords.Health_rgb.."." end), -- toughness_multiplier: +100%, health: 33% -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_28_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_028_desc_fr", {"loc_talent_ogryn_toughness_gain_increase_on_low_health_desc"}, {"fr"}, function(locale, value) return "{toughness_multiplier:%s} de "..COLORS_KWords_fr.Toughness_rgb_fr.." Récupération en dessous de {health:%s} de "..COLORS_KWords_fr.Health_rgb_fr.."." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_15_rgb_fr -> ED_OGR_Passive_28_rgb_fr
	--[+ Russian +]-- Слишком упёртый, чтобы умереть -- руоф Слишком упрям, чтобы умереть
	create_template("talent_tree_ogr_pas_028_desc_ru", {"loc_talent_ogryn_toughness_gain_increase_on_low_health_desc"}, {"ru"}, function(locale, value) return "{toughness_multiplier:%s} к восстанавлению "..COLORS_KWords_ru.Toughness_rgb_ru..", если ваш уровень "..COLORS_KWords_ru.Wound_rgb_ru.." опустился ниже {health:%s}." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_28_rgb_ru

	--[+ Passive 29 - Frenzied Blows +]--
	create_template("talent_tree_ogr_pas_029_desc_en", {"loc_talent_ogryn_stacking_attack_speed_desc"}, {"en"}, function(locale, value) return "{attack_speed:%s} Melee Attack Speed on Chained Hit for {duration:%s} seconds. Stacks {stacks:%s} times. Generates "..COLORS_Numbers.n_1_rgb.." Stack per swing. Can be refreshed during active duration." end), -- stacks: +4 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_29_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_029_desc_fr", {"loc_talent_ogryn_stacking_attack_speed_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_29_rgb_fr
	--[+ Russian +]-- Яростные удары
	create_template("talent_tree_ogr_pas_029_desc_ru", {"loc_talent_ogryn_stacking_attack_speed_desc"}, {"ru"}, function(locale, value) return "{attack_speed:%s} к скорости атаки в ближнем бою при серии ударов на {duration:%s} секунд. Суммируется {stacks:%s} раз. Генерирует "..COLORS_Numbers.n_1_rgb.." заряд за удар. Может обновляться во время действия." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_29_rgb_ru

	--[+ Passive 30 - Attention Seeker +]--
	create_template("talent_tree_ogr_pas_030_desc_en", {"loc_talent_ranged_enemies_taunt_description"}, {"en"}, function(locale, value) return "Blocking or Pushing Enemies Taunts them for {duration:%s} seconds." end), -- duration: 8 -- s->seconds -- ..TALENTS_Enh_desc2.ED_OGR_Passive_30_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_030_desc_fr", {"loc_talent_ranged_enemies_taunt_description"}, {"fr"}, function(locale, value) return "Bloquer ou pousser les ennemis les provoque pendant {duration:%s} secondes." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_17_rgb_fr
	--[+ Russian +]-- Провокатор -- руоф Внимание искателя
	create_template("talent_tree_ogr_pas_030_desc_ru", {"loc_talent_ranged_enemies_taunt_description"}, {"ru"}, function(locale, value) return "Блокирование любых атак или отталкивание врагов провоцирует их атаковать вас в ближнем бою в течение {duration:%s} секунд." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_30_rgb_ru

	--[+ Passive 31 - Bruiser +]--
	create_template("talent_tree_ogr_pas_031_desc_en", {"loc_talent_ogryn_cooldown_on_elite_kills_new_desc"}, {"en"}, function(locale, value) return "{cooldown_regen:%s} "..COLORS_KWords.Ability_cd_rgb.." Regeneration for {duration:%s} seconds after you or an Ally in "..COLORS_KWords.Coherency_rgb.." kill an Elite Enemy." end), -- cooldown: 4% -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_31_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_031_desc_fr", {"loc_talent_ogryn_cooldown_on_elite_kills_new_desc"}, {"fr"}, function(locale, value) return "{cooldown:%s} de réduction de "..COLORS_KWords_fr.Combat_ability_cd_rgb_fr.." quand vous ou un allié en syntonie effectués une élimination d'élite." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_24_rgb_fr
	--[+ Russian +]-- Бугай
	create_template("talent_tree_ogr_pas_031_desc_ru", {"loc_talent_ogryn_cooldown_on_elite_kills_new_desc"}, {"ru"}, function(locale, value) return "На {cooldown_regen:%s} сокращается время "..COLORS_KWords_ru.Ability_cd_rgb_ru.." в течение {duration:%s} секунд, если вы или союзник в "..COLORS_KWords_ru.Coherency_rgb_ru.." убиваете элитного врага." end),-- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_31_rgb_ru

	--[+ Passive 32 - Pacemaker +]--
	create_template("talent_tree_ogr_pas_032_desc_en", {"loc_talent_ogryn_reload_speed_on_multiple_hits_new_desc"}, {"en"}, function(locale, value) return "{reload_speed:%s} Reload Speed on your next Reload when hitting {multi_hit:%s} or more Enemies with a single Attack." end), -- multi_hit: 5, reload_speed: +25%, duration: 5 -- s->seconds -- ..TALENTS_Enh_desc2.ED_OGR_Passive_32_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_032_desc_fr", {"loc_talent_ogryn_reload_speed_on_multiple_hits_new_desc"}, {"fr"}, function(locale, value) return "{reload_speed:%s} Vitesse de rechargement pendant {duration:%s} secondes en touchant {multi_hit:%s} ennemis ou plus avec une seule attaque." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_12_rgb_fr
	--[+ Russian +]-- Задающий ритм -- руоф Водитель ритма
	create_template("talent_tree_ogr_pas_032_desc_ru", {"loc_talent_ogryn_reload_speed_on_multiple_hits_new_desc"}, {"ru"}, function(locale, value) return "{reload_speed:%s} к скорости вашей следующей перезарядки, если вы ударили за раз {multi_hit:%s} или более врагов." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_32_rgb_ru

	--[+ Passive 33 - Unstoppable Momentum +]--
	create_template("talent_tree_ogr_pas_033_desc_en", {"loc_talent_ogryn_ranged_kill_grant_movement_speed_desc"}, {"en"}, function(locale, value) return "{movement_speed:%s} Movement Speed for {duration:%s} seconds on Ranged Kill." end), -- movement_speed: +20%, duration: 2 -- s->seconds -- ..TALENTS_Enh_desc2.ED_OGR_Passive_33_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_033_desc_fr", {"loc_talent_ogryn_ranged_kill_grant_movement_speed_desc"}, {"fr"}, function(locale, value) return "{movement_speed:%s} de vitesse de déplacement pendant {duration:%s} secondes sur une élimination à distance." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_20_rgb_fr
	--[+ Russian +]-- Неудержимый моментум 
	create_template("talent_tree_ogr_pas_033_desc_ru", {"loc_talent_ogryn_ranged_kill_grant_movement_speed_desc"}, {"ru"}, function(locale, value) return "{movement_speed:%s} к скорости движения на {duration:%s} секунды при убийствах из дальнобойного оружия." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_33_rgb_ru

	--[+ Passive 34 - Delight in Destruction +]--
	create_template("talent_tree_ogr_pas_034_desc_en", {"loc_talent_ogryn_damage_reduction_per_bleed_desc"}, {"en"}, function(locale, value) return "{damage_reduction:%s} "..COLORS_KWords.Damage_rgb.." Resistance per "..COLORS_KWords.Bleeding_rgb.." Enemy in Melee range. Stacks {max_stacks:%s} times. Up to "..COLORS_Numbers.pc_32_rgb.."." end), -- damage_reduction: +8%, max_stacks: 6 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_34_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_034_desc_fr", {"loc_talent_ogryn_damage_reduction_per_bleed_desc"}, {"fr"}, function(locale, value) return "{damage_reduction:%s} de résistance aux "..COLORS_KWords_fr.Damage_rgb_fr.." par ennemi qui "..COLORS_KWords_fr.Bleeding_rgb_fr.." à portée de mêlée. Se cumule jusqu'à {max_stacks:%s} fois. Jusqu'à "..COLORS_Numbers.pc_32_rgb.."." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_16_rgb_fr
	--[+ Russian +]-- Упоение в разрушении -- руоф Наслаждение разрушением
	create_template("talent_tree_ogr_pas_034_desc_ru", {"loc_talent_ogryn_damage_reduction_per_bleed_desc"}, {"ru"}, function(locale, value) return "{damage_reduction:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." за каждого врага с зарядами "..COLORS_KWords_ru.Bleed_rgb_ru.." на расстоянии атаки ближнего боя. Суммируется {max_stacks:%s} раза. Вплоть до "..COLORS_Numbers.pc_32_rgb.." сопротивления." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_34_rgb_ru

	--[+ Passive 35 - Dedicated Practice +]--
	-- create_template("talent_tree_ogr_pas_035_desc_en", {"loc_talent_ogryn_wield_speed_increase_desc"}, {"en"}, function(locale, value) return "{wield_speed:%s} Weapon Swap Speed." end), -- stacks: +4 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_35_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_035_desc_fr", {"loc_talent_ogryn_wield_speed_increase_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_35_rgb_fr
	--[+ Russian +]-- Упорные тренировки
	-- create_template("talent_tree_ogr_pas_035_desc_ru", {"loc_talent_ogryn_wield_speed_increase_desc"}, {"ru"}, function(locale, value) return "{wield_speed:%s} к скорости смены оружия." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_35_rgb_ru

	--[+ Passive 36 - Mobile Emplacement +]--
	create_template("talent_tree_ogr_pas_036_desc_en", {"loc_talent_ogryn_bracing_reduces_damage_taken_desc"}, {"en"}, function(locale, value) return "You take {damage_taken_multiplier:%s} reduced "..COLORS_KWords.Damage_rgb.." while bracing a Ranged Weapon." end), -- damage_taken_multiplier:-20.00%. -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_36_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_036_desc_fr", {"loc_talent_ogryn_bracing_reduces_damage_taken_desc"}, {"fr"}, function(locale, value) return "Vous réduisez les "..COLORS_KWords_fr.Damage_rgb_fr.." de {damage_taken_multiplier:%s} en utilisant une arme à distance." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_30_rgb_fr
	--[+ Russian +]-- Мобильная огневая точка -- руоф Передвижной окоп
	create_template("talent_tree_ogr_pas_036_desc_ru", {"loc_talent_ogryn_bracing_reduces_damage_taken_desc"}, {"ru"}, function(locale, value) return "Вы получаете на {damage_taken_multiplier:%s} меньше "..COLORS_KWords_ru.Dmg_a_rgb_ru.." пока целитесь из дальнобойного оружия." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_30_rgb_ru

	--[+ Passive 37 - Implacable +]--
	create_template("talent_tree_ogr_pas_037_desc_en", {"loc_talent_ogryn_windup_reduces_damage_taken_desc"}, {"en"}, function(locale, value) return "{damage_taken_multiplier:%s} "..COLORS_KWords.Damage_rgb.." Reduction while charging Melee Attacks." end), -- damage_taken_multiplier: +15% -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_37_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_037_desc_fr", {"loc_talent_ogryn_windup_reduces_damage_taken_desc"}, {"fr"}, function(locale, value) return "{damage_taken_multiplier:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." pendant le chargement des attaques de mêlée." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_27_rgb_fr
	--[+ Russian +]-- Непоколебимый 
	create_template("talent_tree_ogr_pas_037_desc_ru", {"loc_talent_ogryn_windup_reduces_damage_taken_desc"}, {"ru"}, function(locale, value) return "{damage_taken_multiplier:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." пока вы заряжаете атаки ближнего боя." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_37_rgb_ru

	--[+ Passive 38 - Dominate +]--
	create_template("talent_tree_ogr_pas_038_desc_en", {"loc_talent_ogryn_rending_on_elite_kills_desc"}, {"en"}, function(locale, value) return "{rending_multiplier:%s} "..COLORS_KWords.Rending_rgb.." for {duration:%s} seconds on Elite kill." end), -- rending_multiplier: +10%, duration: 10 -- s->seconds -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_38_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_038_desc_fr", {"loc_talent_ogryn_rending_on_elite_kills_desc"}, {"fr"}, function(locale, value) return "{rending_multiplier:%s} de "..COLORS_KWords_fr.Rending_rgb_fr.." pendant {duration:%s} secondes après une élimination d'élite." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_22_rgb_fr
	--[+ Russian +]-- Доминируй -- руоф Господство
	create_template("talent_tree_ogr_pas_038_desc_ru", {"loc_talent_ogryn_rending_on_elite_kills_desc"}, {"ru"}, function(locale, value) return "{rending_multiplier:%s} к "..COLORS_KWords_ru.Rending_rgb_ru.." на {duration:%s} секунд после убийства элитного врага." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_38_rgb_ru

	--[+ Passive 39 - No Pushover +]--
	create_template("talent_tree_ogr_pas_039_desc_en", {"loc_talent_ogryn_empowered_pushes_desc"}, {"en"}, function(locale, value) return "{push_impact_modifier:%s} "..COLORS_KWords.Stagger_rgb.." for your pushes. Can only trigger once every {cooldown:%s} seconds." end), -- push_impact_modifier: 250%, cooldown: 8 -- s->seconds -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_39_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_039_desc_fr", {"loc_talent_ogryn_empowered_pushes_desc"}, {"fr"}, function(locale, value) return "{push_impact_modifier:%s} de "..COLORS_KWords_fr.Stagger_rgb_fr.." pour vos poussées. Peut se déclencher une fois toutes les {cooldown:%s} secondes." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_28_rgb_fr
	--[+ Russian +]-- Не слабак 
	create_template("talent_tree_ogr_pas_039_desc_ru", {"loc_talent_ogryn_empowered_pushes_desc"}, {"ru"}, function(locale, value) return "{push_impact_modifier:%s} к "..COLORS_KWords_ru.Stagger2_rgb_ru.." врагов, которых вы отталкиваете. Может сработать только раз в {cooldown:%s} секунд." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_39_rgb_ru

	--[+ Passive 40 - Get Stuck In +]--
	create_template("talent_tree_ogr_pas_040_desc_en", {"loc_talent_ogryn_ability_movement_speed_desc"}, {"en"}, function(locale, value) return "Activating your "..COLORS_KWords.Combat_ability_rgb.." grants you and Allies in "..COLORS_KWords.Coherency_rgb.." for {time:%s} seconds:\n{movement_speed:%s} Movement Speed,\n"..COLORS_KWords.Stuns_rgb.." and Suppression Immunity." end), -- movement_speed: +20%, time: 4 -- &->and -- s->seconds -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_40_rgb
	--[+ French +]--!!!
	create_template("talent_tree_ogr_pas_040_desc_fr", {"loc_talent_ogryn_ability_movement_speed_desc"}, {"fr"}, function(locale, value) return "En activant votre "..COLORS_KWords_fr.Combat_ability_rgb_fr..", vous et vos alliés en syntonie gagnez {movement_speed:%s} de vitesse de déplacement et êtes également immunisés contre les "..COLORS_KWords_fr.Stuns_rgb_fr.." et la suppression pendant {time:%s} secondes." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_18_rgb_fr
	--[+ Russian +]-- Очертя голову 
	create_template("talent_tree_ogr_pas_040_desc_ru", {"loc_talent_ogryn_ability_movement_speed_desc"}, {"ru"}, function(locale, value) return "При активации вашей "..COLORS_KWords_ru.Combat_ability_rgb_ru.." вы и союзники в "..COLORS_KWords_ru.Coherency_rgb_ru.." получаете на {time:%s} секунды:\n{movement_speed:%s} к скорости движения и\nиммунитет к "..COLORS_KWords_ru.Stagger2_rgb_ru.." и подавлению." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_40_rgb_ru

	--[+ Passive 41 - Reloaded and Ready +]--
	create_template("talent_tree_ogr_pas_041_desc_en", {"loc_talent_ogryn_ranged_damage_on_reload_desc"}, {"en"}, function(locale, value) return "{damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." for {duration:%s} seconds on Reload." end), -- damage :+15%, duration: 8 -- s->seconds -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_41_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_041_desc_fr", {"loc_talent_ogryn_ranged_damage_on_reload_desc"}, {"fr"}, function(locale, value) return "{damage:%s} de "..COLORS_KWords_fr.Damage_rgb_fr.." à distance pendant {duration:%s} secondes lors du rechargement." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_2_rgb_fr
	--[+ Russian +]-- К бою готов! -- Перезаряжен и готов -- руоф Заряжен и готов
	create_template("talent_tree_ogr_pas_041_desc_ru", {"loc_talent_ogryn_ranged_damage_on_reload_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к дальнобойному "..COLORS_KWords_ru.Damage_rgb_ru.." на {duration:%s} секунд после перезарядки оружия." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_41_rgb_ru

	--[+ Passive 42 - Massacre +]--
	create_template("talent_tree_ogr_pas_042_desc_en", {"loc_talent_ogryn_crit_chance_on_kill_desc"}, {"en"}, function(locale, value) return "{crit_chance:%s} "..COLORS_KWords.Crit_chance_rgb.." for {duration:%s} seconds is granted by killing an enemy. Stacks {max_stacks:%s} times." end), -- crit_chance: +1%, duration: 6, max_stacks: 8 -- rewrite -- s->seconds -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_42_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_042_desc_fr", {"loc_talent_ogryn_crit_chance_on_kill_desc"}, {"fr"}, function(locale, value) return "{crit_chance:%s} de "..COLORS_KWords_fr.Crit_chance_rgb_fr.." pendant {duration:%s} secondes en tuant un ennemi. Se cumul jusqu'à {max_stacks:%s} fois." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_26_rgb_fr
	--[+ Russian +]-- Резня
	create_template("talent_tree_ogr_pas_042_desc_ru", {"loc_talent_ogryn_crit_chance_on_kill_desc"}, {"ru"}, function(locale, value) return "{crit_chance:%s} к "..COLORS_KWords_ru.Crit_chance_rgb_ru.." на {duration:%s} секунд даётся за убийство врага. Суммируется {max_stacks:%s} раз." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_42_rgb_ru

	--[+ Passive 43 - No Stopping Me! +]--
	create_template("talent_tree_ogr_pas_043_desc_en", {"loc_talent_ogryn_windup_is_uninterruptible_unslowed_desc"}, {"en"}, function(locale, value) return "Become Uninterruptible while charging Heavy Melee Attacks. Remove {reduced_move_penalty:%s} of Heavy Melee Attack Movement Speed penalties." end), -- ..TALENTS_Enh_desc2.ED_OGR_Passive_43_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_043_desc_fr", {"loc_talent_ogryn_windup_is_uninterruptible_unslowed_desc"}, {"fr"}, function(locale, value) return "Devenez Inarrêtable pendant le chargement des attaques puissantes de mêlée." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_21_rgb_fr
	--[+ Russian +]-- Меня не остановить! 
	create_template("talent_tree_ogr_pas_043_desc_ru", {"loc_talent_ogryn_windup_is_uninterruptible_unslowed_desc"}, {"ru"}, function(locale, value) return "Вас невозможно прервать, когда вы заряжаете тяжёлые атаки ближнего боя. Убирается {reduced_move_penalty:%s} штрафа к скорости передвижения при тяжёлых атаках ближнего боя." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_43_rgb_ru

	--[+ Passive 44 - Bash and Blast +]--
	create_template("talent_tree_ogr_pas_044_desc_en", {"loc_talent_ogryn_melee_improves_ranged_desc"}, {"en"}, function(locale, value) return "{damage:%s} Ranged "..COLORS_KWords.Damage_rgb.." on Melee Kill. Lasts {duration:%s} seconds. Max Stacks {max_stacks:%s}." end), -- stacks: +4 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_44_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_044_desc_fr", {"loc_talent_ogryn_melee_improves_ranged_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_44_rgb_fr
	--[+ Russian +]-- Удар-выстрел
	create_template("talent_tree_ogr_pas_044_desc_ru", {"loc_talent_ogryn_melee_improves_ranged_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к дистанционному "..COLORS_KWords_ru.Damage_rgb_ru.." при убийстве в ближнем бою. Длится {duration:%s} секунд. Максимальное количество зарядов {max_stacks:%s}." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_44_rgb_ru

	--[+ Passive 45 - Hard Knocks +]--
	create_template("talent_tree_ogr_pas_045_desc_en", {"loc_talent_ogryn_big_bully_heavy_hits_new_desc"}, {"en"}, function(locale, value) return "{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." taken for {duration:%s} seconds by enemies "..COLORS_KWords.Staggered_rgb.." by your Melee Attacks." end), -- damage: +1%, stacks: 25, duration: 10 -- s->seconds -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_45_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_045_desc_fr", {"loc_talent_ogryn_big_bully_heavy_hits_new_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_14_rgb_fr
	--[+ Russian +]-- Тяжёлые удары -- руоф Мощные удары
	create_template("talent_tree_ogr_pas_045_desc_ru", {"loc_talent_ogryn_big_bully_heavy_hits_new_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя на {duration:%s} секунд врагам "..COLORS_KWords_ru.Stuns_rgb_ru.." вашими атаками ближнего боя." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_45_rgb_ru

	--[+ Passive 46 - No Hurting Friends! +]--
	create_template("talent_tree_ogr_pas_046_desc_en", {"loc_talent_ogryn_damage_taken_by_all_increases_strength_tdr_desc"}, {"en"}, function(locale, value) return "{strength:%s} "..COLORS_KWords.Strength_rgb.." on "..COLORS_KWords.Damage_rgb.." Taken by you or Allies in "..COLORS_KWords.Coherency_rgb..". {stacks:%s} Max Stacks. Lasts {duration:%s} seconds. {tdr:%s} "..COLORS_KWords.Toughness_dmg_red_rgb.." on Max Stacks." end), -- stacks: +4 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_46_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_046_desc_fr", {"loc_talent_ogryn_damage_taken_by_all_increases_strength_tdr_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_46_rgb_fr
	--[+ Russian +]-- За друзей порву!
	create_template("talent_tree_ogr_pas_046_desc_ru", {"loc_talent_ogryn_damage_taken_by_all_increases_strength_tdr_desc"}, {"ru"}, function(locale, value) return "{strength:%s} к "..COLORS_KWords_ru.Strength_rgb_ru.." при получении "..COLORS_KWords_ru.Dmg_a_rgb_ru.." вами или союзниками в "..COLORS_KWords_ru.Coherency_rgb_ru..". Максимум {stacks:%s} зарядов. Длится {duration:%s} секунд. {tdr:%s} к "..COLORS_KWords_ru.Toughness_dmg_red_u_rgb_ru.." при максимуме зарядов." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_46_rgb_ru

	--[+ Passive 47 - Won't Give In +]--
	create_template("talent_tree_ogr_pas_047_desc_en", {"loc_talent_ogryn_tanky_with_downed_allies_desc"}, {"en"}, function(locale, value) return "{damage_taken:%s} "..COLORS_KWords.Damage_rgb.." Reduction for each Knocked Down or Incapacitated Ally within {range:%s} meters." end), -- damage_taken: +20%, range: 20 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_47_rgb
	--[+ French +]--
	create_template("talent_tree_ogr_pas_047_desc_fr", {"loc_talent_ogryn_tanky_with_downed_allies_desc"}, {"fr"}, function(locale, value) return "{damage_taken:%s} de réduction de "..COLORS_KWords_fr.Damage_rgb_fr.." pour chaque allié à terre ou incapacité dans un rayon de {range:%s} mètres." end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_47_rgb_fr
	--[+ Russian +]-- Не сдамся 
	create_template("talent_tree_ogr_pas_047_desc_ru", {"loc_talent_ogryn_tanky_with_downed_allies_desc"}, {"ru"}, function(locale, value) return "{damage_taken:%s} к сопротивлению "..COLORS_KWords_ru.Damage_rgb_ru.." за каждого сбитого с ног или выведенного и строя союзника в радиусе {range:%s} метров." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_47_rgb_ru

	--[+ Passive 48 - Spray and Slay +]--
	create_template("talent_tree_ogr_pas_048_desc_en", {"loc_talent_ogryn_ranged_improves_melee_desc"}, {"en"}, function(locale, value) return "{damage:%s} Melee "..COLORS_KWords.Damage_rgb.." and {attack_speed:%s} Melee Attack Speed for {duration:%s} seconds after emptying your Clip." end), -- stacks: +4 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_48_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_048_desc_fr", {"loc_talent_ogryn_ranged_improves_melee_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_48_rgb_fr
	--[+ Russian +]-- Отстрелял - добил -- Отстрелял - порубил -- 
	create_template("talent_tree_ogr_pas_048_desc_ru", {"loc_talent_ogryn_ranged_improves_melee_desc"}, {"ru"}, function(locale, value) return "{damage:%s} к "..COLORS_KWords_ru.Damage_rgb_ru.." ближнего боя и {attack_speed:%s} к скорости атаки ближнего боя в течение {duration:%s} секунд после опустошения вашего магазина." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_48_rgb_ru

	--[+ Passive 49 - Lucky Streak +]--
	create_template("talent_tree_ogr_pas_049_desc_en", {"loc_talent_ogryn_crit_damage_increase_desc"}, {"en"}, function(locale, value) return "{crit_damage:%s} "..COLORS_KWords.Crit_hit_color_rgb.." of both Melee and Ranged attacks." end), -- stacks: +4 -- colors -- ..TALENTS_Enh_desc2.ED_OGR_Passive_49_rgb
	--[+ French +]--!!!
	-- create_template("talent_tree_ogr_pas_049_desc_fr", {"loc_talent_ogryn_crit_damage_increase_desc"}, {"fr"}, function(locale, value) return "" end), -- ..TALENTS_Enh_desc2_fr.ED_OGR_Passive_49_rgb_fr
	--[+ Russian +]-- Месиво 
	create_template("talent_tree_ogr_pas_049_desc_ru", {"loc_talent_ogryn_crit_damage_increase_desc"}, {"ru"}, function(locale, value) return "{crit_damage:%s} к "..COLORS_KWords_ru.Crit_hit_color_rgb_ru.." для атак ближнего и дальнего боя." end), -- ..TALENTS_Enh_desc2_ru.ED_OGR_Passive_49_rgb_ru


-- FOR TESTS ONLY!!!
-- create_template("loc_code_rev", {"loc_talent_ranged_damage_medium_desc"}, {"en"}, function(locale, value) return string.gsub(value, "{", "(") end),
-- create_template("loc_code_rev", {""}, {"fr"}, function(locale, value) return string.gsub(value, "{", "(") end),
-- create_template("loc_code_rev", {""}, {"ru"}, function(locale, value) return string.gsub(value, "{", "(") end),
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
