---@diagnostic disable: undefined-global
-- Thanks to deluxghost, Ovenproof, Fracticality, Wobin and others!

local mod = get_mod("Enhanced_descriptions")
local WTL = get_mod("WhatTheLocalization")


			-- ============ GO TO LINE 50 TO START TRANSLATION! ============ --

--[+ Elements offset +]--
	--[+ Buttons offset +]--
		--[+ Equip button in the inventory +]--
mod:hook_safe(CLASS.InventoryWeaponsView, "on_enter", function (self)
	self._widgets_by_name.equip_button.offset = {-622,20,0} end)
		--[+ Buy button in the Melk menu +]--
mod:hook_safe(CLASS.MarksVendorView, "on_enter", function (self)
	self._widgets_by_name.purchase_button.offset = {-622,20,0} end)
		--[+ Equip button in the Weapon Model selection menu +]--
mod:hook_safe(CLASS.InventoryWeaponMarksView, "on_enter", function (self)
	self._widgets_by_name.equip_button.offset = {-622,20,0} end)
	--[+ Window offset +]--
		--[+ Shifting the stat details window in the weapon inspection menu +]--
mod:hook_safe("ViewElementWeaponInfo", "_create_bar_breakdown_widgets", function (self, bar_data) -- ty Ashe!
	local OFFSET = 200
		self._ui_scenegraph.bar_breakdown_slate.world_position[2] = self._ui_scenegraph.bar_breakdown_slate.world_position[2] - OFFSET
		self._ui_scenegraph.entry.world_position[2] = self._ui_scenegraph.entry.world_position[2] - OFFSET
end)


--[+ Load localization templates from the specified files +]--
	--[+ MENUS +]--
local MENUS_File = mod:get("enable_menus_file") and mod:io_dofile("Enhanced_descriptions/MENUS") or {}
	--[+ CURIOS +]--
local CURIOS_File = mod:get("enable_curious_file") and mod:io_dofile("Enhanced_descriptions/CURIOS_Blessings_Perks") or {}
	--[+ WEAPONS +]--
local WEAPONS_File = mod:get("enable_weapons_file") and mod:io_dofile("Enhanced_descriptions/WEAPONS_Blessings_Perks") or {}
	--[+ TALENTS +]--
local TALENTS_File = mod:get("enable_talents_file") and mod:io_dofile("Enhanced_descriptions/TALENTS") or {}
	--[+ PENANCES +]--
local PENANCES_File = mod:get("enable_penances_file") and mod:io_dofile("Enhanced_descriptions/PENANCES") or {}
	--[+ NAMES +]--
local NAMES_File = mod:get("enable_names_file") and mod:io_dofile("Enhanced_descriptions/NAMES_Enemies_Weapons") or {}
	--[+ NAMES Talents and Blessings +]--
local NAMES_Talents_Blessings_File = mod:get("enable_names_tal_bless_file") and mod:io_dofile("Enhanced_descriptions/NAMES_Talents_Blessings") or {}



			-- ============ DO NOT DO ANYTHING ABOVE! ============ --

-- TRANSLATOR: Duplicate and rename lines to enable Enhanced Descriptions for your language

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
	-- TALENTS_Enh_desc_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/TALENTS_Enh_desc_tw")
	--[+ Simplified Chinese +]--
	-- TALENTS_Enh_desc_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/TALENTS_Enh_desc_zh_cn")
else
	TALENTS_Enh_desc = mod:io_dofile("Enhanced_descriptions/Loc_EN/NULL/TALENTS_Enh_desc_null")
	--[+ French +]--
	TALENTS_Enh_desc_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/NULL/TALENTS_Enh_desc_fr_null")
	--[+ Russian +]--
	TALENTS_Enh_desc_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/NULL/TALENTS_Enh_desc_ru_null")
	--[+ Traditional Chinese +]--
	-- TALENTS_Enh_desc_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/NULL/TALENTS_Enh_desc_tw_null")
	--[+ Simplified Chinese +]--
	-- TALENTS_Enh_desc_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/NULL/TALENTS_Enh_desc_zh_cn_null")
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
	-- TALENTS_Enh_desc2_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/TALENTS_Enh_desc2_tw")
	--[+ Simplified Chinese +]--
	-- TALENTS_Enh_desc2_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/TALENTS_Enh_desc2_zh_cn")
else
	TALENTS_Enh_desc2 = mod:io_dofile("Enhanced_descriptions/Loc_EN/NULL/TALENTS_Enh_desc2_null")
	--[+ French +]--
	TALENTS_Enh_desc2_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/NULL/TALENTS_Enh_desc2_fr_null")
	--[+ Russian +]--
	TALENTS_Enh_desc2_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/NULL/TALENTS_Enh_desc2_ru_null")
	--[+ Traditional Chinese +]--
	-- TALENTS_Enh_desc2_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/NULL/TALENTS_Enh_desc2_tw_null")
	--[+ Simplified Chinese +]--
	-- TALENTS_Enh_desc2_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/NULL/TALENTS_Enh_desc2_zh_cn_null")
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
	-- TALENTS_Enh_desc_nodes_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/TALENTS_Enh_desc_nodes_tw")
	--[+ Simplified Chinese +]--
	-- TALENTS_Enh_desc_nodes_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/TALENTS_Enh_desc_nodes_zh_cn")
else
	TALENTS_Enh_desc_nodes = mod:io_dofile("Enhanced_descriptions/Loc_EN/NULL/TALENTS_Enh_desc_nodes_null")
	--[+ French +]--
	TALENTS_Enh_desc_nodes_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/NULL/TALENTS_Enh_desc_nodes_fr_null")
	--[+ Russian +]--
	TALENTS_Enh_desc_nodes_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/NULL/TALENTS_Enh_desc_nodes_ru_null")
	--[+ Traditional Chinese +]--
	-- TALENTS_Enh_desc_nodes_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/NULL/TALENTS_Enh_desc_nodes_tw_null")
	--[+ Simplified Chinese +]--
	-- TALENTS_Enh_desc_nodes_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/NULL/TALENTS_Enh_desc_nodes_zh_cn_null")
end

--[+ Toggle ENHANCED DESCRIPTIONS - Penances +]--
local enhanced_descriptions_penances_enabled = mod:get("enhanced_descriptions_penances_enabled")
if enhanced_descriptions_penances_enabled then
	TALENTS_Enh_desc_penances = mod:io_dofile("Enhanced_descriptions/Loc_EN/TALENTS_Enh_desc_penances")
--[+ Translations +]-- The line below is for the Extended Penance Descriptions and after "else" "null" files with lines that "hide" Extended Descriptions.
	--[+ French +]--
	-- TALENTS_Enh_desc_penances_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/TALENTS_Enh_desc_penances_fr")
	--[+ Russian +]--
	TALENTS_Enh_desc_penances_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/TALENTS_Enh_desc_penances_ru")
	--[+ Traditional Chinese +]--
	-- TALENTS_Enh_desc_penances_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/TALENTS_Enh_desc_penances_tw")
	--[+ Simplified Chinese +]--
	-- TALENTS_Enh_desc_penances_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/TALENTS_Enh_desc_penances_zh_cn")
else
	TALENTS_Enh_desc_penances = mod:io_dofile("Enhanced_descriptions/Loc_EN/NULL/TALENTS_Enh_desc_penances_null")
	--[+ French +]--
	-- TALENTS_Enh_desc_penances_fr = mod:io_dofile("Enhanced_descriptions/Loc_FR/NULL/TALENTS_Enh_desc_penances_fr_null")
	--[+ Russian +]--
	TALENTS_Enh_desc_penances_ru = mod:io_dofile("Enhanced_descriptions/Loc_RU/NULL/TALENTS_Enh_desc_penances_ru_null")
	--[+ Traditional Chinese +]--
	-- TALENTS_Enh_desc_penances_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/NULL/TALENTS_Enh_desc_penances_tw_null")
	--[+ Simplified Chinese +]--
	-- TALENTS_Enh_desc_penances_zh_cn = mod:io_dofile("Enhanced_descriptions/Loc_ZH_CN/NULL/TALENTS_Enh_desc_penances_zh_cn_null")
end



			-- ============ DO NOT DO ANYTHING BELOW! ============ --

--[+ Custom unpack function +]--
	local function custom_unpack(...)
		local result = {}
		for _, t in ipairs({...}) do
			for i = 1, #t do
				table.insert(result, t[i])  -- Add each entry to the overall result
			end
		end
---@diagnostic disable-next-line: deprecated
		return unpack(result)  -- Return all records
	end

-- FOR TESTS ONLY!!!
--[+ Function to create a localization template +]--
local function create_template(id, loc_keys, locales, handle_func)
	return { id = id, loc_keys = loc_keys, locales = locales, handle_func = handle_func }
end
-- FOR TESTS ONLY!!!

mod.localization_templates = {
	--[+ Add templates loaded from the files... +]--
	custom_unpack(MENUS_File, CURIOS_File, TALENTS_File, WEAPONS_File, PENANCES_File, NAMES_File, NAMES_Talents_Blessings_File),
	-- custom_unpack(MENUS_File, CURIOS_File, TALENTS_File, WEAPONS_File, NAMES_File, NAMES_Talents_Blessings_File),

-- FOR TESTS ONLY!!!
-- create_template("weap_testum00", {"loc_trait_bespoke_block_has_chance_to_stun_with_cd_desc"}, {"en"}, function(locale, value) return string.gsub(value, "{", "(") end),
-- FOR TESTS ONLY!!!
}

--[+ ++DEBUG++ +]--
-- mod.debugging = true
-- mod:command("debug_scenegraph", "", function()
    -- mod.debugging = not mod.debugging
-- end)
-- local UIRenderer = mod:original_require("scripts/managers/ui/ui_renderer")
-- mod:hook_safe(UIRenderer, "begin_pass", function(self, ui_scenegraph, input_service, dt, render_settings)
    -- if mod.debugging then
        -- UIRenderer.debug_render_scenegraph(self, ui_scenegraph)
    -- end
-- end)

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
