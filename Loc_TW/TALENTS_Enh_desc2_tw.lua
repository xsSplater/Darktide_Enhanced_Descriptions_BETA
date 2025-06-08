---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text



			-- ============ DO NOT DO ANYTHING ABOVE! ============ --

-- Check the length of the text in the game and adjust it so that the descriptions do not extend the card beyond the screen.
-- If you can't shorten it, you can simply hide the least useful line by adding "--" before that line.
-- Extended descriptions have a lower priority than the main description, imho.

-- If you added/changed something, then you need to duplicate/change the same entry in the list below.
-- For example, you change "ED_VET_Blitz_0_rgb" to "ED_VET_Blitz_0_rgb_urlang", then at the bottom you need to find (CTRL+F) the "ED_VET_Blitz_0_rgb" entries and also rename them from "ED_VET_Blitz_0_rgb_tw = ED_VET_Blitz_0_rgb_tw," to "ED_VET_Blitz_0_rgb_urlang = ED_VET_Blitz_0_rgb_urlang,".
-- If you add a new entry (ex. MyEntry_rgb), just duplicate it in the list below (MyEntry_rgb_tw = MyEntry_rgb_tw,).

local Arrow_down_red = "{#color(255, 35, 5)}{#reset()}"
local Arrow_up_green = "{#color(35, 255, 5)}{#reset()}"
local Arrow_right_ = ""

local ppp___ppp = "\n+++-------------------------------------------------+++"
COLORS_KWords_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/COLORS_KWords_tw") -- Traditional Chinese
local become_invis_drop_all_enemy_aggro = "- 進入隱形狀態並解除仇恨：\n-- 近戰敵人將仇恨轉移至隊友。\n-- 遠程敵人會停火並換目標。"
local can_be_refr_dur_active_dur = "- 可以在效果持續期間刷新。"
local doesnt_interact_w_c_a_r_from_curio = "- 不會與珍品提供的 "..COLORS_KWords_tw.Combat_ability_cd_rgb_tw.." 效果互動，因為該效果只會縮短戰鬥技能的最大冷卻時間。"
local doesnt_stack_w_z_same_aura_ogr = "- 無法與其他歐格林的相同光環疊加。"
local doesnt_stack_w_z_same_aura_vet = "- 無法與其他老兵的相同光環疊加。"
local doesnt_stack_w_z_same_talents = "- 無法與其他相同天賦疊加。"
local stacks_additively_w_z_same_talents = "- 與其他相同天賦採加法疊加。"
local procs_add_conc_stim_rem_cd_red = "- 此觸發效果會額外疊加在專注興奮劑的每秒縮短3秒冷卻時間效果之上。"
local stacks_add_w_oth_dmg = Arrow_right_.." 與其他傷害增益以加法疊加。\n"..Arrow_right_.." 與武器祝福威力乘法疊加。"
local stacks_add_w_oth_rend_brit = Arrow_right_.." 與其他撕裂、脆弱採加法疊加。"
local stacks_mult_w_other_dmg_red_buffs = "- 與其他傷害減免增益以乘法疊加。"
local this_also_incr_speed_load_com_shotg = Arrow_right_.." 同時提升特殊裝填動作速度。"
local this_also_buffs_melee_sp_act_guns = "- 此效果也會增益「全自動霰彈槍」、「擲彈兵臂鎧」（近戰部分）、「震盪槍」、「雙鏈重型機槍 」及「反衝者」的近戰特殊動作。"
local z_eff_of_this_tougn_rep = Arrow_right_.." 韌性恢復效果受到減益影響(如毒氣)。"


--[+ ++ENHANCED DESCRIPTIONS++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true)

--[+ ++VETERAN++ +]--
--[+ +BLITZ+ +]--
	--[+ Blitz 0 - Frag Grenade(破片手雷) +]--
	local ED_VET_Blitz_0_rgb_tw = iu_actit(table.concat({
		"",
		"- 爆炸半徑：最大10米，中心2米。",
		"- 爆炸傷害：",
		"-- 中心區域基礎傷害：500。",
		"-- 中心至最大半徑之間基礎傷害：200。",
		"-- 除了虛空護盾之外都會施加高踉蹌。",
		"-- 隊長、雙子腳下無效，但旁邊可踉蹌。",
		"- 彈藥：每次拾取皆恢復所有手雷。",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1 - Frag Grenade(破片手雷) +]--
	local ED_VET_Blitz_1_rgb_tw = iu_actit(table.concat({
		"",
		"- 彈藥：每次拾取皆恢復所有手雷。",
		"- 爆炸半徑：最大10米，中心2米。",
		"- 爆炸傷害：",
		"-- 中心區域基礎傷害：500。",
		"-- 中心至最大半徑之間基礎傷害：200。",
		"-- 對防彈中等傷害，對甲殼則非常低。",
		"-- 除了隊長雙子之外都會施加高踉蹌。",
		"",
		"- 流血：",
		"-- 每0.5秒造成傷害，持續1.5秒。",
		"-- 受手雷爆炸增益影響(除「手雷專家」)",
		"-- 受到武器屬性及祝福的增益。",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2 - Krak Grenade(穿甲手雷) +]--
	local ED_VET_Blitz_2_rgb_tw = iu_actit(table.concat({
		"",
		"- 彈藥：每次拾取皆恢復所有手雷。",
		"",
		"- 爆炸半徑：中心1.5米，最大5米。",
		"- 爆炸傷害：",
		"-- 中心區域基礎傷害：2400。",
		"-- 中心至最大半徑之間基礎傷害：500。",
		"-- 傷害依距離中心遞減，越近傷害越高。",
		"-- 附著敵人視為爆炸中心。",
		"-- 中心命中提升全護甲傷害。",
		"-- 對甲殼、防彈、不屈有額外加成。",
		-- "-- 在外圍區域，整體傷害修正仍維持不錯。",
		"",
		"- 踉蹌：",
		"-- 對所有敵人(包含巨獸)造成高踉蹌。",
		"-- 除了虛空護盾之外都會施加高踉蹌。",
		"-- 隊長、雙子可踉蹌，但非全身部位。",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3 - Smoke Grenade(煙霧手雷) +]--
	local ED_VET_Blitz_3_rgb_tw = iu_actit(table.concat({
		"",
		"- 煙霧雲效果：",
		"-- 半徑：5.5米。",
		"-- 會隱藏隊友的頭像(名條)。",
		"",
		"-- 近戰：",
		"--- 若產生近戰傷害，不影響敵人感知。",
		"-- 遠程：",
		"--- 持有仇恨的遠程敵人會停火重鎖。",
		"--- 槍手與收割者會射向玩家最後位置。",
		"",
		"-- 瘟疫獵犬無法鎖定煙霧內的玩家。",
		"-- 對變種人及瘟疫爆者無效。",
		-- "-- 若玩家已對敵人產生近戰仇恨(Melee combat)，則煙霧不影響敵人的感知。",
		-- "-- 若玩家對正在進行遠程戰鬥的敵人保有仇恨，則煙霧會使該遠程敵人停止射擊並嘗試重新定位(收割者較不易移動)。",
		-- "-- 若槍手或收割者也位於煙霧範圍內，會持續對玩家最後被發現的位置開火。",
		-- "-- 瘟疫獵犬無法鎖定處於煙霧範圍內的玩家，會繞著煙霧徘徊(對變種人及瘟疫爆者無效)。",
		"-- 位於煙霧內的玩家被視為「隱蔽」。",
		"",
		"- 隱蔽效果(煙霧)：",
		"-- 改變敵人鎖定目標的視線距離需求。",
	}, "\n"), enhdesc_col)

--[+ +AURA+ +]--
	--[+ Aura 0 - Scavenger(拾荒者) +]--
	local ED_VET_Aura_0_rgb_tw = iu_actit(table.concat({
		"\n",
		doesnt_stack_w_z_same_aura_vet,
		"- 有多名老兵則分別恢復各自的彈藥量。",
	}, "\n"), enhdesc_col)

	--[+ Aura 1 - Survivalist(生存專家) +]--
	local ED_VET_Aura_1_rgb_tw = iu_actit(table.concat({
		"\n",
		doesnt_stack_w_z_same_aura_vet,
		"- 有多名老兵則分別恢復各自的彈藥量。",
		"",
		"- 回彈公式：",
		"-- 備彈量 × 1% = 回彈量（包含小數）。",
		"-- 回彈量向下取整，保留餘數下次累加。",
		"",
		"- 範例：武器備彈量為180發",
		"- 因此每一次回彈量基礎為：",
		"-- 180 × 0.01 = 1.8 發，",
		"",
		"-- 回彈流程",
		"- 第1次恢復 0 + 1.8 發（留 0.8 發）。",
		"- 第2次恢復 0.8 + 1.8 發（留 0.6 發）。",
		"- 第3次恢復 0.6 + 1.8 發（留 0.4 發）。",
		"- 第4次恢復 0.4 + 1.8 發（留 0.2 發）。",
		"- 第5次恢復 0.2 + 1.8 發（留 0.0 發）。",
		"-- 然後重新進入循環。"
		-- "- 例如，若武器備彈量為180發：首次觸發時恢復180x0.01=1.8發，向下取整為1發；留下0.8發至下次觸發。第二次觸發時恢復(180x0.01)+0.8=2.6發，向下取整為2發；再留0.6發到下次觸發，如此循環。也就是第一次觸發恢復1發，接下來四次觸發各恢復2發，第五次後又恢復1發，如此往復。",
	}, "\n"), enhdesc_col)

	--[+ Aura 2 - Fire Team(火力小分隊) +]--
	local ED_VET_Aura_2_rgb_tw = iu_actit(table.concat({
		"\n",
		stacks_add_w_oth_dmg,
		doesnt_stack_w_z_same_aura_vet,
	}, "\n"), enhdesc_col)

	--[+ Aura 3 - Close and Kill(抵近殺敵) +]--
	local ED_VET_Aura_3_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 與以下移動速度採加法疊加：",
		"- 滲透、不拋棄不放棄、",
		"- 小型移動天賦、提速(武器祝福)",
		"",
		doesnt_stack_w_z_same_aura_vet,
	}, "\n"), enhdesc_col)

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Volley Fire(火力齊射) +]--
	local ED_VET_Ability_0_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		-- "- 提升遠程傷害與遠程弱點傷害15%。",
		"- 與其他相關傷害增益採加法疊加。",
		"- 使遠程攻擊的踉蹌強度提升50%。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1 - Executioner's Stance(處決者姿態) +]--
	local ED_VET_Ability_1_rgb_tw = iu_actit(table.concat({
		"\n",
		"- 提供下列增益：",
		"-- 免疫壓制。",
		"-- 免疫近戰和遠程造成的眩暈與減速。",
		-- "-- 免疫近戰和遠程攻擊造成的眩暈與減速(Slowdowns)，也免疫壓制。",
		"-- 攻擊不會因受擊硬直而被中斷。",
		"-- 武器散射(Spread)降低38%。",
		"-- 武器後座力(Recoil)降低24%。",
		"-- 隨機後座改為固定後座模式。",
		"-- 武器擺動(Sway)降低60%。",
		"-- 視野輕微縮放。",
		"",
		"- 與其他相關傷害增益採加法疊加。",
		"- 使遠程攻擊的踉蹌強度提升100%。",
		"- 若老兵遭控場則此效果提前結束。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-1 - Enhanced Target Priority(目標引導增強) +]--
	local ED_VET_Ability_1_1_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 給予隊友的紅框固定維持5秒。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-2 - Counter-Fire(火力反擊) +]--
	-- local ED_VET_Ability_1_2_rgb_tw = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Ability 1-3 - The Bigger they Are...(敵人越大...) +]--
	-- local ED_VET_Ability_1_3_rgb_tw = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Ability 1-4 - Marksman(鷹眼) +]--
	local ED_VET_Ability_1_4_rgb_tw = iu_actit(table.concat({
		"",
		"- 與武器威力採加法疊加。",
		"- 與傷害增益採乘法疊加。",
		-- "- 與其他武器祝福的威力(Power level)增益採加法疊加，並與傷害增益採乘法計算。",
		"-"..COLORS_KWords2_tw.Pwr_note_rgb_tw,
		-- "- 「威力增益」表示提升攻擊基礎數值，可同時增進傷害、踉蹌與順劈。",
		-- "- 對「滲透」而言，增益會立即生效，但計時會在隱形結束時才開始。",
	}, "\n"), enhdesc_col)

	--[+ Ability 2 - Voice of Command(發號施令) +]--
	local ED_VET_Ability_2_rgb_tw = iu_actit(table.concat({
		"\n",
		"- 戰吼：",
		"-- 按住技能可顯示範圍，可用格擋取消。",
		"-- 半徑：9米。",
		"-- 範圍內所有敵人都會被踉蹌。",
		"-- 踉蹌強度隨距離遞減。",
		"-- 已處於踉蹌的敵人不會再次受到影響。",
		"-- 對以下單位可強制施加重踉蹌2.5秒。",
		"--- 碾壓者、重錘兵、變種人、收割者、",
		"--- 巨獸、無虛空護盾的隊長、雙胞胎。",
		"--- 堡壘面前則無法踉蹌。",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-1 - Duty and Honour(責任與榮譽) +]--
	local ED_VET_Ability_2_1_rgb_tw = iu_actit(table.concat({
		"",
		"- 韌性全滿時，提供50點黃韌性。",
		"- 老兵自身的額外韌性持續15秒。",
		"",
		"- 賦予隊友效果：",
		"-- 韌性低於100%，恢復50點韌性。",
		"-- 韌性達100%，額外提供50點黃韌性。",
		"",
		"-「超凡魅力」可增加範圍。",
		"-- 以下的黃韌可以疊加",
		"--- 其他老兵的「發號施令」。",
		"--- 狂信徒的「不屈靈魂合唱」。",
		"",
		"- 此部分額外韌性會像第二條韌性槽，",
		"--可透過擊殺、天賦、武器祝福補充。",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-2 - Only In Death Does Duty End(只有死亡，職責才會終結) +]--
	local ED_VET_Ability_2_2_rgb_tw = iu_actit(table.concat({
		"",
		"- 復活效果不受地形阻隔。",
		"- 有效半徑由"..COLORS_Numbers.n_9_rgb..COLORS_Numbers.n_meter_rgb.."降至"..COLORS_Numbers.n_6_03_rgb..COLORS_Numbers.n_meter_rgb.."。",
		"- 無關協同狀態，範圍外無法被復活。",
		"- "..COLORS_KWords_tw.Cd_rgb_m_tw.." 由 "..COLORS_Numbers.n_30_rgb..COLORS_Numbers.n_second_rgb.." 增加到 "..COLORS_Numbers.n_45_rgb..COLORS_Numbers.n_second_rgb.." 。",
		"",
		"- "..COLORS_KWords_tw.Cd_rgb_m_tw.." 可透過下面方式減少。",
		"- 靈能者光環「先知之眼」。",
		"- 珍品的戰鬥技能冷卻。",
		"- 任務「技能冷卻減少20%」。",
		-- "- 例，一名擁有此天賦的老兵在玩「漩渦(Maelstrom)」關卡(-0.2)並配戴三個4%戰鬥技能冷卻珍品(-0.12)，其「發號施令」最大冷卻時間計算方式為30 + 30x(0.5 - 0.32) = 35.4秒。",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-3 - For the Emperor!(為了皇帝！) +]--
	local ED_VET_Ability_2_3_rgb_tw = iu_actit(table.concat({
		"",
		"- 發動時需再協同範圍內才可獲得增益。",
		stacks_additively_w_z_same_talents,
		"- 與武器祝福的威力增益採乘法計算。",
	}, "\n"), enhdesc_col)

	--[+ Ability 3 - Infiltrate(滲透) +]--
	local ED_VET_Ability_3_rgb_tw = iu_actit(table.concat({
		"",
		"- "..COLORS_KWords2_tw.Stealth_rgb_tw.."： ",
		become_invis_drop_all_enemy_aggro,
		"",
		"- 進入隱形後仍可能受到傷害。",
		"",
		"- 以下動作會解除隱形：",
		"-- 近戰攻擊命中敵人、遠程攻擊開火",
		"-- 投擲手雷、",
		-- "-- 完成救援/復甦/拉起隊友或掙脫束縛的動作；",
		"-- 任何協助隊友的動作，",
		"-- 投擲飛刀只有命中時才會破除隱形。",
		"",
		"- 以下動作不會解除隱形：",
		"-- 推擊敵人、用興奮劑(自用或給隊友)、",
		"-- 在隱形前丟出去的手雷爆炸、",
		"-- Dot持續傷害效果、",
		"-- 操作占卜儀與小遊戲等。",
		"",
		"{#color(255, 35, 5)}無法躲避惡魔宿主!{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-1 - Low Profile(低調) +]--
	local ED_VET_Ability_3_1_rgb_tw = iu_actit(table.concat({
		"\n",
		"- 當隱形結束後：",
		"-- 被攻擊的機率翻倍。",
		"-- 持續 "..COLORS_Numbers.n_10_rgb..COLORS_Numbers.n_second_rgb.."。",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-2 - Overwatch(掩護射擊) +]--
	local ED_VET_Ability_3_2_rgb_tw = iu_actit(table.concat({
		"",
		"- 第二次充能僅在第一次結束後開始。",
		"- "..COLORS_KWords_tw.Cd_rgb_m_tw.." 由 "..COLORS_Numbers.n_45_rgb..COLORS_Numbers.n_second_rgb.." 增加到 "..COLORS_Numbers.n_59_85_rgb..COLORS_Numbers.n_second_rgb.." 。",
		"- "..COLORS_KWords_tw.Cd_rgb_m_tw.." 可透過下面方式減少。",
		"- 靈能者光環「先知之眼」。",
		"- 珍品的戰鬥技能冷卻。",
		"- 任務「技能冷卻減少20%」。",
		-- "- 例如，一名老兵在「漩渦(Maelstrom)」(-0.2)關卡中並與具有冷卻光環(-0.1)的靈能者組隊，其「滲透」最大冷卻計算方式為45 + 45 x (0.33 - 0.3) = 46.35秒。",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-3 - Hunter's Resolve(獵手決意) +]--
	local ED_VET_Ability_3_3_rgb_tw = iu_actit(table.concat({
		"\n",
		"- "..COLORS_Numbers.n_10_rgb..COLORS_Numbers.n_second_rgb.." 效果會在隱形結束後才開始計時。",
		stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	--[+ Ability 3-4 - Surprise Attack(突襲) +]--
	local ED_VET_Ability_3_4_rgb_tw = iu_actit(table.concat({
		"\n",
		"- "..COLORS_Numbers.n_5_rgb..COLORS_Numbers.n_second_rgb.." 效果會在隱形結束後才開始計時。",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Ability 3-5 - Close Quarters Killzone(肉搏戰) +]--
	local ED_VET_Ability_3_5_rgb_tw = iu_actit(table.concat({
		"\n",
		"- 使用「滲透」時，",
		"-- 增益立即生效，",
		"-- 但計時在隱形結束才開始。",
		"",
		"- 傷害增益會隨距離線性衰減，",
		"_______________________________",
		"距離(m):    1-12.5|   15|   20|   25|   30",
		"傷害(%):           15| ~13|   ~9|   ~4|    0",
		"_______________________________",
		"",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

--[+ +KEYSTONES+ +]--
	--[+ Keystone 1 - Marksman's Focus(狙擊專注) +]--
	local ED_VET_Keystone_1_rgb_tw = iu_actit(table.concat({
		"",
		"會因以下移動方式消耗"..COLORS_KWords2_tw.Focus_rgb_tw.."：",
		Arrow_down_red.." 行走每秒移除1層。",
		Arrow_down_red.." 衝刺每0.5秒移除1層。",
		Arrow_down_red.." 滑鏟時會依移動速度消耗。",
		"",
		COLORS_KWords2_tw.Focus_rgb_tw.." 提供 "..COLORS_KWords_tw.Finesse_rgb_tw.." 計算方式另行處理。",
		Arrow_right_.." "..COLORS_KWords_tw.Weakspot_rgb_tw.." 、 "..COLORS_KWords_tw.Finesse_rgb_tw.."加法疊加。",
		Arrow_right_.." 與武器祝福提供 "..COLORS_KWords_tw.Power_rgb_tw.." 乘法疊加。",
		"",
		Arrow_right_.." 換彈速度與其他Buff採加法疊加。",
		-- "- 換彈速度(Reload-Speed)加成與「集火」、「戰術裝填」、「齊射能手」、小型換彈速度天賦、武器專長、武器祝福、以及敏捷興奮劑等以加法疊加。",
		Arrow_right_.." 換彈速度同樣提升特殊裝填速度。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-1 - Chink in their Armour(滲透盔甲) +]--
	local ED_VET_Keystone_1_1_rgb_tw = iu_actit(table.concat({
		"\n",
		COLORS_KWords_tw.Rending_rgb_tw.." 提升以下傷害：",
		Arrow_up_green.." 對甲殼、防彈、狂熱、不屈的傷害。",
		Arrow_up_green.." 爆炸與持續傷害。",
		"",
		Arrow_right_.." 僅影響自身的傷害。",
		stacks_add_w_oth_rend_brit,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-2 - Tunnel Vision(視野狹窄) +]--
	local ED_VET_Keystone_1_2_rgb_tw = iu_actit(table.concat({
		"\n",
		-- "-- 1. 每層「專注」疊加，皆可提升近戰擊殺與天賦所回復的韌性量5%(最高可+50%，若搭配「遠程刺客」則可+75%)。",
		Arrow_right_.." "..COLORS_KWords2_tw.Focus_rgb_tw.." 最高可提升：",
		Arrow_up_green.." 近戰擊殺與天賦所恢復的韌性量5%。",
		Arrow_up_green.." 最高 +50% 搭配「遠程刺客」+75%。",
		"",
		Arrow_right_.." 不會影響協同韌性再生。",
		Arrow_right_.." 順劈時可多次觸發。",
		z_eff_of_this_tougn_rep,
		"",
		-- "--- 舉例：若達10層疊加，老兵最大韌性為152，近戰擊殺時可回復152x(0.05+0.05x0.5)=11.4韌性(介面通常四捨五入)。",
		"舉例：",
		"- 老兵最大韌性為152。",
		"- 基礎恢復量 5 點。",
		"- 當前層數10層。",
		"- 近戰擊殺恢復公式如下",
		"- 韌性x(基回+基回x層數) = 最終恢復",
		Arrow_up_green.." 152x(0.05+0.05x0.5) = 11.4韌性",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-3 - Long Range Assassin +]--
	-- local ED_VET_Keystone_1_rgb_tw = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 1-4 - Camouflage +]--
	-- local ED_VET_Keystone_1_rgb_tw = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 2 - Focus Target!(鎖定目標!) +]--
	local ED_VET_Keystone_2_rgb_tw = iu_actit(table.concat({
		"",
		-- "- 老兵標記敵人時，會將目前的「鎖定目標」疊加層數(至少1層)套用到該敵人身上，並將老兵的此疊加重置為1層。",
		-- "- 每層疊加可使被標記敵人承受的所有傷害額外增加4%。",
		Arrow_right_.." 標記時間為 "..COLORS_Numbers.n_25_rgb..COLORS_Numbers.n_second_rgb.." ，覆蓋時重新計算。",
		Arrow_right_.." 對同個敵人最多可疊加 "..COLORS_Numbers.n_8_rgb.." 層。",
		Arrow_right_.." 被此天賦標記的敵人會以黃色高亮。",
		Arrow_right_.." 新的層數要超過當前層數才可以覆蓋。",
		-- "- 若新套用的疊加層數大於敵人當前已有層數，才可覆蓋；並在成功覆蓋時重新計算25秒持續。",
		-- "- 多名老兵可相互覆蓋，除非敵人已經累積8層。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-1 - Target Down!(目標擊倒!) +]--
	local ED_VET_Keystone_2_1_rgb_tw = iu_actit(table.concat({
		"",
		"在 "..COLORS_Numbers.n_8_rgb.." 層疊加時：",
		Arrow_up_green.." 恢復 "..COLORS_Numbers.pc_40_rgb.." "..COLORS_KWords_tw.Toughness_m_rgb_tw.." 與 "..COLORS_KWords_tw.Stamina_rgb_m_tw.." 。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-2 - Redirect Fire!(轉移火力!) +]--
	local ED_VET_Keystone_2_2_rgb_tw = iu_actit(table.concat({
		"",
		"在 "..COLORS_Numbers.n_8_rgb.." 層疊加時：",
		Arrow_up_green.." 恢復 "..COLORS_Numbers.pc_12_rgb.." "..COLORS_KWords_tw.Toughness_dmg_rgb_tw.." 。",
		-- "- 在8層疊加時，最高可提供12%額外傷害。",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-3 - Focused Fire +]--
	-- local ED_VET_Keystone_2_3_rgb_tw = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 3 - Weapons Specialist(武器專家) +]--
	local ED_VET_Keystone_3_rgb_tw = iu_actit(table.concat({
		"",
		Arrow_right_.." "..COLORS_KWords2_tw.Rangedspec_rgb_tw.." 可與敏捷興奮劑加法疊加",
		Arrow_right_.." 在 "..COLORS_Numbers.n_3_rgb.." 層時，可達 "..COLORS_Numbers.pc_100_rgb.." 遠程暴擊。",
		Arrow_right_.." "..COLORS_KWords2_tw.Meleespec_rgb_tw.." 可與敏捷興奮劑加法疊加。",
		Arrow_right_.." 與「戰壕兵訓練」加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-1 - Always Prepared(有備無患) +]--
	local ED_VET_Keystone_3_1_rgb_tw = iu_actit(table.concat({
		"",
		-- "- 舉例：若老兵擁有6層「遠程專家」，武器彈匣中缺少36發子彈時，可轉移(36 x 0.33 x (6/10))=7.128，向上取整為8發。",
		Arrow_right_.." 回彈公式如下：",
		Arrow_right_.." 缺彈數 x "..COLORS_Numbers.pc_33_rgb.." x (層數 ÷ 10)。",
		"",
		Arrow_right_.." 以偵查雷射槍6C為例子，",
		Arrow_right_.." 彈匣共108發子彈，當全部打光時：",
		Arrow_right_.." 當 "..COLORS_KWords2_tw.Rangedspec_rgb_tw.." 層數為 "..COLORS_Numbers.n_1_rgb.." 時，",
		Arrow_right_.." 108x0.33x(1/10)=3.5，取整4發。",
		Arrow_right_.." 當 "..COLORS_KWords2_tw.Rangedspec_rgb_tw.." 層數為 "..COLORS_Numbers.n_5_rgb.." 時，",
		Arrow_right_.." 108x0.33x(5/10)=17.8，取整18發。",
		Arrow_right_.." 當 "..COLORS_KWords2_tw.Rangedspec_rgb_tw.." 層數為 "..COLORS_Numbers.n_10_rgb.." 時，",
		Arrow_right_.." 108x0.33x(10/10)=35.6，取整36發。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-2 - Invigorated(活力煥發) +]--
	local ED_VET_Keystone_3_2_rgb_tw = iu_actit(table.concat({
		"",
		Arrow_right_.." 可與以下耐力恢復效果分開觸發：",
		Arrow_right_.." 靈活應對、重投戰鬥!、目標擊倒!。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-3 - On Your Toes(時刻警覺) +]--
	local ED_VET_Keystone_3_3_rgb_tw = iu_actit(table.concat({
		"",
		Arrow_right_.." 每次恢復有 "..COLORS_Numbers.n_3_rgb..COLORS_Numbers.n_second_rgb.." 的內部冷卻。",
		Arrow_right_.." 各次恢復冷卻獨立計算。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	-- --[+ Keystone 3-4 - Fleeting Fire(集火) +]--
	local ED_VET_Keystone_3_4_rgb_tw = iu_actit(table.concat({
		"",
		Arrow_up_green.." 與以下效果加法疊加：",
		Arrow_up_green.." 狙擊專注、齊射能手、戰術換彈、",
		Arrow_up_green.." 換彈天賦、武器祝福、敏捷興奮劑。",
		this_also_incr_speed_load_com_shotg,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-5 - Conditioning(身體調節) +]--
	local ED_VET_Keystone_3_5_rgb_tw = iu_actit(table.concat({
		"",
		Arrow_right_.." 與以下效果採乘法疊加：",
		Arrow_right_.." 敏捷興奮劑的「耐力消耗減少」。",
		Arrow_right_.." 珍品的「衝刺效率」。",
		Arrow_right_.." 遠程武器的「衝刺效率」。",
		Arrow_right_.." 近戰武器的「衝刺效率」。",
		"",
		Arrow_up_green.." 格擋攻擊的耐力消耗。",
		Arrow_right_.." 珍品的「格擋效率」。",
		Arrow_right_.." 近戰武器的「格擋效率」。",
		"",
		Arrow_up_green.." 推擊與亡命射手期間",
		Arrow_right_.." 的耐力消耗。",
	}, "\n"), enhdesc_col)

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Longshot(遠射) +]--
	local ED_VET_Passive_1_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 提升對12.5米以外敵人的所有傷害。",
		"- 傷害增益會在線性範圍內提升至30米時最高+20%，若距離在12.5米內則無效果：",
		"_______________________________",
		"距離(m):    1-12.5|   15|   20|   25|   30",
		"傷害(%):           0|  ~3|    ~9|  ~15|   20",
		"_______________________________",
		"- 只要老兵與敵人的距離大於12.5米，爆炸與持續傷害(DoTs)也會受到此增益。",
	}, "\n"), enhdesc_col)

	--[+ Passive 2 - Close Order Drill(密集隊形訓練) +]--
	local ED_VET_Passive_2_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		-- "- Reduces Toughness Damage taken by 11% per Ally in Coherency.",
		-- "- Stacks linearly with itself (i.e. 2 Allies = 22%, 3 = 33% Toughness Damage Reduction).",
		stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	--[+ Passive 3 - One Motion(行雲流水) +]--
	local ED_VET_Passive_3_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 提升25%的武器切換速度。",
		"- 減少從切換物品插槽(武器、手雷、興奮劑、醫療包、彈藥箱、書本等)到可使用行為(如射擊、蓄力)的時間。",
		"- 舉例：切換到爆彈槍或冥潮雷射槍時，通常需要1.5秒(左鍵)或1.25秒(副射)才可開始射擊、蓄力；有此天賦後分別縮短為1.2秒與1秒。對其他武器影響可能不顯著。",
	}, "\n"), enhdesc_col)

	--[+ Passive 4 - Exhilarating Takedown(振奮擊倒) +]--
	local ED_VET_Passive_4_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 以遠程弱點擊殺敵人時會觸發兩個效果：",
		"-- 1. 恢復15%最大韌性。",
		"--- 當順劈(Cleave)時，每次擊殺都會觸發，可多次生效。",
		"--"..z_eff_of_this_tougn_rep,
		"-- 2. 獲得最多3層疊加。",
		"--- 疊加持續8秒，可在持續期間內刷新。",
		"--- 每層減少10%的韌性傷害。",
		"--- 疊加間以乘法計算，最高3層時為約27.1%減傷(1-0.9³=0.271)，可與其他減傷Buff乘法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 5 - Volley Adept(齊射能手) +]--
	local ED_VET_Passive_5_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- Buff會一直存在直到進行換彈時被消耗。",
		"- 與「集火」、「狙擊專注」、「戰術換彈」、小型換彈速度天賦、武器專長、武器祝福、以及敏捷興奮劑等以加法疊加。",
		this_also_incr_speed_load_com_shotg,
	}, "\n"), enhdesc_col)

	--[+ Passive 6 - Charismatic(超凡魅力) +]--
	local ED_VET_Passive_6_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"將老兵的基礎協同範圍由8米提升至12米。",
	}, "\n"), enhdesc_col)

	--[+ Passive 7 - Confirmed Kill(擊殺紀錄) +]--
	local ED_VET_Passive_7_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 當擊殺菁英或專家敵人時，觸發兩項效果：",
		"-- 1. 立即恢復10%最大韌性。",
		"--- 若同一擊殺動作順劈多個菁英、專家敵人，會多次觸發。",
		"-- 2. 每次擊殺，於10秒內每秒恢復2%最大韌性。",
		"--- 此持續恢復同樣可在一次擊殺中多次觸發(若順劈)，且可無上限疊加(介面圖示可能無法完全顯示)。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 8 - Tactical Reload(戰術換彈) +]--
	local ED_VET_Passive_8_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 當彈匣尚有子彈時進行換彈，可使換彈動畫速度提升25%。",
		"- 與「集火」、「狙擊專注」、「齊射能手」、小型換彈速度天賦、武器專長、武器祝福、以及敏捷興奮劑等以加法疊加。",
		this_also_incr_speed_load_com_shotg,
	}, "\n"), enhdesc_col)

	--[+ Passive 9 - Out for Blood(嗜血) +]--
	local ED_VET_Passive_9_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 可透過近戰、遠程擊殺以及爆炸擊殺觸發。",
		"- 與「激勵彈幕」、「慰藉精準」、「榮耀獵手」等武器祝福同時生效。",
		"- 當以近戰擊殺觸發此天賦時，可額外恢復5%最大韌性，並與老兵原本的近戰擊殺恢復5%效果累加，共計10%。",
		"- 舉例：同一次近戰攻擊擊殺3個敵人，若老兵最大韌性為184，則恢復184 x (0.15 + 0.15) = 55.2韌性(介面顯示約56)。",
	}, "\n"), enhdesc_col)

	--[+ Passive 10 - Get Back in the Fight!(重投戰鬥!) +]--
	local ED_VET_Passive_10_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 使老兵可不受阻礙地穿過火焰區域。",
	}, "\n"), enhdesc_col)

	--[+ Passive 11 - Catch a Breath(喘息片刻) +]--
	local ED_VET_Passive_11_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		z_eff_of_this_tougn_rep,
		"- 不受地形影響。",
		"- 不會影響協同韌性。",
	}, "\n"), enhdesc_col)

	--[+ Passive 12 - Grenade Tinkerer(手雷專家) +]--
	local ED_VET_Passive_12_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 破片手雷：",
		"-- 不影響爆炸流血(Bleed)的應用。",
		"- 將爆炸中心半徑與最大範圍分別提升至2.5米與12.5米。",
		"- 煙霧手雷：",
		"-- 煙霧雲持續時間由15秒延長至30秒。",
		"- 此天賦提供的手雷傷害加成可與「幹掉它!」、「肉搏戰」（若在30米內）、「求勝心」、「火力掩護」（若由另一位老兵施加）、「遠射」（若在12.5米以外）、「轉移火力!」、「遊擊者」、「優越情節」（針對精英）、「突襲」以及光環「火力小分隊」等傷害增益加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 13 - Covering Fire(火力掩護) +]--
	local ED_VET_Passive_13_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 傷害增益可在持續時間內被刷新。",
		stacks_add_w_oth_dmg,
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 14 - Serrated Blade(鋸齒刀刃) +]--
	local ED_VET_Passive_14_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"近戰攻擊(包含遠程武器的近戰特殊動作)會對敵人施加1層流血。",
		"- 單個目標最多可達16層流血。",
		"- 無法穿透護盾造成流血。",
		"- 流血：",
		"-- 與其他流血效果相同。",
		"-- 持續1.5秒。",
		"-- 每0.5秒造成傷害。",
		"-- 有新層數時會刷新持續時間。",
		"-- 整體對護甲傷害修正略高，對甲殼傷害修正偏低。",
	}, "\n"), enhdesc_col)

	--[+ Passive 15 - Agile Engagement(靈活接敵) +]--
	local ED_VET_Passive_15_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- Buff的持續時間於該次擊殺時開始計算。",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Passive 16 - Kill Zone(殺戮地帶) +]--
	local ED_VET_Passive_16_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg,
		"- 鄰近判斷不受地形影響。",
	}, "\n"), enhdesc_col)

	--[+ Passive 17 - Opening Salvo(首輪齊射) +]--
	local ED_VET_Passive_17_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"舉例：若武器彈匣容量為43發，則前9發子彈(佔比≥80%)具有額外爆擊機率；當彈匣中剩34發(34/43=0.79)時，已低於80%門檻，故不再享受加成。",
	}, "\n"), enhdesc_col)

	--[+ Passive 18 - Field Improvisation(臨場發揮) +]--
	local ED_VET_Passive_18_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 只要老兵存活，任何玩家所放置的彈藥箱或醫療包都會被升級。",
		"- 請注意，治療效果會不斷嘗試抑制魔法書造成的40基礎腐蝕傷害，但此40點無法消除，可能會使醫療包的500基礎血量快速消耗。",
		"- 若玩家在3米範圍內倒地，雖然對倒地玩家的治療消耗量減少70%，恢復量也減少90%，但醫療包的血量依然可能流失很快。",
	}, "\n"), enhdesc_col)

	--[+ Passive 19 - Twinned Blast +]--
	local ED_VET_Passive_19_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 與難度詞綴「閃擊強化」不互動。",
		"- 第二顆手雷的引信時間增加0.3秒。",
	}, "\n"), enhdesc_col)

	--[+ Passive 20 - Demolition Stockpile(炸藥儲備) +]--
	local ED_VET_Passive_20_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 與難度詞綴「閃擊強化」不互動。",
	}, "\n"), enhdesc_col)

	--[+ Passive 21 - Grenadier(擲彈兵) +]--
	local ED_VET_Passive_21_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 與「閃擊強化」提供的加2最大手雷容量採加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 22 - Leave No One Behind(不拋棄不放棄) +]--
	local ED_VET_Passive_22_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 老兵在拉起倒地隊友、從懸崖邊拉起或解救隊友時，互動速度(Interaction Speed)增加20%。",
		"- 與珍品提供的「復活速度(Revive Speed)」加法疊加。",
		"- 不影響已重生隊友(Rescue)的互動速度。",
		"-- 移動速度加成與「滲透」、光環「抵近殺敵」、小型移動速度天賦、以及武器祝福「提速」採加法疊加。",
		"- 「被束縛」包含：被陷阱兵投網、被瘟疫獵犬撲倒、被惡魔宿主、混沌魔物、變種人抓取、被納垢巨獸吞食、懸掛於邊緣、以及復活點等待救援。",
		stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	--[+ Passive 23 - Precision Strikes(堅定不移) +]--
	local ED_VET_Passive_23_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Passive 24 - Determined +]--
	-- local ED_VET_Passive_24_rgb_tw = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Passive 25 - Deadshot(亡命射手) +]--
	local ED_VET_Passive_25_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 相關Buff與「處決者姿態」可加法疊加。",
		"- 武器散射(Spread)加成可與武器祝福「連跑帶打」採加法疊加。",
		"- 後座力(Recoil)加成可與武器祝福「火藥灼傷」採加法疊加。",
		"- 若耐力降為0，此天賦效果消失，並立即產生固定幅度的晃動(Sway)。",
		"- 舉例：老兵最大耐力為7，開鏡瞄準5秒並在此期間射擊兩次，計算方式為 7 - (5 x 0.75 + 2 x 0.25) = 2.75耐力(約39%)。若搭配「身體調節」與敏捷興奮劑則可減少此消耗。",
		"{#color(255, 35, 5)}- 注意此天賦對等離子槍無效。{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Passive 26 - Born Leader(天生領袖) +]--
	local ED_VET_Passive_26_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 此效果無時限，即便老兵韌性為100%也會計算，並針對所有天賦、武器祝福與協同韌性再生的恢復。",
		"- 不會與另一位老兵的同名天賦重複疊加，各自獨立計算。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 27 - Keep Their Heads Down!(讓他們全趴下!) +]--
	local ED_VET_Passive_27_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		-- 中文翻譯
		"- 與「求勝心」、小型壓制天賦、以及武器祝福「火藥灼傷」的相關效果採加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 28 - Reciprocity(互惠互利) +]--
	local ED_VET_Passive_28_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 當成功閃避(Dodge)敵方近、遠程攻擊(除砲手、收割者、狙擊手)與特殊束縛攻擊(瘟疫獵犬撲擊、陷阱兵投網、變種人衝撞抓取)時，獲得疊加(最多5層)。",
		"- 疊加持續8秒，可在期間內刷新。",
		"-- 「成功閃避」指敵人已鎖定玩家，但玩家以正確時機的閃避或滑行動作來迴避該攻擊。",
		"-- 武器祝福「幽靈」、「游擊」與「輕裝」可觸發此天賦(僅對遠程攻擊)。",
	}, "\n"), enhdesc_col)

	--[+ Passive 29 - Duck and Dive(靈活應對) +]--
	local ED_VET_Passive_29_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 具有3秒的內部冷卻。",
		"- 一般閃避(Dodge)、滑行閃避、以及衝刺閃避皆可觸發。",
		"- 此天賦需角色擁有>0耐力才能生效。",
		"- 武器祝福「幽靈」、「游擊」與「輕裝」同樣可觸發。",
	}, "\n"), enhdesc_col)

	--[+ Passive 30 - Fully Loaded(全副武裝) +]--
	local ED_VET_Passive_30_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 使老兵的最大備彈量增加25%。",
		"- 向下取整。",
	}, "\n"), enhdesc_col)

	--[+ Passive 31 - Tactical Awareness +]--
	local ED_VET_Passive_31_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		procs_add_conc_stim_rem_cd_red,
		doesnt_interact_w_c_a_r_from_curio,
	}, "\n"), enhdesc_col)

	--[+ Passive 32 - Desperado(亡命之徒) +]--
	local ED_VET_Passive_32_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 同樣適用遠程武器的近戰特殊動作。",
		"- 爆擊率加成與其他爆擊率來源加法疊加。",
		"- 技巧(Finesse)加成與其他弱點、技巧傷害Buff加法疊加，與武器祝福的威力增益乘法計算。",
	}, "\n"), enhdesc_col)

	--[+ Passive 33 - Shock Trooper(突擊隊) +]--
	local ED_VET_Passive_33_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 若使用冥潮雷射槍、步兵激光槍、重型雷射手槍及偵查雷射槍時，若該射擊為暴擊則不消耗子彈。",
		"- 若武器具有固定暴擊序列(如偵查雷射槍)，則所有暴擊射擊皆不消耗彈藥。",
	}, "\n"), enhdesc_col)

	--[+ Passive 34 - Superiority Complex +]--
	local ED_VET_Passive_34_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Passive 35 - Iron Will +]--
	local ED_VET_Passive_35_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		stacks_mult_w_other_dmg_red_buffs,
		"- 若老兵擁有「責任與榮譽」或狂信徒的「不屈靈魂合唱」提供的黃韌性(額外韌性)，則此天賦會將暫時增加後的最大韌性計入75%門檻。",
		"- 舉例：原本最大韌性198，需保持大於198x0.75=148.5才視為達標；若另外有50點黃韌性，則臨時的最大韌性變為198+50=248，75%門檻為186，直到那50點黃韌性消失為止。",
	}, "\n"), enhdesc_col)

	--[+ Passive 36 - Demolition Team +]--
	local ED_VET_Passive_36_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 無論老兵是否處於協範圍內，都能觸發。",
	}, "\n"), enhdesc_col)

	--[+ Passive 37 - Exploit Weakness +]--
	local ED_VET_Passive_37_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 近戰攻擊若發生暴擊，則對敵人施加脆弱Debuff，提升對甲殼、防彈、狂熱者、不屈類型護甲造成的傷害(包含爆炸與持續傷害)。",
		"- 遠程武器的近戰特殊動作之暴擊同樣可施加此效果。",
		"- 與只增強自身傷害的「撕裂」類Buff以加法疊加。",
		"- 本天賦施加的是「rending_debuff_medium」，可疊加2次，每層提供10%的rending_multiplier。",
		"- 此Debuff與「猛攻」天賦或「護甲之禍」、「開罐器」、「撕扯震盪」、「破碎衝擊」、「超級充能」、「雷鳴」等武器祝福可同時存在、並加法疊加。也與「穿透火焰」武器祝福提供的rending_burn_debuff加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 38 - Onslaught(猛攻) +]--
	local ED_VET_Passive_38_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 重複的近戰與遠程攻擊命中相同目標時，施加脆弱Debuff，提升對甲殼、防彈、狂熱者、不屈類型護甲造成的傷害(含爆炸與DoTs)。",
		"- 於第二下攻擊起觸發。",
		"- 與「趁火打劫」的獨特脆弱，以及其他脆弱與只提升自身傷害的撕裂Buff採加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 39 - Trench Fighter Drill(戰壕兵訓練) +]--
	local ED_VET_Passive_39_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 與「武器專家」及敏捷興奮劑的相關增益採加法疊加。",

	}, "\n"), enhdesc_col)

	--[+ Passive 40 - Skirmisher(遊擊者) +]--
	local ED_VET_Passive_40_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 每持續衝刺(Sprinting)1秒便獲得疊加(最多5層)。",
		"- 疊加可在持續期間內刷新。",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Passive 41 - Competitive Urge +]--
	local ED_VET_Passive_41_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		can_be_refr_dur_active_dur,
		"- 傷害與踉蹌增益與其他相關Buff採加法疊加，與武器祝福提供的威力(Power level)增益乘法計算。",
		"- 壓制(Suppression)增益則與「讓他們全趴下!」、小型壓制天賦，以及武器祝福「火藥灼傷」加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 42 - Rending Strikes +]--
	local ED_VET_Passive_42_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 提供10%的撕裂(Rending)，提升對甲殼、防彈、狂熱者、不屈類型護甲的傷害(包含爆炸與DoTs)。",
		"- 僅影響老兵自身傷害。",
		stacks_add_w_oth_rend_brit,
	}, "\n"), enhdesc_col)

	--[+ Passive 43 - Bring it Down! +]--
	local ED_VET_Passive_43_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 提升對擁有「歐格林」標籤（包含堡壘、碾壓者、收割者）與「巨獸」標籤（包含納垢獸、混沌魔物、惡魔宿主、瘟疫歐格林等）的傷害。",
		stacks_add_w_oth_dmg,
		"- 不會增幅隊長、雙胞胎傷害，因其不具「巨獸」標籤。",
	}, "\n"), enhdesc_col)

--[+ ++OGRYN++ +]--
--[+ +BLITZ+ +]--
	--[+ Blitz 0 - Big Box of Hurt +]--
	local ED_OGR_Blitz_0_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 衝擊傷害：",
		"-- 基礎傷害為 1850。",
		"-- 對「不屈」類型護甲的傷害係數略微提升。",
		"-- 對「甲殼」類型護甲的傷害係數極低。",
		"-- 擁有瞬殺覆蓋效果的敵人包含：砲手、霰彈槍手、渣滓狂怒者、重錘兵、變種人、瘟疫獵犬、瘟疫爆者、腐化者。",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1 - Big Friendly Rock +]--
	local ED_OGR_Blitz_1_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 衝擊傷害：",
		"-- 基礎傷害為 1200。",
		"-- 對「狂熱者」類型的護甲傷害係數略微提升。",
		"-- 對「甲殼」類型的護甲傷害係數極低。",
		"-- 額外對「不屈」類型護甲有較高的靈巧加成。",
		"-- 具有瞬殺覆蓋效果的敵人包含：砲手、霰彈槍手、渣滓狂怒者、變種人、瘟疫獵犬、瘟疫爆者、腐化者。",
		"-- 無法一擊秒殺：重錘兵、歐格林與巨獸。",
		"-- 衝擊傷害會受到撕裂、脆弱的加成，也會受到以下天賦、增益效果的傷害增幅：",
		"---「碎顱者」（敵人處於踉蹌時）、「重量級」（針對歐格林）、「報復時間」、「換彈完畢」、「削弱敵人」（若由另一名歐格林施加）、「重要干擾」，以及小型遠程傷害節點。",
		"- 此攻擊對所有敵人造成高額踉蹌。若要對巨獸及血痂隊長、雙子施加踉蹌，則需命中弱點，且雙子必須在沒有盾的狀態下。",
		"- 歐格林無法撿取手雷彈藥。",
		"- 攻擊不具順劈(Cleave)效果，但投擲物可能在碰撞後彈回，並可能對第二個相鄰敵人造成傷害或擊殺。",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2 - Bombs Away! +]--
	local ED_OGR_Blitz_2_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
    	"- 衝擊傷害：基礎傷害為 1850。對「不屈」類型護甲傷害係數略微提升，對「甲殼」類型護甲傷害係數極低。具有瞬殺覆蓋效果的敵人同上。衝擊傷害會受到撕裂、脆弱的加成，也會受到「碎顱者」、「重量級」、「報復時間」、「換彈完畢」、「削弱敵人」、「重要干擾」等天賦或祝福的增幅。",
    	"- 破片手榴彈：手榴彈爆炸的中心半徑2公尺，最遠波及範圍為8公尺。可在爆心範圍內對所有敵人（包含巨獸與血痂隊長、雙子）造成踉蹌效果（雙子需無盾）。",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3 - Frag Bomb +]--
	local ED_OGR_Blitz_3_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 引信延遲：2秒。",
		"- 爆炸範圍：",
		"-- 2公尺（爆心），16公尺（最大範圍）。",
		"- 爆炸傷害：",
		"-- 爆心基礎傷害：1500，爆心外區域傷害：1250。",
		"-- 除重錘兵、碾壓者、堡壘與巨獸外，可瞬殺其餘所有敵人。",
		"-- 整體對各種護甲類型都有非常高的傷害係數，尤其是對「防彈」、「狂熱者」、「不屈」效果佳。",
		"-- 爆炸傷害會受到撕裂、脆弱、以及「碎顱者」祝福（敵人處於踉蹌時）增幅，也會受到「重量級」、「報復時間」、「削弱敵人」、「重要干擾」等天賦的傷害加成。",
		"- 此爆炸對所有敵人皆可造成高額踉蹌，包括巨獸、血痂隊長、雙子（僅在無盾狀態下）。",
	}, "\n"), enhdesc_col)

	--[+ Aura 0 - Intimidating Presence +]--
	local ED_OGR_Aura_0_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		this_also_buffs_melee_sp_act_guns,
		"- 可與其他傷害增幅效果疊加（加算），並與武器祝福提供的威能加成乘算。",
		doesnt_stack_w_z_same_aura_ogr,
	}, "\n"), enhdesc_col)

	--[+ Aura 1 - Bonebreaker's Aura +]--
	local ED_OGR_Aura_1_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		this_also_buffs_melee_sp_act_guns,
		stacks_add_w_oth_dmg,
		doesnt_stack_w_z_same_aura_ogr,
	}, "\n"), enhdesc_col)

	--[+ Aura 2 - Stay Close! +]--
	local ED_OGR_Aura_2_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 提高歐格林在協同狀態下的基礎韌性恢復量：",
		"_______________________________",
		"友軍: | CTR:             |  5秒後數值:",
		"      1 |  3.75 -> 4.69   | 23.44 (HUD約24)",
		"      2 |  5.63 -> 7.03   | 35.16 (HUD約36)",
		"      3 |  7.50 -> 9.38   | 46.88 (HUD約47)",
		"_______________________________",
		"- 與「關鍵人物」、鑰石「麻木」（含「最堅韌!」）、珍品提供的韌性恢復速度以及老兵的小天賦「鼓舞人心」皆為加算疊加。",
		doesnt_stack_w_z_same_aura_ogr,
	}, "\n"), enhdesc_col)

	--[+ Aura 3 - Coward Culling +]--
	local ED_OGR_Aura_3_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 對歐格林自身來說，此光環提供的傷害增幅與「持續阻擊」等其他相關增幅皆為加算關係，與武器祝福提供的威能加成則為乘算。",
		doesnt_stack_w_z_same_aura_ogr,
		"- 可被壓制(Suppressed)的敵人：低階感染者、渣滓砲手、渣滓伏擊兵、收割者、血痂砲手、血痂射手、血痂伏擊兵。",
	}, "\n"), enhdesc_col)

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Bull Rush +]--
	local ED_OGR_Ability_0_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 衝刺距離：12 公尺。",
		"- 衝刺本身不造成傷害。",
		"- 可透過向後移動鍵取消衝刺。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1 - Indomitable +]-- 
	local ED_OGR_Ability_1_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 衝刺距離：24 公尺。",
		"- 可穿過血痂隊長、雙子的護盾（若無護盾時還會施加踉蹌），僅在遭遇巨獸時停止。",
		"- 衝刺機制：",
		"-- 無法在跳躍或下墜中時使用。",
		"-- 可透過向後移動鍵取消衝刺。",
		"-- 衝刺過程中可稍微調整方向。",
		"-- 衝刺時會推開敵人，包括巨獸（除非直接衝撞）。",
		"-- 衝刺本身不造成傷害。",
		"-- 衝刺結束時，對半徑2.5公尺範圍內的所有敵人造成踉蹌效果。",
		"-- 衝刺結束後，為近戰武器攻擊動畫與移動速度提供+25%增益，持續5秒。",
		"--- 與其他相關增益效果加成為加算關係。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-1 - Stomping Boots +]--
	local ED_OGR_Ability_1_1_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Ability 1-2 - Trample +]--
	local ED_OGR_Ability_1_2_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg,
		"- 當「不屈不撓」衝刺結束時，其造成的踉蹌效果會針對被命中的每個敵人個別產生疊層。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-3 - Pulverise +]--
	local ED_OGR_Ability_1_3_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 可透過盾或血痂隊長、雙子的護盾施加流血(Bleed)。",
		"- 這個流血效果與其他流血來源加成為加算疊層。",
		"- 流血：",
		"-- 與其他流血效果相同，持續1.5秒，每0.5秒跳一次傷害。",
		"-- 疊層時會刷新持續時間。",
		"-- 對所有護甲類型都有不錯的傷害係數，唯對「甲殼」類型較低。",
		"- 流血傷害會受到撕裂、脆弱、武器專長與以下天賦/增益效果的加成：",
		"-- 「重量級」（對歐格林）、「報復時間」、「削弱敵人」、「重要干擾」（若由其他歐格林施加）。",
		"-- 若武器祝福在流血期間或之前觸發，也會提供額外傷害：",
		"--- 近戰：「碎顱者」（敵人踉蹌時）、「殺戮者」與「剁碎者」（流血傷害不會消耗剁碎者的層數）。",
		"--- 遠程：「連續發射」、「死亡噴吐」、「爆發強化」、「烈火熱焰」、「全孔射擊」。",
	}, "\n"), enhdesc_col)

	--[+ Ability 2 - Loyal Protector +]--
	local ED_OGR_Ability_2_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 範圍：半徑 8 公尺。",
		"- 長按技能按鍵可顯示嘲諷範圍，可用格擋動作取消顯示。",
		"- 啟動瞬間可對範圍內所有敵人造成至少輕度的踉蹌，持續1秒。",
		"- 被嘲諷的敵人會出現高亮提示。",
		"- 巨獸與已進入戰鬥的惡魔宿主免疫嘲諷；血痂隊長、雙子可被嘲諷。",
		"- 被嘲諷的遠程敵人（砲手和收割者除外）會轉為進行近戰攻擊。",
		"- 若敵人被「渴求關注」天賦嘲諷，其嘲諷時間不會被此技能刷新。",
		"- 當歐格林被捕獲或撲倒(如瘟疫獵犬、變種人、陷阱兵)時，先前被歐格林嘲諷的該控制型敵人會解除嘲諷。",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-1 - Valuable Distraction +]--
	local ED_OGR_Ability_2_1_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 與「削弱敵人」與鎬子特殊攻擊（10%）產生的敵方承受傷害加成為乘算，與其他傷害增幅或武器祝福提供的威能加成亦可乘算。",
		"- 與其他歐格林的同名天賦無法堆疊。",
		"- 若敵人是被「渴求關注」天賦嘲諷，則不會受到本天賦的傷害加成效果。",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-2 - Go Again +]--
	local ED_OGR_Ability_2_2_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 每次產生踉蹌動作時（如推擊、能使敵人踉蹌的近戰攻擊或特殊近戰攻擊），都會使「忠誠守護者」的剩餘冷卻時間縮短1.125秒。",
    	"- 適用於推擊、造成踉蹌的近戰攻擊，以及擲彈槍與反衝者等武器的特殊近戰。",
    	"- 每次踉蹌動作只會觸發一次減少冷卻，不論同時踉蹌多少敵人。",
		procs_add_conc_stim_rem_cd_red,
		doesnt_interact_w_c_a_r_from_curio,
	}, "\n"), enhdesc_col)

	--[+ Ability 2-3 - Big Lungs +]--
	local ED_OGR_Ability_2_3_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 嘲諷基礎半徑從 8 公尺提升至 12 公尺。",
	}, "\n"), enhdesc_col)

	--[+ Ability 3 - Point-Blank Barrage +]--
	local ED_OGR_Ability_3_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 這個技能會強制角色進行裝填(Reload)，並且一定會觸發「換彈完畢」。",
		"- 裝填速度與「領跑者」小型快速裝填天賦為加算關係。",
		"- 降低移動速度懲罰效果，與武器祝福「咆哮突進」的減速效果為乘算，並可同時與「全神貫注」、「勢不可擋」、老兵的「抵近殺敵」等移動速度加成乘算。",
		"______________________________",
		"距離(公尺):   1-12.5 |  15 |  20 |  25 |  30",
		"傷害(%) :        15 | ~13|  ~9|  ~5|   0",
		"______________________________",
		"-"..stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Ability 3-1 - Bullet Bravado +]--
	local ED_OGR_Ability_3_1_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 若一次射擊動作包含多發子彈（例如使用擲彈兵臂鎧點射），則此段射擊中的每一發子彈都會觸發恢復。",
		"- 使用「貼身火力」時強制裝填也會觸發此恢復。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Ability 3-2 - Hail of Fire +]--
	local ED_OGR_Ability_3_2_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 當持有遠程武器時，可獲得 30% 的撕裂(Rending)加成，提升對「甲殼」、「防彈」、「狂熱者」、「不屈」等各類型裝甲的傷害。",
		"- 僅提升歐格林本身的傷害。",
		"- 同樣影響爆炸傷害及如「飛鏢彈」武器祝福產生的流血DoT，並影響各種爆炸傷害。",
		"- 與其他撕裂增幅與「脆弱」等敵人減益效果可加算疊加。",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-3 - Light 'em Up +]--
	local ED_OGR_Ability_3_3_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 遠程攻擊（包含石塊或手榴彈的直擊）每次命中可對敵人施加2層燃燒，最多可累積31層。",
		"- 可穿透盾牌等防護。",
		"- 燃燒傷害會受到撕裂、脆弱、武器專長，以及下列天賦、增益的加成：",
		"-- 「重量級」（針對歐格林）、「報復時間」、「削弱敵人」與「重要干擾」（若由其他歐格林施加）。",
		"-- 武器祝福（若在燃燒期間或之前觸發）：",
		"--- 近戰：「碎顱者」（踉蹌時）、「殺戮者」、「剁碎者」（燃燒跳傷害不會消耗層數）。",
		"--- 遠程：「連續發射」、「爆發強化」、「死亡噴吐」、「烈火熱焰」、「全孔射擊」。",
	}, "\n"), enhdesc_col)

--[+ +KEYSTONES+ +]--
	--[+ Keystone 1 - Heavy Hitter +]--
	local ED_OGR_Keystone_1_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 每次攻擊無論命中多少敵人，都只會產生1層疊加。",
		"- 疊層持續7.5秒，可在有效時間內刷新。",
		stacks_add_w_oth_dmg,
		"- 同樣適用於擲彈兵臂鎧、全自動霰彈槍(近戰部分)、震盪槍、重型機槍及反衝者等武器的近戰特殊攻擊。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-1 - Just Getting Started +]--
	local ED_OGR_Keystone_1_1_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 與「不屈不撓」、「蠻牛衝撞」、「貼身火力」以及敏捷興奮劑等相關射速、速度加成皆為加算關係。",
		"- 目前在HUD中無圖示顯示。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-2 - Unstoppable +]--
	local ED_OGR_Keystone_1_2_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 例如，當歐格林最大韌性為160且同時裝備「碾碎它們!」時，殺死一個敵人可恢復160×(0.1+0.2)=48點韌性。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-3 - Brutish Momentum +]--
	local ED_OGR_Keystone_1_3_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 輕攻擊無法產生疊層（僅重攻擊可產生），但可延長現有疊層的持續時間。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2 - Feel No Pain +]--
	local ED_OGR_Keystone_2_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 當歐格林處於被撲倒或被捕獲等狀態時無法恢復疊層。",
		"- 在協同狀態下，可使歐格林的韌性恢復量提升最多25%：",
		"_______________________________",
		"友軍: | CTR:             | 5秒後數值:",
		"       1 | 3.75 -> 4.69  | 23.44 (HUD約24)",
		"       2 | 5.63 -> 7.03  | 35.16 (HUD約36)",
		"       3 | 7.50 -> 9.38  | 46.88 (HUD約47)",
		"_______________________________",
		"- 與歐格林的光環「跟緊我!」、「關鍵人物」、鑰石「最堅韌!」、珍品提供的韌性恢復，以及老兵的小天賦「鼓舞人心」皆為加算疊加。",
		"- 同時也能減少韌性所受的傷害。",
		"- 此減傷可疊層並彼此乘算，最高可達~22.4%（1-0.975¹⁰=0.2236），也能與其他減傷效果乘算疊加。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-1 - Pained Outburst +]--
	local ED_OGR_Keystone_2_1_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 若歐格林被捕獲或撲倒（如瘟疫獵犬或陷阱兵等），當「麻木」的最後一層疊層耗盡時，就會觸發擊退爆炸(含小範圍)與韌性恢復。",
		"- 這也使歐格林能自我擺脫瘟疫獵犬。",
		"- 當歐格林倒地時，現有疊層將歸零，會觸發擊退爆炸但不會觸發韌性恢復。",
		"- 此爆炸半徑為2.5公尺，並對除變種人、巨獸、血痂隊長、雙子以外的敵人施加踉蹌。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-2 - Strongest! +]--
	local ED_OGR_Keystone_2_2_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 每次推擊動作皆會產生1層疊加，不論推擊到多少敵人。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-3 - Toughest! +]--
	local ED_OGR_Keystone_2_3_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 使「麻木」在協同狀態下的韌性恢復量加倍，從每層2.5%提升至5%。",
		"- 與歐格林的光環「跟緊我!」、「關鍵人物」、珍品提供的韌性恢復，以及老兵小天賦「鼓舞人心」皆為加算疊加。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3 - Burst Limiter Override +]--
	local ED_OGR_Keystone_3_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 對於擲彈兵臂鎧，左鍵射擊動作會一次性發射多發子彈，且在此天賦觸發時，這些子彈都不會消耗彈藥。",
		"- 對其他武器而言，此天賦則會在每次單發射擊時觸發。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-1 - Maximum Firepower +]--
	local ED_OGR_Keystone_3_1_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 在歐格林基礎的每秒1秒冷卻恢復速度之外，當「爆限超載」觸發時，於2秒內再額外每秒減少2秒冷卻，總計每次觸發可縮短6秒冷卻（2秒內共4秒，再加上基礎2秒）。",
		"-"..can_be_refr_dur_active_dur,
		"- 與專注興奮劑提供的每秒3秒冷卻減少效果同時存在。",
		doesnt_interact_w_c_a_r_from_curio,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-2 - Good Shootin' +]--
	local ED_OGR_Keystone_3_2_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 若一次射擊動作包含多發子彈（如擲彈兵臂鎧或重型機槍的左鍵連射），只要其中一發子彈觸發爆擊，當前這段射擊動作中後續所有子彈都將變為爆擊。",
		"- 使用重型機槍的副射擊模式（持續全自動）時，只要此天賦讓某一發子彈觸發爆擊，則後續6發射擊也都會視為爆擊。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-3 - More Burst Limiter Overrides! +]--
	-- local ED_OGR_Keystone_3_3_rgb_tw = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Furious +]--
	local ED_OGR_Passive_1_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 疊層會持續到下一次近戰攻擊為止，就算該近戰攻擊沒有擊中任何敵人，也會消耗所有疊層。",
		"- 每層可使近戰傷害提高 2.5%。",
		stacks_add_w_oth_dmg,
		"- 擲彈兵臂鎧、全自動霰彈槍的近戰部分、震盪槍、重型機槍以及反衝者的近戰特殊攻擊也可觸發此天賦。",
	}, "\n"), enhdesc_col)

	--[+ Passive 2 - Reloaded and Ready +]--
	local ED_OGR_Passive_2_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg,
		"- 「貼身火力」的強制換彈也會觸發此天賦（即使彈匣已滿）。",
	}, "\n"), enhdesc_col)

	--[+ Passive 3 - The Best Defence +]--
	local ED_OGR_Passive_3_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 同樣適用於擲彈兵臂鎧、全自動霰彈槍 (近戰部分)、震盪槍、重型機槍與反衝者的近戰特殊攻擊。",
		"- 若本次攻擊擊殺其中任意敵人，從此天賦獲得的韌性恢復量會額外疊加到歐格林原本的「近戰擊殺恢復5%最大韌性」機制中。",
		"- 例如，當歐格林的最大韌性為 140，且其中兩名敵人死亡時，歐格林能恢復 140×(0.2+0.05+0.05)=42 點韌性。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 4 - Heavyweight +]--
	local ED_OGR_Passive_4_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 提高對堡壘、碾壓者、瘟疫歐格林與收割者的所有傷害。",
		stacks_add_w_oth_dmg,
		"- 同時減少自身從堡壘兵、碾壓者、瘟疫歐格林與收割者所受到的韌性與生命傷害。",
		stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	--[+ Passive 5 - Steady Grip +]--
	local ED_OGR_Passive_5_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 不會影響協同狀態下的韌性恢復。",
		z_eff_of_this_tougn_rep,
		"- 「Braced」(架設) 指的是遠程武器設定檔中一個動作關鍵詞。",
		"- 使用武器的副開火模式（如瞄準或在瞄準時射擊）時會觸發此增益效果。",
	}, "\n"), enhdesc_col)

	--[+ Passive 6 - Smash 'Em! +]--
	local ED_OGR_Passive_6_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 當你以「重攻擊」並且只命中一個敵人時，可恢復韌性。",
		"- 同樣適用於擲彈兵臂鎧、全自動霰彈槍(近戰部分)、震盪槍、重型機槍與反衝者的近戰特殊攻擊。",
		"- 若擊中的那名敵人死亡，則本天賦恢復的韌性會與「近戰擊殺恢復5% 最大韌性」疊加。",
		"- 舉例來說，若歐格林的最大韌性為90、且攻擊讓目標死亡，將恢復90×(0.2+0.05)=22.5點韌性。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 7 - Lynchpin +]--
	local ED_OGR_Passive_7_rgb_tw = iu_actit(table.concat({
		ppp___ppp,

		"- 在協同狀態下，可使歐格林的韌性恢復量基礎值額外提高50%：",
		"_______________________________",
		"友軍: | CTR:               | 5秒後恢復:",
		"       1 |  3.75 -> 5.63   | 28.13 (HUD約29)",
		"       2 |  5.63 -> 8.44   | 42.19 (HUD約43)",
		"       3 |  7.50 -> 11.25  | 56.25 (HUD約57)",
		"_______________________________",
		"- 與歐格林的光環「跟緊我!」、鑰石「麻木」（含「最堅韌!」）、珍品帶來的韌性恢復速度、以及老兵的小天賦「鼓舞人心」皆為加算疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 8 - Slam +]--
	local ED_OGR_Passive_8_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 與「嘎嘎!」以及其他武器祝福的相關踉蹌增幅為加算疊加，與武器祝福提供的威能(Power)加成則為乘算。",
	}, "\n"), enhdesc_col)

	--[+ Passive 9 - Soften Them Up +]--
	local ED_OGR_Passive_9_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		can_be_refr_dur_active_dur,
		"- 同樣可透過擲彈兵臂鎧、全自動霰彈槍(近戰部分)、震盪槍、重型機槍、反衝者的近戰特殊攻擊來施加。",
		"- 不會與其他歐格林的同名天賦效果堆疊。",
		"- 此debuff與戰鎬特殊攻擊所提供的「敵人受傷害+10%」加成為加算，與「重要干擾」為乘算。",
		"- 進行最終計算時，會與自身的傷害增幅或武器祝福提供的威能加成呈乘算關係。",
	}, "\n"), enhdesc_col)

	--[+ Passive 10 - Crunch! +]--
	local ED_OGR_Passive_10_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 與其他傷害增幅、踉蹌增幅 (如「猛擊」及武器祝福) 為加算疊加，與武器祝福的威能加成為乘算。",
		"- 「完全續力」指的是必須長按攻擊鍵，直到重攻擊自動釋放。",
		"- 僅適用於近戰武器的重攻擊 (含擲彈兵臂鎧的重攻擊)。",
	}, "\n"), enhdesc_col)

	--[+ Passive 11 - Batter +]--
	local ED_OGR_Passive_11_rgb_tw = iu_actit(table.concat({
		ppp___ppp,

		"- 無法透過盾牌對目標施加流血。",
		"- 同樣適用於擲彈兵臂鎧、全自動霰彈槍(近戰部分)、震盪槍、重型機槍與反衝者的近戰特殊攻擊。",
		"- 流血：與其他流血效果相同，持續1.5秒，每0.5秒結算一次傷害；若流血層數再度疊加則刷新持續時間，對「甲殼」類型護甲傷害較低，其餘護甲類型傷害係數佳。",
		"- 流血傷害會受到撕裂、脆弱、武器專長的加成，並受到以下天賦、效果的增幅：",
		"-- 「重量級」（對歐格林）、「報復時間」、「削弱敵人」、「重要干擾」（若由其他歐格林施加）。",
		"-- 若武器祝福在流血期間或之前觸發，則進一步增傷：",
		"--- 近戰：「碎顱者」（敵人踉蹌時）、「殺戮者」、「剁碎者」（流血傷害不消耗該疊層）。",
		"--- 遠程：「連續發射」、「爆發強化」、「死亡噴吐」、「烈火熱焰」、「全孔射擊」。",
	}, "\n"), enhdesc_col)

	--[+ Passive 12 - Pacemaker +]--
	local ED_OGR_Passive_12_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 與「貼身火力」及小型裝填速度節點、武器專長、敏捷興奮劑 等相關增益為加算疊加。",
		"- 可透過近戰或遠程攻擊、推擊、爆炸、以及具踉蹌效果的技能（如「忠誠守護者」、「痛楚爆發」）觸發。",
	}, "\n"), enhdesc_col)

	--[+ Passive 13 - Ammo Stash +]--
	-- local ED_OGR_Passive_13_rgb_tw = iu_actit(table.concat({ },"\n"), enhdesc_col)

	--[+ Passive 14 - Hard Knocks +]--
	local ED_OGR_Passive_14_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 也可增益擲彈兵臂鎧、全自動霰彈槍(近戰部分)、震盪槍、重型機槍、反衝者的近戰特殊攻擊。",
		stacks_add_w_oth_dmg,

		"- 當歐格林以近戰、遠程攻擊、推擊、爆炸或帶有踉蹌效果的技能攻擊敵人時，若成功施加踉蹌，則會產生疊層。",
		"- 不同敵人被踉蹌時，產生的疊層數量不同：",
		"_______________________________",
		"疊層數量: |敵人種類:",
		"1            | 呻吟者,瘟疫行者,打手,",
		"              | 追蹤者,血痂射手,狙擊手.",
		"2            | 砲手,轟炸者,火焰兵,",
		"              | 瘟疫爆者,霰彈槍手,",
		"              | 陷阱兵,雙子.",
		"3            | 輾壓者,狂怒者,瘟疫獵犬,",
		"              | 瘟疫獵犬(mutator).",
		"5            | 堡壘, 輾壓者, 收割者,",
		"              | 變種人, 變種人 (mutator).",
		"8            | 惡魔宿主, 隊長.",
		"10           | 瘟疫歐格林,渾沌魔物,",
		"               | 納垢巨獸.",
		"_______________________________",

	}, "\n"), enhdesc_col)

	--[+ Passive 15 - Too Stubborn to Die +]--
	local ED_OGR_Passive_15_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 當歐格林的生命值低於最大生命的 33% 時，透過近戰擊殺、天賦和特定武器祝福（僅限「Momentum」）獲得的韌性恢復量會加倍。",
		"- 不適用於協同狀態下的韌性恢復。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 16 - Delight in Destruction +]--
	local ED_OGR_Passive_16_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 減少歐格林所受到的韌性與生命傷害。",
		"- 偵測距離8公尺內是否有受流血效果的敵人。",
		"- 每秒檢查一次周圍的流血敵人。",
		stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	--[+ Passive 17 - Attention Seeker +]--
	local ED_OGR_Passive_17_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 推擊敵人、阻擋敵人近戰攻擊或使用盾牌阻擋敵人的遠程攻擊都會迫使目標轉而攻擊歐格林。",
		"- 嘲諷遠程敵人後，會迫使他們改用近戰攻擊（砲手、收割者除外，可影響血痂隊長、雙子，但對巨獸無效。",
		"- 被嘲諷的敵人會被高亮顯示。",
		"- 嘲諷效果持續 8 秒。",
		"- 持續時間內無法被刷新。",
		"- 如果使用「忠誠守護者」進行嘲諷，則會把此天賦的 8 秒覆蓋為 15 秒。",
		"- 當歐格林被捕獲或撲倒時，若先前曾嘲諷到瘟疫獵犬、變種人、陷阱兵等控制型敵人，該嘲諷效果會被移除。",
	}, "\n"), enhdesc_col)

	--[+ Passive 18 - Get Stuck In +]--
	local ED_OGR_Passive_18_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 與「不屈不撓」、「蠻牛衝撞」及「勢不可擋動能」的移動速度加成為加算，與「貼身火力」架設 (Braced) 狀態時的減速效果則為乘算。",
		"- 也會讓歐格林免疫來自敵人近戰與遠程攻擊造成的暈眩，並免疫壓制(Suppression)。",
	}, "\n"), enhdesc_col)

	--[+ Passive 19 - Towering Presence +]--
	local ED_OGR_Passive_19_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 將歐格林的協同基礎半徑從 8 公尺提升至 12 公尺。",
	}, "\n"), enhdesc_col)

	--[+ Passive 20 - Unstoppable Momentum +]--
	local ED_OGR_Passive_20_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		can_be_refr_dur_active_dur,
		"- 與「不屈不撓」、「蠻牛衝撞」及「跟緊我!」的移動速度加成為加算，並與「貼身火力」及武器祝福「咆哮突進」的移動速度懲罰減少為乘算。",
	}, "\n"), enhdesc_col)

	--[+ Passive 21 - No Stopping Me! +]--
	local ED_OGR_Passive_21_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 讓歐格林在進行近戰攻擊的「蓄力階段」時免於被外力打斷，使攻擊不會因受到打擊而被取消。",
		"- 「Windup」是武器設定檔中的一種類型，指的就是揮擊真正開始前的預備動作。",
	}, "\n"), enhdesc_col)

	--[+ Passive 22 - Dominate +]--
	local ED_OGR_Passive_22_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 殺死菁英後，讓歐格林在接下來的10秒內獲得10%的撕裂加成，提高對「甲殼」、「防彈」、「狂熱者」、「不屈」等護甲類型的傷害，包括爆炸或流血、燃燒等持續傷害。",
		can_be_refr_dur_active_dur,
		"- 僅影響歐格林自身的傷害。",
		stacks_add_w_oth_rend_brit,
	}, "\n"), enhdesc_col)

	--[+ Passive 23 - Payback Time +]--
	local ED_OGR_Passive_23_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 當歐格林受到近戰傷害或格擋近戰攻擊後，可使接下來的所有傷害提升。",
		stacks_add_w_oth_dmg,
		can_be_refr_dur_active_dur,
	}, "\n"), enhdesc_col)

	--[+ Passive 24 - Bruiser +]--
	local ED_OGR_Passive_24_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 若歐格林本人擊殺菁英，或協同範圍內的友軍擊殺菁英，都能觸發本天賦。",
		"- 對「不屈不撓」、「蠻牛衝撞」的冷卻可減少1.2秒；對「忠誠守護者」可減少1.8秒；對「貼身火力」可減少3.2秒。",
		procs_add_conc_stim_rem_cd_red,
		doesnt_interact_w_c_a_r_from_curio,
	}, "\n"), enhdesc_col)

	--[+ Passive 25 - Big Boom +]--
	local ED_OGR_Passive_25_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 與武器祝福「狂轟猛炸」的爆炸範圍增幅效果為加算。",
		"- 可同時增加爆炸的內爆心與外緣最大範圍。",
		"- 此天賦也會增大近戰攻擊產生的爆炸範圍（例如動力錘在啟動時的衝擊波），並與武器祝福「能量湧動」加算。",
	}, "\n"), enhdesc_col)

	--[+ Passive 26 - Massacre +]--
	local ED_OGR_Passive_26_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 當敵人被歐格林的近戰、遠程攻擊、爆炸或持續傷害(DoTs)擊殺，或被歐格林推下高處摔死時，都會產生疊層。",
		"- 疊層持續10秒，可在有效時間內刷新。",
		"- 每層可為能夠爆擊的所有攻擊提升 1% 爆擊率。",
		"- 與其他爆擊率來源為加算疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 27 - Implacable +]--
	local ED_OGR_Passive_27_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 在近戰攻擊的「蓄力階段」減少所受的韌性及生命傷害。",
		stacks_mult_w_other_dmg_red_buffs,
		"- 「Windup」指揮擊前的預備動作（通常在武器設定檔中標明）。",
		"- 實際上，所有近戰攻擊（含輕攻擊）在蓄力階段都會啟動本天賦，只是輕攻擊的蓄力時間很短，因而主要於重攻擊時較為明顯。",
		"- 目前尚無 HUD 圖示顯示。",
	}, "\n"), enhdesc_col)

	--[+ Passive 28 - No Pushover +]--
	local ED_OGR_Passive_28_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 讓歐格林的近戰推擊可以使除變種人、巨獸與雙子外的所有敵人產生踉蹌（血痂隊長若無護盾時也可被推）。",
	}, "\n"), enhdesc_col)

	--[+ Passive 29 - Won't Give In +]--
	local ED_OGR_Passive_29_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 當20公尺範圍內每有一名隊友倒地或被捕獲，歐格林受到的韌性與生命傷害都減少 20%。",
		"- 線性疊加：1名倒地隊友=20%減傷，2名=40%，3名=60%。",
		stacks_mult_w_other_dmg_red_buffs,
		"- 「喪失行動能力」包含：被陷阱兵網住、被瘟疫獵犬撲倒、被變種人擊飛、被惡魔宿主或混沌魔物抓住、被納垢巨獸吞食、或掛在懸崖等待救援、或已重生待救等狀態。",
	}, "\n"), enhdesc_col)

	--[+ Passive 30 - Mobile Emplacement +]--
	local ED_OGR_Passive_30_rgb_tw = iu_actit(table.concat({
		ppp___ppp,
		"- 當歐格林處於架設 (Braced) 狀態時，可減少自身受到的韌性與生命傷害 20%。",
		stacks_mult_w_other_dmg_red_buffs,
		"- 「Braced」(架設) 指遠程武器的某一特殊動作模式。",
		"- 使用遠程武器的副開火模式（例如進入瞄準或在瞄準時射擊）時，即會啟動此增益效果。",
	}, "\n"), enhdesc_col)

	-- local  = iu_actit(table.concat({
		-- "\n+++-------------------------------------------------+++",
		-- "",
	-- }, "\n"), enhdesc_col)

-- In the list below, you also need to add a new entry or change an old one.
return {
	ED_VET_Blitz_0_rgb_tw = ED_VET_Blitz_0_rgb_tw,
	ED_VET_Blitz_1_rgb_tw = ED_VET_Blitz_1_rgb_tw,
	ED_VET_Blitz_1_1_rgb_tw = ED_VET_Blitz_1_1_rgb_tw,
	ED_VET_Blitz_1_2_rgb_tw = ED_VET_Blitz_1_2_rgb_tw,
	ED_VET_Blitz_2_rgb_tw = ED_VET_Blitz_2_rgb_tw,
	ED_VET_Blitz_2_1_rgb_tw = ED_VET_Blitz_2_1_rgb_tw,
	ED_VET_Blitz_2_2_rgb_tw = ED_VET_Blitz_2_2_rgb_tw,
	ED_VET_Blitz_2_3_rgb_tw = ED_VET_Blitz_2_3_rgb_tw,
	ED_VET_Blitz_3_rgb_tw = ED_VET_Blitz_3_rgb_tw,
	ED_VET_Blitz_3_1_rgb_tw = ED_VET_Blitz_3_1_rgb_tw,
	ED_VET_Blitz_3_2_rgb_tw = ED_VET_Blitz_3_2_rgb_tw,

	ED_VET_Aura_0_rgb_tw = ED_VET_Aura_0_rgb_tw,
	ED_VET_Aura_1_rgb_tw = ED_VET_Aura_1_rgb_tw,
	ED_VET_Aura_2_rgb_tw = ED_VET_Aura_2_rgb_tw,
	ED_VET_Aura_3_rgb_tw = ED_VET_Aura_3_rgb_tw,

	ED_VET_Ability_0_rgb_tw = ED_VET_Ability_0_rgb_tw,
	ED_VET_Ability_1_rgb_tw = ED_VET_Ability_1_rgb_tw,
	ED_VET_Ability_1_1_rgb_tw = ED_VET_Ability_1_1_rgb_tw,
	ED_VET_Ability_1_2_rgb_tw = ED_VET_Ability_1_2_rgb_tw,
	ED_VET_Ability_1_3_rgb_tw = ED_VET_Ability_1_3_rgb_tw,
	ED_VET_Ability_1_4_rgb_tw = ED_VET_Ability_1_4_rgb_tw,
	ED_VET_Ability_2_rgb_tw = ED_VET_Ability_2_rgb_tw,
	ED_VET_Ability_2_1_rgb_tw = ED_VET_Ability_2_1_rgb_tw,
	ED_VET_Ability_2_2_rgb_tw = ED_VET_Ability_2_2_rgb_tw,
	ED_VET_Ability_2_3_rgb_tw = ED_VET_Ability_2_3_rgb_tw,
	ED_VET_Ability_3_rgb_tw = ED_VET_Ability_3_rgb_tw,
	ED_VET_Ability_3_1_rgb_tw = ED_VET_Ability_3_1_rgb_tw,
	ED_VET_Ability_3_2_rgb_tw = ED_VET_Ability_3_2_rgb_tw,
	ED_VET_Ability_3_3_rgb_tw = ED_VET_Ability_3_3_rgb_tw,
	ED_VET_Ability_3_4_rgb_tw = ED_VET_Ability_3_4_rgb_tw,
	ED_VET_Ability_3_5_rgb_tw = ED_VET_Ability_3_5_rgb_tw,

	ED_VET_Keystone_1_rgb_tw = ED_VET_Keystone_1_rgb_tw,
	ED_VET_Keystone_1_1_rgb_tw = ED_VET_Keystone_1_1_rgb_tw,
	ED_VET_Keystone_1_2_rgb_tw = ED_VET_Keystone_1_2_rgb_tw,
	ED_VET_Keystone_1_3_rgb_tw = ED_VET_Keystone_1_3_rgb_tw,
	ED_VET_Keystone_1_4_rgb_tw = ED_VET_Keystone_1_4_rgb_tw,
	ED_VET_Keystone_2_rgb_tw = ED_VET_Keystone_2_rgb_tw,
	ED_VET_Keystone_2_1_rgb_tw = ED_VET_Keystone_2_1_rgb_tw,
	ED_VET_Keystone_2_2_rgb_tw = ED_VET_Keystone_2_2_rgb_tw,
	ED_VET_Keystone_2_3_rgb_tw = ED_VET_Keystone_2_3_rgb_tw,
	ED_VET_Keystone_3_rgb_tw = ED_VET_Keystone_3_rgb_tw,
	ED_VET_Keystone_3_1_rgb_tw = ED_VET_Keystone_3_1_rgb_tw,
	ED_VET_Keystone_3_2_rgb_tw = ED_VET_Keystone_3_2_rgb_tw,
	ED_VET_Keystone_3_3_rgb_tw = ED_VET_Keystone_3_3_rgb_tw,
	ED_VET_Keystone_3_4_rgb_tw = ED_VET_Keystone_3_4_rgb_tw,
	ED_VET_Keystone_3_5_rgb_tw = ED_VET_Keystone_3_5_rgb_tw,

	ED_VET_Passive_0_rgb_tw = ED_VET_Passive_0_rgb_tw,
	ED_VET_Passive_1_rgb_tw = ED_VET_Passive_1_rgb_tw,
	ED_VET_Passive_2_rgb_tw = ED_VET_Passive_2_rgb_tw,
	ED_VET_Passive_3_rgb_tw = ED_VET_Passive_3_rgb_tw,
	ED_VET_Passive_4_rgb_tw = ED_VET_Passive_4_rgb_tw,
	ED_VET_Passive_5_rgb_tw = ED_VET_Passive_5_rgb_tw,
	ED_VET_Passive_6_rgb_tw = ED_VET_Passive_6_rgb_tw,
	ED_VET_Passive_7_rgb_tw = ED_VET_Passive_7_rgb_tw,
	ED_VET_Passive_8_rgb_tw = ED_VET_Passive_8_rgb_tw,
	ED_VET_Passive_9_rgb_tw = ED_VET_Passive_9_rgb_tw,
	ED_VET_Passive_10_rgb_tw = ED_VET_Passive_10_rgb_tw,
	ED_VET_Passive_11_rgb_tw = ED_VET_Passive_11_rgb_tw,
	ED_VET_Passive_12_rgb_tw = ED_VET_Passive_12_rgb_tw,
	ED_VET_Passive_13_rgb_tw = ED_VET_Passive_13_rgb_tw,
	ED_VET_Passive_14_rgb_tw = ED_VET_Passive_14_rgb_tw,
	ED_VET_Passive_15_rgb_tw = ED_VET_Passive_15_rgb_tw,
	ED_VET_Passive_16_rgb_tw = ED_VET_Passive_16_rgb_tw,
	ED_VET_Passive_17_rgb_tw = ED_VET_Passive_17_rgb_tw,
	ED_VET_Passive_18_rgb_tw = ED_VET_Passive_18_rgb_tw,
	ED_VET_Passive_19_rgb_tw = ED_VET_Passive_19_rgb_tw,
	ED_VET_Passive_20_rgb_tw = ED_VET_Passive_20_rgb_tw,
	ED_VET_Passive_21_rgb_tw = ED_VET_Passive_21_rgb_tw,
	ED_VET_Passive_22_rgb_tw = ED_VET_Passive_22_rgb_tw,
	ED_VET_Passive_23_rgb_tw = ED_VET_Passive_23_rgb_tw,
	ED_VET_Passive_24_rgb_tw = ED_VET_Passive_24_rgb_tw,
	ED_VET_Passive_25_rgb_tw = ED_VET_Passive_25_rgb_tw,
	ED_VET_Passive_26_rgb_tw = ED_VET_Passive_26_rgb_tw,
	ED_VET_Passive_27_rgb_tw = ED_VET_Passive_27_rgb_tw,
	ED_VET_Passive_28_rgb_tw = ED_VET_Passive_28_rgb_tw,
	ED_VET_Passive_29_rgb_tw = ED_VET_Passive_29_rgb_tw,
	ED_VET_Passive_30_rgb_tw = ED_VET_Passive_30_rgb_tw,
	ED_VET_Passive_31_rgb_tw = ED_VET_Passive_31_rgb_tw,
	ED_VET_Passive_32_rgb_tw = ED_VET_Passive_32_rgb_tw,
	ED_VET_Passive_33_rgb_tw = ED_VET_Passive_33_rgb_tw,
	ED_VET_Passive_34_rgb_tw = ED_VET_Passive_34_rgb_tw,
	ED_VET_Passive_35_rgb_tw = ED_VET_Passive_35_rgb_tw,
	ED_VET_Passive_36_rgb_tw = ED_VET_Passive_36_rgb_tw,
	ED_VET_Passive_37_rgb_tw = ED_VET_Passive_37_rgb_tw,
	ED_VET_Passive_38_rgb_tw = ED_VET_Passive_38_rgb_tw,
	ED_VET_Passive_39_rgb_tw = ED_VET_Passive_39_rgb_tw,
	ED_VET_Passive_40_rgb_tw = ED_VET_Passive_40_rgb_tw,
	ED_VET_Passive_41_rgb_tw = ED_VET_Passive_41_rgb_tw,
	ED_VET_Passive_42_rgb_tw = ED_VET_Passive_42_rgb_tw,
	ED_VET_Passive_43_rgb_tw = ED_VET_Passive_43_rgb_tw,

	ED_OGR_Blitz_0_rgb_tw = ED_OGR_Blitz_0_rgb_tw,
	ED_OGR_Blitz_1_rgb_tw = ED_OGR_Blitz_1_rgb_tw,
	ED_OGR_Blitz_2_rgb_tw = ED_OGR_Blitz_2_rgb_tw,
	ED_OGR_Blitz_3_rgb_tw = ED_OGR_Blitz_3_rgb_tw,

	ED_OGR_Aura_0_rgb_tw = ED_OGR_Aura_0_rgb_tw,
	ED_OGR_Aura_1_rgb_tw = ED_OGR_Aura_1_rgb_tw,
	ED_OGR_Aura_2_rgb_tw = ED_OGR_Aura_2_rgb_tw,
	ED_OGR_Aura_3_rgb_tw = ED_OGR_Aura_3_rgb_tw,

	ED_OGR_Ability_0_rgb_tw = ED_OGR_Ability_0_rgb_tw,
	ED_OGR_Ability_1_rgb_tw = ED_OGR_Ability_1_rgb_tw,
	ED_OGR_Ability_1_1_rgb_tw = ED_OGR_Ability_1_1_rgb_tw,
	ED_OGR_Ability_1_2_rgb_tw = ED_OGR_Ability_1_2_rgb_tw,
	ED_OGR_Ability_1_3_rgb_tw = ED_OGR_Ability_1_3_rgb_tw,
	ED_OGR_Ability_2_rgb_tw = ED_OGR_Ability_2_rgb_tw,
	ED_OGR_Ability_2_1_rgb_tw = ED_OGR_Ability_2_1_rgb_tw,
	ED_OGR_Ability_2_2_rgb_tw = ED_OGR_Ability_2_2_rgb_tw,
	ED_OGR_Ability_2_3_rgb_tw = ED_OGR_Ability_2_3_rgb_tw,
	ED_OGR_Ability_3_rgb_tw = ED_OGR_Ability_3_rgb_tw,
	ED_OGR_Ability_3_1_rgb_tw = ED_OGR_Ability_3_1_rgb_tw,
	ED_OGR_Ability_3_2_rgb_tw = ED_OGR_Ability_3_2_rgb_tw,
	ED_OGR_Ability_3_3_rgb_tw = ED_OGR_Ability_3_3_rgb_tw,
	ED_OGR_Ability_3_4_rgb_tw = ED_OGR_Ability_3_4_rgb_tw,

	ED_OGR_Keystone_1_rgb_tw = ED_OGR_Keystone_1_rgb_tw,
	ED_OGR_Keystone_1_1_rgb_tw = ED_OGR_Keystone_1_1_rgb_tw,
	ED_OGR_Keystone_1_2_rgb_tw = ED_OGR_Keystone_1_2_rgb_tw,
	ED_OGR_Keystone_1_3_rgb_tw = ED_OGR_Keystone_1_3_rgb_tw,
	ED_OGR_Keystone_2_rgb_tw = ED_OGR_Keystone_2_rgb_tw,
	ED_OGR_Keystone_2_1_rgb_tw = ED_OGR_Keystone_2_1_rgb_tw,
	ED_OGR_Keystone_2_2_rgb_tw = ED_OGR_Keystone_2_2_rgb_tw,
	ED_OGR_Keystone_2_3_rgb_tw = ED_OGR_Keystone_2_3_rgb_tw,
	ED_OGR_Keystone_3_rgb_tw = ED_OGR_Keystone_3_rgb_tw,
	ED_OGR_Keystone_3_1_rgb_tw = ED_OGR_Keystone_3_1_rgb_tw,
	ED_OGR_Keystone_3_2_rgb_tw = ED_OGR_Keystone_3_2_rgb_tw,
	ED_OGR_Keystone_3_3_rgb_tw = ED_OGR_Keystone_3_3_rgb_tw,

	ED_OGR_Passive_0_rgb_tw = ED_OGR_Passive_0_rgb_tw,
	ED_OGR_Passive_1_rgb_tw = ED_OGR_Passive_1_rgb_tw,
	ED_OGR_Passive_2_rgb_tw = ED_OGR_Passive_2_rgb_tw,
	ED_OGR_Passive_3_rgb_tw = ED_OGR_Passive_3_rgb_tw,
	ED_OGR_Passive_4_rgb_tw = ED_OGR_Passive_4_rgb_tw,
	ED_OGR_Passive_5_rgb_tw = ED_OGR_Passive_5_rgb_tw,
	ED_OGR_Passive_6_rgb_tw = ED_OGR_Passive_6_rgb_tw,
	ED_OGR_Passive_7_rgb_tw = ED_OGR_Passive_7_rgb_tw,
	ED_OGR_Passive_8_rgb_tw = ED_OGR_Passive_8_rgb_tw,
	ED_OGR_Passive_9_rgb_tw = ED_OGR_Passive_9_rgb_tw,
	ED_OGR_Passive_10_rgb_tw = ED_OGR_Passive_10_rgb_tw,
	ED_OGR_Passive_11_rgb_tw = ED_OGR_Passive_11_rgb_tw,
	ED_OGR_Passive_12_rgb_tw = ED_OGR_Passive_12_rgb_tw,
	ED_OGR_Passive_13_rgb_tw = ED_OGR_Passive_13_rgb_tw,
	ED_OGR_Passive_14_rgb_tw = ED_OGR_Passive_14_rgb_tw,
	ED_OGR_Passive_15_rgb_tw = ED_OGR_Passive_15_rgb_tw,
	ED_OGR_Passive_16_rgb_tw = ED_OGR_Passive_16_rgb_tw,
	ED_OGR_Passive_17_rgb_tw = ED_OGR_Passive_17_rgb_tw,
	ED_OGR_Passive_18_rgb_tw = ED_OGR_Passive_18_rgb_tw,
	ED_OGR_Passive_19_rgb_tw = ED_OGR_Passive_19_rgb_tw,
	ED_OGR_Passive_20_rgb_tw = ED_OGR_Passive_20_rgb_tw,
	ED_OGR_Passive_21_rgb_tw = ED_OGR_Passive_21_rgb_tw,
	ED_OGR_Passive_22_rgb_tw = ED_OGR_Passive_22_rgb_tw,
	ED_OGR_Passive_23_rgb_tw = ED_OGR_Passive_23_rgb_tw,
	ED_OGR_Passive_24_rgb_tw = ED_OGR_Passive_24_rgb_tw,
	ED_OGR_Passive_25_rgb_tw = ED_OGR_Passive_25_rgb_tw,
	ED_OGR_Passive_26_rgb_tw = ED_OGR_Passive_26_rgb_tw,
	ED_OGR_Passive_27_rgb_tw = ED_OGR_Passive_27_rgb_tw,
	ED_OGR_Passive_28_rgb_tw = ED_OGR_Passive_28_rgb_tw,
	ED_OGR_Passive_29_rgb_tw = ED_OGR_Passive_29_rgb_tw,
	ED_OGR_Passive_30_rgb_tw = ED_OGR_Passive_30_rgb_tw,
}