---@diagnostic disable: undefined-global

local mod = get_mod("Enhanced_descriptions")
local InputUtils = require("scripts/managers/input/input_utils")
local iu_actit = InputUtils.apply_color_to_input_text

--[+ ++ENHANCED DESCRIPTIONS - РАСШИРЕННЫЕ ОПИСАНИЯ++ +]--
local enhdesc_col = Color[mod:get("enhdesc_text_colour")](255, true)

--[+ +PENANCES - ИСКУПЛЕНИЯ+ +]--
	--[+ ПРОГРЕСС +]--

	--[+ +VETERAN - ВЕТЕРАН+ +]--
		--[+ Stay Accurate - Будь точным +]-- -- руоф Держи прицел
		--[+ Adept Assassin - Адепт-ассасин +]-- -- руоф Искусный убийца
		--[+ Deadeye +]-- руоф Меткий глаз
		--[+ Marked For Death - Отмеченные на смерть +]-- -- руоф Отмечены смертью
	local ED_Headshot_rgb_ru = iu_actit(table.concat({
		" +++ - Стреляйте врагам в голову. +++",
	}, "\n"), enhdesc_col)

		--[+ On Overwatch - На чеку +]-- -- руоф Под прикрытием
	local ED_No_dmg_taken_corrupt_rgb_ru = iu_actit(table.concat({
		" +++ - Берегитесь любых источников порчи!",
		"- Монстры, гончие и гримуары накладывают порчу. +++",
	}, "\n"), enhdesc_col)

		--[+ Make Every Shot Count - Сделай каждый выстрел важным +]-- -- руоф Стрельба наверняка
	local ED_No_missed_shots_rgb_ru = iu_actit(table.concat({
		" +++ - Не берите Ауры на пополнение патронов.",
		"- Можно либо аккуратно стрелять, либо взять оружие с малым количеством патронов, потом отстрелять боезапас и пройти остаток миссии с оружием ближнего боя.",
		"- Пополнение патронов не учитывается, после того как вы в первый раз всё отстреляли, если вы не начнёте стрелять снова. +++",
	}, "\n"), enhdesc_col)

		--[+ Be Methodical - Будь методичным +]-- -- руоф Будь собран
	local ED_On_heresy_volley_rgb_ru = iu_actit(table.concat({
		" +++ - Используйте модификаторы «Повышенный приоритет целей» и «Ответный огонь» способности «Стойка палача» для продления действия способности и подсвечивания большего количества врагов. +++",
	}, "\n"), enhdesc_col)

		--[+ Long Bomb +]-- -- руоф Длинный пас
	local ED_Long_bomb_rgb_ru = iu_actit(table.concat({
		" +++ - Бросайте Фраг-гранату с расстояния примерно 50 метров под углом около 30° вверх так, чтобы она взорвалась над головами группы врагов.",
		"- Метка поможет определить расстояние.",
		"- Лучше выполнять на картах с большой видимостью и высокими потолками. +++",
	}, "\n"), enhdesc_col)

		--[+ Unseen Predator +]-- руоф Невидимый хищник
	local ED_Unseen_predator_rgb_ru = iu_actit(table.concat({
		" +++ - Эффект подавления врагов наступает после выхода из режима Скрытности. +++",
	}, "\n"), enhdesc_col)

	--[+ +ZEALOT - ИЗУВЕР+ +]--
		--[+ Blessed be Thine Aim +]-- -- руоф Благословен будь твой прицел
	local ED_Blessed_be_thine_aim_rgb_ru = iu_actit(table.concat({
		" +++ - Клинки убивают в голову всех врагов, кроме огринов, берсерков, палачей и монстров. +++",
	}, "\n"), enhdesc_col)

		--[+ Buying Time +]-- руоф Передышка
	local ED_Buying_time_rgb_ru = iu_actit(table.concat({
		" +++ - Не обязательно попадать в снайпера. Достаточно, чтобы граната просто взорвалась над ним. +++",
	}, "\n"), enhdesc_col)

	--[+ ++PSYKER - ПСАЙКЕР++ +]--
		--[+ Unleash the Warp - Высвободи варп +]-- руоф Извергни варп
	local ED_Unleash_warp_rgb_ru = iu_actit(table.concat({
		" +++ - Учитываются варп-атаки из любого источника: основные и дополнительный атаки посохами, специальные атаки психосиловыми мечами, атаки взрывными талантами и Горение души. +++",
	}, "\n"), enhdesc_col)

		--[+ Cliffhanger - Неожиданный поворот +]-- руоф Не подходи близко
	local ED_Cliffhanger_rgb_ru = iu_actit(table.concat({
		" +++ - Чтобы выполнить это Искупление используйте способности «Гнев психокинетика» или «Сбрасывающий вопль». +++",
	}, "\n"), enhdesc_col)

		--[+ Warp Battery +]-- руоф Варп-аккумулятор
	local ED_Warp_battery_rgb_ru = iu_actit(table.concat({
		" +++ - При выполнении НЕ ПРИМЕНЯЙТЕ СПОСОБНОСТИ!",
		"- Чтобы эффективнее продлевать действие варп-зарядов, используйте модификатор «Психический вампир» или «Возрождение в огне», если вы используете огненный посох, таланты и/или пассивки, накладывающие «Горение души», а также очень поможет модификатор «Кинетический живодёр». +++",
	}, "\n"), enhdesc_col)

		--[+ Pick n' Mix +]-- руоф Выбирай и смешивай
	local ED_Pick_n_mix_rgb_ru = iu_actit(table.concat({
		" +++ - Лучше использовать улучшенную версию - «Разрыв мозга» с модификатором «Кинетический резонанс», который ускоряет на 75% зарядку взрывного таланта. +++",
	}, "\n"), enhdesc_col)

	--[+ ++OGRYN - ОГРИН++ +]--
		--[+ Don't Stop Me Now! +]-- руоф Меня не остановить!
	local ED_Dont_stop_me_now_rgb_ru = iu_actit(table.concat({
		" +++ - Самый простой способ: применить стимулятор Концентрации (жёлтый), потом применить способность «Неукротимый», пробежать 20 полных метров, способность быстро откатится и можно бежать дальше вперёд или назад.",
		"- Не нажимайте кнопку [S](назад) или ПКМ(блок)! +++",
	}, "\n"), enhdesc_col)

		--[+ Something In Your Eye - У тебя что-то в глазу +]-- руоф Нечто в твоих глазах
	local ED_Something_in_your_eye_rgb_ru = iu_actit(table.concat({
		" +++ - Срабатывает обычно только с начальной «Большой коробкой боли», но иногда багуется и срабатывает с улучшенным ящиком «Бросай бомбы!» (в т.ч. не убивая Осквернителя).",
		"- Осквернитель - это хаотический нарост с глазом в центре. На миссиях вы сначала будете сбивать три его щупальца, чтобы Осквернитель открыл свой глаз. +++",
	}, "\n"), enhdesc_col)

		--[+ Heavyweight Champion +]-- руоф Чемпион-тяжеловес
	local ED_Heavyweight_champion_rgb_ru = iu_actit(table.concat({
		" +++ - Огрины могут быть в любых вариациях, главное, чтобы не менее 4 в группе.",
		"- Учитывайте, что монстр Чумной огрин прерывает ваше движение. +++",
	}, "\n"), enhdesc_col)

		--[+ I'm in Charge - Я главный +]-- руоф Я главнее
	local ED_Im_in_charge_rgb_ru = iu_actit(table.concat({
		" +++ - Примените способность, когда Чумной Огрин побежит на вас или на союзника.",
		"- Перед рывком Чумной Огрин сначала рычит, потом пригибается и бежит. +++",
	}, "\n"), enhdesc_col)



-- In the list below, you also need to add a new entry or change an old one.
return {
	ED_Headshot_rgb_ru = ED_Headshot_rgb_ru,
	ED_No_dmg_taken_corrupt_rgb_ru = ED_No_dmg_taken_corrupt_rgb_ru,
	ED_No_missed_shots_rgb_ru = ED_No_missed_shots_rgb_ru,
	ED_On_heresy_volley_rgb_ru = ED_On_heresy_volley_rgb_ru,
	ED_Long_bomb_rgb_ru = ED_Long_bomb_rgb_ru,
	ED_Unseen_predator_rgb_ru = ED_Unseen_predator_rgb_ru,
	ED_Blessed_be_thine_aim_rgb_ru = ED_Blessed_be_thine_aim_rgb_ru,
	ED_Buying_time_rgb_ru = ED_Buying_time_rgb_ru,
	ED_Unleash_warp_rgb_ru = ED_Unleash_warp_rgb_ru,
	ED_Cliffhanger_rgb_ru = ED_Cliffhanger_rgb_ru,
	ED_Warp_battery_rgb_ru = ED_Warp_battery_rgb_ru,
	ED_Pick_n_mix_rgb_ru = ED_Pick_n_mix_rgb_ru,
	ED_Dont_stop_me_now_rgb_ru = ED_Dont_stop_me_now_rgb_ru,
	ED_Something_in_your_eye_rgb_ru = ED_Something_in_your_eye_rgb_ru,
	ED_Heavyweight_champion_rgb_ru = ED_Heavyweight_champion_rgb_ru,
	ED_Im_in_charge_rgb_ru = ED_Im_in_charge_rgb_ru,

}