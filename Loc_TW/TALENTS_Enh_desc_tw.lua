---@diagnostic disable: undefined-global
local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text



			-- ============ DO NOT DO ANYTHING ABOVE! ============ --

-- Check the length of the text in the game and adjust it so that the descriptions do not extend the card beyond the screen.
-- If you can't shorten it, you can simply hide the least useful line by adding "--" before that line.
-- Extended descriptions have a lower priority than the main description, imho.

-- If you added/changed something, then you need to duplicate/change the same entry in the list below.
-- For example, you change "ED_PSY_Blitz_0_rgb" to "ED_PSY_Blitz_0_rgb_urlang", then at the bottom you need to find (CTRL+F) the "ED_PSY_Blitz_0_rgb" entries and also rename them from "ED_PSY_Blitz_0_rgb = ED_PSY_Blitz_0_rgb," to "ED_PSY_Blitz_0_rgb_urlang = ED_PSY_Blitz_0_rgb_urlang,".
-- If you add a new entry (ex. MyEntry_rgb), just duplicate it in the list below (MyEntry_rgb = MyEntry_rgb,).

COLORS_KWords_tw = mod:io_dofile("Enhanced_descriptions/Loc_TW/COLORS_KWords_tw") -- Traditional Chinese

local ppp___ppp = "\n+++-------------------------------------------------+++"
local become_invis_drop_all_enemy_aggro = "- 進入隱形狀態並解除所有敵人的仇恨：若可能，近戰敵人會立即將仇恨轉移至其他目標；正在射擊的遠程敵人則會停止射擊，隨後若可能會重新鎖定目標。"
local can_be_refr_dur_active_dur = "- 可在效果持續期間內重新觸發。"
local doesnt_stack_aura_psy = "- 不會與另一位靈能者的相同光環效果疊加。"
local doesnt_interact_w_c_a_r_from_curio = "- 不會與珍品提供的 "..COLORS_KWords_tw.Combat_ability_cd_rgb.." 效果互動，因為該效果只會縮短戰鬥技能的最大冷卻時間。"
local dmg_is_incr_by = "- 傷害會受到撕裂、脆弱、「碎顱者」祝福（針對被踉蹌的敵人）以及「靈能強化」、「至天高之力」、「亞空間震波」、「擾動命運」、「惡意攻勢」、「完美時機」、「占卜者的注視」（含「預知未來」）、「亞空間騎士」、光環「動能釋放」（對精英單位）和小型遠程傷害節點的增益所提升。"
local procs_on_succss_dodging = "- 在成功閃避敵方近戰或遠程攻擊（不含砲手、收割者、狙擊手），以及壓制型攻擊（瘟疫獵犬跳撲、陷阱兵網子、變種人擄抓）時觸發。"
local red_both_tghns_n_health_dmg = "- 同時減少所受到的韌性與生命值傷害。"
local stacks_add_w_oth_dmg = "- 與其他傷害增益做加法疊加，並與武器祝福提供的力量等級加成做乘法疊加。"
local stacks_mult_w_other_dmg_red_buffs = "- 與其他傷害減免增益做乘法疊加。"
local succss_dodge_means = "- 「成功閃避」指的是透過適時的閃避或滑行動作，閃避已鎖定玩家的敵方攻擊。"
local warp_attc_refers_to = "- 「亞空間攻擊」指的是所有傷害類型標示為「亞空間傷害」的攻擊，包括靈能劍的啟動攻擊、靈能法杖的主、副攻擊、感電（「懲戒」、電能法杖的副攻擊、電擊槌的特殊動作）、「靈魂之火」、「顱腦崩裂」、「顱腦爆裂」、「靈能攻擊」以及「刺耳尖嘯」。"
local z_eff_of_this_tougn_rep = "- 此韌性回復的效能會受到某些玩家負面狀態（例如有毒氣體）的影響。"
local z_ghost_hitnrun_n_stripp = "- 武器祝福「幽靈」、「游擊」和「輕裝」能觸發此天賦（僅限對遠程攻擊）。"

--[+ ++ENHANCED DESCRIPTIONS++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true) -- Do not translate this line!

--[+ ++PSYKER++ +]--
--[+ +BLITZ+ +]--
	--[+ Blitz 0 - Brain Burst +]--
	local ED_PSY_Blitz_0_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 無法爆擊。",
		"- 基礎傷害：900。",
		"- 永遠視為弱點命中。",
		"- 對狂熱與不屈類型目標造成更高傷害。",
		"{#color(255, 35, 5)}- 你可能會爆炸！反噬值達到 97% 或以上時請勿使用！{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1 - Brain Rupture +]--
	local ED_PSY_Blitz_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 無法爆擊。",
		"- 基礎傷害：1350。",
		"- 永遠視為弱點命中。",
		"- 對狂熱與不屈類型目標造成更高傷害。",
		"- 主要攻擊在達到 50% 充能量時，會對目標施加輕度的充能踉蹌效果。無法對轟炸者、重錘兵、變種人、歐格林、瘟疫爆者、狂怒者、血痂霰彈槍手 或巨獸造成踉蹌。",
		"- 攻擊時，會使除了變種人、巨獸以及具備主動力場護盾（void shield）之敵人外的所有敵人陷入踉蹌。",
		dmg_is_incr_by,
		"{#color(255, 35, 5)}- 你可能會爆炸！反噬值達到 97% 或以上時請勿使用！{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1-1 - Kinetic Resonance +]--
	local ED_PSY_Blitz_1_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 降低顱腦崩裂的主、副攻擊充能時間。",
		"- 與「靈能強化」增益和敏捷興奮劑的充能時間減少效果相加疊加。",
		"- 與「骨折後遺症」、「刺耳尖嘯」、「亞空間意志」、「平心靜氣」、「現實錨點」、小型反噬抗性節點、戰鬥興奮劑，以及「閃擊強化」事件（mutator）等相關增益做乘法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Blitz 1-2 - Kinetic Flayer +]--
	local ED_PSY_Blitz_1_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 由此天賦所觸發的「顱腦崩裂」攻擊，能享有「靈能強化」的傷害增益，而不會消耗其疊加。",
		"{#color(255, 35, 5)}- 目前存在一個錯誤：當反噬值高於 97% 時，天賦會觸發並進入 15 秒冷卻，但敵人實際上不會受到任何傷害。{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2 - Smite +]--
	local ED_PSY_Blitz_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 無法爆擊。",
		"- 最遠射程：15 公尺。",
		"- 只能鎖定敵人的軀幹部位。",
		"- 無法對巨獸以及擁有主動力場護盾（void shield）的敵人造成踉蹌。",
		"- 整體對各種裝甲傷害係數屬中等，對甲殼裝甲傷害係數偏低。",
		dmg_is_incr_by,
		"{#color(255, 35, 5)}- 只有在以充能攻擊讓反噬值剛好達到 100% 的同時再使用一般攻擊，才可能爆炸！{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2-1 - Lightning Storm +]--
	local ED_PSY_Blitz_2_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 適用於懲戒的主要與次要攻擊。",
		"- 將「懲戒」可連鎖到下一個目標的最遠距離由 5 公尺提升至 6 公尺。",
		"- 同時也讓鎖定目標的最大距離增加 1 公尺，達到 16 公尺。",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2-2 - Enfeeble +]--
	local ED_PSY_Blitz_2_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		-- "- The debuff is being applied as long as the enemy is actively affected by \"Smite\".", -- 原程式碼已註解
		"- 與「亞空間震波」或歐格林的「削弱敵人」、「重要干擾」或老兵的「鎖定目標!」等傷害承受增幅，及傷害增益，還有武器祝福提供的力量等級加成做乘法疊加。",
		"- 與另一位靈能者施加的相同減益效果無法疊加。",
		"- 任何可能對敵人造成感電效果的來源，若不是由「懲戒」或 「蓄力打擊」觸發，都不會啟動「衰弱詛咒」",
	}, "\n"), enhdesc_col)

	--[+ Blitz 2-3 - Charged Strike +]--
	local ED_PSY_Blitz_2_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 每跳基礎傷害為 8。",
		"- 傷害判定時間可持續最長 2 秒。",
		"- 感電狀態會持續到最後一次傷害跳數結束後 2 秒。",
		"-- 注意：第一次傷害跳數生效前的延遲取決於敵人的順劈傷害，與「懲戒」相同。換言之，順劈傷害越大，造成第一次傷害所需時間越長。因此，對於「巨獸」（20 順劈傷害）而言，在 2 秒的傷害窗口結束前只能觸發 1 次傷害跳數。",
		"-- 若選擇「衰弱詛咒」，此天賦的感電效果會有更有利的命中率消耗機制，使其對大多數敵人能加倍觸發傷害跳數；同時也能享有 10% 額外承受傷害的減益。從表面上看，每一跳傷害都會加一層減益，使受此減益的敵人在該跳數期間承受更高傷害，且所有攻擊者都能在感電效果正在作用並附加減益時受益（與「懲戒」機制相同）。",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3 - Assail +]--
	local ED_PSY_Blitz_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 可爆擊。最多可同時穿透2 個敵人。",
		"- 每次投射物消耗 1 發彈藥，並於每 3 秒回復 1 發。",
		"- 受相應天賦與「戰鬥興奮劑」提供的反噬值消耗減少效果影響。",
		dmg_is_incr_by,
		"{#color(255, 35, 5)}- 你可能會爆炸！若反噬值已達 100%，請勿使用！{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3-1 - Ethereal Shards +]--
	local ED_PSY_Blitz_3_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 若「靈能強化」啟動，則可穿透的敵人數翻倍至最多 6 個。",
		"- 甲殼裝甲預設無法被穿透。",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3-2 - Quick Shards +]--
	local ED_PSY_Blitz_3_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 將投射物的回充時間由 3 秒縮短為 2.1 秒。",
		"- 不會與「閃擊強化」事件（mutator）產生互動。",
	}, "\n"), enhdesc_col)

--[+ +AURA+ +]--
	--[+ Aura 0 - The Quickening +]--
	local ED_PSY_Aura_0_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 與珍品提供的戰鬥技能回復，以及可使技能冷卻縮短 20% 的任務事件（mutators）相加疊加。",
		"- 這會將「靈能尖嘯」、「靈能學者之怒」的最大冷卻時間減少至 27.75 秒、「占卜者的注視」減少至 23.125 秒、「念力護盾」減少至 37 秒。",
		doesnt_stack_aura_psy,
	}, "\n"), enhdesc_col)

	--[+ Aura 1 - Kinetic Presence +]--
	local ED_PSY_Aura_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg,
		doesnt_stack_aura_psy,
	}, "\n"), enhdesc_col)

	--[+ Aura 2 - Seer's Presence +]--
	local ED_PSY_Aura_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 與珍品提供的戰鬥技能回復，以及可使技能冷卻縮短 20% 的任務事件相加疊加。",
		"- 這會將「靈能尖嘯」、「靈能學者之怒」的最大冷卻時間減少至 27 秒、占卜者的注視」減少至 22.5 秒、「念力護盾」減少至 36 秒。",
		doesnt_stack_aura_psy,
	}, "\n"), enhdesc_col)

	--[+ Aura 3 - Prescience +]--
	local ED_PSY_Aura_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 適用於所有能夠爆擊的攻擊。",
		"- 與其他爆擊機率來源相加疊加。",
		doesnt_stack_aura_psy,
	}, "\n"), enhdesc_col)

--[+ +ABILITIES+ +]--
	--[+ Ability 0 - Psykinetic's Wrath +]--
	local ED_PSY_Ability_0_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 可以用來防止靈能者自我爆炸。",
		"- 亞空間震波能穿透物體，範圍最遠可達30公尺，因此你可以透過牆壁將瘟疫獵犬從隊友身上震開。",
		"- 使正面5公尺範圍內的敵人暈眩（Stun）。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1 - Venting Shriek +]--
	local ED_PSY_Ability_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 永遠只鎖定敵人軀幹部位。",
		"- 可以在爆炸倒數中使用，以防止靈能者自我爆炸。",
		"- 亞空間震波可穿透物體，最遠可達30公尺。",
		"- 使正面5公尺範圍內的敵人暈眩（Stun）。",
		"- 衝擊強度會根據反噬提升，最高在 100% 反噬值時生效；最多可對甲殼造成輕度踉蹌。無法對變種人、巨獸以及有主動力場護盾（void shield）的敵人造成踉蹌。",
		"- 衝擊強度亦會受到一些武器祝福影響：如「行刑者」、「殺戮者」、「優勢」、「不穩定能量」等等。僅在釋放吶喊時所裝備的武器觸發之增益才會生效。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-1 - Becalming Eruption +]--
	local ED_PSY_Ability_1_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 與「骨折後遺症」、「亞空間意志」、「平心靜氣」、「動能共鳴」等天賦、小型 「反噬抗性」 節點以及戰鬥興奮劑所提供的反噬值消耗減少效果做乘法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-2 - Warp Rupture +]--
	local ED_PSY_Ability_1_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 對所有裝甲類型的傷害係數相同，但傷害隨距離而衰減。",
		"- 基礎傷害會依反噬值而變動：",
		"_______________________________",
		"反噬:      0%|  25%|  50%|  75%|  100%",
		"傷害:     100|   125|   150|   175|  200",
		"_______________________________",
		"- 傷害會受到以下增益影響：",
		"-- 來自天賦：「擾動命運」、「至天高之力」、「亞空間震波」（對受該減益效果影響的敵人）、「惡意攻勢」、「動能釋放」（對精英目標）、「完美時機」，以及「亞空間騎士」。",
		"-- 來自武器祝福：",
		"--- 近戰武器，如在啟動「刺耳尖嘯」前就已觸發的「行刑者」、「高壓電」（對感電敵人）、「碎顱者」（對踉蹌敵人）、「殺戮者」、「優勢」，以及「不穩定能量」。",
		"--- 遠程武器，如在啟動「刺耳尖嘯」前就已觸發的「連續發射」、「持續阻擊」、「死亡噴吐」、「達姆彈」、「處決」（對踉蹌敵人）、「烈火熱焰」、「全孔射擊」、「刻不容緩」（對踉蹌敵人）、「鉗制射擊」、「火藥灼傷」，以及「連跑帶打」（在衝刺時）。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-3 - Warp Creeping Flames +]--
	local ED_PSY_Ability_1_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 施加到敵人身上的靈魂之火層數會隨靈能反噬變化：",
		"_______________________________",
		"層數:    1|      2|        3|       4|       5|       6",
		"反噬: 0%|~17%|~34%|~50%|~67%|~84%",
		"_______________________________",
		"- 持續 8 秒，每 0.75 秒觸發一次。",
		"- 施加層數時會刷新持續時間。",
		"- 與其他靈魂之火來源的層數累加。",
		"- 靈魂之火傷害會受到撕裂與脆弱影響，並受到當前裝備武器的特技與以下天賦的增益：「擾動命運」、「至天高之力」、「惡意攻勢」、「動能釋放」、「完美時機」和「亞空間騎士」。",
		"-- 武器祝福影響：",
		"--- 近戰武器：「行刑者」、「高壓電」（對感電目標）、「碎顱者」（對被震懾目標）、「殺戮者」、「優勢」、「不穩定能量」、「異常打擊」。",
		"--- 遠程武器：「連續發射」、「死亡噴吐」、「達姆彈」、「處決」（對被震懾目標）、「烈火熱焰」、「刻不容緩」（對被震懾目標）、「鉗制射擊」、「連跑帶打」（衝刺時）。",
	}, "\n"), enhdesc_col)

	--[+ Ability 2 - Telekine Shield +]--
	local ED_PSY_Ability_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 護盾生命值：20。",
		"- 尺寸：寬 6 公尺，高 3.5 公尺。",
		"- 最大放置範圍：10 公尺。",
		"- 總放置時間：0.6 秒。",
		"- 可按住技能鍵預覽位置，並可透過格擋取消。",
		"- 可阻擋：遠程掃描攻擊、拋射物（轟炸者手榴彈）、陷阱兵的網、火焰兵的直射火焰攻擊。",
		"- 地面火焰區域與毒氣雲仍會擴散穿過護盾。",
		"- 無法阻擋瘟疫爆者的爆炸。",
		"- 護盾生命機制：",
		"-- 每次受到遠程攻擊計算為 1 點傷害。受到傷害後的 0.33 秒內不會再受到傷害。",
		"--- 例如，當護盾放置在一名血痂砲手前方，護盾將在砲手的第二輪掃射期間消失，因為它累計承受了 20 次有效攻擊。",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-1 - Bolstered Shield +]--
	local ED_PSY_Ability_2_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 第二次充能的冷卻時間僅在第一次充能冷卻結束後開始計算。",
		-- ppp___ppp,
		-- "- The Cooldown of the second charge only starts after the first charge finished Cooldown.",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-2 - Enervating Threshold +]--
	local ED_PSY_Ability_2_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 不造成傷害。",
		"- 每 0.55 秒施加一次震懾。",
		"- 觸電效果持續 3 秒。",
		"- 可以暈眩所有敵人，巨獸除外。",
		"- 特殊敵人接觸護盾時必定受到影響。",
		"- 每次受到特殊敵人直接命中身體的攻擊時，護盾會受到8點傷害，最多可擋3次「格擋」特殊敵人攻擊。遵守0.33 秒傷害冷卻窗口，這意味著任何在0.33 秒內發生的多次直接命中，均計為1次攻擊傷害。",
		"",
		"{#color(255, 35, 5)}- 當前存在一個錯誤：接觸護盾的特殊敵人僅造成 1 點傷害，而非 8 點。{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-3 - Telekine Dome +]--
	local ED_PSY_Ability_2_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 球體半徑為 6 公尺。",
		"- 可在所有角度防禦敵方攻擊。",
		"- 擁有與平面護盾相同的特性。",
		"- 也會以相同方式承受遠程傷害。",
		"",
		"{#color(255, 35, 5)}- 當前存在一個錯誤：在圓頂內成功閃避的變種人總是會被震懾。{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-4 - Sanctuary +]--
	local ED_PSY_Ability_2_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 此恢復效果可疊加，若多個球體重疊則效果疊加。",
		z_eff_of_this_tougn_rep,
		stacks_mult_w_other_dmg_red_buffs,
		-- ppp___ppp,
		-- "- This replenishment effect can Stack if multiple spheres overlap.",
	}, "\n"), enhdesc_col)

	--[+ Ability 3 - Scrier's Gaze +]--
	local ED_PSY_Ability_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當技能處於超載階段時，冷卻時間會暫停。然而，其剩餘冷卻時間仍可透過觸發「靈能學者光環」或使用專注興奮劑來主動縮短。",
		"- 最大冷卻時間可透過「先知之眼」、「亞空間虹吸」、來自珍品的戰鬥技能冷卻，以及降低技能冷卻時間 20% 的任務變異體來縮短。",
		"- 超載結束後，提供 1.5 秒的緩衝時間，在此期間可執行靈能反噬動作而不會觸發靈能者自我爆炸。",
	}, "\n"), enhdesc_col)

	-- [+ Ability 3-1 - Endurance +]--
	local ED_PSY_Ability_3_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 不會在超載階段結束後持續存在。",
		stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	-- [+ Ability 3-2 - Precognition +]--
	local ED_PSY_Ability_3_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 與其他「弱點」與「技巧」增益效果相加計算。",
		"- 「順劈目標」時，每次攻擊可多次觸發。",
		"- 這些可疊加的傷害增益會在超載階段立即生效。",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-3 - Warp Speed +]--
	local ED_PSY_Ability_3_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 不會在超載階段結束後持續存在。",
		"- 與「擾動命運」、「堅毅」、「移動速度增幅」和武器祝福如「提速」的移動速度增益相加疊加。",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-4 - Reality Anchor +]--
	local ED_PSY_Ability_3_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 不會在超載階段結束後持續存在。",
		"- 與「骨折後遺症」、「亞空間意志」、「動能共鳴」、小型反噬抗性節點和戰鬥興奮劑的反噬值消耗減少效果做乘法疊加。",
		"- 只有在靈能者在超載期間恢復亞空間充能時，才能與「平心靜氣」疊加。",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-5 - Warp Unbound +]--
	local ED_PSY_Ability_3_5_rgb = iu_actit(table.concat({
		ppp___ppp,
    	"- 超載結束後，允許靈能者在100%反噬值下執行反噬生成動作10秒而不會觸發自我爆炸。",
    	"- 請注意，當這10秒持續時間結束時，「占卜者的注視」的基本緩衝時間仍然適用，提供額外1.5秒的相同效果。",
	}, "\n"), enhdesc_col)

--[+ +KEYSTONES+ +]--
	--[+ Keystone 1 - Warp Siphon +]--
	local ED_PSY_Keystone_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		can_be_refr_dur_active_dur,
		"- 與珍品提供的戰鬥技能冷卻，以及可使技能冷卻縮短20%的任務事件（mutators）相加疊加。",
		"- 例如，當靈能者擁有「先知之眼」光環（-0.1）、4個亞空間充能和12%珍品提供的戰鬥技能冷卻（-0.12）時使用「念力護盾」，其最大冷卻時間由珍品屬性和光環首先減少至40+40x(-0.1-0.12)=31.2秒。此最大冷卻時間再由亞空間虹吸進一步減少至31.2-31.2x(0.075x4)=21.84 秒（HUD 四捨五入：22 秒）。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-1 - Inner Tranquility +]--
	local ED_PSY_Keystone_1_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 與自身線性疊加（1 個亞空間充能=6% 反噬消耗減少，2 個 = 12%，3 個 = 18%，等等），並與「骨折後遺症」、「亞空間意志」、「動能共鳴」、小型反噬抗性節點和戰鬥興奮劑的反噬消耗減少效果做乘法疊加。",
		"- 因為使用戰鬥技能時所有亞空間充能都會消失，此天賦無法立即與「平心靜氣」和「現實錨點」疊加（除非靈能者在其持續期間內重新獲得亞空間充能）。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-2 - Essence Harvest +]--
	local ED_PSY_Keystone_1_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 不會增加韌性回復量。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-3 - Empyrean Empowerment +]--
	local ED_PSY_Keystone_1_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-4 - In Fire Reborn +]--
	local ED_PSY_Keystone_1_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當一個被靈魂之火影響的敵人被靈魂之火、靈能者或盟友擊殺時，你會獲得一個亞空間充能。",
		"- 此效果無距離限制，並且所有裝備此天賦的靈能者都能受益。",
	}, "\n"), enhdesc_col)
	
	--[+ Keystone 1-5 - Psychic Vampire +]--
	local ED_PSY_Keystone_1_5_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 如果多個靈能者在彼此的協同範圍內，當其中一個觸發天賦時，所有靈能者都會獲得一個亞空間充能。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-6 - Warp Battery +]--
	local ED_PSY_Keystone_1_6_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 將靈能者可持有的亞空間充能最大數量從4增加到6。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2 - Empowered Psionics - Empowered Brain Rupture +]--
	local ED_PSY_Keystone_2_0_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		-- "- Consumes Stacks when attack connects with an enemy.",
		"- 與其他適用的傷害增益做加法疊加。",
		"- 與「動能共鳴」做加法疊加，並與敏捷興奮劑的兩個充能時間減少效果做乘法/加法疊加。",
		"_______________________________",
	}, "\n"), enhdesc_col)
	

	--[+ Keystone 2 - Empowered Psionics - Empowered Smite +]--
	local ED_PSY_Keystone_2_0_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		-- "- Consumes Stacks when releasing.",
		"- 與其他適用的傷害增益做加法疊加。",
		"- 與敏捷興奮劑的相關增益做乘法疊加。",
		"_______________________________",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2 - Empowered Psionics - Empowered Assail +]--
	local ED_PSY_Keystone_2_0_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		-- "- Consumes Stacks per thrown projectile.",
		"- 允許在100%反噬時施放。",
		"- 目標數量加倍。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-1 - Bio-Lodestone +]--
	-- local ED_PSY_Keystone_2_1_rgb = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 2-2 - Psychic Leeching +]--
	local ED_PSY_Keystone_2_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當「顱腦崩裂」命中、當「懲戒」開始施放或充能後，以及當「靈能攻擊」生成投射物時觸發。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-3 - Overpowering Souls +]--
	-- local ED_PSY_Keystone_2_3_rgb = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 2-4 - Charged Up +]--
	-- local ED_PSY_Keystone_2_4_rgb = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 3 - Disrupt Destiny +]--
	local ED_PSY_Keystone_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 對標記的敵人造成傷害會刷新天賦的持續時間。",
		"- 有效目標包括：渣滓/血痂暴徒、渣滓/血痂潛行者、渣滓射手、狂怒者、砲手、霰彈槍手和重錘兵。",
		"- 與「堅毅」、「亞空間騎士」、移動速度節點和武器祝福如「提速」的移動速度增益相加疊加。",
		"- 精確加成與其他相關的傷害增益做加法疊加。",
		"- 可以在持續時間內通過擊殺或成功踉蹌標記的敵人，或通過靈魂之火、燃燒和流血對標記目標造成的傷害來刷新。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-1 - Perfectionism +]--
	-- local ED_PSY_Keystone_3_1_rgb = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 3-2 - Purloin Providence +]--
	local ED_PSY_Keystone_3_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 有2%的機率在同一次擊殺中觸發「戰鬥冥想」，總共移除 25% 的反噬。",
	}, "\n"), enhdesc_col)
	

	--[+ Keystone 3-3 - Lingering Influence +]--
	-- local ED_PSY_Keystone_3_3_rgb = iu_actit(table.concat({ "", }, "\n"), enhdesc_col)

	--[+ Keystone 3-4 - Cruel Fortune +]--
	local ED_PSY_Keystone_3_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 觸發於近戰、遠程、「顱腦崩裂」或「靈能攻擊」攻擊。",
	}, "\n"), enhdesc_col)
	

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Soulstealer +]--
	local ED_PSY_Passive_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 如果亞空間攻擊是近戰攻擊，天賦的7.5%效果會加到靈能者基礎的5%最大韌性獲得量上。",
		"-- 例如，一個擁有 96最大韌性的靈能者使用啟動的靈能劍擊殺兩個敵人，會恢復96x(0.1+0.15)=24韌性。",
		z_eff_of_this_tougn_rep,
		warp_attc_refers_to,
	}, "\n"), enhdesc_col)

	--[+ Passive 2 - Mettle +]--
	local ED_PSY_Passive_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 每次爆擊攻擊只觸發一次，不論擊中多少敵人。",
		z_eff_of_this_tougn_rep,
		"- 每次爆擊攻擊總是生成1層，不論擊中多少敵人。",
		"-- 層數持續4秒，並可在持續時間內刷新。",
		"-- 與「擾動命運」、「亞空間騎士」、小型移動速度節點和武器祝福如「提速」的移動速度增益相加疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 3 - Quietude +]--
	local ED_PSY_Passive_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 每 1% 反噬平息恢復0.5%最大韌性。",
		"- 觸發於主動或被動平息。",
		"- 例如，一個擁有109最大韌性的靈能者從 59% 真實反噬平息到 0% 反噬，會恢復59x(109x0.005)=32.15韌性（HUD 四捨五入：33）。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 4 - Warp Expenditure +]--
	local ED_PSY_Passive_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 每1%反噬生成恢復0.25%最大韌性。",
		"- 來自「平心靜氣」、「骨折後遺症」、「動能共鳴」、「現實錨點」和反噬抗性節點的反噬值消耗減少效果會降低此天賦的效能！",
		"- 例如，一個擁有90最大韌性的靈能者生成44%反噬，會恢復44x(90x0.0025)=9.9韌性。然而，同樣的靈能者在擁有15%反噬值消耗減少效果（來自3個小型反噬抗性節點）的情況下生成44%反噬，僅會恢復44x(90x0.0025x0.95^3)=8.488韌性。",
	}, "\n"), enhdesc_col)

	--[+ Passive 5 - Perilous Combustion +]--
	local ED_PSY_Passive_5_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 疊加效果在距離被擊殺敵人最多4公尺內生效。",
		"- 不會對被靈能者的靈魂之火傷害跳數擊殺的精英或特殊敵人生效。",
		"- 會對燃燒或流血跳數擊殺生效。",
		"- 靈魂之火：",
		"-- 持續8秒。",
		"-- 與其他靈魂之火來源相同。",
		"-- 每0.75秒觸發一次。",
		"-- 施加疊加時會刷新持續時間。",
		"-- 對所有裝甲類型的傷害係數都很高，對甲殼裝甲的傷害係數很低。",
		"{#color(255, 35, 5)}- 疊加效果適用於惡魔宿主！{#reset()}",
	}, "\n"), enhdesc_col)
	

	--[+ Passive 6 - Perfect Timing +]--
	local ED_PSY_Passive_6_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 用近戰爆擊、遠程或靈能攻擊擊中敵人會獲得疊加效果。",
		"- 順劈攻擊時每次攻擊會生成多個疊加效果。",
		"- 疊加效果可在持續期間內刷新。",
		stacks_add_w_oth_dmg,
		warp_attc_refers_to,
	}, "\n"), enhdesc_col)

	--[+ Passive 7 - Battle Meditation +]--
	local ED_PSY_Passive_7_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 從當前反噬值中移除10%反噬。",
		"- 當敵人死於靈能者的近戰和遠程攻擊、傷害技能、持續傷害效果，或被靈能者推下懸崖進入地圖殺區時，有10%的機率觸發。",
		"- 與「骨折後遺症」和「屠殺中的平靜」同時觸發。",
		"- 有2%的機率在同一次擊殺中觸發「戰鬥冥想」，總共移除25%的反噬。",
	}, "\n"), enhdesc_col)

	--[+ Passive 8 - Wildfire +]--
	local ED_PSY_Passive_8_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 每當受到至少2層靈魂之火影響的敵人死亡時，靈魂之火會擴散到5公尺範圍內的有效目標。",
		"- 如果目標已經有4層或更多靈魂之火，則不會受到此天賦造成的靈魂之火疊加。",
		"- 有效目標最多可受到此天賦造成的4層靈魂之火疊加。",
		"- 擴散的靈魂之火疊加數量取決於死亡敵人的靈魂之火疊加數量：",
		"_______________________________",
		"疊加數:    1|        2|       3|       4|      >4",
		"擴散數:    0|       2|       3|        4|       4",
		"_______________________________",
		"- 擴散的有效目標最多為 4 個：",
		"-- 如果有 4 層疊加和 4 個目標 - 每個目標獲得 1 層疊加；",
		"-- 如果有 4 層疊加和 3 個目標 - 1 個目標獲得 2 層疊加，其他 2 個目標各獲得 1 層疊加，等等。",
		"惡魔宿主不是有效目標！",
	}, "\n"), enhdesc_col)

	--[+ Passive 9 - Psykinetic's Aura +]--
	local ED_PSY_Passive_9_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 對「靈能尖嘯」、「靈能學者之怒」為1.5秒，對「占卜者的注視」為1.25秒，對「念力護盾」為2秒。",
		"- 不會與另一位靈能者的相同天賦疊加（每位靈能者觸發自己的天賦，分別減少冷卻時間）。",
		"- 與專注興奮劑剩餘的每秒3秒冷卻時間減少效果同時觸發。",
		doesnt_interact_w_c_a_r_from_curio,
	}, "\n"), enhdesc_col)

	--[+ Passive 10 - Mind in Motion +]--
	local ED_PSY_Passive_10_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 不會與移動速度增益效果產生互動。",
	}, "\n"), enhdesc_col)

	--[+ Passive 11 - Malefic Momentum +]--
	local ED_PSY_Passive_11_rgb = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg,
		"- 每個增益效果的8秒持續時間從相應的擊殺開始計算，並可在持續期間內刷新。",
		warp_attc_refers_to,
	}, "\n"), enhdesc_col)

	--[+ Passive 12 - Channeled Force +]--
	local ED_PSY_Passive_12_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 在使用任何靈能法杖進行至少95%充能的次要攻擊後，增加法杖主要攻擊的傷害。",
		can_be_refr_dur_active_dur,
		"- 與其他傷害增益做加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 13 - Perilous Assault +]--
	local ED_PSY_Passive_13_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 這會減少切換物品槽（武器、閃擊技能、興奮劑、醫療包、彈藥箱、書籍等）時的操作時間：",
		"_______________________________",
		"反   噬:  0|  20|  40|  50|  60|  80|  100",
		"WS(%):  0|   10|  20|  25|  30|  40|   50",
		"_______________________________",
		"(*WS = 揮舞速度  Wield Speed)",
		"{#color(255, 35, 5)}- 客觀來說，靈能者目前的武器庫中沒有任何一種武器能顯著減少此天賦的揮舞時間。自動步槍和激光步槍在切換到它們並開始從腰部開火時擁有最長的揮舞時間為0.65秒。此天賦在100%反噬時會將這些時間減少到0.43秒。對於所有其他武器，時間減少的意義更小。{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Passive 14 - Lightning Speed +]--
	local ED_PSY_Passive_14_rgb = iu_actit(table.concat({
		ppp___ppp,
    	"- 與敏捷興奮劑的相關攻擊速度增益做加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 15 - Souldrinker +]--
	local ED_PSY_Passive_15_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 爆擊機率無法在持續期間內刷新。",
		"- 每次擊殺敵人時恢復最大韌性。",
	}, "\n"), enhdesc_col)

	--[+ Passive 16 - Empyric Shock +]--
	local ED_PSY_Passive_16_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 對敵人施加一個減益效果，使其受到的亞空間攻擊傷害增加。",
		can_be_refr_dur_active_dur,
		"- 可穿透護盾施加。",
		"- 減益效果與自身做乘法疊加，最高可達33.8%(1.06⁵=1.338)，並與來自「衰弱詛咒」、歐格林的「削弱敵人」、「重要干擾」、老兵的「鎖定目標！」等其他敵人受到的傷害增益做乘法疊加，並與傷害增益和武器祝福提供的力量等級增益做乘法疊加。",
		warp_attc_refers_to,
		"",
		"{#color(255, 35, 5)}- 當前存在一個錯誤：地獄火法杖的左鍵攻擊無法施加減益效果。{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Passive 17 - By Crack of Bone +]--
	local ED_PSY_Passive_17_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 移除反噬時，順劈攻擊每次揮擊可多次觸發。與「戰鬥冥想」和「盜竊天命」同時觸發。",
		"- 與「平心靜氣」、「亞空間意志」、「動能共鳴」、「現實錨點」、小型反噬抗性節點和戰鬥興奮劑的反噬值消耗減少效果做乘法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 18 - Warp Splitting +]--
	local ED_PSY_Passive_18_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 與反噬成比例縮放。",
		"- 將攻擊的最大順劈傷害上限（近戰、遠程、「靈能攻擊」）提高最多 100%，從而允許攻擊順劈更多敵人。",
		"- 與「虛無碎片」和「靈能強化」做加法疊加，並與武器祝福「毀滅打擊」、「野蠻掃擊」和「憤怒」的相關增益做加法疊加。",
		"- 與武器祝福提供的力量等級增益做乘法疊加。",
		"- 請注意，甲殼裝甲無法被順劈。",
	}, "\n"), enhdesc_col)

	--[+ Passive 19 - Unlucky for Some +]--
	local ED_PSY_Passive_19_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當靈能者倒下時，恢復協同範圍內盟友的韌性。",
		"- 當盟友或靈能者死亡時不會觸發。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 20 - One with the Warp +]--
	local ED_PSY_Passive_20_rgb = iu_actit(table.concat({
		ppp___ppp,
		stacks_mult_w_other_dmg_red_buffs,
		"- 無論當前反噬值多少，始終提供至少 10% 的韌性傷害減免：",
		"_______________________________",
		"反噬:       0|  20|  40|  50|  60|  80|  100",
		"TDR(%): 10|  14|   19|   21|  23|  28|    33",
		"_______________________________",
		"(*TDR = 韌性傷害減免 Toughness Damage Reduction)",
	}, "\n"), enhdesc_col)

	--[+ Passive 21 - Empathic Evasion +]--
	local ED_PSY_Passive_21_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 用近戰爆擊、遠程或「靈能攻擊」擊中敵人會使靈能者進入 1 秒的「閃避狀態」，對抗遠程攻擊。",
		can_be_refr_dur_active_dur,
		"- 此效果在機制上與武器祝福「幽靈」、「游擊」和「輕裝」提供的效果相同。",
	}, "\n"), enhdesc_col)

	--[+ Passive 22 - Anticipation +]--
	local ED_PSY_Passive_22_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 將靈能者的基礎閃避停留時間從0.2秒增加到0.3秒。",
		"- 「閃避持續時間」指的是在閃避技術結束後，角色仍被視為處於對抗近戰攻擊的「閃避狀態」的時間窗口。這使得閃避窗口在玩家輸入時更具寬容性。",
		"- 同時增加一次有效閃避。",
		"- 角色能執行的有效閃避總數因當前裝備的武器或物品的閃避模板而異。",
	}, "\n"), enhdesc_col)

	--[+ Passive 23 - Solidity +]--
	local ED_PSY_Passive_23_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 僅適用於主動平息，對被動平息無效。",
		"- 在計算過程中與敏捷興奮劑的平息增益做乘法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 24 - Puppet Master +]--
	local ED_PSY_Passive_24_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 將基礎協同範圍從8公尺增加到12公尺。",
	}, "\n"), enhdesc_col)

	--[+ Passive 25 - Warp Rider +]--
	local ED_PSY_Passive_25_rgb = iu_actit(table.concat({
		ppp___ppp,
		stacks_add_w_oth_dmg,
		"_______________________________",
		"反噬:       0|  20|  40|  50|  60|  80|  100",
		"Dmg(%): 0|     4|    8|   10|   12|   16|   20",
		"_______________________________",
		"(*Dmg = 傷害增加  Damage Increas)",
	}, "\n"), enhdesc_col)

	--[+ Passive 26 - Crystalline Will +]--
	local ED_PSY_Passive_26_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 靈能者自我爆炸時，不會被擊倒，而是將一個生命段轉換為完全腐化。",
		"- 無論該段是否已部分腐化，總是轉換一段。",
		"- 也將自我爆炸的總時間從3秒減少到1.13秒。",
		"- 靈能者的自我爆炸：",
		"-- 最大半徑：10米。",
		"-- 使所有敵人踉蹌，除了破碎者、變種人、巨獸、雙胞胎（僅限沒有虛空護盾的隊長）。",
		"-- 對所有敵人造成600基礎傷害。",
		"-- 爆炸傷害從中心到最大範圍逐漸減少，並且可以通過「擾動命運」、「至天高之力」、「惡意攻勢」（常規傷害增益）、「占卜者的注視」和「亞空間騎士」的傷害增益來增加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 27 - Kinetic Deflection +]--
	local ED_PSY_Passive_27_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 反噬消耗減少增益（來自「平心靜氣」、「骨折後遺症」、「亞空間意志」、「內在平靜」、「現實錨點」和小型反噬抗性節點）增加了耐力消耗轉換為反噬的效率。",
    	"- 也增加了來自珍品、近戰武器特技和「偏斜」武器祝福（也適用於遠程攻擊）的格擋效率增益，以及來自敏捷興奮劑的耐力消耗減少增益。",
    	"- 所有反噬消耗減少、格擋消耗減少和耐力消耗減少的來源都與自身和彼此乘法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 28 - Tranquility Through Slaughter +]--
	local ED_PSY_Passive_28_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 用常規遠程攻擊的爆擊移除當前反噬值的4%。",
		"- 擊中護盾時觸發。",
		"- 每次射擊僅觸發一次，無論擊中多少敵人。",
		"- 與「戰鬥冥想」和「盜竊天命」同時觸發。",
		warp_attc_refers_to,
	}, "\n"), enhdesc_col)

	--[+ Passive 29 - Empyric Resolve +]--
	local ED_PSY_Passive_29_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 減少40%反噬生成量。",
		"- 與「骨折後遺症」、「平心靜氣」、「動能共鳴」、「現實錨點」、小型反噬抗性節點和戰鬥興奮劑的反噬消耗減少效果做乘法疊加。",
		"- 也減少近戰擊殺和天賦提供的韌性回復量30%。",
		"- 不影響協同韌性再生和武器祝福「榮耀獵手」、「激勵彈幕」和「令人安心的準確性」的韌性回復。",
		"- 此回復減益效果與其他玩家減益效果（如有毒氣體）做乘法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 30 - Penetration of the Soul +]--
	local ED_PSY_Passive_30_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當反噬值達到或超過75%時，對亞空間攻擊賦予10%撕裂效果，提升對甲殼、片甲、狂熱者、不屈敵人的傷害。",
		"- 僅影響靈能者自身的傷害。",
		"- 與其他撕裂增益和施加於敵人的脆弱減益做加法疊加。",
		warp_attc_refers_to,
		"{#color(255, 35, 5)}當前存在一個錯誤：撕裂乘數在傷害計算中未正確應用。\n此天賦無效!!!{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Passive 31 - True Aim +]--
	local ED_PSY_Passive_31_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 每次用近戰、遠程、「靈能攻擊」和「顱腦崩裂」、「顱腦爆裂」攻擊命中弱點時生成1層弱點疊加。",
		"- 順劈攻擊（例如虛空打擊法杖的充能射擊進入密集區域）一次最多可累積5層弱點疊加，但不會立即消耗保證的爆擊。",
		"- 弱點疊加持續到被消耗為止。",
		"- 「顱腦崩裂」、「顱腦爆裂」和「懲戒」不會消耗保證的爆擊。",
	}, "\n"), enhdesc_col)

	--[+ Passive 32 - Surety of Arms +]--
	local ED_PSY_Passive_32_rgb = iu_actit(table.concat({
		ppp___ppp,
		"重新裝填時，增加25%裝填動畫速度。",
		"與武器祝福提供的裝填速度增益做加法疊加。",
		"重新裝填時，根據彈匣中重新裝填的彈藥百分比，生成最25%的反噬。",
		"例如，當重新裝填34發彈藥，而彈匣容量為59發時，靈能者會生成14.4%的真實反噬；0.25x(34/59)=0.144。",
		"重新裝填空彈匣會生成最大25%的反噬。",
		"反噬消耗減少增益會降低此重新裝填彈藥轉換為反噬的效率。例如，重新裝填相同數量的彈藥，但彈匣容量相同，且有三個反噬抗性節點（即亞空間充能量為0.95³），靈能者只會生成12.3%的真實反噬；0.25x(34/59)x0.95³=0.123。",
		"請注意，此天賦在重新裝填時總是會生成反噬，無論當前反噬量多少，但只有在真實反噬量低於或等於75%時才會增加裝填速度。",
	}, "\n"), enhdesc_col)

--[+ ++ZEALOT++ +]--
--[+ +BLITZ+ +]--
	--[+ Blitz 0 - Stun Grenade(眩暈手雷) +]--
	local ED_ZEA_Blitz_0_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 爆炸引信時間：1.5秒。",
		"- 爆炸半徑：8米。",
		"- 電擊：",
		"-- 持續8秒。",
		"-- 疊加一次。",
		"-- 對所有敵人造成低傷害。",
		"-- 每0.55秒造成傷害和踉蹌。",
		"-- 忽略壁壘。",
		"-- 可在持續期間內刷新。",
	}, "\n"), enhdesc_col)
	
	--[+ Blitz 1 - Stunstorm Grenade(眩暈風暴手雷) +]--
	local ED_ZEA_Blitz_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 爆炸半徑增加至12米。",
		"- 爆炸引信時間：1.5秒。",
		"- 電擊：",
		"-- 持續8秒。",
		"-- 疊加一次。",
		"-- 對所有敵人造成低傷害。",
		"-- 每0.55秒造成傷害和踉蹌。",
		"-- 對範圍內所有敵人造成踉蹌，除了變種人、隊長/雙胞胎和巨獸。",
		"-- 忽略壁壘。",
		"-- 可在持續期間內刷新。",
	}, "\n"), enhdesc_col)
	
	--[+ Blitz 2 - Immolation Grenade(獻祭手雷) +]--
	local ED_ZEA_Blitz_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 引信時間：1.7秒。",
		"- 火焰區域：持續15秒。半徑5米。敵人會避開該範圍。",
		"- 燃燒（於火焰區域內）：只疊加一次。每0.875秒造成傷害。忽略壁壘與虛空護盾。",
		"-- 針對不同護甲類型，造成不同傷害（對不屈敵人傷害極高；對無甲、感染者、狂熱者則是高傷害；對甲殼則非常低）。",
		"--（可視需求）若目標離開火焰區域，可能有短暫殘留燒傷。",
		"- 燃燒傷害會被以下提升：撕裂/脆弱、當前裝備武器的特性，以及下列天賦與祝福的相關加成：",
		"-- 天賦: 「鮮血受膏」、「淨化不潔」、「教宗之喚」、「命定審判」。",
		"-- 祝福：",
		"--- 近戰：「行刑者」、「高壓電」、「碎顱者」、「殺戮者」。",
		"--- 遠程：「連續發射」、「達姆彈」、「死亡噴吐」、「處決」、「烈火熱焰」、「全孔射擊」、「刻不容緩」、「鉗制射擊」、「連跑帶打」（衝刺時）。",
	}, "\n"), enhdesc_col)

	--[+ Blitz 3 - Blades of Faith(信仰之刃) +]--
	local ED_ZEA_Blitz_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 快速投擲。",
		"- 彈藥補充：每次近戰處決菁英或特殊敵人可補充1把飛刀；小型彈藥補給補充2把飛刀；大型彈藥補給補充6把飛刀；彈藥箱補充全部飛刀。",
		"- 飛刀沿著彎曲軌道飛行。",
		"- 傷害：基礎傷害585。",
		"-- 針對狂熱者與感染者具備高護甲傷害修正。",
		"-- 額外技巧(Finesse)在對無甲與防彈護甲時有加成。",
		"-- 若目標是甲殼(如Mauler頭部以外)，則不造成傷害。",
		"-- 低爆擊率 - 5%。",
		"-- 無距離衰減。",
		"- 可順劈1個血痂槍兵、渣滓槍兵或更小型敵人。",
		"- 頭部擊殺除了歐格林、狂怒者、重錘兵、巨獸以外的任何敵人。",
		"- 飛刀會受到當前裝備武器特性的影響，並會受到以下天賦帶來的增益：",
		"-- 天賦：「鮮血受膏」、「淨化不潔」、「教宗之喚」、「命定審判」（傷害）。",
		"-- 以及許多近戰與遠程祝福。",
	}, "\n"), enhdesc_col)

--[+ +AURA+ +]--
	--[+ Aura 0 - The Emperors's Will(帝皇之諭) +]--
	--[+ Aura 1 - Benediction(恩賜) +]--
	local ED_ZEA_Aura_0_n_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		stacks_mult_w_other_dmg_red_buffs,
		"- 不會與另一位狂信徒施放的同一光環效果重複疊加。",
	}, "\n"), enhdesc_col)

	--[+ Aura 2 - Beacon of Purity(純潔信標) +]--
	local ED_ZEA_Aura_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 恢復速率足以抵銷法術書的腐蝕傷害，不過首次造成的40腐蝕傷害無法消除。",
	}, "\n"), enhdesc_col)

	--[+ Aura 3 - Loner(孤狼) +]--
	local ED_ZEA_Aura_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 與「合抱成林」效果疊加時採加法計算，並在計算過程中與老兵小型天賦「鼓舞人心」或歐格林光環「保持靠近!」提供的韌性恢復速度採乘法計算。",
		"- 需要符合協同韌性再生(Coherency Toughness Regeneration)的前提才能觸發。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1 - Fury of the Faithful(有信者之怒) +]--
	local ED_ZEA_Ability_0_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 突進距離：",
		"-- 基礎：7米。",
		"-- 瞄準：最遠21米。",
		"- 突進時獲得韌性傷害免疫並且閃避所有攻擊。",
		"- 碰撞到敵人時，在3米範圍內造成輕微踉蹌。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-1 - Redoubled Zeal(倍增狂熱) +]--
	local ED_ZEA_Ability_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 突進：",
		"-- 範圍：基礎7米；（輔助動作時）最遠可達21米。",
		"-- 無法在跳躍或下落時啟用。",
		"-- 無法改變方向，但可透過格擋或向後鍵取消突進。",
		"-- 突進期間閃避所有攻擊並獲得韌性傷害免疫。",
		"-- 可能會被不屈敵人、甲殼、巨獸以及虛空護盾阻擋。",
		"- 近戰穿甲加成：",
		"-- 下次近戰攻擊在啟動後3秒內獲得針對甲殼、防彈、狂熱者、不屈敵人的100%撕裂。",
		"-- 第一次近戰攻擊會消耗此Buff。",
		"-- 遠程攻擊無法受此Buff加成。",
		"-- 與其他天賦的攻擊速度Buff以及敏捷興奮劑效果採加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-1 - Redoubled Zeal(倍增狂熱) +]--
	local ED_ZEA_Ability_1_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 第二段充能的冷卻只有在第一段充能完成冷卻後才會開始。",
	}, "\n"), enhdesc_col)

	--[+ Ability 1-2 - Invocation of Death(死亡禱文) +]--
	local ED_ZEA_Ability_1_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 每次觸發共減少12秒冷卻時間，",
		"  其中包含基礎4秒加天賦提供4次，",
		"  每2秒等於額外8秒，共計12秒。",
		can_be_refr_dur_active_dur,
		"- 與「專注興奮劑」的剩餘冷卻縮短效果（每秒3秒）同時生效。",
		doesnt_interact_w_c_a_r_from_curio,
	}, "\n"), enhdesc_col)

	--[+ Ability 2 - Chorus of Spiritual Fortitude(不屈靈魂合唱) +]--
	local ED_ZEA_Ability_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 範圍：10米。",
		"- 在效果持續期間，可刷新對眩暈或無敵的免疫效果。",
		"- 「無敵」表示玩家的生命值不會低於1，但多餘的生命值仍可能被削減。",
		"- 額外的黃色韌性持續10秒，且不會與另一位狂信徒使用相同天賦所提供的韌性重疊。但會與老兵天賦「責任與榮耀」的額外韌性採加法疊加。",
		"- 額外韌性相當於第二條韌性槽，可藉由近戰擊殺、對應天賦或武器祝福恢復。",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-1 - Holy Cause(神聖事業) +]--
	local ED_ZEA_Ability_2_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當Buff觸發時，只要盟友處於協同範圍內，就會獲得此Buff。",
		stacks_mult_w_other_dmg_red_buffs,
		"- 不會與另一位狂信徒使用相同天賦重複疊加。",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-2 - Banishing Light(放逐之光) +]--
	local ED_ZEA_Ability_2_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 這個天賦有三個效果：",
		"-- 1. 讓脈衝可以對10米內、不可壓制的敵人造成踉蹌。若是巨獸或隊長/雙胞胎且距離小於4米，則在第1、3、5、7次脈衝時施加強制踉蹌，其餘不可壓制的敵人（小於4米）則每次脈衝都會被強制踉蹌。強制踉蹌持續2秒。",
		"-- 2. 每次脈衝都對10米內可壓制的敵人施加極高的壓制，並提高壓制衰減延遲。",
		"--- 可壓制的敵人：瘟疫殭屍（本天賦特例）、渣滓砲手、渣滓槍手、血痂砲手、血痂射手、血痂槍手、收割者、砲手。",
		"-- 3. 在引導期間，每秒將脈衝半徑由10米增加0.1米，最多到10.5米。此範圍內的敵人將受到壓制或踉蹌（但強制踉蹌的固定範圍不變）。",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-3 - Ecclesiarch's Call(教宗之喚) +]--
	local ED_ZEA_Ability_2_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當Buff觸發時，只要盟友處於協同範圍內，就會獲得此Buff。",
		stacks_add_w_oth_dmg,
		"- 不會與另一位狂信徒使用相同天賦重複疊加。",
	}, "\n"), enhdesc_col)

	--[+ Ability 2-4 - Martyr's Purpose(殉道者之願) +]--
	local ED_ZEA_Ability_2_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 倒地時不會觸發。",
		"- 例如，若狂信徒的「不屈靈魂合唱」仍有55秒冷卻，且受到80點生命傷害，則剩餘冷卻55秒會被減少：60 x (80 x 0.01) = 48秒，最後只剩7秒。",
		"- 與「專注興奮劑」的3秒/秒冷卻縮短效果同時生效。",
		"- 不會與來自珍品的戰鬥技能再生效果互動，後者僅減少戰鬥技能的最大冷卻時間。",
	}, "\n"), enhdesc_col)

	--[+ Ability 3 - Shroudfield(隱秘領域) +]--
	local ED_ZEA_Ability_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		become_invis_drop_all_enemy_aggro,
		"- 隱形時仍然可能受傷。",
		"- 會解除隱形的動作包括：以近戰攻擊命中敵人、任何遠程攻擊、投擲手雷（快速、瞄準或拋擲）、完成救援/復甦/拉起隊友或掙脫束縛的動作；投擲刀只有在命中目標時才會破除隱形。",
		"- 不會解除隱形的動作包括：推擊敵人、使用興奮劑（自用或給隊友）、在隱形前已丟出去的手雷爆炸、主動的持續傷害效果、操作占卜儀與小遊戲等。",
		"{#color(255, 35, 5)}無法躲避惡魔宿主!{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-1 - Master-Crafted Shroudfield +]--
	-- local ED_ZEA_Ability_3_1_rgb = iu_actit(table.concat({"",}, "\n"), enhdesc_col)

	--[+ Ability 3-2 - Perfectionist(完美主義者) +]--
	local ED_ZEA_Ability_3_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 提升的技巧傷害與其他相關Buff採加法疊加。",
		"- 背刺傷害與「背刺者」、「隱秘領域」的加成採加法疊加，計算時再與其他傷害或武器威力加成採乘法疊加。",
		"- 同時將「隱秘領域」的最大冷卻由30秒增加至37.5秒。",
		"- 此額外冷卻可被以下效果部分抵銷：靈能者光環「先知之眼」、珍品的戰鬥技能冷卻、以及任務關卡冷卻減少20%的增益等。",
	}, "\n"), enhdesc_col)

	--[+ Ability 3-3 - Invigorating Revelation(振奮啟示) +]--
	local ED_ZEA_Ability_3_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當隱形結束時，在接下來5秒內每秒恢復相當於最大韌性的8%。",
		red_both_tghns_n_health_dmg,
		stacks_mult_w_other_dmg_red_buffs,
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Ability 3-4 - Pious Cut-Throat(虔誠刺客) +]--
	local ED_ZEA_Ability_3_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 有0.2秒的內部冷卻時間。",
		"- 「有信者之怒」與「隱秘領域」的冷卻因此被縮短至6秒（「完美主義者」下則為7.5秒），而「不屈靈魂合唱」則縮短至12秒。",
		"- 「背刺」是從敵人背後特定角度進行的近戰攻擊。",
		"- 與「專注興奮劑」的3秒/秒冷卻縮短效果同時生效。",
		doesnt_interact_w_c_a_r_from_curio,
		"- 連枷類(Chain Weapon)武器若要觸發此天賦，必須在背刺第一下就立即擊殺目標。",
	}, "\n"), enhdesc_col)

--[+ +KEYSTONES+ +]--
	--[+ Keystone 1 - Blazing Piety(熾熱虔誠) +]--
	local ED_ZEA_Keystone_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當狂信徒在8秒內未擊殺任何敵人時，系統會視其為脫離戰鬥狀態；脫離戰鬥後，狂怒疊加會隨時間逐漸下降，以愈來愈慢的速度一個一個消耗。",
		"- 狂怒的持續時間可透過擊殺敵人來刷新。",
		"- 與其他來源的爆擊機率採加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-1 - Stalwart(死忠) +]--
	local ED_ZEA_Keystone_1_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當狂怒疊加達到25層時，會有兩個效果：",
		"-- 1. 立即回復50%最大韌性。同時，只要維持25層狂怒，每擊殺1名敵人就額外回復2%最大韌性。",
		"--- 與狂信徒原本近戰擊殺可回復5%韌性的效果採加法疊加。",
		"--"..z_eff_of_this_tougn_rep,
		"-- 2. 只要維持25層狂怒，便可獲得25%的韌性減傷。",
		"--"..stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-2 - Fury Rising(怒火升騰) +]--
	local ED_ZEA_Keystone_1_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 順劈攻擊時，若觸發暴擊，可能一次生成多層狂怒。",
		"- 攻擊護盾若發生暴擊，也能觸發此效果。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-3 - Infectious Zeal(迅疾狂熱) +]--
	local ED_ZEA_Keystone_1_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		can_be_refr_dur_active_dur,
		"- 不會與另一位狂信徒使用相同天賦重複疊加。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 1-4 - Righteous Warrior(正義勇士) +]--
	local ED_ZEA_Keystone_1_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 進一步提升所有可暴擊攻擊的爆擊機率，在「熾熱虔誠」原本的15%爆擊率基礎上再增幅（最終可達+25%）。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2 - Martyrdom(殉道) +]--
	local ED_ZEA_Keystone_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當血條中的任一段完全耗盡或被腐蝕時，該段即視為缺失。",
		"- 在難度異端或詛咒下，狂信徒最高可擁有7段血量（基礎2段、來自珍品的+3段、以及「信仰之勇」的+2段），等同於可達成最多6層疊加。",
		"- 每疊加可使近戰攻擊造成的傷害提升8%（在異端、詛咒下最高可+48%，更低難度最高可+56%）。",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-1 - I Shall Not Fall(不滅意志) +]--
	local ED_ZEA_Keystone_2_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 每缺失一段血量，便獲得6.5%的韌性減傷（在異端、詛咒最高可達39%，更低難度則可達45.5%）。",
		"- 與小型韌性減傷天賦採加法疊加。",
		"- 與其他減傷Buff在計算時採乘法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 2-2 - Maniac(狂燥之心) +]--
	local ED_ZEA_Keystone_2_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 每缺失一段血量時，使近戰武器攻擊動畫速度增加4%（在異端、詛咒最高可+24%，更低難度最高可+28%）。",
		"- 與其他攻擊速度Buff採加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Keystone 3 - Inexorable Judgement(命定審判) +]--
	local ED_ZEA_Keystone_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 在衝刺(Sprinting)時會以雙倍速度生成「命定審判」疊加。",
		"- 只要以近戰或遠程攻擊命中敵人，就會清空目前所有「命定審判」疊加。",
		"- 每清空1層「命定審判」，便在6秒內讓近戰與遠程攻擊動畫速度提升1%，並使所有傷害提升1%。",
		"- 同時每清空1層，閃避速度與閃避距離增加0.5%，閃避恢復時間增加1%。",
		"- 在這6秒Buff期間內，仍可繼續累積新的「命定審判」。",
		"- 與其他攻擊速度相關Buff採加法疊加。",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-1 - Retributor's Stance(懲戒者姿態) +]--
	local ED_ZEA_Keystone_3_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Keystone 3-2 - Inebriate's Poise(飄忽身形) +]--
	local ED_ZEA_Keystone_3_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 每成功閃避敵方近戰或遠程攻擊（除了砲手、收割者及狙擊手）與特殊束縛攻擊（如瘟疫獵犬撲擊、陷阱兵投網、變種人衝撞抓取）時，額外獲得3層「命定審判」。",
		succss_dodge_means,
		z_ghost_hitnrun_n_stripp,
		"",
	}, "\n"), enhdesc_col)

--[+ +PASSIVES+ +]--
	--[+ Passive 1 - Disdain(蔑視) +]--
	local ED_ZEA_Passive_1_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 一次揮擊可能產生多層疊加。",
		"- 疊加會一直存在，直到被消耗為止。",
		stacks_add_w_oth_dmg,
		"- 遠程武器的近戰特殊動作（如槍托揮擊等）也能產生並消耗這些疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 2 - Backstabber(背刺者) +]--
	local ED_ZEA_Passive_2_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 解鎖背刺機制。",
		"- 與「隱秘領域」以及「完美主義者」的背刺傷害加成採加法疊加。",
		"- 與其他傷害增益、武器威力增幅則是乘法計算。",
		"- 「背刺」指從敵人背後的特定角度進行近戰攻擊。",
	}, "\n"), enhdesc_col)

	--[+ Passive 3 - Anoint in Blood(鮮血受膏) +]--
	local ED_ZEA_Passive_3_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當裝備遠程武器時，對12.5米內的敵人造成的任何傷害提高25%。",
		stacks_add_w_oth_dmg,
		"在12.5米之後，此傷害增益會隨距離遞減，至30米時減至0：",
		"______________________________",
		"距離(m): 1-12.5|   13|  15|  20|  25|  30",
		"傷害(%):       25| ~24| ~21| ~14|  ~7|   0",
		"______________________________",
		"- 只要狂信徒與敵人的距離在30米內且仍裝備遠程武器，這個效果也適用於「信仰之刃」以及各類持續傷害，包含「獻祭手雷」的燃燒、以及「眩暈風暴手雷」、「眩暈手雷」的感電等。",
		"- 請注意，不同遠程武器的實際傷害範圍各不相同，與此天賦的互動方式也可能不同。",
	}, "\n"), enhdesc_col)

	--[+ Passive 4 - Scourge(天災) +]--
	local ED_ZEA_Passive_4_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 近戰攻擊的暴擊（包含遠程武器的近戰特殊動作）會對敵人施加2層流血。",
		"- 無法透過護盾造成流血。",
		"- 流血：",
		"-- 持續1.5秒。",
		"-- 每0.5秒造成傷害。",
		"-- 有新的流血層數疊加時會刷新流血持續時間。",
		"-- 與其他來源的流血相同。",
		"-- 整體對護甲傷害修正略高，對甲殼傷害修正偏低。",
		can_be_refr_dur_active_dur,
	}, "\n"), enhdesc_col)

	--[+ Passive 5 - Enemies Within, Enemies Without(內憂外患) +]--
	local ED_ZEA_Passive_5_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 距離不受地形影響。",
		"- 當狂信徒掛在懸崖邊或被變種人、瘟疫獵犬、陷阱兵、惡魔宿主、混沌魔物或納垢巨獸束縛時，此回復功能會暫停。",
		"- 不會與協同韌性再生相互影響。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 6 - Fortitude in Fellowship(合抱成林) +]--
	local ED_ZEA_Passive_6_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 固定增加50%的協同基準值，提升協同範圍內每位隊友所提供的韌性再生量。",
		"- 與「孤狼」的效果採加法疊加，最終計算時則與珍品提供的韌性再生速度、老兵的小型天賦「鼓舞人心」、歐格林光環「保持靠近!」等效果乘法相乘。",
		"- 額外提升狂信徒的基礎協同韌性再生量：",
		"_______________________________",
		"隊友: | CTR:                 | 5秒後總計:",
		"      0 |  0.00 -> 3.75     | 18.75(HUD約19)",
		"       1 |  3.75 -> 7.50     | 37.50(HUD約38)",
		"      2 |  5.63 -> 9.38     | 46.88(HUD約47)",
		"      3 |  7.50 -> 11.25    | 56.25(HUD約57)",
		"_______________________________",
		"(*CTR = Coherency Toughness Regenerated)",
		"- 由於協同韌性再生倍率是在計算過程中套用，此天賦可讓狂信徒即使在沒有隊友進入協同範圍時，仍獲得部分韌性再生。",
	}, "\n"), enhdesc_col)

	--[+ Passive 7 - Purge the Unclean(淨化不潔) +]--
	local ED_ZEA_Passive_7_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 與武器專長中的相同傷害加成採加法疊加，最終再與其他傷害增益或武器威力增幅乘法計算。",

	}, "\n"), enhdesc_col)

	--[+ Passive 8 - Blood Redemption(鮮血救贖) +]--
	local ED_ZEA_Passive_8_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 將狂信徒近戰擊殺所回復的韌性，從基礎的5%提升至7.5%。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 9 - Bleed for the Emperor(為了帝皇) +]--
	local ED_ZEA_Passive_9_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 僅在受到生命值傷害時觸發。",
		"- 若本次傷害足以摧毀狂信徒的一整段血量，該次傷害將降低40%。",
		stacks_mult_w_other_dmg_red_buffs,
		"- 不會減少韌性傷害。",
	}, "\n"), enhdesc_col)

	--[+ Passive 10 - Vicious Offering(惡毒贈禮) +]--
	local ED_ZEA_Passive_10_rgb = iu_actit(table.concat({
		ppp___ppp,
		z_eff_of_this_tougn_rep,
		"- 例如，若狂信徒最大韌性為120，則每次使用重擊近戰擊殺敵人時，可回復120x(0.05+0.1)=18點韌性。",
	}, "\n"), enhdesc_col)

	--[+ Passive 11 - The Voice of Terra(泰拉之音) +]--
	local ED_ZEA_Passive_11_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當使用遠程攻擊擊殺敵人時（包含「信仰之刃」），回復4%最大韌性。",
		"- 與武器祝福「激勵彈幕」、「慰藉精準」、「榮耀獵手」同時生效。",
		z_eff_of_this_tougn_rep,
	}, "\n"), enhdesc_col)

	--[+ Passive 12 - Restoring Faith(恢復信仰) +]--
	local ED_ZEA_Passive_12_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 僅在受到生命值傷害時觸發（包含倒地時）。",
		"- 最多可同時記錄10次受到的傷害，即便在恢復期間再次受到傷害，也會正確恢復。",
	}, "\n"), enhdesc_col)

	--[+ Passive 13 - Second Wind(精力復甦) +]--
	local ED_ZEA_Passive_13_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 具有0.5秒的內部冷卻。",
		z_eff_of_this_tougn_rep,
		procs_on_succss_dodging,
		succss_dodge_means,
		z_ghost_hitnrun_n_stripp,
	}, "\n"), enhdesc_col)

	--[+ Passive 14 - Enduring Faith(堅韌信仰) +]--
	local ED_ZEA_Passive_14_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 近戰或遠程攻擊若觸發暴擊（包含武器特殊動作），則在4秒內獲得50%的韌性減傷。",
		can_be_refr_dur_active_dur,
		stacks_mult_w_other_dmg_red_buffs,
	}, "\n"), enhdesc_col)

	--[+ Passive 15 - The Emperor's Bullet(帝皇之彈) +]--
	local ED_ZEA_Passive_15_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 當彈匣子彈量降至0時，在5秒內使近戰的踉蹌強度提升30%、近戰武器攻擊動作速度提升10%。",
		"- 攻擊速度加成與「信仰狂亂」、「有信者之怒」、「命定審判」、「狂燥之心」以及敏捷興奮劑等相同類型的Buff以加法疊加。",
		"- 踉蹌加成與「重傷」、「信仰之錘」、「懲罰」以及其他武器祝福以加法疊加，但與武器威力加成則是乘法相乘。",
	}, "\n"), enhdesc_col)

	--[+ Passive 16 - Dance of Death(死亡之舞) +]--
	local ED_ZEA_Passive_16_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 與武器祝福「連跑帶打」、「火藥灼傷」等相關增益採加法疊加。",
		procs_on_succss_dodging,
		succss_dodge_means,
		z_ghost_hitnrun_n_stripp,
	}, "\n"), enhdesc_col)

	--[+ Passive 17 - Duellist(決鬥者) +]--
	local ED_ZEA_Passive_17_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 與其他弱點攻擊或技巧(Finesse)傷害加成採加法疊加，與武器威力增幅等效果則是乘法計算。",
		procs_on_succss_dodging,
		succss_dodge_means,
		z_ghost_hitnrun_n_stripp,
	}, "\n"), enhdesc_col)

	--[+ Passive 18 - Until Death(死戰到底) +]--
	local ED_ZEA_Passive_18_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 若此被動不在冷卻中，則在受到傷害時使狂信徒的生命值不會被降至1以下，並提供5秒無敵。",
		"- 「無敵」意指狂信徒的血量不會低於1，但若血量高於1，依然會正常扣除（例如受到攻擊的同時被醫療箱回復）。",
		"- 不會防止地形殺(如被摔出邊界)。",
	}, "\n"), enhdesc_col)

	--[+ Passive 19 - Unremitting(不斷奮戰) +]--
	local ED_ZEA_Passive_19_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 與珍品、遠程與近戰武器、以及敏捷興奮劑提供的衝刺效率採乘法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 20 - Shield of Contempt(輕蔑之盾) +]--
	local ED_ZEA_Passive_20_rgb = iu_actit(table.concat({
		ppp___ppp,
		red_both_tghns_n_health_dmg,
		"- 僅在受到生命值傷害時觸發（包含倒地時）。",
		"- 狂信徒自身只要符合條件就能觸發。",
		"- 與隊友或機器人共用同一個冷卻(Global Cooldown)，不需協同範圍也能觸發。",
		"- 此天賦觸發後，只會對觸發的那位玩家提供4秒的減傷效果，然後進入10秒冷卻。",
		"- 冷卻在這4秒Buff期間就已開始計算。",
		stacks_mult_w_other_dmg_red_buffs,
		"- 無使用者介面圖示，但在持續時間內會有畫面特效。",		
	}, "\n"), enhdesc_col)

	--[+ Passive 21 - Thy Wrath be Swift(勃然大怒) +]--
	local ED_ZEA_Passive_21_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 免疫來自近戰與遠程攻擊的眩暈與減速。",
		"- 能無阻礙地穿越火焰區域。",
		"- 只有在受到生命值傷害時，才會觸發移動速度加成。",
		"- 與「隱秘領域」以及武器祝福「提」等相關移動速度加成採加法疊加。",
		"- 與「堅定迅捷」提供的衝刺速度加成採乘法計算。",
	}, "\n"), enhdesc_col)

	--[+ Passive 22 - Good Balance(四平八穩) +]--
	local ED_ZEA_Passive_22_rgb = iu_actit(table.concat({
		ppp___ppp,
		red_both_tghns_n_health_dmg,
		"- 可在持續時間內刷新。",
		stacks_mult_w_other_dmg_red_buffs,
		procs_on_succss_dodging,
		succss_dodge_means,
		z_ghost_hitnrun_n_stripp,
	}, "\n"), enhdesc_col)

	--[+ Passive 23 - Desperation(背水一戰) +]--
	local ED_ZEA_Passive_23_rgb = iu_actit(table.concat({
		ppp___ppp,
		"當耐力因衝刺、推擊或阻擋敵方近戰攻擊而降至0時，於接下來5秒內使近戰攻擊的傷害提升20%。",
		can_be_refr_dur_active_dur,
		stacks_add_w_oth_dmg,
		"- 若是因衝刺而觸發，Buff的持續計時會在停止衝刺後才開始。",
	}, "\n"), enhdesc_col)

	--[+ Passive 24 - Holy Revenant(吊命聖徒) +]--
	local ED_ZEA_Passive_24_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 在「死戰到底」的5秒期間，造成的非近戰傷害有0.7%轉化為吸血量，近戰傷害則有2.1%轉化為吸血量。",
		"- 當「死戰到底」結束時，最多可將這些吸血量轉化為相當於25%最大生命值的回復。",
	}, "\n"), enhdesc_col)

	--[+ Passive 25 - Sainted Gunslinger(封聖神射手) +]--
	local ED_ZEA_Passive_25_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 每次近戰擊殺可獲得一層疊加(最高5層)。",
		"- 疊加會持續到進行換彈或裝填特殊彈藥(戰鬥霰彈槍)時被消耗。",
		"- 每層可使換彈動作速度提升6%。",
		"- 與武器特性、武器祝福、以及敏捷興奮劑的換彈速度增益採加法疊加。",
		"- 此效果同樣提升戰鬥霰彈槍特殊動作的裝填速度。",
	}, "\n"), enhdesc_col)

	--[+ Passive 26 - Hammer of Faith(信仰之錘) +]--
	local ED_ZEA_Passive_26_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 提升近戰與遠程攻擊的踉蹌強度。",
		"- 同時影響遠程武器的近戰特殊動作。",
		"- 與「重傷」、「懲罰」或「帝皇之彈」等相關增益採加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 27 - Grievous Wounds(重傷) +]--
	local ED_ZEA_Passive_27_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 近戰攻擊若擊中敵人弱點，踉蹌強度提高50%。",
		"- 也影響遠程武器的近戰特殊動作。",
		"- 與「信仰之錘」、「懲罰」、「帝皇之彈」的踉蹌加成採加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 28 - Ambuscade(伏擊) +]--
	local ED_ZEA_Passive_28_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 解鎖「側面射擊(Flanking)」。",
		"- 當側面射擊時，傷害增加30%。",
		"- 與武器祝福「掃射」採加法疊加，最終再與其他傷害Buff與武器威力增幅做乘法計算。",
		"- 「側面射擊」指從敵人背後特定角度執行的遠程攻擊，類似於背刺的遠程版。",
	}, "\n"), enhdesc_col)

	--[+ Passive 29 - Punishment(懲罰) +]--
	local ED_ZEA_Passive_29_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 每次近戰攻擊擊中3名以上敵人時，會獲得疊加(最多5層)。",
		"- 疊加持續5秒，可在持續期間內刷新。",
		"- 每層使近戰與遠程攻擊的踉蹌強度提高5%。",
		"- 與「重傷」、「信仰之錘」、「帝皇之彈」及其他武器祝福的踉蹌加成採加法疊加，與武器威力加成採乘法計算。",
		"- 當疊加達到5層時，還能免疫來自近戰與遠程攻擊的眩暈(減速仍有效)，並使狂信徒的互動動作(如復活隊友、操作物件等)不會被血量傷害所中斷。",
	}, "\n"), enhdesc_col)

	--[+ Passive 30 - Faithful Frenzy(信仰狂亂) +]--
	local ED_ZEA_Passive_30_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 與「有信者之怒」、「命定審判」、「狂燥之心」、「帝皇之彈」以及敏捷興奮劑等同類型的攻擊速度增益以加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 31 - Sustained Assault(持續突擊) +]--
	local ED_ZEA_Passive_31_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 近戰攻擊（包含遠程武器的近戰特殊動作）命中敵人時，會產生疊加(最多5層)。",
		"- 與「重傷」、「信仰之錘」、「帝皇之彈」以及武器祝福的踉蹌加成採加法疊加，與武器威力加成採乘法計算。",
		"- 每層可讓近戰攻擊傷害提升4%。",
		stacks_add_w_oth_dmg,
	}, "\n"), enhdesc_col)

	--[+ Passive 32 - The Master's Retribution +]--
	local ED_ZEA_Passive_32_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 若此技能不在冷卻狀態，當狂信徒遭到近戰攻擊時會立即釋放推擊，使攻擊者踉蹌(若可踉蹌)。",
		"- 推擊範圍2.75米，且有效推擊角度僅約22°。",
		"- 只要在此角度內，都會對直接攻擊者及其他敵人施放推擊(若可)。",
		"- 無法對碾壓者、變種人、狂怒者、巨獸與隊長/雙胞胎造成踉蹌。",
		"- 即便遭到堡壘的無傷害盾擊，也會觸發此天賦。",
		"- 狂信徒若處於被束縛或倒地狀態，則無法觸發。",
	}, "\n"), enhdesc_col)

	--[+ Passive 33 - Faith's Fortitude +]--
	local ED_ZEA_Passive_33_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 與珍品提供的額外血量段效果以加法疊加。",
	}, "\n"), enhdesc_col)

	--[+ Passive 34 - Swift Certainty +]--
	local ED_ZEA_Passive_34_rgb = iu_actit(table.concat({
		ppp___ppp,
		"- 固定提升5%的衝刺速度，並與「隱秘領域」、「勃然大怒」、小型移動速度天賦、以及武器祝福「提速」等提供的移動速度Buff採乘法相乘。",
		"- 使狂信徒在耐力(Stamina)耗盡時，仍能維持衝刺躲避的狀態。一般而言，當以一定角度繞圈衝刺躲避射擊敵人(角度需至少70°)，一旦耐力歸0，敵人就能命中玩家；但本天賦可在無耐力的情況下依舊維持衝刺躲避。",
		"衝刺躲避不會觸發「死亡之舞」、「決鬥者」、「四平八穩」、「飄忽身形(」以及「精力復甦」等天賦。",
	}, "\n"), enhdesc_col)

-- In the list below, you also need to add a new entry or change an old one.
return {
	ED_PSY_Blitz_0_rgb = ED_PSY_Blitz_0_rgb,
	ED_PSY_Blitz_1_rgb = ED_PSY_Blitz_1_rgb,
	ED_PSY_Blitz_1_1_rgb = ED_PSY_Blitz_1_1_rgb,
	ED_PSY_Blitz_1_2_rgb = ED_PSY_Blitz_1_2_rgb,
	ED_PSY_Blitz_2_rgb = ED_PSY_Blitz_2_rgb,
	ED_PSY_Blitz_2_1_rgb = ED_PSY_Blitz_2_1_rgb,
	ED_PSY_Blitz_2_2_rgb = ED_PSY_Blitz_2_2_rgb,
	ED_PSY_Blitz_2_3_rgb = ED_PSY_Blitz_2_3_rgb,
	ED_PSY_Blitz_3_rgb = ED_PSY_Blitz_3_rgb,
	ED_PSY_Blitz_3_1_rgb = ED_PSY_Blitz_3_1_rgb,
	ED_PSY_Blitz_3_2_rgb = ED_PSY_Blitz_3_2_rgb,

	ED_PSY_Aura_0_rgb = ED_PSY_Aura_0_rgb,
	ED_PSY_Aura_1_rgb = ED_PSY_Aura_1_rgb,
	ED_PSY_Aura_2_rgb = ED_PSY_Aura_2_rgb,
	ED_PSY_Aura_3_rgb = ED_PSY_Aura_3_rgb,

	ED_PSY_Ability_0_rgb = ED_PSY_Ability_0_rgb,
	ED_PSY_Ability_1_rgb = ED_PSY_Ability_1_rgb,
	ED_PSY_Ability_1_1_rgb = ED_PSY_Ability_1_1_rgb,
	ED_PSY_Ability_1_2_rgb = ED_PSY_Ability_1_2_rgb,
	ED_PSY_Ability_1_3_rgb = ED_PSY_Ability_1_3_rgb,
	ED_PSY_Ability_2_rgb = ED_PSY_Ability_2_rgb,
	ED_PSY_Ability_2_1_rgb = ED_PSY_Ability_2_1_rgb,
	ED_PSY_Ability_2_2_rgb = ED_PSY_Ability_2_2_rgb,
	ED_PSY_Ability_2_3_rgb = ED_PSY_Ability_2_3_rgb,
	ED_PSY_Ability_2_4_rgb = ED_PSY_Ability_2_4_rgb,
	ED_PSY_Ability_3_rgb = ED_PSY_Ability_3_rgb,
	ED_PSY_Ability_3_1_rgb = ED_PSY_Ability_3_1_rgb,
	ED_PSY_Ability_3_2_rgb = ED_PSY_Ability_3_2_rgb,
	ED_PSY_Ability_3_3_rgb = ED_PSY_Ability_3_3_rgb,
	ED_PSY_Ability_3_4_rgb = ED_PSY_Ability_3_4_rgb,
	ED_PSY_Ability_3_5_rgb = ED_PSY_Ability_3_5_rgb,

	ED_PSY_Keystone_1_rgb = ED_PSY_Keystone_1_rgb,
	ED_PSY_Keystone_1_1_rgb = ED_PSY_Keystone_1_1_rgb,
	ED_PSY_Keystone_1_2_rgb = ED_PSY_Keystone_1_2_rgb,
	ED_PSY_Keystone_1_3_rgb = ED_PSY_Keystone_1_3_rgb,
	ED_PSY_Keystone_1_4_rgb = ED_PSY_Keystone_1_4_rgb,
	ED_PSY_Keystone_1_5_rgb = ED_PSY_Keystone_1_5_rgb,
	ED_PSY_Keystone_1_6_rgb = ED_PSY_Keystone_1_6_rgb,
	ED_PSY_Keystone_2_rgb = ED_PSY_Keystone_2_rgb,
	ED_PSY_Keystone_2_0_1_rgb = ED_PSY_Keystone_2_0_1_rgb,
	ED_PSY_Keystone_2_0_2_rgb = ED_PSY_Keystone_2_0_2_rgb,
	ED_PSY_Keystone_2_0_3_rgb = ED_PSY_Keystone_2_0_3_rgb,
	ED_PSY_Keystone_2_1_rgb = ED_PSY_Keystone_2_1_rgb,
	ED_PSY_Keystone_2_2_rgb = ED_PSY_Keystone_2_2_rgb,
	ED_PSY_Keystone_2_3_rgb = ED_PSY_Keystone_2_3_rgb,
	ED_PSY_Keystone_2_4_rgb = ED_PSY_Keystone_2_4_rgb,
	ED_PSY_Keystone_3_rgb = ED_PSY_Keystone_3_rgb,
	ED_PSY_Keystone_3_1_rgb = ED_PSY_Keystone_3_1_rgb,
	ED_PSY_Keystone_3_2_rgb = ED_PSY_Keystone_3_2_rgb,
	ED_PSY_Keystone_3_3_rgb = ED_PSY_Keystone_3_3_rgb,
	ED_PSY_Keystone_3_4_rgb = ED_PSY_Keystone_3_4_rgb,

	ED_PSY_Passive_1_rgb = ED_PSY_Passive_1_rgb,
	ED_PSY_Passive_2_rgb = ED_PSY_Passive_2_rgb,
	ED_PSY_Passive_3_rgb = ED_PSY_Passive_3_rgb,
	ED_PSY_Passive_4_rgb = ED_PSY_Passive_4_rgb,
	ED_PSY_Passive_5_rgb = ED_PSY_Passive_5_rgb,
	ED_PSY_Passive_6_rgb = ED_PSY_Passive_6_rgb,
	ED_PSY_Passive_7_rgb = ED_PSY_Passive_7_rgb,
	ED_PSY_Passive_8_rgb = ED_PSY_Passive_8_rgb,
	ED_PSY_Passive_9_rgb = ED_PSY_Passive_9_rgb,
	ED_PSY_Passive_10_rgb = ED_PSY_Passive_10_rgb,
	ED_PSY_Passive_11_rgb = ED_PSY_Passive_11_rgb,
	ED_PSY_Passive_12_rgb = ED_PSY_Passive_12_rgb,
	ED_PSY_Passive_13_rgb = ED_PSY_Passive_13_rgb,
	ED_PSY_Passive_14_rgb = ED_PSY_Passive_14_rgb,
	ED_PSY_Passive_15_rgb = ED_PSY_Passive_15_rgb,
	ED_PSY_Passive_16_rgb = ED_PSY_Passive_16_rgb,
	ED_PSY_Passive_17_rgb = ED_PSY_Passive_17_rgb,
	ED_PSY_Passive_18_rgb = ED_PSY_Passive_18_rgb,
	ED_PSY_Passive_19_rgb = ED_PSY_Passive_19_rgb,
	ED_PSY_Passive_20_rgb = ED_PSY_Passive_20_rgb,
	ED_PSY_Passive_21_rgb = ED_PSY_Passive_21_rgb,
	ED_PSY_Passive_22_rgb = ED_PSY_Passive_22_rgb,
	ED_PSY_Passive_23_rgb = ED_PSY_Passive_23_rgb,
	ED_PSY_Passive_24_rgb = ED_PSY_Passive_24_rgb,
	ED_PSY_Passive_25_rgb = ED_PSY_Passive_25_rgb,
	ED_PSY_Passive_26_rgb = ED_PSY_Passive_26_rgb,
	ED_PSY_Passive_27_rgb = ED_PSY_Passive_27_rgb,
	ED_PSY_Passive_28_rgb = ED_PSY_Passive_28_rgb,
	ED_PSY_Passive_29_rgb = ED_PSY_Passive_29_rgb,
	ED_PSY_Passive_30_rgb = ED_PSY_Passive_30_rgb,
	ED_PSY_Passive_31_rgb = ED_PSY_Passive_31_rgb,
	ED_PSY_Passive_32_rgb = ED_PSY_Passive_32_rgb,

	ED_ZEA_Blitz_0_rgb = ED_ZEA_Blitz_0_rgb,
	ED_ZEA_Blitz_1_rgb = ED_ZEA_Blitz_1_rgb,
	ED_ZEA_Blitz_1_1_rgb = ED_ZEA_Blitz_1_1_rgb,
	ED_ZEA_Blitz_1_2_rgb = ED_ZEA_Blitz_1_2_rgb,
	ED_ZEA_Blitz_2_rgb = ED_ZEA_Blitz_2_rgb,
	ED_ZEA_Blitz_2_1_rgb = ED_ZEA_Blitz_2_1_rgb,
	ED_ZEA_Blitz_2_2_rgb = ED_ZEA_Blitz_2_2_rgb,
	ED_ZEA_Blitz_2_3_rgb = ED_ZEA_Blitz_2_3_rgb,
	ED_ZEA_Blitz_3_rgb = ED_ZEA_Blitz_3_rgb,
	ED_ZEA_Blitz_3_1_rgb = ED_ZEA_Blitz_3_1_rgb,
	ED_ZEA_Blitz_3_2_rgb = ED_ZEA_Blitz_3_2_rgb,
	ED_ZEA_Aura_0_n_1_rgb = ED_ZEA_Aura_0_n_1_rgb,
	ED_ZEA_Aura_2_rgb = ED_ZEA_Aura_2_rgb,
	ED_ZEA_Aura_3_rgb = ED_ZEA_Aura_3_rgb,

	ED_ZEA_Ability_0_rgb = ED_ZEA_Ability_0_rgb,
	ED_ZEA_Ability_1_rgb = ED_ZEA_Ability_1_rgb,
	ED_ZEA_Ability_1_1_rgb = ED_ZEA_Ability_1_1_rgb,
	ED_ZEA_Ability_1_2_rgb = ED_ZEA_Ability_1_2_rgb,
	ED_ZEA_Ability_2_rgb = ED_ZEA_Ability_2_rgb,
	ED_ZEA_Ability_2_1_rgb = ED_ZEA_Ability_2_1_rgb,
	ED_ZEA_Ability_2_2_rgb = ED_ZEA_Ability_2_2_rgb,
	ED_ZEA_Ability_2_3_rgb = ED_ZEA_Ability_2_3_rgb,
	ED_ZEA_Ability_2_4_rgb = ED_ZEA_Ability_2_4_rgb,
	ED_ZEA_Ability_3_rgb = ED_ZEA_Ability_3_rgb,
	ED_ZEA_Ability_3_2_rgb = ED_ZEA_Ability_3_2_rgb,
	ED_ZEA_Ability_3_3_rgb = ED_ZEA_Ability_3_3_rgb,
	ED_ZEA_Ability_3_4_rgb = ED_ZEA_Ability_3_4_rgb,

	ED_ZEA_Keystone_1_rgb = ED_ZEA_Keystone_1_rgb,
	ED_ZEA_Keystone_1_1_rgb = ED_ZEA_Keystone_1_1_rgb,
	ED_ZEA_Keystone_1_2_rgb = ED_ZEA_Keystone_1_2_rgb,
	ED_ZEA_Keystone_1_3_rgb = ED_ZEA_Keystone_1_3_rgb,
	ED_ZEA_Keystone_1_4_rgb = ED_ZEA_Keystone_1_4_rgb,
	ED_ZEA_Keystone_2_rgb = ED_ZEA_Keystone_2_rgb,
	ED_ZEA_Keystone_2_1_rgb = ED_ZEA_Keystone_2_1_rgb,
	ED_ZEA_Keystone_2_2_rgb = ED_ZEA_Keystone_2_2_rgb,
	ED_ZEA_Keystone_3_rgb = ED_ZEA_Keystone_3_rgb,
	ED_ZEA_Keystone_3_1_rgb = ED_ZEA_Keystone_3_1_rgb,
	ED_ZEA_Keystone_3_2_rgb = ED_ZEA_Keystone_3_2_rgb,

	ED_ZEA_Passive_1_rgb = ED_ZEA_Passive_1_rgb,
	ED_ZEA_Passive_2_rgb = ED_ZEA_Passive_2_rgb,
	ED_ZEA_Passive_3_rgb = ED_ZEA_Passive_3_rgb,
	ED_ZEA_Passive_4_rgb = ED_ZEA_Passive_4_rgb,
	ED_ZEA_Passive_5_rgb = ED_ZEA_Passive_5_rgb,
	ED_ZEA_Passive_6_rgb = ED_ZEA_Passive_6_rgb,
	ED_ZEA_Passive_7_rgb = ED_ZEA_Passive_7_rgb,
	ED_ZEA_Passive_8_rgb = ED_ZEA_Passive_8_rgb,
	ED_ZEA_Passive_9_rgb = ED_ZEA_Passive_9_rgb,
	ED_ZEA_Passive_10_rgb = ED_ZEA_Passive_10_rgb,
	ED_ZEA_Passive_11_rgb = ED_ZEA_Passive_11_rgb,
	ED_ZEA_Passive_12_rgb = ED_ZEA_Passive_12_rgb,
	ED_ZEA_Passive_13_rgb = ED_ZEA_Passive_13_rgb,
	ED_ZEA_Passive_14_rgb = ED_ZEA_Passive_14_rgb,
	ED_ZEA_Passive_15_rgb = ED_ZEA_Passive_15_rgb,
	ED_ZEA_Passive_16_rgb = ED_ZEA_Passive_16_rgb,
	ED_ZEA_Passive_17_rgb = ED_ZEA_Passive_17_rgb,
	ED_ZEA_Passive_18_rgb = ED_ZEA_Passive_18_rgb,
	ED_ZEA_Passive_19_rgb = ED_ZEA_Passive_19_rgb,
	ED_ZEA_Passive_20_rgb = ED_ZEA_Passive_20_rgb,
	ED_ZEA_Passive_21_rgb = ED_ZEA_Passive_21_rgb,
	ED_ZEA_Passive_22_rgb = ED_ZEA_Passive_22_rgb,
	ED_ZEA_Passive_23_rgb = ED_ZEA_Passive_23_rgb,
	ED_ZEA_Passive_24_rgb = ED_ZEA_Passive_24_rgb,
	ED_ZEA_Passive_25_rgb = ED_ZEA_Passive_25_rgb,
	ED_ZEA_Passive_26_rgb = ED_ZEA_Passive_26_rgb,
	ED_ZEA_Passive_27_rgb = ED_ZEA_Passive_27_rgb,
	ED_ZEA_Passive_28_rgb = ED_ZEA_Passive_28_rgb,
	ED_ZEA_Passive_29_rgb = ED_ZEA_Passive_29_rgb,
	ED_ZEA_Passive_30_rgb = ED_ZEA_Passive_30_rgb,
	ED_ZEA_Passive_31_rgb = ED_ZEA_Passive_31_rgb,
	ED_ZEA_Passive_32_rgb = ED_ZEA_Passive_32_rgb,
	ED_ZEA_Passive_33_rgb = ED_ZEA_Passive_33_rgb,
	ED_ZEA_Passive_34_rgb = ED_ZEA_Passive_34_rgb,
}