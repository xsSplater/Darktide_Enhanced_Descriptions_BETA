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
local stacks_add_w_health_buff_cur = "- 與珍品的生命力增益疊加。"
local stacks_add_w_sm_mel_dmg_nodes = "- 會與其他小型近戰傷害節點以及其他相關傷害增益效果相加疊加。"
local stacks_mult_power_lvl_weap_bless = "- 會與武器祝福所提供的力量等級加成做乘法疊加。"
local also_appl_2_health_wl_downed = "- 倒地時也會套用在生命值上。"
local stacks_add_w_sm_tghnss_nodes = "- 會與其他小型韌性節點相加疊加。"
local cur_max_tghnss_mult_by_tghnss_pc = "- 目前的最大韌性會受到珍品提供的韌性百分比加成做乘法疊加。"

--[+ ++ENHANCED DESCRIPTIONS++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true)

--[+ +NODES+ +]--
	--[+ Critical Chance Boost +]--
	local ED_CritChncBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- 適用於所有能夠爆擊的攻擊。",
		"- 與其他爆擊機率的來源相加疊加。",
	}, "\n"), enhdesc_col) -- Psyker, Veteran

	--[+ Health Boost Low +]--
	local ED_HeathBst_L_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		also_appl_2_health_wl_downed,
		stacks_add_w_health_buff_cur,
		"-- 歐格林 +21% 生命值的珍品，加上一個 +5% 生命值的天賦，再加上這個 5% 的生命值節點，奧格林的最大生命值 300 會由 300x(0.21+0.05+0.05)=93 提升至 393。",
		"-- 老兵：舉例來說，若有一件 +21% 生命值的珍品，加上一個 +5% 生命值的天賦，再加上這個 5% 的生命值節點，老兵的最大生命值 150 會由 150x(0.21+0.05+0.05)=46.5 提升至 196.5（在介面上會四捨五入為 197）。",
	}, "\n"), enhdesc_col) -- Veteran,

	--[+ Health Boost Medium +]--
	local ED_HeathBst_M_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		also_appl_2_health_wl_downed,
		stacks_add_w_health_buff_cur,
		"-- 靈能者：舉例來說，若有一件 +21% 生命值的珍品，加上一個 +5% 生命值的天賦，再加上這個 10% 的生命值節點，靈能者的最大生命值 150 會由 150x(0.21+0.05+0.1)=54 提升至 204。",
		"-- 歐格林：舉例來說，若有一件 +21% 生命值的珍品，加上一個 +5% 生命值的天賦，再加上這個 10% 的生命值節點，奧格林的最大生命值 300 會由 300x(0.21+0.05+0.1)=108 提升至 408。",
		"-- 狂信徒：舉例來說，若有一件 +21% 生命值的珍品，加上一個 +5% 生命值的天賦，再加上這個 10% 的生命值節點，狂信徒的最大生命值 200 會由 200x(0.21+0.05+0.1)=72 提升至 272。",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Zealot

	--[+ Heavy Melee Damage Boost Low + Medium +]--
	local ED_HMeleeDmgBst_LM_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_mel_dmg_nodes,
		stacks_mult_power_lvl_weap_bless,
	}, "\n"), enhdesc_col) -- Ogryn

	--[+ Inspiring Presence +]--
	local ED_InspiringP_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- 與歐格林的光環「跟緊我!」以及珍品提供的韌性回復速度相加疊加。",
		"- 提升同伴每秒基礎的相互關係韌性回復（CTR）量：",
		"_______________________________",
		"同伴: | CTR:                 | 5 秒後：",
		"       0 | 0.00 -> 0.00    | 0.00",
		"        1 | 3.75 -> 4.13      | 20.63 (HUD: 21)",
		"       2 | 5.63 -> 6.19      | 30.94 (HUD: 31)",
		"       3 | 7.50 -> 8.25     | 41.25 (HUD: 42)",
	}, "\n"), enhdesc_col) -- Veteran

	--[+ Melee Damage Boost Low + Medium +]--
	local ED_MeleeDmgBst_L_M_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_mel_dmg_nodes,
		stacks_mult_power_lvl_weap_bless,
		"- 適用於遠程武器的近戰特殊動作。",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran, Zealot

	--[+ Movement Speed Boost +]--
	local ED_MoveSpdBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- 靈能者：與「擾亂命運」、「堅毅」、「亞空間分裂」，以及像「提速」這類武器祝福提供的移動速度增益相加疊加。",
		"- 狂信徒：與其他小型移動速度節點，以及來自「隱密領域」、「勃然大怒」和「提速」等武器祝福提供的移動速度增益相加疊加。",
		"-- 與「堅定迅捷」提供的衝刺速度增益做乘法疊加。",
		"- 老兵：與「滲透」、「不拋棄不放棄」、光環「抵近殺敵」，以及類似「提速」這種武器祝福提供的移動速度增益相加疊加。",
	}, "\n"), enhdesc_col) -- Psyker, Veteran, Zealot

	--[+ Peril Resistance +]--
	local ED_PerilRes_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- 與其他小型節點，以及來自「骨折後遺症」、「刺耳尖嘯」、「亞空間意志」、「平心靜氣」、「動能共鳴」、「占卜者的注視」以及戰鬥興奮劑等危險值消耗減少增益做乘法疊加。",
	}, "\n"), enhdesc_col) -- Psyker,

	--[+ Ranged Damage Boost +]--
	local ED_RangDmgBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- 與其他小型遠程傷害節點以及其他相關傷害增益相加疊加。",
		stacks_mult_power_lvl_weap_bless,
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran

	--[+ Reload Boost +]--
	local ED_ReloadBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- 歐格林：與「領跑者」、「貼身火力」、武器天賦與祝福，以及敏捷興奮劑提供的裝填速度增益相加疊加。",
		"- 老兵：與「集火」、「遠程刺客」、「戰術裝填」、「齊射能手」、武器天賦與祝福，以及敏捷興奮劑提供的裝填速度增益相加疊加。",
		"-- 此效果也會提升戰鬥霰彈槍的特殊裝填動作速度。",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran

	--[+ Rending Boost +]--
	local ED_RendingBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- 適用於所有攻擊，提升對裝甲類型（甲殼、防彈、狂熱、不屈）的傷害，包括爆炸傷害與流血、燃燒等持續傷害效果（由歐格林施加）。",
		"- 只影響歐格林自身的傷害。",
		"- 與其他撕裂增益相加疊加，並與施加在敵人身上的脆弱（Brittleness）減益效果相加疊加。",
	}, "\n"), enhdesc_col) -- Ogryn,

	--[+ Stamina Boost +]--
	local ED_StaminaBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- 與珍品、武器天賦以及武器耐力模板提供的耐力值相加疊加。",
		"- 玩家介面中的耐力條每一格代表 1 點耐力。",
	}, "\n"), enhdesc_col) -- Veteran, Zealot

	--[+ Suppression Boost +]--
	local ED_SuppressionBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- 歐格林：與武器祝福「連續發射」提供的壓制增益相加疊加。",
		"- 狂信徒：與武器祝福「火藥灼傷」提供的壓制增益相加疊加。",
		"- 老兵：與「求勝心」、「讓他們全趴下!」，以及武器祝福「火藥灼傷」提供的壓制增益相加疊加。",	
	}, "\n"), enhdesc_col) -- Ogryn, Veteran, Zealot

	--[+ Stamina Regeneration Boost +]--
	local ED_StamRegenBst_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- 將基礎耐力回復延遲從 1 秒縮短至 0.75 秒。",
		"- 此時間為消耗耐力後開始回復耐力的延遲時間。",
		"- 與其他小型耐力回復延遲減少節點相加疊加。",
	}, "\n"), enhdesc_col) -- Veteran

	--[+ Toughness Boost Low +]--
	local ED_TghnsBst_L_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_tghnss_nodes,
		cur_max_tghnss_mult_by_tghnss_pc,
		"-- 靈能者：例如，在 105 最大韌性（靈能者的基礎 60 加上三個 +15 韌性節點）的情況下，若裝備一件 +17% 韌性的珍品並擁有 +5% 韌性天賦，則最大韌性 105 會增加 105x(0.17+0.05)=23.1，提升至 128.1（介面顯示：129）。",
		"-- 狂信徒：例如，在 85 最大韌性（狂信徒的基礎 70 加上一個 +15 韌性節點）的情況下，若裝備一件 +17% 韌性的珍品並擁有 +5% 韌性天賦，則最大韌性 85 會增加 85x(0.17+0.05)=18.7，提升至 103.7（介面顯示：104）。",
		"- 角色的最大韌性是計算大多數天賦與祝福提供的韌性回復時的基礎值。",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran, Zealot

	--[+ Toughness Boost Medium +]--
	local ED_TghnsBst_M_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		stacks_add_w_sm_tghnss_nodes,
		cur_max_tghnss_mult_by_tghnss_pc,
		"-- 歐格林：例如，在 75 最大韌性（歐格林的基礎 50 加上一個 +25 韌性節點）的情況下，若裝備一件 +17% 韌性的珍品並擁有 +5% 韌性天賦，則最大韌性 75 會增加 75x(0.17+0.05)=15.75，提升至 90.75（介面顯示：91）。",
		"-- 老兵：例如，在 150 最大韌性（老兵的基礎 100 加上兩個 +25 韌性節點）的情況下，若裝備一件 +15% 韌性的珍品並擁有 +4% 韌性天賦，則最大韌性 150 會增加 150x(0.15+0.04)=28.5，提升至 178.5（介面顯示：179）。",
		"- 角色的最大韌性是計算大多數天賦與祝福提供的韌性回復時的基礎值。",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran

	--[+ Toughness Damage Reduction Low + Medium +]--
	local ED_TghnsDmgRed_LM_rgb = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- 與其他小型韌性傷害減少節點相加疊加。",
		"- 這些加總後的減傷效果與其他傷害減少增益做乘法疊加。",
		"-- 狂信徒：與「不滅意志」相加疊加。",
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