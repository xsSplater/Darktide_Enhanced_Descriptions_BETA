---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

--[+ ++ENHANCED DESCRIPTIONS - РАСШИРЕННЫЕ ОПИСАНИЯ++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true)

--[+ +PENANCES - ИСКУПЛЕНИЯ+ +]--
	--[+ +VETERAN - 老兵 + +]--
		--[+ Stay Accurate - 保持精準 +]--
		--[+ Adept Assassin - Адепт-ассасин +]-- -- руоф Искусный убийца
		--[+ Deadeye +]-- руоф Меткий глаз
		--[+ Marked For Death - Отмеченные на смерть +]-- -- руоф Отмечены смертью
	local ED_Headshot_rgb_tw = iu_actit(table.concat({
		"\n",
		"{#color(177, 144, 0)}+++ 瞄準敵人的頭部射擊。+++{#reset()}",
	}, "\n"), enhdesc_col)

	--[+ On Overwatch - 掩護射擊 +]-- -- руоф Под прикрытием
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

	--[+ + ZEALOT + +]--
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

	
	--[+ ++PSYKER - ПСАЙКЕР++ +]--
	--[+ Unleash the Warp - Высвободи варп +]-- руоф Извергни варп
	local ED_Unleash_warp_rgb_tw = iu_actit(table.concat({
		-- " +++ - Учитываются варп-атаки из любого источника: основные и дополнительный атаки посохами, специальные атаки психосиловыми мечами, атаки взрывными талантами и Горение души. +++",
	}, "\n"), enhdesc_col)


	--[+ Cliffhanger - Неожиданный поворот +]-- руоф Не подходи близко
	local ED_Cliffhanger_rgb_tw = iu_actit(table.concat({
		-- " +++ - Чтобы выполнить это Искупление используйте способности «Гнев психокинетика» или «Сбрасывающий вопль». +++",
	}, "\n"), enhdesc_col)

	--[+ Warp Battery +]-- руоф Варп-аккумулятор
	local ED_Warp_battery_rgb_tw = iu_actit(table.concat({
		-- " +++ - При выполнении НЕ ПРИМЕНЯЙТЕ СПОСОБНОСТИ!",
		-- "- Чтобы эффективнее продлевать действие варп-зарядов, используйте модификатор «Психический вампир» или «Возрождение в огне», если вы используете огненный посох, таланты и/или пассивки, накладывающие «Горение души», а также очень поможет модификатор «Кинетический живодёр». +++",
	}, "\n"), enhdesc_col)

	--[+ Pick n' Mix +]-- руоф Выбирай и смешивай
	local ED_Pick_n_mix_rgb_tw = iu_actit(table.concat({
		-- " +++ - Лучше использовать улучшенную версию - «Разрыв мозга» с модификатором «Кинетический резонанс», который ускоряет на 75% зарядку взрывного таланта. +++",
	}, "\n"), enhdesc_col)


	--[+ ++OGRYN - ОГРИН++ +]--
	--[+ Don't Stop Me Now! +]-- руоф Меня не остановить!
	local ED_Dont_stop_me_now_rgb_tw = iu_actit(table.concat({
		-- " +++ - Самый простой способ: применить стимулятор Концентрации (жёлтый), потом применить способность «Неукротимый», пробежать 20 полных метров, способность быстро откатится и можно бежать дальше вперёд или назад.",
		-- "- Не нажимайте кнопку [S](назад) или ПКМ(блок)! +++",
	}, "\n"), enhdesc_col)


	--[+ Something In Your Eye - У тебя что-то в глазу +]-- руоф Нечто в твоих глазах
	local ED_Something_in_your_eye_rgb_tw = iu_actit(table.concat({
		-- " +++ - Срабатывает обычно только с начальной «Большой коробкой боли», но иногда багуется и срабатывает с улучшенным ящиком «Бросай бомбы!» (в т.ч. не убивая Осквернителя).",
		-- "- Осквернитель - это хаотический нарост с глазом в центре. На миссиях вы сначала будете сбивать три его щупальца, чтобы Осквернитель открыл свой глаз. +++",
	}, "\n"), enhdesc_col)

	--[+ Heavyweight Champion +]-- руоф Чемпион-тяжеловес
	local ED_Heavyweight_champion_rgb_tw = iu_actit(table.concat({
		-- " +++ - Огрины могут быть в любых вариациях, главное, чтобы не менее 4 в группе.",
		-- "- Учитывайте, что монстр Чумной огрин прерывает ваше движение. +++",
	}, "\n"), enhdesc_col)

	--[+ I'm in Charge - Я главный +]-- руоф Я главнее
	local ED_Im_in_charge_rgb_tw = iu_actit(table.concat({
		-- " +++ - Примените способность, когда Чумной Огрин побежит на вас или на союзника.",
		-- "- Перед рывком Чумной Огрин сначала рычит, потом пригибается и бежит. +++",
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