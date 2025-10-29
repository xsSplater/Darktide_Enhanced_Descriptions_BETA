---@diagnostic disable: undefined-global

-- Check the length of the text in the game and adjust it so that the descriptions do not extend the card beyond the screen.
-- If you can't shorten it, you can simply hide the least useful line by adding "--" before that line.
-- Extended descriptions have a lower priority than the main description, imho.

-- If you added/changed something, then you need to duplicate/change the same entry in the list below.
-- For example, you change "ED_CritChncBst_rgb" to "ED_CritChncBst_rgb_urlang", then at the bottom you need to find (CTRL+F) the "ED_CritChncBst_rgb" entries and also rename them from "ED_CritChncBst_rgb = ED_CritChncBst_rgb," to "ED_CritChncBst_rgb_urlang = ED_CritChncBst_rgb_urlang,".
-- If you add a new entry (ex. MyEntry_rgb), just duplicate it in the list below (MyEntry_rgb = MyEntry_rgb,).

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

local ppp___ppp = "+++-------------------------------------------------+++"
local stacks_add_w_health_buff_cur = "- Stacks additively with Health buffs from Curios."
local stacks_add_w_sm_mel_dmg_nodes = "- Stacks additively with other small Melee Damage nodes and other related Damage buffs."
local stacks_mult_power_lvl_weap_bless = "- Stacks multiplicatively with Power level buffs from Weapon Blessings."
local also_appl_2_health_wl_downed = "- Also applies to Health while downed."
local stacks_add_w_sm_tghnss_nodes = "- Stacks additively with other small Toughness nodes."
local cur_max_tghnss_mult_by_tghnss_pc = "- Current max Toughness is multiplied by the Toughness percentage buffs from Curios."

--[+ ++ENHANCED DESCRIPTIONS++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true)

--[+ +NODES+ +]--
	--[+ Critical Chance Boost +]--
	local ED_CritChncBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Works for all attacks that can Crit.",
		"- Stacks additively with other sources of Crit Chance.",
	}, "\n"), enhdesc_col) -- Psyker, Veteran

	--[+ Health Boost Low +]--
	local ED_HeathBst_L_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		also_appl_2_health_wl_downed,
		stacks_add_w_health_buff_cur,
		"-- OGRYN: For example, one +21% Health Curio with a +5% Health Perk and this 5% Health node increase Ogryn's Max Health of 300 by 300x(0.21+0.05+0.05)=93 to 393 Health.",
		"-- VETERAN: For example, one +21% Health Curio with a +5% Health Perk and this 5% Health node increase Veteran's Max Health of 150 by 150x(0.21+0.05+0.05)=46.5 to 196.5 Health (HUD rounds up: 197).",
	}, "\n"), enhdesc_col) -- Veteran,

	--[+ Health Boost Medium +]--
	local ED_HeathBst_M_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		also_appl_2_health_wl_downed,
		stacks_add_w_health_buff_cur,
		"-- PSYKER: For example, one +21% Health Curio with a +5% Health Perk and this 10% Health node increase Psyker's Max Health of 150 by 150x(0.21+0.05+0.1)=54 to 204 Health.",
		"-- OGRYN: For example, one +21% Health Curio with a +5% Health Perk and this 10% Health node increase Ogryn's Max Health of 300 by 300x(0.21+0.05+0.1)=108 to 408 Health.",
		"-- ZEALOT: For example, one +21% Health Curio with a +5% Health Perk and this 10% Health node increase Zealot's Max Health of 200 by 200x(0.21+0.05+0.1)=72 to 272 Health.",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Zealot

	--[+ Heavy Melee Damage Boost Low + Medium +]--
	local ED_HMeleeDmgBst_LM_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_mel_dmg_nodes,
		stacks_mult_power_lvl_weap_bless,
		"- This also applies to melee special actions of Ripper Guns, Grenadier Gauntlet (melee part), Rumbler, Heavy Stubbers, and Kickback.",
	}, "\n"), enhdesc_col) -- Ogryn

	--[+ Inspiring Presence +]--
	local ED_InspiringP_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Stacks additively with Ogryn's Aura \"Stay Close!\" and Toughness Regeneration Speed from Curios.",
		"- Increases the base amount of Coherency Toughness Regenerated (CTR) per Allies per second:",
		"_______________________________",
		"Allies: | CTR:                 | After 5 seconds:",
		"        0 | 0.00 -> 0.00    | 0.00",
		"         1 | 3.75 -> 4.13      | 20.63 (HUD: 21)",
		"        2 | 5.63 -> 6.19      | 30.94 (HUD: 31)",
		"        3 | 7.50 -> 8.25     | 41.25 (HUD: 42)",
		"_______________________________",
	}, "\n"), enhdesc_col) -- Veteran

	--[+ Melee Damage Boost Low + Medium +]--
	local ED_MeleeDmgBst_L_M_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_mel_dmg_nodes,
		stacks_mult_power_lvl_weap_bless,
		"- Applies to melee special actions of ranged weapons.",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran, Zealot

	--[+ Movement Speed Boost +]--
	local ED_MoveSpdBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- PSYKER: Stacks additively with related buffs from: \"Disrupt Destiny\", \"Mettle\", \"Warp Speed\" and weapon Blessings like \"Rev it Up\".",
		"- ZEALOT: Stacks additively with other small Movement Speed nodes and Movement Speed buffs from \"Shroudfield\", \"Thy Wrath be Swift\", and Weapon Blessings like \"Rev it Up\".",
		"-- Stacks multiplicatively with Sprinting Speed buff from \"Swift Certainty\".",
		"- VETERAN: Stacks additively with Movement Speed buffs from \"Infiltrate\", \"Leave No One Behind\", aura \"Close and Kill\", and Weapon Blessings like \"Rev it Up\".",
	}, "\n"), enhdesc_col) -- Psyker, Veteran, Zealot

	--[+ Peril Resistance +]--
	local ED_PerilRes_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Stacks multiplicatively with other small nodes and related Peril cost reduction buffs from \"By Crack of Bone\", \"Becalming Eruption\", \"Empyric Resolve\", \"Inner Tranquility\", \"Kinetic Resonance\", \"Reality Anchor\", and Combat Stimm.",
	}, "\n"), enhdesc_col) -- Psyker,

	--[+ Ranged Damage Boost +]--
	local ED_RangDmgBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Stacks additively with other small Ranged Damage nodes and other related Damage buffs.",
		stacks_mult_power_lvl_weap_bless,
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran

	--[+ Reload Boost +]--
	local ED_ReloadBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- OGRYN: Stacks additively with Reload speed buffs from \"Pacemaker\", \"Point-Blank Barrage\", Weapon Perks and Blessings, and Celerity Stimm.",
		"- VETERAN: Stacks additively with Reload speed buffs from \"Fleeting Fire\", \"Marksman's Focus\", \"Tactical Reload\", \"Volley Adept\", Weapon Perks and Blessings, and Celerity Stimm.",
		"-- This also increases the speed of the loading special action of Combat Shotguns.",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran

	--[+ Rending Boost +]--
	local ED_RendingBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Applies to all Attacks boosting Damage against armor types: Carapace, Flak, Maniac, Unyielding (including Damage of explosions and DoTs like Bleed and Burn applied by Ogryn).",
		"- Only affects Ogryn's own Damage.",
		"- Stacks additively with other Rending buffs and with Brittleness debuffs that are applied to enemies.",
	}, "\n"), enhdesc_col) -- Ogryn,

	--[+ Stamina Boost +]--
	local ED_StaminaBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Stacks additively with Stamina values from Curios, Weapon Perks and Weapon Stamina templates.",
		"- Each segment of the Stamina bar in the player HUD represents 1 Stamina.",
	}, "\n"), enhdesc_col) -- Veteran, Zealot

	--[+ Suppression Boost +]--
	local ED_SuppressionBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- OGRYN: Stacks additively with Suppression buff from Weapon Blessing \"Ceaseless Barrage\".",
		"- ZEALOT: Stacks additively with Suppression buff from Weapon Blessing \"Powderburn\".",
		"- VETERAN: Stacks additively with Suppression buffs from \"Competitive Urge\", \"Keep Their Heads Down!\", and Weapon Blessing \"Powderburn\".",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran, Zealot

	--[+ Stamina Regeneration Boost +]--
	local ED_StamRegenBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Reduces base Stamina Regeneration Delay from 1 to 0.75 seconds.",
		"- This time is the Delay before Stamina starts Regenerating after having spent Stamina.",
		"- Stacks additively with the other small Stamina Regeneration Delay reduction node.",
	}, "\n"), enhdesc_col) -- Veteran

	--[+ Toughness Boost Low +]--
	local ED_TghnsBst_L_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_tghnss_nodes,
		cur_max_tghnss_mult_by_tghnss_pc,
		"-- PSYKER: For example, at 105 Max Toughness (Psyker's base 60 and three +15 Toughness node) with one +17% Toughness Curio with a +5% Toughness Perk, Psyker's Max Toughness of 105 is increased by 105x(0.17+0.05)=23.1 to 128.1 Toughness (HUD rounds up: 129).",
		"-- ZEALOT: For example, at 85 Max Toughness (Zealot's base 70 and one +15 Toughness node) with one +17% Toughness Curio with a +5% Toughness Perk, Zealot's Max Toughness of 85 is increased by 85x(0.17+0.05)=18.7 to 103.7 Toughness (HUD rounds up: 104).",
		"- A character's Maximum Toughness is the Base value that is used in Toughness replenished calculations of most Talents and Blessings.",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran, Zealot

	--[+ Toughness Boost Medium +]--
	local ED_TghnsBst_M_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_tghnss_nodes,
		cur_max_tghnss_mult_by_tghnss_pc,
		"-- OGRYN: For example, at 75 Max Toughness (Ogryn's base 50 and one +25 Toughness node) with one +17% Toughness Curio with a +5% Toughness Perk, Ogryn's Max Toughness of 75 is increased by 75x(0.17+0.05)=15.75 to 90.75 Toughness (HUD rounds up: 91).",
		"-- VETERAN: For example, at 150 Max Toughness (Veteran's base 100 and two +25 Toughness nodes) with one +15% Toughness Curio with a +4% Toughness Perk, Veteran's Max Toughness of 150 is increased by 150x(0.15+0.04)=28.5 to 178.5 Toughness (HUD rounds up: 179).",
		"- A character's Maximum Toughness is the Base value that is used in Toughness replenished calculations of most Talents and Blessings.",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran

	--[+ Toughness Damage Reduction Low + Medium +]--
	local ED_TghnsDmgRed_LM_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- Stacks additively with other small Toughness Damage Reduction nodes.",
		"- Their sum Stacks multiplicatively with other Damage Reduction buffs.",
		"-- ZEALOT: Stacks additively with \"I Shall Not Fall\".",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran, Zealot

-- In the list below, you also need to add a new entry or change an old one.
return {
	ED_TghnsBst_L_rgb = ED_TghnsBst_L_rgb,
	ED_TghnsBst_M_rgb = ED_TghnsBst_M_rgb,
	ED_TghnsDmgRed_LM_rgb = ED_TghnsDmgRed_LM_rgb,
	ED_PerilRes_rgb = ED_PerilRes_rgb,
	ED_InspiringP_rgb = ED_InspiringP_rgb,
	ED_RangDmgBst_rgb = ED_RangDmgBst_rgb,
	ED_HeathBst_L_rgb = ED_HeathBst_L_rgb,
	ED_HeathBst_M_rgb = ED_HeathBst_M_rgb,
	ED_CritChncBst_rgb = ED_CritChncBst_rgb,
	ED_MoveSpdBst_rgb = ED_MoveSpdBst_rgb,
	ED_MeleeDmgBst_L_M_rgb = ED_MeleeDmgBst_L_M_rgb,
	ED_StaminaBst_rgb = ED_StaminaBst_rgb,
	ED_SuppressionBst_rgb = ED_SuppressionBst_rgb,
	ED_ReloadBst_rgb = ED_ReloadBst_rgb,
	ED_StamRegenBst_rgb = ED_StamRegenBst_rgb,
	ED_RendingBst_rgb = ED_RendingBst_rgb,
	ED_HMeleeDmgBst_LM_rgb = ED_HMeleeDmgBst_LM_rgb,
}