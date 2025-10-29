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

local ppp___ppp = "————————————————————"
local stacks_add_w_health_buff_cur = "•与珍品提供的生命值加成加算。"
local stacks_add_w_sm_mel_dmg_nodes = "•与其他近战伤害节点和伤害效果加算。"
local stacks_mult_power_lvl_weap_bless = "•与武器祝福提供的强度效果乘算。"
local also_appl_2_health_wl_downed = "•同时影响倒地时的生命值。"
local stacks_add_w_sm_tghnss_nodes = "•与其他韧性节点加算。"
local cur_max_tghnss_mult_by_tghnss_pc = "•最大韧性与珍品提供的韧性加成乘算。"

--[+ ++ENHANCED DESCRIPTIONS++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true)

--[+ +NODES+ +]--
	--[+ Critical Chance Boost - 暴击几率强化 +]--
	local ED_CritChncBst_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		"•适用于所有可暴击的攻击。",
		"•与其他来源的暴击几率加算。",
	}, "\n"), enhdesc_col) -- Psyker, Veteran

	--[+ Health Boost Low - 生命强化 低 +]--
	local ED_HeathBst_L_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		also_appl_2_health_wl_downed,
		stacks_add_w_health_buff_cur,
		-- "-- OGRYN: For example, one +21% Health Curio with a +5% Health Perk and this 5% Health node increase Ogryn's Max Health of 300 by 300x(0.21+0.05+0.05)=93 to 393 Health.",
		-- "-- VETERAN: For example, one +21% Health Curio with a +5% Health Perk and this 5% Health node increase Veteran's Max Health of 150 by 150x(0.21+0.05+0.05)=46.5 to 196.5 Health (HUD rounds up: 197).",
	}, "\n"), enhdesc_col) -- Veteran,

	--[+ Health Boost Medium - 生命强化 中 +]--
	local ED_HeathBst_M_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		also_appl_2_health_wl_downed,
		stacks_add_w_health_buff_cur,
		-- "-- PSYKER: For example, one +21% Health Curio with a +5% Health Perk and this 10% Health node increase Psyker's Max Health of 150 by 150x(0.21+0.05+0.1)=54 to 204 Health.",
		-- "-- OGRYN: For example, one +21% Health Curio with a +5% Health Perk and this 10% Health node increase Ogryn's Max Health of 300 by 300x(0.21+0.05+0.1)=108 to 408 Health.",
		-- "-- ZEALOT: For example, one +21% Health Curio with a +5% Health Perk and this 10% Health node increase Zealot's Max Health of 200 by 200x(0.21+0.05+0.1)=72 to 272 Health.",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Zealot

	--[+ Heavy Melee Damage Boost Low + Medium +]--
	local ED_HMeleeDmgBst_LM_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_mel_dmg_nodes,
		stacks_mult_power_lvl_weap_bless,
		"- This also applies to melee special actions of Ripper Guns, Grenadier Gauntlet (melee part), Rumbler, Heavy Stubbers, and Kickback.",
	}, "\n"), enhdesc_col) -- Ogryn

	--[+ Inspiring Presence - 振奋人心 +]--
	local ED_InspiringP_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		"•与欧格林天赋「紧密相依！」\n  和珍品提供的韧性回复速度加算。",
		"•提升连携韧性回复基础值。",
		-- ppp___ppp,
		-- "连携 	| 每秒韧性回复	|",
		-- " 0	| 0.00 -> 0.00	|",
		-- " 1	| 3.75 -> 4.13	|",
		-- " 2	| 5.63 -> 6.19	|",
		-- " 3	| 7.50 -> 8.25	|",
		-- ppp___ppp,
	}, "\n"), enhdesc_col) -- Veteran

	--[+ Melee Damage Boost Low + Medium - 近战伤害强化 低 + 中 +]--
	local ED_MeleeDmgBst_L_M_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_mel_dmg_nodes,
		stacks_mult_power_lvl_weap_bless,
		"•同时适用于远程武器特殊攻击。",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran, Zealot

	--[+ Movement Speed Boost - 移动速度强化 +]--
	local ED_MoveSpdBst_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		"•灵能者：与天赋「颠覆命运」「勇毅」「亚空间之速」及武器祝福提供的相关效果加算。",
		"•狂信徒：与其他移动速度节点和天赋「隐匿罩衣」「怒火速临」及武器祝福提供的相关效果加算。",
		"-与「迅速确定」提供的疾跑速度乘算。",
		"•老兵：与天赋「渗透」「一个都不能少」「近身击杀」及武器祝福提供的相关效果加算。",
	}, "\n"), enhdesc_col) -- Psyker, Veteran, Zealot

	--[+ Peril Resistance - 危机值抗性 +]--
	local ED_PerilRes_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		"•与其他危机值抗性节点和天赋「骨裂之声」「平静爆发」「灵能决意」「内心平静」「动能共振」「现实锚点」及作战兴奋剂提供的相关效果乘算。",
	}, "\n"), enhdesc_col) -- Psyker,

	--[+ Ranged Damage Boost - 远程伤害强化 +]--
	local ED_RangDmgBst_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		"•与其他远程伤害节点和伤害效果加算。",
		stacks_mult_power_lvl_weap_bless,
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran

	--[+ Reload Boost - 装弹强化 +]--
	local ED_ReloadBst_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		"•欧格林：与天赋「绝不停手」「标兵」「平射弹幕」和武器祝福及敏捷兴奋剂提供的相关效果加算。",
		"•老兵：与天赋「短暂火力」「神射手的专注」「战术装弹」「齐射高手」和武器祝福及敏捷兴奋剂提供的相关效果加算。",
		"•同时提升战斗霰弹枪特殊动作的装弹速度。",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran

	--[+ Rending Boost - 撕裂强化 +]--
	local ED_RendingBst_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		"•适用于所有装甲类型的敌人造成攻击的伤害，包括爆炸伤害和流血、燃烧等持续伤害效果。",
		"•仅影响欧格林自身的伤害。",
		"•与其他撕裂效果和对敌人施加的脆弱效果加算。",
	}, "\n"), enhdesc_col) -- Ogryn,

	--[+ Stamina Boost - 体力强化 +]--
	local ED_StaminaBst_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		--"- Stacks additively with Stamina values from Curios, Weapon Perks and Weapon Stamina templates.",
		--"- Each segment of the Stamina bar in the player HUD represents 1 Stamina.",
		"•与珍品、武器专长和武器的基础数值加算。",
		"•体力条每一格代表 1 体力。",
	}, "\n"), enhdesc_col) -- Veteran, Zealot

	--[+ Suppression Boost - 压制强化 +]--
	local ED_SuppressionBst_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		--"- OGRYN: Stacks additively with Suppression buff from Weapon Blessing \"Ceaseless Barrage\".",
		--"- ZEALOT: Stacks additively with Suppression buff from Weapon Blessing \"Powderburn\".",
		--"- VETERAN: Stacks additively with Suppression buffs from \"Competitive Urge\", \"Keep Their Heads Down!\", and Weapon Blessing \"Powderburn\".",
		"•欧格林：与武器祝福「无尽弹幕」提供的压制效果加算。",
		"•狂信徒：与武器祝福「火药燃烧」提供的压制效果加算。",
		"•老兵：与天赋「竞争冲动」「轰趴他们！」和武器祝福「火药燃烧」加算。",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran, Zealot

	--[+ Stamina Regeneration Boost - 体力回复强化 +]--
	local ED_StamRegenBst_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		"•基础体力回复延迟为 1 秒。",
		"•这是体力开始回复需要的时间。",
		"•与另一体力回复强化节点加算。",
	}, "\n"), enhdesc_col) -- Veteran

	--[+ Toughness Boost Low - 韧性强化 低 +]--
	local ED_TghnsBst_L_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_tghnss_nodes,
		cur_max_tghnss_mult_by_tghnss_pc,
		--"-- PSYKER: For example, at 105 Max Toughness (Psyker's base 60 and three +15 Toughness node) with one +17% Toughness Curio with a +5% Toughness Perk, Psyker's Max Toughness of 105 is increased by 105x(0.17+0.05)=23.1 to 128.1 Toughness (HUD rounds up: 129).",
		--"-- ZEALOT: For example, at 85 Max Toughness (Zealot's base 70 and one +15 Toughness node) with one +17% Toughness Curio with a +5% Toughness Perk, Zealot's Max Toughness of 85 is increased by 85x(0.17+0.05)=18.7 to 103.7 Toughness (HUD rounds up: 104).",
		--"- A character's Maximum Toughness is the Base value that is used in Toughness replenished calculations of most Talents and Blessings.",
		"•角色最大韧性是与大多数天赋和祝福乘算的基础值。",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran, Zealot

	--[+ Toughness Boost Medium - 韧性强化 中 +]--
	local ED_TghnsBst_M_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_tghnss_nodes,
		cur_max_tghnss_mult_by_tghnss_pc,
		--"-- OGRYN: For example, at 75 Max Toughness (Ogryn's base 50 and one +25 Toughness node) with one +17% Toughness Curio with a +5% Toughness Perk, Ogryn's Max Toughness of 75 is increased by 75x(0.17+0.05)=15.75 to 90.75 Toughness (HUD rounds up: 91).",
		--"-- VETERAN: For example, at 150 Max Toughness (Veteran's base 100 and two +25 Toughness nodes) with one +15% Toughness Curio with a +4% Toughness Perk, Veteran's Max Toughness of 150 is increased by 150x(0.15+0.04)=28.5 to 178.5 Toughness (HUD rounds up: 179).",
		"•角色最大韧性是与大多数天赋和祝福乘算的基础值。",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran

	--[+ Toughness Damage Reduction Low + Medium - 韧性伤害减免 低 + 中 +]--
	local ED_TghnsDmgRed_LM_rgb_zh_cn = iu_actit(table.concat({
		"",
		ppp___ppp,
		--"- Stacks additively with other small Toughness Damage Reduction nodes.",
		--"- Their sum Stacks multiplicatively with other Damage Reduction buffs.",
		--"-- ZEALOT: Stacks additively with \"I Shall Not Fall\".",
		"•与其他韧性伤害减免节点加算。",
		"•与其他韧性伤害减免效果乘算。",
		"•狂信徒：与天赋「永不倒下」加算。",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran, Zealot

-- In the list below, you also need to add a new entry or change an old one.
return {
	ED_TghnsBst_L_rgb_zh_cn = ED_TghnsBst_L_rgb_zh_cn,
	ED_TghnsBst_M_rgb_zh_cn = ED_TghnsBst_M_rgb_zh_cn,
	ED_TghnsDmgRed_LM_rgb_zh_cn = ED_TghnsDmgRed_LM_rgb_zh_cn,
	ED_PerilRes_rgb_zh_cn = ED_PerilRes_rgb_zh_cn,
	ED_InspiringP_rgb_zh_cn = ED_InspiringP_rgb_zh_cn,
	ED_RangDmgBst_rgb_zh_cn = ED_RangDmgBst_rgb_zh_cn,
	ED_HeathBst_L_rgb_zh_cn = ED_HeathBst_L_rgb_zh_cn,
	ED_HeathBst_M_rgb_zh_cn = ED_HeathBst_M_rgb_zh_cn,
	ED_CritChncBst_rgb_zh_cn = ED_CritChncBst_rgb_zh_cn,
	ED_MoveSpdBst_rgb_zh_cn = ED_MoveSpdBst_rgb_zh_cn,
	ED_MeleeDmgBst_L_M_rgb_zh_cn = ED_MeleeDmgBst_L_M_rgb_zh_cn,
	ED_StaminaBst_rgb_zh_cn = ED_StaminaBst_rgb_zh_cn,
	ED_SuppressionBst_rgb_zh_cn = ED_SuppressionBst_rgb_zh_cn,
	ED_ReloadBst_rgb_zh_cn = ED_ReloadBst_rgb_zh_cn,
	ED_StamRegenBst_rgb_zh_cn = ED_StamRegenBst_rgb_zh_cn,
	ED_RendingBst_rgb_zh_cn = ED_RendingBst_rgb_zh_cn,
	ED_HMeleeDmgBst_LM_rgb_zh_cn = ED_HMeleeDmgBst_LM_rgb_zh_cn,
}