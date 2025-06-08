---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text


--[+ ++ENHANCED DESCRIPTIONS - 增強苦修描述 ++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true)

--[++ PENANCES - 苦修 ++]--
	--[++VETERAN - 老兵 ++]--
		--[+ Stay Accurate - 保持精準 +]--
		--[+ Adept Assassin - 老練刺客 +]--
		--[+ Deadeye 神射手 +]--
		--[+ Marked For Death - 死亡標記 +]--
	local ED_Headshot_rgb_tw = iu_actit(table.concat({
		"\n",
		"{#color(177, 144, 0)}+++ 瞄準敵人的頭部射擊。+++{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ On Overwatch - 掩護射擊 +]--
	local ED_No_dmg_taken_corrupt_rgb_tw = iu_actit(table.concat({
		"\n",
		"+++ 小心所有腐敗來源！+++",
		"- Boss、獵犬與法術書都會造成腐敗。",
	}, "\n"), enhdesc_col)

	--[+ Make Every Shot Count - 彈無虛發 +]--
	local ED_No_missed_shots_rgb_tw = iu_actit(table.concat({
		"\n",
		" +++ - 請勿攜帶補充彈藥的光環。 +++",
		"- 可使用彈藥數量低的槍，打光後用近戰完成任務。",
		"- 首次打光子彈時只要不再開火，補充彈藥將不被計算。",
	}, "\n"), enhdesc_col)
	
	--[+ Be Methodical - 有條不紊 +]--
	local ED_On_heresy_volley_rgb_tw = iu_actit(table.concat({
		"\n",
		"+++ 啟用『處決者姿態』時 +++",
		"搭配『目標引導增強』與『火力反擊』天賦，",
		"可以延長持續時間，並標記更多敵人。"
	}, "\n"), enhdesc_col)

	--[+ Long Bomb - 遠擲炸彈+]--
	local ED_Long_bomb_rgb_tw = iu_actit(table.concat({
		"\n",
		"嘗試從約 50 公尺的距離，\n以約 30 度仰角丟擲破片手榴彈，讓它在敵人頭頂爆炸。",
		"\n",
		"標記能幫助你判斷距離。",
		"建議選擇視野開闊、天花板較高的地圖來操作。"
	}, "\n"), enhdesc_col)

	--[+ Unseen Predator - 隱形獵手 +]--
	local ED_Unseen_predator_rgb_tw = iu_actit(table.concat({
		"\n",
		"+++ 壓制敵人的效果會在退出潛行模式後生效。+++",
	}, "\n"), enhdesc_col)

	--[++ ZEALOT - 狂信徒 ++]--
	--[+ Blessed be Thine Aim - 聖佑汝之瞄準 +]--
	local ED_Blessed_be_thine_aim_rgb_tw = iu_actit(table.concat({
		"\n",
		" +++ 飛刃可爆頭秒殺大多敵人 +++",
		"但不包含歐格林、狂戰士、輾壓者和巨獸。",
	}, "\n"), enhdesc_col)

	--[+ Buying Time +]-- руоф Передышка
	local ED_Buying_time_rgb_tw = iu_actit(table.concat({
		"\n",
		" +++ 不用直擊命中狙擊手 +++",
		"只要在他頭上爆炸就有效。",
	}, "\n"), enhdesc_col)

	
	--[++ PSYKER - 靈能者 ++]--
	--[+ Unleash the Warp - 亞空間釋放 +]--
	local ED_Unleash_warp_rgb_tw = iu_actit(table.concat({
		"\n",
		"所有亞空間攻擊都會計算",
		" - 法杖的主攻、次要攻擊。",
		" - 靈能劍的特殊攻擊、爆炸天賦。",
		" - 靈魂之火。",
	}, "\n"), enhdesc_col)


	--[+ Cliffhanger - 懸崖邊緣 +]--
	local ED_Cliffhanger_rgb_tw = iu_actit(table.concat({
		"\n",
		"若要完成此苦修，",
		"請使用『靈能學者之怒』或『刺耳尖嘯』這兩個技能。",
	}, "\n"), enhdesc_col)

	--[+ Warp Battery - 亞空間電池 +]--
	local ED_Warp_battery_rgb_tw = iu_actit(table.concat({
		"\n",
		"+++ 任務進行中請完全不要使用主動技能！+++",
		"若使用火焰法杖有武器祝福或被動天賦有『靈魂燃燒』，",
		"可搭配鑰石修改器『靈能吸血鬼』、『涅槃』延長時間，",
		"同時閃擊『動能撕裂者』也非常有幫助。",
	}, "\n"), enhdesc_col)

	--[+ Pick n' Mix - 每樣來點 +]-- 
	local ED_Pick_n_mix_rgb_tw = iu_actit(table.concat({
		"\n",
		"建議使用『顱腦崩裂』，搭配『動能共鳴』，",
		"可讓此天賦的充能速度提升 75%。"
	}, "\n"), enhdesc_col)


	--[++ OGRYN - 歐格林 ++]--
	--[+ Don't Stop Me Now! - 別讓我停下 +]-- 
	local ED_Dont_stop_me_now_rgb_tw = iu_actit(table.concat({
		"\n",
		"最簡單的做法：",
		"使用『專注針（黃）』後，開技能『蠻牛衝撞』，",
		"第一次衝刺完整 20 公尺後等技能冷卻，",
		"接著可以使用第二次繼續往前或往後跑。"
	}, "\n"), enhdesc_col)


	--[+ Something In Your Eye - 你眼睛裡有東西 +]-- 
	local ED_Something_in_your_eye_rgb_tw = iu_actit(table.concat({
		"\n",
		"僅限初始的「巨量傷害盒」，但有時候出bug導致「投彈完畢！」也會觸發（即使沒殺死）",
		"\n",
		"腐蝕者是一種混沌突變體，中央有一隻大眼睛。\n在任務中你需要先摧毀牠的三條觸手，牠才會張開眼睛"
	}, "\n"), enhdesc_col)

	--[+ Heavyweight Champion - 重量級冠軍 +]-- 
	local ED_Heavyweight_champion_rgb_tw = iu_actit(table.concat({
		"\n",
		"歐格林類型不拘，只要隊伍裡至少4名歐格林就可以。",
		"小心瘟疫歐格林會中斷你的移動，影響操作節奏。"
	}, "\n"), enhdesc_col)

	--[+ I'm in Charge - 對衝 +]--
	local ED_Im_in_charge_rgb_tw = iu_actit(table.concat({
		"\n",
		"當瘟疫歐格林朝你或隊友衝過來時，使用你的技能。",
		"牠衝鋒前會先怒吼一聲，再壓低身體準備衝刺。"
	}, "\n"), enhdesc_col)


-- In the list below, you also need to add a new entry or change an old one.
return {
	ED_Headshot_rgb_tw = ED_Headshot_rgb_tw,
	ED_No_dmg_taken_corrupt_rgb_tw = ED_No_dmg_taken_corrupt_rgb_tw,
	ED_No_missed_shots_rgb_tw = ED_No_missed_shots_rgb_tw,
	ED_On_heresy_volley_rgb_tw = ED_On_heresy_volley_rgb_tw,
	ED_Long_bomb_rgb_tw = ED_Long_bomb_rgb_tw,
	ED_Unseen_predator_rgb_tw = ED_Unseen_predator_rgb_tw,
	ED_Blessed_be_thine_aim_rgb_tw = ED_Blessed_be_thine_aim_rgb_tw,
	ED_Buying_time_rgb_tw = ED_Buying_time_rgb_tw,
	ED_Unleash_warp_rgb_tw = ED_Unleash_warp_rgb_tw,
	ED_Cliffhanger_rgb_tw = ED_Cliffhanger_rgb_tw,
	ED_Warp_battery_rgb_tw = ED_Warp_battery_rgb_tw,
	ED_Pick_n_mix_rgb_tw = ED_Pick_n_mix_rgb_tw,
	ED_Dont_stop_me_now_rgb_tw = ED_Dont_stop_me_now_rgb_tw,
	ED_Something_in_your_eye_rgb_tw = ED_Something_in_your_eye_rgb_tw,
	ED_Heavyweight_champion_rgb_tw = ED_Heavyweight_champion_rgb_tw,
	ED_Im_in_charge_rgb_tw = ED_Im_in_charge_rgb_tw,
}