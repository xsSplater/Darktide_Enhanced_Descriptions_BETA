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
local stacks_add_w_health_buff_cur = "- 與珍品(含屬性)、節點加法疊加。"
local stacks_add_w_health_buff_formula1 = "- 公式：基礎血量x(珍品+天賦+節點)"
local stacks_add_w_toughness_buff_formula1 = "- 公式：(基礎韌性+節點)x(珍品+屬性)"
local also_appl_2_health_wl_downed = "- 也會套用在倒地時的生命上。"
local stacks_add_w_sm_mel_dmg_nodes = "- 可與其他小型近戰傷害節點及相關效果加法疊加。"
local stacks_mult_power_lvl_weap_bless = "- 與武器祝福提供的威力強化效果乘法疊加。"
local stacks_add_w_sm_tghnss_nodes = "- 與韌性節點加法疊加。"
local cur_max_tghnss_mult_by_tghnss_pc = "- 最大韌性受珍品的韌性比例乘法疊加。"


--[+ ++ENHANCED DESCRIPTIONS++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true)

--[+ +NODES+ +]--
	--[+ Critical Chance Boost +]--
	local ED_CritChncBst_rgb_tw = iu_actit(table.concat({
		"\n",
		"- 適用於所有可暴擊的攻擊。",
		"- 可與其他暴擊率來源加法疊加。",
	}, "\n"), enhdesc_col) -- Psyker, Veteran

	--[+ Health Boost Low +]--
	local ED_HeathBst_L_rgb_tw = iu_actit(table.concat({
		"\n",
		also_appl_2_health_wl_downed,
		stacks_add_w_health_buff_cur,
		stacks_add_w_health_buff_formula1,
		"- 例：老兵有+21%生命珍品(屬性+5%生命)與+5%生命節點，",
		"- 最大生命150會由150x(0.21+0.05+0.05)=46.5提升至196.5(UI會四捨五入)。",
		"-- 老兵基礎150",
		"-- 靈能者基礎150",
		"-- 歐格林基礎300",
		"-- 狂信徒基礎200",
	}, "\n"), enhdesc_col) -- Veteran,

	--[+ Health Boost Medium +]--
	local ED_HeathBst_M_rgb_tw = iu_actit(table.concat({
		"\n",
		also_appl_2_health_wl_downed,
		stacks_add_w_health_buff_cur,
		stacks_add_w_health_buff_formula1,
		"- 例：老兵有+21%生命珍品(屬性+5%生命)與+10%生命節點，",
		"- 最大生命150會由150x(0.21+0.05+0.1)=54提升至204(UI會四捨五入)。",
		"-- 老兵基礎150",
		"-- 靈能者基礎150",
		"-- 歐格林基礎300",
		"-- 狂信徒基礎200",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Zealot

	--[+ Heavy Melee Damage Boost Low + Medium +]--
	local ED_HMeleeDmgBst_LM_rgb_tw = iu_actit(table.concat({
		"\n",
		stacks_add_w_sm_mel_dmg_nodes,
		stacks_mult_power_lvl_weap_bless,
	}, "\n"), enhdesc_col) -- Ogryn

	--[+ Inspiring Presence +]--
	local ED_InspiringP_rgb_tw = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- 韌性恢復速度會與歐格林光環「跟緊我!」及珍品加法疊加。",
		"- 增加隊友每秒基礎韌性恢復量(CTR)量：",
		"_______________________________",
		"同伴: | CTR:                 | 5 秒後：",
		"       0 | 0.00 -> 0.00    | 0.00",
		"        1 | 3.75 -> 4.13      | 20.63 (HUD: 21)",
		"       2 | 5.63 -> 6.19      | 30.94 (HUD: 31)",
		"       3 | 7.50 -> 8.25     | 41.25 (HUD: 42)",
	}, "\n"), enhdesc_col) -- Veteran

	--[+ Melee Damage Boost Low + Medium +]--
	local ED_MeleeDmgBst_L_M_rgb_tw = iu_actit(table.concat({
		"\n",
		stacks_add_w_sm_mel_dmg_nodes,
		stacks_mult_power_lvl_weap_bless,
		"- 也適用於遠程武器的近戰特殊攻擊。",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran, Zealot

	--[+ Movement Speed Boost +]--
	local ED_MoveSpdBst_rgb_tw = iu_actit(table.concat({
		"",
		"- 此效果會與天賦、光環、武器祝福、節點的移動速度增益加法疊加",
		"- 武器祝福：「提速」",
		"- 靈能者天賦：「擾亂命運」、「堅毅」、「亞空間分裂」。",
		"- 老兵天賦：「滲透」、「不拋棄不放棄」、光環「抵近殺敵」。",
		"- 狂信徒天賦：「隱密領域」、「勃然大怒」和「提速」。",
		"- 只有狂信「堅定迅捷」是乘法疊加。",
	}, "\n"), enhdesc_col) -- Psyker, Veteran, Zealot

	--[+ Peril Resistance +]--
	local ED_PerilRes_rgb_tw = iu_actit(table.concat({
		"",
		"- 與其他小型節點、天賦、戰鬥興奮劑以乘法疊加，",
		"- 相關天賦：「骨折後遺症」、「刺耳尖嘯」、「亞空間意志」、「平心靜氣」、「動能共鳴」、「占卜者的注視」。",
	}, "\n"), enhdesc_col) -- Psyker,

	--[+ Ranged Damage Boost +]--
	local ED_RangDmgBst_rgb_tw = iu_actit(table.concat({
		"\n",
		"- 可與遠程傷害節點及其他類似的傷害增益效果加法疊加。",
		stacks_mult_power_lvl_weap_bless,
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran

	--[+ Reload Boost +]--
	local ED_ReloadBst_rgb_tw = iu_actit(table.concat({
		"\n",
		"- 此效果會與天賦、武器祝福、節點，以及敏捷興奮劑提供的裝填速度增益加法疊加。",
		"- 歐格林天賦：「領跑者」、「貼身火力」。",
		"- 老兵天賦：「集火」、「遠程刺客」、「戰術裝填」、「齊射能手」。",
		"- 此效果同樣適用於提升戰鬥霰彈槍的特殊裝填動作速度。"
	}, "\n"), enhdesc_col) -- Ogryn, Veteran

	--[+ Rending Boost +]--
	local ED_RendingBst_rgb_tw = iu_actit(table.concat({
		"\n",
		"- 適用於所有攻擊，提升對裝甲類型（甲殼、防彈、狂熱、不屈）的傷害，包括歐格林的爆炸傷害與流血、燃燒等持續傷害效果。",
		"- 只影響歐格林自身的傷害。",
		"- 與其他撕裂增益加法疊加，並與施加在敵人身上的脆弱減益效果加法疊加。",
	}, "\n"), enhdesc_col) -- Ogryn,

	--[+ Stamina Boost +]--
	local ED_StaminaBst_rgb_tw = iu_actit(table.concat({
		"\n",
		"- 與珍品、武器天賦以及武器耐力提供的耐力值相加疊加。",
		"- 玩家UI中的耐力條每一格代表 1 點耐力。",
	}, "\n"), enhdesc_col) -- Veteran, Zealot

	--[+ Suppression Boost +]--
	local ED_SuppressionBst_rgb_tw = iu_actit(table.concat({
		"\n",
    	"- 此效果會與天賦、武器祝福所提供的壓制增益相加疊加。",
		"- 歐格林武器祝福：「連續發射」。",
		"- 狂信徒武器祝福：「火藥灼傷」。",
		"- 老兵天賦：「求勝心」、「讓他們全趴下!」，武器祝福：「火藥灼傷」。",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran, Zealot

	--[+ Stamina Regeneration Boost +]--
	local ED_StamRegenBst_rgb_tw = iu_actit(table.concat({
		"\n",
		"- 基礎耐力恢復延遲從 1 秒縮短至 0.75 秒。",
		"- 此為消耗耐力後開始恢復前的延遲時間。",
		"- 與其他的耐力恢復節點效果加法疊加。",
	}, "\n"), enhdesc_col) -- Veteran

	--[+ Toughness Boost Low +]--
	local ED_TghnsBst_L_rgb_tw = iu_actit(table.concat({
		"\n",
		stacks_add_w_sm_tghnss_nodes,
		cur_max_tghnss_mult_by_tghnss_pc,
		"- 角色的最大韌性是計算大多數天賦與祝福提供的韌性恢復時的基礎值。",
		stacks_add_w_toughness_buff_formula1,
		"-- 例：狂信徒有 +17% 韌性珍品（屬性 +5% 韌性）與 +15 韌性節點。",
		"-- 最大韌性會由 (70 + 15) x (0.17 + 0.05) = 18.7 提升至 103.7（UI 會四捨五入顯示為 104）。",
		"-- 老兵基礎100",
		"-- 歐格林基礎75",
		"-- 靈能者基礎75",
		"-- 狂信徒基礎70",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran, Zealot

	--[+ Toughness Boost Medium +]--
	local ED_TghnsBst_M_rgb_tw = iu_actit(table.concat({
		"\n",
		stacks_add_w_sm_tghnss_nodes,
		cur_max_tghnss_mult_by_tghnss_pc,
		"- 角色的最大韌性是計算大多數天賦與祝福提供的韌性恢復時的基礎值。",
		stacks_add_w_toughness_buff_formula1,
		"-- 例：老兵有 +17% 韌性珍品（屬性 +5% 韌性）與 +25 韌性節點。",
		"-- 最大韌性會由 (100 + 25) x (0.17 + 0.05) = 27.5 提升至 127.5（UI 會四捨五入顯示為 128）。",
		"-- 老兵基礎100",
		"-- 歐格林基礎75",
	}, "\n"), enhdesc_col) -- Ogryn, Veteran

	--[+ Toughness Damage Reduction Low + Medium +]--
	local ED_TghnsDmgRed_LM_rgb_tw = iu_actit(table.concat({
		"",
		ppp___ppp,
		"- 與其他韌性傷害減少節點加法疊加。",
		"- 這些加總後的減傷效果與其他傷害減少增益做乘法疊加。",
		"-- 狂信徒：與「不滅意志」加法疊加。",
	}, "\n"), enhdesc_col) -- Psyker, Ogryn, Veteran, Zealot

-- In the list below, you also need to add a new entry or change an old one.
return {
	ED_TghnsBst_L_rgb_tw = ED_TghnsBst_L_rgb_tw,
	ED_TghnsBst_M_rgb_tw = ED_TghnsBst_M_rgb_tw,
	ED_TghnsDmgRed_LM_rgb_tw = ED_TghnsDmgRed_LM_rgb_tw,
	ED_PerilRes_rgb_tw = ED_PerilRes_rgb_tw,
	ED_InspiringP_rgb_tw = ED_InspiringP_rgb_tw,
	ED_RangDmgBst_rgb_tw = ED_RangDmgBst_rgb_tw,
	ED_HeathBst_L_rgb_tw = ED_HeathBst_L_rgb_tw,
	ED_HeathBst_M_rgb_tw = ED_HeathBst_M_rgb_tw,
	ED_CritChncBst_rgb_tw = ED_CritChncBst_rgb_tw,
	ED_MoveSpdBst_rgb_tw = ED_MoveSpdBst_rgb_tw,
	ED_MeleeDmgBst_L_M_rgb_tw = ED_MeleeDmgBst_L_M_rgb_tw,
	ED_StaminaBst_rgb_tw = ED_StaminaBst_rgb_tw,
	ED_SuppressionBst_rgb_tw = ED_SuppressionBst_rgb_tw,
	ED_ReloadBst_rgb_tw = ED_ReloadBst_rgb_tw,
	ED_StamRegenBst_rgb_tw = ED_StamRegenBst_rgb_tw,
	ED_RendingBst_rgb_tw = ED_RendingBst_rgb_tw,
	ED_HMeleeDmgBst_LM_rgb_tw = ED_HMeleeDmgBst_LM_rgb_tw,
}